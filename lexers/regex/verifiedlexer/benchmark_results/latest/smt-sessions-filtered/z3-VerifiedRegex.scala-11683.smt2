; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!657280 () Bool)

(assert start!657280)

(declare-fun b!6791299 () Bool)

(assert (=> b!6791299 true))

(assert (=> b!6791299 true))

(declare-fun lambda!382657 () Int)

(declare-fun lambda!382656 () Int)

(assert (=> b!6791299 (not (= lambda!382657 lambda!382656))))

(assert (=> b!6791299 true))

(assert (=> b!6791299 true))

(declare-fun lambda!382658 () Int)

(assert (=> b!6791299 (not (= lambda!382658 lambda!382656))))

(assert (=> b!6791299 (not (= lambda!382658 lambda!382657))))

(assert (=> b!6791299 true))

(assert (=> b!6791299 true))

(declare-fun b!6791302 () Bool)

(assert (=> b!6791302 true))

(declare-fun b!6791309 () Bool)

(assert (=> b!6791309 true))

(declare-fun b!6791281 () Bool)

(declare-fun res!2775692 () Bool)

(declare-fun e!4099054 () Bool)

(assert (=> b!6791281 (=> res!2775692 e!4099054)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33496 0))(
  ( (C!33497 (val!26450 Int)) )
))
(declare-datatypes ((Regex!16613 0))(
  ( (ElementMatch!16613 (c!1262203 C!33496)) (Concat!25458 (regOne!33738 Regex!16613) (regTwo!33738 Regex!16613)) (EmptyExpr!16613) (Star!16613 (reg!16942 Regex!16613)) (EmptyLang!16613) (Union!16613 (regOne!33739 Regex!16613) (regTwo!33739 Regex!16613)) )
))
(declare-datatypes ((List!66138 0))(
  ( (Nil!66014) (Cons!66014 (h!72462 Regex!16613) (t!379861 List!66138)) )
))
(declare-datatypes ((Context!11994 0))(
  ( (Context!11995 (exprs!6497 List!66138)) )
))
(declare-fun lt!2446518 () (InoxSet Context!11994))

(declare-datatypes ((List!66139 0))(
  ( (Nil!66015) (Cons!66015 (h!72463 C!33496) (t!379862 List!66139)) )
))
(declare-fun s!2326 () List!66139)

(declare-fun matchZipper!2599 ((InoxSet Context!11994) List!66139) Bool)

(declare-fun derivationStepZipper!2557 ((InoxSet Context!11994) C!33496) (InoxSet Context!11994))

(assert (=> b!6791281 (= res!2775692 (not (= (matchZipper!2599 lt!2446518 s!2326) (matchZipper!2599 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (t!379862 s!2326)))))))

(declare-fun b!6791282 () Bool)

(declare-fun e!4099059 () Bool)

(declare-fun e!4099060 () Bool)

(assert (=> b!6791282 (= e!4099059 e!4099060)))

(declare-fun res!2775689 () Bool)

(assert (=> b!6791282 (=> res!2775689 e!4099060)))

(declare-fun lt!2446537 () Bool)

(assert (=> b!6791282 (= res!2775689 lt!2446537)))

(declare-fun lt!2446525 () Regex!16613)

(declare-fun matchRSpec!3714 (Regex!16613 List!66139) Bool)

(assert (=> b!6791282 (= lt!2446537 (matchRSpec!3714 lt!2446525 s!2326))))

(declare-fun matchR!8796 (Regex!16613 List!66139) Bool)

(assert (=> b!6791282 (= lt!2446537 (matchR!8796 lt!2446525 s!2326))))

(declare-datatypes ((Unit!159917 0))(
  ( (Unit!159918) )
))
(declare-fun lt!2446532 () Unit!159917)

(declare-fun mainMatchTheorem!3714 (Regex!16613 List!66139) Unit!159917)

(assert (=> b!6791282 (= lt!2446532 (mainMatchTheorem!3714 lt!2446525 s!2326))))

(declare-fun b!6791283 () Bool)

(declare-fun e!4099057 () Bool)

(declare-fun tp!1860029 () Bool)

(assert (=> b!6791283 (= e!4099057 tp!1860029)))

(declare-fun res!2775678 () Bool)

(declare-fun e!4099052 () Bool)

(assert (=> start!657280 (=> (not res!2775678) (not e!4099052))))

(declare-fun r!7292 () Regex!16613)

(declare-fun validRegex!8349 (Regex!16613) Bool)

(assert (=> start!657280 (= res!2775678 (validRegex!8349 r!7292))))

(assert (=> start!657280 e!4099052))

(declare-fun e!4099051 () Bool)

(assert (=> start!657280 e!4099051))

(declare-fun condSetEmpty!46493 () Bool)

(declare-fun z!1189 () (InoxSet Context!11994))

(assert (=> start!657280 (= condSetEmpty!46493 (= z!1189 ((as const (Array Context!11994 Bool)) false)))))

(declare-fun setRes!46493 () Bool)

(assert (=> start!657280 setRes!46493))

(declare-fun e!4099053 () Bool)

(assert (=> start!657280 e!4099053))

(declare-fun e!4099048 () Bool)

(assert (=> start!657280 e!4099048))

(declare-fun b!6791284 () Bool)

(declare-fun tp!1860030 () Bool)

(declare-fun tp!1860033 () Bool)

(assert (=> b!6791284 (= e!4099051 (and tp!1860030 tp!1860033))))

(declare-fun tp!1860035 () Bool)

(declare-fun b!6791285 () Bool)

(declare-datatypes ((List!66140 0))(
  ( (Nil!66016) (Cons!66016 (h!72464 Context!11994) (t!379863 List!66140)) )
))
(declare-fun zl!343 () List!66140)

(declare-fun e!4099045 () Bool)

(declare-fun inv!84779 (Context!11994) Bool)

(assert (=> b!6791285 (= e!4099053 (and (inv!84779 (h!72464 zl!343)) e!4099045 tp!1860035))))

(declare-fun b!6791286 () Bool)

(declare-fun e!4099058 () Bool)

(declare-fun lt!2446534 () Bool)

(assert (=> b!6791286 (= e!4099058 lt!2446534)))

(declare-fun b!6791287 () Bool)

(declare-fun tp!1860032 () Bool)

(assert (=> b!6791287 (= e!4099051 tp!1860032)))

(declare-fun b!6791288 () Bool)

(declare-fun res!2775691 () Bool)

(assert (=> b!6791288 (=> (not res!2775691) (not e!4099052))))

(declare-fun toList!10397 ((InoxSet Context!11994)) List!66140)

(assert (=> b!6791288 (= res!2775691 (= (toList!10397 z!1189) zl!343))))

(declare-fun b!6791289 () Bool)

(declare-fun res!2775675 () Bool)

(declare-fun e!4099056 () Bool)

(assert (=> b!6791289 (=> res!2775675 e!4099056)))

(get-info :version)

(assert (=> b!6791289 (= res!2775675 (not ((_ is Cons!66014) (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6791290 () Bool)

(declare-fun tp!1860028 () Bool)

(declare-fun tp!1860026 () Bool)

(assert (=> b!6791290 (= e!4099051 (and tp!1860028 tp!1860026))))

(declare-fun setIsEmpty!46493 () Bool)

(assert (=> setIsEmpty!46493 setRes!46493))

(declare-fun b!6791291 () Bool)

(declare-fun tp!1860034 () Bool)

(assert (=> b!6791291 (= e!4099045 tp!1860034)))

(declare-fun b!6791292 () Bool)

(declare-fun res!2775690 () Bool)

(assert (=> b!6791292 (=> res!2775690 e!4099060)))

(assert (=> b!6791292 (= res!2775690 (not (matchZipper!2599 z!1189 s!2326)))))

(declare-fun b!6791293 () Bool)

(declare-fun res!2775672 () Bool)

(assert (=> b!6791293 (=> res!2775672 e!4099056)))

(assert (=> b!6791293 (= res!2775672 (or ((_ is EmptyExpr!16613) r!7292) ((_ is EmptyLang!16613) r!7292) ((_ is ElementMatch!16613) r!7292) ((_ is Union!16613) r!7292) ((_ is Concat!25458) r!7292)))))

(declare-fun b!6791294 () Bool)

(declare-fun e!4099047 () Bool)

(assert (=> b!6791294 (= e!4099047 e!4099059)))

(declare-fun res!2775681 () Bool)

(assert (=> b!6791294 (=> res!2775681 e!4099059)))

(declare-fun lt!2446520 () (InoxSet Context!11994))

(declare-fun lt!2446517 () (InoxSet Context!11994))

(assert (=> b!6791294 (= res!2775681 (not (= lt!2446520 (derivationStepZipper!2557 lt!2446517 (h!72463 s!2326)))))))

(declare-fun lt!2446529 () Context!11994)

(declare-fun lambda!382659 () Int)

(declare-fun flatMap!2094 ((InoxSet Context!11994) Int) (InoxSet Context!11994))

(declare-fun derivationStepZipperUp!1767 (Context!11994 C!33496) (InoxSet Context!11994))

(assert (=> b!6791294 (= (flatMap!2094 lt!2446517 lambda!382659) (derivationStepZipperUp!1767 lt!2446529 (h!72463 s!2326)))))

(declare-fun lt!2446530 () Unit!159917)

(declare-fun lemmaFlatMapOnSingletonSet!1620 ((InoxSet Context!11994) Context!11994 Int) Unit!159917)

(assert (=> b!6791294 (= lt!2446530 (lemmaFlatMapOnSingletonSet!1620 lt!2446517 lt!2446529 lambda!382659))))

(declare-fun lt!2446535 () (InoxSet Context!11994))

(declare-fun lt!2446519 () Context!11994)

(assert (=> b!6791294 (= (flatMap!2094 lt!2446535 lambda!382659) (derivationStepZipperUp!1767 lt!2446519 (h!72463 s!2326)))))

(declare-fun lt!2446513 () Unit!159917)

(assert (=> b!6791294 (= lt!2446513 (lemmaFlatMapOnSingletonSet!1620 lt!2446535 lt!2446519 lambda!382659))))

(declare-fun lt!2446533 () (InoxSet Context!11994))

(assert (=> b!6791294 (= lt!2446533 (derivationStepZipperUp!1767 lt!2446529 (h!72463 s!2326)))))

(declare-fun lt!2446522 () (InoxSet Context!11994))

(assert (=> b!6791294 (= lt!2446522 (derivationStepZipperUp!1767 lt!2446519 (h!72463 s!2326)))))

(assert (=> b!6791294 (= lt!2446517 (store ((as const (Array Context!11994 Bool)) false) lt!2446529 true))))

(assert (=> b!6791294 (= lt!2446535 (store ((as const (Array Context!11994 Bool)) false) lt!2446519 true))))

(assert (=> b!6791294 (= lt!2446519 (Context!11995 (Cons!66014 (reg!16942 r!7292) Nil!66014)))))

(declare-fun b!6791295 () Bool)

(declare-fun res!2775687 () Bool)

(assert (=> b!6791295 (=> res!2775687 e!4099056)))

(declare-fun generalisedConcat!2210 (List!66138) Regex!16613)

(assert (=> b!6791295 (= res!2775687 (not (= r!7292 (generalisedConcat!2210 (exprs!6497 (h!72464 zl!343))))))))

(declare-fun b!6791296 () Bool)

(declare-fun tp_is_empty!42479 () Bool)

(assert (=> b!6791296 (= e!4099051 tp_is_empty!42479)))

(declare-fun b!6791297 () Bool)

(declare-fun res!2775676 () Bool)

(assert (=> b!6791297 (=> res!2775676 e!4099056)))

(declare-fun generalisedUnion!2457 (List!66138) Regex!16613)

(declare-fun unfocusZipperList!2034 (List!66140) List!66138)

(assert (=> b!6791297 (= res!2775676 (not (= r!7292 (generalisedUnion!2457 (unfocusZipperList!2034 zl!343)))))))

(declare-fun b!6791298 () Bool)

(declare-fun res!2775679 () Bool)

(assert (=> b!6791298 (=> res!2775679 e!4099059)))

(declare-fun unfocusZipper!2355 (List!66140) Regex!16613)

(assert (=> b!6791298 (= res!2775679 (not (= (unfocusZipper!2355 (Cons!66016 lt!2446519 Nil!66016)) (reg!16942 r!7292))))))

(declare-fun e!4099050 () Bool)

(assert (=> b!6791299 (= e!4099056 e!4099050)))

(declare-fun res!2775688 () Bool)

(assert (=> b!6791299 (=> res!2775688 e!4099050)))

(declare-fun lt!2446512 () Bool)

(assert (=> b!6791299 (= res!2775688 (not (= lt!2446512 e!4099058)))))

(declare-fun res!2775682 () Bool)

(assert (=> b!6791299 (=> res!2775682 e!4099058)))

(declare-fun isEmpty!38385 (List!66139) Bool)

(assert (=> b!6791299 (= res!2775682 (isEmpty!38385 s!2326))))

(declare-fun Exists!3681 (Int) Bool)

(assert (=> b!6791299 (= (Exists!3681 lambda!382656) (Exists!3681 lambda!382658))))

(declare-fun lt!2446528 () Unit!159917)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2208 (Regex!16613 Regex!16613 List!66139) Unit!159917)

(assert (=> b!6791299 (= lt!2446528 (lemmaExistCutMatchRandMatchRSpecEquivalent!2208 (reg!16942 r!7292) r!7292 s!2326))))

(assert (=> b!6791299 (= (Exists!3681 lambda!382656) (Exists!3681 lambda!382657))))

(declare-fun lt!2446531 () Unit!159917)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!772 (Regex!16613 List!66139) Unit!159917)

(assert (=> b!6791299 (= lt!2446531 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!772 (reg!16942 r!7292) s!2326))))

(assert (=> b!6791299 (= lt!2446534 (Exists!3681 lambda!382656))))

(declare-datatypes ((tuple2!67176 0))(
  ( (tuple2!67177 (_1!36891 List!66139) (_2!36891 List!66139)) )
))
(declare-datatypes ((Option!16500 0))(
  ( (None!16499) (Some!16499 (v!52705 tuple2!67176)) )
))
(declare-fun isDefined!13203 (Option!16500) Bool)

(declare-fun findConcatSeparation!2914 (Regex!16613 Regex!16613 List!66139 List!66139 List!66139) Option!16500)

(assert (=> b!6791299 (= lt!2446534 (isDefined!13203 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326)))))

(declare-fun lt!2446515 () Unit!159917)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2678 (Regex!16613 Regex!16613 List!66139) Unit!159917)

(assert (=> b!6791299 (= lt!2446515 (lemmaFindConcatSeparationEquivalentToExists!2678 (reg!16942 r!7292) r!7292 s!2326))))

(declare-fun b!6791300 () Bool)

(declare-fun res!2775680 () Bool)

(assert (=> b!6791300 (=> res!2775680 e!4099056)))

(declare-fun isEmpty!38386 (List!66140) Bool)

(assert (=> b!6791300 (= res!2775680 (not (isEmpty!38386 (t!379863 zl!343))))))

(declare-fun b!6791301 () Bool)

(declare-fun e!4099049 () Bool)

(assert (=> b!6791301 (= e!4099049 (not e!4099056))))

(declare-fun res!2775671 () Bool)

(assert (=> b!6791301 (=> res!2775671 e!4099056)))

(assert (=> b!6791301 (= res!2775671 (not ((_ is Cons!66016) zl!343)))))

(assert (=> b!6791301 (= lt!2446512 (matchRSpec!3714 r!7292 s!2326))))

(assert (=> b!6791301 (= lt!2446512 (matchR!8796 r!7292 s!2326))))

(declare-fun lt!2446536 () Unit!159917)

(assert (=> b!6791301 (= lt!2446536 (mainMatchTheorem!3714 r!7292 s!2326))))

(declare-fun e!4099046 () Bool)

(declare-fun e!4099055 () Bool)

(assert (=> b!6791302 (= e!4099046 e!4099055)))

(declare-fun res!2775673 () Bool)

(assert (=> b!6791302 (=> res!2775673 e!4099055)))

(declare-fun lt!2446526 () (InoxSet Context!11994))

(assert (=> b!6791302 (= res!2775673 (not (= lt!2446520 lt!2446526)))))

(assert (=> b!6791302 (= (flatMap!2094 z!1189 lambda!382659) (derivationStepZipperUp!1767 (h!72464 zl!343) (h!72463 s!2326)))))

(declare-fun lt!2446521 () Unit!159917)

(assert (=> b!6791302 (= lt!2446521 (lemmaFlatMapOnSingletonSet!1620 z!1189 (h!72464 zl!343) lambda!382659))))

(declare-fun b!6791303 () Bool)

(assert (=> b!6791303 (= e!4099054 e!4099047)))

(declare-fun res!2775683 () Bool)

(assert (=> b!6791303 (=> res!2775683 e!4099047)))

(declare-fun lt!2446524 () Context!11994)

(assert (=> b!6791303 (= res!2775683 (not (= (unfocusZipper!2355 (Cons!66016 lt!2446524 Nil!66016)) lt!2446525)))))

(assert (=> b!6791303 (= lt!2446525 (Concat!25458 (reg!16942 r!7292) r!7292))))

(declare-fun b!6791304 () Bool)

(declare-fun res!2775684 () Bool)

(assert (=> b!6791304 (=> res!2775684 e!4099050)))

(assert (=> b!6791304 (= res!2775684 ((_ is Nil!66015) s!2326))))

(declare-fun b!6791305 () Bool)

(declare-fun tp!1860031 () Bool)

(assert (=> b!6791305 (= e!4099048 (and tp_is_empty!42479 tp!1860031))))

(declare-fun b!6791306 () Bool)

(declare-fun res!2775686 () Bool)

(assert (=> b!6791306 (=> res!2775686 e!4099054)))

(declare-fun lt!2446514 () Regex!16613)

(assert (=> b!6791306 (= res!2775686 (or (not (= lt!2446514 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6791307 () Bool)

(assert (=> b!6791307 (= e!4099052 e!4099049)))

(declare-fun res!2775670 () Bool)

(assert (=> b!6791307 (=> (not res!2775670) (not e!4099049))))

(assert (=> b!6791307 (= res!2775670 (= r!7292 lt!2446514))))

(assert (=> b!6791307 (= lt!2446514 (unfocusZipper!2355 zl!343))))

(declare-fun b!6791308 () Bool)

(assert (=> b!6791308 (= e!4099050 e!4099046)))

(declare-fun res!2775674 () Bool)

(assert (=> b!6791308 (=> res!2775674 e!4099046)))

(declare-fun lt!2446510 () (InoxSet Context!11994))

(assert (=> b!6791308 (= res!2775674 (not (= lt!2446510 lt!2446526)))))

(declare-fun derivationStepZipperDown!1841 (Regex!16613 Context!11994 C!33496) (InoxSet Context!11994))

(assert (=> b!6791308 (= lt!2446526 (derivationStepZipperDown!1841 r!7292 (Context!11995 Nil!66014) (h!72463 s!2326)))))

(assert (=> b!6791308 (= lt!2446510 (derivationStepZipperUp!1767 (Context!11995 (Cons!66014 r!7292 Nil!66014)) (h!72463 s!2326)))))

(assert (=> b!6791308 (= lt!2446520 (derivationStepZipper!2557 z!1189 (h!72463 s!2326)))))

(assert (=> b!6791309 (= e!4099060 (inv!84779 lt!2446529))))

(declare-fun lambda!382660 () Int)

(declare-fun lt!2446511 () List!66138)

(declare-fun map!15080 ((InoxSet Context!11994) Int) (InoxSet Context!11994))

(declare-fun ++!14771 (List!66138 List!66138) List!66138)

(assert (=> b!6791309 (= (map!15080 lt!2446535 lambda!382660) (store ((as const (Array Context!11994 Bool)) false) (Context!11995 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511)) true))))

(declare-fun lambda!382661 () Int)

(declare-fun lt!2446527 () Unit!159917)

(declare-fun lemmaConcatPreservesForall!442 (List!66138 List!66138 Int) Unit!159917)

(assert (=> b!6791309 (= lt!2446527 (lemmaConcatPreservesForall!442 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511 lambda!382661))))

(declare-fun lt!2446523 () Unit!159917)

(declare-fun lemmaMapOnSingletonSet!248 ((InoxSet Context!11994) Context!11994 Int) Unit!159917)

(assert (=> b!6791309 (= lt!2446523 (lemmaMapOnSingletonSet!248 lt!2446535 lt!2446519 lambda!382660))))

(declare-fun tp!1860027 () Bool)

(declare-fun setElem!46493 () Context!11994)

(declare-fun setNonEmpty!46493 () Bool)

(assert (=> setNonEmpty!46493 (= setRes!46493 (and tp!1860027 (inv!84779 setElem!46493) e!4099057))))

(declare-fun setRest!46493 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46493 (= z!1189 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46493 true) setRest!46493))))

(declare-fun b!6791310 () Bool)

(assert (=> b!6791310 (= e!4099055 e!4099054)))

(declare-fun res!2775677 () Bool)

(assert (=> b!6791310 (=> res!2775677 e!4099054)))

(assert (=> b!6791310 (= res!2775677 (not (= lt!2446520 (derivationStepZipperDown!1841 (reg!16942 r!7292) lt!2446529 (h!72463 s!2326)))))))

(assert (=> b!6791310 (= lt!2446529 (Context!11995 lt!2446511))))

(assert (=> b!6791310 (= (flatMap!2094 lt!2446518 lambda!382659) (derivationStepZipperUp!1767 lt!2446524 (h!72463 s!2326)))))

(declare-fun lt!2446516 () Unit!159917)

(assert (=> b!6791310 (= lt!2446516 (lemmaFlatMapOnSingletonSet!1620 lt!2446518 lt!2446524 lambda!382659))))

(declare-fun lt!2446538 () (InoxSet Context!11994))

(assert (=> b!6791310 (= lt!2446538 (derivationStepZipperUp!1767 lt!2446524 (h!72463 s!2326)))))

(assert (=> b!6791310 (= lt!2446518 (store ((as const (Array Context!11994 Bool)) false) lt!2446524 true))))

(assert (=> b!6791310 (= lt!2446524 (Context!11995 (Cons!66014 (reg!16942 r!7292) lt!2446511)))))

(assert (=> b!6791310 (= lt!2446511 (Cons!66014 r!7292 Nil!66014))))

(declare-fun b!6791311 () Bool)

(declare-fun res!2775685 () Bool)

(assert (=> b!6791311 (=> res!2775685 e!4099059)))

(assert (=> b!6791311 (= res!2775685 (not (= (unfocusZipper!2355 (Cons!66016 lt!2446529 Nil!66016)) r!7292)))))

(assert (= (and start!657280 res!2775678) b!6791288))

(assert (= (and b!6791288 res!2775691) b!6791307))

(assert (= (and b!6791307 res!2775670) b!6791301))

(assert (= (and b!6791301 (not res!2775671)) b!6791300))

(assert (= (and b!6791300 (not res!2775680)) b!6791295))

(assert (= (and b!6791295 (not res!2775687)) b!6791289))

(assert (= (and b!6791289 (not res!2775675)) b!6791297))

(assert (= (and b!6791297 (not res!2775676)) b!6791293))

(assert (= (and b!6791293 (not res!2775672)) b!6791299))

(assert (= (and b!6791299 (not res!2775682)) b!6791286))

(assert (= (and b!6791299 (not res!2775688)) b!6791304))

(assert (= (and b!6791304 (not res!2775684)) b!6791308))

(assert (= (and b!6791308 (not res!2775674)) b!6791302))

(assert (= (and b!6791302 (not res!2775673)) b!6791310))

(assert (= (and b!6791310 (not res!2775677)) b!6791281))

(assert (= (and b!6791281 (not res!2775692)) b!6791306))

(assert (= (and b!6791306 (not res!2775686)) b!6791303))

(assert (= (and b!6791303 (not res!2775683)) b!6791294))

(assert (= (and b!6791294 (not res!2775681)) b!6791298))

(assert (= (and b!6791298 (not res!2775679)) b!6791311))

(assert (= (and b!6791311 (not res!2775685)) b!6791282))

(assert (= (and b!6791282 (not res!2775689)) b!6791292))

(assert (= (and b!6791292 (not res!2775690)) b!6791309))

(assert (= (and start!657280 ((_ is ElementMatch!16613) r!7292)) b!6791296))

(assert (= (and start!657280 ((_ is Concat!25458) r!7292)) b!6791290))

(assert (= (and start!657280 ((_ is Star!16613) r!7292)) b!6791287))

(assert (= (and start!657280 ((_ is Union!16613) r!7292)) b!6791284))

(assert (= (and start!657280 condSetEmpty!46493) setIsEmpty!46493))

(assert (= (and start!657280 (not condSetEmpty!46493)) setNonEmpty!46493))

(assert (= setNonEmpty!46493 b!6791283))

(assert (= b!6791285 b!6791291))

(assert (= (and start!657280 ((_ is Cons!66016) zl!343)) b!6791285))

(assert (= (and start!657280 ((_ is Cons!66015) s!2326)) b!6791305))

(declare-fun m!7538654 () Bool)

(assert (=> b!6791292 m!7538654))

(declare-fun m!7538656 () Bool)

(assert (=> b!6791288 m!7538656))

(declare-fun m!7538658 () Bool)

(assert (=> start!657280 m!7538658))

(declare-fun m!7538660 () Bool)

(assert (=> b!6791295 m!7538660))

(declare-fun m!7538662 () Bool)

(assert (=> b!6791302 m!7538662))

(declare-fun m!7538664 () Bool)

(assert (=> b!6791302 m!7538664))

(declare-fun m!7538666 () Bool)

(assert (=> b!6791302 m!7538666))

(declare-fun m!7538668 () Bool)

(assert (=> b!6791301 m!7538668))

(declare-fun m!7538670 () Bool)

(assert (=> b!6791301 m!7538670))

(declare-fun m!7538672 () Bool)

(assert (=> b!6791301 m!7538672))

(declare-fun m!7538674 () Bool)

(assert (=> b!6791299 m!7538674))

(declare-fun m!7538676 () Bool)

(assert (=> b!6791299 m!7538676))

(declare-fun m!7538678 () Bool)

(assert (=> b!6791299 m!7538678))

(assert (=> b!6791299 m!7538674))

(declare-fun m!7538680 () Bool)

(assert (=> b!6791299 m!7538680))

(declare-fun m!7538682 () Bool)

(assert (=> b!6791299 m!7538682))

(assert (=> b!6791299 m!7538674))

(assert (=> b!6791299 m!7538680))

(declare-fun m!7538684 () Bool)

(assert (=> b!6791299 m!7538684))

(declare-fun m!7538686 () Bool)

(assert (=> b!6791299 m!7538686))

(declare-fun m!7538688 () Bool)

(assert (=> b!6791299 m!7538688))

(declare-fun m!7538690 () Bool)

(assert (=> b!6791299 m!7538690))

(declare-fun m!7538692 () Bool)

(assert (=> b!6791298 m!7538692))

(declare-fun m!7538694 () Bool)

(assert (=> b!6791307 m!7538694))

(declare-fun m!7538696 () Bool)

(assert (=> b!6791285 m!7538696))

(declare-fun m!7538698 () Bool)

(assert (=> b!6791310 m!7538698))

(declare-fun m!7538700 () Bool)

(assert (=> b!6791310 m!7538700))

(declare-fun m!7538702 () Bool)

(assert (=> b!6791310 m!7538702))

(declare-fun m!7538704 () Bool)

(assert (=> b!6791310 m!7538704))

(declare-fun m!7538706 () Bool)

(assert (=> b!6791310 m!7538706))

(declare-fun m!7538708 () Bool)

(assert (=> setNonEmpty!46493 m!7538708))

(declare-fun m!7538710 () Bool)

(assert (=> b!6791297 m!7538710))

(assert (=> b!6791297 m!7538710))

(declare-fun m!7538712 () Bool)

(assert (=> b!6791297 m!7538712))

(declare-fun m!7538714 () Bool)

(assert (=> b!6791311 m!7538714))

(declare-fun m!7538716 () Bool)

(assert (=> b!6791309 m!7538716))

(declare-fun m!7538718 () Bool)

(assert (=> b!6791309 m!7538718))

(declare-fun m!7538720 () Bool)

(assert (=> b!6791309 m!7538720))

(declare-fun m!7538722 () Bool)

(assert (=> b!6791309 m!7538722))

(declare-fun m!7538724 () Bool)

(assert (=> b!6791309 m!7538724))

(declare-fun m!7538726 () Bool)

(assert (=> b!6791309 m!7538726))

(declare-fun m!7538728 () Bool)

(assert (=> b!6791294 m!7538728))

(declare-fun m!7538730 () Bool)

(assert (=> b!6791294 m!7538730))

(declare-fun m!7538732 () Bool)

(assert (=> b!6791294 m!7538732))

(declare-fun m!7538734 () Bool)

(assert (=> b!6791294 m!7538734))

(declare-fun m!7538736 () Bool)

(assert (=> b!6791294 m!7538736))

(declare-fun m!7538738 () Bool)

(assert (=> b!6791294 m!7538738))

(declare-fun m!7538740 () Bool)

(assert (=> b!6791294 m!7538740))

(declare-fun m!7538742 () Bool)

(assert (=> b!6791294 m!7538742))

(declare-fun m!7538744 () Bool)

(assert (=> b!6791294 m!7538744))

(declare-fun m!7538746 () Bool)

(assert (=> b!6791300 m!7538746))

(declare-fun m!7538748 () Bool)

(assert (=> b!6791282 m!7538748))

(declare-fun m!7538750 () Bool)

(assert (=> b!6791282 m!7538750))

(declare-fun m!7538752 () Bool)

(assert (=> b!6791282 m!7538752))

(declare-fun m!7538754 () Bool)

(assert (=> b!6791281 m!7538754))

(declare-fun m!7538756 () Bool)

(assert (=> b!6791281 m!7538756))

(assert (=> b!6791281 m!7538756))

(declare-fun m!7538758 () Bool)

(assert (=> b!6791281 m!7538758))

(declare-fun m!7538760 () Bool)

(assert (=> b!6791303 m!7538760))

(declare-fun m!7538762 () Bool)

(assert (=> b!6791308 m!7538762))

(declare-fun m!7538764 () Bool)

(assert (=> b!6791308 m!7538764))

(declare-fun m!7538766 () Bool)

(assert (=> b!6791308 m!7538766))

(check-sat (not b!6791287) (not b!6791295) (not b!6791297) (not b!6791285) (not b!6791292) (not b!6791294) (not b!6791300) (not b!6791282) (not b!6791301) (not b!6791307) (not b!6791299) (not b!6791310) (not b!6791303) (not b!6791281) (not setNonEmpty!46493) (not b!6791288) (not b!6791283) (not b!6791311) (not b!6791284) tp_is_empty!42479 (not b!6791308) (not b!6791305) (not b!6791302) (not start!657280) (not b!6791298) (not b!6791309) (not b!6791290) (not b!6791291))
(check-sat)
(get-model)

(declare-fun d!2133772 () Bool)

(declare-fun lt!2446541 () Regex!16613)

(assert (=> d!2133772 (validRegex!8349 lt!2446541)))

(assert (=> d!2133772 (= lt!2446541 (generalisedUnion!2457 (unfocusZipperList!2034 zl!343)))))

(assert (=> d!2133772 (= (unfocusZipper!2355 zl!343) lt!2446541)))

(declare-fun bs!1809434 () Bool)

(assert (= bs!1809434 d!2133772))

(declare-fun m!7538768 () Bool)

(assert (=> bs!1809434 m!7538768))

(assert (=> bs!1809434 m!7538710))

(assert (=> bs!1809434 m!7538710))

(assert (=> bs!1809434 m!7538712))

(assert (=> b!6791307 d!2133772))

(declare-fun bs!1809435 () Bool)

(declare-fun d!2133774 () Bool)

(assert (= bs!1809435 (and d!2133774 b!6791309)))

(declare-fun lambda!382664 () Int)

(assert (=> bs!1809435 (= lambda!382664 lambda!382661)))

(declare-fun b!6791340 () Bool)

(declare-fun e!4099075 () Bool)

(declare-fun lt!2446544 () Regex!16613)

(declare-fun isUnion!1408 (Regex!16613) Bool)

(assert (=> b!6791340 (= e!4099075 (isUnion!1408 lt!2446544))))

(declare-fun b!6791341 () Bool)

(declare-fun e!4099078 () Regex!16613)

(assert (=> b!6791341 (= e!4099078 (Union!16613 (h!72462 (unfocusZipperList!2034 zl!343)) (generalisedUnion!2457 (t!379861 (unfocusZipperList!2034 zl!343)))))))

(declare-fun b!6791342 () Bool)

(declare-fun e!4099076 () Regex!16613)

(assert (=> b!6791342 (= e!4099076 e!4099078)))

(declare-fun c!1262215 () Bool)

(assert (=> b!6791342 (= c!1262215 ((_ is Cons!66014) (unfocusZipperList!2034 zl!343)))))

(declare-fun e!4099077 () Bool)

(assert (=> d!2133774 e!4099077))

(declare-fun res!2775700 () Bool)

(assert (=> d!2133774 (=> (not res!2775700) (not e!4099077))))

(assert (=> d!2133774 (= res!2775700 (validRegex!8349 lt!2446544))))

(assert (=> d!2133774 (= lt!2446544 e!4099076)))

(declare-fun c!1262212 () Bool)

(declare-fun e!4099074 () Bool)

(assert (=> d!2133774 (= c!1262212 e!4099074)))

(declare-fun res!2775699 () Bool)

(assert (=> d!2133774 (=> (not res!2775699) (not e!4099074))))

(assert (=> d!2133774 (= res!2775699 ((_ is Cons!66014) (unfocusZipperList!2034 zl!343)))))

(declare-fun forall!15805 (List!66138 Int) Bool)

(assert (=> d!2133774 (forall!15805 (unfocusZipperList!2034 zl!343) lambda!382664)))

(assert (=> d!2133774 (= (generalisedUnion!2457 (unfocusZipperList!2034 zl!343)) lt!2446544)))

(declare-fun b!6791343 () Bool)

(assert (=> b!6791343 (= e!4099076 (h!72462 (unfocusZipperList!2034 zl!343)))))

(declare-fun b!6791344 () Bool)

(declare-fun e!4099073 () Bool)

(assert (=> b!6791344 (= e!4099077 e!4099073)))

(declare-fun c!1262214 () Bool)

(declare-fun isEmpty!38388 (List!66138) Bool)

(assert (=> b!6791344 (= c!1262214 (isEmpty!38388 (unfocusZipperList!2034 zl!343)))))

(declare-fun b!6791345 () Bool)

(assert (=> b!6791345 (= e!4099073 e!4099075)))

(declare-fun c!1262213 () Bool)

(declare-fun tail!12722 (List!66138) List!66138)

(assert (=> b!6791345 (= c!1262213 (isEmpty!38388 (tail!12722 (unfocusZipperList!2034 zl!343))))))

(declare-fun b!6791346 () Bool)

(assert (=> b!6791346 (= e!4099074 (isEmpty!38388 (t!379861 (unfocusZipperList!2034 zl!343))))))

(declare-fun b!6791347 () Bool)

(declare-fun head!13637 (List!66138) Regex!16613)

(assert (=> b!6791347 (= e!4099075 (= lt!2446544 (head!13637 (unfocusZipperList!2034 zl!343))))))

(declare-fun b!6791348 () Bool)

(assert (=> b!6791348 (= e!4099078 EmptyLang!16613)))

(declare-fun b!6791349 () Bool)

(declare-fun isEmptyLang!1978 (Regex!16613) Bool)

(assert (=> b!6791349 (= e!4099073 (isEmptyLang!1978 lt!2446544))))

(assert (= (and d!2133774 res!2775699) b!6791346))

(assert (= (and d!2133774 c!1262212) b!6791343))

(assert (= (and d!2133774 (not c!1262212)) b!6791342))

(assert (= (and b!6791342 c!1262215) b!6791341))

(assert (= (and b!6791342 (not c!1262215)) b!6791348))

(assert (= (and d!2133774 res!2775700) b!6791344))

(assert (= (and b!6791344 c!1262214) b!6791349))

(assert (= (and b!6791344 (not c!1262214)) b!6791345))

(assert (= (and b!6791345 c!1262213) b!6791347))

(assert (= (and b!6791345 (not c!1262213)) b!6791340))

(assert (=> b!6791344 m!7538710))

(declare-fun m!7538770 () Bool)

(assert (=> b!6791344 m!7538770))

(declare-fun m!7538772 () Bool)

(assert (=> b!6791340 m!7538772))

(assert (=> b!6791347 m!7538710))

(declare-fun m!7538774 () Bool)

(assert (=> b!6791347 m!7538774))

(declare-fun m!7538776 () Bool)

(assert (=> b!6791346 m!7538776))

(declare-fun m!7538778 () Bool)

(assert (=> b!6791349 m!7538778))

(assert (=> b!6791345 m!7538710))

(declare-fun m!7538780 () Bool)

(assert (=> b!6791345 m!7538780))

(assert (=> b!6791345 m!7538780))

(declare-fun m!7538782 () Bool)

(assert (=> b!6791345 m!7538782))

(declare-fun m!7538784 () Bool)

(assert (=> d!2133774 m!7538784))

(assert (=> d!2133774 m!7538710))

(declare-fun m!7538786 () Bool)

(assert (=> d!2133774 m!7538786))

(declare-fun m!7538788 () Bool)

(assert (=> b!6791341 m!7538788))

(assert (=> b!6791297 d!2133774))

(declare-fun bs!1809436 () Bool)

(declare-fun d!2133778 () Bool)

(assert (= bs!1809436 (and d!2133778 b!6791309)))

(declare-fun lambda!382667 () Int)

(assert (=> bs!1809436 (= lambda!382667 lambda!382661)))

(declare-fun bs!1809437 () Bool)

(assert (= bs!1809437 (and d!2133778 d!2133774)))

(assert (=> bs!1809437 (= lambda!382667 lambda!382664)))

(declare-fun lt!2446547 () List!66138)

(assert (=> d!2133778 (forall!15805 lt!2446547 lambda!382667)))

(declare-fun e!4099093 () List!66138)

(assert (=> d!2133778 (= lt!2446547 e!4099093)))

(declare-fun c!1262228 () Bool)

(assert (=> d!2133778 (= c!1262228 ((_ is Cons!66016) zl!343))))

(assert (=> d!2133778 (= (unfocusZipperList!2034 zl!343) lt!2446547)))

(declare-fun b!6791376 () Bool)

(assert (=> b!6791376 (= e!4099093 (Cons!66014 (generalisedConcat!2210 (exprs!6497 (h!72464 zl!343))) (unfocusZipperList!2034 (t!379863 zl!343))))))

(declare-fun b!6791377 () Bool)

(assert (=> b!6791377 (= e!4099093 Nil!66014)))

(assert (= (and d!2133778 c!1262228) b!6791376))

(assert (= (and d!2133778 (not c!1262228)) b!6791377))

(declare-fun m!7538796 () Bool)

(assert (=> d!2133778 m!7538796))

(assert (=> b!6791376 m!7538660))

(declare-fun m!7538802 () Bool)

(assert (=> b!6791376 m!7538802))

(assert (=> b!6791297 d!2133778))

(declare-fun d!2133782 () Bool)

(declare-fun e!4099111 () Bool)

(assert (=> d!2133782 e!4099111))

(declare-fun res!2775709 () Bool)

(assert (=> d!2133782 (=> (not res!2775709) (not e!4099111))))

(declare-fun lt!2446550 () List!66140)

(declare-fun noDuplicate!2397 (List!66140) Bool)

(assert (=> d!2133782 (= res!2775709 (noDuplicate!2397 lt!2446550))))

(declare-fun choose!50594 ((InoxSet Context!11994)) List!66140)

(assert (=> d!2133782 (= lt!2446550 (choose!50594 z!1189))))

(assert (=> d!2133782 (= (toList!10397 z!1189) lt!2446550)))

(declare-fun b!6791406 () Bool)

(declare-fun content!12873 (List!66140) (InoxSet Context!11994))

(assert (=> b!6791406 (= e!4099111 (= (content!12873 lt!2446550) z!1189))))

(assert (= (and d!2133782 res!2775709) b!6791406))

(declare-fun m!7538810 () Bool)

(assert (=> d!2133782 m!7538810))

(declare-fun m!7538812 () Bool)

(assert (=> d!2133782 m!7538812))

(declare-fun m!7538814 () Bool)

(assert (=> b!6791406 m!7538814))

(assert (=> b!6791288 d!2133782))

(declare-fun b!6791473 () Bool)

(declare-fun e!4099152 () (InoxSet Context!11994))

(declare-fun call!616649 () (InoxSet Context!11994))

(declare-fun call!616651 () (InoxSet Context!11994))

(assert (=> b!6791473 (= e!4099152 ((_ map or) call!616649 call!616651))))

(declare-fun d!2133786 () Bool)

(declare-fun c!1262268 () Bool)

(assert (=> d!2133786 (= c!1262268 (and ((_ is ElementMatch!16613) r!7292) (= (c!1262203 r!7292) (h!72463 s!2326))))))

(declare-fun e!4099150 () (InoxSet Context!11994))

(assert (=> d!2133786 (= (derivationStepZipperDown!1841 r!7292 (Context!11995 Nil!66014) (h!72463 s!2326)) e!4099150)))

(declare-fun bm!616642 () Bool)

(declare-fun call!616650 () List!66138)

(declare-fun call!616648 () List!66138)

(assert (=> bm!616642 (= call!616650 call!616648)))

(declare-fun b!6791474 () Bool)

(assert (=> b!6791474 (= e!4099150 (store ((as const (Array Context!11994 Bool)) false) (Context!11995 Nil!66014) true))))

(declare-fun b!6791475 () Bool)

(declare-fun e!4099149 () (InoxSet Context!11994))

(declare-fun call!616652 () (InoxSet Context!11994))

(assert (=> b!6791475 (= e!4099149 ((_ map or) call!616649 call!616652))))

(declare-fun bm!616643 () Bool)

(assert (=> bm!616643 (= call!616652 call!616651)))

(declare-fun b!6791476 () Bool)

(declare-fun c!1262267 () Bool)

(assert (=> b!6791476 (= c!1262267 ((_ is Star!16613) r!7292))))

(declare-fun e!4099148 () (InoxSet Context!11994))

(declare-fun e!4099151 () (InoxSet Context!11994))

(assert (=> b!6791476 (= e!4099148 e!4099151)))

(declare-fun b!6791477 () Bool)

(declare-fun call!616647 () (InoxSet Context!11994))

(assert (=> b!6791477 (= e!4099148 call!616647)))

(declare-fun b!6791478 () Bool)

(assert (=> b!6791478 (= e!4099149 e!4099148)))

(declare-fun c!1262271 () Bool)

(assert (=> b!6791478 (= c!1262271 ((_ is Concat!25458) r!7292))))

(declare-fun b!6791479 () Bool)

(assert (=> b!6791479 (= e!4099151 call!616647)))

(declare-fun b!6791480 () Bool)

(assert (=> b!6791480 (= e!4099150 e!4099152)))

(declare-fun c!1262270 () Bool)

(assert (=> b!6791480 (= c!1262270 ((_ is Union!16613) r!7292))))

(declare-fun bm!616644 () Bool)

(assert (=> bm!616644 (= call!616647 call!616652)))

(declare-fun b!6791481 () Bool)

(assert (=> b!6791481 (= e!4099151 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6791482 () Bool)

(declare-fun e!4099153 () Bool)

(declare-fun nullable!6592 (Regex!16613) Bool)

(assert (=> b!6791482 (= e!4099153 (nullable!6592 (regOne!33738 r!7292)))))

(declare-fun bm!616645 () Bool)

(assert (=> bm!616645 (= call!616649 (derivationStepZipperDown!1841 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292)) (ite c!1262270 (Context!11995 Nil!66014) (Context!11995 call!616648)) (h!72463 s!2326)))))

(declare-fun b!6791483 () Bool)

(declare-fun c!1262269 () Bool)

(assert (=> b!6791483 (= c!1262269 e!4099153)))

(declare-fun res!2775724 () Bool)

(assert (=> b!6791483 (=> (not res!2775724) (not e!4099153))))

(assert (=> b!6791483 (= res!2775724 ((_ is Concat!25458) r!7292))))

(assert (=> b!6791483 (= e!4099152 e!4099149)))

(declare-fun bm!616646 () Bool)

(declare-fun $colon$colon!2422 (List!66138 Regex!16613) List!66138)

(assert (=> bm!616646 (= call!616648 ($colon$colon!2422 (exprs!6497 (Context!11995 Nil!66014)) (ite (or c!1262269 c!1262271) (regTwo!33738 r!7292) r!7292)))))

(declare-fun bm!616647 () Bool)

(assert (=> bm!616647 (= call!616651 (derivationStepZipperDown!1841 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292)))) (ite (or c!1262270 c!1262269) (Context!11995 Nil!66014) (Context!11995 call!616650)) (h!72463 s!2326)))))

(assert (= (and d!2133786 c!1262268) b!6791474))

(assert (= (and d!2133786 (not c!1262268)) b!6791480))

(assert (= (and b!6791480 c!1262270) b!6791473))

(assert (= (and b!6791480 (not c!1262270)) b!6791483))

(assert (= (and b!6791483 res!2775724) b!6791482))

(assert (= (and b!6791483 c!1262269) b!6791475))

(assert (= (and b!6791483 (not c!1262269)) b!6791478))

(assert (= (and b!6791478 c!1262271) b!6791477))

(assert (= (and b!6791478 (not c!1262271)) b!6791476))

(assert (= (and b!6791476 c!1262267) b!6791479))

(assert (= (and b!6791476 (not c!1262267)) b!6791481))

(assert (= (or b!6791477 b!6791479) bm!616642))

(assert (= (or b!6791477 b!6791479) bm!616644))

(assert (= (or b!6791475 bm!616642) bm!616646))

(assert (= (or b!6791475 bm!616644) bm!616643))

(assert (= (or b!6791473 bm!616643) bm!616647))

(assert (= (or b!6791473 b!6791475) bm!616645))

(declare-fun m!7538870 () Bool)

(assert (=> bm!616645 m!7538870))

(declare-fun m!7538872 () Bool)

(assert (=> bm!616647 m!7538872))

(declare-fun m!7538874 () Bool)

(assert (=> b!6791482 m!7538874))

(declare-fun m!7538876 () Bool)

(assert (=> bm!616646 m!7538876))

(declare-fun m!7538878 () Bool)

(assert (=> b!6791474 m!7538878))

(assert (=> b!6791308 d!2133786))

(declare-fun b!6791537 () Bool)

(declare-fun e!4099185 () (InoxSet Context!11994))

(assert (=> b!6791537 (= e!4099185 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6791538 () Bool)

(declare-fun e!4099186 () (InoxSet Context!11994))

(assert (=> b!6791538 (= e!4099186 e!4099185)))

(declare-fun c!1262288 () Bool)

(assert (=> b!6791538 (= c!1262288 ((_ is Cons!66014) (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))

(declare-fun b!6791539 () Bool)

(declare-fun call!616661 () (InoxSet Context!11994))

(assert (=> b!6791539 (= e!4099186 ((_ map or) call!616661 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (h!72463 s!2326))))))

(declare-fun b!6791540 () Bool)

(declare-fun e!4099187 () Bool)

(assert (=> b!6791540 (= e!4099187 (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))

(declare-fun b!6791541 () Bool)

(assert (=> b!6791541 (= e!4099185 call!616661)))

(declare-fun d!2133806 () Bool)

(declare-fun c!1262289 () Bool)

(assert (=> d!2133806 (= c!1262289 e!4099187)))

(declare-fun res!2775746 () Bool)

(assert (=> d!2133806 (=> (not res!2775746) (not e!4099187))))

(assert (=> d!2133806 (= res!2775746 ((_ is Cons!66014) (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))

(assert (=> d!2133806 (= (derivationStepZipperUp!1767 (Context!11995 (Cons!66014 r!7292 Nil!66014)) (h!72463 s!2326)) e!4099186)))

(declare-fun bm!616656 () Bool)

(assert (=> bm!616656 (= call!616661 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (h!72463 s!2326)))))

(assert (= (and d!2133806 res!2775746) b!6791540))

(assert (= (and d!2133806 c!1262289) b!6791539))

(assert (= (and d!2133806 (not c!1262289)) b!6791538))

(assert (= (and b!6791538 c!1262288) b!6791541))

(assert (= (and b!6791538 (not c!1262288)) b!6791537))

(assert (= (or b!6791539 b!6791541) bm!616656))

(declare-fun m!7538886 () Bool)

(assert (=> b!6791539 m!7538886))

(declare-fun m!7538888 () Bool)

(assert (=> b!6791540 m!7538888))

(declare-fun m!7538890 () Bool)

(assert (=> bm!616656 m!7538890))

(assert (=> b!6791308 d!2133806))

(declare-fun bs!1809454 () Bool)

(declare-fun d!2133810 () Bool)

(assert (= bs!1809454 (and d!2133810 b!6791302)))

(declare-fun lambda!382686 () Int)

(assert (=> bs!1809454 (= lambda!382686 lambda!382659)))

(assert (=> d!2133810 true))

(assert (=> d!2133810 (= (derivationStepZipper!2557 z!1189 (h!72463 s!2326)) (flatMap!2094 z!1189 lambda!382686))))

(declare-fun bs!1809455 () Bool)

(assert (= bs!1809455 d!2133810))

(declare-fun m!7538892 () Bool)

(assert (=> bs!1809455 m!7538892))

(assert (=> b!6791308 d!2133810))

(declare-fun d!2133812 () Bool)

(declare-fun dynLambda!26349 (Int Context!11994) Context!11994)

(assert (=> d!2133812 (= (map!15080 lt!2446535 lambda!382660) (store ((as const (Array Context!11994 Bool)) false) (dynLambda!26349 lambda!382660 lt!2446519) true))))

(declare-fun lt!2446568 () Unit!159917)

(declare-fun choose!50596 ((InoxSet Context!11994) Context!11994 Int) Unit!159917)

(assert (=> d!2133812 (= lt!2446568 (choose!50596 lt!2446535 lt!2446519 lambda!382660))))

(assert (=> d!2133812 (= lt!2446535 (store ((as const (Array Context!11994 Bool)) false) lt!2446519 true))))

(assert (=> d!2133812 (= (lemmaMapOnSingletonSet!248 lt!2446535 lt!2446519 lambda!382660) lt!2446568)))

(declare-fun b_lambda!255797 () Bool)

(assert (=> (not b_lambda!255797) (not d!2133812)))

(declare-fun bs!1809456 () Bool)

(assert (= bs!1809456 d!2133812))

(declare-fun m!7538906 () Bool)

(assert (=> bs!1809456 m!7538906))

(declare-fun m!7538908 () Bool)

(assert (=> bs!1809456 m!7538908))

(declare-fun m!7538910 () Bool)

(assert (=> bs!1809456 m!7538910))

(assert (=> bs!1809456 m!7538732))

(assert (=> bs!1809456 m!7538908))

(assert (=> bs!1809456 m!7538722))

(assert (=> b!6791309 d!2133812))

(declare-fun d!2133816 () Bool)

(assert (=> d!2133816 (forall!15805 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511) lambda!382661)))

(declare-fun lt!2446577 () Unit!159917)

(declare-fun choose!50597 (List!66138 List!66138 Int) Unit!159917)

(assert (=> d!2133816 (= lt!2446577 (choose!50597 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511 lambda!382661))))

(assert (=> d!2133816 (forall!15805 (Cons!66014 (reg!16942 r!7292) Nil!66014) lambda!382661)))

(assert (=> d!2133816 (= (lemmaConcatPreservesForall!442 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511 lambda!382661) lt!2446577)))

(declare-fun bs!1809460 () Bool)

(assert (= bs!1809460 d!2133816))

(assert (=> bs!1809460 m!7538726))

(assert (=> bs!1809460 m!7538726))

(declare-fun m!7538928 () Bool)

(assert (=> bs!1809460 m!7538928))

(declare-fun m!7538930 () Bool)

(assert (=> bs!1809460 m!7538930))

(declare-fun m!7538932 () Bool)

(assert (=> bs!1809460 m!7538932))

(assert (=> b!6791309 d!2133816))

(declare-fun d!2133826 () Bool)

(declare-fun choose!50598 ((InoxSet Context!11994) Int) (InoxSet Context!11994))

(assert (=> d!2133826 (= (map!15080 lt!2446535 lambda!382660) (choose!50598 lt!2446535 lambda!382660))))

(declare-fun bs!1809461 () Bool)

(assert (= bs!1809461 d!2133826))

(declare-fun m!7538934 () Bool)

(assert (=> bs!1809461 m!7538934))

(assert (=> b!6791309 d!2133826))

(declare-fun b!6791631 () Bool)

(declare-fun res!2775783 () Bool)

(declare-fun e!4099235 () Bool)

(assert (=> b!6791631 (=> (not res!2775783) (not e!4099235))))

(declare-fun lt!2446589 () List!66138)

(declare-fun size!40649 (List!66138) Int)

(assert (=> b!6791631 (= res!2775783 (= (size!40649 lt!2446589) (+ (size!40649 (Cons!66014 (reg!16942 r!7292) Nil!66014)) (size!40649 lt!2446511))))))

(declare-fun d!2133828 () Bool)

(assert (=> d!2133828 e!4099235))

(declare-fun res!2775782 () Bool)

(assert (=> d!2133828 (=> (not res!2775782) (not e!4099235))))

(declare-fun content!12875 (List!66138) (InoxSet Regex!16613))

(assert (=> d!2133828 (= res!2775782 (= (content!12875 lt!2446589) ((_ map or) (content!12875 (Cons!66014 (reg!16942 r!7292) Nil!66014)) (content!12875 lt!2446511))))))

(declare-fun e!4099234 () List!66138)

(assert (=> d!2133828 (= lt!2446589 e!4099234)))

(declare-fun c!1262317 () Bool)

(assert (=> d!2133828 (= c!1262317 ((_ is Nil!66014) (Cons!66014 (reg!16942 r!7292) Nil!66014)))))

(assert (=> d!2133828 (= (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511) lt!2446589)))

(declare-fun b!6791630 () Bool)

(assert (=> b!6791630 (= e!4099234 (Cons!66014 (h!72462 (Cons!66014 (reg!16942 r!7292) Nil!66014)) (++!14771 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014)) lt!2446511)))))

(declare-fun b!6791632 () Bool)

(assert (=> b!6791632 (= e!4099235 (or (not (= lt!2446511 Nil!66014)) (= lt!2446589 (Cons!66014 (reg!16942 r!7292) Nil!66014))))))

(declare-fun b!6791629 () Bool)

(assert (=> b!6791629 (= e!4099234 lt!2446511)))

(assert (= (and d!2133828 c!1262317) b!6791629))

(assert (= (and d!2133828 (not c!1262317)) b!6791630))

(assert (= (and d!2133828 res!2775782) b!6791631))

(assert (= (and b!6791631 res!2775783) b!6791632))

(declare-fun m!7538996 () Bool)

(assert (=> b!6791631 m!7538996))

(declare-fun m!7539002 () Bool)

(assert (=> b!6791631 m!7539002))

(declare-fun m!7539006 () Bool)

(assert (=> b!6791631 m!7539006))

(declare-fun m!7539008 () Bool)

(assert (=> d!2133828 m!7539008))

(declare-fun m!7539010 () Bool)

(assert (=> d!2133828 m!7539010))

(declare-fun m!7539012 () Bool)

(assert (=> d!2133828 m!7539012))

(declare-fun m!7539014 () Bool)

(assert (=> b!6791630 m!7539014))

(assert (=> b!6791309 d!2133828))

(declare-fun bs!1809473 () Bool)

(declare-fun d!2133858 () Bool)

(assert (= bs!1809473 (and d!2133858 b!6791309)))

(declare-fun lambda!382690 () Int)

(assert (=> bs!1809473 (= lambda!382690 lambda!382661)))

(declare-fun bs!1809474 () Bool)

(assert (= bs!1809474 (and d!2133858 d!2133774)))

(assert (=> bs!1809474 (= lambda!382690 lambda!382664)))

(declare-fun bs!1809475 () Bool)

(assert (= bs!1809475 (and d!2133858 d!2133778)))

(assert (=> bs!1809475 (= lambda!382690 lambda!382667)))

(assert (=> d!2133858 (= (inv!84779 lt!2446529) (forall!15805 (exprs!6497 lt!2446529) lambda!382690))))

(declare-fun bs!1809476 () Bool)

(assert (= bs!1809476 d!2133858))

(declare-fun m!7539020 () Bool)

(assert (=> bs!1809476 m!7539020))

(assert (=> b!6791309 d!2133858))

(declare-fun d!2133862 () Bool)

(declare-fun lt!2446591 () Regex!16613)

(assert (=> d!2133862 (validRegex!8349 lt!2446591)))

(assert (=> d!2133862 (= lt!2446591 (generalisedUnion!2457 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))))))

(assert (=> d!2133862 (= (unfocusZipper!2355 (Cons!66016 lt!2446519 Nil!66016)) lt!2446591)))

(declare-fun bs!1809477 () Bool)

(assert (= bs!1809477 d!2133862))

(declare-fun m!7539022 () Bool)

(assert (=> bs!1809477 m!7539022))

(declare-fun m!7539024 () Bool)

(assert (=> bs!1809477 m!7539024))

(assert (=> bs!1809477 m!7539024))

(declare-fun m!7539026 () Bool)

(assert (=> bs!1809477 m!7539026))

(assert (=> b!6791298 d!2133862))

(declare-fun d!2133864 () Bool)

(declare-fun dynLambda!26350 (Int Context!11994) (InoxSet Context!11994))

(assert (=> d!2133864 (= (flatMap!2094 lt!2446517 lambda!382659) (dynLambda!26350 lambda!382659 lt!2446529))))

(declare-fun lt!2446594 () Unit!159917)

(declare-fun choose!50599 ((InoxSet Context!11994) Context!11994 Int) Unit!159917)

(assert (=> d!2133864 (= lt!2446594 (choose!50599 lt!2446517 lt!2446529 lambda!382659))))

(assert (=> d!2133864 (= lt!2446517 (store ((as const (Array Context!11994 Bool)) false) lt!2446529 true))))

(assert (=> d!2133864 (= (lemmaFlatMapOnSingletonSet!1620 lt!2446517 lt!2446529 lambda!382659) lt!2446594)))

(declare-fun b_lambda!255807 () Bool)

(assert (=> (not b_lambda!255807) (not d!2133864)))

(declare-fun bs!1809487 () Bool)

(assert (= bs!1809487 d!2133864))

(assert (=> bs!1809487 m!7538744))

(declare-fun m!7539056 () Bool)

(assert (=> bs!1809487 m!7539056))

(declare-fun m!7539060 () Bool)

(assert (=> bs!1809487 m!7539060))

(assert (=> bs!1809487 m!7538742))

(assert (=> b!6791294 d!2133864))

(declare-fun bs!1809489 () Bool)

(declare-fun d!2133878 () Bool)

(assert (= bs!1809489 (and d!2133878 b!6791302)))

(declare-fun lambda!382693 () Int)

(assert (=> bs!1809489 (= lambda!382693 lambda!382659)))

(declare-fun bs!1809490 () Bool)

(assert (= bs!1809490 (and d!2133878 d!2133810)))

(assert (=> bs!1809490 (= lambda!382693 lambda!382686)))

(assert (=> d!2133878 true))

(assert (=> d!2133878 (= (derivationStepZipper!2557 lt!2446517 (h!72463 s!2326)) (flatMap!2094 lt!2446517 lambda!382693))))

(declare-fun bs!1809491 () Bool)

(assert (= bs!1809491 d!2133878))

(declare-fun m!7539066 () Bool)

(assert (=> bs!1809491 m!7539066))

(assert (=> b!6791294 d!2133878))

(declare-fun b!6791669 () Bool)

(declare-fun e!4099262 () (InoxSet Context!11994))

(assert (=> b!6791669 (= e!4099262 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6791670 () Bool)

(declare-fun e!4099263 () (InoxSet Context!11994))

(assert (=> b!6791670 (= e!4099263 e!4099262)))

(declare-fun c!1262328 () Bool)

(assert (=> b!6791670 (= c!1262328 ((_ is Cons!66014) (exprs!6497 lt!2446519)))))

(declare-fun b!6791671 () Bool)

(declare-fun call!616684 () (InoxSet Context!11994))

(assert (=> b!6791671 (= e!4099263 ((_ map or) call!616684 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 lt!2446519))) (h!72463 s!2326))))))

(declare-fun b!6791672 () Bool)

(declare-fun e!4099264 () Bool)

(assert (=> b!6791672 (= e!4099264 (nullable!6592 (h!72462 (exprs!6497 lt!2446519))))))

(declare-fun b!6791673 () Bool)

(assert (=> b!6791673 (= e!4099262 call!616684)))

(declare-fun d!2133880 () Bool)

(declare-fun c!1262329 () Bool)

(assert (=> d!2133880 (= c!1262329 e!4099264)))

(declare-fun res!2775800 () Bool)

(assert (=> d!2133880 (=> (not res!2775800) (not e!4099264))))

(assert (=> d!2133880 (= res!2775800 ((_ is Cons!66014) (exprs!6497 lt!2446519)))))

(assert (=> d!2133880 (= (derivationStepZipperUp!1767 lt!2446519 (h!72463 s!2326)) e!4099263)))

(declare-fun bm!616679 () Bool)

(assert (=> bm!616679 (= call!616684 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 lt!2446519)) (Context!11995 (t!379861 (exprs!6497 lt!2446519))) (h!72463 s!2326)))))

(assert (= (and d!2133880 res!2775800) b!6791672))

(assert (= (and d!2133880 c!1262329) b!6791671))

(assert (= (and d!2133880 (not c!1262329)) b!6791670))

(assert (= (and b!6791670 c!1262328) b!6791673))

(assert (= (and b!6791670 (not c!1262328)) b!6791669))

(assert (= (or b!6791671 b!6791673) bm!616679))

(declare-fun m!7539068 () Bool)

(assert (=> b!6791671 m!7539068))

(declare-fun m!7539070 () Bool)

(assert (=> b!6791672 m!7539070))

(declare-fun m!7539072 () Bool)

(assert (=> bm!616679 m!7539072))

(assert (=> b!6791294 d!2133880))

(declare-fun b!6791674 () Bool)

(declare-fun e!4099265 () (InoxSet Context!11994))

(assert (=> b!6791674 (= e!4099265 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6791675 () Bool)

(declare-fun e!4099266 () (InoxSet Context!11994))

(assert (=> b!6791675 (= e!4099266 e!4099265)))

(declare-fun c!1262330 () Bool)

(assert (=> b!6791675 (= c!1262330 ((_ is Cons!66014) (exprs!6497 lt!2446529)))))

(declare-fun call!616685 () (InoxSet Context!11994))

(declare-fun b!6791676 () Bool)

(assert (=> b!6791676 (= e!4099266 ((_ map or) call!616685 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 lt!2446529))) (h!72463 s!2326))))))

(declare-fun b!6791677 () Bool)

(declare-fun e!4099267 () Bool)

(assert (=> b!6791677 (= e!4099267 (nullable!6592 (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun b!6791678 () Bool)

(assert (=> b!6791678 (= e!4099265 call!616685)))

(declare-fun d!2133882 () Bool)

(declare-fun c!1262331 () Bool)

(assert (=> d!2133882 (= c!1262331 e!4099267)))

(declare-fun res!2775801 () Bool)

(assert (=> d!2133882 (=> (not res!2775801) (not e!4099267))))

(assert (=> d!2133882 (= res!2775801 ((_ is Cons!66014) (exprs!6497 lt!2446529)))))

(assert (=> d!2133882 (= (derivationStepZipperUp!1767 lt!2446529 (h!72463 s!2326)) e!4099266)))

(declare-fun bm!616680 () Bool)

(assert (=> bm!616680 (= call!616685 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 lt!2446529)) (Context!11995 (t!379861 (exprs!6497 lt!2446529))) (h!72463 s!2326)))))

(assert (= (and d!2133882 res!2775801) b!6791677))

(assert (= (and d!2133882 c!1262331) b!6791676))

(assert (= (and d!2133882 (not c!1262331)) b!6791675))

(assert (= (and b!6791675 c!1262330) b!6791678))

(assert (= (and b!6791675 (not c!1262330)) b!6791674))

(assert (= (or b!6791676 b!6791678) bm!616680))

(declare-fun m!7539074 () Bool)

(assert (=> b!6791676 m!7539074))

(declare-fun m!7539076 () Bool)

(assert (=> b!6791677 m!7539076))

(declare-fun m!7539078 () Bool)

(assert (=> bm!616680 m!7539078))

(assert (=> b!6791294 d!2133882))

(declare-fun d!2133884 () Bool)

(assert (=> d!2133884 (= (flatMap!2094 lt!2446535 lambda!382659) (dynLambda!26350 lambda!382659 lt!2446519))))

(declare-fun lt!2446596 () Unit!159917)

(assert (=> d!2133884 (= lt!2446596 (choose!50599 lt!2446535 lt!2446519 lambda!382659))))

(assert (=> d!2133884 (= lt!2446535 (store ((as const (Array Context!11994 Bool)) false) lt!2446519 true))))

(assert (=> d!2133884 (= (lemmaFlatMapOnSingletonSet!1620 lt!2446535 lt!2446519 lambda!382659) lt!2446596)))

(declare-fun b_lambda!255809 () Bool)

(assert (=> (not b_lambda!255809) (not d!2133884)))

(declare-fun bs!1809492 () Bool)

(assert (= bs!1809492 d!2133884))

(assert (=> bs!1809492 m!7538736))

(declare-fun m!7539080 () Bool)

(assert (=> bs!1809492 m!7539080))

(declare-fun m!7539082 () Bool)

(assert (=> bs!1809492 m!7539082))

(assert (=> bs!1809492 m!7538732))

(assert (=> b!6791294 d!2133884))

(declare-fun d!2133886 () Bool)

(declare-fun choose!50600 ((InoxSet Context!11994) Int) (InoxSet Context!11994))

(assert (=> d!2133886 (= (flatMap!2094 lt!2446517 lambda!382659) (choose!50600 lt!2446517 lambda!382659))))

(declare-fun bs!1809493 () Bool)

(assert (= bs!1809493 d!2133886))

(declare-fun m!7539084 () Bool)

(assert (=> bs!1809493 m!7539084))

(assert (=> b!6791294 d!2133886))

(declare-fun d!2133888 () Bool)

(assert (=> d!2133888 (= (flatMap!2094 lt!2446535 lambda!382659) (choose!50600 lt!2446535 lambda!382659))))

(declare-fun bs!1809494 () Bool)

(assert (= bs!1809494 d!2133888))

(declare-fun m!7539086 () Bool)

(assert (=> bs!1809494 m!7539086))

(assert (=> b!6791294 d!2133888))

(declare-fun bs!1809518 () Bool)

(declare-fun d!2133890 () Bool)

(assert (= bs!1809518 (and d!2133890 b!6791309)))

(declare-fun lambda!382704 () Int)

(assert (=> bs!1809518 (= lambda!382704 lambda!382661)))

(declare-fun bs!1809519 () Bool)

(assert (= bs!1809519 (and d!2133890 d!2133774)))

(assert (=> bs!1809519 (= lambda!382704 lambda!382664)))

(declare-fun bs!1809520 () Bool)

(assert (= bs!1809520 (and d!2133890 d!2133778)))

(assert (=> bs!1809520 (= lambda!382704 lambda!382667)))

(declare-fun bs!1809521 () Bool)

(assert (= bs!1809521 (and d!2133890 d!2133858)))

(assert (=> bs!1809521 (= lambda!382704 lambda!382690)))

(declare-fun b!6791760 () Bool)

(declare-fun e!4099315 () Regex!16613)

(assert (=> b!6791760 (= e!4099315 EmptyExpr!16613)))

(declare-fun b!6791761 () Bool)

(assert (=> b!6791761 (= e!4099315 (Concat!25458 (h!72462 (exprs!6497 (h!72464 zl!343))) (generalisedConcat!2210 (t!379861 (exprs!6497 (h!72464 zl!343))))))))

(declare-fun b!6791762 () Bool)

(declare-fun e!4099316 () Bool)

(declare-fun lt!2446608 () Regex!16613)

(declare-fun isEmptyExpr!1971 (Regex!16613) Bool)

(assert (=> b!6791762 (= e!4099316 (isEmptyExpr!1971 lt!2446608))))

(declare-fun b!6791764 () Bool)

(declare-fun e!4099317 () Bool)

(assert (=> b!6791764 (= e!4099317 (isEmpty!38388 (t!379861 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6791765 () Bool)

(declare-fun e!4099318 () Bool)

(assert (=> b!6791765 (= e!4099318 e!4099316)))

(declare-fun c!1262365 () Bool)

(assert (=> b!6791765 (= c!1262365 (isEmpty!38388 (exprs!6497 (h!72464 zl!343))))))

(declare-fun b!6791766 () Bool)

(declare-fun e!4099320 () Bool)

(assert (=> b!6791766 (= e!4099320 (= lt!2446608 (head!13637 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6791767 () Bool)

(declare-fun e!4099319 () Regex!16613)

(assert (=> b!6791767 (= e!4099319 (h!72462 (exprs!6497 (h!72464 zl!343))))))

(declare-fun b!6791768 () Bool)

(assert (=> b!6791768 (= e!4099319 e!4099315)))

(declare-fun c!1262363 () Bool)

(assert (=> b!6791768 (= c!1262363 ((_ is Cons!66014) (exprs!6497 (h!72464 zl!343))))))

(declare-fun b!6791769 () Bool)

(assert (=> b!6791769 (= e!4099316 e!4099320)))

(declare-fun c!1262362 () Bool)

(assert (=> b!6791769 (= c!1262362 (isEmpty!38388 (tail!12722 (exprs!6497 (h!72464 zl!343)))))))

(assert (=> d!2133890 e!4099318))

(declare-fun res!2775823 () Bool)

(assert (=> d!2133890 (=> (not res!2775823) (not e!4099318))))

(assert (=> d!2133890 (= res!2775823 (validRegex!8349 lt!2446608))))

(assert (=> d!2133890 (= lt!2446608 e!4099319)))

(declare-fun c!1262364 () Bool)

(assert (=> d!2133890 (= c!1262364 e!4099317)))

(declare-fun res!2775824 () Bool)

(assert (=> d!2133890 (=> (not res!2775824) (not e!4099317))))

(assert (=> d!2133890 (= res!2775824 ((_ is Cons!66014) (exprs!6497 (h!72464 zl!343))))))

(assert (=> d!2133890 (forall!15805 (exprs!6497 (h!72464 zl!343)) lambda!382704)))

(assert (=> d!2133890 (= (generalisedConcat!2210 (exprs!6497 (h!72464 zl!343))) lt!2446608)))

(declare-fun b!6791763 () Bool)

(declare-fun isConcat!1494 (Regex!16613) Bool)

(assert (=> b!6791763 (= e!4099320 (isConcat!1494 lt!2446608))))

(assert (= (and d!2133890 res!2775824) b!6791764))

(assert (= (and d!2133890 c!1262364) b!6791767))

(assert (= (and d!2133890 (not c!1262364)) b!6791768))

(assert (= (and b!6791768 c!1262363) b!6791761))

(assert (= (and b!6791768 (not c!1262363)) b!6791760))

(assert (= (and d!2133890 res!2775823) b!6791765))

(assert (= (and b!6791765 c!1262365) b!6791762))

(assert (= (and b!6791765 (not c!1262365)) b!6791769))

(assert (= (and b!6791769 c!1262362) b!6791766))

(assert (= (and b!6791769 (not c!1262362)) b!6791763))

(declare-fun m!7539136 () Bool)

(assert (=> b!6791762 m!7539136))

(declare-fun m!7539138 () Bool)

(assert (=> b!6791766 m!7539138))

(declare-fun m!7539140 () Bool)

(assert (=> b!6791769 m!7539140))

(assert (=> b!6791769 m!7539140))

(declare-fun m!7539142 () Bool)

(assert (=> b!6791769 m!7539142))

(declare-fun m!7539144 () Bool)

(assert (=> d!2133890 m!7539144))

(declare-fun m!7539146 () Bool)

(assert (=> d!2133890 m!7539146))

(declare-fun m!7539148 () Bool)

(assert (=> b!6791764 m!7539148))

(declare-fun m!7539150 () Bool)

(assert (=> b!6791763 m!7539150))

(declare-fun m!7539152 () Bool)

(assert (=> b!6791765 m!7539152))

(declare-fun m!7539154 () Bool)

(assert (=> b!6791761 m!7539154))

(assert (=> b!6791295 d!2133890))

(declare-fun bs!1809522 () Bool)

(declare-fun d!2133910 () Bool)

(assert (= bs!1809522 (and d!2133910 d!2133858)))

(declare-fun lambda!382705 () Int)

(assert (=> bs!1809522 (= lambda!382705 lambda!382690)))

(declare-fun bs!1809523 () Bool)

(assert (= bs!1809523 (and d!2133910 d!2133890)))

(assert (=> bs!1809523 (= lambda!382705 lambda!382704)))

(declare-fun bs!1809524 () Bool)

(assert (= bs!1809524 (and d!2133910 d!2133774)))

(assert (=> bs!1809524 (= lambda!382705 lambda!382664)))

(declare-fun bs!1809525 () Bool)

(assert (= bs!1809525 (and d!2133910 d!2133778)))

(assert (=> bs!1809525 (= lambda!382705 lambda!382667)))

(declare-fun bs!1809526 () Bool)

(assert (= bs!1809526 (and d!2133910 b!6791309)))

(assert (=> bs!1809526 (= lambda!382705 lambda!382661)))

(assert (=> d!2133910 (= (inv!84779 (h!72464 zl!343)) (forall!15805 (exprs!6497 (h!72464 zl!343)) lambda!382705))))

(declare-fun bs!1809527 () Bool)

(assert (= bs!1809527 d!2133910))

(declare-fun m!7539156 () Bool)

(assert (=> bs!1809527 m!7539156))

(assert (=> b!6791285 d!2133910))

(declare-fun d!2133912 () Bool)

(declare-fun c!1262368 () Bool)

(assert (=> d!2133912 (= c!1262368 (isEmpty!38385 s!2326))))

(declare-fun e!4099327 () Bool)

(assert (=> d!2133912 (= (matchZipper!2599 lt!2446518 s!2326) e!4099327)))

(declare-fun b!6791782 () Bool)

(declare-fun nullableZipper!2320 ((InoxSet Context!11994)) Bool)

(assert (=> b!6791782 (= e!4099327 (nullableZipper!2320 lt!2446518))))

(declare-fun b!6791783 () Bool)

(declare-fun head!13638 (List!66139) C!33496)

(declare-fun tail!12723 (List!66139) List!66139)

(assert (=> b!6791783 (= e!4099327 (matchZipper!2599 (derivationStepZipper!2557 lt!2446518 (head!13638 s!2326)) (tail!12723 s!2326)))))

(assert (= (and d!2133912 c!1262368) b!6791782))

(assert (= (and d!2133912 (not c!1262368)) b!6791783))

(assert (=> d!2133912 m!7538676))

(declare-fun m!7539158 () Bool)

(assert (=> b!6791782 m!7539158))

(declare-fun m!7539160 () Bool)

(assert (=> b!6791783 m!7539160))

(assert (=> b!6791783 m!7539160))

(declare-fun m!7539162 () Bool)

(assert (=> b!6791783 m!7539162))

(declare-fun m!7539164 () Bool)

(assert (=> b!6791783 m!7539164))

(assert (=> b!6791783 m!7539162))

(assert (=> b!6791783 m!7539164))

(declare-fun m!7539166 () Bool)

(assert (=> b!6791783 m!7539166))

(assert (=> b!6791281 d!2133912))

(declare-fun d!2133914 () Bool)

(declare-fun c!1262369 () Bool)

(assert (=> d!2133914 (= c!1262369 (isEmpty!38385 (t!379862 s!2326)))))

(declare-fun e!4099328 () Bool)

(assert (=> d!2133914 (= (matchZipper!2599 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (t!379862 s!2326)) e!4099328)))

(declare-fun b!6791784 () Bool)

(assert (=> b!6791784 (= e!4099328 (nullableZipper!2320 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326))))))

(declare-fun b!6791785 () Bool)

(assert (=> b!6791785 (= e!4099328 (matchZipper!2599 (derivationStepZipper!2557 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (head!13638 (t!379862 s!2326))) (tail!12723 (t!379862 s!2326))))))

(assert (= (and d!2133914 c!1262369) b!6791784))

(assert (= (and d!2133914 (not c!1262369)) b!6791785))

(declare-fun m!7539168 () Bool)

(assert (=> d!2133914 m!7539168))

(assert (=> b!6791784 m!7538756))

(declare-fun m!7539170 () Bool)

(assert (=> b!6791784 m!7539170))

(declare-fun m!7539172 () Bool)

(assert (=> b!6791785 m!7539172))

(assert (=> b!6791785 m!7538756))

(assert (=> b!6791785 m!7539172))

(declare-fun m!7539174 () Bool)

(assert (=> b!6791785 m!7539174))

(declare-fun m!7539176 () Bool)

(assert (=> b!6791785 m!7539176))

(assert (=> b!6791785 m!7539174))

(assert (=> b!6791785 m!7539176))

(declare-fun m!7539178 () Bool)

(assert (=> b!6791785 m!7539178))

(assert (=> b!6791281 d!2133914))

(declare-fun bs!1809534 () Bool)

(declare-fun d!2133916 () Bool)

(assert (= bs!1809534 (and d!2133916 b!6791302)))

(declare-fun lambda!382712 () Int)

(assert (=> bs!1809534 (= lambda!382712 lambda!382659)))

(declare-fun bs!1809535 () Bool)

(assert (= bs!1809535 (and d!2133916 d!2133810)))

(assert (=> bs!1809535 (= lambda!382712 lambda!382686)))

(declare-fun bs!1809536 () Bool)

(assert (= bs!1809536 (and d!2133916 d!2133878)))

(assert (=> bs!1809536 (= lambda!382712 lambda!382693)))

(assert (=> d!2133916 true))

(assert (=> d!2133916 (= (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (flatMap!2094 lt!2446518 lambda!382712))))

(declare-fun bs!1809537 () Bool)

(assert (= bs!1809537 d!2133916))

(declare-fun m!7539188 () Bool)

(assert (=> bs!1809537 m!7539188))

(assert (=> b!6791281 d!2133916))

(declare-fun d!2133920 () Bool)

(declare-fun lt!2446612 () Regex!16613)

(assert (=> d!2133920 (validRegex!8349 lt!2446612)))

(assert (=> d!2133920 (= lt!2446612 (generalisedUnion!2457 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))))))

(assert (=> d!2133920 (= (unfocusZipper!2355 (Cons!66016 lt!2446529 Nil!66016)) lt!2446612)))

(declare-fun bs!1809538 () Bool)

(assert (= bs!1809538 d!2133920))

(declare-fun m!7539190 () Bool)

(assert (=> bs!1809538 m!7539190))

(declare-fun m!7539192 () Bool)

(assert (=> bs!1809538 m!7539192))

(assert (=> bs!1809538 m!7539192))

(declare-fun m!7539194 () Bool)

(assert (=> bs!1809538 m!7539194))

(assert (=> b!6791311 d!2133920))

(declare-fun bs!1809555 () Bool)

(declare-fun b!6791842 () Bool)

(assert (= bs!1809555 (and b!6791842 b!6791299)))

(declare-fun lambda!382726 () Int)

(assert (=> bs!1809555 (not (= lambda!382726 lambda!382656))))

(assert (=> bs!1809555 (= (and (= (reg!16942 lt!2446525) (reg!16942 r!7292)) (= lt!2446525 r!7292)) (= lambda!382726 lambda!382657))))

(assert (=> bs!1809555 (not (= lambda!382726 lambda!382658))))

(assert (=> b!6791842 true))

(assert (=> b!6791842 true))

(declare-fun bs!1809556 () Bool)

(declare-fun b!6791834 () Bool)

(assert (= bs!1809556 (and b!6791834 b!6791299)))

(declare-fun lambda!382727 () Int)

(assert (=> bs!1809556 (not (= lambda!382727 lambda!382656))))

(assert (=> bs!1809556 (not (= lambda!382727 lambda!382657))))

(assert (=> bs!1809556 (= (and (= (regOne!33738 lt!2446525) (reg!16942 r!7292)) (= (regTwo!33738 lt!2446525) r!7292)) (= lambda!382727 lambda!382658))))

(declare-fun bs!1809557 () Bool)

(assert (= bs!1809557 (and b!6791834 b!6791842)))

(assert (=> bs!1809557 (not (= lambda!382727 lambda!382726))))

(assert (=> b!6791834 true))

(assert (=> b!6791834 true))

(declare-fun b!6791832 () Bool)

(declare-fun e!4099359 () Bool)

(declare-fun e!4099353 () Bool)

(assert (=> b!6791832 (= e!4099359 e!4099353)))

(declare-fun res!2775865 () Bool)

(assert (=> b!6791832 (= res!2775865 (matchRSpec!3714 (regOne!33739 lt!2446525) s!2326))))

(assert (=> b!6791832 (=> res!2775865 e!4099353)))

(declare-fun b!6791833 () Bool)

(declare-fun e!4099354 () Bool)

(declare-fun e!4099357 () Bool)

(assert (=> b!6791833 (= e!4099354 e!4099357)))

(declare-fun res!2775863 () Bool)

(assert (=> b!6791833 (= res!2775863 (not ((_ is EmptyLang!16613) lt!2446525)))))

(assert (=> b!6791833 (=> (not res!2775863) (not e!4099357))))

(declare-fun e!4099358 () Bool)

(declare-fun call!616693 () Bool)

(assert (=> b!6791834 (= e!4099358 call!616693)))

(declare-fun bm!616688 () Bool)

(declare-fun call!616694 () Bool)

(assert (=> bm!616688 (= call!616694 (isEmpty!38385 s!2326))))

(declare-fun b!6791835 () Bool)

(declare-fun c!1262380 () Bool)

(assert (=> b!6791835 (= c!1262380 ((_ is Union!16613) lt!2446525))))

(declare-fun e!4099355 () Bool)

(assert (=> b!6791835 (= e!4099355 e!4099359)))

(declare-fun b!6791836 () Bool)

(assert (=> b!6791836 (= e!4099353 (matchRSpec!3714 (regTwo!33739 lt!2446525) s!2326))))

(declare-fun b!6791837 () Bool)

(declare-fun c!1262381 () Bool)

(assert (=> b!6791837 (= c!1262381 ((_ is ElementMatch!16613) lt!2446525))))

(assert (=> b!6791837 (= e!4099357 e!4099355)))

(declare-fun b!6791838 () Bool)

(assert (=> b!6791838 (= e!4099354 call!616694)))

(declare-fun bm!616689 () Bool)

(declare-fun c!1262378 () Bool)

(assert (=> bm!616689 (= call!616693 (Exists!3681 (ite c!1262378 lambda!382726 lambda!382727)))))

(declare-fun b!6791840 () Bool)

(declare-fun res!2775864 () Bool)

(declare-fun e!4099356 () Bool)

(assert (=> b!6791840 (=> res!2775864 e!4099356)))

(assert (=> b!6791840 (= res!2775864 call!616694)))

(assert (=> b!6791840 (= e!4099358 e!4099356)))

(declare-fun b!6791839 () Bool)

(assert (=> b!6791839 (= e!4099355 (= s!2326 (Cons!66015 (c!1262203 lt!2446525) Nil!66015)))))

(declare-fun d!2133922 () Bool)

(declare-fun c!1262379 () Bool)

(assert (=> d!2133922 (= c!1262379 ((_ is EmptyExpr!16613) lt!2446525))))

(assert (=> d!2133922 (= (matchRSpec!3714 lt!2446525 s!2326) e!4099354)))

(declare-fun b!6791841 () Bool)

(assert (=> b!6791841 (= e!4099359 e!4099358)))

(assert (=> b!6791841 (= c!1262378 ((_ is Star!16613) lt!2446525))))

(assert (=> b!6791842 (= e!4099356 call!616693)))

(assert (= (and d!2133922 c!1262379) b!6791838))

(assert (= (and d!2133922 (not c!1262379)) b!6791833))

(assert (= (and b!6791833 res!2775863) b!6791837))

(assert (= (and b!6791837 c!1262381) b!6791839))

(assert (= (and b!6791837 (not c!1262381)) b!6791835))

(assert (= (and b!6791835 c!1262380) b!6791832))

(assert (= (and b!6791835 (not c!1262380)) b!6791841))

(assert (= (and b!6791832 (not res!2775865)) b!6791836))

(assert (= (and b!6791841 c!1262378) b!6791840))

(assert (= (and b!6791841 (not c!1262378)) b!6791834))

(assert (= (and b!6791840 (not res!2775864)) b!6791842))

(assert (= (or b!6791842 b!6791834) bm!616689))

(assert (= (or b!6791838 b!6791840) bm!616688))

(declare-fun m!7539208 () Bool)

(assert (=> b!6791832 m!7539208))

(assert (=> bm!616688 m!7538676))

(declare-fun m!7539210 () Bool)

(assert (=> b!6791836 m!7539210))

(declare-fun m!7539212 () Bool)

(assert (=> bm!616689 m!7539212))

(assert (=> b!6791282 d!2133922))

(declare-fun b!6791918 () Bool)

(declare-fun e!4099399 () Bool)

(declare-fun e!4099398 () Bool)

(assert (=> b!6791918 (= e!4099399 e!4099398)))

(declare-fun res!2775897 () Bool)

(assert (=> b!6791918 (=> (not res!2775897) (not e!4099398))))

(declare-fun lt!2446630 () Bool)

(assert (=> b!6791918 (= res!2775897 (not lt!2446630))))

(declare-fun b!6791919 () Bool)

(declare-fun e!4099393 () Bool)

(assert (=> b!6791919 (= e!4099393 (not lt!2446630))))

(declare-fun bm!616692 () Bool)

(declare-fun call!616697 () Bool)

(assert (=> bm!616692 (= call!616697 (isEmpty!38385 s!2326))))

(declare-fun b!6791920 () Bool)

(declare-fun res!2775900 () Bool)

(declare-fun e!4099394 () Bool)

(assert (=> b!6791920 (=> (not res!2775900) (not e!4099394))))

(assert (=> b!6791920 (= res!2775900 (isEmpty!38385 (tail!12723 s!2326)))))

(declare-fun b!6791921 () Bool)

(declare-fun e!4099397 () Bool)

(assert (=> b!6791921 (= e!4099398 e!4099397)))

(declare-fun res!2775899 () Bool)

(assert (=> b!6791921 (=> res!2775899 e!4099397)))

(assert (=> b!6791921 (= res!2775899 call!616697)))

(declare-fun d!2133932 () Bool)

(declare-fun e!4099395 () Bool)

(assert (=> d!2133932 e!4099395))

(declare-fun c!1262396 () Bool)

(assert (=> d!2133932 (= c!1262396 ((_ is EmptyExpr!16613) lt!2446525))))

(declare-fun e!4099396 () Bool)

(assert (=> d!2133932 (= lt!2446630 e!4099396)))

(declare-fun c!1262395 () Bool)

(assert (=> d!2133932 (= c!1262395 (isEmpty!38385 s!2326))))

(assert (=> d!2133932 (validRegex!8349 lt!2446525)))

(assert (=> d!2133932 (= (matchR!8796 lt!2446525 s!2326) lt!2446630)))

(declare-fun b!6791922 () Bool)

(declare-fun res!2775903 () Bool)

(assert (=> b!6791922 (=> res!2775903 e!4099399)))

(assert (=> b!6791922 (= res!2775903 e!4099394)))

(declare-fun res!2775898 () Bool)

(assert (=> b!6791922 (=> (not res!2775898) (not e!4099394))))

(assert (=> b!6791922 (= res!2775898 lt!2446630)))

(declare-fun b!6791923 () Bool)

(assert (=> b!6791923 (= e!4099394 (= (head!13638 s!2326) (c!1262203 lt!2446525)))))

(declare-fun b!6791924 () Bool)

(declare-fun res!2775901 () Bool)

(assert (=> b!6791924 (=> res!2775901 e!4099397)))

(assert (=> b!6791924 (= res!2775901 (not (isEmpty!38385 (tail!12723 s!2326))))))

(declare-fun b!6791925 () Bool)

(declare-fun res!2775904 () Bool)

(assert (=> b!6791925 (=> res!2775904 e!4099399)))

(assert (=> b!6791925 (= res!2775904 (not ((_ is ElementMatch!16613) lt!2446525)))))

(assert (=> b!6791925 (= e!4099393 e!4099399)))

(declare-fun b!6791926 () Bool)

(assert (=> b!6791926 (= e!4099395 e!4099393)))

(declare-fun c!1262394 () Bool)

(assert (=> b!6791926 (= c!1262394 ((_ is EmptyLang!16613) lt!2446525))))

(declare-fun b!6791927 () Bool)

(assert (=> b!6791927 (= e!4099395 (= lt!2446630 call!616697))))

(declare-fun b!6791928 () Bool)

(declare-fun derivativeStep!5277 (Regex!16613 C!33496) Regex!16613)

(assert (=> b!6791928 (= e!4099396 (matchR!8796 (derivativeStep!5277 lt!2446525 (head!13638 s!2326)) (tail!12723 s!2326)))))

(declare-fun b!6791929 () Bool)

(assert (=> b!6791929 (= e!4099397 (not (= (head!13638 s!2326) (c!1262203 lt!2446525))))))

(declare-fun b!6791930 () Bool)

(assert (=> b!6791930 (= e!4099396 (nullable!6592 lt!2446525))))

(declare-fun b!6791931 () Bool)

(declare-fun res!2775902 () Bool)

(assert (=> b!6791931 (=> (not res!2775902) (not e!4099394))))

(assert (=> b!6791931 (= res!2775902 (not call!616697))))

(assert (= (and d!2133932 c!1262395) b!6791930))

(assert (= (and d!2133932 (not c!1262395)) b!6791928))

(assert (= (and d!2133932 c!1262396) b!6791927))

(assert (= (and d!2133932 (not c!1262396)) b!6791926))

(assert (= (and b!6791926 c!1262394) b!6791919))

(assert (= (and b!6791926 (not c!1262394)) b!6791925))

(assert (= (and b!6791925 (not res!2775904)) b!6791922))

(assert (= (and b!6791922 res!2775898) b!6791931))

(assert (= (and b!6791931 res!2775902) b!6791920))

(assert (= (and b!6791920 res!2775900) b!6791923))

(assert (= (and b!6791922 (not res!2775903)) b!6791918))

(assert (= (and b!6791918 res!2775897) b!6791921))

(assert (= (and b!6791921 (not res!2775899)) b!6791924))

(assert (= (and b!6791924 (not res!2775901)) b!6791929))

(assert (= (or b!6791927 b!6791921 b!6791931) bm!616692))

(assert (=> b!6791923 m!7539160))

(declare-fun m!7539234 () Bool)

(assert (=> b!6791930 m!7539234))

(assert (=> b!6791928 m!7539160))

(assert (=> b!6791928 m!7539160))

(declare-fun m!7539236 () Bool)

(assert (=> b!6791928 m!7539236))

(assert (=> b!6791928 m!7539164))

(assert (=> b!6791928 m!7539236))

(assert (=> b!6791928 m!7539164))

(declare-fun m!7539238 () Bool)

(assert (=> b!6791928 m!7539238))

(assert (=> b!6791929 m!7539160))

(assert (=> b!6791924 m!7539164))

(assert (=> b!6791924 m!7539164))

(declare-fun m!7539242 () Bool)

(assert (=> b!6791924 m!7539242))

(assert (=> bm!616692 m!7538676))

(assert (=> d!2133932 m!7538676))

(declare-fun m!7539244 () Bool)

(assert (=> d!2133932 m!7539244))

(assert (=> b!6791920 m!7539164))

(assert (=> b!6791920 m!7539164))

(assert (=> b!6791920 m!7539242))

(assert (=> b!6791282 d!2133932))

(declare-fun d!2133934 () Bool)

(assert (=> d!2133934 (= (matchR!8796 lt!2446525 s!2326) (matchRSpec!3714 lt!2446525 s!2326))))

(declare-fun lt!2446634 () Unit!159917)

(declare-fun choose!50601 (Regex!16613 List!66139) Unit!159917)

(assert (=> d!2133934 (= lt!2446634 (choose!50601 lt!2446525 s!2326))))

(assert (=> d!2133934 (validRegex!8349 lt!2446525)))

(assert (=> d!2133934 (= (mainMatchTheorem!3714 lt!2446525 s!2326) lt!2446634)))

(declare-fun bs!1809560 () Bool)

(assert (= bs!1809560 d!2133934))

(assert (=> bs!1809560 m!7538750))

(assert (=> bs!1809560 m!7538748))

(declare-fun m!7539252 () Bool)

(assert (=> bs!1809560 m!7539252))

(assert (=> bs!1809560 m!7539244))

(assert (=> b!6791282 d!2133934))

(declare-fun d!2133942 () Bool)

(assert (=> d!2133942 (= (flatMap!2094 z!1189 lambda!382659) (choose!50600 z!1189 lambda!382659))))

(declare-fun bs!1809564 () Bool)

(assert (= bs!1809564 d!2133942))

(declare-fun m!7539254 () Bool)

(assert (=> bs!1809564 m!7539254))

(assert (=> b!6791302 d!2133942))

(declare-fun b!6791966 () Bool)

(declare-fun e!4099419 () (InoxSet Context!11994))

(assert (=> b!6791966 (= e!4099419 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6791967 () Bool)

(declare-fun e!4099420 () (InoxSet Context!11994))

(assert (=> b!6791967 (= e!4099420 e!4099419)))

(declare-fun c!1262397 () Bool)

(assert (=> b!6791967 (= c!1262397 ((_ is Cons!66014) (exprs!6497 (h!72464 zl!343))))))

(declare-fun call!616698 () (InoxSet Context!11994))

(declare-fun b!6791968 () Bool)

(assert (=> b!6791968 (= e!4099420 ((_ map or) call!616698 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) (h!72463 s!2326))))))

(declare-fun b!6791969 () Bool)

(declare-fun e!4099421 () Bool)

(assert (=> b!6791969 (= e!4099421 (nullable!6592 (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6791970 () Bool)

(assert (=> b!6791970 (= e!4099419 call!616698)))

(declare-fun d!2133948 () Bool)

(declare-fun c!1262398 () Bool)

(assert (=> d!2133948 (= c!1262398 e!4099421)))

(declare-fun res!2775905 () Bool)

(assert (=> d!2133948 (=> (not res!2775905) (not e!4099421))))

(assert (=> d!2133948 (= res!2775905 ((_ is Cons!66014) (exprs!6497 (h!72464 zl!343))))))

(assert (=> d!2133948 (= (derivationStepZipperUp!1767 (h!72464 zl!343) (h!72463 s!2326)) e!4099420)))

(declare-fun bm!616693 () Bool)

(assert (=> bm!616693 (= call!616698 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (h!72464 zl!343))) (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) (h!72463 s!2326)))))

(assert (= (and d!2133948 res!2775905) b!6791969))

(assert (= (and d!2133948 c!1262398) b!6791968))

(assert (= (and d!2133948 (not c!1262398)) b!6791967))

(assert (= (and b!6791967 c!1262397) b!6791970))

(assert (= (and b!6791967 (not c!1262397)) b!6791966))

(assert (= (or b!6791968 b!6791970) bm!616693))

(declare-fun m!7539256 () Bool)

(assert (=> b!6791968 m!7539256))

(declare-fun m!7539258 () Bool)

(assert (=> b!6791969 m!7539258))

(declare-fun m!7539260 () Bool)

(assert (=> bm!616693 m!7539260))

(assert (=> b!6791302 d!2133948))

(declare-fun d!2133950 () Bool)

(assert (=> d!2133950 (= (flatMap!2094 z!1189 lambda!382659) (dynLambda!26350 lambda!382659 (h!72464 zl!343)))))

(declare-fun lt!2446635 () Unit!159917)

(assert (=> d!2133950 (= lt!2446635 (choose!50599 z!1189 (h!72464 zl!343) lambda!382659))))

(assert (=> d!2133950 (= z!1189 (store ((as const (Array Context!11994 Bool)) false) (h!72464 zl!343) true))))

(assert (=> d!2133950 (= (lemmaFlatMapOnSingletonSet!1620 z!1189 (h!72464 zl!343) lambda!382659) lt!2446635)))

(declare-fun b_lambda!255821 () Bool)

(assert (=> (not b_lambda!255821) (not d!2133950)))

(declare-fun bs!1809565 () Bool)

(assert (= bs!1809565 d!2133950))

(assert (=> bs!1809565 m!7538662))

(declare-fun m!7539262 () Bool)

(assert (=> bs!1809565 m!7539262))

(declare-fun m!7539264 () Bool)

(assert (=> bs!1809565 m!7539264))

(declare-fun m!7539266 () Bool)

(assert (=> bs!1809565 m!7539266))

(assert (=> b!6791302 d!2133950))

(declare-fun d!2133952 () Bool)

(declare-fun lt!2446636 () Regex!16613)

(assert (=> d!2133952 (validRegex!8349 lt!2446636)))

(assert (=> d!2133952 (= lt!2446636 (generalisedUnion!2457 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))))))

(assert (=> d!2133952 (= (unfocusZipper!2355 (Cons!66016 lt!2446524 Nil!66016)) lt!2446636)))

(declare-fun bs!1809566 () Bool)

(assert (= bs!1809566 d!2133952))

(declare-fun m!7539268 () Bool)

(assert (=> bs!1809566 m!7539268))

(declare-fun m!7539270 () Bool)

(assert (=> bs!1809566 m!7539270))

(assert (=> bs!1809566 m!7539270))

(declare-fun m!7539272 () Bool)

(assert (=> bs!1809566 m!7539272))

(assert (=> b!6791303 d!2133952))

(declare-fun d!2133954 () Bool)

(declare-fun c!1262399 () Bool)

(assert (=> d!2133954 (= c!1262399 (isEmpty!38385 s!2326))))

(declare-fun e!4099422 () Bool)

(assert (=> d!2133954 (= (matchZipper!2599 z!1189 s!2326) e!4099422)))

(declare-fun b!6791971 () Bool)

(assert (=> b!6791971 (= e!4099422 (nullableZipper!2320 z!1189))))

(declare-fun b!6791972 () Bool)

(assert (=> b!6791972 (= e!4099422 (matchZipper!2599 (derivationStepZipper!2557 z!1189 (head!13638 s!2326)) (tail!12723 s!2326)))))

(assert (= (and d!2133954 c!1262399) b!6791971))

(assert (= (and d!2133954 (not c!1262399)) b!6791972))

(assert (=> d!2133954 m!7538676))

(declare-fun m!7539274 () Bool)

(assert (=> b!6791971 m!7539274))

(assert (=> b!6791972 m!7539160))

(assert (=> b!6791972 m!7539160))

(declare-fun m!7539276 () Bool)

(assert (=> b!6791972 m!7539276))

(assert (=> b!6791972 m!7539164))

(assert (=> b!6791972 m!7539276))

(assert (=> b!6791972 m!7539164))

(declare-fun m!7539278 () Bool)

(assert (=> b!6791972 m!7539278))

(assert (=> b!6791292 d!2133954))

(declare-fun d!2133956 () Bool)

(declare-fun isEmpty!38389 (Option!16500) Bool)

(assert (=> d!2133956 (= (isDefined!13203 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326)) (not (isEmpty!38389 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326))))))

(declare-fun bs!1809567 () Bool)

(assert (= bs!1809567 d!2133956))

(assert (=> bs!1809567 m!7538680))

(declare-fun m!7539280 () Bool)

(assert (=> bs!1809567 m!7539280))

(assert (=> b!6791299 d!2133956))

(declare-fun bs!1809568 () Bool)

(declare-fun d!2133958 () Bool)

(assert (= bs!1809568 (and d!2133958 b!6791842)))

(declare-fun lambda!382732 () Int)

(assert (=> bs!1809568 (not (= lambda!382732 lambda!382726))))

(declare-fun bs!1809569 () Bool)

(assert (= bs!1809569 (and d!2133958 b!6791299)))

(assert (=> bs!1809569 (not (= lambda!382732 lambda!382658))))

(declare-fun bs!1809570 () Bool)

(assert (= bs!1809570 (and d!2133958 b!6791834)))

(assert (=> bs!1809570 (not (= lambda!382732 lambda!382727))))

(assert (=> bs!1809569 (= lambda!382732 lambda!382656)))

(assert (=> bs!1809569 (not (= lambda!382732 lambda!382657))))

(assert (=> d!2133958 true))

(assert (=> d!2133958 true))

(assert (=> d!2133958 true))

(declare-fun bs!1809571 () Bool)

(assert (= bs!1809571 d!2133958))

(declare-fun lambda!382733 () Int)

(assert (=> bs!1809571 (not (= lambda!382733 lambda!382732))))

(assert (=> bs!1809568 (not (= lambda!382733 lambda!382726))))

(assert (=> bs!1809569 (= lambda!382733 lambda!382658)))

(assert (=> bs!1809570 (= (and (= (reg!16942 r!7292) (regOne!33738 lt!2446525)) (= r!7292 (regTwo!33738 lt!2446525))) (= lambda!382733 lambda!382727))))

(assert (=> bs!1809569 (not (= lambda!382733 lambda!382656))))

(assert (=> bs!1809569 (not (= lambda!382733 lambda!382657))))

(assert (=> d!2133958 true))

(assert (=> d!2133958 true))

(assert (=> d!2133958 true))

(assert (=> d!2133958 (= (Exists!3681 lambda!382732) (Exists!3681 lambda!382733))))

(declare-fun lt!2446639 () Unit!159917)

(declare-fun choose!50603 (Regex!16613 Regex!16613 List!66139) Unit!159917)

(assert (=> d!2133958 (= lt!2446639 (choose!50603 (reg!16942 r!7292) r!7292 s!2326))))

(assert (=> d!2133958 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2133958 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2208 (reg!16942 r!7292) r!7292 s!2326) lt!2446639)))

(declare-fun m!7539282 () Bool)

(assert (=> bs!1809571 m!7539282))

(declare-fun m!7539284 () Bool)

(assert (=> bs!1809571 m!7539284))

(declare-fun m!7539286 () Bool)

(assert (=> bs!1809571 m!7539286))

(declare-fun m!7539288 () Bool)

(assert (=> bs!1809571 m!7539288))

(assert (=> b!6791299 d!2133958))

(declare-fun bs!1809572 () Bool)

(declare-fun d!2133960 () Bool)

(assert (= bs!1809572 (and d!2133960 d!2133958)))

(declare-fun lambda!382738 () Int)

(assert (=> bs!1809572 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382738 lambda!382732))))

(declare-fun bs!1809573 () Bool)

(assert (= bs!1809573 (and d!2133960 b!6791842)))

(assert (=> bs!1809573 (not (= lambda!382738 lambda!382726))))

(declare-fun bs!1809574 () Bool)

(assert (= bs!1809574 (and d!2133960 b!6791299)))

(assert (=> bs!1809574 (not (= lambda!382738 lambda!382658))))

(assert (=> bs!1809572 (not (= lambda!382738 lambda!382733))))

(declare-fun bs!1809575 () Bool)

(assert (= bs!1809575 (and d!2133960 b!6791834)))

(assert (=> bs!1809575 (not (= lambda!382738 lambda!382727))))

(assert (=> bs!1809574 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382738 lambda!382656))))

(assert (=> bs!1809574 (not (= lambda!382738 lambda!382657))))

(assert (=> d!2133960 true))

(assert (=> d!2133960 true))

(declare-fun bs!1809576 () Bool)

(assert (= bs!1809576 d!2133960))

(declare-fun lambda!382739 () Int)

(assert (=> bs!1809576 (not (= lambda!382739 lambda!382738))))

(assert (=> bs!1809572 (not (= lambda!382739 lambda!382732))))

(assert (=> bs!1809573 (= (and (= (reg!16942 r!7292) (reg!16942 lt!2446525)) (= (Star!16613 (reg!16942 r!7292)) lt!2446525)) (= lambda!382739 lambda!382726))))

(assert (=> bs!1809574 (not (= lambda!382739 lambda!382658))))

(assert (=> bs!1809572 (not (= lambda!382739 lambda!382733))))

(assert (=> bs!1809575 (not (= lambda!382739 lambda!382727))))

(assert (=> bs!1809574 (not (= lambda!382739 lambda!382656))))

(assert (=> bs!1809574 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382739 lambda!382657))))

(assert (=> d!2133960 true))

(assert (=> d!2133960 true))

(assert (=> d!2133960 (= (Exists!3681 lambda!382738) (Exists!3681 lambda!382739))))

(declare-fun lt!2446642 () Unit!159917)

(declare-fun choose!50605 (Regex!16613 List!66139) Unit!159917)

(assert (=> d!2133960 (= lt!2446642 (choose!50605 (reg!16942 r!7292) s!2326))))

(assert (=> d!2133960 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2133960 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!772 (reg!16942 r!7292) s!2326) lt!2446642)))

(declare-fun m!7539290 () Bool)

(assert (=> bs!1809576 m!7539290))

(declare-fun m!7539292 () Bool)

(assert (=> bs!1809576 m!7539292))

(declare-fun m!7539294 () Bool)

(assert (=> bs!1809576 m!7539294))

(assert (=> bs!1809576 m!7539288))

(assert (=> b!6791299 d!2133960))

(declare-fun d!2133962 () Bool)

(declare-fun choose!50606 (Int) Bool)

(assert (=> d!2133962 (= (Exists!3681 lambda!382656) (choose!50606 lambda!382656))))

(declare-fun bs!1809577 () Bool)

(assert (= bs!1809577 d!2133962))

(declare-fun m!7539296 () Bool)

(assert (=> bs!1809577 m!7539296))

(assert (=> b!6791299 d!2133962))

(declare-fun d!2133964 () Bool)

(assert (=> d!2133964 (= (isEmpty!38385 s!2326) ((_ is Nil!66015) s!2326))))

(assert (=> b!6791299 d!2133964))

(declare-fun d!2133966 () Bool)

(assert (=> d!2133966 (= (Exists!3681 lambda!382658) (choose!50606 lambda!382658))))

(declare-fun bs!1809578 () Bool)

(assert (= bs!1809578 d!2133966))

(declare-fun m!7539298 () Bool)

(assert (=> bs!1809578 m!7539298))

(assert (=> b!6791299 d!2133966))

(declare-fun b!6792009 () Bool)

(declare-fun e!4099442 () Bool)

(declare-fun lt!2446650 () Option!16500)

(assert (=> b!6792009 (= e!4099442 (not (isDefined!13203 lt!2446650)))))

(declare-fun d!2133968 () Bool)

(assert (=> d!2133968 e!4099442))

(declare-fun res!2775936 () Bool)

(assert (=> d!2133968 (=> res!2775936 e!4099442)))

(declare-fun e!4099445 () Bool)

(assert (=> d!2133968 (= res!2775936 e!4099445)))

(declare-fun res!2775934 () Bool)

(assert (=> d!2133968 (=> (not res!2775934) (not e!4099445))))

(assert (=> d!2133968 (= res!2775934 (isDefined!13203 lt!2446650))))

(declare-fun e!4099443 () Option!16500)

(assert (=> d!2133968 (= lt!2446650 e!4099443)))

(declare-fun c!1262405 () Bool)

(declare-fun e!4099444 () Bool)

(assert (=> d!2133968 (= c!1262405 e!4099444)))

(declare-fun res!2775935 () Bool)

(assert (=> d!2133968 (=> (not res!2775935) (not e!4099444))))

(assert (=> d!2133968 (= res!2775935 (matchR!8796 (reg!16942 r!7292) Nil!66015))))

(assert (=> d!2133968 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2133968 (= (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326) lt!2446650)))

(declare-fun b!6792010 () Bool)

(assert (=> b!6792010 (= e!4099443 (Some!16499 (tuple2!67177 Nil!66015 s!2326)))))

(declare-fun b!6792011 () Bool)

(declare-fun e!4099441 () Option!16500)

(assert (=> b!6792011 (= e!4099443 e!4099441)))

(declare-fun c!1262404 () Bool)

(assert (=> b!6792011 (= c!1262404 ((_ is Nil!66015) s!2326))))

(declare-fun b!6792012 () Bool)

(assert (=> b!6792012 (= e!4099444 (matchR!8796 r!7292 s!2326))))

(declare-fun b!6792013 () Bool)

(declare-fun lt!2446649 () Unit!159917)

(declare-fun lt!2446651 () Unit!159917)

(assert (=> b!6792013 (= lt!2446649 lt!2446651)))

(declare-fun ++!14772 (List!66139 List!66139) List!66139)

(assert (=> b!6792013 (= (++!14772 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (t!379862 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2733 (List!66139 C!33496 List!66139 List!66139) Unit!159917)

(assert (=> b!6792013 (= lt!2446651 (lemmaMoveElementToOtherListKeepsConcatEq!2733 Nil!66015 (h!72463 s!2326) (t!379862 s!2326) s!2326))))

(assert (=> b!6792013 (= e!4099441 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (t!379862 s!2326) s!2326))))

(declare-fun b!6792014 () Bool)

(declare-fun res!2775938 () Bool)

(assert (=> b!6792014 (=> (not res!2775938) (not e!4099445))))

(declare-fun get!22988 (Option!16500) tuple2!67176)

(assert (=> b!6792014 (= res!2775938 (matchR!8796 (reg!16942 r!7292) (_1!36891 (get!22988 lt!2446650))))))

(declare-fun b!6792015 () Bool)

(declare-fun res!2775937 () Bool)

(assert (=> b!6792015 (=> (not res!2775937) (not e!4099445))))

(assert (=> b!6792015 (= res!2775937 (matchR!8796 r!7292 (_2!36891 (get!22988 lt!2446650))))))

(declare-fun b!6792016 () Bool)

(assert (=> b!6792016 (= e!4099445 (= (++!14772 (_1!36891 (get!22988 lt!2446650)) (_2!36891 (get!22988 lt!2446650))) s!2326))))

(declare-fun b!6792017 () Bool)

(assert (=> b!6792017 (= e!4099441 None!16499)))

(assert (= (and d!2133968 res!2775935) b!6792012))

(assert (= (and d!2133968 c!1262405) b!6792010))

(assert (= (and d!2133968 (not c!1262405)) b!6792011))

(assert (= (and b!6792011 c!1262404) b!6792017))

(assert (= (and b!6792011 (not c!1262404)) b!6792013))

(assert (= (and d!2133968 res!2775934) b!6792014))

(assert (= (and b!6792014 res!2775938) b!6792015))

(assert (= (and b!6792015 res!2775937) b!6792016))

(assert (= (and d!2133968 (not res!2775936)) b!6792009))

(declare-fun m!7539300 () Bool)

(assert (=> b!6792014 m!7539300))

(declare-fun m!7539302 () Bool)

(assert (=> b!6792014 m!7539302))

(assert (=> b!6792012 m!7538670))

(declare-fun m!7539304 () Bool)

(assert (=> d!2133968 m!7539304))

(declare-fun m!7539306 () Bool)

(assert (=> d!2133968 m!7539306))

(assert (=> d!2133968 m!7539288))

(assert (=> b!6792009 m!7539304))

(assert (=> b!6792015 m!7539300))

(declare-fun m!7539308 () Bool)

(assert (=> b!6792015 m!7539308))

(assert (=> b!6792016 m!7539300))

(declare-fun m!7539310 () Bool)

(assert (=> b!6792016 m!7539310))

(declare-fun m!7539312 () Bool)

(assert (=> b!6792013 m!7539312))

(assert (=> b!6792013 m!7539312))

(declare-fun m!7539314 () Bool)

(assert (=> b!6792013 m!7539314))

(declare-fun m!7539316 () Bool)

(assert (=> b!6792013 m!7539316))

(assert (=> b!6792013 m!7539312))

(declare-fun m!7539318 () Bool)

(assert (=> b!6792013 m!7539318))

(assert (=> b!6791299 d!2133968))

(declare-fun d!2133970 () Bool)

(assert (=> d!2133970 (= (Exists!3681 lambda!382657) (choose!50606 lambda!382657))))

(declare-fun bs!1809579 () Bool)

(assert (= bs!1809579 d!2133970))

(declare-fun m!7539320 () Bool)

(assert (=> bs!1809579 m!7539320))

(assert (=> b!6791299 d!2133970))

(declare-fun bs!1809580 () Bool)

(declare-fun d!2133972 () Bool)

(assert (= bs!1809580 (and d!2133972 d!2133960)))

(declare-fun lambda!382742 () Int)

(assert (=> bs!1809580 (= (= r!7292 (Star!16613 (reg!16942 r!7292))) (= lambda!382742 lambda!382738))))

(declare-fun bs!1809581 () Bool)

(assert (= bs!1809581 (and d!2133972 d!2133958)))

(assert (=> bs!1809581 (= lambda!382742 lambda!382732)))

(declare-fun bs!1809582 () Bool)

(assert (= bs!1809582 (and d!2133972 b!6791842)))

(assert (=> bs!1809582 (not (= lambda!382742 lambda!382726))))

(declare-fun bs!1809583 () Bool)

(assert (= bs!1809583 (and d!2133972 b!6791299)))

(assert (=> bs!1809583 (not (= lambda!382742 lambda!382658))))

(assert (=> bs!1809581 (not (= lambda!382742 lambda!382733))))

(assert (=> bs!1809583 (= lambda!382742 lambda!382656)))

(assert (=> bs!1809583 (not (= lambda!382742 lambda!382657))))

(declare-fun bs!1809584 () Bool)

(assert (= bs!1809584 (and d!2133972 b!6791834)))

(assert (=> bs!1809584 (not (= lambda!382742 lambda!382727))))

(assert (=> bs!1809580 (not (= lambda!382742 lambda!382739))))

(assert (=> d!2133972 true))

(assert (=> d!2133972 true))

(assert (=> d!2133972 true))

(assert (=> d!2133972 (= (isDefined!13203 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326)) (Exists!3681 lambda!382742))))

(declare-fun lt!2446654 () Unit!159917)

(declare-fun choose!50609 (Regex!16613 Regex!16613 List!66139) Unit!159917)

(assert (=> d!2133972 (= lt!2446654 (choose!50609 (reg!16942 r!7292) r!7292 s!2326))))

(assert (=> d!2133972 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2133972 (= (lemmaFindConcatSeparationEquivalentToExists!2678 (reg!16942 r!7292) r!7292 s!2326) lt!2446654)))

(declare-fun bs!1809585 () Bool)

(assert (= bs!1809585 d!2133972))

(assert (=> bs!1809585 m!7538680))

(assert (=> bs!1809585 m!7539288))

(declare-fun m!7539322 () Bool)

(assert (=> bs!1809585 m!7539322))

(assert (=> bs!1809585 m!7538680))

(assert (=> bs!1809585 m!7538684))

(declare-fun m!7539324 () Bool)

(assert (=> bs!1809585 m!7539324))

(assert (=> b!6791299 d!2133972))

(declare-fun bs!1809586 () Bool)

(declare-fun d!2133974 () Bool)

(assert (= bs!1809586 (and d!2133974 d!2133858)))

(declare-fun lambda!382743 () Int)

(assert (=> bs!1809586 (= lambda!382743 lambda!382690)))

(declare-fun bs!1809587 () Bool)

(assert (= bs!1809587 (and d!2133974 d!2133890)))

(assert (=> bs!1809587 (= lambda!382743 lambda!382704)))

(declare-fun bs!1809588 () Bool)

(assert (= bs!1809588 (and d!2133974 d!2133774)))

(assert (=> bs!1809588 (= lambda!382743 lambda!382664)))

(declare-fun bs!1809589 () Bool)

(assert (= bs!1809589 (and d!2133974 d!2133910)))

(assert (=> bs!1809589 (= lambda!382743 lambda!382705)))

(declare-fun bs!1809590 () Bool)

(assert (= bs!1809590 (and d!2133974 d!2133778)))

(assert (=> bs!1809590 (= lambda!382743 lambda!382667)))

(declare-fun bs!1809591 () Bool)

(assert (= bs!1809591 (and d!2133974 b!6791309)))

(assert (=> bs!1809591 (= lambda!382743 lambda!382661)))

(assert (=> d!2133974 (= (inv!84779 setElem!46493) (forall!15805 (exprs!6497 setElem!46493) lambda!382743))))

(declare-fun bs!1809592 () Bool)

(assert (= bs!1809592 d!2133974))

(declare-fun m!7539326 () Bool)

(assert (=> bs!1809592 m!7539326))

(assert (=> setNonEmpty!46493 d!2133974))

(declare-fun b!6792022 () Bool)

(declare-fun e!4099452 () (InoxSet Context!11994))

(declare-fun call!616701 () (InoxSet Context!11994))

(declare-fun call!616703 () (InoxSet Context!11994))

(assert (=> b!6792022 (= e!4099452 ((_ map or) call!616701 call!616703))))

(declare-fun d!2133976 () Bool)

(declare-fun c!1262407 () Bool)

(assert (=> d!2133976 (= c!1262407 (and ((_ is ElementMatch!16613) (reg!16942 r!7292)) (= (c!1262203 (reg!16942 r!7292)) (h!72463 s!2326))))))

(declare-fun e!4099450 () (InoxSet Context!11994))

(assert (=> d!2133976 (= (derivationStepZipperDown!1841 (reg!16942 r!7292) lt!2446529 (h!72463 s!2326)) e!4099450)))

(declare-fun bm!616694 () Bool)

(declare-fun call!616702 () List!66138)

(declare-fun call!616700 () List!66138)

(assert (=> bm!616694 (= call!616702 call!616700)))

(declare-fun b!6792023 () Bool)

(assert (=> b!6792023 (= e!4099450 (store ((as const (Array Context!11994 Bool)) false) lt!2446529 true))))

(declare-fun b!6792024 () Bool)

(declare-fun e!4099449 () (InoxSet Context!11994))

(declare-fun call!616704 () (InoxSet Context!11994))

(assert (=> b!6792024 (= e!4099449 ((_ map or) call!616701 call!616704))))

(declare-fun bm!616695 () Bool)

(assert (=> bm!616695 (= call!616704 call!616703)))

(declare-fun b!6792025 () Bool)

(declare-fun c!1262406 () Bool)

(assert (=> b!6792025 (= c!1262406 ((_ is Star!16613) (reg!16942 r!7292)))))

(declare-fun e!4099448 () (InoxSet Context!11994))

(declare-fun e!4099451 () (InoxSet Context!11994))

(assert (=> b!6792025 (= e!4099448 e!4099451)))

(declare-fun b!6792026 () Bool)

(declare-fun call!616699 () (InoxSet Context!11994))

(assert (=> b!6792026 (= e!4099448 call!616699)))

(declare-fun b!6792027 () Bool)

(assert (=> b!6792027 (= e!4099449 e!4099448)))

(declare-fun c!1262410 () Bool)

(assert (=> b!6792027 (= c!1262410 ((_ is Concat!25458) (reg!16942 r!7292)))))

(declare-fun b!6792028 () Bool)

(assert (=> b!6792028 (= e!4099451 call!616699)))

(declare-fun b!6792029 () Bool)

(assert (=> b!6792029 (= e!4099450 e!4099452)))

(declare-fun c!1262409 () Bool)

(assert (=> b!6792029 (= c!1262409 ((_ is Union!16613) (reg!16942 r!7292)))))

(declare-fun bm!616696 () Bool)

(assert (=> bm!616696 (= call!616699 call!616704)))

(declare-fun b!6792030 () Bool)

(assert (=> b!6792030 (= e!4099451 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792031 () Bool)

(declare-fun e!4099453 () Bool)

(assert (=> b!6792031 (= e!4099453 (nullable!6592 (regOne!33738 (reg!16942 r!7292))))))

(declare-fun bm!616697 () Bool)

(assert (=> bm!616697 (= call!616701 (derivationStepZipperDown!1841 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292))) (ite c!1262409 lt!2446529 (Context!11995 call!616700)) (h!72463 s!2326)))))

(declare-fun b!6792032 () Bool)

(declare-fun c!1262408 () Bool)

(assert (=> b!6792032 (= c!1262408 e!4099453)))

(declare-fun res!2775943 () Bool)

(assert (=> b!6792032 (=> (not res!2775943) (not e!4099453))))

(assert (=> b!6792032 (= res!2775943 ((_ is Concat!25458) (reg!16942 r!7292)))))

(assert (=> b!6792032 (= e!4099452 e!4099449)))

(declare-fun bm!616698 () Bool)

(assert (=> bm!616698 (= call!616700 ($colon$colon!2422 (exprs!6497 lt!2446529) (ite (or c!1262408 c!1262410) (regTwo!33738 (reg!16942 r!7292)) (reg!16942 r!7292))))))

(declare-fun bm!616699 () Bool)

(assert (=> bm!616699 (= call!616703 (derivationStepZipperDown!1841 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292))))) (ite (or c!1262409 c!1262408) lt!2446529 (Context!11995 call!616702)) (h!72463 s!2326)))))

(assert (= (and d!2133976 c!1262407) b!6792023))

(assert (= (and d!2133976 (not c!1262407)) b!6792029))

(assert (= (and b!6792029 c!1262409) b!6792022))

(assert (= (and b!6792029 (not c!1262409)) b!6792032))

(assert (= (and b!6792032 res!2775943) b!6792031))

(assert (= (and b!6792032 c!1262408) b!6792024))

(assert (= (and b!6792032 (not c!1262408)) b!6792027))

(assert (= (and b!6792027 c!1262410) b!6792026))

(assert (= (and b!6792027 (not c!1262410)) b!6792025))

(assert (= (and b!6792025 c!1262406) b!6792028))

(assert (= (and b!6792025 (not c!1262406)) b!6792030))

(assert (= (or b!6792026 b!6792028) bm!616694))

(assert (= (or b!6792026 b!6792028) bm!616696))

(assert (= (or b!6792024 bm!616694) bm!616698))

(assert (= (or b!6792024 bm!616696) bm!616695))

(assert (= (or b!6792022 bm!616695) bm!616699))

(assert (= (or b!6792022 b!6792024) bm!616697))

(declare-fun m!7539328 () Bool)

(assert (=> bm!616697 m!7539328))

(declare-fun m!7539330 () Bool)

(assert (=> bm!616699 m!7539330))

(declare-fun m!7539332 () Bool)

(assert (=> b!6792031 m!7539332))

(declare-fun m!7539334 () Bool)

(assert (=> bm!616698 m!7539334))

(assert (=> b!6792023 m!7538742))

(assert (=> b!6791310 d!2133976))

(declare-fun d!2133978 () Bool)

(assert (=> d!2133978 (= (flatMap!2094 lt!2446518 lambda!382659) (choose!50600 lt!2446518 lambda!382659))))

(declare-fun bs!1809593 () Bool)

(assert (= bs!1809593 d!2133978))

(declare-fun m!7539336 () Bool)

(assert (=> bs!1809593 m!7539336))

(assert (=> b!6791310 d!2133978))

(declare-fun b!6792033 () Bool)

(declare-fun e!4099454 () (InoxSet Context!11994))

(assert (=> b!6792033 (= e!4099454 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792034 () Bool)

(declare-fun e!4099455 () (InoxSet Context!11994))

(assert (=> b!6792034 (= e!4099455 e!4099454)))

(declare-fun c!1262411 () Bool)

(assert (=> b!6792034 (= c!1262411 ((_ is Cons!66014) (exprs!6497 lt!2446524)))))

(declare-fun call!616705 () (InoxSet Context!11994))

(declare-fun b!6792035 () Bool)

(assert (=> b!6792035 (= e!4099455 ((_ map or) call!616705 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 lt!2446524))) (h!72463 s!2326))))))

(declare-fun b!6792036 () Bool)

(declare-fun e!4099456 () Bool)

(assert (=> b!6792036 (= e!4099456 (nullable!6592 (h!72462 (exprs!6497 lt!2446524))))))

(declare-fun b!6792037 () Bool)

(assert (=> b!6792037 (= e!4099454 call!616705)))

(declare-fun d!2133980 () Bool)

(declare-fun c!1262412 () Bool)

(assert (=> d!2133980 (= c!1262412 e!4099456)))

(declare-fun res!2775944 () Bool)

(assert (=> d!2133980 (=> (not res!2775944) (not e!4099456))))

(assert (=> d!2133980 (= res!2775944 ((_ is Cons!66014) (exprs!6497 lt!2446524)))))

(assert (=> d!2133980 (= (derivationStepZipperUp!1767 lt!2446524 (h!72463 s!2326)) e!4099455)))

(declare-fun bm!616700 () Bool)

(assert (=> bm!616700 (= call!616705 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 lt!2446524)) (Context!11995 (t!379861 (exprs!6497 lt!2446524))) (h!72463 s!2326)))))

(assert (= (and d!2133980 res!2775944) b!6792036))

(assert (= (and d!2133980 c!1262412) b!6792035))

(assert (= (and d!2133980 (not c!1262412)) b!6792034))

(assert (= (and b!6792034 c!1262411) b!6792037))

(assert (= (and b!6792034 (not c!1262411)) b!6792033))

(assert (= (or b!6792035 b!6792037) bm!616700))

(declare-fun m!7539338 () Bool)

(assert (=> b!6792035 m!7539338))

(declare-fun m!7539340 () Bool)

(assert (=> b!6792036 m!7539340))

(declare-fun m!7539342 () Bool)

(assert (=> bm!616700 m!7539342))

(assert (=> b!6791310 d!2133980))

(declare-fun d!2133982 () Bool)

(assert (=> d!2133982 (= (flatMap!2094 lt!2446518 lambda!382659) (dynLambda!26350 lambda!382659 lt!2446524))))

(declare-fun lt!2446655 () Unit!159917)

(assert (=> d!2133982 (= lt!2446655 (choose!50599 lt!2446518 lt!2446524 lambda!382659))))

(assert (=> d!2133982 (= lt!2446518 (store ((as const (Array Context!11994 Bool)) false) lt!2446524 true))))

(assert (=> d!2133982 (= (lemmaFlatMapOnSingletonSet!1620 lt!2446518 lt!2446524 lambda!382659) lt!2446655)))

(declare-fun b_lambda!255823 () Bool)

(assert (=> (not b_lambda!255823) (not d!2133982)))

(declare-fun bs!1809594 () Bool)

(assert (= bs!1809594 d!2133982))

(assert (=> bs!1809594 m!7538702))

(declare-fun m!7539344 () Bool)

(assert (=> bs!1809594 m!7539344))

(declare-fun m!7539346 () Bool)

(assert (=> bs!1809594 m!7539346))

(assert (=> bs!1809594 m!7538698))

(assert (=> b!6791310 d!2133982))

(declare-fun d!2133984 () Bool)

(assert (=> d!2133984 (= (isEmpty!38386 (t!379863 zl!343)) ((_ is Nil!66016) (t!379863 zl!343)))))

(assert (=> b!6791300 d!2133984))

(declare-fun bs!1809595 () Bool)

(declare-fun b!6792048 () Bool)

(assert (= bs!1809595 (and b!6792048 d!2133960)))

(declare-fun lambda!382744 () Int)

(assert (=> bs!1809595 (not (= lambda!382744 lambda!382738))))

(declare-fun bs!1809596 () Bool)

(assert (= bs!1809596 (and b!6792048 d!2133972)))

(assert (=> bs!1809596 (not (= lambda!382744 lambda!382742))))

(declare-fun bs!1809597 () Bool)

(assert (= bs!1809597 (and b!6792048 d!2133958)))

(assert (=> bs!1809597 (not (= lambda!382744 lambda!382732))))

(declare-fun bs!1809598 () Bool)

(assert (= bs!1809598 (and b!6792048 b!6791842)))

(assert (=> bs!1809598 (= (and (= (reg!16942 r!7292) (reg!16942 lt!2446525)) (= r!7292 lt!2446525)) (= lambda!382744 lambda!382726))))

(declare-fun bs!1809599 () Bool)

(assert (= bs!1809599 (and b!6792048 b!6791299)))

(assert (=> bs!1809599 (not (= lambda!382744 lambda!382658))))

(assert (=> bs!1809597 (not (= lambda!382744 lambda!382733))))

(assert (=> bs!1809599 (not (= lambda!382744 lambda!382656))))

(assert (=> bs!1809599 (= lambda!382744 lambda!382657)))

(declare-fun bs!1809600 () Bool)

(assert (= bs!1809600 (and b!6792048 b!6791834)))

(assert (=> bs!1809600 (not (= lambda!382744 lambda!382727))))

(assert (=> bs!1809595 (= (= r!7292 (Star!16613 (reg!16942 r!7292))) (= lambda!382744 lambda!382739))))

(assert (=> b!6792048 true))

(assert (=> b!6792048 true))

(declare-fun bs!1809601 () Bool)

(declare-fun b!6792040 () Bool)

(assert (= bs!1809601 (and b!6792040 d!2133960)))

(declare-fun lambda!382745 () Int)

(assert (=> bs!1809601 (not (= lambda!382745 lambda!382738))))

(declare-fun bs!1809602 () Bool)

(assert (= bs!1809602 (and b!6792040 d!2133972)))

(assert (=> bs!1809602 (not (= lambda!382745 lambda!382742))))

(declare-fun bs!1809603 () Bool)

(assert (= bs!1809603 (and b!6792040 d!2133958)))

(assert (=> bs!1809603 (not (= lambda!382745 lambda!382732))))

(declare-fun bs!1809604 () Bool)

(assert (= bs!1809604 (and b!6792040 b!6792048)))

(assert (=> bs!1809604 (not (= lambda!382745 lambda!382744))))

(declare-fun bs!1809605 () Bool)

(assert (= bs!1809605 (and b!6792040 b!6791842)))

(assert (=> bs!1809605 (not (= lambda!382745 lambda!382726))))

(declare-fun bs!1809606 () Bool)

(assert (= bs!1809606 (and b!6792040 b!6791299)))

(assert (=> bs!1809606 (= (and (= (regOne!33738 r!7292) (reg!16942 r!7292)) (= (regTwo!33738 r!7292) r!7292)) (= lambda!382745 lambda!382658))))

(assert (=> bs!1809603 (= (and (= (regOne!33738 r!7292) (reg!16942 r!7292)) (= (regTwo!33738 r!7292) r!7292)) (= lambda!382745 lambda!382733))))

(assert (=> bs!1809606 (not (= lambda!382745 lambda!382656))))

(assert (=> bs!1809606 (not (= lambda!382745 lambda!382657))))

(declare-fun bs!1809607 () Bool)

(assert (= bs!1809607 (and b!6792040 b!6791834)))

(assert (=> bs!1809607 (= (and (= (regOne!33738 r!7292) (regOne!33738 lt!2446525)) (= (regTwo!33738 r!7292) (regTwo!33738 lt!2446525))) (= lambda!382745 lambda!382727))))

(assert (=> bs!1809601 (not (= lambda!382745 lambda!382739))))

(assert (=> b!6792040 true))

(assert (=> b!6792040 true))

(declare-fun b!6792038 () Bool)

(declare-fun e!4099463 () Bool)

(declare-fun e!4099457 () Bool)

(assert (=> b!6792038 (= e!4099463 e!4099457)))

(declare-fun res!2775947 () Bool)

(assert (=> b!6792038 (= res!2775947 (matchRSpec!3714 (regOne!33739 r!7292) s!2326))))

(assert (=> b!6792038 (=> res!2775947 e!4099457)))

(declare-fun b!6792039 () Bool)

(declare-fun e!4099458 () Bool)

(declare-fun e!4099461 () Bool)

(assert (=> b!6792039 (= e!4099458 e!4099461)))

(declare-fun res!2775945 () Bool)

(assert (=> b!6792039 (= res!2775945 (not ((_ is EmptyLang!16613) r!7292)))))

(assert (=> b!6792039 (=> (not res!2775945) (not e!4099461))))

(declare-fun e!4099462 () Bool)

(declare-fun call!616706 () Bool)

(assert (=> b!6792040 (= e!4099462 call!616706)))

(declare-fun bm!616701 () Bool)

(declare-fun call!616707 () Bool)

(assert (=> bm!616701 (= call!616707 (isEmpty!38385 s!2326))))

(declare-fun b!6792041 () Bool)

(declare-fun c!1262415 () Bool)

(assert (=> b!6792041 (= c!1262415 ((_ is Union!16613) r!7292))))

(declare-fun e!4099459 () Bool)

(assert (=> b!6792041 (= e!4099459 e!4099463)))

(declare-fun b!6792042 () Bool)

(assert (=> b!6792042 (= e!4099457 (matchRSpec!3714 (regTwo!33739 r!7292) s!2326))))

(declare-fun b!6792043 () Bool)

(declare-fun c!1262416 () Bool)

(assert (=> b!6792043 (= c!1262416 ((_ is ElementMatch!16613) r!7292))))

(assert (=> b!6792043 (= e!4099461 e!4099459)))

(declare-fun b!6792044 () Bool)

(assert (=> b!6792044 (= e!4099458 call!616707)))

(declare-fun bm!616702 () Bool)

(declare-fun c!1262413 () Bool)

(assert (=> bm!616702 (= call!616706 (Exists!3681 (ite c!1262413 lambda!382744 lambda!382745)))))

(declare-fun b!6792046 () Bool)

(declare-fun res!2775946 () Bool)

(declare-fun e!4099460 () Bool)

(assert (=> b!6792046 (=> res!2775946 e!4099460)))

(assert (=> b!6792046 (= res!2775946 call!616707)))

(assert (=> b!6792046 (= e!4099462 e!4099460)))

(declare-fun b!6792045 () Bool)

(assert (=> b!6792045 (= e!4099459 (= s!2326 (Cons!66015 (c!1262203 r!7292) Nil!66015)))))

(declare-fun d!2133986 () Bool)

(declare-fun c!1262414 () Bool)

(assert (=> d!2133986 (= c!1262414 ((_ is EmptyExpr!16613) r!7292))))

(assert (=> d!2133986 (= (matchRSpec!3714 r!7292 s!2326) e!4099458)))

(declare-fun b!6792047 () Bool)

(assert (=> b!6792047 (= e!4099463 e!4099462)))

(assert (=> b!6792047 (= c!1262413 ((_ is Star!16613) r!7292))))

(assert (=> b!6792048 (= e!4099460 call!616706)))

(assert (= (and d!2133986 c!1262414) b!6792044))

(assert (= (and d!2133986 (not c!1262414)) b!6792039))

(assert (= (and b!6792039 res!2775945) b!6792043))

(assert (= (and b!6792043 c!1262416) b!6792045))

(assert (= (and b!6792043 (not c!1262416)) b!6792041))

(assert (= (and b!6792041 c!1262415) b!6792038))

(assert (= (and b!6792041 (not c!1262415)) b!6792047))

(assert (= (and b!6792038 (not res!2775947)) b!6792042))

(assert (= (and b!6792047 c!1262413) b!6792046))

(assert (= (and b!6792047 (not c!1262413)) b!6792040))

(assert (= (and b!6792046 (not res!2775946)) b!6792048))

(assert (= (or b!6792048 b!6792040) bm!616702))

(assert (= (or b!6792044 b!6792046) bm!616701))

(declare-fun m!7539348 () Bool)

(assert (=> b!6792038 m!7539348))

(assert (=> bm!616701 m!7538676))

(declare-fun m!7539350 () Bool)

(assert (=> b!6792042 m!7539350))

(declare-fun m!7539352 () Bool)

(assert (=> bm!616702 m!7539352))

(assert (=> b!6791301 d!2133986))

(declare-fun b!6792049 () Bool)

(declare-fun e!4099470 () Bool)

(declare-fun e!4099469 () Bool)

(assert (=> b!6792049 (= e!4099470 e!4099469)))

(declare-fun res!2775948 () Bool)

(assert (=> b!6792049 (=> (not res!2775948) (not e!4099469))))

(declare-fun lt!2446656 () Bool)

(assert (=> b!6792049 (= res!2775948 (not lt!2446656))))

(declare-fun b!6792050 () Bool)

(declare-fun e!4099464 () Bool)

(assert (=> b!6792050 (= e!4099464 (not lt!2446656))))

(declare-fun bm!616703 () Bool)

(declare-fun call!616708 () Bool)

(assert (=> bm!616703 (= call!616708 (isEmpty!38385 s!2326))))

(declare-fun b!6792051 () Bool)

(declare-fun res!2775951 () Bool)

(declare-fun e!4099465 () Bool)

(assert (=> b!6792051 (=> (not res!2775951) (not e!4099465))))

(assert (=> b!6792051 (= res!2775951 (isEmpty!38385 (tail!12723 s!2326)))))

(declare-fun b!6792052 () Bool)

(declare-fun e!4099468 () Bool)

(assert (=> b!6792052 (= e!4099469 e!4099468)))

(declare-fun res!2775950 () Bool)

(assert (=> b!6792052 (=> res!2775950 e!4099468)))

(assert (=> b!6792052 (= res!2775950 call!616708)))

(declare-fun d!2133988 () Bool)

(declare-fun e!4099466 () Bool)

(assert (=> d!2133988 e!4099466))

(declare-fun c!1262419 () Bool)

(assert (=> d!2133988 (= c!1262419 ((_ is EmptyExpr!16613) r!7292))))

(declare-fun e!4099467 () Bool)

(assert (=> d!2133988 (= lt!2446656 e!4099467)))

(declare-fun c!1262418 () Bool)

(assert (=> d!2133988 (= c!1262418 (isEmpty!38385 s!2326))))

(assert (=> d!2133988 (validRegex!8349 r!7292)))

(assert (=> d!2133988 (= (matchR!8796 r!7292 s!2326) lt!2446656)))

(declare-fun b!6792053 () Bool)

(declare-fun res!2775954 () Bool)

(assert (=> b!6792053 (=> res!2775954 e!4099470)))

(assert (=> b!6792053 (= res!2775954 e!4099465)))

(declare-fun res!2775949 () Bool)

(assert (=> b!6792053 (=> (not res!2775949) (not e!4099465))))

(assert (=> b!6792053 (= res!2775949 lt!2446656)))

(declare-fun b!6792054 () Bool)

(assert (=> b!6792054 (= e!4099465 (= (head!13638 s!2326) (c!1262203 r!7292)))))

(declare-fun b!6792055 () Bool)

(declare-fun res!2775952 () Bool)

(assert (=> b!6792055 (=> res!2775952 e!4099468)))

(assert (=> b!6792055 (= res!2775952 (not (isEmpty!38385 (tail!12723 s!2326))))))

(declare-fun b!6792056 () Bool)

(declare-fun res!2775955 () Bool)

(assert (=> b!6792056 (=> res!2775955 e!4099470)))

(assert (=> b!6792056 (= res!2775955 (not ((_ is ElementMatch!16613) r!7292)))))

(assert (=> b!6792056 (= e!4099464 e!4099470)))

(declare-fun b!6792057 () Bool)

(assert (=> b!6792057 (= e!4099466 e!4099464)))

(declare-fun c!1262417 () Bool)

(assert (=> b!6792057 (= c!1262417 ((_ is EmptyLang!16613) r!7292))))

(declare-fun b!6792058 () Bool)

(assert (=> b!6792058 (= e!4099466 (= lt!2446656 call!616708))))

(declare-fun b!6792059 () Bool)

(assert (=> b!6792059 (= e!4099467 (matchR!8796 (derivativeStep!5277 r!7292 (head!13638 s!2326)) (tail!12723 s!2326)))))

(declare-fun b!6792060 () Bool)

(assert (=> b!6792060 (= e!4099468 (not (= (head!13638 s!2326) (c!1262203 r!7292))))))

(declare-fun b!6792061 () Bool)

(assert (=> b!6792061 (= e!4099467 (nullable!6592 r!7292))))

(declare-fun b!6792062 () Bool)

(declare-fun res!2775953 () Bool)

(assert (=> b!6792062 (=> (not res!2775953) (not e!4099465))))

(assert (=> b!6792062 (= res!2775953 (not call!616708))))

(assert (= (and d!2133988 c!1262418) b!6792061))

(assert (= (and d!2133988 (not c!1262418)) b!6792059))

(assert (= (and d!2133988 c!1262419) b!6792058))

(assert (= (and d!2133988 (not c!1262419)) b!6792057))

(assert (= (and b!6792057 c!1262417) b!6792050))

(assert (= (and b!6792057 (not c!1262417)) b!6792056))

(assert (= (and b!6792056 (not res!2775955)) b!6792053))

(assert (= (and b!6792053 res!2775949) b!6792062))

(assert (= (and b!6792062 res!2775953) b!6792051))

(assert (= (and b!6792051 res!2775951) b!6792054))

(assert (= (and b!6792053 (not res!2775954)) b!6792049))

(assert (= (and b!6792049 res!2775948) b!6792052))

(assert (= (and b!6792052 (not res!2775950)) b!6792055))

(assert (= (and b!6792055 (not res!2775952)) b!6792060))

(assert (= (or b!6792058 b!6792052 b!6792062) bm!616703))

(assert (=> b!6792054 m!7539160))

(declare-fun m!7539354 () Bool)

(assert (=> b!6792061 m!7539354))

(assert (=> b!6792059 m!7539160))

(assert (=> b!6792059 m!7539160))

(declare-fun m!7539356 () Bool)

(assert (=> b!6792059 m!7539356))

(assert (=> b!6792059 m!7539164))

(assert (=> b!6792059 m!7539356))

(assert (=> b!6792059 m!7539164))

(declare-fun m!7539358 () Bool)

(assert (=> b!6792059 m!7539358))

(assert (=> b!6792060 m!7539160))

(assert (=> b!6792055 m!7539164))

(assert (=> b!6792055 m!7539164))

(assert (=> b!6792055 m!7539242))

(assert (=> bm!616703 m!7538676))

(assert (=> d!2133988 m!7538676))

(assert (=> d!2133988 m!7538658))

(assert (=> b!6792051 m!7539164))

(assert (=> b!6792051 m!7539164))

(assert (=> b!6792051 m!7539242))

(assert (=> b!6791301 d!2133988))

(declare-fun d!2133990 () Bool)

(assert (=> d!2133990 (= (matchR!8796 r!7292 s!2326) (matchRSpec!3714 r!7292 s!2326))))

(declare-fun lt!2446657 () Unit!159917)

(assert (=> d!2133990 (= lt!2446657 (choose!50601 r!7292 s!2326))))

(assert (=> d!2133990 (validRegex!8349 r!7292)))

(assert (=> d!2133990 (= (mainMatchTheorem!3714 r!7292 s!2326) lt!2446657)))

(declare-fun bs!1809608 () Bool)

(assert (= bs!1809608 d!2133990))

(assert (=> bs!1809608 m!7538670))

(assert (=> bs!1809608 m!7538668))

(declare-fun m!7539360 () Bool)

(assert (=> bs!1809608 m!7539360))

(assert (=> bs!1809608 m!7538658))

(assert (=> b!6791301 d!2133990))

(declare-fun b!6792081 () Bool)

(declare-fun e!4099485 () Bool)

(declare-fun e!4099488 () Bool)

(assert (=> b!6792081 (= e!4099485 e!4099488)))

(declare-fun res!2775968 () Bool)

(assert (=> b!6792081 (=> (not res!2775968) (not e!4099488))))

(declare-fun call!616716 () Bool)

(assert (=> b!6792081 (= res!2775968 call!616716)))

(declare-fun b!6792082 () Bool)

(declare-fun res!2775967 () Bool)

(assert (=> b!6792082 (=> res!2775967 e!4099485)))

(assert (=> b!6792082 (= res!2775967 (not ((_ is Concat!25458) r!7292)))))

(declare-fun e!4099487 () Bool)

(assert (=> b!6792082 (= e!4099487 e!4099485)))

(declare-fun call!616715 () Bool)

(declare-fun c!1262424 () Bool)

(declare-fun bm!616710 () Bool)

(declare-fun c!1262425 () Bool)

(assert (=> bm!616710 (= call!616715 (validRegex!8349 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))))))

(declare-fun d!2133992 () Bool)

(declare-fun res!2775970 () Bool)

(declare-fun e!4099486 () Bool)

(assert (=> d!2133992 (=> res!2775970 e!4099486)))

(assert (=> d!2133992 (= res!2775970 ((_ is ElementMatch!16613) r!7292))))

(assert (=> d!2133992 (= (validRegex!8349 r!7292) e!4099486)))

(declare-fun bm!616711 () Bool)

(declare-fun call!616717 () Bool)

(assert (=> bm!616711 (= call!616717 call!616715)))

(declare-fun b!6792083 () Bool)

(assert (=> b!6792083 (= e!4099488 call!616717)))

(declare-fun b!6792084 () Bool)

(declare-fun e!4099489 () Bool)

(declare-fun e!4099491 () Bool)

(assert (=> b!6792084 (= e!4099489 e!4099491)))

(declare-fun res!2775969 () Bool)

(assert (=> b!6792084 (= res!2775969 (not (nullable!6592 (reg!16942 r!7292))))))

(assert (=> b!6792084 (=> (not res!2775969) (not e!4099491))))

(declare-fun b!6792085 () Bool)

(declare-fun e!4099490 () Bool)

(assert (=> b!6792085 (= e!4099490 call!616717)))

(declare-fun b!6792086 () Bool)

(assert (=> b!6792086 (= e!4099491 call!616715)))

(declare-fun bm!616712 () Bool)

(assert (=> bm!616712 (= call!616716 (validRegex!8349 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(declare-fun b!6792087 () Bool)

(assert (=> b!6792087 (= e!4099486 e!4099489)))

(assert (=> b!6792087 (= c!1262424 ((_ is Star!16613) r!7292))))

(declare-fun b!6792088 () Bool)

(declare-fun res!2775966 () Bool)

(assert (=> b!6792088 (=> (not res!2775966) (not e!4099490))))

(assert (=> b!6792088 (= res!2775966 call!616716)))

(assert (=> b!6792088 (= e!4099487 e!4099490)))

(declare-fun b!6792089 () Bool)

(assert (=> b!6792089 (= e!4099489 e!4099487)))

(assert (=> b!6792089 (= c!1262425 ((_ is Union!16613) r!7292))))

(assert (= (and d!2133992 (not res!2775970)) b!6792087))

(assert (= (and b!6792087 c!1262424) b!6792084))

(assert (= (and b!6792087 (not c!1262424)) b!6792089))

(assert (= (and b!6792084 res!2775969) b!6792086))

(assert (= (and b!6792089 c!1262425) b!6792088))

(assert (= (and b!6792089 (not c!1262425)) b!6792082))

(assert (= (and b!6792088 res!2775966) b!6792085))

(assert (= (and b!6792082 (not res!2775967)) b!6792081))

(assert (= (and b!6792081 res!2775968) b!6792083))

(assert (= (or b!6792085 b!6792083) bm!616711))

(assert (= (or b!6792088 b!6792081) bm!616712))

(assert (= (or b!6792086 bm!616711) bm!616710))

(declare-fun m!7539362 () Bool)

(assert (=> bm!616710 m!7539362))

(declare-fun m!7539364 () Bool)

(assert (=> b!6792084 m!7539364))

(declare-fun m!7539366 () Bool)

(assert (=> bm!616712 m!7539366))

(assert (=> start!657280 d!2133992))

(declare-fun b!6792094 () Bool)

(declare-fun e!4099494 () Bool)

(declare-fun tp!1860098 () Bool)

(declare-fun tp!1860099 () Bool)

(assert (=> b!6792094 (= e!4099494 (and tp!1860098 tp!1860099))))

(assert (=> b!6791291 (= tp!1860034 e!4099494)))

(assert (= (and b!6791291 ((_ is Cons!66014) (exprs!6497 (h!72464 zl!343)))) b!6792094))

(declare-fun e!4099497 () Bool)

(assert (=> b!6791287 (= tp!1860032 e!4099497)))

(declare-fun b!6792106 () Bool)

(declare-fun tp!1860111 () Bool)

(declare-fun tp!1860114 () Bool)

(assert (=> b!6792106 (= e!4099497 (and tp!1860111 tp!1860114))))

(declare-fun b!6792108 () Bool)

(declare-fun tp!1860110 () Bool)

(declare-fun tp!1860112 () Bool)

(assert (=> b!6792108 (= e!4099497 (and tp!1860110 tp!1860112))))

(declare-fun b!6792105 () Bool)

(assert (=> b!6792105 (= e!4099497 tp_is_empty!42479)))

(declare-fun b!6792107 () Bool)

(declare-fun tp!1860113 () Bool)

(assert (=> b!6792107 (= e!4099497 tp!1860113)))

(assert (= (and b!6791287 ((_ is ElementMatch!16613) (reg!16942 r!7292))) b!6792105))

(assert (= (and b!6791287 ((_ is Concat!25458) (reg!16942 r!7292))) b!6792106))

(assert (= (and b!6791287 ((_ is Star!16613) (reg!16942 r!7292))) b!6792107))

(assert (= (and b!6791287 ((_ is Union!16613) (reg!16942 r!7292))) b!6792108))

(declare-fun b!6792109 () Bool)

(declare-fun e!4099498 () Bool)

(declare-fun tp!1860115 () Bool)

(declare-fun tp!1860116 () Bool)

(assert (=> b!6792109 (= e!4099498 (and tp!1860115 tp!1860116))))

(assert (=> b!6791283 (= tp!1860029 e!4099498)))

(assert (= (and b!6791283 ((_ is Cons!66014) (exprs!6497 setElem!46493))) b!6792109))

(declare-fun e!4099499 () Bool)

(assert (=> b!6791284 (= tp!1860030 e!4099499)))

(declare-fun b!6792111 () Bool)

(declare-fun tp!1860118 () Bool)

(declare-fun tp!1860121 () Bool)

(assert (=> b!6792111 (= e!4099499 (and tp!1860118 tp!1860121))))

(declare-fun b!6792113 () Bool)

(declare-fun tp!1860117 () Bool)

(declare-fun tp!1860119 () Bool)

(assert (=> b!6792113 (= e!4099499 (and tp!1860117 tp!1860119))))

(declare-fun b!6792110 () Bool)

(assert (=> b!6792110 (= e!4099499 tp_is_empty!42479)))

(declare-fun b!6792112 () Bool)

(declare-fun tp!1860120 () Bool)

(assert (=> b!6792112 (= e!4099499 tp!1860120)))

(assert (= (and b!6791284 ((_ is ElementMatch!16613) (regOne!33739 r!7292))) b!6792110))

(assert (= (and b!6791284 ((_ is Concat!25458) (regOne!33739 r!7292))) b!6792111))

(assert (= (and b!6791284 ((_ is Star!16613) (regOne!33739 r!7292))) b!6792112))

(assert (= (and b!6791284 ((_ is Union!16613) (regOne!33739 r!7292))) b!6792113))

(declare-fun e!4099500 () Bool)

(assert (=> b!6791284 (= tp!1860033 e!4099500)))

(declare-fun b!6792115 () Bool)

(declare-fun tp!1860123 () Bool)

(declare-fun tp!1860126 () Bool)

(assert (=> b!6792115 (= e!4099500 (and tp!1860123 tp!1860126))))

(declare-fun b!6792117 () Bool)

(declare-fun tp!1860122 () Bool)

(declare-fun tp!1860124 () Bool)

(assert (=> b!6792117 (= e!4099500 (and tp!1860122 tp!1860124))))

(declare-fun b!6792114 () Bool)

(assert (=> b!6792114 (= e!4099500 tp_is_empty!42479)))

(declare-fun b!6792116 () Bool)

(declare-fun tp!1860125 () Bool)

(assert (=> b!6792116 (= e!4099500 tp!1860125)))

(assert (= (and b!6791284 ((_ is ElementMatch!16613) (regTwo!33739 r!7292))) b!6792114))

(assert (= (and b!6791284 ((_ is Concat!25458) (regTwo!33739 r!7292))) b!6792115))

(assert (= (and b!6791284 ((_ is Star!16613) (regTwo!33739 r!7292))) b!6792116))

(assert (= (and b!6791284 ((_ is Union!16613) (regTwo!33739 r!7292))) b!6792117))

(declare-fun e!4099501 () Bool)

(assert (=> b!6791290 (= tp!1860028 e!4099501)))

(declare-fun b!6792119 () Bool)

(declare-fun tp!1860128 () Bool)

(declare-fun tp!1860131 () Bool)

(assert (=> b!6792119 (= e!4099501 (and tp!1860128 tp!1860131))))

(declare-fun b!6792121 () Bool)

(declare-fun tp!1860127 () Bool)

(declare-fun tp!1860129 () Bool)

(assert (=> b!6792121 (= e!4099501 (and tp!1860127 tp!1860129))))

(declare-fun b!6792118 () Bool)

(assert (=> b!6792118 (= e!4099501 tp_is_empty!42479)))

(declare-fun b!6792120 () Bool)

(declare-fun tp!1860130 () Bool)

(assert (=> b!6792120 (= e!4099501 tp!1860130)))

(assert (= (and b!6791290 ((_ is ElementMatch!16613) (regOne!33738 r!7292))) b!6792118))

(assert (= (and b!6791290 ((_ is Concat!25458) (regOne!33738 r!7292))) b!6792119))

(assert (= (and b!6791290 ((_ is Star!16613) (regOne!33738 r!7292))) b!6792120))

(assert (= (and b!6791290 ((_ is Union!16613) (regOne!33738 r!7292))) b!6792121))

(declare-fun e!4099502 () Bool)

(assert (=> b!6791290 (= tp!1860026 e!4099502)))

(declare-fun b!6792123 () Bool)

(declare-fun tp!1860133 () Bool)

(declare-fun tp!1860136 () Bool)

(assert (=> b!6792123 (= e!4099502 (and tp!1860133 tp!1860136))))

(declare-fun b!6792125 () Bool)

(declare-fun tp!1860132 () Bool)

(declare-fun tp!1860134 () Bool)

(assert (=> b!6792125 (= e!4099502 (and tp!1860132 tp!1860134))))

(declare-fun b!6792122 () Bool)

(assert (=> b!6792122 (= e!4099502 tp_is_empty!42479)))

(declare-fun b!6792124 () Bool)

(declare-fun tp!1860135 () Bool)

(assert (=> b!6792124 (= e!4099502 tp!1860135)))

(assert (= (and b!6791290 ((_ is ElementMatch!16613) (regTwo!33738 r!7292))) b!6792122))

(assert (= (and b!6791290 ((_ is Concat!25458) (regTwo!33738 r!7292))) b!6792123))

(assert (= (and b!6791290 ((_ is Star!16613) (regTwo!33738 r!7292))) b!6792124))

(assert (= (and b!6791290 ((_ is Union!16613) (regTwo!33738 r!7292))) b!6792125))

(declare-fun b!6792130 () Bool)

(declare-fun e!4099505 () Bool)

(declare-fun tp!1860139 () Bool)

(assert (=> b!6792130 (= e!4099505 (and tp_is_empty!42479 tp!1860139))))

(assert (=> b!6791305 (= tp!1860031 e!4099505)))

(assert (= (and b!6791305 ((_ is Cons!66015) (t!379862 s!2326))) b!6792130))

(declare-fun condSetEmpty!46499 () Bool)

(assert (=> setNonEmpty!46493 (= condSetEmpty!46499 (= setRest!46493 ((as const (Array Context!11994 Bool)) false)))))

(declare-fun setRes!46499 () Bool)

(assert (=> setNonEmpty!46493 (= tp!1860027 setRes!46499)))

(declare-fun setIsEmpty!46499 () Bool)

(assert (=> setIsEmpty!46499 setRes!46499))

(declare-fun setElem!46499 () Context!11994)

(declare-fun tp!1860144 () Bool)

(declare-fun e!4099508 () Bool)

(declare-fun setNonEmpty!46499 () Bool)

(assert (=> setNonEmpty!46499 (= setRes!46499 (and tp!1860144 (inv!84779 setElem!46499) e!4099508))))

(declare-fun setRest!46499 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46499 (= setRest!46493 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46499 true) setRest!46499))))

(declare-fun b!6792135 () Bool)

(declare-fun tp!1860145 () Bool)

(assert (=> b!6792135 (= e!4099508 tp!1860145)))

(assert (= (and setNonEmpty!46493 condSetEmpty!46499) setIsEmpty!46499))

(assert (= (and setNonEmpty!46493 (not condSetEmpty!46499)) setNonEmpty!46499))

(assert (= setNonEmpty!46499 b!6792135))

(declare-fun m!7539368 () Bool)

(assert (=> setNonEmpty!46499 m!7539368))

(declare-fun b!6792143 () Bool)

(declare-fun e!4099514 () Bool)

(declare-fun tp!1860150 () Bool)

(assert (=> b!6792143 (= e!4099514 tp!1860150)))

(declare-fun b!6792142 () Bool)

(declare-fun tp!1860151 () Bool)

(declare-fun e!4099513 () Bool)

(assert (=> b!6792142 (= e!4099513 (and (inv!84779 (h!72464 (t!379863 zl!343))) e!4099514 tp!1860151))))

(assert (=> b!6791285 (= tp!1860035 e!4099513)))

(assert (= b!6792142 b!6792143))

(assert (= (and b!6791285 ((_ is Cons!66016) (t!379863 zl!343))) b!6792142))

(declare-fun m!7539370 () Bool)

(assert (=> b!6792142 m!7539370))

(declare-fun b_lambda!255825 () Bool)

(assert (= b_lambda!255797 (or b!6791309 b_lambda!255825)))

(declare-fun bs!1809609 () Bool)

(declare-fun d!2133994 () Bool)

(assert (= bs!1809609 (and d!2133994 b!6791309)))

(declare-fun lt!2446658 () Unit!159917)

(assert (=> bs!1809609 (= lt!2446658 (lemmaConcatPreservesForall!442 (exprs!6497 lt!2446519) lt!2446511 lambda!382661))))

(assert (=> bs!1809609 (= (dynLambda!26349 lambda!382660 lt!2446519) (Context!11995 (++!14771 (exprs!6497 lt!2446519) lt!2446511)))))

(declare-fun m!7539372 () Bool)

(assert (=> bs!1809609 m!7539372))

(declare-fun m!7539374 () Bool)

(assert (=> bs!1809609 m!7539374))

(assert (=> d!2133812 d!2133994))

(declare-fun b_lambda!255827 () Bool)

(assert (= b_lambda!255807 (or b!6791302 b_lambda!255827)))

(declare-fun bs!1809610 () Bool)

(declare-fun d!2133996 () Bool)

(assert (= bs!1809610 (and d!2133996 b!6791302)))

(assert (=> bs!1809610 (= (dynLambda!26350 lambda!382659 lt!2446529) (derivationStepZipperUp!1767 lt!2446529 (h!72463 s!2326)))))

(assert (=> bs!1809610 m!7538738))

(assert (=> d!2133864 d!2133996))

(declare-fun b_lambda!255829 () Bool)

(assert (= b_lambda!255823 (or b!6791302 b_lambda!255829)))

(declare-fun bs!1809611 () Bool)

(declare-fun d!2133998 () Bool)

(assert (= bs!1809611 (and d!2133998 b!6791302)))

(assert (=> bs!1809611 (= (dynLambda!26350 lambda!382659 lt!2446524) (derivationStepZipperUp!1767 lt!2446524 (h!72463 s!2326)))))

(assert (=> bs!1809611 m!7538706))

(assert (=> d!2133982 d!2133998))

(declare-fun b_lambda!255831 () Bool)

(assert (= b_lambda!255821 (or b!6791302 b_lambda!255831)))

(declare-fun bs!1809612 () Bool)

(declare-fun d!2134000 () Bool)

(assert (= bs!1809612 (and d!2134000 b!6791302)))

(assert (=> bs!1809612 (= (dynLambda!26350 lambda!382659 (h!72464 zl!343)) (derivationStepZipperUp!1767 (h!72464 zl!343) (h!72463 s!2326)))))

(assert (=> bs!1809612 m!7538664))

(assert (=> d!2133950 d!2134000))

(declare-fun b_lambda!255833 () Bool)

(assert (= b_lambda!255809 (or b!6791302 b_lambda!255833)))

(declare-fun bs!1809613 () Bool)

(declare-fun d!2134002 () Bool)

(assert (= bs!1809613 (and d!2134002 b!6791302)))

(assert (=> bs!1809613 (= (dynLambda!26350 lambda!382659 lt!2446519) (derivationStepZipperUp!1767 lt!2446519 (h!72463 s!2326)))))

(assert (=> bs!1809613 m!7538728))

(assert (=> d!2133884 d!2134002))

(check-sat (not d!2133956) (not d!2133966) (not d!2133914) (not b!6792060) (not b!6792107) (not d!2133826) (not bm!616689) (not d!2133982) (not b!6791972) (not d!2133772) (not bs!1809609) (not b!6791928) (not d!2133942) (not d!2133960) (not b!6791785) (not b!6792014) (not d!2133972) (not b!6791672) (not b!6791923) (not d!2133878) (not b!6791836) (not b!6792108) (not b!6791341) (not bm!616698) (not bm!616646) (not d!2133884) (not bm!616703) (not b!6792013) (not b!6791540) (not b!6791920) (not bm!616712) (not b!6791406) (not d!2133950) (not b!6792124) (not b!6792121) (not b!6792109) (not bs!1809611) (not b!6792015) (not bm!616647) (not b!6792125) (not d!2133816) (not b!6791631) (not b!6791930) (not bm!616692) (not d!2133954) (not b!6791761) (not b!6792112) (not b!6792120) (not b!6792113) (not bm!616702) (not d!2133978) (not b!6792038) (not d!2133970) (not d!2133934) (not d!2133858) (not bs!1809613) (not d!2133974) (not b!6792116) (not b!6791482) (not b!6791782) (not b!6791924) (not d!2133912) (not b!6792084) (not b!6792135) (not b_lambda!255825) (not b!6791769) (not d!2133812) (not d!2133886) (not b!6792016) (not d!2133810) (not b!6791783) (not b!6792123) (not bm!616710) (not b!6791765) (not b_lambda!255831) (not b!6792054) (not b!6792119) (not b!6792055) (not b!6791969) (not b!6791347) (not bm!616645) (not d!2133990) (not b!6791346) (not b!6791784) (not b!6792012) (not b!6791676) (not d!2133932) (not bm!616700) (not b_lambda!255827) (not b!6792130) (not b!6792042) (not d!2133782) (not b!6792059) (not b!6792051) (not d!2133890) tp_is_empty!42479 (not d!2133962) (not b!6792117) (not b!6791345) (not b!6791340) (not b!6792143) (not d!2133988) (not b!6791764) (not b!6792094) (not bm!616679) (not d!2133864) (not b!6791766) (not bm!616697) (not b!6792106) (not b!6791832) (not b!6791762) (not d!2133952) (not b!6791968) (not bs!1809612) (not b!6791929) (not b!6792111) (not b!6792115) (not b!6791376) (not b!6792142) (not b!6791344) (not d!2133774) (not b!6791630) (not bm!616699) (not b!6791763) (not d!2133920) (not d!2133888) (not d!2133862) (not bm!616688) (not d!2133910) (not bm!616680) (not b_lambda!255833) (not bm!616701) (not setNonEmpty!46499) (not b!6792061) (not b!6791671) (not b!6791349) (not d!2133778) (not b_lambda!255829) (not b!6792035) (not b!6791539) (not d!2133916) (not b!6792031) (not bm!616693) (not b!6792009) (not b!6791677) (not b!6791971) (not d!2133968) (not d!2133958) (not d!2133828) (not bs!1809610) (not b!6792036) (not bm!616656))
(check-sat)
(get-model)

(declare-fun b!6792431 () Bool)

(declare-fun e!4099697 () (InoxSet Context!11994))

(declare-fun call!616784 () (InoxSet Context!11994))

(declare-fun call!616786 () (InoxSet Context!11994))

(assert (=> b!6792431 (= e!4099697 ((_ map or) call!616784 call!616786))))

(declare-fun d!2134126 () Bool)

(declare-fun c!1262517 () Bool)

(assert (=> d!2134126 (= c!1262517 (and ((_ is ElementMatch!16613) (h!72462 (exprs!6497 lt!2446519))) (= (c!1262203 (h!72462 (exprs!6497 lt!2446519))) (h!72463 s!2326))))))

(declare-fun e!4099695 () (InoxSet Context!11994))

(assert (=> d!2134126 (= (derivationStepZipperDown!1841 (h!72462 (exprs!6497 lt!2446519)) (Context!11995 (t!379861 (exprs!6497 lt!2446519))) (h!72463 s!2326)) e!4099695)))

(declare-fun bm!616777 () Bool)

(declare-fun call!616785 () List!66138)

(declare-fun call!616783 () List!66138)

(assert (=> bm!616777 (= call!616785 call!616783)))

(declare-fun b!6792432 () Bool)

(assert (=> b!6792432 (= e!4099695 (store ((as const (Array Context!11994 Bool)) false) (Context!11995 (t!379861 (exprs!6497 lt!2446519))) true))))

(declare-fun b!6792433 () Bool)

(declare-fun e!4099694 () (InoxSet Context!11994))

(declare-fun call!616787 () (InoxSet Context!11994))

(assert (=> b!6792433 (= e!4099694 ((_ map or) call!616784 call!616787))))

(declare-fun bm!616778 () Bool)

(assert (=> bm!616778 (= call!616787 call!616786)))

(declare-fun b!6792434 () Bool)

(declare-fun c!1262516 () Bool)

(assert (=> b!6792434 (= c!1262516 ((_ is Star!16613) (h!72462 (exprs!6497 lt!2446519))))))

(declare-fun e!4099693 () (InoxSet Context!11994))

(declare-fun e!4099696 () (InoxSet Context!11994))

(assert (=> b!6792434 (= e!4099693 e!4099696)))

(declare-fun b!6792435 () Bool)

(declare-fun call!616782 () (InoxSet Context!11994))

(assert (=> b!6792435 (= e!4099693 call!616782)))

(declare-fun b!6792436 () Bool)

(assert (=> b!6792436 (= e!4099694 e!4099693)))

(declare-fun c!1262520 () Bool)

(assert (=> b!6792436 (= c!1262520 ((_ is Concat!25458) (h!72462 (exprs!6497 lt!2446519))))))

(declare-fun b!6792437 () Bool)

(assert (=> b!6792437 (= e!4099696 call!616782)))

(declare-fun b!6792438 () Bool)

(assert (=> b!6792438 (= e!4099695 e!4099697)))

(declare-fun c!1262519 () Bool)

(assert (=> b!6792438 (= c!1262519 ((_ is Union!16613) (h!72462 (exprs!6497 lt!2446519))))))

(declare-fun bm!616779 () Bool)

(assert (=> bm!616779 (= call!616782 call!616787)))

(declare-fun b!6792439 () Bool)

(assert (=> b!6792439 (= e!4099696 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792440 () Bool)

(declare-fun e!4099698 () Bool)

(assert (=> b!6792440 (= e!4099698 (nullable!6592 (regOne!33738 (h!72462 (exprs!6497 lt!2446519)))))))

(declare-fun bm!616780 () Bool)

(assert (=> bm!616780 (= call!616784 (derivationStepZipperDown!1841 (ite c!1262519 (regOne!33739 (h!72462 (exprs!6497 lt!2446519))) (regOne!33738 (h!72462 (exprs!6497 lt!2446519)))) (ite c!1262519 (Context!11995 (t!379861 (exprs!6497 lt!2446519))) (Context!11995 call!616783)) (h!72463 s!2326)))))

(declare-fun b!6792441 () Bool)

(declare-fun c!1262518 () Bool)

(assert (=> b!6792441 (= c!1262518 e!4099698)))

(declare-fun res!2776076 () Bool)

(assert (=> b!6792441 (=> (not res!2776076) (not e!4099698))))

(assert (=> b!6792441 (= res!2776076 ((_ is Concat!25458) (h!72462 (exprs!6497 lt!2446519))))))

(assert (=> b!6792441 (= e!4099697 e!4099694)))

(declare-fun bm!616781 () Bool)

(assert (=> bm!616781 (= call!616783 ($colon$colon!2422 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519)))) (ite (or c!1262518 c!1262520) (regTwo!33738 (h!72462 (exprs!6497 lt!2446519))) (h!72462 (exprs!6497 lt!2446519)))))))

(declare-fun bm!616782 () Bool)

(assert (=> bm!616782 (= call!616786 (derivationStepZipperDown!1841 (ite c!1262519 (regTwo!33739 (h!72462 (exprs!6497 lt!2446519))) (ite c!1262518 (regTwo!33738 (h!72462 (exprs!6497 lt!2446519))) (ite c!1262520 (regOne!33738 (h!72462 (exprs!6497 lt!2446519))) (reg!16942 (h!72462 (exprs!6497 lt!2446519)))))) (ite (or c!1262519 c!1262518) (Context!11995 (t!379861 (exprs!6497 lt!2446519))) (Context!11995 call!616785)) (h!72463 s!2326)))))

(assert (= (and d!2134126 c!1262517) b!6792432))

(assert (= (and d!2134126 (not c!1262517)) b!6792438))

(assert (= (and b!6792438 c!1262519) b!6792431))

(assert (= (and b!6792438 (not c!1262519)) b!6792441))

(assert (= (and b!6792441 res!2776076) b!6792440))

(assert (= (and b!6792441 c!1262518) b!6792433))

(assert (= (and b!6792441 (not c!1262518)) b!6792436))

(assert (= (and b!6792436 c!1262520) b!6792435))

(assert (= (and b!6792436 (not c!1262520)) b!6792434))

(assert (= (and b!6792434 c!1262516) b!6792437))

(assert (= (and b!6792434 (not c!1262516)) b!6792439))

(assert (= (or b!6792435 b!6792437) bm!616777))

(assert (= (or b!6792435 b!6792437) bm!616779))

(assert (= (or b!6792433 bm!616777) bm!616781))

(assert (= (or b!6792433 bm!616779) bm!616778))

(assert (= (or b!6792431 bm!616778) bm!616782))

(assert (= (or b!6792431 b!6792433) bm!616780))

(declare-fun m!7539674 () Bool)

(assert (=> bm!616780 m!7539674))

(declare-fun m!7539676 () Bool)

(assert (=> bm!616782 m!7539676))

(declare-fun m!7539678 () Bool)

(assert (=> b!6792440 m!7539678))

(declare-fun m!7539680 () Bool)

(assert (=> bm!616781 m!7539680))

(declare-fun m!7539682 () Bool)

(assert (=> b!6792432 m!7539682))

(assert (=> bm!616679 d!2134126))

(declare-fun bs!1809771 () Bool)

(declare-fun d!2134128 () Bool)

(assert (= bs!1809771 (and d!2134128 d!2133858)))

(declare-fun lambda!382763 () Int)

(assert (=> bs!1809771 (= lambda!382763 lambda!382690)))

(declare-fun bs!1809772 () Bool)

(assert (= bs!1809772 (and d!2134128 d!2133890)))

(assert (=> bs!1809772 (= lambda!382763 lambda!382704)))

(declare-fun bs!1809773 () Bool)

(assert (= bs!1809773 (and d!2134128 d!2133774)))

(assert (=> bs!1809773 (= lambda!382763 lambda!382664)))

(declare-fun bs!1809774 () Bool)

(assert (= bs!1809774 (and d!2134128 d!2133974)))

(assert (=> bs!1809774 (= lambda!382763 lambda!382743)))

(declare-fun bs!1809775 () Bool)

(assert (= bs!1809775 (and d!2134128 d!2133910)))

(assert (=> bs!1809775 (= lambda!382763 lambda!382705)))

(declare-fun bs!1809776 () Bool)

(assert (= bs!1809776 (and d!2134128 d!2133778)))

(assert (=> bs!1809776 (= lambda!382763 lambda!382667)))

(declare-fun bs!1809777 () Bool)

(assert (= bs!1809777 (and d!2134128 b!6791309)))

(assert (=> bs!1809777 (= lambda!382763 lambda!382661)))

(declare-fun b!6792442 () Bool)

(declare-fun e!4099701 () Bool)

(declare-fun lt!2446678 () Regex!16613)

(assert (=> b!6792442 (= e!4099701 (isUnion!1408 lt!2446678))))

(declare-fun b!6792443 () Bool)

(declare-fun e!4099704 () Regex!16613)

(assert (=> b!6792443 (= e!4099704 (Union!16613 (h!72462 (t!379861 (unfocusZipperList!2034 zl!343))) (generalisedUnion!2457 (t!379861 (t!379861 (unfocusZipperList!2034 zl!343))))))))

(declare-fun b!6792444 () Bool)

(declare-fun e!4099702 () Regex!16613)

(assert (=> b!6792444 (= e!4099702 e!4099704)))

(declare-fun c!1262524 () Bool)

(assert (=> b!6792444 (= c!1262524 ((_ is Cons!66014) (t!379861 (unfocusZipperList!2034 zl!343))))))

(declare-fun e!4099703 () Bool)

(assert (=> d!2134128 e!4099703))

(declare-fun res!2776080 () Bool)

(assert (=> d!2134128 (=> (not res!2776080) (not e!4099703))))

(assert (=> d!2134128 (= res!2776080 (validRegex!8349 lt!2446678))))

(assert (=> d!2134128 (= lt!2446678 e!4099702)))

(declare-fun c!1262521 () Bool)

(declare-fun e!4099700 () Bool)

(assert (=> d!2134128 (= c!1262521 e!4099700)))

(declare-fun res!2776079 () Bool)

(assert (=> d!2134128 (=> (not res!2776079) (not e!4099700))))

(assert (=> d!2134128 (= res!2776079 ((_ is Cons!66014) (t!379861 (unfocusZipperList!2034 zl!343))))))

(assert (=> d!2134128 (forall!15805 (t!379861 (unfocusZipperList!2034 zl!343)) lambda!382763)))

(assert (=> d!2134128 (= (generalisedUnion!2457 (t!379861 (unfocusZipperList!2034 zl!343))) lt!2446678)))

(declare-fun b!6792445 () Bool)

(assert (=> b!6792445 (= e!4099702 (h!72462 (t!379861 (unfocusZipperList!2034 zl!343))))))

(declare-fun b!6792446 () Bool)

(declare-fun e!4099699 () Bool)

(assert (=> b!6792446 (= e!4099703 e!4099699)))

(declare-fun c!1262523 () Bool)

(assert (=> b!6792446 (= c!1262523 (isEmpty!38388 (t!379861 (unfocusZipperList!2034 zl!343))))))

(declare-fun b!6792447 () Bool)

(assert (=> b!6792447 (= e!4099699 e!4099701)))

(declare-fun c!1262522 () Bool)

(assert (=> b!6792447 (= c!1262522 (isEmpty!38388 (tail!12722 (t!379861 (unfocusZipperList!2034 zl!343)))))))

(declare-fun b!6792448 () Bool)

(assert (=> b!6792448 (= e!4099700 (isEmpty!38388 (t!379861 (t!379861 (unfocusZipperList!2034 zl!343)))))))

(declare-fun b!6792449 () Bool)

(assert (=> b!6792449 (= e!4099701 (= lt!2446678 (head!13637 (t!379861 (unfocusZipperList!2034 zl!343)))))))

(declare-fun b!6792450 () Bool)

(assert (=> b!6792450 (= e!4099704 EmptyLang!16613)))

(declare-fun b!6792451 () Bool)

(assert (=> b!6792451 (= e!4099699 (isEmptyLang!1978 lt!2446678))))

(assert (= (and d!2134128 res!2776079) b!6792448))

(assert (= (and d!2134128 c!1262521) b!6792445))

(assert (= (and d!2134128 (not c!1262521)) b!6792444))

(assert (= (and b!6792444 c!1262524) b!6792443))

(assert (= (and b!6792444 (not c!1262524)) b!6792450))

(assert (= (and d!2134128 res!2776080) b!6792446))

(assert (= (and b!6792446 c!1262523) b!6792451))

(assert (= (and b!6792446 (not c!1262523)) b!6792447))

(assert (= (and b!6792447 c!1262522) b!6792449))

(assert (= (and b!6792447 (not c!1262522)) b!6792442))

(assert (=> b!6792446 m!7538776))

(declare-fun m!7539684 () Bool)

(assert (=> b!6792442 m!7539684))

(declare-fun m!7539686 () Bool)

(assert (=> b!6792449 m!7539686))

(declare-fun m!7539688 () Bool)

(assert (=> b!6792448 m!7539688))

(declare-fun m!7539690 () Bool)

(assert (=> b!6792451 m!7539690))

(declare-fun m!7539692 () Bool)

(assert (=> b!6792447 m!7539692))

(assert (=> b!6792447 m!7539692))

(declare-fun m!7539694 () Bool)

(assert (=> b!6792447 m!7539694))

(declare-fun m!7539696 () Bool)

(assert (=> d!2134128 m!7539696))

(declare-fun m!7539698 () Bool)

(assert (=> d!2134128 m!7539698))

(declare-fun m!7539700 () Bool)

(assert (=> b!6792443 m!7539700))

(assert (=> b!6791341 d!2134128))

(declare-fun b!6792458 () Bool)

(declare-fun e!4099711 () (InoxSet Context!11994))

(declare-fun call!616790 () (InoxSet Context!11994))

(declare-fun call!616792 () (InoxSet Context!11994))

(assert (=> b!6792458 (= e!4099711 ((_ map or) call!616790 call!616792))))

(declare-fun d!2134130 () Bool)

(declare-fun c!1262526 () Bool)

(assert (=> d!2134130 (= c!1262526 (and ((_ is ElementMatch!16613) (h!72462 (exprs!6497 lt!2446529))) (= (c!1262203 (h!72462 (exprs!6497 lt!2446529))) (h!72463 s!2326))))))

(declare-fun e!4099709 () (InoxSet Context!11994))

(assert (=> d!2134130 (= (derivationStepZipperDown!1841 (h!72462 (exprs!6497 lt!2446529)) (Context!11995 (t!379861 (exprs!6497 lt!2446529))) (h!72463 s!2326)) e!4099709)))

(declare-fun bm!616783 () Bool)

(declare-fun call!616791 () List!66138)

(declare-fun call!616789 () List!66138)

(assert (=> bm!616783 (= call!616791 call!616789)))

(declare-fun b!6792459 () Bool)

(assert (=> b!6792459 (= e!4099709 (store ((as const (Array Context!11994 Bool)) false) (Context!11995 (t!379861 (exprs!6497 lt!2446529))) true))))

(declare-fun b!6792460 () Bool)

(declare-fun e!4099708 () (InoxSet Context!11994))

(declare-fun call!616793 () (InoxSet Context!11994))

(assert (=> b!6792460 (= e!4099708 ((_ map or) call!616790 call!616793))))

(declare-fun bm!616784 () Bool)

(assert (=> bm!616784 (= call!616793 call!616792)))

(declare-fun b!6792461 () Bool)

(declare-fun c!1262525 () Bool)

(assert (=> b!6792461 (= c!1262525 ((_ is Star!16613) (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun e!4099707 () (InoxSet Context!11994))

(declare-fun e!4099710 () (InoxSet Context!11994))

(assert (=> b!6792461 (= e!4099707 e!4099710)))

(declare-fun b!6792462 () Bool)

(declare-fun call!616788 () (InoxSet Context!11994))

(assert (=> b!6792462 (= e!4099707 call!616788)))

(declare-fun b!6792463 () Bool)

(assert (=> b!6792463 (= e!4099708 e!4099707)))

(declare-fun c!1262529 () Bool)

(assert (=> b!6792463 (= c!1262529 ((_ is Concat!25458) (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun b!6792464 () Bool)

(assert (=> b!6792464 (= e!4099710 call!616788)))

(declare-fun b!6792465 () Bool)

(assert (=> b!6792465 (= e!4099709 e!4099711)))

(declare-fun c!1262528 () Bool)

(assert (=> b!6792465 (= c!1262528 ((_ is Union!16613) (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun bm!616785 () Bool)

(assert (=> bm!616785 (= call!616788 call!616793)))

(declare-fun b!6792466 () Bool)

(assert (=> b!6792466 (= e!4099710 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792467 () Bool)

(declare-fun e!4099712 () Bool)

(assert (=> b!6792467 (= e!4099712 (nullable!6592 (regOne!33738 (h!72462 (exprs!6497 lt!2446529)))))))

(declare-fun bm!616786 () Bool)

(assert (=> bm!616786 (= call!616790 (derivationStepZipperDown!1841 (ite c!1262528 (regOne!33739 (h!72462 (exprs!6497 lt!2446529))) (regOne!33738 (h!72462 (exprs!6497 lt!2446529)))) (ite c!1262528 (Context!11995 (t!379861 (exprs!6497 lt!2446529))) (Context!11995 call!616789)) (h!72463 s!2326)))))

(declare-fun b!6792468 () Bool)

(declare-fun c!1262527 () Bool)

(assert (=> b!6792468 (= c!1262527 e!4099712)))

(declare-fun res!2776087 () Bool)

(assert (=> b!6792468 (=> (not res!2776087) (not e!4099712))))

(assert (=> b!6792468 (= res!2776087 ((_ is Concat!25458) (h!72462 (exprs!6497 lt!2446529))))))

(assert (=> b!6792468 (= e!4099711 e!4099708)))

(declare-fun bm!616787 () Bool)

(assert (=> bm!616787 (= call!616789 ($colon$colon!2422 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529)))) (ite (or c!1262527 c!1262529) (regTwo!33738 (h!72462 (exprs!6497 lt!2446529))) (h!72462 (exprs!6497 lt!2446529)))))))

(declare-fun bm!616788 () Bool)

(assert (=> bm!616788 (= call!616792 (derivationStepZipperDown!1841 (ite c!1262528 (regTwo!33739 (h!72462 (exprs!6497 lt!2446529))) (ite c!1262527 (regTwo!33738 (h!72462 (exprs!6497 lt!2446529))) (ite c!1262529 (regOne!33738 (h!72462 (exprs!6497 lt!2446529))) (reg!16942 (h!72462 (exprs!6497 lt!2446529)))))) (ite (or c!1262528 c!1262527) (Context!11995 (t!379861 (exprs!6497 lt!2446529))) (Context!11995 call!616791)) (h!72463 s!2326)))))

(assert (= (and d!2134130 c!1262526) b!6792459))

(assert (= (and d!2134130 (not c!1262526)) b!6792465))

(assert (= (and b!6792465 c!1262528) b!6792458))

(assert (= (and b!6792465 (not c!1262528)) b!6792468))

(assert (= (and b!6792468 res!2776087) b!6792467))

(assert (= (and b!6792468 c!1262527) b!6792460))

(assert (= (and b!6792468 (not c!1262527)) b!6792463))

(assert (= (and b!6792463 c!1262529) b!6792462))

(assert (= (and b!6792463 (not c!1262529)) b!6792461))

(assert (= (and b!6792461 c!1262525) b!6792464))

(assert (= (and b!6792461 (not c!1262525)) b!6792466))

(assert (= (or b!6792462 b!6792464) bm!616783))

(assert (= (or b!6792462 b!6792464) bm!616785))

(assert (= (or b!6792460 bm!616783) bm!616787))

(assert (= (or b!6792460 bm!616785) bm!616784))

(assert (= (or b!6792458 bm!616784) bm!616788))

(assert (= (or b!6792458 b!6792460) bm!616786))

(declare-fun m!7539702 () Bool)

(assert (=> bm!616786 m!7539702))

(declare-fun m!7539704 () Bool)

(assert (=> bm!616788 m!7539704))

(declare-fun m!7539706 () Bool)

(assert (=> b!6792467 m!7539706))

(declare-fun m!7539708 () Bool)

(assert (=> bm!616787 m!7539708))

(declare-fun m!7539710 () Bool)

(assert (=> b!6792459 m!7539710))

(assert (=> bm!616680 d!2134130))

(declare-fun d!2134132 () Bool)

(assert (=> d!2134132 true))

(declare-fun setRes!46508 () Bool)

(assert (=> d!2134132 setRes!46508))

(declare-fun condSetEmpty!46508 () Bool)

(declare-fun res!2776090 () (InoxSet Context!11994))

(assert (=> d!2134132 (= condSetEmpty!46508 (= res!2776090 ((as const (Array Context!11994 Bool)) false)))))

(assert (=> d!2134132 (= (choose!50600 lt!2446517 lambda!382659) res!2776090)))

(declare-fun setIsEmpty!46508 () Bool)

(assert (=> setIsEmpty!46508 setRes!46508))

(declare-fun setElem!46508 () Context!11994)

(declare-fun tp!1860175 () Bool)

(declare-fun setNonEmpty!46508 () Bool)

(declare-fun e!4099715 () Bool)

(assert (=> setNonEmpty!46508 (= setRes!46508 (and tp!1860175 (inv!84779 setElem!46508) e!4099715))))

(declare-fun setRest!46508 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46508 (= res!2776090 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46508 true) setRest!46508))))

(declare-fun b!6792471 () Bool)

(declare-fun tp!1860174 () Bool)

(assert (=> b!6792471 (= e!4099715 tp!1860174)))

(assert (= (and d!2134132 condSetEmpty!46508) setIsEmpty!46508))

(assert (= (and d!2134132 (not condSetEmpty!46508)) setNonEmpty!46508))

(assert (= setNonEmpty!46508 b!6792471))

(declare-fun m!7539712 () Bool)

(assert (=> setNonEmpty!46508 m!7539712))

(assert (=> d!2133886 d!2134132))

(declare-fun d!2134134 () Bool)

(assert (=> d!2134134 (= (head!13637 (exprs!6497 (h!72464 zl!343))) (h!72462 (exprs!6497 (h!72464 zl!343))))))

(assert (=> b!6791766 d!2134134))

(declare-fun d!2134136 () Bool)

(declare-fun nullableFct!2496 (Regex!16613) Bool)

(assert (=> d!2134136 (= (nullable!6592 (h!72462 (exprs!6497 lt!2446524))) (nullableFct!2496 (h!72462 (exprs!6497 lt!2446524))))))

(declare-fun bs!1809796 () Bool)

(assert (= bs!1809796 d!2134136))

(declare-fun m!7539714 () Bool)

(assert (=> bs!1809796 m!7539714))

(assert (=> b!6792036 d!2134136))

(declare-fun b!6792472 () Bool)

(declare-fun e!4099716 () Bool)

(declare-fun e!4099719 () Bool)

(assert (=> b!6792472 (= e!4099716 e!4099719)))

(declare-fun res!2776093 () Bool)

(assert (=> b!6792472 (=> (not res!2776093) (not e!4099719))))

(declare-fun call!616795 () Bool)

(assert (=> b!6792472 (= res!2776093 call!616795)))

(declare-fun b!6792473 () Bool)

(declare-fun res!2776092 () Bool)

(assert (=> b!6792473 (=> res!2776092 e!4099716)))

(assert (=> b!6792473 (= res!2776092 (not ((_ is Concat!25458) (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292)))))))

(declare-fun e!4099718 () Bool)

(assert (=> b!6792473 (= e!4099718 e!4099716)))

(declare-fun c!1262531 () Bool)

(declare-fun c!1262530 () Bool)

(declare-fun bm!616789 () Bool)

(declare-fun call!616794 () Bool)

(assert (=> bm!616789 (= call!616794 (validRegex!8349 (ite c!1262530 (reg!16942 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))) (ite c!1262531 (regTwo!33739 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))) (regTwo!33738 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292)))))))))

(declare-fun d!2134138 () Bool)

(declare-fun res!2776095 () Bool)

(declare-fun e!4099717 () Bool)

(assert (=> d!2134138 (=> res!2776095 e!4099717)))

(assert (=> d!2134138 (= res!2776095 ((_ is ElementMatch!16613) (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(assert (=> d!2134138 (= (validRegex!8349 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))) e!4099717)))

(declare-fun bm!616790 () Bool)

(declare-fun call!616796 () Bool)

(assert (=> bm!616790 (= call!616796 call!616794)))

(declare-fun b!6792474 () Bool)

(assert (=> b!6792474 (= e!4099719 call!616796)))

(declare-fun b!6792475 () Bool)

(declare-fun e!4099720 () Bool)

(declare-fun e!4099722 () Bool)

(assert (=> b!6792475 (= e!4099720 e!4099722)))

(declare-fun res!2776094 () Bool)

(assert (=> b!6792475 (= res!2776094 (not (nullable!6592 (reg!16942 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))))))))

(assert (=> b!6792475 (=> (not res!2776094) (not e!4099722))))

(declare-fun b!6792476 () Bool)

(declare-fun e!4099721 () Bool)

(assert (=> b!6792476 (= e!4099721 call!616796)))

(declare-fun b!6792477 () Bool)

(assert (=> b!6792477 (= e!4099722 call!616794)))

(declare-fun bm!616791 () Bool)

(assert (=> bm!616791 (= call!616795 (validRegex!8349 (ite c!1262531 (regOne!33739 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))) (regOne!33738 (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))))))))

(declare-fun b!6792478 () Bool)

(assert (=> b!6792478 (= e!4099717 e!4099720)))

(assert (=> b!6792478 (= c!1262530 ((_ is Star!16613) (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(declare-fun b!6792479 () Bool)

(declare-fun res!2776091 () Bool)

(assert (=> b!6792479 (=> (not res!2776091) (not e!4099721))))

(assert (=> b!6792479 (= res!2776091 call!616795)))

(assert (=> b!6792479 (= e!4099718 e!4099721)))

(declare-fun b!6792480 () Bool)

(assert (=> b!6792480 (= e!4099720 e!4099718)))

(assert (=> b!6792480 (= c!1262531 ((_ is Union!16613) (ite c!1262425 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(assert (= (and d!2134138 (not res!2776095)) b!6792478))

(assert (= (and b!6792478 c!1262530) b!6792475))

(assert (= (and b!6792478 (not c!1262530)) b!6792480))

(assert (= (and b!6792475 res!2776094) b!6792477))

(assert (= (and b!6792480 c!1262531) b!6792479))

(assert (= (and b!6792480 (not c!1262531)) b!6792473))

(assert (= (and b!6792479 res!2776091) b!6792476))

(assert (= (and b!6792473 (not res!2776092)) b!6792472))

(assert (= (and b!6792472 res!2776093) b!6792474))

(assert (= (or b!6792476 b!6792474) bm!616790))

(assert (= (or b!6792479 b!6792472) bm!616791))

(assert (= (or b!6792477 bm!616790) bm!616789))

(declare-fun m!7539716 () Bool)

(assert (=> bm!616789 m!7539716))

(declare-fun m!7539718 () Bool)

(assert (=> b!6792475 m!7539718))

(declare-fun m!7539720 () Bool)

(assert (=> bm!616791 m!7539720))

(assert (=> bm!616712 d!2134138))

(declare-fun d!2134140 () Bool)

(assert (=> d!2134140 (= (nullable!6592 (regOne!33738 r!7292)) (nullableFct!2496 (regOne!33738 r!7292)))))

(declare-fun bs!1809797 () Bool)

(assert (= bs!1809797 d!2134140))

(declare-fun m!7539722 () Bool)

(assert (=> bs!1809797 m!7539722))

(assert (=> b!6791482 d!2134140))

(declare-fun d!2134142 () Bool)

(declare-fun lambda!382770 () Int)

(declare-fun exists!2732 ((InoxSet Context!11994) Int) Bool)

(assert (=> d!2134142 (= (nullableZipper!2320 lt!2446518) (exists!2732 lt!2446518 lambda!382770))))

(declare-fun bs!1809798 () Bool)

(assert (= bs!1809798 d!2134142))

(declare-fun m!7539732 () Bool)

(assert (=> bs!1809798 m!7539732))

(assert (=> b!6791782 d!2134142))

(declare-fun bs!1809799 () Bool)

(declare-fun b!6792505 () Bool)

(assert (= bs!1809799 (and b!6792505 d!2133960)))

(declare-fun lambda!382771 () Int)

(assert (=> bs!1809799 (not (= lambda!382771 lambda!382738))))

(declare-fun bs!1809800 () Bool)

(assert (= bs!1809800 (and b!6792505 d!2133972)))

(assert (=> bs!1809800 (not (= lambda!382771 lambda!382742))))

(declare-fun bs!1809801 () Bool)

(assert (= bs!1809801 (and b!6792505 d!2133958)))

(assert (=> bs!1809801 (not (= lambda!382771 lambda!382732))))

(declare-fun bs!1809802 () Bool)

(assert (= bs!1809802 (and b!6792505 b!6792048)))

(assert (=> bs!1809802 (= (and (= (reg!16942 (regTwo!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33739 r!7292) r!7292)) (= lambda!382771 lambda!382744))))

(declare-fun bs!1809803 () Bool)

(assert (= bs!1809803 (and b!6792505 b!6791842)))

(assert (=> bs!1809803 (= (and (= (reg!16942 (regTwo!33739 r!7292)) (reg!16942 lt!2446525)) (= (regTwo!33739 r!7292) lt!2446525)) (= lambda!382771 lambda!382726))))

(declare-fun bs!1809804 () Bool)

(assert (= bs!1809804 (and b!6792505 b!6791299)))

(assert (=> bs!1809804 (not (= lambda!382771 lambda!382658))))

(declare-fun bs!1809805 () Bool)

(assert (= bs!1809805 (and b!6792505 b!6792040)))

(assert (=> bs!1809805 (not (= lambda!382771 lambda!382745))))

(assert (=> bs!1809801 (not (= lambda!382771 lambda!382733))))

(assert (=> bs!1809804 (not (= lambda!382771 lambda!382656))))

(assert (=> bs!1809804 (= (and (= (reg!16942 (regTwo!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33739 r!7292) r!7292)) (= lambda!382771 lambda!382657))))

(declare-fun bs!1809807 () Bool)

(assert (= bs!1809807 (and b!6792505 b!6791834)))

(assert (=> bs!1809807 (not (= lambda!382771 lambda!382727))))

(assert (=> bs!1809799 (= (and (= (reg!16942 (regTwo!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33739 r!7292) (Star!16613 (reg!16942 r!7292)))) (= lambda!382771 lambda!382739))))

(assert (=> b!6792505 true))

(assert (=> b!6792505 true))

(declare-fun bs!1809812 () Bool)

(declare-fun b!6792497 () Bool)

(assert (= bs!1809812 (and b!6792497 d!2133960)))

(declare-fun lambda!382773 () Int)

(assert (=> bs!1809812 (not (= lambda!382773 lambda!382738))))

(declare-fun bs!1809813 () Bool)

(assert (= bs!1809813 (and b!6792497 d!2133972)))

(assert (=> bs!1809813 (not (= lambda!382773 lambda!382742))))

(declare-fun bs!1809814 () Bool)

(assert (= bs!1809814 (and b!6792497 b!6792505)))

(assert (=> bs!1809814 (not (= lambda!382773 lambda!382771))))

(declare-fun bs!1809815 () Bool)

(assert (= bs!1809815 (and b!6792497 d!2133958)))

(assert (=> bs!1809815 (not (= lambda!382773 lambda!382732))))

(declare-fun bs!1809816 () Bool)

(assert (= bs!1809816 (and b!6792497 b!6792048)))

(assert (=> bs!1809816 (not (= lambda!382773 lambda!382744))))

(declare-fun bs!1809817 () Bool)

(assert (= bs!1809817 (and b!6792497 b!6791842)))

(assert (=> bs!1809817 (not (= lambda!382773 lambda!382726))))

(declare-fun bs!1809818 () Bool)

(assert (= bs!1809818 (and b!6792497 b!6791299)))

(assert (=> bs!1809818 (= (and (= (regOne!33738 (regTwo!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33738 (regTwo!33739 r!7292)) r!7292)) (= lambda!382773 lambda!382658))))

(declare-fun bs!1809819 () Bool)

(assert (= bs!1809819 (and b!6792497 b!6792040)))

(assert (=> bs!1809819 (= (and (= (regOne!33738 (regTwo!33739 r!7292)) (regOne!33738 r!7292)) (= (regTwo!33738 (regTwo!33739 r!7292)) (regTwo!33738 r!7292))) (= lambda!382773 lambda!382745))))

(assert (=> bs!1809815 (= (and (= (regOne!33738 (regTwo!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33738 (regTwo!33739 r!7292)) r!7292)) (= lambda!382773 lambda!382733))))

(assert (=> bs!1809818 (not (= lambda!382773 lambda!382656))))

(assert (=> bs!1809818 (not (= lambda!382773 lambda!382657))))

(declare-fun bs!1809820 () Bool)

(assert (= bs!1809820 (and b!6792497 b!6791834)))

(assert (=> bs!1809820 (= (and (= (regOne!33738 (regTwo!33739 r!7292)) (regOne!33738 lt!2446525)) (= (regTwo!33738 (regTwo!33739 r!7292)) (regTwo!33738 lt!2446525))) (= lambda!382773 lambda!382727))))

(assert (=> bs!1809812 (not (= lambda!382773 lambda!382739))))

(assert (=> b!6792497 true))

(assert (=> b!6792497 true))

(declare-fun b!6792495 () Bool)

(declare-fun e!4099736 () Bool)

(declare-fun e!4099730 () Bool)

(assert (=> b!6792495 (= e!4099736 e!4099730)))

(declare-fun res!2776107 () Bool)

(assert (=> b!6792495 (= res!2776107 (matchRSpec!3714 (regOne!33739 (regTwo!33739 r!7292)) s!2326))))

(assert (=> b!6792495 (=> res!2776107 e!4099730)))

(declare-fun b!6792496 () Bool)

(declare-fun e!4099731 () Bool)

(declare-fun e!4099734 () Bool)

(assert (=> b!6792496 (= e!4099731 e!4099734)))

(declare-fun res!2776105 () Bool)

(assert (=> b!6792496 (= res!2776105 (not ((_ is EmptyLang!16613) (regTwo!33739 r!7292))))))

(assert (=> b!6792496 (=> (not res!2776105) (not e!4099734))))

(declare-fun e!4099735 () Bool)

(declare-fun call!616798 () Bool)

(assert (=> b!6792497 (= e!4099735 call!616798)))

(declare-fun bm!616793 () Bool)

(declare-fun call!616799 () Bool)

(assert (=> bm!616793 (= call!616799 (isEmpty!38385 s!2326))))

(declare-fun b!6792498 () Bool)

(declare-fun c!1262539 () Bool)

(assert (=> b!6792498 (= c!1262539 ((_ is Union!16613) (regTwo!33739 r!7292)))))

(declare-fun e!4099732 () Bool)

(assert (=> b!6792498 (= e!4099732 e!4099736)))

(declare-fun b!6792499 () Bool)

(assert (=> b!6792499 (= e!4099730 (matchRSpec!3714 (regTwo!33739 (regTwo!33739 r!7292)) s!2326))))

(declare-fun b!6792500 () Bool)

(declare-fun c!1262540 () Bool)

(assert (=> b!6792500 (= c!1262540 ((_ is ElementMatch!16613) (regTwo!33739 r!7292)))))

(assert (=> b!6792500 (= e!4099734 e!4099732)))

(declare-fun b!6792501 () Bool)

(assert (=> b!6792501 (= e!4099731 call!616799)))

(declare-fun bm!616794 () Bool)

(declare-fun c!1262537 () Bool)

(assert (=> bm!616794 (= call!616798 (Exists!3681 (ite c!1262537 lambda!382771 lambda!382773)))))

(declare-fun b!6792503 () Bool)

(declare-fun res!2776106 () Bool)

(declare-fun e!4099733 () Bool)

(assert (=> b!6792503 (=> res!2776106 e!4099733)))

(assert (=> b!6792503 (= res!2776106 call!616799)))

(assert (=> b!6792503 (= e!4099735 e!4099733)))

(declare-fun b!6792502 () Bool)

(assert (=> b!6792502 (= e!4099732 (= s!2326 (Cons!66015 (c!1262203 (regTwo!33739 r!7292)) Nil!66015)))))

(declare-fun d!2134150 () Bool)

(declare-fun c!1262538 () Bool)

(assert (=> d!2134150 (= c!1262538 ((_ is EmptyExpr!16613) (regTwo!33739 r!7292)))))

(assert (=> d!2134150 (= (matchRSpec!3714 (regTwo!33739 r!7292) s!2326) e!4099731)))

(declare-fun b!6792504 () Bool)

(assert (=> b!6792504 (= e!4099736 e!4099735)))

(assert (=> b!6792504 (= c!1262537 ((_ is Star!16613) (regTwo!33739 r!7292)))))

(assert (=> b!6792505 (= e!4099733 call!616798)))

(assert (= (and d!2134150 c!1262538) b!6792501))

(assert (= (and d!2134150 (not c!1262538)) b!6792496))

(assert (= (and b!6792496 res!2776105) b!6792500))

(assert (= (and b!6792500 c!1262540) b!6792502))

(assert (= (and b!6792500 (not c!1262540)) b!6792498))

(assert (= (and b!6792498 c!1262539) b!6792495))

(assert (= (and b!6792498 (not c!1262539)) b!6792504))

(assert (= (and b!6792495 (not res!2776107)) b!6792499))

(assert (= (and b!6792504 c!1262537) b!6792503))

(assert (= (and b!6792504 (not c!1262537)) b!6792497))

(assert (= (and b!6792503 (not res!2776106)) b!6792505))

(assert (= (or b!6792505 b!6792497) bm!616794))

(assert (= (or b!6792501 b!6792503) bm!616793))

(declare-fun m!7539762 () Bool)

(assert (=> b!6792495 m!7539762))

(assert (=> bm!616793 m!7538676))

(declare-fun m!7539764 () Bool)

(assert (=> b!6792499 m!7539764))

(declare-fun m!7539766 () Bool)

(assert (=> bm!616794 m!7539766))

(assert (=> b!6792042 d!2134150))

(declare-fun b!6792531 () Bool)

(declare-fun e!4099759 () Bool)

(declare-fun e!4099758 () Bool)

(assert (=> b!6792531 (= e!4099759 e!4099758)))

(declare-fun res!2776115 () Bool)

(assert (=> b!6792531 (=> (not res!2776115) (not e!4099758))))

(declare-fun lt!2446682 () Bool)

(assert (=> b!6792531 (= res!2776115 (not lt!2446682))))

(declare-fun b!6792532 () Bool)

(declare-fun e!4099753 () Bool)

(assert (=> b!6792532 (= e!4099753 (not lt!2446682))))

(declare-fun bm!616802 () Bool)

(declare-fun call!616807 () Bool)

(assert (=> bm!616802 (= call!616807 (isEmpty!38385 (_1!36891 (get!22988 lt!2446650))))))

(declare-fun b!6792533 () Bool)

(declare-fun res!2776118 () Bool)

(declare-fun e!4099754 () Bool)

(assert (=> b!6792533 (=> (not res!2776118) (not e!4099754))))

(assert (=> b!6792533 (= res!2776118 (isEmpty!38385 (tail!12723 (_1!36891 (get!22988 lt!2446650)))))))

(declare-fun b!6792534 () Bool)

(declare-fun e!4099757 () Bool)

(assert (=> b!6792534 (= e!4099758 e!4099757)))

(declare-fun res!2776117 () Bool)

(assert (=> b!6792534 (=> res!2776117 e!4099757)))

(assert (=> b!6792534 (= res!2776117 call!616807)))

(declare-fun d!2134168 () Bool)

(declare-fun e!4099755 () Bool)

(assert (=> d!2134168 e!4099755))

(declare-fun c!1262552 () Bool)

(assert (=> d!2134168 (= c!1262552 ((_ is EmptyExpr!16613) (reg!16942 r!7292)))))

(declare-fun e!4099756 () Bool)

(assert (=> d!2134168 (= lt!2446682 e!4099756)))

(declare-fun c!1262551 () Bool)

(assert (=> d!2134168 (= c!1262551 (isEmpty!38385 (_1!36891 (get!22988 lt!2446650))))))

(assert (=> d!2134168 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2134168 (= (matchR!8796 (reg!16942 r!7292) (_1!36891 (get!22988 lt!2446650))) lt!2446682)))

(declare-fun b!6792535 () Bool)

(declare-fun res!2776121 () Bool)

(assert (=> b!6792535 (=> res!2776121 e!4099759)))

(assert (=> b!6792535 (= res!2776121 e!4099754)))

(declare-fun res!2776116 () Bool)

(assert (=> b!6792535 (=> (not res!2776116) (not e!4099754))))

(assert (=> b!6792535 (= res!2776116 lt!2446682)))

(declare-fun b!6792536 () Bool)

(assert (=> b!6792536 (= e!4099754 (= (head!13638 (_1!36891 (get!22988 lt!2446650))) (c!1262203 (reg!16942 r!7292))))))

(declare-fun b!6792537 () Bool)

(declare-fun res!2776119 () Bool)

(assert (=> b!6792537 (=> res!2776119 e!4099757)))

(assert (=> b!6792537 (= res!2776119 (not (isEmpty!38385 (tail!12723 (_1!36891 (get!22988 lt!2446650))))))))

(declare-fun b!6792538 () Bool)

(declare-fun res!2776122 () Bool)

(assert (=> b!6792538 (=> res!2776122 e!4099759)))

(assert (=> b!6792538 (= res!2776122 (not ((_ is ElementMatch!16613) (reg!16942 r!7292))))))

(assert (=> b!6792538 (= e!4099753 e!4099759)))

(declare-fun b!6792539 () Bool)

(assert (=> b!6792539 (= e!4099755 e!4099753)))

(declare-fun c!1262550 () Bool)

(assert (=> b!6792539 (= c!1262550 ((_ is EmptyLang!16613) (reg!16942 r!7292)))))

(declare-fun b!6792540 () Bool)

(assert (=> b!6792540 (= e!4099755 (= lt!2446682 call!616807))))

(declare-fun b!6792541 () Bool)

(assert (=> b!6792541 (= e!4099756 (matchR!8796 (derivativeStep!5277 (reg!16942 r!7292) (head!13638 (_1!36891 (get!22988 lt!2446650)))) (tail!12723 (_1!36891 (get!22988 lt!2446650)))))))

(declare-fun b!6792542 () Bool)

(assert (=> b!6792542 (= e!4099757 (not (= (head!13638 (_1!36891 (get!22988 lt!2446650))) (c!1262203 (reg!16942 r!7292)))))))

(declare-fun b!6792543 () Bool)

(assert (=> b!6792543 (= e!4099756 (nullable!6592 (reg!16942 r!7292)))))

(declare-fun b!6792544 () Bool)

(declare-fun res!2776120 () Bool)

(assert (=> b!6792544 (=> (not res!2776120) (not e!4099754))))

(assert (=> b!6792544 (= res!2776120 (not call!616807))))

(assert (= (and d!2134168 c!1262551) b!6792543))

(assert (= (and d!2134168 (not c!1262551)) b!6792541))

(assert (= (and d!2134168 c!1262552) b!6792540))

(assert (= (and d!2134168 (not c!1262552)) b!6792539))

(assert (= (and b!6792539 c!1262550) b!6792532))

(assert (= (and b!6792539 (not c!1262550)) b!6792538))

(assert (= (and b!6792538 (not res!2776122)) b!6792535))

(assert (= (and b!6792535 res!2776116) b!6792544))

(assert (= (and b!6792544 res!2776120) b!6792533))

(assert (= (and b!6792533 res!2776118) b!6792536))

(assert (= (and b!6792535 (not res!2776121)) b!6792531))

(assert (= (and b!6792531 res!2776115) b!6792534))

(assert (= (and b!6792534 (not res!2776117)) b!6792537))

(assert (= (and b!6792537 (not res!2776119)) b!6792542))

(assert (= (or b!6792540 b!6792534 b!6792544) bm!616802))

(declare-fun m!7539782 () Bool)

(assert (=> b!6792536 m!7539782))

(assert (=> b!6792543 m!7539364))

(assert (=> b!6792541 m!7539782))

(assert (=> b!6792541 m!7539782))

(declare-fun m!7539784 () Bool)

(assert (=> b!6792541 m!7539784))

(declare-fun m!7539786 () Bool)

(assert (=> b!6792541 m!7539786))

(assert (=> b!6792541 m!7539784))

(assert (=> b!6792541 m!7539786))

(declare-fun m!7539788 () Bool)

(assert (=> b!6792541 m!7539788))

(assert (=> b!6792542 m!7539782))

(assert (=> b!6792537 m!7539786))

(assert (=> b!6792537 m!7539786))

(declare-fun m!7539790 () Bool)

(assert (=> b!6792537 m!7539790))

(declare-fun m!7539792 () Bool)

(assert (=> bm!616802 m!7539792))

(assert (=> d!2134168 m!7539792))

(assert (=> d!2134168 m!7539288))

(assert (=> b!6792533 m!7539786))

(assert (=> b!6792533 m!7539786))

(assert (=> b!6792533 m!7539790))

(assert (=> b!6792014 d!2134168))

(declare-fun d!2134188 () Bool)

(assert (=> d!2134188 (= (get!22988 lt!2446650) (v!52705 lt!2446650))))

(assert (=> b!6792014 d!2134188))

(assert (=> bs!1809612 d!2133948))

(declare-fun d!2134190 () Bool)

(assert (=> d!2134190 (= (head!13638 s!2326) (h!72463 s!2326))))

(assert (=> b!6792060 d!2134190))

(declare-fun b!6792569 () Bool)

(declare-fun e!4099777 () (InoxSet Context!11994))

(declare-fun call!616811 () (InoxSet Context!11994))

(declare-fun call!616813 () (InoxSet Context!11994))

(assert (=> b!6792569 (= e!4099777 ((_ map or) call!616811 call!616813))))

(declare-fun d!2134194 () Bool)

(declare-fun c!1262561 () Bool)

(assert (=> d!2134194 (= c!1262561 (and ((_ is ElementMatch!16613) (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (= (c!1262203 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (h!72463 s!2326))))))

(declare-fun e!4099775 () (InoxSet Context!11994))

(assert (=> d!2134194 (= (derivationStepZipperDown!1841 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292)))) (ite (or c!1262270 c!1262269) (Context!11995 Nil!66014) (Context!11995 call!616650)) (h!72463 s!2326)) e!4099775)))

(declare-fun bm!616804 () Bool)

(declare-fun call!616812 () List!66138)

(declare-fun call!616810 () List!66138)

(assert (=> bm!616804 (= call!616812 call!616810)))

(declare-fun b!6792570 () Bool)

(assert (=> b!6792570 (= e!4099775 (store ((as const (Array Context!11994 Bool)) false) (ite (or c!1262270 c!1262269) (Context!11995 Nil!66014) (Context!11995 call!616650)) true))))

(declare-fun b!6792571 () Bool)

(declare-fun e!4099774 () (InoxSet Context!11994))

(declare-fun call!616814 () (InoxSet Context!11994))

(assert (=> b!6792571 (= e!4099774 ((_ map or) call!616811 call!616814))))

(declare-fun bm!616805 () Bool)

(assert (=> bm!616805 (= call!616814 call!616813)))

(declare-fun c!1262560 () Bool)

(declare-fun b!6792572 () Bool)

(assert (=> b!6792572 (= c!1262560 ((_ is Star!16613) (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))))))

(declare-fun e!4099773 () (InoxSet Context!11994))

(declare-fun e!4099776 () (InoxSet Context!11994))

(assert (=> b!6792572 (= e!4099773 e!4099776)))

(declare-fun b!6792573 () Bool)

(declare-fun call!616809 () (InoxSet Context!11994))

(assert (=> b!6792573 (= e!4099773 call!616809)))

(declare-fun b!6792574 () Bool)

(assert (=> b!6792574 (= e!4099774 e!4099773)))

(declare-fun c!1262564 () Bool)

(assert (=> b!6792574 (= c!1262564 ((_ is Concat!25458) (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))))))

(declare-fun b!6792575 () Bool)

(assert (=> b!6792575 (= e!4099776 call!616809)))

(declare-fun b!6792576 () Bool)

(assert (=> b!6792576 (= e!4099775 e!4099777)))

(declare-fun c!1262563 () Bool)

(assert (=> b!6792576 (= c!1262563 ((_ is Union!16613) (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))))))

(declare-fun bm!616806 () Bool)

(assert (=> bm!616806 (= call!616809 call!616814)))

(declare-fun b!6792577 () Bool)

(assert (=> b!6792577 (= e!4099776 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792578 () Bool)

(declare-fun e!4099778 () Bool)

(assert (=> b!6792578 (= e!4099778 (nullable!6592 (regOne!33738 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292)))))))))

(declare-fun bm!616807 () Bool)

(assert (=> bm!616807 (= call!616811 (derivationStepZipperDown!1841 (ite c!1262563 (regOne!33739 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (regOne!33738 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292)))))) (ite c!1262563 (ite (or c!1262270 c!1262269) (Context!11995 Nil!66014) (Context!11995 call!616650)) (Context!11995 call!616810)) (h!72463 s!2326)))))

(declare-fun b!6792579 () Bool)

(declare-fun c!1262562 () Bool)

(assert (=> b!6792579 (= c!1262562 e!4099778)))

(declare-fun res!2776133 () Bool)

(assert (=> b!6792579 (=> (not res!2776133) (not e!4099778))))

(assert (=> b!6792579 (= res!2776133 ((_ is Concat!25458) (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))))))

(assert (=> b!6792579 (= e!4099777 e!4099774)))

(declare-fun bm!616808 () Bool)

(assert (=> bm!616808 (= call!616810 ($colon$colon!2422 (exprs!6497 (ite (or c!1262270 c!1262269) (Context!11995 Nil!66014) (Context!11995 call!616650))) (ite (or c!1262562 c!1262564) (regTwo!33738 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292)))))))))

(declare-fun bm!616809 () Bool)

(assert (=> bm!616809 (= call!616813 (derivationStepZipperDown!1841 (ite c!1262563 (regTwo!33739 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (ite c!1262562 (regTwo!33738 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (ite c!1262564 (regOne!33738 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292))))) (reg!16942 (ite c!1262270 (regTwo!33739 r!7292) (ite c!1262269 (regTwo!33738 r!7292) (ite c!1262271 (regOne!33738 r!7292) (reg!16942 r!7292)))))))) (ite (or c!1262563 c!1262562) (ite (or c!1262270 c!1262269) (Context!11995 Nil!66014) (Context!11995 call!616650)) (Context!11995 call!616812)) (h!72463 s!2326)))))

(assert (= (and d!2134194 c!1262561) b!6792570))

(assert (= (and d!2134194 (not c!1262561)) b!6792576))

(assert (= (and b!6792576 c!1262563) b!6792569))

(assert (= (and b!6792576 (not c!1262563)) b!6792579))

(assert (= (and b!6792579 res!2776133) b!6792578))

(assert (= (and b!6792579 c!1262562) b!6792571))

(assert (= (and b!6792579 (not c!1262562)) b!6792574))

(assert (= (and b!6792574 c!1262564) b!6792573))

(assert (= (and b!6792574 (not c!1262564)) b!6792572))

(assert (= (and b!6792572 c!1262560) b!6792575))

(assert (= (and b!6792572 (not c!1262560)) b!6792577))

(assert (= (or b!6792573 b!6792575) bm!616804))

(assert (= (or b!6792573 b!6792575) bm!616806))

(assert (= (or b!6792571 bm!616804) bm!616808))

(assert (= (or b!6792571 bm!616806) bm!616805))

(assert (= (or b!6792569 bm!616805) bm!616809))

(assert (= (or b!6792569 b!6792571) bm!616807))

(declare-fun m!7539806 () Bool)

(assert (=> bm!616807 m!7539806))

(declare-fun m!7539808 () Bool)

(assert (=> bm!616809 m!7539808))

(declare-fun m!7539810 () Bool)

(assert (=> b!6792578 m!7539810))

(declare-fun m!7539812 () Bool)

(assert (=> bm!616808 m!7539812))

(declare-fun m!7539814 () Bool)

(assert (=> b!6792570 m!7539814))

(assert (=> bm!616647 d!2134194))

(declare-fun d!2134196 () Bool)

(assert (=> d!2134196 true))

(declare-fun setRes!46509 () Bool)

(assert (=> d!2134196 setRes!46509))

(declare-fun condSetEmpty!46509 () Bool)

(declare-fun res!2776134 () (InoxSet Context!11994))

(assert (=> d!2134196 (= condSetEmpty!46509 (= res!2776134 ((as const (Array Context!11994 Bool)) false)))))

(assert (=> d!2134196 (= (choose!50600 lt!2446518 lambda!382659) res!2776134)))

(declare-fun setIsEmpty!46509 () Bool)

(assert (=> setIsEmpty!46509 setRes!46509))

(declare-fun e!4099779 () Bool)

(declare-fun setNonEmpty!46509 () Bool)

(declare-fun setElem!46509 () Context!11994)

(declare-fun tp!1860177 () Bool)

(assert (=> setNonEmpty!46509 (= setRes!46509 (and tp!1860177 (inv!84779 setElem!46509) e!4099779))))

(declare-fun setRest!46509 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46509 (= res!2776134 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46509 true) setRest!46509))))

(declare-fun b!6792580 () Bool)

(declare-fun tp!1860176 () Bool)

(assert (=> b!6792580 (= e!4099779 tp!1860176)))

(assert (= (and d!2134196 condSetEmpty!46509) setIsEmpty!46509))

(assert (= (and d!2134196 (not condSetEmpty!46509)) setNonEmpty!46509))

(assert (= setNonEmpty!46509 b!6792580))

(declare-fun m!7539834 () Bool)

(assert (=> setNonEmpty!46509 m!7539834))

(assert (=> d!2133978 d!2134196))

(declare-fun d!2134200 () Bool)

(assert (=> d!2134200 (= (isEmpty!38388 (unfocusZipperList!2034 zl!343)) ((_ is Nil!66014) (unfocusZipperList!2034 zl!343)))))

(assert (=> b!6791344 d!2134200))

(declare-fun b!6792590 () Bool)

(declare-fun e!4099787 () (InoxSet Context!11994))

(assert (=> b!6792590 (= e!4099787 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792591 () Bool)

(declare-fun e!4099788 () (InoxSet Context!11994))

(assert (=> b!6792591 (= e!4099788 e!4099787)))

(declare-fun c!1262567 () Bool)

(assert (=> b!6792591 (= c!1262567 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))))))))

(declare-fun call!616818 () (InoxSet Context!11994))

(declare-fun b!6792592 () Bool)

(assert (=> b!6792592 (= e!4099788 ((_ map or) call!616818 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343))))))) (h!72463 s!2326))))))

(declare-fun b!6792593 () Bool)

(declare-fun e!4099789 () Bool)

(assert (=> b!6792593 (= e!4099789 (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343))))))))))

(declare-fun b!6792594 () Bool)

(assert (=> b!6792594 (= e!4099787 call!616818)))

(declare-fun d!2134204 () Bool)

(declare-fun c!1262568 () Bool)

(assert (=> d!2134204 (= c!1262568 e!4099789)))

(declare-fun res!2776140 () Bool)

(assert (=> d!2134204 (=> (not res!2776140) (not e!4099789))))

(assert (=> d!2134204 (= res!2776140 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))))))))

(assert (=> d!2134204 (= (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) (h!72463 s!2326)) e!4099788)))

(declare-fun bm!616813 () Bool)

(assert (=> bm!616813 (= call!616818 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343))))))) (h!72463 s!2326)))))

(assert (= (and d!2134204 res!2776140) b!6792593))

(assert (= (and d!2134204 c!1262568) b!6792592))

(assert (= (and d!2134204 (not c!1262568)) b!6792591))

(assert (= (and b!6792591 c!1262567) b!6792594))

(assert (= (and b!6792591 (not c!1262567)) b!6792590))

(assert (= (or b!6792592 b!6792594) bm!616813))

(declare-fun m!7539838 () Bool)

(assert (=> b!6792592 m!7539838))

(declare-fun m!7539842 () Bool)

(assert (=> b!6792593 m!7539842))

(declare-fun m!7539846 () Bool)

(assert (=> bm!616813 m!7539846))

(assert (=> b!6791968 d!2134204))

(declare-fun d!2134208 () Bool)

(assert (=> d!2134208 (= (Exists!3681 (ite c!1262413 lambda!382744 lambda!382745)) (choose!50606 (ite c!1262413 lambda!382744 lambda!382745)))))

(declare-fun bs!1809848 () Bool)

(assert (= bs!1809848 d!2134208))

(declare-fun m!7539848 () Bool)

(assert (=> bs!1809848 m!7539848))

(assert (=> bm!616702 d!2134208))

(declare-fun d!2134210 () Bool)

(declare-fun res!2776148 () Bool)

(declare-fun e!4099803 () Bool)

(assert (=> d!2134210 (=> res!2776148 e!4099803)))

(assert (=> d!2134210 (= res!2776148 ((_ is Nil!66014) (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511)))))

(assert (=> d!2134210 (= (forall!15805 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511) lambda!382661) e!4099803)))

(declare-fun b!6792604 () Bool)

(declare-fun e!4099804 () Bool)

(assert (=> b!6792604 (= e!4099803 e!4099804)))

(declare-fun res!2776149 () Bool)

(assert (=> b!6792604 (=> (not res!2776149) (not e!4099804))))

(declare-fun dynLambda!26352 (Int Regex!16613) Bool)

(assert (=> b!6792604 (= res!2776149 (dynLambda!26352 lambda!382661 (h!72462 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511))))))

(declare-fun b!6792605 () Bool)

(assert (=> b!6792605 (= e!4099804 (forall!15805 (t!379861 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511)) lambda!382661))))

(assert (= (and d!2134210 (not res!2776148)) b!6792604))

(assert (= (and b!6792604 res!2776149) b!6792605))

(declare-fun b_lambda!255849 () Bool)

(assert (=> (not b_lambda!255849) (not b!6792604)))

(declare-fun m!7539868 () Bool)

(assert (=> b!6792604 m!7539868))

(declare-fun m!7539870 () Bool)

(assert (=> b!6792605 m!7539870))

(assert (=> d!2133816 d!2134210))

(assert (=> d!2133816 d!2133828))

(declare-fun d!2134222 () Bool)

(assert (=> d!2134222 (forall!15805 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511) lambda!382661)))

(assert (=> d!2134222 true))

(declare-fun _$78!393 () Unit!159917)

(assert (=> d!2134222 (= (choose!50597 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511 lambda!382661) _$78!393)))

(declare-fun bs!1809855 () Bool)

(assert (= bs!1809855 d!2134222))

(assert (=> bs!1809855 m!7538726))

(assert (=> bs!1809855 m!7538726))

(assert (=> bs!1809855 m!7538928))

(assert (=> d!2133816 d!2134222))

(declare-fun d!2134226 () Bool)

(declare-fun res!2776152 () Bool)

(declare-fun e!4099807 () Bool)

(assert (=> d!2134226 (=> res!2776152 e!4099807)))

(assert (=> d!2134226 (= res!2776152 ((_ is Nil!66014) (Cons!66014 (reg!16942 r!7292) Nil!66014)))))

(assert (=> d!2134226 (= (forall!15805 (Cons!66014 (reg!16942 r!7292) Nil!66014) lambda!382661) e!4099807)))

(declare-fun b!6792618 () Bool)

(declare-fun e!4099808 () Bool)

(assert (=> b!6792618 (= e!4099807 e!4099808)))

(declare-fun res!2776153 () Bool)

(assert (=> b!6792618 (=> (not res!2776153) (not e!4099808))))

(assert (=> b!6792618 (= res!2776153 (dynLambda!26352 lambda!382661 (h!72462 (Cons!66014 (reg!16942 r!7292) Nil!66014))))))

(declare-fun b!6792619 () Bool)

(assert (=> b!6792619 (= e!4099808 (forall!15805 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014)) lambda!382661))))

(assert (= (and d!2134226 (not res!2776152)) b!6792618))

(assert (= (and b!6792618 res!2776153) b!6792619))

(declare-fun b_lambda!255853 () Bool)

(assert (=> (not b_lambda!255853) (not b!6792618)))

(declare-fun m!7539886 () Bool)

(assert (=> b!6792618 m!7539886))

(declare-fun m!7539888 () Bool)

(assert (=> b!6792619 m!7539888))

(assert (=> d!2133816 d!2134226))

(assert (=> b!6791929 d!2134190))

(declare-fun bs!1809856 () Bool)

(declare-fun d!2134230 () Bool)

(assert (= bs!1809856 (and d!2134230 d!2133858)))

(declare-fun lambda!382777 () Int)

(assert (=> bs!1809856 (= lambda!382777 lambda!382690)))

(declare-fun bs!1809857 () Bool)

(assert (= bs!1809857 (and d!2134230 d!2133890)))

(assert (=> bs!1809857 (= lambda!382777 lambda!382704)))

(declare-fun bs!1809858 () Bool)

(assert (= bs!1809858 (and d!2134230 d!2133774)))

(assert (=> bs!1809858 (= lambda!382777 lambda!382664)))

(declare-fun bs!1809859 () Bool)

(assert (= bs!1809859 (and d!2134230 d!2133974)))

(assert (=> bs!1809859 (= lambda!382777 lambda!382743)))

(declare-fun bs!1809860 () Bool)

(assert (= bs!1809860 (and d!2134230 d!2133910)))

(assert (=> bs!1809860 (= lambda!382777 lambda!382705)))

(declare-fun bs!1809861 () Bool)

(assert (= bs!1809861 (and d!2134230 d!2133778)))

(assert (=> bs!1809861 (= lambda!382777 lambda!382667)))

(declare-fun bs!1809862 () Bool)

(assert (= bs!1809862 (and d!2134230 d!2134128)))

(assert (=> bs!1809862 (= lambda!382777 lambda!382763)))

(declare-fun bs!1809863 () Bool)

(assert (= bs!1809863 (and d!2134230 b!6791309)))

(assert (=> bs!1809863 (= lambda!382777 lambda!382661)))

(assert (=> d!2134230 (= (inv!84779 (h!72464 (t!379863 zl!343))) (forall!15805 (exprs!6497 (h!72464 (t!379863 zl!343))) lambda!382777))))

(declare-fun bs!1809864 () Bool)

(assert (= bs!1809864 d!2134230))

(declare-fun m!7539890 () Bool)

(assert (=> bs!1809864 m!7539890))

(assert (=> b!6792142 d!2134230))

(declare-fun d!2134232 () Bool)

(declare-fun res!2776160 () Bool)

(declare-fun e!4099816 () Bool)

(assert (=> d!2134232 (=> res!2776160 e!4099816)))

(assert (=> d!2134232 (= res!2776160 ((_ is Nil!66016) lt!2446550))))

(assert (=> d!2134232 (= (noDuplicate!2397 lt!2446550) e!4099816)))

(declare-fun b!6792628 () Bool)

(declare-fun e!4099817 () Bool)

(assert (=> b!6792628 (= e!4099816 e!4099817)))

(declare-fun res!2776161 () Bool)

(assert (=> b!6792628 (=> (not res!2776161) (not e!4099817))))

(declare-fun contains!20291 (List!66140 Context!11994) Bool)

(assert (=> b!6792628 (= res!2776161 (not (contains!20291 (t!379863 lt!2446550) (h!72464 lt!2446550))))))

(declare-fun b!6792629 () Bool)

(assert (=> b!6792629 (= e!4099817 (noDuplicate!2397 (t!379863 lt!2446550)))))

(assert (= (and d!2134232 (not res!2776160)) b!6792628))

(assert (= (and b!6792628 res!2776161) b!6792629))

(declare-fun m!7539904 () Bool)

(assert (=> b!6792628 m!7539904))

(declare-fun m!7539906 () Bool)

(assert (=> b!6792629 m!7539906))

(assert (=> d!2133782 d!2134232))

(declare-fun d!2134242 () Bool)

(declare-fun e!4099829 () Bool)

(assert (=> d!2134242 e!4099829))

(declare-fun res!2776166 () Bool)

(assert (=> d!2134242 (=> (not res!2776166) (not e!4099829))))

(declare-fun res!2776167 () List!66140)

(assert (=> d!2134242 (= res!2776166 (noDuplicate!2397 res!2776167))))

(declare-fun e!4099827 () Bool)

(assert (=> d!2134242 e!4099827))

(assert (=> d!2134242 (= (choose!50594 z!1189) res!2776167)))

(declare-fun b!6792643 () Bool)

(declare-fun e!4099828 () Bool)

(declare-fun tp!1860183 () Bool)

(assert (=> b!6792643 (= e!4099828 tp!1860183)))

(declare-fun tp!1860182 () Bool)

(declare-fun b!6792642 () Bool)

(assert (=> b!6792642 (= e!4099827 (and (inv!84779 (h!72464 res!2776167)) e!4099828 tp!1860182))))

(declare-fun b!6792644 () Bool)

(assert (=> b!6792644 (= e!4099829 (= (content!12873 res!2776167) z!1189))))

(assert (= b!6792642 b!6792643))

(assert (= (and d!2134242 ((_ is Cons!66016) res!2776167)) b!6792642))

(assert (= (and d!2134242 res!2776166) b!6792644))

(declare-fun m!7539912 () Bool)

(assert (=> d!2134242 m!7539912))

(declare-fun m!7539914 () Bool)

(assert (=> b!6792642 m!7539914))

(declare-fun m!7539916 () Bool)

(assert (=> b!6792644 m!7539916))

(assert (=> d!2133782 d!2134242))

(declare-fun bs!1809873 () Bool)

(declare-fun d!2134246 () Bool)

(assert (= bs!1809873 (and d!2134246 d!2133858)))

(declare-fun lambda!382779 () Int)

(assert (=> bs!1809873 (= lambda!382779 lambda!382690)))

(declare-fun bs!1809874 () Bool)

(assert (= bs!1809874 (and d!2134246 d!2133890)))

(assert (=> bs!1809874 (= lambda!382779 lambda!382704)))

(declare-fun bs!1809875 () Bool)

(assert (= bs!1809875 (and d!2134246 d!2133774)))

(assert (=> bs!1809875 (= lambda!382779 lambda!382664)))

(declare-fun bs!1809876 () Bool)

(assert (= bs!1809876 (and d!2134246 d!2133974)))

(assert (=> bs!1809876 (= lambda!382779 lambda!382743)))

(declare-fun bs!1809877 () Bool)

(assert (= bs!1809877 (and d!2134246 d!2133910)))

(assert (=> bs!1809877 (= lambda!382779 lambda!382705)))

(declare-fun bs!1809878 () Bool)

(assert (= bs!1809878 (and d!2134246 d!2134128)))

(assert (=> bs!1809878 (= lambda!382779 lambda!382763)))

(declare-fun bs!1809879 () Bool)

(assert (= bs!1809879 (and d!2134246 b!6791309)))

(assert (=> bs!1809879 (= lambda!382779 lambda!382661)))

(declare-fun bs!1809880 () Bool)

(assert (= bs!1809880 (and d!2134246 d!2133778)))

(assert (=> bs!1809880 (= lambda!382779 lambda!382667)))

(declare-fun bs!1809881 () Bool)

(assert (= bs!1809881 (and d!2134246 d!2134230)))

(assert (=> bs!1809881 (= lambda!382779 lambda!382777)))

(declare-fun b!6792645 () Bool)

(declare-fun e!4099830 () Regex!16613)

(assert (=> b!6792645 (= e!4099830 EmptyExpr!16613)))

(declare-fun b!6792646 () Bool)

(assert (=> b!6792646 (= e!4099830 (Concat!25458 (h!72462 (t!379861 (exprs!6497 (h!72464 zl!343)))) (generalisedConcat!2210 (t!379861 (t!379861 (exprs!6497 (h!72464 zl!343)))))))))

(declare-fun b!6792647 () Bool)

(declare-fun e!4099831 () Bool)

(declare-fun lt!2446685 () Regex!16613)

(assert (=> b!6792647 (= e!4099831 (isEmptyExpr!1971 lt!2446685))))

(declare-fun b!6792649 () Bool)

(declare-fun e!4099832 () Bool)

(assert (=> b!6792649 (= e!4099832 (isEmpty!38388 (t!379861 (t!379861 (exprs!6497 (h!72464 zl!343))))))))

(declare-fun b!6792650 () Bool)

(declare-fun e!4099833 () Bool)

(assert (=> b!6792650 (= e!4099833 e!4099831)))

(declare-fun c!1262582 () Bool)

(assert (=> b!6792650 (= c!1262582 (isEmpty!38388 (t!379861 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6792653 () Bool)

(declare-fun e!4099835 () Bool)

(assert (=> b!6792653 (= e!4099835 (= lt!2446685 (head!13637 (t!379861 (exprs!6497 (h!72464 zl!343))))))))

(declare-fun b!6792654 () Bool)

(declare-fun e!4099834 () Regex!16613)

(assert (=> b!6792654 (= e!4099834 (h!72462 (t!379861 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6792655 () Bool)

(assert (=> b!6792655 (= e!4099834 e!4099830)))

(declare-fun c!1262580 () Bool)

(assert (=> b!6792655 (= c!1262580 ((_ is Cons!66014) (t!379861 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6792656 () Bool)

(assert (=> b!6792656 (= e!4099831 e!4099835)))

(declare-fun c!1262579 () Bool)

(assert (=> b!6792656 (= c!1262579 (isEmpty!38388 (tail!12722 (t!379861 (exprs!6497 (h!72464 zl!343))))))))

(assert (=> d!2134246 e!4099833))

(declare-fun res!2776170 () Bool)

(assert (=> d!2134246 (=> (not res!2776170) (not e!4099833))))

(assert (=> d!2134246 (= res!2776170 (validRegex!8349 lt!2446685))))

(assert (=> d!2134246 (= lt!2446685 e!4099834)))

(declare-fun c!1262581 () Bool)

(assert (=> d!2134246 (= c!1262581 e!4099832)))

(declare-fun res!2776171 () Bool)

(assert (=> d!2134246 (=> (not res!2776171) (not e!4099832))))

(assert (=> d!2134246 (= res!2776171 ((_ is Cons!66014) (t!379861 (exprs!6497 (h!72464 zl!343)))))))

(assert (=> d!2134246 (forall!15805 (t!379861 (exprs!6497 (h!72464 zl!343))) lambda!382779)))

(assert (=> d!2134246 (= (generalisedConcat!2210 (t!379861 (exprs!6497 (h!72464 zl!343)))) lt!2446685)))

(declare-fun b!6792648 () Bool)

(assert (=> b!6792648 (= e!4099835 (isConcat!1494 lt!2446685))))

(assert (= (and d!2134246 res!2776171) b!6792649))

(assert (= (and d!2134246 c!1262581) b!6792654))

(assert (= (and d!2134246 (not c!1262581)) b!6792655))

(assert (= (and b!6792655 c!1262580) b!6792646))

(assert (= (and b!6792655 (not c!1262580)) b!6792645))

(assert (= (and d!2134246 res!2776170) b!6792650))

(assert (= (and b!6792650 c!1262582) b!6792647))

(assert (= (and b!6792650 (not c!1262582)) b!6792656))

(assert (= (and b!6792656 c!1262579) b!6792653))

(assert (= (and b!6792656 (not c!1262579)) b!6792648))

(declare-fun m!7539920 () Bool)

(assert (=> b!6792647 m!7539920))

(declare-fun m!7539922 () Bool)

(assert (=> b!6792653 m!7539922))

(declare-fun m!7539924 () Bool)

(assert (=> b!6792656 m!7539924))

(assert (=> b!6792656 m!7539924))

(declare-fun m!7539926 () Bool)

(assert (=> b!6792656 m!7539926))

(declare-fun m!7539928 () Bool)

(assert (=> d!2134246 m!7539928))

(declare-fun m!7539930 () Bool)

(assert (=> d!2134246 m!7539930))

(declare-fun m!7539932 () Bool)

(assert (=> b!6792649 m!7539932))

(declare-fun m!7539934 () Bool)

(assert (=> b!6792648 m!7539934))

(assert (=> b!6792650 m!7539148))

(declare-fun m!7539936 () Bool)

(assert (=> b!6792646 m!7539936))

(assert (=> b!6791761 d!2134246))

(declare-fun b!6792658 () Bool)

(declare-fun e!4099843 () (InoxSet Context!11994))

(declare-fun call!616827 () (InoxSet Context!11994))

(declare-fun call!616829 () (InoxSet Context!11994))

(assert (=> b!6792658 (= e!4099843 ((_ map or) call!616827 call!616829))))

(declare-fun d!2134250 () Bool)

(declare-fun c!1262584 () Bool)

(assert (=> d!2134250 (= c!1262584 (and ((_ is ElementMatch!16613) (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (= (c!1262203 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (h!72463 s!2326))))))

(declare-fun e!4099841 () (InoxSet Context!11994))

(assert (=> d!2134250 (= (derivationStepZipperDown!1841 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292))) (ite c!1262409 lt!2446529 (Context!11995 call!616700)) (h!72463 s!2326)) e!4099841)))

(declare-fun bm!616820 () Bool)

(declare-fun call!616828 () List!66138)

(declare-fun call!616826 () List!66138)

(assert (=> bm!616820 (= call!616828 call!616826)))

(declare-fun b!6792659 () Bool)

(assert (=> b!6792659 (= e!4099841 (store ((as const (Array Context!11994 Bool)) false) (ite c!1262409 lt!2446529 (Context!11995 call!616700)) true))))

(declare-fun b!6792660 () Bool)

(declare-fun e!4099840 () (InoxSet Context!11994))

(declare-fun call!616830 () (InoxSet Context!11994))

(assert (=> b!6792660 (= e!4099840 ((_ map or) call!616827 call!616830))))

(declare-fun bm!616821 () Bool)

(assert (=> bm!616821 (= call!616830 call!616829)))

(declare-fun b!6792661 () Bool)

(declare-fun c!1262583 () Bool)

(assert (=> b!6792661 (= c!1262583 ((_ is Star!16613) (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))))))

(declare-fun e!4099839 () (InoxSet Context!11994))

(declare-fun e!4099842 () (InoxSet Context!11994))

(assert (=> b!6792661 (= e!4099839 e!4099842)))

(declare-fun b!6792662 () Bool)

(declare-fun call!616825 () (InoxSet Context!11994))

(assert (=> b!6792662 (= e!4099839 call!616825)))

(declare-fun b!6792663 () Bool)

(assert (=> b!6792663 (= e!4099840 e!4099839)))

(declare-fun c!1262587 () Bool)

(assert (=> b!6792663 (= c!1262587 ((_ is Concat!25458) (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))))))

(declare-fun b!6792664 () Bool)

(assert (=> b!6792664 (= e!4099842 call!616825)))

(declare-fun b!6792665 () Bool)

(assert (=> b!6792665 (= e!4099841 e!4099843)))

(declare-fun c!1262586 () Bool)

(assert (=> b!6792665 (= c!1262586 ((_ is Union!16613) (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))))))

(declare-fun bm!616822 () Bool)

(assert (=> bm!616822 (= call!616825 call!616830)))

(declare-fun b!6792666 () Bool)

(assert (=> b!6792666 (= e!4099842 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792667 () Bool)

(declare-fun e!4099844 () Bool)

(assert (=> b!6792667 (= e!4099844 (nullable!6592 (regOne!33738 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292))))))))

(declare-fun bm!616823 () Bool)

(assert (=> bm!616823 (= call!616827 (derivationStepZipperDown!1841 (ite c!1262586 (regOne!33739 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (regOne!33738 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292))))) (ite c!1262586 (ite c!1262409 lt!2446529 (Context!11995 call!616700)) (Context!11995 call!616826)) (h!72463 s!2326)))))

(declare-fun b!6792668 () Bool)

(declare-fun c!1262585 () Bool)

(assert (=> b!6792668 (= c!1262585 e!4099844)))

(declare-fun res!2776173 () Bool)

(assert (=> b!6792668 (=> (not res!2776173) (not e!4099844))))

(assert (=> b!6792668 (= res!2776173 ((_ is Concat!25458) (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))))))

(assert (=> b!6792668 (= e!4099843 e!4099840)))

(declare-fun bm!616824 () Bool)

(assert (=> bm!616824 (= call!616826 ($colon$colon!2422 (exprs!6497 (ite c!1262409 lt!2446529 (Context!11995 call!616700))) (ite (or c!1262585 c!1262587) (regTwo!33738 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292))))))))

(declare-fun bm!616825 () Bool)

(assert (=> bm!616825 (= call!616829 (derivationStepZipperDown!1841 (ite c!1262586 (regTwo!33739 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (ite c!1262585 (regTwo!33738 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (ite c!1262587 (regOne!33738 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))) (reg!16942 (ite c!1262409 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292))))))) (ite (or c!1262586 c!1262585) (ite c!1262409 lt!2446529 (Context!11995 call!616700)) (Context!11995 call!616828)) (h!72463 s!2326)))))

(assert (= (and d!2134250 c!1262584) b!6792659))

(assert (= (and d!2134250 (not c!1262584)) b!6792665))

(assert (= (and b!6792665 c!1262586) b!6792658))

(assert (= (and b!6792665 (not c!1262586)) b!6792668))

(assert (= (and b!6792668 res!2776173) b!6792667))

(assert (= (and b!6792668 c!1262585) b!6792660))

(assert (= (and b!6792668 (not c!1262585)) b!6792663))

(assert (= (and b!6792663 c!1262587) b!6792662))

(assert (= (and b!6792663 (not c!1262587)) b!6792661))

(assert (= (and b!6792661 c!1262583) b!6792664))

(assert (= (and b!6792661 (not c!1262583)) b!6792666))

(assert (= (or b!6792662 b!6792664) bm!616820))

(assert (= (or b!6792662 b!6792664) bm!616822))

(assert (= (or b!6792660 bm!616820) bm!616824))

(assert (= (or b!6792660 bm!616822) bm!616821))

(assert (= (or b!6792658 bm!616821) bm!616825))

(assert (= (or b!6792658 b!6792660) bm!616823))

(declare-fun m!7539940 () Bool)

(assert (=> bm!616823 m!7539940))

(declare-fun m!7539942 () Bool)

(assert (=> bm!616825 m!7539942))

(declare-fun m!7539944 () Bool)

(assert (=> b!6792667 m!7539944))

(declare-fun m!7539946 () Bool)

(assert (=> bm!616824 m!7539946))

(declare-fun m!7539948 () Bool)

(assert (=> b!6792659 m!7539948))

(assert (=> bm!616697 d!2134250))

(declare-fun d!2134254 () Bool)

(assert (=> d!2134254 (= (isEmpty!38388 (exprs!6497 (h!72464 zl!343))) ((_ is Nil!66014) (exprs!6497 (h!72464 zl!343))))))

(assert (=> b!6791765 d!2134254))

(assert (=> d!2133864 d!2133886))

(declare-fun d!2134256 () Bool)

(assert (=> d!2134256 (= (flatMap!2094 lt!2446517 lambda!382659) (dynLambda!26350 lambda!382659 lt!2446529))))

(assert (=> d!2134256 true))

(declare-fun _$13!4237 () Unit!159917)

(assert (=> d!2134256 (= (choose!50599 lt!2446517 lt!2446529 lambda!382659) _$13!4237)))

(declare-fun b_lambda!255857 () Bool)

(assert (=> (not b_lambda!255857) (not d!2134256)))

(declare-fun bs!1809896 () Bool)

(assert (= bs!1809896 d!2134256))

(assert (=> bs!1809896 m!7538744))

(assert (=> bs!1809896 m!7539056))

(assert (=> d!2133864 d!2134256))

(declare-fun d!2134262 () Bool)

(assert (=> d!2134262 (= (isEmpty!38385 (tail!12723 s!2326)) ((_ is Nil!66015) (tail!12723 s!2326)))))

(assert (=> b!6792051 d!2134262))

(declare-fun d!2134264 () Bool)

(assert (=> d!2134264 (= (tail!12723 s!2326) (t!379862 s!2326))))

(assert (=> b!6792051 d!2134264))

(declare-fun b!6792681 () Bool)

(declare-fun res!2776175 () Bool)

(declare-fun e!4099851 () Bool)

(assert (=> b!6792681 (=> (not res!2776175) (not e!4099851))))

(declare-fun lt!2446686 () List!66138)

(assert (=> b!6792681 (= res!2776175 (= (size!40649 lt!2446686) (+ (size!40649 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014))) (size!40649 lt!2446511))))))

(declare-fun d!2134268 () Bool)

(assert (=> d!2134268 e!4099851))

(declare-fun res!2776174 () Bool)

(assert (=> d!2134268 (=> (not res!2776174) (not e!4099851))))

(assert (=> d!2134268 (= res!2776174 (= (content!12875 lt!2446686) ((_ map or) (content!12875 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014))) (content!12875 lt!2446511))))))

(declare-fun e!4099850 () List!66138)

(assert (=> d!2134268 (= lt!2446686 e!4099850)))

(declare-fun c!1262593 () Bool)

(assert (=> d!2134268 (= c!1262593 ((_ is Nil!66014) (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014))))))

(assert (=> d!2134268 (= (++!14771 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014)) lt!2446511) lt!2446686)))

(declare-fun b!6792680 () Bool)

(assert (=> b!6792680 (= e!4099850 (Cons!66014 (h!72462 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014))) (++!14771 (t!379861 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014))) lt!2446511)))))

(declare-fun b!6792682 () Bool)

(assert (=> b!6792682 (= e!4099851 (or (not (= lt!2446511 Nil!66014)) (= lt!2446686 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014)))))))

(declare-fun b!6792679 () Bool)

(assert (=> b!6792679 (= e!4099850 lt!2446511)))

(assert (= (and d!2134268 c!1262593) b!6792679))

(assert (= (and d!2134268 (not c!1262593)) b!6792680))

(assert (= (and d!2134268 res!2776174) b!6792681))

(assert (= (and b!6792681 res!2776175) b!6792682))

(declare-fun m!7539960 () Bool)

(assert (=> b!6792681 m!7539960))

(declare-fun m!7539962 () Bool)

(assert (=> b!6792681 m!7539962))

(assert (=> b!6792681 m!7539006))

(declare-fun m!7539964 () Bool)

(assert (=> d!2134268 m!7539964))

(declare-fun m!7539966 () Bool)

(assert (=> d!2134268 m!7539966))

(assert (=> d!2134268 m!7539012))

(declare-fun m!7539968 () Bool)

(assert (=> b!6792680 m!7539968))

(assert (=> b!6791630 d!2134268))

(declare-fun d!2134270 () Bool)

(assert (=> d!2134270 (= (flatMap!2094 z!1189 lambda!382686) (choose!50600 z!1189 lambda!382686))))

(declare-fun bs!1809897 () Bool)

(assert (= bs!1809897 d!2134270))

(declare-fun m!7539970 () Bool)

(assert (=> bs!1809897 m!7539970))

(assert (=> d!2133810 d!2134270))

(assert (=> b!6792055 d!2134262))

(assert (=> b!6792055 d!2134264))

(declare-fun d!2134272 () Bool)

(assert (=> d!2134272 (= (isDefined!13203 lt!2446650) (not (isEmpty!38389 lt!2446650)))))

(declare-fun bs!1809898 () Bool)

(assert (= bs!1809898 d!2134272))

(declare-fun m!7539972 () Bool)

(assert (=> bs!1809898 m!7539972))

(assert (=> b!6792009 d!2134272))

(declare-fun bs!1809900 () Bool)

(declare-fun b!6792693 () Bool)

(assert (= bs!1809900 (and b!6792693 d!2133960)))

(declare-fun lambda!382783 () Int)

(assert (=> bs!1809900 (not (= lambda!382783 lambda!382738))))

(declare-fun bs!1809901 () Bool)

(assert (= bs!1809901 (and b!6792693 d!2133972)))

(assert (=> bs!1809901 (not (= lambda!382783 lambda!382742))))

(declare-fun bs!1809902 () Bool)

(assert (= bs!1809902 (and b!6792693 b!6792505)))

(assert (=> bs!1809902 (= (and (= (reg!16942 (regOne!33739 r!7292)) (reg!16942 (regTwo!33739 r!7292))) (= (regOne!33739 r!7292) (regTwo!33739 r!7292))) (= lambda!382783 lambda!382771))))

(declare-fun bs!1809903 () Bool)

(assert (= bs!1809903 (and b!6792693 d!2133958)))

(assert (=> bs!1809903 (not (= lambda!382783 lambda!382732))))

(declare-fun bs!1809904 () Bool)

(assert (= bs!1809904 (and b!6792693 b!6792048)))

(assert (=> bs!1809904 (= (and (= (reg!16942 (regOne!33739 r!7292)) (reg!16942 r!7292)) (= (regOne!33739 r!7292) r!7292)) (= lambda!382783 lambda!382744))))

(declare-fun bs!1809905 () Bool)

(assert (= bs!1809905 (and b!6792693 b!6791842)))

(assert (=> bs!1809905 (= (and (= (reg!16942 (regOne!33739 r!7292)) (reg!16942 lt!2446525)) (= (regOne!33739 r!7292) lt!2446525)) (= lambda!382783 lambda!382726))))

(declare-fun bs!1809906 () Bool)

(assert (= bs!1809906 (and b!6792693 b!6791299)))

(assert (=> bs!1809906 (not (= lambda!382783 lambda!382658))))

(declare-fun bs!1809907 () Bool)

(assert (= bs!1809907 (and b!6792693 b!6792040)))

(assert (=> bs!1809907 (not (= lambda!382783 lambda!382745))))

(declare-fun bs!1809908 () Bool)

(assert (= bs!1809908 (and b!6792693 b!6792497)))

(assert (=> bs!1809908 (not (= lambda!382783 lambda!382773))))

(assert (=> bs!1809903 (not (= lambda!382783 lambda!382733))))

(assert (=> bs!1809906 (not (= lambda!382783 lambda!382656))))

(assert (=> bs!1809906 (= (and (= (reg!16942 (regOne!33739 r!7292)) (reg!16942 r!7292)) (= (regOne!33739 r!7292) r!7292)) (= lambda!382783 lambda!382657))))

(declare-fun bs!1809910 () Bool)

(assert (= bs!1809910 (and b!6792693 b!6791834)))

(assert (=> bs!1809910 (not (= lambda!382783 lambda!382727))))

(assert (=> bs!1809900 (= (and (= (reg!16942 (regOne!33739 r!7292)) (reg!16942 r!7292)) (= (regOne!33739 r!7292) (Star!16613 (reg!16942 r!7292)))) (= lambda!382783 lambda!382739))))

(assert (=> b!6792693 true))

(assert (=> b!6792693 true))

(declare-fun bs!1809911 () Bool)

(declare-fun b!6792685 () Bool)

(assert (= bs!1809911 (and b!6792685 d!2133960)))

(declare-fun lambda!382785 () Int)

(assert (=> bs!1809911 (not (= lambda!382785 lambda!382738))))

(declare-fun bs!1809912 () Bool)

(assert (= bs!1809912 (and b!6792685 d!2133972)))

(assert (=> bs!1809912 (not (= lambda!382785 lambda!382742))))

(declare-fun bs!1809913 () Bool)

(assert (= bs!1809913 (and b!6792685 b!6792505)))

(assert (=> bs!1809913 (not (= lambda!382785 lambda!382771))))

(declare-fun bs!1809915 () Bool)

(assert (= bs!1809915 (and b!6792685 d!2133958)))

(assert (=> bs!1809915 (not (= lambda!382785 lambda!382732))))

(declare-fun bs!1809917 () Bool)

(assert (= bs!1809917 (and b!6792685 b!6792048)))

(assert (=> bs!1809917 (not (= lambda!382785 lambda!382744))))

(declare-fun bs!1809920 () Bool)

(assert (= bs!1809920 (and b!6792685 b!6791842)))

(assert (=> bs!1809920 (not (= lambda!382785 lambda!382726))))

(declare-fun bs!1809923 () Bool)

(assert (= bs!1809923 (and b!6792685 b!6791299)))

(assert (=> bs!1809923 (= (and (= (regOne!33738 (regOne!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33738 (regOne!33739 r!7292)) r!7292)) (= lambda!382785 lambda!382658))))

(declare-fun bs!1809925 () Bool)

(assert (= bs!1809925 (and b!6792685 b!6792040)))

(assert (=> bs!1809925 (= (and (= (regOne!33738 (regOne!33739 r!7292)) (regOne!33738 r!7292)) (= (regTwo!33738 (regOne!33739 r!7292)) (regTwo!33738 r!7292))) (= lambda!382785 lambda!382745))))

(declare-fun bs!1809928 () Bool)

(assert (= bs!1809928 (and b!6792685 b!6792497)))

(assert (=> bs!1809928 (= (and (= (regOne!33738 (regOne!33739 r!7292)) (regOne!33738 (regTwo!33739 r!7292))) (= (regTwo!33738 (regOne!33739 r!7292)) (regTwo!33738 (regTwo!33739 r!7292)))) (= lambda!382785 lambda!382773))))

(assert (=> bs!1809915 (= (and (= (regOne!33738 (regOne!33739 r!7292)) (reg!16942 r!7292)) (= (regTwo!33738 (regOne!33739 r!7292)) r!7292)) (= lambda!382785 lambda!382733))))

(declare-fun bs!1809932 () Bool)

(assert (= bs!1809932 (and b!6792685 b!6792693)))

(assert (=> bs!1809932 (not (= lambda!382785 lambda!382783))))

(assert (=> bs!1809923 (not (= lambda!382785 lambda!382656))))

(assert (=> bs!1809923 (not (= lambda!382785 lambda!382657))))

(declare-fun bs!1809935 () Bool)

(assert (= bs!1809935 (and b!6792685 b!6791834)))

(assert (=> bs!1809935 (= (and (= (regOne!33738 (regOne!33739 r!7292)) (regOne!33738 lt!2446525)) (= (regTwo!33738 (regOne!33739 r!7292)) (regTwo!33738 lt!2446525))) (= lambda!382785 lambda!382727))))

(assert (=> bs!1809911 (not (= lambda!382785 lambda!382739))))

(assert (=> b!6792685 true))

(assert (=> b!6792685 true))

(declare-fun b!6792683 () Bool)

(declare-fun e!4099858 () Bool)

(declare-fun e!4099852 () Bool)

(assert (=> b!6792683 (= e!4099858 e!4099852)))

(declare-fun res!2776178 () Bool)

(assert (=> b!6792683 (= res!2776178 (matchRSpec!3714 (regOne!33739 (regOne!33739 r!7292)) s!2326))))

(assert (=> b!6792683 (=> res!2776178 e!4099852)))

(declare-fun b!6792684 () Bool)

(declare-fun e!4099853 () Bool)

(declare-fun e!4099856 () Bool)

(assert (=> b!6792684 (= e!4099853 e!4099856)))

(declare-fun res!2776176 () Bool)

(assert (=> b!6792684 (= res!2776176 (not ((_ is EmptyLang!16613) (regOne!33739 r!7292))))))

(assert (=> b!6792684 (=> (not res!2776176) (not e!4099856))))

(declare-fun e!4099857 () Bool)

(declare-fun call!616831 () Bool)

(assert (=> b!6792685 (= e!4099857 call!616831)))

(declare-fun bm!616826 () Bool)

(declare-fun call!616832 () Bool)

(assert (=> bm!616826 (= call!616832 (isEmpty!38385 s!2326))))

(declare-fun b!6792686 () Bool)

(declare-fun c!1262598 () Bool)

(assert (=> b!6792686 (= c!1262598 ((_ is Union!16613) (regOne!33739 r!7292)))))

(declare-fun e!4099854 () Bool)

(assert (=> b!6792686 (= e!4099854 e!4099858)))

(declare-fun b!6792687 () Bool)

(assert (=> b!6792687 (= e!4099852 (matchRSpec!3714 (regTwo!33739 (regOne!33739 r!7292)) s!2326))))

(declare-fun b!6792688 () Bool)

(declare-fun c!1262599 () Bool)

(assert (=> b!6792688 (= c!1262599 ((_ is ElementMatch!16613) (regOne!33739 r!7292)))))

(assert (=> b!6792688 (= e!4099856 e!4099854)))

(declare-fun b!6792689 () Bool)

(assert (=> b!6792689 (= e!4099853 call!616832)))

(declare-fun bm!616827 () Bool)

(declare-fun c!1262596 () Bool)

(assert (=> bm!616827 (= call!616831 (Exists!3681 (ite c!1262596 lambda!382783 lambda!382785)))))

(declare-fun b!6792691 () Bool)

(declare-fun res!2776177 () Bool)

(declare-fun e!4099855 () Bool)

(assert (=> b!6792691 (=> res!2776177 e!4099855)))

(assert (=> b!6792691 (= res!2776177 call!616832)))

(assert (=> b!6792691 (= e!4099857 e!4099855)))

(declare-fun b!6792690 () Bool)

(assert (=> b!6792690 (= e!4099854 (= s!2326 (Cons!66015 (c!1262203 (regOne!33739 r!7292)) Nil!66015)))))

(declare-fun d!2134274 () Bool)

(declare-fun c!1262597 () Bool)

(assert (=> d!2134274 (= c!1262597 ((_ is EmptyExpr!16613) (regOne!33739 r!7292)))))

(assert (=> d!2134274 (= (matchRSpec!3714 (regOne!33739 r!7292) s!2326) e!4099853)))

(declare-fun b!6792692 () Bool)

(assert (=> b!6792692 (= e!4099858 e!4099857)))

(assert (=> b!6792692 (= c!1262596 ((_ is Star!16613) (regOne!33739 r!7292)))))

(assert (=> b!6792693 (= e!4099855 call!616831)))

(assert (= (and d!2134274 c!1262597) b!6792689))

(assert (= (and d!2134274 (not c!1262597)) b!6792684))

(assert (= (and b!6792684 res!2776176) b!6792688))

(assert (= (and b!6792688 c!1262599) b!6792690))

(assert (= (and b!6792688 (not c!1262599)) b!6792686))

(assert (= (and b!6792686 c!1262598) b!6792683))

(assert (= (and b!6792686 (not c!1262598)) b!6792692))

(assert (= (and b!6792683 (not res!2776178)) b!6792687))

(assert (= (and b!6792692 c!1262596) b!6792691))

(assert (= (and b!6792692 (not c!1262596)) b!6792685))

(assert (= (and b!6792691 (not res!2776177)) b!6792693))

(assert (= (or b!6792693 b!6792685) bm!616827))

(assert (= (or b!6792689 b!6792691) bm!616826))

(declare-fun m!7540002 () Bool)

(assert (=> b!6792683 m!7540002))

(assert (=> bm!616826 m!7538676))

(declare-fun m!7540004 () Bool)

(assert (=> b!6792687 m!7540004))

(declare-fun m!7540006 () Bool)

(assert (=> bm!616827 m!7540006))

(assert (=> b!6792038 d!2134274))

(declare-fun d!2134286 () Bool)

(assert (=> d!2134286 (= ($colon$colon!2422 (exprs!6497 (Context!11995 Nil!66014)) (ite (or c!1262269 c!1262271) (regTwo!33738 r!7292) r!7292)) (Cons!66014 (ite (or c!1262269 c!1262271) (regTwo!33738 r!7292) r!7292) (exprs!6497 (Context!11995 Nil!66014))))))

(assert (=> bm!616646 d!2134286))

(declare-fun bs!1809952 () Bool)

(declare-fun b!6792725 () Bool)

(assert (= bs!1809952 (and b!6792725 d!2133960)))

(declare-fun lambda!382788 () Int)

(assert (=> bs!1809952 (not (= lambda!382788 lambda!382738))))

(declare-fun bs!1809953 () Bool)

(assert (= bs!1809953 (and b!6792725 d!2133972)))

(assert (=> bs!1809953 (not (= lambda!382788 lambda!382742))))

(declare-fun bs!1809954 () Bool)

(assert (= bs!1809954 (and b!6792725 b!6792505)))

(assert (=> bs!1809954 (= (and (= (reg!16942 (regTwo!33739 lt!2446525)) (reg!16942 (regTwo!33739 r!7292))) (= (regTwo!33739 lt!2446525) (regTwo!33739 r!7292))) (= lambda!382788 lambda!382771))))

(declare-fun bs!1809955 () Bool)

(assert (= bs!1809955 (and b!6792725 d!2133958)))

(assert (=> bs!1809955 (not (= lambda!382788 lambda!382732))))

(declare-fun bs!1809956 () Bool)

(assert (= bs!1809956 (and b!6792725 b!6792685)))

(assert (=> bs!1809956 (not (= lambda!382788 lambda!382785))))

(declare-fun bs!1809957 () Bool)

(assert (= bs!1809957 (and b!6792725 b!6792048)))

(assert (=> bs!1809957 (= (and (= (reg!16942 (regTwo!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33739 lt!2446525) r!7292)) (= lambda!382788 lambda!382744))))

(declare-fun bs!1809958 () Bool)

(assert (= bs!1809958 (and b!6792725 b!6791842)))

(assert (=> bs!1809958 (= (and (= (reg!16942 (regTwo!33739 lt!2446525)) (reg!16942 lt!2446525)) (= (regTwo!33739 lt!2446525) lt!2446525)) (= lambda!382788 lambda!382726))))

(declare-fun bs!1809959 () Bool)

(assert (= bs!1809959 (and b!6792725 b!6791299)))

(assert (=> bs!1809959 (not (= lambda!382788 lambda!382658))))

(declare-fun bs!1809960 () Bool)

(assert (= bs!1809960 (and b!6792725 b!6792040)))

(assert (=> bs!1809960 (not (= lambda!382788 lambda!382745))))

(declare-fun bs!1809961 () Bool)

(assert (= bs!1809961 (and b!6792725 b!6792497)))

(assert (=> bs!1809961 (not (= lambda!382788 lambda!382773))))

(assert (=> bs!1809955 (not (= lambda!382788 lambda!382733))))

(declare-fun bs!1809962 () Bool)

(assert (= bs!1809962 (and b!6792725 b!6792693)))

(assert (=> bs!1809962 (= (and (= (reg!16942 (regTwo!33739 lt!2446525)) (reg!16942 (regOne!33739 r!7292))) (= (regTwo!33739 lt!2446525) (regOne!33739 r!7292))) (= lambda!382788 lambda!382783))))

(assert (=> bs!1809959 (not (= lambda!382788 lambda!382656))))

(assert (=> bs!1809959 (= (and (= (reg!16942 (regTwo!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33739 lt!2446525) r!7292)) (= lambda!382788 lambda!382657))))

(declare-fun bs!1809963 () Bool)

(assert (= bs!1809963 (and b!6792725 b!6791834)))

(assert (=> bs!1809963 (not (= lambda!382788 lambda!382727))))

(assert (=> bs!1809952 (= (and (= (reg!16942 (regTwo!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33739 lt!2446525) (Star!16613 (reg!16942 r!7292)))) (= lambda!382788 lambda!382739))))

(assert (=> b!6792725 true))

(assert (=> b!6792725 true))

(declare-fun bs!1809964 () Bool)

(declare-fun b!6792717 () Bool)

(assert (= bs!1809964 (and b!6792717 d!2133960)))

(declare-fun lambda!382789 () Int)

(assert (=> bs!1809964 (not (= lambda!382789 lambda!382738))))

(declare-fun bs!1809965 () Bool)

(assert (= bs!1809965 (and b!6792717 d!2133972)))

(assert (=> bs!1809965 (not (= lambda!382789 lambda!382742))))

(declare-fun bs!1809966 () Bool)

(assert (= bs!1809966 (and b!6792717 b!6792505)))

(assert (=> bs!1809966 (not (= lambda!382789 lambda!382771))))

(declare-fun bs!1809967 () Bool)

(assert (= bs!1809967 (and b!6792717 d!2133958)))

(assert (=> bs!1809967 (not (= lambda!382789 lambda!382732))))

(declare-fun bs!1809968 () Bool)

(assert (= bs!1809968 (and b!6792717 b!6792685)))

(assert (=> bs!1809968 (= (and (= (regOne!33738 (regTwo!33739 lt!2446525)) (regOne!33738 (regOne!33739 r!7292))) (= (regTwo!33738 (regTwo!33739 lt!2446525)) (regTwo!33738 (regOne!33739 r!7292)))) (= lambda!382789 lambda!382785))))

(declare-fun bs!1809969 () Bool)

(assert (= bs!1809969 (and b!6792717 b!6792048)))

(assert (=> bs!1809969 (not (= lambda!382789 lambda!382744))))

(declare-fun bs!1809970 () Bool)

(assert (= bs!1809970 (and b!6792717 b!6791842)))

(assert (=> bs!1809970 (not (= lambda!382789 lambda!382726))))

(declare-fun bs!1809971 () Bool)

(assert (= bs!1809971 (and b!6792717 b!6791299)))

(assert (=> bs!1809971 (= (and (= (regOne!33738 (regTwo!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33738 (regTwo!33739 lt!2446525)) r!7292)) (= lambda!382789 lambda!382658))))

(declare-fun bs!1809972 () Bool)

(assert (= bs!1809972 (and b!6792717 b!6792497)))

(assert (=> bs!1809972 (= (and (= (regOne!33738 (regTwo!33739 lt!2446525)) (regOne!33738 (regTwo!33739 r!7292))) (= (regTwo!33738 (regTwo!33739 lt!2446525)) (regTwo!33738 (regTwo!33739 r!7292)))) (= lambda!382789 lambda!382773))))

(assert (=> bs!1809967 (= (and (= (regOne!33738 (regTwo!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33738 (regTwo!33739 lt!2446525)) r!7292)) (= lambda!382789 lambda!382733))))

(declare-fun bs!1809973 () Bool)

(assert (= bs!1809973 (and b!6792717 b!6792693)))

(assert (=> bs!1809973 (not (= lambda!382789 lambda!382783))))

(assert (=> bs!1809971 (not (= lambda!382789 lambda!382656))))

(assert (=> bs!1809971 (not (= lambda!382789 lambda!382657))))

(declare-fun bs!1809974 () Bool)

(assert (= bs!1809974 (and b!6792717 b!6792725)))

(assert (=> bs!1809974 (not (= lambda!382789 lambda!382788))))

(declare-fun bs!1809975 () Bool)

(assert (= bs!1809975 (and b!6792717 b!6792040)))

(assert (=> bs!1809975 (= (and (= (regOne!33738 (regTwo!33739 lt!2446525)) (regOne!33738 r!7292)) (= (regTwo!33738 (regTwo!33739 lt!2446525)) (regTwo!33738 r!7292))) (= lambda!382789 lambda!382745))))

(declare-fun bs!1809976 () Bool)

(assert (= bs!1809976 (and b!6792717 b!6791834)))

(assert (=> bs!1809976 (= (and (= (regOne!33738 (regTwo!33739 lt!2446525)) (regOne!33738 lt!2446525)) (= (regTwo!33738 (regTwo!33739 lt!2446525)) (regTwo!33738 lt!2446525))) (= lambda!382789 lambda!382727))))

(assert (=> bs!1809964 (not (= lambda!382789 lambda!382739))))

(assert (=> b!6792717 true))

(assert (=> b!6792717 true))

(declare-fun b!6792715 () Bool)

(declare-fun e!4099879 () Bool)

(declare-fun e!4099873 () Bool)

(assert (=> b!6792715 (= e!4099879 e!4099873)))

(declare-fun res!2776188 () Bool)

(assert (=> b!6792715 (= res!2776188 (matchRSpec!3714 (regOne!33739 (regTwo!33739 lt!2446525)) s!2326))))

(assert (=> b!6792715 (=> res!2776188 e!4099873)))

(declare-fun b!6792716 () Bool)

(declare-fun e!4099874 () Bool)

(declare-fun e!4099877 () Bool)

(assert (=> b!6792716 (= e!4099874 e!4099877)))

(declare-fun res!2776186 () Bool)

(assert (=> b!6792716 (= res!2776186 (not ((_ is EmptyLang!16613) (regTwo!33739 lt!2446525))))))

(assert (=> b!6792716 (=> (not res!2776186) (not e!4099877))))

(declare-fun e!4099878 () Bool)

(declare-fun call!616836 () Bool)

(assert (=> b!6792717 (= e!4099878 call!616836)))

(declare-fun bm!616831 () Bool)

(declare-fun call!616837 () Bool)

(assert (=> bm!616831 (= call!616837 (isEmpty!38385 s!2326))))

(declare-fun b!6792718 () Bool)

(declare-fun c!1262609 () Bool)

(assert (=> b!6792718 (= c!1262609 ((_ is Union!16613) (regTwo!33739 lt!2446525)))))

(declare-fun e!4099875 () Bool)

(assert (=> b!6792718 (= e!4099875 e!4099879)))

(declare-fun b!6792719 () Bool)

(assert (=> b!6792719 (= e!4099873 (matchRSpec!3714 (regTwo!33739 (regTwo!33739 lt!2446525)) s!2326))))

(declare-fun b!6792720 () Bool)

(declare-fun c!1262610 () Bool)

(assert (=> b!6792720 (= c!1262610 ((_ is ElementMatch!16613) (regTwo!33739 lt!2446525)))))

(assert (=> b!6792720 (= e!4099877 e!4099875)))

(declare-fun b!6792721 () Bool)

(assert (=> b!6792721 (= e!4099874 call!616837)))

(declare-fun c!1262607 () Bool)

(declare-fun bm!616832 () Bool)

(assert (=> bm!616832 (= call!616836 (Exists!3681 (ite c!1262607 lambda!382788 lambda!382789)))))

(declare-fun b!6792723 () Bool)

(declare-fun res!2776187 () Bool)

(declare-fun e!4099876 () Bool)

(assert (=> b!6792723 (=> res!2776187 e!4099876)))

(assert (=> b!6792723 (= res!2776187 call!616837)))

(assert (=> b!6792723 (= e!4099878 e!4099876)))

(declare-fun b!6792722 () Bool)

(assert (=> b!6792722 (= e!4099875 (= s!2326 (Cons!66015 (c!1262203 (regTwo!33739 lt!2446525)) Nil!66015)))))

(declare-fun d!2134288 () Bool)

(declare-fun c!1262608 () Bool)

(assert (=> d!2134288 (= c!1262608 ((_ is EmptyExpr!16613) (regTwo!33739 lt!2446525)))))

(assert (=> d!2134288 (= (matchRSpec!3714 (regTwo!33739 lt!2446525) s!2326) e!4099874)))

(declare-fun b!6792724 () Bool)

(assert (=> b!6792724 (= e!4099879 e!4099878)))

(assert (=> b!6792724 (= c!1262607 ((_ is Star!16613) (regTwo!33739 lt!2446525)))))

(assert (=> b!6792725 (= e!4099876 call!616836)))

(assert (= (and d!2134288 c!1262608) b!6792721))

(assert (= (and d!2134288 (not c!1262608)) b!6792716))

(assert (= (and b!6792716 res!2776186) b!6792720))

(assert (= (and b!6792720 c!1262610) b!6792722))

(assert (= (and b!6792720 (not c!1262610)) b!6792718))

(assert (= (and b!6792718 c!1262609) b!6792715))

(assert (= (and b!6792718 (not c!1262609)) b!6792724))

(assert (= (and b!6792715 (not res!2776188)) b!6792719))

(assert (= (and b!6792724 c!1262607) b!6792723))

(assert (= (and b!6792724 (not c!1262607)) b!6792717))

(assert (= (and b!6792723 (not res!2776187)) b!6792725))

(assert (= (or b!6792725 b!6792717) bm!616832))

(assert (= (or b!6792721 b!6792723) bm!616831))

(declare-fun m!7540030 () Bool)

(assert (=> b!6792715 m!7540030))

(assert (=> bm!616831 m!7538676))

(declare-fun m!7540032 () Bool)

(assert (=> b!6792719 m!7540032))

(declare-fun m!7540034 () Bool)

(assert (=> bm!616832 m!7540034))

(assert (=> b!6791836 d!2134288))

(declare-fun b!6792761 () Bool)

(declare-fun e!4099898 () (InoxSet Context!11994))

(assert (=> b!6792761 (= e!4099898 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792762 () Bool)

(declare-fun e!4099899 () (InoxSet Context!11994))

(assert (=> b!6792762 (= e!4099899 e!4099898)))

(declare-fun c!1262624 () Bool)

(assert (=> b!6792762 (= c!1262624 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524))))))))

(declare-fun b!6792763 () Bool)

(declare-fun call!616845 () (InoxSet Context!11994))

(assert (=> b!6792763 (= e!4099899 ((_ map or) call!616845 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524)))))) (h!72463 s!2326))))))

(declare-fun b!6792764 () Bool)

(declare-fun e!4099900 () Bool)

(assert (=> b!6792764 (= e!4099900 (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524)))))))))

(declare-fun b!6792765 () Bool)

(assert (=> b!6792765 (= e!4099898 call!616845)))

(declare-fun d!2134306 () Bool)

(declare-fun c!1262625 () Bool)

(assert (=> d!2134306 (= c!1262625 e!4099900)))

(declare-fun res!2776199 () Bool)

(assert (=> d!2134306 (=> (not res!2776199) (not e!4099900))))

(assert (=> d!2134306 (= res!2776199 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524))))))))

(assert (=> d!2134306 (= (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 lt!2446524))) (h!72463 s!2326)) e!4099899)))

(declare-fun bm!616840 () Bool)

(assert (=> bm!616840 (= call!616845 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524))))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524)))))) (h!72463 s!2326)))))

(assert (= (and d!2134306 res!2776199) b!6792764))

(assert (= (and d!2134306 c!1262625) b!6792763))

(assert (= (and d!2134306 (not c!1262625)) b!6792762))

(assert (= (and b!6792762 c!1262624) b!6792765))

(assert (= (and b!6792762 (not c!1262624)) b!6792761))

(assert (= (or b!6792763 b!6792765) bm!616840))

(declare-fun m!7540048 () Bool)

(assert (=> b!6792763 m!7540048))

(declare-fun m!7540050 () Bool)

(assert (=> b!6792764 m!7540050))

(declare-fun m!7540052 () Bool)

(assert (=> bm!616840 m!7540052))

(assert (=> b!6792035 d!2134306))

(declare-fun d!2134310 () Bool)

(assert (=> d!2134310 (= (isEmpty!38388 (tail!12722 (exprs!6497 (h!72464 zl!343)))) ((_ is Nil!66014) (tail!12722 (exprs!6497 (h!72464 zl!343)))))))

(assert (=> b!6791769 d!2134310))

(declare-fun d!2134312 () Bool)

(assert (=> d!2134312 (= (tail!12722 (exprs!6497 (h!72464 zl!343))) (t!379861 (exprs!6497 (h!72464 zl!343))))))

(assert (=> b!6791769 d!2134312))

(declare-fun d!2134316 () Bool)

(assert (=> d!2134316 (= (isUnion!1408 lt!2446544) ((_ is Union!16613) lt!2446544))))

(assert (=> b!6791340 d!2134316))

(declare-fun d!2134318 () Bool)

(assert (=> d!2134318 (= (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (nullableFct!2496 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))

(declare-fun bs!1809979 () Bool)

(assert (= bs!1809979 d!2134318))

(declare-fun m!7540062 () Bool)

(assert (=> bs!1809979 m!7540062))

(assert (=> b!6791540 d!2134318))

(declare-fun b!6792784 () Bool)

(declare-fun e!4099921 () Bool)

(declare-fun e!4099920 () Bool)

(assert (=> b!6792784 (= e!4099921 e!4099920)))

(declare-fun res!2776210 () Bool)

(assert (=> b!6792784 (=> (not res!2776210) (not e!4099920))))

(declare-fun lt!2446695 () Bool)

(assert (=> b!6792784 (= res!2776210 (not lt!2446695))))

(declare-fun b!6792785 () Bool)

(declare-fun e!4099915 () Bool)

(assert (=> b!6792785 (= e!4099915 (not lt!2446695))))

(declare-fun bm!616847 () Bool)

(declare-fun call!616852 () Bool)

(assert (=> bm!616847 (= call!616852 (isEmpty!38385 (tail!12723 s!2326)))))

(declare-fun b!6792786 () Bool)

(declare-fun res!2776213 () Bool)

(declare-fun e!4099916 () Bool)

(assert (=> b!6792786 (=> (not res!2776213) (not e!4099916))))

(assert (=> b!6792786 (= res!2776213 (isEmpty!38385 (tail!12723 (tail!12723 s!2326))))))

(declare-fun b!6792787 () Bool)

(declare-fun e!4099919 () Bool)

(assert (=> b!6792787 (= e!4099920 e!4099919)))

(declare-fun res!2776212 () Bool)

(assert (=> b!6792787 (=> res!2776212 e!4099919)))

(assert (=> b!6792787 (= res!2776212 call!616852)))

(declare-fun d!2134324 () Bool)

(declare-fun e!4099917 () Bool)

(assert (=> d!2134324 e!4099917))

(declare-fun c!1262632 () Bool)

(assert (=> d!2134324 (= c!1262632 ((_ is EmptyExpr!16613) (derivativeStep!5277 r!7292 (head!13638 s!2326))))))

(declare-fun e!4099918 () Bool)

(assert (=> d!2134324 (= lt!2446695 e!4099918)))

(declare-fun c!1262631 () Bool)

(assert (=> d!2134324 (= c!1262631 (isEmpty!38385 (tail!12723 s!2326)))))

(assert (=> d!2134324 (validRegex!8349 (derivativeStep!5277 r!7292 (head!13638 s!2326)))))

(assert (=> d!2134324 (= (matchR!8796 (derivativeStep!5277 r!7292 (head!13638 s!2326)) (tail!12723 s!2326)) lt!2446695)))

(declare-fun b!6792788 () Bool)

(declare-fun res!2776216 () Bool)

(assert (=> b!6792788 (=> res!2776216 e!4099921)))

(assert (=> b!6792788 (= res!2776216 e!4099916)))

(declare-fun res!2776211 () Bool)

(assert (=> b!6792788 (=> (not res!2776211) (not e!4099916))))

(assert (=> b!6792788 (= res!2776211 lt!2446695)))

(declare-fun b!6792789 () Bool)

(assert (=> b!6792789 (= e!4099916 (= (head!13638 (tail!12723 s!2326)) (c!1262203 (derivativeStep!5277 r!7292 (head!13638 s!2326)))))))

(declare-fun b!6792790 () Bool)

(declare-fun res!2776214 () Bool)

(assert (=> b!6792790 (=> res!2776214 e!4099919)))

(assert (=> b!6792790 (= res!2776214 (not (isEmpty!38385 (tail!12723 (tail!12723 s!2326)))))))

(declare-fun b!6792791 () Bool)

(declare-fun res!2776217 () Bool)

(assert (=> b!6792791 (=> res!2776217 e!4099921)))

(assert (=> b!6792791 (= res!2776217 (not ((_ is ElementMatch!16613) (derivativeStep!5277 r!7292 (head!13638 s!2326)))))))

(assert (=> b!6792791 (= e!4099915 e!4099921)))

(declare-fun b!6792792 () Bool)

(assert (=> b!6792792 (= e!4099917 e!4099915)))

(declare-fun c!1262630 () Bool)

(assert (=> b!6792792 (= c!1262630 ((_ is EmptyLang!16613) (derivativeStep!5277 r!7292 (head!13638 s!2326))))))

(declare-fun b!6792793 () Bool)

(assert (=> b!6792793 (= e!4099917 (= lt!2446695 call!616852))))

(declare-fun b!6792794 () Bool)

(assert (=> b!6792794 (= e!4099918 (matchR!8796 (derivativeStep!5277 (derivativeStep!5277 r!7292 (head!13638 s!2326)) (head!13638 (tail!12723 s!2326))) (tail!12723 (tail!12723 s!2326))))))

(declare-fun b!6792795 () Bool)

(assert (=> b!6792795 (= e!4099919 (not (= (head!13638 (tail!12723 s!2326)) (c!1262203 (derivativeStep!5277 r!7292 (head!13638 s!2326))))))))

(declare-fun b!6792796 () Bool)

(assert (=> b!6792796 (= e!4099918 (nullable!6592 (derivativeStep!5277 r!7292 (head!13638 s!2326))))))

(declare-fun b!6792797 () Bool)

(declare-fun res!2776215 () Bool)

(assert (=> b!6792797 (=> (not res!2776215) (not e!4099916))))

(assert (=> b!6792797 (= res!2776215 (not call!616852))))

(assert (= (and d!2134324 c!1262631) b!6792796))

(assert (= (and d!2134324 (not c!1262631)) b!6792794))

(assert (= (and d!2134324 c!1262632) b!6792793))

(assert (= (and d!2134324 (not c!1262632)) b!6792792))

(assert (= (and b!6792792 c!1262630) b!6792785))

(assert (= (and b!6792792 (not c!1262630)) b!6792791))

(assert (= (and b!6792791 (not res!2776217)) b!6792788))

(assert (= (and b!6792788 res!2776211) b!6792797))

(assert (= (and b!6792797 res!2776215) b!6792786))

(assert (= (and b!6792786 res!2776213) b!6792789))

(assert (= (and b!6792788 (not res!2776216)) b!6792784))

(assert (= (and b!6792784 res!2776210) b!6792787))

(assert (= (and b!6792787 (not res!2776212)) b!6792790))

(assert (= (and b!6792790 (not res!2776214)) b!6792795))

(assert (= (or b!6792793 b!6792787 b!6792797) bm!616847))

(assert (=> b!6792789 m!7539164))

(declare-fun m!7540072 () Bool)

(assert (=> b!6792789 m!7540072))

(assert (=> b!6792796 m!7539356))

(declare-fun m!7540074 () Bool)

(assert (=> b!6792796 m!7540074))

(assert (=> b!6792794 m!7539164))

(assert (=> b!6792794 m!7540072))

(assert (=> b!6792794 m!7539356))

(assert (=> b!6792794 m!7540072))

(declare-fun m!7540080 () Bool)

(assert (=> b!6792794 m!7540080))

(assert (=> b!6792794 m!7539164))

(declare-fun m!7540082 () Bool)

(assert (=> b!6792794 m!7540082))

(assert (=> b!6792794 m!7540080))

(assert (=> b!6792794 m!7540082))

(declare-fun m!7540086 () Bool)

(assert (=> b!6792794 m!7540086))

(assert (=> b!6792795 m!7539164))

(assert (=> b!6792795 m!7540072))

(assert (=> b!6792790 m!7539164))

(assert (=> b!6792790 m!7540082))

(assert (=> b!6792790 m!7540082))

(declare-fun m!7540088 () Bool)

(assert (=> b!6792790 m!7540088))

(assert (=> bm!616847 m!7539164))

(assert (=> bm!616847 m!7539242))

(assert (=> d!2134324 m!7539164))

(assert (=> d!2134324 m!7539242))

(assert (=> d!2134324 m!7539356))

(declare-fun m!7540090 () Bool)

(assert (=> d!2134324 m!7540090))

(assert (=> b!6792786 m!7539164))

(assert (=> b!6792786 m!7540082))

(assert (=> b!6792786 m!7540082))

(assert (=> b!6792786 m!7540088))

(assert (=> b!6792059 d!2134324))

(declare-fun call!616876 () Regex!16613)

(declare-fun c!1262665 () Bool)

(declare-fun bm!616870 () Bool)

(assert (=> bm!616870 (= call!616876 (derivativeStep!5277 (ite c!1262665 (regOne!33739 r!7292) (regOne!33738 r!7292)) (head!13638 s!2326)))))

(declare-fun bm!616871 () Bool)

(declare-fun call!616878 () Regex!16613)

(declare-fun call!616877 () Regex!16613)

(assert (=> bm!616871 (= call!616878 call!616877)))

(declare-fun b!6792877 () Bool)

(declare-fun e!4099975 () Regex!16613)

(assert (=> b!6792877 (= e!4099975 (ite (= (head!13638 s!2326) (c!1262203 r!7292)) EmptyExpr!16613 EmptyLang!16613))))

(declare-fun bm!616872 () Bool)

(declare-fun call!616875 () Regex!16613)

(assert (=> bm!616872 (= call!616877 call!616875)))

(declare-fun b!6792878 () Bool)

(declare-fun c!1262664 () Bool)

(assert (=> b!6792878 (= c!1262664 (nullable!6592 (regOne!33738 r!7292)))))

(declare-fun e!4099974 () Regex!16613)

(declare-fun e!4099971 () Regex!16613)

(assert (=> b!6792878 (= e!4099974 e!4099971)))

(declare-fun b!6792879 () Bool)

(declare-fun e!4099972 () Regex!16613)

(assert (=> b!6792879 (= e!4099972 e!4099975)))

(declare-fun c!1262663 () Bool)

(assert (=> b!6792879 (= c!1262663 ((_ is ElementMatch!16613) r!7292))))

(declare-fun b!6792880 () Bool)

(assert (=> b!6792880 (= e!4099974 (Concat!25458 call!616877 r!7292))))

(declare-fun b!6792881 () Bool)

(assert (=> b!6792881 (= e!4099971 (Union!16613 (Concat!25458 call!616878 (regTwo!33738 r!7292)) EmptyLang!16613))))

(declare-fun c!1262662 () Bool)

(declare-fun bm!616873 () Bool)

(assert (=> bm!616873 (= call!616875 (derivativeStep!5277 (ite c!1262665 (regTwo!33739 r!7292) (ite c!1262662 (reg!16942 r!7292) (ite c!1262664 (regTwo!33738 r!7292) (regOne!33738 r!7292)))) (head!13638 s!2326)))))

(declare-fun b!6792882 () Bool)

(declare-fun e!4099973 () Regex!16613)

(assert (=> b!6792882 (= e!4099973 (Union!16613 call!616876 call!616875))))

(declare-fun b!6792883 () Bool)

(assert (=> b!6792883 (= e!4099971 (Union!16613 (Concat!25458 call!616876 (regTwo!33738 r!7292)) call!616878))))

(declare-fun b!6792884 () Bool)

(assert (=> b!6792884 (= c!1262665 ((_ is Union!16613) r!7292))))

(assert (=> b!6792884 (= e!4099975 e!4099973)))

(declare-fun d!2134332 () Bool)

(declare-fun lt!2446702 () Regex!16613)

(assert (=> d!2134332 (validRegex!8349 lt!2446702)))

(assert (=> d!2134332 (= lt!2446702 e!4099972)))

(declare-fun c!1262666 () Bool)

(assert (=> d!2134332 (= c!1262666 (or ((_ is EmptyExpr!16613) r!7292) ((_ is EmptyLang!16613) r!7292)))))

(assert (=> d!2134332 (validRegex!8349 r!7292)))

(assert (=> d!2134332 (= (derivativeStep!5277 r!7292 (head!13638 s!2326)) lt!2446702)))

(declare-fun b!6792885 () Bool)

(assert (=> b!6792885 (= e!4099972 EmptyLang!16613)))

(declare-fun b!6792886 () Bool)

(assert (=> b!6792886 (= e!4099973 e!4099974)))

(assert (=> b!6792886 (= c!1262662 ((_ is Star!16613) r!7292))))

(assert (= (and d!2134332 c!1262666) b!6792885))

(assert (= (and d!2134332 (not c!1262666)) b!6792879))

(assert (= (and b!6792879 c!1262663) b!6792877))

(assert (= (and b!6792879 (not c!1262663)) b!6792884))

(assert (= (and b!6792884 c!1262665) b!6792882))

(assert (= (and b!6792884 (not c!1262665)) b!6792886))

(assert (= (and b!6792886 c!1262662) b!6792880))

(assert (= (and b!6792886 (not c!1262662)) b!6792878))

(assert (= (and b!6792878 c!1262664) b!6792883))

(assert (= (and b!6792878 (not c!1262664)) b!6792881))

(assert (= (or b!6792883 b!6792881) bm!616871))

(assert (= (or b!6792880 bm!616871) bm!616872))

(assert (= (or b!6792882 bm!616872) bm!616873))

(assert (= (or b!6792882 b!6792883) bm!616870))

(assert (=> bm!616870 m!7539160))

(declare-fun m!7540182 () Bool)

(assert (=> bm!616870 m!7540182))

(assert (=> b!6792878 m!7538874))

(assert (=> bm!616873 m!7539160))

(declare-fun m!7540184 () Bool)

(assert (=> bm!616873 m!7540184))

(declare-fun m!7540186 () Bool)

(assert (=> d!2134332 m!7540186))

(assert (=> d!2134332 m!7538658))

(assert (=> b!6792059 d!2134332))

(assert (=> b!6792059 d!2134190))

(assert (=> b!6792059 d!2134264))

(declare-fun d!2134368 () Bool)

(assert (=> d!2134368 (= (head!13637 (unfocusZipperList!2034 zl!343)) (h!72462 (unfocusZipperList!2034 zl!343)))))

(assert (=> b!6791347 d!2134368))

(declare-fun d!2134370 () Bool)

(assert (=> d!2134370 (= (flatMap!2094 lt!2446517 lambda!382693) (choose!50600 lt!2446517 lambda!382693))))

(declare-fun bs!1810024 () Bool)

(assert (= bs!1810024 d!2134370))

(declare-fun m!7540188 () Bool)

(assert (=> bs!1810024 m!7540188))

(assert (=> d!2133878 d!2134370))

(declare-fun b!6792899 () Bool)

(declare-fun e!4099982 () List!66139)

(assert (=> b!6792899 (= e!4099982 (t!379862 s!2326))))

(declare-fun b!6792900 () Bool)

(assert (=> b!6792900 (= e!4099982 (Cons!66015 (h!72463 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015))) (++!14772 (t!379862 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015))) (t!379862 s!2326))))))

(declare-fun b!6792902 () Bool)

(declare-fun e!4099983 () Bool)

(declare-fun lt!2446705 () List!66139)

(assert (=> b!6792902 (= e!4099983 (or (not (= (t!379862 s!2326) Nil!66015)) (= lt!2446705 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)))))))

(declare-fun d!2134372 () Bool)

(assert (=> d!2134372 e!4099983))

(declare-fun res!2776248 () Bool)

(assert (=> d!2134372 (=> (not res!2776248) (not e!4099983))))

(declare-fun content!12877 (List!66139) (InoxSet C!33496))

(assert (=> d!2134372 (= res!2776248 (= (content!12877 lt!2446705) ((_ map or) (content!12877 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015))) (content!12877 (t!379862 s!2326)))))))

(assert (=> d!2134372 (= lt!2446705 e!4099982)))

(declare-fun c!1262669 () Bool)

(assert (=> d!2134372 (= c!1262669 ((_ is Nil!66015) (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015))))))

(assert (=> d!2134372 (= (++!14772 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (t!379862 s!2326)) lt!2446705)))

(declare-fun b!6792901 () Bool)

(declare-fun res!2776247 () Bool)

(assert (=> b!6792901 (=> (not res!2776247) (not e!4099983))))

(declare-fun size!40651 (List!66139) Int)

(assert (=> b!6792901 (= res!2776247 (= (size!40651 lt!2446705) (+ (size!40651 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015))) (size!40651 (t!379862 s!2326)))))))

(assert (= (and d!2134372 c!1262669) b!6792899))

(assert (= (and d!2134372 (not c!1262669)) b!6792900))

(assert (= (and d!2134372 res!2776248) b!6792901))

(assert (= (and b!6792901 res!2776247) b!6792902))

(declare-fun m!7540190 () Bool)

(assert (=> b!6792900 m!7540190))

(declare-fun m!7540192 () Bool)

(assert (=> d!2134372 m!7540192))

(assert (=> d!2134372 m!7539312))

(declare-fun m!7540194 () Bool)

(assert (=> d!2134372 m!7540194))

(declare-fun m!7540196 () Bool)

(assert (=> d!2134372 m!7540196))

(declare-fun m!7540198 () Bool)

(assert (=> b!6792901 m!7540198))

(assert (=> b!6792901 m!7539312))

(declare-fun m!7540200 () Bool)

(assert (=> b!6792901 m!7540200))

(declare-fun m!7540202 () Bool)

(assert (=> b!6792901 m!7540202))

(assert (=> b!6792013 d!2134372))

(declare-fun b!6792907 () Bool)

(declare-fun e!4099986 () List!66139)

(assert (=> b!6792907 (= e!4099986 (Cons!66015 (h!72463 s!2326) Nil!66015))))

(declare-fun b!6792908 () Bool)

(assert (=> b!6792908 (= e!4099986 (Cons!66015 (h!72463 Nil!66015) (++!14772 (t!379862 Nil!66015) (Cons!66015 (h!72463 s!2326) Nil!66015))))))

(declare-fun b!6792910 () Bool)

(declare-fun e!4099987 () Bool)

(declare-fun lt!2446706 () List!66139)

(assert (=> b!6792910 (= e!4099987 (or (not (= (Cons!66015 (h!72463 s!2326) Nil!66015) Nil!66015)) (= lt!2446706 Nil!66015)))))

(declare-fun d!2134374 () Bool)

(assert (=> d!2134374 e!4099987))

(declare-fun res!2776254 () Bool)

(assert (=> d!2134374 (=> (not res!2776254) (not e!4099987))))

(assert (=> d!2134374 (= res!2776254 (= (content!12877 lt!2446706) ((_ map or) (content!12877 Nil!66015) (content!12877 (Cons!66015 (h!72463 s!2326) Nil!66015)))))))

(assert (=> d!2134374 (= lt!2446706 e!4099986)))

(declare-fun c!1262670 () Bool)

(assert (=> d!2134374 (= c!1262670 ((_ is Nil!66015) Nil!66015))))

(assert (=> d!2134374 (= (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) lt!2446706)))

(declare-fun b!6792909 () Bool)

(declare-fun res!2776253 () Bool)

(assert (=> b!6792909 (=> (not res!2776253) (not e!4099987))))

(assert (=> b!6792909 (= res!2776253 (= (size!40651 lt!2446706) (+ (size!40651 Nil!66015) (size!40651 (Cons!66015 (h!72463 s!2326) Nil!66015)))))))

(assert (= (and d!2134374 c!1262670) b!6792907))

(assert (= (and d!2134374 (not c!1262670)) b!6792908))

(assert (= (and d!2134374 res!2776254) b!6792909))

(assert (= (and b!6792909 res!2776253) b!6792910))

(declare-fun m!7540204 () Bool)

(assert (=> b!6792908 m!7540204))

(declare-fun m!7540206 () Bool)

(assert (=> d!2134374 m!7540206))

(declare-fun m!7540208 () Bool)

(assert (=> d!2134374 m!7540208))

(declare-fun m!7540210 () Bool)

(assert (=> d!2134374 m!7540210))

(declare-fun m!7540212 () Bool)

(assert (=> b!6792909 m!7540212))

(declare-fun m!7540214 () Bool)

(assert (=> b!6792909 m!7540214))

(declare-fun m!7540216 () Bool)

(assert (=> b!6792909 m!7540216))

(assert (=> b!6792013 d!2134374))

(declare-fun d!2134376 () Bool)

(assert (=> d!2134376 (= (++!14772 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (t!379862 s!2326)) s!2326)))

(declare-fun lt!2446709 () Unit!159917)

(declare-fun choose!50611 (List!66139 C!33496 List!66139 List!66139) Unit!159917)

(assert (=> d!2134376 (= lt!2446709 (choose!50611 Nil!66015 (h!72463 s!2326) (t!379862 s!2326) s!2326))))

(assert (=> d!2134376 (= (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) (t!379862 s!2326))) s!2326)))

(assert (=> d!2134376 (= (lemmaMoveElementToOtherListKeepsConcatEq!2733 Nil!66015 (h!72463 s!2326) (t!379862 s!2326) s!2326) lt!2446709)))

(declare-fun bs!1810037 () Bool)

(assert (= bs!1810037 d!2134376))

(assert (=> bs!1810037 m!7539312))

(assert (=> bs!1810037 m!7539312))

(assert (=> bs!1810037 m!7539314))

(declare-fun m!7540218 () Bool)

(assert (=> bs!1810037 m!7540218))

(declare-fun m!7540220 () Bool)

(assert (=> bs!1810037 m!7540220))

(assert (=> b!6792013 d!2134376))

(declare-fun b!6792911 () Bool)

(declare-fun e!4099989 () Bool)

(declare-fun lt!2446711 () Option!16500)

(assert (=> b!6792911 (= e!4099989 (not (isDefined!13203 lt!2446711)))))

(declare-fun d!2134378 () Bool)

(assert (=> d!2134378 e!4099989))

(declare-fun res!2776257 () Bool)

(assert (=> d!2134378 (=> res!2776257 e!4099989)))

(declare-fun e!4099992 () Bool)

(assert (=> d!2134378 (= res!2776257 e!4099992)))

(declare-fun res!2776255 () Bool)

(assert (=> d!2134378 (=> (not res!2776255) (not e!4099992))))

(assert (=> d!2134378 (= res!2776255 (isDefined!13203 lt!2446711))))

(declare-fun e!4099990 () Option!16500)

(assert (=> d!2134378 (= lt!2446711 e!4099990)))

(declare-fun c!1262672 () Bool)

(declare-fun e!4099991 () Bool)

(assert (=> d!2134378 (= c!1262672 e!4099991)))

(declare-fun res!2776256 () Bool)

(assert (=> d!2134378 (=> (not res!2776256) (not e!4099991))))

(assert (=> d!2134378 (= res!2776256 (matchR!8796 (reg!16942 r!7292) (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015))))))

(assert (=> d!2134378 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2134378 (= (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (t!379862 s!2326) s!2326) lt!2446711)))

(declare-fun b!6792912 () Bool)

(assert (=> b!6792912 (= e!4099990 (Some!16499 (tuple2!67177 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (t!379862 s!2326))))))

(declare-fun b!6792913 () Bool)

(declare-fun e!4099988 () Option!16500)

(assert (=> b!6792913 (= e!4099990 e!4099988)))

(declare-fun c!1262671 () Bool)

(assert (=> b!6792913 (= c!1262671 ((_ is Nil!66015) (t!379862 s!2326)))))

(declare-fun b!6792914 () Bool)

(assert (=> b!6792914 (= e!4099991 (matchR!8796 r!7292 (t!379862 s!2326)))))

(declare-fun b!6792915 () Bool)

(declare-fun lt!2446710 () Unit!159917)

(declare-fun lt!2446712 () Unit!159917)

(assert (=> b!6792915 (= lt!2446710 lt!2446712)))

(assert (=> b!6792915 (= (++!14772 (++!14772 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (Cons!66015 (h!72463 (t!379862 s!2326)) Nil!66015)) (t!379862 (t!379862 s!2326))) s!2326)))

(assert (=> b!6792915 (= lt!2446712 (lemmaMoveElementToOtherListKeepsConcatEq!2733 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (h!72463 (t!379862 s!2326)) (t!379862 (t!379862 s!2326)) s!2326))))

(assert (=> b!6792915 (= e!4099988 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 (++!14772 (++!14772 Nil!66015 (Cons!66015 (h!72463 s!2326) Nil!66015)) (Cons!66015 (h!72463 (t!379862 s!2326)) Nil!66015)) (t!379862 (t!379862 s!2326)) s!2326))))

(declare-fun b!6792916 () Bool)

(declare-fun res!2776259 () Bool)

(assert (=> b!6792916 (=> (not res!2776259) (not e!4099992))))

(assert (=> b!6792916 (= res!2776259 (matchR!8796 (reg!16942 r!7292) (_1!36891 (get!22988 lt!2446711))))))

(declare-fun b!6792917 () Bool)

(declare-fun res!2776258 () Bool)

(assert (=> b!6792917 (=> (not res!2776258) (not e!4099992))))

(assert (=> b!6792917 (= res!2776258 (matchR!8796 r!7292 (_2!36891 (get!22988 lt!2446711))))))

(declare-fun b!6792918 () Bool)

(assert (=> b!6792918 (= e!4099992 (= (++!14772 (_1!36891 (get!22988 lt!2446711)) (_2!36891 (get!22988 lt!2446711))) s!2326))))

(declare-fun b!6792919 () Bool)

(assert (=> b!6792919 (= e!4099988 None!16499)))

(assert (= (and d!2134378 res!2776256) b!6792914))

(assert (= (and d!2134378 c!1262672) b!6792912))

(assert (= (and d!2134378 (not c!1262672)) b!6792913))

(assert (= (and b!6792913 c!1262671) b!6792919))

(assert (= (and b!6792913 (not c!1262671)) b!6792915))

(assert (= (and d!2134378 res!2776255) b!6792916))

(assert (= (and b!6792916 res!2776259) b!6792917))

(assert (= (and b!6792917 res!2776258) b!6792918))

(assert (= (and d!2134378 (not res!2776257)) b!6792911))

(declare-fun m!7540222 () Bool)

(assert (=> b!6792916 m!7540222))

(declare-fun m!7540224 () Bool)

(assert (=> b!6792916 m!7540224))

(declare-fun m!7540226 () Bool)

(assert (=> b!6792914 m!7540226))

(declare-fun m!7540228 () Bool)

(assert (=> d!2134378 m!7540228))

(assert (=> d!2134378 m!7539312))

(declare-fun m!7540230 () Bool)

(assert (=> d!2134378 m!7540230))

(assert (=> d!2134378 m!7539288))

(assert (=> b!6792911 m!7540228))

(assert (=> b!6792917 m!7540222))

(declare-fun m!7540232 () Bool)

(assert (=> b!6792917 m!7540232))

(assert (=> b!6792918 m!7540222))

(declare-fun m!7540234 () Bool)

(assert (=> b!6792918 m!7540234))

(assert (=> b!6792915 m!7539312))

(declare-fun m!7540236 () Bool)

(assert (=> b!6792915 m!7540236))

(assert (=> b!6792915 m!7540236))

(declare-fun m!7540238 () Bool)

(assert (=> b!6792915 m!7540238))

(assert (=> b!6792915 m!7539312))

(declare-fun m!7540240 () Bool)

(assert (=> b!6792915 m!7540240))

(assert (=> b!6792915 m!7540236))

(declare-fun m!7540242 () Bool)

(assert (=> b!6792915 m!7540242))

(assert (=> b!6792013 d!2134378))

(declare-fun d!2134380 () Bool)

(assert (=> d!2134380 true))

(declare-fun setRes!46513 () Bool)

(assert (=> d!2134380 setRes!46513))

(declare-fun condSetEmpty!46513 () Bool)

(declare-fun res!2776260 () (InoxSet Context!11994))

(assert (=> d!2134380 (= condSetEmpty!46513 (= res!2776260 ((as const (Array Context!11994 Bool)) false)))))

(assert (=> d!2134380 (= (choose!50600 z!1189 lambda!382659) res!2776260)))

(declare-fun setIsEmpty!46513 () Bool)

(assert (=> setIsEmpty!46513 setRes!46513))

(declare-fun e!4099993 () Bool)

(declare-fun setNonEmpty!46513 () Bool)

(declare-fun tp!1860191 () Bool)

(declare-fun setElem!46513 () Context!11994)

(assert (=> setNonEmpty!46513 (= setRes!46513 (and tp!1860191 (inv!84779 setElem!46513) e!4099993))))

(declare-fun setRest!46513 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46513 (= res!2776260 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46513 true) setRest!46513))))

(declare-fun b!6792920 () Bool)

(declare-fun tp!1860190 () Bool)

(assert (=> b!6792920 (= e!4099993 tp!1860190)))

(assert (= (and d!2134380 condSetEmpty!46513) setIsEmpty!46513))

(assert (= (and d!2134380 (not condSetEmpty!46513)) setNonEmpty!46513))

(assert (= setNonEmpty!46513 b!6792920))

(declare-fun m!7540244 () Bool)

(assert (=> setNonEmpty!46513 m!7540244))

(assert (=> d!2133942 d!2134380))

(declare-fun b!6792921 () Bool)

(declare-fun e!4099998 () (InoxSet Context!11994))

(declare-fun call!616881 () (InoxSet Context!11994))

(declare-fun call!616883 () (InoxSet Context!11994))

(assert (=> b!6792921 (= e!4099998 ((_ map or) call!616881 call!616883))))

(declare-fun d!2134382 () Bool)

(declare-fun c!1262674 () Bool)

(assert (=> d!2134382 (= c!1262674 (and ((_ is ElementMatch!16613) (h!72462 (exprs!6497 (h!72464 zl!343)))) (= (c!1262203 (h!72462 (exprs!6497 (h!72464 zl!343)))) (h!72463 s!2326))))))

(declare-fun e!4099996 () (InoxSet Context!11994))

(assert (=> d!2134382 (= (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (h!72464 zl!343))) (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) (h!72463 s!2326)) e!4099996)))

(declare-fun bm!616874 () Bool)

(declare-fun call!616882 () List!66138)

(declare-fun call!616880 () List!66138)

(assert (=> bm!616874 (= call!616882 call!616880)))

(declare-fun b!6792922 () Bool)

(assert (=> b!6792922 (= e!4099996 (store ((as const (Array Context!11994 Bool)) false) (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) true))))

(declare-fun b!6792923 () Bool)

(declare-fun e!4099995 () (InoxSet Context!11994))

(declare-fun call!616884 () (InoxSet Context!11994))

(assert (=> b!6792923 (= e!4099995 ((_ map or) call!616881 call!616884))))

(declare-fun bm!616875 () Bool)

(assert (=> bm!616875 (= call!616884 call!616883)))

(declare-fun b!6792924 () Bool)

(declare-fun c!1262673 () Bool)

(assert (=> b!6792924 (= c!1262673 ((_ is Star!16613) (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun e!4099994 () (InoxSet Context!11994))

(declare-fun e!4099997 () (InoxSet Context!11994))

(assert (=> b!6792924 (= e!4099994 e!4099997)))

(declare-fun b!6792925 () Bool)

(declare-fun call!616879 () (InoxSet Context!11994))

(assert (=> b!6792925 (= e!4099994 call!616879)))

(declare-fun b!6792926 () Bool)

(assert (=> b!6792926 (= e!4099995 e!4099994)))

(declare-fun c!1262677 () Bool)

(assert (=> b!6792926 (= c!1262677 ((_ is Concat!25458) (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6792927 () Bool)

(assert (=> b!6792927 (= e!4099997 call!616879)))

(declare-fun b!6792928 () Bool)

(assert (=> b!6792928 (= e!4099996 e!4099998)))

(declare-fun c!1262676 () Bool)

(assert (=> b!6792928 (= c!1262676 ((_ is Union!16613) (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun bm!616876 () Bool)

(assert (=> bm!616876 (= call!616879 call!616884)))

(declare-fun b!6792929 () Bool)

(assert (=> b!6792929 (= e!4099997 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792930 () Bool)

(declare-fun e!4099999 () Bool)

(assert (=> b!6792930 (= e!4099999 (nullable!6592 (regOne!33738 (h!72462 (exprs!6497 (h!72464 zl!343))))))))

(declare-fun bm!616877 () Bool)

(assert (=> bm!616877 (= call!616881 (derivationStepZipperDown!1841 (ite c!1262676 (regOne!33739 (h!72462 (exprs!6497 (h!72464 zl!343)))) (regOne!33738 (h!72462 (exprs!6497 (h!72464 zl!343))))) (ite c!1262676 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) (Context!11995 call!616880)) (h!72463 s!2326)))))

(declare-fun b!6792931 () Bool)

(declare-fun c!1262675 () Bool)

(assert (=> b!6792931 (= c!1262675 e!4099999)))

(declare-fun res!2776261 () Bool)

(assert (=> b!6792931 (=> (not res!2776261) (not e!4099999))))

(assert (=> b!6792931 (= res!2776261 ((_ is Concat!25458) (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(assert (=> b!6792931 (= e!4099998 e!4099995)))

(declare-fun bm!616878 () Bool)

(assert (=> bm!616878 (= call!616880 ($colon$colon!2422 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343))))) (ite (or c!1262675 c!1262677) (regTwo!33738 (h!72462 (exprs!6497 (h!72464 zl!343)))) (h!72462 (exprs!6497 (h!72464 zl!343))))))))

(declare-fun bm!616879 () Bool)

(assert (=> bm!616879 (= call!616883 (derivationStepZipperDown!1841 (ite c!1262676 (regTwo!33739 (h!72462 (exprs!6497 (h!72464 zl!343)))) (ite c!1262675 (regTwo!33738 (h!72462 (exprs!6497 (h!72464 zl!343)))) (ite c!1262677 (regOne!33738 (h!72462 (exprs!6497 (h!72464 zl!343)))) (reg!16942 (h!72462 (exprs!6497 (h!72464 zl!343))))))) (ite (or c!1262676 c!1262675) (Context!11995 (t!379861 (exprs!6497 (h!72464 zl!343)))) (Context!11995 call!616882)) (h!72463 s!2326)))))

(assert (= (and d!2134382 c!1262674) b!6792922))

(assert (= (and d!2134382 (not c!1262674)) b!6792928))

(assert (= (and b!6792928 c!1262676) b!6792921))

(assert (= (and b!6792928 (not c!1262676)) b!6792931))

(assert (= (and b!6792931 res!2776261) b!6792930))

(assert (= (and b!6792931 c!1262675) b!6792923))

(assert (= (and b!6792931 (not c!1262675)) b!6792926))

(assert (= (and b!6792926 c!1262677) b!6792925))

(assert (= (and b!6792926 (not c!1262677)) b!6792924))

(assert (= (and b!6792924 c!1262673) b!6792927))

(assert (= (and b!6792924 (not c!1262673)) b!6792929))

(assert (= (or b!6792925 b!6792927) bm!616874))

(assert (= (or b!6792925 b!6792927) bm!616876))

(assert (= (or b!6792923 bm!616874) bm!616878))

(assert (= (or b!6792923 bm!616876) bm!616875))

(assert (= (or b!6792921 bm!616875) bm!616879))

(assert (= (or b!6792921 b!6792923) bm!616877))

(declare-fun m!7540246 () Bool)

(assert (=> bm!616877 m!7540246))

(declare-fun m!7540248 () Bool)

(assert (=> bm!616879 m!7540248))

(declare-fun m!7540250 () Bool)

(assert (=> b!6792930 m!7540250))

(declare-fun m!7540252 () Bool)

(assert (=> bm!616878 m!7540252))

(declare-fun m!7540254 () Bool)

(assert (=> b!6792922 m!7540254))

(assert (=> bm!616693 d!2134382))

(assert (=> b!6791920 d!2134262))

(assert (=> b!6791920 d!2134264))

(assert (=> bs!1809613 d!2133880))

(declare-fun d!2134384 () Bool)

(assert (=> d!2134384 (= (Exists!3681 (ite c!1262378 lambda!382726 lambda!382727)) (choose!50606 (ite c!1262378 lambda!382726 lambda!382727)))))

(declare-fun bs!1810045 () Bool)

(assert (= bs!1810045 d!2134384))

(declare-fun m!7540256 () Bool)

(assert (=> bs!1810045 m!7540256))

(assert (=> bm!616689 d!2134384))

(assert (=> d!2133884 d!2133888))

(declare-fun d!2134386 () Bool)

(assert (=> d!2134386 (= (flatMap!2094 lt!2446535 lambda!382659) (dynLambda!26350 lambda!382659 lt!2446519))))

(assert (=> d!2134386 true))

(declare-fun _$13!4239 () Unit!159917)

(assert (=> d!2134386 (= (choose!50599 lt!2446535 lt!2446519 lambda!382659) _$13!4239)))

(declare-fun b_lambda!255867 () Bool)

(assert (=> (not b_lambda!255867) (not d!2134386)))

(declare-fun bs!1810046 () Bool)

(assert (= bs!1810046 d!2134386))

(assert (=> bs!1810046 m!7538736))

(assert (=> bs!1810046 m!7539080))

(assert (=> d!2133884 d!2134386))

(declare-fun d!2134388 () Bool)

(declare-fun res!2776262 () Bool)

(declare-fun e!4100000 () Bool)

(assert (=> d!2134388 (=> res!2776262 e!4100000)))

(assert (=> d!2134388 (= res!2776262 ((_ is Nil!66014) (exprs!6497 lt!2446529)))))

(assert (=> d!2134388 (= (forall!15805 (exprs!6497 lt!2446529) lambda!382690) e!4100000)))

(declare-fun b!6792932 () Bool)

(declare-fun e!4100001 () Bool)

(assert (=> b!6792932 (= e!4100000 e!4100001)))

(declare-fun res!2776263 () Bool)

(assert (=> b!6792932 (=> (not res!2776263) (not e!4100001))))

(assert (=> b!6792932 (= res!2776263 (dynLambda!26352 lambda!382690 (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun b!6792933 () Bool)

(assert (=> b!6792933 (= e!4100001 (forall!15805 (t!379861 (exprs!6497 lt!2446529)) lambda!382690))))

(assert (= (and d!2134388 (not res!2776262)) b!6792932))

(assert (= (and b!6792932 res!2776263) b!6792933))

(declare-fun b_lambda!255869 () Bool)

(assert (=> (not b_lambda!255869) (not b!6792932)))

(declare-fun m!7540264 () Bool)

(assert (=> b!6792932 m!7540264))

(declare-fun m!7540266 () Bool)

(assert (=> b!6792933 m!7540266))

(assert (=> d!2133858 d!2134388))

(assert (=> b!6791924 d!2134262))

(assert (=> b!6791924 d!2134264))

(declare-fun d!2134394 () Bool)

(declare-fun c!1262685 () Bool)

(assert (=> d!2134394 (= c!1262685 ((_ is Nil!66016) lt!2446550))))

(declare-fun e!4100010 () (InoxSet Context!11994))

(assert (=> d!2134394 (= (content!12873 lt!2446550) e!4100010)))

(declare-fun b!6792949 () Bool)

(assert (=> b!6792949 (= e!4100010 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6792950 () Bool)

(assert (=> b!6792950 (= e!4100010 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) (h!72464 lt!2446550) true) (content!12873 (t!379863 lt!2446550))))))

(assert (= (and d!2134394 c!1262685) b!6792949))

(assert (= (and d!2134394 (not c!1262685)) b!6792950))

(declare-fun m!7540280 () Bool)

(assert (=> b!6792950 m!7540280))

(declare-fun m!7540282 () Bool)

(assert (=> b!6792950 m!7540282))

(assert (=> b!6791406 d!2134394))

(declare-fun d!2134402 () Bool)

(assert (=> d!2134402 (forall!15805 (++!14771 (exprs!6497 lt!2446519) lt!2446511) lambda!382661)))

(declare-fun lt!2446714 () Unit!159917)

(assert (=> d!2134402 (= lt!2446714 (choose!50597 (exprs!6497 lt!2446519) lt!2446511 lambda!382661))))

(assert (=> d!2134402 (forall!15805 (exprs!6497 lt!2446519) lambda!382661)))

(assert (=> d!2134402 (= (lemmaConcatPreservesForall!442 (exprs!6497 lt!2446519) lt!2446511 lambda!382661) lt!2446714)))

(declare-fun bs!1810050 () Bool)

(assert (= bs!1810050 d!2134402))

(assert (=> bs!1810050 m!7539374))

(assert (=> bs!1810050 m!7539374))

(declare-fun m!7540284 () Bool)

(assert (=> bs!1810050 m!7540284))

(declare-fun m!7540286 () Bool)

(assert (=> bs!1810050 m!7540286))

(declare-fun m!7540290 () Bool)

(assert (=> bs!1810050 m!7540290))

(assert (=> bs!1809609 d!2134402))

(declare-fun b!6792957 () Bool)

(declare-fun res!2776268 () Bool)

(declare-fun e!4100014 () Bool)

(assert (=> b!6792957 (=> (not res!2776268) (not e!4100014))))

(declare-fun lt!2446715 () List!66138)

(assert (=> b!6792957 (= res!2776268 (= (size!40649 lt!2446715) (+ (size!40649 (exprs!6497 lt!2446519)) (size!40649 lt!2446511))))))

(declare-fun d!2134404 () Bool)

(assert (=> d!2134404 e!4100014))

(declare-fun res!2776267 () Bool)

(assert (=> d!2134404 (=> (not res!2776267) (not e!4100014))))

(assert (=> d!2134404 (= res!2776267 (= (content!12875 lt!2446715) ((_ map or) (content!12875 (exprs!6497 lt!2446519)) (content!12875 lt!2446511))))))

(declare-fun e!4100013 () List!66138)

(assert (=> d!2134404 (= lt!2446715 e!4100013)))

(declare-fun c!1262687 () Bool)

(assert (=> d!2134404 (= c!1262687 ((_ is Nil!66014) (exprs!6497 lt!2446519)))))

(assert (=> d!2134404 (= (++!14771 (exprs!6497 lt!2446519) lt!2446511) lt!2446715)))

(declare-fun b!6792956 () Bool)

(assert (=> b!6792956 (= e!4100013 (Cons!66014 (h!72462 (exprs!6497 lt!2446519)) (++!14771 (t!379861 (exprs!6497 lt!2446519)) lt!2446511)))))

(declare-fun b!6792958 () Bool)

(assert (=> b!6792958 (= e!4100014 (or (not (= lt!2446511 Nil!66014)) (= lt!2446715 (exprs!6497 lt!2446519))))))

(declare-fun b!6792955 () Bool)

(assert (=> b!6792955 (= e!4100013 lt!2446511)))

(assert (= (and d!2134404 c!1262687) b!6792955))

(assert (= (and d!2134404 (not c!1262687)) b!6792956))

(assert (= (and d!2134404 res!2776267) b!6792957))

(assert (= (and b!6792957 res!2776268) b!6792958))

(declare-fun m!7540304 () Bool)

(assert (=> b!6792957 m!7540304))

(declare-fun m!7540306 () Bool)

(assert (=> b!6792957 m!7540306))

(assert (=> b!6792957 m!7539006))

(declare-fun m!7540308 () Bool)

(assert (=> d!2134404 m!7540308))

(declare-fun m!7540310 () Bool)

(assert (=> d!2134404 m!7540310))

(assert (=> d!2134404 m!7539012))

(declare-fun m!7540312 () Bool)

(assert (=> b!6792956 m!7540312))

(assert (=> bs!1809609 d!2134404))

(assert (=> d!2133968 d!2134272))

(declare-fun b!6792963 () Bool)

(declare-fun e!4100022 () Bool)

(declare-fun e!4100021 () Bool)

(assert (=> b!6792963 (= e!4100022 e!4100021)))

(declare-fun res!2776269 () Bool)

(assert (=> b!6792963 (=> (not res!2776269) (not e!4100021))))

(declare-fun lt!2446716 () Bool)

(assert (=> b!6792963 (= res!2776269 (not lt!2446716))))

(declare-fun b!6792964 () Bool)

(declare-fun e!4100016 () Bool)

(assert (=> b!6792964 (= e!4100016 (not lt!2446716))))

(declare-fun bm!616886 () Bool)

(declare-fun call!616891 () Bool)

(assert (=> bm!616886 (= call!616891 (isEmpty!38385 Nil!66015))))

(declare-fun b!6792965 () Bool)

(declare-fun res!2776272 () Bool)

(declare-fun e!4100017 () Bool)

(assert (=> b!6792965 (=> (not res!2776272) (not e!4100017))))

(assert (=> b!6792965 (= res!2776272 (isEmpty!38385 (tail!12723 Nil!66015)))))

(declare-fun b!6792966 () Bool)

(declare-fun e!4100020 () Bool)

(assert (=> b!6792966 (= e!4100021 e!4100020)))

(declare-fun res!2776271 () Bool)

(assert (=> b!6792966 (=> res!2776271 e!4100020)))

(assert (=> b!6792966 (= res!2776271 call!616891)))

(declare-fun d!2134406 () Bool)

(declare-fun e!4100018 () Bool)

(assert (=> d!2134406 e!4100018))

(declare-fun c!1262690 () Bool)

(assert (=> d!2134406 (= c!1262690 ((_ is EmptyExpr!16613) (reg!16942 r!7292)))))

(declare-fun e!4100019 () Bool)

(assert (=> d!2134406 (= lt!2446716 e!4100019)))

(declare-fun c!1262689 () Bool)

(assert (=> d!2134406 (= c!1262689 (isEmpty!38385 Nil!66015))))

(assert (=> d!2134406 (validRegex!8349 (reg!16942 r!7292))))

(assert (=> d!2134406 (= (matchR!8796 (reg!16942 r!7292) Nil!66015) lt!2446716)))

(declare-fun b!6792967 () Bool)

(declare-fun res!2776275 () Bool)

(assert (=> b!6792967 (=> res!2776275 e!4100022)))

(assert (=> b!6792967 (= res!2776275 e!4100017)))

(declare-fun res!2776270 () Bool)

(assert (=> b!6792967 (=> (not res!2776270) (not e!4100017))))

(assert (=> b!6792967 (= res!2776270 lt!2446716)))

(declare-fun b!6792968 () Bool)

(assert (=> b!6792968 (= e!4100017 (= (head!13638 Nil!66015) (c!1262203 (reg!16942 r!7292))))))

(declare-fun b!6792969 () Bool)

(declare-fun res!2776273 () Bool)

(assert (=> b!6792969 (=> res!2776273 e!4100020)))

(assert (=> b!6792969 (= res!2776273 (not (isEmpty!38385 (tail!12723 Nil!66015))))))

(declare-fun b!6792970 () Bool)

(declare-fun res!2776276 () Bool)

(assert (=> b!6792970 (=> res!2776276 e!4100022)))

(assert (=> b!6792970 (= res!2776276 (not ((_ is ElementMatch!16613) (reg!16942 r!7292))))))

(assert (=> b!6792970 (= e!4100016 e!4100022)))

(declare-fun b!6792971 () Bool)

(assert (=> b!6792971 (= e!4100018 e!4100016)))

(declare-fun c!1262688 () Bool)

(assert (=> b!6792971 (= c!1262688 ((_ is EmptyLang!16613) (reg!16942 r!7292)))))

(declare-fun b!6792972 () Bool)

(assert (=> b!6792972 (= e!4100018 (= lt!2446716 call!616891))))

(declare-fun b!6792973 () Bool)

(assert (=> b!6792973 (= e!4100019 (matchR!8796 (derivativeStep!5277 (reg!16942 r!7292) (head!13638 Nil!66015)) (tail!12723 Nil!66015)))))

(declare-fun b!6792974 () Bool)

(assert (=> b!6792974 (= e!4100020 (not (= (head!13638 Nil!66015) (c!1262203 (reg!16942 r!7292)))))))

(declare-fun b!6792975 () Bool)

(assert (=> b!6792975 (= e!4100019 (nullable!6592 (reg!16942 r!7292)))))

(declare-fun b!6792976 () Bool)

(declare-fun res!2776274 () Bool)

(assert (=> b!6792976 (=> (not res!2776274) (not e!4100017))))

(assert (=> b!6792976 (= res!2776274 (not call!616891))))

(assert (= (and d!2134406 c!1262689) b!6792975))

(assert (= (and d!2134406 (not c!1262689)) b!6792973))

(assert (= (and d!2134406 c!1262690) b!6792972))

(assert (= (and d!2134406 (not c!1262690)) b!6792971))

(assert (= (and b!6792971 c!1262688) b!6792964))

(assert (= (and b!6792971 (not c!1262688)) b!6792970))

(assert (= (and b!6792970 (not res!2776276)) b!6792967))

(assert (= (and b!6792967 res!2776270) b!6792976))

(assert (= (and b!6792976 res!2776274) b!6792965))

(assert (= (and b!6792965 res!2776272) b!6792968))

(assert (= (and b!6792967 (not res!2776275)) b!6792963))

(assert (= (and b!6792963 res!2776269) b!6792966))

(assert (= (and b!6792966 (not res!2776271)) b!6792969))

(assert (= (and b!6792969 (not res!2776273)) b!6792974))

(assert (= (or b!6792972 b!6792966 b!6792976) bm!616886))

(declare-fun m!7540314 () Bool)

(assert (=> b!6792968 m!7540314))

(assert (=> b!6792975 m!7539364))

(assert (=> b!6792973 m!7540314))

(assert (=> b!6792973 m!7540314))

(declare-fun m!7540316 () Bool)

(assert (=> b!6792973 m!7540316))

(declare-fun m!7540318 () Bool)

(assert (=> b!6792973 m!7540318))

(assert (=> b!6792973 m!7540316))

(assert (=> b!6792973 m!7540318))

(declare-fun m!7540320 () Bool)

(assert (=> b!6792973 m!7540320))

(assert (=> b!6792974 m!7540314))

(assert (=> b!6792969 m!7540318))

(assert (=> b!6792969 m!7540318))

(declare-fun m!7540322 () Bool)

(assert (=> b!6792969 m!7540322))

(declare-fun m!7540324 () Bool)

(assert (=> bm!616886 m!7540324))

(assert (=> d!2134406 m!7540324))

(assert (=> d!2134406 m!7539288))

(assert (=> b!6792965 m!7540318))

(assert (=> b!6792965 m!7540318))

(assert (=> b!6792965 m!7540322))

(assert (=> d!2133968 d!2134406))

(declare-fun b!6792998 () Bool)

(declare-fun e!4100029 () Bool)

(declare-fun e!4100032 () Bool)

(assert (=> b!6792998 (= e!4100029 e!4100032)))

(declare-fun res!2776279 () Bool)

(assert (=> b!6792998 (=> (not res!2776279) (not e!4100032))))

(declare-fun call!616893 () Bool)

(assert (=> b!6792998 (= res!2776279 call!616893)))

(declare-fun b!6792999 () Bool)

(declare-fun res!2776278 () Bool)

(assert (=> b!6792999 (=> res!2776278 e!4100029)))

(assert (=> b!6792999 (= res!2776278 (not ((_ is Concat!25458) (reg!16942 r!7292))))))

(declare-fun e!4100031 () Bool)

(assert (=> b!6792999 (= e!4100031 e!4100029)))

(declare-fun c!1262692 () Bool)

(declare-fun c!1262691 () Bool)

(declare-fun call!616892 () Bool)

(declare-fun bm!616887 () Bool)

(assert (=> bm!616887 (= call!616892 (validRegex!8349 (ite c!1262691 (reg!16942 (reg!16942 r!7292)) (ite c!1262692 (regTwo!33739 (reg!16942 r!7292)) (regTwo!33738 (reg!16942 r!7292))))))))

(declare-fun d!2134408 () Bool)

(declare-fun res!2776281 () Bool)

(declare-fun e!4100030 () Bool)

(assert (=> d!2134408 (=> res!2776281 e!4100030)))

(assert (=> d!2134408 (= res!2776281 ((_ is ElementMatch!16613) (reg!16942 r!7292)))))

(assert (=> d!2134408 (= (validRegex!8349 (reg!16942 r!7292)) e!4100030)))

(declare-fun bm!616888 () Bool)

(declare-fun call!616894 () Bool)

(assert (=> bm!616888 (= call!616894 call!616892)))

(declare-fun b!6793000 () Bool)

(assert (=> b!6793000 (= e!4100032 call!616894)))

(declare-fun b!6793001 () Bool)

(declare-fun e!4100033 () Bool)

(declare-fun e!4100035 () Bool)

(assert (=> b!6793001 (= e!4100033 e!4100035)))

(declare-fun res!2776280 () Bool)

(assert (=> b!6793001 (= res!2776280 (not (nullable!6592 (reg!16942 (reg!16942 r!7292)))))))

(assert (=> b!6793001 (=> (not res!2776280) (not e!4100035))))

(declare-fun b!6793002 () Bool)

(declare-fun e!4100034 () Bool)

(assert (=> b!6793002 (= e!4100034 call!616894)))

(declare-fun b!6793003 () Bool)

(assert (=> b!6793003 (= e!4100035 call!616892)))

(declare-fun bm!616889 () Bool)

(assert (=> bm!616889 (= call!616893 (validRegex!8349 (ite c!1262692 (regOne!33739 (reg!16942 r!7292)) (regOne!33738 (reg!16942 r!7292)))))))

(declare-fun b!6793004 () Bool)

(assert (=> b!6793004 (= e!4100030 e!4100033)))

(assert (=> b!6793004 (= c!1262691 ((_ is Star!16613) (reg!16942 r!7292)))))

(declare-fun b!6793005 () Bool)

(declare-fun res!2776277 () Bool)

(assert (=> b!6793005 (=> (not res!2776277) (not e!4100034))))

(assert (=> b!6793005 (= res!2776277 call!616893)))

(assert (=> b!6793005 (= e!4100031 e!4100034)))

(declare-fun b!6793006 () Bool)

(assert (=> b!6793006 (= e!4100033 e!4100031)))

(assert (=> b!6793006 (= c!1262692 ((_ is Union!16613) (reg!16942 r!7292)))))

(assert (= (and d!2134408 (not res!2776281)) b!6793004))

(assert (= (and b!6793004 c!1262691) b!6793001))

(assert (= (and b!6793004 (not c!1262691)) b!6793006))

(assert (= (and b!6793001 res!2776280) b!6793003))

(assert (= (and b!6793006 c!1262692) b!6793005))

(assert (= (and b!6793006 (not c!1262692)) b!6792999))

(assert (= (and b!6793005 res!2776277) b!6793002))

(assert (= (and b!6792999 (not res!2776278)) b!6792998))

(assert (= (and b!6792998 res!2776279) b!6793000))

(assert (= (or b!6793002 b!6793000) bm!616888))

(assert (= (or b!6793005 b!6792998) bm!616889))

(assert (= (or b!6793003 bm!616888) bm!616887))

(declare-fun m!7540326 () Bool)

(assert (=> bm!616887 m!7540326))

(declare-fun m!7540328 () Bool)

(assert (=> b!6793001 m!7540328))

(declare-fun m!7540330 () Bool)

(assert (=> bm!616889 m!7540330))

(assert (=> d!2133968 d!2134408))

(declare-fun d!2134410 () Bool)

(assert (=> d!2134410 (= (nullable!6592 (regOne!33738 (reg!16942 r!7292))) (nullableFct!2496 (regOne!33738 (reg!16942 r!7292))))))

(declare-fun bs!1810051 () Bool)

(assert (= bs!1810051 d!2134410))

(declare-fun m!7540332 () Bool)

(assert (=> bs!1810051 m!7540332))

(assert (=> b!6792031 d!2134410))

(declare-fun bs!1810052 () Bool)

(declare-fun d!2134412 () Bool)

(assert (= bs!1810052 (and d!2134412 d!2133858)))

(declare-fun lambda!382800 () Int)

(assert (=> bs!1810052 (= lambda!382800 lambda!382690)))

(declare-fun bs!1810053 () Bool)

(assert (= bs!1810053 (and d!2134412 d!2133890)))

(assert (=> bs!1810053 (= lambda!382800 lambda!382704)))

(declare-fun bs!1810054 () Bool)

(assert (= bs!1810054 (and d!2134412 d!2133774)))

(assert (=> bs!1810054 (= lambda!382800 lambda!382664)))

(declare-fun bs!1810055 () Bool)

(assert (= bs!1810055 (and d!2134412 d!2133974)))

(assert (=> bs!1810055 (= lambda!382800 lambda!382743)))

(declare-fun bs!1810056 () Bool)

(assert (= bs!1810056 (and d!2134412 d!2134128)))

(assert (=> bs!1810056 (= lambda!382800 lambda!382763)))

(declare-fun bs!1810057 () Bool)

(assert (= bs!1810057 (and d!2134412 b!6791309)))

(assert (=> bs!1810057 (= lambda!382800 lambda!382661)))

(declare-fun bs!1810058 () Bool)

(assert (= bs!1810058 (and d!2134412 d!2134246)))

(assert (=> bs!1810058 (= lambda!382800 lambda!382779)))

(declare-fun bs!1810059 () Bool)

(assert (= bs!1810059 (and d!2134412 d!2133910)))

(assert (=> bs!1810059 (= lambda!382800 lambda!382705)))

(declare-fun bs!1810060 () Bool)

(assert (= bs!1810060 (and d!2134412 d!2133778)))

(assert (=> bs!1810060 (= lambda!382800 lambda!382667)))

(declare-fun bs!1810061 () Bool)

(assert (= bs!1810061 (and d!2134412 d!2134230)))

(assert (=> bs!1810061 (= lambda!382800 lambda!382777)))

(assert (=> d!2134412 (= (inv!84779 setElem!46499) (forall!15805 (exprs!6497 setElem!46499) lambda!382800))))

(declare-fun bs!1810062 () Bool)

(assert (= bs!1810062 d!2134412))

(declare-fun m!7540334 () Bool)

(assert (=> bs!1810062 m!7540334))

(assert (=> setNonEmpty!46499 d!2134412))

(declare-fun d!2134414 () Bool)

(declare-fun c!1262695 () Bool)

(assert (=> d!2134414 (= c!1262695 ((_ is Nil!66014) lt!2446589))))

(declare-fun e!4100059 () (InoxSet Regex!16613))

(assert (=> d!2134414 (= (content!12875 lt!2446589) e!4100059)))

(declare-fun b!6793074 () Bool)

(assert (=> b!6793074 (= e!4100059 ((as const (Array Regex!16613 Bool)) false))))

(declare-fun b!6793075 () Bool)

(assert (=> b!6793075 (= e!4100059 ((_ map or) (store ((as const (Array Regex!16613 Bool)) false) (h!72462 lt!2446589) true) (content!12875 (t!379861 lt!2446589))))))

(assert (= (and d!2134414 c!1262695) b!6793074))

(assert (= (and d!2134414 (not c!1262695)) b!6793075))

(declare-fun m!7540340 () Bool)

(assert (=> b!6793075 m!7540340))

(declare-fun m!7540342 () Bool)

(assert (=> b!6793075 m!7540342))

(assert (=> d!2133828 d!2134414))

(declare-fun d!2134416 () Bool)

(declare-fun c!1262696 () Bool)

(assert (=> d!2134416 (= c!1262696 ((_ is Nil!66014) (Cons!66014 (reg!16942 r!7292) Nil!66014)))))

(declare-fun e!4100062 () (InoxSet Regex!16613))

(assert (=> d!2134416 (= (content!12875 (Cons!66014 (reg!16942 r!7292) Nil!66014)) e!4100062)))

(declare-fun b!6793084 () Bool)

(assert (=> b!6793084 (= e!4100062 ((as const (Array Regex!16613 Bool)) false))))

(declare-fun b!6793085 () Bool)

(assert (=> b!6793085 (= e!4100062 ((_ map or) (store ((as const (Array Regex!16613 Bool)) false) (h!72462 (Cons!66014 (reg!16942 r!7292) Nil!66014)) true) (content!12875 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014)))))))

(assert (= (and d!2134416 c!1262696) b!6793084))

(assert (= (and d!2134416 (not c!1262696)) b!6793085))

(declare-fun m!7540344 () Bool)

(assert (=> b!6793085 m!7540344))

(assert (=> b!6793085 m!7539966))

(assert (=> d!2133828 d!2134416))

(declare-fun d!2134418 () Bool)

(declare-fun c!1262697 () Bool)

(assert (=> d!2134418 (= c!1262697 ((_ is Nil!66014) lt!2446511))))

(declare-fun e!4100064 () (InoxSet Regex!16613))

(assert (=> d!2134418 (= (content!12875 lt!2446511) e!4100064)))

(declare-fun b!6793090 () Bool)

(assert (=> b!6793090 (= e!4100064 ((as const (Array Regex!16613 Bool)) false))))

(declare-fun b!6793091 () Bool)

(assert (=> b!6793091 (= e!4100064 ((_ map or) (store ((as const (Array Regex!16613 Bool)) false) (h!72462 lt!2446511) true) (content!12875 (t!379861 lt!2446511))))))

(assert (= (and d!2134418 c!1262697) b!6793090))

(assert (= (and d!2134418 (not c!1262697)) b!6793091))

(declare-fun m!7540346 () Bool)

(assert (=> b!6793091 m!7540346))

(declare-fun m!7540348 () Bool)

(assert (=> b!6793091 m!7540348))

(assert (=> d!2133828 d!2134418))

(assert (=> bm!616703 d!2133964))

(declare-fun b!6793100 () Bool)

(declare-fun e!4100073 () Bool)

(declare-fun e!4100072 () Bool)

(assert (=> b!6793100 (= e!4100073 e!4100072)))

(declare-fun res!2776282 () Bool)

(assert (=> b!6793100 (=> (not res!2776282) (not e!4100072))))

(declare-fun lt!2446717 () Bool)

(assert (=> b!6793100 (= res!2776282 (not lt!2446717))))

(declare-fun b!6793101 () Bool)

(declare-fun e!4100066 () Bool)

(assert (=> b!6793101 (= e!4100066 (not lt!2446717))))

(declare-fun bm!616890 () Bool)

(declare-fun call!616895 () Bool)

(assert (=> bm!616890 (= call!616895 (isEmpty!38385 (tail!12723 s!2326)))))

(declare-fun b!6793102 () Bool)

(declare-fun res!2776285 () Bool)

(declare-fun e!4100068 () Bool)

(assert (=> b!6793102 (=> (not res!2776285) (not e!4100068))))

(assert (=> b!6793102 (= res!2776285 (isEmpty!38385 (tail!12723 (tail!12723 s!2326))))))

(declare-fun b!6793103 () Bool)

(declare-fun e!4100071 () Bool)

(assert (=> b!6793103 (= e!4100072 e!4100071)))

(declare-fun res!2776284 () Bool)

(assert (=> b!6793103 (=> res!2776284 e!4100071)))

(assert (=> b!6793103 (= res!2776284 call!616895)))

(declare-fun d!2134420 () Bool)

(declare-fun e!4100069 () Bool)

(assert (=> d!2134420 e!4100069))

(declare-fun c!1262700 () Bool)

(assert (=> d!2134420 (= c!1262700 ((_ is EmptyExpr!16613) (derivativeStep!5277 lt!2446525 (head!13638 s!2326))))))

(declare-fun e!4100070 () Bool)

(assert (=> d!2134420 (= lt!2446717 e!4100070)))

(declare-fun c!1262699 () Bool)

(assert (=> d!2134420 (= c!1262699 (isEmpty!38385 (tail!12723 s!2326)))))

(assert (=> d!2134420 (validRegex!8349 (derivativeStep!5277 lt!2446525 (head!13638 s!2326)))))

(assert (=> d!2134420 (= (matchR!8796 (derivativeStep!5277 lt!2446525 (head!13638 s!2326)) (tail!12723 s!2326)) lt!2446717)))

(declare-fun b!6793104 () Bool)

(declare-fun res!2776288 () Bool)

(assert (=> b!6793104 (=> res!2776288 e!4100073)))

(assert (=> b!6793104 (= res!2776288 e!4100068)))

(declare-fun res!2776283 () Bool)

(assert (=> b!6793104 (=> (not res!2776283) (not e!4100068))))

(assert (=> b!6793104 (= res!2776283 lt!2446717)))

(declare-fun b!6793105 () Bool)

(assert (=> b!6793105 (= e!4100068 (= (head!13638 (tail!12723 s!2326)) (c!1262203 (derivativeStep!5277 lt!2446525 (head!13638 s!2326)))))))

(declare-fun b!6793106 () Bool)

(declare-fun res!2776286 () Bool)

(assert (=> b!6793106 (=> res!2776286 e!4100071)))

(assert (=> b!6793106 (= res!2776286 (not (isEmpty!38385 (tail!12723 (tail!12723 s!2326)))))))

(declare-fun b!6793107 () Bool)

(declare-fun res!2776289 () Bool)

(assert (=> b!6793107 (=> res!2776289 e!4100073)))

(assert (=> b!6793107 (= res!2776289 (not ((_ is ElementMatch!16613) (derivativeStep!5277 lt!2446525 (head!13638 s!2326)))))))

(assert (=> b!6793107 (= e!4100066 e!4100073)))

(declare-fun b!6793108 () Bool)

(assert (=> b!6793108 (= e!4100069 e!4100066)))

(declare-fun c!1262698 () Bool)

(assert (=> b!6793108 (= c!1262698 ((_ is EmptyLang!16613) (derivativeStep!5277 lt!2446525 (head!13638 s!2326))))))

(declare-fun b!6793109 () Bool)

(assert (=> b!6793109 (= e!4100069 (= lt!2446717 call!616895))))

(declare-fun b!6793110 () Bool)

(assert (=> b!6793110 (= e!4100070 (matchR!8796 (derivativeStep!5277 (derivativeStep!5277 lt!2446525 (head!13638 s!2326)) (head!13638 (tail!12723 s!2326))) (tail!12723 (tail!12723 s!2326))))))

(declare-fun b!6793111 () Bool)

(assert (=> b!6793111 (= e!4100071 (not (= (head!13638 (tail!12723 s!2326)) (c!1262203 (derivativeStep!5277 lt!2446525 (head!13638 s!2326))))))))

(declare-fun b!6793112 () Bool)

(assert (=> b!6793112 (= e!4100070 (nullable!6592 (derivativeStep!5277 lt!2446525 (head!13638 s!2326))))))

(declare-fun b!6793113 () Bool)

(declare-fun res!2776287 () Bool)

(assert (=> b!6793113 (=> (not res!2776287) (not e!4100068))))

(assert (=> b!6793113 (= res!2776287 (not call!616895))))

(assert (= (and d!2134420 c!1262699) b!6793112))

(assert (= (and d!2134420 (not c!1262699)) b!6793110))

(assert (= (and d!2134420 c!1262700) b!6793109))

(assert (= (and d!2134420 (not c!1262700)) b!6793108))

(assert (= (and b!6793108 c!1262698) b!6793101))

(assert (= (and b!6793108 (not c!1262698)) b!6793107))

(assert (= (and b!6793107 (not res!2776289)) b!6793104))

(assert (= (and b!6793104 res!2776283) b!6793113))

(assert (= (and b!6793113 res!2776287) b!6793102))

(assert (= (and b!6793102 res!2776285) b!6793105))

(assert (= (and b!6793104 (not res!2776288)) b!6793100))

(assert (= (and b!6793100 res!2776282) b!6793103))

(assert (= (and b!6793103 (not res!2776284)) b!6793106))

(assert (= (and b!6793106 (not res!2776286)) b!6793111))

(assert (= (or b!6793109 b!6793103 b!6793113) bm!616890))

(assert (=> b!6793105 m!7539164))

(assert (=> b!6793105 m!7540072))

(assert (=> b!6793112 m!7539236))

(declare-fun m!7540350 () Bool)

(assert (=> b!6793112 m!7540350))

(assert (=> b!6793110 m!7539164))

(assert (=> b!6793110 m!7540072))

(assert (=> b!6793110 m!7539236))

(assert (=> b!6793110 m!7540072))

(declare-fun m!7540352 () Bool)

(assert (=> b!6793110 m!7540352))

(assert (=> b!6793110 m!7539164))

(assert (=> b!6793110 m!7540082))

(assert (=> b!6793110 m!7540352))

(assert (=> b!6793110 m!7540082))

(declare-fun m!7540354 () Bool)

(assert (=> b!6793110 m!7540354))

(assert (=> b!6793111 m!7539164))

(assert (=> b!6793111 m!7540072))

(assert (=> b!6793106 m!7539164))

(assert (=> b!6793106 m!7540082))

(assert (=> b!6793106 m!7540082))

(assert (=> b!6793106 m!7540088))

(assert (=> bm!616890 m!7539164))

(assert (=> bm!616890 m!7539242))

(assert (=> d!2134420 m!7539164))

(assert (=> d!2134420 m!7539242))

(assert (=> d!2134420 m!7539236))

(declare-fun m!7540356 () Bool)

(assert (=> d!2134420 m!7540356))

(assert (=> b!6793102 m!7539164))

(assert (=> b!6793102 m!7540082))

(assert (=> b!6793102 m!7540082))

(assert (=> b!6793102 m!7540088))

(assert (=> b!6791928 d!2134420))

(declare-fun c!1262704 () Bool)

(declare-fun call!616897 () Regex!16613)

(declare-fun bm!616891 () Bool)

(assert (=> bm!616891 (= call!616897 (derivativeStep!5277 (ite c!1262704 (regOne!33739 lt!2446525) (regOne!33738 lt!2446525)) (head!13638 s!2326)))))

(declare-fun bm!616892 () Bool)

(declare-fun call!616899 () Regex!16613)

(declare-fun call!616898 () Regex!16613)

(assert (=> bm!616892 (= call!616899 call!616898)))

(declare-fun b!6793122 () Bool)

(declare-fun e!4100080 () Regex!16613)

(assert (=> b!6793122 (= e!4100080 (ite (= (head!13638 s!2326) (c!1262203 lt!2446525)) EmptyExpr!16613 EmptyLang!16613))))

(declare-fun bm!616893 () Bool)

(declare-fun call!616896 () Regex!16613)

(assert (=> bm!616893 (= call!616898 call!616896)))

(declare-fun b!6793123 () Bool)

(declare-fun c!1262703 () Bool)

(assert (=> b!6793123 (= c!1262703 (nullable!6592 (regOne!33738 lt!2446525)))))

(declare-fun e!4100079 () Regex!16613)

(declare-fun e!4100076 () Regex!16613)

(assert (=> b!6793123 (= e!4100079 e!4100076)))

(declare-fun b!6793124 () Bool)

(declare-fun e!4100077 () Regex!16613)

(assert (=> b!6793124 (= e!4100077 e!4100080)))

(declare-fun c!1262702 () Bool)

(assert (=> b!6793124 (= c!1262702 ((_ is ElementMatch!16613) lt!2446525))))

(declare-fun b!6793125 () Bool)

(assert (=> b!6793125 (= e!4100079 (Concat!25458 call!616898 lt!2446525))))

(declare-fun b!6793126 () Bool)

(assert (=> b!6793126 (= e!4100076 (Union!16613 (Concat!25458 call!616899 (regTwo!33738 lt!2446525)) EmptyLang!16613))))

(declare-fun c!1262701 () Bool)

(declare-fun bm!616894 () Bool)

(assert (=> bm!616894 (= call!616896 (derivativeStep!5277 (ite c!1262704 (regTwo!33739 lt!2446525) (ite c!1262701 (reg!16942 lt!2446525) (ite c!1262703 (regTwo!33738 lt!2446525) (regOne!33738 lt!2446525)))) (head!13638 s!2326)))))

(declare-fun b!6793127 () Bool)

(declare-fun e!4100078 () Regex!16613)

(assert (=> b!6793127 (= e!4100078 (Union!16613 call!616897 call!616896))))

(declare-fun b!6793128 () Bool)

(assert (=> b!6793128 (= e!4100076 (Union!16613 (Concat!25458 call!616897 (regTwo!33738 lt!2446525)) call!616899))))

(declare-fun b!6793129 () Bool)

(assert (=> b!6793129 (= c!1262704 ((_ is Union!16613) lt!2446525))))

(assert (=> b!6793129 (= e!4100080 e!4100078)))

(declare-fun d!2134424 () Bool)

(declare-fun lt!2446718 () Regex!16613)

(assert (=> d!2134424 (validRegex!8349 lt!2446718)))

(assert (=> d!2134424 (= lt!2446718 e!4100077)))

(declare-fun c!1262705 () Bool)

(assert (=> d!2134424 (= c!1262705 (or ((_ is EmptyExpr!16613) lt!2446525) ((_ is EmptyLang!16613) lt!2446525)))))

(assert (=> d!2134424 (validRegex!8349 lt!2446525)))

(assert (=> d!2134424 (= (derivativeStep!5277 lt!2446525 (head!13638 s!2326)) lt!2446718)))

(declare-fun b!6793130 () Bool)

(assert (=> b!6793130 (= e!4100077 EmptyLang!16613)))

(declare-fun b!6793131 () Bool)

(assert (=> b!6793131 (= e!4100078 e!4100079)))

(assert (=> b!6793131 (= c!1262701 ((_ is Star!16613) lt!2446525))))

(assert (= (and d!2134424 c!1262705) b!6793130))

(assert (= (and d!2134424 (not c!1262705)) b!6793124))

(assert (= (and b!6793124 c!1262702) b!6793122))

(assert (= (and b!6793124 (not c!1262702)) b!6793129))

(assert (= (and b!6793129 c!1262704) b!6793127))

(assert (= (and b!6793129 (not c!1262704)) b!6793131))

(assert (= (and b!6793131 c!1262701) b!6793125))

(assert (= (and b!6793131 (not c!1262701)) b!6793123))

(assert (= (and b!6793123 c!1262703) b!6793128))

(assert (= (and b!6793123 (not c!1262703)) b!6793126))

(assert (= (or b!6793128 b!6793126) bm!616892))

(assert (= (or b!6793125 bm!616892) bm!616893))

(assert (= (or b!6793127 bm!616893) bm!616894))

(assert (= (or b!6793127 b!6793128) bm!616891))

(assert (=> bm!616891 m!7539160))

(declare-fun m!7540372 () Bool)

(assert (=> bm!616891 m!7540372))

(declare-fun m!7540374 () Bool)

(assert (=> b!6793123 m!7540374))

(assert (=> bm!616894 m!7539160))

(declare-fun m!7540376 () Bool)

(assert (=> bm!616894 m!7540376))

(declare-fun m!7540378 () Bool)

(assert (=> d!2134424 m!7540378))

(assert (=> d!2134424 m!7539244))

(assert (=> b!6791928 d!2134424))

(assert (=> b!6791928 d!2134190))

(assert (=> b!6791928 d!2134264))

(declare-fun b!6793132 () Bool)

(declare-fun e!4100081 () Bool)

(declare-fun e!4100084 () Bool)

(assert (=> b!6793132 (= e!4100081 e!4100084)))

(declare-fun res!2776292 () Bool)

(assert (=> b!6793132 (=> (not res!2776292) (not e!4100084))))

(declare-fun call!616901 () Bool)

(assert (=> b!6793132 (= res!2776292 call!616901)))

(declare-fun b!6793133 () Bool)

(declare-fun res!2776291 () Bool)

(assert (=> b!6793133 (=> res!2776291 e!4100081)))

(assert (=> b!6793133 (= res!2776291 (not ((_ is Concat!25458) lt!2446612)))))

(declare-fun e!4100083 () Bool)

(assert (=> b!6793133 (= e!4100083 e!4100081)))

(declare-fun call!616900 () Bool)

(declare-fun bm!616895 () Bool)

(declare-fun c!1262707 () Bool)

(declare-fun c!1262706 () Bool)

(assert (=> bm!616895 (= call!616900 (validRegex!8349 (ite c!1262706 (reg!16942 lt!2446612) (ite c!1262707 (regTwo!33739 lt!2446612) (regTwo!33738 lt!2446612)))))))

(declare-fun d!2134440 () Bool)

(declare-fun res!2776294 () Bool)

(declare-fun e!4100082 () Bool)

(assert (=> d!2134440 (=> res!2776294 e!4100082)))

(assert (=> d!2134440 (= res!2776294 ((_ is ElementMatch!16613) lt!2446612))))

(assert (=> d!2134440 (= (validRegex!8349 lt!2446612) e!4100082)))

(declare-fun bm!616896 () Bool)

(declare-fun call!616902 () Bool)

(assert (=> bm!616896 (= call!616902 call!616900)))

(declare-fun b!6793134 () Bool)

(assert (=> b!6793134 (= e!4100084 call!616902)))

(declare-fun b!6793135 () Bool)

(declare-fun e!4100085 () Bool)

(declare-fun e!4100087 () Bool)

(assert (=> b!6793135 (= e!4100085 e!4100087)))

(declare-fun res!2776293 () Bool)

(assert (=> b!6793135 (= res!2776293 (not (nullable!6592 (reg!16942 lt!2446612))))))

(assert (=> b!6793135 (=> (not res!2776293) (not e!4100087))))

(declare-fun b!6793136 () Bool)

(declare-fun e!4100086 () Bool)

(assert (=> b!6793136 (= e!4100086 call!616902)))

(declare-fun b!6793137 () Bool)

(assert (=> b!6793137 (= e!4100087 call!616900)))

(declare-fun bm!616897 () Bool)

(assert (=> bm!616897 (= call!616901 (validRegex!8349 (ite c!1262707 (regOne!33739 lt!2446612) (regOne!33738 lt!2446612))))))

(declare-fun b!6793138 () Bool)

(assert (=> b!6793138 (= e!4100082 e!4100085)))

(assert (=> b!6793138 (= c!1262706 ((_ is Star!16613) lt!2446612))))

(declare-fun b!6793139 () Bool)

(declare-fun res!2776290 () Bool)

(assert (=> b!6793139 (=> (not res!2776290) (not e!4100086))))

(assert (=> b!6793139 (= res!2776290 call!616901)))

(assert (=> b!6793139 (= e!4100083 e!4100086)))

(declare-fun b!6793140 () Bool)

(assert (=> b!6793140 (= e!4100085 e!4100083)))

(assert (=> b!6793140 (= c!1262707 ((_ is Union!16613) lt!2446612))))

(assert (= (and d!2134440 (not res!2776294)) b!6793138))

(assert (= (and b!6793138 c!1262706) b!6793135))

(assert (= (and b!6793138 (not c!1262706)) b!6793140))

(assert (= (and b!6793135 res!2776293) b!6793137))

(assert (= (and b!6793140 c!1262707) b!6793139))

(assert (= (and b!6793140 (not c!1262707)) b!6793133))

(assert (= (and b!6793139 res!2776290) b!6793136))

(assert (= (and b!6793133 (not res!2776291)) b!6793132))

(assert (= (and b!6793132 res!2776292) b!6793134))

(assert (= (or b!6793136 b!6793134) bm!616896))

(assert (= (or b!6793139 b!6793132) bm!616897))

(assert (= (or b!6793137 bm!616896) bm!616895))

(declare-fun m!7540380 () Bool)

(assert (=> bm!616895 m!7540380))

(declare-fun m!7540382 () Bool)

(assert (=> b!6793135 m!7540382))

(declare-fun m!7540384 () Bool)

(assert (=> bm!616897 m!7540384))

(assert (=> d!2133920 d!2134440))

(declare-fun bs!1810071 () Bool)

(declare-fun d!2134442 () Bool)

(assert (= bs!1810071 (and d!2134442 d!2133858)))

(declare-fun lambda!382801 () Int)

(assert (=> bs!1810071 (= lambda!382801 lambda!382690)))

(declare-fun bs!1810072 () Bool)

(assert (= bs!1810072 (and d!2134442 d!2133890)))

(assert (=> bs!1810072 (= lambda!382801 lambda!382704)))

(declare-fun bs!1810073 () Bool)

(assert (= bs!1810073 (and d!2134442 d!2134412)))

(assert (=> bs!1810073 (= lambda!382801 lambda!382800)))

(declare-fun bs!1810074 () Bool)

(assert (= bs!1810074 (and d!2134442 d!2133774)))

(assert (=> bs!1810074 (= lambda!382801 lambda!382664)))

(declare-fun bs!1810075 () Bool)

(assert (= bs!1810075 (and d!2134442 d!2133974)))

(assert (=> bs!1810075 (= lambda!382801 lambda!382743)))

(declare-fun bs!1810076 () Bool)

(assert (= bs!1810076 (and d!2134442 d!2134128)))

(assert (=> bs!1810076 (= lambda!382801 lambda!382763)))

(declare-fun bs!1810077 () Bool)

(assert (= bs!1810077 (and d!2134442 b!6791309)))

(assert (=> bs!1810077 (= lambda!382801 lambda!382661)))

(declare-fun bs!1810078 () Bool)

(assert (= bs!1810078 (and d!2134442 d!2134246)))

(assert (=> bs!1810078 (= lambda!382801 lambda!382779)))

(declare-fun bs!1810079 () Bool)

(assert (= bs!1810079 (and d!2134442 d!2133910)))

(assert (=> bs!1810079 (= lambda!382801 lambda!382705)))

(declare-fun bs!1810080 () Bool)

(assert (= bs!1810080 (and d!2134442 d!2133778)))

(assert (=> bs!1810080 (= lambda!382801 lambda!382667)))

(declare-fun bs!1810081 () Bool)

(assert (= bs!1810081 (and d!2134442 d!2134230)))

(assert (=> bs!1810081 (= lambda!382801 lambda!382777)))

(declare-fun b!6793141 () Bool)

(declare-fun e!4100090 () Bool)

(declare-fun lt!2446719 () Regex!16613)

(assert (=> b!6793141 (= e!4100090 (isUnion!1408 lt!2446719))))

(declare-fun b!6793142 () Bool)

(declare-fun e!4100093 () Regex!16613)

(assert (=> b!6793142 (= e!4100093 (Union!16613 (h!72462 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))) (generalisedUnion!2457 (t!379861 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))))))))

(declare-fun b!6793143 () Bool)

(declare-fun e!4100091 () Regex!16613)

(assert (=> b!6793143 (= e!4100091 e!4100093)))

(declare-fun c!1262711 () Bool)

(assert (=> b!6793143 (= c!1262711 ((_ is Cons!66014) (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))))))

(declare-fun e!4100092 () Bool)

(assert (=> d!2134442 e!4100092))

(declare-fun res!2776296 () Bool)

(assert (=> d!2134442 (=> (not res!2776296) (not e!4100092))))

(assert (=> d!2134442 (= res!2776296 (validRegex!8349 lt!2446719))))

(assert (=> d!2134442 (= lt!2446719 e!4100091)))

(declare-fun c!1262708 () Bool)

(declare-fun e!4100089 () Bool)

(assert (=> d!2134442 (= c!1262708 e!4100089)))

(declare-fun res!2776295 () Bool)

(assert (=> d!2134442 (=> (not res!2776295) (not e!4100089))))

(assert (=> d!2134442 (= res!2776295 ((_ is Cons!66014) (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))))))

(assert (=> d!2134442 (forall!15805 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016)) lambda!382801)))

(assert (=> d!2134442 (= (generalisedUnion!2457 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))) lt!2446719)))

(declare-fun b!6793144 () Bool)

(assert (=> b!6793144 (= e!4100091 (h!72462 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))))))

(declare-fun b!6793145 () Bool)

(declare-fun e!4100088 () Bool)

(assert (=> b!6793145 (= e!4100092 e!4100088)))

(declare-fun c!1262710 () Bool)

(assert (=> b!6793145 (= c!1262710 (isEmpty!38388 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016))))))

(declare-fun b!6793146 () Bool)

(assert (=> b!6793146 (= e!4100088 e!4100090)))

(declare-fun c!1262709 () Bool)

(assert (=> b!6793146 (= c!1262709 (isEmpty!38388 (tail!12722 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016)))))))

(declare-fun b!6793147 () Bool)

(assert (=> b!6793147 (= e!4100089 (isEmpty!38388 (t!379861 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016)))))))

(declare-fun b!6793148 () Bool)

(assert (=> b!6793148 (= e!4100090 (= lt!2446719 (head!13637 (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016)))))))

(declare-fun b!6793149 () Bool)

(assert (=> b!6793149 (= e!4100093 EmptyLang!16613)))

(declare-fun b!6793150 () Bool)

(assert (=> b!6793150 (= e!4100088 (isEmptyLang!1978 lt!2446719))))

(assert (= (and d!2134442 res!2776295) b!6793147))

(assert (= (and d!2134442 c!1262708) b!6793144))

(assert (= (and d!2134442 (not c!1262708)) b!6793143))

(assert (= (and b!6793143 c!1262711) b!6793142))

(assert (= (and b!6793143 (not c!1262711)) b!6793149))

(assert (= (and d!2134442 res!2776296) b!6793145))

(assert (= (and b!6793145 c!1262710) b!6793150))

(assert (= (and b!6793145 (not c!1262710)) b!6793146))

(assert (= (and b!6793146 c!1262709) b!6793148))

(assert (= (and b!6793146 (not c!1262709)) b!6793141))

(assert (=> b!6793145 m!7539192))

(declare-fun m!7540386 () Bool)

(assert (=> b!6793145 m!7540386))

(declare-fun m!7540388 () Bool)

(assert (=> b!6793141 m!7540388))

(assert (=> b!6793148 m!7539192))

(declare-fun m!7540390 () Bool)

(assert (=> b!6793148 m!7540390))

(declare-fun m!7540392 () Bool)

(assert (=> b!6793147 m!7540392))

(declare-fun m!7540394 () Bool)

(assert (=> b!6793150 m!7540394))

(assert (=> b!6793146 m!7539192))

(declare-fun m!7540396 () Bool)

(assert (=> b!6793146 m!7540396))

(assert (=> b!6793146 m!7540396))

(declare-fun m!7540398 () Bool)

(assert (=> b!6793146 m!7540398))

(declare-fun m!7540400 () Bool)

(assert (=> d!2134442 m!7540400))

(assert (=> d!2134442 m!7539192))

(declare-fun m!7540402 () Bool)

(assert (=> d!2134442 m!7540402))

(declare-fun m!7540404 () Bool)

(assert (=> b!6793142 m!7540404))

(assert (=> d!2133920 d!2134442))

(declare-fun bs!1810082 () Bool)

(declare-fun d!2134444 () Bool)

(assert (= bs!1810082 (and d!2134444 d!2133858)))

(declare-fun lambda!382802 () Int)

(assert (=> bs!1810082 (= lambda!382802 lambda!382690)))

(declare-fun bs!1810083 () Bool)

(assert (= bs!1810083 (and d!2134444 d!2133890)))

(assert (=> bs!1810083 (= lambda!382802 lambda!382704)))

(declare-fun bs!1810084 () Bool)

(assert (= bs!1810084 (and d!2134444 d!2134412)))

(assert (=> bs!1810084 (= lambda!382802 lambda!382800)))

(declare-fun bs!1810085 () Bool)

(assert (= bs!1810085 (and d!2134444 d!2133774)))

(assert (=> bs!1810085 (= lambda!382802 lambda!382664)))

(declare-fun bs!1810086 () Bool)

(assert (= bs!1810086 (and d!2134444 d!2133974)))

(assert (=> bs!1810086 (= lambda!382802 lambda!382743)))

(declare-fun bs!1810087 () Bool)

(assert (= bs!1810087 (and d!2134444 d!2134442)))

(assert (=> bs!1810087 (= lambda!382802 lambda!382801)))

(declare-fun bs!1810088 () Bool)

(assert (= bs!1810088 (and d!2134444 d!2134128)))

(assert (=> bs!1810088 (= lambda!382802 lambda!382763)))

(declare-fun bs!1810089 () Bool)

(assert (= bs!1810089 (and d!2134444 b!6791309)))

(assert (=> bs!1810089 (= lambda!382802 lambda!382661)))

(declare-fun bs!1810090 () Bool)

(assert (= bs!1810090 (and d!2134444 d!2134246)))

(assert (=> bs!1810090 (= lambda!382802 lambda!382779)))

(declare-fun bs!1810091 () Bool)

(assert (= bs!1810091 (and d!2134444 d!2133910)))

(assert (=> bs!1810091 (= lambda!382802 lambda!382705)))

(declare-fun bs!1810092 () Bool)

(assert (= bs!1810092 (and d!2134444 d!2133778)))

(assert (=> bs!1810092 (= lambda!382802 lambda!382667)))

(declare-fun bs!1810093 () Bool)

(assert (= bs!1810093 (and d!2134444 d!2134230)))

(assert (=> bs!1810093 (= lambda!382802 lambda!382777)))

(declare-fun lt!2446720 () List!66138)

(assert (=> d!2134444 (forall!15805 lt!2446720 lambda!382802)))

(declare-fun e!4100094 () List!66138)

(assert (=> d!2134444 (= lt!2446720 e!4100094)))

(declare-fun c!1262712 () Bool)

(assert (=> d!2134444 (= c!1262712 ((_ is Cons!66016) (Cons!66016 lt!2446529 Nil!66016)))))

(assert (=> d!2134444 (= (unfocusZipperList!2034 (Cons!66016 lt!2446529 Nil!66016)) lt!2446720)))

(declare-fun b!6793151 () Bool)

(assert (=> b!6793151 (= e!4100094 (Cons!66014 (generalisedConcat!2210 (exprs!6497 (h!72464 (Cons!66016 lt!2446529 Nil!66016)))) (unfocusZipperList!2034 (t!379863 (Cons!66016 lt!2446529 Nil!66016)))))))

(declare-fun b!6793152 () Bool)

(assert (=> b!6793152 (= e!4100094 Nil!66014)))

(assert (= (and d!2134444 c!1262712) b!6793151))

(assert (= (and d!2134444 (not c!1262712)) b!6793152))

(declare-fun m!7540406 () Bool)

(assert (=> d!2134444 m!7540406))

(declare-fun m!7540408 () Bool)

(assert (=> b!6793151 m!7540408))

(declare-fun m!7540410 () Bool)

(assert (=> b!6793151 m!7540410))

(assert (=> d!2133920 d!2134444))

(declare-fun d!2134446 () Bool)

(assert (=> d!2134446 (= (Exists!3681 lambda!382738) (choose!50606 lambda!382738))))

(declare-fun bs!1810094 () Bool)

(assert (= bs!1810094 d!2134446))

(declare-fun m!7540412 () Bool)

(assert (=> bs!1810094 m!7540412))

(assert (=> d!2133960 d!2134446))

(declare-fun d!2134448 () Bool)

(assert (=> d!2134448 (= (Exists!3681 lambda!382739) (choose!50606 lambda!382739))))

(declare-fun bs!1810095 () Bool)

(assert (= bs!1810095 d!2134448))

(declare-fun m!7540414 () Bool)

(assert (=> bs!1810095 m!7540414))

(assert (=> d!2133960 d!2134448))

(declare-fun bs!1810096 () Bool)

(declare-fun d!2134450 () Bool)

(assert (= bs!1810096 (and d!2134450 d!2133960)))

(declare-fun lambda!382807 () Int)

(assert (=> bs!1810096 (= lambda!382807 lambda!382738)))

(declare-fun bs!1810097 () Bool)

(assert (= bs!1810097 (and d!2134450 d!2133972)))

(assert (=> bs!1810097 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382807 lambda!382742))))

(declare-fun bs!1810098 () Bool)

(assert (= bs!1810098 (and d!2134450 b!6792505)))

(assert (=> bs!1810098 (not (= lambda!382807 lambda!382771))))

(declare-fun bs!1810099 () Bool)

(assert (= bs!1810099 (and d!2134450 d!2133958)))

(assert (=> bs!1810099 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382807 lambda!382732))))

(declare-fun bs!1810100 () Bool)

(assert (= bs!1810100 (and d!2134450 b!6792685)))

(assert (=> bs!1810100 (not (= lambda!382807 lambda!382785))))

(declare-fun bs!1810101 () Bool)

(assert (= bs!1810101 (and d!2134450 b!6792048)))

(assert (=> bs!1810101 (not (= lambda!382807 lambda!382744))))

(declare-fun bs!1810102 () Bool)

(assert (= bs!1810102 (and d!2134450 b!6791842)))

(assert (=> bs!1810102 (not (= lambda!382807 lambda!382726))))

(declare-fun bs!1810103 () Bool)

(assert (= bs!1810103 (and d!2134450 b!6791299)))

(assert (=> bs!1810103 (not (= lambda!382807 lambda!382658))))

(declare-fun bs!1810104 () Bool)

(assert (= bs!1810104 (and d!2134450 b!6792497)))

(assert (=> bs!1810104 (not (= lambda!382807 lambda!382773))))

(assert (=> bs!1810099 (not (= lambda!382807 lambda!382733))))

(declare-fun bs!1810105 () Bool)

(assert (= bs!1810105 (and d!2134450 b!6792717)))

(assert (=> bs!1810105 (not (= lambda!382807 lambda!382789))))

(declare-fun bs!1810106 () Bool)

(assert (= bs!1810106 (and d!2134450 b!6792693)))

(assert (=> bs!1810106 (not (= lambda!382807 lambda!382783))))

(assert (=> bs!1810103 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382807 lambda!382656))))

(assert (=> bs!1810103 (not (= lambda!382807 lambda!382657))))

(declare-fun bs!1810107 () Bool)

(assert (= bs!1810107 (and d!2134450 b!6792725)))

(assert (=> bs!1810107 (not (= lambda!382807 lambda!382788))))

(declare-fun bs!1810108 () Bool)

(assert (= bs!1810108 (and d!2134450 b!6792040)))

(assert (=> bs!1810108 (not (= lambda!382807 lambda!382745))))

(declare-fun bs!1810109 () Bool)

(assert (= bs!1810109 (and d!2134450 b!6791834)))

(assert (=> bs!1810109 (not (= lambda!382807 lambda!382727))))

(assert (=> bs!1810096 (not (= lambda!382807 lambda!382739))))

(assert (=> d!2134450 true))

(assert (=> d!2134450 true))

(declare-fun lambda!382808 () Int)

(assert (=> bs!1810097 (not (= lambda!382808 lambda!382742))))

(assert (=> bs!1810098 (= (and (= (reg!16942 r!7292) (reg!16942 (regTwo!33739 r!7292))) (= (Star!16613 (reg!16942 r!7292)) (regTwo!33739 r!7292))) (= lambda!382808 lambda!382771))))

(assert (=> bs!1810099 (not (= lambda!382808 lambda!382732))))

(assert (=> bs!1810100 (not (= lambda!382808 lambda!382785))))

(assert (=> bs!1810101 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382808 lambda!382744))))

(assert (=> bs!1810102 (= (and (= (reg!16942 r!7292) (reg!16942 lt!2446525)) (= (Star!16613 (reg!16942 r!7292)) lt!2446525)) (= lambda!382808 lambda!382726))))

(assert (=> bs!1810103 (not (= lambda!382808 lambda!382658))))

(assert (=> bs!1810104 (not (= lambda!382808 lambda!382773))))

(assert (=> bs!1810099 (not (= lambda!382808 lambda!382733))))

(assert (=> bs!1810105 (not (= lambda!382808 lambda!382789))))

(assert (=> bs!1810106 (= (and (= (reg!16942 r!7292) (reg!16942 (regOne!33739 r!7292))) (= (Star!16613 (reg!16942 r!7292)) (regOne!33739 r!7292))) (= lambda!382808 lambda!382783))))

(assert (=> bs!1810103 (not (= lambda!382808 lambda!382656))))

(assert (=> bs!1810103 (= (= (Star!16613 (reg!16942 r!7292)) r!7292) (= lambda!382808 lambda!382657))))

(declare-fun bs!1810110 () Bool)

(assert (= bs!1810110 d!2134450))

(assert (=> bs!1810110 (not (= lambda!382808 lambda!382807))))

(assert (=> bs!1810096 (not (= lambda!382808 lambda!382738))))

(assert (=> bs!1810107 (= (and (= (reg!16942 r!7292) (reg!16942 (regTwo!33739 lt!2446525))) (= (Star!16613 (reg!16942 r!7292)) (regTwo!33739 lt!2446525))) (= lambda!382808 lambda!382788))))

(assert (=> bs!1810108 (not (= lambda!382808 lambda!382745))))

(assert (=> bs!1810109 (not (= lambda!382808 lambda!382727))))

(assert (=> bs!1810096 (= lambda!382808 lambda!382739)))

(assert (=> d!2134450 true))

(assert (=> d!2134450 true))

(assert (=> d!2134450 (= (Exists!3681 lambda!382807) (Exists!3681 lambda!382808))))

(assert (=> d!2134450 true))

(declare-fun _$91!800 () Unit!159917)

(assert (=> d!2134450 (= (choose!50605 (reg!16942 r!7292) s!2326) _$91!800)))

(declare-fun m!7540416 () Bool)

(assert (=> bs!1810110 m!7540416))

(declare-fun m!7540418 () Bool)

(assert (=> bs!1810110 m!7540418))

(assert (=> d!2133960 d!2134450))

(assert (=> d!2133960 d!2134408))

(declare-fun b!6793163 () Bool)

(declare-fun e!4100099 () Bool)

(declare-fun e!4100102 () Bool)

(assert (=> b!6793163 (= e!4100099 e!4100102)))

(declare-fun res!2776309 () Bool)

(assert (=> b!6793163 (=> (not res!2776309) (not e!4100102))))

(declare-fun call!616904 () Bool)

(assert (=> b!6793163 (= res!2776309 call!616904)))

(declare-fun b!6793164 () Bool)

(declare-fun res!2776308 () Bool)

(assert (=> b!6793164 (=> res!2776308 e!4100099)))

(assert (=> b!6793164 (= res!2776308 (not ((_ is Concat!25458) (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292))))))))

(declare-fun e!4100101 () Bool)

(assert (=> b!6793164 (= e!4100101 e!4100099)))

(declare-fun call!616903 () Bool)

(declare-fun c!1262713 () Bool)

(declare-fun bm!616898 () Bool)

(declare-fun c!1262714 () Bool)

(assert (=> bm!616898 (= call!616903 (validRegex!8349 (ite c!1262713 (reg!16942 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))) (ite c!1262714 (regTwo!33739 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))) (regTwo!33738 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292))))))))))

(declare-fun d!2134452 () Bool)

(declare-fun res!2776311 () Bool)

(declare-fun e!4100100 () Bool)

(assert (=> d!2134452 (=> res!2776311 e!4100100)))

(assert (=> d!2134452 (= res!2776311 ((_ is ElementMatch!16613) (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))))))

(assert (=> d!2134452 (= (validRegex!8349 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))) e!4100100)))

(declare-fun bm!616899 () Bool)

(declare-fun call!616905 () Bool)

(assert (=> bm!616899 (= call!616905 call!616903)))

(declare-fun b!6793165 () Bool)

(assert (=> b!6793165 (= e!4100102 call!616905)))

(declare-fun b!6793166 () Bool)

(declare-fun e!4100103 () Bool)

(declare-fun e!4100105 () Bool)

(assert (=> b!6793166 (= e!4100103 e!4100105)))

(declare-fun res!2776310 () Bool)

(assert (=> b!6793166 (= res!2776310 (not (nullable!6592 (reg!16942 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))))))))

(assert (=> b!6793166 (=> (not res!2776310) (not e!4100105))))

(declare-fun b!6793167 () Bool)

(declare-fun e!4100104 () Bool)

(assert (=> b!6793167 (= e!4100104 call!616905)))

(declare-fun b!6793168 () Bool)

(assert (=> b!6793168 (= e!4100105 call!616903)))

(declare-fun bm!616900 () Bool)

(assert (=> bm!616900 (= call!616904 (validRegex!8349 (ite c!1262714 (regOne!33739 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))) (regOne!33738 (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))))))))

(declare-fun b!6793169 () Bool)

(assert (=> b!6793169 (= e!4100100 e!4100103)))

(assert (=> b!6793169 (= c!1262713 ((_ is Star!16613) (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))))))

(declare-fun b!6793170 () Bool)

(declare-fun res!2776307 () Bool)

(assert (=> b!6793170 (=> (not res!2776307) (not e!4100104))))

(assert (=> b!6793170 (= res!2776307 call!616904)))

(assert (=> b!6793170 (= e!4100101 e!4100104)))

(declare-fun b!6793171 () Bool)

(assert (=> b!6793171 (= e!4100103 e!4100101)))

(assert (=> b!6793171 (= c!1262714 ((_ is Union!16613) (ite c!1262424 (reg!16942 r!7292) (ite c!1262425 (regTwo!33739 r!7292) (regTwo!33738 r!7292)))))))

(assert (= (and d!2134452 (not res!2776311)) b!6793169))

(assert (= (and b!6793169 c!1262713) b!6793166))

(assert (= (and b!6793169 (not c!1262713)) b!6793171))

(assert (= (and b!6793166 res!2776310) b!6793168))

(assert (= (and b!6793171 c!1262714) b!6793170))

(assert (= (and b!6793171 (not c!1262714)) b!6793164))

(assert (= (and b!6793170 res!2776307) b!6793167))

(assert (= (and b!6793164 (not res!2776308)) b!6793163))

(assert (= (and b!6793163 res!2776309) b!6793165))

(assert (= (or b!6793167 b!6793165) bm!616899))

(assert (= (or b!6793170 b!6793163) bm!616900))

(assert (= (or b!6793168 bm!616899) bm!616898))

(declare-fun m!7540420 () Bool)

(assert (=> bm!616898 m!7540420))

(declare-fun m!7540422 () Bool)

(assert (=> b!6793166 m!7540422))

(declare-fun m!7540424 () Bool)

(assert (=> bm!616900 m!7540424))

(assert (=> bm!616710 d!2134452))

(declare-fun d!2134454 () Bool)

(assert (=> d!2134454 true))

(declare-fun setRes!46515 () Bool)

(assert (=> d!2134454 setRes!46515))

(declare-fun condSetEmpty!46515 () Bool)

(declare-fun res!2776312 () (InoxSet Context!11994))

(assert (=> d!2134454 (= condSetEmpty!46515 (= res!2776312 ((as const (Array Context!11994 Bool)) false)))))

(assert (=> d!2134454 (= (choose!50600 lt!2446535 lambda!382659) res!2776312)))

(declare-fun setIsEmpty!46515 () Bool)

(assert (=> setIsEmpty!46515 setRes!46515))

(declare-fun setElem!46515 () Context!11994)

(declare-fun setNonEmpty!46515 () Bool)

(declare-fun e!4100106 () Bool)

(declare-fun tp!1860341 () Bool)

(assert (=> setNonEmpty!46515 (= setRes!46515 (and tp!1860341 (inv!84779 setElem!46515) e!4100106))))

(declare-fun setRest!46515 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46515 (= res!2776312 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46515 true) setRest!46515))))

(declare-fun b!6793172 () Bool)

(declare-fun tp!1860340 () Bool)

(assert (=> b!6793172 (= e!4100106 tp!1860340)))

(assert (= (and d!2134454 condSetEmpty!46515) setIsEmpty!46515))

(assert (= (and d!2134454 (not condSetEmpty!46515)) setNonEmpty!46515))

(assert (= setNonEmpty!46515 b!6793172))

(declare-fun m!7540426 () Bool)

(assert (=> setNonEmpty!46515 m!7540426))

(assert (=> d!2133888 d!2134454))

(assert (=> bs!1809610 d!2133882))

(declare-fun d!2134456 () Bool)

(assert (=> d!2134456 (= (isEmpty!38388 (t!379861 (exprs!6497 (h!72464 zl!343)))) ((_ is Nil!66014) (t!379861 (exprs!6497 (h!72464 zl!343)))))))

(assert (=> b!6791764 d!2134456))

(declare-fun d!2134458 () Bool)

(declare-fun res!2776313 () Bool)

(declare-fun e!4100107 () Bool)

(assert (=> d!2134458 (=> res!2776313 e!4100107)))

(assert (=> d!2134458 (= res!2776313 ((_ is Nil!66014) (exprs!6497 (h!72464 zl!343))))))

(assert (=> d!2134458 (= (forall!15805 (exprs!6497 (h!72464 zl!343)) lambda!382705) e!4100107)))

(declare-fun b!6793173 () Bool)

(declare-fun e!4100108 () Bool)

(assert (=> b!6793173 (= e!4100107 e!4100108)))

(declare-fun res!2776314 () Bool)

(assert (=> b!6793173 (=> (not res!2776314) (not e!4100108))))

(assert (=> b!6793173 (= res!2776314 (dynLambda!26352 lambda!382705 (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6793174 () Bool)

(assert (=> b!6793174 (= e!4100108 (forall!15805 (t!379861 (exprs!6497 (h!72464 zl!343))) lambda!382705))))

(assert (= (and d!2134458 (not res!2776313)) b!6793173))

(assert (= (and b!6793173 res!2776314) b!6793174))

(declare-fun b_lambda!255897 () Bool)

(assert (=> (not b_lambda!255897) (not b!6793173)))

(declare-fun m!7540428 () Bool)

(assert (=> b!6793173 m!7540428))

(declare-fun m!7540430 () Bool)

(assert (=> b!6793174 m!7540430))

(assert (=> d!2133910 d!2134458))

(declare-fun b!6793175 () Bool)

(declare-fun e!4100113 () (InoxSet Context!11994))

(declare-fun call!616908 () (InoxSet Context!11994))

(declare-fun call!616910 () (InoxSet Context!11994))

(assert (=> b!6793175 (= e!4100113 ((_ map or) call!616908 call!616910))))

(declare-fun d!2134460 () Bool)

(declare-fun c!1262716 () Bool)

(assert (=> d!2134460 (= c!1262716 (and ((_ is ElementMatch!16613) (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (= (c!1262203 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (h!72463 s!2326))))))

(declare-fun e!4100111 () (InoxSet Context!11994))

(assert (=> d!2134460 (= (derivationStepZipperDown!1841 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292))))) (ite (or c!1262409 c!1262408) lt!2446529 (Context!11995 call!616702)) (h!72463 s!2326)) e!4100111)))

(declare-fun bm!616901 () Bool)

(declare-fun call!616909 () List!66138)

(declare-fun call!616907 () List!66138)

(assert (=> bm!616901 (= call!616909 call!616907)))

(declare-fun b!6793176 () Bool)

(assert (=> b!6793176 (= e!4100111 (store ((as const (Array Context!11994 Bool)) false) (ite (or c!1262409 c!1262408) lt!2446529 (Context!11995 call!616702)) true))))

(declare-fun b!6793177 () Bool)

(declare-fun e!4100110 () (InoxSet Context!11994))

(declare-fun call!616911 () (InoxSet Context!11994))

(assert (=> b!6793177 (= e!4100110 ((_ map or) call!616908 call!616911))))

(declare-fun bm!616902 () Bool)

(assert (=> bm!616902 (= call!616911 call!616910)))

(declare-fun b!6793178 () Bool)

(declare-fun c!1262715 () Bool)

(assert (=> b!6793178 (= c!1262715 ((_ is Star!16613) (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))))))

(declare-fun e!4100109 () (InoxSet Context!11994))

(declare-fun e!4100112 () (InoxSet Context!11994))

(assert (=> b!6793178 (= e!4100109 e!4100112)))

(declare-fun b!6793179 () Bool)

(declare-fun call!616906 () (InoxSet Context!11994))

(assert (=> b!6793179 (= e!4100109 call!616906)))

(declare-fun b!6793180 () Bool)

(assert (=> b!6793180 (= e!4100110 e!4100109)))

(declare-fun c!1262719 () Bool)

(assert (=> b!6793180 (= c!1262719 ((_ is Concat!25458) (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))))))

(declare-fun b!6793181 () Bool)

(assert (=> b!6793181 (= e!4100112 call!616906)))

(declare-fun b!6793182 () Bool)

(assert (=> b!6793182 (= e!4100111 e!4100113)))

(declare-fun c!1262718 () Bool)

(assert (=> b!6793182 (= c!1262718 ((_ is Union!16613) (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))))))

(declare-fun bm!616903 () Bool)

(assert (=> bm!616903 (= call!616906 call!616911)))

(declare-fun b!6793183 () Bool)

(assert (=> b!6793183 (= e!4100112 ((as const (Array Context!11994 Bool)) false))))

(declare-fun e!4100114 () Bool)

(declare-fun b!6793184 () Bool)

(assert (=> b!6793184 (= e!4100114 (nullable!6592 (regOne!33738 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292))))))))))

(declare-fun bm!616904 () Bool)

(assert (=> bm!616904 (= call!616908 (derivationStepZipperDown!1841 (ite c!1262718 (regOne!33739 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (regOne!33738 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292))))))) (ite c!1262718 (ite (or c!1262409 c!1262408) lt!2446529 (Context!11995 call!616702)) (Context!11995 call!616907)) (h!72463 s!2326)))))

(declare-fun b!6793185 () Bool)

(declare-fun c!1262717 () Bool)

(assert (=> b!6793185 (= c!1262717 e!4100114)))

(declare-fun res!2776315 () Bool)

(assert (=> b!6793185 (=> (not res!2776315) (not e!4100114))))

(assert (=> b!6793185 (= res!2776315 ((_ is Concat!25458) (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))))))

(assert (=> b!6793185 (= e!4100113 e!4100110)))

(declare-fun bm!616905 () Bool)

(assert (=> bm!616905 (= call!616907 ($colon$colon!2422 (exprs!6497 (ite (or c!1262409 c!1262408) lt!2446529 (Context!11995 call!616702))) (ite (or c!1262717 c!1262719) (regTwo!33738 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292))))))))))

(declare-fun bm!616906 () Bool)

(assert (=> bm!616906 (= call!616910 (derivationStepZipperDown!1841 (ite c!1262718 (regTwo!33739 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (ite c!1262717 (regTwo!33738 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (ite c!1262719 (regOne!33738 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292)))))) (reg!16942 (ite c!1262409 (regTwo!33739 (reg!16942 r!7292)) (ite c!1262408 (regTwo!33738 (reg!16942 r!7292)) (ite c!1262410 (regOne!33738 (reg!16942 r!7292)) (reg!16942 (reg!16942 r!7292))))))))) (ite (or c!1262718 c!1262717) (ite (or c!1262409 c!1262408) lt!2446529 (Context!11995 call!616702)) (Context!11995 call!616909)) (h!72463 s!2326)))))

(assert (= (and d!2134460 c!1262716) b!6793176))

(assert (= (and d!2134460 (not c!1262716)) b!6793182))

(assert (= (and b!6793182 c!1262718) b!6793175))

(assert (= (and b!6793182 (not c!1262718)) b!6793185))

(assert (= (and b!6793185 res!2776315) b!6793184))

(assert (= (and b!6793185 c!1262717) b!6793177))

(assert (= (and b!6793185 (not c!1262717)) b!6793180))

(assert (= (and b!6793180 c!1262719) b!6793179))

(assert (= (and b!6793180 (not c!1262719)) b!6793178))

(assert (= (and b!6793178 c!1262715) b!6793181))

(assert (= (and b!6793178 (not c!1262715)) b!6793183))

(assert (= (or b!6793179 b!6793181) bm!616901))

(assert (= (or b!6793179 b!6793181) bm!616903))

(assert (= (or b!6793177 bm!616901) bm!616905))

(assert (= (or b!6793177 bm!616903) bm!616902))

(assert (= (or b!6793175 bm!616902) bm!616906))

(assert (= (or b!6793175 b!6793177) bm!616904))

(declare-fun m!7540432 () Bool)

(assert (=> bm!616904 m!7540432))

(declare-fun m!7540434 () Bool)

(assert (=> bm!616906 m!7540434))

(declare-fun m!7540436 () Bool)

(assert (=> b!6793184 m!7540436))

(declare-fun m!7540438 () Bool)

(assert (=> bm!616905 m!7540438))

(declare-fun m!7540440 () Bool)

(assert (=> b!6793176 m!7540440))

(assert (=> bm!616699 d!2134460))

(declare-fun b!6793186 () Bool)

(declare-fun e!4100115 () Bool)

(declare-fun e!4100118 () Bool)

(assert (=> b!6793186 (= e!4100115 e!4100118)))

(declare-fun res!2776318 () Bool)

(assert (=> b!6793186 (=> (not res!2776318) (not e!4100118))))

(declare-fun call!616913 () Bool)

(assert (=> b!6793186 (= res!2776318 call!616913)))

(declare-fun b!6793187 () Bool)

(declare-fun res!2776317 () Bool)

(assert (=> b!6793187 (=> res!2776317 e!4100115)))

(assert (=> b!6793187 (= res!2776317 (not ((_ is Concat!25458) lt!2446541)))))

(declare-fun e!4100117 () Bool)

(assert (=> b!6793187 (= e!4100117 e!4100115)))

(declare-fun call!616912 () Bool)

(declare-fun bm!616907 () Bool)

(declare-fun c!1262721 () Bool)

(declare-fun c!1262720 () Bool)

(assert (=> bm!616907 (= call!616912 (validRegex!8349 (ite c!1262720 (reg!16942 lt!2446541) (ite c!1262721 (regTwo!33739 lt!2446541) (regTwo!33738 lt!2446541)))))))

(declare-fun d!2134462 () Bool)

(declare-fun res!2776320 () Bool)

(declare-fun e!4100116 () Bool)

(assert (=> d!2134462 (=> res!2776320 e!4100116)))

(assert (=> d!2134462 (= res!2776320 ((_ is ElementMatch!16613) lt!2446541))))

(assert (=> d!2134462 (= (validRegex!8349 lt!2446541) e!4100116)))

(declare-fun bm!616908 () Bool)

(declare-fun call!616914 () Bool)

(assert (=> bm!616908 (= call!616914 call!616912)))

(declare-fun b!6793188 () Bool)

(assert (=> b!6793188 (= e!4100118 call!616914)))

(declare-fun b!6793189 () Bool)

(declare-fun e!4100119 () Bool)

(declare-fun e!4100121 () Bool)

(assert (=> b!6793189 (= e!4100119 e!4100121)))

(declare-fun res!2776319 () Bool)

(assert (=> b!6793189 (= res!2776319 (not (nullable!6592 (reg!16942 lt!2446541))))))

(assert (=> b!6793189 (=> (not res!2776319) (not e!4100121))))

(declare-fun b!6793190 () Bool)

(declare-fun e!4100120 () Bool)

(assert (=> b!6793190 (= e!4100120 call!616914)))

(declare-fun b!6793191 () Bool)

(assert (=> b!6793191 (= e!4100121 call!616912)))

(declare-fun bm!616909 () Bool)

(assert (=> bm!616909 (= call!616913 (validRegex!8349 (ite c!1262721 (regOne!33739 lt!2446541) (regOne!33738 lt!2446541))))))

(declare-fun b!6793192 () Bool)

(assert (=> b!6793192 (= e!4100116 e!4100119)))

(assert (=> b!6793192 (= c!1262720 ((_ is Star!16613) lt!2446541))))

(declare-fun b!6793193 () Bool)

(declare-fun res!2776316 () Bool)

(assert (=> b!6793193 (=> (not res!2776316) (not e!4100120))))

(assert (=> b!6793193 (= res!2776316 call!616913)))

(assert (=> b!6793193 (= e!4100117 e!4100120)))

(declare-fun b!6793194 () Bool)

(assert (=> b!6793194 (= e!4100119 e!4100117)))

(assert (=> b!6793194 (= c!1262721 ((_ is Union!16613) lt!2446541))))

(assert (= (and d!2134462 (not res!2776320)) b!6793192))

(assert (= (and b!6793192 c!1262720) b!6793189))

(assert (= (and b!6793192 (not c!1262720)) b!6793194))

(assert (= (and b!6793189 res!2776319) b!6793191))

(assert (= (and b!6793194 c!1262721) b!6793193))

(assert (= (and b!6793194 (not c!1262721)) b!6793187))

(assert (= (and b!6793193 res!2776316) b!6793190))

(assert (= (and b!6793187 (not res!2776317)) b!6793186))

(assert (= (and b!6793186 res!2776318) b!6793188))

(assert (= (or b!6793190 b!6793188) bm!616908))

(assert (= (or b!6793193 b!6793186) bm!616909))

(assert (= (or b!6793191 bm!616908) bm!616907))

(declare-fun m!7540442 () Bool)

(assert (=> bm!616907 m!7540442))

(declare-fun m!7540444 () Bool)

(assert (=> b!6793189 m!7540444))

(declare-fun m!7540446 () Bool)

(assert (=> bm!616909 m!7540446))

(assert (=> d!2133772 d!2134462))

(assert (=> d!2133772 d!2133774))

(assert (=> d!2133772 d!2133778))

(declare-fun b!6793195 () Bool)

(declare-fun e!4100126 () (InoxSet Context!11994))

(declare-fun call!616917 () (InoxSet Context!11994))

(declare-fun call!616919 () (InoxSet Context!11994))

(assert (=> b!6793195 (= e!4100126 ((_ map or) call!616917 call!616919))))

(declare-fun d!2134464 () Bool)

(declare-fun c!1262723 () Bool)

(assert (=> d!2134464 (= c!1262723 (and ((_ is ElementMatch!16613) (h!72462 (exprs!6497 lt!2446524))) (= (c!1262203 (h!72462 (exprs!6497 lt!2446524))) (h!72463 s!2326))))))

(declare-fun e!4100124 () (InoxSet Context!11994))

(assert (=> d!2134464 (= (derivationStepZipperDown!1841 (h!72462 (exprs!6497 lt!2446524)) (Context!11995 (t!379861 (exprs!6497 lt!2446524))) (h!72463 s!2326)) e!4100124)))

(declare-fun bm!616910 () Bool)

(declare-fun call!616918 () List!66138)

(declare-fun call!616916 () List!66138)

(assert (=> bm!616910 (= call!616918 call!616916)))

(declare-fun b!6793196 () Bool)

(assert (=> b!6793196 (= e!4100124 (store ((as const (Array Context!11994 Bool)) false) (Context!11995 (t!379861 (exprs!6497 lt!2446524))) true))))

(declare-fun b!6793197 () Bool)

(declare-fun e!4100123 () (InoxSet Context!11994))

(declare-fun call!616920 () (InoxSet Context!11994))

(assert (=> b!6793197 (= e!4100123 ((_ map or) call!616917 call!616920))))

(declare-fun bm!616911 () Bool)

(assert (=> bm!616911 (= call!616920 call!616919)))

(declare-fun b!6793198 () Bool)

(declare-fun c!1262722 () Bool)

(assert (=> b!6793198 (= c!1262722 ((_ is Star!16613) (h!72462 (exprs!6497 lt!2446524))))))

(declare-fun e!4100122 () (InoxSet Context!11994))

(declare-fun e!4100125 () (InoxSet Context!11994))

(assert (=> b!6793198 (= e!4100122 e!4100125)))

(declare-fun b!6793199 () Bool)

(declare-fun call!616915 () (InoxSet Context!11994))

(assert (=> b!6793199 (= e!4100122 call!616915)))

(declare-fun b!6793200 () Bool)

(assert (=> b!6793200 (= e!4100123 e!4100122)))

(declare-fun c!1262726 () Bool)

(assert (=> b!6793200 (= c!1262726 ((_ is Concat!25458) (h!72462 (exprs!6497 lt!2446524))))))

(declare-fun b!6793201 () Bool)

(assert (=> b!6793201 (= e!4100125 call!616915)))

(declare-fun b!6793202 () Bool)

(assert (=> b!6793202 (= e!4100124 e!4100126)))

(declare-fun c!1262725 () Bool)

(assert (=> b!6793202 (= c!1262725 ((_ is Union!16613) (h!72462 (exprs!6497 lt!2446524))))))

(declare-fun bm!616912 () Bool)

(assert (=> bm!616912 (= call!616915 call!616920)))

(declare-fun b!6793203 () Bool)

(assert (=> b!6793203 (= e!4100125 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6793204 () Bool)

(declare-fun e!4100127 () Bool)

(assert (=> b!6793204 (= e!4100127 (nullable!6592 (regOne!33738 (h!72462 (exprs!6497 lt!2446524)))))))

(declare-fun bm!616913 () Bool)

(assert (=> bm!616913 (= call!616917 (derivationStepZipperDown!1841 (ite c!1262725 (regOne!33739 (h!72462 (exprs!6497 lt!2446524))) (regOne!33738 (h!72462 (exprs!6497 lt!2446524)))) (ite c!1262725 (Context!11995 (t!379861 (exprs!6497 lt!2446524))) (Context!11995 call!616916)) (h!72463 s!2326)))))

(declare-fun b!6793205 () Bool)

(declare-fun c!1262724 () Bool)

(assert (=> b!6793205 (= c!1262724 e!4100127)))

(declare-fun res!2776321 () Bool)

(assert (=> b!6793205 (=> (not res!2776321) (not e!4100127))))

(assert (=> b!6793205 (= res!2776321 ((_ is Concat!25458) (h!72462 (exprs!6497 lt!2446524))))))

(assert (=> b!6793205 (= e!4100126 e!4100123)))

(declare-fun bm!616914 () Bool)

(assert (=> bm!616914 (= call!616916 ($colon$colon!2422 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446524)))) (ite (or c!1262724 c!1262726) (regTwo!33738 (h!72462 (exprs!6497 lt!2446524))) (h!72462 (exprs!6497 lt!2446524)))))))

(declare-fun bm!616915 () Bool)

(assert (=> bm!616915 (= call!616919 (derivationStepZipperDown!1841 (ite c!1262725 (regTwo!33739 (h!72462 (exprs!6497 lt!2446524))) (ite c!1262724 (regTwo!33738 (h!72462 (exprs!6497 lt!2446524))) (ite c!1262726 (regOne!33738 (h!72462 (exprs!6497 lt!2446524))) (reg!16942 (h!72462 (exprs!6497 lt!2446524)))))) (ite (or c!1262725 c!1262724) (Context!11995 (t!379861 (exprs!6497 lt!2446524))) (Context!11995 call!616918)) (h!72463 s!2326)))))

(assert (= (and d!2134464 c!1262723) b!6793196))

(assert (= (and d!2134464 (not c!1262723)) b!6793202))

(assert (= (and b!6793202 c!1262725) b!6793195))

(assert (= (and b!6793202 (not c!1262725)) b!6793205))

(assert (= (and b!6793205 res!2776321) b!6793204))

(assert (= (and b!6793205 c!1262724) b!6793197))

(assert (= (and b!6793205 (not c!1262724)) b!6793200))

(assert (= (and b!6793200 c!1262726) b!6793199))

(assert (= (and b!6793200 (not c!1262726)) b!6793198))

(assert (= (and b!6793198 c!1262722) b!6793201))

(assert (= (and b!6793198 (not c!1262722)) b!6793203))

(assert (= (or b!6793199 b!6793201) bm!616910))

(assert (= (or b!6793199 b!6793201) bm!616912))

(assert (= (or b!6793197 bm!616910) bm!616914))

(assert (= (or b!6793197 bm!616912) bm!616911))

(assert (= (or b!6793195 bm!616911) bm!616915))

(assert (= (or b!6793195 b!6793197) bm!616913))

(declare-fun m!7540448 () Bool)

(assert (=> bm!616913 m!7540448))

(declare-fun m!7540450 () Bool)

(assert (=> bm!616915 m!7540450))

(declare-fun m!7540452 () Bool)

(assert (=> b!6793204 m!7540452))

(declare-fun m!7540454 () Bool)

(assert (=> bm!616914 m!7540454))

(declare-fun m!7540456 () Bool)

(assert (=> b!6793196 m!7540456))

(assert (=> bm!616700 d!2134464))

(assert (=> b!6792054 d!2134190))

(declare-fun d!2134466 () Bool)

(assert (=> d!2134466 (= (isEmpty!38385 (t!379862 s!2326)) ((_ is Nil!66015) (t!379862 s!2326)))))

(assert (=> d!2133914 d!2134466))

(assert (=> d!2133954 d!2133964))

(declare-fun bs!1810111 () Bool)

(declare-fun b!6793216 () Bool)

(assert (= bs!1810111 (and b!6793216 d!2133972)))

(declare-fun lambda!382809 () Int)

(assert (=> bs!1810111 (not (= lambda!382809 lambda!382742))))

(declare-fun bs!1810112 () Bool)

(assert (= bs!1810112 (and b!6793216 b!6792505)))

(assert (=> bs!1810112 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 (regTwo!33739 r!7292))) (= (regOne!33739 lt!2446525) (regTwo!33739 r!7292))) (= lambda!382809 lambda!382771))))

(declare-fun bs!1810113 () Bool)

(assert (= bs!1810113 (and b!6793216 d!2133958)))

(assert (=> bs!1810113 (not (= lambda!382809 lambda!382732))))

(declare-fun bs!1810114 () Bool)

(assert (= bs!1810114 (and b!6793216 b!6792685)))

(assert (=> bs!1810114 (not (= lambda!382809 lambda!382785))))

(declare-fun bs!1810115 () Bool)

(assert (= bs!1810115 (and b!6793216 b!6792048)))

(assert (=> bs!1810115 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 r!7292)) (= (regOne!33739 lt!2446525) r!7292)) (= lambda!382809 lambda!382744))))

(declare-fun bs!1810116 () Bool)

(assert (= bs!1810116 (and b!6793216 b!6791842)))

(assert (=> bs!1810116 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 lt!2446525)) (= (regOne!33739 lt!2446525) lt!2446525)) (= lambda!382809 lambda!382726))))

(declare-fun bs!1810117 () Bool)

(assert (= bs!1810117 (and b!6793216 b!6791299)))

(assert (=> bs!1810117 (not (= lambda!382809 lambda!382658))))

(declare-fun bs!1810118 () Bool)

(assert (= bs!1810118 (and b!6793216 b!6792497)))

(assert (=> bs!1810118 (not (= lambda!382809 lambda!382773))))

(assert (=> bs!1810113 (not (= lambda!382809 lambda!382733))))

(declare-fun bs!1810119 () Bool)

(assert (= bs!1810119 (and b!6793216 b!6792717)))

(assert (=> bs!1810119 (not (= lambda!382809 lambda!382789))))

(assert (=> bs!1810117 (not (= lambda!382809 lambda!382656))))

(assert (=> bs!1810117 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 r!7292)) (= (regOne!33739 lt!2446525) r!7292)) (= lambda!382809 lambda!382657))))

(declare-fun bs!1810120 () Bool)

(assert (= bs!1810120 (and b!6793216 d!2134450)))

(assert (=> bs!1810120 (not (= lambda!382809 lambda!382807))))

(declare-fun bs!1810121 () Bool)

(assert (= bs!1810121 (and b!6793216 d!2133960)))

(assert (=> bs!1810121 (not (= lambda!382809 lambda!382738))))

(declare-fun bs!1810122 () Bool)

(assert (= bs!1810122 (and b!6793216 b!6792725)))

(assert (=> bs!1810122 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 (regTwo!33739 lt!2446525))) (= (regOne!33739 lt!2446525) (regTwo!33739 lt!2446525))) (= lambda!382809 lambda!382788))))

(declare-fun bs!1810123 () Bool)

(assert (= bs!1810123 (and b!6793216 b!6792040)))

(assert (=> bs!1810123 (not (= lambda!382809 lambda!382745))))

(declare-fun bs!1810124 () Bool)

(assert (= bs!1810124 (and b!6793216 b!6792693)))

(assert (=> bs!1810124 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 (regOne!33739 r!7292))) (= (regOne!33739 lt!2446525) (regOne!33739 r!7292))) (= lambda!382809 lambda!382783))))

(assert (=> bs!1810120 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 r!7292)) (= (regOne!33739 lt!2446525) (Star!16613 (reg!16942 r!7292)))) (= lambda!382809 lambda!382808))))

(declare-fun bs!1810125 () Bool)

(assert (= bs!1810125 (and b!6793216 b!6791834)))

(assert (=> bs!1810125 (not (= lambda!382809 lambda!382727))))

(assert (=> bs!1810121 (= (and (= (reg!16942 (regOne!33739 lt!2446525)) (reg!16942 r!7292)) (= (regOne!33739 lt!2446525) (Star!16613 (reg!16942 r!7292)))) (= lambda!382809 lambda!382739))))

(assert (=> b!6793216 true))

(assert (=> b!6793216 true))

(declare-fun bs!1810126 () Bool)

(declare-fun b!6793208 () Bool)

(assert (= bs!1810126 (and b!6793208 b!6793216)))

(declare-fun lambda!382810 () Int)

(assert (=> bs!1810126 (not (= lambda!382810 lambda!382809))))

(declare-fun bs!1810127 () Bool)

(assert (= bs!1810127 (and b!6793208 d!2133972)))

(assert (=> bs!1810127 (not (= lambda!382810 lambda!382742))))

(declare-fun bs!1810128 () Bool)

(assert (= bs!1810128 (and b!6793208 b!6792505)))

(assert (=> bs!1810128 (not (= lambda!382810 lambda!382771))))

(declare-fun bs!1810129 () Bool)

(assert (= bs!1810129 (and b!6793208 d!2133958)))

(assert (=> bs!1810129 (not (= lambda!382810 lambda!382732))))

(declare-fun bs!1810130 () Bool)

(assert (= bs!1810130 (and b!6793208 b!6792685)))

(assert (=> bs!1810130 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (regOne!33738 (regOne!33739 r!7292))) (= (regTwo!33738 (regOne!33739 lt!2446525)) (regTwo!33738 (regOne!33739 r!7292)))) (= lambda!382810 lambda!382785))))

(declare-fun bs!1810131 () Bool)

(assert (= bs!1810131 (and b!6793208 b!6792048)))

(assert (=> bs!1810131 (not (= lambda!382810 lambda!382744))))

(declare-fun bs!1810132 () Bool)

(assert (= bs!1810132 (and b!6793208 b!6791842)))

(assert (=> bs!1810132 (not (= lambda!382810 lambda!382726))))

(declare-fun bs!1810133 () Bool)

(assert (= bs!1810133 (and b!6793208 b!6791299)))

(assert (=> bs!1810133 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33738 (regOne!33739 lt!2446525)) r!7292)) (= lambda!382810 lambda!382658))))

(declare-fun bs!1810134 () Bool)

(assert (= bs!1810134 (and b!6793208 b!6792497)))

(assert (=> bs!1810134 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (regOne!33738 (regTwo!33739 r!7292))) (= (regTwo!33738 (regOne!33739 lt!2446525)) (regTwo!33738 (regTwo!33739 r!7292)))) (= lambda!382810 lambda!382773))))

(assert (=> bs!1810129 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (reg!16942 r!7292)) (= (regTwo!33738 (regOne!33739 lt!2446525)) r!7292)) (= lambda!382810 lambda!382733))))

(declare-fun bs!1810135 () Bool)

(assert (= bs!1810135 (and b!6793208 b!6792717)))

(assert (=> bs!1810135 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (regOne!33738 (regTwo!33739 lt!2446525))) (= (regTwo!33738 (regOne!33739 lt!2446525)) (regTwo!33738 (regTwo!33739 lt!2446525)))) (= lambda!382810 lambda!382789))))

(assert (=> bs!1810133 (not (= lambda!382810 lambda!382656))))

(assert (=> bs!1810133 (not (= lambda!382810 lambda!382657))))

(declare-fun bs!1810136 () Bool)

(assert (= bs!1810136 (and b!6793208 d!2134450)))

(assert (=> bs!1810136 (not (= lambda!382810 lambda!382807))))

(declare-fun bs!1810137 () Bool)

(assert (= bs!1810137 (and b!6793208 d!2133960)))

(assert (=> bs!1810137 (not (= lambda!382810 lambda!382738))))

(declare-fun bs!1810138 () Bool)

(assert (= bs!1810138 (and b!6793208 b!6792725)))

(assert (=> bs!1810138 (not (= lambda!382810 lambda!382788))))

(declare-fun bs!1810139 () Bool)

(assert (= bs!1810139 (and b!6793208 b!6792040)))

(assert (=> bs!1810139 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (regOne!33738 r!7292)) (= (regTwo!33738 (regOne!33739 lt!2446525)) (regTwo!33738 r!7292))) (= lambda!382810 lambda!382745))))

(declare-fun bs!1810140 () Bool)

(assert (= bs!1810140 (and b!6793208 b!6792693)))

(assert (=> bs!1810140 (not (= lambda!382810 lambda!382783))))

(assert (=> bs!1810136 (not (= lambda!382810 lambda!382808))))

(declare-fun bs!1810141 () Bool)

(assert (= bs!1810141 (and b!6793208 b!6791834)))

(assert (=> bs!1810141 (= (and (= (regOne!33738 (regOne!33739 lt!2446525)) (regOne!33738 lt!2446525)) (= (regTwo!33738 (regOne!33739 lt!2446525)) (regTwo!33738 lt!2446525))) (= lambda!382810 lambda!382727))))

(assert (=> bs!1810137 (not (= lambda!382810 lambda!382739))))

(assert (=> b!6793208 true))

(assert (=> b!6793208 true))

(declare-fun b!6793206 () Bool)

(declare-fun e!4100134 () Bool)

(declare-fun e!4100128 () Bool)

(assert (=> b!6793206 (= e!4100134 e!4100128)))

(declare-fun res!2776324 () Bool)

(assert (=> b!6793206 (= res!2776324 (matchRSpec!3714 (regOne!33739 (regOne!33739 lt!2446525)) s!2326))))

(assert (=> b!6793206 (=> res!2776324 e!4100128)))

(declare-fun b!6793207 () Bool)

(declare-fun e!4100129 () Bool)

(declare-fun e!4100132 () Bool)

(assert (=> b!6793207 (= e!4100129 e!4100132)))

(declare-fun res!2776322 () Bool)

(assert (=> b!6793207 (= res!2776322 (not ((_ is EmptyLang!16613) (regOne!33739 lt!2446525))))))

(assert (=> b!6793207 (=> (not res!2776322) (not e!4100132))))

(declare-fun e!4100133 () Bool)

(declare-fun call!616921 () Bool)

(assert (=> b!6793208 (= e!4100133 call!616921)))

(declare-fun bm!616916 () Bool)

(declare-fun call!616922 () Bool)

(assert (=> bm!616916 (= call!616922 (isEmpty!38385 s!2326))))

(declare-fun b!6793209 () Bool)

(declare-fun c!1262729 () Bool)

(assert (=> b!6793209 (= c!1262729 ((_ is Union!16613) (regOne!33739 lt!2446525)))))

(declare-fun e!4100130 () Bool)

(assert (=> b!6793209 (= e!4100130 e!4100134)))

(declare-fun b!6793210 () Bool)

(assert (=> b!6793210 (= e!4100128 (matchRSpec!3714 (regTwo!33739 (regOne!33739 lt!2446525)) s!2326))))

(declare-fun b!6793211 () Bool)

(declare-fun c!1262730 () Bool)

(assert (=> b!6793211 (= c!1262730 ((_ is ElementMatch!16613) (regOne!33739 lt!2446525)))))

(assert (=> b!6793211 (= e!4100132 e!4100130)))

(declare-fun b!6793212 () Bool)

(assert (=> b!6793212 (= e!4100129 call!616922)))

(declare-fun bm!616917 () Bool)

(declare-fun c!1262727 () Bool)

(assert (=> bm!616917 (= call!616921 (Exists!3681 (ite c!1262727 lambda!382809 lambda!382810)))))

(declare-fun b!6793214 () Bool)

(declare-fun res!2776323 () Bool)

(declare-fun e!4100131 () Bool)

(assert (=> b!6793214 (=> res!2776323 e!4100131)))

(assert (=> b!6793214 (= res!2776323 call!616922)))

(assert (=> b!6793214 (= e!4100133 e!4100131)))

(declare-fun b!6793213 () Bool)

(assert (=> b!6793213 (= e!4100130 (= s!2326 (Cons!66015 (c!1262203 (regOne!33739 lt!2446525)) Nil!66015)))))

(declare-fun d!2134468 () Bool)

(declare-fun c!1262728 () Bool)

(assert (=> d!2134468 (= c!1262728 ((_ is EmptyExpr!16613) (regOne!33739 lt!2446525)))))

(assert (=> d!2134468 (= (matchRSpec!3714 (regOne!33739 lt!2446525) s!2326) e!4100129)))

(declare-fun b!6793215 () Bool)

(assert (=> b!6793215 (= e!4100134 e!4100133)))

(assert (=> b!6793215 (= c!1262727 ((_ is Star!16613) (regOne!33739 lt!2446525)))))

(assert (=> b!6793216 (= e!4100131 call!616921)))

(assert (= (and d!2134468 c!1262728) b!6793212))

(assert (= (and d!2134468 (not c!1262728)) b!6793207))

(assert (= (and b!6793207 res!2776322) b!6793211))

(assert (= (and b!6793211 c!1262730) b!6793213))

(assert (= (and b!6793211 (not c!1262730)) b!6793209))

(assert (= (and b!6793209 c!1262729) b!6793206))

(assert (= (and b!6793209 (not c!1262729)) b!6793215))

(assert (= (and b!6793206 (not res!2776324)) b!6793210))

(assert (= (and b!6793215 c!1262727) b!6793214))

(assert (= (and b!6793215 (not c!1262727)) b!6793208))

(assert (= (and b!6793214 (not res!2776323)) b!6793216))

(assert (= (or b!6793216 b!6793208) bm!616917))

(assert (= (or b!6793212 b!6793214) bm!616916))

(declare-fun m!7540458 () Bool)

(assert (=> b!6793206 m!7540458))

(assert (=> bm!616916 m!7538676))

(declare-fun m!7540460 () Bool)

(assert (=> b!6793210 m!7540460))

(declare-fun m!7540462 () Bool)

(assert (=> bm!616917 m!7540462))

(assert (=> b!6791832 d!2134468))

(declare-fun d!2134470 () Bool)

(assert (=> d!2134470 (= (nullable!6592 (h!72462 (exprs!6497 lt!2446519))) (nullableFct!2496 (h!72462 (exprs!6497 lt!2446519))))))

(declare-fun bs!1810142 () Bool)

(assert (= bs!1810142 d!2134470))

(declare-fun m!7540464 () Bool)

(assert (=> bs!1810142 m!7540464))

(assert (=> b!6791672 d!2134470))

(declare-fun d!2134472 () Bool)

(declare-fun c!1262731 () Bool)

(assert (=> d!2134472 (= c!1262731 (isEmpty!38385 (tail!12723 (t!379862 s!2326))))))

(declare-fun e!4100135 () Bool)

(assert (=> d!2134472 (= (matchZipper!2599 (derivationStepZipper!2557 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (head!13638 (t!379862 s!2326))) (tail!12723 (t!379862 s!2326))) e!4100135)))

(declare-fun b!6793217 () Bool)

(assert (=> b!6793217 (= e!4100135 (nullableZipper!2320 (derivationStepZipper!2557 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (head!13638 (t!379862 s!2326)))))))

(declare-fun b!6793218 () Bool)

(assert (=> b!6793218 (= e!4100135 (matchZipper!2599 (derivationStepZipper!2557 (derivationStepZipper!2557 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (head!13638 (t!379862 s!2326))) (head!13638 (tail!12723 (t!379862 s!2326)))) (tail!12723 (tail!12723 (t!379862 s!2326)))))))

(assert (= (and d!2134472 c!1262731) b!6793217))

(assert (= (and d!2134472 (not c!1262731)) b!6793218))

(assert (=> d!2134472 m!7539176))

(declare-fun m!7540466 () Bool)

(assert (=> d!2134472 m!7540466))

(assert (=> b!6793217 m!7539174))

(declare-fun m!7540468 () Bool)

(assert (=> b!6793217 m!7540468))

(assert (=> b!6793218 m!7539176))

(declare-fun m!7540470 () Bool)

(assert (=> b!6793218 m!7540470))

(assert (=> b!6793218 m!7539174))

(assert (=> b!6793218 m!7540470))

(declare-fun m!7540472 () Bool)

(assert (=> b!6793218 m!7540472))

(assert (=> b!6793218 m!7539176))

(declare-fun m!7540474 () Bool)

(assert (=> b!6793218 m!7540474))

(assert (=> b!6793218 m!7540472))

(assert (=> b!6793218 m!7540474))

(declare-fun m!7540476 () Bool)

(assert (=> b!6793218 m!7540476))

(assert (=> b!6791785 d!2134472))

(declare-fun bs!1810143 () Bool)

(declare-fun d!2134474 () Bool)

(assert (= bs!1810143 (and d!2134474 b!6791302)))

(declare-fun lambda!382811 () Int)

(assert (=> bs!1810143 (= (= (head!13638 (t!379862 s!2326)) (h!72463 s!2326)) (= lambda!382811 lambda!382659))))

(declare-fun bs!1810144 () Bool)

(assert (= bs!1810144 (and d!2134474 d!2133810)))

(assert (=> bs!1810144 (= (= (head!13638 (t!379862 s!2326)) (h!72463 s!2326)) (= lambda!382811 lambda!382686))))

(declare-fun bs!1810145 () Bool)

(assert (= bs!1810145 (and d!2134474 d!2133878)))

(assert (=> bs!1810145 (= (= (head!13638 (t!379862 s!2326)) (h!72463 s!2326)) (= lambda!382811 lambda!382693))))

(declare-fun bs!1810146 () Bool)

(assert (= bs!1810146 (and d!2134474 d!2133916)))

(assert (=> bs!1810146 (= (= (head!13638 (t!379862 s!2326)) (h!72463 s!2326)) (= lambda!382811 lambda!382712))))

(assert (=> d!2134474 true))

(assert (=> d!2134474 (= (derivationStepZipper!2557 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) (head!13638 (t!379862 s!2326))) (flatMap!2094 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) lambda!382811))))

(declare-fun bs!1810147 () Bool)

(assert (= bs!1810147 d!2134474))

(assert (=> bs!1810147 m!7538756))

(declare-fun m!7540478 () Bool)

(assert (=> bs!1810147 m!7540478))

(assert (=> b!6791785 d!2134474))

(declare-fun d!2134476 () Bool)

(assert (=> d!2134476 (= (head!13638 (t!379862 s!2326)) (h!72463 (t!379862 s!2326)))))

(assert (=> b!6791785 d!2134476))

(declare-fun d!2134478 () Bool)

(assert (=> d!2134478 (= (tail!12723 (t!379862 s!2326)) (t!379862 (t!379862 s!2326)))))

(assert (=> b!6791785 d!2134478))

(declare-fun d!2134480 () Bool)

(assert (=> d!2134480 true))

(declare-fun setRes!46518 () Bool)

(assert (=> d!2134480 setRes!46518))

(declare-fun condSetEmpty!46518 () Bool)

(declare-fun res!2776327 () (InoxSet Context!11994))

(assert (=> d!2134480 (= condSetEmpty!46518 (= res!2776327 ((as const (Array Context!11994 Bool)) false)))))

(assert (=> d!2134480 (= (choose!50598 lt!2446535 lambda!382660) res!2776327)))

(declare-fun setIsEmpty!46518 () Bool)

(assert (=> setIsEmpty!46518 setRes!46518))

(declare-fun setNonEmpty!46518 () Bool)

(declare-fun e!4100138 () Bool)

(declare-fun setElem!46518 () Context!11994)

(declare-fun tp!1860346 () Bool)

(assert (=> setNonEmpty!46518 (= setRes!46518 (and tp!1860346 (inv!84779 setElem!46518) e!4100138))))

(declare-fun setRest!46518 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46518 (= res!2776327 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46518 true) setRest!46518))))

(declare-fun b!6793221 () Bool)

(declare-fun tp!1860347 () Bool)

(assert (=> b!6793221 (= e!4100138 tp!1860347)))

(assert (= (and d!2134480 condSetEmpty!46518) setIsEmpty!46518))

(assert (= (and d!2134480 (not condSetEmpty!46518)) setNonEmpty!46518))

(assert (= setNonEmpty!46518 b!6793221))

(declare-fun m!7540480 () Bool)

(assert (=> setNonEmpty!46518 m!7540480))

(assert (=> d!2133826 d!2134480))

(declare-fun d!2134482 () Bool)

(declare-fun c!1262732 () Bool)

(assert (=> d!2134482 (= c!1262732 (isEmpty!38385 (tail!12723 s!2326)))))

(declare-fun e!4100139 () Bool)

(assert (=> d!2134482 (= (matchZipper!2599 (derivationStepZipper!2557 z!1189 (head!13638 s!2326)) (tail!12723 s!2326)) e!4100139)))

(declare-fun b!6793222 () Bool)

(assert (=> b!6793222 (= e!4100139 (nullableZipper!2320 (derivationStepZipper!2557 z!1189 (head!13638 s!2326))))))

(declare-fun b!6793223 () Bool)

(assert (=> b!6793223 (= e!4100139 (matchZipper!2599 (derivationStepZipper!2557 (derivationStepZipper!2557 z!1189 (head!13638 s!2326)) (head!13638 (tail!12723 s!2326))) (tail!12723 (tail!12723 s!2326))))))

(assert (= (and d!2134482 c!1262732) b!6793222))

(assert (= (and d!2134482 (not c!1262732)) b!6793223))

(assert (=> d!2134482 m!7539164))

(assert (=> d!2134482 m!7539242))

(assert (=> b!6793222 m!7539276))

(declare-fun m!7540482 () Bool)

(assert (=> b!6793222 m!7540482))

(assert (=> b!6793223 m!7539164))

(assert (=> b!6793223 m!7540072))

(assert (=> b!6793223 m!7539276))

(assert (=> b!6793223 m!7540072))

(declare-fun m!7540484 () Bool)

(assert (=> b!6793223 m!7540484))

(assert (=> b!6793223 m!7539164))

(assert (=> b!6793223 m!7540082))

(assert (=> b!6793223 m!7540484))

(assert (=> b!6793223 m!7540082))

(declare-fun m!7540486 () Bool)

(assert (=> b!6793223 m!7540486))

(assert (=> b!6791972 d!2134482))

(declare-fun bs!1810148 () Bool)

(declare-fun d!2134484 () Bool)

(assert (= bs!1810148 (and d!2134484 d!2133810)))

(declare-fun lambda!382812 () Int)

(assert (=> bs!1810148 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382812 lambda!382686))))

(declare-fun bs!1810149 () Bool)

(assert (= bs!1810149 (and d!2134484 d!2133916)))

(assert (=> bs!1810149 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382812 lambda!382712))))

(declare-fun bs!1810150 () Bool)

(assert (= bs!1810150 (and d!2134484 d!2134474)))

(assert (=> bs!1810150 (= (= (head!13638 s!2326) (head!13638 (t!379862 s!2326))) (= lambda!382812 lambda!382811))))

(declare-fun bs!1810151 () Bool)

(assert (= bs!1810151 (and d!2134484 d!2133878)))

(assert (=> bs!1810151 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382812 lambda!382693))))

(declare-fun bs!1810152 () Bool)

(assert (= bs!1810152 (and d!2134484 b!6791302)))

(assert (=> bs!1810152 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382812 lambda!382659))))

(assert (=> d!2134484 true))

(assert (=> d!2134484 (= (derivationStepZipper!2557 z!1189 (head!13638 s!2326)) (flatMap!2094 z!1189 lambda!382812))))

(declare-fun bs!1810153 () Bool)

(assert (= bs!1810153 d!2134484))

(declare-fun m!7540488 () Bool)

(assert (=> bs!1810153 m!7540488))

(assert (=> b!6791972 d!2134484))

(assert (=> b!6791972 d!2134190))

(assert (=> b!6791972 d!2134264))

(declare-fun d!2134486 () Bool)

(assert (=> d!2134486 (= (nullable!6592 (h!72462 (exprs!6497 lt!2446529))) (nullableFct!2496 (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun bs!1810154 () Bool)

(assert (= bs!1810154 d!2134486))

(declare-fun m!7540490 () Bool)

(assert (=> bs!1810154 m!7540490))

(assert (=> b!6791677 d!2134486))

(assert (=> b!6792012 d!2133988))

(assert (=> d!2133932 d!2133964))

(declare-fun b!6793224 () Bool)

(declare-fun e!4100140 () Bool)

(declare-fun e!4100143 () Bool)

(assert (=> b!6793224 (= e!4100140 e!4100143)))

(declare-fun res!2776330 () Bool)

(assert (=> b!6793224 (=> (not res!2776330) (not e!4100143))))

(declare-fun call!616924 () Bool)

(assert (=> b!6793224 (= res!2776330 call!616924)))

(declare-fun b!6793225 () Bool)

(declare-fun res!2776329 () Bool)

(assert (=> b!6793225 (=> res!2776329 e!4100140)))

(assert (=> b!6793225 (= res!2776329 (not ((_ is Concat!25458) lt!2446525)))))

(declare-fun e!4100142 () Bool)

(assert (=> b!6793225 (= e!4100142 e!4100140)))

(declare-fun c!1262733 () Bool)

(declare-fun c!1262734 () Bool)

(declare-fun bm!616918 () Bool)

(declare-fun call!616923 () Bool)

(assert (=> bm!616918 (= call!616923 (validRegex!8349 (ite c!1262733 (reg!16942 lt!2446525) (ite c!1262734 (regTwo!33739 lt!2446525) (regTwo!33738 lt!2446525)))))))

(declare-fun d!2134488 () Bool)

(declare-fun res!2776332 () Bool)

(declare-fun e!4100141 () Bool)

(assert (=> d!2134488 (=> res!2776332 e!4100141)))

(assert (=> d!2134488 (= res!2776332 ((_ is ElementMatch!16613) lt!2446525))))

(assert (=> d!2134488 (= (validRegex!8349 lt!2446525) e!4100141)))

(declare-fun bm!616919 () Bool)

(declare-fun call!616925 () Bool)

(assert (=> bm!616919 (= call!616925 call!616923)))

(declare-fun b!6793226 () Bool)

(assert (=> b!6793226 (= e!4100143 call!616925)))

(declare-fun b!6793227 () Bool)

(declare-fun e!4100144 () Bool)

(declare-fun e!4100146 () Bool)

(assert (=> b!6793227 (= e!4100144 e!4100146)))

(declare-fun res!2776331 () Bool)

(assert (=> b!6793227 (= res!2776331 (not (nullable!6592 (reg!16942 lt!2446525))))))

(assert (=> b!6793227 (=> (not res!2776331) (not e!4100146))))

(declare-fun b!6793228 () Bool)

(declare-fun e!4100145 () Bool)

(assert (=> b!6793228 (= e!4100145 call!616925)))

(declare-fun b!6793229 () Bool)

(assert (=> b!6793229 (= e!4100146 call!616923)))

(declare-fun bm!616920 () Bool)

(assert (=> bm!616920 (= call!616924 (validRegex!8349 (ite c!1262734 (regOne!33739 lt!2446525) (regOne!33738 lt!2446525))))))

(declare-fun b!6793230 () Bool)

(assert (=> b!6793230 (= e!4100141 e!4100144)))

(assert (=> b!6793230 (= c!1262733 ((_ is Star!16613) lt!2446525))))

(declare-fun b!6793231 () Bool)

(declare-fun res!2776328 () Bool)

(assert (=> b!6793231 (=> (not res!2776328) (not e!4100145))))

(assert (=> b!6793231 (= res!2776328 call!616924)))

(assert (=> b!6793231 (= e!4100142 e!4100145)))

(declare-fun b!6793232 () Bool)

(assert (=> b!6793232 (= e!4100144 e!4100142)))

(assert (=> b!6793232 (= c!1262734 ((_ is Union!16613) lt!2446525))))

(assert (= (and d!2134488 (not res!2776332)) b!6793230))

(assert (= (and b!6793230 c!1262733) b!6793227))

(assert (= (and b!6793230 (not c!1262733)) b!6793232))

(assert (= (and b!6793227 res!2776331) b!6793229))

(assert (= (and b!6793232 c!1262734) b!6793231))

(assert (= (and b!6793232 (not c!1262734)) b!6793225))

(assert (= (and b!6793231 res!2776328) b!6793228))

(assert (= (and b!6793225 (not res!2776329)) b!6793224))

(assert (= (and b!6793224 res!2776330) b!6793226))

(assert (= (or b!6793228 b!6793226) bm!616919))

(assert (= (or b!6793231 b!6793224) bm!616920))

(assert (= (or b!6793229 bm!616919) bm!616918))

(declare-fun m!7540492 () Bool)

(assert (=> bm!616918 m!7540492))

(declare-fun m!7540494 () Bool)

(assert (=> b!6793227 m!7540494))

(declare-fun m!7540496 () Bool)

(assert (=> bm!616920 m!7540496))

(assert (=> d!2133932 d!2134488))

(declare-fun b!6793233 () Bool)

(declare-fun e!4100147 () (InoxSet Context!11994))

(assert (=> b!6793233 (= e!4100147 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6793234 () Bool)

(declare-fun e!4100148 () (InoxSet Context!11994))

(assert (=> b!6793234 (= e!4100148 e!4100147)))

(declare-fun c!1262735 () Bool)

(assert (=> b!6793234 (= c!1262735 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))))

(declare-fun b!6793235 () Bool)

(declare-fun call!616926 () (InoxSet Context!11994))

(assert (=> b!6793235 (= e!4100148 ((_ map or) call!616926 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))) (h!72463 s!2326))))))

(declare-fun b!6793236 () Bool)

(declare-fun e!4100149 () Bool)

(assert (=> b!6793236 (= e!4100149 (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))))))

(declare-fun b!6793237 () Bool)

(assert (=> b!6793237 (= e!4100147 call!616926)))

(declare-fun d!2134490 () Bool)

(declare-fun c!1262736 () Bool)

(assert (=> d!2134490 (= c!1262736 e!4100149)))

(declare-fun res!2776333 () Bool)

(assert (=> d!2134490 (=> (not res!2776333) (not e!4100149))))

(assert (=> d!2134490 (= res!2776333 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))))

(assert (=> d!2134490 (= (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (h!72463 s!2326)) e!4100148)))

(declare-fun bm!616921 () Bool)

(assert (=> bm!616921 (= call!616926 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))) (h!72463 s!2326)))))

(assert (= (and d!2134490 res!2776333) b!6793236))

(assert (= (and d!2134490 c!1262736) b!6793235))

(assert (= (and d!2134490 (not c!1262736)) b!6793234))

(assert (= (and b!6793234 c!1262735) b!6793237))

(assert (= (and b!6793234 (not c!1262735)) b!6793233))

(assert (= (or b!6793235 b!6793237) bm!616921))

(declare-fun m!7540498 () Bool)

(assert (=> b!6793235 m!7540498))

(declare-fun m!7540500 () Bool)

(assert (=> b!6793236 m!7540500))

(declare-fun m!7540502 () Bool)

(assert (=> bm!616921 m!7540502))

(assert (=> b!6791539 d!2134490))

(assert (=> bm!616692 d!2133964))

(declare-fun d!2134492 () Bool)

(assert (=> d!2134492 (= (isEmpty!38388 (t!379861 (unfocusZipperList!2034 zl!343))) ((_ is Nil!66014) (t!379861 (unfocusZipperList!2034 zl!343))))))

(assert (=> b!6791346 d!2134492))

(assert (=> bm!616701 d!2133964))

(declare-fun d!2134494 () Bool)

(assert (=> d!2134494 true))

(assert (=> d!2134494 true))

(declare-fun res!2776336 () Bool)

(assert (=> d!2134494 (= (choose!50606 lambda!382658) res!2776336)))

(assert (=> d!2133966 d!2134494))

(declare-fun b!6793238 () Bool)

(declare-fun e!4100150 () List!66139)

(assert (=> b!6793238 (= e!4100150 (_2!36891 (get!22988 lt!2446650)))))

(declare-fun b!6793239 () Bool)

(assert (=> b!6793239 (= e!4100150 (Cons!66015 (h!72463 (_1!36891 (get!22988 lt!2446650))) (++!14772 (t!379862 (_1!36891 (get!22988 lt!2446650))) (_2!36891 (get!22988 lt!2446650)))))))

(declare-fun b!6793241 () Bool)

(declare-fun e!4100151 () Bool)

(declare-fun lt!2446721 () List!66139)

(assert (=> b!6793241 (= e!4100151 (or (not (= (_2!36891 (get!22988 lt!2446650)) Nil!66015)) (= lt!2446721 (_1!36891 (get!22988 lt!2446650)))))))

(declare-fun d!2134496 () Bool)

(assert (=> d!2134496 e!4100151))

(declare-fun res!2776338 () Bool)

(assert (=> d!2134496 (=> (not res!2776338) (not e!4100151))))

(assert (=> d!2134496 (= res!2776338 (= (content!12877 lt!2446721) ((_ map or) (content!12877 (_1!36891 (get!22988 lt!2446650))) (content!12877 (_2!36891 (get!22988 lt!2446650))))))))

(assert (=> d!2134496 (= lt!2446721 e!4100150)))

(declare-fun c!1262737 () Bool)

(assert (=> d!2134496 (= c!1262737 ((_ is Nil!66015) (_1!36891 (get!22988 lt!2446650))))))

(assert (=> d!2134496 (= (++!14772 (_1!36891 (get!22988 lt!2446650)) (_2!36891 (get!22988 lt!2446650))) lt!2446721)))

(declare-fun b!6793240 () Bool)

(declare-fun res!2776337 () Bool)

(assert (=> b!6793240 (=> (not res!2776337) (not e!4100151))))

(assert (=> b!6793240 (= res!2776337 (= (size!40651 lt!2446721) (+ (size!40651 (_1!36891 (get!22988 lt!2446650))) (size!40651 (_2!36891 (get!22988 lt!2446650))))))))

(assert (= (and d!2134496 c!1262737) b!6793238))

(assert (= (and d!2134496 (not c!1262737)) b!6793239))

(assert (= (and d!2134496 res!2776338) b!6793240))

(assert (= (and b!6793240 res!2776337) b!6793241))

(declare-fun m!7540504 () Bool)

(assert (=> b!6793239 m!7540504))

(declare-fun m!7540506 () Bool)

(assert (=> d!2134496 m!7540506))

(declare-fun m!7540508 () Bool)

(assert (=> d!2134496 m!7540508))

(declare-fun m!7540510 () Bool)

(assert (=> d!2134496 m!7540510))

(declare-fun m!7540512 () Bool)

(assert (=> b!6793240 m!7540512))

(declare-fun m!7540514 () Bool)

(assert (=> b!6793240 m!7540514))

(declare-fun m!7540516 () Bool)

(assert (=> b!6793240 m!7540516))

(assert (=> b!6792016 d!2134496))

(assert (=> b!6792016 d!2134188))

(declare-fun d!2134498 () Bool)

(assert (=> d!2134498 (= (isEmpty!38389 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326)) (not ((_ is Some!16499) (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326))))))

(assert (=> d!2133956 d!2134498))

(assert (=> b!6791923 d!2134190))

(declare-fun b!6793242 () Bool)

(declare-fun e!4100152 () Bool)

(declare-fun e!4100155 () Bool)

(assert (=> b!6793242 (= e!4100152 e!4100155)))

(declare-fun res!2776341 () Bool)

(assert (=> b!6793242 (=> (not res!2776341) (not e!4100155))))

(declare-fun call!616928 () Bool)

(assert (=> b!6793242 (= res!2776341 call!616928)))

(declare-fun b!6793243 () Bool)

(declare-fun res!2776340 () Bool)

(assert (=> b!6793243 (=> res!2776340 e!4100152)))

(assert (=> b!6793243 (= res!2776340 (not ((_ is Concat!25458) lt!2446591)))))

(declare-fun e!4100154 () Bool)

(assert (=> b!6793243 (= e!4100154 e!4100152)))

(declare-fun c!1262739 () Bool)

(declare-fun bm!616922 () Bool)

(declare-fun call!616927 () Bool)

(declare-fun c!1262738 () Bool)

(assert (=> bm!616922 (= call!616927 (validRegex!8349 (ite c!1262738 (reg!16942 lt!2446591) (ite c!1262739 (regTwo!33739 lt!2446591) (regTwo!33738 lt!2446591)))))))

(declare-fun d!2134500 () Bool)

(declare-fun res!2776343 () Bool)

(declare-fun e!4100153 () Bool)

(assert (=> d!2134500 (=> res!2776343 e!4100153)))

(assert (=> d!2134500 (= res!2776343 ((_ is ElementMatch!16613) lt!2446591))))

(assert (=> d!2134500 (= (validRegex!8349 lt!2446591) e!4100153)))

(declare-fun bm!616923 () Bool)

(declare-fun call!616929 () Bool)

(assert (=> bm!616923 (= call!616929 call!616927)))

(declare-fun b!6793244 () Bool)

(assert (=> b!6793244 (= e!4100155 call!616929)))

(declare-fun b!6793245 () Bool)

(declare-fun e!4100156 () Bool)

(declare-fun e!4100158 () Bool)

(assert (=> b!6793245 (= e!4100156 e!4100158)))

(declare-fun res!2776342 () Bool)

(assert (=> b!6793245 (= res!2776342 (not (nullable!6592 (reg!16942 lt!2446591))))))

(assert (=> b!6793245 (=> (not res!2776342) (not e!4100158))))

(declare-fun b!6793246 () Bool)

(declare-fun e!4100157 () Bool)

(assert (=> b!6793246 (= e!4100157 call!616929)))

(declare-fun b!6793247 () Bool)

(assert (=> b!6793247 (= e!4100158 call!616927)))

(declare-fun bm!616924 () Bool)

(assert (=> bm!616924 (= call!616928 (validRegex!8349 (ite c!1262739 (regOne!33739 lt!2446591) (regOne!33738 lt!2446591))))))

(declare-fun b!6793248 () Bool)

(assert (=> b!6793248 (= e!4100153 e!4100156)))

(assert (=> b!6793248 (= c!1262738 ((_ is Star!16613) lt!2446591))))

(declare-fun b!6793249 () Bool)

(declare-fun res!2776339 () Bool)

(assert (=> b!6793249 (=> (not res!2776339) (not e!4100157))))

(assert (=> b!6793249 (= res!2776339 call!616928)))

(assert (=> b!6793249 (= e!4100154 e!4100157)))

(declare-fun b!6793250 () Bool)

(assert (=> b!6793250 (= e!4100156 e!4100154)))

(assert (=> b!6793250 (= c!1262739 ((_ is Union!16613) lt!2446591))))

(assert (= (and d!2134500 (not res!2776343)) b!6793248))

(assert (= (and b!6793248 c!1262738) b!6793245))

(assert (= (and b!6793248 (not c!1262738)) b!6793250))

(assert (= (and b!6793245 res!2776342) b!6793247))

(assert (= (and b!6793250 c!1262739) b!6793249))

(assert (= (and b!6793250 (not c!1262739)) b!6793243))

(assert (= (and b!6793249 res!2776339) b!6793246))

(assert (= (and b!6793243 (not res!2776340)) b!6793242))

(assert (= (and b!6793242 res!2776341) b!6793244))

(assert (= (or b!6793246 b!6793244) bm!616923))

(assert (= (or b!6793249 b!6793242) bm!616924))

(assert (= (or b!6793247 bm!616923) bm!616922))

(declare-fun m!7540518 () Bool)

(assert (=> bm!616922 m!7540518))

(declare-fun m!7540520 () Bool)

(assert (=> b!6793245 m!7540520))

(declare-fun m!7540522 () Bool)

(assert (=> bm!616924 m!7540522))

(assert (=> d!2133862 d!2134500))

(declare-fun bs!1810155 () Bool)

(declare-fun d!2134502 () Bool)

(assert (= bs!1810155 (and d!2134502 d!2133858)))

(declare-fun lambda!382813 () Int)

(assert (=> bs!1810155 (= lambda!382813 lambda!382690)))

(declare-fun bs!1810156 () Bool)

(assert (= bs!1810156 (and d!2134502 d!2133890)))

(assert (=> bs!1810156 (= lambda!382813 lambda!382704)))

(declare-fun bs!1810157 () Bool)

(assert (= bs!1810157 (and d!2134502 d!2134412)))

(assert (=> bs!1810157 (= lambda!382813 lambda!382800)))

(declare-fun bs!1810158 () Bool)

(assert (= bs!1810158 (and d!2134502 d!2133774)))

(assert (=> bs!1810158 (= lambda!382813 lambda!382664)))

(declare-fun bs!1810159 () Bool)

(assert (= bs!1810159 (and d!2134502 d!2133974)))

(assert (=> bs!1810159 (= lambda!382813 lambda!382743)))

(declare-fun bs!1810160 () Bool)

(assert (= bs!1810160 (and d!2134502 d!2134442)))

(assert (=> bs!1810160 (= lambda!382813 lambda!382801)))

(declare-fun bs!1810161 () Bool)

(assert (= bs!1810161 (and d!2134502 d!2134128)))

(assert (=> bs!1810161 (= lambda!382813 lambda!382763)))

(declare-fun bs!1810162 () Bool)

(assert (= bs!1810162 (and d!2134502 d!2134444)))

(assert (=> bs!1810162 (= lambda!382813 lambda!382802)))

(declare-fun bs!1810163 () Bool)

(assert (= bs!1810163 (and d!2134502 b!6791309)))

(assert (=> bs!1810163 (= lambda!382813 lambda!382661)))

(declare-fun bs!1810164 () Bool)

(assert (= bs!1810164 (and d!2134502 d!2134246)))

(assert (=> bs!1810164 (= lambda!382813 lambda!382779)))

(declare-fun bs!1810165 () Bool)

(assert (= bs!1810165 (and d!2134502 d!2133910)))

(assert (=> bs!1810165 (= lambda!382813 lambda!382705)))

(declare-fun bs!1810166 () Bool)

(assert (= bs!1810166 (and d!2134502 d!2133778)))

(assert (=> bs!1810166 (= lambda!382813 lambda!382667)))

(declare-fun bs!1810167 () Bool)

(assert (= bs!1810167 (and d!2134502 d!2134230)))

(assert (=> bs!1810167 (= lambda!382813 lambda!382777)))

(declare-fun b!6793251 () Bool)

(declare-fun e!4100161 () Bool)

(declare-fun lt!2446722 () Regex!16613)

(assert (=> b!6793251 (= e!4100161 (isUnion!1408 lt!2446722))))

(declare-fun b!6793252 () Bool)

(declare-fun e!4100164 () Regex!16613)

(assert (=> b!6793252 (= e!4100164 (Union!16613 (h!72462 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))) (generalisedUnion!2457 (t!379861 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))))))))

(declare-fun b!6793253 () Bool)

(declare-fun e!4100162 () Regex!16613)

(assert (=> b!6793253 (= e!4100162 e!4100164)))

(declare-fun c!1262743 () Bool)

(assert (=> b!6793253 (= c!1262743 ((_ is Cons!66014) (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))))))

(declare-fun e!4100163 () Bool)

(assert (=> d!2134502 e!4100163))

(declare-fun res!2776345 () Bool)

(assert (=> d!2134502 (=> (not res!2776345) (not e!4100163))))

(assert (=> d!2134502 (= res!2776345 (validRegex!8349 lt!2446722))))

(assert (=> d!2134502 (= lt!2446722 e!4100162)))

(declare-fun c!1262740 () Bool)

(declare-fun e!4100160 () Bool)

(assert (=> d!2134502 (= c!1262740 e!4100160)))

(declare-fun res!2776344 () Bool)

(assert (=> d!2134502 (=> (not res!2776344) (not e!4100160))))

(assert (=> d!2134502 (= res!2776344 ((_ is Cons!66014) (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))))))

(assert (=> d!2134502 (forall!15805 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016)) lambda!382813)))

(assert (=> d!2134502 (= (generalisedUnion!2457 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))) lt!2446722)))

(declare-fun b!6793254 () Bool)

(assert (=> b!6793254 (= e!4100162 (h!72462 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))))))

(declare-fun b!6793255 () Bool)

(declare-fun e!4100159 () Bool)

(assert (=> b!6793255 (= e!4100163 e!4100159)))

(declare-fun c!1262742 () Bool)

(assert (=> b!6793255 (= c!1262742 (isEmpty!38388 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016))))))

(declare-fun b!6793256 () Bool)

(assert (=> b!6793256 (= e!4100159 e!4100161)))

(declare-fun c!1262741 () Bool)

(assert (=> b!6793256 (= c!1262741 (isEmpty!38388 (tail!12722 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016)))))))

(declare-fun b!6793257 () Bool)

(assert (=> b!6793257 (= e!4100160 (isEmpty!38388 (t!379861 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016)))))))

(declare-fun b!6793258 () Bool)

(assert (=> b!6793258 (= e!4100161 (= lt!2446722 (head!13637 (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016)))))))

(declare-fun b!6793259 () Bool)

(assert (=> b!6793259 (= e!4100164 EmptyLang!16613)))

(declare-fun b!6793260 () Bool)

(assert (=> b!6793260 (= e!4100159 (isEmptyLang!1978 lt!2446722))))

(assert (= (and d!2134502 res!2776344) b!6793257))

(assert (= (and d!2134502 c!1262740) b!6793254))

(assert (= (and d!2134502 (not c!1262740)) b!6793253))

(assert (= (and b!6793253 c!1262743) b!6793252))

(assert (= (and b!6793253 (not c!1262743)) b!6793259))

(assert (= (and d!2134502 res!2776345) b!6793255))

(assert (= (and b!6793255 c!1262742) b!6793260))

(assert (= (and b!6793255 (not c!1262742)) b!6793256))

(assert (= (and b!6793256 c!1262741) b!6793258))

(assert (= (and b!6793256 (not c!1262741)) b!6793251))

(assert (=> b!6793255 m!7539024))

(declare-fun m!7540524 () Bool)

(assert (=> b!6793255 m!7540524))

(declare-fun m!7540526 () Bool)

(assert (=> b!6793251 m!7540526))

(assert (=> b!6793258 m!7539024))

(declare-fun m!7540528 () Bool)

(assert (=> b!6793258 m!7540528))

(declare-fun m!7540530 () Bool)

(assert (=> b!6793257 m!7540530))

(declare-fun m!7540532 () Bool)

(assert (=> b!6793260 m!7540532))

(assert (=> b!6793256 m!7539024))

(declare-fun m!7540534 () Bool)

(assert (=> b!6793256 m!7540534))

(assert (=> b!6793256 m!7540534))

(declare-fun m!7540536 () Bool)

(assert (=> b!6793256 m!7540536))

(declare-fun m!7540538 () Bool)

(assert (=> d!2134502 m!7540538))

(assert (=> d!2134502 m!7539024))

(declare-fun m!7540540 () Bool)

(assert (=> d!2134502 m!7540540))

(declare-fun m!7540542 () Bool)

(assert (=> b!6793252 m!7540542))

(assert (=> d!2133862 d!2134502))

(declare-fun bs!1810168 () Bool)

(declare-fun d!2134504 () Bool)

(assert (= bs!1810168 (and d!2134504 d!2133858)))

(declare-fun lambda!382814 () Int)

(assert (=> bs!1810168 (= lambda!382814 lambda!382690)))

(declare-fun bs!1810169 () Bool)

(assert (= bs!1810169 (and d!2134504 d!2134502)))

(assert (=> bs!1810169 (= lambda!382814 lambda!382813)))

(declare-fun bs!1810170 () Bool)

(assert (= bs!1810170 (and d!2134504 d!2133890)))

(assert (=> bs!1810170 (= lambda!382814 lambda!382704)))

(declare-fun bs!1810171 () Bool)

(assert (= bs!1810171 (and d!2134504 d!2134412)))

(assert (=> bs!1810171 (= lambda!382814 lambda!382800)))

(declare-fun bs!1810172 () Bool)

(assert (= bs!1810172 (and d!2134504 d!2133774)))

(assert (=> bs!1810172 (= lambda!382814 lambda!382664)))

(declare-fun bs!1810173 () Bool)

(assert (= bs!1810173 (and d!2134504 d!2133974)))

(assert (=> bs!1810173 (= lambda!382814 lambda!382743)))

(declare-fun bs!1810174 () Bool)

(assert (= bs!1810174 (and d!2134504 d!2134442)))

(assert (=> bs!1810174 (= lambda!382814 lambda!382801)))

(declare-fun bs!1810175 () Bool)

(assert (= bs!1810175 (and d!2134504 d!2134128)))

(assert (=> bs!1810175 (= lambda!382814 lambda!382763)))

(declare-fun bs!1810176 () Bool)

(assert (= bs!1810176 (and d!2134504 d!2134444)))

(assert (=> bs!1810176 (= lambda!382814 lambda!382802)))

(declare-fun bs!1810177 () Bool)

(assert (= bs!1810177 (and d!2134504 b!6791309)))

(assert (=> bs!1810177 (= lambda!382814 lambda!382661)))

(declare-fun bs!1810178 () Bool)

(assert (= bs!1810178 (and d!2134504 d!2134246)))

(assert (=> bs!1810178 (= lambda!382814 lambda!382779)))

(declare-fun bs!1810179 () Bool)

(assert (= bs!1810179 (and d!2134504 d!2133910)))

(assert (=> bs!1810179 (= lambda!382814 lambda!382705)))

(declare-fun bs!1810180 () Bool)

(assert (= bs!1810180 (and d!2134504 d!2133778)))

(assert (=> bs!1810180 (= lambda!382814 lambda!382667)))

(declare-fun bs!1810181 () Bool)

(assert (= bs!1810181 (and d!2134504 d!2134230)))

(assert (=> bs!1810181 (= lambda!382814 lambda!382777)))

(declare-fun lt!2446723 () List!66138)

(assert (=> d!2134504 (forall!15805 lt!2446723 lambda!382814)))

(declare-fun e!4100165 () List!66138)

(assert (=> d!2134504 (= lt!2446723 e!4100165)))

(declare-fun c!1262744 () Bool)

(assert (=> d!2134504 (= c!1262744 ((_ is Cons!66016) (Cons!66016 lt!2446519 Nil!66016)))))

(assert (=> d!2134504 (= (unfocusZipperList!2034 (Cons!66016 lt!2446519 Nil!66016)) lt!2446723)))

(declare-fun b!6793261 () Bool)

(assert (=> b!6793261 (= e!4100165 (Cons!66014 (generalisedConcat!2210 (exprs!6497 (h!72464 (Cons!66016 lt!2446519 Nil!66016)))) (unfocusZipperList!2034 (t!379863 (Cons!66016 lt!2446519 Nil!66016)))))))

(declare-fun b!6793262 () Bool)

(assert (=> b!6793262 (= e!4100165 Nil!66014)))

(assert (= (and d!2134504 c!1262744) b!6793261))

(assert (= (and d!2134504 (not c!1262744)) b!6793262))

(declare-fun m!7540544 () Bool)

(assert (=> d!2134504 m!7540544))

(declare-fun m!7540546 () Bool)

(assert (=> b!6793261 m!7540546))

(declare-fun m!7540548 () Bool)

(assert (=> b!6793261 m!7540548))

(assert (=> d!2133862 d!2134504))

(declare-fun d!2134506 () Bool)

(declare-fun res!2776346 () Bool)

(declare-fun e!4100166 () Bool)

(assert (=> d!2134506 (=> res!2776346 e!4100166)))

(assert (=> d!2134506 (= res!2776346 ((_ is Nil!66014) (exprs!6497 setElem!46493)))))

(assert (=> d!2134506 (= (forall!15805 (exprs!6497 setElem!46493) lambda!382743) e!4100166)))

(declare-fun b!6793263 () Bool)

(declare-fun e!4100167 () Bool)

(assert (=> b!6793263 (= e!4100166 e!4100167)))

(declare-fun res!2776347 () Bool)

(assert (=> b!6793263 (=> (not res!2776347) (not e!4100167))))

(assert (=> b!6793263 (= res!2776347 (dynLambda!26352 lambda!382743 (h!72462 (exprs!6497 setElem!46493))))))

(declare-fun b!6793264 () Bool)

(assert (=> b!6793264 (= e!4100167 (forall!15805 (t!379861 (exprs!6497 setElem!46493)) lambda!382743))))

(assert (= (and d!2134506 (not res!2776346)) b!6793263))

(assert (= (and b!6793263 res!2776347) b!6793264))

(declare-fun b_lambda!255899 () Bool)

(assert (=> (not b_lambda!255899) (not b!6793263)))

(declare-fun m!7540550 () Bool)

(assert (=> b!6793263 m!7540550))

(declare-fun m!7540552 () Bool)

(assert (=> b!6793264 m!7540552))

(assert (=> d!2133974 d!2134506))

(declare-fun d!2134508 () Bool)

(assert (=> d!2134508 true))

(assert (=> d!2134508 true))

(declare-fun res!2776348 () Bool)

(assert (=> d!2134508 (= (choose!50606 lambda!382656) res!2776348)))

(assert (=> d!2133962 d!2134508))

(assert (=> d!2133990 d!2133988))

(assert (=> d!2133990 d!2133986))

(declare-fun d!2134510 () Bool)

(assert (=> d!2134510 (= (matchR!8796 r!7292 s!2326) (matchRSpec!3714 r!7292 s!2326))))

(assert (=> d!2134510 true))

(declare-fun _$88!5605 () Unit!159917)

(assert (=> d!2134510 (= (choose!50601 r!7292 s!2326) _$88!5605)))

(declare-fun bs!1810182 () Bool)

(assert (= bs!1810182 d!2134510))

(assert (=> bs!1810182 m!7538670))

(assert (=> bs!1810182 m!7538668))

(assert (=> d!2133990 d!2134510))

(assert (=> d!2133990 d!2133992))

(assert (=> d!2133972 d!2133956))

(declare-fun d!2134512 () Bool)

(assert (=> d!2134512 (= (Exists!3681 lambda!382742) (choose!50606 lambda!382742))))

(declare-fun bs!1810183 () Bool)

(assert (= bs!1810183 d!2134512))

(declare-fun m!7540554 () Bool)

(assert (=> bs!1810183 m!7540554))

(assert (=> d!2133972 d!2134512))

(declare-fun bs!1810184 () Bool)

(declare-fun d!2134514 () Bool)

(assert (= bs!1810184 (and d!2134514 b!6793216)))

(declare-fun lambda!382817 () Int)

(assert (=> bs!1810184 (not (= lambda!382817 lambda!382809))))

(declare-fun bs!1810185 () Bool)

(assert (= bs!1810185 (and d!2134514 d!2133972)))

(assert (=> bs!1810185 (= lambda!382817 lambda!382742)))

(declare-fun bs!1810186 () Bool)

(assert (= bs!1810186 (and d!2134514 b!6792505)))

(assert (=> bs!1810186 (not (= lambda!382817 lambda!382771))))

(declare-fun bs!1810187 () Bool)

(assert (= bs!1810187 (and d!2134514 d!2133958)))

(assert (=> bs!1810187 (= lambda!382817 lambda!382732)))

(declare-fun bs!1810188 () Bool)

(assert (= bs!1810188 (and d!2134514 b!6792685)))

(assert (=> bs!1810188 (not (= lambda!382817 lambda!382785))))

(declare-fun bs!1810189 () Bool)

(assert (= bs!1810189 (and d!2134514 b!6792048)))

(assert (=> bs!1810189 (not (= lambda!382817 lambda!382744))))

(declare-fun bs!1810190 () Bool)

(assert (= bs!1810190 (and d!2134514 b!6791842)))

(assert (=> bs!1810190 (not (= lambda!382817 lambda!382726))))

(declare-fun bs!1810191 () Bool)

(assert (= bs!1810191 (and d!2134514 b!6791299)))

(assert (=> bs!1810191 (not (= lambda!382817 lambda!382658))))

(declare-fun bs!1810192 () Bool)

(assert (= bs!1810192 (and d!2134514 b!6792497)))

(assert (=> bs!1810192 (not (= lambda!382817 lambda!382773))))

(declare-fun bs!1810193 () Bool)

(assert (= bs!1810193 (and d!2134514 b!6792717)))

(assert (=> bs!1810193 (not (= lambda!382817 lambda!382789))))

(assert (=> bs!1810191 (= lambda!382817 lambda!382656)))

(assert (=> bs!1810191 (not (= lambda!382817 lambda!382657))))

(declare-fun bs!1810194 () Bool)

(assert (= bs!1810194 (and d!2134514 d!2134450)))

(assert (=> bs!1810194 (= (= r!7292 (Star!16613 (reg!16942 r!7292))) (= lambda!382817 lambda!382807))))

(declare-fun bs!1810195 () Bool)

(assert (= bs!1810195 (and d!2134514 d!2133960)))

(assert (=> bs!1810195 (= (= r!7292 (Star!16613 (reg!16942 r!7292))) (= lambda!382817 lambda!382738))))

(declare-fun bs!1810196 () Bool)

(assert (= bs!1810196 (and d!2134514 b!6792725)))

(assert (=> bs!1810196 (not (= lambda!382817 lambda!382788))))

(declare-fun bs!1810197 () Bool)

(assert (= bs!1810197 (and d!2134514 b!6792040)))

(assert (=> bs!1810197 (not (= lambda!382817 lambda!382745))))

(declare-fun bs!1810198 () Bool)

(assert (= bs!1810198 (and d!2134514 b!6793208)))

(assert (=> bs!1810198 (not (= lambda!382817 lambda!382810))))

(assert (=> bs!1810187 (not (= lambda!382817 lambda!382733))))

(declare-fun bs!1810199 () Bool)

(assert (= bs!1810199 (and d!2134514 b!6792693)))

(assert (=> bs!1810199 (not (= lambda!382817 lambda!382783))))

(assert (=> bs!1810194 (not (= lambda!382817 lambda!382808))))

(declare-fun bs!1810200 () Bool)

(assert (= bs!1810200 (and d!2134514 b!6791834)))

(assert (=> bs!1810200 (not (= lambda!382817 lambda!382727))))

(assert (=> bs!1810195 (not (= lambda!382817 lambda!382739))))

(assert (=> d!2134514 true))

(assert (=> d!2134514 true))

(assert (=> d!2134514 true))

(assert (=> d!2134514 (= (isDefined!13203 (findConcatSeparation!2914 (reg!16942 r!7292) r!7292 Nil!66015 s!2326 s!2326)) (Exists!3681 lambda!382817))))

(assert (=> d!2134514 true))

(declare-fun _$89!3058 () Unit!159917)

(assert (=> d!2134514 (= (choose!50609 (reg!16942 r!7292) r!7292 s!2326) _$89!3058)))

(declare-fun bs!1810201 () Bool)

(assert (= bs!1810201 d!2134514))

(assert (=> bs!1810201 m!7538680))

(assert (=> bs!1810201 m!7538680))

(assert (=> bs!1810201 m!7538684))

(declare-fun m!7540556 () Bool)

(assert (=> bs!1810201 m!7540556))

(assert (=> d!2133972 d!2134514))

(assert (=> d!2133972 d!2133968))

(assert (=> d!2133972 d!2134408))

(assert (=> d!2133950 d!2133942))

(declare-fun d!2134516 () Bool)

(assert (=> d!2134516 (= (flatMap!2094 z!1189 lambda!382659) (dynLambda!26350 lambda!382659 (h!72464 zl!343)))))

(assert (=> d!2134516 true))

(declare-fun _$13!4240 () Unit!159917)

(assert (=> d!2134516 (= (choose!50599 z!1189 (h!72464 zl!343) lambda!382659) _$13!4240)))

(declare-fun b_lambda!255901 () Bool)

(assert (=> (not b_lambda!255901) (not d!2134516)))

(declare-fun bs!1810202 () Bool)

(assert (= bs!1810202 d!2134516))

(assert (=> bs!1810202 m!7538662))

(assert (=> bs!1810202 m!7539262))

(assert (=> d!2133950 d!2134516))

(declare-fun d!2134518 () Bool)

(declare-fun res!2776353 () Bool)

(declare-fun e!4100170 () Bool)

(assert (=> d!2134518 (=> res!2776353 e!4100170)))

(assert (=> d!2134518 (= res!2776353 ((_ is Nil!66014) lt!2446547))))

(assert (=> d!2134518 (= (forall!15805 lt!2446547 lambda!382667) e!4100170)))

(declare-fun b!6793269 () Bool)

(declare-fun e!4100171 () Bool)

(assert (=> b!6793269 (= e!4100170 e!4100171)))

(declare-fun res!2776354 () Bool)

(assert (=> b!6793269 (=> (not res!2776354) (not e!4100171))))

(assert (=> b!6793269 (= res!2776354 (dynLambda!26352 lambda!382667 (h!72462 lt!2446547)))))

(declare-fun b!6793270 () Bool)

(assert (=> b!6793270 (= e!4100171 (forall!15805 (t!379861 lt!2446547) lambda!382667))))

(assert (= (and d!2134518 (not res!2776353)) b!6793269))

(assert (= (and b!6793269 res!2776354) b!6793270))

(declare-fun b_lambda!255903 () Bool)

(assert (=> (not b_lambda!255903) (not b!6793269)))

(declare-fun m!7540558 () Bool)

(assert (=> b!6793269 m!7540558))

(declare-fun m!7540560 () Bool)

(assert (=> b!6793270 m!7540560))

(assert (=> d!2133778 d!2134518))

(declare-fun d!2134520 () Bool)

(assert (=> d!2134520 (= (Exists!3681 lambda!382732) (choose!50606 lambda!382732))))

(declare-fun bs!1810203 () Bool)

(assert (= bs!1810203 d!2134520))

(declare-fun m!7540562 () Bool)

(assert (=> bs!1810203 m!7540562))

(assert (=> d!2133958 d!2134520))

(declare-fun d!2134522 () Bool)

(assert (=> d!2134522 (= (Exists!3681 lambda!382733) (choose!50606 lambda!382733))))

(declare-fun bs!1810204 () Bool)

(assert (= bs!1810204 d!2134522))

(declare-fun m!7540564 () Bool)

(assert (=> bs!1810204 m!7540564))

(assert (=> d!2133958 d!2134522))

(declare-fun bs!1810205 () Bool)

(declare-fun d!2134524 () Bool)

(assert (= bs!1810205 (and d!2134524 b!6793216)))

(declare-fun lambda!382822 () Int)

(assert (=> bs!1810205 (not (= lambda!382822 lambda!382809))))

(declare-fun bs!1810206 () Bool)

(assert (= bs!1810206 (and d!2134524 d!2133972)))

(assert (=> bs!1810206 (= lambda!382822 lambda!382742)))

(declare-fun bs!1810207 () Bool)

(assert (= bs!1810207 (and d!2134524 b!6792505)))

(assert (=> bs!1810207 (not (= lambda!382822 lambda!382771))))

(declare-fun bs!1810208 () Bool)

(assert (= bs!1810208 (and d!2134524 d!2133958)))

(assert (=> bs!1810208 (= lambda!382822 lambda!382732)))

(declare-fun bs!1810209 () Bool)

(assert (= bs!1810209 (and d!2134524 b!6792685)))

(assert (=> bs!1810209 (not (= lambda!382822 lambda!382785))))

(declare-fun bs!1810210 () Bool)

(assert (= bs!1810210 (and d!2134524 b!6792048)))

(assert (=> bs!1810210 (not (= lambda!382822 lambda!382744))))

(declare-fun bs!1810211 () Bool)

(assert (= bs!1810211 (and d!2134524 b!6791842)))

(assert (=> bs!1810211 (not (= lambda!382822 lambda!382726))))

(declare-fun bs!1810212 () Bool)

(assert (= bs!1810212 (and d!2134524 b!6792497)))

(assert (=> bs!1810212 (not (= lambda!382822 lambda!382773))))

(declare-fun bs!1810213 () Bool)

(assert (= bs!1810213 (and d!2134524 b!6792717)))

(assert (=> bs!1810213 (not (= lambda!382822 lambda!382789))))

(declare-fun bs!1810214 () Bool)

(assert (= bs!1810214 (and d!2134524 b!6791299)))

(assert (=> bs!1810214 (= lambda!382822 lambda!382656)))

(assert (=> bs!1810214 (not (= lambda!382822 lambda!382657))))

(declare-fun bs!1810215 () Bool)

(assert (= bs!1810215 (and d!2134524 d!2134450)))

(assert (=> bs!1810215 (= (= r!7292 (Star!16613 (reg!16942 r!7292))) (= lambda!382822 lambda!382807))))

(declare-fun bs!1810216 () Bool)

(assert (= bs!1810216 (and d!2134524 d!2133960)))

(assert (=> bs!1810216 (= (= r!7292 (Star!16613 (reg!16942 r!7292))) (= lambda!382822 lambda!382738))))

(assert (=> bs!1810214 (not (= lambda!382822 lambda!382658))))

(declare-fun bs!1810217 () Bool)

(assert (= bs!1810217 (and d!2134524 d!2134514)))

(assert (=> bs!1810217 (= lambda!382822 lambda!382817)))

(declare-fun bs!1810218 () Bool)

(assert (= bs!1810218 (and d!2134524 b!6792725)))

(assert (=> bs!1810218 (not (= lambda!382822 lambda!382788))))

(declare-fun bs!1810219 () Bool)

(assert (= bs!1810219 (and d!2134524 b!6792040)))

(assert (=> bs!1810219 (not (= lambda!382822 lambda!382745))))

(declare-fun bs!1810220 () Bool)

(assert (= bs!1810220 (and d!2134524 b!6793208)))

(assert (=> bs!1810220 (not (= lambda!382822 lambda!382810))))

(assert (=> bs!1810208 (not (= lambda!382822 lambda!382733))))

(declare-fun bs!1810221 () Bool)

(assert (= bs!1810221 (and d!2134524 b!6792693)))

(assert (=> bs!1810221 (not (= lambda!382822 lambda!382783))))

(assert (=> bs!1810215 (not (= lambda!382822 lambda!382808))))

(declare-fun bs!1810222 () Bool)

(assert (= bs!1810222 (and d!2134524 b!6791834)))

(assert (=> bs!1810222 (not (= lambda!382822 lambda!382727))))

(assert (=> bs!1810216 (not (= lambda!382822 lambda!382739))))

(assert (=> d!2134524 true))

(assert (=> d!2134524 true))

(assert (=> d!2134524 true))

(declare-fun lambda!382823 () Int)

(assert (=> bs!1810205 (not (= lambda!382823 lambda!382809))))

(assert (=> bs!1810206 (not (= lambda!382823 lambda!382742))))

(assert (=> bs!1810207 (not (= lambda!382823 lambda!382771))))

(assert (=> bs!1810208 (not (= lambda!382823 lambda!382732))))

(assert (=> bs!1810209 (= (and (= (reg!16942 r!7292) (regOne!33738 (regOne!33739 r!7292))) (= r!7292 (regTwo!33738 (regOne!33739 r!7292)))) (= lambda!382823 lambda!382785))))

(assert (=> bs!1810210 (not (= lambda!382823 lambda!382744))))

(assert (=> bs!1810211 (not (= lambda!382823 lambda!382726))))

(assert (=> bs!1810212 (= (and (= (reg!16942 r!7292) (regOne!33738 (regTwo!33739 r!7292))) (= r!7292 (regTwo!33738 (regTwo!33739 r!7292)))) (= lambda!382823 lambda!382773))))

(assert (=> bs!1810213 (= (and (= (reg!16942 r!7292) (regOne!33738 (regTwo!33739 lt!2446525))) (= r!7292 (regTwo!33738 (regTwo!33739 lt!2446525)))) (= lambda!382823 lambda!382789))))

(assert (=> bs!1810214 (not (= lambda!382823 lambda!382656))))

(assert (=> bs!1810215 (not (= lambda!382823 lambda!382807))))

(assert (=> bs!1810216 (not (= lambda!382823 lambda!382738))))

(assert (=> bs!1810214 (= lambda!382823 lambda!382658)))

(assert (=> bs!1810217 (not (= lambda!382823 lambda!382817))))

(assert (=> bs!1810218 (not (= lambda!382823 lambda!382788))))

(assert (=> bs!1810219 (= (and (= (reg!16942 r!7292) (regOne!33738 r!7292)) (= r!7292 (regTwo!33738 r!7292))) (= lambda!382823 lambda!382745))))

(assert (=> bs!1810220 (= (and (= (reg!16942 r!7292) (regOne!33738 (regOne!33739 lt!2446525))) (= r!7292 (regTwo!33738 (regOne!33739 lt!2446525)))) (= lambda!382823 lambda!382810))))

(assert (=> bs!1810208 (= lambda!382823 lambda!382733)))

(assert (=> bs!1810221 (not (= lambda!382823 lambda!382783))))

(assert (=> bs!1810215 (not (= lambda!382823 lambda!382808))))

(assert (=> bs!1810222 (= (and (= (reg!16942 r!7292) (regOne!33738 lt!2446525)) (= r!7292 (regTwo!33738 lt!2446525))) (= lambda!382823 lambda!382727))))

(assert (=> bs!1810216 (not (= lambda!382823 lambda!382739))))

(assert (=> bs!1810214 (not (= lambda!382823 lambda!382657))))

(declare-fun bs!1810223 () Bool)

(assert (= bs!1810223 d!2134524))

(assert (=> bs!1810223 (not (= lambda!382823 lambda!382822))))

(assert (=> d!2134524 true))

(assert (=> d!2134524 true))

(assert (=> d!2134524 true))

(assert (=> d!2134524 (= (Exists!3681 lambda!382822) (Exists!3681 lambda!382823))))

(assert (=> d!2134524 true))

(declare-fun _$90!2680 () Unit!159917)

(assert (=> d!2134524 (= (choose!50603 (reg!16942 r!7292) r!7292 s!2326) _$90!2680)))

(declare-fun m!7540566 () Bool)

(assert (=> bs!1810223 m!7540566))

(declare-fun m!7540568 () Bool)

(assert (=> bs!1810223 m!7540568))

(assert (=> d!2133958 d!2134524))

(assert (=> d!2133958 d!2134408))

(declare-fun d!2134526 () Bool)

(assert (=> d!2134526 (= ($colon$colon!2422 (exprs!6497 lt!2446529) (ite (or c!1262408 c!1262410) (regTwo!33738 (reg!16942 r!7292)) (reg!16942 r!7292))) (Cons!66014 (ite (or c!1262408 c!1262410) (regTwo!33738 (reg!16942 r!7292)) (reg!16942 r!7292)) (exprs!6497 lt!2446529)))))

(assert (=> bm!616698 d!2134526))

(declare-fun d!2134528 () Bool)

(assert (=> d!2134528 (= (isConcat!1494 lt!2446608) ((_ is Concat!25458) lt!2446608))))

(assert (=> b!6791763 d!2134528))

(assert (=> d!2133934 d!2133932))

(assert (=> d!2133934 d!2133922))

(declare-fun d!2134530 () Bool)

(assert (=> d!2134530 (= (matchR!8796 lt!2446525 s!2326) (matchRSpec!3714 lt!2446525 s!2326))))

(assert (=> d!2134530 true))

(declare-fun _$88!5606 () Unit!159917)

(assert (=> d!2134530 (= (choose!50601 lt!2446525 s!2326) _$88!5606)))

(declare-fun bs!1810224 () Bool)

(assert (= bs!1810224 d!2134530))

(assert (=> bs!1810224 m!7538750))

(assert (=> bs!1810224 m!7538748))

(assert (=> d!2133934 d!2134530))

(assert (=> d!2133934 d!2134488))

(declare-fun d!2134532 () Bool)

(assert (=> d!2134532 (= (nullable!6592 (reg!16942 r!7292)) (nullableFct!2496 (reg!16942 r!7292)))))

(declare-fun bs!1810225 () Bool)

(assert (= bs!1810225 d!2134532))

(declare-fun m!7540570 () Bool)

(assert (=> bs!1810225 m!7540570))

(assert (=> b!6792084 d!2134532))

(assert (=> bs!1809611 d!2133980))

(declare-fun b!6793279 () Bool)

(declare-fun e!4100176 () (InoxSet Context!11994))

(assert (=> b!6793279 (= e!4100176 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6793280 () Bool)

(declare-fun e!4100177 () (InoxSet Context!11994))

(assert (=> b!6793280 (= e!4100177 e!4100176)))

(declare-fun c!1262745 () Bool)

(assert (=> b!6793280 (= c!1262745 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519))))))))

(declare-fun b!6793281 () Bool)

(declare-fun call!616930 () (InoxSet Context!11994))

(assert (=> b!6793281 (= e!4100177 ((_ map or) call!616930 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519)))))) (h!72463 s!2326))))))

(declare-fun b!6793282 () Bool)

(declare-fun e!4100178 () Bool)

(assert (=> b!6793282 (= e!4100178 (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519)))))))))

(declare-fun b!6793283 () Bool)

(assert (=> b!6793283 (= e!4100176 call!616930)))

(declare-fun d!2134534 () Bool)

(declare-fun c!1262746 () Bool)

(assert (=> d!2134534 (= c!1262746 e!4100178)))

(declare-fun res!2776363 () Bool)

(assert (=> d!2134534 (=> (not res!2776363) (not e!4100178))))

(assert (=> d!2134534 (= res!2776363 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519))))))))

(assert (=> d!2134534 (= (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 lt!2446519))) (h!72463 s!2326)) e!4100177)))

(declare-fun bm!616925 () Bool)

(assert (=> bm!616925 (= call!616930 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519))))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446519)))))) (h!72463 s!2326)))))

(assert (= (and d!2134534 res!2776363) b!6793282))

(assert (= (and d!2134534 c!1262746) b!6793281))

(assert (= (and d!2134534 (not c!1262746)) b!6793280))

(assert (= (and b!6793280 c!1262745) b!6793283))

(assert (= (and b!6793280 (not c!1262745)) b!6793279))

(assert (= (or b!6793281 b!6793283) bm!616925))

(declare-fun m!7540572 () Bool)

(assert (=> b!6793281 m!7540572))

(declare-fun m!7540574 () Bool)

(assert (=> b!6793282 m!7540574))

(declare-fun m!7540576 () Bool)

(assert (=> bm!616925 m!7540576))

(assert (=> b!6791671 d!2134534))

(declare-fun bs!1810226 () Bool)

(declare-fun d!2134536 () Bool)

(assert (= bs!1810226 (and d!2134536 d!2134142)))

(declare-fun lambda!382824 () Int)

(assert (=> bs!1810226 (= lambda!382824 lambda!382770)))

(assert (=> d!2134536 (= (nullableZipper!2320 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326))) (exists!2732 (derivationStepZipper!2557 lt!2446518 (h!72463 s!2326)) lambda!382824))))

(declare-fun bs!1810227 () Bool)

(assert (= bs!1810227 d!2134536))

(assert (=> bs!1810227 m!7538756))

(declare-fun m!7540578 () Bool)

(assert (=> bs!1810227 m!7540578))

(assert (=> b!6791784 d!2134536))

(declare-fun b!6793284 () Bool)

(declare-fun e!4100179 () (InoxSet Context!11994))

(assert (=> b!6793284 (= e!4100179 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6793285 () Bool)

(declare-fun e!4100180 () (InoxSet Context!11994))

(assert (=> b!6793285 (= e!4100180 e!4100179)))

(declare-fun c!1262747 () Bool)

(assert (=> b!6793285 (= c!1262747 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529))))))))

(declare-fun b!6793286 () Bool)

(declare-fun call!616931 () (InoxSet Context!11994))

(assert (=> b!6793286 (= e!4100180 ((_ map or) call!616931 (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529)))))) (h!72463 s!2326))))))

(declare-fun b!6793287 () Bool)

(declare-fun e!4100181 () Bool)

(assert (=> b!6793287 (= e!4100181 (nullable!6592 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529)))))))))

(declare-fun b!6793288 () Bool)

(assert (=> b!6793288 (= e!4100179 call!616931)))

(declare-fun d!2134538 () Bool)

(declare-fun c!1262748 () Bool)

(assert (=> d!2134538 (= c!1262748 e!4100181)))

(declare-fun res!2776364 () Bool)

(assert (=> d!2134538 (=> (not res!2776364) (not e!4100181))))

(assert (=> d!2134538 (= res!2776364 ((_ is Cons!66014) (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529))))))))

(assert (=> d!2134538 (= (derivationStepZipperUp!1767 (Context!11995 (t!379861 (exprs!6497 lt!2446529))) (h!72463 s!2326)) e!4100180)))

(declare-fun bm!616926 () Bool)

(assert (=> bm!616926 (= call!616931 (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529))))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 lt!2446529)))))) (h!72463 s!2326)))))

(assert (= (and d!2134538 res!2776364) b!6793287))

(assert (= (and d!2134538 c!1262748) b!6793286))

(assert (= (and d!2134538 (not c!1262748)) b!6793285))

(assert (= (and b!6793285 c!1262747) b!6793288))

(assert (= (and b!6793285 (not c!1262747)) b!6793284))

(assert (= (or b!6793286 b!6793288) bm!616926))

(declare-fun m!7540580 () Bool)

(assert (=> b!6793286 m!7540580))

(declare-fun m!7540582 () Bool)

(assert (=> b!6793287 m!7540582))

(declare-fun m!7540584 () Bool)

(assert (=> bm!616926 m!7540584))

(assert (=> b!6791676 d!2134538))

(declare-fun b!6793289 () Bool)

(declare-fun e!4100186 () (InoxSet Context!11994))

(declare-fun call!616934 () (InoxSet Context!11994))

(declare-fun call!616936 () (InoxSet Context!11994))

(assert (=> b!6793289 (= e!4100186 ((_ map or) call!616934 call!616936))))

(declare-fun d!2134540 () Bool)

(declare-fun c!1262750 () Bool)

(assert (=> d!2134540 (= c!1262750 (and ((_ is ElementMatch!16613) (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (= (c!1262203 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (h!72463 s!2326))))))

(declare-fun e!4100184 () (InoxSet Context!11994))

(assert (=> d!2134540 (= (derivationStepZipperDown!1841 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292)) (ite c!1262270 (Context!11995 Nil!66014) (Context!11995 call!616648)) (h!72463 s!2326)) e!4100184)))

(declare-fun bm!616927 () Bool)

(declare-fun call!616935 () List!66138)

(declare-fun call!616933 () List!66138)

(assert (=> bm!616927 (= call!616935 call!616933)))

(declare-fun b!6793290 () Bool)

(assert (=> b!6793290 (= e!4100184 (store ((as const (Array Context!11994 Bool)) false) (ite c!1262270 (Context!11995 Nil!66014) (Context!11995 call!616648)) true))))

(declare-fun b!6793291 () Bool)

(declare-fun e!4100183 () (InoxSet Context!11994))

(declare-fun call!616937 () (InoxSet Context!11994))

(assert (=> b!6793291 (= e!4100183 ((_ map or) call!616934 call!616937))))

(declare-fun bm!616928 () Bool)

(assert (=> bm!616928 (= call!616937 call!616936)))

(declare-fun b!6793292 () Bool)

(declare-fun c!1262749 () Bool)

(assert (=> b!6793292 (= c!1262749 ((_ is Star!16613) (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(declare-fun e!4100182 () (InoxSet Context!11994))

(declare-fun e!4100185 () (InoxSet Context!11994))

(assert (=> b!6793292 (= e!4100182 e!4100185)))

(declare-fun b!6793293 () Bool)

(declare-fun call!616932 () (InoxSet Context!11994))

(assert (=> b!6793293 (= e!4100182 call!616932)))

(declare-fun b!6793294 () Bool)

(assert (=> b!6793294 (= e!4100183 e!4100182)))

(declare-fun c!1262753 () Bool)

(assert (=> b!6793294 (= c!1262753 ((_ is Concat!25458) (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(declare-fun b!6793295 () Bool)

(assert (=> b!6793295 (= e!4100185 call!616932)))

(declare-fun b!6793296 () Bool)

(assert (=> b!6793296 (= e!4100184 e!4100186)))

(declare-fun c!1262752 () Bool)

(assert (=> b!6793296 (= c!1262752 ((_ is Union!16613) (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(declare-fun bm!616929 () Bool)

(assert (=> bm!616929 (= call!616932 call!616937)))

(declare-fun b!6793297 () Bool)

(assert (=> b!6793297 (= e!4100185 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6793298 () Bool)

(declare-fun e!4100187 () Bool)

(assert (=> b!6793298 (= e!4100187 (nullable!6592 (regOne!33738 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292)))))))

(declare-fun bm!616930 () Bool)

(assert (=> bm!616930 (= call!616934 (derivationStepZipperDown!1841 (ite c!1262752 (regOne!33739 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (regOne!33738 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292)))) (ite c!1262752 (ite c!1262270 (Context!11995 Nil!66014) (Context!11995 call!616648)) (Context!11995 call!616933)) (h!72463 s!2326)))))

(declare-fun b!6793299 () Bool)

(declare-fun c!1262751 () Bool)

(assert (=> b!6793299 (= c!1262751 e!4100187)))

(declare-fun res!2776365 () Bool)

(assert (=> b!6793299 (=> (not res!2776365) (not e!4100187))))

(assert (=> b!6793299 (= res!2776365 ((_ is Concat!25458) (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))))))

(assert (=> b!6793299 (= e!4100186 e!4100183)))

(declare-fun bm!616931 () Bool)

(assert (=> bm!616931 (= call!616933 ($colon$colon!2422 (exprs!6497 (ite c!1262270 (Context!11995 Nil!66014) (Context!11995 call!616648))) (ite (or c!1262751 c!1262753) (regTwo!33738 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292)))))))

(declare-fun bm!616932 () Bool)

(assert (=> bm!616932 (= call!616936 (derivationStepZipperDown!1841 (ite c!1262752 (regTwo!33739 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (ite c!1262751 (regTwo!33738 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (ite c!1262753 (regOne!33738 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292))) (reg!16942 (ite c!1262270 (regOne!33739 r!7292) (regOne!33738 r!7292)))))) (ite (or c!1262752 c!1262751) (ite c!1262270 (Context!11995 Nil!66014) (Context!11995 call!616648)) (Context!11995 call!616935)) (h!72463 s!2326)))))

(assert (= (and d!2134540 c!1262750) b!6793290))

(assert (= (and d!2134540 (not c!1262750)) b!6793296))

(assert (= (and b!6793296 c!1262752) b!6793289))

(assert (= (and b!6793296 (not c!1262752)) b!6793299))

(assert (= (and b!6793299 res!2776365) b!6793298))

(assert (= (and b!6793299 c!1262751) b!6793291))

(assert (= (and b!6793299 (not c!1262751)) b!6793294))

(assert (= (and b!6793294 c!1262753) b!6793293))

(assert (= (and b!6793294 (not c!1262753)) b!6793292))

(assert (= (and b!6793292 c!1262749) b!6793295))

(assert (= (and b!6793292 (not c!1262749)) b!6793297))

(assert (= (or b!6793293 b!6793295) bm!616927))

(assert (= (or b!6793293 b!6793295) bm!616929))

(assert (= (or b!6793291 bm!616927) bm!616931))

(assert (= (or b!6793291 bm!616929) bm!616928))

(assert (= (or b!6793289 bm!616928) bm!616932))

(assert (= (or b!6793289 b!6793291) bm!616930))

(declare-fun m!7540586 () Bool)

(assert (=> bm!616930 m!7540586))

(declare-fun m!7540588 () Bool)

(assert (=> bm!616932 m!7540588))

(declare-fun m!7540590 () Bool)

(assert (=> b!6793298 m!7540590))

(declare-fun m!7540592 () Bool)

(assert (=> bm!616931 m!7540592))

(declare-fun m!7540594 () Bool)

(assert (=> b!6793290 m!7540594))

(assert (=> bm!616645 d!2134540))

(declare-fun bs!1810228 () Bool)

(declare-fun d!2134542 () Bool)

(assert (= bs!1810228 (and d!2134542 d!2134142)))

(declare-fun lambda!382825 () Int)

(assert (=> bs!1810228 (= lambda!382825 lambda!382770)))

(declare-fun bs!1810229 () Bool)

(assert (= bs!1810229 (and d!2134542 d!2134536)))

(assert (=> bs!1810229 (= lambda!382825 lambda!382824)))

(assert (=> d!2134542 (= (nullableZipper!2320 z!1189) (exists!2732 z!1189 lambda!382825))))

(declare-fun bs!1810230 () Bool)

(assert (= bs!1810230 d!2134542))

(declare-fun m!7540596 () Bool)

(assert (=> bs!1810230 m!7540596))

(assert (=> b!6791971 d!2134542))

(assert (=> bm!616688 d!2133964))

(declare-fun d!2134544 () Bool)

(assert (=> d!2134544 (= (isEmpty!38388 (tail!12722 (unfocusZipperList!2034 zl!343))) ((_ is Nil!66014) (tail!12722 (unfocusZipperList!2034 zl!343))))))

(assert (=> b!6791345 d!2134544))

(declare-fun d!2134546 () Bool)

(assert (=> d!2134546 (= (tail!12722 (unfocusZipperList!2034 zl!343)) (t!379861 (unfocusZipperList!2034 zl!343)))))

(assert (=> b!6791345 d!2134546))

(declare-fun d!2134548 () Bool)

(declare-fun c!1262754 () Bool)

(assert (=> d!2134548 (= c!1262754 (isEmpty!38385 (tail!12723 s!2326)))))

(declare-fun e!4100188 () Bool)

(assert (=> d!2134548 (= (matchZipper!2599 (derivationStepZipper!2557 lt!2446518 (head!13638 s!2326)) (tail!12723 s!2326)) e!4100188)))

(declare-fun b!6793300 () Bool)

(assert (=> b!6793300 (= e!4100188 (nullableZipper!2320 (derivationStepZipper!2557 lt!2446518 (head!13638 s!2326))))))

(declare-fun b!6793301 () Bool)

(assert (=> b!6793301 (= e!4100188 (matchZipper!2599 (derivationStepZipper!2557 (derivationStepZipper!2557 lt!2446518 (head!13638 s!2326)) (head!13638 (tail!12723 s!2326))) (tail!12723 (tail!12723 s!2326))))))

(assert (= (and d!2134548 c!1262754) b!6793300))

(assert (= (and d!2134548 (not c!1262754)) b!6793301))

(assert (=> d!2134548 m!7539164))

(assert (=> d!2134548 m!7539242))

(assert (=> b!6793300 m!7539162))

(declare-fun m!7540598 () Bool)

(assert (=> b!6793300 m!7540598))

(assert (=> b!6793301 m!7539164))

(assert (=> b!6793301 m!7540072))

(assert (=> b!6793301 m!7539162))

(assert (=> b!6793301 m!7540072))

(declare-fun m!7540600 () Bool)

(assert (=> b!6793301 m!7540600))

(assert (=> b!6793301 m!7539164))

(assert (=> b!6793301 m!7540082))

(assert (=> b!6793301 m!7540600))

(assert (=> b!6793301 m!7540082))

(declare-fun m!7540602 () Bool)

(assert (=> b!6793301 m!7540602))

(assert (=> b!6791783 d!2134548))

(declare-fun bs!1810231 () Bool)

(declare-fun d!2134550 () Bool)

(assert (= bs!1810231 (and d!2134550 d!2133810)))

(declare-fun lambda!382826 () Int)

(assert (=> bs!1810231 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382826 lambda!382686))))

(declare-fun bs!1810232 () Bool)

(assert (= bs!1810232 (and d!2134550 d!2133916)))

(assert (=> bs!1810232 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382826 lambda!382712))))

(declare-fun bs!1810233 () Bool)

(assert (= bs!1810233 (and d!2134550 d!2134474)))

(assert (=> bs!1810233 (= (= (head!13638 s!2326) (head!13638 (t!379862 s!2326))) (= lambda!382826 lambda!382811))))

(declare-fun bs!1810234 () Bool)

(assert (= bs!1810234 (and d!2134550 d!2134484)))

(assert (=> bs!1810234 (= lambda!382826 lambda!382812)))

(declare-fun bs!1810235 () Bool)

(assert (= bs!1810235 (and d!2134550 d!2133878)))

(assert (=> bs!1810235 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382826 lambda!382693))))

(declare-fun bs!1810236 () Bool)

(assert (= bs!1810236 (and d!2134550 b!6791302)))

(assert (=> bs!1810236 (= (= (head!13638 s!2326) (h!72463 s!2326)) (= lambda!382826 lambda!382659))))

(assert (=> d!2134550 true))

(assert (=> d!2134550 (= (derivationStepZipper!2557 lt!2446518 (head!13638 s!2326)) (flatMap!2094 lt!2446518 lambda!382826))))

(declare-fun bs!1810237 () Bool)

(assert (= bs!1810237 d!2134550))

(declare-fun m!7540604 () Bool)

(assert (=> bs!1810237 m!7540604))

(assert (=> b!6791783 d!2134550))

(assert (=> b!6791783 d!2134190))

(assert (=> b!6791783 d!2134264))

(declare-fun b!6793302 () Bool)

(declare-fun e!4100195 () Bool)

(declare-fun e!4100194 () Bool)

(assert (=> b!6793302 (= e!4100195 e!4100194)))

(declare-fun res!2776366 () Bool)

(assert (=> b!6793302 (=> (not res!2776366) (not e!4100194))))

(declare-fun lt!2446724 () Bool)

(assert (=> b!6793302 (= res!2776366 (not lt!2446724))))

(declare-fun b!6793303 () Bool)

(declare-fun e!4100189 () Bool)

(assert (=> b!6793303 (= e!4100189 (not lt!2446724))))

(declare-fun bm!616933 () Bool)

(declare-fun call!616938 () Bool)

(assert (=> bm!616933 (= call!616938 (isEmpty!38385 (_2!36891 (get!22988 lt!2446650))))))

(declare-fun b!6793304 () Bool)

(declare-fun res!2776369 () Bool)

(declare-fun e!4100190 () Bool)

(assert (=> b!6793304 (=> (not res!2776369) (not e!4100190))))

(assert (=> b!6793304 (= res!2776369 (isEmpty!38385 (tail!12723 (_2!36891 (get!22988 lt!2446650)))))))

(declare-fun b!6793305 () Bool)

(declare-fun e!4100193 () Bool)

(assert (=> b!6793305 (= e!4100194 e!4100193)))

(declare-fun res!2776368 () Bool)

(assert (=> b!6793305 (=> res!2776368 e!4100193)))

(assert (=> b!6793305 (= res!2776368 call!616938)))

(declare-fun d!2134552 () Bool)

(declare-fun e!4100191 () Bool)

(assert (=> d!2134552 e!4100191))

(declare-fun c!1262757 () Bool)

(assert (=> d!2134552 (= c!1262757 ((_ is EmptyExpr!16613) r!7292))))

(declare-fun e!4100192 () Bool)

(assert (=> d!2134552 (= lt!2446724 e!4100192)))

(declare-fun c!1262756 () Bool)

(assert (=> d!2134552 (= c!1262756 (isEmpty!38385 (_2!36891 (get!22988 lt!2446650))))))

(assert (=> d!2134552 (validRegex!8349 r!7292)))

(assert (=> d!2134552 (= (matchR!8796 r!7292 (_2!36891 (get!22988 lt!2446650))) lt!2446724)))

(declare-fun b!6793306 () Bool)

(declare-fun res!2776372 () Bool)

(assert (=> b!6793306 (=> res!2776372 e!4100195)))

(assert (=> b!6793306 (= res!2776372 e!4100190)))

(declare-fun res!2776367 () Bool)

(assert (=> b!6793306 (=> (not res!2776367) (not e!4100190))))

(assert (=> b!6793306 (= res!2776367 lt!2446724)))

(declare-fun b!6793307 () Bool)

(assert (=> b!6793307 (= e!4100190 (= (head!13638 (_2!36891 (get!22988 lt!2446650))) (c!1262203 r!7292)))))

(declare-fun b!6793308 () Bool)

(declare-fun res!2776370 () Bool)

(assert (=> b!6793308 (=> res!2776370 e!4100193)))

(assert (=> b!6793308 (= res!2776370 (not (isEmpty!38385 (tail!12723 (_2!36891 (get!22988 lt!2446650))))))))

(declare-fun b!6793309 () Bool)

(declare-fun res!2776373 () Bool)

(assert (=> b!6793309 (=> res!2776373 e!4100195)))

(assert (=> b!6793309 (= res!2776373 (not ((_ is ElementMatch!16613) r!7292)))))

(assert (=> b!6793309 (= e!4100189 e!4100195)))

(declare-fun b!6793310 () Bool)

(assert (=> b!6793310 (= e!4100191 e!4100189)))

(declare-fun c!1262755 () Bool)

(assert (=> b!6793310 (= c!1262755 ((_ is EmptyLang!16613) r!7292))))

(declare-fun b!6793311 () Bool)

(assert (=> b!6793311 (= e!4100191 (= lt!2446724 call!616938))))

(declare-fun b!6793312 () Bool)

(assert (=> b!6793312 (= e!4100192 (matchR!8796 (derivativeStep!5277 r!7292 (head!13638 (_2!36891 (get!22988 lt!2446650)))) (tail!12723 (_2!36891 (get!22988 lt!2446650)))))))

(declare-fun b!6793313 () Bool)

(assert (=> b!6793313 (= e!4100193 (not (= (head!13638 (_2!36891 (get!22988 lt!2446650))) (c!1262203 r!7292))))))

(declare-fun b!6793314 () Bool)

(assert (=> b!6793314 (= e!4100192 (nullable!6592 r!7292))))

(declare-fun b!6793315 () Bool)

(declare-fun res!2776371 () Bool)

(assert (=> b!6793315 (=> (not res!2776371) (not e!4100190))))

(assert (=> b!6793315 (= res!2776371 (not call!616938))))

(assert (= (and d!2134552 c!1262756) b!6793314))

(assert (= (and d!2134552 (not c!1262756)) b!6793312))

(assert (= (and d!2134552 c!1262757) b!6793311))

(assert (= (and d!2134552 (not c!1262757)) b!6793310))

(assert (= (and b!6793310 c!1262755) b!6793303))

(assert (= (and b!6793310 (not c!1262755)) b!6793309))

(assert (= (and b!6793309 (not res!2776373)) b!6793306))

(assert (= (and b!6793306 res!2776367) b!6793315))

(assert (= (and b!6793315 res!2776371) b!6793304))

(assert (= (and b!6793304 res!2776369) b!6793307))

(assert (= (and b!6793306 (not res!2776372)) b!6793302))

(assert (= (and b!6793302 res!2776366) b!6793305))

(assert (= (and b!6793305 (not res!2776368)) b!6793308))

(assert (= (and b!6793308 (not res!2776370)) b!6793313))

(assert (= (or b!6793311 b!6793305 b!6793315) bm!616933))

(declare-fun m!7540606 () Bool)

(assert (=> b!6793307 m!7540606))

(assert (=> b!6793314 m!7539354))

(assert (=> b!6793312 m!7540606))

(assert (=> b!6793312 m!7540606))

(declare-fun m!7540608 () Bool)

(assert (=> b!6793312 m!7540608))

(declare-fun m!7540610 () Bool)

(assert (=> b!6793312 m!7540610))

(assert (=> b!6793312 m!7540608))

(assert (=> b!6793312 m!7540610))

(declare-fun m!7540612 () Bool)

(assert (=> b!6793312 m!7540612))

(assert (=> b!6793313 m!7540606))

(assert (=> b!6793308 m!7540610))

(assert (=> b!6793308 m!7540610))

(declare-fun m!7540614 () Bool)

(assert (=> b!6793308 m!7540614))

(declare-fun m!7540616 () Bool)

(assert (=> bm!616933 m!7540616))

(assert (=> d!2134552 m!7540616))

(assert (=> d!2134552 m!7538658))

(assert (=> b!6793304 m!7540610))

(assert (=> b!6793304 m!7540610))

(assert (=> b!6793304 m!7540614))

(assert (=> b!6792015 d!2134552))

(assert (=> b!6792015 d!2134188))

(declare-fun d!2134554 () Bool)

(assert (=> d!2134554 (= (nullable!6592 r!7292) (nullableFct!2496 r!7292))))

(declare-fun bs!1810238 () Bool)

(assert (= bs!1810238 d!2134554))

(declare-fun m!7540618 () Bool)

(assert (=> bs!1810238 m!7540618))

(assert (=> b!6792061 d!2134554))

(declare-fun b!6793316 () Bool)

(declare-fun e!4100196 () Bool)

(declare-fun e!4100199 () Bool)

(assert (=> b!6793316 (= e!4100196 e!4100199)))

(declare-fun res!2776376 () Bool)

(assert (=> b!6793316 (=> (not res!2776376) (not e!4100199))))

(declare-fun call!616940 () Bool)

(assert (=> b!6793316 (= res!2776376 call!616940)))

(declare-fun b!6793317 () Bool)

(declare-fun res!2776375 () Bool)

(assert (=> b!6793317 (=> res!2776375 e!4100196)))

(assert (=> b!6793317 (= res!2776375 (not ((_ is Concat!25458) lt!2446608)))))

(declare-fun e!4100198 () Bool)

(assert (=> b!6793317 (= e!4100198 e!4100196)))

(declare-fun c!1262759 () Bool)

(declare-fun c!1262758 () Bool)

(declare-fun call!616939 () Bool)

(declare-fun bm!616934 () Bool)

(assert (=> bm!616934 (= call!616939 (validRegex!8349 (ite c!1262758 (reg!16942 lt!2446608) (ite c!1262759 (regTwo!33739 lt!2446608) (regTwo!33738 lt!2446608)))))))

(declare-fun d!2134556 () Bool)

(declare-fun res!2776378 () Bool)

(declare-fun e!4100197 () Bool)

(assert (=> d!2134556 (=> res!2776378 e!4100197)))

(assert (=> d!2134556 (= res!2776378 ((_ is ElementMatch!16613) lt!2446608))))

(assert (=> d!2134556 (= (validRegex!8349 lt!2446608) e!4100197)))

(declare-fun bm!616935 () Bool)

(declare-fun call!616941 () Bool)

(assert (=> bm!616935 (= call!616941 call!616939)))

(declare-fun b!6793318 () Bool)

(assert (=> b!6793318 (= e!4100199 call!616941)))

(declare-fun b!6793319 () Bool)

(declare-fun e!4100200 () Bool)

(declare-fun e!4100202 () Bool)

(assert (=> b!6793319 (= e!4100200 e!4100202)))

(declare-fun res!2776377 () Bool)

(assert (=> b!6793319 (= res!2776377 (not (nullable!6592 (reg!16942 lt!2446608))))))

(assert (=> b!6793319 (=> (not res!2776377) (not e!4100202))))

(declare-fun b!6793320 () Bool)

(declare-fun e!4100201 () Bool)

(assert (=> b!6793320 (= e!4100201 call!616941)))

(declare-fun b!6793321 () Bool)

(assert (=> b!6793321 (= e!4100202 call!616939)))

(declare-fun bm!616936 () Bool)

(assert (=> bm!616936 (= call!616940 (validRegex!8349 (ite c!1262759 (regOne!33739 lt!2446608) (regOne!33738 lt!2446608))))))

(declare-fun b!6793322 () Bool)

(assert (=> b!6793322 (= e!4100197 e!4100200)))

(assert (=> b!6793322 (= c!1262758 ((_ is Star!16613) lt!2446608))))

(declare-fun b!6793323 () Bool)

(declare-fun res!2776374 () Bool)

(assert (=> b!6793323 (=> (not res!2776374) (not e!4100201))))

(assert (=> b!6793323 (= res!2776374 call!616940)))

(assert (=> b!6793323 (= e!4100198 e!4100201)))

(declare-fun b!6793324 () Bool)

(assert (=> b!6793324 (= e!4100200 e!4100198)))

(assert (=> b!6793324 (= c!1262759 ((_ is Union!16613) lt!2446608))))

(assert (= (and d!2134556 (not res!2776378)) b!6793322))

(assert (= (and b!6793322 c!1262758) b!6793319))

(assert (= (and b!6793322 (not c!1262758)) b!6793324))

(assert (= (and b!6793319 res!2776377) b!6793321))

(assert (= (and b!6793324 c!1262759) b!6793323))

(assert (= (and b!6793324 (not c!1262759)) b!6793317))

(assert (= (and b!6793323 res!2776374) b!6793320))

(assert (= (and b!6793317 (not res!2776375)) b!6793316))

(assert (= (and b!6793316 res!2776376) b!6793318))

(assert (= (or b!6793320 b!6793318) bm!616935))

(assert (= (or b!6793323 b!6793316) bm!616936))

(assert (= (or b!6793321 bm!616935) bm!616934))

(declare-fun m!7540620 () Bool)

(assert (=> bm!616934 m!7540620))

(declare-fun m!7540622 () Bool)

(assert (=> b!6793319 m!7540622))

(declare-fun m!7540624 () Bool)

(assert (=> bm!616936 m!7540624))

(assert (=> d!2133890 d!2134556))

(declare-fun d!2134558 () Bool)

(declare-fun res!2776379 () Bool)

(declare-fun e!4100203 () Bool)

(assert (=> d!2134558 (=> res!2776379 e!4100203)))

(assert (=> d!2134558 (= res!2776379 ((_ is Nil!66014) (exprs!6497 (h!72464 zl!343))))))

(assert (=> d!2134558 (= (forall!15805 (exprs!6497 (h!72464 zl!343)) lambda!382704) e!4100203)))

(declare-fun b!6793325 () Bool)

(declare-fun e!4100204 () Bool)

(assert (=> b!6793325 (= e!4100203 e!4100204)))

(declare-fun res!2776380 () Bool)

(assert (=> b!6793325 (=> (not res!2776380) (not e!4100204))))

(assert (=> b!6793325 (= res!2776380 (dynLambda!26352 lambda!382704 (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun b!6793326 () Bool)

(assert (=> b!6793326 (= e!4100204 (forall!15805 (t!379861 (exprs!6497 (h!72464 zl!343))) lambda!382704))))

(assert (= (and d!2134558 (not res!2776379)) b!6793325))

(assert (= (and b!6793325 res!2776380) b!6793326))

(declare-fun b_lambda!255905 () Bool)

(assert (=> (not b_lambda!255905) (not b!6793325)))

(declare-fun m!7540626 () Bool)

(assert (=> b!6793325 m!7540626))

(declare-fun m!7540628 () Bool)

(assert (=> b!6793326 m!7540628))

(assert (=> d!2133890 d!2134558))

(assert (=> d!2133812 d!2133826))

(declare-fun d!2134560 () Bool)

(assert (=> d!2134560 (= (map!15080 lt!2446535 lambda!382660) (store ((as const (Array Context!11994 Bool)) false) (dynLambda!26349 lambda!382660 lt!2446519) true))))

(assert (=> d!2134560 true))

(declare-fun _$12!1711 () Unit!159917)

(assert (=> d!2134560 (= (choose!50596 lt!2446535 lt!2446519 lambda!382660) _$12!1711)))

(declare-fun b_lambda!255907 () Bool)

(assert (=> (not b_lambda!255907) (not d!2134560)))

(declare-fun bs!1810239 () Bool)

(assert (= bs!1810239 d!2134560))

(assert (=> bs!1810239 m!7538722))

(assert (=> bs!1810239 m!7538908))

(assert (=> bs!1810239 m!7538908))

(assert (=> bs!1810239 m!7538910))

(assert (=> d!2133812 d!2134560))

(assert (=> b!6791376 d!2133890))

(declare-fun bs!1810240 () Bool)

(declare-fun d!2134562 () Bool)

(assert (= bs!1810240 (and d!2134562 d!2133858)))

(declare-fun lambda!382827 () Int)

(assert (=> bs!1810240 (= lambda!382827 lambda!382690)))

(declare-fun bs!1810241 () Bool)

(assert (= bs!1810241 (and d!2134562 d!2134502)))

(assert (=> bs!1810241 (= lambda!382827 lambda!382813)))

(declare-fun bs!1810242 () Bool)

(assert (= bs!1810242 (and d!2134562 d!2133890)))

(assert (=> bs!1810242 (= lambda!382827 lambda!382704)))

(declare-fun bs!1810243 () Bool)

(assert (= bs!1810243 (and d!2134562 d!2134412)))

(assert (=> bs!1810243 (= lambda!382827 lambda!382800)))

(declare-fun bs!1810244 () Bool)

(assert (= bs!1810244 (and d!2134562 d!2133774)))

(assert (=> bs!1810244 (= lambda!382827 lambda!382664)))

(declare-fun bs!1810245 () Bool)

(assert (= bs!1810245 (and d!2134562 d!2133974)))

(assert (=> bs!1810245 (= lambda!382827 lambda!382743)))

(declare-fun bs!1810246 () Bool)

(assert (= bs!1810246 (and d!2134562 d!2134442)))

(assert (=> bs!1810246 (= lambda!382827 lambda!382801)))

(declare-fun bs!1810247 () Bool)

(assert (= bs!1810247 (and d!2134562 d!2134504)))

(assert (=> bs!1810247 (= lambda!382827 lambda!382814)))

(declare-fun bs!1810248 () Bool)

(assert (= bs!1810248 (and d!2134562 d!2134128)))

(assert (=> bs!1810248 (= lambda!382827 lambda!382763)))

(declare-fun bs!1810249 () Bool)

(assert (= bs!1810249 (and d!2134562 d!2134444)))

(assert (=> bs!1810249 (= lambda!382827 lambda!382802)))

(declare-fun bs!1810250 () Bool)

(assert (= bs!1810250 (and d!2134562 b!6791309)))

(assert (=> bs!1810250 (= lambda!382827 lambda!382661)))

(declare-fun bs!1810251 () Bool)

(assert (= bs!1810251 (and d!2134562 d!2134246)))

(assert (=> bs!1810251 (= lambda!382827 lambda!382779)))

(declare-fun bs!1810252 () Bool)

(assert (= bs!1810252 (and d!2134562 d!2133910)))

(assert (=> bs!1810252 (= lambda!382827 lambda!382705)))

(declare-fun bs!1810253 () Bool)

(assert (= bs!1810253 (and d!2134562 d!2133778)))

(assert (=> bs!1810253 (= lambda!382827 lambda!382667)))

(declare-fun bs!1810254 () Bool)

(assert (= bs!1810254 (and d!2134562 d!2134230)))

(assert (=> bs!1810254 (= lambda!382827 lambda!382777)))

(declare-fun lt!2446725 () List!66138)

(assert (=> d!2134562 (forall!15805 lt!2446725 lambda!382827)))

(declare-fun e!4100205 () List!66138)

(assert (=> d!2134562 (= lt!2446725 e!4100205)))

(declare-fun c!1262760 () Bool)

(assert (=> d!2134562 (= c!1262760 ((_ is Cons!66016) (t!379863 zl!343)))))

(assert (=> d!2134562 (= (unfocusZipperList!2034 (t!379863 zl!343)) lt!2446725)))

(declare-fun b!6793327 () Bool)

(assert (=> b!6793327 (= e!4100205 (Cons!66014 (generalisedConcat!2210 (exprs!6497 (h!72464 (t!379863 zl!343)))) (unfocusZipperList!2034 (t!379863 (t!379863 zl!343)))))))

(declare-fun b!6793328 () Bool)

(assert (=> b!6793328 (= e!4100205 Nil!66014)))

(assert (= (and d!2134562 c!1262760) b!6793327))

(assert (= (and d!2134562 (not c!1262760)) b!6793328))

(declare-fun m!7540630 () Bool)

(assert (=> d!2134562 m!7540630))

(declare-fun m!7540632 () Bool)

(assert (=> b!6793327 m!7540632))

(declare-fun m!7540634 () Bool)

(assert (=> b!6793327 m!7540634))

(assert (=> b!6791376 d!2134562))

(assert (=> d!2133912 d!2133964))

(declare-fun b!6793329 () Bool)

(declare-fun e!4100210 () (InoxSet Context!11994))

(declare-fun call!616944 () (InoxSet Context!11994))

(declare-fun call!616946 () (InoxSet Context!11994))

(assert (=> b!6793329 (= e!4100210 ((_ map or) call!616944 call!616946))))

(declare-fun d!2134564 () Bool)

(declare-fun c!1262762 () Bool)

(assert (=> d!2134564 (= c!1262762 (and ((_ is ElementMatch!16613) (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (= (c!1262203 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (h!72463 s!2326))))))

(declare-fun e!4100208 () (InoxSet Context!11994))

(assert (=> d!2134564 (= (derivationStepZipperDown!1841 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (h!72463 s!2326)) e!4100208)))

(declare-fun bm!616937 () Bool)

(declare-fun call!616945 () List!66138)

(declare-fun call!616943 () List!66138)

(assert (=> bm!616937 (= call!616945 call!616943)))

(declare-fun b!6793330 () Bool)

(assert (=> b!6793330 (= e!4100208 (store ((as const (Array Context!11994 Bool)) false) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) true))))

(declare-fun b!6793331 () Bool)

(declare-fun e!4100207 () (InoxSet Context!11994))

(declare-fun call!616947 () (InoxSet Context!11994))

(assert (=> b!6793331 (= e!4100207 ((_ map or) call!616944 call!616947))))

(declare-fun bm!616938 () Bool)

(assert (=> bm!616938 (= call!616947 call!616946)))

(declare-fun b!6793332 () Bool)

(declare-fun c!1262761 () Bool)

(assert (=> b!6793332 (= c!1262761 ((_ is Star!16613) (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))

(declare-fun e!4100206 () (InoxSet Context!11994))

(declare-fun e!4100209 () (InoxSet Context!11994))

(assert (=> b!6793332 (= e!4100206 e!4100209)))

(declare-fun b!6793333 () Bool)

(declare-fun call!616942 () (InoxSet Context!11994))

(assert (=> b!6793333 (= e!4100206 call!616942)))

(declare-fun b!6793334 () Bool)

(assert (=> b!6793334 (= e!4100207 e!4100206)))

(declare-fun c!1262765 () Bool)

(assert (=> b!6793334 (= c!1262765 ((_ is Concat!25458) (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))

(declare-fun b!6793335 () Bool)

(assert (=> b!6793335 (= e!4100209 call!616942)))

(declare-fun b!6793336 () Bool)

(assert (=> b!6793336 (= e!4100208 e!4100210)))

(declare-fun c!1262764 () Bool)

(assert (=> b!6793336 (= c!1262764 ((_ is Union!16613) (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))

(declare-fun bm!616939 () Bool)

(assert (=> bm!616939 (= call!616942 call!616947)))

(declare-fun b!6793337 () Bool)

(assert (=> b!6793337 (= e!4100209 ((as const (Array Context!11994 Bool)) false))))

(declare-fun b!6793338 () Bool)

(declare-fun e!4100211 () Bool)

(assert (=> b!6793338 (= e!4100211 (nullable!6592 (regOne!33738 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))))

(declare-fun bm!616940 () Bool)

(assert (=> bm!616940 (= call!616944 (derivationStepZipperDown!1841 (ite c!1262764 (regOne!33739 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (regOne!33738 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))) (ite c!1262764 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (Context!11995 call!616943)) (h!72463 s!2326)))))

(declare-fun b!6793339 () Bool)

(declare-fun c!1262763 () Bool)

(assert (=> b!6793339 (= c!1262763 e!4100211)))

(declare-fun res!2776381 () Bool)

(assert (=> b!6793339 (=> (not res!2776381) (not e!4100211))))

(assert (=> b!6793339 (= res!2776381 ((_ is Concat!25458) (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))))))

(assert (=> b!6793339 (= e!4100210 e!4100207)))

(declare-fun bm!616941 () Bool)

(assert (=> bm!616941 (= call!616943 ($colon$colon!2422 (exprs!6497 (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))) (ite (or c!1262763 c!1262765) (regTwo!33738 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))))

(declare-fun bm!616942 () Bool)

(assert (=> bm!616942 (= call!616946 (derivationStepZipperDown!1841 (ite c!1262764 (regTwo!33739 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (ite c!1262763 (regTwo!33738 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (ite c!1262765 (regOne!33738 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (reg!16942 (h!72462 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014)))))))) (ite (or c!1262764 c!1262763) (Context!11995 (t!379861 (exprs!6497 (Context!11995 (Cons!66014 r!7292 Nil!66014))))) (Context!11995 call!616945)) (h!72463 s!2326)))))

(assert (= (and d!2134564 c!1262762) b!6793330))

(assert (= (and d!2134564 (not c!1262762)) b!6793336))

(assert (= (and b!6793336 c!1262764) b!6793329))

(assert (= (and b!6793336 (not c!1262764)) b!6793339))

(assert (= (and b!6793339 res!2776381) b!6793338))

(assert (= (and b!6793339 c!1262763) b!6793331))

(assert (= (and b!6793339 (not c!1262763)) b!6793334))

(assert (= (and b!6793334 c!1262765) b!6793333))

(assert (= (and b!6793334 (not c!1262765)) b!6793332))

(assert (= (and b!6793332 c!1262761) b!6793335))

(assert (= (and b!6793332 (not c!1262761)) b!6793337))

(assert (= (or b!6793333 b!6793335) bm!616937))

(assert (= (or b!6793333 b!6793335) bm!616939))

(assert (= (or b!6793331 bm!616937) bm!616941))

(assert (= (or b!6793331 bm!616939) bm!616938))

(assert (= (or b!6793329 bm!616938) bm!616942))

(assert (= (or b!6793329 b!6793331) bm!616940))

(declare-fun m!7540636 () Bool)

(assert (=> bm!616940 m!7540636))

(declare-fun m!7540638 () Bool)

(assert (=> bm!616942 m!7540638))

(declare-fun m!7540640 () Bool)

(assert (=> b!6793338 m!7540640))

(declare-fun m!7540642 () Bool)

(assert (=> bm!616941 m!7540642))

(declare-fun m!7540644 () Bool)

(assert (=> b!6793330 m!7540644))

(assert (=> bm!616656 d!2134564))

(declare-fun b!6793340 () Bool)

(declare-fun e!4100212 () Bool)

(declare-fun e!4100215 () Bool)

(assert (=> b!6793340 (= e!4100212 e!4100215)))

(declare-fun res!2776384 () Bool)

(assert (=> b!6793340 (=> (not res!2776384) (not e!4100215))))

(declare-fun call!616949 () Bool)

(assert (=> b!6793340 (= res!2776384 call!616949)))

(declare-fun b!6793341 () Bool)

(declare-fun res!2776383 () Bool)

(assert (=> b!6793341 (=> res!2776383 e!4100212)))

(assert (=> b!6793341 (= res!2776383 (not ((_ is Concat!25458) lt!2446544)))))

(declare-fun e!4100214 () Bool)

(assert (=> b!6793341 (= e!4100214 e!4100212)))

(declare-fun call!616948 () Bool)

(declare-fun bm!616943 () Bool)

(declare-fun c!1262766 () Bool)

(declare-fun c!1262767 () Bool)

(assert (=> bm!616943 (= call!616948 (validRegex!8349 (ite c!1262766 (reg!16942 lt!2446544) (ite c!1262767 (regTwo!33739 lt!2446544) (regTwo!33738 lt!2446544)))))))

(declare-fun d!2134566 () Bool)

(declare-fun res!2776386 () Bool)

(declare-fun e!4100213 () Bool)

(assert (=> d!2134566 (=> res!2776386 e!4100213)))

(assert (=> d!2134566 (= res!2776386 ((_ is ElementMatch!16613) lt!2446544))))

(assert (=> d!2134566 (= (validRegex!8349 lt!2446544) e!4100213)))

(declare-fun bm!616944 () Bool)

(declare-fun call!616950 () Bool)

(assert (=> bm!616944 (= call!616950 call!616948)))

(declare-fun b!6793342 () Bool)

(assert (=> b!6793342 (= e!4100215 call!616950)))

(declare-fun b!6793343 () Bool)

(declare-fun e!4100216 () Bool)

(declare-fun e!4100218 () Bool)

(assert (=> b!6793343 (= e!4100216 e!4100218)))

(declare-fun res!2776385 () Bool)

(assert (=> b!6793343 (= res!2776385 (not (nullable!6592 (reg!16942 lt!2446544))))))

(assert (=> b!6793343 (=> (not res!2776385) (not e!4100218))))

(declare-fun b!6793344 () Bool)

(declare-fun e!4100217 () Bool)

(assert (=> b!6793344 (= e!4100217 call!616950)))

(declare-fun b!6793345 () Bool)

(assert (=> b!6793345 (= e!4100218 call!616948)))

(declare-fun bm!616945 () Bool)

(assert (=> bm!616945 (= call!616949 (validRegex!8349 (ite c!1262767 (regOne!33739 lt!2446544) (regOne!33738 lt!2446544))))))

(declare-fun b!6793346 () Bool)

(assert (=> b!6793346 (= e!4100213 e!4100216)))

(assert (=> b!6793346 (= c!1262766 ((_ is Star!16613) lt!2446544))))

(declare-fun b!6793347 () Bool)

(declare-fun res!2776382 () Bool)

(assert (=> b!6793347 (=> (not res!2776382) (not e!4100217))))

(assert (=> b!6793347 (= res!2776382 call!616949)))

(assert (=> b!6793347 (= e!4100214 e!4100217)))

(declare-fun b!6793348 () Bool)

(assert (=> b!6793348 (= e!4100216 e!4100214)))

(assert (=> b!6793348 (= c!1262767 ((_ is Union!16613) lt!2446544))))

(assert (= (and d!2134566 (not res!2776386)) b!6793346))

(assert (= (and b!6793346 c!1262766) b!6793343))

(assert (= (and b!6793346 (not c!1262766)) b!6793348))

(assert (= (and b!6793343 res!2776385) b!6793345))

(assert (= (and b!6793348 c!1262767) b!6793347))

(assert (= (and b!6793348 (not c!1262767)) b!6793341))

(assert (= (and b!6793347 res!2776382) b!6793344))

(assert (= (and b!6793341 (not res!2776383)) b!6793340))

(assert (= (and b!6793340 res!2776384) b!6793342))

(assert (= (or b!6793344 b!6793342) bm!616944))

(assert (= (or b!6793347 b!6793340) bm!616945))

(assert (= (or b!6793345 bm!616944) bm!616943))

(declare-fun m!7540646 () Bool)

(assert (=> bm!616943 m!7540646))

(declare-fun m!7540648 () Bool)

(assert (=> b!6793343 m!7540648))

(declare-fun m!7540650 () Bool)

(assert (=> bm!616945 m!7540650))

(assert (=> d!2133774 d!2134566))

(declare-fun d!2134568 () Bool)

(declare-fun res!2776387 () Bool)

(declare-fun e!4100219 () Bool)

(assert (=> d!2134568 (=> res!2776387 e!4100219)))

(assert (=> d!2134568 (= res!2776387 ((_ is Nil!66014) (unfocusZipperList!2034 zl!343)))))

(assert (=> d!2134568 (= (forall!15805 (unfocusZipperList!2034 zl!343) lambda!382664) e!4100219)))

(declare-fun b!6793349 () Bool)

(declare-fun e!4100220 () Bool)

(assert (=> b!6793349 (= e!4100219 e!4100220)))

(declare-fun res!2776388 () Bool)

(assert (=> b!6793349 (=> (not res!2776388) (not e!4100220))))

(assert (=> b!6793349 (= res!2776388 (dynLambda!26352 lambda!382664 (h!72462 (unfocusZipperList!2034 zl!343))))))

(declare-fun b!6793350 () Bool)

(assert (=> b!6793350 (= e!4100220 (forall!15805 (t!379861 (unfocusZipperList!2034 zl!343)) lambda!382664))))

(assert (= (and d!2134568 (not res!2776387)) b!6793349))

(assert (= (and b!6793349 res!2776388) b!6793350))

(declare-fun b_lambda!255909 () Bool)

(assert (=> (not b_lambda!255909) (not b!6793349)))

(declare-fun m!7540652 () Bool)

(assert (=> b!6793349 m!7540652))

(declare-fun m!7540654 () Bool)

(assert (=> b!6793350 m!7540654))

(assert (=> d!2133774 d!2134568))

(assert (=> d!2133982 d!2133978))

(declare-fun d!2134570 () Bool)

(assert (=> d!2134570 (= (flatMap!2094 lt!2446518 lambda!382659) (dynLambda!26350 lambda!382659 lt!2446524))))

(assert (=> d!2134570 true))

(declare-fun _$13!4241 () Unit!159917)

(assert (=> d!2134570 (= (choose!50599 lt!2446518 lt!2446524 lambda!382659) _$13!4241)))

(declare-fun b_lambda!255911 () Bool)

(assert (=> (not b_lambda!255911) (not d!2134570)))

(declare-fun bs!1810255 () Bool)

(assert (= bs!1810255 d!2134570))

(assert (=> bs!1810255 m!7538702))

(assert (=> bs!1810255 m!7539344))

(assert (=> d!2133982 d!2134570))

(declare-fun b!6793351 () Bool)

(declare-fun e!4100221 () Bool)

(declare-fun e!4100224 () Bool)

(assert (=> b!6793351 (= e!4100221 e!4100224)))

(declare-fun res!2776391 () Bool)

(assert (=> b!6793351 (=> (not res!2776391) (not e!4100224))))

(declare-fun call!616952 () Bool)

(assert (=> b!6793351 (= res!2776391 call!616952)))

(declare-fun b!6793352 () Bool)

(declare-fun res!2776390 () Bool)

(assert (=> b!6793352 (=> res!2776390 e!4100221)))

(assert (=> b!6793352 (= res!2776390 (not ((_ is Concat!25458) lt!2446636)))))

(declare-fun e!4100223 () Bool)

(assert (=> b!6793352 (= e!4100223 e!4100221)))

(declare-fun bm!616946 () Bool)

(declare-fun call!616951 () Bool)

(declare-fun c!1262768 () Bool)

(declare-fun c!1262769 () Bool)

(assert (=> bm!616946 (= call!616951 (validRegex!8349 (ite c!1262768 (reg!16942 lt!2446636) (ite c!1262769 (regTwo!33739 lt!2446636) (regTwo!33738 lt!2446636)))))))

(declare-fun d!2134572 () Bool)

(declare-fun res!2776393 () Bool)

(declare-fun e!4100222 () Bool)

(assert (=> d!2134572 (=> res!2776393 e!4100222)))

(assert (=> d!2134572 (= res!2776393 ((_ is ElementMatch!16613) lt!2446636))))

(assert (=> d!2134572 (= (validRegex!8349 lt!2446636) e!4100222)))

(declare-fun bm!616947 () Bool)

(declare-fun call!616953 () Bool)

(assert (=> bm!616947 (= call!616953 call!616951)))

(declare-fun b!6793353 () Bool)

(assert (=> b!6793353 (= e!4100224 call!616953)))

(declare-fun b!6793354 () Bool)

(declare-fun e!4100225 () Bool)

(declare-fun e!4100227 () Bool)

(assert (=> b!6793354 (= e!4100225 e!4100227)))

(declare-fun res!2776392 () Bool)

(assert (=> b!6793354 (= res!2776392 (not (nullable!6592 (reg!16942 lt!2446636))))))

(assert (=> b!6793354 (=> (not res!2776392) (not e!4100227))))

(declare-fun b!6793355 () Bool)

(declare-fun e!4100226 () Bool)

(assert (=> b!6793355 (= e!4100226 call!616953)))

(declare-fun b!6793356 () Bool)

(assert (=> b!6793356 (= e!4100227 call!616951)))

(declare-fun bm!616948 () Bool)

(assert (=> bm!616948 (= call!616952 (validRegex!8349 (ite c!1262769 (regOne!33739 lt!2446636) (regOne!33738 lt!2446636))))))

(declare-fun b!6793357 () Bool)

(assert (=> b!6793357 (= e!4100222 e!4100225)))

(assert (=> b!6793357 (= c!1262768 ((_ is Star!16613) lt!2446636))))

(declare-fun b!6793358 () Bool)

(declare-fun res!2776389 () Bool)

(assert (=> b!6793358 (=> (not res!2776389) (not e!4100226))))

(assert (=> b!6793358 (= res!2776389 call!616952)))

(assert (=> b!6793358 (= e!4100223 e!4100226)))

(declare-fun b!6793359 () Bool)

(assert (=> b!6793359 (= e!4100225 e!4100223)))

(assert (=> b!6793359 (= c!1262769 ((_ is Union!16613) lt!2446636))))

(assert (= (and d!2134572 (not res!2776393)) b!6793357))

(assert (= (and b!6793357 c!1262768) b!6793354))

(assert (= (and b!6793357 (not c!1262768)) b!6793359))

(assert (= (and b!6793354 res!2776392) b!6793356))

(assert (= (and b!6793359 c!1262769) b!6793358))

(assert (= (and b!6793359 (not c!1262769)) b!6793352))

(assert (= (and b!6793358 res!2776389) b!6793355))

(assert (= (and b!6793352 (not res!2776390)) b!6793351))

(assert (= (and b!6793351 res!2776391) b!6793353))

(assert (= (or b!6793355 b!6793353) bm!616947))

(assert (= (or b!6793358 b!6793351) bm!616948))

(assert (= (or b!6793356 bm!616947) bm!616946))

(declare-fun m!7540656 () Bool)

(assert (=> bm!616946 m!7540656))

(declare-fun m!7540658 () Bool)

(assert (=> b!6793354 m!7540658))

(declare-fun m!7540660 () Bool)

(assert (=> bm!616948 m!7540660))

(assert (=> d!2133952 d!2134572))

(declare-fun bs!1810256 () Bool)

(declare-fun d!2134574 () Bool)

(assert (= bs!1810256 (and d!2134574 d!2133858)))

(declare-fun lambda!382828 () Int)

(assert (=> bs!1810256 (= lambda!382828 lambda!382690)))

(declare-fun bs!1810257 () Bool)

(assert (= bs!1810257 (and d!2134574 d!2134502)))

(assert (=> bs!1810257 (= lambda!382828 lambda!382813)))

(declare-fun bs!1810258 () Bool)

(assert (= bs!1810258 (and d!2134574 d!2133890)))

(assert (=> bs!1810258 (= lambda!382828 lambda!382704)))

(declare-fun bs!1810259 () Bool)

(assert (= bs!1810259 (and d!2134574 d!2134412)))

(assert (=> bs!1810259 (= lambda!382828 lambda!382800)))

(declare-fun bs!1810260 () Bool)

(assert (= bs!1810260 (and d!2134574 d!2133774)))

(assert (=> bs!1810260 (= lambda!382828 lambda!382664)))

(declare-fun bs!1810261 () Bool)

(assert (= bs!1810261 (and d!2134574 d!2133974)))

(assert (=> bs!1810261 (= lambda!382828 lambda!382743)))

(declare-fun bs!1810262 () Bool)

(assert (= bs!1810262 (and d!2134574 d!2134442)))

(assert (=> bs!1810262 (= lambda!382828 lambda!382801)))

(declare-fun bs!1810263 () Bool)

(assert (= bs!1810263 (and d!2134574 d!2134504)))

(assert (=> bs!1810263 (= lambda!382828 lambda!382814)))

(declare-fun bs!1810264 () Bool)

(assert (= bs!1810264 (and d!2134574 d!2134128)))

(assert (=> bs!1810264 (= lambda!382828 lambda!382763)))

(declare-fun bs!1810265 () Bool)

(assert (= bs!1810265 (and d!2134574 d!2134444)))

(assert (=> bs!1810265 (= lambda!382828 lambda!382802)))

(declare-fun bs!1810266 () Bool)

(assert (= bs!1810266 (and d!2134574 b!6791309)))

(assert (=> bs!1810266 (= lambda!382828 lambda!382661)))

(declare-fun bs!1810267 () Bool)

(assert (= bs!1810267 (and d!2134574 d!2134562)))

(assert (=> bs!1810267 (= lambda!382828 lambda!382827)))

(declare-fun bs!1810268 () Bool)

(assert (= bs!1810268 (and d!2134574 d!2134246)))

(assert (=> bs!1810268 (= lambda!382828 lambda!382779)))

(declare-fun bs!1810269 () Bool)

(assert (= bs!1810269 (and d!2134574 d!2133910)))

(assert (=> bs!1810269 (= lambda!382828 lambda!382705)))

(declare-fun bs!1810270 () Bool)

(assert (= bs!1810270 (and d!2134574 d!2133778)))

(assert (=> bs!1810270 (= lambda!382828 lambda!382667)))

(declare-fun bs!1810271 () Bool)

(assert (= bs!1810271 (and d!2134574 d!2134230)))

(assert (=> bs!1810271 (= lambda!382828 lambda!382777)))

(declare-fun b!6793360 () Bool)

(declare-fun e!4100230 () Bool)

(declare-fun lt!2446726 () Regex!16613)

(assert (=> b!6793360 (= e!4100230 (isUnion!1408 lt!2446726))))

(declare-fun b!6793361 () Bool)

(declare-fun e!4100233 () Regex!16613)

(assert (=> b!6793361 (= e!4100233 (Union!16613 (h!72462 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))) (generalisedUnion!2457 (t!379861 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))))))))

(declare-fun b!6793362 () Bool)

(declare-fun e!4100231 () Regex!16613)

(assert (=> b!6793362 (= e!4100231 e!4100233)))

(declare-fun c!1262773 () Bool)

(assert (=> b!6793362 (= c!1262773 ((_ is Cons!66014) (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))))))

(declare-fun e!4100232 () Bool)

(assert (=> d!2134574 e!4100232))

(declare-fun res!2776395 () Bool)

(assert (=> d!2134574 (=> (not res!2776395) (not e!4100232))))

(assert (=> d!2134574 (= res!2776395 (validRegex!8349 lt!2446726))))

(assert (=> d!2134574 (= lt!2446726 e!4100231)))

(declare-fun c!1262770 () Bool)

(declare-fun e!4100229 () Bool)

(assert (=> d!2134574 (= c!1262770 e!4100229)))

(declare-fun res!2776394 () Bool)

(assert (=> d!2134574 (=> (not res!2776394) (not e!4100229))))

(assert (=> d!2134574 (= res!2776394 ((_ is Cons!66014) (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))))))

(assert (=> d!2134574 (forall!15805 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016)) lambda!382828)))

(assert (=> d!2134574 (= (generalisedUnion!2457 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))) lt!2446726)))

(declare-fun b!6793363 () Bool)

(assert (=> b!6793363 (= e!4100231 (h!72462 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))))))

(declare-fun b!6793364 () Bool)

(declare-fun e!4100228 () Bool)

(assert (=> b!6793364 (= e!4100232 e!4100228)))

(declare-fun c!1262772 () Bool)

(assert (=> b!6793364 (= c!1262772 (isEmpty!38388 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016))))))

(declare-fun b!6793365 () Bool)

(assert (=> b!6793365 (= e!4100228 e!4100230)))

(declare-fun c!1262771 () Bool)

(assert (=> b!6793365 (= c!1262771 (isEmpty!38388 (tail!12722 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016)))))))

(declare-fun b!6793366 () Bool)

(assert (=> b!6793366 (= e!4100229 (isEmpty!38388 (t!379861 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016)))))))

(declare-fun b!6793367 () Bool)

(assert (=> b!6793367 (= e!4100230 (= lt!2446726 (head!13637 (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016)))))))

(declare-fun b!6793368 () Bool)

(assert (=> b!6793368 (= e!4100233 EmptyLang!16613)))

(declare-fun b!6793369 () Bool)

(assert (=> b!6793369 (= e!4100228 (isEmptyLang!1978 lt!2446726))))

(assert (= (and d!2134574 res!2776394) b!6793366))

(assert (= (and d!2134574 c!1262770) b!6793363))

(assert (= (and d!2134574 (not c!1262770)) b!6793362))

(assert (= (and b!6793362 c!1262773) b!6793361))

(assert (= (and b!6793362 (not c!1262773)) b!6793368))

(assert (= (and d!2134574 res!2776395) b!6793364))

(assert (= (and b!6793364 c!1262772) b!6793369))

(assert (= (and b!6793364 (not c!1262772)) b!6793365))

(assert (= (and b!6793365 c!1262771) b!6793367))

(assert (= (and b!6793365 (not c!1262771)) b!6793360))

(assert (=> b!6793364 m!7539270))

(declare-fun m!7540662 () Bool)

(assert (=> b!6793364 m!7540662))

(declare-fun m!7540664 () Bool)

(assert (=> b!6793360 m!7540664))

(assert (=> b!6793367 m!7539270))

(declare-fun m!7540666 () Bool)

(assert (=> b!6793367 m!7540666))

(declare-fun m!7540668 () Bool)

(assert (=> b!6793366 m!7540668))

(declare-fun m!7540670 () Bool)

(assert (=> b!6793369 m!7540670))

(assert (=> b!6793365 m!7539270))

(declare-fun m!7540672 () Bool)

(assert (=> b!6793365 m!7540672))

(assert (=> b!6793365 m!7540672))

(declare-fun m!7540674 () Bool)

(assert (=> b!6793365 m!7540674))

(declare-fun m!7540676 () Bool)

(assert (=> d!2134574 m!7540676))

(assert (=> d!2134574 m!7539270))

(declare-fun m!7540678 () Bool)

(assert (=> d!2134574 m!7540678))

(declare-fun m!7540680 () Bool)

(assert (=> b!6793361 m!7540680))

(assert (=> d!2133952 d!2134574))

(declare-fun bs!1810272 () Bool)

(declare-fun d!2134576 () Bool)

(assert (= bs!1810272 (and d!2134576 d!2133858)))

(declare-fun lambda!382829 () Int)

(assert (=> bs!1810272 (= lambda!382829 lambda!382690)))

(declare-fun bs!1810273 () Bool)

(assert (= bs!1810273 (and d!2134576 d!2134502)))

(assert (=> bs!1810273 (= lambda!382829 lambda!382813)))

(declare-fun bs!1810274 () Bool)

(assert (= bs!1810274 (and d!2134576 d!2133890)))

(assert (=> bs!1810274 (= lambda!382829 lambda!382704)))

(declare-fun bs!1810275 () Bool)

(assert (= bs!1810275 (and d!2134576 d!2134412)))

(assert (=> bs!1810275 (= lambda!382829 lambda!382800)))

(declare-fun bs!1810276 () Bool)

(assert (= bs!1810276 (and d!2134576 d!2133774)))

(assert (=> bs!1810276 (= lambda!382829 lambda!382664)))

(declare-fun bs!1810277 () Bool)

(assert (= bs!1810277 (and d!2134576 d!2134442)))

(assert (=> bs!1810277 (= lambda!382829 lambda!382801)))

(declare-fun bs!1810278 () Bool)

(assert (= bs!1810278 (and d!2134576 d!2134504)))

(assert (=> bs!1810278 (= lambda!382829 lambda!382814)))

(declare-fun bs!1810279 () Bool)

(assert (= bs!1810279 (and d!2134576 d!2134128)))

(assert (=> bs!1810279 (= lambda!382829 lambda!382763)))

(declare-fun bs!1810280 () Bool)

(assert (= bs!1810280 (and d!2134576 d!2134444)))

(assert (=> bs!1810280 (= lambda!382829 lambda!382802)))

(declare-fun bs!1810281 () Bool)

(assert (= bs!1810281 (and d!2134576 b!6791309)))

(assert (=> bs!1810281 (= lambda!382829 lambda!382661)))

(declare-fun bs!1810282 () Bool)

(assert (= bs!1810282 (and d!2134576 d!2134562)))

(assert (=> bs!1810282 (= lambda!382829 lambda!382827)))

(declare-fun bs!1810283 () Bool)

(assert (= bs!1810283 (and d!2134576 d!2134574)))

(assert (=> bs!1810283 (= lambda!382829 lambda!382828)))

(declare-fun bs!1810284 () Bool)

(assert (= bs!1810284 (and d!2134576 d!2133974)))

(assert (=> bs!1810284 (= lambda!382829 lambda!382743)))

(declare-fun bs!1810285 () Bool)

(assert (= bs!1810285 (and d!2134576 d!2134246)))

(assert (=> bs!1810285 (= lambda!382829 lambda!382779)))

(declare-fun bs!1810286 () Bool)

(assert (= bs!1810286 (and d!2134576 d!2133910)))

(assert (=> bs!1810286 (= lambda!382829 lambda!382705)))

(declare-fun bs!1810287 () Bool)

(assert (= bs!1810287 (and d!2134576 d!2133778)))

(assert (=> bs!1810287 (= lambda!382829 lambda!382667)))

(declare-fun bs!1810288 () Bool)

(assert (= bs!1810288 (and d!2134576 d!2134230)))

(assert (=> bs!1810288 (= lambda!382829 lambda!382777)))

(declare-fun lt!2446727 () List!66138)

(assert (=> d!2134576 (forall!15805 lt!2446727 lambda!382829)))

(declare-fun e!4100234 () List!66138)

(assert (=> d!2134576 (= lt!2446727 e!4100234)))

(declare-fun c!1262774 () Bool)

(assert (=> d!2134576 (= c!1262774 ((_ is Cons!66016) (Cons!66016 lt!2446524 Nil!66016)))))

(assert (=> d!2134576 (= (unfocusZipperList!2034 (Cons!66016 lt!2446524 Nil!66016)) lt!2446727)))

(declare-fun b!6793370 () Bool)

(assert (=> b!6793370 (= e!4100234 (Cons!66014 (generalisedConcat!2210 (exprs!6497 (h!72464 (Cons!66016 lt!2446524 Nil!66016)))) (unfocusZipperList!2034 (t!379863 (Cons!66016 lt!2446524 Nil!66016)))))))

(declare-fun b!6793371 () Bool)

(assert (=> b!6793371 (= e!4100234 Nil!66014)))

(assert (= (and d!2134576 c!1262774) b!6793370))

(assert (= (and d!2134576 (not c!1262774)) b!6793371))

(declare-fun m!7540682 () Bool)

(assert (=> d!2134576 m!7540682))

(declare-fun m!7540684 () Bool)

(assert (=> b!6793370 m!7540684))

(declare-fun m!7540686 () Bool)

(assert (=> b!6793370 m!7540686))

(assert (=> d!2133952 d!2134576))

(declare-fun d!2134578 () Bool)

(assert (=> d!2134578 (= (nullable!6592 (h!72462 (exprs!6497 (h!72464 zl!343)))) (nullableFct!2496 (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun bs!1810289 () Bool)

(assert (= bs!1810289 d!2134578))

(declare-fun m!7540688 () Bool)

(assert (=> bs!1810289 m!7540688))

(assert (=> b!6791969 d!2134578))

(declare-fun d!2134580 () Bool)

(assert (=> d!2134580 true))

(assert (=> d!2134580 true))

(declare-fun res!2776396 () Bool)

(assert (=> d!2134580 (= (choose!50606 lambda!382657) res!2776396)))

(assert (=> d!2133970 d!2134580))

(declare-fun d!2134582 () Bool)

(assert (=> d!2134582 (= (isEmptyLang!1978 lt!2446544) ((_ is EmptyLang!16613) lt!2446544))))

(assert (=> b!6791349 d!2134582))

(declare-fun d!2134584 () Bool)

(assert (=> d!2134584 (= (isEmptyExpr!1971 lt!2446608) ((_ is EmptyExpr!16613) lt!2446608))))

(assert (=> b!6791762 d!2134584))

(assert (=> d!2133988 d!2133964))

(assert (=> d!2133988 d!2133992))

(declare-fun d!2134586 () Bool)

(declare-fun lt!2446730 () Int)

(assert (=> d!2134586 (>= lt!2446730 0)))

(declare-fun e!4100237 () Int)

(assert (=> d!2134586 (= lt!2446730 e!4100237)))

(declare-fun c!1262777 () Bool)

(assert (=> d!2134586 (= c!1262777 ((_ is Nil!66014) lt!2446589))))

(assert (=> d!2134586 (= (size!40649 lt!2446589) lt!2446730)))

(declare-fun b!6793376 () Bool)

(assert (=> b!6793376 (= e!4100237 0)))

(declare-fun b!6793377 () Bool)

(assert (=> b!6793377 (= e!4100237 (+ 1 (size!40649 (t!379861 lt!2446589))))))

(assert (= (and d!2134586 c!1262777) b!6793376))

(assert (= (and d!2134586 (not c!1262777)) b!6793377))

(declare-fun m!7540690 () Bool)

(assert (=> b!6793377 m!7540690))

(assert (=> b!6791631 d!2134586))

(declare-fun d!2134588 () Bool)

(declare-fun lt!2446731 () Int)

(assert (=> d!2134588 (>= lt!2446731 0)))

(declare-fun e!4100238 () Int)

(assert (=> d!2134588 (= lt!2446731 e!4100238)))

(declare-fun c!1262778 () Bool)

(assert (=> d!2134588 (= c!1262778 ((_ is Nil!66014) (Cons!66014 (reg!16942 r!7292) Nil!66014)))))

(assert (=> d!2134588 (= (size!40649 (Cons!66014 (reg!16942 r!7292) Nil!66014)) lt!2446731)))

(declare-fun b!6793378 () Bool)

(assert (=> b!6793378 (= e!4100238 0)))

(declare-fun b!6793379 () Bool)

(assert (=> b!6793379 (= e!4100238 (+ 1 (size!40649 (t!379861 (Cons!66014 (reg!16942 r!7292) Nil!66014)))))))

(assert (= (and d!2134588 c!1262778) b!6793378))

(assert (= (and d!2134588 (not c!1262778)) b!6793379))

(assert (=> b!6793379 m!7539962))

(assert (=> b!6791631 d!2134588))

(declare-fun d!2134590 () Bool)

(declare-fun lt!2446732 () Int)

(assert (=> d!2134590 (>= lt!2446732 0)))

(declare-fun e!4100239 () Int)

(assert (=> d!2134590 (= lt!2446732 e!4100239)))

(declare-fun c!1262779 () Bool)

(assert (=> d!2134590 (= c!1262779 ((_ is Nil!66014) lt!2446511))))

(assert (=> d!2134590 (= (size!40649 lt!2446511) lt!2446732)))

(declare-fun b!6793380 () Bool)

(assert (=> b!6793380 (= e!4100239 0)))

(declare-fun b!6793381 () Bool)

(assert (=> b!6793381 (= e!4100239 (+ 1 (size!40649 (t!379861 lt!2446511))))))

(assert (= (and d!2134590 c!1262779) b!6793380))

(assert (= (and d!2134590 (not c!1262779)) b!6793381))

(declare-fun m!7540692 () Bool)

(assert (=> b!6793381 m!7540692))

(assert (=> b!6791631 d!2134590))

(declare-fun d!2134592 () Bool)

(assert (=> d!2134592 (= (flatMap!2094 lt!2446518 lambda!382712) (choose!50600 lt!2446518 lambda!382712))))

(declare-fun bs!1810290 () Bool)

(assert (= bs!1810290 d!2134592))

(declare-fun m!7540694 () Bool)

(assert (=> bs!1810290 m!7540694))

(assert (=> d!2133916 d!2134592))

(declare-fun d!2134594 () Bool)

(assert (=> d!2134594 (= (nullable!6592 lt!2446525) (nullableFct!2496 lt!2446525))))

(declare-fun bs!1810291 () Bool)

(assert (= bs!1810291 d!2134594))

(declare-fun m!7540696 () Bool)

(assert (=> bs!1810291 m!7540696))

(assert (=> b!6791930 d!2134594))

(declare-fun e!4100240 () Bool)

(assert (=> b!6792106 (= tp!1860111 e!4100240)))

(declare-fun b!6793383 () Bool)

(declare-fun tp!1860349 () Bool)

(declare-fun tp!1860352 () Bool)

(assert (=> b!6793383 (= e!4100240 (and tp!1860349 tp!1860352))))

(declare-fun b!6793385 () Bool)

(declare-fun tp!1860348 () Bool)

(declare-fun tp!1860350 () Bool)

(assert (=> b!6793385 (= e!4100240 (and tp!1860348 tp!1860350))))

(declare-fun b!6793382 () Bool)

(assert (=> b!6793382 (= e!4100240 tp_is_empty!42479)))

(declare-fun b!6793384 () Bool)

(declare-fun tp!1860351 () Bool)

(assert (=> b!6793384 (= e!4100240 tp!1860351)))

(assert (= (and b!6792106 ((_ is ElementMatch!16613) (regOne!33738 (reg!16942 r!7292)))) b!6793382))

(assert (= (and b!6792106 ((_ is Concat!25458) (regOne!33738 (reg!16942 r!7292)))) b!6793383))

(assert (= (and b!6792106 ((_ is Star!16613) (regOne!33738 (reg!16942 r!7292)))) b!6793384))

(assert (= (and b!6792106 ((_ is Union!16613) (regOne!33738 (reg!16942 r!7292)))) b!6793385))

(declare-fun e!4100241 () Bool)

(assert (=> b!6792106 (= tp!1860114 e!4100241)))

(declare-fun b!6793387 () Bool)

(declare-fun tp!1860354 () Bool)

(declare-fun tp!1860357 () Bool)

(assert (=> b!6793387 (= e!4100241 (and tp!1860354 tp!1860357))))

(declare-fun b!6793389 () Bool)

(declare-fun tp!1860353 () Bool)

(declare-fun tp!1860355 () Bool)

(assert (=> b!6793389 (= e!4100241 (and tp!1860353 tp!1860355))))

(declare-fun b!6793386 () Bool)

(assert (=> b!6793386 (= e!4100241 tp_is_empty!42479)))

(declare-fun b!6793388 () Bool)

(declare-fun tp!1860356 () Bool)

(assert (=> b!6793388 (= e!4100241 tp!1860356)))

(assert (= (and b!6792106 ((_ is ElementMatch!16613) (regTwo!33738 (reg!16942 r!7292)))) b!6793386))

(assert (= (and b!6792106 ((_ is Concat!25458) (regTwo!33738 (reg!16942 r!7292)))) b!6793387))

(assert (= (and b!6792106 ((_ is Star!16613) (regTwo!33738 (reg!16942 r!7292)))) b!6793388))

(assert (= (and b!6792106 ((_ is Union!16613) (regTwo!33738 (reg!16942 r!7292)))) b!6793389))

(declare-fun e!4100242 () Bool)

(assert (=> b!6792123 (= tp!1860133 e!4100242)))

(declare-fun b!6793391 () Bool)

(declare-fun tp!1860359 () Bool)

(declare-fun tp!1860362 () Bool)

(assert (=> b!6793391 (= e!4100242 (and tp!1860359 tp!1860362))))

(declare-fun b!6793393 () Bool)

(declare-fun tp!1860358 () Bool)

(declare-fun tp!1860360 () Bool)

(assert (=> b!6793393 (= e!4100242 (and tp!1860358 tp!1860360))))

(declare-fun b!6793390 () Bool)

(assert (=> b!6793390 (= e!4100242 tp_is_empty!42479)))

(declare-fun b!6793392 () Bool)

(declare-fun tp!1860361 () Bool)

(assert (=> b!6793392 (= e!4100242 tp!1860361)))

(assert (= (and b!6792123 ((_ is ElementMatch!16613) (regOne!33738 (regTwo!33738 r!7292)))) b!6793390))

(assert (= (and b!6792123 ((_ is Concat!25458) (regOne!33738 (regTwo!33738 r!7292)))) b!6793391))

(assert (= (and b!6792123 ((_ is Star!16613) (regOne!33738 (regTwo!33738 r!7292)))) b!6793392))

(assert (= (and b!6792123 ((_ is Union!16613) (regOne!33738 (regTwo!33738 r!7292)))) b!6793393))

(declare-fun e!4100243 () Bool)

(assert (=> b!6792123 (= tp!1860136 e!4100243)))

(declare-fun b!6793395 () Bool)

(declare-fun tp!1860364 () Bool)

(declare-fun tp!1860367 () Bool)

(assert (=> b!6793395 (= e!4100243 (and tp!1860364 tp!1860367))))

(declare-fun b!6793397 () Bool)

(declare-fun tp!1860363 () Bool)

(declare-fun tp!1860365 () Bool)

(assert (=> b!6793397 (= e!4100243 (and tp!1860363 tp!1860365))))

(declare-fun b!6793394 () Bool)

(assert (=> b!6793394 (= e!4100243 tp_is_empty!42479)))

(declare-fun b!6793396 () Bool)

(declare-fun tp!1860366 () Bool)

(assert (=> b!6793396 (= e!4100243 tp!1860366)))

(assert (= (and b!6792123 ((_ is ElementMatch!16613) (regTwo!33738 (regTwo!33738 r!7292)))) b!6793394))

(assert (= (and b!6792123 ((_ is Concat!25458) (regTwo!33738 (regTwo!33738 r!7292)))) b!6793395))

(assert (= (and b!6792123 ((_ is Star!16613) (regTwo!33738 (regTwo!33738 r!7292)))) b!6793396))

(assert (= (and b!6792123 ((_ is Union!16613) (regTwo!33738 (regTwo!33738 r!7292)))) b!6793397))

(declare-fun e!4100244 () Bool)

(assert (=> b!6792124 (= tp!1860135 e!4100244)))

(declare-fun b!6793399 () Bool)

(declare-fun tp!1860369 () Bool)

(declare-fun tp!1860372 () Bool)

(assert (=> b!6793399 (= e!4100244 (and tp!1860369 tp!1860372))))

(declare-fun b!6793401 () Bool)

(declare-fun tp!1860368 () Bool)

(declare-fun tp!1860370 () Bool)

(assert (=> b!6793401 (= e!4100244 (and tp!1860368 tp!1860370))))

(declare-fun b!6793398 () Bool)

(assert (=> b!6793398 (= e!4100244 tp_is_empty!42479)))

(declare-fun b!6793400 () Bool)

(declare-fun tp!1860371 () Bool)

(assert (=> b!6793400 (= e!4100244 tp!1860371)))

(assert (= (and b!6792124 ((_ is ElementMatch!16613) (reg!16942 (regTwo!33738 r!7292)))) b!6793398))

(assert (= (and b!6792124 ((_ is Concat!25458) (reg!16942 (regTwo!33738 r!7292)))) b!6793399))

(assert (= (and b!6792124 ((_ is Star!16613) (reg!16942 (regTwo!33738 r!7292)))) b!6793400))

(assert (= (and b!6792124 ((_ is Union!16613) (reg!16942 (regTwo!33738 r!7292)))) b!6793401))

(declare-fun e!4100245 () Bool)

(assert (=> b!6792107 (= tp!1860113 e!4100245)))

(declare-fun b!6793403 () Bool)

(declare-fun tp!1860374 () Bool)

(declare-fun tp!1860377 () Bool)

(assert (=> b!6793403 (= e!4100245 (and tp!1860374 tp!1860377))))

(declare-fun b!6793405 () Bool)

(declare-fun tp!1860373 () Bool)

(declare-fun tp!1860375 () Bool)

(assert (=> b!6793405 (= e!4100245 (and tp!1860373 tp!1860375))))

(declare-fun b!6793402 () Bool)

(assert (=> b!6793402 (= e!4100245 tp_is_empty!42479)))

(declare-fun b!6793404 () Bool)

(declare-fun tp!1860376 () Bool)

(assert (=> b!6793404 (= e!4100245 tp!1860376)))

(assert (= (and b!6792107 ((_ is ElementMatch!16613) (reg!16942 (reg!16942 r!7292)))) b!6793402))

(assert (= (and b!6792107 ((_ is Concat!25458) (reg!16942 (reg!16942 r!7292)))) b!6793403))

(assert (= (and b!6792107 ((_ is Star!16613) (reg!16942 (reg!16942 r!7292)))) b!6793404))

(assert (= (and b!6792107 ((_ is Union!16613) (reg!16942 (reg!16942 r!7292)))) b!6793405))

(declare-fun e!4100246 () Bool)

(assert (=> b!6792108 (= tp!1860110 e!4100246)))

(declare-fun b!6793407 () Bool)

(declare-fun tp!1860379 () Bool)

(declare-fun tp!1860382 () Bool)

(assert (=> b!6793407 (= e!4100246 (and tp!1860379 tp!1860382))))

(declare-fun b!6793409 () Bool)

(declare-fun tp!1860378 () Bool)

(declare-fun tp!1860380 () Bool)

(assert (=> b!6793409 (= e!4100246 (and tp!1860378 tp!1860380))))

(declare-fun b!6793406 () Bool)

(assert (=> b!6793406 (= e!4100246 tp_is_empty!42479)))

(declare-fun b!6793408 () Bool)

(declare-fun tp!1860381 () Bool)

(assert (=> b!6793408 (= e!4100246 tp!1860381)))

(assert (= (and b!6792108 ((_ is ElementMatch!16613) (regOne!33739 (reg!16942 r!7292)))) b!6793406))

(assert (= (and b!6792108 ((_ is Concat!25458) (regOne!33739 (reg!16942 r!7292)))) b!6793407))

(assert (= (and b!6792108 ((_ is Star!16613) (regOne!33739 (reg!16942 r!7292)))) b!6793408))

(assert (= (and b!6792108 ((_ is Union!16613) (regOne!33739 (reg!16942 r!7292)))) b!6793409))

(declare-fun e!4100247 () Bool)

(assert (=> b!6792108 (= tp!1860112 e!4100247)))

(declare-fun b!6793411 () Bool)

(declare-fun tp!1860384 () Bool)

(declare-fun tp!1860387 () Bool)

(assert (=> b!6793411 (= e!4100247 (and tp!1860384 tp!1860387))))

(declare-fun b!6793413 () Bool)

(declare-fun tp!1860383 () Bool)

(declare-fun tp!1860385 () Bool)

(assert (=> b!6793413 (= e!4100247 (and tp!1860383 tp!1860385))))

(declare-fun b!6793410 () Bool)

(assert (=> b!6793410 (= e!4100247 tp_is_empty!42479)))

(declare-fun b!6793412 () Bool)

(declare-fun tp!1860386 () Bool)

(assert (=> b!6793412 (= e!4100247 tp!1860386)))

(assert (= (and b!6792108 ((_ is ElementMatch!16613) (regTwo!33739 (reg!16942 r!7292)))) b!6793410))

(assert (= (and b!6792108 ((_ is Concat!25458) (regTwo!33739 (reg!16942 r!7292)))) b!6793411))

(assert (= (and b!6792108 ((_ is Star!16613) (regTwo!33739 (reg!16942 r!7292)))) b!6793412))

(assert (= (and b!6792108 ((_ is Union!16613) (regTwo!33739 (reg!16942 r!7292)))) b!6793413))

(declare-fun e!4100248 () Bool)

(assert (=> b!6792117 (= tp!1860122 e!4100248)))

(declare-fun b!6793415 () Bool)

(declare-fun tp!1860389 () Bool)

(declare-fun tp!1860392 () Bool)

(assert (=> b!6793415 (= e!4100248 (and tp!1860389 tp!1860392))))

(declare-fun b!6793417 () Bool)

(declare-fun tp!1860388 () Bool)

(declare-fun tp!1860390 () Bool)

(assert (=> b!6793417 (= e!4100248 (and tp!1860388 tp!1860390))))

(declare-fun b!6793414 () Bool)

(assert (=> b!6793414 (= e!4100248 tp_is_empty!42479)))

(declare-fun b!6793416 () Bool)

(declare-fun tp!1860391 () Bool)

(assert (=> b!6793416 (= e!4100248 tp!1860391)))

(assert (= (and b!6792117 ((_ is ElementMatch!16613) (regOne!33739 (regTwo!33739 r!7292)))) b!6793414))

(assert (= (and b!6792117 ((_ is Concat!25458) (regOne!33739 (regTwo!33739 r!7292)))) b!6793415))

(assert (= (and b!6792117 ((_ is Star!16613) (regOne!33739 (regTwo!33739 r!7292)))) b!6793416))

(assert (= (and b!6792117 ((_ is Union!16613) (regOne!33739 (regTwo!33739 r!7292)))) b!6793417))

(declare-fun e!4100249 () Bool)

(assert (=> b!6792117 (= tp!1860124 e!4100249)))

(declare-fun b!6793419 () Bool)

(declare-fun tp!1860394 () Bool)

(declare-fun tp!1860397 () Bool)

(assert (=> b!6793419 (= e!4100249 (and tp!1860394 tp!1860397))))

(declare-fun b!6793421 () Bool)

(declare-fun tp!1860393 () Bool)

(declare-fun tp!1860395 () Bool)

(assert (=> b!6793421 (= e!4100249 (and tp!1860393 tp!1860395))))

(declare-fun b!6793418 () Bool)

(assert (=> b!6793418 (= e!4100249 tp_is_empty!42479)))

(declare-fun b!6793420 () Bool)

(declare-fun tp!1860396 () Bool)

(assert (=> b!6793420 (= e!4100249 tp!1860396)))

(assert (= (and b!6792117 ((_ is ElementMatch!16613) (regTwo!33739 (regTwo!33739 r!7292)))) b!6793418))

(assert (= (and b!6792117 ((_ is Concat!25458) (regTwo!33739 (regTwo!33739 r!7292)))) b!6793419))

(assert (= (and b!6792117 ((_ is Star!16613) (regTwo!33739 (regTwo!33739 r!7292)))) b!6793420))

(assert (= (and b!6792117 ((_ is Union!16613) (regTwo!33739 (regTwo!33739 r!7292)))) b!6793421))

(declare-fun e!4100250 () Bool)

(assert (=> b!6792115 (= tp!1860123 e!4100250)))

(declare-fun b!6793423 () Bool)

(declare-fun tp!1860399 () Bool)

(declare-fun tp!1860402 () Bool)

(assert (=> b!6793423 (= e!4100250 (and tp!1860399 tp!1860402))))

(declare-fun b!6793425 () Bool)

(declare-fun tp!1860398 () Bool)

(declare-fun tp!1860400 () Bool)

(assert (=> b!6793425 (= e!4100250 (and tp!1860398 tp!1860400))))

(declare-fun b!6793422 () Bool)

(assert (=> b!6793422 (= e!4100250 tp_is_empty!42479)))

(declare-fun b!6793424 () Bool)

(declare-fun tp!1860401 () Bool)

(assert (=> b!6793424 (= e!4100250 tp!1860401)))

(assert (= (and b!6792115 ((_ is ElementMatch!16613) (regOne!33738 (regTwo!33739 r!7292)))) b!6793422))

(assert (= (and b!6792115 ((_ is Concat!25458) (regOne!33738 (regTwo!33739 r!7292)))) b!6793423))

(assert (= (and b!6792115 ((_ is Star!16613) (regOne!33738 (regTwo!33739 r!7292)))) b!6793424))

(assert (= (and b!6792115 ((_ is Union!16613) (regOne!33738 (regTwo!33739 r!7292)))) b!6793425))

(declare-fun e!4100251 () Bool)

(assert (=> b!6792115 (= tp!1860126 e!4100251)))

(declare-fun b!6793427 () Bool)

(declare-fun tp!1860404 () Bool)

(declare-fun tp!1860407 () Bool)

(assert (=> b!6793427 (= e!4100251 (and tp!1860404 tp!1860407))))

(declare-fun b!6793429 () Bool)

(declare-fun tp!1860403 () Bool)

(declare-fun tp!1860405 () Bool)

(assert (=> b!6793429 (= e!4100251 (and tp!1860403 tp!1860405))))

(declare-fun b!6793426 () Bool)

(assert (=> b!6793426 (= e!4100251 tp_is_empty!42479)))

(declare-fun b!6793428 () Bool)

(declare-fun tp!1860406 () Bool)

(assert (=> b!6793428 (= e!4100251 tp!1860406)))

(assert (= (and b!6792115 ((_ is ElementMatch!16613) (regTwo!33738 (regTwo!33739 r!7292)))) b!6793426))

(assert (= (and b!6792115 ((_ is Concat!25458) (regTwo!33738 (regTwo!33739 r!7292)))) b!6793427))

(assert (= (and b!6792115 ((_ is Star!16613) (regTwo!33738 (regTwo!33739 r!7292)))) b!6793428))

(assert (= (and b!6792115 ((_ is Union!16613) (regTwo!33738 (regTwo!33739 r!7292)))) b!6793429))

(declare-fun e!4100252 () Bool)

(assert (=> b!6792116 (= tp!1860125 e!4100252)))

(declare-fun b!6793431 () Bool)

(declare-fun tp!1860409 () Bool)

(declare-fun tp!1860412 () Bool)

(assert (=> b!6793431 (= e!4100252 (and tp!1860409 tp!1860412))))

(declare-fun b!6793433 () Bool)

(declare-fun tp!1860408 () Bool)

(declare-fun tp!1860410 () Bool)

(assert (=> b!6793433 (= e!4100252 (and tp!1860408 tp!1860410))))

(declare-fun b!6793430 () Bool)

(assert (=> b!6793430 (= e!4100252 tp_is_empty!42479)))

(declare-fun b!6793432 () Bool)

(declare-fun tp!1860411 () Bool)

(assert (=> b!6793432 (= e!4100252 tp!1860411)))

(assert (= (and b!6792116 ((_ is ElementMatch!16613) (reg!16942 (regTwo!33739 r!7292)))) b!6793430))

(assert (= (and b!6792116 ((_ is Concat!25458) (reg!16942 (regTwo!33739 r!7292)))) b!6793431))

(assert (= (and b!6792116 ((_ is Star!16613) (reg!16942 (regTwo!33739 r!7292)))) b!6793432))

(assert (= (and b!6792116 ((_ is Union!16613) (reg!16942 (regTwo!33739 r!7292)))) b!6793433))

(declare-fun e!4100253 () Bool)

(assert (=> b!6792125 (= tp!1860132 e!4100253)))

(declare-fun b!6793435 () Bool)

(declare-fun tp!1860414 () Bool)

(declare-fun tp!1860417 () Bool)

(assert (=> b!6793435 (= e!4100253 (and tp!1860414 tp!1860417))))

(declare-fun b!6793437 () Bool)

(declare-fun tp!1860413 () Bool)

(declare-fun tp!1860415 () Bool)

(assert (=> b!6793437 (= e!4100253 (and tp!1860413 tp!1860415))))

(declare-fun b!6793434 () Bool)

(assert (=> b!6793434 (= e!4100253 tp_is_empty!42479)))

(declare-fun b!6793436 () Bool)

(declare-fun tp!1860416 () Bool)

(assert (=> b!6793436 (= e!4100253 tp!1860416)))

(assert (= (and b!6792125 ((_ is ElementMatch!16613) (regOne!33739 (regTwo!33738 r!7292)))) b!6793434))

(assert (= (and b!6792125 ((_ is Concat!25458) (regOne!33739 (regTwo!33738 r!7292)))) b!6793435))

(assert (= (and b!6792125 ((_ is Star!16613) (regOne!33739 (regTwo!33738 r!7292)))) b!6793436))

(assert (= (and b!6792125 ((_ is Union!16613) (regOne!33739 (regTwo!33738 r!7292)))) b!6793437))

(declare-fun e!4100254 () Bool)

(assert (=> b!6792125 (= tp!1860134 e!4100254)))

(declare-fun b!6793439 () Bool)

(declare-fun tp!1860419 () Bool)

(declare-fun tp!1860422 () Bool)

(assert (=> b!6793439 (= e!4100254 (and tp!1860419 tp!1860422))))

(declare-fun b!6793441 () Bool)

(declare-fun tp!1860418 () Bool)

(declare-fun tp!1860420 () Bool)

(assert (=> b!6793441 (= e!4100254 (and tp!1860418 tp!1860420))))

(declare-fun b!6793438 () Bool)

(assert (=> b!6793438 (= e!4100254 tp_is_empty!42479)))

(declare-fun b!6793440 () Bool)

(declare-fun tp!1860421 () Bool)

(assert (=> b!6793440 (= e!4100254 tp!1860421)))

(assert (= (and b!6792125 ((_ is ElementMatch!16613) (regTwo!33739 (regTwo!33738 r!7292)))) b!6793438))

(assert (= (and b!6792125 ((_ is Concat!25458) (regTwo!33739 (regTwo!33738 r!7292)))) b!6793439))

(assert (= (and b!6792125 ((_ is Star!16613) (regTwo!33739 (regTwo!33738 r!7292)))) b!6793440))

(assert (= (and b!6792125 ((_ is Union!16613) (regTwo!33739 (regTwo!33738 r!7292)))) b!6793441))

(declare-fun e!4100255 () Bool)

(assert (=> b!6792094 (= tp!1860098 e!4100255)))

(declare-fun b!6793443 () Bool)

(declare-fun tp!1860424 () Bool)

(declare-fun tp!1860427 () Bool)

(assert (=> b!6793443 (= e!4100255 (and tp!1860424 tp!1860427))))

(declare-fun b!6793445 () Bool)

(declare-fun tp!1860423 () Bool)

(declare-fun tp!1860425 () Bool)

(assert (=> b!6793445 (= e!4100255 (and tp!1860423 tp!1860425))))

(declare-fun b!6793442 () Bool)

(assert (=> b!6793442 (= e!4100255 tp_is_empty!42479)))

(declare-fun b!6793444 () Bool)

(declare-fun tp!1860426 () Bool)

(assert (=> b!6793444 (= e!4100255 tp!1860426)))

(assert (= (and b!6792094 ((_ is ElementMatch!16613) (h!72462 (exprs!6497 (h!72464 zl!343))))) b!6793442))

(assert (= (and b!6792094 ((_ is Concat!25458) (h!72462 (exprs!6497 (h!72464 zl!343))))) b!6793443))

(assert (= (and b!6792094 ((_ is Star!16613) (h!72462 (exprs!6497 (h!72464 zl!343))))) b!6793444))

(assert (= (and b!6792094 ((_ is Union!16613) (h!72462 (exprs!6497 (h!72464 zl!343))))) b!6793445))

(declare-fun b!6793446 () Bool)

(declare-fun e!4100256 () Bool)

(declare-fun tp!1860428 () Bool)

(declare-fun tp!1860429 () Bool)

(assert (=> b!6793446 (= e!4100256 (and tp!1860428 tp!1860429))))

(assert (=> b!6792094 (= tp!1860099 e!4100256)))

(assert (= (and b!6792094 ((_ is Cons!66014) (t!379861 (exprs!6497 (h!72464 zl!343))))) b!6793446))

(declare-fun e!4100257 () Bool)

(assert (=> b!6792109 (= tp!1860115 e!4100257)))

(declare-fun b!6793448 () Bool)

(declare-fun tp!1860431 () Bool)

(declare-fun tp!1860434 () Bool)

(assert (=> b!6793448 (= e!4100257 (and tp!1860431 tp!1860434))))

(declare-fun b!6793450 () Bool)

(declare-fun tp!1860430 () Bool)

(declare-fun tp!1860432 () Bool)

(assert (=> b!6793450 (= e!4100257 (and tp!1860430 tp!1860432))))

(declare-fun b!6793447 () Bool)

(assert (=> b!6793447 (= e!4100257 tp_is_empty!42479)))

(declare-fun b!6793449 () Bool)

(declare-fun tp!1860433 () Bool)

(assert (=> b!6793449 (= e!4100257 tp!1860433)))

(assert (= (and b!6792109 ((_ is ElementMatch!16613) (h!72462 (exprs!6497 setElem!46493)))) b!6793447))

(assert (= (and b!6792109 ((_ is Concat!25458) (h!72462 (exprs!6497 setElem!46493)))) b!6793448))

(assert (= (and b!6792109 ((_ is Star!16613) (h!72462 (exprs!6497 setElem!46493)))) b!6793449))

(assert (= (and b!6792109 ((_ is Union!16613) (h!72462 (exprs!6497 setElem!46493)))) b!6793450))

(declare-fun b!6793451 () Bool)

(declare-fun e!4100258 () Bool)

(declare-fun tp!1860435 () Bool)

(declare-fun tp!1860436 () Bool)

(assert (=> b!6793451 (= e!4100258 (and tp!1860435 tp!1860436))))

(assert (=> b!6792109 (= tp!1860116 e!4100258)))

(assert (= (and b!6792109 ((_ is Cons!66014) (t!379861 (exprs!6497 setElem!46493)))) b!6793451))

(declare-fun e!4100259 () Bool)

(assert (=> b!6792119 (= tp!1860128 e!4100259)))

(declare-fun b!6793453 () Bool)

(declare-fun tp!1860438 () Bool)

(declare-fun tp!1860441 () Bool)

(assert (=> b!6793453 (= e!4100259 (and tp!1860438 tp!1860441))))

(declare-fun b!6793455 () Bool)

(declare-fun tp!1860437 () Bool)

(declare-fun tp!1860439 () Bool)

(assert (=> b!6793455 (= e!4100259 (and tp!1860437 tp!1860439))))

(declare-fun b!6793452 () Bool)

(assert (=> b!6793452 (= e!4100259 tp_is_empty!42479)))

(declare-fun b!6793454 () Bool)

(declare-fun tp!1860440 () Bool)

(assert (=> b!6793454 (= e!4100259 tp!1860440)))

(assert (= (and b!6792119 ((_ is ElementMatch!16613) (regOne!33738 (regOne!33738 r!7292)))) b!6793452))

(assert (= (and b!6792119 ((_ is Concat!25458) (regOne!33738 (regOne!33738 r!7292)))) b!6793453))

(assert (= (and b!6792119 ((_ is Star!16613) (regOne!33738 (regOne!33738 r!7292)))) b!6793454))

(assert (= (and b!6792119 ((_ is Union!16613) (regOne!33738 (regOne!33738 r!7292)))) b!6793455))

(declare-fun e!4100260 () Bool)

(assert (=> b!6792119 (= tp!1860131 e!4100260)))

(declare-fun b!6793457 () Bool)

(declare-fun tp!1860443 () Bool)

(declare-fun tp!1860446 () Bool)

(assert (=> b!6793457 (= e!4100260 (and tp!1860443 tp!1860446))))

(declare-fun b!6793459 () Bool)

(declare-fun tp!1860442 () Bool)

(declare-fun tp!1860444 () Bool)

(assert (=> b!6793459 (= e!4100260 (and tp!1860442 tp!1860444))))

(declare-fun b!6793456 () Bool)

(assert (=> b!6793456 (= e!4100260 tp_is_empty!42479)))

(declare-fun b!6793458 () Bool)

(declare-fun tp!1860445 () Bool)

(assert (=> b!6793458 (= e!4100260 tp!1860445)))

(assert (= (and b!6792119 ((_ is ElementMatch!16613) (regTwo!33738 (regOne!33738 r!7292)))) b!6793456))

(assert (= (and b!6792119 ((_ is Concat!25458) (regTwo!33738 (regOne!33738 r!7292)))) b!6793457))

(assert (= (and b!6792119 ((_ is Star!16613) (regTwo!33738 (regOne!33738 r!7292)))) b!6793458))

(assert (= (and b!6792119 ((_ is Union!16613) (regTwo!33738 (regOne!33738 r!7292)))) b!6793459))

(declare-fun condSetEmpty!46519 () Bool)

(assert (=> setNonEmpty!46499 (= condSetEmpty!46519 (= setRest!46499 ((as const (Array Context!11994 Bool)) false)))))

(declare-fun setRes!46519 () Bool)

(assert (=> setNonEmpty!46499 (= tp!1860144 setRes!46519)))

(declare-fun setIsEmpty!46519 () Bool)

(assert (=> setIsEmpty!46519 setRes!46519))

(declare-fun setNonEmpty!46519 () Bool)

(declare-fun e!4100261 () Bool)

(declare-fun tp!1860447 () Bool)

(declare-fun setElem!46519 () Context!11994)

(assert (=> setNonEmpty!46519 (= setRes!46519 (and tp!1860447 (inv!84779 setElem!46519) e!4100261))))

(declare-fun setRest!46519 () (InoxSet Context!11994))

(assert (=> setNonEmpty!46519 (= setRest!46499 ((_ map or) (store ((as const (Array Context!11994 Bool)) false) setElem!46519 true) setRest!46519))))

(declare-fun b!6793460 () Bool)

(declare-fun tp!1860448 () Bool)

(assert (=> b!6793460 (= e!4100261 tp!1860448)))

(assert (= (and setNonEmpty!46499 condSetEmpty!46519) setIsEmpty!46519))

(assert (= (and setNonEmpty!46499 (not condSetEmpty!46519)) setNonEmpty!46519))

(assert (= setNonEmpty!46519 b!6793460))

(declare-fun m!7540698 () Bool)

(assert (=> setNonEmpty!46519 m!7540698))

(declare-fun b!6793461 () Bool)

(declare-fun e!4100262 () Bool)

(declare-fun tp!1860449 () Bool)

(declare-fun tp!1860450 () Bool)

(assert (=> b!6793461 (= e!4100262 (and tp!1860449 tp!1860450))))

(assert (=> b!6792135 (= tp!1860145 e!4100262)))

(assert (= (and b!6792135 ((_ is Cons!66014) (exprs!6497 setElem!46499))) b!6793461))

(declare-fun e!4100263 () Bool)

(assert (=> b!6792112 (= tp!1860120 e!4100263)))

(declare-fun b!6793463 () Bool)

(declare-fun tp!1860452 () Bool)

(declare-fun tp!1860455 () Bool)

(assert (=> b!6793463 (= e!4100263 (and tp!1860452 tp!1860455))))

(declare-fun b!6793465 () Bool)

(declare-fun tp!1860451 () Bool)

(declare-fun tp!1860453 () Bool)

(assert (=> b!6793465 (= e!4100263 (and tp!1860451 tp!1860453))))

(declare-fun b!6793462 () Bool)

(assert (=> b!6793462 (= e!4100263 tp_is_empty!42479)))

(declare-fun b!6793464 () Bool)

(declare-fun tp!1860454 () Bool)

(assert (=> b!6793464 (= e!4100263 tp!1860454)))

(assert (= (and b!6792112 ((_ is ElementMatch!16613) (reg!16942 (regOne!33739 r!7292)))) b!6793462))

(assert (= (and b!6792112 ((_ is Concat!25458) (reg!16942 (regOne!33739 r!7292)))) b!6793463))

(assert (= (and b!6792112 ((_ is Star!16613) (reg!16942 (regOne!33739 r!7292)))) b!6793464))

(assert (= (and b!6792112 ((_ is Union!16613) (reg!16942 (regOne!33739 r!7292)))) b!6793465))

(declare-fun e!4100264 () Bool)

(assert (=> b!6792121 (= tp!1860127 e!4100264)))

(declare-fun b!6793467 () Bool)

(declare-fun tp!1860457 () Bool)

(declare-fun tp!1860460 () Bool)

(assert (=> b!6793467 (= e!4100264 (and tp!1860457 tp!1860460))))

(declare-fun b!6793469 () Bool)

(declare-fun tp!1860456 () Bool)

(declare-fun tp!1860458 () Bool)

(assert (=> b!6793469 (= e!4100264 (and tp!1860456 tp!1860458))))

(declare-fun b!6793466 () Bool)

(assert (=> b!6793466 (= e!4100264 tp_is_empty!42479)))

(declare-fun b!6793468 () Bool)

(declare-fun tp!1860459 () Bool)

(assert (=> b!6793468 (= e!4100264 tp!1860459)))

(assert (= (and b!6792121 ((_ is ElementMatch!16613) (regOne!33739 (regOne!33738 r!7292)))) b!6793466))

(assert (= (and b!6792121 ((_ is Concat!25458) (regOne!33739 (regOne!33738 r!7292)))) b!6793467))

(assert (= (and b!6792121 ((_ is Star!16613) (regOne!33739 (regOne!33738 r!7292)))) b!6793468))

(assert (= (and b!6792121 ((_ is Union!16613) (regOne!33739 (regOne!33738 r!7292)))) b!6793469))

(declare-fun e!4100265 () Bool)

(assert (=> b!6792121 (= tp!1860129 e!4100265)))

(declare-fun b!6793471 () Bool)

(declare-fun tp!1860462 () Bool)

(declare-fun tp!1860465 () Bool)

(assert (=> b!6793471 (= e!4100265 (and tp!1860462 tp!1860465))))

(declare-fun b!6793473 () Bool)

(declare-fun tp!1860461 () Bool)

(declare-fun tp!1860463 () Bool)

(assert (=> b!6793473 (= e!4100265 (and tp!1860461 tp!1860463))))

(declare-fun b!6793470 () Bool)

(assert (=> b!6793470 (= e!4100265 tp_is_empty!42479)))

(declare-fun b!6793472 () Bool)

(declare-fun tp!1860464 () Bool)

(assert (=> b!6793472 (= e!4100265 tp!1860464)))

(assert (= (and b!6792121 ((_ is ElementMatch!16613) (regTwo!33739 (regOne!33738 r!7292)))) b!6793470))

(assert (= (and b!6792121 ((_ is Concat!25458) (regTwo!33739 (regOne!33738 r!7292)))) b!6793471))

(assert (= (and b!6792121 ((_ is Star!16613) (regTwo!33739 (regOne!33738 r!7292)))) b!6793472))

(assert (= (and b!6792121 ((_ is Union!16613) (regTwo!33739 (regOne!33738 r!7292)))) b!6793473))

(declare-fun b!6793475 () Bool)

(declare-fun e!4100267 () Bool)

(declare-fun tp!1860466 () Bool)

(assert (=> b!6793475 (= e!4100267 tp!1860466)))

(declare-fun tp!1860467 () Bool)

(declare-fun b!6793474 () Bool)

(declare-fun e!4100266 () Bool)

(assert (=> b!6793474 (= e!4100266 (and (inv!84779 (h!72464 (t!379863 (t!379863 zl!343)))) e!4100267 tp!1860467))))

(assert (=> b!6792142 (= tp!1860151 e!4100266)))

(assert (= b!6793474 b!6793475))

(assert (= (and b!6792142 ((_ is Cons!66016) (t!379863 (t!379863 zl!343)))) b!6793474))

(declare-fun m!7540700 () Bool)

(assert (=> b!6793474 m!7540700))

(declare-fun e!4100268 () Bool)

(assert (=> b!6792120 (= tp!1860130 e!4100268)))

(declare-fun b!6793477 () Bool)

(declare-fun tp!1860469 () Bool)

(declare-fun tp!1860472 () Bool)

(assert (=> b!6793477 (= e!4100268 (and tp!1860469 tp!1860472))))

(declare-fun b!6793479 () Bool)

(declare-fun tp!1860468 () Bool)

(declare-fun tp!1860470 () Bool)

(assert (=> b!6793479 (= e!4100268 (and tp!1860468 tp!1860470))))

(declare-fun b!6793476 () Bool)

(assert (=> b!6793476 (= e!4100268 tp_is_empty!42479)))

(declare-fun b!6793478 () Bool)

(declare-fun tp!1860471 () Bool)

(assert (=> b!6793478 (= e!4100268 tp!1860471)))

(assert (= (and b!6792120 ((_ is ElementMatch!16613) (reg!16942 (regOne!33738 r!7292)))) b!6793476))

(assert (= (and b!6792120 ((_ is Concat!25458) (reg!16942 (regOne!33738 r!7292)))) b!6793477))

(assert (= (and b!6792120 ((_ is Star!16613) (reg!16942 (regOne!33738 r!7292)))) b!6793478))

(assert (= (and b!6792120 ((_ is Union!16613) (reg!16942 (regOne!33738 r!7292)))) b!6793479))

(declare-fun e!4100269 () Bool)

(assert (=> b!6792111 (= tp!1860118 e!4100269)))

(declare-fun b!6793481 () Bool)

(declare-fun tp!1860474 () Bool)

(declare-fun tp!1860477 () Bool)

(assert (=> b!6793481 (= e!4100269 (and tp!1860474 tp!1860477))))

(declare-fun b!6793483 () Bool)

(declare-fun tp!1860473 () Bool)

(declare-fun tp!1860475 () Bool)

(assert (=> b!6793483 (= e!4100269 (and tp!1860473 tp!1860475))))

(declare-fun b!6793480 () Bool)

(assert (=> b!6793480 (= e!4100269 tp_is_empty!42479)))

(declare-fun b!6793482 () Bool)

(declare-fun tp!1860476 () Bool)

(assert (=> b!6793482 (= e!4100269 tp!1860476)))

(assert (= (and b!6792111 ((_ is ElementMatch!16613) (regOne!33738 (regOne!33739 r!7292)))) b!6793480))

(assert (= (and b!6792111 ((_ is Concat!25458) (regOne!33738 (regOne!33739 r!7292)))) b!6793481))

(assert (= (and b!6792111 ((_ is Star!16613) (regOne!33738 (regOne!33739 r!7292)))) b!6793482))

(assert (= (and b!6792111 ((_ is Union!16613) (regOne!33738 (regOne!33739 r!7292)))) b!6793483))

(declare-fun e!4100270 () Bool)

(assert (=> b!6792111 (= tp!1860121 e!4100270)))

(declare-fun b!6793485 () Bool)

(declare-fun tp!1860479 () Bool)

(declare-fun tp!1860482 () Bool)

(assert (=> b!6793485 (= e!4100270 (and tp!1860479 tp!1860482))))

(declare-fun b!6793487 () Bool)

(declare-fun tp!1860478 () Bool)

(declare-fun tp!1860480 () Bool)

(assert (=> b!6793487 (= e!4100270 (and tp!1860478 tp!1860480))))

(declare-fun b!6793484 () Bool)

(assert (=> b!6793484 (= e!4100270 tp_is_empty!42479)))

(declare-fun b!6793486 () Bool)

(declare-fun tp!1860481 () Bool)

(assert (=> b!6793486 (= e!4100270 tp!1860481)))

(assert (= (and b!6792111 ((_ is ElementMatch!16613) (regTwo!33738 (regOne!33739 r!7292)))) b!6793484))

(assert (= (and b!6792111 ((_ is Concat!25458) (regTwo!33738 (regOne!33739 r!7292)))) b!6793485))

(assert (= (and b!6792111 ((_ is Star!16613) (regTwo!33738 (regOne!33739 r!7292)))) b!6793486))

(assert (= (and b!6792111 ((_ is Union!16613) (regTwo!33738 (regOne!33739 r!7292)))) b!6793487))

(declare-fun b!6793488 () Bool)

(declare-fun e!4100271 () Bool)

(declare-fun tp!1860483 () Bool)

(assert (=> b!6793488 (= e!4100271 (and tp_is_empty!42479 tp!1860483))))

(assert (=> b!6792130 (= tp!1860139 e!4100271)))

(assert (= (and b!6792130 ((_ is Cons!66015) (t!379862 (t!379862 s!2326)))) b!6793488))

(declare-fun b!6793489 () Bool)

(declare-fun e!4100272 () Bool)

(declare-fun tp!1860484 () Bool)

(declare-fun tp!1860485 () Bool)

(assert (=> b!6793489 (= e!4100272 (and tp!1860484 tp!1860485))))

(assert (=> b!6792143 (= tp!1860150 e!4100272)))

(assert (= (and b!6792143 ((_ is Cons!66014) (exprs!6497 (h!72464 (t!379863 zl!343))))) b!6793489))

(declare-fun e!4100273 () Bool)

(assert (=> b!6792113 (= tp!1860117 e!4100273)))

(declare-fun b!6793491 () Bool)

(declare-fun tp!1860487 () Bool)

(declare-fun tp!1860490 () Bool)

(assert (=> b!6793491 (= e!4100273 (and tp!1860487 tp!1860490))))

(declare-fun b!6793493 () Bool)

(declare-fun tp!1860486 () Bool)

(declare-fun tp!1860488 () Bool)

(assert (=> b!6793493 (= e!4100273 (and tp!1860486 tp!1860488))))

(declare-fun b!6793490 () Bool)

(assert (=> b!6793490 (= e!4100273 tp_is_empty!42479)))

(declare-fun b!6793492 () Bool)

(declare-fun tp!1860489 () Bool)

(assert (=> b!6793492 (= e!4100273 tp!1860489)))

(assert (= (and b!6792113 ((_ is ElementMatch!16613) (regOne!33739 (regOne!33739 r!7292)))) b!6793490))

(assert (= (and b!6792113 ((_ is Concat!25458) (regOne!33739 (regOne!33739 r!7292)))) b!6793491))

(assert (= (and b!6792113 ((_ is Star!16613) (regOne!33739 (regOne!33739 r!7292)))) b!6793492))

(assert (= (and b!6792113 ((_ is Union!16613) (regOne!33739 (regOne!33739 r!7292)))) b!6793493))

(declare-fun e!4100274 () Bool)

(assert (=> b!6792113 (= tp!1860119 e!4100274)))

(declare-fun b!6793495 () Bool)

(declare-fun tp!1860492 () Bool)

(declare-fun tp!1860495 () Bool)

(assert (=> b!6793495 (= e!4100274 (and tp!1860492 tp!1860495))))

(declare-fun b!6793497 () Bool)

(declare-fun tp!1860491 () Bool)

(declare-fun tp!1860493 () Bool)

(assert (=> b!6793497 (= e!4100274 (and tp!1860491 tp!1860493))))

(declare-fun b!6793494 () Bool)

(assert (=> b!6793494 (= e!4100274 tp_is_empty!42479)))

(declare-fun b!6793496 () Bool)

(declare-fun tp!1860494 () Bool)

(assert (=> b!6793496 (= e!4100274 tp!1860494)))

(assert (= (and b!6792113 ((_ is ElementMatch!16613) (regTwo!33739 (regOne!33739 r!7292)))) b!6793494))

(assert (= (and b!6792113 ((_ is Concat!25458) (regTwo!33739 (regOne!33739 r!7292)))) b!6793495))

(assert (= (and b!6792113 ((_ is Star!16613) (regTwo!33739 (regOne!33739 r!7292)))) b!6793496))

(assert (= (and b!6792113 ((_ is Union!16613) (regTwo!33739 (regOne!33739 r!7292)))) b!6793497))

(declare-fun b_lambda!255913 () Bool)

(assert (= b_lambda!255897 (or d!2133910 b_lambda!255913)))

(declare-fun bs!1810292 () Bool)

(declare-fun d!2134596 () Bool)

(assert (= bs!1810292 (and d!2134596 d!2133910)))

(assert (=> bs!1810292 (= (dynLambda!26352 lambda!382705 (h!72462 (exprs!6497 (h!72464 zl!343)))) (validRegex!8349 (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(declare-fun m!7540702 () Bool)

(assert (=> bs!1810292 m!7540702))

(assert (=> b!6793173 d!2134596))

(declare-fun b_lambda!255915 () Bool)

(assert (= b_lambda!255849 (or b!6791309 b_lambda!255915)))

(declare-fun bs!1810293 () Bool)

(declare-fun d!2134598 () Bool)

(assert (= bs!1810293 (and d!2134598 b!6791309)))

(assert (=> bs!1810293 (= (dynLambda!26352 lambda!382661 (h!72462 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511))) (validRegex!8349 (h!72462 (++!14771 (Cons!66014 (reg!16942 r!7292) Nil!66014) lt!2446511))))))

(declare-fun m!7540704 () Bool)

(assert (=> bs!1810293 m!7540704))

(assert (=> b!6792604 d!2134598))

(declare-fun b_lambda!255917 () Bool)

(assert (= b_lambda!255903 (or d!2133778 b_lambda!255917)))

(declare-fun bs!1810294 () Bool)

(declare-fun d!2134600 () Bool)

(assert (= bs!1810294 (and d!2134600 d!2133778)))

(assert (=> bs!1810294 (= (dynLambda!26352 lambda!382667 (h!72462 lt!2446547)) (validRegex!8349 (h!72462 lt!2446547)))))

(declare-fun m!7540706 () Bool)

(assert (=> bs!1810294 m!7540706))

(assert (=> b!6793269 d!2134600))

(declare-fun b_lambda!255919 () Bool)

(assert (= b_lambda!255907 (or b!6791309 b_lambda!255919)))

(assert (=> d!2134560 d!2133994))

(declare-fun b_lambda!255921 () Bool)

(assert (= b_lambda!255899 (or d!2133974 b_lambda!255921)))

(declare-fun bs!1810295 () Bool)

(declare-fun d!2134602 () Bool)

(assert (= bs!1810295 (and d!2134602 d!2133974)))

(assert (=> bs!1810295 (= (dynLambda!26352 lambda!382743 (h!72462 (exprs!6497 setElem!46493))) (validRegex!8349 (h!72462 (exprs!6497 setElem!46493))))))

(declare-fun m!7540708 () Bool)

(assert (=> bs!1810295 m!7540708))

(assert (=> b!6793263 d!2134602))

(declare-fun b_lambda!255923 () Bool)

(assert (= b_lambda!255853 (or b!6791309 b_lambda!255923)))

(declare-fun bs!1810296 () Bool)

(declare-fun d!2134604 () Bool)

(assert (= bs!1810296 (and d!2134604 b!6791309)))

(assert (=> bs!1810296 (= (dynLambda!26352 lambda!382661 (h!72462 (Cons!66014 (reg!16942 r!7292) Nil!66014))) (validRegex!8349 (h!72462 (Cons!66014 (reg!16942 r!7292) Nil!66014))))))

(declare-fun m!7540710 () Bool)

(assert (=> bs!1810296 m!7540710))

(assert (=> b!6792618 d!2134604))

(declare-fun b_lambda!255925 () Bool)

(assert (= b_lambda!255867 (or b!6791302 b_lambda!255925)))

(assert (=> d!2134386 d!2134002))

(declare-fun b_lambda!255927 () Bool)

(assert (= b_lambda!255911 (or b!6791302 b_lambda!255927)))

(assert (=> d!2134570 d!2133998))

(declare-fun b_lambda!255929 () Bool)

(assert (= b_lambda!255905 (or d!2133890 b_lambda!255929)))

(declare-fun bs!1810297 () Bool)

(declare-fun d!2134606 () Bool)

(assert (= bs!1810297 (and d!2134606 d!2133890)))

(assert (=> bs!1810297 (= (dynLambda!26352 lambda!382704 (h!72462 (exprs!6497 (h!72464 zl!343)))) (validRegex!8349 (h!72462 (exprs!6497 (h!72464 zl!343)))))))

(assert (=> bs!1810297 m!7540702))

(assert (=> b!6793325 d!2134606))

(declare-fun b_lambda!255931 () Bool)

(assert (= b_lambda!255909 (or d!2133774 b_lambda!255931)))

(declare-fun bs!1810298 () Bool)

(declare-fun d!2134608 () Bool)

(assert (= bs!1810298 (and d!2134608 d!2133774)))

(assert (=> bs!1810298 (= (dynLambda!26352 lambda!382664 (h!72462 (unfocusZipperList!2034 zl!343))) (validRegex!8349 (h!72462 (unfocusZipperList!2034 zl!343))))))

(declare-fun m!7540712 () Bool)

(assert (=> bs!1810298 m!7540712))

(assert (=> b!6793349 d!2134608))

(declare-fun b_lambda!255933 () Bool)

(assert (= b_lambda!255857 (or b!6791302 b_lambda!255933)))

(assert (=> d!2134256 d!2133996))

(declare-fun b_lambda!255935 () Bool)

(assert (= b_lambda!255869 (or d!2133858 b_lambda!255935)))

(declare-fun bs!1810299 () Bool)

(declare-fun d!2134610 () Bool)

(assert (= bs!1810299 (and d!2134610 d!2133858)))

(assert (=> bs!1810299 (= (dynLambda!26352 lambda!382690 (h!72462 (exprs!6497 lt!2446529))) (validRegex!8349 (h!72462 (exprs!6497 lt!2446529))))))

(declare-fun m!7540714 () Bool)

(assert (=> bs!1810299 m!7540714))

(assert (=> b!6792932 d!2134610))

(declare-fun b_lambda!255937 () Bool)

(assert (= b_lambda!255901 (or b!6791302 b_lambda!255937)))

(assert (=> d!2134516 d!2134000))

(check-sat (not b!6793184) (not b!6792593) (not bm!616918) (not d!2134374) (not d!2134384) (not bm!616932) (not b!6793001) (not d!2134136) (not d!2134372) (not bm!616942) (not bm!616827) (not bm!616930) (not b!6792629) (not b_lambda!255917) (not b!6792956) (not b!6792715) (not b!6793496) (not b!6793409) (not b!6792719) (not b!6793432) (not b!6793174) (not b!6793142) (not b_lambda!255913) (not b!6793312) (not d!2134530) (not d!2134404) (not b!6793091) (not b!6793260) (not d!2134472) (not d!2134208) (not bm!616780) (not b!6793435) (not bm!616877) (not b!6792605) (not b!6793206) (not b!6792543) (not b!6793397) (not b_lambda!255925) (not b_lambda!255931) (not bm!616943) (not d!2134576) (not b!6793481) (not b!6793313) (not b!6793343) (not setNonEmpty!46519) (not b!6793301) (not b!6793450) (not b_lambda!255929) (not bm!616904) (not bm!616807) (not b!6793235) (not b!6792763) (not b!6793150) (not b!6793401) (not bm!616887) (not d!2134378) (not bm!616913) (not b!6793423) (not d!2134424) (not b!6793354) (not b!6792646) (not b!6792499) (not b!6793454) (not b!6792475) (not b!6793217) (not bm!616826) (not b!6793437) (not bm!616897) (not b!6793123) (not b!6792578) (not bm!616934) (not b!6793449) (not b!6792918) (not d!2134542) (not b!6793446) (not d!2134548) (not b!6793361) (not bs!1810292) (not b!6792794) (not bs!1810294) (not b!6793227) (not b!6793408) (not b!6793364) (not d!2134246) (not b!6792795) (not b!6792449) (not b!6793411) (not d!2134324) (not b!6793441) (not b!6793385) (not b!6793110) (not bm!616808) (not b!6793399) (not b!6792542) (not b!6792648) (not b!6792687) (not b!6792908) (not b!6793485) (not b!6793251) (not b!6793479) (not b!6793287) (not d!2134332) (not bm!616925) (not b!6793245) (not b!6793270) (not d!2134402) (not b!6793439) (not b!6792619) (not b!6792650) (not b!6793189) (not b!6793431) (not b!6792917) (not b!6792440) (not setNonEmpty!46515) (not b!6793396) (not bm!616905) (not b!6793415) (not d!2134450) (not bm!616907) (not b!6793395) (not b!6793465) (not bm!616941) (not b!6793412) (not b!6793281) (not b!6793387) (not d!2134594) (not d!2134272) (not d!2134128) (not b!6792916) (not bm!616879) (not d!2134318) (not d!2134496) (not b!6793236) (not b!6792878) (not d!2134482) (not bm!616789) (not b!6792541) (not b!6793381) (not bm!616900) (not b!6792642) (not b!6793210) (not b!6793453) (not d!2134412) (not bm!616921) (not b!6792447) (not b!6793258) (not b!6793407) (not b!6792536) (not b!6793257) (not b!6793360) (not d!2134470) (not d!2134504) (not b!6793151) (not b!6793419) (not b!6793492) (not b!6793489) (not b!6793085) (not b!6793075) (not b!6793327) (not bm!616823) (not b!6793428) (not b!6793240) (not bm!616802) (not b!6792680) (not b!6792930) (not bm!616936) (not b!6793391) (not d!2134574) (not b!6793319) (not b!6793425) (not b_lambda!255935) (not b!6792656) (not bm!616824) (not b!6793475) (not b!6793112) (not b!6792446) (not d!2134474) (not b!6793486) (not bm!616831) (not b!6793421) (not b!6792495) (not b!6793413) (not bm!616931) (not bm!616840) (not b_lambda!255825) (not b!6793252) (not b!6793464) (not d!2134562) (not b!6792681) (not bm!616878) (not bm!616920) (not bm!616781) (not b!6793400) (not b!6793384) (not bs!1810298) (not b!6793102) (not b!6793451) (not d!2134570) (not b!6793307) (not bm!616891) (not b!6792451) (not bm!616870) (not b!6793369) (not d!2134444) (not b!6793366) (not b!6793239) (not b!6793222) (not b!6793444) (not b!6793477) (not b_lambda!255937) (not d!2134578) (not b!6793298) (not b_lambda!255919) (not b_lambda!255923) (not b!6792537) (not b!6793141) (not b!6792647) (not b!6793403) (not bm!616782) (not b!6793204) (not bm!616915) (not b!6793389) (not b!6793420) (not bm!616847) (not d!2134514) (not bm!616794) (not b!6792467) (not b!6793455) (not d!2134592) (not b_lambda!255831) (not b!6793282) (not setNonEmpty!46508) (not b!6792683) (not b!6792592) (not b!6792965) (not b!6793471) (not b!6793445) (not bm!616825) (not d!2134484) (not b!6793111) (not b!6792968) (not b_lambda!255927) (not bm!616788) (not b!6793429) (not b!6793404) (not b!6793300) (not b!6792957) (not b!6793383) (not b!6793147) (not bm!616909) (not b!6793286) (not b!6792644) (not b!6793367) (not b!6793148) (not bs!1810296) (not d!2134242) (not d!2134550) (not b!6793166) (not b!6793443) (not b!6792443) (not b!6793436) (not b!6793106) (not bm!616890) (not b!6793461) (not b!6793457) (not b!6793467) (not b_lambda!255827) (not b!6792649) (not d!2134168) (not b!6793482) (not d!2134502) (not b!6793459) (not b!6792764) (not bm!616906) (not b!6793264) (not b!6792471) (not bm!616898) (not b!6792969) (not b!6793405) (not b!6792973) (not bm!616791) (not b!6793146) (not b!6792950) tp_is_empty!42479 (not b!6793473) (not b!6793497) (not b!6793388) (not b!6793392) (not bs!1810299) (not bm!616873) (not b!6792796) (not b!6793427) (not b!6793308) (not b!6793379) (not b!6793483) (not b!6793370) (not b!6793256) (not d!2134442) (not b!6792920) (not d!2134222) (not b!6792789) (not b!6792911) (not b!6793493) (not b!6793145) (not b!6793350) (not b!6793314) (not b!6793377) (not bm!616786) (not b!6793393) (not b!6793491) (not d!2134386) (not bm!616940) (not d!2134524) (not bm!616945) (not b!6793416) (not bm!616917) (not b!6793261) (not b!6793440) (not b!6792909) (not b!6792790) (not b!6792533) (not d!2134406) (not bm!616895) (not b!6792900) (not b!6792667) (not b_lambda!255933) (not setNonEmpty!46509) (not bm!616813) (not d!2134510) (not b!6793495) (not b!6793417) (not d!2134516) (not b!6793172) (not b!6793463) (not b!6793468) (not b!6793338) (not d!2134140) (not d!2134554) (not d!2134370) (not d!2134512) (not d!2134532) (not bm!616946) (not b!6792448) (not d!2134448) (not d!2134552) (not bm!616914) (not b!6793478) (not b_lambda!255833) (not b!6792653) (not bm!616933) (not bs!1810293) (not d!2134486) (not d!2134522) (not b!6793218) (not d!2134270) (not setNonEmpty!46513) (not bm!616787) (not b_lambda!255829) (not bm!616916) (not d!2134520) (not b!6792914) (not b!6793487) (not d!2134142) (not bm!616924) (not d!2134410) (not b!6792628) (not bm!616809) (not b!6793326) (not b!6793135) (not bs!1810295) (not b_lambda!255915) (not d!2134376) (not b!6793105) (not b!6793474) (not d!2134446) (not d!2134230) (not d!2134536) (not d!2134256) (not b!6793469) (not b!6793448) (not b!6793488) (not b!6793221) (not b_lambda!255921) (not b!6793458) (not b!6792442) (not d!2134420) (not b!6792975) (not bm!616832) (not bm!616922) (not b!6793472) (not b!6793223) (not b!6793424) (not bm!616793) (not b!6793365) (not d!2134268) (not bm!616894) (not bs!1810297) (not b!6793460) (not b!6792580) (not b!6792643) (not b!6792915) (not b!6792933) (not b!6793433) (not b!6792901) (not bm!616889) (not b!6792786) (not bm!616948) (not b!6793304) (not bm!616886) (not bm!616926) (not b!6793255) (not d!2134560) (not b!6792974) (not setNonEmpty!46518))
(check-sat)
