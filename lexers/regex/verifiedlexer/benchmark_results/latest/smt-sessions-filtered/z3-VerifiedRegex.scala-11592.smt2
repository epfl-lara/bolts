; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!642362 () Bool)

(assert start!642362)

(declare-fun b!6555075 () Bool)

(assert (=> b!6555075 true))

(assert (=> b!6555075 true))

(declare-fun lambda!364326 () Int)

(declare-fun lambda!364325 () Int)

(assert (=> b!6555075 (not (= lambda!364326 lambda!364325))))

(assert (=> b!6555075 true))

(assert (=> b!6555075 true))

(declare-fun b!6555082 () Bool)

(assert (=> b!6555082 true))

(declare-fun b!6555056 () Bool)

(assert (=> b!6555056 true))

(declare-fun bs!1673095 () Bool)

(declare-fun b!6555074 () Bool)

(assert (= bs!1673095 (and b!6555074 b!6555075)))

(declare-datatypes ((C!33132 0))(
  ( (C!33133 (val!26268 Int)) )
))
(declare-datatypes ((Regex!16431 0))(
  ( (ElementMatch!16431 (c!1204232 C!33132)) (Concat!25276 (regOne!33374 Regex!16431) (regTwo!33374 Regex!16431)) (EmptyExpr!16431) (Star!16431 (reg!16760 Regex!16431)) (EmptyLang!16431) (Union!16431 (regOne!33375 Regex!16431) (regTwo!33375 Regex!16431)) )
))
(declare-fun r!7292 () Regex!16431)

(declare-fun lt!2404040 () Regex!16431)

(declare-fun lambda!364330 () Int)

(assert (=> bs!1673095 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364330 lambda!364325))))

(assert (=> bs!1673095 (not (= lambda!364330 lambda!364326))))

(assert (=> b!6555074 true))

(assert (=> b!6555074 true))

(assert (=> b!6555074 true))

(declare-fun lambda!364331 () Int)

(assert (=> bs!1673095 (not (= lambda!364331 lambda!364325))))

(assert (=> bs!1673095 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364331 lambda!364326))))

(assert (=> b!6555074 (not (= lambda!364331 lambda!364330))))

(assert (=> b!6555074 true))

(assert (=> b!6555074 true))

(assert (=> b!6555074 true))

(declare-fun b!6555048 () Bool)

(declare-fun res!2689535 () Bool)

(declare-fun e!3968506 () Bool)

(assert (=> b!6555048 (=> res!2689535 e!3968506)))

(get-info :version)

(assert (=> b!6555048 (= res!2689535 (or ((_ is Concat!25276) (regOne!33374 r!7292)) (not ((_ is Star!16431) (regOne!33374 r!7292)))))))

(declare-fun b!6555049 () Bool)

(declare-datatypes ((Unit!159059 0))(
  ( (Unit!159060) )
))
(declare-fun e!3968507 () Unit!159059)

(declare-fun Unit!159061 () Unit!159059)

(assert (=> b!6555049 (= e!3968507 Unit!159061)))

(declare-fun b!6555050 () Bool)

(declare-fun res!2689530 () Bool)

(assert (=> b!6555050 (=> res!2689530 e!3968506)))

(declare-fun e!3968497 () Bool)

(assert (=> b!6555050 (= res!2689530 e!3968497)))

(declare-fun res!2689558 () Bool)

(assert (=> b!6555050 (=> (not res!2689558) (not e!3968497))))

(assert (=> b!6555050 (= res!2689558 ((_ is Concat!25276) (regOne!33374 r!7292)))))

(declare-fun b!6555051 () Bool)

(declare-fun res!2689553 () Bool)

(declare-fun e!3968499 () Bool)

(assert (=> b!6555051 (=> res!2689553 e!3968499)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65592 0))(
  ( (Nil!65468) (Cons!65468 (h!71916 Regex!16431) (t!379234 List!65592)) )
))
(declare-datatypes ((Context!11630 0))(
  ( (Context!11631 (exprs!6315 List!65592)) )
))
(declare-fun lt!2404023 () (InoxSet Context!11630))

(declare-datatypes ((List!65593 0))(
  ( (Nil!65469) (Cons!65469 (h!71917 C!33132) (t!379235 List!65593)) )
))
(declare-datatypes ((tuple2!66820 0))(
  ( (tuple2!66821 (_1!36713 List!65593) (_2!36713 List!65593)) )
))
(declare-fun lt!2404014 () tuple2!66820)

(declare-fun matchZipper!2443 ((InoxSet Context!11630) List!65593) Bool)

(assert (=> b!6555051 (= res!2689553 (not (matchZipper!2443 lt!2404023 (_1!36713 lt!2404014))))))

(declare-fun b!6555052 () Bool)

(declare-fun e!3968511 () Bool)

(declare-fun e!3968501 () Bool)

(assert (=> b!6555052 (= e!3968511 e!3968501)))

(declare-fun res!2689552 () Bool)

(assert (=> b!6555052 (=> res!2689552 e!3968501)))

(declare-datatypes ((List!65594 0))(
  ( (Nil!65470) (Cons!65470 (h!71918 Context!11630) (t!379236 List!65594)) )
))
(declare-fun lt!2404050 () List!65594)

(declare-fun unfocusZipper!2173 (List!65594) Regex!16431)

(assert (=> b!6555052 (= res!2689552 (not (= (unfocusZipper!2173 lt!2404050) (reg!16760 (regOne!33374 r!7292)))))))

(declare-fun lt!2404013 () Context!11630)

(assert (=> b!6555052 (= lt!2404050 (Cons!65470 lt!2404013 Nil!65470))))

(declare-fun lt!2404006 () Context!11630)

(declare-fun s!2326 () List!65593)

(declare-fun lt!2404018 () (InoxSet Context!11630))

(declare-fun lambda!364327 () Int)

(declare-fun flatMap!1936 ((InoxSet Context!11630) Int) (InoxSet Context!11630))

(declare-fun derivationStepZipperUp!1605 (Context!11630 C!33132) (InoxSet Context!11630))

(assert (=> b!6555052 (= (flatMap!1936 lt!2404018 lambda!364327) (derivationStepZipperUp!1605 lt!2404006 (h!71917 s!2326)))))

(declare-fun lt!2404048 () Unit!159059)

(declare-fun lemmaFlatMapOnSingletonSet!1462 ((InoxSet Context!11630) Context!11630 Int) Unit!159059)

(assert (=> b!6555052 (= lt!2404048 (lemmaFlatMapOnSingletonSet!1462 lt!2404018 lt!2404006 lambda!364327))))

(assert (=> b!6555052 (= (flatMap!1936 lt!2404023 lambda!364327) (derivationStepZipperUp!1605 lt!2404013 (h!71917 s!2326)))))

(declare-fun lt!2404037 () Unit!159059)

(assert (=> b!6555052 (= lt!2404037 (lemmaFlatMapOnSingletonSet!1462 lt!2404023 lt!2404013 lambda!364327))))

(declare-fun lt!2404039 () (InoxSet Context!11630))

(assert (=> b!6555052 (= lt!2404039 (derivationStepZipperUp!1605 lt!2404006 (h!71917 s!2326)))))

(declare-fun lt!2404029 () (InoxSet Context!11630))

(assert (=> b!6555052 (= lt!2404029 (derivationStepZipperUp!1605 lt!2404013 (h!71917 s!2326)))))

(assert (=> b!6555052 (= lt!2404018 (store ((as const (Array Context!11630 Bool)) false) lt!2404006 true))))

(assert (=> b!6555052 (= lt!2404023 (store ((as const (Array Context!11630 Bool)) false) lt!2404013 true))))

(declare-fun lt!2404058 () List!65592)

(assert (=> b!6555052 (= lt!2404013 (Context!11631 lt!2404058))))

(assert (=> b!6555052 (= lt!2404058 (Cons!65468 (reg!16760 (regOne!33374 r!7292)) Nil!65468))))

(declare-fun b!6555053 () Bool)

(declare-fun e!3968520 () Bool)

(assert (=> b!6555053 (= e!3968501 e!3968520)))

(declare-fun res!2689545 () Bool)

(assert (=> b!6555053 (=> res!2689545 e!3968520)))

(declare-fun lt!2404046 () List!65594)

(declare-fun lt!2404032 () Regex!16431)

(assert (=> b!6555053 (= res!2689545 (not (= (unfocusZipper!2173 lt!2404046) lt!2404032)))))

(assert (=> b!6555053 (= lt!2404046 (Cons!65470 lt!2404006 Nil!65470))))

(declare-fun b!6555054 () Bool)

(declare-fun res!2689551 () Bool)

(declare-fun e!3968517 () Bool)

(assert (=> b!6555054 (=> res!2689551 e!3968517)))

(declare-fun zl!343 () List!65594)

(assert (=> b!6555054 (= res!2689551 (not ((_ is Cons!65468) (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6555055 () Bool)

(declare-fun e!3968498 () Bool)

(declare-fun lt!2404038 () Bool)

(assert (=> b!6555055 (= e!3968498 lt!2404038)))

(declare-fun e!3968513 () Bool)

(declare-fun e!3968504 () Bool)

(assert (=> b!6555056 (= e!3968513 e!3968504)))

(declare-fun res!2689538 () Bool)

(assert (=> b!6555056 (=> res!2689538 e!3968504)))

(declare-fun lt!2404010 () (InoxSet Context!11630))

(declare-fun appendTo!192 ((InoxSet Context!11630) Context!11630) (InoxSet Context!11630))

(assert (=> b!6555056 (= res!2689538 (not (= (appendTo!192 lt!2404023 lt!2404006) lt!2404010)))))

(declare-fun lambda!364328 () Int)

(declare-fun lt!2404017 () List!65592)

(declare-fun map!14955 ((InoxSet Context!11630) Int) (InoxSet Context!11630))

(declare-fun ++!14564 (List!65592 List!65592) List!65592)

(assert (=> b!6555056 (= (map!14955 lt!2404023 lambda!364328) (store ((as const (Array Context!11630 Bool)) false) (Context!11631 (++!14564 lt!2404058 lt!2404017)) true))))

(declare-fun lambda!364329 () Int)

(declare-fun lt!2404011 () Unit!159059)

(declare-fun lemmaConcatPreservesForall!404 (List!65592 List!65592 Int) Unit!159059)

(assert (=> b!6555056 (= lt!2404011 (lemmaConcatPreservesForall!404 lt!2404058 lt!2404017 lambda!364329))))

(declare-fun lt!2404007 () Unit!159059)

(declare-fun lemmaMapOnSingletonSet!214 ((InoxSet Context!11630) Context!11630 Int) Unit!159059)

(assert (=> b!6555056 (= lt!2404007 (lemmaMapOnSingletonSet!214 lt!2404023 lt!2404013 lambda!364328))))

(declare-fun b!6555057 () Bool)

(declare-fun e!3968505 () Bool)

(assert (=> b!6555057 (= e!3968506 e!3968505)))

(declare-fun res!2689559 () Bool)

(assert (=> b!6555057 (=> res!2689559 e!3968505)))

(declare-fun lt!2404016 () (InoxSet Context!11630))

(declare-fun lt!2404028 () (InoxSet Context!11630))

(assert (=> b!6555057 (= res!2689559 (not (= lt!2404016 lt!2404028)))))

(declare-fun derivationStepZipperDown!1679 (Regex!16431 Context!11630 C!33132) (InoxSet Context!11630))

(assert (=> b!6555057 (= lt!2404028 (derivationStepZipperDown!1679 (reg!16760 (regOne!33374 r!7292)) lt!2404006 (h!71917 s!2326)))))

(assert (=> b!6555057 (= lt!2404006 (Context!11631 lt!2404017))))

(declare-fun lt!2404015 () Regex!16431)

(assert (=> b!6555057 (= lt!2404017 (Cons!65468 lt!2404015 (t!379234 (exprs!6315 (h!71918 zl!343)))))))

(assert (=> b!6555057 (= lt!2404015 (Star!16431 (reg!16760 (regOne!33374 r!7292))))))

(declare-fun b!6555058 () Bool)

(declare-fun e!3968496 () Bool)

(declare-fun tp!1811942 () Bool)

(assert (=> b!6555058 (= e!3968496 tp!1811942)))

(declare-fun b!6555059 () Bool)

(declare-fun Unit!159062 () Unit!159059)

(assert (=> b!6555059 (= e!3968507 Unit!159062)))

(declare-fun lt!2404033 () (InoxSet Context!11630))

(declare-fun lt!2404057 () Unit!159059)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1262 ((InoxSet Context!11630) (InoxSet Context!11630) List!65593) Unit!159059)

(assert (=> b!6555059 (= lt!2404057 (lemmaZipperConcatMatchesSameAsBothZippers!1262 lt!2404016 lt!2404033 (t!379235 s!2326)))))

(declare-fun res!2689562 () Bool)

(assert (=> b!6555059 (= res!2689562 (matchZipper!2443 lt!2404016 (t!379235 s!2326)))))

(declare-fun e!3968494 () Bool)

(assert (=> b!6555059 (=> res!2689562 e!3968494)))

(assert (=> b!6555059 (= (matchZipper!2443 ((_ map or) lt!2404016 lt!2404033) (t!379235 s!2326)) e!3968494)))

(declare-fun setNonEmpty!44742 () Bool)

(declare-fun setElem!44742 () Context!11630)

(declare-fun tp!1811937 () Bool)

(declare-fun setRes!44742 () Bool)

(declare-fun inv!84324 (Context!11630) Bool)

(assert (=> setNonEmpty!44742 (= setRes!44742 (and tp!1811937 (inv!84324 setElem!44742) e!3968496))))

(declare-fun z!1189 () (InoxSet Context!11630))

(declare-fun setRest!44742 () (InoxSet Context!11630))

(assert (=> setNonEmpty!44742 (= z!1189 ((_ map or) (store ((as const (Array Context!11630 Bool)) false) setElem!44742 true) setRest!44742))))

(declare-fun res!2689540 () Bool)

(declare-fun e!3968515 () Bool)

(assert (=> start!642362 (=> (not res!2689540) (not e!3968515))))

(declare-fun validRegex!8167 (Regex!16431) Bool)

(assert (=> start!642362 (= res!2689540 (validRegex!8167 r!7292))))

(assert (=> start!642362 e!3968515))

(declare-fun e!3968503 () Bool)

(assert (=> start!642362 e!3968503))

(declare-fun condSetEmpty!44742 () Bool)

(assert (=> start!642362 (= condSetEmpty!44742 (= z!1189 ((as const (Array Context!11630 Bool)) false)))))

(assert (=> start!642362 setRes!44742))

(declare-fun e!3968509 () Bool)

(assert (=> start!642362 e!3968509))

(declare-fun e!3968493 () Bool)

(assert (=> start!642362 e!3968493))

(declare-fun b!6555060 () Bool)

(declare-fun tp!1811934 () Bool)

(declare-fun tp!1811936 () Bool)

(assert (=> b!6555060 (= e!3968503 (and tp!1811934 tp!1811936))))

(declare-fun b!6555061 () Bool)

(declare-fun res!2689533 () Bool)

(assert (=> b!6555061 (=> res!2689533 e!3968517)))

(declare-fun generalisedUnion!2275 (List!65592) Regex!16431)

(declare-fun unfocusZipperList!1852 (List!65594) List!65592)

(assert (=> b!6555061 (= res!2689533 (not (= r!7292 (generalisedUnion!2275 (unfocusZipperList!1852 zl!343)))))))

(declare-fun b!6555062 () Bool)

(declare-fun res!2689543 () Bool)

(assert (=> b!6555062 (=> res!2689543 e!3968513)))

(declare-fun lt!2404026 () Bool)

(declare-fun lt!2404051 () Bool)

(assert (=> b!6555062 (= res!2689543 (or (not lt!2404026) (not lt!2404051)))))

(declare-fun b!6555063 () Bool)

(declare-fun res!2689528 () Bool)

(assert (=> b!6555063 (=> res!2689528 e!3968499)))

(assert (=> b!6555063 (= res!2689528 (not (matchZipper!2443 lt!2404018 (_2!36713 lt!2404014))))))

(declare-fun b!6555064 () Bool)

(declare-fun tp_is_empty!42115 () Bool)

(declare-fun tp!1811940 () Bool)

(assert (=> b!6555064 (= e!3968493 (and tp_is_empty!42115 tp!1811940))))

(declare-fun b!6555065 () Bool)

(declare-fun res!2689539 () Bool)

(assert (=> b!6555065 (=> res!2689539 e!3968517)))

(assert (=> b!6555065 (= res!2689539 (or ((_ is EmptyExpr!16431) r!7292) ((_ is EmptyLang!16431) r!7292) ((_ is ElementMatch!16431) r!7292) ((_ is Union!16431) r!7292) (not ((_ is Concat!25276) r!7292))))))

(declare-fun b!6555066 () Bool)

(declare-fun res!2689534 () Bool)

(declare-fun e!3968519 () Bool)

(assert (=> b!6555066 (=> res!2689534 e!3968519)))

(declare-fun lt!2404064 () Bool)

(assert (=> b!6555066 (= res!2689534 (not lt!2404064))))

(declare-fun b!6555067 () Bool)

(declare-fun e!3968514 () Bool)

(declare-fun tp!1811935 () Bool)

(assert (=> b!6555067 (= e!3968514 tp!1811935)))

(declare-fun b!6555068 () Bool)

(declare-fun tp!1811938 () Bool)

(declare-fun tp!1811941 () Bool)

(assert (=> b!6555068 (= e!3968503 (and tp!1811938 tp!1811941))))

(declare-fun b!6555069 () Bool)

(declare-fun res!2689564 () Bool)

(assert (=> b!6555069 (=> res!2689564 e!3968517)))

(declare-fun generalisedConcat!2028 (List!65592) Regex!16431)

(assert (=> b!6555069 (= res!2689564 (not (= r!7292 (generalisedConcat!2028 (exprs!6315 (h!71918 zl!343))))))))

(declare-fun setIsEmpty!44742 () Bool)

(assert (=> setIsEmpty!44742 setRes!44742))

(declare-fun b!6555070 () Bool)

(declare-fun res!2689548 () Bool)

(declare-fun e!3968518 () Bool)

(assert (=> b!6555070 (=> res!2689548 e!3968518)))

(declare-fun isEmpty!37701 (List!65592) Bool)

(assert (=> b!6555070 (= res!2689548 (isEmpty!37701 (t!379234 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6555071 () Bool)

(declare-fun res!2689531 () Bool)

(declare-fun e!3968508 () Bool)

(assert (=> b!6555071 (=> res!2689531 e!3968508)))

(declare-fun lt!2404044 () Regex!16431)

(assert (=> b!6555071 (= res!2689531 (not (= lt!2404044 r!7292)))))

(declare-fun b!6555072 () Bool)

(assert (=> b!6555072 (= e!3968520 e!3968519)))

(declare-fun res!2689532 () Bool)

(assert (=> b!6555072 (=> res!2689532 e!3968519)))

(declare-fun lt!2404043 () Bool)

(assert (=> b!6555072 (= res!2689532 lt!2404043)))

(declare-fun lt!2404041 () Regex!16431)

(declare-fun matchRSpec!3532 (Regex!16431 List!65593) Bool)

(assert (=> b!6555072 (= lt!2404038 (matchRSpec!3532 lt!2404041 s!2326))))

(declare-fun matchR!8614 (Regex!16431 List!65593) Bool)

(assert (=> b!6555072 (= lt!2404038 (matchR!8614 lt!2404041 s!2326))))

(declare-fun lt!2404063 () Unit!159059)

(declare-fun mainMatchTheorem!3532 (Regex!16431 List!65593) Unit!159059)

(assert (=> b!6555072 (= lt!2404063 (mainMatchTheorem!3532 lt!2404041 s!2326))))

(declare-fun b!6555073 () Bool)

(declare-fun e!3968500 () Bool)

(assert (=> b!6555073 (= e!3968500 (validRegex!8167 lt!2404015))))

(declare-fun e!3968495 () Bool)

(assert (=> b!6555074 (= e!3968499 e!3968495)))

(declare-fun res!2689555 () Bool)

(assert (=> b!6555074 (=> res!2689555 e!3968495)))

(declare-fun lt!2404008 () tuple2!66820)

(assert (=> b!6555074 (= res!2689555 (not (matchR!8614 lt!2404040 (_1!36713 lt!2404008))))))

(declare-datatypes ((Option!16322 0))(
  ( (None!16321) (Some!16321 (v!52506 tuple2!66820)) )
))
(declare-fun lt!2404020 () Option!16322)

(declare-fun get!22728 (Option!16322) tuple2!66820)

(assert (=> b!6555074 (= lt!2404008 (get!22728 lt!2404020))))

(declare-fun Exists!3501 (Int) Bool)

(assert (=> b!6555074 (= (Exists!3501 lambda!364330) (Exists!3501 lambda!364331))))

(declare-fun lt!2404060 () Unit!159059)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2038 (Regex!16431 Regex!16431 List!65593) Unit!159059)

(assert (=> b!6555074 (= lt!2404060 (lemmaExistCutMatchRandMatchRSpecEquivalent!2038 lt!2404040 (regTwo!33374 r!7292) s!2326))))

(declare-fun isDefined!13025 (Option!16322) Bool)

(assert (=> b!6555074 (= (isDefined!13025 lt!2404020) (Exists!3501 lambda!364330))))

(declare-fun findConcatSeparation!2736 (Regex!16431 Regex!16431 List!65593 List!65593 List!65593) Option!16322)

(assert (=> b!6555074 (= lt!2404020 (findConcatSeparation!2736 lt!2404040 (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326))))

(declare-fun lt!2404056 () Unit!159059)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2500 (Regex!16431 Regex!16431 List!65593) Unit!159059)

(assert (=> b!6555074 (= lt!2404056 (lemmaFindConcatSeparationEquivalentToExists!2500 lt!2404040 (regTwo!33374 r!7292) s!2326))))

(declare-fun lt!2404025 () Regex!16431)

(assert (=> b!6555074 (matchRSpec!3532 lt!2404025 s!2326)))

(declare-fun lt!2404062 () Unit!159059)

(assert (=> b!6555074 (= lt!2404062 (mainMatchTheorem!3532 lt!2404025 s!2326))))

(assert (=> b!6555074 (matchR!8614 lt!2404025 s!2326)))

(assert (=> b!6555074 (= lt!2404025 (Concat!25276 lt!2404040 (regTwo!33374 r!7292)))))

(assert (=> b!6555074 (= lt!2404040 (Concat!25276 (reg!16760 (regOne!33374 r!7292)) lt!2404015))))

(declare-fun lt!2404035 () Unit!159059)

(declare-fun lemmaConcatAssociative!128 (Regex!16431 Regex!16431 Regex!16431 List!65593) Unit!159059)

(assert (=> b!6555074 (= lt!2404035 (lemmaConcatAssociative!128 (reg!16760 (regOne!33374 r!7292)) lt!2404015 (regTwo!33374 r!7292) s!2326))))

(assert (=> b!6555074 e!3968498))

(declare-fun res!2689554 () Bool)

(assert (=> b!6555074 (=> (not res!2689554) (not e!3968498))))

(declare-fun lt!2404055 () List!65593)

(assert (=> b!6555074 (= res!2689554 (matchR!8614 lt!2404041 lt!2404055))))

(declare-fun lt!2404012 () Unit!159059)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!352 (Regex!16431 Regex!16431 List!65593 List!65593) Unit!159059)

(assert (=> b!6555074 (= lt!2404012 (lemmaTwoRegexMatchThenConcatMatchesConcatString!352 (reg!16760 (regOne!33374 r!7292)) lt!2404032 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(assert (=> b!6555074 (matchR!8614 lt!2404032 (_2!36713 lt!2404014))))

(declare-fun lt!2404019 () Unit!159059)

(declare-fun theoremZipperRegexEquiv!867 ((InoxSet Context!11630) List!65594 Regex!16431 List!65593) Unit!159059)

(assert (=> b!6555074 (= lt!2404019 (theoremZipperRegexEquiv!867 lt!2404018 lt!2404046 lt!2404032 (_2!36713 lt!2404014)))))

(assert (=> b!6555074 (matchR!8614 (reg!16760 (regOne!33374 r!7292)) (_1!36713 lt!2404014))))

(declare-fun lt!2404030 () Unit!159059)

(assert (=> b!6555074 (= lt!2404030 (theoremZipperRegexEquiv!867 lt!2404023 lt!2404050 (reg!16760 (regOne!33374 r!7292)) (_1!36713 lt!2404014)))))

(assert (=> b!6555074 (matchZipper!2443 (store ((as const (Array Context!11630 Bool)) false) (Context!11631 (++!14564 lt!2404058 lt!2404017)) true) lt!2404055)))

(declare-fun lt!2404036 () Unit!159059)

(assert (=> b!6555074 (= lt!2404036 (lemmaConcatPreservesForall!404 lt!2404058 lt!2404017 lambda!364329))))

(declare-fun lt!2404061 () Unit!159059)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!212 (Context!11630 Context!11630 List!65593 List!65593) Unit!159059)

(assert (=> b!6555074 (= lt!2404061 (lemmaConcatenateContextMatchesConcatOfStrings!212 lt!2404013 lt!2404006 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(assert (=> b!6555075 (= e!3968517 e!3968518)))

(declare-fun res!2689529 () Bool)

(assert (=> b!6555075 (=> res!2689529 e!3968518)))

(declare-fun lt!2404009 () Bool)

(assert (=> b!6555075 (= res!2689529 (or (not (= lt!2404043 lt!2404009)) ((_ is Nil!65469) s!2326)))))

(assert (=> b!6555075 (= (Exists!3501 lambda!364325) (Exists!3501 lambda!364326))))

(declare-fun lt!2404027 () Unit!159059)

(assert (=> b!6555075 (= lt!2404027 (lemmaExistCutMatchRandMatchRSpecEquivalent!2038 (regOne!33374 r!7292) (regTwo!33374 r!7292) s!2326))))

(assert (=> b!6555075 (= lt!2404009 (Exists!3501 lambda!364325))))

(assert (=> b!6555075 (= lt!2404009 (isDefined!13025 (findConcatSeparation!2736 (regOne!33374 r!7292) (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326)))))

(declare-fun lt!2404053 () Unit!159059)

(assert (=> b!6555075 (= lt!2404053 (lemmaFindConcatSeparationEquivalentToExists!2500 (regOne!33374 r!7292) (regTwo!33374 r!7292) s!2326))))

(declare-fun b!6555076 () Bool)

(declare-fun nullable!6424 (Regex!16431) Bool)

(assert (=> b!6555076 (= e!3968497 (nullable!6424 (regOne!33374 (regOne!33374 r!7292))))))

(declare-fun b!6555077 () Bool)

(declare-fun res!2689549 () Bool)

(assert (=> b!6555077 (=> res!2689549 e!3968517)))

(declare-fun isEmpty!37702 (List!65594) Bool)

(assert (=> b!6555077 (= res!2689549 (not (isEmpty!37702 (t!379236 zl!343))))))

(declare-fun b!6555078 () Bool)

(declare-fun e!3968512 () Bool)

(assert (=> b!6555078 (= e!3968512 (not (matchZipper!2443 lt!2404033 (t!379235 s!2326))))))

(declare-fun b!6555079 () Bool)

(declare-fun e!3968516 () Bool)

(assert (=> b!6555079 (= e!3968516 e!3968508)))

(declare-fun res!2689546 () Bool)

(assert (=> b!6555079 (=> res!2689546 e!3968508)))

(declare-fun lt!2404034 () (InoxSet Context!11630))

(assert (=> b!6555079 (= res!2689546 (not (= lt!2404051 (matchZipper!2443 lt!2404034 (t!379235 s!2326)))))))

(assert (=> b!6555079 (= lt!2404051 (matchZipper!2443 lt!2404010 s!2326))))

(declare-fun b!6555080 () Bool)

(declare-fun e!3968502 () Bool)

(assert (=> b!6555080 (= e!3968502 e!3968511)))

(declare-fun res!2689537 () Bool)

(assert (=> b!6555080 (=> res!2689537 e!3968511)))

(declare-fun lt!2404024 () Context!11630)

(assert (=> b!6555080 (= res!2689537 (not (= (unfocusZipper!2173 (Cons!65470 lt!2404024 Nil!65470)) lt!2404041)))))

(assert (=> b!6555080 (= lt!2404041 (Concat!25276 (reg!16760 (regOne!33374 r!7292)) lt!2404032))))

(declare-fun b!6555081 () Bool)

(assert (=> b!6555081 (= e!3968508 e!3968502)))

(declare-fun res!2689560 () Bool)

(assert (=> b!6555081 (=> res!2689560 e!3968502)))

(assert (=> b!6555081 (= res!2689560 (not (= r!7292 lt!2404032)))))

(assert (=> b!6555081 (= lt!2404032 (Concat!25276 lt!2404015 (regTwo!33374 r!7292)))))

(assert (=> b!6555082 (= e!3968518 e!3968506)))

(declare-fun res!2689541 () Bool)

(assert (=> b!6555082 (=> res!2689541 e!3968506)))

(assert (=> b!6555082 (= res!2689541 (or (and ((_ is ElementMatch!16431) (regOne!33374 r!7292)) (= (c!1204232 (regOne!33374 r!7292)) (h!71917 s!2326))) ((_ is Union!16431) (regOne!33374 r!7292))))))

(declare-fun lt!2404042 () Unit!159059)

(assert (=> b!6555082 (= lt!2404042 e!3968507)))

(declare-fun c!1204231 () Bool)

(assert (=> b!6555082 (= c!1204231 lt!2404064)))

(assert (=> b!6555082 (= lt!2404064 (nullable!6424 (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(assert (=> b!6555082 (= (flatMap!1936 z!1189 lambda!364327) (derivationStepZipperUp!1605 (h!71918 zl!343) (h!71917 s!2326)))))

(declare-fun lt!2404031 () Unit!159059)

(assert (=> b!6555082 (= lt!2404031 (lemmaFlatMapOnSingletonSet!1462 z!1189 (h!71918 zl!343) lambda!364327))))

(declare-fun lt!2404022 () Context!11630)

(assert (=> b!6555082 (= lt!2404033 (derivationStepZipperUp!1605 lt!2404022 (h!71917 s!2326)))))

(assert (=> b!6555082 (= lt!2404016 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 (h!71918 zl!343))) lt!2404022 (h!71917 s!2326)))))

(assert (=> b!6555082 (= lt!2404022 (Context!11631 (t!379234 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun lt!2404045 () (InoxSet Context!11630))

(assert (=> b!6555082 (= lt!2404045 (derivationStepZipperUp!1605 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343))))) (h!71917 s!2326)))))

(declare-fun b!6555083 () Bool)

(declare-fun e!3968510 () Bool)

(assert (=> b!6555083 (= e!3968510 (not e!3968517))))

(declare-fun res!2689542 () Bool)

(assert (=> b!6555083 (=> res!2689542 e!3968517)))

(assert (=> b!6555083 (= res!2689542 (not ((_ is Cons!65470) zl!343)))))

(assert (=> b!6555083 (= lt!2404043 (matchRSpec!3532 r!7292 s!2326))))

(assert (=> b!6555083 (= lt!2404043 (matchR!8614 r!7292 s!2326))))

(declare-fun lt!2404047 () Unit!159059)

(assert (=> b!6555083 (= lt!2404047 (mainMatchTheorem!3532 r!7292 s!2326))))

(declare-fun b!6555084 () Bool)

(declare-fun res!2689563 () Bool)

(assert (=> b!6555084 (=> (not res!2689563) (not e!3968515))))

(declare-fun toList!10215 ((InoxSet Context!11630)) List!65594)

(assert (=> b!6555084 (= res!2689563 (= (toList!10215 z!1189) zl!343))))

(declare-fun tp!1811943 () Bool)

(declare-fun b!6555085 () Bool)

(assert (=> b!6555085 (= e!3968509 (and (inv!84324 (h!71918 zl!343)) e!3968514 tp!1811943))))

(declare-fun b!6555086 () Bool)

(assert (=> b!6555086 (= e!3968515 e!3968510)))

(declare-fun res!2689550 () Bool)

(assert (=> b!6555086 (=> (not res!2689550) (not e!3968510))))

(assert (=> b!6555086 (= res!2689550 (= r!7292 lt!2404044))))

(assert (=> b!6555086 (= lt!2404044 (unfocusZipper!2173 zl!343))))

(declare-fun b!6555087 () Bool)

(assert (=> b!6555087 (= e!3968519 e!3968513)))

(declare-fun res!2689556 () Bool)

(assert (=> b!6555087 (=> res!2689556 e!3968513)))

(assert (=> b!6555087 (= res!2689556 e!3968512)))

(declare-fun res!2689536 () Bool)

(assert (=> b!6555087 (=> (not res!2689536) (not e!3968512))))

(assert (=> b!6555087 (= res!2689536 (not lt!2404026))))

(assert (=> b!6555087 (= lt!2404026 (matchZipper!2443 lt!2404016 (t!379235 s!2326)))))

(declare-fun b!6555088 () Bool)

(declare-fun tp!1811939 () Bool)

(assert (=> b!6555088 (= e!3968503 tp!1811939)))

(declare-fun b!6555089 () Bool)

(declare-fun res!2689561 () Bool)

(assert (=> b!6555089 (=> res!2689561 e!3968519)))

(assert (=> b!6555089 (= res!2689561 (not (matchZipper!2443 z!1189 s!2326)))))

(declare-fun b!6555090 () Bool)

(assert (=> b!6555090 (= e!3968495 e!3968500)))

(declare-fun res!2689547 () Bool)

(assert (=> b!6555090 (=> res!2689547 e!3968500)))

(assert (=> b!6555090 (= res!2689547 (not (validRegex!8167 (reg!16760 (regOne!33374 r!7292)))))))

(assert (=> b!6555090 (matchRSpec!3532 lt!2404040 (_1!36713 lt!2404008))))

(declare-fun lt!2404052 () Unit!159059)

(assert (=> b!6555090 (= lt!2404052 (mainMatchTheorem!3532 lt!2404040 (_1!36713 lt!2404008)))))

(declare-fun b!6555091 () Bool)

(assert (=> b!6555091 (= e!3968503 tp_is_empty!42115)))

(declare-fun b!6555092 () Bool)

(assert (=> b!6555092 (= e!3968494 (matchZipper!2443 lt!2404033 (t!379235 s!2326)))))

(declare-fun b!6555093 () Bool)

(assert (=> b!6555093 (= e!3968504 e!3968499)))

(declare-fun res!2689557 () Bool)

(assert (=> b!6555093 (=> res!2689557 e!3968499)))

(assert (=> b!6555093 (= res!2689557 (not (= s!2326 lt!2404055)))))

(declare-fun ++!14565 (List!65593 List!65593) List!65593)

(assert (=> b!6555093 (= lt!2404055 (++!14565 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(declare-fun lt!2404049 () Option!16322)

(assert (=> b!6555093 (= lt!2404014 (get!22728 lt!2404049))))

(assert (=> b!6555093 (isDefined!13025 lt!2404049)))

(declare-fun findConcatSeparationZippers!196 ((InoxSet Context!11630) (InoxSet Context!11630) List!65593 List!65593 List!65593) Option!16322)

(assert (=> b!6555093 (= lt!2404049 (findConcatSeparationZippers!196 lt!2404023 lt!2404018 Nil!65469 s!2326 s!2326))))

(declare-fun lt!2404021 () Unit!159059)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!196 ((InoxSet Context!11630) Context!11630 List!65593) Unit!159059)

(assert (=> b!6555093 (= lt!2404021 (lemmaConcatZipperMatchesStringThenFindConcatDefined!196 lt!2404023 lt!2404006 s!2326))))

(declare-fun b!6555094 () Bool)

(assert (=> b!6555094 (= e!3968505 e!3968516)))

(declare-fun res!2689544 () Bool)

(assert (=> b!6555094 (=> res!2689544 e!3968516)))

(assert (=> b!6555094 (= res!2689544 (not (= lt!2404034 lt!2404028)))))

(assert (=> b!6555094 (= (flatMap!1936 lt!2404010 lambda!364327) (derivationStepZipperUp!1605 lt!2404024 (h!71917 s!2326)))))

(declare-fun lt!2404054 () Unit!159059)

(assert (=> b!6555094 (= lt!2404054 (lemmaFlatMapOnSingletonSet!1462 lt!2404010 lt!2404024 lambda!364327))))

(declare-fun lt!2404059 () (InoxSet Context!11630))

(assert (=> b!6555094 (= lt!2404059 (derivationStepZipperUp!1605 lt!2404024 (h!71917 s!2326)))))

(declare-fun derivationStepZipper!2397 ((InoxSet Context!11630) C!33132) (InoxSet Context!11630))

(assert (=> b!6555094 (= lt!2404034 (derivationStepZipper!2397 lt!2404010 (h!71917 s!2326)))))

(assert (=> b!6555094 (= lt!2404010 (store ((as const (Array Context!11630 Bool)) false) lt!2404024 true))))

(assert (=> b!6555094 (= lt!2404024 (Context!11631 (Cons!65468 (reg!16760 (regOne!33374 r!7292)) lt!2404017)))))

(assert (= (and start!642362 res!2689540) b!6555084))

(assert (= (and b!6555084 res!2689563) b!6555086))

(assert (= (and b!6555086 res!2689550) b!6555083))

(assert (= (and b!6555083 (not res!2689542)) b!6555077))

(assert (= (and b!6555077 (not res!2689549)) b!6555069))

(assert (= (and b!6555069 (not res!2689564)) b!6555054))

(assert (= (and b!6555054 (not res!2689551)) b!6555061))

(assert (= (and b!6555061 (not res!2689533)) b!6555065))

(assert (= (and b!6555065 (not res!2689539)) b!6555075))

(assert (= (and b!6555075 (not res!2689529)) b!6555070))

(assert (= (and b!6555070 (not res!2689548)) b!6555082))

(assert (= (and b!6555082 c!1204231) b!6555059))

(assert (= (and b!6555082 (not c!1204231)) b!6555049))

(assert (= (and b!6555059 (not res!2689562)) b!6555092))

(assert (= (and b!6555082 (not res!2689541)) b!6555050))

(assert (= (and b!6555050 res!2689558) b!6555076))

(assert (= (and b!6555050 (not res!2689530)) b!6555048))

(assert (= (and b!6555048 (not res!2689535)) b!6555057))

(assert (= (and b!6555057 (not res!2689559)) b!6555094))

(assert (= (and b!6555094 (not res!2689544)) b!6555079))

(assert (= (and b!6555079 (not res!2689546)) b!6555071))

(assert (= (and b!6555071 (not res!2689531)) b!6555081))

(assert (= (and b!6555081 (not res!2689560)) b!6555080))

(assert (= (and b!6555080 (not res!2689537)) b!6555052))

(assert (= (and b!6555052 (not res!2689552)) b!6555053))

(assert (= (and b!6555053 (not res!2689545)) b!6555072))

(assert (= (and b!6555072 (not res!2689532)) b!6555089))

(assert (= (and b!6555089 (not res!2689561)) b!6555066))

(assert (= (and b!6555066 (not res!2689534)) b!6555087))

(assert (= (and b!6555087 res!2689536) b!6555078))

(assert (= (and b!6555087 (not res!2689556)) b!6555062))

(assert (= (and b!6555062 (not res!2689543)) b!6555056))

(assert (= (and b!6555056 (not res!2689538)) b!6555093))

(assert (= (and b!6555093 (not res!2689557)) b!6555051))

(assert (= (and b!6555051 (not res!2689553)) b!6555063))

(assert (= (and b!6555063 (not res!2689528)) b!6555074))

(assert (= (and b!6555074 res!2689554) b!6555055))

(assert (= (and b!6555074 (not res!2689555)) b!6555090))

(assert (= (and b!6555090 (not res!2689547)) b!6555073))

(assert (= (and start!642362 ((_ is ElementMatch!16431) r!7292)) b!6555091))

(assert (= (and start!642362 ((_ is Concat!25276) r!7292)) b!6555060))

(assert (= (and start!642362 ((_ is Star!16431) r!7292)) b!6555088))

(assert (= (and start!642362 ((_ is Union!16431) r!7292)) b!6555068))

(assert (= (and start!642362 condSetEmpty!44742) setIsEmpty!44742))

(assert (= (and start!642362 (not condSetEmpty!44742)) setNonEmpty!44742))

(assert (= setNonEmpty!44742 b!6555058))

(assert (= b!6555085 b!6555067))

(assert (= (and start!642362 ((_ is Cons!65470) zl!343)) b!6555085))

(assert (= (and start!642362 ((_ is Cons!65469) s!2326)) b!6555064))

(declare-fun m!7337202 () Bool)

(assert (=> b!6555094 m!7337202))

(declare-fun m!7337204 () Bool)

(assert (=> b!6555094 m!7337204))

(declare-fun m!7337206 () Bool)

(assert (=> b!6555094 m!7337206))

(declare-fun m!7337208 () Bool)

(assert (=> b!6555094 m!7337208))

(declare-fun m!7337210 () Bool)

(assert (=> b!6555094 m!7337210))

(declare-fun m!7337212 () Bool)

(assert (=> b!6555083 m!7337212))

(declare-fun m!7337214 () Bool)

(assert (=> b!6555083 m!7337214))

(declare-fun m!7337216 () Bool)

(assert (=> b!6555083 m!7337216))

(declare-fun m!7337218 () Bool)

(assert (=> b!6555072 m!7337218))

(declare-fun m!7337220 () Bool)

(assert (=> b!6555072 m!7337220))

(declare-fun m!7337222 () Bool)

(assert (=> b!6555072 m!7337222))

(declare-fun m!7337224 () Bool)

(assert (=> b!6555092 m!7337224))

(assert (=> b!6555078 m!7337224))

(declare-fun m!7337226 () Bool)

(assert (=> b!6555063 m!7337226))

(declare-fun m!7337228 () Bool)

(assert (=> b!6555073 m!7337228))

(declare-fun m!7337230 () Bool)

(assert (=> b!6555056 m!7337230))

(declare-fun m!7337232 () Bool)

(assert (=> b!6555056 m!7337232))

(declare-fun m!7337234 () Bool)

(assert (=> b!6555056 m!7337234))

(declare-fun m!7337236 () Bool)

(assert (=> b!6555056 m!7337236))

(declare-fun m!7337238 () Bool)

(assert (=> b!6555056 m!7337238))

(declare-fun m!7337240 () Bool)

(assert (=> b!6555056 m!7337240))

(declare-fun m!7337242 () Bool)

(assert (=> b!6555053 m!7337242))

(declare-fun m!7337244 () Bool)

(assert (=> b!6555051 m!7337244))

(declare-fun m!7337246 () Bool)

(assert (=> b!6555052 m!7337246))

(declare-fun m!7337248 () Bool)

(assert (=> b!6555052 m!7337248))

(declare-fun m!7337250 () Bool)

(assert (=> b!6555052 m!7337250))

(declare-fun m!7337252 () Bool)

(assert (=> b!6555052 m!7337252))

(declare-fun m!7337254 () Bool)

(assert (=> b!6555052 m!7337254))

(declare-fun m!7337256 () Bool)

(assert (=> b!6555052 m!7337256))

(declare-fun m!7337258 () Bool)

(assert (=> b!6555052 m!7337258))

(declare-fun m!7337260 () Bool)

(assert (=> b!6555052 m!7337260))

(declare-fun m!7337262 () Bool)

(assert (=> b!6555052 m!7337262))

(declare-fun m!7337264 () Bool)

(assert (=> setNonEmpty!44742 m!7337264))

(declare-fun m!7337266 () Bool)

(assert (=> b!6555076 m!7337266))

(declare-fun m!7337268 () Bool)

(assert (=> b!6555079 m!7337268))

(declare-fun m!7337270 () Bool)

(assert (=> b!6555079 m!7337270))

(declare-fun m!7337272 () Bool)

(assert (=> start!642362 m!7337272))

(declare-fun m!7337274 () Bool)

(assert (=> b!6555085 m!7337274))

(declare-fun m!7337276 () Bool)

(assert (=> b!6555069 m!7337276))

(declare-fun m!7337278 () Bool)

(assert (=> b!6555057 m!7337278))

(declare-fun m!7337280 () Bool)

(assert (=> b!6555075 m!7337280))

(declare-fun m!7337282 () Bool)

(assert (=> b!6555075 m!7337282))

(declare-fun m!7337284 () Bool)

(assert (=> b!6555075 m!7337284))

(declare-fun m!7337286 () Bool)

(assert (=> b!6555075 m!7337286))

(assert (=> b!6555075 m!7337282))

(declare-fun m!7337288 () Bool)

(assert (=> b!6555075 m!7337288))

(assert (=> b!6555075 m!7337284))

(declare-fun m!7337290 () Bool)

(assert (=> b!6555075 m!7337290))

(declare-fun m!7337292 () Bool)

(assert (=> b!6555087 m!7337292))

(assert (=> b!6555074 m!7337234))

(declare-fun m!7337294 () Bool)

(assert (=> b!6555074 m!7337294))

(assert (=> b!6555074 m!7337230))

(declare-fun m!7337296 () Bool)

(assert (=> b!6555074 m!7337296))

(declare-fun m!7337298 () Bool)

(assert (=> b!6555074 m!7337298))

(declare-fun m!7337300 () Bool)

(assert (=> b!6555074 m!7337300))

(assert (=> b!6555074 m!7337232))

(declare-fun m!7337302 () Bool)

(assert (=> b!6555074 m!7337302))

(declare-fun m!7337304 () Bool)

(assert (=> b!6555074 m!7337304))

(declare-fun m!7337306 () Bool)

(assert (=> b!6555074 m!7337306))

(declare-fun m!7337308 () Bool)

(assert (=> b!6555074 m!7337308))

(declare-fun m!7337310 () Bool)

(assert (=> b!6555074 m!7337310))

(declare-fun m!7337312 () Bool)

(assert (=> b!6555074 m!7337312))

(declare-fun m!7337314 () Bool)

(assert (=> b!6555074 m!7337314))

(assert (=> b!6555074 m!7337304))

(declare-fun m!7337316 () Bool)

(assert (=> b!6555074 m!7337316))

(declare-fun m!7337318 () Bool)

(assert (=> b!6555074 m!7337318))

(declare-fun m!7337320 () Bool)

(assert (=> b!6555074 m!7337320))

(declare-fun m!7337322 () Bool)

(assert (=> b!6555074 m!7337322))

(declare-fun m!7337324 () Bool)

(assert (=> b!6555074 m!7337324))

(declare-fun m!7337326 () Bool)

(assert (=> b!6555074 m!7337326))

(declare-fun m!7337328 () Bool)

(assert (=> b!6555074 m!7337328))

(declare-fun m!7337330 () Bool)

(assert (=> b!6555074 m!7337330))

(assert (=> b!6555074 m!7337232))

(declare-fun m!7337332 () Bool)

(assert (=> b!6555074 m!7337332))

(declare-fun m!7337334 () Bool)

(assert (=> b!6555080 m!7337334))

(declare-fun m!7337336 () Bool)

(assert (=> b!6555061 m!7337336))

(assert (=> b!6555061 m!7337336))

(declare-fun m!7337338 () Bool)

(assert (=> b!6555061 m!7337338))

(declare-fun m!7337340 () Bool)

(assert (=> b!6555086 m!7337340))

(declare-fun m!7337342 () Bool)

(assert (=> b!6555093 m!7337342))

(declare-fun m!7337344 () Bool)

(assert (=> b!6555093 m!7337344))

(declare-fun m!7337346 () Bool)

(assert (=> b!6555093 m!7337346))

(declare-fun m!7337348 () Bool)

(assert (=> b!6555093 m!7337348))

(declare-fun m!7337350 () Bool)

(assert (=> b!6555093 m!7337350))

(declare-fun m!7337352 () Bool)

(assert (=> b!6555077 m!7337352))

(declare-fun m!7337354 () Bool)

(assert (=> b!6555090 m!7337354))

(declare-fun m!7337356 () Bool)

(assert (=> b!6555090 m!7337356))

(declare-fun m!7337358 () Bool)

(assert (=> b!6555090 m!7337358))

(declare-fun m!7337360 () Bool)

(assert (=> b!6555082 m!7337360))

(declare-fun m!7337362 () Bool)

(assert (=> b!6555082 m!7337362))

(declare-fun m!7337364 () Bool)

(assert (=> b!6555082 m!7337364))

(declare-fun m!7337366 () Bool)

(assert (=> b!6555082 m!7337366))

(declare-fun m!7337368 () Bool)

(assert (=> b!6555082 m!7337368))

(declare-fun m!7337370 () Bool)

(assert (=> b!6555082 m!7337370))

(declare-fun m!7337372 () Bool)

(assert (=> b!6555082 m!7337372))

(declare-fun m!7337374 () Bool)

(assert (=> b!6555059 m!7337374))

(assert (=> b!6555059 m!7337292))

(declare-fun m!7337376 () Bool)

(assert (=> b!6555059 m!7337376))

(declare-fun m!7337378 () Bool)

(assert (=> b!6555084 m!7337378))

(declare-fun m!7337380 () Bool)

(assert (=> b!6555089 m!7337380))

(declare-fun m!7337382 () Bool)

(assert (=> b!6555070 m!7337382))

(check-sat (not b!6555051) (not b!6555093) (not b!6555052) (not b!6555085) (not b!6555067) (not setNonEmpty!44742) (not b!6555072) (not b!6555069) (not b!6555094) (not b!6555077) (not b!6555063) (not b!6555092) (not b!6555064) (not b!6555058) (not b!6555090) (not b!6555075) (not b!6555078) (not b!6555084) (not b!6555060) (not b!6555076) (not b!6555074) (not b!6555059) (not b!6555080) (not b!6555053) (not b!6555079) (not b!6555082) (not b!6555056) (not b!6555073) (not b!6555061) (not b!6555083) (not start!642362) (not b!6555057) (not b!6555068) (not b!6555088) (not b!6555086) (not b!6555087) (not b!6555070) (not b!6555089) tp_is_empty!42115)
(check-sat)
(get-model)

(declare-fun d!2057009 () Bool)

(declare-fun c!1204290 () Bool)

(declare-fun isEmpty!37705 (List!65593) Bool)

(assert (=> d!2057009 (= c!1204290 (isEmpty!37705 (_1!36713 lt!2404014)))))

(declare-fun e!3968645 () Bool)

(assert (=> d!2057009 (= (matchZipper!2443 lt!2404023 (_1!36713 lt!2404014)) e!3968645)))

(declare-fun b!6555336 () Bool)

(declare-fun nullableZipper!2175 ((InoxSet Context!11630)) Bool)

(assert (=> b!6555336 (= e!3968645 (nullableZipper!2175 lt!2404023))))

(declare-fun b!6555337 () Bool)

(declare-fun head!13312 (List!65593) C!33132)

(declare-fun tail!12397 (List!65593) List!65593)

(assert (=> b!6555337 (= e!3968645 (matchZipper!2443 (derivationStepZipper!2397 lt!2404023 (head!13312 (_1!36713 lt!2404014))) (tail!12397 (_1!36713 lt!2404014))))))

(assert (= (and d!2057009 c!1204290) b!6555336))

(assert (= (and d!2057009 (not c!1204290)) b!6555337))

(declare-fun m!7337564 () Bool)

(assert (=> d!2057009 m!7337564))

(declare-fun m!7337566 () Bool)

(assert (=> b!6555336 m!7337566))

(declare-fun m!7337568 () Bool)

(assert (=> b!6555337 m!7337568))

(assert (=> b!6555337 m!7337568))

(declare-fun m!7337570 () Bool)

(assert (=> b!6555337 m!7337570))

(declare-fun m!7337572 () Bool)

(assert (=> b!6555337 m!7337572))

(assert (=> b!6555337 m!7337570))

(assert (=> b!6555337 m!7337572))

(declare-fun m!7337574 () Bool)

(assert (=> b!6555337 m!7337574))

(assert (=> b!6555051 d!2057009))

(declare-fun d!2057011 () Bool)

(assert (=> d!2057011 (= (isEmpty!37701 (t!379234 (exprs!6315 (h!71918 zl!343)))) ((_ is Nil!65468) (t!379234 (exprs!6315 (h!71918 zl!343)))))))

(assert (=> b!6555070 d!2057011))

(declare-fun bs!1673124 () Bool)

(declare-fun d!2057013 () Bool)

(assert (= bs!1673124 (and d!2057013 b!6555056)))

(declare-fun lambda!364355 () Int)

(assert (=> bs!1673124 (= lambda!364355 lambda!364329)))

(declare-fun b!6555402 () Bool)

(declare-fun e!3968690 () Bool)

(assert (=> b!6555402 (= e!3968690 (isEmpty!37701 (t!379234 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6555403 () Bool)

(declare-fun e!3968689 () Regex!16431)

(declare-fun e!3968687 () Regex!16431)

(assert (=> b!6555403 (= e!3968689 e!3968687)))

(declare-fun c!1204317 () Bool)

(assert (=> b!6555403 (= c!1204317 ((_ is Cons!65468) (exprs!6315 (h!71918 zl!343))))))

(declare-fun b!6555405 () Bool)

(declare-fun e!3968691 () Bool)

(declare-fun lt!2404117 () Regex!16431)

(declare-fun isEmptyExpr!1808 (Regex!16431) Bool)

(assert (=> b!6555405 (= e!3968691 (isEmptyExpr!1808 lt!2404117))))

(declare-fun b!6555406 () Bool)

(declare-fun e!3968688 () Bool)

(declare-fun head!13313 (List!65592) Regex!16431)

(assert (=> b!6555406 (= e!3968688 (= lt!2404117 (head!13313 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6555407 () Bool)

(assert (=> b!6555407 (= e!3968687 EmptyExpr!16431)))

(declare-fun b!6555408 () Bool)

(declare-fun e!3968692 () Bool)

(assert (=> b!6555408 (= e!3968692 e!3968691)))

(declare-fun c!1204316 () Bool)

(assert (=> b!6555408 (= c!1204316 (isEmpty!37701 (exprs!6315 (h!71918 zl!343))))))

(declare-fun b!6555409 () Bool)

(declare-fun isConcat!1331 (Regex!16431) Bool)

(assert (=> b!6555409 (= e!3968688 (isConcat!1331 lt!2404117))))

(assert (=> d!2057013 e!3968692))

(declare-fun res!2689705 () Bool)

(assert (=> d!2057013 (=> (not res!2689705) (not e!3968692))))

(assert (=> d!2057013 (= res!2689705 (validRegex!8167 lt!2404117))))

(assert (=> d!2057013 (= lt!2404117 e!3968689)))

(declare-fun c!1204314 () Bool)

(assert (=> d!2057013 (= c!1204314 e!3968690)))

(declare-fun res!2689704 () Bool)

(assert (=> d!2057013 (=> (not res!2689704) (not e!3968690))))

(assert (=> d!2057013 (= res!2689704 ((_ is Cons!65468) (exprs!6315 (h!71918 zl!343))))))

(declare-fun forall!15603 (List!65592 Int) Bool)

(assert (=> d!2057013 (forall!15603 (exprs!6315 (h!71918 zl!343)) lambda!364355)))

(assert (=> d!2057013 (= (generalisedConcat!2028 (exprs!6315 (h!71918 zl!343))) lt!2404117)))

(declare-fun b!6555404 () Bool)

(assert (=> b!6555404 (= e!3968687 (Concat!25276 (h!71916 (exprs!6315 (h!71918 zl!343))) (generalisedConcat!2028 (t!379234 (exprs!6315 (h!71918 zl!343))))))))

(declare-fun b!6555410 () Bool)

(assert (=> b!6555410 (= e!3968689 (h!71916 (exprs!6315 (h!71918 zl!343))))))

(declare-fun b!6555411 () Bool)

(assert (=> b!6555411 (= e!3968691 e!3968688)))

(declare-fun c!1204315 () Bool)

(declare-fun tail!12398 (List!65592) List!65592)

(assert (=> b!6555411 (= c!1204315 (isEmpty!37701 (tail!12398 (exprs!6315 (h!71918 zl!343)))))))

(assert (= (and d!2057013 res!2689704) b!6555402))

(assert (= (and d!2057013 c!1204314) b!6555410))

(assert (= (and d!2057013 (not c!1204314)) b!6555403))

(assert (= (and b!6555403 c!1204317) b!6555404))

(assert (= (and b!6555403 (not c!1204317)) b!6555407))

(assert (= (and d!2057013 res!2689705) b!6555408))

(assert (= (and b!6555408 c!1204316) b!6555405))

(assert (= (and b!6555408 (not c!1204316)) b!6555411))

(assert (= (and b!6555411 c!1204315) b!6555406))

(assert (= (and b!6555411 (not c!1204315)) b!6555409))

(declare-fun m!7337636 () Bool)

(assert (=> b!6555406 m!7337636))

(assert (=> b!6555402 m!7337382))

(declare-fun m!7337638 () Bool)

(assert (=> b!6555405 m!7337638))

(declare-fun m!7337640 () Bool)

(assert (=> d!2057013 m!7337640))

(declare-fun m!7337642 () Bool)

(assert (=> d!2057013 m!7337642))

(declare-fun m!7337644 () Bool)

(assert (=> b!6555408 m!7337644))

(declare-fun m!7337646 () Bool)

(assert (=> b!6555404 m!7337646))

(declare-fun m!7337648 () Bool)

(assert (=> b!6555411 m!7337648))

(assert (=> b!6555411 m!7337648))

(declare-fun m!7337650 () Bool)

(assert (=> b!6555411 m!7337650))

(declare-fun m!7337652 () Bool)

(assert (=> b!6555409 m!7337652))

(assert (=> b!6555069 d!2057013))

(declare-fun b!6555459 () Bool)

(declare-fun e!3968731 () Bool)

(declare-fun call!570172 () Bool)

(assert (=> b!6555459 (= e!3968731 call!570172)))

(declare-fun c!1204331 () Bool)

(declare-fun bm!570166 () Bool)

(declare-fun c!1204330 () Bool)

(declare-fun call!570173 () Bool)

(assert (=> bm!570166 (= call!570173 (validRegex!8167 (ite c!1204331 (reg!16760 (reg!16760 (regOne!33374 r!7292))) (ite c!1204330 (regOne!33375 (reg!16760 (regOne!33374 r!7292))) (regOne!33374 (reg!16760 (regOne!33374 r!7292)))))))))

(declare-fun b!6555460 () Bool)

(declare-fun e!3968733 () Bool)

(declare-fun e!3968732 () Bool)

(assert (=> b!6555460 (= e!3968733 e!3968732)))

(declare-fun res!2689732 () Bool)

(assert (=> b!6555460 (=> (not res!2689732) (not e!3968732))))

(declare-fun call!570171 () Bool)

(assert (=> b!6555460 (= res!2689732 call!570171)))

(declare-fun b!6555461 () Bool)

(declare-fun e!3968728 () Bool)

(declare-fun e!3968729 () Bool)

(assert (=> b!6555461 (= e!3968728 e!3968729)))

(declare-fun res!2689730 () Bool)

(assert (=> b!6555461 (= res!2689730 (not (nullable!6424 (reg!16760 (reg!16760 (regOne!33374 r!7292))))))))

(assert (=> b!6555461 (=> (not res!2689730) (not e!3968729))))

(declare-fun b!6555462 () Bool)

(declare-fun e!3968734 () Bool)

(assert (=> b!6555462 (= e!3968728 e!3968734)))

(assert (=> b!6555462 (= c!1204330 ((_ is Union!16431) (reg!16760 (regOne!33374 r!7292))))))

(declare-fun b!6555463 () Bool)

(declare-fun res!2689731 () Bool)

(assert (=> b!6555463 (=> (not res!2689731) (not e!3968731))))

(assert (=> b!6555463 (= res!2689731 call!570171)))

(assert (=> b!6555463 (= e!3968734 e!3968731)))

(declare-fun b!6555464 () Bool)

(declare-fun e!3968730 () Bool)

(assert (=> b!6555464 (= e!3968730 e!3968728)))

(assert (=> b!6555464 (= c!1204331 ((_ is Star!16431) (reg!16760 (regOne!33374 r!7292))))))

(declare-fun d!2057037 () Bool)

(declare-fun res!2689729 () Bool)

(assert (=> d!2057037 (=> res!2689729 e!3968730)))

(assert (=> d!2057037 (= res!2689729 ((_ is ElementMatch!16431) (reg!16760 (regOne!33374 r!7292))))))

(assert (=> d!2057037 (= (validRegex!8167 (reg!16760 (regOne!33374 r!7292))) e!3968730)))

(declare-fun bm!570167 () Bool)

(assert (=> bm!570167 (= call!570171 call!570173)))

(declare-fun b!6555465 () Bool)

(assert (=> b!6555465 (= e!3968729 call!570173)))

(declare-fun bm!570168 () Bool)

(assert (=> bm!570168 (= call!570172 (validRegex!8167 (ite c!1204330 (regTwo!33375 (reg!16760 (regOne!33374 r!7292))) (regTwo!33374 (reg!16760 (regOne!33374 r!7292))))))))

(declare-fun b!6555466 () Bool)

(assert (=> b!6555466 (= e!3968732 call!570172)))

(declare-fun b!6555467 () Bool)

(declare-fun res!2689733 () Bool)

(assert (=> b!6555467 (=> res!2689733 e!3968733)))

(assert (=> b!6555467 (= res!2689733 (not ((_ is Concat!25276) (reg!16760 (regOne!33374 r!7292)))))))

(assert (=> b!6555467 (= e!3968734 e!3968733)))

(assert (= (and d!2057037 (not res!2689729)) b!6555464))

(assert (= (and b!6555464 c!1204331) b!6555461))

(assert (= (and b!6555464 (not c!1204331)) b!6555462))

(assert (= (and b!6555461 res!2689730) b!6555465))

(assert (= (and b!6555462 c!1204330) b!6555463))

(assert (= (and b!6555462 (not c!1204330)) b!6555467))

(assert (= (and b!6555463 res!2689731) b!6555459))

(assert (= (and b!6555467 (not res!2689733)) b!6555460))

(assert (= (and b!6555460 res!2689732) b!6555466))

(assert (= (or b!6555459 b!6555466) bm!570168))

(assert (= (or b!6555463 b!6555460) bm!570167))

(assert (= (or b!6555465 bm!570167) bm!570166))

(declare-fun m!7337674 () Bool)

(assert (=> bm!570166 m!7337674))

(declare-fun m!7337676 () Bool)

(assert (=> b!6555461 m!7337676))

(declare-fun m!7337678 () Bool)

(assert (=> bm!570168 m!7337678))

(assert (=> b!6555090 d!2057037))

(declare-fun bs!1673151 () Bool)

(declare-fun b!6555572 () Bool)

(assert (= bs!1673151 (and b!6555572 b!6555075)))

(declare-fun lambda!364365 () Int)

(assert (=> bs!1673151 (not (= lambda!364365 lambda!364325))))

(assert (=> bs!1673151 (not (= lambda!364365 lambda!364326))))

(declare-fun bs!1673152 () Bool)

(assert (= bs!1673152 (and b!6555572 b!6555074)))

(assert (=> bs!1673152 (not (= lambda!364365 lambda!364330))))

(assert (=> bs!1673152 (not (= lambda!364365 lambda!364331))))

(assert (=> b!6555572 true))

(assert (=> b!6555572 true))

(declare-fun bs!1673153 () Bool)

(declare-fun b!6555563 () Bool)

(assert (= bs!1673153 (and b!6555563 b!6555075)))

(declare-fun lambda!364366 () Int)

(assert (=> bs!1673153 (not (= lambda!364366 lambda!364325))))

(declare-fun bs!1673154 () Bool)

(assert (= bs!1673154 (and b!6555563 b!6555074)))

(assert (=> bs!1673154 (not (= lambda!364366 lambda!364330))))

(assert (=> bs!1673154 (= (and (= (_1!36713 lt!2404008) s!2326) (= (regOne!33374 lt!2404040) lt!2404040) (= (regTwo!33374 lt!2404040) (regTwo!33374 r!7292))) (= lambda!364366 lambda!364331))))

(assert (=> bs!1673153 (= (and (= (_1!36713 lt!2404008) s!2326) (= (regOne!33374 lt!2404040) (regOne!33374 r!7292)) (= (regTwo!33374 lt!2404040) (regTwo!33374 r!7292))) (= lambda!364366 lambda!364326))))

(declare-fun bs!1673155 () Bool)

(assert (= bs!1673155 (and b!6555563 b!6555572)))

(assert (=> bs!1673155 (not (= lambda!364366 lambda!364365))))

(assert (=> b!6555563 true))

(assert (=> b!6555563 true))

(declare-fun e!3968793 () Bool)

(declare-fun call!570188 () Bool)

(assert (=> b!6555563 (= e!3968793 call!570188)))

(declare-fun d!2057049 () Bool)

(declare-fun c!1204368 () Bool)

(assert (=> d!2057049 (= c!1204368 ((_ is EmptyExpr!16431) lt!2404040))))

(declare-fun e!3968795 () Bool)

(assert (=> d!2057049 (= (matchRSpec!3532 lt!2404040 (_1!36713 lt!2404008)) e!3968795)))

(declare-fun bm!570183 () Bool)

(declare-fun call!570189 () Bool)

(assert (=> bm!570183 (= call!570189 (isEmpty!37705 (_1!36713 lt!2404008)))))

(declare-fun b!6555564 () Bool)

(declare-fun e!3968790 () Bool)

(assert (=> b!6555564 (= e!3968790 (matchRSpec!3532 (regTwo!33375 lt!2404040) (_1!36713 lt!2404008)))))

(declare-fun b!6555565 () Bool)

(declare-fun c!1204366 () Bool)

(assert (=> b!6555565 (= c!1204366 ((_ is ElementMatch!16431) lt!2404040))))

(declare-fun e!3968794 () Bool)

(declare-fun e!3968792 () Bool)

(assert (=> b!6555565 (= e!3968794 e!3968792)))

(declare-fun b!6555566 () Bool)

(assert (=> b!6555566 (= e!3968792 (= (_1!36713 lt!2404008) (Cons!65469 (c!1204232 lt!2404040) Nil!65469)))))

(declare-fun b!6555567 () Bool)

(assert (=> b!6555567 (= e!3968795 call!570189)))

(declare-fun c!1204367 () Bool)

(declare-fun bm!570184 () Bool)

(assert (=> bm!570184 (= call!570188 (Exists!3501 (ite c!1204367 lambda!364365 lambda!364366)))))

(declare-fun b!6555568 () Bool)

(declare-fun res!2689763 () Bool)

(declare-fun e!3968796 () Bool)

(assert (=> b!6555568 (=> res!2689763 e!3968796)))

(assert (=> b!6555568 (= res!2689763 call!570189)))

(assert (=> b!6555568 (= e!3968793 e!3968796)))

(declare-fun b!6555569 () Bool)

(assert (=> b!6555569 (= e!3968795 e!3968794)))

(declare-fun res!2689761 () Bool)

(assert (=> b!6555569 (= res!2689761 (not ((_ is EmptyLang!16431) lt!2404040)))))

(assert (=> b!6555569 (=> (not res!2689761) (not e!3968794))))

(declare-fun b!6555570 () Bool)

(declare-fun e!3968791 () Bool)

(assert (=> b!6555570 (= e!3968791 e!3968790)))

(declare-fun res!2689762 () Bool)

(assert (=> b!6555570 (= res!2689762 (matchRSpec!3532 (regOne!33375 lt!2404040) (_1!36713 lt!2404008)))))

(assert (=> b!6555570 (=> res!2689762 e!3968790)))

(declare-fun b!6555571 () Bool)

(declare-fun c!1204369 () Bool)

(assert (=> b!6555571 (= c!1204369 ((_ is Union!16431) lt!2404040))))

(assert (=> b!6555571 (= e!3968792 e!3968791)))

(assert (=> b!6555572 (= e!3968796 call!570188)))

(declare-fun b!6555573 () Bool)

(assert (=> b!6555573 (= e!3968791 e!3968793)))

(assert (=> b!6555573 (= c!1204367 ((_ is Star!16431) lt!2404040))))

(assert (= (and d!2057049 c!1204368) b!6555567))

(assert (= (and d!2057049 (not c!1204368)) b!6555569))

(assert (= (and b!6555569 res!2689761) b!6555565))

(assert (= (and b!6555565 c!1204366) b!6555566))

(assert (= (and b!6555565 (not c!1204366)) b!6555571))

(assert (= (and b!6555571 c!1204369) b!6555570))

(assert (= (and b!6555571 (not c!1204369)) b!6555573))

(assert (= (and b!6555570 (not res!2689762)) b!6555564))

(assert (= (and b!6555573 c!1204367) b!6555568))

(assert (= (and b!6555573 (not c!1204367)) b!6555563))

(assert (= (and b!6555568 (not res!2689763)) b!6555572))

(assert (= (or b!6555572 b!6555563) bm!570184))

(assert (= (or b!6555567 b!6555568) bm!570183))

(declare-fun m!7337778 () Bool)

(assert (=> bm!570183 m!7337778))

(declare-fun m!7337780 () Bool)

(assert (=> b!6555564 m!7337780))

(declare-fun m!7337782 () Bool)

(assert (=> bm!570184 m!7337782))

(declare-fun m!7337784 () Bool)

(assert (=> b!6555570 m!7337784))

(assert (=> b!6555090 d!2057049))

(declare-fun d!2057087 () Bool)

(assert (=> d!2057087 (= (matchR!8614 lt!2404040 (_1!36713 lt!2404008)) (matchRSpec!3532 lt!2404040 (_1!36713 lt!2404008)))))

(declare-fun lt!2404136 () Unit!159059)

(declare-fun choose!48832 (Regex!16431 List!65593) Unit!159059)

(assert (=> d!2057087 (= lt!2404136 (choose!48832 lt!2404040 (_1!36713 lt!2404008)))))

(assert (=> d!2057087 (validRegex!8167 lt!2404040)))

(assert (=> d!2057087 (= (mainMatchTheorem!3532 lt!2404040 (_1!36713 lt!2404008)) lt!2404136)))

(declare-fun bs!1673166 () Bool)

(assert (= bs!1673166 d!2057087))

(assert (=> bs!1673166 m!7337310))

(assert (=> bs!1673166 m!7337356))

(declare-fun m!7337792 () Bool)

(assert (=> bs!1673166 m!7337792))

(declare-fun m!7337794 () Bool)

(assert (=> bs!1673166 m!7337794))

(assert (=> b!6555090 d!2057087))

(declare-fun d!2057091 () Bool)

(declare-fun lt!2404139 () Regex!16431)

(assert (=> d!2057091 (validRegex!8167 lt!2404139)))

(assert (=> d!2057091 (= lt!2404139 (generalisedUnion!2275 (unfocusZipperList!1852 lt!2404046)))))

(assert (=> d!2057091 (= (unfocusZipper!2173 lt!2404046) lt!2404139)))

(declare-fun bs!1673176 () Bool)

(assert (= bs!1673176 d!2057091))

(declare-fun m!7337796 () Bool)

(assert (=> bs!1673176 m!7337796))

(declare-fun m!7337798 () Bool)

(assert (=> bs!1673176 m!7337798))

(assert (=> bs!1673176 m!7337798))

(declare-fun m!7337800 () Bool)

(assert (=> bs!1673176 m!7337800))

(assert (=> b!6555053 d!2057091))

(declare-fun bs!1673180 () Bool)

(declare-fun b!6555614 () Bool)

(assert (= bs!1673180 (and b!6555614 b!6555075)))

(declare-fun lambda!364370 () Int)

(assert (=> bs!1673180 (not (= lambda!364370 lambda!364325))))

(declare-fun bs!1673181 () Bool)

(assert (= bs!1673181 (and b!6555614 b!6555074)))

(assert (=> bs!1673181 (not (= lambda!364370 lambda!364330))))

(assert (=> bs!1673181 (not (= lambda!364370 lambda!364331))))

(assert (=> bs!1673180 (not (= lambda!364370 lambda!364326))))

(declare-fun bs!1673182 () Bool)

(assert (= bs!1673182 (and b!6555614 b!6555563)))

(assert (=> bs!1673182 (not (= lambda!364370 lambda!364366))))

(declare-fun bs!1673183 () Bool)

(assert (= bs!1673183 (and b!6555614 b!6555572)))

(assert (=> bs!1673183 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (reg!16760 lt!2404041) (reg!16760 lt!2404040)) (= lt!2404041 lt!2404040)) (= lambda!364370 lambda!364365))))

(assert (=> b!6555614 true))

(assert (=> b!6555614 true))

(declare-fun bs!1673184 () Bool)

(declare-fun b!6555605 () Bool)

(assert (= bs!1673184 (and b!6555605 b!6555075)))

(declare-fun lambda!364371 () Int)

(assert (=> bs!1673184 (not (= lambda!364371 lambda!364325))))

(declare-fun bs!1673185 () Bool)

(assert (= bs!1673185 (and b!6555605 b!6555074)))

(assert (=> bs!1673185 (= (and (= (regOne!33374 lt!2404041) lt!2404040) (= (regTwo!33374 lt!2404041) (regTwo!33374 r!7292))) (= lambda!364371 lambda!364331))))

(assert (=> bs!1673184 (= (and (= (regOne!33374 lt!2404041) (regOne!33374 r!7292)) (= (regTwo!33374 lt!2404041) (regTwo!33374 r!7292))) (= lambda!364371 lambda!364326))))

(declare-fun bs!1673186 () Bool)

(assert (= bs!1673186 (and b!6555605 b!6555563)))

(assert (=> bs!1673186 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (regOne!33374 lt!2404041) (regOne!33374 lt!2404040)) (= (regTwo!33374 lt!2404041) (regTwo!33374 lt!2404040))) (= lambda!364371 lambda!364366))))

(declare-fun bs!1673188 () Bool)

(assert (= bs!1673188 (and b!6555605 b!6555572)))

(assert (=> bs!1673188 (not (= lambda!364371 lambda!364365))))

(assert (=> bs!1673185 (not (= lambda!364371 lambda!364330))))

(declare-fun bs!1673190 () Bool)

(assert (= bs!1673190 (and b!6555605 b!6555614)))

(assert (=> bs!1673190 (not (= lambda!364371 lambda!364370))))

(assert (=> b!6555605 true))

(assert (=> b!6555605 true))

(declare-fun e!3968820 () Bool)

(declare-fun call!570195 () Bool)

(assert (=> b!6555605 (= e!3968820 call!570195)))

(declare-fun d!2057093 () Bool)

(declare-fun c!1204383 () Bool)

(assert (=> d!2057093 (= c!1204383 ((_ is EmptyExpr!16431) lt!2404041))))

(declare-fun e!3968822 () Bool)

(assert (=> d!2057093 (= (matchRSpec!3532 lt!2404041 s!2326) e!3968822)))

(declare-fun bm!570190 () Bool)

(declare-fun call!570196 () Bool)

(assert (=> bm!570190 (= call!570196 (isEmpty!37705 s!2326))))

(declare-fun b!6555606 () Bool)

(declare-fun e!3968817 () Bool)

(assert (=> b!6555606 (= e!3968817 (matchRSpec!3532 (regTwo!33375 lt!2404041) s!2326))))

(declare-fun b!6555607 () Bool)

(declare-fun c!1204381 () Bool)

(assert (=> b!6555607 (= c!1204381 ((_ is ElementMatch!16431) lt!2404041))))

(declare-fun e!3968821 () Bool)

(declare-fun e!3968819 () Bool)

(assert (=> b!6555607 (= e!3968821 e!3968819)))

(declare-fun b!6555608 () Bool)

(assert (=> b!6555608 (= e!3968819 (= s!2326 (Cons!65469 (c!1204232 lt!2404041) Nil!65469)))))

(declare-fun b!6555609 () Bool)

(assert (=> b!6555609 (= e!3968822 call!570196)))

(declare-fun c!1204382 () Bool)

(declare-fun bm!570191 () Bool)

(assert (=> bm!570191 (= call!570195 (Exists!3501 (ite c!1204382 lambda!364370 lambda!364371)))))

(declare-fun b!6555610 () Bool)

(declare-fun res!2689775 () Bool)

(declare-fun e!3968823 () Bool)

(assert (=> b!6555610 (=> res!2689775 e!3968823)))

(assert (=> b!6555610 (= res!2689775 call!570196)))

(assert (=> b!6555610 (= e!3968820 e!3968823)))

(declare-fun b!6555611 () Bool)

(assert (=> b!6555611 (= e!3968822 e!3968821)))

(declare-fun res!2689773 () Bool)

(assert (=> b!6555611 (= res!2689773 (not ((_ is EmptyLang!16431) lt!2404041)))))

(assert (=> b!6555611 (=> (not res!2689773) (not e!3968821))))

(declare-fun b!6555612 () Bool)

(declare-fun e!3968818 () Bool)

(assert (=> b!6555612 (= e!3968818 e!3968817)))

(declare-fun res!2689774 () Bool)

(assert (=> b!6555612 (= res!2689774 (matchRSpec!3532 (regOne!33375 lt!2404041) s!2326))))

(assert (=> b!6555612 (=> res!2689774 e!3968817)))

(declare-fun b!6555613 () Bool)

(declare-fun c!1204384 () Bool)

(assert (=> b!6555613 (= c!1204384 ((_ is Union!16431) lt!2404041))))

(assert (=> b!6555613 (= e!3968819 e!3968818)))

(assert (=> b!6555614 (= e!3968823 call!570195)))

(declare-fun b!6555615 () Bool)

(assert (=> b!6555615 (= e!3968818 e!3968820)))

(assert (=> b!6555615 (= c!1204382 ((_ is Star!16431) lt!2404041))))

(assert (= (and d!2057093 c!1204383) b!6555609))

(assert (= (and d!2057093 (not c!1204383)) b!6555611))

(assert (= (and b!6555611 res!2689773) b!6555607))

(assert (= (and b!6555607 c!1204381) b!6555608))

(assert (= (and b!6555607 (not c!1204381)) b!6555613))

(assert (= (and b!6555613 c!1204384) b!6555612))

(assert (= (and b!6555613 (not c!1204384)) b!6555615))

(assert (= (and b!6555612 (not res!2689774)) b!6555606))

(assert (= (and b!6555615 c!1204382) b!6555610))

(assert (= (and b!6555615 (not c!1204382)) b!6555605))

(assert (= (and b!6555610 (not res!2689775)) b!6555614))

(assert (= (or b!6555614 b!6555605) bm!570191))

(assert (= (or b!6555609 b!6555610) bm!570190))

(declare-fun m!7337822 () Bool)

(assert (=> bm!570190 m!7337822))

(declare-fun m!7337824 () Bool)

(assert (=> b!6555606 m!7337824))

(declare-fun m!7337826 () Bool)

(assert (=> bm!570191 m!7337826))

(declare-fun m!7337828 () Bool)

(assert (=> b!6555612 m!7337828))

(assert (=> b!6555072 d!2057093))

(declare-fun b!6555674 () Bool)

(declare-fun e!3968855 () Bool)

(assert (=> b!6555674 (= e!3968855 (not (= (head!13312 s!2326) (c!1204232 lt!2404041))))))

(declare-fun b!6555676 () Bool)

(declare-fun e!3968857 () Bool)

(declare-fun derivativeStep!5115 (Regex!16431 C!33132) Regex!16431)

(assert (=> b!6555676 (= e!3968857 (matchR!8614 (derivativeStep!5115 lt!2404041 (head!13312 s!2326)) (tail!12397 s!2326)))))

(declare-fun b!6555677 () Bool)

(declare-fun res!2689811 () Bool)

(assert (=> b!6555677 (=> res!2689811 e!3968855)))

(assert (=> b!6555677 (= res!2689811 (not (isEmpty!37705 (tail!12397 s!2326))))))

(declare-fun b!6555678 () Bool)

(declare-fun res!2689808 () Bool)

(declare-fun e!3968858 () Bool)

(assert (=> b!6555678 (=> res!2689808 e!3968858)))

(assert (=> b!6555678 (= res!2689808 (not ((_ is ElementMatch!16431) lt!2404041)))))

(declare-fun e!3968853 () Bool)

(assert (=> b!6555678 (= e!3968853 e!3968858)))

(declare-fun b!6555679 () Bool)

(declare-fun res!2689812 () Bool)

(assert (=> b!6555679 (=> res!2689812 e!3968858)))

(declare-fun e!3968854 () Bool)

(assert (=> b!6555679 (= res!2689812 e!3968854)))

(declare-fun res!2689807 () Bool)

(assert (=> b!6555679 (=> (not res!2689807) (not e!3968854))))

(declare-fun lt!2404150 () Bool)

(assert (=> b!6555679 (= res!2689807 lt!2404150)))

(declare-fun b!6555680 () Bool)

(assert (=> b!6555680 (= e!3968857 (nullable!6424 lt!2404041))))

(declare-fun b!6555681 () Bool)

(declare-fun e!3968856 () Bool)

(assert (=> b!6555681 (= e!3968858 e!3968856)))

(declare-fun res!2689806 () Bool)

(assert (=> b!6555681 (=> (not res!2689806) (not e!3968856))))

(assert (=> b!6555681 (= res!2689806 (not lt!2404150))))

(declare-fun b!6555682 () Bool)

(declare-fun e!3968859 () Bool)

(declare-fun call!570201 () Bool)

(assert (=> b!6555682 (= e!3968859 (= lt!2404150 call!570201))))

(declare-fun b!6555683 () Bool)

(assert (=> b!6555683 (= e!3968853 (not lt!2404150))))

(declare-fun b!6555684 () Bool)

(assert (=> b!6555684 (= e!3968859 e!3968853)))

(declare-fun c!1204402 () Bool)

(assert (=> b!6555684 (= c!1204402 ((_ is EmptyLang!16431) lt!2404041))))

(declare-fun d!2057105 () Bool)

(assert (=> d!2057105 e!3968859))

(declare-fun c!1204401 () Bool)

(assert (=> d!2057105 (= c!1204401 ((_ is EmptyExpr!16431) lt!2404041))))

(assert (=> d!2057105 (= lt!2404150 e!3968857)))

(declare-fun c!1204400 () Bool)

(assert (=> d!2057105 (= c!1204400 (isEmpty!37705 s!2326))))

(assert (=> d!2057105 (validRegex!8167 lt!2404041)))

(assert (=> d!2057105 (= (matchR!8614 lt!2404041 s!2326) lt!2404150)))

(declare-fun b!6555675 () Bool)

(declare-fun res!2689813 () Bool)

(assert (=> b!6555675 (=> (not res!2689813) (not e!3968854))))

(assert (=> b!6555675 (= res!2689813 (isEmpty!37705 (tail!12397 s!2326)))))

(declare-fun b!6555685 () Bool)

(declare-fun res!2689809 () Bool)

(assert (=> b!6555685 (=> (not res!2689809) (not e!3968854))))

(assert (=> b!6555685 (= res!2689809 (not call!570201))))

(declare-fun b!6555686 () Bool)

(assert (=> b!6555686 (= e!3968856 e!3968855)))

(declare-fun res!2689810 () Bool)

(assert (=> b!6555686 (=> res!2689810 e!3968855)))

(assert (=> b!6555686 (= res!2689810 call!570201)))

(declare-fun bm!570196 () Bool)

(assert (=> bm!570196 (= call!570201 (isEmpty!37705 s!2326))))

(declare-fun b!6555687 () Bool)

(assert (=> b!6555687 (= e!3968854 (= (head!13312 s!2326) (c!1204232 lt!2404041)))))

(assert (= (and d!2057105 c!1204400) b!6555680))

(assert (= (and d!2057105 (not c!1204400)) b!6555676))

(assert (= (and d!2057105 c!1204401) b!6555682))

(assert (= (and d!2057105 (not c!1204401)) b!6555684))

(assert (= (and b!6555684 c!1204402) b!6555683))

(assert (= (and b!6555684 (not c!1204402)) b!6555678))

(assert (= (and b!6555678 (not res!2689808)) b!6555679))

(assert (= (and b!6555679 res!2689807) b!6555685))

(assert (= (and b!6555685 res!2689809) b!6555675))

(assert (= (and b!6555675 res!2689813) b!6555687))

(assert (= (and b!6555679 (not res!2689812)) b!6555681))

(assert (= (and b!6555681 res!2689806) b!6555686))

(assert (= (and b!6555686 (not res!2689810)) b!6555677))

(assert (= (and b!6555677 (not res!2689811)) b!6555674))

(assert (= (or b!6555682 b!6555685 b!6555686) bm!570196))

(assert (=> bm!570196 m!7337822))

(declare-fun m!7337862 () Bool)

(assert (=> b!6555680 m!7337862))

(declare-fun m!7337864 () Bool)

(assert (=> b!6555677 m!7337864))

(assert (=> b!6555677 m!7337864))

(declare-fun m!7337866 () Bool)

(assert (=> b!6555677 m!7337866))

(declare-fun m!7337868 () Bool)

(assert (=> b!6555674 m!7337868))

(assert (=> d!2057105 m!7337822))

(declare-fun m!7337870 () Bool)

(assert (=> d!2057105 m!7337870))

(assert (=> b!6555676 m!7337868))

(assert (=> b!6555676 m!7337868))

(declare-fun m!7337872 () Bool)

(assert (=> b!6555676 m!7337872))

(assert (=> b!6555676 m!7337864))

(assert (=> b!6555676 m!7337872))

(assert (=> b!6555676 m!7337864))

(declare-fun m!7337880 () Bool)

(assert (=> b!6555676 m!7337880))

(assert (=> b!6555687 m!7337868))

(assert (=> b!6555675 m!7337864))

(assert (=> b!6555675 m!7337864))

(assert (=> b!6555675 m!7337866))

(assert (=> b!6555072 d!2057105))

(declare-fun d!2057123 () Bool)

(assert (=> d!2057123 (= (matchR!8614 lt!2404041 s!2326) (matchRSpec!3532 lt!2404041 s!2326))))

(declare-fun lt!2404151 () Unit!159059)

(assert (=> d!2057123 (= lt!2404151 (choose!48832 lt!2404041 s!2326))))

(assert (=> d!2057123 (validRegex!8167 lt!2404041)))

(assert (=> d!2057123 (= (mainMatchTheorem!3532 lt!2404041 s!2326) lt!2404151)))

(declare-fun bs!1673221 () Bool)

(assert (= bs!1673221 d!2057123))

(assert (=> bs!1673221 m!7337220))

(assert (=> bs!1673221 m!7337218))

(declare-fun m!7337884 () Bool)

(assert (=> bs!1673221 m!7337884))

(assert (=> bs!1673221 m!7337870))

(assert (=> b!6555072 d!2057123))

(declare-fun b!6555688 () Bool)

(declare-fun e!3968863 () Bool)

(declare-fun call!570203 () Bool)

(assert (=> b!6555688 (= e!3968863 call!570203)))

(declare-fun c!1204403 () Bool)

(declare-fun c!1204404 () Bool)

(declare-fun call!570204 () Bool)

(declare-fun bm!570197 () Bool)

(assert (=> bm!570197 (= call!570204 (validRegex!8167 (ite c!1204404 (reg!16760 lt!2404015) (ite c!1204403 (regOne!33375 lt!2404015) (regOne!33374 lt!2404015)))))))

(declare-fun b!6555689 () Bool)

(declare-fun e!3968865 () Bool)

(declare-fun e!3968864 () Bool)

(assert (=> b!6555689 (= e!3968865 e!3968864)))

(declare-fun res!2689817 () Bool)

(assert (=> b!6555689 (=> (not res!2689817) (not e!3968864))))

(declare-fun call!570202 () Bool)

(assert (=> b!6555689 (= res!2689817 call!570202)))

(declare-fun b!6555690 () Bool)

(declare-fun e!3968860 () Bool)

(declare-fun e!3968861 () Bool)

(assert (=> b!6555690 (= e!3968860 e!3968861)))

(declare-fun res!2689815 () Bool)

(assert (=> b!6555690 (= res!2689815 (not (nullable!6424 (reg!16760 lt!2404015))))))

(assert (=> b!6555690 (=> (not res!2689815) (not e!3968861))))

(declare-fun b!6555691 () Bool)

(declare-fun e!3968866 () Bool)

(assert (=> b!6555691 (= e!3968860 e!3968866)))

(assert (=> b!6555691 (= c!1204403 ((_ is Union!16431) lt!2404015))))

(declare-fun b!6555692 () Bool)

(declare-fun res!2689816 () Bool)

(assert (=> b!6555692 (=> (not res!2689816) (not e!3968863))))

(assert (=> b!6555692 (= res!2689816 call!570202)))

(assert (=> b!6555692 (= e!3968866 e!3968863)))

(declare-fun b!6555693 () Bool)

(declare-fun e!3968862 () Bool)

(assert (=> b!6555693 (= e!3968862 e!3968860)))

(assert (=> b!6555693 (= c!1204404 ((_ is Star!16431) lt!2404015))))

(declare-fun d!2057127 () Bool)

(declare-fun res!2689814 () Bool)

(assert (=> d!2057127 (=> res!2689814 e!3968862)))

(assert (=> d!2057127 (= res!2689814 ((_ is ElementMatch!16431) lt!2404015))))

(assert (=> d!2057127 (= (validRegex!8167 lt!2404015) e!3968862)))

(declare-fun bm!570198 () Bool)

(assert (=> bm!570198 (= call!570202 call!570204)))

(declare-fun b!6555694 () Bool)

(assert (=> b!6555694 (= e!3968861 call!570204)))

(declare-fun bm!570199 () Bool)

(assert (=> bm!570199 (= call!570203 (validRegex!8167 (ite c!1204403 (regTwo!33375 lt!2404015) (regTwo!33374 lt!2404015))))))

(declare-fun b!6555695 () Bool)

(assert (=> b!6555695 (= e!3968864 call!570203)))

(declare-fun b!6555696 () Bool)

(declare-fun res!2689818 () Bool)

(assert (=> b!6555696 (=> res!2689818 e!3968865)))

(assert (=> b!6555696 (= res!2689818 (not ((_ is Concat!25276) lt!2404015)))))

(assert (=> b!6555696 (= e!3968866 e!3968865)))

(assert (= (and d!2057127 (not res!2689814)) b!6555693))

(assert (= (and b!6555693 c!1204404) b!6555690))

(assert (= (and b!6555693 (not c!1204404)) b!6555691))

(assert (= (and b!6555690 res!2689815) b!6555694))

(assert (= (and b!6555691 c!1204403) b!6555692))

(assert (= (and b!6555691 (not c!1204403)) b!6555696))

(assert (= (and b!6555692 res!2689816) b!6555688))

(assert (= (and b!6555696 (not res!2689818)) b!6555689))

(assert (= (and b!6555689 res!2689817) b!6555695))

(assert (= (or b!6555688 b!6555695) bm!570199))

(assert (= (or b!6555692 b!6555689) bm!570198))

(assert (= (or b!6555694 bm!570198) bm!570197))

(declare-fun m!7337888 () Bool)

(assert (=> bm!570197 m!7337888))

(declare-fun m!7337890 () Bool)

(assert (=> b!6555690 m!7337890))

(declare-fun m!7337892 () Bool)

(assert (=> bm!570199 m!7337892))

(assert (=> b!6555073 d!2057127))

(declare-fun d!2057131 () Bool)

(declare-fun choose!48834 ((InoxSet Context!11630) Int) (InoxSet Context!11630))

(assert (=> d!2057131 (= (flatMap!1936 lt!2404010 lambda!364327) (choose!48834 lt!2404010 lambda!364327))))

(declare-fun bs!1673223 () Bool)

(assert (= bs!1673223 d!2057131))

(declare-fun m!7337894 () Bool)

(assert (=> bs!1673223 m!7337894))

(assert (=> b!6555094 d!2057131))

(declare-fun d!2057133 () Bool)

(declare-fun c!1204409 () Bool)

(declare-fun e!3968874 () Bool)

(assert (=> d!2057133 (= c!1204409 e!3968874)))

(declare-fun res!2689821 () Bool)

(assert (=> d!2057133 (=> (not res!2689821) (not e!3968874))))

(assert (=> d!2057133 (= res!2689821 ((_ is Cons!65468) (exprs!6315 lt!2404024)))))

(declare-fun e!3968875 () (InoxSet Context!11630))

(assert (=> d!2057133 (= (derivationStepZipperUp!1605 lt!2404024 (h!71917 s!2326)) e!3968875)))

(declare-fun b!6555707 () Bool)

(declare-fun e!3968873 () (InoxSet Context!11630))

(assert (=> b!6555707 (= e!3968875 e!3968873)))

(declare-fun c!1204410 () Bool)

(assert (=> b!6555707 (= c!1204410 ((_ is Cons!65468) (exprs!6315 lt!2404024)))))

(declare-fun b!6555708 () Bool)

(declare-fun call!570207 () (InoxSet Context!11630))

(assert (=> b!6555708 (= e!3968875 ((_ map or) call!570207 (derivationStepZipperUp!1605 (Context!11631 (t!379234 (exprs!6315 lt!2404024))) (h!71917 s!2326))))))

(declare-fun b!6555709 () Bool)

(assert (=> b!6555709 (= e!3968874 (nullable!6424 (h!71916 (exprs!6315 lt!2404024))))))

(declare-fun b!6555710 () Bool)

(assert (=> b!6555710 (= e!3968873 call!570207)))

(declare-fun bm!570202 () Bool)

(assert (=> bm!570202 (= call!570207 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 lt!2404024)) (Context!11631 (t!379234 (exprs!6315 lt!2404024))) (h!71917 s!2326)))))

(declare-fun b!6555711 () Bool)

(assert (=> b!6555711 (= e!3968873 ((as const (Array Context!11630 Bool)) false))))

(assert (= (and d!2057133 res!2689821) b!6555709))

(assert (= (and d!2057133 c!1204409) b!6555708))

(assert (= (and d!2057133 (not c!1204409)) b!6555707))

(assert (= (and b!6555707 c!1204410) b!6555710))

(assert (= (and b!6555707 (not c!1204410)) b!6555711))

(assert (= (or b!6555708 b!6555710) bm!570202))

(declare-fun m!7337896 () Bool)

(assert (=> b!6555708 m!7337896))

(declare-fun m!7337898 () Bool)

(assert (=> b!6555709 m!7337898))

(declare-fun m!7337900 () Bool)

(assert (=> bm!570202 m!7337900))

(assert (=> b!6555094 d!2057133))

(declare-fun d!2057135 () Bool)

(declare-fun dynLambda!26032 (Int Context!11630) (InoxSet Context!11630))

(assert (=> d!2057135 (= (flatMap!1936 lt!2404010 lambda!364327) (dynLambda!26032 lambda!364327 lt!2404024))))

(declare-fun lt!2404158 () Unit!159059)

(declare-fun choose!48835 ((InoxSet Context!11630) Context!11630 Int) Unit!159059)

(assert (=> d!2057135 (= lt!2404158 (choose!48835 lt!2404010 lt!2404024 lambda!364327))))

(assert (=> d!2057135 (= lt!2404010 (store ((as const (Array Context!11630 Bool)) false) lt!2404024 true))))

(assert (=> d!2057135 (= (lemmaFlatMapOnSingletonSet!1462 lt!2404010 lt!2404024 lambda!364327) lt!2404158)))

(declare-fun b_lambda!248049 () Bool)

(assert (=> (not b_lambda!248049) (not d!2057135)))

(declare-fun bs!1673226 () Bool)

(assert (= bs!1673226 d!2057135))

(assert (=> bs!1673226 m!7337206))

(declare-fun m!7337912 () Bool)

(assert (=> bs!1673226 m!7337912))

(declare-fun m!7337914 () Bool)

(assert (=> bs!1673226 m!7337914))

(assert (=> bs!1673226 m!7337208))

(assert (=> b!6555094 d!2057135))

(declare-fun bs!1673227 () Bool)

(declare-fun d!2057143 () Bool)

(assert (= bs!1673227 (and d!2057143 b!6555082)))

(declare-fun lambda!364380 () Int)

(assert (=> bs!1673227 (= lambda!364380 lambda!364327)))

(assert (=> d!2057143 true))

(assert (=> d!2057143 (= (derivationStepZipper!2397 lt!2404010 (h!71917 s!2326)) (flatMap!1936 lt!2404010 lambda!364380))))

(declare-fun bs!1673228 () Bool)

(assert (= bs!1673228 d!2057143))

(declare-fun m!7337916 () Bool)

(assert (=> bs!1673228 m!7337916))

(assert (=> b!6555094 d!2057143))

(declare-fun b!6555722 () Bool)

(declare-fun e!3968883 () Bool)

(declare-fun call!570209 () Bool)

(assert (=> b!6555722 (= e!3968883 call!570209)))

(declare-fun c!1204416 () Bool)

(declare-fun bm!570203 () Bool)

(declare-fun call!570210 () Bool)

(declare-fun c!1204415 () Bool)

(assert (=> bm!570203 (= call!570210 (validRegex!8167 (ite c!1204416 (reg!16760 r!7292) (ite c!1204415 (regOne!33375 r!7292) (regOne!33374 r!7292)))))))

(declare-fun b!6555723 () Bool)

(declare-fun e!3968885 () Bool)

(declare-fun e!3968884 () Bool)

(assert (=> b!6555723 (= e!3968885 e!3968884)))

(declare-fun res!2689829 () Bool)

(assert (=> b!6555723 (=> (not res!2689829) (not e!3968884))))

(declare-fun call!570208 () Bool)

(assert (=> b!6555723 (= res!2689829 call!570208)))

(declare-fun b!6555724 () Bool)

(declare-fun e!3968880 () Bool)

(declare-fun e!3968881 () Bool)

(assert (=> b!6555724 (= e!3968880 e!3968881)))

(declare-fun res!2689827 () Bool)

(assert (=> b!6555724 (= res!2689827 (not (nullable!6424 (reg!16760 r!7292))))))

(assert (=> b!6555724 (=> (not res!2689827) (not e!3968881))))

(declare-fun b!6555725 () Bool)

(declare-fun e!3968886 () Bool)

(assert (=> b!6555725 (= e!3968880 e!3968886)))

(assert (=> b!6555725 (= c!1204415 ((_ is Union!16431) r!7292))))

(declare-fun b!6555726 () Bool)

(declare-fun res!2689828 () Bool)

(assert (=> b!6555726 (=> (not res!2689828) (not e!3968883))))

(assert (=> b!6555726 (= res!2689828 call!570208)))

(assert (=> b!6555726 (= e!3968886 e!3968883)))

(declare-fun b!6555727 () Bool)

(declare-fun e!3968882 () Bool)

(assert (=> b!6555727 (= e!3968882 e!3968880)))

(assert (=> b!6555727 (= c!1204416 ((_ is Star!16431) r!7292))))

(declare-fun d!2057145 () Bool)

(declare-fun res!2689826 () Bool)

(assert (=> d!2057145 (=> res!2689826 e!3968882)))

(assert (=> d!2057145 (= res!2689826 ((_ is ElementMatch!16431) r!7292))))

(assert (=> d!2057145 (= (validRegex!8167 r!7292) e!3968882)))

(declare-fun bm!570204 () Bool)

(assert (=> bm!570204 (= call!570208 call!570210)))

(declare-fun b!6555728 () Bool)

(assert (=> b!6555728 (= e!3968881 call!570210)))

(declare-fun bm!570205 () Bool)

(assert (=> bm!570205 (= call!570209 (validRegex!8167 (ite c!1204415 (regTwo!33375 r!7292) (regTwo!33374 r!7292))))))

(declare-fun b!6555729 () Bool)

(assert (=> b!6555729 (= e!3968884 call!570209)))

(declare-fun b!6555730 () Bool)

(declare-fun res!2689830 () Bool)

(assert (=> b!6555730 (=> res!2689830 e!3968885)))

(assert (=> b!6555730 (= res!2689830 (not ((_ is Concat!25276) r!7292)))))

(assert (=> b!6555730 (= e!3968886 e!3968885)))

(assert (= (and d!2057145 (not res!2689826)) b!6555727))

(assert (= (and b!6555727 c!1204416) b!6555724))

(assert (= (and b!6555727 (not c!1204416)) b!6555725))

(assert (= (and b!6555724 res!2689827) b!6555728))

(assert (= (and b!6555725 c!1204415) b!6555726))

(assert (= (and b!6555725 (not c!1204415)) b!6555730))

(assert (= (and b!6555726 res!2689828) b!6555722))

(assert (= (and b!6555730 (not res!2689830)) b!6555723))

(assert (= (and b!6555723 res!2689829) b!6555729))

(assert (= (or b!6555722 b!6555729) bm!570205))

(assert (= (or b!6555726 b!6555723) bm!570204))

(assert (= (or b!6555728 bm!570204) bm!570203))

(declare-fun m!7337918 () Bool)

(assert (=> bm!570203 m!7337918))

(declare-fun m!7337920 () Bool)

(assert (=> b!6555724 m!7337920))

(declare-fun m!7337924 () Bool)

(assert (=> bm!570205 m!7337924))

(assert (=> start!642362 d!2057145))

(declare-fun d!2057147 () Bool)

(declare-fun c!1204418 () Bool)

(assert (=> d!2057147 (= c!1204418 (isEmpty!37705 (t!379235 s!2326)))))

(declare-fun e!3968889 () Bool)

(assert (=> d!2057147 (= (matchZipper!2443 lt!2404033 (t!379235 s!2326)) e!3968889)))

(declare-fun b!6555735 () Bool)

(assert (=> b!6555735 (= e!3968889 (nullableZipper!2175 lt!2404033))))

(declare-fun b!6555736 () Bool)

(assert (=> b!6555736 (= e!3968889 (matchZipper!2443 (derivationStepZipper!2397 lt!2404033 (head!13312 (t!379235 s!2326))) (tail!12397 (t!379235 s!2326))))))

(assert (= (and d!2057147 c!1204418) b!6555735))

(assert (= (and d!2057147 (not c!1204418)) b!6555736))

(declare-fun m!7337938 () Bool)

(assert (=> d!2057147 m!7337938))

(declare-fun m!7337940 () Bool)

(assert (=> b!6555735 m!7337940))

(declare-fun m!7337942 () Bool)

(assert (=> b!6555736 m!7337942))

(assert (=> b!6555736 m!7337942))

(declare-fun m!7337944 () Bool)

(assert (=> b!6555736 m!7337944))

(declare-fun m!7337946 () Bool)

(assert (=> b!6555736 m!7337946))

(assert (=> b!6555736 m!7337944))

(assert (=> b!6555736 m!7337946))

(declare-fun m!7337948 () Bool)

(assert (=> b!6555736 m!7337948))

(assert (=> b!6555092 d!2057147))

(declare-fun d!2057151 () Bool)

(declare-fun isEmpty!37706 (Option!16322) Bool)

(assert (=> d!2057151 (= (isDefined!13025 lt!2404049) (not (isEmpty!37706 lt!2404049)))))

(declare-fun bs!1673229 () Bool)

(assert (= bs!1673229 d!2057151))

(declare-fun m!7337950 () Bool)

(assert (=> bs!1673229 m!7337950))

(assert (=> b!6555093 d!2057151))

(declare-fun d!2057153 () Bool)

(assert (=> d!2057153 (isDefined!13025 (findConcatSeparationZippers!196 lt!2404023 (store ((as const (Array Context!11630 Bool)) false) lt!2404006 true) Nil!65469 s!2326 s!2326))))

(declare-fun lt!2404164 () Unit!159059)

(declare-fun choose!48836 ((InoxSet Context!11630) Context!11630 List!65593) Unit!159059)

(assert (=> d!2057153 (= lt!2404164 (choose!48836 lt!2404023 lt!2404006 s!2326))))

(assert (=> d!2057153 (matchZipper!2443 (appendTo!192 lt!2404023 lt!2404006) s!2326)))

(assert (=> d!2057153 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!196 lt!2404023 lt!2404006 s!2326) lt!2404164)))

(declare-fun bs!1673230 () Bool)

(assert (= bs!1673230 d!2057153))

(declare-fun m!7337952 () Bool)

(assert (=> bs!1673230 m!7337952))

(declare-fun m!7337954 () Bool)

(assert (=> bs!1673230 m!7337954))

(declare-fun m!7337956 () Bool)

(assert (=> bs!1673230 m!7337956))

(assert (=> bs!1673230 m!7337260))

(assert (=> bs!1673230 m!7337954))

(assert (=> bs!1673230 m!7337260))

(assert (=> bs!1673230 m!7337236))

(declare-fun m!7337958 () Bool)

(assert (=> bs!1673230 m!7337958))

(assert (=> bs!1673230 m!7337236))

(assert (=> b!6555093 d!2057153))

(declare-fun b!6555763 () Bool)

(declare-fun e!3968905 () List!65593)

(assert (=> b!6555763 (= e!3968905 (_2!36713 lt!2404014))))

(declare-fun b!6555764 () Bool)

(assert (=> b!6555764 (= e!3968905 (Cons!65469 (h!71917 (_1!36713 lt!2404014)) (++!14565 (t!379235 (_1!36713 lt!2404014)) (_2!36713 lt!2404014))))))

(declare-fun b!6555765 () Bool)

(declare-fun res!2689847 () Bool)

(declare-fun e!3968904 () Bool)

(assert (=> b!6555765 (=> (not res!2689847) (not e!3968904))))

(declare-fun lt!2404173 () List!65593)

(declare-fun size!40510 (List!65593) Int)

(assert (=> b!6555765 (= res!2689847 (= (size!40510 lt!2404173) (+ (size!40510 (_1!36713 lt!2404014)) (size!40510 (_2!36713 lt!2404014)))))))

(declare-fun b!6555766 () Bool)

(assert (=> b!6555766 (= e!3968904 (or (not (= (_2!36713 lt!2404014) Nil!65469)) (= lt!2404173 (_1!36713 lt!2404014))))))

(declare-fun d!2057155 () Bool)

(assert (=> d!2057155 e!3968904))

(declare-fun res!2689848 () Bool)

(assert (=> d!2057155 (=> (not res!2689848) (not e!3968904))))

(declare-fun content!12572 (List!65593) (InoxSet C!33132))

(assert (=> d!2057155 (= res!2689848 (= (content!12572 lt!2404173) ((_ map or) (content!12572 (_1!36713 lt!2404014)) (content!12572 (_2!36713 lt!2404014)))))))

(assert (=> d!2057155 (= lt!2404173 e!3968905)))

(declare-fun c!1204425 () Bool)

(assert (=> d!2057155 (= c!1204425 ((_ is Nil!65469) (_1!36713 lt!2404014)))))

(assert (=> d!2057155 (= (++!14565 (_1!36713 lt!2404014) (_2!36713 lt!2404014)) lt!2404173)))

(assert (= (and d!2057155 c!1204425) b!6555763))

(assert (= (and d!2057155 (not c!1204425)) b!6555764))

(assert (= (and d!2057155 res!2689848) b!6555765))

(assert (= (and b!6555765 res!2689847) b!6555766))

(declare-fun m!7337960 () Bool)

(assert (=> b!6555764 m!7337960))

(declare-fun m!7337962 () Bool)

(assert (=> b!6555765 m!7337962))

(declare-fun m!7337964 () Bool)

(assert (=> b!6555765 m!7337964))

(declare-fun m!7337966 () Bool)

(assert (=> b!6555765 m!7337966))

(declare-fun m!7337968 () Bool)

(assert (=> d!2057155 m!7337968))

(declare-fun m!7337970 () Bool)

(assert (=> d!2057155 m!7337970))

(declare-fun m!7337972 () Bool)

(assert (=> d!2057155 m!7337972))

(assert (=> b!6555093 d!2057155))

(declare-fun d!2057157 () Bool)

(assert (=> d!2057157 (= (get!22728 lt!2404049) (v!52506 lt!2404049))))

(assert (=> b!6555093 d!2057157))

(declare-fun b!6555833 () Bool)

(declare-fun e!3968946 () Option!16322)

(assert (=> b!6555833 (= e!3968946 None!16321)))

(declare-fun b!6555834 () Bool)

(declare-fun lt!2404189 () Unit!159059)

(declare-fun lt!2404188 () Unit!159059)

(assert (=> b!6555834 (= lt!2404189 lt!2404188)))

(assert (=> b!6555834 (= (++!14565 (++!14565 Nil!65469 (Cons!65469 (h!71917 s!2326) Nil!65469)) (t!379235 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2574 (List!65593 C!33132 List!65593 List!65593) Unit!159059)

(assert (=> b!6555834 (= lt!2404188 (lemmaMoveElementToOtherListKeepsConcatEq!2574 Nil!65469 (h!71917 s!2326) (t!379235 s!2326) s!2326))))

(assert (=> b!6555834 (= e!3968946 (findConcatSeparationZippers!196 lt!2404023 lt!2404018 (++!14565 Nil!65469 (Cons!65469 (h!71917 s!2326) Nil!65469)) (t!379235 s!2326) s!2326))))

(declare-fun b!6555835 () Bool)

(declare-fun res!2689877 () Bool)

(declare-fun e!3968947 () Bool)

(assert (=> b!6555835 (=> (not res!2689877) (not e!3968947))))

(declare-fun lt!2404187 () Option!16322)

(assert (=> b!6555835 (= res!2689877 (matchZipper!2443 lt!2404023 (_1!36713 (get!22728 lt!2404187))))))

(declare-fun d!2057159 () Bool)

(declare-fun e!3968948 () Bool)

(assert (=> d!2057159 e!3968948))

(declare-fun res!2689875 () Bool)

(assert (=> d!2057159 (=> res!2689875 e!3968948)))

(assert (=> d!2057159 (= res!2689875 e!3968947)))

(declare-fun res!2689876 () Bool)

(assert (=> d!2057159 (=> (not res!2689876) (not e!3968947))))

(assert (=> d!2057159 (= res!2689876 (isDefined!13025 lt!2404187))))

(declare-fun e!3968949 () Option!16322)

(assert (=> d!2057159 (= lt!2404187 e!3968949)))

(declare-fun c!1204446 () Bool)

(declare-fun e!3968950 () Bool)

(assert (=> d!2057159 (= c!1204446 e!3968950)))

(declare-fun res!2689879 () Bool)

(assert (=> d!2057159 (=> (not res!2689879) (not e!3968950))))

(assert (=> d!2057159 (= res!2689879 (matchZipper!2443 lt!2404023 Nil!65469))))

(assert (=> d!2057159 (= (++!14565 Nil!65469 s!2326) s!2326)))

(assert (=> d!2057159 (= (findConcatSeparationZippers!196 lt!2404023 lt!2404018 Nil!65469 s!2326 s!2326) lt!2404187)))

(declare-fun b!6555836 () Bool)

(assert (=> b!6555836 (= e!3968947 (= (++!14565 (_1!36713 (get!22728 lt!2404187)) (_2!36713 (get!22728 lt!2404187))) s!2326))))

(declare-fun b!6555837 () Bool)

(declare-fun res!2689878 () Bool)

(assert (=> b!6555837 (=> (not res!2689878) (not e!3968947))))

(assert (=> b!6555837 (= res!2689878 (matchZipper!2443 lt!2404018 (_2!36713 (get!22728 lt!2404187))))))

(declare-fun b!6555838 () Bool)

(assert (=> b!6555838 (= e!3968949 e!3968946)))

(declare-fun c!1204447 () Bool)

(assert (=> b!6555838 (= c!1204447 ((_ is Nil!65469) s!2326))))

(declare-fun b!6555839 () Bool)

(assert (=> b!6555839 (= e!3968949 (Some!16321 (tuple2!66821 Nil!65469 s!2326)))))

(declare-fun b!6555840 () Bool)

(assert (=> b!6555840 (= e!3968948 (not (isDefined!13025 lt!2404187)))))

(declare-fun b!6555841 () Bool)

(assert (=> b!6555841 (= e!3968950 (matchZipper!2443 lt!2404018 s!2326))))

(assert (= (and d!2057159 res!2689879) b!6555841))

(assert (= (and d!2057159 c!1204446) b!6555839))

(assert (= (and d!2057159 (not c!1204446)) b!6555838))

(assert (= (and b!6555838 c!1204447) b!6555833))

(assert (= (and b!6555838 (not c!1204447)) b!6555834))

(assert (= (and d!2057159 res!2689876) b!6555835))

(assert (= (and b!6555835 res!2689877) b!6555837))

(assert (= (and b!6555837 res!2689878) b!6555836))

(assert (= (and d!2057159 (not res!2689875)) b!6555840))

(declare-fun m!7338024 () Bool)

(assert (=> b!6555840 m!7338024))

(declare-fun m!7338026 () Bool)

(assert (=> b!6555841 m!7338026))

(declare-fun m!7338028 () Bool)

(assert (=> b!6555836 m!7338028))

(declare-fun m!7338030 () Bool)

(assert (=> b!6555836 m!7338030))

(assert (=> b!6555837 m!7338028))

(declare-fun m!7338032 () Bool)

(assert (=> b!6555837 m!7338032))

(assert (=> b!6555835 m!7338028))

(declare-fun m!7338034 () Bool)

(assert (=> b!6555835 m!7338034))

(assert (=> d!2057159 m!7338024))

(declare-fun m!7338036 () Bool)

(assert (=> d!2057159 m!7338036))

(declare-fun m!7338038 () Bool)

(assert (=> d!2057159 m!7338038))

(declare-fun m!7338040 () Bool)

(assert (=> b!6555834 m!7338040))

(assert (=> b!6555834 m!7338040))

(declare-fun m!7338042 () Bool)

(assert (=> b!6555834 m!7338042))

(declare-fun m!7338044 () Bool)

(assert (=> b!6555834 m!7338044))

(assert (=> b!6555834 m!7338040))

(declare-fun m!7338046 () Bool)

(assert (=> b!6555834 m!7338046))

(assert (=> b!6555093 d!2057159))

(declare-fun d!2057169 () Bool)

(declare-fun c!1204450 () Bool)

(declare-fun e!3968954 () Bool)

(assert (=> d!2057169 (= c!1204450 e!3968954)))

(declare-fun res!2689880 () Bool)

(assert (=> d!2057169 (=> (not res!2689880) (not e!3968954))))

(assert (=> d!2057169 (= res!2689880 ((_ is Cons!65468) (exprs!6315 lt!2404006)))))

(declare-fun e!3968955 () (InoxSet Context!11630))

(assert (=> d!2057169 (= (derivationStepZipperUp!1605 lt!2404006 (h!71917 s!2326)) e!3968955)))

(declare-fun b!6555846 () Bool)

(declare-fun e!3968953 () (InoxSet Context!11630))

(assert (=> b!6555846 (= e!3968955 e!3968953)))

(declare-fun c!1204451 () Bool)

(assert (=> b!6555846 (= c!1204451 ((_ is Cons!65468) (exprs!6315 lt!2404006)))))

(declare-fun b!6555847 () Bool)

(declare-fun call!570214 () (InoxSet Context!11630))

(assert (=> b!6555847 (= e!3968955 ((_ map or) call!570214 (derivationStepZipperUp!1605 (Context!11631 (t!379234 (exprs!6315 lt!2404006))) (h!71917 s!2326))))))

(declare-fun b!6555848 () Bool)

(assert (=> b!6555848 (= e!3968954 (nullable!6424 (h!71916 (exprs!6315 lt!2404006))))))

(declare-fun b!6555849 () Bool)

(assert (=> b!6555849 (= e!3968953 call!570214)))

(declare-fun bm!570209 () Bool)

(assert (=> bm!570209 (= call!570214 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 lt!2404006)) (Context!11631 (t!379234 (exprs!6315 lt!2404006))) (h!71917 s!2326)))))

(declare-fun b!6555850 () Bool)

(assert (=> b!6555850 (= e!3968953 ((as const (Array Context!11630 Bool)) false))))

(assert (= (and d!2057169 res!2689880) b!6555848))

(assert (= (and d!2057169 c!1204450) b!6555847))

(assert (= (and d!2057169 (not c!1204450)) b!6555846))

(assert (= (and b!6555846 c!1204451) b!6555849))

(assert (= (and b!6555846 (not c!1204451)) b!6555850))

(assert (= (or b!6555847 b!6555849) bm!570209))

(declare-fun m!7338048 () Bool)

(assert (=> b!6555847 m!7338048))

(declare-fun m!7338050 () Bool)

(assert (=> b!6555848 m!7338050))

(declare-fun m!7338052 () Bool)

(assert (=> bm!570209 m!7338052))

(assert (=> b!6555052 d!2057169))

(declare-fun d!2057171 () Bool)

(assert (=> d!2057171 (= (flatMap!1936 lt!2404018 lambda!364327) (choose!48834 lt!2404018 lambda!364327))))

(declare-fun bs!1673237 () Bool)

(assert (= bs!1673237 d!2057171))

(declare-fun m!7338054 () Bool)

(assert (=> bs!1673237 m!7338054))

(assert (=> b!6555052 d!2057171))

(declare-fun d!2057173 () Bool)

(declare-fun c!1204452 () Bool)

(declare-fun e!3968957 () Bool)

(assert (=> d!2057173 (= c!1204452 e!3968957)))

(declare-fun res!2689881 () Bool)

(assert (=> d!2057173 (=> (not res!2689881) (not e!3968957))))

(assert (=> d!2057173 (= res!2689881 ((_ is Cons!65468) (exprs!6315 lt!2404013)))))

(declare-fun e!3968958 () (InoxSet Context!11630))

(assert (=> d!2057173 (= (derivationStepZipperUp!1605 lt!2404013 (h!71917 s!2326)) e!3968958)))

(declare-fun b!6555851 () Bool)

(declare-fun e!3968956 () (InoxSet Context!11630))

(assert (=> b!6555851 (= e!3968958 e!3968956)))

(declare-fun c!1204453 () Bool)

(assert (=> b!6555851 (= c!1204453 ((_ is Cons!65468) (exprs!6315 lt!2404013)))))

(declare-fun call!570215 () (InoxSet Context!11630))

(declare-fun b!6555852 () Bool)

(assert (=> b!6555852 (= e!3968958 ((_ map or) call!570215 (derivationStepZipperUp!1605 (Context!11631 (t!379234 (exprs!6315 lt!2404013))) (h!71917 s!2326))))))

(declare-fun b!6555853 () Bool)

(assert (=> b!6555853 (= e!3968957 (nullable!6424 (h!71916 (exprs!6315 lt!2404013))))))

(declare-fun b!6555854 () Bool)

(assert (=> b!6555854 (= e!3968956 call!570215)))

(declare-fun bm!570210 () Bool)

(assert (=> bm!570210 (= call!570215 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 lt!2404013)) (Context!11631 (t!379234 (exprs!6315 lt!2404013))) (h!71917 s!2326)))))

(declare-fun b!6555855 () Bool)

(assert (=> b!6555855 (= e!3968956 ((as const (Array Context!11630 Bool)) false))))

(assert (= (and d!2057173 res!2689881) b!6555853))

(assert (= (and d!2057173 c!1204452) b!6555852))

(assert (= (and d!2057173 (not c!1204452)) b!6555851))

(assert (= (and b!6555851 c!1204453) b!6555854))

(assert (= (and b!6555851 (not c!1204453)) b!6555855))

(assert (= (or b!6555852 b!6555854) bm!570210))

(declare-fun m!7338056 () Bool)

(assert (=> b!6555852 m!7338056))

(declare-fun m!7338058 () Bool)

(assert (=> b!6555853 m!7338058))

(declare-fun m!7338060 () Bool)

(assert (=> bm!570210 m!7338060))

(assert (=> b!6555052 d!2057173))

(declare-fun d!2057175 () Bool)

(declare-fun lt!2404193 () Regex!16431)

(assert (=> d!2057175 (validRegex!8167 lt!2404193)))

(assert (=> d!2057175 (= lt!2404193 (generalisedUnion!2275 (unfocusZipperList!1852 lt!2404050)))))

(assert (=> d!2057175 (= (unfocusZipper!2173 lt!2404050) lt!2404193)))

(declare-fun bs!1673242 () Bool)

(assert (= bs!1673242 d!2057175))

(declare-fun m!7338062 () Bool)

(assert (=> bs!1673242 m!7338062))

(declare-fun m!7338064 () Bool)

(assert (=> bs!1673242 m!7338064))

(assert (=> bs!1673242 m!7338064))

(declare-fun m!7338066 () Bool)

(assert (=> bs!1673242 m!7338066))

(assert (=> b!6555052 d!2057175))

(declare-fun d!2057177 () Bool)

(assert (=> d!2057177 (= (flatMap!1936 lt!2404018 lambda!364327) (dynLambda!26032 lambda!364327 lt!2404006))))

(declare-fun lt!2404194 () Unit!159059)

(assert (=> d!2057177 (= lt!2404194 (choose!48835 lt!2404018 lt!2404006 lambda!364327))))

(assert (=> d!2057177 (= lt!2404018 (store ((as const (Array Context!11630 Bool)) false) lt!2404006 true))))

(assert (=> d!2057177 (= (lemmaFlatMapOnSingletonSet!1462 lt!2404018 lt!2404006 lambda!364327) lt!2404194)))

(declare-fun b_lambda!248051 () Bool)

(assert (=> (not b_lambda!248051) (not d!2057177)))

(declare-fun bs!1673245 () Bool)

(assert (= bs!1673245 d!2057177))

(assert (=> bs!1673245 m!7337262))

(declare-fun m!7338068 () Bool)

(assert (=> bs!1673245 m!7338068))

(declare-fun m!7338072 () Bool)

(assert (=> bs!1673245 m!7338072))

(assert (=> bs!1673245 m!7337260))

(assert (=> b!6555052 d!2057177))

(declare-fun d!2057179 () Bool)

(assert (=> d!2057179 (= (flatMap!1936 lt!2404023 lambda!364327) (dynLambda!26032 lambda!364327 lt!2404013))))

(declare-fun lt!2404195 () Unit!159059)

(assert (=> d!2057179 (= lt!2404195 (choose!48835 lt!2404023 lt!2404013 lambda!364327))))

(assert (=> d!2057179 (= lt!2404023 (store ((as const (Array Context!11630 Bool)) false) lt!2404013 true))))

(assert (=> d!2057179 (= (lemmaFlatMapOnSingletonSet!1462 lt!2404023 lt!2404013 lambda!364327) lt!2404195)))

(declare-fun b_lambda!248053 () Bool)

(assert (=> (not b_lambda!248053) (not d!2057179)))

(declare-fun bs!1673246 () Bool)

(assert (= bs!1673246 d!2057179))

(assert (=> bs!1673246 m!7337248))

(declare-fun m!7338076 () Bool)

(assert (=> bs!1673246 m!7338076))

(declare-fun m!7338078 () Bool)

(assert (=> bs!1673246 m!7338078))

(assert (=> bs!1673246 m!7337252))

(assert (=> b!6555052 d!2057179))

(declare-fun d!2057183 () Bool)

(assert (=> d!2057183 (= (flatMap!1936 lt!2404023 lambda!364327) (choose!48834 lt!2404023 lambda!364327))))

(declare-fun bs!1673247 () Bool)

(assert (= bs!1673247 d!2057183))

(declare-fun m!7338080 () Bool)

(assert (=> bs!1673247 m!7338080))

(assert (=> b!6555052 d!2057183))

(declare-fun d!2057185 () Bool)

(declare-fun lt!2404196 () Regex!16431)

(assert (=> d!2057185 (validRegex!8167 lt!2404196)))

(assert (=> d!2057185 (= lt!2404196 (generalisedUnion!2275 (unfocusZipperList!1852 zl!343)))))

(assert (=> d!2057185 (= (unfocusZipper!2173 zl!343) lt!2404196)))

(declare-fun bs!1673248 () Bool)

(assert (= bs!1673248 d!2057185))

(declare-fun m!7338082 () Bool)

(assert (=> bs!1673248 m!7338082))

(assert (=> bs!1673248 m!7337336))

(assert (=> bs!1673248 m!7337336))

(assert (=> bs!1673248 m!7337338))

(assert (=> b!6555086 d!2057185))

(declare-fun d!2057187 () Bool)

(declare-fun e!3968962 () Bool)

(assert (=> d!2057187 e!3968962))

(declare-fun res!2689884 () Bool)

(assert (=> d!2057187 (=> (not res!2689884) (not e!3968962))))

(declare-fun lt!2404199 () List!65594)

(declare-fun noDuplicate!2235 (List!65594) Bool)

(assert (=> d!2057187 (= res!2689884 (noDuplicate!2235 lt!2404199))))

(declare-fun choose!48839 ((InoxSet Context!11630)) List!65594)

(assert (=> d!2057187 (= lt!2404199 (choose!48839 z!1189))))

(assert (=> d!2057187 (= (toList!10215 z!1189) lt!2404199)))

(declare-fun b!6555860 () Bool)

(declare-fun content!12573 (List!65594) (InoxSet Context!11630))

(assert (=> b!6555860 (= e!3968962 (= (content!12573 lt!2404199) z!1189))))

(assert (= (and d!2057187 res!2689884) b!6555860))

(declare-fun m!7338086 () Bool)

(assert (=> d!2057187 m!7338086))

(declare-fun m!7338088 () Bool)

(assert (=> d!2057187 m!7338088))

(declare-fun m!7338090 () Bool)

(assert (=> b!6555860 m!7338090))

(assert (=> b!6555084 d!2057187))

(declare-fun bs!1673250 () Bool)

(declare-fun d!2057191 () Bool)

(assert (= bs!1673250 (and d!2057191 b!6555056)))

(declare-fun lambda!364393 () Int)

(assert (=> bs!1673250 (= lambda!364393 lambda!364329)))

(declare-fun bs!1673251 () Bool)

(assert (= bs!1673251 (and d!2057191 d!2057013)))

(assert (=> bs!1673251 (= lambda!364393 lambda!364355)))

(assert (=> d!2057191 (= (inv!84324 (h!71918 zl!343)) (forall!15603 (exprs!6315 (h!71918 zl!343)) lambda!364393))))

(declare-fun bs!1673252 () Bool)

(assert (= bs!1673252 d!2057191))

(declare-fun m!7338092 () Bool)

(assert (=> bs!1673252 m!7338092))

(assert (=> b!6555085 d!2057191))

(declare-fun d!2057193 () Bool)

(declare-fun c!1204456 () Bool)

(assert (=> d!2057193 (= c!1204456 (isEmpty!37705 s!2326))))

(declare-fun e!3968963 () Bool)

(assert (=> d!2057193 (= (matchZipper!2443 z!1189 s!2326) e!3968963)))

(declare-fun b!6555861 () Bool)

(assert (=> b!6555861 (= e!3968963 (nullableZipper!2175 z!1189))))

(declare-fun b!6555862 () Bool)

(assert (=> b!6555862 (= e!3968963 (matchZipper!2443 (derivationStepZipper!2397 z!1189 (head!13312 s!2326)) (tail!12397 s!2326)))))

(assert (= (and d!2057193 c!1204456) b!6555861))

(assert (= (and d!2057193 (not c!1204456)) b!6555862))

(assert (=> d!2057193 m!7337822))

(declare-fun m!7338094 () Bool)

(assert (=> b!6555861 m!7338094))

(assert (=> b!6555862 m!7337868))

(assert (=> b!6555862 m!7337868))

(declare-fun m!7338096 () Bool)

(assert (=> b!6555862 m!7338096))

(assert (=> b!6555862 m!7337864))

(assert (=> b!6555862 m!7338096))

(assert (=> b!6555862 m!7337864))

(declare-fun m!7338098 () Bool)

(assert (=> b!6555862 m!7338098))

(assert (=> b!6555089 d!2057193))

(declare-fun d!2057195 () Bool)

(declare-fun c!1204457 () Bool)

(assert (=> d!2057195 (= c!1204457 (isEmpty!37705 (t!379235 s!2326)))))

(declare-fun e!3968964 () Bool)

(assert (=> d!2057195 (= (matchZipper!2443 lt!2404016 (t!379235 s!2326)) e!3968964)))

(declare-fun b!6555865 () Bool)

(assert (=> b!6555865 (= e!3968964 (nullableZipper!2175 lt!2404016))))

(declare-fun b!6555866 () Bool)

(assert (=> b!6555866 (= e!3968964 (matchZipper!2443 (derivationStepZipper!2397 lt!2404016 (head!13312 (t!379235 s!2326))) (tail!12397 (t!379235 s!2326))))))

(assert (= (and d!2057195 c!1204457) b!6555865))

(assert (= (and d!2057195 (not c!1204457)) b!6555866))

(assert (=> d!2057195 m!7337938))

(declare-fun m!7338100 () Bool)

(assert (=> b!6555865 m!7338100))

(assert (=> b!6555866 m!7337942))

(assert (=> b!6555866 m!7337942))

(declare-fun m!7338102 () Bool)

(assert (=> b!6555866 m!7338102))

(assert (=> b!6555866 m!7337946))

(assert (=> b!6555866 m!7338102))

(assert (=> b!6555866 m!7337946))

(declare-fun m!7338104 () Bool)

(assert (=> b!6555866 m!7338104))

(assert (=> b!6555087 d!2057195))

(declare-fun d!2057197 () Bool)

(declare-fun lt!2404202 () Regex!16431)

(assert (=> d!2057197 (validRegex!8167 lt!2404202)))

(assert (=> d!2057197 (= lt!2404202 (generalisedUnion!2275 (unfocusZipperList!1852 (Cons!65470 lt!2404024 Nil!65470))))))

(assert (=> d!2057197 (= (unfocusZipper!2173 (Cons!65470 lt!2404024 Nil!65470)) lt!2404202)))

(declare-fun bs!1673255 () Bool)

(assert (= bs!1673255 d!2057197))

(declare-fun m!7338108 () Bool)

(assert (=> bs!1673255 m!7338108))

(declare-fun m!7338110 () Bool)

(assert (=> bs!1673255 m!7338110))

(assert (=> bs!1673255 m!7338110))

(declare-fun m!7338112 () Bool)

(assert (=> bs!1673255 m!7338112))

(assert (=> b!6555080 d!2057197))

(declare-fun d!2057201 () Bool)

(declare-fun c!1204458 () Bool)

(assert (=> d!2057201 (= c!1204458 (isEmpty!37705 (t!379235 s!2326)))))

(declare-fun e!3968965 () Bool)

(assert (=> d!2057201 (= (matchZipper!2443 lt!2404034 (t!379235 s!2326)) e!3968965)))

(declare-fun b!6555867 () Bool)

(assert (=> b!6555867 (= e!3968965 (nullableZipper!2175 lt!2404034))))

(declare-fun b!6555868 () Bool)

(assert (=> b!6555868 (= e!3968965 (matchZipper!2443 (derivationStepZipper!2397 lt!2404034 (head!13312 (t!379235 s!2326))) (tail!12397 (t!379235 s!2326))))))

(assert (= (and d!2057201 c!1204458) b!6555867))

(assert (= (and d!2057201 (not c!1204458)) b!6555868))

(assert (=> d!2057201 m!7337938))

(declare-fun m!7338114 () Bool)

(assert (=> b!6555867 m!7338114))

(assert (=> b!6555868 m!7337942))

(assert (=> b!6555868 m!7337942))

(declare-fun m!7338116 () Bool)

(assert (=> b!6555868 m!7338116))

(assert (=> b!6555868 m!7337946))

(assert (=> b!6555868 m!7338116))

(assert (=> b!6555868 m!7337946))

(declare-fun m!7338118 () Bool)

(assert (=> b!6555868 m!7338118))

(assert (=> b!6555079 d!2057201))

(declare-fun d!2057203 () Bool)

(declare-fun c!1204459 () Bool)

(assert (=> d!2057203 (= c!1204459 (isEmpty!37705 s!2326))))

(declare-fun e!3968966 () Bool)

(assert (=> d!2057203 (= (matchZipper!2443 lt!2404010 s!2326) e!3968966)))

(declare-fun b!6555869 () Bool)

(assert (=> b!6555869 (= e!3968966 (nullableZipper!2175 lt!2404010))))

(declare-fun b!6555870 () Bool)

(assert (=> b!6555870 (= e!3968966 (matchZipper!2443 (derivationStepZipper!2397 lt!2404010 (head!13312 s!2326)) (tail!12397 s!2326)))))

(assert (= (and d!2057203 c!1204459) b!6555869))

(assert (= (and d!2057203 (not c!1204459)) b!6555870))

(assert (=> d!2057203 m!7337822))

(declare-fun m!7338120 () Bool)

(assert (=> b!6555869 m!7338120))

(assert (=> b!6555870 m!7337868))

(assert (=> b!6555870 m!7337868))

(declare-fun m!7338122 () Bool)

(assert (=> b!6555870 m!7338122))

(assert (=> b!6555870 m!7337864))

(assert (=> b!6555870 m!7338122))

(assert (=> b!6555870 m!7337864))

(declare-fun m!7338124 () Bool)

(assert (=> b!6555870 m!7338124))

(assert (=> b!6555079 d!2057203))

(declare-fun bs!1673256 () Bool)

(declare-fun d!2057205 () Bool)

(assert (= bs!1673256 (and d!2057205 b!6555056)))

(declare-fun lambda!364395 () Int)

(assert (=> bs!1673256 (= lambda!364395 lambda!364329)))

(declare-fun bs!1673257 () Bool)

(assert (= bs!1673257 (and d!2057205 d!2057013)))

(assert (=> bs!1673257 (= lambda!364395 lambda!364355)))

(declare-fun bs!1673258 () Bool)

(assert (= bs!1673258 (and d!2057205 d!2057191)))

(assert (=> bs!1673258 (= lambda!364395 lambda!364393)))

(assert (=> d!2057205 (= (inv!84324 setElem!44742) (forall!15603 (exprs!6315 setElem!44742) lambda!364395))))

(declare-fun bs!1673259 () Bool)

(assert (= bs!1673259 d!2057205))

(declare-fun m!7338126 () Bool)

(assert (=> bs!1673259 m!7338126))

(assert (=> setNonEmpty!44742 d!2057205))

(declare-fun bs!1673260 () Bool)

(declare-fun b!6555880 () Bool)

(assert (= bs!1673260 (and b!6555880 b!6555075)))

(declare-fun lambda!364396 () Int)

(assert (=> bs!1673260 (not (= lambda!364396 lambda!364325))))

(declare-fun bs!1673261 () Bool)

(assert (= bs!1673261 (and b!6555880 b!6555605)))

(assert (=> bs!1673261 (not (= lambda!364396 lambda!364371))))

(declare-fun bs!1673262 () Bool)

(assert (= bs!1673262 (and b!6555880 b!6555074)))

(assert (=> bs!1673262 (not (= lambda!364396 lambda!364331))))

(assert (=> bs!1673260 (not (= lambda!364396 lambda!364326))))

(declare-fun bs!1673264 () Bool)

(assert (= bs!1673264 (and b!6555880 b!6555563)))

(assert (=> bs!1673264 (not (= lambda!364396 lambda!364366))))

(declare-fun bs!1673265 () Bool)

(assert (= bs!1673265 (and b!6555880 b!6555572)))

(assert (=> bs!1673265 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (reg!16760 r!7292) (reg!16760 lt!2404040)) (= r!7292 lt!2404040)) (= lambda!364396 lambda!364365))))

(assert (=> bs!1673262 (not (= lambda!364396 lambda!364330))))

(declare-fun bs!1673266 () Bool)

(assert (= bs!1673266 (and b!6555880 b!6555614)))

(assert (=> bs!1673266 (= (and (= (reg!16760 r!7292) (reg!16760 lt!2404041)) (= r!7292 lt!2404041)) (= lambda!364396 lambda!364370))))

(assert (=> b!6555880 true))

(assert (=> b!6555880 true))

(declare-fun bs!1673268 () Bool)

(declare-fun b!6555871 () Bool)

(assert (= bs!1673268 (and b!6555871 b!6555075)))

(declare-fun lambda!364398 () Int)

(assert (=> bs!1673268 (not (= lambda!364398 lambda!364325))))

(declare-fun bs!1673270 () Bool)

(assert (= bs!1673270 (and b!6555871 b!6555880)))

(assert (=> bs!1673270 (not (= lambda!364398 lambda!364396))))

(declare-fun bs!1673272 () Bool)

(assert (= bs!1673272 (and b!6555871 b!6555605)))

(assert (=> bs!1673272 (= (and (= (regOne!33374 r!7292) (regOne!33374 lt!2404041)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404041))) (= lambda!364398 lambda!364371))))

(declare-fun bs!1673274 () Bool)

(assert (= bs!1673274 (and b!6555871 b!6555074)))

(assert (=> bs!1673274 (= (= (regOne!33374 r!7292) lt!2404040) (= lambda!364398 lambda!364331))))

(assert (=> bs!1673268 (= lambda!364398 lambda!364326)))

(declare-fun bs!1673277 () Bool)

(assert (= bs!1673277 (and b!6555871 b!6555563)))

(assert (=> bs!1673277 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (regOne!33374 r!7292) (regOne!33374 lt!2404040)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404040))) (= lambda!364398 lambda!364366))))

(declare-fun bs!1673279 () Bool)

(assert (= bs!1673279 (and b!6555871 b!6555572)))

(assert (=> bs!1673279 (not (= lambda!364398 lambda!364365))))

(assert (=> bs!1673274 (not (= lambda!364398 lambda!364330))))

(declare-fun bs!1673281 () Bool)

(assert (= bs!1673281 (and b!6555871 b!6555614)))

(assert (=> bs!1673281 (not (= lambda!364398 lambda!364370))))

(assert (=> b!6555871 true))

(assert (=> b!6555871 true))

(declare-fun e!3968970 () Bool)

(declare-fun call!570216 () Bool)

(assert (=> b!6555871 (= e!3968970 call!570216)))

(declare-fun d!2057207 () Bool)

(declare-fun c!1204462 () Bool)

(assert (=> d!2057207 (= c!1204462 ((_ is EmptyExpr!16431) r!7292))))

(declare-fun e!3968972 () Bool)

(assert (=> d!2057207 (= (matchRSpec!3532 r!7292 s!2326) e!3968972)))

(declare-fun bm!570211 () Bool)

(declare-fun call!570217 () Bool)

(assert (=> bm!570211 (= call!570217 (isEmpty!37705 s!2326))))

(declare-fun b!6555872 () Bool)

(declare-fun e!3968967 () Bool)

(assert (=> b!6555872 (= e!3968967 (matchRSpec!3532 (regTwo!33375 r!7292) s!2326))))

(declare-fun b!6555873 () Bool)

(declare-fun c!1204460 () Bool)

(assert (=> b!6555873 (= c!1204460 ((_ is ElementMatch!16431) r!7292))))

(declare-fun e!3968971 () Bool)

(declare-fun e!3968969 () Bool)

(assert (=> b!6555873 (= e!3968971 e!3968969)))

(declare-fun b!6555874 () Bool)

(assert (=> b!6555874 (= e!3968969 (= s!2326 (Cons!65469 (c!1204232 r!7292) Nil!65469)))))

(declare-fun b!6555875 () Bool)

(assert (=> b!6555875 (= e!3968972 call!570217)))

(declare-fun c!1204461 () Bool)

(declare-fun bm!570212 () Bool)

(assert (=> bm!570212 (= call!570216 (Exists!3501 (ite c!1204461 lambda!364396 lambda!364398)))))

(declare-fun b!6555876 () Bool)

(declare-fun res!2689887 () Bool)

(declare-fun e!3968973 () Bool)

(assert (=> b!6555876 (=> res!2689887 e!3968973)))

(assert (=> b!6555876 (= res!2689887 call!570217)))

(assert (=> b!6555876 (= e!3968970 e!3968973)))

(declare-fun b!6555877 () Bool)

(assert (=> b!6555877 (= e!3968972 e!3968971)))

(declare-fun res!2689885 () Bool)

(assert (=> b!6555877 (= res!2689885 (not ((_ is EmptyLang!16431) r!7292)))))

(assert (=> b!6555877 (=> (not res!2689885) (not e!3968971))))

(declare-fun b!6555878 () Bool)

(declare-fun e!3968968 () Bool)

(assert (=> b!6555878 (= e!3968968 e!3968967)))

(declare-fun res!2689886 () Bool)

(assert (=> b!6555878 (= res!2689886 (matchRSpec!3532 (regOne!33375 r!7292) s!2326))))

(assert (=> b!6555878 (=> res!2689886 e!3968967)))

(declare-fun b!6555879 () Bool)

(declare-fun c!1204463 () Bool)

(assert (=> b!6555879 (= c!1204463 ((_ is Union!16431) r!7292))))

(assert (=> b!6555879 (= e!3968969 e!3968968)))

(assert (=> b!6555880 (= e!3968973 call!570216)))

(declare-fun b!6555881 () Bool)

(assert (=> b!6555881 (= e!3968968 e!3968970)))

(assert (=> b!6555881 (= c!1204461 ((_ is Star!16431) r!7292))))

(assert (= (and d!2057207 c!1204462) b!6555875))

(assert (= (and d!2057207 (not c!1204462)) b!6555877))

(assert (= (and b!6555877 res!2689885) b!6555873))

(assert (= (and b!6555873 c!1204460) b!6555874))

(assert (= (and b!6555873 (not c!1204460)) b!6555879))

(assert (= (and b!6555879 c!1204463) b!6555878))

(assert (= (and b!6555879 (not c!1204463)) b!6555881))

(assert (= (and b!6555878 (not res!2689886)) b!6555872))

(assert (= (and b!6555881 c!1204461) b!6555876))

(assert (= (and b!6555881 (not c!1204461)) b!6555871))

(assert (= (and b!6555876 (not res!2689887)) b!6555880))

(assert (= (or b!6555880 b!6555871) bm!570212))

(assert (= (or b!6555875 b!6555876) bm!570211))

(assert (=> bm!570211 m!7337822))

(declare-fun m!7338134 () Bool)

(assert (=> b!6555872 m!7338134))

(declare-fun m!7338136 () Bool)

(assert (=> bm!570212 m!7338136))

(declare-fun m!7338138 () Bool)

(assert (=> b!6555878 m!7338138))

(assert (=> b!6555083 d!2057207))

(declare-fun b!6555893 () Bool)

(declare-fun e!3968983 () Bool)

(assert (=> b!6555893 (= e!3968983 (not (= (head!13312 s!2326) (c!1204232 r!7292))))))

(declare-fun b!6555895 () Bool)

(declare-fun e!3968985 () Bool)

(assert (=> b!6555895 (= e!3968985 (matchR!8614 (derivativeStep!5115 r!7292 (head!13312 s!2326)) (tail!12397 s!2326)))))

(declare-fun b!6555896 () Bool)

(declare-fun res!2689896 () Bool)

(assert (=> b!6555896 (=> res!2689896 e!3968983)))

(assert (=> b!6555896 (= res!2689896 (not (isEmpty!37705 (tail!12397 s!2326))))))

(declare-fun b!6555897 () Bool)

(declare-fun res!2689893 () Bool)

(declare-fun e!3968986 () Bool)

(assert (=> b!6555897 (=> res!2689893 e!3968986)))

(assert (=> b!6555897 (= res!2689893 (not ((_ is ElementMatch!16431) r!7292)))))

(declare-fun e!3968981 () Bool)

(assert (=> b!6555897 (= e!3968981 e!3968986)))

(declare-fun b!6555898 () Bool)

(declare-fun res!2689897 () Bool)

(assert (=> b!6555898 (=> res!2689897 e!3968986)))

(declare-fun e!3968982 () Bool)

(assert (=> b!6555898 (= res!2689897 e!3968982)))

(declare-fun res!2689892 () Bool)

(assert (=> b!6555898 (=> (not res!2689892) (not e!3968982))))

(declare-fun lt!2404206 () Bool)

(assert (=> b!6555898 (= res!2689892 lt!2404206)))

(declare-fun b!6555899 () Bool)

(assert (=> b!6555899 (= e!3968985 (nullable!6424 r!7292))))

(declare-fun b!6555900 () Bool)

(declare-fun e!3968984 () Bool)

(assert (=> b!6555900 (= e!3968986 e!3968984)))

(declare-fun res!2689891 () Bool)

(assert (=> b!6555900 (=> (not res!2689891) (not e!3968984))))

(assert (=> b!6555900 (= res!2689891 (not lt!2404206))))

(declare-fun b!6555901 () Bool)

(declare-fun e!3968987 () Bool)

(declare-fun call!570220 () Bool)

(assert (=> b!6555901 (= e!3968987 (= lt!2404206 call!570220))))

(declare-fun b!6555902 () Bool)

(assert (=> b!6555902 (= e!3968981 (not lt!2404206))))

(declare-fun b!6555903 () Bool)

(assert (=> b!6555903 (= e!3968987 e!3968981)))

(declare-fun c!1204470 () Bool)

(assert (=> b!6555903 (= c!1204470 ((_ is EmptyLang!16431) r!7292))))

(declare-fun d!2057211 () Bool)

(assert (=> d!2057211 e!3968987))

(declare-fun c!1204469 () Bool)

(assert (=> d!2057211 (= c!1204469 ((_ is EmptyExpr!16431) r!7292))))

(assert (=> d!2057211 (= lt!2404206 e!3968985)))

(declare-fun c!1204468 () Bool)

(assert (=> d!2057211 (= c!1204468 (isEmpty!37705 s!2326))))

(assert (=> d!2057211 (validRegex!8167 r!7292)))

(assert (=> d!2057211 (= (matchR!8614 r!7292 s!2326) lt!2404206)))

(declare-fun b!6555894 () Bool)

(declare-fun res!2689898 () Bool)

(assert (=> b!6555894 (=> (not res!2689898) (not e!3968982))))

(assert (=> b!6555894 (= res!2689898 (isEmpty!37705 (tail!12397 s!2326)))))

(declare-fun b!6555904 () Bool)

(declare-fun res!2689894 () Bool)

(assert (=> b!6555904 (=> (not res!2689894) (not e!3968982))))

(assert (=> b!6555904 (= res!2689894 (not call!570220))))

(declare-fun b!6555905 () Bool)

(assert (=> b!6555905 (= e!3968984 e!3968983)))

(declare-fun res!2689895 () Bool)

(assert (=> b!6555905 (=> res!2689895 e!3968983)))

(assert (=> b!6555905 (= res!2689895 call!570220)))

(declare-fun bm!570215 () Bool)

(assert (=> bm!570215 (= call!570220 (isEmpty!37705 s!2326))))

(declare-fun b!6555906 () Bool)

(assert (=> b!6555906 (= e!3968982 (= (head!13312 s!2326) (c!1204232 r!7292)))))

(assert (= (and d!2057211 c!1204468) b!6555899))

(assert (= (and d!2057211 (not c!1204468)) b!6555895))

(assert (= (and d!2057211 c!1204469) b!6555901))

(assert (= (and d!2057211 (not c!1204469)) b!6555903))

(assert (= (and b!6555903 c!1204470) b!6555902))

(assert (= (and b!6555903 (not c!1204470)) b!6555897))

(assert (= (and b!6555897 (not res!2689893)) b!6555898))

(assert (= (and b!6555898 res!2689892) b!6555904))

(assert (= (and b!6555904 res!2689894) b!6555894))

(assert (= (and b!6555894 res!2689898) b!6555906))

(assert (= (and b!6555898 (not res!2689897)) b!6555900))

(assert (= (and b!6555900 res!2689891) b!6555905))

(assert (= (and b!6555905 (not res!2689895)) b!6555896))

(assert (= (and b!6555896 (not res!2689896)) b!6555893))

(assert (= (or b!6555901 b!6555904 b!6555905) bm!570215))

(assert (=> bm!570215 m!7337822))

(declare-fun m!7338140 () Bool)

(assert (=> b!6555899 m!7338140))

(assert (=> b!6555896 m!7337864))

(assert (=> b!6555896 m!7337864))

(assert (=> b!6555896 m!7337866))

(assert (=> b!6555893 m!7337868))

(assert (=> d!2057211 m!7337822))

(assert (=> d!2057211 m!7337272))

(assert (=> b!6555895 m!7337868))

(assert (=> b!6555895 m!7337868))

(declare-fun m!7338142 () Bool)

(assert (=> b!6555895 m!7338142))

(assert (=> b!6555895 m!7337864))

(assert (=> b!6555895 m!7338142))

(assert (=> b!6555895 m!7337864))

(declare-fun m!7338144 () Bool)

(assert (=> b!6555895 m!7338144))

(assert (=> b!6555906 m!7337868))

(assert (=> b!6555894 m!7337864))

(assert (=> b!6555894 m!7337864))

(assert (=> b!6555894 m!7337866))

(assert (=> b!6555083 d!2057211))

(declare-fun d!2057213 () Bool)

(assert (=> d!2057213 (= (matchR!8614 r!7292 s!2326) (matchRSpec!3532 r!7292 s!2326))))

(declare-fun lt!2404207 () Unit!159059)

(assert (=> d!2057213 (= lt!2404207 (choose!48832 r!7292 s!2326))))

(assert (=> d!2057213 (validRegex!8167 r!7292)))

(assert (=> d!2057213 (= (mainMatchTheorem!3532 r!7292 s!2326) lt!2404207)))

(declare-fun bs!1673291 () Bool)

(assert (= bs!1673291 d!2057213))

(assert (=> bs!1673291 m!7337214))

(assert (=> bs!1673291 m!7337212))

(declare-fun m!7338146 () Bool)

(assert (=> bs!1673291 m!7338146))

(assert (=> bs!1673291 m!7337272))

(assert (=> b!6555083 d!2057213))

(declare-fun d!2057215 () Bool)

(declare-fun c!1204471 () Bool)

(assert (=> d!2057215 (= c!1204471 (isEmpty!37705 (_2!36713 lt!2404014)))))

(declare-fun e!3968988 () Bool)

(assert (=> d!2057215 (= (matchZipper!2443 lt!2404018 (_2!36713 lt!2404014)) e!3968988)))

(declare-fun b!6555907 () Bool)

(assert (=> b!6555907 (= e!3968988 (nullableZipper!2175 lt!2404018))))

(declare-fun b!6555908 () Bool)

(assert (=> b!6555908 (= e!3968988 (matchZipper!2443 (derivationStepZipper!2397 lt!2404018 (head!13312 (_2!36713 lt!2404014))) (tail!12397 (_2!36713 lt!2404014))))))

(assert (= (and d!2057215 c!1204471) b!6555907))

(assert (= (and d!2057215 (not c!1204471)) b!6555908))

(declare-fun m!7338148 () Bool)

(assert (=> d!2057215 m!7338148))

(declare-fun m!7338150 () Bool)

(assert (=> b!6555907 m!7338150))

(declare-fun m!7338152 () Bool)

(assert (=> b!6555908 m!7338152))

(assert (=> b!6555908 m!7338152))

(declare-fun m!7338154 () Bool)

(assert (=> b!6555908 m!7338154))

(declare-fun m!7338156 () Bool)

(assert (=> b!6555908 m!7338156))

(assert (=> b!6555908 m!7338154))

(assert (=> b!6555908 m!7338156))

(declare-fun m!7338158 () Bool)

(assert (=> b!6555908 m!7338158))

(assert (=> b!6555063 d!2057215))

(declare-fun bs!1673301 () Bool)

(declare-fun d!2057217 () Bool)

(assert (= bs!1673301 (and d!2057217 b!6555056)))

(declare-fun lambda!364402 () Int)

(assert (=> bs!1673301 (= lambda!364402 lambda!364329)))

(declare-fun bs!1673302 () Bool)

(assert (= bs!1673302 (and d!2057217 d!2057013)))

(assert (=> bs!1673302 (= lambda!364402 lambda!364355)))

(declare-fun bs!1673303 () Bool)

(assert (= bs!1673303 (and d!2057217 d!2057191)))

(assert (=> bs!1673303 (= lambda!364402 lambda!364393)))

(declare-fun bs!1673304 () Bool)

(assert (= bs!1673304 (and d!2057217 d!2057205)))

(assert (=> bs!1673304 (= lambda!364402 lambda!364395)))

(declare-fun b!6555996 () Bool)

(declare-fun e!3969034 () Bool)

(declare-fun lt!2404212 () Regex!16431)

(declare-fun isUnion!1247 (Regex!16431) Bool)

(assert (=> b!6555996 (= e!3969034 (isUnion!1247 lt!2404212))))

(declare-fun b!6555997 () Bool)

(declare-fun e!3969035 () Regex!16431)

(assert (=> b!6555997 (= e!3969035 EmptyLang!16431)))

(declare-fun b!6555998 () Bool)

(assert (=> b!6555998 (= e!3969035 (Union!16431 (h!71916 (unfocusZipperList!1852 zl!343)) (generalisedUnion!2275 (t!379234 (unfocusZipperList!1852 zl!343)))))))

(declare-fun b!6555999 () Bool)

(declare-fun e!3969032 () Bool)

(assert (=> b!6555999 (= e!3969032 e!3969034)))

(declare-fun c!1204485 () Bool)

(assert (=> b!6555999 (= c!1204485 (isEmpty!37701 (tail!12398 (unfocusZipperList!1852 zl!343))))))

(declare-fun b!6556000 () Bool)

(declare-fun e!3969030 () Bool)

(assert (=> b!6556000 (= e!3969030 (isEmpty!37701 (t!379234 (unfocusZipperList!1852 zl!343))))))

(declare-fun b!6556001 () Bool)

(declare-fun e!3969033 () Bool)

(assert (=> b!6556001 (= e!3969033 e!3969032)))

(declare-fun c!1204486 () Bool)

(assert (=> b!6556001 (= c!1204486 (isEmpty!37701 (unfocusZipperList!1852 zl!343)))))

(declare-fun b!6556002 () Bool)

(declare-fun isEmptyLang!1817 (Regex!16431) Bool)

(assert (=> b!6556002 (= e!3969032 (isEmptyLang!1817 lt!2404212))))

(declare-fun b!6556003 () Bool)

(assert (=> b!6556003 (= e!3969034 (= lt!2404212 (head!13313 (unfocusZipperList!1852 zl!343))))))

(assert (=> d!2057217 e!3969033))

(declare-fun res!2689911 () Bool)

(assert (=> d!2057217 (=> (not res!2689911) (not e!3969033))))

(assert (=> d!2057217 (= res!2689911 (validRegex!8167 lt!2404212))))

(declare-fun e!3969031 () Regex!16431)

(assert (=> d!2057217 (= lt!2404212 e!3969031)))

(declare-fun c!1204483 () Bool)

(assert (=> d!2057217 (= c!1204483 e!3969030)))

(declare-fun res!2689912 () Bool)

(assert (=> d!2057217 (=> (not res!2689912) (not e!3969030))))

(assert (=> d!2057217 (= res!2689912 ((_ is Cons!65468) (unfocusZipperList!1852 zl!343)))))

(assert (=> d!2057217 (forall!15603 (unfocusZipperList!1852 zl!343) lambda!364402)))

(assert (=> d!2057217 (= (generalisedUnion!2275 (unfocusZipperList!1852 zl!343)) lt!2404212)))

(declare-fun b!6556004 () Bool)

(assert (=> b!6556004 (= e!3969031 (h!71916 (unfocusZipperList!1852 zl!343)))))

(declare-fun b!6556005 () Bool)

(assert (=> b!6556005 (= e!3969031 e!3969035)))

(declare-fun c!1204484 () Bool)

(assert (=> b!6556005 (= c!1204484 ((_ is Cons!65468) (unfocusZipperList!1852 zl!343)))))

(assert (= (and d!2057217 res!2689912) b!6556000))

(assert (= (and d!2057217 c!1204483) b!6556004))

(assert (= (and d!2057217 (not c!1204483)) b!6556005))

(assert (= (and b!6556005 c!1204484) b!6555998))

(assert (= (and b!6556005 (not c!1204484)) b!6555997))

(assert (= (and d!2057217 res!2689911) b!6556001))

(assert (= (and b!6556001 c!1204486) b!6556002))

(assert (= (and b!6556001 (not c!1204486)) b!6555999))

(assert (= (and b!6555999 c!1204485) b!6556003))

(assert (= (and b!6555999 (not c!1204485)) b!6555996))

(declare-fun m!7338178 () Bool)

(assert (=> b!6556002 m!7338178))

(declare-fun m!7338180 () Bool)

(assert (=> b!6555996 m!7338180))

(assert (=> b!6556001 m!7337336))

(declare-fun m!7338182 () Bool)

(assert (=> b!6556001 m!7338182))

(assert (=> b!6555999 m!7337336))

(declare-fun m!7338184 () Bool)

(assert (=> b!6555999 m!7338184))

(assert (=> b!6555999 m!7338184))

(declare-fun m!7338186 () Bool)

(assert (=> b!6555999 m!7338186))

(declare-fun m!7338188 () Bool)

(assert (=> d!2057217 m!7338188))

(assert (=> d!2057217 m!7337336))

(declare-fun m!7338190 () Bool)

(assert (=> d!2057217 m!7338190))

(declare-fun m!7338192 () Bool)

(assert (=> b!6556000 m!7338192))

(assert (=> b!6556003 m!7337336))

(declare-fun m!7338196 () Bool)

(assert (=> b!6556003 m!7338196))

(declare-fun m!7338200 () Bool)

(assert (=> b!6555998 m!7338200))

(assert (=> b!6555061 d!2057217))

(declare-fun bs!1673310 () Bool)

(declare-fun d!2057229 () Bool)

(assert (= bs!1673310 (and d!2057229 d!2057191)))

(declare-fun lambda!364405 () Int)

(assert (=> bs!1673310 (= lambda!364405 lambda!364393)))

(declare-fun bs!1673311 () Bool)

(assert (= bs!1673311 (and d!2057229 d!2057205)))

(assert (=> bs!1673311 (= lambda!364405 lambda!364395)))

(declare-fun bs!1673312 () Bool)

(assert (= bs!1673312 (and d!2057229 d!2057217)))

(assert (=> bs!1673312 (= lambda!364405 lambda!364402)))

(declare-fun bs!1673313 () Bool)

(assert (= bs!1673313 (and d!2057229 b!6555056)))

(assert (=> bs!1673313 (= lambda!364405 lambda!364329)))

(declare-fun bs!1673314 () Bool)

(assert (= bs!1673314 (and d!2057229 d!2057013)))

(assert (=> bs!1673314 (= lambda!364405 lambda!364355)))

(declare-fun lt!2404216 () List!65592)

(assert (=> d!2057229 (forall!15603 lt!2404216 lambda!364405)))

(declare-fun e!3969039 () List!65592)

(assert (=> d!2057229 (= lt!2404216 e!3969039)))

(declare-fun c!1204489 () Bool)

(assert (=> d!2057229 (= c!1204489 ((_ is Cons!65470) zl!343))))

(assert (=> d!2057229 (= (unfocusZipperList!1852 zl!343) lt!2404216)))

(declare-fun b!6556011 () Bool)

(assert (=> b!6556011 (= e!3969039 (Cons!65468 (generalisedConcat!2028 (exprs!6315 (h!71918 zl!343))) (unfocusZipperList!1852 (t!379236 zl!343))))))

(declare-fun b!6556012 () Bool)

(assert (=> b!6556012 (= e!3969039 Nil!65468)))

(assert (= (and d!2057229 c!1204489) b!6556011))

(assert (= (and d!2057229 (not c!1204489)) b!6556012))

(declare-fun m!7338202 () Bool)

(assert (=> d!2057229 m!7338202))

(assert (=> b!6556011 m!7337276))

(declare-fun m!7338204 () Bool)

(assert (=> b!6556011 m!7338204))

(assert (=> b!6555061 d!2057229))

(declare-fun d!2057235 () Bool)

(declare-fun nullableFct!2350 (Regex!16431) Bool)

(assert (=> d!2057235 (= (nullable!6424 (h!71916 (exprs!6315 (h!71918 zl!343)))) (nullableFct!2350 (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun bs!1673315 () Bool)

(assert (= bs!1673315 d!2057235))

(declare-fun m!7338206 () Bool)

(assert (=> bs!1673315 m!7338206))

(assert (=> b!6555082 d!2057235))

(declare-fun d!2057237 () Bool)

(declare-fun c!1204490 () Bool)

(declare-fun e!3969041 () Bool)

(assert (=> d!2057237 (= c!1204490 e!3969041)))

(declare-fun res!2689913 () Bool)

(assert (=> d!2057237 (=> (not res!2689913) (not e!3969041))))

(assert (=> d!2057237 (= res!2689913 ((_ is Cons!65468) (exprs!6315 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343))))))))))

(declare-fun e!3969042 () (InoxSet Context!11630))

(assert (=> d!2057237 (= (derivationStepZipperUp!1605 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343))))) (h!71917 s!2326)) e!3969042)))

(declare-fun b!6556013 () Bool)

(declare-fun e!3969040 () (InoxSet Context!11630))

(assert (=> b!6556013 (= e!3969042 e!3969040)))

(declare-fun c!1204491 () Bool)

(assert (=> b!6556013 (= c!1204491 ((_ is Cons!65468) (exprs!6315 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343))))))))))

(declare-fun b!6556014 () Bool)

(declare-fun call!570222 () (InoxSet Context!11630))

(assert (=> b!6556014 (= e!3969042 ((_ map or) call!570222 (derivationStepZipperUp!1605 (Context!11631 (t!379234 (exprs!6315 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343)))))))) (h!71917 s!2326))))))

(declare-fun b!6556015 () Bool)

(assert (=> b!6556015 (= e!3969041 (nullable!6424 (h!71916 (exprs!6315 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343)))))))))))

(declare-fun b!6556016 () Bool)

(assert (=> b!6556016 (= e!3969040 call!570222)))

(declare-fun bm!570217 () Bool)

(assert (=> bm!570217 (= call!570222 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343))))))) (Context!11631 (t!379234 (exprs!6315 (Context!11631 (Cons!65468 (h!71916 (exprs!6315 (h!71918 zl!343))) (t!379234 (exprs!6315 (h!71918 zl!343)))))))) (h!71917 s!2326)))))

(declare-fun b!6556017 () Bool)

(assert (=> b!6556017 (= e!3969040 ((as const (Array Context!11630 Bool)) false))))

(assert (= (and d!2057237 res!2689913) b!6556015))

(assert (= (and d!2057237 c!1204490) b!6556014))

(assert (= (and d!2057237 (not c!1204490)) b!6556013))

(assert (= (and b!6556013 c!1204491) b!6556016))

(assert (= (and b!6556013 (not c!1204491)) b!6556017))

(assert (= (or b!6556014 b!6556016) bm!570217))

(declare-fun m!7338208 () Bool)

(assert (=> b!6556014 m!7338208))

(declare-fun m!7338210 () Bool)

(assert (=> b!6556015 m!7338210))

(declare-fun m!7338212 () Bool)

(assert (=> bm!570217 m!7338212))

(assert (=> b!6555082 d!2057237))

(declare-fun d!2057239 () Bool)

(declare-fun c!1204492 () Bool)

(declare-fun e!3969044 () Bool)

(assert (=> d!2057239 (= c!1204492 e!3969044)))

(declare-fun res!2689914 () Bool)

(assert (=> d!2057239 (=> (not res!2689914) (not e!3969044))))

(assert (=> d!2057239 (= res!2689914 ((_ is Cons!65468) (exprs!6315 lt!2404022)))))

(declare-fun e!3969045 () (InoxSet Context!11630))

(assert (=> d!2057239 (= (derivationStepZipperUp!1605 lt!2404022 (h!71917 s!2326)) e!3969045)))

(declare-fun b!6556018 () Bool)

(declare-fun e!3969043 () (InoxSet Context!11630))

(assert (=> b!6556018 (= e!3969045 e!3969043)))

(declare-fun c!1204493 () Bool)

(assert (=> b!6556018 (= c!1204493 ((_ is Cons!65468) (exprs!6315 lt!2404022)))))

(declare-fun call!570223 () (InoxSet Context!11630))

(declare-fun b!6556019 () Bool)

(assert (=> b!6556019 (= e!3969045 ((_ map or) call!570223 (derivationStepZipperUp!1605 (Context!11631 (t!379234 (exprs!6315 lt!2404022))) (h!71917 s!2326))))))

(declare-fun b!6556020 () Bool)

(assert (=> b!6556020 (= e!3969044 (nullable!6424 (h!71916 (exprs!6315 lt!2404022))))))

(declare-fun b!6556021 () Bool)

(assert (=> b!6556021 (= e!3969043 call!570223)))

(declare-fun bm!570218 () Bool)

(assert (=> bm!570218 (= call!570223 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 lt!2404022)) (Context!11631 (t!379234 (exprs!6315 lt!2404022))) (h!71917 s!2326)))))

(declare-fun b!6556022 () Bool)

(assert (=> b!6556022 (= e!3969043 ((as const (Array Context!11630 Bool)) false))))

(assert (= (and d!2057239 res!2689914) b!6556020))

(assert (= (and d!2057239 c!1204492) b!6556019))

(assert (= (and d!2057239 (not c!1204492)) b!6556018))

(assert (= (and b!6556018 c!1204493) b!6556021))

(assert (= (and b!6556018 (not c!1204493)) b!6556022))

(assert (= (or b!6556019 b!6556021) bm!570218))

(declare-fun m!7338214 () Bool)

(assert (=> b!6556019 m!7338214))

(declare-fun m!7338216 () Bool)

(assert (=> b!6556020 m!7338216))

(declare-fun m!7338218 () Bool)

(assert (=> bm!570218 m!7338218))

(assert (=> b!6555082 d!2057239))

(declare-fun d!2057241 () Bool)

(assert (=> d!2057241 (= (flatMap!1936 z!1189 lambda!364327) (choose!48834 z!1189 lambda!364327))))

(declare-fun bs!1673316 () Bool)

(assert (= bs!1673316 d!2057241))

(declare-fun m!7338220 () Bool)

(assert (=> bs!1673316 m!7338220))

(assert (=> b!6555082 d!2057241))

(declare-fun b!6556045 () Bool)

(declare-fun e!3969063 () (InoxSet Context!11630))

(declare-fun e!3969058 () (InoxSet Context!11630))

(assert (=> b!6556045 (= e!3969063 e!3969058)))

(declare-fun c!1204504 () Bool)

(assert (=> b!6556045 (= c!1204504 ((_ is Concat!25276) (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6556046 () Bool)

(declare-fun call!570236 () (InoxSet Context!11630))

(assert (=> b!6556046 (= e!3969058 call!570236)))

(declare-fun c!1204507 () Bool)

(declare-fun call!570239 () List!65592)

(declare-fun bm!570231 () Bool)

(declare-fun call!570241 () (InoxSet Context!11630))

(assert (=> bm!570231 (= call!570241 (derivationStepZipperDown!1679 (ite c!1204507 (regTwo!33375 (h!71916 (exprs!6315 (h!71918 zl!343)))) (regOne!33374 (h!71916 (exprs!6315 (h!71918 zl!343))))) (ite c!1204507 lt!2404022 (Context!11631 call!570239)) (h!71917 s!2326)))))

(declare-fun b!6556047 () Bool)

(declare-fun e!3969062 () (InoxSet Context!11630))

(declare-fun e!3969060 () (InoxSet Context!11630))

(assert (=> b!6556047 (= e!3969062 e!3969060)))

(assert (=> b!6556047 (= c!1204507 ((_ is Union!16431) (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6556048 () Bool)

(declare-fun call!570238 () (InoxSet Context!11630))

(assert (=> b!6556048 (= e!3969063 ((_ map or) call!570241 call!570238))))

(declare-fun d!2057243 () Bool)

(declare-fun c!1204506 () Bool)

(assert (=> d!2057243 (= c!1204506 (and ((_ is ElementMatch!16431) (h!71916 (exprs!6315 (h!71918 zl!343)))) (= (c!1204232 (h!71916 (exprs!6315 (h!71918 zl!343)))) (h!71917 s!2326))))))

(assert (=> d!2057243 (= (derivationStepZipperDown!1679 (h!71916 (exprs!6315 (h!71918 zl!343))) lt!2404022 (h!71917 s!2326)) e!3969062)))

(declare-fun b!6556049 () Bool)

(assert (=> b!6556049 (= e!3969062 (store ((as const (Array Context!11630 Bool)) false) lt!2404022 true))))

(declare-fun b!6556050 () Bool)

(declare-fun c!1204508 () Bool)

(assert (=> b!6556050 (= c!1204508 ((_ is Star!16431) (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun e!3969059 () (InoxSet Context!11630))

(assert (=> b!6556050 (= e!3969058 e!3969059)))

(declare-fun b!6556051 () Bool)

(assert (=> b!6556051 (= e!3969059 ((as const (Array Context!11630 Bool)) false))))

(declare-fun b!6556052 () Bool)

(declare-fun call!570237 () (InoxSet Context!11630))

(assert (=> b!6556052 (= e!3969060 ((_ map or) call!570237 call!570241))))

(declare-fun b!6556053 () Bool)

(declare-fun c!1204505 () Bool)

(declare-fun e!3969061 () Bool)

(assert (=> b!6556053 (= c!1204505 e!3969061)))

(declare-fun res!2689917 () Bool)

(assert (=> b!6556053 (=> (not res!2689917) (not e!3969061))))

(assert (=> b!6556053 (= res!2689917 ((_ is Concat!25276) (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(assert (=> b!6556053 (= e!3969060 e!3969063)))

(declare-fun bm!570232 () Bool)

(declare-fun call!570240 () List!65592)

(assert (=> bm!570232 (= call!570240 call!570239)))

(declare-fun bm!570233 () Bool)

(assert (=> bm!570233 (= call!570238 call!570237)))

(declare-fun b!6556054 () Bool)

(assert (=> b!6556054 (= e!3969059 call!570236)))

(declare-fun bm!570234 () Bool)

(assert (=> bm!570234 (= call!570237 (derivationStepZipperDown!1679 (ite c!1204507 (regOne!33375 (h!71916 (exprs!6315 (h!71918 zl!343)))) (ite c!1204505 (regTwo!33374 (h!71916 (exprs!6315 (h!71918 zl!343)))) (ite c!1204504 (regOne!33374 (h!71916 (exprs!6315 (h!71918 zl!343)))) (reg!16760 (h!71916 (exprs!6315 (h!71918 zl!343))))))) (ite (or c!1204507 c!1204505) lt!2404022 (Context!11631 call!570240)) (h!71917 s!2326)))))

(declare-fun bm!570235 () Bool)

(declare-fun $colon$colon!2272 (List!65592 Regex!16431) List!65592)

(assert (=> bm!570235 (= call!570239 ($colon$colon!2272 (exprs!6315 lt!2404022) (ite (or c!1204505 c!1204504) (regTwo!33374 (h!71916 (exprs!6315 (h!71918 zl!343)))) (h!71916 (exprs!6315 (h!71918 zl!343))))))))

(declare-fun b!6556055 () Bool)

(assert (=> b!6556055 (= e!3969061 (nullable!6424 (regOne!33374 (h!71916 (exprs!6315 (h!71918 zl!343))))))))

(declare-fun bm!570236 () Bool)

(assert (=> bm!570236 (= call!570236 call!570238)))

(assert (= (and d!2057243 c!1204506) b!6556049))

(assert (= (and d!2057243 (not c!1204506)) b!6556047))

(assert (= (and b!6556047 c!1204507) b!6556052))

(assert (= (and b!6556047 (not c!1204507)) b!6556053))

(assert (= (and b!6556053 res!2689917) b!6556055))

(assert (= (and b!6556053 c!1204505) b!6556048))

(assert (= (and b!6556053 (not c!1204505)) b!6556045))

(assert (= (and b!6556045 c!1204504) b!6556046))

(assert (= (and b!6556045 (not c!1204504)) b!6556050))

(assert (= (and b!6556050 c!1204508) b!6556054))

(assert (= (and b!6556050 (not c!1204508)) b!6556051))

(assert (= (or b!6556046 b!6556054) bm!570232))

(assert (= (or b!6556046 b!6556054) bm!570236))

(assert (= (or b!6556048 bm!570232) bm!570235))

(assert (= (or b!6556048 bm!570236) bm!570233))

(assert (= (or b!6556052 b!6556048) bm!570231))

(assert (= (or b!6556052 bm!570233) bm!570234))

(declare-fun m!7338222 () Bool)

(assert (=> b!6556055 m!7338222))

(declare-fun m!7338224 () Bool)

(assert (=> bm!570234 m!7338224))

(declare-fun m!7338226 () Bool)

(assert (=> b!6556049 m!7338226))

(declare-fun m!7338228 () Bool)

(assert (=> bm!570231 m!7338228))

(declare-fun m!7338230 () Bool)

(assert (=> bm!570235 m!7338230))

(assert (=> b!6555082 d!2057243))

(declare-fun d!2057245 () Bool)

(assert (=> d!2057245 (= (flatMap!1936 z!1189 lambda!364327) (dynLambda!26032 lambda!364327 (h!71918 zl!343)))))

(declare-fun lt!2404217 () Unit!159059)

(assert (=> d!2057245 (= lt!2404217 (choose!48835 z!1189 (h!71918 zl!343) lambda!364327))))

(assert (=> d!2057245 (= z!1189 (store ((as const (Array Context!11630 Bool)) false) (h!71918 zl!343) true))))

(assert (=> d!2057245 (= (lemmaFlatMapOnSingletonSet!1462 z!1189 (h!71918 zl!343) lambda!364327) lt!2404217)))

(declare-fun b_lambda!248067 () Bool)

(assert (=> (not b_lambda!248067) (not d!2057245)))

(declare-fun bs!1673317 () Bool)

(assert (= bs!1673317 d!2057245))

(assert (=> bs!1673317 m!7337362))

(declare-fun m!7338232 () Bool)

(assert (=> bs!1673317 m!7338232))

(declare-fun m!7338234 () Bool)

(assert (=> bs!1673317 m!7338234))

(declare-fun m!7338236 () Bool)

(assert (=> bs!1673317 m!7338236))

(assert (=> b!6555082 d!2057245))

(declare-fun d!2057247 () Bool)

(declare-fun c!1204509 () Bool)

(declare-fun e!3969065 () Bool)

(assert (=> d!2057247 (= c!1204509 e!3969065)))

(declare-fun res!2689918 () Bool)

(assert (=> d!2057247 (=> (not res!2689918) (not e!3969065))))

(assert (=> d!2057247 (= res!2689918 ((_ is Cons!65468) (exprs!6315 (h!71918 zl!343))))))

(declare-fun e!3969066 () (InoxSet Context!11630))

(assert (=> d!2057247 (= (derivationStepZipperUp!1605 (h!71918 zl!343) (h!71917 s!2326)) e!3969066)))

(declare-fun b!6556056 () Bool)

(declare-fun e!3969064 () (InoxSet Context!11630))

(assert (=> b!6556056 (= e!3969066 e!3969064)))

(declare-fun c!1204510 () Bool)

(assert (=> b!6556056 (= c!1204510 ((_ is Cons!65468) (exprs!6315 (h!71918 zl!343))))))

(declare-fun b!6556057 () Bool)

(declare-fun call!570242 () (InoxSet Context!11630))

(assert (=> b!6556057 (= e!3969066 ((_ map or) call!570242 (derivationStepZipperUp!1605 (Context!11631 (t!379234 (exprs!6315 (h!71918 zl!343)))) (h!71917 s!2326))))))

(declare-fun b!6556058 () Bool)

(assert (=> b!6556058 (= e!3969065 (nullable!6424 (h!71916 (exprs!6315 (h!71918 zl!343)))))))

(declare-fun b!6556059 () Bool)

(assert (=> b!6556059 (= e!3969064 call!570242)))

(declare-fun bm!570237 () Bool)

(assert (=> bm!570237 (= call!570242 (derivationStepZipperDown!1679 (h!71916 (exprs!6315 (h!71918 zl!343))) (Context!11631 (t!379234 (exprs!6315 (h!71918 zl!343)))) (h!71917 s!2326)))))

(declare-fun b!6556060 () Bool)

(assert (=> b!6556060 (= e!3969064 ((as const (Array Context!11630 Bool)) false))))

(assert (= (and d!2057247 res!2689918) b!6556058))

(assert (= (and d!2057247 c!1204509) b!6556057))

(assert (= (and d!2057247 (not c!1204509)) b!6556056))

(assert (= (and b!6556056 c!1204510) b!6556059))

(assert (= (and b!6556056 (not c!1204510)) b!6556060))

(assert (= (or b!6556057 b!6556059) bm!570237))

(declare-fun m!7338238 () Bool)

(assert (=> b!6556057 m!7338238))

(assert (=> b!6556058 m!7337370))

(declare-fun m!7338240 () Bool)

(assert (=> bm!570237 m!7338240))

(assert (=> b!6555082 d!2057247))

(declare-fun d!2057249 () Bool)

(declare-fun e!3969079 () Bool)

(assert (=> d!2057249 e!3969079))

(declare-fun res!2689932 () Bool)

(assert (=> d!2057249 (=> res!2689932 e!3969079)))

(declare-fun e!3969080 () Bool)

(assert (=> d!2057249 (= res!2689932 e!3969080)))

(declare-fun res!2689931 () Bool)

(assert (=> d!2057249 (=> (not res!2689931) (not e!3969080))))

(declare-fun lt!2404224 () Option!16322)

(assert (=> d!2057249 (= res!2689931 (isDefined!13025 lt!2404224))))

(declare-fun e!3969081 () Option!16322)

(assert (=> d!2057249 (= lt!2404224 e!3969081)))

(declare-fun c!1204515 () Bool)

(declare-fun e!3969078 () Bool)

(assert (=> d!2057249 (= c!1204515 e!3969078)))

(declare-fun res!2689930 () Bool)

(assert (=> d!2057249 (=> (not res!2689930) (not e!3969078))))

(assert (=> d!2057249 (= res!2689930 (matchR!8614 (regOne!33374 r!7292) Nil!65469))))

(assert (=> d!2057249 (validRegex!8167 (regOne!33374 r!7292))))

(assert (=> d!2057249 (= (findConcatSeparation!2736 (regOne!33374 r!7292) (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326) lt!2404224)))

(declare-fun b!6556079 () Bool)

(assert (=> b!6556079 (= e!3969080 (= (++!14565 (_1!36713 (get!22728 lt!2404224)) (_2!36713 (get!22728 lt!2404224))) s!2326))))

(declare-fun b!6556080 () Bool)

(assert (=> b!6556080 (= e!3969079 (not (isDefined!13025 lt!2404224)))))

(declare-fun b!6556081 () Bool)

(declare-fun res!2689933 () Bool)

(assert (=> b!6556081 (=> (not res!2689933) (not e!3969080))))

(assert (=> b!6556081 (= res!2689933 (matchR!8614 (regTwo!33374 r!7292) (_2!36713 (get!22728 lt!2404224))))))

(declare-fun b!6556082 () Bool)

(declare-fun e!3969077 () Option!16322)

(assert (=> b!6556082 (= e!3969077 None!16321)))

(declare-fun b!6556083 () Bool)

(assert (=> b!6556083 (= e!3969081 e!3969077)))

(declare-fun c!1204516 () Bool)

(assert (=> b!6556083 (= c!1204516 ((_ is Nil!65469) s!2326))))

(declare-fun b!6556084 () Bool)

(declare-fun lt!2404225 () Unit!159059)

(declare-fun lt!2404226 () Unit!159059)

(assert (=> b!6556084 (= lt!2404225 lt!2404226)))

(assert (=> b!6556084 (= (++!14565 (++!14565 Nil!65469 (Cons!65469 (h!71917 s!2326) Nil!65469)) (t!379235 s!2326)) s!2326)))

(assert (=> b!6556084 (= lt!2404226 (lemmaMoveElementToOtherListKeepsConcatEq!2574 Nil!65469 (h!71917 s!2326) (t!379235 s!2326) s!2326))))

(assert (=> b!6556084 (= e!3969077 (findConcatSeparation!2736 (regOne!33374 r!7292) (regTwo!33374 r!7292) (++!14565 Nil!65469 (Cons!65469 (h!71917 s!2326) Nil!65469)) (t!379235 s!2326) s!2326))))

(declare-fun b!6556085 () Bool)

(assert (=> b!6556085 (= e!3969078 (matchR!8614 (regTwo!33374 r!7292) s!2326))))

(declare-fun b!6556086 () Bool)

(declare-fun res!2689929 () Bool)

(assert (=> b!6556086 (=> (not res!2689929) (not e!3969080))))

(assert (=> b!6556086 (= res!2689929 (matchR!8614 (regOne!33374 r!7292) (_1!36713 (get!22728 lt!2404224))))))

(declare-fun b!6556087 () Bool)

(assert (=> b!6556087 (= e!3969081 (Some!16321 (tuple2!66821 Nil!65469 s!2326)))))

(assert (= (and d!2057249 res!2689930) b!6556085))

(assert (= (and d!2057249 c!1204515) b!6556087))

(assert (= (and d!2057249 (not c!1204515)) b!6556083))

(assert (= (and b!6556083 c!1204516) b!6556082))

(assert (= (and b!6556083 (not c!1204516)) b!6556084))

(assert (= (and d!2057249 res!2689931) b!6556086))

(assert (= (and b!6556086 res!2689929) b!6556081))

(assert (= (and b!6556081 res!2689933) b!6556079))

(assert (= (and d!2057249 (not res!2689932)) b!6556080))

(declare-fun m!7338242 () Bool)

(assert (=> b!6556081 m!7338242))

(declare-fun m!7338244 () Bool)

(assert (=> b!6556081 m!7338244))

(assert (=> b!6556086 m!7338242))

(declare-fun m!7338246 () Bool)

(assert (=> b!6556086 m!7338246))

(assert (=> b!6556079 m!7338242))

(declare-fun m!7338248 () Bool)

(assert (=> b!6556079 m!7338248))

(declare-fun m!7338250 () Bool)

(assert (=> d!2057249 m!7338250))

(declare-fun m!7338252 () Bool)

(assert (=> d!2057249 m!7338252))

(declare-fun m!7338254 () Bool)

(assert (=> d!2057249 m!7338254))

(assert (=> b!6556080 m!7338250))

(assert (=> b!6556084 m!7338040))

(assert (=> b!6556084 m!7338040))

(assert (=> b!6556084 m!7338042))

(assert (=> b!6556084 m!7338044))

(assert (=> b!6556084 m!7338040))

(declare-fun m!7338256 () Bool)

(assert (=> b!6556084 m!7338256))

(declare-fun m!7338258 () Bool)

(assert (=> b!6556085 m!7338258))

(assert (=> b!6555075 d!2057249))

(declare-fun d!2057251 () Bool)

(declare-fun choose!48841 (Int) Bool)

(assert (=> d!2057251 (= (Exists!3501 lambda!364326) (choose!48841 lambda!364326))))

(declare-fun bs!1673318 () Bool)

(assert (= bs!1673318 d!2057251))

(declare-fun m!7338260 () Bool)

(assert (=> bs!1673318 m!7338260))

(assert (=> b!6555075 d!2057251))

(declare-fun d!2057253 () Bool)

(assert (=> d!2057253 (= (Exists!3501 lambda!364325) (choose!48841 lambda!364325))))

(declare-fun bs!1673319 () Bool)

(assert (= bs!1673319 d!2057253))

(declare-fun m!7338262 () Bool)

(assert (=> bs!1673319 m!7338262))

(assert (=> b!6555075 d!2057253))

(declare-fun bs!1673320 () Bool)

(declare-fun d!2057255 () Bool)

(assert (= bs!1673320 (and d!2057255 b!6555075)))

(declare-fun lambda!364408 () Int)

(assert (=> bs!1673320 (= lambda!364408 lambda!364325)))

(declare-fun bs!1673321 () Bool)

(assert (= bs!1673321 (and d!2057255 b!6555880)))

(assert (=> bs!1673321 (not (= lambda!364408 lambda!364396))))

(declare-fun bs!1673322 () Bool)

(assert (= bs!1673322 (and d!2057255 b!6555605)))

(assert (=> bs!1673322 (not (= lambda!364408 lambda!364371))))

(declare-fun bs!1673323 () Bool)

(assert (= bs!1673323 (and d!2057255 b!6555074)))

(assert (=> bs!1673323 (not (= lambda!364408 lambda!364331))))

(assert (=> bs!1673320 (not (= lambda!364408 lambda!364326))))

(declare-fun bs!1673324 () Bool)

(assert (= bs!1673324 (and d!2057255 b!6555871)))

(assert (=> bs!1673324 (not (= lambda!364408 lambda!364398))))

(declare-fun bs!1673325 () Bool)

(assert (= bs!1673325 (and d!2057255 b!6555563)))

(assert (=> bs!1673325 (not (= lambda!364408 lambda!364366))))

(declare-fun bs!1673326 () Bool)

(assert (= bs!1673326 (and d!2057255 b!6555572)))

(assert (=> bs!1673326 (not (= lambda!364408 lambda!364365))))

(assert (=> bs!1673323 (= (= (regOne!33374 r!7292) lt!2404040) (= lambda!364408 lambda!364330))))

(declare-fun bs!1673327 () Bool)

(assert (= bs!1673327 (and d!2057255 b!6555614)))

(assert (=> bs!1673327 (not (= lambda!364408 lambda!364370))))

(assert (=> d!2057255 true))

(assert (=> d!2057255 true))

(assert (=> d!2057255 true))

(assert (=> d!2057255 (= (isDefined!13025 (findConcatSeparation!2736 (regOne!33374 r!7292) (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326)) (Exists!3501 lambda!364408))))

(declare-fun lt!2404229 () Unit!159059)

(declare-fun choose!48843 (Regex!16431 Regex!16431 List!65593) Unit!159059)

(assert (=> d!2057255 (= lt!2404229 (choose!48843 (regOne!33374 r!7292) (regTwo!33374 r!7292) s!2326))))

(assert (=> d!2057255 (validRegex!8167 (regOne!33374 r!7292))))

(assert (=> d!2057255 (= (lemmaFindConcatSeparationEquivalentToExists!2500 (regOne!33374 r!7292) (regTwo!33374 r!7292) s!2326) lt!2404229)))

(declare-fun bs!1673328 () Bool)

(assert (= bs!1673328 d!2057255))

(assert (=> bs!1673328 m!7337284))

(assert (=> bs!1673328 m!7338254))

(declare-fun m!7338264 () Bool)

(assert (=> bs!1673328 m!7338264))

(assert (=> bs!1673328 m!7337284))

(assert (=> bs!1673328 m!7337286))

(declare-fun m!7338266 () Bool)

(assert (=> bs!1673328 m!7338266))

(assert (=> b!6555075 d!2057255))

(declare-fun bs!1673329 () Bool)

(declare-fun d!2057257 () Bool)

(assert (= bs!1673329 (and d!2057257 b!6555075)))

(declare-fun lambda!364413 () Int)

(assert (=> bs!1673329 (= lambda!364413 lambda!364325)))

(declare-fun bs!1673330 () Bool)

(assert (= bs!1673330 (and d!2057257 b!6555880)))

(assert (=> bs!1673330 (not (= lambda!364413 lambda!364396))))

(declare-fun bs!1673331 () Bool)

(assert (= bs!1673331 (and d!2057257 b!6555605)))

(assert (=> bs!1673331 (not (= lambda!364413 lambda!364371))))

(declare-fun bs!1673332 () Bool)

(assert (= bs!1673332 (and d!2057257 b!6555074)))

(assert (=> bs!1673332 (not (= lambda!364413 lambda!364331))))

(assert (=> bs!1673329 (not (= lambda!364413 lambda!364326))))

(declare-fun bs!1673333 () Bool)

(assert (= bs!1673333 (and d!2057257 b!6555871)))

(assert (=> bs!1673333 (not (= lambda!364413 lambda!364398))))

(declare-fun bs!1673334 () Bool)

(assert (= bs!1673334 (and d!2057257 b!6555563)))

(assert (=> bs!1673334 (not (= lambda!364413 lambda!364366))))

(assert (=> bs!1673332 (= (= (regOne!33374 r!7292) lt!2404040) (= lambda!364413 lambda!364330))))

(declare-fun bs!1673335 () Bool)

(assert (= bs!1673335 (and d!2057257 b!6555614)))

(assert (=> bs!1673335 (not (= lambda!364413 lambda!364370))))

(declare-fun bs!1673336 () Bool)

(assert (= bs!1673336 (and d!2057257 b!6555572)))

(assert (=> bs!1673336 (not (= lambda!364413 lambda!364365))))

(declare-fun bs!1673337 () Bool)

(assert (= bs!1673337 (and d!2057257 d!2057255)))

(assert (=> bs!1673337 (= lambda!364413 lambda!364408)))

(assert (=> d!2057257 true))

(assert (=> d!2057257 true))

(assert (=> d!2057257 true))

(declare-fun lambda!364414 () Int)

(assert (=> bs!1673329 (not (= lambda!364414 lambda!364325))))

(assert (=> bs!1673330 (not (= lambda!364414 lambda!364396))))

(assert (=> bs!1673331 (= (and (= (regOne!33374 r!7292) (regOne!33374 lt!2404041)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404041))) (= lambda!364414 lambda!364371))))

(assert (=> bs!1673332 (= (= (regOne!33374 r!7292) lt!2404040) (= lambda!364414 lambda!364331))))

(assert (=> bs!1673329 (= lambda!364414 lambda!364326)))

(assert (=> bs!1673333 (= lambda!364414 lambda!364398)))

(assert (=> bs!1673332 (not (= lambda!364414 lambda!364330))))

(assert (=> bs!1673335 (not (= lambda!364414 lambda!364370))))

(assert (=> bs!1673334 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (regOne!33374 r!7292) (regOne!33374 lt!2404040)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404040))) (= lambda!364414 lambda!364366))))

(declare-fun bs!1673338 () Bool)

(assert (= bs!1673338 d!2057257))

(assert (=> bs!1673338 (not (= lambda!364414 lambda!364413))))

(assert (=> bs!1673336 (not (= lambda!364414 lambda!364365))))

(assert (=> bs!1673337 (not (= lambda!364414 lambda!364408))))

(assert (=> d!2057257 true))

(assert (=> d!2057257 true))

(assert (=> d!2057257 true))

(assert (=> d!2057257 (= (Exists!3501 lambda!364413) (Exists!3501 lambda!364414))))

(declare-fun lt!2404232 () Unit!159059)

(declare-fun choose!48844 (Regex!16431 Regex!16431 List!65593) Unit!159059)

(assert (=> d!2057257 (= lt!2404232 (choose!48844 (regOne!33374 r!7292) (regTwo!33374 r!7292) s!2326))))

(assert (=> d!2057257 (validRegex!8167 (regOne!33374 r!7292))))

(assert (=> d!2057257 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2038 (regOne!33374 r!7292) (regTwo!33374 r!7292) s!2326) lt!2404232)))

(declare-fun m!7338268 () Bool)

(assert (=> bs!1673338 m!7338268))

(declare-fun m!7338270 () Bool)

(assert (=> bs!1673338 m!7338270))

(declare-fun m!7338272 () Bool)

(assert (=> bs!1673338 m!7338272))

(assert (=> bs!1673338 m!7338254))

(assert (=> b!6555075 d!2057257))

(declare-fun d!2057259 () Bool)

(assert (=> d!2057259 (= (isDefined!13025 (findConcatSeparation!2736 (regOne!33374 r!7292) (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326)) (not (isEmpty!37706 (findConcatSeparation!2736 (regOne!33374 r!7292) (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326))))))

(declare-fun bs!1673339 () Bool)

(assert (= bs!1673339 d!2057259))

(assert (=> bs!1673339 m!7337284))

(declare-fun m!7338274 () Bool)

(assert (=> bs!1673339 m!7338274))

(assert (=> b!6555075 d!2057259))

(declare-fun bs!1673340 () Bool)

(declare-fun d!2057261 () Bool)

(assert (= bs!1673340 (and d!2057261 b!6555056)))

(declare-fun lambda!364419 () Int)

(assert (=> bs!1673340 (= (= (exprs!6315 lt!2404006) lt!2404017) (= lambda!364419 lambda!364328))))

(assert (=> d!2057261 true))

(assert (=> d!2057261 (= (appendTo!192 lt!2404023 lt!2404006) (map!14955 lt!2404023 lambda!364419))))

(declare-fun bs!1673341 () Bool)

(assert (= bs!1673341 d!2057261))

(declare-fun m!7338276 () Bool)

(assert (=> bs!1673341 m!7338276))

(assert (=> b!6555056 d!2057261))

(declare-fun d!2057263 () Bool)

(declare-fun dynLambda!26034 (Int Context!11630) Context!11630)

(assert (=> d!2057263 (= (map!14955 lt!2404023 lambda!364328) (store ((as const (Array Context!11630 Bool)) false) (dynLambda!26034 lambda!364328 lt!2404013) true))))

(declare-fun lt!2404237 () Unit!159059)

(declare-fun choose!48845 ((InoxSet Context!11630) Context!11630 Int) Unit!159059)

(assert (=> d!2057263 (= lt!2404237 (choose!48845 lt!2404023 lt!2404013 lambda!364328))))

(assert (=> d!2057263 (= lt!2404023 (store ((as const (Array Context!11630 Bool)) false) lt!2404013 true))))

(assert (=> d!2057263 (= (lemmaMapOnSingletonSet!214 lt!2404023 lt!2404013 lambda!364328) lt!2404237)))

(declare-fun b_lambda!248069 () Bool)

(assert (=> (not b_lambda!248069) (not d!2057263)))

(declare-fun bs!1673342 () Bool)

(assert (= bs!1673342 d!2057263))

(declare-fun m!7338278 () Bool)

(assert (=> bs!1673342 m!7338278))

(declare-fun m!7338280 () Bool)

(assert (=> bs!1673342 m!7338280))

(declare-fun m!7338282 () Bool)

(assert (=> bs!1673342 m!7338282))

(assert (=> bs!1673342 m!7337252))

(assert (=> bs!1673342 m!7338280))

(assert (=> bs!1673342 m!7337240))

(assert (=> b!6555056 d!2057263))

(declare-fun d!2057265 () Bool)

(declare-fun choose!48846 ((InoxSet Context!11630) Int) (InoxSet Context!11630))

(assert (=> d!2057265 (= (map!14955 lt!2404023 lambda!364328) (choose!48846 lt!2404023 lambda!364328))))

(declare-fun bs!1673343 () Bool)

(assert (= bs!1673343 d!2057265))

(declare-fun m!7338284 () Bool)

(assert (=> bs!1673343 m!7338284))

(assert (=> b!6555056 d!2057265))

(declare-fun d!2057267 () Bool)

(assert (=> d!2057267 (forall!15603 (++!14564 lt!2404058 lt!2404017) lambda!364329)))

(declare-fun lt!2404240 () Unit!159059)

(declare-fun choose!48847 (List!65592 List!65592 Int) Unit!159059)

(assert (=> d!2057267 (= lt!2404240 (choose!48847 lt!2404058 lt!2404017 lambda!364329))))

(assert (=> d!2057267 (forall!15603 lt!2404058 lambda!364329)))

(assert (=> d!2057267 (= (lemmaConcatPreservesForall!404 lt!2404058 lt!2404017 lambda!364329) lt!2404240)))

(declare-fun bs!1673344 () Bool)

(assert (= bs!1673344 d!2057267))

(assert (=> bs!1673344 m!7337230))

(assert (=> bs!1673344 m!7337230))

(declare-fun m!7338286 () Bool)

(assert (=> bs!1673344 m!7338286))

(declare-fun m!7338288 () Bool)

(assert (=> bs!1673344 m!7338288))

(declare-fun m!7338290 () Bool)

(assert (=> bs!1673344 m!7338290))

(assert (=> b!6555056 d!2057267))

(declare-fun b!6556112 () Bool)

(declare-fun res!2689950 () Bool)

(declare-fun e!3969093 () Bool)

(assert (=> b!6556112 (=> (not res!2689950) (not e!3969093))))

(declare-fun lt!2404243 () List!65592)

(declare-fun size!40512 (List!65592) Int)

(assert (=> b!6556112 (= res!2689950 (= (size!40512 lt!2404243) (+ (size!40512 lt!2404058) (size!40512 lt!2404017))))))

(declare-fun b!6556110 () Bool)

(declare-fun e!3969092 () List!65592)

(assert (=> b!6556110 (= e!3969092 lt!2404017)))

(declare-fun b!6556113 () Bool)

(assert (=> b!6556113 (= e!3969093 (or (not (= lt!2404017 Nil!65468)) (= lt!2404243 lt!2404058)))))

(declare-fun b!6556111 () Bool)

(assert (=> b!6556111 (= e!3969092 (Cons!65468 (h!71916 lt!2404058) (++!14564 (t!379234 lt!2404058) lt!2404017)))))

(declare-fun d!2057269 () Bool)

(assert (=> d!2057269 e!3969093))

(declare-fun res!2689951 () Bool)

(assert (=> d!2057269 (=> (not res!2689951) (not e!3969093))))

(declare-fun content!12576 (List!65592) (InoxSet Regex!16431))

(assert (=> d!2057269 (= res!2689951 (= (content!12576 lt!2404243) ((_ map or) (content!12576 lt!2404058) (content!12576 lt!2404017))))))

(assert (=> d!2057269 (= lt!2404243 e!3969092)))

(declare-fun c!1204520 () Bool)

(assert (=> d!2057269 (= c!1204520 ((_ is Nil!65468) lt!2404058))))

(assert (=> d!2057269 (= (++!14564 lt!2404058 lt!2404017) lt!2404243)))

(assert (= (and d!2057269 c!1204520) b!6556110))

(assert (= (and d!2057269 (not c!1204520)) b!6556111))

(assert (= (and d!2057269 res!2689951) b!6556112))

(assert (= (and b!6556112 res!2689950) b!6556113))

(declare-fun m!7338292 () Bool)

(assert (=> b!6556112 m!7338292))

(declare-fun m!7338294 () Bool)

(assert (=> b!6556112 m!7338294))

(declare-fun m!7338296 () Bool)

(assert (=> b!6556112 m!7338296))

(declare-fun m!7338298 () Bool)

(assert (=> b!6556111 m!7338298))

(declare-fun m!7338300 () Bool)

(assert (=> d!2057269 m!7338300))

(declare-fun m!7338302 () Bool)

(assert (=> d!2057269 m!7338302))

(declare-fun m!7338304 () Bool)

(assert (=> d!2057269 m!7338304))

(assert (=> b!6555056 d!2057269))

(declare-fun d!2057271 () Bool)

(assert (=> d!2057271 (= (matchR!8614 (reg!16760 (regOne!33374 r!7292)) (_1!36713 lt!2404014)) (matchZipper!2443 lt!2404023 (_1!36713 lt!2404014)))))

(declare-fun lt!2404246 () Unit!159059)

(declare-fun choose!48848 ((InoxSet Context!11630) List!65594 Regex!16431 List!65593) Unit!159059)

(assert (=> d!2057271 (= lt!2404246 (choose!48848 lt!2404023 lt!2404050 (reg!16760 (regOne!33374 r!7292)) (_1!36713 lt!2404014)))))

(assert (=> d!2057271 (validRegex!8167 (reg!16760 (regOne!33374 r!7292)))))

(assert (=> d!2057271 (= (theoremZipperRegexEquiv!867 lt!2404023 lt!2404050 (reg!16760 (regOne!33374 r!7292)) (_1!36713 lt!2404014)) lt!2404246)))

(declare-fun bs!1673345 () Bool)

(assert (= bs!1673345 d!2057271))

(assert (=> bs!1673345 m!7337330))

(assert (=> bs!1673345 m!7337244))

(declare-fun m!7338306 () Bool)

(assert (=> bs!1673345 m!7338306))

(assert (=> bs!1673345 m!7337354))

(assert (=> b!6555074 d!2057271))

(declare-fun d!2057273 () Bool)

(assert (=> d!2057273 (= (isDefined!13025 lt!2404020) (not (isEmpty!37706 lt!2404020)))))

(declare-fun bs!1673346 () Bool)

(assert (= bs!1673346 d!2057273))

(declare-fun m!7338308 () Bool)

(assert (=> bs!1673346 m!7338308))

(assert (=> b!6555074 d!2057273))

(declare-fun b!6556114 () Bool)

(declare-fun e!3969096 () Bool)

(assert (=> b!6556114 (= e!3969096 (not (= (head!13312 lt!2404055) (c!1204232 lt!2404041))))))

(declare-fun b!6556116 () Bool)

(declare-fun e!3969098 () Bool)

(assert (=> b!6556116 (= e!3969098 (matchR!8614 (derivativeStep!5115 lt!2404041 (head!13312 lt!2404055)) (tail!12397 lt!2404055)))))

(declare-fun b!6556117 () Bool)

(declare-fun res!2689957 () Bool)

(assert (=> b!6556117 (=> res!2689957 e!3969096)))

(assert (=> b!6556117 (= res!2689957 (not (isEmpty!37705 (tail!12397 lt!2404055))))))

(declare-fun b!6556118 () Bool)

(declare-fun res!2689954 () Bool)

(declare-fun e!3969099 () Bool)

(assert (=> b!6556118 (=> res!2689954 e!3969099)))

(assert (=> b!6556118 (= res!2689954 (not ((_ is ElementMatch!16431) lt!2404041)))))

(declare-fun e!3969094 () Bool)

(assert (=> b!6556118 (= e!3969094 e!3969099)))

(declare-fun b!6556119 () Bool)

(declare-fun res!2689958 () Bool)

(assert (=> b!6556119 (=> res!2689958 e!3969099)))

(declare-fun e!3969095 () Bool)

(assert (=> b!6556119 (= res!2689958 e!3969095)))

(declare-fun res!2689953 () Bool)

(assert (=> b!6556119 (=> (not res!2689953) (not e!3969095))))

(declare-fun lt!2404247 () Bool)

(assert (=> b!6556119 (= res!2689953 lt!2404247)))

(declare-fun b!6556120 () Bool)

(assert (=> b!6556120 (= e!3969098 (nullable!6424 lt!2404041))))

(declare-fun b!6556121 () Bool)

(declare-fun e!3969097 () Bool)

(assert (=> b!6556121 (= e!3969099 e!3969097)))

(declare-fun res!2689952 () Bool)

(assert (=> b!6556121 (=> (not res!2689952) (not e!3969097))))

(assert (=> b!6556121 (= res!2689952 (not lt!2404247))))

(declare-fun b!6556122 () Bool)

(declare-fun e!3969100 () Bool)

(declare-fun call!570243 () Bool)

(assert (=> b!6556122 (= e!3969100 (= lt!2404247 call!570243))))

(declare-fun b!6556123 () Bool)

(assert (=> b!6556123 (= e!3969094 (not lt!2404247))))

(declare-fun b!6556124 () Bool)

(assert (=> b!6556124 (= e!3969100 e!3969094)))

(declare-fun c!1204523 () Bool)

(assert (=> b!6556124 (= c!1204523 ((_ is EmptyLang!16431) lt!2404041))))

(declare-fun d!2057275 () Bool)

(assert (=> d!2057275 e!3969100))

(declare-fun c!1204522 () Bool)

(assert (=> d!2057275 (= c!1204522 ((_ is EmptyExpr!16431) lt!2404041))))

(assert (=> d!2057275 (= lt!2404247 e!3969098)))

(declare-fun c!1204521 () Bool)

(assert (=> d!2057275 (= c!1204521 (isEmpty!37705 lt!2404055))))

(assert (=> d!2057275 (validRegex!8167 lt!2404041)))

(assert (=> d!2057275 (= (matchR!8614 lt!2404041 lt!2404055) lt!2404247)))

(declare-fun b!6556115 () Bool)

(declare-fun res!2689959 () Bool)

(assert (=> b!6556115 (=> (not res!2689959) (not e!3969095))))

(assert (=> b!6556115 (= res!2689959 (isEmpty!37705 (tail!12397 lt!2404055)))))

(declare-fun b!6556125 () Bool)

(declare-fun res!2689955 () Bool)

(assert (=> b!6556125 (=> (not res!2689955) (not e!3969095))))

(assert (=> b!6556125 (= res!2689955 (not call!570243))))

(declare-fun b!6556126 () Bool)

(assert (=> b!6556126 (= e!3969097 e!3969096)))

(declare-fun res!2689956 () Bool)

(assert (=> b!6556126 (=> res!2689956 e!3969096)))

(assert (=> b!6556126 (= res!2689956 call!570243)))

(declare-fun bm!570238 () Bool)

(assert (=> bm!570238 (= call!570243 (isEmpty!37705 lt!2404055))))

(declare-fun b!6556127 () Bool)

(assert (=> b!6556127 (= e!3969095 (= (head!13312 lt!2404055) (c!1204232 lt!2404041)))))

(assert (= (and d!2057275 c!1204521) b!6556120))

(assert (= (and d!2057275 (not c!1204521)) b!6556116))

(assert (= (and d!2057275 c!1204522) b!6556122))

(assert (= (and d!2057275 (not c!1204522)) b!6556124))

(assert (= (and b!6556124 c!1204523) b!6556123))

(assert (= (and b!6556124 (not c!1204523)) b!6556118))

(assert (= (and b!6556118 (not res!2689954)) b!6556119))

(assert (= (and b!6556119 res!2689953) b!6556125))

(assert (= (and b!6556125 res!2689955) b!6556115))

(assert (= (and b!6556115 res!2689959) b!6556127))

(assert (= (and b!6556119 (not res!2689958)) b!6556121))

(assert (= (and b!6556121 res!2689952) b!6556126))

(assert (= (and b!6556126 (not res!2689956)) b!6556117))

(assert (= (and b!6556117 (not res!2689957)) b!6556114))

(assert (= (or b!6556122 b!6556125 b!6556126) bm!570238))

(declare-fun m!7338310 () Bool)

(assert (=> bm!570238 m!7338310))

(assert (=> b!6556120 m!7337862))

(declare-fun m!7338312 () Bool)

(assert (=> b!6556117 m!7338312))

(assert (=> b!6556117 m!7338312))

(declare-fun m!7338314 () Bool)

(assert (=> b!6556117 m!7338314))

(declare-fun m!7338316 () Bool)

(assert (=> b!6556114 m!7338316))

(assert (=> d!2057275 m!7338310))

(assert (=> d!2057275 m!7337870))

(assert (=> b!6556116 m!7338316))

(assert (=> b!6556116 m!7338316))

(declare-fun m!7338318 () Bool)

(assert (=> b!6556116 m!7338318))

(assert (=> b!6556116 m!7338312))

(assert (=> b!6556116 m!7338318))

(assert (=> b!6556116 m!7338312))

(declare-fun m!7338320 () Bool)

(assert (=> b!6556116 m!7338320))

(assert (=> b!6556127 m!7338316))

(assert (=> b!6556115 m!7338312))

(assert (=> b!6556115 m!7338312))

(assert (=> b!6556115 m!7338314))

(assert (=> b!6555074 d!2057275))

(declare-fun b!6556128 () Bool)

(declare-fun e!3969103 () Bool)

(assert (=> b!6556128 (= e!3969103 (not (= (head!13312 (_2!36713 lt!2404014)) (c!1204232 lt!2404032))))))

(declare-fun b!6556130 () Bool)

(declare-fun e!3969105 () Bool)

(assert (=> b!6556130 (= e!3969105 (matchR!8614 (derivativeStep!5115 lt!2404032 (head!13312 (_2!36713 lt!2404014))) (tail!12397 (_2!36713 lt!2404014))))))

(declare-fun b!6556131 () Bool)

(declare-fun res!2689965 () Bool)

(assert (=> b!6556131 (=> res!2689965 e!3969103)))

(assert (=> b!6556131 (= res!2689965 (not (isEmpty!37705 (tail!12397 (_2!36713 lt!2404014)))))))

(declare-fun b!6556132 () Bool)

(declare-fun res!2689962 () Bool)

(declare-fun e!3969106 () Bool)

(assert (=> b!6556132 (=> res!2689962 e!3969106)))

(assert (=> b!6556132 (= res!2689962 (not ((_ is ElementMatch!16431) lt!2404032)))))

(declare-fun e!3969101 () Bool)

(assert (=> b!6556132 (= e!3969101 e!3969106)))

(declare-fun b!6556133 () Bool)

(declare-fun res!2689966 () Bool)

(assert (=> b!6556133 (=> res!2689966 e!3969106)))

(declare-fun e!3969102 () Bool)

(assert (=> b!6556133 (= res!2689966 e!3969102)))

(declare-fun res!2689961 () Bool)

(assert (=> b!6556133 (=> (not res!2689961) (not e!3969102))))

(declare-fun lt!2404248 () Bool)

(assert (=> b!6556133 (= res!2689961 lt!2404248)))

(declare-fun b!6556134 () Bool)

(assert (=> b!6556134 (= e!3969105 (nullable!6424 lt!2404032))))

(declare-fun b!6556135 () Bool)

(declare-fun e!3969104 () Bool)

(assert (=> b!6556135 (= e!3969106 e!3969104)))

(declare-fun res!2689960 () Bool)

(assert (=> b!6556135 (=> (not res!2689960) (not e!3969104))))

(assert (=> b!6556135 (= res!2689960 (not lt!2404248))))

(declare-fun b!6556136 () Bool)

(declare-fun e!3969107 () Bool)

(declare-fun call!570244 () Bool)

(assert (=> b!6556136 (= e!3969107 (= lt!2404248 call!570244))))

(declare-fun b!6556137 () Bool)

(assert (=> b!6556137 (= e!3969101 (not lt!2404248))))

(declare-fun b!6556138 () Bool)

(assert (=> b!6556138 (= e!3969107 e!3969101)))

(declare-fun c!1204526 () Bool)

(assert (=> b!6556138 (= c!1204526 ((_ is EmptyLang!16431) lt!2404032))))

(declare-fun d!2057277 () Bool)

(assert (=> d!2057277 e!3969107))

(declare-fun c!1204525 () Bool)

(assert (=> d!2057277 (= c!1204525 ((_ is EmptyExpr!16431) lt!2404032))))

(assert (=> d!2057277 (= lt!2404248 e!3969105)))

(declare-fun c!1204524 () Bool)

(assert (=> d!2057277 (= c!1204524 (isEmpty!37705 (_2!36713 lt!2404014)))))

(assert (=> d!2057277 (validRegex!8167 lt!2404032)))

(assert (=> d!2057277 (= (matchR!8614 lt!2404032 (_2!36713 lt!2404014)) lt!2404248)))

(declare-fun b!6556129 () Bool)

(declare-fun res!2689967 () Bool)

(assert (=> b!6556129 (=> (not res!2689967) (not e!3969102))))

(assert (=> b!6556129 (= res!2689967 (isEmpty!37705 (tail!12397 (_2!36713 lt!2404014))))))

(declare-fun b!6556139 () Bool)

(declare-fun res!2689963 () Bool)

(assert (=> b!6556139 (=> (not res!2689963) (not e!3969102))))

(assert (=> b!6556139 (= res!2689963 (not call!570244))))

(declare-fun b!6556140 () Bool)

(assert (=> b!6556140 (= e!3969104 e!3969103)))

(declare-fun res!2689964 () Bool)

(assert (=> b!6556140 (=> res!2689964 e!3969103)))

(assert (=> b!6556140 (= res!2689964 call!570244)))

(declare-fun bm!570239 () Bool)

(assert (=> bm!570239 (= call!570244 (isEmpty!37705 (_2!36713 lt!2404014)))))

(declare-fun b!6556141 () Bool)

(assert (=> b!6556141 (= e!3969102 (= (head!13312 (_2!36713 lt!2404014)) (c!1204232 lt!2404032)))))

(assert (= (and d!2057277 c!1204524) b!6556134))

(assert (= (and d!2057277 (not c!1204524)) b!6556130))

(assert (= (and d!2057277 c!1204525) b!6556136))

(assert (= (and d!2057277 (not c!1204525)) b!6556138))

(assert (= (and b!6556138 c!1204526) b!6556137))

(assert (= (and b!6556138 (not c!1204526)) b!6556132))

(assert (= (and b!6556132 (not res!2689962)) b!6556133))

(assert (= (and b!6556133 res!2689961) b!6556139))

(assert (= (and b!6556139 res!2689963) b!6556129))

(assert (= (and b!6556129 res!2689967) b!6556141))

(assert (= (and b!6556133 (not res!2689966)) b!6556135))

(assert (= (and b!6556135 res!2689960) b!6556140))

(assert (= (and b!6556140 (not res!2689964)) b!6556131))

(assert (= (and b!6556131 (not res!2689965)) b!6556128))

(assert (= (or b!6556136 b!6556139 b!6556140) bm!570239))

(assert (=> bm!570239 m!7338148))

(declare-fun m!7338322 () Bool)

(assert (=> b!6556134 m!7338322))

(assert (=> b!6556131 m!7338156))

(assert (=> b!6556131 m!7338156))

(declare-fun m!7338324 () Bool)

(assert (=> b!6556131 m!7338324))

(assert (=> b!6556128 m!7338152))

(assert (=> d!2057277 m!7338148))

(declare-fun m!7338326 () Bool)

(assert (=> d!2057277 m!7338326))

(assert (=> b!6556130 m!7338152))

(assert (=> b!6556130 m!7338152))

(declare-fun m!7338328 () Bool)

(assert (=> b!6556130 m!7338328))

(assert (=> b!6556130 m!7338156))

(assert (=> b!6556130 m!7338328))

(assert (=> b!6556130 m!7338156))

(declare-fun m!7338330 () Bool)

(assert (=> b!6556130 m!7338330))

(assert (=> b!6556141 m!7338152))

(assert (=> b!6556129 m!7338156))

(assert (=> b!6556129 m!7338156))

(assert (=> b!6556129 m!7338324))

(assert (=> b!6555074 d!2057277))

(declare-fun bs!1673347 () Bool)

(declare-fun b!6556151 () Bool)

(assert (= bs!1673347 (and b!6556151 b!6555075)))

(declare-fun lambda!364420 () Int)

(assert (=> bs!1673347 (not (= lambda!364420 lambda!364325))))

(declare-fun bs!1673348 () Bool)

(assert (= bs!1673348 (and b!6556151 b!6555880)))

(assert (=> bs!1673348 (= (and (= (reg!16760 lt!2404025) (reg!16760 r!7292)) (= lt!2404025 r!7292)) (= lambda!364420 lambda!364396))))

(declare-fun bs!1673349 () Bool)

(assert (= bs!1673349 (and b!6556151 b!6555605)))

(assert (=> bs!1673349 (not (= lambda!364420 lambda!364371))))

(declare-fun bs!1673350 () Bool)

(assert (= bs!1673350 (and b!6556151 b!6555074)))

(assert (=> bs!1673350 (not (= lambda!364420 lambda!364331))))

(assert (=> bs!1673347 (not (= lambda!364420 lambda!364326))))

(assert (=> bs!1673350 (not (= lambda!364420 lambda!364330))))

(declare-fun bs!1673351 () Bool)

(assert (= bs!1673351 (and b!6556151 b!6555614)))

(assert (=> bs!1673351 (= (and (= (reg!16760 lt!2404025) (reg!16760 lt!2404041)) (= lt!2404025 lt!2404041)) (= lambda!364420 lambda!364370))))

(declare-fun bs!1673352 () Bool)

(assert (= bs!1673352 (and b!6556151 b!6555871)))

(assert (=> bs!1673352 (not (= lambda!364420 lambda!364398))))

(declare-fun bs!1673353 () Bool)

(assert (= bs!1673353 (and b!6556151 d!2057257)))

(assert (=> bs!1673353 (not (= lambda!364420 lambda!364414))))

(declare-fun bs!1673354 () Bool)

(assert (= bs!1673354 (and b!6556151 b!6555563)))

(assert (=> bs!1673354 (not (= lambda!364420 lambda!364366))))

(assert (=> bs!1673353 (not (= lambda!364420 lambda!364413))))

(declare-fun bs!1673355 () Bool)

(assert (= bs!1673355 (and b!6556151 b!6555572)))

(assert (=> bs!1673355 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (reg!16760 lt!2404025) (reg!16760 lt!2404040)) (= lt!2404025 lt!2404040)) (= lambda!364420 lambda!364365))))

(declare-fun bs!1673356 () Bool)

(assert (= bs!1673356 (and b!6556151 d!2057255)))

(assert (=> bs!1673356 (not (= lambda!364420 lambda!364408))))

(assert (=> b!6556151 true))

(assert (=> b!6556151 true))

(declare-fun bs!1673357 () Bool)

(declare-fun b!6556142 () Bool)

(assert (= bs!1673357 (and b!6556142 b!6555075)))

(declare-fun lambda!364421 () Int)

(assert (=> bs!1673357 (not (= lambda!364421 lambda!364325))))

(declare-fun bs!1673358 () Bool)

(assert (= bs!1673358 (and b!6556142 b!6555880)))

(assert (=> bs!1673358 (not (= lambda!364421 lambda!364396))))

(declare-fun bs!1673359 () Bool)

(assert (= bs!1673359 (and b!6556142 b!6556151)))

(assert (=> bs!1673359 (not (= lambda!364421 lambda!364420))))

(declare-fun bs!1673360 () Bool)

(assert (= bs!1673360 (and b!6556142 b!6555605)))

(assert (=> bs!1673360 (= (and (= (regOne!33374 lt!2404025) (regOne!33374 lt!2404041)) (= (regTwo!33374 lt!2404025) (regTwo!33374 lt!2404041))) (= lambda!364421 lambda!364371))))

(declare-fun bs!1673361 () Bool)

(assert (= bs!1673361 (and b!6556142 b!6555074)))

(assert (=> bs!1673361 (= (and (= (regOne!33374 lt!2404025) lt!2404040) (= (regTwo!33374 lt!2404025) (regTwo!33374 r!7292))) (= lambda!364421 lambda!364331))))

(assert (=> bs!1673357 (= (and (= (regOne!33374 lt!2404025) (regOne!33374 r!7292)) (= (regTwo!33374 lt!2404025) (regTwo!33374 r!7292))) (= lambda!364421 lambda!364326))))

(assert (=> bs!1673361 (not (= lambda!364421 lambda!364330))))

(declare-fun bs!1673362 () Bool)

(assert (= bs!1673362 (and b!6556142 b!6555614)))

(assert (=> bs!1673362 (not (= lambda!364421 lambda!364370))))

(declare-fun bs!1673363 () Bool)

(assert (= bs!1673363 (and b!6556142 b!6555871)))

(assert (=> bs!1673363 (= (and (= (regOne!33374 lt!2404025) (regOne!33374 r!7292)) (= (regTwo!33374 lt!2404025) (regTwo!33374 r!7292))) (= lambda!364421 lambda!364398))))

(declare-fun bs!1673364 () Bool)

(assert (= bs!1673364 (and b!6556142 d!2057257)))

(assert (=> bs!1673364 (= (and (= (regOne!33374 lt!2404025) (regOne!33374 r!7292)) (= (regTwo!33374 lt!2404025) (regTwo!33374 r!7292))) (= lambda!364421 lambda!364414))))

(declare-fun bs!1673365 () Bool)

(assert (= bs!1673365 (and b!6556142 b!6555563)))

(assert (=> bs!1673365 (= (and (= s!2326 (_1!36713 lt!2404008)) (= (regOne!33374 lt!2404025) (regOne!33374 lt!2404040)) (= (regTwo!33374 lt!2404025) (regTwo!33374 lt!2404040))) (= lambda!364421 lambda!364366))))

(assert (=> bs!1673364 (not (= lambda!364421 lambda!364413))))

(declare-fun bs!1673366 () Bool)

(assert (= bs!1673366 (and b!6556142 b!6555572)))

(assert (=> bs!1673366 (not (= lambda!364421 lambda!364365))))

(declare-fun bs!1673367 () Bool)

(assert (= bs!1673367 (and b!6556142 d!2057255)))

(assert (=> bs!1673367 (not (= lambda!364421 lambda!364408))))

(assert (=> b!6556142 true))

(assert (=> b!6556142 true))

(declare-fun e!3969111 () Bool)

(declare-fun call!570245 () Bool)

(assert (=> b!6556142 (= e!3969111 call!570245)))

(declare-fun d!2057279 () Bool)

(declare-fun c!1204529 () Bool)

(assert (=> d!2057279 (= c!1204529 ((_ is EmptyExpr!16431) lt!2404025))))

(declare-fun e!3969113 () Bool)

(assert (=> d!2057279 (= (matchRSpec!3532 lt!2404025 s!2326) e!3969113)))

(declare-fun bm!570240 () Bool)

(declare-fun call!570246 () Bool)

(assert (=> bm!570240 (= call!570246 (isEmpty!37705 s!2326))))

(declare-fun b!6556143 () Bool)

(declare-fun e!3969108 () Bool)

(assert (=> b!6556143 (= e!3969108 (matchRSpec!3532 (regTwo!33375 lt!2404025) s!2326))))

(declare-fun b!6556144 () Bool)

(declare-fun c!1204527 () Bool)

(assert (=> b!6556144 (= c!1204527 ((_ is ElementMatch!16431) lt!2404025))))

(declare-fun e!3969112 () Bool)

(declare-fun e!3969110 () Bool)

(assert (=> b!6556144 (= e!3969112 e!3969110)))

(declare-fun b!6556145 () Bool)

(assert (=> b!6556145 (= e!3969110 (= s!2326 (Cons!65469 (c!1204232 lt!2404025) Nil!65469)))))

(declare-fun b!6556146 () Bool)

(assert (=> b!6556146 (= e!3969113 call!570246)))

(declare-fun c!1204528 () Bool)

(declare-fun bm!570241 () Bool)

(assert (=> bm!570241 (= call!570245 (Exists!3501 (ite c!1204528 lambda!364420 lambda!364421)))))

(declare-fun b!6556147 () Bool)

(declare-fun res!2689970 () Bool)

(declare-fun e!3969114 () Bool)

(assert (=> b!6556147 (=> res!2689970 e!3969114)))

(assert (=> b!6556147 (= res!2689970 call!570246)))

(assert (=> b!6556147 (= e!3969111 e!3969114)))

(declare-fun b!6556148 () Bool)

(assert (=> b!6556148 (= e!3969113 e!3969112)))

(declare-fun res!2689968 () Bool)

(assert (=> b!6556148 (= res!2689968 (not ((_ is EmptyLang!16431) lt!2404025)))))

(assert (=> b!6556148 (=> (not res!2689968) (not e!3969112))))

(declare-fun b!6556149 () Bool)

(declare-fun e!3969109 () Bool)

(assert (=> b!6556149 (= e!3969109 e!3969108)))

(declare-fun res!2689969 () Bool)

(assert (=> b!6556149 (= res!2689969 (matchRSpec!3532 (regOne!33375 lt!2404025) s!2326))))

(assert (=> b!6556149 (=> res!2689969 e!3969108)))

(declare-fun b!6556150 () Bool)

(declare-fun c!1204530 () Bool)

(assert (=> b!6556150 (= c!1204530 ((_ is Union!16431) lt!2404025))))

(assert (=> b!6556150 (= e!3969110 e!3969109)))

(assert (=> b!6556151 (= e!3969114 call!570245)))

(declare-fun b!6556152 () Bool)

(assert (=> b!6556152 (= e!3969109 e!3969111)))

(assert (=> b!6556152 (= c!1204528 ((_ is Star!16431) lt!2404025))))

(assert (= (and d!2057279 c!1204529) b!6556146))

(assert (= (and d!2057279 (not c!1204529)) b!6556148))

(assert (= (and b!6556148 res!2689968) b!6556144))

(assert (= (and b!6556144 c!1204527) b!6556145))

(assert (= (and b!6556144 (not c!1204527)) b!6556150))

(assert (= (and b!6556150 c!1204530) b!6556149))

(assert (= (and b!6556150 (not c!1204530)) b!6556152))

(assert (= (and b!6556149 (not res!2689969)) b!6556143))

(assert (= (and b!6556152 c!1204528) b!6556147))

(assert (= (and b!6556152 (not c!1204528)) b!6556142))

(assert (= (and b!6556147 (not res!2689970)) b!6556151))

(assert (= (or b!6556151 b!6556142) bm!570241))

(assert (= (or b!6556146 b!6556147) bm!570240))

(assert (=> bm!570240 m!7337822))

(declare-fun m!7338332 () Bool)

(assert (=> b!6556143 m!7338332))

(declare-fun m!7338334 () Bool)

(assert (=> bm!570241 m!7338334))

(declare-fun m!7338336 () Bool)

(assert (=> b!6556149 m!7338336))

(assert (=> b!6555074 d!2057279))

(declare-fun d!2057281 () Bool)

(assert (=> d!2057281 (= (matchR!8614 (Concat!25276 (Concat!25276 (reg!16760 (regOne!33374 r!7292)) lt!2404015) (regTwo!33374 r!7292)) s!2326) (matchR!8614 (Concat!25276 (reg!16760 (regOne!33374 r!7292)) (Concat!25276 lt!2404015 (regTwo!33374 r!7292))) s!2326))))

(declare-fun lt!2404251 () Unit!159059)

(declare-fun choose!48851 (Regex!16431 Regex!16431 Regex!16431 List!65593) Unit!159059)

(assert (=> d!2057281 (= lt!2404251 (choose!48851 (reg!16760 (regOne!33374 r!7292)) lt!2404015 (regTwo!33374 r!7292) s!2326))))

(declare-fun e!3969117 () Bool)

(assert (=> d!2057281 e!3969117))

(declare-fun res!2689975 () Bool)

(assert (=> d!2057281 (=> (not res!2689975) (not e!3969117))))

(assert (=> d!2057281 (= res!2689975 (validRegex!8167 (reg!16760 (regOne!33374 r!7292))))))

(assert (=> d!2057281 (= (lemmaConcatAssociative!128 (reg!16760 (regOne!33374 r!7292)) lt!2404015 (regTwo!33374 r!7292) s!2326) lt!2404251)))

(declare-fun b!6556157 () Bool)

(declare-fun res!2689976 () Bool)

(assert (=> b!6556157 (=> (not res!2689976) (not e!3969117))))

(assert (=> b!6556157 (= res!2689976 (validRegex!8167 lt!2404015))))

(declare-fun b!6556158 () Bool)

(assert (=> b!6556158 (= e!3969117 (validRegex!8167 (regTwo!33374 r!7292)))))

(assert (= (and d!2057281 res!2689975) b!6556157))

(assert (= (and b!6556157 res!2689976) b!6556158))

(declare-fun m!7338338 () Bool)

(assert (=> d!2057281 m!7338338))

(declare-fun m!7338340 () Bool)

(assert (=> d!2057281 m!7338340))

(declare-fun m!7338342 () Bool)

(assert (=> d!2057281 m!7338342))

(assert (=> d!2057281 m!7337354))

(assert (=> b!6556157 m!7337228))

(declare-fun m!7338344 () Bool)

(assert (=> b!6556158 m!7338344))

(assert (=> b!6555074 d!2057281))

(declare-fun bs!1673368 () Bool)

(declare-fun d!2057283 () Bool)

(assert (= bs!1673368 (and d!2057283 d!2057191)))

(declare-fun lambda!364424 () Int)

(assert (=> bs!1673368 (= lambda!364424 lambda!364393)))

(declare-fun bs!1673369 () Bool)

(assert (= bs!1673369 (and d!2057283 d!2057205)))

(assert (=> bs!1673369 (= lambda!364424 lambda!364395)))

(declare-fun bs!1673370 () Bool)

(assert (= bs!1673370 (and d!2057283 d!2057217)))

(assert (=> bs!1673370 (= lambda!364424 lambda!364402)))

(declare-fun bs!1673371 () Bool)

(assert (= bs!1673371 (and d!2057283 d!2057229)))

(assert (=> bs!1673371 (= lambda!364424 lambda!364405)))

(declare-fun bs!1673372 () Bool)

(assert (= bs!1673372 (and d!2057283 b!6555056)))

(assert (=> bs!1673372 (= lambda!364424 lambda!364329)))

(declare-fun bs!1673373 () Bool)

(assert (= bs!1673373 (and d!2057283 d!2057013)))

(assert (=> bs!1673373 (= lambda!364424 lambda!364355)))

(assert (=> d!2057283 (matchZipper!2443 (store ((as const (Array Context!11630 Bool)) false) (Context!11631 (++!14564 (exprs!6315 lt!2404013) (exprs!6315 lt!2404006))) true) (++!14565 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(declare-fun lt!2404257 () Unit!159059)

(assert (=> d!2057283 (= lt!2404257 (lemmaConcatPreservesForall!404 (exprs!6315 lt!2404013) (exprs!6315 lt!2404006) lambda!364424))))

(declare-fun lt!2404256 () Unit!159059)

(declare-fun choose!48852 (Context!11630 Context!11630 List!65593 List!65593) Unit!159059)

(assert (=> d!2057283 (= lt!2404256 (choose!48852 lt!2404013 lt!2404006 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(assert (=> d!2057283 (matchZipper!2443 (store ((as const (Array Context!11630 Bool)) false) lt!2404013 true) (_1!36713 lt!2404014))))

(assert (=> d!2057283 (= (lemmaConcatenateContextMatchesConcatOfStrings!212 lt!2404013 lt!2404006 (_1!36713 lt!2404014) (_2!36713 lt!2404014)) lt!2404256)))

(declare-fun bs!1673374 () Bool)

(assert (= bs!1673374 d!2057283))

(declare-fun m!7338346 () Bool)

(assert (=> bs!1673374 m!7338346))

(declare-fun m!7338348 () Bool)

(assert (=> bs!1673374 m!7338348))

(declare-fun m!7338350 () Bool)

(assert (=> bs!1673374 m!7338350))

(assert (=> bs!1673374 m!7338350))

(assert (=> bs!1673374 m!7337344))

(declare-fun m!7338352 () Bool)

(assert (=> bs!1673374 m!7338352))

(assert (=> bs!1673374 m!7337252))

(declare-fun m!7338354 () Bool)

(assert (=> bs!1673374 m!7338354))

(declare-fun m!7338356 () Bool)

(assert (=> bs!1673374 m!7338356))

(assert (=> bs!1673374 m!7337252))

(assert (=> bs!1673374 m!7337344))

(assert (=> b!6555074 d!2057283))

(declare-fun d!2057285 () Bool)

(assert (=> d!2057285 (matchR!8614 (Concat!25276 (reg!16760 (regOne!33374 r!7292)) lt!2404032) (++!14565 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(declare-fun lt!2404260 () Unit!159059)

(declare-fun choose!48853 (Regex!16431 Regex!16431 List!65593 List!65593) Unit!159059)

(assert (=> d!2057285 (= lt!2404260 (choose!48853 (reg!16760 (regOne!33374 r!7292)) lt!2404032 (_1!36713 lt!2404014) (_2!36713 lt!2404014)))))

(declare-fun e!3969120 () Bool)

(assert (=> d!2057285 e!3969120))

(declare-fun res!2689979 () Bool)

(assert (=> d!2057285 (=> (not res!2689979) (not e!3969120))))

(assert (=> d!2057285 (= res!2689979 (validRegex!8167 (reg!16760 (regOne!33374 r!7292))))))

(assert (=> d!2057285 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!352 (reg!16760 (regOne!33374 r!7292)) lt!2404032 (_1!36713 lt!2404014) (_2!36713 lt!2404014)) lt!2404260)))

(declare-fun b!6556161 () Bool)

(assert (=> b!6556161 (= e!3969120 (validRegex!8167 lt!2404032))))

(assert (= (and d!2057285 res!2689979) b!6556161))

(assert (=> d!2057285 m!7337344))

(assert (=> d!2057285 m!7337344))

(declare-fun m!7338358 () Bool)

(assert (=> d!2057285 m!7338358))

(declare-fun m!7338360 () Bool)

(assert (=> d!2057285 m!7338360))

(assert (=> d!2057285 m!7337354))

(assert (=> b!6556161 m!7338326))

(assert (=> b!6555074 d!2057285))

(declare-fun d!2057287 () Bool)

(assert (=> d!2057287 (= (get!22728 lt!2404020) (v!52506 lt!2404020))))

(assert (=> b!6555074 d!2057287))

(declare-fun d!2057289 () Bool)

(declare-fun e!3969123 () Bool)

(assert (=> d!2057289 e!3969123))

(declare-fun res!2689983 () Bool)

(assert (=> d!2057289 (=> res!2689983 e!3969123)))

(declare-fun e!3969124 () Bool)

(assert (=> d!2057289 (= res!2689983 e!3969124)))

(declare-fun res!2689982 () Bool)

(assert (=> d!2057289 (=> (not res!2689982) (not e!3969124))))

(declare-fun lt!2404261 () Option!16322)

(assert (=> d!2057289 (= res!2689982 (isDefined!13025 lt!2404261))))

(declare-fun e!3969125 () Option!16322)

(assert (=> d!2057289 (= lt!2404261 e!3969125)))

(declare-fun c!1204531 () Bool)

(declare-fun e!3969122 () Bool)

(assert (=> d!2057289 (= c!1204531 e!3969122)))

(declare-fun res!2689981 () Bool)

(assert (=> d!2057289 (=> (not res!2689981) (not e!3969122))))

(assert (=> d!2057289 (= res!2689981 (matchR!8614 lt!2404040 Nil!65469))))

(assert (=> d!2057289 (validRegex!8167 lt!2404040)))

(assert (=> d!2057289 (= (findConcatSeparation!2736 lt!2404040 (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326) lt!2404261)))

(declare-fun b!6556162 () Bool)

(assert (=> b!6556162 (= e!3969124 (= (++!14565 (_1!36713 (get!22728 lt!2404261)) (_2!36713 (get!22728 lt!2404261))) s!2326))))

(declare-fun b!6556163 () Bool)

(assert (=> b!6556163 (= e!3969123 (not (isDefined!13025 lt!2404261)))))

(declare-fun b!6556164 () Bool)

(declare-fun res!2689984 () Bool)

(assert (=> b!6556164 (=> (not res!2689984) (not e!3969124))))

(assert (=> b!6556164 (= res!2689984 (matchR!8614 (regTwo!33374 r!7292) (_2!36713 (get!22728 lt!2404261))))))

(declare-fun b!6556165 () Bool)

(declare-fun e!3969121 () Option!16322)

(assert (=> b!6556165 (= e!3969121 None!16321)))

(declare-fun b!6556166 () Bool)

(assert (=> b!6556166 (= e!3969125 e!3969121)))

(declare-fun c!1204532 () Bool)

(assert (=> b!6556166 (= c!1204532 ((_ is Nil!65469) s!2326))))

(declare-fun b!6556167 () Bool)

(declare-fun lt!2404262 () Unit!159059)

(declare-fun lt!2404263 () Unit!159059)

(assert (=> b!6556167 (= lt!2404262 lt!2404263)))

(assert (=> b!6556167 (= (++!14565 (++!14565 Nil!65469 (Cons!65469 (h!71917 s!2326) Nil!65469)) (t!379235 s!2326)) s!2326)))

(assert (=> b!6556167 (= lt!2404263 (lemmaMoveElementToOtherListKeepsConcatEq!2574 Nil!65469 (h!71917 s!2326) (t!379235 s!2326) s!2326))))

(assert (=> b!6556167 (= e!3969121 (findConcatSeparation!2736 lt!2404040 (regTwo!33374 r!7292) (++!14565 Nil!65469 (Cons!65469 (h!71917 s!2326) Nil!65469)) (t!379235 s!2326) s!2326))))

(declare-fun b!6556168 () Bool)

(assert (=> b!6556168 (= e!3969122 (matchR!8614 (regTwo!33374 r!7292) s!2326))))

(declare-fun b!6556169 () Bool)

(declare-fun res!2689980 () Bool)

(assert (=> b!6556169 (=> (not res!2689980) (not e!3969124))))

(assert (=> b!6556169 (= res!2689980 (matchR!8614 lt!2404040 (_1!36713 (get!22728 lt!2404261))))))

(declare-fun b!6556170 () Bool)

(assert (=> b!6556170 (= e!3969125 (Some!16321 (tuple2!66821 Nil!65469 s!2326)))))

(assert (= (and d!2057289 res!2689981) b!6556168))

(assert (= (and d!2057289 c!1204531) b!6556170))

(assert (= (and d!2057289 (not c!1204531)) b!6556166))

(assert (= (and b!6556166 c!1204532) b!6556165))

(assert (= (and b!6556166 (not c!1204532)) b!6556167))

(assert (= (and d!2057289 res!2689982) b!6556169))

(assert (= (and b!6556169 res!2689980) b!6556164))

(assert (= (and b!6556164 res!2689984) b!6556162))

(assert (= (and d!2057289 (not res!2689983)) b!6556163))

(declare-fun m!7338362 () Bool)

(assert (=> b!6556164 m!7338362))

(declare-fun m!7338364 () Bool)

(assert (=> b!6556164 m!7338364))

(assert (=> b!6556169 m!7338362))

(declare-fun m!7338366 () Bool)

(assert (=> b!6556169 m!7338366))

(assert (=> b!6556162 m!7338362))

(declare-fun m!7338368 () Bool)

(assert (=> b!6556162 m!7338368))

(declare-fun m!7338370 () Bool)

(assert (=> d!2057289 m!7338370))

(declare-fun m!7338372 () Bool)

(assert (=> d!2057289 m!7338372))

(assert (=> d!2057289 m!7337794))

(assert (=> b!6556163 m!7338370))

(assert (=> b!6556167 m!7338040))

(assert (=> b!6556167 m!7338040))

(assert (=> b!6556167 m!7338042))

(assert (=> b!6556167 m!7338044))

(assert (=> b!6556167 m!7338040))

(declare-fun m!7338374 () Bool)

(assert (=> b!6556167 m!7338374))

(assert (=> b!6556168 m!7338258))

(assert (=> b!6555074 d!2057289))

(declare-fun b!6556171 () Bool)

(declare-fun e!3969128 () Bool)

(assert (=> b!6556171 (= e!3969128 (not (= (head!13312 (_1!36713 lt!2404008)) (c!1204232 lt!2404040))))))

(declare-fun b!6556173 () Bool)

(declare-fun e!3969130 () Bool)

(assert (=> b!6556173 (= e!3969130 (matchR!8614 (derivativeStep!5115 lt!2404040 (head!13312 (_1!36713 lt!2404008))) (tail!12397 (_1!36713 lt!2404008))))))

(declare-fun b!6556174 () Bool)

(declare-fun res!2689990 () Bool)

(assert (=> b!6556174 (=> res!2689990 e!3969128)))

(assert (=> b!6556174 (= res!2689990 (not (isEmpty!37705 (tail!12397 (_1!36713 lt!2404008)))))))

(declare-fun b!6556175 () Bool)

(declare-fun res!2689987 () Bool)

(declare-fun e!3969131 () Bool)

(assert (=> b!6556175 (=> res!2689987 e!3969131)))

(assert (=> b!6556175 (= res!2689987 (not ((_ is ElementMatch!16431) lt!2404040)))))

(declare-fun e!3969126 () Bool)

(assert (=> b!6556175 (= e!3969126 e!3969131)))

(declare-fun b!6556176 () Bool)

(declare-fun res!2689991 () Bool)

(assert (=> b!6556176 (=> res!2689991 e!3969131)))

(declare-fun e!3969127 () Bool)

(assert (=> b!6556176 (= res!2689991 e!3969127)))

(declare-fun res!2689986 () Bool)

(assert (=> b!6556176 (=> (not res!2689986) (not e!3969127))))

(declare-fun lt!2404264 () Bool)

(assert (=> b!6556176 (= res!2689986 lt!2404264)))

(declare-fun b!6556177 () Bool)

(assert (=> b!6556177 (= e!3969130 (nullable!6424 lt!2404040))))

(declare-fun b!6556178 () Bool)

(declare-fun e!3969129 () Bool)

(assert (=> b!6556178 (= e!3969131 e!3969129)))

(declare-fun res!2689985 () Bool)

(assert (=> b!6556178 (=> (not res!2689985) (not e!3969129))))

(assert (=> b!6556178 (= res!2689985 (not lt!2404264))))

(declare-fun b!6556179 () Bool)

(declare-fun e!3969132 () Bool)

(declare-fun call!570247 () Bool)

(assert (=> b!6556179 (= e!3969132 (= lt!2404264 call!570247))))

(declare-fun b!6556180 () Bool)

(assert (=> b!6556180 (= e!3969126 (not lt!2404264))))

(declare-fun b!6556181 () Bool)

(assert (=> b!6556181 (= e!3969132 e!3969126)))

(declare-fun c!1204535 () Bool)

(assert (=> b!6556181 (= c!1204535 ((_ is EmptyLang!16431) lt!2404040))))

(declare-fun d!2057291 () Bool)

(assert (=> d!2057291 e!3969132))

(declare-fun c!1204534 () Bool)

(assert (=> d!2057291 (= c!1204534 ((_ is EmptyExpr!16431) lt!2404040))))

(assert (=> d!2057291 (= lt!2404264 e!3969130)))

(declare-fun c!1204533 () Bool)

(assert (=> d!2057291 (= c!1204533 (isEmpty!37705 (_1!36713 lt!2404008)))))

(assert (=> d!2057291 (validRegex!8167 lt!2404040)))

(assert (=> d!2057291 (= (matchR!8614 lt!2404040 (_1!36713 lt!2404008)) lt!2404264)))

(declare-fun b!6556172 () Bool)

(declare-fun res!2689992 () Bool)

(assert (=> b!6556172 (=> (not res!2689992) (not e!3969127))))

(assert (=> b!6556172 (= res!2689992 (isEmpty!37705 (tail!12397 (_1!36713 lt!2404008))))))

(declare-fun b!6556182 () Bool)

(declare-fun res!2689988 () Bool)

(assert (=> b!6556182 (=> (not res!2689988) (not e!3969127))))

(assert (=> b!6556182 (= res!2689988 (not call!570247))))

(declare-fun b!6556183 () Bool)

(assert (=> b!6556183 (= e!3969129 e!3969128)))

(declare-fun res!2689989 () Bool)

(assert (=> b!6556183 (=> res!2689989 e!3969128)))

(assert (=> b!6556183 (= res!2689989 call!570247)))

(declare-fun bm!570242 () Bool)

(assert (=> bm!570242 (= call!570247 (isEmpty!37705 (_1!36713 lt!2404008)))))

(declare-fun b!6556184 () Bool)

(assert (=> b!6556184 (= e!3969127 (= (head!13312 (_1!36713 lt!2404008)) (c!1204232 lt!2404040)))))

(assert (= (and d!2057291 c!1204533) b!6556177))

(assert (= (and d!2057291 (not c!1204533)) b!6556173))

(assert (= (and d!2057291 c!1204534) b!6556179))

(assert (= (and d!2057291 (not c!1204534)) b!6556181))

(assert (= (and b!6556181 c!1204535) b!6556180))

(assert (= (and b!6556181 (not c!1204535)) b!6556175))

(assert (= (and b!6556175 (not res!2689987)) b!6556176))

(assert (= (and b!6556176 res!2689986) b!6556182))

(assert (= (and b!6556182 res!2689988) b!6556172))

(assert (= (and b!6556172 res!2689992) b!6556184))

(assert (= (and b!6556176 (not res!2689991)) b!6556178))

(assert (= (and b!6556178 res!2689985) b!6556183))

(assert (= (and b!6556183 (not res!2689989)) b!6556174))

(assert (= (and b!6556174 (not res!2689990)) b!6556171))

(assert (= (or b!6556179 b!6556182 b!6556183) bm!570242))

(assert (=> bm!570242 m!7337778))

(declare-fun m!7338376 () Bool)

(assert (=> b!6556177 m!7338376))

(declare-fun m!7338378 () Bool)

(assert (=> b!6556174 m!7338378))

(assert (=> b!6556174 m!7338378))

(declare-fun m!7338380 () Bool)

(assert (=> b!6556174 m!7338380))

(declare-fun m!7338382 () Bool)

(assert (=> b!6556171 m!7338382))

(assert (=> d!2057291 m!7337778))

(assert (=> d!2057291 m!7337794))

(assert (=> b!6556173 m!7338382))

(assert (=> b!6556173 m!7338382))

(declare-fun m!7338384 () Bool)

(assert (=> b!6556173 m!7338384))

(assert (=> b!6556173 m!7338378))

(assert (=> b!6556173 m!7338384))

(assert (=> b!6556173 m!7338378))

(declare-fun m!7338386 () Bool)

(assert (=> b!6556173 m!7338386))

(assert (=> b!6556184 m!7338382))

(assert (=> b!6556172 m!7338378))

(assert (=> b!6556172 m!7338378))

(assert (=> b!6556172 m!7338380))

(assert (=> b!6555074 d!2057291))

(declare-fun d!2057293 () Bool)

(assert (=> d!2057293 (= (matchR!8614 lt!2404032 (_2!36713 lt!2404014)) (matchZipper!2443 lt!2404018 (_2!36713 lt!2404014)))))

(declare-fun lt!2404265 () Unit!159059)

(assert (=> d!2057293 (= lt!2404265 (choose!48848 lt!2404018 lt!2404046 lt!2404032 (_2!36713 lt!2404014)))))

(assert (=> d!2057293 (validRegex!8167 lt!2404032)))

(assert (=> d!2057293 (= (theoremZipperRegexEquiv!867 lt!2404018 lt!2404046 lt!2404032 (_2!36713 lt!2404014)) lt!2404265)))

(declare-fun bs!1673375 () Bool)

(assert (= bs!1673375 d!2057293))

(assert (=> bs!1673375 m!7337306))

(assert (=> bs!1673375 m!7337226))

(declare-fun m!7338388 () Bool)

(assert (=> bs!1673375 m!7338388))

(assert (=> bs!1673375 m!7338326))

(assert (=> b!6555074 d!2057293))

(declare-fun d!2057295 () Bool)

(declare-fun c!1204536 () Bool)

(assert (=> d!2057295 (= c!1204536 (isEmpty!37705 lt!2404055))))

(declare-fun e!3969133 () Bool)

(assert (=> d!2057295 (= (matchZipper!2443 (store ((as const (Array Context!11630 Bool)) false) (Context!11631 (++!14564 lt!2404058 lt!2404017)) true) lt!2404055) e!3969133)))

(declare-fun b!6556185 () Bool)

(assert (=> b!6556185 (= e!3969133 (nullableZipper!2175 (store ((as const (Array Context!11630 Bool)) false) (Context!11631 (++!14564 lt!2404058 lt!2404017)) true)))))

(declare-fun b!6556186 () Bool)

(assert (=> b!6556186 (= e!3969133 (matchZipper!2443 (derivationStepZipper!2397 (store ((as const (Array Context!11630 Bool)) false) (Context!11631 (++!14564 lt!2404058 lt!2404017)) true) (head!13312 lt!2404055)) (tail!12397 lt!2404055)))))

(assert (= (and d!2057295 c!1204536) b!6556185))

(assert (= (and d!2057295 (not c!1204536)) b!6556186))

(assert (=> d!2057295 m!7338310))

(assert (=> b!6556185 m!7337232))

(declare-fun m!7338390 () Bool)

(assert (=> b!6556185 m!7338390))

(assert (=> b!6556186 m!7338316))

(assert (=> b!6556186 m!7337232))

(assert (=> b!6556186 m!7338316))

(declare-fun m!7338392 () Bool)

(assert (=> b!6556186 m!7338392))

(assert (=> b!6556186 m!7338312))

(assert (=> b!6556186 m!7338392))

(assert (=> b!6556186 m!7338312))

(declare-fun m!7338394 () Bool)

(assert (=> b!6556186 m!7338394))

(assert (=> b!6555074 d!2057295))

(declare-fun d!2057297 () Bool)

(assert (=> d!2057297 (= (Exists!3501 lambda!364330) (choose!48841 lambda!364330))))

(declare-fun bs!1673376 () Bool)

(assert (= bs!1673376 d!2057297))

(declare-fun m!7338396 () Bool)

(assert (=> bs!1673376 m!7338396))

(assert (=> b!6555074 d!2057297))

(declare-fun d!2057299 () Bool)

(assert (=> d!2057299 (= (matchR!8614 lt!2404025 s!2326) (matchRSpec!3532 lt!2404025 s!2326))))

(declare-fun lt!2404266 () Unit!159059)

(assert (=> d!2057299 (= lt!2404266 (choose!48832 lt!2404025 s!2326))))

(assert (=> d!2057299 (validRegex!8167 lt!2404025)))

(assert (=> d!2057299 (= (mainMatchTheorem!3532 lt!2404025 s!2326) lt!2404266)))

(declare-fun bs!1673377 () Bool)

(assert (= bs!1673377 d!2057299))

(assert (=> bs!1673377 m!7337312))

(assert (=> bs!1673377 m!7337322))

(declare-fun m!7338398 () Bool)

(assert (=> bs!1673377 m!7338398))

(declare-fun m!7338400 () Bool)

(assert (=> bs!1673377 m!7338400))

(assert (=> b!6555074 d!2057299))

(declare-fun bs!1673378 () Bool)

(declare-fun d!2057301 () Bool)

(assert (= bs!1673378 (and d!2057301 b!6555075)))

(declare-fun lambda!364425 () Int)

(assert (=> bs!1673378 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364425 lambda!364325))))

(declare-fun bs!1673379 () Bool)

(assert (= bs!1673379 (and d!2057301 b!6555880)))

(assert (=> bs!1673379 (not (= lambda!364425 lambda!364396))))

(declare-fun bs!1673380 () Bool)

(assert (= bs!1673380 (and d!2057301 b!6556151)))

(assert (=> bs!1673380 (not (= lambda!364425 lambda!364420))))

(declare-fun bs!1673381 () Bool)

(assert (= bs!1673381 (and d!2057301 b!6555605)))

(assert (=> bs!1673381 (not (= lambda!364425 lambda!364371))))

(declare-fun bs!1673382 () Bool)

(assert (= bs!1673382 (and d!2057301 b!6555074)))

(assert (=> bs!1673382 (not (= lambda!364425 lambda!364331))))

(assert (=> bs!1673378 (not (= lambda!364425 lambda!364326))))

(declare-fun bs!1673383 () Bool)

(assert (= bs!1673383 (and d!2057301 b!6556142)))

(assert (=> bs!1673383 (not (= lambda!364425 lambda!364421))))

(assert (=> bs!1673382 (= lambda!364425 lambda!364330)))

(declare-fun bs!1673384 () Bool)

(assert (= bs!1673384 (and d!2057301 b!6555614)))

(assert (=> bs!1673384 (not (= lambda!364425 lambda!364370))))

(declare-fun bs!1673385 () Bool)

(assert (= bs!1673385 (and d!2057301 b!6555871)))

(assert (=> bs!1673385 (not (= lambda!364425 lambda!364398))))

(declare-fun bs!1673386 () Bool)

(assert (= bs!1673386 (and d!2057301 d!2057257)))

(assert (=> bs!1673386 (not (= lambda!364425 lambda!364414))))

(declare-fun bs!1673387 () Bool)

(assert (= bs!1673387 (and d!2057301 b!6555563)))

(assert (=> bs!1673387 (not (= lambda!364425 lambda!364366))))

(assert (=> bs!1673386 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364425 lambda!364413))))

(declare-fun bs!1673388 () Bool)

(assert (= bs!1673388 (and d!2057301 b!6555572)))

(assert (=> bs!1673388 (not (= lambda!364425 lambda!364365))))

(declare-fun bs!1673389 () Bool)

(assert (= bs!1673389 (and d!2057301 d!2057255)))

(assert (=> bs!1673389 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364425 lambda!364408))))

(assert (=> d!2057301 true))

(assert (=> d!2057301 true))

(assert (=> d!2057301 true))

(assert (=> d!2057301 (= (isDefined!13025 (findConcatSeparation!2736 lt!2404040 (regTwo!33374 r!7292) Nil!65469 s!2326 s!2326)) (Exists!3501 lambda!364425))))

(declare-fun lt!2404267 () Unit!159059)

(assert (=> d!2057301 (= lt!2404267 (choose!48843 lt!2404040 (regTwo!33374 r!7292) s!2326))))

(assert (=> d!2057301 (validRegex!8167 lt!2404040)))

(assert (=> d!2057301 (= (lemmaFindConcatSeparationEquivalentToExists!2500 lt!2404040 (regTwo!33374 r!7292) s!2326) lt!2404267)))

(declare-fun bs!1673390 () Bool)

(assert (= bs!1673390 d!2057301))

(assert (=> bs!1673390 m!7337318))

(assert (=> bs!1673390 m!7337794))

(declare-fun m!7338402 () Bool)

(assert (=> bs!1673390 m!7338402))

(assert (=> bs!1673390 m!7337318))

(declare-fun m!7338404 () Bool)

(assert (=> bs!1673390 m!7338404))

(declare-fun m!7338406 () Bool)

(assert (=> bs!1673390 m!7338406))

(assert (=> b!6555074 d!2057301))

(declare-fun d!2057303 () Bool)

(assert (=> d!2057303 (= (Exists!3501 lambda!364331) (choose!48841 lambda!364331))))

(declare-fun bs!1673391 () Bool)

(assert (= bs!1673391 d!2057303))

(declare-fun m!7338408 () Bool)

(assert (=> bs!1673391 m!7338408))

(assert (=> b!6555074 d!2057303))

(declare-fun bs!1673392 () Bool)

(declare-fun d!2057305 () Bool)

(assert (= bs!1673392 (and d!2057305 d!2057301)))

(declare-fun lambda!364426 () Int)

(assert (=> bs!1673392 (= lambda!364426 lambda!364425)))

(declare-fun bs!1673393 () Bool)

(assert (= bs!1673393 (and d!2057305 b!6555075)))

(assert (=> bs!1673393 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364426 lambda!364325))))

(declare-fun bs!1673394 () Bool)

(assert (= bs!1673394 (and d!2057305 b!6555880)))

(assert (=> bs!1673394 (not (= lambda!364426 lambda!364396))))

(declare-fun bs!1673395 () Bool)

(assert (= bs!1673395 (and d!2057305 b!6556151)))

(assert (=> bs!1673395 (not (= lambda!364426 lambda!364420))))

(declare-fun bs!1673396 () Bool)

(assert (= bs!1673396 (and d!2057305 b!6555605)))

(assert (=> bs!1673396 (not (= lambda!364426 lambda!364371))))

(declare-fun bs!1673397 () Bool)

(assert (= bs!1673397 (and d!2057305 b!6555074)))

(assert (=> bs!1673397 (not (= lambda!364426 lambda!364331))))

(assert (=> bs!1673393 (not (= lambda!364426 lambda!364326))))

(declare-fun bs!1673398 () Bool)

(assert (= bs!1673398 (and d!2057305 b!6556142)))

(assert (=> bs!1673398 (not (= lambda!364426 lambda!364421))))

(assert (=> bs!1673397 (= lambda!364426 lambda!364330)))

(declare-fun bs!1673399 () Bool)

(assert (= bs!1673399 (and d!2057305 b!6555614)))

(assert (=> bs!1673399 (not (= lambda!364426 lambda!364370))))

(declare-fun bs!1673400 () Bool)

(assert (= bs!1673400 (and d!2057305 b!6555871)))

(assert (=> bs!1673400 (not (= lambda!364426 lambda!364398))))

(declare-fun bs!1673401 () Bool)

(assert (= bs!1673401 (and d!2057305 d!2057257)))

(assert (=> bs!1673401 (not (= lambda!364426 lambda!364414))))

(declare-fun bs!1673402 () Bool)

(assert (= bs!1673402 (and d!2057305 b!6555563)))

(assert (=> bs!1673402 (not (= lambda!364426 lambda!364366))))

(assert (=> bs!1673401 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364426 lambda!364413))))

(declare-fun bs!1673403 () Bool)

(assert (= bs!1673403 (and d!2057305 b!6555572)))

(assert (=> bs!1673403 (not (= lambda!364426 lambda!364365))))

(declare-fun bs!1673404 () Bool)

(assert (= bs!1673404 (and d!2057305 d!2057255)))

(assert (=> bs!1673404 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364426 lambda!364408))))

(assert (=> d!2057305 true))

(assert (=> d!2057305 true))

(assert (=> d!2057305 true))

(declare-fun lambda!364427 () Int)

(assert (=> bs!1673392 (not (= lambda!364427 lambda!364425))))

(assert (=> bs!1673393 (not (= lambda!364427 lambda!364325))))

(assert (=> bs!1673394 (not (= lambda!364427 lambda!364396))))

(assert (=> bs!1673395 (not (= lambda!364427 lambda!364420))))

(assert (=> bs!1673396 (= (and (= lt!2404040 (regOne!33374 lt!2404041)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404041))) (= lambda!364427 lambda!364371))))

(assert (=> bs!1673397 (= lambda!364427 lambda!364331)))

(declare-fun bs!1673405 () Bool)

(assert (= bs!1673405 d!2057305))

(assert (=> bs!1673405 (not (= lambda!364427 lambda!364426))))

(assert (=> bs!1673393 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364427 lambda!364326))))

(assert (=> bs!1673398 (= (and (= lt!2404040 (regOne!33374 lt!2404025)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404025))) (= lambda!364427 lambda!364421))))

(assert (=> bs!1673397 (not (= lambda!364427 lambda!364330))))

(assert (=> bs!1673399 (not (= lambda!364427 lambda!364370))))

(assert (=> bs!1673400 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364427 lambda!364398))))

(assert (=> bs!1673401 (= (= lt!2404040 (regOne!33374 r!7292)) (= lambda!364427 lambda!364414))))

(assert (=> bs!1673402 (= (and (= s!2326 (_1!36713 lt!2404008)) (= lt!2404040 (regOne!33374 lt!2404040)) (= (regTwo!33374 r!7292) (regTwo!33374 lt!2404040))) (= lambda!364427 lambda!364366))))

(assert (=> bs!1673401 (not (= lambda!364427 lambda!364413))))

(assert (=> bs!1673403 (not (= lambda!364427 lambda!364365))))

(assert (=> bs!1673404 (not (= lambda!364427 lambda!364408))))

(assert (=> d!2057305 true))

(assert (=> d!2057305 true))

(assert (=> d!2057305 true))

(assert (=> d!2057305 (= (Exists!3501 lambda!364426) (Exists!3501 lambda!364427))))

(declare-fun lt!2404268 () Unit!159059)

(assert (=> d!2057305 (= lt!2404268 (choose!48844 lt!2404040 (regTwo!33374 r!7292) s!2326))))

(assert (=> d!2057305 (validRegex!8167 lt!2404040)))

(assert (=> d!2057305 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2038 lt!2404040 (regTwo!33374 r!7292) s!2326) lt!2404268)))

(declare-fun m!7338410 () Bool)

(assert (=> bs!1673405 m!7338410))

(declare-fun m!7338412 () Bool)

(assert (=> bs!1673405 m!7338412))

(declare-fun m!7338414 () Bool)

(assert (=> bs!1673405 m!7338414))

(assert (=> bs!1673405 m!7337794))

(assert (=> b!6555074 d!2057305))

(declare-fun b!6556187 () Bool)

(declare-fun e!3969136 () Bool)

(assert (=> b!6556187 (= e!3969136 (not (= (head!13312 s!2326) (c!1204232 lt!2404025))))))

(declare-fun b!6556189 () Bool)

(declare-fun e!3969138 () Bool)

(assert (=> b!6556189 (= e!3969138 (matchR!8614 (derivativeStep!5115 lt!2404025 (head!13312 s!2326)) (tail!12397 s!2326)))))

(declare-fun b!6556190 () Bool)

(declare-fun res!2689998 () Bool)

(assert (=> b!6556190 (=> res!2689998 e!3969136)))

(assert (=> b!6556190 (= res!2689998 (not (isEmpty!37705 (tail!12397 s!2326))))))

(declare-fun b!6556191 () Bool)

(declare-fun res!2689995 () Bool)

(declare-fun e!3969139 () Bool)

(assert (=> b!6556191 (=> res!2689995 e!3969139)))

(assert (=> b!6556191 (= res!2689995 (not ((_ is ElementMatch!16431) lt!2404025)))))

(declare-fun e!3969134 () Bool)

(assert (=> b!6556191 (= e!3969134 e!3969139)))

(declare-fun b!6556192 () Bool)

(declare-fun res!2689999 () Bool)

(assert (=> b!6556192 (=> res!2689999 e!3969139)))

(declare-fun e!3969135 () Bool)

(assert (=> b!6556192 (= res!2689999 e!3969135)))

(declare-fun res!2689994 () Bool)

(assert (=> b!6556192 (=> (not res!2689994) (not e!3969135))))

(declare-fun lt!2404269 () Bool)

(assert (=> b!6556192 (= res!2689994 lt!2404269)))

(declare-fun b!6556193 () Bool)

(assert (=> b!6556193 (= e!3969138 (nullable!6424 lt!2404025))))

(declare-fun b!6556194 () Bool)

(declare-fun e!3969137 () Bool)

(assert (=> b!6556194 (= e!3969139 e!3969137)))

(declare-fun res!2689993 () Bool)

(assert (=> b!6556194 (=> (not res!2689993) (not e!3969137))))

(assert (=> b!6556194 (= res!2689993 (not lt!2404269))))

(declare-fun b!6556195 () Bool)

(declare-fun e!3969140 () Bool)

(declare-fun call!570248 () Bool)

(assert (=> b!6556195 (= e!3969140 (= lt!2404269 call!570248))))

(declare-fun b!6556196 () Bool)

(assert (=> b!6556196 (= e!3969134 (not lt!2404269))))

(declare-fun b!6556197 () Bool)

(assert (=> b!6556197 (= e!3969140 e!3969134)))

(declare-fun c!1204539 () Bool)

(assert (=> b!6556197 (= c!1204539 ((_ is EmptyLang!16431) lt!2404025))))

(declare-fun d!2057307 () Bool)

(assert (=> d!2057307 e!3969140))

(declare-fun c!1204538 () Bool)

(assert (=> d!2057307 (= c!1204538 ((_ is EmptyExpr!16431) lt!2404025))))

(assert (=> d!2057307 (= lt!2404269 e!3969138)))

(declare-fun c!1204537 () Bool)

(assert (=> d!2057307 (= c!1204537 (isEmpty!37705 s!2326))))

(assert (=> d!2057307 (validRegex!8167 lt!2404025)))

(assert (=> d!2057307 (= (matchR!8614 lt!2404025 s!2326) lt!2404269)))

(declare-fun b!6556188 () Bool)

(declare-fun res!2690000 () Bool)

(assert (=> b!6556188 (=> (not res!2690000) (not e!3969135))))

(assert (=> b!6556188 (= res!2690000 (isEmpty!37705 (tail!12397 s!2326)))))

(declare-fun b!6556198 () Bool)

(declare-fun res!2689996 () Bool)

(assert (=> b!6556198 (=> (not res!2689996) (not e!3969135))))

(assert (=> b!6556198 (= res!2689996 (not call!570248))))

(declare-fun b!6556199 () Bool)

(assert (=> b!6556199 (= e!3969137 e!3969136)))

(declare-fun res!2689997 () Bool)

(assert (=> b!6556199 (=> res!2689997 e!3969136)))

(assert (=> b!6556199 (= res!2689997 call!570248)))

(declare-fun bm!570243 () Bool)

(assert (=> bm!570243 (= call!570248 (isEmpty!37705 s!2326))))

(declare-fun b!6556200 () Bool)

(assert (=> b!6556200 (= e!3969135 (= (head!13312 s!2326) (c!1204232 lt!2404025)))))

(assert (= (and d!2057307 c!1204537) b!6556193))

(assert (= (and d!2057307 (not c!1204537)) b!6556189))

(assert (= (and d!2057307 c!1204538) b!6556195))

(assert (= (and d!2057307 (not c!1204538)) b!6556197))

(assert (= (and b!6556197 c!1204539) b!6556196))

(assert (= (and b!6556197 (not c!1204539)) b!6556191))

(assert (= (and b!6556191 (not res!2689995)) b!6556192))

(assert (= (and b!6556192 res!2689994) b!6556198))

(assert (= (and b!6556198 res!2689996) b!6556188))

(assert (= (and b!6556188 res!2690000) b!6556200))

(assert (= (and b!6556192 (not res!2689999)) b!6556194))

(assert (= (and b!6556194 res!2689993) b!6556199))

(assert (= (and b!6556199 (not res!2689997)) b!6556190))

(assert (= (and b!6556190 (not res!2689998)) b!6556187))

(assert (= (or b!6556195 b!6556198 b!6556199) bm!570243))

(assert (=> bm!570243 m!7337822))

(declare-fun m!7338416 () Bool)

(assert (=> b!6556193 m!7338416))

(assert (=> b!6556190 m!7337864))

(assert (=> b!6556190 m!7337864))

(assert (=> b!6556190 m!7337866))

(assert (=> b!6556187 m!7337868))

(assert (=> d!2057307 m!7337822))

(assert (=> d!2057307 m!7338400))

(assert (=> b!6556189 m!7337868))

(assert (=> b!6556189 m!7337868))

(declare-fun m!7338418 () Bool)

(assert (=> b!6556189 m!7338418))

(assert (=> b!6556189 m!7337864))

(assert (=> b!6556189 m!7338418))

(assert (=> b!6556189 m!7337864))

(declare-fun m!7338420 () Bool)

(assert (=> b!6556189 m!7338420))

(assert (=> b!6556200 m!7337868))

(assert (=> b!6556188 m!7337864))

(assert (=> b!6556188 m!7337864))

(assert (=> b!6556188 m!7337866))

(assert (=> b!6555074 d!2057307))

(assert (=> b!6555074 d!2057267))

(declare-fun b!6556201 () Bool)

(declare-fun e!3969143 () Bool)

(assert (=> b!6556201 (= e!3969143 (not (= (head!13312 (_1!36713 lt!2404014)) (c!1204232 (reg!16760 (regOne!33374 r!7292))))))))

(declare-fun b!6556203 () Bool)

(declare-fun e!3969145 () Bool)

(assert (=> b!6556203 (= e!3969145 (matchR!8614 (derivativeStep!5115 (reg!16760 (regOne!33374 r!7292)) (head!13312 (_1!36713 lt!2404014))) (tail!12397 (_1!36713 lt!2404014))))))

(declare-fun b!6556204 () Bool)

(declare-fun res!2690006 () Bool)

(assert (=> b!6556204 (=> res!2690006 e!3969143)))

(assert (=> b!6556204 (= res!2690006 (not (isEmpty!37705 (tail!12397 (_1!36713 lt!2404014)))))))

(declare-fun b!6556205 () Bool)

(declare-fun res!2690003 () Bool)

(declare-fun e!3969146 () Bool)

(assert (=> b!6556205 (=> res!2690003 e!3969146)))

(assert (=> b!6556205 (= res!2690003 (not ((_ is ElementMatch!16431) (reg!16760 (regOne!33374 r!7292)))))))

(declare-fun e!3969141 () Bool)

(assert (=> b!6556205 (= e!3969141 e!3969146)))

(declare-fun b!6556206 () Bool)

(declare-fun res!2690007 () Bool)

(assert (=> b!6556206 (=> res!2690007 e!3969146)))

(declare-fun e!3969142 () Bool)

(assert (=> b!6556206 (= res!2690007 e!3969142)))

(declare-fun res!2690002 () Bool)

(assert (=> b!6556206 (=> (not res!2690002) (not e!3969142))))

(declare-fun lt!2404270 () Bool)

(assert (=> b!6556206 (= res!2690002 lt!2404270)))

(declare-fun b!6556207 () Bool)

(assert (=> b!6556207 (= e!3969145 (nullable!6424 (reg!16760 (regOne!33374 r!7292))))))

(declare-fun b!6556208 () Bool)

(declare-fun e!3969144 () Bool)

(assert (=> b!6556208 (= e!3969146 e!3969144)))

(declare-fun res!2690001 () Bool)

(assert (=> b!6556208 (=> (not res!2690001) (not e!3969144))))

(assert (=> b!6556208 (= res!2690001 (not lt!2404270))))

(declare-fun b!6556209 () Bool)

(declare-fun e!3969147 () Bool)

(declare-fun call!570249 () Bool)

(assert (=> b!6556209 (= e!3969147 (= lt!2404270 call!570249))))

(declare-fun b!6556210 () Bool)

(assert (=> b!6556210 (= e!3969141 (not lt!2404270))))

(declare-fun b!6556211 () Bool)

(assert (=> b!6556211 (= e!3969147 e!3969141)))

(declare-fun c!1204542 () Bool)

(assert (=> b!6556211 (= c!1204542 ((_ is EmptyLang!16431) (reg!16760 (regOne!33374 r!7292))))))

(declare-fun d!2057309 () Bool)

(assert (=> d!2057309 e!3969147))

(declare-fun c!1204541 () Bool)

(assert (=> d!2057309 (= c!1204541 ((_ is EmptyExpr!16431) (reg!16760 (regOne!33374 r!7292))))))

(assert (=> d!2057309 (= lt!2404270 e!3969145)))

(declare-fun c!1204540 () Bool)

(assert (=> d!2057309 (= c!1204540 (isEmpty!37705 (_1!36713 lt!2404014)))))

(assert (=> d!2057309 (validRegex!8167 (reg!16760 (regOne!33374 r!7292)))))

(assert (=> d!2057309 (= (matchR!8614 (reg!16760 (regOne!33374 r!7292)) (_1!36713 lt!2404014)) lt!2404270)))

(declare-fun b!6556202 () Bool)

(declare-fun res!2690008 () Bool)

(assert (=> b!6556202 (=> (not res!2690008) (not e!3969142))))

(assert (=> b!6556202 (= res!2690008 (isEmpty!37705 (tail!12397 (_1!36713 lt!2404014))))))

(declare-fun b!6556212 () Bool)

(declare-fun res!2690004 () Bool)

(assert (=> b!6556212 (=> (not res!2690004) (not e!3969142))))

(assert (=> b!6556212 (= res!2690004 (not call!570249))))

(declare-fun b!6556213 () Bool)

(assert (=> b!6556213 (= e!3969144 e!3969143)))

(declare-fun res!2690005 () Bool)

(assert (=> b!6556213 (=> res!2690005 e!3969143)))

(assert (=> b!6556213 (= res!2690005 call!570249)))

(declare-fun bm!570244 () Bool)

(assert (=> bm!570244 (= call!570249 (isEmpty!37705 (_1!36713 lt!2404014)))))

(declare-fun b!6556214 () Bool)

(assert (=> b!6556214 (= e!3969142 (= (head!13312 (_1!36713 lt!2404014)) (c!1204232 (reg!16760 (regOne!33374 r!7292)))))))

(assert (= (and d!2057309 c!1204540) b!6556207))

(assert (= (and d!2057309 (not c!1204540)) b!6556203))

(assert (= (and d!2057309 c!1204541) b!6556209))

(assert (= (and d!2057309 (not c!1204541)) b!6556211))

(assert (= (and b!6556211 c!1204542) b!6556210))

(assert (= (and b!6556211 (not c!1204542)) b!6556205))

(assert (= (and b!6556205 (not res!2690003)) b!6556206))

(assert (= (and b!6556206 res!2690002) b!6556212))

(assert (= (and b!6556212 res!2690004) b!6556202))

(assert (= (and b!6556202 res!2690008) b!6556214))

(assert (= (and b!6556206 (not res!2690007)) b!6556208))

(assert (= (and b!6556208 res!2690001) b!6556213))

(assert (= (and b!6556213 (not res!2690005)) b!6556204))

(assert (= (and b!6556204 (not res!2690006)) b!6556201))

(assert (= (or b!6556209 b!6556212 b!6556213) bm!570244))

(assert (=> bm!570244 m!7337564))

(declare-fun m!7338422 () Bool)

(assert (=> b!6556207 m!7338422))

(assert (=> b!6556204 m!7337572))

(assert (=> b!6556204 m!7337572))

(declare-fun m!7338424 () Bool)

(assert (=> b!6556204 m!7338424))

(assert (=> b!6556201 m!7337568))

(assert (=> d!2057309 m!7337564))

(assert (=> d!2057309 m!7337354))

(assert (=> b!6556203 m!7337568))

(assert (=> b!6556203 m!7337568))

(declare-fun m!7338426 () Bool)

(assert (=> b!6556203 m!7338426))

(assert (=> b!6556203 m!7337572))

(assert (=> b!6556203 m!7338426))

(assert (=> b!6556203 m!7337572))

(declare-fun m!7338428 () Bool)

(assert (=> b!6556203 m!7338428))

(assert (=> b!6556214 m!7337568))

(assert (=> b!6556202 m!7337572))

(assert (=> b!6556202 m!7337572))

(assert (=> b!6556202 m!7338424))

(assert (=> b!6555074 d!2057309))

(assert (=> b!6555074 d!2057269))

(declare-fun d!2057311 () Bool)

(declare-fun e!3969150 () Bool)

(assert (=> d!2057311 (= (matchZipper!2443 ((_ map or) lt!2404016 lt!2404033) (t!379235 s!2326)) e!3969150)))

(declare-fun res!2690011 () Bool)

(assert (=> d!2057311 (=> res!2690011 e!3969150)))

(assert (=> d!2057311 (= res!2690011 (matchZipper!2443 lt!2404016 (t!379235 s!2326)))))

(declare-fun lt!2404273 () Unit!159059)

(declare-fun choose!48854 ((InoxSet Context!11630) (InoxSet Context!11630) List!65593) Unit!159059)

(assert (=> d!2057311 (= lt!2404273 (choose!48854 lt!2404016 lt!2404033 (t!379235 s!2326)))))

(assert (=> d!2057311 (= (lemmaZipperConcatMatchesSameAsBothZippers!1262 lt!2404016 lt!2404033 (t!379235 s!2326)) lt!2404273)))

(declare-fun b!6556217 () Bool)

(assert (=> b!6556217 (= e!3969150 (matchZipper!2443 lt!2404033 (t!379235 s!2326)))))

(assert (= (and d!2057311 (not res!2690011)) b!6556217))

(assert (=> d!2057311 m!7337376))

(assert (=> d!2057311 m!7337292))

(declare-fun m!7338430 () Bool)

(assert (=> d!2057311 m!7338430))

(assert (=> b!6556217 m!7337224))

(assert (=> b!6555059 d!2057311))

(assert (=> b!6555059 d!2057195))

(declare-fun d!2057313 () Bool)

(declare-fun c!1204543 () Bool)

(assert (=> d!2057313 (= c!1204543 (isEmpty!37705 (t!379235 s!2326)))))

(declare-fun e!3969151 () Bool)

(assert (=> d!2057313 (= (matchZipper!2443 ((_ map or) lt!2404016 lt!2404033) (t!379235 s!2326)) e!3969151)))

(declare-fun b!6556218 () Bool)

(assert (=> b!6556218 (= e!3969151 (nullableZipper!2175 ((_ map or) lt!2404016 lt!2404033)))))

(declare-fun b!6556219 () Bool)

(assert (=> b!6556219 (= e!3969151 (matchZipper!2443 (derivationStepZipper!2397 ((_ map or) lt!2404016 lt!2404033) (head!13312 (t!379235 s!2326))) (tail!12397 (t!379235 s!2326))))))

(assert (= (and d!2057313 c!1204543) b!6556218))

(assert (= (and d!2057313 (not c!1204543)) b!6556219))

(assert (=> d!2057313 m!7337938))

(declare-fun m!7338432 () Bool)

(assert (=> b!6556218 m!7338432))

(assert (=> b!6556219 m!7337942))

(assert (=> b!6556219 m!7337942))

(declare-fun m!7338434 () Bool)

(assert (=> b!6556219 m!7338434))

(assert (=> b!6556219 m!7337946))

(assert (=> b!6556219 m!7338434))

(assert (=> b!6556219 m!7337946))

(declare-fun m!7338436 () Bool)

(assert (=> b!6556219 m!7338436))

(assert (=> b!6555059 d!2057313))

(assert (=> b!6555078 d!2057147))

(declare-fun b!6556220 () Bool)

(declare-fun e!3969157 () (InoxSet Context!11630))

(declare-fun e!3969152 () (InoxSet Context!11630))

(assert (=> b!6556220 (= e!3969157 e!3969152)))

(declare-fun c!1204544 () Bool)

(assert (=> b!6556220 (= c!1204544 ((_ is Concat!25276) (reg!16760 (regOne!33374 r!7292))))))

(declare-fun b!6556221 () Bool)

(declare-fun call!570250 () (InoxSet Context!11630))

(assert (=> b!6556221 (= e!3969152 call!570250)))

(declare-fun call!570253 () List!65592)

(declare-fun c!1204547 () Bool)

(declare-fun bm!570245 () Bool)

(declare-fun call!570255 () (InoxSet Context!11630))

(assert (=> bm!570245 (= call!570255 (derivationStepZipperDown!1679 (ite c!1204547 (regTwo!33375 (reg!16760 (regOne!33374 r!7292))) (regOne!33374 (reg!16760 (regOne!33374 r!7292)))) (ite c!1204547 lt!2404006 (Context!11631 call!570253)) (h!71917 s!2326)))))

(declare-fun b!6556222 () Bool)

(declare-fun e!3969156 () (InoxSet Context!11630))

(declare-fun e!3969154 () (InoxSet Context!11630))

(assert (=> b!6556222 (= e!3969156 e!3969154)))

(assert (=> b!6556222 (= c!1204547 ((_ is Union!16431) (reg!16760 (regOne!33374 r!7292))))))

(declare-fun b!6556223 () Bool)

(declare-fun call!570252 () (InoxSet Context!11630))

(assert (=> b!6556223 (= e!3969157 ((_ map or) call!570255 call!570252))))

(declare-fun d!2057315 () Bool)

(declare-fun c!1204546 () Bool)

(assert (=> d!2057315 (= c!1204546 (and ((_ is ElementMatch!16431) (reg!16760 (regOne!33374 r!7292))) (= (c!1204232 (reg!16760 (regOne!33374 r!7292))) (h!71917 s!2326))))))

(assert (=> d!2057315 (= (derivationStepZipperDown!1679 (reg!16760 (regOne!33374 r!7292)) lt!2404006 (h!71917 s!2326)) e!3969156)))

(declare-fun b!6556224 () Bool)

(assert (=> b!6556224 (= e!3969156 (store ((as const (Array Context!11630 Bool)) false) lt!2404006 true))))

(declare-fun b!6556225 () Bool)

(declare-fun c!1204548 () Bool)

(assert (=> b!6556225 (= c!1204548 ((_ is Star!16431) (reg!16760 (regOne!33374 r!7292))))))

(declare-fun e!3969153 () (InoxSet Context!11630))

(assert (=> b!6556225 (= e!3969152 e!3969153)))

(declare-fun b!6556226 () Bool)

(assert (=> b!6556226 (= e!3969153 ((as const (Array Context!11630 Bool)) false))))

(declare-fun b!6556227 () Bool)

(declare-fun call!570251 () (InoxSet Context!11630))

(assert (=> b!6556227 (= e!3969154 ((_ map or) call!570251 call!570255))))

(declare-fun b!6556228 () Bool)

(declare-fun c!1204545 () Bool)

(declare-fun e!3969155 () Bool)

(assert (=> b!6556228 (= c!1204545 e!3969155)))

(declare-fun res!2690012 () Bool)

(assert (=> b!6556228 (=> (not res!2690012) (not e!3969155))))

(assert (=> b!6556228 (= res!2690012 ((_ is Concat!25276) (reg!16760 (regOne!33374 r!7292))))))

(assert (=> b!6556228 (= e!3969154 e!3969157)))

(declare-fun bm!570246 () Bool)

(declare-fun call!570254 () List!65592)

(assert (=> bm!570246 (= call!570254 call!570253)))

(declare-fun bm!570247 () Bool)

(assert (=> bm!570247 (= call!570252 call!570251)))

(declare-fun b!6556229 () Bool)

(assert (=> b!6556229 (= e!3969153 call!570250)))

(declare-fun bm!570248 () Bool)

(assert (=> bm!570248 (= call!570251 (derivationStepZipperDown!1679 (ite c!1204547 (regOne!33375 (reg!16760 (regOne!33374 r!7292))) (ite c!1204545 (regTwo!33374 (reg!16760 (regOne!33374 r!7292))) (ite c!1204544 (regOne!33374 (reg!16760 (regOne!33374 r!7292))) (reg!16760 (reg!16760 (regOne!33374 r!7292)))))) (ite (or c!1204547 c!1204545) lt!2404006 (Context!11631 call!570254)) (h!71917 s!2326)))))

(declare-fun bm!570249 () Bool)

(assert (=> bm!570249 (= call!570253 ($colon$colon!2272 (exprs!6315 lt!2404006) (ite (or c!1204545 c!1204544) (regTwo!33374 (reg!16760 (regOne!33374 r!7292))) (reg!16760 (regOne!33374 r!7292)))))))

(declare-fun b!6556230 () Bool)

(assert (=> b!6556230 (= e!3969155 (nullable!6424 (regOne!33374 (reg!16760 (regOne!33374 r!7292)))))))

(declare-fun bm!570250 () Bool)

(assert (=> bm!570250 (= call!570250 call!570252)))

(assert (= (and d!2057315 c!1204546) b!6556224))

(assert (= (and d!2057315 (not c!1204546)) b!6556222))

(assert (= (and b!6556222 c!1204547) b!6556227))

(assert (= (and b!6556222 (not c!1204547)) b!6556228))

(assert (= (and b!6556228 res!2690012) b!6556230))

(assert (= (and b!6556228 c!1204545) b!6556223))

(assert (= (and b!6556228 (not c!1204545)) b!6556220))

(assert (= (and b!6556220 c!1204544) b!6556221))

(assert (= (and b!6556220 (not c!1204544)) b!6556225))

(assert (= (and b!6556225 c!1204548) b!6556229))

(assert (= (and b!6556225 (not c!1204548)) b!6556226))

(assert (= (or b!6556221 b!6556229) bm!570246))

(assert (= (or b!6556221 b!6556229) bm!570250))

(assert (= (or b!6556223 bm!570246) bm!570249))

(assert (= (or b!6556223 bm!570250) bm!570247))

(assert (= (or b!6556227 b!6556223) bm!570245))

(assert (= (or b!6556227 bm!570247) bm!570248))

(declare-fun m!7338438 () Bool)

(assert (=> b!6556230 m!7338438))

(declare-fun m!7338440 () Bool)

(assert (=> bm!570248 m!7338440))

(assert (=> b!6556224 m!7337260))

(declare-fun m!7338442 () Bool)

(assert (=> bm!570245 m!7338442))

(declare-fun m!7338444 () Bool)

(assert (=> bm!570249 m!7338444))

(assert (=> b!6555057 d!2057315))

(declare-fun d!2057317 () Bool)

(assert (=> d!2057317 (= (nullable!6424 (regOne!33374 (regOne!33374 r!7292))) (nullableFct!2350 (regOne!33374 (regOne!33374 r!7292))))))

(declare-fun bs!1673406 () Bool)

(assert (= bs!1673406 d!2057317))

(declare-fun m!7338446 () Bool)

(assert (=> bs!1673406 m!7338446))

(assert (=> b!6555076 d!2057317))

(declare-fun d!2057319 () Bool)

(assert (=> d!2057319 (= (isEmpty!37702 (t!379236 zl!343)) ((_ is Nil!65470) (t!379236 zl!343)))))

(assert (=> b!6555077 d!2057319))

(declare-fun b!6556242 () Bool)

(declare-fun e!3969160 () Bool)

(declare-fun tp!1812016 () Bool)

(declare-fun tp!1812012 () Bool)

(assert (=> b!6556242 (= e!3969160 (and tp!1812016 tp!1812012))))

(declare-fun b!6556243 () Bool)

(declare-fun tp!1812015 () Bool)

(assert (=> b!6556243 (= e!3969160 tp!1812015)))

(declare-fun b!6556244 () Bool)

(declare-fun tp!1812014 () Bool)

(declare-fun tp!1812013 () Bool)

(assert (=> b!6556244 (= e!3969160 (and tp!1812014 tp!1812013))))

(declare-fun b!6556241 () Bool)

(assert (=> b!6556241 (= e!3969160 tp_is_empty!42115)))

(assert (=> b!6555060 (= tp!1811934 e!3969160)))

(assert (= (and b!6555060 ((_ is ElementMatch!16431) (regOne!33374 r!7292))) b!6556241))

(assert (= (and b!6555060 ((_ is Concat!25276) (regOne!33374 r!7292))) b!6556242))

(assert (= (and b!6555060 ((_ is Star!16431) (regOne!33374 r!7292))) b!6556243))

(assert (= (and b!6555060 ((_ is Union!16431) (regOne!33374 r!7292))) b!6556244))

(declare-fun b!6556246 () Bool)

(declare-fun e!3969161 () Bool)

(declare-fun tp!1812021 () Bool)

(declare-fun tp!1812017 () Bool)

(assert (=> b!6556246 (= e!3969161 (and tp!1812021 tp!1812017))))

(declare-fun b!6556247 () Bool)

(declare-fun tp!1812020 () Bool)

(assert (=> b!6556247 (= e!3969161 tp!1812020)))

(declare-fun b!6556248 () Bool)

(declare-fun tp!1812019 () Bool)

(declare-fun tp!1812018 () Bool)

(assert (=> b!6556248 (= e!3969161 (and tp!1812019 tp!1812018))))

(declare-fun b!6556245 () Bool)

(assert (=> b!6556245 (= e!3969161 tp_is_empty!42115)))

(assert (=> b!6555060 (= tp!1811936 e!3969161)))

(assert (= (and b!6555060 ((_ is ElementMatch!16431) (regTwo!33374 r!7292))) b!6556245))

(assert (= (and b!6555060 ((_ is Concat!25276) (regTwo!33374 r!7292))) b!6556246))

(assert (= (and b!6555060 ((_ is Star!16431) (regTwo!33374 r!7292))) b!6556247))

(assert (= (and b!6555060 ((_ is Union!16431) (regTwo!33374 r!7292))) b!6556248))

(declare-fun b!6556253 () Bool)

(declare-fun e!3969164 () Bool)

(declare-fun tp!1812024 () Bool)

(assert (=> b!6556253 (= e!3969164 (and tp_is_empty!42115 tp!1812024))))

(assert (=> b!6555064 (= tp!1811940 e!3969164)))

(assert (= (and b!6555064 ((_ is Cons!65469) (t!379235 s!2326))) b!6556253))

(declare-fun b!6556261 () Bool)

(declare-fun e!3969170 () Bool)

(declare-fun tp!1812029 () Bool)

(assert (=> b!6556261 (= e!3969170 tp!1812029)))

(declare-fun tp!1812030 () Bool)

(declare-fun b!6556260 () Bool)

(declare-fun e!3969169 () Bool)

(assert (=> b!6556260 (= e!3969169 (and (inv!84324 (h!71918 (t!379236 zl!343))) e!3969170 tp!1812030))))

(assert (=> b!6555085 (= tp!1811943 e!3969169)))

(assert (= b!6556260 b!6556261))

(assert (= (and b!6555085 ((_ is Cons!65470) (t!379236 zl!343))) b!6556260))

(declare-fun m!7338448 () Bool)

(assert (=> b!6556260 m!7338448))

(declare-fun condSetEmpty!44748 () Bool)

(assert (=> setNonEmpty!44742 (= condSetEmpty!44748 (= setRest!44742 ((as const (Array Context!11630 Bool)) false)))))

(declare-fun setRes!44748 () Bool)

(assert (=> setNonEmpty!44742 (= tp!1811937 setRes!44748)))

(declare-fun setIsEmpty!44748 () Bool)

(assert (=> setIsEmpty!44748 setRes!44748))

(declare-fun tp!1812035 () Bool)

(declare-fun e!3969173 () Bool)

(declare-fun setNonEmpty!44748 () Bool)

(declare-fun setElem!44748 () Context!11630)

(assert (=> setNonEmpty!44748 (= setRes!44748 (and tp!1812035 (inv!84324 setElem!44748) e!3969173))))

(declare-fun setRest!44748 () (InoxSet Context!11630))

(assert (=> setNonEmpty!44748 (= setRest!44742 ((_ map or) (store ((as const (Array Context!11630 Bool)) false) setElem!44748 true) setRest!44748))))

(declare-fun b!6556266 () Bool)

(declare-fun tp!1812036 () Bool)

(assert (=> b!6556266 (= e!3969173 tp!1812036)))

(assert (= (and setNonEmpty!44742 condSetEmpty!44748) setIsEmpty!44748))

(assert (= (and setNonEmpty!44742 (not condSetEmpty!44748)) setNonEmpty!44748))

(assert (= setNonEmpty!44748 b!6556266))

(declare-fun m!7338450 () Bool)

(assert (=> setNonEmpty!44748 m!7338450))

(declare-fun b!6556268 () Bool)

(declare-fun e!3969174 () Bool)

(declare-fun tp!1812041 () Bool)

(declare-fun tp!1812037 () Bool)

(assert (=> b!6556268 (= e!3969174 (and tp!1812041 tp!1812037))))

(declare-fun b!6556269 () Bool)

(declare-fun tp!1812040 () Bool)

(assert (=> b!6556269 (= e!3969174 tp!1812040)))

(declare-fun b!6556270 () Bool)

(declare-fun tp!1812039 () Bool)

(declare-fun tp!1812038 () Bool)

(assert (=> b!6556270 (= e!3969174 (and tp!1812039 tp!1812038))))

(declare-fun b!6556267 () Bool)

(assert (=> b!6556267 (= e!3969174 tp_is_empty!42115)))

(assert (=> b!6555068 (= tp!1811938 e!3969174)))

(assert (= (and b!6555068 ((_ is ElementMatch!16431) (regOne!33375 r!7292))) b!6556267))

(assert (= (and b!6555068 ((_ is Concat!25276) (regOne!33375 r!7292))) b!6556268))

(assert (= (and b!6555068 ((_ is Star!16431) (regOne!33375 r!7292))) b!6556269))

(assert (= (and b!6555068 ((_ is Union!16431) (regOne!33375 r!7292))) b!6556270))

(declare-fun b!6556272 () Bool)

(declare-fun e!3969175 () Bool)

(declare-fun tp!1812046 () Bool)

(declare-fun tp!1812042 () Bool)

(assert (=> b!6556272 (= e!3969175 (and tp!1812046 tp!1812042))))

(declare-fun b!6556273 () Bool)

(declare-fun tp!1812045 () Bool)

(assert (=> b!6556273 (= e!3969175 tp!1812045)))

(declare-fun b!6556274 () Bool)

(declare-fun tp!1812044 () Bool)

(declare-fun tp!1812043 () Bool)

(assert (=> b!6556274 (= e!3969175 (and tp!1812044 tp!1812043))))

(declare-fun b!6556271 () Bool)

(assert (=> b!6556271 (= e!3969175 tp_is_empty!42115)))

(assert (=> b!6555068 (= tp!1811941 e!3969175)))

(assert (= (and b!6555068 ((_ is ElementMatch!16431) (regTwo!33375 r!7292))) b!6556271))

(assert (= (and b!6555068 ((_ is Concat!25276) (regTwo!33375 r!7292))) b!6556272))

(assert (= (and b!6555068 ((_ is Star!16431) (regTwo!33375 r!7292))) b!6556273))

(assert (= (and b!6555068 ((_ is Union!16431) (regTwo!33375 r!7292))) b!6556274))

(declare-fun b!6556276 () Bool)

(declare-fun e!3969176 () Bool)

(declare-fun tp!1812051 () Bool)

(declare-fun tp!1812047 () Bool)

(assert (=> b!6556276 (= e!3969176 (and tp!1812051 tp!1812047))))

(declare-fun b!6556277 () Bool)

(declare-fun tp!1812050 () Bool)

(assert (=> b!6556277 (= e!3969176 tp!1812050)))

(declare-fun b!6556278 () Bool)

(declare-fun tp!1812049 () Bool)

(declare-fun tp!1812048 () Bool)

(assert (=> b!6556278 (= e!3969176 (and tp!1812049 tp!1812048))))

(declare-fun b!6556275 () Bool)

(assert (=> b!6556275 (= e!3969176 tp_is_empty!42115)))

(assert (=> b!6555088 (= tp!1811939 e!3969176)))

(assert (= (and b!6555088 ((_ is ElementMatch!16431) (reg!16760 r!7292))) b!6556275))

(assert (= (and b!6555088 ((_ is Concat!25276) (reg!16760 r!7292))) b!6556276))

(assert (= (and b!6555088 ((_ is Star!16431) (reg!16760 r!7292))) b!6556277))

(assert (= (and b!6555088 ((_ is Union!16431) (reg!16760 r!7292))) b!6556278))

(declare-fun b!6556283 () Bool)

(declare-fun e!3969179 () Bool)

(declare-fun tp!1812056 () Bool)

(declare-fun tp!1812057 () Bool)

(assert (=> b!6556283 (= e!3969179 (and tp!1812056 tp!1812057))))

(assert (=> b!6555058 (= tp!1811942 e!3969179)))

(assert (= (and b!6555058 ((_ is Cons!65468) (exprs!6315 setElem!44742))) b!6556283))

(declare-fun b!6556284 () Bool)

(declare-fun e!3969180 () Bool)

(declare-fun tp!1812058 () Bool)

(declare-fun tp!1812059 () Bool)

(assert (=> b!6556284 (= e!3969180 (and tp!1812058 tp!1812059))))

(assert (=> b!6555067 (= tp!1811935 e!3969180)))

(assert (= (and b!6555067 ((_ is Cons!65468) (exprs!6315 (h!71918 zl!343)))) b!6556284))

(declare-fun b_lambda!248071 () Bool)

(assert (= b_lambda!248049 (or b!6555082 b_lambda!248071)))

(declare-fun bs!1673407 () Bool)

(declare-fun d!2057321 () Bool)

(assert (= bs!1673407 (and d!2057321 b!6555082)))

(assert (=> bs!1673407 (= (dynLambda!26032 lambda!364327 lt!2404024) (derivationStepZipperUp!1605 lt!2404024 (h!71917 s!2326)))))

(assert (=> bs!1673407 m!7337204))

(assert (=> d!2057135 d!2057321))

(declare-fun b_lambda!248073 () Bool)

(assert (= b_lambda!248067 (or b!6555082 b_lambda!248073)))

(declare-fun bs!1673408 () Bool)

(declare-fun d!2057323 () Bool)

(assert (= bs!1673408 (and d!2057323 b!6555082)))

(assert (=> bs!1673408 (= (dynLambda!26032 lambda!364327 (h!71918 zl!343)) (derivationStepZipperUp!1605 (h!71918 zl!343) (h!71917 s!2326)))))

(assert (=> bs!1673408 m!7337364))

(assert (=> d!2057245 d!2057323))

(declare-fun b_lambda!248075 () Bool)

(assert (= b_lambda!248051 (or b!6555082 b_lambda!248075)))

(declare-fun bs!1673409 () Bool)

(declare-fun d!2057325 () Bool)

(assert (= bs!1673409 (and d!2057325 b!6555082)))

(assert (=> bs!1673409 (= (dynLambda!26032 lambda!364327 lt!2404006) (derivationStepZipperUp!1605 lt!2404006 (h!71917 s!2326)))))

(assert (=> bs!1673409 m!7337254))

(assert (=> d!2057177 d!2057325))

(declare-fun b_lambda!248077 () Bool)

(assert (= b_lambda!248053 (or b!6555082 b_lambda!248077)))

(declare-fun bs!1673410 () Bool)

(declare-fun d!2057327 () Bool)

(assert (= bs!1673410 (and d!2057327 b!6555082)))

(assert (=> bs!1673410 (= (dynLambda!26032 lambda!364327 lt!2404013) (derivationStepZipperUp!1605 lt!2404013 (h!71917 s!2326)))))

(assert (=> bs!1673410 m!7337246))

(assert (=> d!2057179 d!2057327))

(declare-fun b_lambda!248079 () Bool)

(assert (= b_lambda!248069 (or b!6555056 b_lambda!248079)))

(declare-fun bs!1673411 () Bool)

(declare-fun d!2057329 () Bool)

(assert (= bs!1673411 (and d!2057329 b!6555056)))

(declare-fun lt!2404274 () Unit!159059)

(assert (=> bs!1673411 (= lt!2404274 (lemmaConcatPreservesForall!404 (exprs!6315 lt!2404013) lt!2404017 lambda!364329))))

(assert (=> bs!1673411 (= (dynLambda!26034 lambda!364328 lt!2404013) (Context!11631 (++!14564 (exprs!6315 lt!2404013) lt!2404017)))))

(declare-fun m!7338452 () Bool)

(assert (=> bs!1673411 m!7338452))

(declare-fun m!7338454 () Bool)

(assert (=> bs!1673411 m!7338454))

(assert (=> d!2057263 d!2057329))

(check-sat (not b!6556277) (not bm!570166) (not b!6556115) (not d!2057307) (not d!2057269) (not b!6556158) (not b!6555862) (not b!6556174) (not b!6556273) (not b!6556086) (not b!6556168) (not b!6556217) (not d!2057267) (not b!6556011) (not b!6556117) (not bm!570241) (not d!2057305) (not d!2057285) (not b!6556184) (not bm!570238) (not b!6555564) (not b!6555835) (not bm!570215) (not d!2057197) (not bm!570199) (not b!6555872) (not d!2057151) (not b!6556019) (not b!6556190) (not b!6556230) (not bs!1673411) (not b!6556244) (not d!2057265) (not b!6555837) (not d!2057183) (not b!6555847) (not b!6556266) (not b!6555899) (not b!6556207) (not d!2057281) (not d!2057215) (not b!6555674) (not d!2057177) (not b!6555735) (not b!6556247) (not b!6556276) (not b!6555852) (not bm!570239) (not b!6556131) (not d!2057179) (not d!2057251) (not bm!570197) (not b!6555680) (not b!6555895) (not bm!570203) (not b!6556253) (not d!2057277) (not b!6555870) (not b!6556112) (not d!2057201) (not b_lambda!248071) (not bs!1673410) (not d!2057293) (not b!6555867) (not bm!570234) (not b!6556164) (not b!6555402) (not d!2057311) (not b!6556128) (not d!2057313) (not b!6556204) (not b!6556120) (not b!6556193) (not d!2057091) (not b!6556167) (not b_lambda!248073) (not b!6555708) (not b!6556162) (not b!6556186) (not b!6556127) (not bm!570243) (not bm!570240) (not d!2057187) (not b!6556143) (not b!6556248) (not b!6555676) (not d!2057203) (not b!6556283) (not b!6555724) (not d!2057259) (not b!6555865) (not d!2057235) (not b!6556201) (not bm!570210) (not b!6556260) (not b!6555841) (not d!2057255) (not bm!570183) (not b!6556177) (not b!6556203) (not b!6556114) (not d!2057241) (not b!6555405) (not d!2057301) (not bm!570212) (not b!6556129) (not b!6556000) (not b!6555894) (not b!6556218) (not b!6555836) (not b!6556116) (not b!6556272) (not d!2057217) (not bs!1673408) (not b!6555998) (not bm!570196) (not b!6556015) (not d!2057143) (not bm!570235) (not b!6555675) (not b!6556171) (not b!6556169) (not bm!570205) (not b!6556080) (not b!6556002) (not b!6556111) (not bm!570190) (not bm!570191) (not bm!570237) (not d!2057303) (not d!2057289) (not b!6556242) (not d!2057245) (not b!6555404) (not b!6556141) (not d!2057009) (not b!6555893) (not d!2057249) (not b!6555406) (not b!6556084) (not bm!570249) (not b!6556269) (not b!6556134) (not d!2057317) (not b!6555408) (not b!6555906) (not d!2057105) (not b!6556001) (not b!6556055) (not d!2057013) (not d!2057257) (not b!6556284) (not bm!570244) (not d!2057147) (not bs!1673409) (not b!6556085) (not b!6555896) (not b!6555869) (not d!2057153) (not d!2057213) (not b!6555907) (not d!2057263) (not b!6556274) (not b!6555840) (not b!6556020) (not d!2057159) (not b!6555908) (not d!2057299) (not b!6556188) (not b!6555336) (not b!6555461) (not d!2057273) (not b!6555690) (not d!2057171) (not d!2057135) (not bm!570231) (not b!6555677) (not b!6555409) (not b_lambda!248079) (not bm!570202) (not b!6556268) (not b!6556243) (not d!2057229) (not b!6555878) (not bm!570184) (not d!2057087) (not b!6555860) (not b!6556270) (not b!6555853) (not bs!1673407) (not d!2057155) (not b!6556185) (not b!6556157) (not d!2057185) (not b!6555709) (not b!6555996) (not b!6556214) (not bm!570209) (not d!2057309) (not b!6556161) (not setNonEmpty!44748) (not b!6556261) (not b!6556079) (not b_lambda!248075) (not b_lambda!248077) (not bm!570242) (not d!2057123) (not d!2057275) (not b!6556149) (not b!6556014) (not b!6556172) (not d!2057271) (not b!6556003) (not b!6556081) (not b!6556173) (not b!6555868) (not bm!570248) (not b!6556163) (not b!6556200) (not b!6555570) (not b!6555411) (not d!2057193) (not b!6556130) (not b!6555866) (not d!2057211) (not d!2057291) (not b!6555861) (not b!6555999) (not b!6555612) (not bm!570168) (not b!6555687) (not b!6555764) (not d!2057131) (not b!6555606) (not bm!570245) (not b!6556202) (not d!2057261) (not b!6555834) tp_is_empty!42115 (not b!6556189) (not b!6556246) (not d!2057253) (not d!2057191) (not bm!570211) (not b!6556057) (not d!2057297) (not b!6556058) (not d!2057195) (not d!2057295) (not b!6555337) (not d!2057205) (not b!6555736) (not d!2057283) (not bm!570217) (not b!6555848) (not b!6556187) (not b!6556278) (not d!2057175) (not bm!570218) (not b!6555765) (not b!6556219))
(check-sat)
