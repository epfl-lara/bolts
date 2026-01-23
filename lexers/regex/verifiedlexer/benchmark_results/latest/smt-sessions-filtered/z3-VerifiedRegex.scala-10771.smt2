; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550414 () Bool)

(assert start!550414)

(declare-fun b!5203283 () Bool)

(assert (=> b!5203283 true))

(assert (=> b!5203283 true))

(declare-fun lambda!260760 () Int)

(declare-fun lambda!260759 () Int)

(assert (=> b!5203283 (not (= lambda!260760 lambda!260759))))

(assert (=> b!5203283 true))

(assert (=> b!5203283 true))

(declare-fun b!5203280 () Bool)

(assert (=> b!5203280 true))

(declare-fun b!5203265 () Bool)

(declare-datatypes ((Unit!152422 0))(
  ( (Unit!152423) )
))
(declare-fun e!3239866 () Unit!152422)

(declare-fun Unit!152424 () Unit!152422)

(assert (=> b!5203265 (= e!3239866 Unit!152424)))

(declare-fun lt!2141271 () Unit!152422)

(declare-datatypes ((C!29848 0))(
  ( (C!29849 (val!24626 Int)) )
))
(declare-datatypes ((List!60666 0))(
  ( (Nil!60542) (Cons!60542 (h!66990 C!29848) (t!373821 List!60666)) )
))
(declare-fun s!2326 () List!60666)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14789 0))(
  ( (ElementMatch!14789 (c!896844 C!29848)) (Concat!23634 (regOne!30090 Regex!14789) (regTwo!30090 Regex!14789)) (EmptyExpr!14789) (Star!14789 (reg!15118 Regex!14789)) (EmptyLang!14789) (Union!14789 (regOne!30091 Regex!14789) (regTwo!30091 Regex!14789)) )
))
(declare-datatypes ((List!60667 0))(
  ( (Nil!60543) (Cons!60543 (h!66991 Regex!14789) (t!373822 List!60667)) )
))
(declare-datatypes ((Context!8346 0))(
  ( (Context!8347 (exprs!4673 List!60667)) )
))
(declare-fun lt!2141268 () (InoxSet Context!8346))

(declare-fun lt!2141259 () (InoxSet Context!8346))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!26 ((InoxSet Context!8346) (InoxSet Context!8346) List!60666) Unit!152422)

(assert (=> b!5203265 (= lt!2141271 (lemmaZipperConcatMatchesSameAsBothZippers!26 lt!2141259 lt!2141268 (t!373821 s!2326)))))

(declare-fun res!2210548 () Bool)

(declare-fun matchZipper!1033 ((InoxSet Context!8346) List!60666) Bool)

(assert (=> b!5203265 (= res!2210548 (matchZipper!1033 lt!2141259 (t!373821 s!2326)))))

(declare-fun e!3239868 () Bool)

(assert (=> b!5203265 (=> res!2210548 e!3239868)))

(assert (=> b!5203265 (= (matchZipper!1033 ((_ map or) lt!2141259 lt!2141268) (t!373821 s!2326)) e!3239868)))

(declare-fun b!5203266 () Bool)

(declare-fun e!3239870 () Bool)

(declare-fun tp_is_empty!38831 () Bool)

(assert (=> b!5203266 (= e!3239870 tp_is_empty!38831)))

(declare-fun b!5203267 () Bool)

(declare-fun res!2210553 () Bool)

(declare-fun e!3239860 () Bool)

(assert (=> b!5203267 (=> (not res!2210553) (not e!3239860))))

(declare-fun r!7292 () Regex!14789)

(declare-datatypes ((List!60668 0))(
  ( (Nil!60544) (Cons!60544 (h!66992 Context!8346) (t!373823 List!60668)) )
))
(declare-fun zl!343 () List!60668)

(declare-fun unfocusZipper!531 (List!60668) Regex!14789)

(assert (=> b!5203267 (= res!2210553 (= r!7292 (unfocusZipper!531 zl!343)))))

(declare-fun b!5203268 () Bool)

(declare-fun res!2210559 () Bool)

(declare-fun e!3239867 () Bool)

(assert (=> b!5203268 (=> res!2210559 e!3239867)))

(declare-fun generalisedUnion!718 (List!60667) Regex!14789)

(declare-fun unfocusZipperList!231 (List!60668) List!60667)

(assert (=> b!5203268 (= res!2210559 (not (= r!7292 (generalisedUnion!718 (unfocusZipperList!231 zl!343)))))))

(declare-fun b!5203269 () Bool)

(declare-fun res!2210550 () Bool)

(assert (=> b!5203269 (=> res!2210550 e!3239867)))

(declare-fun isEmpty!32449 (List!60668) Bool)

(assert (=> b!5203269 (= res!2210550 (not (isEmpty!32449 (t!373823 zl!343))))))

(declare-fun b!5203270 () Bool)

(declare-fun tp!1459458 () Bool)

(declare-fun tp!1459454 () Bool)

(assert (=> b!5203270 (= e!3239870 (and tp!1459458 tp!1459454))))

(declare-fun tp!1459459 () Bool)

(declare-fun b!5203271 () Bool)

(declare-fun e!3239869 () Bool)

(declare-fun e!3239865 () Bool)

(declare-fun inv!80219 (Context!8346) Bool)

(assert (=> b!5203271 (= e!3239865 (and (inv!80219 (h!66992 zl!343)) e!3239869 tp!1459459))))

(declare-fun b!5203272 () Bool)

(assert (=> b!5203272 (= e!3239860 (not e!3239867))))

(declare-fun res!2210554 () Bool)

(assert (=> b!5203272 (=> res!2210554 e!3239867)))

(get-info :version)

(assert (=> b!5203272 (= res!2210554 (not ((_ is Cons!60544) zl!343)))))

(declare-fun lt!2141263 () Bool)

(declare-fun matchRSpec!1892 (Regex!14789 List!60666) Bool)

(assert (=> b!5203272 (= lt!2141263 (matchRSpec!1892 r!7292 s!2326))))

(declare-fun matchR!6974 (Regex!14789 List!60666) Bool)

(assert (=> b!5203272 (= lt!2141263 (matchR!6974 r!7292 s!2326))))

(declare-fun lt!2141270 () Unit!152422)

(declare-fun mainMatchTheorem!1892 (Regex!14789 List!60666) Unit!152422)

(assert (=> b!5203272 (= lt!2141270 (mainMatchTheorem!1892 r!7292 s!2326))))

(declare-fun b!5203273 () Bool)

(declare-fun e!3239862 () Bool)

(declare-fun e!3239864 () Bool)

(assert (=> b!5203273 (= e!3239862 e!3239864)))

(declare-fun res!2210555 () Bool)

(assert (=> b!5203273 (=> res!2210555 e!3239864)))

(declare-fun lt!2141257 () (InoxSet Context!8346))

(assert (=> b!5203273 (= res!2210555 (not (= lt!2141259 lt!2141257)))))

(declare-fun lt!2141267 () Context!8346)

(assert (=> b!5203273 (= lt!2141257 (store ((as const (Array Context!8346 Bool)) false) lt!2141267 true))))

(declare-fun b!5203274 () Bool)

(declare-fun res!2210549 () Bool)

(assert (=> b!5203274 (=> (not res!2210549) (not e!3239860))))

(declare-fun z!1189 () (InoxSet Context!8346))

(declare-fun toList!8573 ((InoxSet Context!8346)) List!60668)

(assert (=> b!5203274 (= res!2210549 (= (toList!8573 z!1189) zl!343))))

(declare-fun b!5203275 () Bool)

(declare-fun e!3239863 () Bool)

(declare-fun tp!1459456 () Bool)

(assert (=> b!5203275 (= e!3239863 tp!1459456)))

(declare-fun res!2210551 () Bool)

(assert (=> start!550414 (=> (not res!2210551) (not e!3239860))))

(declare-fun validRegex!6525 (Regex!14789) Bool)

(assert (=> start!550414 (= res!2210551 (validRegex!6525 r!7292))))

(assert (=> start!550414 e!3239860))

(assert (=> start!550414 e!3239870))

(declare-fun condSetEmpty!33018 () Bool)

(assert (=> start!550414 (= condSetEmpty!33018 (= z!1189 ((as const (Array Context!8346 Bool)) false)))))

(declare-fun setRes!33018 () Bool)

(assert (=> start!550414 setRes!33018))

(assert (=> start!550414 e!3239865))

(declare-fun e!3239861 () Bool)

(assert (=> start!550414 e!3239861))

(declare-fun b!5203264 () Bool)

(declare-fun tp!1459455 () Bool)

(assert (=> b!5203264 (= e!3239869 tp!1459455)))

(declare-fun b!5203276 () Bool)

(declare-fun Unit!152425 () Unit!152422)

(assert (=> b!5203276 (= e!3239866 Unit!152425)))

(declare-fun b!5203277 () Bool)

(declare-fun tp!1459457 () Bool)

(declare-fun tp!1459453 () Bool)

(assert (=> b!5203277 (= e!3239870 (and tp!1459457 tp!1459453))))

(declare-fun b!5203278 () Bool)

(declare-fun res!2210557 () Bool)

(assert (=> b!5203278 (=> res!2210557 e!3239867)))

(declare-fun generalisedConcat!458 (List!60667) Regex!14789)

(assert (=> b!5203278 (= res!2210557 (not (= r!7292 (generalisedConcat!458 (exprs!4673 (h!66992 zl!343))))))))

(declare-fun b!5203279 () Bool)

(assert (=> b!5203279 (= e!3239864 true)))

(declare-fun lt!2141265 () Regex!14789)

(assert (=> b!5203279 (= (matchR!6974 lt!2141265 (t!373821 s!2326)) (matchZipper!1033 lt!2141257 (t!373821 s!2326)))))

(declare-fun lt!2141260 () Unit!152422)

(declare-fun theoremZipperRegexEquiv!257 ((InoxSet Context!8346) List!60668 Regex!14789 List!60666) Unit!152422)

(assert (=> b!5203279 (= lt!2141260 (theoremZipperRegexEquiv!257 lt!2141257 (Cons!60544 lt!2141267 Nil!60544) lt!2141265 (t!373821 s!2326)))))

(assert (=> b!5203279 (= lt!2141265 (generalisedConcat!458 (t!373822 (exprs!4673 (h!66992 zl!343)))))))

(declare-fun setIsEmpty!33018 () Bool)

(assert (=> setIsEmpty!33018 setRes!33018))

(declare-fun e!3239871 () Bool)

(assert (=> b!5203280 (= e!3239871 e!3239862)))

(declare-fun res!2210556 () Bool)

(assert (=> b!5203280 (=> res!2210556 e!3239862)))

(assert (=> b!5203280 (= res!2210556 (or (not ((_ is ElementMatch!14789) (regOne!30090 r!7292))) (not (= (c!896844 (regOne!30090 r!7292)) (h!66990 s!2326)))))))

(declare-fun lt!2141262 () Unit!152422)

(assert (=> b!5203280 (= lt!2141262 e!3239866)))

(declare-fun c!896843 () Bool)

(declare-fun nullable!4958 (Regex!14789) Bool)

(assert (=> b!5203280 (= c!896843 (nullable!4958 (h!66991 (exprs!4673 (h!66992 zl!343)))))))

(declare-fun lambda!260761 () Int)

(declare-fun flatMap!516 ((InoxSet Context!8346) Int) (InoxSet Context!8346))

(declare-fun derivationStepZipperUp!161 (Context!8346 C!29848) (InoxSet Context!8346))

(assert (=> b!5203280 (= (flatMap!516 z!1189 lambda!260761) (derivationStepZipperUp!161 (h!66992 zl!343) (h!66990 s!2326)))))

(declare-fun lt!2141266 () Unit!152422)

(declare-fun lemmaFlatMapOnSingletonSet!48 ((InoxSet Context!8346) Context!8346 Int) Unit!152422)

(assert (=> b!5203280 (= lt!2141266 (lemmaFlatMapOnSingletonSet!48 z!1189 (h!66992 zl!343) lambda!260761))))

(assert (=> b!5203280 (= lt!2141268 (derivationStepZipperUp!161 lt!2141267 (h!66990 s!2326)))))

(declare-fun derivationStepZipperDown!237 (Regex!14789 Context!8346 C!29848) (InoxSet Context!8346))

(assert (=> b!5203280 (= lt!2141259 (derivationStepZipperDown!237 (h!66991 (exprs!4673 (h!66992 zl!343))) lt!2141267 (h!66990 s!2326)))))

(assert (=> b!5203280 (= lt!2141267 (Context!8347 (t!373822 (exprs!4673 (h!66992 zl!343)))))))

(declare-fun lt!2141264 () (InoxSet Context!8346))

(assert (=> b!5203280 (= lt!2141264 (derivationStepZipperUp!161 (Context!8347 (Cons!60543 (h!66991 (exprs!4673 (h!66992 zl!343))) (t!373822 (exprs!4673 (h!66992 zl!343))))) (h!66990 s!2326)))))

(declare-fun b!5203281 () Bool)

(declare-fun res!2210552 () Bool)

(assert (=> b!5203281 (=> res!2210552 e!3239867)))

(assert (=> b!5203281 (= res!2210552 (not ((_ is Cons!60543) (exprs!4673 (h!66992 zl!343)))))))

(declare-fun b!5203282 () Bool)

(assert (=> b!5203282 (= e!3239868 (matchZipper!1033 lt!2141268 (t!373821 s!2326)))))

(assert (=> b!5203283 (= e!3239867 e!3239871)))

(declare-fun res!2210558 () Bool)

(assert (=> b!5203283 (=> res!2210558 e!3239871)))

(declare-fun lt!2141258 () Bool)

(assert (=> b!5203283 (= res!2210558 (or (not (= lt!2141263 lt!2141258)) ((_ is Nil!60542) s!2326)))))

(declare-fun Exists!1970 (Int) Bool)

(assert (=> b!5203283 (= (Exists!1970 lambda!260759) (Exists!1970 lambda!260760))))

(declare-fun lt!2141269 () Unit!152422)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!624 (Regex!14789 Regex!14789 List!60666) Unit!152422)

(assert (=> b!5203283 (= lt!2141269 (lemmaExistCutMatchRandMatchRSpecEquivalent!624 (regOne!30090 r!7292) (regTwo!30090 r!7292) s!2326))))

(assert (=> b!5203283 (= lt!2141258 (Exists!1970 lambda!260759))))

(declare-datatypes ((tuple2!63976 0))(
  ( (tuple2!63977 (_1!35291 List!60666) (_2!35291 List!60666)) )
))
(declare-datatypes ((Option!14900 0))(
  ( (None!14899) (Some!14899 (v!50928 tuple2!63976)) )
))
(declare-fun isDefined!11603 (Option!14900) Bool)

(declare-fun findConcatSeparation!1314 (Regex!14789 Regex!14789 List!60666 List!60666 List!60666) Option!14900)

(assert (=> b!5203283 (= lt!2141258 (isDefined!11603 (findConcatSeparation!1314 (regOne!30090 r!7292) (regTwo!30090 r!7292) Nil!60542 s!2326 s!2326)))))

(declare-fun lt!2141261 () Unit!152422)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1078 (Regex!14789 Regex!14789 List!60666) Unit!152422)

(assert (=> b!5203283 (= lt!2141261 (lemmaFindConcatSeparationEquivalentToExists!1078 (regOne!30090 r!7292) (regTwo!30090 r!7292) s!2326))))

(declare-fun b!5203284 () Bool)

(declare-fun tp!1459452 () Bool)

(assert (=> b!5203284 (= e!3239861 (and tp_is_empty!38831 tp!1459452))))

(declare-fun setNonEmpty!33018 () Bool)

(declare-fun tp!1459461 () Bool)

(declare-fun setElem!33018 () Context!8346)

(assert (=> setNonEmpty!33018 (= setRes!33018 (and tp!1459461 (inv!80219 setElem!33018) e!3239863))))

(declare-fun setRest!33018 () (InoxSet Context!8346))

(assert (=> setNonEmpty!33018 (= z!1189 ((_ map or) (store ((as const (Array Context!8346 Bool)) false) setElem!33018 true) setRest!33018))))

(declare-fun b!5203285 () Bool)

(declare-fun res!2210547 () Bool)

(assert (=> b!5203285 (=> res!2210547 e!3239867)))

(assert (=> b!5203285 (= res!2210547 (or ((_ is EmptyExpr!14789) r!7292) ((_ is EmptyLang!14789) r!7292) ((_ is ElementMatch!14789) r!7292) ((_ is Union!14789) r!7292) (not ((_ is Concat!23634) r!7292))))))

(declare-fun b!5203286 () Bool)

(declare-fun tp!1459460 () Bool)

(assert (=> b!5203286 (= e!3239870 tp!1459460)))

(declare-fun b!5203287 () Bool)

(declare-fun res!2210560 () Bool)

(assert (=> b!5203287 (=> res!2210560 e!3239871)))

(declare-fun isEmpty!32450 (List!60667) Bool)

(assert (=> b!5203287 (= res!2210560 (isEmpty!32450 (t!373822 (exprs!4673 (h!66992 zl!343)))))))

(assert (= (and start!550414 res!2210551) b!5203274))

(assert (= (and b!5203274 res!2210549) b!5203267))

(assert (= (and b!5203267 res!2210553) b!5203272))

(assert (= (and b!5203272 (not res!2210554)) b!5203269))

(assert (= (and b!5203269 (not res!2210550)) b!5203278))

(assert (= (and b!5203278 (not res!2210557)) b!5203281))

(assert (= (and b!5203281 (not res!2210552)) b!5203268))

(assert (= (and b!5203268 (not res!2210559)) b!5203285))

(assert (= (and b!5203285 (not res!2210547)) b!5203283))

(assert (= (and b!5203283 (not res!2210558)) b!5203287))

(assert (= (and b!5203287 (not res!2210560)) b!5203280))

(assert (= (and b!5203280 c!896843) b!5203265))

(assert (= (and b!5203280 (not c!896843)) b!5203276))

(assert (= (and b!5203265 (not res!2210548)) b!5203282))

(assert (= (and b!5203280 (not res!2210556)) b!5203273))

(assert (= (and b!5203273 (not res!2210555)) b!5203279))

(assert (= (and start!550414 ((_ is ElementMatch!14789) r!7292)) b!5203266))

(assert (= (and start!550414 ((_ is Concat!23634) r!7292)) b!5203277))

(assert (= (and start!550414 ((_ is Star!14789) r!7292)) b!5203286))

(assert (= (and start!550414 ((_ is Union!14789) r!7292)) b!5203270))

(assert (= (and start!550414 condSetEmpty!33018) setIsEmpty!33018))

(assert (= (and start!550414 (not condSetEmpty!33018)) setNonEmpty!33018))

(assert (= setNonEmpty!33018 b!5203275))

(assert (= b!5203271 b!5203264))

(assert (= (and start!550414 ((_ is Cons!60544) zl!343)) b!5203271))

(assert (= (and start!550414 ((_ is Cons!60542) s!2326)) b!5203284))

(declare-fun m!6255116 () Bool)

(assert (=> setNonEmpty!33018 m!6255116))

(declare-fun m!6255118 () Bool)

(assert (=> b!5203282 m!6255118))

(declare-fun m!6255120 () Bool)

(assert (=> b!5203283 m!6255120))

(declare-fun m!6255122 () Bool)

(assert (=> b!5203283 m!6255122))

(declare-fun m!6255124 () Bool)

(assert (=> b!5203283 m!6255124))

(declare-fun m!6255126 () Bool)

(assert (=> b!5203283 m!6255126))

(assert (=> b!5203283 m!6255126))

(declare-fun m!6255128 () Bool)

(assert (=> b!5203283 m!6255128))

(assert (=> b!5203283 m!6255122))

(declare-fun m!6255130 () Bool)

(assert (=> b!5203283 m!6255130))

(declare-fun m!6255132 () Bool)

(assert (=> b!5203265 m!6255132))

(declare-fun m!6255134 () Bool)

(assert (=> b!5203265 m!6255134))

(declare-fun m!6255136 () Bool)

(assert (=> b!5203265 m!6255136))

(declare-fun m!6255138 () Bool)

(assert (=> b!5203271 m!6255138))

(declare-fun m!6255140 () Bool)

(assert (=> b!5203279 m!6255140))

(declare-fun m!6255142 () Bool)

(assert (=> b!5203279 m!6255142))

(declare-fun m!6255144 () Bool)

(assert (=> b!5203279 m!6255144))

(declare-fun m!6255146 () Bool)

(assert (=> b!5203279 m!6255146))

(declare-fun m!6255148 () Bool)

(assert (=> b!5203287 m!6255148))

(declare-fun m!6255150 () Bool)

(assert (=> b!5203272 m!6255150))

(declare-fun m!6255152 () Bool)

(assert (=> b!5203272 m!6255152))

(declare-fun m!6255154 () Bool)

(assert (=> b!5203272 m!6255154))

(declare-fun m!6255156 () Bool)

(assert (=> b!5203273 m!6255156))

(declare-fun m!6255158 () Bool)

(assert (=> start!550414 m!6255158))

(declare-fun m!6255160 () Bool)

(assert (=> b!5203269 m!6255160))

(declare-fun m!6255162 () Bool)

(assert (=> b!5203268 m!6255162))

(assert (=> b!5203268 m!6255162))

(declare-fun m!6255164 () Bool)

(assert (=> b!5203268 m!6255164))

(declare-fun m!6255166 () Bool)

(assert (=> b!5203280 m!6255166))

(declare-fun m!6255168 () Bool)

(assert (=> b!5203280 m!6255168))

(declare-fun m!6255170 () Bool)

(assert (=> b!5203280 m!6255170))

(declare-fun m!6255172 () Bool)

(assert (=> b!5203280 m!6255172))

(declare-fun m!6255174 () Bool)

(assert (=> b!5203280 m!6255174))

(declare-fun m!6255176 () Bool)

(assert (=> b!5203280 m!6255176))

(declare-fun m!6255178 () Bool)

(assert (=> b!5203280 m!6255178))

(declare-fun m!6255180 () Bool)

(assert (=> b!5203267 m!6255180))

(declare-fun m!6255182 () Bool)

(assert (=> b!5203278 m!6255182))

(declare-fun m!6255184 () Bool)

(assert (=> b!5203274 m!6255184))

(check-sat (not b!5203267) (not b!5203278) (not b!5203275) (not b!5203269) (not b!5203274) (not b!5203270) (not b!5203272) (not b!5203271) (not b!5203277) (not b!5203282) (not start!550414) (not b!5203284) (not b!5203286) (not b!5203264) (not b!5203268) (not b!5203265) (not b!5203283) tp_is_empty!38831 (not b!5203279) (not b!5203287) (not b!5203280) (not setNonEmpty!33018))
(check-sat)
