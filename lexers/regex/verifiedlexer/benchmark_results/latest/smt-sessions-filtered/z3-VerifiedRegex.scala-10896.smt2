; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563486 () Bool)

(assert start!563486)

(declare-fun b!5351018 () Bool)

(assert (=> b!5351018 true))

(assert (=> b!5351018 true))

(declare-fun lambda!275082 () Int)

(declare-fun lambda!275081 () Int)

(assert (=> b!5351018 (not (= lambda!275082 lambda!275081))))

(assert (=> b!5351018 true))

(assert (=> b!5351018 true))

(declare-fun b!5351029 () Bool)

(assert (=> b!5351029 true))

(declare-fun bs!1240546 () Bool)

(declare-fun b!5351039 () Bool)

(assert (= bs!1240546 (and b!5351039 b!5351018)))

(declare-fun lambda!275084 () Int)

(declare-datatypes ((C!30348 0))(
  ( (C!30349 (val!24876 Int)) )
))
(declare-datatypes ((Regex!15039 0))(
  ( (ElementMatch!15039 (c!931565 C!30348)) (Concat!23884 (regOne!30590 Regex!15039) (regTwo!30590 Regex!15039)) (EmptyExpr!15039) (Star!15039 (reg!15368 Regex!15039)) (EmptyLang!15039) (Union!15039 (regOne!30591 Regex!15039) (regTwo!30591 Regex!15039)) )
))
(declare-fun r!7292 () Regex!15039)

(declare-fun lt!2181244 () Regex!15039)

(assert (=> bs!1240546 (= (and (= (regOne!30590 (regOne!30590 r!7292)) (regOne!30590 r!7292)) (= lt!2181244 (regTwo!30590 r!7292))) (= lambda!275084 lambda!275081))))

(assert (=> bs!1240546 (not (= lambda!275084 lambda!275082))))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(declare-fun lambda!275085 () Int)

(assert (=> bs!1240546 (not (= lambda!275085 lambda!275081))))

(assert (=> bs!1240546 (= (and (= (regOne!30590 (regOne!30590 r!7292)) (regOne!30590 r!7292)) (= lt!2181244 (regTwo!30590 r!7292))) (= lambda!275085 lambda!275082))))

(assert (=> b!5351039 (not (= lambda!275085 lambda!275084))))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(declare-fun lt!2181216 () Regex!15039)

(declare-fun lambda!275086 () Int)

(assert (=> bs!1240546 (= (and (= (regTwo!30590 (regOne!30590 r!7292)) (regOne!30590 r!7292)) (= lt!2181216 (regTwo!30590 r!7292))) (= lambda!275086 lambda!275081))))

(assert (=> bs!1240546 (not (= lambda!275086 lambda!275082))))

(assert (=> b!5351039 (= (and (= (regTwo!30590 (regOne!30590 r!7292)) (regOne!30590 (regOne!30590 r!7292))) (= lt!2181216 lt!2181244)) (= lambda!275086 lambda!275084))))

(assert (=> b!5351039 (not (= lambda!275086 lambda!275085))))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(declare-fun lambda!275087 () Int)

(assert (=> bs!1240546 (= (and (= (regTwo!30590 (regOne!30590 r!7292)) (regOne!30590 r!7292)) (= lt!2181216 (regTwo!30590 r!7292))) (= lambda!275087 lambda!275082))))

(assert (=> b!5351039 (= (and (= (regTwo!30590 (regOne!30590 r!7292)) (regOne!30590 (regOne!30590 r!7292))) (= lt!2181216 lt!2181244)) (= lambda!275087 lambda!275085))))

(assert (=> b!5351039 (not (= lambda!275087 lambda!275084))))

(assert (=> bs!1240546 (not (= lambda!275087 lambda!275081))))

(assert (=> b!5351039 (not (= lambda!275087 lambda!275086))))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(assert (=> b!5351039 true))

(declare-fun b!5351014 () Bool)

(declare-fun res!2270431 () Bool)

(declare-fun e!3321794 () Bool)

(assert (=> b!5351014 (=> res!2270431 e!3321794)))

(declare-datatypes ((List!61416 0))(
  ( (Nil!61292) (Cons!61292 (h!67740 Regex!15039) (t!374633 List!61416)) )
))
(declare-datatypes ((Context!8846 0))(
  ( (Context!8847 (exprs!4923 List!61416)) )
))
(declare-datatypes ((List!61417 0))(
  ( (Nil!61293) (Cons!61293 (h!67741 Context!8846) (t!374634 List!61417)) )
))
(declare-fun zl!343 () List!61417)

(declare-fun generalisedConcat!708 (List!61416) Regex!15039)

(assert (=> b!5351014 (= res!2270431 (not (= r!7292 (generalisedConcat!708 (exprs!4923 (h!67741 zl!343))))))))

(declare-fun b!5351015 () Bool)

(declare-fun res!2270439 () Bool)

(declare-fun e!3321787 () Bool)

(assert (=> b!5351015 (=> res!2270439 e!3321787)))

(declare-datatypes ((List!61418 0))(
  ( (Nil!61294) (Cons!61294 (h!67742 C!30348) (t!374635 List!61418)) )
))
(declare-fun s!2326 () List!61418)

(declare-fun lt!2181241 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2181236 () (InoxSet Context!8846))

(declare-fun matchZipper!1283 ((InoxSet Context!8846) List!61418) Bool)

(assert (=> b!5351015 (= res!2270439 (not (= lt!2181241 (matchZipper!1283 lt!2181236 (t!374635 s!2326)))))))

(declare-fun b!5351016 () Bool)

(declare-fun res!2270433 () Bool)

(assert (=> b!5351016 (=> res!2270433 e!3321794)))

(declare-fun isEmpty!33271 (List!61417) Bool)

(assert (=> b!5351016 (= res!2270433 (not (isEmpty!33271 (t!374634 zl!343))))))

(declare-fun b!5351017 () Bool)

(declare-fun e!3321785 () Bool)

(declare-fun e!3321791 () Bool)

(assert (=> b!5351017 (= e!3321785 e!3321791)))

(declare-fun res!2270438 () Bool)

(assert (=> b!5351017 (=> res!2270438 e!3321791)))

(declare-fun lt!2181219 () (InoxSet Context!8846))

(declare-fun lt!2181214 () (InoxSet Context!8846))

(assert (=> b!5351017 (= res!2270438 (not (= lt!2181219 lt!2181214)))))

(declare-fun lt!2181234 () List!61416)

(declare-fun derivationStepZipperDown!487 (Regex!15039 Context!8846 C!30348) (InoxSet Context!8846))

(assert (=> b!5351017 (= lt!2181214 (derivationStepZipperDown!487 (regOne!30590 (regOne!30590 r!7292)) (Context!8847 lt!2181234) (h!67742 s!2326)))))

(assert (=> b!5351017 (= lt!2181234 (Cons!61292 (regTwo!30590 (regOne!30590 r!7292)) (t!374633 (exprs!4923 (h!67741 zl!343)))))))

(declare-fun e!3321800 () Bool)

(assert (=> b!5351018 (= e!3321794 e!3321800)))

(declare-fun res!2270432 () Bool)

(assert (=> b!5351018 (=> res!2270432 e!3321800)))

(declare-fun lt!2181220 () Bool)

(declare-fun lt!2181242 () Bool)

(get-info :version)

(assert (=> b!5351018 (= res!2270432 (or (not (= lt!2181242 lt!2181220)) ((_ is Nil!61294) s!2326)))))

(declare-fun Exists!2220 (Int) Bool)

(assert (=> b!5351018 (= (Exists!2220 lambda!275081) (Exists!2220 lambda!275082))))

(declare-datatypes ((Unit!153674 0))(
  ( (Unit!153675) )
))
(declare-fun lt!2181243 () Unit!153674)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!874 (Regex!15039 Regex!15039 List!61418) Unit!153674)

(assert (=> b!5351018 (= lt!2181243 (lemmaExistCutMatchRandMatchRSpecEquivalent!874 (regOne!30590 r!7292) (regTwo!30590 r!7292) s!2326))))

(assert (=> b!5351018 (= lt!2181220 (Exists!2220 lambda!275081))))

(declare-datatypes ((tuple2!64476 0))(
  ( (tuple2!64477 (_1!35541 List!61418) (_2!35541 List!61418)) )
))
(declare-datatypes ((Option!15150 0))(
  ( (None!15149) (Some!15149 (v!51178 tuple2!64476)) )
))
(declare-fun isDefined!11853 (Option!15150) Bool)

(declare-fun findConcatSeparation!1564 (Regex!15039 Regex!15039 List!61418 List!61418 List!61418) Option!15150)

(assert (=> b!5351018 (= lt!2181220 (isDefined!11853 (findConcatSeparation!1564 (regOne!30590 r!7292) (regTwo!30590 r!7292) Nil!61294 s!2326 s!2326)))))

(declare-fun lt!2181218 () Unit!153674)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1328 (Regex!15039 Regex!15039 List!61418) Unit!153674)

(assert (=> b!5351018 (= lt!2181218 (lemmaFindConcatSeparationEquivalentToExists!1328 (regOne!30590 r!7292) (regTwo!30590 r!7292) s!2326))))

(declare-fun b!5351019 () Bool)

(declare-fun res!2270424 () Bool)

(declare-fun e!3321786 () Bool)

(assert (=> b!5351019 (=> (not res!2270424) (not e!3321786))))

(declare-fun unfocusZipper!781 (List!61417) Regex!15039)

(assert (=> b!5351019 (= res!2270424 (= r!7292 (unfocusZipper!781 zl!343)))))

(declare-fun b!5351020 () Bool)

(declare-fun e!3321796 () Bool)

(declare-fun tp_is_empty!39331 () Bool)

(assert (=> b!5351020 (= e!3321796 tp_is_empty!39331)))

(declare-fun b!5351021 () Bool)

(declare-fun res!2270427 () Bool)

(declare-fun e!3321802 () Bool)

(assert (=> b!5351021 (=> res!2270427 e!3321802)))

(declare-fun lt!2181229 () Regex!15039)

(declare-fun matchR!7224 (Regex!15039 List!61418) Bool)

(assert (=> b!5351021 (= res!2270427 (not (= lt!2181242 (matchR!7224 (Concat!23884 lt!2181229 (regTwo!30590 r!7292)) s!2326))))))

(declare-fun b!5351022 () Bool)

(declare-fun res!2270415 () Bool)

(assert (=> b!5351022 (=> res!2270415 e!3321785)))

(declare-fun e!3321788 () Bool)

(assert (=> b!5351022 (= res!2270415 e!3321788)))

(declare-fun res!2270416 () Bool)

(assert (=> b!5351022 (=> (not res!2270416) (not e!3321788))))

(assert (=> b!5351022 (= res!2270416 ((_ is Concat!23884) (regOne!30590 r!7292)))))

(declare-fun b!5351023 () Bool)

(declare-fun res!2270440 () Bool)

(declare-fun e!3321797 () Bool)

(assert (=> b!5351023 (=> res!2270440 e!3321797)))

(declare-fun lt!2181211 () Context!8846)

(declare-fun contextDepthTotal!172 (Context!8846) Int)

(assert (=> b!5351023 (= res!2270440 (>= (contextDepthTotal!172 lt!2181211) (contextDepthTotal!172 (h!67741 zl!343))))))

(declare-fun b!5351024 () Bool)

(assert (=> b!5351024 (= e!3321787 e!3321797)))

(declare-fun res!2270418 () Bool)

(assert (=> b!5351024 (=> res!2270418 e!3321797)))

(assert (=> b!5351024 (= res!2270418 (not (= (exprs!4923 (h!67741 zl!343)) (Cons!61292 lt!2181229 (t!374633 (exprs!4923 (h!67741 zl!343)))))))))

(assert (=> b!5351024 (= lt!2181229 (Concat!23884 (regOne!30590 (regOne!30590 r!7292)) (regTwo!30590 (regOne!30590 r!7292))))))

(declare-fun b!5351025 () Bool)

(declare-fun e!3321795 () Bool)

(assert (=> b!5351025 (= e!3321797 e!3321795)))

(declare-fun res!2270426 () Bool)

(assert (=> b!5351025 (=> res!2270426 e!3321795)))

(declare-fun lt!2181226 () List!61417)

(declare-fun zipperDepthTotal!192 (List!61417) Int)

(assert (=> b!5351025 (= res!2270426 (>= (zipperDepthTotal!192 lt!2181226) (zipperDepthTotal!192 zl!343)))))

(assert (=> b!5351025 (= lt!2181226 (Cons!61293 lt!2181211 Nil!61293))))

(declare-fun b!5351026 () Bool)

(declare-fun e!3321792 () Bool)

(assert (=> b!5351026 (= e!3321802 e!3321792)))

(declare-fun res!2270421 () Bool)

(assert (=> b!5351026 (=> res!2270421 e!3321792)))

(declare-fun lt!2181228 () Bool)

(assert (=> b!5351026 (= res!2270421 (not (= lt!2181242 lt!2181228)))))

(assert (=> b!5351026 (= lt!2181228 (matchR!7224 (Concat!23884 lt!2181229 lt!2181216) s!2326))))

(declare-fun b!5351027 () Bool)

(declare-fun e!3321793 () Unit!153674)

(declare-fun Unit!153676 () Unit!153674)

(assert (=> b!5351027 (= e!3321793 Unit!153676)))

(declare-fun lt!2181224 () Unit!153674)

(declare-fun lt!2181231 () (InoxSet Context!8846))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!276 ((InoxSet Context!8846) (InoxSet Context!8846) List!61418) Unit!153674)

(assert (=> b!5351027 (= lt!2181224 (lemmaZipperConcatMatchesSameAsBothZippers!276 lt!2181219 lt!2181231 (t!374635 s!2326)))))

(declare-fun res!2270434 () Bool)

(assert (=> b!5351027 (= res!2270434 (matchZipper!1283 lt!2181219 (t!374635 s!2326)))))

(declare-fun e!3321789 () Bool)

(assert (=> b!5351027 (=> res!2270434 e!3321789)))

(assert (=> b!5351027 (= (matchZipper!1283 ((_ map or) lt!2181219 lt!2181231) (t!374635 s!2326)) e!3321789)))

(declare-fun b!5351028 () Bool)

(declare-fun res!2270428 () Bool)

(assert (=> b!5351028 (=> res!2270428 e!3321795)))

(declare-fun zipperDepth!148 (List!61417) Int)

(assert (=> b!5351028 (= res!2270428 (> (zipperDepth!148 lt!2181226) (zipperDepth!148 zl!343)))))

(declare-fun res!2270436 () Bool)

(assert (=> start!563486 (=> (not res!2270436) (not e!3321786))))

(declare-fun validRegex!6775 (Regex!15039) Bool)

(assert (=> start!563486 (= res!2270436 (validRegex!6775 r!7292))))

(assert (=> start!563486 e!3321786))

(assert (=> start!563486 e!3321796))

(declare-fun condSetEmpty!34567 () Bool)

(declare-fun z!1189 () (InoxSet Context!8846))

(assert (=> start!563486 (= condSetEmpty!34567 (= z!1189 ((as const (Array Context!8846 Bool)) false)))))

(declare-fun setRes!34567 () Bool)

(assert (=> start!563486 setRes!34567))

(declare-fun e!3321798 () Bool)

(assert (=> start!563486 e!3321798))

(declare-fun e!3321784 () Bool)

(assert (=> start!563486 e!3321784))

(declare-fun setIsEmpty!34567 () Bool)

(assert (=> setIsEmpty!34567 setRes!34567))

(assert (=> b!5351029 (= e!3321800 e!3321785)))

(declare-fun res!2270420 () Bool)

(assert (=> b!5351029 (=> res!2270420 e!3321785)))

(assert (=> b!5351029 (= res!2270420 (or (and ((_ is ElementMatch!15039) (regOne!30590 r!7292)) (= (c!931565 (regOne!30590 r!7292)) (h!67742 s!2326))) ((_ is Union!15039) (regOne!30590 r!7292))))))

(declare-fun lt!2181213 () Unit!153674)

(assert (=> b!5351029 (= lt!2181213 e!3321793)))

(declare-fun c!931564 () Bool)

(declare-fun nullable!5208 (Regex!15039) Bool)

(assert (=> b!5351029 (= c!931564 (nullable!5208 (h!67740 (exprs!4923 (h!67741 zl!343)))))))

(declare-fun lambda!275083 () Int)

(declare-fun flatMap!766 ((InoxSet Context!8846) Int) (InoxSet Context!8846))

(declare-fun derivationStepZipperUp!411 (Context!8846 C!30348) (InoxSet Context!8846))

(assert (=> b!5351029 (= (flatMap!766 z!1189 lambda!275083) (derivationStepZipperUp!411 (h!67741 zl!343) (h!67742 s!2326)))))

(declare-fun lt!2181247 () Unit!153674)

(declare-fun lemmaFlatMapOnSingletonSet!298 ((InoxSet Context!8846) Context!8846 Int) Unit!153674)

(assert (=> b!5351029 (= lt!2181247 (lemmaFlatMapOnSingletonSet!298 z!1189 (h!67741 zl!343) lambda!275083))))

(declare-fun lt!2181227 () Context!8846)

(assert (=> b!5351029 (= lt!2181231 (derivationStepZipperUp!411 lt!2181227 (h!67742 s!2326)))))

(assert (=> b!5351029 (= lt!2181219 (derivationStepZipperDown!487 (h!67740 (exprs!4923 (h!67741 zl!343))) lt!2181227 (h!67742 s!2326)))))

(assert (=> b!5351029 (= lt!2181227 (Context!8847 (t!374633 (exprs!4923 (h!67741 zl!343)))))))

(declare-fun lt!2181240 () (InoxSet Context!8846))

(assert (=> b!5351029 (= lt!2181240 (derivationStepZipperUp!411 (Context!8847 (Cons!61292 (h!67740 (exprs!4923 (h!67741 zl!343))) (t!374633 (exprs!4923 (h!67741 zl!343))))) (h!67742 s!2326)))))

(declare-fun b!5351030 () Bool)

(declare-fun res!2270414 () Bool)

(assert (=> b!5351030 (=> res!2270414 e!3321785)))

(assert (=> b!5351030 (= res!2270414 (not ((_ is Concat!23884) (regOne!30590 r!7292))))))

(declare-fun b!5351031 () Bool)

(assert (=> b!5351031 (= e!3321786 (not e!3321794))))

(declare-fun res!2270425 () Bool)

(assert (=> b!5351031 (=> res!2270425 e!3321794)))

(assert (=> b!5351031 (= res!2270425 (not ((_ is Cons!61293) zl!343)))))

(declare-fun matchRSpec!2142 (Regex!15039 List!61418) Bool)

(assert (=> b!5351031 (= lt!2181242 (matchRSpec!2142 r!7292 s!2326))))

(assert (=> b!5351031 (= lt!2181242 (matchR!7224 r!7292 s!2326))))

(declare-fun lt!2181239 () Unit!153674)

(declare-fun mainMatchTheorem!2142 (Regex!15039 List!61418) Unit!153674)

(assert (=> b!5351031 (= lt!2181239 (mainMatchTheorem!2142 r!7292 s!2326))))

(declare-fun b!5351032 () Bool)

(declare-fun res!2270429 () Bool)

(assert (=> b!5351032 (=> res!2270429 e!3321794)))

(assert (=> b!5351032 (= res!2270429 (or ((_ is EmptyExpr!15039) r!7292) ((_ is EmptyLang!15039) r!7292) ((_ is ElementMatch!15039) r!7292) ((_ is Union!15039) r!7292) (not ((_ is Concat!23884) r!7292))))))

(declare-fun b!5351033 () Bool)

(declare-fun res!2270417 () Bool)

(assert (=> b!5351033 (=> res!2270417 e!3321802)))

(assert (=> b!5351033 (= res!2270417 (not (= lt!2181242 (matchR!7224 (Concat!23884 (regOne!30590 r!7292) (regTwo!30590 r!7292)) s!2326))))))

(declare-fun b!5351034 () Bool)

(declare-fun e!3321790 () Bool)

(assert (=> b!5351034 (= e!3321791 e!3321790)))

(declare-fun res!2270430 () Bool)

(assert (=> b!5351034 (=> res!2270430 e!3321790)))

(assert (=> b!5351034 (= res!2270430 (not (= lt!2181241 (matchZipper!1283 lt!2181214 (t!374635 s!2326)))))))

(assert (=> b!5351034 (= lt!2181241 (matchZipper!1283 lt!2181219 (t!374635 s!2326)))))

(declare-fun b!5351035 () Bool)

(declare-fun res!2270423 () Bool)

(assert (=> b!5351035 (=> res!2270423 e!3321794)))

(assert (=> b!5351035 (= res!2270423 (not ((_ is Cons!61292) (exprs!4923 (h!67741 zl!343)))))))

(declare-fun b!5351036 () Bool)

(declare-fun res!2270422 () Bool)

(assert (=> b!5351036 (=> res!2270422 e!3321794)))

(declare-fun generalisedUnion!968 (List!61416) Regex!15039)

(declare-fun unfocusZipperList!481 (List!61417) List!61416)

(assert (=> b!5351036 (= res!2270422 (not (= r!7292 (generalisedUnion!968 (unfocusZipperList!481 zl!343)))))))

(declare-fun b!5351037 () Bool)

(declare-fun e!3321799 () Bool)

(declare-fun tp!1486394 () Bool)

(assert (=> b!5351037 (= e!3321799 tp!1486394)))

(declare-fun b!5351038 () Bool)

(declare-fun tp!1486395 () Bool)

(declare-fun tp!1486392 () Bool)

(assert (=> b!5351038 (= e!3321796 (and tp!1486395 tp!1486392))))

(assert (=> b!5351039 (= e!3321795 e!3321802)))

(declare-fun res!2270419 () Bool)

(assert (=> b!5351039 (=> res!2270419 e!3321802)))

(declare-fun lt!2181233 () Bool)

(declare-fun lt!2181235 () Bool)

(declare-fun lt!2181221 () Bool)

(assert (=> b!5351039 (= res!2270419 (or (not (= lt!2181221 lt!2181235)) (not (= lt!2181221 lt!2181233))))))

(assert (=> b!5351039 (= lt!2181221 (matchZipper!1283 z!1189 s!2326))))

(assert (=> b!5351039 (= (Exists!2220 lambda!275086) (Exists!2220 lambda!275087))))

(declare-fun lt!2181238 () Unit!153674)

(assert (=> b!5351039 (= lt!2181238 (lemmaExistCutMatchRandMatchRSpecEquivalent!874 (regTwo!30590 (regOne!30590 r!7292)) lt!2181216 s!2326))))

(assert (=> b!5351039 (= (isDefined!11853 (findConcatSeparation!1564 (regTwo!30590 (regOne!30590 r!7292)) lt!2181216 Nil!61294 s!2326 s!2326)) (Exists!2220 lambda!275086))))

(declare-fun lt!2181212 () Unit!153674)

(assert (=> b!5351039 (= lt!2181212 (lemmaFindConcatSeparationEquivalentToExists!1328 (regTwo!30590 (regOne!30590 r!7292)) lt!2181216 s!2326))))

(assert (=> b!5351039 (= lt!2181216 (generalisedConcat!708 (t!374633 (exprs!4923 (h!67741 zl!343)))))))

(assert (=> b!5351039 (= (matchR!7224 lt!2181244 s!2326) (matchRSpec!2142 lt!2181244 s!2326))))

(declare-fun lt!2181232 () Unit!153674)

(assert (=> b!5351039 (= lt!2181232 (mainMatchTheorem!2142 lt!2181244 s!2326))))

(assert (=> b!5351039 (= (Exists!2220 lambda!275084) (Exists!2220 lambda!275085))))

(declare-fun lt!2181222 () Unit!153674)

(assert (=> b!5351039 (= lt!2181222 (lemmaExistCutMatchRandMatchRSpecEquivalent!874 (regOne!30590 (regOne!30590 r!7292)) lt!2181244 s!2326))))

(assert (=> b!5351039 (= (isDefined!11853 (findConcatSeparation!1564 (regOne!30590 (regOne!30590 r!7292)) lt!2181244 Nil!61294 s!2326 s!2326)) (Exists!2220 lambda!275084))))

(declare-fun lt!2181217 () Unit!153674)

(assert (=> b!5351039 (= lt!2181217 (lemmaFindConcatSeparationEquivalentToExists!1328 (regOne!30590 (regOne!30590 r!7292)) lt!2181244 s!2326))))

(assert (=> b!5351039 (= lt!2181244 (generalisedConcat!708 lt!2181234))))

(declare-fun lt!2181237 () Regex!15039)

(assert (=> b!5351039 (= lt!2181233 (matchRSpec!2142 lt!2181237 s!2326))))

(declare-fun lt!2181223 () Unit!153674)

(assert (=> b!5351039 (= lt!2181223 (mainMatchTheorem!2142 lt!2181237 s!2326))))

(assert (=> b!5351039 (= lt!2181233 lt!2181235)))

(declare-fun lt!2181230 () (InoxSet Context!8846))

(assert (=> b!5351039 (= lt!2181235 (matchZipper!1283 lt!2181230 s!2326))))

(assert (=> b!5351039 (= lt!2181233 (matchR!7224 lt!2181237 s!2326))))

(declare-fun lt!2181248 () Unit!153674)

(declare-fun theoremZipperRegexEquiv!437 ((InoxSet Context!8846) List!61417 Regex!15039 List!61418) Unit!153674)

(assert (=> b!5351039 (= lt!2181248 (theoremZipperRegexEquiv!437 lt!2181230 lt!2181226 lt!2181237 s!2326))))

(declare-fun lt!2181245 () List!61416)

(assert (=> b!5351039 (= lt!2181237 (generalisedConcat!708 lt!2181245))))

(declare-fun b!5351040 () Bool)

(assert (=> b!5351040 (= e!3321792 true)))

(assert (=> b!5351040 (= lt!2181228 (matchR!7224 (Concat!23884 (regOne!30590 (regOne!30590 r!7292)) (Concat!23884 (regTwo!30590 (regOne!30590 r!7292)) lt!2181216)) s!2326))))

(declare-fun lt!2181225 () Unit!153674)

(declare-fun lemmaConcatAssociative!16 (Regex!15039 Regex!15039 Regex!15039 List!61418) Unit!153674)

(assert (=> b!5351040 (= lt!2181225 (lemmaConcatAssociative!16 (regOne!30590 (regOne!30590 r!7292)) (regTwo!30590 (regOne!30590 r!7292)) lt!2181216 s!2326))))

(declare-fun setElem!34567 () Context!8846)

(declare-fun tp!1486393 () Bool)

(declare-fun e!3321801 () Bool)

(declare-fun setNonEmpty!34567 () Bool)

(declare-fun inv!80844 (Context!8846) Bool)

(assert (=> setNonEmpty!34567 (= setRes!34567 (and tp!1486393 (inv!80844 setElem!34567) e!3321801))))

(declare-fun setRest!34567 () (InoxSet Context!8846))

(assert (=> setNonEmpty!34567 (= z!1189 ((_ map or) (store ((as const (Array Context!8846 Bool)) false) setElem!34567 true) setRest!34567))))

(declare-fun b!5351041 () Bool)

(declare-fun tp!1486399 () Bool)

(assert (=> b!5351041 (= e!3321784 (and tp_is_empty!39331 tp!1486399))))

(declare-fun b!5351042 () Bool)

(assert (=> b!5351042 (= e!3321788 (nullable!5208 (regOne!30590 (regOne!30590 r!7292))))))

(declare-fun b!5351043 () Bool)

(declare-fun tp!1486397 () Bool)

(assert (=> b!5351043 (= e!3321796 tp!1486397)))

(declare-fun b!5351044 () Bool)

(assert (=> b!5351044 (= e!3321789 (matchZipper!1283 lt!2181231 (t!374635 s!2326)))))

(declare-fun b!5351045 () Bool)

(declare-fun tp!1486398 () Bool)

(declare-fun tp!1486400 () Bool)

(assert (=> b!5351045 (= e!3321796 (and tp!1486398 tp!1486400))))

(declare-fun b!5351046 () Bool)

(declare-fun tp!1486396 () Bool)

(assert (=> b!5351046 (= e!3321798 (and (inv!80844 (h!67741 zl!343)) e!3321799 tp!1486396))))

(declare-fun b!5351047 () Bool)

(declare-fun tp!1486401 () Bool)

(assert (=> b!5351047 (= e!3321801 tp!1486401)))

(declare-fun b!5351048 () Bool)

(declare-fun Unit!153677 () Unit!153674)

(assert (=> b!5351048 (= e!3321793 Unit!153677)))

(declare-fun b!5351049 () Bool)

(assert (=> b!5351049 (= e!3321790 e!3321787)))

(declare-fun res!2270437 () Bool)

(assert (=> b!5351049 (=> res!2270437 e!3321787)))

(assert (=> b!5351049 (= res!2270437 (not (= lt!2181236 lt!2181214)))))

(assert (=> b!5351049 (= (flatMap!766 lt!2181230 lambda!275083) (derivationStepZipperUp!411 lt!2181211 (h!67742 s!2326)))))

(declare-fun lt!2181215 () Unit!153674)

(assert (=> b!5351049 (= lt!2181215 (lemmaFlatMapOnSingletonSet!298 lt!2181230 lt!2181211 lambda!275083))))

(declare-fun lt!2181246 () (InoxSet Context!8846))

(assert (=> b!5351049 (= lt!2181246 (derivationStepZipperUp!411 lt!2181211 (h!67742 s!2326)))))

(declare-fun derivationStepZipper!1280 ((InoxSet Context!8846) C!30348) (InoxSet Context!8846))

(assert (=> b!5351049 (= lt!2181236 (derivationStepZipper!1280 lt!2181230 (h!67742 s!2326)))))

(assert (=> b!5351049 (= lt!2181230 (store ((as const (Array Context!8846 Bool)) false) lt!2181211 true))))

(assert (=> b!5351049 (= lt!2181211 (Context!8847 lt!2181245))))

(assert (=> b!5351049 (= lt!2181245 (Cons!61292 (regOne!30590 (regOne!30590 r!7292)) lt!2181234))))

(declare-fun b!5351050 () Bool)

(declare-fun res!2270435 () Bool)

(assert (=> b!5351050 (=> (not res!2270435) (not e!3321786))))

(declare-fun toList!8823 ((InoxSet Context!8846)) List!61417)

(assert (=> b!5351050 (= res!2270435 (= (toList!8823 z!1189) zl!343))))

(declare-fun b!5351051 () Bool)

(declare-fun res!2270441 () Bool)

(assert (=> b!5351051 (=> res!2270441 e!3321800)))

(declare-fun isEmpty!33272 (List!61416) Bool)

(assert (=> b!5351051 (= res!2270441 (isEmpty!33272 (t!374633 (exprs!4923 (h!67741 zl!343)))))))

(assert (= (and start!563486 res!2270436) b!5351050))

(assert (= (and b!5351050 res!2270435) b!5351019))

(assert (= (and b!5351019 res!2270424) b!5351031))

(assert (= (and b!5351031 (not res!2270425)) b!5351016))

(assert (= (and b!5351016 (not res!2270433)) b!5351014))

(assert (= (and b!5351014 (not res!2270431)) b!5351035))

(assert (= (and b!5351035 (not res!2270423)) b!5351036))

(assert (= (and b!5351036 (not res!2270422)) b!5351032))

(assert (= (and b!5351032 (not res!2270429)) b!5351018))

(assert (= (and b!5351018 (not res!2270432)) b!5351051))

(assert (= (and b!5351051 (not res!2270441)) b!5351029))

(assert (= (and b!5351029 c!931564) b!5351027))

(assert (= (and b!5351029 (not c!931564)) b!5351048))

(assert (= (and b!5351027 (not res!2270434)) b!5351044))

(assert (= (and b!5351029 (not res!2270420)) b!5351022))

(assert (= (and b!5351022 res!2270416) b!5351042))

(assert (= (and b!5351022 (not res!2270415)) b!5351030))

(assert (= (and b!5351030 (not res!2270414)) b!5351017))

(assert (= (and b!5351017 (not res!2270438)) b!5351034))

(assert (= (and b!5351034 (not res!2270430)) b!5351049))

(assert (= (and b!5351049 (not res!2270437)) b!5351015))

(assert (= (and b!5351015 (not res!2270439)) b!5351024))

(assert (= (and b!5351024 (not res!2270418)) b!5351023))

(assert (= (and b!5351023 (not res!2270440)) b!5351025))

(assert (= (and b!5351025 (not res!2270426)) b!5351028))

(assert (= (and b!5351028 (not res!2270428)) b!5351039))

(assert (= (and b!5351039 (not res!2270419)) b!5351033))

(assert (= (and b!5351033 (not res!2270417)) b!5351021))

(assert (= (and b!5351021 (not res!2270427)) b!5351026))

(assert (= (and b!5351026 (not res!2270421)) b!5351040))

(assert (= (and start!563486 ((_ is ElementMatch!15039) r!7292)) b!5351020))

(assert (= (and start!563486 ((_ is Concat!23884) r!7292)) b!5351045))

(assert (= (and start!563486 ((_ is Star!15039) r!7292)) b!5351043))

(assert (= (and start!563486 ((_ is Union!15039) r!7292)) b!5351038))

(assert (= (and start!563486 condSetEmpty!34567) setIsEmpty!34567))

(assert (= (and start!563486 (not condSetEmpty!34567)) setNonEmpty!34567))

(assert (= setNonEmpty!34567 b!5351047))

(assert (= b!5351046 b!5351037))

(assert (= (and start!563486 ((_ is Cons!61293) zl!343)) b!5351046))

(assert (= (and start!563486 ((_ is Cons!61294) s!2326)) b!5351041))

(declare-fun m!6382044 () Bool)

(assert (=> b!5351036 m!6382044))

(assert (=> b!5351036 m!6382044))

(declare-fun m!6382046 () Bool)

(assert (=> b!5351036 m!6382046))

(declare-fun m!6382048 () Bool)

(assert (=> b!5351031 m!6382048))

(declare-fun m!6382050 () Bool)

(assert (=> b!5351031 m!6382050))

(declare-fun m!6382052 () Bool)

(assert (=> b!5351031 m!6382052))

(declare-fun m!6382054 () Bool)

(assert (=> b!5351034 m!6382054))

(declare-fun m!6382056 () Bool)

(assert (=> b!5351034 m!6382056))

(declare-fun m!6382058 () Bool)

(assert (=> b!5351018 m!6382058))

(declare-fun m!6382060 () Bool)

(assert (=> b!5351018 m!6382060))

(declare-fun m!6382062 () Bool)

(assert (=> b!5351018 m!6382062))

(declare-fun m!6382064 () Bool)

(assert (=> b!5351018 m!6382064))

(declare-fun m!6382066 () Bool)

(assert (=> b!5351018 m!6382066))

(assert (=> b!5351018 m!6382062))

(assert (=> b!5351018 m!6382058))

(declare-fun m!6382068 () Bool)

(assert (=> b!5351018 m!6382068))

(declare-fun m!6382070 () Bool)

(assert (=> start!563486 m!6382070))

(declare-fun m!6382072 () Bool)

(assert (=> b!5351042 m!6382072))

(declare-fun m!6382074 () Bool)

(assert (=> b!5351039 m!6382074))

(declare-fun m!6382076 () Bool)

(assert (=> b!5351039 m!6382076))

(declare-fun m!6382078 () Bool)

(assert (=> b!5351039 m!6382078))

(declare-fun m!6382080 () Bool)

(assert (=> b!5351039 m!6382080))

(declare-fun m!6382082 () Bool)

(assert (=> b!5351039 m!6382082))

(declare-fun m!6382084 () Bool)

(assert (=> b!5351039 m!6382084))

(declare-fun m!6382086 () Bool)

(assert (=> b!5351039 m!6382086))

(declare-fun m!6382088 () Bool)

(assert (=> b!5351039 m!6382088))

(declare-fun m!6382090 () Bool)

(assert (=> b!5351039 m!6382090))

(assert (=> b!5351039 m!6382078))

(declare-fun m!6382092 () Bool)

(assert (=> b!5351039 m!6382092))

(assert (=> b!5351039 m!6382074))

(declare-fun m!6382094 () Bool)

(assert (=> b!5351039 m!6382094))

(declare-fun m!6382096 () Bool)

(assert (=> b!5351039 m!6382096))

(declare-fun m!6382098 () Bool)

(assert (=> b!5351039 m!6382098))

(declare-fun m!6382100 () Bool)

(assert (=> b!5351039 m!6382100))

(declare-fun m!6382102 () Bool)

(assert (=> b!5351039 m!6382102))

(declare-fun m!6382104 () Bool)

(assert (=> b!5351039 m!6382104))

(declare-fun m!6382106 () Bool)

(assert (=> b!5351039 m!6382106))

(declare-fun m!6382108 () Bool)

(assert (=> b!5351039 m!6382108))

(assert (=> b!5351039 m!6382102))

(declare-fun m!6382110 () Bool)

(assert (=> b!5351039 m!6382110))

(declare-fun m!6382112 () Bool)

(assert (=> b!5351039 m!6382112))

(declare-fun m!6382114 () Bool)

(assert (=> b!5351039 m!6382114))

(declare-fun m!6382116 () Bool)

(assert (=> b!5351039 m!6382116))

(assert (=> b!5351039 m!6382114))

(declare-fun m!6382118 () Bool)

(assert (=> b!5351039 m!6382118))

(declare-fun m!6382120 () Bool)

(assert (=> b!5351039 m!6382120))

(declare-fun m!6382122 () Bool)

(assert (=> b!5351049 m!6382122))

(declare-fun m!6382124 () Bool)

(assert (=> b!5351049 m!6382124))

(declare-fun m!6382126 () Bool)

(assert (=> b!5351049 m!6382126))

(declare-fun m!6382128 () Bool)

(assert (=> b!5351049 m!6382128))

(declare-fun m!6382130 () Bool)

(assert (=> b!5351049 m!6382130))

(declare-fun m!6382132 () Bool)

(assert (=> b!5351051 m!6382132))

(declare-fun m!6382134 () Bool)

(assert (=> b!5351015 m!6382134))

(declare-fun m!6382136 () Bool)

(assert (=> b!5351023 m!6382136))

(declare-fun m!6382138 () Bool)

(assert (=> b!5351023 m!6382138))

(declare-fun m!6382140 () Bool)

(assert (=> b!5351017 m!6382140))

(declare-fun m!6382142 () Bool)

(assert (=> setNonEmpty!34567 m!6382142))

(declare-fun m!6382144 () Bool)

(assert (=> b!5351050 m!6382144))

(declare-fun m!6382146 () Bool)

(assert (=> b!5351028 m!6382146))

(declare-fun m!6382148 () Bool)

(assert (=> b!5351028 m!6382148))

(declare-fun m!6382150 () Bool)

(assert (=> b!5351026 m!6382150))

(declare-fun m!6382152 () Bool)

(assert (=> b!5351044 m!6382152))

(declare-fun m!6382154 () Bool)

(assert (=> b!5351029 m!6382154))

(declare-fun m!6382156 () Bool)

(assert (=> b!5351029 m!6382156))

(declare-fun m!6382158 () Bool)

(assert (=> b!5351029 m!6382158))

(declare-fun m!6382160 () Bool)

(assert (=> b!5351029 m!6382160))

(declare-fun m!6382162 () Bool)

(assert (=> b!5351029 m!6382162))

(declare-fun m!6382164 () Bool)

(assert (=> b!5351029 m!6382164))

(declare-fun m!6382166 () Bool)

(assert (=> b!5351029 m!6382166))

(declare-fun m!6382168 () Bool)

(assert (=> b!5351027 m!6382168))

(assert (=> b!5351027 m!6382056))

(declare-fun m!6382170 () Bool)

(assert (=> b!5351027 m!6382170))

(declare-fun m!6382172 () Bool)

(assert (=> b!5351016 m!6382172))

(declare-fun m!6382174 () Bool)

(assert (=> b!5351025 m!6382174))

(declare-fun m!6382176 () Bool)

(assert (=> b!5351025 m!6382176))

(declare-fun m!6382178 () Bool)

(assert (=> b!5351014 m!6382178))

(declare-fun m!6382180 () Bool)

(assert (=> b!5351033 m!6382180))

(declare-fun m!6382182 () Bool)

(assert (=> b!5351040 m!6382182))

(declare-fun m!6382184 () Bool)

(assert (=> b!5351040 m!6382184))

(declare-fun m!6382186 () Bool)

(assert (=> b!5351046 m!6382186))

(declare-fun m!6382188 () Bool)

(assert (=> b!5351019 m!6382188))

(declare-fun m!6382190 () Bool)

(assert (=> b!5351021 m!6382190))

(check-sat (not b!5351028) (not b!5351042) (not b!5351015) (not b!5351018) (not b!5351047) (not b!5351019) (not b!5351034) (not b!5351041) (not b!5351029) (not b!5351043) (not setNonEmpty!34567) (not b!5351025) (not start!563486) (not b!5351038) (not b!5351033) (not b!5351026) (not b!5351014) (not b!5351017) (not b!5351016) (not b!5351040) tp_is_empty!39331 (not b!5351037) (not b!5351031) (not b!5351044) (not b!5351039) (not b!5351036) (not b!5351021) (not b!5351050) (not b!5351049) (not b!5351045) (not b!5351027) (not b!5351023) (not b!5351051) (not b!5351046))
(check-sat)
