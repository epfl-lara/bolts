; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561466 () Bool)

(assert start!561466)

(declare-fun b!5326447 () Bool)

(assert (=> b!5326447 true))

(assert (=> b!5326447 true))

(declare-fun lambda!271936 () Int)

(declare-fun lambda!271935 () Int)

(assert (=> b!5326447 (not (= lambda!271936 lambda!271935))))

(assert (=> b!5326447 true))

(assert (=> b!5326447 true))

(declare-fun b!5326472 () Bool)

(assert (=> b!5326472 true))

(declare-fun bs!1234678 () Bool)

(declare-fun b!5326458 () Bool)

(assert (= bs!1234678 (and b!5326458 b!5326447)))

(declare-datatypes ((C!30248 0))(
  ( (C!30249 (val!24826 Int)) )
))
(declare-datatypes ((Regex!14989 0))(
  ( (ElementMatch!14989 (c!926025 C!30248)) (Concat!23834 (regOne!30490 Regex!14989) (regTwo!30490 Regex!14989)) (EmptyExpr!14989) (Star!14989 (reg!15318 Regex!14989)) (EmptyLang!14989) (Union!14989 (regOne!30491 Regex!14989) (regTwo!30491 Regex!14989)) )
))
(declare-fun r!7292 () Regex!14989)

(declare-fun lt!2173315 () Regex!14989)

(declare-fun lambda!271938 () Int)

(assert (=> bs!1234678 (= (and (= (regOne!30490 (regOne!30490 r!7292)) (regOne!30490 r!7292)) (= lt!2173315 (regTwo!30490 r!7292))) (= lambda!271938 lambda!271935))))

(assert (=> bs!1234678 (not (= lambda!271938 lambda!271936))))

(assert (=> b!5326458 true))

(assert (=> b!5326458 true))

(assert (=> b!5326458 true))

(declare-fun b!5326440 () Bool)

(declare-fun e!3308669 () Bool)

(declare-fun tp_is_empty!39231 () Bool)

(declare-fun tp!1482834 () Bool)

(assert (=> b!5326440 (= e!3308669 (and tp_is_empty!39231 tp!1482834))))

(declare-fun b!5326441 () Bool)

(declare-fun res!2259242 () Bool)

(declare-fun e!3308661 () Bool)

(assert (=> b!5326441 (=> res!2259242 e!3308661)))

(get-info :version)

(assert (=> b!5326441 (= res!2259242 (or ((_ is EmptyExpr!14989) r!7292) ((_ is EmptyLang!14989) r!7292) ((_ is ElementMatch!14989) r!7292) ((_ is Union!14989) r!7292) (not ((_ is Concat!23834) r!7292))))))

(declare-fun b!5326442 () Bool)

(declare-fun res!2259247 () Bool)

(declare-fun e!3308672 () Bool)

(assert (=> b!5326442 (=> res!2259247 e!3308672)))

(assert (=> b!5326442 (= res!2259247 (not ((_ is Concat!23834) (regOne!30490 r!7292))))))

(declare-fun b!5326443 () Bool)

(declare-fun res!2259248 () Bool)

(declare-fun e!3308658 () Bool)

(assert (=> b!5326443 (=> res!2259248 e!3308658)))

(declare-datatypes ((List!61266 0))(
  ( (Nil!61142) (Cons!61142 (h!67590 Regex!14989) (t!374481 List!61266)) )
))
(declare-datatypes ((Context!8746 0))(
  ( (Context!8747 (exprs!4873 List!61266)) )
))
(declare-fun lt!2173302 () Context!8746)

(declare-datatypes ((List!61267 0))(
  ( (Nil!61143) (Cons!61143 (h!67591 Context!8746) (t!374482 List!61267)) )
))
(declare-fun zl!343 () List!61267)

(declare-fun contextDepthTotal!122 (Context!8746) Int)

(assert (=> b!5326443 (= res!2259248 (>= (contextDepthTotal!122 lt!2173302) (contextDepthTotal!122 (h!67591 zl!343))))))

(declare-fun b!5326444 () Bool)

(declare-fun res!2259258 () Bool)

(assert (=> b!5326444 (=> res!2259258 e!3308661)))

(declare-fun isEmpty!33111 (List!61267) Bool)

(assert (=> b!5326444 (= res!2259258 (not (isEmpty!33111 (t!374482 zl!343))))))

(declare-fun b!5326445 () Bool)

(declare-fun res!2259244 () Bool)

(declare-fun e!3308663 () Bool)

(assert (=> b!5326445 (=> (not res!2259244) (not e!3308663))))

(declare-fun unfocusZipper!731 (List!61267) Regex!14989)

(assert (=> b!5326445 (= res!2259244 (= r!7292 (unfocusZipper!731 zl!343)))))

(declare-fun b!5326446 () Bool)

(declare-fun res!2259238 () Bool)

(assert (=> b!5326446 (=> res!2259238 e!3308661)))

(declare-fun generalisedUnion!918 (List!61266) Regex!14989)

(declare-fun unfocusZipperList!431 (List!61267) List!61266)

(assert (=> b!5326446 (= res!2259238 (not (= r!7292 (generalisedUnion!918 (unfocusZipperList!431 zl!343)))))))

(declare-fun e!3308657 () Bool)

(assert (=> b!5326447 (= e!3308661 e!3308657)))

(declare-fun res!2259257 () Bool)

(assert (=> b!5326447 (=> res!2259257 e!3308657)))

(declare-datatypes ((List!61268 0))(
  ( (Nil!61144) (Cons!61144 (h!67592 C!30248) (t!374483 List!61268)) )
))
(declare-fun s!2326 () List!61268)

(declare-fun lt!2173293 () Bool)

(declare-fun lt!2173317 () Bool)

(assert (=> b!5326447 (= res!2259257 (or (not (= lt!2173293 lt!2173317)) ((_ is Nil!61144) s!2326)))))

(declare-fun Exists!2170 (Int) Bool)

(assert (=> b!5326447 (= (Exists!2170 lambda!271935) (Exists!2170 lambda!271936))))

(declare-datatypes ((Unit!153474 0))(
  ( (Unit!153475) )
))
(declare-fun lt!2173305 () Unit!153474)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!824 (Regex!14989 Regex!14989 List!61268) Unit!153474)

(assert (=> b!5326447 (= lt!2173305 (lemmaExistCutMatchRandMatchRSpecEquivalent!824 (regOne!30490 r!7292) (regTwo!30490 r!7292) s!2326))))

(assert (=> b!5326447 (= lt!2173317 (Exists!2170 lambda!271935))))

(declare-datatypes ((tuple2!64376 0))(
  ( (tuple2!64377 (_1!35491 List!61268) (_2!35491 List!61268)) )
))
(declare-datatypes ((Option!15100 0))(
  ( (None!15099) (Some!15099 (v!51128 tuple2!64376)) )
))
(declare-fun isDefined!11803 (Option!15100) Bool)

(declare-fun findConcatSeparation!1514 (Regex!14989 Regex!14989 List!61268 List!61268 List!61268) Option!15100)

(assert (=> b!5326447 (= lt!2173317 (isDefined!11803 (findConcatSeparation!1514 (regOne!30490 r!7292) (regTwo!30490 r!7292) Nil!61144 s!2326 s!2326)))))

(declare-fun lt!2173303 () Unit!153474)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1278 (Regex!14989 Regex!14989 List!61268) Unit!153474)

(assert (=> b!5326447 (= lt!2173303 (lemmaFindConcatSeparationEquivalentToExists!1278 (regOne!30490 r!7292) (regTwo!30490 r!7292) s!2326))))

(declare-fun b!5326448 () Bool)

(declare-fun res!2259240 () Bool)

(assert (=> b!5326448 (=> res!2259240 e!3308672)))

(declare-fun e!3308665 () Bool)

(assert (=> b!5326448 (= res!2259240 e!3308665)))

(declare-fun res!2259253 () Bool)

(assert (=> b!5326448 (=> (not res!2259253) (not e!3308665))))

(assert (=> b!5326448 (= res!2259253 ((_ is Concat!23834) (regOne!30490 r!7292)))))

(declare-fun b!5326449 () Bool)

(declare-fun e!3308667 () Bool)

(assert (=> b!5326449 (= e!3308658 e!3308667)))

(declare-fun res!2259246 () Bool)

(assert (=> b!5326449 (=> res!2259246 e!3308667)))

(declare-fun lt!2173312 () List!61267)

(declare-fun zipperDepthTotal!142 (List!61267) Int)

(assert (=> b!5326449 (= res!2259246 (>= (zipperDepthTotal!142 lt!2173312) (zipperDepthTotal!142 zl!343)))))

(assert (=> b!5326449 (= lt!2173312 (Cons!61143 lt!2173302 Nil!61143))))

(declare-fun b!5326450 () Bool)

(declare-fun e!3308670 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2173318 () (InoxSet Context!8746))

(declare-fun matchZipper!1233 ((InoxSet Context!8746) List!61268) Bool)

(assert (=> b!5326450 (= e!3308670 (matchZipper!1233 lt!2173318 (t!374483 s!2326)))))

(declare-fun b!5326451 () Bool)

(declare-fun e!3308659 () Bool)

(declare-fun tp!1482832 () Bool)

(assert (=> b!5326451 (= e!3308659 tp!1482832)))

(declare-fun b!5326452 () Bool)

(declare-fun res!2259249 () Bool)

(assert (=> b!5326452 (=> res!2259249 e!3308658)))

(declare-fun lt!2173314 () (InoxSet Context!8746))

(declare-fun lt!2173316 () Bool)

(assert (=> b!5326452 (= res!2259249 (not (= lt!2173316 (matchZipper!1233 lt!2173314 (t!374483 s!2326)))))))

(declare-fun tp!1482835 () Bool)

(declare-fun e!3308660 () Bool)

(declare-fun e!3308666 () Bool)

(declare-fun b!5326453 () Bool)

(declare-fun inv!80719 (Context!8746) Bool)

(assert (=> b!5326453 (= e!3308660 (and (inv!80719 (h!67591 zl!343)) e!3308666 tp!1482835))))

(declare-fun b!5326454 () Bool)

(declare-fun res!2259259 () Bool)

(assert (=> b!5326454 (=> res!2259259 e!3308667)))

(declare-fun zipperDepth!98 (List!61267) Int)

(assert (=> b!5326454 (= res!2259259 (> (zipperDepth!98 lt!2173312) (zipperDepth!98 zl!343)))))

(declare-fun b!5326455 () Bool)

(declare-fun res!2259254 () Bool)

(assert (=> b!5326455 (=> res!2259254 e!3308661)))

(declare-fun generalisedConcat!658 (List!61266) Regex!14989)

(assert (=> b!5326455 (= res!2259254 (not (= r!7292 (generalisedConcat!658 (exprs!4873 (h!67591 zl!343))))))))

(declare-fun b!5326456 () Bool)

(declare-fun e!3308662 () Bool)

(declare-fun tp!1482836 () Bool)

(assert (=> b!5326456 (= e!3308662 tp!1482836)))

(declare-fun b!5326457 () Bool)

(declare-fun tp!1482829 () Bool)

(assert (=> b!5326457 (= e!3308666 tp!1482829)))

(declare-fun lt!2173306 () List!61266)

(declare-fun lambda!271939 () Int)

(declare-fun forall!14407 (List!61266 Int) Bool)

(assert (=> b!5326458 (= e!3308667 (forall!14407 lt!2173306 lambda!271939))))

(assert (=> b!5326458 (= (isDefined!11803 (findConcatSeparation!1514 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 Nil!61144 s!2326 s!2326)) (Exists!2170 lambda!271938))))

(declare-fun lt!2173310 () Unit!153474)

(assert (=> b!5326458 (= lt!2173310 (lemmaFindConcatSeparationEquivalentToExists!1278 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 s!2326))))

(assert (=> b!5326458 (= lt!2173315 (generalisedConcat!658 lt!2173306))))

(declare-fun lt!2173295 () Bool)

(declare-fun lt!2173298 () Regex!14989)

(declare-fun matchRSpec!2092 (Regex!14989 List!61268) Bool)

(assert (=> b!5326458 (= lt!2173295 (matchRSpec!2092 lt!2173298 s!2326))))

(declare-fun lt!2173313 () Unit!153474)

(declare-fun mainMatchTheorem!2092 (Regex!14989 List!61268) Unit!153474)

(assert (=> b!5326458 (= lt!2173313 (mainMatchTheorem!2092 lt!2173298 s!2326))))

(declare-fun lt!2173297 () (InoxSet Context!8746))

(assert (=> b!5326458 (= lt!2173295 (matchZipper!1233 lt!2173297 s!2326))))

(declare-fun matchR!7174 (Regex!14989 List!61268) Bool)

(assert (=> b!5326458 (= lt!2173295 (matchR!7174 lt!2173298 s!2326))))

(declare-fun lt!2173301 () Unit!153474)

(declare-fun theoremZipperRegexEquiv!387 ((InoxSet Context!8746) List!61267 Regex!14989 List!61268) Unit!153474)

(assert (=> b!5326458 (= lt!2173301 (theoremZipperRegexEquiv!387 lt!2173297 lt!2173312 lt!2173298 s!2326))))

(declare-fun lt!2173299 () List!61266)

(assert (=> b!5326458 (= lt!2173298 (generalisedConcat!658 lt!2173299))))

(declare-fun b!5326459 () Bool)

(declare-fun e!3308664 () Bool)

(assert (=> b!5326459 (= e!3308664 e!3308658)))

(declare-fun res!2259250 () Bool)

(assert (=> b!5326459 (=> res!2259250 e!3308658)))

(declare-fun lt!2173300 () (InoxSet Context!8746))

(assert (=> b!5326459 (= res!2259250 (not (= lt!2173314 lt!2173300)))))

(declare-fun lambda!271937 () Int)

(declare-fun flatMap!716 ((InoxSet Context!8746) Int) (InoxSet Context!8746))

(declare-fun derivationStepZipperUp!361 (Context!8746 C!30248) (InoxSet Context!8746))

(assert (=> b!5326459 (= (flatMap!716 lt!2173297 lambda!271937) (derivationStepZipperUp!361 lt!2173302 (h!67592 s!2326)))))

(declare-fun lt!2173294 () Unit!153474)

(declare-fun lemmaFlatMapOnSingletonSet!248 ((InoxSet Context!8746) Context!8746 Int) Unit!153474)

(assert (=> b!5326459 (= lt!2173294 (lemmaFlatMapOnSingletonSet!248 lt!2173297 lt!2173302 lambda!271937))))

(declare-fun lt!2173309 () (InoxSet Context!8746))

(assert (=> b!5326459 (= lt!2173309 (derivationStepZipperUp!361 lt!2173302 (h!67592 s!2326)))))

(declare-fun derivationStepZipper!1230 ((InoxSet Context!8746) C!30248) (InoxSet Context!8746))

(assert (=> b!5326459 (= lt!2173314 (derivationStepZipper!1230 lt!2173297 (h!67592 s!2326)))))

(assert (=> b!5326459 (= lt!2173297 (store ((as const (Array Context!8746 Bool)) false) lt!2173302 true))))

(assert (=> b!5326459 (= lt!2173302 (Context!8747 lt!2173299))))

(assert (=> b!5326459 (= lt!2173299 (Cons!61142 (regOne!30490 (regOne!30490 r!7292)) lt!2173306))))

(declare-fun b!5326460 () Bool)

(declare-fun res!2259252 () Bool)

(assert (=> b!5326460 (=> res!2259252 e!3308657)))

(declare-fun isEmpty!33112 (List!61266) Bool)

(assert (=> b!5326460 (= res!2259252 (isEmpty!33112 (t!374481 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5326461 () Bool)

(assert (=> b!5326461 (= e!3308662 tp_is_empty!39231)))

(declare-fun b!5326462 () Bool)

(declare-fun e!3308668 () Bool)

(assert (=> b!5326462 (= e!3308668 e!3308664)))

(declare-fun res!2259261 () Bool)

(assert (=> b!5326462 (=> res!2259261 e!3308664)))

(assert (=> b!5326462 (= res!2259261 (not (= lt!2173316 (matchZipper!1233 lt!2173300 (t!374483 s!2326)))))))

(declare-fun lt!2173319 () (InoxSet Context!8746))

(assert (=> b!5326462 (= lt!2173316 (matchZipper!1233 lt!2173319 (t!374483 s!2326)))))

(declare-fun b!5326463 () Bool)

(assert (=> b!5326463 (= e!3308663 (not e!3308661))))

(declare-fun res!2259243 () Bool)

(assert (=> b!5326463 (=> res!2259243 e!3308661)))

(assert (=> b!5326463 (= res!2259243 (not ((_ is Cons!61143) zl!343)))))

(assert (=> b!5326463 (= lt!2173293 (matchRSpec!2092 r!7292 s!2326))))

(assert (=> b!5326463 (= lt!2173293 (matchR!7174 r!7292 s!2326))))

(declare-fun lt!2173311 () Unit!153474)

(assert (=> b!5326463 (= lt!2173311 (mainMatchTheorem!2092 r!7292 s!2326))))

(declare-fun setIsEmpty!34317 () Bool)

(declare-fun setRes!34317 () Bool)

(assert (=> setIsEmpty!34317 setRes!34317))

(declare-fun b!5326464 () Bool)

(declare-fun res!2259251 () Bool)

(assert (=> b!5326464 (=> (not res!2259251) (not e!3308663))))

(declare-fun z!1189 () (InoxSet Context!8746))

(declare-fun toList!8773 ((InoxSet Context!8746)) List!61267)

(assert (=> b!5326464 (= res!2259251 (= (toList!8773 z!1189) zl!343))))

(declare-fun setElem!34317 () Context!8746)

(declare-fun tp!1482833 () Bool)

(declare-fun setNonEmpty!34317 () Bool)

(assert (=> setNonEmpty!34317 (= setRes!34317 (and tp!1482833 (inv!80719 setElem!34317) e!3308659))))

(declare-fun setRest!34317 () (InoxSet Context!8746))

(assert (=> setNonEmpty!34317 (= z!1189 ((_ map or) (store ((as const (Array Context!8746 Bool)) false) setElem!34317 true) setRest!34317))))

(declare-fun b!5326465 () Bool)

(declare-fun res!2259256 () Bool)

(assert (=> b!5326465 (=> res!2259256 e!3308658)))

(assert (=> b!5326465 (= res!2259256 (not (= (exprs!4873 (h!67591 zl!343)) (Cons!61142 (Concat!23834 (regOne!30490 (regOne!30490 r!7292)) (regTwo!30490 (regOne!30490 r!7292))) (t!374481 (exprs!4873 (h!67591 zl!343)))))))))

(declare-fun b!5326466 () Bool)

(declare-fun tp!1482830 () Bool)

(declare-fun tp!1482828 () Bool)

(assert (=> b!5326466 (= e!3308662 (and tp!1482830 tp!1482828))))

(declare-fun res!2259260 () Bool)

(assert (=> start!561466 (=> (not res!2259260) (not e!3308663))))

(declare-fun validRegex!6725 (Regex!14989) Bool)

(assert (=> start!561466 (= res!2259260 (validRegex!6725 r!7292))))

(assert (=> start!561466 e!3308663))

(assert (=> start!561466 e!3308662))

(declare-fun condSetEmpty!34317 () Bool)

(assert (=> start!561466 (= condSetEmpty!34317 (= z!1189 ((as const (Array Context!8746 Bool)) false)))))

(assert (=> start!561466 setRes!34317))

(assert (=> start!561466 e!3308660))

(assert (=> start!561466 e!3308669))

(declare-fun b!5326467 () Bool)

(declare-fun res!2259245 () Bool)

(assert (=> b!5326467 (=> res!2259245 e!3308661)))

(assert (=> b!5326467 (= res!2259245 (not ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5326468 () Bool)

(declare-fun tp!1482831 () Bool)

(declare-fun tp!1482837 () Bool)

(assert (=> b!5326468 (= e!3308662 (and tp!1482831 tp!1482837))))

(declare-fun b!5326469 () Bool)

(assert (=> b!5326469 (= e!3308672 e!3308668)))

(declare-fun res!2259239 () Bool)

(assert (=> b!5326469 (=> res!2259239 e!3308668)))

(assert (=> b!5326469 (= res!2259239 (not (= lt!2173319 lt!2173300)))))

(declare-fun derivationStepZipperDown!437 (Regex!14989 Context!8746 C!30248) (InoxSet Context!8746))

(assert (=> b!5326469 (= lt!2173300 (derivationStepZipperDown!437 (regOne!30490 (regOne!30490 r!7292)) (Context!8747 lt!2173306) (h!67592 s!2326)))))

(assert (=> b!5326469 (= lt!2173306 (Cons!61142 (regTwo!30490 (regOne!30490 r!7292)) (t!374481 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5326470 () Bool)

(declare-fun e!3308671 () Unit!153474)

(declare-fun Unit!153476 () Unit!153474)

(assert (=> b!5326470 (= e!3308671 Unit!153476)))

(declare-fun b!5326471 () Bool)

(declare-fun Unit!153477 () Unit!153474)

(assert (=> b!5326471 (= e!3308671 Unit!153477)))

(declare-fun lt!2173296 () Unit!153474)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!226 ((InoxSet Context!8746) (InoxSet Context!8746) List!61268) Unit!153474)

(assert (=> b!5326471 (= lt!2173296 (lemmaZipperConcatMatchesSameAsBothZippers!226 lt!2173319 lt!2173318 (t!374483 s!2326)))))

(declare-fun res!2259255 () Bool)

(assert (=> b!5326471 (= res!2259255 (matchZipper!1233 lt!2173319 (t!374483 s!2326)))))

(assert (=> b!5326471 (=> res!2259255 e!3308670)))

(assert (=> b!5326471 (= (matchZipper!1233 ((_ map or) lt!2173319 lt!2173318) (t!374483 s!2326)) e!3308670)))

(assert (=> b!5326472 (= e!3308657 e!3308672)))

(declare-fun res!2259241 () Bool)

(assert (=> b!5326472 (=> res!2259241 e!3308672)))

(assert (=> b!5326472 (= res!2259241 (or (and ((_ is ElementMatch!14989) (regOne!30490 r!7292)) (= (c!926025 (regOne!30490 r!7292)) (h!67592 s!2326))) ((_ is Union!14989) (regOne!30490 r!7292))))))

(declare-fun lt!2173320 () Unit!153474)

(assert (=> b!5326472 (= lt!2173320 e!3308671)))

(declare-fun c!926024 () Bool)

(declare-fun nullable!5158 (Regex!14989) Bool)

(assert (=> b!5326472 (= c!926024 (nullable!5158 (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(assert (=> b!5326472 (= (flatMap!716 z!1189 lambda!271937) (derivationStepZipperUp!361 (h!67591 zl!343) (h!67592 s!2326)))))

(declare-fun lt!2173308 () Unit!153474)

(assert (=> b!5326472 (= lt!2173308 (lemmaFlatMapOnSingletonSet!248 z!1189 (h!67591 zl!343) lambda!271937))))

(declare-fun lt!2173304 () Context!8746)

(assert (=> b!5326472 (= lt!2173318 (derivationStepZipperUp!361 lt!2173304 (h!67592 s!2326)))))

(assert (=> b!5326472 (= lt!2173319 (derivationStepZipperDown!437 (h!67590 (exprs!4873 (h!67591 zl!343))) lt!2173304 (h!67592 s!2326)))))

(assert (=> b!5326472 (= lt!2173304 (Context!8747 (t!374481 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun lt!2173307 () (InoxSet Context!8746))

(assert (=> b!5326472 (= lt!2173307 (derivationStepZipperUp!361 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343))))) (h!67592 s!2326)))))

(declare-fun b!5326473 () Bool)

(assert (=> b!5326473 (= e!3308665 (nullable!5158 (regOne!30490 (regOne!30490 r!7292))))))

(assert (= (and start!561466 res!2259260) b!5326464))

(assert (= (and b!5326464 res!2259251) b!5326445))

(assert (= (and b!5326445 res!2259244) b!5326463))

(assert (= (and b!5326463 (not res!2259243)) b!5326444))

(assert (= (and b!5326444 (not res!2259258)) b!5326455))

(assert (= (and b!5326455 (not res!2259254)) b!5326467))

(assert (= (and b!5326467 (not res!2259245)) b!5326446))

(assert (= (and b!5326446 (not res!2259238)) b!5326441))

(assert (= (and b!5326441 (not res!2259242)) b!5326447))

(assert (= (and b!5326447 (not res!2259257)) b!5326460))

(assert (= (and b!5326460 (not res!2259252)) b!5326472))

(assert (= (and b!5326472 c!926024) b!5326471))

(assert (= (and b!5326472 (not c!926024)) b!5326470))

(assert (= (and b!5326471 (not res!2259255)) b!5326450))

(assert (= (and b!5326472 (not res!2259241)) b!5326448))

(assert (= (and b!5326448 res!2259253) b!5326473))

(assert (= (and b!5326448 (not res!2259240)) b!5326442))

(assert (= (and b!5326442 (not res!2259247)) b!5326469))

(assert (= (and b!5326469 (not res!2259239)) b!5326462))

(assert (= (and b!5326462 (not res!2259261)) b!5326459))

(assert (= (and b!5326459 (not res!2259250)) b!5326452))

(assert (= (and b!5326452 (not res!2259249)) b!5326465))

(assert (= (and b!5326465 (not res!2259256)) b!5326443))

(assert (= (and b!5326443 (not res!2259248)) b!5326449))

(assert (= (and b!5326449 (not res!2259246)) b!5326454))

(assert (= (and b!5326454 (not res!2259259)) b!5326458))

(assert (= (and start!561466 ((_ is ElementMatch!14989) r!7292)) b!5326461))

(assert (= (and start!561466 ((_ is Concat!23834) r!7292)) b!5326466))

(assert (= (and start!561466 ((_ is Star!14989) r!7292)) b!5326456))

(assert (= (and start!561466 ((_ is Union!14989) r!7292)) b!5326468))

(assert (= (and start!561466 condSetEmpty!34317) setIsEmpty!34317))

(assert (= (and start!561466 (not condSetEmpty!34317)) setNonEmpty!34317))

(assert (= setNonEmpty!34317 b!5326451))

(assert (= b!5326453 b!5326457))

(assert (= (and start!561466 ((_ is Cons!61143) zl!343)) b!5326453))

(assert (= (and start!561466 ((_ is Cons!61144) s!2326)) b!5326440))

(declare-fun m!6360490 () Bool)

(assert (=> b!5326458 m!6360490))

(declare-fun m!6360492 () Bool)

(assert (=> b!5326458 m!6360492))

(declare-fun m!6360494 () Bool)

(assert (=> b!5326458 m!6360494))

(declare-fun m!6360496 () Bool)

(assert (=> b!5326458 m!6360496))

(assert (=> b!5326458 m!6360490))

(declare-fun m!6360498 () Bool)

(assert (=> b!5326458 m!6360498))

(declare-fun m!6360500 () Bool)

(assert (=> b!5326458 m!6360500))

(declare-fun m!6360502 () Bool)

(assert (=> b!5326458 m!6360502))

(declare-fun m!6360504 () Bool)

(assert (=> b!5326458 m!6360504))

(declare-fun m!6360506 () Bool)

(assert (=> b!5326458 m!6360506))

(declare-fun m!6360508 () Bool)

(assert (=> b!5326458 m!6360508))

(declare-fun m!6360510 () Bool)

(assert (=> b!5326458 m!6360510))

(declare-fun m!6360512 () Bool)

(assert (=> b!5326458 m!6360512))

(declare-fun m!6360514 () Bool)

(assert (=> b!5326445 m!6360514))

(declare-fun m!6360516 () Bool)

(assert (=> b!5326454 m!6360516))

(declare-fun m!6360518 () Bool)

(assert (=> b!5326454 m!6360518))

(declare-fun m!6360520 () Bool)

(assert (=> b!5326452 m!6360520))

(declare-fun m!6360522 () Bool)

(assert (=> b!5326464 m!6360522))

(declare-fun m!6360524 () Bool)

(assert (=> start!561466 m!6360524))

(declare-fun m!6360526 () Bool)

(assert (=> b!5326447 m!6360526))

(declare-fun m!6360528 () Bool)

(assert (=> b!5326447 m!6360528))

(declare-fun m!6360530 () Bool)

(assert (=> b!5326447 m!6360530))

(declare-fun m!6360532 () Bool)

(assert (=> b!5326447 m!6360532))

(assert (=> b!5326447 m!6360526))

(declare-fun m!6360534 () Bool)

(assert (=> b!5326447 m!6360534))

(declare-fun m!6360536 () Bool)

(assert (=> b!5326447 m!6360536))

(assert (=> b!5326447 m!6360536))

(declare-fun m!6360538 () Bool)

(assert (=> b!5326459 m!6360538))

(declare-fun m!6360540 () Bool)

(assert (=> b!5326459 m!6360540))

(declare-fun m!6360542 () Bool)

(assert (=> b!5326459 m!6360542))

(declare-fun m!6360544 () Bool)

(assert (=> b!5326459 m!6360544))

(declare-fun m!6360546 () Bool)

(assert (=> b!5326459 m!6360546))

(declare-fun m!6360548 () Bool)

(assert (=> b!5326443 m!6360548))

(declare-fun m!6360550 () Bool)

(assert (=> b!5326443 m!6360550))

(declare-fun m!6360552 () Bool)

(assert (=> b!5326471 m!6360552))

(declare-fun m!6360554 () Bool)

(assert (=> b!5326471 m!6360554))

(declare-fun m!6360556 () Bool)

(assert (=> b!5326471 m!6360556))

(declare-fun m!6360558 () Bool)

(assert (=> b!5326455 m!6360558))

(declare-fun m!6360560 () Bool)

(assert (=> b!5326462 m!6360560))

(assert (=> b!5326462 m!6360554))

(declare-fun m!6360562 () Bool)

(assert (=> b!5326469 m!6360562))

(declare-fun m!6360564 () Bool)

(assert (=> b!5326449 m!6360564))

(declare-fun m!6360566 () Bool)

(assert (=> b!5326449 m!6360566))

(declare-fun m!6360568 () Bool)

(assert (=> b!5326460 m!6360568))

(declare-fun m!6360570 () Bool)

(assert (=> b!5326446 m!6360570))

(assert (=> b!5326446 m!6360570))

(declare-fun m!6360572 () Bool)

(assert (=> b!5326446 m!6360572))

(declare-fun m!6360574 () Bool)

(assert (=> b!5326463 m!6360574))

(declare-fun m!6360576 () Bool)

(assert (=> b!5326463 m!6360576))

(declare-fun m!6360578 () Bool)

(assert (=> b!5326463 m!6360578))

(declare-fun m!6360580 () Bool)

(assert (=> b!5326453 m!6360580))

(declare-fun m!6360582 () Bool)

(assert (=> b!5326472 m!6360582))

(declare-fun m!6360584 () Bool)

(assert (=> b!5326472 m!6360584))

(declare-fun m!6360586 () Bool)

(assert (=> b!5326472 m!6360586))

(declare-fun m!6360588 () Bool)

(assert (=> b!5326472 m!6360588))

(declare-fun m!6360590 () Bool)

(assert (=> b!5326472 m!6360590))

(declare-fun m!6360592 () Bool)

(assert (=> b!5326472 m!6360592))

(declare-fun m!6360594 () Bool)

(assert (=> b!5326472 m!6360594))

(declare-fun m!6360596 () Bool)

(assert (=> b!5326473 m!6360596))

(declare-fun m!6360598 () Bool)

(assert (=> setNonEmpty!34317 m!6360598))

(declare-fun m!6360600 () Bool)

(assert (=> b!5326444 m!6360600))

(declare-fun m!6360602 () Bool)

(assert (=> b!5326450 m!6360602))

(check-sat (not b!5326443) (not b!5326469) (not b!5326449) (not b!5326452) (not b!5326462) tp_is_empty!39231 (not setNonEmpty!34317) (not b!5326453) (not b!5326471) (not b!5326450) (not b!5326472) (not b!5326463) (not b!5326473) (not b!5326456) (not start!561466) (not b!5326451) (not b!5326458) (not b!5326457) (not b!5326445) (not b!5326440) (not b!5326466) (not b!5326446) (not b!5326459) (not b!5326464) (not b!5326468) (not b!5326454) (not b!5326447) (not b!5326444) (not b!5326460) (not b!5326455))
(check-sat)
(get-model)

(declare-fun d!1710678 () Bool)

(declare-fun nullableFct!1502 (Regex!14989) Bool)

(assert (=> d!1710678 (= (nullable!5158 (h!67590 (exprs!4873 (h!67591 zl!343)))) (nullableFct!1502 (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun bs!1234683 () Bool)

(assert (= bs!1234683 d!1710678))

(declare-fun m!6360666 () Bool)

(assert (=> bs!1234683 m!6360666))

(assert (=> b!5326472 d!1710678))

(declare-fun b!5326588 () Bool)

(declare-fun e!3308735 () (InoxSet Context!8746))

(declare-fun e!3308734 () (InoxSet Context!8746))

(assert (=> b!5326588 (= e!3308735 e!3308734)))

(declare-fun c!926061 () Bool)

(assert (=> b!5326588 (= c!926061 ((_ is Cons!61142) (exprs!4873 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343))))))))))

(declare-fun b!5326589 () Bool)

(declare-fun call!380544 () (InoxSet Context!8746))

(assert (=> b!5326589 (= e!3308735 ((_ map or) call!380544 (derivationStepZipperUp!361 (Context!8747 (t!374481 (exprs!4873 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343)))))))) (h!67592 s!2326))))))

(declare-fun b!5326590 () Bool)

(assert (=> b!5326590 (= e!3308734 ((as const (Array Context!8746 Bool)) false))))

(declare-fun b!5326591 () Bool)

(assert (=> b!5326591 (= e!3308734 call!380544)))

(declare-fun bm!380539 () Bool)

(assert (=> bm!380539 (= call!380544 (derivationStepZipperDown!437 (h!67590 (exprs!4873 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343))))))) (Context!8747 (t!374481 (exprs!4873 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343)))))))) (h!67592 s!2326)))))

(declare-fun b!5326587 () Bool)

(declare-fun e!3308733 () Bool)

(assert (=> b!5326587 (= e!3308733 (nullable!5158 (h!67590 (exprs!4873 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343)))))))))))

(declare-fun d!1710680 () Bool)

(declare-fun c!926062 () Bool)

(assert (=> d!1710680 (= c!926062 e!3308733)))

(declare-fun res!2259299 () Bool)

(assert (=> d!1710680 (=> (not res!2259299) (not e!3308733))))

(assert (=> d!1710680 (= res!2259299 ((_ is Cons!61142) (exprs!4873 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343))))))))))

(assert (=> d!1710680 (= (derivationStepZipperUp!361 (Context!8747 (Cons!61142 (h!67590 (exprs!4873 (h!67591 zl!343))) (t!374481 (exprs!4873 (h!67591 zl!343))))) (h!67592 s!2326)) e!3308735)))

(assert (= (and d!1710680 res!2259299) b!5326587))

(assert (= (and d!1710680 c!926062) b!5326589))

(assert (= (and d!1710680 (not c!926062)) b!5326588))

(assert (= (and b!5326588 c!926061) b!5326591))

(assert (= (and b!5326588 (not c!926061)) b!5326590))

(assert (= (or b!5326589 b!5326591) bm!380539))

(declare-fun m!6360682 () Bool)

(assert (=> b!5326589 m!6360682))

(declare-fun m!6360684 () Bool)

(assert (=> bm!380539 m!6360684))

(declare-fun m!6360686 () Bool)

(assert (=> b!5326587 m!6360686))

(assert (=> b!5326472 d!1710680))

(declare-fun b!5326593 () Bool)

(declare-fun e!3308738 () (InoxSet Context!8746))

(declare-fun e!3308737 () (InoxSet Context!8746))

(assert (=> b!5326593 (= e!3308738 e!3308737)))

(declare-fun c!926063 () Bool)

(assert (=> b!5326593 (= c!926063 ((_ is Cons!61142) (exprs!4873 lt!2173304)))))

(declare-fun b!5326594 () Bool)

(declare-fun call!380545 () (InoxSet Context!8746))

(assert (=> b!5326594 (= e!3308738 ((_ map or) call!380545 (derivationStepZipperUp!361 (Context!8747 (t!374481 (exprs!4873 lt!2173304))) (h!67592 s!2326))))))

(declare-fun b!5326595 () Bool)

(assert (=> b!5326595 (= e!3308737 ((as const (Array Context!8746 Bool)) false))))

(declare-fun b!5326596 () Bool)

(assert (=> b!5326596 (= e!3308737 call!380545)))

(declare-fun bm!380540 () Bool)

(assert (=> bm!380540 (= call!380545 (derivationStepZipperDown!437 (h!67590 (exprs!4873 lt!2173304)) (Context!8747 (t!374481 (exprs!4873 lt!2173304))) (h!67592 s!2326)))))

(declare-fun b!5326592 () Bool)

(declare-fun e!3308736 () Bool)

(assert (=> b!5326592 (= e!3308736 (nullable!5158 (h!67590 (exprs!4873 lt!2173304))))))

(declare-fun d!1710690 () Bool)

(declare-fun c!926064 () Bool)

(assert (=> d!1710690 (= c!926064 e!3308736)))

(declare-fun res!2259300 () Bool)

(assert (=> d!1710690 (=> (not res!2259300) (not e!3308736))))

(assert (=> d!1710690 (= res!2259300 ((_ is Cons!61142) (exprs!4873 lt!2173304)))))

(assert (=> d!1710690 (= (derivationStepZipperUp!361 lt!2173304 (h!67592 s!2326)) e!3308738)))

(assert (= (and d!1710690 res!2259300) b!5326592))

(assert (= (and d!1710690 c!926064) b!5326594))

(assert (= (and d!1710690 (not c!926064)) b!5326593))

(assert (= (and b!5326593 c!926063) b!5326596))

(assert (= (and b!5326593 (not c!926063)) b!5326595))

(assert (= (or b!5326594 b!5326596) bm!380540))

(declare-fun m!6360688 () Bool)

(assert (=> b!5326594 m!6360688))

(declare-fun m!6360690 () Bool)

(assert (=> bm!380540 m!6360690))

(declare-fun m!6360692 () Bool)

(assert (=> b!5326592 m!6360692))

(assert (=> b!5326472 d!1710690))

(declare-fun b!5326700 () Bool)

(declare-fun e!3308802 () (InoxSet Context!8746))

(assert (=> b!5326700 (= e!3308802 (store ((as const (Array Context!8746 Bool)) false) lt!2173304 true))))

(declare-fun c!926110 () Bool)

(declare-fun call!380565 () List!61266)

(declare-fun call!380566 () (InoxSet Context!8746))

(declare-fun bm!380559 () Bool)

(declare-fun c!926111 () Bool)

(declare-fun c!926112 () Bool)

(assert (=> bm!380559 (= call!380566 (derivationStepZipperDown!437 (ite c!926112 (regTwo!30491 (h!67590 (exprs!4873 (h!67591 zl!343)))) (ite c!926110 (regTwo!30490 (h!67590 (exprs!4873 (h!67591 zl!343)))) (ite c!926111 (regOne!30490 (h!67590 (exprs!4873 (h!67591 zl!343)))) (reg!15318 (h!67590 (exprs!4873 (h!67591 zl!343))))))) (ite (or c!926112 c!926110) lt!2173304 (Context!8747 call!380565)) (h!67592 s!2326)))))

(declare-fun b!5326701 () Bool)

(declare-fun e!3308799 () (InoxSet Context!8746))

(declare-fun call!380568 () (InoxSet Context!8746))

(assert (=> b!5326701 (= e!3308799 ((_ map or) call!380568 call!380566))))

(declare-fun b!5326702 () Bool)

(declare-fun e!3308801 () (InoxSet Context!8746))

(declare-fun call!380569 () (InoxSet Context!8746))

(assert (=> b!5326702 (= e!3308801 call!380569)))

(declare-fun bm!380560 () Bool)

(declare-fun call!380564 () List!61266)

(declare-fun $colon$colon!1400 (List!61266 Regex!14989) List!61266)

(assert (=> bm!380560 (= call!380564 ($colon$colon!1400 (exprs!4873 lt!2173304) (ite (or c!926110 c!926111) (regTwo!30490 (h!67590 (exprs!4873 (h!67591 zl!343)))) (h!67590 (exprs!4873 (h!67591 zl!343))))))))

(declare-fun b!5326703 () Bool)

(declare-fun e!3308800 () Bool)

(assert (=> b!5326703 (= e!3308800 (nullable!5158 (regOne!30490 (h!67590 (exprs!4873 (h!67591 zl!343))))))))

(declare-fun bm!380561 () Bool)

(declare-fun call!380567 () (InoxSet Context!8746))

(assert (=> bm!380561 (= call!380569 call!380567)))

(declare-fun d!1710692 () Bool)

(declare-fun c!926109 () Bool)

(assert (=> d!1710692 (= c!926109 (and ((_ is ElementMatch!14989) (h!67590 (exprs!4873 (h!67591 zl!343)))) (= (c!926025 (h!67590 (exprs!4873 (h!67591 zl!343)))) (h!67592 s!2326))))))

(assert (=> d!1710692 (= (derivationStepZipperDown!437 (h!67590 (exprs!4873 (h!67591 zl!343))) lt!2173304 (h!67592 s!2326)) e!3308802)))

(declare-fun b!5326704 () Bool)

(declare-fun c!926113 () Bool)

(assert (=> b!5326704 (= c!926113 ((_ is Star!14989) (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun e!3308797 () (InoxSet Context!8746))

(assert (=> b!5326704 (= e!3308797 e!3308801)))

(declare-fun b!5326705 () Bool)

(declare-fun e!3308798 () (InoxSet Context!8746))

(assert (=> b!5326705 (= e!3308798 e!3308797)))

(assert (=> b!5326705 (= c!926111 ((_ is Concat!23834) (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5326706 () Bool)

(assert (=> b!5326706 (= e!3308801 ((as const (Array Context!8746 Bool)) false))))

(declare-fun b!5326707 () Bool)

(assert (=> b!5326707 (= e!3308802 e!3308799)))

(assert (=> b!5326707 (= c!926112 ((_ is Union!14989) (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5326708 () Bool)

(assert (=> b!5326708 (= e!3308797 call!380569)))

(declare-fun bm!380562 () Bool)

(assert (=> bm!380562 (= call!380565 call!380564)))

(declare-fun bm!380563 () Bool)

(assert (=> bm!380563 (= call!380567 call!380566)))

(declare-fun b!5326709 () Bool)

(assert (=> b!5326709 (= e!3308798 ((_ map or) call!380568 call!380567))))

(declare-fun b!5326710 () Bool)

(assert (=> b!5326710 (= c!926110 e!3308800)))

(declare-fun res!2259318 () Bool)

(assert (=> b!5326710 (=> (not res!2259318) (not e!3308800))))

(assert (=> b!5326710 (= res!2259318 ((_ is Concat!23834) (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(assert (=> b!5326710 (= e!3308799 e!3308798)))

(declare-fun bm!380564 () Bool)

(assert (=> bm!380564 (= call!380568 (derivationStepZipperDown!437 (ite c!926112 (regOne!30491 (h!67590 (exprs!4873 (h!67591 zl!343)))) (regOne!30490 (h!67590 (exprs!4873 (h!67591 zl!343))))) (ite c!926112 lt!2173304 (Context!8747 call!380564)) (h!67592 s!2326)))))

(assert (= (and d!1710692 c!926109) b!5326700))

(assert (= (and d!1710692 (not c!926109)) b!5326707))

(assert (= (and b!5326707 c!926112) b!5326701))

(assert (= (and b!5326707 (not c!926112)) b!5326710))

(assert (= (and b!5326710 res!2259318) b!5326703))

(assert (= (and b!5326710 c!926110) b!5326709))

(assert (= (and b!5326710 (not c!926110)) b!5326705))

(assert (= (and b!5326705 c!926111) b!5326708))

(assert (= (and b!5326705 (not c!926111)) b!5326704))

(assert (= (and b!5326704 c!926113) b!5326702))

(assert (= (and b!5326704 (not c!926113)) b!5326706))

(assert (= (or b!5326708 b!5326702) bm!380562))

(assert (= (or b!5326708 b!5326702) bm!380561))

(assert (= (or b!5326709 bm!380562) bm!380560))

(assert (= (or b!5326709 bm!380561) bm!380563))

(assert (= (or b!5326701 bm!380563) bm!380559))

(assert (= (or b!5326701 b!5326709) bm!380564))

(declare-fun m!6360808 () Bool)

(assert (=> b!5326703 m!6360808))

(declare-fun m!6360810 () Bool)

(assert (=> b!5326700 m!6360810))

(declare-fun m!6360812 () Bool)

(assert (=> bm!380560 m!6360812))

(declare-fun m!6360814 () Bool)

(assert (=> bm!380559 m!6360814))

(declare-fun m!6360816 () Bool)

(assert (=> bm!380564 m!6360816))

(assert (=> b!5326472 d!1710692))

(declare-fun b!5326712 () Bool)

(declare-fun e!3308805 () (InoxSet Context!8746))

(declare-fun e!3308804 () (InoxSet Context!8746))

(assert (=> b!5326712 (= e!3308805 e!3308804)))

(declare-fun c!926114 () Bool)

(assert (=> b!5326712 (= c!926114 ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343))))))

(declare-fun b!5326713 () Bool)

(declare-fun call!380570 () (InoxSet Context!8746))

(assert (=> b!5326713 (= e!3308805 ((_ map or) call!380570 (derivationStepZipperUp!361 (Context!8747 (t!374481 (exprs!4873 (h!67591 zl!343)))) (h!67592 s!2326))))))

(declare-fun b!5326714 () Bool)

(assert (=> b!5326714 (= e!3308804 ((as const (Array Context!8746 Bool)) false))))

(declare-fun b!5326715 () Bool)

(assert (=> b!5326715 (= e!3308804 call!380570)))

(declare-fun bm!380565 () Bool)

(assert (=> bm!380565 (= call!380570 (derivationStepZipperDown!437 (h!67590 (exprs!4873 (h!67591 zl!343))) (Context!8747 (t!374481 (exprs!4873 (h!67591 zl!343)))) (h!67592 s!2326)))))

(declare-fun b!5326711 () Bool)

(declare-fun e!3308803 () Bool)

(assert (=> b!5326711 (= e!3308803 (nullable!5158 (h!67590 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun d!1710728 () Bool)

(declare-fun c!926115 () Bool)

(assert (=> d!1710728 (= c!926115 e!3308803)))

(declare-fun res!2259319 () Bool)

(assert (=> d!1710728 (=> (not res!2259319) (not e!3308803))))

(assert (=> d!1710728 (= res!2259319 ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343))))))

(assert (=> d!1710728 (= (derivationStepZipperUp!361 (h!67591 zl!343) (h!67592 s!2326)) e!3308805)))

(assert (= (and d!1710728 res!2259319) b!5326711))

(assert (= (and d!1710728 c!926115) b!5326713))

(assert (= (and d!1710728 (not c!926115)) b!5326712))

(assert (= (and b!5326712 c!926114) b!5326715))

(assert (= (and b!5326712 (not c!926114)) b!5326714))

(assert (= (or b!5326713 b!5326715) bm!380565))

(declare-fun m!6360818 () Bool)

(assert (=> b!5326713 m!6360818))

(declare-fun m!6360820 () Bool)

(assert (=> bm!380565 m!6360820))

(assert (=> b!5326711 m!6360588))

(assert (=> b!5326472 d!1710728))

(declare-fun d!1710730 () Bool)

(declare-fun dynLambda!24177 (Int Context!8746) (InoxSet Context!8746))

(assert (=> d!1710730 (= (flatMap!716 z!1189 lambda!271937) (dynLambda!24177 lambda!271937 (h!67591 zl!343)))))

(declare-fun lt!2173359 () Unit!153474)

(declare-fun choose!39878 ((InoxSet Context!8746) Context!8746 Int) Unit!153474)

(assert (=> d!1710730 (= lt!2173359 (choose!39878 z!1189 (h!67591 zl!343) lambda!271937))))

(assert (=> d!1710730 (= z!1189 (store ((as const (Array Context!8746 Bool)) false) (h!67591 zl!343) true))))

(assert (=> d!1710730 (= (lemmaFlatMapOnSingletonSet!248 z!1189 (h!67591 zl!343) lambda!271937) lt!2173359)))

(declare-fun b_lambda!204911 () Bool)

(assert (=> (not b_lambda!204911) (not d!1710730)))

(declare-fun bs!1234705 () Bool)

(assert (= bs!1234705 d!1710730))

(assert (=> bs!1234705 m!6360590))

(declare-fun m!6360822 () Bool)

(assert (=> bs!1234705 m!6360822))

(declare-fun m!6360824 () Bool)

(assert (=> bs!1234705 m!6360824))

(declare-fun m!6360826 () Bool)

(assert (=> bs!1234705 m!6360826))

(assert (=> b!5326472 d!1710730))

(declare-fun d!1710732 () Bool)

(declare-fun choose!39879 ((InoxSet Context!8746) Int) (InoxSet Context!8746))

(assert (=> d!1710732 (= (flatMap!716 z!1189 lambda!271937) (choose!39879 z!1189 lambda!271937))))

(declare-fun bs!1234706 () Bool)

(assert (= bs!1234706 d!1710732))

(declare-fun m!6360828 () Bool)

(assert (=> bs!1234706 m!6360828))

(assert (=> b!5326472 d!1710732))

(declare-fun bs!1234707 () Bool)

(declare-fun d!1710734 () Bool)

(assert (= bs!1234707 (and d!1710734 b!5326458)))

(declare-fun lambda!271962 () Int)

(assert (=> bs!1234707 (= lambda!271962 lambda!271939)))

(assert (=> d!1710734 (= (inv!80719 (h!67591 zl!343)) (forall!14407 (exprs!4873 (h!67591 zl!343)) lambda!271962))))

(declare-fun bs!1234708 () Bool)

(assert (= bs!1234708 d!1710734))

(declare-fun m!6360830 () Bool)

(assert (=> bs!1234708 m!6360830))

(assert (=> b!5326453 d!1710734))

(declare-fun d!1710736 () Bool)

(declare-fun c!926130 () Bool)

(declare-fun isEmpty!33115 (List!61268) Bool)

(assert (=> d!1710736 (= c!926130 (isEmpty!33115 (t!374483 s!2326)))))

(declare-fun e!3308839 () Bool)

(assert (=> d!1710736 (= (matchZipper!1233 lt!2173314 (t!374483 s!2326)) e!3308839)))

(declare-fun b!5326769 () Bool)

(declare-fun nullableZipper!1350 ((InoxSet Context!8746)) Bool)

(assert (=> b!5326769 (= e!3308839 (nullableZipper!1350 lt!2173314))))

(declare-fun b!5326770 () Bool)

(declare-fun head!11418 (List!61268) C!30248)

(declare-fun tail!10515 (List!61268) List!61268)

(assert (=> b!5326770 (= e!3308839 (matchZipper!1233 (derivationStepZipper!1230 lt!2173314 (head!11418 (t!374483 s!2326))) (tail!10515 (t!374483 s!2326))))))

(assert (= (and d!1710736 c!926130) b!5326769))

(assert (= (and d!1710736 (not c!926130)) b!5326770))

(declare-fun m!6360842 () Bool)

(assert (=> d!1710736 m!6360842))

(declare-fun m!6360844 () Bool)

(assert (=> b!5326769 m!6360844))

(declare-fun m!6360846 () Bool)

(assert (=> b!5326770 m!6360846))

(assert (=> b!5326770 m!6360846))

(declare-fun m!6360848 () Bool)

(assert (=> b!5326770 m!6360848))

(declare-fun m!6360850 () Bool)

(assert (=> b!5326770 m!6360850))

(assert (=> b!5326770 m!6360848))

(assert (=> b!5326770 m!6360850))

(declare-fun m!6360852 () Bool)

(assert (=> b!5326770 m!6360852))

(assert (=> b!5326452 d!1710736))

(declare-fun bs!1234743 () Bool)

(declare-fun b!5326876 () Bool)

(assert (= bs!1234743 (and b!5326876 b!5326447)))

(declare-fun lambda!271973 () Int)

(assert (=> bs!1234743 (not (= lambda!271973 lambda!271935))))

(assert (=> bs!1234743 (not (= lambda!271973 lambda!271936))))

(declare-fun bs!1234746 () Bool)

(assert (= bs!1234746 (and b!5326876 b!5326458)))

(assert (=> bs!1234746 (not (= lambda!271973 lambda!271938))))

(assert (=> b!5326876 true))

(assert (=> b!5326876 true))

(declare-fun bs!1234747 () Bool)

(declare-fun b!5326884 () Bool)

(assert (= bs!1234747 (and b!5326884 b!5326447)))

(declare-fun lambda!271974 () Int)

(assert (=> bs!1234747 (not (= lambda!271974 lambda!271935))))

(assert (=> bs!1234747 (= lambda!271974 lambda!271936)))

(declare-fun bs!1234748 () Bool)

(assert (= bs!1234748 (and b!5326884 b!5326458)))

(assert (=> bs!1234748 (not (= lambda!271974 lambda!271938))))

(declare-fun bs!1234750 () Bool)

(assert (= bs!1234750 (and b!5326884 b!5326876)))

(assert (=> bs!1234750 (not (= lambda!271974 lambda!271973))))

(assert (=> b!5326884 true))

(assert (=> b!5326884 true))

(declare-fun e!3308904 () Bool)

(declare-fun call!380587 () Bool)

(assert (=> b!5326876 (= e!3308904 call!380587)))

(declare-fun b!5326877 () Bool)

(declare-fun e!3308902 () Bool)

(declare-fun call!380586 () Bool)

(assert (=> b!5326877 (= e!3308902 call!380586)))

(declare-fun b!5326878 () Bool)

(declare-fun res!2259392 () Bool)

(assert (=> b!5326878 (=> res!2259392 e!3308904)))

(assert (=> b!5326878 (= res!2259392 call!380586)))

(declare-fun e!3308899 () Bool)

(assert (=> b!5326878 (= e!3308899 e!3308904)))

(declare-fun bm!380581 () Bool)

(assert (=> bm!380581 (= call!380586 (isEmpty!33115 s!2326))))

(declare-fun b!5326880 () Bool)

(declare-fun c!926162 () Bool)

(assert (=> b!5326880 (= c!926162 ((_ is Union!14989) r!7292))))

(declare-fun e!3308901 () Bool)

(declare-fun e!3308900 () Bool)

(assert (=> b!5326880 (= e!3308901 e!3308900)))

(declare-fun c!926163 () Bool)

(declare-fun bm!380582 () Bool)

(assert (=> bm!380582 (= call!380587 (Exists!2170 (ite c!926163 lambda!271973 lambda!271974)))))

(declare-fun b!5326881 () Bool)

(declare-fun e!3308898 () Bool)

(assert (=> b!5326881 (= e!3308902 e!3308898)))

(declare-fun res!2259393 () Bool)

(assert (=> b!5326881 (= res!2259393 (not ((_ is EmptyLang!14989) r!7292)))))

(assert (=> b!5326881 (=> (not res!2259393) (not e!3308898))))

(declare-fun b!5326882 () Bool)

(assert (=> b!5326882 (= e!3308900 e!3308899)))

(assert (=> b!5326882 (= c!926163 ((_ is Star!14989) r!7292))))

(declare-fun b!5326883 () Bool)

(declare-fun e!3308903 () Bool)

(assert (=> b!5326883 (= e!3308903 (matchRSpec!2092 (regTwo!30491 r!7292) s!2326))))

(assert (=> b!5326884 (= e!3308899 call!380587)))

(declare-fun d!1710742 () Bool)

(declare-fun c!926160 () Bool)

(assert (=> d!1710742 (= c!926160 ((_ is EmptyExpr!14989) r!7292))))

(assert (=> d!1710742 (= (matchRSpec!2092 r!7292 s!2326) e!3308902)))

(declare-fun b!5326879 () Bool)

(declare-fun c!926161 () Bool)

(assert (=> b!5326879 (= c!926161 ((_ is ElementMatch!14989) r!7292))))

(assert (=> b!5326879 (= e!3308898 e!3308901)))

(declare-fun b!5326885 () Bool)

(assert (=> b!5326885 (= e!3308900 e!3308903)))

(declare-fun res!2259394 () Bool)

(assert (=> b!5326885 (= res!2259394 (matchRSpec!2092 (regOne!30491 r!7292) s!2326))))

(assert (=> b!5326885 (=> res!2259394 e!3308903)))

(declare-fun b!5326886 () Bool)

(assert (=> b!5326886 (= e!3308901 (= s!2326 (Cons!61144 (c!926025 r!7292) Nil!61144)))))

(assert (= (and d!1710742 c!926160) b!5326877))

(assert (= (and d!1710742 (not c!926160)) b!5326881))

(assert (= (and b!5326881 res!2259393) b!5326879))

(assert (= (and b!5326879 c!926161) b!5326886))

(assert (= (and b!5326879 (not c!926161)) b!5326880))

(assert (= (and b!5326880 c!926162) b!5326885))

(assert (= (and b!5326880 (not c!926162)) b!5326882))

(assert (= (and b!5326885 (not res!2259394)) b!5326883))

(assert (= (and b!5326882 c!926163) b!5326878))

(assert (= (and b!5326882 (not c!926163)) b!5326884))

(assert (= (and b!5326878 (not res!2259392)) b!5326876))

(assert (= (or b!5326876 b!5326884) bm!380582))

(assert (= (or b!5326877 b!5326878) bm!380581))

(declare-fun m!6360924 () Bool)

(assert (=> bm!380581 m!6360924))

(declare-fun m!6360926 () Bool)

(assert (=> bm!380582 m!6360926))

(declare-fun m!6360928 () Bool)

(assert (=> b!5326883 m!6360928))

(declare-fun m!6360930 () Bool)

(assert (=> b!5326885 m!6360930))

(assert (=> b!5326463 d!1710742))

(declare-fun b!5326961 () Bool)

(declare-fun res!2259440 () Bool)

(declare-fun e!3308954 () Bool)

(assert (=> b!5326961 (=> (not res!2259440) (not e!3308954))))

(declare-fun call!380597 () Bool)

(assert (=> b!5326961 (= res!2259440 (not call!380597))))

(declare-fun b!5326962 () Bool)

(assert (=> b!5326962 (= e!3308954 (= (head!11418 s!2326) (c!926025 r!7292)))))

(declare-fun b!5326963 () Bool)

(declare-fun res!2259437 () Bool)

(declare-fun e!3308952 () Bool)

(assert (=> b!5326963 (=> res!2259437 e!3308952)))

(assert (=> b!5326963 (= res!2259437 (not (isEmpty!33115 (tail!10515 s!2326))))))

(declare-fun b!5326964 () Bool)

(declare-fun e!3308950 () Bool)

(declare-fun derivativeStep!4170 (Regex!14989 C!30248) Regex!14989)

(assert (=> b!5326964 (= e!3308950 (matchR!7174 (derivativeStep!4170 r!7292 (head!11418 s!2326)) (tail!10515 s!2326)))))

(declare-fun b!5326965 () Bool)

(declare-fun e!3308951 () Bool)

(declare-fun e!3308953 () Bool)

(assert (=> b!5326965 (= e!3308951 e!3308953)))

(declare-fun c!926188 () Bool)

(assert (=> b!5326965 (= c!926188 ((_ is EmptyLang!14989) r!7292))))

(declare-fun b!5326966 () Bool)

(declare-fun res!2259434 () Bool)

(declare-fun e!3308949 () Bool)

(assert (=> b!5326966 (=> res!2259434 e!3308949)))

(assert (=> b!5326966 (= res!2259434 (not ((_ is ElementMatch!14989) r!7292)))))

(assert (=> b!5326966 (= e!3308953 e!3308949)))

(declare-fun d!1710762 () Bool)

(assert (=> d!1710762 e!3308951))

(declare-fun c!926189 () Bool)

(assert (=> d!1710762 (= c!926189 ((_ is EmptyExpr!14989) r!7292))))

(declare-fun lt!2173394 () Bool)

(assert (=> d!1710762 (= lt!2173394 e!3308950)))

(declare-fun c!926187 () Bool)

(assert (=> d!1710762 (= c!926187 (isEmpty!33115 s!2326))))

(assert (=> d!1710762 (validRegex!6725 r!7292)))

(assert (=> d!1710762 (= (matchR!7174 r!7292 s!2326) lt!2173394)))

(declare-fun bm!380592 () Bool)

(assert (=> bm!380592 (= call!380597 (isEmpty!33115 s!2326))))

(declare-fun b!5326967 () Bool)

(assert (=> b!5326967 (= e!3308952 (not (= (head!11418 s!2326) (c!926025 r!7292))))))

(declare-fun b!5326968 () Bool)

(assert (=> b!5326968 (= e!3308950 (nullable!5158 r!7292))))

(declare-fun b!5326969 () Bool)

(assert (=> b!5326969 (= e!3308951 (= lt!2173394 call!380597))))

(declare-fun b!5326970 () Bool)

(declare-fun e!3308948 () Bool)

(assert (=> b!5326970 (= e!3308948 e!3308952)))

(declare-fun res!2259439 () Bool)

(assert (=> b!5326970 (=> res!2259439 e!3308952)))

(assert (=> b!5326970 (= res!2259439 call!380597)))

(declare-fun b!5326971 () Bool)

(declare-fun res!2259438 () Bool)

(assert (=> b!5326971 (=> (not res!2259438) (not e!3308954))))

(assert (=> b!5326971 (= res!2259438 (isEmpty!33115 (tail!10515 s!2326)))))

(declare-fun b!5326972 () Bool)

(assert (=> b!5326972 (= e!3308949 e!3308948)))

(declare-fun res!2259435 () Bool)

(assert (=> b!5326972 (=> (not res!2259435) (not e!3308948))))

(assert (=> b!5326972 (= res!2259435 (not lt!2173394))))

(declare-fun b!5326973 () Bool)

(declare-fun res!2259436 () Bool)

(assert (=> b!5326973 (=> res!2259436 e!3308949)))

(assert (=> b!5326973 (= res!2259436 e!3308954)))

(declare-fun res!2259433 () Bool)

(assert (=> b!5326973 (=> (not res!2259433) (not e!3308954))))

(assert (=> b!5326973 (= res!2259433 lt!2173394)))

(declare-fun b!5326974 () Bool)

(assert (=> b!5326974 (= e!3308953 (not lt!2173394))))

(assert (= (and d!1710762 c!926187) b!5326968))

(assert (= (and d!1710762 (not c!926187)) b!5326964))

(assert (= (and d!1710762 c!926189) b!5326969))

(assert (= (and d!1710762 (not c!926189)) b!5326965))

(assert (= (and b!5326965 c!926188) b!5326974))

(assert (= (and b!5326965 (not c!926188)) b!5326966))

(assert (= (and b!5326966 (not res!2259434)) b!5326973))

(assert (= (and b!5326973 res!2259433) b!5326961))

(assert (= (and b!5326961 res!2259440) b!5326971))

(assert (= (and b!5326971 res!2259438) b!5326962))

(assert (= (and b!5326973 (not res!2259436)) b!5326972))

(assert (= (and b!5326972 res!2259435) b!5326970))

(assert (= (and b!5326970 (not res!2259439)) b!5326963))

(assert (= (and b!5326963 (not res!2259437)) b!5326967))

(assert (= (or b!5326969 b!5326961 b!5326970) bm!380592))

(declare-fun m!6360956 () Bool)

(assert (=> b!5326968 m!6360956))

(declare-fun m!6360958 () Bool)

(assert (=> b!5326964 m!6360958))

(assert (=> b!5326964 m!6360958))

(declare-fun m!6360960 () Bool)

(assert (=> b!5326964 m!6360960))

(declare-fun m!6360962 () Bool)

(assert (=> b!5326964 m!6360962))

(assert (=> b!5326964 m!6360960))

(assert (=> b!5326964 m!6360962))

(declare-fun m!6360964 () Bool)

(assert (=> b!5326964 m!6360964))

(assert (=> b!5326963 m!6360962))

(assert (=> b!5326963 m!6360962))

(declare-fun m!6360966 () Bool)

(assert (=> b!5326963 m!6360966))

(assert (=> b!5326962 m!6360958))

(assert (=> bm!380592 m!6360924))

(assert (=> b!5326967 m!6360958))

(assert (=> d!1710762 m!6360924))

(assert (=> d!1710762 m!6360524))

(assert (=> b!5326971 m!6360962))

(assert (=> b!5326971 m!6360962))

(assert (=> b!5326971 m!6360966))

(assert (=> b!5326463 d!1710762))

(declare-fun d!1710768 () Bool)

(assert (=> d!1710768 (= (matchR!7174 r!7292 s!2326) (matchRSpec!2092 r!7292 s!2326))))

(declare-fun lt!2173397 () Unit!153474)

(declare-fun choose!39880 (Regex!14989 List!61268) Unit!153474)

(assert (=> d!1710768 (= lt!2173397 (choose!39880 r!7292 s!2326))))

(assert (=> d!1710768 (validRegex!6725 r!7292)))

(assert (=> d!1710768 (= (mainMatchTheorem!2092 r!7292 s!2326) lt!2173397)))

(declare-fun bs!1234757 () Bool)

(assert (= bs!1234757 d!1710768))

(assert (=> bs!1234757 m!6360576))

(assert (=> bs!1234757 m!6360574))

(declare-fun m!6360974 () Bool)

(assert (=> bs!1234757 m!6360974))

(assert (=> bs!1234757 m!6360524))

(assert (=> b!5326463 d!1710768))

(declare-fun b!5327004 () Bool)

(assert (=> b!5327004 true))

(declare-fun bs!1234768 () Bool)

(declare-fun b!5327006 () Bool)

(assert (= bs!1234768 (and b!5327006 b!5327004)))

(declare-fun lt!2173413 () Int)

(declare-fun lambda!271999 () Int)

(declare-fun lambda!271998 () Int)

(declare-fun lt!2173411 () Int)

(assert (=> bs!1234768 (= (= lt!2173413 lt!2173411) (= lambda!271999 lambda!271998))))

(assert (=> b!5327006 true))

(declare-fun d!1710774 () Bool)

(declare-fun e!3308975 () Bool)

(assert (=> d!1710774 e!3308975))

(declare-fun res!2259452 () Bool)

(assert (=> d!1710774 (=> (not res!2259452) (not e!3308975))))

(assert (=> d!1710774 (= res!2259452 (>= lt!2173413 0))))

(declare-fun e!3308974 () Int)

(assert (=> d!1710774 (= lt!2173413 e!3308974)))

(declare-fun c!926206 () Bool)

(assert (=> d!1710774 (= c!926206 ((_ is Cons!61143) lt!2173312))))

(assert (=> d!1710774 (= (zipperDepth!98 lt!2173312) lt!2173413)))

(assert (=> b!5327004 (= e!3308974 lt!2173411)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!55 (Context!8746) Int)

(assert (=> b!5327004 (= lt!2173411 (maxBigInt!0 (contextDepth!55 (h!67591 lt!2173312)) (zipperDepth!98 (t!374482 lt!2173312))))))

(declare-fun lambda!271997 () Int)

(declare-fun lt!2173410 () Unit!153474)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!49 (List!61267 Int Int Int) Unit!153474)

(assert (=> b!5327004 (= lt!2173410 (lemmaForallContextDepthBiggerThanTransitive!49 (t!374482 lt!2173312) lt!2173411 (zipperDepth!98 (t!374482 lt!2173312)) lambda!271997))))

(declare-fun forall!14408 (List!61267 Int) Bool)

(assert (=> b!5327004 (forall!14408 (t!374482 lt!2173312) lambda!271998)))

(declare-fun lt!2173412 () Unit!153474)

(assert (=> b!5327004 (= lt!2173412 lt!2173410)))

(declare-fun b!5327005 () Bool)

(assert (=> b!5327005 (= e!3308974 0)))

(assert (=> b!5327006 (= e!3308975 (forall!14408 lt!2173312 lambda!271999))))

(assert (= (and d!1710774 c!926206) b!5327004))

(assert (= (and d!1710774 (not c!926206)) b!5327005))

(assert (= (and d!1710774 res!2259452) b!5327006))

(declare-fun m!6361006 () Bool)

(assert (=> b!5327004 m!6361006))

(declare-fun m!6361008 () Bool)

(assert (=> b!5327004 m!6361008))

(declare-fun m!6361010 () Bool)

(assert (=> b!5327004 m!6361010))

(assert (=> b!5327004 m!6361006))

(assert (=> b!5327004 m!6361008))

(declare-fun m!6361012 () Bool)

(assert (=> b!5327004 m!6361012))

(declare-fun m!6361014 () Bool)

(assert (=> b!5327004 m!6361014))

(assert (=> b!5327004 m!6361008))

(declare-fun m!6361016 () Bool)

(assert (=> b!5327006 m!6361016))

(assert (=> b!5326454 d!1710774))

(declare-fun bs!1234769 () Bool)

(declare-fun b!5327009 () Bool)

(assert (= bs!1234769 (and b!5327009 b!5327004)))

(declare-fun lambda!272000 () Int)

(assert (=> bs!1234769 (= lambda!272000 lambda!271997)))

(declare-fun lt!2173415 () Int)

(declare-fun lambda!272001 () Int)

(assert (=> bs!1234769 (= (= lt!2173415 lt!2173411) (= lambda!272001 lambda!271998))))

(declare-fun bs!1234770 () Bool)

(assert (= bs!1234770 (and b!5327009 b!5327006)))

(assert (=> bs!1234770 (= (= lt!2173415 lt!2173413) (= lambda!272001 lambda!271999))))

(assert (=> b!5327009 true))

(declare-fun bs!1234771 () Bool)

(declare-fun b!5327011 () Bool)

(assert (= bs!1234771 (and b!5327011 b!5327004)))

(declare-fun lt!2173417 () Int)

(declare-fun lambda!272002 () Int)

(assert (=> bs!1234771 (= (= lt!2173417 lt!2173411) (= lambda!272002 lambda!271998))))

(declare-fun bs!1234772 () Bool)

(assert (= bs!1234772 (and b!5327011 b!5327006)))

(assert (=> bs!1234772 (= (= lt!2173417 lt!2173413) (= lambda!272002 lambda!271999))))

(declare-fun bs!1234773 () Bool)

(assert (= bs!1234773 (and b!5327011 b!5327009)))

(assert (=> bs!1234773 (= (= lt!2173417 lt!2173415) (= lambda!272002 lambda!272001))))

(assert (=> b!5327011 true))

(declare-fun d!1710792 () Bool)

(declare-fun e!3308977 () Bool)

(assert (=> d!1710792 e!3308977))

(declare-fun res!2259453 () Bool)

(assert (=> d!1710792 (=> (not res!2259453) (not e!3308977))))

(assert (=> d!1710792 (= res!2259453 (>= lt!2173417 0))))

(declare-fun e!3308976 () Int)

(assert (=> d!1710792 (= lt!2173417 e!3308976)))

(declare-fun c!926207 () Bool)

(assert (=> d!1710792 (= c!926207 ((_ is Cons!61143) zl!343))))

(assert (=> d!1710792 (= (zipperDepth!98 zl!343) lt!2173417)))

(assert (=> b!5327009 (= e!3308976 lt!2173415)))

(assert (=> b!5327009 (= lt!2173415 (maxBigInt!0 (contextDepth!55 (h!67591 zl!343)) (zipperDepth!98 (t!374482 zl!343))))))

(declare-fun lt!2173414 () Unit!153474)

(assert (=> b!5327009 (= lt!2173414 (lemmaForallContextDepthBiggerThanTransitive!49 (t!374482 zl!343) lt!2173415 (zipperDepth!98 (t!374482 zl!343)) lambda!272000))))

(assert (=> b!5327009 (forall!14408 (t!374482 zl!343) lambda!272001)))

(declare-fun lt!2173416 () Unit!153474)

(assert (=> b!5327009 (= lt!2173416 lt!2173414)))

(declare-fun b!5327010 () Bool)

(assert (=> b!5327010 (= e!3308976 0)))

(assert (=> b!5327011 (= e!3308977 (forall!14408 zl!343 lambda!272002))))

(assert (= (and d!1710792 c!926207) b!5327009))

(assert (= (and d!1710792 (not c!926207)) b!5327010))

(assert (= (and d!1710792 res!2259453) b!5327011))

(declare-fun m!6361018 () Bool)

(assert (=> b!5327009 m!6361018))

(declare-fun m!6361020 () Bool)

(assert (=> b!5327009 m!6361020))

(declare-fun m!6361022 () Bool)

(assert (=> b!5327009 m!6361022))

(assert (=> b!5327009 m!6361018))

(assert (=> b!5327009 m!6361020))

(declare-fun m!6361024 () Bool)

(assert (=> b!5327009 m!6361024))

(declare-fun m!6361026 () Bool)

(assert (=> b!5327009 m!6361026))

(assert (=> b!5327009 m!6361020))

(declare-fun m!6361028 () Bool)

(assert (=> b!5327011 m!6361028))

(assert (=> b!5326454 d!1710792))

(declare-fun d!1710794 () Bool)

(declare-fun e!3308992 () Bool)

(assert (=> d!1710794 e!3308992))

(declare-fun res!2259460 () Bool)

(assert (=> d!1710794 (=> (not res!2259460) (not e!3308992))))

(declare-fun lt!2173422 () List!61267)

(declare-fun noDuplicate!1305 (List!61267) Bool)

(assert (=> d!1710794 (= res!2259460 (noDuplicate!1305 lt!2173422))))

(declare-fun choose!39882 ((InoxSet Context!8746)) List!61267)

(assert (=> d!1710794 (= lt!2173422 (choose!39882 z!1189))))

(assert (=> d!1710794 (= (toList!8773 z!1189) lt!2173422)))

(declare-fun b!5327034 () Bool)

(declare-fun content!10905 (List!61267) (InoxSet Context!8746))

(assert (=> b!5327034 (= e!3308992 (= (content!10905 lt!2173422) z!1189))))

(assert (= (and d!1710794 res!2259460) b!5327034))

(declare-fun m!6361030 () Bool)

(assert (=> d!1710794 m!6361030))

(declare-fun m!6361032 () Bool)

(assert (=> d!1710794 m!6361032))

(declare-fun m!6361034 () Bool)

(assert (=> b!5327034 m!6361034))

(assert (=> b!5326464 d!1710794))

(declare-fun d!1710796 () Bool)

(declare-fun lt!2173426 () Int)

(assert (=> d!1710796 (>= lt!2173426 0)))

(declare-fun e!3309001 () Int)

(assert (=> d!1710796 (= lt!2173426 e!3309001)))

(declare-fun c!926223 () Bool)

(assert (=> d!1710796 (= c!926223 ((_ is Cons!61142) (exprs!4873 lt!2173302)))))

(assert (=> d!1710796 (= (contextDepthTotal!122 lt!2173302) lt!2173426)))

(declare-fun b!5327049 () Bool)

(declare-fun regexDepthTotal!55 (Regex!14989) Int)

(assert (=> b!5327049 (= e!3309001 (+ (regexDepthTotal!55 (h!67590 (exprs!4873 lt!2173302))) (contextDepthTotal!122 (Context!8747 (t!374481 (exprs!4873 lt!2173302))))))))

(declare-fun b!5327050 () Bool)

(assert (=> b!5327050 (= e!3309001 1)))

(assert (= (and d!1710796 c!926223) b!5327049))

(assert (= (and d!1710796 (not c!926223)) b!5327050))

(declare-fun m!6361056 () Bool)

(assert (=> b!5327049 m!6361056))

(declare-fun m!6361058 () Bool)

(assert (=> b!5327049 m!6361058))

(assert (=> b!5326443 d!1710796))

(declare-fun d!1710800 () Bool)

(declare-fun lt!2173427 () Int)

(assert (=> d!1710800 (>= lt!2173427 0)))

(declare-fun e!3309002 () Int)

(assert (=> d!1710800 (= lt!2173427 e!3309002)))

(declare-fun c!926224 () Bool)

(assert (=> d!1710800 (= c!926224 ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343))))))

(assert (=> d!1710800 (= (contextDepthTotal!122 (h!67591 zl!343)) lt!2173427)))

(declare-fun b!5327051 () Bool)

(assert (=> b!5327051 (= e!3309002 (+ (regexDepthTotal!55 (h!67590 (exprs!4873 (h!67591 zl!343)))) (contextDepthTotal!122 (Context!8747 (t!374481 (exprs!4873 (h!67591 zl!343)))))))))

(declare-fun b!5327052 () Bool)

(assert (=> b!5327052 (= e!3309002 1)))

(assert (= (and d!1710800 c!926224) b!5327051))

(assert (= (and d!1710800 (not c!926224)) b!5327052))

(declare-fun m!6361060 () Bool)

(assert (=> b!5327051 m!6361060))

(declare-fun m!6361062 () Bool)

(assert (=> b!5327051 m!6361062))

(assert (=> b!5326443 d!1710800))

(declare-fun d!1710802 () Bool)

(assert (=> d!1710802 (= (nullable!5158 (regOne!30490 (regOne!30490 r!7292))) (nullableFct!1502 (regOne!30490 (regOne!30490 r!7292))))))

(declare-fun bs!1234780 () Bool)

(assert (= bs!1234780 d!1710802))

(declare-fun m!6361064 () Bool)

(assert (=> bs!1234780 m!6361064))

(assert (=> b!5326473 d!1710802))

(declare-fun bs!1234781 () Bool)

(declare-fun d!1710804 () Bool)

(assert (= bs!1234781 (and d!1710804 b!5326458)))

(declare-fun lambda!272006 () Int)

(assert (=> bs!1234781 (= lambda!272006 lambda!271939)))

(declare-fun bs!1234782 () Bool)

(assert (= bs!1234782 (and d!1710804 d!1710734)))

(assert (=> bs!1234782 (= lambda!272006 lambda!271962)))

(assert (=> d!1710804 (= (inv!80719 setElem!34317) (forall!14407 (exprs!4873 setElem!34317) lambda!272006))))

(declare-fun bs!1234783 () Bool)

(assert (= bs!1234783 d!1710804))

(declare-fun m!6361066 () Bool)

(assert (=> bs!1234783 m!6361066))

(assert (=> setNonEmpty!34317 d!1710804))

(declare-fun d!1710806 () Bool)

(declare-fun lt!2173433 () Regex!14989)

(assert (=> d!1710806 (validRegex!6725 lt!2173433)))

(assert (=> d!1710806 (= lt!2173433 (generalisedUnion!918 (unfocusZipperList!431 zl!343)))))

(assert (=> d!1710806 (= (unfocusZipper!731 zl!343) lt!2173433)))

(declare-fun bs!1234789 () Bool)

(assert (= bs!1234789 d!1710806))

(declare-fun m!6361068 () Bool)

(assert (=> bs!1234789 m!6361068))

(assert (=> bs!1234789 m!6360570))

(assert (=> bs!1234789 m!6360570))

(assert (=> bs!1234789 m!6360572))

(assert (=> b!5326445 d!1710806))

(declare-fun d!1710808 () Bool)

(assert (=> d!1710808 (= (isEmpty!33111 (t!374482 zl!343)) ((_ is Nil!61143) (t!374482 zl!343)))))

(assert (=> b!5326444 d!1710808))

(declare-fun bs!1234795 () Bool)

(declare-fun d!1710812 () Bool)

(assert (= bs!1234795 (and d!1710812 b!5326458)))

(declare-fun lambda!272012 () Int)

(assert (=> bs!1234795 (= lambda!272012 lambda!271939)))

(declare-fun bs!1234796 () Bool)

(assert (= bs!1234796 (and d!1710812 d!1710734)))

(assert (=> bs!1234796 (= lambda!272012 lambda!271962)))

(declare-fun bs!1234797 () Bool)

(assert (= bs!1234797 (and d!1710812 d!1710804)))

(assert (=> bs!1234797 (= lambda!272012 lambda!272006)))

(declare-fun b!5327133 () Bool)

(declare-fun e!3309045 () Bool)

(declare-fun lt!2173436 () Regex!14989)

(declare-fun isConcat!408 (Regex!14989) Bool)

(assert (=> b!5327133 (= e!3309045 (isConcat!408 lt!2173436))))

(declare-fun b!5327134 () Bool)

(declare-fun e!3309042 () Regex!14989)

(declare-fun e!3309046 () Regex!14989)

(assert (=> b!5327134 (= e!3309042 e!3309046)))

(declare-fun c!926237 () Bool)

(assert (=> b!5327134 (= c!926237 ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343))))))

(declare-fun b!5327135 () Bool)

(assert (=> b!5327135 (= e!3309046 (Concat!23834 (h!67590 (exprs!4873 (h!67591 zl!343))) (generalisedConcat!658 (t!374481 (exprs!4873 (h!67591 zl!343))))))))

(declare-fun b!5327136 () Bool)

(declare-fun e!3309044 () Bool)

(assert (=> b!5327136 (= e!3309044 e!3309045)))

(declare-fun c!926239 () Bool)

(declare-fun tail!10516 (List!61266) List!61266)

(assert (=> b!5327136 (= c!926239 (isEmpty!33112 (tail!10516 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5327137 () Bool)

(declare-fun e!3309043 () Bool)

(assert (=> b!5327137 (= e!3309043 e!3309044)))

(declare-fun c!926236 () Bool)

(assert (=> b!5327137 (= c!926236 (isEmpty!33112 (exprs!4873 (h!67591 zl!343))))))

(declare-fun b!5327138 () Bool)

(assert (=> b!5327138 (= e!3309046 EmptyExpr!14989)))

(assert (=> d!1710812 e!3309043))

(declare-fun res!2259468 () Bool)

(assert (=> d!1710812 (=> (not res!2259468) (not e!3309043))))

(assert (=> d!1710812 (= res!2259468 (validRegex!6725 lt!2173436))))

(assert (=> d!1710812 (= lt!2173436 e!3309042)))

(declare-fun c!926238 () Bool)

(declare-fun e!3309041 () Bool)

(assert (=> d!1710812 (= c!926238 e!3309041)))

(declare-fun res!2259467 () Bool)

(assert (=> d!1710812 (=> (not res!2259467) (not e!3309041))))

(assert (=> d!1710812 (= res!2259467 ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343))))))

(assert (=> d!1710812 (forall!14407 (exprs!4873 (h!67591 zl!343)) lambda!272012)))

(assert (=> d!1710812 (= (generalisedConcat!658 (exprs!4873 (h!67591 zl!343))) lt!2173436)))

(declare-fun b!5327139 () Bool)

(declare-fun isEmptyExpr!885 (Regex!14989) Bool)

(assert (=> b!5327139 (= e!3309044 (isEmptyExpr!885 lt!2173436))))

(declare-fun b!5327140 () Bool)

(assert (=> b!5327140 (= e!3309042 (h!67590 (exprs!4873 (h!67591 zl!343))))))

(declare-fun b!5327141 () Bool)

(declare-fun head!11419 (List!61266) Regex!14989)

(assert (=> b!5327141 (= e!3309045 (= lt!2173436 (head!11419 (exprs!4873 (h!67591 zl!343)))))))

(declare-fun b!5327142 () Bool)

(assert (=> b!5327142 (= e!3309041 (isEmpty!33112 (t!374481 (exprs!4873 (h!67591 zl!343)))))))

(assert (= (and d!1710812 res!2259467) b!5327142))

(assert (= (and d!1710812 c!926238) b!5327140))

(assert (= (and d!1710812 (not c!926238)) b!5327134))

(assert (= (and b!5327134 c!926237) b!5327135))

(assert (= (and b!5327134 (not c!926237)) b!5327138))

(assert (= (and d!1710812 res!2259468) b!5327137))

(assert (= (and b!5327137 c!926236) b!5327139))

(assert (= (and b!5327137 (not c!926236)) b!5327136))

(assert (= (and b!5327136 c!926239) b!5327141))

(assert (= (and b!5327136 (not c!926239)) b!5327133))

(declare-fun m!6361080 () Bool)

(assert (=> b!5327137 m!6361080))

(assert (=> b!5327142 m!6360568))

(declare-fun m!6361082 () Bool)

(assert (=> b!5327133 m!6361082))

(declare-fun m!6361084 () Bool)

(assert (=> b!5327141 m!6361084))

(declare-fun m!6361086 () Bool)

(assert (=> d!1710812 m!6361086))

(declare-fun m!6361088 () Bool)

(assert (=> d!1710812 m!6361088))

(declare-fun m!6361090 () Bool)

(assert (=> b!5327139 m!6361090))

(declare-fun m!6361092 () Bool)

(assert (=> b!5327135 m!6361092))

(declare-fun m!6361094 () Bool)

(assert (=> b!5327136 m!6361094))

(assert (=> b!5327136 m!6361094))

(declare-fun m!6361096 () Bool)

(assert (=> b!5327136 m!6361096))

(assert (=> b!5326455 d!1710812))

(declare-fun bs!1234798 () Bool)

(declare-fun d!1710820 () Bool)

(assert (= bs!1234798 (and d!1710820 b!5326458)))

(declare-fun lambda!272015 () Int)

(assert (=> bs!1234798 (= lambda!272015 lambda!271939)))

(declare-fun bs!1234799 () Bool)

(assert (= bs!1234799 (and d!1710820 d!1710734)))

(assert (=> bs!1234799 (= lambda!272015 lambda!271962)))

(declare-fun bs!1234800 () Bool)

(assert (= bs!1234800 (and d!1710820 d!1710804)))

(assert (=> bs!1234800 (= lambda!272015 lambda!272006)))

(declare-fun bs!1234801 () Bool)

(assert (= bs!1234801 (and d!1710820 d!1710812)))

(assert (=> bs!1234801 (= lambda!272015 lambda!272012)))

(declare-fun b!5327163 () Bool)

(declare-fun e!3309063 () Bool)

(declare-fun lt!2173439 () Regex!14989)

(declare-fun isUnion!324 (Regex!14989) Bool)

(assert (=> b!5327163 (= e!3309063 (isUnion!324 lt!2173439))))

(declare-fun b!5327164 () Bool)

(assert (=> b!5327164 (= e!3309063 (= lt!2173439 (head!11419 (unfocusZipperList!431 zl!343))))))

(declare-fun b!5327165 () Bool)

(declare-fun e!3309061 () Bool)

(declare-fun isEmptyLang!892 (Regex!14989) Bool)

(assert (=> b!5327165 (= e!3309061 (isEmptyLang!892 lt!2173439))))

(declare-fun b!5327166 () Bool)

(declare-fun e!3309064 () Bool)

(assert (=> b!5327166 (= e!3309064 e!3309061)))

(declare-fun c!926248 () Bool)

(assert (=> b!5327166 (= c!926248 (isEmpty!33112 (unfocusZipperList!431 zl!343)))))

(declare-fun b!5327167 () Bool)

(declare-fun e!3309062 () Regex!14989)

(declare-fun e!3309059 () Regex!14989)

(assert (=> b!5327167 (= e!3309062 e!3309059)))

(declare-fun c!926251 () Bool)

(assert (=> b!5327167 (= c!926251 ((_ is Cons!61142) (unfocusZipperList!431 zl!343)))))

(assert (=> d!1710820 e!3309064))

(declare-fun res!2259473 () Bool)

(assert (=> d!1710820 (=> (not res!2259473) (not e!3309064))))

(assert (=> d!1710820 (= res!2259473 (validRegex!6725 lt!2173439))))

(assert (=> d!1710820 (= lt!2173439 e!3309062)))

(declare-fun c!926249 () Bool)

(declare-fun e!3309060 () Bool)

(assert (=> d!1710820 (= c!926249 e!3309060)))

(declare-fun res!2259474 () Bool)

(assert (=> d!1710820 (=> (not res!2259474) (not e!3309060))))

(assert (=> d!1710820 (= res!2259474 ((_ is Cons!61142) (unfocusZipperList!431 zl!343)))))

(assert (=> d!1710820 (forall!14407 (unfocusZipperList!431 zl!343) lambda!272015)))

(assert (=> d!1710820 (= (generalisedUnion!918 (unfocusZipperList!431 zl!343)) lt!2173439)))

(declare-fun b!5327168 () Bool)

(assert (=> b!5327168 (= e!3309059 EmptyLang!14989)))

(declare-fun b!5327169 () Bool)

(assert (=> b!5327169 (= e!3309061 e!3309063)))

(declare-fun c!926250 () Bool)

(assert (=> b!5327169 (= c!926250 (isEmpty!33112 (tail!10516 (unfocusZipperList!431 zl!343))))))

(declare-fun b!5327170 () Bool)

(assert (=> b!5327170 (= e!3309060 (isEmpty!33112 (t!374481 (unfocusZipperList!431 zl!343))))))

(declare-fun b!5327171 () Bool)

(assert (=> b!5327171 (= e!3309062 (h!67590 (unfocusZipperList!431 zl!343)))))

(declare-fun b!5327172 () Bool)

(assert (=> b!5327172 (= e!3309059 (Union!14989 (h!67590 (unfocusZipperList!431 zl!343)) (generalisedUnion!918 (t!374481 (unfocusZipperList!431 zl!343)))))))

(assert (= (and d!1710820 res!2259474) b!5327170))

(assert (= (and d!1710820 c!926249) b!5327171))

(assert (= (and d!1710820 (not c!926249)) b!5327167))

(assert (= (and b!5327167 c!926251) b!5327172))

(assert (= (and b!5327167 (not c!926251)) b!5327168))

(assert (= (and d!1710820 res!2259473) b!5327166))

(assert (= (and b!5327166 c!926248) b!5327165))

(assert (= (and b!5327166 (not c!926248)) b!5327169))

(assert (= (and b!5327169 c!926250) b!5327164))

(assert (= (and b!5327169 (not c!926250)) b!5327163))

(assert (=> b!5327166 m!6360570))

(declare-fun m!6361098 () Bool)

(assert (=> b!5327166 m!6361098))

(declare-fun m!6361100 () Bool)

(assert (=> b!5327172 m!6361100))

(declare-fun m!6361102 () Bool)

(assert (=> b!5327165 m!6361102))

(assert (=> b!5327169 m!6360570))

(declare-fun m!6361104 () Bool)

(assert (=> b!5327169 m!6361104))

(assert (=> b!5327169 m!6361104))

(declare-fun m!6361106 () Bool)

(assert (=> b!5327169 m!6361106))

(declare-fun m!6361108 () Bool)

(assert (=> d!1710820 m!6361108))

(assert (=> d!1710820 m!6360570))

(declare-fun m!6361110 () Bool)

(assert (=> d!1710820 m!6361110))

(assert (=> b!5327164 m!6360570))

(declare-fun m!6361112 () Bool)

(assert (=> b!5327164 m!6361112))

(declare-fun m!6361114 () Bool)

(assert (=> b!5327170 m!6361114))

(declare-fun m!6361116 () Bool)

(assert (=> b!5327163 m!6361116))

(assert (=> b!5326446 d!1710820))

(declare-fun bs!1234802 () Bool)

(declare-fun d!1710822 () Bool)

(assert (= bs!1234802 (and d!1710822 b!5326458)))

(declare-fun lambda!272018 () Int)

(assert (=> bs!1234802 (= lambda!272018 lambda!271939)))

(declare-fun bs!1234803 () Bool)

(assert (= bs!1234803 (and d!1710822 d!1710820)))

(assert (=> bs!1234803 (= lambda!272018 lambda!272015)))

(declare-fun bs!1234804 () Bool)

(assert (= bs!1234804 (and d!1710822 d!1710812)))

(assert (=> bs!1234804 (= lambda!272018 lambda!272012)))

(declare-fun bs!1234805 () Bool)

(assert (= bs!1234805 (and d!1710822 d!1710734)))

(assert (=> bs!1234805 (= lambda!272018 lambda!271962)))

(declare-fun bs!1234806 () Bool)

(assert (= bs!1234806 (and d!1710822 d!1710804)))

(assert (=> bs!1234806 (= lambda!272018 lambda!272006)))

(declare-fun lt!2173442 () List!61266)

(assert (=> d!1710822 (forall!14407 lt!2173442 lambda!272018)))

(declare-fun e!3309067 () List!61266)

(assert (=> d!1710822 (= lt!2173442 e!3309067)))

(declare-fun c!926254 () Bool)

(assert (=> d!1710822 (= c!926254 ((_ is Cons!61143) zl!343))))

(assert (=> d!1710822 (= (unfocusZipperList!431 zl!343) lt!2173442)))

(declare-fun b!5327177 () Bool)

(assert (=> b!5327177 (= e!3309067 (Cons!61142 (generalisedConcat!658 (exprs!4873 (h!67591 zl!343))) (unfocusZipperList!431 (t!374482 zl!343))))))

(declare-fun b!5327178 () Bool)

(assert (=> b!5327178 (= e!3309067 Nil!61142)))

(assert (= (and d!1710822 c!926254) b!5327177))

(assert (= (and d!1710822 (not c!926254)) b!5327178))

(declare-fun m!6361118 () Bool)

(assert (=> d!1710822 m!6361118))

(assert (=> b!5327177 m!6360558))

(declare-fun m!6361120 () Bool)

(assert (=> b!5327177 m!6361120))

(assert (=> b!5326446 d!1710822))

(declare-fun b!5327197 () Bool)

(declare-fun e!3309086 () Bool)

(declare-fun call!380608 () Bool)

(assert (=> b!5327197 (= e!3309086 call!380608)))

(declare-fun b!5327198 () Bool)

(declare-fun e!3309088 () Bool)

(declare-fun call!380610 () Bool)

(assert (=> b!5327198 (= e!3309088 call!380610)))

(declare-fun d!1710824 () Bool)

(declare-fun res!2259485 () Bool)

(declare-fun e!3309085 () Bool)

(assert (=> d!1710824 (=> res!2259485 e!3309085)))

(assert (=> d!1710824 (= res!2259485 ((_ is ElementMatch!14989) r!7292))))

(assert (=> d!1710824 (= (validRegex!6725 r!7292) e!3309085)))

(declare-fun b!5327199 () Bool)

(declare-fun e!3309084 () Bool)

(assert (=> b!5327199 (= e!3309084 e!3309088)))

(declare-fun res!2259489 () Bool)

(assert (=> b!5327199 (= res!2259489 (not (nullable!5158 (reg!15318 r!7292))))))

(assert (=> b!5327199 (=> (not res!2259489) (not e!3309088))))

(declare-fun b!5327200 () Bool)

(declare-fun e!3309083 () Bool)

(declare-fun e!3309082 () Bool)

(assert (=> b!5327200 (= e!3309083 e!3309082)))

(declare-fun res!2259488 () Bool)

(assert (=> b!5327200 (=> (not res!2259488) (not e!3309082))))

(declare-fun call!380609 () Bool)

(assert (=> b!5327200 (= res!2259488 call!380609)))

(declare-fun c!926259 () Bool)

(declare-fun c!926260 () Bool)

(declare-fun bm!380603 () Bool)

(assert (=> bm!380603 (= call!380610 (validRegex!6725 (ite c!926260 (reg!15318 r!7292) (ite c!926259 (regTwo!30491 r!7292) (regTwo!30490 r!7292)))))))

(declare-fun bm!380604 () Bool)

(assert (=> bm!380604 (= call!380608 call!380610)))

(declare-fun b!5327201 () Bool)

(assert (=> b!5327201 (= e!3309082 call!380608)))

(declare-fun bm!380605 () Bool)

(assert (=> bm!380605 (= call!380609 (validRegex!6725 (ite c!926259 (regOne!30491 r!7292) (regOne!30490 r!7292))))))

(declare-fun b!5327202 () Bool)

(declare-fun res!2259486 () Bool)

(assert (=> b!5327202 (=> res!2259486 e!3309083)))

(assert (=> b!5327202 (= res!2259486 (not ((_ is Concat!23834) r!7292)))))

(declare-fun e!3309087 () Bool)

(assert (=> b!5327202 (= e!3309087 e!3309083)))

(declare-fun b!5327203 () Bool)

(declare-fun res!2259487 () Bool)

(assert (=> b!5327203 (=> (not res!2259487) (not e!3309086))))

(assert (=> b!5327203 (= res!2259487 call!380609)))

(assert (=> b!5327203 (= e!3309087 e!3309086)))

(declare-fun b!5327204 () Bool)

(assert (=> b!5327204 (= e!3309084 e!3309087)))

(assert (=> b!5327204 (= c!926259 ((_ is Union!14989) r!7292))))

(declare-fun b!5327205 () Bool)

(assert (=> b!5327205 (= e!3309085 e!3309084)))

(assert (=> b!5327205 (= c!926260 ((_ is Star!14989) r!7292))))

(assert (= (and d!1710824 (not res!2259485)) b!5327205))

(assert (= (and b!5327205 c!926260) b!5327199))

(assert (= (and b!5327205 (not c!926260)) b!5327204))

(assert (= (and b!5327199 res!2259489) b!5327198))

(assert (= (and b!5327204 c!926259) b!5327203))

(assert (= (and b!5327204 (not c!926259)) b!5327202))

(assert (= (and b!5327203 res!2259487) b!5327197))

(assert (= (and b!5327202 (not res!2259486)) b!5327200))

(assert (= (and b!5327200 res!2259488) b!5327201))

(assert (= (or b!5327197 b!5327201) bm!380604))

(assert (= (or b!5327203 b!5327200) bm!380605))

(assert (= (or b!5327198 bm!380604) bm!380603))

(declare-fun m!6361122 () Bool)

(assert (=> b!5327199 m!6361122))

(declare-fun m!6361124 () Bool)

(assert (=> bm!380603 m!6361124))

(declare-fun m!6361126 () Bool)

(assert (=> bm!380605 m!6361126))

(assert (=> start!561466 d!1710824))

(declare-fun b!5327224 () Bool)

(declare-fun res!2259500 () Bool)

(declare-fun e!3309100 () Bool)

(assert (=> b!5327224 (=> (not res!2259500) (not e!3309100))))

(declare-fun lt!2173450 () Option!15100)

(declare-fun get!21030 (Option!15100) tuple2!64376)

(assert (=> b!5327224 (= res!2259500 (matchR!7174 lt!2173315 (_2!35491 (get!21030 lt!2173450))))))

(declare-fun d!1710826 () Bool)

(declare-fun e!3309102 () Bool)

(assert (=> d!1710826 e!3309102))

(declare-fun res!2259503 () Bool)

(assert (=> d!1710826 (=> res!2259503 e!3309102)))

(assert (=> d!1710826 (= res!2259503 e!3309100)))

(declare-fun res!2259502 () Bool)

(assert (=> d!1710826 (=> (not res!2259502) (not e!3309100))))

(assert (=> d!1710826 (= res!2259502 (isDefined!11803 lt!2173450))))

(declare-fun e!3309103 () Option!15100)

(assert (=> d!1710826 (= lt!2173450 e!3309103)))

(declare-fun c!926265 () Bool)

(declare-fun e!3309099 () Bool)

(assert (=> d!1710826 (= c!926265 e!3309099)))

(declare-fun res!2259501 () Bool)

(assert (=> d!1710826 (=> (not res!2259501) (not e!3309099))))

(assert (=> d!1710826 (= res!2259501 (matchR!7174 (regOne!30490 (regOne!30490 r!7292)) Nil!61144))))

(assert (=> d!1710826 (validRegex!6725 (regOne!30490 (regOne!30490 r!7292)))))

(assert (=> d!1710826 (= (findConcatSeparation!1514 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 Nil!61144 s!2326 s!2326) lt!2173450)))

(declare-fun b!5327225 () Bool)

(declare-fun lt!2173449 () Unit!153474)

(declare-fun lt!2173451 () Unit!153474)

(assert (=> b!5327225 (= lt!2173449 lt!2173451)))

(declare-fun ++!13330 (List!61268 List!61268) List!61268)

(assert (=> b!5327225 (= (++!13330 (++!13330 Nil!61144 (Cons!61144 (h!67592 s!2326) Nil!61144)) (t!374483 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1745 (List!61268 C!30248 List!61268 List!61268) Unit!153474)

(assert (=> b!5327225 (= lt!2173451 (lemmaMoveElementToOtherListKeepsConcatEq!1745 Nil!61144 (h!67592 s!2326) (t!374483 s!2326) s!2326))))

(declare-fun e!3309101 () Option!15100)

(assert (=> b!5327225 (= e!3309101 (findConcatSeparation!1514 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 (++!13330 Nil!61144 (Cons!61144 (h!67592 s!2326) Nil!61144)) (t!374483 s!2326) s!2326))))

(declare-fun b!5327226 () Bool)

(assert (=> b!5327226 (= e!3309103 e!3309101)))

(declare-fun c!926266 () Bool)

(assert (=> b!5327226 (= c!926266 ((_ is Nil!61144) s!2326))))

(declare-fun b!5327227 () Bool)

(assert (=> b!5327227 (= e!3309101 None!15099)))

(declare-fun b!5327228 () Bool)

(assert (=> b!5327228 (= e!3309102 (not (isDefined!11803 lt!2173450)))))

(declare-fun b!5327229 () Bool)

(assert (=> b!5327229 (= e!3309100 (= (++!13330 (_1!35491 (get!21030 lt!2173450)) (_2!35491 (get!21030 lt!2173450))) s!2326))))

(declare-fun b!5327230 () Bool)

(assert (=> b!5327230 (= e!3309099 (matchR!7174 lt!2173315 s!2326))))

(declare-fun b!5327231 () Bool)

(declare-fun res!2259504 () Bool)

(assert (=> b!5327231 (=> (not res!2259504) (not e!3309100))))

(assert (=> b!5327231 (= res!2259504 (matchR!7174 (regOne!30490 (regOne!30490 r!7292)) (_1!35491 (get!21030 lt!2173450))))))

(declare-fun b!5327232 () Bool)

(assert (=> b!5327232 (= e!3309103 (Some!15099 (tuple2!64377 Nil!61144 s!2326)))))

(assert (= (and d!1710826 res!2259501) b!5327230))

(assert (= (and d!1710826 c!926265) b!5327232))

(assert (= (and d!1710826 (not c!926265)) b!5327226))

(assert (= (and b!5327226 c!926266) b!5327227))

(assert (= (and b!5327226 (not c!926266)) b!5327225))

(assert (= (and d!1710826 res!2259502) b!5327231))

(assert (= (and b!5327231 res!2259504) b!5327224))

(assert (= (and b!5327224 res!2259500) b!5327229))

(assert (= (and d!1710826 (not res!2259503)) b!5327228))

(declare-fun m!6361128 () Bool)

(assert (=> b!5327225 m!6361128))

(assert (=> b!5327225 m!6361128))

(declare-fun m!6361130 () Bool)

(assert (=> b!5327225 m!6361130))

(declare-fun m!6361132 () Bool)

(assert (=> b!5327225 m!6361132))

(assert (=> b!5327225 m!6361128))

(declare-fun m!6361134 () Bool)

(assert (=> b!5327225 m!6361134))

(declare-fun m!6361136 () Bool)

(assert (=> b!5327230 m!6361136))

(declare-fun m!6361138 () Bool)

(assert (=> b!5327224 m!6361138))

(declare-fun m!6361140 () Bool)

(assert (=> b!5327224 m!6361140))

(assert (=> b!5327231 m!6361138))

(declare-fun m!6361142 () Bool)

(assert (=> b!5327231 m!6361142))

(declare-fun m!6361144 () Bool)

(assert (=> b!5327228 m!6361144))

(assert (=> d!1710826 m!6361144))

(declare-fun m!6361146 () Bool)

(assert (=> d!1710826 m!6361146))

(declare-fun m!6361148 () Bool)

(assert (=> d!1710826 m!6361148))

(assert (=> b!5327229 m!6361138))

(declare-fun m!6361150 () Bool)

(assert (=> b!5327229 m!6361150))

(assert (=> b!5326458 d!1710826))

(declare-fun d!1710828 () Bool)

(assert (=> d!1710828 (= (matchR!7174 lt!2173298 s!2326) (matchZipper!1233 lt!2173297 s!2326))))

(declare-fun lt!2173454 () Unit!153474)

(declare-fun choose!39884 ((InoxSet Context!8746) List!61267 Regex!14989 List!61268) Unit!153474)

(assert (=> d!1710828 (= lt!2173454 (choose!39884 lt!2173297 lt!2173312 lt!2173298 s!2326))))

(assert (=> d!1710828 (validRegex!6725 lt!2173298)))

(assert (=> d!1710828 (= (theoremZipperRegexEquiv!387 lt!2173297 lt!2173312 lt!2173298 s!2326) lt!2173454)))

(declare-fun bs!1234807 () Bool)

(assert (= bs!1234807 d!1710828))

(assert (=> bs!1234807 m!6360494))

(assert (=> bs!1234807 m!6360502))

(declare-fun m!6361152 () Bool)

(assert (=> bs!1234807 m!6361152))

(declare-fun m!6361154 () Bool)

(assert (=> bs!1234807 m!6361154))

(assert (=> b!5326458 d!1710828))

(declare-fun d!1710830 () Bool)

(declare-fun c!926267 () Bool)

(assert (=> d!1710830 (= c!926267 (isEmpty!33115 s!2326))))

(declare-fun e!3309104 () Bool)

(assert (=> d!1710830 (= (matchZipper!1233 lt!2173297 s!2326) e!3309104)))

(declare-fun b!5327233 () Bool)

(assert (=> b!5327233 (= e!3309104 (nullableZipper!1350 lt!2173297))))

(declare-fun b!5327234 () Bool)

(assert (=> b!5327234 (= e!3309104 (matchZipper!1233 (derivationStepZipper!1230 lt!2173297 (head!11418 s!2326)) (tail!10515 s!2326)))))

(assert (= (and d!1710830 c!926267) b!5327233))

(assert (= (and d!1710830 (not c!926267)) b!5327234))

(assert (=> d!1710830 m!6360924))

(declare-fun m!6361156 () Bool)

(assert (=> b!5327233 m!6361156))

(assert (=> b!5327234 m!6360958))

(assert (=> b!5327234 m!6360958))

(declare-fun m!6361158 () Bool)

(assert (=> b!5327234 m!6361158))

(assert (=> b!5327234 m!6360962))

(assert (=> b!5327234 m!6361158))

(assert (=> b!5327234 m!6360962))

(declare-fun m!6361160 () Bool)

(assert (=> b!5327234 m!6361160))

(assert (=> b!5326458 d!1710830))

(declare-fun bs!1234808 () Bool)

(declare-fun d!1710832 () Bool)

(assert (= bs!1234808 (and d!1710832 b!5326458)))

(declare-fun lambda!272019 () Int)

(assert (=> bs!1234808 (= lambda!272019 lambda!271939)))

(declare-fun bs!1234809 () Bool)

(assert (= bs!1234809 (and d!1710832 d!1710820)))

(assert (=> bs!1234809 (= lambda!272019 lambda!272015)))

(declare-fun bs!1234810 () Bool)

(assert (= bs!1234810 (and d!1710832 d!1710822)))

(assert (=> bs!1234810 (= lambda!272019 lambda!272018)))

(declare-fun bs!1234811 () Bool)

(assert (= bs!1234811 (and d!1710832 d!1710812)))

(assert (=> bs!1234811 (= lambda!272019 lambda!272012)))

(declare-fun bs!1234812 () Bool)

(assert (= bs!1234812 (and d!1710832 d!1710734)))

(assert (=> bs!1234812 (= lambda!272019 lambda!271962)))

(declare-fun bs!1234813 () Bool)

(assert (= bs!1234813 (and d!1710832 d!1710804)))

(assert (=> bs!1234813 (= lambda!272019 lambda!272006)))

(declare-fun b!5327235 () Bool)

(declare-fun e!3309109 () Bool)

(declare-fun lt!2173455 () Regex!14989)

(assert (=> b!5327235 (= e!3309109 (isConcat!408 lt!2173455))))

(declare-fun b!5327236 () Bool)

(declare-fun e!3309106 () Regex!14989)

(declare-fun e!3309110 () Regex!14989)

(assert (=> b!5327236 (= e!3309106 e!3309110)))

(declare-fun c!926269 () Bool)

(assert (=> b!5327236 (= c!926269 ((_ is Cons!61142) lt!2173299))))

(declare-fun b!5327237 () Bool)

(assert (=> b!5327237 (= e!3309110 (Concat!23834 (h!67590 lt!2173299) (generalisedConcat!658 (t!374481 lt!2173299))))))

(declare-fun b!5327238 () Bool)

(declare-fun e!3309108 () Bool)

(assert (=> b!5327238 (= e!3309108 e!3309109)))

(declare-fun c!926271 () Bool)

(assert (=> b!5327238 (= c!926271 (isEmpty!33112 (tail!10516 lt!2173299)))))

(declare-fun b!5327239 () Bool)

(declare-fun e!3309107 () Bool)

(assert (=> b!5327239 (= e!3309107 e!3309108)))

(declare-fun c!926268 () Bool)

(assert (=> b!5327239 (= c!926268 (isEmpty!33112 lt!2173299))))

(declare-fun b!5327240 () Bool)

(assert (=> b!5327240 (= e!3309110 EmptyExpr!14989)))

(assert (=> d!1710832 e!3309107))

(declare-fun res!2259506 () Bool)

(assert (=> d!1710832 (=> (not res!2259506) (not e!3309107))))

(assert (=> d!1710832 (= res!2259506 (validRegex!6725 lt!2173455))))

(assert (=> d!1710832 (= lt!2173455 e!3309106)))

(declare-fun c!926270 () Bool)

(declare-fun e!3309105 () Bool)

(assert (=> d!1710832 (= c!926270 e!3309105)))

(declare-fun res!2259505 () Bool)

(assert (=> d!1710832 (=> (not res!2259505) (not e!3309105))))

(assert (=> d!1710832 (= res!2259505 ((_ is Cons!61142) lt!2173299))))

(assert (=> d!1710832 (forall!14407 lt!2173299 lambda!272019)))

(assert (=> d!1710832 (= (generalisedConcat!658 lt!2173299) lt!2173455)))

(declare-fun b!5327241 () Bool)

(assert (=> b!5327241 (= e!3309108 (isEmptyExpr!885 lt!2173455))))

(declare-fun b!5327242 () Bool)

(assert (=> b!5327242 (= e!3309106 (h!67590 lt!2173299))))

(declare-fun b!5327243 () Bool)

(assert (=> b!5327243 (= e!3309109 (= lt!2173455 (head!11419 lt!2173299)))))

(declare-fun b!5327244 () Bool)

(assert (=> b!5327244 (= e!3309105 (isEmpty!33112 (t!374481 lt!2173299)))))

(assert (= (and d!1710832 res!2259505) b!5327244))

(assert (= (and d!1710832 c!926270) b!5327242))

(assert (= (and d!1710832 (not c!926270)) b!5327236))

(assert (= (and b!5327236 c!926269) b!5327237))

(assert (= (and b!5327236 (not c!926269)) b!5327240))

(assert (= (and d!1710832 res!2259506) b!5327239))

(assert (= (and b!5327239 c!926268) b!5327241))

(assert (= (and b!5327239 (not c!926268)) b!5327238))

(assert (= (and b!5327238 c!926271) b!5327243))

(assert (= (and b!5327238 (not c!926271)) b!5327235))

(declare-fun m!6361162 () Bool)

(assert (=> b!5327239 m!6361162))

(declare-fun m!6361164 () Bool)

(assert (=> b!5327244 m!6361164))

(declare-fun m!6361166 () Bool)

(assert (=> b!5327235 m!6361166))

(declare-fun m!6361168 () Bool)

(assert (=> b!5327243 m!6361168))

(declare-fun m!6361170 () Bool)

(assert (=> d!1710832 m!6361170))

(declare-fun m!6361172 () Bool)

(assert (=> d!1710832 m!6361172))

(declare-fun m!6361174 () Bool)

(assert (=> b!5327241 m!6361174))

(declare-fun m!6361176 () Bool)

(assert (=> b!5327237 m!6361176))

(declare-fun m!6361178 () Bool)

(assert (=> b!5327238 m!6361178))

(assert (=> b!5327238 m!6361178))

(declare-fun m!6361180 () Bool)

(assert (=> b!5327238 m!6361180))

(assert (=> b!5326458 d!1710832))

(declare-fun bs!1234814 () Bool)

(declare-fun d!1710834 () Bool)

(assert (= bs!1234814 (and d!1710834 b!5326458)))

(declare-fun lambda!272022 () Int)

(assert (=> bs!1234814 (= lambda!272022 lambda!271938)))

(declare-fun bs!1234815 () Bool)

(assert (= bs!1234815 (and d!1710834 b!5326447)))

(assert (=> bs!1234815 (= (and (= (regOne!30490 (regOne!30490 r!7292)) (regOne!30490 r!7292)) (= lt!2173315 (regTwo!30490 r!7292))) (= lambda!272022 lambda!271935))))

(assert (=> bs!1234815 (not (= lambda!272022 lambda!271936))))

(declare-fun bs!1234816 () Bool)

(assert (= bs!1234816 (and d!1710834 b!5326884)))

(assert (=> bs!1234816 (not (= lambda!272022 lambda!271974))))

(declare-fun bs!1234817 () Bool)

(assert (= bs!1234817 (and d!1710834 b!5326876)))

(assert (=> bs!1234817 (not (= lambda!272022 lambda!271973))))

(assert (=> d!1710834 true))

(assert (=> d!1710834 true))

(assert (=> d!1710834 true))

(assert (=> d!1710834 (= (isDefined!11803 (findConcatSeparation!1514 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 Nil!61144 s!2326 s!2326)) (Exists!2170 lambda!272022))))

(declare-fun lt!2173458 () Unit!153474)

(declare-fun choose!39885 (Regex!14989 Regex!14989 List!61268) Unit!153474)

(assert (=> d!1710834 (= lt!2173458 (choose!39885 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 s!2326))))

(assert (=> d!1710834 (validRegex!6725 (regOne!30490 (regOne!30490 r!7292)))))

(assert (=> d!1710834 (= (lemmaFindConcatSeparationEquivalentToExists!1278 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 s!2326) lt!2173458)))

(declare-fun bs!1234818 () Bool)

(assert (= bs!1234818 d!1710834))

(assert (=> bs!1234818 m!6360490))

(assert (=> bs!1234818 m!6360498))

(assert (=> bs!1234818 m!6361148))

(assert (=> bs!1234818 m!6360490))

(declare-fun m!6361182 () Bool)

(assert (=> bs!1234818 m!6361182))

(declare-fun m!6361184 () Bool)

(assert (=> bs!1234818 m!6361184))

(assert (=> b!5326458 d!1710834))

(declare-fun d!1710836 () Bool)

(declare-fun res!2259515 () Bool)

(declare-fun e!3309117 () Bool)

(assert (=> d!1710836 (=> res!2259515 e!3309117)))

(assert (=> d!1710836 (= res!2259515 ((_ is Nil!61142) lt!2173306))))

(assert (=> d!1710836 (= (forall!14407 lt!2173306 lambda!271939) e!3309117)))

(declare-fun b!5327253 () Bool)

(declare-fun e!3309118 () Bool)

(assert (=> b!5327253 (= e!3309117 e!3309118)))

(declare-fun res!2259516 () Bool)

(assert (=> b!5327253 (=> (not res!2259516) (not e!3309118))))

(declare-fun dynLambda!24179 (Int Regex!14989) Bool)

(assert (=> b!5327253 (= res!2259516 (dynLambda!24179 lambda!271939 (h!67590 lt!2173306)))))

(declare-fun b!5327254 () Bool)

(assert (=> b!5327254 (= e!3309118 (forall!14407 (t!374481 lt!2173306) lambda!271939))))

(assert (= (and d!1710836 (not res!2259515)) b!5327253))

(assert (= (and b!5327253 res!2259516) b!5327254))

(declare-fun b_lambda!204923 () Bool)

(assert (=> (not b_lambda!204923) (not b!5327253)))

(declare-fun m!6361186 () Bool)

(assert (=> b!5327253 m!6361186))

(declare-fun m!6361188 () Bool)

(assert (=> b!5327254 m!6361188))

(assert (=> b!5326458 d!1710836))

(declare-fun d!1710838 () Bool)

(declare-fun choose!39886 (Int) Bool)

(assert (=> d!1710838 (= (Exists!2170 lambda!271938) (choose!39886 lambda!271938))))

(declare-fun bs!1234819 () Bool)

(assert (= bs!1234819 d!1710838))

(declare-fun m!6361190 () Bool)

(assert (=> bs!1234819 m!6361190))

(assert (=> b!5326458 d!1710838))

(declare-fun d!1710840 () Bool)

(declare-fun isEmpty!33116 (Option!15100) Bool)

(assert (=> d!1710840 (= (isDefined!11803 (findConcatSeparation!1514 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 Nil!61144 s!2326 s!2326)) (not (isEmpty!33116 (findConcatSeparation!1514 (regOne!30490 (regOne!30490 r!7292)) lt!2173315 Nil!61144 s!2326 s!2326))))))

(declare-fun bs!1234820 () Bool)

(assert (= bs!1234820 d!1710840))

(assert (=> bs!1234820 m!6360490))

(declare-fun m!6361192 () Bool)

(assert (=> bs!1234820 m!6361192))

(assert (=> b!5326458 d!1710840))

(declare-fun b!5327255 () Bool)

(declare-fun res!2259524 () Bool)

(declare-fun e!3309125 () Bool)

(assert (=> b!5327255 (=> (not res!2259524) (not e!3309125))))

(declare-fun call!380611 () Bool)

(assert (=> b!5327255 (= res!2259524 (not call!380611))))

(declare-fun b!5327256 () Bool)

(assert (=> b!5327256 (= e!3309125 (= (head!11418 s!2326) (c!926025 lt!2173298)))))

(declare-fun b!5327257 () Bool)

(declare-fun res!2259521 () Bool)

(declare-fun e!3309123 () Bool)

(assert (=> b!5327257 (=> res!2259521 e!3309123)))

(assert (=> b!5327257 (= res!2259521 (not (isEmpty!33115 (tail!10515 s!2326))))))

(declare-fun b!5327258 () Bool)

(declare-fun e!3309121 () Bool)

(assert (=> b!5327258 (= e!3309121 (matchR!7174 (derivativeStep!4170 lt!2173298 (head!11418 s!2326)) (tail!10515 s!2326)))))

(declare-fun b!5327259 () Bool)

(declare-fun e!3309122 () Bool)

(declare-fun e!3309124 () Bool)

(assert (=> b!5327259 (= e!3309122 e!3309124)))

(declare-fun c!926273 () Bool)

(assert (=> b!5327259 (= c!926273 ((_ is EmptyLang!14989) lt!2173298))))

(declare-fun b!5327260 () Bool)

(declare-fun res!2259518 () Bool)

(declare-fun e!3309120 () Bool)

(assert (=> b!5327260 (=> res!2259518 e!3309120)))

(assert (=> b!5327260 (= res!2259518 (not ((_ is ElementMatch!14989) lt!2173298)))))

(assert (=> b!5327260 (= e!3309124 e!3309120)))

(declare-fun d!1710842 () Bool)

(assert (=> d!1710842 e!3309122))

(declare-fun c!926274 () Bool)

(assert (=> d!1710842 (= c!926274 ((_ is EmptyExpr!14989) lt!2173298))))

(declare-fun lt!2173459 () Bool)

(assert (=> d!1710842 (= lt!2173459 e!3309121)))

(declare-fun c!926272 () Bool)

(assert (=> d!1710842 (= c!926272 (isEmpty!33115 s!2326))))

(assert (=> d!1710842 (validRegex!6725 lt!2173298)))

(assert (=> d!1710842 (= (matchR!7174 lt!2173298 s!2326) lt!2173459)))

(declare-fun bm!380606 () Bool)

(assert (=> bm!380606 (= call!380611 (isEmpty!33115 s!2326))))

(declare-fun b!5327261 () Bool)

(assert (=> b!5327261 (= e!3309123 (not (= (head!11418 s!2326) (c!926025 lt!2173298))))))

(declare-fun b!5327262 () Bool)

(assert (=> b!5327262 (= e!3309121 (nullable!5158 lt!2173298))))

(declare-fun b!5327263 () Bool)

(assert (=> b!5327263 (= e!3309122 (= lt!2173459 call!380611))))

(declare-fun b!5327264 () Bool)

(declare-fun e!3309119 () Bool)

(assert (=> b!5327264 (= e!3309119 e!3309123)))

(declare-fun res!2259523 () Bool)

(assert (=> b!5327264 (=> res!2259523 e!3309123)))

(assert (=> b!5327264 (= res!2259523 call!380611)))

(declare-fun b!5327265 () Bool)

(declare-fun res!2259522 () Bool)

(assert (=> b!5327265 (=> (not res!2259522) (not e!3309125))))

(assert (=> b!5327265 (= res!2259522 (isEmpty!33115 (tail!10515 s!2326)))))

(declare-fun b!5327266 () Bool)

(assert (=> b!5327266 (= e!3309120 e!3309119)))

(declare-fun res!2259519 () Bool)

(assert (=> b!5327266 (=> (not res!2259519) (not e!3309119))))

(assert (=> b!5327266 (= res!2259519 (not lt!2173459))))

(declare-fun b!5327267 () Bool)

(declare-fun res!2259520 () Bool)

(assert (=> b!5327267 (=> res!2259520 e!3309120)))

(assert (=> b!5327267 (= res!2259520 e!3309125)))

(declare-fun res!2259517 () Bool)

(assert (=> b!5327267 (=> (not res!2259517) (not e!3309125))))

(assert (=> b!5327267 (= res!2259517 lt!2173459)))

(declare-fun b!5327268 () Bool)

(assert (=> b!5327268 (= e!3309124 (not lt!2173459))))

(assert (= (and d!1710842 c!926272) b!5327262))

(assert (= (and d!1710842 (not c!926272)) b!5327258))

(assert (= (and d!1710842 c!926274) b!5327263))

(assert (= (and d!1710842 (not c!926274)) b!5327259))

(assert (= (and b!5327259 c!926273) b!5327268))

(assert (= (and b!5327259 (not c!926273)) b!5327260))

(assert (= (and b!5327260 (not res!2259518)) b!5327267))

(assert (= (and b!5327267 res!2259517) b!5327255))

(assert (= (and b!5327255 res!2259524) b!5327265))

(assert (= (and b!5327265 res!2259522) b!5327256))

(assert (= (and b!5327267 (not res!2259520)) b!5327266))

(assert (= (and b!5327266 res!2259519) b!5327264))

(assert (= (and b!5327264 (not res!2259523)) b!5327257))

(assert (= (and b!5327257 (not res!2259521)) b!5327261))

(assert (= (or b!5327263 b!5327255 b!5327264) bm!380606))

(declare-fun m!6361194 () Bool)

(assert (=> b!5327262 m!6361194))

(assert (=> b!5327258 m!6360958))

(assert (=> b!5327258 m!6360958))

(declare-fun m!6361196 () Bool)

(assert (=> b!5327258 m!6361196))

(assert (=> b!5327258 m!6360962))

(assert (=> b!5327258 m!6361196))

(assert (=> b!5327258 m!6360962))

(declare-fun m!6361198 () Bool)

(assert (=> b!5327258 m!6361198))

(assert (=> b!5327257 m!6360962))

(assert (=> b!5327257 m!6360962))

(assert (=> b!5327257 m!6360966))

(assert (=> b!5327256 m!6360958))

(assert (=> bm!380606 m!6360924))

(assert (=> b!5327261 m!6360958))

(assert (=> d!1710842 m!6360924))

(assert (=> d!1710842 m!6361154))

(assert (=> b!5327265 m!6360962))

(assert (=> b!5327265 m!6360962))

(assert (=> b!5327265 m!6360966))

(assert (=> b!5326458 d!1710842))

(declare-fun d!1710844 () Bool)

(assert (=> d!1710844 (= (matchR!7174 lt!2173298 s!2326) (matchRSpec!2092 lt!2173298 s!2326))))

(declare-fun lt!2173460 () Unit!153474)

(assert (=> d!1710844 (= lt!2173460 (choose!39880 lt!2173298 s!2326))))

(assert (=> d!1710844 (validRegex!6725 lt!2173298)))

(assert (=> d!1710844 (= (mainMatchTheorem!2092 lt!2173298 s!2326) lt!2173460)))

(declare-fun bs!1234821 () Bool)

(assert (= bs!1234821 d!1710844))

(assert (=> bs!1234821 m!6360494))

(assert (=> bs!1234821 m!6360492))

(declare-fun m!6361200 () Bool)

(assert (=> bs!1234821 m!6361200))

(assert (=> bs!1234821 m!6361154))

(assert (=> b!5326458 d!1710844))

(declare-fun bs!1234822 () Bool)

(declare-fun d!1710846 () Bool)

(assert (= bs!1234822 (and d!1710846 d!1710832)))

(declare-fun lambda!272023 () Int)

(assert (=> bs!1234822 (= lambda!272023 lambda!272019)))

(declare-fun bs!1234823 () Bool)

(assert (= bs!1234823 (and d!1710846 b!5326458)))

(assert (=> bs!1234823 (= lambda!272023 lambda!271939)))

(declare-fun bs!1234824 () Bool)

(assert (= bs!1234824 (and d!1710846 d!1710820)))

(assert (=> bs!1234824 (= lambda!272023 lambda!272015)))

(declare-fun bs!1234825 () Bool)

(assert (= bs!1234825 (and d!1710846 d!1710822)))

(assert (=> bs!1234825 (= lambda!272023 lambda!272018)))

(declare-fun bs!1234826 () Bool)

(assert (= bs!1234826 (and d!1710846 d!1710812)))

(assert (=> bs!1234826 (= lambda!272023 lambda!272012)))

(declare-fun bs!1234827 () Bool)

(assert (= bs!1234827 (and d!1710846 d!1710734)))

(assert (=> bs!1234827 (= lambda!272023 lambda!271962)))

(declare-fun bs!1234828 () Bool)

(assert (= bs!1234828 (and d!1710846 d!1710804)))

(assert (=> bs!1234828 (= lambda!272023 lambda!272006)))

(declare-fun b!5327269 () Bool)

(declare-fun e!3309130 () Bool)

(declare-fun lt!2173461 () Regex!14989)

(assert (=> b!5327269 (= e!3309130 (isConcat!408 lt!2173461))))

(declare-fun b!5327270 () Bool)

(declare-fun e!3309127 () Regex!14989)

(declare-fun e!3309131 () Regex!14989)

(assert (=> b!5327270 (= e!3309127 e!3309131)))

(declare-fun c!926276 () Bool)

(assert (=> b!5327270 (= c!926276 ((_ is Cons!61142) lt!2173306))))

(declare-fun b!5327271 () Bool)

(assert (=> b!5327271 (= e!3309131 (Concat!23834 (h!67590 lt!2173306) (generalisedConcat!658 (t!374481 lt!2173306))))))

(declare-fun b!5327272 () Bool)

(declare-fun e!3309129 () Bool)

(assert (=> b!5327272 (= e!3309129 e!3309130)))

(declare-fun c!926278 () Bool)

(assert (=> b!5327272 (= c!926278 (isEmpty!33112 (tail!10516 lt!2173306)))))

(declare-fun b!5327273 () Bool)

(declare-fun e!3309128 () Bool)

(assert (=> b!5327273 (= e!3309128 e!3309129)))

(declare-fun c!926275 () Bool)

(assert (=> b!5327273 (= c!926275 (isEmpty!33112 lt!2173306))))

(declare-fun b!5327274 () Bool)

(assert (=> b!5327274 (= e!3309131 EmptyExpr!14989)))

(assert (=> d!1710846 e!3309128))

(declare-fun res!2259526 () Bool)

(assert (=> d!1710846 (=> (not res!2259526) (not e!3309128))))

(assert (=> d!1710846 (= res!2259526 (validRegex!6725 lt!2173461))))

(assert (=> d!1710846 (= lt!2173461 e!3309127)))

(declare-fun c!926277 () Bool)

(declare-fun e!3309126 () Bool)

(assert (=> d!1710846 (= c!926277 e!3309126)))

(declare-fun res!2259525 () Bool)

(assert (=> d!1710846 (=> (not res!2259525) (not e!3309126))))

(assert (=> d!1710846 (= res!2259525 ((_ is Cons!61142) lt!2173306))))

(assert (=> d!1710846 (forall!14407 lt!2173306 lambda!272023)))

(assert (=> d!1710846 (= (generalisedConcat!658 lt!2173306) lt!2173461)))

(declare-fun b!5327275 () Bool)

(assert (=> b!5327275 (= e!3309129 (isEmptyExpr!885 lt!2173461))))

(declare-fun b!5327276 () Bool)

(assert (=> b!5327276 (= e!3309127 (h!67590 lt!2173306))))

(declare-fun b!5327277 () Bool)

(assert (=> b!5327277 (= e!3309130 (= lt!2173461 (head!11419 lt!2173306)))))

(declare-fun b!5327278 () Bool)

(assert (=> b!5327278 (= e!3309126 (isEmpty!33112 (t!374481 lt!2173306)))))

(assert (= (and d!1710846 res!2259525) b!5327278))

(assert (= (and d!1710846 c!926277) b!5327276))

(assert (= (and d!1710846 (not c!926277)) b!5327270))

(assert (= (and b!5327270 c!926276) b!5327271))

(assert (= (and b!5327270 (not c!926276)) b!5327274))

(assert (= (and d!1710846 res!2259526) b!5327273))

(assert (= (and b!5327273 c!926275) b!5327275))

(assert (= (and b!5327273 (not c!926275)) b!5327272))

(assert (= (and b!5327272 c!926278) b!5327277))

(assert (= (and b!5327272 (not c!926278)) b!5327269))

(declare-fun m!6361202 () Bool)

(assert (=> b!5327273 m!6361202))

(declare-fun m!6361204 () Bool)

(assert (=> b!5327278 m!6361204))

(declare-fun m!6361206 () Bool)

(assert (=> b!5327269 m!6361206))

(declare-fun m!6361208 () Bool)

(assert (=> b!5327277 m!6361208))

(declare-fun m!6361210 () Bool)

(assert (=> d!1710846 m!6361210))

(declare-fun m!6361212 () Bool)

(assert (=> d!1710846 m!6361212))

(declare-fun m!6361214 () Bool)

(assert (=> b!5327275 m!6361214))

(declare-fun m!6361216 () Bool)

(assert (=> b!5327271 m!6361216))

(declare-fun m!6361218 () Bool)

(assert (=> b!5327272 m!6361218))

(assert (=> b!5327272 m!6361218))

(declare-fun m!6361220 () Bool)

(assert (=> b!5327272 m!6361220))

(assert (=> b!5326458 d!1710846))

(declare-fun bs!1234829 () Bool)

(declare-fun b!5327279 () Bool)

(assert (= bs!1234829 (and b!5327279 b!5326458)))

(declare-fun lambda!272024 () Int)

(assert (=> bs!1234829 (not (= lambda!272024 lambda!271938))))

(declare-fun bs!1234830 () Bool)

(assert (= bs!1234830 (and b!5327279 d!1710834)))

(assert (=> bs!1234830 (not (= lambda!272024 lambda!272022))))

(declare-fun bs!1234831 () Bool)

(assert (= bs!1234831 (and b!5327279 b!5326447)))

(assert (=> bs!1234831 (not (= lambda!272024 lambda!271935))))

(assert (=> bs!1234831 (not (= lambda!272024 lambda!271936))))

(declare-fun bs!1234832 () Bool)

(assert (= bs!1234832 (and b!5327279 b!5326884)))

(assert (=> bs!1234832 (not (= lambda!272024 lambda!271974))))

(declare-fun bs!1234833 () Bool)

(assert (= bs!1234833 (and b!5327279 b!5326876)))

(assert (=> bs!1234833 (= (and (= (reg!15318 lt!2173298) (reg!15318 r!7292)) (= lt!2173298 r!7292)) (= lambda!272024 lambda!271973))))

(assert (=> b!5327279 true))

(assert (=> b!5327279 true))

(declare-fun bs!1234834 () Bool)

(declare-fun b!5327287 () Bool)

(assert (= bs!1234834 (and b!5327287 b!5326458)))

(declare-fun lambda!272025 () Int)

(assert (=> bs!1234834 (not (= lambda!272025 lambda!271938))))

(declare-fun bs!1234835 () Bool)

(assert (= bs!1234835 (and b!5327287 d!1710834)))

(assert (=> bs!1234835 (not (= lambda!272025 lambda!272022))))

(declare-fun bs!1234836 () Bool)

(assert (= bs!1234836 (and b!5327287 b!5326447)))

(assert (=> bs!1234836 (not (= lambda!272025 lambda!271935))))

(assert (=> bs!1234836 (= (and (= (regOne!30490 lt!2173298) (regOne!30490 r!7292)) (= (regTwo!30490 lt!2173298) (regTwo!30490 r!7292))) (= lambda!272025 lambda!271936))))

(declare-fun bs!1234837 () Bool)

(assert (= bs!1234837 (and b!5327287 b!5327279)))

(assert (=> bs!1234837 (not (= lambda!272025 lambda!272024))))

(declare-fun bs!1234838 () Bool)

(assert (= bs!1234838 (and b!5327287 b!5326884)))

(assert (=> bs!1234838 (= (and (= (regOne!30490 lt!2173298) (regOne!30490 r!7292)) (= (regTwo!30490 lt!2173298) (regTwo!30490 r!7292))) (= lambda!272025 lambda!271974))))

(declare-fun bs!1234839 () Bool)

(assert (= bs!1234839 (and b!5327287 b!5326876)))

(assert (=> bs!1234839 (not (= lambda!272025 lambda!271973))))

(assert (=> b!5327287 true))

(assert (=> b!5327287 true))

(declare-fun e!3309138 () Bool)

(declare-fun call!380613 () Bool)

(assert (=> b!5327279 (= e!3309138 call!380613)))

(declare-fun b!5327280 () Bool)

(declare-fun e!3309136 () Bool)

(declare-fun call!380612 () Bool)

(assert (=> b!5327280 (= e!3309136 call!380612)))

(declare-fun b!5327281 () Bool)

(declare-fun res!2259527 () Bool)

(assert (=> b!5327281 (=> res!2259527 e!3309138)))

(assert (=> b!5327281 (= res!2259527 call!380612)))

(declare-fun e!3309133 () Bool)

(assert (=> b!5327281 (= e!3309133 e!3309138)))

(declare-fun bm!380607 () Bool)

(assert (=> bm!380607 (= call!380612 (isEmpty!33115 s!2326))))

(declare-fun b!5327283 () Bool)

(declare-fun c!926281 () Bool)

(assert (=> b!5327283 (= c!926281 ((_ is Union!14989) lt!2173298))))

(declare-fun e!3309135 () Bool)

(declare-fun e!3309134 () Bool)

(assert (=> b!5327283 (= e!3309135 e!3309134)))

(declare-fun c!926282 () Bool)

(declare-fun bm!380608 () Bool)

(assert (=> bm!380608 (= call!380613 (Exists!2170 (ite c!926282 lambda!272024 lambda!272025)))))

(declare-fun b!5327284 () Bool)

(declare-fun e!3309132 () Bool)

(assert (=> b!5327284 (= e!3309136 e!3309132)))

(declare-fun res!2259528 () Bool)

(assert (=> b!5327284 (= res!2259528 (not ((_ is EmptyLang!14989) lt!2173298)))))

(assert (=> b!5327284 (=> (not res!2259528) (not e!3309132))))

(declare-fun b!5327285 () Bool)

(assert (=> b!5327285 (= e!3309134 e!3309133)))

(assert (=> b!5327285 (= c!926282 ((_ is Star!14989) lt!2173298))))

(declare-fun b!5327286 () Bool)

(declare-fun e!3309137 () Bool)

(assert (=> b!5327286 (= e!3309137 (matchRSpec!2092 (regTwo!30491 lt!2173298) s!2326))))

(assert (=> b!5327287 (= e!3309133 call!380613)))

(declare-fun d!1710848 () Bool)

(declare-fun c!926279 () Bool)

(assert (=> d!1710848 (= c!926279 ((_ is EmptyExpr!14989) lt!2173298))))

(assert (=> d!1710848 (= (matchRSpec!2092 lt!2173298 s!2326) e!3309136)))

(declare-fun b!5327282 () Bool)

(declare-fun c!926280 () Bool)

(assert (=> b!5327282 (= c!926280 ((_ is ElementMatch!14989) lt!2173298))))

(assert (=> b!5327282 (= e!3309132 e!3309135)))

(declare-fun b!5327288 () Bool)

(assert (=> b!5327288 (= e!3309134 e!3309137)))

(declare-fun res!2259529 () Bool)

(assert (=> b!5327288 (= res!2259529 (matchRSpec!2092 (regOne!30491 lt!2173298) s!2326))))

(assert (=> b!5327288 (=> res!2259529 e!3309137)))

(declare-fun b!5327289 () Bool)

(assert (=> b!5327289 (= e!3309135 (= s!2326 (Cons!61144 (c!926025 lt!2173298) Nil!61144)))))

(assert (= (and d!1710848 c!926279) b!5327280))

(assert (= (and d!1710848 (not c!926279)) b!5327284))

(assert (= (and b!5327284 res!2259528) b!5327282))

(assert (= (and b!5327282 c!926280) b!5327289))

(assert (= (and b!5327282 (not c!926280)) b!5327283))

(assert (= (and b!5327283 c!926281) b!5327288))

(assert (= (and b!5327283 (not c!926281)) b!5327285))

(assert (= (and b!5327288 (not res!2259529)) b!5327286))

(assert (= (and b!5327285 c!926282) b!5327281))

(assert (= (and b!5327285 (not c!926282)) b!5327287))

(assert (= (and b!5327281 (not res!2259527)) b!5327279))

(assert (= (or b!5327279 b!5327287) bm!380608))

(assert (= (or b!5327280 b!5327281) bm!380607))

(assert (=> bm!380607 m!6360924))

(declare-fun m!6361222 () Bool)

(assert (=> bm!380608 m!6361222))

(declare-fun m!6361224 () Bool)

(assert (=> b!5327286 m!6361224))

(declare-fun m!6361226 () Bool)

(assert (=> b!5327288 m!6361226))

(assert (=> b!5326458 d!1710848))

(declare-fun b!5327290 () Bool)

(declare-fun res!2259530 () Bool)

(declare-fun e!3309140 () Bool)

(assert (=> b!5327290 (=> (not res!2259530) (not e!3309140))))

(declare-fun lt!2173463 () Option!15100)

(assert (=> b!5327290 (= res!2259530 (matchR!7174 (regTwo!30490 r!7292) (_2!35491 (get!21030 lt!2173463))))))

(declare-fun d!1710850 () Bool)

(declare-fun e!3309142 () Bool)

(assert (=> d!1710850 e!3309142))

(declare-fun res!2259533 () Bool)

(assert (=> d!1710850 (=> res!2259533 e!3309142)))

(assert (=> d!1710850 (= res!2259533 e!3309140)))

(declare-fun res!2259532 () Bool)

(assert (=> d!1710850 (=> (not res!2259532) (not e!3309140))))

(assert (=> d!1710850 (= res!2259532 (isDefined!11803 lt!2173463))))

(declare-fun e!3309143 () Option!15100)

(assert (=> d!1710850 (= lt!2173463 e!3309143)))

(declare-fun c!926283 () Bool)

(declare-fun e!3309139 () Bool)

(assert (=> d!1710850 (= c!926283 e!3309139)))

(declare-fun res!2259531 () Bool)

(assert (=> d!1710850 (=> (not res!2259531) (not e!3309139))))

(assert (=> d!1710850 (= res!2259531 (matchR!7174 (regOne!30490 r!7292) Nil!61144))))

(assert (=> d!1710850 (validRegex!6725 (regOne!30490 r!7292))))

(assert (=> d!1710850 (= (findConcatSeparation!1514 (regOne!30490 r!7292) (regTwo!30490 r!7292) Nil!61144 s!2326 s!2326) lt!2173463)))

(declare-fun b!5327291 () Bool)

(declare-fun lt!2173462 () Unit!153474)

(declare-fun lt!2173464 () Unit!153474)

(assert (=> b!5327291 (= lt!2173462 lt!2173464)))

(assert (=> b!5327291 (= (++!13330 (++!13330 Nil!61144 (Cons!61144 (h!67592 s!2326) Nil!61144)) (t!374483 s!2326)) s!2326)))

(assert (=> b!5327291 (= lt!2173464 (lemmaMoveElementToOtherListKeepsConcatEq!1745 Nil!61144 (h!67592 s!2326) (t!374483 s!2326) s!2326))))

(declare-fun e!3309141 () Option!15100)

(assert (=> b!5327291 (= e!3309141 (findConcatSeparation!1514 (regOne!30490 r!7292) (regTwo!30490 r!7292) (++!13330 Nil!61144 (Cons!61144 (h!67592 s!2326) Nil!61144)) (t!374483 s!2326) s!2326))))

(declare-fun b!5327292 () Bool)

(assert (=> b!5327292 (= e!3309143 e!3309141)))

(declare-fun c!926284 () Bool)

(assert (=> b!5327292 (= c!926284 ((_ is Nil!61144) s!2326))))

(declare-fun b!5327293 () Bool)

(assert (=> b!5327293 (= e!3309141 None!15099)))

(declare-fun b!5327294 () Bool)

(assert (=> b!5327294 (= e!3309142 (not (isDefined!11803 lt!2173463)))))

(declare-fun b!5327295 () Bool)

(assert (=> b!5327295 (= e!3309140 (= (++!13330 (_1!35491 (get!21030 lt!2173463)) (_2!35491 (get!21030 lt!2173463))) s!2326))))

(declare-fun b!5327296 () Bool)

(assert (=> b!5327296 (= e!3309139 (matchR!7174 (regTwo!30490 r!7292) s!2326))))

(declare-fun b!5327297 () Bool)

(declare-fun res!2259534 () Bool)

(assert (=> b!5327297 (=> (not res!2259534) (not e!3309140))))

(assert (=> b!5327297 (= res!2259534 (matchR!7174 (regOne!30490 r!7292) (_1!35491 (get!21030 lt!2173463))))))

(declare-fun b!5327298 () Bool)

(assert (=> b!5327298 (= e!3309143 (Some!15099 (tuple2!64377 Nil!61144 s!2326)))))

(assert (= (and d!1710850 res!2259531) b!5327296))

(assert (= (and d!1710850 c!926283) b!5327298))

(assert (= (and d!1710850 (not c!926283)) b!5327292))

(assert (= (and b!5327292 c!926284) b!5327293))

(assert (= (and b!5327292 (not c!926284)) b!5327291))

(assert (= (and d!1710850 res!2259532) b!5327297))

(assert (= (and b!5327297 res!2259534) b!5327290))

(assert (= (and b!5327290 res!2259530) b!5327295))

(assert (= (and d!1710850 (not res!2259533)) b!5327294))

(assert (=> b!5327291 m!6361128))

(assert (=> b!5327291 m!6361128))

(assert (=> b!5327291 m!6361130))

(assert (=> b!5327291 m!6361132))

(assert (=> b!5327291 m!6361128))

(declare-fun m!6361228 () Bool)

(assert (=> b!5327291 m!6361228))

(declare-fun m!6361230 () Bool)

(assert (=> b!5327296 m!6361230))

(declare-fun m!6361232 () Bool)

(assert (=> b!5327290 m!6361232))

(declare-fun m!6361234 () Bool)

(assert (=> b!5327290 m!6361234))

(assert (=> b!5327297 m!6361232))

(declare-fun m!6361236 () Bool)

(assert (=> b!5327297 m!6361236))

(declare-fun m!6361238 () Bool)

(assert (=> b!5327294 m!6361238))

(assert (=> d!1710850 m!6361238))

(declare-fun m!6361240 () Bool)

(assert (=> d!1710850 m!6361240))

(declare-fun m!6361242 () Bool)

(assert (=> d!1710850 m!6361242))

(assert (=> b!5327295 m!6361232))

(declare-fun m!6361244 () Bool)

(assert (=> b!5327295 m!6361244))

(assert (=> b!5326447 d!1710850))

(declare-fun d!1710852 () Bool)

(assert (=> d!1710852 (= (Exists!2170 lambda!271935) (choose!39886 lambda!271935))))

(declare-fun bs!1234840 () Bool)

(assert (= bs!1234840 d!1710852))

(declare-fun m!6361246 () Bool)

(assert (=> bs!1234840 m!6361246))

(assert (=> b!5326447 d!1710852))

(declare-fun d!1710854 () Bool)

(assert (=> d!1710854 (= (Exists!2170 lambda!271936) (choose!39886 lambda!271936))))

(declare-fun bs!1234841 () Bool)

(assert (= bs!1234841 d!1710854))

(declare-fun m!6361248 () Bool)

(assert (=> bs!1234841 m!6361248))

(assert (=> b!5326447 d!1710854))

(declare-fun bs!1234842 () Bool)

(declare-fun d!1710856 () Bool)

(assert (= bs!1234842 (and d!1710856 b!5327287)))

(declare-fun lambda!272026 () Int)

(assert (=> bs!1234842 (not (= lambda!272026 lambda!272025))))

(declare-fun bs!1234843 () Bool)

(assert (= bs!1234843 (and d!1710856 b!5326458)))

(assert (=> bs!1234843 (= (and (= (regOne!30490 r!7292) (regOne!30490 (regOne!30490 r!7292))) (= (regTwo!30490 r!7292) lt!2173315)) (= lambda!272026 lambda!271938))))

(declare-fun bs!1234844 () Bool)

(assert (= bs!1234844 (and d!1710856 d!1710834)))

(assert (=> bs!1234844 (= (and (= (regOne!30490 r!7292) (regOne!30490 (regOne!30490 r!7292))) (= (regTwo!30490 r!7292) lt!2173315)) (= lambda!272026 lambda!272022))))

(declare-fun bs!1234845 () Bool)

(assert (= bs!1234845 (and d!1710856 b!5326447)))

(assert (=> bs!1234845 (= lambda!272026 lambda!271935)))

(assert (=> bs!1234845 (not (= lambda!272026 lambda!271936))))

(declare-fun bs!1234846 () Bool)

(assert (= bs!1234846 (and d!1710856 b!5327279)))

(assert (=> bs!1234846 (not (= lambda!272026 lambda!272024))))

(declare-fun bs!1234847 () Bool)

(assert (= bs!1234847 (and d!1710856 b!5326884)))

(assert (=> bs!1234847 (not (= lambda!272026 lambda!271974))))

(declare-fun bs!1234848 () Bool)

(assert (= bs!1234848 (and d!1710856 b!5326876)))

(assert (=> bs!1234848 (not (= lambda!272026 lambda!271973))))

(assert (=> d!1710856 true))

(assert (=> d!1710856 true))

(assert (=> d!1710856 true))

(assert (=> d!1710856 (= (isDefined!11803 (findConcatSeparation!1514 (regOne!30490 r!7292) (regTwo!30490 r!7292) Nil!61144 s!2326 s!2326)) (Exists!2170 lambda!272026))))

(declare-fun lt!2173465 () Unit!153474)

(assert (=> d!1710856 (= lt!2173465 (choose!39885 (regOne!30490 r!7292) (regTwo!30490 r!7292) s!2326))))

(assert (=> d!1710856 (validRegex!6725 (regOne!30490 r!7292))))

(assert (=> d!1710856 (= (lemmaFindConcatSeparationEquivalentToExists!1278 (regOne!30490 r!7292) (regTwo!30490 r!7292) s!2326) lt!2173465)))

(declare-fun bs!1234849 () Bool)

(assert (= bs!1234849 d!1710856))

(assert (=> bs!1234849 m!6360526))

(assert (=> bs!1234849 m!6360528))

(assert (=> bs!1234849 m!6361242))

(assert (=> bs!1234849 m!6360526))

(declare-fun m!6361250 () Bool)

(assert (=> bs!1234849 m!6361250))

(declare-fun m!6361252 () Bool)

(assert (=> bs!1234849 m!6361252))

(assert (=> b!5326447 d!1710856))

(declare-fun bs!1234850 () Bool)

(declare-fun d!1710858 () Bool)

(assert (= bs!1234850 (and d!1710858 b!5326458)))

(declare-fun lambda!272031 () Int)

(assert (=> bs!1234850 (= (and (= (regOne!30490 r!7292) (regOne!30490 (regOne!30490 r!7292))) (= (regTwo!30490 r!7292) lt!2173315)) (= lambda!272031 lambda!271938))))

(declare-fun bs!1234851 () Bool)

(assert (= bs!1234851 (and d!1710858 d!1710834)))

(assert (=> bs!1234851 (= (and (= (regOne!30490 r!7292) (regOne!30490 (regOne!30490 r!7292))) (= (regTwo!30490 r!7292) lt!2173315)) (= lambda!272031 lambda!272022))))

(declare-fun bs!1234852 () Bool)

(assert (= bs!1234852 (and d!1710858 b!5326447)))

(assert (=> bs!1234852 (= lambda!272031 lambda!271935)))

(assert (=> bs!1234852 (not (= lambda!272031 lambda!271936))))

(declare-fun bs!1234853 () Bool)

(assert (= bs!1234853 (and d!1710858 b!5327279)))

(assert (=> bs!1234853 (not (= lambda!272031 lambda!272024))))

(declare-fun bs!1234854 () Bool)

(assert (= bs!1234854 (and d!1710858 b!5326884)))

(assert (=> bs!1234854 (not (= lambda!272031 lambda!271974))))

(declare-fun bs!1234855 () Bool)

(assert (= bs!1234855 (and d!1710858 b!5326876)))

(assert (=> bs!1234855 (not (= lambda!272031 lambda!271973))))

(declare-fun bs!1234856 () Bool)

(assert (= bs!1234856 (and d!1710858 b!5327287)))

(assert (=> bs!1234856 (not (= lambda!272031 lambda!272025))))

(declare-fun bs!1234857 () Bool)

(assert (= bs!1234857 (and d!1710858 d!1710856)))

(assert (=> bs!1234857 (= lambda!272031 lambda!272026)))

(assert (=> d!1710858 true))

(assert (=> d!1710858 true))

(assert (=> d!1710858 true))

(declare-fun lambda!272032 () Int)

(assert (=> bs!1234850 (not (= lambda!272032 lambda!271938))))

(assert (=> bs!1234851 (not (= lambda!272032 lambda!272022))))

(assert (=> bs!1234852 (not (= lambda!272032 lambda!271935))))

(assert (=> bs!1234852 (= lambda!272032 lambda!271936)))

(assert (=> bs!1234854 (= lambda!272032 lambda!271974)))

(assert (=> bs!1234855 (not (= lambda!272032 lambda!271973))))

(assert (=> bs!1234856 (= (and (= (regOne!30490 r!7292) (regOne!30490 lt!2173298)) (= (regTwo!30490 r!7292) (regTwo!30490 lt!2173298))) (= lambda!272032 lambda!272025))))

(assert (=> bs!1234857 (not (= lambda!272032 lambda!272026))))

(declare-fun bs!1234858 () Bool)

(assert (= bs!1234858 d!1710858))

(assert (=> bs!1234858 (not (= lambda!272032 lambda!272031))))

(assert (=> bs!1234853 (not (= lambda!272032 lambda!272024))))

(assert (=> d!1710858 true))

(assert (=> d!1710858 true))

(assert (=> d!1710858 true))

(assert (=> d!1710858 (= (Exists!2170 lambda!272031) (Exists!2170 lambda!272032))))

(declare-fun lt!2173468 () Unit!153474)

(declare-fun choose!39888 (Regex!14989 Regex!14989 List!61268) Unit!153474)

(assert (=> d!1710858 (= lt!2173468 (choose!39888 (regOne!30490 r!7292) (regTwo!30490 r!7292) s!2326))))

(assert (=> d!1710858 (validRegex!6725 (regOne!30490 r!7292))))

(assert (=> d!1710858 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!824 (regOne!30490 r!7292) (regTwo!30490 r!7292) s!2326) lt!2173468)))

(declare-fun m!6361254 () Bool)

(assert (=> bs!1234858 m!6361254))

(declare-fun m!6361256 () Bool)

(assert (=> bs!1234858 m!6361256))

(declare-fun m!6361258 () Bool)

(assert (=> bs!1234858 m!6361258))

(assert (=> bs!1234858 m!6361242))

(assert (=> b!5326447 d!1710858))

(declare-fun d!1710860 () Bool)

(assert (=> d!1710860 (= (isDefined!11803 (findConcatSeparation!1514 (regOne!30490 r!7292) (regTwo!30490 r!7292) Nil!61144 s!2326 s!2326)) (not (isEmpty!33116 (findConcatSeparation!1514 (regOne!30490 r!7292) (regTwo!30490 r!7292) Nil!61144 s!2326 s!2326))))))

(declare-fun bs!1234859 () Bool)

(assert (= bs!1234859 d!1710860))

(assert (=> bs!1234859 m!6360526))

(declare-fun m!6361260 () Bool)

(assert (=> bs!1234859 m!6361260))

(assert (=> b!5326447 d!1710860))

(declare-fun d!1710862 () Bool)

(declare-fun lt!2173471 () Int)

(assert (=> d!1710862 (>= lt!2173471 0)))

(declare-fun e!3309150 () Int)

(assert (=> d!1710862 (= lt!2173471 e!3309150)))

(declare-fun c!926287 () Bool)

(assert (=> d!1710862 (= c!926287 ((_ is Cons!61143) lt!2173312))))

(assert (=> d!1710862 (= (zipperDepthTotal!142 lt!2173312) lt!2173471)))

(declare-fun b!5327311 () Bool)

(assert (=> b!5327311 (= e!3309150 (+ (contextDepthTotal!122 (h!67591 lt!2173312)) (zipperDepthTotal!142 (t!374482 lt!2173312))))))

(declare-fun b!5327312 () Bool)

(assert (=> b!5327312 (= e!3309150 0)))

(assert (= (and d!1710862 c!926287) b!5327311))

(assert (= (and d!1710862 (not c!926287)) b!5327312))

(declare-fun m!6361262 () Bool)

(assert (=> b!5327311 m!6361262))

(declare-fun m!6361264 () Bool)

(assert (=> b!5327311 m!6361264))

(assert (=> b!5326449 d!1710862))

(declare-fun d!1710864 () Bool)

(declare-fun lt!2173472 () Int)

(assert (=> d!1710864 (>= lt!2173472 0)))

(declare-fun e!3309151 () Int)

(assert (=> d!1710864 (= lt!2173472 e!3309151)))

(declare-fun c!926288 () Bool)

(assert (=> d!1710864 (= c!926288 ((_ is Cons!61143) zl!343))))

(assert (=> d!1710864 (= (zipperDepthTotal!142 zl!343) lt!2173472)))

(declare-fun b!5327313 () Bool)

(assert (=> b!5327313 (= e!3309151 (+ (contextDepthTotal!122 (h!67591 zl!343)) (zipperDepthTotal!142 (t!374482 zl!343))))))

(declare-fun b!5327314 () Bool)

(assert (=> b!5327314 (= e!3309151 0)))

(assert (= (and d!1710864 c!926288) b!5327313))

(assert (= (and d!1710864 (not c!926288)) b!5327314))

(assert (=> b!5327313 m!6360550))

(declare-fun m!6361266 () Bool)

(assert (=> b!5327313 m!6361266))

(assert (=> b!5326449 d!1710864))

(declare-fun d!1710866 () Bool)

(assert (=> d!1710866 (= (flatMap!716 lt!2173297 lambda!271937) (choose!39879 lt!2173297 lambda!271937))))

(declare-fun bs!1234860 () Bool)

(assert (= bs!1234860 d!1710866))

(declare-fun m!6361268 () Bool)

(assert (=> bs!1234860 m!6361268))

(assert (=> b!5326459 d!1710866))

(declare-fun b!5327316 () Bool)

(declare-fun e!3309154 () (InoxSet Context!8746))

(declare-fun e!3309153 () (InoxSet Context!8746))

(assert (=> b!5327316 (= e!3309154 e!3309153)))

(declare-fun c!926289 () Bool)

(assert (=> b!5327316 (= c!926289 ((_ is Cons!61142) (exprs!4873 lt!2173302)))))

(declare-fun call!380614 () (InoxSet Context!8746))

(declare-fun b!5327317 () Bool)

(assert (=> b!5327317 (= e!3309154 ((_ map or) call!380614 (derivationStepZipperUp!361 (Context!8747 (t!374481 (exprs!4873 lt!2173302))) (h!67592 s!2326))))))

(declare-fun b!5327318 () Bool)

(assert (=> b!5327318 (= e!3309153 ((as const (Array Context!8746 Bool)) false))))

(declare-fun b!5327319 () Bool)

(assert (=> b!5327319 (= e!3309153 call!380614)))

(declare-fun bm!380609 () Bool)

(assert (=> bm!380609 (= call!380614 (derivationStepZipperDown!437 (h!67590 (exprs!4873 lt!2173302)) (Context!8747 (t!374481 (exprs!4873 lt!2173302))) (h!67592 s!2326)))))

(declare-fun b!5327315 () Bool)

(declare-fun e!3309152 () Bool)

(assert (=> b!5327315 (= e!3309152 (nullable!5158 (h!67590 (exprs!4873 lt!2173302))))))

(declare-fun d!1710868 () Bool)

(declare-fun c!926290 () Bool)

(assert (=> d!1710868 (= c!926290 e!3309152)))

(declare-fun res!2259543 () Bool)

(assert (=> d!1710868 (=> (not res!2259543) (not e!3309152))))

(assert (=> d!1710868 (= res!2259543 ((_ is Cons!61142) (exprs!4873 lt!2173302)))))

(assert (=> d!1710868 (= (derivationStepZipperUp!361 lt!2173302 (h!67592 s!2326)) e!3309154)))

(assert (= (and d!1710868 res!2259543) b!5327315))

(assert (= (and d!1710868 c!926290) b!5327317))

(assert (= (and d!1710868 (not c!926290)) b!5327316))

(assert (= (and b!5327316 c!926289) b!5327319))

(assert (= (and b!5327316 (not c!926289)) b!5327318))

(assert (= (or b!5327317 b!5327319) bm!380609))

(declare-fun m!6361270 () Bool)

(assert (=> b!5327317 m!6361270))

(declare-fun m!6361272 () Bool)

(assert (=> bm!380609 m!6361272))

(declare-fun m!6361274 () Bool)

(assert (=> b!5327315 m!6361274))

(assert (=> b!5326459 d!1710868))

(declare-fun d!1710870 () Bool)

(assert (=> d!1710870 (= (flatMap!716 lt!2173297 lambda!271937) (dynLambda!24177 lambda!271937 lt!2173302))))

(declare-fun lt!2173473 () Unit!153474)

(assert (=> d!1710870 (= lt!2173473 (choose!39878 lt!2173297 lt!2173302 lambda!271937))))

(assert (=> d!1710870 (= lt!2173297 (store ((as const (Array Context!8746 Bool)) false) lt!2173302 true))))

(assert (=> d!1710870 (= (lemmaFlatMapOnSingletonSet!248 lt!2173297 lt!2173302 lambda!271937) lt!2173473)))

(declare-fun b_lambda!204925 () Bool)

(assert (=> (not b_lambda!204925) (not d!1710870)))

(declare-fun bs!1234861 () Bool)

(assert (= bs!1234861 d!1710870))

(assert (=> bs!1234861 m!6360546))

(declare-fun m!6361276 () Bool)

(assert (=> bs!1234861 m!6361276))

(declare-fun m!6361278 () Bool)

(assert (=> bs!1234861 m!6361278))

(assert (=> bs!1234861 m!6360540))

(assert (=> b!5326459 d!1710870))

(declare-fun bs!1234862 () Bool)

(declare-fun d!1710872 () Bool)

(assert (= bs!1234862 (and d!1710872 b!5326472)))

(declare-fun lambda!272035 () Int)

(assert (=> bs!1234862 (= lambda!272035 lambda!271937)))

(assert (=> d!1710872 true))

(assert (=> d!1710872 (= (derivationStepZipper!1230 lt!2173297 (h!67592 s!2326)) (flatMap!716 lt!2173297 lambda!272035))))

(declare-fun bs!1234863 () Bool)

(assert (= bs!1234863 d!1710872))

(declare-fun m!6361280 () Bool)

(assert (=> bs!1234863 m!6361280))

(assert (=> b!5326459 d!1710872))

(declare-fun d!1710874 () Bool)

(declare-fun c!926293 () Bool)

(assert (=> d!1710874 (= c!926293 (isEmpty!33115 (t!374483 s!2326)))))

(declare-fun e!3309155 () Bool)

(assert (=> d!1710874 (= (matchZipper!1233 lt!2173318 (t!374483 s!2326)) e!3309155)))

(declare-fun b!5327322 () Bool)

(assert (=> b!5327322 (= e!3309155 (nullableZipper!1350 lt!2173318))))

(declare-fun b!5327323 () Bool)

(assert (=> b!5327323 (= e!3309155 (matchZipper!1233 (derivationStepZipper!1230 lt!2173318 (head!11418 (t!374483 s!2326))) (tail!10515 (t!374483 s!2326))))))

(assert (= (and d!1710874 c!926293) b!5327322))

(assert (= (and d!1710874 (not c!926293)) b!5327323))

(assert (=> d!1710874 m!6360842))

(declare-fun m!6361282 () Bool)

(assert (=> b!5327322 m!6361282))

(assert (=> b!5327323 m!6360846))

(assert (=> b!5327323 m!6360846))

(declare-fun m!6361284 () Bool)

(assert (=> b!5327323 m!6361284))

(assert (=> b!5327323 m!6360850))

(assert (=> b!5327323 m!6361284))

(assert (=> b!5327323 m!6360850))

(declare-fun m!6361286 () Bool)

(assert (=> b!5327323 m!6361286))

(assert (=> b!5326450 d!1710874))

(declare-fun d!1710876 () Bool)

(assert (=> d!1710876 (= (isEmpty!33112 (t!374481 (exprs!4873 (h!67591 zl!343)))) ((_ is Nil!61142) (t!374481 (exprs!4873 (h!67591 zl!343)))))))

(assert (=> b!5326460 d!1710876))

(declare-fun b!5327324 () Bool)

(declare-fun e!3309161 () (InoxSet Context!8746))

(assert (=> b!5327324 (= e!3309161 (store ((as const (Array Context!8746 Bool)) false) (Context!8747 lt!2173306) true))))

(declare-fun call!380616 () List!61266)

(declare-fun c!926296 () Bool)

(declare-fun c!926297 () Bool)

(declare-fun bm!380610 () Bool)

(declare-fun c!926295 () Bool)

(declare-fun call!380617 () (InoxSet Context!8746))

(assert (=> bm!380610 (= call!380617 (derivationStepZipperDown!437 (ite c!926297 (regTwo!30491 (regOne!30490 (regOne!30490 r!7292))) (ite c!926295 (regTwo!30490 (regOne!30490 (regOne!30490 r!7292))) (ite c!926296 (regOne!30490 (regOne!30490 (regOne!30490 r!7292))) (reg!15318 (regOne!30490 (regOne!30490 r!7292)))))) (ite (or c!926297 c!926295) (Context!8747 lt!2173306) (Context!8747 call!380616)) (h!67592 s!2326)))))

(declare-fun b!5327325 () Bool)

(declare-fun e!3309158 () (InoxSet Context!8746))

(declare-fun call!380619 () (InoxSet Context!8746))

(assert (=> b!5327325 (= e!3309158 ((_ map or) call!380619 call!380617))))

(declare-fun b!5327326 () Bool)

(declare-fun e!3309160 () (InoxSet Context!8746))

(declare-fun call!380620 () (InoxSet Context!8746))

(assert (=> b!5327326 (= e!3309160 call!380620)))

(declare-fun call!380615 () List!61266)

(declare-fun bm!380611 () Bool)

(assert (=> bm!380611 (= call!380615 ($colon$colon!1400 (exprs!4873 (Context!8747 lt!2173306)) (ite (or c!926295 c!926296) (regTwo!30490 (regOne!30490 (regOne!30490 r!7292))) (regOne!30490 (regOne!30490 r!7292)))))))

(declare-fun b!5327327 () Bool)

(declare-fun e!3309159 () Bool)

(assert (=> b!5327327 (= e!3309159 (nullable!5158 (regOne!30490 (regOne!30490 (regOne!30490 r!7292)))))))

(declare-fun bm!380612 () Bool)

(declare-fun call!380618 () (InoxSet Context!8746))

(assert (=> bm!380612 (= call!380620 call!380618)))

(declare-fun d!1710878 () Bool)

(declare-fun c!926294 () Bool)

(assert (=> d!1710878 (= c!926294 (and ((_ is ElementMatch!14989) (regOne!30490 (regOne!30490 r!7292))) (= (c!926025 (regOne!30490 (regOne!30490 r!7292))) (h!67592 s!2326))))))

(assert (=> d!1710878 (= (derivationStepZipperDown!437 (regOne!30490 (regOne!30490 r!7292)) (Context!8747 lt!2173306) (h!67592 s!2326)) e!3309161)))

(declare-fun b!5327328 () Bool)

(declare-fun c!926298 () Bool)

(assert (=> b!5327328 (= c!926298 ((_ is Star!14989) (regOne!30490 (regOne!30490 r!7292))))))

(declare-fun e!3309156 () (InoxSet Context!8746))

(assert (=> b!5327328 (= e!3309156 e!3309160)))

(declare-fun b!5327329 () Bool)

(declare-fun e!3309157 () (InoxSet Context!8746))

(assert (=> b!5327329 (= e!3309157 e!3309156)))

(assert (=> b!5327329 (= c!926296 ((_ is Concat!23834) (regOne!30490 (regOne!30490 r!7292))))))

(declare-fun b!5327330 () Bool)

(assert (=> b!5327330 (= e!3309160 ((as const (Array Context!8746 Bool)) false))))

(declare-fun b!5327331 () Bool)

(assert (=> b!5327331 (= e!3309161 e!3309158)))

(assert (=> b!5327331 (= c!926297 ((_ is Union!14989) (regOne!30490 (regOne!30490 r!7292))))))

(declare-fun b!5327332 () Bool)

(assert (=> b!5327332 (= e!3309156 call!380620)))

(declare-fun bm!380613 () Bool)

(assert (=> bm!380613 (= call!380616 call!380615)))

(declare-fun bm!380614 () Bool)

(assert (=> bm!380614 (= call!380618 call!380617)))

(declare-fun b!5327333 () Bool)

(assert (=> b!5327333 (= e!3309157 ((_ map or) call!380619 call!380618))))

(declare-fun b!5327334 () Bool)

(assert (=> b!5327334 (= c!926295 e!3309159)))

(declare-fun res!2259544 () Bool)

(assert (=> b!5327334 (=> (not res!2259544) (not e!3309159))))

(assert (=> b!5327334 (= res!2259544 ((_ is Concat!23834) (regOne!30490 (regOne!30490 r!7292))))))

(assert (=> b!5327334 (= e!3309158 e!3309157)))

(declare-fun bm!380615 () Bool)

(assert (=> bm!380615 (= call!380619 (derivationStepZipperDown!437 (ite c!926297 (regOne!30491 (regOne!30490 (regOne!30490 r!7292))) (regOne!30490 (regOne!30490 (regOne!30490 r!7292)))) (ite c!926297 (Context!8747 lt!2173306) (Context!8747 call!380615)) (h!67592 s!2326)))))

(assert (= (and d!1710878 c!926294) b!5327324))

(assert (= (and d!1710878 (not c!926294)) b!5327331))

(assert (= (and b!5327331 c!926297) b!5327325))

(assert (= (and b!5327331 (not c!926297)) b!5327334))

(assert (= (and b!5327334 res!2259544) b!5327327))

(assert (= (and b!5327334 c!926295) b!5327333))

(assert (= (and b!5327334 (not c!926295)) b!5327329))

(assert (= (and b!5327329 c!926296) b!5327332))

(assert (= (and b!5327329 (not c!926296)) b!5327328))

(assert (= (and b!5327328 c!926298) b!5327326))

(assert (= (and b!5327328 (not c!926298)) b!5327330))

(assert (= (or b!5327332 b!5327326) bm!380613))

(assert (= (or b!5327332 b!5327326) bm!380612))

(assert (= (or b!5327333 bm!380613) bm!380611))

(assert (= (or b!5327333 bm!380612) bm!380614))

(assert (= (or b!5327325 bm!380614) bm!380610))

(assert (= (or b!5327325 b!5327333) bm!380615))

(declare-fun m!6361288 () Bool)

(assert (=> b!5327327 m!6361288))

(declare-fun m!6361290 () Bool)

(assert (=> b!5327324 m!6361290))

(declare-fun m!6361292 () Bool)

(assert (=> bm!380611 m!6361292))

(declare-fun m!6361294 () Bool)

(assert (=> bm!380610 m!6361294))

(declare-fun m!6361296 () Bool)

(assert (=> bm!380615 m!6361296))

(assert (=> b!5326469 d!1710878))

(declare-fun d!1710880 () Bool)

(declare-fun c!926299 () Bool)

(assert (=> d!1710880 (= c!926299 (isEmpty!33115 (t!374483 s!2326)))))

(declare-fun e!3309162 () Bool)

(assert (=> d!1710880 (= (matchZipper!1233 lt!2173300 (t!374483 s!2326)) e!3309162)))

(declare-fun b!5327335 () Bool)

(assert (=> b!5327335 (= e!3309162 (nullableZipper!1350 lt!2173300))))

(declare-fun b!5327336 () Bool)

(assert (=> b!5327336 (= e!3309162 (matchZipper!1233 (derivationStepZipper!1230 lt!2173300 (head!11418 (t!374483 s!2326))) (tail!10515 (t!374483 s!2326))))))

(assert (= (and d!1710880 c!926299) b!5327335))

(assert (= (and d!1710880 (not c!926299)) b!5327336))

(assert (=> d!1710880 m!6360842))

(declare-fun m!6361298 () Bool)

(assert (=> b!5327335 m!6361298))

(assert (=> b!5327336 m!6360846))

(assert (=> b!5327336 m!6360846))

(declare-fun m!6361300 () Bool)

(assert (=> b!5327336 m!6361300))

(assert (=> b!5327336 m!6360850))

(assert (=> b!5327336 m!6361300))

(assert (=> b!5327336 m!6360850))

(declare-fun m!6361302 () Bool)

(assert (=> b!5327336 m!6361302))

(assert (=> b!5326462 d!1710880))

(declare-fun d!1710882 () Bool)

(declare-fun c!926300 () Bool)

(assert (=> d!1710882 (= c!926300 (isEmpty!33115 (t!374483 s!2326)))))

(declare-fun e!3309163 () Bool)

(assert (=> d!1710882 (= (matchZipper!1233 lt!2173319 (t!374483 s!2326)) e!3309163)))

(declare-fun b!5327337 () Bool)

(assert (=> b!5327337 (= e!3309163 (nullableZipper!1350 lt!2173319))))

(declare-fun b!5327338 () Bool)

(assert (=> b!5327338 (= e!3309163 (matchZipper!1233 (derivationStepZipper!1230 lt!2173319 (head!11418 (t!374483 s!2326))) (tail!10515 (t!374483 s!2326))))))

(assert (= (and d!1710882 c!926300) b!5327337))

(assert (= (and d!1710882 (not c!926300)) b!5327338))

(assert (=> d!1710882 m!6360842))

(declare-fun m!6361304 () Bool)

(assert (=> b!5327337 m!6361304))

(assert (=> b!5327338 m!6360846))

(assert (=> b!5327338 m!6360846))

(declare-fun m!6361306 () Bool)

(assert (=> b!5327338 m!6361306))

(assert (=> b!5327338 m!6360850))

(assert (=> b!5327338 m!6361306))

(assert (=> b!5327338 m!6360850))

(declare-fun m!6361308 () Bool)

(assert (=> b!5327338 m!6361308))

(assert (=> b!5326462 d!1710882))

(declare-fun d!1710884 () Bool)

(declare-fun e!3309166 () Bool)

(assert (=> d!1710884 (= (matchZipper!1233 ((_ map or) lt!2173319 lt!2173318) (t!374483 s!2326)) e!3309166)))

(declare-fun res!2259547 () Bool)

(assert (=> d!1710884 (=> res!2259547 e!3309166)))

(assert (=> d!1710884 (= res!2259547 (matchZipper!1233 lt!2173319 (t!374483 s!2326)))))

(declare-fun lt!2173476 () Unit!153474)

(declare-fun choose!39889 ((InoxSet Context!8746) (InoxSet Context!8746) List!61268) Unit!153474)

(assert (=> d!1710884 (= lt!2173476 (choose!39889 lt!2173319 lt!2173318 (t!374483 s!2326)))))

(assert (=> d!1710884 (= (lemmaZipperConcatMatchesSameAsBothZippers!226 lt!2173319 lt!2173318 (t!374483 s!2326)) lt!2173476)))

(declare-fun b!5327341 () Bool)

(assert (=> b!5327341 (= e!3309166 (matchZipper!1233 lt!2173318 (t!374483 s!2326)))))

(assert (= (and d!1710884 (not res!2259547)) b!5327341))

(assert (=> d!1710884 m!6360556))

(assert (=> d!1710884 m!6360554))

(declare-fun m!6361310 () Bool)

(assert (=> d!1710884 m!6361310))

(assert (=> b!5327341 m!6360602))

(assert (=> b!5326471 d!1710884))

(assert (=> b!5326471 d!1710882))

(declare-fun d!1710886 () Bool)

(declare-fun c!926301 () Bool)

(assert (=> d!1710886 (= c!926301 (isEmpty!33115 (t!374483 s!2326)))))

(declare-fun e!3309167 () Bool)

(assert (=> d!1710886 (= (matchZipper!1233 ((_ map or) lt!2173319 lt!2173318) (t!374483 s!2326)) e!3309167)))

(declare-fun b!5327342 () Bool)

(assert (=> b!5327342 (= e!3309167 (nullableZipper!1350 ((_ map or) lt!2173319 lt!2173318)))))

(declare-fun b!5327343 () Bool)

(assert (=> b!5327343 (= e!3309167 (matchZipper!1233 (derivationStepZipper!1230 ((_ map or) lt!2173319 lt!2173318) (head!11418 (t!374483 s!2326))) (tail!10515 (t!374483 s!2326))))))

(assert (= (and d!1710886 c!926301) b!5327342))

(assert (= (and d!1710886 (not c!926301)) b!5327343))

(assert (=> d!1710886 m!6360842))

(declare-fun m!6361312 () Bool)

(assert (=> b!5327342 m!6361312))

(assert (=> b!5327343 m!6360846))

(assert (=> b!5327343 m!6360846))

(declare-fun m!6361314 () Bool)

(assert (=> b!5327343 m!6361314))

(assert (=> b!5327343 m!6360850))

(assert (=> b!5327343 m!6361314))

(assert (=> b!5327343 m!6360850))

(declare-fun m!6361316 () Bool)

(assert (=> b!5327343 m!6361316))

(assert (=> b!5326471 d!1710886))

(declare-fun b!5327351 () Bool)

(declare-fun e!3309173 () Bool)

(declare-fun tp!1482900 () Bool)

(assert (=> b!5327351 (= e!3309173 tp!1482900)))

(declare-fun b!5327350 () Bool)

(declare-fun e!3309172 () Bool)

(declare-fun tp!1482901 () Bool)

(assert (=> b!5327350 (= e!3309172 (and (inv!80719 (h!67591 (t!374482 zl!343))) e!3309173 tp!1482901))))

(assert (=> b!5326453 (= tp!1482835 e!3309172)))

(assert (= b!5327350 b!5327351))

(assert (= (and b!5326453 ((_ is Cons!61143) (t!374482 zl!343))) b!5327350))

(declare-fun m!6361318 () Bool)

(assert (=> b!5327350 m!6361318))

(declare-fun b!5327362 () Bool)

(declare-fun e!3309176 () Bool)

(assert (=> b!5327362 (= e!3309176 tp_is_empty!39231)))

(declare-fun b!5327364 () Bool)

(declare-fun tp!1482912 () Bool)

(assert (=> b!5327364 (= e!3309176 tp!1482912)))

(declare-fun b!5327363 () Bool)

(declare-fun tp!1482913 () Bool)

(declare-fun tp!1482916 () Bool)

(assert (=> b!5327363 (= e!3309176 (and tp!1482913 tp!1482916))))

(declare-fun b!5327365 () Bool)

(declare-fun tp!1482915 () Bool)

(declare-fun tp!1482914 () Bool)

(assert (=> b!5327365 (= e!3309176 (and tp!1482915 tp!1482914))))

(assert (=> b!5326466 (= tp!1482830 e!3309176)))

(assert (= (and b!5326466 ((_ is ElementMatch!14989) (regOne!30490 r!7292))) b!5327362))

(assert (= (and b!5326466 ((_ is Concat!23834) (regOne!30490 r!7292))) b!5327363))

(assert (= (and b!5326466 ((_ is Star!14989) (regOne!30490 r!7292))) b!5327364))

(assert (= (and b!5326466 ((_ is Union!14989) (regOne!30490 r!7292))) b!5327365))

(declare-fun b!5327366 () Bool)

(declare-fun e!3309177 () Bool)

(assert (=> b!5327366 (= e!3309177 tp_is_empty!39231)))

(declare-fun b!5327368 () Bool)

(declare-fun tp!1482917 () Bool)

(assert (=> b!5327368 (= e!3309177 tp!1482917)))

(declare-fun b!5327367 () Bool)

(declare-fun tp!1482918 () Bool)

(declare-fun tp!1482921 () Bool)

(assert (=> b!5327367 (= e!3309177 (and tp!1482918 tp!1482921))))

(declare-fun b!5327369 () Bool)

(declare-fun tp!1482920 () Bool)

(declare-fun tp!1482919 () Bool)

(assert (=> b!5327369 (= e!3309177 (and tp!1482920 tp!1482919))))

(assert (=> b!5326466 (= tp!1482828 e!3309177)))

(assert (= (and b!5326466 ((_ is ElementMatch!14989) (regTwo!30490 r!7292))) b!5327366))

(assert (= (and b!5326466 ((_ is Concat!23834) (regTwo!30490 r!7292))) b!5327367))

(assert (= (and b!5326466 ((_ is Star!14989) (regTwo!30490 r!7292))) b!5327368))

(assert (= (and b!5326466 ((_ is Union!14989) (regTwo!30490 r!7292))) b!5327369))

(declare-fun b!5327370 () Bool)

(declare-fun e!3309178 () Bool)

(assert (=> b!5327370 (= e!3309178 tp_is_empty!39231)))

(declare-fun b!5327372 () Bool)

(declare-fun tp!1482922 () Bool)

(assert (=> b!5327372 (= e!3309178 tp!1482922)))

(declare-fun b!5327371 () Bool)

(declare-fun tp!1482923 () Bool)

(declare-fun tp!1482926 () Bool)

(assert (=> b!5327371 (= e!3309178 (and tp!1482923 tp!1482926))))

(declare-fun b!5327373 () Bool)

(declare-fun tp!1482925 () Bool)

(declare-fun tp!1482924 () Bool)

(assert (=> b!5327373 (= e!3309178 (and tp!1482925 tp!1482924))))

(assert (=> b!5326468 (= tp!1482831 e!3309178)))

(assert (= (and b!5326468 ((_ is ElementMatch!14989) (regOne!30491 r!7292))) b!5327370))

(assert (= (and b!5326468 ((_ is Concat!23834) (regOne!30491 r!7292))) b!5327371))

(assert (= (and b!5326468 ((_ is Star!14989) (regOne!30491 r!7292))) b!5327372))

(assert (= (and b!5326468 ((_ is Union!14989) (regOne!30491 r!7292))) b!5327373))

(declare-fun b!5327374 () Bool)

(declare-fun e!3309179 () Bool)

(assert (=> b!5327374 (= e!3309179 tp_is_empty!39231)))

(declare-fun b!5327376 () Bool)

(declare-fun tp!1482927 () Bool)

(assert (=> b!5327376 (= e!3309179 tp!1482927)))

(declare-fun b!5327375 () Bool)

(declare-fun tp!1482928 () Bool)

(declare-fun tp!1482931 () Bool)

(assert (=> b!5327375 (= e!3309179 (and tp!1482928 tp!1482931))))

(declare-fun b!5327377 () Bool)

(declare-fun tp!1482930 () Bool)

(declare-fun tp!1482929 () Bool)

(assert (=> b!5327377 (= e!3309179 (and tp!1482930 tp!1482929))))

(assert (=> b!5326468 (= tp!1482837 e!3309179)))

(assert (= (and b!5326468 ((_ is ElementMatch!14989) (regTwo!30491 r!7292))) b!5327374))

(assert (= (and b!5326468 ((_ is Concat!23834) (regTwo!30491 r!7292))) b!5327375))

(assert (= (and b!5326468 ((_ is Star!14989) (regTwo!30491 r!7292))) b!5327376))

(assert (= (and b!5326468 ((_ is Union!14989) (regTwo!30491 r!7292))) b!5327377))

(declare-fun condSetEmpty!34323 () Bool)

(assert (=> setNonEmpty!34317 (= condSetEmpty!34323 (= setRest!34317 ((as const (Array Context!8746 Bool)) false)))))

(declare-fun setRes!34323 () Bool)

(assert (=> setNonEmpty!34317 (= tp!1482833 setRes!34323)))

(declare-fun setIsEmpty!34323 () Bool)

(assert (=> setIsEmpty!34323 setRes!34323))

(declare-fun setNonEmpty!34323 () Bool)

(declare-fun tp!1482936 () Bool)

(declare-fun setElem!34323 () Context!8746)

(declare-fun e!3309182 () Bool)

(assert (=> setNonEmpty!34323 (= setRes!34323 (and tp!1482936 (inv!80719 setElem!34323) e!3309182))))

(declare-fun setRest!34323 () (InoxSet Context!8746))

(assert (=> setNonEmpty!34323 (= setRest!34317 ((_ map or) (store ((as const (Array Context!8746 Bool)) false) setElem!34323 true) setRest!34323))))

(declare-fun b!5327382 () Bool)

(declare-fun tp!1482937 () Bool)

(assert (=> b!5327382 (= e!3309182 tp!1482937)))

(assert (= (and setNonEmpty!34317 condSetEmpty!34323) setIsEmpty!34323))

(assert (= (and setNonEmpty!34317 (not condSetEmpty!34323)) setNonEmpty!34323))

(assert (= setNonEmpty!34323 b!5327382))

(declare-fun m!6361320 () Bool)

(assert (=> setNonEmpty!34323 m!6361320))

(declare-fun b!5327387 () Bool)

(declare-fun e!3309185 () Bool)

(declare-fun tp!1482942 () Bool)

(declare-fun tp!1482943 () Bool)

(assert (=> b!5327387 (= e!3309185 (and tp!1482942 tp!1482943))))

(assert (=> b!5326457 (= tp!1482829 e!3309185)))

(assert (= (and b!5326457 ((_ is Cons!61142) (exprs!4873 (h!67591 zl!343)))) b!5327387))

(declare-fun b!5327392 () Bool)

(declare-fun e!3309188 () Bool)

(declare-fun tp!1482946 () Bool)

(assert (=> b!5327392 (= e!3309188 (and tp_is_empty!39231 tp!1482946))))

(assert (=> b!5326440 (= tp!1482834 e!3309188)))

(assert (= (and b!5326440 ((_ is Cons!61144) (t!374483 s!2326))) b!5327392))

(declare-fun b!5327393 () Bool)

(declare-fun e!3309189 () Bool)

(assert (=> b!5327393 (= e!3309189 tp_is_empty!39231)))

(declare-fun b!5327395 () Bool)

(declare-fun tp!1482947 () Bool)

(assert (=> b!5327395 (= e!3309189 tp!1482947)))

(declare-fun b!5327394 () Bool)

(declare-fun tp!1482948 () Bool)

(declare-fun tp!1482951 () Bool)

(assert (=> b!5327394 (= e!3309189 (and tp!1482948 tp!1482951))))

(declare-fun b!5327396 () Bool)

(declare-fun tp!1482950 () Bool)

(declare-fun tp!1482949 () Bool)

(assert (=> b!5327396 (= e!3309189 (and tp!1482950 tp!1482949))))

(assert (=> b!5326456 (= tp!1482836 e!3309189)))

(assert (= (and b!5326456 ((_ is ElementMatch!14989) (reg!15318 r!7292))) b!5327393))

(assert (= (and b!5326456 ((_ is Concat!23834) (reg!15318 r!7292))) b!5327394))

(assert (= (and b!5326456 ((_ is Star!14989) (reg!15318 r!7292))) b!5327395))

(assert (= (and b!5326456 ((_ is Union!14989) (reg!15318 r!7292))) b!5327396))

(declare-fun b!5327397 () Bool)

(declare-fun e!3309190 () Bool)

(declare-fun tp!1482952 () Bool)

(declare-fun tp!1482953 () Bool)

(assert (=> b!5327397 (= e!3309190 (and tp!1482952 tp!1482953))))

(assert (=> b!5326451 (= tp!1482832 e!3309190)))

(assert (= (and b!5326451 ((_ is Cons!61142) (exprs!4873 setElem!34317))) b!5327397))

(declare-fun b_lambda!204927 () Bool)

(assert (= b_lambda!204911 (or b!5326472 b_lambda!204927)))

(declare-fun bs!1234864 () Bool)

(declare-fun d!1710888 () Bool)

(assert (= bs!1234864 (and d!1710888 b!5326472)))

(assert (=> bs!1234864 (= (dynLambda!24177 lambda!271937 (h!67591 zl!343)) (derivationStepZipperUp!361 (h!67591 zl!343) (h!67592 s!2326)))))

(assert (=> bs!1234864 m!6360594))

(assert (=> d!1710730 d!1710888))

(declare-fun b_lambda!204929 () Bool)

(assert (= b_lambda!204925 (or b!5326472 b_lambda!204929)))

(declare-fun bs!1234865 () Bool)

(declare-fun d!1710890 () Bool)

(assert (= bs!1234865 (and d!1710890 b!5326472)))

(assert (=> bs!1234865 (= (dynLambda!24177 lambda!271937 lt!2173302) (derivationStepZipperUp!361 lt!2173302 (h!67592 s!2326)))))

(assert (=> bs!1234865 m!6360544))

(assert (=> d!1710870 d!1710890))

(declare-fun b_lambda!204931 () Bool)

(assert (= b_lambda!204923 (or b!5326458 b_lambda!204931)))

(declare-fun bs!1234866 () Bool)

(declare-fun d!1710892 () Bool)

(assert (= bs!1234866 (and d!1710892 b!5326458)))

(assert (=> bs!1234866 (= (dynLambda!24179 lambda!271939 (h!67590 lt!2173306)) (validRegex!6725 (h!67590 lt!2173306)))))

(declare-fun m!6361322 () Bool)

(assert (=> bs!1234866 m!6361322))

(assert (=> b!5327253 d!1710892))

(check-sat (not d!1710730) (not b!5326711) (not b_lambda!204927) (not bm!380559) (not d!1710874) (not b!5327335) (not b!5327338) (not bm!380605) (not d!1710844) (not b!5327170) (not b!5327364) (not b!5327337) (not b!5327235) (not b!5327369) (not b!5327296) (not b!5327261) (not b!5326885) (not b!5327142) (not b!5327169) (not b!5327137) (not b!5326769) (not b!5327265) (not b!5327136) (not d!1710870) (not d!1710884) (not b!5326968) (not b!5327262) (not b!5327297) (not b!5326770) (not b!5326883) (not b!5327342) (not d!1710794) (not b!5327363) (not bm!380611) (not b!5326594) (not b!5327341) (not b!5327375) (not b!5327239) (not d!1710802) (not b!5327350) (not b!5327224) (not b!5327165) (not b!5327275) (not d!1710842) (not bm!380564) (not b!5327257) (not bs!1234866) (not b!5327367) (not b!5327288) (not b!5327163) (not d!1710736) (not b!5327135) (not d!1710838) (not b!5327295) (not d!1710872) (not b_lambda!204929) (not d!1710820) (not b!5327376) (not b!5327177) (not b!5327272) (not b!5327313) (not b!5327382) (not d!1710882) (not b!5327241) (not b!5327172) (not bm!380603) (not d!1710734) (not b!5327286) (not b!5327237) (not d!1710866) (not b!5327397) (not b!5327269) (not b!5327336) (not b!5327049) (not b!5327271) (not d!1710828) (not b!5327327) tp_is_empty!39231 (not b!5327225) (not b!5327164) (not b!5327233) (not b!5326967) (not b!5327290) (not b!5327372) (not b!5327258) (not b!5326592) (not d!1710678) (not b!5327273) (not b!5326703) (not bm!380560) (not b!5327368) (not b!5327365) (not b!5326964) (not bm!380565) (not b!5327371) (not b!5327311) (not bm!380607) (not b_lambda!204931) (not setNonEmpty!34323) (not bs!1234865) (not b!5327278) (not b!5327291) (not bm!380581) (not b!5327051) (not b!5327377) (not d!1710822) (not d!1710826) (not d!1710762) (not b!5327034) (not b!5327244) (not d!1710768) (not d!1710806) (not b!5327006) (not d!1710858) (not b!5326587) (not b!5327394) (not b!5327317) (not b!5327256) (not b!5327315) (not d!1710804) (not d!1710886) (not bm!380609) (not b!5327199) (not b!5326713) (not d!1710880) (not b!5326971) (not bm!380592) (not d!1710850) (not b!5327254) (not b!5327396) (not d!1710846) (not b!5327277) (not d!1710856) (not b!5327351) (not d!1710852) (not b!5327323) (not b!5327011) (not b!5327238) (not b!5327392) (not b!5327229) (not b!5327139) (not d!1710832) (not b!5326589) (not b!5327373) (not d!1710854) (not bm!380615) (not b!5327231) (not b!5327009) (not b!5326962) (not b!5327294) (not b!5327343) (not b!5327133) (not b!5327234) (not bm!380582) (not b!5327004) (not bs!1234864) (not bm!380540) (not bm!380606) (not bm!380610) (not b!5327230) (not b!5327228) (not d!1710840) (not d!1710860) (not d!1710732) (not d!1710830) (not b!5327387) (not b!5327395) (not bm!380608) (not b!5327141) (not b!5327322) (not b!5327166) (not d!1710834) (not d!1710812) (not b!5327243) (not bm!380539) (not b!5326963))
(check-sat)
