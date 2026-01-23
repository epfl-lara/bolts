; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563490 () Bool)

(assert start!563490)

(declare-fun b!5351237 () Bool)

(assert (=> b!5351237 true))

(assert (=> b!5351237 true))

(declare-fun lambda!275108 () Int)

(declare-fun lambda!275107 () Int)

(assert (=> b!5351237 (not (= lambda!275108 lambda!275107))))

(assert (=> b!5351237 true))

(assert (=> b!5351237 true))

(declare-fun b!5351238 () Bool)

(assert (=> b!5351238 true))

(declare-fun b!5351218 () Bool)

(declare-fun e!3321885 () Bool)

(declare-fun tp!1486457 () Bool)

(assert (=> b!5351218 (= e!3321885 tp!1486457)))

(declare-fun b!5351219 () Bool)

(declare-fun res!2270549 () Bool)

(declare-fun e!3321878 () Bool)

(assert (=> b!5351219 (=> res!2270549 e!3321878)))

(declare-fun e!3321880 () Bool)

(assert (=> b!5351219 (= res!2270549 e!3321880)))

(declare-fun res!2270550 () Bool)

(assert (=> b!5351219 (=> (not res!2270550) (not e!3321880))))

(declare-datatypes ((C!30352 0))(
  ( (C!30353 (val!24878 Int)) )
))
(declare-datatypes ((Regex!15041 0))(
  ( (ElementMatch!15041 (c!931579 C!30352)) (Concat!23886 (regOne!30594 Regex!15041) (regTwo!30594 Regex!15041)) (EmptyExpr!15041) (Star!15041 (reg!15370 Regex!15041)) (EmptyLang!15041) (Union!15041 (regOne!30595 Regex!15041) (regTwo!30595 Regex!15041)) )
))
(declare-fun r!7292 () Regex!15041)

(get-info :version)

(assert (=> b!5351219 (= res!2270550 ((_ is Concat!23886) (regOne!30594 r!7292)))))

(declare-fun b!5351220 () Bool)

(declare-datatypes ((Unit!153682 0))(
  ( (Unit!153683) )
))
(declare-fun e!3321883 () Unit!153682)

(declare-fun Unit!153684 () Unit!153682)

(assert (=> b!5351220 (= e!3321883 Unit!153684)))

(declare-fun b!5351221 () Bool)

(declare-fun res!2270554 () Bool)

(declare-fun e!3321877 () Bool)

(assert (=> b!5351221 (=> res!2270554 e!3321877)))

(assert (=> b!5351221 (= res!2270554 (or ((_ is EmptyExpr!15041) r!7292) ((_ is EmptyLang!15041) r!7292) ((_ is ElementMatch!15041) r!7292) ((_ is Union!15041) r!7292) (not ((_ is Concat!23886) r!7292))))))

(declare-fun b!5351222 () Bool)

(declare-fun res!2270559 () Bool)

(declare-fun e!3321881 () Bool)

(assert (=> b!5351222 (=> (not res!2270559) (not e!3321881))))

(declare-datatypes ((List!61422 0))(
  ( (Nil!61298) (Cons!61298 (h!67746 Regex!15041) (t!374639 List!61422)) )
))
(declare-datatypes ((Context!8850 0))(
  ( (Context!8851 (exprs!4925 List!61422)) )
))
(declare-datatypes ((List!61423 0))(
  ( (Nil!61299) (Cons!61299 (h!67747 Context!8850) (t!374640 List!61423)) )
))
(declare-fun zl!343 () List!61423)

(declare-fun unfocusZipper!783 (List!61423) Regex!15041)

(assert (=> b!5351222 (= res!2270559 (= r!7292 (unfocusZipper!783 zl!343)))))

(declare-fun b!5351223 () Bool)

(declare-fun res!2270555 () Bool)

(assert (=> b!5351223 (=> res!2270555 e!3321877)))

(assert (=> b!5351223 (= res!2270555 (not ((_ is Cons!61298) (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351224 () Bool)

(declare-fun e!3321882 () Bool)

(declare-fun tp!1486452 () Bool)

(assert (=> b!5351224 (= e!3321882 tp!1486452)))

(declare-fun b!5351225 () Bool)

(declare-fun Unit!153685 () Unit!153682)

(assert (=> b!5351225 (= e!3321883 Unit!153685)))

(declare-datatypes ((List!61424 0))(
  ( (Nil!61300) (Cons!61300 (h!67748 C!30352) (t!374641 List!61424)) )
))
(declare-fun s!2326 () List!61424)

(declare-fun lt!2181314 () Unit!153682)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2181309 () (InoxSet Context!8850))

(declare-fun lt!2181320 () (InoxSet Context!8850))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!278 ((InoxSet Context!8850) (InoxSet Context!8850) List!61424) Unit!153682)

(assert (=> b!5351225 (= lt!2181314 (lemmaZipperConcatMatchesSameAsBothZippers!278 lt!2181320 lt!2181309 (t!374641 s!2326)))))

(declare-fun res!2270557 () Bool)

(declare-fun matchZipper!1285 ((InoxSet Context!8850) List!61424) Bool)

(assert (=> b!5351225 (= res!2270557 (matchZipper!1285 lt!2181320 (t!374641 s!2326)))))

(declare-fun e!3321875 () Bool)

(assert (=> b!5351225 (=> res!2270557 e!3321875)))

(assert (=> b!5351225 (= (matchZipper!1285 ((_ map or) lt!2181320 lt!2181309) (t!374641 s!2326)) e!3321875)))

(declare-fun b!5351226 () Bool)

(declare-fun e!3321886 () Bool)

(declare-fun tp_is_empty!39335 () Bool)

(declare-fun tp!1486455 () Bool)

(assert (=> b!5351226 (= e!3321886 (and tp_is_empty!39335 tp!1486455))))

(declare-fun e!3321879 () Bool)

(declare-fun tp!1486456 () Bool)

(declare-fun b!5351227 () Bool)

(declare-fun inv!80849 (Context!8850) Bool)

(assert (=> b!5351227 (= e!3321879 (and (inv!80849 (h!67747 zl!343)) e!3321885 tp!1486456))))

(declare-fun b!5351228 () Bool)

(declare-fun res!2270546 () Bool)

(assert (=> b!5351228 (=> (not res!2270546) (not e!3321881))))

(declare-fun z!1189 () (InoxSet Context!8850))

(declare-fun toList!8825 ((InoxSet Context!8850)) List!61423)

(assert (=> b!5351228 (= res!2270546 (= (toList!8825 z!1189) zl!343))))

(declare-fun b!5351229 () Bool)

(declare-fun res!2270552 () Bool)

(assert (=> b!5351229 (=> res!2270552 e!3321878)))

(assert (=> b!5351229 (= res!2270552 (or ((_ is Concat!23886) (regOne!30594 r!7292)) (not ((_ is Star!15041) (regOne!30594 r!7292)))))))

(declare-fun b!5351230 () Bool)

(declare-fun res!2270551 () Bool)

(assert (=> b!5351230 (=> res!2270551 e!3321877)))

(declare-fun generalisedConcat!710 (List!61422) Regex!15041)

(assert (=> b!5351230 (= res!2270551 (not (= r!7292 (generalisedConcat!710 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun b!5351231 () Bool)

(declare-fun e!3321876 () Bool)

(declare-fun tp!1486459 () Bool)

(assert (=> b!5351231 (= e!3321876 tp!1486459)))

(declare-fun b!5351232 () Bool)

(declare-fun nullable!5210 (Regex!15041) Bool)

(assert (=> b!5351232 (= e!3321880 (nullable!5210 (regOne!30594 (regOne!30594 r!7292))))))

(declare-fun setNonEmpty!34573 () Bool)

(declare-fun setRes!34573 () Bool)

(declare-fun setElem!34573 () Context!8850)

(declare-fun tp!1486460 () Bool)

(assert (=> setNonEmpty!34573 (= setRes!34573 (and tp!1486460 (inv!80849 setElem!34573) e!3321876))))

(declare-fun setRest!34573 () (InoxSet Context!8850))

(assert (=> setNonEmpty!34573 (= z!1189 ((_ map or) (store ((as const (Array Context!8850 Bool)) false) setElem!34573 true) setRest!34573))))

(declare-fun b!5351233 () Bool)

(declare-fun validRegex!6777 (Regex!15041) Bool)

(assert (=> b!5351233 (= e!3321878 (validRegex!6777 (reg!15370 (regOne!30594 r!7292))))))

(declare-fun b!5351234 () Bool)

(assert (=> b!5351234 (= e!3321875 (matchZipper!1285 lt!2181309 (t!374641 s!2326)))))

(declare-fun b!5351235 () Bool)

(declare-fun tp!1486453 () Bool)

(declare-fun tp!1486458 () Bool)

(assert (=> b!5351235 (= e!3321882 (and tp!1486453 tp!1486458))))

(declare-fun b!5351236 () Bool)

(declare-fun res!2270558 () Bool)

(assert (=> b!5351236 (=> res!2270558 e!3321877)))

(declare-fun isEmpty!33275 (List!61423) Bool)

(assert (=> b!5351236 (= res!2270558 (not (isEmpty!33275 (t!374640 zl!343))))))

(declare-fun setIsEmpty!34573 () Bool)

(assert (=> setIsEmpty!34573 setRes!34573))

(declare-fun e!3321884 () Bool)

(assert (=> b!5351237 (= e!3321877 e!3321884)))

(declare-fun res!2270547 () Bool)

(assert (=> b!5351237 (=> res!2270547 e!3321884)))

(declare-fun lt!2181318 () Bool)

(declare-fun lt!2181317 () Bool)

(assert (=> b!5351237 (= res!2270547 (or (not (= lt!2181317 lt!2181318)) ((_ is Nil!61300) s!2326)))))

(declare-fun Exists!2222 (Int) Bool)

(assert (=> b!5351237 (= (Exists!2222 lambda!275107) (Exists!2222 lambda!275108))))

(declare-fun lt!2181310 () Unit!153682)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!876 (Regex!15041 Regex!15041 List!61424) Unit!153682)

(assert (=> b!5351237 (= lt!2181310 (lemmaExistCutMatchRandMatchRSpecEquivalent!876 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326))))

(assert (=> b!5351237 (= lt!2181318 (Exists!2222 lambda!275107))))

(declare-datatypes ((tuple2!64480 0))(
  ( (tuple2!64481 (_1!35543 List!61424) (_2!35543 List!61424)) )
))
(declare-datatypes ((Option!15152 0))(
  ( (None!15151) (Some!15151 (v!51180 tuple2!64480)) )
))
(declare-fun isDefined!11855 (Option!15152) Bool)

(declare-fun findConcatSeparation!1566 (Regex!15041 Regex!15041 List!61424 List!61424 List!61424) Option!15152)

(assert (=> b!5351237 (= lt!2181318 (isDefined!11855 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326)))))

(declare-fun lt!2181312 () Unit!153682)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1330 (Regex!15041 Regex!15041 List!61424) Unit!153682)

(assert (=> b!5351237 (= lt!2181312 (lemmaFindConcatSeparationEquivalentToExists!1330 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326))))

(assert (=> b!5351238 (= e!3321884 e!3321878)))

(declare-fun res!2270560 () Bool)

(assert (=> b!5351238 (=> res!2270560 e!3321878)))

(assert (=> b!5351238 (= res!2270560 (or (and ((_ is ElementMatch!15041) (regOne!30594 r!7292)) (= (c!931579 (regOne!30594 r!7292)) (h!67748 s!2326))) ((_ is Union!15041) (regOne!30594 r!7292))))))

(declare-fun lt!2181313 () Unit!153682)

(assert (=> b!5351238 (= lt!2181313 e!3321883)))

(declare-fun c!931578 () Bool)

(assert (=> b!5351238 (= c!931578 (nullable!5210 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun lambda!275109 () Int)

(declare-fun flatMap!768 ((InoxSet Context!8850) Int) (InoxSet Context!8850))

(declare-fun derivationStepZipperUp!413 (Context!8850 C!30352) (InoxSet Context!8850))

(assert (=> b!5351238 (= (flatMap!768 z!1189 lambda!275109) (derivationStepZipperUp!413 (h!67747 zl!343) (h!67748 s!2326)))))

(declare-fun lt!2181315 () Unit!153682)

(declare-fun lemmaFlatMapOnSingletonSet!300 ((InoxSet Context!8850) Context!8850 Int) Unit!153682)

(assert (=> b!5351238 (= lt!2181315 (lemmaFlatMapOnSingletonSet!300 z!1189 (h!67747 zl!343) lambda!275109))))

(declare-fun lt!2181316 () Context!8850)

(assert (=> b!5351238 (= lt!2181309 (derivationStepZipperUp!413 lt!2181316 (h!67748 s!2326)))))

(declare-fun derivationStepZipperDown!489 (Regex!15041 Context!8850 C!30352) (InoxSet Context!8850))

(assert (=> b!5351238 (= lt!2181320 (derivationStepZipperDown!489 (h!67746 (exprs!4925 (h!67747 zl!343))) lt!2181316 (h!67748 s!2326)))))

(assert (=> b!5351238 (= lt!2181316 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun lt!2181311 () (InoxSet Context!8850))

(assert (=> b!5351238 (= lt!2181311 (derivationStepZipperUp!413 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))) (h!67748 s!2326)))))

(declare-fun b!5351239 () Bool)

(declare-fun res!2270561 () Bool)

(assert (=> b!5351239 (=> res!2270561 e!3321884)))

(declare-fun isEmpty!33276 (List!61422) Bool)

(assert (=> b!5351239 (= res!2270561 (isEmpty!33276 (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351240 () Bool)

(assert (=> b!5351240 (= e!3321881 (not e!3321877))))

(declare-fun res!2270556 () Bool)

(assert (=> b!5351240 (=> res!2270556 e!3321877)))

(assert (=> b!5351240 (= res!2270556 (not ((_ is Cons!61299) zl!343)))))

(declare-fun matchRSpec!2144 (Regex!15041 List!61424) Bool)

(assert (=> b!5351240 (= lt!2181317 (matchRSpec!2144 r!7292 s!2326))))

(declare-fun matchR!7226 (Regex!15041 List!61424) Bool)

(assert (=> b!5351240 (= lt!2181317 (matchR!7226 r!7292 s!2326))))

(declare-fun lt!2181319 () Unit!153682)

(declare-fun mainMatchTheorem!2144 (Regex!15041 List!61424) Unit!153682)

(assert (=> b!5351240 (= lt!2181319 (mainMatchTheorem!2144 r!7292 s!2326))))

(declare-fun b!5351241 () Bool)

(assert (=> b!5351241 (= e!3321882 tp_is_empty!39335)))

(declare-fun b!5351242 () Bool)

(declare-fun res!2270548 () Bool)

(assert (=> b!5351242 (=> res!2270548 e!3321877)))

(declare-fun generalisedUnion!970 (List!61422) Regex!15041)

(declare-fun unfocusZipperList!483 (List!61423) List!61422)

(assert (=> b!5351242 (= res!2270548 (not (= r!7292 (generalisedUnion!970 (unfocusZipperList!483 zl!343)))))))

(declare-fun res!2270553 () Bool)

(assert (=> start!563490 (=> (not res!2270553) (not e!3321881))))

(assert (=> start!563490 (= res!2270553 (validRegex!6777 r!7292))))

(assert (=> start!563490 e!3321881))

(assert (=> start!563490 e!3321882))

(declare-fun condSetEmpty!34573 () Bool)

(assert (=> start!563490 (= condSetEmpty!34573 (= z!1189 ((as const (Array Context!8850 Bool)) false)))))

(assert (=> start!563490 setRes!34573))

(assert (=> start!563490 e!3321879))

(assert (=> start!563490 e!3321886))

(declare-fun b!5351243 () Bool)

(declare-fun tp!1486454 () Bool)

(declare-fun tp!1486461 () Bool)

(assert (=> b!5351243 (= e!3321882 (and tp!1486454 tp!1486461))))

(assert (= (and start!563490 res!2270553) b!5351228))

(assert (= (and b!5351228 res!2270546) b!5351222))

(assert (= (and b!5351222 res!2270559) b!5351240))

(assert (= (and b!5351240 (not res!2270556)) b!5351236))

(assert (= (and b!5351236 (not res!2270558)) b!5351230))

(assert (= (and b!5351230 (not res!2270551)) b!5351223))

(assert (= (and b!5351223 (not res!2270555)) b!5351242))

(assert (= (and b!5351242 (not res!2270548)) b!5351221))

(assert (= (and b!5351221 (not res!2270554)) b!5351237))

(assert (= (and b!5351237 (not res!2270547)) b!5351239))

(assert (= (and b!5351239 (not res!2270561)) b!5351238))

(assert (= (and b!5351238 c!931578) b!5351225))

(assert (= (and b!5351238 (not c!931578)) b!5351220))

(assert (= (and b!5351225 (not res!2270557)) b!5351234))

(assert (= (and b!5351238 (not res!2270560)) b!5351219))

(assert (= (and b!5351219 res!2270550) b!5351232))

(assert (= (and b!5351219 (not res!2270549)) b!5351229))

(assert (= (and b!5351229 (not res!2270552)) b!5351233))

(assert (= (and start!563490 ((_ is ElementMatch!15041) r!7292)) b!5351241))

(assert (= (and start!563490 ((_ is Concat!23886) r!7292)) b!5351235))

(assert (= (and start!563490 ((_ is Star!15041) r!7292)) b!5351224))

(assert (= (and start!563490 ((_ is Union!15041) r!7292)) b!5351243))

(assert (= (and start!563490 condSetEmpty!34573) setIsEmpty!34573))

(assert (= (and start!563490 (not condSetEmpty!34573)) setNonEmpty!34573))

(assert (= setNonEmpty!34573 b!5351231))

(assert (= b!5351227 b!5351218))

(assert (= (and start!563490 ((_ is Cons!61299) zl!343)) b!5351227))

(assert (= (and start!563490 ((_ is Cons!61300) s!2326)) b!5351226))

(declare-fun m!6382256 () Bool)

(assert (=> b!5351238 m!6382256))

(declare-fun m!6382258 () Bool)

(assert (=> b!5351238 m!6382258))

(declare-fun m!6382260 () Bool)

(assert (=> b!5351238 m!6382260))

(declare-fun m!6382262 () Bool)

(assert (=> b!5351238 m!6382262))

(declare-fun m!6382264 () Bool)

(assert (=> b!5351238 m!6382264))

(declare-fun m!6382266 () Bool)

(assert (=> b!5351238 m!6382266))

(declare-fun m!6382268 () Bool)

(assert (=> b!5351238 m!6382268))

(declare-fun m!6382270 () Bool)

(assert (=> setNonEmpty!34573 m!6382270))

(declare-fun m!6382272 () Bool)

(assert (=> b!5351233 m!6382272))

(declare-fun m!6382274 () Bool)

(assert (=> b!5351232 m!6382274))

(declare-fun m!6382276 () Bool)

(assert (=> b!5351228 m!6382276))

(declare-fun m!6382278 () Bool)

(assert (=> b!5351237 m!6382278))

(declare-fun m!6382280 () Bool)

(assert (=> b!5351237 m!6382280))

(declare-fun m!6382282 () Bool)

(assert (=> b!5351237 m!6382282))

(declare-fun m!6382284 () Bool)

(assert (=> b!5351237 m!6382284))

(declare-fun m!6382286 () Bool)

(assert (=> b!5351237 m!6382286))

(assert (=> b!5351237 m!6382282))

(assert (=> b!5351237 m!6382278))

(declare-fun m!6382288 () Bool)

(assert (=> b!5351237 m!6382288))

(declare-fun m!6382290 () Bool)

(assert (=> b!5351225 m!6382290))

(declare-fun m!6382292 () Bool)

(assert (=> b!5351225 m!6382292))

(declare-fun m!6382294 () Bool)

(assert (=> b!5351225 m!6382294))

(declare-fun m!6382296 () Bool)

(assert (=> b!5351236 m!6382296))

(declare-fun m!6382298 () Bool)

(assert (=> b!5351242 m!6382298))

(assert (=> b!5351242 m!6382298))

(declare-fun m!6382300 () Bool)

(assert (=> b!5351242 m!6382300))

(declare-fun m!6382302 () Bool)

(assert (=> start!563490 m!6382302))

(declare-fun m!6382304 () Bool)

(assert (=> b!5351230 m!6382304))

(declare-fun m!6382306 () Bool)

(assert (=> b!5351234 m!6382306))

(declare-fun m!6382308 () Bool)

(assert (=> b!5351239 m!6382308))

(declare-fun m!6382310 () Bool)

(assert (=> b!5351240 m!6382310))

(declare-fun m!6382312 () Bool)

(assert (=> b!5351240 m!6382312))

(declare-fun m!6382314 () Bool)

(assert (=> b!5351240 m!6382314))

(declare-fun m!6382316 () Bool)

(assert (=> b!5351222 m!6382316))

(declare-fun m!6382318 () Bool)

(assert (=> b!5351227 m!6382318))

(check-sat (not setNonEmpty!34573) (not b!5351222) (not b!5351232) (not b!5351238) (not b!5351218) (not b!5351242) (not b!5351243) (not b!5351224) (not b!5351226) (not b!5351236) tp_is_empty!39335 (not b!5351231) (not b!5351227) (not b!5351225) (not b!5351235) (not b!5351233) (not b!5351230) (not b!5351228) (not b!5351239) (not b!5351234) (not b!5351237) (not start!563490) (not b!5351240))
(check-sat)
(get-model)

(declare-fun d!1715744 () Bool)

(assert (=> d!1715744 (= (isEmpty!33275 (t!374640 zl!343)) ((_ is Nil!61299) (t!374640 zl!343)))))

(assert (=> b!5351236 d!1715744))

(declare-fun d!1715746 () Bool)

(declare-fun lambda!275124 () Int)

(declare-fun forall!14467 (List!61422 Int) Bool)

(assert (=> d!1715746 (= (inv!80849 (h!67747 zl!343)) (forall!14467 (exprs!4925 (h!67747 zl!343)) lambda!275124))))

(declare-fun bs!1240558 () Bool)

(assert (= bs!1240558 d!1715746))

(declare-fun m!6382380 () Bool)

(assert (=> bs!1240558 m!6382380))

(assert (=> b!5351227 d!1715746))

(declare-fun d!1715748 () Bool)

(declare-fun e!3321958 () Bool)

(assert (=> d!1715748 (= (matchZipper!1285 ((_ map or) lt!2181320 lt!2181309) (t!374641 s!2326)) e!3321958)))

(declare-fun res!2270596 () Bool)

(assert (=> d!1715748 (=> res!2270596 e!3321958)))

(assert (=> d!1715748 (= res!2270596 (matchZipper!1285 lt!2181320 (t!374641 s!2326)))))

(declare-fun lt!2181340 () Unit!153682)

(declare-fun choose!40150 ((InoxSet Context!8850) (InoxSet Context!8850) List!61424) Unit!153682)

(assert (=> d!1715748 (= lt!2181340 (choose!40150 lt!2181320 lt!2181309 (t!374641 s!2326)))))

(assert (=> d!1715748 (= (lemmaZipperConcatMatchesSameAsBothZippers!278 lt!2181320 lt!2181309 (t!374641 s!2326)) lt!2181340)))

(declare-fun b!5351358 () Bool)

(assert (=> b!5351358 (= e!3321958 (matchZipper!1285 lt!2181309 (t!374641 s!2326)))))

(assert (= (and d!1715748 (not res!2270596)) b!5351358))

(assert (=> d!1715748 m!6382294))

(assert (=> d!1715748 m!6382292))

(declare-fun m!6382382 () Bool)

(assert (=> d!1715748 m!6382382))

(assert (=> b!5351358 m!6382306))

(assert (=> b!5351225 d!1715748))

(declare-fun d!1715750 () Bool)

(declare-fun c!931619 () Bool)

(declare-fun isEmpty!33277 (List!61424) Bool)

(assert (=> d!1715750 (= c!931619 (isEmpty!33277 (t!374641 s!2326)))))

(declare-fun e!3321965 () Bool)

(assert (=> d!1715750 (= (matchZipper!1285 lt!2181320 (t!374641 s!2326)) e!3321965)))

(declare-fun b!5351371 () Bool)

(declare-fun nullableZipper!1379 ((InoxSet Context!8850)) Bool)

(assert (=> b!5351371 (= e!3321965 (nullableZipper!1379 lt!2181320))))

(declare-fun b!5351372 () Bool)

(declare-fun derivationStepZipper!1281 ((InoxSet Context!8850) C!30352) (InoxSet Context!8850))

(declare-fun head!11477 (List!61424) C!30352)

(declare-fun tail!10574 (List!61424) List!61424)

(assert (=> b!5351372 (= e!3321965 (matchZipper!1285 (derivationStepZipper!1281 lt!2181320 (head!11477 (t!374641 s!2326))) (tail!10574 (t!374641 s!2326))))))

(assert (= (and d!1715750 c!931619) b!5351371))

(assert (= (and d!1715750 (not c!931619)) b!5351372))

(declare-fun m!6382384 () Bool)

(assert (=> d!1715750 m!6382384))

(declare-fun m!6382386 () Bool)

(assert (=> b!5351371 m!6382386))

(declare-fun m!6382388 () Bool)

(assert (=> b!5351372 m!6382388))

(assert (=> b!5351372 m!6382388))

(declare-fun m!6382390 () Bool)

(assert (=> b!5351372 m!6382390))

(declare-fun m!6382392 () Bool)

(assert (=> b!5351372 m!6382392))

(assert (=> b!5351372 m!6382390))

(assert (=> b!5351372 m!6382392))

(declare-fun m!6382394 () Bool)

(assert (=> b!5351372 m!6382394))

(assert (=> b!5351225 d!1715750))

(declare-fun d!1715752 () Bool)

(declare-fun c!931620 () Bool)

(assert (=> d!1715752 (= c!931620 (isEmpty!33277 (t!374641 s!2326)))))

(declare-fun e!3321966 () Bool)

(assert (=> d!1715752 (= (matchZipper!1285 ((_ map or) lt!2181320 lt!2181309) (t!374641 s!2326)) e!3321966)))

(declare-fun b!5351373 () Bool)

(assert (=> b!5351373 (= e!3321966 (nullableZipper!1379 ((_ map or) lt!2181320 lt!2181309)))))

(declare-fun b!5351374 () Bool)

(assert (=> b!5351374 (= e!3321966 (matchZipper!1285 (derivationStepZipper!1281 ((_ map or) lt!2181320 lt!2181309) (head!11477 (t!374641 s!2326))) (tail!10574 (t!374641 s!2326))))))

(assert (= (and d!1715752 c!931620) b!5351373))

(assert (= (and d!1715752 (not c!931620)) b!5351374))

(assert (=> d!1715752 m!6382384))

(declare-fun m!6382396 () Bool)

(assert (=> b!5351373 m!6382396))

(assert (=> b!5351374 m!6382388))

(assert (=> b!5351374 m!6382388))

(declare-fun m!6382398 () Bool)

(assert (=> b!5351374 m!6382398))

(assert (=> b!5351374 m!6382392))

(assert (=> b!5351374 m!6382398))

(assert (=> b!5351374 m!6382392))

(declare-fun m!6382400 () Bool)

(assert (=> b!5351374 m!6382400))

(assert (=> b!5351225 d!1715752))

(declare-fun d!1715754 () Bool)

(declare-fun c!931623 () Bool)

(assert (=> d!1715754 (= c!931623 (isEmpty!33277 (t!374641 s!2326)))))

(declare-fun e!3321972 () Bool)

(assert (=> d!1715754 (= (matchZipper!1285 lt!2181309 (t!374641 s!2326)) e!3321972)))

(declare-fun b!5351384 () Bool)

(assert (=> b!5351384 (= e!3321972 (nullableZipper!1379 lt!2181309))))

(declare-fun b!5351385 () Bool)

(assert (=> b!5351385 (= e!3321972 (matchZipper!1285 (derivationStepZipper!1281 lt!2181309 (head!11477 (t!374641 s!2326))) (tail!10574 (t!374641 s!2326))))))

(assert (= (and d!1715754 c!931623) b!5351384))

(assert (= (and d!1715754 (not c!931623)) b!5351385))

(assert (=> d!1715754 m!6382384))

(declare-fun m!6382402 () Bool)

(assert (=> b!5351384 m!6382402))

(assert (=> b!5351385 m!6382388))

(assert (=> b!5351385 m!6382388))

(declare-fun m!6382404 () Bool)

(assert (=> b!5351385 m!6382404))

(assert (=> b!5351385 m!6382392))

(assert (=> b!5351385 m!6382404))

(assert (=> b!5351385 m!6382392))

(declare-fun m!6382406 () Bool)

(assert (=> b!5351385 m!6382406))

(assert (=> b!5351234 d!1715754))

(declare-fun bs!1240559 () Bool)

(declare-fun d!1715756 () Bool)

(assert (= bs!1240559 (and d!1715756 d!1715746)))

(declare-fun lambda!275125 () Int)

(assert (=> bs!1240559 (= lambda!275125 lambda!275124)))

(assert (=> d!1715756 (= (inv!80849 setElem!34573) (forall!14467 (exprs!4925 setElem!34573) lambda!275125))))

(declare-fun bs!1240560 () Bool)

(assert (= bs!1240560 d!1715756))

(declare-fun m!6382408 () Bool)

(assert (=> bs!1240560 m!6382408))

(assert (=> setNonEmpty!34573 d!1715756))

(declare-fun bs!1240562 () Bool)

(declare-fun d!1715758 () Bool)

(assert (= bs!1240562 (and d!1715758 d!1715746)))

(declare-fun lambda!275130 () Int)

(assert (=> bs!1240562 (= lambda!275130 lambda!275124)))

(declare-fun bs!1240563 () Bool)

(assert (= bs!1240563 (and d!1715758 d!1715756)))

(assert (=> bs!1240563 (= lambda!275130 lambda!275125)))

(declare-fun b!5351410 () Bool)

(declare-fun e!3321988 () Regex!15041)

(assert (=> b!5351410 (= e!3321988 (h!67746 (unfocusZipperList!483 zl!343)))))

(declare-fun b!5351411 () Bool)

(declare-fun e!3321992 () Bool)

(declare-fun lt!2181352 () Regex!15041)

(declare-fun isUnion!355 (Regex!15041) Bool)

(assert (=> b!5351411 (= e!3321992 (isUnion!355 lt!2181352))))

(declare-fun b!5351412 () Bool)

(declare-fun e!3321987 () Regex!15041)

(assert (=> b!5351412 (= e!3321987 (Union!15041 (h!67746 (unfocusZipperList!483 zl!343)) (generalisedUnion!970 (t!374639 (unfocusZipperList!483 zl!343)))))))

(declare-fun b!5351413 () Bool)

(declare-fun e!3321990 () Bool)

(declare-fun e!3321989 () Bool)

(assert (=> b!5351413 (= e!3321990 e!3321989)))

(declare-fun c!931634 () Bool)

(assert (=> b!5351413 (= c!931634 (isEmpty!33276 (unfocusZipperList!483 zl!343)))))

(declare-fun b!5351414 () Bool)

(declare-fun head!11478 (List!61422) Regex!15041)

(assert (=> b!5351414 (= e!3321992 (= lt!2181352 (head!11478 (unfocusZipperList!483 zl!343))))))

(declare-fun b!5351415 () Bool)

(declare-fun e!3321991 () Bool)

(assert (=> b!5351415 (= e!3321991 (isEmpty!33276 (t!374639 (unfocusZipperList!483 zl!343))))))

(declare-fun b!5351417 () Bool)

(assert (=> b!5351417 (= e!3321987 EmptyLang!15041)))

(declare-fun b!5351418 () Bool)

(declare-fun isEmptyLang!923 (Regex!15041) Bool)

(assert (=> b!5351418 (= e!3321989 (isEmptyLang!923 lt!2181352))))

(declare-fun b!5351419 () Bool)

(assert (=> b!5351419 (= e!3321989 e!3321992)))

(declare-fun c!931632 () Bool)

(declare-fun tail!10575 (List!61422) List!61422)

(assert (=> b!5351419 (= c!931632 (isEmpty!33276 (tail!10575 (unfocusZipperList!483 zl!343))))))

(assert (=> d!1715758 e!3321990))

(declare-fun res!2270618 () Bool)

(assert (=> d!1715758 (=> (not res!2270618) (not e!3321990))))

(assert (=> d!1715758 (= res!2270618 (validRegex!6777 lt!2181352))))

(assert (=> d!1715758 (= lt!2181352 e!3321988)))

(declare-fun c!931633 () Bool)

(assert (=> d!1715758 (= c!931633 e!3321991)))

(declare-fun res!2270619 () Bool)

(assert (=> d!1715758 (=> (not res!2270619) (not e!3321991))))

(assert (=> d!1715758 (= res!2270619 ((_ is Cons!61298) (unfocusZipperList!483 zl!343)))))

(assert (=> d!1715758 (forall!14467 (unfocusZipperList!483 zl!343) lambda!275130)))

(assert (=> d!1715758 (= (generalisedUnion!970 (unfocusZipperList!483 zl!343)) lt!2181352)))

(declare-fun b!5351416 () Bool)

(assert (=> b!5351416 (= e!3321988 e!3321987)))

(declare-fun c!931635 () Bool)

(assert (=> b!5351416 (= c!931635 ((_ is Cons!61298) (unfocusZipperList!483 zl!343)))))

(assert (= (and d!1715758 res!2270619) b!5351415))

(assert (= (and d!1715758 c!931633) b!5351410))

(assert (= (and d!1715758 (not c!931633)) b!5351416))

(assert (= (and b!5351416 c!931635) b!5351412))

(assert (= (and b!5351416 (not c!931635)) b!5351417))

(assert (= (and d!1715758 res!2270618) b!5351413))

(assert (= (and b!5351413 c!931634) b!5351418))

(assert (= (and b!5351413 (not c!931634)) b!5351419))

(assert (= (and b!5351419 c!931632) b!5351414))

(assert (= (and b!5351419 (not c!931632)) b!5351411))

(assert (=> b!5351419 m!6382298))

(declare-fun m!6382436 () Bool)

(assert (=> b!5351419 m!6382436))

(assert (=> b!5351419 m!6382436))

(declare-fun m!6382438 () Bool)

(assert (=> b!5351419 m!6382438))

(declare-fun m!6382440 () Bool)

(assert (=> b!5351418 m!6382440))

(declare-fun m!6382442 () Bool)

(assert (=> d!1715758 m!6382442))

(assert (=> d!1715758 m!6382298))

(declare-fun m!6382444 () Bool)

(assert (=> d!1715758 m!6382444))

(declare-fun m!6382446 () Bool)

(assert (=> b!5351411 m!6382446))

(declare-fun m!6382450 () Bool)

(assert (=> b!5351415 m!6382450))

(assert (=> b!5351413 m!6382298))

(declare-fun m!6382454 () Bool)

(assert (=> b!5351413 m!6382454))

(declare-fun m!6382456 () Bool)

(assert (=> b!5351412 m!6382456))

(assert (=> b!5351414 m!6382298))

(declare-fun m!6382458 () Bool)

(assert (=> b!5351414 m!6382458))

(assert (=> b!5351242 d!1715758))

(declare-fun bs!1240566 () Bool)

(declare-fun d!1715764 () Bool)

(assert (= bs!1240566 (and d!1715764 d!1715746)))

(declare-fun lambda!275134 () Int)

(assert (=> bs!1240566 (= lambda!275134 lambda!275124)))

(declare-fun bs!1240567 () Bool)

(assert (= bs!1240567 (and d!1715764 d!1715756)))

(assert (=> bs!1240567 (= lambda!275134 lambda!275125)))

(declare-fun bs!1240568 () Bool)

(assert (= bs!1240568 (and d!1715764 d!1715758)))

(assert (=> bs!1240568 (= lambda!275134 lambda!275130)))

(declare-fun lt!2181356 () List!61422)

(assert (=> d!1715764 (forall!14467 lt!2181356 lambda!275134)))

(declare-fun e!3321995 () List!61422)

(assert (=> d!1715764 (= lt!2181356 e!3321995)))

(declare-fun c!931638 () Bool)

(assert (=> d!1715764 (= c!931638 ((_ is Cons!61299) zl!343))))

(assert (=> d!1715764 (= (unfocusZipperList!483 zl!343) lt!2181356)))

(declare-fun b!5351424 () Bool)

(assert (=> b!5351424 (= e!3321995 (Cons!61298 (generalisedConcat!710 (exprs!4925 (h!67747 zl!343))) (unfocusZipperList!483 (t!374640 zl!343))))))

(declare-fun b!5351425 () Bool)

(assert (=> b!5351425 (= e!3321995 Nil!61298)))

(assert (= (and d!1715764 c!931638) b!5351424))

(assert (= (and d!1715764 (not c!931638)) b!5351425))

(declare-fun m!6382460 () Bool)

(assert (=> d!1715764 m!6382460))

(assert (=> b!5351424 m!6382304))

(declare-fun m!6382462 () Bool)

(assert (=> b!5351424 m!6382462))

(assert (=> b!5351242 d!1715764))

(declare-fun b!5351452 () Bool)

(declare-fun e!3322015 () Bool)

(declare-fun e!3322014 () Bool)

(assert (=> b!5351452 (= e!3322015 e!3322014)))

(declare-fun c!931644 () Bool)

(assert (=> b!5351452 (= c!931644 ((_ is Star!15041) (reg!15370 (regOne!30594 r!7292))))))

(declare-fun b!5351453 () Bool)

(declare-fun e!3322019 () Bool)

(assert (=> b!5351453 (= e!3322014 e!3322019)))

(declare-fun res!2270638 () Bool)

(assert (=> b!5351453 (= res!2270638 (not (nullable!5210 (reg!15370 (reg!15370 (regOne!30594 r!7292))))))))

(assert (=> b!5351453 (=> (not res!2270638) (not e!3322019))))

(declare-fun b!5351454 () Bool)

(declare-fun res!2270639 () Bool)

(declare-fun e!3322016 () Bool)

(assert (=> b!5351454 (=> (not res!2270639) (not e!3322016))))

(declare-fun call!382535 () Bool)

(assert (=> b!5351454 (= res!2270639 call!382535)))

(declare-fun e!3322020 () Bool)

(assert (=> b!5351454 (= e!3322020 e!3322016)))

(declare-fun bm!382529 () Bool)

(declare-fun c!931643 () Bool)

(assert (=> bm!382529 (= call!382535 (validRegex!6777 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))))))

(declare-fun b!5351455 () Bool)

(declare-fun res!2270640 () Bool)

(declare-fun e!3322017 () Bool)

(assert (=> b!5351455 (=> res!2270640 e!3322017)))

(assert (=> b!5351455 (= res!2270640 (not ((_ is Concat!23886) (reg!15370 (regOne!30594 r!7292)))))))

(assert (=> b!5351455 (= e!3322020 e!3322017)))

(declare-fun b!5351456 () Bool)

(declare-fun call!382536 () Bool)

(assert (=> b!5351456 (= e!3322019 call!382536)))

(declare-fun b!5351457 () Bool)

(declare-fun e!3322018 () Bool)

(assert (=> b!5351457 (= e!3322017 e!3322018)))

(declare-fun res!2270642 () Bool)

(assert (=> b!5351457 (=> (not res!2270642) (not e!3322018))))

(assert (=> b!5351457 (= res!2270642 call!382535)))

(declare-fun b!5351458 () Bool)

(assert (=> b!5351458 (= e!3322014 e!3322020)))

(assert (=> b!5351458 (= c!931643 ((_ is Union!15041) (reg!15370 (regOne!30594 r!7292))))))

(declare-fun bm!382530 () Bool)

(assert (=> bm!382530 (= call!382536 (validRegex!6777 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))))))

(declare-fun b!5351459 () Bool)

(declare-fun call!382534 () Bool)

(assert (=> b!5351459 (= e!3322016 call!382534)))

(declare-fun d!1715768 () Bool)

(declare-fun res!2270641 () Bool)

(assert (=> d!1715768 (=> res!2270641 e!3322015)))

(assert (=> d!1715768 (= res!2270641 ((_ is ElementMatch!15041) (reg!15370 (regOne!30594 r!7292))))))

(assert (=> d!1715768 (= (validRegex!6777 (reg!15370 (regOne!30594 r!7292))) e!3322015)))

(declare-fun bm!382531 () Bool)

(assert (=> bm!382531 (= call!382534 call!382536)))

(declare-fun b!5351460 () Bool)

(assert (=> b!5351460 (= e!3322018 call!382534)))

(assert (= (and d!1715768 (not res!2270641)) b!5351452))

(assert (= (and b!5351452 c!931644) b!5351453))

(assert (= (and b!5351452 (not c!931644)) b!5351458))

(assert (= (and b!5351453 res!2270638) b!5351456))

(assert (= (and b!5351458 c!931643) b!5351454))

(assert (= (and b!5351458 (not c!931643)) b!5351455))

(assert (= (and b!5351454 res!2270639) b!5351459))

(assert (= (and b!5351455 (not res!2270640)) b!5351457))

(assert (= (and b!5351457 res!2270642) b!5351460))

(assert (= (or b!5351459 b!5351460) bm!382531))

(assert (= (or b!5351454 b!5351457) bm!382529))

(assert (= (or b!5351456 bm!382531) bm!382530))

(declare-fun m!6382464 () Bool)

(assert (=> b!5351453 m!6382464))

(declare-fun m!6382466 () Bool)

(assert (=> bm!382529 m!6382466))

(declare-fun m!6382468 () Bool)

(assert (=> bm!382530 m!6382468))

(assert (=> b!5351233 d!1715768))

(declare-fun d!1715770 () Bool)

(declare-fun nullableFct!1531 (Regex!15041) Bool)

(assert (=> d!1715770 (= (nullable!5210 (regOne!30594 (regOne!30594 r!7292))) (nullableFct!1531 (regOne!30594 (regOne!30594 r!7292))))))

(declare-fun bs!1240572 () Bool)

(assert (= bs!1240572 d!1715770))

(declare-fun m!6382470 () Bool)

(assert (=> bs!1240572 m!6382470))

(assert (=> b!5351232 d!1715770))

(declare-fun d!1715772 () Bool)

(declare-fun lt!2181362 () Regex!15041)

(assert (=> d!1715772 (validRegex!6777 lt!2181362)))

(assert (=> d!1715772 (= lt!2181362 (generalisedUnion!970 (unfocusZipperList!483 zl!343)))))

(assert (=> d!1715772 (= (unfocusZipper!783 zl!343) lt!2181362)))

(declare-fun bs!1240574 () Bool)

(assert (= bs!1240574 d!1715772))

(declare-fun m!6382480 () Bool)

(assert (=> bs!1240574 m!6382480))

(assert (=> bs!1240574 m!6382298))

(assert (=> bs!1240574 m!6382298))

(assert (=> bs!1240574 m!6382300))

(assert (=> b!5351222 d!1715772))

(declare-fun d!1715778 () Bool)

(assert (=> d!1715778 (= (isEmpty!33276 (t!374639 (exprs!4925 (h!67747 zl!343)))) ((_ is Nil!61298) (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> b!5351239 d!1715778))

(declare-fun bs!1240575 () Bool)

(declare-fun b!5351541 () Bool)

(assert (= bs!1240575 (and b!5351541 b!5351237)))

(declare-fun lambda!275147 () Int)

(assert (=> bs!1240575 (not (= lambda!275147 lambda!275107))))

(assert (=> bs!1240575 (not (= lambda!275147 lambda!275108))))

(assert (=> b!5351541 true))

(assert (=> b!5351541 true))

(declare-fun bs!1240576 () Bool)

(declare-fun b!5351536 () Bool)

(assert (= bs!1240576 (and b!5351536 b!5351237)))

(declare-fun lambda!275149 () Int)

(assert (=> bs!1240576 (not (= lambda!275149 lambda!275107))))

(assert (=> bs!1240576 (= lambda!275149 lambda!275108)))

(declare-fun bs!1240577 () Bool)

(assert (= bs!1240577 (and b!5351536 b!5351541)))

(assert (=> bs!1240577 (not (= lambda!275149 lambda!275147))))

(assert (=> b!5351536 true))

(assert (=> b!5351536 true))

(declare-fun b!5351533 () Bool)

(declare-fun res!2270676 () Bool)

(declare-fun e!3322065 () Bool)

(assert (=> b!5351533 (=> res!2270676 e!3322065)))

(declare-fun call!382542 () Bool)

(assert (=> b!5351533 (= res!2270676 call!382542)))

(declare-fun e!3322067 () Bool)

(assert (=> b!5351533 (= e!3322067 e!3322065)))

(declare-fun b!5351534 () Bool)

(declare-fun e!3322066 () Bool)

(assert (=> b!5351534 (= e!3322066 (matchRSpec!2144 (regTwo!30595 r!7292) s!2326))))

(declare-fun bm!382536 () Bool)

(assert (=> bm!382536 (= call!382542 (isEmpty!33277 s!2326))))

(declare-fun b!5351535 () Bool)

(declare-fun c!931666 () Bool)

(assert (=> b!5351535 (= c!931666 ((_ is ElementMatch!15041) r!7292))))

(declare-fun e!3322068 () Bool)

(declare-fun e!3322063 () Bool)

(assert (=> b!5351535 (= e!3322068 e!3322063)))

(declare-fun call!382541 () Bool)

(assert (=> b!5351536 (= e!3322067 call!382541)))

(declare-fun b!5351537 () Bool)

(declare-fun c!931665 () Bool)

(assert (=> b!5351537 (= c!931665 ((_ is Union!15041) r!7292))))

(declare-fun e!3322062 () Bool)

(assert (=> b!5351537 (= e!3322063 e!3322062)))

(declare-fun b!5351538 () Bool)

(declare-fun e!3322064 () Bool)

(assert (=> b!5351538 (= e!3322064 call!382542)))

(declare-fun b!5351539 () Bool)

(assert (=> b!5351539 (= e!3322063 (= s!2326 (Cons!61300 (c!931579 r!7292) Nil!61300)))))

(declare-fun b!5351532 () Bool)

(assert (=> b!5351532 (= e!3322062 e!3322066)))

(declare-fun res!2270675 () Bool)

(assert (=> b!5351532 (= res!2270675 (matchRSpec!2144 (regOne!30595 r!7292) s!2326))))

(assert (=> b!5351532 (=> res!2270675 e!3322066)))

(declare-fun d!1715780 () Bool)

(declare-fun c!931667 () Bool)

(assert (=> d!1715780 (= c!931667 ((_ is EmptyExpr!15041) r!7292))))

(assert (=> d!1715780 (= (matchRSpec!2144 r!7292 s!2326) e!3322064)))

(declare-fun bm!382537 () Bool)

(declare-fun c!931668 () Bool)

(assert (=> bm!382537 (= call!382541 (Exists!2222 (ite c!931668 lambda!275147 lambda!275149)))))

(declare-fun b!5351540 () Bool)

(assert (=> b!5351540 (= e!3322062 e!3322067)))

(assert (=> b!5351540 (= c!931668 ((_ is Star!15041) r!7292))))

(assert (=> b!5351541 (= e!3322065 call!382541)))

(declare-fun b!5351542 () Bool)

(assert (=> b!5351542 (= e!3322064 e!3322068)))

(declare-fun res!2270674 () Bool)

(assert (=> b!5351542 (= res!2270674 (not ((_ is EmptyLang!15041) r!7292)))))

(assert (=> b!5351542 (=> (not res!2270674) (not e!3322068))))

(assert (= (and d!1715780 c!931667) b!5351538))

(assert (= (and d!1715780 (not c!931667)) b!5351542))

(assert (= (and b!5351542 res!2270674) b!5351535))

(assert (= (and b!5351535 c!931666) b!5351539))

(assert (= (and b!5351535 (not c!931666)) b!5351537))

(assert (= (and b!5351537 c!931665) b!5351532))

(assert (= (and b!5351537 (not c!931665)) b!5351540))

(assert (= (and b!5351532 (not res!2270675)) b!5351534))

(assert (= (and b!5351540 c!931668) b!5351533))

(assert (= (and b!5351540 (not c!931668)) b!5351536))

(assert (= (and b!5351533 (not res!2270676)) b!5351541))

(assert (= (or b!5351541 b!5351536) bm!382537))

(assert (= (or b!5351538 b!5351533) bm!382536))

(declare-fun m!6382502 () Bool)

(assert (=> b!5351534 m!6382502))

(declare-fun m!6382504 () Bool)

(assert (=> bm!382536 m!6382504))

(declare-fun m!6382506 () Bool)

(assert (=> b!5351532 m!6382506))

(declare-fun m!6382508 () Bool)

(assert (=> bm!382537 m!6382508))

(assert (=> b!5351240 d!1715780))

(declare-fun b!5351586 () Bool)

(declare-fun e!3322094 () Bool)

(assert (=> b!5351586 (= e!3322094 (not (= (head!11477 s!2326) (c!931579 r!7292))))))

(declare-fun b!5351587 () Bool)

(declare-fun e!3322095 () Bool)

(assert (=> b!5351587 (= e!3322095 (= (head!11477 s!2326) (c!931579 r!7292)))))

(declare-fun b!5351588 () Bool)

(declare-fun res!2270706 () Bool)

(declare-fun e!3322097 () Bool)

(assert (=> b!5351588 (=> res!2270706 e!3322097)))

(assert (=> b!5351588 (= res!2270706 (not ((_ is ElementMatch!15041) r!7292)))))

(declare-fun e!3322096 () Bool)

(assert (=> b!5351588 (= e!3322096 e!3322097)))

(declare-fun b!5351589 () Bool)

(declare-fun e!3322092 () Bool)

(assert (=> b!5351589 (= e!3322092 e!3322096)))

(declare-fun c!931681 () Bool)

(assert (=> b!5351589 (= c!931681 ((_ is EmptyLang!15041) r!7292))))

(declare-fun b!5351590 () Bool)

(declare-fun e!3322098 () Bool)

(assert (=> b!5351590 (= e!3322097 e!3322098)))

(declare-fun res!2270701 () Bool)

(assert (=> b!5351590 (=> (not res!2270701) (not e!3322098))))

(declare-fun lt!2181368 () Bool)

(assert (=> b!5351590 (= res!2270701 (not lt!2181368))))

(declare-fun b!5351591 () Bool)

(declare-fun e!3322093 () Bool)

(declare-fun derivativeStep!4200 (Regex!15041 C!30352) Regex!15041)

(assert (=> b!5351591 (= e!3322093 (matchR!7226 (derivativeStep!4200 r!7292 (head!11477 s!2326)) (tail!10574 s!2326)))))

(declare-fun bm!382546 () Bool)

(declare-fun call!382551 () Bool)

(assert (=> bm!382546 (= call!382551 (isEmpty!33277 s!2326))))

(declare-fun b!5351592 () Bool)

(declare-fun res!2270705 () Bool)

(assert (=> b!5351592 (=> res!2270705 e!3322097)))

(assert (=> b!5351592 (= res!2270705 e!3322095)))

(declare-fun res!2270700 () Bool)

(assert (=> b!5351592 (=> (not res!2270700) (not e!3322095))))

(assert (=> b!5351592 (= res!2270700 lt!2181368)))

(declare-fun d!1715788 () Bool)

(assert (=> d!1715788 e!3322092))

(declare-fun c!931679 () Bool)

(assert (=> d!1715788 (= c!931679 ((_ is EmptyExpr!15041) r!7292))))

(assert (=> d!1715788 (= lt!2181368 e!3322093)))

(declare-fun c!931680 () Bool)

(assert (=> d!1715788 (= c!931680 (isEmpty!33277 s!2326))))

(assert (=> d!1715788 (validRegex!6777 r!7292)))

(assert (=> d!1715788 (= (matchR!7226 r!7292 s!2326) lt!2181368)))

(declare-fun b!5351593 () Bool)

(assert (=> b!5351593 (= e!3322098 e!3322094)))

(declare-fun res!2270703 () Bool)

(assert (=> b!5351593 (=> res!2270703 e!3322094)))

(assert (=> b!5351593 (= res!2270703 call!382551)))

(declare-fun b!5351594 () Bool)

(declare-fun res!2270704 () Bool)

(assert (=> b!5351594 (=> res!2270704 e!3322094)))

(assert (=> b!5351594 (= res!2270704 (not (isEmpty!33277 (tail!10574 s!2326))))))

(declare-fun b!5351595 () Bool)

(declare-fun res!2270702 () Bool)

(assert (=> b!5351595 (=> (not res!2270702) (not e!3322095))))

(assert (=> b!5351595 (= res!2270702 (not call!382551))))

(declare-fun b!5351596 () Bool)

(declare-fun res!2270707 () Bool)

(assert (=> b!5351596 (=> (not res!2270707) (not e!3322095))))

(assert (=> b!5351596 (= res!2270707 (isEmpty!33277 (tail!10574 s!2326)))))

(declare-fun b!5351597 () Bool)

(assert (=> b!5351597 (= e!3322093 (nullable!5210 r!7292))))

(declare-fun b!5351598 () Bool)

(assert (=> b!5351598 (= e!3322096 (not lt!2181368))))

(declare-fun b!5351599 () Bool)

(assert (=> b!5351599 (= e!3322092 (= lt!2181368 call!382551))))

(assert (= (and d!1715788 c!931680) b!5351597))

(assert (= (and d!1715788 (not c!931680)) b!5351591))

(assert (= (and d!1715788 c!931679) b!5351599))

(assert (= (and d!1715788 (not c!931679)) b!5351589))

(assert (= (and b!5351589 c!931681) b!5351598))

(assert (= (and b!5351589 (not c!931681)) b!5351588))

(assert (= (and b!5351588 (not res!2270706)) b!5351592))

(assert (= (and b!5351592 res!2270700) b!5351595))

(assert (= (and b!5351595 res!2270702) b!5351596))

(assert (= (and b!5351596 res!2270707) b!5351587))

(assert (= (and b!5351592 (not res!2270705)) b!5351590))

(assert (= (and b!5351590 res!2270701) b!5351593))

(assert (= (and b!5351593 (not res!2270703)) b!5351594))

(assert (= (and b!5351594 (not res!2270704)) b!5351586))

(assert (= (or b!5351599 b!5351593 b!5351595) bm!382546))

(declare-fun m!6382518 () Bool)

(assert (=> b!5351597 m!6382518))

(assert (=> bm!382546 m!6382504))

(declare-fun m!6382520 () Bool)

(assert (=> b!5351587 m!6382520))

(declare-fun m!6382522 () Bool)

(assert (=> b!5351596 m!6382522))

(assert (=> b!5351596 m!6382522))

(declare-fun m!6382524 () Bool)

(assert (=> b!5351596 m!6382524))

(assert (=> b!5351586 m!6382520))

(assert (=> b!5351591 m!6382520))

(assert (=> b!5351591 m!6382520))

(declare-fun m!6382526 () Bool)

(assert (=> b!5351591 m!6382526))

(assert (=> b!5351591 m!6382522))

(assert (=> b!5351591 m!6382526))

(assert (=> b!5351591 m!6382522))

(declare-fun m!6382528 () Bool)

(assert (=> b!5351591 m!6382528))

(assert (=> b!5351594 m!6382522))

(assert (=> b!5351594 m!6382522))

(assert (=> b!5351594 m!6382524))

(assert (=> d!1715788 m!6382504))

(assert (=> d!1715788 m!6382302))

(assert (=> b!5351240 d!1715788))

(declare-fun d!1715792 () Bool)

(assert (=> d!1715792 (= (matchR!7226 r!7292 s!2326) (matchRSpec!2144 r!7292 s!2326))))

(declare-fun lt!2181373 () Unit!153682)

(declare-fun choose!40156 (Regex!15041 List!61424) Unit!153682)

(assert (=> d!1715792 (= lt!2181373 (choose!40156 r!7292 s!2326))))

(assert (=> d!1715792 (validRegex!6777 r!7292)))

(assert (=> d!1715792 (= (mainMatchTheorem!2144 r!7292 s!2326) lt!2181373)))

(declare-fun bs!1240585 () Bool)

(assert (= bs!1240585 d!1715792))

(assert (=> bs!1240585 m!6382312))

(assert (=> bs!1240585 m!6382310))

(declare-fun m!6382530 () Bool)

(assert (=> bs!1240585 m!6382530))

(assert (=> bs!1240585 m!6382302))

(assert (=> b!5351240 d!1715792))

(declare-fun d!1715794 () Bool)

(assert (=> d!1715794 (= (nullable!5210 (h!67746 (exprs!4925 (h!67747 zl!343)))) (nullableFct!1531 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun bs!1240586 () Bool)

(assert (= bs!1240586 d!1715794))

(declare-fun m!6382532 () Bool)

(assert (=> bs!1240586 m!6382532))

(assert (=> b!5351238 d!1715794))

(declare-fun d!1715796 () Bool)

(declare-fun c!931695 () Bool)

(declare-fun e!3322127 () Bool)

(assert (=> d!1715796 (= c!931695 e!3322127)))

(declare-fun res!2270734 () Bool)

(assert (=> d!1715796 (=> (not res!2270734) (not e!3322127))))

(assert (=> d!1715796 (= res!2270734 ((_ is Cons!61298) (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))

(declare-fun e!3322126 () (InoxSet Context!8850))

(assert (=> d!1715796 (= (derivationStepZipperUp!413 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))) (h!67748 s!2326)) e!3322126)))

(declare-fun b!5351652 () Bool)

(declare-fun e!3322128 () (InoxSet Context!8850))

(declare-fun call!382557 () (InoxSet Context!8850))

(assert (=> b!5351652 (= e!3322128 call!382557)))

(declare-fun bm!382552 () Bool)

(assert (=> bm!382552 (= call!382557 (derivationStepZipperDown!489 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (h!67748 s!2326)))))

(declare-fun b!5351653 () Bool)

(assert (=> b!5351653 (= e!3322127 (nullable!5210 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun b!5351654 () Bool)

(assert (=> b!5351654 (= e!3322126 ((_ map or) call!382557 (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (h!67748 s!2326))))))

(declare-fun b!5351655 () Bool)

(assert (=> b!5351655 (= e!3322128 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5351656 () Bool)

(assert (=> b!5351656 (= e!3322126 e!3322128)))

(declare-fun c!931696 () Bool)

(assert (=> b!5351656 (= c!931696 ((_ is Cons!61298) (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))

(assert (= (and d!1715796 res!2270734) b!5351653))

(assert (= (and d!1715796 c!931695) b!5351654))

(assert (= (and d!1715796 (not c!931695)) b!5351656))

(assert (= (and b!5351656 c!931696) b!5351652))

(assert (= (and b!5351656 (not c!931696)) b!5351655))

(assert (= (or b!5351654 b!5351652) bm!382552))

(declare-fun m!6382546 () Bool)

(assert (=> bm!382552 m!6382546))

(declare-fun m!6382548 () Bool)

(assert (=> b!5351653 m!6382548))

(declare-fun m!6382550 () Bool)

(assert (=> b!5351654 m!6382550))

(assert (=> b!5351238 d!1715796))

(declare-fun d!1715800 () Bool)

(declare-fun c!931697 () Bool)

(declare-fun e!3322130 () Bool)

(assert (=> d!1715800 (= c!931697 e!3322130)))

(declare-fun res!2270735 () Bool)

(assert (=> d!1715800 (=> (not res!2270735) (not e!3322130))))

(assert (=> d!1715800 (= res!2270735 ((_ is Cons!61298) (exprs!4925 lt!2181316)))))

(declare-fun e!3322129 () (InoxSet Context!8850))

(assert (=> d!1715800 (= (derivationStepZipperUp!413 lt!2181316 (h!67748 s!2326)) e!3322129)))

(declare-fun b!5351657 () Bool)

(declare-fun e!3322131 () (InoxSet Context!8850))

(declare-fun call!382558 () (InoxSet Context!8850))

(assert (=> b!5351657 (= e!3322131 call!382558)))

(declare-fun bm!382553 () Bool)

(assert (=> bm!382553 (= call!382558 (derivationStepZipperDown!489 (h!67746 (exprs!4925 lt!2181316)) (Context!8851 (t!374639 (exprs!4925 lt!2181316))) (h!67748 s!2326)))))

(declare-fun b!5351658 () Bool)

(assert (=> b!5351658 (= e!3322130 (nullable!5210 (h!67746 (exprs!4925 lt!2181316))))))

(declare-fun b!5351659 () Bool)

(assert (=> b!5351659 (= e!3322129 ((_ map or) call!382558 (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 lt!2181316))) (h!67748 s!2326))))))

(declare-fun b!5351660 () Bool)

(assert (=> b!5351660 (= e!3322131 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5351661 () Bool)

(assert (=> b!5351661 (= e!3322129 e!3322131)))

(declare-fun c!931698 () Bool)

(assert (=> b!5351661 (= c!931698 ((_ is Cons!61298) (exprs!4925 lt!2181316)))))

(assert (= (and d!1715800 res!2270735) b!5351658))

(assert (= (and d!1715800 c!931697) b!5351659))

(assert (= (and d!1715800 (not c!931697)) b!5351661))

(assert (= (and b!5351661 c!931698) b!5351657))

(assert (= (and b!5351661 (not c!931698)) b!5351660))

(assert (= (or b!5351659 b!5351657) bm!382553))

(declare-fun m!6382552 () Bool)

(assert (=> bm!382553 m!6382552))

(declare-fun m!6382554 () Bool)

(assert (=> b!5351658 m!6382554))

(declare-fun m!6382556 () Bool)

(assert (=> b!5351659 m!6382556))

(assert (=> b!5351238 d!1715800))

(declare-fun d!1715802 () Bool)

(declare-fun dynLambda!24228 (Int Context!8850) (InoxSet Context!8850))

(assert (=> d!1715802 (= (flatMap!768 z!1189 lambda!275109) (dynLambda!24228 lambda!275109 (h!67747 zl!343)))))

(declare-fun lt!2181380 () Unit!153682)

(declare-fun choose!40158 ((InoxSet Context!8850) Context!8850 Int) Unit!153682)

(assert (=> d!1715802 (= lt!2181380 (choose!40158 z!1189 (h!67747 zl!343) lambda!275109))))

(assert (=> d!1715802 (= z!1189 (store ((as const (Array Context!8850 Bool)) false) (h!67747 zl!343) true))))

(assert (=> d!1715802 (= (lemmaFlatMapOnSingletonSet!300 z!1189 (h!67747 zl!343) lambda!275109) lt!2181380)))

(declare-fun b_lambda!205325 () Bool)

(assert (=> (not b_lambda!205325) (not d!1715802)))

(declare-fun bs!1240589 () Bool)

(assert (= bs!1240589 d!1715802))

(assert (=> bs!1240589 m!6382262))

(declare-fun m!6382562 () Bool)

(assert (=> bs!1240589 m!6382562))

(declare-fun m!6382564 () Bool)

(assert (=> bs!1240589 m!6382564))

(declare-fun m!6382566 () Bool)

(assert (=> bs!1240589 m!6382566))

(assert (=> b!5351238 d!1715802))

(declare-fun b!5351720 () Bool)

(declare-fun e!3322170 () (InoxSet Context!8850))

(declare-fun call!382580 () (InoxSet Context!8850))

(assert (=> b!5351720 (= e!3322170 call!382580)))

(declare-fun b!5351721 () Bool)

(declare-fun c!931726 () Bool)

(declare-fun e!3322168 () Bool)

(assert (=> b!5351721 (= c!931726 e!3322168)))

(declare-fun res!2270748 () Bool)

(assert (=> b!5351721 (=> (not res!2270748) (not e!3322168))))

(assert (=> b!5351721 (= res!2270748 ((_ is Concat!23886) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun e!3322169 () (InoxSet Context!8850))

(declare-fun e!3322171 () (InoxSet Context!8850))

(assert (=> b!5351721 (= e!3322169 e!3322171)))

(declare-fun c!931722 () Bool)

(declare-fun c!931723 () Bool)

(declare-fun call!382579 () List!61422)

(declare-fun bm!382574 () Bool)

(declare-fun call!382581 () (InoxSet Context!8850))

(assert (=> bm!382574 (= call!382581 (derivationStepZipperDown!489 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))) (ite (or c!931722 c!931726) lt!2181316 (Context!8851 call!382579)) (h!67748 s!2326)))))

(declare-fun b!5351722 () Bool)

(declare-fun e!3322167 () (InoxSet Context!8850))

(assert (=> b!5351722 (= e!3322167 e!3322169)))

(assert (=> b!5351722 (= c!931722 ((_ is Union!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351723 () Bool)

(assert (=> b!5351723 (= e!3322168 (nullable!5210 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun bm!382575 () Bool)

(declare-fun call!382584 () (InoxSet Context!8850))

(assert (=> bm!382575 (= call!382584 call!382581)))

(declare-fun bm!382576 () Bool)

(assert (=> bm!382576 (= call!382580 call!382584)))

(declare-fun bm!382577 () Bool)

(declare-fun call!382582 () List!61422)

(declare-fun call!382583 () (InoxSet Context!8850))

(assert (=> bm!382577 (= call!382583 (derivationStepZipperDown!489 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))) (ite c!931722 lt!2181316 (Context!8851 call!382582)) (h!67748 s!2326)))))

(declare-fun b!5351725 () Bool)

(assert (=> b!5351725 (= e!3322169 ((_ map or) call!382581 call!382583))))

(declare-fun b!5351726 () Bool)

(assert (=> b!5351726 (= e!3322171 ((_ map or) call!382583 call!382584))))

(declare-fun bm!382578 () Bool)

(declare-fun $colon$colon!1429 (List!61422 Regex!15041) List!61422)

(assert (=> bm!382578 (= call!382582 ($colon$colon!1429 (exprs!4925 lt!2181316) (ite (or c!931726 c!931723) (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (h!67746 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun bm!382579 () Bool)

(assert (=> bm!382579 (= call!382579 call!382582)))

(declare-fun b!5351727 () Bool)

(declare-fun e!3322172 () (InoxSet Context!8850))

(assert (=> b!5351727 (= e!3322172 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5351728 () Bool)

(declare-fun c!931724 () Bool)

(assert (=> b!5351728 (= c!931724 ((_ is Star!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> b!5351728 (= e!3322170 e!3322172)))

(declare-fun b!5351729 () Bool)

(assert (=> b!5351729 (= e!3322171 e!3322170)))

(assert (=> b!5351729 (= c!931723 ((_ is Concat!23886) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351730 () Bool)

(assert (=> b!5351730 (= e!3322172 call!382580)))

(declare-fun b!5351724 () Bool)

(assert (=> b!5351724 (= e!3322167 (store ((as const (Array Context!8850 Bool)) false) lt!2181316 true))))

(declare-fun d!1715810 () Bool)

(declare-fun c!931725 () Bool)

(assert (=> d!1715810 (= c!931725 (and ((_ is ElementMatch!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))) (= (c!931579 (h!67746 (exprs!4925 (h!67747 zl!343)))) (h!67748 s!2326))))))

(assert (=> d!1715810 (= (derivationStepZipperDown!489 (h!67746 (exprs!4925 (h!67747 zl!343))) lt!2181316 (h!67748 s!2326)) e!3322167)))

(assert (= (and d!1715810 c!931725) b!5351724))

(assert (= (and d!1715810 (not c!931725)) b!5351722))

(assert (= (and b!5351722 c!931722) b!5351725))

(assert (= (and b!5351722 (not c!931722)) b!5351721))

(assert (= (and b!5351721 res!2270748) b!5351723))

(assert (= (and b!5351721 c!931726) b!5351726))

(assert (= (and b!5351721 (not c!931726)) b!5351729))

(assert (= (and b!5351729 c!931723) b!5351720))

(assert (= (and b!5351729 (not c!931723)) b!5351728))

(assert (= (and b!5351728 c!931724) b!5351730))

(assert (= (and b!5351728 (not c!931724)) b!5351727))

(assert (= (or b!5351720 b!5351730) bm!382579))

(assert (= (or b!5351720 b!5351730) bm!382576))

(assert (= (or b!5351726 bm!382579) bm!382578))

(assert (= (or b!5351726 bm!382576) bm!382575))

(assert (= (or b!5351725 b!5351726) bm!382577))

(assert (= (or b!5351725 bm!382575) bm!382574))

(declare-fun m!6382604 () Bool)

(assert (=> bm!382574 m!6382604))

(declare-fun m!6382606 () Bool)

(assert (=> bm!382577 m!6382606))

(declare-fun m!6382608 () Bool)

(assert (=> b!5351724 m!6382608))

(declare-fun m!6382610 () Bool)

(assert (=> b!5351723 m!6382610))

(declare-fun m!6382612 () Bool)

(assert (=> bm!382578 m!6382612))

(assert (=> b!5351238 d!1715810))

(declare-fun d!1715826 () Bool)

(declare-fun choose!40160 ((InoxSet Context!8850) Int) (InoxSet Context!8850))

(assert (=> d!1715826 (= (flatMap!768 z!1189 lambda!275109) (choose!40160 z!1189 lambda!275109))))

(declare-fun bs!1240592 () Bool)

(assert (= bs!1240592 d!1715826))

(declare-fun m!6382614 () Bool)

(assert (=> bs!1240592 m!6382614))

(assert (=> b!5351238 d!1715826))

(declare-fun d!1715828 () Bool)

(declare-fun c!931727 () Bool)

(declare-fun e!3322174 () Bool)

(assert (=> d!1715828 (= c!931727 e!3322174)))

(declare-fun res!2270749 () Bool)

(assert (=> d!1715828 (=> (not res!2270749) (not e!3322174))))

(assert (=> d!1715828 (= res!2270749 ((_ is Cons!61298) (exprs!4925 (h!67747 zl!343))))))

(declare-fun e!3322173 () (InoxSet Context!8850))

(assert (=> d!1715828 (= (derivationStepZipperUp!413 (h!67747 zl!343) (h!67748 s!2326)) e!3322173)))

(declare-fun b!5351731 () Bool)

(declare-fun e!3322175 () (InoxSet Context!8850))

(declare-fun call!382585 () (InoxSet Context!8850))

(assert (=> b!5351731 (= e!3322175 call!382585)))

(declare-fun bm!382580 () Bool)

(assert (=> bm!382580 (= call!382585 (derivationStepZipperDown!489 (h!67746 (exprs!4925 (h!67747 zl!343))) (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) (h!67748 s!2326)))))

(declare-fun b!5351732 () Bool)

(assert (=> b!5351732 (= e!3322174 (nullable!5210 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351733 () Bool)

(assert (=> b!5351733 (= e!3322173 ((_ map or) call!382585 (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) (h!67748 s!2326))))))

(declare-fun b!5351734 () Bool)

(assert (=> b!5351734 (= e!3322175 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5351735 () Bool)

(assert (=> b!5351735 (= e!3322173 e!3322175)))

(declare-fun c!931728 () Bool)

(assert (=> b!5351735 (= c!931728 ((_ is Cons!61298) (exprs!4925 (h!67747 zl!343))))))

(assert (= (and d!1715828 res!2270749) b!5351732))

(assert (= (and d!1715828 c!931727) b!5351733))

(assert (= (and d!1715828 (not c!931727)) b!5351735))

(assert (= (and b!5351735 c!931728) b!5351731))

(assert (= (and b!5351735 (not c!931728)) b!5351734))

(assert (= (or b!5351733 b!5351731) bm!382580))

(declare-fun m!6382616 () Bool)

(assert (=> bm!382580 m!6382616))

(assert (=> b!5351732 m!6382266))

(declare-fun m!6382618 () Bool)

(assert (=> b!5351733 m!6382618))

(assert (=> b!5351238 d!1715828))

(declare-fun bs!1240593 () Bool)

(declare-fun d!1715830 () Bool)

(assert (= bs!1240593 (and d!1715830 d!1715746)))

(declare-fun lambda!275155 () Int)

(assert (=> bs!1240593 (= lambda!275155 lambda!275124)))

(declare-fun bs!1240594 () Bool)

(assert (= bs!1240594 (and d!1715830 d!1715756)))

(assert (=> bs!1240594 (= lambda!275155 lambda!275125)))

(declare-fun bs!1240595 () Bool)

(assert (= bs!1240595 (and d!1715830 d!1715758)))

(assert (=> bs!1240595 (= lambda!275155 lambda!275130)))

(declare-fun bs!1240596 () Bool)

(assert (= bs!1240596 (and d!1715830 d!1715764)))

(assert (=> bs!1240596 (= lambda!275155 lambda!275134)))

(declare-fun b!5351789 () Bool)

(declare-fun e!3322210 () Bool)

(assert (=> b!5351789 (= e!3322210 (isEmpty!33276 (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351790 () Bool)

(declare-fun e!3322211 () Bool)

(declare-fun e!3322209 () Bool)

(assert (=> b!5351790 (= e!3322211 e!3322209)))

(declare-fun c!931752 () Bool)

(assert (=> b!5351790 (= c!931752 (isEmpty!33276 (tail!10575 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351791 () Bool)

(declare-fun lt!2181386 () Regex!15041)

(declare-fun isConcat!438 (Regex!15041) Bool)

(assert (=> b!5351791 (= e!3322209 (isConcat!438 lt!2181386))))

(declare-fun b!5351792 () Bool)

(declare-fun isEmptyExpr!915 (Regex!15041) Bool)

(assert (=> b!5351792 (= e!3322211 (isEmptyExpr!915 lt!2181386))))

(declare-fun b!5351793 () Bool)

(declare-fun e!3322207 () Bool)

(assert (=> b!5351793 (= e!3322207 e!3322211)))

(declare-fun c!931755 () Bool)

(assert (=> b!5351793 (= c!931755 (isEmpty!33276 (exprs!4925 (h!67747 zl!343))))))

(declare-fun b!5351794 () Bool)

(assert (=> b!5351794 (= e!3322209 (= lt!2181386 (head!11478 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5351795 () Bool)

(declare-fun e!3322208 () Regex!15041)

(assert (=> b!5351795 (= e!3322208 EmptyExpr!15041)))

(declare-fun b!5351796 () Bool)

(declare-fun e!3322206 () Regex!15041)

(assert (=> b!5351796 (= e!3322206 e!3322208)))

(declare-fun c!931754 () Bool)

(assert (=> b!5351796 (= c!931754 ((_ is Cons!61298) (exprs!4925 (h!67747 zl!343))))))

(declare-fun b!5351797 () Bool)

(assert (=> b!5351797 (= e!3322208 (Concat!23886 (h!67746 (exprs!4925 (h!67747 zl!343))) (generalisedConcat!710 (t!374639 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun b!5351798 () Bool)

(assert (=> b!5351798 (= e!3322206 (h!67746 (exprs!4925 (h!67747 zl!343))))))

(assert (=> d!1715830 e!3322207))

(declare-fun res!2270758 () Bool)

(assert (=> d!1715830 (=> (not res!2270758) (not e!3322207))))

(assert (=> d!1715830 (= res!2270758 (validRegex!6777 lt!2181386))))

(assert (=> d!1715830 (= lt!2181386 e!3322206)))

(declare-fun c!931753 () Bool)

(assert (=> d!1715830 (= c!931753 e!3322210)))

(declare-fun res!2270757 () Bool)

(assert (=> d!1715830 (=> (not res!2270757) (not e!3322210))))

(assert (=> d!1715830 (= res!2270757 ((_ is Cons!61298) (exprs!4925 (h!67747 zl!343))))))

(assert (=> d!1715830 (forall!14467 (exprs!4925 (h!67747 zl!343)) lambda!275155)))

(assert (=> d!1715830 (= (generalisedConcat!710 (exprs!4925 (h!67747 zl!343))) lt!2181386)))

(assert (= (and d!1715830 res!2270757) b!5351789))

(assert (= (and d!1715830 c!931753) b!5351798))

(assert (= (and d!1715830 (not c!931753)) b!5351796))

(assert (= (and b!5351796 c!931754) b!5351797))

(assert (= (and b!5351796 (not c!931754)) b!5351795))

(assert (= (and d!1715830 res!2270758) b!5351793))

(assert (= (and b!5351793 c!931755) b!5351792))

(assert (= (and b!5351793 (not c!931755)) b!5351790))

(assert (= (and b!5351790 c!931752) b!5351794))

(assert (= (and b!5351790 (not c!931752)) b!5351791))

(assert (=> b!5351789 m!6382308))

(declare-fun m!6382632 () Bool)

(assert (=> b!5351791 m!6382632))

(declare-fun m!6382634 () Bool)

(assert (=> b!5351794 m!6382634))

(declare-fun m!6382636 () Bool)

(assert (=> d!1715830 m!6382636))

(declare-fun m!6382640 () Bool)

(assert (=> d!1715830 m!6382640))

(declare-fun m!6382642 () Bool)

(assert (=> b!5351790 m!6382642))

(assert (=> b!5351790 m!6382642))

(declare-fun m!6382644 () Bool)

(assert (=> b!5351790 m!6382644))

(declare-fun m!6382646 () Bool)

(assert (=> b!5351793 m!6382646))

(declare-fun m!6382648 () Bool)

(assert (=> b!5351792 m!6382648))

(declare-fun m!6382650 () Bool)

(assert (=> b!5351797 m!6382650))

(assert (=> b!5351230 d!1715830))

(declare-fun b!5351801 () Bool)

(declare-fun e!3322213 () Bool)

(declare-fun e!3322212 () Bool)

(assert (=> b!5351801 (= e!3322213 e!3322212)))

(declare-fun c!931757 () Bool)

(assert (=> b!5351801 (= c!931757 ((_ is Star!15041) r!7292))))

(declare-fun b!5351802 () Bool)

(declare-fun e!3322217 () Bool)

(assert (=> b!5351802 (= e!3322212 e!3322217)))

(declare-fun res!2270759 () Bool)

(assert (=> b!5351802 (= res!2270759 (not (nullable!5210 (reg!15370 r!7292))))))

(assert (=> b!5351802 (=> (not res!2270759) (not e!3322217))))

(declare-fun b!5351803 () Bool)

(declare-fun res!2270760 () Bool)

(declare-fun e!3322214 () Bool)

(assert (=> b!5351803 (=> (not res!2270760) (not e!3322214))))

(declare-fun call!382605 () Bool)

(assert (=> b!5351803 (= res!2270760 call!382605)))

(declare-fun e!3322218 () Bool)

(assert (=> b!5351803 (= e!3322218 e!3322214)))

(declare-fun bm!382599 () Bool)

(declare-fun c!931756 () Bool)

(assert (=> bm!382599 (= call!382605 (validRegex!6777 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))))))

(declare-fun b!5351804 () Bool)

(declare-fun res!2270761 () Bool)

(declare-fun e!3322215 () Bool)

(assert (=> b!5351804 (=> res!2270761 e!3322215)))

(assert (=> b!5351804 (= res!2270761 (not ((_ is Concat!23886) r!7292)))))

(assert (=> b!5351804 (= e!3322218 e!3322215)))

(declare-fun b!5351805 () Bool)

(declare-fun call!382606 () Bool)

(assert (=> b!5351805 (= e!3322217 call!382606)))

(declare-fun b!5351806 () Bool)

(declare-fun e!3322216 () Bool)

(assert (=> b!5351806 (= e!3322215 e!3322216)))

(declare-fun res!2270763 () Bool)

(assert (=> b!5351806 (=> (not res!2270763) (not e!3322216))))

(assert (=> b!5351806 (= res!2270763 call!382605)))

(declare-fun b!5351807 () Bool)

(assert (=> b!5351807 (= e!3322212 e!3322218)))

(assert (=> b!5351807 (= c!931756 ((_ is Union!15041) r!7292))))

(declare-fun bm!382600 () Bool)

(assert (=> bm!382600 (= call!382606 (validRegex!6777 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))))))

(declare-fun b!5351808 () Bool)

(declare-fun call!382604 () Bool)

(assert (=> b!5351808 (= e!3322214 call!382604)))

(declare-fun d!1715836 () Bool)

(declare-fun res!2270762 () Bool)

(assert (=> d!1715836 (=> res!2270762 e!3322213)))

(assert (=> d!1715836 (= res!2270762 ((_ is ElementMatch!15041) r!7292))))

(assert (=> d!1715836 (= (validRegex!6777 r!7292) e!3322213)))

(declare-fun bm!382601 () Bool)

(assert (=> bm!382601 (= call!382604 call!382606)))

(declare-fun b!5351809 () Bool)

(assert (=> b!5351809 (= e!3322216 call!382604)))

(assert (= (and d!1715836 (not res!2270762)) b!5351801))

(assert (= (and b!5351801 c!931757) b!5351802))

(assert (= (and b!5351801 (not c!931757)) b!5351807))

(assert (= (and b!5351802 res!2270759) b!5351805))

(assert (= (and b!5351807 c!931756) b!5351803))

(assert (= (and b!5351807 (not c!931756)) b!5351804))

(assert (= (and b!5351803 res!2270760) b!5351808))

(assert (= (and b!5351804 (not res!2270761)) b!5351806))

(assert (= (and b!5351806 res!2270763) b!5351809))

(assert (= (or b!5351808 b!5351809) bm!382601))

(assert (= (or b!5351803 b!5351806) bm!382599))

(assert (= (or b!5351805 bm!382601) bm!382600))

(declare-fun m!6382652 () Bool)

(assert (=> b!5351802 m!6382652))

(declare-fun m!6382654 () Bool)

(assert (=> bm!382599 m!6382654))

(declare-fun m!6382656 () Bool)

(assert (=> bm!382600 m!6382656))

(assert (=> start!563490 d!1715836))

(declare-fun d!1715838 () Bool)

(declare-fun e!3322229 () Bool)

(assert (=> d!1715838 e!3322229))

(declare-fun res!2270766 () Bool)

(assert (=> d!1715838 (=> (not res!2270766) (not e!3322229))))

(declare-fun lt!2181389 () List!61423)

(declare-fun noDuplicate!1334 (List!61423) Bool)

(assert (=> d!1715838 (= res!2270766 (noDuplicate!1334 lt!2181389))))

(declare-fun choose!40162 ((InoxSet Context!8850)) List!61423)

(assert (=> d!1715838 (= lt!2181389 (choose!40162 z!1189))))

(assert (=> d!1715838 (= (toList!8825 z!1189) lt!2181389)))

(declare-fun b!5351833 () Bool)

(declare-fun content!10938 (List!61423) (InoxSet Context!8850))

(assert (=> b!5351833 (= e!3322229 (= (content!10938 lt!2181389) z!1189))))

(assert (= (and d!1715838 res!2270766) b!5351833))

(declare-fun m!6382658 () Bool)

(assert (=> d!1715838 m!6382658))

(declare-fun m!6382660 () Bool)

(assert (=> d!1715838 m!6382660))

(declare-fun m!6382662 () Bool)

(assert (=> b!5351833 m!6382662))

(assert (=> b!5351228 d!1715838))

(declare-fun b!5351883 () Bool)

(declare-fun e!3322255 () Option!15152)

(assert (=> b!5351883 (= e!3322255 None!15151)))

(declare-fun b!5351884 () Bool)

(declare-fun e!3322258 () Bool)

(declare-fun lt!2181396 () Option!15152)

(assert (=> b!5351884 (= e!3322258 (not (isDefined!11855 lt!2181396)))))

(declare-fun d!1715840 () Bool)

(assert (=> d!1715840 e!3322258))

(declare-fun res!2270777 () Bool)

(assert (=> d!1715840 (=> res!2270777 e!3322258)))

(declare-fun e!3322256 () Bool)

(assert (=> d!1715840 (= res!2270777 e!3322256)))

(declare-fun res!2270778 () Bool)

(assert (=> d!1715840 (=> (not res!2270778) (not e!3322256))))

(assert (=> d!1715840 (= res!2270778 (isDefined!11855 lt!2181396))))

(declare-fun e!3322257 () Option!15152)

(assert (=> d!1715840 (= lt!2181396 e!3322257)))

(declare-fun c!931763 () Bool)

(declare-fun e!3322259 () Bool)

(assert (=> d!1715840 (= c!931763 e!3322259)))

(declare-fun res!2270781 () Bool)

(assert (=> d!1715840 (=> (not res!2270781) (not e!3322259))))

(assert (=> d!1715840 (= res!2270781 (matchR!7226 (regOne!30594 r!7292) Nil!61300))))

(assert (=> d!1715840 (validRegex!6777 (regOne!30594 r!7292))))

(assert (=> d!1715840 (= (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326) lt!2181396)))

(declare-fun b!5351885 () Bool)

(declare-fun lt!2181397 () Unit!153682)

(declare-fun lt!2181398 () Unit!153682)

(assert (=> b!5351885 (= lt!2181397 lt!2181398)))

(declare-fun ++!13360 (List!61424 List!61424) List!61424)

(assert (=> b!5351885 (= (++!13360 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (t!374641 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1775 (List!61424 C!30352 List!61424 List!61424) Unit!153682)

(assert (=> b!5351885 (= lt!2181398 (lemmaMoveElementToOtherListKeepsConcatEq!1775 Nil!61300 (h!67748 s!2326) (t!374641 s!2326) s!2326))))

(assert (=> b!5351885 (= e!3322255 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (t!374641 s!2326) s!2326))))

(declare-fun b!5351886 () Bool)

(assert (=> b!5351886 (= e!3322257 e!3322255)))

(declare-fun c!931762 () Bool)

(assert (=> b!5351886 (= c!931762 ((_ is Nil!61300) s!2326))))

(declare-fun b!5351887 () Bool)

(declare-fun res!2270780 () Bool)

(assert (=> b!5351887 (=> (not res!2270780) (not e!3322256))))

(declare-fun get!21086 (Option!15152) tuple2!64480)

(assert (=> b!5351887 (= res!2270780 (matchR!7226 (regOne!30594 r!7292) (_1!35543 (get!21086 lt!2181396))))))

(declare-fun b!5351888 () Bool)

(assert (=> b!5351888 (= e!3322256 (= (++!13360 (_1!35543 (get!21086 lt!2181396)) (_2!35543 (get!21086 lt!2181396))) s!2326))))

(declare-fun b!5351889 () Bool)

(assert (=> b!5351889 (= e!3322257 (Some!15151 (tuple2!64481 Nil!61300 s!2326)))))

(declare-fun b!5351890 () Bool)

(assert (=> b!5351890 (= e!3322259 (matchR!7226 (regTwo!30594 r!7292) s!2326))))

(declare-fun b!5351891 () Bool)

(declare-fun res!2270779 () Bool)

(assert (=> b!5351891 (=> (not res!2270779) (not e!3322256))))

(assert (=> b!5351891 (= res!2270779 (matchR!7226 (regTwo!30594 r!7292) (_2!35543 (get!21086 lt!2181396))))))

(assert (= (and d!1715840 res!2270781) b!5351890))

(assert (= (and d!1715840 c!931763) b!5351889))

(assert (= (and d!1715840 (not c!931763)) b!5351886))

(assert (= (and b!5351886 c!931762) b!5351883))

(assert (= (and b!5351886 (not c!931762)) b!5351885))

(assert (= (and d!1715840 res!2270778) b!5351887))

(assert (= (and b!5351887 res!2270780) b!5351891))

(assert (= (and b!5351891 res!2270779) b!5351888))

(assert (= (and d!1715840 (not res!2270777)) b!5351884))

(declare-fun m!6382668 () Bool)

(assert (=> b!5351890 m!6382668))

(declare-fun m!6382670 () Bool)

(assert (=> b!5351884 m!6382670))

(declare-fun m!6382672 () Bool)

(assert (=> b!5351887 m!6382672))

(declare-fun m!6382674 () Bool)

(assert (=> b!5351887 m!6382674))

(assert (=> d!1715840 m!6382670))

(declare-fun m!6382676 () Bool)

(assert (=> d!1715840 m!6382676))

(declare-fun m!6382678 () Bool)

(assert (=> d!1715840 m!6382678))

(assert (=> b!5351888 m!6382672))

(declare-fun m!6382680 () Bool)

(assert (=> b!5351888 m!6382680))

(assert (=> b!5351891 m!6382672))

(declare-fun m!6382682 () Bool)

(assert (=> b!5351891 m!6382682))

(declare-fun m!6382684 () Bool)

(assert (=> b!5351885 m!6382684))

(assert (=> b!5351885 m!6382684))

(declare-fun m!6382686 () Bool)

(assert (=> b!5351885 m!6382686))

(declare-fun m!6382688 () Bool)

(assert (=> b!5351885 m!6382688))

(assert (=> b!5351885 m!6382684))

(declare-fun m!6382690 () Bool)

(assert (=> b!5351885 m!6382690))

(assert (=> b!5351237 d!1715840))

(declare-fun bs!1240604 () Bool)

(declare-fun d!1715844 () Bool)

(assert (= bs!1240604 (and d!1715844 b!5351237)))

(declare-fun lambda!275159 () Int)

(assert (=> bs!1240604 (= lambda!275159 lambda!275107)))

(assert (=> bs!1240604 (not (= lambda!275159 lambda!275108))))

(declare-fun bs!1240605 () Bool)

(assert (= bs!1240605 (and d!1715844 b!5351541)))

(assert (=> bs!1240605 (not (= lambda!275159 lambda!275147))))

(declare-fun bs!1240606 () Bool)

(assert (= bs!1240606 (and d!1715844 b!5351536)))

(assert (=> bs!1240606 (not (= lambda!275159 lambda!275149))))

(assert (=> d!1715844 true))

(assert (=> d!1715844 true))

(assert (=> d!1715844 true))

(assert (=> d!1715844 (= (isDefined!11855 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326)) (Exists!2222 lambda!275159))))

(declare-fun lt!2181401 () Unit!153682)

(declare-fun choose!40163 (Regex!15041 Regex!15041 List!61424) Unit!153682)

(assert (=> d!1715844 (= lt!2181401 (choose!40163 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326))))

(assert (=> d!1715844 (validRegex!6777 (regOne!30594 r!7292))))

(assert (=> d!1715844 (= (lemmaFindConcatSeparationEquivalentToExists!1330 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326) lt!2181401)))

(declare-fun bs!1240607 () Bool)

(assert (= bs!1240607 d!1715844))

(assert (=> bs!1240607 m!6382278))

(declare-fun m!6382692 () Bool)

(assert (=> bs!1240607 m!6382692))

(assert (=> bs!1240607 m!6382278))

(assert (=> bs!1240607 m!6382280))

(assert (=> bs!1240607 m!6382678))

(declare-fun m!6382694 () Bool)

(assert (=> bs!1240607 m!6382694))

(assert (=> b!5351237 d!1715844))

(declare-fun bs!1240608 () Bool)

(declare-fun d!1715846 () Bool)

(assert (= bs!1240608 (and d!1715846 d!1715844)))

(declare-fun lambda!275164 () Int)

(assert (=> bs!1240608 (= lambda!275164 lambda!275159)))

(declare-fun bs!1240609 () Bool)

(assert (= bs!1240609 (and d!1715846 b!5351541)))

(assert (=> bs!1240609 (not (= lambda!275164 lambda!275147))))

(declare-fun bs!1240610 () Bool)

(assert (= bs!1240610 (and d!1715846 b!5351536)))

(assert (=> bs!1240610 (not (= lambda!275164 lambda!275149))))

(declare-fun bs!1240611 () Bool)

(assert (= bs!1240611 (and d!1715846 b!5351237)))

(assert (=> bs!1240611 (not (= lambda!275164 lambda!275108))))

(assert (=> bs!1240611 (= lambda!275164 lambda!275107)))

(assert (=> d!1715846 true))

(assert (=> d!1715846 true))

(assert (=> d!1715846 true))

(declare-fun lambda!275165 () Int)

(assert (=> bs!1240608 (not (= lambda!275165 lambda!275159))))

(assert (=> bs!1240609 (not (= lambda!275165 lambda!275147))))

(assert (=> bs!1240610 (= lambda!275165 lambda!275149)))

(assert (=> bs!1240611 (= lambda!275165 lambda!275108)))

(assert (=> bs!1240611 (not (= lambda!275165 lambda!275107))))

(declare-fun bs!1240612 () Bool)

(assert (= bs!1240612 d!1715846))

(assert (=> bs!1240612 (not (= lambda!275165 lambda!275164))))

(assert (=> d!1715846 true))

(assert (=> d!1715846 true))

(assert (=> d!1715846 true))

(assert (=> d!1715846 (= (Exists!2222 lambda!275164) (Exists!2222 lambda!275165))))

(declare-fun lt!2181404 () Unit!153682)

(declare-fun choose!40164 (Regex!15041 Regex!15041 List!61424) Unit!153682)

(assert (=> d!1715846 (= lt!2181404 (choose!40164 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326))))

(assert (=> d!1715846 (validRegex!6777 (regOne!30594 r!7292))))

(assert (=> d!1715846 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!876 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326) lt!2181404)))

(declare-fun m!6382696 () Bool)

(assert (=> bs!1240612 m!6382696))

(declare-fun m!6382698 () Bool)

(assert (=> bs!1240612 m!6382698))

(declare-fun m!6382700 () Bool)

(assert (=> bs!1240612 m!6382700))

(assert (=> bs!1240612 m!6382678))

(assert (=> b!5351237 d!1715846))

(declare-fun d!1715848 () Bool)

(declare-fun isEmpty!33280 (Option!15152) Bool)

(assert (=> d!1715848 (= (isDefined!11855 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326)) (not (isEmpty!33280 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326))))))

(declare-fun bs!1240613 () Bool)

(assert (= bs!1240613 d!1715848))

(assert (=> bs!1240613 m!6382278))

(declare-fun m!6382702 () Bool)

(assert (=> bs!1240613 m!6382702))

(assert (=> b!5351237 d!1715848))

(declare-fun d!1715850 () Bool)

(declare-fun choose!40165 (Int) Bool)

(assert (=> d!1715850 (= (Exists!2222 lambda!275107) (choose!40165 lambda!275107))))

(declare-fun bs!1240614 () Bool)

(assert (= bs!1240614 d!1715850))

(declare-fun m!6382704 () Bool)

(assert (=> bs!1240614 m!6382704))

(assert (=> b!5351237 d!1715850))

(declare-fun d!1715852 () Bool)

(assert (=> d!1715852 (= (Exists!2222 lambda!275108) (choose!40165 lambda!275108))))

(declare-fun bs!1240615 () Bool)

(assert (= bs!1240615 d!1715852))

(declare-fun m!6382706 () Bool)

(assert (=> bs!1240615 m!6382706))

(assert (=> b!5351237 d!1715852))

(declare-fun b!5351911 () Bool)

(declare-fun e!3322271 () Bool)

(declare-fun tp!1486524 () Bool)

(assert (=> b!5351911 (= e!3322271 tp!1486524)))

(declare-fun b!5351910 () Bool)

(declare-fun e!3322270 () Bool)

(declare-fun tp!1486525 () Bool)

(assert (=> b!5351910 (= e!3322270 (and (inv!80849 (h!67747 (t!374640 zl!343))) e!3322271 tp!1486525))))

(assert (=> b!5351227 (= tp!1486456 e!3322270)))

(assert (= b!5351910 b!5351911))

(assert (= (and b!5351227 ((_ is Cons!61299) (t!374640 zl!343))) b!5351910))

(declare-fun m!6382708 () Bool)

(assert (=> b!5351910 m!6382708))

(declare-fun e!3322274 () Bool)

(assert (=> b!5351235 (= tp!1486453 e!3322274)))

(declare-fun b!5351925 () Bool)

(declare-fun tp!1486538 () Bool)

(declare-fun tp!1486539 () Bool)

(assert (=> b!5351925 (= e!3322274 (and tp!1486538 tp!1486539))))

(declare-fun b!5351922 () Bool)

(assert (=> b!5351922 (= e!3322274 tp_is_empty!39335)))

(declare-fun b!5351923 () Bool)

(declare-fun tp!1486540 () Bool)

(declare-fun tp!1486536 () Bool)

(assert (=> b!5351923 (= e!3322274 (and tp!1486540 tp!1486536))))

(declare-fun b!5351924 () Bool)

(declare-fun tp!1486537 () Bool)

(assert (=> b!5351924 (= e!3322274 tp!1486537)))

(assert (= (and b!5351235 ((_ is ElementMatch!15041) (regOne!30594 r!7292))) b!5351922))

(assert (= (and b!5351235 ((_ is Concat!23886) (regOne!30594 r!7292))) b!5351923))

(assert (= (and b!5351235 ((_ is Star!15041) (regOne!30594 r!7292))) b!5351924))

(assert (= (and b!5351235 ((_ is Union!15041) (regOne!30594 r!7292))) b!5351925))

(declare-fun e!3322275 () Bool)

(assert (=> b!5351235 (= tp!1486458 e!3322275)))

(declare-fun b!5351929 () Bool)

(declare-fun tp!1486543 () Bool)

(declare-fun tp!1486544 () Bool)

(assert (=> b!5351929 (= e!3322275 (and tp!1486543 tp!1486544))))

(declare-fun b!5351926 () Bool)

(assert (=> b!5351926 (= e!3322275 tp_is_empty!39335)))

(declare-fun b!5351927 () Bool)

(declare-fun tp!1486545 () Bool)

(declare-fun tp!1486541 () Bool)

(assert (=> b!5351927 (= e!3322275 (and tp!1486545 tp!1486541))))

(declare-fun b!5351928 () Bool)

(declare-fun tp!1486542 () Bool)

(assert (=> b!5351928 (= e!3322275 tp!1486542)))

(assert (= (and b!5351235 ((_ is ElementMatch!15041) (regTwo!30594 r!7292))) b!5351926))

(assert (= (and b!5351235 ((_ is Concat!23886) (regTwo!30594 r!7292))) b!5351927))

(assert (= (and b!5351235 ((_ is Star!15041) (regTwo!30594 r!7292))) b!5351928))

(assert (= (and b!5351235 ((_ is Union!15041) (regTwo!30594 r!7292))) b!5351929))

(declare-fun b!5351934 () Bool)

(declare-fun e!3322278 () Bool)

(declare-fun tp!1486550 () Bool)

(declare-fun tp!1486551 () Bool)

(assert (=> b!5351934 (= e!3322278 (and tp!1486550 tp!1486551))))

(assert (=> b!5351231 (= tp!1486459 e!3322278)))

(assert (= (and b!5351231 ((_ is Cons!61298) (exprs!4925 setElem!34573))) b!5351934))

(declare-fun b!5351939 () Bool)

(declare-fun e!3322281 () Bool)

(declare-fun tp!1486554 () Bool)

(assert (=> b!5351939 (= e!3322281 (and tp_is_empty!39335 tp!1486554))))

(assert (=> b!5351226 (= tp!1486455 e!3322281)))

(assert (= (and b!5351226 ((_ is Cons!61300) (t!374641 s!2326))) b!5351939))

(declare-fun e!3322282 () Bool)

(assert (=> b!5351243 (= tp!1486454 e!3322282)))

(declare-fun b!5351943 () Bool)

(declare-fun tp!1486557 () Bool)

(declare-fun tp!1486558 () Bool)

(assert (=> b!5351943 (= e!3322282 (and tp!1486557 tp!1486558))))

(declare-fun b!5351940 () Bool)

(assert (=> b!5351940 (= e!3322282 tp_is_empty!39335)))

(declare-fun b!5351941 () Bool)

(declare-fun tp!1486559 () Bool)

(declare-fun tp!1486555 () Bool)

(assert (=> b!5351941 (= e!3322282 (and tp!1486559 tp!1486555))))

(declare-fun b!5351942 () Bool)

(declare-fun tp!1486556 () Bool)

(assert (=> b!5351942 (= e!3322282 tp!1486556)))

(assert (= (and b!5351243 ((_ is ElementMatch!15041) (regOne!30595 r!7292))) b!5351940))

(assert (= (and b!5351243 ((_ is Concat!23886) (regOne!30595 r!7292))) b!5351941))

(assert (= (and b!5351243 ((_ is Star!15041) (regOne!30595 r!7292))) b!5351942))

(assert (= (and b!5351243 ((_ is Union!15041) (regOne!30595 r!7292))) b!5351943))

(declare-fun e!3322283 () Bool)

(assert (=> b!5351243 (= tp!1486461 e!3322283)))

(declare-fun b!5351947 () Bool)

(declare-fun tp!1486562 () Bool)

(declare-fun tp!1486563 () Bool)

(assert (=> b!5351947 (= e!3322283 (and tp!1486562 tp!1486563))))

(declare-fun b!5351944 () Bool)

(assert (=> b!5351944 (= e!3322283 tp_is_empty!39335)))

(declare-fun b!5351945 () Bool)

(declare-fun tp!1486564 () Bool)

(declare-fun tp!1486560 () Bool)

(assert (=> b!5351945 (= e!3322283 (and tp!1486564 tp!1486560))))

(declare-fun b!5351946 () Bool)

(declare-fun tp!1486561 () Bool)

(assert (=> b!5351946 (= e!3322283 tp!1486561)))

(assert (= (and b!5351243 ((_ is ElementMatch!15041) (regTwo!30595 r!7292))) b!5351944))

(assert (= (and b!5351243 ((_ is Concat!23886) (regTwo!30595 r!7292))) b!5351945))

(assert (= (and b!5351243 ((_ is Star!15041) (regTwo!30595 r!7292))) b!5351946))

(assert (= (and b!5351243 ((_ is Union!15041) (regTwo!30595 r!7292))) b!5351947))

(declare-fun e!3322284 () Bool)

(assert (=> b!5351224 (= tp!1486452 e!3322284)))

(declare-fun b!5351951 () Bool)

(declare-fun tp!1486567 () Bool)

(declare-fun tp!1486568 () Bool)

(assert (=> b!5351951 (= e!3322284 (and tp!1486567 tp!1486568))))

(declare-fun b!5351948 () Bool)

(assert (=> b!5351948 (= e!3322284 tp_is_empty!39335)))

(declare-fun b!5351949 () Bool)

(declare-fun tp!1486569 () Bool)

(declare-fun tp!1486565 () Bool)

(assert (=> b!5351949 (= e!3322284 (and tp!1486569 tp!1486565))))

(declare-fun b!5351950 () Bool)

(declare-fun tp!1486566 () Bool)

(assert (=> b!5351950 (= e!3322284 tp!1486566)))

(assert (= (and b!5351224 ((_ is ElementMatch!15041) (reg!15370 r!7292))) b!5351948))

(assert (= (and b!5351224 ((_ is Concat!23886) (reg!15370 r!7292))) b!5351949))

(assert (= (and b!5351224 ((_ is Star!15041) (reg!15370 r!7292))) b!5351950))

(assert (= (and b!5351224 ((_ is Union!15041) (reg!15370 r!7292))) b!5351951))

(declare-fun condSetEmpty!34579 () Bool)

(assert (=> setNonEmpty!34573 (= condSetEmpty!34579 (= setRest!34573 ((as const (Array Context!8850 Bool)) false)))))

(declare-fun setRes!34579 () Bool)

(assert (=> setNonEmpty!34573 (= tp!1486460 setRes!34579)))

(declare-fun setIsEmpty!34579 () Bool)

(assert (=> setIsEmpty!34579 setRes!34579))

(declare-fun tp!1486574 () Bool)

(declare-fun e!3322287 () Bool)

(declare-fun setElem!34579 () Context!8850)

(declare-fun setNonEmpty!34579 () Bool)

(assert (=> setNonEmpty!34579 (= setRes!34579 (and tp!1486574 (inv!80849 setElem!34579) e!3322287))))

(declare-fun setRest!34579 () (InoxSet Context!8850))

(assert (=> setNonEmpty!34579 (= setRest!34573 ((_ map or) (store ((as const (Array Context!8850 Bool)) false) setElem!34579 true) setRest!34579))))

(declare-fun b!5351956 () Bool)

(declare-fun tp!1486575 () Bool)

(assert (=> b!5351956 (= e!3322287 tp!1486575)))

(assert (= (and setNonEmpty!34573 condSetEmpty!34579) setIsEmpty!34579))

(assert (= (and setNonEmpty!34573 (not condSetEmpty!34579)) setNonEmpty!34579))

(assert (= setNonEmpty!34579 b!5351956))

(declare-fun m!6382710 () Bool)

(assert (=> setNonEmpty!34579 m!6382710))

(declare-fun b!5351957 () Bool)

(declare-fun e!3322288 () Bool)

(declare-fun tp!1486576 () Bool)

(declare-fun tp!1486577 () Bool)

(assert (=> b!5351957 (= e!3322288 (and tp!1486576 tp!1486577))))

(assert (=> b!5351218 (= tp!1486457 e!3322288)))

(assert (= (and b!5351218 ((_ is Cons!61298) (exprs!4925 (h!67747 zl!343)))) b!5351957))

(declare-fun b_lambda!205331 () Bool)

(assert (= b_lambda!205325 (or b!5351238 b_lambda!205331)))

(declare-fun bs!1240616 () Bool)

(declare-fun d!1715854 () Bool)

(assert (= bs!1240616 (and d!1715854 b!5351238)))

(assert (=> bs!1240616 (= (dynLambda!24228 lambda!275109 (h!67747 zl!343)) (derivationStepZipperUp!413 (h!67747 zl!343) (h!67748 s!2326)))))

(assert (=> bs!1240616 m!6382260))

(assert (=> d!1715802 d!1715854))

(check-sat (not b!5351424) (not b!5351928) (not bm!382546) (not b!5351733) (not b!5351659) (not d!1715794) (not b!5351654) (not b!5351372) (not b!5351384) (not b!5351942) (not b!5351358) (not b!5351950) (not d!1715850) (not b!5351385) (not b!5351947) (not b!5351887) (not bm!382580) (not d!1715772) (not b!5351927) (not b!5351791) (not d!1715754) (not b!5351587) (not b!5351943) (not b!5351939) (not bm!382577) (not d!1715840) (not d!1715748) (not d!1715846) (not b!5351790) (not b!5351419) (not bm!382578) (not b!5351949) (not b!5351884) (not b!5351594) (not b!5351413) (not b!5351833) (not b!5351946) (not d!1715764) (not b!5351412) (not d!1715758) (not d!1715838) (not b!5351794) (not d!1715770) (not b!5351532) (not b!5351789) (not b!5351956) (not b!5351411) (not bm!382553) (not bm!382552) (not bm!382599) (not b!5351723) (not b!5351792) (not b!5351885) (not d!1715792) (not b!5351414) (not b!5351891) (not bm!382536) (not b!5351951) (not b!5351941) (not d!1715750) (not b!5351653) (not d!1715830) (not b_lambda!205331) (not b!5351374) (not b!5351888) (not b!5351732) (not b!5351934) (not bm!382529) (not setNonEmpty!34579) (not b!5351957) (not b!5351597) (not d!1715848) (not b!5351415) (not b!5351586) (not b!5351890) (not b!5351371) (not bm!382574) (not b!5351591) tp_is_empty!39335 (not b!5351418) (not d!1715802) (not bm!382537) (not b!5351453) (not d!1715788) (not b!5351802) (not d!1715826) (not b!5351596) (not b!5351373) (not d!1715752) (not d!1715756) (not b!5351910) (not b!5351925) (not b!5351924) (not bs!1240616) (not b!5351929) (not d!1715852) (not b!5351945) (not d!1715746) (not b!5351923) (not bm!382530) (not b!5351658) (not bm!382600) (not b!5351534) (not d!1715844) (not b!5351797) (not b!5351793) (not b!5351911))
(check-sat)
(get-model)

(declare-fun d!1715856 () Bool)

(assert (=> d!1715856 (= (isDefined!11855 lt!2181396) (not (isEmpty!33280 lt!2181396)))))

(declare-fun bs!1240617 () Bool)

(assert (= bs!1240617 d!1715856))

(declare-fun m!6382712 () Bool)

(assert (=> bs!1240617 m!6382712))

(assert (=> b!5351884 d!1715856))

(declare-fun d!1715858 () Bool)

(assert (=> d!1715858 (= (isEmpty!33277 s!2326) ((_ is Nil!61300) s!2326))))

(assert (=> bm!382546 d!1715858))

(declare-fun d!1715860 () Bool)

(declare-fun c!931764 () Bool)

(assert (=> d!1715860 (= c!931764 (isEmpty!33277 (tail!10574 (t!374641 s!2326))))))

(declare-fun e!3322289 () Bool)

(assert (=> d!1715860 (= (matchZipper!1285 (derivationStepZipper!1281 lt!2181309 (head!11477 (t!374641 s!2326))) (tail!10574 (t!374641 s!2326))) e!3322289)))

(declare-fun b!5351958 () Bool)

(assert (=> b!5351958 (= e!3322289 (nullableZipper!1379 (derivationStepZipper!1281 lt!2181309 (head!11477 (t!374641 s!2326)))))))

(declare-fun b!5351959 () Bool)

(assert (=> b!5351959 (= e!3322289 (matchZipper!1285 (derivationStepZipper!1281 (derivationStepZipper!1281 lt!2181309 (head!11477 (t!374641 s!2326))) (head!11477 (tail!10574 (t!374641 s!2326)))) (tail!10574 (tail!10574 (t!374641 s!2326)))))))

(assert (= (and d!1715860 c!931764) b!5351958))

(assert (= (and d!1715860 (not c!931764)) b!5351959))

(assert (=> d!1715860 m!6382392))

(declare-fun m!6382714 () Bool)

(assert (=> d!1715860 m!6382714))

(assert (=> b!5351958 m!6382404))

(declare-fun m!6382716 () Bool)

(assert (=> b!5351958 m!6382716))

(assert (=> b!5351959 m!6382392))

(declare-fun m!6382718 () Bool)

(assert (=> b!5351959 m!6382718))

(assert (=> b!5351959 m!6382404))

(assert (=> b!5351959 m!6382718))

(declare-fun m!6382720 () Bool)

(assert (=> b!5351959 m!6382720))

(assert (=> b!5351959 m!6382392))

(declare-fun m!6382722 () Bool)

(assert (=> b!5351959 m!6382722))

(assert (=> b!5351959 m!6382720))

(assert (=> b!5351959 m!6382722))

(declare-fun m!6382724 () Bool)

(assert (=> b!5351959 m!6382724))

(assert (=> b!5351385 d!1715860))

(declare-fun bs!1240618 () Bool)

(declare-fun d!1715862 () Bool)

(assert (= bs!1240618 (and d!1715862 b!5351238)))

(declare-fun lambda!275168 () Int)

(assert (=> bs!1240618 (= (= (head!11477 (t!374641 s!2326)) (h!67748 s!2326)) (= lambda!275168 lambda!275109))))

(assert (=> d!1715862 true))

(assert (=> d!1715862 (= (derivationStepZipper!1281 lt!2181309 (head!11477 (t!374641 s!2326))) (flatMap!768 lt!2181309 lambda!275168))))

(declare-fun bs!1240619 () Bool)

(assert (= bs!1240619 d!1715862))

(declare-fun m!6382726 () Bool)

(assert (=> bs!1240619 m!6382726))

(assert (=> b!5351385 d!1715862))

(declare-fun d!1715864 () Bool)

(assert (=> d!1715864 (= (head!11477 (t!374641 s!2326)) (h!67748 (t!374641 s!2326)))))

(assert (=> b!5351385 d!1715864))

(declare-fun d!1715866 () Bool)

(assert (=> d!1715866 (= (tail!10574 (t!374641 s!2326)) (t!374641 (t!374641 s!2326)))))

(assert (=> b!5351385 d!1715866))

(assert (=> d!1715788 d!1715858))

(assert (=> d!1715788 d!1715836))

(declare-fun d!1715868 () Bool)

(assert (=> d!1715868 (= (isEmpty!33277 (t!374641 s!2326)) ((_ is Nil!61300) (t!374641 s!2326)))))

(assert (=> d!1715754 d!1715868))

(declare-fun d!1715870 () Bool)

(assert (=> d!1715870 (= (isEmpty!33276 (tail!10575 (unfocusZipperList!483 zl!343))) ((_ is Nil!61298) (tail!10575 (unfocusZipperList!483 zl!343))))))

(assert (=> b!5351419 d!1715870))

(declare-fun d!1715872 () Bool)

(assert (=> d!1715872 (= (tail!10575 (unfocusZipperList!483 zl!343)) (t!374639 (unfocusZipperList!483 zl!343)))))

(assert (=> b!5351419 d!1715872))

(declare-fun b!5351962 () Bool)

(declare-fun e!3322292 () Bool)

(assert (=> b!5351962 (= e!3322292 (not (= (head!11477 s!2326) (c!931579 (regTwo!30594 r!7292)))))))

(declare-fun b!5351963 () Bool)

(declare-fun e!3322293 () Bool)

(assert (=> b!5351963 (= e!3322293 (= (head!11477 s!2326) (c!931579 (regTwo!30594 r!7292))))))

(declare-fun b!5351964 () Bool)

(declare-fun res!2270800 () Bool)

(declare-fun e!3322295 () Bool)

(assert (=> b!5351964 (=> res!2270800 e!3322295)))

(assert (=> b!5351964 (= res!2270800 (not ((_ is ElementMatch!15041) (regTwo!30594 r!7292))))))

(declare-fun e!3322294 () Bool)

(assert (=> b!5351964 (= e!3322294 e!3322295)))

(declare-fun b!5351965 () Bool)

(declare-fun e!3322290 () Bool)

(assert (=> b!5351965 (= e!3322290 e!3322294)))

(declare-fun c!931769 () Bool)

(assert (=> b!5351965 (= c!931769 ((_ is EmptyLang!15041) (regTwo!30594 r!7292)))))

(declare-fun b!5351966 () Bool)

(declare-fun e!3322296 () Bool)

(assert (=> b!5351966 (= e!3322295 e!3322296)))

(declare-fun res!2270795 () Bool)

(assert (=> b!5351966 (=> (not res!2270795) (not e!3322296))))

(declare-fun lt!2181405 () Bool)

(assert (=> b!5351966 (= res!2270795 (not lt!2181405))))

(declare-fun b!5351967 () Bool)

(declare-fun e!3322291 () Bool)

(assert (=> b!5351967 (= e!3322291 (matchR!7226 (derivativeStep!4200 (regTwo!30594 r!7292) (head!11477 s!2326)) (tail!10574 s!2326)))))

(declare-fun bm!382602 () Bool)

(declare-fun call!382607 () Bool)

(assert (=> bm!382602 (= call!382607 (isEmpty!33277 s!2326))))

(declare-fun b!5351968 () Bool)

(declare-fun res!2270799 () Bool)

(assert (=> b!5351968 (=> res!2270799 e!3322295)))

(assert (=> b!5351968 (= res!2270799 e!3322293)))

(declare-fun res!2270794 () Bool)

(assert (=> b!5351968 (=> (not res!2270794) (not e!3322293))))

(assert (=> b!5351968 (= res!2270794 lt!2181405)))

(declare-fun d!1715874 () Bool)

(assert (=> d!1715874 e!3322290))

(declare-fun c!931767 () Bool)

(assert (=> d!1715874 (= c!931767 ((_ is EmptyExpr!15041) (regTwo!30594 r!7292)))))

(assert (=> d!1715874 (= lt!2181405 e!3322291)))

(declare-fun c!931768 () Bool)

(assert (=> d!1715874 (= c!931768 (isEmpty!33277 s!2326))))

(assert (=> d!1715874 (validRegex!6777 (regTwo!30594 r!7292))))

(assert (=> d!1715874 (= (matchR!7226 (regTwo!30594 r!7292) s!2326) lt!2181405)))

(declare-fun b!5351969 () Bool)

(assert (=> b!5351969 (= e!3322296 e!3322292)))

(declare-fun res!2270797 () Bool)

(assert (=> b!5351969 (=> res!2270797 e!3322292)))

(assert (=> b!5351969 (= res!2270797 call!382607)))

(declare-fun b!5351970 () Bool)

(declare-fun res!2270798 () Bool)

(assert (=> b!5351970 (=> res!2270798 e!3322292)))

(assert (=> b!5351970 (= res!2270798 (not (isEmpty!33277 (tail!10574 s!2326))))))

(declare-fun b!5351971 () Bool)

(declare-fun res!2270796 () Bool)

(assert (=> b!5351971 (=> (not res!2270796) (not e!3322293))))

(assert (=> b!5351971 (= res!2270796 (not call!382607))))

(declare-fun b!5351972 () Bool)

(declare-fun res!2270801 () Bool)

(assert (=> b!5351972 (=> (not res!2270801) (not e!3322293))))

(assert (=> b!5351972 (= res!2270801 (isEmpty!33277 (tail!10574 s!2326)))))

(declare-fun b!5351973 () Bool)

(assert (=> b!5351973 (= e!3322291 (nullable!5210 (regTwo!30594 r!7292)))))

(declare-fun b!5351974 () Bool)

(assert (=> b!5351974 (= e!3322294 (not lt!2181405))))

(declare-fun b!5351975 () Bool)

(assert (=> b!5351975 (= e!3322290 (= lt!2181405 call!382607))))

(assert (= (and d!1715874 c!931768) b!5351973))

(assert (= (and d!1715874 (not c!931768)) b!5351967))

(assert (= (and d!1715874 c!931767) b!5351975))

(assert (= (and d!1715874 (not c!931767)) b!5351965))

(assert (= (and b!5351965 c!931769) b!5351974))

(assert (= (and b!5351965 (not c!931769)) b!5351964))

(assert (= (and b!5351964 (not res!2270800)) b!5351968))

(assert (= (and b!5351968 res!2270794) b!5351971))

(assert (= (and b!5351971 res!2270796) b!5351972))

(assert (= (and b!5351972 res!2270801) b!5351963))

(assert (= (and b!5351968 (not res!2270799)) b!5351966))

(assert (= (and b!5351966 res!2270795) b!5351969))

(assert (= (and b!5351969 (not res!2270797)) b!5351970))

(assert (= (and b!5351970 (not res!2270798)) b!5351962))

(assert (= (or b!5351975 b!5351969 b!5351971) bm!382602))

(declare-fun m!6382728 () Bool)

(assert (=> b!5351973 m!6382728))

(assert (=> bm!382602 m!6382504))

(assert (=> b!5351963 m!6382520))

(assert (=> b!5351972 m!6382522))

(assert (=> b!5351972 m!6382522))

(assert (=> b!5351972 m!6382524))

(assert (=> b!5351962 m!6382520))

(assert (=> b!5351967 m!6382520))

(assert (=> b!5351967 m!6382520))

(declare-fun m!6382730 () Bool)

(assert (=> b!5351967 m!6382730))

(assert (=> b!5351967 m!6382522))

(assert (=> b!5351967 m!6382730))

(assert (=> b!5351967 m!6382522))

(declare-fun m!6382732 () Bool)

(assert (=> b!5351967 m!6382732))

(assert (=> b!5351970 m!6382522))

(assert (=> b!5351970 m!6382522))

(assert (=> b!5351970 m!6382524))

(assert (=> d!1715874 m!6382504))

(declare-fun m!6382734 () Bool)

(assert (=> d!1715874 m!6382734))

(assert (=> b!5351890 d!1715874))

(assert (=> d!1715840 d!1715856))

(declare-fun b!5351976 () Bool)

(declare-fun e!3322299 () Bool)

(assert (=> b!5351976 (= e!3322299 (not (= (head!11477 Nil!61300) (c!931579 (regOne!30594 r!7292)))))))

(declare-fun b!5351977 () Bool)

(declare-fun e!3322300 () Bool)

(assert (=> b!5351977 (= e!3322300 (= (head!11477 Nil!61300) (c!931579 (regOne!30594 r!7292))))))

(declare-fun b!5351978 () Bool)

(declare-fun res!2270808 () Bool)

(declare-fun e!3322302 () Bool)

(assert (=> b!5351978 (=> res!2270808 e!3322302)))

(assert (=> b!5351978 (= res!2270808 (not ((_ is ElementMatch!15041) (regOne!30594 r!7292))))))

(declare-fun e!3322301 () Bool)

(assert (=> b!5351978 (= e!3322301 e!3322302)))

(declare-fun b!5351979 () Bool)

(declare-fun e!3322297 () Bool)

(assert (=> b!5351979 (= e!3322297 e!3322301)))

(declare-fun c!931772 () Bool)

(assert (=> b!5351979 (= c!931772 ((_ is EmptyLang!15041) (regOne!30594 r!7292)))))

(declare-fun b!5351980 () Bool)

(declare-fun e!3322303 () Bool)

(assert (=> b!5351980 (= e!3322302 e!3322303)))

(declare-fun res!2270803 () Bool)

(assert (=> b!5351980 (=> (not res!2270803) (not e!3322303))))

(declare-fun lt!2181406 () Bool)

(assert (=> b!5351980 (= res!2270803 (not lt!2181406))))

(declare-fun b!5351981 () Bool)

(declare-fun e!3322298 () Bool)

(assert (=> b!5351981 (= e!3322298 (matchR!7226 (derivativeStep!4200 (regOne!30594 r!7292) (head!11477 Nil!61300)) (tail!10574 Nil!61300)))))

(declare-fun bm!382603 () Bool)

(declare-fun call!382608 () Bool)

(assert (=> bm!382603 (= call!382608 (isEmpty!33277 Nil!61300))))

(declare-fun b!5351982 () Bool)

(declare-fun res!2270807 () Bool)

(assert (=> b!5351982 (=> res!2270807 e!3322302)))

(assert (=> b!5351982 (= res!2270807 e!3322300)))

(declare-fun res!2270802 () Bool)

(assert (=> b!5351982 (=> (not res!2270802) (not e!3322300))))

(assert (=> b!5351982 (= res!2270802 lt!2181406)))

(declare-fun d!1715876 () Bool)

(assert (=> d!1715876 e!3322297))

(declare-fun c!931770 () Bool)

(assert (=> d!1715876 (= c!931770 ((_ is EmptyExpr!15041) (regOne!30594 r!7292)))))

(assert (=> d!1715876 (= lt!2181406 e!3322298)))

(declare-fun c!931771 () Bool)

(assert (=> d!1715876 (= c!931771 (isEmpty!33277 Nil!61300))))

(assert (=> d!1715876 (validRegex!6777 (regOne!30594 r!7292))))

(assert (=> d!1715876 (= (matchR!7226 (regOne!30594 r!7292) Nil!61300) lt!2181406)))

(declare-fun b!5351983 () Bool)

(assert (=> b!5351983 (= e!3322303 e!3322299)))

(declare-fun res!2270805 () Bool)

(assert (=> b!5351983 (=> res!2270805 e!3322299)))

(assert (=> b!5351983 (= res!2270805 call!382608)))

(declare-fun b!5351984 () Bool)

(declare-fun res!2270806 () Bool)

(assert (=> b!5351984 (=> res!2270806 e!3322299)))

(assert (=> b!5351984 (= res!2270806 (not (isEmpty!33277 (tail!10574 Nil!61300))))))

(declare-fun b!5351985 () Bool)

(declare-fun res!2270804 () Bool)

(assert (=> b!5351985 (=> (not res!2270804) (not e!3322300))))

(assert (=> b!5351985 (= res!2270804 (not call!382608))))

(declare-fun b!5351986 () Bool)

(declare-fun res!2270809 () Bool)

(assert (=> b!5351986 (=> (not res!2270809) (not e!3322300))))

(assert (=> b!5351986 (= res!2270809 (isEmpty!33277 (tail!10574 Nil!61300)))))

(declare-fun b!5351987 () Bool)

(assert (=> b!5351987 (= e!3322298 (nullable!5210 (regOne!30594 r!7292)))))

(declare-fun b!5351988 () Bool)

(assert (=> b!5351988 (= e!3322301 (not lt!2181406))))

(declare-fun b!5351989 () Bool)

(assert (=> b!5351989 (= e!3322297 (= lt!2181406 call!382608))))

(assert (= (and d!1715876 c!931771) b!5351987))

(assert (= (and d!1715876 (not c!931771)) b!5351981))

(assert (= (and d!1715876 c!931770) b!5351989))

(assert (= (and d!1715876 (not c!931770)) b!5351979))

(assert (= (and b!5351979 c!931772) b!5351988))

(assert (= (and b!5351979 (not c!931772)) b!5351978))

(assert (= (and b!5351978 (not res!2270808)) b!5351982))

(assert (= (and b!5351982 res!2270802) b!5351985))

(assert (= (and b!5351985 res!2270804) b!5351986))

(assert (= (and b!5351986 res!2270809) b!5351977))

(assert (= (and b!5351982 (not res!2270807)) b!5351980))

(assert (= (and b!5351980 res!2270803) b!5351983))

(assert (= (and b!5351983 (not res!2270805)) b!5351984))

(assert (= (and b!5351984 (not res!2270806)) b!5351976))

(assert (= (or b!5351989 b!5351983 b!5351985) bm!382603))

(declare-fun m!6382736 () Bool)

(assert (=> b!5351987 m!6382736))

(declare-fun m!6382738 () Bool)

(assert (=> bm!382603 m!6382738))

(declare-fun m!6382740 () Bool)

(assert (=> b!5351977 m!6382740))

(declare-fun m!6382742 () Bool)

(assert (=> b!5351986 m!6382742))

(assert (=> b!5351986 m!6382742))

(declare-fun m!6382744 () Bool)

(assert (=> b!5351986 m!6382744))

(assert (=> b!5351976 m!6382740))

(assert (=> b!5351981 m!6382740))

(assert (=> b!5351981 m!6382740))

(declare-fun m!6382746 () Bool)

(assert (=> b!5351981 m!6382746))

(assert (=> b!5351981 m!6382742))

(assert (=> b!5351981 m!6382746))

(assert (=> b!5351981 m!6382742))

(declare-fun m!6382748 () Bool)

(assert (=> b!5351981 m!6382748))

(assert (=> b!5351984 m!6382742))

(assert (=> b!5351984 m!6382742))

(assert (=> b!5351984 m!6382744))

(assert (=> d!1715876 m!6382738))

(assert (=> d!1715876 m!6382678))

(assert (=> d!1715840 d!1715876))

(declare-fun b!5351990 () Bool)

(declare-fun e!3322305 () Bool)

(declare-fun e!3322304 () Bool)

(assert (=> b!5351990 (= e!3322305 e!3322304)))

(declare-fun c!931774 () Bool)

(assert (=> b!5351990 (= c!931774 ((_ is Star!15041) (regOne!30594 r!7292)))))

(declare-fun b!5351991 () Bool)

(declare-fun e!3322309 () Bool)

(assert (=> b!5351991 (= e!3322304 e!3322309)))

(declare-fun res!2270810 () Bool)

(assert (=> b!5351991 (= res!2270810 (not (nullable!5210 (reg!15370 (regOne!30594 r!7292)))))))

(assert (=> b!5351991 (=> (not res!2270810) (not e!3322309))))

(declare-fun b!5351992 () Bool)

(declare-fun res!2270811 () Bool)

(declare-fun e!3322306 () Bool)

(assert (=> b!5351992 (=> (not res!2270811) (not e!3322306))))

(declare-fun call!382610 () Bool)

(assert (=> b!5351992 (= res!2270811 call!382610)))

(declare-fun e!3322310 () Bool)

(assert (=> b!5351992 (= e!3322310 e!3322306)))

(declare-fun bm!382604 () Bool)

(declare-fun c!931773 () Bool)

(assert (=> bm!382604 (= call!382610 (validRegex!6777 (ite c!931773 (regOne!30595 (regOne!30594 r!7292)) (regOne!30594 (regOne!30594 r!7292)))))))

(declare-fun b!5351993 () Bool)

(declare-fun res!2270812 () Bool)

(declare-fun e!3322307 () Bool)

(assert (=> b!5351993 (=> res!2270812 e!3322307)))

(assert (=> b!5351993 (= res!2270812 (not ((_ is Concat!23886) (regOne!30594 r!7292))))))

(assert (=> b!5351993 (= e!3322310 e!3322307)))

(declare-fun b!5351994 () Bool)

(declare-fun call!382611 () Bool)

(assert (=> b!5351994 (= e!3322309 call!382611)))

(declare-fun b!5351995 () Bool)

(declare-fun e!3322308 () Bool)

(assert (=> b!5351995 (= e!3322307 e!3322308)))

(declare-fun res!2270814 () Bool)

(assert (=> b!5351995 (=> (not res!2270814) (not e!3322308))))

(assert (=> b!5351995 (= res!2270814 call!382610)))

(declare-fun b!5351996 () Bool)

(assert (=> b!5351996 (= e!3322304 e!3322310)))

(assert (=> b!5351996 (= c!931773 ((_ is Union!15041) (regOne!30594 r!7292)))))

(declare-fun bm!382605 () Bool)

(assert (=> bm!382605 (= call!382611 (validRegex!6777 (ite c!931774 (reg!15370 (regOne!30594 r!7292)) (ite c!931773 (regTwo!30595 (regOne!30594 r!7292)) (regTwo!30594 (regOne!30594 r!7292))))))))

(declare-fun b!5351997 () Bool)

(declare-fun call!382609 () Bool)

(assert (=> b!5351997 (= e!3322306 call!382609)))

(declare-fun d!1715878 () Bool)

(declare-fun res!2270813 () Bool)

(assert (=> d!1715878 (=> res!2270813 e!3322305)))

(assert (=> d!1715878 (= res!2270813 ((_ is ElementMatch!15041) (regOne!30594 r!7292)))))

(assert (=> d!1715878 (= (validRegex!6777 (regOne!30594 r!7292)) e!3322305)))

(declare-fun bm!382606 () Bool)

(assert (=> bm!382606 (= call!382609 call!382611)))

(declare-fun b!5351998 () Bool)

(assert (=> b!5351998 (= e!3322308 call!382609)))

(assert (= (and d!1715878 (not res!2270813)) b!5351990))

(assert (= (and b!5351990 c!931774) b!5351991))

(assert (= (and b!5351990 (not c!931774)) b!5351996))

(assert (= (and b!5351991 res!2270810) b!5351994))

(assert (= (and b!5351996 c!931773) b!5351992))

(assert (= (and b!5351996 (not c!931773)) b!5351993))

(assert (= (and b!5351992 res!2270811) b!5351997))

(assert (= (and b!5351993 (not res!2270812)) b!5351995))

(assert (= (and b!5351995 res!2270814) b!5351998))

(assert (= (or b!5351997 b!5351998) bm!382606))

(assert (= (or b!5351992 b!5351995) bm!382604))

(assert (= (or b!5351994 bm!382606) bm!382605))

(declare-fun m!6382750 () Bool)

(assert (=> b!5351991 m!6382750))

(declare-fun m!6382752 () Bool)

(assert (=> bm!382604 m!6382752))

(declare-fun m!6382754 () Bool)

(assert (=> bm!382605 m!6382754))

(assert (=> d!1715840 d!1715878))

(declare-fun b!5352008 () Bool)

(declare-fun e!3322316 () List!61424)

(assert (=> b!5352008 (= e!3322316 (Cons!61300 (h!67748 (_1!35543 (get!21086 lt!2181396))) (++!13360 (t!374641 (_1!35543 (get!21086 lt!2181396))) (_2!35543 (get!21086 lt!2181396)))))))

(declare-fun b!5352007 () Bool)

(assert (=> b!5352007 (= e!3322316 (_2!35543 (get!21086 lt!2181396)))))

(declare-fun b!5352010 () Bool)

(declare-fun e!3322315 () Bool)

(declare-fun lt!2181409 () List!61424)

(assert (=> b!5352010 (= e!3322315 (or (not (= (_2!35543 (get!21086 lt!2181396)) Nil!61300)) (= lt!2181409 (_1!35543 (get!21086 lt!2181396)))))))

(declare-fun b!5352009 () Bool)

(declare-fun res!2270820 () Bool)

(assert (=> b!5352009 (=> (not res!2270820) (not e!3322315))))

(declare-fun size!39774 (List!61424) Int)

(assert (=> b!5352009 (= res!2270820 (= (size!39774 lt!2181409) (+ (size!39774 (_1!35543 (get!21086 lt!2181396))) (size!39774 (_2!35543 (get!21086 lt!2181396))))))))

(declare-fun d!1715880 () Bool)

(assert (=> d!1715880 e!3322315))

(declare-fun res!2270819 () Bool)

(assert (=> d!1715880 (=> (not res!2270819) (not e!3322315))))

(declare-fun content!10939 (List!61424) (InoxSet C!30352))

(assert (=> d!1715880 (= res!2270819 (= (content!10939 lt!2181409) ((_ map or) (content!10939 (_1!35543 (get!21086 lt!2181396))) (content!10939 (_2!35543 (get!21086 lt!2181396))))))))

(assert (=> d!1715880 (= lt!2181409 e!3322316)))

(declare-fun c!931777 () Bool)

(assert (=> d!1715880 (= c!931777 ((_ is Nil!61300) (_1!35543 (get!21086 lt!2181396))))))

(assert (=> d!1715880 (= (++!13360 (_1!35543 (get!21086 lt!2181396)) (_2!35543 (get!21086 lt!2181396))) lt!2181409)))

(assert (= (and d!1715880 c!931777) b!5352007))

(assert (= (and d!1715880 (not c!931777)) b!5352008))

(assert (= (and d!1715880 res!2270819) b!5352009))

(assert (= (and b!5352009 res!2270820) b!5352010))

(declare-fun m!6382756 () Bool)

(assert (=> b!5352008 m!6382756))

(declare-fun m!6382758 () Bool)

(assert (=> b!5352009 m!6382758))

(declare-fun m!6382760 () Bool)

(assert (=> b!5352009 m!6382760))

(declare-fun m!6382762 () Bool)

(assert (=> b!5352009 m!6382762))

(declare-fun m!6382764 () Bool)

(assert (=> d!1715880 m!6382764))

(declare-fun m!6382766 () Bool)

(assert (=> d!1715880 m!6382766))

(declare-fun m!6382768 () Bool)

(assert (=> d!1715880 m!6382768))

(assert (=> b!5351888 d!1715880))

(declare-fun d!1715882 () Bool)

(assert (=> d!1715882 (= (get!21086 lt!2181396) (v!51180 lt!2181396))))

(assert (=> b!5351888 d!1715882))

(assert (=> d!1715752 d!1715868))

(declare-fun b!5352011 () Bool)

(declare-fun e!3322318 () Bool)

(declare-fun e!3322317 () Bool)

(assert (=> b!5352011 (= e!3322318 e!3322317)))

(declare-fun c!931779 () Bool)

(assert (=> b!5352011 (= c!931779 ((_ is Star!15041) (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))))))

(declare-fun b!5352012 () Bool)

(declare-fun e!3322322 () Bool)

(assert (=> b!5352012 (= e!3322317 e!3322322)))

(declare-fun res!2270821 () Bool)

(assert (=> b!5352012 (= res!2270821 (not (nullable!5210 (reg!15370 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))))))))

(assert (=> b!5352012 (=> (not res!2270821) (not e!3322322))))

(declare-fun b!5352013 () Bool)

(declare-fun res!2270822 () Bool)

(declare-fun e!3322319 () Bool)

(assert (=> b!5352013 (=> (not res!2270822) (not e!3322319))))

(declare-fun call!382613 () Bool)

(assert (=> b!5352013 (= res!2270822 call!382613)))

(declare-fun e!3322323 () Bool)

(assert (=> b!5352013 (= e!3322323 e!3322319)))

(declare-fun bm!382607 () Bool)

(declare-fun c!931778 () Bool)

(assert (=> bm!382607 (= call!382613 (validRegex!6777 (ite c!931778 (regOne!30595 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))) (regOne!30594 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))))))))

(declare-fun b!5352014 () Bool)

(declare-fun res!2270823 () Bool)

(declare-fun e!3322320 () Bool)

(assert (=> b!5352014 (=> res!2270823 e!3322320)))

(assert (=> b!5352014 (= res!2270823 (not ((_ is Concat!23886) (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292))))))))))

(assert (=> b!5352014 (= e!3322323 e!3322320)))

(declare-fun b!5352015 () Bool)

(declare-fun call!382614 () Bool)

(assert (=> b!5352015 (= e!3322322 call!382614)))

(declare-fun b!5352016 () Bool)

(declare-fun e!3322321 () Bool)

(assert (=> b!5352016 (= e!3322320 e!3322321)))

(declare-fun res!2270825 () Bool)

(assert (=> b!5352016 (=> (not res!2270825) (not e!3322321))))

(assert (=> b!5352016 (= res!2270825 call!382613)))

(declare-fun b!5352017 () Bool)

(assert (=> b!5352017 (= e!3322317 e!3322323)))

(assert (=> b!5352017 (= c!931778 ((_ is Union!15041) (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))))))

(declare-fun bm!382608 () Bool)

(assert (=> bm!382608 (= call!382614 (validRegex!6777 (ite c!931779 (reg!15370 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))) (ite c!931778 (regTwo!30595 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))) (regTwo!30594 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292))))))))))))

(declare-fun b!5352018 () Bool)

(declare-fun call!382612 () Bool)

(assert (=> b!5352018 (= e!3322319 call!382612)))

(declare-fun d!1715884 () Bool)

(declare-fun res!2270824 () Bool)

(assert (=> d!1715884 (=> res!2270824 e!3322318)))

(assert (=> d!1715884 (= res!2270824 ((_ is ElementMatch!15041) (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))))))

(assert (=> d!1715884 (= (validRegex!6777 (ite c!931644 (reg!15370 (reg!15370 (regOne!30594 r!7292))) (ite c!931643 (regTwo!30595 (reg!15370 (regOne!30594 r!7292))) (regTwo!30594 (reg!15370 (regOne!30594 r!7292)))))) e!3322318)))

(declare-fun bm!382609 () Bool)

(assert (=> bm!382609 (= call!382612 call!382614)))

(declare-fun b!5352019 () Bool)

(assert (=> b!5352019 (= e!3322321 call!382612)))

(assert (= (and d!1715884 (not res!2270824)) b!5352011))

(assert (= (and b!5352011 c!931779) b!5352012))

(assert (= (and b!5352011 (not c!931779)) b!5352017))

(assert (= (and b!5352012 res!2270821) b!5352015))

(assert (= (and b!5352017 c!931778) b!5352013))

(assert (= (and b!5352017 (not c!931778)) b!5352014))

(assert (= (and b!5352013 res!2270822) b!5352018))

(assert (= (and b!5352014 (not res!2270823)) b!5352016))

(assert (= (and b!5352016 res!2270825) b!5352019))

(assert (= (or b!5352018 b!5352019) bm!382609))

(assert (= (or b!5352013 b!5352016) bm!382607))

(assert (= (or b!5352015 bm!382609) bm!382608))

(declare-fun m!6382770 () Bool)

(assert (=> b!5352012 m!6382770))

(declare-fun m!6382772 () Bool)

(assert (=> bm!382607 m!6382772))

(declare-fun m!6382774 () Bool)

(assert (=> bm!382608 m!6382774))

(assert (=> bm!382530 d!1715884))

(declare-fun d!1715886 () Bool)

(assert (=> d!1715886 (= (isUnion!355 lt!2181352) ((_ is Union!15041) lt!2181352))))

(assert (=> b!5351411 d!1715886))

(declare-fun b!5352020 () Bool)

(declare-fun e!3322327 () (InoxSet Context!8850))

(declare-fun call!382616 () (InoxSet Context!8850))

(assert (=> b!5352020 (= e!3322327 call!382616)))

(declare-fun b!5352021 () Bool)

(declare-fun c!931784 () Bool)

(declare-fun e!3322325 () Bool)

(assert (=> b!5352021 (= c!931784 e!3322325)))

(declare-fun res!2270826 () Bool)

(assert (=> b!5352021 (=> (not res!2270826) (not e!3322325))))

(assert (=> b!5352021 (= res!2270826 ((_ is Concat!23886) (h!67746 (exprs!4925 lt!2181316))))))

(declare-fun e!3322326 () (InoxSet Context!8850))

(declare-fun e!3322328 () (InoxSet Context!8850))

(assert (=> b!5352021 (= e!3322326 e!3322328)))

(declare-fun call!382615 () List!61422)

(declare-fun c!931781 () Bool)

(declare-fun c!931780 () Bool)

(declare-fun call!382617 () (InoxSet Context!8850))

(declare-fun bm!382610 () Bool)

(assert (=> bm!382610 (= call!382617 (derivationStepZipperDown!489 (ite c!931780 (regOne!30595 (h!67746 (exprs!4925 lt!2181316))) (ite c!931784 (regTwo!30594 (h!67746 (exprs!4925 lt!2181316))) (ite c!931781 (regOne!30594 (h!67746 (exprs!4925 lt!2181316))) (reg!15370 (h!67746 (exprs!4925 lt!2181316)))))) (ite (or c!931780 c!931784) (Context!8851 (t!374639 (exprs!4925 lt!2181316))) (Context!8851 call!382615)) (h!67748 s!2326)))))

(declare-fun b!5352022 () Bool)

(declare-fun e!3322324 () (InoxSet Context!8850))

(assert (=> b!5352022 (= e!3322324 e!3322326)))

(assert (=> b!5352022 (= c!931780 ((_ is Union!15041) (h!67746 (exprs!4925 lt!2181316))))))

(declare-fun b!5352023 () Bool)

(assert (=> b!5352023 (= e!3322325 (nullable!5210 (regOne!30594 (h!67746 (exprs!4925 lt!2181316)))))))

(declare-fun bm!382611 () Bool)

(declare-fun call!382620 () (InoxSet Context!8850))

(assert (=> bm!382611 (= call!382620 call!382617)))

(declare-fun bm!382612 () Bool)

(assert (=> bm!382612 (= call!382616 call!382620)))

(declare-fun bm!382613 () Bool)

(declare-fun call!382618 () List!61422)

(declare-fun call!382619 () (InoxSet Context!8850))

(assert (=> bm!382613 (= call!382619 (derivationStepZipperDown!489 (ite c!931780 (regTwo!30595 (h!67746 (exprs!4925 lt!2181316))) (regOne!30594 (h!67746 (exprs!4925 lt!2181316)))) (ite c!931780 (Context!8851 (t!374639 (exprs!4925 lt!2181316))) (Context!8851 call!382618)) (h!67748 s!2326)))))

(declare-fun b!5352025 () Bool)

(assert (=> b!5352025 (= e!3322326 ((_ map or) call!382617 call!382619))))

(declare-fun b!5352026 () Bool)

(assert (=> b!5352026 (= e!3322328 ((_ map or) call!382619 call!382620))))

(declare-fun bm!382614 () Bool)

(assert (=> bm!382614 (= call!382618 ($colon$colon!1429 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316)))) (ite (or c!931784 c!931781) (regTwo!30594 (h!67746 (exprs!4925 lt!2181316))) (h!67746 (exprs!4925 lt!2181316)))))))

(declare-fun bm!382615 () Bool)

(assert (=> bm!382615 (= call!382615 call!382618)))

(declare-fun b!5352027 () Bool)

(declare-fun e!3322329 () (InoxSet Context!8850))

(assert (=> b!5352027 (= e!3322329 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352028 () Bool)

(declare-fun c!931782 () Bool)

(assert (=> b!5352028 (= c!931782 ((_ is Star!15041) (h!67746 (exprs!4925 lt!2181316))))))

(assert (=> b!5352028 (= e!3322327 e!3322329)))

(declare-fun b!5352029 () Bool)

(assert (=> b!5352029 (= e!3322328 e!3322327)))

(assert (=> b!5352029 (= c!931781 ((_ is Concat!23886) (h!67746 (exprs!4925 lt!2181316))))))

(declare-fun b!5352030 () Bool)

(assert (=> b!5352030 (= e!3322329 call!382616)))

(declare-fun b!5352024 () Bool)

(assert (=> b!5352024 (= e!3322324 (store ((as const (Array Context!8850 Bool)) false) (Context!8851 (t!374639 (exprs!4925 lt!2181316))) true))))

(declare-fun d!1715888 () Bool)

(declare-fun c!931783 () Bool)

(assert (=> d!1715888 (= c!931783 (and ((_ is ElementMatch!15041) (h!67746 (exprs!4925 lt!2181316))) (= (c!931579 (h!67746 (exprs!4925 lt!2181316))) (h!67748 s!2326))))))

(assert (=> d!1715888 (= (derivationStepZipperDown!489 (h!67746 (exprs!4925 lt!2181316)) (Context!8851 (t!374639 (exprs!4925 lt!2181316))) (h!67748 s!2326)) e!3322324)))

(assert (= (and d!1715888 c!931783) b!5352024))

(assert (= (and d!1715888 (not c!931783)) b!5352022))

(assert (= (and b!5352022 c!931780) b!5352025))

(assert (= (and b!5352022 (not c!931780)) b!5352021))

(assert (= (and b!5352021 res!2270826) b!5352023))

(assert (= (and b!5352021 c!931784) b!5352026))

(assert (= (and b!5352021 (not c!931784)) b!5352029))

(assert (= (and b!5352029 c!931781) b!5352020))

(assert (= (and b!5352029 (not c!931781)) b!5352028))

(assert (= (and b!5352028 c!931782) b!5352030))

(assert (= (and b!5352028 (not c!931782)) b!5352027))

(assert (= (or b!5352020 b!5352030) bm!382615))

(assert (= (or b!5352020 b!5352030) bm!382612))

(assert (= (or b!5352026 bm!382615) bm!382614))

(assert (= (or b!5352026 bm!382612) bm!382611))

(assert (= (or b!5352025 b!5352026) bm!382613))

(assert (= (or b!5352025 bm!382611) bm!382610))

(declare-fun m!6382776 () Bool)

(assert (=> bm!382610 m!6382776))

(declare-fun m!6382778 () Bool)

(assert (=> bm!382613 m!6382778))

(declare-fun m!6382780 () Bool)

(assert (=> b!5352024 m!6382780))

(declare-fun m!6382782 () Bool)

(assert (=> b!5352023 m!6382782))

(declare-fun m!6382784 () Bool)

(assert (=> bm!382614 m!6382784))

(assert (=> bm!382553 d!1715888))

(declare-fun b!5352031 () Bool)

(declare-fun e!3322333 () (InoxSet Context!8850))

(declare-fun call!382622 () (InoxSet Context!8850))

(assert (=> b!5352031 (= e!3322333 call!382622)))

(declare-fun b!5352032 () Bool)

(declare-fun c!931789 () Bool)

(declare-fun e!3322331 () Bool)

(assert (=> b!5352032 (= c!931789 e!3322331)))

(declare-fun res!2270827 () Bool)

(assert (=> b!5352032 (=> (not res!2270827) (not e!3322331))))

(assert (=> b!5352032 (= res!2270827 ((_ is Concat!23886) (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun e!3322332 () (InoxSet Context!8850))

(declare-fun e!3322334 () (InoxSet Context!8850))

(assert (=> b!5352032 (= e!3322332 e!3322334)))

(declare-fun call!382621 () List!61422)

(declare-fun c!931786 () Bool)

(declare-fun call!382623 () (InoxSet Context!8850))

(declare-fun bm!382616 () Bool)

(declare-fun c!931785 () Bool)

(assert (=> bm!382616 (= call!382623 (derivationStepZipperDown!489 (ite c!931785 (regOne!30595 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (ite c!931789 (regTwo!30594 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (ite c!931786 (regOne!30594 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (reg!15370 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))) (ite (or c!931785 c!931789) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (Context!8851 call!382621)) (h!67748 s!2326)))))

(declare-fun b!5352033 () Bool)

(declare-fun e!3322330 () (InoxSet Context!8850))

(assert (=> b!5352033 (= e!3322330 e!3322332)))

(assert (=> b!5352033 (= c!931785 ((_ is Union!15041) (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun b!5352034 () Bool)

(assert (=> b!5352034 (= e!3322331 (nullable!5210 (regOne!30594 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))))

(declare-fun bm!382617 () Bool)

(declare-fun call!382626 () (InoxSet Context!8850))

(assert (=> bm!382617 (= call!382626 call!382623)))

(declare-fun bm!382618 () Bool)

(assert (=> bm!382618 (= call!382622 call!382626)))

(declare-fun call!382625 () (InoxSet Context!8850))

(declare-fun bm!382619 () Bool)

(declare-fun call!382624 () List!61422)

(assert (=> bm!382619 (= call!382625 (derivationStepZipperDown!489 (ite c!931785 (regTwo!30595 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (regOne!30594 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))) (ite c!931785 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (Context!8851 call!382624)) (h!67748 s!2326)))))

(declare-fun b!5352036 () Bool)

(assert (=> b!5352036 (= e!3322332 ((_ map or) call!382623 call!382625))))

(declare-fun b!5352037 () Bool)

(assert (=> b!5352037 (= e!3322334 ((_ map or) call!382625 call!382626))))

(declare-fun bm!382620 () Bool)

(assert (=> bm!382620 (= call!382624 ($colon$colon!1429 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))) (ite (or c!931789 c!931786) (regTwo!30594 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))))

(declare-fun bm!382621 () Bool)

(assert (=> bm!382621 (= call!382621 call!382624)))

(declare-fun b!5352038 () Bool)

(declare-fun e!3322335 () (InoxSet Context!8850))

(assert (=> b!5352038 (= e!3322335 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352039 () Bool)

(declare-fun c!931787 () Bool)

(assert (=> b!5352039 (= c!931787 ((_ is Star!15041) (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))

(assert (=> b!5352039 (= e!3322333 e!3322335)))

(declare-fun b!5352040 () Bool)

(assert (=> b!5352040 (= e!3322334 e!3322333)))

(assert (=> b!5352040 (= c!931786 ((_ is Concat!23886) (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun b!5352041 () Bool)

(assert (=> b!5352041 (= e!3322335 call!382622)))

(declare-fun b!5352035 () Bool)

(assert (=> b!5352035 (= e!3322330 (store ((as const (Array Context!8850 Bool)) false) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) true))))

(declare-fun d!1715890 () Bool)

(declare-fun c!931788 () Bool)

(assert (=> d!1715890 (= c!931788 (and ((_ is ElementMatch!15041) (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (= (c!931579 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (h!67748 s!2326))))))

(assert (=> d!1715890 (= (derivationStepZipperDown!489 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (h!67748 s!2326)) e!3322330)))

(assert (= (and d!1715890 c!931788) b!5352035))

(assert (= (and d!1715890 (not c!931788)) b!5352033))

(assert (= (and b!5352033 c!931785) b!5352036))

(assert (= (and b!5352033 (not c!931785)) b!5352032))

(assert (= (and b!5352032 res!2270827) b!5352034))

(assert (= (and b!5352032 c!931789) b!5352037))

(assert (= (and b!5352032 (not c!931789)) b!5352040))

(assert (= (and b!5352040 c!931786) b!5352031))

(assert (= (and b!5352040 (not c!931786)) b!5352039))

(assert (= (and b!5352039 c!931787) b!5352041))

(assert (= (and b!5352039 (not c!931787)) b!5352038))

(assert (= (or b!5352031 b!5352041) bm!382621))

(assert (= (or b!5352031 b!5352041) bm!382618))

(assert (= (or b!5352037 bm!382621) bm!382620))

(assert (= (or b!5352037 bm!382618) bm!382617))

(assert (= (or b!5352036 b!5352037) bm!382619))

(assert (= (or b!5352036 bm!382617) bm!382616))

(declare-fun m!6382786 () Bool)

(assert (=> bm!382616 m!6382786))

(declare-fun m!6382788 () Bool)

(assert (=> bm!382619 m!6382788))

(declare-fun m!6382790 () Bool)

(assert (=> b!5352035 m!6382790))

(declare-fun m!6382792 () Bool)

(assert (=> b!5352034 m!6382792))

(declare-fun m!6382794 () Bool)

(assert (=> bm!382620 m!6382794))

(assert (=> bm!382552 d!1715890))

(declare-fun d!1715892 () Bool)

(declare-fun c!931790 () Bool)

(declare-fun e!3322337 () Bool)

(assert (=> d!1715892 (= c!931790 e!3322337)))

(declare-fun res!2270828 () Bool)

(assert (=> d!1715892 (=> (not res!2270828) (not e!3322337))))

(assert (=> d!1715892 (= res!2270828 ((_ is Cons!61298) (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316))))))))

(declare-fun e!3322336 () (InoxSet Context!8850))

(assert (=> d!1715892 (= (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 lt!2181316))) (h!67748 s!2326)) e!3322336)))

(declare-fun b!5352042 () Bool)

(declare-fun e!3322338 () (InoxSet Context!8850))

(declare-fun call!382627 () (InoxSet Context!8850))

(assert (=> b!5352042 (= e!3322338 call!382627)))

(declare-fun bm!382622 () Bool)

(assert (=> bm!382622 (= call!382627 (derivationStepZipperDown!489 (h!67746 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316))))) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316)))))) (h!67748 s!2326)))))

(declare-fun b!5352043 () Bool)

(assert (=> b!5352043 (= e!3322337 (nullable!5210 (h!67746 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316)))))))))

(declare-fun b!5352044 () Bool)

(assert (=> b!5352044 (= e!3322336 ((_ map or) call!382627 (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316)))))) (h!67748 s!2326))))))

(declare-fun b!5352045 () Bool)

(assert (=> b!5352045 (= e!3322338 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352046 () Bool)

(assert (=> b!5352046 (= e!3322336 e!3322338)))

(declare-fun c!931791 () Bool)

(assert (=> b!5352046 (= c!931791 ((_ is Cons!61298) (exprs!4925 (Context!8851 (t!374639 (exprs!4925 lt!2181316))))))))

(assert (= (and d!1715892 res!2270828) b!5352043))

(assert (= (and d!1715892 c!931790) b!5352044))

(assert (= (and d!1715892 (not c!931790)) b!5352046))

(assert (= (and b!5352046 c!931791) b!5352042))

(assert (= (and b!5352046 (not c!931791)) b!5352045))

(assert (= (or b!5352044 b!5352042) bm!382622))

(declare-fun m!6382796 () Bool)

(assert (=> bm!382622 m!6382796))

(declare-fun m!6382798 () Bool)

(assert (=> b!5352043 m!6382798))

(declare-fun m!6382800 () Bool)

(assert (=> b!5352044 m!6382800))

(assert (=> b!5351659 d!1715892))

(declare-fun d!1715894 () Bool)

(declare-fun c!931792 () Bool)

(declare-fun e!3322340 () Bool)

(assert (=> d!1715894 (= c!931792 e!3322340)))

(declare-fun res!2270829 () Bool)

(assert (=> d!1715894 (=> (not res!2270829) (not e!3322340))))

(assert (=> d!1715894 (= res!2270829 ((_ is Cons!61298) (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))))

(declare-fun e!3322339 () (InoxSet Context!8850))

(assert (=> d!1715894 (= (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (h!67748 s!2326)) e!3322339)))

(declare-fun b!5352047 () Bool)

(declare-fun e!3322341 () (InoxSet Context!8850))

(declare-fun call!382628 () (InoxSet Context!8850))

(assert (=> b!5352047 (= e!3322341 call!382628)))

(declare-fun bm!382623 () Bool)

(assert (=> bm!382623 (= call!382628 (derivationStepZipperDown!489 (h!67746 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))) (h!67748 s!2326)))))

(declare-fun b!5352048 () Bool)

(assert (=> b!5352048 (= e!3322340 (nullable!5210 (h!67746 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))))))

(declare-fun b!5352049 () Bool)

(assert (=> b!5352049 (= e!3322339 ((_ map or) call!382628 (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))))))) (h!67748 s!2326))))))

(declare-fun b!5352050 () Bool)

(assert (=> b!5352050 (= e!3322341 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352051 () Bool)

(assert (=> b!5352051 (= e!3322339 e!3322341)))

(declare-fun c!931793 () Bool)

(assert (=> b!5352051 (= c!931793 ((_ is Cons!61298) (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))))

(assert (= (and d!1715894 res!2270829) b!5352048))

(assert (= (and d!1715894 c!931792) b!5352049))

(assert (= (and d!1715894 (not c!931792)) b!5352051))

(assert (= (and b!5352051 c!931793) b!5352047))

(assert (= (and b!5352051 (not c!931793)) b!5352050))

(assert (= (or b!5352049 b!5352047) bm!382623))

(declare-fun m!6382802 () Bool)

(assert (=> bm!382623 m!6382802))

(declare-fun m!6382804 () Bool)

(assert (=> b!5352048 m!6382804))

(declare-fun m!6382806 () Bool)

(assert (=> b!5352049 m!6382806))

(assert (=> b!5351654 d!1715894))

(assert (=> b!5351732 d!1715794))

(declare-fun d!1715896 () Bool)

(assert (=> d!1715896 (= (head!11478 (exprs!4925 (h!67747 zl!343))) (h!67746 (exprs!4925 (h!67747 zl!343))))))

(assert (=> b!5351794 d!1715896))

(declare-fun b!5352052 () Bool)

(declare-fun e!3322343 () Bool)

(declare-fun e!3322342 () Bool)

(assert (=> b!5352052 (= e!3322343 e!3322342)))

(declare-fun c!931795 () Bool)

(assert (=> b!5352052 (= c!931795 ((_ is Star!15041) (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))))))

(declare-fun b!5352053 () Bool)

(declare-fun e!3322347 () Bool)

(assert (=> b!5352053 (= e!3322342 e!3322347)))

(declare-fun res!2270830 () Bool)

(assert (=> b!5352053 (= res!2270830 (not (nullable!5210 (reg!15370 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))))))))

(assert (=> b!5352053 (=> (not res!2270830) (not e!3322347))))

(declare-fun b!5352054 () Bool)

(declare-fun res!2270831 () Bool)

(declare-fun e!3322344 () Bool)

(assert (=> b!5352054 (=> (not res!2270831) (not e!3322344))))

(declare-fun call!382630 () Bool)

(assert (=> b!5352054 (= res!2270831 call!382630)))

(declare-fun e!3322348 () Bool)

(assert (=> b!5352054 (= e!3322348 e!3322344)))

(declare-fun c!931794 () Bool)

(declare-fun bm!382624 () Bool)

(assert (=> bm!382624 (= call!382630 (validRegex!6777 (ite c!931794 (regOne!30595 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))) (regOne!30594 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))))))))

(declare-fun b!5352055 () Bool)

(declare-fun res!2270832 () Bool)

(declare-fun e!3322345 () Bool)

(assert (=> b!5352055 (=> res!2270832 e!3322345)))

(assert (=> b!5352055 (= res!2270832 (not ((_ is Concat!23886) (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292))))))))

(assert (=> b!5352055 (= e!3322348 e!3322345)))

(declare-fun b!5352056 () Bool)

(declare-fun call!382631 () Bool)

(assert (=> b!5352056 (= e!3322347 call!382631)))

(declare-fun b!5352057 () Bool)

(declare-fun e!3322346 () Bool)

(assert (=> b!5352057 (= e!3322345 e!3322346)))

(declare-fun res!2270834 () Bool)

(assert (=> b!5352057 (=> (not res!2270834) (not e!3322346))))

(assert (=> b!5352057 (= res!2270834 call!382630)))

(declare-fun b!5352058 () Bool)

(assert (=> b!5352058 (= e!3322342 e!3322348)))

(assert (=> b!5352058 (= c!931794 ((_ is Union!15041) (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))))))

(declare-fun bm!382625 () Bool)

(assert (=> bm!382625 (= call!382631 (validRegex!6777 (ite c!931795 (reg!15370 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))) (ite c!931794 (regTwo!30595 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))) (regTwo!30594 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292))))))))))

(declare-fun b!5352059 () Bool)

(declare-fun call!382629 () Bool)

(assert (=> b!5352059 (= e!3322344 call!382629)))

(declare-fun d!1715898 () Bool)

(declare-fun res!2270833 () Bool)

(assert (=> d!1715898 (=> res!2270833 e!3322343)))

(assert (=> d!1715898 (= res!2270833 ((_ is ElementMatch!15041) (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))))))

(assert (=> d!1715898 (= (validRegex!6777 (ite c!931757 (reg!15370 r!7292) (ite c!931756 (regTwo!30595 r!7292) (regTwo!30594 r!7292)))) e!3322343)))

(declare-fun bm!382626 () Bool)

(assert (=> bm!382626 (= call!382629 call!382631)))

(declare-fun b!5352060 () Bool)

(assert (=> b!5352060 (= e!3322346 call!382629)))

(assert (= (and d!1715898 (not res!2270833)) b!5352052))

(assert (= (and b!5352052 c!931795) b!5352053))

(assert (= (and b!5352052 (not c!931795)) b!5352058))

(assert (= (and b!5352053 res!2270830) b!5352056))

(assert (= (and b!5352058 c!931794) b!5352054))

(assert (= (and b!5352058 (not c!931794)) b!5352055))

(assert (= (and b!5352054 res!2270831) b!5352059))

(assert (= (and b!5352055 (not res!2270832)) b!5352057))

(assert (= (and b!5352057 res!2270834) b!5352060))

(assert (= (or b!5352059 b!5352060) bm!382626))

(assert (= (or b!5352054 b!5352057) bm!382624))

(assert (= (or b!5352056 bm!382626) bm!382625))

(declare-fun m!6382808 () Bool)

(assert (=> b!5352053 m!6382808))

(declare-fun m!6382810 () Bool)

(assert (=> bm!382624 m!6382810))

(declare-fun m!6382812 () Bool)

(assert (=> bm!382625 m!6382812))

(assert (=> bm!382600 d!1715898))

(declare-fun d!1715900 () Bool)

(assert (=> d!1715900 (= (nullable!5210 r!7292) (nullableFct!1531 r!7292))))

(declare-fun bs!1240620 () Bool)

(assert (= bs!1240620 d!1715900))

(declare-fun m!6382814 () Bool)

(assert (=> bs!1240620 m!6382814))

(assert (=> b!5351597 d!1715900))

(declare-fun d!1715902 () Bool)

(assert (=> d!1715902 (= (isEmpty!33276 (tail!10575 (exprs!4925 (h!67747 zl!343)))) ((_ is Nil!61298) (tail!10575 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> b!5351790 d!1715902))

(declare-fun d!1715904 () Bool)

(assert (=> d!1715904 (= (tail!10575 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343))))))

(assert (=> b!5351790 d!1715904))

(declare-fun d!1715906 () Bool)

(declare-fun c!931796 () Bool)

(assert (=> d!1715906 (= c!931796 (isEmpty!33277 (tail!10574 (t!374641 s!2326))))))

(declare-fun e!3322349 () Bool)

(assert (=> d!1715906 (= (matchZipper!1285 (derivationStepZipper!1281 ((_ map or) lt!2181320 lt!2181309) (head!11477 (t!374641 s!2326))) (tail!10574 (t!374641 s!2326))) e!3322349)))

(declare-fun b!5352061 () Bool)

(assert (=> b!5352061 (= e!3322349 (nullableZipper!1379 (derivationStepZipper!1281 ((_ map or) lt!2181320 lt!2181309) (head!11477 (t!374641 s!2326)))))))

(declare-fun b!5352062 () Bool)

(assert (=> b!5352062 (= e!3322349 (matchZipper!1285 (derivationStepZipper!1281 (derivationStepZipper!1281 ((_ map or) lt!2181320 lt!2181309) (head!11477 (t!374641 s!2326))) (head!11477 (tail!10574 (t!374641 s!2326)))) (tail!10574 (tail!10574 (t!374641 s!2326)))))))

(assert (= (and d!1715906 c!931796) b!5352061))

(assert (= (and d!1715906 (not c!931796)) b!5352062))

(assert (=> d!1715906 m!6382392))

(assert (=> d!1715906 m!6382714))

(assert (=> b!5352061 m!6382398))

(declare-fun m!6382816 () Bool)

(assert (=> b!5352061 m!6382816))

(assert (=> b!5352062 m!6382392))

(assert (=> b!5352062 m!6382718))

(assert (=> b!5352062 m!6382398))

(assert (=> b!5352062 m!6382718))

(declare-fun m!6382818 () Bool)

(assert (=> b!5352062 m!6382818))

(assert (=> b!5352062 m!6382392))

(assert (=> b!5352062 m!6382722))

(assert (=> b!5352062 m!6382818))

(assert (=> b!5352062 m!6382722))

(declare-fun m!6382820 () Bool)

(assert (=> b!5352062 m!6382820))

(assert (=> b!5351374 d!1715906))

(declare-fun bs!1240621 () Bool)

(declare-fun d!1715908 () Bool)

(assert (= bs!1240621 (and d!1715908 b!5351238)))

(declare-fun lambda!275169 () Int)

(assert (=> bs!1240621 (= (= (head!11477 (t!374641 s!2326)) (h!67748 s!2326)) (= lambda!275169 lambda!275109))))

(declare-fun bs!1240622 () Bool)

(assert (= bs!1240622 (and d!1715908 d!1715862)))

(assert (=> bs!1240622 (= lambda!275169 lambda!275168)))

(assert (=> d!1715908 true))

(assert (=> d!1715908 (= (derivationStepZipper!1281 ((_ map or) lt!2181320 lt!2181309) (head!11477 (t!374641 s!2326))) (flatMap!768 ((_ map or) lt!2181320 lt!2181309) lambda!275169))))

(declare-fun bs!1240623 () Bool)

(assert (= bs!1240623 d!1715908))

(declare-fun m!6382822 () Bool)

(assert (=> bs!1240623 m!6382822))

(assert (=> b!5351374 d!1715908))

(assert (=> b!5351374 d!1715864))

(assert (=> b!5351374 d!1715866))

(declare-fun d!1715912 () Bool)

(declare-fun lambda!275172 () Int)

(declare-fun exists!2016 ((InoxSet Context!8850) Int) Bool)

(assert (=> d!1715912 (= (nullableZipper!1379 lt!2181320) (exists!2016 lt!2181320 lambda!275172))))

(declare-fun bs!1240624 () Bool)

(assert (= bs!1240624 d!1715912))

(declare-fun m!6382836 () Bool)

(assert (=> bs!1240624 m!6382836))

(assert (=> b!5351371 d!1715912))

(declare-fun d!1715916 () Bool)

(assert (=> d!1715916 (= (isEmptyExpr!915 lt!2181386) ((_ is EmptyExpr!15041) lt!2181386))))

(assert (=> b!5351792 d!1715916))

(declare-fun d!1715918 () Bool)

(declare-fun res!2270839 () Bool)

(declare-fun e!3322355 () Bool)

(assert (=> d!1715918 (=> res!2270839 e!3322355)))

(assert (=> d!1715918 (= res!2270839 ((_ is Nil!61298) (exprs!4925 setElem!34573)))))

(assert (=> d!1715918 (= (forall!14467 (exprs!4925 setElem!34573) lambda!275125) e!3322355)))

(declare-fun b!5352069 () Bool)

(declare-fun e!3322356 () Bool)

(assert (=> b!5352069 (= e!3322355 e!3322356)))

(declare-fun res!2270840 () Bool)

(assert (=> b!5352069 (=> (not res!2270840) (not e!3322356))))

(declare-fun dynLambda!24230 (Int Regex!15041) Bool)

(assert (=> b!5352069 (= res!2270840 (dynLambda!24230 lambda!275125 (h!67746 (exprs!4925 setElem!34573))))))

(declare-fun b!5352070 () Bool)

(assert (=> b!5352070 (= e!3322356 (forall!14467 (t!374639 (exprs!4925 setElem!34573)) lambda!275125))))

(assert (= (and d!1715918 (not res!2270839)) b!5352069))

(assert (= (and b!5352069 res!2270840) b!5352070))

(declare-fun b_lambda!205333 () Bool)

(assert (=> (not b_lambda!205333) (not b!5352069)))

(declare-fun m!6382838 () Bool)

(assert (=> b!5352069 m!6382838))

(declare-fun m!6382840 () Bool)

(assert (=> b!5352070 m!6382840))

(assert (=> d!1715756 d!1715918))

(declare-fun d!1715920 () Bool)

(assert (=> d!1715920 (= (nullable!5210 (reg!15370 (reg!15370 (regOne!30594 r!7292)))) (nullableFct!1531 (reg!15370 (reg!15370 (regOne!30594 r!7292)))))))

(declare-fun bs!1240625 () Bool)

(assert (= bs!1240625 d!1715920))

(declare-fun m!6382842 () Bool)

(assert (=> bs!1240625 m!6382842))

(assert (=> b!5351453 d!1715920))

(declare-fun d!1715922 () Bool)

(assert (=> d!1715922 (= (head!11477 s!2326) (h!67748 s!2326))))

(assert (=> b!5351587 d!1715922))

(assert (=> bm!382536 d!1715858))

(declare-fun d!1715924 () Bool)

(assert (=> d!1715924 true))

(declare-fun setRes!34582 () Bool)

(assert (=> d!1715924 setRes!34582))

(declare-fun condSetEmpty!34582 () Bool)

(declare-fun res!2270843 () (InoxSet Context!8850))

(assert (=> d!1715924 (= condSetEmpty!34582 (= res!2270843 ((as const (Array Context!8850 Bool)) false)))))

(assert (=> d!1715924 (= (choose!40160 z!1189 lambda!275109) res!2270843)))

(declare-fun setIsEmpty!34582 () Bool)

(assert (=> setIsEmpty!34582 setRes!34582))

(declare-fun e!3322359 () Bool)

(declare-fun tp!1486583 () Bool)

(declare-fun setNonEmpty!34582 () Bool)

(declare-fun setElem!34582 () Context!8850)

(assert (=> setNonEmpty!34582 (= setRes!34582 (and tp!1486583 (inv!80849 setElem!34582) e!3322359))))

(declare-fun setRest!34582 () (InoxSet Context!8850))

(assert (=> setNonEmpty!34582 (= res!2270843 ((_ map or) (store ((as const (Array Context!8850 Bool)) false) setElem!34582 true) setRest!34582))))

(declare-fun b!5352075 () Bool)

(declare-fun tp!1486582 () Bool)

(assert (=> b!5352075 (= e!3322359 tp!1486582)))

(assert (= (and d!1715924 condSetEmpty!34582) setIsEmpty!34582))

(assert (= (and d!1715924 (not condSetEmpty!34582)) setNonEmpty!34582))

(assert (= setNonEmpty!34582 b!5352075))

(declare-fun m!6382846 () Bool)

(assert (=> setNonEmpty!34582 m!6382846))

(assert (=> d!1715826 d!1715924))

(declare-fun d!1715932 () Bool)

(assert (=> d!1715932 (= (head!11478 (unfocusZipperList!483 zl!343)) (h!67746 (unfocusZipperList!483 zl!343)))))

(assert (=> b!5351414 d!1715932))

(declare-fun b!5352087 () Bool)

(declare-fun e!3322370 () (InoxSet Context!8850))

(declare-fun call!382635 () (InoxSet Context!8850))

(assert (=> b!5352087 (= e!3322370 call!382635)))

(declare-fun b!5352088 () Bool)

(declare-fun c!931810 () Bool)

(declare-fun e!3322368 () Bool)

(assert (=> b!5352088 (= c!931810 e!3322368)))

(declare-fun res!2270847 () Bool)

(assert (=> b!5352088 (=> (not res!2270847) (not e!3322368))))

(assert (=> b!5352088 (= res!2270847 ((_ is Concat!23886) (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun e!3322369 () (InoxSet Context!8850))

(declare-fun e!3322371 () (InoxSet Context!8850))

(assert (=> b!5352088 (= e!3322369 e!3322371)))

(declare-fun bm!382629 () Bool)

(declare-fun call!382636 () (InoxSet Context!8850))

(declare-fun call!382634 () List!61422)

(declare-fun c!931807 () Bool)

(declare-fun c!931806 () Bool)

(assert (=> bm!382629 (= call!382636 (derivationStepZipperDown!489 (ite c!931806 (regOne!30595 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (ite c!931810 (regTwo!30594 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (ite c!931807 (regOne!30594 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (reg!15370 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))))) (ite (or c!931806 c!931810) (ite c!931722 lt!2181316 (Context!8851 call!382582)) (Context!8851 call!382634)) (h!67748 s!2326)))))

(declare-fun b!5352089 () Bool)

(declare-fun e!3322367 () (InoxSet Context!8850))

(assert (=> b!5352089 (= e!3322367 e!3322369)))

(assert (=> b!5352089 (= c!931806 ((_ is Union!15041) (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun b!5352090 () Bool)

(assert (=> b!5352090 (= e!3322368 (nullable!5210 (regOne!30594 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))))))

(declare-fun bm!382630 () Bool)

(declare-fun call!382639 () (InoxSet Context!8850))

(assert (=> bm!382630 (= call!382639 call!382636)))

(declare-fun bm!382631 () Bool)

(assert (=> bm!382631 (= call!382635 call!382639)))

(declare-fun bm!382632 () Bool)

(declare-fun call!382637 () List!61422)

(declare-fun call!382638 () (InoxSet Context!8850))

(assert (=> bm!382632 (= call!382638 (derivationStepZipperDown!489 (ite c!931806 (regTwo!30595 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (regOne!30594 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))) (ite c!931806 (ite c!931722 lt!2181316 (Context!8851 call!382582)) (Context!8851 call!382637)) (h!67748 s!2326)))))

(declare-fun b!5352092 () Bool)

(assert (=> b!5352092 (= e!3322369 ((_ map or) call!382636 call!382638))))

(declare-fun b!5352093 () Bool)

(assert (=> b!5352093 (= e!3322371 ((_ map or) call!382638 call!382639))))

(declare-fun bm!382633 () Bool)

(assert (=> bm!382633 (= call!382637 ($colon$colon!1429 (exprs!4925 (ite c!931722 lt!2181316 (Context!8851 call!382582))) (ite (or c!931810 c!931807) (regTwo!30594 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))))))

(declare-fun bm!382634 () Bool)

(assert (=> bm!382634 (= call!382634 call!382637)))

(declare-fun b!5352094 () Bool)

(declare-fun e!3322372 () (InoxSet Context!8850))

(assert (=> b!5352094 (= e!3322372 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352095 () Bool)

(declare-fun c!931808 () Bool)

(assert (=> b!5352095 (= c!931808 ((_ is Star!15041) (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(assert (=> b!5352095 (= e!3322370 e!3322372)))

(declare-fun b!5352096 () Bool)

(assert (=> b!5352096 (= e!3322371 e!3322370)))

(assert (=> b!5352096 (= c!931807 ((_ is Concat!23886) (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun b!5352097 () Bool)

(assert (=> b!5352097 (= e!3322372 call!382635)))

(declare-fun b!5352091 () Bool)

(assert (=> b!5352091 (= e!3322367 (store ((as const (Array Context!8850 Bool)) false) (ite c!931722 lt!2181316 (Context!8851 call!382582)) true))))

(declare-fun c!931809 () Bool)

(declare-fun d!1715936 () Bool)

(assert (=> d!1715936 (= c!931809 (and ((_ is ElementMatch!15041) (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (= (c!931579 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))) (h!67748 s!2326))))))

(assert (=> d!1715936 (= (derivationStepZipperDown!489 (ite c!931722 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))) (ite c!931722 lt!2181316 (Context!8851 call!382582)) (h!67748 s!2326)) e!3322367)))

(assert (= (and d!1715936 c!931809) b!5352091))

(assert (= (and d!1715936 (not c!931809)) b!5352089))

(assert (= (and b!5352089 c!931806) b!5352092))

(assert (= (and b!5352089 (not c!931806)) b!5352088))

(assert (= (and b!5352088 res!2270847) b!5352090))

(assert (= (and b!5352088 c!931810) b!5352093))

(assert (= (and b!5352088 (not c!931810)) b!5352096))

(assert (= (and b!5352096 c!931807) b!5352087))

(assert (= (and b!5352096 (not c!931807)) b!5352095))

(assert (= (and b!5352095 c!931808) b!5352097))

(assert (= (and b!5352095 (not c!931808)) b!5352094))

(assert (= (or b!5352087 b!5352097) bm!382634))

(assert (= (or b!5352087 b!5352097) bm!382631))

(assert (= (or b!5352093 bm!382634) bm!382633))

(assert (= (or b!5352093 bm!382631) bm!382630))

(assert (= (or b!5352092 b!5352093) bm!382632))

(assert (= (or b!5352092 bm!382630) bm!382629))

(declare-fun m!6382850 () Bool)

(assert (=> bm!382629 m!6382850))

(declare-fun m!6382852 () Bool)

(assert (=> bm!382632 m!6382852))

(declare-fun m!6382854 () Bool)

(assert (=> b!5352091 m!6382854))

(declare-fun m!6382856 () Bool)

(assert (=> b!5352090 m!6382856))

(declare-fun m!6382858 () Bool)

(assert (=> bm!382633 m!6382858))

(assert (=> bm!382577 d!1715936))

(declare-fun bs!1240629 () Bool)

(declare-fun d!1715938 () Bool)

(assert (= bs!1240629 (and d!1715938 d!1715764)))

(declare-fun lambda!275177 () Int)

(assert (=> bs!1240629 (= lambda!275177 lambda!275134)))

(declare-fun bs!1240631 () Bool)

(assert (= bs!1240631 (and d!1715938 d!1715746)))

(assert (=> bs!1240631 (= lambda!275177 lambda!275124)))

(declare-fun bs!1240632 () Bool)

(assert (= bs!1240632 (and d!1715938 d!1715756)))

(assert (=> bs!1240632 (= lambda!275177 lambda!275125)))

(declare-fun bs!1240633 () Bool)

(assert (= bs!1240633 (and d!1715938 d!1715758)))

(assert (=> bs!1240633 (= lambda!275177 lambda!275130)))

(declare-fun bs!1240634 () Bool)

(assert (= bs!1240634 (and d!1715938 d!1715830)))

(assert (=> bs!1240634 (= lambda!275177 lambda!275155)))

(assert (=> d!1715938 (= (inv!80849 (h!67747 (t!374640 zl!343))) (forall!14467 (exprs!4925 (h!67747 (t!374640 zl!343))) lambda!275177))))

(declare-fun bs!1240636 () Bool)

(assert (= bs!1240636 d!1715938))

(declare-fun m!6382860 () Bool)

(assert (=> bs!1240636 m!6382860))

(assert (=> b!5351910 d!1715938))

(declare-fun b!5352098 () Bool)

(declare-fun e!3322375 () Bool)

(assert (=> b!5352098 (= e!3322375 (not (= (head!11477 (tail!10574 s!2326)) (c!931579 (derivativeStep!4200 r!7292 (head!11477 s!2326))))))))

(declare-fun b!5352099 () Bool)

(declare-fun e!3322376 () Bool)

(assert (=> b!5352099 (= e!3322376 (= (head!11477 (tail!10574 s!2326)) (c!931579 (derivativeStep!4200 r!7292 (head!11477 s!2326)))))))

(declare-fun b!5352100 () Bool)

(declare-fun res!2270854 () Bool)

(declare-fun e!3322378 () Bool)

(assert (=> b!5352100 (=> res!2270854 e!3322378)))

(assert (=> b!5352100 (= res!2270854 (not ((_ is ElementMatch!15041) (derivativeStep!4200 r!7292 (head!11477 s!2326)))))))

(declare-fun e!3322377 () Bool)

(assert (=> b!5352100 (= e!3322377 e!3322378)))

(declare-fun b!5352101 () Bool)

(declare-fun e!3322373 () Bool)

(assert (=> b!5352101 (= e!3322373 e!3322377)))

(declare-fun c!931813 () Bool)

(assert (=> b!5352101 (= c!931813 ((_ is EmptyLang!15041) (derivativeStep!4200 r!7292 (head!11477 s!2326))))))

(declare-fun b!5352102 () Bool)

(declare-fun e!3322379 () Bool)

(assert (=> b!5352102 (= e!3322378 e!3322379)))

(declare-fun res!2270849 () Bool)

(assert (=> b!5352102 (=> (not res!2270849) (not e!3322379))))

(declare-fun lt!2181410 () Bool)

(assert (=> b!5352102 (= res!2270849 (not lt!2181410))))

(declare-fun b!5352103 () Bool)

(declare-fun e!3322374 () Bool)

(assert (=> b!5352103 (= e!3322374 (matchR!7226 (derivativeStep!4200 (derivativeStep!4200 r!7292 (head!11477 s!2326)) (head!11477 (tail!10574 s!2326))) (tail!10574 (tail!10574 s!2326))))))

(declare-fun bm!382635 () Bool)

(declare-fun call!382640 () Bool)

(assert (=> bm!382635 (= call!382640 (isEmpty!33277 (tail!10574 s!2326)))))

(declare-fun b!5352104 () Bool)

(declare-fun res!2270853 () Bool)

(assert (=> b!5352104 (=> res!2270853 e!3322378)))

(assert (=> b!5352104 (= res!2270853 e!3322376)))

(declare-fun res!2270848 () Bool)

(assert (=> b!5352104 (=> (not res!2270848) (not e!3322376))))

(assert (=> b!5352104 (= res!2270848 lt!2181410)))

(declare-fun d!1715940 () Bool)

(assert (=> d!1715940 e!3322373))

(declare-fun c!931811 () Bool)

(assert (=> d!1715940 (= c!931811 ((_ is EmptyExpr!15041) (derivativeStep!4200 r!7292 (head!11477 s!2326))))))

(assert (=> d!1715940 (= lt!2181410 e!3322374)))

(declare-fun c!931812 () Bool)

(assert (=> d!1715940 (= c!931812 (isEmpty!33277 (tail!10574 s!2326)))))

(assert (=> d!1715940 (validRegex!6777 (derivativeStep!4200 r!7292 (head!11477 s!2326)))))

(assert (=> d!1715940 (= (matchR!7226 (derivativeStep!4200 r!7292 (head!11477 s!2326)) (tail!10574 s!2326)) lt!2181410)))

(declare-fun b!5352105 () Bool)

(assert (=> b!5352105 (= e!3322379 e!3322375)))

(declare-fun res!2270851 () Bool)

(assert (=> b!5352105 (=> res!2270851 e!3322375)))

(assert (=> b!5352105 (= res!2270851 call!382640)))

(declare-fun b!5352106 () Bool)

(declare-fun res!2270852 () Bool)

(assert (=> b!5352106 (=> res!2270852 e!3322375)))

(assert (=> b!5352106 (= res!2270852 (not (isEmpty!33277 (tail!10574 (tail!10574 s!2326)))))))

(declare-fun b!5352107 () Bool)

(declare-fun res!2270850 () Bool)

(assert (=> b!5352107 (=> (not res!2270850) (not e!3322376))))

(assert (=> b!5352107 (= res!2270850 (not call!382640))))

(declare-fun b!5352108 () Bool)

(declare-fun res!2270855 () Bool)

(assert (=> b!5352108 (=> (not res!2270855) (not e!3322376))))

(assert (=> b!5352108 (= res!2270855 (isEmpty!33277 (tail!10574 (tail!10574 s!2326))))))

(declare-fun b!5352109 () Bool)

(assert (=> b!5352109 (= e!3322374 (nullable!5210 (derivativeStep!4200 r!7292 (head!11477 s!2326))))))

(declare-fun b!5352110 () Bool)

(assert (=> b!5352110 (= e!3322377 (not lt!2181410))))

(declare-fun b!5352111 () Bool)

(assert (=> b!5352111 (= e!3322373 (= lt!2181410 call!382640))))

(assert (= (and d!1715940 c!931812) b!5352109))

(assert (= (and d!1715940 (not c!931812)) b!5352103))

(assert (= (and d!1715940 c!931811) b!5352111))

(assert (= (and d!1715940 (not c!931811)) b!5352101))

(assert (= (and b!5352101 c!931813) b!5352110))

(assert (= (and b!5352101 (not c!931813)) b!5352100))

(assert (= (and b!5352100 (not res!2270854)) b!5352104))

(assert (= (and b!5352104 res!2270848) b!5352107))

(assert (= (and b!5352107 res!2270850) b!5352108))

(assert (= (and b!5352108 res!2270855) b!5352099))

(assert (= (and b!5352104 (not res!2270853)) b!5352102))

(assert (= (and b!5352102 res!2270849) b!5352105))

(assert (= (and b!5352105 (not res!2270851)) b!5352106))

(assert (= (and b!5352106 (not res!2270852)) b!5352098))

(assert (= (or b!5352111 b!5352105 b!5352107) bm!382635))

(assert (=> b!5352109 m!6382526))

(declare-fun m!6382862 () Bool)

(assert (=> b!5352109 m!6382862))

(assert (=> bm!382635 m!6382522))

(assert (=> bm!382635 m!6382524))

(assert (=> b!5352099 m!6382522))

(declare-fun m!6382864 () Bool)

(assert (=> b!5352099 m!6382864))

(assert (=> b!5352108 m!6382522))

(declare-fun m!6382866 () Bool)

(assert (=> b!5352108 m!6382866))

(assert (=> b!5352108 m!6382866))

(declare-fun m!6382868 () Bool)

(assert (=> b!5352108 m!6382868))

(assert (=> b!5352098 m!6382522))

(assert (=> b!5352098 m!6382864))

(assert (=> b!5352103 m!6382522))

(assert (=> b!5352103 m!6382864))

(assert (=> b!5352103 m!6382526))

(assert (=> b!5352103 m!6382864))

(declare-fun m!6382870 () Bool)

(assert (=> b!5352103 m!6382870))

(assert (=> b!5352103 m!6382522))

(assert (=> b!5352103 m!6382866))

(assert (=> b!5352103 m!6382870))

(assert (=> b!5352103 m!6382866))

(declare-fun m!6382872 () Bool)

(assert (=> b!5352103 m!6382872))

(assert (=> b!5352106 m!6382522))

(assert (=> b!5352106 m!6382866))

(assert (=> b!5352106 m!6382866))

(assert (=> b!5352106 m!6382868))

(assert (=> d!1715940 m!6382522))

(assert (=> d!1715940 m!6382524))

(assert (=> d!1715940 m!6382526))

(declare-fun m!6382874 () Bool)

(assert (=> d!1715940 m!6382874))

(assert (=> b!5351591 d!1715940))

(declare-fun c!931835 () Bool)

(declare-fun bm!382656 () Bool)

(declare-fun call!382664 () Regex!15041)

(declare-fun c!931838 () Bool)

(declare-fun c!931836 () Bool)

(assert (=> bm!382656 (= call!382664 (derivativeStep!4200 (ite c!931836 (regTwo!30595 r!7292) (ite c!931838 (reg!15370 r!7292) (ite c!931835 (regTwo!30594 r!7292) (regOne!30594 r!7292)))) (head!11477 s!2326)))))

(declare-fun b!5352156 () Bool)

(declare-fun e!3322407 () Regex!15041)

(declare-fun e!3322404 () Regex!15041)

(assert (=> b!5352156 (= e!3322407 e!3322404)))

(declare-fun c!931837 () Bool)

(assert (=> b!5352156 (= c!931837 ((_ is ElementMatch!15041) r!7292))))

(declare-fun b!5352157 () Bool)

(declare-fun e!3322406 () Regex!15041)

(declare-fun e!3322403 () Regex!15041)

(assert (=> b!5352157 (= e!3322406 e!3322403)))

(assert (=> b!5352157 (= c!931838 ((_ is Star!15041) r!7292))))

(declare-fun b!5352158 () Bool)

(declare-fun e!3322405 () Regex!15041)

(declare-fun call!382661 () Regex!15041)

(assert (=> b!5352158 (= e!3322405 (Union!15041 (Concat!23886 call!382661 (regTwo!30594 r!7292)) EmptyLang!15041))))

(declare-fun d!1715942 () Bool)

(declare-fun lt!2181413 () Regex!15041)

(assert (=> d!1715942 (validRegex!6777 lt!2181413)))

(assert (=> d!1715942 (= lt!2181413 e!3322407)))

(declare-fun c!931839 () Bool)

(assert (=> d!1715942 (= c!931839 (or ((_ is EmptyExpr!15041) r!7292) ((_ is EmptyLang!15041) r!7292)))))

(assert (=> d!1715942 (validRegex!6777 r!7292)))

(assert (=> d!1715942 (= (derivativeStep!4200 r!7292 (head!11477 s!2326)) lt!2181413)))

(declare-fun b!5352159 () Bool)

(assert (=> b!5352159 (= e!3322407 EmptyLang!15041)))

(declare-fun bm!382657 () Bool)

(declare-fun call!382662 () Regex!15041)

(assert (=> bm!382657 (= call!382662 (derivativeStep!4200 (ite c!931836 (regOne!30595 r!7292) (regOne!30594 r!7292)) (head!11477 s!2326)))))

(declare-fun b!5352160 () Bool)

(assert (=> b!5352160 (= e!3322404 (ite (= (head!11477 s!2326) (c!931579 r!7292)) EmptyExpr!15041 EmptyLang!15041))))

(declare-fun b!5352161 () Bool)

(assert (=> b!5352161 (= c!931836 ((_ is Union!15041) r!7292))))

(assert (=> b!5352161 (= e!3322404 e!3322406)))

(declare-fun b!5352162 () Bool)

(assert (=> b!5352162 (= e!3322405 (Union!15041 (Concat!23886 call!382662 (regTwo!30594 r!7292)) call!382661))))

(declare-fun bm!382658 () Bool)

(declare-fun call!382663 () Regex!15041)

(assert (=> bm!382658 (= call!382661 call!382663)))

(declare-fun bm!382659 () Bool)

(assert (=> bm!382659 (= call!382663 call!382664)))

(declare-fun b!5352163 () Bool)

(assert (=> b!5352163 (= e!3322406 (Union!15041 call!382662 call!382664))))

(declare-fun b!5352164 () Bool)

(assert (=> b!5352164 (= c!931835 (nullable!5210 (regOne!30594 r!7292)))))

(assert (=> b!5352164 (= e!3322403 e!3322405)))

(declare-fun b!5352165 () Bool)

(assert (=> b!5352165 (= e!3322403 (Concat!23886 call!382663 r!7292))))

(assert (= (and d!1715942 c!931839) b!5352159))

(assert (= (and d!1715942 (not c!931839)) b!5352156))

(assert (= (and b!5352156 c!931837) b!5352160))

(assert (= (and b!5352156 (not c!931837)) b!5352161))

(assert (= (and b!5352161 c!931836) b!5352163))

(assert (= (and b!5352161 (not c!931836)) b!5352157))

(assert (= (and b!5352157 c!931838) b!5352165))

(assert (= (and b!5352157 (not c!931838)) b!5352164))

(assert (= (and b!5352164 c!931835) b!5352162))

(assert (= (and b!5352164 (not c!931835)) b!5352158))

(assert (= (or b!5352162 b!5352158) bm!382658))

(assert (= (or b!5352165 bm!382658) bm!382659))

(assert (= (or b!5352163 bm!382659) bm!382656))

(assert (= (or b!5352163 b!5352162) bm!382657))

(assert (=> bm!382656 m!6382520))

(declare-fun m!6382902 () Bool)

(assert (=> bm!382656 m!6382902))

(declare-fun m!6382906 () Bool)

(assert (=> d!1715942 m!6382906))

(assert (=> d!1715942 m!6382302))

(assert (=> bm!382657 m!6382520))

(declare-fun m!6382908 () Bool)

(assert (=> bm!382657 m!6382908))

(assert (=> b!5352164 m!6382736))

(assert (=> b!5351591 d!1715942))

(assert (=> b!5351591 d!1715922))

(declare-fun d!1715952 () Bool)

(assert (=> d!1715952 (= (tail!10574 s!2326) (t!374641 s!2326))))

(assert (=> b!5351591 d!1715952))

(declare-fun bs!1240649 () Bool)

(declare-fun d!1715954 () Bool)

(assert (= bs!1240649 (and d!1715954 d!1715912)))

(declare-fun lambda!275180 () Int)

(assert (=> bs!1240649 (= lambda!275180 lambda!275172)))

(assert (=> d!1715954 (= (nullableZipper!1379 lt!2181309) (exists!2016 lt!2181309 lambda!275180))))

(declare-fun bs!1240650 () Bool)

(assert (= bs!1240650 d!1715954))

(declare-fun m!6382916 () Bool)

(assert (=> bs!1240650 m!6382916))

(assert (=> b!5351384 d!1715954))

(declare-fun d!1715956 () Bool)

(assert (=> d!1715956 (= (isEmpty!33280 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326)) (not ((_ is Some!15151) (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326))))))

(assert (=> d!1715848 d!1715956))

(declare-fun b!5352167 () Bool)

(declare-fun e!3322409 () List!61424)

(assert (=> b!5352167 (= e!3322409 (Cons!61300 (h!67748 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300))) (++!13360 (t!374641 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300))) (t!374641 s!2326))))))

(declare-fun b!5352166 () Bool)

(assert (=> b!5352166 (= e!3322409 (t!374641 s!2326))))

(declare-fun b!5352169 () Bool)

(declare-fun e!3322408 () Bool)

(declare-fun lt!2181414 () List!61424)

(assert (=> b!5352169 (= e!3322408 (or (not (= (t!374641 s!2326) Nil!61300)) (= lt!2181414 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)))))))

(declare-fun b!5352168 () Bool)

(declare-fun res!2270859 () Bool)

(assert (=> b!5352168 (=> (not res!2270859) (not e!3322408))))

(assert (=> b!5352168 (= res!2270859 (= (size!39774 lt!2181414) (+ (size!39774 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300))) (size!39774 (t!374641 s!2326)))))))

(declare-fun d!1715962 () Bool)

(assert (=> d!1715962 e!3322408))

(declare-fun res!2270858 () Bool)

(assert (=> d!1715962 (=> (not res!2270858) (not e!3322408))))

(assert (=> d!1715962 (= res!2270858 (= (content!10939 lt!2181414) ((_ map or) (content!10939 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300))) (content!10939 (t!374641 s!2326)))))))

(assert (=> d!1715962 (= lt!2181414 e!3322409)))

(declare-fun c!931840 () Bool)

(assert (=> d!1715962 (= c!931840 ((_ is Nil!61300) (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300))))))

(assert (=> d!1715962 (= (++!13360 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (t!374641 s!2326)) lt!2181414)))

(assert (= (and d!1715962 c!931840) b!5352166))

(assert (= (and d!1715962 (not c!931840)) b!5352167))

(assert (= (and d!1715962 res!2270858) b!5352168))

(assert (= (and b!5352168 res!2270859) b!5352169))

(declare-fun m!6382918 () Bool)

(assert (=> b!5352167 m!6382918))

(declare-fun m!6382920 () Bool)

(assert (=> b!5352168 m!6382920))

(assert (=> b!5352168 m!6382684))

(declare-fun m!6382922 () Bool)

(assert (=> b!5352168 m!6382922))

(declare-fun m!6382924 () Bool)

(assert (=> b!5352168 m!6382924))

(declare-fun m!6382926 () Bool)

(assert (=> d!1715962 m!6382926))

(assert (=> d!1715962 m!6382684))

(declare-fun m!6382928 () Bool)

(assert (=> d!1715962 m!6382928))

(declare-fun m!6382930 () Bool)

(assert (=> d!1715962 m!6382930))

(assert (=> b!5351885 d!1715962))

(declare-fun b!5352181 () Bool)

(declare-fun e!3322417 () List!61424)

(assert (=> b!5352181 (= e!3322417 (Cons!61300 (h!67748 Nil!61300) (++!13360 (t!374641 Nil!61300) (Cons!61300 (h!67748 s!2326) Nil!61300))))))

(declare-fun b!5352180 () Bool)

(assert (=> b!5352180 (= e!3322417 (Cons!61300 (h!67748 s!2326) Nil!61300))))

(declare-fun b!5352183 () Bool)

(declare-fun e!3322416 () Bool)

(declare-fun lt!2181416 () List!61424)

(assert (=> b!5352183 (= e!3322416 (or (not (= (Cons!61300 (h!67748 s!2326) Nil!61300) Nil!61300)) (= lt!2181416 Nil!61300)))))

(declare-fun b!5352182 () Bool)

(declare-fun res!2270863 () Bool)

(assert (=> b!5352182 (=> (not res!2270863) (not e!3322416))))

(assert (=> b!5352182 (= res!2270863 (= (size!39774 lt!2181416) (+ (size!39774 Nil!61300) (size!39774 (Cons!61300 (h!67748 s!2326) Nil!61300)))))))

(declare-fun d!1715968 () Bool)

(assert (=> d!1715968 e!3322416))

(declare-fun res!2270862 () Bool)

(assert (=> d!1715968 (=> (not res!2270862) (not e!3322416))))

(assert (=> d!1715968 (= res!2270862 (= (content!10939 lt!2181416) ((_ map or) (content!10939 Nil!61300) (content!10939 (Cons!61300 (h!67748 s!2326) Nil!61300)))))))

(assert (=> d!1715968 (= lt!2181416 e!3322417)))

(declare-fun c!931845 () Bool)

(assert (=> d!1715968 (= c!931845 ((_ is Nil!61300) Nil!61300))))

(assert (=> d!1715968 (= (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) lt!2181416)))

(assert (= (and d!1715968 c!931845) b!5352180))

(assert (= (and d!1715968 (not c!931845)) b!5352181))

(assert (= (and d!1715968 res!2270862) b!5352182))

(assert (= (and b!5352182 res!2270863) b!5352183))

(declare-fun m!6382932 () Bool)

(assert (=> b!5352181 m!6382932))

(declare-fun m!6382934 () Bool)

(assert (=> b!5352182 m!6382934))

(declare-fun m!6382936 () Bool)

(assert (=> b!5352182 m!6382936))

(declare-fun m!6382938 () Bool)

(assert (=> b!5352182 m!6382938))

(declare-fun m!6382940 () Bool)

(assert (=> d!1715968 m!6382940))

(declare-fun m!6382942 () Bool)

(assert (=> d!1715968 m!6382942))

(declare-fun m!6382944 () Bool)

(assert (=> d!1715968 m!6382944))

(assert (=> b!5351885 d!1715968))

(declare-fun d!1715970 () Bool)

(assert (=> d!1715970 (= (++!13360 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (t!374641 s!2326)) s!2326)))

(declare-fun lt!2181419 () Unit!153682)

(declare-fun choose!40166 (List!61424 C!30352 List!61424 List!61424) Unit!153682)

(assert (=> d!1715970 (= lt!2181419 (choose!40166 Nil!61300 (h!67748 s!2326) (t!374641 s!2326) s!2326))))

(assert (=> d!1715970 (= (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) (t!374641 s!2326))) s!2326)))

(assert (=> d!1715970 (= (lemmaMoveElementToOtherListKeepsConcatEq!1775 Nil!61300 (h!67748 s!2326) (t!374641 s!2326) s!2326) lt!2181419)))

(declare-fun bs!1240656 () Bool)

(assert (= bs!1240656 d!1715970))

(assert (=> bs!1240656 m!6382684))

(assert (=> bs!1240656 m!6382684))

(assert (=> bs!1240656 m!6382686))

(declare-fun m!6382964 () Bool)

(assert (=> bs!1240656 m!6382964))

(declare-fun m!6382966 () Bool)

(assert (=> bs!1240656 m!6382966))

(assert (=> b!5351885 d!1715970))

(declare-fun b!5352184 () Bool)

(declare-fun e!3322418 () Option!15152)

(assert (=> b!5352184 (= e!3322418 None!15151)))

(declare-fun b!5352185 () Bool)

(declare-fun e!3322421 () Bool)

(declare-fun lt!2181420 () Option!15152)

(assert (=> b!5352185 (= e!3322421 (not (isDefined!11855 lt!2181420)))))

(declare-fun d!1715978 () Bool)

(assert (=> d!1715978 e!3322421))

(declare-fun res!2270864 () Bool)

(assert (=> d!1715978 (=> res!2270864 e!3322421)))

(declare-fun e!3322419 () Bool)

(assert (=> d!1715978 (= res!2270864 e!3322419)))

(declare-fun res!2270865 () Bool)

(assert (=> d!1715978 (=> (not res!2270865) (not e!3322419))))

(assert (=> d!1715978 (= res!2270865 (isDefined!11855 lt!2181420))))

(declare-fun e!3322420 () Option!15152)

(assert (=> d!1715978 (= lt!2181420 e!3322420)))

(declare-fun c!931847 () Bool)

(declare-fun e!3322422 () Bool)

(assert (=> d!1715978 (= c!931847 e!3322422)))

(declare-fun res!2270868 () Bool)

(assert (=> d!1715978 (=> (not res!2270868) (not e!3322422))))

(assert (=> d!1715978 (= res!2270868 (matchR!7226 (regOne!30594 r!7292) (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300))))))

(assert (=> d!1715978 (validRegex!6777 (regOne!30594 r!7292))))

(assert (=> d!1715978 (= (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (t!374641 s!2326) s!2326) lt!2181420)))

(declare-fun b!5352186 () Bool)

(declare-fun lt!2181421 () Unit!153682)

(declare-fun lt!2181422 () Unit!153682)

(assert (=> b!5352186 (= lt!2181421 lt!2181422)))

(assert (=> b!5352186 (= (++!13360 (++!13360 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (Cons!61300 (h!67748 (t!374641 s!2326)) Nil!61300)) (t!374641 (t!374641 s!2326))) s!2326)))

(assert (=> b!5352186 (= lt!2181422 (lemmaMoveElementToOtherListKeepsConcatEq!1775 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (h!67748 (t!374641 s!2326)) (t!374641 (t!374641 s!2326)) s!2326))))

(assert (=> b!5352186 (= e!3322418 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) (++!13360 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (Cons!61300 (h!67748 (t!374641 s!2326)) Nil!61300)) (t!374641 (t!374641 s!2326)) s!2326))))

(declare-fun b!5352187 () Bool)

(assert (=> b!5352187 (= e!3322420 e!3322418)))

(declare-fun c!931846 () Bool)

(assert (=> b!5352187 (= c!931846 ((_ is Nil!61300) (t!374641 s!2326)))))

(declare-fun b!5352188 () Bool)

(declare-fun res!2270867 () Bool)

(assert (=> b!5352188 (=> (not res!2270867) (not e!3322419))))

(assert (=> b!5352188 (= res!2270867 (matchR!7226 (regOne!30594 r!7292) (_1!35543 (get!21086 lt!2181420))))))

(declare-fun b!5352189 () Bool)

(assert (=> b!5352189 (= e!3322419 (= (++!13360 (_1!35543 (get!21086 lt!2181420)) (_2!35543 (get!21086 lt!2181420))) s!2326))))

(declare-fun b!5352190 () Bool)

(assert (=> b!5352190 (= e!3322420 (Some!15151 (tuple2!64481 (++!13360 Nil!61300 (Cons!61300 (h!67748 s!2326) Nil!61300)) (t!374641 s!2326))))))

(declare-fun b!5352191 () Bool)

(assert (=> b!5352191 (= e!3322422 (matchR!7226 (regTwo!30594 r!7292) (t!374641 s!2326)))))

(declare-fun b!5352192 () Bool)

(declare-fun res!2270866 () Bool)

(assert (=> b!5352192 (=> (not res!2270866) (not e!3322419))))

(assert (=> b!5352192 (= res!2270866 (matchR!7226 (regTwo!30594 r!7292) (_2!35543 (get!21086 lt!2181420))))))

(assert (= (and d!1715978 res!2270868) b!5352191))

(assert (= (and d!1715978 c!931847) b!5352190))

(assert (= (and d!1715978 (not c!931847)) b!5352187))

(assert (= (and b!5352187 c!931846) b!5352184))

(assert (= (and b!5352187 (not c!931846)) b!5352186))

(assert (= (and d!1715978 res!2270865) b!5352188))

(assert (= (and b!5352188 res!2270867) b!5352192))

(assert (= (and b!5352192 res!2270866) b!5352189))

(assert (= (and d!1715978 (not res!2270864)) b!5352185))

(declare-fun m!6382968 () Bool)

(assert (=> b!5352191 m!6382968))

(declare-fun m!6382970 () Bool)

(assert (=> b!5352185 m!6382970))

(declare-fun m!6382972 () Bool)

(assert (=> b!5352188 m!6382972))

(declare-fun m!6382974 () Bool)

(assert (=> b!5352188 m!6382974))

(assert (=> d!1715978 m!6382970))

(assert (=> d!1715978 m!6382684))

(declare-fun m!6382976 () Bool)

(assert (=> d!1715978 m!6382976))

(assert (=> d!1715978 m!6382678))

(assert (=> b!5352189 m!6382972))

(declare-fun m!6382978 () Bool)

(assert (=> b!5352189 m!6382978))

(assert (=> b!5352192 m!6382972))

(declare-fun m!6382980 () Bool)

(assert (=> b!5352192 m!6382980))

(assert (=> b!5352186 m!6382684))

(declare-fun m!6382982 () Bool)

(assert (=> b!5352186 m!6382982))

(assert (=> b!5352186 m!6382982))

(declare-fun m!6382984 () Bool)

(assert (=> b!5352186 m!6382984))

(assert (=> b!5352186 m!6382684))

(declare-fun m!6382986 () Bool)

(assert (=> b!5352186 m!6382986))

(assert (=> b!5352186 m!6382982))

(declare-fun m!6382988 () Bool)

(assert (=> b!5352186 m!6382988))

(assert (=> b!5351885 d!1715978))

(declare-fun d!1715982 () Bool)

(declare-fun res!2270873 () Bool)

(declare-fun e!3322427 () Bool)

(assert (=> d!1715982 (=> res!2270873 e!3322427)))

(assert (=> d!1715982 (= res!2270873 ((_ is Nil!61299) lt!2181389))))

(assert (=> d!1715982 (= (noDuplicate!1334 lt!2181389) e!3322427)))

(declare-fun b!5352197 () Bool)

(declare-fun e!3322428 () Bool)

(assert (=> b!5352197 (= e!3322427 e!3322428)))

(declare-fun res!2270874 () Bool)

(assert (=> b!5352197 (=> (not res!2270874) (not e!3322428))))

(declare-fun contains!19715 (List!61423 Context!8850) Bool)

(assert (=> b!5352197 (= res!2270874 (not (contains!19715 (t!374640 lt!2181389) (h!67747 lt!2181389))))))

(declare-fun b!5352198 () Bool)

(assert (=> b!5352198 (= e!3322428 (noDuplicate!1334 (t!374640 lt!2181389)))))

(assert (= (and d!1715982 (not res!2270873)) b!5352197))

(assert (= (and b!5352197 res!2270874) b!5352198))

(declare-fun m!6382990 () Bool)

(assert (=> b!5352197 m!6382990))

(declare-fun m!6382992 () Bool)

(assert (=> b!5352198 m!6382992))

(assert (=> d!1715838 d!1715982))

(declare-fun d!1715984 () Bool)

(declare-fun e!3322439 () Bool)

(assert (=> d!1715984 e!3322439))

(declare-fun res!2270881 () Bool)

(assert (=> d!1715984 (=> (not res!2270881) (not e!3322439))))

(declare-fun res!2270882 () List!61423)

(assert (=> d!1715984 (= res!2270881 (noDuplicate!1334 res!2270882))))

(declare-fun e!3322438 () Bool)

(assert (=> d!1715984 e!3322438))

(assert (=> d!1715984 (= (choose!40162 z!1189) res!2270882)))

(declare-fun b!5352208 () Bool)

(declare-fun e!3322437 () Bool)

(declare-fun tp!1486589 () Bool)

(assert (=> b!5352208 (= e!3322437 tp!1486589)))

(declare-fun b!5352207 () Bool)

(declare-fun tp!1486588 () Bool)

(assert (=> b!5352207 (= e!3322438 (and (inv!80849 (h!67747 res!2270882)) e!3322437 tp!1486588))))

(declare-fun b!5352209 () Bool)

(assert (=> b!5352209 (= e!3322439 (= (content!10938 res!2270882) z!1189))))

(assert (= b!5352207 b!5352208))

(assert (= (and d!1715984 ((_ is Cons!61299) res!2270882)) b!5352207))

(assert (= (and d!1715984 res!2270881) b!5352209))

(declare-fun m!6382994 () Bool)

(assert (=> d!1715984 m!6382994))

(declare-fun m!6382996 () Bool)

(assert (=> b!5352207 m!6382996))

(declare-fun m!6382998 () Bool)

(assert (=> b!5352209 m!6382998))

(assert (=> d!1715838 d!1715984))

(declare-fun d!1715986 () Bool)

(assert (=> d!1715986 (= (Exists!2222 (ite c!931668 lambda!275147 lambda!275149)) (choose!40165 (ite c!931668 lambda!275147 lambda!275149)))))

(declare-fun bs!1240657 () Bool)

(assert (= bs!1240657 d!1715986))

(declare-fun m!6383000 () Bool)

(assert (=> bs!1240657 m!6383000))

(assert (=> bm!382537 d!1715986))

(assert (=> d!1715802 d!1715826))

(declare-fun d!1715988 () Bool)

(assert (=> d!1715988 (= (flatMap!768 z!1189 lambda!275109) (dynLambda!24228 lambda!275109 (h!67747 zl!343)))))

(assert (=> d!1715988 true))

(declare-fun _$13!1917 () Unit!153682)

(assert (=> d!1715988 (= (choose!40158 z!1189 (h!67747 zl!343) lambda!275109) _$13!1917)))

(declare-fun b_lambda!205335 () Bool)

(assert (=> (not b_lambda!205335) (not d!1715988)))

(declare-fun bs!1240658 () Bool)

(assert (= bs!1240658 d!1715988))

(assert (=> bs!1240658 m!6382262))

(assert (=> bs!1240658 m!6382562))

(assert (=> d!1715802 d!1715988))

(declare-fun d!1715992 () Bool)

(assert (=> d!1715992 (= (isEmptyLang!923 lt!2181352) ((_ is EmptyLang!15041) lt!2181352))))

(assert (=> b!5351418 d!1715992))

(declare-fun d!1715994 () Bool)

(assert (=> d!1715994 (= ($colon$colon!1429 (exprs!4925 lt!2181316) (ite (or c!931726 c!931723) (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (h!67746 (exprs!4925 (h!67747 zl!343))))) (Cons!61298 (ite (or c!931726 c!931723) (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (h!67746 (exprs!4925 (h!67747 zl!343)))) (exprs!4925 lt!2181316)))))

(assert (=> bm!382578 d!1715994))

(declare-fun bs!1240659 () Bool)

(declare-fun d!1715996 () Bool)

(assert (= bs!1240659 (and d!1715996 d!1715764)))

(declare-fun lambda!275182 () Int)

(assert (=> bs!1240659 (= lambda!275182 lambda!275134)))

(declare-fun bs!1240660 () Bool)

(assert (= bs!1240660 (and d!1715996 d!1715746)))

(assert (=> bs!1240660 (= lambda!275182 lambda!275124)))

(declare-fun bs!1240661 () Bool)

(assert (= bs!1240661 (and d!1715996 d!1715756)))

(assert (=> bs!1240661 (= lambda!275182 lambda!275125)))

(declare-fun bs!1240662 () Bool)

(assert (= bs!1240662 (and d!1715996 d!1715758)))

(assert (=> bs!1240662 (= lambda!275182 lambda!275130)))

(declare-fun bs!1240663 () Bool)

(assert (= bs!1240663 (and d!1715996 d!1715938)))

(assert (=> bs!1240663 (= lambda!275182 lambda!275177)))

(declare-fun bs!1240664 () Bool)

(assert (= bs!1240664 (and d!1715996 d!1715830)))

(assert (=> bs!1240664 (= lambda!275182 lambda!275155)))

(assert (=> d!1715996 (= (inv!80849 setElem!34579) (forall!14467 (exprs!4925 setElem!34579) lambda!275182))))

(declare-fun bs!1240665 () Bool)

(assert (= bs!1240665 d!1715996))

(declare-fun m!6383002 () Bool)

(assert (=> bs!1240665 m!6383002))

(assert (=> setNonEmpty!34579 d!1715996))

(declare-fun b!5352213 () Bool)

(declare-fun e!3322444 () Bool)

(declare-fun e!3322443 () Bool)

(assert (=> b!5352213 (= e!3322444 e!3322443)))

(declare-fun c!931849 () Bool)

(assert (=> b!5352213 (= c!931849 ((_ is Star!15041) (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))))))

(declare-fun b!5352214 () Bool)

(declare-fun e!3322448 () Bool)

(assert (=> b!5352214 (= e!3322443 e!3322448)))

(declare-fun res!2270886 () Bool)

(assert (=> b!5352214 (= res!2270886 (not (nullable!5210 (reg!15370 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))))))))

(assert (=> b!5352214 (=> (not res!2270886) (not e!3322448))))

(declare-fun b!5352215 () Bool)

(declare-fun res!2270887 () Bool)

(declare-fun e!3322445 () Bool)

(assert (=> b!5352215 (=> (not res!2270887) (not e!3322445))))

(declare-fun call!382666 () Bool)

(assert (=> b!5352215 (= res!2270887 call!382666)))

(declare-fun e!3322449 () Bool)

(assert (=> b!5352215 (= e!3322449 e!3322445)))

(declare-fun bm!382660 () Bool)

(declare-fun c!931848 () Bool)

(assert (=> bm!382660 (= call!382666 (validRegex!6777 (ite c!931848 (regOne!30595 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))) (regOne!30594 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))))))))

(declare-fun b!5352216 () Bool)

(declare-fun res!2270888 () Bool)

(declare-fun e!3322446 () Bool)

(assert (=> b!5352216 (=> res!2270888 e!3322446)))

(assert (=> b!5352216 (= res!2270888 (not ((_ is Concat!23886) (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292)))))))))

(assert (=> b!5352216 (= e!3322449 e!3322446)))

(declare-fun b!5352217 () Bool)

(declare-fun call!382667 () Bool)

(assert (=> b!5352217 (= e!3322448 call!382667)))

(declare-fun b!5352218 () Bool)

(declare-fun e!3322447 () Bool)

(assert (=> b!5352218 (= e!3322446 e!3322447)))

(declare-fun res!2270890 () Bool)

(assert (=> b!5352218 (=> (not res!2270890) (not e!3322447))))

(assert (=> b!5352218 (= res!2270890 call!382666)))

(declare-fun b!5352219 () Bool)

(assert (=> b!5352219 (= e!3322443 e!3322449)))

(assert (=> b!5352219 (= c!931848 ((_ is Union!15041) (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))))))

(declare-fun bm!382661 () Bool)

(assert (=> bm!382661 (= call!382667 (validRegex!6777 (ite c!931849 (reg!15370 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))) (ite c!931848 (regTwo!30595 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))) (regTwo!30594 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292)))))))))))

(declare-fun b!5352220 () Bool)

(declare-fun call!382665 () Bool)

(assert (=> b!5352220 (= e!3322445 call!382665)))

(declare-fun d!1715998 () Bool)

(declare-fun res!2270889 () Bool)

(assert (=> d!1715998 (=> res!2270889 e!3322444)))

(assert (=> d!1715998 (= res!2270889 ((_ is ElementMatch!15041) (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))))))

(assert (=> d!1715998 (= (validRegex!6777 (ite c!931643 (regOne!30595 (reg!15370 (regOne!30594 r!7292))) (regOne!30594 (reg!15370 (regOne!30594 r!7292))))) e!3322444)))

(declare-fun bm!382662 () Bool)

(assert (=> bm!382662 (= call!382665 call!382667)))

(declare-fun b!5352221 () Bool)

(assert (=> b!5352221 (= e!3322447 call!382665)))

(assert (= (and d!1715998 (not res!2270889)) b!5352213))

(assert (= (and b!5352213 c!931849) b!5352214))

(assert (= (and b!5352213 (not c!931849)) b!5352219))

(assert (= (and b!5352214 res!2270886) b!5352217))

(assert (= (and b!5352219 c!931848) b!5352215))

(assert (= (and b!5352219 (not c!931848)) b!5352216))

(assert (= (and b!5352215 res!2270887) b!5352220))

(assert (= (and b!5352216 (not res!2270888)) b!5352218))

(assert (= (and b!5352218 res!2270890) b!5352221))

(assert (= (or b!5352220 b!5352221) bm!382662))

(assert (= (or b!5352215 b!5352218) bm!382660))

(assert (= (or b!5352217 bm!382662) bm!382661))

(declare-fun m!6383004 () Bool)

(assert (=> b!5352214 m!6383004))

(declare-fun m!6383006 () Bool)

(assert (=> bm!382660 m!6383006))

(declare-fun m!6383008 () Bool)

(assert (=> bm!382661 m!6383008))

(assert (=> bm!382529 d!1715998))

(declare-fun d!1716000 () Bool)

(assert (=> d!1716000 (= (nullable!5210 (reg!15370 r!7292)) (nullableFct!1531 (reg!15370 r!7292)))))

(declare-fun bs!1240666 () Bool)

(assert (= bs!1240666 d!1716000))

(declare-fun m!6383012 () Bool)

(assert (=> bs!1240666 m!6383012))

(assert (=> b!5351802 d!1716000))

(declare-fun d!1716002 () Bool)

(declare-fun c!931855 () Bool)

(assert (=> d!1716002 (= c!931855 ((_ is Nil!61299) lt!2181389))))

(declare-fun e!3322460 () (InoxSet Context!8850))

(assert (=> d!1716002 (= (content!10938 lt!2181389) e!3322460)))

(declare-fun b!5352241 () Bool)

(assert (=> b!5352241 (= e!3322460 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352242 () Bool)

(assert (=> b!5352242 (= e!3322460 ((_ map or) (store ((as const (Array Context!8850 Bool)) false) (h!67747 lt!2181389) true) (content!10938 (t!374640 lt!2181389))))))

(assert (= (and d!1716002 c!931855) b!5352241))

(assert (= (and d!1716002 (not c!931855)) b!5352242))

(declare-fun m!6383014 () Bool)

(assert (=> b!5352242 m!6383014))

(declare-fun m!6383016 () Bool)

(assert (=> b!5352242 m!6383016))

(assert (=> b!5351833 d!1716002))

(declare-fun b!5352243 () Bool)

(declare-fun e!3322463 () Bool)

(assert (=> b!5352243 (= e!3322463 (not (= (head!11477 (_2!35543 (get!21086 lt!2181396))) (c!931579 (regTwo!30594 r!7292)))))))

(declare-fun b!5352244 () Bool)

(declare-fun e!3322464 () Bool)

(assert (=> b!5352244 (= e!3322464 (= (head!11477 (_2!35543 (get!21086 lt!2181396))) (c!931579 (regTwo!30594 r!7292))))))

(declare-fun b!5352245 () Bool)

(declare-fun res!2270906 () Bool)

(declare-fun e!3322466 () Bool)

(assert (=> b!5352245 (=> res!2270906 e!3322466)))

(assert (=> b!5352245 (= res!2270906 (not ((_ is ElementMatch!15041) (regTwo!30594 r!7292))))))

(declare-fun e!3322465 () Bool)

(assert (=> b!5352245 (= e!3322465 e!3322466)))

(declare-fun b!5352246 () Bool)

(declare-fun e!3322461 () Bool)

(assert (=> b!5352246 (= e!3322461 e!3322465)))

(declare-fun c!931858 () Bool)

(assert (=> b!5352246 (= c!931858 ((_ is EmptyLang!15041) (regTwo!30594 r!7292)))))

(declare-fun b!5352247 () Bool)

(declare-fun e!3322467 () Bool)

(assert (=> b!5352247 (= e!3322466 e!3322467)))

(declare-fun res!2270901 () Bool)

(assert (=> b!5352247 (=> (not res!2270901) (not e!3322467))))

(declare-fun lt!2181424 () Bool)

(assert (=> b!5352247 (= res!2270901 (not lt!2181424))))

(declare-fun b!5352248 () Bool)

(declare-fun e!3322462 () Bool)

(assert (=> b!5352248 (= e!3322462 (matchR!7226 (derivativeStep!4200 (regTwo!30594 r!7292) (head!11477 (_2!35543 (get!21086 lt!2181396)))) (tail!10574 (_2!35543 (get!21086 lt!2181396)))))))

(declare-fun bm!382664 () Bool)

(declare-fun call!382669 () Bool)

(assert (=> bm!382664 (= call!382669 (isEmpty!33277 (_2!35543 (get!21086 lt!2181396))))))

(declare-fun b!5352249 () Bool)

(declare-fun res!2270905 () Bool)

(assert (=> b!5352249 (=> res!2270905 e!3322466)))

(assert (=> b!5352249 (= res!2270905 e!3322464)))

(declare-fun res!2270900 () Bool)

(assert (=> b!5352249 (=> (not res!2270900) (not e!3322464))))

(assert (=> b!5352249 (= res!2270900 lt!2181424)))

(declare-fun d!1716006 () Bool)

(assert (=> d!1716006 e!3322461))

(declare-fun c!931856 () Bool)

(assert (=> d!1716006 (= c!931856 ((_ is EmptyExpr!15041) (regTwo!30594 r!7292)))))

(assert (=> d!1716006 (= lt!2181424 e!3322462)))

(declare-fun c!931857 () Bool)

(assert (=> d!1716006 (= c!931857 (isEmpty!33277 (_2!35543 (get!21086 lt!2181396))))))

(assert (=> d!1716006 (validRegex!6777 (regTwo!30594 r!7292))))

(assert (=> d!1716006 (= (matchR!7226 (regTwo!30594 r!7292) (_2!35543 (get!21086 lt!2181396))) lt!2181424)))

(declare-fun b!5352250 () Bool)

(assert (=> b!5352250 (= e!3322467 e!3322463)))

(declare-fun res!2270903 () Bool)

(assert (=> b!5352250 (=> res!2270903 e!3322463)))

(assert (=> b!5352250 (= res!2270903 call!382669)))

(declare-fun b!5352251 () Bool)

(declare-fun res!2270904 () Bool)

(assert (=> b!5352251 (=> res!2270904 e!3322463)))

(assert (=> b!5352251 (= res!2270904 (not (isEmpty!33277 (tail!10574 (_2!35543 (get!21086 lt!2181396))))))))

(declare-fun b!5352252 () Bool)

(declare-fun res!2270902 () Bool)

(assert (=> b!5352252 (=> (not res!2270902) (not e!3322464))))

(assert (=> b!5352252 (= res!2270902 (not call!382669))))

(declare-fun b!5352253 () Bool)

(declare-fun res!2270907 () Bool)

(assert (=> b!5352253 (=> (not res!2270907) (not e!3322464))))

(assert (=> b!5352253 (= res!2270907 (isEmpty!33277 (tail!10574 (_2!35543 (get!21086 lt!2181396)))))))

(declare-fun b!5352254 () Bool)

(assert (=> b!5352254 (= e!3322462 (nullable!5210 (regTwo!30594 r!7292)))))

(declare-fun b!5352255 () Bool)

(assert (=> b!5352255 (= e!3322465 (not lt!2181424))))

(declare-fun b!5352256 () Bool)

(assert (=> b!5352256 (= e!3322461 (= lt!2181424 call!382669))))

(assert (= (and d!1716006 c!931857) b!5352254))

(assert (= (and d!1716006 (not c!931857)) b!5352248))

(assert (= (and d!1716006 c!931856) b!5352256))

(assert (= (and d!1716006 (not c!931856)) b!5352246))

(assert (= (and b!5352246 c!931858) b!5352255))

(assert (= (and b!5352246 (not c!931858)) b!5352245))

(assert (= (and b!5352245 (not res!2270906)) b!5352249))

(assert (= (and b!5352249 res!2270900) b!5352252))

(assert (= (and b!5352252 res!2270902) b!5352253))

(assert (= (and b!5352253 res!2270907) b!5352244))

(assert (= (and b!5352249 (not res!2270905)) b!5352247))

(assert (= (and b!5352247 res!2270901) b!5352250))

(assert (= (and b!5352250 (not res!2270903)) b!5352251))

(assert (= (and b!5352251 (not res!2270904)) b!5352243))

(assert (= (or b!5352256 b!5352250 b!5352252) bm!382664))

(assert (=> b!5352254 m!6382728))

(declare-fun m!6383034 () Bool)

(assert (=> bm!382664 m!6383034))

(declare-fun m!6383036 () Bool)

(assert (=> b!5352244 m!6383036))

(declare-fun m!6383038 () Bool)

(assert (=> b!5352253 m!6383038))

(assert (=> b!5352253 m!6383038))

(declare-fun m!6383040 () Bool)

(assert (=> b!5352253 m!6383040))

(assert (=> b!5352243 m!6383036))

(assert (=> b!5352248 m!6383036))

(assert (=> b!5352248 m!6383036))

(declare-fun m!6383042 () Bool)

(assert (=> b!5352248 m!6383042))

(assert (=> b!5352248 m!6383038))

(assert (=> b!5352248 m!6383042))

(assert (=> b!5352248 m!6383038))

(declare-fun m!6383044 () Bool)

(assert (=> b!5352248 m!6383044))

(assert (=> b!5352251 m!6383038))

(assert (=> b!5352251 m!6383038))

(assert (=> b!5352251 m!6383040))

(assert (=> d!1716006 m!6383034))

(assert (=> d!1716006 m!6382734))

(assert (=> b!5351891 d!1716006))

(assert (=> b!5351891 d!1715882))

(declare-fun b!5352257 () Bool)

(declare-fun e!3322469 () Bool)

(declare-fun e!3322468 () Bool)

(assert (=> b!5352257 (= e!3322469 e!3322468)))

(declare-fun c!931860 () Bool)

(assert (=> b!5352257 (= c!931860 ((_ is Star!15041) lt!2181386))))

(declare-fun b!5352258 () Bool)

(declare-fun e!3322473 () Bool)

(assert (=> b!5352258 (= e!3322468 e!3322473)))

(declare-fun res!2270908 () Bool)

(assert (=> b!5352258 (= res!2270908 (not (nullable!5210 (reg!15370 lt!2181386))))))

(assert (=> b!5352258 (=> (not res!2270908) (not e!3322473))))

(declare-fun b!5352259 () Bool)

(declare-fun res!2270909 () Bool)

(declare-fun e!3322470 () Bool)

(assert (=> b!5352259 (=> (not res!2270909) (not e!3322470))))

(declare-fun call!382671 () Bool)

(assert (=> b!5352259 (= res!2270909 call!382671)))

(declare-fun e!3322474 () Bool)

(assert (=> b!5352259 (= e!3322474 e!3322470)))

(declare-fun bm!382665 () Bool)

(declare-fun c!931859 () Bool)

(assert (=> bm!382665 (= call!382671 (validRegex!6777 (ite c!931859 (regOne!30595 lt!2181386) (regOne!30594 lt!2181386))))))

(declare-fun b!5352260 () Bool)

(declare-fun res!2270910 () Bool)

(declare-fun e!3322471 () Bool)

(assert (=> b!5352260 (=> res!2270910 e!3322471)))

(assert (=> b!5352260 (= res!2270910 (not ((_ is Concat!23886) lt!2181386)))))

(assert (=> b!5352260 (= e!3322474 e!3322471)))

(declare-fun b!5352261 () Bool)

(declare-fun call!382672 () Bool)

(assert (=> b!5352261 (= e!3322473 call!382672)))

(declare-fun b!5352262 () Bool)

(declare-fun e!3322472 () Bool)

(assert (=> b!5352262 (= e!3322471 e!3322472)))

(declare-fun res!2270912 () Bool)

(assert (=> b!5352262 (=> (not res!2270912) (not e!3322472))))

(assert (=> b!5352262 (= res!2270912 call!382671)))

(declare-fun b!5352263 () Bool)

(assert (=> b!5352263 (= e!3322468 e!3322474)))

(assert (=> b!5352263 (= c!931859 ((_ is Union!15041) lt!2181386))))

(declare-fun bm!382666 () Bool)

(assert (=> bm!382666 (= call!382672 (validRegex!6777 (ite c!931860 (reg!15370 lt!2181386) (ite c!931859 (regTwo!30595 lt!2181386) (regTwo!30594 lt!2181386)))))))

(declare-fun b!5352264 () Bool)

(declare-fun call!382670 () Bool)

(assert (=> b!5352264 (= e!3322470 call!382670)))

(declare-fun d!1716010 () Bool)

(declare-fun res!2270911 () Bool)

(assert (=> d!1716010 (=> res!2270911 e!3322469)))

(assert (=> d!1716010 (= res!2270911 ((_ is ElementMatch!15041) lt!2181386))))

(assert (=> d!1716010 (= (validRegex!6777 lt!2181386) e!3322469)))

(declare-fun bm!382667 () Bool)

(assert (=> bm!382667 (= call!382670 call!382672)))

(declare-fun b!5352265 () Bool)

(assert (=> b!5352265 (= e!3322472 call!382670)))

(assert (= (and d!1716010 (not res!2270911)) b!5352257))

(assert (= (and b!5352257 c!931860) b!5352258))

(assert (= (and b!5352257 (not c!931860)) b!5352263))

(assert (= (and b!5352258 res!2270908) b!5352261))

(assert (= (and b!5352263 c!931859) b!5352259))

(assert (= (and b!5352263 (not c!931859)) b!5352260))

(assert (= (and b!5352259 res!2270909) b!5352264))

(assert (= (and b!5352260 (not res!2270910)) b!5352262))

(assert (= (and b!5352262 res!2270912) b!5352265))

(assert (= (or b!5352264 b!5352265) bm!382667))

(assert (= (or b!5352259 b!5352262) bm!382665))

(assert (= (or b!5352261 bm!382667) bm!382666))

(declare-fun m!6383046 () Bool)

(assert (=> b!5352258 m!6383046))

(declare-fun m!6383048 () Bool)

(assert (=> bm!382665 m!6383048))

(declare-fun m!6383050 () Bool)

(assert (=> bm!382666 m!6383050))

(assert (=> d!1715830 d!1716010))

(declare-fun d!1716014 () Bool)

(declare-fun res!2270913 () Bool)

(declare-fun e!3322475 () Bool)

(assert (=> d!1716014 (=> res!2270913 e!3322475)))

(assert (=> d!1716014 (= res!2270913 ((_ is Nil!61298) (exprs!4925 (h!67747 zl!343))))))

(assert (=> d!1716014 (= (forall!14467 (exprs!4925 (h!67747 zl!343)) lambda!275155) e!3322475)))

(declare-fun b!5352266 () Bool)

(declare-fun e!3322476 () Bool)

(assert (=> b!5352266 (= e!3322475 e!3322476)))

(declare-fun res!2270914 () Bool)

(assert (=> b!5352266 (=> (not res!2270914) (not e!3322476))))

(assert (=> b!5352266 (= res!2270914 (dynLambda!24230 lambda!275155 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352267 () Bool)

(assert (=> b!5352267 (= e!3322476 (forall!14467 (t!374639 (exprs!4925 (h!67747 zl!343))) lambda!275155))))

(assert (= (and d!1716014 (not res!2270913)) b!5352266))

(assert (= (and b!5352266 res!2270914) b!5352267))

(declare-fun b_lambda!205337 () Bool)

(assert (=> (not b_lambda!205337) (not b!5352266)))

(declare-fun m!6383052 () Bool)

(assert (=> b!5352266 m!6383052))

(declare-fun m!6383054 () Bool)

(assert (=> b!5352267 m!6383054))

(assert (=> d!1715830 d!1716014))

(declare-fun bs!1240671 () Bool)

(declare-fun d!1716016 () Bool)

(assert (= bs!1240671 (and d!1716016 d!1715912)))

(declare-fun lambda!275184 () Int)

(assert (=> bs!1240671 (= lambda!275184 lambda!275172)))

(declare-fun bs!1240672 () Bool)

(assert (= bs!1240672 (and d!1716016 d!1715954)))

(assert (=> bs!1240672 (= lambda!275184 lambda!275180)))

(assert (=> d!1716016 (= (nullableZipper!1379 ((_ map or) lt!2181320 lt!2181309)) (exists!2016 ((_ map or) lt!2181320 lt!2181309) lambda!275184))))

(declare-fun bs!1240674 () Bool)

(assert (= bs!1240674 d!1716016))

(declare-fun m!6383056 () Bool)

(assert (=> bs!1240674 m!6383056))

(assert (=> b!5351373 d!1716016))

(declare-fun b!5352268 () Bool)

(declare-fun e!3322478 () Bool)

(declare-fun e!3322477 () Bool)

(assert (=> b!5352268 (= e!3322478 e!3322477)))

(declare-fun c!931862 () Bool)

(assert (=> b!5352268 (= c!931862 ((_ is Star!15041) (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))))))

(declare-fun b!5352269 () Bool)

(declare-fun e!3322482 () Bool)

(assert (=> b!5352269 (= e!3322477 e!3322482)))

(declare-fun res!2270915 () Bool)

(assert (=> b!5352269 (= res!2270915 (not (nullable!5210 (reg!15370 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))))))))

(assert (=> b!5352269 (=> (not res!2270915) (not e!3322482))))

(declare-fun b!5352270 () Bool)

(declare-fun res!2270916 () Bool)

(declare-fun e!3322479 () Bool)

(assert (=> b!5352270 (=> (not res!2270916) (not e!3322479))))

(declare-fun call!382674 () Bool)

(assert (=> b!5352270 (= res!2270916 call!382674)))

(declare-fun e!3322483 () Bool)

(assert (=> b!5352270 (= e!3322483 e!3322479)))

(declare-fun bm!382668 () Bool)

(declare-fun c!931861 () Bool)

(assert (=> bm!382668 (= call!382674 (validRegex!6777 (ite c!931861 (regOne!30595 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))) (regOne!30594 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))))))))

(declare-fun b!5352271 () Bool)

(declare-fun res!2270917 () Bool)

(declare-fun e!3322480 () Bool)

(assert (=> b!5352271 (=> res!2270917 e!3322480)))

(assert (=> b!5352271 (= res!2270917 (not ((_ is Concat!23886) (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292)))))))

(assert (=> b!5352271 (= e!3322483 e!3322480)))

(declare-fun b!5352272 () Bool)

(declare-fun call!382675 () Bool)

(assert (=> b!5352272 (= e!3322482 call!382675)))

(declare-fun b!5352273 () Bool)

(declare-fun e!3322481 () Bool)

(assert (=> b!5352273 (= e!3322480 e!3322481)))

(declare-fun res!2270919 () Bool)

(assert (=> b!5352273 (=> (not res!2270919) (not e!3322481))))

(assert (=> b!5352273 (= res!2270919 call!382674)))

(declare-fun b!5352274 () Bool)

(assert (=> b!5352274 (= e!3322477 e!3322483)))

(assert (=> b!5352274 (= c!931861 ((_ is Union!15041) (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))))))

(declare-fun bm!382669 () Bool)

(assert (=> bm!382669 (= call!382675 (validRegex!6777 (ite c!931862 (reg!15370 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))) (ite c!931861 (regTwo!30595 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))) (regTwo!30594 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292)))))))))

(declare-fun b!5352275 () Bool)

(declare-fun call!382673 () Bool)

(assert (=> b!5352275 (= e!3322479 call!382673)))

(declare-fun d!1716018 () Bool)

(declare-fun res!2270918 () Bool)

(assert (=> d!1716018 (=> res!2270918 e!3322478)))

(assert (=> d!1716018 (= res!2270918 ((_ is ElementMatch!15041) (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))))))

(assert (=> d!1716018 (= (validRegex!6777 (ite c!931756 (regOne!30595 r!7292) (regOne!30594 r!7292))) e!3322478)))

(declare-fun bm!382670 () Bool)

(assert (=> bm!382670 (= call!382673 call!382675)))

(declare-fun b!5352276 () Bool)

(assert (=> b!5352276 (= e!3322481 call!382673)))

(assert (= (and d!1716018 (not res!2270918)) b!5352268))

(assert (= (and b!5352268 c!931862) b!5352269))

(assert (= (and b!5352268 (not c!931862)) b!5352274))

(assert (= (and b!5352269 res!2270915) b!5352272))

(assert (= (and b!5352274 c!931861) b!5352270))

(assert (= (and b!5352274 (not c!931861)) b!5352271))

(assert (= (and b!5352270 res!2270916) b!5352275))

(assert (= (and b!5352271 (not res!2270917)) b!5352273))

(assert (= (and b!5352273 res!2270919) b!5352276))

(assert (= (or b!5352275 b!5352276) bm!382670))

(assert (= (or b!5352270 b!5352273) bm!382668))

(assert (= (or b!5352272 bm!382670) bm!382669))

(declare-fun m!6383060 () Bool)

(assert (=> b!5352269 m!6383060))

(declare-fun m!6383062 () Bool)

(assert (=> bm!382668 m!6383062))

(declare-fun m!6383064 () Bool)

(assert (=> bm!382669 m!6383064))

(assert (=> bm!382599 d!1716018))

(declare-fun b!5352286 () Bool)

(declare-fun e!3322492 () Bool)

(declare-fun e!3322491 () Bool)

(assert (=> b!5352286 (= e!3322492 e!3322491)))

(declare-fun c!931866 () Bool)

(assert (=> b!5352286 (= c!931866 ((_ is Star!15041) lt!2181362))))

(declare-fun b!5352287 () Bool)

(declare-fun e!3322496 () Bool)

(assert (=> b!5352287 (= e!3322491 e!3322496)))

(declare-fun res!2270925 () Bool)

(assert (=> b!5352287 (= res!2270925 (not (nullable!5210 (reg!15370 lt!2181362))))))

(assert (=> b!5352287 (=> (not res!2270925) (not e!3322496))))

(declare-fun b!5352288 () Bool)

(declare-fun res!2270926 () Bool)

(declare-fun e!3322493 () Bool)

(assert (=> b!5352288 (=> (not res!2270926) (not e!3322493))))

(declare-fun call!382680 () Bool)

(assert (=> b!5352288 (= res!2270926 call!382680)))

(declare-fun e!3322497 () Bool)

(assert (=> b!5352288 (= e!3322497 e!3322493)))

(declare-fun bm!382674 () Bool)

(declare-fun c!931865 () Bool)

(assert (=> bm!382674 (= call!382680 (validRegex!6777 (ite c!931865 (regOne!30595 lt!2181362) (regOne!30594 lt!2181362))))))

(declare-fun b!5352289 () Bool)

(declare-fun res!2270927 () Bool)

(declare-fun e!3322494 () Bool)

(assert (=> b!5352289 (=> res!2270927 e!3322494)))

(assert (=> b!5352289 (= res!2270927 (not ((_ is Concat!23886) lt!2181362)))))

(assert (=> b!5352289 (= e!3322497 e!3322494)))

(declare-fun b!5352290 () Bool)

(declare-fun call!382681 () Bool)

(assert (=> b!5352290 (= e!3322496 call!382681)))

(declare-fun b!5352291 () Bool)

(declare-fun e!3322495 () Bool)

(assert (=> b!5352291 (= e!3322494 e!3322495)))

(declare-fun res!2270929 () Bool)

(assert (=> b!5352291 (=> (not res!2270929) (not e!3322495))))

(assert (=> b!5352291 (= res!2270929 call!382680)))

(declare-fun b!5352292 () Bool)

(assert (=> b!5352292 (= e!3322491 e!3322497)))

(assert (=> b!5352292 (= c!931865 ((_ is Union!15041) lt!2181362))))

(declare-fun bm!382675 () Bool)

(assert (=> bm!382675 (= call!382681 (validRegex!6777 (ite c!931866 (reg!15370 lt!2181362) (ite c!931865 (regTwo!30595 lt!2181362) (regTwo!30594 lt!2181362)))))))

(declare-fun b!5352293 () Bool)

(declare-fun call!382679 () Bool)

(assert (=> b!5352293 (= e!3322493 call!382679)))

(declare-fun d!1716022 () Bool)

(declare-fun res!2270928 () Bool)

(assert (=> d!1716022 (=> res!2270928 e!3322492)))

(assert (=> d!1716022 (= res!2270928 ((_ is ElementMatch!15041) lt!2181362))))

(assert (=> d!1716022 (= (validRegex!6777 lt!2181362) e!3322492)))

(declare-fun bm!382676 () Bool)

(assert (=> bm!382676 (= call!382679 call!382681)))

(declare-fun b!5352294 () Bool)

(assert (=> b!5352294 (= e!3322495 call!382679)))

(assert (= (and d!1716022 (not res!2270928)) b!5352286))

(assert (= (and b!5352286 c!931866) b!5352287))

(assert (= (and b!5352286 (not c!931866)) b!5352292))

(assert (= (and b!5352287 res!2270925) b!5352290))

(assert (= (and b!5352292 c!931865) b!5352288))

(assert (= (and b!5352292 (not c!931865)) b!5352289))

(assert (= (and b!5352288 res!2270926) b!5352293))

(assert (= (and b!5352289 (not res!2270927)) b!5352291))

(assert (= (and b!5352291 res!2270929) b!5352294))

(assert (= (or b!5352293 b!5352294) bm!382676))

(assert (= (or b!5352288 b!5352291) bm!382674))

(assert (= (or b!5352290 bm!382676) bm!382675))

(declare-fun m!6383066 () Bool)

(assert (=> b!5352287 m!6383066))

(declare-fun m!6383068 () Bool)

(assert (=> bm!382674 m!6383068))

(declare-fun m!6383070 () Bool)

(assert (=> bm!382675 m!6383070))

(assert (=> d!1715772 d!1716022))

(assert (=> d!1715772 d!1715758))

(assert (=> d!1715772 d!1715764))

(declare-fun d!1716024 () Bool)

(assert (=> d!1716024 (= (isEmpty!33277 (tail!10574 s!2326)) ((_ is Nil!61300) (tail!10574 s!2326)))))

(assert (=> b!5351596 d!1716024))

(assert (=> b!5351596 d!1715952))

(assert (=> b!5351789 d!1715778))

(declare-fun b!5352319 () Bool)

(declare-fun e!3322518 () Bool)

(declare-fun e!3322516 () Bool)

(assert (=> b!5352319 (= e!3322518 e!3322516)))

(declare-fun res!2270946 () Bool)

(assert (=> b!5352319 (=> (not res!2270946) (not e!3322516))))

(assert (=> b!5352319 (= res!2270946 (and (not ((_ is EmptyLang!15041) (h!67746 (exprs!4925 (h!67747 zl!343))))) (not ((_ is ElementMatch!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun b!5352320 () Bool)

(declare-fun e!3322521 () Bool)

(declare-fun e!3322520 () Bool)

(assert (=> b!5352320 (= e!3322521 e!3322520)))

(declare-fun c!931873 () Bool)

(assert (=> b!5352320 (= c!931873 ((_ is Union!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun d!1716026 () Bool)

(declare-fun res!2270943 () Bool)

(assert (=> d!1716026 (=> res!2270943 e!3322518)))

(assert (=> d!1716026 (= res!2270943 ((_ is EmptyExpr!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> d!1716026 (= (nullableFct!1531 (h!67746 (exprs!4925 (h!67747 zl!343)))) e!3322518)))

(declare-fun b!5352321 () Bool)

(declare-fun e!3322517 () Bool)

(declare-fun call!382687 () Bool)

(assert (=> b!5352321 (= e!3322517 call!382687)))

(declare-fun b!5352322 () Bool)

(declare-fun e!3322519 () Bool)

(assert (=> b!5352322 (= e!3322519 call!382687)))

(declare-fun bm!382681 () Bool)

(assert (=> bm!382681 (= call!382687 (nullable!5210 (ite c!931873 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun b!5352323 () Bool)

(assert (=> b!5352323 (= e!3322516 e!3322521)))

(declare-fun res!2270944 () Bool)

(assert (=> b!5352323 (=> res!2270944 e!3322521)))

(assert (=> b!5352323 (= res!2270944 ((_ is Star!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352324 () Bool)

(assert (=> b!5352324 (= e!3322520 e!3322519)))

(declare-fun res!2270945 () Bool)

(declare-fun call!382686 () Bool)

(assert (=> b!5352324 (= res!2270945 call!382686)))

(assert (=> b!5352324 (=> res!2270945 e!3322519)))

(declare-fun bm!382682 () Bool)

(assert (=> bm!382682 (= call!382686 (nullable!5210 (ite c!931873 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun b!5352325 () Bool)

(assert (=> b!5352325 (= e!3322520 e!3322517)))

(declare-fun res!2270942 () Bool)

(assert (=> b!5352325 (= res!2270942 call!382686)))

(assert (=> b!5352325 (=> (not res!2270942) (not e!3322517))))

(assert (= (and d!1716026 (not res!2270943)) b!5352319))

(assert (= (and b!5352319 res!2270946) b!5352323))

(assert (= (and b!5352323 (not res!2270944)) b!5352320))

(assert (= (and b!5352320 c!931873) b!5352324))

(assert (= (and b!5352320 (not c!931873)) b!5352325))

(assert (= (and b!5352324 (not res!2270945)) b!5352322))

(assert (= (and b!5352325 res!2270942) b!5352321))

(assert (= (or b!5352322 b!5352321) bm!382681))

(assert (= (or b!5352324 b!5352325) bm!382682))

(declare-fun m!6383096 () Bool)

(assert (=> bm!382681 m!6383096))

(declare-fun m!6383098 () Bool)

(assert (=> bm!382682 m!6383098))

(assert (=> d!1715794 d!1716026))

(declare-fun b!5352335 () Bool)

(declare-fun e!3322531 () Bool)

(assert (=> b!5352335 (= e!3322531 (not (= (head!11477 (_1!35543 (get!21086 lt!2181396))) (c!931579 (regOne!30594 r!7292)))))))

(declare-fun b!5352336 () Bool)

(declare-fun e!3322532 () Bool)

(assert (=> b!5352336 (= e!3322532 (= (head!11477 (_1!35543 (get!21086 lt!2181396))) (c!931579 (regOne!30594 r!7292))))))

(declare-fun b!5352337 () Bool)

(declare-fun res!2270958 () Bool)

(declare-fun e!3322534 () Bool)

(assert (=> b!5352337 (=> res!2270958 e!3322534)))

(assert (=> b!5352337 (= res!2270958 (not ((_ is ElementMatch!15041) (regOne!30594 r!7292))))))

(declare-fun e!3322533 () Bool)

(assert (=> b!5352337 (= e!3322533 e!3322534)))

(declare-fun b!5352338 () Bool)

(declare-fun e!3322529 () Bool)

(assert (=> b!5352338 (= e!3322529 e!3322533)))

(declare-fun c!931878 () Bool)

(assert (=> b!5352338 (= c!931878 ((_ is EmptyLang!15041) (regOne!30594 r!7292)))))

(declare-fun b!5352339 () Bool)

(declare-fun e!3322535 () Bool)

(assert (=> b!5352339 (= e!3322534 e!3322535)))

(declare-fun res!2270953 () Bool)

(assert (=> b!5352339 (=> (not res!2270953) (not e!3322535))))

(declare-fun lt!2181426 () Bool)

(assert (=> b!5352339 (= res!2270953 (not lt!2181426))))

(declare-fun b!5352340 () Bool)

(declare-fun e!3322530 () Bool)

(assert (=> b!5352340 (= e!3322530 (matchR!7226 (derivativeStep!4200 (regOne!30594 r!7292) (head!11477 (_1!35543 (get!21086 lt!2181396)))) (tail!10574 (_1!35543 (get!21086 lt!2181396)))))))

(declare-fun bm!382686 () Bool)

(declare-fun call!382691 () Bool)

(assert (=> bm!382686 (= call!382691 (isEmpty!33277 (_1!35543 (get!21086 lt!2181396))))))

(declare-fun b!5352341 () Bool)

(declare-fun res!2270957 () Bool)

(assert (=> b!5352341 (=> res!2270957 e!3322534)))

(assert (=> b!5352341 (= res!2270957 e!3322532)))

(declare-fun res!2270952 () Bool)

(assert (=> b!5352341 (=> (not res!2270952) (not e!3322532))))

(assert (=> b!5352341 (= res!2270952 lt!2181426)))

(declare-fun d!1716034 () Bool)

(assert (=> d!1716034 e!3322529))

(declare-fun c!931876 () Bool)

(assert (=> d!1716034 (= c!931876 ((_ is EmptyExpr!15041) (regOne!30594 r!7292)))))

(assert (=> d!1716034 (= lt!2181426 e!3322530)))

(declare-fun c!931877 () Bool)

(assert (=> d!1716034 (= c!931877 (isEmpty!33277 (_1!35543 (get!21086 lt!2181396))))))

(assert (=> d!1716034 (validRegex!6777 (regOne!30594 r!7292))))

(assert (=> d!1716034 (= (matchR!7226 (regOne!30594 r!7292) (_1!35543 (get!21086 lt!2181396))) lt!2181426)))

(declare-fun b!5352342 () Bool)

(assert (=> b!5352342 (= e!3322535 e!3322531)))

(declare-fun res!2270955 () Bool)

(assert (=> b!5352342 (=> res!2270955 e!3322531)))

(assert (=> b!5352342 (= res!2270955 call!382691)))

(declare-fun b!5352343 () Bool)

(declare-fun res!2270956 () Bool)

(assert (=> b!5352343 (=> res!2270956 e!3322531)))

(assert (=> b!5352343 (= res!2270956 (not (isEmpty!33277 (tail!10574 (_1!35543 (get!21086 lt!2181396))))))))

(declare-fun b!5352344 () Bool)

(declare-fun res!2270954 () Bool)

(assert (=> b!5352344 (=> (not res!2270954) (not e!3322532))))

(assert (=> b!5352344 (= res!2270954 (not call!382691))))

(declare-fun b!5352345 () Bool)

(declare-fun res!2270959 () Bool)

(assert (=> b!5352345 (=> (not res!2270959) (not e!3322532))))

(assert (=> b!5352345 (= res!2270959 (isEmpty!33277 (tail!10574 (_1!35543 (get!21086 lt!2181396)))))))

(declare-fun b!5352346 () Bool)

(assert (=> b!5352346 (= e!3322530 (nullable!5210 (regOne!30594 r!7292)))))

(declare-fun b!5352347 () Bool)

(assert (=> b!5352347 (= e!3322533 (not lt!2181426))))

(declare-fun b!5352348 () Bool)

(assert (=> b!5352348 (= e!3322529 (= lt!2181426 call!382691))))

(assert (= (and d!1716034 c!931877) b!5352346))

(assert (= (and d!1716034 (not c!931877)) b!5352340))

(assert (= (and d!1716034 c!931876) b!5352348))

(assert (= (and d!1716034 (not c!931876)) b!5352338))

(assert (= (and b!5352338 c!931878) b!5352347))

(assert (= (and b!5352338 (not c!931878)) b!5352337))

(assert (= (and b!5352337 (not res!2270958)) b!5352341))

(assert (= (and b!5352341 res!2270952) b!5352344))

(assert (= (and b!5352344 res!2270954) b!5352345))

(assert (= (and b!5352345 res!2270959) b!5352336))

(assert (= (and b!5352341 (not res!2270957)) b!5352339))

(assert (= (and b!5352339 res!2270953) b!5352342))

(assert (= (and b!5352342 (not res!2270955)) b!5352343))

(assert (= (and b!5352343 (not res!2270956)) b!5352335))

(assert (= (or b!5352348 b!5352342 b!5352344) bm!382686))

(assert (=> b!5352346 m!6382736))

(declare-fun m!6383106 () Bool)

(assert (=> bm!382686 m!6383106))

(declare-fun m!6383108 () Bool)

(assert (=> b!5352336 m!6383108))

(declare-fun m!6383110 () Bool)

(assert (=> b!5352345 m!6383110))

(assert (=> b!5352345 m!6383110))

(declare-fun m!6383112 () Bool)

(assert (=> b!5352345 m!6383112))

(assert (=> b!5352335 m!6383108))

(assert (=> b!5352340 m!6383108))

(assert (=> b!5352340 m!6383108))

(declare-fun m!6383116 () Bool)

(assert (=> b!5352340 m!6383116))

(assert (=> b!5352340 m!6383110))

(assert (=> b!5352340 m!6383116))

(assert (=> b!5352340 m!6383110))

(declare-fun m!6383118 () Bool)

(assert (=> b!5352340 m!6383118))

(assert (=> b!5352343 m!6383110))

(assert (=> b!5352343 m!6383110))

(assert (=> b!5352343 m!6383112))

(assert (=> d!1716034 m!6383106))

(assert (=> d!1716034 m!6382678))

(assert (=> b!5351887 d!1716034))

(assert (=> b!5351887 d!1715882))

(assert (=> d!1715792 d!1715788))

(assert (=> d!1715792 d!1715780))

(declare-fun d!1716040 () Bool)

(assert (=> d!1716040 (= (matchR!7226 r!7292 s!2326) (matchRSpec!2144 r!7292 s!2326))))

(assert (=> d!1716040 true))

(declare-fun _$88!3641 () Unit!153682)

(assert (=> d!1716040 (= (choose!40156 r!7292 s!2326) _$88!3641)))

(declare-fun bs!1240685 () Bool)

(assert (= bs!1240685 d!1716040))

(assert (=> bs!1240685 m!6382312))

(assert (=> bs!1240685 m!6382310))

(assert (=> d!1715792 d!1716040))

(assert (=> d!1715792 d!1715836))

(assert (=> d!1715748 d!1715752))

(assert (=> d!1715748 d!1715750))

(declare-fun e!3322538 () Bool)

(declare-fun d!1716042 () Bool)

(assert (=> d!1716042 (= (matchZipper!1285 ((_ map or) lt!2181320 lt!2181309) (t!374641 s!2326)) e!3322538)))

(declare-fun res!2270962 () Bool)

(assert (=> d!1716042 (=> res!2270962 e!3322538)))

(assert (=> d!1716042 (= res!2270962 (matchZipper!1285 lt!2181320 (t!374641 s!2326)))))

(assert (=> d!1716042 true))

(declare-fun _$48!1018 () Unit!153682)

(assert (=> d!1716042 (= (choose!40150 lt!2181320 lt!2181309 (t!374641 s!2326)) _$48!1018)))

(declare-fun b!5352351 () Bool)

(assert (=> b!5352351 (= e!3322538 (matchZipper!1285 lt!2181309 (t!374641 s!2326)))))

(assert (= (and d!1716042 (not res!2270962)) b!5352351))

(assert (=> d!1716042 m!6382294))

(assert (=> d!1716042 m!6382292))

(assert (=> b!5352351 m!6382306))

(assert (=> d!1715748 d!1716042))

(assert (=> b!5351594 d!1716024))

(assert (=> b!5351594 d!1715952))

(declare-fun d!1716044 () Bool)

(declare-fun c!931879 () Bool)

(assert (=> d!1716044 (= c!931879 (isEmpty!33277 (tail!10574 (t!374641 s!2326))))))

(declare-fun e!3322539 () Bool)

(assert (=> d!1716044 (= (matchZipper!1285 (derivationStepZipper!1281 lt!2181320 (head!11477 (t!374641 s!2326))) (tail!10574 (t!374641 s!2326))) e!3322539)))

(declare-fun b!5352352 () Bool)

(assert (=> b!5352352 (= e!3322539 (nullableZipper!1379 (derivationStepZipper!1281 lt!2181320 (head!11477 (t!374641 s!2326)))))))

(declare-fun b!5352353 () Bool)

(assert (=> b!5352353 (= e!3322539 (matchZipper!1285 (derivationStepZipper!1281 (derivationStepZipper!1281 lt!2181320 (head!11477 (t!374641 s!2326))) (head!11477 (tail!10574 (t!374641 s!2326)))) (tail!10574 (tail!10574 (t!374641 s!2326)))))))

(assert (= (and d!1716044 c!931879) b!5352352))

(assert (= (and d!1716044 (not c!931879)) b!5352353))

(assert (=> d!1716044 m!6382392))

(assert (=> d!1716044 m!6382714))

(assert (=> b!5352352 m!6382390))

(declare-fun m!6383120 () Bool)

(assert (=> b!5352352 m!6383120))

(assert (=> b!5352353 m!6382392))

(assert (=> b!5352353 m!6382718))

(assert (=> b!5352353 m!6382390))

(assert (=> b!5352353 m!6382718))

(declare-fun m!6383122 () Bool)

(assert (=> b!5352353 m!6383122))

(assert (=> b!5352353 m!6382392))

(assert (=> b!5352353 m!6382722))

(assert (=> b!5352353 m!6383122))

(assert (=> b!5352353 m!6382722))

(declare-fun m!6383124 () Bool)

(assert (=> b!5352353 m!6383124))

(assert (=> b!5351372 d!1716044))

(declare-fun bs!1240686 () Bool)

(declare-fun d!1716046 () Bool)

(assert (= bs!1240686 (and d!1716046 b!5351238)))

(declare-fun lambda!275186 () Int)

(assert (=> bs!1240686 (= (= (head!11477 (t!374641 s!2326)) (h!67748 s!2326)) (= lambda!275186 lambda!275109))))

(declare-fun bs!1240687 () Bool)

(assert (= bs!1240687 (and d!1716046 d!1715862)))

(assert (=> bs!1240687 (= lambda!275186 lambda!275168)))

(declare-fun bs!1240688 () Bool)

(assert (= bs!1240688 (and d!1716046 d!1715908)))

(assert (=> bs!1240688 (= lambda!275186 lambda!275169)))

(assert (=> d!1716046 true))

(assert (=> d!1716046 (= (derivationStepZipper!1281 lt!2181320 (head!11477 (t!374641 s!2326))) (flatMap!768 lt!2181320 lambda!275186))))

(declare-fun bs!1240689 () Bool)

(assert (= bs!1240689 d!1716046))

(declare-fun m!6383126 () Bool)

(assert (=> bs!1240689 m!6383126))

(assert (=> b!5351372 d!1716046))

(assert (=> b!5351372 d!1715864))

(assert (=> b!5351372 d!1715866))

(assert (=> b!5351424 d!1715830))

(declare-fun bs!1240690 () Bool)

(declare-fun d!1716048 () Bool)

(assert (= bs!1240690 (and d!1716048 d!1715764)))

(declare-fun lambda!275189 () Int)

(assert (=> bs!1240690 (= lambda!275189 lambda!275134)))

(declare-fun bs!1240691 () Bool)

(assert (= bs!1240691 (and d!1716048 d!1715746)))

(assert (=> bs!1240691 (= lambda!275189 lambda!275124)))

(declare-fun bs!1240692 () Bool)

(assert (= bs!1240692 (and d!1716048 d!1715756)))

(assert (=> bs!1240692 (= lambda!275189 lambda!275125)))

(declare-fun bs!1240693 () Bool)

(assert (= bs!1240693 (and d!1716048 d!1715758)))

(assert (=> bs!1240693 (= lambda!275189 lambda!275130)))

(declare-fun bs!1240694 () Bool)

(assert (= bs!1240694 (and d!1716048 d!1715938)))

(assert (=> bs!1240694 (= lambda!275189 lambda!275177)))

(declare-fun bs!1240695 () Bool)

(assert (= bs!1240695 (and d!1716048 d!1715996)))

(assert (=> bs!1240695 (= lambda!275189 lambda!275182)))

(declare-fun bs!1240696 () Bool)

(assert (= bs!1240696 (and d!1716048 d!1715830)))

(assert (=> bs!1240696 (= lambda!275189 lambda!275155)))

(declare-fun lt!2181427 () List!61422)

(assert (=> d!1716048 (forall!14467 lt!2181427 lambda!275189)))

(declare-fun e!3322540 () List!61422)

(assert (=> d!1716048 (= lt!2181427 e!3322540)))

(declare-fun c!931880 () Bool)

(assert (=> d!1716048 (= c!931880 ((_ is Cons!61299) (t!374640 zl!343)))))

(assert (=> d!1716048 (= (unfocusZipperList!483 (t!374640 zl!343)) lt!2181427)))

(declare-fun b!5352354 () Bool)

(assert (=> b!5352354 (= e!3322540 (Cons!61298 (generalisedConcat!710 (exprs!4925 (h!67747 (t!374640 zl!343)))) (unfocusZipperList!483 (t!374640 (t!374640 zl!343)))))))

(declare-fun b!5352355 () Bool)

(assert (=> b!5352355 (= e!3322540 Nil!61298)))

(assert (= (and d!1716048 c!931880) b!5352354))

(assert (= (and d!1716048 (not c!931880)) b!5352355))

(declare-fun m!6383128 () Bool)

(assert (=> d!1716048 m!6383128))

(declare-fun m!6383130 () Bool)

(assert (=> b!5352354 m!6383130))

(declare-fun m!6383132 () Bool)

(assert (=> b!5352354 m!6383132))

(assert (=> b!5351424 d!1716048))

(declare-fun d!1716050 () Bool)

(assert (=> d!1716050 (= (nullable!5210 (h!67746 (exprs!4925 lt!2181316))) (nullableFct!1531 (h!67746 (exprs!4925 lt!2181316))))))

(declare-fun bs!1240697 () Bool)

(assert (= bs!1240697 d!1716050))

(declare-fun m!6383134 () Bool)

(assert (=> bs!1240697 m!6383134))

(assert (=> b!5351658 d!1716050))

(declare-fun b!5352360 () Bool)

(declare-fun e!3322546 () (InoxSet Context!8850))

(declare-fun call!382693 () (InoxSet Context!8850))

(assert (=> b!5352360 (= e!3322546 call!382693)))

(declare-fun b!5352361 () Bool)

(declare-fun c!931885 () Bool)

(declare-fun e!3322544 () Bool)

(assert (=> b!5352361 (= c!931885 e!3322544)))

(declare-fun res!2270967 () Bool)

(assert (=> b!5352361 (=> (not res!2270967) (not e!3322544))))

(assert (=> b!5352361 (= res!2270967 ((_ is Concat!23886) (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun e!3322545 () (InoxSet Context!8850))

(declare-fun e!3322547 () (InoxSet Context!8850))

(assert (=> b!5352361 (= e!3322545 e!3322547)))

(declare-fun bm!382687 () Bool)

(declare-fun call!382694 () (InoxSet Context!8850))

(declare-fun call!382692 () List!61422)

(declare-fun c!931881 () Bool)

(declare-fun c!931882 () Bool)

(assert (=> bm!382687 (= call!382694 (derivationStepZipperDown!489 (ite c!931881 (regOne!30595 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (ite c!931885 (regTwo!30594 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (ite c!931882 (regOne!30594 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (reg!15370 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))))))) (ite (or c!931881 c!931885) (ite (or c!931722 c!931726) lt!2181316 (Context!8851 call!382579)) (Context!8851 call!382692)) (h!67748 s!2326)))))

(declare-fun b!5352362 () Bool)

(declare-fun e!3322543 () (InoxSet Context!8850))

(assert (=> b!5352362 (= e!3322543 e!3322545)))

(assert (=> b!5352362 (= c!931881 ((_ is Union!15041) (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun b!5352363 () Bool)

(assert (=> b!5352363 (= e!3322544 (nullable!5210 (regOne!30594 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))))))))

(declare-fun bm!382688 () Bool)

(declare-fun call!382697 () (InoxSet Context!8850))

(assert (=> bm!382688 (= call!382697 call!382694)))

(declare-fun bm!382689 () Bool)

(assert (=> bm!382689 (= call!382693 call!382697)))

(declare-fun call!382695 () List!61422)

(declare-fun call!382696 () (InoxSet Context!8850))

(declare-fun bm!382690 () Bool)

(assert (=> bm!382690 (= call!382696 (derivationStepZipperDown!489 (ite c!931881 (regTwo!30595 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (regOne!30594 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))))) (ite c!931881 (ite (or c!931722 c!931726) lt!2181316 (Context!8851 call!382579)) (Context!8851 call!382695)) (h!67748 s!2326)))))

(declare-fun b!5352365 () Bool)

(assert (=> b!5352365 (= e!3322545 ((_ map or) call!382694 call!382696))))

(declare-fun b!5352366 () Bool)

(assert (=> b!5352366 (= e!3322547 ((_ map or) call!382696 call!382697))))

(declare-fun bm!382691 () Bool)

(assert (=> bm!382691 (= call!382695 ($colon$colon!1429 (exprs!4925 (ite (or c!931722 c!931726) lt!2181316 (Context!8851 call!382579))) (ite (or c!931885 c!931882) (regTwo!30594 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))))))))

(declare-fun bm!382692 () Bool)

(assert (=> bm!382692 (= call!382692 call!382695)))

(declare-fun b!5352367 () Bool)

(declare-fun e!3322548 () (InoxSet Context!8850))

(assert (=> b!5352367 (= e!3322548 ((as const (Array Context!8850 Bool)) false))))

(declare-fun c!931883 () Bool)

(declare-fun b!5352368 () Bool)

(assert (=> b!5352368 (= c!931883 ((_ is Star!15041) (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))))

(assert (=> b!5352368 (= e!3322546 e!3322548)))

(declare-fun b!5352369 () Bool)

(assert (=> b!5352369 (= e!3322547 e!3322546)))

(assert (=> b!5352369 (= c!931882 ((_ is Concat!23886) (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun b!5352370 () Bool)

(assert (=> b!5352370 (= e!3322548 call!382693)))

(declare-fun b!5352364 () Bool)

(assert (=> b!5352364 (= e!3322543 (store ((as const (Array Context!8850 Bool)) false) (ite (or c!931722 c!931726) lt!2181316 (Context!8851 call!382579)) true))))

(declare-fun d!1716052 () Bool)

(declare-fun c!931884 () Bool)

(assert (=> d!1716052 (= c!931884 (and ((_ is ElementMatch!15041) (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (= (c!931579 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343)))))))) (h!67748 s!2326))))))

(assert (=> d!1716052 (= (derivationStepZipperDown!489 (ite c!931722 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931726 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931723 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))) (ite (or c!931722 c!931726) lt!2181316 (Context!8851 call!382579)) (h!67748 s!2326)) e!3322543)))

(assert (= (and d!1716052 c!931884) b!5352364))

(assert (= (and d!1716052 (not c!931884)) b!5352362))

(assert (= (and b!5352362 c!931881) b!5352365))

(assert (= (and b!5352362 (not c!931881)) b!5352361))

(assert (= (and b!5352361 res!2270967) b!5352363))

(assert (= (and b!5352361 c!931885) b!5352366))

(assert (= (and b!5352361 (not c!931885)) b!5352369))

(assert (= (and b!5352369 c!931882) b!5352360))

(assert (= (and b!5352369 (not c!931882)) b!5352368))

(assert (= (and b!5352368 c!931883) b!5352370))

(assert (= (and b!5352368 (not c!931883)) b!5352367))

(assert (= (or b!5352360 b!5352370) bm!382692))

(assert (= (or b!5352360 b!5352370) bm!382689))

(assert (= (or b!5352366 bm!382692) bm!382691))

(assert (= (or b!5352366 bm!382689) bm!382688))

(assert (= (or b!5352365 b!5352366) bm!382690))

(assert (= (or b!5352365 bm!382688) bm!382687))

(declare-fun m!6383136 () Bool)

(assert (=> bm!382687 m!6383136))

(declare-fun m!6383138 () Bool)

(assert (=> bm!382690 m!6383138))

(declare-fun m!6383140 () Bool)

(assert (=> b!5352364 m!6383140))

(declare-fun m!6383142 () Bool)

(assert (=> b!5352363 m!6383142))

(declare-fun m!6383144 () Bool)

(assert (=> bm!382691 m!6383144))

(assert (=> bm!382574 d!1716052))

(declare-fun d!1716054 () Bool)

(assert (=> d!1716054 (= (isEmpty!33276 (exprs!4925 (h!67747 zl!343))) ((_ is Nil!61298) (exprs!4925 (h!67747 zl!343))))))

(assert (=> b!5351793 d!1716054))

(declare-fun d!1716056 () Bool)

(assert (=> d!1716056 (= (nullable!5210 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))) (nullableFct!1531 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun bs!1240704 () Bool)

(assert (= bs!1240704 d!1716056))

(declare-fun m!6383146 () Bool)

(assert (=> bs!1240704 m!6383146))

(assert (=> b!5351723 d!1716056))

(declare-fun bs!1240707 () Bool)

(declare-fun d!1716058 () Bool)

(assert (= bs!1240707 (and d!1716058 d!1715764)))

(declare-fun lambda!275191 () Int)

(assert (=> bs!1240707 (= lambda!275191 lambda!275134)))

(declare-fun bs!1240708 () Bool)

(assert (= bs!1240708 (and d!1716058 d!1715746)))

(assert (=> bs!1240708 (= lambda!275191 lambda!275124)))

(declare-fun bs!1240709 () Bool)

(assert (= bs!1240709 (and d!1716058 d!1715758)))

(assert (=> bs!1240709 (= lambda!275191 lambda!275130)))

(declare-fun bs!1240710 () Bool)

(assert (= bs!1240710 (and d!1716058 d!1715938)))

(assert (=> bs!1240710 (= lambda!275191 lambda!275177)))

(declare-fun bs!1240711 () Bool)

(assert (= bs!1240711 (and d!1716058 d!1715996)))

(assert (=> bs!1240711 (= lambda!275191 lambda!275182)))

(declare-fun bs!1240712 () Bool)

(assert (= bs!1240712 (and d!1716058 d!1715830)))

(assert (=> bs!1240712 (= lambda!275191 lambda!275155)))

(declare-fun bs!1240713 () Bool)

(assert (= bs!1240713 (and d!1716058 d!1715756)))

(assert (=> bs!1240713 (= lambda!275191 lambda!275125)))

(declare-fun bs!1240714 () Bool)

(assert (= bs!1240714 (and d!1716058 d!1716048)))

(assert (=> bs!1240714 (= lambda!275191 lambda!275189)))

(declare-fun b!5352371 () Bool)

(declare-fun e!3322550 () Regex!15041)

(assert (=> b!5352371 (= e!3322550 (h!67746 (t!374639 (unfocusZipperList!483 zl!343))))))

(declare-fun b!5352372 () Bool)

(declare-fun e!3322554 () Bool)

(declare-fun lt!2181428 () Regex!15041)

(assert (=> b!5352372 (= e!3322554 (isUnion!355 lt!2181428))))

(declare-fun b!5352373 () Bool)

(declare-fun e!3322549 () Regex!15041)

(assert (=> b!5352373 (= e!3322549 (Union!15041 (h!67746 (t!374639 (unfocusZipperList!483 zl!343))) (generalisedUnion!970 (t!374639 (t!374639 (unfocusZipperList!483 zl!343))))))))

(declare-fun b!5352374 () Bool)

(declare-fun e!3322552 () Bool)

(declare-fun e!3322551 () Bool)

(assert (=> b!5352374 (= e!3322552 e!3322551)))

(declare-fun c!931888 () Bool)

(assert (=> b!5352374 (= c!931888 (isEmpty!33276 (t!374639 (unfocusZipperList!483 zl!343))))))

(declare-fun b!5352375 () Bool)

(assert (=> b!5352375 (= e!3322554 (= lt!2181428 (head!11478 (t!374639 (unfocusZipperList!483 zl!343)))))))

(declare-fun b!5352376 () Bool)

(declare-fun e!3322553 () Bool)

(assert (=> b!5352376 (= e!3322553 (isEmpty!33276 (t!374639 (t!374639 (unfocusZipperList!483 zl!343)))))))

(declare-fun b!5352378 () Bool)

(assert (=> b!5352378 (= e!3322549 EmptyLang!15041)))

(declare-fun b!5352379 () Bool)

(assert (=> b!5352379 (= e!3322551 (isEmptyLang!923 lt!2181428))))

(declare-fun b!5352380 () Bool)

(assert (=> b!5352380 (= e!3322551 e!3322554)))

(declare-fun c!931886 () Bool)

(assert (=> b!5352380 (= c!931886 (isEmpty!33276 (tail!10575 (t!374639 (unfocusZipperList!483 zl!343)))))))

(assert (=> d!1716058 e!3322552))

(declare-fun res!2270968 () Bool)

(assert (=> d!1716058 (=> (not res!2270968) (not e!3322552))))

(assert (=> d!1716058 (= res!2270968 (validRegex!6777 lt!2181428))))

(assert (=> d!1716058 (= lt!2181428 e!3322550)))

(declare-fun c!931887 () Bool)

(assert (=> d!1716058 (= c!931887 e!3322553)))

(declare-fun res!2270969 () Bool)

(assert (=> d!1716058 (=> (not res!2270969) (not e!3322553))))

(assert (=> d!1716058 (= res!2270969 ((_ is Cons!61298) (t!374639 (unfocusZipperList!483 zl!343))))))

(assert (=> d!1716058 (forall!14467 (t!374639 (unfocusZipperList!483 zl!343)) lambda!275191)))

(assert (=> d!1716058 (= (generalisedUnion!970 (t!374639 (unfocusZipperList!483 zl!343))) lt!2181428)))

(declare-fun b!5352377 () Bool)

(assert (=> b!5352377 (= e!3322550 e!3322549)))

(declare-fun c!931889 () Bool)

(assert (=> b!5352377 (= c!931889 ((_ is Cons!61298) (t!374639 (unfocusZipperList!483 zl!343))))))

(assert (= (and d!1716058 res!2270969) b!5352376))

(assert (= (and d!1716058 c!931887) b!5352371))

(assert (= (and d!1716058 (not c!931887)) b!5352377))

(assert (= (and b!5352377 c!931889) b!5352373))

(assert (= (and b!5352377 (not c!931889)) b!5352378))

(assert (= (and d!1716058 res!2270968) b!5352374))

(assert (= (and b!5352374 c!931888) b!5352379))

(assert (= (and b!5352374 (not c!931888)) b!5352380))

(assert (= (and b!5352380 c!931886) b!5352375))

(assert (= (and b!5352380 (not c!931886)) b!5352372))

(declare-fun m!6383150 () Bool)

(assert (=> b!5352380 m!6383150))

(assert (=> b!5352380 m!6383150))

(declare-fun m!6383152 () Bool)

(assert (=> b!5352380 m!6383152))

(declare-fun m!6383154 () Bool)

(assert (=> b!5352379 m!6383154))

(declare-fun m!6383156 () Bool)

(assert (=> d!1716058 m!6383156))

(declare-fun m!6383158 () Bool)

(assert (=> d!1716058 m!6383158))

(declare-fun m!6383160 () Bool)

(assert (=> b!5352372 m!6383160))

(declare-fun m!6383162 () Bool)

(assert (=> b!5352376 m!6383162))

(assert (=> b!5352374 m!6382450))

(declare-fun m!6383164 () Bool)

(assert (=> b!5352373 m!6383164))

(declare-fun m!6383166 () Bool)

(assert (=> b!5352375 m!6383166))

(assert (=> b!5351412 d!1716058))

(declare-fun d!1716062 () Bool)

(assert (=> d!1716062 (= (nullable!5210 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))) (nullableFct!1531 (h!67746 (exprs!4925 (Context!8851 (Cons!61298 (h!67746 (exprs!4925 (h!67747 zl!343))) (t!374639 (exprs!4925 (h!67747 zl!343)))))))))))

(declare-fun bs!1240715 () Bool)

(assert (= bs!1240715 d!1716062))

(declare-fun m!6383168 () Bool)

(assert (=> bs!1240715 m!6383168))

(assert (=> b!5351653 d!1716062))

(declare-fun b!5352381 () Bool)

(declare-fun e!3322558 () (InoxSet Context!8850))

(declare-fun call!382699 () (InoxSet Context!8850))

(assert (=> b!5352381 (= e!3322558 call!382699)))

(declare-fun b!5352382 () Bool)

(declare-fun c!931894 () Bool)

(declare-fun e!3322556 () Bool)

(assert (=> b!5352382 (= c!931894 e!3322556)))

(declare-fun res!2270970 () Bool)

(assert (=> b!5352382 (=> (not res!2270970) (not e!3322556))))

(assert (=> b!5352382 (= res!2270970 ((_ is Concat!23886) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun e!3322557 () (InoxSet Context!8850))

(declare-fun e!3322559 () (InoxSet Context!8850))

(assert (=> b!5352382 (= e!3322557 e!3322559)))

(declare-fun call!382698 () List!61422)

(declare-fun call!382700 () (InoxSet Context!8850))

(declare-fun c!931891 () Bool)

(declare-fun c!931890 () Bool)

(declare-fun bm!382693 () Bool)

(assert (=> bm!382693 (= call!382700 (derivationStepZipperDown!489 (ite c!931890 (regOne!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931894 (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (ite c!931891 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (reg!15370 (h!67746 (exprs!4925 (h!67747 zl!343))))))) (ite (or c!931890 c!931894) (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) (Context!8851 call!382698)) (h!67748 s!2326)))))

(declare-fun b!5352383 () Bool)

(declare-fun e!3322555 () (InoxSet Context!8850))

(assert (=> b!5352383 (= e!3322555 e!3322557)))

(assert (=> b!5352383 (= c!931890 ((_ is Union!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352384 () Bool)

(assert (=> b!5352384 (= e!3322556 (nullable!5210 (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun bm!382694 () Bool)

(declare-fun call!382703 () (InoxSet Context!8850))

(assert (=> bm!382694 (= call!382703 call!382700)))

(declare-fun bm!382695 () Bool)

(assert (=> bm!382695 (= call!382699 call!382703)))

(declare-fun bm!382696 () Bool)

(declare-fun call!382702 () (InoxSet Context!8850))

(declare-fun call!382701 () List!61422)

(assert (=> bm!382696 (= call!382702 (derivationStepZipperDown!489 (ite c!931890 (regTwo!30595 (h!67746 (exprs!4925 (h!67747 zl!343)))) (regOne!30594 (h!67746 (exprs!4925 (h!67747 zl!343))))) (ite c!931890 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) (Context!8851 call!382701)) (h!67748 s!2326)))))

(declare-fun b!5352386 () Bool)

(assert (=> b!5352386 (= e!3322557 ((_ map or) call!382700 call!382702))))

(declare-fun b!5352387 () Bool)

(assert (=> b!5352387 (= e!3322559 ((_ map or) call!382702 call!382703))))

(declare-fun bm!382697 () Bool)

(assert (=> bm!382697 (= call!382701 ($colon$colon!1429 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343))))) (ite (or c!931894 c!931891) (regTwo!30594 (h!67746 (exprs!4925 (h!67747 zl!343)))) (h!67746 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun bm!382698 () Bool)

(assert (=> bm!382698 (= call!382698 call!382701)))

(declare-fun b!5352388 () Bool)

(declare-fun e!3322560 () (InoxSet Context!8850))

(assert (=> b!5352388 (= e!3322560 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352389 () Bool)

(declare-fun c!931892 () Bool)

(assert (=> b!5352389 (= c!931892 ((_ is Star!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> b!5352389 (= e!3322558 e!3322560)))

(declare-fun b!5352390 () Bool)

(assert (=> b!5352390 (= e!3322559 e!3322558)))

(assert (=> b!5352390 (= c!931891 ((_ is Concat!23886) (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352391 () Bool)

(assert (=> b!5352391 (= e!3322560 call!382699)))

(declare-fun b!5352385 () Bool)

(assert (=> b!5352385 (= e!3322555 (store ((as const (Array Context!8850 Bool)) false) (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) true))))

(declare-fun d!1716064 () Bool)

(declare-fun c!931893 () Bool)

(assert (=> d!1716064 (= c!931893 (and ((_ is ElementMatch!15041) (h!67746 (exprs!4925 (h!67747 zl!343)))) (= (c!931579 (h!67746 (exprs!4925 (h!67747 zl!343)))) (h!67748 s!2326))))))

(assert (=> d!1716064 (= (derivationStepZipperDown!489 (h!67746 (exprs!4925 (h!67747 zl!343))) (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) (h!67748 s!2326)) e!3322555)))

(assert (= (and d!1716064 c!931893) b!5352385))

(assert (= (and d!1716064 (not c!931893)) b!5352383))

(assert (= (and b!5352383 c!931890) b!5352386))

(assert (= (and b!5352383 (not c!931890)) b!5352382))

(assert (= (and b!5352382 res!2270970) b!5352384))

(assert (= (and b!5352382 c!931894) b!5352387))

(assert (= (and b!5352382 (not c!931894)) b!5352390))

(assert (= (and b!5352390 c!931891) b!5352381))

(assert (= (and b!5352390 (not c!931891)) b!5352389))

(assert (= (and b!5352389 c!931892) b!5352391))

(assert (= (and b!5352389 (not c!931892)) b!5352388))

(assert (= (or b!5352381 b!5352391) bm!382698))

(assert (= (or b!5352381 b!5352391) bm!382695))

(assert (= (or b!5352387 bm!382698) bm!382697))

(assert (= (or b!5352387 bm!382695) bm!382694))

(assert (= (or b!5352386 b!5352387) bm!382696))

(assert (= (or b!5352386 bm!382694) bm!382693))

(declare-fun m!6383170 () Bool)

(assert (=> bm!382693 m!6383170))

(declare-fun m!6383172 () Bool)

(assert (=> bm!382696 m!6383172))

(declare-fun m!6383174 () Bool)

(assert (=> b!5352385 m!6383174))

(assert (=> b!5352384 m!6382610))

(declare-fun m!6383176 () Bool)

(assert (=> bm!382697 m!6383176))

(assert (=> bm!382580 d!1716064))

(assert (=> d!1715844 d!1715840))

(declare-fun d!1716066 () Bool)

(assert (=> d!1716066 (= (Exists!2222 lambda!275159) (choose!40165 lambda!275159))))

(declare-fun bs!1240716 () Bool)

(assert (= bs!1240716 d!1716066))

(declare-fun m!6383178 () Bool)

(assert (=> bs!1240716 m!6383178))

(assert (=> d!1715844 d!1716066))

(assert (=> d!1715844 d!1715878))

(assert (=> d!1715844 d!1715848))

(declare-fun bs!1240717 () Bool)

(declare-fun d!1716068 () Bool)

(assert (= bs!1240717 (and d!1716068 d!1715844)))

(declare-fun lambda!275194 () Int)

(assert (=> bs!1240717 (= lambda!275194 lambda!275159)))

(declare-fun bs!1240718 () Bool)

(assert (= bs!1240718 (and d!1716068 b!5351541)))

(assert (=> bs!1240718 (not (= lambda!275194 lambda!275147))))

(declare-fun bs!1240719 () Bool)

(assert (= bs!1240719 (and d!1716068 b!5351536)))

(assert (=> bs!1240719 (not (= lambda!275194 lambda!275149))))

(declare-fun bs!1240720 () Bool)

(assert (= bs!1240720 (and d!1716068 b!5351237)))

(assert (=> bs!1240720 (not (= lambda!275194 lambda!275108))))

(declare-fun bs!1240721 () Bool)

(assert (= bs!1240721 (and d!1716068 d!1715846)))

(assert (=> bs!1240721 (= lambda!275194 lambda!275164)))

(assert (=> bs!1240721 (not (= lambda!275194 lambda!275165))))

(assert (=> bs!1240720 (= lambda!275194 lambda!275107)))

(assert (=> d!1716068 true))

(assert (=> d!1716068 true))

(assert (=> d!1716068 true))

(assert (=> d!1716068 (= (isDefined!11855 (findConcatSeparation!1566 (regOne!30594 r!7292) (regTwo!30594 r!7292) Nil!61300 s!2326 s!2326)) (Exists!2222 lambda!275194))))

(assert (=> d!1716068 true))

(declare-fun _$89!1542 () Unit!153682)

(assert (=> d!1716068 (= (choose!40163 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326) _$89!1542)))

(declare-fun bs!1240722 () Bool)

(assert (= bs!1240722 d!1716068))

(assert (=> bs!1240722 m!6382278))

(assert (=> bs!1240722 m!6382278))

(assert (=> bs!1240722 m!6382280))

(declare-fun m!6383212 () Bool)

(assert (=> bs!1240722 m!6383212))

(assert (=> d!1715844 d!1716068))

(declare-fun d!1716084 () Bool)

(declare-fun res!2271007 () Bool)

(declare-fun e!3322613 () Bool)

(assert (=> d!1716084 (=> res!2271007 e!3322613)))

(assert (=> d!1716084 (= res!2271007 ((_ is Nil!61298) (exprs!4925 (h!67747 zl!343))))))

(assert (=> d!1716084 (= (forall!14467 (exprs!4925 (h!67747 zl!343)) lambda!275124) e!3322613)))

(declare-fun b!5352464 () Bool)

(declare-fun e!3322614 () Bool)

(assert (=> b!5352464 (= e!3322613 e!3322614)))

(declare-fun res!2271008 () Bool)

(assert (=> b!5352464 (=> (not res!2271008) (not e!3322614))))

(assert (=> b!5352464 (= res!2271008 (dynLambda!24230 lambda!275124 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352465 () Bool)

(assert (=> b!5352465 (= e!3322614 (forall!14467 (t!374639 (exprs!4925 (h!67747 zl!343))) lambda!275124))))

(assert (= (and d!1716084 (not res!2271007)) b!5352464))

(assert (= (and b!5352464 res!2271008) b!5352465))

(declare-fun b_lambda!205339 () Bool)

(assert (=> (not b_lambda!205339) (not b!5352464)))

(declare-fun m!6383220 () Bool)

(assert (=> b!5352464 m!6383220))

(declare-fun m!6383222 () Bool)

(assert (=> b!5352465 m!6383222))

(assert (=> d!1715746 d!1716084))

(declare-fun d!1716088 () Bool)

(assert (=> d!1716088 (= (isConcat!438 lt!2181386) ((_ is Concat!23886) lt!2181386))))

(assert (=> b!5351791 d!1716088))

(declare-fun d!1716090 () Bool)

(assert (=> d!1716090 (= (Exists!2222 lambda!275164) (choose!40165 lambda!275164))))

(declare-fun bs!1240723 () Bool)

(assert (= bs!1240723 d!1716090))

(declare-fun m!6383224 () Bool)

(assert (=> bs!1240723 m!6383224))

(assert (=> d!1715846 d!1716090))

(declare-fun d!1716092 () Bool)

(assert (=> d!1716092 (= (Exists!2222 lambda!275165) (choose!40165 lambda!275165))))

(declare-fun bs!1240724 () Bool)

(assert (= bs!1240724 d!1716092))

(declare-fun m!6383226 () Bool)

(assert (=> bs!1240724 m!6383226))

(assert (=> d!1715846 d!1716092))

(declare-fun bs!1240739 () Bool)

(declare-fun d!1716094 () Bool)

(assert (= bs!1240739 (and d!1716094 d!1715844)))

(declare-fun lambda!275204 () Int)

(assert (=> bs!1240739 (= lambda!275204 lambda!275159)))

(declare-fun bs!1240742 () Bool)

(assert (= bs!1240742 (and d!1716094 b!5351541)))

(assert (=> bs!1240742 (not (= lambda!275204 lambda!275147))))

(declare-fun bs!1240744 () Bool)

(assert (= bs!1240744 (and d!1716094 b!5351536)))

(assert (=> bs!1240744 (not (= lambda!275204 lambda!275149))))

(declare-fun bs!1240745 () Bool)

(assert (= bs!1240745 (and d!1716094 d!1716068)))

(assert (=> bs!1240745 (= lambda!275204 lambda!275194)))

(declare-fun bs!1240746 () Bool)

(assert (= bs!1240746 (and d!1716094 b!5351237)))

(assert (=> bs!1240746 (not (= lambda!275204 lambda!275108))))

(declare-fun bs!1240747 () Bool)

(assert (= bs!1240747 (and d!1716094 d!1715846)))

(assert (=> bs!1240747 (= lambda!275204 lambda!275164)))

(assert (=> bs!1240747 (not (= lambda!275204 lambda!275165))))

(assert (=> bs!1240746 (= lambda!275204 lambda!275107)))

(assert (=> d!1716094 true))

(assert (=> d!1716094 true))

(assert (=> d!1716094 true))

(declare-fun lambda!275206 () Int)

(assert (=> bs!1240739 (not (= lambda!275206 lambda!275159))))

(assert (=> bs!1240742 (not (= lambda!275206 lambda!275147))))

(assert (=> bs!1240744 (= lambda!275206 lambda!275149)))

(assert (=> bs!1240745 (not (= lambda!275206 lambda!275194))))

(assert (=> bs!1240746 (= lambda!275206 lambda!275108)))

(declare-fun bs!1240748 () Bool)

(assert (= bs!1240748 d!1716094))

(assert (=> bs!1240748 (not (= lambda!275206 lambda!275204))))

(assert (=> bs!1240747 (not (= lambda!275206 lambda!275164))))

(assert (=> bs!1240747 (= lambda!275206 lambda!275165)))

(assert (=> bs!1240746 (not (= lambda!275206 lambda!275107))))

(assert (=> d!1716094 true))

(assert (=> d!1716094 true))

(assert (=> d!1716094 true))

(assert (=> d!1716094 (= (Exists!2222 lambda!275204) (Exists!2222 lambda!275206))))

(assert (=> d!1716094 true))

(declare-fun _$90!1163 () Unit!153682)

(assert (=> d!1716094 (= (choose!40164 (regOne!30594 r!7292) (regTwo!30594 r!7292) s!2326) _$90!1163)))

(declare-fun m!6383260 () Bool)

(assert (=> bs!1240748 m!6383260))

(declare-fun m!6383262 () Bool)

(assert (=> bs!1240748 m!6383262))

(assert (=> d!1715846 d!1716094))

(assert (=> d!1715846 d!1715878))

(declare-fun d!1716126 () Bool)

(assert (=> d!1716126 true))

(assert (=> d!1716126 true))

(declare-fun res!2271045 () Bool)

(assert (=> d!1716126 (= (choose!40165 lambda!275107) res!2271045)))

(assert (=> d!1715850 d!1716126))

(declare-fun d!1716128 () Bool)

(declare-fun res!2271046 () Bool)

(declare-fun e!3322648 () Bool)

(assert (=> d!1716128 (=> res!2271046 e!3322648)))

(assert (=> d!1716128 (= res!2271046 ((_ is Nil!61298) lt!2181356))))

(assert (=> d!1716128 (= (forall!14467 lt!2181356 lambda!275134) e!3322648)))

(declare-fun b!5352514 () Bool)

(declare-fun e!3322649 () Bool)

(assert (=> b!5352514 (= e!3322648 e!3322649)))

(declare-fun res!2271047 () Bool)

(assert (=> b!5352514 (=> (not res!2271047) (not e!3322649))))

(assert (=> b!5352514 (= res!2271047 (dynLambda!24230 lambda!275134 (h!67746 lt!2181356)))))

(declare-fun b!5352515 () Bool)

(assert (=> b!5352515 (= e!3322649 (forall!14467 (t!374639 lt!2181356) lambda!275134))))

(assert (= (and d!1716128 (not res!2271046)) b!5352514))

(assert (= (and b!5352514 res!2271047) b!5352515))

(declare-fun b_lambda!205345 () Bool)

(assert (=> (not b_lambda!205345) (not b!5352514)))

(declare-fun m!6383276 () Bool)

(assert (=> b!5352514 m!6383276))

(declare-fun m!6383280 () Bool)

(assert (=> b!5352515 m!6383280))

(assert (=> d!1715764 d!1716128))

(assert (=> bs!1240616 d!1715828))

(declare-fun b!5352516 () Bool)

(declare-fun e!3322652 () Bool)

(declare-fun e!3322650 () Bool)

(assert (=> b!5352516 (= e!3322652 e!3322650)))

(declare-fun res!2271052 () Bool)

(assert (=> b!5352516 (=> (not res!2271052) (not e!3322650))))

(assert (=> b!5352516 (= res!2271052 (and (not ((_ is EmptyLang!15041) (regOne!30594 (regOne!30594 r!7292)))) (not ((_ is ElementMatch!15041) (regOne!30594 (regOne!30594 r!7292))))))))

(declare-fun b!5352517 () Bool)

(declare-fun e!3322655 () Bool)

(declare-fun e!3322654 () Bool)

(assert (=> b!5352517 (= e!3322655 e!3322654)))

(declare-fun c!931922 () Bool)

(assert (=> b!5352517 (= c!931922 ((_ is Union!15041) (regOne!30594 (regOne!30594 r!7292))))))

(declare-fun d!1716132 () Bool)

(declare-fun res!2271049 () Bool)

(assert (=> d!1716132 (=> res!2271049 e!3322652)))

(assert (=> d!1716132 (= res!2271049 ((_ is EmptyExpr!15041) (regOne!30594 (regOne!30594 r!7292))))))

(assert (=> d!1716132 (= (nullableFct!1531 (regOne!30594 (regOne!30594 r!7292))) e!3322652)))

(declare-fun b!5352518 () Bool)

(declare-fun e!3322651 () Bool)

(declare-fun call!382738 () Bool)

(assert (=> b!5352518 (= e!3322651 call!382738)))

(declare-fun b!5352519 () Bool)

(declare-fun e!3322653 () Bool)

(assert (=> b!5352519 (= e!3322653 call!382738)))

(declare-fun bm!382732 () Bool)

(assert (=> bm!382732 (= call!382738 (nullable!5210 (ite c!931922 (regTwo!30595 (regOne!30594 (regOne!30594 r!7292))) (regTwo!30594 (regOne!30594 (regOne!30594 r!7292))))))))

(declare-fun b!5352520 () Bool)

(assert (=> b!5352520 (= e!3322650 e!3322655)))

(declare-fun res!2271050 () Bool)

(assert (=> b!5352520 (=> res!2271050 e!3322655)))

(assert (=> b!5352520 (= res!2271050 ((_ is Star!15041) (regOne!30594 (regOne!30594 r!7292))))))

(declare-fun b!5352521 () Bool)

(assert (=> b!5352521 (= e!3322654 e!3322653)))

(declare-fun res!2271051 () Bool)

(declare-fun call!382737 () Bool)

(assert (=> b!5352521 (= res!2271051 call!382737)))

(assert (=> b!5352521 (=> res!2271051 e!3322653)))

(declare-fun bm!382733 () Bool)

(assert (=> bm!382733 (= call!382737 (nullable!5210 (ite c!931922 (regOne!30595 (regOne!30594 (regOne!30594 r!7292))) (regOne!30594 (regOne!30594 (regOne!30594 r!7292))))))))

(declare-fun b!5352522 () Bool)

(assert (=> b!5352522 (= e!3322654 e!3322651)))

(declare-fun res!2271048 () Bool)

(assert (=> b!5352522 (= res!2271048 call!382737)))

(assert (=> b!5352522 (=> (not res!2271048) (not e!3322651))))

(assert (= (and d!1716132 (not res!2271049)) b!5352516))

(assert (= (and b!5352516 res!2271052) b!5352520))

(assert (= (and b!5352520 (not res!2271050)) b!5352517))

(assert (= (and b!5352517 c!931922) b!5352521))

(assert (= (and b!5352517 (not c!931922)) b!5352522))

(assert (= (and b!5352521 (not res!2271051)) b!5352519))

(assert (= (and b!5352522 res!2271048) b!5352518))

(assert (= (or b!5352519 b!5352518) bm!382732))

(assert (= (or b!5352521 b!5352522) bm!382733))

(declare-fun m!6383282 () Bool)

(assert (=> bm!382732 m!6383282))

(declare-fun m!6383284 () Bool)

(assert (=> bm!382733 m!6383284))

(assert (=> d!1715770 d!1716132))

(declare-fun b!5352523 () Bool)

(declare-fun e!3322657 () Bool)

(declare-fun e!3322656 () Bool)

(assert (=> b!5352523 (= e!3322657 e!3322656)))

(declare-fun c!931924 () Bool)

(assert (=> b!5352523 (= c!931924 ((_ is Star!15041) lt!2181352))))

(declare-fun b!5352524 () Bool)

(declare-fun e!3322661 () Bool)

(assert (=> b!5352524 (= e!3322656 e!3322661)))

(declare-fun res!2271053 () Bool)

(assert (=> b!5352524 (= res!2271053 (not (nullable!5210 (reg!15370 lt!2181352))))))

(assert (=> b!5352524 (=> (not res!2271053) (not e!3322661))))

(declare-fun b!5352525 () Bool)

(declare-fun res!2271054 () Bool)

(declare-fun e!3322658 () Bool)

(assert (=> b!5352525 (=> (not res!2271054) (not e!3322658))))

(declare-fun call!382740 () Bool)

(assert (=> b!5352525 (= res!2271054 call!382740)))

(declare-fun e!3322662 () Bool)

(assert (=> b!5352525 (= e!3322662 e!3322658)))

(declare-fun bm!382734 () Bool)

(declare-fun c!931923 () Bool)

(assert (=> bm!382734 (= call!382740 (validRegex!6777 (ite c!931923 (regOne!30595 lt!2181352) (regOne!30594 lt!2181352))))))

(declare-fun b!5352526 () Bool)

(declare-fun res!2271055 () Bool)

(declare-fun e!3322659 () Bool)

(assert (=> b!5352526 (=> res!2271055 e!3322659)))

(assert (=> b!5352526 (= res!2271055 (not ((_ is Concat!23886) lt!2181352)))))

(assert (=> b!5352526 (= e!3322662 e!3322659)))

(declare-fun b!5352527 () Bool)

(declare-fun call!382741 () Bool)

(assert (=> b!5352527 (= e!3322661 call!382741)))

(declare-fun b!5352528 () Bool)

(declare-fun e!3322660 () Bool)

(assert (=> b!5352528 (= e!3322659 e!3322660)))

(declare-fun res!2271057 () Bool)

(assert (=> b!5352528 (=> (not res!2271057) (not e!3322660))))

(assert (=> b!5352528 (= res!2271057 call!382740)))

(declare-fun b!5352529 () Bool)

(assert (=> b!5352529 (= e!3322656 e!3322662)))

(assert (=> b!5352529 (= c!931923 ((_ is Union!15041) lt!2181352))))

(declare-fun bm!382735 () Bool)

(assert (=> bm!382735 (= call!382741 (validRegex!6777 (ite c!931924 (reg!15370 lt!2181352) (ite c!931923 (regTwo!30595 lt!2181352) (regTwo!30594 lt!2181352)))))))

(declare-fun b!5352530 () Bool)

(declare-fun call!382739 () Bool)

(assert (=> b!5352530 (= e!3322658 call!382739)))

(declare-fun d!1716134 () Bool)

(declare-fun res!2271056 () Bool)

(assert (=> d!1716134 (=> res!2271056 e!3322657)))

(assert (=> d!1716134 (= res!2271056 ((_ is ElementMatch!15041) lt!2181352))))

(assert (=> d!1716134 (= (validRegex!6777 lt!2181352) e!3322657)))

(declare-fun bm!382736 () Bool)

(assert (=> bm!382736 (= call!382739 call!382741)))

(declare-fun b!5352531 () Bool)

(assert (=> b!5352531 (= e!3322660 call!382739)))

(assert (= (and d!1716134 (not res!2271056)) b!5352523))

(assert (= (and b!5352523 c!931924) b!5352524))

(assert (= (and b!5352523 (not c!931924)) b!5352529))

(assert (= (and b!5352524 res!2271053) b!5352527))

(assert (= (and b!5352529 c!931923) b!5352525))

(assert (= (and b!5352529 (not c!931923)) b!5352526))

(assert (= (and b!5352525 res!2271054) b!5352530))

(assert (= (and b!5352526 (not res!2271055)) b!5352528))

(assert (= (and b!5352528 res!2271057) b!5352531))

(assert (= (or b!5352530 b!5352531) bm!382736))

(assert (= (or b!5352525 b!5352528) bm!382734))

(assert (= (or b!5352527 bm!382736) bm!382735))

(declare-fun m!6383286 () Bool)

(assert (=> b!5352524 m!6383286))

(declare-fun m!6383288 () Bool)

(assert (=> bm!382734 m!6383288))

(declare-fun m!6383290 () Bool)

(assert (=> bm!382735 m!6383290))

(assert (=> d!1715758 d!1716134))

(declare-fun d!1716136 () Bool)

(declare-fun res!2271058 () Bool)

(declare-fun e!3322663 () Bool)

(assert (=> d!1716136 (=> res!2271058 e!3322663)))

(assert (=> d!1716136 (= res!2271058 ((_ is Nil!61298) (unfocusZipperList!483 zl!343)))))

(assert (=> d!1716136 (= (forall!14467 (unfocusZipperList!483 zl!343) lambda!275130) e!3322663)))

(declare-fun b!5352532 () Bool)

(declare-fun e!3322664 () Bool)

(assert (=> b!5352532 (= e!3322663 e!3322664)))

(declare-fun res!2271059 () Bool)

(assert (=> b!5352532 (=> (not res!2271059) (not e!3322664))))

(assert (=> b!5352532 (= res!2271059 (dynLambda!24230 lambda!275130 (h!67746 (unfocusZipperList!483 zl!343))))))

(declare-fun b!5352533 () Bool)

(assert (=> b!5352533 (= e!3322664 (forall!14467 (t!374639 (unfocusZipperList!483 zl!343)) lambda!275130))))

(assert (= (and d!1716136 (not res!2271058)) b!5352532))

(assert (= (and b!5352532 res!2271059) b!5352533))

(declare-fun b_lambda!205347 () Bool)

(assert (=> (not b_lambda!205347) (not b!5352532)))

(declare-fun m!6383292 () Bool)

(assert (=> b!5352532 m!6383292))

(declare-fun m!6383294 () Bool)

(assert (=> b!5352533 m!6383294))

(assert (=> d!1715758 d!1716136))

(declare-fun d!1716138 () Bool)

(assert (=> d!1716138 (= (isEmpty!33276 (t!374639 (unfocusZipperList!483 zl!343))) ((_ is Nil!61298) (t!374639 (unfocusZipperList!483 zl!343))))))

(assert (=> b!5351415 d!1716138))

(declare-fun d!1716140 () Bool)

(assert (=> d!1716140 true))

(assert (=> d!1716140 true))

(declare-fun res!2271060 () Bool)

(assert (=> d!1716140 (= (choose!40165 lambda!275108) res!2271060)))

(assert (=> d!1715852 d!1716140))

(declare-fun bs!1240750 () Bool)

(declare-fun b!5352543 () Bool)

(assert (= bs!1240750 (and b!5352543 d!1715844)))

(declare-fun lambda!275207 () Int)

(assert (=> bs!1240750 (not (= lambda!275207 lambda!275159))))

(declare-fun bs!1240751 () Bool)

(assert (= bs!1240751 (and b!5352543 b!5351541)))

(assert (=> bs!1240751 (= (and (= (reg!15370 (regTwo!30595 r!7292)) (reg!15370 r!7292)) (= (regTwo!30595 r!7292) r!7292)) (= lambda!275207 lambda!275147))))

(declare-fun bs!1240752 () Bool)

(assert (= bs!1240752 (and b!5352543 b!5351536)))

(assert (=> bs!1240752 (not (= lambda!275207 lambda!275149))))

(declare-fun bs!1240753 () Bool)

(assert (= bs!1240753 (and b!5352543 d!1716094)))

(assert (=> bs!1240753 (not (= lambda!275207 lambda!275206))))

(declare-fun bs!1240754 () Bool)

(assert (= bs!1240754 (and b!5352543 d!1716068)))

(assert (=> bs!1240754 (not (= lambda!275207 lambda!275194))))

(declare-fun bs!1240755 () Bool)

(assert (= bs!1240755 (and b!5352543 b!5351237)))

(assert (=> bs!1240755 (not (= lambda!275207 lambda!275108))))

(assert (=> bs!1240753 (not (= lambda!275207 lambda!275204))))

(declare-fun bs!1240756 () Bool)

(assert (= bs!1240756 (and b!5352543 d!1715846)))

(assert (=> bs!1240756 (not (= lambda!275207 lambda!275164))))

(assert (=> bs!1240756 (not (= lambda!275207 lambda!275165))))

(assert (=> bs!1240755 (not (= lambda!275207 lambda!275107))))

(assert (=> b!5352543 true))

(assert (=> b!5352543 true))

(declare-fun bs!1240757 () Bool)

(declare-fun b!5352538 () Bool)

(assert (= bs!1240757 (and b!5352538 d!1715844)))

(declare-fun lambda!275208 () Int)

(assert (=> bs!1240757 (not (= lambda!275208 lambda!275159))))

(declare-fun bs!1240758 () Bool)

(assert (= bs!1240758 (and b!5352538 b!5351541)))

(assert (=> bs!1240758 (not (= lambda!275208 lambda!275147))))

(declare-fun bs!1240759 () Bool)

(assert (= bs!1240759 (and b!5352538 b!5351536)))

(assert (=> bs!1240759 (= (and (= (regOne!30594 (regTwo!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regTwo!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275208 lambda!275149))))

(declare-fun bs!1240760 () Bool)

(assert (= bs!1240760 (and b!5352538 d!1716068)))

(assert (=> bs!1240760 (not (= lambda!275208 lambda!275194))))

(declare-fun bs!1240761 () Bool)

(assert (= bs!1240761 (and b!5352538 b!5351237)))

(assert (=> bs!1240761 (= (and (= (regOne!30594 (regTwo!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regTwo!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275208 lambda!275108))))

(declare-fun bs!1240762 () Bool)

(assert (= bs!1240762 (and b!5352538 d!1716094)))

(assert (=> bs!1240762 (not (= lambda!275208 lambda!275204))))

(declare-fun bs!1240763 () Bool)

(assert (= bs!1240763 (and b!5352538 d!1715846)))

(assert (=> bs!1240763 (not (= lambda!275208 lambda!275164))))

(assert (=> bs!1240762 (= (and (= (regOne!30594 (regTwo!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regTwo!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275208 lambda!275206))))

(declare-fun bs!1240764 () Bool)

(assert (= bs!1240764 (and b!5352538 b!5352543)))

(assert (=> bs!1240764 (not (= lambda!275208 lambda!275207))))

(assert (=> bs!1240763 (= (and (= (regOne!30594 (regTwo!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regTwo!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275208 lambda!275165))))

(assert (=> bs!1240761 (not (= lambda!275208 lambda!275107))))

(assert (=> b!5352538 true))

(assert (=> b!5352538 true))

(declare-fun b!5352535 () Bool)

(declare-fun res!2271063 () Bool)

(declare-fun e!3322668 () Bool)

(assert (=> b!5352535 (=> res!2271063 e!3322668)))

(declare-fun call!382743 () Bool)

(assert (=> b!5352535 (= res!2271063 call!382743)))

(declare-fun e!3322670 () Bool)

(assert (=> b!5352535 (= e!3322670 e!3322668)))

(declare-fun b!5352536 () Bool)

(declare-fun e!3322669 () Bool)

(assert (=> b!5352536 (= e!3322669 (matchRSpec!2144 (regTwo!30595 (regTwo!30595 r!7292)) s!2326))))

(declare-fun bm!382737 () Bool)

(assert (=> bm!382737 (= call!382743 (isEmpty!33277 s!2326))))

(declare-fun b!5352537 () Bool)

(declare-fun c!931926 () Bool)

(assert (=> b!5352537 (= c!931926 ((_ is ElementMatch!15041) (regTwo!30595 r!7292)))))

(declare-fun e!3322671 () Bool)

(declare-fun e!3322666 () Bool)

(assert (=> b!5352537 (= e!3322671 e!3322666)))

(declare-fun call!382742 () Bool)

(assert (=> b!5352538 (= e!3322670 call!382742)))

(declare-fun b!5352539 () Bool)

(declare-fun c!931925 () Bool)

(assert (=> b!5352539 (= c!931925 ((_ is Union!15041) (regTwo!30595 r!7292)))))

(declare-fun e!3322665 () Bool)

(assert (=> b!5352539 (= e!3322666 e!3322665)))

(declare-fun b!5352540 () Bool)

(declare-fun e!3322667 () Bool)

(assert (=> b!5352540 (= e!3322667 call!382743)))

(declare-fun b!5352541 () Bool)

(assert (=> b!5352541 (= e!3322666 (= s!2326 (Cons!61300 (c!931579 (regTwo!30595 r!7292)) Nil!61300)))))

(declare-fun b!5352534 () Bool)

(assert (=> b!5352534 (= e!3322665 e!3322669)))

(declare-fun res!2271062 () Bool)

(assert (=> b!5352534 (= res!2271062 (matchRSpec!2144 (regOne!30595 (regTwo!30595 r!7292)) s!2326))))

(assert (=> b!5352534 (=> res!2271062 e!3322669)))

(declare-fun d!1716142 () Bool)

(declare-fun c!931927 () Bool)

(assert (=> d!1716142 (= c!931927 ((_ is EmptyExpr!15041) (regTwo!30595 r!7292)))))

(assert (=> d!1716142 (= (matchRSpec!2144 (regTwo!30595 r!7292) s!2326) e!3322667)))

(declare-fun bm!382738 () Bool)

(declare-fun c!931928 () Bool)

(assert (=> bm!382738 (= call!382742 (Exists!2222 (ite c!931928 lambda!275207 lambda!275208)))))

(declare-fun b!5352542 () Bool)

(assert (=> b!5352542 (= e!3322665 e!3322670)))

(assert (=> b!5352542 (= c!931928 ((_ is Star!15041) (regTwo!30595 r!7292)))))

(assert (=> b!5352543 (= e!3322668 call!382742)))

(declare-fun b!5352544 () Bool)

(assert (=> b!5352544 (= e!3322667 e!3322671)))

(declare-fun res!2271061 () Bool)

(assert (=> b!5352544 (= res!2271061 (not ((_ is EmptyLang!15041) (regTwo!30595 r!7292))))))

(assert (=> b!5352544 (=> (not res!2271061) (not e!3322671))))

(assert (= (and d!1716142 c!931927) b!5352540))

(assert (= (and d!1716142 (not c!931927)) b!5352544))

(assert (= (and b!5352544 res!2271061) b!5352537))

(assert (= (and b!5352537 c!931926) b!5352541))

(assert (= (and b!5352537 (not c!931926)) b!5352539))

(assert (= (and b!5352539 c!931925) b!5352534))

(assert (= (and b!5352539 (not c!931925)) b!5352542))

(assert (= (and b!5352534 (not res!2271062)) b!5352536))

(assert (= (and b!5352542 c!931928) b!5352535))

(assert (= (and b!5352542 (not c!931928)) b!5352538))

(assert (= (and b!5352535 (not res!2271063)) b!5352543))

(assert (= (or b!5352543 b!5352538) bm!382738))

(assert (= (or b!5352540 b!5352535) bm!382737))

(declare-fun m!6383296 () Bool)

(assert (=> b!5352536 m!6383296))

(assert (=> bm!382737 m!6382504))

(declare-fun m!6383298 () Bool)

(assert (=> b!5352534 m!6383298))

(declare-fun m!6383300 () Bool)

(assert (=> bm!382738 m!6383300))

(assert (=> b!5351534 d!1716142))

(assert (=> d!1715750 d!1715868))

(assert (=> b!5351586 d!1715922))

(declare-fun d!1716144 () Bool)

(assert (=> d!1716144 (= (isEmpty!33276 (unfocusZipperList!483 zl!343)) ((_ is Nil!61298) (unfocusZipperList!483 zl!343)))))

(assert (=> b!5351413 d!1716144))

(declare-fun d!1716146 () Bool)

(declare-fun c!931939 () Bool)

(declare-fun e!3322683 () Bool)

(assert (=> d!1716146 (= c!931939 e!3322683)))

(declare-fun res!2271064 () Bool)

(assert (=> d!1716146 (=> (not res!2271064) (not e!3322683))))

(assert (=> d!1716146 (= res!2271064 ((_ is Cons!61298) (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun e!3322682 () (InoxSet Context!8850))

(assert (=> d!1716146 (= (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))) (h!67748 s!2326)) e!3322682)))

(declare-fun b!5352565 () Bool)

(declare-fun e!3322684 () (InoxSet Context!8850))

(declare-fun call!382752 () (InoxSet Context!8850))

(assert (=> b!5352565 (= e!3322684 call!382752)))

(declare-fun bm!382747 () Bool)

(assert (=> bm!382747 (= call!382752 (derivationStepZipperDown!489 (h!67746 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))))) (Context!8851 (t!374639 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343))))))) (h!67748 s!2326)))))

(declare-fun b!5352566 () Bool)

(assert (=> b!5352566 (= e!3322683 (nullable!5210 (h!67746 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343))))))))))

(declare-fun b!5352567 () Bool)

(assert (=> b!5352567 (= e!3322682 ((_ map or) call!382752 (derivationStepZipperUp!413 (Context!8851 (t!374639 (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343))))))) (h!67748 s!2326))))))

(declare-fun b!5352568 () Bool)

(assert (=> b!5352568 (= e!3322684 ((as const (Array Context!8850 Bool)) false))))

(declare-fun b!5352569 () Bool)

(assert (=> b!5352569 (= e!3322682 e!3322684)))

(declare-fun c!931940 () Bool)

(assert (=> b!5352569 (= c!931940 ((_ is Cons!61298) (exprs!4925 (Context!8851 (t!374639 (exprs!4925 (h!67747 zl!343)))))))))

(assert (= (and d!1716146 res!2271064) b!5352566))

(assert (= (and d!1716146 c!931939) b!5352567))

(assert (= (and d!1716146 (not c!931939)) b!5352569))

(assert (= (and b!5352569 c!931940) b!5352565))

(assert (= (and b!5352569 (not c!931940)) b!5352568))

(assert (= (or b!5352567 b!5352565) bm!382747))

(declare-fun m!6383302 () Bool)

(assert (=> bm!382747 m!6383302))

(declare-fun m!6383304 () Bool)

(assert (=> b!5352566 m!6383304))

(declare-fun m!6383306 () Bool)

(assert (=> b!5352567 m!6383306))

(assert (=> b!5351733 d!1716146))

(assert (=> b!5351358 d!1715754))

(declare-fun bs!1240765 () Bool)

(declare-fun b!5352579 () Bool)

(assert (= bs!1240765 (and b!5352579 d!1715844)))

(declare-fun lambda!275209 () Int)

(assert (=> bs!1240765 (not (= lambda!275209 lambda!275159))))

(declare-fun bs!1240766 () Bool)

(assert (= bs!1240766 (and b!5352579 b!5351541)))

(assert (=> bs!1240766 (= (and (= (reg!15370 (regOne!30595 r!7292)) (reg!15370 r!7292)) (= (regOne!30595 r!7292) r!7292)) (= lambda!275209 lambda!275147))))

(declare-fun bs!1240767 () Bool)

(assert (= bs!1240767 (and b!5352579 b!5351536)))

(assert (=> bs!1240767 (not (= lambda!275209 lambda!275149))))

(declare-fun bs!1240768 () Bool)

(assert (= bs!1240768 (and b!5352579 d!1716068)))

(assert (=> bs!1240768 (not (= lambda!275209 lambda!275194))))

(declare-fun bs!1240769 () Bool)

(assert (= bs!1240769 (and b!5352579 b!5352538)))

(assert (=> bs!1240769 (not (= lambda!275209 lambda!275208))))

(declare-fun bs!1240770 () Bool)

(assert (= bs!1240770 (and b!5352579 b!5351237)))

(assert (=> bs!1240770 (not (= lambda!275209 lambda!275108))))

(declare-fun bs!1240771 () Bool)

(assert (= bs!1240771 (and b!5352579 d!1716094)))

(assert (=> bs!1240771 (not (= lambda!275209 lambda!275204))))

(declare-fun bs!1240772 () Bool)

(assert (= bs!1240772 (and b!5352579 d!1715846)))

(assert (=> bs!1240772 (not (= lambda!275209 lambda!275164))))

(assert (=> bs!1240771 (not (= lambda!275209 lambda!275206))))

(declare-fun bs!1240773 () Bool)

(assert (= bs!1240773 (and b!5352579 b!5352543)))

(assert (=> bs!1240773 (= (and (= (reg!15370 (regOne!30595 r!7292)) (reg!15370 (regTwo!30595 r!7292))) (= (regOne!30595 r!7292) (regTwo!30595 r!7292))) (= lambda!275209 lambda!275207))))

(assert (=> bs!1240772 (not (= lambda!275209 lambda!275165))))

(assert (=> bs!1240770 (not (= lambda!275209 lambda!275107))))

(assert (=> b!5352579 true))

(assert (=> b!5352579 true))

(declare-fun bs!1240774 () Bool)

(declare-fun b!5352574 () Bool)

(assert (= bs!1240774 (and b!5352574 d!1715844)))

(declare-fun lambda!275210 () Int)

(assert (=> bs!1240774 (not (= lambda!275210 lambda!275159))))

(declare-fun bs!1240775 () Bool)

(assert (= bs!1240775 (and b!5352574 b!5351541)))

(assert (=> bs!1240775 (not (= lambda!275210 lambda!275147))))

(declare-fun bs!1240776 () Bool)

(assert (= bs!1240776 (and b!5352574 b!5351536)))

(assert (=> bs!1240776 (= (and (= (regOne!30594 (regOne!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regOne!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275210 lambda!275149))))

(declare-fun bs!1240777 () Bool)

(assert (= bs!1240777 (and b!5352574 d!1716068)))

(assert (=> bs!1240777 (not (= lambda!275210 lambda!275194))))

(declare-fun bs!1240778 () Bool)

(assert (= bs!1240778 (and b!5352574 b!5352538)))

(assert (=> bs!1240778 (= (and (= (regOne!30594 (regOne!30595 r!7292)) (regOne!30594 (regTwo!30595 r!7292))) (= (regTwo!30594 (regOne!30595 r!7292)) (regTwo!30594 (regTwo!30595 r!7292)))) (= lambda!275210 lambda!275208))))

(declare-fun bs!1240779 () Bool)

(assert (= bs!1240779 (and b!5352574 b!5352579)))

(assert (=> bs!1240779 (not (= lambda!275210 lambda!275209))))

(declare-fun bs!1240780 () Bool)

(assert (= bs!1240780 (and b!5352574 b!5351237)))

(assert (=> bs!1240780 (= (and (= (regOne!30594 (regOne!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regOne!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275210 lambda!275108))))

(declare-fun bs!1240781 () Bool)

(assert (= bs!1240781 (and b!5352574 d!1716094)))

(assert (=> bs!1240781 (not (= lambda!275210 lambda!275204))))

(declare-fun bs!1240782 () Bool)

(assert (= bs!1240782 (and b!5352574 d!1715846)))

(assert (=> bs!1240782 (not (= lambda!275210 lambda!275164))))

(assert (=> bs!1240781 (= (and (= (regOne!30594 (regOne!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regOne!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275210 lambda!275206))))

(declare-fun bs!1240783 () Bool)

(assert (= bs!1240783 (and b!5352574 b!5352543)))

(assert (=> bs!1240783 (not (= lambda!275210 lambda!275207))))

(assert (=> bs!1240782 (= (and (= (regOne!30594 (regOne!30595 r!7292)) (regOne!30594 r!7292)) (= (regTwo!30594 (regOne!30595 r!7292)) (regTwo!30594 r!7292))) (= lambda!275210 lambda!275165))))

(assert (=> bs!1240780 (not (= lambda!275210 lambda!275107))))

(assert (=> b!5352574 true))

(assert (=> b!5352574 true))

(declare-fun b!5352571 () Bool)

(declare-fun res!2271067 () Bool)

(declare-fun e!3322688 () Bool)

(assert (=> b!5352571 (=> res!2271067 e!3322688)))

(declare-fun call!382754 () Bool)

(assert (=> b!5352571 (= res!2271067 call!382754)))

(declare-fun e!3322690 () Bool)

(assert (=> b!5352571 (= e!3322690 e!3322688)))

(declare-fun b!5352572 () Bool)

(declare-fun e!3322689 () Bool)

(assert (=> b!5352572 (= e!3322689 (matchRSpec!2144 (regTwo!30595 (regOne!30595 r!7292)) s!2326))))

(declare-fun bm!382748 () Bool)

(assert (=> bm!382748 (= call!382754 (isEmpty!33277 s!2326))))

(declare-fun b!5352573 () Bool)

(declare-fun c!931942 () Bool)

(assert (=> b!5352573 (= c!931942 ((_ is ElementMatch!15041) (regOne!30595 r!7292)))))

(declare-fun e!3322691 () Bool)

(declare-fun e!3322686 () Bool)

(assert (=> b!5352573 (= e!3322691 e!3322686)))

(declare-fun call!382753 () Bool)

(assert (=> b!5352574 (= e!3322690 call!382753)))

(declare-fun b!5352575 () Bool)

(declare-fun c!931941 () Bool)

(assert (=> b!5352575 (= c!931941 ((_ is Union!15041) (regOne!30595 r!7292)))))

(declare-fun e!3322685 () Bool)

(assert (=> b!5352575 (= e!3322686 e!3322685)))

(declare-fun b!5352576 () Bool)

(declare-fun e!3322687 () Bool)

(assert (=> b!5352576 (= e!3322687 call!382754)))

(declare-fun b!5352577 () Bool)

(assert (=> b!5352577 (= e!3322686 (= s!2326 (Cons!61300 (c!931579 (regOne!30595 r!7292)) Nil!61300)))))

(declare-fun b!5352570 () Bool)

(assert (=> b!5352570 (= e!3322685 e!3322689)))

(declare-fun res!2271066 () Bool)

(assert (=> b!5352570 (= res!2271066 (matchRSpec!2144 (regOne!30595 (regOne!30595 r!7292)) s!2326))))

(assert (=> b!5352570 (=> res!2271066 e!3322689)))

(declare-fun d!1716148 () Bool)

(declare-fun c!931943 () Bool)

(assert (=> d!1716148 (= c!931943 ((_ is EmptyExpr!15041) (regOne!30595 r!7292)))))

(assert (=> d!1716148 (= (matchRSpec!2144 (regOne!30595 r!7292) s!2326) e!3322687)))

(declare-fun c!931944 () Bool)

(declare-fun bm!382749 () Bool)

(assert (=> bm!382749 (= call!382753 (Exists!2222 (ite c!931944 lambda!275209 lambda!275210)))))

(declare-fun b!5352578 () Bool)

(assert (=> b!5352578 (= e!3322685 e!3322690)))

(assert (=> b!5352578 (= c!931944 ((_ is Star!15041) (regOne!30595 r!7292)))))

(assert (=> b!5352579 (= e!3322688 call!382753)))

(declare-fun b!5352580 () Bool)

(assert (=> b!5352580 (= e!3322687 e!3322691)))

(declare-fun res!2271065 () Bool)

(assert (=> b!5352580 (= res!2271065 (not ((_ is EmptyLang!15041) (regOne!30595 r!7292))))))

(assert (=> b!5352580 (=> (not res!2271065) (not e!3322691))))

(assert (= (and d!1716148 c!931943) b!5352576))

(assert (= (and d!1716148 (not c!931943)) b!5352580))

(assert (= (and b!5352580 res!2271065) b!5352573))

(assert (= (and b!5352573 c!931942) b!5352577))

(assert (= (and b!5352573 (not c!931942)) b!5352575))

(assert (= (and b!5352575 c!931941) b!5352570))

(assert (= (and b!5352575 (not c!931941)) b!5352578))

(assert (= (and b!5352570 (not res!2271066)) b!5352572))

(assert (= (and b!5352578 c!931944) b!5352571))

(assert (= (and b!5352578 (not c!931944)) b!5352574))

(assert (= (and b!5352571 (not res!2271067)) b!5352579))

(assert (= (or b!5352579 b!5352574) bm!382749))

(assert (= (or b!5352576 b!5352571) bm!382748))

(declare-fun m!6383318 () Bool)

(assert (=> b!5352572 m!6383318))

(assert (=> bm!382748 m!6382504))

(declare-fun m!6383320 () Bool)

(assert (=> b!5352570 m!6383320))

(declare-fun m!6383322 () Bool)

(assert (=> bm!382749 m!6383322))

(assert (=> b!5351532 d!1716148))

(declare-fun bs!1240785 () Bool)

(declare-fun d!1716158 () Bool)

(assert (= bs!1240785 (and d!1716158 d!1715764)))

(declare-fun lambda!275211 () Int)

(assert (=> bs!1240785 (= lambda!275211 lambda!275134)))

(declare-fun bs!1240786 () Bool)

(assert (= bs!1240786 (and d!1716158 d!1715746)))

(assert (=> bs!1240786 (= lambda!275211 lambda!275124)))

(declare-fun bs!1240787 () Bool)

(assert (= bs!1240787 (and d!1716158 d!1716058)))

(assert (=> bs!1240787 (= lambda!275211 lambda!275191)))

(declare-fun bs!1240788 () Bool)

(assert (= bs!1240788 (and d!1716158 d!1715758)))

(assert (=> bs!1240788 (= lambda!275211 lambda!275130)))

(declare-fun bs!1240789 () Bool)

(assert (= bs!1240789 (and d!1716158 d!1715938)))

(assert (=> bs!1240789 (= lambda!275211 lambda!275177)))

(declare-fun bs!1240790 () Bool)

(assert (= bs!1240790 (and d!1716158 d!1715996)))

(assert (=> bs!1240790 (= lambda!275211 lambda!275182)))

(declare-fun bs!1240791 () Bool)

(assert (= bs!1240791 (and d!1716158 d!1715830)))

(assert (=> bs!1240791 (= lambda!275211 lambda!275155)))

(declare-fun bs!1240792 () Bool)

(assert (= bs!1240792 (and d!1716158 d!1715756)))

(assert (=> bs!1240792 (= lambda!275211 lambda!275125)))

(declare-fun bs!1240793 () Bool)

(assert (= bs!1240793 (and d!1716158 d!1716048)))

(assert (=> bs!1240793 (= lambda!275211 lambda!275189)))

(declare-fun b!5352591 () Bool)

(declare-fun e!3322701 () Bool)

(assert (=> b!5352591 (= e!3322701 (isEmpty!33276 (t!374639 (t!374639 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun b!5352592 () Bool)

(declare-fun e!3322702 () Bool)

(declare-fun e!3322700 () Bool)

(assert (=> b!5352592 (= e!3322702 e!3322700)))

(declare-fun c!931950 () Bool)

(assert (=> b!5352592 (= c!931950 (isEmpty!33276 (tail!10575 (t!374639 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun b!5352593 () Bool)

(declare-fun lt!2181433 () Regex!15041)

(assert (=> b!5352593 (= e!3322700 (isConcat!438 lt!2181433))))

(declare-fun b!5352594 () Bool)

(assert (=> b!5352594 (= e!3322702 (isEmptyExpr!915 lt!2181433))))

(declare-fun b!5352595 () Bool)

(declare-fun e!3322698 () Bool)

(assert (=> b!5352595 (= e!3322698 e!3322702)))

(declare-fun c!931953 () Bool)

(assert (=> b!5352595 (= c!931953 (isEmpty!33276 (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352596 () Bool)

(assert (=> b!5352596 (= e!3322700 (= lt!2181433 (head!11478 (t!374639 (exprs!4925 (h!67747 zl!343))))))))

(declare-fun b!5352597 () Bool)

(declare-fun e!3322699 () Regex!15041)

(assert (=> b!5352597 (= e!3322699 EmptyExpr!15041)))

(declare-fun b!5352598 () Bool)

(declare-fun e!3322697 () Regex!15041)

(assert (=> b!5352598 (= e!3322697 e!3322699)))

(declare-fun c!931952 () Bool)

(assert (=> b!5352598 (= c!931952 ((_ is Cons!61298) (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun b!5352599 () Bool)

(assert (=> b!5352599 (= e!3322699 (Concat!23886 (h!67746 (t!374639 (exprs!4925 (h!67747 zl!343)))) (generalisedConcat!710 (t!374639 (t!374639 (exprs!4925 (h!67747 zl!343)))))))))

(declare-fun b!5352600 () Bool)

(assert (=> b!5352600 (= e!3322697 (h!67746 (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> d!1716158 e!3322698))

(declare-fun res!2271071 () Bool)

(assert (=> d!1716158 (=> (not res!2271071) (not e!3322698))))

(assert (=> d!1716158 (= res!2271071 (validRegex!6777 lt!2181433))))

(assert (=> d!1716158 (= lt!2181433 e!3322697)))

(declare-fun c!931951 () Bool)

(assert (=> d!1716158 (= c!931951 e!3322701)))

(declare-fun res!2271070 () Bool)

(assert (=> d!1716158 (=> (not res!2271070) (not e!3322701))))

(assert (=> d!1716158 (= res!2271070 ((_ is Cons!61298) (t!374639 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> d!1716158 (forall!14467 (t!374639 (exprs!4925 (h!67747 zl!343))) lambda!275211)))

(assert (=> d!1716158 (= (generalisedConcat!710 (t!374639 (exprs!4925 (h!67747 zl!343)))) lt!2181433)))

(assert (= (and d!1716158 res!2271070) b!5352591))

(assert (= (and d!1716158 c!931951) b!5352600))

(assert (= (and d!1716158 (not c!931951)) b!5352598))

(assert (= (and b!5352598 c!931952) b!5352599))

(assert (= (and b!5352598 (not c!931952)) b!5352597))

(assert (= (and d!1716158 res!2271071) b!5352595))

(assert (= (and b!5352595 c!931953) b!5352594))

(assert (= (and b!5352595 (not c!931953)) b!5352592))

(assert (= (and b!5352592 c!931950) b!5352596))

(assert (= (and b!5352592 (not c!931950)) b!5352593))

(declare-fun m!6383324 () Bool)

(assert (=> b!5352591 m!6383324))

(declare-fun m!6383326 () Bool)

(assert (=> b!5352593 m!6383326))

(declare-fun m!6383328 () Bool)

(assert (=> b!5352596 m!6383328))

(declare-fun m!6383330 () Bool)

(assert (=> d!1716158 m!6383330))

(declare-fun m!6383332 () Bool)

(assert (=> d!1716158 m!6383332))

(declare-fun m!6383334 () Bool)

(assert (=> b!5352592 m!6383334))

(assert (=> b!5352592 m!6383334))

(declare-fun m!6383336 () Bool)

(assert (=> b!5352592 m!6383336))

(assert (=> b!5352595 m!6382308))

(declare-fun m!6383338 () Bool)

(assert (=> b!5352594 m!6383338))

(declare-fun m!6383340 () Bool)

(assert (=> b!5352599 m!6383340))

(assert (=> b!5351797 d!1716158))

(declare-fun b!5352608 () Bool)

(declare-fun e!3322707 () Bool)

(declare-fun tp!1486596 () Bool)

(assert (=> b!5352608 (= e!3322707 tp!1486596)))

(declare-fun tp!1486597 () Bool)

(declare-fun e!3322706 () Bool)

(declare-fun b!5352607 () Bool)

(assert (=> b!5352607 (= e!3322706 (and (inv!80849 (h!67747 (t!374640 (t!374640 zl!343)))) e!3322707 tp!1486597))))

(assert (=> b!5351910 (= tp!1486525 e!3322706)))

(assert (= b!5352607 b!5352608))

(assert (= (and b!5351910 ((_ is Cons!61299) (t!374640 (t!374640 zl!343)))) b!5352607))

(declare-fun m!6383346 () Bool)

(assert (=> b!5352607 m!6383346))

(declare-fun b!5352609 () Bool)

(declare-fun e!3322708 () Bool)

(declare-fun tp!1486598 () Bool)

(declare-fun tp!1486599 () Bool)

(assert (=> b!5352609 (= e!3322708 (and tp!1486598 tp!1486599))))

(assert (=> b!5351911 (= tp!1486524 e!3322708)))

(assert (= (and b!5351911 ((_ is Cons!61298) (exprs!4925 (h!67747 (t!374640 zl!343))))) b!5352609))

(declare-fun condSetEmpty!34586 () Bool)

(assert (=> setNonEmpty!34579 (= condSetEmpty!34586 (= setRest!34579 ((as const (Array Context!8850 Bool)) false)))))

(declare-fun setRes!34586 () Bool)

(assert (=> setNonEmpty!34579 (= tp!1486574 setRes!34586)))

(declare-fun setIsEmpty!34586 () Bool)

(assert (=> setIsEmpty!34586 setRes!34586))

(declare-fun setNonEmpty!34586 () Bool)

(declare-fun setElem!34586 () Context!8850)

(declare-fun e!3322709 () Bool)

(declare-fun tp!1486600 () Bool)

(assert (=> setNonEmpty!34586 (= setRes!34586 (and tp!1486600 (inv!80849 setElem!34586) e!3322709))))

(declare-fun setRest!34586 () (InoxSet Context!8850))

(assert (=> setNonEmpty!34586 (= setRest!34579 ((_ map or) (store ((as const (Array Context!8850 Bool)) false) setElem!34586 true) setRest!34586))))

(declare-fun b!5352610 () Bool)

(declare-fun tp!1486601 () Bool)

(assert (=> b!5352610 (= e!3322709 tp!1486601)))

(assert (= (and setNonEmpty!34579 condSetEmpty!34586) setIsEmpty!34586))

(assert (= (and setNonEmpty!34579 (not condSetEmpty!34586)) setNonEmpty!34586))

(assert (= setNonEmpty!34586 b!5352610))

(declare-fun m!6383348 () Bool)

(assert (=> setNonEmpty!34586 m!6383348))

(declare-fun b!5352611 () Bool)

(declare-fun e!3322710 () Bool)

(declare-fun tp!1486602 () Bool)

(declare-fun tp!1486603 () Bool)

(assert (=> b!5352611 (= e!3322710 (and tp!1486602 tp!1486603))))

(assert (=> b!5351956 (= tp!1486575 e!3322710)))

(assert (= (and b!5351956 ((_ is Cons!61298) (exprs!4925 setElem!34579))) b!5352611))

(declare-fun e!3322711 () Bool)

(assert (=> b!5351928 (= tp!1486542 e!3322711)))

(declare-fun b!5352615 () Bool)

(declare-fun tp!1486606 () Bool)

(declare-fun tp!1486607 () Bool)

(assert (=> b!5352615 (= e!3322711 (and tp!1486606 tp!1486607))))

(declare-fun b!5352612 () Bool)

(assert (=> b!5352612 (= e!3322711 tp_is_empty!39335)))

(declare-fun b!5352613 () Bool)

(declare-fun tp!1486608 () Bool)

(declare-fun tp!1486604 () Bool)

(assert (=> b!5352613 (= e!3322711 (and tp!1486608 tp!1486604))))

(declare-fun b!5352614 () Bool)

(declare-fun tp!1486605 () Bool)

(assert (=> b!5352614 (= e!3322711 tp!1486605)))

(assert (= (and b!5351928 ((_ is ElementMatch!15041) (reg!15370 (regTwo!30594 r!7292)))) b!5352612))

(assert (= (and b!5351928 ((_ is Concat!23886) (reg!15370 (regTwo!30594 r!7292)))) b!5352613))

(assert (= (and b!5351928 ((_ is Star!15041) (reg!15370 (regTwo!30594 r!7292)))) b!5352614))

(assert (= (and b!5351928 ((_ is Union!15041) (reg!15370 (regTwo!30594 r!7292)))) b!5352615))

(declare-fun e!3322716 () Bool)

(assert (=> b!5351951 (= tp!1486567 e!3322716)))

(declare-fun b!5352623 () Bool)

(declare-fun tp!1486611 () Bool)

(declare-fun tp!1486612 () Bool)

(assert (=> b!5352623 (= e!3322716 (and tp!1486611 tp!1486612))))

(declare-fun b!5352620 () Bool)

(assert (=> b!5352620 (= e!3322716 tp_is_empty!39335)))

(declare-fun b!5352621 () Bool)

(declare-fun tp!1486613 () Bool)

(declare-fun tp!1486609 () Bool)

(assert (=> b!5352621 (= e!3322716 (and tp!1486613 tp!1486609))))

(declare-fun b!5352622 () Bool)

(declare-fun tp!1486610 () Bool)

(assert (=> b!5352622 (= e!3322716 tp!1486610)))

(assert (= (and b!5351951 ((_ is ElementMatch!15041) (regOne!30595 (reg!15370 r!7292)))) b!5352620))

(assert (= (and b!5351951 ((_ is Concat!23886) (regOne!30595 (reg!15370 r!7292)))) b!5352621))

(assert (= (and b!5351951 ((_ is Star!15041) (regOne!30595 (reg!15370 r!7292)))) b!5352622))

(assert (= (and b!5351951 ((_ is Union!15041) (regOne!30595 (reg!15370 r!7292)))) b!5352623))

(declare-fun e!3322717 () Bool)

(assert (=> b!5351951 (= tp!1486568 e!3322717)))

(declare-fun b!5352627 () Bool)

(declare-fun tp!1486616 () Bool)

(declare-fun tp!1486617 () Bool)

(assert (=> b!5352627 (= e!3322717 (and tp!1486616 tp!1486617))))

(declare-fun b!5352624 () Bool)

(assert (=> b!5352624 (= e!3322717 tp_is_empty!39335)))

(declare-fun b!5352625 () Bool)

(declare-fun tp!1486618 () Bool)

(declare-fun tp!1486614 () Bool)

(assert (=> b!5352625 (= e!3322717 (and tp!1486618 tp!1486614))))

(declare-fun b!5352626 () Bool)

(declare-fun tp!1486615 () Bool)

(assert (=> b!5352626 (= e!3322717 tp!1486615)))

(assert (= (and b!5351951 ((_ is ElementMatch!15041) (regTwo!30595 (reg!15370 r!7292)))) b!5352624))

(assert (= (and b!5351951 ((_ is Concat!23886) (regTwo!30595 (reg!15370 r!7292)))) b!5352625))

(assert (= (and b!5351951 ((_ is Star!15041) (regTwo!30595 (reg!15370 r!7292)))) b!5352626))

(assert (= (and b!5351951 ((_ is Union!15041) (regTwo!30595 (reg!15370 r!7292)))) b!5352627))

(declare-fun e!3322718 () Bool)

(assert (=> b!5351942 (= tp!1486556 e!3322718)))

(declare-fun b!5352631 () Bool)

(declare-fun tp!1486621 () Bool)

(declare-fun tp!1486622 () Bool)

(assert (=> b!5352631 (= e!3322718 (and tp!1486621 tp!1486622))))

(declare-fun b!5352628 () Bool)

(assert (=> b!5352628 (= e!3322718 tp_is_empty!39335)))

(declare-fun b!5352629 () Bool)

(declare-fun tp!1486623 () Bool)

(declare-fun tp!1486619 () Bool)

(assert (=> b!5352629 (= e!3322718 (and tp!1486623 tp!1486619))))

(declare-fun b!5352630 () Bool)

(declare-fun tp!1486620 () Bool)

(assert (=> b!5352630 (= e!3322718 tp!1486620)))

(assert (= (and b!5351942 ((_ is ElementMatch!15041) (reg!15370 (regOne!30595 r!7292)))) b!5352628))

(assert (= (and b!5351942 ((_ is Concat!23886) (reg!15370 (regOne!30595 r!7292)))) b!5352629))

(assert (= (and b!5351942 ((_ is Star!15041) (reg!15370 (regOne!30595 r!7292)))) b!5352630))

(assert (= (and b!5351942 ((_ is Union!15041) (reg!15370 (regOne!30595 r!7292)))) b!5352631))

(declare-fun e!3322719 () Bool)

(assert (=> b!5351943 (= tp!1486557 e!3322719)))

(declare-fun b!5352635 () Bool)

(declare-fun tp!1486626 () Bool)

(declare-fun tp!1486627 () Bool)

(assert (=> b!5352635 (= e!3322719 (and tp!1486626 tp!1486627))))

(declare-fun b!5352632 () Bool)

(assert (=> b!5352632 (= e!3322719 tp_is_empty!39335)))

(declare-fun b!5352633 () Bool)

(declare-fun tp!1486628 () Bool)

(declare-fun tp!1486624 () Bool)

(assert (=> b!5352633 (= e!3322719 (and tp!1486628 tp!1486624))))

(declare-fun b!5352634 () Bool)

(declare-fun tp!1486625 () Bool)

(assert (=> b!5352634 (= e!3322719 tp!1486625)))

(assert (= (and b!5351943 ((_ is ElementMatch!15041) (regOne!30595 (regOne!30595 r!7292)))) b!5352632))

(assert (= (and b!5351943 ((_ is Concat!23886) (regOne!30595 (regOne!30595 r!7292)))) b!5352633))

(assert (= (and b!5351943 ((_ is Star!15041) (regOne!30595 (regOne!30595 r!7292)))) b!5352634))

(assert (= (and b!5351943 ((_ is Union!15041) (regOne!30595 (regOne!30595 r!7292)))) b!5352635))

(declare-fun e!3322720 () Bool)

(assert (=> b!5351943 (= tp!1486558 e!3322720)))

(declare-fun b!5352639 () Bool)

(declare-fun tp!1486631 () Bool)

(declare-fun tp!1486632 () Bool)

(assert (=> b!5352639 (= e!3322720 (and tp!1486631 tp!1486632))))

(declare-fun b!5352636 () Bool)

(assert (=> b!5352636 (= e!3322720 tp_is_empty!39335)))

(declare-fun b!5352637 () Bool)

(declare-fun tp!1486633 () Bool)

(declare-fun tp!1486629 () Bool)

(assert (=> b!5352637 (= e!3322720 (and tp!1486633 tp!1486629))))

(declare-fun b!5352638 () Bool)

(declare-fun tp!1486630 () Bool)

(assert (=> b!5352638 (= e!3322720 tp!1486630)))

(assert (= (and b!5351943 ((_ is ElementMatch!15041) (regTwo!30595 (regOne!30595 r!7292)))) b!5352636))

(assert (= (and b!5351943 ((_ is Concat!23886) (regTwo!30595 (regOne!30595 r!7292)))) b!5352637))

(assert (= (and b!5351943 ((_ is Star!15041) (regTwo!30595 (regOne!30595 r!7292)))) b!5352638))

(assert (= (and b!5351943 ((_ is Union!15041) (regTwo!30595 (regOne!30595 r!7292)))) b!5352639))

(declare-fun e!3322723 () Bool)

(assert (=> b!5351929 (= tp!1486543 e!3322723)))

(declare-fun b!5352645 () Bool)

(declare-fun tp!1486636 () Bool)

(declare-fun tp!1486637 () Bool)

(assert (=> b!5352645 (= e!3322723 (and tp!1486636 tp!1486637))))

(declare-fun b!5352642 () Bool)

(assert (=> b!5352642 (= e!3322723 tp_is_empty!39335)))

(declare-fun b!5352643 () Bool)

(declare-fun tp!1486638 () Bool)

(declare-fun tp!1486634 () Bool)

(assert (=> b!5352643 (= e!3322723 (and tp!1486638 tp!1486634))))

(declare-fun b!5352644 () Bool)

(declare-fun tp!1486635 () Bool)

(assert (=> b!5352644 (= e!3322723 tp!1486635)))

(assert (= (and b!5351929 ((_ is ElementMatch!15041) (regOne!30595 (regTwo!30594 r!7292)))) b!5352642))

(assert (= (and b!5351929 ((_ is Concat!23886) (regOne!30595 (regTwo!30594 r!7292)))) b!5352643))

(assert (= (and b!5351929 ((_ is Star!15041) (regOne!30595 (regTwo!30594 r!7292)))) b!5352644))

(assert (= (and b!5351929 ((_ is Union!15041) (regOne!30595 (regTwo!30594 r!7292)))) b!5352645))

(declare-fun e!3322724 () Bool)

(assert (=> b!5351929 (= tp!1486544 e!3322724)))

(declare-fun b!5352649 () Bool)

(declare-fun tp!1486641 () Bool)

(declare-fun tp!1486642 () Bool)

(assert (=> b!5352649 (= e!3322724 (and tp!1486641 tp!1486642))))

(declare-fun b!5352646 () Bool)

(assert (=> b!5352646 (= e!3322724 tp_is_empty!39335)))

(declare-fun b!5352647 () Bool)

(declare-fun tp!1486643 () Bool)

(declare-fun tp!1486639 () Bool)

(assert (=> b!5352647 (= e!3322724 (and tp!1486643 tp!1486639))))

(declare-fun b!5352648 () Bool)

(declare-fun tp!1486640 () Bool)

(assert (=> b!5352648 (= e!3322724 tp!1486640)))

(assert (= (and b!5351929 ((_ is ElementMatch!15041) (regTwo!30595 (regTwo!30594 r!7292)))) b!5352646))

(assert (= (and b!5351929 ((_ is Concat!23886) (regTwo!30595 (regTwo!30594 r!7292)))) b!5352647))

(assert (= (and b!5351929 ((_ is Star!15041) (regTwo!30595 (regTwo!30594 r!7292)))) b!5352648))

(assert (= (and b!5351929 ((_ is Union!15041) (regTwo!30595 (regTwo!30594 r!7292)))) b!5352649))

(declare-fun e!3322725 () Bool)

(assert (=> b!5351949 (= tp!1486569 e!3322725)))

(declare-fun b!5352653 () Bool)

(declare-fun tp!1486646 () Bool)

(declare-fun tp!1486647 () Bool)

(assert (=> b!5352653 (= e!3322725 (and tp!1486646 tp!1486647))))

(declare-fun b!5352650 () Bool)

(assert (=> b!5352650 (= e!3322725 tp_is_empty!39335)))

(declare-fun b!5352651 () Bool)

(declare-fun tp!1486648 () Bool)

(declare-fun tp!1486644 () Bool)

(assert (=> b!5352651 (= e!3322725 (and tp!1486648 tp!1486644))))

(declare-fun b!5352652 () Bool)

(declare-fun tp!1486645 () Bool)

(assert (=> b!5352652 (= e!3322725 tp!1486645)))

(assert (= (and b!5351949 ((_ is ElementMatch!15041) (regOne!30594 (reg!15370 r!7292)))) b!5352650))

(assert (= (and b!5351949 ((_ is Concat!23886) (regOne!30594 (reg!15370 r!7292)))) b!5352651))

(assert (= (and b!5351949 ((_ is Star!15041) (regOne!30594 (reg!15370 r!7292)))) b!5352652))

(assert (= (and b!5351949 ((_ is Union!15041) (regOne!30594 (reg!15370 r!7292)))) b!5352653))

(declare-fun e!3322726 () Bool)

(assert (=> b!5351949 (= tp!1486565 e!3322726)))

(declare-fun b!5352657 () Bool)

(declare-fun tp!1486651 () Bool)

(declare-fun tp!1486652 () Bool)

(assert (=> b!5352657 (= e!3322726 (and tp!1486651 tp!1486652))))

(declare-fun b!5352654 () Bool)

(assert (=> b!5352654 (= e!3322726 tp_is_empty!39335)))

(declare-fun b!5352655 () Bool)

(declare-fun tp!1486653 () Bool)

(declare-fun tp!1486649 () Bool)

(assert (=> b!5352655 (= e!3322726 (and tp!1486653 tp!1486649))))

(declare-fun b!5352656 () Bool)

(declare-fun tp!1486650 () Bool)

(assert (=> b!5352656 (= e!3322726 tp!1486650)))

(assert (= (and b!5351949 ((_ is ElementMatch!15041) (regTwo!30594 (reg!15370 r!7292)))) b!5352654))

(assert (= (and b!5351949 ((_ is Concat!23886) (regTwo!30594 (reg!15370 r!7292)))) b!5352655))

(assert (= (and b!5351949 ((_ is Star!15041) (regTwo!30594 (reg!15370 r!7292)))) b!5352656))

(assert (= (and b!5351949 ((_ is Union!15041) (regTwo!30594 (reg!15370 r!7292)))) b!5352657))

(declare-fun e!3322727 () Bool)

(assert (=> b!5351934 (= tp!1486550 e!3322727)))

(declare-fun b!5352661 () Bool)

(declare-fun tp!1486656 () Bool)

(declare-fun tp!1486657 () Bool)

(assert (=> b!5352661 (= e!3322727 (and tp!1486656 tp!1486657))))

(declare-fun b!5352658 () Bool)

(assert (=> b!5352658 (= e!3322727 tp_is_empty!39335)))

(declare-fun b!5352659 () Bool)

(declare-fun tp!1486658 () Bool)

(declare-fun tp!1486654 () Bool)

(assert (=> b!5352659 (= e!3322727 (and tp!1486658 tp!1486654))))

(declare-fun b!5352660 () Bool)

(declare-fun tp!1486655 () Bool)

(assert (=> b!5352660 (= e!3322727 tp!1486655)))

(assert (= (and b!5351934 ((_ is ElementMatch!15041) (h!67746 (exprs!4925 setElem!34573)))) b!5352658))

(assert (= (and b!5351934 ((_ is Concat!23886) (h!67746 (exprs!4925 setElem!34573)))) b!5352659))

(assert (= (and b!5351934 ((_ is Star!15041) (h!67746 (exprs!4925 setElem!34573)))) b!5352660))

(assert (= (and b!5351934 ((_ is Union!15041) (h!67746 (exprs!4925 setElem!34573)))) b!5352661))

(declare-fun b!5352664 () Bool)

(declare-fun e!3322730 () Bool)

(declare-fun tp!1486659 () Bool)

(declare-fun tp!1486660 () Bool)

(assert (=> b!5352664 (= e!3322730 (and tp!1486659 tp!1486660))))

(assert (=> b!5351934 (= tp!1486551 e!3322730)))

(assert (= (and b!5351934 ((_ is Cons!61298) (t!374639 (exprs!4925 setElem!34573)))) b!5352664))

(declare-fun e!3322733 () Bool)

(assert (=> b!5351941 (= tp!1486559 e!3322733)))

(declare-fun b!5352670 () Bool)

(declare-fun tp!1486665 () Bool)

(declare-fun tp!1486666 () Bool)

(assert (=> b!5352670 (= e!3322733 (and tp!1486665 tp!1486666))))

(declare-fun b!5352667 () Bool)

(assert (=> b!5352667 (= e!3322733 tp_is_empty!39335)))

(declare-fun b!5352668 () Bool)

(declare-fun tp!1486667 () Bool)

(declare-fun tp!1486663 () Bool)

(assert (=> b!5352668 (= e!3322733 (and tp!1486667 tp!1486663))))

(declare-fun b!5352669 () Bool)

(declare-fun tp!1486664 () Bool)

(assert (=> b!5352669 (= e!3322733 tp!1486664)))

(assert (= (and b!5351941 ((_ is ElementMatch!15041) (regOne!30594 (regOne!30595 r!7292)))) b!5352667))

(assert (= (and b!5351941 ((_ is Concat!23886) (regOne!30594 (regOne!30595 r!7292)))) b!5352668))

(assert (= (and b!5351941 ((_ is Star!15041) (regOne!30594 (regOne!30595 r!7292)))) b!5352669))

(assert (= (and b!5351941 ((_ is Union!15041) (regOne!30594 (regOne!30595 r!7292)))) b!5352670))

(declare-fun e!3322734 () Bool)

(assert (=> b!5351941 (= tp!1486555 e!3322734)))

(declare-fun b!5352674 () Bool)

(declare-fun tp!1486672 () Bool)

(declare-fun tp!1486673 () Bool)

(assert (=> b!5352674 (= e!3322734 (and tp!1486672 tp!1486673))))

(declare-fun b!5352671 () Bool)

(assert (=> b!5352671 (= e!3322734 tp_is_empty!39335)))

(declare-fun b!5352672 () Bool)

(declare-fun tp!1486674 () Bool)

(declare-fun tp!1486670 () Bool)

(assert (=> b!5352672 (= e!3322734 (and tp!1486674 tp!1486670))))

(declare-fun b!5352673 () Bool)

(declare-fun tp!1486671 () Bool)

(assert (=> b!5352673 (= e!3322734 tp!1486671)))

(assert (= (and b!5351941 ((_ is ElementMatch!15041) (regTwo!30594 (regOne!30595 r!7292)))) b!5352671))

(assert (= (and b!5351941 ((_ is Concat!23886) (regTwo!30594 (regOne!30595 r!7292)))) b!5352672))

(assert (= (and b!5351941 ((_ is Star!15041) (regTwo!30594 (regOne!30595 r!7292)))) b!5352673))

(assert (= (and b!5351941 ((_ is Union!15041) (regTwo!30594 (regOne!30595 r!7292)))) b!5352674))

(declare-fun e!3322737 () Bool)

(assert (=> b!5351957 (= tp!1486576 e!3322737)))

(declare-fun b!5352680 () Bool)

(declare-fun tp!1486677 () Bool)

(declare-fun tp!1486678 () Bool)

(assert (=> b!5352680 (= e!3322737 (and tp!1486677 tp!1486678))))

(declare-fun b!5352677 () Bool)

(assert (=> b!5352677 (= e!3322737 tp_is_empty!39335)))

(declare-fun b!5352678 () Bool)

(declare-fun tp!1486679 () Bool)

(declare-fun tp!1486675 () Bool)

(assert (=> b!5352678 (= e!3322737 (and tp!1486679 tp!1486675))))

(declare-fun b!5352679 () Bool)

(declare-fun tp!1486676 () Bool)

(assert (=> b!5352679 (= e!3322737 tp!1486676)))

(assert (= (and b!5351957 ((_ is ElementMatch!15041) (h!67746 (exprs!4925 (h!67747 zl!343))))) b!5352677))

(assert (= (and b!5351957 ((_ is Concat!23886) (h!67746 (exprs!4925 (h!67747 zl!343))))) b!5352678))

(assert (= (and b!5351957 ((_ is Star!15041) (h!67746 (exprs!4925 (h!67747 zl!343))))) b!5352679))

(assert (= (and b!5351957 ((_ is Union!15041) (h!67746 (exprs!4925 (h!67747 zl!343))))) b!5352680))

(declare-fun b!5352681 () Bool)

(declare-fun e!3322738 () Bool)

(declare-fun tp!1486680 () Bool)

(declare-fun tp!1486681 () Bool)

(assert (=> b!5352681 (= e!3322738 (and tp!1486680 tp!1486681))))

(assert (=> b!5351957 (= tp!1486577 e!3322738)))

(assert (= (and b!5351957 ((_ is Cons!61298) (t!374639 (exprs!4925 (h!67747 zl!343))))) b!5352681))

(declare-fun e!3322739 () Bool)

(assert (=> b!5351927 (= tp!1486545 e!3322739)))

(declare-fun b!5352685 () Bool)

(declare-fun tp!1486684 () Bool)

(declare-fun tp!1486685 () Bool)

(assert (=> b!5352685 (= e!3322739 (and tp!1486684 tp!1486685))))

(declare-fun b!5352682 () Bool)

(assert (=> b!5352682 (= e!3322739 tp_is_empty!39335)))

(declare-fun b!5352683 () Bool)

(declare-fun tp!1486686 () Bool)

(declare-fun tp!1486682 () Bool)

(assert (=> b!5352683 (= e!3322739 (and tp!1486686 tp!1486682))))

(declare-fun b!5352684 () Bool)

(declare-fun tp!1486683 () Bool)

(assert (=> b!5352684 (= e!3322739 tp!1486683)))

(assert (= (and b!5351927 ((_ is ElementMatch!15041) (regOne!30594 (regTwo!30594 r!7292)))) b!5352682))

(assert (= (and b!5351927 ((_ is Concat!23886) (regOne!30594 (regTwo!30594 r!7292)))) b!5352683))

(assert (= (and b!5351927 ((_ is Star!15041) (regOne!30594 (regTwo!30594 r!7292)))) b!5352684))

(assert (= (and b!5351927 ((_ is Union!15041) (regOne!30594 (regTwo!30594 r!7292)))) b!5352685))

(declare-fun e!3322740 () Bool)

(assert (=> b!5351927 (= tp!1486541 e!3322740)))

(declare-fun b!5352689 () Bool)

(declare-fun tp!1486689 () Bool)

(declare-fun tp!1486690 () Bool)

(assert (=> b!5352689 (= e!3322740 (and tp!1486689 tp!1486690))))

(declare-fun b!5352686 () Bool)

(assert (=> b!5352686 (= e!3322740 tp_is_empty!39335)))

(declare-fun b!5352687 () Bool)

(declare-fun tp!1486691 () Bool)

(declare-fun tp!1486687 () Bool)

(assert (=> b!5352687 (= e!3322740 (and tp!1486691 tp!1486687))))

(declare-fun b!5352688 () Bool)

(declare-fun tp!1486688 () Bool)

(assert (=> b!5352688 (= e!3322740 tp!1486688)))

(assert (= (and b!5351927 ((_ is ElementMatch!15041) (regTwo!30594 (regTwo!30594 r!7292)))) b!5352686))

(assert (= (and b!5351927 ((_ is Concat!23886) (regTwo!30594 (regTwo!30594 r!7292)))) b!5352687))

(assert (= (and b!5351927 ((_ is Star!15041) (regTwo!30594 (regTwo!30594 r!7292)))) b!5352688))

(assert (= (and b!5351927 ((_ is Union!15041) (regTwo!30594 (regTwo!30594 r!7292)))) b!5352689))

(declare-fun e!3322741 () Bool)

(assert (=> b!5351950 (= tp!1486566 e!3322741)))

(declare-fun b!5352693 () Bool)

(declare-fun tp!1486694 () Bool)

(declare-fun tp!1486695 () Bool)

(assert (=> b!5352693 (= e!3322741 (and tp!1486694 tp!1486695))))

(declare-fun b!5352690 () Bool)

(assert (=> b!5352690 (= e!3322741 tp_is_empty!39335)))

(declare-fun b!5352691 () Bool)

(declare-fun tp!1486696 () Bool)

(declare-fun tp!1486692 () Bool)

(assert (=> b!5352691 (= e!3322741 (and tp!1486696 tp!1486692))))

(declare-fun b!5352692 () Bool)

(declare-fun tp!1486693 () Bool)

(assert (=> b!5352692 (= e!3322741 tp!1486693)))

(assert (= (and b!5351950 ((_ is ElementMatch!15041) (reg!15370 (reg!15370 r!7292)))) b!5352690))

(assert (= (and b!5351950 ((_ is Concat!23886) (reg!15370 (reg!15370 r!7292)))) b!5352691))

(assert (= (and b!5351950 ((_ is Star!15041) (reg!15370 (reg!15370 r!7292)))) b!5352692))

(assert (= (and b!5351950 ((_ is Union!15041) (reg!15370 (reg!15370 r!7292)))) b!5352693))

(declare-fun e!3322745 () Bool)

(assert (=> b!5351923 (= tp!1486540 e!3322745)))

(declare-fun b!5352700 () Bool)

(declare-fun tp!1486701 () Bool)

(declare-fun tp!1486702 () Bool)

(assert (=> b!5352700 (= e!3322745 (and tp!1486701 tp!1486702))))

(declare-fun b!5352697 () Bool)

(assert (=> b!5352697 (= e!3322745 tp_is_empty!39335)))

(declare-fun b!5352698 () Bool)

(declare-fun tp!1486703 () Bool)

(declare-fun tp!1486699 () Bool)

(assert (=> b!5352698 (= e!3322745 (and tp!1486703 tp!1486699))))

(declare-fun b!5352699 () Bool)

(declare-fun tp!1486700 () Bool)

(assert (=> b!5352699 (= e!3322745 tp!1486700)))

(assert (= (and b!5351923 ((_ is ElementMatch!15041) (regOne!30594 (regOne!30594 r!7292)))) b!5352697))

(assert (= (and b!5351923 ((_ is Concat!23886) (regOne!30594 (regOne!30594 r!7292)))) b!5352698))

(assert (= (and b!5351923 ((_ is Star!15041) (regOne!30594 (regOne!30594 r!7292)))) b!5352699))

(assert (= (and b!5351923 ((_ is Union!15041) (regOne!30594 (regOne!30594 r!7292)))) b!5352700))

(declare-fun e!3322746 () Bool)

(assert (=> b!5351923 (= tp!1486536 e!3322746)))

(declare-fun b!5352704 () Bool)

(declare-fun tp!1486706 () Bool)

(declare-fun tp!1486707 () Bool)

(assert (=> b!5352704 (= e!3322746 (and tp!1486706 tp!1486707))))

(declare-fun b!5352701 () Bool)

(assert (=> b!5352701 (= e!3322746 tp_is_empty!39335)))

(declare-fun b!5352702 () Bool)

(declare-fun tp!1486708 () Bool)

(declare-fun tp!1486704 () Bool)

(assert (=> b!5352702 (= e!3322746 (and tp!1486708 tp!1486704))))

(declare-fun b!5352703 () Bool)

(declare-fun tp!1486705 () Bool)

(assert (=> b!5352703 (= e!3322746 tp!1486705)))

(assert (= (and b!5351923 ((_ is ElementMatch!15041) (regTwo!30594 (regOne!30594 r!7292)))) b!5352701))

(assert (= (and b!5351923 ((_ is Concat!23886) (regTwo!30594 (regOne!30594 r!7292)))) b!5352702))

(assert (= (and b!5351923 ((_ is Star!15041) (regTwo!30594 (regOne!30594 r!7292)))) b!5352703))

(assert (= (and b!5351923 ((_ is Union!15041) (regTwo!30594 (regOne!30594 r!7292)))) b!5352704))

(declare-fun e!3322747 () Bool)

(assert (=> b!5351946 (= tp!1486561 e!3322747)))

(declare-fun b!5352708 () Bool)

(declare-fun tp!1486711 () Bool)

(declare-fun tp!1486712 () Bool)

(assert (=> b!5352708 (= e!3322747 (and tp!1486711 tp!1486712))))

(declare-fun b!5352705 () Bool)

(assert (=> b!5352705 (= e!3322747 tp_is_empty!39335)))

(declare-fun b!5352706 () Bool)

(declare-fun tp!1486713 () Bool)

(declare-fun tp!1486709 () Bool)

(assert (=> b!5352706 (= e!3322747 (and tp!1486713 tp!1486709))))

(declare-fun b!5352707 () Bool)

(declare-fun tp!1486710 () Bool)

(assert (=> b!5352707 (= e!3322747 tp!1486710)))

(assert (= (and b!5351946 ((_ is ElementMatch!15041) (reg!15370 (regTwo!30595 r!7292)))) b!5352705))

(assert (= (and b!5351946 ((_ is Concat!23886) (reg!15370 (regTwo!30595 r!7292)))) b!5352706))

(assert (= (and b!5351946 ((_ is Star!15041) (reg!15370 (regTwo!30595 r!7292)))) b!5352707))

(assert (= (and b!5351946 ((_ is Union!15041) (reg!15370 (regTwo!30595 r!7292)))) b!5352708))

(declare-fun e!3322749 () Bool)

(assert (=> b!5351924 (= tp!1486537 e!3322749)))

(declare-fun b!5352714 () Bool)

(declare-fun tp!1486716 () Bool)

(declare-fun tp!1486717 () Bool)

(assert (=> b!5352714 (= e!3322749 (and tp!1486716 tp!1486717))))

(declare-fun b!5352711 () Bool)

(assert (=> b!5352711 (= e!3322749 tp_is_empty!39335)))

(declare-fun b!5352712 () Bool)

(declare-fun tp!1486718 () Bool)

(declare-fun tp!1486714 () Bool)

(assert (=> b!5352712 (= e!3322749 (and tp!1486718 tp!1486714))))

(declare-fun b!5352713 () Bool)

(declare-fun tp!1486715 () Bool)

(assert (=> b!5352713 (= e!3322749 tp!1486715)))

(assert (= (and b!5351924 ((_ is ElementMatch!15041) (reg!15370 (regOne!30594 r!7292)))) b!5352711))

(assert (= (and b!5351924 ((_ is Concat!23886) (reg!15370 (regOne!30594 r!7292)))) b!5352712))

(assert (= (and b!5351924 ((_ is Star!15041) (reg!15370 (regOne!30594 r!7292)))) b!5352713))

(assert (= (and b!5351924 ((_ is Union!15041) (reg!15370 (regOne!30594 r!7292)))) b!5352714))

(declare-fun e!3322750 () Bool)

(assert (=> b!5351947 (= tp!1486562 e!3322750)))

(declare-fun b!5352718 () Bool)

(declare-fun tp!1486721 () Bool)

(declare-fun tp!1486722 () Bool)

(assert (=> b!5352718 (= e!3322750 (and tp!1486721 tp!1486722))))

(declare-fun b!5352715 () Bool)

(assert (=> b!5352715 (= e!3322750 tp_is_empty!39335)))

(declare-fun b!5352716 () Bool)

(declare-fun tp!1486723 () Bool)

(declare-fun tp!1486719 () Bool)

(assert (=> b!5352716 (= e!3322750 (and tp!1486723 tp!1486719))))

(declare-fun b!5352717 () Bool)

(declare-fun tp!1486720 () Bool)

(assert (=> b!5352717 (= e!3322750 tp!1486720)))

(assert (= (and b!5351947 ((_ is ElementMatch!15041) (regOne!30595 (regTwo!30595 r!7292)))) b!5352715))

(assert (= (and b!5351947 ((_ is Concat!23886) (regOne!30595 (regTwo!30595 r!7292)))) b!5352716))

(assert (= (and b!5351947 ((_ is Star!15041) (regOne!30595 (regTwo!30595 r!7292)))) b!5352717))

(assert (= (and b!5351947 ((_ is Union!15041) (regOne!30595 (regTwo!30595 r!7292)))) b!5352718))

(declare-fun e!3322751 () Bool)

(assert (=> b!5351947 (= tp!1486563 e!3322751)))

(declare-fun b!5352722 () Bool)

(declare-fun tp!1486726 () Bool)

(declare-fun tp!1486727 () Bool)

(assert (=> b!5352722 (= e!3322751 (and tp!1486726 tp!1486727))))

(declare-fun b!5352719 () Bool)

(assert (=> b!5352719 (= e!3322751 tp_is_empty!39335)))

(declare-fun b!5352720 () Bool)

(declare-fun tp!1486728 () Bool)

(declare-fun tp!1486724 () Bool)

(assert (=> b!5352720 (= e!3322751 (and tp!1486728 tp!1486724))))

(declare-fun b!5352721 () Bool)

(declare-fun tp!1486725 () Bool)

(assert (=> b!5352721 (= e!3322751 tp!1486725)))

(assert (= (and b!5351947 ((_ is ElementMatch!15041) (regTwo!30595 (regTwo!30595 r!7292)))) b!5352719))

(assert (= (and b!5351947 ((_ is Concat!23886) (regTwo!30595 (regTwo!30595 r!7292)))) b!5352720))

(assert (= (and b!5351947 ((_ is Star!15041) (regTwo!30595 (regTwo!30595 r!7292)))) b!5352721))

(assert (= (and b!5351947 ((_ is Union!15041) (regTwo!30595 (regTwo!30595 r!7292)))) b!5352722))

(declare-fun b!5352723 () Bool)

(declare-fun e!3322752 () Bool)

(declare-fun tp!1486729 () Bool)

(assert (=> b!5352723 (= e!3322752 (and tp_is_empty!39335 tp!1486729))))

(assert (=> b!5351939 (= tp!1486554 e!3322752)))

(assert (= (and b!5351939 ((_ is Cons!61300) (t!374641 (t!374641 s!2326)))) b!5352723))

(declare-fun e!3322753 () Bool)

(assert (=> b!5351925 (= tp!1486538 e!3322753)))

(declare-fun b!5352727 () Bool)

(declare-fun tp!1486732 () Bool)

(declare-fun tp!1486733 () Bool)

(assert (=> b!5352727 (= e!3322753 (and tp!1486732 tp!1486733))))

(declare-fun b!5352724 () Bool)

(assert (=> b!5352724 (= e!3322753 tp_is_empty!39335)))

(declare-fun b!5352725 () Bool)

(declare-fun tp!1486734 () Bool)

(declare-fun tp!1486730 () Bool)

(assert (=> b!5352725 (= e!3322753 (and tp!1486734 tp!1486730))))

(declare-fun b!5352726 () Bool)

(declare-fun tp!1486731 () Bool)

(assert (=> b!5352726 (= e!3322753 tp!1486731)))

(assert (= (and b!5351925 ((_ is ElementMatch!15041) (regOne!30595 (regOne!30594 r!7292)))) b!5352724))

(assert (= (and b!5351925 ((_ is Concat!23886) (regOne!30595 (regOne!30594 r!7292)))) b!5352725))

(assert (= (and b!5351925 ((_ is Star!15041) (regOne!30595 (regOne!30594 r!7292)))) b!5352726))

(assert (= (and b!5351925 ((_ is Union!15041) (regOne!30595 (regOne!30594 r!7292)))) b!5352727))

(declare-fun e!3322754 () Bool)

(assert (=> b!5351925 (= tp!1486539 e!3322754)))

(declare-fun b!5352731 () Bool)

(declare-fun tp!1486737 () Bool)

(declare-fun tp!1486738 () Bool)

(assert (=> b!5352731 (= e!3322754 (and tp!1486737 tp!1486738))))

(declare-fun b!5352728 () Bool)

(assert (=> b!5352728 (= e!3322754 tp_is_empty!39335)))

(declare-fun b!5352729 () Bool)

(declare-fun tp!1486739 () Bool)

(declare-fun tp!1486735 () Bool)

(assert (=> b!5352729 (= e!3322754 (and tp!1486739 tp!1486735))))

(declare-fun b!5352730 () Bool)

(declare-fun tp!1486736 () Bool)

(assert (=> b!5352730 (= e!3322754 tp!1486736)))

(assert (= (and b!5351925 ((_ is ElementMatch!15041) (regTwo!30595 (regOne!30594 r!7292)))) b!5352728))

(assert (= (and b!5351925 ((_ is Concat!23886) (regTwo!30595 (regOne!30594 r!7292)))) b!5352729))

(assert (= (and b!5351925 ((_ is Star!15041) (regTwo!30595 (regOne!30594 r!7292)))) b!5352730))

(assert (= (and b!5351925 ((_ is Union!15041) (regTwo!30595 (regOne!30594 r!7292)))) b!5352731))

(declare-fun e!3322755 () Bool)

(assert (=> b!5351945 (= tp!1486564 e!3322755)))

(declare-fun b!5352735 () Bool)

(declare-fun tp!1486742 () Bool)

(declare-fun tp!1486743 () Bool)

(assert (=> b!5352735 (= e!3322755 (and tp!1486742 tp!1486743))))

(declare-fun b!5352732 () Bool)

(assert (=> b!5352732 (= e!3322755 tp_is_empty!39335)))

(declare-fun b!5352733 () Bool)

(declare-fun tp!1486744 () Bool)

(declare-fun tp!1486740 () Bool)

(assert (=> b!5352733 (= e!3322755 (and tp!1486744 tp!1486740))))

(declare-fun b!5352734 () Bool)

(declare-fun tp!1486741 () Bool)

(assert (=> b!5352734 (= e!3322755 tp!1486741)))

(assert (= (and b!5351945 ((_ is ElementMatch!15041) (regOne!30594 (regTwo!30595 r!7292)))) b!5352732))

(assert (= (and b!5351945 ((_ is Concat!23886) (regOne!30594 (regTwo!30595 r!7292)))) b!5352733))

(assert (= (and b!5351945 ((_ is Star!15041) (regOne!30594 (regTwo!30595 r!7292)))) b!5352734))

(assert (= (and b!5351945 ((_ is Union!15041) (regOne!30594 (regTwo!30595 r!7292)))) b!5352735))

(declare-fun e!3322756 () Bool)

(assert (=> b!5351945 (= tp!1486560 e!3322756)))

(declare-fun b!5352739 () Bool)

(declare-fun tp!1486747 () Bool)

(declare-fun tp!1486748 () Bool)

(assert (=> b!5352739 (= e!3322756 (and tp!1486747 tp!1486748))))

(declare-fun b!5352736 () Bool)

(assert (=> b!5352736 (= e!3322756 tp_is_empty!39335)))

(declare-fun b!5352737 () Bool)

(declare-fun tp!1486749 () Bool)

(declare-fun tp!1486745 () Bool)

(assert (=> b!5352737 (= e!3322756 (and tp!1486749 tp!1486745))))

(declare-fun b!5352738 () Bool)

(declare-fun tp!1486746 () Bool)

(assert (=> b!5352738 (= e!3322756 tp!1486746)))

(assert (= (and b!5351945 ((_ is ElementMatch!15041) (regTwo!30594 (regTwo!30595 r!7292)))) b!5352736))

(assert (= (and b!5351945 ((_ is Concat!23886) (regTwo!30594 (regTwo!30595 r!7292)))) b!5352737))

(assert (= (and b!5351945 ((_ is Star!15041) (regTwo!30594 (regTwo!30595 r!7292)))) b!5352738))

(assert (= (and b!5351945 ((_ is Union!15041) (regTwo!30594 (regTwo!30595 r!7292)))) b!5352739))

(declare-fun b_lambda!205349 () Bool)

(assert (= b_lambda!205345 (or d!1715764 b_lambda!205349)))

(declare-fun bs!1240803 () Bool)

(declare-fun d!1716170 () Bool)

(assert (= bs!1240803 (and d!1716170 d!1715764)))

(assert (=> bs!1240803 (= (dynLambda!24230 lambda!275134 (h!67746 lt!2181356)) (validRegex!6777 (h!67746 lt!2181356)))))

(declare-fun m!6383370 () Bool)

(assert (=> bs!1240803 m!6383370))

(assert (=> b!5352514 d!1716170))

(declare-fun b_lambda!205351 () Bool)

(assert (= b_lambda!205333 (or d!1715756 b_lambda!205351)))

(declare-fun bs!1240804 () Bool)

(declare-fun d!1716172 () Bool)

(assert (= bs!1240804 (and d!1716172 d!1715756)))

(assert (=> bs!1240804 (= (dynLambda!24230 lambda!275125 (h!67746 (exprs!4925 setElem!34573))) (validRegex!6777 (h!67746 (exprs!4925 setElem!34573))))))

(declare-fun m!6383374 () Bool)

(assert (=> bs!1240804 m!6383374))

(assert (=> b!5352069 d!1716172))

(declare-fun b_lambda!205353 () Bool)

(assert (= b_lambda!205347 (or d!1715758 b_lambda!205353)))

(declare-fun bs!1240805 () Bool)

(declare-fun d!1716176 () Bool)

(assert (= bs!1240805 (and d!1716176 d!1715758)))

(assert (=> bs!1240805 (= (dynLambda!24230 lambda!275130 (h!67746 (unfocusZipperList!483 zl!343))) (validRegex!6777 (h!67746 (unfocusZipperList!483 zl!343))))))

(declare-fun m!6383376 () Bool)

(assert (=> bs!1240805 m!6383376))

(assert (=> b!5352532 d!1716176))

(declare-fun b_lambda!205355 () Bool)

(assert (= b_lambda!205335 (or b!5351238 b_lambda!205355)))

(assert (=> d!1715988 d!1715854))

(declare-fun b_lambda!205357 () Bool)

(assert (= b_lambda!205339 (or d!1715746 b_lambda!205357)))

(declare-fun bs!1240806 () Bool)

(declare-fun d!1716180 () Bool)

(assert (= bs!1240806 (and d!1716180 d!1715746)))

(assert (=> bs!1240806 (= (dynLambda!24230 lambda!275124 (h!67746 (exprs!4925 (h!67747 zl!343)))) (validRegex!6777 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(declare-fun m!6383378 () Bool)

(assert (=> bs!1240806 m!6383378))

(assert (=> b!5352464 d!1716180))

(declare-fun b_lambda!205359 () Bool)

(assert (= b_lambda!205337 (or d!1715830 b_lambda!205359)))

(declare-fun bs!1240807 () Bool)

(declare-fun d!1716182 () Bool)

(assert (= bs!1240807 (and d!1716182 d!1715830)))

(assert (=> bs!1240807 (= (dynLambda!24230 lambda!275155 (h!67746 (exprs!4925 (h!67747 zl!343)))) (validRegex!6777 (h!67746 (exprs!4925 (h!67747 zl!343)))))))

(assert (=> bs!1240807 m!6383378))

(assert (=> b!5352266 d!1716182))

(check-sat (not bm!382613) (not b!5351963) (not d!1715920) (not b!5352737) (not b!5352739) (not b!5351991) (not b!5352644) (not b!5352651) (not b!5352352) (not b!5352659) (not bm!382693) (not b_lambda!205359) (not b!5352346) (not bm!382665) (not b!5351976) (not b!5352721) (not b!5352678) (not b!5352716) (not b!5352615) (not b!5352287) (not b!5352733) (not b!5352735) (not bm!382605) (not b!5352048) (not b!5352384) (not bm!382666) (not bm!382623) (not b!5352043) (not b!5352726) (not d!1716056) (not b!5352182) (not b!5352626) (not b!5352698) (not b!5352335) (not b!5352707) (not b!5352351) (not b!5352090) (not b!5352340) (not d!1716090) (not b!5352192) (not bm!382622) (not b!5352108) (not b!5352714) (not bs!1240805) (not d!1715942) (not b!5352103) (not b!5352648) (not d!1715880) (not b!5352638) (not bm!382734) (not b!5351962) (not d!1716044) (not b!5352009) (not bm!382732) (not b!5352008) (not b!5352738) (not bm!382669) (not bm!382675) (not b!5352656) (not b_lambda!205357) (not b!5352639) (not bm!382635) (not b!5352699) (not b!5352693) (not bm!382607) (not b!5352687) (not b!5352109) (not b!5352670) (not bm!382633) (not b!5352657) (not b_lambda!205351) (not b!5352049) (not b!5352629) (not bm!382608) (not b!5351958) (not d!1715996) (not d!1716062) (not b!5352345) (not b!5352731) (not b!5352627) (not d!1716040) (not b!5351981) (not d!1716092) (not d!1716046) (not b!5351977) (not b!5352594) (not bm!382668) (not b!5352681) (not bm!382657) (not b!5352685) (not b!5351972) (not b!5352643) (not b!5352023) (not b!5352704) (not b!5352730) (not bs!1240807) (not b!5352099) (not b!5352630) (not b!5352703) (not b!5351959) (not b!5352621) (not bm!382660) (not bm!382629) (not b!5352185) (not b!5352610) (not b!5352680) (not b!5352720) (not bm!382682) (not bm!382625) (not b!5352611) (not b!5352208) (not b!5352674) (not b!5352673) (not b!5351970) (not d!1715984) (not b!5352593) (not bs!1240804) (not b!5352533) (not d!1715988) (not b!5352189) (not d!1715940) (not d!1716034) (not b!5352592) (not b!5352070) (not b!5352661) (not b!5352717) (not b!5352607) (not b!5352062) (not b!5352336) (not d!1715954) (not bm!382656) (not b!5352053) (not b!5352353) (not bm!382664) (not bm!382748) (not b!5352596) (not d!1716068) (not b!5352075) (not b!5352186) (not b!5352625) (not d!1715856) (not b!5352207) (not b!5352012) (not b!5352515) (not b!5352655) (not b!5352631) (not d!1716158) (not b!5352622) (not b!5352380) (not d!1715900) (not bm!382747) (not b!5352214) (not b!5352197) (not b!5352572) (not d!1715874) (not bm!382624) (not b!5352637) (not bm!382614) (not b!5352570) (not bm!382687) (not bm!382603) (not bm!382632) (not bm!382602) (not bm!382735) (not b!5352634) (not b!5352652) (not bm!382737) (not b!5352660) (not b!5352061) (not d!1716006) (not b!5352198) (not b!5352649) (not d!1716042) (not bm!382686) (not b!5352684) (not b!5352623) (not bm!382697) (not d!1715906) (not b!5352343) (not b!5352700) (not bm!382620) (not b_lambda!205331) (not bm!382691) (not d!1715860) (not b!5352106) (not b!5352354) (not d!1716066) (not b!5352691) (not b!5352379) (not b!5352722) (not d!1716016) (not setNonEmpty!34582) (not b!5352595) (not d!1715970) (not b!5352098) (not d!1715876) (not bm!382733) (not b!5352729) (not bm!382696) (not b!5352267) (not b!5352181) (not b!5352524) (not b!5352614) (not d!1715912) (not d!1715908) (not b_lambda!205353) (not bm!382681) (not b!5352669) (not bm!382749) (not b!5352608) (not b!5352635) (not d!1716000) (not d!1716094) (not b!5352653) (not d!1716050) (not d!1715986) (not b!5352702) (not b!5351973) (not b!5352209) (not bs!1240806) (not b_lambda!205355) (not bm!382738) (not b!5352372) (not b!5352164) tp_is_empty!39335 (not b!5351986) (not b!5351967) (not b!5352567) (not b!5352664) (not b!5352375) (not b!5352679) (not b!5352044) (not b!5352376) (not d!1715862) (not b!5352243) (not bm!382619) (not b!5352689) (not b!5352668) (not b!5352734) (not b!5351987) (not b!5352613) (not b!5352718) (not b!5352374) (not d!1715968) (not b!5352706) (not b!5352363) (not b!5352269) (not b!5352373) (not bm!382604) (not b!5352647) (not bm!382616) (not b!5351984) (not setNonEmpty!34586) (not b!5352168) (not b!5352251) (not b!5352254) (not b!5352708) (not bm!382661) (not b!5352609) (not b!5352248) (not b!5352167) (not b!5352591) (not b!5352713) (not b!5352258) (not b!5352253) (not bm!382674) (not b!5352188) (not b!5352692) (not b!5352688) (not b!5352645) (not b!5352599) (not b!5352723) (not d!1715962) (not b!5352534) (not b!5352727) (not b!5352712) (not b!5352244) (not d!1715978) (not b!5352683) (not b!5352672) (not bs!1240803) (not d!1716058) (not b_lambda!205349) (not b!5352034) (not b!5352725) (not d!1715938) (not bm!382610) (not b!5352633) (not b!5352536) (not b!5352465) (not b!5352191) (not b!5352242) (not b!5352566) (not bm!382690) (not d!1716048))
(check-sat)
