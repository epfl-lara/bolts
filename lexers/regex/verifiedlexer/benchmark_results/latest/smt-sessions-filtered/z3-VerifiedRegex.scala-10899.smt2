; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563710 () Bool)

(assert start!563710)

(declare-fun b!5353374 () Bool)

(assert (=> b!5353374 true))

(assert (=> b!5353374 true))

(declare-fun lambda!275268 () Int)

(declare-fun lambda!275267 () Int)

(assert (=> b!5353374 (not (= lambda!275268 lambda!275267))))

(assert (=> b!5353374 true))

(assert (=> b!5353374 true))

(declare-fun b!5353362 () Bool)

(assert (=> b!5353362 true))

(declare-fun b!5353361 () Bool)

(declare-fun e!3323050 () Bool)

(declare-fun tp!1487009 () Bool)

(assert (=> b!5353361 (= e!3323050 tp!1487009)))

(declare-fun e!3323045 () Bool)

(declare-fun e!3323047 () Bool)

(assert (=> b!5353362 (= e!3323045 e!3323047)))

(declare-fun res!2271393 () Bool)

(assert (=> b!5353362 (=> res!2271393 e!3323047)))

(declare-datatypes ((C!30360 0))(
  ( (C!30361 (val!24882 Int)) )
))
(declare-datatypes ((Regex!15045 0))(
  ( (ElementMatch!15045 (c!932025 C!30360)) (Concat!23890 (regOne!30602 Regex!15045) (regTwo!30602 Regex!15045)) (EmptyExpr!15045) (Star!15045 (reg!15374 Regex!15045)) (EmptyLang!15045) (Union!15045 (regOne!30603 Regex!15045) (regTwo!30603 Regex!15045)) )
))
(declare-fun r!7292 () Regex!15045)

(declare-datatypes ((List!61434 0))(
  ( (Nil!61310) (Cons!61310 (h!67758 C!30360) (t!374653 List!61434)) )
))
(declare-fun s!2326 () List!61434)

(get-info :version)

(assert (=> b!5353362 (= res!2271393 (or (and ((_ is ElementMatch!15045) (regOne!30602 r!7292)) (= (c!932025 (regOne!30602 r!7292)) (h!67758 s!2326))) ((_ is Union!15045) (regOne!30602 r!7292))))))

(declare-datatypes ((Unit!153698 0))(
  ( (Unit!153699) )
))
(declare-fun lt!2181628 () Unit!153698)

(declare-fun e!3323043 () Unit!153698)

(assert (=> b!5353362 (= lt!2181628 e!3323043)))

(declare-fun c!932024 () Bool)

(declare-datatypes ((List!61435 0))(
  ( (Nil!61311) (Cons!61311 (h!67759 Regex!15045) (t!374654 List!61435)) )
))
(declare-datatypes ((Context!8858 0))(
  ( (Context!8859 (exprs!4929 List!61435)) )
))
(declare-datatypes ((List!61436 0))(
  ( (Nil!61312) (Cons!61312 (h!67760 Context!8858) (t!374655 List!61436)) )
))
(declare-fun zl!343 () List!61436)

(declare-fun nullable!5214 (Regex!15045) Bool)

(assert (=> b!5353362 (= c!932024 (nullable!5214 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun lambda!275269 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8858))

(declare-fun flatMap!772 ((InoxSet Context!8858) Int) (InoxSet Context!8858))

(declare-fun derivationStepZipperUp!417 (Context!8858 C!30360) (InoxSet Context!8858))

(assert (=> b!5353362 (= (flatMap!772 z!1189 lambda!275269) (derivationStepZipperUp!417 (h!67760 zl!343) (h!67758 s!2326)))))

(declare-fun lt!2181629 () Unit!153698)

(declare-fun lemmaFlatMapOnSingletonSet!304 ((InoxSet Context!8858) Context!8858 Int) Unit!153698)

(assert (=> b!5353362 (= lt!2181629 (lemmaFlatMapOnSingletonSet!304 z!1189 (h!67760 zl!343) lambda!275269))))

(declare-fun lt!2181634 () (InoxSet Context!8858))

(declare-fun lt!2181621 () Context!8858)

(assert (=> b!5353362 (= lt!2181634 (derivationStepZipperUp!417 lt!2181621 (h!67758 s!2326)))))

(declare-fun lt!2181618 () (InoxSet Context!8858))

(declare-fun derivationStepZipperDown!493 (Regex!15045 Context!8858 C!30360) (InoxSet Context!8858))

(assert (=> b!5353362 (= lt!2181618 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (h!67760 zl!343))) lt!2181621 (h!67758 s!2326)))))

(assert (=> b!5353362 (= lt!2181621 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun lt!2181627 () (InoxSet Context!8858))

(assert (=> b!5353362 (= lt!2181627 (derivationStepZipperUp!417 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))) (h!67758 s!2326)))))

(declare-fun tp!1487015 () Bool)

(declare-fun e!3323042 () Bool)

(declare-fun e!3323048 () Bool)

(declare-fun b!5353363 () Bool)

(declare-fun inv!80859 (Context!8858) Bool)

(assert (=> b!5353363 (= e!3323042 (and (inv!80859 (h!67760 zl!343)) e!3323048 tp!1487015))))

(declare-fun b!5353364 () Bool)

(declare-fun tp!1487012 () Bool)

(declare-fun tp!1487014 () Bool)

(assert (=> b!5353364 (= e!3323050 (and tp!1487012 tp!1487014))))

(declare-fun b!5353365 () Bool)

(declare-fun e!3323054 () Bool)

(declare-fun tp_is_empty!39343 () Bool)

(declare-fun tp!1487008 () Bool)

(assert (=> b!5353365 (= e!3323054 (and tp_is_empty!39343 tp!1487008))))

(declare-fun b!5353366 () Bool)

(declare-fun res!2271395 () Bool)

(declare-fun e!3323051 () Bool)

(assert (=> b!5353366 (=> res!2271395 e!3323051)))

(assert (=> b!5353366 (= res!2271395 (or ((_ is EmptyExpr!15045) r!7292) ((_ is EmptyLang!15045) r!7292) ((_ is ElementMatch!15045) r!7292) ((_ is Union!15045) r!7292) (not ((_ is Concat!23890) r!7292))))))

(declare-fun b!5353367 () Bool)

(declare-fun e!3323046 () Bool)

(assert (=> b!5353367 (= e!3323046 (not e!3323051))))

(declare-fun res!2271404 () Bool)

(assert (=> b!5353367 (=> res!2271404 e!3323051)))

(assert (=> b!5353367 (= res!2271404 (not ((_ is Cons!61312) zl!343)))))

(declare-fun lt!2181624 () Bool)

(declare-fun matchRSpec!2148 (Regex!15045 List!61434) Bool)

(assert (=> b!5353367 (= lt!2181624 (matchRSpec!2148 r!7292 s!2326))))

(declare-fun matchR!7230 (Regex!15045 List!61434) Bool)

(assert (=> b!5353367 (= lt!2181624 (matchR!7230 r!7292 s!2326))))

(declare-fun lt!2181630 () Unit!153698)

(declare-fun mainMatchTheorem!2148 (Regex!15045 List!61434) Unit!153698)

(assert (=> b!5353367 (= lt!2181630 (mainMatchTheorem!2148 r!7292 s!2326))))

(declare-fun b!5353368 () Bool)

(declare-fun e!3323053 () Bool)

(declare-fun tp!1487011 () Bool)

(assert (=> b!5353368 (= e!3323053 tp!1487011)))

(declare-fun b!5353369 () Bool)

(declare-fun res!2271392 () Bool)

(assert (=> b!5353369 (=> res!2271392 e!3323045)))

(declare-fun isEmpty!33287 (List!61435) Bool)

(assert (=> b!5353369 (= res!2271392 (isEmpty!33287 (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353370 () Bool)

(declare-fun res!2271406 () Bool)

(assert (=> b!5353370 (=> res!2271406 e!3323051)))

(declare-fun generalisedConcat!714 (List!61435) Regex!15045)

(assert (=> b!5353370 (= res!2271406 (not (= r!7292 (generalisedConcat!714 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5353371 () Bool)

(declare-fun e!3323044 () Bool)

(assert (=> b!5353371 (= e!3323044 (nullable!5214 (regOne!30602 (regOne!30602 r!7292))))))

(declare-fun b!5353372 () Bool)

(declare-fun res!2271402 () Bool)

(assert (=> b!5353372 (=> (not res!2271402) (not e!3323046))))

(declare-fun toList!8829 ((InoxSet Context!8858)) List!61436)

(assert (=> b!5353372 (= res!2271402 (= (toList!8829 z!1189) zl!343))))

(declare-fun b!5353373 () Bool)

(declare-fun e!3323049 () Bool)

(declare-fun matchZipper!1289 ((InoxSet Context!8858) List!61434) Bool)

(assert (=> b!5353373 (= e!3323049 (matchZipper!1289 lt!2181634 (t!374653 s!2326)))))

(assert (=> b!5353374 (= e!3323051 e!3323045)))

(declare-fun res!2271401 () Bool)

(assert (=> b!5353374 (=> res!2271401 e!3323045)))

(declare-fun lt!2181625 () Bool)

(assert (=> b!5353374 (= res!2271401 (or (not (= lt!2181624 lt!2181625)) ((_ is Nil!61310) s!2326)))))

(declare-fun Exists!2226 (Int) Bool)

(assert (=> b!5353374 (= (Exists!2226 lambda!275267) (Exists!2226 lambda!275268))))

(declare-fun lt!2181631 () Unit!153698)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!880 (Regex!15045 Regex!15045 List!61434) Unit!153698)

(assert (=> b!5353374 (= lt!2181631 (lemmaExistCutMatchRandMatchRSpecEquivalent!880 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326))))

(assert (=> b!5353374 (= lt!2181625 (Exists!2226 lambda!275267))))

(declare-datatypes ((tuple2!64488 0))(
  ( (tuple2!64489 (_1!35547 List!61434) (_2!35547 List!61434)) )
))
(declare-datatypes ((Option!15156 0))(
  ( (None!15155) (Some!15155 (v!51184 tuple2!64488)) )
))
(declare-fun isDefined!11859 (Option!15156) Bool)

(declare-fun findConcatSeparation!1570 (Regex!15045 Regex!15045 List!61434 List!61434 List!61434) Option!15156)

(assert (=> b!5353374 (= lt!2181625 (isDefined!11859 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326)))))

(declare-fun lt!2181623 () Unit!153698)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1334 (Regex!15045 Regex!15045 List!61434) Unit!153698)

(assert (=> b!5353374 (= lt!2181623 (lemmaFindConcatSeparationEquivalentToExists!1334 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326))))

(declare-fun b!5353375 () Bool)

(declare-fun res!2271399 () Bool)

(assert (=> b!5353375 (=> res!2271399 e!3323047)))

(assert (=> b!5353375 (= res!2271399 (or ((_ is Concat!23890) (regOne!30602 r!7292)) (not ((_ is Star!15045) (regOne!30602 r!7292)))))))

(declare-fun b!5353376 () Bool)

(declare-fun res!2271400 () Bool)

(assert (=> b!5353376 (=> res!2271400 e!3323051)))

(declare-fun generalisedUnion!974 (List!61435) Regex!15045)

(declare-fun unfocusZipperList!487 (List!61436) List!61435)

(assert (=> b!5353376 (= res!2271400 (not (= r!7292 (generalisedUnion!974 (unfocusZipperList!487 zl!343)))))))

(declare-fun b!5353377 () Bool)

(declare-fun Unit!153700 () Unit!153698)

(assert (=> b!5353377 (= e!3323043 Unit!153700)))

(declare-fun b!5353378 () Bool)

(assert (=> b!5353378 (= e!3323050 tp_is_empty!39343)))

(declare-fun b!5353379 () Bool)

(declare-fun res!2271403 () Bool)

(assert (=> b!5353379 (=> res!2271403 e!3323051)))

(assert (=> b!5353379 (= res!2271403 (not ((_ is Cons!61311) (exprs!4929 (h!67760 zl!343)))))))

(declare-fun res!2271398 () Bool)

(assert (=> start!563710 (=> (not res!2271398) (not e!3323046))))

(declare-fun validRegex!6781 (Regex!15045) Bool)

(assert (=> start!563710 (= res!2271398 (validRegex!6781 r!7292))))

(assert (=> start!563710 e!3323046))

(assert (=> start!563710 e!3323050))

(declare-fun condSetEmpty!34599 () Bool)

(assert (=> start!563710 (= condSetEmpty!34599 (= z!1189 ((as const (Array Context!8858 Bool)) false)))))

(declare-fun setRes!34599 () Bool)

(assert (=> start!563710 setRes!34599))

(assert (=> start!563710 e!3323042))

(assert (=> start!563710 e!3323054))

(declare-fun b!5353380 () Bool)

(declare-fun res!2271391 () Bool)

(assert (=> b!5353380 (=> res!2271391 e!3323047)))

(assert (=> b!5353380 (= res!2271391 e!3323044)))

(declare-fun res!2271397 () Bool)

(assert (=> b!5353380 (=> (not res!2271397) (not e!3323044))))

(assert (=> b!5353380 (= res!2271397 ((_ is Concat!23890) (regOne!30602 r!7292)))))

(declare-fun b!5353381 () Bool)

(declare-fun e!3323052 () Bool)

(assert (=> b!5353381 (= e!3323052 (validRegex!6781 (reg!15374 (regOne!30602 r!7292))))))

(declare-fun lt!2181632 () Context!8858)

(declare-fun lt!2181620 () (InoxSet Context!8858))

(assert (=> b!5353381 (= (flatMap!772 lt!2181620 lambda!275269) (derivationStepZipperUp!417 lt!2181632 (h!67758 s!2326)))))

(declare-fun lt!2181626 () Unit!153698)

(assert (=> b!5353381 (= lt!2181626 (lemmaFlatMapOnSingletonSet!304 lt!2181620 lt!2181632 lambda!275269))))

(declare-fun lt!2181633 () (InoxSet Context!8858))

(assert (=> b!5353381 (= lt!2181633 (derivationStepZipperUp!417 lt!2181632 (h!67758 s!2326)))))

(assert (=> b!5353381 (= lt!2181620 (store ((as const (Array Context!8858 Bool)) false) lt!2181632 true))))

(declare-fun lt!2181619 () List!61435)

(assert (=> b!5353381 (= lt!2181632 (Context!8859 (Cons!61311 (reg!15374 (regOne!30602 r!7292)) lt!2181619)))))

(declare-fun b!5353382 () Bool)

(declare-fun res!2271396 () Bool)

(assert (=> b!5353382 (=> res!2271396 e!3323051)))

(declare-fun isEmpty!33288 (List!61436) Bool)

(assert (=> b!5353382 (= res!2271396 (not (isEmpty!33288 (t!374655 zl!343))))))

(declare-fun setNonEmpty!34599 () Bool)

(declare-fun tp!1487013 () Bool)

(declare-fun setElem!34599 () Context!8858)

(assert (=> setNonEmpty!34599 (= setRes!34599 (and tp!1487013 (inv!80859 setElem!34599) e!3323053))))

(declare-fun setRest!34599 () (InoxSet Context!8858))

(assert (=> setNonEmpty!34599 (= z!1189 ((_ map or) (store ((as const (Array Context!8858 Bool)) false) setElem!34599 true) setRest!34599))))

(declare-fun b!5353383 () Bool)

(declare-fun res!2271394 () Bool)

(assert (=> b!5353383 (=> (not res!2271394) (not e!3323046))))

(declare-fun unfocusZipper!787 (List!61436) Regex!15045)

(assert (=> b!5353383 (= res!2271394 (= r!7292 (unfocusZipper!787 zl!343)))))

(declare-fun setIsEmpty!34599 () Bool)

(assert (=> setIsEmpty!34599 setRes!34599))

(declare-fun b!5353384 () Bool)

(declare-fun tp!1487010 () Bool)

(declare-fun tp!1487016 () Bool)

(assert (=> b!5353384 (= e!3323050 (and tp!1487010 tp!1487016))))

(declare-fun b!5353385 () Bool)

(assert (=> b!5353385 (= e!3323047 e!3323052)))

(declare-fun res!2271407 () Bool)

(assert (=> b!5353385 (=> res!2271407 e!3323052)))

(assert (=> b!5353385 (= res!2271407 (not (= lt!2181618 (derivationStepZipperDown!493 (reg!15374 (regOne!30602 r!7292)) (Context!8859 lt!2181619) (h!67758 s!2326)))))))

(assert (=> b!5353385 (= lt!2181619 (Cons!61311 (Star!15045 (reg!15374 (regOne!30602 r!7292))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353386 () Bool)

(declare-fun tp!1487017 () Bool)

(assert (=> b!5353386 (= e!3323048 tp!1487017)))

(declare-fun b!5353387 () Bool)

(declare-fun Unit!153701 () Unit!153698)

(assert (=> b!5353387 (= e!3323043 Unit!153701)))

(declare-fun lt!2181622 () Unit!153698)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!282 ((InoxSet Context!8858) (InoxSet Context!8858) List!61434) Unit!153698)

(assert (=> b!5353387 (= lt!2181622 (lemmaZipperConcatMatchesSameAsBothZippers!282 lt!2181618 lt!2181634 (t!374653 s!2326)))))

(declare-fun res!2271405 () Bool)

(assert (=> b!5353387 (= res!2271405 (matchZipper!1289 lt!2181618 (t!374653 s!2326)))))

(assert (=> b!5353387 (=> res!2271405 e!3323049)))

(assert (=> b!5353387 (= (matchZipper!1289 ((_ map or) lt!2181618 lt!2181634) (t!374653 s!2326)) e!3323049)))

(assert (= (and start!563710 res!2271398) b!5353372))

(assert (= (and b!5353372 res!2271402) b!5353383))

(assert (= (and b!5353383 res!2271394) b!5353367))

(assert (= (and b!5353367 (not res!2271404)) b!5353382))

(assert (= (and b!5353382 (not res!2271396)) b!5353370))

(assert (= (and b!5353370 (not res!2271406)) b!5353379))

(assert (= (and b!5353379 (not res!2271403)) b!5353376))

(assert (= (and b!5353376 (not res!2271400)) b!5353366))

(assert (= (and b!5353366 (not res!2271395)) b!5353374))

(assert (= (and b!5353374 (not res!2271401)) b!5353369))

(assert (= (and b!5353369 (not res!2271392)) b!5353362))

(assert (= (and b!5353362 c!932024) b!5353387))

(assert (= (and b!5353362 (not c!932024)) b!5353377))

(assert (= (and b!5353387 (not res!2271405)) b!5353373))

(assert (= (and b!5353362 (not res!2271393)) b!5353380))

(assert (= (and b!5353380 res!2271397) b!5353371))

(assert (= (and b!5353380 (not res!2271391)) b!5353375))

(assert (= (and b!5353375 (not res!2271399)) b!5353385))

(assert (= (and b!5353385 (not res!2271407)) b!5353381))

(assert (= (and start!563710 ((_ is ElementMatch!15045) r!7292)) b!5353378))

(assert (= (and start!563710 ((_ is Concat!23890) r!7292)) b!5353364))

(assert (= (and start!563710 ((_ is Star!15045) r!7292)) b!5353361))

(assert (= (and start!563710 ((_ is Union!15045) r!7292)) b!5353384))

(assert (= (and start!563710 condSetEmpty!34599) setIsEmpty!34599))

(assert (= (and start!563710 (not condSetEmpty!34599)) setNonEmpty!34599))

(assert (= setNonEmpty!34599 b!5353368))

(assert (= b!5353363 b!5353386))

(assert (= (and start!563710 ((_ is Cons!61312) zl!343)) b!5353363))

(assert (= (and start!563710 ((_ is Cons!61310) s!2326)) b!5353365))

(declare-fun m!6383770 () Bool)

(assert (=> b!5353373 m!6383770))

(declare-fun m!6383772 () Bool)

(assert (=> b!5353370 m!6383772))

(declare-fun m!6383774 () Bool)

(assert (=> b!5353362 m!6383774))

(declare-fun m!6383776 () Bool)

(assert (=> b!5353362 m!6383776))

(declare-fun m!6383778 () Bool)

(assert (=> b!5353362 m!6383778))

(declare-fun m!6383780 () Bool)

(assert (=> b!5353362 m!6383780))

(declare-fun m!6383782 () Bool)

(assert (=> b!5353362 m!6383782))

(declare-fun m!6383784 () Bool)

(assert (=> b!5353362 m!6383784))

(declare-fun m!6383786 () Bool)

(assert (=> b!5353362 m!6383786))

(declare-fun m!6383788 () Bool)

(assert (=> b!5353372 m!6383788))

(declare-fun m!6383790 () Bool)

(assert (=> b!5353363 m!6383790))

(declare-fun m!6383792 () Bool)

(assert (=> b!5353383 m!6383792))

(declare-fun m!6383794 () Bool)

(assert (=> b!5353374 m!6383794))

(declare-fun m!6383796 () Bool)

(assert (=> b!5353374 m!6383796))

(declare-fun m!6383798 () Bool)

(assert (=> b!5353374 m!6383798))

(declare-fun m!6383800 () Bool)

(assert (=> b!5353374 m!6383800))

(assert (=> b!5353374 m!6383794))

(declare-fun m!6383802 () Bool)

(assert (=> b!5353374 m!6383802))

(assert (=> b!5353374 m!6383796))

(declare-fun m!6383804 () Bool)

(assert (=> b!5353374 m!6383804))

(declare-fun m!6383806 () Bool)

(assert (=> setNonEmpty!34599 m!6383806))

(declare-fun m!6383808 () Bool)

(assert (=> b!5353385 m!6383808))

(declare-fun m!6383810 () Bool)

(assert (=> b!5353376 m!6383810))

(assert (=> b!5353376 m!6383810))

(declare-fun m!6383812 () Bool)

(assert (=> b!5353376 m!6383812))

(declare-fun m!6383814 () Bool)

(assert (=> b!5353381 m!6383814))

(declare-fun m!6383816 () Bool)

(assert (=> b!5353381 m!6383816))

(declare-fun m!6383818 () Bool)

(assert (=> b!5353381 m!6383818))

(declare-fun m!6383820 () Bool)

(assert (=> b!5353381 m!6383820))

(declare-fun m!6383822 () Bool)

(assert (=> b!5353381 m!6383822))

(declare-fun m!6383824 () Bool)

(assert (=> b!5353382 m!6383824))

(declare-fun m!6383826 () Bool)

(assert (=> b!5353367 m!6383826))

(declare-fun m!6383828 () Bool)

(assert (=> b!5353367 m!6383828))

(declare-fun m!6383830 () Bool)

(assert (=> b!5353367 m!6383830))

(declare-fun m!6383832 () Bool)

(assert (=> start!563710 m!6383832))

(declare-fun m!6383834 () Bool)

(assert (=> b!5353371 m!6383834))

(declare-fun m!6383836 () Bool)

(assert (=> b!5353369 m!6383836))

(declare-fun m!6383838 () Bool)

(assert (=> b!5353387 m!6383838))

(declare-fun m!6383840 () Bool)

(assert (=> b!5353387 m!6383840))

(declare-fun m!6383842 () Bool)

(assert (=> b!5353387 m!6383842))

(check-sat (not b!5353374) (not b!5353365) tp_is_empty!39343 (not b!5353386) (not b!5353373) (not b!5353370) (not start!563710) (not b!5353382) (not b!5353385) (not b!5353369) (not b!5353372) (not b!5353364) (not b!5353387) (not b!5353384) (not b!5353381) (not b!5353368) (not b!5353383) (not b!5353363) (not b!5353376) (not b!5353371) (not setNonEmpty!34599) (not b!5353367) (not b!5353362) (not b!5353361))
(check-sat)
(get-model)

(declare-fun d!1716290 () Bool)

(declare-fun e!3323137 () Bool)

(assert (=> d!1716290 (= (matchZipper!1289 ((_ map or) lt!2181618 lt!2181634) (t!374653 s!2326)) e!3323137)))

(declare-fun res!2271470 () Bool)

(assert (=> d!1716290 (=> res!2271470 e!3323137)))

(assert (=> d!1716290 (= res!2271470 (matchZipper!1289 lt!2181618 (t!374653 s!2326)))))

(declare-fun lt!2181663 () Unit!153698)

(declare-fun choose!40175 ((InoxSet Context!8858) (InoxSet Context!8858) List!61434) Unit!153698)

(assert (=> d!1716290 (= lt!2181663 (choose!40175 lt!2181618 lt!2181634 (t!374653 s!2326)))))

(assert (=> d!1716290 (= (lemmaZipperConcatMatchesSameAsBothZippers!282 lt!2181618 lt!2181634 (t!374653 s!2326)) lt!2181663)))

(declare-fun b!5353520 () Bool)

(assert (=> b!5353520 (= e!3323137 (matchZipper!1289 lt!2181634 (t!374653 s!2326)))))

(assert (= (and d!1716290 (not res!2271470)) b!5353520))

(assert (=> d!1716290 m!6383842))

(assert (=> d!1716290 m!6383840))

(declare-fun m!6383940 () Bool)

(assert (=> d!1716290 m!6383940))

(assert (=> b!5353520 m!6383770))

(assert (=> b!5353387 d!1716290))

(declare-fun d!1716302 () Bool)

(declare-fun c!932072 () Bool)

(declare-fun isEmpty!33291 (List!61434) Bool)

(assert (=> d!1716302 (= c!932072 (isEmpty!33291 (t!374653 s!2326)))))

(declare-fun e!3323158 () Bool)

(assert (=> d!1716302 (= (matchZipper!1289 lt!2181618 (t!374653 s!2326)) e!3323158)))

(declare-fun b!5353555 () Bool)

(declare-fun nullableZipper!1382 ((InoxSet Context!8858)) Bool)

(assert (=> b!5353555 (= e!3323158 (nullableZipper!1382 lt!2181618))))

(declare-fun b!5353556 () Bool)

(declare-fun derivationStepZipper!1284 ((InoxSet Context!8858) C!30360) (InoxSet Context!8858))

(declare-fun head!11482 (List!61434) C!30360)

(declare-fun tail!10579 (List!61434) List!61434)

(assert (=> b!5353556 (= e!3323158 (matchZipper!1289 (derivationStepZipper!1284 lt!2181618 (head!11482 (t!374653 s!2326))) (tail!10579 (t!374653 s!2326))))))

(assert (= (and d!1716302 c!932072) b!5353555))

(assert (= (and d!1716302 (not c!932072)) b!5353556))

(declare-fun m!6383960 () Bool)

(assert (=> d!1716302 m!6383960))

(declare-fun m!6383962 () Bool)

(assert (=> b!5353555 m!6383962))

(declare-fun m!6383964 () Bool)

(assert (=> b!5353556 m!6383964))

(assert (=> b!5353556 m!6383964))

(declare-fun m!6383966 () Bool)

(assert (=> b!5353556 m!6383966))

(declare-fun m!6383968 () Bool)

(assert (=> b!5353556 m!6383968))

(assert (=> b!5353556 m!6383966))

(assert (=> b!5353556 m!6383968))

(declare-fun m!6383970 () Bool)

(assert (=> b!5353556 m!6383970))

(assert (=> b!5353387 d!1716302))

(declare-fun d!1716306 () Bool)

(declare-fun c!932073 () Bool)

(assert (=> d!1716306 (= c!932073 (isEmpty!33291 (t!374653 s!2326)))))

(declare-fun e!3323159 () Bool)

(assert (=> d!1716306 (= (matchZipper!1289 ((_ map or) lt!2181618 lt!2181634) (t!374653 s!2326)) e!3323159)))

(declare-fun b!5353557 () Bool)

(assert (=> b!5353557 (= e!3323159 (nullableZipper!1382 ((_ map or) lt!2181618 lt!2181634)))))

(declare-fun b!5353558 () Bool)

(assert (=> b!5353558 (= e!3323159 (matchZipper!1289 (derivationStepZipper!1284 ((_ map or) lt!2181618 lt!2181634) (head!11482 (t!374653 s!2326))) (tail!10579 (t!374653 s!2326))))))

(assert (= (and d!1716306 c!932073) b!5353557))

(assert (= (and d!1716306 (not c!932073)) b!5353558))

(assert (=> d!1716306 m!6383960))

(declare-fun m!6383972 () Bool)

(assert (=> b!5353557 m!6383972))

(assert (=> b!5353558 m!6383964))

(assert (=> b!5353558 m!6383964))

(declare-fun m!6383974 () Bool)

(assert (=> b!5353558 m!6383974))

(assert (=> b!5353558 m!6383968))

(assert (=> b!5353558 m!6383974))

(assert (=> b!5353558 m!6383968))

(declare-fun m!6383976 () Bool)

(assert (=> b!5353558 m!6383976))

(assert (=> b!5353387 d!1716306))

(declare-fun b!5353633 () Bool)

(declare-fun e!3323206 () Regex!15045)

(assert (=> b!5353633 (= e!3323206 (Concat!23890 (h!67759 (exprs!4929 (h!67760 zl!343))) (generalisedConcat!714 (t!374654 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5353634 () Bool)

(declare-fun e!3323203 () Bool)

(declare-fun lt!2181673 () Regex!15045)

(declare-fun head!11483 (List!61435) Regex!15045)

(assert (=> b!5353634 (= e!3323203 (= lt!2181673 (head!11483 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353635 () Bool)

(declare-fun e!3323205 () Bool)

(declare-fun e!3323207 () Bool)

(assert (=> b!5353635 (= e!3323205 e!3323207)))

(declare-fun c!932107 () Bool)

(assert (=> b!5353635 (= c!932107 (isEmpty!33287 (exprs!4929 (h!67760 zl!343))))))

(declare-fun b!5353636 () Bool)

(declare-fun isConcat!440 (Regex!15045) Bool)

(assert (=> b!5353636 (= e!3323203 (isConcat!440 lt!2181673))))

(declare-fun b!5353637 () Bool)

(declare-fun e!3323204 () Bool)

(assert (=> b!5353637 (= e!3323204 (isEmpty!33287 (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353638 () Bool)

(assert (=> b!5353638 (= e!3323207 e!3323203)))

(declare-fun c!932108 () Bool)

(declare-fun tail!10580 (List!61435) List!61435)

(assert (=> b!5353638 (= c!932108 (isEmpty!33287 (tail!10580 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353639 () Bool)

(declare-fun isEmptyExpr!917 (Regex!15045) Bool)

(assert (=> b!5353639 (= e!3323207 (isEmptyExpr!917 lt!2181673))))

(declare-fun b!5353640 () Bool)

(declare-fun e!3323202 () Regex!15045)

(assert (=> b!5353640 (= e!3323202 (h!67759 (exprs!4929 (h!67760 zl!343))))))

(declare-fun d!1716308 () Bool)

(assert (=> d!1716308 e!3323205))

(declare-fun res!2271488 () Bool)

(assert (=> d!1716308 (=> (not res!2271488) (not e!3323205))))

(assert (=> d!1716308 (= res!2271488 (validRegex!6781 lt!2181673))))

(assert (=> d!1716308 (= lt!2181673 e!3323202)))

(declare-fun c!932106 () Bool)

(assert (=> d!1716308 (= c!932106 e!3323204)))

(declare-fun res!2271487 () Bool)

(assert (=> d!1716308 (=> (not res!2271487) (not e!3323204))))

(assert (=> d!1716308 (= res!2271487 ((_ is Cons!61311) (exprs!4929 (h!67760 zl!343))))))

(declare-fun lambda!275294 () Int)

(declare-fun forall!14469 (List!61435 Int) Bool)

(assert (=> d!1716308 (forall!14469 (exprs!4929 (h!67760 zl!343)) lambda!275294)))

(assert (=> d!1716308 (= (generalisedConcat!714 (exprs!4929 (h!67760 zl!343))) lt!2181673)))

(declare-fun b!5353641 () Bool)

(assert (=> b!5353641 (= e!3323206 EmptyExpr!15045)))

(declare-fun b!5353642 () Bool)

(assert (=> b!5353642 (= e!3323202 e!3323206)))

(declare-fun c!932109 () Bool)

(assert (=> b!5353642 (= c!932109 ((_ is Cons!61311) (exprs!4929 (h!67760 zl!343))))))

(assert (= (and d!1716308 res!2271487) b!5353637))

(assert (= (and d!1716308 c!932106) b!5353640))

(assert (= (and d!1716308 (not c!932106)) b!5353642))

(assert (= (and b!5353642 c!932109) b!5353633))

(assert (= (and b!5353642 (not c!932109)) b!5353641))

(assert (= (and d!1716308 res!2271488) b!5353635))

(assert (= (and b!5353635 c!932107) b!5353639))

(assert (= (and b!5353635 (not c!932107)) b!5353638))

(assert (= (and b!5353638 c!932108) b!5353634))

(assert (= (and b!5353638 (not c!932108)) b!5353636))

(declare-fun m!6384032 () Bool)

(assert (=> b!5353635 m!6384032))

(declare-fun m!6384034 () Bool)

(assert (=> b!5353636 m!6384034))

(declare-fun m!6384036 () Bool)

(assert (=> d!1716308 m!6384036))

(declare-fun m!6384042 () Bool)

(assert (=> d!1716308 m!6384042))

(declare-fun m!6384046 () Bool)

(assert (=> b!5353634 m!6384046))

(assert (=> b!5353637 m!6383836))

(declare-fun m!6384050 () Bool)

(assert (=> b!5353633 m!6384050))

(declare-fun m!6384054 () Bool)

(assert (=> b!5353639 m!6384054))

(declare-fun m!6384056 () Bool)

(assert (=> b!5353638 m!6384056))

(assert (=> b!5353638 m!6384056))

(declare-fun m!6384058 () Bool)

(assert (=> b!5353638 m!6384058))

(assert (=> b!5353370 d!1716308))

(declare-fun d!1716328 () Bool)

(assert (=> d!1716328 (= (isEmpty!33287 (t!374654 (exprs!4929 (h!67760 zl!343)))) ((_ is Nil!61311) (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(assert (=> b!5353369 d!1716328))

(declare-fun d!1716332 () Bool)

(declare-fun nullableFct!1534 (Regex!15045) Bool)

(assert (=> d!1716332 (= (nullable!5214 (regOne!30602 (regOne!30602 r!7292))) (nullableFct!1534 (regOne!30602 (regOne!30602 r!7292))))))

(declare-fun bs!1240883 () Bool)

(assert (= bs!1240883 d!1716332))

(declare-fun m!6384066 () Bool)

(assert (=> bs!1240883 m!6384066))

(assert (=> b!5353371 d!1716332))

(declare-fun d!1716334 () Bool)

(assert (=> d!1716334 (= (isEmpty!33288 (t!374655 zl!343)) ((_ is Nil!61312) (t!374655 zl!343)))))

(assert (=> b!5353382 d!1716334))

(declare-fun b!5353725 () Bool)

(declare-fun e!3323259 () Bool)

(declare-fun call!382833 () Bool)

(assert (=> b!5353725 (= e!3323259 call!382833)))

(declare-fun b!5353726 () Bool)

(declare-fun e!3323265 () Bool)

(declare-fun e!3323264 () Bool)

(assert (=> b!5353726 (= e!3323265 e!3323264)))

(declare-fun res!2271525 () Bool)

(assert (=> b!5353726 (=> (not res!2271525) (not e!3323264))))

(declare-fun call!382834 () Bool)

(assert (=> b!5353726 (= res!2271525 call!382834)))

(declare-fun b!5353727 () Bool)

(assert (=> b!5353727 (= e!3323264 call!382833)))

(declare-fun call!382835 () Bool)

(declare-fun c!932135 () Bool)

(declare-fun c!932136 () Bool)

(declare-fun bm!382828 () Bool)

(assert (=> bm!382828 (= call!382835 (validRegex!6781 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(declare-fun b!5353728 () Bool)

(declare-fun e!3323260 () Bool)

(declare-fun e!3323263 () Bool)

(assert (=> b!5353728 (= e!3323260 e!3323263)))

(assert (=> b!5353728 (= c!932136 ((_ is Union!15045) (reg!15374 (regOne!30602 r!7292))))))

(declare-fun b!5353729 () Bool)

(declare-fun e!3323262 () Bool)

(assert (=> b!5353729 (= e!3323262 call!382835)))

(declare-fun b!5353730 () Bool)

(assert (=> b!5353730 (= e!3323260 e!3323262)))

(declare-fun res!2271522 () Bool)

(assert (=> b!5353730 (= res!2271522 (not (nullable!5214 (reg!15374 (reg!15374 (regOne!30602 r!7292))))))))

(assert (=> b!5353730 (=> (not res!2271522) (not e!3323262))))

(declare-fun b!5353731 () Bool)

(declare-fun e!3323261 () Bool)

(assert (=> b!5353731 (= e!3323261 e!3323260)))

(assert (=> b!5353731 (= c!932135 ((_ is Star!15045) (reg!15374 (regOne!30602 r!7292))))))

(declare-fun d!1716336 () Bool)

(declare-fun res!2271523 () Bool)

(assert (=> d!1716336 (=> res!2271523 e!3323261)))

(assert (=> d!1716336 (= res!2271523 ((_ is ElementMatch!15045) (reg!15374 (regOne!30602 r!7292))))))

(assert (=> d!1716336 (= (validRegex!6781 (reg!15374 (regOne!30602 r!7292))) e!3323261)))

(declare-fun b!5353732 () Bool)

(declare-fun res!2271521 () Bool)

(assert (=> b!5353732 (=> (not res!2271521) (not e!3323259))))

(assert (=> b!5353732 (= res!2271521 call!382834)))

(assert (=> b!5353732 (= e!3323263 e!3323259)))

(declare-fun b!5353733 () Bool)

(declare-fun res!2271524 () Bool)

(assert (=> b!5353733 (=> res!2271524 e!3323265)))

(assert (=> b!5353733 (= res!2271524 (not ((_ is Concat!23890) (reg!15374 (regOne!30602 r!7292)))))))

(assert (=> b!5353733 (= e!3323263 e!3323265)))

(declare-fun bm!382829 () Bool)

(assert (=> bm!382829 (= call!382834 (validRegex!6781 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun bm!382830 () Bool)

(assert (=> bm!382830 (= call!382833 call!382835)))

(assert (= (and d!1716336 (not res!2271523)) b!5353731))

(assert (= (and b!5353731 c!932135) b!5353730))

(assert (= (and b!5353731 (not c!932135)) b!5353728))

(assert (= (and b!5353730 res!2271522) b!5353729))

(assert (= (and b!5353728 c!932136) b!5353732))

(assert (= (and b!5353728 (not c!932136)) b!5353733))

(assert (= (and b!5353732 res!2271521) b!5353725))

(assert (= (and b!5353733 (not res!2271524)) b!5353726))

(assert (= (and b!5353726 res!2271525) b!5353727))

(assert (= (or b!5353725 b!5353727) bm!382830))

(assert (= (or b!5353732 b!5353726) bm!382829))

(assert (= (or b!5353729 bm!382830) bm!382828))

(declare-fun m!6384076 () Bool)

(assert (=> bm!382828 m!6384076))

(declare-fun m!6384078 () Bool)

(assert (=> b!5353730 m!6384078))

(declare-fun m!6384080 () Bool)

(assert (=> bm!382829 m!6384080))

(assert (=> b!5353381 d!1716336))

(declare-fun d!1716340 () Bool)

(declare-fun choose!40177 ((InoxSet Context!8858) Int) (InoxSet Context!8858))

(assert (=> d!1716340 (= (flatMap!772 lt!2181620 lambda!275269) (choose!40177 lt!2181620 lambda!275269))))

(declare-fun bs!1240891 () Bool)

(assert (= bs!1240891 d!1716340))

(declare-fun m!6384082 () Bool)

(assert (=> bs!1240891 m!6384082))

(assert (=> b!5353381 d!1716340))

(declare-fun d!1716342 () Bool)

(declare-fun c!932151 () Bool)

(declare-fun e!3323295 () Bool)

(assert (=> d!1716342 (= c!932151 e!3323295)))

(declare-fun res!2271552 () Bool)

(assert (=> d!1716342 (=> (not res!2271552) (not e!3323295))))

(assert (=> d!1716342 (= res!2271552 ((_ is Cons!61311) (exprs!4929 lt!2181632)))))

(declare-fun e!3323293 () (InoxSet Context!8858))

(assert (=> d!1716342 (= (derivationStepZipperUp!417 lt!2181632 (h!67758 s!2326)) e!3323293)))

(declare-fun b!5353786 () Bool)

(declare-fun call!382841 () (InoxSet Context!8858))

(assert (=> b!5353786 (= e!3323293 ((_ map or) call!382841 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 lt!2181632))) (h!67758 s!2326))))))

(declare-fun b!5353787 () Bool)

(declare-fun e!3323294 () (InoxSet Context!8858))

(assert (=> b!5353787 (= e!3323293 e!3323294)))

(declare-fun c!932150 () Bool)

(assert (=> b!5353787 (= c!932150 ((_ is Cons!61311) (exprs!4929 lt!2181632)))))

(declare-fun b!5353788 () Bool)

(assert (=> b!5353788 (= e!3323294 call!382841)))

(declare-fun b!5353789 () Bool)

(assert (=> b!5353789 (= e!3323294 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5353790 () Bool)

(assert (=> b!5353790 (= e!3323295 (nullable!5214 (h!67759 (exprs!4929 lt!2181632))))))

(declare-fun bm!382836 () Bool)

(assert (=> bm!382836 (= call!382841 (derivationStepZipperDown!493 (h!67759 (exprs!4929 lt!2181632)) (Context!8859 (t!374654 (exprs!4929 lt!2181632))) (h!67758 s!2326)))))

(assert (= (and d!1716342 res!2271552) b!5353790))

(assert (= (and d!1716342 c!932151) b!5353786))

(assert (= (and d!1716342 (not c!932151)) b!5353787))

(assert (= (and b!5353787 c!932150) b!5353788))

(assert (= (and b!5353787 (not c!932150)) b!5353789))

(assert (= (or b!5353786 b!5353788) bm!382836))

(declare-fun m!6384096 () Bool)

(assert (=> b!5353786 m!6384096))

(declare-fun m!6384098 () Bool)

(assert (=> b!5353790 m!6384098))

(declare-fun m!6384100 () Bool)

(assert (=> bm!382836 m!6384100))

(assert (=> b!5353381 d!1716342))

(declare-fun d!1716346 () Bool)

(declare-fun dynLambda!24233 (Int Context!8858) (InoxSet Context!8858))

(assert (=> d!1716346 (= (flatMap!772 lt!2181620 lambda!275269) (dynLambda!24233 lambda!275269 lt!2181632))))

(declare-fun lt!2181686 () Unit!153698)

(declare-fun choose!40178 ((InoxSet Context!8858) Context!8858 Int) Unit!153698)

(assert (=> d!1716346 (= lt!2181686 (choose!40178 lt!2181620 lt!2181632 lambda!275269))))

(assert (=> d!1716346 (= lt!2181620 (store ((as const (Array Context!8858 Bool)) false) lt!2181632 true))))

(assert (=> d!1716346 (= (lemmaFlatMapOnSingletonSet!304 lt!2181620 lt!2181632 lambda!275269) lt!2181686)))

(declare-fun b_lambda!205385 () Bool)

(assert (=> (not b_lambda!205385) (not d!1716346)))

(declare-fun bs!1240894 () Bool)

(assert (= bs!1240894 d!1716346))

(assert (=> bs!1240894 m!6383818))

(declare-fun m!6384114 () Bool)

(assert (=> bs!1240894 m!6384114))

(declare-fun m!6384116 () Bool)

(assert (=> bs!1240894 m!6384116))

(assert (=> bs!1240894 m!6383822))

(assert (=> b!5353381 d!1716346))

(declare-fun bs!1240897 () Bool)

(declare-fun d!1716352 () Bool)

(assert (= bs!1240897 (and d!1716352 d!1716308)))

(declare-fun lambda!275303 () Int)

(assert (=> bs!1240897 (= lambda!275303 lambda!275294)))

(assert (=> d!1716352 (= (inv!80859 setElem!34599) (forall!14469 (exprs!4929 setElem!34599) lambda!275303))))

(declare-fun bs!1240898 () Bool)

(assert (= bs!1240898 d!1716352))

(declare-fun m!6384120 () Bool)

(assert (=> bs!1240898 m!6384120))

(assert (=> setNonEmpty!34599 d!1716352))

(declare-fun d!1716358 () Bool)

(declare-fun c!932154 () Bool)

(declare-fun e!3323322 () Bool)

(assert (=> d!1716358 (= c!932154 e!3323322)))

(declare-fun res!2271553 () Bool)

(assert (=> d!1716358 (=> (not res!2271553) (not e!3323322))))

(assert (=> d!1716358 (= res!2271553 ((_ is Cons!61311) (exprs!4929 lt!2181621)))))

(declare-fun e!3323320 () (InoxSet Context!8858))

(assert (=> d!1716358 (= (derivationStepZipperUp!417 lt!2181621 (h!67758 s!2326)) e!3323320)))

(declare-fun b!5353847 () Bool)

(declare-fun call!382842 () (InoxSet Context!8858))

(assert (=> b!5353847 (= e!3323320 ((_ map or) call!382842 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 lt!2181621))) (h!67758 s!2326))))))

(declare-fun b!5353848 () Bool)

(declare-fun e!3323321 () (InoxSet Context!8858))

(assert (=> b!5353848 (= e!3323320 e!3323321)))

(declare-fun c!932153 () Bool)

(assert (=> b!5353848 (= c!932153 ((_ is Cons!61311) (exprs!4929 lt!2181621)))))

(declare-fun b!5353849 () Bool)

(assert (=> b!5353849 (= e!3323321 call!382842)))

(declare-fun b!5353850 () Bool)

(assert (=> b!5353850 (= e!3323321 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5353851 () Bool)

(assert (=> b!5353851 (= e!3323322 (nullable!5214 (h!67759 (exprs!4929 lt!2181621))))))

(declare-fun bm!382837 () Bool)

(assert (=> bm!382837 (= call!382842 (derivationStepZipperDown!493 (h!67759 (exprs!4929 lt!2181621)) (Context!8859 (t!374654 (exprs!4929 lt!2181621))) (h!67758 s!2326)))))

(assert (= (and d!1716358 res!2271553) b!5353851))

(assert (= (and d!1716358 c!932154) b!5353847))

(assert (= (and d!1716358 (not c!932154)) b!5353848))

(assert (= (and b!5353848 c!932153) b!5353849))

(assert (= (and b!5353848 (not c!932153)) b!5353850))

(assert (= (or b!5353847 b!5353849) bm!382837))

(declare-fun m!6384122 () Bool)

(assert (=> b!5353847 m!6384122))

(declare-fun m!6384124 () Bool)

(assert (=> b!5353851 m!6384124))

(declare-fun m!6384126 () Bool)

(assert (=> bm!382837 m!6384126))

(assert (=> b!5353362 d!1716358))

(declare-fun d!1716360 () Bool)

(assert (=> d!1716360 (= (nullable!5214 (h!67759 (exprs!4929 (h!67760 zl!343)))) (nullableFct!1534 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun bs!1240899 () Bool)

(assert (= bs!1240899 d!1716360))

(declare-fun m!6384128 () Bool)

(assert (=> bs!1240899 m!6384128))

(assert (=> b!5353362 d!1716360))

(declare-fun d!1716362 () Bool)

(declare-fun c!932156 () Bool)

(declare-fun e!3323325 () Bool)

(assert (=> d!1716362 (= c!932156 e!3323325)))

(declare-fun res!2271554 () Bool)

(assert (=> d!1716362 (=> (not res!2271554) (not e!3323325))))

(assert (=> d!1716362 (= res!2271554 ((_ is Cons!61311) (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))

(declare-fun e!3323323 () (InoxSet Context!8858))

(assert (=> d!1716362 (= (derivationStepZipperUp!417 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))) (h!67758 s!2326)) e!3323323)))

(declare-fun call!382843 () (InoxSet Context!8858))

(declare-fun b!5353852 () Bool)

(assert (=> b!5353852 (= e!3323323 ((_ map or) call!382843 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (h!67758 s!2326))))))

(declare-fun b!5353853 () Bool)

(declare-fun e!3323324 () (InoxSet Context!8858))

(assert (=> b!5353853 (= e!3323323 e!3323324)))

(declare-fun c!932155 () Bool)

(assert (=> b!5353853 (= c!932155 ((_ is Cons!61311) (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))

(declare-fun b!5353854 () Bool)

(assert (=> b!5353854 (= e!3323324 call!382843)))

(declare-fun b!5353855 () Bool)

(assert (=> b!5353855 (= e!3323324 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5353856 () Bool)

(assert (=> b!5353856 (= e!3323325 (nullable!5214 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun bm!382838 () Bool)

(assert (=> bm!382838 (= call!382843 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (h!67758 s!2326)))))

(assert (= (and d!1716362 res!2271554) b!5353856))

(assert (= (and d!1716362 c!932156) b!5353852))

(assert (= (and d!1716362 (not c!932156)) b!5353853))

(assert (= (and b!5353853 c!932155) b!5353854))

(assert (= (and b!5353853 (not c!932155)) b!5353855))

(assert (= (or b!5353852 b!5353854) bm!382838))

(declare-fun m!6384130 () Bool)

(assert (=> b!5353852 m!6384130))

(declare-fun m!6384132 () Bool)

(assert (=> b!5353856 m!6384132))

(declare-fun m!6384134 () Bool)

(assert (=> bm!382838 m!6384134))

(assert (=> b!5353362 d!1716362))

(declare-fun d!1716364 () Bool)

(assert (=> d!1716364 (= (flatMap!772 z!1189 lambda!275269) (choose!40177 z!1189 lambda!275269))))

(declare-fun bs!1240900 () Bool)

(assert (= bs!1240900 d!1716364))

(declare-fun m!6384136 () Bool)

(assert (=> bs!1240900 m!6384136))

(assert (=> b!5353362 d!1716364))

(declare-fun d!1716366 () Bool)

(declare-fun c!932158 () Bool)

(declare-fun e!3323328 () Bool)

(assert (=> d!1716366 (= c!932158 e!3323328)))

(declare-fun res!2271555 () Bool)

(assert (=> d!1716366 (=> (not res!2271555) (not e!3323328))))

(assert (=> d!1716366 (= res!2271555 ((_ is Cons!61311) (exprs!4929 (h!67760 zl!343))))))

(declare-fun e!3323326 () (InoxSet Context!8858))

(assert (=> d!1716366 (= (derivationStepZipperUp!417 (h!67760 zl!343) (h!67758 s!2326)) e!3323326)))

(declare-fun b!5353857 () Bool)

(declare-fun call!382844 () (InoxSet Context!8858))

(assert (=> b!5353857 (= e!3323326 ((_ map or) call!382844 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) (h!67758 s!2326))))))

(declare-fun b!5353858 () Bool)

(declare-fun e!3323327 () (InoxSet Context!8858))

(assert (=> b!5353858 (= e!3323326 e!3323327)))

(declare-fun c!932157 () Bool)

(assert (=> b!5353858 (= c!932157 ((_ is Cons!61311) (exprs!4929 (h!67760 zl!343))))))

(declare-fun b!5353859 () Bool)

(assert (=> b!5353859 (= e!3323327 call!382844)))

(declare-fun b!5353860 () Bool)

(assert (=> b!5353860 (= e!3323327 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5353861 () Bool)

(assert (=> b!5353861 (= e!3323328 (nullable!5214 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun bm!382839 () Bool)

(assert (=> bm!382839 (= call!382844 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (h!67760 zl!343))) (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) (h!67758 s!2326)))))

(assert (= (and d!1716366 res!2271555) b!5353861))

(assert (= (and d!1716366 c!932158) b!5353857))

(assert (= (and d!1716366 (not c!932158)) b!5353858))

(assert (= (and b!5353858 c!932157) b!5353859))

(assert (= (and b!5353858 (not c!932157)) b!5353860))

(assert (= (or b!5353857 b!5353859) bm!382839))

(declare-fun m!6384138 () Bool)

(assert (=> b!5353857 m!6384138))

(assert (=> b!5353861 m!6383778))

(declare-fun m!6384140 () Bool)

(assert (=> bm!382839 m!6384140))

(assert (=> b!5353362 d!1716366))

(declare-fun b!5353884 () Bool)

(declare-fun e!3323344 () (InoxSet Context!8858))

(declare-fun call!382860 () (InoxSet Context!8858))

(assert (=> b!5353884 (= e!3323344 call!382860)))

(declare-fun b!5353885 () Bool)

(declare-fun c!932173 () Bool)

(declare-fun e!3323342 () Bool)

(assert (=> b!5353885 (= c!932173 e!3323342)))

(declare-fun res!2271558 () Bool)

(assert (=> b!5353885 (=> (not res!2271558) (not e!3323342))))

(assert (=> b!5353885 (= res!2271558 ((_ is Concat!23890) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun e!3323343 () (InoxSet Context!8858))

(declare-fun e!3323341 () (InoxSet Context!8858))

(assert (=> b!5353885 (= e!3323343 e!3323341)))

(declare-fun bm!382852 () Bool)

(declare-fun call!382858 () (InoxSet Context!8858))

(assert (=> bm!382852 (= call!382860 call!382858)))

(declare-fun call!382859 () List!61435)

(declare-fun call!382862 () (InoxSet Context!8858))

(declare-fun c!932172 () Bool)

(declare-fun c!932171 () Bool)

(declare-fun bm!382853 () Bool)

(assert (=> bm!382853 (= call!382862 (derivationStepZipperDown!493 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))) (ite (or c!932171 c!932173) lt!2181621 (Context!8859 call!382859)) (h!67758 s!2326)))))

(declare-fun b!5353886 () Bool)

(declare-fun e!3323346 () (InoxSet Context!8858))

(assert (=> b!5353886 (= e!3323346 e!3323343)))

(assert (=> b!5353886 (= c!932171 ((_ is Union!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353887 () Bool)

(declare-fun call!382861 () (InoxSet Context!8858))

(assert (=> b!5353887 (= e!3323341 ((_ map or) call!382861 call!382858))))

(declare-fun bm!382854 () Bool)

(declare-fun call!382857 () List!61435)

(assert (=> bm!382854 (= call!382859 call!382857)))

(declare-fun b!5353888 () Bool)

(declare-fun c!932169 () Bool)

(assert (=> b!5353888 (= c!932169 ((_ is Star!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun e!3323345 () (InoxSet Context!8858))

(assert (=> b!5353888 (= e!3323344 e!3323345)))

(declare-fun bm!382855 () Bool)

(declare-fun $colon$colon!1432 (List!61435 Regex!15045) List!61435)

(assert (=> bm!382855 (= call!382857 ($colon$colon!1432 (exprs!4929 lt!2181621) (ite (or c!932173 c!932172) (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (h!67759 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5353889 () Bool)

(assert (=> b!5353889 (= e!3323345 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716368 () Bool)

(declare-fun c!932170 () Bool)

(assert (=> d!1716368 (= c!932170 (and ((_ is ElementMatch!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))) (= (c!932025 (h!67759 (exprs!4929 (h!67760 zl!343)))) (h!67758 s!2326))))))

(assert (=> d!1716368 (= (derivationStepZipperDown!493 (h!67759 (exprs!4929 (h!67760 zl!343))) lt!2181621 (h!67758 s!2326)) e!3323346)))

(declare-fun bm!382856 () Bool)

(assert (=> bm!382856 (= call!382858 call!382862)))

(declare-fun bm!382857 () Bool)

(assert (=> bm!382857 (= call!382861 (derivationStepZipperDown!493 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))) (ite c!932171 lt!2181621 (Context!8859 call!382857)) (h!67758 s!2326)))))

(declare-fun b!5353890 () Bool)

(assert (=> b!5353890 (= e!3323342 (nullable!5214 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5353891 () Bool)

(assert (=> b!5353891 (= e!3323341 e!3323344)))

(assert (=> b!5353891 (= c!932172 ((_ is Concat!23890) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5353892 () Bool)

(assert (=> b!5353892 (= e!3323343 ((_ map or) call!382861 call!382862))))

(declare-fun b!5353893 () Bool)

(assert (=> b!5353893 (= e!3323346 (store ((as const (Array Context!8858 Bool)) false) lt!2181621 true))))

(declare-fun b!5353894 () Bool)

(assert (=> b!5353894 (= e!3323345 call!382860)))

(assert (= (and d!1716368 c!932170) b!5353893))

(assert (= (and d!1716368 (not c!932170)) b!5353886))

(assert (= (and b!5353886 c!932171) b!5353892))

(assert (= (and b!5353886 (not c!932171)) b!5353885))

(assert (= (and b!5353885 res!2271558) b!5353890))

(assert (= (and b!5353885 c!932173) b!5353887))

(assert (= (and b!5353885 (not c!932173)) b!5353891))

(assert (= (and b!5353891 c!932172) b!5353884))

(assert (= (and b!5353891 (not c!932172)) b!5353888))

(assert (= (and b!5353888 c!932169) b!5353894))

(assert (= (and b!5353888 (not c!932169)) b!5353889))

(assert (= (or b!5353884 b!5353894) bm!382854))

(assert (= (or b!5353884 b!5353894) bm!382852))

(assert (= (or b!5353887 bm!382854) bm!382855))

(assert (= (or b!5353887 bm!382852) bm!382856))

(assert (= (or b!5353892 bm!382856) bm!382853))

(assert (= (or b!5353892 b!5353887) bm!382857))

(declare-fun m!6384142 () Bool)

(assert (=> b!5353890 m!6384142))

(declare-fun m!6384144 () Bool)

(assert (=> bm!382857 m!6384144))

(declare-fun m!6384146 () Bool)

(assert (=> bm!382853 m!6384146))

(declare-fun m!6384148 () Bool)

(assert (=> bm!382855 m!6384148))

(declare-fun m!6384150 () Bool)

(assert (=> b!5353893 m!6384150))

(assert (=> b!5353362 d!1716368))

(declare-fun d!1716370 () Bool)

(assert (=> d!1716370 (= (flatMap!772 z!1189 lambda!275269) (dynLambda!24233 lambda!275269 (h!67760 zl!343)))))

(declare-fun lt!2181687 () Unit!153698)

(assert (=> d!1716370 (= lt!2181687 (choose!40178 z!1189 (h!67760 zl!343) lambda!275269))))

(assert (=> d!1716370 (= z!1189 (store ((as const (Array Context!8858 Bool)) false) (h!67760 zl!343) true))))

(assert (=> d!1716370 (= (lemmaFlatMapOnSingletonSet!304 z!1189 (h!67760 zl!343) lambda!275269) lt!2181687)))

(declare-fun b_lambda!205391 () Bool)

(assert (=> (not b_lambda!205391) (not d!1716370)))

(declare-fun bs!1240901 () Bool)

(assert (= bs!1240901 d!1716370))

(assert (=> bs!1240901 m!6383774))

(declare-fun m!6384152 () Bool)

(assert (=> bs!1240901 m!6384152))

(declare-fun m!6384154 () Bool)

(assert (=> bs!1240901 m!6384154))

(declare-fun m!6384156 () Bool)

(assert (=> bs!1240901 m!6384156))

(assert (=> b!5353362 d!1716370))

(declare-fun d!1716372 () Bool)

(declare-fun e!3323349 () Bool)

(assert (=> d!1716372 e!3323349))

(declare-fun res!2271561 () Bool)

(assert (=> d!1716372 (=> (not res!2271561) (not e!3323349))))

(declare-fun lt!2181690 () List!61436)

(declare-fun noDuplicate!1336 (List!61436) Bool)

(assert (=> d!1716372 (= res!2271561 (noDuplicate!1336 lt!2181690))))

(declare-fun choose!40179 ((InoxSet Context!8858)) List!61436)

(assert (=> d!1716372 (= lt!2181690 (choose!40179 z!1189))))

(assert (=> d!1716372 (= (toList!8829 z!1189) lt!2181690)))

(declare-fun b!5353897 () Bool)

(declare-fun content!10942 (List!61436) (InoxSet Context!8858))

(assert (=> b!5353897 (= e!3323349 (= (content!10942 lt!2181690) z!1189))))

(assert (= (and d!1716372 res!2271561) b!5353897))

(declare-fun m!6384158 () Bool)

(assert (=> d!1716372 m!6384158))

(declare-fun m!6384160 () Bool)

(assert (=> d!1716372 m!6384160))

(declare-fun m!6384162 () Bool)

(assert (=> b!5353897 m!6384162))

(assert (=> b!5353372 d!1716372))

(declare-fun bs!1240902 () Bool)

(declare-fun d!1716374 () Bool)

(assert (= bs!1240902 (and d!1716374 d!1716308)))

(declare-fun lambda!275304 () Int)

(assert (=> bs!1240902 (= lambda!275304 lambda!275294)))

(declare-fun bs!1240903 () Bool)

(assert (= bs!1240903 (and d!1716374 d!1716352)))

(assert (=> bs!1240903 (= lambda!275304 lambda!275303)))

(assert (=> d!1716374 (= (inv!80859 (h!67760 zl!343)) (forall!14469 (exprs!4929 (h!67760 zl!343)) lambda!275304))))

(declare-fun bs!1240904 () Bool)

(assert (= bs!1240904 d!1716374))

(declare-fun m!6384164 () Bool)

(assert (=> bs!1240904 m!6384164))

(assert (=> b!5353363 d!1716374))

(declare-fun d!1716376 () Bool)

(declare-fun e!3323360 () Bool)

(assert (=> d!1716376 e!3323360))

(declare-fun res!2271574 () Bool)

(assert (=> d!1716376 (=> res!2271574 e!3323360)))

(declare-fun e!3323363 () Bool)

(assert (=> d!1716376 (= res!2271574 e!3323363)))

(declare-fun res!2271572 () Bool)

(assert (=> d!1716376 (=> (not res!2271572) (not e!3323363))))

(declare-fun lt!2181698 () Option!15156)

(assert (=> d!1716376 (= res!2271572 (isDefined!11859 lt!2181698))))

(declare-fun e!3323361 () Option!15156)

(assert (=> d!1716376 (= lt!2181698 e!3323361)))

(declare-fun c!932179 () Bool)

(declare-fun e!3323362 () Bool)

(assert (=> d!1716376 (= c!932179 e!3323362)))

(declare-fun res!2271576 () Bool)

(assert (=> d!1716376 (=> (not res!2271576) (not e!3323362))))

(assert (=> d!1716376 (= res!2271576 (matchR!7230 (regOne!30602 r!7292) Nil!61310))))

(assert (=> d!1716376 (validRegex!6781 (regOne!30602 r!7292))))

(assert (=> d!1716376 (= (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326) lt!2181698)))

(declare-fun b!5353916 () Bool)

(assert (=> b!5353916 (= e!3323360 (not (isDefined!11859 lt!2181698)))))

(declare-fun b!5353917 () Bool)

(declare-fun e!3323364 () Option!15156)

(assert (=> b!5353917 (= e!3323364 None!15155)))

(declare-fun b!5353918 () Bool)

(assert (=> b!5353918 (= e!3323361 (Some!15155 (tuple2!64489 Nil!61310 s!2326)))))

(declare-fun b!5353919 () Bool)

(assert (=> b!5353919 (= e!3323362 (matchR!7230 (regTwo!30602 r!7292) s!2326))))

(declare-fun b!5353920 () Bool)

(declare-fun ++!13362 (List!61434 List!61434) List!61434)

(declare-fun get!21090 (Option!15156) tuple2!64488)

(assert (=> b!5353920 (= e!3323363 (= (++!13362 (_1!35547 (get!21090 lt!2181698)) (_2!35547 (get!21090 lt!2181698))) s!2326))))

(declare-fun b!5353921 () Bool)

(assert (=> b!5353921 (= e!3323361 e!3323364)))

(declare-fun c!932178 () Bool)

(assert (=> b!5353921 (= c!932178 ((_ is Nil!61310) s!2326))))

(declare-fun b!5353922 () Bool)

(declare-fun res!2271573 () Bool)

(assert (=> b!5353922 (=> (not res!2271573) (not e!3323363))))

(assert (=> b!5353922 (= res!2271573 (matchR!7230 (regOne!30602 r!7292) (_1!35547 (get!21090 lt!2181698))))))

(declare-fun b!5353923 () Bool)

(declare-fun res!2271575 () Bool)

(assert (=> b!5353923 (=> (not res!2271575) (not e!3323363))))

(assert (=> b!5353923 (= res!2271575 (matchR!7230 (regTwo!30602 r!7292) (_2!35547 (get!21090 lt!2181698))))))

(declare-fun b!5353924 () Bool)

(declare-fun lt!2181699 () Unit!153698)

(declare-fun lt!2181697 () Unit!153698)

(assert (=> b!5353924 (= lt!2181699 lt!2181697)))

(assert (=> b!5353924 (= (++!13362 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (t!374653 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1777 (List!61434 C!30360 List!61434 List!61434) Unit!153698)

(assert (=> b!5353924 (= lt!2181697 (lemmaMoveElementToOtherListKeepsConcatEq!1777 Nil!61310 (h!67758 s!2326) (t!374653 s!2326) s!2326))))

(assert (=> b!5353924 (= e!3323364 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (t!374653 s!2326) s!2326))))

(assert (= (and d!1716376 res!2271576) b!5353919))

(assert (= (and d!1716376 c!932179) b!5353918))

(assert (= (and d!1716376 (not c!932179)) b!5353921))

(assert (= (and b!5353921 c!932178) b!5353917))

(assert (= (and b!5353921 (not c!932178)) b!5353924))

(assert (= (and d!1716376 res!2271572) b!5353922))

(assert (= (and b!5353922 res!2271573) b!5353923))

(assert (= (and b!5353923 res!2271575) b!5353920))

(assert (= (and d!1716376 (not res!2271574)) b!5353916))

(declare-fun m!6384166 () Bool)

(assert (=> b!5353916 m!6384166))

(declare-fun m!6384168 () Bool)

(assert (=> b!5353923 m!6384168))

(declare-fun m!6384170 () Bool)

(assert (=> b!5353923 m!6384170))

(assert (=> d!1716376 m!6384166))

(declare-fun m!6384172 () Bool)

(assert (=> d!1716376 m!6384172))

(declare-fun m!6384174 () Bool)

(assert (=> d!1716376 m!6384174))

(assert (=> b!5353922 m!6384168))

(declare-fun m!6384176 () Bool)

(assert (=> b!5353922 m!6384176))

(assert (=> b!5353920 m!6384168))

(declare-fun m!6384178 () Bool)

(assert (=> b!5353920 m!6384178))

(declare-fun m!6384180 () Bool)

(assert (=> b!5353919 m!6384180))

(declare-fun m!6384182 () Bool)

(assert (=> b!5353924 m!6384182))

(assert (=> b!5353924 m!6384182))

(declare-fun m!6384184 () Bool)

(assert (=> b!5353924 m!6384184))

(declare-fun m!6384186 () Bool)

(assert (=> b!5353924 m!6384186))

(assert (=> b!5353924 m!6384182))

(declare-fun m!6384188 () Bool)

(assert (=> b!5353924 m!6384188))

(assert (=> b!5353374 d!1716376))

(declare-fun d!1716378 () Bool)

(declare-fun choose!40180 (Int) Bool)

(assert (=> d!1716378 (= (Exists!2226 lambda!275267) (choose!40180 lambda!275267))))

(declare-fun bs!1240905 () Bool)

(assert (= bs!1240905 d!1716378))

(declare-fun m!6384190 () Bool)

(assert (=> bs!1240905 m!6384190))

(assert (=> b!5353374 d!1716378))

(declare-fun d!1716380 () Bool)

(assert (=> d!1716380 (= (Exists!2226 lambda!275268) (choose!40180 lambda!275268))))

(declare-fun bs!1240906 () Bool)

(assert (= bs!1240906 d!1716380))

(declare-fun m!6384192 () Bool)

(assert (=> bs!1240906 m!6384192))

(assert (=> b!5353374 d!1716380))

(declare-fun bs!1240907 () Bool)

(declare-fun d!1716382 () Bool)

(assert (= bs!1240907 (and d!1716382 b!5353374)))

(declare-fun lambda!275307 () Int)

(assert (=> bs!1240907 (= lambda!275307 lambda!275267)))

(assert (=> bs!1240907 (not (= lambda!275307 lambda!275268))))

(assert (=> d!1716382 true))

(assert (=> d!1716382 true))

(assert (=> d!1716382 true))

(assert (=> d!1716382 (= (isDefined!11859 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326)) (Exists!2226 lambda!275307))))

(declare-fun lt!2181702 () Unit!153698)

(declare-fun choose!40181 (Regex!15045 Regex!15045 List!61434) Unit!153698)

(assert (=> d!1716382 (= lt!2181702 (choose!40181 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326))))

(assert (=> d!1716382 (validRegex!6781 (regOne!30602 r!7292))))

(assert (=> d!1716382 (= (lemmaFindConcatSeparationEquivalentToExists!1334 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326) lt!2181702)))

(declare-fun bs!1240908 () Bool)

(assert (= bs!1240908 d!1716382))

(declare-fun m!6384194 () Bool)

(assert (=> bs!1240908 m!6384194))

(assert (=> bs!1240908 m!6384174))

(assert (=> bs!1240908 m!6383796))

(assert (=> bs!1240908 m!6383798))

(assert (=> bs!1240908 m!6383796))

(declare-fun m!6384196 () Bool)

(assert (=> bs!1240908 m!6384196))

(assert (=> b!5353374 d!1716382))

(declare-fun bs!1240909 () Bool)

(declare-fun d!1716384 () Bool)

(assert (= bs!1240909 (and d!1716384 b!5353374)))

(declare-fun lambda!275312 () Int)

(assert (=> bs!1240909 (= lambda!275312 lambda!275267)))

(assert (=> bs!1240909 (not (= lambda!275312 lambda!275268))))

(declare-fun bs!1240910 () Bool)

(assert (= bs!1240910 (and d!1716384 d!1716382)))

(assert (=> bs!1240910 (= lambda!275312 lambda!275307)))

(assert (=> d!1716384 true))

(assert (=> d!1716384 true))

(assert (=> d!1716384 true))

(declare-fun lambda!275313 () Int)

(assert (=> bs!1240909 (not (= lambda!275313 lambda!275267))))

(assert (=> bs!1240909 (= lambda!275313 lambda!275268)))

(assert (=> bs!1240910 (not (= lambda!275313 lambda!275307))))

(declare-fun bs!1240911 () Bool)

(assert (= bs!1240911 d!1716384))

(assert (=> bs!1240911 (not (= lambda!275313 lambda!275312))))

(assert (=> d!1716384 true))

(assert (=> d!1716384 true))

(assert (=> d!1716384 true))

(assert (=> d!1716384 (= (Exists!2226 lambda!275312) (Exists!2226 lambda!275313))))

(declare-fun lt!2181705 () Unit!153698)

(declare-fun choose!40182 (Regex!15045 Regex!15045 List!61434) Unit!153698)

(assert (=> d!1716384 (= lt!2181705 (choose!40182 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326))))

(assert (=> d!1716384 (validRegex!6781 (regOne!30602 r!7292))))

(assert (=> d!1716384 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!880 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326) lt!2181705)))

(declare-fun m!6384198 () Bool)

(assert (=> bs!1240911 m!6384198))

(declare-fun m!6384200 () Bool)

(assert (=> bs!1240911 m!6384200))

(declare-fun m!6384202 () Bool)

(assert (=> bs!1240911 m!6384202))

(assert (=> bs!1240911 m!6384174))

(assert (=> b!5353374 d!1716384))

(declare-fun d!1716386 () Bool)

(declare-fun isEmpty!33292 (Option!15156) Bool)

(assert (=> d!1716386 (= (isDefined!11859 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326)) (not (isEmpty!33292 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326))))))

(declare-fun bs!1240912 () Bool)

(assert (= bs!1240912 d!1716386))

(assert (=> bs!1240912 m!6383796))

(declare-fun m!6384204 () Bool)

(assert (=> bs!1240912 m!6384204))

(assert (=> b!5353374 d!1716386))

(declare-fun d!1716388 () Bool)

(declare-fun c!932180 () Bool)

(assert (=> d!1716388 (= c!932180 (isEmpty!33291 (t!374653 s!2326)))))

(declare-fun e!3323371 () Bool)

(assert (=> d!1716388 (= (matchZipper!1289 lt!2181634 (t!374653 s!2326)) e!3323371)))

(declare-fun b!5353937 () Bool)

(assert (=> b!5353937 (= e!3323371 (nullableZipper!1382 lt!2181634))))

(declare-fun b!5353938 () Bool)

(assert (=> b!5353938 (= e!3323371 (matchZipper!1289 (derivationStepZipper!1284 lt!2181634 (head!11482 (t!374653 s!2326))) (tail!10579 (t!374653 s!2326))))))

(assert (= (and d!1716388 c!932180) b!5353937))

(assert (= (and d!1716388 (not c!932180)) b!5353938))

(assert (=> d!1716388 m!6383960))

(declare-fun m!6384206 () Bool)

(assert (=> b!5353937 m!6384206))

(assert (=> b!5353938 m!6383964))

(assert (=> b!5353938 m!6383964))

(declare-fun m!6384208 () Bool)

(assert (=> b!5353938 m!6384208))

(assert (=> b!5353938 m!6383968))

(assert (=> b!5353938 m!6384208))

(assert (=> b!5353938 m!6383968))

(declare-fun m!6384210 () Bool)

(assert (=> b!5353938 m!6384210))

(assert (=> b!5353373 d!1716388))

(declare-fun d!1716390 () Bool)

(declare-fun lt!2181708 () Regex!15045)

(assert (=> d!1716390 (validRegex!6781 lt!2181708)))

(assert (=> d!1716390 (= lt!2181708 (generalisedUnion!974 (unfocusZipperList!487 zl!343)))))

(assert (=> d!1716390 (= (unfocusZipper!787 zl!343) lt!2181708)))

(declare-fun bs!1240913 () Bool)

(assert (= bs!1240913 d!1716390))

(declare-fun m!6384212 () Bool)

(assert (=> bs!1240913 m!6384212))

(assert (=> bs!1240913 m!6383810))

(assert (=> bs!1240913 m!6383810))

(assert (=> bs!1240913 m!6383812))

(assert (=> b!5353383 d!1716390))

(declare-fun b!5353939 () Bool)

(declare-fun e!3323372 () Bool)

(declare-fun call!382863 () Bool)

(assert (=> b!5353939 (= e!3323372 call!382863)))

(declare-fun b!5353940 () Bool)

(declare-fun e!3323378 () Bool)

(declare-fun e!3323377 () Bool)

(assert (=> b!5353940 (= e!3323378 e!3323377)))

(declare-fun res!2271593 () Bool)

(assert (=> b!5353940 (=> (not res!2271593) (not e!3323377))))

(declare-fun call!382864 () Bool)

(assert (=> b!5353940 (= res!2271593 call!382864)))

(declare-fun b!5353941 () Bool)

(assert (=> b!5353941 (= e!3323377 call!382863)))

(declare-fun bm!382858 () Bool)

(declare-fun call!382865 () Bool)

(declare-fun c!932181 () Bool)

(declare-fun c!932182 () Bool)

(assert (=> bm!382858 (= call!382865 (validRegex!6781 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))))))

(declare-fun b!5353942 () Bool)

(declare-fun e!3323373 () Bool)

(declare-fun e!3323376 () Bool)

(assert (=> b!5353942 (= e!3323373 e!3323376)))

(assert (=> b!5353942 (= c!932182 ((_ is Union!15045) r!7292))))

(declare-fun b!5353943 () Bool)

(declare-fun e!3323375 () Bool)

(assert (=> b!5353943 (= e!3323375 call!382865)))

(declare-fun b!5353944 () Bool)

(assert (=> b!5353944 (= e!3323373 e!3323375)))

(declare-fun res!2271590 () Bool)

(assert (=> b!5353944 (= res!2271590 (not (nullable!5214 (reg!15374 r!7292))))))

(assert (=> b!5353944 (=> (not res!2271590) (not e!3323375))))

(declare-fun b!5353945 () Bool)

(declare-fun e!3323374 () Bool)

(assert (=> b!5353945 (= e!3323374 e!3323373)))

(assert (=> b!5353945 (= c!932181 ((_ is Star!15045) r!7292))))

(declare-fun d!1716392 () Bool)

(declare-fun res!2271591 () Bool)

(assert (=> d!1716392 (=> res!2271591 e!3323374)))

(assert (=> d!1716392 (= res!2271591 ((_ is ElementMatch!15045) r!7292))))

(assert (=> d!1716392 (= (validRegex!6781 r!7292) e!3323374)))

(declare-fun b!5353946 () Bool)

(declare-fun res!2271589 () Bool)

(assert (=> b!5353946 (=> (not res!2271589) (not e!3323372))))

(assert (=> b!5353946 (= res!2271589 call!382864)))

(assert (=> b!5353946 (= e!3323376 e!3323372)))

(declare-fun b!5353947 () Bool)

(declare-fun res!2271592 () Bool)

(assert (=> b!5353947 (=> res!2271592 e!3323378)))

(assert (=> b!5353947 (= res!2271592 (not ((_ is Concat!23890) r!7292)))))

(assert (=> b!5353947 (= e!3323376 e!3323378)))

(declare-fun bm!382859 () Bool)

(assert (=> bm!382859 (= call!382864 (validRegex!6781 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))))))

(declare-fun bm!382860 () Bool)

(assert (=> bm!382860 (= call!382863 call!382865)))

(assert (= (and d!1716392 (not res!2271591)) b!5353945))

(assert (= (and b!5353945 c!932181) b!5353944))

(assert (= (and b!5353945 (not c!932181)) b!5353942))

(assert (= (and b!5353944 res!2271590) b!5353943))

(assert (= (and b!5353942 c!932182) b!5353946))

(assert (= (and b!5353942 (not c!932182)) b!5353947))

(assert (= (and b!5353946 res!2271589) b!5353939))

(assert (= (and b!5353947 (not res!2271592)) b!5353940))

(assert (= (and b!5353940 res!2271593) b!5353941))

(assert (= (or b!5353939 b!5353941) bm!382860))

(assert (= (or b!5353946 b!5353940) bm!382859))

(assert (= (or b!5353943 bm!382860) bm!382858))

(declare-fun m!6384214 () Bool)

(assert (=> bm!382858 m!6384214))

(declare-fun m!6384216 () Bool)

(assert (=> b!5353944 m!6384216))

(declare-fun m!6384218 () Bool)

(assert (=> bm!382859 m!6384218))

(assert (=> start!563710 d!1716392))

(declare-fun b!5353948 () Bool)

(declare-fun e!3323382 () (InoxSet Context!8858))

(declare-fun call!382869 () (InoxSet Context!8858))

(assert (=> b!5353948 (= e!3323382 call!382869)))

(declare-fun b!5353949 () Bool)

(declare-fun c!932187 () Bool)

(declare-fun e!3323380 () Bool)

(assert (=> b!5353949 (= c!932187 e!3323380)))

(declare-fun res!2271594 () Bool)

(assert (=> b!5353949 (=> (not res!2271594) (not e!3323380))))

(assert (=> b!5353949 (= res!2271594 ((_ is Concat!23890) (reg!15374 (regOne!30602 r!7292))))))

(declare-fun e!3323381 () (InoxSet Context!8858))

(declare-fun e!3323379 () (InoxSet Context!8858))

(assert (=> b!5353949 (= e!3323381 e!3323379)))

(declare-fun bm!382861 () Bool)

(declare-fun call!382867 () (InoxSet Context!8858))

(assert (=> bm!382861 (= call!382869 call!382867)))

(declare-fun call!382868 () List!61435)

(declare-fun c!932186 () Bool)

(declare-fun c!932185 () Bool)

(declare-fun bm!382862 () Bool)

(declare-fun call!382871 () (InoxSet Context!8858))

(assert (=> bm!382862 (= call!382871 (derivationStepZipperDown!493 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292)))))) (ite (or c!932185 c!932187) (Context!8859 lt!2181619) (Context!8859 call!382868)) (h!67758 s!2326)))))

(declare-fun b!5353950 () Bool)

(declare-fun e!3323384 () (InoxSet Context!8858))

(assert (=> b!5353950 (= e!3323384 e!3323381)))

(assert (=> b!5353950 (= c!932185 ((_ is Union!15045) (reg!15374 (regOne!30602 r!7292))))))

(declare-fun b!5353951 () Bool)

(declare-fun call!382870 () (InoxSet Context!8858))

(assert (=> b!5353951 (= e!3323379 ((_ map or) call!382870 call!382867))))

(declare-fun bm!382863 () Bool)

(declare-fun call!382866 () List!61435)

(assert (=> bm!382863 (= call!382868 call!382866)))

(declare-fun b!5353952 () Bool)

(declare-fun c!932183 () Bool)

(assert (=> b!5353952 (= c!932183 ((_ is Star!15045) (reg!15374 (regOne!30602 r!7292))))))

(declare-fun e!3323383 () (InoxSet Context!8858))

(assert (=> b!5353952 (= e!3323382 e!3323383)))

(declare-fun bm!382864 () Bool)

(assert (=> bm!382864 (= call!382866 ($colon$colon!1432 (exprs!4929 (Context!8859 lt!2181619)) (ite (or c!932187 c!932186) (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (regOne!30602 r!7292)))))))

(declare-fun b!5353953 () Bool)

(assert (=> b!5353953 (= e!3323383 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716394 () Bool)

(declare-fun c!932184 () Bool)

(assert (=> d!1716394 (= c!932184 (and ((_ is ElementMatch!15045) (reg!15374 (regOne!30602 r!7292))) (= (c!932025 (reg!15374 (regOne!30602 r!7292))) (h!67758 s!2326))))))

(assert (=> d!1716394 (= (derivationStepZipperDown!493 (reg!15374 (regOne!30602 r!7292)) (Context!8859 lt!2181619) (h!67758 s!2326)) e!3323384)))

(declare-fun bm!382865 () Bool)

(assert (=> bm!382865 (= call!382867 call!382871)))

(declare-fun bm!382866 () Bool)

(assert (=> bm!382866 (= call!382870 (derivationStepZipperDown!493 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))) (ite c!932185 (Context!8859 lt!2181619) (Context!8859 call!382866)) (h!67758 s!2326)))))

(declare-fun b!5353954 () Bool)

(assert (=> b!5353954 (= e!3323380 (nullable!5214 (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))

(declare-fun b!5353955 () Bool)

(assert (=> b!5353955 (= e!3323379 e!3323382)))

(assert (=> b!5353955 (= c!932186 ((_ is Concat!23890) (reg!15374 (regOne!30602 r!7292))))))

(declare-fun b!5353956 () Bool)

(assert (=> b!5353956 (= e!3323381 ((_ map or) call!382870 call!382871))))

(declare-fun b!5353957 () Bool)

(assert (=> b!5353957 (= e!3323384 (store ((as const (Array Context!8858 Bool)) false) (Context!8859 lt!2181619) true))))

(declare-fun b!5353958 () Bool)

(assert (=> b!5353958 (= e!3323383 call!382869)))

(assert (= (and d!1716394 c!932184) b!5353957))

(assert (= (and d!1716394 (not c!932184)) b!5353950))

(assert (= (and b!5353950 c!932185) b!5353956))

(assert (= (and b!5353950 (not c!932185)) b!5353949))

(assert (= (and b!5353949 res!2271594) b!5353954))

(assert (= (and b!5353949 c!932187) b!5353951))

(assert (= (and b!5353949 (not c!932187)) b!5353955))

(assert (= (and b!5353955 c!932186) b!5353948))

(assert (= (and b!5353955 (not c!932186)) b!5353952))

(assert (= (and b!5353952 c!932183) b!5353958))

(assert (= (and b!5353952 (not c!932183)) b!5353953))

(assert (= (or b!5353948 b!5353958) bm!382863))

(assert (= (or b!5353948 b!5353958) bm!382861))

(assert (= (or b!5353951 bm!382863) bm!382864))

(assert (= (or b!5353951 bm!382861) bm!382865))

(assert (= (or b!5353956 bm!382865) bm!382862))

(assert (= (or b!5353956 b!5353951) bm!382866))

(declare-fun m!6384220 () Bool)

(assert (=> b!5353954 m!6384220))

(declare-fun m!6384222 () Bool)

(assert (=> bm!382866 m!6384222))

(declare-fun m!6384224 () Bool)

(assert (=> bm!382862 m!6384224))

(declare-fun m!6384226 () Bool)

(assert (=> bm!382864 m!6384226))

(declare-fun m!6384228 () Bool)

(assert (=> b!5353957 m!6384228))

(assert (=> b!5353385 d!1716394))

(declare-fun bs!1240914 () Bool)

(declare-fun d!1716396 () Bool)

(assert (= bs!1240914 (and d!1716396 d!1716308)))

(declare-fun lambda!275316 () Int)

(assert (=> bs!1240914 (= lambda!275316 lambda!275294)))

(declare-fun bs!1240915 () Bool)

(assert (= bs!1240915 (and d!1716396 d!1716352)))

(assert (=> bs!1240915 (= lambda!275316 lambda!275303)))

(declare-fun bs!1240916 () Bool)

(assert (= bs!1240916 (and d!1716396 d!1716374)))

(assert (=> bs!1240916 (= lambda!275316 lambda!275304)))

(declare-fun b!5353979 () Bool)

(declare-fun e!3323400 () Regex!15045)

(declare-fun e!3323398 () Regex!15045)

(assert (=> b!5353979 (= e!3323400 e!3323398)))

(declare-fun c!932198 () Bool)

(assert (=> b!5353979 (= c!932198 ((_ is Cons!61311) (unfocusZipperList!487 zl!343)))))

(declare-fun b!5353980 () Bool)

(assert (=> b!5353980 (= e!3323400 (h!67759 (unfocusZipperList!487 zl!343)))))

(declare-fun b!5353981 () Bool)

(declare-fun e!3323399 () Bool)

(declare-fun e!3323397 () Bool)

(assert (=> b!5353981 (= e!3323399 e!3323397)))

(declare-fun c!932197 () Bool)

(assert (=> b!5353981 (= c!932197 (isEmpty!33287 (unfocusZipperList!487 zl!343)))))

(declare-fun b!5353982 () Bool)

(assert (=> b!5353982 (= e!3323398 (Union!15045 (h!67759 (unfocusZipperList!487 zl!343)) (generalisedUnion!974 (t!374654 (unfocusZipperList!487 zl!343)))))))

(declare-fun b!5353984 () Bool)

(declare-fun e!3323401 () Bool)

(declare-fun lt!2181711 () Regex!15045)

(assert (=> b!5353984 (= e!3323401 (= lt!2181711 (head!11483 (unfocusZipperList!487 zl!343))))))

(declare-fun b!5353985 () Bool)

(declare-fun isUnion!357 (Regex!15045) Bool)

(assert (=> b!5353985 (= e!3323401 (isUnion!357 lt!2181711))))

(declare-fun b!5353986 () Bool)

(declare-fun e!3323402 () Bool)

(assert (=> b!5353986 (= e!3323402 (isEmpty!33287 (t!374654 (unfocusZipperList!487 zl!343))))))

(declare-fun b!5353987 () Bool)

(assert (=> b!5353987 (= e!3323398 EmptyLang!15045)))

(declare-fun b!5353988 () Bool)

(assert (=> b!5353988 (= e!3323397 e!3323401)))

(declare-fun c!932196 () Bool)

(assert (=> b!5353988 (= c!932196 (isEmpty!33287 (tail!10580 (unfocusZipperList!487 zl!343))))))

(assert (=> d!1716396 e!3323399))

(declare-fun res!2271600 () Bool)

(assert (=> d!1716396 (=> (not res!2271600) (not e!3323399))))

(assert (=> d!1716396 (= res!2271600 (validRegex!6781 lt!2181711))))

(assert (=> d!1716396 (= lt!2181711 e!3323400)))

(declare-fun c!932199 () Bool)

(assert (=> d!1716396 (= c!932199 e!3323402)))

(declare-fun res!2271599 () Bool)

(assert (=> d!1716396 (=> (not res!2271599) (not e!3323402))))

(assert (=> d!1716396 (= res!2271599 ((_ is Cons!61311) (unfocusZipperList!487 zl!343)))))

(assert (=> d!1716396 (forall!14469 (unfocusZipperList!487 zl!343) lambda!275316)))

(assert (=> d!1716396 (= (generalisedUnion!974 (unfocusZipperList!487 zl!343)) lt!2181711)))

(declare-fun b!5353983 () Bool)

(declare-fun isEmptyLang!925 (Regex!15045) Bool)

(assert (=> b!5353983 (= e!3323397 (isEmptyLang!925 lt!2181711))))

(assert (= (and d!1716396 res!2271599) b!5353986))

(assert (= (and d!1716396 c!932199) b!5353980))

(assert (= (and d!1716396 (not c!932199)) b!5353979))

(assert (= (and b!5353979 c!932198) b!5353982))

(assert (= (and b!5353979 (not c!932198)) b!5353987))

(assert (= (and d!1716396 res!2271600) b!5353981))

(assert (= (and b!5353981 c!932197) b!5353983))

(assert (= (and b!5353981 (not c!932197)) b!5353988))

(assert (= (and b!5353988 c!932196) b!5353984))

(assert (= (and b!5353988 (not c!932196)) b!5353985))

(assert (=> b!5353981 m!6383810))

(declare-fun m!6384230 () Bool)

(assert (=> b!5353981 m!6384230))

(assert (=> b!5353988 m!6383810))

(declare-fun m!6384232 () Bool)

(assert (=> b!5353988 m!6384232))

(assert (=> b!5353988 m!6384232))

(declare-fun m!6384234 () Bool)

(assert (=> b!5353988 m!6384234))

(declare-fun m!6384236 () Bool)

(assert (=> b!5353986 m!6384236))

(declare-fun m!6384238 () Bool)

(assert (=> b!5353985 m!6384238))

(declare-fun m!6384240 () Bool)

(assert (=> b!5353983 m!6384240))

(assert (=> b!5353984 m!6383810))

(declare-fun m!6384242 () Bool)

(assert (=> b!5353984 m!6384242))

(declare-fun m!6384244 () Bool)

(assert (=> b!5353982 m!6384244))

(declare-fun m!6384246 () Bool)

(assert (=> d!1716396 m!6384246))

(assert (=> d!1716396 m!6383810))

(declare-fun m!6384248 () Bool)

(assert (=> d!1716396 m!6384248))

(assert (=> b!5353376 d!1716396))

(declare-fun bs!1240917 () Bool)

(declare-fun d!1716398 () Bool)

(assert (= bs!1240917 (and d!1716398 d!1716308)))

(declare-fun lambda!275319 () Int)

(assert (=> bs!1240917 (= lambda!275319 lambda!275294)))

(declare-fun bs!1240918 () Bool)

(assert (= bs!1240918 (and d!1716398 d!1716352)))

(assert (=> bs!1240918 (= lambda!275319 lambda!275303)))

(declare-fun bs!1240919 () Bool)

(assert (= bs!1240919 (and d!1716398 d!1716374)))

(assert (=> bs!1240919 (= lambda!275319 lambda!275304)))

(declare-fun bs!1240920 () Bool)

(assert (= bs!1240920 (and d!1716398 d!1716396)))

(assert (=> bs!1240920 (= lambda!275319 lambda!275316)))

(declare-fun lt!2181714 () List!61435)

(assert (=> d!1716398 (forall!14469 lt!2181714 lambda!275319)))

(declare-fun e!3323405 () List!61435)

(assert (=> d!1716398 (= lt!2181714 e!3323405)))

(declare-fun c!932202 () Bool)

(assert (=> d!1716398 (= c!932202 ((_ is Cons!61312) zl!343))))

(assert (=> d!1716398 (= (unfocusZipperList!487 zl!343) lt!2181714)))

(declare-fun b!5353993 () Bool)

(assert (=> b!5353993 (= e!3323405 (Cons!61311 (generalisedConcat!714 (exprs!4929 (h!67760 zl!343))) (unfocusZipperList!487 (t!374655 zl!343))))))

(declare-fun b!5353994 () Bool)

(assert (=> b!5353994 (= e!3323405 Nil!61311)))

(assert (= (and d!1716398 c!932202) b!5353993))

(assert (= (and d!1716398 (not c!932202)) b!5353994))

(declare-fun m!6384250 () Bool)

(assert (=> d!1716398 m!6384250))

(assert (=> b!5353993 m!6383772))

(declare-fun m!6384252 () Bool)

(assert (=> b!5353993 m!6384252))

(assert (=> b!5353376 d!1716398))

(declare-fun bs!1240921 () Bool)

(declare-fun b!5354029 () Bool)

(assert (= bs!1240921 (and b!5354029 b!5353374)))

(declare-fun lambda!275324 () Int)

(assert (=> bs!1240921 (not (= lambda!275324 lambda!275268))))

(assert (=> bs!1240921 (not (= lambda!275324 lambda!275267))))

(declare-fun bs!1240922 () Bool)

(assert (= bs!1240922 (and b!5354029 d!1716384)))

(assert (=> bs!1240922 (not (= lambda!275324 lambda!275313))))

(assert (=> bs!1240922 (not (= lambda!275324 lambda!275312))))

(declare-fun bs!1240923 () Bool)

(assert (= bs!1240923 (and b!5354029 d!1716382)))

(assert (=> bs!1240923 (not (= lambda!275324 lambda!275307))))

(assert (=> b!5354029 true))

(assert (=> b!5354029 true))

(declare-fun bs!1240924 () Bool)

(declare-fun b!5354030 () Bool)

(assert (= bs!1240924 (and b!5354030 b!5354029)))

(declare-fun lambda!275325 () Int)

(assert (=> bs!1240924 (not (= lambda!275325 lambda!275324))))

(declare-fun bs!1240925 () Bool)

(assert (= bs!1240925 (and b!5354030 b!5353374)))

(assert (=> bs!1240925 (= lambda!275325 lambda!275268)))

(assert (=> bs!1240925 (not (= lambda!275325 lambda!275267))))

(declare-fun bs!1240926 () Bool)

(assert (= bs!1240926 (and b!5354030 d!1716384)))

(assert (=> bs!1240926 (= lambda!275325 lambda!275313)))

(assert (=> bs!1240926 (not (= lambda!275325 lambda!275312))))

(declare-fun bs!1240927 () Bool)

(assert (= bs!1240927 (and b!5354030 d!1716382)))

(assert (=> bs!1240927 (not (= lambda!275325 lambda!275307))))

(assert (=> b!5354030 true))

(assert (=> b!5354030 true))

(declare-fun b!5354027 () Bool)

(declare-fun c!932213 () Bool)

(assert (=> b!5354027 (= c!932213 ((_ is ElementMatch!15045) r!7292))))

(declare-fun e!3323424 () Bool)

(declare-fun e!3323425 () Bool)

(assert (=> b!5354027 (= e!3323424 e!3323425)))

(declare-fun b!5354028 () Bool)

(declare-fun e!3323429 () Bool)

(declare-fun e!3323428 () Bool)

(assert (=> b!5354028 (= e!3323429 e!3323428)))

(declare-fun c!932212 () Bool)

(assert (=> b!5354028 (= c!932212 ((_ is Star!15045) r!7292))))

(declare-fun e!3323430 () Bool)

(declare-fun call!382877 () Bool)

(assert (=> b!5354029 (= e!3323430 call!382877)))

(assert (=> b!5354030 (= e!3323428 call!382877)))

(declare-fun b!5354031 () Bool)

(declare-fun e!3323427 () Bool)

(declare-fun call!382876 () Bool)

(assert (=> b!5354031 (= e!3323427 call!382876)))

(declare-fun b!5354032 () Bool)

(assert (=> b!5354032 (= e!3323427 e!3323424)))

(declare-fun res!2271617 () Bool)

(assert (=> b!5354032 (= res!2271617 (not ((_ is EmptyLang!15045) r!7292)))))

(assert (=> b!5354032 (=> (not res!2271617) (not e!3323424))))

(declare-fun b!5354033 () Bool)

(declare-fun c!932214 () Bool)

(assert (=> b!5354033 (= c!932214 ((_ is Union!15045) r!7292))))

(assert (=> b!5354033 (= e!3323425 e!3323429)))

(declare-fun bm!382871 () Bool)

(assert (=> bm!382871 (= call!382876 (isEmpty!33291 s!2326))))

(declare-fun b!5354034 () Bool)

(declare-fun e!3323426 () Bool)

(assert (=> b!5354034 (= e!3323426 (matchRSpec!2148 (regTwo!30603 r!7292) s!2326))))

(declare-fun b!5354035 () Bool)

(assert (=> b!5354035 (= e!3323429 e!3323426)))

(declare-fun res!2271619 () Bool)

(assert (=> b!5354035 (= res!2271619 (matchRSpec!2148 (regOne!30603 r!7292) s!2326))))

(assert (=> b!5354035 (=> res!2271619 e!3323426)))

(declare-fun bm!382872 () Bool)

(assert (=> bm!382872 (= call!382877 (Exists!2226 (ite c!932212 lambda!275324 lambda!275325)))))

(declare-fun b!5354037 () Bool)

(declare-fun res!2271618 () Bool)

(assert (=> b!5354037 (=> res!2271618 e!3323430)))

(assert (=> b!5354037 (= res!2271618 call!382876)))

(assert (=> b!5354037 (= e!3323428 e!3323430)))

(declare-fun b!5354036 () Bool)

(assert (=> b!5354036 (= e!3323425 (= s!2326 (Cons!61310 (c!932025 r!7292) Nil!61310)))))

(declare-fun d!1716400 () Bool)

(declare-fun c!932211 () Bool)

(assert (=> d!1716400 (= c!932211 ((_ is EmptyExpr!15045) r!7292))))

(assert (=> d!1716400 (= (matchRSpec!2148 r!7292 s!2326) e!3323427)))

(assert (= (and d!1716400 c!932211) b!5354031))

(assert (= (and d!1716400 (not c!932211)) b!5354032))

(assert (= (and b!5354032 res!2271617) b!5354027))

(assert (= (and b!5354027 c!932213) b!5354036))

(assert (= (and b!5354027 (not c!932213)) b!5354033))

(assert (= (and b!5354033 c!932214) b!5354035))

(assert (= (and b!5354033 (not c!932214)) b!5354028))

(assert (= (and b!5354035 (not res!2271619)) b!5354034))

(assert (= (and b!5354028 c!932212) b!5354037))

(assert (= (and b!5354028 (not c!932212)) b!5354030))

(assert (= (and b!5354037 (not res!2271618)) b!5354029))

(assert (= (or b!5354029 b!5354030) bm!382872))

(assert (= (or b!5354031 b!5354037) bm!382871))

(declare-fun m!6384254 () Bool)

(assert (=> bm!382871 m!6384254))

(declare-fun m!6384256 () Bool)

(assert (=> b!5354034 m!6384256))

(declare-fun m!6384258 () Bool)

(assert (=> b!5354035 m!6384258))

(declare-fun m!6384260 () Bool)

(assert (=> bm!382872 m!6384260))

(assert (=> b!5353367 d!1716400))

(declare-fun b!5354066 () Bool)

(declare-fun res!2271636 () Bool)

(declare-fun e!3323451 () Bool)

(assert (=> b!5354066 (=> res!2271636 e!3323451)))

(assert (=> b!5354066 (= res!2271636 (not (isEmpty!33291 (tail!10579 s!2326))))))

(declare-fun b!5354067 () Bool)

(declare-fun e!3323450 () Bool)

(assert (=> b!5354067 (= e!3323450 (= (head!11482 s!2326) (c!932025 r!7292)))))

(declare-fun b!5354068 () Bool)

(declare-fun e!3323446 () Bool)

(assert (=> b!5354068 (= e!3323446 (nullable!5214 r!7292))))

(declare-fun b!5354069 () Bool)

(declare-fun res!2271641 () Bool)

(declare-fun e!3323449 () Bool)

(assert (=> b!5354069 (=> res!2271641 e!3323449)))

(assert (=> b!5354069 (= res!2271641 e!3323450)))

(declare-fun res!2271638 () Bool)

(assert (=> b!5354069 (=> (not res!2271638) (not e!3323450))))

(declare-fun lt!2181717 () Bool)

(assert (=> b!5354069 (= res!2271638 lt!2181717)))

(declare-fun b!5354070 () Bool)

(declare-fun e!3323447 () Bool)

(declare-fun e!3323448 () Bool)

(assert (=> b!5354070 (= e!3323447 e!3323448)))

(declare-fun c!932221 () Bool)

(assert (=> b!5354070 (= c!932221 ((_ is EmptyLang!15045) r!7292))))

(declare-fun b!5354071 () Bool)

(assert (=> b!5354071 (= e!3323448 (not lt!2181717))))

(declare-fun b!5354072 () Bool)

(declare-fun res!2271640 () Bool)

(assert (=> b!5354072 (=> res!2271640 e!3323449)))

(assert (=> b!5354072 (= res!2271640 (not ((_ is ElementMatch!15045) r!7292)))))

(assert (=> b!5354072 (= e!3323448 e!3323449)))

(declare-fun b!5354073 () Bool)

(declare-fun res!2271643 () Bool)

(assert (=> b!5354073 (=> (not res!2271643) (not e!3323450))))

(assert (=> b!5354073 (= res!2271643 (isEmpty!33291 (tail!10579 s!2326)))))

(declare-fun b!5354074 () Bool)

(declare-fun e!3323445 () Bool)

(assert (=> b!5354074 (= e!3323445 e!3323451)))

(declare-fun res!2271639 () Bool)

(assert (=> b!5354074 (=> res!2271639 e!3323451)))

(declare-fun call!382880 () Bool)

(assert (=> b!5354074 (= res!2271639 call!382880)))

(declare-fun b!5354075 () Bool)

(assert (=> b!5354075 (= e!3323451 (not (= (head!11482 s!2326) (c!932025 r!7292))))))

(declare-fun d!1716402 () Bool)

(assert (=> d!1716402 e!3323447))

(declare-fun c!932223 () Bool)

(assert (=> d!1716402 (= c!932223 ((_ is EmptyExpr!15045) r!7292))))

(assert (=> d!1716402 (= lt!2181717 e!3323446)))

(declare-fun c!932222 () Bool)

(assert (=> d!1716402 (= c!932222 (isEmpty!33291 s!2326))))

(assert (=> d!1716402 (validRegex!6781 r!7292)))

(assert (=> d!1716402 (= (matchR!7230 r!7292 s!2326) lt!2181717)))

(declare-fun b!5354076 () Bool)

(declare-fun res!2271642 () Bool)

(assert (=> b!5354076 (=> (not res!2271642) (not e!3323450))))

(assert (=> b!5354076 (= res!2271642 (not call!382880))))

(declare-fun bm!382875 () Bool)

(assert (=> bm!382875 (= call!382880 (isEmpty!33291 s!2326))))

(declare-fun b!5354077 () Bool)

(declare-fun derivativeStep!4203 (Regex!15045 C!30360) Regex!15045)

(assert (=> b!5354077 (= e!3323446 (matchR!7230 (derivativeStep!4203 r!7292 (head!11482 s!2326)) (tail!10579 s!2326)))))

(declare-fun b!5354078 () Bool)

(assert (=> b!5354078 (= e!3323449 e!3323445)))

(declare-fun res!2271637 () Bool)

(assert (=> b!5354078 (=> (not res!2271637) (not e!3323445))))

(assert (=> b!5354078 (= res!2271637 (not lt!2181717))))

(declare-fun b!5354079 () Bool)

(assert (=> b!5354079 (= e!3323447 (= lt!2181717 call!382880))))

(assert (= (and d!1716402 c!932222) b!5354068))

(assert (= (and d!1716402 (not c!932222)) b!5354077))

(assert (= (and d!1716402 c!932223) b!5354079))

(assert (= (and d!1716402 (not c!932223)) b!5354070))

(assert (= (and b!5354070 c!932221) b!5354071))

(assert (= (and b!5354070 (not c!932221)) b!5354072))

(assert (= (and b!5354072 (not res!2271640)) b!5354069))

(assert (= (and b!5354069 res!2271638) b!5354076))

(assert (= (and b!5354076 res!2271642) b!5354073))

(assert (= (and b!5354073 res!2271643) b!5354067))

(assert (= (and b!5354069 (not res!2271641)) b!5354078))

(assert (= (and b!5354078 res!2271637) b!5354074))

(assert (= (and b!5354074 (not res!2271639)) b!5354066))

(assert (= (and b!5354066 (not res!2271636)) b!5354075))

(assert (= (or b!5354079 b!5354074 b!5354076) bm!382875))

(declare-fun m!6384262 () Bool)

(assert (=> b!5354075 m!6384262))

(assert (=> bm!382875 m!6384254))

(assert (=> b!5354077 m!6384262))

(assert (=> b!5354077 m!6384262))

(declare-fun m!6384264 () Bool)

(assert (=> b!5354077 m!6384264))

(declare-fun m!6384266 () Bool)

(assert (=> b!5354077 m!6384266))

(assert (=> b!5354077 m!6384264))

(assert (=> b!5354077 m!6384266))

(declare-fun m!6384268 () Bool)

(assert (=> b!5354077 m!6384268))

(declare-fun m!6384270 () Bool)

(assert (=> b!5354068 m!6384270))

(assert (=> b!5354067 m!6384262))

(assert (=> d!1716402 m!6384254))

(assert (=> d!1716402 m!6383832))

(assert (=> b!5354066 m!6384266))

(assert (=> b!5354066 m!6384266))

(declare-fun m!6384272 () Bool)

(assert (=> b!5354066 m!6384272))

(assert (=> b!5354073 m!6384266))

(assert (=> b!5354073 m!6384266))

(assert (=> b!5354073 m!6384272))

(assert (=> b!5353367 d!1716402))

(declare-fun d!1716404 () Bool)

(assert (=> d!1716404 (= (matchR!7230 r!7292 s!2326) (matchRSpec!2148 r!7292 s!2326))))

(declare-fun lt!2181720 () Unit!153698)

(declare-fun choose!40183 (Regex!15045 List!61434) Unit!153698)

(assert (=> d!1716404 (= lt!2181720 (choose!40183 r!7292 s!2326))))

(assert (=> d!1716404 (validRegex!6781 r!7292)))

(assert (=> d!1716404 (= (mainMatchTheorem!2148 r!7292 s!2326) lt!2181720)))

(declare-fun bs!1240928 () Bool)

(assert (= bs!1240928 d!1716404))

(assert (=> bs!1240928 m!6383828))

(assert (=> bs!1240928 m!6383826))

(declare-fun m!6384274 () Bool)

(assert (=> bs!1240928 m!6384274))

(assert (=> bs!1240928 m!6383832))

(assert (=> b!5353367 d!1716404))

(declare-fun b!5354087 () Bool)

(declare-fun e!3323457 () Bool)

(declare-fun tp!1487080 () Bool)

(assert (=> b!5354087 (= e!3323457 tp!1487080)))

(declare-fun e!3323456 () Bool)

(declare-fun b!5354086 () Bool)

(declare-fun tp!1487081 () Bool)

(assert (=> b!5354086 (= e!3323456 (and (inv!80859 (h!67760 (t!374655 zl!343))) e!3323457 tp!1487081))))

(assert (=> b!5353363 (= tp!1487015 e!3323456)))

(assert (= b!5354086 b!5354087))

(assert (= (and b!5353363 ((_ is Cons!61312) (t!374655 zl!343))) b!5354086))

(declare-fun m!6384276 () Bool)

(assert (=> b!5354086 m!6384276))

(declare-fun b!5354092 () Bool)

(declare-fun e!3323460 () Bool)

(declare-fun tp!1487086 () Bool)

(declare-fun tp!1487087 () Bool)

(assert (=> b!5354092 (= e!3323460 (and tp!1487086 tp!1487087))))

(assert (=> b!5353368 (= tp!1487011 e!3323460)))

(assert (= (and b!5353368 ((_ is Cons!61311) (exprs!4929 setElem!34599))) b!5354092))

(declare-fun b!5354103 () Bool)

(declare-fun e!3323463 () Bool)

(assert (=> b!5354103 (= e!3323463 tp_is_empty!39343)))

(declare-fun b!5354104 () Bool)

(declare-fun tp!1487102 () Bool)

(declare-fun tp!1487101 () Bool)

(assert (=> b!5354104 (= e!3323463 (and tp!1487102 tp!1487101))))

(declare-fun b!5354106 () Bool)

(declare-fun tp!1487098 () Bool)

(declare-fun tp!1487099 () Bool)

(assert (=> b!5354106 (= e!3323463 (and tp!1487098 tp!1487099))))

(declare-fun b!5354105 () Bool)

(declare-fun tp!1487100 () Bool)

(assert (=> b!5354105 (= e!3323463 tp!1487100)))

(assert (=> b!5353384 (= tp!1487010 e!3323463)))

(assert (= (and b!5353384 ((_ is ElementMatch!15045) (regOne!30603 r!7292))) b!5354103))

(assert (= (and b!5353384 ((_ is Concat!23890) (regOne!30603 r!7292))) b!5354104))

(assert (= (and b!5353384 ((_ is Star!15045) (regOne!30603 r!7292))) b!5354105))

(assert (= (and b!5353384 ((_ is Union!15045) (regOne!30603 r!7292))) b!5354106))

(declare-fun b!5354107 () Bool)

(declare-fun e!3323464 () Bool)

(assert (=> b!5354107 (= e!3323464 tp_is_empty!39343)))

(declare-fun b!5354108 () Bool)

(declare-fun tp!1487107 () Bool)

(declare-fun tp!1487106 () Bool)

(assert (=> b!5354108 (= e!3323464 (and tp!1487107 tp!1487106))))

(declare-fun b!5354110 () Bool)

(declare-fun tp!1487103 () Bool)

(declare-fun tp!1487104 () Bool)

(assert (=> b!5354110 (= e!3323464 (and tp!1487103 tp!1487104))))

(declare-fun b!5354109 () Bool)

(declare-fun tp!1487105 () Bool)

(assert (=> b!5354109 (= e!3323464 tp!1487105)))

(assert (=> b!5353384 (= tp!1487016 e!3323464)))

(assert (= (and b!5353384 ((_ is ElementMatch!15045) (regTwo!30603 r!7292))) b!5354107))

(assert (= (and b!5353384 ((_ is Concat!23890) (regTwo!30603 r!7292))) b!5354108))

(assert (= (and b!5353384 ((_ is Star!15045) (regTwo!30603 r!7292))) b!5354109))

(assert (= (and b!5353384 ((_ is Union!15045) (regTwo!30603 r!7292))) b!5354110))

(declare-fun b!5354111 () Bool)

(declare-fun e!3323465 () Bool)

(assert (=> b!5354111 (= e!3323465 tp_is_empty!39343)))

(declare-fun b!5354112 () Bool)

(declare-fun tp!1487112 () Bool)

(declare-fun tp!1487111 () Bool)

(assert (=> b!5354112 (= e!3323465 (and tp!1487112 tp!1487111))))

(declare-fun b!5354114 () Bool)

(declare-fun tp!1487108 () Bool)

(declare-fun tp!1487109 () Bool)

(assert (=> b!5354114 (= e!3323465 (and tp!1487108 tp!1487109))))

(declare-fun b!5354113 () Bool)

(declare-fun tp!1487110 () Bool)

(assert (=> b!5354113 (= e!3323465 tp!1487110)))

(assert (=> b!5353364 (= tp!1487012 e!3323465)))

(assert (= (and b!5353364 ((_ is ElementMatch!15045) (regOne!30602 r!7292))) b!5354111))

(assert (= (and b!5353364 ((_ is Concat!23890) (regOne!30602 r!7292))) b!5354112))

(assert (= (and b!5353364 ((_ is Star!15045) (regOne!30602 r!7292))) b!5354113))

(assert (= (and b!5353364 ((_ is Union!15045) (regOne!30602 r!7292))) b!5354114))

(declare-fun b!5354115 () Bool)

(declare-fun e!3323466 () Bool)

(assert (=> b!5354115 (= e!3323466 tp_is_empty!39343)))

(declare-fun b!5354116 () Bool)

(declare-fun tp!1487117 () Bool)

(declare-fun tp!1487116 () Bool)

(assert (=> b!5354116 (= e!3323466 (and tp!1487117 tp!1487116))))

(declare-fun b!5354118 () Bool)

(declare-fun tp!1487113 () Bool)

(declare-fun tp!1487114 () Bool)

(assert (=> b!5354118 (= e!3323466 (and tp!1487113 tp!1487114))))

(declare-fun b!5354117 () Bool)

(declare-fun tp!1487115 () Bool)

(assert (=> b!5354117 (= e!3323466 tp!1487115)))

(assert (=> b!5353364 (= tp!1487014 e!3323466)))

(assert (= (and b!5353364 ((_ is ElementMatch!15045) (regTwo!30602 r!7292))) b!5354115))

(assert (= (and b!5353364 ((_ is Concat!23890) (regTwo!30602 r!7292))) b!5354116))

(assert (= (and b!5353364 ((_ is Star!15045) (regTwo!30602 r!7292))) b!5354117))

(assert (= (and b!5353364 ((_ is Union!15045) (regTwo!30602 r!7292))) b!5354118))

(declare-fun b!5354123 () Bool)

(declare-fun e!3323469 () Bool)

(declare-fun tp!1487120 () Bool)

(assert (=> b!5354123 (= e!3323469 (and tp_is_empty!39343 tp!1487120))))

(assert (=> b!5353365 (= tp!1487008 e!3323469)))

(assert (= (and b!5353365 ((_ is Cons!61310) (t!374653 s!2326))) b!5354123))

(declare-fun condSetEmpty!34605 () Bool)

(assert (=> setNonEmpty!34599 (= condSetEmpty!34605 (= setRest!34599 ((as const (Array Context!8858 Bool)) false)))))

(declare-fun setRes!34605 () Bool)

(assert (=> setNonEmpty!34599 (= tp!1487013 setRes!34605)))

(declare-fun setIsEmpty!34605 () Bool)

(assert (=> setIsEmpty!34605 setRes!34605))

(declare-fun e!3323472 () Bool)

(declare-fun tp!1487125 () Bool)

(declare-fun setElem!34605 () Context!8858)

(declare-fun setNonEmpty!34605 () Bool)

(assert (=> setNonEmpty!34605 (= setRes!34605 (and tp!1487125 (inv!80859 setElem!34605) e!3323472))))

(declare-fun setRest!34605 () (InoxSet Context!8858))

(assert (=> setNonEmpty!34605 (= setRest!34599 ((_ map or) (store ((as const (Array Context!8858 Bool)) false) setElem!34605 true) setRest!34605))))

(declare-fun b!5354128 () Bool)

(declare-fun tp!1487126 () Bool)

(assert (=> b!5354128 (= e!3323472 tp!1487126)))

(assert (= (and setNonEmpty!34599 condSetEmpty!34605) setIsEmpty!34605))

(assert (= (and setNonEmpty!34599 (not condSetEmpty!34605)) setNonEmpty!34605))

(assert (= setNonEmpty!34605 b!5354128))

(declare-fun m!6384278 () Bool)

(assert (=> setNonEmpty!34605 m!6384278))

(declare-fun b!5354129 () Bool)

(declare-fun e!3323473 () Bool)

(assert (=> b!5354129 (= e!3323473 tp_is_empty!39343)))

(declare-fun b!5354130 () Bool)

(declare-fun tp!1487131 () Bool)

(declare-fun tp!1487130 () Bool)

(assert (=> b!5354130 (= e!3323473 (and tp!1487131 tp!1487130))))

(declare-fun b!5354132 () Bool)

(declare-fun tp!1487127 () Bool)

(declare-fun tp!1487128 () Bool)

(assert (=> b!5354132 (= e!3323473 (and tp!1487127 tp!1487128))))

(declare-fun b!5354131 () Bool)

(declare-fun tp!1487129 () Bool)

(assert (=> b!5354131 (= e!3323473 tp!1487129)))

(assert (=> b!5353361 (= tp!1487009 e!3323473)))

(assert (= (and b!5353361 ((_ is ElementMatch!15045) (reg!15374 r!7292))) b!5354129))

(assert (= (and b!5353361 ((_ is Concat!23890) (reg!15374 r!7292))) b!5354130))

(assert (= (and b!5353361 ((_ is Star!15045) (reg!15374 r!7292))) b!5354131))

(assert (= (and b!5353361 ((_ is Union!15045) (reg!15374 r!7292))) b!5354132))

(declare-fun b!5354133 () Bool)

(declare-fun e!3323474 () Bool)

(declare-fun tp!1487132 () Bool)

(declare-fun tp!1487133 () Bool)

(assert (=> b!5354133 (= e!3323474 (and tp!1487132 tp!1487133))))

(assert (=> b!5353386 (= tp!1487017 e!3323474)))

(assert (= (and b!5353386 ((_ is Cons!61311) (exprs!4929 (h!67760 zl!343)))) b!5354133))

(declare-fun b_lambda!205393 () Bool)

(assert (= b_lambda!205391 (or b!5353362 b_lambda!205393)))

(declare-fun bs!1240929 () Bool)

(declare-fun d!1716406 () Bool)

(assert (= bs!1240929 (and d!1716406 b!5353362)))

(assert (=> bs!1240929 (= (dynLambda!24233 lambda!275269 (h!67760 zl!343)) (derivationStepZipperUp!417 (h!67760 zl!343) (h!67758 s!2326)))))

(assert (=> bs!1240929 m!6383776))

(assert (=> d!1716370 d!1716406))

(declare-fun b_lambda!205395 () Bool)

(assert (= b_lambda!205385 (or b!5353362 b_lambda!205395)))

(declare-fun bs!1240930 () Bool)

(declare-fun d!1716408 () Bool)

(assert (= bs!1240930 (and d!1716408 b!5353362)))

(assert (=> bs!1240930 (= (dynLambda!24233 lambda!275269 lt!2181632) (derivationStepZipperUp!417 lt!2181632 (h!67758 s!2326)))))

(assert (=> bs!1240930 m!6383820))

(assert (=> d!1716346 d!1716408))

(check-sat (not b!5354133) (not b!5353856) (not bm!382853) (not b!5354105) (not b!5353986) (not d!1716384) (not bm!382836) (not b!5353993) (not d!1716386) (not b!5353634) (not b!5353638) (not b!5354132) (not d!1716306) (not bm!382875) (not d!1716376) (not bm!382828) (not b!5353923) (not bm!382857) (not d!1716364) (not b!5353556) (not d!1716398) (not d!1716290) (not b!5353790) (not b!5354034) (not bm!382858) (not b!5353937) (not b!5353938) (not b!5353558) (not b!5354067) (not b!5354077) (not b!5353633) (not d!1716404) (not b!5354086) tp_is_empty!39343 (not b_lambda!205395) (not bm!382864) (not b!5353944) (not b!5353922) (not b!5354110) (not bm!382839) (not b!5354066) (not d!1716396) (not bs!1240929) (not b!5353852) (not b_lambda!205393) (not b!5354116) (not b!5353984) (not b!5353890) (not b!5353988) (not b!5354092) (not b!5354109) (not b!5354117) (not b!5354131) (not bm!382859) (not d!1716360) (not b!5353920) (not b!5353954) (not bm!382871) (not d!1716374) (not bm!382838) (not b!5353983) (not d!1716340) (not b!5354123) (not b!5353520) (not b!5354128) (not b!5353555) (not b!5354113) (not b!5353897) (not b!5353924) (not b!5353636) (not b!5353730) (not bm!382872) (not b!5354112) (not b!5353985) (not b!5353919) (not d!1716388) (not d!1716370) (not d!1716372) (not d!1716302) (not d!1716308) (not b!5353916) (not bs!1240930) (not d!1716380) (not b!5353637) (not b!5354035) (not b!5353981) (not b!5354104) (not d!1716332) (not b!5354118) (not bm!382837) (not bm!382866) (not d!1716378) (not bm!382855) (not b!5353847) (not b!5354087) (not setNonEmpty!34605) (not b!5354114) (not b!5353861) (not d!1716390) (not b!5354130) (not d!1716346) (not bm!382862) (not b!5354108) (not d!1716352) (not b!5354068) (not b!5354073) (not b!5353851) (not b!5354075) (not b!5353635) (not bm!382829) (not b!5353557) (not b!5353639) (not b!5353982) (not b!5353857) (not b!5354106) (not d!1716382) (not d!1716402) (not b!5353786))
(check-sat)
(get-model)

(declare-fun d!1716628 () Bool)

(declare-fun c!932356 () Bool)

(assert (=> d!1716628 (= c!932356 (isEmpty!33291 (tail!10579 (t!374653 s!2326))))))

(declare-fun e!3323790 () Bool)

(assert (=> d!1716628 (= (matchZipper!1289 (derivationStepZipper!1284 ((_ map or) lt!2181618 lt!2181634) (head!11482 (t!374653 s!2326))) (tail!10579 (t!374653 s!2326))) e!3323790)))

(declare-fun b!5354693 () Bool)

(assert (=> b!5354693 (= e!3323790 (nullableZipper!1382 (derivationStepZipper!1284 ((_ map or) lt!2181618 lt!2181634) (head!11482 (t!374653 s!2326)))))))

(declare-fun b!5354694 () Bool)

(assert (=> b!5354694 (= e!3323790 (matchZipper!1289 (derivationStepZipper!1284 (derivationStepZipper!1284 ((_ map or) lt!2181618 lt!2181634) (head!11482 (t!374653 s!2326))) (head!11482 (tail!10579 (t!374653 s!2326)))) (tail!10579 (tail!10579 (t!374653 s!2326)))))))

(assert (= (and d!1716628 c!932356) b!5354693))

(assert (= (and d!1716628 (not c!932356)) b!5354694))

(assert (=> d!1716628 m!6383968))

(declare-fun m!6384748 () Bool)

(assert (=> d!1716628 m!6384748))

(assert (=> b!5354693 m!6383974))

(declare-fun m!6384750 () Bool)

(assert (=> b!5354693 m!6384750))

(assert (=> b!5354694 m!6383968))

(declare-fun m!6384752 () Bool)

(assert (=> b!5354694 m!6384752))

(assert (=> b!5354694 m!6383974))

(assert (=> b!5354694 m!6384752))

(declare-fun m!6384754 () Bool)

(assert (=> b!5354694 m!6384754))

(assert (=> b!5354694 m!6383968))

(declare-fun m!6384756 () Bool)

(assert (=> b!5354694 m!6384756))

(assert (=> b!5354694 m!6384754))

(assert (=> b!5354694 m!6384756))

(declare-fun m!6384758 () Bool)

(assert (=> b!5354694 m!6384758))

(assert (=> b!5353558 d!1716628))

(declare-fun bs!1241052 () Bool)

(declare-fun d!1716630 () Bool)

(assert (= bs!1241052 (and d!1716630 b!5353362)))

(declare-fun lambda!275356 () Int)

(assert (=> bs!1241052 (= (= (head!11482 (t!374653 s!2326)) (h!67758 s!2326)) (= lambda!275356 lambda!275269))))

(assert (=> d!1716630 true))

(assert (=> d!1716630 (= (derivationStepZipper!1284 ((_ map or) lt!2181618 lt!2181634) (head!11482 (t!374653 s!2326))) (flatMap!772 ((_ map or) lt!2181618 lt!2181634) lambda!275356))))

(declare-fun bs!1241053 () Bool)

(assert (= bs!1241053 d!1716630))

(declare-fun m!6384760 () Bool)

(assert (=> bs!1241053 m!6384760))

(assert (=> b!5353558 d!1716630))

(declare-fun d!1716632 () Bool)

(assert (=> d!1716632 (= (head!11482 (t!374653 s!2326)) (h!67758 (t!374653 s!2326)))))

(assert (=> b!5353558 d!1716632))

(declare-fun d!1716634 () Bool)

(assert (=> d!1716634 (= (tail!10579 (t!374653 s!2326)) (t!374653 (t!374653 s!2326)))))

(assert (=> b!5353558 d!1716634))

(assert (=> d!1716346 d!1716340))

(declare-fun d!1716636 () Bool)

(assert (=> d!1716636 (= (flatMap!772 lt!2181620 lambda!275269) (dynLambda!24233 lambda!275269 lt!2181632))))

(assert (=> d!1716636 true))

(declare-fun _$13!1927 () Unit!153698)

(assert (=> d!1716636 (= (choose!40178 lt!2181620 lt!2181632 lambda!275269) _$13!1927)))

(declare-fun b_lambda!205425 () Bool)

(assert (=> (not b_lambda!205425) (not d!1716636)))

(declare-fun bs!1241054 () Bool)

(assert (= bs!1241054 d!1716636))

(assert (=> bs!1241054 m!6383818))

(assert (=> bs!1241054 m!6384114))

(assert (=> d!1716346 d!1716636))

(declare-fun d!1716638 () Bool)

(assert (=> d!1716638 (= (isDefined!11859 lt!2181698) (not (isEmpty!33292 lt!2181698)))))

(declare-fun bs!1241055 () Bool)

(assert (= bs!1241055 d!1716638))

(declare-fun m!6384762 () Bool)

(assert (=> bs!1241055 m!6384762))

(assert (=> d!1716376 d!1716638))

(declare-fun b!5354697 () Bool)

(declare-fun res!2271830 () Bool)

(declare-fun e!3323797 () Bool)

(assert (=> b!5354697 (=> res!2271830 e!3323797)))

(assert (=> b!5354697 (= res!2271830 (not (isEmpty!33291 (tail!10579 Nil!61310))))))

(declare-fun b!5354698 () Bool)

(declare-fun e!3323796 () Bool)

(assert (=> b!5354698 (= e!3323796 (= (head!11482 Nil!61310) (c!932025 (regOne!30602 r!7292))))))

(declare-fun b!5354699 () Bool)

(declare-fun e!3323792 () Bool)

(assert (=> b!5354699 (= e!3323792 (nullable!5214 (regOne!30602 r!7292)))))

(declare-fun b!5354700 () Bool)

(declare-fun res!2271835 () Bool)

(declare-fun e!3323795 () Bool)

(assert (=> b!5354700 (=> res!2271835 e!3323795)))

(assert (=> b!5354700 (= res!2271835 e!3323796)))

(declare-fun res!2271832 () Bool)

(assert (=> b!5354700 (=> (not res!2271832) (not e!3323796))))

(declare-fun lt!2181743 () Bool)

(assert (=> b!5354700 (= res!2271832 lt!2181743)))

(declare-fun b!5354701 () Bool)

(declare-fun e!3323793 () Bool)

(declare-fun e!3323794 () Bool)

(assert (=> b!5354701 (= e!3323793 e!3323794)))

(declare-fun c!932359 () Bool)

(assert (=> b!5354701 (= c!932359 ((_ is EmptyLang!15045) (regOne!30602 r!7292)))))

(declare-fun b!5354702 () Bool)

(assert (=> b!5354702 (= e!3323794 (not lt!2181743))))

(declare-fun b!5354703 () Bool)

(declare-fun res!2271834 () Bool)

(assert (=> b!5354703 (=> res!2271834 e!3323795)))

(assert (=> b!5354703 (= res!2271834 (not ((_ is ElementMatch!15045) (regOne!30602 r!7292))))))

(assert (=> b!5354703 (= e!3323794 e!3323795)))

(declare-fun b!5354704 () Bool)

(declare-fun res!2271837 () Bool)

(assert (=> b!5354704 (=> (not res!2271837) (not e!3323796))))

(assert (=> b!5354704 (= res!2271837 (isEmpty!33291 (tail!10579 Nil!61310)))))

(declare-fun b!5354705 () Bool)

(declare-fun e!3323791 () Bool)

(assert (=> b!5354705 (= e!3323791 e!3323797)))

(declare-fun res!2271833 () Bool)

(assert (=> b!5354705 (=> res!2271833 e!3323797)))

(declare-fun call!382986 () Bool)

(assert (=> b!5354705 (= res!2271833 call!382986)))

(declare-fun b!5354706 () Bool)

(assert (=> b!5354706 (= e!3323797 (not (= (head!11482 Nil!61310) (c!932025 (regOne!30602 r!7292)))))))

(declare-fun d!1716640 () Bool)

(assert (=> d!1716640 e!3323793))

(declare-fun c!932361 () Bool)

(assert (=> d!1716640 (= c!932361 ((_ is EmptyExpr!15045) (regOne!30602 r!7292)))))

(assert (=> d!1716640 (= lt!2181743 e!3323792)))

(declare-fun c!932360 () Bool)

(assert (=> d!1716640 (= c!932360 (isEmpty!33291 Nil!61310))))

(assert (=> d!1716640 (validRegex!6781 (regOne!30602 r!7292))))

(assert (=> d!1716640 (= (matchR!7230 (regOne!30602 r!7292) Nil!61310) lt!2181743)))

(declare-fun b!5354707 () Bool)

(declare-fun res!2271836 () Bool)

(assert (=> b!5354707 (=> (not res!2271836) (not e!3323796))))

(assert (=> b!5354707 (= res!2271836 (not call!382986))))

(declare-fun bm!382981 () Bool)

(assert (=> bm!382981 (= call!382986 (isEmpty!33291 Nil!61310))))

(declare-fun b!5354708 () Bool)

(assert (=> b!5354708 (= e!3323792 (matchR!7230 (derivativeStep!4203 (regOne!30602 r!7292) (head!11482 Nil!61310)) (tail!10579 Nil!61310)))))

(declare-fun b!5354709 () Bool)

(assert (=> b!5354709 (= e!3323795 e!3323791)))

(declare-fun res!2271831 () Bool)

(assert (=> b!5354709 (=> (not res!2271831) (not e!3323791))))

(assert (=> b!5354709 (= res!2271831 (not lt!2181743))))

(declare-fun b!5354710 () Bool)

(assert (=> b!5354710 (= e!3323793 (= lt!2181743 call!382986))))

(assert (= (and d!1716640 c!932360) b!5354699))

(assert (= (and d!1716640 (not c!932360)) b!5354708))

(assert (= (and d!1716640 c!932361) b!5354710))

(assert (= (and d!1716640 (not c!932361)) b!5354701))

(assert (= (and b!5354701 c!932359) b!5354702))

(assert (= (and b!5354701 (not c!932359)) b!5354703))

(assert (= (and b!5354703 (not res!2271834)) b!5354700))

(assert (= (and b!5354700 res!2271832) b!5354707))

(assert (= (and b!5354707 res!2271836) b!5354704))

(assert (= (and b!5354704 res!2271837) b!5354698))

(assert (= (and b!5354700 (not res!2271835)) b!5354709))

(assert (= (and b!5354709 res!2271831) b!5354705))

(assert (= (and b!5354705 (not res!2271833)) b!5354697))

(assert (= (and b!5354697 (not res!2271830)) b!5354706))

(assert (= (or b!5354710 b!5354705 b!5354707) bm!382981))

(declare-fun m!6384764 () Bool)

(assert (=> b!5354706 m!6384764))

(declare-fun m!6384766 () Bool)

(assert (=> bm!382981 m!6384766))

(assert (=> b!5354708 m!6384764))

(assert (=> b!5354708 m!6384764))

(declare-fun m!6384768 () Bool)

(assert (=> b!5354708 m!6384768))

(declare-fun m!6384770 () Bool)

(assert (=> b!5354708 m!6384770))

(assert (=> b!5354708 m!6384768))

(assert (=> b!5354708 m!6384770))

(declare-fun m!6384772 () Bool)

(assert (=> b!5354708 m!6384772))

(declare-fun m!6384774 () Bool)

(assert (=> b!5354699 m!6384774))

(assert (=> b!5354698 m!6384764))

(assert (=> d!1716640 m!6384766))

(assert (=> d!1716640 m!6384174))

(assert (=> b!5354697 m!6384770))

(assert (=> b!5354697 m!6384770))

(declare-fun m!6384776 () Bool)

(assert (=> b!5354697 m!6384776))

(assert (=> b!5354704 m!6384770))

(assert (=> b!5354704 m!6384770))

(assert (=> b!5354704 m!6384776))

(assert (=> d!1716376 d!1716640))

(declare-fun b!5354711 () Bool)

(declare-fun e!3323798 () Bool)

(declare-fun call!382987 () Bool)

(assert (=> b!5354711 (= e!3323798 call!382987)))

(declare-fun b!5354712 () Bool)

(declare-fun e!3323804 () Bool)

(declare-fun e!3323803 () Bool)

(assert (=> b!5354712 (= e!3323804 e!3323803)))

(declare-fun res!2271842 () Bool)

(assert (=> b!5354712 (=> (not res!2271842) (not e!3323803))))

(declare-fun call!382988 () Bool)

(assert (=> b!5354712 (= res!2271842 call!382988)))

(declare-fun b!5354713 () Bool)

(assert (=> b!5354713 (= e!3323803 call!382987)))

(declare-fun bm!382982 () Bool)

(declare-fun call!382989 () Bool)

(declare-fun c!932363 () Bool)

(declare-fun c!932362 () Bool)

(assert (=> bm!382982 (= call!382989 (validRegex!6781 (ite c!932362 (reg!15374 (regOne!30602 r!7292)) (ite c!932363 (regTwo!30603 (regOne!30602 r!7292)) (regTwo!30602 (regOne!30602 r!7292))))))))

(declare-fun b!5354714 () Bool)

(declare-fun e!3323799 () Bool)

(declare-fun e!3323802 () Bool)

(assert (=> b!5354714 (= e!3323799 e!3323802)))

(assert (=> b!5354714 (= c!932363 ((_ is Union!15045) (regOne!30602 r!7292)))))

(declare-fun b!5354715 () Bool)

(declare-fun e!3323801 () Bool)

(assert (=> b!5354715 (= e!3323801 call!382989)))

(declare-fun b!5354716 () Bool)

(assert (=> b!5354716 (= e!3323799 e!3323801)))

(declare-fun res!2271839 () Bool)

(assert (=> b!5354716 (= res!2271839 (not (nullable!5214 (reg!15374 (regOne!30602 r!7292)))))))

(assert (=> b!5354716 (=> (not res!2271839) (not e!3323801))))

(declare-fun b!5354717 () Bool)

(declare-fun e!3323800 () Bool)

(assert (=> b!5354717 (= e!3323800 e!3323799)))

(assert (=> b!5354717 (= c!932362 ((_ is Star!15045) (regOne!30602 r!7292)))))

(declare-fun d!1716642 () Bool)

(declare-fun res!2271840 () Bool)

(assert (=> d!1716642 (=> res!2271840 e!3323800)))

(assert (=> d!1716642 (= res!2271840 ((_ is ElementMatch!15045) (regOne!30602 r!7292)))))

(assert (=> d!1716642 (= (validRegex!6781 (regOne!30602 r!7292)) e!3323800)))

(declare-fun b!5354718 () Bool)

(declare-fun res!2271838 () Bool)

(assert (=> b!5354718 (=> (not res!2271838) (not e!3323798))))

(assert (=> b!5354718 (= res!2271838 call!382988)))

(assert (=> b!5354718 (= e!3323802 e!3323798)))

(declare-fun b!5354719 () Bool)

(declare-fun res!2271841 () Bool)

(assert (=> b!5354719 (=> res!2271841 e!3323804)))

(assert (=> b!5354719 (= res!2271841 (not ((_ is Concat!23890) (regOne!30602 r!7292))))))

(assert (=> b!5354719 (= e!3323802 e!3323804)))

(declare-fun bm!382983 () Bool)

(assert (=> bm!382983 (= call!382988 (validRegex!6781 (ite c!932363 (regOne!30603 (regOne!30602 r!7292)) (regOne!30602 (regOne!30602 r!7292)))))))

(declare-fun bm!382984 () Bool)

(assert (=> bm!382984 (= call!382987 call!382989)))

(assert (= (and d!1716642 (not res!2271840)) b!5354717))

(assert (= (and b!5354717 c!932362) b!5354716))

(assert (= (and b!5354717 (not c!932362)) b!5354714))

(assert (= (and b!5354716 res!2271839) b!5354715))

(assert (= (and b!5354714 c!932363) b!5354718))

(assert (= (and b!5354714 (not c!932363)) b!5354719))

(assert (= (and b!5354718 res!2271838) b!5354711))

(assert (= (and b!5354719 (not res!2271841)) b!5354712))

(assert (= (and b!5354712 res!2271842) b!5354713))

(assert (= (or b!5354711 b!5354713) bm!382984))

(assert (= (or b!5354718 b!5354712) bm!382983))

(assert (= (or b!5354715 bm!382984) bm!382982))

(declare-fun m!6384778 () Bool)

(assert (=> bm!382982 m!6384778))

(declare-fun m!6384780 () Bool)

(assert (=> b!5354716 m!6384780))

(declare-fun m!6384782 () Bool)

(assert (=> bm!382983 m!6384782))

(assert (=> d!1716376 d!1716642))

(declare-fun d!1716644 () Bool)

(declare-fun lambda!275359 () Int)

(declare-fun exists!2019 ((InoxSet Context!8858) Int) Bool)

(assert (=> d!1716644 (= (nullableZipper!1382 lt!2181634) (exists!2019 lt!2181634 lambda!275359))))

(declare-fun bs!1241056 () Bool)

(assert (= bs!1241056 d!1716644))

(declare-fun m!6384784 () Bool)

(assert (=> bs!1241056 m!6384784))

(assert (=> b!5353937 d!1716644))

(declare-fun bs!1241057 () Bool)

(declare-fun d!1716646 () Bool)

(assert (= bs!1241057 (and d!1716646 d!1716308)))

(declare-fun lambda!275360 () Int)

(assert (=> bs!1241057 (= lambda!275360 lambda!275294)))

(declare-fun bs!1241058 () Bool)

(assert (= bs!1241058 (and d!1716646 d!1716398)))

(assert (=> bs!1241058 (= lambda!275360 lambda!275319)))

(declare-fun bs!1241059 () Bool)

(assert (= bs!1241059 (and d!1716646 d!1716374)))

(assert (=> bs!1241059 (= lambda!275360 lambda!275304)))

(declare-fun bs!1241060 () Bool)

(assert (= bs!1241060 (and d!1716646 d!1716396)))

(assert (=> bs!1241060 (= lambda!275360 lambda!275316)))

(declare-fun bs!1241061 () Bool)

(assert (= bs!1241061 (and d!1716646 d!1716352)))

(assert (=> bs!1241061 (= lambda!275360 lambda!275303)))

(declare-fun b!5354720 () Bool)

(declare-fun e!3323809 () Regex!15045)

(assert (=> b!5354720 (= e!3323809 (Concat!23890 (h!67759 (t!374654 (exprs!4929 (h!67760 zl!343)))) (generalisedConcat!714 (t!374654 (t!374654 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5354721 () Bool)

(declare-fun e!3323806 () Bool)

(declare-fun lt!2181744 () Regex!15045)

(assert (=> b!5354721 (= e!3323806 (= lt!2181744 (head!11483 (t!374654 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5354722 () Bool)

(declare-fun e!3323808 () Bool)

(declare-fun e!3323810 () Bool)

(assert (=> b!5354722 (= e!3323808 e!3323810)))

(declare-fun c!932367 () Bool)

(assert (=> b!5354722 (= c!932367 (isEmpty!33287 (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5354723 () Bool)

(assert (=> b!5354723 (= e!3323806 (isConcat!440 lt!2181744))))

(declare-fun b!5354724 () Bool)

(declare-fun e!3323807 () Bool)

(assert (=> b!5354724 (= e!3323807 (isEmpty!33287 (t!374654 (t!374654 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5354725 () Bool)

(assert (=> b!5354725 (= e!3323810 e!3323806)))

(declare-fun c!932368 () Bool)

(assert (=> b!5354725 (= c!932368 (isEmpty!33287 (tail!10580 (t!374654 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5354726 () Bool)

(assert (=> b!5354726 (= e!3323810 (isEmptyExpr!917 lt!2181744))))

(declare-fun b!5354727 () Bool)

(declare-fun e!3323805 () Regex!15045)

(assert (=> b!5354727 (= e!3323805 (h!67759 (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(assert (=> d!1716646 e!3323808))

(declare-fun res!2271844 () Bool)

(assert (=> d!1716646 (=> (not res!2271844) (not e!3323808))))

(assert (=> d!1716646 (= res!2271844 (validRegex!6781 lt!2181744))))

(assert (=> d!1716646 (= lt!2181744 e!3323805)))

(declare-fun c!932366 () Bool)

(assert (=> d!1716646 (= c!932366 e!3323807)))

(declare-fun res!2271843 () Bool)

(assert (=> d!1716646 (=> (not res!2271843) (not e!3323807))))

(assert (=> d!1716646 (= res!2271843 ((_ is Cons!61311) (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(assert (=> d!1716646 (forall!14469 (t!374654 (exprs!4929 (h!67760 zl!343))) lambda!275360)))

(assert (=> d!1716646 (= (generalisedConcat!714 (t!374654 (exprs!4929 (h!67760 zl!343)))) lt!2181744)))

(declare-fun b!5354728 () Bool)

(assert (=> b!5354728 (= e!3323809 EmptyExpr!15045)))

(declare-fun b!5354729 () Bool)

(assert (=> b!5354729 (= e!3323805 e!3323809)))

(declare-fun c!932369 () Bool)

(assert (=> b!5354729 (= c!932369 ((_ is Cons!61311) (t!374654 (exprs!4929 (h!67760 zl!343)))))))

(assert (= (and d!1716646 res!2271843) b!5354724))

(assert (= (and d!1716646 c!932366) b!5354727))

(assert (= (and d!1716646 (not c!932366)) b!5354729))

(assert (= (and b!5354729 c!932369) b!5354720))

(assert (= (and b!5354729 (not c!932369)) b!5354728))

(assert (= (and d!1716646 res!2271844) b!5354722))

(assert (= (and b!5354722 c!932367) b!5354726))

(assert (= (and b!5354722 (not c!932367)) b!5354725))

(assert (= (and b!5354725 c!932368) b!5354721))

(assert (= (and b!5354725 (not c!932368)) b!5354723))

(assert (=> b!5354722 m!6383836))

(declare-fun m!6384786 () Bool)

(assert (=> b!5354723 m!6384786))

(declare-fun m!6384788 () Bool)

(assert (=> d!1716646 m!6384788))

(declare-fun m!6384790 () Bool)

(assert (=> d!1716646 m!6384790))

(declare-fun m!6384792 () Bool)

(assert (=> b!5354721 m!6384792))

(declare-fun m!6384794 () Bool)

(assert (=> b!5354724 m!6384794))

(declare-fun m!6384796 () Bool)

(assert (=> b!5354720 m!6384796))

(declare-fun m!6384798 () Bool)

(assert (=> b!5354726 m!6384798))

(declare-fun m!6384800 () Bool)

(assert (=> b!5354725 m!6384800))

(assert (=> b!5354725 m!6384800))

(declare-fun m!6384802 () Bool)

(assert (=> b!5354725 m!6384802))

(assert (=> b!5353633 d!1716646))

(declare-fun d!1716648 () Bool)

(assert (=> d!1716648 (= (nullable!5214 (reg!15374 (reg!15374 (regOne!30602 r!7292)))) (nullableFct!1534 (reg!15374 (reg!15374 (regOne!30602 r!7292)))))))

(declare-fun bs!1241062 () Bool)

(assert (= bs!1241062 d!1716648))

(declare-fun m!6384804 () Bool)

(assert (=> bs!1241062 m!6384804))

(assert (=> b!5353730 d!1716648))

(declare-fun d!1716650 () Bool)

(assert (=> d!1716650 (= ($colon$colon!1432 (exprs!4929 lt!2181621) (ite (or c!932173 c!932172) (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (h!67759 (exprs!4929 (h!67760 zl!343))))) (Cons!61311 (ite (or c!932173 c!932172) (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (h!67759 (exprs!4929 (h!67760 zl!343)))) (exprs!4929 lt!2181621)))))

(assert (=> bm!382855 d!1716650))

(declare-fun d!1716652 () Bool)

(assert (=> d!1716652 (= (nullable!5214 (h!67759 (exprs!4929 lt!2181621))) (nullableFct!1534 (h!67759 (exprs!4929 lt!2181621))))))

(declare-fun bs!1241063 () Bool)

(assert (= bs!1241063 d!1716652))

(declare-fun m!6384806 () Bool)

(assert (=> bs!1241063 m!6384806))

(assert (=> b!5353851 d!1716652))

(declare-fun d!1716654 () Bool)

(assert (=> d!1716654 (= (nullable!5214 (reg!15374 r!7292)) (nullableFct!1534 (reg!15374 r!7292)))))

(declare-fun bs!1241064 () Bool)

(assert (= bs!1241064 d!1716654))

(declare-fun m!6384808 () Bool)

(assert (=> bs!1241064 m!6384808))

(assert (=> b!5353944 d!1716654))

(declare-fun bs!1241065 () Bool)

(declare-fun d!1716656 () Bool)

(assert (= bs!1241065 (and d!1716656 d!1716644)))

(declare-fun lambda!275361 () Int)

(assert (=> bs!1241065 (= lambda!275361 lambda!275359)))

(assert (=> d!1716656 (= (nullableZipper!1382 lt!2181618) (exists!2019 lt!2181618 lambda!275361))))

(declare-fun bs!1241066 () Bool)

(assert (= bs!1241066 d!1716656))

(declare-fun m!6384810 () Bool)

(assert (=> bs!1241066 m!6384810))

(assert (=> b!5353555 d!1716656))

(declare-fun d!1716658 () Bool)

(declare-fun c!932371 () Bool)

(declare-fun e!3323813 () Bool)

(assert (=> d!1716658 (= c!932371 e!3323813)))

(declare-fun res!2271845 () Bool)

(assert (=> d!1716658 (=> (not res!2271845) (not e!3323813))))

(assert (=> d!1716658 (= res!2271845 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632))))))))

(declare-fun e!3323811 () (InoxSet Context!8858))

(assert (=> d!1716658 (= (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 lt!2181632))) (h!67758 s!2326)) e!3323811)))

(declare-fun b!5354730 () Bool)

(declare-fun call!382990 () (InoxSet Context!8858))

(assert (=> b!5354730 (= e!3323811 ((_ map or) call!382990 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632)))))) (h!67758 s!2326))))))

(declare-fun b!5354731 () Bool)

(declare-fun e!3323812 () (InoxSet Context!8858))

(assert (=> b!5354731 (= e!3323811 e!3323812)))

(declare-fun c!932370 () Bool)

(assert (=> b!5354731 (= c!932370 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632))))))))

(declare-fun b!5354732 () Bool)

(assert (=> b!5354732 (= e!3323812 call!382990)))

(declare-fun b!5354733 () Bool)

(assert (=> b!5354733 (= e!3323812 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5354734 () Bool)

(assert (=> b!5354734 (= e!3323813 (nullable!5214 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632)))))))))

(declare-fun bm!382985 () Bool)

(assert (=> bm!382985 (= call!382990 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632))))) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632)))))) (h!67758 s!2326)))))

(assert (= (and d!1716658 res!2271845) b!5354734))

(assert (= (and d!1716658 c!932371) b!5354730))

(assert (= (and d!1716658 (not c!932371)) b!5354731))

(assert (= (and b!5354731 c!932370) b!5354732))

(assert (= (and b!5354731 (not c!932370)) b!5354733))

(assert (= (or b!5354730 b!5354732) bm!382985))

(declare-fun m!6384812 () Bool)

(assert (=> b!5354730 m!6384812))

(declare-fun m!6384814 () Bool)

(assert (=> b!5354734 m!6384814))

(declare-fun m!6384816 () Bool)

(assert (=> bm!382985 m!6384816))

(assert (=> b!5353786 d!1716658))

(declare-fun d!1716660 () Bool)

(assert (=> d!1716660 (= (isEmpty!33287 (exprs!4929 (h!67760 zl!343))) ((_ is Nil!61311) (exprs!4929 (h!67760 zl!343))))))

(assert (=> b!5353635 d!1716660))

(declare-fun bs!1241067 () Bool)

(declare-fun b!5354737 () Bool)

(assert (= bs!1241067 (and b!5354737 b!5354029)))

(declare-fun lambda!275362 () Int)

(assert (=> bs!1241067 (= (and (= (reg!15374 (regTwo!30603 r!7292)) (reg!15374 r!7292)) (= (regTwo!30603 r!7292) r!7292)) (= lambda!275362 lambda!275324))))

(declare-fun bs!1241068 () Bool)

(assert (= bs!1241068 (and b!5354737 b!5353374)))

(assert (=> bs!1241068 (not (= lambda!275362 lambda!275268))))

(assert (=> bs!1241068 (not (= lambda!275362 lambda!275267))))

(declare-fun bs!1241069 () Bool)

(assert (= bs!1241069 (and b!5354737 d!1716384)))

(assert (=> bs!1241069 (not (= lambda!275362 lambda!275313))))

(assert (=> bs!1241069 (not (= lambda!275362 lambda!275312))))

(declare-fun bs!1241070 () Bool)

(assert (= bs!1241070 (and b!5354737 b!5354030)))

(assert (=> bs!1241070 (not (= lambda!275362 lambda!275325))))

(declare-fun bs!1241071 () Bool)

(assert (= bs!1241071 (and b!5354737 d!1716382)))

(assert (=> bs!1241071 (not (= lambda!275362 lambda!275307))))

(assert (=> b!5354737 true))

(assert (=> b!5354737 true))

(declare-fun bs!1241072 () Bool)

(declare-fun b!5354738 () Bool)

(assert (= bs!1241072 (and b!5354738 b!5354029)))

(declare-fun lambda!275363 () Int)

(assert (=> bs!1241072 (not (= lambda!275363 lambda!275324))))

(declare-fun bs!1241073 () Bool)

(assert (= bs!1241073 (and b!5354738 b!5353374)))

(assert (=> bs!1241073 (= (and (= (regOne!30602 (regTwo!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regTwo!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275363 lambda!275268))))

(assert (=> bs!1241073 (not (= lambda!275363 lambda!275267))))

(declare-fun bs!1241074 () Bool)

(assert (= bs!1241074 (and b!5354738 d!1716384)))

(assert (=> bs!1241074 (= (and (= (regOne!30602 (regTwo!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regTwo!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275363 lambda!275313))))

(assert (=> bs!1241074 (not (= lambda!275363 lambda!275312))))

(declare-fun bs!1241075 () Bool)

(assert (= bs!1241075 (and b!5354738 b!5354737)))

(assert (=> bs!1241075 (not (= lambda!275363 lambda!275362))))

(declare-fun bs!1241076 () Bool)

(assert (= bs!1241076 (and b!5354738 b!5354030)))

(assert (=> bs!1241076 (= (and (= (regOne!30602 (regTwo!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regTwo!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275363 lambda!275325))))

(declare-fun bs!1241077 () Bool)

(assert (= bs!1241077 (and b!5354738 d!1716382)))

(assert (=> bs!1241077 (not (= lambda!275363 lambda!275307))))

(assert (=> b!5354738 true))

(assert (=> b!5354738 true))

(declare-fun b!5354735 () Bool)

(declare-fun c!932374 () Bool)

(assert (=> b!5354735 (= c!932374 ((_ is ElementMatch!15045) (regTwo!30603 r!7292)))))

(declare-fun e!3323814 () Bool)

(declare-fun e!3323815 () Bool)

(assert (=> b!5354735 (= e!3323814 e!3323815)))

(declare-fun b!5354736 () Bool)

(declare-fun e!3323819 () Bool)

(declare-fun e!3323818 () Bool)

(assert (=> b!5354736 (= e!3323819 e!3323818)))

(declare-fun c!932373 () Bool)

(assert (=> b!5354736 (= c!932373 ((_ is Star!15045) (regTwo!30603 r!7292)))))

(declare-fun e!3323820 () Bool)

(declare-fun call!382992 () Bool)

(assert (=> b!5354737 (= e!3323820 call!382992)))

(assert (=> b!5354738 (= e!3323818 call!382992)))

(declare-fun b!5354739 () Bool)

(declare-fun e!3323817 () Bool)

(declare-fun call!382991 () Bool)

(assert (=> b!5354739 (= e!3323817 call!382991)))

(declare-fun b!5354740 () Bool)

(assert (=> b!5354740 (= e!3323817 e!3323814)))

(declare-fun res!2271846 () Bool)

(assert (=> b!5354740 (= res!2271846 (not ((_ is EmptyLang!15045) (regTwo!30603 r!7292))))))

(assert (=> b!5354740 (=> (not res!2271846) (not e!3323814))))

(declare-fun b!5354741 () Bool)

(declare-fun c!932375 () Bool)

(assert (=> b!5354741 (= c!932375 ((_ is Union!15045) (regTwo!30603 r!7292)))))

(assert (=> b!5354741 (= e!3323815 e!3323819)))

(declare-fun bm!382986 () Bool)

(assert (=> bm!382986 (= call!382991 (isEmpty!33291 s!2326))))

(declare-fun b!5354742 () Bool)

(declare-fun e!3323816 () Bool)

(assert (=> b!5354742 (= e!3323816 (matchRSpec!2148 (regTwo!30603 (regTwo!30603 r!7292)) s!2326))))

(declare-fun b!5354743 () Bool)

(assert (=> b!5354743 (= e!3323819 e!3323816)))

(declare-fun res!2271848 () Bool)

(assert (=> b!5354743 (= res!2271848 (matchRSpec!2148 (regOne!30603 (regTwo!30603 r!7292)) s!2326))))

(assert (=> b!5354743 (=> res!2271848 e!3323816)))

(declare-fun bm!382987 () Bool)

(assert (=> bm!382987 (= call!382992 (Exists!2226 (ite c!932373 lambda!275362 lambda!275363)))))

(declare-fun b!5354745 () Bool)

(declare-fun res!2271847 () Bool)

(assert (=> b!5354745 (=> res!2271847 e!3323820)))

(assert (=> b!5354745 (= res!2271847 call!382991)))

(assert (=> b!5354745 (= e!3323818 e!3323820)))

(declare-fun b!5354744 () Bool)

(assert (=> b!5354744 (= e!3323815 (= s!2326 (Cons!61310 (c!932025 (regTwo!30603 r!7292)) Nil!61310)))))

(declare-fun d!1716662 () Bool)

(declare-fun c!932372 () Bool)

(assert (=> d!1716662 (= c!932372 ((_ is EmptyExpr!15045) (regTwo!30603 r!7292)))))

(assert (=> d!1716662 (= (matchRSpec!2148 (regTwo!30603 r!7292) s!2326) e!3323817)))

(assert (= (and d!1716662 c!932372) b!5354739))

(assert (= (and d!1716662 (not c!932372)) b!5354740))

(assert (= (and b!5354740 res!2271846) b!5354735))

(assert (= (and b!5354735 c!932374) b!5354744))

(assert (= (and b!5354735 (not c!932374)) b!5354741))

(assert (= (and b!5354741 c!932375) b!5354743))

(assert (= (and b!5354741 (not c!932375)) b!5354736))

(assert (= (and b!5354743 (not res!2271848)) b!5354742))

(assert (= (and b!5354736 c!932373) b!5354745))

(assert (= (and b!5354736 (not c!932373)) b!5354738))

(assert (= (and b!5354745 (not res!2271847)) b!5354737))

(assert (= (or b!5354737 b!5354738) bm!382987))

(assert (= (or b!5354739 b!5354745) bm!382986))

(assert (=> bm!382986 m!6384254))

(declare-fun m!6384818 () Bool)

(assert (=> b!5354742 m!6384818))

(declare-fun m!6384820 () Bool)

(assert (=> b!5354743 m!6384820))

(declare-fun m!6384822 () Bool)

(assert (=> bm!382987 m!6384822))

(assert (=> b!5354034 d!1716662))

(declare-fun d!1716664 () Bool)

(assert (=> d!1716664 true))

(declare-fun setRes!34613 () Bool)

(assert (=> d!1716664 setRes!34613))

(declare-fun condSetEmpty!34613 () Bool)

(declare-fun res!2271851 () (InoxSet Context!8858))

(assert (=> d!1716664 (= condSetEmpty!34613 (= res!2271851 ((as const (Array Context!8858 Bool)) false)))))

(assert (=> d!1716664 (= (choose!40177 lt!2181620 lambda!275269) res!2271851)))

(declare-fun setIsEmpty!34613 () Bool)

(assert (=> setIsEmpty!34613 setRes!34613))

(declare-fun tp!1487300 () Bool)

(declare-fun e!3323823 () Bool)

(declare-fun setNonEmpty!34613 () Bool)

(declare-fun setElem!34613 () Context!8858)

(assert (=> setNonEmpty!34613 (= setRes!34613 (and tp!1487300 (inv!80859 setElem!34613) e!3323823))))

(declare-fun setRest!34613 () (InoxSet Context!8858))

(assert (=> setNonEmpty!34613 (= res!2271851 ((_ map or) (store ((as const (Array Context!8858 Bool)) false) setElem!34613 true) setRest!34613))))

(declare-fun b!5354748 () Bool)

(declare-fun tp!1487301 () Bool)

(assert (=> b!5354748 (= e!3323823 tp!1487301)))

(assert (= (and d!1716664 condSetEmpty!34613) setIsEmpty!34613))

(assert (= (and d!1716664 (not condSetEmpty!34613)) setNonEmpty!34613))

(assert (= setNonEmpty!34613 b!5354748))

(declare-fun m!6384824 () Bool)

(assert (=> setNonEmpty!34613 m!6384824))

(assert (=> d!1716340 d!1716664))

(declare-fun d!1716666 () Bool)

(assert (=> d!1716666 (= (nullable!5214 (regOne!30602 (reg!15374 (regOne!30602 r!7292)))) (nullableFct!1534 (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))

(declare-fun bs!1241078 () Bool)

(assert (= bs!1241078 d!1716666))

(declare-fun m!6384826 () Bool)

(assert (=> bs!1241078 m!6384826))

(assert (=> b!5353954 d!1716666))

(declare-fun d!1716668 () Bool)

(assert (=> d!1716668 (= (isEmpty!33287 (unfocusZipperList!487 zl!343)) ((_ is Nil!61311) (unfocusZipperList!487 zl!343)))))

(assert (=> b!5353981 d!1716668))

(declare-fun d!1716670 () Bool)

(assert (=> d!1716670 (= (isEmpty!33291 s!2326) ((_ is Nil!61310) s!2326))))

(assert (=> d!1716402 d!1716670))

(assert (=> d!1716402 d!1716392))

(assert (=> b!5353637 d!1716328))

(declare-fun b!5354749 () Bool)

(declare-fun e!3323824 () Bool)

(declare-fun call!382993 () Bool)

(assert (=> b!5354749 (= e!3323824 call!382993)))

(declare-fun b!5354750 () Bool)

(declare-fun e!3323830 () Bool)

(declare-fun e!3323829 () Bool)

(assert (=> b!5354750 (= e!3323830 e!3323829)))

(declare-fun res!2271856 () Bool)

(assert (=> b!5354750 (=> (not res!2271856) (not e!3323829))))

(declare-fun call!382994 () Bool)

(assert (=> b!5354750 (= res!2271856 call!382994)))

(declare-fun b!5354751 () Bool)

(assert (=> b!5354751 (= e!3323829 call!382993)))

(declare-fun call!382995 () Bool)

(declare-fun bm!382988 () Bool)

(declare-fun c!932377 () Bool)

(declare-fun c!932376 () Bool)

(assert (=> bm!382988 (= call!382995 (validRegex!6781 (ite c!932376 (reg!15374 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (ite c!932377 (regTwo!30603 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (regTwo!30602 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))))))

(declare-fun b!5354752 () Bool)

(declare-fun e!3323825 () Bool)

(declare-fun e!3323828 () Bool)

(assert (=> b!5354752 (= e!3323825 e!3323828)))

(assert (=> b!5354752 (= c!932377 ((_ is Union!15045) (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun b!5354753 () Bool)

(declare-fun e!3323827 () Bool)

(assert (=> b!5354753 (= e!3323827 call!382995)))

(declare-fun b!5354754 () Bool)

(assert (=> b!5354754 (= e!3323825 e!3323827)))

(declare-fun res!2271853 () Bool)

(assert (=> b!5354754 (= res!2271853 (not (nullable!5214 (reg!15374 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))))

(assert (=> b!5354754 (=> (not res!2271853) (not e!3323827))))

(declare-fun b!5354755 () Bool)

(declare-fun e!3323826 () Bool)

(assert (=> b!5354755 (= e!3323826 e!3323825)))

(assert (=> b!5354755 (= c!932376 ((_ is Star!15045) (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun d!1716672 () Bool)

(declare-fun res!2271854 () Bool)

(assert (=> d!1716672 (=> res!2271854 e!3323826)))

(assert (=> d!1716672 (= res!2271854 ((_ is ElementMatch!15045) (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(assert (=> d!1716672 (= (validRegex!6781 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) e!3323826)))

(declare-fun b!5354756 () Bool)

(declare-fun res!2271852 () Bool)

(assert (=> b!5354756 (=> (not res!2271852) (not e!3323824))))

(assert (=> b!5354756 (= res!2271852 call!382994)))

(assert (=> b!5354756 (= e!3323828 e!3323824)))

(declare-fun b!5354757 () Bool)

(declare-fun res!2271855 () Bool)

(assert (=> b!5354757 (=> res!2271855 e!3323830)))

(assert (=> b!5354757 (= res!2271855 (not ((_ is Concat!23890) (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(assert (=> b!5354757 (= e!3323828 e!3323830)))

(declare-fun bm!382989 () Bool)

(assert (=> bm!382989 (= call!382994 (validRegex!6781 (ite c!932377 (regOne!30603 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (regOne!30602 (ite c!932136 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))))

(declare-fun bm!382990 () Bool)

(assert (=> bm!382990 (= call!382993 call!382995)))

(assert (= (and d!1716672 (not res!2271854)) b!5354755))

(assert (= (and b!5354755 c!932376) b!5354754))

(assert (= (and b!5354755 (not c!932376)) b!5354752))

(assert (= (and b!5354754 res!2271853) b!5354753))

(assert (= (and b!5354752 c!932377) b!5354756))

(assert (= (and b!5354752 (not c!932377)) b!5354757))

(assert (= (and b!5354756 res!2271852) b!5354749))

(assert (= (and b!5354757 (not res!2271855)) b!5354750))

(assert (= (and b!5354750 res!2271856) b!5354751))

(assert (= (or b!5354749 b!5354751) bm!382990))

(assert (= (or b!5354756 b!5354750) bm!382989))

(assert (= (or b!5354753 bm!382990) bm!382988))

(declare-fun m!6384828 () Bool)

(assert (=> bm!382988 m!6384828))

(declare-fun m!6384830 () Bool)

(assert (=> b!5354754 m!6384830))

(declare-fun m!6384832 () Bool)

(assert (=> bm!382989 m!6384832))

(assert (=> bm!382829 d!1716672))

(declare-fun d!1716674 () Bool)

(assert (=> d!1716674 (= (Exists!2226 (ite c!932212 lambda!275324 lambda!275325)) (choose!40180 (ite c!932212 lambda!275324 lambda!275325)))))

(declare-fun bs!1241079 () Bool)

(assert (= bs!1241079 d!1716674))

(declare-fun m!6384834 () Bool)

(assert (=> bs!1241079 m!6384834))

(assert (=> bm!382872 d!1716674))

(declare-fun d!1716676 () Bool)

(assert (=> d!1716676 (= (nullable!5214 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))) (nullableFct!1534 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun bs!1241080 () Bool)

(assert (= bs!1241080 d!1716676))

(declare-fun m!6384836 () Bool)

(assert (=> bs!1241080 m!6384836))

(assert (=> b!5353890 d!1716676))

(declare-fun d!1716678 () Bool)

(assert (=> d!1716678 (= (isEmptyLang!925 lt!2181711) ((_ is EmptyLang!15045) lt!2181711))))

(assert (=> b!5353983 d!1716678))

(declare-fun b!5354758 () Bool)

(declare-fun e!3323831 () Bool)

(declare-fun call!382996 () Bool)

(assert (=> b!5354758 (= e!3323831 call!382996)))

(declare-fun b!5354759 () Bool)

(declare-fun e!3323837 () Bool)

(declare-fun e!3323836 () Bool)

(assert (=> b!5354759 (= e!3323837 e!3323836)))

(declare-fun res!2271861 () Bool)

(assert (=> b!5354759 (=> (not res!2271861) (not e!3323836))))

(declare-fun call!382997 () Bool)

(assert (=> b!5354759 (= res!2271861 call!382997)))

(declare-fun b!5354760 () Bool)

(assert (=> b!5354760 (= e!3323836 call!382996)))

(declare-fun c!932378 () Bool)

(declare-fun call!382998 () Bool)

(declare-fun bm!382991 () Bool)

(declare-fun c!932379 () Bool)

(assert (=> bm!382991 (= call!382998 (validRegex!6781 (ite c!932378 (reg!15374 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))) (ite c!932379 (regTwo!30603 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))) (regTwo!30602 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292)))))))))

(declare-fun b!5354761 () Bool)

(declare-fun e!3323832 () Bool)

(declare-fun e!3323835 () Bool)

(assert (=> b!5354761 (= e!3323832 e!3323835)))

(assert (=> b!5354761 (= c!932379 ((_ is Union!15045) (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))))))

(declare-fun b!5354762 () Bool)

(declare-fun e!3323834 () Bool)

(assert (=> b!5354762 (= e!3323834 call!382998)))

(declare-fun b!5354763 () Bool)

(assert (=> b!5354763 (= e!3323832 e!3323834)))

(declare-fun res!2271858 () Bool)

(assert (=> b!5354763 (= res!2271858 (not (nullable!5214 (reg!15374 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))))))))

(assert (=> b!5354763 (=> (not res!2271858) (not e!3323834))))

(declare-fun b!5354764 () Bool)

(declare-fun e!3323833 () Bool)

(assert (=> b!5354764 (= e!3323833 e!3323832)))

(assert (=> b!5354764 (= c!932378 ((_ is Star!15045) (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))))))

(declare-fun d!1716680 () Bool)

(declare-fun res!2271859 () Bool)

(assert (=> d!1716680 (=> res!2271859 e!3323833)))

(assert (=> d!1716680 (= res!2271859 ((_ is ElementMatch!15045) (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))))))

(assert (=> d!1716680 (= (validRegex!6781 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))) e!3323833)))

(declare-fun b!5354765 () Bool)

(declare-fun res!2271857 () Bool)

(assert (=> b!5354765 (=> (not res!2271857) (not e!3323831))))

(assert (=> b!5354765 (= res!2271857 call!382997)))

(assert (=> b!5354765 (= e!3323835 e!3323831)))

(declare-fun b!5354766 () Bool)

(declare-fun res!2271860 () Bool)

(assert (=> b!5354766 (=> res!2271860 e!3323837)))

(assert (=> b!5354766 (= res!2271860 (not ((_ is Concat!23890) (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292)))))))

(assert (=> b!5354766 (= e!3323835 e!3323837)))

(declare-fun bm!382992 () Bool)

(assert (=> bm!382992 (= call!382997 (validRegex!6781 (ite c!932379 (regOne!30603 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))) (regOne!30602 (ite c!932182 (regOne!30603 r!7292) (regOne!30602 r!7292))))))))

(declare-fun bm!382993 () Bool)

(assert (=> bm!382993 (= call!382996 call!382998)))

(assert (= (and d!1716680 (not res!2271859)) b!5354764))

(assert (= (and b!5354764 c!932378) b!5354763))

(assert (= (and b!5354764 (not c!932378)) b!5354761))

(assert (= (and b!5354763 res!2271858) b!5354762))

(assert (= (and b!5354761 c!932379) b!5354765))

(assert (= (and b!5354761 (not c!932379)) b!5354766))

(assert (= (and b!5354765 res!2271857) b!5354758))

(assert (= (and b!5354766 (not res!2271860)) b!5354759))

(assert (= (and b!5354759 res!2271861) b!5354760))

(assert (= (or b!5354758 b!5354760) bm!382993))

(assert (= (or b!5354765 b!5354759) bm!382992))

(assert (= (or b!5354762 bm!382993) bm!382991))

(declare-fun m!6384838 () Bool)

(assert (=> bm!382991 m!6384838))

(declare-fun m!6384840 () Bool)

(assert (=> b!5354763 m!6384840))

(declare-fun m!6384842 () Bool)

(assert (=> bm!382992 m!6384842))

(assert (=> bm!382859 d!1716680))

(declare-fun d!1716682 () Bool)

(assert (=> d!1716682 (= (nullable!5214 (h!67759 (exprs!4929 lt!2181632))) (nullableFct!1534 (h!67759 (exprs!4929 lt!2181632))))))

(declare-fun bs!1241081 () Bool)

(assert (= bs!1241081 d!1716682))

(declare-fun m!6384844 () Bool)

(assert (=> bs!1241081 m!6384844))

(assert (=> b!5353790 d!1716682))

(declare-fun d!1716684 () Bool)

(assert (=> d!1716684 (= (isEmptyExpr!917 lt!2181673) ((_ is EmptyExpr!15045) lt!2181673))))

(assert (=> b!5353639 d!1716684))

(declare-fun d!1716686 () Bool)

(declare-fun c!932381 () Bool)

(declare-fun e!3323840 () Bool)

(assert (=> d!1716686 (= c!932381 e!3323840)))

(declare-fun res!2271862 () Bool)

(assert (=> d!1716686 (=> (not res!2271862) (not e!3323840))))

(assert (=> d!1716686 (= res!2271862 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun e!3323838 () (InoxSet Context!8858))

(assert (=> d!1716686 (= (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) (h!67758 s!2326)) e!3323838)))

(declare-fun call!382999 () (InoxSet Context!8858))

(declare-fun b!5354767 () Bool)

(assert (=> b!5354767 (= e!3323838 ((_ map or) call!382999 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343))))))) (h!67758 s!2326))))))

(declare-fun b!5354768 () Bool)

(declare-fun e!3323839 () (InoxSet Context!8858))

(assert (=> b!5354768 (= e!3323838 e!3323839)))

(declare-fun c!932380 () Bool)

(assert (=> b!5354768 (= c!932380 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5354769 () Bool)

(assert (=> b!5354769 (= e!3323839 call!382999)))

(declare-fun b!5354770 () Bool)

(assert (=> b!5354770 (= e!3323839 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5354771 () Bool)

(assert (=> b!5354771 (= e!3323840 (nullable!5214 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343))))))))))

(declare-fun bm!382994 () Bool)

(assert (=> bm!382994 (= call!382999 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))))) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343))))))) (h!67758 s!2326)))))

(assert (= (and d!1716686 res!2271862) b!5354771))

(assert (= (and d!1716686 c!932381) b!5354767))

(assert (= (and d!1716686 (not c!932381)) b!5354768))

(assert (= (and b!5354768 c!932380) b!5354769))

(assert (= (and b!5354768 (not c!932380)) b!5354770))

(assert (= (or b!5354767 b!5354769) bm!382994))

(declare-fun m!6384846 () Bool)

(assert (=> b!5354767 m!6384846))

(declare-fun m!6384848 () Bool)

(assert (=> b!5354771 m!6384848))

(declare-fun m!6384850 () Bool)

(assert (=> bm!382994 m!6384850))

(assert (=> b!5353857 d!1716686))

(declare-fun b!5354772 () Bool)

(declare-fun e!3323844 () (InoxSet Context!8858))

(declare-fun call!383003 () (InoxSet Context!8858))

(assert (=> b!5354772 (= e!3323844 call!383003)))

(declare-fun b!5354773 () Bool)

(declare-fun c!932386 () Bool)

(declare-fun e!3323842 () Bool)

(assert (=> b!5354773 (= c!932386 e!3323842)))

(declare-fun res!2271863 () Bool)

(assert (=> b!5354773 (=> (not res!2271863) (not e!3323842))))

(assert (=> b!5354773 (= res!2271863 ((_ is Concat!23890) (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun e!3323843 () (InoxSet Context!8858))

(declare-fun e!3323841 () (InoxSet Context!8858))

(assert (=> b!5354773 (= e!3323843 e!3323841)))

(declare-fun bm!382995 () Bool)

(declare-fun call!383001 () (InoxSet Context!8858))

(assert (=> bm!382995 (= call!383003 call!383001)))

(declare-fun bm!382996 () Bool)

(declare-fun c!932384 () Bool)

(declare-fun call!383005 () (InoxSet Context!8858))

(declare-fun c!932385 () Bool)

(declare-fun call!383002 () List!61435)

(assert (=> bm!382996 (= call!383005 (derivationStepZipperDown!493 (ite c!932384 (regTwo!30603 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (ite c!932386 (regTwo!30602 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (ite c!932385 (regOne!30602 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (reg!15374 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))) (ite (or c!932384 c!932386) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (Context!8859 call!383002)) (h!67758 s!2326)))))

(declare-fun b!5354774 () Bool)

(declare-fun e!3323846 () (InoxSet Context!8858))

(assert (=> b!5354774 (= e!3323846 e!3323843)))

(assert (=> b!5354774 (= c!932384 ((_ is Union!15045) (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun b!5354775 () Bool)

(declare-fun call!383004 () (InoxSet Context!8858))

(assert (=> b!5354775 (= e!3323841 ((_ map or) call!383004 call!383001))))

(declare-fun bm!382997 () Bool)

(declare-fun call!383000 () List!61435)

(assert (=> bm!382997 (= call!383002 call!383000)))

(declare-fun b!5354776 () Bool)

(declare-fun c!932382 () Bool)

(assert (=> b!5354776 (= c!932382 ((_ is Star!15045) (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun e!3323845 () (InoxSet Context!8858))

(assert (=> b!5354776 (= e!3323844 e!3323845)))

(declare-fun bm!382998 () Bool)

(assert (=> bm!382998 (= call!383000 ($colon$colon!1432 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))) (ite (or c!932386 c!932385) (regTwo!30602 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))))

(declare-fun b!5354777 () Bool)

(assert (=> b!5354777 (= e!3323845 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716688 () Bool)

(declare-fun c!932383 () Bool)

(assert (=> d!1716688 (= c!932383 (and ((_ is ElementMatch!15045) (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (= (c!932025 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (h!67758 s!2326))))))

(assert (=> d!1716688 (= (derivationStepZipperDown!493 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (h!67758 s!2326)) e!3323846)))

(declare-fun bm!382999 () Bool)

(assert (=> bm!382999 (= call!383001 call!383005)))

(declare-fun bm!383000 () Bool)

(assert (=> bm!383000 (= call!383004 (derivationStepZipperDown!493 (ite c!932384 (regOne!30603 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (regOne!30602 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))) (ite c!932384 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (Context!8859 call!383000)) (h!67758 s!2326)))))

(declare-fun b!5354778 () Bool)

(assert (=> b!5354778 (= e!3323842 (nullable!5214 (regOne!30602 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))))

(declare-fun b!5354779 () Bool)

(assert (=> b!5354779 (= e!3323841 e!3323844)))

(assert (=> b!5354779 (= c!932385 ((_ is Concat!23890) (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun b!5354780 () Bool)

(assert (=> b!5354780 (= e!3323843 ((_ map or) call!383004 call!383005))))

(declare-fun b!5354781 () Bool)

(assert (=> b!5354781 (= e!3323846 (store ((as const (Array Context!8858 Bool)) false) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) true))))

(declare-fun b!5354782 () Bool)

(assert (=> b!5354782 (= e!3323845 call!383003)))

(assert (= (and d!1716688 c!932383) b!5354781))

(assert (= (and d!1716688 (not c!932383)) b!5354774))

(assert (= (and b!5354774 c!932384) b!5354780))

(assert (= (and b!5354774 (not c!932384)) b!5354773))

(assert (= (and b!5354773 res!2271863) b!5354778))

(assert (= (and b!5354773 c!932386) b!5354775))

(assert (= (and b!5354773 (not c!932386)) b!5354779))

(assert (= (and b!5354779 c!932385) b!5354772))

(assert (= (and b!5354779 (not c!932385)) b!5354776))

(assert (= (and b!5354776 c!932382) b!5354782))

(assert (= (and b!5354776 (not c!932382)) b!5354777))

(assert (= (or b!5354772 b!5354782) bm!382997))

(assert (= (or b!5354772 b!5354782) bm!382995))

(assert (= (or b!5354775 bm!382997) bm!382998))

(assert (= (or b!5354775 bm!382995) bm!382999))

(assert (= (or b!5354780 bm!382999) bm!382996))

(assert (= (or b!5354780 b!5354775) bm!383000))

(declare-fun m!6384852 () Bool)

(assert (=> b!5354778 m!6384852))

(declare-fun m!6384854 () Bool)

(assert (=> bm!383000 m!6384854))

(declare-fun m!6384856 () Bool)

(assert (=> bm!382996 m!6384856))

(declare-fun m!6384858 () Bool)

(assert (=> bm!382998 m!6384858))

(declare-fun m!6384860 () Bool)

(assert (=> b!5354781 m!6384860))

(assert (=> bm!382838 d!1716688))

(declare-fun d!1716690 () Bool)

(assert (=> d!1716690 (= (isUnion!357 lt!2181711) ((_ is Union!15045) lt!2181711))))

(assert (=> b!5353985 d!1716690))

(declare-fun bs!1241082 () Bool)

(declare-fun d!1716692 () Bool)

(assert (= bs!1241082 (and d!1716692 d!1716308)))

(declare-fun lambda!275364 () Int)

(assert (=> bs!1241082 (= lambda!275364 lambda!275294)))

(declare-fun bs!1241083 () Bool)

(assert (= bs!1241083 (and d!1716692 d!1716398)))

(assert (=> bs!1241083 (= lambda!275364 lambda!275319)))

(declare-fun bs!1241084 () Bool)

(assert (= bs!1241084 (and d!1716692 d!1716646)))

(assert (=> bs!1241084 (= lambda!275364 lambda!275360)))

(declare-fun bs!1241085 () Bool)

(assert (= bs!1241085 (and d!1716692 d!1716374)))

(assert (=> bs!1241085 (= lambda!275364 lambda!275304)))

(declare-fun bs!1241086 () Bool)

(assert (= bs!1241086 (and d!1716692 d!1716396)))

(assert (=> bs!1241086 (= lambda!275364 lambda!275316)))

(declare-fun bs!1241087 () Bool)

(assert (= bs!1241087 (and d!1716692 d!1716352)))

(assert (=> bs!1241087 (= lambda!275364 lambda!275303)))

(assert (=> d!1716692 (= (inv!80859 (h!67760 (t!374655 zl!343))) (forall!14469 (exprs!4929 (h!67760 (t!374655 zl!343))) lambda!275364))))

(declare-fun bs!1241088 () Bool)

(assert (= bs!1241088 d!1716692))

(declare-fun m!6384862 () Bool)

(assert (=> bs!1241088 m!6384862))

(assert (=> b!5354086 d!1716692))

(declare-fun d!1716694 () Bool)

(assert (=> d!1716694 (= (isEmpty!33292 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326)) (not ((_ is Some!15155) (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326))))))

(assert (=> d!1716386 d!1716694))

(assert (=> b!5353861 d!1716360))

(assert (=> b!5353520 d!1716388))

(declare-fun b!5354783 () Bool)

(declare-fun res!2271864 () Bool)

(declare-fun e!3323853 () Bool)

(assert (=> b!5354783 (=> res!2271864 e!3323853)))

(assert (=> b!5354783 (= res!2271864 (not (isEmpty!33291 (tail!10579 s!2326))))))

(declare-fun b!5354784 () Bool)

(declare-fun e!3323852 () Bool)

(assert (=> b!5354784 (= e!3323852 (= (head!11482 s!2326) (c!932025 (regTwo!30602 r!7292))))))

(declare-fun b!5354785 () Bool)

(declare-fun e!3323848 () Bool)

(assert (=> b!5354785 (= e!3323848 (nullable!5214 (regTwo!30602 r!7292)))))

(declare-fun b!5354786 () Bool)

(declare-fun res!2271869 () Bool)

(declare-fun e!3323851 () Bool)

(assert (=> b!5354786 (=> res!2271869 e!3323851)))

(assert (=> b!5354786 (= res!2271869 e!3323852)))

(declare-fun res!2271866 () Bool)

(assert (=> b!5354786 (=> (not res!2271866) (not e!3323852))))

(declare-fun lt!2181745 () Bool)

(assert (=> b!5354786 (= res!2271866 lt!2181745)))

(declare-fun b!5354787 () Bool)

(declare-fun e!3323849 () Bool)

(declare-fun e!3323850 () Bool)

(assert (=> b!5354787 (= e!3323849 e!3323850)))

(declare-fun c!932387 () Bool)

(assert (=> b!5354787 (= c!932387 ((_ is EmptyLang!15045) (regTwo!30602 r!7292)))))

(declare-fun b!5354788 () Bool)

(assert (=> b!5354788 (= e!3323850 (not lt!2181745))))

(declare-fun b!5354789 () Bool)

(declare-fun res!2271868 () Bool)

(assert (=> b!5354789 (=> res!2271868 e!3323851)))

(assert (=> b!5354789 (= res!2271868 (not ((_ is ElementMatch!15045) (regTwo!30602 r!7292))))))

(assert (=> b!5354789 (= e!3323850 e!3323851)))

(declare-fun b!5354790 () Bool)

(declare-fun res!2271871 () Bool)

(assert (=> b!5354790 (=> (not res!2271871) (not e!3323852))))

(assert (=> b!5354790 (= res!2271871 (isEmpty!33291 (tail!10579 s!2326)))))

(declare-fun b!5354791 () Bool)

(declare-fun e!3323847 () Bool)

(assert (=> b!5354791 (= e!3323847 e!3323853)))

(declare-fun res!2271867 () Bool)

(assert (=> b!5354791 (=> res!2271867 e!3323853)))

(declare-fun call!383006 () Bool)

(assert (=> b!5354791 (= res!2271867 call!383006)))

(declare-fun b!5354792 () Bool)

(assert (=> b!5354792 (= e!3323853 (not (= (head!11482 s!2326) (c!932025 (regTwo!30602 r!7292)))))))

(declare-fun d!1716696 () Bool)

(assert (=> d!1716696 e!3323849))

(declare-fun c!932389 () Bool)

(assert (=> d!1716696 (= c!932389 ((_ is EmptyExpr!15045) (regTwo!30602 r!7292)))))

(assert (=> d!1716696 (= lt!2181745 e!3323848)))

(declare-fun c!932388 () Bool)

(assert (=> d!1716696 (= c!932388 (isEmpty!33291 s!2326))))

(assert (=> d!1716696 (validRegex!6781 (regTwo!30602 r!7292))))

(assert (=> d!1716696 (= (matchR!7230 (regTwo!30602 r!7292) s!2326) lt!2181745)))

(declare-fun b!5354793 () Bool)

(declare-fun res!2271870 () Bool)

(assert (=> b!5354793 (=> (not res!2271870) (not e!3323852))))

(assert (=> b!5354793 (= res!2271870 (not call!383006))))

(declare-fun bm!383001 () Bool)

(assert (=> bm!383001 (= call!383006 (isEmpty!33291 s!2326))))

(declare-fun b!5354794 () Bool)

(assert (=> b!5354794 (= e!3323848 (matchR!7230 (derivativeStep!4203 (regTwo!30602 r!7292) (head!11482 s!2326)) (tail!10579 s!2326)))))

(declare-fun b!5354795 () Bool)

(assert (=> b!5354795 (= e!3323851 e!3323847)))

(declare-fun res!2271865 () Bool)

(assert (=> b!5354795 (=> (not res!2271865) (not e!3323847))))

(assert (=> b!5354795 (= res!2271865 (not lt!2181745))))

(declare-fun b!5354796 () Bool)

(assert (=> b!5354796 (= e!3323849 (= lt!2181745 call!383006))))

(assert (= (and d!1716696 c!932388) b!5354785))

(assert (= (and d!1716696 (not c!932388)) b!5354794))

(assert (= (and d!1716696 c!932389) b!5354796))

(assert (= (and d!1716696 (not c!932389)) b!5354787))

(assert (= (and b!5354787 c!932387) b!5354788))

(assert (= (and b!5354787 (not c!932387)) b!5354789))

(assert (= (and b!5354789 (not res!2271868)) b!5354786))

(assert (= (and b!5354786 res!2271866) b!5354793))

(assert (= (and b!5354793 res!2271870) b!5354790))

(assert (= (and b!5354790 res!2271871) b!5354784))

(assert (= (and b!5354786 (not res!2271869)) b!5354795))

(assert (= (and b!5354795 res!2271865) b!5354791))

(assert (= (and b!5354791 (not res!2271867)) b!5354783))

(assert (= (and b!5354783 (not res!2271864)) b!5354792))

(assert (= (or b!5354796 b!5354791 b!5354793) bm!383001))

(assert (=> b!5354792 m!6384262))

(assert (=> bm!383001 m!6384254))

(assert (=> b!5354794 m!6384262))

(assert (=> b!5354794 m!6384262))

(declare-fun m!6384864 () Bool)

(assert (=> b!5354794 m!6384864))

(assert (=> b!5354794 m!6384266))

(assert (=> b!5354794 m!6384864))

(assert (=> b!5354794 m!6384266))

(declare-fun m!6384866 () Bool)

(assert (=> b!5354794 m!6384866))

(declare-fun m!6384868 () Bool)

(assert (=> b!5354785 m!6384868))

(assert (=> b!5354784 m!6384262))

(assert (=> d!1716696 m!6384254))

(declare-fun m!6384870 () Bool)

(assert (=> d!1716696 m!6384870))

(assert (=> b!5354783 m!6384266))

(assert (=> b!5354783 m!6384266))

(assert (=> b!5354783 m!6384272))

(assert (=> b!5354790 m!6384266))

(assert (=> b!5354790 m!6384266))

(assert (=> b!5354790 m!6384272))

(assert (=> b!5353919 d!1716696))

(declare-fun d!1716698 () Bool)

(assert (=> d!1716698 (= (head!11482 s!2326) (h!67758 s!2326))))

(assert (=> b!5354067 d!1716698))

(assert (=> b!5353993 d!1716308))

(declare-fun bs!1241089 () Bool)

(declare-fun d!1716700 () Bool)

(assert (= bs!1241089 (and d!1716700 d!1716308)))

(declare-fun lambda!275365 () Int)

(assert (=> bs!1241089 (= lambda!275365 lambda!275294)))

(declare-fun bs!1241090 () Bool)

(assert (= bs!1241090 (and d!1716700 d!1716398)))

(assert (=> bs!1241090 (= lambda!275365 lambda!275319)))

(declare-fun bs!1241091 () Bool)

(assert (= bs!1241091 (and d!1716700 d!1716646)))

(assert (=> bs!1241091 (= lambda!275365 lambda!275360)))

(declare-fun bs!1241092 () Bool)

(assert (= bs!1241092 (and d!1716700 d!1716374)))

(assert (=> bs!1241092 (= lambda!275365 lambda!275304)))

(declare-fun bs!1241093 () Bool)

(assert (= bs!1241093 (and d!1716700 d!1716396)))

(assert (=> bs!1241093 (= lambda!275365 lambda!275316)))

(declare-fun bs!1241094 () Bool)

(assert (= bs!1241094 (and d!1716700 d!1716352)))

(assert (=> bs!1241094 (= lambda!275365 lambda!275303)))

(declare-fun bs!1241095 () Bool)

(assert (= bs!1241095 (and d!1716700 d!1716692)))

(assert (=> bs!1241095 (= lambda!275365 lambda!275364)))

(declare-fun lt!2181746 () List!61435)

(assert (=> d!1716700 (forall!14469 lt!2181746 lambda!275365)))

(declare-fun e!3323854 () List!61435)

(assert (=> d!1716700 (= lt!2181746 e!3323854)))

(declare-fun c!932390 () Bool)

(assert (=> d!1716700 (= c!932390 ((_ is Cons!61312) (t!374655 zl!343)))))

(assert (=> d!1716700 (= (unfocusZipperList!487 (t!374655 zl!343)) lt!2181746)))

(declare-fun b!5354797 () Bool)

(assert (=> b!5354797 (= e!3323854 (Cons!61311 (generalisedConcat!714 (exprs!4929 (h!67760 (t!374655 zl!343)))) (unfocusZipperList!487 (t!374655 (t!374655 zl!343)))))))

(declare-fun b!5354798 () Bool)

(assert (=> b!5354798 (= e!3323854 Nil!61311)))

(assert (= (and d!1716700 c!932390) b!5354797))

(assert (= (and d!1716700 (not c!932390)) b!5354798))

(declare-fun m!6384872 () Bool)

(assert (=> d!1716700 m!6384872))

(declare-fun m!6384874 () Bool)

(assert (=> b!5354797 m!6384874))

(declare-fun m!6384876 () Bool)

(assert (=> b!5354797 m!6384876))

(assert (=> b!5353993 d!1716700))

(declare-fun d!1716702 () Bool)

(assert (=> d!1716702 (= (isEmpty!33291 (t!374653 s!2326)) ((_ is Nil!61310) (t!374653 s!2326)))))

(assert (=> d!1716302 d!1716702))

(declare-fun d!1716704 () Bool)

(assert (=> d!1716704 true))

(declare-fun setRes!34614 () Bool)

(assert (=> d!1716704 setRes!34614))

(declare-fun condSetEmpty!34614 () Bool)

(declare-fun res!2271872 () (InoxSet Context!8858))

(assert (=> d!1716704 (= condSetEmpty!34614 (= res!2271872 ((as const (Array Context!8858 Bool)) false)))))

(assert (=> d!1716704 (= (choose!40177 z!1189 lambda!275269) res!2271872)))

(declare-fun setIsEmpty!34614 () Bool)

(assert (=> setIsEmpty!34614 setRes!34614))

(declare-fun tp!1487302 () Bool)

(declare-fun setElem!34614 () Context!8858)

(declare-fun setNonEmpty!34614 () Bool)

(declare-fun e!3323855 () Bool)

(assert (=> setNonEmpty!34614 (= setRes!34614 (and tp!1487302 (inv!80859 setElem!34614) e!3323855))))

(declare-fun setRest!34614 () (InoxSet Context!8858))

(assert (=> setNonEmpty!34614 (= res!2271872 ((_ map or) (store ((as const (Array Context!8858 Bool)) false) setElem!34614 true) setRest!34614))))

(declare-fun b!5354799 () Bool)

(declare-fun tp!1487303 () Bool)

(assert (=> b!5354799 (= e!3323855 tp!1487303)))

(assert (= (and d!1716704 condSetEmpty!34614) setIsEmpty!34614))

(assert (= (and d!1716704 (not condSetEmpty!34614)) setNonEmpty!34614))

(assert (= setNonEmpty!34614 b!5354799))

(declare-fun m!6384878 () Bool)

(assert (=> setNonEmpty!34614 m!6384878))

(assert (=> d!1716364 d!1716704))

(declare-fun d!1716706 () Bool)

(declare-fun res!2271877 () Bool)

(declare-fun e!3323860 () Bool)

(assert (=> d!1716706 (=> res!2271877 e!3323860)))

(assert (=> d!1716706 (= res!2271877 ((_ is Nil!61311) lt!2181714))))

(assert (=> d!1716706 (= (forall!14469 lt!2181714 lambda!275319) e!3323860)))

(declare-fun b!5354804 () Bool)

(declare-fun e!3323861 () Bool)

(assert (=> b!5354804 (= e!3323860 e!3323861)))

(declare-fun res!2271878 () Bool)

(assert (=> b!5354804 (=> (not res!2271878) (not e!3323861))))

(declare-fun dynLambda!24235 (Int Regex!15045) Bool)

(assert (=> b!5354804 (= res!2271878 (dynLambda!24235 lambda!275319 (h!67759 lt!2181714)))))

(declare-fun b!5354805 () Bool)

(assert (=> b!5354805 (= e!3323861 (forall!14469 (t!374654 lt!2181714) lambda!275319))))

(assert (= (and d!1716706 (not res!2271877)) b!5354804))

(assert (= (and b!5354804 res!2271878) b!5354805))

(declare-fun b_lambda!205427 () Bool)

(assert (=> (not b_lambda!205427) (not b!5354804)))

(declare-fun m!6384880 () Bool)

(assert (=> b!5354804 m!6384880))

(declare-fun m!6384882 () Bool)

(assert (=> b!5354805 m!6384882))

(assert (=> d!1716398 d!1716706))

(declare-fun b!5354806 () Bool)

(declare-fun e!3323865 () (InoxSet Context!8858))

(declare-fun call!383010 () (InoxSet Context!8858))

(assert (=> b!5354806 (= e!3323865 call!383010)))

(declare-fun b!5354807 () Bool)

(declare-fun c!932395 () Bool)

(declare-fun e!3323863 () Bool)

(assert (=> b!5354807 (= c!932395 e!3323863)))

(declare-fun res!2271879 () Bool)

(assert (=> b!5354807 (=> (not res!2271879) (not e!3323863))))

(assert (=> b!5354807 (= res!2271879 ((_ is Concat!23890) (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))))))

(declare-fun e!3323864 () (InoxSet Context!8858))

(declare-fun e!3323862 () (InoxSet Context!8858))

(assert (=> b!5354807 (= e!3323864 e!3323862)))

(declare-fun bm!383002 () Bool)

(declare-fun call!383008 () (InoxSet Context!8858))

(assert (=> bm!383002 (= call!383010 call!383008)))

(declare-fun c!932394 () Bool)

(declare-fun bm!383003 () Bool)

(declare-fun c!932393 () Bool)

(declare-fun call!383009 () List!61435)

(declare-fun call!383012 () (InoxSet Context!8858))

(assert (=> bm!383003 (= call!383012 (derivationStepZipperDown!493 (ite c!932393 (regTwo!30603 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (ite c!932395 (regTwo!30602 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (ite c!932394 (regOne!30602 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (reg!15374 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292)))))))))) (ite (or c!932393 c!932395) (ite (or c!932185 c!932187) (Context!8859 lt!2181619) (Context!8859 call!382868)) (Context!8859 call!383009)) (h!67758 s!2326)))))

(declare-fun b!5354808 () Bool)

(declare-fun e!3323867 () (InoxSet Context!8858))

(assert (=> b!5354808 (= e!3323867 e!3323864)))

(assert (=> b!5354808 (= c!932393 ((_ is Union!15045) (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))))))

(declare-fun b!5354809 () Bool)

(declare-fun call!383011 () (InoxSet Context!8858))

(assert (=> b!5354809 (= e!3323862 ((_ map or) call!383011 call!383008))))

(declare-fun bm!383004 () Bool)

(declare-fun call!383007 () List!61435)

(assert (=> bm!383004 (= call!383009 call!383007)))

(declare-fun b!5354810 () Bool)

(declare-fun c!932391 () Bool)

(assert (=> b!5354810 (= c!932391 ((_ is Star!15045) (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))))))

(declare-fun e!3323866 () (InoxSet Context!8858))

(assert (=> b!5354810 (= e!3323865 e!3323866)))

(declare-fun bm!383005 () Bool)

(assert (=> bm!383005 (= call!383007 ($colon$colon!1432 (exprs!4929 (ite (or c!932185 c!932187) (Context!8859 lt!2181619) (Context!8859 call!382868))) (ite (or c!932395 c!932394) (regTwo!30602 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292)))))))))))

(declare-fun b!5354811 () Bool)

(assert (=> b!5354811 (= e!3323866 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716708 () Bool)

(declare-fun c!932392 () Bool)

(assert (=> d!1716708 (= c!932392 (and ((_ is ElementMatch!15045) (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (= (c!932025 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (h!67758 s!2326))))))

(assert (=> d!1716708 (= (derivationStepZipperDown!493 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292)))))) (ite (or c!932185 c!932187) (Context!8859 lt!2181619) (Context!8859 call!382868)) (h!67758 s!2326)) e!3323867)))

(declare-fun bm!383006 () Bool)

(assert (=> bm!383006 (= call!383008 call!383012)))

(declare-fun bm!383007 () Bool)

(assert (=> bm!383007 (= call!383011 (derivationStepZipperDown!493 (ite c!932393 (regOne!30603 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))) (regOne!30602 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292)))))))) (ite c!932393 (ite (or c!932185 c!932187) (Context!8859 lt!2181619) (Context!8859 call!382868)) (Context!8859 call!383007)) (h!67758 s!2326)))))

(declare-fun b!5354812 () Bool)

(assert (=> b!5354812 (= e!3323863 (nullable!5214 (regOne!30602 (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292)))))))))))

(declare-fun b!5354813 () Bool)

(assert (=> b!5354813 (= e!3323862 e!3323865)))

(assert (=> b!5354813 (= c!932394 ((_ is Concat!23890) (ite c!932185 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (ite c!932187 (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (ite c!932186 (regOne!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (reg!15374 (regOne!30602 r!7292))))))))))

(declare-fun b!5354814 () Bool)

(assert (=> b!5354814 (= e!3323864 ((_ map or) call!383011 call!383012))))

(declare-fun b!5354815 () Bool)

(assert (=> b!5354815 (= e!3323867 (store ((as const (Array Context!8858 Bool)) false) (ite (or c!932185 c!932187) (Context!8859 lt!2181619) (Context!8859 call!382868)) true))))

(declare-fun b!5354816 () Bool)

(assert (=> b!5354816 (= e!3323866 call!383010)))

(assert (= (and d!1716708 c!932392) b!5354815))

(assert (= (and d!1716708 (not c!932392)) b!5354808))

(assert (= (and b!5354808 c!932393) b!5354814))

(assert (= (and b!5354808 (not c!932393)) b!5354807))

(assert (= (and b!5354807 res!2271879) b!5354812))

(assert (= (and b!5354807 c!932395) b!5354809))

(assert (= (and b!5354807 (not c!932395)) b!5354813))

(assert (= (and b!5354813 c!932394) b!5354806))

(assert (= (and b!5354813 (not c!932394)) b!5354810))

(assert (= (and b!5354810 c!932391) b!5354816))

(assert (= (and b!5354810 (not c!932391)) b!5354811))

(assert (= (or b!5354806 b!5354816) bm!383004))

(assert (= (or b!5354806 b!5354816) bm!383002))

(assert (= (or b!5354809 bm!383004) bm!383005))

(assert (= (or b!5354809 bm!383002) bm!383006))

(assert (= (or b!5354814 bm!383006) bm!383003))

(assert (= (or b!5354814 b!5354809) bm!383007))

(declare-fun m!6384884 () Bool)

(assert (=> b!5354812 m!6384884))

(declare-fun m!6384886 () Bool)

(assert (=> bm!383007 m!6384886))

(declare-fun m!6384888 () Bool)

(assert (=> bm!383003 m!6384888))

(declare-fun m!6384890 () Bool)

(assert (=> bm!383005 m!6384890))

(declare-fun m!6384892 () Bool)

(assert (=> b!5354815 m!6384892))

(assert (=> bm!382862 d!1716708))

(assert (=> bs!1240930 d!1716342))

(assert (=> bm!382875 d!1716670))

(declare-fun b!5354817 () Bool)

(declare-fun e!3323871 () (InoxSet Context!8858))

(declare-fun call!383016 () (InoxSet Context!8858))

(assert (=> b!5354817 (= e!3323871 call!383016)))

(declare-fun b!5354818 () Bool)

(declare-fun c!932400 () Bool)

(declare-fun e!3323869 () Bool)

(assert (=> b!5354818 (= c!932400 e!3323869)))

(declare-fun res!2271880 () Bool)

(assert (=> b!5354818 (=> (not res!2271880) (not e!3323869))))

(assert (=> b!5354818 (= res!2271880 ((_ is Concat!23890) (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun e!3323870 () (InoxSet Context!8858))

(declare-fun e!3323868 () (InoxSet Context!8858))

(assert (=> b!5354818 (= e!3323870 e!3323868)))

(declare-fun bm!383008 () Bool)

(declare-fun call!383014 () (InoxSet Context!8858))

(assert (=> bm!383008 (= call!383016 call!383014)))

(declare-fun bm!383009 () Bool)

(declare-fun c!932399 () Bool)

(declare-fun call!383018 () (InoxSet Context!8858))

(declare-fun c!932398 () Bool)

(declare-fun call!383015 () List!61435)

(assert (=> bm!383009 (= call!383018 (derivationStepZipperDown!493 (ite c!932398 (regTwo!30603 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (ite c!932400 (regTwo!30602 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (ite c!932399 (regOne!30602 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (reg!15374 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))))))) (ite (or c!932398 c!932400) (ite (or c!932171 c!932173) lt!2181621 (Context!8859 call!382859)) (Context!8859 call!383015)) (h!67758 s!2326)))))

(declare-fun b!5354819 () Bool)

(declare-fun e!3323873 () (InoxSet Context!8858))

(assert (=> b!5354819 (= e!3323873 e!3323870)))

(assert (=> b!5354819 (= c!932398 ((_ is Union!15045) (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun b!5354820 () Bool)

(declare-fun call!383017 () (InoxSet Context!8858))

(assert (=> b!5354820 (= e!3323868 ((_ map or) call!383017 call!383014))))

(declare-fun bm!383010 () Bool)

(declare-fun call!383013 () List!61435)

(assert (=> bm!383010 (= call!383015 call!383013)))

(declare-fun b!5354821 () Bool)

(declare-fun c!932396 () Bool)

(assert (=> b!5354821 (= c!932396 ((_ is Star!15045) (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun e!3323872 () (InoxSet Context!8858))

(assert (=> b!5354821 (= e!3323871 e!3323872)))

(declare-fun bm!383011 () Bool)

(assert (=> bm!383011 (= call!383013 ($colon$colon!1432 (exprs!4929 (ite (or c!932171 c!932173) lt!2181621 (Context!8859 call!382859))) (ite (or c!932400 c!932399) (regTwo!30602 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))))))))

(declare-fun b!5354822 () Bool)

(assert (=> b!5354822 (= e!3323872 ((as const (Array Context!8858 Bool)) false))))

(declare-fun c!932397 () Bool)

(declare-fun d!1716710 () Bool)

(assert (=> d!1716710 (= c!932397 (and ((_ is ElementMatch!15045) (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (= (c!932025 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (h!67758 s!2326))))))

(assert (=> d!1716710 (= (derivationStepZipperDown!493 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))) (ite (or c!932171 c!932173) lt!2181621 (Context!8859 call!382859)) (h!67758 s!2326)) e!3323873)))

(declare-fun bm!383012 () Bool)

(assert (=> bm!383012 (= call!383014 call!383018)))

(declare-fun bm!383013 () Bool)

(assert (=> bm!383013 (= call!383017 (derivationStepZipperDown!493 (ite c!932398 (regOne!30603 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))) (regOne!30602 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))))) (ite c!932398 (ite (or c!932171 c!932173) lt!2181621 (Context!8859 call!382859)) (Context!8859 call!383013)) (h!67758 s!2326)))))

(declare-fun b!5354823 () Bool)

(assert (=> b!5354823 (= e!3323869 (nullable!5214 (regOne!30602 (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))))))))

(declare-fun b!5354824 () Bool)

(assert (=> b!5354824 (= e!3323868 e!3323871)))

(assert (=> b!5354824 (= c!932399 ((_ is Concat!23890) (ite c!932171 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932173 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932172 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun b!5354825 () Bool)

(assert (=> b!5354825 (= e!3323870 ((_ map or) call!383017 call!383018))))

(declare-fun b!5354826 () Bool)

(assert (=> b!5354826 (= e!3323873 (store ((as const (Array Context!8858 Bool)) false) (ite (or c!932171 c!932173) lt!2181621 (Context!8859 call!382859)) true))))

(declare-fun b!5354827 () Bool)

(assert (=> b!5354827 (= e!3323872 call!383016)))

(assert (= (and d!1716710 c!932397) b!5354826))

(assert (= (and d!1716710 (not c!932397)) b!5354819))

(assert (= (and b!5354819 c!932398) b!5354825))

(assert (= (and b!5354819 (not c!932398)) b!5354818))

(assert (= (and b!5354818 res!2271880) b!5354823))

(assert (= (and b!5354818 c!932400) b!5354820))

(assert (= (and b!5354818 (not c!932400)) b!5354824))

(assert (= (and b!5354824 c!932399) b!5354817))

(assert (= (and b!5354824 (not c!932399)) b!5354821))

(assert (= (and b!5354821 c!932396) b!5354827))

(assert (= (and b!5354821 (not c!932396)) b!5354822))

(assert (= (or b!5354817 b!5354827) bm!383010))

(assert (= (or b!5354817 b!5354827) bm!383008))

(assert (= (or b!5354820 bm!383010) bm!383011))

(assert (= (or b!5354820 bm!383008) bm!383012))

(assert (= (or b!5354825 bm!383012) bm!383009))

(assert (= (or b!5354825 b!5354820) bm!383013))

(declare-fun m!6384894 () Bool)

(assert (=> b!5354823 m!6384894))

(declare-fun m!6384896 () Bool)

(assert (=> bm!383013 m!6384896))

(declare-fun m!6384898 () Bool)

(assert (=> bm!383009 m!6384898))

(declare-fun m!6384900 () Bool)

(assert (=> bm!383011 m!6384900))

(declare-fun m!6384902 () Bool)

(assert (=> b!5354826 m!6384902))

(assert (=> bm!382853 d!1716710))

(declare-fun d!1716712 () Bool)

(assert (=> d!1716712 (= (Exists!2226 lambda!275312) (choose!40180 lambda!275312))))

(declare-fun bs!1241096 () Bool)

(assert (= bs!1241096 d!1716712))

(declare-fun m!6384904 () Bool)

(assert (=> bs!1241096 m!6384904))

(assert (=> d!1716384 d!1716712))

(declare-fun d!1716714 () Bool)

(assert (=> d!1716714 (= (Exists!2226 lambda!275313) (choose!40180 lambda!275313))))

(declare-fun bs!1241097 () Bool)

(assert (= bs!1241097 d!1716714))

(declare-fun m!6384906 () Bool)

(assert (=> bs!1241097 m!6384906))

(assert (=> d!1716384 d!1716714))

(declare-fun bs!1241098 () Bool)

(declare-fun d!1716716 () Bool)

(assert (= bs!1241098 (and d!1716716 b!5354029)))

(declare-fun lambda!275370 () Int)

(assert (=> bs!1241098 (not (= lambda!275370 lambda!275324))))

(declare-fun bs!1241099 () Bool)

(assert (= bs!1241099 (and d!1716716 b!5353374)))

(assert (=> bs!1241099 (not (= lambda!275370 lambda!275268))))

(assert (=> bs!1241099 (= lambda!275370 lambda!275267)))

(declare-fun bs!1241100 () Bool)

(assert (= bs!1241100 (and d!1716716 d!1716384)))

(assert (=> bs!1241100 (not (= lambda!275370 lambda!275313))))

(declare-fun bs!1241101 () Bool)

(assert (= bs!1241101 (and d!1716716 b!5354737)))

(assert (=> bs!1241101 (not (= lambda!275370 lambda!275362))))

(assert (=> bs!1241100 (= lambda!275370 lambda!275312)))

(declare-fun bs!1241102 () Bool)

(assert (= bs!1241102 (and d!1716716 b!5354738)))

(assert (=> bs!1241102 (not (= lambda!275370 lambda!275363))))

(declare-fun bs!1241103 () Bool)

(assert (= bs!1241103 (and d!1716716 b!5354030)))

(assert (=> bs!1241103 (not (= lambda!275370 lambda!275325))))

(declare-fun bs!1241104 () Bool)

(assert (= bs!1241104 (and d!1716716 d!1716382)))

(assert (=> bs!1241104 (= lambda!275370 lambda!275307)))

(assert (=> d!1716716 true))

(assert (=> d!1716716 true))

(assert (=> d!1716716 true))

(declare-fun lambda!275371 () Int)

(assert (=> bs!1241098 (not (= lambda!275371 lambda!275324))))

(assert (=> bs!1241099 (= lambda!275371 lambda!275268)))

(assert (=> bs!1241099 (not (= lambda!275371 lambda!275267))))

(assert (=> bs!1241100 (= lambda!275371 lambda!275313)))

(declare-fun bs!1241105 () Bool)

(assert (= bs!1241105 d!1716716))

(assert (=> bs!1241105 (not (= lambda!275371 lambda!275370))))

(assert (=> bs!1241101 (not (= lambda!275371 lambda!275362))))

(assert (=> bs!1241100 (not (= lambda!275371 lambda!275312))))

(assert (=> bs!1241102 (= (and (= (regOne!30602 r!7292) (regOne!30602 (regTwo!30603 r!7292))) (= (regTwo!30602 r!7292) (regTwo!30602 (regTwo!30603 r!7292)))) (= lambda!275371 lambda!275363))))

(assert (=> bs!1241103 (= lambda!275371 lambda!275325)))

(assert (=> bs!1241104 (not (= lambda!275371 lambda!275307))))

(assert (=> d!1716716 true))

(assert (=> d!1716716 true))

(assert (=> d!1716716 true))

(assert (=> d!1716716 (= (Exists!2226 lambda!275370) (Exists!2226 lambda!275371))))

(assert (=> d!1716716 true))

(declare-fun _$90!1172 () Unit!153698)

(assert (=> d!1716716 (= (choose!40182 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326) _$90!1172)))

(declare-fun m!6384908 () Bool)

(assert (=> bs!1241105 m!6384908))

(declare-fun m!6384910 () Bool)

(assert (=> bs!1241105 m!6384910))

(assert (=> d!1716384 d!1716716))

(assert (=> d!1716384 d!1716642))

(assert (=> b!5354075 d!1716698))

(assert (=> d!1716388 d!1716702))

(declare-fun b!5354836 () Bool)

(declare-fun res!2271889 () Bool)

(declare-fun e!3323884 () Bool)

(assert (=> b!5354836 (=> res!2271889 e!3323884)))

(assert (=> b!5354836 (= res!2271889 (not (isEmpty!33291 (tail!10579 (_2!35547 (get!21090 lt!2181698))))))))

(declare-fun b!5354837 () Bool)

(declare-fun e!3323883 () Bool)

(assert (=> b!5354837 (= e!3323883 (= (head!11482 (_2!35547 (get!21090 lt!2181698))) (c!932025 (regTwo!30602 r!7292))))))

(declare-fun b!5354838 () Bool)

(declare-fun e!3323879 () Bool)

(assert (=> b!5354838 (= e!3323879 (nullable!5214 (regTwo!30602 r!7292)))))

(declare-fun b!5354839 () Bool)

(declare-fun res!2271894 () Bool)

(declare-fun e!3323882 () Bool)

(assert (=> b!5354839 (=> res!2271894 e!3323882)))

(assert (=> b!5354839 (= res!2271894 e!3323883)))

(declare-fun res!2271891 () Bool)

(assert (=> b!5354839 (=> (not res!2271891) (not e!3323883))))

(declare-fun lt!2181747 () Bool)

(assert (=> b!5354839 (= res!2271891 lt!2181747)))

(declare-fun b!5354840 () Bool)

(declare-fun e!3323880 () Bool)

(declare-fun e!3323881 () Bool)

(assert (=> b!5354840 (= e!3323880 e!3323881)))

(declare-fun c!932401 () Bool)

(assert (=> b!5354840 (= c!932401 ((_ is EmptyLang!15045) (regTwo!30602 r!7292)))))

(declare-fun b!5354841 () Bool)

(assert (=> b!5354841 (= e!3323881 (not lt!2181747))))

(declare-fun b!5354842 () Bool)

(declare-fun res!2271893 () Bool)

(assert (=> b!5354842 (=> res!2271893 e!3323882)))

(assert (=> b!5354842 (= res!2271893 (not ((_ is ElementMatch!15045) (regTwo!30602 r!7292))))))

(assert (=> b!5354842 (= e!3323881 e!3323882)))

(declare-fun b!5354843 () Bool)

(declare-fun res!2271896 () Bool)

(assert (=> b!5354843 (=> (not res!2271896) (not e!3323883))))

(assert (=> b!5354843 (= res!2271896 (isEmpty!33291 (tail!10579 (_2!35547 (get!21090 lt!2181698)))))))

(declare-fun b!5354844 () Bool)

(declare-fun e!3323878 () Bool)

(assert (=> b!5354844 (= e!3323878 e!3323884)))

(declare-fun res!2271892 () Bool)

(assert (=> b!5354844 (=> res!2271892 e!3323884)))

(declare-fun call!383019 () Bool)

(assert (=> b!5354844 (= res!2271892 call!383019)))

(declare-fun b!5354845 () Bool)

(assert (=> b!5354845 (= e!3323884 (not (= (head!11482 (_2!35547 (get!21090 lt!2181698))) (c!932025 (regTwo!30602 r!7292)))))))

(declare-fun d!1716718 () Bool)

(assert (=> d!1716718 e!3323880))

(declare-fun c!932403 () Bool)

(assert (=> d!1716718 (= c!932403 ((_ is EmptyExpr!15045) (regTwo!30602 r!7292)))))

(assert (=> d!1716718 (= lt!2181747 e!3323879)))

(declare-fun c!932402 () Bool)

(assert (=> d!1716718 (= c!932402 (isEmpty!33291 (_2!35547 (get!21090 lt!2181698))))))

(assert (=> d!1716718 (validRegex!6781 (regTwo!30602 r!7292))))

(assert (=> d!1716718 (= (matchR!7230 (regTwo!30602 r!7292) (_2!35547 (get!21090 lt!2181698))) lt!2181747)))

(declare-fun b!5354846 () Bool)

(declare-fun res!2271895 () Bool)

(assert (=> b!5354846 (=> (not res!2271895) (not e!3323883))))

(assert (=> b!5354846 (= res!2271895 (not call!383019))))

(declare-fun bm!383014 () Bool)

(assert (=> bm!383014 (= call!383019 (isEmpty!33291 (_2!35547 (get!21090 lt!2181698))))))

(declare-fun b!5354847 () Bool)

(assert (=> b!5354847 (= e!3323879 (matchR!7230 (derivativeStep!4203 (regTwo!30602 r!7292) (head!11482 (_2!35547 (get!21090 lt!2181698)))) (tail!10579 (_2!35547 (get!21090 lt!2181698)))))))

(declare-fun b!5354848 () Bool)

(assert (=> b!5354848 (= e!3323882 e!3323878)))

(declare-fun res!2271890 () Bool)

(assert (=> b!5354848 (=> (not res!2271890) (not e!3323878))))

(assert (=> b!5354848 (= res!2271890 (not lt!2181747))))

(declare-fun b!5354849 () Bool)

(assert (=> b!5354849 (= e!3323880 (= lt!2181747 call!383019))))

(assert (= (and d!1716718 c!932402) b!5354838))

(assert (= (and d!1716718 (not c!932402)) b!5354847))

(assert (= (and d!1716718 c!932403) b!5354849))

(assert (= (and d!1716718 (not c!932403)) b!5354840))

(assert (= (and b!5354840 c!932401) b!5354841))

(assert (= (and b!5354840 (not c!932401)) b!5354842))

(assert (= (and b!5354842 (not res!2271893)) b!5354839))

(assert (= (and b!5354839 res!2271891) b!5354846))

(assert (= (and b!5354846 res!2271895) b!5354843))

(assert (= (and b!5354843 res!2271896) b!5354837))

(assert (= (and b!5354839 (not res!2271894)) b!5354848))

(assert (= (and b!5354848 res!2271890) b!5354844))

(assert (= (and b!5354844 (not res!2271892)) b!5354836))

(assert (= (and b!5354836 (not res!2271889)) b!5354845))

(assert (= (or b!5354849 b!5354844 b!5354846) bm!383014))

(declare-fun m!6384912 () Bool)

(assert (=> b!5354845 m!6384912))

(declare-fun m!6384914 () Bool)

(assert (=> bm!383014 m!6384914))

(assert (=> b!5354847 m!6384912))

(assert (=> b!5354847 m!6384912))

(declare-fun m!6384916 () Bool)

(assert (=> b!5354847 m!6384916))

(declare-fun m!6384918 () Bool)

(assert (=> b!5354847 m!6384918))

(assert (=> b!5354847 m!6384916))

(assert (=> b!5354847 m!6384918))

(declare-fun m!6384920 () Bool)

(assert (=> b!5354847 m!6384920))

(assert (=> b!5354838 m!6384868))

(assert (=> b!5354837 m!6384912))

(assert (=> d!1716718 m!6384914))

(assert (=> d!1716718 m!6384870))

(assert (=> b!5354836 m!6384918))

(assert (=> b!5354836 m!6384918))

(declare-fun m!6384922 () Bool)

(assert (=> b!5354836 m!6384922))

(assert (=> b!5354843 m!6384918))

(assert (=> b!5354843 m!6384918))

(assert (=> b!5354843 m!6384922))

(assert (=> b!5353923 d!1716718))

(declare-fun d!1716720 () Bool)

(assert (=> d!1716720 (= (get!21090 lt!2181698) (v!51184 lt!2181698))))

(assert (=> b!5353923 d!1716720))

(declare-fun b!5354850 () Bool)

(declare-fun e!3323885 () Bool)

(declare-fun call!383020 () Bool)

(assert (=> b!5354850 (= e!3323885 call!383020)))

(declare-fun b!5354851 () Bool)

(declare-fun e!3323891 () Bool)

(declare-fun e!3323890 () Bool)

(assert (=> b!5354851 (= e!3323891 e!3323890)))

(declare-fun res!2271901 () Bool)

(assert (=> b!5354851 (=> (not res!2271901) (not e!3323890))))

(declare-fun call!383021 () Bool)

(assert (=> b!5354851 (= res!2271901 call!383021)))

(declare-fun b!5354852 () Bool)

(assert (=> b!5354852 (= e!3323890 call!383020)))

(declare-fun c!932405 () Bool)

(declare-fun call!383022 () Bool)

(declare-fun c!932404 () Bool)

(declare-fun bm!383015 () Bool)

(assert (=> bm!383015 (= call!383022 (validRegex!6781 (ite c!932404 (reg!15374 lt!2181711) (ite c!932405 (regTwo!30603 lt!2181711) (regTwo!30602 lt!2181711)))))))

(declare-fun b!5354853 () Bool)

(declare-fun e!3323886 () Bool)

(declare-fun e!3323889 () Bool)

(assert (=> b!5354853 (= e!3323886 e!3323889)))

(assert (=> b!5354853 (= c!932405 ((_ is Union!15045) lt!2181711))))

(declare-fun b!5354854 () Bool)

(declare-fun e!3323888 () Bool)

(assert (=> b!5354854 (= e!3323888 call!383022)))

(declare-fun b!5354855 () Bool)

(assert (=> b!5354855 (= e!3323886 e!3323888)))

(declare-fun res!2271898 () Bool)

(assert (=> b!5354855 (= res!2271898 (not (nullable!5214 (reg!15374 lt!2181711))))))

(assert (=> b!5354855 (=> (not res!2271898) (not e!3323888))))

(declare-fun b!5354856 () Bool)

(declare-fun e!3323887 () Bool)

(assert (=> b!5354856 (= e!3323887 e!3323886)))

(assert (=> b!5354856 (= c!932404 ((_ is Star!15045) lt!2181711))))

(declare-fun d!1716722 () Bool)

(declare-fun res!2271899 () Bool)

(assert (=> d!1716722 (=> res!2271899 e!3323887)))

(assert (=> d!1716722 (= res!2271899 ((_ is ElementMatch!15045) lt!2181711))))

(assert (=> d!1716722 (= (validRegex!6781 lt!2181711) e!3323887)))

(declare-fun b!5354857 () Bool)

(declare-fun res!2271897 () Bool)

(assert (=> b!5354857 (=> (not res!2271897) (not e!3323885))))

(assert (=> b!5354857 (= res!2271897 call!383021)))

(assert (=> b!5354857 (= e!3323889 e!3323885)))

(declare-fun b!5354858 () Bool)

(declare-fun res!2271900 () Bool)

(assert (=> b!5354858 (=> res!2271900 e!3323891)))

(assert (=> b!5354858 (= res!2271900 (not ((_ is Concat!23890) lt!2181711)))))

(assert (=> b!5354858 (= e!3323889 e!3323891)))

(declare-fun bm!383016 () Bool)

(assert (=> bm!383016 (= call!383021 (validRegex!6781 (ite c!932405 (regOne!30603 lt!2181711) (regOne!30602 lt!2181711))))))

(declare-fun bm!383017 () Bool)

(assert (=> bm!383017 (= call!383020 call!383022)))

(assert (= (and d!1716722 (not res!2271899)) b!5354856))

(assert (= (and b!5354856 c!932404) b!5354855))

(assert (= (and b!5354856 (not c!932404)) b!5354853))

(assert (= (and b!5354855 res!2271898) b!5354854))

(assert (= (and b!5354853 c!932405) b!5354857))

(assert (= (and b!5354853 (not c!932405)) b!5354858))

(assert (= (and b!5354857 res!2271897) b!5354850))

(assert (= (and b!5354858 (not res!2271900)) b!5354851))

(assert (= (and b!5354851 res!2271901) b!5354852))

(assert (= (or b!5354850 b!5354852) bm!383017))

(assert (= (or b!5354857 b!5354851) bm!383016))

(assert (= (or b!5354854 bm!383017) bm!383015))

(declare-fun m!6384924 () Bool)

(assert (=> bm!383015 m!6384924))

(declare-fun m!6384926 () Bool)

(assert (=> b!5354855 m!6384926))

(declare-fun m!6384928 () Bool)

(assert (=> bm!383016 m!6384928))

(assert (=> d!1716396 d!1716722))

(declare-fun d!1716724 () Bool)

(declare-fun res!2271902 () Bool)

(declare-fun e!3323892 () Bool)

(assert (=> d!1716724 (=> res!2271902 e!3323892)))

(assert (=> d!1716724 (= res!2271902 ((_ is Nil!61311) (unfocusZipperList!487 zl!343)))))

(assert (=> d!1716724 (= (forall!14469 (unfocusZipperList!487 zl!343) lambda!275316) e!3323892)))

(declare-fun b!5354859 () Bool)

(declare-fun e!3323893 () Bool)

(assert (=> b!5354859 (= e!3323892 e!3323893)))

(declare-fun res!2271903 () Bool)

(assert (=> b!5354859 (=> (not res!2271903) (not e!3323893))))

(assert (=> b!5354859 (= res!2271903 (dynLambda!24235 lambda!275316 (h!67759 (unfocusZipperList!487 zl!343))))))

(declare-fun b!5354860 () Bool)

(assert (=> b!5354860 (= e!3323893 (forall!14469 (t!374654 (unfocusZipperList!487 zl!343)) lambda!275316))))

(assert (= (and d!1716724 (not res!2271902)) b!5354859))

(assert (= (and b!5354859 res!2271903) b!5354860))

(declare-fun b_lambda!205429 () Bool)

(assert (=> (not b_lambda!205429) (not b!5354859)))

(declare-fun m!6384930 () Bool)

(assert (=> b!5354859 m!6384930))

(declare-fun m!6384932 () Bool)

(assert (=> b!5354860 m!6384932))

(assert (=> d!1716396 d!1716724))

(declare-fun b!5354861 () Bool)

(declare-fun e!3323894 () Bool)

(declare-fun call!383023 () Bool)

(assert (=> b!5354861 (= e!3323894 call!383023)))

(declare-fun b!5354862 () Bool)

(declare-fun e!3323900 () Bool)

(declare-fun e!3323899 () Bool)

(assert (=> b!5354862 (= e!3323900 e!3323899)))

(declare-fun res!2271908 () Bool)

(assert (=> b!5354862 (=> (not res!2271908) (not e!3323899))))

(declare-fun call!383024 () Bool)

(assert (=> b!5354862 (= res!2271908 call!383024)))

(declare-fun b!5354863 () Bool)

(assert (=> b!5354863 (= e!3323899 call!383023)))

(declare-fun c!932407 () Bool)

(declare-fun c!932406 () Bool)

(declare-fun call!383025 () Bool)

(declare-fun bm!383018 () Bool)

(assert (=> bm!383018 (= call!383025 (validRegex!6781 (ite c!932406 (reg!15374 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))) (ite c!932407 (regTwo!30603 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))) (regTwo!30602 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292))))))))))))

(declare-fun b!5354864 () Bool)

(declare-fun e!3323895 () Bool)

(declare-fun e!3323898 () Bool)

(assert (=> b!5354864 (= e!3323895 e!3323898)))

(assert (=> b!5354864 (= c!932407 ((_ is Union!15045) (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(declare-fun b!5354865 () Bool)

(declare-fun e!3323897 () Bool)

(assert (=> b!5354865 (= e!3323897 call!383025)))

(declare-fun b!5354866 () Bool)

(assert (=> b!5354866 (= e!3323895 e!3323897)))

(declare-fun res!2271905 () Bool)

(assert (=> b!5354866 (= res!2271905 (not (nullable!5214 (reg!15374 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))))))))

(assert (=> b!5354866 (=> (not res!2271905) (not e!3323897))))

(declare-fun b!5354867 () Bool)

(declare-fun e!3323896 () Bool)

(assert (=> b!5354867 (= e!3323896 e!3323895)))

(assert (=> b!5354867 (= c!932406 ((_ is Star!15045) (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(declare-fun d!1716726 () Bool)

(declare-fun res!2271906 () Bool)

(assert (=> d!1716726 (=> res!2271906 e!3323896)))

(assert (=> d!1716726 (= res!2271906 ((_ is ElementMatch!15045) (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(assert (=> d!1716726 (= (validRegex!6781 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))) e!3323896)))

(declare-fun b!5354868 () Bool)

(declare-fun res!2271904 () Bool)

(assert (=> b!5354868 (=> (not res!2271904) (not e!3323894))))

(assert (=> b!5354868 (= res!2271904 call!383024)))

(assert (=> b!5354868 (= e!3323898 e!3323894)))

(declare-fun b!5354869 () Bool)

(declare-fun res!2271907 () Bool)

(assert (=> b!5354869 (=> res!2271907 e!3323900)))

(assert (=> b!5354869 (= res!2271907 (not ((_ is Concat!23890) (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292))))))))))

(assert (=> b!5354869 (= e!3323898 e!3323900)))

(declare-fun bm!383019 () Bool)

(assert (=> bm!383019 (= call!383024 (validRegex!6781 (ite c!932407 (regOne!30603 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))) (regOne!30602 (ite c!932135 (reg!15374 (reg!15374 (regOne!30602 r!7292))) (ite c!932136 (regTwo!30603 (reg!15374 (regOne!30602 r!7292))) (regTwo!30602 (reg!15374 (regOne!30602 r!7292)))))))))))

(declare-fun bm!383020 () Bool)

(assert (=> bm!383020 (= call!383023 call!383025)))

(assert (= (and d!1716726 (not res!2271906)) b!5354867))

(assert (= (and b!5354867 c!932406) b!5354866))

(assert (= (and b!5354867 (not c!932406)) b!5354864))

(assert (= (and b!5354866 res!2271905) b!5354865))

(assert (= (and b!5354864 c!932407) b!5354868))

(assert (= (and b!5354864 (not c!932407)) b!5354869))

(assert (= (and b!5354868 res!2271904) b!5354861))

(assert (= (and b!5354869 (not res!2271907)) b!5354862))

(assert (= (and b!5354862 res!2271908) b!5354863))

(assert (= (or b!5354861 b!5354863) bm!383020))

(assert (= (or b!5354868 b!5354862) bm!383019))

(assert (= (or b!5354865 bm!383020) bm!383018))

(declare-fun m!6384934 () Bool)

(assert (=> bm!383018 m!6384934))

(declare-fun m!6384936 () Bool)

(assert (=> b!5354866 m!6384936))

(declare-fun m!6384938 () Bool)

(assert (=> bm!383019 m!6384938))

(assert (=> bm!382828 d!1716726))

(declare-fun b!5354870 () Bool)

(declare-fun e!3323901 () Bool)

(declare-fun call!383026 () Bool)

(assert (=> b!5354870 (= e!3323901 call!383026)))

(declare-fun b!5354871 () Bool)

(declare-fun e!3323907 () Bool)

(declare-fun e!3323906 () Bool)

(assert (=> b!5354871 (= e!3323907 e!3323906)))

(declare-fun res!2271913 () Bool)

(assert (=> b!5354871 (=> (not res!2271913) (not e!3323906))))

(declare-fun call!383027 () Bool)

(assert (=> b!5354871 (= res!2271913 call!383027)))

(declare-fun b!5354872 () Bool)

(assert (=> b!5354872 (= e!3323906 call!383026)))

(declare-fun bm!383021 () Bool)

(declare-fun c!932409 () Bool)

(declare-fun c!932408 () Bool)

(declare-fun call!383028 () Bool)

(assert (=> bm!383021 (= call!383028 (validRegex!6781 (ite c!932408 (reg!15374 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))) (ite c!932409 (regTwo!30603 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))) (regTwo!30602 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292))))))))))

(declare-fun b!5354873 () Bool)

(declare-fun e!3323902 () Bool)

(declare-fun e!3323905 () Bool)

(assert (=> b!5354873 (= e!3323902 e!3323905)))

(assert (=> b!5354873 (= c!932409 ((_ is Union!15045) (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))))))

(declare-fun b!5354874 () Bool)

(declare-fun e!3323904 () Bool)

(assert (=> b!5354874 (= e!3323904 call!383028)))

(declare-fun b!5354875 () Bool)

(assert (=> b!5354875 (= e!3323902 e!3323904)))

(declare-fun res!2271910 () Bool)

(assert (=> b!5354875 (= res!2271910 (not (nullable!5214 (reg!15374 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))))))))

(assert (=> b!5354875 (=> (not res!2271910) (not e!3323904))))

(declare-fun b!5354876 () Bool)

(declare-fun e!3323903 () Bool)

(assert (=> b!5354876 (= e!3323903 e!3323902)))

(assert (=> b!5354876 (= c!932408 ((_ is Star!15045) (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))))))

(declare-fun d!1716728 () Bool)

(declare-fun res!2271911 () Bool)

(assert (=> d!1716728 (=> res!2271911 e!3323903)))

(assert (=> d!1716728 (= res!2271911 ((_ is ElementMatch!15045) (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))))))

(assert (=> d!1716728 (= (validRegex!6781 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))) e!3323903)))

(declare-fun b!5354877 () Bool)

(declare-fun res!2271909 () Bool)

(assert (=> b!5354877 (=> (not res!2271909) (not e!3323901))))

(assert (=> b!5354877 (= res!2271909 call!383027)))

(assert (=> b!5354877 (= e!3323905 e!3323901)))

(declare-fun b!5354878 () Bool)

(declare-fun res!2271912 () Bool)

(assert (=> b!5354878 (=> res!2271912 e!3323907)))

(assert (=> b!5354878 (= res!2271912 (not ((_ is Concat!23890) (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292))))))))

(assert (=> b!5354878 (= e!3323905 e!3323907)))

(declare-fun bm!383022 () Bool)

(assert (=> bm!383022 (= call!383027 (validRegex!6781 (ite c!932409 (regOne!30603 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))) (regOne!30602 (ite c!932181 (reg!15374 r!7292) (ite c!932182 (regTwo!30603 r!7292) (regTwo!30602 r!7292)))))))))

(declare-fun bm!383023 () Bool)

(assert (=> bm!383023 (= call!383026 call!383028)))

(assert (= (and d!1716728 (not res!2271911)) b!5354876))

(assert (= (and b!5354876 c!932408) b!5354875))

(assert (= (and b!5354876 (not c!932408)) b!5354873))

(assert (= (and b!5354875 res!2271910) b!5354874))

(assert (= (and b!5354873 c!932409) b!5354877))

(assert (= (and b!5354873 (not c!932409)) b!5354878))

(assert (= (and b!5354877 res!2271909) b!5354870))

(assert (= (and b!5354878 (not res!2271912)) b!5354871))

(assert (= (and b!5354871 res!2271913) b!5354872))

(assert (= (or b!5354870 b!5354872) bm!383023))

(assert (= (or b!5354877 b!5354871) bm!383022))

(assert (= (or b!5354874 bm!383023) bm!383021))

(declare-fun m!6384940 () Bool)

(assert (=> bm!383021 m!6384940))

(declare-fun m!6384942 () Bool)

(assert (=> b!5354875 m!6384942))

(declare-fun m!6384944 () Bool)

(assert (=> bm!383022 m!6384944))

(assert (=> bm!382858 d!1716728))

(declare-fun d!1716730 () Bool)

(assert (=> d!1716730 (= (isEmpty!33291 (tail!10579 s!2326)) ((_ is Nil!61310) (tail!10579 s!2326)))))

(assert (=> b!5354073 d!1716730))

(declare-fun d!1716732 () Bool)

(assert (=> d!1716732 (= (tail!10579 s!2326) (t!374653 s!2326))))

(assert (=> b!5354073 d!1716732))

(declare-fun bs!1241106 () Bool)

(declare-fun d!1716734 () Bool)

(assert (= bs!1241106 (and d!1716734 d!1716644)))

(declare-fun lambda!275372 () Int)

(assert (=> bs!1241106 (= lambda!275372 lambda!275359)))

(declare-fun bs!1241107 () Bool)

(assert (= bs!1241107 (and d!1716734 d!1716656)))

(assert (=> bs!1241107 (= lambda!275372 lambda!275361)))

(assert (=> d!1716734 (= (nullableZipper!1382 ((_ map or) lt!2181618 lt!2181634)) (exists!2019 ((_ map or) lt!2181618 lt!2181634) lambda!275372))))

(declare-fun bs!1241108 () Bool)

(assert (= bs!1241108 d!1716734))

(declare-fun m!6384946 () Bool)

(assert (=> bs!1241108 m!6384946))

(assert (=> b!5353557 d!1716734))

(assert (=> d!1716404 d!1716402))

(assert (=> d!1716404 d!1716400))

(declare-fun d!1716736 () Bool)

(assert (=> d!1716736 (= (matchR!7230 r!7292 s!2326) (matchRSpec!2148 r!7292 s!2326))))

(assert (=> d!1716736 true))

(declare-fun _$88!3650 () Unit!153698)

(assert (=> d!1716736 (= (choose!40183 r!7292 s!2326) _$88!3650)))

(declare-fun bs!1241109 () Bool)

(assert (= bs!1241109 d!1716736))

(assert (=> bs!1241109 m!6383828))

(assert (=> bs!1241109 m!6383826))

(assert (=> d!1716404 d!1716736))

(assert (=> d!1716404 d!1716392))

(declare-fun bm!383028 () Bool)

(declare-fun call!383034 () Bool)

(declare-fun c!932412 () Bool)

(assert (=> bm!383028 (= call!383034 (nullable!5214 (ite c!932412 (regOne!30603 (regOne!30602 (regOne!30602 r!7292))) (regOne!30602 (regOne!30602 (regOne!30602 r!7292))))))))

(declare-fun b!5354893 () Bool)

(declare-fun e!3323923 () Bool)

(declare-fun e!3323920 () Bool)

(assert (=> b!5354893 (= e!3323923 e!3323920)))

(assert (=> b!5354893 (= c!932412 ((_ is Union!15045) (regOne!30602 (regOne!30602 r!7292))))))

(declare-fun b!5354894 () Bool)

(declare-fun e!3323922 () Bool)

(declare-fun call!383033 () Bool)

(assert (=> b!5354894 (= e!3323922 call!383033)))

(declare-fun b!5354896 () Bool)

(assert (=> b!5354896 (= e!3323920 e!3323922)))

(declare-fun res!2271928 () Bool)

(assert (=> b!5354896 (= res!2271928 call!383034)))

(assert (=> b!5354896 (=> (not res!2271928) (not e!3323922))))

(declare-fun b!5354897 () Bool)

(declare-fun e!3323921 () Bool)

(assert (=> b!5354897 (= e!3323921 e!3323923)))

(declare-fun res!2271924 () Bool)

(assert (=> b!5354897 (=> res!2271924 e!3323923)))

(assert (=> b!5354897 (= res!2271924 ((_ is Star!15045) (regOne!30602 (regOne!30602 r!7292))))))

(declare-fun bm!383029 () Bool)

(assert (=> bm!383029 (= call!383033 (nullable!5214 (ite c!932412 (regTwo!30603 (regOne!30602 (regOne!30602 r!7292))) (regTwo!30602 (regOne!30602 (regOne!30602 r!7292))))))))

(declare-fun b!5354898 () Bool)

(declare-fun e!3323924 () Bool)

(assert (=> b!5354898 (= e!3323924 e!3323921)))

(declare-fun res!2271925 () Bool)

(assert (=> b!5354898 (=> (not res!2271925) (not e!3323921))))

(assert (=> b!5354898 (= res!2271925 (and (not ((_ is EmptyLang!15045) (regOne!30602 (regOne!30602 r!7292)))) (not ((_ is ElementMatch!15045) (regOne!30602 (regOne!30602 r!7292))))))))

(declare-fun b!5354899 () Bool)

(declare-fun e!3323925 () Bool)

(assert (=> b!5354899 (= e!3323925 call!383033)))

(declare-fun d!1716738 () Bool)

(declare-fun res!2271926 () Bool)

(assert (=> d!1716738 (=> res!2271926 e!3323924)))

(assert (=> d!1716738 (= res!2271926 ((_ is EmptyExpr!15045) (regOne!30602 (regOne!30602 r!7292))))))

(assert (=> d!1716738 (= (nullableFct!1534 (regOne!30602 (regOne!30602 r!7292))) e!3323924)))

(declare-fun b!5354895 () Bool)

(assert (=> b!5354895 (= e!3323920 e!3323925)))

(declare-fun res!2271927 () Bool)

(assert (=> b!5354895 (= res!2271927 call!383034)))

(assert (=> b!5354895 (=> res!2271927 e!3323925)))

(assert (= (and d!1716738 (not res!2271926)) b!5354898))

(assert (= (and b!5354898 res!2271925) b!5354897))

(assert (= (and b!5354897 (not res!2271924)) b!5354893))

(assert (= (and b!5354893 c!932412) b!5354895))

(assert (= (and b!5354893 (not c!932412)) b!5354896))

(assert (= (and b!5354895 (not res!2271927)) b!5354899))

(assert (= (and b!5354896 res!2271928) b!5354894))

(assert (= (or b!5354899 b!5354894) bm!383029))

(assert (= (or b!5354895 b!5354896) bm!383028))

(declare-fun m!6384948 () Bool)

(assert (=> bm!383028 m!6384948))

(declare-fun m!6384950 () Bool)

(assert (=> bm!383029 m!6384950))

(assert (=> d!1716332 d!1716738))

(assert (=> d!1716370 d!1716364))

(declare-fun d!1716740 () Bool)

(assert (=> d!1716740 (= (flatMap!772 z!1189 lambda!275269) (dynLambda!24233 lambda!275269 (h!67760 zl!343)))))

(assert (=> d!1716740 true))

(declare-fun _$13!1928 () Unit!153698)

(assert (=> d!1716740 (= (choose!40178 z!1189 (h!67760 zl!343) lambda!275269) _$13!1928)))

(declare-fun b_lambda!205431 () Bool)

(assert (=> (not b_lambda!205431) (not d!1716740)))

(declare-fun bs!1241110 () Bool)

(assert (= bs!1241110 d!1716740))

(assert (=> bs!1241110 m!6383774))

(assert (=> bs!1241110 m!6384152))

(assert (=> d!1716370 d!1716740))

(declare-fun bs!1241111 () Bool)

(declare-fun d!1716742 () Bool)

(assert (= bs!1241111 (and d!1716742 d!1716308)))

(declare-fun lambda!275373 () Int)

(assert (=> bs!1241111 (= lambda!275373 lambda!275294)))

(declare-fun bs!1241112 () Bool)

(assert (= bs!1241112 (and d!1716742 d!1716398)))

(assert (=> bs!1241112 (= lambda!275373 lambda!275319)))

(declare-fun bs!1241113 () Bool)

(assert (= bs!1241113 (and d!1716742 d!1716646)))

(assert (=> bs!1241113 (= lambda!275373 lambda!275360)))

(declare-fun bs!1241114 () Bool)

(assert (= bs!1241114 (and d!1716742 d!1716396)))

(assert (=> bs!1241114 (= lambda!275373 lambda!275316)))

(declare-fun bs!1241115 () Bool)

(assert (= bs!1241115 (and d!1716742 d!1716352)))

(assert (=> bs!1241115 (= lambda!275373 lambda!275303)))

(declare-fun bs!1241116 () Bool)

(assert (= bs!1241116 (and d!1716742 d!1716692)))

(assert (=> bs!1241116 (= lambda!275373 lambda!275364)))

(declare-fun bs!1241117 () Bool)

(assert (= bs!1241117 (and d!1716742 d!1716374)))

(assert (=> bs!1241117 (= lambda!275373 lambda!275304)))

(declare-fun bs!1241118 () Bool)

(assert (= bs!1241118 (and d!1716742 d!1716700)))

(assert (=> bs!1241118 (= lambda!275373 lambda!275365)))

(assert (=> d!1716742 (= (inv!80859 setElem!34605) (forall!14469 (exprs!4929 setElem!34605) lambda!275373))))

(declare-fun bs!1241119 () Bool)

(assert (= bs!1241119 d!1716742))

(declare-fun m!6384952 () Bool)

(assert (=> bs!1241119 m!6384952))

(assert (=> setNonEmpty!34605 d!1716742))

(declare-fun d!1716744 () Bool)

(declare-fun c!932413 () Bool)

(assert (=> d!1716744 (= c!932413 (isEmpty!33291 (tail!10579 (t!374653 s!2326))))))

(declare-fun e!3323926 () Bool)

(assert (=> d!1716744 (= (matchZipper!1289 (derivationStepZipper!1284 lt!2181634 (head!11482 (t!374653 s!2326))) (tail!10579 (t!374653 s!2326))) e!3323926)))

(declare-fun b!5354900 () Bool)

(assert (=> b!5354900 (= e!3323926 (nullableZipper!1382 (derivationStepZipper!1284 lt!2181634 (head!11482 (t!374653 s!2326)))))))

(declare-fun b!5354901 () Bool)

(assert (=> b!5354901 (= e!3323926 (matchZipper!1289 (derivationStepZipper!1284 (derivationStepZipper!1284 lt!2181634 (head!11482 (t!374653 s!2326))) (head!11482 (tail!10579 (t!374653 s!2326)))) (tail!10579 (tail!10579 (t!374653 s!2326)))))))

(assert (= (and d!1716744 c!932413) b!5354900))

(assert (= (and d!1716744 (not c!932413)) b!5354901))

(assert (=> d!1716744 m!6383968))

(assert (=> d!1716744 m!6384748))

(assert (=> b!5354900 m!6384208))

(declare-fun m!6384954 () Bool)

(assert (=> b!5354900 m!6384954))

(assert (=> b!5354901 m!6383968))

(assert (=> b!5354901 m!6384752))

(assert (=> b!5354901 m!6384208))

(assert (=> b!5354901 m!6384752))

(declare-fun m!6384956 () Bool)

(assert (=> b!5354901 m!6384956))

(assert (=> b!5354901 m!6383968))

(assert (=> b!5354901 m!6384756))

(assert (=> b!5354901 m!6384956))

(assert (=> b!5354901 m!6384756))

(declare-fun m!6384958 () Bool)

(assert (=> b!5354901 m!6384958))

(assert (=> b!5353938 d!1716744))

(declare-fun bs!1241120 () Bool)

(declare-fun d!1716746 () Bool)

(assert (= bs!1241120 (and d!1716746 b!5353362)))

(declare-fun lambda!275374 () Int)

(assert (=> bs!1241120 (= (= (head!11482 (t!374653 s!2326)) (h!67758 s!2326)) (= lambda!275374 lambda!275269))))

(declare-fun bs!1241121 () Bool)

(assert (= bs!1241121 (and d!1716746 d!1716630)))

(assert (=> bs!1241121 (= lambda!275374 lambda!275356)))

(assert (=> d!1716746 true))

(assert (=> d!1716746 (= (derivationStepZipper!1284 lt!2181634 (head!11482 (t!374653 s!2326))) (flatMap!772 lt!2181634 lambda!275374))))

(declare-fun bs!1241122 () Bool)

(assert (= bs!1241122 d!1716746))

(declare-fun m!6384960 () Bool)

(assert (=> bs!1241122 m!6384960))

(assert (=> b!5353938 d!1716746))

(assert (=> b!5353938 d!1716632))

(assert (=> b!5353938 d!1716634))

(assert (=> bm!382871 d!1716670))

(assert (=> d!1716290 d!1716306))

(assert (=> d!1716290 d!1716302))

(declare-fun d!1716748 () Bool)

(declare-fun e!3323929 () Bool)

(assert (=> d!1716748 (= (matchZipper!1289 ((_ map or) lt!2181618 lt!2181634) (t!374653 s!2326)) e!3323929)))

(declare-fun res!2271931 () Bool)

(assert (=> d!1716748 (=> res!2271931 e!3323929)))

(assert (=> d!1716748 (= res!2271931 (matchZipper!1289 lt!2181618 (t!374653 s!2326)))))

(assert (=> d!1716748 true))

(declare-fun _$48!1024 () Unit!153698)

(assert (=> d!1716748 (= (choose!40175 lt!2181618 lt!2181634 (t!374653 s!2326)) _$48!1024)))

(declare-fun b!5354904 () Bool)

(assert (=> b!5354904 (= e!3323929 (matchZipper!1289 lt!2181634 (t!374653 s!2326)))))

(assert (= (and d!1716748 (not res!2271931)) b!5354904))

(assert (=> d!1716748 m!6383842))

(assert (=> d!1716748 m!6383840))

(assert (=> b!5354904 m!6383770))

(assert (=> d!1716290 d!1716748))

(declare-fun b!5354905 () Bool)

(declare-fun e!3323933 () (InoxSet Context!8858))

(declare-fun call!383038 () (InoxSet Context!8858))

(assert (=> b!5354905 (= e!3323933 call!383038)))

(declare-fun b!5354906 () Bool)

(declare-fun c!932418 () Bool)

(declare-fun e!3323931 () Bool)

(assert (=> b!5354906 (= c!932418 e!3323931)))

(declare-fun res!2271932 () Bool)

(assert (=> b!5354906 (=> (not res!2271932) (not e!3323931))))

(assert (=> b!5354906 (= res!2271932 ((_ is Concat!23890) (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun e!3323932 () (InoxSet Context!8858))

(declare-fun e!3323930 () (InoxSet Context!8858))

(assert (=> b!5354906 (= e!3323932 e!3323930)))

(declare-fun bm!383030 () Bool)

(declare-fun call!383036 () (InoxSet Context!8858))

(assert (=> bm!383030 (= call!383038 call!383036)))

(declare-fun bm!383031 () Bool)

(declare-fun call!383037 () List!61435)

(declare-fun c!932417 () Bool)

(declare-fun call!383040 () (InoxSet Context!8858))

(declare-fun c!932416 () Bool)

(assert (=> bm!383031 (= call!383040 (derivationStepZipperDown!493 (ite c!932416 (regTwo!30603 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (ite c!932418 (regTwo!30602 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (ite c!932417 (regOne!30602 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (reg!15374 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))) (ite (or c!932416 c!932418) (ite c!932185 (Context!8859 lt!2181619) (Context!8859 call!382866)) (Context!8859 call!383037)) (h!67758 s!2326)))))

(declare-fun b!5354907 () Bool)

(declare-fun e!3323935 () (InoxSet Context!8858))

(assert (=> b!5354907 (= e!3323935 e!3323932)))

(assert (=> b!5354907 (= c!932416 ((_ is Union!15045) (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun b!5354908 () Bool)

(declare-fun call!383039 () (InoxSet Context!8858))

(assert (=> b!5354908 (= e!3323930 ((_ map or) call!383039 call!383036))))

(declare-fun bm!383032 () Bool)

(declare-fun call!383035 () List!61435)

(assert (=> bm!383032 (= call!383037 call!383035)))

(declare-fun b!5354909 () Bool)

(declare-fun c!932414 () Bool)

(assert (=> b!5354909 (= c!932414 ((_ is Star!15045) (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun e!3323934 () (InoxSet Context!8858))

(assert (=> b!5354909 (= e!3323933 e!3323934)))

(declare-fun bm!383033 () Bool)

(assert (=> bm!383033 (= call!383035 ($colon$colon!1432 (exprs!4929 (ite c!932185 (Context!8859 lt!2181619) (Context!8859 call!382866))) (ite (or c!932418 c!932417) (regTwo!30602 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(declare-fun b!5354910 () Bool)

(assert (=> b!5354910 (= e!3323934 ((as const (Array Context!8858 Bool)) false))))

(declare-fun c!932415 () Bool)

(declare-fun d!1716750 () Bool)

(assert (=> d!1716750 (= c!932415 (and ((_ is ElementMatch!15045) (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (= (c!932025 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (h!67758 s!2326))))))

(assert (=> d!1716750 (= (derivationStepZipperDown!493 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))) (ite c!932185 (Context!8859 lt!2181619) (Context!8859 call!382866)) (h!67758 s!2326)) e!3323935)))

(declare-fun bm!383034 () Bool)

(assert (=> bm!383034 (= call!383036 call!383040)))

(declare-fun bm!383035 () Bool)

(assert (=> bm!383035 (= call!383039 (derivationStepZipperDown!493 (ite c!932416 (regOne!30603 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))) (regOne!30602 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))) (ite c!932416 (ite c!932185 (Context!8859 lt!2181619) (Context!8859 call!382866)) (Context!8859 call!383035)) (h!67758 s!2326)))))

(declare-fun b!5354911 () Bool)

(assert (=> b!5354911 (= e!3323931 (nullable!5214 (regOne!30602 (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292)))))))))

(declare-fun b!5354912 () Bool)

(assert (=> b!5354912 (= e!3323930 e!3323933)))

(assert (=> b!5354912 (= c!932417 ((_ is Concat!23890) (ite c!932185 (regOne!30603 (reg!15374 (regOne!30602 r!7292))) (regOne!30602 (reg!15374 (regOne!30602 r!7292))))))))

(declare-fun b!5354913 () Bool)

(assert (=> b!5354913 (= e!3323932 ((_ map or) call!383039 call!383040))))

(declare-fun b!5354914 () Bool)

(assert (=> b!5354914 (= e!3323935 (store ((as const (Array Context!8858 Bool)) false) (ite c!932185 (Context!8859 lt!2181619) (Context!8859 call!382866)) true))))

(declare-fun b!5354915 () Bool)

(assert (=> b!5354915 (= e!3323934 call!383038)))

(assert (= (and d!1716750 c!932415) b!5354914))

(assert (= (and d!1716750 (not c!932415)) b!5354907))

(assert (= (and b!5354907 c!932416) b!5354913))

(assert (= (and b!5354907 (not c!932416)) b!5354906))

(assert (= (and b!5354906 res!2271932) b!5354911))

(assert (= (and b!5354906 c!932418) b!5354908))

(assert (= (and b!5354906 (not c!932418)) b!5354912))

(assert (= (and b!5354912 c!932417) b!5354905))

(assert (= (and b!5354912 (not c!932417)) b!5354909))

(assert (= (and b!5354909 c!932414) b!5354915))

(assert (= (and b!5354909 (not c!932414)) b!5354910))

(assert (= (or b!5354905 b!5354915) bm!383032))

(assert (= (or b!5354905 b!5354915) bm!383030))

(assert (= (or b!5354908 bm!383032) bm!383033))

(assert (= (or b!5354908 bm!383030) bm!383034))

(assert (= (or b!5354913 bm!383034) bm!383031))

(assert (= (or b!5354913 b!5354908) bm!383035))

(declare-fun m!6384962 () Bool)

(assert (=> b!5354911 m!6384962))

(declare-fun m!6384964 () Bool)

(assert (=> bm!383035 m!6384964))

(declare-fun m!6384966 () Bool)

(assert (=> bm!383031 m!6384966))

(declare-fun m!6384968 () Bool)

(assert (=> bm!383033 m!6384968))

(declare-fun m!6384970 () Bool)

(assert (=> b!5354914 m!6384970))

(assert (=> bm!382866 d!1716750))

(declare-fun d!1716752 () Bool)

(assert (=> d!1716752 (= (head!11483 (exprs!4929 (h!67760 zl!343))) (h!67759 (exprs!4929 (h!67760 zl!343))))))

(assert (=> b!5353634 d!1716752))

(declare-fun d!1716754 () Bool)

(declare-fun c!932420 () Bool)

(declare-fun e!3323938 () Bool)

(assert (=> d!1716754 (= c!932420 e!3323938)))

(declare-fun res!2271933 () Bool)

(assert (=> d!1716754 (=> (not res!2271933) (not e!3323938))))

(assert (=> d!1716754 (= res!2271933 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))))

(declare-fun e!3323936 () (InoxSet Context!8858))

(assert (=> d!1716754 (= (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (h!67758 s!2326)) e!3323936)))

(declare-fun b!5354916 () Bool)

(declare-fun call!383041 () (InoxSet Context!8858))

(assert (=> b!5354916 (= e!3323936 ((_ map or) call!383041 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))) (h!67758 s!2326))))))

(declare-fun b!5354917 () Bool)

(declare-fun e!3323937 () (InoxSet Context!8858))

(assert (=> b!5354917 (= e!3323936 e!3323937)))

(declare-fun c!932419 () Bool)

(assert (=> b!5354917 (= c!932419 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))))

(declare-fun b!5354918 () Bool)

(assert (=> b!5354918 (= e!3323937 call!383041)))

(declare-fun b!5354919 () Bool)

(assert (=> b!5354919 (= e!3323937 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5354920 () Bool)

(assert (=> b!5354920 (= e!3323938 (nullable!5214 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))))))

(declare-fun bm!383036 () Bool)

(assert (=> bm!383036 (= call!383041 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))))))) (h!67758 s!2326)))))

(assert (= (and d!1716754 res!2271933) b!5354920))

(assert (= (and d!1716754 c!932420) b!5354916))

(assert (= (and d!1716754 (not c!932420)) b!5354917))

(assert (= (and b!5354917 c!932419) b!5354918))

(assert (= (and b!5354917 (not c!932419)) b!5354919))

(assert (= (or b!5354916 b!5354918) bm!383036))

(declare-fun m!6384972 () Bool)

(assert (=> b!5354916 m!6384972))

(declare-fun m!6384974 () Bool)

(assert (=> b!5354920 m!6384974))

(declare-fun m!6384976 () Bool)

(assert (=> bm!383036 m!6384976))

(assert (=> b!5353852 d!1716754))

(declare-fun d!1716756 () Bool)

(declare-fun c!932421 () Bool)

(assert (=> d!1716756 (= c!932421 (isEmpty!33291 (tail!10579 (t!374653 s!2326))))))

(declare-fun e!3323939 () Bool)

(assert (=> d!1716756 (= (matchZipper!1289 (derivationStepZipper!1284 lt!2181618 (head!11482 (t!374653 s!2326))) (tail!10579 (t!374653 s!2326))) e!3323939)))

(declare-fun b!5354921 () Bool)

(assert (=> b!5354921 (= e!3323939 (nullableZipper!1382 (derivationStepZipper!1284 lt!2181618 (head!11482 (t!374653 s!2326)))))))

(declare-fun b!5354922 () Bool)

(assert (=> b!5354922 (= e!3323939 (matchZipper!1289 (derivationStepZipper!1284 (derivationStepZipper!1284 lt!2181618 (head!11482 (t!374653 s!2326))) (head!11482 (tail!10579 (t!374653 s!2326)))) (tail!10579 (tail!10579 (t!374653 s!2326)))))))

(assert (= (and d!1716756 c!932421) b!5354921))

(assert (= (and d!1716756 (not c!932421)) b!5354922))

(assert (=> d!1716756 m!6383968))

(assert (=> d!1716756 m!6384748))

(assert (=> b!5354921 m!6383966))

(declare-fun m!6384978 () Bool)

(assert (=> b!5354921 m!6384978))

(assert (=> b!5354922 m!6383968))

(assert (=> b!5354922 m!6384752))

(assert (=> b!5354922 m!6383966))

(assert (=> b!5354922 m!6384752))

(declare-fun m!6384980 () Bool)

(assert (=> b!5354922 m!6384980))

(assert (=> b!5354922 m!6383968))

(assert (=> b!5354922 m!6384756))

(assert (=> b!5354922 m!6384980))

(assert (=> b!5354922 m!6384756))

(declare-fun m!6384982 () Bool)

(assert (=> b!5354922 m!6384982))

(assert (=> b!5353556 d!1716756))

(declare-fun bs!1241123 () Bool)

(declare-fun d!1716758 () Bool)

(assert (= bs!1241123 (and d!1716758 b!5353362)))

(declare-fun lambda!275375 () Int)

(assert (=> bs!1241123 (= (= (head!11482 (t!374653 s!2326)) (h!67758 s!2326)) (= lambda!275375 lambda!275269))))

(declare-fun bs!1241124 () Bool)

(assert (= bs!1241124 (and d!1716758 d!1716630)))

(assert (=> bs!1241124 (= lambda!275375 lambda!275356)))

(declare-fun bs!1241125 () Bool)

(assert (= bs!1241125 (and d!1716758 d!1716746)))

(assert (=> bs!1241125 (= lambda!275375 lambda!275374)))

(assert (=> d!1716758 true))

(assert (=> d!1716758 (= (derivationStepZipper!1284 lt!2181618 (head!11482 (t!374653 s!2326))) (flatMap!772 lt!2181618 lambda!275375))))

(declare-fun bs!1241126 () Bool)

(assert (= bs!1241126 d!1716758))

(declare-fun m!6384984 () Bool)

(assert (=> bs!1241126 m!6384984))

(assert (=> b!5353556 d!1716758))

(assert (=> b!5353556 d!1716632))

(assert (=> b!5353556 d!1716634))

(declare-fun b!5354923 () Bool)

(declare-fun e!3323943 () (InoxSet Context!8858))

(declare-fun call!383045 () (InoxSet Context!8858))

(assert (=> b!5354923 (= e!3323943 call!383045)))

(declare-fun b!5354924 () Bool)

(declare-fun c!932426 () Bool)

(declare-fun e!3323941 () Bool)

(assert (=> b!5354924 (= c!932426 e!3323941)))

(declare-fun res!2271934 () Bool)

(assert (=> b!5354924 (=> (not res!2271934) (not e!3323941))))

(assert (=> b!5354924 (= res!2271934 ((_ is Concat!23890) (h!67759 (exprs!4929 lt!2181621))))))

(declare-fun e!3323942 () (InoxSet Context!8858))

(declare-fun e!3323940 () (InoxSet Context!8858))

(assert (=> b!5354924 (= e!3323942 e!3323940)))

(declare-fun bm!383037 () Bool)

(declare-fun call!383043 () (InoxSet Context!8858))

(assert (=> bm!383037 (= call!383045 call!383043)))

(declare-fun bm!383038 () Bool)

(declare-fun call!383047 () (InoxSet Context!8858))

(declare-fun c!932424 () Bool)

(declare-fun call!383044 () List!61435)

(declare-fun c!932425 () Bool)

(assert (=> bm!383038 (= call!383047 (derivationStepZipperDown!493 (ite c!932424 (regTwo!30603 (h!67759 (exprs!4929 lt!2181621))) (ite c!932426 (regTwo!30602 (h!67759 (exprs!4929 lt!2181621))) (ite c!932425 (regOne!30602 (h!67759 (exprs!4929 lt!2181621))) (reg!15374 (h!67759 (exprs!4929 lt!2181621)))))) (ite (or c!932424 c!932426) (Context!8859 (t!374654 (exprs!4929 lt!2181621))) (Context!8859 call!383044)) (h!67758 s!2326)))))

(declare-fun b!5354925 () Bool)

(declare-fun e!3323945 () (InoxSet Context!8858))

(assert (=> b!5354925 (= e!3323945 e!3323942)))

(assert (=> b!5354925 (= c!932424 ((_ is Union!15045) (h!67759 (exprs!4929 lt!2181621))))))

(declare-fun b!5354926 () Bool)

(declare-fun call!383046 () (InoxSet Context!8858))

(assert (=> b!5354926 (= e!3323940 ((_ map or) call!383046 call!383043))))

(declare-fun bm!383039 () Bool)

(declare-fun call!383042 () List!61435)

(assert (=> bm!383039 (= call!383044 call!383042)))

(declare-fun b!5354927 () Bool)

(declare-fun c!932422 () Bool)

(assert (=> b!5354927 (= c!932422 ((_ is Star!15045) (h!67759 (exprs!4929 lt!2181621))))))

(declare-fun e!3323944 () (InoxSet Context!8858))

(assert (=> b!5354927 (= e!3323943 e!3323944)))

(declare-fun bm!383040 () Bool)

(assert (=> bm!383040 (= call!383042 ($colon$colon!1432 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621)))) (ite (or c!932426 c!932425) (regTwo!30602 (h!67759 (exprs!4929 lt!2181621))) (h!67759 (exprs!4929 lt!2181621)))))))

(declare-fun b!5354928 () Bool)

(assert (=> b!5354928 (= e!3323944 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716760 () Bool)

(declare-fun c!932423 () Bool)

(assert (=> d!1716760 (= c!932423 (and ((_ is ElementMatch!15045) (h!67759 (exprs!4929 lt!2181621))) (= (c!932025 (h!67759 (exprs!4929 lt!2181621))) (h!67758 s!2326))))))

(assert (=> d!1716760 (= (derivationStepZipperDown!493 (h!67759 (exprs!4929 lt!2181621)) (Context!8859 (t!374654 (exprs!4929 lt!2181621))) (h!67758 s!2326)) e!3323945)))

(declare-fun bm!383041 () Bool)

(assert (=> bm!383041 (= call!383043 call!383047)))

(declare-fun bm!383042 () Bool)

(assert (=> bm!383042 (= call!383046 (derivationStepZipperDown!493 (ite c!932424 (regOne!30603 (h!67759 (exprs!4929 lt!2181621))) (regOne!30602 (h!67759 (exprs!4929 lt!2181621)))) (ite c!932424 (Context!8859 (t!374654 (exprs!4929 lt!2181621))) (Context!8859 call!383042)) (h!67758 s!2326)))))

(declare-fun b!5354929 () Bool)

(assert (=> b!5354929 (= e!3323941 (nullable!5214 (regOne!30602 (h!67759 (exprs!4929 lt!2181621)))))))

(declare-fun b!5354930 () Bool)

(assert (=> b!5354930 (= e!3323940 e!3323943)))

(assert (=> b!5354930 (= c!932425 ((_ is Concat!23890) (h!67759 (exprs!4929 lt!2181621))))))

(declare-fun b!5354931 () Bool)

(assert (=> b!5354931 (= e!3323942 ((_ map or) call!383046 call!383047))))

(declare-fun b!5354932 () Bool)

(assert (=> b!5354932 (= e!3323945 (store ((as const (Array Context!8858 Bool)) false) (Context!8859 (t!374654 (exprs!4929 lt!2181621))) true))))

(declare-fun b!5354933 () Bool)

(assert (=> b!5354933 (= e!3323944 call!383045)))

(assert (= (and d!1716760 c!932423) b!5354932))

(assert (= (and d!1716760 (not c!932423)) b!5354925))

(assert (= (and b!5354925 c!932424) b!5354931))

(assert (= (and b!5354925 (not c!932424)) b!5354924))

(assert (= (and b!5354924 res!2271934) b!5354929))

(assert (= (and b!5354924 c!932426) b!5354926))

(assert (= (and b!5354924 (not c!932426)) b!5354930))

(assert (= (and b!5354930 c!932425) b!5354923))

(assert (= (and b!5354930 (not c!932425)) b!5354927))

(assert (= (and b!5354927 c!932422) b!5354933))

(assert (= (and b!5354927 (not c!932422)) b!5354928))

(assert (= (or b!5354923 b!5354933) bm!383039))

(assert (= (or b!5354923 b!5354933) bm!383037))

(assert (= (or b!5354926 bm!383039) bm!383040))

(assert (= (or b!5354926 bm!383037) bm!383041))

(assert (= (or b!5354931 bm!383041) bm!383038))

(assert (= (or b!5354931 b!5354926) bm!383042))

(declare-fun m!6384986 () Bool)

(assert (=> b!5354929 m!6384986))

(declare-fun m!6384988 () Bool)

(assert (=> bm!383042 m!6384988))

(declare-fun m!6384990 () Bool)

(assert (=> bm!383038 m!6384990))

(declare-fun m!6384992 () Bool)

(assert (=> bm!383040 m!6384992))

(declare-fun m!6384994 () Bool)

(assert (=> b!5354932 m!6384994))

(assert (=> bm!382837 d!1716760))

(declare-fun d!1716762 () Bool)

(assert (=> d!1716762 true))

(assert (=> d!1716762 true))

(declare-fun res!2271937 () Bool)

(assert (=> d!1716762 (= (choose!40180 lambda!275267) res!2271937)))

(assert (=> d!1716378 d!1716762))

(declare-fun bs!1241127 () Bool)

(declare-fun b!5354936 () Bool)

(assert (= bs!1241127 (and b!5354936 b!5354029)))

(declare-fun lambda!275376 () Int)

(assert (=> bs!1241127 (= (and (= (reg!15374 (regOne!30603 r!7292)) (reg!15374 r!7292)) (= (regOne!30603 r!7292) r!7292)) (= lambda!275376 lambda!275324))))

(declare-fun bs!1241128 () Bool)

(assert (= bs!1241128 (and b!5354936 b!5353374)))

(assert (=> bs!1241128 (not (= lambda!275376 lambda!275268))))

(assert (=> bs!1241128 (not (= lambda!275376 lambda!275267))))

(declare-fun bs!1241129 () Bool)

(assert (= bs!1241129 (and b!5354936 d!1716384)))

(assert (=> bs!1241129 (not (= lambda!275376 lambda!275313))))

(declare-fun bs!1241130 () Bool)

(assert (= bs!1241130 (and b!5354936 d!1716716)))

(assert (=> bs!1241130 (not (= lambda!275376 lambda!275370))))

(declare-fun bs!1241131 () Bool)

(assert (= bs!1241131 (and b!5354936 b!5354737)))

(assert (=> bs!1241131 (= (and (= (reg!15374 (regOne!30603 r!7292)) (reg!15374 (regTwo!30603 r!7292))) (= (regOne!30603 r!7292) (regTwo!30603 r!7292))) (= lambda!275376 lambda!275362))))

(assert (=> bs!1241129 (not (= lambda!275376 lambda!275312))))

(declare-fun bs!1241132 () Bool)

(assert (= bs!1241132 (and b!5354936 b!5354738)))

(assert (=> bs!1241132 (not (= lambda!275376 lambda!275363))))

(assert (=> bs!1241130 (not (= lambda!275376 lambda!275371))))

(declare-fun bs!1241133 () Bool)

(assert (= bs!1241133 (and b!5354936 b!5354030)))

(assert (=> bs!1241133 (not (= lambda!275376 lambda!275325))))

(declare-fun bs!1241134 () Bool)

(assert (= bs!1241134 (and b!5354936 d!1716382)))

(assert (=> bs!1241134 (not (= lambda!275376 lambda!275307))))

(assert (=> b!5354936 true))

(assert (=> b!5354936 true))

(declare-fun bs!1241135 () Bool)

(declare-fun b!5354937 () Bool)

(assert (= bs!1241135 (and b!5354937 b!5354029)))

(declare-fun lambda!275377 () Int)

(assert (=> bs!1241135 (not (= lambda!275377 lambda!275324))))

(declare-fun bs!1241136 () Bool)

(assert (= bs!1241136 (and b!5354937 b!5353374)))

(assert (=> bs!1241136 (= (and (= (regOne!30602 (regOne!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regOne!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275377 lambda!275268))))

(assert (=> bs!1241136 (not (= lambda!275377 lambda!275267))))

(declare-fun bs!1241137 () Bool)

(assert (= bs!1241137 (and b!5354937 d!1716716)))

(assert (=> bs!1241137 (not (= lambda!275377 lambda!275370))))

(declare-fun bs!1241138 () Bool)

(assert (= bs!1241138 (and b!5354937 b!5354737)))

(assert (=> bs!1241138 (not (= lambda!275377 lambda!275362))))

(declare-fun bs!1241139 () Bool)

(assert (= bs!1241139 (and b!5354937 b!5354936)))

(assert (=> bs!1241139 (not (= lambda!275377 lambda!275376))))

(declare-fun bs!1241140 () Bool)

(assert (= bs!1241140 (and b!5354937 d!1716384)))

(assert (=> bs!1241140 (= (and (= (regOne!30602 (regOne!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regOne!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275377 lambda!275313))))

(assert (=> bs!1241140 (not (= lambda!275377 lambda!275312))))

(declare-fun bs!1241141 () Bool)

(assert (= bs!1241141 (and b!5354937 b!5354738)))

(assert (=> bs!1241141 (= (and (= (regOne!30602 (regOne!30603 r!7292)) (regOne!30602 (regTwo!30603 r!7292))) (= (regTwo!30602 (regOne!30603 r!7292)) (regTwo!30602 (regTwo!30603 r!7292)))) (= lambda!275377 lambda!275363))))

(assert (=> bs!1241137 (= (and (= (regOne!30602 (regOne!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regOne!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275377 lambda!275371))))

(declare-fun bs!1241142 () Bool)

(assert (= bs!1241142 (and b!5354937 b!5354030)))

(assert (=> bs!1241142 (= (and (= (regOne!30602 (regOne!30603 r!7292)) (regOne!30602 r!7292)) (= (regTwo!30602 (regOne!30603 r!7292)) (regTwo!30602 r!7292))) (= lambda!275377 lambda!275325))))

(declare-fun bs!1241143 () Bool)

(assert (= bs!1241143 (and b!5354937 d!1716382)))

(assert (=> bs!1241143 (not (= lambda!275377 lambda!275307))))

(assert (=> b!5354937 true))

(assert (=> b!5354937 true))

(declare-fun b!5354934 () Bool)

(declare-fun c!932429 () Bool)

(assert (=> b!5354934 (= c!932429 ((_ is ElementMatch!15045) (regOne!30603 r!7292)))))

(declare-fun e!3323946 () Bool)

(declare-fun e!3323947 () Bool)

(assert (=> b!5354934 (= e!3323946 e!3323947)))

(declare-fun b!5354935 () Bool)

(declare-fun e!3323951 () Bool)

(declare-fun e!3323950 () Bool)

(assert (=> b!5354935 (= e!3323951 e!3323950)))

(declare-fun c!932428 () Bool)

(assert (=> b!5354935 (= c!932428 ((_ is Star!15045) (regOne!30603 r!7292)))))

(declare-fun e!3323952 () Bool)

(declare-fun call!383049 () Bool)

(assert (=> b!5354936 (= e!3323952 call!383049)))

(assert (=> b!5354937 (= e!3323950 call!383049)))

(declare-fun b!5354938 () Bool)

(declare-fun e!3323949 () Bool)

(declare-fun call!383048 () Bool)

(assert (=> b!5354938 (= e!3323949 call!383048)))

(declare-fun b!5354939 () Bool)

(assert (=> b!5354939 (= e!3323949 e!3323946)))

(declare-fun res!2271938 () Bool)

(assert (=> b!5354939 (= res!2271938 (not ((_ is EmptyLang!15045) (regOne!30603 r!7292))))))

(assert (=> b!5354939 (=> (not res!2271938) (not e!3323946))))

(declare-fun b!5354940 () Bool)

(declare-fun c!932430 () Bool)

(assert (=> b!5354940 (= c!932430 ((_ is Union!15045) (regOne!30603 r!7292)))))

(assert (=> b!5354940 (= e!3323947 e!3323951)))

(declare-fun bm!383043 () Bool)

(assert (=> bm!383043 (= call!383048 (isEmpty!33291 s!2326))))

(declare-fun b!5354941 () Bool)

(declare-fun e!3323948 () Bool)

(assert (=> b!5354941 (= e!3323948 (matchRSpec!2148 (regTwo!30603 (regOne!30603 r!7292)) s!2326))))

(declare-fun b!5354942 () Bool)

(assert (=> b!5354942 (= e!3323951 e!3323948)))

(declare-fun res!2271940 () Bool)

(assert (=> b!5354942 (= res!2271940 (matchRSpec!2148 (regOne!30603 (regOne!30603 r!7292)) s!2326))))

(assert (=> b!5354942 (=> res!2271940 e!3323948)))

(declare-fun bm!383044 () Bool)

(assert (=> bm!383044 (= call!383049 (Exists!2226 (ite c!932428 lambda!275376 lambda!275377)))))

(declare-fun b!5354944 () Bool)

(declare-fun res!2271939 () Bool)

(assert (=> b!5354944 (=> res!2271939 e!3323952)))

(assert (=> b!5354944 (= res!2271939 call!383048)))

(assert (=> b!5354944 (= e!3323950 e!3323952)))

(declare-fun b!5354943 () Bool)

(assert (=> b!5354943 (= e!3323947 (= s!2326 (Cons!61310 (c!932025 (regOne!30603 r!7292)) Nil!61310)))))

(declare-fun d!1716764 () Bool)

(declare-fun c!932427 () Bool)

(assert (=> d!1716764 (= c!932427 ((_ is EmptyExpr!15045) (regOne!30603 r!7292)))))

(assert (=> d!1716764 (= (matchRSpec!2148 (regOne!30603 r!7292) s!2326) e!3323949)))

(assert (= (and d!1716764 c!932427) b!5354938))

(assert (= (and d!1716764 (not c!932427)) b!5354939))

(assert (= (and b!5354939 res!2271938) b!5354934))

(assert (= (and b!5354934 c!932429) b!5354943))

(assert (= (and b!5354934 (not c!932429)) b!5354940))

(assert (= (and b!5354940 c!932430) b!5354942))

(assert (= (and b!5354940 (not c!932430)) b!5354935))

(assert (= (and b!5354942 (not res!2271940)) b!5354941))

(assert (= (and b!5354935 c!932428) b!5354944))

(assert (= (and b!5354935 (not c!932428)) b!5354937))

(assert (= (and b!5354944 (not res!2271939)) b!5354936))

(assert (= (or b!5354936 b!5354937) bm!383044))

(assert (= (or b!5354938 b!5354944) bm!383043))

(assert (=> bm!383043 m!6384254))

(declare-fun m!6384996 () Bool)

(assert (=> b!5354941 m!6384996))

(declare-fun m!6384998 () Bool)

(assert (=> b!5354942 m!6384998))

(declare-fun m!6385000 () Bool)

(assert (=> bm!383044 m!6385000))

(assert (=> b!5354035 d!1716764))

(declare-fun b!5354945 () Bool)

(declare-fun e!3323956 () (InoxSet Context!8858))

(declare-fun call!383053 () (InoxSet Context!8858))

(assert (=> b!5354945 (= e!3323956 call!383053)))

(declare-fun b!5354946 () Bool)

(declare-fun c!932435 () Bool)

(declare-fun e!3323954 () Bool)

(assert (=> b!5354946 (= c!932435 e!3323954)))

(declare-fun res!2271941 () Bool)

(assert (=> b!5354946 (=> (not res!2271941) (not e!3323954))))

(assert (=> b!5354946 (= res!2271941 ((_ is Concat!23890) (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun e!3323955 () (InoxSet Context!8858))

(declare-fun e!3323953 () (InoxSet Context!8858))

(assert (=> b!5354946 (= e!3323955 e!3323953)))

(declare-fun bm!383045 () Bool)

(declare-fun call!383051 () (InoxSet Context!8858))

(assert (=> bm!383045 (= call!383053 call!383051)))

(declare-fun call!383055 () (InoxSet Context!8858))

(declare-fun bm!383046 () Bool)

(declare-fun c!932433 () Bool)

(declare-fun call!383052 () List!61435)

(declare-fun c!932434 () Bool)

(assert (=> bm!383046 (= call!383055 (derivationStepZipperDown!493 (ite c!932433 (regTwo!30603 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (ite c!932435 (regTwo!30602 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (ite c!932434 (regOne!30602 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (reg!15374 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))))) (ite (or c!932433 c!932435) (ite c!932171 lt!2181621 (Context!8859 call!382857)) (Context!8859 call!383052)) (h!67758 s!2326)))))

(declare-fun b!5354947 () Bool)

(declare-fun e!3323958 () (InoxSet Context!8858))

(assert (=> b!5354947 (= e!3323958 e!3323955)))

(assert (=> b!5354947 (= c!932433 ((_ is Union!15045) (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5354948 () Bool)

(declare-fun call!383054 () (InoxSet Context!8858))

(assert (=> b!5354948 (= e!3323953 ((_ map or) call!383054 call!383051))))

(declare-fun bm!383047 () Bool)

(declare-fun call!383050 () List!61435)

(assert (=> bm!383047 (= call!383052 call!383050)))

(declare-fun b!5354949 () Bool)

(declare-fun c!932431 () Bool)

(assert (=> b!5354949 (= c!932431 ((_ is Star!15045) (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun e!3323957 () (InoxSet Context!8858))

(assert (=> b!5354949 (= e!3323956 e!3323957)))

(declare-fun bm!383048 () Bool)

(assert (=> bm!383048 (= call!383050 ($colon$colon!1432 (exprs!4929 (ite c!932171 lt!2181621 (Context!8859 call!382857))) (ite (or c!932435 c!932434) (regTwo!30602 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))))))

(declare-fun b!5354950 () Bool)

(assert (=> b!5354950 (= e!3323957 ((as const (Array Context!8858 Bool)) false))))

(declare-fun c!932432 () Bool)

(declare-fun d!1716766 () Bool)

(assert (=> d!1716766 (= c!932432 (and ((_ is ElementMatch!15045) (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (= (c!932025 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (h!67758 s!2326))))))

(assert (=> d!1716766 (= (derivationStepZipperDown!493 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))) (ite c!932171 lt!2181621 (Context!8859 call!382857)) (h!67758 s!2326)) e!3323958)))

(declare-fun bm!383049 () Bool)

(assert (=> bm!383049 (= call!383051 call!383055)))

(declare-fun bm!383050 () Bool)

(assert (=> bm!383050 (= call!383054 (derivationStepZipperDown!493 (ite c!932433 (regOne!30603 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))) (regOne!30602 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))) (ite c!932433 (ite c!932171 lt!2181621 (Context!8859 call!382857)) (Context!8859 call!383050)) (h!67758 s!2326)))))

(declare-fun b!5354951 () Bool)

(assert (=> b!5354951 (= e!3323954 (nullable!5214 (regOne!30602 (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))))))

(declare-fun b!5354952 () Bool)

(assert (=> b!5354952 (= e!3323953 e!3323956)))

(assert (=> b!5354952 (= c!932434 ((_ is Concat!23890) (ite c!932171 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5354953 () Bool)

(assert (=> b!5354953 (= e!3323955 ((_ map or) call!383054 call!383055))))

(declare-fun b!5354954 () Bool)

(assert (=> b!5354954 (= e!3323958 (store ((as const (Array Context!8858 Bool)) false) (ite c!932171 lt!2181621 (Context!8859 call!382857)) true))))

(declare-fun b!5354955 () Bool)

(assert (=> b!5354955 (= e!3323957 call!383053)))

(assert (= (and d!1716766 c!932432) b!5354954))

(assert (= (and d!1716766 (not c!932432)) b!5354947))

(assert (= (and b!5354947 c!932433) b!5354953))

(assert (= (and b!5354947 (not c!932433)) b!5354946))

(assert (= (and b!5354946 res!2271941) b!5354951))

(assert (= (and b!5354946 c!932435) b!5354948))

(assert (= (and b!5354946 (not c!932435)) b!5354952))

(assert (= (and b!5354952 c!932434) b!5354945))

(assert (= (and b!5354952 (not c!932434)) b!5354949))

(assert (= (and b!5354949 c!932431) b!5354955))

(assert (= (and b!5354949 (not c!932431)) b!5354950))

(assert (= (or b!5354945 b!5354955) bm!383047))

(assert (= (or b!5354945 b!5354955) bm!383045))

(assert (= (or b!5354948 bm!383047) bm!383048))

(assert (= (or b!5354948 bm!383045) bm!383049))

(assert (= (or b!5354953 bm!383049) bm!383046))

(assert (= (or b!5354953 b!5354948) bm!383050))

(declare-fun m!6385002 () Bool)

(assert (=> b!5354951 m!6385002))

(declare-fun m!6385004 () Bool)

(assert (=> bm!383050 m!6385004))

(declare-fun m!6385006 () Bool)

(assert (=> bm!383046 m!6385006))

(declare-fun m!6385008 () Bool)

(assert (=> bm!383048 m!6385008))

(declare-fun m!6385010 () Bool)

(assert (=> b!5354954 m!6385010))

(assert (=> bm!382857 d!1716766))

(declare-fun d!1716768 () Bool)

(assert (=> d!1716768 (= (isConcat!440 lt!2181673) ((_ is Concat!23890) lt!2181673))))

(assert (=> b!5353636 d!1716768))

(declare-fun bs!1241144 () Bool)

(declare-fun d!1716770 () Bool)

(assert (= bs!1241144 (and d!1716770 d!1716308)))

(declare-fun lambda!275378 () Int)

(assert (=> bs!1241144 (= lambda!275378 lambda!275294)))

(declare-fun bs!1241145 () Bool)

(assert (= bs!1241145 (and d!1716770 d!1716398)))

(assert (=> bs!1241145 (= lambda!275378 lambda!275319)))

(declare-fun bs!1241146 () Bool)

(assert (= bs!1241146 (and d!1716770 d!1716646)))

(assert (=> bs!1241146 (= lambda!275378 lambda!275360)))

(declare-fun bs!1241147 () Bool)

(assert (= bs!1241147 (and d!1716770 d!1716396)))

(assert (=> bs!1241147 (= lambda!275378 lambda!275316)))

(declare-fun bs!1241148 () Bool)

(assert (= bs!1241148 (and d!1716770 d!1716352)))

(assert (=> bs!1241148 (= lambda!275378 lambda!275303)))

(declare-fun bs!1241149 () Bool)

(assert (= bs!1241149 (and d!1716770 d!1716374)))

(assert (=> bs!1241149 (= lambda!275378 lambda!275304)))

(declare-fun bs!1241150 () Bool)

(assert (= bs!1241150 (and d!1716770 d!1716700)))

(assert (=> bs!1241150 (= lambda!275378 lambda!275365)))

(declare-fun bs!1241151 () Bool)

(assert (= bs!1241151 (and d!1716770 d!1716742)))

(assert (=> bs!1241151 (= lambda!275378 lambda!275373)))

(declare-fun bs!1241152 () Bool)

(assert (= bs!1241152 (and d!1716770 d!1716692)))

(assert (=> bs!1241152 (= lambda!275378 lambda!275364)))

(declare-fun b!5354956 () Bool)

(declare-fun e!3323962 () Regex!15045)

(declare-fun e!3323960 () Regex!15045)

(assert (=> b!5354956 (= e!3323962 e!3323960)))

(declare-fun c!932438 () Bool)

(assert (=> b!5354956 (= c!932438 ((_ is Cons!61311) (t!374654 (unfocusZipperList!487 zl!343))))))

(declare-fun b!5354957 () Bool)

(assert (=> b!5354957 (= e!3323962 (h!67759 (t!374654 (unfocusZipperList!487 zl!343))))))

(declare-fun b!5354958 () Bool)

(declare-fun e!3323961 () Bool)

(declare-fun e!3323959 () Bool)

(assert (=> b!5354958 (= e!3323961 e!3323959)))

(declare-fun c!932437 () Bool)

(assert (=> b!5354958 (= c!932437 (isEmpty!33287 (t!374654 (unfocusZipperList!487 zl!343))))))

(declare-fun b!5354959 () Bool)

(assert (=> b!5354959 (= e!3323960 (Union!15045 (h!67759 (t!374654 (unfocusZipperList!487 zl!343))) (generalisedUnion!974 (t!374654 (t!374654 (unfocusZipperList!487 zl!343))))))))

(declare-fun b!5354961 () Bool)

(declare-fun e!3323963 () Bool)

(declare-fun lt!2181748 () Regex!15045)

(assert (=> b!5354961 (= e!3323963 (= lt!2181748 (head!11483 (t!374654 (unfocusZipperList!487 zl!343)))))))

(declare-fun b!5354962 () Bool)

(assert (=> b!5354962 (= e!3323963 (isUnion!357 lt!2181748))))

(declare-fun b!5354963 () Bool)

(declare-fun e!3323964 () Bool)

(assert (=> b!5354963 (= e!3323964 (isEmpty!33287 (t!374654 (t!374654 (unfocusZipperList!487 zl!343)))))))

(declare-fun b!5354964 () Bool)

(assert (=> b!5354964 (= e!3323960 EmptyLang!15045)))

(declare-fun b!5354965 () Bool)

(assert (=> b!5354965 (= e!3323959 e!3323963)))

(declare-fun c!932436 () Bool)

(assert (=> b!5354965 (= c!932436 (isEmpty!33287 (tail!10580 (t!374654 (unfocusZipperList!487 zl!343)))))))

(assert (=> d!1716770 e!3323961))

(declare-fun res!2271943 () Bool)

(assert (=> d!1716770 (=> (not res!2271943) (not e!3323961))))

(assert (=> d!1716770 (= res!2271943 (validRegex!6781 lt!2181748))))

(assert (=> d!1716770 (= lt!2181748 e!3323962)))

(declare-fun c!932439 () Bool)

(assert (=> d!1716770 (= c!932439 e!3323964)))

(declare-fun res!2271942 () Bool)

(assert (=> d!1716770 (=> (not res!2271942) (not e!3323964))))

(assert (=> d!1716770 (= res!2271942 ((_ is Cons!61311) (t!374654 (unfocusZipperList!487 zl!343))))))

(assert (=> d!1716770 (forall!14469 (t!374654 (unfocusZipperList!487 zl!343)) lambda!275378)))

(assert (=> d!1716770 (= (generalisedUnion!974 (t!374654 (unfocusZipperList!487 zl!343))) lt!2181748)))

(declare-fun b!5354960 () Bool)

(assert (=> b!5354960 (= e!3323959 (isEmptyLang!925 lt!2181748))))

(assert (= (and d!1716770 res!2271942) b!5354963))

(assert (= (and d!1716770 c!932439) b!5354957))

(assert (= (and d!1716770 (not c!932439)) b!5354956))

(assert (= (and b!5354956 c!932438) b!5354959))

(assert (= (and b!5354956 (not c!932438)) b!5354964))

(assert (= (and d!1716770 res!2271943) b!5354958))

(assert (= (and b!5354958 c!932437) b!5354960))

(assert (= (and b!5354958 (not c!932437)) b!5354965))

(assert (= (and b!5354965 c!932436) b!5354961))

(assert (= (and b!5354965 (not c!932436)) b!5354962))

(assert (=> b!5354958 m!6384236))

(declare-fun m!6385012 () Bool)

(assert (=> b!5354965 m!6385012))

(assert (=> b!5354965 m!6385012))

(declare-fun m!6385014 () Bool)

(assert (=> b!5354965 m!6385014))

(declare-fun m!6385016 () Bool)

(assert (=> b!5354963 m!6385016))

(declare-fun m!6385018 () Bool)

(assert (=> b!5354962 m!6385018))

(declare-fun m!6385020 () Bool)

(assert (=> b!5354960 m!6385020))

(declare-fun m!6385022 () Bool)

(assert (=> b!5354961 m!6385022))

(declare-fun m!6385024 () Bool)

(assert (=> b!5354959 m!6385024))

(declare-fun m!6385026 () Bool)

(assert (=> d!1716770 m!6385026))

(declare-fun m!6385028 () Bool)

(assert (=> d!1716770 m!6385028))

(assert (=> b!5353982 d!1716770))

(declare-fun d!1716772 () Bool)

(declare-fun c!932442 () Bool)

(assert (=> d!1716772 (= c!932442 ((_ is Nil!61312) lt!2181690))))

(declare-fun e!3323967 () (InoxSet Context!8858))

(assert (=> d!1716772 (= (content!10942 lt!2181690) e!3323967)))

(declare-fun b!5354970 () Bool)

(assert (=> b!5354970 (= e!3323967 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5354971 () Bool)

(assert (=> b!5354971 (= e!3323967 ((_ map or) (store ((as const (Array Context!8858 Bool)) false) (h!67760 lt!2181690) true) (content!10942 (t!374655 lt!2181690))))))

(assert (= (and d!1716772 c!932442) b!5354970))

(assert (= (and d!1716772 (not c!932442)) b!5354971))

(declare-fun m!6385030 () Bool)

(assert (=> b!5354971 m!6385030))

(declare-fun m!6385032 () Bool)

(assert (=> b!5354971 m!6385032))

(assert (=> b!5353897 d!1716772))

(declare-fun d!1716774 () Bool)

(assert (=> d!1716774 (= (isEmpty!33287 (tail!10580 (exprs!4929 (h!67760 zl!343)))) ((_ is Nil!61311) (tail!10580 (exprs!4929 (h!67760 zl!343)))))))

(assert (=> b!5353638 d!1716774))

(declare-fun d!1716776 () Bool)

(assert (=> d!1716776 (= (tail!10580 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343))))))

(assert (=> b!5353638 d!1716776))

(declare-fun d!1716778 () Bool)

(assert (=> d!1716778 (= (nullable!5214 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))) (nullableFct!1534 (h!67759 (exprs!4929 (Context!8859 (Cons!61311 (h!67759 (exprs!4929 (h!67760 zl!343))) (t!374654 (exprs!4929 (h!67760 zl!343)))))))))))

(declare-fun bs!1241153 () Bool)

(assert (= bs!1241153 d!1716778))

(declare-fun m!6385034 () Bool)

(assert (=> bs!1241153 m!6385034))

(assert (=> b!5353856 d!1716778))

(declare-fun b!5354972 () Bool)

(declare-fun e!3323971 () (InoxSet Context!8858))

(declare-fun call!383059 () (InoxSet Context!8858))

(assert (=> b!5354972 (= e!3323971 call!383059)))

(declare-fun b!5354973 () Bool)

(declare-fun c!932447 () Bool)

(declare-fun e!3323969 () Bool)

(assert (=> b!5354973 (= c!932447 e!3323969)))

(declare-fun res!2271944 () Bool)

(assert (=> b!5354973 (=> (not res!2271944) (not e!3323969))))

(assert (=> b!5354973 (= res!2271944 ((_ is Concat!23890) (h!67759 (exprs!4929 lt!2181632))))))

(declare-fun e!3323970 () (InoxSet Context!8858))

(declare-fun e!3323968 () (InoxSet Context!8858))

(assert (=> b!5354973 (= e!3323970 e!3323968)))

(declare-fun bm!383051 () Bool)

(declare-fun call!383057 () (InoxSet Context!8858))

(assert (=> bm!383051 (= call!383059 call!383057)))

(declare-fun c!932446 () Bool)

(declare-fun call!383061 () (InoxSet Context!8858))

(declare-fun bm!383052 () Bool)

(declare-fun c!932445 () Bool)

(declare-fun call!383058 () List!61435)

(assert (=> bm!383052 (= call!383061 (derivationStepZipperDown!493 (ite c!932445 (regTwo!30603 (h!67759 (exprs!4929 lt!2181632))) (ite c!932447 (regTwo!30602 (h!67759 (exprs!4929 lt!2181632))) (ite c!932446 (regOne!30602 (h!67759 (exprs!4929 lt!2181632))) (reg!15374 (h!67759 (exprs!4929 lt!2181632)))))) (ite (or c!932445 c!932447) (Context!8859 (t!374654 (exprs!4929 lt!2181632))) (Context!8859 call!383058)) (h!67758 s!2326)))))

(declare-fun b!5354974 () Bool)

(declare-fun e!3323973 () (InoxSet Context!8858))

(assert (=> b!5354974 (= e!3323973 e!3323970)))

(assert (=> b!5354974 (= c!932445 ((_ is Union!15045) (h!67759 (exprs!4929 lt!2181632))))))

(declare-fun b!5354975 () Bool)

(declare-fun call!383060 () (InoxSet Context!8858))

(assert (=> b!5354975 (= e!3323968 ((_ map or) call!383060 call!383057))))

(declare-fun bm!383053 () Bool)

(declare-fun call!383056 () List!61435)

(assert (=> bm!383053 (= call!383058 call!383056)))

(declare-fun b!5354976 () Bool)

(declare-fun c!932443 () Bool)

(assert (=> b!5354976 (= c!932443 ((_ is Star!15045) (h!67759 (exprs!4929 lt!2181632))))))

(declare-fun e!3323972 () (InoxSet Context!8858))

(assert (=> b!5354976 (= e!3323971 e!3323972)))

(declare-fun bm!383054 () Bool)

(assert (=> bm!383054 (= call!383056 ($colon$colon!1432 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181632)))) (ite (or c!932447 c!932446) (regTwo!30602 (h!67759 (exprs!4929 lt!2181632))) (h!67759 (exprs!4929 lt!2181632)))))))

(declare-fun b!5354977 () Bool)

(assert (=> b!5354977 (= e!3323972 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716780 () Bool)

(declare-fun c!932444 () Bool)

(assert (=> d!1716780 (= c!932444 (and ((_ is ElementMatch!15045) (h!67759 (exprs!4929 lt!2181632))) (= (c!932025 (h!67759 (exprs!4929 lt!2181632))) (h!67758 s!2326))))))

(assert (=> d!1716780 (= (derivationStepZipperDown!493 (h!67759 (exprs!4929 lt!2181632)) (Context!8859 (t!374654 (exprs!4929 lt!2181632))) (h!67758 s!2326)) e!3323973)))

(declare-fun bm!383055 () Bool)

(assert (=> bm!383055 (= call!383057 call!383061)))

(declare-fun bm!383056 () Bool)

(assert (=> bm!383056 (= call!383060 (derivationStepZipperDown!493 (ite c!932445 (regOne!30603 (h!67759 (exprs!4929 lt!2181632))) (regOne!30602 (h!67759 (exprs!4929 lt!2181632)))) (ite c!932445 (Context!8859 (t!374654 (exprs!4929 lt!2181632))) (Context!8859 call!383056)) (h!67758 s!2326)))))

(declare-fun b!5354978 () Bool)

(assert (=> b!5354978 (= e!3323969 (nullable!5214 (regOne!30602 (h!67759 (exprs!4929 lt!2181632)))))))

(declare-fun b!5354979 () Bool)

(assert (=> b!5354979 (= e!3323968 e!3323971)))

(assert (=> b!5354979 (= c!932446 ((_ is Concat!23890) (h!67759 (exprs!4929 lt!2181632))))))

(declare-fun b!5354980 () Bool)

(assert (=> b!5354980 (= e!3323970 ((_ map or) call!383060 call!383061))))

(declare-fun b!5354981 () Bool)

(assert (=> b!5354981 (= e!3323973 (store ((as const (Array Context!8858 Bool)) false) (Context!8859 (t!374654 (exprs!4929 lt!2181632))) true))))

(declare-fun b!5354982 () Bool)

(assert (=> b!5354982 (= e!3323972 call!383059)))

(assert (= (and d!1716780 c!932444) b!5354981))

(assert (= (and d!1716780 (not c!932444)) b!5354974))

(assert (= (and b!5354974 c!932445) b!5354980))

(assert (= (and b!5354974 (not c!932445)) b!5354973))

(assert (= (and b!5354973 res!2271944) b!5354978))

(assert (= (and b!5354973 c!932447) b!5354975))

(assert (= (and b!5354973 (not c!932447)) b!5354979))

(assert (= (and b!5354979 c!932446) b!5354972))

(assert (= (and b!5354979 (not c!932446)) b!5354976))

(assert (= (and b!5354976 c!932443) b!5354982))

(assert (= (and b!5354976 (not c!932443)) b!5354977))

(assert (= (or b!5354972 b!5354982) bm!383053))

(assert (= (or b!5354972 b!5354982) bm!383051))

(assert (= (or b!5354975 bm!383053) bm!383054))

(assert (= (or b!5354975 bm!383051) bm!383055))

(assert (= (or b!5354980 bm!383055) bm!383052))

(assert (= (or b!5354980 b!5354975) bm!383056))

(declare-fun m!6385036 () Bool)

(assert (=> b!5354978 m!6385036))

(declare-fun m!6385038 () Bool)

(assert (=> bm!383056 m!6385038))

(declare-fun m!6385040 () Bool)

(assert (=> bm!383052 m!6385040))

(declare-fun m!6385042 () Bool)

(assert (=> bm!383054 m!6385042))

(declare-fun m!6385044 () Bool)

(assert (=> b!5354981 m!6385044))

(assert (=> bm!382836 d!1716780))

(declare-fun d!1716782 () Bool)

(assert (=> d!1716782 (= (head!11483 (unfocusZipperList!487 zl!343)) (h!67759 (unfocusZipperList!487 zl!343)))))

(assert (=> b!5353984 d!1716782))

(declare-fun d!1716784 () Bool)

(declare-fun res!2271945 () Bool)

(declare-fun e!3323974 () Bool)

(assert (=> d!1716784 (=> res!2271945 e!3323974)))

(assert (=> d!1716784 (= res!2271945 ((_ is Nil!61311) (exprs!4929 setElem!34599)))))

(assert (=> d!1716784 (= (forall!14469 (exprs!4929 setElem!34599) lambda!275303) e!3323974)))

(declare-fun b!5354983 () Bool)

(declare-fun e!3323975 () Bool)

(assert (=> b!5354983 (= e!3323974 e!3323975)))

(declare-fun res!2271946 () Bool)

(assert (=> b!5354983 (=> (not res!2271946) (not e!3323975))))

(assert (=> b!5354983 (= res!2271946 (dynLambda!24235 lambda!275303 (h!67759 (exprs!4929 setElem!34599))))))

(declare-fun b!5354984 () Bool)

(assert (=> b!5354984 (= e!3323975 (forall!14469 (t!374654 (exprs!4929 setElem!34599)) lambda!275303))))

(assert (= (and d!1716784 (not res!2271945)) b!5354983))

(assert (= (and b!5354983 res!2271946) b!5354984))

(declare-fun b_lambda!205433 () Bool)

(assert (=> (not b_lambda!205433) (not b!5354983)))

(declare-fun m!6385046 () Bool)

(assert (=> b!5354983 m!6385046))

(declare-fun m!6385048 () Bool)

(assert (=> b!5354984 m!6385048))

(assert (=> d!1716352 d!1716784))

(declare-fun d!1716786 () Bool)

(assert (=> d!1716786 (= (isEmpty!33287 (t!374654 (unfocusZipperList!487 zl!343))) ((_ is Nil!61311) (t!374654 (unfocusZipperList!487 zl!343))))))

(assert (=> b!5353986 d!1716786))

(declare-fun b!5354985 () Bool)

(declare-fun e!3323976 () Bool)

(declare-fun call!383062 () Bool)

(assert (=> b!5354985 (= e!3323976 call!383062)))

(declare-fun b!5354986 () Bool)

(declare-fun e!3323982 () Bool)

(declare-fun e!3323981 () Bool)

(assert (=> b!5354986 (= e!3323982 e!3323981)))

(declare-fun res!2271951 () Bool)

(assert (=> b!5354986 (=> (not res!2271951) (not e!3323981))))

(declare-fun call!383063 () Bool)

(assert (=> b!5354986 (= res!2271951 call!383063)))

(declare-fun b!5354987 () Bool)

(assert (=> b!5354987 (= e!3323981 call!383062)))

(declare-fun c!932449 () Bool)

(declare-fun call!383064 () Bool)

(declare-fun c!932448 () Bool)

(declare-fun bm!383057 () Bool)

(assert (=> bm!383057 (= call!383064 (validRegex!6781 (ite c!932448 (reg!15374 lt!2181708) (ite c!932449 (regTwo!30603 lt!2181708) (regTwo!30602 lt!2181708)))))))

(declare-fun b!5354988 () Bool)

(declare-fun e!3323977 () Bool)

(declare-fun e!3323980 () Bool)

(assert (=> b!5354988 (= e!3323977 e!3323980)))

(assert (=> b!5354988 (= c!932449 ((_ is Union!15045) lt!2181708))))

(declare-fun b!5354989 () Bool)

(declare-fun e!3323979 () Bool)

(assert (=> b!5354989 (= e!3323979 call!383064)))

(declare-fun b!5354990 () Bool)

(assert (=> b!5354990 (= e!3323977 e!3323979)))

(declare-fun res!2271948 () Bool)

(assert (=> b!5354990 (= res!2271948 (not (nullable!5214 (reg!15374 lt!2181708))))))

(assert (=> b!5354990 (=> (not res!2271948) (not e!3323979))))

(declare-fun b!5354991 () Bool)

(declare-fun e!3323978 () Bool)

(assert (=> b!5354991 (= e!3323978 e!3323977)))

(assert (=> b!5354991 (= c!932448 ((_ is Star!15045) lt!2181708))))

(declare-fun d!1716788 () Bool)

(declare-fun res!2271949 () Bool)

(assert (=> d!1716788 (=> res!2271949 e!3323978)))

(assert (=> d!1716788 (= res!2271949 ((_ is ElementMatch!15045) lt!2181708))))

(assert (=> d!1716788 (= (validRegex!6781 lt!2181708) e!3323978)))

(declare-fun b!5354992 () Bool)

(declare-fun res!2271947 () Bool)

(assert (=> b!5354992 (=> (not res!2271947) (not e!3323976))))

(assert (=> b!5354992 (= res!2271947 call!383063)))

(assert (=> b!5354992 (= e!3323980 e!3323976)))

(declare-fun b!5354993 () Bool)

(declare-fun res!2271950 () Bool)

(assert (=> b!5354993 (=> res!2271950 e!3323982)))

(assert (=> b!5354993 (= res!2271950 (not ((_ is Concat!23890) lt!2181708)))))

(assert (=> b!5354993 (= e!3323980 e!3323982)))

(declare-fun bm!383058 () Bool)

(assert (=> bm!383058 (= call!383063 (validRegex!6781 (ite c!932449 (regOne!30603 lt!2181708) (regOne!30602 lt!2181708))))))

(declare-fun bm!383059 () Bool)

(assert (=> bm!383059 (= call!383062 call!383064)))

(assert (= (and d!1716788 (not res!2271949)) b!5354991))

(assert (= (and b!5354991 c!932448) b!5354990))

(assert (= (and b!5354991 (not c!932448)) b!5354988))

(assert (= (and b!5354990 res!2271948) b!5354989))

(assert (= (and b!5354988 c!932449) b!5354992))

(assert (= (and b!5354988 (not c!932449)) b!5354993))

(assert (= (and b!5354992 res!2271947) b!5354985))

(assert (= (and b!5354993 (not res!2271950)) b!5354986))

(assert (= (and b!5354986 res!2271951) b!5354987))

(assert (= (or b!5354985 b!5354987) bm!383059))

(assert (= (or b!5354992 b!5354986) bm!383058))

(assert (= (or b!5354989 bm!383059) bm!383057))

(declare-fun m!6385050 () Bool)

(assert (=> bm!383057 m!6385050))

(declare-fun m!6385052 () Bool)

(assert (=> b!5354990 m!6385052))

(declare-fun m!6385054 () Bool)

(assert (=> bm!383058 m!6385054))

(assert (=> d!1716390 d!1716788))

(assert (=> d!1716390 d!1716396))

(assert (=> d!1716390 d!1716398))

(declare-fun bm!383060 () Bool)

(declare-fun call!383066 () Bool)

(declare-fun c!932450 () Bool)

(assert (=> bm!383060 (= call!383066 (nullable!5214 (ite c!932450 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5354994 () Bool)

(declare-fun e!3323986 () Bool)

(declare-fun e!3323983 () Bool)

(assert (=> b!5354994 (= e!3323986 e!3323983)))

(assert (=> b!5354994 (= c!932450 ((_ is Union!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5354995 () Bool)

(declare-fun e!3323985 () Bool)

(declare-fun call!383065 () Bool)

(assert (=> b!5354995 (= e!3323985 call!383065)))

(declare-fun b!5354997 () Bool)

(assert (=> b!5354997 (= e!3323983 e!3323985)))

(declare-fun res!2271956 () Bool)

(assert (=> b!5354997 (= res!2271956 call!383066)))

(assert (=> b!5354997 (=> (not res!2271956) (not e!3323985))))

(declare-fun b!5354998 () Bool)

(declare-fun e!3323984 () Bool)

(assert (=> b!5354998 (= e!3323984 e!3323986)))

(declare-fun res!2271952 () Bool)

(assert (=> b!5354998 (=> res!2271952 e!3323986)))

(assert (=> b!5354998 (= res!2271952 ((_ is Star!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun bm!383061 () Bool)

(assert (=> bm!383061 (= call!383065 (nullable!5214 (ite c!932450 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5354999 () Bool)

(declare-fun e!3323987 () Bool)

(assert (=> b!5354999 (= e!3323987 e!3323984)))

(declare-fun res!2271953 () Bool)

(assert (=> b!5354999 (=> (not res!2271953) (not e!3323984))))

(assert (=> b!5354999 (= res!2271953 (and (not ((_ is EmptyLang!15045) (h!67759 (exprs!4929 (h!67760 zl!343))))) (not ((_ is ElementMatch!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))))

(declare-fun b!5355000 () Bool)

(declare-fun e!3323988 () Bool)

(assert (=> b!5355000 (= e!3323988 call!383065)))

(declare-fun d!1716790 () Bool)

(declare-fun res!2271954 () Bool)

(assert (=> d!1716790 (=> res!2271954 e!3323987)))

(assert (=> d!1716790 (= res!2271954 ((_ is EmptyExpr!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(assert (=> d!1716790 (= (nullableFct!1534 (h!67759 (exprs!4929 (h!67760 zl!343)))) e!3323987)))

(declare-fun b!5354996 () Bool)

(assert (=> b!5354996 (= e!3323983 e!3323988)))

(declare-fun res!2271955 () Bool)

(assert (=> b!5354996 (= res!2271955 call!383066)))

(assert (=> b!5354996 (=> res!2271955 e!3323988)))

(assert (= (and d!1716790 (not res!2271954)) b!5354999))

(assert (= (and b!5354999 res!2271953) b!5354998))

(assert (= (and b!5354998 (not res!2271952)) b!5354994))

(assert (= (and b!5354994 c!932450) b!5354996))

(assert (= (and b!5354994 (not c!932450)) b!5354997))

(assert (= (and b!5354996 (not res!2271955)) b!5355000))

(assert (= (and b!5354997 res!2271956) b!5354995))

(assert (= (or b!5355000 b!5354995) bm!383061))

(assert (= (or b!5354996 b!5354997) bm!383060))

(declare-fun m!6385056 () Bool)

(assert (=> bm!383060 m!6385056))

(declare-fun m!6385058 () Bool)

(assert (=> bm!383061 m!6385058))

(assert (=> d!1716360 d!1716790))

(declare-fun d!1716792 () Bool)

(assert (=> d!1716792 (= (isEmpty!33287 (tail!10580 (unfocusZipperList!487 zl!343))) ((_ is Nil!61311) (tail!10580 (unfocusZipperList!487 zl!343))))))

(assert (=> b!5353988 d!1716792))

(declare-fun d!1716794 () Bool)

(assert (=> d!1716794 (= (tail!10580 (unfocusZipperList!487 zl!343)) (t!374654 (unfocusZipperList!487 zl!343)))))

(assert (=> b!5353988 d!1716794))

(declare-fun d!1716796 () Bool)

(assert (=> d!1716796 true))

(assert (=> d!1716796 true))

(declare-fun res!2271957 () Bool)

(assert (=> d!1716796 (= (choose!40180 lambda!275268) res!2271957)))

(assert (=> d!1716380 d!1716796))

(declare-fun d!1716798 () Bool)

(declare-fun res!2271962 () Bool)

(declare-fun e!3323993 () Bool)

(assert (=> d!1716798 (=> res!2271962 e!3323993)))

(assert (=> d!1716798 (= res!2271962 ((_ is Nil!61312) lt!2181690))))

(assert (=> d!1716798 (= (noDuplicate!1336 lt!2181690) e!3323993)))

(declare-fun b!5355005 () Bool)

(declare-fun e!3323994 () Bool)

(assert (=> b!5355005 (= e!3323993 e!3323994)))

(declare-fun res!2271963 () Bool)

(assert (=> b!5355005 (=> (not res!2271963) (not e!3323994))))

(declare-fun contains!19718 (List!61436 Context!8858) Bool)

(assert (=> b!5355005 (= res!2271963 (not (contains!19718 (t!374655 lt!2181690) (h!67760 lt!2181690))))))

(declare-fun b!5355006 () Bool)

(assert (=> b!5355006 (= e!3323994 (noDuplicate!1336 (t!374655 lt!2181690)))))

(assert (= (and d!1716798 (not res!2271962)) b!5355005))

(assert (= (and b!5355005 res!2271963) b!5355006))

(declare-fun m!6385060 () Bool)

(assert (=> b!5355005 m!6385060))

(declare-fun m!6385062 () Bool)

(assert (=> b!5355006 m!6385062))

(assert (=> d!1716372 d!1716798))

(declare-fun d!1716800 () Bool)

(declare-fun e!3324003 () Bool)

(assert (=> d!1716800 e!3324003))

(declare-fun res!2271968 () Bool)

(assert (=> d!1716800 (=> (not res!2271968) (not e!3324003))))

(declare-fun res!2271969 () List!61436)

(assert (=> d!1716800 (= res!2271968 (noDuplicate!1336 res!2271969))))

(declare-fun e!3324001 () Bool)

(assert (=> d!1716800 e!3324001))

(assert (=> d!1716800 (= (choose!40179 z!1189) res!2271969)))

(declare-fun b!5355014 () Bool)

(declare-fun e!3324002 () Bool)

(declare-fun tp!1487308 () Bool)

(assert (=> b!5355014 (= e!3324002 tp!1487308)))

(declare-fun tp!1487309 () Bool)

(declare-fun b!5355013 () Bool)

(assert (=> b!5355013 (= e!3324001 (and (inv!80859 (h!67760 res!2271969)) e!3324002 tp!1487309))))

(declare-fun b!5355015 () Bool)

(assert (=> b!5355015 (= e!3324003 (= (content!10942 res!2271969) z!1189))))

(assert (= b!5355013 b!5355014))

(assert (= (and d!1716800 ((_ is Cons!61312) res!2271969)) b!5355013))

(assert (= (and d!1716800 res!2271968) b!5355015))

(declare-fun m!6385064 () Bool)

(assert (=> d!1716800 m!6385064))

(declare-fun m!6385066 () Bool)

(assert (=> b!5355013 m!6385066))

(declare-fun m!6385068 () Bool)

(assert (=> b!5355015 m!6385068))

(assert (=> d!1716372 d!1716800))

(declare-fun b!5355016 () Bool)

(declare-fun e!3324004 () Bool)

(declare-fun call!383067 () Bool)

(assert (=> b!5355016 (= e!3324004 call!383067)))

(declare-fun b!5355017 () Bool)

(declare-fun e!3324010 () Bool)

(declare-fun e!3324009 () Bool)

(assert (=> b!5355017 (= e!3324010 e!3324009)))

(declare-fun res!2271974 () Bool)

(assert (=> b!5355017 (=> (not res!2271974) (not e!3324009))))

(declare-fun call!383068 () Bool)

(assert (=> b!5355017 (= res!2271974 call!383068)))

(declare-fun b!5355018 () Bool)

(assert (=> b!5355018 (= e!3324009 call!383067)))

(declare-fun c!932451 () Bool)

(declare-fun call!383069 () Bool)

(declare-fun bm!383062 () Bool)

(declare-fun c!932452 () Bool)

(assert (=> bm!383062 (= call!383069 (validRegex!6781 (ite c!932451 (reg!15374 lt!2181673) (ite c!932452 (regTwo!30603 lt!2181673) (regTwo!30602 lt!2181673)))))))

(declare-fun b!5355019 () Bool)

(declare-fun e!3324005 () Bool)

(declare-fun e!3324008 () Bool)

(assert (=> b!5355019 (= e!3324005 e!3324008)))

(assert (=> b!5355019 (= c!932452 ((_ is Union!15045) lt!2181673))))

(declare-fun b!5355020 () Bool)

(declare-fun e!3324007 () Bool)

(assert (=> b!5355020 (= e!3324007 call!383069)))

(declare-fun b!5355021 () Bool)

(assert (=> b!5355021 (= e!3324005 e!3324007)))

(declare-fun res!2271971 () Bool)

(assert (=> b!5355021 (= res!2271971 (not (nullable!5214 (reg!15374 lt!2181673))))))

(assert (=> b!5355021 (=> (not res!2271971) (not e!3324007))))

(declare-fun b!5355022 () Bool)

(declare-fun e!3324006 () Bool)

(assert (=> b!5355022 (= e!3324006 e!3324005)))

(assert (=> b!5355022 (= c!932451 ((_ is Star!15045) lt!2181673))))

(declare-fun d!1716802 () Bool)

(declare-fun res!2271972 () Bool)

(assert (=> d!1716802 (=> res!2271972 e!3324006)))

(assert (=> d!1716802 (= res!2271972 ((_ is ElementMatch!15045) lt!2181673))))

(assert (=> d!1716802 (= (validRegex!6781 lt!2181673) e!3324006)))

(declare-fun b!5355023 () Bool)

(declare-fun res!2271970 () Bool)

(assert (=> b!5355023 (=> (not res!2271970) (not e!3324004))))

(assert (=> b!5355023 (= res!2271970 call!383068)))

(assert (=> b!5355023 (= e!3324008 e!3324004)))

(declare-fun b!5355024 () Bool)

(declare-fun res!2271973 () Bool)

(assert (=> b!5355024 (=> res!2271973 e!3324010)))

(assert (=> b!5355024 (= res!2271973 (not ((_ is Concat!23890) lt!2181673)))))

(assert (=> b!5355024 (= e!3324008 e!3324010)))

(declare-fun bm!383063 () Bool)

(assert (=> bm!383063 (= call!383068 (validRegex!6781 (ite c!932452 (regOne!30603 lt!2181673) (regOne!30602 lt!2181673))))))

(declare-fun bm!383064 () Bool)

(assert (=> bm!383064 (= call!383067 call!383069)))

(assert (= (and d!1716802 (not res!2271972)) b!5355022))

(assert (= (and b!5355022 c!932451) b!5355021))

(assert (= (and b!5355022 (not c!932451)) b!5355019))

(assert (= (and b!5355021 res!2271971) b!5355020))

(assert (= (and b!5355019 c!932452) b!5355023))

(assert (= (and b!5355019 (not c!932452)) b!5355024))

(assert (= (and b!5355023 res!2271970) b!5355016))

(assert (= (and b!5355024 (not res!2271973)) b!5355017))

(assert (= (and b!5355017 res!2271974) b!5355018))

(assert (= (or b!5355016 b!5355018) bm!383064))

(assert (= (or b!5355023 b!5355017) bm!383063))

(assert (= (or b!5355020 bm!383064) bm!383062))

(declare-fun m!6385070 () Bool)

(assert (=> bm!383062 m!6385070))

(declare-fun m!6385072 () Bool)

(assert (=> b!5355021 m!6385072))

(declare-fun m!6385074 () Bool)

(assert (=> bm!383063 m!6385074))

(assert (=> d!1716308 d!1716802))

(declare-fun d!1716804 () Bool)

(declare-fun res!2271975 () Bool)

(declare-fun e!3324011 () Bool)

(assert (=> d!1716804 (=> res!2271975 e!3324011)))

(assert (=> d!1716804 (= res!2271975 ((_ is Nil!61311) (exprs!4929 (h!67760 zl!343))))))

(assert (=> d!1716804 (= (forall!14469 (exprs!4929 (h!67760 zl!343)) lambda!275294) e!3324011)))

(declare-fun b!5355025 () Bool)

(declare-fun e!3324012 () Bool)

(assert (=> b!5355025 (= e!3324011 e!3324012)))

(declare-fun res!2271976 () Bool)

(assert (=> b!5355025 (=> (not res!2271976) (not e!3324012))))

(assert (=> b!5355025 (= res!2271976 (dynLambda!24235 lambda!275294 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5355026 () Bool)

(assert (=> b!5355026 (= e!3324012 (forall!14469 (t!374654 (exprs!4929 (h!67760 zl!343))) lambda!275294))))

(assert (= (and d!1716804 (not res!2271975)) b!5355025))

(assert (= (and b!5355025 res!2271976) b!5355026))

(declare-fun b_lambda!205435 () Bool)

(assert (=> (not b_lambda!205435) (not b!5355025)))

(declare-fun m!6385076 () Bool)

(assert (=> b!5355025 m!6385076))

(declare-fun m!6385078 () Bool)

(assert (=> b!5355026 m!6385078))

(assert (=> d!1716308 d!1716804))

(assert (=> b!5353916 d!1716638))

(declare-fun b!5355027 () Bool)

(declare-fun e!3324016 () (InoxSet Context!8858))

(declare-fun call!383073 () (InoxSet Context!8858))

(assert (=> b!5355027 (= e!3324016 call!383073)))

(declare-fun b!5355028 () Bool)

(declare-fun c!932457 () Bool)

(declare-fun e!3324014 () Bool)

(assert (=> b!5355028 (= c!932457 e!3324014)))

(declare-fun res!2271977 () Bool)

(assert (=> b!5355028 (=> (not res!2271977) (not e!3324014))))

(assert (=> b!5355028 (= res!2271977 ((_ is Concat!23890) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun e!3324015 () (InoxSet Context!8858))

(declare-fun e!3324013 () (InoxSet Context!8858))

(assert (=> b!5355028 (= e!3324015 e!3324013)))

(declare-fun bm!383065 () Bool)

(declare-fun call!383071 () (InoxSet Context!8858))

(assert (=> bm!383065 (= call!383073 call!383071)))

(declare-fun bm!383066 () Bool)

(declare-fun c!932455 () Bool)

(declare-fun call!383072 () List!61435)

(declare-fun c!932456 () Bool)

(declare-fun call!383075 () (InoxSet Context!8858))

(assert (=> bm!383066 (= call!383075 (derivationStepZipperDown!493 (ite c!932455 (regTwo!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932457 (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (ite c!932456 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (reg!15374 (h!67759 (exprs!4929 (h!67760 zl!343))))))) (ite (or c!932455 c!932457) (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) (Context!8859 call!383072)) (h!67758 s!2326)))))

(declare-fun b!5355029 () Bool)

(declare-fun e!3324018 () (InoxSet Context!8858))

(assert (=> b!5355029 (= e!3324018 e!3324015)))

(assert (=> b!5355029 (= c!932455 ((_ is Union!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5355030 () Bool)

(declare-fun call!383074 () (InoxSet Context!8858))

(assert (=> b!5355030 (= e!3324013 ((_ map or) call!383074 call!383071))))

(declare-fun bm!383067 () Bool)

(declare-fun call!383070 () List!61435)

(assert (=> bm!383067 (= call!383072 call!383070)))

(declare-fun b!5355031 () Bool)

(declare-fun c!932453 () Bool)

(assert (=> b!5355031 (= c!932453 ((_ is Star!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun e!3324017 () (InoxSet Context!8858))

(assert (=> b!5355031 (= e!3324016 e!3324017)))

(declare-fun bm!383068 () Bool)

(assert (=> bm!383068 (= call!383070 ($colon$colon!1432 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343))))) (ite (or c!932457 c!932456) (regTwo!30602 (h!67759 (exprs!4929 (h!67760 zl!343)))) (h!67759 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5355032 () Bool)

(assert (=> b!5355032 (= e!3324017 ((as const (Array Context!8858 Bool)) false))))

(declare-fun d!1716806 () Bool)

(declare-fun c!932454 () Bool)

(assert (=> d!1716806 (= c!932454 (and ((_ is ElementMatch!15045) (h!67759 (exprs!4929 (h!67760 zl!343)))) (= (c!932025 (h!67759 (exprs!4929 (h!67760 zl!343)))) (h!67758 s!2326))))))

(assert (=> d!1716806 (= (derivationStepZipperDown!493 (h!67759 (exprs!4929 (h!67760 zl!343))) (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) (h!67758 s!2326)) e!3324018)))

(declare-fun bm!383069 () Bool)

(assert (=> bm!383069 (= call!383071 call!383075)))

(declare-fun bm!383070 () Bool)

(assert (=> bm!383070 (= call!383074 (derivationStepZipperDown!493 (ite c!932455 (regOne!30603 (h!67759 (exprs!4929 (h!67760 zl!343)))) (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))) (ite c!932455 (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) (Context!8859 call!383070)) (h!67758 s!2326)))))

(declare-fun b!5355033 () Bool)

(assert (=> b!5355033 (= e!3324014 (nullable!5214 (regOne!30602 (h!67759 (exprs!4929 (h!67760 zl!343))))))))

(declare-fun b!5355034 () Bool)

(assert (=> b!5355034 (= e!3324013 e!3324016)))

(assert (=> b!5355034 (= c!932456 ((_ is Concat!23890) (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5355035 () Bool)

(assert (=> b!5355035 (= e!3324015 ((_ map or) call!383074 call!383075))))

(declare-fun b!5355036 () Bool)

(assert (=> b!5355036 (= e!3324018 (store ((as const (Array Context!8858 Bool)) false) (Context!8859 (t!374654 (exprs!4929 (h!67760 zl!343)))) true))))

(declare-fun b!5355037 () Bool)

(assert (=> b!5355037 (= e!3324017 call!383073)))

(assert (= (and d!1716806 c!932454) b!5355036))

(assert (= (and d!1716806 (not c!932454)) b!5355029))

(assert (= (and b!5355029 c!932455) b!5355035))

(assert (= (and b!5355029 (not c!932455)) b!5355028))

(assert (= (and b!5355028 res!2271977) b!5355033))

(assert (= (and b!5355028 c!932457) b!5355030))

(assert (= (and b!5355028 (not c!932457)) b!5355034))

(assert (= (and b!5355034 c!932456) b!5355027))

(assert (= (and b!5355034 (not c!932456)) b!5355031))

(assert (= (and b!5355031 c!932453) b!5355037))

(assert (= (and b!5355031 (not c!932453)) b!5355032))

(assert (= (or b!5355027 b!5355037) bm!383067))

(assert (= (or b!5355027 b!5355037) bm!383065))

(assert (= (or b!5355030 bm!383067) bm!383068))

(assert (= (or b!5355030 bm!383065) bm!383069))

(assert (= (or b!5355035 bm!383069) bm!383066))

(assert (= (or b!5355035 b!5355030) bm!383070))

(assert (=> b!5355033 m!6384142))

(declare-fun m!6385080 () Bool)

(assert (=> bm!383070 m!6385080))

(declare-fun m!6385082 () Bool)

(assert (=> bm!383066 m!6385082))

(declare-fun m!6385084 () Bool)

(assert (=> bm!383068 m!6385084))

(declare-fun m!6385086 () Bool)

(assert (=> b!5355036 m!6385086))

(assert (=> bm!382839 d!1716806))

(declare-fun d!1716808 () Bool)

(declare-fun res!2271978 () Bool)

(declare-fun e!3324019 () Bool)

(assert (=> d!1716808 (=> res!2271978 e!3324019)))

(assert (=> d!1716808 (= res!2271978 ((_ is Nil!61311) (exprs!4929 (h!67760 zl!343))))))

(assert (=> d!1716808 (= (forall!14469 (exprs!4929 (h!67760 zl!343)) lambda!275304) e!3324019)))

(declare-fun b!5355038 () Bool)

(declare-fun e!3324020 () Bool)

(assert (=> b!5355038 (= e!3324019 e!3324020)))

(declare-fun res!2271979 () Bool)

(assert (=> b!5355038 (=> (not res!2271979) (not e!3324020))))

(assert (=> b!5355038 (= res!2271979 (dynLambda!24235 lambda!275304 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun b!5355039 () Bool)

(assert (=> b!5355039 (= e!3324020 (forall!14469 (t!374654 (exprs!4929 (h!67760 zl!343))) lambda!275304))))

(assert (= (and d!1716808 (not res!2271978)) b!5355038))

(assert (= (and b!5355038 res!2271979) b!5355039))

(declare-fun b_lambda!205437 () Bool)

(assert (=> (not b_lambda!205437) (not b!5355038)))

(declare-fun m!6385088 () Bool)

(assert (=> b!5355038 m!6385088))

(declare-fun m!6385090 () Bool)

(assert (=> b!5355039 m!6385090))

(assert (=> d!1716374 d!1716808))

(assert (=> b!5354066 d!1716730))

(assert (=> b!5354066 d!1716732))

(declare-fun b!5355040 () Bool)

(declare-fun res!2271980 () Bool)

(declare-fun e!3324027 () Bool)

(assert (=> b!5355040 (=> res!2271980 e!3324027)))

(assert (=> b!5355040 (= res!2271980 (not (isEmpty!33291 (tail!10579 (tail!10579 s!2326)))))))

(declare-fun b!5355041 () Bool)

(declare-fun e!3324026 () Bool)

(assert (=> b!5355041 (= e!3324026 (= (head!11482 (tail!10579 s!2326)) (c!932025 (derivativeStep!4203 r!7292 (head!11482 s!2326)))))))

(declare-fun b!5355042 () Bool)

(declare-fun e!3324022 () Bool)

(assert (=> b!5355042 (= e!3324022 (nullable!5214 (derivativeStep!4203 r!7292 (head!11482 s!2326))))))

(declare-fun b!5355043 () Bool)

(declare-fun res!2271985 () Bool)

(declare-fun e!3324025 () Bool)

(assert (=> b!5355043 (=> res!2271985 e!3324025)))

(assert (=> b!5355043 (= res!2271985 e!3324026)))

(declare-fun res!2271982 () Bool)

(assert (=> b!5355043 (=> (not res!2271982) (not e!3324026))))

(declare-fun lt!2181749 () Bool)

(assert (=> b!5355043 (= res!2271982 lt!2181749)))

(declare-fun b!5355044 () Bool)

(declare-fun e!3324023 () Bool)

(declare-fun e!3324024 () Bool)

(assert (=> b!5355044 (= e!3324023 e!3324024)))

(declare-fun c!932458 () Bool)

(assert (=> b!5355044 (= c!932458 ((_ is EmptyLang!15045) (derivativeStep!4203 r!7292 (head!11482 s!2326))))))

(declare-fun b!5355045 () Bool)

(assert (=> b!5355045 (= e!3324024 (not lt!2181749))))

(declare-fun b!5355046 () Bool)

(declare-fun res!2271984 () Bool)

(assert (=> b!5355046 (=> res!2271984 e!3324025)))

(assert (=> b!5355046 (= res!2271984 (not ((_ is ElementMatch!15045) (derivativeStep!4203 r!7292 (head!11482 s!2326)))))))

(assert (=> b!5355046 (= e!3324024 e!3324025)))

(declare-fun b!5355047 () Bool)

(declare-fun res!2271987 () Bool)

(assert (=> b!5355047 (=> (not res!2271987) (not e!3324026))))

(assert (=> b!5355047 (= res!2271987 (isEmpty!33291 (tail!10579 (tail!10579 s!2326))))))

(declare-fun b!5355048 () Bool)

(declare-fun e!3324021 () Bool)

(assert (=> b!5355048 (= e!3324021 e!3324027)))

(declare-fun res!2271983 () Bool)

(assert (=> b!5355048 (=> res!2271983 e!3324027)))

(declare-fun call!383076 () Bool)

(assert (=> b!5355048 (= res!2271983 call!383076)))

(declare-fun b!5355049 () Bool)

(assert (=> b!5355049 (= e!3324027 (not (= (head!11482 (tail!10579 s!2326)) (c!932025 (derivativeStep!4203 r!7292 (head!11482 s!2326))))))))

(declare-fun d!1716810 () Bool)

(assert (=> d!1716810 e!3324023))

(declare-fun c!932460 () Bool)

(assert (=> d!1716810 (= c!932460 ((_ is EmptyExpr!15045) (derivativeStep!4203 r!7292 (head!11482 s!2326))))))

(assert (=> d!1716810 (= lt!2181749 e!3324022)))

(declare-fun c!932459 () Bool)

(assert (=> d!1716810 (= c!932459 (isEmpty!33291 (tail!10579 s!2326)))))

(assert (=> d!1716810 (validRegex!6781 (derivativeStep!4203 r!7292 (head!11482 s!2326)))))

(assert (=> d!1716810 (= (matchR!7230 (derivativeStep!4203 r!7292 (head!11482 s!2326)) (tail!10579 s!2326)) lt!2181749)))

(declare-fun b!5355050 () Bool)

(declare-fun res!2271986 () Bool)

(assert (=> b!5355050 (=> (not res!2271986) (not e!3324026))))

(assert (=> b!5355050 (= res!2271986 (not call!383076))))

(declare-fun bm!383071 () Bool)

(assert (=> bm!383071 (= call!383076 (isEmpty!33291 (tail!10579 s!2326)))))

(declare-fun b!5355051 () Bool)

(assert (=> b!5355051 (= e!3324022 (matchR!7230 (derivativeStep!4203 (derivativeStep!4203 r!7292 (head!11482 s!2326)) (head!11482 (tail!10579 s!2326))) (tail!10579 (tail!10579 s!2326))))))

(declare-fun b!5355052 () Bool)

(assert (=> b!5355052 (= e!3324025 e!3324021)))

(declare-fun res!2271981 () Bool)

(assert (=> b!5355052 (=> (not res!2271981) (not e!3324021))))

(assert (=> b!5355052 (= res!2271981 (not lt!2181749))))

(declare-fun b!5355053 () Bool)

(assert (=> b!5355053 (= e!3324023 (= lt!2181749 call!383076))))

(assert (= (and d!1716810 c!932459) b!5355042))

(assert (= (and d!1716810 (not c!932459)) b!5355051))

(assert (= (and d!1716810 c!932460) b!5355053))

(assert (= (and d!1716810 (not c!932460)) b!5355044))

(assert (= (and b!5355044 c!932458) b!5355045))

(assert (= (and b!5355044 (not c!932458)) b!5355046))

(assert (= (and b!5355046 (not res!2271984)) b!5355043))

(assert (= (and b!5355043 res!2271982) b!5355050))

(assert (= (and b!5355050 res!2271986) b!5355047))

(assert (= (and b!5355047 res!2271987) b!5355041))

(assert (= (and b!5355043 (not res!2271985)) b!5355052))

(assert (= (and b!5355052 res!2271981) b!5355048))

(assert (= (and b!5355048 (not res!2271983)) b!5355040))

(assert (= (and b!5355040 (not res!2271980)) b!5355049))

(assert (= (or b!5355053 b!5355048 b!5355050) bm!383071))

(assert (=> b!5355049 m!6384266))

(declare-fun m!6385092 () Bool)

(assert (=> b!5355049 m!6385092))

(assert (=> bm!383071 m!6384266))

(assert (=> bm!383071 m!6384272))

(assert (=> b!5355051 m!6384266))

(assert (=> b!5355051 m!6385092))

(assert (=> b!5355051 m!6384264))

(assert (=> b!5355051 m!6385092))

(declare-fun m!6385094 () Bool)

(assert (=> b!5355051 m!6385094))

(assert (=> b!5355051 m!6384266))

(declare-fun m!6385096 () Bool)

(assert (=> b!5355051 m!6385096))

(assert (=> b!5355051 m!6385094))

(assert (=> b!5355051 m!6385096))

(declare-fun m!6385098 () Bool)

(assert (=> b!5355051 m!6385098))

(assert (=> b!5355042 m!6384264))

(declare-fun m!6385100 () Bool)

(assert (=> b!5355042 m!6385100))

(assert (=> b!5355041 m!6384266))

(assert (=> b!5355041 m!6385092))

(assert (=> d!1716810 m!6384266))

(assert (=> d!1716810 m!6384272))

(assert (=> d!1716810 m!6384264))

(declare-fun m!6385102 () Bool)

(assert (=> d!1716810 m!6385102))

(assert (=> b!5355040 m!6384266))

(assert (=> b!5355040 m!6385096))

(assert (=> b!5355040 m!6385096))

(declare-fun m!6385104 () Bool)

(assert (=> b!5355040 m!6385104))

(assert (=> b!5355047 m!6384266))

(assert (=> b!5355047 m!6385096))

(assert (=> b!5355047 m!6385096))

(assert (=> b!5355047 m!6385104))

(assert (=> b!5354077 d!1716810))

(declare-fun b!5355074 () Bool)

(declare-fun c!932473 () Bool)

(assert (=> b!5355074 (= c!932473 (nullable!5214 (regOne!30602 r!7292)))))

(declare-fun e!3324039 () Regex!15045)

(declare-fun e!3324038 () Regex!15045)

(assert (=> b!5355074 (= e!3324039 e!3324038)))

(declare-fun b!5355075 () Bool)

(declare-fun call!383087 () Regex!15045)

(assert (=> b!5355075 (= e!3324038 (Union!15045 (Concat!23890 call!383087 (regTwo!30602 r!7292)) EmptyLang!15045))))

(declare-fun b!5355076 () Bool)

(declare-fun call!383085 () Regex!15045)

(assert (=> b!5355076 (= e!3324039 (Concat!23890 call!383085 r!7292))))

(declare-fun bm!383080 () Bool)

(declare-fun call!383088 () Regex!15045)

(assert (=> bm!383080 (= call!383085 call!383088)))

(declare-fun b!5355077 () Bool)

(declare-fun e!3324041 () Regex!15045)

(assert (=> b!5355077 (= e!3324041 e!3324039)))

(declare-fun c!932472 () Bool)

(assert (=> b!5355077 (= c!932472 ((_ is Star!15045) r!7292))))

(declare-fun d!1716812 () Bool)

(declare-fun lt!2181752 () Regex!15045)

(assert (=> d!1716812 (validRegex!6781 lt!2181752)))

(declare-fun e!3324042 () Regex!15045)

(assert (=> d!1716812 (= lt!2181752 e!3324042)))

(declare-fun c!932475 () Bool)

(assert (=> d!1716812 (= c!932475 (or ((_ is EmptyExpr!15045) r!7292) ((_ is EmptyLang!15045) r!7292)))))

(assert (=> d!1716812 (validRegex!6781 r!7292)))

(assert (=> d!1716812 (= (derivativeStep!4203 r!7292 (head!11482 s!2326)) lt!2181752)))

(declare-fun b!5355078 () Bool)

(declare-fun c!932474 () Bool)

(assert (=> b!5355078 (= c!932474 ((_ is Union!15045) r!7292))))

(declare-fun e!3324040 () Regex!15045)

(assert (=> b!5355078 (= e!3324040 e!3324041)))

(declare-fun bm!383081 () Bool)

(assert (=> bm!383081 (= call!383088 (derivativeStep!4203 (ite c!932474 (regTwo!30603 r!7292) (ite c!932472 (reg!15374 r!7292) (ite c!932473 (regTwo!30602 r!7292) (regOne!30602 r!7292)))) (head!11482 s!2326)))))

(declare-fun b!5355079 () Bool)

(assert (=> b!5355079 (= e!3324042 e!3324040)))

(declare-fun c!932471 () Bool)

(assert (=> b!5355079 (= c!932471 ((_ is ElementMatch!15045) r!7292))))

(declare-fun b!5355080 () Bool)

(declare-fun call!383086 () Regex!15045)

(assert (=> b!5355080 (= e!3324038 (Union!15045 (Concat!23890 call!383086 (regTwo!30602 r!7292)) call!383087))))

(declare-fun b!5355081 () Bool)

(assert (=> b!5355081 (= e!3324041 (Union!15045 call!383086 call!383088))))

(declare-fun b!5355082 () Bool)

(assert (=> b!5355082 (= e!3324040 (ite (= (head!11482 s!2326) (c!932025 r!7292)) EmptyExpr!15045 EmptyLang!15045))))

(declare-fun bm!383082 () Bool)

(assert (=> bm!383082 (= call!383086 (derivativeStep!4203 (ite c!932474 (regOne!30603 r!7292) (regOne!30602 r!7292)) (head!11482 s!2326)))))

(declare-fun bm!383083 () Bool)

(assert (=> bm!383083 (= call!383087 call!383085)))

(declare-fun b!5355083 () Bool)

(assert (=> b!5355083 (= e!3324042 EmptyLang!15045)))

(assert (= (and d!1716812 c!932475) b!5355083))

(assert (= (and d!1716812 (not c!932475)) b!5355079))

(assert (= (and b!5355079 c!932471) b!5355082))

(assert (= (and b!5355079 (not c!932471)) b!5355078))

(assert (= (and b!5355078 c!932474) b!5355081))

(assert (= (and b!5355078 (not c!932474)) b!5355077))

(assert (= (and b!5355077 c!932472) b!5355076))

(assert (= (and b!5355077 (not c!932472)) b!5355074))

(assert (= (and b!5355074 c!932473) b!5355080))

(assert (= (and b!5355074 (not c!932473)) b!5355075))

(assert (= (or b!5355080 b!5355075) bm!383083))

(assert (= (or b!5355076 bm!383083) bm!383080))

(assert (= (or b!5355081 bm!383080) bm!383081))

(assert (= (or b!5355081 b!5355080) bm!383082))

(assert (=> b!5355074 m!6384774))

(declare-fun m!6385106 () Bool)

(assert (=> d!1716812 m!6385106))

(assert (=> d!1716812 m!6383832))

(assert (=> bm!383081 m!6384262))

(declare-fun m!6385108 () Bool)

(assert (=> bm!383081 m!6385108))

(assert (=> bm!383082 m!6384262))

(declare-fun m!6385110 () Bool)

(assert (=> bm!383082 m!6385110))

(assert (=> b!5354077 d!1716812))

(assert (=> b!5354077 d!1716698))

(assert (=> b!5354077 d!1716732))

(declare-fun b!5355095 () Bool)

(declare-fun e!3324047 () Bool)

(declare-fun lt!2181755 () List!61434)

(assert (=> b!5355095 (= e!3324047 (or (not (= (_2!35547 (get!21090 lt!2181698)) Nil!61310)) (= lt!2181755 (_1!35547 (get!21090 lt!2181698)))))))

(declare-fun b!5355092 () Bool)

(declare-fun e!3324048 () List!61434)

(assert (=> b!5355092 (= e!3324048 (_2!35547 (get!21090 lt!2181698)))))

(declare-fun d!1716814 () Bool)

(assert (=> d!1716814 e!3324047))

(declare-fun res!2271992 () Bool)

(assert (=> d!1716814 (=> (not res!2271992) (not e!3324047))))

(declare-fun content!10944 (List!61434) (InoxSet C!30360))

(assert (=> d!1716814 (= res!2271992 (= (content!10944 lt!2181755) ((_ map or) (content!10944 (_1!35547 (get!21090 lt!2181698))) (content!10944 (_2!35547 (get!21090 lt!2181698))))))))

(assert (=> d!1716814 (= lt!2181755 e!3324048)))

(declare-fun c!932478 () Bool)

(assert (=> d!1716814 (= c!932478 ((_ is Nil!61310) (_1!35547 (get!21090 lt!2181698))))))

(assert (=> d!1716814 (= (++!13362 (_1!35547 (get!21090 lt!2181698)) (_2!35547 (get!21090 lt!2181698))) lt!2181755)))

(declare-fun b!5355093 () Bool)

(assert (=> b!5355093 (= e!3324048 (Cons!61310 (h!67758 (_1!35547 (get!21090 lt!2181698))) (++!13362 (t!374653 (_1!35547 (get!21090 lt!2181698))) (_2!35547 (get!21090 lt!2181698)))))))

(declare-fun b!5355094 () Bool)

(declare-fun res!2271993 () Bool)

(assert (=> b!5355094 (=> (not res!2271993) (not e!3324047))))

(declare-fun size!39777 (List!61434) Int)

(assert (=> b!5355094 (= res!2271993 (= (size!39777 lt!2181755) (+ (size!39777 (_1!35547 (get!21090 lt!2181698))) (size!39777 (_2!35547 (get!21090 lt!2181698))))))))

(assert (= (and d!1716814 c!932478) b!5355092))

(assert (= (and d!1716814 (not c!932478)) b!5355093))

(assert (= (and d!1716814 res!2271992) b!5355094))

(assert (= (and b!5355094 res!2271993) b!5355095))

(declare-fun m!6385112 () Bool)

(assert (=> d!1716814 m!6385112))

(declare-fun m!6385114 () Bool)

(assert (=> d!1716814 m!6385114))

(declare-fun m!6385116 () Bool)

(assert (=> d!1716814 m!6385116))

(declare-fun m!6385118 () Bool)

(assert (=> b!5355093 m!6385118))

(declare-fun m!6385120 () Bool)

(assert (=> b!5355094 m!6385120))

(declare-fun m!6385122 () Bool)

(assert (=> b!5355094 m!6385122))

(declare-fun m!6385124 () Bool)

(assert (=> b!5355094 m!6385124))

(assert (=> b!5353920 d!1716814))

(assert (=> b!5353920 d!1716720))

(declare-fun d!1716816 () Bool)

(assert (=> d!1716816 (= (nullable!5214 r!7292) (nullableFct!1534 r!7292))))

(declare-fun bs!1241154 () Bool)

(assert (= bs!1241154 d!1716816))

(declare-fun m!6385126 () Bool)

(assert (=> bs!1241154 m!6385126))

(assert (=> b!5354068 d!1716816))

(assert (=> d!1716306 d!1716702))

(declare-fun d!1716818 () Bool)

(assert (=> d!1716818 (= (Exists!2226 lambda!275307) (choose!40180 lambda!275307))))

(declare-fun bs!1241155 () Bool)

(assert (= bs!1241155 d!1716818))

(declare-fun m!6385128 () Bool)

(assert (=> bs!1241155 m!6385128))

(assert (=> d!1716382 d!1716818))

(assert (=> d!1716382 d!1716376))

(assert (=> d!1716382 d!1716642))

(assert (=> d!1716382 d!1716386))

(declare-fun bs!1241156 () Bool)

(declare-fun d!1716820 () Bool)

(assert (= bs!1241156 (and d!1716820 b!5354029)))

(declare-fun lambda!275381 () Int)

(assert (=> bs!1241156 (not (= lambda!275381 lambda!275324))))

(declare-fun bs!1241157 () Bool)

(assert (= bs!1241157 (and d!1716820 b!5353374)))

(assert (=> bs!1241157 (not (= lambda!275381 lambda!275268))))

(assert (=> bs!1241157 (= lambda!275381 lambda!275267)))

(declare-fun bs!1241158 () Bool)

(assert (= bs!1241158 (and d!1716820 d!1716716)))

(assert (=> bs!1241158 (= lambda!275381 lambda!275370)))

(declare-fun bs!1241159 () Bool)

(assert (= bs!1241159 (and d!1716820 b!5354937)))

(assert (=> bs!1241159 (not (= lambda!275381 lambda!275377))))

(declare-fun bs!1241160 () Bool)

(assert (= bs!1241160 (and d!1716820 b!5354737)))

(assert (=> bs!1241160 (not (= lambda!275381 lambda!275362))))

(declare-fun bs!1241161 () Bool)

(assert (= bs!1241161 (and d!1716820 b!5354936)))

(assert (=> bs!1241161 (not (= lambda!275381 lambda!275376))))

(declare-fun bs!1241162 () Bool)

(assert (= bs!1241162 (and d!1716820 d!1716384)))

(assert (=> bs!1241162 (not (= lambda!275381 lambda!275313))))

(assert (=> bs!1241162 (= lambda!275381 lambda!275312)))

(declare-fun bs!1241163 () Bool)

(assert (= bs!1241163 (and d!1716820 b!5354738)))

(assert (=> bs!1241163 (not (= lambda!275381 lambda!275363))))

(assert (=> bs!1241158 (not (= lambda!275381 lambda!275371))))

(declare-fun bs!1241164 () Bool)

(assert (= bs!1241164 (and d!1716820 b!5354030)))

(assert (=> bs!1241164 (not (= lambda!275381 lambda!275325))))

(declare-fun bs!1241165 () Bool)

(assert (= bs!1241165 (and d!1716820 d!1716382)))

(assert (=> bs!1241165 (= lambda!275381 lambda!275307)))

(assert (=> d!1716820 true))

(assert (=> d!1716820 true))

(assert (=> d!1716820 true))

(assert (=> d!1716820 (= (isDefined!11859 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) Nil!61310 s!2326 s!2326)) (Exists!2226 lambda!275381))))

(assert (=> d!1716820 true))

(declare-fun _$89!1548 () Unit!153698)

(assert (=> d!1716820 (= (choose!40181 (regOne!30602 r!7292) (regTwo!30602 r!7292) s!2326) _$89!1548)))

(declare-fun bs!1241166 () Bool)

(assert (= bs!1241166 d!1716820))

(assert (=> bs!1241166 m!6383796))

(assert (=> bs!1241166 m!6383796))

(assert (=> bs!1241166 m!6383798))

(declare-fun m!6385130 () Bool)

(assert (=> bs!1241166 m!6385130))

(assert (=> d!1716382 d!1716820))

(declare-fun b!5355100 () Bool)

(declare-fun res!2271998 () Bool)

(declare-fun e!3324057 () Bool)

(assert (=> b!5355100 (=> res!2271998 e!3324057)))

(assert (=> b!5355100 (= res!2271998 (not (isEmpty!33291 (tail!10579 (_1!35547 (get!21090 lt!2181698))))))))

(declare-fun b!5355101 () Bool)

(declare-fun e!3324056 () Bool)

(assert (=> b!5355101 (= e!3324056 (= (head!11482 (_1!35547 (get!21090 lt!2181698))) (c!932025 (regOne!30602 r!7292))))))

(declare-fun b!5355102 () Bool)

(declare-fun e!3324052 () Bool)

(assert (=> b!5355102 (= e!3324052 (nullable!5214 (regOne!30602 r!7292)))))

(declare-fun b!5355103 () Bool)

(declare-fun res!2272003 () Bool)

(declare-fun e!3324055 () Bool)

(assert (=> b!5355103 (=> res!2272003 e!3324055)))

(assert (=> b!5355103 (= res!2272003 e!3324056)))

(declare-fun res!2272000 () Bool)

(assert (=> b!5355103 (=> (not res!2272000) (not e!3324056))))

(declare-fun lt!2181756 () Bool)

(assert (=> b!5355103 (= res!2272000 lt!2181756)))

(declare-fun b!5355104 () Bool)

(declare-fun e!3324053 () Bool)

(declare-fun e!3324054 () Bool)

(assert (=> b!5355104 (= e!3324053 e!3324054)))

(declare-fun c!932479 () Bool)

(assert (=> b!5355104 (= c!932479 ((_ is EmptyLang!15045) (regOne!30602 r!7292)))))

(declare-fun b!5355105 () Bool)

(assert (=> b!5355105 (= e!3324054 (not lt!2181756))))

(declare-fun b!5355106 () Bool)

(declare-fun res!2272002 () Bool)

(assert (=> b!5355106 (=> res!2272002 e!3324055)))

(assert (=> b!5355106 (= res!2272002 (not ((_ is ElementMatch!15045) (regOne!30602 r!7292))))))

(assert (=> b!5355106 (= e!3324054 e!3324055)))

(declare-fun b!5355107 () Bool)

(declare-fun res!2272005 () Bool)

(assert (=> b!5355107 (=> (not res!2272005) (not e!3324056))))

(assert (=> b!5355107 (= res!2272005 (isEmpty!33291 (tail!10579 (_1!35547 (get!21090 lt!2181698)))))))

(declare-fun b!5355108 () Bool)

(declare-fun e!3324051 () Bool)

(assert (=> b!5355108 (= e!3324051 e!3324057)))

(declare-fun res!2272001 () Bool)

(assert (=> b!5355108 (=> res!2272001 e!3324057)))

(declare-fun call!383089 () Bool)

(assert (=> b!5355108 (= res!2272001 call!383089)))

(declare-fun b!5355109 () Bool)

(assert (=> b!5355109 (= e!3324057 (not (= (head!11482 (_1!35547 (get!21090 lt!2181698))) (c!932025 (regOne!30602 r!7292)))))))

(declare-fun d!1716822 () Bool)

(assert (=> d!1716822 e!3324053))

(declare-fun c!932481 () Bool)

(assert (=> d!1716822 (= c!932481 ((_ is EmptyExpr!15045) (regOne!30602 r!7292)))))

(assert (=> d!1716822 (= lt!2181756 e!3324052)))

(declare-fun c!932480 () Bool)

(assert (=> d!1716822 (= c!932480 (isEmpty!33291 (_1!35547 (get!21090 lt!2181698))))))

(assert (=> d!1716822 (validRegex!6781 (regOne!30602 r!7292))))

(assert (=> d!1716822 (= (matchR!7230 (regOne!30602 r!7292) (_1!35547 (get!21090 lt!2181698))) lt!2181756)))

(declare-fun b!5355110 () Bool)

(declare-fun res!2272004 () Bool)

(assert (=> b!5355110 (=> (not res!2272004) (not e!3324056))))

(assert (=> b!5355110 (= res!2272004 (not call!383089))))

(declare-fun bm!383084 () Bool)

(assert (=> bm!383084 (= call!383089 (isEmpty!33291 (_1!35547 (get!21090 lt!2181698))))))

(declare-fun b!5355111 () Bool)

(assert (=> b!5355111 (= e!3324052 (matchR!7230 (derivativeStep!4203 (regOne!30602 r!7292) (head!11482 (_1!35547 (get!21090 lt!2181698)))) (tail!10579 (_1!35547 (get!21090 lt!2181698)))))))

(declare-fun b!5355112 () Bool)

(assert (=> b!5355112 (= e!3324055 e!3324051)))

(declare-fun res!2271999 () Bool)

(assert (=> b!5355112 (=> (not res!2271999) (not e!3324051))))

(assert (=> b!5355112 (= res!2271999 (not lt!2181756))))

(declare-fun b!5355113 () Bool)

(assert (=> b!5355113 (= e!3324053 (= lt!2181756 call!383089))))

(assert (= (and d!1716822 c!932480) b!5355102))

(assert (= (and d!1716822 (not c!932480)) b!5355111))

(assert (= (and d!1716822 c!932481) b!5355113))

(assert (= (and d!1716822 (not c!932481)) b!5355104))

(assert (= (and b!5355104 c!932479) b!5355105))

(assert (= (and b!5355104 (not c!932479)) b!5355106))

(assert (= (and b!5355106 (not res!2272002)) b!5355103))

(assert (= (and b!5355103 res!2272000) b!5355110))

(assert (= (and b!5355110 res!2272004) b!5355107))

(assert (= (and b!5355107 res!2272005) b!5355101))

(assert (= (and b!5355103 (not res!2272003)) b!5355112))

(assert (= (and b!5355112 res!2271999) b!5355108))

(assert (= (and b!5355108 (not res!2272001)) b!5355100))

(assert (= (and b!5355100 (not res!2271998)) b!5355109))

(assert (= (or b!5355113 b!5355108 b!5355110) bm!383084))

(declare-fun m!6385132 () Bool)

(assert (=> b!5355109 m!6385132))

(declare-fun m!6385134 () Bool)

(assert (=> bm!383084 m!6385134))

(assert (=> b!5355111 m!6385132))

(assert (=> b!5355111 m!6385132))

(declare-fun m!6385136 () Bool)

(assert (=> b!5355111 m!6385136))

(declare-fun m!6385138 () Bool)

(assert (=> b!5355111 m!6385138))

(assert (=> b!5355111 m!6385136))

(assert (=> b!5355111 m!6385138))

(declare-fun m!6385140 () Bool)

(assert (=> b!5355111 m!6385140))

(assert (=> b!5355102 m!6384774))

(assert (=> b!5355101 m!6385132))

(assert (=> d!1716822 m!6385134))

(assert (=> d!1716822 m!6384174))

(assert (=> b!5355100 m!6385138))

(assert (=> b!5355100 m!6385138))

(declare-fun m!6385142 () Bool)

(assert (=> b!5355100 m!6385142))

(assert (=> b!5355107 m!6385138))

(assert (=> b!5355107 m!6385138))

(assert (=> b!5355107 m!6385142))

(assert (=> b!5353922 d!1716822))

(assert (=> b!5353922 d!1716720))

(assert (=> bs!1240929 d!1716366))

(declare-fun d!1716824 () Bool)

(declare-fun c!932483 () Bool)

(declare-fun e!3324060 () Bool)

(assert (=> d!1716824 (= c!932483 e!3324060)))

(declare-fun res!2272006 () Bool)

(assert (=> d!1716824 (=> (not res!2272006) (not e!3324060))))

(assert (=> d!1716824 (= res!2272006 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621))))))))

(declare-fun e!3324058 () (InoxSet Context!8858))

(assert (=> d!1716824 (= (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 lt!2181621))) (h!67758 s!2326)) e!3324058)))

(declare-fun call!383090 () (InoxSet Context!8858))

(declare-fun b!5355114 () Bool)

(assert (=> b!5355114 (= e!3324058 ((_ map or) call!383090 (derivationStepZipperUp!417 (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621)))))) (h!67758 s!2326))))))

(declare-fun b!5355115 () Bool)

(declare-fun e!3324059 () (InoxSet Context!8858))

(assert (=> b!5355115 (= e!3324058 e!3324059)))

(declare-fun c!932482 () Bool)

(assert (=> b!5355115 (= c!932482 ((_ is Cons!61311) (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621))))))))

(declare-fun b!5355116 () Bool)

(assert (=> b!5355116 (= e!3324059 call!383090)))

(declare-fun b!5355117 () Bool)

(assert (=> b!5355117 (= e!3324059 ((as const (Array Context!8858 Bool)) false))))

(declare-fun b!5355118 () Bool)

(assert (=> b!5355118 (= e!3324060 (nullable!5214 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621)))))))))

(declare-fun bm!383085 () Bool)

(assert (=> bm!383085 (= call!383090 (derivationStepZipperDown!493 (h!67759 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621))))) (Context!8859 (t!374654 (exprs!4929 (Context!8859 (t!374654 (exprs!4929 lt!2181621)))))) (h!67758 s!2326)))))

(assert (= (and d!1716824 res!2272006) b!5355118))

(assert (= (and d!1716824 c!932483) b!5355114))

(assert (= (and d!1716824 (not c!932483)) b!5355115))

(assert (= (and b!5355115 c!932482) b!5355116))

(assert (= (and b!5355115 (not c!932482)) b!5355117))

(assert (= (or b!5355114 b!5355116) bm!383085))

(declare-fun m!6385144 () Bool)

(assert (=> b!5355114 m!6385144))

(declare-fun m!6385146 () Bool)

(assert (=> b!5355118 m!6385146))

(declare-fun m!6385148 () Bool)

(assert (=> bm!383085 m!6385148))

(assert (=> b!5353847 d!1716824))

(declare-fun b!5355122 () Bool)

(declare-fun e!3324061 () Bool)

(declare-fun lt!2181757 () List!61434)

(assert (=> b!5355122 (= e!3324061 (or (not (= (t!374653 s!2326) Nil!61310)) (= lt!2181757 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)))))))

(declare-fun b!5355119 () Bool)

(declare-fun e!3324062 () List!61434)

(assert (=> b!5355119 (= e!3324062 (t!374653 s!2326))))

(declare-fun d!1716826 () Bool)

(assert (=> d!1716826 e!3324061))

(declare-fun res!2272007 () Bool)

(assert (=> d!1716826 (=> (not res!2272007) (not e!3324061))))

(assert (=> d!1716826 (= res!2272007 (= (content!10944 lt!2181757) ((_ map or) (content!10944 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310))) (content!10944 (t!374653 s!2326)))))))

(assert (=> d!1716826 (= lt!2181757 e!3324062)))

(declare-fun c!932484 () Bool)

(assert (=> d!1716826 (= c!932484 ((_ is Nil!61310) (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310))))))

(assert (=> d!1716826 (= (++!13362 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (t!374653 s!2326)) lt!2181757)))

(declare-fun b!5355120 () Bool)

(assert (=> b!5355120 (= e!3324062 (Cons!61310 (h!67758 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310))) (++!13362 (t!374653 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310))) (t!374653 s!2326))))))

(declare-fun b!5355121 () Bool)

(declare-fun res!2272008 () Bool)

(assert (=> b!5355121 (=> (not res!2272008) (not e!3324061))))

(assert (=> b!5355121 (= res!2272008 (= (size!39777 lt!2181757) (+ (size!39777 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310))) (size!39777 (t!374653 s!2326)))))))

(assert (= (and d!1716826 c!932484) b!5355119))

(assert (= (and d!1716826 (not c!932484)) b!5355120))

(assert (= (and d!1716826 res!2272007) b!5355121))

(assert (= (and b!5355121 res!2272008) b!5355122))

(declare-fun m!6385150 () Bool)

(assert (=> d!1716826 m!6385150))

(assert (=> d!1716826 m!6384182))

(declare-fun m!6385152 () Bool)

(assert (=> d!1716826 m!6385152))

(declare-fun m!6385154 () Bool)

(assert (=> d!1716826 m!6385154))

(declare-fun m!6385156 () Bool)

(assert (=> b!5355120 m!6385156))

(declare-fun m!6385158 () Bool)

(assert (=> b!5355121 m!6385158))

(assert (=> b!5355121 m!6384182))

(declare-fun m!6385160 () Bool)

(assert (=> b!5355121 m!6385160))

(declare-fun m!6385162 () Bool)

(assert (=> b!5355121 m!6385162))

(assert (=> b!5353924 d!1716826))

(declare-fun b!5355126 () Bool)

(declare-fun e!3324063 () Bool)

(declare-fun lt!2181758 () List!61434)

(assert (=> b!5355126 (= e!3324063 (or (not (= (Cons!61310 (h!67758 s!2326) Nil!61310) Nil!61310)) (= lt!2181758 Nil!61310)))))

(declare-fun b!5355123 () Bool)

(declare-fun e!3324064 () List!61434)

(assert (=> b!5355123 (= e!3324064 (Cons!61310 (h!67758 s!2326) Nil!61310))))

(declare-fun d!1716828 () Bool)

(assert (=> d!1716828 e!3324063))

(declare-fun res!2272009 () Bool)

(assert (=> d!1716828 (=> (not res!2272009) (not e!3324063))))

(assert (=> d!1716828 (= res!2272009 (= (content!10944 lt!2181758) ((_ map or) (content!10944 Nil!61310) (content!10944 (Cons!61310 (h!67758 s!2326) Nil!61310)))))))

(assert (=> d!1716828 (= lt!2181758 e!3324064)))

(declare-fun c!932485 () Bool)

(assert (=> d!1716828 (= c!932485 ((_ is Nil!61310) Nil!61310))))

(assert (=> d!1716828 (= (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) lt!2181758)))

(declare-fun b!5355124 () Bool)

(assert (=> b!5355124 (= e!3324064 (Cons!61310 (h!67758 Nil!61310) (++!13362 (t!374653 Nil!61310) (Cons!61310 (h!67758 s!2326) Nil!61310))))))

(declare-fun b!5355125 () Bool)

(declare-fun res!2272010 () Bool)

(assert (=> b!5355125 (=> (not res!2272010) (not e!3324063))))

(assert (=> b!5355125 (= res!2272010 (= (size!39777 lt!2181758) (+ (size!39777 Nil!61310) (size!39777 (Cons!61310 (h!67758 s!2326) Nil!61310)))))))

(assert (= (and d!1716828 c!932485) b!5355123))

(assert (= (and d!1716828 (not c!932485)) b!5355124))

(assert (= (and d!1716828 res!2272009) b!5355125))

(assert (= (and b!5355125 res!2272010) b!5355126))

(declare-fun m!6385164 () Bool)

(assert (=> d!1716828 m!6385164))

(declare-fun m!6385166 () Bool)

(assert (=> d!1716828 m!6385166))

(declare-fun m!6385168 () Bool)

(assert (=> d!1716828 m!6385168))

(declare-fun m!6385170 () Bool)

(assert (=> b!5355124 m!6385170))

(declare-fun m!6385172 () Bool)

(assert (=> b!5355125 m!6385172))

(declare-fun m!6385174 () Bool)

(assert (=> b!5355125 m!6385174))

(declare-fun m!6385176 () Bool)

(assert (=> b!5355125 m!6385176))

(assert (=> b!5353924 d!1716828))

(declare-fun d!1716830 () Bool)

(assert (=> d!1716830 (= (++!13362 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (t!374653 s!2326)) s!2326)))

(declare-fun lt!2181761 () Unit!153698)

(declare-fun choose!40185 (List!61434 C!30360 List!61434 List!61434) Unit!153698)

(assert (=> d!1716830 (= lt!2181761 (choose!40185 Nil!61310 (h!67758 s!2326) (t!374653 s!2326) s!2326))))

(assert (=> d!1716830 (= (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) (t!374653 s!2326))) s!2326)))

(assert (=> d!1716830 (= (lemmaMoveElementToOtherListKeepsConcatEq!1777 Nil!61310 (h!67758 s!2326) (t!374653 s!2326) s!2326) lt!2181761)))

(declare-fun bs!1241167 () Bool)

(assert (= bs!1241167 d!1716830))

(assert (=> bs!1241167 m!6384182))

(assert (=> bs!1241167 m!6384182))

(assert (=> bs!1241167 m!6384184))

(declare-fun m!6385178 () Bool)

(assert (=> bs!1241167 m!6385178))

(declare-fun m!6385180 () Bool)

(assert (=> bs!1241167 m!6385180))

(assert (=> b!5353924 d!1716830))

(declare-fun d!1716832 () Bool)

(declare-fun e!3324065 () Bool)

(assert (=> d!1716832 e!3324065))

(declare-fun res!2272013 () Bool)

(assert (=> d!1716832 (=> res!2272013 e!3324065)))

(declare-fun e!3324068 () Bool)

(assert (=> d!1716832 (= res!2272013 e!3324068)))

(declare-fun res!2272011 () Bool)

(assert (=> d!1716832 (=> (not res!2272011) (not e!3324068))))

(declare-fun lt!2181763 () Option!15156)

(assert (=> d!1716832 (= res!2272011 (isDefined!11859 lt!2181763))))

(declare-fun e!3324066 () Option!15156)

(assert (=> d!1716832 (= lt!2181763 e!3324066)))

(declare-fun c!932487 () Bool)

(declare-fun e!3324067 () Bool)

(assert (=> d!1716832 (= c!932487 e!3324067)))

(declare-fun res!2272015 () Bool)

(assert (=> d!1716832 (=> (not res!2272015) (not e!3324067))))

(assert (=> d!1716832 (= res!2272015 (matchR!7230 (regOne!30602 r!7292) (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310))))))

(assert (=> d!1716832 (validRegex!6781 (regOne!30602 r!7292))))

(assert (=> d!1716832 (= (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (t!374653 s!2326) s!2326) lt!2181763)))

(declare-fun b!5355127 () Bool)

(assert (=> b!5355127 (= e!3324065 (not (isDefined!11859 lt!2181763)))))

(declare-fun b!5355128 () Bool)

(declare-fun e!3324069 () Option!15156)

(assert (=> b!5355128 (= e!3324069 None!15155)))

(declare-fun b!5355129 () Bool)

(assert (=> b!5355129 (= e!3324066 (Some!15155 (tuple2!64489 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (t!374653 s!2326))))))

(declare-fun b!5355130 () Bool)

(assert (=> b!5355130 (= e!3324067 (matchR!7230 (regTwo!30602 r!7292) (t!374653 s!2326)))))

(declare-fun b!5355131 () Bool)

(assert (=> b!5355131 (= e!3324068 (= (++!13362 (_1!35547 (get!21090 lt!2181763)) (_2!35547 (get!21090 lt!2181763))) s!2326))))

(declare-fun b!5355132 () Bool)

(assert (=> b!5355132 (= e!3324066 e!3324069)))

(declare-fun c!932486 () Bool)

(assert (=> b!5355132 (= c!932486 ((_ is Nil!61310) (t!374653 s!2326)))))

(declare-fun b!5355133 () Bool)

(declare-fun res!2272012 () Bool)

(assert (=> b!5355133 (=> (not res!2272012) (not e!3324068))))

(assert (=> b!5355133 (= res!2272012 (matchR!7230 (regOne!30602 r!7292) (_1!35547 (get!21090 lt!2181763))))))

(declare-fun b!5355134 () Bool)

(declare-fun res!2272014 () Bool)

(assert (=> b!5355134 (=> (not res!2272014) (not e!3324068))))

(assert (=> b!5355134 (= res!2272014 (matchR!7230 (regTwo!30602 r!7292) (_2!35547 (get!21090 lt!2181763))))))

(declare-fun b!5355135 () Bool)

(declare-fun lt!2181764 () Unit!153698)

(declare-fun lt!2181762 () Unit!153698)

(assert (=> b!5355135 (= lt!2181764 lt!2181762)))

(assert (=> b!5355135 (= (++!13362 (++!13362 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (Cons!61310 (h!67758 (t!374653 s!2326)) Nil!61310)) (t!374653 (t!374653 s!2326))) s!2326)))

(assert (=> b!5355135 (= lt!2181762 (lemmaMoveElementToOtherListKeepsConcatEq!1777 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (h!67758 (t!374653 s!2326)) (t!374653 (t!374653 s!2326)) s!2326))))

(assert (=> b!5355135 (= e!3324069 (findConcatSeparation!1570 (regOne!30602 r!7292) (regTwo!30602 r!7292) (++!13362 (++!13362 Nil!61310 (Cons!61310 (h!67758 s!2326) Nil!61310)) (Cons!61310 (h!67758 (t!374653 s!2326)) Nil!61310)) (t!374653 (t!374653 s!2326)) s!2326))))

(assert (= (and d!1716832 res!2272015) b!5355130))

(assert (= (and d!1716832 c!932487) b!5355129))

(assert (= (and d!1716832 (not c!932487)) b!5355132))

(assert (= (and b!5355132 c!932486) b!5355128))

(assert (= (and b!5355132 (not c!932486)) b!5355135))

(assert (= (and d!1716832 res!2272011) b!5355133))

(assert (= (and b!5355133 res!2272012) b!5355134))

(assert (= (and b!5355134 res!2272014) b!5355131))

(assert (= (and d!1716832 (not res!2272013)) b!5355127))

(declare-fun m!6385182 () Bool)

(assert (=> b!5355127 m!6385182))

(declare-fun m!6385184 () Bool)

(assert (=> b!5355134 m!6385184))

(declare-fun m!6385186 () Bool)

(assert (=> b!5355134 m!6385186))

(assert (=> d!1716832 m!6385182))

(assert (=> d!1716832 m!6384182))

(declare-fun m!6385188 () Bool)

(assert (=> d!1716832 m!6385188))

(assert (=> d!1716832 m!6384174))

(assert (=> b!5355133 m!6385184))

(declare-fun m!6385190 () Bool)

(assert (=> b!5355133 m!6385190))

(assert (=> b!5355131 m!6385184))

(declare-fun m!6385192 () Bool)

(assert (=> b!5355131 m!6385192))

(declare-fun m!6385194 () Bool)

(assert (=> b!5355130 m!6385194))

(assert (=> b!5355135 m!6384182))

(declare-fun m!6385196 () Bool)

(assert (=> b!5355135 m!6385196))

(assert (=> b!5355135 m!6385196))

(declare-fun m!6385198 () Bool)

(assert (=> b!5355135 m!6385198))

(assert (=> b!5355135 m!6384182))

(declare-fun m!6385200 () Bool)

(assert (=> b!5355135 m!6385200))

(assert (=> b!5355135 m!6385196))

(declare-fun m!6385202 () Bool)

(assert (=> b!5355135 m!6385202))

(assert (=> b!5353924 d!1716832))

(declare-fun d!1716834 () Bool)

(assert (=> d!1716834 (= ($colon$colon!1432 (exprs!4929 (Context!8859 lt!2181619)) (ite (or c!932187 c!932186) (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (regOne!30602 r!7292)))) (Cons!61311 (ite (or c!932187 c!932186) (regTwo!30602 (reg!15374 (regOne!30602 r!7292))) (reg!15374 (regOne!30602 r!7292))) (exprs!4929 (Context!8859 lt!2181619))))))

(assert (=> bm!382864 d!1716834))

(declare-fun condSetEmpty!34615 () Bool)

(assert (=> setNonEmpty!34605 (= condSetEmpty!34615 (= setRest!34605 ((as const (Array Context!8858 Bool)) false)))))

(declare-fun setRes!34615 () Bool)

(assert (=> setNonEmpty!34605 (= tp!1487125 setRes!34615)))

(declare-fun setIsEmpty!34615 () Bool)

(assert (=> setIsEmpty!34615 setRes!34615))

(declare-fun setElem!34615 () Context!8858)

(declare-fun setNonEmpty!34615 () Bool)

(declare-fun tp!1487310 () Bool)

(declare-fun e!3324070 () Bool)

(assert (=> setNonEmpty!34615 (= setRes!34615 (and tp!1487310 (inv!80859 setElem!34615) e!3324070))))

(declare-fun setRest!34615 () (InoxSet Context!8858))

(assert (=> setNonEmpty!34615 (= setRest!34605 ((_ map or) (store ((as const (Array Context!8858 Bool)) false) setElem!34615 true) setRest!34615))))

(declare-fun b!5355136 () Bool)

(declare-fun tp!1487311 () Bool)

(assert (=> b!5355136 (= e!3324070 tp!1487311)))

(assert (= (and setNonEmpty!34605 condSetEmpty!34615) setIsEmpty!34615))

(assert (= (and setNonEmpty!34605 (not condSetEmpty!34615)) setNonEmpty!34615))

(assert (= setNonEmpty!34615 b!5355136))

(declare-fun m!6385204 () Bool)

(assert (=> setNonEmpty!34615 m!6385204))

(declare-fun b!5355137 () Bool)

(declare-fun e!3324071 () Bool)

(assert (=> b!5355137 (= e!3324071 tp_is_empty!39343)))

(declare-fun b!5355138 () Bool)

(declare-fun tp!1487316 () Bool)

(declare-fun tp!1487315 () Bool)

(assert (=> b!5355138 (= e!3324071 (and tp!1487316 tp!1487315))))

(declare-fun b!5355140 () Bool)

(declare-fun tp!1487312 () Bool)

(declare-fun tp!1487313 () Bool)

(assert (=> b!5355140 (= e!3324071 (and tp!1487312 tp!1487313))))

(declare-fun b!5355139 () Bool)

(declare-fun tp!1487314 () Bool)

(assert (=> b!5355139 (= e!3324071 tp!1487314)))

(assert (=> b!5354133 (= tp!1487132 e!3324071)))

(assert (= (and b!5354133 ((_ is ElementMatch!15045) (h!67759 (exprs!4929 (h!67760 zl!343))))) b!5355137))

(assert (= (and b!5354133 ((_ is Concat!23890) (h!67759 (exprs!4929 (h!67760 zl!343))))) b!5355138))

(assert (= (and b!5354133 ((_ is Star!15045) (h!67759 (exprs!4929 (h!67760 zl!343))))) b!5355139))

(assert (= (and b!5354133 ((_ is Union!15045) (h!67759 (exprs!4929 (h!67760 zl!343))))) b!5355140))

(declare-fun b!5355141 () Bool)

(declare-fun e!3324072 () Bool)

(declare-fun tp!1487317 () Bool)

(declare-fun tp!1487318 () Bool)

(assert (=> b!5355141 (= e!3324072 (and tp!1487317 tp!1487318))))

(assert (=> b!5354133 (= tp!1487133 e!3324072)))

(assert (= (and b!5354133 ((_ is Cons!61311) (t!374654 (exprs!4929 (h!67760 zl!343))))) b!5355141))

(declare-fun b!5355142 () Bool)

(declare-fun e!3324073 () Bool)

(assert (=> b!5355142 (= e!3324073 tp_is_empty!39343)))

(declare-fun b!5355143 () Bool)

(declare-fun tp!1487323 () Bool)

(declare-fun tp!1487322 () Bool)

(assert (=> b!5355143 (= e!3324073 (and tp!1487323 tp!1487322))))

(declare-fun b!5355145 () Bool)

(declare-fun tp!1487319 () Bool)

(declare-fun tp!1487320 () Bool)

(assert (=> b!5355145 (= e!3324073 (and tp!1487319 tp!1487320))))

(declare-fun b!5355144 () Bool)

(declare-fun tp!1487321 () Bool)

(assert (=> b!5355144 (= e!3324073 tp!1487321)))

(assert (=> b!5354110 (= tp!1487103 e!3324073)))

(assert (= (and b!5354110 ((_ is ElementMatch!15045) (regOne!30603 (regTwo!30603 r!7292)))) b!5355142))

(assert (= (and b!5354110 ((_ is Concat!23890) (regOne!30603 (regTwo!30603 r!7292)))) b!5355143))

(assert (= (and b!5354110 ((_ is Star!15045) (regOne!30603 (regTwo!30603 r!7292)))) b!5355144))

(assert (= (and b!5354110 ((_ is Union!15045) (regOne!30603 (regTwo!30603 r!7292)))) b!5355145))

(declare-fun b!5355146 () Bool)

(declare-fun e!3324074 () Bool)

(assert (=> b!5355146 (= e!3324074 tp_is_empty!39343)))

(declare-fun b!5355147 () Bool)

(declare-fun tp!1487328 () Bool)

(declare-fun tp!1487327 () Bool)

(assert (=> b!5355147 (= e!3324074 (and tp!1487328 tp!1487327))))

(declare-fun b!5355149 () Bool)

(declare-fun tp!1487324 () Bool)

(declare-fun tp!1487325 () Bool)

(assert (=> b!5355149 (= e!3324074 (and tp!1487324 tp!1487325))))

(declare-fun b!5355148 () Bool)

(declare-fun tp!1487326 () Bool)

(assert (=> b!5355148 (= e!3324074 tp!1487326)))

(assert (=> b!5354110 (= tp!1487104 e!3324074)))

(assert (= (and b!5354110 ((_ is ElementMatch!15045) (regTwo!30603 (regTwo!30603 r!7292)))) b!5355146))

(assert (= (and b!5354110 ((_ is Concat!23890) (regTwo!30603 (regTwo!30603 r!7292)))) b!5355147))

(assert (= (and b!5354110 ((_ is Star!15045) (regTwo!30603 (regTwo!30603 r!7292)))) b!5355148))

(assert (= (and b!5354110 ((_ is Union!15045) (regTwo!30603 (regTwo!30603 r!7292)))) b!5355149))

(declare-fun b!5355150 () Bool)

(declare-fun e!3324075 () Bool)

(assert (=> b!5355150 (= e!3324075 tp_is_empty!39343)))

(declare-fun b!5355151 () Bool)

(declare-fun tp!1487333 () Bool)

(declare-fun tp!1487332 () Bool)

(assert (=> b!5355151 (= e!3324075 (and tp!1487333 tp!1487332))))

(declare-fun b!5355153 () Bool)

(declare-fun tp!1487329 () Bool)

(declare-fun tp!1487330 () Bool)

(assert (=> b!5355153 (= e!3324075 (and tp!1487329 tp!1487330))))

(declare-fun b!5355152 () Bool)

(declare-fun tp!1487331 () Bool)

(assert (=> b!5355152 (= e!3324075 tp!1487331)))

(assert (=> b!5354109 (= tp!1487105 e!3324075)))

(assert (= (and b!5354109 ((_ is ElementMatch!15045) (reg!15374 (regTwo!30603 r!7292)))) b!5355150))

(assert (= (and b!5354109 ((_ is Concat!23890) (reg!15374 (regTwo!30603 r!7292)))) b!5355151))

(assert (= (and b!5354109 ((_ is Star!15045) (reg!15374 (regTwo!30603 r!7292)))) b!5355152))

(assert (= (and b!5354109 ((_ is Union!15045) (reg!15374 (regTwo!30603 r!7292)))) b!5355153))

(declare-fun b!5355154 () Bool)

(declare-fun e!3324076 () Bool)

(assert (=> b!5355154 (= e!3324076 tp_is_empty!39343)))

(declare-fun b!5355155 () Bool)

(declare-fun tp!1487338 () Bool)

(declare-fun tp!1487337 () Bool)

(assert (=> b!5355155 (= e!3324076 (and tp!1487338 tp!1487337))))

(declare-fun b!5355157 () Bool)

(declare-fun tp!1487334 () Bool)

(declare-fun tp!1487335 () Bool)

(assert (=> b!5355157 (= e!3324076 (and tp!1487334 tp!1487335))))

(declare-fun b!5355156 () Bool)

(declare-fun tp!1487336 () Bool)

(assert (=> b!5355156 (= e!3324076 tp!1487336)))

(assert (=> b!5354118 (= tp!1487113 e!3324076)))

(assert (= (and b!5354118 ((_ is ElementMatch!15045) (regOne!30603 (regTwo!30602 r!7292)))) b!5355154))

(assert (= (and b!5354118 ((_ is Concat!23890) (regOne!30603 (regTwo!30602 r!7292)))) b!5355155))

(assert (= (and b!5354118 ((_ is Star!15045) (regOne!30603 (regTwo!30602 r!7292)))) b!5355156))

(assert (= (and b!5354118 ((_ is Union!15045) (regOne!30603 (regTwo!30602 r!7292)))) b!5355157))

(declare-fun b!5355158 () Bool)

(declare-fun e!3324077 () Bool)

(assert (=> b!5355158 (= e!3324077 tp_is_empty!39343)))

(declare-fun b!5355159 () Bool)

(declare-fun tp!1487343 () Bool)

(declare-fun tp!1487342 () Bool)

(assert (=> b!5355159 (= e!3324077 (and tp!1487343 tp!1487342))))

(declare-fun b!5355161 () Bool)

(declare-fun tp!1487339 () Bool)

(declare-fun tp!1487340 () Bool)

(assert (=> b!5355161 (= e!3324077 (and tp!1487339 tp!1487340))))

(declare-fun b!5355160 () Bool)

(declare-fun tp!1487341 () Bool)

(assert (=> b!5355160 (= e!3324077 tp!1487341)))

(assert (=> b!5354118 (= tp!1487114 e!3324077)))

(assert (= (and b!5354118 ((_ is ElementMatch!15045) (regTwo!30603 (regTwo!30602 r!7292)))) b!5355158))

(assert (= (and b!5354118 ((_ is Concat!23890) (regTwo!30603 (regTwo!30602 r!7292)))) b!5355159))

(assert (= (and b!5354118 ((_ is Star!15045) (regTwo!30603 (regTwo!30602 r!7292)))) b!5355160))

(assert (= (and b!5354118 ((_ is Union!15045) (regTwo!30603 (regTwo!30602 r!7292)))) b!5355161))

(declare-fun b!5355162 () Bool)

(declare-fun e!3324078 () Bool)

(declare-fun tp!1487344 () Bool)

(declare-fun tp!1487345 () Bool)

(assert (=> b!5355162 (= e!3324078 (and tp!1487344 tp!1487345))))

(assert (=> b!5354087 (= tp!1487080 e!3324078)))

(assert (= (and b!5354087 ((_ is Cons!61311) (exprs!4929 (h!67760 (t!374655 zl!343))))) b!5355162))

(declare-fun b!5355163 () Bool)

(declare-fun e!3324079 () Bool)

(assert (=> b!5355163 (= e!3324079 tp_is_empty!39343)))

(declare-fun b!5355164 () Bool)

(declare-fun tp!1487350 () Bool)

(declare-fun tp!1487349 () Bool)

(assert (=> b!5355164 (= e!3324079 (and tp!1487350 tp!1487349))))

(declare-fun b!5355166 () Bool)

(declare-fun tp!1487346 () Bool)

(declare-fun tp!1487347 () Bool)

(assert (=> b!5355166 (= e!3324079 (and tp!1487346 tp!1487347))))

(declare-fun b!5355165 () Bool)

(declare-fun tp!1487348 () Bool)

(assert (=> b!5355165 (= e!3324079 tp!1487348)))

(assert (=> b!5354108 (= tp!1487107 e!3324079)))

(assert (= (and b!5354108 ((_ is ElementMatch!15045) (regOne!30602 (regTwo!30603 r!7292)))) b!5355163))

(assert (= (and b!5354108 ((_ is Concat!23890) (regOne!30602 (regTwo!30603 r!7292)))) b!5355164))

(assert (= (and b!5354108 ((_ is Star!15045) (regOne!30602 (regTwo!30603 r!7292)))) b!5355165))

(assert (= (and b!5354108 ((_ is Union!15045) (regOne!30602 (regTwo!30603 r!7292)))) b!5355166))

(declare-fun b!5355167 () Bool)

(declare-fun e!3324080 () Bool)

(assert (=> b!5355167 (= e!3324080 tp_is_empty!39343)))

(declare-fun b!5355168 () Bool)

(declare-fun tp!1487355 () Bool)

(declare-fun tp!1487354 () Bool)

(assert (=> b!5355168 (= e!3324080 (and tp!1487355 tp!1487354))))

(declare-fun b!5355170 () Bool)

(declare-fun tp!1487351 () Bool)

(declare-fun tp!1487352 () Bool)

(assert (=> b!5355170 (= e!3324080 (and tp!1487351 tp!1487352))))

(declare-fun b!5355169 () Bool)

(declare-fun tp!1487353 () Bool)

(assert (=> b!5355169 (= e!3324080 tp!1487353)))

(assert (=> b!5354108 (= tp!1487106 e!3324080)))

(assert (= (and b!5354108 ((_ is ElementMatch!15045) (regTwo!30602 (regTwo!30603 r!7292)))) b!5355167))

(assert (= (and b!5354108 ((_ is Concat!23890) (regTwo!30602 (regTwo!30603 r!7292)))) b!5355168))

(assert (= (and b!5354108 ((_ is Star!15045) (regTwo!30602 (regTwo!30603 r!7292)))) b!5355169))

(assert (= (and b!5354108 ((_ is Union!15045) (regTwo!30602 (regTwo!30603 r!7292)))) b!5355170))

(declare-fun b!5355171 () Bool)

(declare-fun e!3324081 () Bool)

(assert (=> b!5355171 (= e!3324081 tp_is_empty!39343)))

(declare-fun b!5355172 () Bool)

(declare-fun tp!1487360 () Bool)

(declare-fun tp!1487359 () Bool)

(assert (=> b!5355172 (= e!3324081 (and tp!1487360 tp!1487359))))

(declare-fun b!5355174 () Bool)

(declare-fun tp!1487356 () Bool)

(declare-fun tp!1487357 () Bool)

(assert (=> b!5355174 (= e!3324081 (and tp!1487356 tp!1487357))))

(declare-fun b!5355173 () Bool)

(declare-fun tp!1487358 () Bool)

(assert (=> b!5355173 (= e!3324081 tp!1487358)))

(assert (=> b!5354117 (= tp!1487115 e!3324081)))

(assert (= (and b!5354117 ((_ is ElementMatch!15045) (reg!15374 (regTwo!30602 r!7292)))) b!5355171))

(assert (= (and b!5354117 ((_ is Concat!23890) (reg!15374 (regTwo!30602 r!7292)))) b!5355172))

(assert (= (and b!5354117 ((_ is Star!15045) (reg!15374 (regTwo!30602 r!7292)))) b!5355173))

(assert (= (and b!5354117 ((_ is Union!15045) (reg!15374 (regTwo!30602 r!7292)))) b!5355174))

(declare-fun b!5355175 () Bool)

(declare-fun e!3324082 () Bool)

(assert (=> b!5355175 (= e!3324082 tp_is_empty!39343)))

(declare-fun b!5355176 () Bool)

(declare-fun tp!1487365 () Bool)

(declare-fun tp!1487364 () Bool)

(assert (=> b!5355176 (= e!3324082 (and tp!1487365 tp!1487364))))

(declare-fun b!5355178 () Bool)

(declare-fun tp!1487361 () Bool)

(declare-fun tp!1487362 () Bool)

(assert (=> b!5355178 (= e!3324082 (and tp!1487361 tp!1487362))))

(declare-fun b!5355177 () Bool)

(declare-fun tp!1487363 () Bool)

(assert (=> b!5355177 (= e!3324082 tp!1487363)))

(assert (=> b!5354132 (= tp!1487127 e!3324082)))

(assert (= (and b!5354132 ((_ is ElementMatch!15045) (regOne!30603 (reg!15374 r!7292)))) b!5355175))

(assert (= (and b!5354132 ((_ is Concat!23890) (regOne!30603 (reg!15374 r!7292)))) b!5355176))

(assert (= (and b!5354132 ((_ is Star!15045) (regOne!30603 (reg!15374 r!7292)))) b!5355177))

(assert (= (and b!5354132 ((_ is Union!15045) (regOne!30603 (reg!15374 r!7292)))) b!5355178))

(declare-fun b!5355179 () Bool)

(declare-fun e!3324083 () Bool)

(assert (=> b!5355179 (= e!3324083 tp_is_empty!39343)))

(declare-fun b!5355180 () Bool)

(declare-fun tp!1487370 () Bool)

(declare-fun tp!1487369 () Bool)

(assert (=> b!5355180 (= e!3324083 (and tp!1487370 tp!1487369))))

(declare-fun b!5355182 () Bool)

(declare-fun tp!1487366 () Bool)

(declare-fun tp!1487367 () Bool)

(assert (=> b!5355182 (= e!3324083 (and tp!1487366 tp!1487367))))

(declare-fun b!5355181 () Bool)

(declare-fun tp!1487368 () Bool)

(assert (=> b!5355181 (= e!3324083 tp!1487368)))

(assert (=> b!5354132 (= tp!1487128 e!3324083)))

(assert (= (and b!5354132 ((_ is ElementMatch!15045) (regTwo!30603 (reg!15374 r!7292)))) b!5355179))

(assert (= (and b!5354132 ((_ is Concat!23890) (regTwo!30603 (reg!15374 r!7292)))) b!5355180))

(assert (= (and b!5354132 ((_ is Star!15045) (regTwo!30603 (reg!15374 r!7292)))) b!5355181))

(assert (= (and b!5354132 ((_ is Union!15045) (regTwo!30603 (reg!15374 r!7292)))) b!5355182))

(declare-fun b!5355184 () Bool)

(declare-fun e!3324085 () Bool)

(declare-fun tp!1487371 () Bool)

(assert (=> b!5355184 (= e!3324085 tp!1487371)))

(declare-fun b!5355183 () Bool)

(declare-fun e!3324084 () Bool)

(declare-fun tp!1487372 () Bool)

(assert (=> b!5355183 (= e!3324084 (and (inv!80859 (h!67760 (t!374655 (t!374655 zl!343)))) e!3324085 tp!1487372))))

(assert (=> b!5354086 (= tp!1487081 e!3324084)))

(assert (= b!5355183 b!5355184))

(assert (= (and b!5354086 ((_ is Cons!61312) (t!374655 (t!374655 zl!343)))) b!5355183))

(declare-fun m!6385206 () Bool)

(assert (=> b!5355183 m!6385206))

(declare-fun b!5355185 () Bool)

(declare-fun e!3324086 () Bool)

(assert (=> b!5355185 (= e!3324086 tp_is_empty!39343)))

(declare-fun b!5355186 () Bool)

(declare-fun tp!1487377 () Bool)

(declare-fun tp!1487376 () Bool)

(assert (=> b!5355186 (= e!3324086 (and tp!1487377 tp!1487376))))

(declare-fun b!5355188 () Bool)

(declare-fun tp!1487373 () Bool)

(declare-fun tp!1487374 () Bool)

(assert (=> b!5355188 (= e!3324086 (and tp!1487373 tp!1487374))))

(declare-fun b!5355187 () Bool)

(declare-fun tp!1487375 () Bool)

(assert (=> b!5355187 (= e!3324086 tp!1487375)))

(assert (=> b!5354116 (= tp!1487117 e!3324086)))

(assert (= (and b!5354116 ((_ is ElementMatch!15045) (regOne!30602 (regTwo!30602 r!7292)))) b!5355185))

(assert (= (and b!5354116 ((_ is Concat!23890) (regOne!30602 (regTwo!30602 r!7292)))) b!5355186))

(assert (= (and b!5354116 ((_ is Star!15045) (regOne!30602 (regTwo!30602 r!7292)))) b!5355187))

(assert (= (and b!5354116 ((_ is Union!15045) (regOne!30602 (regTwo!30602 r!7292)))) b!5355188))

(declare-fun b!5355189 () Bool)

(declare-fun e!3324087 () Bool)

(assert (=> b!5355189 (= e!3324087 tp_is_empty!39343)))

(declare-fun b!5355190 () Bool)

(declare-fun tp!1487382 () Bool)

(declare-fun tp!1487381 () Bool)

(assert (=> b!5355190 (= e!3324087 (and tp!1487382 tp!1487381))))

(declare-fun b!5355192 () Bool)

(declare-fun tp!1487378 () Bool)

(declare-fun tp!1487379 () Bool)

(assert (=> b!5355192 (= e!3324087 (and tp!1487378 tp!1487379))))

(declare-fun b!5355191 () Bool)

(declare-fun tp!1487380 () Bool)

(assert (=> b!5355191 (= e!3324087 tp!1487380)))

(assert (=> b!5354116 (= tp!1487116 e!3324087)))

(assert (= (and b!5354116 ((_ is ElementMatch!15045) (regTwo!30602 (regTwo!30602 r!7292)))) b!5355189))

(assert (= (and b!5354116 ((_ is Concat!23890) (regTwo!30602 (regTwo!30602 r!7292)))) b!5355190))

(assert (= (and b!5354116 ((_ is Star!15045) (regTwo!30602 (regTwo!30602 r!7292)))) b!5355191))

(assert (= (and b!5354116 ((_ is Union!15045) (regTwo!30602 (regTwo!30602 r!7292)))) b!5355192))

(declare-fun b!5355193 () Bool)

(declare-fun e!3324088 () Bool)

(assert (=> b!5355193 (= e!3324088 tp_is_empty!39343)))

(declare-fun b!5355194 () Bool)

(declare-fun tp!1487387 () Bool)

(declare-fun tp!1487386 () Bool)

(assert (=> b!5355194 (= e!3324088 (and tp!1487387 tp!1487386))))

(declare-fun b!5355196 () Bool)

(declare-fun tp!1487383 () Bool)

(declare-fun tp!1487384 () Bool)

(assert (=> b!5355196 (= e!3324088 (and tp!1487383 tp!1487384))))

(declare-fun b!5355195 () Bool)

(declare-fun tp!1487385 () Bool)

(assert (=> b!5355195 (= e!3324088 tp!1487385)))

(assert (=> b!5354131 (= tp!1487129 e!3324088)))

(assert (= (and b!5354131 ((_ is ElementMatch!15045) (reg!15374 (reg!15374 r!7292)))) b!5355193))

(assert (= (and b!5354131 ((_ is Concat!23890) (reg!15374 (reg!15374 r!7292)))) b!5355194))

(assert (= (and b!5354131 ((_ is Star!15045) (reg!15374 (reg!15374 r!7292)))) b!5355195))

(assert (= (and b!5354131 ((_ is Union!15045) (reg!15374 (reg!15374 r!7292)))) b!5355196))

(declare-fun b!5355197 () Bool)

(declare-fun e!3324089 () Bool)

(assert (=> b!5355197 (= e!3324089 tp_is_empty!39343)))

(declare-fun b!5355198 () Bool)

(declare-fun tp!1487392 () Bool)

(declare-fun tp!1487391 () Bool)

(assert (=> b!5355198 (= e!3324089 (and tp!1487392 tp!1487391))))

(declare-fun b!5355200 () Bool)

(declare-fun tp!1487388 () Bool)

(declare-fun tp!1487389 () Bool)

(assert (=> b!5355200 (= e!3324089 (and tp!1487388 tp!1487389))))

(declare-fun b!5355199 () Bool)

(declare-fun tp!1487390 () Bool)

(assert (=> b!5355199 (= e!3324089 tp!1487390)))

(assert (=> b!5354092 (= tp!1487086 e!3324089)))

(assert (= (and b!5354092 ((_ is ElementMatch!15045) (h!67759 (exprs!4929 setElem!34599)))) b!5355197))

(assert (= (and b!5354092 ((_ is Concat!23890) (h!67759 (exprs!4929 setElem!34599)))) b!5355198))

(assert (= (and b!5354092 ((_ is Star!15045) (h!67759 (exprs!4929 setElem!34599)))) b!5355199))

(assert (= (and b!5354092 ((_ is Union!15045) (h!67759 (exprs!4929 setElem!34599)))) b!5355200))

(declare-fun b!5355201 () Bool)

(declare-fun e!3324090 () Bool)

(declare-fun tp!1487393 () Bool)

(declare-fun tp!1487394 () Bool)

(assert (=> b!5355201 (= e!3324090 (and tp!1487393 tp!1487394))))

(assert (=> b!5354092 (= tp!1487087 e!3324090)))

(assert (= (and b!5354092 ((_ is Cons!61311) (t!374654 (exprs!4929 setElem!34599)))) b!5355201))

(declare-fun b!5355202 () Bool)

(declare-fun e!3324091 () Bool)

(assert (=> b!5355202 (= e!3324091 tp_is_empty!39343)))

(declare-fun b!5355203 () Bool)

(declare-fun tp!1487399 () Bool)

(declare-fun tp!1487398 () Bool)

(assert (=> b!5355203 (= e!3324091 (and tp!1487399 tp!1487398))))

(declare-fun b!5355205 () Bool)

(declare-fun tp!1487395 () Bool)

(declare-fun tp!1487396 () Bool)

(assert (=> b!5355205 (= e!3324091 (and tp!1487395 tp!1487396))))

(declare-fun b!5355204 () Bool)

(declare-fun tp!1487397 () Bool)

(assert (=> b!5355204 (= e!3324091 tp!1487397)))

(assert (=> b!5354130 (= tp!1487131 e!3324091)))

(assert (= (and b!5354130 ((_ is ElementMatch!15045) (regOne!30602 (reg!15374 r!7292)))) b!5355202))

(assert (= (and b!5354130 ((_ is Concat!23890) (regOne!30602 (reg!15374 r!7292)))) b!5355203))

(assert (= (and b!5354130 ((_ is Star!15045) (regOne!30602 (reg!15374 r!7292)))) b!5355204))

(assert (= (and b!5354130 ((_ is Union!15045) (regOne!30602 (reg!15374 r!7292)))) b!5355205))

(declare-fun b!5355206 () Bool)

(declare-fun e!3324092 () Bool)

(assert (=> b!5355206 (= e!3324092 tp_is_empty!39343)))

(declare-fun b!5355207 () Bool)

(declare-fun tp!1487404 () Bool)

(declare-fun tp!1487403 () Bool)

(assert (=> b!5355207 (= e!3324092 (and tp!1487404 tp!1487403))))

(declare-fun b!5355209 () Bool)

(declare-fun tp!1487400 () Bool)

(declare-fun tp!1487401 () Bool)

(assert (=> b!5355209 (= e!3324092 (and tp!1487400 tp!1487401))))

(declare-fun b!5355208 () Bool)

(declare-fun tp!1487402 () Bool)

(assert (=> b!5355208 (= e!3324092 tp!1487402)))

(assert (=> b!5354130 (= tp!1487130 e!3324092)))

(assert (= (and b!5354130 ((_ is ElementMatch!15045) (regTwo!30602 (reg!15374 r!7292)))) b!5355206))

(assert (= (and b!5354130 ((_ is Concat!23890) (regTwo!30602 (reg!15374 r!7292)))) b!5355207))

(assert (= (and b!5354130 ((_ is Star!15045) (regTwo!30602 (reg!15374 r!7292)))) b!5355208))

(assert (= (and b!5354130 ((_ is Union!15045) (regTwo!30602 (reg!15374 r!7292)))) b!5355209))

(declare-fun b!5355210 () Bool)

(declare-fun e!3324093 () Bool)

(declare-fun tp!1487405 () Bool)

(assert (=> b!5355210 (= e!3324093 (and tp_is_empty!39343 tp!1487405))))

(assert (=> b!5354123 (= tp!1487120 e!3324093)))

(assert (= (and b!5354123 ((_ is Cons!61310) (t!374653 (t!374653 s!2326)))) b!5355210))

(declare-fun b!5355211 () Bool)

(declare-fun e!3324094 () Bool)

(assert (=> b!5355211 (= e!3324094 tp_is_empty!39343)))

(declare-fun b!5355212 () Bool)

(declare-fun tp!1487410 () Bool)

(declare-fun tp!1487409 () Bool)

(assert (=> b!5355212 (= e!3324094 (and tp!1487410 tp!1487409))))

(declare-fun b!5355214 () Bool)

(declare-fun tp!1487406 () Bool)

(declare-fun tp!1487407 () Bool)

(assert (=> b!5355214 (= e!3324094 (and tp!1487406 tp!1487407))))

(declare-fun b!5355213 () Bool)

(declare-fun tp!1487408 () Bool)

(assert (=> b!5355213 (= e!3324094 tp!1487408)))

(assert (=> b!5354106 (= tp!1487098 e!3324094)))

(assert (= (and b!5354106 ((_ is ElementMatch!15045) (regOne!30603 (regOne!30603 r!7292)))) b!5355211))

(assert (= (and b!5354106 ((_ is Concat!23890) (regOne!30603 (regOne!30603 r!7292)))) b!5355212))

(assert (= (and b!5354106 ((_ is Star!15045) (regOne!30603 (regOne!30603 r!7292)))) b!5355213))

(assert (= (and b!5354106 ((_ is Union!15045) (regOne!30603 (regOne!30603 r!7292)))) b!5355214))

(declare-fun b!5355215 () Bool)

(declare-fun e!3324095 () Bool)

(assert (=> b!5355215 (= e!3324095 tp_is_empty!39343)))

(declare-fun b!5355216 () Bool)

(declare-fun tp!1487415 () Bool)

(declare-fun tp!1487414 () Bool)

(assert (=> b!5355216 (= e!3324095 (and tp!1487415 tp!1487414))))

(declare-fun b!5355218 () Bool)

(declare-fun tp!1487411 () Bool)

(declare-fun tp!1487412 () Bool)

(assert (=> b!5355218 (= e!3324095 (and tp!1487411 tp!1487412))))

(declare-fun b!5355217 () Bool)

(declare-fun tp!1487413 () Bool)

(assert (=> b!5355217 (= e!3324095 tp!1487413)))

(assert (=> b!5354106 (= tp!1487099 e!3324095)))

(assert (= (and b!5354106 ((_ is ElementMatch!15045) (regTwo!30603 (regOne!30603 r!7292)))) b!5355215))

(assert (= (and b!5354106 ((_ is Concat!23890) (regTwo!30603 (regOne!30603 r!7292)))) b!5355216))

(assert (= (and b!5354106 ((_ is Star!15045) (regTwo!30603 (regOne!30603 r!7292)))) b!5355217))

(assert (= (and b!5354106 ((_ is Union!15045) (regTwo!30603 (regOne!30603 r!7292)))) b!5355218))

(declare-fun b!5355219 () Bool)

(declare-fun e!3324096 () Bool)

(assert (=> b!5355219 (= e!3324096 tp_is_empty!39343)))

(declare-fun b!5355220 () Bool)

(declare-fun tp!1487420 () Bool)

(declare-fun tp!1487419 () Bool)

(assert (=> b!5355220 (= e!3324096 (and tp!1487420 tp!1487419))))

(declare-fun b!5355222 () Bool)

(declare-fun tp!1487416 () Bool)

(declare-fun tp!1487417 () Bool)

(assert (=> b!5355222 (= e!3324096 (and tp!1487416 tp!1487417))))

(declare-fun b!5355221 () Bool)

(declare-fun tp!1487418 () Bool)

(assert (=> b!5355221 (= e!3324096 tp!1487418)))

(assert (=> b!5354105 (= tp!1487100 e!3324096)))

(assert (= (and b!5354105 ((_ is ElementMatch!15045) (reg!15374 (regOne!30603 r!7292)))) b!5355219))

(assert (= (and b!5354105 ((_ is Concat!23890) (reg!15374 (regOne!30603 r!7292)))) b!5355220))

(assert (= (and b!5354105 ((_ is Star!15045) (reg!15374 (regOne!30603 r!7292)))) b!5355221))

(assert (= (and b!5354105 ((_ is Union!15045) (reg!15374 (regOne!30603 r!7292)))) b!5355222))

(declare-fun b!5355223 () Bool)

(declare-fun e!3324097 () Bool)

(assert (=> b!5355223 (= e!3324097 tp_is_empty!39343)))

(declare-fun b!5355224 () Bool)

(declare-fun tp!1487425 () Bool)

(declare-fun tp!1487424 () Bool)

(assert (=> b!5355224 (= e!3324097 (and tp!1487425 tp!1487424))))

(declare-fun b!5355226 () Bool)

(declare-fun tp!1487421 () Bool)

(declare-fun tp!1487422 () Bool)

(assert (=> b!5355226 (= e!3324097 (and tp!1487421 tp!1487422))))

(declare-fun b!5355225 () Bool)

(declare-fun tp!1487423 () Bool)

(assert (=> b!5355225 (= e!3324097 tp!1487423)))

(assert (=> b!5354114 (= tp!1487108 e!3324097)))

(assert (= (and b!5354114 ((_ is ElementMatch!15045) (regOne!30603 (regOne!30602 r!7292)))) b!5355223))

(assert (= (and b!5354114 ((_ is Concat!23890) (regOne!30603 (regOne!30602 r!7292)))) b!5355224))

(assert (= (and b!5354114 ((_ is Star!15045) (regOne!30603 (regOne!30602 r!7292)))) b!5355225))

(assert (= (and b!5354114 ((_ is Union!15045) (regOne!30603 (regOne!30602 r!7292)))) b!5355226))

(declare-fun b!5355227 () Bool)

(declare-fun e!3324098 () Bool)

(assert (=> b!5355227 (= e!3324098 tp_is_empty!39343)))

(declare-fun b!5355228 () Bool)

(declare-fun tp!1487430 () Bool)

(declare-fun tp!1487429 () Bool)

(assert (=> b!5355228 (= e!3324098 (and tp!1487430 tp!1487429))))

(declare-fun b!5355230 () Bool)

(declare-fun tp!1487426 () Bool)

(declare-fun tp!1487427 () Bool)

(assert (=> b!5355230 (= e!3324098 (and tp!1487426 tp!1487427))))

(declare-fun b!5355229 () Bool)

(declare-fun tp!1487428 () Bool)

(assert (=> b!5355229 (= e!3324098 tp!1487428)))

(assert (=> b!5354114 (= tp!1487109 e!3324098)))

(assert (= (and b!5354114 ((_ is ElementMatch!15045) (regTwo!30603 (regOne!30602 r!7292)))) b!5355227))

(assert (= (and b!5354114 ((_ is Concat!23890) (regTwo!30603 (regOne!30602 r!7292)))) b!5355228))

(assert (= (and b!5354114 ((_ is Star!15045) (regTwo!30603 (regOne!30602 r!7292)))) b!5355229))

(assert (= (and b!5354114 ((_ is Union!15045) (regTwo!30603 (regOne!30602 r!7292)))) b!5355230))

(declare-fun b!5355231 () Bool)

(declare-fun e!3324099 () Bool)

(assert (=> b!5355231 (= e!3324099 tp_is_empty!39343)))

(declare-fun b!5355232 () Bool)

(declare-fun tp!1487435 () Bool)

(declare-fun tp!1487434 () Bool)

(assert (=> b!5355232 (= e!3324099 (and tp!1487435 tp!1487434))))

(declare-fun b!5355234 () Bool)

(declare-fun tp!1487431 () Bool)

(declare-fun tp!1487432 () Bool)

(assert (=> b!5355234 (= e!3324099 (and tp!1487431 tp!1487432))))

(declare-fun b!5355233 () Bool)

(declare-fun tp!1487433 () Bool)

(assert (=> b!5355233 (= e!3324099 tp!1487433)))

(assert (=> b!5354104 (= tp!1487102 e!3324099)))

(assert (= (and b!5354104 ((_ is ElementMatch!15045) (regOne!30602 (regOne!30603 r!7292)))) b!5355231))

(assert (= (and b!5354104 ((_ is Concat!23890) (regOne!30602 (regOne!30603 r!7292)))) b!5355232))

(assert (= (and b!5354104 ((_ is Star!15045) (regOne!30602 (regOne!30603 r!7292)))) b!5355233))

(assert (= (and b!5354104 ((_ is Union!15045) (regOne!30602 (regOne!30603 r!7292)))) b!5355234))

(declare-fun b!5355235 () Bool)

(declare-fun e!3324100 () Bool)

(assert (=> b!5355235 (= e!3324100 tp_is_empty!39343)))

(declare-fun b!5355236 () Bool)

(declare-fun tp!1487440 () Bool)

(declare-fun tp!1487439 () Bool)

(assert (=> b!5355236 (= e!3324100 (and tp!1487440 tp!1487439))))

(declare-fun b!5355238 () Bool)

(declare-fun tp!1487436 () Bool)

(declare-fun tp!1487437 () Bool)

(assert (=> b!5355238 (= e!3324100 (and tp!1487436 tp!1487437))))

(declare-fun b!5355237 () Bool)

(declare-fun tp!1487438 () Bool)

(assert (=> b!5355237 (= e!3324100 tp!1487438)))

(assert (=> b!5354104 (= tp!1487101 e!3324100)))

(assert (= (and b!5354104 ((_ is ElementMatch!15045) (regTwo!30602 (regOne!30603 r!7292)))) b!5355235))

(assert (= (and b!5354104 ((_ is Concat!23890) (regTwo!30602 (regOne!30603 r!7292)))) b!5355236))

(assert (= (and b!5354104 ((_ is Star!15045) (regTwo!30602 (regOne!30603 r!7292)))) b!5355237))

(assert (= (and b!5354104 ((_ is Union!15045) (regTwo!30602 (regOne!30603 r!7292)))) b!5355238))

(declare-fun b!5355239 () Bool)

(declare-fun e!3324101 () Bool)

(assert (=> b!5355239 (= e!3324101 tp_is_empty!39343)))

(declare-fun b!5355240 () Bool)

(declare-fun tp!1487445 () Bool)

(declare-fun tp!1487444 () Bool)

(assert (=> b!5355240 (= e!3324101 (and tp!1487445 tp!1487444))))

(declare-fun b!5355242 () Bool)

(declare-fun tp!1487441 () Bool)

(declare-fun tp!1487442 () Bool)

(assert (=> b!5355242 (= e!3324101 (and tp!1487441 tp!1487442))))

(declare-fun b!5355241 () Bool)

(declare-fun tp!1487443 () Bool)

(assert (=> b!5355241 (= e!3324101 tp!1487443)))

(assert (=> b!5354113 (= tp!1487110 e!3324101)))

(assert (= (and b!5354113 ((_ is ElementMatch!15045) (reg!15374 (regOne!30602 r!7292)))) b!5355239))

(assert (= (and b!5354113 ((_ is Concat!23890) (reg!15374 (regOne!30602 r!7292)))) b!5355240))

(assert (= (and b!5354113 ((_ is Star!15045) (reg!15374 (regOne!30602 r!7292)))) b!5355241))

(assert (= (and b!5354113 ((_ is Union!15045) (reg!15374 (regOne!30602 r!7292)))) b!5355242))

(declare-fun b!5355243 () Bool)

(declare-fun e!3324102 () Bool)

(assert (=> b!5355243 (= e!3324102 tp_is_empty!39343)))

(declare-fun b!5355244 () Bool)

(declare-fun tp!1487450 () Bool)

(declare-fun tp!1487449 () Bool)

(assert (=> b!5355244 (= e!3324102 (and tp!1487450 tp!1487449))))

(declare-fun b!5355246 () Bool)

(declare-fun tp!1487446 () Bool)

(declare-fun tp!1487447 () Bool)

(assert (=> b!5355246 (= e!3324102 (and tp!1487446 tp!1487447))))

(declare-fun b!5355245 () Bool)

(declare-fun tp!1487448 () Bool)

(assert (=> b!5355245 (= e!3324102 tp!1487448)))

(assert (=> b!5354112 (= tp!1487112 e!3324102)))

(assert (= (and b!5354112 ((_ is ElementMatch!15045) (regOne!30602 (regOne!30602 r!7292)))) b!5355243))

(assert (= (and b!5354112 ((_ is Concat!23890) (regOne!30602 (regOne!30602 r!7292)))) b!5355244))

(assert (= (and b!5354112 ((_ is Star!15045) (regOne!30602 (regOne!30602 r!7292)))) b!5355245))

(assert (= (and b!5354112 ((_ is Union!15045) (regOne!30602 (regOne!30602 r!7292)))) b!5355246))

(declare-fun b!5355247 () Bool)

(declare-fun e!3324103 () Bool)

(assert (=> b!5355247 (= e!3324103 tp_is_empty!39343)))

(declare-fun b!5355248 () Bool)

(declare-fun tp!1487455 () Bool)

(declare-fun tp!1487454 () Bool)

(assert (=> b!5355248 (= e!3324103 (and tp!1487455 tp!1487454))))

(declare-fun b!5355250 () Bool)

(declare-fun tp!1487451 () Bool)

(declare-fun tp!1487452 () Bool)

(assert (=> b!5355250 (= e!3324103 (and tp!1487451 tp!1487452))))

(declare-fun b!5355249 () Bool)

(declare-fun tp!1487453 () Bool)

(assert (=> b!5355249 (= e!3324103 tp!1487453)))

(assert (=> b!5354112 (= tp!1487111 e!3324103)))

(assert (= (and b!5354112 ((_ is ElementMatch!15045) (regTwo!30602 (regOne!30602 r!7292)))) b!5355247))

(assert (= (and b!5354112 ((_ is Concat!23890) (regTwo!30602 (regOne!30602 r!7292)))) b!5355248))

(assert (= (and b!5354112 ((_ is Star!15045) (regTwo!30602 (regOne!30602 r!7292)))) b!5355249))

(assert (= (and b!5354112 ((_ is Union!15045) (regTwo!30602 (regOne!30602 r!7292)))) b!5355250))

(declare-fun b!5355251 () Bool)

(declare-fun e!3324104 () Bool)

(declare-fun tp!1487456 () Bool)

(declare-fun tp!1487457 () Bool)

(assert (=> b!5355251 (= e!3324104 (and tp!1487456 tp!1487457))))

(assert (=> b!5354128 (= tp!1487126 e!3324104)))

(assert (= (and b!5354128 ((_ is Cons!61311) (exprs!4929 setElem!34605))) b!5355251))

(declare-fun b_lambda!205439 () Bool)

(assert (= b_lambda!205433 (or d!1716352 b_lambda!205439)))

(declare-fun bs!1241168 () Bool)

(declare-fun d!1716836 () Bool)

(assert (= bs!1241168 (and d!1716836 d!1716352)))

(assert (=> bs!1241168 (= (dynLambda!24235 lambda!275303 (h!67759 (exprs!4929 setElem!34599))) (validRegex!6781 (h!67759 (exprs!4929 setElem!34599))))))

(declare-fun m!6385208 () Bool)

(assert (=> bs!1241168 m!6385208))

(assert (=> b!5354983 d!1716836))

(declare-fun b_lambda!205441 () Bool)

(assert (= b_lambda!205431 (or b!5353362 b_lambda!205441)))

(assert (=> d!1716740 d!1716406))

(declare-fun b_lambda!205443 () Bool)

(assert (= b_lambda!205435 (or d!1716308 b_lambda!205443)))

(declare-fun bs!1241169 () Bool)

(declare-fun d!1716838 () Bool)

(assert (= bs!1241169 (and d!1716838 d!1716308)))

(assert (=> bs!1241169 (= (dynLambda!24235 lambda!275294 (h!67759 (exprs!4929 (h!67760 zl!343)))) (validRegex!6781 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(declare-fun m!6385210 () Bool)

(assert (=> bs!1241169 m!6385210))

(assert (=> b!5355025 d!1716838))

(declare-fun b_lambda!205445 () Bool)

(assert (= b_lambda!205429 (or d!1716396 b_lambda!205445)))

(declare-fun bs!1241170 () Bool)

(declare-fun d!1716840 () Bool)

(assert (= bs!1241170 (and d!1716840 d!1716396)))

(assert (=> bs!1241170 (= (dynLambda!24235 lambda!275316 (h!67759 (unfocusZipperList!487 zl!343))) (validRegex!6781 (h!67759 (unfocusZipperList!487 zl!343))))))

(declare-fun m!6385212 () Bool)

(assert (=> bs!1241170 m!6385212))

(assert (=> b!5354859 d!1716840))

(declare-fun b_lambda!205447 () Bool)

(assert (= b_lambda!205427 (or d!1716398 b_lambda!205447)))

(declare-fun bs!1241171 () Bool)

(declare-fun d!1716842 () Bool)

(assert (= bs!1241171 (and d!1716842 d!1716398)))

(assert (=> bs!1241171 (= (dynLambda!24235 lambda!275319 (h!67759 lt!2181714)) (validRegex!6781 (h!67759 lt!2181714)))))

(declare-fun m!6385214 () Bool)

(assert (=> bs!1241171 m!6385214))

(assert (=> b!5354804 d!1716842))

(declare-fun b_lambda!205449 () Bool)

(assert (= b_lambda!205437 (or d!1716374 b_lambda!205449)))

(declare-fun bs!1241172 () Bool)

(declare-fun d!1716844 () Bool)

(assert (= bs!1241172 (and d!1716844 d!1716374)))

(assert (=> bs!1241172 (= (dynLambda!24235 lambda!275304 (h!67759 (exprs!4929 (h!67760 zl!343)))) (validRegex!6781 (h!67759 (exprs!4929 (h!67760 zl!343)))))))

(assert (=> bs!1241172 m!6385210))

(assert (=> b!5355038 d!1716844))

(declare-fun b_lambda!205451 () Bool)

(assert (= b_lambda!205425 (or b!5353362 b_lambda!205451)))

(assert (=> d!1716636 d!1716408))

(check-sat (not d!1716812) (not b!5354799) (not b!5355153) (not b!5355204) (not b!5355039) (not b!5355194) (not d!1716770) (not b!5355094) (not b!5355242) (not b!5354794) (not d!1716640) (not bm!383038) (not b!5354847) (not d!1716636) (not b!5354724) (not b!5355174) (not bm!383014) (not b!5354961) (not bm!383066) (not b!5355180) (not bm!383043) (not bm!382985) (not b!5355149) (not b!5354921) (not b!5355015) (not b!5354837) (not b!5355047) (not b!5355208) (not b!5355021) (not b!5355190) (not bm!383084) (not b!5354708) (not b!5355201) (not bm!383005) (not d!1716682) (not b!5354838) (not b!5354743) (not b!5355169) (not b!5354965) (not b!5355151) (not b!5355191) (not bm!383011) (not d!1716736) (not b!5355198) (not b!5354767) (not b!5354694) (not b!5355241) (not bm!383070) (not bm!382983) (not b!5354929) (not b!5355214) (not b!5355232) (not bm!382998) (not setNonEmpty!34613) (not b!5355164) (not b!5354904) (not b!5355138) (not b!5355251) (not b!5355145) (not d!1716826) (not d!1716816) (not d!1716756) (not b!5355225) (not bm!383081) (not bm!383082) (not b!5355100) (not d!1716674) (not bm!382981) (not b!5355216) (not b!5355195) (not b!5355205) (not d!1716716) (not b!5355162) (not b!5355238) (not b_lambda!205447) (not d!1716646) (not d!1716814) (not bm!383029) (not b!5355161) (not b!5355144) (not bm!383022) (not d!1716644) (not b!5355203) (not d!1716656) (not bm!383019) tp_is_empty!39343 (not b_lambda!205395) (not b!5355125) (not b!5355229) (not b!5354722) (not b!5354866) (not b!5355237) (not b!5355127) (not b!5355196) (not b!5355233) (not b!5354723) (not bs!1241169) (not b!5355074) (not b!5354958) (not d!1716742) (not d!1716744) (not b!5355147) (not b!5355040) (not b!5355133) (not b!5354730) (not bm!383036) (not d!1716696) (not b!5354843) (not b!5354790) (not b!5355207) (not bm!382988) (not bm!382996) (not b!5354734) (not d!1716718) (not d!1716648) (not b!5354721) (not b_lambda!205393) (not bm!383056) (not d!1716652) (not b!5354875) (not b!5355224) (not d!1716810) (not b!5355102) (not d!1716832) (not b!5355014) (not bm!383021) (not b!5355178) (not b!5355182) (not b!5354942) (not b!5354742) (not b!5355228) (not b_lambda!205441) (not b!5354748) (not b_lambda!205451) (not b!5354962) (not b!5354784) (not b!5355173) (not bm!383052) (not b!5354978) (not b!5354693) (not bm!383000) (not b!5354706) (not bm!382987) (not b!5354725) (not bm!383016) (not b!5355109) (not b!5355130) (not b!5355140) (not b!5354812) (not b!5355199) (not b!5354805) (not b!5354785) (not bm!383062) (not d!1716712) (not b!5354699) (not b!5355236) (not setNonEmpty!34615) (not bm!383044) (not b!5354971) (not bm!383050) (not b!5354720) (not b!5355188) (not bm!383007) (not bm!383063) (not d!1716676) (not b!5355184) (not b!5355005) (not bm!383048) (not d!1716692) (not bm!383046) (not d!1716820) (not b!5355212) (not b!5355200) (not d!1716746) (not b!5355135) (not b!5355246) (not b!5354797) (not b!5355121) (not b!5354960) (not bm!382992) (not b!5354911) (not bm!383057) (not b!5354836) (not b!5354860) (not b!5355042) (not b!5354697) (not b!5354845) (not b!5354959) (not b!5355134) (not d!1716740) (not d!1716630) (not b!5355111) (not d!1716830) (not b!5355213) (not d!1716818) (not bm!383060) (not bm!383033) (not b!5355245) (not b!5355033) (not d!1716748) (not b!5354754) (not d!1716628) (not bm!382982) (not b!5354704) (not setNonEmpty!34614) (not b!5355181) (not b!5355139) (not b_lambda!205445) (not b!5355183) (not b!5355186) (not b!5355230) (not b!5355166) (not b!5355051) (not b!5355041) (not b!5355168) (not b!5354771) (not b!5354855) (not b!5354984) (not b!5354792) (not b!5354990) (not b!5355049) (not b!5354916) (not b!5355187) (not b!5354823) (not b!5355176) (not b!5354941) (not bm!383035) (not b!5354901) (not bm!383003) (not b!5355026) (not b!5355218) (not bs!1241171) (not b!5355152) (not b!5355177) (not b!5355156) (not b!5354726) (not bm!383028) (not b!5354920) (not b!5355101) (not b!5354698) (not d!1716800) (not bm!383054) (not b!5355240) (not b!5355244) (not bm!383040) (not b!5355114) (not b!5355165) (not b!5355250) (not b!5355148) (not b!5355141) (not b!5355107) (not b!5354963) (not b!5355226) (not b!5355093) (not b!5355157) (not bm!383068) (not bs!1241172) (not b!5354922) (not b!5355221) (not bm!383001) (not b!5354763) (not b!5355220) (not d!1716734) (not b!5355210) (not bm!382994) (not bm!382989) (not b_lambda!205443) (not bm!382986) (not b!5355192) (not bm!383061) (not b!5354783) (not b!5354900) (not bs!1241170) (not b!5355234) (not bm!382991) (not bm!383009) (not d!1716638) (not d!1716666) (not bm!383015) (not bm!383018) (not bm!383071) (not b!5355120) (not b!5354716) (not b!5355118) (not b!5355143) (not b!5355248) (not b!5355170) (not b!5355222) (not b!5355249) (not bm!383042) (not b!5355136) (not d!1716758) (not b!5355006) (not b!5355209) (not b!5354951) (not b!5355013) (not b!5355159) (not b_lambda!205449) (not d!1716700) (not b!5355131) (not bm!383085) (not bs!1241168) (not b_lambda!205439) (not bm!383031) (not b!5355160) (not b!5355217) (not d!1716778) (not d!1716828) (not b!5355124) (not b!5355172) (not b!5354778) (not d!1716714) (not bm!383013) (not d!1716822) (not b!5355155) (not d!1716654) (not bm!383058))
(check-sat)
