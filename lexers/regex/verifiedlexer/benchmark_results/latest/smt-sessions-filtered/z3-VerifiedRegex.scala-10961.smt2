; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567474 () Bool)

(assert start!567474)

(declare-fun b!5402422 () Bool)

(assert (=> b!5402422 true))

(assert (=> b!5402422 true))

(declare-fun lambda!281368 () Int)

(declare-fun lambda!281367 () Int)

(assert (=> b!5402422 (not (= lambda!281368 lambda!281367))))

(assert (=> b!5402422 true))

(assert (=> b!5402422 true))

(declare-fun b!5402430 () Bool)

(assert (=> b!5402430 true))

(declare-fun b!5402429 () Bool)

(assert (=> b!5402429 true))

(declare-datatypes ((C!30608 0))(
  ( (C!30609 (val!25006 Int)) )
))
(declare-datatypes ((Regex!15169 0))(
  ( (ElementMatch!15169 (c!941683 C!30608)) (Concat!24014 (regOne!30850 Regex!15169) (regTwo!30850 Regex!15169)) (EmptyExpr!15169) (Star!15169 (reg!15498 Regex!15169)) (EmptyLang!15169) (Union!15169 (regOne!30851 Regex!15169) (regTwo!30851 Regex!15169)) )
))
(declare-datatypes ((List!61806 0))(
  ( (Nil!61682) (Cons!61682 (h!68130 Regex!15169) (t!375029 List!61806)) )
))
(declare-datatypes ((Context!9106 0))(
  ( (Context!9107 (exprs!5053 List!61806)) )
))
(declare-datatypes ((List!61807 0))(
  ( (Nil!61683) (Cons!61683 (h!68131 Context!9106) (t!375030 List!61807)) )
))
(declare-fun zl!343 () List!61807)

(declare-fun b!5402387 () Bool)

(declare-fun e!3349553 () Bool)

(declare-fun tp!1494549 () Bool)

(declare-fun e!3349556 () Bool)

(declare-fun inv!81169 (Context!9106) Bool)

(assert (=> b!5402387 (= e!3349553 (and (inv!81169 (h!68131 zl!343)) e!3349556 tp!1494549))))

(declare-fun setElem!35159 () Context!9106)

(declare-fun setRes!35159 () Bool)

(declare-fun tp!1494542 () Bool)

(declare-fun setNonEmpty!35159 () Bool)

(declare-fun e!3349534 () Bool)

(assert (=> setNonEmpty!35159 (= setRes!35159 (and tp!1494542 (inv!81169 setElem!35159) e!3349534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9106))

(declare-fun setRest!35159 () (InoxSet Context!9106))

(assert (=> setNonEmpty!35159 (= z!1189 ((_ map or) (store ((as const (Array Context!9106 Bool)) false) setElem!35159 true) setRest!35159))))

(declare-fun b!5402389 () Bool)

(declare-fun e!3349550 () Bool)

(declare-fun e!3349551 () Bool)

(assert (=> b!5402389 (= e!3349550 e!3349551)))

(declare-fun res!2296691 () Bool)

(assert (=> b!5402389 (=> res!2296691 e!3349551)))

(declare-fun lt!2202091 () (InoxSet Context!9106))

(declare-fun lt!2202063 () (InoxSet Context!9106))

(assert (=> b!5402389 (= res!2296691 (not (= lt!2202091 lt!2202063)))))

(declare-fun lt!2202048 () (InoxSet Context!9106))

(declare-fun lambda!281369 () Int)

(declare-datatypes ((List!61808 0))(
  ( (Nil!61684) (Cons!61684 (h!68132 C!30608) (t!375031 List!61808)) )
))
(declare-fun s!2326 () List!61808)

(declare-fun lt!2202082 () Context!9106)

(declare-fun flatMap!896 ((InoxSet Context!9106) Int) (InoxSet Context!9106))

(declare-fun derivationStepZipperUp!541 (Context!9106 C!30608) (InoxSet Context!9106))

(assert (=> b!5402389 (= (flatMap!896 lt!2202048 lambda!281369) (derivationStepZipperUp!541 lt!2202082 (h!68132 s!2326)))))

(declare-datatypes ((Unit!154198 0))(
  ( (Unit!154199) )
))
(declare-fun lt!2202059 () Unit!154198)

(declare-fun lemmaFlatMapOnSingletonSet!428 ((InoxSet Context!9106) Context!9106 Int) Unit!154198)

(assert (=> b!5402389 (= lt!2202059 (lemmaFlatMapOnSingletonSet!428 lt!2202048 lt!2202082 lambda!281369))))

(declare-fun lt!2202094 () (InoxSet Context!9106))

(assert (=> b!5402389 (= lt!2202094 (derivationStepZipperUp!541 lt!2202082 (h!68132 s!2326)))))

(declare-fun derivationStepZipper!1408 ((InoxSet Context!9106) C!30608) (InoxSet Context!9106))

(assert (=> b!5402389 (= lt!2202091 (derivationStepZipper!1408 lt!2202048 (h!68132 s!2326)))))

(assert (=> b!5402389 (= lt!2202048 (store ((as const (Array Context!9106 Bool)) false) lt!2202082 true))))

(declare-fun r!7292 () Regex!15169)

(declare-fun lt!2202073 () List!61806)

(assert (=> b!5402389 (= lt!2202082 (Context!9107 (Cons!61682 (reg!15498 (regOne!30850 r!7292)) lt!2202073)))))

(declare-fun b!5402390 () Bool)

(declare-fun res!2296706 () Bool)

(declare-fun e!3349557 () Bool)

(assert (=> b!5402390 (=> res!2296706 e!3349557)))

(declare-fun generalisedConcat!838 (List!61806) Regex!15169)

(assert (=> b!5402390 (= res!2296706 (not (= r!7292 (generalisedConcat!838 (exprs!5053 (h!68131 zl!343))))))))

(declare-fun b!5402391 () Bool)

(declare-fun tp!1494540 () Bool)

(assert (=> b!5402391 (= e!3349534 tp!1494540)))

(declare-fun b!5402392 () Bool)

(declare-fun e!3349540 () Bool)

(declare-fun e!3349548 () Bool)

(assert (=> b!5402392 (= e!3349540 e!3349548)))

(declare-fun res!2296702 () Bool)

(assert (=> b!5402392 (=> res!2296702 e!3349548)))

(declare-fun lt!2202068 () List!61807)

(declare-fun lt!2202054 () Regex!15169)

(declare-fun unfocusZipper!911 (List!61807) Regex!15169)

(assert (=> b!5402392 (= res!2296702 (not (= (unfocusZipper!911 lt!2202068) lt!2202054)))))

(declare-fun lt!2202052 () Context!9106)

(assert (=> b!5402392 (= lt!2202068 (Cons!61683 lt!2202052 Nil!61683))))

(declare-fun b!5402393 () Bool)

(declare-fun e!3349536 () Unit!154198)

(declare-fun Unit!154200 () Unit!154198)

(assert (=> b!5402393 (= e!3349536 Unit!154200)))

(declare-fun lt!2202061 () Unit!154198)

(declare-fun lt!2202070 () (InoxSet Context!9106))

(declare-fun lt!2202087 () (InoxSet Context!9106))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!406 ((InoxSet Context!9106) (InoxSet Context!9106) List!61808) Unit!154198)

(assert (=> b!5402393 (= lt!2202061 (lemmaZipperConcatMatchesSameAsBothZippers!406 lt!2202087 lt!2202070 (t!375031 s!2326)))))

(declare-fun res!2296680 () Bool)

(declare-fun matchZipper!1413 ((InoxSet Context!9106) List!61808) Bool)

(assert (=> b!5402393 (= res!2296680 (matchZipper!1413 lt!2202087 (t!375031 s!2326)))))

(declare-fun e!3349539 () Bool)

(assert (=> b!5402393 (=> res!2296680 e!3349539)))

(assert (=> b!5402393 (= (matchZipper!1413 ((_ map or) lt!2202087 lt!2202070) (t!375031 s!2326)) e!3349539)))

(declare-fun b!5402394 () Bool)

(declare-fun tp!1494543 () Bool)

(assert (=> b!5402394 (= e!3349556 tp!1494543)))

(declare-fun b!5402395 () Bool)

(declare-fun e!3349554 () Bool)

(assert (=> b!5402395 (= e!3349554 true)))

(declare-fun lt!2202080 () Regex!15169)

(declare-fun matchR!7354 (Regex!15169 List!61808) Bool)

(assert (=> b!5402395 (matchR!7354 (Concat!24014 (Concat!24014 (reg!15498 (regOne!30850 r!7292)) lt!2202080) (regTwo!30850 r!7292)) s!2326)))

(declare-fun lt!2202095 () Unit!154198)

(declare-fun lemmaConcatAssociative!22 (Regex!15169 Regex!15169 Regex!15169 List!61808) Unit!154198)

(assert (=> b!5402395 (= lt!2202095 (lemmaConcatAssociative!22 (reg!15498 (regOne!30850 r!7292)) lt!2202080 (regTwo!30850 r!7292) s!2326))))

(declare-fun e!3349549 () Bool)

(assert (=> b!5402395 e!3349549))

(declare-fun res!2296705 () Bool)

(assert (=> b!5402395 (=> (not res!2296705) (not e!3349549))))

(declare-fun lt!2202065 () Regex!15169)

(declare-fun lt!2202096 () List!61808)

(assert (=> b!5402395 (= res!2296705 (matchR!7354 lt!2202065 lt!2202096))))

(declare-fun lt!2202074 () Unit!154198)

(declare-datatypes ((tuple2!64736 0))(
  ( (tuple2!64737 (_1!35671 List!61808) (_2!35671 List!61808)) )
))
(declare-fun lt!2202057 () tuple2!64736)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!192 (Regex!15169 Regex!15169 List!61808 List!61808) Unit!154198)

(assert (=> b!5402395 (= lt!2202074 (lemmaTwoRegexMatchThenConcatMatchesConcatString!192 (reg!15498 (regOne!30850 r!7292)) lt!2202054 (_1!35671 lt!2202057) (_2!35671 lt!2202057)))))

(assert (=> b!5402395 (matchR!7354 lt!2202054 (_2!35671 lt!2202057))))

(declare-fun lt!2202083 () Unit!154198)

(declare-fun lt!2202055 () (InoxSet Context!9106))

(declare-fun theoremZipperRegexEquiv!483 ((InoxSet Context!9106) List!61807 Regex!15169 List!61808) Unit!154198)

(assert (=> b!5402395 (= lt!2202083 (theoremZipperRegexEquiv!483 lt!2202055 lt!2202068 lt!2202054 (_2!35671 lt!2202057)))))

(assert (=> b!5402395 (matchR!7354 (reg!15498 (regOne!30850 r!7292)) (_1!35671 lt!2202057))))

(declare-fun lt!2202067 () Unit!154198)

(declare-fun lt!2202079 () List!61807)

(declare-fun lt!2202049 () (InoxSet Context!9106))

(assert (=> b!5402395 (= lt!2202067 (theoremZipperRegexEquiv!483 lt!2202049 lt!2202079 (reg!15498 (regOne!30850 r!7292)) (_1!35671 lt!2202057)))))

(declare-fun lt!2202088 () List!61806)

(declare-fun ++!13511 (List!61806 List!61806) List!61806)

(assert (=> b!5402395 (matchZipper!1413 (store ((as const (Array Context!9106 Bool)) false) (Context!9107 (++!13511 lt!2202088 lt!2202073)) true) lt!2202096)))

(declare-fun lambda!281371 () Int)

(declare-fun lt!2202084 () Unit!154198)

(declare-fun lemmaConcatPreservesForall!194 (List!61806 List!61806 Int) Unit!154198)

(assert (=> b!5402395 (= lt!2202084 (lemmaConcatPreservesForall!194 lt!2202088 lt!2202073 lambda!281371))))

(declare-fun lt!2202086 () Unit!154198)

(declare-fun lt!2202050 () Context!9106)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!42 (Context!9106 Context!9106 List!61808 List!61808) Unit!154198)

(assert (=> b!5402395 (= lt!2202086 (lemmaConcatenateContextMatchesConcatOfStrings!42 lt!2202050 lt!2202052 (_1!35671 lt!2202057) (_2!35671 lt!2202057)))))

(declare-fun b!5402396 () Bool)

(declare-fun res!2296679 () Bool)

(declare-fun e!3349538 () Bool)

(assert (=> b!5402396 (=> res!2296679 e!3349538)))

(declare-fun lt!2202072 () Regex!15169)

(assert (=> b!5402396 (= res!2296679 (not (= lt!2202072 r!7292)))))

(declare-fun b!5402397 () Bool)

(declare-fun res!2296695 () Bool)

(assert (=> b!5402397 (=> res!2296695 e!3349557)))

(declare-fun generalisedUnion!1098 (List!61806) Regex!15169)

(declare-fun unfocusZipperList!611 (List!61807) List!61806)

(assert (=> b!5402397 (= res!2296695 (not (= r!7292 (generalisedUnion!1098 (unfocusZipperList!611 zl!343)))))))

(declare-fun b!5402398 () Bool)

(declare-fun e!3349537 () Bool)

(assert (=> b!5402398 (= e!3349537 e!3349554)))

(declare-fun res!2296704 () Bool)

(assert (=> b!5402398 (=> res!2296704 e!3349554)))

(assert (=> b!5402398 (= res!2296704 (not (= s!2326 lt!2202096)))))

(declare-fun ++!13512 (List!61808 List!61808) List!61808)

(assert (=> b!5402398 (= lt!2202096 (++!13512 (_1!35671 lt!2202057) (_2!35671 lt!2202057)))))

(declare-datatypes ((Option!15280 0))(
  ( (None!15279) (Some!15279 (v!51308 tuple2!64736)) )
))
(declare-fun lt!2202058 () Option!15280)

(declare-fun get!21256 (Option!15280) tuple2!64736)

(assert (=> b!5402398 (= lt!2202057 (get!21256 lt!2202058))))

(declare-fun isDefined!11983 (Option!15280) Bool)

(assert (=> b!5402398 (isDefined!11983 lt!2202058)))

(declare-fun findConcatSeparationZippers!26 ((InoxSet Context!9106) (InoxSet Context!9106) List!61808 List!61808 List!61808) Option!15280)

(assert (=> b!5402398 (= lt!2202058 (findConcatSeparationZippers!26 lt!2202049 lt!2202055 Nil!61684 s!2326 s!2326))))

(declare-fun lt!2202076 () Unit!154198)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!26 ((InoxSet Context!9106) Context!9106 List!61808) Unit!154198)

(assert (=> b!5402398 (= lt!2202076 (lemmaConcatZipperMatchesStringThenFindConcatDefined!26 lt!2202049 lt!2202052 s!2326))))

(declare-fun b!5402399 () Bool)

(declare-fun res!2296677 () Bool)

(declare-fun e!3349558 () Bool)

(assert (=> b!5402399 (=> (not res!2296677) (not e!3349558))))

(declare-fun toList!8953 ((InoxSet Context!9106)) List!61807)

(assert (=> b!5402399 (= res!2296677 (= (toList!8953 z!1189) zl!343))))

(declare-fun b!5402400 () Bool)

(declare-fun res!2296682 () Bool)

(declare-fun e!3349543 () Bool)

(assert (=> b!5402400 (=> res!2296682 e!3349543)))

(declare-fun isEmpty!33676 (List!61806) Bool)

(assert (=> b!5402400 (= res!2296682 (isEmpty!33676 (t!375029 (exprs!5053 (h!68131 zl!343)))))))

(declare-fun b!5402401 () Bool)

(declare-fun e!3349547 () Bool)

(declare-fun tp!1494548 () Bool)

(declare-fun tp!1494546 () Bool)

(assert (=> b!5402401 (= e!3349547 (and tp!1494548 tp!1494546))))

(declare-fun b!5402388 () Bool)

(declare-fun res!2296684 () Bool)

(assert (=> b!5402388 (=> res!2296684 e!3349557)))

(declare-fun isEmpty!33677 (List!61807) Bool)

(assert (=> b!5402388 (= res!2296684 (not (isEmpty!33677 (t!375030 zl!343))))))

(declare-fun res!2296685 () Bool)

(assert (=> start!567474 (=> (not res!2296685) (not e!3349558))))

(declare-fun validRegex!6905 (Regex!15169) Bool)

(assert (=> start!567474 (= res!2296685 (validRegex!6905 r!7292))))

(assert (=> start!567474 e!3349558))

(assert (=> start!567474 e!3349547))

(declare-fun condSetEmpty!35159 () Bool)

(assert (=> start!567474 (= condSetEmpty!35159 (= z!1189 ((as const (Array Context!9106 Bool)) false)))))

(assert (=> start!567474 setRes!35159))

(assert (=> start!567474 e!3349553))

(declare-fun e!3349545 () Bool)

(assert (=> start!567474 e!3349545))

(declare-fun b!5402402 () Bool)

(declare-fun e!3349533 () Bool)

(assert (=> b!5402402 (= e!3349533 (not (matchZipper!1413 lt!2202070 (t!375031 s!2326))))))

(declare-fun b!5402403 () Bool)

(declare-fun tp!1494547 () Bool)

(assert (=> b!5402403 (= e!3349547 tp!1494547)))

(declare-fun b!5402404 () Bool)

(declare-fun e!3349541 () Bool)

(assert (=> b!5402404 (= e!3349548 e!3349541)))

(declare-fun res!2296681 () Bool)

(assert (=> b!5402404 (=> res!2296681 e!3349541)))

(declare-fun lt!2202062 () Bool)

(assert (=> b!5402404 (= res!2296681 lt!2202062)))

(declare-fun lt!2202075 () Bool)

(declare-fun matchRSpec!2272 (Regex!15169 List!61808) Bool)

(assert (=> b!5402404 (= lt!2202075 (matchRSpec!2272 lt!2202065 s!2326))))

(assert (=> b!5402404 (= lt!2202075 (matchR!7354 lt!2202065 s!2326))))

(declare-fun lt!2202051 () Unit!154198)

(declare-fun mainMatchTheorem!2272 (Regex!15169 List!61808) Unit!154198)

(assert (=> b!5402404 (= lt!2202051 (mainMatchTheorem!2272 lt!2202065 s!2326))))

(declare-fun b!5402405 () Bool)

(declare-fun e!3349542 () Bool)

(assert (=> b!5402405 (= e!3349538 e!3349542)))

(declare-fun res!2296683 () Bool)

(assert (=> b!5402405 (=> res!2296683 e!3349542)))

(assert (=> b!5402405 (= res!2296683 (not (= r!7292 lt!2202054)))))

(assert (=> b!5402405 (= lt!2202054 (Concat!24014 lt!2202080 (regTwo!30850 r!7292)))))

(declare-fun b!5402406 () Bool)

(declare-fun res!2296688 () Bool)

(assert (=> b!5402406 (=> res!2296688 e!3349557)))

(get-info :version)

(assert (=> b!5402406 (= res!2296688 (not ((_ is Cons!61682) (exprs!5053 (h!68131 zl!343)))))))

(declare-fun b!5402407 () Bool)

(declare-fun res!2296707 () Bool)

(assert (=> b!5402407 (=> res!2296707 e!3349557)))

(assert (=> b!5402407 (= res!2296707 (or ((_ is EmptyExpr!15169) r!7292) ((_ is EmptyLang!15169) r!7292) ((_ is ElementMatch!15169) r!7292) ((_ is Union!15169) r!7292) (not ((_ is Concat!24014) r!7292))))))

(declare-fun b!5402408 () Bool)

(declare-fun tp_is_empty!39591 () Bool)

(assert (=> b!5402408 (= e!3349547 tp_is_empty!39591)))

(declare-fun b!5402409 () Bool)

(declare-fun res!2296703 () Bool)

(declare-fun e!3349546 () Bool)

(assert (=> b!5402409 (=> res!2296703 e!3349546)))

(declare-fun lt!2202066 () Bool)

(declare-fun lt!2202093 () Bool)

(assert (=> b!5402409 (= res!2296703 (or (not lt!2202066) (not lt!2202093)))))

(declare-fun b!5402410 () Bool)

(declare-fun e!3349544 () Bool)

(assert (=> b!5402410 (= e!3349544 e!3349550)))

(declare-fun res!2296693 () Bool)

(assert (=> b!5402410 (=> res!2296693 e!3349550)))

(assert (=> b!5402410 (= res!2296693 (not (= lt!2202087 lt!2202063)))))

(declare-fun derivationStepZipperDown!617 (Regex!15169 Context!9106 C!30608) (InoxSet Context!9106))

(assert (=> b!5402410 (= lt!2202063 (derivationStepZipperDown!617 (reg!15498 (regOne!30850 r!7292)) lt!2202052 (h!68132 s!2326)))))

(assert (=> b!5402410 (= lt!2202052 (Context!9107 lt!2202073))))

(assert (=> b!5402410 (= lt!2202073 (Cons!61682 lt!2202080 (t!375029 (exprs!5053 (h!68131 zl!343)))))))

(assert (=> b!5402410 (= lt!2202080 (Star!15169 (reg!15498 (regOne!30850 r!7292))))))

(declare-fun b!5402411 () Bool)

(declare-fun res!2296689 () Bool)

(assert (=> b!5402411 (=> res!2296689 e!3349541)))

(assert (=> b!5402411 (= res!2296689 (not (matchZipper!1413 z!1189 s!2326)))))

(declare-fun b!5402412 () Bool)

(declare-fun res!2296678 () Bool)

(assert (=> b!5402412 (=> res!2296678 e!3349554)))

(assert (=> b!5402412 (= res!2296678 (not (matchZipper!1413 lt!2202049 (_1!35671 lt!2202057))))))

(declare-fun b!5402413 () Bool)

(declare-fun res!2296673 () Bool)

(assert (=> b!5402413 (=> res!2296673 e!3349544)))

(declare-fun e!3349552 () Bool)

(assert (=> b!5402413 (= res!2296673 e!3349552)))

(declare-fun res!2296692 () Bool)

(assert (=> b!5402413 (=> (not res!2296692) (not e!3349552))))

(assert (=> b!5402413 (= res!2296692 ((_ is Concat!24014) (regOne!30850 r!7292)))))

(declare-fun b!5402414 () Bool)

(declare-fun res!2296686 () Bool)

(assert (=> b!5402414 (=> res!2296686 e!3349541)))

(declare-fun lt!2202089 () Bool)

(assert (=> b!5402414 (= res!2296686 (not lt!2202089))))

(declare-fun b!5402415 () Bool)

(declare-fun e!3349555 () Bool)

(assert (=> b!5402415 (= e!3349555 e!3349540)))

(declare-fun res!2296690 () Bool)

(assert (=> b!5402415 (=> res!2296690 e!3349540)))

(assert (=> b!5402415 (= res!2296690 (not (= (unfocusZipper!911 lt!2202079) (reg!15498 (regOne!30850 r!7292)))))))

(assert (=> b!5402415 (= lt!2202079 (Cons!61683 lt!2202050 Nil!61683))))

(assert (=> b!5402415 (= (flatMap!896 lt!2202055 lambda!281369) (derivationStepZipperUp!541 lt!2202052 (h!68132 s!2326)))))

(declare-fun lt!2202047 () Unit!154198)

(assert (=> b!5402415 (= lt!2202047 (lemmaFlatMapOnSingletonSet!428 lt!2202055 lt!2202052 lambda!281369))))

(assert (=> b!5402415 (= (flatMap!896 lt!2202049 lambda!281369) (derivationStepZipperUp!541 lt!2202050 (h!68132 s!2326)))))

(declare-fun lt!2202069 () Unit!154198)

(assert (=> b!5402415 (= lt!2202069 (lemmaFlatMapOnSingletonSet!428 lt!2202049 lt!2202050 lambda!281369))))

(declare-fun lt!2202085 () (InoxSet Context!9106))

(assert (=> b!5402415 (= lt!2202085 (derivationStepZipperUp!541 lt!2202052 (h!68132 s!2326)))))

(declare-fun lt!2202056 () (InoxSet Context!9106))

(assert (=> b!5402415 (= lt!2202056 (derivationStepZipperUp!541 lt!2202050 (h!68132 s!2326)))))

(assert (=> b!5402415 (= lt!2202055 (store ((as const (Array Context!9106 Bool)) false) lt!2202052 true))))

(assert (=> b!5402415 (= lt!2202049 (store ((as const (Array Context!9106 Bool)) false) lt!2202050 true))))

(assert (=> b!5402415 (= lt!2202050 (Context!9107 lt!2202088))))

(assert (=> b!5402415 (= lt!2202088 (Cons!61682 (reg!15498 (regOne!30850 r!7292)) Nil!61682))))

(declare-fun b!5402416 () Bool)

(declare-fun tp!1494545 () Bool)

(assert (=> b!5402416 (= e!3349545 (and tp_is_empty!39591 tp!1494545))))

(declare-fun b!5402417 () Bool)

(assert (=> b!5402417 (= e!3349539 (matchZipper!1413 lt!2202070 (t!375031 s!2326)))))

(declare-fun b!5402418 () Bool)

(declare-fun nullable!5338 (Regex!15169) Bool)

(assert (=> b!5402418 (= e!3349552 (nullable!5338 (regOne!30850 (regOne!30850 r!7292))))))

(declare-fun b!5402419 () Bool)

(assert (=> b!5402419 (= e!3349541 e!3349546)))

(declare-fun res!2296687 () Bool)

(assert (=> b!5402419 (=> res!2296687 e!3349546)))

(assert (=> b!5402419 (= res!2296687 e!3349533)))

(declare-fun res!2296699 () Bool)

(assert (=> b!5402419 (=> (not res!2296699) (not e!3349533))))

(assert (=> b!5402419 (= res!2296699 (not lt!2202066))))

(assert (=> b!5402419 (= lt!2202066 (matchZipper!1413 lt!2202087 (t!375031 s!2326)))))

(declare-fun b!5402420 () Bool)

(assert (=> b!5402420 (= e!3349549 lt!2202075)))

(declare-fun b!5402421 () Bool)

(declare-fun res!2296696 () Bool)

(assert (=> b!5402421 (=> res!2296696 e!3349544)))

(assert (=> b!5402421 (= res!2296696 (or ((_ is Concat!24014) (regOne!30850 r!7292)) (not ((_ is Star!15169) (regOne!30850 r!7292)))))))

(assert (=> b!5402422 (= e!3349557 e!3349543)))

(declare-fun res!2296675 () Bool)

(assert (=> b!5402422 (=> res!2296675 e!3349543)))

(declare-fun lt!2202046 () Bool)

(assert (=> b!5402422 (= res!2296675 (or (not (= lt!2202062 lt!2202046)) ((_ is Nil!61684) s!2326)))))

(declare-fun Exists!2350 (Int) Bool)

(assert (=> b!5402422 (= (Exists!2350 lambda!281367) (Exists!2350 lambda!281368))))

(declare-fun lt!2202081 () Unit!154198)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1004 (Regex!15169 Regex!15169 List!61808) Unit!154198)

(assert (=> b!5402422 (= lt!2202081 (lemmaExistCutMatchRandMatchRSpecEquivalent!1004 (regOne!30850 r!7292) (regTwo!30850 r!7292) s!2326))))

(assert (=> b!5402422 (= lt!2202046 (Exists!2350 lambda!281367))))

(declare-fun findConcatSeparation!1694 (Regex!15169 Regex!15169 List!61808 List!61808 List!61808) Option!15280)

(assert (=> b!5402422 (= lt!2202046 (isDefined!11983 (findConcatSeparation!1694 (regOne!30850 r!7292) (regTwo!30850 r!7292) Nil!61684 s!2326 s!2326)))))

(declare-fun lt!2202078 () Unit!154198)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1458 (Regex!15169 Regex!15169 List!61808) Unit!154198)

(assert (=> b!5402422 (= lt!2202078 (lemmaFindConcatSeparationEquivalentToExists!1458 (regOne!30850 r!7292) (regTwo!30850 r!7292) s!2326))))

(declare-fun setIsEmpty!35159 () Bool)

(assert (=> setIsEmpty!35159 setRes!35159))

(declare-fun b!5402423 () Bool)

(declare-fun tp!1494544 () Bool)

(declare-fun tp!1494541 () Bool)

(assert (=> b!5402423 (= e!3349547 (and tp!1494544 tp!1494541))))

(declare-fun b!5402424 () Bool)

(declare-fun e!3349535 () Bool)

(assert (=> b!5402424 (= e!3349558 e!3349535)))

(declare-fun res!2296694 () Bool)

(assert (=> b!5402424 (=> (not res!2296694) (not e!3349535))))

(assert (=> b!5402424 (= res!2296694 (= r!7292 lt!2202072))))

(assert (=> b!5402424 (= lt!2202072 (unfocusZipper!911 zl!343))))

(declare-fun b!5402425 () Bool)

(assert (=> b!5402425 (= e!3349535 (not e!3349557))))

(declare-fun res!2296698 () Bool)

(assert (=> b!5402425 (=> res!2296698 e!3349557)))

(assert (=> b!5402425 (= res!2296698 (not ((_ is Cons!61683) zl!343)))))

(assert (=> b!5402425 (= lt!2202062 (matchRSpec!2272 r!7292 s!2326))))

(assert (=> b!5402425 (= lt!2202062 (matchR!7354 r!7292 s!2326))))

(declare-fun lt!2202092 () Unit!154198)

(assert (=> b!5402425 (= lt!2202092 (mainMatchTheorem!2272 r!7292 s!2326))))

(declare-fun b!5402426 () Bool)

(assert (=> b!5402426 (= e!3349542 e!3349555)))

(declare-fun res!2296701 () Bool)

(assert (=> b!5402426 (=> res!2296701 e!3349555)))

(assert (=> b!5402426 (= res!2296701 (not (= (unfocusZipper!911 (Cons!61683 lt!2202082 Nil!61683)) lt!2202065)))))

(assert (=> b!5402426 (= lt!2202065 (Concat!24014 (reg!15498 (regOne!30850 r!7292)) lt!2202054))))

(declare-fun b!5402427 () Bool)

(assert (=> b!5402427 (= e!3349551 e!3349538)))

(declare-fun res!2296676 () Bool)

(assert (=> b!5402427 (=> res!2296676 e!3349538)))

(assert (=> b!5402427 (= res!2296676 (not (= lt!2202093 (matchZipper!1413 lt!2202091 (t!375031 s!2326)))))))

(assert (=> b!5402427 (= lt!2202093 (matchZipper!1413 lt!2202048 s!2326))))

(declare-fun b!5402428 () Bool)

(declare-fun Unit!154201 () Unit!154198)

(assert (=> b!5402428 (= e!3349536 Unit!154201)))

(assert (=> b!5402429 (= e!3349546 e!3349537)))

(declare-fun res!2296697 () Bool)

(assert (=> b!5402429 (=> res!2296697 e!3349537)))

(declare-fun appendTo!28 ((InoxSet Context!9106) Context!9106) (InoxSet Context!9106))

(assert (=> b!5402429 (= res!2296697 (not (= (appendTo!28 lt!2202049 lt!2202052) lt!2202048)))))

(declare-fun lambda!281370 () Int)

(declare-fun map!14138 ((InoxSet Context!9106) Int) (InoxSet Context!9106))

(assert (=> b!5402429 (= (map!14138 lt!2202049 lambda!281370) (store ((as const (Array Context!9106 Bool)) false) (Context!9107 (++!13511 lt!2202088 lt!2202073)) true))))

(declare-fun lt!2202077 () Unit!154198)

(assert (=> b!5402429 (= lt!2202077 (lemmaConcatPreservesForall!194 lt!2202088 lt!2202073 lambda!281371))))

(declare-fun lt!2202071 () Unit!154198)

(declare-fun lemmaMapOnSingletonSet!28 ((InoxSet Context!9106) Context!9106 Int) Unit!154198)

(assert (=> b!5402429 (= lt!2202071 (lemmaMapOnSingletonSet!28 lt!2202049 lt!2202050 lambda!281370))))

(assert (=> b!5402430 (= e!3349543 e!3349544)))

(declare-fun res!2296674 () Bool)

(assert (=> b!5402430 (=> res!2296674 e!3349544)))

(assert (=> b!5402430 (= res!2296674 (or (and ((_ is ElementMatch!15169) (regOne!30850 r!7292)) (= (c!941683 (regOne!30850 r!7292)) (h!68132 s!2326))) ((_ is Union!15169) (regOne!30850 r!7292))))))

(declare-fun lt!2202053 () Unit!154198)

(assert (=> b!5402430 (= lt!2202053 e!3349536)))

(declare-fun c!941682 () Bool)

(assert (=> b!5402430 (= c!941682 lt!2202089)))

(assert (=> b!5402430 (= lt!2202089 (nullable!5338 (h!68130 (exprs!5053 (h!68131 zl!343)))))))

(assert (=> b!5402430 (= (flatMap!896 z!1189 lambda!281369) (derivationStepZipperUp!541 (h!68131 zl!343) (h!68132 s!2326)))))

(declare-fun lt!2202090 () Unit!154198)

(assert (=> b!5402430 (= lt!2202090 (lemmaFlatMapOnSingletonSet!428 z!1189 (h!68131 zl!343) lambda!281369))))

(declare-fun lt!2202060 () Context!9106)

(assert (=> b!5402430 (= lt!2202070 (derivationStepZipperUp!541 lt!2202060 (h!68132 s!2326)))))

(assert (=> b!5402430 (= lt!2202087 (derivationStepZipperDown!617 (h!68130 (exprs!5053 (h!68131 zl!343))) lt!2202060 (h!68132 s!2326)))))

(assert (=> b!5402430 (= lt!2202060 (Context!9107 (t!375029 (exprs!5053 (h!68131 zl!343)))))))

(declare-fun lt!2202064 () (InoxSet Context!9106))

(assert (=> b!5402430 (= lt!2202064 (derivationStepZipperUp!541 (Context!9107 (Cons!61682 (h!68130 (exprs!5053 (h!68131 zl!343))) (t!375029 (exprs!5053 (h!68131 zl!343))))) (h!68132 s!2326)))))

(declare-fun b!5402431 () Bool)

(declare-fun res!2296700 () Bool)

(assert (=> b!5402431 (=> res!2296700 e!3349554)))

(assert (=> b!5402431 (= res!2296700 (not (matchZipper!1413 lt!2202055 (_2!35671 lt!2202057))))))

(assert (= (and start!567474 res!2296685) b!5402399))

(assert (= (and b!5402399 res!2296677) b!5402424))

(assert (= (and b!5402424 res!2296694) b!5402425))

(assert (= (and b!5402425 (not res!2296698)) b!5402388))

(assert (= (and b!5402388 (not res!2296684)) b!5402390))

(assert (= (and b!5402390 (not res!2296706)) b!5402406))

(assert (= (and b!5402406 (not res!2296688)) b!5402397))

(assert (= (and b!5402397 (not res!2296695)) b!5402407))

(assert (= (and b!5402407 (not res!2296707)) b!5402422))

(assert (= (and b!5402422 (not res!2296675)) b!5402400))

(assert (= (and b!5402400 (not res!2296682)) b!5402430))

(assert (= (and b!5402430 c!941682) b!5402393))

(assert (= (and b!5402430 (not c!941682)) b!5402428))

(assert (= (and b!5402393 (not res!2296680)) b!5402417))

(assert (= (and b!5402430 (not res!2296674)) b!5402413))

(assert (= (and b!5402413 res!2296692) b!5402418))

(assert (= (and b!5402413 (not res!2296673)) b!5402421))

(assert (= (and b!5402421 (not res!2296696)) b!5402410))

(assert (= (and b!5402410 (not res!2296693)) b!5402389))

(assert (= (and b!5402389 (not res!2296691)) b!5402427))

(assert (= (and b!5402427 (not res!2296676)) b!5402396))

(assert (= (and b!5402396 (not res!2296679)) b!5402405))

(assert (= (and b!5402405 (not res!2296683)) b!5402426))

(assert (= (and b!5402426 (not res!2296701)) b!5402415))

(assert (= (and b!5402415 (not res!2296690)) b!5402392))

(assert (= (and b!5402392 (not res!2296702)) b!5402404))

(assert (= (and b!5402404 (not res!2296681)) b!5402411))

(assert (= (and b!5402411 (not res!2296689)) b!5402414))

(assert (= (and b!5402414 (not res!2296686)) b!5402419))

(assert (= (and b!5402419 res!2296699) b!5402402))

(assert (= (and b!5402419 (not res!2296687)) b!5402409))

(assert (= (and b!5402409 (not res!2296703)) b!5402429))

(assert (= (and b!5402429 (not res!2296697)) b!5402398))

(assert (= (and b!5402398 (not res!2296704)) b!5402412))

(assert (= (and b!5402412 (not res!2296678)) b!5402431))

(assert (= (and b!5402431 (not res!2296700)) b!5402395))

(assert (= (and b!5402395 res!2296705) b!5402420))

(assert (= (and start!567474 ((_ is ElementMatch!15169) r!7292)) b!5402408))

(assert (= (and start!567474 ((_ is Concat!24014) r!7292)) b!5402401))

(assert (= (and start!567474 ((_ is Star!15169) r!7292)) b!5402403))

(assert (= (and start!567474 ((_ is Union!15169) r!7292)) b!5402423))

(assert (= (and start!567474 condSetEmpty!35159) setIsEmpty!35159))

(assert (= (and start!567474 (not condSetEmpty!35159)) setNonEmpty!35159))

(assert (= setNonEmpty!35159 b!5402391))

(assert (= b!5402387 b!5402394))

(assert (= (and start!567474 ((_ is Cons!61683) zl!343)) b!5402387))

(assert (= (and start!567474 ((_ is Cons!61684) s!2326)) b!5402416))

(declare-fun m!6426730 () Bool)

(assert (=> b!5402388 m!6426730))

(declare-fun m!6426732 () Bool)

(assert (=> b!5402400 m!6426732))

(declare-fun m!6426734 () Bool)

(assert (=> b!5402412 m!6426734))

(declare-fun m!6426736 () Bool)

(assert (=> start!567474 m!6426736))

(declare-fun m!6426738 () Bool)

(assert (=> b!5402429 m!6426738))

(declare-fun m!6426740 () Bool)

(assert (=> b!5402429 m!6426740))

(declare-fun m!6426742 () Bool)

(assert (=> b!5402429 m!6426742))

(declare-fun m!6426744 () Bool)

(assert (=> b!5402429 m!6426744))

(declare-fun m!6426746 () Bool)

(assert (=> b!5402429 m!6426746))

(declare-fun m!6426748 () Bool)

(assert (=> b!5402429 m!6426748))

(declare-fun m!6426750 () Bool)

(assert (=> b!5402402 m!6426750))

(declare-fun m!6426752 () Bool)

(assert (=> b!5402426 m!6426752))

(declare-fun m!6426754 () Bool)

(assert (=> b!5402390 m!6426754))

(declare-fun m!6426756 () Bool)

(assert (=> b!5402418 m!6426756))

(declare-fun m!6426758 () Bool)

(assert (=> b!5402399 m!6426758))

(declare-fun m!6426760 () Bool)

(assert (=> b!5402404 m!6426760))

(declare-fun m!6426762 () Bool)

(assert (=> b!5402404 m!6426762))

(declare-fun m!6426764 () Bool)

(assert (=> b!5402404 m!6426764))

(declare-fun m!6426766 () Bool)

(assert (=> b!5402422 m!6426766))

(declare-fun m!6426768 () Bool)

(assert (=> b!5402422 m!6426768))

(declare-fun m!6426770 () Bool)

(assert (=> b!5402422 m!6426770))

(declare-fun m!6426772 () Bool)

(assert (=> b!5402422 m!6426772))

(declare-fun m!6426774 () Bool)

(assert (=> b!5402422 m!6426774))

(assert (=> b!5402422 m!6426774))

(assert (=> b!5402422 m!6426766))

(declare-fun m!6426776 () Bool)

(assert (=> b!5402422 m!6426776))

(declare-fun m!6426778 () Bool)

(assert (=> b!5402424 m!6426778))

(declare-fun m!6426780 () Bool)

(assert (=> setNonEmpty!35159 m!6426780))

(declare-fun m!6426782 () Bool)

(assert (=> b!5402397 m!6426782))

(assert (=> b!5402397 m!6426782))

(declare-fun m!6426784 () Bool)

(assert (=> b!5402397 m!6426784))

(declare-fun m!6426786 () Bool)

(assert (=> b!5402398 m!6426786))

(declare-fun m!6426788 () Bool)

(assert (=> b!5402398 m!6426788))

(declare-fun m!6426790 () Bool)

(assert (=> b!5402398 m!6426790))

(declare-fun m!6426792 () Bool)

(assert (=> b!5402398 m!6426792))

(declare-fun m!6426794 () Bool)

(assert (=> b!5402398 m!6426794))

(declare-fun m!6426796 () Bool)

(assert (=> b!5402392 m!6426796))

(declare-fun m!6426798 () Bool)

(assert (=> b!5402427 m!6426798))

(declare-fun m!6426800 () Bool)

(assert (=> b!5402427 m!6426800))

(declare-fun m!6426802 () Bool)

(assert (=> b!5402389 m!6426802))

(declare-fun m!6426804 () Bool)

(assert (=> b!5402389 m!6426804))

(declare-fun m!6426806 () Bool)

(assert (=> b!5402389 m!6426806))

(declare-fun m!6426808 () Bool)

(assert (=> b!5402389 m!6426808))

(declare-fun m!6426810 () Bool)

(assert (=> b!5402389 m!6426810))

(declare-fun m!6426812 () Bool)

(assert (=> b!5402387 m!6426812))

(declare-fun m!6426814 () Bool)

(assert (=> b!5402430 m!6426814))

(declare-fun m!6426816 () Bool)

(assert (=> b!5402430 m!6426816))

(declare-fun m!6426818 () Bool)

(assert (=> b!5402430 m!6426818))

(declare-fun m!6426820 () Bool)

(assert (=> b!5402430 m!6426820))

(declare-fun m!6426822 () Bool)

(assert (=> b!5402430 m!6426822))

(declare-fun m!6426824 () Bool)

(assert (=> b!5402430 m!6426824))

(declare-fun m!6426826 () Bool)

(assert (=> b!5402430 m!6426826))

(assert (=> b!5402417 m!6426750))

(declare-fun m!6426828 () Bool)

(assert (=> b!5402415 m!6426828))

(declare-fun m!6426830 () Bool)

(assert (=> b!5402415 m!6426830))

(declare-fun m!6426832 () Bool)

(assert (=> b!5402415 m!6426832))

(declare-fun m!6426834 () Bool)

(assert (=> b!5402415 m!6426834))

(declare-fun m!6426836 () Bool)

(assert (=> b!5402415 m!6426836))

(declare-fun m!6426838 () Bool)

(assert (=> b!5402415 m!6426838))

(declare-fun m!6426840 () Bool)

(assert (=> b!5402415 m!6426840))

(declare-fun m!6426842 () Bool)

(assert (=> b!5402415 m!6426842))

(declare-fun m!6426844 () Bool)

(assert (=> b!5402415 m!6426844))

(declare-fun m!6426846 () Bool)

(assert (=> b!5402431 m!6426846))

(declare-fun m!6426848 () Bool)

(assert (=> b!5402425 m!6426848))

(declare-fun m!6426850 () Bool)

(assert (=> b!5402425 m!6426850))

(declare-fun m!6426852 () Bool)

(assert (=> b!5402425 m!6426852))

(declare-fun m!6426854 () Bool)

(assert (=> b!5402419 m!6426854))

(declare-fun m!6426856 () Bool)

(assert (=> b!5402411 m!6426856))

(declare-fun m!6426858 () Bool)

(assert (=> b!5402395 m!6426858))

(assert (=> b!5402395 m!6426738))

(declare-fun m!6426860 () Bool)

(assert (=> b!5402395 m!6426860))

(declare-fun m!6426862 () Bool)

(assert (=> b!5402395 m!6426862))

(declare-fun m!6426864 () Bool)

(assert (=> b!5402395 m!6426864))

(declare-fun m!6426866 () Bool)

(assert (=> b!5402395 m!6426866))

(assert (=> b!5402395 m!6426740))

(assert (=> b!5402395 m!6426742))

(declare-fun m!6426868 () Bool)

(assert (=> b!5402395 m!6426868))

(declare-fun m!6426870 () Bool)

(assert (=> b!5402395 m!6426870))

(assert (=> b!5402395 m!6426742))

(declare-fun m!6426872 () Bool)

(assert (=> b!5402395 m!6426872))

(declare-fun m!6426874 () Bool)

(assert (=> b!5402395 m!6426874))

(declare-fun m!6426876 () Bool)

(assert (=> b!5402395 m!6426876))

(declare-fun m!6426878 () Bool)

(assert (=> b!5402410 m!6426878))

(declare-fun m!6426880 () Bool)

(assert (=> b!5402393 m!6426880))

(assert (=> b!5402393 m!6426854))

(declare-fun m!6426882 () Bool)

(assert (=> b!5402393 m!6426882))

(check-sat (not b!5402404) (not b!5402415) (not start!567474) (not b!5402417) (not b!5402388) (not b!5402418) (not b!5402426) (not b!5402429) (not b!5402402) tp_is_empty!39591 (not b!5402411) (not b!5402389) (not b!5402422) (not b!5402398) (not b!5402391) (not b!5402393) (not setNonEmpty!35159) (not b!5402423) (not b!5402425) (not b!5402390) (not b!5402395) (not b!5402394) (not b!5402401) (not b!5402403) (not b!5402387) (not b!5402397) (not b!5402400) (not b!5402431) (not b!5402410) (not b!5402424) (not b!5402430) (not b!5402399) (not b!5402427) (not b!5402416) (not b!5402392) (not b!5402419) (not b!5402412))
(check-sat)
