; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!576726 () Bool)

(assert start!576726)

(declare-fun b!5526447 () Bool)

(assert (=> b!5526447 true))

(assert (=> b!5526447 true))

(declare-fun lambda!296388 () Int)

(declare-fun lambda!296387 () Int)

(assert (=> b!5526447 (not (= lambda!296388 lambda!296387))))

(assert (=> b!5526447 true))

(assert (=> b!5526447 true))

(declare-fun b!5526445 () Bool)

(assert (=> b!5526445 true))

(declare-fun b!5526435 () Bool)

(declare-fun res!2353374 () Bool)

(declare-fun e!3416516 () Bool)

(assert (=> b!5526435 (=> (not res!2353374) (not e!3416516))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31296 0))(
  ( (C!31297 (val!25350 Int)) )
))
(declare-datatypes ((Regex!15513 0))(
  ( (ElementMatch!15513 (c!966767 C!31296)) (Concat!24358 (regOne!31538 Regex!15513) (regTwo!31538 Regex!15513)) (EmptyExpr!15513) (Star!15513 (reg!15842 Regex!15513)) (EmptyLang!15513) (Union!15513 (regOne!31539 Regex!15513) (regTwo!31539 Regex!15513)) )
))
(declare-datatypes ((List!62838 0))(
  ( (Nil!62714) (Cons!62714 (h!69162 Regex!15513) (t!376093 List!62838)) )
))
(declare-datatypes ((Context!9794 0))(
  ( (Context!9795 (exprs!5397 List!62838)) )
))
(declare-fun z!1189 () (InoxSet Context!9794))

(declare-datatypes ((List!62839 0))(
  ( (Nil!62715) (Cons!62715 (h!69163 Context!9794) (t!376094 List!62839)) )
))
(declare-fun zl!343 () List!62839)

(declare-fun toList!9297 ((InoxSet Context!9794)) List!62839)

(assert (=> b!5526435 (= res!2353374 (= (toList!9297 z!1189) zl!343))))

(declare-fun b!5526436 () Bool)

(declare-fun e!3416513 () Bool)

(declare-fun e!3416502 () Bool)

(assert (=> b!5526436 (= e!3416513 e!3416502)))

(declare-fun res!2353364 () Bool)

(assert (=> b!5526436 (=> res!2353364 e!3416502)))

(declare-fun lt!2247542 () (InoxSet Context!9794))

(declare-fun lt!2247548 () (InoxSet Context!9794))

(assert (=> b!5526436 (= res!2353364 (not (= lt!2247542 lt!2247548)))))

(declare-fun lt!2247554 () (InoxSet Context!9794))

(declare-fun lt!2247529 () (InoxSet Context!9794))

(assert (=> b!5526436 (= lt!2247548 ((_ map or) lt!2247554 lt!2247529))))

(declare-fun b!5526437 () Bool)

(declare-fun res!2353378 () Bool)

(declare-fun e!3416503 () Bool)

(assert (=> b!5526437 (=> res!2353378 e!3416503)))

(declare-fun lt!2247543 () (InoxSet Context!9794))

(declare-datatypes ((List!62840 0))(
  ( (Nil!62716) (Cons!62716 (h!69164 C!31296) (t!376095 List!62840)) )
))
(declare-fun s!2326 () List!62840)

(declare-fun matchZipper!1671 ((InoxSet Context!9794) List!62840) Bool)

(declare-fun derivationStepZipper!1618 ((InoxSet Context!9794) C!31296) (InoxSet Context!9794))

(assert (=> b!5526437 (= res!2353378 (not (= (matchZipper!1671 lt!2247543 s!2326) (matchZipper!1671 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (t!376095 s!2326)))))))

(declare-fun b!5526438 () Bool)

(declare-fun res!2353370 () Bool)

(declare-fun e!3416508 () Bool)

(assert (=> b!5526438 (=> res!2353370 e!3416508)))

(declare-fun isEmpty!34501 (List!62838) Bool)

(assert (=> b!5526438 (= res!2353370 (not (isEmpty!34501 (t!376093 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5526439 () Bool)

(declare-fun res!2353380 () Bool)

(assert (=> b!5526439 (=> res!2353380 e!3416503)))

(declare-fun lt!2247537 () (InoxSet Context!9794))

(declare-fun lt!2247546 () (InoxSet Context!9794))

(assert (=> b!5526439 (= res!2353380 (or (not (= lt!2247546 ((_ map or) lt!2247554 lt!2247537))) (not (= lt!2247546 lt!2247548)) (not (= lt!2247546 lt!2247542))))))

(declare-fun b!5526440 () Bool)

(declare-fun res!2353384 () Bool)

(assert (=> b!5526440 (=> res!2353384 e!3416503)))

(declare-fun lt!2247532 () (InoxSet Context!9794))

(assert (=> b!5526440 (= res!2353384 (not (= (matchZipper!1671 lt!2247532 s!2326) (matchZipper!1671 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (t!376095 s!2326)))))))

(declare-fun b!5526441 () Bool)

(declare-fun e!3416509 () Bool)

(assert (=> b!5526441 (= e!3416509 e!3416513)))

(declare-fun res!2353365 () Bool)

(assert (=> b!5526441 (=> res!2353365 e!3416513)))

(declare-fun r!7292 () Regex!15513)

(declare-fun nullable!5547 (Regex!15513) Bool)

(assert (=> b!5526441 (= res!2353365 (not (nullable!5547 (regOne!31538 r!7292))))))

(declare-fun lt!2247553 () Context!9794)

(declare-fun derivationStepZipperDown!855 (Regex!15513 Context!9794 C!31296) (InoxSet Context!9794))

(assert (=> b!5526441 (= lt!2247529 (derivationStepZipperDown!855 (regTwo!31538 r!7292) lt!2247553 (h!69164 s!2326)))))

(declare-fun lt!2247530 () Context!9794)

(assert (=> b!5526441 (= lt!2247554 (derivationStepZipperDown!855 (regOne!31538 r!7292) lt!2247530 (h!69164 s!2326)))))

(declare-fun lambda!296389 () Int)

(declare-fun flatMap!1126 ((InoxSet Context!9794) Int) (InoxSet Context!9794))

(declare-fun derivationStepZipperUp!781 (Context!9794 C!31296) (InoxSet Context!9794))

(assert (=> b!5526441 (= (flatMap!1126 lt!2247532 lambda!296389) (derivationStepZipperUp!781 lt!2247530 (h!69164 s!2326)))))

(declare-datatypes ((Unit!155486 0))(
  ( (Unit!155487) )
))
(declare-fun lt!2247545 () Unit!155486)

(declare-fun lemmaFlatMapOnSingletonSet!658 ((InoxSet Context!9794) Context!9794 Int) Unit!155486)

(assert (=> b!5526441 (= lt!2247545 (lemmaFlatMapOnSingletonSet!658 lt!2247532 lt!2247530 lambda!296389))))

(declare-fun lt!2247531 () Context!9794)

(assert (=> b!5526441 (= (flatMap!1126 lt!2247543 lambda!296389) (derivationStepZipperUp!781 lt!2247531 (h!69164 s!2326)))))

(declare-fun lt!2247536 () Unit!155486)

(assert (=> b!5526441 (= lt!2247536 (lemmaFlatMapOnSingletonSet!658 lt!2247543 lt!2247531 lambda!296389))))

(assert (=> b!5526441 (= lt!2247537 (derivationStepZipperUp!781 lt!2247530 (h!69164 s!2326)))))

(assert (=> b!5526441 (= lt!2247546 (derivationStepZipperUp!781 lt!2247531 (h!69164 s!2326)))))

(assert (=> b!5526441 (= lt!2247532 (store ((as const (Array Context!9794 Bool)) false) lt!2247530 true))))

(declare-fun lt!2247544 () List!62838)

(assert (=> b!5526441 (= lt!2247530 (Context!9795 lt!2247544))))

(assert (=> b!5526441 (= lt!2247543 (store ((as const (Array Context!9794 Bool)) false) lt!2247531 true))))

(assert (=> b!5526441 (= lt!2247531 (Context!9795 (Cons!62714 (regOne!31538 r!7292) lt!2247544)))))

(assert (=> b!5526441 (= lt!2247544 (Cons!62714 (regTwo!31538 r!7292) Nil!62714))))

(declare-fun b!5526442 () Bool)

(declare-fun e!3416512 () Bool)

(assert (=> b!5526442 (= e!3416516 (not e!3416512))))

(declare-fun res!2353377 () Bool)

(assert (=> b!5526442 (=> res!2353377 e!3416512)))

(get-info :version)

(assert (=> b!5526442 (= res!2353377 (not ((_ is Cons!62715) zl!343)))))

(declare-fun lt!2247547 () Bool)

(declare-fun matchRSpec!2616 (Regex!15513 List!62840) Bool)

(assert (=> b!5526442 (= lt!2247547 (matchRSpec!2616 r!7292 s!2326))))

(declare-fun matchR!7698 (Regex!15513 List!62840) Bool)

(assert (=> b!5526442 (= lt!2247547 (matchR!7698 r!7292 s!2326))))

(declare-fun lt!2247533 () Unit!155486)

(declare-fun mainMatchTheorem!2616 (Regex!15513 List!62840) Unit!155486)

(assert (=> b!5526442 (= lt!2247533 (mainMatchTheorem!2616 r!7292 s!2326))))

(declare-fun b!5526443 () Bool)

(declare-fun e!3416506 () Bool)

(assert (=> b!5526443 (= e!3416508 e!3416506)))

(declare-fun res!2353379 () Bool)

(assert (=> b!5526443 (=> res!2353379 e!3416506)))

(declare-fun lt!2247551 () (InoxSet Context!9794))

(declare-fun lt!2247550 () (InoxSet Context!9794))

(assert (=> b!5526443 (= res!2353379 (not (= lt!2247551 lt!2247550)))))

(assert (=> b!5526443 (= lt!2247550 (derivationStepZipperDown!855 r!7292 lt!2247553 (h!69164 s!2326)))))

(assert (=> b!5526443 (= lt!2247553 (Context!9795 Nil!62714))))

(declare-fun lt!2247538 () Context!9794)

(assert (=> b!5526443 (= lt!2247551 (derivationStepZipperUp!781 lt!2247538 (h!69164 s!2326)))))

(assert (=> b!5526443 (= lt!2247538 (Context!9795 (Cons!62714 r!7292 Nil!62714)))))

(assert (=> b!5526443 (= lt!2247542 (derivationStepZipper!1618 z!1189 (h!69164 s!2326)))))

(declare-fun b!5526444 () Bool)

(declare-fun res!2353373 () Bool)

(assert (=> b!5526444 (=> res!2353373 e!3416512)))

(assert (=> b!5526444 (= res!2353373 (not ((_ is Cons!62714) (exprs!5397 (h!69163 zl!343)))))))

(assert (=> b!5526445 (= e!3416506 e!3416509)))

(declare-fun res!2353366 () Bool)

(assert (=> b!5526445 (=> res!2353366 e!3416509)))

(assert (=> b!5526445 (= res!2353366 (not (= lt!2247542 lt!2247550)))))

(assert (=> b!5526445 (= (flatMap!1126 z!1189 lambda!296389) (derivationStepZipperUp!781 (h!69163 zl!343) (h!69164 s!2326)))))

(declare-fun lt!2247535 () Unit!155486)

(assert (=> b!5526445 (= lt!2247535 (lemmaFlatMapOnSingletonSet!658 z!1189 (h!69163 zl!343) lambda!296389))))

(declare-fun b!5526446 () Bool)

(declare-fun e!3416511 () Bool)

(declare-fun e!3416510 () Bool)

(declare-fun tp!1520545 () Bool)

(declare-fun inv!82029 (Context!9794) Bool)

(assert (=> b!5526446 (= e!3416511 (and (inv!82029 (h!69163 zl!343)) e!3416510 tp!1520545))))

(assert (=> b!5526447 (= e!3416512 e!3416508)))

(declare-fun res!2353368 () Bool)

(assert (=> b!5526447 (=> res!2353368 e!3416508)))

(declare-fun lt!2247539 () Bool)

(assert (=> b!5526447 (= res!2353368 (or (not (= lt!2247547 lt!2247539)) ((_ is Nil!62716) s!2326)))))

(declare-fun Exists!2613 (Int) Bool)

(assert (=> b!5526447 (= (Exists!2613 lambda!296387) (Exists!2613 lambda!296388))))

(declare-fun lt!2247527 () Unit!155486)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1242 (Regex!15513 Regex!15513 List!62840) Unit!155486)

(assert (=> b!5526447 (= lt!2247527 (lemmaExistCutMatchRandMatchRSpecEquivalent!1242 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326))))

(assert (=> b!5526447 (= lt!2247539 (Exists!2613 lambda!296387))))

(declare-datatypes ((tuple2!65220 0))(
  ( (tuple2!65221 (_1!35913 List!62840) (_2!35913 List!62840)) )
))
(declare-datatypes ((Option!15522 0))(
  ( (None!15521) (Some!15521 (v!51558 tuple2!65220)) )
))
(declare-fun isDefined!12225 (Option!15522) Bool)

(declare-fun findConcatSeparation!1936 (Regex!15513 Regex!15513 List!62840 List!62840 List!62840) Option!15522)

(assert (=> b!5526447 (= lt!2247539 (isDefined!12225 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326)))))

(declare-fun lt!2247552 () Unit!155486)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1700 (Regex!15513 Regex!15513 List!62840) Unit!155486)

(assert (=> b!5526447 (= lt!2247552 (lemmaFindConcatSeparationEquivalentToExists!1700 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326))))

(declare-fun b!5526448 () Bool)

(declare-fun e!3416507 () Bool)

(declare-fun tp!1520544 () Bool)

(assert (=> b!5526448 (= e!3416507 tp!1520544)))

(declare-fun b!5526449 () Bool)

(declare-fun e!3416514 () Bool)

(assert (=> b!5526449 (= e!3416514 (matchZipper!1671 lt!2247529 (t!376095 s!2326)))))

(declare-fun b!5526450 () Bool)

(declare-fun res!2353363 () Bool)

(assert (=> b!5526450 (=> (not res!2353363) (not e!3416516))))

(declare-fun unfocusZipper!1255 (List!62839) Regex!15513)

(assert (=> b!5526450 (= res!2353363 (= r!7292 (unfocusZipper!1255 zl!343)))))

(declare-fun b!5526451 () Bool)

(declare-fun e!3416505 () Bool)

(declare-fun tp!1520550 () Bool)

(assert (=> b!5526451 (= e!3416505 tp!1520550)))

(declare-fun b!5526452 () Bool)

(declare-fun res!2353381 () Bool)

(assert (=> b!5526452 (=> res!2353381 e!3416512)))

(declare-fun isEmpty!34502 (List!62839) Bool)

(assert (=> b!5526452 (= res!2353381 (not (isEmpty!34502 (t!376094 zl!343))))))

(declare-fun b!5526453 () Bool)

(declare-fun tp!1520546 () Bool)

(declare-fun tp!1520548 () Bool)

(assert (=> b!5526453 (= e!3416505 (and tp!1520546 tp!1520548))))

(declare-fun b!5526454 () Bool)

(declare-fun res!2353375 () Bool)

(declare-fun e!3416515 () Bool)

(assert (=> b!5526454 (=> res!2353375 e!3416515)))

(declare-fun zipperDepth!196 (List!62839) Int)

(assert (=> b!5526454 (= res!2353375 (>= (zipperDepth!196 (Cons!62715 lt!2247531 Nil!62715)) (zipperDepth!196 (Cons!62715 lt!2247538 Nil!62715))))))

(declare-fun setElem!36755 () Context!9794)

(declare-fun tp!1520549 () Bool)

(declare-fun setRes!36755 () Bool)

(declare-fun setNonEmpty!36755 () Bool)

(assert (=> setNonEmpty!36755 (= setRes!36755 (and tp!1520549 (inv!82029 setElem!36755) e!3416507))))

(declare-fun setRest!36755 () (InoxSet Context!9794))

(assert (=> setNonEmpty!36755 (= z!1189 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) setElem!36755 true) setRest!36755))))

(declare-fun b!5526455 () Bool)

(declare-fun e!3416504 () Bool)

(declare-fun tp_is_empty!40279 () Bool)

(declare-fun tp!1520542 () Bool)

(assert (=> b!5526455 (= e!3416504 (and tp_is_empty!40279 tp!1520542))))

(declare-fun b!5526456 () Bool)

(declare-fun lt!2247528 () Int)

(declare-fun contextDepth!109 (Context!9794) Int)

(assert (=> b!5526456 (= e!3416515 (< (contextDepth!109 lt!2247530) lt!2247528))))

(declare-fun b!5526457 () Bool)

(assert (=> b!5526457 (= e!3416502 e!3416503)))

(declare-fun res!2353383 () Bool)

(assert (=> b!5526457 (=> res!2353383 e!3416503)))

(declare-fun lt!2247555 () Bool)

(assert (=> b!5526457 (= res!2353383 (not (= lt!2247555 (matchZipper!1671 lt!2247542 (t!376095 s!2326)))))))

(declare-fun lt!2247549 () Bool)

(assert (=> b!5526457 (= lt!2247549 lt!2247555)))

(assert (=> b!5526457 (= lt!2247555 e!3416514)))

(declare-fun res!2353372 () Bool)

(assert (=> b!5526457 (=> res!2353372 e!3416514)))

(declare-fun lt!2247534 () Bool)

(assert (=> b!5526457 (= res!2353372 lt!2247534)))

(assert (=> b!5526457 (= lt!2247549 (matchZipper!1671 lt!2247548 (t!376095 s!2326)))))

(assert (=> b!5526457 (= lt!2247534 (matchZipper!1671 lt!2247554 (t!376095 s!2326)))))

(declare-fun lt!2247540 () Unit!155486)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!560 ((InoxSet Context!9794) (InoxSet Context!9794) List!62840) Unit!155486)

(assert (=> b!5526457 (= lt!2247540 (lemmaZipperConcatMatchesSameAsBothZippers!560 lt!2247554 lt!2247529 (t!376095 s!2326)))))

(declare-fun b!5526458 () Bool)

(assert (=> b!5526458 (= e!3416505 tp_is_empty!40279)))

(declare-fun b!5526459 () Bool)

(declare-fun res!2353369 () Bool)

(assert (=> b!5526459 (=> res!2353369 e!3416512)))

(declare-fun generalisedUnion!1376 (List!62838) Regex!15513)

(declare-fun unfocusZipperList!941 (List!62839) List!62838)

(assert (=> b!5526459 (= res!2353369 (not (= r!7292 (generalisedUnion!1376 (unfocusZipperList!941 zl!343)))))))

(declare-fun b!5526460 () Bool)

(declare-fun res!2353376 () Bool)

(assert (=> b!5526460 (=> res!2353376 e!3416512)))

(assert (=> b!5526460 (= res!2353376 (or ((_ is EmptyExpr!15513) r!7292) ((_ is EmptyLang!15513) r!7292) ((_ is ElementMatch!15513) r!7292) ((_ is Union!15513) r!7292) (not ((_ is Concat!24358) r!7292))))))

(declare-fun b!5526461 () Bool)

(declare-fun res!2353367 () Bool)

(assert (=> b!5526461 (=> res!2353367 e!3416512)))

(declare-fun generalisedConcat!1128 (List!62838) Regex!15513)

(assert (=> b!5526461 (= res!2353367 (not (= r!7292 (generalisedConcat!1128 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5526462 () Bool)

(declare-fun tp!1520543 () Bool)

(declare-fun tp!1520547 () Bool)

(assert (=> b!5526462 (= e!3416505 (and tp!1520543 tp!1520547))))

(declare-fun b!5526463 () Bool)

(assert (=> b!5526463 (= e!3416503 e!3416515)))

(declare-fun res!2353382 () Bool)

(assert (=> b!5526463 (=> res!2353382 e!3416515)))

(declare-fun lt!2247541 () Int)

(assert (=> b!5526463 (= res!2353382 (>= lt!2247541 lt!2247528))))

(assert (=> b!5526463 (= lt!2247528 (contextDepth!109 lt!2247538))))

(assert (=> b!5526463 (= lt!2247541 (contextDepth!109 lt!2247531))))

(declare-fun res!2353371 () Bool)

(assert (=> start!576726 (=> (not res!2353371) (not e!3416516))))

(declare-fun validRegex!7249 (Regex!15513) Bool)

(assert (=> start!576726 (= res!2353371 (validRegex!7249 r!7292))))

(assert (=> start!576726 e!3416516))

(assert (=> start!576726 e!3416505))

(declare-fun condSetEmpty!36755 () Bool)

(assert (=> start!576726 (= condSetEmpty!36755 (= z!1189 ((as const (Array Context!9794 Bool)) false)))))

(assert (=> start!576726 setRes!36755))

(assert (=> start!576726 e!3416511))

(assert (=> start!576726 e!3416504))

(declare-fun b!5526464 () Bool)

(declare-fun tp!1520551 () Bool)

(assert (=> b!5526464 (= e!3416510 tp!1520551)))

(declare-fun setIsEmpty!36755 () Bool)

(assert (=> setIsEmpty!36755 setRes!36755))

(assert (= (and start!576726 res!2353371) b!5526435))

(assert (= (and b!5526435 res!2353374) b!5526450))

(assert (= (and b!5526450 res!2353363) b!5526442))

(assert (= (and b!5526442 (not res!2353377)) b!5526452))

(assert (= (and b!5526452 (not res!2353381)) b!5526461))

(assert (= (and b!5526461 (not res!2353367)) b!5526444))

(assert (= (and b!5526444 (not res!2353373)) b!5526459))

(assert (= (and b!5526459 (not res!2353369)) b!5526460))

(assert (= (and b!5526460 (not res!2353376)) b!5526447))

(assert (= (and b!5526447 (not res!2353368)) b!5526438))

(assert (= (and b!5526438 (not res!2353370)) b!5526443))

(assert (= (and b!5526443 (not res!2353379)) b!5526445))

(assert (= (and b!5526445 (not res!2353366)) b!5526441))

(assert (= (and b!5526441 (not res!2353365)) b!5526436))

(assert (= (and b!5526436 (not res!2353364)) b!5526457))

(assert (= (and b!5526457 (not res!2353372)) b!5526449))

(assert (= (and b!5526457 (not res!2353383)) b!5526439))

(assert (= (and b!5526439 (not res!2353380)) b!5526437))

(assert (= (and b!5526437 (not res!2353378)) b!5526440))

(assert (= (and b!5526440 (not res!2353384)) b!5526463))

(assert (= (and b!5526463 (not res!2353382)) b!5526454))

(assert (= (and b!5526454 (not res!2353375)) b!5526456))

(assert (= (and start!576726 ((_ is ElementMatch!15513) r!7292)) b!5526458))

(assert (= (and start!576726 ((_ is Concat!24358) r!7292)) b!5526453))

(assert (= (and start!576726 ((_ is Star!15513) r!7292)) b!5526451))

(assert (= (and start!576726 ((_ is Union!15513) r!7292)) b!5526462))

(assert (= (and start!576726 condSetEmpty!36755) setIsEmpty!36755))

(assert (= (and start!576726 (not condSetEmpty!36755)) setNonEmpty!36755))

(assert (= setNonEmpty!36755 b!5526448))

(assert (= b!5526446 b!5526464))

(assert (= (and start!576726 ((_ is Cons!62715) zl!343)) b!5526446))

(assert (= (and start!576726 ((_ is Cons!62716) s!2326)) b!5526455))

(declare-fun m!6528692 () Bool)

(assert (=> b!5526456 m!6528692))

(declare-fun m!6528694 () Bool)

(assert (=> b!5526443 m!6528694))

(declare-fun m!6528696 () Bool)

(assert (=> b!5526443 m!6528696))

(declare-fun m!6528698 () Bool)

(assert (=> b!5526443 m!6528698))

(declare-fun m!6528700 () Bool)

(assert (=> b!5526449 m!6528700))

(declare-fun m!6528702 () Bool)

(assert (=> b!5526454 m!6528702))

(declare-fun m!6528704 () Bool)

(assert (=> b!5526454 m!6528704))

(declare-fun m!6528706 () Bool)

(assert (=> b!5526461 m!6528706))

(declare-fun m!6528708 () Bool)

(assert (=> b!5526441 m!6528708))

(declare-fun m!6528710 () Bool)

(assert (=> b!5526441 m!6528710))

(declare-fun m!6528712 () Bool)

(assert (=> b!5526441 m!6528712))

(declare-fun m!6528714 () Bool)

(assert (=> b!5526441 m!6528714))

(declare-fun m!6528716 () Bool)

(assert (=> b!5526441 m!6528716))

(declare-fun m!6528718 () Bool)

(assert (=> b!5526441 m!6528718))

(declare-fun m!6528720 () Bool)

(assert (=> b!5526441 m!6528720))

(declare-fun m!6528722 () Bool)

(assert (=> b!5526441 m!6528722))

(declare-fun m!6528724 () Bool)

(assert (=> b!5526441 m!6528724))

(declare-fun m!6528726 () Bool)

(assert (=> b!5526441 m!6528726))

(declare-fun m!6528728 () Bool)

(assert (=> b!5526441 m!6528728))

(declare-fun m!6528730 () Bool)

(assert (=> b!5526459 m!6528730))

(assert (=> b!5526459 m!6528730))

(declare-fun m!6528732 () Bool)

(assert (=> b!5526459 m!6528732))

(declare-fun m!6528734 () Bool)

(assert (=> b!5526437 m!6528734))

(declare-fun m!6528736 () Bool)

(assert (=> b!5526437 m!6528736))

(assert (=> b!5526437 m!6528736))

(declare-fun m!6528738 () Bool)

(assert (=> b!5526437 m!6528738))

(declare-fun m!6528740 () Bool)

(assert (=> b!5526435 m!6528740))

(declare-fun m!6528742 () Bool)

(assert (=> b!5526447 m!6528742))

(declare-fun m!6528744 () Bool)

(assert (=> b!5526447 m!6528744))

(declare-fun m!6528746 () Bool)

(assert (=> b!5526447 m!6528746))

(declare-fun m!6528748 () Bool)

(assert (=> b!5526447 m!6528748))

(assert (=> b!5526447 m!6528748))

(declare-fun m!6528750 () Bool)

(assert (=> b!5526447 m!6528750))

(assert (=> b!5526447 m!6528744))

(declare-fun m!6528752 () Bool)

(assert (=> b!5526447 m!6528752))

(declare-fun m!6528754 () Bool)

(assert (=> b!5526445 m!6528754))

(declare-fun m!6528756 () Bool)

(assert (=> b!5526445 m!6528756))

(declare-fun m!6528758 () Bool)

(assert (=> b!5526445 m!6528758))

(declare-fun m!6528760 () Bool)

(assert (=> setNonEmpty!36755 m!6528760))

(declare-fun m!6528762 () Bool)

(assert (=> b!5526450 m!6528762))

(declare-fun m!6528764 () Bool)

(assert (=> b!5526440 m!6528764))

(declare-fun m!6528766 () Bool)

(assert (=> b!5526440 m!6528766))

(assert (=> b!5526440 m!6528766))

(declare-fun m!6528768 () Bool)

(assert (=> b!5526440 m!6528768))

(declare-fun m!6528770 () Bool)

(assert (=> b!5526446 m!6528770))

(declare-fun m!6528772 () Bool)

(assert (=> start!576726 m!6528772))

(declare-fun m!6528774 () Bool)

(assert (=> b!5526463 m!6528774))

(declare-fun m!6528776 () Bool)

(assert (=> b!5526463 m!6528776))

(declare-fun m!6528778 () Bool)

(assert (=> b!5526452 m!6528778))

(declare-fun m!6528780 () Bool)

(assert (=> b!5526442 m!6528780))

(declare-fun m!6528782 () Bool)

(assert (=> b!5526442 m!6528782))

(declare-fun m!6528784 () Bool)

(assert (=> b!5526442 m!6528784))

(declare-fun m!6528786 () Bool)

(assert (=> b!5526457 m!6528786))

(declare-fun m!6528788 () Bool)

(assert (=> b!5526457 m!6528788))

(declare-fun m!6528790 () Bool)

(assert (=> b!5526457 m!6528790))

(declare-fun m!6528792 () Bool)

(assert (=> b!5526457 m!6528792))

(declare-fun m!6528794 () Bool)

(assert (=> b!5526438 m!6528794))

(check-sat (not b!5526464) (not b!5526451) (not b!5526459) (not start!576726) (not b!5526449) (not b!5526455) (not setNonEmpty!36755) (not b!5526435) (not b!5526440) (not b!5526457) tp_is_empty!40279 (not b!5526448) (not b!5526443) (not b!5526442) (not b!5526453) (not b!5526447) (not b!5526445) (not b!5526456) (not b!5526446) (not b!5526438) (not b!5526463) (not b!5526452) (not b!5526450) (not b!5526441) (not b!5526462) (not b!5526454) (not b!5526461) (not b!5526437))
(check-sat)
(get-model)

(declare-fun bm!410041 () Bool)

(declare-fun call!410051 () List!62838)

(declare-fun call!410049 () List!62838)

(assert (=> bm!410041 (= call!410051 call!410049)))

(declare-fun b!5526908 () Bool)

(declare-fun e!3416761 () (InoxSet Context!9794))

(declare-fun e!3416764 () (InoxSet Context!9794))

(assert (=> b!5526908 (= e!3416761 e!3416764)))

(declare-fun c!966904 () Bool)

(assert (=> b!5526908 (= c!966904 ((_ is Union!15513) r!7292))))

(declare-fun d!1751216 () Bool)

(declare-fun c!966906 () Bool)

(assert (=> d!1751216 (= c!966906 (and ((_ is ElementMatch!15513) r!7292) (= (c!966767 r!7292) (h!69164 s!2326))))))

(assert (=> d!1751216 (= (derivationStepZipperDown!855 r!7292 lt!2247553 (h!69164 s!2326)) e!3416761)))

(declare-fun b!5526909 () Bool)

(assert (=> b!5526909 (= e!3416761 (store ((as const (Array Context!9794 Bool)) false) lt!2247553 true))))

(declare-fun bm!410042 () Bool)

(declare-fun call!410050 () (InoxSet Context!9794))

(declare-fun call!410048 () (InoxSet Context!9794))

(assert (=> bm!410042 (= call!410050 call!410048)))

(declare-fun b!5526910 () Bool)

(declare-fun e!3416766 () (InoxSet Context!9794))

(declare-fun e!3416762 () (InoxSet Context!9794))

(assert (=> b!5526910 (= e!3416766 e!3416762)))

(declare-fun c!966907 () Bool)

(assert (=> b!5526910 (= c!966907 ((_ is Concat!24358) r!7292))))

(declare-fun b!5526911 () Bool)

(declare-fun e!3416763 () (InoxSet Context!9794))

(declare-fun call!410046 () (InoxSet Context!9794))

(assert (=> b!5526911 (= e!3416763 call!410046)))

(declare-fun b!5526912 () Bool)

(declare-fun c!966903 () Bool)

(assert (=> b!5526912 (= c!966903 ((_ is Star!15513) r!7292))))

(assert (=> b!5526912 (= e!3416762 e!3416763)))

(declare-fun b!5526913 () Bool)

(declare-fun c!966905 () Bool)

(declare-fun e!3416765 () Bool)

(assert (=> b!5526913 (= c!966905 e!3416765)))

(declare-fun res!2353510 () Bool)

(assert (=> b!5526913 (=> (not res!2353510) (not e!3416765))))

(assert (=> b!5526913 (= res!2353510 ((_ is Concat!24358) r!7292))))

(assert (=> b!5526913 (= e!3416764 e!3416766)))

(declare-fun b!5526914 () Bool)

(assert (=> b!5526914 (= e!3416763 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410043 () Bool)

(assert (=> bm!410043 (= call!410046 call!410050)))

(declare-fun bm!410044 () Bool)

(declare-fun $colon$colon!1592 (List!62838 Regex!15513) List!62838)

(assert (=> bm!410044 (= call!410049 ($colon$colon!1592 (exprs!5397 lt!2247553) (ite (or c!966905 c!966907) (regTwo!31538 r!7292) r!7292)))))

(declare-fun b!5526915 () Bool)

(assert (=> b!5526915 (= e!3416762 call!410046)))

(declare-fun b!5526916 () Bool)

(declare-fun call!410047 () (InoxSet Context!9794))

(assert (=> b!5526916 (= e!3416766 ((_ map or) call!410047 call!410050))))

(declare-fun bm!410045 () Bool)

(assert (=> bm!410045 (= call!410047 (derivationStepZipperDown!855 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292)) (ite c!966904 lt!2247553 (Context!9795 call!410049)) (h!69164 s!2326)))))

(declare-fun bm!410046 () Bool)

(assert (=> bm!410046 (= call!410048 (derivationStepZipperDown!855 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292)))) (ite (or c!966904 c!966905) lt!2247553 (Context!9795 call!410051)) (h!69164 s!2326)))))

(declare-fun b!5526917 () Bool)

(assert (=> b!5526917 (= e!3416764 ((_ map or) call!410048 call!410047))))

(declare-fun b!5526918 () Bool)

(assert (=> b!5526918 (= e!3416765 (nullable!5547 (regOne!31538 r!7292)))))

(assert (= (and d!1751216 c!966906) b!5526909))

(assert (= (and d!1751216 (not c!966906)) b!5526908))

(assert (= (and b!5526908 c!966904) b!5526917))

(assert (= (and b!5526908 (not c!966904)) b!5526913))

(assert (= (and b!5526913 res!2353510) b!5526918))

(assert (= (and b!5526913 c!966905) b!5526916))

(assert (= (and b!5526913 (not c!966905)) b!5526910))

(assert (= (and b!5526910 c!966907) b!5526915))

(assert (= (and b!5526910 (not c!966907)) b!5526912))

(assert (= (and b!5526912 c!966903) b!5526911))

(assert (= (and b!5526912 (not c!966903)) b!5526914))

(assert (= (or b!5526915 b!5526911) bm!410041))

(assert (= (or b!5526915 b!5526911) bm!410043))

(assert (= (or b!5526916 bm!410041) bm!410044))

(assert (= (or b!5526916 bm!410043) bm!410042))

(assert (= (or b!5526917 b!5526916) bm!410045))

(assert (= (or b!5526917 bm!410042) bm!410046))

(declare-fun m!6529116 () Bool)

(assert (=> b!5526909 m!6529116))

(assert (=> b!5526918 m!6528718))

(declare-fun m!6529118 () Bool)

(assert (=> bm!410046 m!6529118))

(declare-fun m!6529120 () Bool)

(assert (=> bm!410044 m!6529120))

(declare-fun m!6529122 () Bool)

(assert (=> bm!410045 m!6529122))

(assert (=> b!5526443 d!1751216))

(declare-fun b!5526929 () Bool)

(declare-fun e!3416775 () Bool)

(assert (=> b!5526929 (= e!3416775 (nullable!5547 (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5526930 () Bool)

(declare-fun e!3416773 () (InoxSet Context!9794))

(declare-fun e!3416774 () (InoxSet Context!9794))

(assert (=> b!5526930 (= e!3416773 e!3416774)))

(declare-fun c!966912 () Bool)

(assert (=> b!5526930 (= c!966912 ((_ is Cons!62714) (exprs!5397 lt!2247538)))))

(declare-fun b!5526931 () Bool)

(assert (=> b!5526931 (= e!3416774 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410049 () Bool)

(declare-fun call!410054 () (InoxSet Context!9794))

(assert (=> bm!410049 (= call!410054 (derivationStepZipperDown!855 (h!69162 (exprs!5397 lt!2247538)) (Context!9795 (t!376093 (exprs!5397 lt!2247538))) (h!69164 s!2326)))))

(declare-fun b!5526932 () Bool)

(assert (=> b!5526932 (= e!3416774 call!410054)))

(declare-fun d!1751244 () Bool)

(declare-fun c!966913 () Bool)

(assert (=> d!1751244 (= c!966913 e!3416775)))

(declare-fun res!2353513 () Bool)

(assert (=> d!1751244 (=> (not res!2353513) (not e!3416775))))

(assert (=> d!1751244 (= res!2353513 ((_ is Cons!62714) (exprs!5397 lt!2247538)))))

(assert (=> d!1751244 (= (derivationStepZipperUp!781 lt!2247538 (h!69164 s!2326)) e!3416773)))

(declare-fun b!5526933 () Bool)

(assert (=> b!5526933 (= e!3416773 ((_ map or) call!410054 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 lt!2247538))) (h!69164 s!2326))))))

(assert (= (and d!1751244 res!2353513) b!5526929))

(assert (= (and d!1751244 c!966913) b!5526933))

(assert (= (and d!1751244 (not c!966913)) b!5526930))

(assert (= (and b!5526930 c!966912) b!5526932))

(assert (= (and b!5526930 (not c!966912)) b!5526931))

(assert (= (or b!5526933 b!5526932) bm!410049))

(declare-fun m!6529124 () Bool)

(assert (=> b!5526929 m!6529124))

(declare-fun m!6529126 () Bool)

(assert (=> bm!410049 m!6529126))

(declare-fun m!6529128 () Bool)

(assert (=> b!5526933 m!6529128))

(assert (=> b!5526443 d!1751244))

(declare-fun bs!1275976 () Bool)

(declare-fun d!1751246 () Bool)

(assert (= bs!1275976 (and d!1751246 b!5526445)))

(declare-fun lambda!296447 () Int)

(assert (=> bs!1275976 (= lambda!296447 lambda!296389)))

(assert (=> d!1751246 true))

(assert (=> d!1751246 (= (derivationStepZipper!1618 z!1189 (h!69164 s!2326)) (flatMap!1126 z!1189 lambda!296447))))

(declare-fun bs!1275977 () Bool)

(assert (= bs!1275977 d!1751246))

(declare-fun m!6529130 () Bool)

(assert (=> bs!1275977 m!6529130))

(assert (=> b!5526443 d!1751246))

(declare-fun b!5526942 () Bool)

(assert (=> b!5526942 true))

(declare-fun bs!1275978 () Bool)

(declare-fun b!5526944 () Bool)

(assert (= bs!1275978 (and b!5526944 b!5526942)))

(declare-fun lambda!296452 () Int)

(declare-fun lambda!296453 () Int)

(declare-fun lt!2247644 () Int)

(declare-fun lt!2247645 () Int)

(assert (=> bs!1275978 (= (= lt!2247644 lt!2247645) (= lambda!296453 lambda!296452))))

(assert (=> b!5526944 true))

(declare-fun d!1751248 () Bool)

(declare-fun e!3416780 () Bool)

(assert (=> d!1751248 e!3416780))

(declare-fun res!2353516 () Bool)

(assert (=> d!1751248 (=> (not res!2353516) (not e!3416780))))

(assert (=> d!1751248 (= res!2353516 (>= lt!2247644 0))))

(declare-fun e!3416781 () Int)

(assert (=> d!1751248 (= lt!2247644 e!3416781)))

(declare-fun c!966919 () Bool)

(assert (=> d!1751248 (= c!966919 ((_ is Cons!62714) (exprs!5397 lt!2247538)))))

(assert (=> d!1751248 (= (contextDepth!109 lt!2247538) lt!2247644)))

(assert (=> b!5526942 (= e!3416781 lt!2247645)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!213 (Regex!15513) Int)

(assert (=> b!5526942 (= lt!2247645 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 lt!2247538))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(declare-fun lt!2247646 () Unit!155486)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!18 (List!62838 Int Int) Unit!155486)

(assert (=> b!5526942 (= lt!2247646 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 lt!2247538)) lt!2247645 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(declare-fun forall!14690 (List!62838 Int) Bool)

(assert (=> b!5526942 (forall!14690 (t!376093 (exprs!5397 lt!2247538)) lambda!296452)))

(declare-fun lt!2247647 () Unit!155486)

(assert (=> b!5526942 (= lt!2247647 lt!2247646)))

(declare-fun b!5526943 () Bool)

(assert (=> b!5526943 (= e!3416781 0)))

(assert (=> b!5526944 (= e!3416780 (forall!14690 (exprs!5397 lt!2247538) lambda!296453))))

(assert (= (and d!1751248 c!966919) b!5526942))

(assert (= (and d!1751248 (not c!966919)) b!5526943))

(assert (= (and d!1751248 res!2353516) b!5526944))

(declare-fun m!6529132 () Bool)

(assert (=> b!5526942 m!6529132))

(declare-fun m!6529134 () Bool)

(assert (=> b!5526942 m!6529134))

(declare-fun m!6529136 () Bool)

(assert (=> b!5526942 m!6529136))

(assert (=> b!5526942 m!6529132))

(assert (=> b!5526942 m!6529136))

(declare-fun m!6529138 () Bool)

(assert (=> b!5526942 m!6529138))

(assert (=> b!5526942 m!6529136))

(declare-fun m!6529140 () Bool)

(assert (=> b!5526942 m!6529140))

(declare-fun m!6529142 () Bool)

(assert (=> b!5526944 m!6529142))

(assert (=> b!5526463 d!1751248))

(declare-fun bs!1275979 () Bool)

(declare-fun b!5526947 () Bool)

(assert (= bs!1275979 (and b!5526947 b!5526942)))

(declare-fun lambda!296454 () Int)

(declare-fun lt!2247649 () Int)

(assert (=> bs!1275979 (= (= lt!2247649 lt!2247645) (= lambda!296454 lambda!296452))))

(declare-fun bs!1275980 () Bool)

(assert (= bs!1275980 (and b!5526947 b!5526944)))

(assert (=> bs!1275980 (= (= lt!2247649 lt!2247644) (= lambda!296454 lambda!296453))))

(assert (=> b!5526947 true))

(declare-fun bs!1275981 () Bool)

(declare-fun b!5526949 () Bool)

(assert (= bs!1275981 (and b!5526949 b!5526942)))

(declare-fun lambda!296455 () Int)

(declare-fun lt!2247648 () Int)

(assert (=> bs!1275981 (= (= lt!2247648 lt!2247645) (= lambda!296455 lambda!296452))))

(declare-fun bs!1275982 () Bool)

(assert (= bs!1275982 (and b!5526949 b!5526944)))

(assert (=> bs!1275982 (= (= lt!2247648 lt!2247644) (= lambda!296455 lambda!296453))))

(declare-fun bs!1275983 () Bool)

(assert (= bs!1275983 (and b!5526949 b!5526947)))

(assert (=> bs!1275983 (= (= lt!2247648 lt!2247649) (= lambda!296455 lambda!296454))))

(assert (=> b!5526949 true))

(declare-fun d!1751250 () Bool)

(declare-fun e!3416782 () Bool)

(assert (=> d!1751250 e!3416782))

(declare-fun res!2353517 () Bool)

(assert (=> d!1751250 (=> (not res!2353517) (not e!3416782))))

(assert (=> d!1751250 (= res!2353517 (>= lt!2247648 0))))

(declare-fun e!3416783 () Int)

(assert (=> d!1751250 (= lt!2247648 e!3416783)))

(declare-fun c!966920 () Bool)

(assert (=> d!1751250 (= c!966920 ((_ is Cons!62714) (exprs!5397 lt!2247531)))))

(assert (=> d!1751250 (= (contextDepth!109 lt!2247531) lt!2247648)))

(assert (=> b!5526947 (= e!3416783 lt!2247649)))

(assert (=> b!5526947 (= lt!2247649 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 lt!2247531))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(declare-fun lt!2247650 () Unit!155486)

(assert (=> b!5526947 (= lt!2247650 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 lt!2247531)) lt!2247649 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(assert (=> b!5526947 (forall!14690 (t!376093 (exprs!5397 lt!2247531)) lambda!296454)))

(declare-fun lt!2247651 () Unit!155486)

(assert (=> b!5526947 (= lt!2247651 lt!2247650)))

(declare-fun b!5526948 () Bool)

(assert (=> b!5526948 (= e!3416783 0)))

(assert (=> b!5526949 (= e!3416782 (forall!14690 (exprs!5397 lt!2247531) lambda!296455))))

(assert (= (and d!1751250 c!966920) b!5526947))

(assert (= (and d!1751250 (not c!966920)) b!5526948))

(assert (= (and d!1751250 res!2353517) b!5526949))

(declare-fun m!6529144 () Bool)

(assert (=> b!5526947 m!6529144))

(declare-fun m!6529146 () Bool)

(assert (=> b!5526947 m!6529146))

(declare-fun m!6529148 () Bool)

(assert (=> b!5526947 m!6529148))

(assert (=> b!5526947 m!6529144))

(assert (=> b!5526947 m!6529148))

(declare-fun m!6529150 () Bool)

(assert (=> b!5526947 m!6529150))

(assert (=> b!5526947 m!6529148))

(declare-fun m!6529152 () Bool)

(assert (=> b!5526947 m!6529152))

(declare-fun m!6529154 () Bool)

(assert (=> b!5526949 m!6529154))

(assert (=> b!5526463 d!1751250))

(declare-fun b!5526956 () Bool)

(assert (=> b!5526956 true))

(declare-fun bs!1275984 () Bool)

(declare-fun b!5526958 () Bool)

(assert (= bs!1275984 (and b!5526958 b!5526956)))

(declare-fun lt!2247660 () Int)

(declare-fun lambda!296464 () Int)

(declare-fun lt!2247663 () Int)

(declare-fun lambda!296463 () Int)

(assert (=> bs!1275984 (= (= lt!2247660 lt!2247663) (= lambda!296464 lambda!296463))))

(assert (=> b!5526958 true))

(declare-fun d!1751252 () Bool)

(declare-fun e!3416789 () Bool)

(assert (=> d!1751252 e!3416789))

(declare-fun res!2353520 () Bool)

(assert (=> d!1751252 (=> (not res!2353520) (not e!3416789))))

(assert (=> d!1751252 (= res!2353520 (>= lt!2247660 0))))

(declare-fun e!3416788 () Int)

(assert (=> d!1751252 (= lt!2247660 e!3416788)))

(declare-fun c!966929 () Bool)

(assert (=> d!1751252 (= c!966929 ((_ is Cons!62715) (Cons!62715 lt!2247531 Nil!62715)))))

(assert (=> d!1751252 (= (zipperDepth!196 (Cons!62715 lt!2247531 Nil!62715)) lt!2247660)))

(assert (=> b!5526956 (= e!3416788 lt!2247663)))

(assert (=> b!5526956 (= lt!2247663 (maxBigInt!0 (contextDepth!109 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))))))

(declare-fun lt!2247662 () Unit!155486)

(declare-fun lambda!296462 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!101 (List!62839 Int Int Int) Unit!155486)

(assert (=> b!5526956 (= lt!2247662 (lemmaForallContextDepthBiggerThanTransitive!101 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lt!2247663 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lambda!296462))))

(declare-fun forall!14691 (List!62839 Int) Bool)

(assert (=> b!5526956 (forall!14691 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lambda!296463)))

(declare-fun lt!2247661 () Unit!155486)

(assert (=> b!5526956 (= lt!2247661 lt!2247662)))

(declare-fun b!5526957 () Bool)

(assert (=> b!5526957 (= e!3416788 0)))

(assert (=> b!5526958 (= e!3416789 (forall!14691 (Cons!62715 lt!2247531 Nil!62715) lambda!296464))))

(assert (= (and d!1751252 c!966929) b!5526956))

(assert (= (and d!1751252 (not c!966929)) b!5526957))

(assert (= (and d!1751252 res!2353520) b!5526958))

(declare-fun m!6529156 () Bool)

(assert (=> b!5526956 m!6529156))

(assert (=> b!5526956 m!6529156))

(declare-fun m!6529158 () Bool)

(assert (=> b!5526956 m!6529158))

(declare-fun m!6529160 () Bool)

(assert (=> b!5526956 m!6529160))

(declare-fun m!6529162 () Bool)

(assert (=> b!5526956 m!6529162))

(assert (=> b!5526956 m!6529156))

(declare-fun m!6529164 () Bool)

(assert (=> b!5526956 m!6529164))

(assert (=> b!5526956 m!6529162))

(declare-fun m!6529166 () Bool)

(assert (=> b!5526958 m!6529166))

(assert (=> b!5526454 d!1751252))

(declare-fun bs!1275985 () Bool)

(declare-fun b!5526961 () Bool)

(assert (= bs!1275985 (and b!5526961 b!5526956)))

(declare-fun lambda!296465 () Int)

(assert (=> bs!1275985 (= lambda!296465 lambda!296462)))

(declare-fun lambda!296466 () Int)

(declare-fun lt!2247667 () Int)

(assert (=> bs!1275985 (= (= lt!2247667 lt!2247663) (= lambda!296466 lambda!296463))))

(declare-fun bs!1275986 () Bool)

(assert (= bs!1275986 (and b!5526961 b!5526958)))

(assert (=> bs!1275986 (= (= lt!2247667 lt!2247660) (= lambda!296466 lambda!296464))))

(assert (=> b!5526961 true))

(declare-fun bs!1275987 () Bool)

(declare-fun b!5526963 () Bool)

(assert (= bs!1275987 (and b!5526963 b!5526956)))

(declare-fun lt!2247664 () Int)

(declare-fun lambda!296467 () Int)

(assert (=> bs!1275987 (= (= lt!2247664 lt!2247663) (= lambda!296467 lambda!296463))))

(declare-fun bs!1275988 () Bool)

(assert (= bs!1275988 (and b!5526963 b!5526958)))

(assert (=> bs!1275988 (= (= lt!2247664 lt!2247660) (= lambda!296467 lambda!296464))))

(declare-fun bs!1275989 () Bool)

(assert (= bs!1275989 (and b!5526963 b!5526961)))

(assert (=> bs!1275989 (= (= lt!2247664 lt!2247667) (= lambda!296467 lambda!296466))))

(assert (=> b!5526963 true))

(declare-fun d!1751254 () Bool)

(declare-fun e!3416791 () Bool)

(assert (=> d!1751254 e!3416791))

(declare-fun res!2353521 () Bool)

(assert (=> d!1751254 (=> (not res!2353521) (not e!3416791))))

(assert (=> d!1751254 (= res!2353521 (>= lt!2247664 0))))

(declare-fun e!3416790 () Int)

(assert (=> d!1751254 (= lt!2247664 e!3416790)))

(declare-fun c!966930 () Bool)

(assert (=> d!1751254 (= c!966930 ((_ is Cons!62715) (Cons!62715 lt!2247538 Nil!62715)))))

(assert (=> d!1751254 (= (zipperDepth!196 (Cons!62715 lt!2247538 Nil!62715)) lt!2247664)))

(assert (=> b!5526961 (= e!3416790 lt!2247667)))

(assert (=> b!5526961 (= lt!2247667 (maxBigInt!0 (contextDepth!109 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))))))

(declare-fun lt!2247666 () Unit!155486)

(assert (=> b!5526961 (= lt!2247666 (lemmaForallContextDepthBiggerThanTransitive!101 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lt!2247667 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lambda!296465))))

(assert (=> b!5526961 (forall!14691 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lambda!296466)))

(declare-fun lt!2247665 () Unit!155486)

(assert (=> b!5526961 (= lt!2247665 lt!2247666)))

(declare-fun b!5526962 () Bool)

(assert (=> b!5526962 (= e!3416790 0)))

(assert (=> b!5526963 (= e!3416791 (forall!14691 (Cons!62715 lt!2247538 Nil!62715) lambda!296467))))

(assert (= (and d!1751254 c!966930) b!5526961))

(assert (= (and d!1751254 (not c!966930)) b!5526962))

(assert (= (and d!1751254 res!2353521) b!5526963))

(declare-fun m!6529168 () Bool)

(assert (=> b!5526961 m!6529168))

(assert (=> b!5526961 m!6529168))

(declare-fun m!6529170 () Bool)

(assert (=> b!5526961 m!6529170))

(declare-fun m!6529172 () Bool)

(assert (=> b!5526961 m!6529172))

(declare-fun m!6529174 () Bool)

(assert (=> b!5526961 m!6529174))

(assert (=> b!5526961 m!6529168))

(declare-fun m!6529176 () Bool)

(assert (=> b!5526961 m!6529176))

(assert (=> b!5526961 m!6529174))

(declare-fun m!6529178 () Bool)

(assert (=> b!5526963 m!6529178))

(assert (=> b!5526454 d!1751254))

(declare-fun d!1751256 () Bool)

(assert (=> d!1751256 (= (isEmpty!34502 (t!376094 zl!343)) ((_ is Nil!62715) (t!376094 zl!343)))))

(assert (=> b!5526452 d!1751256))

(declare-fun bs!1275990 () Bool)

(declare-fun b!5527000 () Bool)

(assert (= bs!1275990 (and b!5527000 b!5526447)))

(declare-fun lambda!296472 () Int)

(assert (=> bs!1275990 (not (= lambda!296472 lambda!296387))))

(assert (=> bs!1275990 (not (= lambda!296472 lambda!296388))))

(assert (=> b!5527000 true))

(assert (=> b!5527000 true))

(declare-fun bs!1275991 () Bool)

(declare-fun b!5526996 () Bool)

(assert (= bs!1275991 (and b!5526996 b!5526447)))

(declare-fun lambda!296473 () Int)

(assert (=> bs!1275991 (not (= lambda!296473 lambda!296387))))

(assert (=> bs!1275991 (= lambda!296473 lambda!296388)))

(declare-fun bs!1275992 () Bool)

(assert (= bs!1275992 (and b!5526996 b!5527000)))

(assert (=> bs!1275992 (not (= lambda!296473 lambda!296472))))

(assert (=> b!5526996 true))

(assert (=> b!5526996 true))

(declare-fun d!1751258 () Bool)

(declare-fun c!966940 () Bool)

(assert (=> d!1751258 (= c!966940 ((_ is EmptyExpr!15513) r!7292))))

(declare-fun e!3416814 () Bool)

(assert (=> d!1751258 (= (matchRSpec!2616 r!7292 s!2326) e!3416814)))

(declare-fun bm!410054 () Bool)

(declare-fun call!410059 () Bool)

(declare-fun isEmpty!34505 (List!62840) Bool)

(assert (=> bm!410054 (= call!410059 (isEmpty!34505 s!2326))))

(declare-fun e!3416812 () Bool)

(declare-fun call!410060 () Bool)

(assert (=> b!5526996 (= e!3416812 call!410060)))

(declare-fun b!5526997 () Bool)

(declare-fun e!3416813 () Bool)

(assert (=> b!5526997 (= e!3416814 e!3416813)))

(declare-fun res!2353538 () Bool)

(assert (=> b!5526997 (= res!2353538 (not ((_ is EmptyLang!15513) r!7292)))))

(assert (=> b!5526997 (=> (not res!2353538) (not e!3416813))))

(declare-fun bm!410055 () Bool)

(declare-fun c!966939 () Bool)

(assert (=> bm!410055 (= call!410060 (Exists!2613 (ite c!966939 lambda!296472 lambda!296473)))))

(declare-fun b!5526998 () Bool)

(declare-fun e!3416811 () Bool)

(assert (=> b!5526998 (= e!3416811 e!3416812)))

(assert (=> b!5526998 (= c!966939 ((_ is Star!15513) r!7292))))

(declare-fun b!5526999 () Bool)

(assert (=> b!5526999 (= e!3416814 call!410059)))

(declare-fun e!3416815 () Bool)

(assert (=> b!5527000 (= e!3416815 call!410060)))

(declare-fun b!5527001 () Bool)

(declare-fun c!966942 () Bool)

(assert (=> b!5527001 (= c!966942 ((_ is Union!15513) r!7292))))

(declare-fun e!3416810 () Bool)

(assert (=> b!5527001 (= e!3416810 e!3416811)))

(declare-fun b!5527002 () Bool)

(declare-fun c!966941 () Bool)

(assert (=> b!5527002 (= c!966941 ((_ is ElementMatch!15513) r!7292))))

(assert (=> b!5527002 (= e!3416813 e!3416810)))

(declare-fun b!5527003 () Bool)

(assert (=> b!5527003 (= e!3416810 (= s!2326 (Cons!62716 (c!966767 r!7292) Nil!62716)))))

(declare-fun b!5527004 () Bool)

(declare-fun res!2353539 () Bool)

(assert (=> b!5527004 (=> res!2353539 e!3416815)))

(assert (=> b!5527004 (= res!2353539 call!410059)))

(assert (=> b!5527004 (= e!3416812 e!3416815)))

(declare-fun b!5527005 () Bool)

(declare-fun e!3416816 () Bool)

(assert (=> b!5527005 (= e!3416816 (matchRSpec!2616 (regTwo!31539 r!7292) s!2326))))

(declare-fun b!5527006 () Bool)

(assert (=> b!5527006 (= e!3416811 e!3416816)))

(declare-fun res!2353540 () Bool)

(assert (=> b!5527006 (= res!2353540 (matchRSpec!2616 (regOne!31539 r!7292) s!2326))))

(assert (=> b!5527006 (=> res!2353540 e!3416816)))

(assert (= (and d!1751258 c!966940) b!5526999))

(assert (= (and d!1751258 (not c!966940)) b!5526997))

(assert (= (and b!5526997 res!2353538) b!5527002))

(assert (= (and b!5527002 c!966941) b!5527003))

(assert (= (and b!5527002 (not c!966941)) b!5527001))

(assert (= (and b!5527001 c!966942) b!5527006))

(assert (= (and b!5527001 (not c!966942)) b!5526998))

(assert (= (and b!5527006 (not res!2353540)) b!5527005))

(assert (= (and b!5526998 c!966939) b!5527004))

(assert (= (and b!5526998 (not c!966939)) b!5526996))

(assert (= (and b!5527004 (not res!2353539)) b!5527000))

(assert (= (or b!5527000 b!5526996) bm!410055))

(assert (= (or b!5526999 b!5527004) bm!410054))

(declare-fun m!6529180 () Bool)

(assert (=> bm!410054 m!6529180))

(declare-fun m!6529182 () Bool)

(assert (=> bm!410055 m!6529182))

(declare-fun m!6529184 () Bool)

(assert (=> b!5527005 m!6529184))

(declare-fun m!6529186 () Bool)

(assert (=> b!5527006 m!6529186))

(assert (=> b!5526442 d!1751258))

(declare-fun b!5527035 () Bool)

(declare-fun res!2353559 () Bool)

(declare-fun e!3416834 () Bool)

(assert (=> b!5527035 (=> res!2353559 e!3416834)))

(declare-fun tail!10924 (List!62840) List!62840)

(assert (=> b!5527035 (= res!2353559 (not (isEmpty!34505 (tail!10924 s!2326))))))

(declare-fun b!5527036 () Bool)

(declare-fun e!3416832 () Bool)

(declare-fun e!3416837 () Bool)

(assert (=> b!5527036 (= e!3416832 e!3416837)))

(declare-fun res!2353562 () Bool)

(assert (=> b!5527036 (=> (not res!2353562) (not e!3416837))))

(declare-fun lt!2247670 () Bool)

(assert (=> b!5527036 (= res!2353562 (not lt!2247670))))

(declare-fun b!5527037 () Bool)

(declare-fun e!3416831 () Bool)

(declare-fun head!11829 (List!62840) C!31296)

(assert (=> b!5527037 (= e!3416831 (= (head!11829 s!2326) (c!966767 r!7292)))))

(declare-fun b!5527038 () Bool)

(declare-fun res!2353563 () Bool)

(assert (=> b!5527038 (=> res!2353563 e!3416832)))

(assert (=> b!5527038 (= res!2353563 (not ((_ is ElementMatch!15513) r!7292)))))

(declare-fun e!3416835 () Bool)

(assert (=> b!5527038 (= e!3416835 e!3416832)))

(declare-fun b!5527039 () Bool)

(assert (=> b!5527039 (= e!3416835 (not lt!2247670))))

(declare-fun b!5527040 () Bool)

(assert (=> b!5527040 (= e!3416834 (not (= (head!11829 s!2326) (c!966767 r!7292))))))

(declare-fun b!5527041 () Bool)

(declare-fun e!3416833 () Bool)

(declare-fun call!410063 () Bool)

(assert (=> b!5527041 (= e!3416833 (= lt!2247670 call!410063))))

(declare-fun b!5527042 () Bool)

(declare-fun res!2353557 () Bool)

(assert (=> b!5527042 (=> (not res!2353557) (not e!3416831))))

(assert (=> b!5527042 (= res!2353557 (not call!410063))))

(declare-fun b!5527043 () Bool)

(declare-fun res!2353561 () Bool)

(assert (=> b!5527043 (=> res!2353561 e!3416832)))

(assert (=> b!5527043 (= res!2353561 e!3416831)))

(declare-fun res!2353560 () Bool)

(assert (=> b!5527043 (=> (not res!2353560) (not e!3416831))))

(assert (=> b!5527043 (= res!2353560 lt!2247670)))

(declare-fun b!5527044 () Bool)

(declare-fun e!3416836 () Bool)

(assert (=> b!5527044 (= e!3416836 (nullable!5547 r!7292))))

(declare-fun b!5527045 () Bool)

(assert (=> b!5527045 (= e!3416833 e!3416835)))

(declare-fun c!966949 () Bool)

(assert (=> b!5527045 (= c!966949 ((_ is EmptyLang!15513) r!7292))))

(declare-fun bm!410058 () Bool)

(assert (=> bm!410058 (= call!410063 (isEmpty!34505 s!2326))))

(declare-fun b!5527046 () Bool)

(declare-fun res!2353564 () Bool)

(assert (=> b!5527046 (=> (not res!2353564) (not e!3416831))))

(assert (=> b!5527046 (= res!2353564 (isEmpty!34505 (tail!10924 s!2326)))))

(declare-fun d!1751260 () Bool)

(assert (=> d!1751260 e!3416833))

(declare-fun c!966950 () Bool)

(assert (=> d!1751260 (= c!966950 ((_ is EmptyExpr!15513) r!7292))))

(assert (=> d!1751260 (= lt!2247670 e!3416836)))

(declare-fun c!966951 () Bool)

(assert (=> d!1751260 (= c!966951 (isEmpty!34505 s!2326))))

(assert (=> d!1751260 (validRegex!7249 r!7292)))

(assert (=> d!1751260 (= (matchR!7698 r!7292 s!2326) lt!2247670)))

(declare-fun b!5527047 () Bool)

(declare-fun derivativeStep!4378 (Regex!15513 C!31296) Regex!15513)

(assert (=> b!5527047 (= e!3416836 (matchR!7698 (derivativeStep!4378 r!7292 (head!11829 s!2326)) (tail!10924 s!2326)))))

(declare-fun b!5527048 () Bool)

(assert (=> b!5527048 (= e!3416837 e!3416834)))

(declare-fun res!2353558 () Bool)

(assert (=> b!5527048 (=> res!2353558 e!3416834)))

(assert (=> b!5527048 (= res!2353558 call!410063)))

(assert (= (and d!1751260 c!966951) b!5527044))

(assert (= (and d!1751260 (not c!966951)) b!5527047))

(assert (= (and d!1751260 c!966950) b!5527041))

(assert (= (and d!1751260 (not c!966950)) b!5527045))

(assert (= (and b!5527045 c!966949) b!5527039))

(assert (= (and b!5527045 (not c!966949)) b!5527038))

(assert (= (and b!5527038 (not res!2353563)) b!5527043))

(assert (= (and b!5527043 res!2353560) b!5527042))

(assert (= (and b!5527042 res!2353557) b!5527046))

(assert (= (and b!5527046 res!2353564) b!5527037))

(assert (= (and b!5527043 (not res!2353561)) b!5527036))

(assert (= (and b!5527036 res!2353562) b!5527048))

(assert (= (and b!5527048 (not res!2353558)) b!5527035))

(assert (= (and b!5527035 (not res!2353559)) b!5527040))

(assert (= (or b!5527041 b!5527042 b!5527048) bm!410058))

(assert (=> bm!410058 m!6529180))

(declare-fun m!6529188 () Bool)

(assert (=> b!5527035 m!6529188))

(assert (=> b!5527035 m!6529188))

(declare-fun m!6529190 () Bool)

(assert (=> b!5527035 m!6529190))

(declare-fun m!6529192 () Bool)

(assert (=> b!5527040 m!6529192))

(assert (=> b!5527037 m!6529192))

(assert (=> b!5527047 m!6529192))

(assert (=> b!5527047 m!6529192))

(declare-fun m!6529194 () Bool)

(assert (=> b!5527047 m!6529194))

(assert (=> b!5527047 m!6529188))

(assert (=> b!5527047 m!6529194))

(assert (=> b!5527047 m!6529188))

(declare-fun m!6529196 () Bool)

(assert (=> b!5527047 m!6529196))

(assert (=> d!1751260 m!6529180))

(assert (=> d!1751260 m!6528772))

(declare-fun m!6529198 () Bool)

(assert (=> b!5527044 m!6529198))

(assert (=> b!5527046 m!6529188))

(assert (=> b!5527046 m!6529188))

(assert (=> b!5527046 m!6529190))

(assert (=> b!5526442 d!1751260))

(declare-fun d!1751262 () Bool)

(assert (=> d!1751262 (= (matchR!7698 r!7292 s!2326) (matchRSpec!2616 r!7292 s!2326))))

(declare-fun lt!2247673 () Unit!155486)

(declare-fun choose!41993 (Regex!15513 List!62840) Unit!155486)

(assert (=> d!1751262 (= lt!2247673 (choose!41993 r!7292 s!2326))))

(assert (=> d!1751262 (validRegex!7249 r!7292)))

(assert (=> d!1751262 (= (mainMatchTheorem!2616 r!7292 s!2326) lt!2247673)))

(declare-fun bs!1275993 () Bool)

(assert (= bs!1275993 d!1751262))

(assert (=> bs!1275993 m!6528782))

(assert (=> bs!1275993 m!6528780))

(declare-fun m!6529200 () Bool)

(assert (=> bs!1275993 m!6529200))

(assert (=> bs!1275993 m!6528772))

(assert (=> b!5526442 d!1751262))

(declare-fun d!1751264 () Bool)

(declare-fun c!966954 () Bool)

(assert (=> d!1751264 (= c!966954 (isEmpty!34505 s!2326))))

(declare-fun e!3416840 () Bool)

(assert (=> d!1751264 (= (matchZipper!1671 lt!2247532 s!2326) e!3416840)))

(declare-fun b!5527053 () Bool)

(declare-fun nullableZipper!1539 ((InoxSet Context!9794)) Bool)

(assert (=> b!5527053 (= e!3416840 (nullableZipper!1539 lt!2247532))))

(declare-fun b!5527054 () Bool)

(assert (=> b!5527054 (= e!3416840 (matchZipper!1671 (derivationStepZipper!1618 lt!2247532 (head!11829 s!2326)) (tail!10924 s!2326)))))

(assert (= (and d!1751264 c!966954) b!5527053))

(assert (= (and d!1751264 (not c!966954)) b!5527054))

(assert (=> d!1751264 m!6529180))

(declare-fun m!6529202 () Bool)

(assert (=> b!5527053 m!6529202))

(assert (=> b!5527054 m!6529192))

(assert (=> b!5527054 m!6529192))

(declare-fun m!6529204 () Bool)

(assert (=> b!5527054 m!6529204))

(assert (=> b!5527054 m!6529188))

(assert (=> b!5527054 m!6529204))

(assert (=> b!5527054 m!6529188))

(declare-fun m!6529206 () Bool)

(assert (=> b!5527054 m!6529206))

(assert (=> b!5526440 d!1751264))

(declare-fun d!1751266 () Bool)

(declare-fun c!966955 () Bool)

(assert (=> d!1751266 (= c!966955 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3416841 () Bool)

(assert (=> d!1751266 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (t!376095 s!2326)) e!3416841)))

(declare-fun b!5527055 () Bool)

(assert (=> b!5527055 (= e!3416841 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326))))))

(declare-fun b!5527056 () Bool)

(assert (=> b!5527056 (= e!3416841 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751266 c!966955) b!5527055))

(assert (= (and d!1751266 (not c!966955)) b!5527056))

(declare-fun m!6529208 () Bool)

(assert (=> d!1751266 m!6529208))

(assert (=> b!5527055 m!6528766))

(declare-fun m!6529210 () Bool)

(assert (=> b!5527055 m!6529210))

(declare-fun m!6529212 () Bool)

(assert (=> b!5527056 m!6529212))

(assert (=> b!5527056 m!6528766))

(assert (=> b!5527056 m!6529212))

(declare-fun m!6529214 () Bool)

(assert (=> b!5527056 m!6529214))

(declare-fun m!6529216 () Bool)

(assert (=> b!5527056 m!6529216))

(assert (=> b!5527056 m!6529214))

(assert (=> b!5527056 m!6529216))

(declare-fun m!6529218 () Bool)

(assert (=> b!5527056 m!6529218))

(assert (=> b!5526440 d!1751266))

(declare-fun bs!1275994 () Bool)

(declare-fun d!1751268 () Bool)

(assert (= bs!1275994 (and d!1751268 b!5526445)))

(declare-fun lambda!296474 () Int)

(assert (=> bs!1275994 (= lambda!296474 lambda!296389)))

(declare-fun bs!1275995 () Bool)

(assert (= bs!1275995 (and d!1751268 d!1751246)))

(assert (=> bs!1275995 (= lambda!296474 lambda!296447)))

(assert (=> d!1751268 true))

(assert (=> d!1751268 (= (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (flatMap!1126 lt!2247532 lambda!296474))))

(declare-fun bs!1275996 () Bool)

(assert (= bs!1275996 d!1751268))

(declare-fun m!6529220 () Bool)

(assert (=> bs!1275996 m!6529220))

(assert (=> b!5526440 d!1751268))

(declare-fun d!1751270 () Bool)

(declare-fun choose!41994 ((InoxSet Context!9794) Int) (InoxSet Context!9794))

(assert (=> d!1751270 (= (flatMap!1126 lt!2247543 lambda!296389) (choose!41994 lt!2247543 lambda!296389))))

(declare-fun bs!1275997 () Bool)

(assert (= bs!1275997 d!1751270))

(declare-fun m!6529222 () Bool)

(assert (=> bs!1275997 m!6529222))

(assert (=> b!5526441 d!1751270))

(declare-fun d!1751272 () Bool)

(declare-fun dynLambda!24512 (Int Context!9794) (InoxSet Context!9794))

(assert (=> d!1751272 (= (flatMap!1126 lt!2247532 lambda!296389) (dynLambda!24512 lambda!296389 lt!2247530))))

(declare-fun lt!2247676 () Unit!155486)

(declare-fun choose!41995 ((InoxSet Context!9794) Context!9794 Int) Unit!155486)

(assert (=> d!1751272 (= lt!2247676 (choose!41995 lt!2247532 lt!2247530 lambda!296389))))

(assert (=> d!1751272 (= lt!2247532 (store ((as const (Array Context!9794 Bool)) false) lt!2247530 true))))

(assert (=> d!1751272 (= (lemmaFlatMapOnSingletonSet!658 lt!2247532 lt!2247530 lambda!296389) lt!2247676)))

(declare-fun b_lambda!209671 () Bool)

(assert (=> (not b_lambda!209671) (not d!1751272)))

(declare-fun bs!1275998 () Bool)

(assert (= bs!1275998 d!1751272))

(assert (=> bs!1275998 m!6528708))

(declare-fun m!6529224 () Bool)

(assert (=> bs!1275998 m!6529224))

(declare-fun m!6529226 () Bool)

(assert (=> bs!1275998 m!6529226))

(assert (=> bs!1275998 m!6528726))

(assert (=> b!5526441 d!1751272))

(declare-fun bm!410059 () Bool)

(declare-fun call!410069 () List!62838)

(declare-fun call!410067 () List!62838)

(assert (=> bm!410059 (= call!410069 call!410067)))

(declare-fun b!5527057 () Bool)

(declare-fun e!3416842 () (InoxSet Context!9794))

(declare-fun e!3416845 () (InoxSet Context!9794))

(assert (=> b!5527057 (= e!3416842 e!3416845)))

(declare-fun c!966957 () Bool)

(assert (=> b!5527057 (= c!966957 ((_ is Union!15513) (regTwo!31538 r!7292)))))

(declare-fun d!1751274 () Bool)

(declare-fun c!966959 () Bool)

(assert (=> d!1751274 (= c!966959 (and ((_ is ElementMatch!15513) (regTwo!31538 r!7292)) (= (c!966767 (regTwo!31538 r!7292)) (h!69164 s!2326))))))

(assert (=> d!1751274 (= (derivationStepZipperDown!855 (regTwo!31538 r!7292) lt!2247553 (h!69164 s!2326)) e!3416842)))

(declare-fun b!5527058 () Bool)

(assert (=> b!5527058 (= e!3416842 (store ((as const (Array Context!9794 Bool)) false) lt!2247553 true))))

(declare-fun bm!410060 () Bool)

(declare-fun call!410068 () (InoxSet Context!9794))

(declare-fun call!410066 () (InoxSet Context!9794))

(assert (=> bm!410060 (= call!410068 call!410066)))

(declare-fun b!5527059 () Bool)

(declare-fun e!3416847 () (InoxSet Context!9794))

(declare-fun e!3416843 () (InoxSet Context!9794))

(assert (=> b!5527059 (= e!3416847 e!3416843)))

(declare-fun c!966960 () Bool)

(assert (=> b!5527059 (= c!966960 ((_ is Concat!24358) (regTwo!31538 r!7292)))))

(declare-fun b!5527060 () Bool)

(declare-fun e!3416844 () (InoxSet Context!9794))

(declare-fun call!410064 () (InoxSet Context!9794))

(assert (=> b!5527060 (= e!3416844 call!410064)))

(declare-fun b!5527061 () Bool)

(declare-fun c!966956 () Bool)

(assert (=> b!5527061 (= c!966956 ((_ is Star!15513) (regTwo!31538 r!7292)))))

(assert (=> b!5527061 (= e!3416843 e!3416844)))

(declare-fun b!5527062 () Bool)

(declare-fun c!966958 () Bool)

(declare-fun e!3416846 () Bool)

(assert (=> b!5527062 (= c!966958 e!3416846)))

(declare-fun res!2353565 () Bool)

(assert (=> b!5527062 (=> (not res!2353565) (not e!3416846))))

(assert (=> b!5527062 (= res!2353565 ((_ is Concat!24358) (regTwo!31538 r!7292)))))

(assert (=> b!5527062 (= e!3416845 e!3416847)))

(declare-fun b!5527063 () Bool)

(assert (=> b!5527063 (= e!3416844 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410061 () Bool)

(assert (=> bm!410061 (= call!410064 call!410068)))

(declare-fun bm!410062 () Bool)

(assert (=> bm!410062 (= call!410067 ($colon$colon!1592 (exprs!5397 lt!2247553) (ite (or c!966958 c!966960) (regTwo!31538 (regTwo!31538 r!7292)) (regTwo!31538 r!7292))))))

(declare-fun b!5527064 () Bool)

(assert (=> b!5527064 (= e!3416843 call!410064)))

(declare-fun b!5527065 () Bool)

(declare-fun call!410065 () (InoxSet Context!9794))

(assert (=> b!5527065 (= e!3416847 ((_ map or) call!410065 call!410068))))

(declare-fun bm!410063 () Bool)

(assert (=> bm!410063 (= call!410065 (derivationStepZipperDown!855 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292))) (ite c!966957 lt!2247553 (Context!9795 call!410067)) (h!69164 s!2326)))))

(declare-fun bm!410064 () Bool)

(assert (=> bm!410064 (= call!410066 (derivationStepZipperDown!855 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292))))) (ite (or c!966957 c!966958) lt!2247553 (Context!9795 call!410069)) (h!69164 s!2326)))))

(declare-fun b!5527066 () Bool)

(assert (=> b!5527066 (= e!3416845 ((_ map or) call!410066 call!410065))))

(declare-fun b!5527067 () Bool)

(assert (=> b!5527067 (= e!3416846 (nullable!5547 (regOne!31538 (regTwo!31538 r!7292))))))

(assert (= (and d!1751274 c!966959) b!5527058))

(assert (= (and d!1751274 (not c!966959)) b!5527057))

(assert (= (and b!5527057 c!966957) b!5527066))

(assert (= (and b!5527057 (not c!966957)) b!5527062))

(assert (= (and b!5527062 res!2353565) b!5527067))

(assert (= (and b!5527062 c!966958) b!5527065))

(assert (= (and b!5527062 (not c!966958)) b!5527059))

(assert (= (and b!5527059 c!966960) b!5527064))

(assert (= (and b!5527059 (not c!966960)) b!5527061))

(assert (= (and b!5527061 c!966956) b!5527060))

(assert (= (and b!5527061 (not c!966956)) b!5527063))

(assert (= (or b!5527064 b!5527060) bm!410059))

(assert (= (or b!5527064 b!5527060) bm!410061))

(assert (= (or b!5527065 bm!410059) bm!410062))

(assert (= (or b!5527065 bm!410061) bm!410060))

(assert (= (or b!5527066 b!5527065) bm!410063))

(assert (= (or b!5527066 bm!410060) bm!410064))

(assert (=> b!5527058 m!6529116))

(declare-fun m!6529228 () Bool)

(assert (=> b!5527067 m!6529228))

(declare-fun m!6529230 () Bool)

(assert (=> bm!410064 m!6529230))

(declare-fun m!6529232 () Bool)

(assert (=> bm!410062 m!6529232))

(declare-fun m!6529234 () Bool)

(assert (=> bm!410063 m!6529234))

(assert (=> b!5526441 d!1751274))

(declare-fun d!1751276 () Bool)

(declare-fun nullableFct!1671 (Regex!15513) Bool)

(assert (=> d!1751276 (= (nullable!5547 (regOne!31538 r!7292)) (nullableFct!1671 (regOne!31538 r!7292)))))

(declare-fun bs!1275999 () Bool)

(assert (= bs!1275999 d!1751276))

(declare-fun m!6529236 () Bool)

(assert (=> bs!1275999 m!6529236))

(assert (=> b!5526441 d!1751276))

(declare-fun bm!410065 () Bool)

(declare-fun call!410075 () List!62838)

(declare-fun call!410073 () List!62838)

(assert (=> bm!410065 (= call!410075 call!410073)))

(declare-fun b!5527068 () Bool)

(declare-fun e!3416848 () (InoxSet Context!9794))

(declare-fun e!3416851 () (InoxSet Context!9794))

(assert (=> b!5527068 (= e!3416848 e!3416851)))

(declare-fun c!966962 () Bool)

(assert (=> b!5527068 (= c!966962 ((_ is Union!15513) (regOne!31538 r!7292)))))

(declare-fun d!1751278 () Bool)

(declare-fun c!966964 () Bool)

(assert (=> d!1751278 (= c!966964 (and ((_ is ElementMatch!15513) (regOne!31538 r!7292)) (= (c!966767 (regOne!31538 r!7292)) (h!69164 s!2326))))))

(assert (=> d!1751278 (= (derivationStepZipperDown!855 (regOne!31538 r!7292) lt!2247530 (h!69164 s!2326)) e!3416848)))

(declare-fun b!5527069 () Bool)

(assert (=> b!5527069 (= e!3416848 (store ((as const (Array Context!9794 Bool)) false) lt!2247530 true))))

(declare-fun bm!410066 () Bool)

(declare-fun call!410074 () (InoxSet Context!9794))

(declare-fun call!410072 () (InoxSet Context!9794))

(assert (=> bm!410066 (= call!410074 call!410072)))

(declare-fun b!5527070 () Bool)

(declare-fun e!3416853 () (InoxSet Context!9794))

(declare-fun e!3416849 () (InoxSet Context!9794))

(assert (=> b!5527070 (= e!3416853 e!3416849)))

(declare-fun c!966965 () Bool)

(assert (=> b!5527070 (= c!966965 ((_ is Concat!24358) (regOne!31538 r!7292)))))

(declare-fun b!5527071 () Bool)

(declare-fun e!3416850 () (InoxSet Context!9794))

(declare-fun call!410070 () (InoxSet Context!9794))

(assert (=> b!5527071 (= e!3416850 call!410070)))

(declare-fun b!5527072 () Bool)

(declare-fun c!966961 () Bool)

(assert (=> b!5527072 (= c!966961 ((_ is Star!15513) (regOne!31538 r!7292)))))

(assert (=> b!5527072 (= e!3416849 e!3416850)))

(declare-fun b!5527073 () Bool)

(declare-fun c!966963 () Bool)

(declare-fun e!3416852 () Bool)

(assert (=> b!5527073 (= c!966963 e!3416852)))

(declare-fun res!2353566 () Bool)

(assert (=> b!5527073 (=> (not res!2353566) (not e!3416852))))

(assert (=> b!5527073 (= res!2353566 ((_ is Concat!24358) (regOne!31538 r!7292)))))

(assert (=> b!5527073 (= e!3416851 e!3416853)))

(declare-fun b!5527074 () Bool)

(assert (=> b!5527074 (= e!3416850 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410067 () Bool)

(assert (=> bm!410067 (= call!410070 call!410074)))

(declare-fun bm!410068 () Bool)

(assert (=> bm!410068 (= call!410073 ($colon$colon!1592 (exprs!5397 lt!2247530) (ite (or c!966963 c!966965) (regTwo!31538 (regOne!31538 r!7292)) (regOne!31538 r!7292))))))

(declare-fun b!5527075 () Bool)

(assert (=> b!5527075 (= e!3416849 call!410070)))

(declare-fun b!5527076 () Bool)

(declare-fun call!410071 () (InoxSet Context!9794))

(assert (=> b!5527076 (= e!3416853 ((_ map or) call!410071 call!410074))))

(declare-fun bm!410069 () Bool)

(assert (=> bm!410069 (= call!410071 (derivationStepZipperDown!855 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))) (ite c!966962 lt!2247530 (Context!9795 call!410073)) (h!69164 s!2326)))))

(declare-fun bm!410070 () Bool)

(assert (=> bm!410070 (= call!410072 (derivationStepZipperDown!855 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292))))) (ite (or c!966962 c!966963) lt!2247530 (Context!9795 call!410075)) (h!69164 s!2326)))))

(declare-fun b!5527077 () Bool)

(assert (=> b!5527077 (= e!3416851 ((_ map or) call!410072 call!410071))))

(declare-fun b!5527078 () Bool)

(assert (=> b!5527078 (= e!3416852 (nullable!5547 (regOne!31538 (regOne!31538 r!7292))))))

(assert (= (and d!1751278 c!966964) b!5527069))

(assert (= (and d!1751278 (not c!966964)) b!5527068))

(assert (= (and b!5527068 c!966962) b!5527077))

(assert (= (and b!5527068 (not c!966962)) b!5527073))

(assert (= (and b!5527073 res!2353566) b!5527078))

(assert (= (and b!5527073 c!966963) b!5527076))

(assert (= (and b!5527073 (not c!966963)) b!5527070))

(assert (= (and b!5527070 c!966965) b!5527075))

(assert (= (and b!5527070 (not c!966965)) b!5527072))

(assert (= (and b!5527072 c!966961) b!5527071))

(assert (= (and b!5527072 (not c!966961)) b!5527074))

(assert (= (or b!5527075 b!5527071) bm!410065))

(assert (= (or b!5527075 b!5527071) bm!410067))

(assert (= (or b!5527076 bm!410065) bm!410068))

(assert (= (or b!5527076 bm!410067) bm!410066))

(assert (= (or b!5527077 b!5527076) bm!410069))

(assert (= (or b!5527077 bm!410066) bm!410070))

(assert (=> b!5527069 m!6528726))

(declare-fun m!6529238 () Bool)

(assert (=> b!5527078 m!6529238))

(declare-fun m!6529240 () Bool)

(assert (=> bm!410070 m!6529240))

(declare-fun m!6529242 () Bool)

(assert (=> bm!410068 m!6529242))

(declare-fun m!6529244 () Bool)

(assert (=> bm!410069 m!6529244))

(assert (=> b!5526441 d!1751278))

(declare-fun d!1751280 () Bool)

(assert (=> d!1751280 (= (flatMap!1126 lt!2247543 lambda!296389) (dynLambda!24512 lambda!296389 lt!2247531))))

(declare-fun lt!2247677 () Unit!155486)

(assert (=> d!1751280 (= lt!2247677 (choose!41995 lt!2247543 lt!2247531 lambda!296389))))

(assert (=> d!1751280 (= lt!2247543 (store ((as const (Array Context!9794 Bool)) false) lt!2247531 true))))

(assert (=> d!1751280 (= (lemmaFlatMapOnSingletonSet!658 lt!2247543 lt!2247531 lambda!296389) lt!2247677)))

(declare-fun b_lambda!209673 () Bool)

(assert (=> (not b_lambda!209673) (not d!1751280)))

(declare-fun bs!1276000 () Bool)

(assert (= bs!1276000 d!1751280))

(assert (=> bs!1276000 m!6528724))

(declare-fun m!6529246 () Bool)

(assert (=> bs!1276000 m!6529246))

(declare-fun m!6529248 () Bool)

(assert (=> bs!1276000 m!6529248))

(assert (=> bs!1276000 m!6528728))

(assert (=> b!5526441 d!1751280))

(declare-fun b!5527079 () Bool)

(declare-fun e!3416856 () Bool)

(assert (=> b!5527079 (= e!3416856 (nullable!5547 (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5527080 () Bool)

(declare-fun e!3416854 () (InoxSet Context!9794))

(declare-fun e!3416855 () (InoxSet Context!9794))

(assert (=> b!5527080 (= e!3416854 e!3416855)))

(declare-fun c!966966 () Bool)

(assert (=> b!5527080 (= c!966966 ((_ is Cons!62714) (exprs!5397 lt!2247530)))))

(declare-fun b!5527081 () Bool)

(assert (=> b!5527081 (= e!3416855 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410071 () Bool)

(declare-fun call!410076 () (InoxSet Context!9794))

(assert (=> bm!410071 (= call!410076 (derivationStepZipperDown!855 (h!69162 (exprs!5397 lt!2247530)) (Context!9795 (t!376093 (exprs!5397 lt!2247530))) (h!69164 s!2326)))))

(declare-fun b!5527082 () Bool)

(assert (=> b!5527082 (= e!3416855 call!410076)))

(declare-fun d!1751282 () Bool)

(declare-fun c!966967 () Bool)

(assert (=> d!1751282 (= c!966967 e!3416856)))

(declare-fun res!2353567 () Bool)

(assert (=> d!1751282 (=> (not res!2353567) (not e!3416856))))

(assert (=> d!1751282 (= res!2353567 ((_ is Cons!62714) (exprs!5397 lt!2247530)))))

(assert (=> d!1751282 (= (derivationStepZipperUp!781 lt!2247530 (h!69164 s!2326)) e!3416854)))

(declare-fun b!5527083 () Bool)

(assert (=> b!5527083 (= e!3416854 ((_ map or) call!410076 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 lt!2247530))) (h!69164 s!2326))))))

(assert (= (and d!1751282 res!2353567) b!5527079))

(assert (= (and d!1751282 c!966967) b!5527083))

(assert (= (and d!1751282 (not c!966967)) b!5527080))

(assert (= (and b!5527080 c!966966) b!5527082))

(assert (= (and b!5527080 (not c!966966)) b!5527081))

(assert (= (or b!5527083 b!5527082) bm!410071))

(declare-fun m!6529250 () Bool)

(assert (=> b!5527079 m!6529250))

(declare-fun m!6529252 () Bool)

(assert (=> bm!410071 m!6529252))

(declare-fun m!6529254 () Bool)

(assert (=> b!5527083 m!6529254))

(assert (=> b!5526441 d!1751282))

(declare-fun d!1751284 () Bool)

(assert (=> d!1751284 (= (flatMap!1126 lt!2247532 lambda!296389) (choose!41994 lt!2247532 lambda!296389))))

(declare-fun bs!1276001 () Bool)

(assert (= bs!1276001 d!1751284))

(declare-fun m!6529256 () Bool)

(assert (=> bs!1276001 m!6529256))

(assert (=> b!5526441 d!1751284))

(declare-fun b!5527084 () Bool)

(declare-fun e!3416859 () Bool)

(assert (=> b!5527084 (= e!3416859 (nullable!5547 (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5527085 () Bool)

(declare-fun e!3416857 () (InoxSet Context!9794))

(declare-fun e!3416858 () (InoxSet Context!9794))

(assert (=> b!5527085 (= e!3416857 e!3416858)))

(declare-fun c!966968 () Bool)

(assert (=> b!5527085 (= c!966968 ((_ is Cons!62714) (exprs!5397 lt!2247531)))))

(declare-fun b!5527086 () Bool)

(assert (=> b!5527086 (= e!3416858 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410072 () Bool)

(declare-fun call!410077 () (InoxSet Context!9794))

(assert (=> bm!410072 (= call!410077 (derivationStepZipperDown!855 (h!69162 (exprs!5397 lt!2247531)) (Context!9795 (t!376093 (exprs!5397 lt!2247531))) (h!69164 s!2326)))))

(declare-fun b!5527087 () Bool)

(assert (=> b!5527087 (= e!3416858 call!410077)))

(declare-fun d!1751286 () Bool)

(declare-fun c!966969 () Bool)

(assert (=> d!1751286 (= c!966969 e!3416859)))

(declare-fun res!2353568 () Bool)

(assert (=> d!1751286 (=> (not res!2353568) (not e!3416859))))

(assert (=> d!1751286 (= res!2353568 ((_ is Cons!62714) (exprs!5397 lt!2247531)))))

(assert (=> d!1751286 (= (derivationStepZipperUp!781 lt!2247531 (h!69164 s!2326)) e!3416857)))

(declare-fun b!5527088 () Bool)

(assert (=> b!5527088 (= e!3416857 ((_ map or) call!410077 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 lt!2247531))) (h!69164 s!2326))))))

(assert (= (and d!1751286 res!2353568) b!5527084))

(assert (= (and d!1751286 c!966969) b!5527088))

(assert (= (and d!1751286 (not c!966969)) b!5527085))

(assert (= (and b!5527085 c!966968) b!5527087))

(assert (= (and b!5527085 (not c!966968)) b!5527086))

(assert (= (or b!5527088 b!5527087) bm!410072))

(declare-fun m!6529258 () Bool)

(assert (=> b!5527084 m!6529258))

(declare-fun m!6529260 () Bool)

(assert (=> bm!410072 m!6529260))

(declare-fun m!6529262 () Bool)

(assert (=> b!5527088 m!6529262))

(assert (=> b!5526441 d!1751286))

(declare-fun bs!1276002 () Bool)

(declare-fun d!1751288 () Bool)

(assert (= bs!1276002 (and d!1751288 b!5526942)))

(declare-fun lambda!296477 () Int)

(assert (=> bs!1276002 (not (= lambda!296477 lambda!296452))))

(declare-fun bs!1276003 () Bool)

(assert (= bs!1276003 (and d!1751288 b!5526944)))

(assert (=> bs!1276003 (not (= lambda!296477 lambda!296453))))

(declare-fun bs!1276004 () Bool)

(assert (= bs!1276004 (and d!1751288 b!5526947)))

(assert (=> bs!1276004 (not (= lambda!296477 lambda!296454))))

(declare-fun bs!1276005 () Bool)

(assert (= bs!1276005 (and d!1751288 b!5526949)))

(assert (=> bs!1276005 (not (= lambda!296477 lambda!296455))))

(declare-fun b!5527109 () Bool)

(declare-fun e!3416873 () Bool)

(declare-fun lt!2247680 () Regex!15513)

(declare-fun isEmptyExpr!1085 (Regex!15513) Bool)

(assert (=> b!5527109 (= e!3416873 (isEmptyExpr!1085 lt!2247680))))

(declare-fun b!5527110 () Bool)

(declare-fun e!3416872 () Regex!15513)

(assert (=> b!5527110 (= e!3416872 (h!69162 (exprs!5397 (h!69163 zl!343))))))

(declare-fun b!5527111 () Bool)

(declare-fun e!3416875 () Bool)

(assert (=> b!5527111 (= e!3416873 e!3416875)))

(declare-fun c!966979 () Bool)

(declare-fun tail!10925 (List!62838) List!62838)

(assert (=> b!5527111 (= c!966979 (isEmpty!34501 (tail!10925 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5527112 () Bool)

(declare-fun isConcat!608 (Regex!15513) Bool)

(assert (=> b!5527112 (= e!3416875 (isConcat!608 lt!2247680))))

(declare-fun e!3416877 () Bool)

(assert (=> d!1751288 e!3416877))

(declare-fun res!2353574 () Bool)

(assert (=> d!1751288 (=> (not res!2353574) (not e!3416877))))

(assert (=> d!1751288 (= res!2353574 (validRegex!7249 lt!2247680))))

(assert (=> d!1751288 (= lt!2247680 e!3416872)))

(declare-fun c!966980 () Bool)

(declare-fun e!3416876 () Bool)

(assert (=> d!1751288 (= c!966980 e!3416876)))

(declare-fun res!2353573 () Bool)

(assert (=> d!1751288 (=> (not res!2353573) (not e!3416876))))

(assert (=> d!1751288 (= res!2353573 ((_ is Cons!62714) (exprs!5397 (h!69163 zl!343))))))

(assert (=> d!1751288 (forall!14690 (exprs!5397 (h!69163 zl!343)) lambda!296477)))

(assert (=> d!1751288 (= (generalisedConcat!1128 (exprs!5397 (h!69163 zl!343))) lt!2247680)))

(declare-fun b!5527113 () Bool)

(declare-fun head!11830 (List!62838) Regex!15513)

(assert (=> b!5527113 (= e!3416875 (= lt!2247680 (head!11830 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5527114 () Bool)

(declare-fun e!3416874 () Regex!15513)

(assert (=> b!5527114 (= e!3416874 (Concat!24358 (h!69162 (exprs!5397 (h!69163 zl!343))) (generalisedConcat!1128 (t!376093 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5527115 () Bool)

(assert (=> b!5527115 (= e!3416876 (isEmpty!34501 (t!376093 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5527116 () Bool)

(assert (=> b!5527116 (= e!3416872 e!3416874)))

(declare-fun c!966981 () Bool)

(assert (=> b!5527116 (= c!966981 ((_ is Cons!62714) (exprs!5397 (h!69163 zl!343))))))

(declare-fun b!5527117 () Bool)

(assert (=> b!5527117 (= e!3416874 EmptyExpr!15513)))

(declare-fun b!5527118 () Bool)

(assert (=> b!5527118 (= e!3416877 e!3416873)))

(declare-fun c!966978 () Bool)

(assert (=> b!5527118 (= c!966978 (isEmpty!34501 (exprs!5397 (h!69163 zl!343))))))

(assert (= (and d!1751288 res!2353573) b!5527115))

(assert (= (and d!1751288 c!966980) b!5527110))

(assert (= (and d!1751288 (not c!966980)) b!5527116))

(assert (= (and b!5527116 c!966981) b!5527114))

(assert (= (and b!5527116 (not c!966981)) b!5527117))

(assert (= (and d!1751288 res!2353574) b!5527118))

(assert (= (and b!5527118 c!966978) b!5527109))

(assert (= (and b!5527118 (not c!966978)) b!5527111))

(assert (= (and b!5527111 c!966979) b!5527113))

(assert (= (and b!5527111 (not c!966979)) b!5527112))

(declare-fun m!6529264 () Bool)

(assert (=> b!5527112 m!6529264))

(declare-fun m!6529266 () Bool)

(assert (=> b!5527114 m!6529266))

(assert (=> b!5527115 m!6528794))

(declare-fun m!6529268 () Bool)

(assert (=> d!1751288 m!6529268))

(declare-fun m!6529270 () Bool)

(assert (=> d!1751288 m!6529270))

(declare-fun m!6529272 () Bool)

(assert (=> b!5527113 m!6529272))

(declare-fun m!6529274 () Bool)

(assert (=> b!5527118 m!6529274))

(declare-fun m!6529276 () Bool)

(assert (=> b!5527111 m!6529276))

(assert (=> b!5527111 m!6529276))

(declare-fun m!6529278 () Bool)

(assert (=> b!5527111 m!6529278))

(declare-fun m!6529280 () Bool)

(assert (=> b!5527109 m!6529280))

(assert (=> b!5526461 d!1751288))

(declare-fun bs!1276006 () Bool)

(declare-fun d!1751290 () Bool)

(assert (= bs!1276006 (and d!1751290 b!5526942)))

(declare-fun lambda!296480 () Int)

(assert (=> bs!1276006 (not (= lambda!296480 lambda!296452))))

(declare-fun bs!1276007 () Bool)

(assert (= bs!1276007 (and d!1751290 b!5526944)))

(assert (=> bs!1276007 (not (= lambda!296480 lambda!296453))))

(declare-fun bs!1276008 () Bool)

(assert (= bs!1276008 (and d!1751290 d!1751288)))

(assert (=> bs!1276008 (= lambda!296480 lambda!296477)))

(declare-fun bs!1276009 () Bool)

(assert (= bs!1276009 (and d!1751290 b!5526947)))

(assert (=> bs!1276009 (not (= lambda!296480 lambda!296454))))

(declare-fun bs!1276010 () Bool)

(assert (= bs!1276010 (and d!1751290 b!5526949)))

(assert (=> bs!1276010 (not (= lambda!296480 lambda!296455))))

(declare-fun b!5527139 () Bool)

(declare-fun e!3416894 () Bool)

(declare-fun lt!2247683 () Regex!15513)

(assert (=> b!5527139 (= e!3416894 (= lt!2247683 (head!11830 (unfocusZipperList!941 zl!343))))))

(declare-fun b!5527140 () Bool)

(declare-fun isUnion!526 (Regex!15513) Bool)

(assert (=> b!5527140 (= e!3416894 (isUnion!526 lt!2247683))))

(declare-fun b!5527141 () Bool)

(declare-fun e!3416891 () Regex!15513)

(declare-fun e!3416895 () Regex!15513)

(assert (=> b!5527141 (= e!3416891 e!3416895)))

(declare-fun c!966992 () Bool)

(assert (=> b!5527141 (= c!966992 ((_ is Cons!62714) (unfocusZipperList!941 zl!343)))))

(declare-fun e!3416892 () Bool)

(assert (=> d!1751290 e!3416892))

(declare-fun res!2353579 () Bool)

(assert (=> d!1751290 (=> (not res!2353579) (not e!3416892))))

(assert (=> d!1751290 (= res!2353579 (validRegex!7249 lt!2247683))))

(assert (=> d!1751290 (= lt!2247683 e!3416891)))

(declare-fun c!966993 () Bool)

(declare-fun e!3416890 () Bool)

(assert (=> d!1751290 (= c!966993 e!3416890)))

(declare-fun res!2353580 () Bool)

(assert (=> d!1751290 (=> (not res!2353580) (not e!3416890))))

(assert (=> d!1751290 (= res!2353580 ((_ is Cons!62714) (unfocusZipperList!941 zl!343)))))

(assert (=> d!1751290 (forall!14690 (unfocusZipperList!941 zl!343) lambda!296480)))

(assert (=> d!1751290 (= (generalisedUnion!1376 (unfocusZipperList!941 zl!343)) lt!2247683)))

(declare-fun b!5527142 () Bool)

(assert (=> b!5527142 (= e!3416895 EmptyLang!15513)))

(declare-fun b!5527143 () Bool)

(declare-fun e!3416893 () Bool)

(assert (=> b!5527143 (= e!3416892 e!3416893)))

(declare-fun c!966990 () Bool)

(assert (=> b!5527143 (= c!966990 (isEmpty!34501 (unfocusZipperList!941 zl!343)))))

(declare-fun b!5527144 () Bool)

(assert (=> b!5527144 (= e!3416895 (Union!15513 (h!69162 (unfocusZipperList!941 zl!343)) (generalisedUnion!1376 (t!376093 (unfocusZipperList!941 zl!343)))))))

(declare-fun b!5527145 () Bool)

(assert (=> b!5527145 (= e!3416890 (isEmpty!34501 (t!376093 (unfocusZipperList!941 zl!343))))))

(declare-fun b!5527146 () Bool)

(assert (=> b!5527146 (= e!3416893 e!3416894)))

(declare-fun c!966991 () Bool)

(assert (=> b!5527146 (= c!966991 (isEmpty!34501 (tail!10925 (unfocusZipperList!941 zl!343))))))

(declare-fun b!5527147 () Bool)

(assert (=> b!5527147 (= e!3416891 (h!69162 (unfocusZipperList!941 zl!343)))))

(declare-fun b!5527148 () Bool)

(declare-fun isEmptyLang!1096 (Regex!15513) Bool)

(assert (=> b!5527148 (= e!3416893 (isEmptyLang!1096 lt!2247683))))

(assert (= (and d!1751290 res!2353580) b!5527145))

(assert (= (and d!1751290 c!966993) b!5527147))

(assert (= (and d!1751290 (not c!966993)) b!5527141))

(assert (= (and b!5527141 c!966992) b!5527144))

(assert (= (and b!5527141 (not c!966992)) b!5527142))

(assert (= (and d!1751290 res!2353579) b!5527143))

(assert (= (and b!5527143 c!966990) b!5527148))

(assert (= (and b!5527143 (not c!966990)) b!5527146))

(assert (= (and b!5527146 c!966991) b!5527139))

(assert (= (and b!5527146 (not c!966991)) b!5527140))

(declare-fun m!6529282 () Bool)

(assert (=> d!1751290 m!6529282))

(assert (=> d!1751290 m!6528730))

(declare-fun m!6529284 () Bool)

(assert (=> d!1751290 m!6529284))

(assert (=> b!5527143 m!6528730))

(declare-fun m!6529286 () Bool)

(assert (=> b!5527143 m!6529286))

(assert (=> b!5527146 m!6528730))

(declare-fun m!6529288 () Bool)

(assert (=> b!5527146 m!6529288))

(assert (=> b!5527146 m!6529288))

(declare-fun m!6529290 () Bool)

(assert (=> b!5527146 m!6529290))

(declare-fun m!6529292 () Bool)

(assert (=> b!5527144 m!6529292))

(declare-fun m!6529294 () Bool)

(assert (=> b!5527148 m!6529294))

(declare-fun m!6529296 () Bool)

(assert (=> b!5527140 m!6529296))

(declare-fun m!6529298 () Bool)

(assert (=> b!5527145 m!6529298))

(assert (=> b!5527139 m!6528730))

(declare-fun m!6529300 () Bool)

(assert (=> b!5527139 m!6529300))

(assert (=> b!5526459 d!1751290))

(declare-fun bs!1276011 () Bool)

(declare-fun d!1751292 () Bool)

(assert (= bs!1276011 (and d!1751292 b!5526942)))

(declare-fun lambda!296483 () Int)

(assert (=> bs!1276011 (not (= lambda!296483 lambda!296452))))

(declare-fun bs!1276012 () Bool)

(assert (= bs!1276012 (and d!1751292 b!5526944)))

(assert (=> bs!1276012 (not (= lambda!296483 lambda!296453))))

(declare-fun bs!1276013 () Bool)

(assert (= bs!1276013 (and d!1751292 d!1751288)))

(assert (=> bs!1276013 (= lambda!296483 lambda!296477)))

(declare-fun bs!1276014 () Bool)

(assert (= bs!1276014 (and d!1751292 b!5526947)))

(assert (=> bs!1276014 (not (= lambda!296483 lambda!296454))))

(declare-fun bs!1276015 () Bool)

(assert (= bs!1276015 (and d!1751292 d!1751290)))

(assert (=> bs!1276015 (= lambda!296483 lambda!296480)))

(declare-fun bs!1276016 () Bool)

(assert (= bs!1276016 (and d!1751292 b!5526949)))

(assert (=> bs!1276016 (not (= lambda!296483 lambda!296455))))

(declare-fun lt!2247686 () List!62838)

(assert (=> d!1751292 (forall!14690 lt!2247686 lambda!296483)))

(declare-fun e!3416898 () List!62838)

(assert (=> d!1751292 (= lt!2247686 e!3416898)))

(declare-fun c!966996 () Bool)

(assert (=> d!1751292 (= c!966996 ((_ is Cons!62715) zl!343))))

(assert (=> d!1751292 (= (unfocusZipperList!941 zl!343) lt!2247686)))

(declare-fun b!5527153 () Bool)

(assert (=> b!5527153 (= e!3416898 (Cons!62714 (generalisedConcat!1128 (exprs!5397 (h!69163 zl!343))) (unfocusZipperList!941 (t!376094 zl!343))))))

(declare-fun b!5527154 () Bool)

(assert (=> b!5527154 (= e!3416898 Nil!62714)))

(assert (= (and d!1751292 c!966996) b!5527153))

(assert (= (and d!1751292 (not c!966996)) b!5527154))

(declare-fun m!6529302 () Bool)

(assert (=> d!1751292 m!6529302))

(assert (=> b!5527153 m!6528706))

(declare-fun m!6529304 () Bool)

(assert (=> b!5527153 m!6529304))

(assert (=> b!5526459 d!1751292))

(declare-fun d!1751294 () Bool)

(declare-fun lt!2247689 () Regex!15513)

(assert (=> d!1751294 (validRegex!7249 lt!2247689)))

(assert (=> d!1751294 (= lt!2247689 (generalisedUnion!1376 (unfocusZipperList!941 zl!343)))))

(assert (=> d!1751294 (= (unfocusZipper!1255 zl!343) lt!2247689)))

(declare-fun bs!1276017 () Bool)

(assert (= bs!1276017 d!1751294))

(declare-fun m!6529306 () Bool)

(assert (=> bs!1276017 m!6529306))

(assert (=> bs!1276017 m!6528730))

(assert (=> bs!1276017 m!6528730))

(assert (=> bs!1276017 m!6528732))

(assert (=> b!5526450 d!1751294))

(declare-fun d!1751296 () Bool)

(declare-fun c!966997 () Bool)

(assert (=> d!1751296 (= c!966997 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3416899 () Bool)

(assert (=> d!1751296 (= (matchZipper!1671 lt!2247529 (t!376095 s!2326)) e!3416899)))

(declare-fun b!5527155 () Bool)

(assert (=> b!5527155 (= e!3416899 (nullableZipper!1539 lt!2247529))))

(declare-fun b!5527156 () Bool)

(assert (=> b!5527156 (= e!3416899 (matchZipper!1671 (derivationStepZipper!1618 lt!2247529 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751296 c!966997) b!5527155))

(assert (= (and d!1751296 (not c!966997)) b!5527156))

(assert (=> d!1751296 m!6529208))

(declare-fun m!6529308 () Bool)

(assert (=> b!5527155 m!6529308))

(assert (=> b!5527156 m!6529212))

(assert (=> b!5527156 m!6529212))

(declare-fun m!6529310 () Bool)

(assert (=> b!5527156 m!6529310))

(assert (=> b!5527156 m!6529216))

(assert (=> b!5527156 m!6529310))

(assert (=> b!5527156 m!6529216))

(declare-fun m!6529312 () Bool)

(assert (=> b!5527156 m!6529312))

(assert (=> b!5526449 d!1751296))

(declare-fun d!1751298 () Bool)

(assert (=> d!1751298 (= (isEmpty!34501 (t!376093 (exprs!5397 (h!69163 zl!343)))) ((_ is Nil!62714) (t!376093 (exprs!5397 (h!69163 zl!343)))))))

(assert (=> b!5526438 d!1751298))

(declare-fun b!5527175 () Bool)

(declare-fun res!2353593 () Bool)

(declare-fun e!3416914 () Bool)

(assert (=> b!5527175 (=> (not res!2353593) (not e!3416914))))

(declare-fun lt!2247696 () Option!15522)

(declare-fun get!21585 (Option!15522) tuple2!65220)

(assert (=> b!5527175 (= res!2353593 (matchR!7698 (regOne!31538 r!7292) (_1!35913 (get!21585 lt!2247696))))))

(declare-fun b!5527176 () Bool)

(declare-fun res!2353595 () Bool)

(assert (=> b!5527176 (=> (not res!2353595) (not e!3416914))))

(assert (=> b!5527176 (= res!2353595 (matchR!7698 (regTwo!31538 r!7292) (_2!35913 (get!21585 lt!2247696))))))

(declare-fun b!5527177 () Bool)

(declare-fun e!3416911 () Option!15522)

(assert (=> b!5527177 (= e!3416911 (Some!15521 (tuple2!65221 Nil!62716 s!2326)))))

(declare-fun b!5527178 () Bool)

(declare-fun ++!13761 (List!62840 List!62840) List!62840)

(assert (=> b!5527178 (= e!3416914 (= (++!13761 (_1!35913 (get!21585 lt!2247696)) (_2!35913 (get!21585 lt!2247696))) s!2326))))

(declare-fun d!1751300 () Bool)

(declare-fun e!3416912 () Bool)

(assert (=> d!1751300 e!3416912))

(declare-fun res!2353594 () Bool)

(assert (=> d!1751300 (=> res!2353594 e!3416912)))

(assert (=> d!1751300 (= res!2353594 e!3416914)))

(declare-fun res!2353591 () Bool)

(assert (=> d!1751300 (=> (not res!2353591) (not e!3416914))))

(assert (=> d!1751300 (= res!2353591 (isDefined!12225 lt!2247696))))

(assert (=> d!1751300 (= lt!2247696 e!3416911)))

(declare-fun c!967003 () Bool)

(declare-fun e!3416913 () Bool)

(assert (=> d!1751300 (= c!967003 e!3416913)))

(declare-fun res!2353592 () Bool)

(assert (=> d!1751300 (=> (not res!2353592) (not e!3416913))))

(assert (=> d!1751300 (= res!2353592 (matchR!7698 (regOne!31538 r!7292) Nil!62716))))

(assert (=> d!1751300 (validRegex!7249 (regOne!31538 r!7292))))

(assert (=> d!1751300 (= (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326) lt!2247696)))

(declare-fun b!5527179 () Bool)

(declare-fun lt!2247697 () Unit!155486)

(declare-fun lt!2247698 () Unit!155486)

(assert (=> b!5527179 (= lt!2247697 lt!2247698)))

(assert (=> b!5527179 (= (++!13761 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (t!376095 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1930 (List!62840 C!31296 List!62840 List!62840) Unit!155486)

(assert (=> b!5527179 (= lt!2247698 (lemmaMoveElementToOtherListKeepsConcatEq!1930 Nil!62716 (h!69164 s!2326) (t!376095 s!2326) s!2326))))

(declare-fun e!3416910 () Option!15522)

(assert (=> b!5527179 (= e!3416910 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (t!376095 s!2326) s!2326))))

(declare-fun b!5527180 () Bool)

(assert (=> b!5527180 (= e!3416911 e!3416910)))

(declare-fun c!967002 () Bool)

(assert (=> b!5527180 (= c!967002 ((_ is Nil!62716) s!2326))))

(declare-fun b!5527181 () Bool)

(assert (=> b!5527181 (= e!3416913 (matchR!7698 (regTwo!31538 r!7292) s!2326))))

(declare-fun b!5527182 () Bool)

(assert (=> b!5527182 (= e!3416910 None!15521)))

(declare-fun b!5527183 () Bool)

(assert (=> b!5527183 (= e!3416912 (not (isDefined!12225 lt!2247696)))))

(assert (= (and d!1751300 res!2353592) b!5527181))

(assert (= (and d!1751300 c!967003) b!5527177))

(assert (= (and d!1751300 (not c!967003)) b!5527180))

(assert (= (and b!5527180 c!967002) b!5527182))

(assert (= (and b!5527180 (not c!967002)) b!5527179))

(assert (= (and d!1751300 res!2353591) b!5527175))

(assert (= (and b!5527175 res!2353593) b!5527176))

(assert (= (and b!5527176 res!2353595) b!5527178))

(assert (= (and d!1751300 (not res!2353594)) b!5527183))

(declare-fun m!6529314 () Bool)

(assert (=> d!1751300 m!6529314))

(declare-fun m!6529316 () Bool)

(assert (=> d!1751300 m!6529316))

(declare-fun m!6529318 () Bool)

(assert (=> d!1751300 m!6529318))

(declare-fun m!6529320 () Bool)

(assert (=> b!5527181 m!6529320))

(declare-fun m!6529322 () Bool)

(assert (=> b!5527176 m!6529322))

(declare-fun m!6529324 () Bool)

(assert (=> b!5527176 m!6529324))

(assert (=> b!5527175 m!6529322))

(declare-fun m!6529326 () Bool)

(assert (=> b!5527175 m!6529326))

(assert (=> b!5527183 m!6529314))

(declare-fun m!6529328 () Bool)

(assert (=> b!5527179 m!6529328))

(assert (=> b!5527179 m!6529328))

(declare-fun m!6529330 () Bool)

(assert (=> b!5527179 m!6529330))

(declare-fun m!6529332 () Bool)

(assert (=> b!5527179 m!6529332))

(assert (=> b!5527179 m!6529328))

(declare-fun m!6529334 () Bool)

(assert (=> b!5527179 m!6529334))

(assert (=> b!5527178 m!6529322))

(declare-fun m!6529336 () Bool)

(assert (=> b!5527178 m!6529336))

(assert (=> b!5526447 d!1751300))

(declare-fun d!1751302 () Bool)

(declare-fun choose!41996 (Int) Bool)

(assert (=> d!1751302 (= (Exists!2613 lambda!296388) (choose!41996 lambda!296388))))

(declare-fun bs!1276018 () Bool)

(assert (= bs!1276018 d!1751302))

(declare-fun m!6529338 () Bool)

(assert (=> bs!1276018 m!6529338))

(assert (=> b!5526447 d!1751302))

(declare-fun d!1751304 () Bool)

(assert (=> d!1751304 (= (Exists!2613 lambda!296387) (choose!41996 lambda!296387))))

(declare-fun bs!1276019 () Bool)

(assert (= bs!1276019 d!1751304))

(declare-fun m!6529340 () Bool)

(assert (=> bs!1276019 m!6529340))

(assert (=> b!5526447 d!1751304))

(declare-fun bs!1276020 () Bool)

(declare-fun d!1751306 () Bool)

(assert (= bs!1276020 (and d!1751306 b!5526447)))

(declare-fun lambda!296486 () Int)

(assert (=> bs!1276020 (= lambda!296486 lambda!296387)))

(assert (=> bs!1276020 (not (= lambda!296486 lambda!296388))))

(declare-fun bs!1276021 () Bool)

(assert (= bs!1276021 (and d!1751306 b!5527000)))

(assert (=> bs!1276021 (not (= lambda!296486 lambda!296472))))

(declare-fun bs!1276022 () Bool)

(assert (= bs!1276022 (and d!1751306 b!5526996)))

(assert (=> bs!1276022 (not (= lambda!296486 lambda!296473))))

(assert (=> d!1751306 true))

(assert (=> d!1751306 true))

(assert (=> d!1751306 true))

(assert (=> d!1751306 (= (isDefined!12225 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326)) (Exists!2613 lambda!296486))))

(declare-fun lt!2247701 () Unit!155486)

(declare-fun choose!41997 (Regex!15513 Regex!15513 List!62840) Unit!155486)

(assert (=> d!1751306 (= lt!2247701 (choose!41997 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326))))

(assert (=> d!1751306 (validRegex!7249 (regOne!31538 r!7292))))

(assert (=> d!1751306 (= (lemmaFindConcatSeparationEquivalentToExists!1700 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326) lt!2247701)))

(declare-fun bs!1276023 () Bool)

(assert (= bs!1276023 d!1751306))

(declare-fun m!6529342 () Bool)

(assert (=> bs!1276023 m!6529342))

(declare-fun m!6529344 () Bool)

(assert (=> bs!1276023 m!6529344))

(assert (=> bs!1276023 m!6529318))

(assert (=> bs!1276023 m!6528744))

(assert (=> bs!1276023 m!6528744))

(assert (=> bs!1276023 m!6528746))

(assert (=> b!5526447 d!1751306))

(declare-fun bs!1276024 () Bool)

(declare-fun d!1751308 () Bool)

(assert (= bs!1276024 (and d!1751308 d!1751306)))

(declare-fun lambda!296491 () Int)

(assert (=> bs!1276024 (= lambda!296491 lambda!296486)))

(declare-fun bs!1276025 () Bool)

(assert (= bs!1276025 (and d!1751308 b!5527000)))

(assert (=> bs!1276025 (not (= lambda!296491 lambda!296472))))

(declare-fun bs!1276026 () Bool)

(assert (= bs!1276026 (and d!1751308 b!5526996)))

(assert (=> bs!1276026 (not (= lambda!296491 lambda!296473))))

(declare-fun bs!1276027 () Bool)

(assert (= bs!1276027 (and d!1751308 b!5526447)))

(assert (=> bs!1276027 (not (= lambda!296491 lambda!296388))))

(assert (=> bs!1276027 (= lambda!296491 lambda!296387)))

(assert (=> d!1751308 true))

(assert (=> d!1751308 true))

(assert (=> d!1751308 true))

(declare-fun lambda!296492 () Int)

(assert (=> bs!1276024 (not (= lambda!296492 lambda!296486))))

(assert (=> bs!1276026 (= lambda!296492 lambda!296473)))

(assert (=> bs!1276025 (not (= lambda!296492 lambda!296472))))

(declare-fun bs!1276028 () Bool)

(assert (= bs!1276028 d!1751308))

(assert (=> bs!1276028 (not (= lambda!296492 lambda!296491))))

(assert (=> bs!1276027 (= lambda!296492 lambda!296388)))

(assert (=> bs!1276027 (not (= lambda!296492 lambda!296387))))

(assert (=> d!1751308 true))

(assert (=> d!1751308 true))

(assert (=> d!1751308 true))

(assert (=> d!1751308 (= (Exists!2613 lambda!296491) (Exists!2613 lambda!296492))))

(declare-fun lt!2247704 () Unit!155486)

(declare-fun choose!41998 (Regex!15513 Regex!15513 List!62840) Unit!155486)

(assert (=> d!1751308 (= lt!2247704 (choose!41998 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326))))

(assert (=> d!1751308 (validRegex!7249 (regOne!31538 r!7292))))

(assert (=> d!1751308 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1242 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326) lt!2247704)))

(declare-fun m!6529346 () Bool)

(assert (=> bs!1276028 m!6529346))

(declare-fun m!6529348 () Bool)

(assert (=> bs!1276028 m!6529348))

(declare-fun m!6529350 () Bool)

(assert (=> bs!1276028 m!6529350))

(assert (=> bs!1276028 m!6529318))

(assert (=> b!5526447 d!1751308))

(declare-fun d!1751310 () Bool)

(declare-fun isEmpty!34506 (Option!15522) Bool)

(assert (=> d!1751310 (= (isDefined!12225 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326)) (not (isEmpty!34506 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326))))))

(declare-fun bs!1276029 () Bool)

(assert (= bs!1276029 d!1751310))

(assert (=> bs!1276029 m!6528744))

(declare-fun m!6529352 () Bool)

(assert (=> bs!1276029 m!6529352))

(assert (=> b!5526447 d!1751310))

(declare-fun b!5527214 () Bool)

(declare-fun e!3416937 () Bool)

(declare-fun call!410084 () Bool)

(assert (=> b!5527214 (= e!3416937 call!410084)))

(declare-fun b!5527215 () Bool)

(declare-fun res!2353621 () Bool)

(declare-fun e!3416939 () Bool)

(assert (=> b!5527215 (=> res!2353621 e!3416939)))

(assert (=> b!5527215 (= res!2353621 (not ((_ is Concat!24358) r!7292)))))

(declare-fun e!3416936 () Bool)

(assert (=> b!5527215 (= e!3416936 e!3416939)))

(declare-fun b!5527216 () Bool)

(declare-fun e!3416935 () Bool)

(assert (=> b!5527216 (= e!3416935 call!410084)))

(declare-fun b!5527217 () Bool)

(declare-fun e!3416941 () Bool)

(declare-fun call!410086 () Bool)

(assert (=> b!5527217 (= e!3416941 call!410086)))

(declare-fun bm!410080 () Bool)

(declare-fun call!410085 () Bool)

(assert (=> bm!410080 (= call!410085 call!410086)))

(declare-fun b!5527218 () Bool)

(declare-fun e!3416938 () Bool)

(assert (=> b!5527218 (= e!3416938 e!3416941)))

(declare-fun res!2353619 () Bool)

(assert (=> b!5527218 (= res!2353619 (not (nullable!5547 (reg!15842 r!7292))))))

(assert (=> b!5527218 (=> (not res!2353619) (not e!3416941))))

(declare-fun b!5527219 () Bool)

(assert (=> b!5527219 (= e!3416938 e!3416936)))

(declare-fun c!967008 () Bool)

(assert (=> b!5527219 (= c!967008 ((_ is Union!15513) r!7292))))

(declare-fun d!1751312 () Bool)

(declare-fun res!2353620 () Bool)

(declare-fun e!3416940 () Bool)

(assert (=> d!1751312 (=> res!2353620 e!3416940)))

(assert (=> d!1751312 (= res!2353620 ((_ is ElementMatch!15513) r!7292))))

(assert (=> d!1751312 (= (validRegex!7249 r!7292) e!3416940)))

(declare-fun bm!410079 () Bool)

(declare-fun c!967009 () Bool)

(assert (=> bm!410079 (= call!410086 (validRegex!7249 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))))))

(declare-fun b!5527220 () Bool)

(assert (=> b!5527220 (= e!3416939 e!3416937)))

(declare-fun res!2353622 () Bool)

(assert (=> b!5527220 (=> (not res!2353622) (not e!3416937))))

(assert (=> b!5527220 (= res!2353622 call!410085)))

(declare-fun b!5527221 () Bool)

(declare-fun res!2353618 () Bool)

(assert (=> b!5527221 (=> (not res!2353618) (not e!3416935))))

(assert (=> b!5527221 (= res!2353618 call!410085)))

(assert (=> b!5527221 (= e!3416936 e!3416935)))

(declare-fun b!5527222 () Bool)

(assert (=> b!5527222 (= e!3416940 e!3416938)))

(assert (=> b!5527222 (= c!967009 ((_ is Star!15513) r!7292))))

(declare-fun bm!410081 () Bool)

(assert (=> bm!410081 (= call!410084 (validRegex!7249 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))))))

(assert (= (and d!1751312 (not res!2353620)) b!5527222))

(assert (= (and b!5527222 c!967009) b!5527218))

(assert (= (and b!5527222 (not c!967009)) b!5527219))

(assert (= (and b!5527218 res!2353619) b!5527217))

(assert (= (and b!5527219 c!967008) b!5527221))

(assert (= (and b!5527219 (not c!967008)) b!5527215))

(assert (= (and b!5527221 res!2353618) b!5527216))

(assert (= (and b!5527215 (not res!2353621)) b!5527220))

(assert (= (and b!5527220 res!2353622) b!5527214))

(assert (= (or b!5527216 b!5527214) bm!410081))

(assert (= (or b!5527221 b!5527220) bm!410080))

(assert (= (or b!5527217 bm!410080) bm!410079))

(declare-fun m!6529354 () Bool)

(assert (=> b!5527218 m!6529354))

(declare-fun m!6529356 () Bool)

(assert (=> bm!410079 m!6529356))

(declare-fun m!6529358 () Bool)

(assert (=> bm!410081 m!6529358))

(assert (=> start!576726 d!1751312))

(declare-fun d!1751314 () Bool)

(declare-fun c!967010 () Bool)

(assert (=> d!1751314 (= c!967010 (isEmpty!34505 s!2326))))

(declare-fun e!3416942 () Bool)

(assert (=> d!1751314 (= (matchZipper!1671 lt!2247543 s!2326) e!3416942)))

(declare-fun b!5527223 () Bool)

(assert (=> b!5527223 (= e!3416942 (nullableZipper!1539 lt!2247543))))

(declare-fun b!5527224 () Bool)

(assert (=> b!5527224 (= e!3416942 (matchZipper!1671 (derivationStepZipper!1618 lt!2247543 (head!11829 s!2326)) (tail!10924 s!2326)))))

(assert (= (and d!1751314 c!967010) b!5527223))

(assert (= (and d!1751314 (not c!967010)) b!5527224))

(assert (=> d!1751314 m!6529180))

(declare-fun m!6529360 () Bool)

(assert (=> b!5527223 m!6529360))

(assert (=> b!5527224 m!6529192))

(assert (=> b!5527224 m!6529192))

(declare-fun m!6529362 () Bool)

(assert (=> b!5527224 m!6529362))

(assert (=> b!5527224 m!6529188))

(assert (=> b!5527224 m!6529362))

(assert (=> b!5527224 m!6529188))

(declare-fun m!6529364 () Bool)

(assert (=> b!5527224 m!6529364))

(assert (=> b!5526437 d!1751314))

(declare-fun d!1751316 () Bool)

(declare-fun c!967011 () Bool)

(assert (=> d!1751316 (= c!967011 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3416943 () Bool)

(assert (=> d!1751316 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (t!376095 s!2326)) e!3416943)))

(declare-fun b!5527225 () Bool)

(assert (=> b!5527225 (= e!3416943 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326))))))

(declare-fun b!5527226 () Bool)

(assert (=> b!5527226 (= e!3416943 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751316 c!967011) b!5527225))

(assert (= (and d!1751316 (not c!967011)) b!5527226))

(assert (=> d!1751316 m!6529208))

(assert (=> b!5527225 m!6528736))

(declare-fun m!6529366 () Bool)

(assert (=> b!5527225 m!6529366))

(assert (=> b!5527226 m!6529212))

(assert (=> b!5527226 m!6528736))

(assert (=> b!5527226 m!6529212))

(declare-fun m!6529368 () Bool)

(assert (=> b!5527226 m!6529368))

(assert (=> b!5527226 m!6529216))

(assert (=> b!5527226 m!6529368))

(assert (=> b!5527226 m!6529216))

(declare-fun m!6529370 () Bool)

(assert (=> b!5527226 m!6529370))

(assert (=> b!5526437 d!1751316))

(declare-fun bs!1276030 () Bool)

(declare-fun d!1751318 () Bool)

(assert (= bs!1276030 (and d!1751318 b!5526445)))

(declare-fun lambda!296493 () Int)

(assert (=> bs!1276030 (= lambda!296493 lambda!296389)))

(declare-fun bs!1276031 () Bool)

(assert (= bs!1276031 (and d!1751318 d!1751246)))

(assert (=> bs!1276031 (= lambda!296493 lambda!296447)))

(declare-fun bs!1276032 () Bool)

(assert (= bs!1276032 (and d!1751318 d!1751268)))

(assert (=> bs!1276032 (= lambda!296493 lambda!296474)))

(assert (=> d!1751318 true))

(assert (=> d!1751318 (= (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (flatMap!1126 lt!2247543 lambda!296493))))

(declare-fun bs!1276033 () Bool)

(assert (= bs!1276033 d!1751318))

(declare-fun m!6529372 () Bool)

(assert (=> bs!1276033 m!6529372))

(assert (=> b!5526437 d!1751318))

(declare-fun d!1751320 () Bool)

(declare-fun c!967012 () Bool)

(assert (=> d!1751320 (= c!967012 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3416944 () Bool)

(assert (=> d!1751320 (= (matchZipper!1671 lt!2247542 (t!376095 s!2326)) e!3416944)))

(declare-fun b!5527227 () Bool)

(assert (=> b!5527227 (= e!3416944 (nullableZipper!1539 lt!2247542))))

(declare-fun b!5527228 () Bool)

(assert (=> b!5527228 (= e!3416944 (matchZipper!1671 (derivationStepZipper!1618 lt!2247542 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751320 c!967012) b!5527227))

(assert (= (and d!1751320 (not c!967012)) b!5527228))

(assert (=> d!1751320 m!6529208))

(declare-fun m!6529374 () Bool)

(assert (=> b!5527227 m!6529374))

(assert (=> b!5527228 m!6529212))

(assert (=> b!5527228 m!6529212))

(declare-fun m!6529376 () Bool)

(assert (=> b!5527228 m!6529376))

(assert (=> b!5527228 m!6529216))

(assert (=> b!5527228 m!6529376))

(assert (=> b!5527228 m!6529216))

(declare-fun m!6529378 () Bool)

(assert (=> b!5527228 m!6529378))

(assert (=> b!5526457 d!1751320))

(declare-fun d!1751322 () Bool)

(declare-fun c!967013 () Bool)

(assert (=> d!1751322 (= c!967013 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3416945 () Bool)

(assert (=> d!1751322 (= (matchZipper!1671 lt!2247548 (t!376095 s!2326)) e!3416945)))

(declare-fun b!5527229 () Bool)

(assert (=> b!5527229 (= e!3416945 (nullableZipper!1539 lt!2247548))))

(declare-fun b!5527230 () Bool)

(assert (=> b!5527230 (= e!3416945 (matchZipper!1671 (derivationStepZipper!1618 lt!2247548 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751322 c!967013) b!5527229))

(assert (= (and d!1751322 (not c!967013)) b!5527230))

(assert (=> d!1751322 m!6529208))

(declare-fun m!6529380 () Bool)

(assert (=> b!5527229 m!6529380))

(assert (=> b!5527230 m!6529212))

(assert (=> b!5527230 m!6529212))

(declare-fun m!6529382 () Bool)

(assert (=> b!5527230 m!6529382))

(assert (=> b!5527230 m!6529216))

(assert (=> b!5527230 m!6529382))

(assert (=> b!5527230 m!6529216))

(declare-fun m!6529384 () Bool)

(assert (=> b!5527230 m!6529384))

(assert (=> b!5526457 d!1751322))

(declare-fun d!1751324 () Bool)

(declare-fun c!967014 () Bool)

(assert (=> d!1751324 (= c!967014 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3416946 () Bool)

(assert (=> d!1751324 (= (matchZipper!1671 lt!2247554 (t!376095 s!2326)) e!3416946)))

(declare-fun b!5527231 () Bool)

(assert (=> b!5527231 (= e!3416946 (nullableZipper!1539 lt!2247554))))

(declare-fun b!5527232 () Bool)

(assert (=> b!5527232 (= e!3416946 (matchZipper!1671 (derivationStepZipper!1618 lt!2247554 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751324 c!967014) b!5527231))

(assert (= (and d!1751324 (not c!967014)) b!5527232))

(assert (=> d!1751324 m!6529208))

(declare-fun m!6529386 () Bool)

(assert (=> b!5527231 m!6529386))

(assert (=> b!5527232 m!6529212))

(assert (=> b!5527232 m!6529212))

(declare-fun m!6529388 () Bool)

(assert (=> b!5527232 m!6529388))

(assert (=> b!5527232 m!6529216))

(assert (=> b!5527232 m!6529388))

(assert (=> b!5527232 m!6529216))

(declare-fun m!6529390 () Bool)

(assert (=> b!5527232 m!6529390))

(assert (=> b!5526457 d!1751324))

(declare-fun d!1751326 () Bool)

(declare-fun e!3416949 () Bool)

(assert (=> d!1751326 (= (matchZipper!1671 ((_ map or) lt!2247554 lt!2247529) (t!376095 s!2326)) e!3416949)))

(declare-fun res!2353625 () Bool)

(assert (=> d!1751326 (=> res!2353625 e!3416949)))

(assert (=> d!1751326 (= res!2353625 (matchZipper!1671 lt!2247554 (t!376095 s!2326)))))

(declare-fun lt!2247707 () Unit!155486)

(declare-fun choose!41999 ((InoxSet Context!9794) (InoxSet Context!9794) List!62840) Unit!155486)

(assert (=> d!1751326 (= lt!2247707 (choose!41999 lt!2247554 lt!2247529 (t!376095 s!2326)))))

(assert (=> d!1751326 (= (lemmaZipperConcatMatchesSameAsBothZippers!560 lt!2247554 lt!2247529 (t!376095 s!2326)) lt!2247707)))

(declare-fun b!5527235 () Bool)

(assert (=> b!5527235 (= e!3416949 (matchZipper!1671 lt!2247529 (t!376095 s!2326)))))

(assert (= (and d!1751326 (not res!2353625)) b!5527235))

(declare-fun m!6529392 () Bool)

(assert (=> d!1751326 m!6529392))

(assert (=> d!1751326 m!6528790))

(declare-fun m!6529394 () Bool)

(assert (=> d!1751326 m!6529394))

(assert (=> b!5527235 m!6528700))

(assert (=> b!5526457 d!1751326))

(declare-fun d!1751328 () Bool)

(declare-fun e!3416952 () Bool)

(assert (=> d!1751328 e!3416952))

(declare-fun res!2353628 () Bool)

(assert (=> d!1751328 (=> (not res!2353628) (not e!3416952))))

(declare-fun lt!2247710 () List!62839)

(declare-fun noDuplicate!1506 (List!62839) Bool)

(assert (=> d!1751328 (= res!2353628 (noDuplicate!1506 lt!2247710))))

(declare-fun choose!42000 ((InoxSet Context!9794)) List!62839)

(assert (=> d!1751328 (= lt!2247710 (choose!42000 z!1189))))

(assert (=> d!1751328 (= (toList!9297 z!1189) lt!2247710)))

(declare-fun b!5527238 () Bool)

(declare-fun content!11280 (List!62839) (InoxSet Context!9794))

(assert (=> b!5527238 (= e!3416952 (= (content!11280 lt!2247710) z!1189))))

(assert (= (and d!1751328 res!2353628) b!5527238))

(declare-fun m!6529396 () Bool)

(assert (=> d!1751328 m!6529396))

(declare-fun m!6529398 () Bool)

(assert (=> d!1751328 m!6529398))

(declare-fun m!6529400 () Bool)

(assert (=> b!5527238 m!6529400))

(assert (=> b!5526435 d!1751328))

(declare-fun bs!1276034 () Bool)

(declare-fun b!5527239 () Bool)

(assert (= bs!1276034 (and b!5527239 b!5526942)))

(declare-fun lt!2247712 () Int)

(declare-fun lambda!296494 () Int)

(assert (=> bs!1276034 (= (= lt!2247712 lt!2247645) (= lambda!296494 lambda!296452))))

(declare-fun bs!1276035 () Bool)

(assert (= bs!1276035 (and b!5527239 b!5526944)))

(assert (=> bs!1276035 (= (= lt!2247712 lt!2247644) (= lambda!296494 lambda!296453))))

(declare-fun bs!1276036 () Bool)

(assert (= bs!1276036 (and b!5527239 d!1751292)))

(assert (=> bs!1276036 (not (= lambda!296494 lambda!296483))))

(declare-fun bs!1276037 () Bool)

(assert (= bs!1276037 (and b!5527239 d!1751288)))

(assert (=> bs!1276037 (not (= lambda!296494 lambda!296477))))

(declare-fun bs!1276038 () Bool)

(assert (= bs!1276038 (and b!5527239 b!5526947)))

(assert (=> bs!1276038 (= (= lt!2247712 lt!2247649) (= lambda!296494 lambda!296454))))

(declare-fun bs!1276039 () Bool)

(assert (= bs!1276039 (and b!5527239 d!1751290)))

(assert (=> bs!1276039 (not (= lambda!296494 lambda!296480))))

(declare-fun bs!1276040 () Bool)

(assert (= bs!1276040 (and b!5527239 b!5526949)))

(assert (=> bs!1276040 (= (= lt!2247712 lt!2247648) (= lambda!296494 lambda!296455))))

(assert (=> b!5527239 true))

(declare-fun bs!1276041 () Bool)

(declare-fun b!5527241 () Bool)

(assert (= bs!1276041 (and b!5527241 b!5526942)))

(declare-fun lambda!296495 () Int)

(declare-fun lt!2247711 () Int)

(assert (=> bs!1276041 (= (= lt!2247711 lt!2247645) (= lambda!296495 lambda!296452))))

(declare-fun bs!1276042 () Bool)

(assert (= bs!1276042 (and b!5527241 b!5527239)))

(assert (=> bs!1276042 (= (= lt!2247711 lt!2247712) (= lambda!296495 lambda!296494))))

(declare-fun bs!1276043 () Bool)

(assert (= bs!1276043 (and b!5527241 b!5526944)))

(assert (=> bs!1276043 (= (= lt!2247711 lt!2247644) (= lambda!296495 lambda!296453))))

(declare-fun bs!1276044 () Bool)

(assert (= bs!1276044 (and b!5527241 d!1751292)))

(assert (=> bs!1276044 (not (= lambda!296495 lambda!296483))))

(declare-fun bs!1276045 () Bool)

(assert (= bs!1276045 (and b!5527241 d!1751288)))

(assert (=> bs!1276045 (not (= lambda!296495 lambda!296477))))

(declare-fun bs!1276046 () Bool)

(assert (= bs!1276046 (and b!5527241 b!5526947)))

(assert (=> bs!1276046 (= (= lt!2247711 lt!2247649) (= lambda!296495 lambda!296454))))

(declare-fun bs!1276047 () Bool)

(assert (= bs!1276047 (and b!5527241 d!1751290)))

(assert (=> bs!1276047 (not (= lambda!296495 lambda!296480))))

(declare-fun bs!1276048 () Bool)

(assert (= bs!1276048 (and b!5527241 b!5526949)))

(assert (=> bs!1276048 (= (= lt!2247711 lt!2247648) (= lambda!296495 lambda!296455))))

(assert (=> b!5527241 true))

(declare-fun d!1751330 () Bool)

(declare-fun e!3416953 () Bool)

(assert (=> d!1751330 e!3416953))

(declare-fun res!2353629 () Bool)

(assert (=> d!1751330 (=> (not res!2353629) (not e!3416953))))

(assert (=> d!1751330 (= res!2353629 (>= lt!2247711 0))))

(declare-fun e!3416954 () Int)

(assert (=> d!1751330 (= lt!2247711 e!3416954)))

(declare-fun c!967015 () Bool)

(assert (=> d!1751330 (= c!967015 ((_ is Cons!62714) (exprs!5397 lt!2247530)))))

(assert (=> d!1751330 (= (contextDepth!109 lt!2247530) lt!2247711)))

(assert (=> b!5527239 (= e!3416954 lt!2247712)))

(assert (=> b!5527239 (= lt!2247712 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 lt!2247530))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(declare-fun lt!2247713 () Unit!155486)

(assert (=> b!5527239 (= lt!2247713 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 lt!2247530)) lt!2247712 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(assert (=> b!5527239 (forall!14690 (t!376093 (exprs!5397 lt!2247530)) lambda!296494)))

(declare-fun lt!2247714 () Unit!155486)

(assert (=> b!5527239 (= lt!2247714 lt!2247713)))

(declare-fun b!5527240 () Bool)

(assert (=> b!5527240 (= e!3416954 0)))

(assert (=> b!5527241 (= e!3416953 (forall!14690 (exprs!5397 lt!2247530) lambda!296495))))

(assert (= (and d!1751330 c!967015) b!5527239))

(assert (= (and d!1751330 (not c!967015)) b!5527240))

(assert (= (and d!1751330 res!2353629) b!5527241))

(declare-fun m!6529402 () Bool)

(assert (=> b!5527239 m!6529402))

(declare-fun m!6529404 () Bool)

(assert (=> b!5527239 m!6529404))

(declare-fun m!6529406 () Bool)

(assert (=> b!5527239 m!6529406))

(assert (=> b!5527239 m!6529402))

(assert (=> b!5527239 m!6529406))

(declare-fun m!6529408 () Bool)

(assert (=> b!5527239 m!6529408))

(assert (=> b!5527239 m!6529406))

(declare-fun m!6529410 () Bool)

(assert (=> b!5527239 m!6529410))

(declare-fun m!6529412 () Bool)

(assert (=> b!5527241 m!6529412))

(assert (=> b!5526456 d!1751330))

(declare-fun bs!1276049 () Bool)

(declare-fun d!1751332 () Bool)

(assert (= bs!1276049 (and d!1751332 b!5526942)))

(declare-fun lambda!296498 () Int)

(assert (=> bs!1276049 (not (= lambda!296498 lambda!296452))))

(declare-fun bs!1276050 () Bool)

(assert (= bs!1276050 (and d!1751332 b!5527239)))

(assert (=> bs!1276050 (not (= lambda!296498 lambda!296494))))

(declare-fun bs!1276051 () Bool)

(assert (= bs!1276051 (and d!1751332 b!5526944)))

(assert (=> bs!1276051 (not (= lambda!296498 lambda!296453))))

(declare-fun bs!1276052 () Bool)

(assert (= bs!1276052 (and d!1751332 b!5527241)))

(assert (=> bs!1276052 (not (= lambda!296498 lambda!296495))))

(declare-fun bs!1276053 () Bool)

(assert (= bs!1276053 (and d!1751332 d!1751292)))

(assert (=> bs!1276053 (= lambda!296498 lambda!296483)))

(declare-fun bs!1276054 () Bool)

(assert (= bs!1276054 (and d!1751332 d!1751288)))

(assert (=> bs!1276054 (= lambda!296498 lambda!296477)))

(declare-fun bs!1276055 () Bool)

(assert (= bs!1276055 (and d!1751332 b!5526947)))

(assert (=> bs!1276055 (not (= lambda!296498 lambda!296454))))

(declare-fun bs!1276056 () Bool)

(assert (= bs!1276056 (and d!1751332 d!1751290)))

(assert (=> bs!1276056 (= lambda!296498 lambda!296480)))

(declare-fun bs!1276057 () Bool)

(assert (= bs!1276057 (and d!1751332 b!5526949)))

(assert (=> bs!1276057 (not (= lambda!296498 lambda!296455))))

(assert (=> d!1751332 (= (inv!82029 (h!69163 zl!343)) (forall!14690 (exprs!5397 (h!69163 zl!343)) lambda!296498))))

(declare-fun bs!1276058 () Bool)

(assert (= bs!1276058 d!1751332))

(declare-fun m!6529414 () Bool)

(assert (=> bs!1276058 m!6529414))

(assert (=> b!5526446 d!1751332))

(declare-fun bs!1276059 () Bool)

(declare-fun d!1751334 () Bool)

(assert (= bs!1276059 (and d!1751334 b!5526942)))

(declare-fun lambda!296499 () Int)

(assert (=> bs!1276059 (not (= lambda!296499 lambda!296452))))

(declare-fun bs!1276060 () Bool)

(assert (= bs!1276060 (and d!1751334 d!1751332)))

(assert (=> bs!1276060 (= lambda!296499 lambda!296498)))

(declare-fun bs!1276061 () Bool)

(assert (= bs!1276061 (and d!1751334 b!5527239)))

(assert (=> bs!1276061 (not (= lambda!296499 lambda!296494))))

(declare-fun bs!1276062 () Bool)

(assert (= bs!1276062 (and d!1751334 b!5526944)))

(assert (=> bs!1276062 (not (= lambda!296499 lambda!296453))))

(declare-fun bs!1276063 () Bool)

(assert (= bs!1276063 (and d!1751334 b!5527241)))

(assert (=> bs!1276063 (not (= lambda!296499 lambda!296495))))

(declare-fun bs!1276064 () Bool)

(assert (= bs!1276064 (and d!1751334 d!1751292)))

(assert (=> bs!1276064 (= lambda!296499 lambda!296483)))

(declare-fun bs!1276065 () Bool)

(assert (= bs!1276065 (and d!1751334 d!1751288)))

(assert (=> bs!1276065 (= lambda!296499 lambda!296477)))

(declare-fun bs!1276066 () Bool)

(assert (= bs!1276066 (and d!1751334 b!5526947)))

(assert (=> bs!1276066 (not (= lambda!296499 lambda!296454))))

(declare-fun bs!1276067 () Bool)

(assert (= bs!1276067 (and d!1751334 d!1751290)))

(assert (=> bs!1276067 (= lambda!296499 lambda!296480)))

(declare-fun bs!1276068 () Bool)

(assert (= bs!1276068 (and d!1751334 b!5526949)))

(assert (=> bs!1276068 (not (= lambda!296499 lambda!296455))))

(assert (=> d!1751334 (= (inv!82029 setElem!36755) (forall!14690 (exprs!5397 setElem!36755) lambda!296499))))

(declare-fun bs!1276069 () Bool)

(assert (= bs!1276069 d!1751334))

(declare-fun m!6529416 () Bool)

(assert (=> bs!1276069 m!6529416))

(assert (=> setNonEmpty!36755 d!1751334))

(declare-fun d!1751336 () Bool)

(assert (=> d!1751336 (= (flatMap!1126 z!1189 lambda!296389) (choose!41994 z!1189 lambda!296389))))

(declare-fun bs!1276070 () Bool)

(assert (= bs!1276070 d!1751336))

(declare-fun m!6529418 () Bool)

(assert (=> bs!1276070 m!6529418))

(assert (=> b!5526445 d!1751336))

(declare-fun b!5527242 () Bool)

(declare-fun e!3416957 () Bool)

(assert (=> b!5527242 (= e!3416957 (nullable!5547 (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5527243 () Bool)

(declare-fun e!3416955 () (InoxSet Context!9794))

(declare-fun e!3416956 () (InoxSet Context!9794))

(assert (=> b!5527243 (= e!3416955 e!3416956)))

(declare-fun c!967016 () Bool)

(assert (=> b!5527243 (= c!967016 ((_ is Cons!62714) (exprs!5397 (h!69163 zl!343))))))

(declare-fun b!5527244 () Bool)

(assert (=> b!5527244 (= e!3416956 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410082 () Bool)

(declare-fun call!410087 () (InoxSet Context!9794))

(assert (=> bm!410082 (= call!410087 (derivationStepZipperDown!855 (h!69162 (exprs!5397 (h!69163 zl!343))) (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) (h!69164 s!2326)))))

(declare-fun b!5527245 () Bool)

(assert (=> b!5527245 (= e!3416956 call!410087)))

(declare-fun d!1751338 () Bool)

(declare-fun c!967017 () Bool)

(assert (=> d!1751338 (= c!967017 e!3416957)))

(declare-fun res!2353630 () Bool)

(assert (=> d!1751338 (=> (not res!2353630) (not e!3416957))))

(assert (=> d!1751338 (= res!2353630 ((_ is Cons!62714) (exprs!5397 (h!69163 zl!343))))))

(assert (=> d!1751338 (= (derivationStepZipperUp!781 (h!69163 zl!343) (h!69164 s!2326)) e!3416955)))

(declare-fun b!5527246 () Bool)

(assert (=> b!5527246 (= e!3416955 ((_ map or) call!410087 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) (h!69164 s!2326))))))

(assert (= (and d!1751338 res!2353630) b!5527242))

(assert (= (and d!1751338 c!967017) b!5527246))

(assert (= (and d!1751338 (not c!967017)) b!5527243))

(assert (= (and b!5527243 c!967016) b!5527245))

(assert (= (and b!5527243 (not c!967016)) b!5527244))

(assert (= (or b!5527246 b!5527245) bm!410082))

(declare-fun m!6529420 () Bool)

(assert (=> b!5527242 m!6529420))

(declare-fun m!6529422 () Bool)

(assert (=> bm!410082 m!6529422))

(declare-fun m!6529424 () Bool)

(assert (=> b!5527246 m!6529424))

(assert (=> b!5526445 d!1751338))

(declare-fun d!1751340 () Bool)

(assert (=> d!1751340 (= (flatMap!1126 z!1189 lambda!296389) (dynLambda!24512 lambda!296389 (h!69163 zl!343)))))

(declare-fun lt!2247715 () Unit!155486)

(assert (=> d!1751340 (= lt!2247715 (choose!41995 z!1189 (h!69163 zl!343) lambda!296389))))

(assert (=> d!1751340 (= z!1189 (store ((as const (Array Context!9794 Bool)) false) (h!69163 zl!343) true))))

(assert (=> d!1751340 (= (lemmaFlatMapOnSingletonSet!658 z!1189 (h!69163 zl!343) lambda!296389) lt!2247715)))

(declare-fun b_lambda!209675 () Bool)

(assert (=> (not b_lambda!209675) (not d!1751340)))

(declare-fun bs!1276071 () Bool)

(assert (= bs!1276071 d!1751340))

(assert (=> bs!1276071 m!6528754))

(declare-fun m!6529426 () Bool)

(assert (=> bs!1276071 m!6529426))

(declare-fun m!6529428 () Bool)

(assert (=> bs!1276071 m!6529428))

(declare-fun m!6529430 () Bool)

(assert (=> bs!1276071 m!6529430))

(assert (=> b!5526445 d!1751340))

(declare-fun b!5527251 () Bool)

(declare-fun e!3416960 () Bool)

(declare-fun tp!1520614 () Bool)

(declare-fun tp!1520615 () Bool)

(assert (=> b!5527251 (= e!3416960 (and tp!1520614 tp!1520615))))

(assert (=> b!5526448 (= tp!1520544 e!3416960)))

(assert (= (and b!5526448 ((_ is Cons!62714) (exprs!5397 setElem!36755))) b!5527251))

(declare-fun b!5527252 () Bool)

(declare-fun e!3416961 () Bool)

(declare-fun tp!1520616 () Bool)

(declare-fun tp!1520617 () Bool)

(assert (=> b!5527252 (= e!3416961 (and tp!1520616 tp!1520617))))

(assert (=> b!5526464 (= tp!1520551 e!3416961)))

(assert (= (and b!5526464 ((_ is Cons!62714) (exprs!5397 (h!69163 zl!343)))) b!5527252))

(declare-fun b!5527265 () Bool)

(declare-fun e!3416964 () Bool)

(declare-fun tp!1520629 () Bool)

(assert (=> b!5527265 (= e!3416964 tp!1520629)))

(declare-fun b!5527263 () Bool)

(assert (=> b!5527263 (= e!3416964 tp_is_empty!40279)))

(declare-fun b!5527266 () Bool)

(declare-fun tp!1520630 () Bool)

(declare-fun tp!1520632 () Bool)

(assert (=> b!5527266 (= e!3416964 (and tp!1520630 tp!1520632))))

(assert (=> b!5526462 (= tp!1520543 e!3416964)))

(declare-fun b!5527264 () Bool)

(declare-fun tp!1520631 () Bool)

(declare-fun tp!1520628 () Bool)

(assert (=> b!5527264 (= e!3416964 (and tp!1520631 tp!1520628))))

(assert (= (and b!5526462 ((_ is ElementMatch!15513) (regOne!31539 r!7292))) b!5527263))

(assert (= (and b!5526462 ((_ is Concat!24358) (regOne!31539 r!7292))) b!5527264))

(assert (= (and b!5526462 ((_ is Star!15513) (regOne!31539 r!7292))) b!5527265))

(assert (= (and b!5526462 ((_ is Union!15513) (regOne!31539 r!7292))) b!5527266))

(declare-fun b!5527269 () Bool)

(declare-fun e!3416965 () Bool)

(declare-fun tp!1520634 () Bool)

(assert (=> b!5527269 (= e!3416965 tp!1520634)))

(declare-fun b!5527267 () Bool)

(assert (=> b!5527267 (= e!3416965 tp_is_empty!40279)))

(declare-fun b!5527270 () Bool)

(declare-fun tp!1520635 () Bool)

(declare-fun tp!1520637 () Bool)

(assert (=> b!5527270 (= e!3416965 (and tp!1520635 tp!1520637))))

(assert (=> b!5526462 (= tp!1520547 e!3416965)))

(declare-fun b!5527268 () Bool)

(declare-fun tp!1520636 () Bool)

(declare-fun tp!1520633 () Bool)

(assert (=> b!5527268 (= e!3416965 (and tp!1520636 tp!1520633))))

(assert (= (and b!5526462 ((_ is ElementMatch!15513) (regTwo!31539 r!7292))) b!5527267))

(assert (= (and b!5526462 ((_ is Concat!24358) (regTwo!31539 r!7292))) b!5527268))

(assert (= (and b!5526462 ((_ is Star!15513) (regTwo!31539 r!7292))) b!5527269))

(assert (= (and b!5526462 ((_ is Union!15513) (regTwo!31539 r!7292))) b!5527270))

(declare-fun b!5527273 () Bool)

(declare-fun e!3416966 () Bool)

(declare-fun tp!1520639 () Bool)

(assert (=> b!5527273 (= e!3416966 tp!1520639)))

(declare-fun b!5527271 () Bool)

(assert (=> b!5527271 (= e!3416966 tp_is_empty!40279)))

(declare-fun b!5527274 () Bool)

(declare-fun tp!1520640 () Bool)

(declare-fun tp!1520642 () Bool)

(assert (=> b!5527274 (= e!3416966 (and tp!1520640 tp!1520642))))

(assert (=> b!5526453 (= tp!1520546 e!3416966)))

(declare-fun b!5527272 () Bool)

(declare-fun tp!1520641 () Bool)

(declare-fun tp!1520638 () Bool)

(assert (=> b!5527272 (= e!3416966 (and tp!1520641 tp!1520638))))

(assert (= (and b!5526453 ((_ is ElementMatch!15513) (regOne!31538 r!7292))) b!5527271))

(assert (= (and b!5526453 ((_ is Concat!24358) (regOne!31538 r!7292))) b!5527272))

(assert (= (and b!5526453 ((_ is Star!15513) (regOne!31538 r!7292))) b!5527273))

(assert (= (and b!5526453 ((_ is Union!15513) (regOne!31538 r!7292))) b!5527274))

(declare-fun b!5527277 () Bool)

(declare-fun e!3416967 () Bool)

(declare-fun tp!1520644 () Bool)

(assert (=> b!5527277 (= e!3416967 tp!1520644)))

(declare-fun b!5527275 () Bool)

(assert (=> b!5527275 (= e!3416967 tp_is_empty!40279)))

(declare-fun b!5527278 () Bool)

(declare-fun tp!1520645 () Bool)

(declare-fun tp!1520647 () Bool)

(assert (=> b!5527278 (= e!3416967 (and tp!1520645 tp!1520647))))

(assert (=> b!5526453 (= tp!1520548 e!3416967)))

(declare-fun b!5527276 () Bool)

(declare-fun tp!1520646 () Bool)

(declare-fun tp!1520643 () Bool)

(assert (=> b!5527276 (= e!3416967 (and tp!1520646 tp!1520643))))

(assert (= (and b!5526453 ((_ is ElementMatch!15513) (regTwo!31538 r!7292))) b!5527275))

(assert (= (and b!5526453 ((_ is Concat!24358) (regTwo!31538 r!7292))) b!5527276))

(assert (= (and b!5526453 ((_ is Star!15513) (regTwo!31538 r!7292))) b!5527277))

(assert (= (and b!5526453 ((_ is Union!15513) (regTwo!31538 r!7292))) b!5527278))

(declare-fun b!5527281 () Bool)

(declare-fun e!3416968 () Bool)

(declare-fun tp!1520649 () Bool)

(assert (=> b!5527281 (= e!3416968 tp!1520649)))

(declare-fun b!5527279 () Bool)

(assert (=> b!5527279 (= e!3416968 tp_is_empty!40279)))

(declare-fun b!5527282 () Bool)

(declare-fun tp!1520650 () Bool)

(declare-fun tp!1520652 () Bool)

(assert (=> b!5527282 (= e!3416968 (and tp!1520650 tp!1520652))))

(assert (=> b!5526451 (= tp!1520550 e!3416968)))

(declare-fun b!5527280 () Bool)

(declare-fun tp!1520651 () Bool)

(declare-fun tp!1520648 () Bool)

(assert (=> b!5527280 (= e!3416968 (and tp!1520651 tp!1520648))))

(assert (= (and b!5526451 ((_ is ElementMatch!15513) (reg!15842 r!7292))) b!5527279))

(assert (= (and b!5526451 ((_ is Concat!24358) (reg!15842 r!7292))) b!5527280))

(assert (= (and b!5526451 ((_ is Star!15513) (reg!15842 r!7292))) b!5527281))

(assert (= (and b!5526451 ((_ is Union!15513) (reg!15842 r!7292))) b!5527282))

(declare-fun b!5527287 () Bool)

(declare-fun e!3416971 () Bool)

(declare-fun tp!1520655 () Bool)

(assert (=> b!5527287 (= e!3416971 (and tp_is_empty!40279 tp!1520655))))

(assert (=> b!5526455 (= tp!1520542 e!3416971)))

(assert (= (and b!5526455 ((_ is Cons!62716) (t!376095 s!2326))) b!5527287))

(declare-fun b!5527295 () Bool)

(declare-fun e!3416977 () Bool)

(declare-fun tp!1520660 () Bool)

(assert (=> b!5527295 (= e!3416977 tp!1520660)))

(declare-fun b!5527294 () Bool)

(declare-fun e!3416976 () Bool)

(declare-fun tp!1520661 () Bool)

(assert (=> b!5527294 (= e!3416976 (and (inv!82029 (h!69163 (t!376094 zl!343))) e!3416977 tp!1520661))))

(assert (=> b!5526446 (= tp!1520545 e!3416976)))

(assert (= b!5527294 b!5527295))

(assert (= (and b!5526446 ((_ is Cons!62715) (t!376094 zl!343))) b!5527294))

(declare-fun m!6529432 () Bool)

(assert (=> b!5527294 m!6529432))

(declare-fun condSetEmpty!36761 () Bool)

(assert (=> setNonEmpty!36755 (= condSetEmpty!36761 (= setRest!36755 ((as const (Array Context!9794 Bool)) false)))))

(declare-fun setRes!36761 () Bool)

(assert (=> setNonEmpty!36755 (= tp!1520549 setRes!36761)))

(declare-fun setIsEmpty!36761 () Bool)

(assert (=> setIsEmpty!36761 setRes!36761))

(declare-fun setElem!36761 () Context!9794)

(declare-fun e!3416980 () Bool)

(declare-fun setNonEmpty!36761 () Bool)

(declare-fun tp!1520667 () Bool)

(assert (=> setNonEmpty!36761 (= setRes!36761 (and tp!1520667 (inv!82029 setElem!36761) e!3416980))))

(declare-fun setRest!36761 () (InoxSet Context!9794))

(assert (=> setNonEmpty!36761 (= setRest!36755 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) setElem!36761 true) setRest!36761))))

(declare-fun b!5527300 () Bool)

(declare-fun tp!1520666 () Bool)

(assert (=> b!5527300 (= e!3416980 tp!1520666)))

(assert (= (and setNonEmpty!36755 condSetEmpty!36761) setIsEmpty!36761))

(assert (= (and setNonEmpty!36755 (not condSetEmpty!36761)) setNonEmpty!36761))

(assert (= setNonEmpty!36761 b!5527300))

(declare-fun m!6529434 () Bool)

(assert (=> setNonEmpty!36761 m!6529434))

(declare-fun b_lambda!209677 () Bool)

(assert (= b_lambda!209675 (or b!5526445 b_lambda!209677)))

(declare-fun bs!1276072 () Bool)

(declare-fun d!1751342 () Bool)

(assert (= bs!1276072 (and d!1751342 b!5526445)))

(assert (=> bs!1276072 (= (dynLambda!24512 lambda!296389 (h!69163 zl!343)) (derivationStepZipperUp!781 (h!69163 zl!343) (h!69164 s!2326)))))

(assert (=> bs!1276072 m!6528756))

(assert (=> d!1751340 d!1751342))

(declare-fun b_lambda!209679 () Bool)

(assert (= b_lambda!209671 (or b!5526445 b_lambda!209679)))

(declare-fun bs!1276073 () Bool)

(declare-fun d!1751344 () Bool)

(assert (= bs!1276073 (and d!1751344 b!5526445)))

(assert (=> bs!1276073 (= (dynLambda!24512 lambda!296389 lt!2247530) (derivationStepZipperUp!781 lt!2247530 (h!69164 s!2326)))))

(assert (=> bs!1276073 m!6528710))

(assert (=> d!1751272 d!1751344))

(declare-fun b_lambda!209681 () Bool)

(assert (= b_lambda!209673 (or b!5526445 b_lambda!209681)))

(declare-fun bs!1276074 () Bool)

(declare-fun d!1751346 () Bool)

(assert (= bs!1276074 (and d!1751346 b!5526445)))

(assert (=> bs!1276074 (= (dynLambda!24512 lambda!296389 lt!2247531) (derivationStepZipperUp!781 lt!2247531 (h!69164 s!2326)))))

(assert (=> bs!1276074 m!6528722))

(assert (=> d!1751280 d!1751346))

(check-sat (not b!5526933) (not b!5527238) (not d!1751306) (not b!5526963) (not d!1751332) (not bm!410068) (not b!5527006) (not b!5527276) (not b!5527143) (not bs!1276072) (not b!5527118) (not b!5527055) (not b!5527229) (not b!5527287) (not d!1751296) (not bm!410070) (not b!5527079) (not d!1751308) (not d!1751284) (not b!5526956) (not b!5527227) (not b!5527040) (not d!1751304) (not b!5527235) (not b!5527111) (not d!1751268) (not bs!1276074) (not b!5527281) (not setNonEmpty!36761) (not b!5527264) (not b!5527148) (not d!1751276) (not b_lambda!209677) (not d!1751324) (not b!5527225) (not b!5527109) (not d!1751328) (not b!5526947) (not b!5527056) (not b!5527272) (not bm!410054) (not b!5526949) (not b!5527273) (not d!1751318) (not b_lambda!209679) (not b!5527176) (not b!5526944) (not b!5527067) (not b!5527278) (not b!5527300) (not bm!410082) (not b!5527044) (not bm!410064) (not b!5527224) (not b!5527088) (not b!5527241) (not d!1751336) (not b!5527155) (not bm!410058) (not d!1751326) (not bm!410063) (not b!5527251) (not b!5527083) (not b!5527232) (not d!1751292) (not b!5527113) (not bm!410071) (not b!5527053) (not b!5526961) (not b!5527146) (not d!1751246) (not b!5527282) (not d!1751310) (not b!5527046) (not bm!410045) (not b!5526918) (not d!1751264) (not d!1751290) (not d!1751316) (not b!5527114) (not d!1751270) (not b!5527239) (not d!1751260) (not b!5527274) (not b!5527269) (not b!5527230) (not b!5527295) (not bm!410072) (not bm!410069) (not d!1751300) (not b!5527270) (not d!1751294) (not b!5527078) (not b!5527115) (not b!5527112) (not bm!410055) (not b!5527047) (not b!5527246) (not bm!410079) (not d!1751262) (not bm!410044) (not b!5527252) (not d!1751314) (not d!1751322) (not b!5527294) (not b!5527153) (not bs!1276073) (not d!1751272) (not b!5527035) (not d!1751280) (not b!5526942) (not b!5527175) (not b!5527144) (not b!5527242) tp_is_empty!40279 (not b!5527156) (not d!1751334) (not d!1751288) (not b!5527005) (not b_lambda!209681) (not b!5527179) (not b!5527266) (not d!1751302) (not b!5527268) (not b!5527223) (not d!1751266) (not b!5527145) (not b!5527084) (not b!5527178) (not b!5527228) (not b!5527231) (not bm!410049) (not b!5527181) (not d!1751320) (not d!1751340) (not b!5527280) (not b!5527054) (not b!5527140) (not b!5527226) (not b!5526929) (not bm!410046) (not b!5527139) (not b!5527265) (not b!5526958) (not b!5527183) (not bm!410062) (not b!5527277) (not bm!410081) (not b!5527218) (not b!5527037))
(check-sat)
(get-model)

(declare-fun b!5527732 () Bool)

(declare-fun e!3417257 () Bool)

(declare-fun lt!2247755 () Int)

(declare-fun call!410214 () Int)

(assert (=> b!5527732 (= e!3417257 (> lt!2247755 call!410214))))

(declare-fun b!5527733 () Bool)

(declare-fun e!3417261 () Bool)

(declare-fun call!410211 () Int)

(assert (=> b!5527733 (= e!3417261 (> lt!2247755 call!410211))))

(declare-fun b!5527734 () Bool)

(declare-fun e!3417256 () Int)

(assert (=> b!5527734 (= e!3417256 1)))

(declare-fun b!5527735 () Bool)

(declare-fun e!3417255 () Bool)

(declare-fun call!410215 () Int)

(assert (=> b!5527735 (= e!3417255 (> lt!2247755 call!410215))))

(declare-fun b!5527736 () Bool)

(assert (=> b!5527736 (= e!3417257 (= lt!2247755 1))))

(declare-fun b!5527737 () Bool)

(declare-fun e!3417258 () Bool)

(declare-fun e!3417254 () Bool)

(assert (=> b!5527737 (= e!3417258 e!3417254)))

(declare-fun c!967160 () Bool)

(assert (=> b!5527737 (= c!967160 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5527738 () Bool)

(declare-fun e!3417259 () Bool)

(assert (=> b!5527738 (= e!3417259 e!3417258)))

(declare-fun c!967157 () Bool)

(assert (=> b!5527738 (= c!967157 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5527739 () Bool)

(assert (=> b!5527739 (= e!3417258 e!3417261)))

(declare-fun res!2353788 () Bool)

(assert (=> b!5527739 (= res!2353788 (> lt!2247755 call!410215))))

(assert (=> b!5527739 (=> (not res!2353788) (not e!3417261))))

(declare-fun b!5527740 () Bool)

(declare-fun c!967161 () Bool)

(assert (=> b!5527740 (= c!967161 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun e!3417260 () Int)

(declare-fun e!3417253 () Int)

(assert (=> b!5527740 (= e!3417260 e!3417253)))

(declare-fun b!5527741 () Bool)

(declare-fun c!967159 () Bool)

(assert (=> b!5527741 (= c!967159 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247531))))))

(assert (=> b!5527741 (= e!3417254 e!3417257)))

(declare-fun b!5527742 () Bool)

(declare-fun e!3417262 () Int)

(declare-fun call!410216 () Int)

(assert (=> b!5527742 (= e!3417262 (+ 1 call!410216))))

(declare-fun call!410213 () Int)

(declare-fun c!967163 () Bool)

(declare-fun bm!410205 () Bool)

(assert (=> bm!410205 (= call!410213 (regexDepth!213 (ite c!967163 (reg!15842 (h!69162 (exprs!5397 lt!2247531))) (ite c!967161 (regTwo!31539 (h!69162 (exprs!5397 lt!2247531))) (regOne!31538 (h!69162 (exprs!5397 lt!2247531)))))))))

(declare-fun b!5527743 () Bool)

(assert (=> b!5527743 (= e!3417253 e!3417262)))

(declare-fun c!967162 () Bool)

(assert (=> b!5527743 (= c!967162 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5527744 () Bool)

(declare-fun res!2353789 () Bool)

(assert (=> b!5527744 (=> (not res!2353789) (not e!3417255))))

(assert (=> b!5527744 (= res!2353789 (> lt!2247755 call!410214))))

(assert (=> b!5527744 (= e!3417254 e!3417255)))

(declare-fun d!1751544 () Bool)

(assert (=> d!1751544 e!3417259))

(declare-fun res!2353787 () Bool)

(assert (=> d!1751544 (=> (not res!2353787) (not e!3417259))))

(assert (=> d!1751544 (= res!2353787 (> lt!2247755 0))))

(assert (=> d!1751544 (= lt!2247755 e!3417256)))

(declare-fun c!967158 () Bool)

(assert (=> d!1751544 (= c!967158 ((_ is ElementMatch!15513) (h!69162 (exprs!5397 lt!2247531))))))

(assert (=> d!1751544 (= (regexDepth!213 (h!69162 (exprs!5397 lt!2247531))) lt!2247755)))

(declare-fun bm!410206 () Bool)

(assert (=> bm!410206 (= call!410215 (regexDepth!213 (ite c!967157 (regOne!31539 (h!69162 (exprs!5397 lt!2247531))) (regTwo!31538 (h!69162 (exprs!5397 lt!2247531))))))))

(declare-fun bm!410207 () Bool)

(assert (=> bm!410207 (= call!410214 call!410211)))

(declare-fun b!5527745 () Bool)

(assert (=> b!5527745 (= e!3417256 e!3417260)))

(assert (=> b!5527745 (= c!967163 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5527746 () Bool)

(assert (=> b!5527746 (= e!3417260 (+ 1 call!410213))))

(declare-fun bm!410208 () Bool)

(declare-fun call!410210 () Int)

(declare-fun call!410212 () Int)

(assert (=> bm!410208 (= call!410216 (maxBigInt!0 (ite c!967161 call!410212 call!410210) (ite c!967161 call!410210 call!410212)))))

(declare-fun bm!410209 () Bool)

(assert (=> bm!410209 (= call!410210 call!410213)))

(declare-fun b!5527747 () Bool)

(assert (=> b!5527747 (= e!3417253 (+ 1 call!410216))))

(declare-fun bm!410210 () Bool)

(assert (=> bm!410210 (= call!410211 (regexDepth!213 (ite c!967157 (regTwo!31539 (h!69162 (exprs!5397 lt!2247531))) (ite c!967160 (regOne!31538 (h!69162 (exprs!5397 lt!2247531))) (reg!15842 (h!69162 (exprs!5397 lt!2247531)))))))))

(declare-fun b!5527748 () Bool)

(assert (=> b!5527748 (= e!3417262 1)))

(declare-fun bm!410211 () Bool)

(assert (=> bm!410211 (= call!410212 (regexDepth!213 (ite c!967161 (regOne!31539 (h!69162 (exprs!5397 lt!2247531))) (regTwo!31538 (h!69162 (exprs!5397 lt!2247531))))))))

(assert (= (and d!1751544 c!967158) b!5527734))

(assert (= (and d!1751544 (not c!967158)) b!5527745))

(assert (= (and b!5527745 c!967163) b!5527746))

(assert (= (and b!5527745 (not c!967163)) b!5527740))

(assert (= (and b!5527740 c!967161) b!5527747))

(assert (= (and b!5527740 (not c!967161)) b!5527743))

(assert (= (and b!5527743 c!967162) b!5527742))

(assert (= (and b!5527743 (not c!967162)) b!5527748))

(assert (= (or b!5527747 b!5527742) bm!410209))

(assert (= (or b!5527747 b!5527742) bm!410211))

(assert (= (or b!5527747 b!5527742) bm!410208))

(assert (= (or b!5527746 bm!410209) bm!410205))

(assert (= (and d!1751544 res!2353787) b!5527738))

(assert (= (and b!5527738 c!967157) b!5527739))

(assert (= (and b!5527738 (not c!967157)) b!5527737))

(assert (= (and b!5527739 res!2353788) b!5527733))

(assert (= (and b!5527737 c!967160) b!5527744))

(assert (= (and b!5527737 (not c!967160)) b!5527741))

(assert (= (and b!5527744 res!2353789) b!5527735))

(assert (= (and b!5527741 c!967159) b!5527732))

(assert (= (and b!5527741 (not c!967159)) b!5527736))

(assert (= (or b!5527744 b!5527732) bm!410207))

(assert (= (or b!5527733 bm!410207) bm!410210))

(assert (= (or b!5527739 b!5527735) bm!410206))

(declare-fun m!6529848 () Bool)

(assert (=> bm!410206 m!6529848))

(declare-fun m!6529850 () Bool)

(assert (=> bm!410210 m!6529850))

(declare-fun m!6529852 () Bool)

(assert (=> bm!410205 m!6529852))

(declare-fun m!6529854 () Bool)

(assert (=> bm!410208 m!6529854))

(declare-fun m!6529856 () Bool)

(assert (=> bm!410211 m!6529856))

(assert (=> b!5526947 d!1751544))

(declare-fun bs!1276313 () Bool)

(declare-fun b!5527749 () Bool)

(assert (= bs!1276313 (and b!5527749 d!1751334)))

(declare-fun lambda!296535 () Int)

(assert (=> bs!1276313 (not (= lambda!296535 lambda!296499))))

(declare-fun bs!1276315 () Bool)

(assert (= bs!1276315 (and b!5527749 b!5526942)))

(declare-fun lt!2247757 () Int)

(assert (=> bs!1276315 (= (= lt!2247757 lt!2247645) (= lambda!296535 lambda!296452))))

(declare-fun bs!1276316 () Bool)

(assert (= bs!1276316 (and b!5527749 d!1751332)))

(assert (=> bs!1276316 (not (= lambda!296535 lambda!296498))))

(declare-fun bs!1276317 () Bool)

(assert (= bs!1276317 (and b!5527749 b!5527239)))

(assert (=> bs!1276317 (= (= lt!2247757 lt!2247712) (= lambda!296535 lambda!296494))))

(declare-fun bs!1276318 () Bool)

(assert (= bs!1276318 (and b!5527749 b!5526944)))

(assert (=> bs!1276318 (= (= lt!2247757 lt!2247644) (= lambda!296535 lambda!296453))))

(declare-fun bs!1276319 () Bool)

(assert (= bs!1276319 (and b!5527749 b!5527241)))

(assert (=> bs!1276319 (= (= lt!2247757 lt!2247711) (= lambda!296535 lambda!296495))))

(declare-fun bs!1276320 () Bool)

(assert (= bs!1276320 (and b!5527749 d!1751292)))

(assert (=> bs!1276320 (not (= lambda!296535 lambda!296483))))

(declare-fun bs!1276321 () Bool)

(assert (= bs!1276321 (and b!5527749 d!1751288)))

(assert (=> bs!1276321 (not (= lambda!296535 lambda!296477))))

(declare-fun bs!1276322 () Bool)

(assert (= bs!1276322 (and b!5527749 b!5526947)))

(assert (=> bs!1276322 (= (= lt!2247757 lt!2247649) (= lambda!296535 lambda!296454))))

(declare-fun bs!1276323 () Bool)

(assert (= bs!1276323 (and b!5527749 d!1751290)))

(assert (=> bs!1276323 (not (= lambda!296535 lambda!296480))))

(declare-fun bs!1276324 () Bool)

(assert (= bs!1276324 (and b!5527749 b!5526949)))

(assert (=> bs!1276324 (= (= lt!2247757 lt!2247648) (= lambda!296535 lambda!296455))))

(assert (=> b!5527749 true))

(declare-fun bs!1276325 () Bool)

(declare-fun b!5527751 () Bool)

(assert (= bs!1276325 (and b!5527751 d!1751334)))

(declare-fun lambda!296536 () Int)

(assert (=> bs!1276325 (not (= lambda!296536 lambda!296499))))

(declare-fun bs!1276326 () Bool)

(assert (= bs!1276326 (and b!5527751 b!5526942)))

(declare-fun lt!2247756 () Int)

(assert (=> bs!1276326 (= (= lt!2247756 lt!2247645) (= lambda!296536 lambda!296452))))

(declare-fun bs!1276328 () Bool)

(assert (= bs!1276328 (and b!5527751 d!1751332)))

(assert (=> bs!1276328 (not (= lambda!296536 lambda!296498))))

(declare-fun bs!1276329 () Bool)

(assert (= bs!1276329 (and b!5527751 b!5527239)))

(assert (=> bs!1276329 (= (= lt!2247756 lt!2247712) (= lambda!296536 lambda!296494))))

(declare-fun bs!1276331 () Bool)

(assert (= bs!1276331 (and b!5527751 b!5527749)))

(assert (=> bs!1276331 (= (= lt!2247756 lt!2247757) (= lambda!296536 lambda!296535))))

(declare-fun bs!1276333 () Bool)

(assert (= bs!1276333 (and b!5527751 b!5526944)))

(assert (=> bs!1276333 (= (= lt!2247756 lt!2247644) (= lambda!296536 lambda!296453))))

(declare-fun bs!1276335 () Bool)

(assert (= bs!1276335 (and b!5527751 b!5527241)))

(assert (=> bs!1276335 (= (= lt!2247756 lt!2247711) (= lambda!296536 lambda!296495))))

(declare-fun bs!1276338 () Bool)

(assert (= bs!1276338 (and b!5527751 d!1751292)))

(assert (=> bs!1276338 (not (= lambda!296536 lambda!296483))))

(declare-fun bs!1276340 () Bool)

(assert (= bs!1276340 (and b!5527751 d!1751288)))

(assert (=> bs!1276340 (not (= lambda!296536 lambda!296477))))

(declare-fun bs!1276342 () Bool)

(assert (= bs!1276342 (and b!5527751 b!5526947)))

(assert (=> bs!1276342 (= (= lt!2247756 lt!2247649) (= lambda!296536 lambda!296454))))

(declare-fun bs!1276344 () Bool)

(assert (= bs!1276344 (and b!5527751 d!1751290)))

(assert (=> bs!1276344 (not (= lambda!296536 lambda!296480))))

(declare-fun bs!1276346 () Bool)

(assert (= bs!1276346 (and b!5527751 b!5526949)))

(assert (=> bs!1276346 (= (= lt!2247756 lt!2247648) (= lambda!296536 lambda!296455))))

(assert (=> b!5527751 true))

(declare-fun d!1751552 () Bool)

(declare-fun e!3417263 () Bool)

(assert (=> d!1751552 e!3417263))

(declare-fun res!2353790 () Bool)

(assert (=> d!1751552 (=> (not res!2353790) (not e!3417263))))

(assert (=> d!1751552 (= res!2353790 (>= lt!2247756 0))))

(declare-fun e!3417264 () Int)

(assert (=> d!1751552 (= lt!2247756 e!3417264)))

(declare-fun c!967164 () Bool)

(assert (=> d!1751552 (= c!967164 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(assert (=> d!1751552 (= (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))) lt!2247756)))

(assert (=> b!5527749 (= e!3417264 lt!2247757)))

(assert (=> b!5527749 (= lt!2247757 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))))))))

(declare-fun lt!2247758 () Unit!155486)

(assert (=> b!5527749 (= lt!2247758 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))) lt!2247757 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))))))))

(assert (=> b!5527749 (forall!14690 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))) lambda!296535)))

(declare-fun lt!2247759 () Unit!155486)

(assert (=> b!5527749 (= lt!2247759 lt!2247758)))

(declare-fun b!5527750 () Bool)

(assert (=> b!5527750 (= e!3417264 0)))

(assert (=> b!5527751 (= e!3417263 (forall!14690 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))) lambda!296536))))

(assert (= (and d!1751552 c!967164) b!5527749))

(assert (= (and d!1751552 (not c!967164)) b!5527750))

(assert (= (and d!1751552 res!2353790) b!5527751))

(declare-fun m!6529870 () Bool)

(assert (=> b!5527749 m!6529870))

(declare-fun m!6529872 () Bool)

(assert (=> b!5527749 m!6529872))

(declare-fun m!6529874 () Bool)

(assert (=> b!5527749 m!6529874))

(assert (=> b!5527749 m!6529870))

(assert (=> b!5527749 m!6529874))

(declare-fun m!6529876 () Bool)

(assert (=> b!5527749 m!6529876))

(assert (=> b!5527749 m!6529874))

(declare-fun m!6529882 () Bool)

(assert (=> b!5527749 m!6529882))

(declare-fun m!6529886 () Bool)

(assert (=> b!5527751 m!6529886))

(assert (=> b!5526947 d!1751552))

(declare-fun d!1751558 () Bool)

(assert (=> d!1751558 (= (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 lt!2247531))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))) (ite (>= (regexDepth!213 (h!69162 (exprs!5397 lt!2247531))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))) (regexDepth!213 (h!69162 (exprs!5397 lt!2247531))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(assert (=> b!5526947 d!1751558))

(declare-fun d!1751560 () Bool)

(declare-fun res!2353806 () Bool)

(declare-fun e!3417285 () Bool)

(assert (=> d!1751560 (=> res!2353806 e!3417285)))

(assert (=> d!1751560 (= res!2353806 ((_ is Nil!62714) (t!376093 (exprs!5397 lt!2247531))))))

(assert (=> d!1751560 (= (forall!14690 (t!376093 (exprs!5397 lt!2247531)) lambda!296454) e!3417285)))

(declare-fun b!5527786 () Bool)

(declare-fun e!3417286 () Bool)

(assert (=> b!5527786 (= e!3417285 e!3417286)))

(declare-fun res!2353807 () Bool)

(assert (=> b!5527786 (=> (not res!2353807) (not e!3417286))))

(declare-fun dynLambda!24517 (Int Regex!15513) Bool)

(assert (=> b!5527786 (= res!2353807 (dynLambda!24517 lambda!296454 (h!69162 (t!376093 (exprs!5397 lt!2247531)))))))

(declare-fun b!5527787 () Bool)

(assert (=> b!5527787 (= e!3417286 (forall!14690 (t!376093 (t!376093 (exprs!5397 lt!2247531))) lambda!296454))))

(assert (= (and d!1751560 (not res!2353806)) b!5527786))

(assert (= (and b!5527786 res!2353807) b!5527787))

(declare-fun b_lambda!209701 () Bool)

(assert (=> (not b_lambda!209701) (not b!5527786)))

(declare-fun m!6529902 () Bool)

(assert (=> b!5527786 m!6529902))

(declare-fun m!6529906 () Bool)

(assert (=> b!5527787 m!6529906))

(assert (=> b!5526947 d!1751560))

(declare-fun bs!1276369 () Bool)

(declare-fun d!1751566 () Bool)

(assert (= bs!1276369 (and d!1751566 d!1751334)))

(declare-fun lambda!296541 () Int)

(assert (=> bs!1276369 (not (= lambda!296541 lambda!296499))))

(declare-fun bs!1276370 () Bool)

(assert (= bs!1276370 (and d!1751566 b!5526942)))

(assert (=> bs!1276370 (= (= lt!2247649 lt!2247645) (= lambda!296541 lambda!296452))))

(declare-fun bs!1276371 () Bool)

(assert (= bs!1276371 (and d!1751566 d!1751332)))

(assert (=> bs!1276371 (not (= lambda!296541 lambda!296498))))

(declare-fun bs!1276373 () Bool)

(assert (= bs!1276373 (and d!1751566 b!5527239)))

(assert (=> bs!1276373 (= (= lt!2247649 lt!2247712) (= lambda!296541 lambda!296494))))

(declare-fun bs!1276374 () Bool)

(assert (= bs!1276374 (and d!1751566 b!5527749)))

(assert (=> bs!1276374 (= (= lt!2247649 lt!2247757) (= lambda!296541 lambda!296535))))

(declare-fun bs!1276376 () Bool)

(assert (= bs!1276376 (and d!1751566 b!5526944)))

(assert (=> bs!1276376 (= (= lt!2247649 lt!2247644) (= lambda!296541 lambda!296453))))

(declare-fun bs!1276377 () Bool)

(assert (= bs!1276377 (and d!1751566 b!5527241)))

(assert (=> bs!1276377 (= (= lt!2247649 lt!2247711) (= lambda!296541 lambda!296495))))

(declare-fun bs!1276379 () Bool)

(assert (= bs!1276379 (and d!1751566 b!5527751)))

(assert (=> bs!1276379 (= (= lt!2247649 lt!2247756) (= lambda!296541 lambda!296536))))

(declare-fun bs!1276380 () Bool)

(assert (= bs!1276380 (and d!1751566 d!1751292)))

(assert (=> bs!1276380 (not (= lambda!296541 lambda!296483))))

(declare-fun bs!1276381 () Bool)

(assert (= bs!1276381 (and d!1751566 d!1751288)))

(assert (=> bs!1276381 (not (= lambda!296541 lambda!296477))))

(declare-fun bs!1276383 () Bool)

(assert (= bs!1276383 (and d!1751566 b!5526947)))

(assert (=> bs!1276383 (= lambda!296541 lambda!296454)))

(declare-fun bs!1276384 () Bool)

(assert (= bs!1276384 (and d!1751566 d!1751290)))

(assert (=> bs!1276384 (not (= lambda!296541 lambda!296480))))

(declare-fun bs!1276386 () Bool)

(assert (= bs!1276386 (and d!1751566 b!5526949)))

(assert (=> bs!1276386 (= (= lt!2247649 lt!2247648) (= lambda!296541 lambda!296455))))

(assert (=> d!1751566 true))

(assert (=> d!1751566 (forall!14690 (t!376093 (exprs!5397 lt!2247531)) lambda!296541)))

(declare-fun lt!2247764 () Unit!155486)

(declare-fun choose!42002 (List!62838 Int Int) Unit!155486)

(assert (=> d!1751566 (= lt!2247764 (choose!42002 (t!376093 (exprs!5397 lt!2247531)) lt!2247649 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(assert (=> d!1751566 (>= lt!2247649 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))))

(assert (=> d!1751566 (= (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 lt!2247531)) lt!2247649 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))) lt!2247764)))

(declare-fun bs!1276388 () Bool)

(assert (= bs!1276388 d!1751566))

(declare-fun m!6529928 () Bool)

(assert (=> bs!1276388 m!6529928))

(assert (=> bs!1276388 m!6529148))

(declare-fun m!6529930 () Bool)

(assert (=> bs!1276388 m!6529930))

(assert (=> b!5526947 d!1751566))

(declare-fun bs!1276393 () Bool)

(declare-fun b!5527808 () Bool)

(assert (= bs!1276393 (and b!5527808 d!1751308)))

(declare-fun lambda!296544 () Int)

(assert (=> bs!1276393 (not (= lambda!296544 lambda!296492))))

(declare-fun bs!1276395 () Bool)

(assert (= bs!1276395 (and b!5527808 d!1751306)))

(assert (=> bs!1276395 (not (= lambda!296544 lambda!296486))))

(declare-fun bs!1276396 () Bool)

(assert (= bs!1276396 (and b!5527808 b!5526996)))

(assert (=> bs!1276396 (not (= lambda!296544 lambda!296473))))

(declare-fun bs!1276398 () Bool)

(assert (= bs!1276398 (and b!5527808 b!5527000)))

(assert (=> bs!1276398 (= (and (= (reg!15842 (regTwo!31539 r!7292)) (reg!15842 r!7292)) (= (regTwo!31539 r!7292) r!7292)) (= lambda!296544 lambda!296472))))

(assert (=> bs!1276393 (not (= lambda!296544 lambda!296491))))

(declare-fun bs!1276400 () Bool)

(assert (= bs!1276400 (and b!5527808 b!5526447)))

(assert (=> bs!1276400 (not (= lambda!296544 lambda!296388))))

(assert (=> bs!1276400 (not (= lambda!296544 lambda!296387))))

(assert (=> b!5527808 true))

(assert (=> b!5527808 true))

(declare-fun bs!1276405 () Bool)

(declare-fun b!5527804 () Bool)

(assert (= bs!1276405 (and b!5527804 d!1751308)))

(declare-fun lambda!296545 () Int)

(assert (=> bs!1276405 (= (and (= (regOne!31538 (regTwo!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regTwo!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296545 lambda!296492))))

(declare-fun bs!1276406 () Bool)

(assert (= bs!1276406 (and b!5527804 d!1751306)))

(assert (=> bs!1276406 (not (= lambda!296545 lambda!296486))))

(declare-fun bs!1276407 () Bool)

(assert (= bs!1276407 (and b!5527804 b!5527808)))

(assert (=> bs!1276407 (not (= lambda!296545 lambda!296544))))

(declare-fun bs!1276408 () Bool)

(assert (= bs!1276408 (and b!5527804 b!5526996)))

(assert (=> bs!1276408 (= (and (= (regOne!31538 (regTwo!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regTwo!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296545 lambda!296473))))

(declare-fun bs!1276409 () Bool)

(assert (= bs!1276409 (and b!5527804 b!5527000)))

(assert (=> bs!1276409 (not (= lambda!296545 lambda!296472))))

(assert (=> bs!1276405 (not (= lambda!296545 lambda!296491))))

(declare-fun bs!1276410 () Bool)

(assert (= bs!1276410 (and b!5527804 b!5526447)))

(assert (=> bs!1276410 (= (and (= (regOne!31538 (regTwo!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regTwo!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296545 lambda!296388))))

(assert (=> bs!1276410 (not (= lambda!296545 lambda!296387))))

(assert (=> b!5527804 true))

(assert (=> b!5527804 true))

(declare-fun d!1751576 () Bool)

(declare-fun c!967179 () Bool)

(assert (=> d!1751576 (= c!967179 ((_ is EmptyExpr!15513) (regTwo!31539 r!7292)))))

(declare-fun e!3417302 () Bool)

(assert (=> d!1751576 (= (matchRSpec!2616 (regTwo!31539 r!7292) s!2326) e!3417302)))

(declare-fun bm!410221 () Bool)

(declare-fun call!410226 () Bool)

(assert (=> bm!410221 (= call!410226 (isEmpty!34505 s!2326))))

(declare-fun e!3417300 () Bool)

(declare-fun call!410227 () Bool)

(assert (=> b!5527804 (= e!3417300 call!410227)))

(declare-fun b!5527805 () Bool)

(declare-fun e!3417301 () Bool)

(assert (=> b!5527805 (= e!3417302 e!3417301)))

(declare-fun res!2353815 () Bool)

(assert (=> b!5527805 (= res!2353815 (not ((_ is EmptyLang!15513) (regTwo!31539 r!7292))))))

(assert (=> b!5527805 (=> (not res!2353815) (not e!3417301))))

(declare-fun bm!410222 () Bool)

(declare-fun c!967178 () Bool)

(assert (=> bm!410222 (= call!410227 (Exists!2613 (ite c!967178 lambda!296544 lambda!296545)))))

(declare-fun b!5527806 () Bool)

(declare-fun e!3417299 () Bool)

(assert (=> b!5527806 (= e!3417299 e!3417300)))

(assert (=> b!5527806 (= c!967178 ((_ is Star!15513) (regTwo!31539 r!7292)))))

(declare-fun b!5527807 () Bool)

(assert (=> b!5527807 (= e!3417302 call!410226)))

(declare-fun e!3417303 () Bool)

(assert (=> b!5527808 (= e!3417303 call!410227)))

(declare-fun b!5527809 () Bool)

(declare-fun c!967181 () Bool)

(assert (=> b!5527809 (= c!967181 ((_ is Union!15513) (regTwo!31539 r!7292)))))

(declare-fun e!3417298 () Bool)

(assert (=> b!5527809 (= e!3417298 e!3417299)))

(declare-fun b!5527810 () Bool)

(declare-fun c!967180 () Bool)

(assert (=> b!5527810 (= c!967180 ((_ is ElementMatch!15513) (regTwo!31539 r!7292)))))

(assert (=> b!5527810 (= e!3417301 e!3417298)))

(declare-fun b!5527811 () Bool)

(assert (=> b!5527811 (= e!3417298 (= s!2326 (Cons!62716 (c!966767 (regTwo!31539 r!7292)) Nil!62716)))))

(declare-fun b!5527812 () Bool)

(declare-fun res!2353816 () Bool)

(assert (=> b!5527812 (=> res!2353816 e!3417303)))

(assert (=> b!5527812 (= res!2353816 call!410226)))

(assert (=> b!5527812 (= e!3417300 e!3417303)))

(declare-fun b!5527813 () Bool)

(declare-fun e!3417304 () Bool)

(assert (=> b!5527813 (= e!3417304 (matchRSpec!2616 (regTwo!31539 (regTwo!31539 r!7292)) s!2326))))

(declare-fun b!5527814 () Bool)

(assert (=> b!5527814 (= e!3417299 e!3417304)))

(declare-fun res!2353817 () Bool)

(assert (=> b!5527814 (= res!2353817 (matchRSpec!2616 (regOne!31539 (regTwo!31539 r!7292)) s!2326))))

(assert (=> b!5527814 (=> res!2353817 e!3417304)))

(assert (= (and d!1751576 c!967179) b!5527807))

(assert (= (and d!1751576 (not c!967179)) b!5527805))

(assert (= (and b!5527805 res!2353815) b!5527810))

(assert (= (and b!5527810 c!967180) b!5527811))

(assert (= (and b!5527810 (not c!967180)) b!5527809))

(assert (= (and b!5527809 c!967181) b!5527814))

(assert (= (and b!5527809 (not c!967181)) b!5527806))

(assert (= (and b!5527814 (not res!2353817)) b!5527813))

(assert (= (and b!5527806 c!967178) b!5527812))

(assert (= (and b!5527806 (not c!967178)) b!5527804))

(assert (= (and b!5527812 (not res!2353816)) b!5527808))

(assert (= (or b!5527808 b!5527804) bm!410222))

(assert (= (or b!5527807 b!5527812) bm!410221))

(assert (=> bm!410221 m!6529180))

(declare-fun m!6529944 () Bool)

(assert (=> bm!410222 m!6529944))

(declare-fun m!6529946 () Bool)

(assert (=> b!5527813 m!6529946))

(declare-fun m!6529948 () Bool)

(assert (=> b!5527814 m!6529948))

(assert (=> b!5527005 d!1751576))

(declare-fun bm!410231 () Bool)

(declare-fun call!410237 () Bool)

(declare-fun c!967190 () Bool)

(assert (=> bm!410231 (= call!410237 (nullable!5547 (ite c!967190 (regTwo!31539 (regOne!31538 r!7292)) (regTwo!31538 (regOne!31538 r!7292)))))))

(declare-fun b!5527855 () Bool)

(declare-fun e!3417336 () Bool)

(assert (=> b!5527855 (= e!3417336 call!410237)))

(declare-fun b!5527856 () Bool)

(declare-fun e!3417337 () Bool)

(assert (=> b!5527856 (= e!3417337 call!410237)))

(declare-fun b!5527857 () Bool)

(declare-fun e!3417338 () Bool)

(declare-fun e!3417335 () Bool)

(assert (=> b!5527857 (= e!3417338 e!3417335)))

(declare-fun res!2353844 () Bool)

(assert (=> b!5527857 (=> res!2353844 e!3417335)))

(assert (=> b!5527857 (= res!2353844 ((_ is Star!15513) (regOne!31538 r!7292)))))

(declare-fun d!1751586 () Bool)

(declare-fun res!2353843 () Bool)

(declare-fun e!3417333 () Bool)

(assert (=> d!1751586 (=> res!2353843 e!3417333)))

(assert (=> d!1751586 (= res!2353843 ((_ is EmptyExpr!15513) (regOne!31538 r!7292)))))

(assert (=> d!1751586 (= (nullableFct!1671 (regOne!31538 r!7292)) e!3417333)))

(declare-fun bm!410232 () Bool)

(declare-fun call!410236 () Bool)

(assert (=> bm!410232 (= call!410236 (nullable!5547 (ite c!967190 (regOne!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))))))

(declare-fun b!5527858 () Bool)

(declare-fun e!3417334 () Bool)

(assert (=> b!5527858 (= e!3417335 e!3417334)))

(assert (=> b!5527858 (= c!967190 ((_ is Union!15513) (regOne!31538 r!7292)))))

(declare-fun b!5527859 () Bool)

(assert (=> b!5527859 (= e!3417333 e!3417338)))

(declare-fun res!2353847 () Bool)

(assert (=> b!5527859 (=> (not res!2353847) (not e!3417338))))

(assert (=> b!5527859 (= res!2353847 (and (not ((_ is EmptyLang!15513) (regOne!31538 r!7292))) (not ((_ is ElementMatch!15513) (regOne!31538 r!7292)))))))

(declare-fun b!5527860 () Bool)

(assert (=> b!5527860 (= e!3417334 e!3417337)))

(declare-fun res!2353845 () Bool)

(assert (=> b!5527860 (= res!2353845 call!410236)))

(assert (=> b!5527860 (=> (not res!2353845) (not e!3417337))))

(declare-fun b!5527861 () Bool)

(assert (=> b!5527861 (= e!3417334 e!3417336)))

(declare-fun res!2353846 () Bool)

(assert (=> b!5527861 (= res!2353846 call!410236)))

(assert (=> b!5527861 (=> res!2353846 e!3417336)))

(assert (= (and d!1751586 (not res!2353843)) b!5527859))

(assert (= (and b!5527859 res!2353847) b!5527857))

(assert (= (and b!5527857 (not res!2353844)) b!5527858))

(assert (= (and b!5527858 c!967190) b!5527861))

(assert (= (and b!5527858 (not c!967190)) b!5527860))

(assert (= (and b!5527861 (not res!2353846)) b!5527855))

(assert (= (and b!5527860 res!2353845) b!5527856))

(assert (= (or b!5527855 b!5527856) bm!410231))

(assert (= (or b!5527861 b!5527860) bm!410232))

(declare-fun m!6529970 () Bool)

(assert (=> bm!410231 m!6529970))

(declare-fun m!6529972 () Bool)

(assert (=> bm!410232 m!6529972))

(assert (=> d!1751276 d!1751586))

(declare-fun d!1751598 () Bool)

(declare-fun c!967195 () Bool)

(assert (=> d!1751598 (= c!967195 (isEmpty!34505 (tail!10924 s!2326)))))

(declare-fun e!3417345 () Bool)

(assert (=> d!1751598 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247532 (head!11829 s!2326)) (tail!10924 s!2326)) e!3417345)))

(declare-fun b!5527872 () Bool)

(assert (=> b!5527872 (= e!3417345 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247532 (head!11829 s!2326))))))

(declare-fun b!5527873 () Bool)

(assert (=> b!5527873 (= e!3417345 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247532 (head!11829 s!2326)) (head!11829 (tail!10924 s!2326))) (tail!10924 (tail!10924 s!2326))))))

(assert (= (and d!1751598 c!967195) b!5527872))

(assert (= (and d!1751598 (not c!967195)) b!5527873))

(assert (=> d!1751598 m!6529188))

(assert (=> d!1751598 m!6529190))

(assert (=> b!5527872 m!6529204))

(declare-fun m!6529974 () Bool)

(assert (=> b!5527872 m!6529974))

(assert (=> b!5527873 m!6529188))

(declare-fun m!6529976 () Bool)

(assert (=> b!5527873 m!6529976))

(assert (=> b!5527873 m!6529204))

(assert (=> b!5527873 m!6529976))

(declare-fun m!6529978 () Bool)

(assert (=> b!5527873 m!6529978))

(assert (=> b!5527873 m!6529188))

(declare-fun m!6529980 () Bool)

(assert (=> b!5527873 m!6529980))

(assert (=> b!5527873 m!6529978))

(assert (=> b!5527873 m!6529980))

(declare-fun m!6529982 () Bool)

(assert (=> b!5527873 m!6529982))

(assert (=> b!5527054 d!1751598))

(declare-fun bs!1276453 () Bool)

(declare-fun d!1751600 () Bool)

(assert (= bs!1276453 (and d!1751600 b!5526445)))

(declare-fun lambda!296549 () Int)

(assert (=> bs!1276453 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296549 lambda!296389))))

(declare-fun bs!1276455 () Bool)

(assert (= bs!1276455 (and d!1751600 d!1751246)))

(assert (=> bs!1276455 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296549 lambda!296447))))

(declare-fun bs!1276456 () Bool)

(assert (= bs!1276456 (and d!1751600 d!1751268)))

(assert (=> bs!1276456 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296549 lambda!296474))))

(declare-fun bs!1276457 () Bool)

(assert (= bs!1276457 (and d!1751600 d!1751318)))

(assert (=> bs!1276457 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296549 lambda!296493))))

(assert (=> d!1751600 true))

(assert (=> d!1751600 (= (derivationStepZipper!1618 lt!2247532 (head!11829 s!2326)) (flatMap!1126 lt!2247532 lambda!296549))))

(declare-fun bs!1276458 () Bool)

(assert (= bs!1276458 d!1751600))

(declare-fun m!6529984 () Bool)

(assert (=> bs!1276458 m!6529984))

(assert (=> b!5527054 d!1751600))

(declare-fun d!1751602 () Bool)

(assert (=> d!1751602 (= (head!11829 s!2326) (h!69164 s!2326))))

(assert (=> b!5527054 d!1751602))

(declare-fun d!1751604 () Bool)

(assert (=> d!1751604 (= (tail!10924 s!2326) (t!376095 s!2326))))

(assert (=> b!5527054 d!1751604))

(declare-fun bm!410233 () Bool)

(declare-fun call!410243 () List!62838)

(declare-fun call!410241 () List!62838)

(assert (=> bm!410233 (= call!410243 call!410241)))

(declare-fun b!5527876 () Bool)

(declare-fun e!3417347 () (InoxSet Context!9794))

(declare-fun e!3417350 () (InoxSet Context!9794))

(assert (=> b!5527876 (= e!3417347 e!3417350)))

(declare-fun c!967198 () Bool)

(assert (=> b!5527876 (= c!967198 ((_ is Union!15513) (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun d!1751608 () Bool)

(declare-fun c!967200 () Bool)

(assert (=> d!1751608 (= c!967200 (and ((_ is ElementMatch!15513) (h!69162 (exprs!5397 (h!69163 zl!343)))) (= (c!966767 (h!69162 (exprs!5397 (h!69163 zl!343)))) (h!69164 s!2326))))))

(assert (=> d!1751608 (= (derivationStepZipperDown!855 (h!69162 (exprs!5397 (h!69163 zl!343))) (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) (h!69164 s!2326)) e!3417347)))

(declare-fun b!5527877 () Bool)

(assert (=> b!5527877 (= e!3417347 (store ((as const (Array Context!9794 Bool)) false) (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) true))))

(declare-fun bm!410234 () Bool)

(declare-fun call!410242 () (InoxSet Context!9794))

(declare-fun call!410240 () (InoxSet Context!9794))

(assert (=> bm!410234 (= call!410242 call!410240)))

(declare-fun b!5527878 () Bool)

(declare-fun e!3417352 () (InoxSet Context!9794))

(declare-fun e!3417348 () (InoxSet Context!9794))

(assert (=> b!5527878 (= e!3417352 e!3417348)))

(declare-fun c!967201 () Bool)

(assert (=> b!5527878 (= c!967201 ((_ is Concat!24358) (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5527879 () Bool)

(declare-fun e!3417349 () (InoxSet Context!9794))

(declare-fun call!410238 () (InoxSet Context!9794))

(assert (=> b!5527879 (= e!3417349 call!410238)))

(declare-fun b!5527880 () Bool)

(declare-fun c!967197 () Bool)

(assert (=> b!5527880 (= c!967197 ((_ is Star!15513) (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(assert (=> b!5527880 (= e!3417348 e!3417349)))

(declare-fun b!5527881 () Bool)

(declare-fun c!967199 () Bool)

(declare-fun e!3417351 () Bool)

(assert (=> b!5527881 (= c!967199 e!3417351)))

(declare-fun res!2353850 () Bool)

(assert (=> b!5527881 (=> (not res!2353850) (not e!3417351))))

(assert (=> b!5527881 (= res!2353850 ((_ is Concat!24358) (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(assert (=> b!5527881 (= e!3417350 e!3417352)))

(declare-fun b!5527882 () Bool)

(assert (=> b!5527882 (= e!3417349 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410235 () Bool)

(assert (=> bm!410235 (= call!410238 call!410242)))

(declare-fun bm!410236 () Bool)

(assert (=> bm!410236 (= call!410241 ($colon$colon!1592 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343))))) (ite (or c!967199 c!967201) (regTwo!31538 (h!69162 (exprs!5397 (h!69163 zl!343)))) (h!69162 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5527883 () Bool)

(assert (=> b!5527883 (= e!3417348 call!410238)))

(declare-fun b!5527884 () Bool)

(declare-fun call!410239 () (InoxSet Context!9794))

(assert (=> b!5527884 (= e!3417352 ((_ map or) call!410239 call!410242))))

(declare-fun bm!410237 () Bool)

(assert (=> bm!410237 (= call!410239 (derivationStepZipperDown!855 (ite c!967198 (regTwo!31539 (h!69162 (exprs!5397 (h!69163 zl!343)))) (regOne!31538 (h!69162 (exprs!5397 (h!69163 zl!343))))) (ite c!967198 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) (Context!9795 call!410241)) (h!69164 s!2326)))))

(declare-fun bm!410238 () Bool)

(assert (=> bm!410238 (= call!410240 (derivationStepZipperDown!855 (ite c!967198 (regOne!31539 (h!69162 (exprs!5397 (h!69163 zl!343)))) (ite c!967199 (regTwo!31538 (h!69162 (exprs!5397 (h!69163 zl!343)))) (ite c!967201 (regOne!31538 (h!69162 (exprs!5397 (h!69163 zl!343)))) (reg!15842 (h!69162 (exprs!5397 (h!69163 zl!343))))))) (ite (or c!967198 c!967199) (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) (Context!9795 call!410243)) (h!69164 s!2326)))))

(declare-fun b!5527885 () Bool)

(assert (=> b!5527885 (= e!3417350 ((_ map or) call!410240 call!410239))))

(declare-fun b!5527886 () Bool)

(assert (=> b!5527886 (= e!3417351 (nullable!5547 (regOne!31538 (h!69162 (exprs!5397 (h!69163 zl!343))))))))

(assert (= (and d!1751608 c!967200) b!5527877))

(assert (= (and d!1751608 (not c!967200)) b!5527876))

(assert (= (and b!5527876 c!967198) b!5527885))

(assert (= (and b!5527876 (not c!967198)) b!5527881))

(assert (= (and b!5527881 res!2353850) b!5527886))

(assert (= (and b!5527881 c!967199) b!5527884))

(assert (= (and b!5527881 (not c!967199)) b!5527878))

(assert (= (and b!5527878 c!967201) b!5527883))

(assert (= (and b!5527878 (not c!967201)) b!5527880))

(assert (= (and b!5527880 c!967197) b!5527879))

(assert (= (and b!5527880 (not c!967197)) b!5527882))

(assert (= (or b!5527883 b!5527879) bm!410233))

(assert (= (or b!5527883 b!5527879) bm!410235))

(assert (= (or b!5527884 bm!410233) bm!410236))

(assert (= (or b!5527884 bm!410235) bm!410234))

(assert (= (or b!5527885 b!5527884) bm!410237))

(assert (= (or b!5527885 bm!410234) bm!410238))

(declare-fun m!6530010 () Bool)

(assert (=> b!5527877 m!6530010))

(declare-fun m!6530012 () Bool)

(assert (=> b!5527886 m!6530012))

(declare-fun m!6530016 () Bool)

(assert (=> bm!410238 m!6530016))

(declare-fun m!6530018 () Bool)

(assert (=> bm!410236 m!6530018))

(declare-fun m!6530020 () Bool)

(assert (=> bm!410237 m!6530020))

(assert (=> bm!410082 d!1751608))

(declare-fun b!5527889 () Bool)

(declare-fun e!3417357 () Bool)

(assert (=> b!5527889 (= e!3417357 (nullable!5547 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))))))

(declare-fun b!5527890 () Bool)

(declare-fun e!3417355 () (InoxSet Context!9794))

(declare-fun e!3417356 () (InoxSet Context!9794))

(assert (=> b!5527890 (= e!3417355 e!3417356)))

(declare-fun c!967202 () Bool)

(assert (=> b!5527890 (= c!967202 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(declare-fun b!5527891 () Bool)

(assert (=> b!5527891 (= e!3417356 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410239 () Bool)

(declare-fun call!410244 () (InoxSet Context!9794))

(assert (=> bm!410239 (= call!410244 (derivationStepZipperDown!855 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))) (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))) (h!69164 s!2326)))))

(declare-fun b!5527892 () Bool)

(assert (=> b!5527892 (= e!3417356 call!410244)))

(declare-fun d!1751614 () Bool)

(declare-fun c!967203 () Bool)

(assert (=> d!1751614 (= c!967203 e!3417357)))

(declare-fun res!2353853 () Bool)

(assert (=> d!1751614 (=> (not res!2353853) (not e!3417357))))

(assert (=> d!1751614 (= res!2353853 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(assert (=> d!1751614 (= (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 lt!2247538))) (h!69164 s!2326)) e!3417355)))

(declare-fun b!5527893 () Bool)

(assert (=> b!5527893 (= e!3417355 ((_ map or) call!410244 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))) (h!69164 s!2326))))))

(assert (= (and d!1751614 res!2353853) b!5527889))

(assert (= (and d!1751614 c!967203) b!5527893))

(assert (= (and d!1751614 (not c!967203)) b!5527890))

(assert (= (and b!5527890 c!967202) b!5527892))

(assert (= (and b!5527890 (not c!967202)) b!5527891))

(assert (= (or b!5527893 b!5527892) bm!410239))

(declare-fun m!6530026 () Bool)

(assert (=> b!5527889 m!6530026))

(declare-fun m!6530028 () Bool)

(assert (=> bm!410239 m!6530028))

(declare-fun m!6530030 () Bool)

(assert (=> b!5527893 m!6530030))

(assert (=> b!5526933 d!1751614))

(declare-fun d!1751618 () Bool)

(assert (=> d!1751618 true))

(declare-fun setRes!36769 () Bool)

(assert (=> d!1751618 setRes!36769))

(declare-fun condSetEmpty!36769 () Bool)

(declare-fun res!2353857 () (InoxSet Context!9794))

(assert (=> d!1751618 (= condSetEmpty!36769 (= res!2353857 ((as const (Array Context!9794 Bool)) false)))))

(assert (=> d!1751618 (= (choose!41994 lt!2247532 lambda!296389) res!2353857)))

(declare-fun setIsEmpty!36769 () Bool)

(assert (=> setIsEmpty!36769 setRes!36769))

(declare-fun setNonEmpty!36769 () Bool)

(declare-fun tp!1520689 () Bool)

(declare-fun setElem!36769 () Context!9794)

(declare-fun e!3417366 () Bool)

(assert (=> setNonEmpty!36769 (= setRes!36769 (and tp!1520689 (inv!82029 setElem!36769) e!3417366))))

(declare-fun setRest!36769 () (InoxSet Context!9794))

(assert (=> setNonEmpty!36769 (= res!2353857 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) setElem!36769 true) setRest!36769))))

(declare-fun b!5527907 () Bool)

(declare-fun tp!1520688 () Bool)

(assert (=> b!5527907 (= e!3417366 tp!1520688)))

(assert (= (and d!1751618 condSetEmpty!36769) setIsEmpty!36769))

(assert (= (and d!1751618 (not condSetEmpty!36769)) setNonEmpty!36769))

(assert (= setNonEmpty!36769 b!5527907))

(declare-fun m!6530034 () Bool)

(assert (=> setNonEmpty!36769 m!6530034))

(assert (=> d!1751284 d!1751618))

(assert (=> bs!1276073 d!1751282))

(declare-fun d!1751626 () Bool)

(declare-fun res!2353862 () Bool)

(declare-fun e!3417371 () Bool)

(assert (=> d!1751626 (=> res!2353862 e!3417371)))

(assert (=> d!1751626 (= res!2353862 ((_ is Nil!62715) (Cons!62715 lt!2247538 Nil!62715)))))

(assert (=> d!1751626 (= (forall!14691 (Cons!62715 lt!2247538 Nil!62715) lambda!296467) e!3417371)))

(declare-fun b!5527912 () Bool)

(declare-fun e!3417372 () Bool)

(assert (=> b!5527912 (= e!3417371 e!3417372)))

(declare-fun res!2353863 () Bool)

(assert (=> b!5527912 (=> (not res!2353863) (not e!3417372))))

(declare-fun dynLambda!24518 (Int Context!9794) Bool)

(assert (=> b!5527912 (= res!2353863 (dynLambda!24518 lambda!296467 (h!69163 (Cons!62715 lt!2247538 Nil!62715))))))

(declare-fun b!5527913 () Bool)

(assert (=> b!5527913 (= e!3417372 (forall!14691 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lambda!296467))))

(assert (= (and d!1751626 (not res!2353862)) b!5527912))

(assert (= (and b!5527912 res!2353863) b!5527913))

(declare-fun b_lambda!209713 () Bool)

(assert (=> (not b_lambda!209713) (not b!5527912)))

(declare-fun m!6530046 () Bool)

(assert (=> b!5527912 m!6530046))

(declare-fun m!6530048 () Bool)

(assert (=> b!5527913 m!6530048))

(assert (=> b!5526963 d!1751626))

(declare-fun d!1751630 () Bool)

(assert (=> d!1751630 (= (Exists!2613 (ite c!966939 lambda!296472 lambda!296473)) (choose!41996 (ite c!966939 lambda!296472 lambda!296473)))))

(declare-fun bs!1276492 () Bool)

(assert (= bs!1276492 d!1751630))

(declare-fun m!6530050 () Bool)

(assert (=> bs!1276492 m!6530050))

(assert (=> bm!410055 d!1751630))

(declare-fun bs!1276515 () Bool)

(declare-fun d!1751632 () Bool)

(assert (= bs!1276515 (and d!1751632 b!5526956)))

(declare-fun lambda!296555 () Int)

(assert (=> bs!1276515 (not (= lambda!296555 lambda!296463))))

(declare-fun bs!1276516 () Bool)

(assert (= bs!1276516 (and d!1751632 b!5526958)))

(assert (=> bs!1276516 (not (= lambda!296555 lambda!296464))))

(declare-fun bs!1276518 () Bool)

(assert (= bs!1276518 (and d!1751632 b!5526961)))

(assert (=> bs!1276518 (not (= lambda!296555 lambda!296466))))

(declare-fun bs!1276520 () Bool)

(assert (= bs!1276520 (and d!1751632 b!5526963)))

(assert (=> bs!1276520 (not (= lambda!296555 lambda!296467))))

(declare-fun exists!2147 ((InoxSet Context!9794) Int) Bool)

(assert (=> d!1751632 (= (nullableZipper!1539 lt!2247554) (exists!2147 lt!2247554 lambda!296555))))

(declare-fun bs!1276524 () Bool)

(assert (= bs!1276524 d!1751632))

(declare-fun m!6530056 () Bool)

(assert (=> bs!1276524 m!6530056))

(assert (=> b!5527231 d!1751632))

(declare-fun d!1751638 () Bool)

(declare-fun c!967212 () Bool)

(assert (=> d!1751638 (= c!967212 (isEmpty!34505 (tail!10924 (t!376095 s!2326))))))

(declare-fun e!3417375 () Bool)

(assert (=> d!1751638 (= (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))) e!3417375)))

(declare-fun b!5527917 () Bool)

(assert (=> b!5527917 (= e!3417375 (nullableZipper!1539 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (head!11829 (t!376095 s!2326)))))))

(declare-fun b!5527918 () Bool)

(assert (=> b!5527918 (= e!3417375 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (head!11829 (tail!10924 (t!376095 s!2326)))) (tail!10924 (tail!10924 (t!376095 s!2326)))))))

(assert (= (and d!1751638 c!967212) b!5527917))

(assert (= (and d!1751638 (not c!967212)) b!5527918))

(assert (=> d!1751638 m!6529216))

(declare-fun m!6530058 () Bool)

(assert (=> d!1751638 m!6530058))

(assert (=> b!5527917 m!6529214))

(declare-fun m!6530060 () Bool)

(assert (=> b!5527917 m!6530060))

(assert (=> b!5527918 m!6529216))

(declare-fun m!6530062 () Bool)

(assert (=> b!5527918 m!6530062))

(assert (=> b!5527918 m!6529214))

(assert (=> b!5527918 m!6530062))

(declare-fun m!6530064 () Bool)

(assert (=> b!5527918 m!6530064))

(assert (=> b!5527918 m!6529216))

(declare-fun m!6530066 () Bool)

(assert (=> b!5527918 m!6530066))

(assert (=> b!5527918 m!6530064))

(assert (=> b!5527918 m!6530066))

(declare-fun m!6530068 () Bool)

(assert (=> b!5527918 m!6530068))

(assert (=> b!5527056 d!1751638))

(declare-fun bs!1276540 () Bool)

(declare-fun d!1751640 () Bool)

(assert (= bs!1276540 (and d!1751640 d!1751318)))

(declare-fun lambda!296557 () Int)

(assert (=> bs!1276540 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296557 lambda!296493))))

(declare-fun bs!1276542 () Bool)

(assert (= bs!1276542 (and d!1751640 d!1751268)))

(assert (=> bs!1276542 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296557 lambda!296474))))

(declare-fun bs!1276544 () Bool)

(assert (= bs!1276544 (and d!1751640 d!1751246)))

(assert (=> bs!1276544 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296557 lambda!296447))))

(declare-fun bs!1276545 () Bool)

(assert (= bs!1276545 (and d!1751640 d!1751600)))

(assert (=> bs!1276545 (= (= (head!11829 (t!376095 s!2326)) (head!11829 s!2326)) (= lambda!296557 lambda!296549))))

(declare-fun bs!1276546 () Bool)

(assert (= bs!1276546 (and d!1751640 b!5526445)))

(assert (=> bs!1276546 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296557 lambda!296389))))

(assert (=> d!1751640 true))

(assert (=> d!1751640 (= (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (flatMap!1126 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) lambda!296557))))

(declare-fun bs!1276547 () Bool)

(assert (= bs!1276547 d!1751640))

(assert (=> bs!1276547 m!6528766))

(declare-fun m!6530070 () Bool)

(assert (=> bs!1276547 m!6530070))

(assert (=> b!5527056 d!1751640))

(declare-fun d!1751642 () Bool)

(assert (=> d!1751642 (= (head!11829 (t!376095 s!2326)) (h!69164 (t!376095 s!2326)))))

(assert (=> b!5527056 d!1751642))

(declare-fun d!1751644 () Bool)

(assert (=> d!1751644 (= (tail!10924 (t!376095 s!2326)) (t!376095 (t!376095 s!2326)))))

(assert (=> b!5527056 d!1751644))

(declare-fun b!5527919 () Bool)

(declare-fun e!3417378 () Bool)

(declare-fun call!410251 () Bool)

(assert (=> b!5527919 (= e!3417378 call!410251)))

(declare-fun b!5527920 () Bool)

(declare-fun res!2353868 () Bool)

(declare-fun e!3417380 () Bool)

(assert (=> b!5527920 (=> res!2353868 e!3417380)))

(assert (=> b!5527920 (= res!2353868 (not ((_ is Concat!24358) (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292)))))))

(declare-fun e!3417377 () Bool)

(assert (=> b!5527920 (= e!3417377 e!3417380)))

(declare-fun b!5527921 () Bool)

(declare-fun e!3417376 () Bool)

(assert (=> b!5527921 (= e!3417376 call!410251)))

(declare-fun b!5527922 () Bool)

(declare-fun e!3417382 () Bool)

(declare-fun call!410253 () Bool)

(assert (=> b!5527922 (= e!3417382 call!410253)))

(declare-fun bm!410247 () Bool)

(declare-fun call!410252 () Bool)

(assert (=> bm!410247 (= call!410252 call!410253)))

(declare-fun b!5527923 () Bool)

(declare-fun e!3417379 () Bool)

(assert (=> b!5527923 (= e!3417379 e!3417382)))

(declare-fun res!2353866 () Bool)

(assert (=> b!5527923 (= res!2353866 (not (nullable!5547 (reg!15842 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))))))))

(assert (=> b!5527923 (=> (not res!2353866) (not e!3417382))))

(declare-fun b!5527924 () Bool)

(assert (=> b!5527924 (= e!3417379 e!3417377)))

(declare-fun c!967213 () Bool)

(assert (=> b!5527924 (= c!967213 ((_ is Union!15513) (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))))))

(declare-fun d!1751646 () Bool)

(declare-fun res!2353867 () Bool)

(declare-fun e!3417381 () Bool)

(assert (=> d!1751646 (=> res!2353867 e!3417381)))

(assert (=> d!1751646 (= res!2353867 ((_ is ElementMatch!15513) (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))))))

(assert (=> d!1751646 (= (validRegex!7249 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))) e!3417381)))

(declare-fun c!967214 () Bool)

(declare-fun bm!410246 () Bool)

(assert (=> bm!410246 (= call!410253 (validRegex!7249 (ite c!967214 (reg!15842 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))) (ite c!967213 (regOne!31539 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))) (regOne!31538 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292)))))))))

(declare-fun b!5527925 () Bool)

(assert (=> b!5527925 (= e!3417380 e!3417378)))

(declare-fun res!2353869 () Bool)

(assert (=> b!5527925 (=> (not res!2353869) (not e!3417378))))

(assert (=> b!5527925 (= res!2353869 call!410252)))

(declare-fun b!5527926 () Bool)

(declare-fun res!2353865 () Bool)

(assert (=> b!5527926 (=> (not res!2353865) (not e!3417376))))

(assert (=> b!5527926 (= res!2353865 call!410252)))

(assert (=> b!5527926 (= e!3417377 e!3417376)))

(declare-fun b!5527927 () Bool)

(assert (=> b!5527927 (= e!3417381 e!3417379)))

(assert (=> b!5527927 (= c!967214 ((_ is Star!15513) (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))))))

(declare-fun bm!410248 () Bool)

(assert (=> bm!410248 (= call!410251 (validRegex!7249 (ite c!967213 (regTwo!31539 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))) (regTwo!31538 (ite c!967008 (regTwo!31539 r!7292) (regTwo!31538 r!7292))))))))

(assert (= (and d!1751646 (not res!2353867)) b!5527927))

(assert (= (and b!5527927 c!967214) b!5527923))

(assert (= (and b!5527927 (not c!967214)) b!5527924))

(assert (= (and b!5527923 res!2353866) b!5527922))

(assert (= (and b!5527924 c!967213) b!5527926))

(assert (= (and b!5527924 (not c!967213)) b!5527920))

(assert (= (and b!5527926 res!2353865) b!5527921))

(assert (= (and b!5527920 (not res!2353868)) b!5527925))

(assert (= (and b!5527925 res!2353869) b!5527919))

(assert (= (or b!5527921 b!5527919) bm!410248))

(assert (= (or b!5527926 b!5527925) bm!410247))

(assert (= (or b!5527922 bm!410247) bm!410246))

(declare-fun m!6530084 () Bool)

(assert (=> b!5527923 m!6530084))

(declare-fun m!6530086 () Bool)

(assert (=> bm!410246 m!6530086))

(declare-fun m!6530088 () Bool)

(assert (=> bm!410248 m!6530088))

(assert (=> bm!410081 d!1751646))

(declare-fun b!5527945 () Bool)

(declare-fun e!3417397 () Bool)

(declare-fun lt!2247773 () Int)

(declare-fun call!410265 () Int)

(assert (=> b!5527945 (= e!3417397 (> lt!2247773 call!410265))))

(declare-fun b!5527946 () Bool)

(declare-fun e!3417401 () Bool)

(declare-fun call!410262 () Int)

(assert (=> b!5527946 (= e!3417401 (> lt!2247773 call!410262))))

(declare-fun b!5527947 () Bool)

(declare-fun e!3417396 () Int)

(assert (=> b!5527947 (= e!3417396 1)))

(declare-fun b!5527948 () Bool)

(declare-fun e!3417395 () Bool)

(declare-fun call!410266 () Int)

(assert (=> b!5527948 (= e!3417395 (> lt!2247773 call!410266))))

(declare-fun b!5527949 () Bool)

(assert (=> b!5527949 (= e!3417397 (= lt!2247773 1))))

(declare-fun b!5527950 () Bool)

(declare-fun e!3417398 () Bool)

(declare-fun e!3417394 () Bool)

(assert (=> b!5527950 (= e!3417398 e!3417394)))

(declare-fun c!967225 () Bool)

(assert (=> b!5527950 (= c!967225 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5527951 () Bool)

(declare-fun e!3417399 () Bool)

(assert (=> b!5527951 (= e!3417399 e!3417398)))

(declare-fun c!967222 () Bool)

(assert (=> b!5527951 (= c!967222 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5527952 () Bool)

(assert (=> b!5527952 (= e!3417398 e!3417401)))

(declare-fun res!2353874 () Bool)

(assert (=> b!5527952 (= res!2353874 (> lt!2247773 call!410266))))

(assert (=> b!5527952 (=> (not res!2353874) (not e!3417401))))

(declare-fun b!5527953 () Bool)

(declare-fun c!967226 () Bool)

(assert (=> b!5527953 (= c!967226 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun e!3417400 () Int)

(declare-fun e!3417393 () Int)

(assert (=> b!5527953 (= e!3417400 e!3417393)))

(declare-fun b!5527954 () Bool)

(declare-fun c!967224 () Bool)

(assert (=> b!5527954 (= c!967224 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247538))))))

(assert (=> b!5527954 (= e!3417394 e!3417397)))

(declare-fun b!5527955 () Bool)

(declare-fun e!3417402 () Int)

(declare-fun call!410267 () Int)

(assert (=> b!5527955 (= e!3417402 (+ 1 call!410267))))

(declare-fun bm!410256 () Bool)

(declare-fun c!967228 () Bool)

(declare-fun call!410264 () Int)

(assert (=> bm!410256 (= call!410264 (regexDepth!213 (ite c!967228 (reg!15842 (h!69162 (exprs!5397 lt!2247538))) (ite c!967226 (regTwo!31539 (h!69162 (exprs!5397 lt!2247538))) (regOne!31538 (h!69162 (exprs!5397 lt!2247538)))))))))

(declare-fun b!5527956 () Bool)

(assert (=> b!5527956 (= e!3417393 e!3417402)))

(declare-fun c!967227 () Bool)

(assert (=> b!5527956 (= c!967227 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5527957 () Bool)

(declare-fun res!2353875 () Bool)

(assert (=> b!5527957 (=> (not res!2353875) (not e!3417395))))

(assert (=> b!5527957 (= res!2353875 (> lt!2247773 call!410265))))

(assert (=> b!5527957 (= e!3417394 e!3417395)))

(declare-fun d!1751650 () Bool)

(assert (=> d!1751650 e!3417399))

(declare-fun res!2353873 () Bool)

(assert (=> d!1751650 (=> (not res!2353873) (not e!3417399))))

(assert (=> d!1751650 (= res!2353873 (> lt!2247773 0))))

(assert (=> d!1751650 (= lt!2247773 e!3417396)))

(declare-fun c!967223 () Bool)

(assert (=> d!1751650 (= c!967223 ((_ is ElementMatch!15513) (h!69162 (exprs!5397 lt!2247538))))))

(assert (=> d!1751650 (= (regexDepth!213 (h!69162 (exprs!5397 lt!2247538))) lt!2247773)))

(declare-fun bm!410257 () Bool)

(assert (=> bm!410257 (= call!410266 (regexDepth!213 (ite c!967222 (regOne!31539 (h!69162 (exprs!5397 lt!2247538))) (regTwo!31538 (h!69162 (exprs!5397 lt!2247538))))))))

(declare-fun bm!410258 () Bool)

(assert (=> bm!410258 (= call!410265 call!410262)))

(declare-fun b!5527958 () Bool)

(assert (=> b!5527958 (= e!3417396 e!3417400)))

(assert (=> b!5527958 (= c!967228 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5527959 () Bool)

(assert (=> b!5527959 (= e!3417400 (+ 1 call!410264))))

(declare-fun call!410261 () Int)

(declare-fun bm!410259 () Bool)

(declare-fun call!410263 () Int)

(assert (=> bm!410259 (= call!410267 (maxBigInt!0 (ite c!967226 call!410263 call!410261) (ite c!967226 call!410261 call!410263)))))

(declare-fun bm!410260 () Bool)

(assert (=> bm!410260 (= call!410261 call!410264)))

(declare-fun b!5527960 () Bool)

(assert (=> b!5527960 (= e!3417393 (+ 1 call!410267))))

(declare-fun bm!410261 () Bool)

(assert (=> bm!410261 (= call!410262 (regexDepth!213 (ite c!967222 (regTwo!31539 (h!69162 (exprs!5397 lt!2247538))) (ite c!967225 (regOne!31538 (h!69162 (exprs!5397 lt!2247538))) (reg!15842 (h!69162 (exprs!5397 lt!2247538)))))))))

(declare-fun b!5527961 () Bool)

(assert (=> b!5527961 (= e!3417402 1)))

(declare-fun bm!410262 () Bool)

(assert (=> bm!410262 (= call!410263 (regexDepth!213 (ite c!967226 (regOne!31539 (h!69162 (exprs!5397 lt!2247538))) (regTwo!31538 (h!69162 (exprs!5397 lt!2247538))))))))

(assert (= (and d!1751650 c!967223) b!5527947))

(assert (= (and d!1751650 (not c!967223)) b!5527958))

(assert (= (and b!5527958 c!967228) b!5527959))

(assert (= (and b!5527958 (not c!967228)) b!5527953))

(assert (= (and b!5527953 c!967226) b!5527960))

(assert (= (and b!5527953 (not c!967226)) b!5527956))

(assert (= (and b!5527956 c!967227) b!5527955))

(assert (= (and b!5527956 (not c!967227)) b!5527961))

(assert (= (or b!5527960 b!5527955) bm!410260))

(assert (= (or b!5527960 b!5527955) bm!410262))

(assert (= (or b!5527960 b!5527955) bm!410259))

(assert (= (or b!5527959 bm!410260) bm!410256))

(assert (= (and d!1751650 res!2353873) b!5527951))

(assert (= (and b!5527951 c!967222) b!5527952))

(assert (= (and b!5527951 (not c!967222)) b!5527950))

(assert (= (and b!5527952 res!2353874) b!5527946))

(assert (= (and b!5527950 c!967225) b!5527957))

(assert (= (and b!5527950 (not c!967225)) b!5527954))

(assert (= (and b!5527957 res!2353875) b!5527948))

(assert (= (and b!5527954 c!967224) b!5527945))

(assert (= (and b!5527954 (not c!967224)) b!5527949))

(assert (= (or b!5527957 b!5527945) bm!410258))

(assert (= (or b!5527946 bm!410258) bm!410261))

(assert (= (or b!5527952 b!5527948) bm!410257))

(declare-fun m!6530100 () Bool)

(assert (=> bm!410257 m!6530100))

(declare-fun m!6530104 () Bool)

(assert (=> bm!410261 m!6530104))

(declare-fun m!6530108 () Bool)

(assert (=> bm!410256 m!6530108))

(declare-fun m!6530110 () Bool)

(assert (=> bm!410259 m!6530110))

(declare-fun m!6530112 () Bool)

(assert (=> bm!410262 m!6530112))

(assert (=> b!5526942 d!1751650))

(declare-fun bs!1276548 () Bool)

(declare-fun d!1751656 () Bool)

(assert (= bs!1276548 (and d!1751656 d!1751334)))

(declare-fun lambda!296558 () Int)

(assert (=> bs!1276548 (not (= lambda!296558 lambda!296499))))

(declare-fun bs!1276549 () Bool)

(assert (= bs!1276549 (and d!1751656 b!5526942)))

(assert (=> bs!1276549 (= lambda!296558 lambda!296452)))

(declare-fun bs!1276550 () Bool)

(assert (= bs!1276550 (and d!1751656 d!1751332)))

(assert (=> bs!1276550 (not (= lambda!296558 lambda!296498))))

(declare-fun bs!1276551 () Bool)

(assert (= bs!1276551 (and d!1751656 b!5527239)))

(assert (=> bs!1276551 (= (= lt!2247645 lt!2247712) (= lambda!296558 lambda!296494))))

(declare-fun bs!1276552 () Bool)

(assert (= bs!1276552 (and d!1751656 b!5527749)))

(assert (=> bs!1276552 (= (= lt!2247645 lt!2247757) (= lambda!296558 lambda!296535))))

(declare-fun bs!1276553 () Bool)

(assert (= bs!1276553 (and d!1751656 b!5526944)))

(assert (=> bs!1276553 (= (= lt!2247645 lt!2247644) (= lambda!296558 lambda!296453))))

(declare-fun bs!1276554 () Bool)

(assert (= bs!1276554 (and d!1751656 b!5527241)))

(assert (=> bs!1276554 (= (= lt!2247645 lt!2247711) (= lambda!296558 lambda!296495))))

(declare-fun bs!1276555 () Bool)

(assert (= bs!1276555 (and d!1751656 d!1751566)))

(assert (=> bs!1276555 (= (= lt!2247645 lt!2247649) (= lambda!296558 lambda!296541))))

(declare-fun bs!1276556 () Bool)

(assert (= bs!1276556 (and d!1751656 b!5527751)))

(assert (=> bs!1276556 (= (= lt!2247645 lt!2247756) (= lambda!296558 lambda!296536))))

(declare-fun bs!1276557 () Bool)

(assert (= bs!1276557 (and d!1751656 d!1751292)))

(assert (=> bs!1276557 (not (= lambda!296558 lambda!296483))))

(declare-fun bs!1276558 () Bool)

(assert (= bs!1276558 (and d!1751656 d!1751288)))

(assert (=> bs!1276558 (not (= lambda!296558 lambda!296477))))

(declare-fun bs!1276559 () Bool)

(assert (= bs!1276559 (and d!1751656 b!5526947)))

(assert (=> bs!1276559 (= (= lt!2247645 lt!2247649) (= lambda!296558 lambda!296454))))

(declare-fun bs!1276560 () Bool)

(assert (= bs!1276560 (and d!1751656 d!1751290)))

(assert (=> bs!1276560 (not (= lambda!296558 lambda!296480))))

(declare-fun bs!1276561 () Bool)

(assert (= bs!1276561 (and d!1751656 b!5526949)))

(assert (=> bs!1276561 (= (= lt!2247645 lt!2247648) (= lambda!296558 lambda!296455))))

(assert (=> d!1751656 true))

(assert (=> d!1751656 (forall!14690 (t!376093 (exprs!5397 lt!2247538)) lambda!296558)))

(declare-fun lt!2247775 () Unit!155486)

(assert (=> d!1751656 (= lt!2247775 (choose!42002 (t!376093 (exprs!5397 lt!2247538)) lt!2247645 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(assert (=> d!1751656 (>= lt!2247645 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))))

(assert (=> d!1751656 (= (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 lt!2247538)) lt!2247645 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))) lt!2247775)))

(declare-fun bs!1276562 () Bool)

(assert (= bs!1276562 d!1751656))

(declare-fun m!6530124 () Bool)

(assert (=> bs!1276562 m!6530124))

(assert (=> bs!1276562 m!6529136))

(declare-fun m!6530126 () Bool)

(assert (=> bs!1276562 m!6530126))

(assert (=> b!5526942 d!1751656))

(declare-fun bs!1276568 () Bool)

(declare-fun b!5527984 () Bool)

(assert (= bs!1276568 (and b!5527984 d!1751334)))

(declare-fun lambda!296560 () Int)

(assert (=> bs!1276568 (not (= lambda!296560 lambda!296499))))

(declare-fun bs!1276570 () Bool)

(assert (= bs!1276570 (and b!5527984 b!5526942)))

(declare-fun lt!2247781 () Int)

(assert (=> bs!1276570 (= (= lt!2247781 lt!2247645) (= lambda!296560 lambda!296452))))

(declare-fun bs!1276572 () Bool)

(assert (= bs!1276572 (and b!5527984 d!1751332)))

(assert (=> bs!1276572 (not (= lambda!296560 lambda!296498))))

(declare-fun bs!1276574 () Bool)

(assert (= bs!1276574 (and b!5527984 b!5527239)))

(assert (=> bs!1276574 (= (= lt!2247781 lt!2247712) (= lambda!296560 lambda!296494))))

(declare-fun bs!1276576 () Bool)

(assert (= bs!1276576 (and b!5527984 b!5526944)))

(assert (=> bs!1276576 (= (= lt!2247781 lt!2247644) (= lambda!296560 lambda!296453))))

(declare-fun bs!1276578 () Bool)

(assert (= bs!1276578 (and b!5527984 b!5527241)))

(assert (=> bs!1276578 (= (= lt!2247781 lt!2247711) (= lambda!296560 lambda!296495))))

(declare-fun bs!1276580 () Bool)

(assert (= bs!1276580 (and b!5527984 d!1751566)))

(assert (=> bs!1276580 (= (= lt!2247781 lt!2247649) (= lambda!296560 lambda!296541))))

(declare-fun bs!1276582 () Bool)

(assert (= bs!1276582 (and b!5527984 b!5527751)))

(assert (=> bs!1276582 (= (= lt!2247781 lt!2247756) (= lambda!296560 lambda!296536))))

(declare-fun bs!1276584 () Bool)

(assert (= bs!1276584 (and b!5527984 d!1751292)))

(assert (=> bs!1276584 (not (= lambda!296560 lambda!296483))))

(declare-fun bs!1276585 () Bool)

(assert (= bs!1276585 (and b!5527984 d!1751288)))

(assert (=> bs!1276585 (not (= lambda!296560 lambda!296477))))

(declare-fun bs!1276587 () Bool)

(assert (= bs!1276587 (and b!5527984 b!5526947)))

(assert (=> bs!1276587 (= (= lt!2247781 lt!2247649) (= lambda!296560 lambda!296454))))

(declare-fun bs!1276589 () Bool)

(assert (= bs!1276589 (and b!5527984 d!1751290)))

(assert (=> bs!1276589 (not (= lambda!296560 lambda!296480))))

(declare-fun bs!1276591 () Bool)

(assert (= bs!1276591 (and b!5527984 b!5526949)))

(assert (=> bs!1276591 (= (= lt!2247781 lt!2247648) (= lambda!296560 lambda!296455))))

(declare-fun bs!1276595 () Bool)

(assert (= bs!1276595 (and b!5527984 b!5527749)))

(assert (=> bs!1276595 (= (= lt!2247781 lt!2247757) (= lambda!296560 lambda!296535))))

(declare-fun bs!1276597 () Bool)

(assert (= bs!1276597 (and b!5527984 d!1751656)))

(assert (=> bs!1276597 (= (= lt!2247781 lt!2247645) (= lambda!296560 lambda!296558))))

(assert (=> b!5527984 true))

(declare-fun bs!1276601 () Bool)

(declare-fun b!5527986 () Bool)

(assert (= bs!1276601 (and b!5527986 d!1751334)))

(declare-fun lambda!296561 () Int)

(assert (=> bs!1276601 (not (= lambda!296561 lambda!296499))))

(declare-fun bs!1276602 () Bool)

(assert (= bs!1276602 (and b!5527986 b!5526942)))

(declare-fun lt!2247780 () Int)

(assert (=> bs!1276602 (= (= lt!2247780 lt!2247645) (= lambda!296561 lambda!296452))))

(declare-fun bs!1276603 () Bool)

(assert (= bs!1276603 (and b!5527986 d!1751332)))

(assert (=> bs!1276603 (not (= lambda!296561 lambda!296498))))

(declare-fun bs!1276604 () Bool)

(assert (= bs!1276604 (and b!5527986 b!5527239)))

(assert (=> bs!1276604 (= (= lt!2247780 lt!2247712) (= lambda!296561 lambda!296494))))

(declare-fun bs!1276606 () Bool)

(assert (= bs!1276606 (and b!5527986 b!5526944)))

(assert (=> bs!1276606 (= (= lt!2247780 lt!2247644) (= lambda!296561 lambda!296453))))

(declare-fun bs!1276608 () Bool)

(assert (= bs!1276608 (and b!5527986 b!5527241)))

(assert (=> bs!1276608 (= (= lt!2247780 lt!2247711) (= lambda!296561 lambda!296495))))

(declare-fun bs!1276610 () Bool)

(assert (= bs!1276610 (and b!5527986 d!1751566)))

(assert (=> bs!1276610 (= (= lt!2247780 lt!2247649) (= lambda!296561 lambda!296541))))

(declare-fun bs!1276612 () Bool)

(assert (= bs!1276612 (and b!5527986 b!5527751)))

(assert (=> bs!1276612 (= (= lt!2247780 lt!2247756) (= lambda!296561 lambda!296536))))

(declare-fun bs!1276614 () Bool)

(assert (= bs!1276614 (and b!5527986 b!5527984)))

(assert (=> bs!1276614 (= (= lt!2247780 lt!2247781) (= lambda!296561 lambda!296560))))

(declare-fun bs!1276616 () Bool)

(assert (= bs!1276616 (and b!5527986 d!1751292)))

(assert (=> bs!1276616 (not (= lambda!296561 lambda!296483))))

(declare-fun bs!1276618 () Bool)

(assert (= bs!1276618 (and b!5527986 d!1751288)))

(assert (=> bs!1276618 (not (= lambda!296561 lambda!296477))))

(declare-fun bs!1276620 () Bool)

(assert (= bs!1276620 (and b!5527986 b!5526947)))

(assert (=> bs!1276620 (= (= lt!2247780 lt!2247649) (= lambda!296561 lambda!296454))))

(declare-fun bs!1276622 () Bool)

(assert (= bs!1276622 (and b!5527986 d!1751290)))

(assert (=> bs!1276622 (not (= lambda!296561 lambda!296480))))

(declare-fun bs!1276624 () Bool)

(assert (= bs!1276624 (and b!5527986 b!5526949)))

(assert (=> bs!1276624 (= (= lt!2247780 lt!2247648) (= lambda!296561 lambda!296455))))

(declare-fun bs!1276626 () Bool)

(assert (= bs!1276626 (and b!5527986 b!5527749)))

(assert (=> bs!1276626 (= (= lt!2247780 lt!2247757) (= lambda!296561 lambda!296535))))

(declare-fun bs!1276628 () Bool)

(assert (= bs!1276628 (and b!5527986 d!1751656)))

(assert (=> bs!1276628 (= (= lt!2247780 lt!2247645) (= lambda!296561 lambda!296558))))

(assert (=> b!5527986 true))

(declare-fun d!1751660 () Bool)

(declare-fun e!3417417 () Bool)

(assert (=> d!1751660 e!3417417))

(declare-fun res!2353882 () Bool)

(assert (=> d!1751660 (=> (not res!2353882) (not e!3417417))))

(assert (=> d!1751660 (= res!2353882 (>= lt!2247780 0))))

(declare-fun e!3417418 () Int)

(assert (=> d!1751660 (= lt!2247780 e!3417418)))

(declare-fun c!967237 () Bool)

(assert (=> d!1751660 (= c!967237 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(assert (=> d!1751660 (= (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))) lt!2247780)))

(assert (=> b!5527984 (= e!3417418 lt!2247781)))

(assert (=> b!5527984 (= lt!2247781 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))))))))

(declare-fun lt!2247782 () Unit!155486)

(assert (=> b!5527984 (= lt!2247782 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))) lt!2247781 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))))))))))

(assert (=> b!5527984 (forall!14690 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))) lambda!296560)))

(declare-fun lt!2247783 () Unit!155486)

(assert (=> b!5527984 (= lt!2247783 lt!2247782)))

(declare-fun b!5527985 () Bool)

(assert (=> b!5527985 (= e!3417418 0)))

(assert (=> b!5527986 (= e!3417417 (forall!14690 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))) lambda!296561))))

(assert (= (and d!1751660 c!967237) b!5527984))

(assert (= (and d!1751660 (not c!967237)) b!5527985))

(assert (= (and d!1751660 res!2353882) b!5527986))

(declare-fun m!6530128 () Bool)

(assert (=> b!5527984 m!6530128))

(declare-fun m!6530130 () Bool)

(assert (=> b!5527984 m!6530130))

(declare-fun m!6530132 () Bool)

(assert (=> b!5527984 m!6530132))

(assert (=> b!5527984 m!6530128))

(assert (=> b!5527984 m!6530132))

(declare-fun m!6530134 () Bool)

(assert (=> b!5527984 m!6530134))

(assert (=> b!5527984 m!6530132))

(declare-fun m!6530136 () Bool)

(assert (=> b!5527984 m!6530136))

(declare-fun m!6530138 () Bool)

(assert (=> b!5527986 m!6530138))

(assert (=> b!5526942 d!1751660))

(declare-fun d!1751662 () Bool)

(declare-fun res!2353883 () Bool)

(declare-fun e!3417419 () Bool)

(assert (=> d!1751662 (=> res!2353883 e!3417419)))

(assert (=> d!1751662 (= res!2353883 ((_ is Nil!62714) (t!376093 (exprs!5397 lt!2247538))))))

(assert (=> d!1751662 (= (forall!14690 (t!376093 (exprs!5397 lt!2247538)) lambda!296452) e!3417419)))

(declare-fun b!5527987 () Bool)

(declare-fun e!3417420 () Bool)

(assert (=> b!5527987 (= e!3417419 e!3417420)))

(declare-fun res!2353884 () Bool)

(assert (=> b!5527987 (=> (not res!2353884) (not e!3417420))))

(assert (=> b!5527987 (= res!2353884 (dynLambda!24517 lambda!296452 (h!69162 (t!376093 (exprs!5397 lt!2247538)))))))

(declare-fun b!5527988 () Bool)

(assert (=> b!5527988 (= e!3417420 (forall!14690 (t!376093 (t!376093 (exprs!5397 lt!2247538))) lambda!296452))))

(assert (= (and d!1751662 (not res!2353883)) b!5527987))

(assert (= (and b!5527987 res!2353884) b!5527988))

(declare-fun b_lambda!209717 () Bool)

(assert (=> (not b_lambda!209717) (not b!5527987)))

(declare-fun m!6530140 () Bool)

(assert (=> b!5527987 m!6530140))

(declare-fun m!6530142 () Bool)

(assert (=> b!5527988 m!6530142))

(assert (=> b!5526942 d!1751662))

(declare-fun d!1751664 () Bool)

(assert (=> d!1751664 (= (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 lt!2247538))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))) (ite (>= (regexDepth!213 (h!69162 (exprs!5397 lt!2247538))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))) (regexDepth!213 (h!69162 (exprs!5397 lt!2247538))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247538))))))))

(assert (=> b!5526942 d!1751664))

(declare-fun b!5527989 () Bool)

(declare-fun res!2353887 () Bool)

(declare-fun e!3417424 () Bool)

(assert (=> b!5527989 (=> res!2353887 e!3417424)))

(assert (=> b!5527989 (= res!2353887 (not (isEmpty!34505 (tail!10924 s!2326))))))

(declare-fun b!5527990 () Bool)

(declare-fun e!3417422 () Bool)

(declare-fun e!3417427 () Bool)

(assert (=> b!5527990 (= e!3417422 e!3417427)))

(declare-fun res!2353890 () Bool)

(assert (=> b!5527990 (=> (not res!2353890) (not e!3417427))))

(declare-fun lt!2247784 () Bool)

(assert (=> b!5527990 (= res!2353890 (not lt!2247784))))

(declare-fun b!5527991 () Bool)

(declare-fun e!3417421 () Bool)

(assert (=> b!5527991 (= e!3417421 (= (head!11829 s!2326) (c!966767 (regTwo!31538 r!7292))))))

(declare-fun b!5527992 () Bool)

(declare-fun res!2353891 () Bool)

(assert (=> b!5527992 (=> res!2353891 e!3417422)))

(assert (=> b!5527992 (= res!2353891 (not ((_ is ElementMatch!15513) (regTwo!31538 r!7292))))))

(declare-fun e!3417425 () Bool)

(assert (=> b!5527992 (= e!3417425 e!3417422)))

(declare-fun b!5527993 () Bool)

(assert (=> b!5527993 (= e!3417425 (not lt!2247784))))

(declare-fun b!5527994 () Bool)

(assert (=> b!5527994 (= e!3417424 (not (= (head!11829 s!2326) (c!966767 (regTwo!31538 r!7292)))))))

(declare-fun b!5527995 () Bool)

(declare-fun e!3417423 () Bool)

(declare-fun call!410275 () Bool)

(assert (=> b!5527995 (= e!3417423 (= lt!2247784 call!410275))))

(declare-fun b!5527996 () Bool)

(declare-fun res!2353885 () Bool)

(assert (=> b!5527996 (=> (not res!2353885) (not e!3417421))))

(assert (=> b!5527996 (= res!2353885 (not call!410275))))

(declare-fun b!5527997 () Bool)

(declare-fun res!2353889 () Bool)

(assert (=> b!5527997 (=> res!2353889 e!3417422)))

(assert (=> b!5527997 (= res!2353889 e!3417421)))

(declare-fun res!2353888 () Bool)

(assert (=> b!5527997 (=> (not res!2353888) (not e!3417421))))

(assert (=> b!5527997 (= res!2353888 lt!2247784)))

(declare-fun b!5527998 () Bool)

(declare-fun e!3417426 () Bool)

(assert (=> b!5527998 (= e!3417426 (nullable!5547 (regTwo!31538 r!7292)))))

(declare-fun b!5527999 () Bool)

(assert (=> b!5527999 (= e!3417423 e!3417425)))

(declare-fun c!967238 () Bool)

(assert (=> b!5527999 (= c!967238 ((_ is EmptyLang!15513) (regTwo!31538 r!7292)))))

(declare-fun bm!410270 () Bool)

(assert (=> bm!410270 (= call!410275 (isEmpty!34505 s!2326))))

(declare-fun b!5528000 () Bool)

(declare-fun res!2353892 () Bool)

(assert (=> b!5528000 (=> (not res!2353892) (not e!3417421))))

(assert (=> b!5528000 (= res!2353892 (isEmpty!34505 (tail!10924 s!2326)))))

(declare-fun d!1751666 () Bool)

(assert (=> d!1751666 e!3417423))

(declare-fun c!967239 () Bool)

(assert (=> d!1751666 (= c!967239 ((_ is EmptyExpr!15513) (regTwo!31538 r!7292)))))

(assert (=> d!1751666 (= lt!2247784 e!3417426)))

(declare-fun c!967240 () Bool)

(assert (=> d!1751666 (= c!967240 (isEmpty!34505 s!2326))))

(assert (=> d!1751666 (validRegex!7249 (regTwo!31538 r!7292))))

(assert (=> d!1751666 (= (matchR!7698 (regTwo!31538 r!7292) s!2326) lt!2247784)))

(declare-fun b!5528001 () Bool)

(assert (=> b!5528001 (= e!3417426 (matchR!7698 (derivativeStep!4378 (regTwo!31538 r!7292) (head!11829 s!2326)) (tail!10924 s!2326)))))

(declare-fun b!5528002 () Bool)

(assert (=> b!5528002 (= e!3417427 e!3417424)))

(declare-fun res!2353886 () Bool)

(assert (=> b!5528002 (=> res!2353886 e!3417424)))

(assert (=> b!5528002 (= res!2353886 call!410275)))

(assert (= (and d!1751666 c!967240) b!5527998))

(assert (= (and d!1751666 (not c!967240)) b!5528001))

(assert (= (and d!1751666 c!967239) b!5527995))

(assert (= (and d!1751666 (not c!967239)) b!5527999))

(assert (= (and b!5527999 c!967238) b!5527993))

(assert (= (and b!5527999 (not c!967238)) b!5527992))

(assert (= (and b!5527992 (not res!2353891)) b!5527997))

(assert (= (and b!5527997 res!2353888) b!5527996))

(assert (= (and b!5527996 res!2353885) b!5528000))

(assert (= (and b!5528000 res!2353892) b!5527991))

(assert (= (and b!5527997 (not res!2353889)) b!5527990))

(assert (= (and b!5527990 res!2353890) b!5528002))

(assert (= (and b!5528002 (not res!2353886)) b!5527989))

(assert (= (and b!5527989 (not res!2353887)) b!5527994))

(assert (= (or b!5527995 b!5527996 b!5528002) bm!410270))

(assert (=> bm!410270 m!6529180))

(assert (=> b!5527989 m!6529188))

(assert (=> b!5527989 m!6529188))

(assert (=> b!5527989 m!6529190))

(assert (=> b!5527994 m!6529192))

(assert (=> b!5527991 m!6529192))

(assert (=> b!5528001 m!6529192))

(assert (=> b!5528001 m!6529192))

(declare-fun m!6530160 () Bool)

(assert (=> b!5528001 m!6530160))

(assert (=> b!5528001 m!6529188))

(assert (=> b!5528001 m!6530160))

(assert (=> b!5528001 m!6529188))

(declare-fun m!6530162 () Bool)

(assert (=> b!5528001 m!6530162))

(assert (=> d!1751666 m!6529180))

(declare-fun m!6530164 () Bool)

(assert (=> d!1751666 m!6530164))

(declare-fun m!6530166 () Bool)

(assert (=> b!5527998 m!6530166))

(assert (=> b!5528000 m!6529188))

(assert (=> b!5528000 m!6529188))

(assert (=> b!5528000 m!6529190))

(assert (=> b!5527181 d!1751666))

(declare-fun d!1751674 () Bool)

(assert (=> d!1751674 (= (nullable!5547 (h!69162 (exprs!5397 lt!2247538))) (nullableFct!1671 (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun bs!1276647 () Bool)

(assert (= bs!1276647 d!1751674))

(declare-fun m!6530168 () Bool)

(assert (=> bs!1276647 m!6530168))

(assert (=> b!5526929 d!1751674))

(assert (=> b!5527040 d!1751602))

(declare-fun bm!410271 () Bool)

(declare-fun call!410281 () List!62838)

(declare-fun call!410279 () List!62838)

(assert (=> bm!410271 (= call!410281 call!410279)))

(declare-fun b!5528005 () Bool)

(declare-fun e!3417430 () (InoxSet Context!9794))

(declare-fun e!3417433 () (InoxSet Context!9794))

(assert (=> b!5528005 (= e!3417430 e!3417433)))

(declare-fun c!967242 () Bool)

(assert (=> b!5528005 (= c!967242 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun d!1751676 () Bool)

(declare-fun c!967244 () Bool)

(assert (=> d!1751676 (= c!967244 (and ((_ is ElementMatch!15513) (h!69162 (exprs!5397 lt!2247531))) (= (c!966767 (h!69162 (exprs!5397 lt!2247531))) (h!69164 s!2326))))))

(assert (=> d!1751676 (= (derivationStepZipperDown!855 (h!69162 (exprs!5397 lt!2247531)) (Context!9795 (t!376093 (exprs!5397 lt!2247531))) (h!69164 s!2326)) e!3417430)))

(declare-fun b!5528006 () Bool)

(assert (=> b!5528006 (= e!3417430 (store ((as const (Array Context!9794 Bool)) false) (Context!9795 (t!376093 (exprs!5397 lt!2247531))) true))))

(declare-fun bm!410272 () Bool)

(declare-fun call!410280 () (InoxSet Context!9794))

(declare-fun call!410278 () (InoxSet Context!9794))

(assert (=> bm!410272 (= call!410280 call!410278)))

(declare-fun b!5528007 () Bool)

(declare-fun e!3417435 () (InoxSet Context!9794))

(declare-fun e!3417431 () (InoxSet Context!9794))

(assert (=> b!5528007 (= e!3417435 e!3417431)))

(declare-fun c!967245 () Bool)

(assert (=> b!5528007 (= c!967245 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5528008 () Bool)

(declare-fun e!3417432 () (InoxSet Context!9794))

(declare-fun call!410276 () (InoxSet Context!9794))

(assert (=> b!5528008 (= e!3417432 call!410276)))

(declare-fun b!5528009 () Bool)

(declare-fun c!967241 () Bool)

(assert (=> b!5528009 (= c!967241 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247531))))))

(assert (=> b!5528009 (= e!3417431 e!3417432)))

(declare-fun b!5528010 () Bool)

(declare-fun c!967243 () Bool)

(declare-fun e!3417434 () Bool)

(assert (=> b!5528010 (= c!967243 e!3417434)))

(declare-fun res!2353895 () Bool)

(assert (=> b!5528010 (=> (not res!2353895) (not e!3417434))))

(assert (=> b!5528010 (= res!2353895 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247531))))))

(assert (=> b!5528010 (= e!3417433 e!3417435)))

(declare-fun b!5528011 () Bool)

(assert (=> b!5528011 (= e!3417432 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410273 () Bool)

(assert (=> bm!410273 (= call!410276 call!410280)))

(declare-fun bm!410274 () Bool)

(assert (=> bm!410274 (= call!410279 ($colon$colon!1592 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))) (ite (or c!967243 c!967245) (regTwo!31538 (h!69162 (exprs!5397 lt!2247531))) (h!69162 (exprs!5397 lt!2247531)))))))

(declare-fun b!5528012 () Bool)

(assert (=> b!5528012 (= e!3417431 call!410276)))

(declare-fun b!5528013 () Bool)

(declare-fun call!410277 () (InoxSet Context!9794))

(assert (=> b!5528013 (= e!3417435 ((_ map or) call!410277 call!410280))))

(declare-fun bm!410275 () Bool)

(assert (=> bm!410275 (= call!410277 (derivationStepZipperDown!855 (ite c!967242 (regTwo!31539 (h!69162 (exprs!5397 lt!2247531))) (regOne!31538 (h!69162 (exprs!5397 lt!2247531)))) (ite c!967242 (Context!9795 (t!376093 (exprs!5397 lt!2247531))) (Context!9795 call!410279)) (h!69164 s!2326)))))

(declare-fun bm!410276 () Bool)

(assert (=> bm!410276 (= call!410278 (derivationStepZipperDown!855 (ite c!967242 (regOne!31539 (h!69162 (exprs!5397 lt!2247531))) (ite c!967243 (regTwo!31538 (h!69162 (exprs!5397 lt!2247531))) (ite c!967245 (regOne!31538 (h!69162 (exprs!5397 lt!2247531))) (reg!15842 (h!69162 (exprs!5397 lt!2247531)))))) (ite (or c!967242 c!967243) (Context!9795 (t!376093 (exprs!5397 lt!2247531))) (Context!9795 call!410281)) (h!69164 s!2326)))))

(declare-fun b!5528014 () Bool)

(assert (=> b!5528014 (= e!3417433 ((_ map or) call!410278 call!410277))))

(declare-fun b!5528015 () Bool)

(assert (=> b!5528015 (= e!3417434 (nullable!5547 (regOne!31538 (h!69162 (exprs!5397 lt!2247531)))))))

(assert (= (and d!1751676 c!967244) b!5528006))

(assert (= (and d!1751676 (not c!967244)) b!5528005))

(assert (= (and b!5528005 c!967242) b!5528014))

(assert (= (and b!5528005 (not c!967242)) b!5528010))

(assert (= (and b!5528010 res!2353895) b!5528015))

(assert (= (and b!5528010 c!967243) b!5528013))

(assert (= (and b!5528010 (not c!967243)) b!5528007))

(assert (= (and b!5528007 c!967245) b!5528012))

(assert (= (and b!5528007 (not c!967245)) b!5528009))

(assert (= (and b!5528009 c!967241) b!5528008))

(assert (= (and b!5528009 (not c!967241)) b!5528011))

(assert (= (or b!5528012 b!5528008) bm!410271))

(assert (= (or b!5528012 b!5528008) bm!410273))

(assert (= (or b!5528013 bm!410271) bm!410274))

(assert (= (or b!5528013 bm!410273) bm!410272))

(assert (= (or b!5528014 b!5528013) bm!410275))

(assert (= (or b!5528014 bm!410272) bm!410276))

(declare-fun m!6530170 () Bool)

(assert (=> b!5528006 m!6530170))

(declare-fun m!6530172 () Bool)

(assert (=> b!5528015 m!6530172))

(declare-fun m!6530174 () Bool)

(assert (=> bm!410276 m!6530174))

(declare-fun m!6530176 () Bool)

(assert (=> bm!410274 m!6530176))

(declare-fun m!6530178 () Bool)

(assert (=> bm!410275 m!6530178))

(assert (=> bm!410072 d!1751676))

(declare-fun bm!410277 () Bool)

(declare-fun call!410287 () List!62838)

(declare-fun call!410285 () List!62838)

(assert (=> bm!410277 (= call!410287 call!410285)))

(declare-fun b!5528016 () Bool)

(declare-fun e!3417436 () (InoxSet Context!9794))

(declare-fun e!3417439 () (InoxSet Context!9794))

(assert (=> b!5528016 (= e!3417436 e!3417439)))

(declare-fun c!967247 () Bool)

(assert (=> b!5528016 (= c!967247 ((_ is Union!15513) (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))))))

(declare-fun c!967249 () Bool)

(declare-fun d!1751678 () Bool)

(assert (=> d!1751678 (= c!967249 (and ((_ is ElementMatch!15513) (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (= (c!966767 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (h!69164 s!2326))))))

(assert (=> d!1751678 (= (derivationStepZipperDown!855 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292))) (ite c!966957 lt!2247553 (Context!9795 call!410067)) (h!69164 s!2326)) e!3417436)))

(declare-fun b!5528017 () Bool)

(assert (=> b!5528017 (= e!3417436 (store ((as const (Array Context!9794 Bool)) false) (ite c!966957 lt!2247553 (Context!9795 call!410067)) true))))

(declare-fun bm!410278 () Bool)

(declare-fun call!410286 () (InoxSet Context!9794))

(declare-fun call!410284 () (InoxSet Context!9794))

(assert (=> bm!410278 (= call!410286 call!410284)))

(declare-fun b!5528018 () Bool)

(declare-fun e!3417441 () (InoxSet Context!9794))

(declare-fun e!3417437 () (InoxSet Context!9794))

(assert (=> b!5528018 (= e!3417441 e!3417437)))

(declare-fun c!967250 () Bool)

(assert (=> b!5528018 (= c!967250 ((_ is Concat!24358) (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))))))

(declare-fun b!5528019 () Bool)

(declare-fun e!3417438 () (InoxSet Context!9794))

(declare-fun call!410282 () (InoxSet Context!9794))

(assert (=> b!5528019 (= e!3417438 call!410282)))

(declare-fun b!5528020 () Bool)

(declare-fun c!967246 () Bool)

(assert (=> b!5528020 (= c!967246 ((_ is Star!15513) (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))))))

(assert (=> b!5528020 (= e!3417437 e!3417438)))

(declare-fun b!5528021 () Bool)

(declare-fun c!967248 () Bool)

(declare-fun e!3417440 () Bool)

(assert (=> b!5528021 (= c!967248 e!3417440)))

(declare-fun res!2353896 () Bool)

(assert (=> b!5528021 (=> (not res!2353896) (not e!3417440))))

(assert (=> b!5528021 (= res!2353896 ((_ is Concat!24358) (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))))))

(assert (=> b!5528021 (= e!3417439 e!3417441)))

(declare-fun b!5528022 () Bool)

(assert (=> b!5528022 (= e!3417438 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410279 () Bool)

(assert (=> bm!410279 (= call!410282 call!410286)))

(declare-fun bm!410280 () Bool)

(assert (=> bm!410280 (= call!410285 ($colon$colon!1592 (exprs!5397 (ite c!966957 lt!2247553 (Context!9795 call!410067))) (ite (or c!967248 c!967250) (regTwo!31538 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292))))))))

(declare-fun b!5528023 () Bool)

(assert (=> b!5528023 (= e!3417437 call!410282)))

(declare-fun b!5528024 () Bool)

(declare-fun call!410283 () (InoxSet Context!9794))

(assert (=> b!5528024 (= e!3417441 ((_ map or) call!410283 call!410286))))

(declare-fun bm!410281 () Bool)

(assert (=> bm!410281 (= call!410283 (derivationStepZipperDown!855 (ite c!967247 (regTwo!31539 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (regOne!31538 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292))))) (ite c!967247 (ite c!966957 lt!2247553 (Context!9795 call!410067)) (Context!9795 call!410285)) (h!69164 s!2326)))))

(declare-fun bm!410282 () Bool)

(assert (=> bm!410282 (= call!410284 (derivationStepZipperDown!855 (ite c!967247 (regOne!31539 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (ite c!967248 (regTwo!31538 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (ite c!967250 (regOne!31538 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292)))) (reg!15842 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292))))))) (ite (or c!967247 c!967248) (ite c!966957 lt!2247553 (Context!9795 call!410067)) (Context!9795 call!410287)) (h!69164 s!2326)))))

(declare-fun b!5528025 () Bool)

(assert (=> b!5528025 (= e!3417439 ((_ map or) call!410284 call!410283))))

(declare-fun b!5528026 () Bool)

(assert (=> b!5528026 (= e!3417440 (nullable!5547 (regOne!31538 (ite c!966957 (regTwo!31539 (regTwo!31538 r!7292)) (regOne!31538 (regTwo!31538 r!7292))))))))

(assert (= (and d!1751678 c!967249) b!5528017))

(assert (= (and d!1751678 (not c!967249)) b!5528016))

(assert (= (and b!5528016 c!967247) b!5528025))

(assert (= (and b!5528016 (not c!967247)) b!5528021))

(assert (= (and b!5528021 res!2353896) b!5528026))

(assert (= (and b!5528021 c!967248) b!5528024))

(assert (= (and b!5528021 (not c!967248)) b!5528018))

(assert (= (and b!5528018 c!967250) b!5528023))

(assert (= (and b!5528018 (not c!967250)) b!5528020))

(assert (= (and b!5528020 c!967246) b!5528019))

(assert (= (and b!5528020 (not c!967246)) b!5528022))

(assert (= (or b!5528023 b!5528019) bm!410277))

(assert (= (or b!5528023 b!5528019) bm!410279))

(assert (= (or b!5528024 bm!410277) bm!410280))

(assert (= (or b!5528024 bm!410279) bm!410278))

(assert (= (or b!5528025 b!5528024) bm!410281))

(assert (= (or b!5528025 bm!410278) bm!410282))

(declare-fun m!6530184 () Bool)

(assert (=> b!5528017 m!6530184))

(declare-fun m!6530186 () Bool)

(assert (=> b!5528026 m!6530186))

(declare-fun m!6530188 () Bool)

(assert (=> bm!410282 m!6530188))

(declare-fun m!6530190 () Bool)

(assert (=> bm!410280 m!6530190))

(declare-fun m!6530192 () Bool)

(assert (=> bm!410281 m!6530192))

(assert (=> bm!410063 d!1751678))

(declare-fun d!1751682 () Bool)

(assert (=> d!1751682 (= (Exists!2613 lambda!296491) (choose!41996 lambda!296491))))

(declare-fun bs!1276668 () Bool)

(assert (= bs!1276668 d!1751682))

(declare-fun m!6530200 () Bool)

(assert (=> bs!1276668 m!6530200))

(assert (=> d!1751308 d!1751682))

(declare-fun d!1751684 () Bool)

(assert (=> d!1751684 (= (Exists!2613 lambda!296492) (choose!41996 lambda!296492))))

(declare-fun bs!1276669 () Bool)

(assert (= bs!1276669 d!1751684))

(declare-fun m!6530204 () Bool)

(assert (=> bs!1276669 m!6530204))

(assert (=> d!1751308 d!1751684))

(declare-fun bs!1276709 () Bool)

(declare-fun d!1751686 () Bool)

(assert (= bs!1276709 (and d!1751686 d!1751308)))

(declare-fun lambda!296570 () Int)

(assert (=> bs!1276709 (not (= lambda!296570 lambda!296492))))

(declare-fun bs!1276710 () Bool)

(assert (= bs!1276710 (and d!1751686 d!1751306)))

(assert (=> bs!1276710 (= lambda!296570 lambda!296486)))

(declare-fun bs!1276711 () Bool)

(assert (= bs!1276711 (and d!1751686 b!5527808)))

(assert (=> bs!1276711 (not (= lambda!296570 lambda!296544))))

(declare-fun bs!1276712 () Bool)

(assert (= bs!1276712 (and d!1751686 b!5526996)))

(assert (=> bs!1276712 (not (= lambda!296570 lambda!296473))))

(declare-fun bs!1276713 () Bool)

(assert (= bs!1276713 (and d!1751686 b!5527804)))

(assert (=> bs!1276713 (not (= lambda!296570 lambda!296545))))

(declare-fun bs!1276714 () Bool)

(assert (= bs!1276714 (and d!1751686 b!5527000)))

(assert (=> bs!1276714 (not (= lambda!296570 lambda!296472))))

(assert (=> bs!1276709 (= lambda!296570 lambda!296491)))

(declare-fun bs!1276715 () Bool)

(assert (= bs!1276715 (and d!1751686 b!5526447)))

(assert (=> bs!1276715 (not (= lambda!296570 lambda!296388))))

(assert (=> bs!1276715 (= lambda!296570 lambda!296387)))

(assert (=> d!1751686 true))

(assert (=> d!1751686 true))

(assert (=> d!1751686 true))

(declare-fun lambda!296572 () Int)

(assert (=> bs!1276709 (= lambda!296572 lambda!296492)))

(assert (=> bs!1276710 (not (= lambda!296572 lambda!296486))))

(assert (=> bs!1276711 (not (= lambda!296572 lambda!296544))))

(assert (=> bs!1276712 (= lambda!296572 lambda!296473)))

(declare-fun bs!1276716 () Bool)

(assert (= bs!1276716 d!1751686))

(assert (=> bs!1276716 (not (= lambda!296572 lambda!296570))))

(assert (=> bs!1276713 (= (and (= (regOne!31538 r!7292) (regOne!31538 (regTwo!31539 r!7292))) (= (regTwo!31538 r!7292) (regTwo!31538 (regTwo!31539 r!7292)))) (= lambda!296572 lambda!296545))))

(assert (=> bs!1276714 (not (= lambda!296572 lambda!296472))))

(assert (=> bs!1276709 (not (= lambda!296572 lambda!296491))))

(assert (=> bs!1276715 (= lambda!296572 lambda!296388)))

(assert (=> bs!1276715 (not (= lambda!296572 lambda!296387))))

(assert (=> d!1751686 true))

(assert (=> d!1751686 true))

(assert (=> d!1751686 true))

(assert (=> d!1751686 (= (Exists!2613 lambda!296570) (Exists!2613 lambda!296572))))

(assert (=> d!1751686 true))

(declare-fun _$90!1256 () Unit!155486)

(assert (=> d!1751686 (= (choose!41998 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326) _$90!1256)))

(declare-fun m!6530240 () Bool)

(assert (=> bs!1276716 m!6530240))

(declare-fun m!6530242 () Bool)

(assert (=> bs!1276716 m!6530242))

(assert (=> d!1751308 d!1751686))

(declare-fun b!5528065 () Bool)

(declare-fun e!3417464 () Bool)

(declare-fun call!410289 () Bool)

(assert (=> b!5528065 (= e!3417464 call!410289)))

(declare-fun b!5528066 () Bool)

(declare-fun res!2353922 () Bool)

(declare-fun e!3417466 () Bool)

(assert (=> b!5528066 (=> res!2353922 e!3417466)))

(assert (=> b!5528066 (= res!2353922 (not ((_ is Concat!24358) (regOne!31538 r!7292))))))

(declare-fun e!3417463 () Bool)

(assert (=> b!5528066 (= e!3417463 e!3417466)))

(declare-fun b!5528067 () Bool)

(declare-fun e!3417462 () Bool)

(assert (=> b!5528067 (= e!3417462 call!410289)))

(declare-fun b!5528068 () Bool)

(declare-fun e!3417468 () Bool)

(declare-fun call!410291 () Bool)

(assert (=> b!5528068 (= e!3417468 call!410291)))

(declare-fun bm!410285 () Bool)

(declare-fun call!410290 () Bool)

(assert (=> bm!410285 (= call!410290 call!410291)))

(declare-fun b!5528069 () Bool)

(declare-fun e!3417465 () Bool)

(assert (=> b!5528069 (= e!3417465 e!3417468)))

(declare-fun res!2353920 () Bool)

(assert (=> b!5528069 (= res!2353920 (not (nullable!5547 (reg!15842 (regOne!31538 r!7292)))))))

(assert (=> b!5528069 (=> (not res!2353920) (not e!3417468))))

(declare-fun b!5528070 () Bool)

(assert (=> b!5528070 (= e!3417465 e!3417463)))

(declare-fun c!967259 () Bool)

(assert (=> b!5528070 (= c!967259 ((_ is Union!15513) (regOne!31538 r!7292)))))

(declare-fun d!1751700 () Bool)

(declare-fun res!2353921 () Bool)

(declare-fun e!3417467 () Bool)

(assert (=> d!1751700 (=> res!2353921 e!3417467)))

(assert (=> d!1751700 (= res!2353921 ((_ is ElementMatch!15513) (regOne!31538 r!7292)))))

(assert (=> d!1751700 (= (validRegex!7249 (regOne!31538 r!7292)) e!3417467)))

(declare-fun bm!410284 () Bool)

(declare-fun c!967260 () Bool)

(assert (=> bm!410284 (= call!410291 (validRegex!7249 (ite c!967260 (reg!15842 (regOne!31538 r!7292)) (ite c!967259 (regOne!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))))))))

(declare-fun b!5528071 () Bool)

(assert (=> b!5528071 (= e!3417466 e!3417464)))

(declare-fun res!2353923 () Bool)

(assert (=> b!5528071 (=> (not res!2353923) (not e!3417464))))

(assert (=> b!5528071 (= res!2353923 call!410290)))

(declare-fun b!5528072 () Bool)

(declare-fun res!2353919 () Bool)

(assert (=> b!5528072 (=> (not res!2353919) (not e!3417462))))

(assert (=> b!5528072 (= res!2353919 call!410290)))

(assert (=> b!5528072 (= e!3417463 e!3417462)))

(declare-fun b!5528073 () Bool)

(assert (=> b!5528073 (= e!3417467 e!3417465)))

(assert (=> b!5528073 (= c!967260 ((_ is Star!15513) (regOne!31538 r!7292)))))

(declare-fun bm!410286 () Bool)

(assert (=> bm!410286 (= call!410289 (validRegex!7249 (ite c!967259 (regTwo!31539 (regOne!31538 r!7292)) (regTwo!31538 (regOne!31538 r!7292)))))))

(assert (= (and d!1751700 (not res!2353921)) b!5528073))

(assert (= (and b!5528073 c!967260) b!5528069))

(assert (= (and b!5528073 (not c!967260)) b!5528070))

(assert (= (and b!5528069 res!2353920) b!5528068))

(assert (= (and b!5528070 c!967259) b!5528072))

(assert (= (and b!5528070 (not c!967259)) b!5528066))

(assert (= (and b!5528072 res!2353919) b!5528067))

(assert (= (and b!5528066 (not res!2353922)) b!5528071))

(assert (= (and b!5528071 res!2353923) b!5528065))

(assert (= (or b!5528067 b!5528065) bm!410286))

(assert (= (or b!5528072 b!5528071) bm!410285))

(assert (= (or b!5528068 bm!410285) bm!410284))

(declare-fun m!6530244 () Bool)

(assert (=> b!5528069 m!6530244))

(declare-fun m!6530246 () Bool)

(assert (=> bm!410284 m!6530246))

(declare-fun m!6530248 () Bool)

(assert (=> bm!410286 m!6530248))

(assert (=> d!1751308 d!1751700))

(declare-fun d!1751702 () Bool)

(assert (=> d!1751702 (= (isEmpty!34501 (t!376093 (unfocusZipperList!941 zl!343))) ((_ is Nil!62714) (t!376093 (unfocusZipperList!941 zl!343))))))

(assert (=> b!5527145 d!1751702))

(declare-fun d!1751704 () Bool)

(assert (=> d!1751704 (= (isEmpty!34505 (t!376095 s!2326)) ((_ is Nil!62716) (t!376095 s!2326)))))

(assert (=> d!1751266 d!1751704))

(declare-fun d!1751706 () Bool)

(assert (=> d!1751706 (= (isConcat!608 lt!2247680) ((_ is Concat!24358) lt!2247680))))

(assert (=> b!5527112 d!1751706))

(declare-fun b!5528074 () Bool)

(declare-fun e!3417471 () Bool)

(declare-fun call!410292 () Bool)

(assert (=> b!5528074 (= e!3417471 call!410292)))

(declare-fun b!5528075 () Bool)

(declare-fun res!2353927 () Bool)

(declare-fun e!3417473 () Bool)

(assert (=> b!5528075 (=> res!2353927 e!3417473)))

(assert (=> b!5528075 (= res!2353927 (not ((_ is Concat!24358) (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292))))))))

(declare-fun e!3417470 () Bool)

(assert (=> b!5528075 (= e!3417470 e!3417473)))

(declare-fun b!5528076 () Bool)

(declare-fun e!3417469 () Bool)

(assert (=> b!5528076 (= e!3417469 call!410292)))

(declare-fun b!5528077 () Bool)

(declare-fun e!3417475 () Bool)

(declare-fun call!410294 () Bool)

(assert (=> b!5528077 (= e!3417475 call!410294)))

(declare-fun bm!410288 () Bool)

(declare-fun call!410293 () Bool)

(assert (=> bm!410288 (= call!410293 call!410294)))

(declare-fun b!5528078 () Bool)

(declare-fun e!3417472 () Bool)

(assert (=> b!5528078 (= e!3417472 e!3417475)))

(declare-fun res!2353925 () Bool)

(assert (=> b!5528078 (= res!2353925 (not (nullable!5547 (reg!15842 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))))))))

(assert (=> b!5528078 (=> (not res!2353925) (not e!3417475))))

(declare-fun b!5528079 () Bool)

(assert (=> b!5528079 (= e!3417472 e!3417470)))

(declare-fun c!967261 () Bool)

(assert (=> b!5528079 (= c!967261 ((_ is Union!15513) (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))))))

(declare-fun d!1751708 () Bool)

(declare-fun res!2353926 () Bool)

(declare-fun e!3417474 () Bool)

(assert (=> d!1751708 (=> res!2353926 e!3417474)))

(assert (=> d!1751708 (= res!2353926 ((_ is ElementMatch!15513) (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))))))

(assert (=> d!1751708 (= (validRegex!7249 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))) e!3417474)))

(declare-fun bm!410287 () Bool)

(declare-fun c!967262 () Bool)

(assert (=> bm!410287 (= call!410294 (validRegex!7249 (ite c!967262 (reg!15842 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))) (ite c!967261 (regOne!31539 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))) (regOne!31538 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292))))))))))

(declare-fun b!5528080 () Bool)

(assert (=> b!5528080 (= e!3417473 e!3417471)))

(declare-fun res!2353928 () Bool)

(assert (=> b!5528080 (=> (not res!2353928) (not e!3417471))))

(assert (=> b!5528080 (= res!2353928 call!410293)))

(declare-fun b!5528081 () Bool)

(declare-fun res!2353924 () Bool)

(assert (=> b!5528081 (=> (not res!2353924) (not e!3417469))))

(assert (=> b!5528081 (= res!2353924 call!410293)))

(assert (=> b!5528081 (= e!3417470 e!3417469)))

(declare-fun b!5528082 () Bool)

(assert (=> b!5528082 (= e!3417474 e!3417472)))

(assert (=> b!5528082 (= c!967262 ((_ is Star!15513) (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))))))

(declare-fun bm!410289 () Bool)

(assert (=> bm!410289 (= call!410292 (validRegex!7249 (ite c!967261 (regTwo!31539 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))) (regTwo!31538 (ite c!967009 (reg!15842 r!7292) (ite c!967008 (regOne!31539 r!7292) (regOne!31538 r!7292)))))))))

(assert (= (and d!1751708 (not res!2353926)) b!5528082))

(assert (= (and b!5528082 c!967262) b!5528078))

(assert (= (and b!5528082 (not c!967262)) b!5528079))

(assert (= (and b!5528078 res!2353925) b!5528077))

(assert (= (and b!5528079 c!967261) b!5528081))

(assert (= (and b!5528079 (not c!967261)) b!5528075))

(assert (= (and b!5528081 res!2353924) b!5528076))

(assert (= (and b!5528075 (not res!2353927)) b!5528080))

(assert (= (and b!5528080 res!2353928) b!5528074))

(assert (= (or b!5528076 b!5528074) bm!410289))

(assert (= (or b!5528081 b!5528080) bm!410288))

(assert (= (or b!5528077 bm!410288) bm!410287))

(declare-fun m!6530252 () Bool)

(assert (=> b!5528078 m!6530252))

(declare-fun m!6530254 () Bool)

(assert (=> bm!410287 m!6530254))

(declare-fun m!6530256 () Bool)

(assert (=> bm!410289 m!6530256))

(assert (=> bm!410079 d!1751708))

(declare-fun d!1751712 () Bool)

(assert (=> d!1751712 (= (nullable!5547 (h!69162 (exprs!5397 lt!2247530))) (nullableFct!1671 (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun bs!1276728 () Bool)

(assert (= bs!1276728 d!1751712))

(declare-fun m!6530258 () Bool)

(assert (=> bs!1276728 m!6530258))

(assert (=> b!5527079 d!1751712))

(declare-fun d!1751716 () Bool)

(assert (=> d!1751716 (= (flatMap!1126 z!1189 lambda!296447) (choose!41994 z!1189 lambda!296447))))

(declare-fun bs!1276729 () Bool)

(assert (= bs!1276729 d!1751716))

(declare-fun m!6530260 () Bool)

(assert (=> bs!1276729 m!6530260))

(assert (=> d!1751246 d!1751716))

(declare-fun bs!1276730 () Bool)

(declare-fun d!1751718 () Bool)

(assert (= bs!1276730 (and d!1751718 b!5526958)))

(declare-fun lambda!296576 () Int)

(assert (=> bs!1276730 (not (= lambda!296576 lambda!296464))))

(declare-fun bs!1276732 () Bool)

(assert (= bs!1276732 (and d!1751718 b!5526961)))

(assert (=> bs!1276732 (not (= lambda!296576 lambda!296466))))

(declare-fun bs!1276734 () Bool)

(assert (= bs!1276734 (and d!1751718 b!5526963)))

(assert (=> bs!1276734 (not (= lambda!296576 lambda!296467))))

(declare-fun bs!1276736 () Bool)

(assert (= bs!1276736 (and d!1751718 d!1751632)))

(assert (=> bs!1276736 (= lambda!296576 lambda!296555)))

(declare-fun bs!1276737 () Bool)

(assert (= bs!1276737 (and d!1751718 b!5526956)))

(assert (=> bs!1276737 (not (= lambda!296576 lambda!296463))))

(assert (=> d!1751718 (= (nullableZipper!1539 lt!2247529) (exists!2147 lt!2247529 lambda!296576))))

(declare-fun bs!1276741 () Bool)

(assert (= bs!1276741 d!1751718))

(declare-fun m!6530262 () Bool)

(assert (=> bs!1276741 m!6530262))

(assert (=> b!5527155 d!1751718))

(declare-fun b!5528083 () Bool)

(declare-fun e!3417478 () Bool)

(declare-fun call!410295 () Bool)

(assert (=> b!5528083 (= e!3417478 call!410295)))

(declare-fun b!5528084 () Bool)

(declare-fun res!2353932 () Bool)

(declare-fun e!3417480 () Bool)

(assert (=> b!5528084 (=> res!2353932 e!3417480)))

(assert (=> b!5528084 (= res!2353932 (not ((_ is Concat!24358) lt!2247680)))))

(declare-fun e!3417477 () Bool)

(assert (=> b!5528084 (= e!3417477 e!3417480)))

(declare-fun b!5528085 () Bool)

(declare-fun e!3417476 () Bool)

(assert (=> b!5528085 (= e!3417476 call!410295)))

(declare-fun b!5528086 () Bool)

(declare-fun e!3417482 () Bool)

(declare-fun call!410297 () Bool)

(assert (=> b!5528086 (= e!3417482 call!410297)))

(declare-fun bm!410291 () Bool)

(declare-fun call!410296 () Bool)

(assert (=> bm!410291 (= call!410296 call!410297)))

(declare-fun b!5528087 () Bool)

(declare-fun e!3417479 () Bool)

(assert (=> b!5528087 (= e!3417479 e!3417482)))

(declare-fun res!2353930 () Bool)

(assert (=> b!5528087 (= res!2353930 (not (nullable!5547 (reg!15842 lt!2247680))))))

(assert (=> b!5528087 (=> (not res!2353930) (not e!3417482))))

(declare-fun b!5528088 () Bool)

(assert (=> b!5528088 (= e!3417479 e!3417477)))

(declare-fun c!967263 () Bool)

(assert (=> b!5528088 (= c!967263 ((_ is Union!15513) lt!2247680))))

(declare-fun d!1751720 () Bool)

(declare-fun res!2353931 () Bool)

(declare-fun e!3417481 () Bool)

(assert (=> d!1751720 (=> res!2353931 e!3417481)))

(assert (=> d!1751720 (= res!2353931 ((_ is ElementMatch!15513) lt!2247680))))

(assert (=> d!1751720 (= (validRegex!7249 lt!2247680) e!3417481)))

(declare-fun c!967264 () Bool)

(declare-fun bm!410290 () Bool)

(assert (=> bm!410290 (= call!410297 (validRegex!7249 (ite c!967264 (reg!15842 lt!2247680) (ite c!967263 (regOne!31539 lt!2247680) (regOne!31538 lt!2247680)))))))

(declare-fun b!5528089 () Bool)

(assert (=> b!5528089 (= e!3417480 e!3417478)))

(declare-fun res!2353933 () Bool)

(assert (=> b!5528089 (=> (not res!2353933) (not e!3417478))))

(assert (=> b!5528089 (= res!2353933 call!410296)))

(declare-fun b!5528090 () Bool)

(declare-fun res!2353929 () Bool)

(assert (=> b!5528090 (=> (not res!2353929) (not e!3417476))))

(assert (=> b!5528090 (= res!2353929 call!410296)))

(assert (=> b!5528090 (= e!3417477 e!3417476)))

(declare-fun b!5528091 () Bool)

(assert (=> b!5528091 (= e!3417481 e!3417479)))

(assert (=> b!5528091 (= c!967264 ((_ is Star!15513) lt!2247680))))

(declare-fun bm!410292 () Bool)

(assert (=> bm!410292 (= call!410295 (validRegex!7249 (ite c!967263 (regTwo!31539 lt!2247680) (regTwo!31538 lt!2247680))))))

(assert (= (and d!1751720 (not res!2353931)) b!5528091))

(assert (= (and b!5528091 c!967264) b!5528087))

(assert (= (and b!5528091 (not c!967264)) b!5528088))

(assert (= (and b!5528087 res!2353930) b!5528086))

(assert (= (and b!5528088 c!967263) b!5528090))

(assert (= (and b!5528088 (not c!967263)) b!5528084))

(assert (= (and b!5528090 res!2353929) b!5528085))

(assert (= (and b!5528084 (not res!2353932)) b!5528089))

(assert (= (and b!5528089 res!2353933) b!5528083))

(assert (= (or b!5528085 b!5528083) bm!410292))

(assert (= (or b!5528090 b!5528089) bm!410291))

(assert (= (or b!5528086 bm!410291) bm!410290))

(declare-fun m!6530264 () Bool)

(assert (=> b!5528087 m!6530264))

(declare-fun m!6530266 () Bool)

(assert (=> bm!410290 m!6530266))

(declare-fun m!6530268 () Bool)

(assert (=> bm!410292 m!6530268))

(assert (=> d!1751288 d!1751720))

(declare-fun d!1751722 () Bool)

(declare-fun res!2353934 () Bool)

(declare-fun e!3417483 () Bool)

(assert (=> d!1751722 (=> res!2353934 e!3417483)))

(assert (=> d!1751722 (= res!2353934 ((_ is Nil!62714) (exprs!5397 (h!69163 zl!343))))))

(assert (=> d!1751722 (= (forall!14690 (exprs!5397 (h!69163 zl!343)) lambda!296477) e!3417483)))

(declare-fun b!5528092 () Bool)

(declare-fun e!3417484 () Bool)

(assert (=> b!5528092 (= e!3417483 e!3417484)))

(declare-fun res!2353935 () Bool)

(assert (=> b!5528092 (=> (not res!2353935) (not e!3417484))))

(assert (=> b!5528092 (= res!2353935 (dynLambda!24517 lambda!296477 (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5528093 () Bool)

(assert (=> b!5528093 (= e!3417484 (forall!14690 (t!376093 (exprs!5397 (h!69163 zl!343))) lambda!296477))))

(assert (= (and d!1751722 (not res!2353934)) b!5528092))

(assert (= (and b!5528092 res!2353935) b!5528093))

(declare-fun b_lambda!209721 () Bool)

(assert (=> (not b_lambda!209721) (not b!5528092)))

(declare-fun m!6530274 () Bool)

(assert (=> b!5528092 m!6530274))

(declare-fun m!6530276 () Bool)

(assert (=> b!5528093 m!6530276))

(assert (=> d!1751288 d!1751722))

(declare-fun d!1751726 () Bool)

(assert (=> d!1751726 true))

(declare-fun setRes!36770 () Bool)

(assert (=> d!1751726 setRes!36770))

(declare-fun condSetEmpty!36770 () Bool)

(declare-fun res!2353937 () (InoxSet Context!9794))

(assert (=> d!1751726 (= condSetEmpty!36770 (= res!2353937 ((as const (Array Context!9794 Bool)) false)))))

(assert (=> d!1751726 (= (choose!41994 z!1189 lambda!296389) res!2353937)))

(declare-fun setIsEmpty!36770 () Bool)

(assert (=> setIsEmpty!36770 setRes!36770))

(declare-fun setNonEmpty!36770 () Bool)

(declare-fun setElem!36770 () Context!9794)

(declare-fun tp!1520691 () Bool)

(declare-fun e!3417487 () Bool)

(assert (=> setNonEmpty!36770 (= setRes!36770 (and tp!1520691 (inv!82029 setElem!36770) e!3417487))))

(declare-fun setRest!36770 () (InoxSet Context!9794))

(assert (=> setNonEmpty!36770 (= res!2353937 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) setElem!36770 true) setRest!36770))))

(declare-fun b!5528097 () Bool)

(declare-fun tp!1520690 () Bool)

(assert (=> b!5528097 (= e!3417487 tp!1520690)))

(assert (= (and d!1751726 condSetEmpty!36770) setIsEmpty!36770))

(assert (= (and d!1751726 (not condSetEmpty!36770)) setNonEmpty!36770))

(assert (= setNonEmpty!36770 b!5528097))

(declare-fun m!6530278 () Bool)

(assert (=> setNonEmpty!36770 m!6530278))

(assert (=> d!1751336 d!1751726))

(assert (=> b!5526918 d!1751276))

(declare-fun bs!1276755 () Bool)

(declare-fun d!1751728 () Bool)

(assert (= bs!1276755 (and d!1751728 d!1751334)))

(declare-fun lambda!296578 () Int)

(assert (=> bs!1276755 (= lambda!296578 lambda!296499)))

(declare-fun bs!1276757 () Bool)

(assert (= bs!1276757 (and d!1751728 b!5526942)))

(assert (=> bs!1276757 (not (= lambda!296578 lambda!296452))))

(declare-fun bs!1276759 () Bool)

(assert (= bs!1276759 (and d!1751728 d!1751332)))

(assert (=> bs!1276759 (= lambda!296578 lambda!296498)))

(declare-fun bs!1276761 () Bool)

(assert (= bs!1276761 (and d!1751728 b!5527239)))

(assert (=> bs!1276761 (not (= lambda!296578 lambda!296494))))

(declare-fun bs!1276762 () Bool)

(assert (= bs!1276762 (and d!1751728 b!5527241)))

(assert (=> bs!1276762 (not (= lambda!296578 lambda!296495))))

(declare-fun bs!1276763 () Bool)

(assert (= bs!1276763 (and d!1751728 d!1751566)))

(assert (=> bs!1276763 (not (= lambda!296578 lambda!296541))))

(declare-fun bs!1276765 () Bool)

(assert (= bs!1276765 (and d!1751728 b!5527751)))

(assert (=> bs!1276765 (not (= lambda!296578 lambda!296536))))

(declare-fun bs!1276767 () Bool)

(assert (= bs!1276767 (and d!1751728 b!5527984)))

(assert (=> bs!1276767 (not (= lambda!296578 lambda!296560))))

(declare-fun bs!1276769 () Bool)

(assert (= bs!1276769 (and d!1751728 d!1751292)))

(assert (=> bs!1276769 (= lambda!296578 lambda!296483)))

(declare-fun bs!1276771 () Bool)

(assert (= bs!1276771 (and d!1751728 d!1751288)))

(assert (=> bs!1276771 (= lambda!296578 lambda!296477)))

(declare-fun bs!1276773 () Bool)

(assert (= bs!1276773 (and d!1751728 b!5526947)))

(assert (=> bs!1276773 (not (= lambda!296578 lambda!296454))))

(declare-fun bs!1276774 () Bool)

(assert (= bs!1276774 (and d!1751728 d!1751290)))

(assert (=> bs!1276774 (= lambda!296578 lambda!296480)))

(declare-fun bs!1276776 () Bool)

(assert (= bs!1276776 (and d!1751728 b!5526949)))

(assert (=> bs!1276776 (not (= lambda!296578 lambda!296455))))

(declare-fun bs!1276778 () Bool)

(assert (= bs!1276778 (and d!1751728 b!5527749)))

(assert (=> bs!1276778 (not (= lambda!296578 lambda!296535))))

(declare-fun bs!1276780 () Bool)

(assert (= bs!1276780 (and d!1751728 d!1751656)))

(assert (=> bs!1276780 (not (= lambda!296578 lambda!296558))))

(declare-fun bs!1276782 () Bool)

(assert (= bs!1276782 (and d!1751728 b!5527986)))

(assert (=> bs!1276782 (not (= lambda!296578 lambda!296561))))

(declare-fun bs!1276784 () Bool)

(assert (= bs!1276784 (and d!1751728 b!5526944)))

(assert (=> bs!1276784 (not (= lambda!296578 lambda!296453))))

(assert (=> d!1751728 (= (inv!82029 (h!69163 (t!376094 zl!343))) (forall!14690 (exprs!5397 (h!69163 (t!376094 zl!343))) lambda!296578))))

(declare-fun bs!1276785 () Bool)

(assert (= bs!1276785 d!1751728))

(declare-fun m!6530280 () Bool)

(assert (=> bs!1276785 m!6530280))

(assert (=> b!5527294 d!1751728))

(declare-fun d!1751730 () Bool)

(assert (=> d!1751730 (= (maxBigInt!0 (contextDepth!109 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))) (ite (>= (contextDepth!109 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))) (contextDepth!109 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))))))

(assert (=> b!5526956 d!1751730))

(declare-fun bs!1276793 () Bool)

(declare-fun b!5528098 () Bool)

(assert (= bs!1276793 (and b!5528098 b!5526956)))

(declare-fun lambda!296581 () Int)

(assert (=> bs!1276793 (= lambda!296581 lambda!296462)))

(declare-fun bs!1276795 () Bool)

(assert (= bs!1276795 (and b!5528098 b!5526961)))

(assert (=> bs!1276795 (= lambda!296581 lambda!296465)))

(declare-fun bs!1276799 () Bool)

(assert (= bs!1276799 (and b!5528098 d!1751718)))

(declare-fun lambda!296582 () Int)

(assert (=> bs!1276799 (not (= lambda!296582 lambda!296576))))

(declare-fun bs!1276800 () Bool)

(assert (= bs!1276800 (and b!5528098 b!5526958)))

(declare-fun lt!2247796 () Int)

(assert (=> bs!1276800 (= (= lt!2247796 lt!2247660) (= lambda!296582 lambda!296464))))

(assert (=> bs!1276795 (= (= lt!2247796 lt!2247667) (= lambda!296582 lambda!296466))))

(declare-fun bs!1276803 () Bool)

(assert (= bs!1276803 (and b!5528098 b!5526963)))

(assert (=> bs!1276803 (= (= lt!2247796 lt!2247664) (= lambda!296582 lambda!296467))))

(declare-fun bs!1276805 () Bool)

(assert (= bs!1276805 (and b!5528098 d!1751632)))

(assert (=> bs!1276805 (not (= lambda!296582 lambda!296555))))

(assert (=> bs!1276793 (= (= lt!2247796 lt!2247663) (= lambda!296582 lambda!296463))))

(assert (=> b!5528098 true))

(declare-fun bs!1276809 () Bool)

(declare-fun b!5528100 () Bool)

(assert (= bs!1276809 (and b!5528100 b!5528098)))

(declare-fun lambda!296583 () Int)

(declare-fun lt!2247793 () Int)

(assert (=> bs!1276809 (= (= lt!2247793 lt!2247796) (= lambda!296583 lambda!296582))))

(declare-fun bs!1276810 () Bool)

(assert (= bs!1276810 (and b!5528100 d!1751718)))

(assert (=> bs!1276810 (not (= lambda!296583 lambda!296576))))

(declare-fun bs!1276811 () Bool)

(assert (= bs!1276811 (and b!5528100 b!5526958)))

(assert (=> bs!1276811 (= (= lt!2247793 lt!2247660) (= lambda!296583 lambda!296464))))

(declare-fun bs!1276812 () Bool)

(assert (= bs!1276812 (and b!5528100 b!5526961)))

(assert (=> bs!1276812 (= (= lt!2247793 lt!2247667) (= lambda!296583 lambda!296466))))

(declare-fun bs!1276813 () Bool)

(assert (= bs!1276813 (and b!5528100 b!5526963)))

(assert (=> bs!1276813 (= (= lt!2247793 lt!2247664) (= lambda!296583 lambda!296467))))

(declare-fun bs!1276814 () Bool)

(assert (= bs!1276814 (and b!5528100 d!1751632)))

(assert (=> bs!1276814 (not (= lambda!296583 lambda!296555))))

(declare-fun bs!1276815 () Bool)

(assert (= bs!1276815 (and b!5528100 b!5526956)))

(assert (=> bs!1276815 (= (= lt!2247793 lt!2247663) (= lambda!296583 lambda!296463))))

(assert (=> b!5528100 true))

(declare-fun d!1751732 () Bool)

(declare-fun e!3417489 () Bool)

(assert (=> d!1751732 e!3417489))

(declare-fun res!2353938 () Bool)

(assert (=> d!1751732 (=> (not res!2353938) (not e!3417489))))

(assert (=> d!1751732 (= res!2353938 (>= lt!2247793 0))))

(declare-fun e!3417488 () Int)

(assert (=> d!1751732 (= lt!2247793 e!3417488)))

(declare-fun c!967266 () Bool)

(assert (=> d!1751732 (= c!967266 ((_ is Cons!62715) (t!376094 (Cons!62715 lt!2247531 Nil!62715))))))

(assert (=> d!1751732 (= (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lt!2247793)))

(assert (=> b!5528098 (= e!3417488 lt!2247796)))

(assert (=> b!5528098 (= lt!2247796 (maxBigInt!0 (contextDepth!109 (h!69163 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))) (zipperDepth!196 (t!376094 (t!376094 (Cons!62715 lt!2247531 Nil!62715))))))))

(declare-fun lt!2247795 () Unit!155486)

(assert (=> b!5528098 (= lt!2247795 (lemmaForallContextDepthBiggerThanTransitive!101 (t!376094 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lt!2247796 (zipperDepth!196 (t!376094 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))) lambda!296581))))

(assert (=> b!5528098 (forall!14691 (t!376094 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lambda!296582)))

(declare-fun lt!2247794 () Unit!155486)

(assert (=> b!5528098 (= lt!2247794 lt!2247795)))

(declare-fun b!5528099 () Bool)

(assert (=> b!5528099 (= e!3417488 0)))

(assert (=> b!5528100 (= e!3417489 (forall!14691 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lambda!296583))))

(assert (= (and d!1751732 c!967266) b!5528098))

(assert (= (and d!1751732 (not c!967266)) b!5528099))

(assert (= (and d!1751732 res!2353938) b!5528100))

(declare-fun m!6530294 () Bool)

(assert (=> b!5528098 m!6530294))

(assert (=> b!5528098 m!6530294))

(declare-fun m!6530296 () Bool)

(assert (=> b!5528098 m!6530296))

(declare-fun m!6530298 () Bool)

(assert (=> b!5528098 m!6530298))

(declare-fun m!6530302 () Bool)

(assert (=> b!5528098 m!6530302))

(assert (=> b!5528098 m!6530294))

(declare-fun m!6530306 () Bool)

(assert (=> b!5528098 m!6530306))

(assert (=> b!5528098 m!6530302))

(declare-fun m!6530308 () Bool)

(assert (=> b!5528100 m!6530308))

(assert (=> b!5526956 d!1751732))

(declare-fun d!1751738 () Bool)

(declare-fun res!2353942 () Bool)

(declare-fun e!3417494 () Bool)

(assert (=> d!1751738 (=> res!2353942 e!3417494)))

(assert (=> d!1751738 (= res!2353942 ((_ is Nil!62715) (t!376094 (Cons!62715 lt!2247531 Nil!62715))))))

(assert (=> d!1751738 (= (forall!14691 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lambda!296463) e!3417494)))

(declare-fun b!5528106 () Bool)

(declare-fun e!3417495 () Bool)

(assert (=> b!5528106 (= e!3417494 e!3417495)))

(declare-fun res!2353943 () Bool)

(assert (=> b!5528106 (=> (not res!2353943) (not e!3417495))))

(assert (=> b!5528106 (= res!2353943 (dynLambda!24518 lambda!296463 (h!69163 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))))))

(declare-fun b!5528107 () Bool)

(assert (=> b!5528107 (= e!3417495 (forall!14691 (t!376094 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lambda!296463))))

(assert (= (and d!1751738 (not res!2353942)) b!5528106))

(assert (= (and b!5528106 res!2353943) b!5528107))

(declare-fun b_lambda!209725 () Bool)

(assert (=> (not b_lambda!209725) (not b!5528106)))

(declare-fun m!6530310 () Bool)

(assert (=> b!5528106 m!6530310))

(declare-fun m!6530312 () Bool)

(assert (=> b!5528107 m!6530312))

(assert (=> b!5526956 d!1751738))

(declare-fun bs!1276824 () Bool)

(declare-fun b!5528108 () Bool)

(assert (= bs!1276824 (and b!5528108 d!1751334)))

(declare-fun lambda!296585 () Int)

(assert (=> bs!1276824 (not (= lambda!296585 lambda!296499))))

(declare-fun bs!1276826 () Bool)

(assert (= bs!1276826 (and b!5528108 b!5526942)))

(declare-fun lt!2247802 () Int)

(assert (=> bs!1276826 (= (= lt!2247802 lt!2247645) (= lambda!296585 lambda!296452))))

(declare-fun bs!1276828 () Bool)

(assert (= bs!1276828 (and b!5528108 d!1751332)))

(assert (=> bs!1276828 (not (= lambda!296585 lambda!296498))))

(declare-fun bs!1276830 () Bool)

(assert (= bs!1276830 (and b!5528108 b!5527239)))

(assert (=> bs!1276830 (= (= lt!2247802 lt!2247712) (= lambda!296585 lambda!296494))))

(declare-fun bs!1276832 () Bool)

(assert (= bs!1276832 (and b!5528108 b!5527241)))

(assert (=> bs!1276832 (= (= lt!2247802 lt!2247711) (= lambda!296585 lambda!296495))))

(declare-fun bs!1276834 () Bool)

(assert (= bs!1276834 (and b!5528108 d!1751566)))

(assert (=> bs!1276834 (= (= lt!2247802 lt!2247649) (= lambda!296585 lambda!296541))))

(declare-fun bs!1276836 () Bool)

(assert (= bs!1276836 (and b!5528108 b!5527751)))

(assert (=> bs!1276836 (= (= lt!2247802 lt!2247756) (= lambda!296585 lambda!296536))))

(declare-fun bs!1276838 () Bool)

(assert (= bs!1276838 (and b!5528108 b!5527984)))

(assert (=> bs!1276838 (= (= lt!2247802 lt!2247781) (= lambda!296585 lambda!296560))))

(declare-fun bs!1276840 () Bool)

(assert (= bs!1276840 (and b!5528108 d!1751728)))

(assert (=> bs!1276840 (not (= lambda!296585 lambda!296578))))

(declare-fun bs!1276842 () Bool)

(assert (= bs!1276842 (and b!5528108 d!1751292)))

(assert (=> bs!1276842 (not (= lambda!296585 lambda!296483))))

(declare-fun bs!1276844 () Bool)

(assert (= bs!1276844 (and b!5528108 d!1751288)))

(assert (=> bs!1276844 (not (= lambda!296585 lambda!296477))))

(declare-fun bs!1276846 () Bool)

(assert (= bs!1276846 (and b!5528108 b!5526947)))

(assert (=> bs!1276846 (= (= lt!2247802 lt!2247649) (= lambda!296585 lambda!296454))))

(declare-fun bs!1276848 () Bool)

(assert (= bs!1276848 (and b!5528108 d!1751290)))

(assert (=> bs!1276848 (not (= lambda!296585 lambda!296480))))

(declare-fun bs!1276850 () Bool)

(assert (= bs!1276850 (and b!5528108 b!5526949)))

(assert (=> bs!1276850 (= (= lt!2247802 lt!2247648) (= lambda!296585 lambda!296455))))

(declare-fun bs!1276852 () Bool)

(assert (= bs!1276852 (and b!5528108 b!5527749)))

(assert (=> bs!1276852 (= (= lt!2247802 lt!2247757) (= lambda!296585 lambda!296535))))

(declare-fun bs!1276854 () Bool)

(assert (= bs!1276854 (and b!5528108 d!1751656)))

(assert (=> bs!1276854 (= (= lt!2247802 lt!2247645) (= lambda!296585 lambda!296558))))

(declare-fun bs!1276856 () Bool)

(assert (= bs!1276856 (and b!5528108 b!5527986)))

(assert (=> bs!1276856 (= (= lt!2247802 lt!2247780) (= lambda!296585 lambda!296561))))

(declare-fun bs!1276858 () Bool)

(assert (= bs!1276858 (and b!5528108 b!5526944)))

(assert (=> bs!1276858 (= (= lt!2247802 lt!2247644) (= lambda!296585 lambda!296453))))

(assert (=> b!5528108 true))

(declare-fun bs!1276861 () Bool)

(declare-fun b!5528110 () Bool)

(assert (= bs!1276861 (and b!5528110 d!1751334)))

(declare-fun lambda!296586 () Int)

(assert (=> bs!1276861 (not (= lambda!296586 lambda!296499))))

(declare-fun bs!1276862 () Bool)

(assert (= bs!1276862 (and b!5528110 b!5526942)))

(declare-fun lt!2247801 () Int)

(assert (=> bs!1276862 (= (= lt!2247801 lt!2247645) (= lambda!296586 lambda!296452))))

(declare-fun bs!1276864 () Bool)

(assert (= bs!1276864 (and b!5528110 d!1751332)))

(assert (=> bs!1276864 (not (= lambda!296586 lambda!296498))))

(declare-fun bs!1276866 () Bool)

(assert (= bs!1276866 (and b!5528110 b!5527239)))

(assert (=> bs!1276866 (= (= lt!2247801 lt!2247712) (= lambda!296586 lambda!296494))))

(declare-fun bs!1276868 () Bool)

(assert (= bs!1276868 (and b!5528110 b!5527241)))

(assert (=> bs!1276868 (= (= lt!2247801 lt!2247711) (= lambda!296586 lambda!296495))))

(declare-fun bs!1276870 () Bool)

(assert (= bs!1276870 (and b!5528110 b!5527751)))

(assert (=> bs!1276870 (= (= lt!2247801 lt!2247756) (= lambda!296586 lambda!296536))))

(declare-fun bs!1276872 () Bool)

(assert (= bs!1276872 (and b!5528110 b!5527984)))

(assert (=> bs!1276872 (= (= lt!2247801 lt!2247781) (= lambda!296586 lambda!296560))))

(declare-fun bs!1276874 () Bool)

(assert (= bs!1276874 (and b!5528110 d!1751728)))

(assert (=> bs!1276874 (not (= lambda!296586 lambda!296578))))

(declare-fun bs!1276876 () Bool)

(assert (= bs!1276876 (and b!5528110 d!1751292)))

(assert (=> bs!1276876 (not (= lambda!296586 lambda!296483))))

(declare-fun bs!1276878 () Bool)

(assert (= bs!1276878 (and b!5528110 d!1751288)))

(assert (=> bs!1276878 (not (= lambda!296586 lambda!296477))))

(declare-fun bs!1276880 () Bool)

(assert (= bs!1276880 (and b!5528110 b!5526947)))

(assert (=> bs!1276880 (= (= lt!2247801 lt!2247649) (= lambda!296586 lambda!296454))))

(declare-fun bs!1276882 () Bool)

(assert (= bs!1276882 (and b!5528110 d!1751290)))

(assert (=> bs!1276882 (not (= lambda!296586 lambda!296480))))

(declare-fun bs!1276884 () Bool)

(assert (= bs!1276884 (and b!5528110 b!5526949)))

(assert (=> bs!1276884 (= (= lt!2247801 lt!2247648) (= lambda!296586 lambda!296455))))

(declare-fun bs!1276886 () Bool)

(assert (= bs!1276886 (and b!5528110 b!5527749)))

(assert (=> bs!1276886 (= (= lt!2247801 lt!2247757) (= lambda!296586 lambda!296535))))

(declare-fun bs!1276888 () Bool)

(assert (= bs!1276888 (and b!5528110 d!1751656)))

(assert (=> bs!1276888 (= (= lt!2247801 lt!2247645) (= lambda!296586 lambda!296558))))

(declare-fun bs!1276890 () Bool)

(assert (= bs!1276890 (and b!5528110 b!5527986)))

(assert (=> bs!1276890 (= (= lt!2247801 lt!2247780) (= lambda!296586 lambda!296561))))

(declare-fun bs!1276892 () Bool)

(assert (= bs!1276892 (and b!5528110 b!5526944)))

(assert (=> bs!1276892 (= (= lt!2247801 lt!2247644) (= lambda!296586 lambda!296453))))

(declare-fun bs!1276894 () Bool)

(assert (= bs!1276894 (and b!5528110 d!1751566)))

(assert (=> bs!1276894 (= (= lt!2247801 lt!2247649) (= lambda!296586 lambda!296541))))

(declare-fun bs!1276896 () Bool)

(assert (= bs!1276896 (and b!5528110 b!5528108)))

(assert (=> bs!1276896 (= (= lt!2247801 lt!2247802) (= lambda!296586 lambda!296585))))

(assert (=> b!5528110 true))

(declare-fun d!1751740 () Bool)

(declare-fun e!3417496 () Bool)

(assert (=> d!1751740 e!3417496))

(declare-fun res!2353944 () Bool)

(assert (=> d!1751740 (=> (not res!2353944) (not e!3417496))))

(assert (=> d!1751740 (= res!2353944 (>= lt!2247801 0))))

(declare-fun e!3417497 () Int)

(assert (=> d!1751740 (= lt!2247801 e!3417497)))

(declare-fun c!967268 () Bool)

(assert (=> d!1751740 (= c!967268 ((_ is Cons!62714) (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715)))))))

(assert (=> d!1751740 (= (contextDepth!109 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) lt!2247801)))

(assert (=> b!5528108 (= e!3417497 lt!2247802)))

(assert (=> b!5528108 (= lt!2247802 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715))))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715))))))))))

(declare-fun lt!2247803 () Unit!155486)

(assert (=> b!5528108 (= lt!2247803 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715)))) lt!2247802 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715))))))))))

(assert (=> b!5528108 (forall!14690 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715)))) lambda!296585)))

(declare-fun lt!2247804 () Unit!155486)

(assert (=> b!5528108 (= lt!2247804 lt!2247803)))

(declare-fun b!5528109 () Bool)

(assert (=> b!5528109 (= e!3417497 0)))

(assert (=> b!5528110 (= e!3417496 (forall!14690 (exprs!5397 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) lambda!296586))))

(assert (= (and d!1751740 c!967268) b!5528108))

(assert (= (and d!1751740 (not c!967268)) b!5528109))

(assert (= (and d!1751740 res!2353944) b!5528110))

(declare-fun m!6530314 () Bool)

(assert (=> b!5528108 m!6530314))

(declare-fun m!6530316 () Bool)

(assert (=> b!5528108 m!6530316))

(declare-fun m!6530318 () Bool)

(assert (=> b!5528108 m!6530318))

(assert (=> b!5528108 m!6530314))

(assert (=> b!5528108 m!6530318))

(declare-fun m!6530320 () Bool)

(assert (=> b!5528108 m!6530320))

(assert (=> b!5528108 m!6530318))

(declare-fun m!6530322 () Bool)

(assert (=> b!5528108 m!6530322))

(declare-fun m!6530324 () Bool)

(assert (=> b!5528110 m!6530324))

(assert (=> b!5526956 d!1751740))

(declare-fun bs!1276921 () Bool)

(declare-fun d!1751742 () Bool)

(assert (= bs!1276921 (and d!1751742 b!5528098)))

(declare-fun lambda!296591 () Int)

(assert (=> bs!1276921 (not (= lambda!296591 lambda!296582))))

(declare-fun bs!1276922 () Bool)

(assert (= bs!1276922 (and d!1751742 d!1751718)))

(assert (=> bs!1276922 (not (= lambda!296591 lambda!296576))))

(declare-fun bs!1276923 () Bool)

(assert (= bs!1276923 (and d!1751742 b!5526958)))

(assert (=> bs!1276923 (not (= lambda!296591 lambda!296464))))

(declare-fun bs!1276924 () Bool)

(assert (= bs!1276924 (and d!1751742 b!5526961)))

(assert (=> bs!1276924 (not (= lambda!296591 lambda!296466))))

(declare-fun bs!1276925 () Bool)

(assert (= bs!1276925 (and d!1751742 b!5526963)))

(assert (=> bs!1276925 (not (= lambda!296591 lambda!296467))))

(declare-fun bs!1276927 () Bool)

(assert (= bs!1276927 (and d!1751742 d!1751632)))

(assert (=> bs!1276927 (not (= lambda!296591 lambda!296555))))

(declare-fun bs!1276928 () Bool)

(assert (= bs!1276928 (and d!1751742 b!5526956)))

(assert (=> bs!1276928 (not (= lambda!296591 lambda!296463))))

(declare-fun bs!1276929 () Bool)

(assert (= bs!1276929 (and d!1751742 b!5528100)))

(assert (=> bs!1276929 (not (= lambda!296591 lambda!296583))))

(assert (=> d!1751742 true))

(assert (=> d!1751742 true))

(declare-fun order!27127 () Int)

(declare-fun order!27129 () Int)

(declare-fun dynLambda!24519 (Int Int) Int)

(declare-fun dynLambda!24520 (Int Int) Int)

(assert (=> d!1751742 (< (dynLambda!24519 order!27127 lambda!296462) (dynLambda!24520 order!27129 lambda!296591))))

(assert (=> d!1751742 (forall!14691 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lambda!296591)))

(declare-fun lt!2247807 () Unit!155486)

(declare-fun choose!42004 (List!62839 Int Int Int) Unit!155486)

(assert (=> d!1751742 (= lt!2247807 (choose!42004 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lt!2247663 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lambda!296462))))

(assert (=> d!1751742 (>= lt!2247663 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715))))))

(assert (=> d!1751742 (= (lemmaForallContextDepthBiggerThanTransitive!101 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lt!2247663 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247531 Nil!62715))) lambda!296462) lt!2247807)))

(declare-fun bs!1276930 () Bool)

(assert (= bs!1276930 d!1751742))

(declare-fun m!6530354 () Bool)

(assert (=> bs!1276930 m!6530354))

(assert (=> bs!1276930 m!6529156))

(declare-fun m!6530356 () Bool)

(assert (=> bs!1276930 m!6530356))

(assert (=> b!5526956 d!1751742))

(declare-fun d!1751758 () Bool)

(assert (=> d!1751758 (= (nullable!5547 (regOne!31538 (regOne!31538 r!7292))) (nullableFct!1671 (regOne!31538 (regOne!31538 r!7292))))))

(declare-fun bs!1276931 () Bool)

(assert (= bs!1276931 d!1751758))

(declare-fun m!6530358 () Bool)

(assert (=> bs!1276931 m!6530358))

(assert (=> b!5527078 d!1751758))

(assert (=> b!5527235 d!1751296))

(declare-fun d!1751762 () Bool)

(declare-fun c!967278 () Bool)

(assert (=> d!1751762 (= c!967278 ((_ is Nil!62715) lt!2247710))))

(declare-fun e!3417509 () (InoxSet Context!9794))

(assert (=> d!1751762 (= (content!11280 lt!2247710) e!3417509)))

(declare-fun b!5528132 () Bool)

(assert (=> b!5528132 (= e!3417509 ((as const (Array Context!9794 Bool)) false))))

(declare-fun b!5528133 () Bool)

(assert (=> b!5528133 (= e!3417509 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) (h!69163 lt!2247710) true) (content!11280 (t!376094 lt!2247710))))))

(assert (= (and d!1751762 c!967278) b!5528132))

(assert (= (and d!1751762 (not c!967278)) b!5528133))

(declare-fun m!6530368 () Bool)

(assert (=> b!5528133 m!6530368))

(declare-fun m!6530370 () Bool)

(assert (=> b!5528133 m!6530370))

(assert (=> b!5527238 d!1751762))

(assert (=> d!1751272 d!1751284))

(declare-fun d!1751764 () Bool)

(assert (=> d!1751764 (= (flatMap!1126 lt!2247532 lambda!296389) (dynLambda!24512 lambda!296389 lt!2247530))))

(assert (=> d!1751764 true))

(declare-fun _$13!2092 () Unit!155486)

(assert (=> d!1751764 (= (choose!41995 lt!2247532 lt!2247530 lambda!296389) _$13!2092)))

(declare-fun b_lambda!209729 () Bool)

(assert (=> (not b_lambda!209729) (not d!1751764)))

(declare-fun bs!1276932 () Bool)

(assert (= bs!1276932 d!1751764))

(assert (=> bs!1276932 m!6528708))

(assert (=> bs!1276932 m!6529224))

(assert (=> d!1751272 d!1751764))

(declare-fun b!5528163 () Bool)

(declare-fun e!3417523 () Bool)

(declare-fun call!410300 () Bool)

(assert (=> b!5528163 (= e!3417523 call!410300)))

(declare-fun b!5528164 () Bool)

(declare-fun res!2353950 () Bool)

(declare-fun e!3417525 () Bool)

(assert (=> b!5528164 (=> res!2353950 e!3417525)))

(assert (=> b!5528164 (= res!2353950 (not ((_ is Concat!24358) lt!2247683)))))

(declare-fun e!3417522 () Bool)

(assert (=> b!5528164 (= e!3417522 e!3417525)))

(declare-fun b!5528165 () Bool)

(declare-fun e!3417521 () Bool)

(assert (=> b!5528165 (= e!3417521 call!410300)))

(declare-fun b!5528166 () Bool)

(declare-fun e!3417527 () Bool)

(declare-fun call!410302 () Bool)

(assert (=> b!5528166 (= e!3417527 call!410302)))

(declare-fun bm!410296 () Bool)

(declare-fun call!410301 () Bool)

(assert (=> bm!410296 (= call!410301 call!410302)))

(declare-fun b!5528167 () Bool)

(declare-fun e!3417524 () Bool)

(assert (=> b!5528167 (= e!3417524 e!3417527)))

(declare-fun res!2353948 () Bool)

(assert (=> b!5528167 (= res!2353948 (not (nullable!5547 (reg!15842 lt!2247683))))))

(assert (=> b!5528167 (=> (not res!2353948) (not e!3417527))))

(declare-fun b!5528168 () Bool)

(assert (=> b!5528168 (= e!3417524 e!3417522)))

(declare-fun c!967279 () Bool)

(assert (=> b!5528168 (= c!967279 ((_ is Union!15513) lt!2247683))))

(declare-fun d!1751766 () Bool)

(declare-fun res!2353949 () Bool)

(declare-fun e!3417526 () Bool)

(assert (=> d!1751766 (=> res!2353949 e!3417526)))

(assert (=> d!1751766 (= res!2353949 ((_ is ElementMatch!15513) lt!2247683))))

(assert (=> d!1751766 (= (validRegex!7249 lt!2247683) e!3417526)))

(declare-fun bm!410295 () Bool)

(declare-fun c!967280 () Bool)

(assert (=> bm!410295 (= call!410302 (validRegex!7249 (ite c!967280 (reg!15842 lt!2247683) (ite c!967279 (regOne!31539 lt!2247683) (regOne!31538 lt!2247683)))))))

(declare-fun b!5528169 () Bool)

(assert (=> b!5528169 (= e!3417525 e!3417523)))

(declare-fun res!2353951 () Bool)

(assert (=> b!5528169 (=> (not res!2353951) (not e!3417523))))

(assert (=> b!5528169 (= res!2353951 call!410301)))

(declare-fun b!5528170 () Bool)

(declare-fun res!2353947 () Bool)

(assert (=> b!5528170 (=> (not res!2353947) (not e!3417521))))

(assert (=> b!5528170 (= res!2353947 call!410301)))

(assert (=> b!5528170 (= e!3417522 e!3417521)))

(declare-fun b!5528171 () Bool)

(assert (=> b!5528171 (= e!3417526 e!3417524)))

(assert (=> b!5528171 (= c!967280 ((_ is Star!15513) lt!2247683))))

(declare-fun bm!410297 () Bool)

(assert (=> bm!410297 (= call!410300 (validRegex!7249 (ite c!967279 (regTwo!31539 lt!2247683) (regTwo!31538 lt!2247683))))))

(assert (= (and d!1751766 (not res!2353949)) b!5528171))

(assert (= (and b!5528171 c!967280) b!5528167))

(assert (= (and b!5528171 (not c!967280)) b!5528168))

(assert (= (and b!5528167 res!2353948) b!5528166))

(assert (= (and b!5528168 c!967279) b!5528170))

(assert (= (and b!5528168 (not c!967279)) b!5528164))

(assert (= (and b!5528170 res!2353947) b!5528165))

(assert (= (and b!5528164 (not res!2353950)) b!5528169))

(assert (= (and b!5528169 res!2353951) b!5528163))

(assert (= (or b!5528165 b!5528163) bm!410297))

(assert (= (or b!5528170 b!5528169) bm!410296))

(assert (= (or b!5528166 bm!410296) bm!410295))

(declare-fun m!6530374 () Bool)

(assert (=> b!5528167 m!6530374))

(declare-fun m!6530376 () Bool)

(assert (=> bm!410295 m!6530376))

(declare-fun m!6530378 () Bool)

(assert (=> bm!410297 m!6530378))

(assert (=> d!1751290 d!1751766))

(declare-fun d!1751768 () Bool)

(declare-fun res!2353952 () Bool)

(declare-fun e!3417532 () Bool)

(assert (=> d!1751768 (=> res!2353952 e!3417532)))

(assert (=> d!1751768 (= res!2353952 ((_ is Nil!62714) (unfocusZipperList!941 zl!343)))))

(assert (=> d!1751768 (= (forall!14690 (unfocusZipperList!941 zl!343) lambda!296480) e!3417532)))

(declare-fun b!5528188 () Bool)

(declare-fun e!3417533 () Bool)

(assert (=> b!5528188 (= e!3417532 e!3417533)))

(declare-fun res!2353953 () Bool)

(assert (=> b!5528188 (=> (not res!2353953) (not e!3417533))))

(assert (=> b!5528188 (= res!2353953 (dynLambda!24517 lambda!296480 (h!69162 (unfocusZipperList!941 zl!343))))))

(declare-fun b!5528189 () Bool)

(assert (=> b!5528189 (= e!3417533 (forall!14690 (t!376093 (unfocusZipperList!941 zl!343)) lambda!296480))))

(assert (= (and d!1751768 (not res!2353952)) b!5528188))

(assert (= (and b!5528188 res!2353953) b!5528189))

(declare-fun b_lambda!209731 () Bool)

(assert (=> (not b_lambda!209731) (not b!5528188)))

(declare-fun m!6530380 () Bool)

(assert (=> b!5528188 m!6530380))

(declare-fun m!6530382 () Bool)

(assert (=> b!5528189 m!6530382))

(assert (=> d!1751290 d!1751768))

(declare-fun d!1751770 () Bool)

(declare-fun c!967281 () Bool)

(assert (=> d!1751770 (= c!967281 (isEmpty!34505 (tail!10924 (t!376095 s!2326))))))

(declare-fun e!3417536 () Bool)

(assert (=> d!1751770 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247554 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))) e!3417536)))

(declare-fun b!5528198 () Bool)

(assert (=> b!5528198 (= e!3417536 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247554 (head!11829 (t!376095 s!2326)))))))

(declare-fun b!5528199 () Bool)

(assert (=> b!5528199 (= e!3417536 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247554 (head!11829 (t!376095 s!2326))) (head!11829 (tail!10924 (t!376095 s!2326)))) (tail!10924 (tail!10924 (t!376095 s!2326)))))))

(assert (= (and d!1751770 c!967281) b!5528198))

(assert (= (and d!1751770 (not c!967281)) b!5528199))

(assert (=> d!1751770 m!6529216))

(assert (=> d!1751770 m!6530058))

(assert (=> b!5528198 m!6529388))

(declare-fun m!6530384 () Bool)

(assert (=> b!5528198 m!6530384))

(assert (=> b!5528199 m!6529216))

(assert (=> b!5528199 m!6530062))

(assert (=> b!5528199 m!6529388))

(assert (=> b!5528199 m!6530062))

(declare-fun m!6530386 () Bool)

(assert (=> b!5528199 m!6530386))

(assert (=> b!5528199 m!6529216))

(assert (=> b!5528199 m!6530066))

(assert (=> b!5528199 m!6530386))

(assert (=> b!5528199 m!6530066))

(declare-fun m!6530388 () Bool)

(assert (=> b!5528199 m!6530388))

(assert (=> b!5527232 d!1751770))

(declare-fun bs!1276933 () Bool)

(declare-fun d!1751772 () Bool)

(assert (= bs!1276933 (and d!1751772 d!1751318)))

(declare-fun lambda!296592 () Int)

(assert (=> bs!1276933 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296592 lambda!296493))))

(declare-fun bs!1276934 () Bool)

(assert (= bs!1276934 (and d!1751772 d!1751268)))

(assert (=> bs!1276934 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296592 lambda!296474))))

(declare-fun bs!1276935 () Bool)

(assert (= bs!1276935 (and d!1751772 d!1751600)))

(assert (=> bs!1276935 (= (= (head!11829 (t!376095 s!2326)) (head!11829 s!2326)) (= lambda!296592 lambda!296549))))

(declare-fun bs!1276936 () Bool)

(assert (= bs!1276936 (and d!1751772 b!5526445)))

(assert (=> bs!1276936 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296592 lambda!296389))))

(declare-fun bs!1276937 () Bool)

(assert (= bs!1276937 (and d!1751772 d!1751640)))

(assert (=> bs!1276937 (= lambda!296592 lambda!296557)))

(declare-fun bs!1276938 () Bool)

(assert (= bs!1276938 (and d!1751772 d!1751246)))

(assert (=> bs!1276938 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296592 lambda!296447))))

(assert (=> d!1751772 true))

(assert (=> d!1751772 (= (derivationStepZipper!1618 lt!2247554 (head!11829 (t!376095 s!2326))) (flatMap!1126 lt!2247554 lambda!296592))))

(declare-fun bs!1276939 () Bool)

(assert (= bs!1276939 d!1751772))

(declare-fun m!6530390 () Bool)

(assert (=> bs!1276939 m!6530390))

(assert (=> b!5527232 d!1751772))

(assert (=> b!5527232 d!1751642))

(assert (=> b!5527232 d!1751644))

(declare-fun d!1751774 () Bool)

(assert (=> d!1751774 (= (isEmpty!34505 s!2326) ((_ is Nil!62716) s!2326))))

(assert (=> bm!410058 d!1751774))

(assert (=> d!1751262 d!1751260))

(assert (=> d!1751262 d!1751258))

(declare-fun d!1751776 () Bool)

(assert (=> d!1751776 (= (matchR!7698 r!7292 s!2326) (matchRSpec!2616 r!7292 s!2326))))

(assert (=> d!1751776 true))

(declare-fun _$88!3802 () Unit!155486)

(assert (=> d!1751776 (= (choose!41993 r!7292 s!2326) _$88!3802)))

(declare-fun bs!1276941 () Bool)

(assert (= bs!1276941 d!1751776))

(assert (=> bs!1276941 m!6528782))

(assert (=> bs!1276941 m!6528780))

(assert (=> d!1751262 d!1751776))

(assert (=> d!1751262 d!1751312))

(declare-fun d!1751782 () Bool)

(assert (=> d!1751782 (= (nullable!5547 (h!69162 (exprs!5397 (h!69163 zl!343)))) (nullableFct!1671 (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun bs!1276944 () Bool)

(assert (= bs!1276944 d!1751782))

(declare-fun m!6530398 () Bool)

(assert (=> bs!1276944 m!6530398))

(assert (=> b!5527242 d!1751782))

(declare-fun b!5528261 () Bool)

(declare-fun e!3417555 () Bool)

(assert (=> b!5528261 (= e!3417555 (nullable!5547 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))))))

(declare-fun b!5528262 () Bool)

(declare-fun e!3417553 () (InoxSet Context!9794))

(declare-fun e!3417554 () (InoxSet Context!9794))

(assert (=> b!5528262 (= e!3417553 e!3417554)))

(declare-fun c!967282 () Bool)

(assert (=> b!5528262 (= c!967282 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(declare-fun b!5528263 () Bool)

(assert (=> b!5528263 (= e!3417554 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410298 () Bool)

(declare-fun call!410303 () (InoxSet Context!9794))

(assert (=> bm!410298 (= call!410303 (derivationStepZipperDown!855 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))) (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))) (h!69164 s!2326)))))

(declare-fun b!5528264 () Bool)

(assert (=> b!5528264 (= e!3417554 call!410303)))

(declare-fun d!1751788 () Bool)

(declare-fun c!967283 () Bool)

(assert (=> d!1751788 (= c!967283 e!3417555)))

(declare-fun res!2353954 () Bool)

(assert (=> d!1751788 (=> (not res!2353954) (not e!3417555))))

(assert (=> d!1751788 (= res!2353954 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531))))))))

(assert (=> d!1751788 (= (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 lt!2247531))) (h!69164 s!2326)) e!3417553)))

(declare-fun b!5528265 () Bool)

(assert (=> b!5528265 (= e!3417553 ((_ map or) call!410303 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247531)))))) (h!69164 s!2326))))))

(assert (= (and d!1751788 res!2353954) b!5528261))

(assert (= (and d!1751788 c!967283) b!5528265))

(assert (= (and d!1751788 (not c!967283)) b!5528262))

(assert (= (and b!5528262 c!967282) b!5528264))

(assert (= (and b!5528262 (not c!967282)) b!5528263))

(assert (= (or b!5528265 b!5528264) bm!410298))

(declare-fun m!6530402 () Bool)

(assert (=> b!5528261 m!6530402))

(declare-fun m!6530404 () Bool)

(assert (=> bm!410298 m!6530404))

(declare-fun m!6530406 () Bool)

(assert (=> b!5528265 m!6530406))

(assert (=> b!5527088 d!1751788))

(declare-fun bs!1276955 () Bool)

(declare-fun d!1751802 () Bool)

(assert (= bs!1276955 (and d!1751802 d!1751334)))

(declare-fun lambda!296593 () Int)

(assert (=> bs!1276955 (not (= lambda!296593 lambda!296499))))

(declare-fun bs!1276958 () Bool)

(assert (= bs!1276958 (and d!1751802 b!5526942)))

(assert (=> bs!1276958 (= (= lt!2247712 lt!2247645) (= lambda!296593 lambda!296452))))

(declare-fun bs!1276959 () Bool)

(assert (= bs!1276959 (and d!1751802 d!1751332)))

(assert (=> bs!1276959 (not (= lambda!296593 lambda!296498))))

(declare-fun bs!1276960 () Bool)

(assert (= bs!1276960 (and d!1751802 b!5527239)))

(assert (=> bs!1276960 (= lambda!296593 lambda!296494)))

(declare-fun bs!1276961 () Bool)

(assert (= bs!1276961 (and d!1751802 b!5527241)))

(assert (=> bs!1276961 (= (= lt!2247712 lt!2247711) (= lambda!296593 lambda!296495))))

(declare-fun bs!1276962 () Bool)

(assert (= bs!1276962 (and d!1751802 b!5527751)))

(assert (=> bs!1276962 (= (= lt!2247712 lt!2247756) (= lambda!296593 lambda!296536))))

(declare-fun bs!1276963 () Bool)

(assert (= bs!1276963 (and d!1751802 b!5527984)))

(assert (=> bs!1276963 (= (= lt!2247712 lt!2247781) (= lambda!296593 lambda!296560))))

(declare-fun bs!1276964 () Bool)

(assert (= bs!1276964 (and d!1751802 d!1751728)))

(assert (=> bs!1276964 (not (= lambda!296593 lambda!296578))))

(declare-fun bs!1276965 () Bool)

(assert (= bs!1276965 (and d!1751802 d!1751292)))

(assert (=> bs!1276965 (not (= lambda!296593 lambda!296483))))

(declare-fun bs!1276966 () Bool)

(assert (= bs!1276966 (and d!1751802 d!1751288)))

(assert (=> bs!1276966 (not (= lambda!296593 lambda!296477))))

(declare-fun bs!1276967 () Bool)

(assert (= bs!1276967 (and d!1751802 d!1751290)))

(assert (=> bs!1276967 (not (= lambda!296593 lambda!296480))))

(declare-fun bs!1276968 () Bool)

(assert (= bs!1276968 (and d!1751802 b!5526949)))

(assert (=> bs!1276968 (= (= lt!2247712 lt!2247648) (= lambda!296593 lambda!296455))))

(declare-fun bs!1276969 () Bool)

(assert (= bs!1276969 (and d!1751802 b!5527749)))

(assert (=> bs!1276969 (= (= lt!2247712 lt!2247757) (= lambda!296593 lambda!296535))))

(declare-fun bs!1276970 () Bool)

(assert (= bs!1276970 (and d!1751802 d!1751656)))

(assert (=> bs!1276970 (= (= lt!2247712 lt!2247645) (= lambda!296593 lambda!296558))))

(declare-fun bs!1276971 () Bool)

(assert (= bs!1276971 (and d!1751802 b!5527986)))

(assert (=> bs!1276971 (= (= lt!2247712 lt!2247780) (= lambda!296593 lambda!296561))))

(declare-fun bs!1276972 () Bool)

(assert (= bs!1276972 (and d!1751802 b!5526944)))

(assert (=> bs!1276972 (= (= lt!2247712 lt!2247644) (= lambda!296593 lambda!296453))))

(declare-fun bs!1276973 () Bool)

(assert (= bs!1276973 (and d!1751802 d!1751566)))

(assert (=> bs!1276973 (= (= lt!2247712 lt!2247649) (= lambda!296593 lambda!296541))))

(declare-fun bs!1276974 () Bool)

(assert (= bs!1276974 (and d!1751802 b!5528108)))

(assert (=> bs!1276974 (= (= lt!2247712 lt!2247802) (= lambda!296593 lambda!296585))))

(declare-fun bs!1276975 () Bool)

(assert (= bs!1276975 (and d!1751802 b!5528110)))

(assert (=> bs!1276975 (= (= lt!2247712 lt!2247801) (= lambda!296593 lambda!296586))))

(declare-fun bs!1276976 () Bool)

(assert (= bs!1276976 (and d!1751802 b!5526947)))

(assert (=> bs!1276976 (= (= lt!2247712 lt!2247649) (= lambda!296593 lambda!296454))))

(assert (=> d!1751802 true))

(assert (=> d!1751802 (forall!14690 (t!376093 (exprs!5397 lt!2247530)) lambda!296593)))

(declare-fun lt!2247808 () Unit!155486)

(assert (=> d!1751802 (= lt!2247808 (choose!42002 (t!376093 (exprs!5397 lt!2247530)) lt!2247712 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(assert (=> d!1751802 (>= lt!2247712 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))))

(assert (=> d!1751802 (= (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 lt!2247530)) lt!2247712 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))) lt!2247808)))

(declare-fun bs!1276977 () Bool)

(assert (= bs!1276977 d!1751802))

(declare-fun m!6530414 () Bool)

(assert (=> bs!1276977 m!6530414))

(assert (=> bs!1276977 m!6529406))

(declare-fun m!6530416 () Bool)

(assert (=> bs!1276977 m!6530416))

(assert (=> b!5527239 d!1751802))

(declare-fun d!1751814 () Bool)

(declare-fun res!2353955 () Bool)

(declare-fun e!3417556 () Bool)

(assert (=> d!1751814 (=> res!2353955 e!3417556)))

(assert (=> d!1751814 (= res!2353955 ((_ is Nil!62714) (t!376093 (exprs!5397 lt!2247530))))))

(assert (=> d!1751814 (= (forall!14690 (t!376093 (exprs!5397 lt!2247530)) lambda!296494) e!3417556)))

(declare-fun b!5528266 () Bool)

(declare-fun e!3417557 () Bool)

(assert (=> b!5528266 (= e!3417556 e!3417557)))

(declare-fun res!2353956 () Bool)

(assert (=> b!5528266 (=> (not res!2353956) (not e!3417557))))

(assert (=> b!5528266 (= res!2353956 (dynLambda!24517 lambda!296494 (h!69162 (t!376093 (exprs!5397 lt!2247530)))))))

(declare-fun b!5528267 () Bool)

(assert (=> b!5528267 (= e!3417557 (forall!14690 (t!376093 (t!376093 (exprs!5397 lt!2247530))) lambda!296494))))

(assert (= (and d!1751814 (not res!2353955)) b!5528266))

(assert (= (and b!5528266 res!2353956) b!5528267))

(declare-fun b_lambda!209769 () Bool)

(assert (=> (not b_lambda!209769) (not b!5528266)))

(declare-fun m!6530418 () Bool)

(assert (=> b!5528266 m!6530418))

(declare-fun m!6530420 () Bool)

(assert (=> b!5528267 m!6530420))

(assert (=> b!5527239 d!1751814))

(declare-fun bs!1276978 () Bool)

(declare-fun b!5528268 () Bool)

(assert (= bs!1276978 (and b!5528268 d!1751334)))

(declare-fun lambda!296594 () Int)

(assert (=> bs!1276978 (not (= lambda!296594 lambda!296499))))

(declare-fun bs!1276979 () Bool)

(assert (= bs!1276979 (and b!5528268 b!5526942)))

(declare-fun lt!2247810 () Int)

(assert (=> bs!1276979 (= (= lt!2247810 lt!2247645) (= lambda!296594 lambda!296452))))

(declare-fun bs!1276980 () Bool)

(assert (= bs!1276980 (and b!5528268 b!5527239)))

(assert (=> bs!1276980 (= (= lt!2247810 lt!2247712) (= lambda!296594 lambda!296494))))

(declare-fun bs!1276981 () Bool)

(assert (= bs!1276981 (and b!5528268 b!5527241)))

(assert (=> bs!1276981 (= (= lt!2247810 lt!2247711) (= lambda!296594 lambda!296495))))

(declare-fun bs!1276982 () Bool)

(assert (= bs!1276982 (and b!5528268 b!5527751)))

(assert (=> bs!1276982 (= (= lt!2247810 lt!2247756) (= lambda!296594 lambda!296536))))

(declare-fun bs!1276983 () Bool)

(assert (= bs!1276983 (and b!5528268 b!5527984)))

(assert (=> bs!1276983 (= (= lt!2247810 lt!2247781) (= lambda!296594 lambda!296560))))

(declare-fun bs!1276984 () Bool)

(assert (= bs!1276984 (and b!5528268 d!1751728)))

(assert (=> bs!1276984 (not (= lambda!296594 lambda!296578))))

(declare-fun bs!1276985 () Bool)

(assert (= bs!1276985 (and b!5528268 d!1751292)))

(assert (=> bs!1276985 (not (= lambda!296594 lambda!296483))))

(declare-fun bs!1276986 () Bool)

(assert (= bs!1276986 (and b!5528268 d!1751288)))

(assert (=> bs!1276986 (not (= lambda!296594 lambda!296477))))

(declare-fun bs!1276987 () Bool)

(assert (= bs!1276987 (and b!5528268 d!1751290)))

(assert (=> bs!1276987 (not (= lambda!296594 lambda!296480))))

(declare-fun bs!1276988 () Bool)

(assert (= bs!1276988 (and b!5528268 b!5526949)))

(assert (=> bs!1276988 (= (= lt!2247810 lt!2247648) (= lambda!296594 lambda!296455))))

(declare-fun bs!1276989 () Bool)

(assert (= bs!1276989 (and b!5528268 d!1751802)))

(assert (=> bs!1276989 (= (= lt!2247810 lt!2247712) (= lambda!296594 lambda!296593))))

(declare-fun bs!1276990 () Bool)

(assert (= bs!1276990 (and b!5528268 d!1751332)))

(assert (=> bs!1276990 (not (= lambda!296594 lambda!296498))))

(declare-fun bs!1276991 () Bool)

(assert (= bs!1276991 (and b!5528268 b!5527749)))

(assert (=> bs!1276991 (= (= lt!2247810 lt!2247757) (= lambda!296594 lambda!296535))))

(declare-fun bs!1276992 () Bool)

(assert (= bs!1276992 (and b!5528268 d!1751656)))

(assert (=> bs!1276992 (= (= lt!2247810 lt!2247645) (= lambda!296594 lambda!296558))))

(declare-fun bs!1276993 () Bool)

(assert (= bs!1276993 (and b!5528268 b!5527986)))

(assert (=> bs!1276993 (= (= lt!2247810 lt!2247780) (= lambda!296594 lambda!296561))))

(declare-fun bs!1276994 () Bool)

(assert (= bs!1276994 (and b!5528268 b!5526944)))

(assert (=> bs!1276994 (= (= lt!2247810 lt!2247644) (= lambda!296594 lambda!296453))))

(declare-fun bs!1276995 () Bool)

(assert (= bs!1276995 (and b!5528268 d!1751566)))

(assert (=> bs!1276995 (= (= lt!2247810 lt!2247649) (= lambda!296594 lambda!296541))))

(declare-fun bs!1276996 () Bool)

(assert (= bs!1276996 (and b!5528268 b!5528108)))

(assert (=> bs!1276996 (= (= lt!2247810 lt!2247802) (= lambda!296594 lambda!296585))))

(declare-fun bs!1276997 () Bool)

(assert (= bs!1276997 (and b!5528268 b!5528110)))

(assert (=> bs!1276997 (= (= lt!2247810 lt!2247801) (= lambda!296594 lambda!296586))))

(declare-fun bs!1276998 () Bool)

(assert (= bs!1276998 (and b!5528268 b!5526947)))

(assert (=> bs!1276998 (= (= lt!2247810 lt!2247649) (= lambda!296594 lambda!296454))))

(assert (=> b!5528268 true))

(declare-fun bs!1276999 () Bool)

(declare-fun b!5528270 () Bool)

(assert (= bs!1276999 (and b!5528270 d!1751334)))

(declare-fun lambda!296595 () Int)

(assert (=> bs!1276999 (not (= lambda!296595 lambda!296499))))

(declare-fun bs!1277000 () Bool)

(assert (= bs!1277000 (and b!5528270 b!5526942)))

(declare-fun lt!2247809 () Int)

(assert (=> bs!1277000 (= (= lt!2247809 lt!2247645) (= lambda!296595 lambda!296452))))

(declare-fun bs!1277001 () Bool)

(assert (= bs!1277001 (and b!5528270 b!5527239)))

(assert (=> bs!1277001 (= (= lt!2247809 lt!2247712) (= lambda!296595 lambda!296494))))

(declare-fun bs!1277002 () Bool)

(assert (= bs!1277002 (and b!5528270 b!5527241)))

(assert (=> bs!1277002 (= (= lt!2247809 lt!2247711) (= lambda!296595 lambda!296495))))

(declare-fun bs!1277003 () Bool)

(assert (= bs!1277003 (and b!5528270 b!5527751)))

(assert (=> bs!1277003 (= (= lt!2247809 lt!2247756) (= lambda!296595 lambda!296536))))

(declare-fun bs!1277004 () Bool)

(assert (= bs!1277004 (and b!5528270 b!5527984)))

(assert (=> bs!1277004 (= (= lt!2247809 lt!2247781) (= lambda!296595 lambda!296560))))

(declare-fun bs!1277005 () Bool)

(assert (= bs!1277005 (and b!5528270 d!1751728)))

(assert (=> bs!1277005 (not (= lambda!296595 lambda!296578))))

(declare-fun bs!1277006 () Bool)

(assert (= bs!1277006 (and b!5528270 d!1751292)))

(assert (=> bs!1277006 (not (= lambda!296595 lambda!296483))))

(declare-fun bs!1277007 () Bool)

(assert (= bs!1277007 (and b!5528270 d!1751288)))

(assert (=> bs!1277007 (not (= lambda!296595 lambda!296477))))

(declare-fun bs!1277008 () Bool)

(assert (= bs!1277008 (and b!5528270 d!1751290)))

(assert (=> bs!1277008 (not (= lambda!296595 lambda!296480))))

(declare-fun bs!1277009 () Bool)

(assert (= bs!1277009 (and b!5528270 d!1751802)))

(assert (=> bs!1277009 (= (= lt!2247809 lt!2247712) (= lambda!296595 lambda!296593))))

(declare-fun bs!1277010 () Bool)

(assert (= bs!1277010 (and b!5528270 d!1751332)))

(assert (=> bs!1277010 (not (= lambda!296595 lambda!296498))))

(declare-fun bs!1277011 () Bool)

(assert (= bs!1277011 (and b!5528270 b!5527749)))

(assert (=> bs!1277011 (= (= lt!2247809 lt!2247757) (= lambda!296595 lambda!296535))))

(declare-fun bs!1277012 () Bool)

(assert (= bs!1277012 (and b!5528270 d!1751656)))

(assert (=> bs!1277012 (= (= lt!2247809 lt!2247645) (= lambda!296595 lambda!296558))))

(declare-fun bs!1277013 () Bool)

(assert (= bs!1277013 (and b!5528270 b!5527986)))

(assert (=> bs!1277013 (= (= lt!2247809 lt!2247780) (= lambda!296595 lambda!296561))))

(declare-fun bs!1277014 () Bool)

(assert (= bs!1277014 (and b!5528270 b!5526944)))

(assert (=> bs!1277014 (= (= lt!2247809 lt!2247644) (= lambda!296595 lambda!296453))))

(declare-fun bs!1277015 () Bool)

(assert (= bs!1277015 (and b!5528270 d!1751566)))

(assert (=> bs!1277015 (= (= lt!2247809 lt!2247649) (= lambda!296595 lambda!296541))))

(declare-fun bs!1277016 () Bool)

(assert (= bs!1277016 (and b!5528270 b!5528108)))

(assert (=> bs!1277016 (= (= lt!2247809 lt!2247802) (= lambda!296595 lambda!296585))))

(declare-fun bs!1277017 () Bool)

(assert (= bs!1277017 (and b!5528270 b!5528110)))

(assert (=> bs!1277017 (= (= lt!2247809 lt!2247801) (= lambda!296595 lambda!296586))))

(declare-fun bs!1277018 () Bool)

(assert (= bs!1277018 (and b!5528270 b!5526947)))

(assert (=> bs!1277018 (= (= lt!2247809 lt!2247649) (= lambda!296595 lambda!296454))))

(declare-fun bs!1277019 () Bool)

(assert (= bs!1277019 (and b!5528270 b!5528268)))

(assert (=> bs!1277019 (= (= lt!2247809 lt!2247810) (= lambda!296595 lambda!296594))))

(declare-fun bs!1277020 () Bool)

(assert (= bs!1277020 (and b!5528270 b!5526949)))

(assert (=> bs!1277020 (= (= lt!2247809 lt!2247648) (= lambda!296595 lambda!296455))))

(assert (=> b!5528270 true))

(declare-fun d!1751816 () Bool)

(declare-fun e!3417558 () Bool)

(assert (=> d!1751816 e!3417558))

(declare-fun res!2353957 () Bool)

(assert (=> d!1751816 (=> (not res!2353957) (not e!3417558))))

(assert (=> d!1751816 (= res!2353957 (>= lt!2247809 0))))

(declare-fun e!3417559 () Int)

(assert (=> d!1751816 (= lt!2247809 e!3417559)))

(declare-fun c!967284 () Bool)

(assert (=> d!1751816 (= c!967284 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(assert (=> d!1751816 (= (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))) lt!2247809)))

(assert (=> b!5528268 (= e!3417559 lt!2247810)))

(assert (=> b!5528268 (= lt!2247810 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))))))))

(declare-fun lt!2247811 () Unit!155486)

(assert (=> b!5528268 (= lt!2247811 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))) lt!2247810 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))))))))

(assert (=> b!5528268 (forall!14690 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))) lambda!296594)))

(declare-fun lt!2247812 () Unit!155486)

(assert (=> b!5528268 (= lt!2247812 lt!2247811)))

(declare-fun b!5528269 () Bool)

(assert (=> b!5528269 (= e!3417559 0)))

(assert (=> b!5528270 (= e!3417558 (forall!14690 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))) lambda!296595))))

(assert (= (and d!1751816 c!967284) b!5528268))

(assert (= (and d!1751816 (not c!967284)) b!5528269))

(assert (= (and d!1751816 res!2353957) b!5528270))

(declare-fun m!6530422 () Bool)

(assert (=> b!5528268 m!6530422))

(declare-fun m!6530424 () Bool)

(assert (=> b!5528268 m!6530424))

(declare-fun m!6530426 () Bool)

(assert (=> b!5528268 m!6530426))

(assert (=> b!5528268 m!6530422))

(assert (=> b!5528268 m!6530426))

(declare-fun m!6530428 () Bool)

(assert (=> b!5528268 m!6530428))

(assert (=> b!5528268 m!6530426))

(declare-fun m!6530430 () Bool)

(assert (=> b!5528268 m!6530430))

(declare-fun m!6530432 () Bool)

(assert (=> b!5528270 m!6530432))

(assert (=> b!5527239 d!1751816))

(declare-fun b!5528271 () Bool)

(declare-fun e!3417564 () Bool)

(declare-fun lt!2247813 () Int)

(declare-fun call!410308 () Int)

(assert (=> b!5528271 (= e!3417564 (> lt!2247813 call!410308))))

(declare-fun b!5528272 () Bool)

(declare-fun e!3417568 () Bool)

(declare-fun call!410305 () Int)

(assert (=> b!5528272 (= e!3417568 (> lt!2247813 call!410305))))

(declare-fun b!5528273 () Bool)

(declare-fun e!3417563 () Int)

(assert (=> b!5528273 (= e!3417563 1)))

(declare-fun b!5528274 () Bool)

(declare-fun e!3417562 () Bool)

(declare-fun call!410309 () Int)

(assert (=> b!5528274 (= e!3417562 (> lt!2247813 call!410309))))

(declare-fun b!5528275 () Bool)

(assert (=> b!5528275 (= e!3417564 (= lt!2247813 1))))

(declare-fun b!5528276 () Bool)

(declare-fun e!3417565 () Bool)

(declare-fun e!3417561 () Bool)

(assert (=> b!5528276 (= e!3417565 e!3417561)))

(declare-fun c!967288 () Bool)

(assert (=> b!5528276 (= c!967288 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5528277 () Bool)

(declare-fun e!3417566 () Bool)

(assert (=> b!5528277 (= e!3417566 e!3417565)))

(declare-fun c!967285 () Bool)

(assert (=> b!5528277 (= c!967285 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5528278 () Bool)

(assert (=> b!5528278 (= e!3417565 e!3417568)))

(declare-fun res!2353959 () Bool)

(assert (=> b!5528278 (= res!2353959 (> lt!2247813 call!410309))))

(assert (=> b!5528278 (=> (not res!2353959) (not e!3417568))))

(declare-fun b!5528279 () Bool)

(declare-fun c!967289 () Bool)

(assert (=> b!5528279 (= c!967289 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun e!3417567 () Int)

(declare-fun e!3417560 () Int)

(assert (=> b!5528279 (= e!3417567 e!3417560)))

(declare-fun b!5528280 () Bool)

(declare-fun c!967287 () Bool)

(assert (=> b!5528280 (= c!967287 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247530))))))

(assert (=> b!5528280 (= e!3417561 e!3417564)))

(declare-fun b!5528281 () Bool)

(declare-fun e!3417569 () Int)

(declare-fun call!410310 () Int)

(assert (=> b!5528281 (= e!3417569 (+ 1 call!410310))))

(declare-fun call!410307 () Int)

(declare-fun bm!410299 () Bool)

(declare-fun c!967291 () Bool)

(assert (=> bm!410299 (= call!410307 (regexDepth!213 (ite c!967291 (reg!15842 (h!69162 (exprs!5397 lt!2247530))) (ite c!967289 (regTwo!31539 (h!69162 (exprs!5397 lt!2247530))) (regOne!31538 (h!69162 (exprs!5397 lt!2247530)))))))))

(declare-fun b!5528282 () Bool)

(assert (=> b!5528282 (= e!3417560 e!3417569)))

(declare-fun c!967290 () Bool)

(assert (=> b!5528282 (= c!967290 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5528283 () Bool)

(declare-fun res!2353960 () Bool)

(assert (=> b!5528283 (=> (not res!2353960) (not e!3417562))))

(assert (=> b!5528283 (= res!2353960 (> lt!2247813 call!410308))))

(assert (=> b!5528283 (= e!3417561 e!3417562)))

(declare-fun d!1751818 () Bool)

(assert (=> d!1751818 e!3417566))

(declare-fun res!2353958 () Bool)

(assert (=> d!1751818 (=> (not res!2353958) (not e!3417566))))

(assert (=> d!1751818 (= res!2353958 (> lt!2247813 0))))

(assert (=> d!1751818 (= lt!2247813 e!3417563)))

(declare-fun c!967286 () Bool)

(assert (=> d!1751818 (= c!967286 ((_ is ElementMatch!15513) (h!69162 (exprs!5397 lt!2247530))))))

(assert (=> d!1751818 (= (regexDepth!213 (h!69162 (exprs!5397 lt!2247530))) lt!2247813)))

(declare-fun bm!410300 () Bool)

(assert (=> bm!410300 (= call!410309 (regexDepth!213 (ite c!967285 (regOne!31539 (h!69162 (exprs!5397 lt!2247530))) (regTwo!31538 (h!69162 (exprs!5397 lt!2247530))))))))

(declare-fun bm!410301 () Bool)

(assert (=> bm!410301 (= call!410308 call!410305)))

(declare-fun b!5528284 () Bool)

(assert (=> b!5528284 (= e!3417563 e!3417567)))

(assert (=> b!5528284 (= c!967291 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5528285 () Bool)

(assert (=> b!5528285 (= e!3417567 (+ 1 call!410307))))

(declare-fun call!410304 () Int)

(declare-fun call!410306 () Int)

(declare-fun bm!410302 () Bool)

(assert (=> bm!410302 (= call!410310 (maxBigInt!0 (ite c!967289 call!410306 call!410304) (ite c!967289 call!410304 call!410306)))))

(declare-fun bm!410303 () Bool)

(assert (=> bm!410303 (= call!410304 call!410307)))

(declare-fun b!5528286 () Bool)

(assert (=> b!5528286 (= e!3417560 (+ 1 call!410310))))

(declare-fun bm!410304 () Bool)

(assert (=> bm!410304 (= call!410305 (regexDepth!213 (ite c!967285 (regTwo!31539 (h!69162 (exprs!5397 lt!2247530))) (ite c!967288 (regOne!31538 (h!69162 (exprs!5397 lt!2247530))) (reg!15842 (h!69162 (exprs!5397 lt!2247530)))))))))

(declare-fun b!5528287 () Bool)

(assert (=> b!5528287 (= e!3417569 1)))

(declare-fun bm!410305 () Bool)

(assert (=> bm!410305 (= call!410306 (regexDepth!213 (ite c!967289 (regOne!31539 (h!69162 (exprs!5397 lt!2247530))) (regTwo!31538 (h!69162 (exprs!5397 lt!2247530))))))))

(assert (= (and d!1751818 c!967286) b!5528273))

(assert (= (and d!1751818 (not c!967286)) b!5528284))

(assert (= (and b!5528284 c!967291) b!5528285))

(assert (= (and b!5528284 (not c!967291)) b!5528279))

(assert (= (and b!5528279 c!967289) b!5528286))

(assert (= (and b!5528279 (not c!967289)) b!5528282))

(assert (= (and b!5528282 c!967290) b!5528281))

(assert (= (and b!5528282 (not c!967290)) b!5528287))

(assert (= (or b!5528286 b!5528281) bm!410303))

(assert (= (or b!5528286 b!5528281) bm!410305))

(assert (= (or b!5528286 b!5528281) bm!410302))

(assert (= (or b!5528285 bm!410303) bm!410299))

(assert (= (and d!1751818 res!2353958) b!5528277))

(assert (= (and b!5528277 c!967285) b!5528278))

(assert (= (and b!5528277 (not c!967285)) b!5528276))

(assert (= (and b!5528278 res!2353959) b!5528272))

(assert (= (and b!5528276 c!967288) b!5528283))

(assert (= (and b!5528276 (not c!967288)) b!5528280))

(assert (= (and b!5528283 res!2353960) b!5528274))

(assert (= (and b!5528280 c!967287) b!5528271))

(assert (= (and b!5528280 (not c!967287)) b!5528275))

(assert (= (or b!5528283 b!5528271) bm!410301))

(assert (= (or b!5528272 bm!410301) bm!410304))

(assert (= (or b!5528278 b!5528274) bm!410300))

(declare-fun m!6530434 () Bool)

(assert (=> bm!410300 m!6530434))

(declare-fun m!6530436 () Bool)

(assert (=> bm!410304 m!6530436))

(declare-fun m!6530438 () Bool)

(assert (=> bm!410299 m!6530438))

(declare-fun m!6530440 () Bool)

(assert (=> bm!410302 m!6530440))

(declare-fun m!6530442 () Bool)

(assert (=> bm!410305 m!6530442))

(assert (=> b!5527239 d!1751818))

(declare-fun d!1751820 () Bool)

(assert (=> d!1751820 (= (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 lt!2247530))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))) (ite (>= (regexDepth!213 (h!69162 (exprs!5397 lt!2247530))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))) (regexDepth!213 (h!69162 (exprs!5397 lt!2247530))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(assert (=> b!5527239 d!1751820))

(assert (=> b!5527153 d!1751288))

(declare-fun bs!1277021 () Bool)

(declare-fun d!1751822 () Bool)

(assert (= bs!1277021 (and d!1751822 d!1751334)))

(declare-fun lambda!296596 () Int)

(assert (=> bs!1277021 (= lambda!296596 lambda!296499)))

(declare-fun bs!1277022 () Bool)

(assert (= bs!1277022 (and d!1751822 b!5526942)))

(assert (=> bs!1277022 (not (= lambda!296596 lambda!296452))))

(declare-fun bs!1277023 () Bool)

(assert (= bs!1277023 (and d!1751822 b!5527241)))

(assert (=> bs!1277023 (not (= lambda!296596 lambda!296495))))

(declare-fun bs!1277024 () Bool)

(assert (= bs!1277024 (and d!1751822 b!5527751)))

(assert (=> bs!1277024 (not (= lambda!296596 lambda!296536))))

(declare-fun bs!1277025 () Bool)

(assert (= bs!1277025 (and d!1751822 b!5527984)))

(assert (=> bs!1277025 (not (= lambda!296596 lambda!296560))))

(declare-fun bs!1277026 () Bool)

(assert (= bs!1277026 (and d!1751822 d!1751728)))

(assert (=> bs!1277026 (= lambda!296596 lambda!296578)))

(declare-fun bs!1277027 () Bool)

(assert (= bs!1277027 (and d!1751822 d!1751292)))

(assert (=> bs!1277027 (= lambda!296596 lambda!296483)))

(declare-fun bs!1277028 () Bool)

(assert (= bs!1277028 (and d!1751822 d!1751288)))

(assert (=> bs!1277028 (= lambda!296596 lambda!296477)))

(declare-fun bs!1277029 () Bool)

(assert (= bs!1277029 (and d!1751822 d!1751290)))

(assert (=> bs!1277029 (= lambda!296596 lambda!296480)))

(declare-fun bs!1277030 () Bool)

(assert (= bs!1277030 (and d!1751822 d!1751802)))

(assert (=> bs!1277030 (not (= lambda!296596 lambda!296593))))

(declare-fun bs!1277031 () Bool)

(assert (= bs!1277031 (and d!1751822 d!1751332)))

(assert (=> bs!1277031 (= lambda!296596 lambda!296498)))

(declare-fun bs!1277032 () Bool)

(assert (= bs!1277032 (and d!1751822 b!5527239)))

(assert (=> bs!1277032 (not (= lambda!296596 lambda!296494))))

(declare-fun bs!1277033 () Bool)

(assert (= bs!1277033 (and d!1751822 b!5528270)))

(assert (=> bs!1277033 (not (= lambda!296596 lambda!296595))))

(declare-fun bs!1277034 () Bool)

(assert (= bs!1277034 (and d!1751822 b!5527749)))

(assert (=> bs!1277034 (not (= lambda!296596 lambda!296535))))

(declare-fun bs!1277035 () Bool)

(assert (= bs!1277035 (and d!1751822 d!1751656)))

(assert (=> bs!1277035 (not (= lambda!296596 lambda!296558))))

(declare-fun bs!1277036 () Bool)

(assert (= bs!1277036 (and d!1751822 b!5527986)))

(assert (=> bs!1277036 (not (= lambda!296596 lambda!296561))))

(declare-fun bs!1277037 () Bool)

(assert (= bs!1277037 (and d!1751822 b!5526944)))

(assert (=> bs!1277037 (not (= lambda!296596 lambda!296453))))

(declare-fun bs!1277038 () Bool)

(assert (= bs!1277038 (and d!1751822 d!1751566)))

(assert (=> bs!1277038 (not (= lambda!296596 lambda!296541))))

(declare-fun bs!1277039 () Bool)

(assert (= bs!1277039 (and d!1751822 b!5528108)))

(assert (=> bs!1277039 (not (= lambda!296596 lambda!296585))))

(declare-fun bs!1277040 () Bool)

(assert (= bs!1277040 (and d!1751822 b!5528110)))

(assert (=> bs!1277040 (not (= lambda!296596 lambda!296586))))

(declare-fun bs!1277041 () Bool)

(assert (= bs!1277041 (and d!1751822 b!5526947)))

(assert (=> bs!1277041 (not (= lambda!296596 lambda!296454))))

(declare-fun bs!1277042 () Bool)

(assert (= bs!1277042 (and d!1751822 b!5528268)))

(assert (=> bs!1277042 (not (= lambda!296596 lambda!296594))))

(declare-fun bs!1277043 () Bool)

(assert (= bs!1277043 (and d!1751822 b!5526949)))

(assert (=> bs!1277043 (not (= lambda!296596 lambda!296455))))

(declare-fun lt!2247814 () List!62838)

(assert (=> d!1751822 (forall!14690 lt!2247814 lambda!296596)))

(declare-fun e!3417570 () List!62838)

(assert (=> d!1751822 (= lt!2247814 e!3417570)))

(declare-fun c!967292 () Bool)

(assert (=> d!1751822 (= c!967292 ((_ is Cons!62715) (t!376094 zl!343)))))

(assert (=> d!1751822 (= (unfocusZipperList!941 (t!376094 zl!343)) lt!2247814)))

(declare-fun b!5528288 () Bool)

(assert (=> b!5528288 (= e!3417570 (Cons!62714 (generalisedConcat!1128 (exprs!5397 (h!69163 (t!376094 zl!343)))) (unfocusZipperList!941 (t!376094 (t!376094 zl!343)))))))

(declare-fun b!5528289 () Bool)

(assert (=> b!5528289 (= e!3417570 Nil!62714)))

(assert (= (and d!1751822 c!967292) b!5528288))

(assert (= (and d!1751822 (not c!967292)) b!5528289))

(declare-fun m!6530444 () Bool)

(assert (=> d!1751822 m!6530444))

(declare-fun m!6530446 () Bool)

(assert (=> b!5528288 m!6530446))

(declare-fun m!6530448 () Bool)

(assert (=> b!5528288 m!6530448))

(assert (=> b!5527153 d!1751822))

(declare-fun d!1751824 () Bool)

(declare-fun res!2353961 () Bool)

(declare-fun e!3417571 () Bool)

(assert (=> d!1751824 (=> res!2353961 e!3417571)))

(assert (=> d!1751824 (= res!2353961 ((_ is Nil!62714) lt!2247686))))

(assert (=> d!1751824 (= (forall!14690 lt!2247686 lambda!296483) e!3417571)))

(declare-fun b!5528290 () Bool)

(declare-fun e!3417572 () Bool)

(assert (=> b!5528290 (= e!3417571 e!3417572)))

(declare-fun res!2353962 () Bool)

(assert (=> b!5528290 (=> (not res!2353962) (not e!3417572))))

(assert (=> b!5528290 (= res!2353962 (dynLambda!24517 lambda!296483 (h!69162 lt!2247686)))))

(declare-fun b!5528291 () Bool)

(assert (=> b!5528291 (= e!3417572 (forall!14690 (t!376093 lt!2247686) lambda!296483))))

(assert (= (and d!1751824 (not res!2353961)) b!5528290))

(assert (= (and b!5528290 res!2353962) b!5528291))

(declare-fun b_lambda!209771 () Bool)

(assert (=> (not b_lambda!209771) (not b!5528290)))

(declare-fun m!6530450 () Bool)

(assert (=> b!5528290 m!6530450))

(declare-fun m!6530452 () Bool)

(assert (=> b!5528291 m!6530452))

(assert (=> d!1751292 d!1751824))

(declare-fun d!1751826 () Bool)

(assert (=> d!1751826 true))

(declare-fun setRes!36772 () Bool)

(assert (=> d!1751826 setRes!36772))

(declare-fun condSetEmpty!36772 () Bool)

(declare-fun res!2353963 () (InoxSet Context!9794))

(assert (=> d!1751826 (= condSetEmpty!36772 (= res!2353963 ((as const (Array Context!9794 Bool)) false)))))

(assert (=> d!1751826 (= (choose!41994 lt!2247543 lambda!296389) res!2353963)))

(declare-fun setIsEmpty!36772 () Bool)

(assert (=> setIsEmpty!36772 setRes!36772))

(declare-fun setElem!36772 () Context!9794)

(declare-fun setNonEmpty!36772 () Bool)

(declare-fun tp!1520841 () Bool)

(declare-fun e!3417573 () Bool)

(assert (=> setNonEmpty!36772 (= setRes!36772 (and tp!1520841 (inv!82029 setElem!36772) e!3417573))))

(declare-fun setRest!36772 () (InoxSet Context!9794))

(assert (=> setNonEmpty!36772 (= res!2353963 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) setElem!36772 true) setRest!36772))))

(declare-fun b!5528292 () Bool)

(declare-fun tp!1520840 () Bool)

(assert (=> b!5528292 (= e!3417573 tp!1520840)))

(assert (= (and d!1751826 condSetEmpty!36772) setIsEmpty!36772))

(assert (= (and d!1751826 (not condSetEmpty!36772)) setNonEmpty!36772))

(assert (= setNonEmpty!36772 b!5528292))

(declare-fun m!6530454 () Bool)

(assert (=> setNonEmpty!36772 m!6530454))

(assert (=> d!1751270 d!1751826))

(declare-fun d!1751828 () Bool)

(assert (=> d!1751828 (= (head!11830 (exprs!5397 (h!69163 zl!343))) (h!69162 (exprs!5397 (h!69163 zl!343))))))

(assert (=> b!5527113 d!1751828))

(assert (=> b!5527037 d!1751602))

(declare-fun d!1751830 () Bool)

(assert (=> d!1751830 (= (nullable!5547 (h!69162 (exprs!5397 lt!2247531))) (nullableFct!1671 (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun bs!1277044 () Bool)

(assert (= bs!1277044 d!1751830))

(declare-fun m!6530456 () Bool)

(assert (=> bs!1277044 m!6530456))

(assert (=> b!5527084 d!1751830))

(declare-fun b!5528293 () Bool)

(declare-fun e!3417576 () Bool)

(assert (=> b!5528293 (= e!3417576 (nullable!5547 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))))))

(declare-fun b!5528294 () Bool)

(declare-fun e!3417574 () (InoxSet Context!9794))

(declare-fun e!3417575 () (InoxSet Context!9794))

(assert (=> b!5528294 (= e!3417574 e!3417575)))

(declare-fun c!967293 () Bool)

(assert (=> b!5528294 (= c!967293 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(declare-fun b!5528295 () Bool)

(assert (=> b!5528295 (= e!3417575 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410306 () Bool)

(declare-fun call!410311 () (InoxSet Context!9794))

(assert (=> bm!410306 (= call!410311 (derivationStepZipperDown!855 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))) (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))) (h!69164 s!2326)))))

(declare-fun b!5528296 () Bool)

(assert (=> b!5528296 (= e!3417575 call!410311)))

(declare-fun d!1751832 () Bool)

(declare-fun c!967294 () Bool)

(assert (=> d!1751832 (= c!967294 e!3417576)))

(declare-fun res!2353964 () Bool)

(assert (=> d!1751832 (=> (not res!2353964) (not e!3417576))))

(assert (=> d!1751832 (= res!2353964 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530))))))))

(assert (=> d!1751832 (= (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 lt!2247530))) (h!69164 s!2326)) e!3417574)))

(declare-fun b!5528297 () Bool)

(assert (=> b!5528297 (= e!3417574 ((_ map or) call!410311 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))))) (h!69164 s!2326))))))

(assert (= (and d!1751832 res!2353964) b!5528293))

(assert (= (and d!1751832 c!967294) b!5528297))

(assert (= (and d!1751832 (not c!967294)) b!5528294))

(assert (= (and b!5528294 c!967293) b!5528296))

(assert (= (and b!5528294 (not c!967293)) b!5528295))

(assert (= (or b!5528297 b!5528296) bm!410306))

(declare-fun m!6530458 () Bool)

(assert (=> b!5528293 m!6530458))

(declare-fun m!6530460 () Bool)

(assert (=> bm!410306 m!6530460))

(declare-fun m!6530462 () Bool)

(assert (=> b!5528297 m!6530462))

(assert (=> b!5527083 d!1751832))

(declare-fun d!1751834 () Bool)

(assert (=> d!1751834 (= (isEmpty!34501 (tail!10925 (unfocusZipperList!941 zl!343))) ((_ is Nil!62714) (tail!10925 (unfocusZipperList!941 zl!343))))))

(assert (=> b!5527146 d!1751834))

(declare-fun d!1751836 () Bool)

(assert (=> d!1751836 (= (tail!10925 (unfocusZipperList!941 zl!343)) (t!376093 (unfocusZipperList!941 zl!343)))))

(assert (=> b!5527146 d!1751836))

(declare-fun d!1751838 () Bool)

(declare-fun res!2353965 () Bool)

(declare-fun e!3417577 () Bool)

(assert (=> d!1751838 (=> res!2353965 e!3417577)))

(assert (=> d!1751838 (= res!2353965 ((_ is Nil!62714) (exprs!5397 (h!69163 zl!343))))))

(assert (=> d!1751838 (= (forall!14690 (exprs!5397 (h!69163 zl!343)) lambda!296498) e!3417577)))

(declare-fun b!5528298 () Bool)

(declare-fun e!3417578 () Bool)

(assert (=> b!5528298 (= e!3417577 e!3417578)))

(declare-fun res!2353966 () Bool)

(assert (=> b!5528298 (=> (not res!2353966) (not e!3417578))))

(assert (=> b!5528298 (= res!2353966 (dynLambda!24517 lambda!296498 (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5528299 () Bool)

(assert (=> b!5528299 (= e!3417578 (forall!14690 (t!376093 (exprs!5397 (h!69163 zl!343))) lambda!296498))))

(assert (= (and d!1751838 (not res!2353965)) b!5528298))

(assert (= (and b!5528298 res!2353966) b!5528299))

(declare-fun b_lambda!209773 () Bool)

(assert (=> (not b_lambda!209773) (not b!5528298)))

(declare-fun m!6530464 () Bool)

(assert (=> b!5528298 m!6530464))

(declare-fun m!6530466 () Bool)

(assert (=> b!5528299 m!6530466))

(assert (=> d!1751332 d!1751838))

(declare-fun b!5528310 () Bool)

(declare-fun res!2353972 () Bool)

(declare-fun e!3417584 () Bool)

(assert (=> b!5528310 (=> (not res!2353972) (not e!3417584))))

(declare-fun lt!2247817 () List!62840)

(declare-fun size!39942 (List!62840) Int)

(assert (=> b!5528310 (= res!2353972 (= (size!39942 lt!2247817) (+ (size!39942 (_1!35913 (get!21585 lt!2247696))) (size!39942 (_2!35913 (get!21585 lt!2247696))))))))

(declare-fun d!1751840 () Bool)

(assert (=> d!1751840 e!3417584))

(declare-fun res!2353971 () Bool)

(assert (=> d!1751840 (=> (not res!2353971) (not e!3417584))))

(declare-fun content!11282 (List!62840) (InoxSet C!31296))

(assert (=> d!1751840 (= res!2353971 (= (content!11282 lt!2247817) ((_ map or) (content!11282 (_1!35913 (get!21585 lt!2247696))) (content!11282 (_2!35913 (get!21585 lt!2247696))))))))

(declare-fun e!3417583 () List!62840)

(assert (=> d!1751840 (= lt!2247817 e!3417583)))

(declare-fun c!967297 () Bool)

(assert (=> d!1751840 (= c!967297 ((_ is Nil!62716) (_1!35913 (get!21585 lt!2247696))))))

(assert (=> d!1751840 (= (++!13761 (_1!35913 (get!21585 lt!2247696)) (_2!35913 (get!21585 lt!2247696))) lt!2247817)))

(declare-fun b!5528311 () Bool)

(assert (=> b!5528311 (= e!3417584 (or (not (= (_2!35913 (get!21585 lt!2247696)) Nil!62716)) (= lt!2247817 (_1!35913 (get!21585 lt!2247696)))))))

(declare-fun b!5528308 () Bool)

(assert (=> b!5528308 (= e!3417583 (_2!35913 (get!21585 lt!2247696)))))

(declare-fun b!5528309 () Bool)

(assert (=> b!5528309 (= e!3417583 (Cons!62716 (h!69164 (_1!35913 (get!21585 lt!2247696))) (++!13761 (t!376095 (_1!35913 (get!21585 lt!2247696))) (_2!35913 (get!21585 lt!2247696)))))))

(assert (= (and d!1751840 c!967297) b!5528308))

(assert (= (and d!1751840 (not c!967297)) b!5528309))

(assert (= (and d!1751840 res!2353971) b!5528310))

(assert (= (and b!5528310 res!2353972) b!5528311))

(declare-fun m!6530468 () Bool)

(assert (=> b!5528310 m!6530468))

(declare-fun m!6530470 () Bool)

(assert (=> b!5528310 m!6530470))

(declare-fun m!6530472 () Bool)

(assert (=> b!5528310 m!6530472))

(declare-fun m!6530474 () Bool)

(assert (=> d!1751840 m!6530474))

(declare-fun m!6530476 () Bool)

(assert (=> d!1751840 m!6530476))

(declare-fun m!6530478 () Bool)

(assert (=> d!1751840 m!6530478))

(declare-fun m!6530480 () Bool)

(assert (=> b!5528309 m!6530480))

(assert (=> b!5527178 d!1751840))

(declare-fun d!1751842 () Bool)

(assert (=> d!1751842 (= (get!21585 lt!2247696) (v!51558 lt!2247696))))

(assert (=> b!5527178 d!1751842))

(declare-fun bm!410307 () Bool)

(declare-fun call!410317 () List!62838)

(declare-fun call!410315 () List!62838)

(assert (=> bm!410307 (= call!410317 call!410315)))

(declare-fun b!5528312 () Bool)

(declare-fun e!3417585 () (InoxSet Context!9794))

(declare-fun e!3417588 () (InoxSet Context!9794))

(assert (=> b!5528312 (= e!3417585 e!3417588)))

(declare-fun c!967299 () Bool)

(assert (=> b!5528312 (= c!967299 ((_ is Union!15513) (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))))))

(declare-fun d!1751844 () Bool)

(declare-fun c!967301 () Bool)

(assert (=> d!1751844 (= c!967301 (and ((_ is ElementMatch!15513) (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (= (c!966767 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (h!69164 s!2326))))))

(assert (=> d!1751844 (= (derivationStepZipperDown!855 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292))))) (ite (or c!966957 c!966958) lt!2247553 (Context!9795 call!410069)) (h!69164 s!2326)) e!3417585)))

(declare-fun b!5528313 () Bool)

(assert (=> b!5528313 (= e!3417585 (store ((as const (Array Context!9794 Bool)) false) (ite (or c!966957 c!966958) lt!2247553 (Context!9795 call!410069)) true))))

(declare-fun bm!410308 () Bool)

(declare-fun call!410316 () (InoxSet Context!9794))

(declare-fun call!410314 () (InoxSet Context!9794))

(assert (=> bm!410308 (= call!410316 call!410314)))

(declare-fun b!5528314 () Bool)

(declare-fun e!3417590 () (InoxSet Context!9794))

(declare-fun e!3417586 () (InoxSet Context!9794))

(assert (=> b!5528314 (= e!3417590 e!3417586)))

(declare-fun c!967302 () Bool)

(assert (=> b!5528314 (= c!967302 ((_ is Concat!24358) (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))))))

(declare-fun b!5528315 () Bool)

(declare-fun e!3417587 () (InoxSet Context!9794))

(declare-fun call!410312 () (InoxSet Context!9794))

(assert (=> b!5528315 (= e!3417587 call!410312)))

(declare-fun b!5528316 () Bool)

(declare-fun c!967298 () Bool)

(assert (=> b!5528316 (= c!967298 ((_ is Star!15513) (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))))))

(assert (=> b!5528316 (= e!3417586 e!3417587)))

(declare-fun b!5528317 () Bool)

(declare-fun c!967300 () Bool)

(declare-fun e!3417589 () Bool)

(assert (=> b!5528317 (= c!967300 e!3417589)))

(declare-fun res!2353973 () Bool)

(assert (=> b!5528317 (=> (not res!2353973) (not e!3417589))))

(assert (=> b!5528317 (= res!2353973 ((_ is Concat!24358) (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))))))

(assert (=> b!5528317 (= e!3417588 e!3417590)))

(declare-fun b!5528318 () Bool)

(assert (=> b!5528318 (= e!3417587 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410309 () Bool)

(assert (=> bm!410309 (= call!410312 call!410316)))

(declare-fun bm!410310 () Bool)

(assert (=> bm!410310 (= call!410315 ($colon$colon!1592 (exprs!5397 (ite (or c!966957 c!966958) lt!2247553 (Context!9795 call!410069))) (ite (or c!967300 c!967302) (regTwo!31538 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292))))))))))

(declare-fun b!5528319 () Bool)

(assert (=> b!5528319 (= e!3417586 call!410312)))

(declare-fun b!5528320 () Bool)

(declare-fun call!410313 () (InoxSet Context!9794))

(assert (=> b!5528320 (= e!3417590 ((_ map or) call!410313 call!410316))))

(declare-fun bm!410311 () Bool)

(assert (=> bm!410311 (= call!410313 (derivationStepZipperDown!855 (ite c!967299 (regTwo!31539 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (regOne!31538 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292))))))) (ite c!967299 (ite (or c!966957 c!966958) lt!2247553 (Context!9795 call!410069)) (Context!9795 call!410315)) (h!69164 s!2326)))))

(declare-fun bm!410312 () Bool)

(assert (=> bm!410312 (= call!410314 (derivationStepZipperDown!855 (ite c!967299 (regOne!31539 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (ite c!967300 (regTwo!31538 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (ite c!967302 (regOne!31538 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292)))))) (reg!15842 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292))))))))) (ite (or c!967299 c!967300) (ite (or c!966957 c!966958) lt!2247553 (Context!9795 call!410069)) (Context!9795 call!410317)) (h!69164 s!2326)))))

(declare-fun b!5528321 () Bool)

(assert (=> b!5528321 (= e!3417588 ((_ map or) call!410314 call!410313))))

(declare-fun b!5528322 () Bool)

(assert (=> b!5528322 (= e!3417589 (nullable!5547 (regOne!31538 (ite c!966957 (regOne!31539 (regTwo!31538 r!7292)) (ite c!966958 (regTwo!31538 (regTwo!31538 r!7292)) (ite c!966960 (regOne!31538 (regTwo!31538 r!7292)) (reg!15842 (regTwo!31538 r!7292))))))))))

(assert (= (and d!1751844 c!967301) b!5528313))

(assert (= (and d!1751844 (not c!967301)) b!5528312))

(assert (= (and b!5528312 c!967299) b!5528321))

(assert (= (and b!5528312 (not c!967299)) b!5528317))

(assert (= (and b!5528317 res!2353973) b!5528322))

(assert (= (and b!5528317 c!967300) b!5528320))

(assert (= (and b!5528317 (not c!967300)) b!5528314))

(assert (= (and b!5528314 c!967302) b!5528319))

(assert (= (and b!5528314 (not c!967302)) b!5528316))

(assert (= (and b!5528316 c!967298) b!5528315))

(assert (= (and b!5528316 (not c!967298)) b!5528318))

(assert (= (or b!5528319 b!5528315) bm!410307))

(assert (= (or b!5528319 b!5528315) bm!410309))

(assert (= (or b!5528320 bm!410307) bm!410310))

(assert (= (or b!5528320 bm!410309) bm!410308))

(assert (= (or b!5528321 b!5528320) bm!410311))

(assert (= (or b!5528321 bm!410308) bm!410312))

(declare-fun m!6530482 () Bool)

(assert (=> b!5528313 m!6530482))

(declare-fun m!6530484 () Bool)

(assert (=> b!5528322 m!6530484))

(declare-fun m!6530486 () Bool)

(assert (=> bm!410312 m!6530486))

(declare-fun m!6530488 () Bool)

(assert (=> bm!410310 m!6530488))

(declare-fun m!6530490 () Bool)

(assert (=> bm!410311 m!6530490))

(assert (=> bm!410064 d!1751844))

(declare-fun bs!1277045 () Bool)

(declare-fun d!1751846 () Bool)

(assert (= bs!1277045 (and d!1751846 d!1751718)))

(declare-fun lambda!296597 () Int)

(assert (=> bs!1277045 (= lambda!296597 lambda!296576)))

(declare-fun bs!1277046 () Bool)

(assert (= bs!1277046 (and d!1751846 b!5526958)))

(assert (=> bs!1277046 (not (= lambda!296597 lambda!296464))))

(declare-fun bs!1277047 () Bool)

(assert (= bs!1277047 (and d!1751846 b!5526961)))

(assert (=> bs!1277047 (not (= lambda!296597 lambda!296466))))

(declare-fun bs!1277048 () Bool)

(assert (= bs!1277048 (and d!1751846 b!5526963)))

(assert (=> bs!1277048 (not (= lambda!296597 lambda!296467))))

(declare-fun bs!1277049 () Bool)

(assert (= bs!1277049 (and d!1751846 d!1751632)))

(assert (=> bs!1277049 (= lambda!296597 lambda!296555)))

(declare-fun bs!1277050 () Bool)

(assert (= bs!1277050 (and d!1751846 b!5526956)))

(assert (=> bs!1277050 (not (= lambda!296597 lambda!296463))))

(declare-fun bs!1277051 () Bool)

(assert (= bs!1277051 (and d!1751846 b!5528100)))

(assert (=> bs!1277051 (not (= lambda!296597 lambda!296583))))

(declare-fun bs!1277052 () Bool)

(assert (= bs!1277052 (and d!1751846 d!1751742)))

(assert (=> bs!1277052 (not (= lambda!296597 lambda!296591))))

(declare-fun bs!1277053 () Bool)

(assert (= bs!1277053 (and d!1751846 b!5528098)))

(assert (=> bs!1277053 (not (= lambda!296597 lambda!296582))))

(assert (=> d!1751846 (= (nullableZipper!1539 lt!2247548) (exists!2147 lt!2247548 lambda!296597))))

(declare-fun bs!1277054 () Bool)

(assert (= bs!1277054 d!1751846))

(declare-fun m!6530492 () Bool)

(assert (=> bs!1277054 m!6530492))

(assert (=> b!5527229 d!1751846))

(declare-fun d!1751848 () Bool)

(declare-fun c!967303 () Bool)

(assert (=> d!1751848 (= c!967303 (isEmpty!34505 (t!376095 s!2326)))))

(declare-fun e!3417591 () Bool)

(assert (=> d!1751848 (= (matchZipper!1671 ((_ map or) lt!2247554 lt!2247529) (t!376095 s!2326)) e!3417591)))

(declare-fun b!5528323 () Bool)

(assert (=> b!5528323 (= e!3417591 (nullableZipper!1539 ((_ map or) lt!2247554 lt!2247529)))))

(declare-fun b!5528324 () Bool)

(assert (=> b!5528324 (= e!3417591 (matchZipper!1671 (derivationStepZipper!1618 ((_ map or) lt!2247554 lt!2247529) (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))))))

(assert (= (and d!1751848 c!967303) b!5528323))

(assert (= (and d!1751848 (not c!967303)) b!5528324))

(assert (=> d!1751848 m!6529208))

(declare-fun m!6530494 () Bool)

(assert (=> b!5528323 m!6530494))

(assert (=> b!5528324 m!6529212))

(assert (=> b!5528324 m!6529212))

(declare-fun m!6530496 () Bool)

(assert (=> b!5528324 m!6530496))

(assert (=> b!5528324 m!6529216))

(assert (=> b!5528324 m!6530496))

(assert (=> b!5528324 m!6529216))

(declare-fun m!6530498 () Bool)

(assert (=> b!5528324 m!6530498))

(assert (=> d!1751326 d!1751848))

(assert (=> d!1751326 d!1751324))

(declare-fun e!3417594 () Bool)

(declare-fun d!1751850 () Bool)

(assert (=> d!1751850 (= (matchZipper!1671 ((_ map or) lt!2247554 lt!2247529) (t!376095 s!2326)) e!3417594)))

(declare-fun res!2353976 () Bool)

(assert (=> d!1751850 (=> res!2353976 e!3417594)))

(assert (=> d!1751850 (= res!2353976 (matchZipper!1671 lt!2247554 (t!376095 s!2326)))))

(assert (=> d!1751850 true))

(declare-fun _$48!1102 () Unit!155486)

(assert (=> d!1751850 (= (choose!41999 lt!2247554 lt!2247529 (t!376095 s!2326)) _$48!1102)))

(declare-fun b!5528327 () Bool)

(assert (=> b!5528327 (= e!3417594 (matchZipper!1671 lt!2247529 (t!376095 s!2326)))))

(assert (= (and d!1751850 (not res!2353976)) b!5528327))

(assert (=> d!1751850 m!6529392))

(assert (=> d!1751850 m!6528790))

(assert (=> b!5528327 m!6528700))

(assert (=> d!1751326 d!1751850))

(declare-fun d!1751852 () Bool)

(assert (=> d!1751852 (= ($colon$colon!1592 (exprs!5397 lt!2247553) (ite (or c!966958 c!966960) (regTwo!31538 (regTwo!31538 r!7292)) (regTwo!31538 r!7292))) (Cons!62714 (ite (or c!966958 c!966960) (regTwo!31538 (regTwo!31538 r!7292)) (regTwo!31538 r!7292)) (exprs!5397 lt!2247553)))))

(assert (=> bm!410062 d!1751852))

(declare-fun bs!1277055 () Bool)

(declare-fun b!5528332 () Bool)

(assert (= bs!1277055 (and b!5528332 d!1751306)))

(declare-fun lambda!296598 () Int)

(assert (=> bs!1277055 (not (= lambda!296598 lambda!296486))))

(declare-fun bs!1277056 () Bool)

(assert (= bs!1277056 (and b!5528332 b!5527808)))

(assert (=> bs!1277056 (= (and (= (reg!15842 (regOne!31539 r!7292)) (reg!15842 (regTwo!31539 r!7292))) (= (regOne!31539 r!7292) (regTwo!31539 r!7292))) (= lambda!296598 lambda!296544))))

(declare-fun bs!1277057 () Bool)

(assert (= bs!1277057 (and b!5528332 b!5526996)))

(assert (=> bs!1277057 (not (= lambda!296598 lambda!296473))))

(declare-fun bs!1277058 () Bool)

(assert (= bs!1277058 (and b!5528332 d!1751686)))

(assert (=> bs!1277058 (not (= lambda!296598 lambda!296570))))

(declare-fun bs!1277059 () Bool)

(assert (= bs!1277059 (and b!5528332 b!5527804)))

(assert (=> bs!1277059 (not (= lambda!296598 lambda!296545))))

(assert (=> bs!1277058 (not (= lambda!296598 lambda!296572))))

(declare-fun bs!1277060 () Bool)

(assert (= bs!1277060 (and b!5528332 d!1751308)))

(assert (=> bs!1277060 (not (= lambda!296598 lambda!296492))))

(declare-fun bs!1277061 () Bool)

(assert (= bs!1277061 (and b!5528332 b!5527000)))

(assert (=> bs!1277061 (= (and (= (reg!15842 (regOne!31539 r!7292)) (reg!15842 r!7292)) (= (regOne!31539 r!7292) r!7292)) (= lambda!296598 lambda!296472))))

(assert (=> bs!1277060 (not (= lambda!296598 lambda!296491))))

(declare-fun bs!1277062 () Bool)

(assert (= bs!1277062 (and b!5528332 b!5526447)))

(assert (=> bs!1277062 (not (= lambda!296598 lambda!296388))))

(assert (=> bs!1277062 (not (= lambda!296598 lambda!296387))))

(assert (=> b!5528332 true))

(assert (=> b!5528332 true))

(declare-fun bs!1277063 () Bool)

(declare-fun b!5528328 () Bool)

(assert (= bs!1277063 (and b!5528328 d!1751306)))

(declare-fun lambda!296599 () Int)

(assert (=> bs!1277063 (not (= lambda!296599 lambda!296486))))

(declare-fun bs!1277064 () Bool)

(assert (= bs!1277064 (and b!5528328 b!5528332)))

(assert (=> bs!1277064 (not (= lambda!296599 lambda!296598))))

(declare-fun bs!1277065 () Bool)

(assert (= bs!1277065 (and b!5528328 b!5527808)))

(assert (=> bs!1277065 (not (= lambda!296599 lambda!296544))))

(declare-fun bs!1277066 () Bool)

(assert (= bs!1277066 (and b!5528328 b!5526996)))

(assert (=> bs!1277066 (= (and (= (regOne!31538 (regOne!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regOne!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296599 lambda!296473))))

(declare-fun bs!1277067 () Bool)

(assert (= bs!1277067 (and b!5528328 d!1751686)))

(assert (=> bs!1277067 (not (= lambda!296599 lambda!296570))))

(declare-fun bs!1277068 () Bool)

(assert (= bs!1277068 (and b!5528328 b!5527804)))

(assert (=> bs!1277068 (= (and (= (regOne!31538 (regOne!31539 r!7292)) (regOne!31538 (regTwo!31539 r!7292))) (= (regTwo!31538 (regOne!31539 r!7292)) (regTwo!31538 (regTwo!31539 r!7292)))) (= lambda!296599 lambda!296545))))

(assert (=> bs!1277067 (= (and (= (regOne!31538 (regOne!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regOne!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296599 lambda!296572))))

(declare-fun bs!1277069 () Bool)

(assert (= bs!1277069 (and b!5528328 d!1751308)))

(assert (=> bs!1277069 (= (and (= (regOne!31538 (regOne!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regOne!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296599 lambda!296492))))

(declare-fun bs!1277070 () Bool)

(assert (= bs!1277070 (and b!5528328 b!5527000)))

(assert (=> bs!1277070 (not (= lambda!296599 lambda!296472))))

(assert (=> bs!1277069 (not (= lambda!296599 lambda!296491))))

(declare-fun bs!1277071 () Bool)

(assert (= bs!1277071 (and b!5528328 b!5526447)))

(assert (=> bs!1277071 (= (and (= (regOne!31538 (regOne!31539 r!7292)) (regOne!31538 r!7292)) (= (regTwo!31538 (regOne!31539 r!7292)) (regTwo!31538 r!7292))) (= lambda!296599 lambda!296388))))

(assert (=> bs!1277071 (not (= lambda!296599 lambda!296387))))

(assert (=> b!5528328 true))

(assert (=> b!5528328 true))

(declare-fun d!1751854 () Bool)

(declare-fun c!967305 () Bool)

(assert (=> d!1751854 (= c!967305 ((_ is EmptyExpr!15513) (regOne!31539 r!7292)))))

(declare-fun e!3417599 () Bool)

(assert (=> d!1751854 (= (matchRSpec!2616 (regOne!31539 r!7292) s!2326) e!3417599)))

(declare-fun bm!410313 () Bool)

(declare-fun call!410318 () Bool)

(assert (=> bm!410313 (= call!410318 (isEmpty!34505 s!2326))))

(declare-fun e!3417597 () Bool)

(declare-fun call!410319 () Bool)

(assert (=> b!5528328 (= e!3417597 call!410319)))

(declare-fun b!5528329 () Bool)

(declare-fun e!3417598 () Bool)

(assert (=> b!5528329 (= e!3417599 e!3417598)))

(declare-fun res!2353977 () Bool)

(assert (=> b!5528329 (= res!2353977 (not ((_ is EmptyLang!15513) (regOne!31539 r!7292))))))

(assert (=> b!5528329 (=> (not res!2353977) (not e!3417598))))

(declare-fun c!967304 () Bool)

(declare-fun bm!410314 () Bool)

(assert (=> bm!410314 (= call!410319 (Exists!2613 (ite c!967304 lambda!296598 lambda!296599)))))

(declare-fun b!5528330 () Bool)

(declare-fun e!3417596 () Bool)

(assert (=> b!5528330 (= e!3417596 e!3417597)))

(assert (=> b!5528330 (= c!967304 ((_ is Star!15513) (regOne!31539 r!7292)))))

(declare-fun b!5528331 () Bool)

(assert (=> b!5528331 (= e!3417599 call!410318)))

(declare-fun e!3417600 () Bool)

(assert (=> b!5528332 (= e!3417600 call!410319)))

(declare-fun b!5528333 () Bool)

(declare-fun c!967307 () Bool)

(assert (=> b!5528333 (= c!967307 ((_ is Union!15513) (regOne!31539 r!7292)))))

(declare-fun e!3417595 () Bool)

(assert (=> b!5528333 (= e!3417595 e!3417596)))

(declare-fun b!5528334 () Bool)

(declare-fun c!967306 () Bool)

(assert (=> b!5528334 (= c!967306 ((_ is ElementMatch!15513) (regOne!31539 r!7292)))))

(assert (=> b!5528334 (= e!3417598 e!3417595)))

(declare-fun b!5528335 () Bool)

(assert (=> b!5528335 (= e!3417595 (= s!2326 (Cons!62716 (c!966767 (regOne!31539 r!7292)) Nil!62716)))))

(declare-fun b!5528336 () Bool)

(declare-fun res!2353978 () Bool)

(assert (=> b!5528336 (=> res!2353978 e!3417600)))

(assert (=> b!5528336 (= res!2353978 call!410318)))

(assert (=> b!5528336 (= e!3417597 e!3417600)))

(declare-fun b!5528337 () Bool)

(declare-fun e!3417601 () Bool)

(assert (=> b!5528337 (= e!3417601 (matchRSpec!2616 (regTwo!31539 (regOne!31539 r!7292)) s!2326))))

(declare-fun b!5528338 () Bool)

(assert (=> b!5528338 (= e!3417596 e!3417601)))

(declare-fun res!2353979 () Bool)

(assert (=> b!5528338 (= res!2353979 (matchRSpec!2616 (regOne!31539 (regOne!31539 r!7292)) s!2326))))

(assert (=> b!5528338 (=> res!2353979 e!3417601)))

(assert (= (and d!1751854 c!967305) b!5528331))

(assert (= (and d!1751854 (not c!967305)) b!5528329))

(assert (= (and b!5528329 res!2353977) b!5528334))

(assert (= (and b!5528334 c!967306) b!5528335))

(assert (= (and b!5528334 (not c!967306)) b!5528333))

(assert (= (and b!5528333 c!967307) b!5528338))

(assert (= (and b!5528333 (not c!967307)) b!5528330))

(assert (= (and b!5528338 (not res!2353979)) b!5528337))

(assert (= (and b!5528330 c!967304) b!5528336))

(assert (= (and b!5528330 (not c!967304)) b!5528328))

(assert (= (and b!5528336 (not res!2353978)) b!5528332))

(assert (= (or b!5528332 b!5528328) bm!410314))

(assert (= (or b!5528331 b!5528336) bm!410313))

(assert (=> bm!410313 m!6529180))

(declare-fun m!6530500 () Bool)

(assert (=> bm!410314 m!6530500))

(declare-fun m!6530502 () Bool)

(assert (=> b!5528337 m!6530502))

(declare-fun m!6530504 () Bool)

(assert (=> b!5528338 m!6530504))

(assert (=> b!5527006 d!1751854))

(assert (=> d!1751264 d!1751774))

(declare-fun d!1751856 () Bool)

(assert (=> d!1751856 (= (flatMap!1126 lt!2247532 lambda!296474) (choose!41994 lt!2247532 lambda!296474))))

(declare-fun bs!1277072 () Bool)

(assert (= bs!1277072 d!1751856))

(declare-fun m!6530506 () Bool)

(assert (=> bs!1277072 m!6530506))

(assert (=> d!1751268 d!1751856))

(declare-fun d!1751858 () Bool)

(assert (=> d!1751858 (= (isEmptyExpr!1085 lt!2247680) ((_ is EmptyExpr!15513) lt!2247680))))

(assert (=> b!5527109 d!1751858))

(declare-fun d!1751860 () Bool)

(assert (=> d!1751860 (= (flatMap!1126 lt!2247543 lambda!296493) (choose!41994 lt!2247543 lambda!296493))))

(declare-fun bs!1277073 () Bool)

(assert (= bs!1277073 d!1751860))

(declare-fun m!6530508 () Bool)

(assert (=> bs!1277073 m!6530508))

(assert (=> d!1751318 d!1751860))

(assert (=> d!1751322 d!1751704))

(declare-fun bs!1277074 () Bool)

(declare-fun d!1751862 () Bool)

(assert (= bs!1277074 (and d!1751862 d!1751718)))

(declare-fun lambda!296600 () Int)

(assert (=> bs!1277074 (= lambda!296600 lambda!296576)))

(declare-fun bs!1277075 () Bool)

(assert (= bs!1277075 (and d!1751862 b!5526958)))

(assert (=> bs!1277075 (not (= lambda!296600 lambda!296464))))

(declare-fun bs!1277076 () Bool)

(assert (= bs!1277076 (and d!1751862 b!5526961)))

(assert (=> bs!1277076 (not (= lambda!296600 lambda!296466))))

(declare-fun bs!1277077 () Bool)

(assert (= bs!1277077 (and d!1751862 d!1751846)))

(assert (=> bs!1277077 (= lambda!296600 lambda!296597)))

(declare-fun bs!1277078 () Bool)

(assert (= bs!1277078 (and d!1751862 b!5526963)))

(assert (=> bs!1277078 (not (= lambda!296600 lambda!296467))))

(declare-fun bs!1277079 () Bool)

(assert (= bs!1277079 (and d!1751862 d!1751632)))

(assert (=> bs!1277079 (= lambda!296600 lambda!296555)))

(declare-fun bs!1277080 () Bool)

(assert (= bs!1277080 (and d!1751862 b!5526956)))

(assert (=> bs!1277080 (not (= lambda!296600 lambda!296463))))

(declare-fun bs!1277081 () Bool)

(assert (= bs!1277081 (and d!1751862 b!5528100)))

(assert (=> bs!1277081 (not (= lambda!296600 lambda!296583))))

(declare-fun bs!1277082 () Bool)

(assert (= bs!1277082 (and d!1751862 d!1751742)))

(assert (=> bs!1277082 (not (= lambda!296600 lambda!296591))))

(declare-fun bs!1277083 () Bool)

(assert (= bs!1277083 (and d!1751862 b!5528098)))

(assert (=> bs!1277083 (not (= lambda!296600 lambda!296582))))

(assert (=> d!1751862 (= (nullableZipper!1539 lt!2247543) (exists!2147 lt!2247543 lambda!296600))))

(declare-fun bs!1277084 () Bool)

(assert (= bs!1277084 d!1751862))

(declare-fun m!6530510 () Bool)

(assert (=> bs!1277084 m!6530510))

(assert (=> b!5527223 d!1751862))

(declare-fun d!1751864 () Bool)

(declare-fun c!967308 () Bool)

(assert (=> d!1751864 (= c!967308 (isEmpty!34505 (tail!10924 (t!376095 s!2326))))))

(declare-fun e!3417602 () Bool)

(assert (=> d!1751864 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247529 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))) e!3417602)))

(declare-fun b!5528339 () Bool)

(assert (=> b!5528339 (= e!3417602 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247529 (head!11829 (t!376095 s!2326)))))))

(declare-fun b!5528340 () Bool)

(assert (=> b!5528340 (= e!3417602 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247529 (head!11829 (t!376095 s!2326))) (head!11829 (tail!10924 (t!376095 s!2326)))) (tail!10924 (tail!10924 (t!376095 s!2326)))))))

(assert (= (and d!1751864 c!967308) b!5528339))

(assert (= (and d!1751864 (not c!967308)) b!5528340))

(assert (=> d!1751864 m!6529216))

(assert (=> d!1751864 m!6530058))

(assert (=> b!5528339 m!6529310))

(declare-fun m!6530512 () Bool)

(assert (=> b!5528339 m!6530512))

(assert (=> b!5528340 m!6529216))

(assert (=> b!5528340 m!6530062))

(assert (=> b!5528340 m!6529310))

(assert (=> b!5528340 m!6530062))

(declare-fun m!6530514 () Bool)

(assert (=> b!5528340 m!6530514))

(assert (=> b!5528340 m!6529216))

(assert (=> b!5528340 m!6530066))

(assert (=> b!5528340 m!6530514))

(assert (=> b!5528340 m!6530066))

(declare-fun m!6530516 () Bool)

(assert (=> b!5528340 m!6530516))

(assert (=> b!5527156 d!1751864))

(declare-fun bs!1277085 () Bool)

(declare-fun d!1751866 () Bool)

(assert (= bs!1277085 (and d!1751866 d!1751318)))

(declare-fun lambda!296601 () Int)

(assert (=> bs!1277085 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296601 lambda!296493))))

(declare-fun bs!1277086 () Bool)

(assert (= bs!1277086 (and d!1751866 d!1751268)))

(assert (=> bs!1277086 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296601 lambda!296474))))

(declare-fun bs!1277087 () Bool)

(assert (= bs!1277087 (and d!1751866 d!1751600)))

(assert (=> bs!1277087 (= (= (head!11829 (t!376095 s!2326)) (head!11829 s!2326)) (= lambda!296601 lambda!296549))))

(declare-fun bs!1277088 () Bool)

(assert (= bs!1277088 (and d!1751866 d!1751772)))

(assert (=> bs!1277088 (= lambda!296601 lambda!296592)))

(declare-fun bs!1277089 () Bool)

(assert (= bs!1277089 (and d!1751866 b!5526445)))

(assert (=> bs!1277089 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296601 lambda!296389))))

(declare-fun bs!1277090 () Bool)

(assert (= bs!1277090 (and d!1751866 d!1751640)))

(assert (=> bs!1277090 (= lambda!296601 lambda!296557)))

(declare-fun bs!1277091 () Bool)

(assert (= bs!1277091 (and d!1751866 d!1751246)))

(assert (=> bs!1277091 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296601 lambda!296447))))

(assert (=> d!1751866 true))

(assert (=> d!1751866 (= (derivationStepZipper!1618 lt!2247529 (head!11829 (t!376095 s!2326))) (flatMap!1126 lt!2247529 lambda!296601))))

(declare-fun bs!1277092 () Bool)

(assert (= bs!1277092 d!1751866))

(declare-fun m!6530518 () Bool)

(assert (=> bs!1277092 m!6530518))

(assert (=> b!5527156 d!1751866))

(assert (=> b!5527156 d!1751642))

(assert (=> b!5527156 d!1751644))

(declare-fun d!1751868 () Bool)

(assert (=> d!1751868 (= (isEmpty!34505 (tail!10924 s!2326)) ((_ is Nil!62716) (tail!10924 s!2326)))))

(assert (=> b!5527046 d!1751868))

(assert (=> b!5527046 d!1751604))

(assert (=> d!1751296 d!1751704))

(declare-fun b!5528341 () Bool)

(declare-fun e!3417605 () Bool)

(assert (=> b!5528341 (= e!3417605 (nullable!5547 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343))))))))))

(declare-fun b!5528342 () Bool)

(declare-fun e!3417603 () (InoxSet Context!9794))

(declare-fun e!3417604 () (InoxSet Context!9794))

(assert (=> b!5528342 (= e!3417603 e!3417604)))

(declare-fun c!967309 () Bool)

(assert (=> b!5528342 (= c!967309 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))))))))

(declare-fun b!5528343 () Bool)

(assert (=> b!5528343 (= e!3417604 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410315 () Bool)

(declare-fun call!410320 () (InoxSet Context!9794))

(assert (=> bm!410315 (= call!410320 (derivationStepZipperDown!855 (h!69162 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))))) (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343))))))) (h!69164 s!2326)))))

(declare-fun b!5528344 () Bool)

(assert (=> b!5528344 (= e!3417604 call!410320)))

(declare-fun d!1751870 () Bool)

(declare-fun c!967310 () Bool)

(assert (=> d!1751870 (= c!967310 e!3417605)))

(declare-fun res!2353980 () Bool)

(assert (=> d!1751870 (=> (not res!2353980) (not e!3417605))))

(assert (=> d!1751870 (= res!2353980 ((_ is Cons!62714) (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))))))))

(assert (=> d!1751870 (= (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343)))) (h!69164 s!2326)) e!3417603)))

(declare-fun b!5528345 () Bool)

(assert (=> b!5528345 (= e!3417603 ((_ map or) call!410320 (derivationStepZipperUp!781 (Context!9795 (t!376093 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 (h!69163 zl!343))))))) (h!69164 s!2326))))))

(assert (= (and d!1751870 res!2353980) b!5528341))

(assert (= (and d!1751870 c!967310) b!5528345))

(assert (= (and d!1751870 (not c!967310)) b!5528342))

(assert (= (and b!5528342 c!967309) b!5528344))

(assert (= (and b!5528342 (not c!967309)) b!5528343))

(assert (= (or b!5528345 b!5528344) bm!410315))

(declare-fun m!6530520 () Bool)

(assert (=> b!5528341 m!6530520))

(declare-fun m!6530522 () Bool)

(assert (=> bm!410315 m!6530522))

(declare-fun m!6530524 () Bool)

(assert (=> b!5528345 m!6530524))

(assert (=> b!5527246 d!1751870))

(declare-fun d!1751872 () Bool)

(assert (=> d!1751872 (= (isEmpty!34506 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326)) (not ((_ is Some!15521) (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326))))))

(assert (=> d!1751310 d!1751872))

(declare-fun bs!1277093 () Bool)

(declare-fun d!1751874 () Bool)

(assert (= bs!1277093 (and d!1751874 d!1751334)))

(declare-fun lambda!296602 () Int)

(assert (=> bs!1277093 (= lambda!296602 lambda!296499)))

(declare-fun bs!1277094 () Bool)

(assert (= bs!1277094 (and d!1751874 b!5526942)))

(assert (=> bs!1277094 (not (= lambda!296602 lambda!296452))))

(declare-fun bs!1277095 () Bool)

(assert (= bs!1277095 (and d!1751874 b!5527241)))

(assert (=> bs!1277095 (not (= lambda!296602 lambda!296495))))

(declare-fun bs!1277096 () Bool)

(assert (= bs!1277096 (and d!1751874 b!5527751)))

(assert (=> bs!1277096 (not (= lambda!296602 lambda!296536))))

(declare-fun bs!1277097 () Bool)

(assert (= bs!1277097 (and d!1751874 b!5527984)))

(assert (=> bs!1277097 (not (= lambda!296602 lambda!296560))))

(declare-fun bs!1277098 () Bool)

(assert (= bs!1277098 (and d!1751874 d!1751728)))

(assert (=> bs!1277098 (= lambda!296602 lambda!296578)))

(declare-fun bs!1277099 () Bool)

(assert (= bs!1277099 (and d!1751874 d!1751292)))

(assert (=> bs!1277099 (= lambda!296602 lambda!296483)))

(declare-fun bs!1277100 () Bool)

(assert (= bs!1277100 (and d!1751874 d!1751288)))

(assert (=> bs!1277100 (= lambda!296602 lambda!296477)))

(declare-fun bs!1277101 () Bool)

(assert (= bs!1277101 (and d!1751874 d!1751802)))

(assert (=> bs!1277101 (not (= lambda!296602 lambda!296593))))

(declare-fun bs!1277102 () Bool)

(assert (= bs!1277102 (and d!1751874 d!1751332)))

(assert (=> bs!1277102 (= lambda!296602 lambda!296498)))

(declare-fun bs!1277103 () Bool)

(assert (= bs!1277103 (and d!1751874 b!5527239)))

(assert (=> bs!1277103 (not (= lambda!296602 lambda!296494))))

(declare-fun bs!1277104 () Bool)

(assert (= bs!1277104 (and d!1751874 b!5528270)))

(assert (=> bs!1277104 (not (= lambda!296602 lambda!296595))))

(declare-fun bs!1277105 () Bool)

(assert (= bs!1277105 (and d!1751874 b!5527749)))

(assert (=> bs!1277105 (not (= lambda!296602 lambda!296535))))

(declare-fun bs!1277106 () Bool)

(assert (= bs!1277106 (and d!1751874 d!1751656)))

(assert (=> bs!1277106 (not (= lambda!296602 lambda!296558))))

(declare-fun bs!1277107 () Bool)

(assert (= bs!1277107 (and d!1751874 b!5527986)))

(assert (=> bs!1277107 (not (= lambda!296602 lambda!296561))))

(declare-fun bs!1277108 () Bool)

(assert (= bs!1277108 (and d!1751874 b!5526944)))

(assert (=> bs!1277108 (not (= lambda!296602 lambda!296453))))

(declare-fun bs!1277109 () Bool)

(assert (= bs!1277109 (and d!1751874 d!1751566)))

(assert (=> bs!1277109 (not (= lambda!296602 lambda!296541))))

(declare-fun bs!1277110 () Bool)

(assert (= bs!1277110 (and d!1751874 b!5528108)))

(assert (=> bs!1277110 (not (= lambda!296602 lambda!296585))))

(declare-fun bs!1277111 () Bool)

(assert (= bs!1277111 (and d!1751874 b!5528110)))

(assert (=> bs!1277111 (not (= lambda!296602 lambda!296586))))

(declare-fun bs!1277112 () Bool)

(assert (= bs!1277112 (and d!1751874 b!5526947)))

(assert (=> bs!1277112 (not (= lambda!296602 lambda!296454))))

(declare-fun bs!1277113 () Bool)

(assert (= bs!1277113 (and d!1751874 d!1751822)))

(assert (=> bs!1277113 (= lambda!296602 lambda!296596)))

(declare-fun bs!1277114 () Bool)

(assert (= bs!1277114 (and d!1751874 d!1751290)))

(assert (=> bs!1277114 (= lambda!296602 lambda!296480)))

(declare-fun bs!1277115 () Bool)

(assert (= bs!1277115 (and d!1751874 b!5528268)))

(assert (=> bs!1277115 (not (= lambda!296602 lambda!296594))))

(declare-fun bs!1277116 () Bool)

(assert (= bs!1277116 (and d!1751874 b!5526949)))

(assert (=> bs!1277116 (not (= lambda!296602 lambda!296455))))

(assert (=> d!1751874 (= (inv!82029 setElem!36761) (forall!14690 (exprs!5397 setElem!36761) lambda!296602))))

(declare-fun bs!1277117 () Bool)

(assert (= bs!1277117 d!1751874))

(declare-fun m!6530526 () Bool)

(assert (=> bs!1277117 m!6530526))

(assert (=> setNonEmpty!36761 d!1751874))

(declare-fun d!1751876 () Bool)

(assert (=> d!1751876 (= (head!11830 (unfocusZipperList!941 zl!343)) (h!69162 (unfocusZipperList!941 zl!343)))))

(assert (=> b!5527139 d!1751876))

(declare-fun bm!410316 () Bool)

(declare-fun call!410326 () List!62838)

(declare-fun call!410324 () List!62838)

(assert (=> bm!410316 (= call!410326 call!410324)))

(declare-fun b!5528346 () Bool)

(declare-fun e!3417606 () (InoxSet Context!9794))

(declare-fun e!3417609 () (InoxSet Context!9794))

(assert (=> b!5528346 (= e!3417606 e!3417609)))

(declare-fun c!967312 () Bool)

(assert (=> b!5528346 (= c!967312 ((_ is Union!15513) (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))))))

(declare-fun d!1751878 () Bool)

(declare-fun c!967314 () Bool)

(assert (=> d!1751878 (= c!967314 (and ((_ is ElementMatch!15513) (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (= (c!966767 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (h!69164 s!2326))))))

(assert (=> d!1751878 (= (derivationStepZipperDown!855 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292)) (ite c!966904 lt!2247553 (Context!9795 call!410049)) (h!69164 s!2326)) e!3417606)))

(declare-fun b!5528347 () Bool)

(assert (=> b!5528347 (= e!3417606 (store ((as const (Array Context!9794 Bool)) false) (ite c!966904 lt!2247553 (Context!9795 call!410049)) true))))

(declare-fun bm!410317 () Bool)

(declare-fun call!410325 () (InoxSet Context!9794))

(declare-fun call!410323 () (InoxSet Context!9794))

(assert (=> bm!410317 (= call!410325 call!410323)))

(declare-fun b!5528348 () Bool)

(declare-fun e!3417611 () (InoxSet Context!9794))

(declare-fun e!3417607 () (InoxSet Context!9794))

(assert (=> b!5528348 (= e!3417611 e!3417607)))

(declare-fun c!967315 () Bool)

(assert (=> b!5528348 (= c!967315 ((_ is Concat!24358) (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))))))

(declare-fun b!5528349 () Bool)

(declare-fun e!3417608 () (InoxSet Context!9794))

(declare-fun call!410321 () (InoxSet Context!9794))

(assert (=> b!5528349 (= e!3417608 call!410321)))

(declare-fun b!5528350 () Bool)

(declare-fun c!967311 () Bool)

(assert (=> b!5528350 (= c!967311 ((_ is Star!15513) (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))))))

(assert (=> b!5528350 (= e!3417607 e!3417608)))

(declare-fun b!5528351 () Bool)

(declare-fun c!967313 () Bool)

(declare-fun e!3417610 () Bool)

(assert (=> b!5528351 (= c!967313 e!3417610)))

(declare-fun res!2353981 () Bool)

(assert (=> b!5528351 (=> (not res!2353981) (not e!3417610))))

(assert (=> b!5528351 (= res!2353981 ((_ is Concat!24358) (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))))))

(assert (=> b!5528351 (= e!3417609 e!3417611)))

(declare-fun b!5528352 () Bool)

(assert (=> b!5528352 (= e!3417608 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410318 () Bool)

(assert (=> bm!410318 (= call!410321 call!410325)))

(declare-fun bm!410319 () Bool)

(assert (=> bm!410319 (= call!410324 ($colon$colon!1592 (exprs!5397 (ite c!966904 lt!2247553 (Context!9795 call!410049))) (ite (or c!967313 c!967315) (regTwo!31538 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292)))))))

(declare-fun b!5528353 () Bool)

(assert (=> b!5528353 (= e!3417607 call!410321)))

(declare-fun b!5528354 () Bool)

(declare-fun call!410322 () (InoxSet Context!9794))

(assert (=> b!5528354 (= e!3417611 ((_ map or) call!410322 call!410325))))

(declare-fun bm!410320 () Bool)

(assert (=> bm!410320 (= call!410322 (derivationStepZipperDown!855 (ite c!967312 (regTwo!31539 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (regOne!31538 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292)))) (ite c!967312 (ite c!966904 lt!2247553 (Context!9795 call!410049)) (Context!9795 call!410324)) (h!69164 s!2326)))))

(declare-fun bm!410321 () Bool)

(assert (=> bm!410321 (= call!410323 (derivationStepZipperDown!855 (ite c!967312 (regOne!31539 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (ite c!967313 (regTwo!31538 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (ite c!967315 (regOne!31538 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292))) (reg!15842 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292)))))) (ite (or c!967312 c!967313) (ite c!966904 lt!2247553 (Context!9795 call!410049)) (Context!9795 call!410326)) (h!69164 s!2326)))))

(declare-fun b!5528355 () Bool)

(assert (=> b!5528355 (= e!3417609 ((_ map or) call!410323 call!410322))))

(declare-fun b!5528356 () Bool)

(assert (=> b!5528356 (= e!3417610 (nullable!5547 (regOne!31538 (ite c!966904 (regTwo!31539 r!7292) (regOne!31538 r!7292)))))))

(assert (= (and d!1751878 c!967314) b!5528347))

(assert (= (and d!1751878 (not c!967314)) b!5528346))

(assert (= (and b!5528346 c!967312) b!5528355))

(assert (= (and b!5528346 (not c!967312)) b!5528351))

(assert (= (and b!5528351 res!2353981) b!5528356))

(assert (= (and b!5528351 c!967313) b!5528354))

(assert (= (and b!5528351 (not c!967313)) b!5528348))

(assert (= (and b!5528348 c!967315) b!5528353))

(assert (= (and b!5528348 (not c!967315)) b!5528350))

(assert (= (and b!5528350 c!967311) b!5528349))

(assert (= (and b!5528350 (not c!967311)) b!5528352))

(assert (= (or b!5528353 b!5528349) bm!410316))

(assert (= (or b!5528353 b!5528349) bm!410318))

(assert (= (or b!5528354 bm!410316) bm!410319))

(assert (= (or b!5528354 bm!410318) bm!410317))

(assert (= (or b!5528355 b!5528354) bm!410320))

(assert (= (or b!5528355 bm!410317) bm!410321))

(declare-fun m!6530528 () Bool)

(assert (=> b!5528347 m!6530528))

(declare-fun m!6530530 () Bool)

(assert (=> b!5528356 m!6530530))

(declare-fun m!6530532 () Bool)

(assert (=> bm!410321 m!6530532))

(declare-fun m!6530534 () Bool)

(assert (=> bm!410319 m!6530534))

(declare-fun m!6530536 () Bool)

(assert (=> bm!410320 m!6530536))

(assert (=> bm!410045 d!1751878))

(declare-fun bm!410322 () Bool)

(declare-fun call!410332 () List!62838)

(declare-fun call!410330 () List!62838)

(assert (=> bm!410322 (= call!410332 call!410330)))

(declare-fun b!5528357 () Bool)

(declare-fun e!3417612 () (InoxSet Context!9794))

(declare-fun e!3417615 () (InoxSet Context!9794))

(assert (=> b!5528357 (= e!3417612 e!3417615)))

(declare-fun c!967317 () Bool)

(assert (=> b!5528357 (= c!967317 ((_ is Union!15513) (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))))))

(declare-fun d!1751880 () Bool)

(declare-fun c!967319 () Bool)

(assert (=> d!1751880 (= c!967319 (and ((_ is ElementMatch!15513) (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (= (c!966767 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (h!69164 s!2326))))))

(assert (=> d!1751880 (= (derivationStepZipperDown!855 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))) (ite c!966962 lt!2247530 (Context!9795 call!410073)) (h!69164 s!2326)) e!3417612)))

(declare-fun b!5528358 () Bool)

(assert (=> b!5528358 (= e!3417612 (store ((as const (Array Context!9794 Bool)) false) (ite c!966962 lt!2247530 (Context!9795 call!410073)) true))))

(declare-fun bm!410323 () Bool)

(declare-fun call!410331 () (InoxSet Context!9794))

(declare-fun call!410329 () (InoxSet Context!9794))

(assert (=> bm!410323 (= call!410331 call!410329)))

(declare-fun b!5528359 () Bool)

(declare-fun e!3417617 () (InoxSet Context!9794))

(declare-fun e!3417613 () (InoxSet Context!9794))

(assert (=> b!5528359 (= e!3417617 e!3417613)))

(declare-fun c!967320 () Bool)

(assert (=> b!5528359 (= c!967320 ((_ is Concat!24358) (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))))))

(declare-fun b!5528360 () Bool)

(declare-fun e!3417614 () (InoxSet Context!9794))

(declare-fun call!410327 () (InoxSet Context!9794))

(assert (=> b!5528360 (= e!3417614 call!410327)))

(declare-fun b!5528361 () Bool)

(declare-fun c!967316 () Bool)

(assert (=> b!5528361 (= c!967316 ((_ is Star!15513) (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))))))

(assert (=> b!5528361 (= e!3417613 e!3417614)))

(declare-fun b!5528362 () Bool)

(declare-fun c!967318 () Bool)

(declare-fun e!3417616 () Bool)

(assert (=> b!5528362 (= c!967318 e!3417616)))

(declare-fun res!2353982 () Bool)

(assert (=> b!5528362 (=> (not res!2353982) (not e!3417616))))

(assert (=> b!5528362 (= res!2353982 ((_ is Concat!24358) (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))))))

(assert (=> b!5528362 (= e!3417615 e!3417617)))

(declare-fun b!5528363 () Bool)

(assert (=> b!5528363 (= e!3417614 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410324 () Bool)

(assert (=> bm!410324 (= call!410327 call!410331)))

(declare-fun bm!410325 () Bool)

(assert (=> bm!410325 (= call!410330 ($colon$colon!1592 (exprs!5397 (ite c!966962 lt!2247530 (Context!9795 call!410073))) (ite (or c!967318 c!967320) (regTwo!31538 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))))))))

(declare-fun b!5528364 () Bool)

(assert (=> b!5528364 (= e!3417613 call!410327)))

(declare-fun b!5528365 () Bool)

(declare-fun call!410328 () (InoxSet Context!9794))

(assert (=> b!5528365 (= e!3417617 ((_ map or) call!410328 call!410331))))

(declare-fun bm!410326 () Bool)

(assert (=> bm!410326 (= call!410328 (derivationStepZipperDown!855 (ite c!967317 (regTwo!31539 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (regOne!31538 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))))) (ite c!967317 (ite c!966962 lt!2247530 (Context!9795 call!410073)) (Context!9795 call!410330)) (h!69164 s!2326)))))

(declare-fun bm!410327 () Bool)

(assert (=> bm!410327 (= call!410329 (derivationStepZipperDown!855 (ite c!967317 (regOne!31539 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (ite c!967318 (regTwo!31538 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (ite c!967320 (regOne!31538 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292)))) (reg!15842 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))))))) (ite (or c!967317 c!967318) (ite c!966962 lt!2247530 (Context!9795 call!410073)) (Context!9795 call!410332)) (h!69164 s!2326)))))

(declare-fun b!5528366 () Bool)

(assert (=> b!5528366 (= e!3417615 ((_ map or) call!410329 call!410328))))

(declare-fun b!5528367 () Bool)

(assert (=> b!5528367 (= e!3417616 (nullable!5547 (regOne!31538 (ite c!966962 (regTwo!31539 (regOne!31538 r!7292)) (regOne!31538 (regOne!31538 r!7292))))))))

(assert (= (and d!1751880 c!967319) b!5528358))

(assert (= (and d!1751880 (not c!967319)) b!5528357))

(assert (= (and b!5528357 c!967317) b!5528366))

(assert (= (and b!5528357 (not c!967317)) b!5528362))

(assert (= (and b!5528362 res!2353982) b!5528367))

(assert (= (and b!5528362 c!967318) b!5528365))

(assert (= (and b!5528362 (not c!967318)) b!5528359))

(assert (= (and b!5528359 c!967320) b!5528364))

(assert (= (and b!5528359 (not c!967320)) b!5528361))

(assert (= (and b!5528361 c!967316) b!5528360))

(assert (= (and b!5528361 (not c!967316)) b!5528363))

(assert (= (or b!5528364 b!5528360) bm!410322))

(assert (= (or b!5528364 b!5528360) bm!410324))

(assert (= (or b!5528365 bm!410322) bm!410325))

(assert (= (or b!5528365 bm!410324) bm!410323))

(assert (= (or b!5528366 b!5528365) bm!410326))

(assert (= (or b!5528366 bm!410323) bm!410327))

(declare-fun m!6530538 () Bool)

(assert (=> b!5528358 m!6530538))

(declare-fun m!6530540 () Bool)

(assert (=> b!5528367 m!6530540))

(declare-fun m!6530542 () Bool)

(assert (=> bm!410327 m!6530542))

(declare-fun m!6530544 () Bool)

(assert (=> bm!410325 m!6530544))

(declare-fun m!6530546 () Bool)

(assert (=> bm!410326 m!6530546))

(assert (=> bm!410069 d!1751880))

(declare-fun d!1751882 () Bool)

(assert (=> d!1751882 true))

(assert (=> d!1751882 true))

(declare-fun res!2353985 () Bool)

(assert (=> d!1751882 (= (choose!41996 lambda!296388) res!2353985)))

(assert (=> d!1751302 d!1751882))

(declare-fun d!1751884 () Bool)

(declare-fun c!967321 () Bool)

(assert (=> d!1751884 (= c!967321 (isEmpty!34505 (tail!10924 (t!376095 s!2326))))))

(declare-fun e!3417618 () Bool)

(assert (=> d!1751884 (= (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))) e!3417618)))

(declare-fun b!5528368 () Bool)

(assert (=> b!5528368 (= e!3417618 (nullableZipper!1539 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (head!11829 (t!376095 s!2326)))))))

(declare-fun b!5528369 () Bool)

(assert (=> b!5528369 (= e!3417618 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (head!11829 (tail!10924 (t!376095 s!2326)))) (tail!10924 (tail!10924 (t!376095 s!2326)))))))

(assert (= (and d!1751884 c!967321) b!5528368))

(assert (= (and d!1751884 (not c!967321)) b!5528369))

(assert (=> d!1751884 m!6529216))

(assert (=> d!1751884 m!6530058))

(assert (=> b!5528368 m!6529368))

(declare-fun m!6530548 () Bool)

(assert (=> b!5528368 m!6530548))

(assert (=> b!5528369 m!6529216))

(assert (=> b!5528369 m!6530062))

(assert (=> b!5528369 m!6529368))

(assert (=> b!5528369 m!6530062))

(declare-fun m!6530550 () Bool)

(assert (=> b!5528369 m!6530550))

(assert (=> b!5528369 m!6529216))

(assert (=> b!5528369 m!6530066))

(assert (=> b!5528369 m!6530550))

(assert (=> b!5528369 m!6530066))

(declare-fun m!6530552 () Bool)

(assert (=> b!5528369 m!6530552))

(assert (=> b!5527226 d!1751884))

(declare-fun bs!1277118 () Bool)

(declare-fun d!1751886 () Bool)

(assert (= bs!1277118 (and d!1751886 d!1751318)))

(declare-fun lambda!296603 () Int)

(assert (=> bs!1277118 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296603 lambda!296493))))

(declare-fun bs!1277119 () Bool)

(assert (= bs!1277119 (and d!1751886 d!1751268)))

(assert (=> bs!1277119 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296603 lambda!296474))))

(declare-fun bs!1277120 () Bool)

(assert (= bs!1277120 (and d!1751886 d!1751600)))

(assert (=> bs!1277120 (= (= (head!11829 (t!376095 s!2326)) (head!11829 s!2326)) (= lambda!296603 lambda!296549))))

(declare-fun bs!1277121 () Bool)

(assert (= bs!1277121 (and d!1751886 d!1751772)))

(assert (=> bs!1277121 (= lambda!296603 lambda!296592)))

(declare-fun bs!1277122 () Bool)

(assert (= bs!1277122 (and d!1751886 b!5526445)))

(assert (=> bs!1277122 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296603 lambda!296389))))

(declare-fun bs!1277123 () Bool)

(assert (= bs!1277123 (and d!1751886 d!1751866)))

(assert (=> bs!1277123 (= lambda!296603 lambda!296601)))

(declare-fun bs!1277124 () Bool)

(assert (= bs!1277124 (and d!1751886 d!1751640)))

(assert (=> bs!1277124 (= lambda!296603 lambda!296557)))

(declare-fun bs!1277125 () Bool)

(assert (= bs!1277125 (and d!1751886 d!1751246)))

(assert (=> bs!1277125 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296603 lambda!296447))))

(assert (=> d!1751886 true))

(assert (=> d!1751886 (= (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) (head!11829 (t!376095 s!2326))) (flatMap!1126 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) lambda!296603))))

(declare-fun bs!1277126 () Bool)

(assert (= bs!1277126 d!1751886))

(assert (=> bs!1277126 m!6528736))

(declare-fun m!6530554 () Bool)

(assert (=> bs!1277126 m!6530554))

(assert (=> b!5527226 d!1751886))

(assert (=> b!5527226 d!1751642))

(assert (=> b!5527226 d!1751644))

(declare-fun d!1751888 () Bool)

(declare-fun c!967322 () Bool)

(assert (=> d!1751888 (= c!967322 (isEmpty!34505 (tail!10924 (t!376095 s!2326))))))

(declare-fun e!3417619 () Bool)

(assert (=> d!1751888 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247542 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))) e!3417619)))

(declare-fun b!5528370 () Bool)

(assert (=> b!5528370 (= e!3417619 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247542 (head!11829 (t!376095 s!2326)))))))

(declare-fun b!5528371 () Bool)

(assert (=> b!5528371 (= e!3417619 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247542 (head!11829 (t!376095 s!2326))) (head!11829 (tail!10924 (t!376095 s!2326)))) (tail!10924 (tail!10924 (t!376095 s!2326)))))))

(assert (= (and d!1751888 c!967322) b!5528370))

(assert (= (and d!1751888 (not c!967322)) b!5528371))

(assert (=> d!1751888 m!6529216))

(assert (=> d!1751888 m!6530058))

(assert (=> b!5528370 m!6529376))

(declare-fun m!6530556 () Bool)

(assert (=> b!5528370 m!6530556))

(assert (=> b!5528371 m!6529216))

(assert (=> b!5528371 m!6530062))

(assert (=> b!5528371 m!6529376))

(assert (=> b!5528371 m!6530062))

(declare-fun m!6530558 () Bool)

(assert (=> b!5528371 m!6530558))

(assert (=> b!5528371 m!6529216))

(assert (=> b!5528371 m!6530066))

(assert (=> b!5528371 m!6530558))

(assert (=> b!5528371 m!6530066))

(declare-fun m!6530560 () Bool)

(assert (=> b!5528371 m!6530560))

(assert (=> b!5527228 d!1751888))

(declare-fun bs!1277127 () Bool)

(declare-fun d!1751890 () Bool)

(assert (= bs!1277127 (and d!1751890 d!1751318)))

(declare-fun lambda!296604 () Int)

(assert (=> bs!1277127 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296604 lambda!296493))))

(declare-fun bs!1277128 () Bool)

(assert (= bs!1277128 (and d!1751890 d!1751268)))

(assert (=> bs!1277128 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296604 lambda!296474))))

(declare-fun bs!1277129 () Bool)

(assert (= bs!1277129 (and d!1751890 d!1751600)))

(assert (=> bs!1277129 (= (= (head!11829 (t!376095 s!2326)) (head!11829 s!2326)) (= lambda!296604 lambda!296549))))

(declare-fun bs!1277130 () Bool)

(assert (= bs!1277130 (and d!1751890 d!1751772)))

(assert (=> bs!1277130 (= lambda!296604 lambda!296592)))

(declare-fun bs!1277131 () Bool)

(assert (= bs!1277131 (and d!1751890 b!5526445)))

(assert (=> bs!1277131 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296604 lambda!296389))))

(declare-fun bs!1277132 () Bool)

(assert (= bs!1277132 (and d!1751890 d!1751866)))

(assert (=> bs!1277132 (= lambda!296604 lambda!296601)))

(declare-fun bs!1277133 () Bool)

(assert (= bs!1277133 (and d!1751890 d!1751886)))

(assert (=> bs!1277133 (= lambda!296604 lambda!296603)))

(declare-fun bs!1277134 () Bool)

(assert (= bs!1277134 (and d!1751890 d!1751640)))

(assert (=> bs!1277134 (= lambda!296604 lambda!296557)))

(declare-fun bs!1277135 () Bool)

(assert (= bs!1277135 (and d!1751890 d!1751246)))

(assert (=> bs!1277135 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296604 lambda!296447))))

(assert (=> d!1751890 true))

(assert (=> d!1751890 (= (derivationStepZipper!1618 lt!2247542 (head!11829 (t!376095 s!2326))) (flatMap!1126 lt!2247542 lambda!296604))))

(declare-fun bs!1277136 () Bool)

(assert (= bs!1277136 d!1751890))

(declare-fun m!6530562 () Bool)

(assert (=> bs!1277136 m!6530562))

(assert (=> b!5527228 d!1751890))

(assert (=> b!5527228 d!1751642))

(assert (=> b!5527228 d!1751644))

(declare-fun bm!410328 () Bool)

(declare-fun call!410338 () List!62838)

(declare-fun call!410336 () List!62838)

(assert (=> bm!410328 (= call!410338 call!410336)))

(declare-fun b!5528372 () Bool)

(declare-fun e!3417620 () (InoxSet Context!9794))

(declare-fun e!3417623 () (InoxSet Context!9794))

(assert (=> b!5528372 (= e!3417620 e!3417623)))

(declare-fun c!967324 () Bool)

(assert (=> b!5528372 (= c!967324 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun d!1751892 () Bool)

(declare-fun c!967326 () Bool)

(assert (=> d!1751892 (= c!967326 (and ((_ is ElementMatch!15513) (h!69162 (exprs!5397 lt!2247538))) (= (c!966767 (h!69162 (exprs!5397 lt!2247538))) (h!69164 s!2326))))))

(assert (=> d!1751892 (= (derivationStepZipperDown!855 (h!69162 (exprs!5397 lt!2247538)) (Context!9795 (t!376093 (exprs!5397 lt!2247538))) (h!69164 s!2326)) e!3417620)))

(declare-fun b!5528373 () Bool)

(assert (=> b!5528373 (= e!3417620 (store ((as const (Array Context!9794 Bool)) false) (Context!9795 (t!376093 (exprs!5397 lt!2247538))) true))))

(declare-fun bm!410329 () Bool)

(declare-fun call!410337 () (InoxSet Context!9794))

(declare-fun call!410335 () (InoxSet Context!9794))

(assert (=> bm!410329 (= call!410337 call!410335)))

(declare-fun b!5528374 () Bool)

(declare-fun e!3417625 () (InoxSet Context!9794))

(declare-fun e!3417621 () (InoxSet Context!9794))

(assert (=> b!5528374 (= e!3417625 e!3417621)))

(declare-fun c!967327 () Bool)

(assert (=> b!5528374 (= c!967327 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5528375 () Bool)

(declare-fun e!3417622 () (InoxSet Context!9794))

(declare-fun call!410333 () (InoxSet Context!9794))

(assert (=> b!5528375 (= e!3417622 call!410333)))

(declare-fun b!5528376 () Bool)

(declare-fun c!967323 () Bool)

(assert (=> b!5528376 (= c!967323 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247538))))))

(assert (=> b!5528376 (= e!3417621 e!3417622)))

(declare-fun b!5528377 () Bool)

(declare-fun c!967325 () Bool)

(declare-fun e!3417624 () Bool)

(assert (=> b!5528377 (= c!967325 e!3417624)))

(declare-fun res!2353986 () Bool)

(assert (=> b!5528377 (=> (not res!2353986) (not e!3417624))))

(assert (=> b!5528377 (= res!2353986 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247538))))))

(assert (=> b!5528377 (= e!3417623 e!3417625)))

(declare-fun b!5528378 () Bool)

(assert (=> b!5528378 (= e!3417622 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410330 () Bool)

(assert (=> bm!410330 (= call!410333 call!410337)))

(declare-fun bm!410331 () Bool)

(assert (=> bm!410331 (= call!410336 ($colon$colon!1592 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247538)))) (ite (or c!967325 c!967327) (regTwo!31538 (h!69162 (exprs!5397 lt!2247538))) (h!69162 (exprs!5397 lt!2247538)))))))

(declare-fun b!5528379 () Bool)

(assert (=> b!5528379 (= e!3417621 call!410333)))

(declare-fun b!5528380 () Bool)

(declare-fun call!410334 () (InoxSet Context!9794))

(assert (=> b!5528380 (= e!3417625 ((_ map or) call!410334 call!410337))))

(declare-fun bm!410332 () Bool)

(assert (=> bm!410332 (= call!410334 (derivationStepZipperDown!855 (ite c!967324 (regTwo!31539 (h!69162 (exprs!5397 lt!2247538))) (regOne!31538 (h!69162 (exprs!5397 lt!2247538)))) (ite c!967324 (Context!9795 (t!376093 (exprs!5397 lt!2247538))) (Context!9795 call!410336)) (h!69164 s!2326)))))

(declare-fun bm!410333 () Bool)

(assert (=> bm!410333 (= call!410335 (derivationStepZipperDown!855 (ite c!967324 (regOne!31539 (h!69162 (exprs!5397 lt!2247538))) (ite c!967325 (regTwo!31538 (h!69162 (exprs!5397 lt!2247538))) (ite c!967327 (regOne!31538 (h!69162 (exprs!5397 lt!2247538))) (reg!15842 (h!69162 (exprs!5397 lt!2247538)))))) (ite (or c!967324 c!967325) (Context!9795 (t!376093 (exprs!5397 lt!2247538))) (Context!9795 call!410338)) (h!69164 s!2326)))))

(declare-fun b!5528381 () Bool)

(assert (=> b!5528381 (= e!3417623 ((_ map or) call!410335 call!410334))))

(declare-fun b!5528382 () Bool)

(assert (=> b!5528382 (= e!3417624 (nullable!5547 (regOne!31538 (h!69162 (exprs!5397 lt!2247538)))))))

(assert (= (and d!1751892 c!967326) b!5528373))

(assert (= (and d!1751892 (not c!967326)) b!5528372))

(assert (= (and b!5528372 c!967324) b!5528381))

(assert (= (and b!5528372 (not c!967324)) b!5528377))

(assert (= (and b!5528377 res!2353986) b!5528382))

(assert (= (and b!5528377 c!967325) b!5528380))

(assert (= (and b!5528377 (not c!967325)) b!5528374))

(assert (= (and b!5528374 c!967327) b!5528379))

(assert (= (and b!5528374 (not c!967327)) b!5528376))

(assert (= (and b!5528376 c!967323) b!5528375))

(assert (= (and b!5528376 (not c!967323)) b!5528378))

(assert (= (or b!5528379 b!5528375) bm!410328))

(assert (= (or b!5528379 b!5528375) bm!410330))

(assert (= (or b!5528380 bm!410328) bm!410331))

(assert (= (or b!5528380 bm!410330) bm!410329))

(assert (= (or b!5528381 b!5528380) bm!410332))

(assert (= (or b!5528381 bm!410329) bm!410333))

(declare-fun m!6530564 () Bool)

(assert (=> b!5528373 m!6530564))

(declare-fun m!6530566 () Bool)

(assert (=> b!5528382 m!6530566))

(declare-fun m!6530568 () Bool)

(assert (=> bm!410333 m!6530568))

(declare-fun m!6530570 () Bool)

(assert (=> bm!410331 m!6530570))

(declare-fun m!6530572 () Bool)

(assert (=> bm!410332 m!6530572))

(assert (=> bm!410049 d!1751892))

(declare-fun d!1751894 () Bool)

(assert (=> d!1751894 (= (isDefined!12225 lt!2247696) (not (isEmpty!34506 lt!2247696)))))

(declare-fun bs!1277137 () Bool)

(assert (= bs!1277137 d!1751894))

(declare-fun m!6530574 () Bool)

(assert (=> bs!1277137 m!6530574))

(assert (=> d!1751300 d!1751894))

(declare-fun b!5528383 () Bool)

(declare-fun res!2353989 () Bool)

(declare-fun e!3417629 () Bool)

(assert (=> b!5528383 (=> res!2353989 e!3417629)))

(assert (=> b!5528383 (= res!2353989 (not (isEmpty!34505 (tail!10924 Nil!62716))))))

(declare-fun b!5528384 () Bool)

(declare-fun e!3417627 () Bool)

(declare-fun e!3417632 () Bool)

(assert (=> b!5528384 (= e!3417627 e!3417632)))

(declare-fun res!2353992 () Bool)

(assert (=> b!5528384 (=> (not res!2353992) (not e!3417632))))

(declare-fun lt!2247818 () Bool)

(assert (=> b!5528384 (= res!2353992 (not lt!2247818))))

(declare-fun b!5528385 () Bool)

(declare-fun e!3417626 () Bool)

(assert (=> b!5528385 (= e!3417626 (= (head!11829 Nil!62716) (c!966767 (regOne!31538 r!7292))))))

(declare-fun b!5528386 () Bool)

(declare-fun res!2353993 () Bool)

(assert (=> b!5528386 (=> res!2353993 e!3417627)))

(assert (=> b!5528386 (= res!2353993 (not ((_ is ElementMatch!15513) (regOne!31538 r!7292))))))

(declare-fun e!3417630 () Bool)

(assert (=> b!5528386 (= e!3417630 e!3417627)))

(declare-fun b!5528387 () Bool)

(assert (=> b!5528387 (= e!3417630 (not lt!2247818))))

(declare-fun b!5528388 () Bool)

(assert (=> b!5528388 (= e!3417629 (not (= (head!11829 Nil!62716) (c!966767 (regOne!31538 r!7292)))))))

(declare-fun b!5528389 () Bool)

(declare-fun e!3417628 () Bool)

(declare-fun call!410339 () Bool)

(assert (=> b!5528389 (= e!3417628 (= lt!2247818 call!410339))))

(declare-fun b!5528390 () Bool)

(declare-fun res!2353987 () Bool)

(assert (=> b!5528390 (=> (not res!2353987) (not e!3417626))))

(assert (=> b!5528390 (= res!2353987 (not call!410339))))

(declare-fun b!5528391 () Bool)

(declare-fun res!2353991 () Bool)

(assert (=> b!5528391 (=> res!2353991 e!3417627)))

(assert (=> b!5528391 (= res!2353991 e!3417626)))

(declare-fun res!2353990 () Bool)

(assert (=> b!5528391 (=> (not res!2353990) (not e!3417626))))

(assert (=> b!5528391 (= res!2353990 lt!2247818)))

(declare-fun b!5528392 () Bool)

(declare-fun e!3417631 () Bool)

(assert (=> b!5528392 (= e!3417631 (nullable!5547 (regOne!31538 r!7292)))))

(declare-fun b!5528393 () Bool)

(assert (=> b!5528393 (= e!3417628 e!3417630)))

(declare-fun c!967328 () Bool)

(assert (=> b!5528393 (= c!967328 ((_ is EmptyLang!15513) (regOne!31538 r!7292)))))

(declare-fun bm!410334 () Bool)

(assert (=> bm!410334 (= call!410339 (isEmpty!34505 Nil!62716))))

(declare-fun b!5528394 () Bool)

(declare-fun res!2353994 () Bool)

(assert (=> b!5528394 (=> (not res!2353994) (not e!3417626))))

(assert (=> b!5528394 (= res!2353994 (isEmpty!34505 (tail!10924 Nil!62716)))))

(declare-fun d!1751896 () Bool)

(assert (=> d!1751896 e!3417628))

(declare-fun c!967329 () Bool)

(assert (=> d!1751896 (= c!967329 ((_ is EmptyExpr!15513) (regOne!31538 r!7292)))))

(assert (=> d!1751896 (= lt!2247818 e!3417631)))

(declare-fun c!967330 () Bool)

(assert (=> d!1751896 (= c!967330 (isEmpty!34505 Nil!62716))))

(assert (=> d!1751896 (validRegex!7249 (regOne!31538 r!7292))))

(assert (=> d!1751896 (= (matchR!7698 (regOne!31538 r!7292) Nil!62716) lt!2247818)))

(declare-fun b!5528395 () Bool)

(assert (=> b!5528395 (= e!3417631 (matchR!7698 (derivativeStep!4378 (regOne!31538 r!7292) (head!11829 Nil!62716)) (tail!10924 Nil!62716)))))

(declare-fun b!5528396 () Bool)

(assert (=> b!5528396 (= e!3417632 e!3417629)))

(declare-fun res!2353988 () Bool)

(assert (=> b!5528396 (=> res!2353988 e!3417629)))

(assert (=> b!5528396 (= res!2353988 call!410339)))

(assert (= (and d!1751896 c!967330) b!5528392))

(assert (= (and d!1751896 (not c!967330)) b!5528395))

(assert (= (and d!1751896 c!967329) b!5528389))

(assert (= (and d!1751896 (not c!967329)) b!5528393))

(assert (= (and b!5528393 c!967328) b!5528387))

(assert (= (and b!5528393 (not c!967328)) b!5528386))

(assert (= (and b!5528386 (not res!2353993)) b!5528391))

(assert (= (and b!5528391 res!2353990) b!5528390))

(assert (= (and b!5528390 res!2353987) b!5528394))

(assert (= (and b!5528394 res!2353994) b!5528385))

(assert (= (and b!5528391 (not res!2353991)) b!5528384))

(assert (= (and b!5528384 res!2353992) b!5528396))

(assert (= (and b!5528396 (not res!2353988)) b!5528383))

(assert (= (and b!5528383 (not res!2353989)) b!5528388))

(assert (= (or b!5528389 b!5528390 b!5528396) bm!410334))

(declare-fun m!6530576 () Bool)

(assert (=> bm!410334 m!6530576))

(declare-fun m!6530578 () Bool)

(assert (=> b!5528383 m!6530578))

(assert (=> b!5528383 m!6530578))

(declare-fun m!6530580 () Bool)

(assert (=> b!5528383 m!6530580))

(declare-fun m!6530582 () Bool)

(assert (=> b!5528388 m!6530582))

(assert (=> b!5528385 m!6530582))

(assert (=> b!5528395 m!6530582))

(assert (=> b!5528395 m!6530582))

(declare-fun m!6530584 () Bool)

(assert (=> b!5528395 m!6530584))

(assert (=> b!5528395 m!6530578))

(assert (=> b!5528395 m!6530584))

(assert (=> b!5528395 m!6530578))

(declare-fun m!6530586 () Bool)

(assert (=> b!5528395 m!6530586))

(assert (=> d!1751896 m!6530576))

(assert (=> d!1751896 m!6529318))

(assert (=> b!5528392 m!6528718))

(assert (=> b!5528394 m!6530578))

(assert (=> b!5528394 m!6530578))

(assert (=> b!5528394 m!6530580))

(assert (=> d!1751300 d!1751896))

(assert (=> d!1751300 d!1751700))

(declare-fun d!1751898 () Bool)

(declare-fun res!2353995 () Bool)

(declare-fun e!3417633 () Bool)

(assert (=> d!1751898 (=> res!2353995 e!3417633)))

(assert (=> d!1751898 (= res!2353995 ((_ is Nil!62714) (exprs!5397 lt!2247538)))))

(assert (=> d!1751898 (= (forall!14690 (exprs!5397 lt!2247538) lambda!296453) e!3417633)))

(declare-fun b!5528397 () Bool)

(declare-fun e!3417634 () Bool)

(assert (=> b!5528397 (= e!3417633 e!3417634)))

(declare-fun res!2353996 () Bool)

(assert (=> b!5528397 (=> (not res!2353996) (not e!3417634))))

(assert (=> b!5528397 (= res!2353996 (dynLambda!24517 lambda!296453 (h!69162 (exprs!5397 lt!2247538))))))

(declare-fun b!5528398 () Bool)

(assert (=> b!5528398 (= e!3417634 (forall!14690 (t!376093 (exprs!5397 lt!2247538)) lambda!296453))))

(assert (= (and d!1751898 (not res!2353995)) b!5528397))

(assert (= (and b!5528397 res!2353996) b!5528398))

(declare-fun b_lambda!209775 () Bool)

(assert (=> (not b_lambda!209775) (not b!5528397)))

(declare-fun m!6530588 () Bool)

(assert (=> b!5528397 m!6530588))

(declare-fun m!6530590 () Bool)

(assert (=> b!5528398 m!6530590))

(assert (=> b!5526944 d!1751898))

(assert (=> b!5527183 d!1751894))

(declare-fun bs!1277138 () Bool)

(declare-fun d!1751900 () Bool)

(assert (= bs!1277138 (and d!1751900 d!1751718)))

(declare-fun lambda!296605 () Int)

(assert (=> bs!1277138 (= lambda!296605 lambda!296576)))

(declare-fun bs!1277139 () Bool)

(assert (= bs!1277139 (and d!1751900 b!5526958)))

(assert (=> bs!1277139 (not (= lambda!296605 lambda!296464))))

(declare-fun bs!1277140 () Bool)

(assert (= bs!1277140 (and d!1751900 b!5526961)))

(assert (=> bs!1277140 (not (= lambda!296605 lambda!296466))))

(declare-fun bs!1277141 () Bool)

(assert (= bs!1277141 (and d!1751900 d!1751846)))

(assert (=> bs!1277141 (= lambda!296605 lambda!296597)))

(declare-fun bs!1277142 () Bool)

(assert (= bs!1277142 (and d!1751900 b!5526963)))

(assert (=> bs!1277142 (not (= lambda!296605 lambda!296467))))

(declare-fun bs!1277143 () Bool)

(assert (= bs!1277143 (and d!1751900 d!1751632)))

(assert (=> bs!1277143 (= lambda!296605 lambda!296555)))

(declare-fun bs!1277144 () Bool)

(assert (= bs!1277144 (and d!1751900 d!1751862)))

(assert (=> bs!1277144 (= lambda!296605 lambda!296600)))

(declare-fun bs!1277145 () Bool)

(assert (= bs!1277145 (and d!1751900 b!5526956)))

(assert (=> bs!1277145 (not (= lambda!296605 lambda!296463))))

(declare-fun bs!1277146 () Bool)

(assert (= bs!1277146 (and d!1751900 b!5528100)))

(assert (=> bs!1277146 (not (= lambda!296605 lambda!296583))))

(declare-fun bs!1277147 () Bool)

(assert (= bs!1277147 (and d!1751900 d!1751742)))

(assert (=> bs!1277147 (not (= lambda!296605 lambda!296591))))

(declare-fun bs!1277148 () Bool)

(assert (= bs!1277148 (and d!1751900 b!5528098)))

(assert (=> bs!1277148 (not (= lambda!296605 lambda!296582))))

(assert (=> d!1751900 (= (nullableZipper!1539 lt!2247542) (exists!2147 lt!2247542 lambda!296605))))

(declare-fun bs!1277149 () Bool)

(assert (= bs!1277149 d!1751900))

(declare-fun m!6530592 () Bool)

(assert (=> bs!1277149 m!6530592))

(assert (=> b!5527227 d!1751900))

(declare-fun d!1751902 () Bool)

(assert (=> d!1751902 (= (isEmpty!34501 (exprs!5397 (h!69163 zl!343))) ((_ is Nil!62714) (exprs!5397 (h!69163 zl!343))))))

(assert (=> b!5527118 d!1751902))

(assert (=> d!1751324 d!1751704))

(assert (=> bm!410054 d!1751774))

(declare-fun bs!1277150 () Bool)

(declare-fun d!1751904 () Bool)

(assert (= bs!1277150 (and d!1751904 d!1751900)))

(declare-fun lambda!296606 () Int)

(assert (=> bs!1277150 (= lambda!296606 lambda!296605)))

(declare-fun bs!1277151 () Bool)

(assert (= bs!1277151 (and d!1751904 d!1751718)))

(assert (=> bs!1277151 (= lambda!296606 lambda!296576)))

(declare-fun bs!1277152 () Bool)

(assert (= bs!1277152 (and d!1751904 b!5526958)))

(assert (=> bs!1277152 (not (= lambda!296606 lambda!296464))))

(declare-fun bs!1277153 () Bool)

(assert (= bs!1277153 (and d!1751904 b!5526961)))

(assert (=> bs!1277153 (not (= lambda!296606 lambda!296466))))

(declare-fun bs!1277154 () Bool)

(assert (= bs!1277154 (and d!1751904 d!1751846)))

(assert (=> bs!1277154 (= lambda!296606 lambda!296597)))

(declare-fun bs!1277155 () Bool)

(assert (= bs!1277155 (and d!1751904 b!5526963)))

(assert (=> bs!1277155 (not (= lambda!296606 lambda!296467))))

(declare-fun bs!1277156 () Bool)

(assert (= bs!1277156 (and d!1751904 d!1751632)))

(assert (=> bs!1277156 (= lambda!296606 lambda!296555)))

(declare-fun bs!1277157 () Bool)

(assert (= bs!1277157 (and d!1751904 d!1751862)))

(assert (=> bs!1277157 (= lambda!296606 lambda!296600)))

(declare-fun bs!1277158 () Bool)

(assert (= bs!1277158 (and d!1751904 b!5526956)))

(assert (=> bs!1277158 (not (= lambda!296606 lambda!296463))))

(declare-fun bs!1277159 () Bool)

(assert (= bs!1277159 (and d!1751904 b!5528100)))

(assert (=> bs!1277159 (not (= lambda!296606 lambda!296583))))

(declare-fun bs!1277160 () Bool)

(assert (= bs!1277160 (and d!1751904 d!1751742)))

(assert (=> bs!1277160 (not (= lambda!296606 lambda!296591))))

(declare-fun bs!1277161 () Bool)

(assert (= bs!1277161 (and d!1751904 b!5528098)))

(assert (=> bs!1277161 (not (= lambda!296606 lambda!296582))))

(assert (=> d!1751904 (= (nullableZipper!1539 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326))) (exists!2147 (derivationStepZipper!1618 lt!2247543 (h!69164 s!2326)) lambda!296606))))

(declare-fun bs!1277162 () Bool)

(assert (= bs!1277162 d!1751904))

(assert (=> bs!1277162 m!6528736))

(declare-fun m!6530594 () Bool)

(assert (=> bs!1277162 m!6530594))

(assert (=> b!5527225 d!1751904))

(declare-fun b!5528401 () Bool)

(declare-fun res!2353998 () Bool)

(declare-fun e!3417636 () Bool)

(assert (=> b!5528401 (=> (not res!2353998) (not e!3417636))))

(declare-fun lt!2247819 () List!62840)

(assert (=> b!5528401 (= res!2353998 (= (size!39942 lt!2247819) (+ (size!39942 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716))) (size!39942 (t!376095 s!2326)))))))

(declare-fun d!1751906 () Bool)

(assert (=> d!1751906 e!3417636))

(declare-fun res!2353997 () Bool)

(assert (=> d!1751906 (=> (not res!2353997) (not e!3417636))))

(assert (=> d!1751906 (= res!2353997 (= (content!11282 lt!2247819) ((_ map or) (content!11282 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716))) (content!11282 (t!376095 s!2326)))))))

(declare-fun e!3417635 () List!62840)

(assert (=> d!1751906 (= lt!2247819 e!3417635)))

(declare-fun c!967331 () Bool)

(assert (=> d!1751906 (= c!967331 ((_ is Nil!62716) (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716))))))

(assert (=> d!1751906 (= (++!13761 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (t!376095 s!2326)) lt!2247819)))

(declare-fun b!5528402 () Bool)

(assert (=> b!5528402 (= e!3417636 (or (not (= (t!376095 s!2326) Nil!62716)) (= lt!2247819 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)))))))

(declare-fun b!5528399 () Bool)

(assert (=> b!5528399 (= e!3417635 (t!376095 s!2326))))

(declare-fun b!5528400 () Bool)

(assert (=> b!5528400 (= e!3417635 (Cons!62716 (h!69164 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716))) (++!13761 (t!376095 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716))) (t!376095 s!2326))))))

(assert (= (and d!1751906 c!967331) b!5528399))

(assert (= (and d!1751906 (not c!967331)) b!5528400))

(assert (= (and d!1751906 res!2353997) b!5528401))

(assert (= (and b!5528401 res!2353998) b!5528402))

(declare-fun m!6530596 () Bool)

(assert (=> b!5528401 m!6530596))

(assert (=> b!5528401 m!6529328))

(declare-fun m!6530598 () Bool)

(assert (=> b!5528401 m!6530598))

(declare-fun m!6530600 () Bool)

(assert (=> b!5528401 m!6530600))

(declare-fun m!6530602 () Bool)

(assert (=> d!1751906 m!6530602))

(assert (=> d!1751906 m!6529328))

(declare-fun m!6530604 () Bool)

(assert (=> d!1751906 m!6530604))

(declare-fun m!6530606 () Bool)

(assert (=> d!1751906 m!6530606))

(declare-fun m!6530608 () Bool)

(assert (=> b!5528400 m!6530608))

(assert (=> b!5527179 d!1751906))

(declare-fun b!5528405 () Bool)

(declare-fun res!2354000 () Bool)

(declare-fun e!3417638 () Bool)

(assert (=> b!5528405 (=> (not res!2354000) (not e!3417638))))

(declare-fun lt!2247820 () List!62840)

(assert (=> b!5528405 (= res!2354000 (= (size!39942 lt!2247820) (+ (size!39942 Nil!62716) (size!39942 (Cons!62716 (h!69164 s!2326) Nil!62716)))))))

(declare-fun d!1751908 () Bool)

(assert (=> d!1751908 e!3417638))

(declare-fun res!2353999 () Bool)

(assert (=> d!1751908 (=> (not res!2353999) (not e!3417638))))

(assert (=> d!1751908 (= res!2353999 (= (content!11282 lt!2247820) ((_ map or) (content!11282 Nil!62716) (content!11282 (Cons!62716 (h!69164 s!2326) Nil!62716)))))))

(declare-fun e!3417637 () List!62840)

(assert (=> d!1751908 (= lt!2247820 e!3417637)))

(declare-fun c!967332 () Bool)

(assert (=> d!1751908 (= c!967332 ((_ is Nil!62716) Nil!62716))))

(assert (=> d!1751908 (= (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) lt!2247820)))

(declare-fun b!5528406 () Bool)

(assert (=> b!5528406 (= e!3417638 (or (not (= (Cons!62716 (h!69164 s!2326) Nil!62716) Nil!62716)) (= lt!2247820 Nil!62716)))))

(declare-fun b!5528403 () Bool)

(assert (=> b!5528403 (= e!3417637 (Cons!62716 (h!69164 s!2326) Nil!62716))))

(declare-fun b!5528404 () Bool)

(assert (=> b!5528404 (= e!3417637 (Cons!62716 (h!69164 Nil!62716) (++!13761 (t!376095 Nil!62716) (Cons!62716 (h!69164 s!2326) Nil!62716))))))

(assert (= (and d!1751908 c!967332) b!5528403))

(assert (= (and d!1751908 (not c!967332)) b!5528404))

(assert (= (and d!1751908 res!2353999) b!5528405))

(assert (= (and b!5528405 res!2354000) b!5528406))

(declare-fun m!6530610 () Bool)

(assert (=> b!5528405 m!6530610))

(declare-fun m!6530612 () Bool)

(assert (=> b!5528405 m!6530612))

(declare-fun m!6530614 () Bool)

(assert (=> b!5528405 m!6530614))

(declare-fun m!6530616 () Bool)

(assert (=> d!1751908 m!6530616))

(declare-fun m!6530618 () Bool)

(assert (=> d!1751908 m!6530618))

(declare-fun m!6530620 () Bool)

(assert (=> d!1751908 m!6530620))

(declare-fun m!6530622 () Bool)

(assert (=> b!5528404 m!6530622))

(assert (=> b!5527179 d!1751908))

(declare-fun d!1751910 () Bool)

(assert (=> d!1751910 (= (++!13761 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (t!376095 s!2326)) s!2326)))

(declare-fun lt!2247823 () Unit!155486)

(declare-fun choose!42006 (List!62840 C!31296 List!62840 List!62840) Unit!155486)

(assert (=> d!1751910 (= lt!2247823 (choose!42006 Nil!62716 (h!69164 s!2326) (t!376095 s!2326) s!2326))))

(assert (=> d!1751910 (= (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) (t!376095 s!2326))) s!2326)))

(assert (=> d!1751910 (= (lemmaMoveElementToOtherListKeepsConcatEq!1930 Nil!62716 (h!69164 s!2326) (t!376095 s!2326) s!2326) lt!2247823)))

(declare-fun bs!1277163 () Bool)

(assert (= bs!1277163 d!1751910))

(assert (=> bs!1277163 m!6529328))

(assert (=> bs!1277163 m!6529328))

(assert (=> bs!1277163 m!6529330))

(declare-fun m!6530624 () Bool)

(assert (=> bs!1277163 m!6530624))

(declare-fun m!6530626 () Bool)

(assert (=> bs!1277163 m!6530626))

(assert (=> b!5527179 d!1751910))

(declare-fun b!5528407 () Bool)

(declare-fun res!2354003 () Bool)

(declare-fun e!3417643 () Bool)

(assert (=> b!5528407 (=> (not res!2354003) (not e!3417643))))

(declare-fun lt!2247824 () Option!15522)

(assert (=> b!5528407 (= res!2354003 (matchR!7698 (regOne!31538 r!7292) (_1!35913 (get!21585 lt!2247824))))))

(declare-fun b!5528408 () Bool)

(declare-fun res!2354005 () Bool)

(assert (=> b!5528408 (=> (not res!2354005) (not e!3417643))))

(assert (=> b!5528408 (= res!2354005 (matchR!7698 (regTwo!31538 r!7292) (_2!35913 (get!21585 lt!2247824))))))

(declare-fun b!5528409 () Bool)

(declare-fun e!3417640 () Option!15522)

(assert (=> b!5528409 (= e!3417640 (Some!15521 (tuple2!65221 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (t!376095 s!2326))))))

(declare-fun b!5528410 () Bool)

(assert (=> b!5528410 (= e!3417643 (= (++!13761 (_1!35913 (get!21585 lt!2247824)) (_2!35913 (get!21585 lt!2247824))) s!2326))))

(declare-fun d!1751912 () Bool)

(declare-fun e!3417641 () Bool)

(assert (=> d!1751912 e!3417641))

(declare-fun res!2354004 () Bool)

(assert (=> d!1751912 (=> res!2354004 e!3417641)))

(assert (=> d!1751912 (= res!2354004 e!3417643)))

(declare-fun res!2354001 () Bool)

(assert (=> d!1751912 (=> (not res!2354001) (not e!3417643))))

(assert (=> d!1751912 (= res!2354001 (isDefined!12225 lt!2247824))))

(assert (=> d!1751912 (= lt!2247824 e!3417640)))

(declare-fun c!967334 () Bool)

(declare-fun e!3417642 () Bool)

(assert (=> d!1751912 (= c!967334 e!3417642)))

(declare-fun res!2354002 () Bool)

(assert (=> d!1751912 (=> (not res!2354002) (not e!3417642))))

(assert (=> d!1751912 (= res!2354002 (matchR!7698 (regOne!31538 r!7292) (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716))))))

(assert (=> d!1751912 (validRegex!7249 (regOne!31538 r!7292))))

(assert (=> d!1751912 (= (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (t!376095 s!2326) s!2326) lt!2247824)))

(declare-fun b!5528411 () Bool)

(declare-fun lt!2247825 () Unit!155486)

(declare-fun lt!2247826 () Unit!155486)

(assert (=> b!5528411 (= lt!2247825 lt!2247826)))

(assert (=> b!5528411 (= (++!13761 (++!13761 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (Cons!62716 (h!69164 (t!376095 s!2326)) Nil!62716)) (t!376095 (t!376095 s!2326))) s!2326)))

(assert (=> b!5528411 (= lt!2247826 (lemmaMoveElementToOtherListKeepsConcatEq!1930 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (h!69164 (t!376095 s!2326)) (t!376095 (t!376095 s!2326)) s!2326))))

(declare-fun e!3417639 () Option!15522)

(assert (=> b!5528411 (= e!3417639 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) (++!13761 (++!13761 Nil!62716 (Cons!62716 (h!69164 s!2326) Nil!62716)) (Cons!62716 (h!69164 (t!376095 s!2326)) Nil!62716)) (t!376095 (t!376095 s!2326)) s!2326))))

(declare-fun b!5528412 () Bool)

(assert (=> b!5528412 (= e!3417640 e!3417639)))

(declare-fun c!967333 () Bool)

(assert (=> b!5528412 (= c!967333 ((_ is Nil!62716) (t!376095 s!2326)))))

(declare-fun b!5528413 () Bool)

(assert (=> b!5528413 (= e!3417642 (matchR!7698 (regTwo!31538 r!7292) (t!376095 s!2326)))))

(declare-fun b!5528414 () Bool)

(assert (=> b!5528414 (= e!3417639 None!15521)))

(declare-fun b!5528415 () Bool)

(assert (=> b!5528415 (= e!3417641 (not (isDefined!12225 lt!2247824)))))

(assert (= (and d!1751912 res!2354002) b!5528413))

(assert (= (and d!1751912 c!967334) b!5528409))

(assert (= (and d!1751912 (not c!967334)) b!5528412))

(assert (= (and b!5528412 c!967333) b!5528414))

(assert (= (and b!5528412 (not c!967333)) b!5528411))

(assert (= (and d!1751912 res!2354001) b!5528407))

(assert (= (and b!5528407 res!2354003) b!5528408))

(assert (= (and b!5528408 res!2354005) b!5528410))

(assert (= (and d!1751912 (not res!2354004)) b!5528415))

(declare-fun m!6530628 () Bool)

(assert (=> d!1751912 m!6530628))

(assert (=> d!1751912 m!6529328))

(declare-fun m!6530630 () Bool)

(assert (=> d!1751912 m!6530630))

(assert (=> d!1751912 m!6529318))

(declare-fun m!6530632 () Bool)

(assert (=> b!5528413 m!6530632))

(declare-fun m!6530634 () Bool)

(assert (=> b!5528408 m!6530634))

(declare-fun m!6530636 () Bool)

(assert (=> b!5528408 m!6530636))

(assert (=> b!5528407 m!6530634))

(declare-fun m!6530638 () Bool)

(assert (=> b!5528407 m!6530638))

(assert (=> b!5528415 m!6530628))

(assert (=> b!5528411 m!6529328))

(declare-fun m!6530640 () Bool)

(assert (=> b!5528411 m!6530640))

(assert (=> b!5528411 m!6530640))

(declare-fun m!6530642 () Bool)

(assert (=> b!5528411 m!6530642))

(assert (=> b!5528411 m!6529328))

(declare-fun m!6530644 () Bool)

(assert (=> b!5528411 m!6530644))

(assert (=> b!5528411 m!6530640))

(declare-fun m!6530646 () Bool)

(assert (=> b!5528411 m!6530646))

(assert (=> b!5528410 m!6530634))

(declare-fun m!6530648 () Bool)

(assert (=> b!5528410 m!6530648))

(assert (=> b!5527179 d!1751912))

(declare-fun bs!1277164 () Bool)

(declare-fun d!1751914 () Bool)

(assert (= bs!1277164 (and d!1751914 d!1751334)))

(declare-fun lambda!296607 () Int)

(assert (=> bs!1277164 (= lambda!296607 lambda!296499)))

(declare-fun bs!1277165 () Bool)

(assert (= bs!1277165 (and d!1751914 d!1751874)))

(assert (=> bs!1277165 (= lambda!296607 lambda!296602)))

(declare-fun bs!1277166 () Bool)

(assert (= bs!1277166 (and d!1751914 b!5526942)))

(assert (=> bs!1277166 (not (= lambda!296607 lambda!296452))))

(declare-fun bs!1277167 () Bool)

(assert (= bs!1277167 (and d!1751914 b!5527241)))

(assert (=> bs!1277167 (not (= lambda!296607 lambda!296495))))

(declare-fun bs!1277168 () Bool)

(assert (= bs!1277168 (and d!1751914 b!5527751)))

(assert (=> bs!1277168 (not (= lambda!296607 lambda!296536))))

(declare-fun bs!1277169 () Bool)

(assert (= bs!1277169 (and d!1751914 b!5527984)))

(assert (=> bs!1277169 (not (= lambda!296607 lambda!296560))))

(declare-fun bs!1277170 () Bool)

(assert (= bs!1277170 (and d!1751914 d!1751728)))

(assert (=> bs!1277170 (= lambda!296607 lambda!296578)))

(declare-fun bs!1277171 () Bool)

(assert (= bs!1277171 (and d!1751914 d!1751292)))

(assert (=> bs!1277171 (= lambda!296607 lambda!296483)))

(declare-fun bs!1277172 () Bool)

(assert (= bs!1277172 (and d!1751914 d!1751288)))

(assert (=> bs!1277172 (= lambda!296607 lambda!296477)))

(declare-fun bs!1277173 () Bool)

(assert (= bs!1277173 (and d!1751914 d!1751802)))

(assert (=> bs!1277173 (not (= lambda!296607 lambda!296593))))

(declare-fun bs!1277174 () Bool)

(assert (= bs!1277174 (and d!1751914 d!1751332)))

(assert (=> bs!1277174 (= lambda!296607 lambda!296498)))

(declare-fun bs!1277175 () Bool)

(assert (= bs!1277175 (and d!1751914 b!5527239)))

(assert (=> bs!1277175 (not (= lambda!296607 lambda!296494))))

(declare-fun bs!1277176 () Bool)

(assert (= bs!1277176 (and d!1751914 b!5528270)))

(assert (=> bs!1277176 (not (= lambda!296607 lambda!296595))))

(declare-fun bs!1277177 () Bool)

(assert (= bs!1277177 (and d!1751914 b!5527749)))

(assert (=> bs!1277177 (not (= lambda!296607 lambda!296535))))

(declare-fun bs!1277178 () Bool)

(assert (= bs!1277178 (and d!1751914 d!1751656)))

(assert (=> bs!1277178 (not (= lambda!296607 lambda!296558))))

(declare-fun bs!1277179 () Bool)

(assert (= bs!1277179 (and d!1751914 b!5527986)))

(assert (=> bs!1277179 (not (= lambda!296607 lambda!296561))))

(declare-fun bs!1277180 () Bool)

(assert (= bs!1277180 (and d!1751914 b!5526944)))

(assert (=> bs!1277180 (not (= lambda!296607 lambda!296453))))

(declare-fun bs!1277181 () Bool)

(assert (= bs!1277181 (and d!1751914 d!1751566)))

(assert (=> bs!1277181 (not (= lambda!296607 lambda!296541))))

(declare-fun bs!1277182 () Bool)

(assert (= bs!1277182 (and d!1751914 b!5528108)))

(assert (=> bs!1277182 (not (= lambda!296607 lambda!296585))))

(declare-fun bs!1277183 () Bool)

(assert (= bs!1277183 (and d!1751914 b!5528110)))

(assert (=> bs!1277183 (not (= lambda!296607 lambda!296586))))

(declare-fun bs!1277184 () Bool)

(assert (= bs!1277184 (and d!1751914 b!5526947)))

(assert (=> bs!1277184 (not (= lambda!296607 lambda!296454))))

(declare-fun bs!1277185 () Bool)

(assert (= bs!1277185 (and d!1751914 d!1751822)))

(assert (=> bs!1277185 (= lambda!296607 lambda!296596)))

(declare-fun bs!1277186 () Bool)

(assert (= bs!1277186 (and d!1751914 d!1751290)))

(assert (=> bs!1277186 (= lambda!296607 lambda!296480)))

(declare-fun bs!1277187 () Bool)

(assert (= bs!1277187 (and d!1751914 b!5528268)))

(assert (=> bs!1277187 (not (= lambda!296607 lambda!296594))))

(declare-fun bs!1277188 () Bool)

(assert (= bs!1277188 (and d!1751914 b!5526949)))

(assert (=> bs!1277188 (not (= lambda!296607 lambda!296455))))

(declare-fun b!5528416 () Bool)

(declare-fun e!3417645 () Bool)

(declare-fun lt!2247827 () Regex!15513)

(assert (=> b!5528416 (= e!3417645 (isEmptyExpr!1085 lt!2247827))))

(declare-fun b!5528417 () Bool)

(declare-fun e!3417644 () Regex!15513)

(assert (=> b!5528417 (= e!3417644 (h!69162 (t!376093 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5528418 () Bool)

(declare-fun e!3417647 () Bool)

(assert (=> b!5528418 (= e!3417645 e!3417647)))

(declare-fun c!967336 () Bool)

(assert (=> b!5528418 (= c!967336 (isEmpty!34501 (tail!10925 (t!376093 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5528419 () Bool)

(assert (=> b!5528419 (= e!3417647 (isConcat!608 lt!2247827))))

(declare-fun e!3417649 () Bool)

(assert (=> d!1751914 e!3417649))

(declare-fun res!2354007 () Bool)

(assert (=> d!1751914 (=> (not res!2354007) (not e!3417649))))

(assert (=> d!1751914 (= res!2354007 (validRegex!7249 lt!2247827))))

(assert (=> d!1751914 (= lt!2247827 e!3417644)))

(declare-fun c!967337 () Bool)

(declare-fun e!3417648 () Bool)

(assert (=> d!1751914 (= c!967337 e!3417648)))

(declare-fun res!2354006 () Bool)

(assert (=> d!1751914 (=> (not res!2354006) (not e!3417648))))

(assert (=> d!1751914 (= res!2354006 ((_ is Cons!62714) (t!376093 (exprs!5397 (h!69163 zl!343)))))))

(assert (=> d!1751914 (forall!14690 (t!376093 (exprs!5397 (h!69163 zl!343))) lambda!296607)))

(assert (=> d!1751914 (= (generalisedConcat!1128 (t!376093 (exprs!5397 (h!69163 zl!343)))) lt!2247827)))

(declare-fun b!5528420 () Bool)

(assert (=> b!5528420 (= e!3417647 (= lt!2247827 (head!11830 (t!376093 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5528421 () Bool)

(declare-fun e!3417646 () Regex!15513)

(assert (=> b!5528421 (= e!3417646 (Concat!24358 (h!69162 (t!376093 (exprs!5397 (h!69163 zl!343)))) (generalisedConcat!1128 (t!376093 (t!376093 (exprs!5397 (h!69163 zl!343)))))))))

(declare-fun b!5528422 () Bool)

(assert (=> b!5528422 (= e!3417648 (isEmpty!34501 (t!376093 (t!376093 (exprs!5397 (h!69163 zl!343))))))))

(declare-fun b!5528423 () Bool)

(assert (=> b!5528423 (= e!3417644 e!3417646)))

(declare-fun c!967338 () Bool)

(assert (=> b!5528423 (= c!967338 ((_ is Cons!62714) (t!376093 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun b!5528424 () Bool)

(assert (=> b!5528424 (= e!3417646 EmptyExpr!15513)))

(declare-fun b!5528425 () Bool)

(assert (=> b!5528425 (= e!3417649 e!3417645)))

(declare-fun c!967335 () Bool)

(assert (=> b!5528425 (= c!967335 (isEmpty!34501 (t!376093 (exprs!5397 (h!69163 zl!343)))))))

(assert (= (and d!1751914 res!2354006) b!5528422))

(assert (= (and d!1751914 c!967337) b!5528417))

(assert (= (and d!1751914 (not c!967337)) b!5528423))

(assert (= (and b!5528423 c!967338) b!5528421))

(assert (= (and b!5528423 (not c!967338)) b!5528424))

(assert (= (and d!1751914 res!2354007) b!5528425))

(assert (= (and b!5528425 c!967335) b!5528416))

(assert (= (and b!5528425 (not c!967335)) b!5528418))

(assert (= (and b!5528418 c!967336) b!5528420))

(assert (= (and b!5528418 (not c!967336)) b!5528419))

(declare-fun m!6530650 () Bool)

(assert (=> b!5528419 m!6530650))

(declare-fun m!6530652 () Bool)

(assert (=> b!5528421 m!6530652))

(declare-fun m!6530654 () Bool)

(assert (=> b!5528422 m!6530654))

(declare-fun m!6530656 () Bool)

(assert (=> d!1751914 m!6530656))

(declare-fun m!6530658 () Bool)

(assert (=> d!1751914 m!6530658))

(declare-fun m!6530660 () Bool)

(assert (=> b!5528420 m!6530660))

(assert (=> b!5528425 m!6528794))

(declare-fun m!6530662 () Bool)

(assert (=> b!5528418 m!6530662))

(assert (=> b!5528418 m!6530662))

(declare-fun m!6530664 () Bool)

(assert (=> b!5528418 m!6530664))

(declare-fun m!6530666 () Bool)

(assert (=> b!5528416 m!6530666))

(assert (=> b!5527114 d!1751914))

(assert (=> bs!1276072 d!1751338))

(assert (=> d!1751340 d!1751336))

(declare-fun d!1751916 () Bool)

(assert (=> d!1751916 (= (flatMap!1126 z!1189 lambda!296389) (dynLambda!24512 lambda!296389 (h!69163 zl!343)))))

(assert (=> d!1751916 true))

(declare-fun _$13!2093 () Unit!155486)

(assert (=> d!1751916 (= (choose!41995 z!1189 (h!69163 zl!343) lambda!296389) _$13!2093)))

(declare-fun b_lambda!209777 () Bool)

(assert (=> (not b_lambda!209777) (not d!1751916)))

(declare-fun bs!1277189 () Bool)

(assert (= bs!1277189 d!1751916))

(assert (=> bs!1277189 m!6528754))

(assert (=> bs!1277189 m!6529426))

(assert (=> d!1751340 d!1751916))

(declare-fun d!1751918 () Bool)

(declare-fun res!2354008 () Bool)

(declare-fun e!3417650 () Bool)

(assert (=> d!1751918 (=> res!2354008 e!3417650)))

(assert (=> d!1751918 (= res!2354008 ((_ is Nil!62714) (exprs!5397 setElem!36755)))))

(assert (=> d!1751918 (= (forall!14690 (exprs!5397 setElem!36755) lambda!296499) e!3417650)))

(declare-fun b!5528426 () Bool)

(declare-fun e!3417651 () Bool)

(assert (=> b!5528426 (= e!3417650 e!3417651)))

(declare-fun res!2354009 () Bool)

(assert (=> b!5528426 (=> (not res!2354009) (not e!3417651))))

(assert (=> b!5528426 (= res!2354009 (dynLambda!24517 lambda!296499 (h!69162 (exprs!5397 setElem!36755))))))

(declare-fun b!5528427 () Bool)

(assert (=> b!5528427 (= e!3417651 (forall!14690 (t!376093 (exprs!5397 setElem!36755)) lambda!296499))))

(assert (= (and d!1751918 (not res!2354008)) b!5528426))

(assert (= (and b!5528426 res!2354009) b!5528427))

(declare-fun b_lambda!209779 () Bool)

(assert (=> (not b_lambda!209779) (not b!5528426)))

(declare-fun m!6530668 () Bool)

(assert (=> b!5528426 m!6530668))

(declare-fun m!6530670 () Bool)

(assert (=> b!5528427 m!6530670))

(assert (=> d!1751334 d!1751918))

(declare-fun d!1751920 () Bool)

(assert (=> d!1751920 (= (isEmpty!34501 (unfocusZipperList!941 zl!343)) ((_ is Nil!62714) (unfocusZipperList!941 zl!343)))))

(assert (=> b!5527143 d!1751920))

(declare-fun b!5528428 () Bool)

(declare-fun res!2354012 () Bool)

(declare-fun e!3417655 () Bool)

(assert (=> b!5528428 (=> res!2354012 e!3417655)))

(assert (=> b!5528428 (= res!2354012 (not (isEmpty!34505 (tail!10924 (_1!35913 (get!21585 lt!2247696))))))))

(declare-fun b!5528429 () Bool)

(declare-fun e!3417653 () Bool)

(declare-fun e!3417658 () Bool)

(assert (=> b!5528429 (= e!3417653 e!3417658)))

(declare-fun res!2354015 () Bool)

(assert (=> b!5528429 (=> (not res!2354015) (not e!3417658))))

(declare-fun lt!2247828 () Bool)

(assert (=> b!5528429 (= res!2354015 (not lt!2247828))))

(declare-fun b!5528430 () Bool)

(declare-fun e!3417652 () Bool)

(assert (=> b!5528430 (= e!3417652 (= (head!11829 (_1!35913 (get!21585 lt!2247696))) (c!966767 (regOne!31538 r!7292))))))

(declare-fun b!5528431 () Bool)

(declare-fun res!2354016 () Bool)

(assert (=> b!5528431 (=> res!2354016 e!3417653)))

(assert (=> b!5528431 (= res!2354016 (not ((_ is ElementMatch!15513) (regOne!31538 r!7292))))))

(declare-fun e!3417656 () Bool)

(assert (=> b!5528431 (= e!3417656 e!3417653)))

(declare-fun b!5528432 () Bool)

(assert (=> b!5528432 (= e!3417656 (not lt!2247828))))

(declare-fun b!5528433 () Bool)

(assert (=> b!5528433 (= e!3417655 (not (= (head!11829 (_1!35913 (get!21585 lt!2247696))) (c!966767 (regOne!31538 r!7292)))))))

(declare-fun b!5528434 () Bool)

(declare-fun e!3417654 () Bool)

(declare-fun call!410340 () Bool)

(assert (=> b!5528434 (= e!3417654 (= lt!2247828 call!410340))))

(declare-fun b!5528435 () Bool)

(declare-fun res!2354010 () Bool)

(assert (=> b!5528435 (=> (not res!2354010) (not e!3417652))))

(assert (=> b!5528435 (= res!2354010 (not call!410340))))

(declare-fun b!5528436 () Bool)

(declare-fun res!2354014 () Bool)

(assert (=> b!5528436 (=> res!2354014 e!3417653)))

(assert (=> b!5528436 (= res!2354014 e!3417652)))

(declare-fun res!2354013 () Bool)

(assert (=> b!5528436 (=> (not res!2354013) (not e!3417652))))

(assert (=> b!5528436 (= res!2354013 lt!2247828)))

(declare-fun b!5528437 () Bool)

(declare-fun e!3417657 () Bool)

(assert (=> b!5528437 (= e!3417657 (nullable!5547 (regOne!31538 r!7292)))))

(declare-fun b!5528438 () Bool)

(assert (=> b!5528438 (= e!3417654 e!3417656)))

(declare-fun c!967339 () Bool)

(assert (=> b!5528438 (= c!967339 ((_ is EmptyLang!15513) (regOne!31538 r!7292)))))

(declare-fun bm!410335 () Bool)

(assert (=> bm!410335 (= call!410340 (isEmpty!34505 (_1!35913 (get!21585 lt!2247696))))))

(declare-fun b!5528439 () Bool)

(declare-fun res!2354017 () Bool)

(assert (=> b!5528439 (=> (not res!2354017) (not e!3417652))))

(assert (=> b!5528439 (= res!2354017 (isEmpty!34505 (tail!10924 (_1!35913 (get!21585 lt!2247696)))))))

(declare-fun d!1751922 () Bool)

(assert (=> d!1751922 e!3417654))

(declare-fun c!967340 () Bool)

(assert (=> d!1751922 (= c!967340 ((_ is EmptyExpr!15513) (regOne!31538 r!7292)))))

(assert (=> d!1751922 (= lt!2247828 e!3417657)))

(declare-fun c!967341 () Bool)

(assert (=> d!1751922 (= c!967341 (isEmpty!34505 (_1!35913 (get!21585 lt!2247696))))))

(assert (=> d!1751922 (validRegex!7249 (regOne!31538 r!7292))))

(assert (=> d!1751922 (= (matchR!7698 (regOne!31538 r!7292) (_1!35913 (get!21585 lt!2247696))) lt!2247828)))

(declare-fun b!5528440 () Bool)

(assert (=> b!5528440 (= e!3417657 (matchR!7698 (derivativeStep!4378 (regOne!31538 r!7292) (head!11829 (_1!35913 (get!21585 lt!2247696)))) (tail!10924 (_1!35913 (get!21585 lt!2247696)))))))

(declare-fun b!5528441 () Bool)

(assert (=> b!5528441 (= e!3417658 e!3417655)))

(declare-fun res!2354011 () Bool)

(assert (=> b!5528441 (=> res!2354011 e!3417655)))

(assert (=> b!5528441 (= res!2354011 call!410340)))

(assert (= (and d!1751922 c!967341) b!5528437))

(assert (= (and d!1751922 (not c!967341)) b!5528440))

(assert (= (and d!1751922 c!967340) b!5528434))

(assert (= (and d!1751922 (not c!967340)) b!5528438))

(assert (= (and b!5528438 c!967339) b!5528432))

(assert (= (and b!5528438 (not c!967339)) b!5528431))

(assert (= (and b!5528431 (not res!2354016)) b!5528436))

(assert (= (and b!5528436 res!2354013) b!5528435))

(assert (= (and b!5528435 res!2354010) b!5528439))

(assert (= (and b!5528439 res!2354017) b!5528430))

(assert (= (and b!5528436 (not res!2354014)) b!5528429))

(assert (= (and b!5528429 res!2354015) b!5528441))

(assert (= (and b!5528441 (not res!2354011)) b!5528428))

(assert (= (and b!5528428 (not res!2354012)) b!5528433))

(assert (= (or b!5528434 b!5528435 b!5528441) bm!410335))

(declare-fun m!6530672 () Bool)

(assert (=> bm!410335 m!6530672))

(declare-fun m!6530674 () Bool)

(assert (=> b!5528428 m!6530674))

(assert (=> b!5528428 m!6530674))

(declare-fun m!6530676 () Bool)

(assert (=> b!5528428 m!6530676))

(declare-fun m!6530678 () Bool)

(assert (=> b!5528433 m!6530678))

(assert (=> b!5528430 m!6530678))

(assert (=> b!5528440 m!6530678))

(assert (=> b!5528440 m!6530678))

(declare-fun m!6530680 () Bool)

(assert (=> b!5528440 m!6530680))

(assert (=> b!5528440 m!6530674))

(assert (=> b!5528440 m!6530680))

(assert (=> b!5528440 m!6530674))

(declare-fun m!6530682 () Bool)

(assert (=> b!5528440 m!6530682))

(assert (=> d!1751922 m!6530672))

(assert (=> d!1751922 m!6529318))

(assert (=> b!5528437 m!6528718))

(assert (=> b!5528439 m!6530674))

(assert (=> b!5528439 m!6530674))

(assert (=> b!5528439 m!6530676))

(assert (=> b!5527175 d!1751922))

(assert (=> b!5527175 d!1751842))

(declare-fun d!1751924 () Bool)

(declare-fun c!967342 () Bool)

(assert (=> d!1751924 (= c!967342 (isEmpty!34505 (tail!10924 (t!376095 s!2326))))))

(declare-fun e!3417659 () Bool)

(assert (=> d!1751924 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247548 (head!11829 (t!376095 s!2326))) (tail!10924 (t!376095 s!2326))) e!3417659)))

(declare-fun b!5528442 () Bool)

(assert (=> b!5528442 (= e!3417659 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247548 (head!11829 (t!376095 s!2326)))))))

(declare-fun b!5528443 () Bool)

(assert (=> b!5528443 (= e!3417659 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247548 (head!11829 (t!376095 s!2326))) (head!11829 (tail!10924 (t!376095 s!2326)))) (tail!10924 (tail!10924 (t!376095 s!2326)))))))

(assert (= (and d!1751924 c!967342) b!5528442))

(assert (= (and d!1751924 (not c!967342)) b!5528443))

(assert (=> d!1751924 m!6529216))

(assert (=> d!1751924 m!6530058))

(assert (=> b!5528442 m!6529382))

(declare-fun m!6530684 () Bool)

(assert (=> b!5528442 m!6530684))

(assert (=> b!5528443 m!6529216))

(assert (=> b!5528443 m!6530062))

(assert (=> b!5528443 m!6529382))

(assert (=> b!5528443 m!6530062))

(declare-fun m!6530686 () Bool)

(assert (=> b!5528443 m!6530686))

(assert (=> b!5528443 m!6529216))

(assert (=> b!5528443 m!6530066))

(assert (=> b!5528443 m!6530686))

(assert (=> b!5528443 m!6530066))

(declare-fun m!6530688 () Bool)

(assert (=> b!5528443 m!6530688))

(assert (=> b!5527230 d!1751924))

(declare-fun bs!1277190 () Bool)

(declare-fun d!1751926 () Bool)

(assert (= bs!1277190 (and d!1751926 d!1751318)))

(declare-fun lambda!296608 () Int)

(assert (=> bs!1277190 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296608 lambda!296493))))

(declare-fun bs!1277191 () Bool)

(assert (= bs!1277191 (and d!1751926 d!1751268)))

(assert (=> bs!1277191 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296608 lambda!296474))))

(declare-fun bs!1277192 () Bool)

(assert (= bs!1277192 (and d!1751926 d!1751600)))

(assert (=> bs!1277192 (= (= (head!11829 (t!376095 s!2326)) (head!11829 s!2326)) (= lambda!296608 lambda!296549))))

(declare-fun bs!1277193 () Bool)

(assert (= bs!1277193 (and d!1751926 d!1751772)))

(assert (=> bs!1277193 (= lambda!296608 lambda!296592)))

(declare-fun bs!1277194 () Bool)

(assert (= bs!1277194 (and d!1751926 b!5526445)))

(assert (=> bs!1277194 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296608 lambda!296389))))

(declare-fun bs!1277195 () Bool)

(assert (= bs!1277195 (and d!1751926 d!1751866)))

(assert (=> bs!1277195 (= lambda!296608 lambda!296601)))

(declare-fun bs!1277196 () Bool)

(assert (= bs!1277196 (and d!1751926 d!1751886)))

(assert (=> bs!1277196 (= lambda!296608 lambda!296603)))

(declare-fun bs!1277197 () Bool)

(assert (= bs!1277197 (and d!1751926 d!1751640)))

(assert (=> bs!1277197 (= lambda!296608 lambda!296557)))

(declare-fun bs!1277198 () Bool)

(assert (= bs!1277198 (and d!1751926 d!1751890)))

(assert (=> bs!1277198 (= lambda!296608 lambda!296604)))

(declare-fun bs!1277199 () Bool)

(assert (= bs!1277199 (and d!1751926 d!1751246)))

(assert (=> bs!1277199 (= (= (head!11829 (t!376095 s!2326)) (h!69164 s!2326)) (= lambda!296608 lambda!296447))))

(assert (=> d!1751926 true))

(assert (=> d!1751926 (= (derivationStepZipper!1618 lt!2247548 (head!11829 (t!376095 s!2326))) (flatMap!1126 lt!2247548 lambda!296608))))

(declare-fun bs!1277200 () Bool)

(assert (= bs!1277200 d!1751926))

(declare-fun m!6530690 () Bool)

(assert (=> bs!1277200 m!6530690))

(assert (=> b!5527230 d!1751926))

(assert (=> b!5527230 d!1751642))

(assert (=> b!5527230 d!1751644))

(declare-fun d!1751928 () Bool)

(declare-fun res!2354018 () Bool)

(declare-fun e!3417660 () Bool)

(assert (=> d!1751928 (=> res!2354018 e!3417660)))

(assert (=> d!1751928 (= res!2354018 ((_ is Nil!62714) (exprs!5397 lt!2247531)))))

(assert (=> d!1751928 (= (forall!14690 (exprs!5397 lt!2247531) lambda!296455) e!3417660)))

(declare-fun b!5528444 () Bool)

(declare-fun e!3417661 () Bool)

(assert (=> b!5528444 (= e!3417660 e!3417661)))

(declare-fun res!2354019 () Bool)

(assert (=> b!5528444 (=> (not res!2354019) (not e!3417661))))

(assert (=> b!5528444 (= res!2354019 (dynLambda!24517 lambda!296455 (h!69162 (exprs!5397 lt!2247531))))))

(declare-fun b!5528445 () Bool)

(assert (=> b!5528445 (= e!3417661 (forall!14690 (t!376093 (exprs!5397 lt!2247531)) lambda!296455))))

(assert (= (and d!1751928 (not res!2354018)) b!5528444))

(assert (= (and b!5528444 res!2354019) b!5528445))

(declare-fun b_lambda!209781 () Bool)

(assert (=> (not b_lambda!209781) (not b!5528444)))

(declare-fun m!6530692 () Bool)

(assert (=> b!5528444 m!6530692))

(declare-fun m!6530694 () Bool)

(assert (=> b!5528445 m!6530694))

(assert (=> b!5526949 d!1751928))

(declare-fun d!1751930 () Bool)

(assert (=> d!1751930 true))

(assert (=> d!1751930 true))

(declare-fun res!2354020 () Bool)

(assert (=> d!1751930 (= (choose!41996 lambda!296387) res!2354020)))

(assert (=> d!1751304 d!1751930))

(declare-fun d!1751932 () Bool)

(declare-fun res!2354021 () Bool)

(declare-fun e!3417662 () Bool)

(assert (=> d!1751932 (=> res!2354021 e!3417662)))

(assert (=> d!1751932 (= res!2354021 ((_ is Nil!62715) (Cons!62715 lt!2247531 Nil!62715)))))

(assert (=> d!1751932 (= (forall!14691 (Cons!62715 lt!2247531 Nil!62715) lambda!296464) e!3417662)))

(declare-fun b!5528446 () Bool)

(declare-fun e!3417663 () Bool)

(assert (=> b!5528446 (= e!3417662 e!3417663)))

(declare-fun res!2354022 () Bool)

(assert (=> b!5528446 (=> (not res!2354022) (not e!3417663))))

(assert (=> b!5528446 (= res!2354022 (dynLambda!24518 lambda!296464 (h!69163 (Cons!62715 lt!2247531 Nil!62715))))))

(declare-fun b!5528447 () Bool)

(assert (=> b!5528447 (= e!3417663 (forall!14691 (t!376094 (Cons!62715 lt!2247531 Nil!62715)) lambda!296464))))

(assert (= (and d!1751932 (not res!2354021)) b!5528446))

(assert (= (and b!5528446 res!2354022) b!5528447))

(declare-fun b_lambda!209783 () Bool)

(assert (=> (not b_lambda!209783) (not b!5528446)))

(declare-fun m!6530696 () Bool)

(assert (=> b!5528446 m!6530696))

(declare-fun m!6530698 () Bool)

(assert (=> b!5528447 m!6530698))

(assert (=> b!5526958 d!1751932))

(declare-fun bm!410336 () Bool)

(declare-fun call!410346 () List!62838)

(declare-fun call!410344 () List!62838)

(assert (=> bm!410336 (= call!410346 call!410344)))

(declare-fun b!5528448 () Bool)

(declare-fun e!3417664 () (InoxSet Context!9794))

(declare-fun e!3417667 () (InoxSet Context!9794))

(assert (=> b!5528448 (= e!3417664 e!3417667)))

(declare-fun c!967344 () Bool)

(assert (=> b!5528448 (= c!967344 ((_ is Union!15513) (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))))))

(declare-fun d!1751934 () Bool)

(declare-fun c!967346 () Bool)

(assert (=> d!1751934 (= c!967346 (and ((_ is ElementMatch!15513) (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (= (c!966767 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (h!69164 s!2326))))))

(assert (=> d!1751934 (= (derivationStepZipperDown!855 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292)))) (ite (or c!966904 c!966905) lt!2247553 (Context!9795 call!410051)) (h!69164 s!2326)) e!3417664)))

(declare-fun b!5528449 () Bool)

(assert (=> b!5528449 (= e!3417664 (store ((as const (Array Context!9794 Bool)) false) (ite (or c!966904 c!966905) lt!2247553 (Context!9795 call!410051)) true))))

(declare-fun bm!410337 () Bool)

(declare-fun call!410345 () (InoxSet Context!9794))

(declare-fun call!410343 () (InoxSet Context!9794))

(assert (=> bm!410337 (= call!410345 call!410343)))

(declare-fun b!5528450 () Bool)

(declare-fun e!3417669 () (InoxSet Context!9794))

(declare-fun e!3417665 () (InoxSet Context!9794))

(assert (=> b!5528450 (= e!3417669 e!3417665)))

(declare-fun c!967347 () Bool)

(assert (=> b!5528450 (= c!967347 ((_ is Concat!24358) (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))))))

(declare-fun b!5528451 () Bool)

(declare-fun e!3417666 () (InoxSet Context!9794))

(declare-fun call!410341 () (InoxSet Context!9794))

(assert (=> b!5528451 (= e!3417666 call!410341)))

(declare-fun b!5528452 () Bool)

(declare-fun c!967343 () Bool)

(assert (=> b!5528452 (= c!967343 ((_ is Star!15513) (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))))))

(assert (=> b!5528452 (= e!3417665 e!3417666)))

(declare-fun b!5528453 () Bool)

(declare-fun c!967345 () Bool)

(declare-fun e!3417668 () Bool)

(assert (=> b!5528453 (= c!967345 e!3417668)))

(declare-fun res!2354023 () Bool)

(assert (=> b!5528453 (=> (not res!2354023) (not e!3417668))))

(assert (=> b!5528453 (= res!2354023 ((_ is Concat!24358) (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))))))

(assert (=> b!5528453 (= e!3417667 e!3417669)))

(declare-fun b!5528454 () Bool)

(assert (=> b!5528454 (= e!3417666 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410338 () Bool)

(assert (=> bm!410338 (= call!410341 call!410345)))

(declare-fun bm!410339 () Bool)

(assert (=> bm!410339 (= call!410344 ($colon$colon!1592 (exprs!5397 (ite (or c!966904 c!966905) lt!2247553 (Context!9795 call!410051))) (ite (or c!967345 c!967347) (regTwo!31538 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292)))))))))

(declare-fun b!5528455 () Bool)

(assert (=> b!5528455 (= e!3417665 call!410341)))

(declare-fun b!5528456 () Bool)

(declare-fun call!410342 () (InoxSet Context!9794))

(assert (=> b!5528456 (= e!3417669 ((_ map or) call!410342 call!410345))))

(declare-fun bm!410340 () Bool)

(assert (=> bm!410340 (= call!410342 (derivationStepZipperDown!855 (ite c!967344 (regTwo!31539 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (regOne!31538 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292)))))) (ite c!967344 (ite (or c!966904 c!966905) lt!2247553 (Context!9795 call!410051)) (Context!9795 call!410344)) (h!69164 s!2326)))))

(declare-fun bm!410341 () Bool)

(assert (=> bm!410341 (= call!410343 (derivationStepZipperDown!855 (ite c!967344 (regOne!31539 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (ite c!967345 (regTwo!31538 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (ite c!967347 (regOne!31538 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292))))) (reg!15842 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292)))))))) (ite (or c!967344 c!967345) (ite (or c!966904 c!966905) lt!2247553 (Context!9795 call!410051)) (Context!9795 call!410346)) (h!69164 s!2326)))))

(declare-fun b!5528457 () Bool)

(assert (=> b!5528457 (= e!3417667 ((_ map or) call!410343 call!410342))))

(declare-fun b!5528458 () Bool)

(assert (=> b!5528458 (= e!3417668 (nullable!5547 (regOne!31538 (ite c!966904 (regOne!31539 r!7292) (ite c!966905 (regTwo!31538 r!7292) (ite c!966907 (regOne!31538 r!7292) (reg!15842 r!7292)))))))))

(assert (= (and d!1751934 c!967346) b!5528449))

(assert (= (and d!1751934 (not c!967346)) b!5528448))

(assert (= (and b!5528448 c!967344) b!5528457))

(assert (= (and b!5528448 (not c!967344)) b!5528453))

(assert (= (and b!5528453 res!2354023) b!5528458))

(assert (= (and b!5528453 c!967345) b!5528456))

(assert (= (and b!5528453 (not c!967345)) b!5528450))

(assert (= (and b!5528450 c!967347) b!5528455))

(assert (= (and b!5528450 (not c!967347)) b!5528452))

(assert (= (and b!5528452 c!967343) b!5528451))

(assert (= (and b!5528452 (not c!967343)) b!5528454))

(assert (= (or b!5528455 b!5528451) bm!410336))

(assert (= (or b!5528455 b!5528451) bm!410338))

(assert (= (or b!5528456 bm!410336) bm!410339))

(assert (= (or b!5528456 bm!410338) bm!410337))

(assert (= (or b!5528457 b!5528456) bm!410340))

(assert (= (or b!5528457 bm!410337) bm!410341))

(declare-fun m!6530700 () Bool)

(assert (=> b!5528449 m!6530700))

(declare-fun m!6530702 () Bool)

(assert (=> b!5528458 m!6530702))

(declare-fun m!6530704 () Bool)

(assert (=> bm!410341 m!6530704))

(declare-fun m!6530706 () Bool)

(assert (=> bm!410339 m!6530706))

(declare-fun m!6530708 () Bool)

(assert (=> bm!410340 m!6530708))

(assert (=> bm!410046 d!1751934))

(declare-fun d!1751936 () Bool)

(assert (=> d!1751936 (= (isUnion!526 lt!2247683) ((_ is Union!15513) lt!2247683))))

(assert (=> b!5527140 d!1751936))

(declare-fun d!1751938 () Bool)

(declare-fun c!967348 () Bool)

(assert (=> d!1751938 (= c!967348 (isEmpty!34505 (tail!10924 s!2326)))))

(declare-fun e!3417670 () Bool)

(assert (=> d!1751938 (= (matchZipper!1671 (derivationStepZipper!1618 lt!2247543 (head!11829 s!2326)) (tail!10924 s!2326)) e!3417670)))

(declare-fun b!5528459 () Bool)

(assert (=> b!5528459 (= e!3417670 (nullableZipper!1539 (derivationStepZipper!1618 lt!2247543 (head!11829 s!2326))))))

(declare-fun b!5528460 () Bool)

(assert (=> b!5528460 (= e!3417670 (matchZipper!1671 (derivationStepZipper!1618 (derivationStepZipper!1618 lt!2247543 (head!11829 s!2326)) (head!11829 (tail!10924 s!2326))) (tail!10924 (tail!10924 s!2326))))))

(assert (= (and d!1751938 c!967348) b!5528459))

(assert (= (and d!1751938 (not c!967348)) b!5528460))

(assert (=> d!1751938 m!6529188))

(assert (=> d!1751938 m!6529190))

(assert (=> b!5528459 m!6529362))

(declare-fun m!6530710 () Bool)

(assert (=> b!5528459 m!6530710))

(assert (=> b!5528460 m!6529188))

(assert (=> b!5528460 m!6529976))

(assert (=> b!5528460 m!6529362))

(assert (=> b!5528460 m!6529976))

(declare-fun m!6530712 () Bool)

(assert (=> b!5528460 m!6530712))

(assert (=> b!5528460 m!6529188))

(assert (=> b!5528460 m!6529980))

(assert (=> b!5528460 m!6530712))

(assert (=> b!5528460 m!6529980))

(declare-fun m!6530714 () Bool)

(assert (=> b!5528460 m!6530714))

(assert (=> b!5527224 d!1751938))

(declare-fun bs!1277201 () Bool)

(declare-fun d!1751940 () Bool)

(assert (= bs!1277201 (and d!1751940 d!1751318)))

(declare-fun lambda!296609 () Int)

(assert (=> bs!1277201 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296609 lambda!296493))))

(declare-fun bs!1277202 () Bool)

(assert (= bs!1277202 (and d!1751940 d!1751268)))

(assert (=> bs!1277202 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296609 lambda!296474))))

(declare-fun bs!1277203 () Bool)

(assert (= bs!1277203 (and d!1751940 d!1751600)))

(assert (=> bs!1277203 (= lambda!296609 lambda!296549)))

(declare-fun bs!1277204 () Bool)

(assert (= bs!1277204 (and d!1751940 d!1751772)))

(assert (=> bs!1277204 (= (= (head!11829 s!2326) (head!11829 (t!376095 s!2326))) (= lambda!296609 lambda!296592))))

(declare-fun bs!1277205 () Bool)

(assert (= bs!1277205 (and d!1751940 b!5526445)))

(assert (=> bs!1277205 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296609 lambda!296389))))

(declare-fun bs!1277206 () Bool)

(assert (= bs!1277206 (and d!1751940 d!1751926)))

(assert (=> bs!1277206 (= (= (head!11829 s!2326) (head!11829 (t!376095 s!2326))) (= lambda!296609 lambda!296608))))

(declare-fun bs!1277207 () Bool)

(assert (= bs!1277207 (and d!1751940 d!1751866)))

(assert (=> bs!1277207 (= (= (head!11829 s!2326) (head!11829 (t!376095 s!2326))) (= lambda!296609 lambda!296601))))

(declare-fun bs!1277208 () Bool)

(assert (= bs!1277208 (and d!1751940 d!1751886)))

(assert (=> bs!1277208 (= (= (head!11829 s!2326) (head!11829 (t!376095 s!2326))) (= lambda!296609 lambda!296603))))

(declare-fun bs!1277209 () Bool)

(assert (= bs!1277209 (and d!1751940 d!1751640)))

(assert (=> bs!1277209 (= (= (head!11829 s!2326) (head!11829 (t!376095 s!2326))) (= lambda!296609 lambda!296557))))

(declare-fun bs!1277210 () Bool)

(assert (= bs!1277210 (and d!1751940 d!1751890)))

(assert (=> bs!1277210 (= (= (head!11829 s!2326) (head!11829 (t!376095 s!2326))) (= lambda!296609 lambda!296604))))

(declare-fun bs!1277211 () Bool)

(assert (= bs!1277211 (and d!1751940 d!1751246)))

(assert (=> bs!1277211 (= (= (head!11829 s!2326) (h!69164 s!2326)) (= lambda!296609 lambda!296447))))

(assert (=> d!1751940 true))

(assert (=> d!1751940 (= (derivationStepZipper!1618 lt!2247543 (head!11829 s!2326)) (flatMap!1126 lt!2247543 lambda!296609))))

(declare-fun bs!1277212 () Bool)

(assert (= bs!1277212 d!1751940))

(declare-fun m!6530716 () Bool)

(assert (=> bs!1277212 m!6530716))

(assert (=> b!5527224 d!1751940))

(assert (=> b!5527224 d!1751602))

(assert (=> b!5527224 d!1751604))

(assert (=> d!1751314 d!1751774))

(declare-fun bs!1277213 () Bool)

(declare-fun d!1751942 () Bool)

(assert (= bs!1277213 (and d!1751942 d!1751900)))

(declare-fun lambda!296610 () Int)

(assert (=> bs!1277213 (= lambda!296610 lambda!296605)))

(declare-fun bs!1277214 () Bool)

(assert (= bs!1277214 (and d!1751942 d!1751718)))

(assert (=> bs!1277214 (= lambda!296610 lambda!296576)))

(declare-fun bs!1277215 () Bool)

(assert (= bs!1277215 (and d!1751942 b!5526958)))

(assert (=> bs!1277215 (not (= lambda!296610 lambda!296464))))

(declare-fun bs!1277216 () Bool)

(assert (= bs!1277216 (and d!1751942 d!1751904)))

(assert (=> bs!1277216 (= lambda!296610 lambda!296606)))

(declare-fun bs!1277217 () Bool)

(assert (= bs!1277217 (and d!1751942 b!5526961)))

(assert (=> bs!1277217 (not (= lambda!296610 lambda!296466))))

(declare-fun bs!1277218 () Bool)

(assert (= bs!1277218 (and d!1751942 d!1751846)))

(assert (=> bs!1277218 (= lambda!296610 lambda!296597)))

(declare-fun bs!1277219 () Bool)

(assert (= bs!1277219 (and d!1751942 b!5526963)))

(assert (=> bs!1277219 (not (= lambda!296610 lambda!296467))))

(declare-fun bs!1277220 () Bool)

(assert (= bs!1277220 (and d!1751942 d!1751632)))

(assert (=> bs!1277220 (= lambda!296610 lambda!296555)))

(declare-fun bs!1277221 () Bool)

(assert (= bs!1277221 (and d!1751942 d!1751862)))

(assert (=> bs!1277221 (= lambda!296610 lambda!296600)))

(declare-fun bs!1277222 () Bool)

(assert (= bs!1277222 (and d!1751942 b!5526956)))

(assert (=> bs!1277222 (not (= lambda!296610 lambda!296463))))

(declare-fun bs!1277223 () Bool)

(assert (= bs!1277223 (and d!1751942 b!5528100)))

(assert (=> bs!1277223 (not (= lambda!296610 lambda!296583))))

(declare-fun bs!1277224 () Bool)

(assert (= bs!1277224 (and d!1751942 d!1751742)))

(assert (=> bs!1277224 (not (= lambda!296610 lambda!296591))))

(declare-fun bs!1277225 () Bool)

(assert (= bs!1277225 (and d!1751942 b!5528098)))

(assert (=> bs!1277225 (not (= lambda!296610 lambda!296582))))

(assert (=> d!1751942 (= (nullableZipper!1539 lt!2247532) (exists!2147 lt!2247532 lambda!296610))))

(declare-fun bs!1277226 () Bool)

(assert (= bs!1277226 d!1751942))

(declare-fun m!6530718 () Bool)

(assert (=> bs!1277226 m!6530718))

(assert (=> b!5527053 d!1751942))

(declare-fun b!5528461 () Bool)

(declare-fun res!2354026 () Bool)

(declare-fun e!3417674 () Bool)

(assert (=> b!5528461 (=> res!2354026 e!3417674)))

(assert (=> b!5528461 (= res!2354026 (not (isEmpty!34505 (tail!10924 (tail!10924 s!2326)))))))

(declare-fun b!5528462 () Bool)

(declare-fun e!3417672 () Bool)

(declare-fun e!3417677 () Bool)

(assert (=> b!5528462 (= e!3417672 e!3417677)))

(declare-fun res!2354029 () Bool)

(assert (=> b!5528462 (=> (not res!2354029) (not e!3417677))))

(declare-fun lt!2247829 () Bool)

(assert (=> b!5528462 (= res!2354029 (not lt!2247829))))

(declare-fun b!5528463 () Bool)

(declare-fun e!3417671 () Bool)

(assert (=> b!5528463 (= e!3417671 (= (head!11829 (tail!10924 s!2326)) (c!966767 (derivativeStep!4378 r!7292 (head!11829 s!2326)))))))

(declare-fun b!5528464 () Bool)

(declare-fun res!2354030 () Bool)

(assert (=> b!5528464 (=> res!2354030 e!3417672)))

(assert (=> b!5528464 (= res!2354030 (not ((_ is ElementMatch!15513) (derivativeStep!4378 r!7292 (head!11829 s!2326)))))))

(declare-fun e!3417675 () Bool)

(assert (=> b!5528464 (= e!3417675 e!3417672)))

(declare-fun b!5528465 () Bool)

(assert (=> b!5528465 (= e!3417675 (not lt!2247829))))

(declare-fun b!5528466 () Bool)

(assert (=> b!5528466 (= e!3417674 (not (= (head!11829 (tail!10924 s!2326)) (c!966767 (derivativeStep!4378 r!7292 (head!11829 s!2326))))))))

(declare-fun b!5528467 () Bool)

(declare-fun e!3417673 () Bool)

(declare-fun call!410347 () Bool)

(assert (=> b!5528467 (= e!3417673 (= lt!2247829 call!410347))))

(declare-fun b!5528468 () Bool)

(declare-fun res!2354024 () Bool)

(assert (=> b!5528468 (=> (not res!2354024) (not e!3417671))))

(assert (=> b!5528468 (= res!2354024 (not call!410347))))

(declare-fun b!5528469 () Bool)

(declare-fun res!2354028 () Bool)

(assert (=> b!5528469 (=> res!2354028 e!3417672)))

(assert (=> b!5528469 (= res!2354028 e!3417671)))

(declare-fun res!2354027 () Bool)

(assert (=> b!5528469 (=> (not res!2354027) (not e!3417671))))

(assert (=> b!5528469 (= res!2354027 lt!2247829)))

(declare-fun b!5528470 () Bool)

(declare-fun e!3417676 () Bool)

(assert (=> b!5528470 (= e!3417676 (nullable!5547 (derivativeStep!4378 r!7292 (head!11829 s!2326))))))

(declare-fun b!5528471 () Bool)

(assert (=> b!5528471 (= e!3417673 e!3417675)))

(declare-fun c!967349 () Bool)

(assert (=> b!5528471 (= c!967349 ((_ is EmptyLang!15513) (derivativeStep!4378 r!7292 (head!11829 s!2326))))))

(declare-fun bm!410342 () Bool)

(assert (=> bm!410342 (= call!410347 (isEmpty!34505 (tail!10924 s!2326)))))

(declare-fun b!5528472 () Bool)

(declare-fun res!2354031 () Bool)

(assert (=> b!5528472 (=> (not res!2354031) (not e!3417671))))

(assert (=> b!5528472 (= res!2354031 (isEmpty!34505 (tail!10924 (tail!10924 s!2326))))))

(declare-fun d!1751944 () Bool)

(assert (=> d!1751944 e!3417673))

(declare-fun c!967350 () Bool)

(assert (=> d!1751944 (= c!967350 ((_ is EmptyExpr!15513) (derivativeStep!4378 r!7292 (head!11829 s!2326))))))

(assert (=> d!1751944 (= lt!2247829 e!3417676)))

(declare-fun c!967351 () Bool)

(assert (=> d!1751944 (= c!967351 (isEmpty!34505 (tail!10924 s!2326)))))

(assert (=> d!1751944 (validRegex!7249 (derivativeStep!4378 r!7292 (head!11829 s!2326)))))

(assert (=> d!1751944 (= (matchR!7698 (derivativeStep!4378 r!7292 (head!11829 s!2326)) (tail!10924 s!2326)) lt!2247829)))

(declare-fun b!5528473 () Bool)

(assert (=> b!5528473 (= e!3417676 (matchR!7698 (derivativeStep!4378 (derivativeStep!4378 r!7292 (head!11829 s!2326)) (head!11829 (tail!10924 s!2326))) (tail!10924 (tail!10924 s!2326))))))

(declare-fun b!5528474 () Bool)

(assert (=> b!5528474 (= e!3417677 e!3417674)))

(declare-fun res!2354025 () Bool)

(assert (=> b!5528474 (=> res!2354025 e!3417674)))

(assert (=> b!5528474 (= res!2354025 call!410347)))

(assert (= (and d!1751944 c!967351) b!5528470))

(assert (= (and d!1751944 (not c!967351)) b!5528473))

(assert (= (and d!1751944 c!967350) b!5528467))

(assert (= (and d!1751944 (not c!967350)) b!5528471))

(assert (= (and b!5528471 c!967349) b!5528465))

(assert (= (and b!5528471 (not c!967349)) b!5528464))

(assert (= (and b!5528464 (not res!2354030)) b!5528469))

(assert (= (and b!5528469 res!2354027) b!5528468))

(assert (= (and b!5528468 res!2354024) b!5528472))

(assert (= (and b!5528472 res!2354031) b!5528463))

(assert (= (and b!5528469 (not res!2354028)) b!5528462))

(assert (= (and b!5528462 res!2354029) b!5528474))

(assert (= (and b!5528474 (not res!2354025)) b!5528461))

(assert (= (and b!5528461 (not res!2354026)) b!5528466))

(assert (= (or b!5528467 b!5528468 b!5528474) bm!410342))

(assert (=> bm!410342 m!6529188))

(assert (=> bm!410342 m!6529190))

(assert (=> b!5528461 m!6529188))

(assert (=> b!5528461 m!6529980))

(assert (=> b!5528461 m!6529980))

(declare-fun m!6530720 () Bool)

(assert (=> b!5528461 m!6530720))

(assert (=> b!5528466 m!6529188))

(assert (=> b!5528466 m!6529976))

(assert (=> b!5528463 m!6529188))

(assert (=> b!5528463 m!6529976))

(assert (=> b!5528473 m!6529188))

(assert (=> b!5528473 m!6529976))

(assert (=> b!5528473 m!6529194))

(assert (=> b!5528473 m!6529976))

(declare-fun m!6530722 () Bool)

(assert (=> b!5528473 m!6530722))

(assert (=> b!5528473 m!6529188))

(assert (=> b!5528473 m!6529980))

(assert (=> b!5528473 m!6530722))

(assert (=> b!5528473 m!6529980))

(declare-fun m!6530724 () Bool)

(assert (=> b!5528473 m!6530724))

(assert (=> d!1751944 m!6529188))

(assert (=> d!1751944 m!6529190))

(assert (=> d!1751944 m!6529194))

(declare-fun m!6530726 () Bool)

(assert (=> d!1751944 m!6530726))

(assert (=> b!5528470 m!6529194))

(declare-fun m!6530728 () Bool)

(assert (=> b!5528470 m!6530728))

(assert (=> b!5528472 m!6529188))

(assert (=> b!5528472 m!6529980))

(assert (=> b!5528472 m!6529980))

(assert (=> b!5528472 m!6530720))

(assert (=> b!5527047 d!1751944))

(declare-fun b!5528495 () Bool)

(declare-fun e!3417692 () Regex!15513)

(declare-fun call!410358 () Regex!15513)

(assert (=> b!5528495 (= e!3417692 (Concat!24358 call!410358 r!7292))))

(declare-fun bm!410351 () Bool)

(declare-fun call!410359 () Regex!15513)

(assert (=> bm!410351 (= call!410358 call!410359)))

(declare-fun b!5528496 () Bool)

(declare-fun e!3417690 () Regex!15513)

(declare-fun call!410357 () Regex!15513)

(assert (=> b!5528496 (= e!3417690 (Union!15513 (Concat!24358 call!410357 (regTwo!31538 r!7292)) EmptyLang!15513))))

(declare-fun b!5528497 () Bool)

(declare-fun e!3417689 () Regex!15513)

(assert (=> b!5528497 (= e!3417689 EmptyLang!15513)))

(declare-fun b!5528498 () Bool)

(declare-fun e!3417691 () Regex!15513)

(declare-fun call!410356 () Regex!15513)

(assert (=> b!5528498 (= e!3417691 (Union!15513 call!410359 call!410356))))

(declare-fun b!5528499 () Bool)

(declare-fun c!967363 () Bool)

(assert (=> b!5528499 (= c!967363 ((_ is Union!15513) r!7292))))

(declare-fun e!3417688 () Regex!15513)

(assert (=> b!5528499 (= e!3417688 e!3417691)))

(declare-fun d!1751946 () Bool)

(declare-fun lt!2247832 () Regex!15513)

(assert (=> d!1751946 (validRegex!7249 lt!2247832)))

(assert (=> d!1751946 (= lt!2247832 e!3417689)))

(declare-fun c!967366 () Bool)

(assert (=> d!1751946 (= c!967366 (or ((_ is EmptyExpr!15513) r!7292) ((_ is EmptyLang!15513) r!7292)))))

(assert (=> d!1751946 (validRegex!7249 r!7292)))

(assert (=> d!1751946 (= (derivativeStep!4378 r!7292 (head!11829 s!2326)) lt!2247832)))

(declare-fun b!5528500 () Bool)

(assert (=> b!5528500 (= e!3417689 e!3417688)))

(declare-fun c!967364 () Bool)

(assert (=> b!5528500 (= c!967364 ((_ is ElementMatch!15513) r!7292))))

(declare-fun bm!410352 () Bool)

(assert (=> bm!410352 (= call!410356 (derivativeStep!4378 (ite c!967363 (regTwo!31539 r!7292) (regOne!31538 r!7292)) (head!11829 s!2326)))))

(declare-fun bm!410353 () Bool)

(assert (=> bm!410353 (= call!410357 call!410358)))

(declare-fun b!5528501 () Bool)

(assert (=> b!5528501 (= e!3417691 e!3417692)))

(declare-fun c!967365 () Bool)

(assert (=> b!5528501 (= c!967365 ((_ is Star!15513) r!7292))))

(declare-fun b!5528502 () Bool)

(declare-fun c!967362 () Bool)

(assert (=> b!5528502 (= c!967362 (nullable!5547 (regOne!31538 r!7292)))))

(assert (=> b!5528502 (= e!3417692 e!3417690)))

(declare-fun bm!410354 () Bool)

(assert (=> bm!410354 (= call!410359 (derivativeStep!4378 (ite c!967363 (regOne!31539 r!7292) (ite c!967365 (reg!15842 r!7292) (ite c!967362 (regTwo!31538 r!7292) (regOne!31538 r!7292)))) (head!11829 s!2326)))))

(declare-fun b!5528503 () Bool)

(assert (=> b!5528503 (= e!3417690 (Union!15513 (Concat!24358 call!410356 (regTwo!31538 r!7292)) call!410357))))

(declare-fun b!5528504 () Bool)

(assert (=> b!5528504 (= e!3417688 (ite (= (head!11829 s!2326) (c!966767 r!7292)) EmptyExpr!15513 EmptyLang!15513))))

(assert (= (and d!1751946 c!967366) b!5528497))

(assert (= (and d!1751946 (not c!967366)) b!5528500))

(assert (= (and b!5528500 c!967364) b!5528504))

(assert (= (and b!5528500 (not c!967364)) b!5528499))

(assert (= (and b!5528499 c!967363) b!5528498))

(assert (= (and b!5528499 (not c!967363)) b!5528501))

(assert (= (and b!5528501 c!967365) b!5528495))

(assert (= (and b!5528501 (not c!967365)) b!5528502))

(assert (= (and b!5528502 c!967362) b!5528503))

(assert (= (and b!5528502 (not c!967362)) b!5528496))

(assert (= (or b!5528503 b!5528496) bm!410353))

(assert (= (or b!5528495 bm!410353) bm!410351))

(assert (= (or b!5528498 b!5528503) bm!410352))

(assert (= (or b!5528498 bm!410351) bm!410354))

(declare-fun m!6530730 () Bool)

(assert (=> d!1751946 m!6530730))

(assert (=> d!1751946 m!6528772))

(assert (=> bm!410352 m!6529192))

(declare-fun m!6530732 () Bool)

(assert (=> bm!410352 m!6530732))

(assert (=> b!5528502 m!6528718))

(assert (=> bm!410354 m!6529192))

(declare-fun m!6530734 () Bool)

(assert (=> bm!410354 m!6530734))

(assert (=> b!5527047 d!1751946))

(assert (=> b!5527047 d!1751602))

(assert (=> b!5527047 d!1751604))

(assert (=> bs!1276074 d!1751286))

(declare-fun d!1751948 () Bool)

(declare-fun res!2354032 () Bool)

(declare-fun e!3417693 () Bool)

(assert (=> d!1751948 (=> res!2354032 e!3417693)))

(assert (=> d!1751948 (= res!2354032 ((_ is Nil!62714) (exprs!5397 lt!2247530)))))

(assert (=> d!1751948 (= (forall!14690 (exprs!5397 lt!2247530) lambda!296495) e!3417693)))

(declare-fun b!5528505 () Bool)

(declare-fun e!3417694 () Bool)

(assert (=> b!5528505 (= e!3417693 e!3417694)))

(declare-fun res!2354033 () Bool)

(assert (=> b!5528505 (=> (not res!2354033) (not e!3417694))))

(assert (=> b!5528505 (= res!2354033 (dynLambda!24517 lambda!296495 (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5528506 () Bool)

(assert (=> b!5528506 (= e!3417694 (forall!14690 (t!376093 (exprs!5397 lt!2247530)) lambda!296495))))

(assert (= (and d!1751948 (not res!2354032)) b!5528505))

(assert (= (and b!5528505 res!2354033) b!5528506))

(declare-fun b_lambda!209785 () Bool)

(assert (=> (not b_lambda!209785) (not b!5528505)))

(declare-fun m!6530736 () Bool)

(assert (=> b!5528505 m!6530736))

(declare-fun m!6530738 () Bool)

(assert (=> b!5528506 m!6530738))

(assert (=> b!5527241 d!1751948))

(declare-fun d!1751950 () Bool)

(assert (=> d!1751950 (= (nullable!5547 r!7292) (nullableFct!1671 r!7292))))

(declare-fun bs!1277227 () Bool)

(assert (= bs!1277227 d!1751950))

(declare-fun m!6530740 () Bool)

(assert (=> bs!1277227 m!6530740))

(assert (=> b!5527044 d!1751950))

(assert (=> d!1751260 d!1751774))

(assert (=> d!1751260 d!1751312))

(declare-fun bm!410355 () Bool)

(declare-fun call!410365 () List!62838)

(declare-fun call!410363 () List!62838)

(assert (=> bm!410355 (= call!410365 call!410363)))

(declare-fun b!5528507 () Bool)

(declare-fun e!3417695 () (InoxSet Context!9794))

(declare-fun e!3417698 () (InoxSet Context!9794))

(assert (=> b!5528507 (= e!3417695 e!3417698)))

(declare-fun c!967368 () Bool)

(assert (=> b!5528507 (= c!967368 ((_ is Union!15513) (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))))))

(declare-fun d!1751952 () Bool)

(declare-fun c!967370 () Bool)

(assert (=> d!1751952 (= c!967370 (and ((_ is ElementMatch!15513) (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (= (c!966767 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (h!69164 s!2326))))))

(assert (=> d!1751952 (= (derivationStepZipperDown!855 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292))))) (ite (or c!966962 c!966963) lt!2247530 (Context!9795 call!410075)) (h!69164 s!2326)) e!3417695)))

(declare-fun b!5528508 () Bool)

(assert (=> b!5528508 (= e!3417695 (store ((as const (Array Context!9794 Bool)) false) (ite (or c!966962 c!966963) lt!2247530 (Context!9795 call!410075)) true))))

(declare-fun bm!410356 () Bool)

(declare-fun call!410364 () (InoxSet Context!9794))

(declare-fun call!410362 () (InoxSet Context!9794))

(assert (=> bm!410356 (= call!410364 call!410362)))

(declare-fun b!5528509 () Bool)

(declare-fun e!3417700 () (InoxSet Context!9794))

(declare-fun e!3417696 () (InoxSet Context!9794))

(assert (=> b!5528509 (= e!3417700 e!3417696)))

(declare-fun c!967371 () Bool)

(assert (=> b!5528509 (= c!967371 ((_ is Concat!24358) (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))))))

(declare-fun b!5528510 () Bool)

(declare-fun e!3417697 () (InoxSet Context!9794))

(declare-fun call!410360 () (InoxSet Context!9794))

(assert (=> b!5528510 (= e!3417697 call!410360)))

(declare-fun c!967367 () Bool)

(declare-fun b!5528511 () Bool)

(assert (=> b!5528511 (= c!967367 ((_ is Star!15513) (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))))))

(assert (=> b!5528511 (= e!3417696 e!3417697)))

(declare-fun b!5528512 () Bool)

(declare-fun c!967369 () Bool)

(declare-fun e!3417699 () Bool)

(assert (=> b!5528512 (= c!967369 e!3417699)))

(declare-fun res!2354034 () Bool)

(assert (=> b!5528512 (=> (not res!2354034) (not e!3417699))))

(assert (=> b!5528512 (= res!2354034 ((_ is Concat!24358) (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))))))

(assert (=> b!5528512 (= e!3417698 e!3417700)))

(declare-fun b!5528513 () Bool)

(assert (=> b!5528513 (= e!3417697 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410357 () Bool)

(assert (=> bm!410357 (= call!410360 call!410364)))

(declare-fun bm!410358 () Bool)

(assert (=> bm!410358 (= call!410363 ($colon$colon!1592 (exprs!5397 (ite (or c!966962 c!966963) lt!2247530 (Context!9795 call!410075))) (ite (or c!967369 c!967371) (regTwo!31538 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292))))))))))

(declare-fun b!5528514 () Bool)

(assert (=> b!5528514 (= e!3417696 call!410360)))

(declare-fun b!5528515 () Bool)

(declare-fun call!410361 () (InoxSet Context!9794))

(assert (=> b!5528515 (= e!3417700 ((_ map or) call!410361 call!410364))))

(declare-fun bm!410359 () Bool)

(assert (=> bm!410359 (= call!410361 (derivationStepZipperDown!855 (ite c!967368 (regTwo!31539 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (regOne!31538 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292))))))) (ite c!967368 (ite (or c!966962 c!966963) lt!2247530 (Context!9795 call!410075)) (Context!9795 call!410363)) (h!69164 s!2326)))))

(declare-fun bm!410360 () Bool)

(assert (=> bm!410360 (= call!410362 (derivationStepZipperDown!855 (ite c!967368 (regOne!31539 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (ite c!967369 (regTwo!31538 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (ite c!967371 (regOne!31538 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292)))))) (reg!15842 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292))))))))) (ite (or c!967368 c!967369) (ite (or c!966962 c!966963) lt!2247530 (Context!9795 call!410075)) (Context!9795 call!410365)) (h!69164 s!2326)))))

(declare-fun b!5528516 () Bool)

(assert (=> b!5528516 (= e!3417698 ((_ map or) call!410362 call!410361))))

(declare-fun b!5528517 () Bool)

(assert (=> b!5528517 (= e!3417699 (nullable!5547 (regOne!31538 (ite c!966962 (regOne!31539 (regOne!31538 r!7292)) (ite c!966963 (regTwo!31538 (regOne!31538 r!7292)) (ite c!966965 (regOne!31538 (regOne!31538 r!7292)) (reg!15842 (regOne!31538 r!7292))))))))))

(assert (= (and d!1751952 c!967370) b!5528508))

(assert (= (and d!1751952 (not c!967370)) b!5528507))

(assert (= (and b!5528507 c!967368) b!5528516))

(assert (= (and b!5528507 (not c!967368)) b!5528512))

(assert (= (and b!5528512 res!2354034) b!5528517))

(assert (= (and b!5528512 c!967369) b!5528515))

(assert (= (and b!5528512 (not c!967369)) b!5528509))

(assert (= (and b!5528509 c!967371) b!5528514))

(assert (= (and b!5528509 (not c!967371)) b!5528511))

(assert (= (and b!5528511 c!967367) b!5528510))

(assert (= (and b!5528511 (not c!967367)) b!5528513))

(assert (= (or b!5528514 b!5528510) bm!410355))

(assert (= (or b!5528514 b!5528510) bm!410357))

(assert (= (or b!5528515 bm!410355) bm!410358))

(assert (= (or b!5528515 bm!410357) bm!410356))

(assert (= (or b!5528516 b!5528515) bm!410359))

(assert (= (or b!5528516 bm!410356) bm!410360))

(declare-fun m!6530742 () Bool)

(assert (=> b!5528508 m!6530742))

(declare-fun m!6530744 () Bool)

(assert (=> b!5528517 m!6530744))

(declare-fun m!6530746 () Bool)

(assert (=> bm!410360 m!6530746))

(declare-fun m!6530748 () Bool)

(assert (=> bm!410358 m!6530748))

(declare-fun m!6530750 () Bool)

(assert (=> bm!410359 m!6530750))

(assert (=> bm!410070 d!1751952))

(declare-fun d!1751954 () Bool)

(assert (=> d!1751954 (= ($colon$colon!1592 (exprs!5397 lt!2247553) (ite (or c!966905 c!966907) (regTwo!31538 r!7292) r!7292)) (Cons!62714 (ite (or c!966905 c!966907) (regTwo!31538 r!7292) r!7292) (exprs!5397 lt!2247553)))))

(assert (=> bm!410044 d!1751954))

(declare-fun d!1751956 () Bool)

(assert (=> d!1751956 (= ($colon$colon!1592 (exprs!5397 lt!2247530) (ite (or c!966963 c!966965) (regTwo!31538 (regOne!31538 r!7292)) (regOne!31538 r!7292))) (Cons!62714 (ite (or c!966963 c!966965) (regTwo!31538 (regOne!31538 r!7292)) (regOne!31538 r!7292)) (exprs!5397 lt!2247530)))))

(assert (=> bm!410068 d!1751956))

(declare-fun d!1751958 () Bool)

(assert (=> d!1751958 (= (maxBigInt!0 (contextDepth!109 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))) (ite (>= (contextDepth!109 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))) (contextDepth!109 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))))))

(assert (=> b!5526961 d!1751958))

(declare-fun d!1751960 () Bool)

(declare-fun res!2354035 () Bool)

(declare-fun e!3417701 () Bool)

(assert (=> d!1751960 (=> res!2354035 e!3417701)))

(assert (=> d!1751960 (= res!2354035 ((_ is Nil!62715) (t!376094 (Cons!62715 lt!2247538 Nil!62715))))))

(assert (=> d!1751960 (= (forall!14691 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lambda!296466) e!3417701)))

(declare-fun b!5528518 () Bool)

(declare-fun e!3417702 () Bool)

(assert (=> b!5528518 (= e!3417701 e!3417702)))

(declare-fun res!2354036 () Bool)

(assert (=> b!5528518 (=> (not res!2354036) (not e!3417702))))

(assert (=> b!5528518 (= res!2354036 (dynLambda!24518 lambda!296466 (h!69163 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))))))

(declare-fun b!5528519 () Bool)

(assert (=> b!5528519 (= e!3417702 (forall!14691 (t!376094 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lambda!296466))))

(assert (= (and d!1751960 (not res!2354035)) b!5528518))

(assert (= (and b!5528518 res!2354036) b!5528519))

(declare-fun b_lambda!209787 () Bool)

(assert (=> (not b_lambda!209787) (not b!5528518)))

(declare-fun m!6530752 () Bool)

(assert (=> b!5528518 m!6530752))

(declare-fun m!6530754 () Bool)

(assert (=> b!5528519 m!6530754))

(assert (=> b!5526961 d!1751960))

(declare-fun bs!1277228 () Bool)

(declare-fun d!1751962 () Bool)

(assert (= bs!1277228 (and d!1751962 d!1751900)))

(declare-fun lambda!296611 () Int)

(assert (=> bs!1277228 (not (= lambda!296611 lambda!296605))))

(declare-fun bs!1277229 () Bool)

(assert (= bs!1277229 (and d!1751962 d!1751718)))

(assert (=> bs!1277229 (not (= lambda!296611 lambda!296576))))

(declare-fun bs!1277230 () Bool)

(assert (= bs!1277230 (and d!1751962 b!5526958)))

(assert (=> bs!1277230 (not (= lambda!296611 lambda!296464))))

(declare-fun bs!1277231 () Bool)

(assert (= bs!1277231 (and d!1751962 d!1751904)))

(assert (=> bs!1277231 (not (= lambda!296611 lambda!296606))))

(declare-fun bs!1277232 () Bool)

(assert (= bs!1277232 (and d!1751962 b!5526961)))

(assert (=> bs!1277232 (not (= lambda!296611 lambda!296466))))

(declare-fun bs!1277233 () Bool)

(assert (= bs!1277233 (and d!1751962 d!1751846)))

(assert (=> bs!1277233 (not (= lambda!296611 lambda!296597))))

(declare-fun bs!1277234 () Bool)

(assert (= bs!1277234 (and d!1751962 b!5526963)))

(assert (=> bs!1277234 (not (= lambda!296611 lambda!296467))))

(declare-fun bs!1277235 () Bool)

(assert (= bs!1277235 (and d!1751962 d!1751632)))

(assert (=> bs!1277235 (not (= lambda!296611 lambda!296555))))

(declare-fun bs!1277236 () Bool)

(assert (= bs!1277236 (and d!1751962 d!1751862)))

(assert (=> bs!1277236 (not (= lambda!296611 lambda!296600))))

(declare-fun bs!1277237 () Bool)

(assert (= bs!1277237 (and d!1751962 b!5526956)))

(assert (=> bs!1277237 (not (= lambda!296611 lambda!296463))))

(declare-fun bs!1277238 () Bool)

(assert (= bs!1277238 (and d!1751962 b!5528100)))

(assert (=> bs!1277238 (not (= lambda!296611 lambda!296583))))

(declare-fun bs!1277239 () Bool)

(assert (= bs!1277239 (and d!1751962 d!1751742)))

(assert (=> bs!1277239 (= (and (= lt!2247667 lt!2247663) (= lambda!296465 lambda!296462)) (= lambda!296611 lambda!296591))))

(declare-fun bs!1277240 () Bool)

(assert (= bs!1277240 (and d!1751962 b!5528098)))

(assert (=> bs!1277240 (not (= lambda!296611 lambda!296582))))

(declare-fun bs!1277241 () Bool)

(assert (= bs!1277241 (and d!1751962 d!1751942)))

(assert (=> bs!1277241 (not (= lambda!296611 lambda!296610))))

(assert (=> d!1751962 true))

(assert (=> d!1751962 true))

(assert (=> d!1751962 (< (dynLambda!24519 order!27127 lambda!296465) (dynLambda!24520 order!27129 lambda!296611))))

(assert (=> d!1751962 (forall!14691 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lambda!296611)))

(declare-fun lt!2247833 () Unit!155486)

(assert (=> d!1751962 (= lt!2247833 (choose!42004 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lt!2247667 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lambda!296465))))

(assert (=> d!1751962 (>= lt!2247667 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715))))))

(assert (=> d!1751962 (= (lemmaForallContextDepthBiggerThanTransitive!101 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lt!2247667 (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lambda!296465) lt!2247833)))

(declare-fun bs!1277242 () Bool)

(assert (= bs!1277242 d!1751962))

(declare-fun m!6530756 () Bool)

(assert (=> bs!1277242 m!6530756))

(assert (=> bs!1277242 m!6529168))

(declare-fun m!6530758 () Bool)

(assert (=> bs!1277242 m!6530758))

(assert (=> b!5526961 d!1751962))

(declare-fun bs!1277243 () Bool)

(declare-fun b!5528520 () Bool)

(assert (= bs!1277243 (and b!5528520 d!1751334)))

(declare-fun lambda!296612 () Int)

(assert (=> bs!1277243 (not (= lambda!296612 lambda!296499))))

(declare-fun bs!1277244 () Bool)

(assert (= bs!1277244 (and b!5528520 d!1751874)))

(assert (=> bs!1277244 (not (= lambda!296612 lambda!296602))))

(declare-fun bs!1277245 () Bool)

(assert (= bs!1277245 (and b!5528520 b!5526942)))

(declare-fun lt!2247835 () Int)

(assert (=> bs!1277245 (= (= lt!2247835 lt!2247645) (= lambda!296612 lambda!296452))))

(declare-fun bs!1277246 () Bool)

(assert (= bs!1277246 (and b!5528520 b!5527241)))

(assert (=> bs!1277246 (= (= lt!2247835 lt!2247711) (= lambda!296612 lambda!296495))))

(declare-fun bs!1277247 () Bool)

(assert (= bs!1277247 (and b!5528520 b!5527751)))

(assert (=> bs!1277247 (= (= lt!2247835 lt!2247756) (= lambda!296612 lambda!296536))))

(declare-fun bs!1277248 () Bool)

(assert (= bs!1277248 (and b!5528520 b!5527984)))

(assert (=> bs!1277248 (= (= lt!2247835 lt!2247781) (= lambda!296612 lambda!296560))))

(declare-fun bs!1277249 () Bool)

(assert (= bs!1277249 (and b!5528520 d!1751914)))

(assert (=> bs!1277249 (not (= lambda!296612 lambda!296607))))

(declare-fun bs!1277250 () Bool)

(assert (= bs!1277250 (and b!5528520 d!1751728)))

(assert (=> bs!1277250 (not (= lambda!296612 lambda!296578))))

(declare-fun bs!1277251 () Bool)

(assert (= bs!1277251 (and b!5528520 d!1751292)))

(assert (=> bs!1277251 (not (= lambda!296612 lambda!296483))))

(declare-fun bs!1277252 () Bool)

(assert (= bs!1277252 (and b!5528520 d!1751288)))

(assert (=> bs!1277252 (not (= lambda!296612 lambda!296477))))

(declare-fun bs!1277253 () Bool)

(assert (= bs!1277253 (and b!5528520 d!1751802)))

(assert (=> bs!1277253 (= (= lt!2247835 lt!2247712) (= lambda!296612 lambda!296593))))

(declare-fun bs!1277254 () Bool)

(assert (= bs!1277254 (and b!5528520 d!1751332)))

(assert (=> bs!1277254 (not (= lambda!296612 lambda!296498))))

(declare-fun bs!1277255 () Bool)

(assert (= bs!1277255 (and b!5528520 b!5527239)))

(assert (=> bs!1277255 (= (= lt!2247835 lt!2247712) (= lambda!296612 lambda!296494))))

(declare-fun bs!1277256 () Bool)

(assert (= bs!1277256 (and b!5528520 b!5528270)))

(assert (=> bs!1277256 (= (= lt!2247835 lt!2247809) (= lambda!296612 lambda!296595))))

(declare-fun bs!1277257 () Bool)

(assert (= bs!1277257 (and b!5528520 b!5527749)))

(assert (=> bs!1277257 (= (= lt!2247835 lt!2247757) (= lambda!296612 lambda!296535))))

(declare-fun bs!1277258 () Bool)

(assert (= bs!1277258 (and b!5528520 d!1751656)))

(assert (=> bs!1277258 (= (= lt!2247835 lt!2247645) (= lambda!296612 lambda!296558))))

(declare-fun bs!1277259 () Bool)

(assert (= bs!1277259 (and b!5528520 b!5527986)))

(assert (=> bs!1277259 (= (= lt!2247835 lt!2247780) (= lambda!296612 lambda!296561))))

(declare-fun bs!1277260 () Bool)

(assert (= bs!1277260 (and b!5528520 b!5526944)))

(assert (=> bs!1277260 (= (= lt!2247835 lt!2247644) (= lambda!296612 lambda!296453))))

(declare-fun bs!1277261 () Bool)

(assert (= bs!1277261 (and b!5528520 d!1751566)))

(assert (=> bs!1277261 (= (= lt!2247835 lt!2247649) (= lambda!296612 lambda!296541))))

(declare-fun bs!1277262 () Bool)

(assert (= bs!1277262 (and b!5528520 b!5528108)))

(assert (=> bs!1277262 (= (= lt!2247835 lt!2247802) (= lambda!296612 lambda!296585))))

(declare-fun bs!1277263 () Bool)

(assert (= bs!1277263 (and b!5528520 b!5528110)))

(assert (=> bs!1277263 (= (= lt!2247835 lt!2247801) (= lambda!296612 lambda!296586))))

(declare-fun bs!1277264 () Bool)

(assert (= bs!1277264 (and b!5528520 b!5526947)))

(assert (=> bs!1277264 (= (= lt!2247835 lt!2247649) (= lambda!296612 lambda!296454))))

(declare-fun bs!1277265 () Bool)

(assert (= bs!1277265 (and b!5528520 d!1751822)))

(assert (=> bs!1277265 (not (= lambda!296612 lambda!296596))))

(declare-fun bs!1277266 () Bool)

(assert (= bs!1277266 (and b!5528520 d!1751290)))

(assert (=> bs!1277266 (not (= lambda!296612 lambda!296480))))

(declare-fun bs!1277267 () Bool)

(assert (= bs!1277267 (and b!5528520 b!5528268)))

(assert (=> bs!1277267 (= (= lt!2247835 lt!2247810) (= lambda!296612 lambda!296594))))

(declare-fun bs!1277268 () Bool)

(assert (= bs!1277268 (and b!5528520 b!5526949)))

(assert (=> bs!1277268 (= (= lt!2247835 lt!2247648) (= lambda!296612 lambda!296455))))

(assert (=> b!5528520 true))

(declare-fun bs!1277269 () Bool)

(declare-fun b!5528522 () Bool)

(assert (= bs!1277269 (and b!5528522 d!1751334)))

(declare-fun lambda!296613 () Int)

(assert (=> bs!1277269 (not (= lambda!296613 lambda!296499))))

(declare-fun bs!1277270 () Bool)

(assert (= bs!1277270 (and b!5528522 d!1751874)))

(assert (=> bs!1277270 (not (= lambda!296613 lambda!296602))))

(declare-fun bs!1277271 () Bool)

(assert (= bs!1277271 (and b!5528522 b!5526942)))

(declare-fun lt!2247834 () Int)

(assert (=> bs!1277271 (= (= lt!2247834 lt!2247645) (= lambda!296613 lambda!296452))))

(declare-fun bs!1277272 () Bool)

(assert (= bs!1277272 (and b!5528522 b!5527241)))

(assert (=> bs!1277272 (= (= lt!2247834 lt!2247711) (= lambda!296613 lambda!296495))))

(declare-fun bs!1277273 () Bool)

(assert (= bs!1277273 (and b!5528522 b!5527751)))

(assert (=> bs!1277273 (= (= lt!2247834 lt!2247756) (= lambda!296613 lambda!296536))))

(declare-fun bs!1277274 () Bool)

(assert (= bs!1277274 (and b!5528522 b!5527984)))

(assert (=> bs!1277274 (= (= lt!2247834 lt!2247781) (= lambda!296613 lambda!296560))))

(declare-fun bs!1277275 () Bool)

(assert (= bs!1277275 (and b!5528522 d!1751914)))

(assert (=> bs!1277275 (not (= lambda!296613 lambda!296607))))

(declare-fun bs!1277276 () Bool)

(assert (= bs!1277276 (and b!5528522 d!1751728)))

(assert (=> bs!1277276 (not (= lambda!296613 lambda!296578))))

(declare-fun bs!1277277 () Bool)

(assert (= bs!1277277 (and b!5528522 d!1751292)))

(assert (=> bs!1277277 (not (= lambda!296613 lambda!296483))))

(declare-fun bs!1277278 () Bool)

(assert (= bs!1277278 (and b!5528522 d!1751288)))

(assert (=> bs!1277278 (not (= lambda!296613 lambda!296477))))

(declare-fun bs!1277279 () Bool)

(assert (= bs!1277279 (and b!5528522 d!1751802)))

(assert (=> bs!1277279 (= (= lt!2247834 lt!2247712) (= lambda!296613 lambda!296593))))

(declare-fun bs!1277280 () Bool)

(assert (= bs!1277280 (and b!5528522 d!1751332)))

(assert (=> bs!1277280 (not (= lambda!296613 lambda!296498))))

(declare-fun bs!1277281 () Bool)

(assert (= bs!1277281 (and b!5528522 b!5527239)))

(assert (=> bs!1277281 (= (= lt!2247834 lt!2247712) (= lambda!296613 lambda!296494))))

(declare-fun bs!1277282 () Bool)

(assert (= bs!1277282 (and b!5528522 b!5528270)))

(assert (=> bs!1277282 (= (= lt!2247834 lt!2247809) (= lambda!296613 lambda!296595))))

(declare-fun bs!1277283 () Bool)

(assert (= bs!1277283 (and b!5528522 b!5527749)))

(assert (=> bs!1277283 (= (= lt!2247834 lt!2247757) (= lambda!296613 lambda!296535))))

(declare-fun bs!1277284 () Bool)

(assert (= bs!1277284 (and b!5528522 d!1751656)))

(assert (=> bs!1277284 (= (= lt!2247834 lt!2247645) (= lambda!296613 lambda!296558))))

(declare-fun bs!1277285 () Bool)

(assert (= bs!1277285 (and b!5528522 b!5527986)))

(assert (=> bs!1277285 (= (= lt!2247834 lt!2247780) (= lambda!296613 lambda!296561))))

(declare-fun bs!1277286 () Bool)

(assert (= bs!1277286 (and b!5528522 b!5526944)))

(assert (=> bs!1277286 (= (= lt!2247834 lt!2247644) (= lambda!296613 lambda!296453))))

(declare-fun bs!1277287 () Bool)

(assert (= bs!1277287 (and b!5528522 d!1751566)))

(assert (=> bs!1277287 (= (= lt!2247834 lt!2247649) (= lambda!296613 lambda!296541))))

(declare-fun bs!1277288 () Bool)

(assert (= bs!1277288 (and b!5528522 b!5528108)))

(assert (=> bs!1277288 (= (= lt!2247834 lt!2247802) (= lambda!296613 lambda!296585))))

(declare-fun bs!1277289 () Bool)

(assert (= bs!1277289 (and b!5528522 b!5528110)))

(assert (=> bs!1277289 (= (= lt!2247834 lt!2247801) (= lambda!296613 lambda!296586))))

(declare-fun bs!1277290 () Bool)

(assert (= bs!1277290 (and b!5528522 b!5526947)))

(assert (=> bs!1277290 (= (= lt!2247834 lt!2247649) (= lambda!296613 lambda!296454))))

(declare-fun bs!1277291 () Bool)

(assert (= bs!1277291 (and b!5528522 d!1751822)))

(assert (=> bs!1277291 (not (= lambda!296613 lambda!296596))))

(declare-fun bs!1277292 () Bool)

(assert (= bs!1277292 (and b!5528522 d!1751290)))

(assert (=> bs!1277292 (not (= lambda!296613 lambda!296480))))

(declare-fun bs!1277293 () Bool)

(assert (= bs!1277293 (and b!5528522 b!5528520)))

(assert (=> bs!1277293 (= (= lt!2247834 lt!2247835) (= lambda!296613 lambda!296612))))

(declare-fun bs!1277294 () Bool)

(assert (= bs!1277294 (and b!5528522 b!5528268)))

(assert (=> bs!1277294 (= (= lt!2247834 lt!2247810) (= lambda!296613 lambda!296594))))

(declare-fun bs!1277295 () Bool)

(assert (= bs!1277295 (and b!5528522 b!5526949)))

(assert (=> bs!1277295 (= (= lt!2247834 lt!2247648) (= lambda!296613 lambda!296455))))

(assert (=> b!5528522 true))

(declare-fun d!1751964 () Bool)

(declare-fun e!3417703 () Bool)

(assert (=> d!1751964 e!3417703))

(declare-fun res!2354037 () Bool)

(assert (=> d!1751964 (=> (not res!2354037) (not e!3417703))))

(assert (=> d!1751964 (= res!2354037 (>= lt!2247834 0))))

(declare-fun e!3417704 () Int)

(assert (=> d!1751964 (= lt!2247834 e!3417704)))

(declare-fun c!967372 () Bool)

(assert (=> d!1751964 (= c!967372 ((_ is Cons!62714) (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715)))))))

(assert (=> d!1751964 (= (contextDepth!109 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) lt!2247834)))

(assert (=> b!5528520 (= e!3417704 lt!2247835)))

(assert (=> b!5528520 (= lt!2247835 (maxBigInt!0 (regexDepth!213 (h!69162 (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715))))) (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715))))))))))

(declare-fun lt!2247836 () Unit!155486)

(assert (=> b!5528520 (= lt!2247836 (lemmaForallRegexDepthBiggerThanTransitive!18 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715)))) lt!2247835 (contextDepth!109 (Context!9795 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715))))))))))

(assert (=> b!5528520 (forall!14690 (t!376093 (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715)))) lambda!296612)))

(declare-fun lt!2247837 () Unit!155486)

(assert (=> b!5528520 (= lt!2247837 lt!2247836)))

(declare-fun b!5528521 () Bool)

(assert (=> b!5528521 (= e!3417704 0)))

(assert (=> b!5528522 (= e!3417703 (forall!14690 (exprs!5397 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) lambda!296613))))

(assert (= (and d!1751964 c!967372) b!5528520))

(assert (= (and d!1751964 (not c!967372)) b!5528521))

(assert (= (and d!1751964 res!2354037) b!5528522))

(declare-fun m!6530760 () Bool)

(assert (=> b!5528520 m!6530760))

(declare-fun m!6530762 () Bool)

(assert (=> b!5528520 m!6530762))

(declare-fun m!6530764 () Bool)

(assert (=> b!5528520 m!6530764))

(assert (=> b!5528520 m!6530760))

(assert (=> b!5528520 m!6530764))

(declare-fun m!6530766 () Bool)

(assert (=> b!5528520 m!6530766))

(assert (=> b!5528520 m!6530764))

(declare-fun m!6530768 () Bool)

(assert (=> b!5528520 m!6530768))

(declare-fun m!6530770 () Bool)

(assert (=> b!5528522 m!6530770))

(assert (=> b!5526961 d!1751964))

(declare-fun bs!1277296 () Bool)

(declare-fun b!5528523 () Bool)

(assert (= bs!1277296 (and b!5528523 b!5526956)))

(declare-fun lambda!296614 () Int)

(assert (=> bs!1277296 (= lambda!296614 lambda!296462)))

(declare-fun bs!1277297 () Bool)

(assert (= bs!1277297 (and b!5528523 b!5526961)))

(assert (=> bs!1277297 (= lambda!296614 lambda!296465)))

(declare-fun bs!1277298 () Bool)

(assert (= bs!1277298 (and b!5528523 b!5528098)))

(assert (=> bs!1277298 (= lambda!296614 lambda!296581)))

(declare-fun bs!1277299 () Bool)

(assert (= bs!1277299 (and b!5528523 d!1751900)))

(declare-fun lambda!296615 () Int)

(assert (=> bs!1277299 (not (= lambda!296615 lambda!296605))))

(declare-fun bs!1277300 () Bool)

(assert (= bs!1277300 (and b!5528523 d!1751718)))

(assert (=> bs!1277300 (not (= lambda!296615 lambda!296576))))

(declare-fun bs!1277301 () Bool)

(assert (= bs!1277301 (and b!5528523 b!5526958)))

(declare-fun lt!2247841 () Int)

(assert (=> bs!1277301 (= (= lt!2247841 lt!2247660) (= lambda!296615 lambda!296464))))

(declare-fun bs!1277302 () Bool)

(assert (= bs!1277302 (and b!5528523 d!1751904)))

(assert (=> bs!1277302 (not (= lambda!296615 lambda!296606))))

(declare-fun bs!1277303 () Bool)

(assert (= bs!1277303 (and b!5528523 d!1751846)))

(assert (=> bs!1277303 (not (= lambda!296615 lambda!296597))))

(declare-fun bs!1277304 () Bool)

(assert (= bs!1277304 (and b!5528523 b!5526963)))

(assert (=> bs!1277304 (= (= lt!2247841 lt!2247664) (= lambda!296615 lambda!296467))))

(declare-fun bs!1277305 () Bool)

(assert (= bs!1277305 (and b!5528523 d!1751632)))

(assert (=> bs!1277305 (not (= lambda!296615 lambda!296555))))

(declare-fun bs!1277306 () Bool)

(assert (= bs!1277306 (and b!5528523 d!1751862)))

(assert (=> bs!1277306 (not (= lambda!296615 lambda!296600))))

(assert (=> bs!1277296 (= (= lt!2247841 lt!2247663) (= lambda!296615 lambda!296463))))

(declare-fun bs!1277307 () Bool)

(assert (= bs!1277307 (and b!5528523 b!5528100)))

(assert (=> bs!1277307 (= (= lt!2247841 lt!2247793) (= lambda!296615 lambda!296583))))

(declare-fun bs!1277308 () Bool)

(assert (= bs!1277308 (and b!5528523 d!1751742)))

(assert (=> bs!1277308 (not (= lambda!296615 lambda!296591))))

(assert (=> bs!1277298 (= (= lt!2247841 lt!2247796) (= lambda!296615 lambda!296582))))

(declare-fun bs!1277309 () Bool)

(assert (= bs!1277309 (and b!5528523 d!1751942)))

(assert (=> bs!1277309 (not (= lambda!296615 lambda!296610))))

(assert (=> bs!1277297 (= (= lt!2247841 lt!2247667) (= lambda!296615 lambda!296466))))

(declare-fun bs!1277310 () Bool)

(assert (= bs!1277310 (and b!5528523 d!1751962)))

(assert (=> bs!1277310 (not (= lambda!296615 lambda!296611))))

(assert (=> b!5528523 true))

(declare-fun bs!1277311 () Bool)

(declare-fun b!5528525 () Bool)

(assert (= bs!1277311 (and b!5528525 d!1751900)))

(declare-fun lambda!296616 () Int)

(assert (=> bs!1277311 (not (= lambda!296616 lambda!296605))))

(declare-fun bs!1277312 () Bool)

(assert (= bs!1277312 (and b!5528525 b!5528523)))

(declare-fun lt!2247838 () Int)

(assert (=> bs!1277312 (= (= lt!2247838 lt!2247841) (= lambda!296616 lambda!296615))))

(declare-fun bs!1277313 () Bool)

(assert (= bs!1277313 (and b!5528525 d!1751718)))

(assert (=> bs!1277313 (not (= lambda!296616 lambda!296576))))

(declare-fun bs!1277314 () Bool)

(assert (= bs!1277314 (and b!5528525 b!5526958)))

(assert (=> bs!1277314 (= (= lt!2247838 lt!2247660) (= lambda!296616 lambda!296464))))

(declare-fun bs!1277315 () Bool)

(assert (= bs!1277315 (and b!5528525 d!1751904)))

(assert (=> bs!1277315 (not (= lambda!296616 lambda!296606))))

(declare-fun bs!1277316 () Bool)

(assert (= bs!1277316 (and b!5528525 d!1751846)))

(assert (=> bs!1277316 (not (= lambda!296616 lambda!296597))))

(declare-fun bs!1277317 () Bool)

(assert (= bs!1277317 (and b!5528525 b!5526963)))

(assert (=> bs!1277317 (= (= lt!2247838 lt!2247664) (= lambda!296616 lambda!296467))))

(declare-fun bs!1277318 () Bool)

(assert (= bs!1277318 (and b!5528525 d!1751632)))

(assert (=> bs!1277318 (not (= lambda!296616 lambda!296555))))

(declare-fun bs!1277319 () Bool)

(assert (= bs!1277319 (and b!5528525 d!1751862)))

(assert (=> bs!1277319 (not (= lambda!296616 lambda!296600))))

(declare-fun bs!1277320 () Bool)

(assert (= bs!1277320 (and b!5528525 b!5526956)))

(assert (=> bs!1277320 (= (= lt!2247838 lt!2247663) (= lambda!296616 lambda!296463))))

(declare-fun bs!1277321 () Bool)

(assert (= bs!1277321 (and b!5528525 b!5528100)))

(assert (=> bs!1277321 (= (= lt!2247838 lt!2247793) (= lambda!296616 lambda!296583))))

(declare-fun bs!1277322 () Bool)

(assert (= bs!1277322 (and b!5528525 d!1751742)))

(assert (=> bs!1277322 (not (= lambda!296616 lambda!296591))))

(declare-fun bs!1277323 () Bool)

(assert (= bs!1277323 (and b!5528525 b!5528098)))

(assert (=> bs!1277323 (= (= lt!2247838 lt!2247796) (= lambda!296616 lambda!296582))))

(declare-fun bs!1277324 () Bool)

(assert (= bs!1277324 (and b!5528525 d!1751942)))

(assert (=> bs!1277324 (not (= lambda!296616 lambda!296610))))

(declare-fun bs!1277325 () Bool)

(assert (= bs!1277325 (and b!5528525 b!5526961)))

(assert (=> bs!1277325 (= (= lt!2247838 lt!2247667) (= lambda!296616 lambda!296466))))

(declare-fun bs!1277326 () Bool)

(assert (= bs!1277326 (and b!5528525 d!1751962)))

(assert (=> bs!1277326 (not (= lambda!296616 lambda!296611))))

(assert (=> b!5528525 true))

(declare-fun d!1751966 () Bool)

(declare-fun e!3417706 () Bool)

(assert (=> d!1751966 e!3417706))

(declare-fun res!2354038 () Bool)

(assert (=> d!1751966 (=> (not res!2354038) (not e!3417706))))

(assert (=> d!1751966 (= res!2354038 (>= lt!2247838 0))))

(declare-fun e!3417705 () Int)

(assert (=> d!1751966 (= lt!2247838 e!3417705)))

(declare-fun c!967373 () Bool)

(assert (=> d!1751966 (= c!967373 ((_ is Cons!62715) (t!376094 (Cons!62715 lt!2247538 Nil!62715))))))

(assert (=> d!1751966 (= (zipperDepth!196 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lt!2247838)))

(assert (=> b!5528523 (= e!3417705 lt!2247841)))

(assert (=> b!5528523 (= lt!2247841 (maxBigInt!0 (contextDepth!109 (h!69163 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))) (zipperDepth!196 (t!376094 (t!376094 (Cons!62715 lt!2247538 Nil!62715))))))))

(declare-fun lt!2247840 () Unit!155486)

(assert (=> b!5528523 (= lt!2247840 (lemmaForallContextDepthBiggerThanTransitive!101 (t!376094 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lt!2247841 (zipperDepth!196 (t!376094 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))) lambda!296614))))

(assert (=> b!5528523 (forall!14691 (t!376094 (t!376094 (Cons!62715 lt!2247538 Nil!62715))) lambda!296615)))

(declare-fun lt!2247839 () Unit!155486)

(assert (=> b!5528523 (= lt!2247839 lt!2247840)))

(declare-fun b!5528524 () Bool)

(assert (=> b!5528524 (= e!3417705 0)))

(assert (=> b!5528525 (= e!3417706 (forall!14691 (t!376094 (Cons!62715 lt!2247538 Nil!62715)) lambda!296616))))

(assert (= (and d!1751966 c!967373) b!5528523))

(assert (= (and d!1751966 (not c!967373)) b!5528524))

(assert (= (and d!1751966 res!2354038) b!5528525))

(declare-fun m!6530772 () Bool)

(assert (=> b!5528523 m!6530772))

(assert (=> b!5528523 m!6530772))

(declare-fun m!6530774 () Bool)

(assert (=> b!5528523 m!6530774))

(declare-fun m!6530776 () Bool)

(assert (=> b!5528523 m!6530776))

(declare-fun m!6530778 () Bool)

(assert (=> b!5528523 m!6530778))

(assert (=> b!5528523 m!6530772))

(declare-fun m!6530780 () Bool)

(assert (=> b!5528523 m!6530780))

(assert (=> b!5528523 m!6530778))

(declare-fun m!6530782 () Bool)

(assert (=> b!5528525 m!6530782))

(assert (=> b!5526961 d!1751966))

(declare-fun d!1751968 () Bool)

(assert (=> d!1751968 (= (nullable!5547 (regOne!31538 (regTwo!31538 r!7292))) (nullableFct!1671 (regOne!31538 (regTwo!31538 r!7292))))))

(declare-fun bs!1277327 () Bool)

(assert (= bs!1277327 d!1751968))

(declare-fun m!6530784 () Bool)

(assert (=> bs!1277327 m!6530784))

(assert (=> b!5527067 d!1751968))

(assert (=> d!1751306 d!1751300))

(assert (=> d!1751306 d!1751700))

(declare-fun d!1751970 () Bool)

(assert (=> d!1751970 (= (Exists!2613 lambda!296486) (choose!41996 lambda!296486))))

(declare-fun bs!1277328 () Bool)

(assert (= bs!1277328 d!1751970))

(declare-fun m!6530786 () Bool)

(assert (=> bs!1277328 m!6530786))

(assert (=> d!1751306 d!1751970))

(assert (=> d!1751306 d!1751310))

(declare-fun bs!1277329 () Bool)

(declare-fun d!1751972 () Bool)

(assert (= bs!1277329 (and d!1751972 d!1751306)))

(declare-fun lambda!296619 () Int)

(assert (=> bs!1277329 (= lambda!296619 lambda!296486)))

(declare-fun bs!1277330 () Bool)

(assert (= bs!1277330 (and d!1751972 b!5528332)))

(assert (=> bs!1277330 (not (= lambda!296619 lambda!296598))))

(declare-fun bs!1277331 () Bool)

(assert (= bs!1277331 (and d!1751972 b!5527808)))

(assert (=> bs!1277331 (not (= lambda!296619 lambda!296544))))

(declare-fun bs!1277332 () Bool)

(assert (= bs!1277332 (and d!1751972 b!5528328)))

(assert (=> bs!1277332 (not (= lambda!296619 lambda!296599))))

(declare-fun bs!1277333 () Bool)

(assert (= bs!1277333 (and d!1751972 b!5526996)))

(assert (=> bs!1277333 (not (= lambda!296619 lambda!296473))))

(declare-fun bs!1277334 () Bool)

(assert (= bs!1277334 (and d!1751972 d!1751686)))

(assert (=> bs!1277334 (= lambda!296619 lambda!296570)))

(declare-fun bs!1277335 () Bool)

(assert (= bs!1277335 (and d!1751972 b!5527804)))

(assert (=> bs!1277335 (not (= lambda!296619 lambda!296545))))

(assert (=> bs!1277334 (not (= lambda!296619 lambda!296572))))

(declare-fun bs!1277336 () Bool)

(assert (= bs!1277336 (and d!1751972 d!1751308)))

(assert (=> bs!1277336 (not (= lambda!296619 lambda!296492))))

(declare-fun bs!1277337 () Bool)

(assert (= bs!1277337 (and d!1751972 b!5527000)))

(assert (=> bs!1277337 (not (= lambda!296619 lambda!296472))))

(assert (=> bs!1277336 (= lambda!296619 lambda!296491)))

(declare-fun bs!1277338 () Bool)

(assert (= bs!1277338 (and d!1751972 b!5526447)))

(assert (=> bs!1277338 (not (= lambda!296619 lambda!296388))))

(assert (=> bs!1277338 (= lambda!296619 lambda!296387)))

(assert (=> d!1751972 true))

(assert (=> d!1751972 true))

(assert (=> d!1751972 true))

(assert (=> d!1751972 (= (isDefined!12225 (findConcatSeparation!1936 (regOne!31538 r!7292) (regTwo!31538 r!7292) Nil!62716 s!2326 s!2326)) (Exists!2613 lambda!296619))))

(assert (=> d!1751972 true))

(declare-fun _$89!1632 () Unit!155486)

(assert (=> d!1751972 (= (choose!41997 (regOne!31538 r!7292) (regTwo!31538 r!7292) s!2326) _$89!1632)))

(declare-fun bs!1277339 () Bool)

(assert (= bs!1277339 d!1751972))

(assert (=> bs!1277339 m!6528744))

(assert (=> bs!1277339 m!6528744))

(assert (=> bs!1277339 m!6528746))

(declare-fun m!6530788 () Bool)

(assert (=> bs!1277339 m!6530788))

(assert (=> d!1751306 d!1751972))

(assert (=> d!1751280 d!1751270))

(declare-fun d!1751974 () Bool)

(assert (=> d!1751974 (= (flatMap!1126 lt!2247543 lambda!296389) (dynLambda!24512 lambda!296389 lt!2247531))))

(assert (=> d!1751974 true))

(declare-fun _$13!2094 () Unit!155486)

(assert (=> d!1751974 (= (choose!41995 lt!2247543 lt!2247531 lambda!296389) _$13!2094)))

(declare-fun b_lambda!209789 () Bool)

(assert (=> (not b_lambda!209789) (not d!1751974)))

(declare-fun bs!1277340 () Bool)

(assert (= bs!1277340 d!1751974))

(assert (=> bs!1277340 m!6528724))

(assert (=> bs!1277340 m!6529246))

(assert (=> d!1751280 d!1751974))

(declare-fun d!1751976 () Bool)

(assert (=> d!1751976 (= (isEmptyLang!1096 lt!2247683) ((_ is EmptyLang!15513) lt!2247683))))

(assert (=> b!5527148 d!1751976))

(assert (=> b!5527115 d!1751298))

(assert (=> d!1751316 d!1751704))

(declare-fun bs!1277341 () Bool)

(declare-fun d!1751978 () Bool)

(assert (= bs!1277341 (and d!1751978 d!1751900)))

(declare-fun lambda!296620 () Int)

(assert (=> bs!1277341 (= lambda!296620 lambda!296605)))

(declare-fun bs!1277342 () Bool)

(assert (= bs!1277342 (and d!1751978 b!5528523)))

(assert (=> bs!1277342 (not (= lambda!296620 lambda!296615))))

(declare-fun bs!1277343 () Bool)

(assert (= bs!1277343 (and d!1751978 b!5528525)))

(assert (=> bs!1277343 (not (= lambda!296620 lambda!296616))))

(declare-fun bs!1277344 () Bool)

(assert (= bs!1277344 (and d!1751978 d!1751718)))

(assert (=> bs!1277344 (= lambda!296620 lambda!296576)))

(declare-fun bs!1277345 () Bool)

(assert (= bs!1277345 (and d!1751978 b!5526958)))

(assert (=> bs!1277345 (not (= lambda!296620 lambda!296464))))

(declare-fun bs!1277346 () Bool)

(assert (= bs!1277346 (and d!1751978 d!1751904)))

(assert (=> bs!1277346 (= lambda!296620 lambda!296606)))

(declare-fun bs!1277347 () Bool)

(assert (= bs!1277347 (and d!1751978 d!1751846)))

(assert (=> bs!1277347 (= lambda!296620 lambda!296597)))

(declare-fun bs!1277348 () Bool)

(assert (= bs!1277348 (and d!1751978 b!5526963)))

(assert (=> bs!1277348 (not (= lambda!296620 lambda!296467))))

(declare-fun bs!1277349 () Bool)

(assert (= bs!1277349 (and d!1751978 d!1751632)))

(assert (=> bs!1277349 (= lambda!296620 lambda!296555)))

(declare-fun bs!1277350 () Bool)

(assert (= bs!1277350 (and d!1751978 d!1751862)))

(assert (=> bs!1277350 (= lambda!296620 lambda!296600)))

(declare-fun bs!1277351 () Bool)

(assert (= bs!1277351 (and d!1751978 b!5526956)))

(assert (=> bs!1277351 (not (= lambda!296620 lambda!296463))))

(declare-fun bs!1277352 () Bool)

(assert (= bs!1277352 (and d!1751978 b!5528100)))

(assert (=> bs!1277352 (not (= lambda!296620 lambda!296583))))

(declare-fun bs!1277353 () Bool)

(assert (= bs!1277353 (and d!1751978 d!1751742)))

(assert (=> bs!1277353 (not (= lambda!296620 lambda!296591))))

(declare-fun bs!1277354 () Bool)

(assert (= bs!1277354 (and d!1751978 b!5528098)))

(assert (=> bs!1277354 (not (= lambda!296620 lambda!296582))))

(declare-fun bs!1277355 () Bool)

(assert (= bs!1277355 (and d!1751978 d!1751942)))

(assert (=> bs!1277355 (= lambda!296620 lambda!296610)))

(declare-fun bs!1277356 () Bool)

(assert (= bs!1277356 (and d!1751978 b!5526961)))

(assert (=> bs!1277356 (not (= lambda!296620 lambda!296466))))

(declare-fun bs!1277357 () Bool)

(assert (= bs!1277357 (and d!1751978 d!1751962)))

(assert (=> bs!1277357 (not (= lambda!296620 lambda!296611))))

(assert (=> d!1751978 (= (nullableZipper!1539 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326))) (exists!2147 (derivationStepZipper!1618 lt!2247532 (h!69164 s!2326)) lambda!296620))))

(declare-fun bs!1277358 () Bool)

(assert (= bs!1277358 d!1751978))

(assert (=> bs!1277358 m!6528766))

(declare-fun m!6530790 () Bool)

(assert (=> bs!1277358 m!6530790))

(assert (=> b!5527055 d!1751978))

(assert (=> d!1751320 d!1751704))

(declare-fun d!1751980 () Bool)

(assert (=> d!1751980 (= (isEmpty!34501 (tail!10925 (exprs!5397 (h!69163 zl!343)))) ((_ is Nil!62714) (tail!10925 (exprs!5397 (h!69163 zl!343)))))))

(assert (=> b!5527111 d!1751980))

(declare-fun d!1751982 () Bool)

(assert (=> d!1751982 (= (tail!10925 (exprs!5397 (h!69163 zl!343))) (t!376093 (exprs!5397 (h!69163 zl!343))))))

(assert (=> b!5527111 d!1751982))

(declare-fun b!5528530 () Bool)

(declare-fun res!2354045 () Bool)

(declare-fun e!3417712 () Bool)

(assert (=> b!5528530 (=> res!2354045 e!3417712)))

(assert (=> b!5528530 (= res!2354045 (not (isEmpty!34505 (tail!10924 (_2!35913 (get!21585 lt!2247696))))))))

(declare-fun b!5528531 () Bool)

(declare-fun e!3417710 () Bool)

(declare-fun e!3417715 () Bool)

(assert (=> b!5528531 (= e!3417710 e!3417715)))

(declare-fun res!2354048 () Bool)

(assert (=> b!5528531 (=> (not res!2354048) (not e!3417715))))

(declare-fun lt!2247842 () Bool)

(assert (=> b!5528531 (= res!2354048 (not lt!2247842))))

(declare-fun b!5528532 () Bool)

(declare-fun e!3417709 () Bool)

(assert (=> b!5528532 (= e!3417709 (= (head!11829 (_2!35913 (get!21585 lt!2247696))) (c!966767 (regTwo!31538 r!7292))))))

(declare-fun b!5528533 () Bool)

(declare-fun res!2354049 () Bool)

(assert (=> b!5528533 (=> res!2354049 e!3417710)))

(assert (=> b!5528533 (= res!2354049 (not ((_ is ElementMatch!15513) (regTwo!31538 r!7292))))))

(declare-fun e!3417713 () Bool)

(assert (=> b!5528533 (= e!3417713 e!3417710)))

(declare-fun b!5528534 () Bool)

(assert (=> b!5528534 (= e!3417713 (not lt!2247842))))

(declare-fun b!5528535 () Bool)

(assert (=> b!5528535 (= e!3417712 (not (= (head!11829 (_2!35913 (get!21585 lt!2247696))) (c!966767 (regTwo!31538 r!7292)))))))

(declare-fun b!5528536 () Bool)

(declare-fun e!3417711 () Bool)

(declare-fun call!410366 () Bool)

(assert (=> b!5528536 (= e!3417711 (= lt!2247842 call!410366))))

(declare-fun b!5528537 () Bool)

(declare-fun res!2354043 () Bool)

(assert (=> b!5528537 (=> (not res!2354043) (not e!3417709))))

(assert (=> b!5528537 (= res!2354043 (not call!410366))))

(declare-fun b!5528538 () Bool)

(declare-fun res!2354047 () Bool)

(assert (=> b!5528538 (=> res!2354047 e!3417710)))

(assert (=> b!5528538 (= res!2354047 e!3417709)))

(declare-fun res!2354046 () Bool)

(assert (=> b!5528538 (=> (not res!2354046) (not e!3417709))))

(assert (=> b!5528538 (= res!2354046 lt!2247842)))

(declare-fun b!5528539 () Bool)

(declare-fun e!3417714 () Bool)

(assert (=> b!5528539 (= e!3417714 (nullable!5547 (regTwo!31538 r!7292)))))

(declare-fun b!5528540 () Bool)

(assert (=> b!5528540 (= e!3417711 e!3417713)))

(declare-fun c!967374 () Bool)

(assert (=> b!5528540 (= c!967374 ((_ is EmptyLang!15513) (regTwo!31538 r!7292)))))

(declare-fun bm!410361 () Bool)

(assert (=> bm!410361 (= call!410366 (isEmpty!34505 (_2!35913 (get!21585 lt!2247696))))))

(declare-fun b!5528541 () Bool)

(declare-fun res!2354050 () Bool)

(assert (=> b!5528541 (=> (not res!2354050) (not e!3417709))))

(assert (=> b!5528541 (= res!2354050 (isEmpty!34505 (tail!10924 (_2!35913 (get!21585 lt!2247696)))))))

(declare-fun d!1751984 () Bool)

(assert (=> d!1751984 e!3417711))

(declare-fun c!967375 () Bool)

(assert (=> d!1751984 (= c!967375 ((_ is EmptyExpr!15513) (regTwo!31538 r!7292)))))

(assert (=> d!1751984 (= lt!2247842 e!3417714)))

(declare-fun c!967376 () Bool)

(assert (=> d!1751984 (= c!967376 (isEmpty!34505 (_2!35913 (get!21585 lt!2247696))))))

(assert (=> d!1751984 (validRegex!7249 (regTwo!31538 r!7292))))

(assert (=> d!1751984 (= (matchR!7698 (regTwo!31538 r!7292) (_2!35913 (get!21585 lt!2247696))) lt!2247842)))

(declare-fun b!5528542 () Bool)

(assert (=> b!5528542 (= e!3417714 (matchR!7698 (derivativeStep!4378 (regTwo!31538 r!7292) (head!11829 (_2!35913 (get!21585 lt!2247696)))) (tail!10924 (_2!35913 (get!21585 lt!2247696)))))))

(declare-fun b!5528543 () Bool)

(assert (=> b!5528543 (= e!3417715 e!3417712)))

(declare-fun res!2354044 () Bool)

(assert (=> b!5528543 (=> res!2354044 e!3417712)))

(assert (=> b!5528543 (= res!2354044 call!410366)))

(assert (= (and d!1751984 c!967376) b!5528539))

(assert (= (and d!1751984 (not c!967376)) b!5528542))

(assert (= (and d!1751984 c!967375) b!5528536))

(assert (= (and d!1751984 (not c!967375)) b!5528540))

(assert (= (and b!5528540 c!967374) b!5528534))

(assert (= (and b!5528540 (not c!967374)) b!5528533))

(assert (= (and b!5528533 (not res!2354049)) b!5528538))

(assert (= (and b!5528538 res!2354046) b!5528537))

(assert (= (and b!5528537 res!2354043) b!5528541))

(assert (= (and b!5528541 res!2354050) b!5528532))

(assert (= (and b!5528538 (not res!2354047)) b!5528531))

(assert (= (and b!5528531 res!2354048) b!5528543))

(assert (= (and b!5528543 (not res!2354044)) b!5528530))

(assert (= (and b!5528530 (not res!2354045)) b!5528535))

(assert (= (or b!5528536 b!5528537 b!5528543) bm!410361))

(declare-fun m!6530792 () Bool)

(assert (=> bm!410361 m!6530792))

(declare-fun m!6530794 () Bool)

(assert (=> b!5528530 m!6530794))

(assert (=> b!5528530 m!6530794))

(declare-fun m!6530796 () Bool)

(assert (=> b!5528530 m!6530796))

(declare-fun m!6530798 () Bool)

(assert (=> b!5528535 m!6530798))

(assert (=> b!5528532 m!6530798))

(assert (=> b!5528542 m!6530798))

(assert (=> b!5528542 m!6530798))

(declare-fun m!6530800 () Bool)

(assert (=> b!5528542 m!6530800))

(assert (=> b!5528542 m!6530794))

(assert (=> b!5528542 m!6530800))

(assert (=> b!5528542 m!6530794))

(declare-fun m!6530802 () Bool)

(assert (=> b!5528542 m!6530802))

(assert (=> d!1751984 m!6530792))

(assert (=> d!1751984 m!6530164))

(assert (=> b!5528539 m!6530166))

(assert (=> b!5528541 m!6530794))

(assert (=> b!5528541 m!6530794))

(assert (=> b!5528541 m!6530796))

(assert (=> b!5527176 d!1751984))

(assert (=> b!5527176 d!1751842))

(declare-fun d!1751986 () Bool)

(assert (=> d!1751986 (= (nullable!5547 (reg!15842 r!7292)) (nullableFct!1671 (reg!15842 r!7292)))))

(declare-fun bs!1277359 () Bool)

(assert (= bs!1277359 d!1751986))

(declare-fun m!6530804 () Bool)

(assert (=> bs!1277359 m!6530804))

(assert (=> b!5527218 d!1751986))

(assert (=> b!5527035 d!1751868))

(assert (=> b!5527035 d!1751604))

(declare-fun b!5528544 () Bool)

(declare-fun e!3417718 () Bool)

(declare-fun call!410367 () Bool)

(assert (=> b!5528544 (= e!3417718 call!410367)))

(declare-fun b!5528545 () Bool)

(declare-fun res!2354054 () Bool)

(declare-fun e!3417720 () Bool)

(assert (=> b!5528545 (=> res!2354054 e!3417720)))

(assert (=> b!5528545 (= res!2354054 (not ((_ is Concat!24358) lt!2247689)))))

(declare-fun e!3417717 () Bool)

(assert (=> b!5528545 (= e!3417717 e!3417720)))

(declare-fun b!5528546 () Bool)

(declare-fun e!3417716 () Bool)

(assert (=> b!5528546 (= e!3417716 call!410367)))

(declare-fun b!5528547 () Bool)

(declare-fun e!3417722 () Bool)

(declare-fun call!410369 () Bool)

(assert (=> b!5528547 (= e!3417722 call!410369)))

(declare-fun bm!410363 () Bool)

(declare-fun call!410368 () Bool)

(assert (=> bm!410363 (= call!410368 call!410369)))

(declare-fun b!5528548 () Bool)

(declare-fun e!3417719 () Bool)

(assert (=> b!5528548 (= e!3417719 e!3417722)))

(declare-fun res!2354052 () Bool)

(assert (=> b!5528548 (= res!2354052 (not (nullable!5547 (reg!15842 lt!2247689))))))

(assert (=> b!5528548 (=> (not res!2354052) (not e!3417722))))

(declare-fun b!5528549 () Bool)

(assert (=> b!5528549 (= e!3417719 e!3417717)))

(declare-fun c!967377 () Bool)

(assert (=> b!5528549 (= c!967377 ((_ is Union!15513) lt!2247689))))

(declare-fun d!1751988 () Bool)

(declare-fun res!2354053 () Bool)

(declare-fun e!3417721 () Bool)

(assert (=> d!1751988 (=> res!2354053 e!3417721)))

(assert (=> d!1751988 (= res!2354053 ((_ is ElementMatch!15513) lt!2247689))))

(assert (=> d!1751988 (= (validRegex!7249 lt!2247689) e!3417721)))

(declare-fun bm!410362 () Bool)

(declare-fun c!967378 () Bool)

(assert (=> bm!410362 (= call!410369 (validRegex!7249 (ite c!967378 (reg!15842 lt!2247689) (ite c!967377 (regOne!31539 lt!2247689) (regOne!31538 lt!2247689)))))))

(declare-fun b!5528550 () Bool)

(assert (=> b!5528550 (= e!3417720 e!3417718)))

(declare-fun res!2354055 () Bool)

(assert (=> b!5528550 (=> (not res!2354055) (not e!3417718))))

(assert (=> b!5528550 (= res!2354055 call!410368)))

(declare-fun b!5528551 () Bool)

(declare-fun res!2354051 () Bool)

(assert (=> b!5528551 (=> (not res!2354051) (not e!3417716))))

(assert (=> b!5528551 (= res!2354051 call!410368)))

(assert (=> b!5528551 (= e!3417717 e!3417716)))

(declare-fun b!5528552 () Bool)

(assert (=> b!5528552 (= e!3417721 e!3417719)))

(assert (=> b!5528552 (= c!967378 ((_ is Star!15513) lt!2247689))))

(declare-fun bm!410364 () Bool)

(assert (=> bm!410364 (= call!410367 (validRegex!7249 (ite c!967377 (regTwo!31539 lt!2247689) (regTwo!31538 lt!2247689))))))

(assert (= (and d!1751988 (not res!2354053)) b!5528552))

(assert (= (and b!5528552 c!967378) b!5528548))

(assert (= (and b!5528552 (not c!967378)) b!5528549))

(assert (= (and b!5528548 res!2354052) b!5528547))

(assert (= (and b!5528549 c!967377) b!5528551))

(assert (= (and b!5528549 (not c!967377)) b!5528545))

(assert (= (and b!5528551 res!2354051) b!5528546))

(assert (= (and b!5528545 (not res!2354054)) b!5528550))

(assert (= (and b!5528550 res!2354055) b!5528544))

(assert (= (or b!5528546 b!5528544) bm!410364))

(assert (= (or b!5528551 b!5528550) bm!410363))

(assert (= (or b!5528547 bm!410363) bm!410362))

(declare-fun m!6530806 () Bool)

(assert (=> b!5528548 m!6530806))

(declare-fun m!6530808 () Bool)

(assert (=> bm!410362 m!6530808))

(declare-fun m!6530810 () Bool)

(assert (=> bm!410364 m!6530810))

(assert (=> d!1751294 d!1751988))

(assert (=> d!1751294 d!1751290))

(assert (=> d!1751294 d!1751292))

(declare-fun bm!410365 () Bool)

(declare-fun call!410375 () List!62838)

(declare-fun call!410373 () List!62838)

(assert (=> bm!410365 (= call!410375 call!410373)))

(declare-fun b!5528553 () Bool)

(declare-fun e!3417723 () (InoxSet Context!9794))

(declare-fun e!3417726 () (InoxSet Context!9794))

(assert (=> b!5528553 (= e!3417723 e!3417726)))

(declare-fun c!967380 () Bool)

(assert (=> b!5528553 (= c!967380 ((_ is Union!15513) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun d!1751990 () Bool)

(declare-fun c!967382 () Bool)

(assert (=> d!1751990 (= c!967382 (and ((_ is ElementMatch!15513) (h!69162 (exprs!5397 lt!2247530))) (= (c!966767 (h!69162 (exprs!5397 lt!2247530))) (h!69164 s!2326))))))

(assert (=> d!1751990 (= (derivationStepZipperDown!855 (h!69162 (exprs!5397 lt!2247530)) (Context!9795 (t!376093 (exprs!5397 lt!2247530))) (h!69164 s!2326)) e!3417723)))

(declare-fun b!5528554 () Bool)

(assert (=> b!5528554 (= e!3417723 (store ((as const (Array Context!9794 Bool)) false) (Context!9795 (t!376093 (exprs!5397 lt!2247530))) true))))

(declare-fun bm!410366 () Bool)

(declare-fun call!410374 () (InoxSet Context!9794))

(declare-fun call!410372 () (InoxSet Context!9794))

(assert (=> bm!410366 (= call!410374 call!410372)))

(declare-fun b!5528555 () Bool)

(declare-fun e!3417728 () (InoxSet Context!9794))

(declare-fun e!3417724 () (InoxSet Context!9794))

(assert (=> b!5528555 (= e!3417728 e!3417724)))

(declare-fun c!967383 () Bool)

(assert (=> b!5528555 (= c!967383 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247530))))))

(declare-fun b!5528556 () Bool)

(declare-fun e!3417725 () (InoxSet Context!9794))

(declare-fun call!410370 () (InoxSet Context!9794))

(assert (=> b!5528556 (= e!3417725 call!410370)))

(declare-fun b!5528557 () Bool)

(declare-fun c!967379 () Bool)

(assert (=> b!5528557 (= c!967379 ((_ is Star!15513) (h!69162 (exprs!5397 lt!2247530))))))

(assert (=> b!5528557 (= e!3417724 e!3417725)))

(declare-fun b!5528558 () Bool)

(declare-fun c!967381 () Bool)

(declare-fun e!3417727 () Bool)

(assert (=> b!5528558 (= c!967381 e!3417727)))

(declare-fun res!2354056 () Bool)

(assert (=> b!5528558 (=> (not res!2354056) (not e!3417727))))

(assert (=> b!5528558 (= res!2354056 ((_ is Concat!24358) (h!69162 (exprs!5397 lt!2247530))))))

(assert (=> b!5528558 (= e!3417726 e!3417728)))

(declare-fun b!5528559 () Bool)

(assert (=> b!5528559 (= e!3417725 ((as const (Array Context!9794 Bool)) false))))

(declare-fun bm!410367 () Bool)

(assert (=> bm!410367 (= call!410370 call!410374)))

(declare-fun bm!410368 () Bool)

(assert (=> bm!410368 (= call!410373 ($colon$colon!1592 (exprs!5397 (Context!9795 (t!376093 (exprs!5397 lt!2247530)))) (ite (or c!967381 c!967383) (regTwo!31538 (h!69162 (exprs!5397 lt!2247530))) (h!69162 (exprs!5397 lt!2247530)))))))

(declare-fun b!5528560 () Bool)

(assert (=> b!5528560 (= e!3417724 call!410370)))

(declare-fun b!5528561 () Bool)

(declare-fun call!410371 () (InoxSet Context!9794))

(assert (=> b!5528561 (= e!3417728 ((_ map or) call!410371 call!410374))))

(declare-fun bm!410369 () Bool)

(assert (=> bm!410369 (= call!410371 (derivationStepZipperDown!855 (ite c!967380 (regTwo!31539 (h!69162 (exprs!5397 lt!2247530))) (regOne!31538 (h!69162 (exprs!5397 lt!2247530)))) (ite c!967380 (Context!9795 (t!376093 (exprs!5397 lt!2247530))) (Context!9795 call!410373)) (h!69164 s!2326)))))

(declare-fun bm!410370 () Bool)

(assert (=> bm!410370 (= call!410372 (derivationStepZipperDown!855 (ite c!967380 (regOne!31539 (h!69162 (exprs!5397 lt!2247530))) (ite c!967381 (regTwo!31538 (h!69162 (exprs!5397 lt!2247530))) (ite c!967383 (regOne!31538 (h!69162 (exprs!5397 lt!2247530))) (reg!15842 (h!69162 (exprs!5397 lt!2247530)))))) (ite (or c!967380 c!967381) (Context!9795 (t!376093 (exprs!5397 lt!2247530))) (Context!9795 call!410375)) (h!69164 s!2326)))))

(declare-fun b!5528562 () Bool)

(assert (=> b!5528562 (= e!3417726 ((_ map or) call!410372 call!410371))))

(declare-fun b!5528563 () Bool)

(assert (=> b!5528563 (= e!3417727 (nullable!5547 (regOne!31538 (h!69162 (exprs!5397 lt!2247530)))))))

(assert (= (and d!1751990 c!967382) b!5528554))

(assert (= (and d!1751990 (not c!967382)) b!5528553))

(assert (= (and b!5528553 c!967380) b!5528562))

(assert (= (and b!5528553 (not c!967380)) b!5528558))

(assert (= (and b!5528558 res!2354056) b!5528563))

(assert (= (and b!5528558 c!967381) b!5528561))

(assert (= (and b!5528558 (not c!967381)) b!5528555))

(assert (= (and b!5528555 c!967383) b!5528560))

(assert (= (and b!5528555 (not c!967383)) b!5528557))

(assert (= (and b!5528557 c!967379) b!5528556))

(assert (= (and b!5528557 (not c!967379)) b!5528559))

(assert (= (or b!5528560 b!5528556) bm!410365))

(assert (= (or b!5528560 b!5528556) bm!410367))

(assert (= (or b!5528561 bm!410365) bm!410368))

(assert (= (or b!5528561 bm!410367) bm!410366))

(assert (= (or b!5528562 b!5528561) bm!410369))

(assert (= (or b!5528562 bm!410366) bm!410370))

(declare-fun m!6530812 () Bool)

(assert (=> b!5528554 m!6530812))

(declare-fun m!6530814 () Bool)

(assert (=> b!5528563 m!6530814))

(declare-fun m!6530816 () Bool)

(assert (=> bm!410370 m!6530816))

(declare-fun m!6530818 () Bool)

(assert (=> bm!410368 m!6530818))

(declare-fun m!6530820 () Bool)

(assert (=> bm!410369 m!6530820))

(assert (=> bm!410071 d!1751990))

(declare-fun d!1751992 () Bool)

(declare-fun res!2354061 () Bool)

(declare-fun e!3417733 () Bool)

(assert (=> d!1751992 (=> res!2354061 e!3417733)))

(assert (=> d!1751992 (= res!2354061 ((_ is Nil!62715) lt!2247710))))

(assert (=> d!1751992 (= (noDuplicate!1506 lt!2247710) e!3417733)))

(declare-fun b!5528568 () Bool)

(declare-fun e!3417734 () Bool)

(assert (=> b!5528568 (= e!3417733 e!3417734)))

(declare-fun res!2354062 () Bool)

(assert (=> b!5528568 (=> (not res!2354062) (not e!3417734))))

(declare-fun contains!19789 (List!62839 Context!9794) Bool)

(assert (=> b!5528568 (= res!2354062 (not (contains!19789 (t!376094 lt!2247710) (h!69163 lt!2247710))))))

(declare-fun b!5528569 () Bool)

(assert (=> b!5528569 (= e!3417734 (noDuplicate!1506 (t!376094 lt!2247710)))))

(assert (= (and d!1751992 (not res!2354061)) b!5528568))

(assert (= (and b!5528568 res!2354062) b!5528569))

(declare-fun m!6530822 () Bool)

(assert (=> b!5528568 m!6530822))

(declare-fun m!6530824 () Bool)

(assert (=> b!5528569 m!6530824))

(assert (=> d!1751328 d!1751992))

(declare-fun d!1751994 () Bool)

(declare-fun e!3417743 () Bool)

(assert (=> d!1751994 e!3417743))

(declare-fun res!2354068 () Bool)

(assert (=> d!1751994 (=> (not res!2354068) (not e!3417743))))

(declare-fun res!2354067 () List!62839)

(assert (=> d!1751994 (= res!2354068 (noDuplicate!1506 res!2354067))))

(declare-fun e!3417742 () Bool)

(assert (=> d!1751994 e!3417742))

(assert (=> d!1751994 (= (choose!42000 z!1189) res!2354067)))

(declare-fun b!5528577 () Bool)

(declare-fun e!3417741 () Bool)

(declare-fun tp!1520846 () Bool)

(assert (=> b!5528577 (= e!3417741 tp!1520846)))

(declare-fun b!5528576 () Bool)

(declare-fun tp!1520847 () Bool)

(assert (=> b!5528576 (= e!3417742 (and (inv!82029 (h!69163 res!2354067)) e!3417741 tp!1520847))))

(declare-fun b!5528578 () Bool)

(assert (=> b!5528578 (= e!3417743 (= (content!11280 res!2354067) z!1189))))

(assert (= b!5528576 b!5528577))

(assert (= (and d!1751994 ((_ is Cons!62715) res!2354067)) b!5528576))

(assert (= (and d!1751994 res!2354068) b!5528578))

(declare-fun m!6530826 () Bool)

(assert (=> d!1751994 m!6530826))

(declare-fun m!6530828 () Bool)

(assert (=> b!5528576 m!6530828))

(declare-fun m!6530830 () Bool)

(assert (=> b!5528578 m!6530830))

(assert (=> d!1751328 d!1751994))

(declare-fun bs!1277360 () Bool)

(declare-fun d!1751996 () Bool)

(assert (= bs!1277360 (and d!1751996 d!1751334)))

(declare-fun lambda!296621 () Int)

(assert (=> bs!1277360 (= lambda!296621 lambda!296499)))

(declare-fun bs!1277361 () Bool)

(assert (= bs!1277361 (and d!1751996 d!1751874)))

(assert (=> bs!1277361 (= lambda!296621 lambda!296602)))

(declare-fun bs!1277362 () Bool)

(assert (= bs!1277362 (and d!1751996 b!5526942)))

(assert (=> bs!1277362 (not (= lambda!296621 lambda!296452))))

(declare-fun bs!1277363 () Bool)

(assert (= bs!1277363 (and d!1751996 b!5527241)))

(assert (=> bs!1277363 (not (= lambda!296621 lambda!296495))))

(declare-fun bs!1277364 () Bool)

(assert (= bs!1277364 (and d!1751996 b!5527751)))

(assert (=> bs!1277364 (not (= lambda!296621 lambda!296536))))

(declare-fun bs!1277365 () Bool)

(assert (= bs!1277365 (and d!1751996 b!5527984)))

(assert (=> bs!1277365 (not (= lambda!296621 lambda!296560))))

(declare-fun bs!1277366 () Bool)

(assert (= bs!1277366 (and d!1751996 d!1751914)))

(assert (=> bs!1277366 (= lambda!296621 lambda!296607)))

(declare-fun bs!1277367 () Bool)

(assert (= bs!1277367 (and d!1751996 d!1751728)))

(assert (=> bs!1277367 (= lambda!296621 lambda!296578)))

(declare-fun bs!1277368 () Bool)

(assert (= bs!1277368 (and d!1751996 d!1751292)))

(assert (=> bs!1277368 (= lambda!296621 lambda!296483)))

(declare-fun bs!1277369 () Bool)

(assert (= bs!1277369 (and d!1751996 d!1751288)))

(assert (=> bs!1277369 (= lambda!296621 lambda!296477)))

(declare-fun bs!1277370 () Bool)

(assert (= bs!1277370 (and d!1751996 d!1751802)))

(assert (=> bs!1277370 (not (= lambda!296621 lambda!296593))))

(declare-fun bs!1277371 () Bool)

(assert (= bs!1277371 (and d!1751996 d!1751332)))

(assert (=> bs!1277371 (= lambda!296621 lambda!296498)))

(declare-fun bs!1277372 () Bool)

(assert (= bs!1277372 (and d!1751996 b!5527239)))

(assert (=> bs!1277372 (not (= lambda!296621 lambda!296494))))

(declare-fun bs!1277373 () Bool)

(assert (= bs!1277373 (and d!1751996 b!5528270)))

(assert (=> bs!1277373 (not (= lambda!296621 lambda!296595))))

(declare-fun bs!1277374 () Bool)

(assert (= bs!1277374 (and d!1751996 b!5527749)))

(assert (=> bs!1277374 (not (= lambda!296621 lambda!296535))))

(declare-fun bs!1277375 () Bool)

(assert (= bs!1277375 (and d!1751996 d!1751656)))

(assert (=> bs!1277375 (not (= lambda!296621 lambda!296558))))

(declare-fun bs!1277376 () Bool)

(assert (= bs!1277376 (and d!1751996 b!5527986)))

(assert (=> bs!1277376 (not (= lambda!296621 lambda!296561))))

(declare-fun bs!1277377 () Bool)

(assert (= bs!1277377 (and d!1751996 b!5526944)))

(assert (=> bs!1277377 (not (= lambda!296621 lambda!296453))))

(declare-fun bs!1277378 () Bool)

(assert (= bs!1277378 (and d!1751996 d!1751566)))

(assert (=> bs!1277378 (not (= lambda!296621 lambda!296541))))

(declare-fun bs!1277379 () Bool)

(assert (= bs!1277379 (and d!1751996 b!5528108)))

(assert (=> bs!1277379 (not (= lambda!296621 lambda!296585))))

(declare-fun bs!1277380 () Bool)

(assert (= bs!1277380 (and d!1751996 b!5528110)))

(assert (=> bs!1277380 (not (= lambda!296621 lambda!296586))))

(declare-fun bs!1277381 () Bool)

(assert (= bs!1277381 (and d!1751996 b!5526947)))

(assert (=> bs!1277381 (not (= lambda!296621 lambda!296454))))

(declare-fun bs!1277382 () Bool)

(assert (= bs!1277382 (and d!1751996 d!1751822)))

(assert (=> bs!1277382 (= lambda!296621 lambda!296596)))

(declare-fun bs!1277383 () Bool)

(assert (= bs!1277383 (and d!1751996 d!1751290)))

(assert (=> bs!1277383 (= lambda!296621 lambda!296480)))

(declare-fun bs!1277384 () Bool)

(assert (= bs!1277384 (and d!1751996 b!5528520)))

(assert (=> bs!1277384 (not (= lambda!296621 lambda!296612))))

(declare-fun bs!1277385 () Bool)

(assert (= bs!1277385 (and d!1751996 b!5528268)))

(assert (=> bs!1277385 (not (= lambda!296621 lambda!296594))))

(declare-fun bs!1277386 () Bool)

(assert (= bs!1277386 (and d!1751996 b!5528522)))

(assert (=> bs!1277386 (not (= lambda!296621 lambda!296613))))

(declare-fun bs!1277387 () Bool)

(assert (= bs!1277387 (and d!1751996 b!5526949)))

(assert (=> bs!1277387 (not (= lambda!296621 lambda!296455))))

(declare-fun b!5528579 () Bool)

(declare-fun e!3417748 () Bool)

(declare-fun lt!2247843 () Regex!15513)

(assert (=> b!5528579 (= e!3417748 (= lt!2247843 (head!11830 (t!376093 (unfocusZipperList!941 zl!343)))))))

(declare-fun b!5528580 () Bool)

(assert (=> b!5528580 (= e!3417748 (isUnion!526 lt!2247843))))

(declare-fun b!5528581 () Bool)

(declare-fun e!3417745 () Regex!15513)

(declare-fun e!3417749 () Regex!15513)

(assert (=> b!5528581 (= e!3417745 e!3417749)))

(declare-fun c!967386 () Bool)

(assert (=> b!5528581 (= c!967386 ((_ is Cons!62714) (t!376093 (unfocusZipperList!941 zl!343))))))

(declare-fun e!3417746 () Bool)

(assert (=> d!1751996 e!3417746))

(declare-fun res!2354069 () Bool)

(assert (=> d!1751996 (=> (not res!2354069) (not e!3417746))))

(assert (=> d!1751996 (= res!2354069 (validRegex!7249 lt!2247843))))

(assert (=> d!1751996 (= lt!2247843 e!3417745)))

(declare-fun c!967387 () Bool)

(declare-fun e!3417744 () Bool)

(assert (=> d!1751996 (= c!967387 e!3417744)))

(declare-fun res!2354070 () Bool)

(assert (=> d!1751996 (=> (not res!2354070) (not e!3417744))))

(assert (=> d!1751996 (= res!2354070 ((_ is Cons!62714) (t!376093 (unfocusZipperList!941 zl!343))))))

(assert (=> d!1751996 (forall!14690 (t!376093 (unfocusZipperList!941 zl!343)) lambda!296621)))

(assert (=> d!1751996 (= (generalisedUnion!1376 (t!376093 (unfocusZipperList!941 zl!343))) lt!2247843)))

(declare-fun b!5528582 () Bool)

(assert (=> b!5528582 (= e!3417749 EmptyLang!15513)))

(declare-fun b!5528583 () Bool)

(declare-fun e!3417747 () Bool)

(assert (=> b!5528583 (= e!3417746 e!3417747)))

(declare-fun c!967384 () Bool)

(assert (=> b!5528583 (= c!967384 (isEmpty!34501 (t!376093 (unfocusZipperList!941 zl!343))))))

(declare-fun b!5528584 () Bool)

(assert (=> b!5528584 (= e!3417749 (Union!15513 (h!69162 (t!376093 (unfocusZipperList!941 zl!343))) (generalisedUnion!1376 (t!376093 (t!376093 (unfocusZipperList!941 zl!343))))))))

(declare-fun b!5528585 () Bool)

(assert (=> b!5528585 (= e!3417744 (isEmpty!34501 (t!376093 (t!376093 (unfocusZipperList!941 zl!343)))))))

(declare-fun b!5528586 () Bool)

(assert (=> b!5528586 (= e!3417747 e!3417748)))

(declare-fun c!967385 () Bool)

(assert (=> b!5528586 (= c!967385 (isEmpty!34501 (tail!10925 (t!376093 (unfocusZipperList!941 zl!343)))))))

(declare-fun b!5528587 () Bool)

(assert (=> b!5528587 (= e!3417745 (h!69162 (t!376093 (unfocusZipperList!941 zl!343))))))

(declare-fun b!5528588 () Bool)

(assert (=> b!5528588 (= e!3417747 (isEmptyLang!1096 lt!2247843))))

(assert (= (and d!1751996 res!2354070) b!5528585))

(assert (= (and d!1751996 c!967387) b!5528587))

(assert (= (and d!1751996 (not c!967387)) b!5528581))

(assert (= (and b!5528581 c!967386) b!5528584))

(assert (= (and b!5528581 (not c!967386)) b!5528582))

(assert (= (and d!1751996 res!2354069) b!5528583))

(assert (= (and b!5528583 c!967384) b!5528588))

(assert (= (and b!5528583 (not c!967384)) b!5528586))

(assert (= (and b!5528586 c!967385) b!5528579))

(assert (= (and b!5528586 (not c!967385)) b!5528580))

(declare-fun m!6530832 () Bool)

(assert (=> d!1751996 m!6530832))

(declare-fun m!6530834 () Bool)

(assert (=> d!1751996 m!6530834))

(assert (=> b!5528583 m!6529298))

(declare-fun m!6530836 () Bool)

(assert (=> b!5528586 m!6530836))

(assert (=> b!5528586 m!6530836))

(declare-fun m!6530838 () Bool)

(assert (=> b!5528586 m!6530838))

(declare-fun m!6530840 () Bool)

(assert (=> b!5528584 m!6530840))

(declare-fun m!6530842 () Bool)

(assert (=> b!5528588 m!6530842))

(declare-fun m!6530844 () Bool)

(assert (=> b!5528580 m!6530844))

(declare-fun m!6530846 () Bool)

(assert (=> b!5528585 m!6530846))

(declare-fun m!6530848 () Bool)

(assert (=> b!5528579 m!6530848))

(assert (=> b!5527144 d!1751996))

(declare-fun b!5528589 () Bool)

(declare-fun e!3417750 () Bool)

(declare-fun tp!1520848 () Bool)

(assert (=> b!5528589 (= e!3417750 (and tp_is_empty!40279 tp!1520848))))

(assert (=> b!5527287 (= tp!1520655 e!3417750)))

(assert (= (and b!5527287 ((_ is Cons!62716) (t!376095 (t!376095 s!2326)))) b!5528589))

(declare-fun b!5528591 () Bool)

(declare-fun e!3417752 () Bool)

(declare-fun tp!1520849 () Bool)

(assert (=> b!5528591 (= e!3417752 tp!1520849)))

(declare-fun e!3417751 () Bool)

(declare-fun b!5528590 () Bool)

(declare-fun tp!1520850 () Bool)

(assert (=> b!5528590 (= e!3417751 (and (inv!82029 (h!69163 (t!376094 (t!376094 zl!343)))) e!3417752 tp!1520850))))

(assert (=> b!5527294 (= tp!1520661 e!3417751)))

(assert (= b!5528590 b!5528591))

(assert (= (and b!5527294 ((_ is Cons!62715) (t!376094 (t!376094 zl!343)))) b!5528590))

(declare-fun m!6530850 () Bool)

(assert (=> b!5528590 m!6530850))

(declare-fun condSetEmpty!36773 () Bool)

(assert (=> setNonEmpty!36761 (= condSetEmpty!36773 (= setRest!36761 ((as const (Array Context!9794 Bool)) false)))))

(declare-fun setRes!36773 () Bool)

(assert (=> setNonEmpty!36761 (= tp!1520667 setRes!36773)))

(declare-fun setIsEmpty!36773 () Bool)

(assert (=> setIsEmpty!36773 setRes!36773))

(declare-fun e!3417753 () Bool)

(declare-fun setElem!36773 () Context!9794)

(declare-fun setNonEmpty!36773 () Bool)

(declare-fun tp!1520852 () Bool)

(assert (=> setNonEmpty!36773 (= setRes!36773 (and tp!1520852 (inv!82029 setElem!36773) e!3417753))))

(declare-fun setRest!36773 () (InoxSet Context!9794))

(assert (=> setNonEmpty!36773 (= setRest!36761 ((_ map or) (store ((as const (Array Context!9794 Bool)) false) setElem!36773 true) setRest!36773))))

(declare-fun b!5528592 () Bool)

(declare-fun tp!1520851 () Bool)

(assert (=> b!5528592 (= e!3417753 tp!1520851)))

(assert (= (and setNonEmpty!36761 condSetEmpty!36773) setIsEmpty!36773))

(assert (= (and setNonEmpty!36761 (not condSetEmpty!36773)) setNonEmpty!36773))

(assert (= setNonEmpty!36773 b!5528592))

(declare-fun m!6530852 () Bool)

(assert (=> setNonEmpty!36773 m!6530852))

(declare-fun b!5528595 () Bool)

(declare-fun e!3417754 () Bool)

(declare-fun tp!1520854 () Bool)

(assert (=> b!5528595 (= e!3417754 tp!1520854)))

(declare-fun b!5528593 () Bool)

(assert (=> b!5528593 (= e!3417754 tp_is_empty!40279)))

(declare-fun b!5528596 () Bool)

(declare-fun tp!1520855 () Bool)

(declare-fun tp!1520857 () Bool)

(assert (=> b!5528596 (= e!3417754 (and tp!1520855 tp!1520857))))

(assert (=> b!5527270 (= tp!1520635 e!3417754)))

(declare-fun b!5528594 () Bool)

(declare-fun tp!1520856 () Bool)

(declare-fun tp!1520853 () Bool)

(assert (=> b!5528594 (= e!3417754 (and tp!1520856 tp!1520853))))

(assert (= (and b!5527270 ((_ is ElementMatch!15513) (regOne!31539 (regTwo!31539 r!7292)))) b!5528593))

(assert (= (and b!5527270 ((_ is Concat!24358) (regOne!31539 (regTwo!31539 r!7292)))) b!5528594))

(assert (= (and b!5527270 ((_ is Star!15513) (regOne!31539 (regTwo!31539 r!7292)))) b!5528595))

(assert (= (and b!5527270 ((_ is Union!15513) (regOne!31539 (regTwo!31539 r!7292)))) b!5528596))

(declare-fun b!5528599 () Bool)

(declare-fun e!3417755 () Bool)

(declare-fun tp!1520859 () Bool)

(assert (=> b!5528599 (= e!3417755 tp!1520859)))

(declare-fun b!5528597 () Bool)

(assert (=> b!5528597 (= e!3417755 tp_is_empty!40279)))

(declare-fun b!5528600 () Bool)

(declare-fun tp!1520860 () Bool)

(declare-fun tp!1520862 () Bool)

(assert (=> b!5528600 (= e!3417755 (and tp!1520860 tp!1520862))))

(assert (=> b!5527270 (= tp!1520637 e!3417755)))

(declare-fun b!5528598 () Bool)

(declare-fun tp!1520861 () Bool)

(declare-fun tp!1520858 () Bool)

(assert (=> b!5528598 (= e!3417755 (and tp!1520861 tp!1520858))))

(assert (= (and b!5527270 ((_ is ElementMatch!15513) (regTwo!31539 (regTwo!31539 r!7292)))) b!5528597))

(assert (= (and b!5527270 ((_ is Concat!24358) (regTwo!31539 (regTwo!31539 r!7292)))) b!5528598))

(assert (= (and b!5527270 ((_ is Star!15513) (regTwo!31539 (regTwo!31539 r!7292)))) b!5528599))

(assert (= (and b!5527270 ((_ is Union!15513) (regTwo!31539 (regTwo!31539 r!7292)))) b!5528600))

(declare-fun b!5528601 () Bool)

(declare-fun e!3417756 () Bool)

(declare-fun tp!1520863 () Bool)

(declare-fun tp!1520864 () Bool)

(assert (=> b!5528601 (= e!3417756 (and tp!1520863 tp!1520864))))

(assert (=> b!5527300 (= tp!1520666 e!3417756)))

(assert (= (and b!5527300 ((_ is Cons!62714) (exprs!5397 setElem!36761))) b!5528601))

(declare-fun b!5528604 () Bool)

(declare-fun e!3417757 () Bool)

(declare-fun tp!1520866 () Bool)

(assert (=> b!5528604 (= e!3417757 tp!1520866)))

(declare-fun b!5528602 () Bool)

(assert (=> b!5528602 (= e!3417757 tp_is_empty!40279)))

(declare-fun b!5528605 () Bool)

(declare-fun tp!1520867 () Bool)

(declare-fun tp!1520869 () Bool)

(assert (=> b!5528605 (= e!3417757 (and tp!1520867 tp!1520869))))

(assert (=> b!5527276 (= tp!1520646 e!3417757)))

(declare-fun b!5528603 () Bool)

(declare-fun tp!1520868 () Bool)

(declare-fun tp!1520865 () Bool)

(assert (=> b!5528603 (= e!3417757 (and tp!1520868 tp!1520865))))

(assert (= (and b!5527276 ((_ is ElementMatch!15513) (regOne!31538 (regTwo!31538 r!7292)))) b!5528602))

(assert (= (and b!5527276 ((_ is Concat!24358) (regOne!31538 (regTwo!31538 r!7292)))) b!5528603))

(assert (= (and b!5527276 ((_ is Star!15513) (regOne!31538 (regTwo!31538 r!7292)))) b!5528604))

(assert (= (and b!5527276 ((_ is Union!15513) (regOne!31538 (regTwo!31538 r!7292)))) b!5528605))

(declare-fun b!5528608 () Bool)

(declare-fun e!3417758 () Bool)

(declare-fun tp!1520871 () Bool)

(assert (=> b!5528608 (= e!3417758 tp!1520871)))

(declare-fun b!5528606 () Bool)

(assert (=> b!5528606 (= e!3417758 tp_is_empty!40279)))

(declare-fun b!5528609 () Bool)

(declare-fun tp!1520872 () Bool)

(declare-fun tp!1520874 () Bool)

(assert (=> b!5528609 (= e!3417758 (and tp!1520872 tp!1520874))))

(assert (=> b!5527276 (= tp!1520643 e!3417758)))

(declare-fun b!5528607 () Bool)

(declare-fun tp!1520873 () Bool)

(declare-fun tp!1520870 () Bool)

(assert (=> b!5528607 (= e!3417758 (and tp!1520873 tp!1520870))))

(assert (= (and b!5527276 ((_ is ElementMatch!15513) (regTwo!31538 (regTwo!31538 r!7292)))) b!5528606))

(assert (= (and b!5527276 ((_ is Concat!24358) (regTwo!31538 (regTwo!31538 r!7292)))) b!5528607))

(assert (= (and b!5527276 ((_ is Star!15513) (regTwo!31538 (regTwo!31538 r!7292)))) b!5528608))

(assert (= (and b!5527276 ((_ is Union!15513) (regTwo!31538 (regTwo!31538 r!7292)))) b!5528609))

(declare-fun b!5528612 () Bool)

(declare-fun e!3417759 () Bool)

(declare-fun tp!1520876 () Bool)

(assert (=> b!5528612 (= e!3417759 tp!1520876)))

(declare-fun b!5528610 () Bool)

(assert (=> b!5528610 (= e!3417759 tp_is_empty!40279)))

(declare-fun b!5528613 () Bool)

(declare-fun tp!1520877 () Bool)

(declare-fun tp!1520879 () Bool)

(assert (=> b!5528613 (= e!3417759 (and tp!1520877 tp!1520879))))

(assert (=> b!5527252 (= tp!1520616 e!3417759)))

(declare-fun b!5528611 () Bool)

(declare-fun tp!1520878 () Bool)

(declare-fun tp!1520875 () Bool)

(assert (=> b!5528611 (= e!3417759 (and tp!1520878 tp!1520875))))

(assert (= (and b!5527252 ((_ is ElementMatch!15513) (h!69162 (exprs!5397 (h!69163 zl!343))))) b!5528610))

(assert (= (and b!5527252 ((_ is Concat!24358) (h!69162 (exprs!5397 (h!69163 zl!343))))) b!5528611))

(assert (= (and b!5527252 ((_ is Star!15513) (h!69162 (exprs!5397 (h!69163 zl!343))))) b!5528612))

(assert (= (and b!5527252 ((_ is Union!15513) (h!69162 (exprs!5397 (h!69163 zl!343))))) b!5528613))

(declare-fun b!5528614 () Bool)

(declare-fun e!3417760 () Bool)

(declare-fun tp!1520880 () Bool)

(declare-fun tp!1520881 () Bool)

(assert (=> b!5528614 (= e!3417760 (and tp!1520880 tp!1520881))))

(assert (=> b!5527252 (= tp!1520617 e!3417760)))

(assert (= (and b!5527252 ((_ is Cons!62714) (t!376093 (exprs!5397 (h!69163 zl!343))))) b!5528614))

(declare-fun b!5528617 () Bool)

(declare-fun e!3417761 () Bool)

(declare-fun tp!1520883 () Bool)

(assert (=> b!5528617 (= e!3417761 tp!1520883)))

(declare-fun b!5528615 () Bool)

(assert (=> b!5528615 (= e!3417761 tp_is_empty!40279)))

(declare-fun b!5528618 () Bool)

(declare-fun tp!1520884 () Bool)

(declare-fun tp!1520886 () Bool)

(assert (=> b!5528618 (= e!3417761 (and tp!1520884 tp!1520886))))

(assert (=> b!5527277 (= tp!1520644 e!3417761)))

(declare-fun b!5528616 () Bool)

(declare-fun tp!1520885 () Bool)

(declare-fun tp!1520882 () Bool)

(assert (=> b!5528616 (= e!3417761 (and tp!1520885 tp!1520882))))

(assert (= (and b!5527277 ((_ is ElementMatch!15513) (reg!15842 (regTwo!31538 r!7292)))) b!5528615))

(assert (= (and b!5527277 ((_ is Concat!24358) (reg!15842 (regTwo!31538 r!7292)))) b!5528616))

(assert (= (and b!5527277 ((_ is Star!15513) (reg!15842 (regTwo!31538 r!7292)))) b!5528617))

(assert (= (and b!5527277 ((_ is Union!15513) (reg!15842 (regTwo!31538 r!7292)))) b!5528618))

(declare-fun b!5528621 () Bool)

(declare-fun e!3417762 () Bool)

(declare-fun tp!1520888 () Bool)

(assert (=> b!5528621 (= e!3417762 tp!1520888)))

(declare-fun b!5528619 () Bool)

(assert (=> b!5528619 (= e!3417762 tp_is_empty!40279)))

(declare-fun b!5528622 () Bool)

(declare-fun tp!1520889 () Bool)

(declare-fun tp!1520891 () Bool)

(assert (=> b!5528622 (= e!3417762 (and tp!1520889 tp!1520891))))

(assert (=> b!5527268 (= tp!1520636 e!3417762)))

(declare-fun b!5528620 () Bool)

(declare-fun tp!1520890 () Bool)

(declare-fun tp!1520887 () Bool)

(assert (=> b!5528620 (= e!3417762 (and tp!1520890 tp!1520887))))

(assert (= (and b!5527268 ((_ is ElementMatch!15513) (regOne!31538 (regTwo!31539 r!7292)))) b!5528619))

(assert (= (and b!5527268 ((_ is Concat!24358) (regOne!31538 (regTwo!31539 r!7292)))) b!5528620))

(assert (= (and b!5527268 ((_ is Star!15513) (regOne!31538 (regTwo!31539 r!7292)))) b!5528621))

(assert (= (and b!5527268 ((_ is Union!15513) (regOne!31538 (regTwo!31539 r!7292)))) b!5528622))

(declare-fun b!5528625 () Bool)

(declare-fun e!3417763 () Bool)

(declare-fun tp!1520893 () Bool)

(assert (=> b!5528625 (= e!3417763 tp!1520893)))

(declare-fun b!5528623 () Bool)

(assert (=> b!5528623 (= e!3417763 tp_is_empty!40279)))

(declare-fun b!5528626 () Bool)

(declare-fun tp!1520894 () Bool)

(declare-fun tp!1520896 () Bool)

(assert (=> b!5528626 (= e!3417763 (and tp!1520894 tp!1520896))))

(assert (=> b!5527268 (= tp!1520633 e!3417763)))

(declare-fun b!5528624 () Bool)

(declare-fun tp!1520895 () Bool)

(declare-fun tp!1520892 () Bool)

(assert (=> b!5528624 (= e!3417763 (and tp!1520895 tp!1520892))))

(assert (= (and b!5527268 ((_ is ElementMatch!15513) (regTwo!31538 (regTwo!31539 r!7292)))) b!5528623))

(assert (= (and b!5527268 ((_ is Concat!24358) (regTwo!31538 (regTwo!31539 r!7292)))) b!5528624))

(assert (= (and b!5527268 ((_ is Star!15513) (regTwo!31538 (regTwo!31539 r!7292)))) b!5528625))

(assert (= (and b!5527268 ((_ is Union!15513) (regTwo!31538 (regTwo!31539 r!7292)))) b!5528626))

(declare-fun b!5528629 () Bool)

(declare-fun e!3417764 () Bool)

(declare-fun tp!1520898 () Bool)

(assert (=> b!5528629 (= e!3417764 tp!1520898)))

(declare-fun b!5528627 () Bool)

(assert (=> b!5528627 (= e!3417764 tp_is_empty!40279)))

(declare-fun b!5528630 () Bool)

(declare-fun tp!1520899 () Bool)

(declare-fun tp!1520901 () Bool)

(assert (=> b!5528630 (= e!3417764 (and tp!1520899 tp!1520901))))

(assert (=> b!5527269 (= tp!1520634 e!3417764)))

(declare-fun b!5528628 () Bool)

(declare-fun tp!1520900 () Bool)

(declare-fun tp!1520897 () Bool)

(assert (=> b!5528628 (= e!3417764 (and tp!1520900 tp!1520897))))

(assert (= (and b!5527269 ((_ is ElementMatch!15513) (reg!15842 (regTwo!31539 r!7292)))) b!5528627))

(assert (= (and b!5527269 ((_ is Concat!24358) (reg!15842 (regTwo!31539 r!7292)))) b!5528628))

(assert (= (and b!5527269 ((_ is Star!15513) (reg!15842 (regTwo!31539 r!7292)))) b!5528629))

(assert (= (and b!5527269 ((_ is Union!15513) (reg!15842 (regTwo!31539 r!7292)))) b!5528630))

(declare-fun b!5528633 () Bool)

(declare-fun e!3417765 () Bool)

(declare-fun tp!1520903 () Bool)

(assert (=> b!5528633 (= e!3417765 tp!1520903)))

(declare-fun b!5528631 () Bool)

(assert (=> b!5528631 (= e!3417765 tp_is_empty!40279)))

(declare-fun b!5528634 () Bool)

(declare-fun tp!1520904 () Bool)

(declare-fun tp!1520906 () Bool)

(assert (=> b!5528634 (= e!3417765 (and tp!1520904 tp!1520906))))

(assert (=> b!5527278 (= tp!1520645 e!3417765)))

(declare-fun b!5528632 () Bool)

(declare-fun tp!1520905 () Bool)

(declare-fun tp!1520902 () Bool)

(assert (=> b!5528632 (= e!3417765 (and tp!1520905 tp!1520902))))

(assert (= (and b!5527278 ((_ is ElementMatch!15513) (regOne!31539 (regTwo!31538 r!7292)))) b!5528631))

(assert (= (and b!5527278 ((_ is Concat!24358) (regOne!31539 (regTwo!31538 r!7292)))) b!5528632))

(assert (= (and b!5527278 ((_ is Star!15513) (regOne!31539 (regTwo!31538 r!7292)))) b!5528633))

(assert (= (and b!5527278 ((_ is Union!15513) (regOne!31539 (regTwo!31538 r!7292)))) b!5528634))

(declare-fun b!5528637 () Bool)

(declare-fun e!3417766 () Bool)

(declare-fun tp!1520908 () Bool)

(assert (=> b!5528637 (= e!3417766 tp!1520908)))

(declare-fun b!5528635 () Bool)

(assert (=> b!5528635 (= e!3417766 tp_is_empty!40279)))

(declare-fun b!5528638 () Bool)

(declare-fun tp!1520909 () Bool)

(declare-fun tp!1520911 () Bool)

(assert (=> b!5528638 (= e!3417766 (and tp!1520909 tp!1520911))))

(assert (=> b!5527278 (= tp!1520647 e!3417766)))

(declare-fun b!5528636 () Bool)

(declare-fun tp!1520910 () Bool)

(declare-fun tp!1520907 () Bool)

(assert (=> b!5528636 (= e!3417766 (and tp!1520910 tp!1520907))))

(assert (= (and b!5527278 ((_ is ElementMatch!15513) (regTwo!31539 (regTwo!31538 r!7292)))) b!5528635))

(assert (= (and b!5527278 ((_ is Concat!24358) (regTwo!31539 (regTwo!31538 r!7292)))) b!5528636))

(assert (= (and b!5527278 ((_ is Star!15513) (regTwo!31539 (regTwo!31538 r!7292)))) b!5528637))

(assert (= (and b!5527278 ((_ is Union!15513) (regTwo!31539 (regTwo!31538 r!7292)))) b!5528638))

(declare-fun b!5528641 () Bool)

(declare-fun e!3417767 () Bool)

(declare-fun tp!1520913 () Bool)

(assert (=> b!5528641 (= e!3417767 tp!1520913)))

(declare-fun b!5528639 () Bool)

(assert (=> b!5528639 (= e!3417767 tp_is_empty!40279)))

(declare-fun b!5528642 () Bool)

(declare-fun tp!1520914 () Bool)

(declare-fun tp!1520916 () Bool)

(assert (=> b!5528642 (= e!3417767 (and tp!1520914 tp!1520916))))

(assert (=> b!5527251 (= tp!1520614 e!3417767)))

(declare-fun b!5528640 () Bool)

(declare-fun tp!1520915 () Bool)

(declare-fun tp!1520912 () Bool)

(assert (=> b!5528640 (= e!3417767 (and tp!1520915 tp!1520912))))

(assert (= (and b!5527251 ((_ is ElementMatch!15513) (h!69162 (exprs!5397 setElem!36755)))) b!5528639))

(assert (= (and b!5527251 ((_ is Concat!24358) (h!69162 (exprs!5397 setElem!36755)))) b!5528640))

(assert (= (and b!5527251 ((_ is Star!15513) (h!69162 (exprs!5397 setElem!36755)))) b!5528641))

(assert (= (and b!5527251 ((_ is Union!15513) (h!69162 (exprs!5397 setElem!36755)))) b!5528642))

(declare-fun b!5528643 () Bool)

(declare-fun e!3417768 () Bool)

(declare-fun tp!1520917 () Bool)

(declare-fun tp!1520918 () Bool)

(assert (=> b!5528643 (= e!3417768 (and tp!1520917 tp!1520918))))

(assert (=> b!5527251 (= tp!1520615 e!3417768)))

(assert (= (and b!5527251 ((_ is Cons!62714) (t!376093 (exprs!5397 setElem!36755)))) b!5528643))

(declare-fun b!5528646 () Bool)

(declare-fun e!3417769 () Bool)

(declare-fun tp!1520920 () Bool)

(assert (=> b!5528646 (= e!3417769 tp!1520920)))

(declare-fun b!5528644 () Bool)

(assert (=> b!5528644 (= e!3417769 tp_is_empty!40279)))

(declare-fun b!5528647 () Bool)

(declare-fun tp!1520921 () Bool)

(declare-fun tp!1520923 () Bool)

(assert (=> b!5528647 (= e!3417769 (and tp!1520921 tp!1520923))))

(assert (=> b!5527265 (= tp!1520629 e!3417769)))

(declare-fun b!5528645 () Bool)

(declare-fun tp!1520922 () Bool)

(declare-fun tp!1520919 () Bool)

(assert (=> b!5528645 (= e!3417769 (and tp!1520922 tp!1520919))))

(assert (= (and b!5527265 ((_ is ElementMatch!15513) (reg!15842 (regOne!31539 r!7292)))) b!5528644))

(assert (= (and b!5527265 ((_ is Concat!24358) (reg!15842 (regOne!31539 r!7292)))) b!5528645))

(assert (= (and b!5527265 ((_ is Star!15513) (reg!15842 (regOne!31539 r!7292)))) b!5528646))

(assert (= (and b!5527265 ((_ is Union!15513) (reg!15842 (regOne!31539 r!7292)))) b!5528647))

(declare-fun b!5528650 () Bool)

(declare-fun e!3417770 () Bool)

(declare-fun tp!1520925 () Bool)

(assert (=> b!5528650 (= e!3417770 tp!1520925)))

(declare-fun b!5528648 () Bool)

(assert (=> b!5528648 (= e!3417770 tp_is_empty!40279)))

(declare-fun b!5528651 () Bool)

(declare-fun tp!1520926 () Bool)

(declare-fun tp!1520928 () Bool)

(assert (=> b!5528651 (= e!3417770 (and tp!1520926 tp!1520928))))

(assert (=> b!5527274 (= tp!1520640 e!3417770)))

(declare-fun b!5528649 () Bool)

(declare-fun tp!1520927 () Bool)

(declare-fun tp!1520924 () Bool)

(assert (=> b!5528649 (= e!3417770 (and tp!1520927 tp!1520924))))

(assert (= (and b!5527274 ((_ is ElementMatch!15513) (regOne!31539 (regOne!31538 r!7292)))) b!5528648))

(assert (= (and b!5527274 ((_ is Concat!24358) (regOne!31539 (regOne!31538 r!7292)))) b!5528649))

(assert (= (and b!5527274 ((_ is Star!15513) (regOne!31539 (regOne!31538 r!7292)))) b!5528650))

(assert (= (and b!5527274 ((_ is Union!15513) (regOne!31539 (regOne!31538 r!7292)))) b!5528651))

(declare-fun b!5528654 () Bool)

(declare-fun e!3417771 () Bool)

(declare-fun tp!1520930 () Bool)

(assert (=> b!5528654 (= e!3417771 tp!1520930)))

(declare-fun b!5528652 () Bool)

(assert (=> b!5528652 (= e!3417771 tp_is_empty!40279)))

(declare-fun b!5528655 () Bool)

(declare-fun tp!1520931 () Bool)

(declare-fun tp!1520933 () Bool)

(assert (=> b!5528655 (= e!3417771 (and tp!1520931 tp!1520933))))

(assert (=> b!5527274 (= tp!1520642 e!3417771)))

(declare-fun b!5528653 () Bool)

(declare-fun tp!1520932 () Bool)

(declare-fun tp!1520929 () Bool)

(assert (=> b!5528653 (= e!3417771 (and tp!1520932 tp!1520929))))

(assert (= (and b!5527274 ((_ is ElementMatch!15513) (regTwo!31539 (regOne!31538 r!7292)))) b!5528652))

(assert (= (and b!5527274 ((_ is Concat!24358) (regTwo!31539 (regOne!31538 r!7292)))) b!5528653))

(assert (= (and b!5527274 ((_ is Star!15513) (regTwo!31539 (regOne!31538 r!7292)))) b!5528654))

(assert (= (and b!5527274 ((_ is Union!15513) (regTwo!31539 (regOne!31538 r!7292)))) b!5528655))

(declare-fun b!5528658 () Bool)

(declare-fun e!3417772 () Bool)

(declare-fun tp!1520935 () Bool)

(assert (=> b!5528658 (= e!3417772 tp!1520935)))

(declare-fun b!5528656 () Bool)

(assert (=> b!5528656 (= e!3417772 tp_is_empty!40279)))

(declare-fun b!5528659 () Bool)

(declare-fun tp!1520936 () Bool)

(declare-fun tp!1520938 () Bool)

(assert (=> b!5528659 (= e!3417772 (and tp!1520936 tp!1520938))))

(assert (=> b!5527266 (= tp!1520630 e!3417772)))

(declare-fun b!5528657 () Bool)

(declare-fun tp!1520937 () Bool)

(declare-fun tp!1520934 () Bool)

(assert (=> b!5528657 (= e!3417772 (and tp!1520937 tp!1520934))))

(assert (= (and b!5527266 ((_ is ElementMatch!15513) (regOne!31539 (regOne!31539 r!7292)))) b!5528656))

(assert (= (and b!5527266 ((_ is Concat!24358) (regOne!31539 (regOne!31539 r!7292)))) b!5528657))

(assert (= (and b!5527266 ((_ is Star!15513) (regOne!31539 (regOne!31539 r!7292)))) b!5528658))

(assert (= (and b!5527266 ((_ is Union!15513) (regOne!31539 (regOne!31539 r!7292)))) b!5528659))

(declare-fun b!5528662 () Bool)

(declare-fun e!3417773 () Bool)

(declare-fun tp!1520940 () Bool)

(assert (=> b!5528662 (= e!3417773 tp!1520940)))

(declare-fun b!5528660 () Bool)

(assert (=> b!5528660 (= e!3417773 tp_is_empty!40279)))

(declare-fun b!5528663 () Bool)

(declare-fun tp!1520941 () Bool)

(declare-fun tp!1520943 () Bool)

(assert (=> b!5528663 (= e!3417773 (and tp!1520941 tp!1520943))))

(assert (=> b!5527266 (= tp!1520632 e!3417773)))

(declare-fun b!5528661 () Bool)

(declare-fun tp!1520942 () Bool)

(declare-fun tp!1520939 () Bool)

(assert (=> b!5528661 (= e!3417773 (and tp!1520942 tp!1520939))))

(assert (= (and b!5527266 ((_ is ElementMatch!15513) (regTwo!31539 (regOne!31539 r!7292)))) b!5528660))

(assert (= (and b!5527266 ((_ is Concat!24358) (regTwo!31539 (regOne!31539 r!7292)))) b!5528661))

(assert (= (and b!5527266 ((_ is Star!15513) (regTwo!31539 (regOne!31539 r!7292)))) b!5528662))

(assert (= (and b!5527266 ((_ is Union!15513) (regTwo!31539 (regOne!31539 r!7292)))) b!5528663))

(declare-fun b!5528666 () Bool)

(declare-fun e!3417774 () Bool)

(declare-fun tp!1520945 () Bool)

(assert (=> b!5528666 (= e!3417774 tp!1520945)))

(declare-fun b!5528664 () Bool)

(assert (=> b!5528664 (= e!3417774 tp_is_empty!40279)))

(declare-fun b!5528667 () Bool)

(declare-fun tp!1520946 () Bool)

(declare-fun tp!1520948 () Bool)

(assert (=> b!5528667 (= e!3417774 (and tp!1520946 tp!1520948))))

(assert (=> b!5527281 (= tp!1520649 e!3417774)))

(declare-fun b!5528665 () Bool)

(declare-fun tp!1520947 () Bool)

(declare-fun tp!1520944 () Bool)

(assert (=> b!5528665 (= e!3417774 (and tp!1520947 tp!1520944))))

(assert (= (and b!5527281 ((_ is ElementMatch!15513) (reg!15842 (reg!15842 r!7292)))) b!5528664))

(assert (= (and b!5527281 ((_ is Concat!24358) (reg!15842 (reg!15842 r!7292)))) b!5528665))

(assert (= (and b!5527281 ((_ is Star!15513) (reg!15842 (reg!15842 r!7292)))) b!5528666))

(assert (= (and b!5527281 ((_ is Union!15513) (reg!15842 (reg!15842 r!7292)))) b!5528667))

(declare-fun b!5528670 () Bool)

(declare-fun e!3417775 () Bool)

(declare-fun tp!1520950 () Bool)

(assert (=> b!5528670 (= e!3417775 tp!1520950)))

(declare-fun b!5528668 () Bool)

(assert (=> b!5528668 (= e!3417775 tp_is_empty!40279)))

(declare-fun b!5528671 () Bool)

(declare-fun tp!1520951 () Bool)

(declare-fun tp!1520953 () Bool)

(assert (=> b!5528671 (= e!3417775 (and tp!1520951 tp!1520953))))

(assert (=> b!5527272 (= tp!1520641 e!3417775)))

(declare-fun b!5528669 () Bool)

(declare-fun tp!1520952 () Bool)

(declare-fun tp!1520949 () Bool)

(assert (=> b!5528669 (= e!3417775 (and tp!1520952 tp!1520949))))

(assert (= (and b!5527272 ((_ is ElementMatch!15513) (regOne!31538 (regOne!31538 r!7292)))) b!5528668))

(assert (= (and b!5527272 ((_ is Concat!24358) (regOne!31538 (regOne!31538 r!7292)))) b!5528669))

(assert (= (and b!5527272 ((_ is Star!15513) (regOne!31538 (regOne!31538 r!7292)))) b!5528670))

(assert (= (and b!5527272 ((_ is Union!15513) (regOne!31538 (regOne!31538 r!7292)))) b!5528671))

(declare-fun b!5528674 () Bool)

(declare-fun e!3417776 () Bool)

(declare-fun tp!1520955 () Bool)

(assert (=> b!5528674 (= e!3417776 tp!1520955)))

(declare-fun b!5528672 () Bool)

(assert (=> b!5528672 (= e!3417776 tp_is_empty!40279)))

(declare-fun b!5528675 () Bool)

(declare-fun tp!1520956 () Bool)

(declare-fun tp!1520958 () Bool)

(assert (=> b!5528675 (= e!3417776 (and tp!1520956 tp!1520958))))

(assert (=> b!5527272 (= tp!1520638 e!3417776)))

(declare-fun b!5528673 () Bool)

(declare-fun tp!1520957 () Bool)

(declare-fun tp!1520954 () Bool)

(assert (=> b!5528673 (= e!3417776 (and tp!1520957 tp!1520954))))

(assert (= (and b!5527272 ((_ is ElementMatch!15513) (regTwo!31538 (regOne!31538 r!7292)))) b!5528672))

(assert (= (and b!5527272 ((_ is Concat!24358) (regTwo!31538 (regOne!31538 r!7292)))) b!5528673))

(assert (= (and b!5527272 ((_ is Star!15513) (regTwo!31538 (regOne!31538 r!7292)))) b!5528674))

(assert (= (and b!5527272 ((_ is Union!15513) (regTwo!31538 (regOne!31538 r!7292)))) b!5528675))

(declare-fun b!5528678 () Bool)

(declare-fun e!3417777 () Bool)

(declare-fun tp!1520960 () Bool)

(assert (=> b!5528678 (= e!3417777 tp!1520960)))

(declare-fun b!5528676 () Bool)

(assert (=> b!5528676 (= e!3417777 tp_is_empty!40279)))

(declare-fun b!5528679 () Bool)

(declare-fun tp!1520961 () Bool)

(declare-fun tp!1520963 () Bool)

(assert (=> b!5528679 (= e!3417777 (and tp!1520961 tp!1520963))))

(assert (=> b!5527273 (= tp!1520639 e!3417777)))

(declare-fun b!5528677 () Bool)

(declare-fun tp!1520962 () Bool)

(declare-fun tp!1520959 () Bool)

(assert (=> b!5528677 (= e!3417777 (and tp!1520962 tp!1520959))))

(assert (= (and b!5527273 ((_ is ElementMatch!15513) (reg!15842 (regOne!31538 r!7292)))) b!5528676))

(assert (= (and b!5527273 ((_ is Concat!24358) (reg!15842 (regOne!31538 r!7292)))) b!5528677))

(assert (= (and b!5527273 ((_ is Star!15513) (reg!15842 (regOne!31538 r!7292)))) b!5528678))

(assert (= (and b!5527273 ((_ is Union!15513) (reg!15842 (regOne!31538 r!7292)))) b!5528679))

(declare-fun b!5528682 () Bool)

(declare-fun e!3417778 () Bool)

(declare-fun tp!1520965 () Bool)

(assert (=> b!5528682 (= e!3417778 tp!1520965)))

(declare-fun b!5528680 () Bool)

(assert (=> b!5528680 (= e!3417778 tp_is_empty!40279)))

(declare-fun b!5528683 () Bool)

(declare-fun tp!1520966 () Bool)

(declare-fun tp!1520968 () Bool)

(assert (=> b!5528683 (= e!3417778 (and tp!1520966 tp!1520968))))

(assert (=> b!5527282 (= tp!1520650 e!3417778)))

(declare-fun b!5528681 () Bool)

(declare-fun tp!1520967 () Bool)

(declare-fun tp!1520964 () Bool)

(assert (=> b!5528681 (= e!3417778 (and tp!1520967 tp!1520964))))

(assert (= (and b!5527282 ((_ is ElementMatch!15513) (regOne!31539 (reg!15842 r!7292)))) b!5528680))

(assert (= (and b!5527282 ((_ is Concat!24358) (regOne!31539 (reg!15842 r!7292)))) b!5528681))

(assert (= (and b!5527282 ((_ is Star!15513) (regOne!31539 (reg!15842 r!7292)))) b!5528682))

(assert (= (and b!5527282 ((_ is Union!15513) (regOne!31539 (reg!15842 r!7292)))) b!5528683))

(declare-fun b!5528686 () Bool)

(declare-fun e!3417779 () Bool)

(declare-fun tp!1520970 () Bool)

(assert (=> b!5528686 (= e!3417779 tp!1520970)))

(declare-fun b!5528684 () Bool)

(assert (=> b!5528684 (= e!3417779 tp_is_empty!40279)))

(declare-fun b!5528687 () Bool)

(declare-fun tp!1520971 () Bool)

(declare-fun tp!1520973 () Bool)

(assert (=> b!5528687 (= e!3417779 (and tp!1520971 tp!1520973))))

(assert (=> b!5527282 (= tp!1520652 e!3417779)))

(declare-fun b!5528685 () Bool)

(declare-fun tp!1520972 () Bool)

(declare-fun tp!1520969 () Bool)

(assert (=> b!5528685 (= e!3417779 (and tp!1520972 tp!1520969))))

(assert (= (and b!5527282 ((_ is ElementMatch!15513) (regTwo!31539 (reg!15842 r!7292)))) b!5528684))

(assert (= (and b!5527282 ((_ is Concat!24358) (regTwo!31539 (reg!15842 r!7292)))) b!5528685))

(assert (= (and b!5527282 ((_ is Star!15513) (regTwo!31539 (reg!15842 r!7292)))) b!5528686))

(assert (= (and b!5527282 ((_ is Union!15513) (regTwo!31539 (reg!15842 r!7292)))) b!5528687))

(declare-fun b!5528690 () Bool)

(declare-fun e!3417780 () Bool)

(declare-fun tp!1520975 () Bool)

(assert (=> b!5528690 (= e!3417780 tp!1520975)))

(declare-fun b!5528688 () Bool)

(assert (=> b!5528688 (= e!3417780 tp_is_empty!40279)))

(declare-fun b!5528691 () Bool)

(declare-fun tp!1520976 () Bool)

(declare-fun tp!1520978 () Bool)

(assert (=> b!5528691 (= e!3417780 (and tp!1520976 tp!1520978))))

(assert (=> b!5527264 (= tp!1520631 e!3417780)))

(declare-fun b!5528689 () Bool)

(declare-fun tp!1520977 () Bool)

(declare-fun tp!1520974 () Bool)

(assert (=> b!5528689 (= e!3417780 (and tp!1520977 tp!1520974))))

(assert (= (and b!5527264 ((_ is ElementMatch!15513) (regOne!31538 (regOne!31539 r!7292)))) b!5528688))

(assert (= (and b!5527264 ((_ is Concat!24358) (regOne!31538 (regOne!31539 r!7292)))) b!5528689))

(assert (= (and b!5527264 ((_ is Star!15513) (regOne!31538 (regOne!31539 r!7292)))) b!5528690))

(assert (= (and b!5527264 ((_ is Union!15513) (regOne!31538 (regOne!31539 r!7292)))) b!5528691))

(declare-fun b!5528694 () Bool)

(declare-fun e!3417781 () Bool)

(declare-fun tp!1520980 () Bool)

(assert (=> b!5528694 (= e!3417781 tp!1520980)))

(declare-fun b!5528692 () Bool)

(assert (=> b!5528692 (= e!3417781 tp_is_empty!40279)))

(declare-fun b!5528695 () Bool)

(declare-fun tp!1520981 () Bool)

(declare-fun tp!1520983 () Bool)

(assert (=> b!5528695 (= e!3417781 (and tp!1520981 tp!1520983))))

(assert (=> b!5527264 (= tp!1520628 e!3417781)))

(declare-fun b!5528693 () Bool)

(declare-fun tp!1520982 () Bool)

(declare-fun tp!1520979 () Bool)

(assert (=> b!5528693 (= e!3417781 (and tp!1520982 tp!1520979))))

(assert (= (and b!5527264 ((_ is ElementMatch!15513) (regTwo!31538 (regOne!31539 r!7292)))) b!5528692))

(assert (= (and b!5527264 ((_ is Concat!24358) (regTwo!31538 (regOne!31539 r!7292)))) b!5528693))

(assert (= (and b!5527264 ((_ is Star!15513) (regTwo!31538 (regOne!31539 r!7292)))) b!5528694))

(assert (= (and b!5527264 ((_ is Union!15513) (regTwo!31538 (regOne!31539 r!7292)))) b!5528695))

(declare-fun b!5528696 () Bool)

(declare-fun e!3417782 () Bool)

(declare-fun tp!1520984 () Bool)

(declare-fun tp!1520985 () Bool)

(assert (=> b!5528696 (= e!3417782 (and tp!1520984 tp!1520985))))

(assert (=> b!5527295 (= tp!1520660 e!3417782)))

(assert (= (and b!5527295 ((_ is Cons!62714) (exprs!5397 (h!69163 (t!376094 zl!343))))) b!5528696))

(declare-fun b!5528699 () Bool)

(declare-fun e!3417783 () Bool)

(declare-fun tp!1520987 () Bool)

(assert (=> b!5528699 (= e!3417783 tp!1520987)))

(declare-fun b!5528697 () Bool)

(assert (=> b!5528697 (= e!3417783 tp_is_empty!40279)))

(declare-fun b!5528700 () Bool)

(declare-fun tp!1520988 () Bool)

(declare-fun tp!1520990 () Bool)

(assert (=> b!5528700 (= e!3417783 (and tp!1520988 tp!1520990))))

(assert (=> b!5527280 (= tp!1520651 e!3417783)))

(declare-fun b!5528698 () Bool)

(declare-fun tp!1520989 () Bool)

(declare-fun tp!1520986 () Bool)

(assert (=> b!5528698 (= e!3417783 (and tp!1520989 tp!1520986))))

(assert (= (and b!5527280 ((_ is ElementMatch!15513) (regOne!31538 (reg!15842 r!7292)))) b!5528697))

(assert (= (and b!5527280 ((_ is Concat!24358) (regOne!31538 (reg!15842 r!7292)))) b!5528698))

(assert (= (and b!5527280 ((_ is Star!15513) (regOne!31538 (reg!15842 r!7292)))) b!5528699))

(assert (= (and b!5527280 ((_ is Union!15513) (regOne!31538 (reg!15842 r!7292)))) b!5528700))

(declare-fun b!5528703 () Bool)

(declare-fun e!3417784 () Bool)

(declare-fun tp!1520992 () Bool)

(assert (=> b!5528703 (= e!3417784 tp!1520992)))

(declare-fun b!5528701 () Bool)

(assert (=> b!5528701 (= e!3417784 tp_is_empty!40279)))

(declare-fun b!5528704 () Bool)

(declare-fun tp!1520993 () Bool)

(declare-fun tp!1520995 () Bool)

(assert (=> b!5528704 (= e!3417784 (and tp!1520993 tp!1520995))))

(assert (=> b!5527280 (= tp!1520648 e!3417784)))

(declare-fun b!5528702 () Bool)

(declare-fun tp!1520994 () Bool)

(declare-fun tp!1520991 () Bool)

(assert (=> b!5528702 (= e!3417784 (and tp!1520994 tp!1520991))))

(assert (= (and b!5527280 ((_ is ElementMatch!15513) (regTwo!31538 (reg!15842 r!7292)))) b!5528701))

(assert (= (and b!5527280 ((_ is Concat!24358) (regTwo!31538 (reg!15842 r!7292)))) b!5528702))

(assert (= (and b!5527280 ((_ is Star!15513) (regTwo!31538 (reg!15842 r!7292)))) b!5528703))

(assert (= (and b!5527280 ((_ is Union!15513) (regTwo!31538 (reg!15842 r!7292)))) b!5528704))

(declare-fun b_lambda!209791 () Bool)

(assert (= b_lambda!209717 (or b!5526942 b_lambda!209791)))

(declare-fun bs!1277388 () Bool)

(declare-fun d!1751998 () Bool)

(assert (= bs!1277388 (and d!1751998 b!5526942)))

(assert (=> bs!1277388 (= (dynLambda!24517 lambda!296452 (h!69162 (t!376093 (exprs!5397 lt!2247538)))) (>= lt!2247645 (regexDepth!213 (h!69162 (t!376093 (exprs!5397 lt!2247538))))))))

(declare-fun m!6530854 () Bool)

(assert (=> bs!1277388 m!6530854))

(assert (=> b!5527987 d!1751998))

(declare-fun b_lambda!209793 () Bool)

(assert (= b_lambda!209783 (or b!5526958 b_lambda!209793)))

(declare-fun bs!1277389 () Bool)

(declare-fun d!1752000 () Bool)

(assert (= bs!1277389 (and d!1752000 b!5526958)))

(assert (=> bs!1277389 (= (dynLambda!24518 lambda!296464 (h!69163 (Cons!62715 lt!2247531 Nil!62715))) (>= lt!2247660 (contextDepth!109 (h!69163 (Cons!62715 lt!2247531 Nil!62715)))))))

(assert (=> bs!1277389 m!6529162))

(assert (=> b!5528446 d!1752000))

(declare-fun b_lambda!209795 () Bool)

(assert (= b_lambda!209725 (or b!5526956 b_lambda!209795)))

(declare-fun bs!1277390 () Bool)

(declare-fun d!1752002 () Bool)

(assert (= bs!1277390 (and d!1752002 b!5526956)))

(assert (=> bs!1277390 (= (dynLambda!24518 lambda!296463 (h!69163 (t!376094 (Cons!62715 lt!2247531 Nil!62715)))) (>= lt!2247663 (contextDepth!109 (h!69163 (t!376094 (Cons!62715 lt!2247531 Nil!62715))))))))

(assert (=> bs!1277390 m!6530302))

(assert (=> b!5528106 d!1752002))

(declare-fun b_lambda!209797 () Bool)

(assert (= b_lambda!209785 (or b!5527241 b_lambda!209797)))

(declare-fun bs!1277391 () Bool)

(declare-fun d!1752004 () Bool)

(assert (= bs!1277391 (and d!1752004 b!5527241)))

(assert (=> bs!1277391 (= (dynLambda!24517 lambda!296495 (h!69162 (exprs!5397 lt!2247530))) (>= lt!2247711 (regexDepth!213 (h!69162 (exprs!5397 lt!2247530)))))))

(assert (=> bs!1277391 m!6529402))

(assert (=> b!5528505 d!1752004))

(declare-fun b_lambda!209799 () Bool)

(assert (= b_lambda!209789 (or b!5526445 b_lambda!209799)))

(assert (=> d!1751974 d!1751346))

(declare-fun b_lambda!209801 () Bool)

(assert (= b_lambda!209771 (or d!1751292 b_lambda!209801)))

(declare-fun bs!1277392 () Bool)

(declare-fun d!1752006 () Bool)

(assert (= bs!1277392 (and d!1752006 d!1751292)))

(assert (=> bs!1277392 (= (dynLambda!24517 lambda!296483 (h!69162 lt!2247686)) (validRegex!7249 (h!69162 lt!2247686)))))

(declare-fun m!6530856 () Bool)

(assert (=> bs!1277392 m!6530856))

(assert (=> b!5528290 d!1752006))

(declare-fun b_lambda!209803 () Bool)

(assert (= b_lambda!209773 (or d!1751332 b_lambda!209803)))

(declare-fun bs!1277393 () Bool)

(declare-fun d!1752008 () Bool)

(assert (= bs!1277393 (and d!1752008 d!1751332)))

(assert (=> bs!1277393 (= (dynLambda!24517 lambda!296498 (h!69162 (exprs!5397 (h!69163 zl!343)))) (validRegex!7249 (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(declare-fun m!6530858 () Bool)

(assert (=> bs!1277393 m!6530858))

(assert (=> b!5528298 d!1752008))

(declare-fun b_lambda!209805 () Bool)

(assert (= b_lambda!209769 (or b!5527239 b_lambda!209805)))

(declare-fun bs!1277394 () Bool)

(declare-fun d!1752010 () Bool)

(assert (= bs!1277394 (and d!1752010 b!5527239)))

(assert (=> bs!1277394 (= (dynLambda!24517 lambda!296494 (h!69162 (t!376093 (exprs!5397 lt!2247530)))) (>= lt!2247712 (regexDepth!213 (h!69162 (t!376093 (exprs!5397 lt!2247530))))))))

(declare-fun m!6530860 () Bool)

(assert (=> bs!1277394 m!6530860))

(assert (=> b!5528266 d!1752010))

(declare-fun b_lambda!209807 () Bool)

(assert (= b_lambda!209713 (or b!5526963 b_lambda!209807)))

(declare-fun bs!1277395 () Bool)

(declare-fun d!1752012 () Bool)

(assert (= bs!1277395 (and d!1752012 b!5526963)))

(assert (=> bs!1277395 (= (dynLambda!24518 lambda!296467 (h!69163 (Cons!62715 lt!2247538 Nil!62715))) (>= lt!2247664 (contextDepth!109 (h!69163 (Cons!62715 lt!2247538 Nil!62715)))))))

(assert (=> bs!1277395 m!6529174))

(assert (=> b!5527912 d!1752012))

(declare-fun b_lambda!209809 () Bool)

(assert (= b_lambda!209781 (or b!5526949 b_lambda!209809)))

(declare-fun bs!1277396 () Bool)

(declare-fun d!1752014 () Bool)

(assert (= bs!1277396 (and d!1752014 b!5526949)))

(assert (=> bs!1277396 (= (dynLambda!24517 lambda!296455 (h!69162 (exprs!5397 lt!2247531))) (>= lt!2247648 (regexDepth!213 (h!69162 (exprs!5397 lt!2247531)))))))

(assert (=> bs!1277396 m!6529144))

(assert (=> b!5528444 d!1752014))

(declare-fun b_lambda!209811 () Bool)

(assert (= b_lambda!209721 (or d!1751288 b_lambda!209811)))

(declare-fun bs!1277397 () Bool)

(declare-fun d!1752016 () Bool)

(assert (= bs!1277397 (and d!1752016 d!1751288)))

(assert (=> bs!1277397 (= (dynLambda!24517 lambda!296477 (h!69162 (exprs!5397 (h!69163 zl!343)))) (validRegex!7249 (h!69162 (exprs!5397 (h!69163 zl!343)))))))

(assert (=> bs!1277397 m!6530858))

(assert (=> b!5528092 d!1752016))

(declare-fun b_lambda!209813 () Bool)

(assert (= b_lambda!209777 (or b!5526445 b_lambda!209813)))

(assert (=> d!1751916 d!1751342))

(declare-fun b_lambda!209815 () Bool)

(assert (= b_lambda!209779 (or d!1751334 b_lambda!209815)))

(declare-fun bs!1277398 () Bool)

(declare-fun d!1752018 () Bool)

(assert (= bs!1277398 (and d!1752018 d!1751334)))

(assert (=> bs!1277398 (= (dynLambda!24517 lambda!296499 (h!69162 (exprs!5397 setElem!36755))) (validRegex!7249 (h!69162 (exprs!5397 setElem!36755))))))

(declare-fun m!6530862 () Bool)

(assert (=> bs!1277398 m!6530862))

(assert (=> b!5528426 d!1752018))

(declare-fun b_lambda!209817 () Bool)

(assert (= b_lambda!209731 (or d!1751290 b_lambda!209817)))

(declare-fun bs!1277399 () Bool)

(declare-fun d!1752020 () Bool)

(assert (= bs!1277399 (and d!1752020 d!1751290)))

(assert (=> bs!1277399 (= (dynLambda!24517 lambda!296480 (h!69162 (unfocusZipperList!941 zl!343))) (validRegex!7249 (h!69162 (unfocusZipperList!941 zl!343))))))

(declare-fun m!6530864 () Bool)

(assert (=> bs!1277399 m!6530864))

(assert (=> b!5528188 d!1752020))

(declare-fun b_lambda!209819 () Bool)

(assert (= b_lambda!209701 (or b!5526947 b_lambda!209819)))

(declare-fun bs!1277400 () Bool)

(declare-fun d!1752022 () Bool)

(assert (= bs!1277400 (and d!1752022 b!5526947)))

(assert (=> bs!1277400 (= (dynLambda!24517 lambda!296454 (h!69162 (t!376093 (exprs!5397 lt!2247531)))) (>= lt!2247649 (regexDepth!213 (h!69162 (t!376093 (exprs!5397 lt!2247531))))))))

(declare-fun m!6530866 () Bool)

(assert (=> bs!1277400 m!6530866))

(assert (=> b!5527786 d!1752022))

(declare-fun b_lambda!209821 () Bool)

(assert (= b_lambda!209729 (or b!5526445 b_lambda!209821)))

(assert (=> d!1751764 d!1751344))

(declare-fun b_lambda!209823 () Bool)

(assert (= b_lambda!209787 (or b!5526961 b_lambda!209823)))

(declare-fun bs!1277401 () Bool)

(declare-fun d!1752024 () Bool)

(assert (= bs!1277401 (and d!1752024 b!5526961)))

(assert (=> bs!1277401 (= (dynLambda!24518 lambda!296466 (h!69163 (t!376094 (Cons!62715 lt!2247538 Nil!62715)))) (>= lt!2247667 (contextDepth!109 (h!69163 (t!376094 (Cons!62715 lt!2247538 Nil!62715))))))))

(assert (=> bs!1277401 m!6530778))

(assert (=> b!5528518 d!1752024))

(declare-fun b_lambda!209825 () Bool)

(assert (= b_lambda!209775 (or b!5526944 b_lambda!209825)))

(declare-fun bs!1277402 () Bool)

(declare-fun d!1752026 () Bool)

(assert (= bs!1277402 (and d!1752026 b!5526944)))

(assert (=> bs!1277402 (= (dynLambda!24517 lambda!296453 (h!69162 (exprs!5397 lt!2247538))) (>= lt!2247644 (regexDepth!213 (h!69162 (exprs!5397 lt!2247538)))))))

(assert (=> bs!1277402 m!6529132))

(assert (=> b!5528397 d!1752026))

(check-sat (not b!5527986) (not d!1751910) (not b!5528520) (not b!5528662) (not b!5528327) (not b!5528461) (not b!5528584) (not bm!410339) (not d!1751944) (not b!5528702) (not bm!410205) (not b!5528532) (not b!5528585) (not b!5528663) (not bm!410306) (not b!5528506) (not d!1751772) (not b!5528674) (not b!5528608) (not b!5528369) (not bm!410298) (not b!5528695) (not b!5528621) (not b!5528690) (not bm!410326) (not bs!1277388) (not d!1751916) (not b!5528322) (not b!5528698) (not d!1751716) (not b!5527984) (not b!5528440) (not b!5528367) (not bs!1277395) (not d!1751904) (not b!5528388) (not b!5528383) (not bm!410275) (not b_lambda!209791) (not b!5528270) (not d!1751986) (not b!5528624) (not b!5528411) (not b!5528704) (not bm!410261) (not d!1751600) (not b!5528108) (not bm!410312) (not bm!410331) (not b!5527998) (not b!5528405) (not b!5528618) (not b_lambda!209817) (not b!5528167) (not bm!410210) (not b!5528291) (not b!5528603) (not d!1751946) (not b!5528591) (not d!1751848) (not b!5528078) (not b!5528548) (not b!5528612) (not b!5528673) (not bm!410319) (not bm!410222) (not bm!410292) (not d!1751984) (not d!1751718) (not bm!410262) (not b!5528433) (not b!5528470) (not bm!410221) (not b!5528661) (not b_lambda!209809) (not setNonEmpty!36772) (not d!1751776) (not b!5527923) (not b!5527814) (not bs!1277393) (not b!5528428) (not b!5528675) (not b!5528098) (not b!5528199) (not b_lambda!209823) (not b!5528442) (not bs!1277401) (not d!1751822) (not bm!410368) (not d!1751630) (not bm!410237) (not d!1751840) (not b!5528097) (not b!5528460) (not bm!410334) (not b!5528625) (not b!5528611) (not b!5528703) (not b!5527787) (not bm!410369) (not b!5528576) (not bm!410332) (not b!5527873) (not d!1751894) (not b_lambda!209677) (not bm!410359) (not b!5528605) (not bm!410295) (not b!5528293) (not d!1751896) (not bs!1277400) (not b!5528686) (not d!1751598) (not b!5528637) (not d!1751770) (not b!5528400) (not b!5528420) (not setNonEmpty!36773) (not b!5528133) (not b!5528650) (not b!5528015) (not b!5528568) (not b!5528419) (not b_lambda!209807) (not setNonEmpty!36769) (not d!1751874) (not b!5528345) (not b!5528633) (not b!5528410) (not bs!1277391) (not b_lambda!209793) (not d!1751674) (not b!5528110) (not b!5528632) (not d!1751850) (not b!5528604) (not b_lambda!209679) (not b!5528370) (not bm!410208) (not bm!410284) (not b!5528617) (not d!1751856) (not bs!1277390) (not b!5528678) (not b!5528634) (not b!5528437) (not b!5528643) (not b_lambda!209811) (not bs!1277402) (not b!5528525) (not d!1751950) (not b!5528685) (not d!1751994) (not b!5528653) (not b!5528458) (not bm!410360) (not b!5528297) (not bm!410311) (not bm!410305) (not b!5528628) (not d!1751978) (not setNonEmpty!36770) (not b!5528459) (not d!1751846) (not d!1751996) (not bm!410276) (not b_lambda!209797) (not bm!410238) (not b!5528689) (not bm!410302) (not bm!410280) (not b!5528261) (not bm!410231) (not bm!410246) (not b!5528687) (not d!1751860) (not b!5528026) (not b!5528292) (not d!1751968) (not bs!1277392) (not bm!410206) (not b!5528339) (not b!5528699) (not b!5528107) (not bm!410274) (not b!5528583) (not b!5528563) (not b!5528622) (not bm!410354) (not b!5528466) (not b!5528299) (not b!5528694) (not bm!410321) (not bm!410232) (not b!5528629) (not b!5528517) (not bm!410281) (not bm!410340) (not b!5528691) (not b!5528645) (not b_lambda!209803) (not b!5528616) (not d!1751638) (not b!5528640) (not b!5528368) (not b!5528655) (not b!5528589) (not b!5528395) (not b!5528382) (not bm!410239) (not d!1751914) (not bm!410289) (not d!1751942) (not d!1751764) (not b!5528268) (not d!1751656) (not bm!410361) (not b!5528679) (not bs!1277397) (not b!5528425) (not bm!410259) (not b!5528649) (not b!5528578) (not b!5528523) (not bs!1277398) (not b!5527893) (not bm!410299) (not b!5527917) (not b!5528609) (not bm!410313) (not bm!410282) (not b!5528651) (not d!1751684) (not bm!410304) (not d!1751924) (not b!5527913) (not b!5528337) (not b!5528445) (not b!5528404) (not bs!1277399) (not b!5528385) (not b!5528408) (not b!5528416) (not d!1751712) (not b!5528189) (not bm!410370) (not b!5528654) (not b!5527994) (not d!1751566) (not b!5528681) (not bm!410211) (not d!1751922) (not b!5528392) (not b!5528580) (not b!5528421) (not b!5528541) (not b!5528310) (not d!1751864) (not b!5528267) (not b!5528401) (not d!1751728) (not b!5527991) (not b!5528586) (not d!1751970) (not b!5528592) (not b!5528696) (not b!5528371) (not b!5528613) (not b_lambda!209805) (not b!5528087) (not d!1751906) (not b!5528422) (not d!1751682) (not b!5528683) (not b!5528638) (not b!5528530) (not bs!1277396) (not bm!410315) (not d!1751884) (not d!1751686) (not b_lambda!209825) (not b!5528590) (not bm!410320) (not b!5528539) (not d!1751888) (not b!5528415) (not d!1751938) (not bm!410327) (not d!1751866) (not b!5528323) (not b!5528430) (not b!5528198) (not b!5528596) (not bm!410335) (not b_lambda!209813) (not bm!410342) (not b!5527751) (not b!5527907) (not d!1751758) (not b!5528418) (not b!5528636) tp_is_empty!40279 (not d!1751782) (not b!5528594) (not b!5528447) (not b!5528413) (not b!5527749) (not b!5528647) (not b!5528666) (not b!5528658) (not d!1751940) (not b_lambda!209801) (not b!5528569) (not b!5528630) (not b!5528443) (not b_lambda!209799) (not b!5528341) (not b!5528626) (not b!5528646) (not bm!410364) (not bm!410270) (not b!5528677) (not d!1751972) (not bm!410300) (not b!5528356) (not d!1751912) (not d!1751632) (not b!5528340) (not b_lambda!209681) (not bm!410341) (not b!5528439) (not bm!410248) (not d!1751830) (not b!5528519) (not b!5528398) (not b!5528288) (not d!1751962) (not b!5528000) (not b!5528324) (not bm!410257) (not b!5528620) (not b!5528472) (not b!5528577) (not b!5528693) (not b!5528338) (not d!1751862) (not b!5528473) (not d!1751974) (not b!5528595) (not bm!410362) (not b!5528265) (not b!5528670) (not bm!410286) (not bs!1277394) (not b!5527918) (not d!1751640) (not d!1751890) (not b!5528671) (not b!5528614) (not b!5528669) (not b!5527889) (not bs!1277389) (not bm!410297) (not bm!410358) (not b!5527989) (not b!5528700) (not b_lambda!209815) (not d!1751926) (not b!5528001) (not b!5528682) (not d!1751900) (not bm!410287) (not d!1751742) (not d!1751908) (not b!5528100) (not b!5528407) (not b!5528394) (not b!5528600) (not b!5528657) (not b!5528427) (not d!1751886) (not b!5528542) (not b!5527872) (not bm!410333) (not b!5528659) (not b!5528535) (not bm!410256) (not b_lambda!209819) (not b!5528069) (not b_lambda!209821) (not b!5528607) (not b!5527886) (not b_lambda!209795) (not bm!410310) (not bm!410290) (not b!5528588) (not b!5528599) (not b!5527988) (not bm!410325) (not d!1751802) (not d!1751666) (not b!5528463) (not bm!410352) (not b!5528642) (not b!5528579) (not b!5528598) (not b!5528601) (not b!5527813) (not bm!410314) (not b!5528093) (not b!5528667) (not bm!410236) (not b!5528665) (not b!5528502) (not b!5528641) (not b!5528309) (not b!5528522))
(check-sat)
