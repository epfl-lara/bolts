; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645426 () Bool)

(assert start!645426)

(declare-fun b!6600499 () Bool)

(assert (=> b!6600499 true))

(assert (=> b!6600499 true))

(declare-fun lambda!367919 () Int)

(declare-fun lambda!367918 () Int)

(assert (=> b!6600499 (not (= lambda!367919 lambda!367918))))

(assert (=> b!6600499 true))

(assert (=> b!6600499 true))

(declare-fun b!6600521 () Bool)

(assert (=> b!6600521 true))

(declare-fun bs!1692281 () Bool)

(declare-fun b!6600495 () Bool)

(assert (= bs!1692281 (and b!6600495 b!6600499)))

(declare-datatypes ((C!33204 0))(
  ( (C!33205 (val!26304 Int)) )
))
(declare-datatypes ((Regex!16467 0))(
  ( (ElementMatch!16467 (c!1215814 C!33204)) (Concat!25312 (regOne!33446 Regex!16467) (regTwo!33446 Regex!16467)) (EmptyExpr!16467) (Star!16467 (reg!16796 Regex!16467)) (EmptyLang!16467) (Union!16467 (regOne!33447 Regex!16467) (regTwo!33447 Regex!16467)) )
))
(declare-fun r!7292 () Regex!16467)

(declare-datatypes ((List!65700 0))(
  ( (Nil!65576) (Cons!65576 (h!72024 C!33204) (t!379352 List!65700)) )
))
(declare-fun s!2326 () List!65700)

(declare-fun lambda!367921 () Int)

(declare-fun lt!2413413 () Regex!16467)

(assert (=> bs!1692281 (= (and (= Nil!65576 s!2326) (= (reg!16796 (regOne!33446 r!7292)) (regOne!33446 r!7292)) (= lt!2413413 (regTwo!33446 r!7292))) (= lambda!367921 lambda!367918))))

(assert (=> bs!1692281 (not (= lambda!367921 lambda!367919))))

(assert (=> b!6600495 true))

(assert (=> b!6600495 true))

(declare-fun b!6600491 () Bool)

(declare-fun e!3993902 () Bool)

(declare-fun e!3993883 () Bool)

(assert (=> b!6600491 (= e!3993902 e!3993883)))

(declare-fun res!2706458 () Bool)

(assert (=> b!6600491 (=> res!2706458 e!3993883)))

(declare-fun lt!2413439 () Regex!16467)

(declare-fun regexDepth!364 (Regex!16467) Int)

(assert (=> b!6600491 (= res!2706458 (< (regexDepth!364 r!7292) (regexDepth!364 lt!2413439)))))

(declare-datatypes ((List!65701 0))(
  ( (Nil!65577) (Cons!65577 (h!72025 Regex!16467) (t!379353 List!65701)) )
))
(declare-datatypes ((Context!11702 0))(
  ( (Context!11703 (exprs!6351 List!65701)) )
))
(declare-datatypes ((List!65702 0))(
  ( (Nil!65578) (Cons!65578 (h!72026 Context!11702) (t!379354 List!65702)) )
))
(declare-fun zl!343 () List!65702)

(declare-fun generalisedConcat!2064 (List!65701) Regex!16467)

(assert (=> b!6600491 (= lt!2413439 (generalisedConcat!2064 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun res!2706479 () Bool)

(declare-fun e!3993891 () Bool)

(assert (=> start!645426 (=> (not res!2706479) (not e!3993891))))

(declare-fun validRegex!8203 (Regex!16467) Bool)

(assert (=> start!645426 (= res!2706479 (validRegex!8203 r!7292))))

(assert (=> start!645426 e!3993891))

(declare-fun e!3993895 () Bool)

(assert (=> start!645426 e!3993895))

(declare-fun condSetEmpty!45072 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11702))

(assert (=> start!645426 (= condSetEmpty!45072 (= z!1189 ((as const (Array Context!11702 Bool)) false)))))

(declare-fun setRes!45072 () Bool)

(assert (=> start!645426 setRes!45072))

(declare-fun e!3993885 () Bool)

(assert (=> start!645426 e!3993885))

(declare-fun e!3993896 () Bool)

(assert (=> start!645426 e!3993896))

(declare-fun b!6600492 () Bool)

(declare-fun tp!1819783 () Bool)

(assert (=> b!6600492 (= e!3993895 tp!1819783)))

(declare-fun b!6600493 () Bool)

(declare-fun e!3993901 () Bool)

(declare-fun e!3993879 () Bool)

(assert (=> b!6600493 (= e!3993901 (not e!3993879))))

(declare-fun res!2706483 () Bool)

(assert (=> b!6600493 (=> res!2706483 e!3993879)))

(get-info :version)

(assert (=> b!6600493 (= res!2706483 (not ((_ is Cons!65578) zl!343)))))

(declare-fun lt!2413440 () Bool)

(declare-fun matchRSpec!3568 (Regex!16467 List!65700) Bool)

(assert (=> b!6600493 (= lt!2413440 (matchRSpec!3568 r!7292 s!2326))))

(declare-fun matchR!8650 (Regex!16467 List!65700) Bool)

(assert (=> b!6600493 (= lt!2413440 (matchR!8650 r!7292 s!2326))))

(declare-datatypes ((Unit!159203 0))(
  ( (Unit!159204) )
))
(declare-fun lt!2413447 () Unit!159203)

(declare-fun mainMatchTheorem!3568 (Regex!16467 List!65700) Unit!159203)

(assert (=> b!6600493 (= lt!2413447 (mainMatchTheorem!3568 r!7292 s!2326))))

(declare-fun b!6600494 () Bool)

(declare-fun e!3993880 () Bool)

(declare-fun lt!2413417 () (InoxSet Context!11702))

(declare-fun matchZipper!2479 ((InoxSet Context!11702) List!65700) Bool)

(assert (=> b!6600494 (= e!3993880 (not (matchZipper!2479 lt!2413417 (t!379352 s!2326))))))

(declare-fun setIsEmpty!45072 () Bool)

(assert (=> setIsEmpty!45072 setRes!45072))

(declare-fun e!3993890 () Bool)

(declare-fun e!3993898 () Bool)

(assert (=> b!6600495 (= e!3993890 e!3993898)))

(declare-fun res!2706475 () Bool)

(assert (=> b!6600495 (=> res!2706475 e!3993898)))

(assert (=> b!6600495 (= res!2706475 (not (validRegex!8203 (reg!16796 (regOne!33446 r!7292)))))))

(declare-datatypes ((tuple2!66892 0))(
  ( (tuple2!66893 (_1!36749 List!65700) (_2!36749 List!65700)) )
))
(declare-datatypes ((Option!16358 0))(
  ( (None!16357) (Some!16357 (v!52546 tuple2!66892)) )
))
(declare-fun isDefined!13061 (Option!16358) Bool)

(declare-fun findConcatSeparation!2772 (Regex!16467 Regex!16467 List!65700 List!65700 List!65700) Option!16358)

(declare-fun Exists!3537 (Int) Bool)

(assert (=> b!6600495 (= (isDefined!13061 (findConcatSeparation!2772 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576 Nil!65576 Nil!65576)) (Exists!3537 lambda!367921))))

(declare-fun lt!2413432 () Unit!159203)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2536 (Regex!16467 Regex!16467 List!65700) Unit!159203)

(assert (=> b!6600495 (= lt!2413432 (lemmaFindConcatSeparationEquivalentToExists!2536 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576))))

(assert (=> b!6600495 (= (matchR!8650 lt!2413413 Nil!65576) (matchRSpec!3568 lt!2413413 Nil!65576))))

(declare-fun lt!2413419 () Unit!159203)

(assert (=> b!6600495 (= lt!2413419 (mainMatchTheorem!3568 lt!2413413 Nil!65576))))

(declare-fun b!6600496 () Bool)

(declare-fun res!2706455 () Bool)

(declare-fun e!3993881 () Bool)

(assert (=> b!6600496 (=> res!2706455 e!3993881)))

(declare-fun lt!2413452 () Context!11702)

(declare-fun lt!2413446 () Regex!16467)

(declare-fun unfocusZipper!2209 (List!65702) Regex!16467)

(assert (=> b!6600496 (= res!2706455 (not (= (unfocusZipper!2209 (Cons!65578 lt!2413452 Nil!65578)) lt!2413446)))))

(declare-fun b!6600497 () Bool)

(assert (=> b!6600497 (= e!3993898 (validRegex!8203 lt!2413413))))

(declare-fun b!6600498 () Bool)

(declare-fun e!3993894 () Unit!159203)

(declare-fun Unit!159205 () Unit!159203)

(assert (=> b!6600498 (= e!3993894 Unit!159205)))

(declare-fun lt!2413422 () Unit!159203)

(declare-fun lt!2413448 () (InoxSet Context!11702))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1298 ((InoxSet Context!11702) (InoxSet Context!11702) List!65700) Unit!159203)

(assert (=> b!6600498 (= lt!2413422 (lemmaZipperConcatMatchesSameAsBothZippers!1298 lt!2413448 lt!2413417 (t!379352 s!2326)))))

(declare-fun res!2706485 () Bool)

(assert (=> b!6600498 (= res!2706485 (matchZipper!2479 lt!2413448 (t!379352 s!2326)))))

(declare-fun e!3993877 () Bool)

(assert (=> b!6600498 (=> res!2706485 e!3993877)))

(assert (=> b!6600498 (= (matchZipper!2479 ((_ map or) lt!2413448 lt!2413417) (t!379352 s!2326)) e!3993877)))

(declare-fun e!3993884 () Bool)

(assert (=> b!6600499 (= e!3993879 e!3993884)))

(declare-fun res!2706456 () Bool)

(assert (=> b!6600499 (=> res!2706456 e!3993884)))

(declare-fun lt!2413416 () Bool)

(assert (=> b!6600499 (= res!2706456 (or (not (= lt!2413440 lt!2413416)) ((_ is Nil!65576) s!2326)))))

(assert (=> b!6600499 (= (Exists!3537 lambda!367918) (Exists!3537 lambda!367919))))

(declare-fun lt!2413418 () Unit!159203)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2074 (Regex!16467 Regex!16467 List!65700) Unit!159203)

(assert (=> b!6600499 (= lt!2413418 (lemmaExistCutMatchRandMatchRSpecEquivalent!2074 (regOne!33446 r!7292) (regTwo!33446 r!7292) s!2326))))

(assert (=> b!6600499 (= lt!2413416 (Exists!3537 lambda!367918))))

(assert (=> b!6600499 (= lt!2413416 (isDefined!13061 (findConcatSeparation!2772 (regOne!33446 r!7292) (regTwo!33446 r!7292) Nil!65576 s!2326 s!2326)))))

(declare-fun lt!2413441 () Unit!159203)

(assert (=> b!6600499 (= lt!2413441 (lemmaFindConcatSeparationEquivalentToExists!2536 (regOne!33446 r!7292) (regTwo!33446 r!7292) s!2326))))

(declare-fun tp!1819781 () Bool)

(declare-fun setNonEmpty!45072 () Bool)

(declare-fun setElem!45072 () Context!11702)

(declare-fun e!3993900 () Bool)

(declare-fun inv!84414 (Context!11702) Bool)

(assert (=> setNonEmpty!45072 (= setRes!45072 (and tp!1819781 (inv!84414 setElem!45072) e!3993900))))

(declare-fun setRest!45072 () (InoxSet Context!11702))

(assert (=> setNonEmpty!45072 (= z!1189 ((_ map or) (store ((as const (Array Context!11702 Bool)) false) setElem!45072 true) setRest!45072))))

(declare-fun b!6600500 () Bool)

(assert (=> b!6600500 (= e!3993891 e!3993901)))

(declare-fun res!2706457 () Bool)

(assert (=> b!6600500 (=> (not res!2706457) (not e!3993901))))

(declare-fun lt!2413451 () Regex!16467)

(assert (=> b!6600500 (= res!2706457 (= r!7292 lt!2413451))))

(assert (=> b!6600500 (= lt!2413451 (unfocusZipper!2209 zl!343))))

(declare-fun b!6600501 () Bool)

(declare-fun e!3993882 () Bool)

(declare-fun e!3993887 () Bool)

(assert (=> b!6600501 (= e!3993882 e!3993887)))

(declare-fun res!2706478 () Bool)

(assert (=> b!6600501 (=> res!2706478 e!3993887)))

(declare-fun lt!2413434 () Context!11702)

(declare-fun lt!2413436 () Regex!16467)

(assert (=> b!6600501 (= res!2706478 (not (= (unfocusZipper!2209 (Cons!65578 lt!2413434 Nil!65578)) lt!2413436)))))

(assert (=> b!6600501 (= lt!2413436 (Concat!25312 (reg!16796 (regOne!33446 r!7292)) lt!2413446))))

(declare-fun b!6600502 () Bool)

(assert (=> b!6600502 (= e!3993887 e!3993881)))

(declare-fun res!2706476 () Bool)

(assert (=> b!6600502 (=> res!2706476 e!3993881)))

(declare-fun lt!2413433 () Context!11702)

(assert (=> b!6600502 (= res!2706476 (not (= (unfocusZipper!2209 (Cons!65578 lt!2413433 Nil!65578)) (reg!16796 (regOne!33446 r!7292)))))))

(declare-fun lambda!367920 () Int)

(declare-fun lt!2413420 () (InoxSet Context!11702))

(declare-fun flatMap!1972 ((InoxSet Context!11702) Int) (InoxSet Context!11702))

(declare-fun derivationStepZipperUp!1641 (Context!11702 C!33204) (InoxSet Context!11702))

(assert (=> b!6600502 (= (flatMap!1972 lt!2413420 lambda!367920) (derivationStepZipperUp!1641 lt!2413452 (h!72024 s!2326)))))

(declare-fun lt!2413431 () Unit!159203)

(declare-fun lemmaFlatMapOnSingletonSet!1498 ((InoxSet Context!11702) Context!11702 Int) Unit!159203)

(assert (=> b!6600502 (= lt!2413431 (lemmaFlatMapOnSingletonSet!1498 lt!2413420 lt!2413452 lambda!367920))))

(declare-fun lt!2413415 () (InoxSet Context!11702))

(assert (=> b!6600502 (= (flatMap!1972 lt!2413415 lambda!367920) (derivationStepZipperUp!1641 lt!2413433 (h!72024 s!2326)))))

(declare-fun lt!2413425 () Unit!159203)

(assert (=> b!6600502 (= lt!2413425 (lemmaFlatMapOnSingletonSet!1498 lt!2413415 lt!2413433 lambda!367920))))

(declare-fun lt!2413442 () (InoxSet Context!11702))

(assert (=> b!6600502 (= lt!2413442 (derivationStepZipperUp!1641 lt!2413452 (h!72024 s!2326)))))

(declare-fun lt!2413435 () (InoxSet Context!11702))

(assert (=> b!6600502 (= lt!2413435 (derivationStepZipperUp!1641 lt!2413433 (h!72024 s!2326)))))

(assert (=> b!6600502 (= lt!2413420 (store ((as const (Array Context!11702 Bool)) false) lt!2413452 true))))

(assert (=> b!6600502 (= lt!2413415 (store ((as const (Array Context!11702 Bool)) false) lt!2413433 true))))

(assert (=> b!6600502 (= lt!2413433 (Context!11703 (Cons!65577 (reg!16796 (regOne!33446 r!7292)) Nil!65577)))))

(declare-fun b!6600503 () Bool)

(declare-fun res!2706451 () Bool)

(declare-fun e!3993892 () Bool)

(assert (=> b!6600503 (=> res!2706451 e!3993892)))

(assert (=> b!6600503 (= res!2706451 (not (= lt!2413451 r!7292)))))

(declare-fun b!6600504 () Bool)

(declare-fun res!2706468 () Bool)

(assert (=> b!6600504 (=> res!2706468 e!3993879)))

(declare-fun isEmpty!37845 (List!65702) Bool)

(assert (=> b!6600504 (= res!2706468 (not (isEmpty!37845 (t!379354 zl!343))))))

(declare-fun b!6600505 () Bool)

(declare-fun res!2706471 () Bool)

(declare-fun e!3993878 () Bool)

(assert (=> b!6600505 (=> res!2706471 e!3993878)))

(assert (=> b!6600505 (= res!2706471 (or ((_ is Concat!25312) (regOne!33446 r!7292)) (not ((_ is Star!16467) (regOne!33446 r!7292)))))))

(declare-fun b!6600506 () Bool)

(declare-fun tp!1819776 () Bool)

(assert (=> b!6600506 (= e!3993900 tp!1819776)))

(declare-fun b!6600507 () Bool)

(declare-fun e!3993897 () Bool)

(assert (=> b!6600507 (= e!3993897 e!3993902)))

(declare-fun res!2706463 () Bool)

(assert (=> b!6600507 (=> res!2706463 e!3993902)))

(declare-fun lt!2413429 () (InoxSet Context!11702))

(declare-fun derivationStepZipper!2433 ((InoxSet Context!11702) C!33204) (InoxSet Context!11702))

(assert (=> b!6600507 (= res!2706463 (not (= lt!2413417 (derivationStepZipper!2433 lt!2413429 (h!72024 s!2326)))))))

(declare-fun lt!2413444 () Context!11702)

(assert (=> b!6600507 (= (flatMap!1972 lt!2413429 lambda!367920) (derivationStepZipperUp!1641 lt!2413444 (h!72024 s!2326)))))

(declare-fun lt!2413423 () Unit!159203)

(assert (=> b!6600507 (= lt!2413423 (lemmaFlatMapOnSingletonSet!1498 lt!2413429 lt!2413444 lambda!367920))))

(assert (=> b!6600507 (= lt!2413429 (store ((as const (Array Context!11702 Bool)) false) lt!2413444 true))))

(declare-fun b!6600508 () Bool)

(declare-fun e!3993899 () Bool)

(declare-fun nullable!6460 (Regex!16467) Bool)

(assert (=> b!6600508 (= e!3993899 (nullable!6460 (regOne!33446 (regOne!33446 r!7292))))))

(declare-fun b!6600509 () Bool)

(assert (=> b!6600509 (= e!3993877 (matchZipper!2479 lt!2413417 (t!379352 s!2326)))))

(declare-fun b!6600510 () Bool)

(declare-fun e!3993889 () Bool)

(assert (=> b!6600510 (= e!3993881 e!3993889)))

(declare-fun res!2706454 () Bool)

(assert (=> b!6600510 (=> res!2706454 e!3993889)))

(assert (=> b!6600510 (= res!2706454 lt!2413440)))

(assert (=> b!6600510 (= (matchR!8650 lt!2413436 s!2326) (matchRSpec!3568 lt!2413436 s!2326))))

(declare-fun lt!2413412 () Unit!159203)

(assert (=> b!6600510 (= lt!2413412 (mainMatchTheorem!3568 lt!2413436 s!2326))))

(declare-fun b!6600511 () Bool)

(declare-fun res!2706473 () Bool)

(assert (=> b!6600511 (=> res!2706473 e!3993897)))

(declare-fun lt!2413450 () Bool)

(assert (=> b!6600511 (= res!2706473 lt!2413450)))

(declare-fun b!6600512 () Bool)

(assert (=> b!6600512 (= e!3993892 e!3993882)))

(declare-fun res!2706472 () Bool)

(assert (=> b!6600512 (=> res!2706472 e!3993882)))

(assert (=> b!6600512 (= res!2706472 (not (= r!7292 lt!2413446)))))

(assert (=> b!6600512 (= lt!2413446 (Concat!25312 lt!2413413 (regTwo!33446 r!7292)))))

(declare-fun b!6600513 () Bool)

(declare-fun e!3993888 () Bool)

(assert (=> b!6600513 (= e!3993888 e!3993892)))

(declare-fun res!2706464 () Bool)

(assert (=> b!6600513 (=> res!2706464 e!3993892)))

(declare-fun lt!2413443 () (InoxSet Context!11702))

(declare-fun lt!2413424 () (InoxSet Context!11702))

(assert (=> b!6600513 (= res!2706464 (not (= lt!2413443 lt!2413424)))))

(declare-fun lt!2413414 () (InoxSet Context!11702))

(assert (=> b!6600513 (= (flatMap!1972 lt!2413414 lambda!367920) (derivationStepZipperUp!1641 lt!2413434 (h!72024 s!2326)))))

(declare-fun lt!2413426 () Unit!159203)

(assert (=> b!6600513 (= lt!2413426 (lemmaFlatMapOnSingletonSet!1498 lt!2413414 lt!2413434 lambda!367920))))

(declare-fun lt!2413438 () (InoxSet Context!11702))

(assert (=> b!6600513 (= lt!2413438 (derivationStepZipperUp!1641 lt!2413434 (h!72024 s!2326)))))

(assert (=> b!6600513 (= lt!2413443 (derivationStepZipper!2433 lt!2413414 (h!72024 s!2326)))))

(assert (=> b!6600513 (= lt!2413414 (store ((as const (Array Context!11702 Bool)) false) lt!2413434 true))))

(declare-fun lt!2413427 () List!65701)

(assert (=> b!6600513 (= lt!2413434 (Context!11703 (Cons!65577 (reg!16796 (regOne!33446 r!7292)) lt!2413427)))))

(declare-fun b!6600514 () Bool)

(declare-fun res!2706452 () Bool)

(assert (=> b!6600514 (=> res!2706452 e!3993879)))

(declare-fun generalisedUnion!2311 (List!65701) Regex!16467)

(declare-fun unfocusZipperList!1888 (List!65702) List!65701)

(assert (=> b!6600514 (= res!2706452 (not (= r!7292 (generalisedUnion!2311 (unfocusZipperList!1888 zl!343)))))))

(declare-fun b!6600515 () Bool)

(assert (=> b!6600515 (= e!3993889 e!3993897)))

(declare-fun res!2706466 () Bool)

(assert (=> b!6600515 (=> res!2706466 e!3993897)))

(assert (=> b!6600515 (= res!2706466 e!3993880)))

(declare-fun res!2706469 () Bool)

(assert (=> b!6600515 (=> (not res!2706469) (not e!3993880))))

(assert (=> b!6600515 (= res!2706469 (not lt!2413450))))

(assert (=> b!6600515 (= lt!2413450 (matchZipper!2479 lt!2413448 (t!379352 s!2326)))))

(declare-fun b!6600516 () Bool)

(declare-fun tp!1819782 () Bool)

(declare-fun tp!1819780 () Bool)

(assert (=> b!6600516 (= e!3993895 (and tp!1819782 tp!1819780))))

(declare-fun b!6600517 () Bool)

(assert (=> b!6600517 (= e!3993878 e!3993888)))

(declare-fun res!2706453 () Bool)

(assert (=> b!6600517 (=> res!2706453 e!3993888)))

(assert (=> b!6600517 (= res!2706453 (not (= lt!2413448 lt!2413424)))))

(declare-fun derivationStepZipperDown!1715 (Regex!16467 Context!11702 C!33204) (InoxSet Context!11702))

(assert (=> b!6600517 (= lt!2413424 (derivationStepZipperDown!1715 (reg!16796 (regOne!33446 r!7292)) lt!2413452 (h!72024 s!2326)))))

(assert (=> b!6600517 (= lt!2413452 (Context!11703 lt!2413427))))

(assert (=> b!6600517 (= lt!2413427 (Cons!65577 lt!2413413 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(assert (=> b!6600517 (= lt!2413413 (Star!16467 (reg!16796 (regOne!33446 r!7292))))))

(declare-fun e!3993893 () Bool)

(declare-fun b!6600518 () Bool)

(declare-fun tp!1819775 () Bool)

(assert (=> b!6600518 (= e!3993885 (and (inv!84414 (h!72026 zl!343)) e!3993893 tp!1819775))))

(declare-fun b!6600519 () Bool)

(declare-fun res!2706461 () Bool)

(assert (=> b!6600519 (=> (not res!2706461) (not e!3993891))))

(declare-fun toList!10251 ((InoxSet Context!11702)) List!65702)

(assert (=> b!6600519 (= res!2706461 (= (toList!10251 z!1189) zl!343))))

(declare-fun b!6600520 () Bool)

(declare-fun res!2706470 () Bool)

(assert (=> b!6600520 (=> res!2706470 e!3993879)))

(assert (=> b!6600520 (= res!2706470 (or ((_ is EmptyExpr!16467) r!7292) ((_ is EmptyLang!16467) r!7292) ((_ is ElementMatch!16467) r!7292) ((_ is Union!16467) r!7292) (not ((_ is Concat!25312) r!7292))))))

(assert (=> b!6600521 (= e!3993884 e!3993878)))

(declare-fun res!2706481 () Bool)

(assert (=> b!6600521 (=> res!2706481 e!3993878)))

(assert (=> b!6600521 (= res!2706481 (or (and ((_ is ElementMatch!16467) (regOne!33446 r!7292)) (= (c!1215814 (regOne!33446 r!7292)) (h!72024 s!2326))) ((_ is Union!16467) (regOne!33446 r!7292))))))

(declare-fun lt!2413449 () Unit!159203)

(assert (=> b!6600521 (= lt!2413449 e!3993894)))

(declare-fun c!1215813 () Bool)

(declare-fun lt!2413437 () Bool)

(assert (=> b!6600521 (= c!1215813 lt!2413437)))

(assert (=> b!6600521 (= lt!2413437 (nullable!6460 (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(assert (=> b!6600521 (= (flatMap!1972 z!1189 lambda!367920) (derivationStepZipperUp!1641 (h!72026 zl!343) (h!72024 s!2326)))))

(declare-fun lt!2413445 () Unit!159203)

(assert (=> b!6600521 (= lt!2413445 (lemmaFlatMapOnSingletonSet!1498 z!1189 (h!72026 zl!343) lambda!367920))))

(assert (=> b!6600521 (= lt!2413417 (derivationStepZipperUp!1641 lt!2413444 (h!72024 s!2326)))))

(assert (=> b!6600521 (= lt!2413448 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 (h!72026 zl!343))) lt!2413444 (h!72024 s!2326)))))

(assert (=> b!6600521 (= lt!2413444 (Context!11703 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun lt!2413428 () (InoxSet Context!11702))

(assert (=> b!6600521 (= lt!2413428 (derivationStepZipperUp!1641 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343))))) (h!72024 s!2326)))))

(declare-fun b!6600522 () Bool)

(declare-fun res!2706465 () Bool)

(assert (=> b!6600522 (=> res!2706465 e!3993879)))

(assert (=> b!6600522 (= res!2706465 (not (= r!7292 (generalisedConcat!2064 (exprs!6351 (h!72026 zl!343))))))))

(declare-fun b!6600523 () Bool)

(declare-fun e!3993886 () Bool)

(assert (=> b!6600523 (= e!3993886 e!3993890)))

(declare-fun res!2706482 () Bool)

(assert (=> b!6600523 (=> res!2706482 e!3993890)))

(assert (=> b!6600523 (= res!2706482 (not (matchR!8650 (regTwo!33446 r!7292) s!2326)))))

(assert (=> b!6600523 (= (matchR!8650 lt!2413439 s!2326) (matchZipper!2479 lt!2413429 s!2326))))

(declare-fun lt!2413430 () List!65702)

(declare-fun lt!2413421 () Unit!159203)

(declare-fun theoremZipperRegexEquiv!889 ((InoxSet Context!11702) List!65702 Regex!16467 List!65700) Unit!159203)

(assert (=> b!6600523 (= lt!2413421 (theoremZipperRegexEquiv!889 lt!2413429 lt!2413430 lt!2413439 s!2326))))

(declare-fun b!6600524 () Bool)

(declare-fun res!2706484 () Bool)

(assert (=> b!6600524 (=> res!2706484 e!3993879)))

(assert (=> b!6600524 (= res!2706484 (not ((_ is Cons!65577) (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6600525 () Bool)

(declare-fun Unit!159206 () Unit!159203)

(assert (=> b!6600525 (= e!3993894 Unit!159206)))

(declare-fun b!6600526 () Bool)

(declare-fun res!2706480 () Bool)

(assert (=> b!6600526 (=> res!2706480 e!3993889)))

(assert (=> b!6600526 (= res!2706480 (not (matchZipper!2479 z!1189 s!2326)))))

(declare-fun b!6600527 () Bool)

(declare-fun res!2706462 () Bool)

(assert (=> b!6600527 (=> res!2706462 e!3993878)))

(assert (=> b!6600527 (= res!2706462 e!3993899)))

(declare-fun res!2706474 () Bool)

(assert (=> b!6600527 (=> (not res!2706474) (not e!3993899))))

(assert (=> b!6600527 (= res!2706474 ((_ is Concat!25312) (regOne!33446 r!7292)))))

(declare-fun b!6600528 () Bool)

(declare-fun tp!1819778 () Bool)

(declare-fun tp!1819774 () Bool)

(assert (=> b!6600528 (= e!3993895 (and tp!1819778 tp!1819774))))

(declare-fun b!6600529 () Bool)

(declare-fun res!2706459 () Bool)

(assert (=> b!6600529 (=> res!2706459 e!3993892)))

(assert (=> b!6600529 (= res!2706459 (not (= (matchZipper!2479 lt!2413414 s!2326) (matchZipper!2479 lt!2413443 (t!379352 s!2326)))))))

(declare-fun b!6600530 () Bool)

(declare-fun res!2706460 () Bool)

(assert (=> b!6600530 (=> res!2706460 e!3993889)))

(assert (=> b!6600530 (= res!2706460 (not lt!2413437))))

(declare-fun b!6600531 () Bool)

(declare-fun res!2706477 () Bool)

(assert (=> b!6600531 (=> res!2706477 e!3993897)))

(assert (=> b!6600531 (= res!2706477 (not (matchZipper!2479 lt!2413417 (t!379352 s!2326))))))

(declare-fun b!6600532 () Bool)

(declare-fun tp_is_empty!42187 () Bool)

(assert (=> b!6600532 (= e!3993895 tp_is_empty!42187)))

(declare-fun b!6600533 () Bool)

(declare-fun res!2706486 () Bool)

(assert (=> b!6600533 (=> res!2706486 e!3993884)))

(declare-fun isEmpty!37846 (List!65701) Bool)

(assert (=> b!6600533 (= res!2706486 (isEmpty!37846 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6600534 () Bool)

(assert (=> b!6600534 (= e!3993883 e!3993886)))

(declare-fun res!2706467 () Bool)

(assert (=> b!6600534 (=> res!2706467 e!3993886)))

(declare-fun zipperDepth!404 (List!65702) Int)

(assert (=> b!6600534 (= res!2706467 (< (zipperDepth!404 zl!343) (zipperDepth!404 lt!2413430)))))

(assert (=> b!6600534 (= lt!2413430 (Cons!65578 lt!2413444 Nil!65578))))

(declare-fun b!6600535 () Bool)

(declare-fun tp!1819779 () Bool)

(assert (=> b!6600535 (= e!3993893 tp!1819779)))

(declare-fun b!6600536 () Bool)

(declare-fun tp!1819777 () Bool)

(assert (=> b!6600536 (= e!3993896 (and tp_is_empty!42187 tp!1819777))))

(assert (= (and start!645426 res!2706479) b!6600519))

(assert (= (and b!6600519 res!2706461) b!6600500))

(assert (= (and b!6600500 res!2706457) b!6600493))

(assert (= (and b!6600493 (not res!2706483)) b!6600504))

(assert (= (and b!6600504 (not res!2706468)) b!6600522))

(assert (= (and b!6600522 (not res!2706465)) b!6600524))

(assert (= (and b!6600524 (not res!2706484)) b!6600514))

(assert (= (and b!6600514 (not res!2706452)) b!6600520))

(assert (= (and b!6600520 (not res!2706470)) b!6600499))

(assert (= (and b!6600499 (not res!2706456)) b!6600533))

(assert (= (and b!6600533 (not res!2706486)) b!6600521))

(assert (= (and b!6600521 c!1215813) b!6600498))

(assert (= (and b!6600521 (not c!1215813)) b!6600525))

(assert (= (and b!6600498 (not res!2706485)) b!6600509))

(assert (= (and b!6600521 (not res!2706481)) b!6600527))

(assert (= (and b!6600527 res!2706474) b!6600508))

(assert (= (and b!6600527 (not res!2706462)) b!6600505))

(assert (= (and b!6600505 (not res!2706471)) b!6600517))

(assert (= (and b!6600517 (not res!2706453)) b!6600513))

(assert (= (and b!6600513 (not res!2706464)) b!6600529))

(assert (= (and b!6600529 (not res!2706459)) b!6600503))

(assert (= (and b!6600503 (not res!2706451)) b!6600512))

(assert (= (and b!6600512 (not res!2706472)) b!6600501))

(assert (= (and b!6600501 (not res!2706478)) b!6600502))

(assert (= (and b!6600502 (not res!2706476)) b!6600496))

(assert (= (and b!6600496 (not res!2706455)) b!6600510))

(assert (= (and b!6600510 (not res!2706454)) b!6600526))

(assert (= (and b!6600526 (not res!2706480)) b!6600530))

(assert (= (and b!6600530 (not res!2706460)) b!6600515))

(assert (= (and b!6600515 res!2706469) b!6600494))

(assert (= (and b!6600515 (not res!2706466)) b!6600511))

(assert (= (and b!6600511 (not res!2706473)) b!6600531))

(assert (= (and b!6600531 (not res!2706477)) b!6600507))

(assert (= (and b!6600507 (not res!2706463)) b!6600491))

(assert (= (and b!6600491 (not res!2706458)) b!6600534))

(assert (= (and b!6600534 (not res!2706467)) b!6600523))

(assert (= (and b!6600523 (not res!2706482)) b!6600495))

(assert (= (and b!6600495 (not res!2706475)) b!6600497))

(assert (= (and start!645426 ((_ is ElementMatch!16467) r!7292)) b!6600532))

(assert (= (and start!645426 ((_ is Concat!25312) r!7292)) b!6600516))

(assert (= (and start!645426 ((_ is Star!16467) r!7292)) b!6600492))

(assert (= (and start!645426 ((_ is Union!16467) r!7292)) b!6600528))

(assert (= (and start!645426 condSetEmpty!45072) setIsEmpty!45072))

(assert (= (and start!645426 (not condSetEmpty!45072)) setNonEmpty!45072))

(assert (= setNonEmpty!45072 b!6600506))

(assert (= b!6600518 b!6600535))

(assert (= (and start!645426 ((_ is Cons!65578) zl!343)) b!6600518))

(assert (= (and start!645426 ((_ is Cons!65576) s!2326)) b!6600536))

(declare-fun m!7376764 () Bool)

(assert (=> start!645426 m!7376764))

(declare-fun m!7376766 () Bool)

(assert (=> setNonEmpty!45072 m!7376766))

(declare-fun m!7376768 () Bool)

(assert (=> b!6600496 m!7376768))

(declare-fun m!7376770 () Bool)

(assert (=> b!6600519 m!7376770))

(declare-fun m!7376772 () Bool)

(assert (=> b!6600502 m!7376772))

(declare-fun m!7376774 () Bool)

(assert (=> b!6600502 m!7376774))

(declare-fun m!7376776 () Bool)

(assert (=> b!6600502 m!7376776))

(declare-fun m!7376778 () Bool)

(assert (=> b!6600502 m!7376778))

(declare-fun m!7376780 () Bool)

(assert (=> b!6600502 m!7376780))

(declare-fun m!7376782 () Bool)

(assert (=> b!6600502 m!7376782))

(declare-fun m!7376784 () Bool)

(assert (=> b!6600502 m!7376784))

(declare-fun m!7376786 () Bool)

(assert (=> b!6600502 m!7376786))

(declare-fun m!7376788 () Bool)

(assert (=> b!6600502 m!7376788))

(declare-fun m!7376790 () Bool)

(assert (=> b!6600522 m!7376790))

(declare-fun m!7376792 () Bool)

(assert (=> b!6600508 m!7376792))

(declare-fun m!7376794 () Bool)

(assert (=> b!6600500 m!7376794))

(declare-fun m!7376796 () Bool)

(assert (=> b!6600517 m!7376796))

(declare-fun m!7376798 () Bool)

(assert (=> b!6600529 m!7376798))

(declare-fun m!7376800 () Bool)

(assert (=> b!6600529 m!7376800))

(declare-fun m!7376802 () Bool)

(assert (=> b!6600499 m!7376802))

(declare-fun m!7376804 () Bool)

(assert (=> b!6600499 m!7376804))

(declare-fun m!7376806 () Bool)

(assert (=> b!6600499 m!7376806))

(declare-fun m!7376808 () Bool)

(assert (=> b!6600499 m!7376808))

(declare-fun m!7376810 () Bool)

(assert (=> b!6600499 m!7376810))

(assert (=> b!6600499 m!7376808))

(assert (=> b!6600499 m!7376802))

(declare-fun m!7376812 () Bool)

(assert (=> b!6600499 m!7376812))

(declare-fun m!7376814 () Bool)

(assert (=> b!6600491 m!7376814))

(declare-fun m!7376816 () Bool)

(assert (=> b!6600491 m!7376816))

(declare-fun m!7376818 () Bool)

(assert (=> b!6600491 m!7376818))

(declare-fun m!7376820 () Bool)

(assert (=> b!6600497 m!7376820))

(declare-fun m!7376822 () Bool)

(assert (=> b!6600498 m!7376822))

(declare-fun m!7376824 () Bool)

(assert (=> b!6600498 m!7376824))

(declare-fun m!7376826 () Bool)

(assert (=> b!6600498 m!7376826))

(declare-fun m!7376828 () Bool)

(assert (=> b!6600510 m!7376828))

(declare-fun m!7376830 () Bool)

(assert (=> b!6600510 m!7376830))

(declare-fun m!7376832 () Bool)

(assert (=> b!6600510 m!7376832))

(declare-fun m!7376834 () Bool)

(assert (=> b!6600493 m!7376834))

(declare-fun m!7376836 () Bool)

(assert (=> b!6600493 m!7376836))

(declare-fun m!7376838 () Bool)

(assert (=> b!6600493 m!7376838))

(declare-fun m!7376840 () Bool)

(assert (=> b!6600509 m!7376840))

(declare-fun m!7376842 () Bool)

(assert (=> b!6600518 m!7376842))

(declare-fun m!7376844 () Bool)

(assert (=> b!6600533 m!7376844))

(declare-fun m!7376846 () Bool)

(assert (=> b!6600534 m!7376846))

(declare-fun m!7376848 () Bool)

(assert (=> b!6600534 m!7376848))

(declare-fun m!7376850 () Bool)

(assert (=> b!6600526 m!7376850))

(declare-fun m!7376852 () Bool)

(assert (=> b!6600513 m!7376852))

(declare-fun m!7376854 () Bool)

(assert (=> b!6600513 m!7376854))

(declare-fun m!7376856 () Bool)

(assert (=> b!6600513 m!7376856))

(declare-fun m!7376858 () Bool)

(assert (=> b!6600513 m!7376858))

(declare-fun m!7376860 () Bool)

(assert (=> b!6600513 m!7376860))

(assert (=> b!6600531 m!7376840))

(declare-fun m!7376862 () Bool)

(assert (=> b!6600504 m!7376862))

(assert (=> b!6600494 m!7376840))

(declare-fun m!7376864 () Bool)

(assert (=> b!6600523 m!7376864))

(declare-fun m!7376866 () Bool)

(assert (=> b!6600523 m!7376866))

(declare-fun m!7376868 () Bool)

(assert (=> b!6600523 m!7376868))

(declare-fun m!7376870 () Bool)

(assert (=> b!6600523 m!7376870))

(declare-fun m!7376872 () Bool)

(assert (=> b!6600514 m!7376872))

(assert (=> b!6600514 m!7376872))

(declare-fun m!7376874 () Bool)

(assert (=> b!6600514 m!7376874))

(assert (=> b!6600515 m!7376824))

(declare-fun m!7376876 () Bool)

(assert (=> b!6600495 m!7376876))

(declare-fun m!7376878 () Bool)

(assert (=> b!6600495 m!7376878))

(declare-fun m!7376880 () Bool)

(assert (=> b!6600495 m!7376880))

(declare-fun m!7376882 () Bool)

(assert (=> b!6600495 m!7376882))

(declare-fun m!7376884 () Bool)

(assert (=> b!6600495 m!7376884))

(declare-fun m!7376886 () Bool)

(assert (=> b!6600495 m!7376886))

(assert (=> b!6600495 m!7376880))

(declare-fun m!7376888 () Bool)

(assert (=> b!6600495 m!7376888))

(declare-fun m!7376890 () Bool)

(assert (=> b!6600495 m!7376890))

(declare-fun m!7376892 () Bool)

(assert (=> b!6600501 m!7376892))

(declare-fun m!7376894 () Bool)

(assert (=> b!6600507 m!7376894))

(declare-fun m!7376896 () Bool)

(assert (=> b!6600507 m!7376896))

(declare-fun m!7376898 () Bool)

(assert (=> b!6600507 m!7376898))

(declare-fun m!7376900 () Bool)

(assert (=> b!6600507 m!7376900))

(declare-fun m!7376902 () Bool)

(assert (=> b!6600507 m!7376902))

(declare-fun m!7376904 () Bool)

(assert (=> b!6600521 m!7376904))

(assert (=> b!6600521 m!7376900))

(declare-fun m!7376906 () Bool)

(assert (=> b!6600521 m!7376906))

(declare-fun m!7376908 () Bool)

(assert (=> b!6600521 m!7376908))

(declare-fun m!7376910 () Bool)

(assert (=> b!6600521 m!7376910))

(declare-fun m!7376912 () Bool)

(assert (=> b!6600521 m!7376912))

(declare-fun m!7376914 () Bool)

(assert (=> b!6600521 m!7376914))

(check-sat (not start!645426) (not b!6600508) (not b!6600509) (not b!6600492) (not b!6600534) (not b!6600504) (not b!6600522) (not b!6600491) (not b!6600536) (not b!6600506) (not b!6600521) (not b!6600497) (not b!6600533) (not b!6600529) (not b!6600500) (not b!6600501) (not b!6600526) (not b!6600507) (not b!6600531) (not b!6600518) (not b!6600499) (not b!6600516) (not b!6600495) tp_is_empty!42187 (not b!6600523) (not b!6600519) (not b!6600515) (not b!6600493) (not b!6600513) (not setNonEmpty!45072) (not b!6600528) (not b!6600514) (not b!6600498) (not b!6600502) (not b!6600517) (not b!6600494) (not b!6600510) (not b!6600535) (not b!6600496))
(check-sat)
(get-model)

(declare-fun d!2070341 () Bool)

(declare-fun c!1215838 () Bool)

(declare-fun isEmpty!37848 (List!65700) Bool)

(assert (=> d!2070341 (= c!1215838 (isEmpty!37848 (t!379352 s!2326)))))

(declare-fun e!3993948 () Bool)

(assert (=> d!2070341 (= (matchZipper!2479 lt!2413417 (t!379352 s!2326)) e!3993948)))

(declare-fun b!6600629 () Bool)

(declare-fun nullableZipper!2212 ((InoxSet Context!11702)) Bool)

(assert (=> b!6600629 (= e!3993948 (nullableZipper!2212 lt!2413417))))

(declare-fun b!6600630 () Bool)

(declare-fun head!13384 (List!65700) C!33204)

(declare-fun tail!12469 (List!65700) List!65700)

(assert (=> b!6600630 (= e!3993948 (matchZipper!2479 (derivationStepZipper!2433 lt!2413417 (head!13384 (t!379352 s!2326))) (tail!12469 (t!379352 s!2326))))))

(assert (= (and d!2070341 c!1215838) b!6600629))

(assert (= (and d!2070341 (not c!1215838)) b!6600630))

(declare-fun m!7376950 () Bool)

(assert (=> d!2070341 m!7376950))

(declare-fun m!7376952 () Bool)

(assert (=> b!6600629 m!7376952))

(declare-fun m!7376954 () Bool)

(assert (=> b!6600630 m!7376954))

(assert (=> b!6600630 m!7376954))

(declare-fun m!7376956 () Bool)

(assert (=> b!6600630 m!7376956))

(declare-fun m!7376958 () Bool)

(assert (=> b!6600630 m!7376958))

(assert (=> b!6600630 m!7376956))

(assert (=> b!6600630 m!7376958))

(declare-fun m!7376960 () Bool)

(assert (=> b!6600630 m!7376960))

(assert (=> b!6600494 d!2070341))

(declare-fun d!2070343 () Bool)

(declare-fun choose!49266 ((InoxSet Context!11702) Int) (InoxSet Context!11702))

(assert (=> d!2070343 (= (flatMap!1972 lt!2413414 lambda!367920) (choose!49266 lt!2413414 lambda!367920))))

(declare-fun bs!1692282 () Bool)

(assert (= bs!1692282 d!2070343))

(declare-fun m!7376962 () Bool)

(assert (=> bs!1692282 m!7376962))

(assert (=> b!6600513 d!2070343))

(declare-fun b!6600672 () Bool)

(declare-fun e!3993978 () (InoxSet Context!11702))

(assert (=> b!6600672 (= e!3993978 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6600673 () Bool)

(declare-fun e!3993977 () (InoxSet Context!11702))

(assert (=> b!6600673 (= e!3993977 e!3993978)))

(declare-fun c!1215853 () Bool)

(assert (=> b!6600673 (= c!1215853 ((_ is Cons!65577) (exprs!6351 lt!2413434)))))

(declare-fun d!2070345 () Bool)

(declare-fun c!1215852 () Bool)

(declare-fun e!3993979 () Bool)

(assert (=> d!2070345 (= c!1215852 e!3993979)))

(declare-fun res!2706542 () Bool)

(assert (=> d!2070345 (=> (not res!2706542) (not e!3993979))))

(assert (=> d!2070345 (= res!2706542 ((_ is Cons!65577) (exprs!6351 lt!2413434)))))

(assert (=> d!2070345 (= (derivationStepZipperUp!1641 lt!2413434 (h!72024 s!2326)) e!3993977)))

(declare-fun b!6600674 () Bool)

(declare-fun call!577231 () (InoxSet Context!11702))

(assert (=> b!6600674 (= e!3993977 ((_ map or) call!577231 (derivationStepZipperUp!1641 (Context!11703 (t!379353 (exprs!6351 lt!2413434))) (h!72024 s!2326))))))

(declare-fun b!6600675 () Bool)

(assert (=> b!6600675 (= e!3993979 (nullable!6460 (h!72025 (exprs!6351 lt!2413434))))))

(declare-fun b!6600676 () Bool)

(assert (=> b!6600676 (= e!3993978 call!577231)))

(declare-fun bm!577226 () Bool)

(assert (=> bm!577226 (= call!577231 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 lt!2413434)) (Context!11703 (t!379353 (exprs!6351 lt!2413434))) (h!72024 s!2326)))))

(assert (= (and d!2070345 res!2706542) b!6600675))

(assert (= (and d!2070345 c!1215852) b!6600674))

(assert (= (and d!2070345 (not c!1215852)) b!6600673))

(assert (= (and b!6600673 c!1215853) b!6600676))

(assert (= (and b!6600673 (not c!1215853)) b!6600672))

(assert (= (or b!6600674 b!6600676) bm!577226))

(declare-fun m!7376978 () Bool)

(assert (=> b!6600674 m!7376978))

(declare-fun m!7376980 () Bool)

(assert (=> b!6600675 m!7376980))

(declare-fun m!7376982 () Bool)

(assert (=> bm!577226 m!7376982))

(assert (=> b!6600513 d!2070345))

(declare-fun d!2070353 () Bool)

(declare-fun dynLambda!26113 (Int Context!11702) (InoxSet Context!11702))

(assert (=> d!2070353 (= (flatMap!1972 lt!2413414 lambda!367920) (dynLambda!26113 lambda!367920 lt!2413434))))

(declare-fun lt!2413465 () Unit!159203)

(declare-fun choose!49267 ((InoxSet Context!11702) Context!11702 Int) Unit!159203)

(assert (=> d!2070353 (= lt!2413465 (choose!49267 lt!2413414 lt!2413434 lambda!367920))))

(assert (=> d!2070353 (= lt!2413414 (store ((as const (Array Context!11702 Bool)) false) lt!2413434 true))))

(assert (=> d!2070353 (= (lemmaFlatMapOnSingletonSet!1498 lt!2413414 lt!2413434 lambda!367920) lt!2413465)))

(declare-fun b_lambda!249817 () Bool)

(assert (=> (not b_lambda!249817) (not d!2070353)))

(declare-fun bs!1692291 () Bool)

(assert (= bs!1692291 d!2070353))

(assert (=> bs!1692291 m!7376858))

(declare-fun m!7377018 () Bool)

(assert (=> bs!1692291 m!7377018))

(declare-fun m!7377020 () Bool)

(assert (=> bs!1692291 m!7377020))

(assert (=> bs!1692291 m!7376852))

(assert (=> b!6600513 d!2070353))

(declare-fun bs!1692302 () Bool)

(declare-fun d!2070365 () Bool)

(assert (= bs!1692302 (and d!2070365 b!6600521)))

(declare-fun lambda!367932 () Int)

(assert (=> bs!1692302 (= lambda!367932 lambda!367920)))

(assert (=> d!2070365 true))

(assert (=> d!2070365 (= (derivationStepZipper!2433 lt!2413414 (h!72024 s!2326)) (flatMap!1972 lt!2413414 lambda!367932))))

(declare-fun bs!1692303 () Bool)

(assert (= bs!1692303 d!2070365))

(declare-fun m!7377030 () Bool)

(assert (=> bs!1692303 m!7377030))

(assert (=> b!6600513 d!2070365))

(declare-fun d!2070371 () Bool)

(declare-fun e!3994035 () Bool)

(assert (=> d!2070371 e!3994035))

(declare-fun res!2706583 () Bool)

(assert (=> d!2070371 (=> (not res!2706583) (not e!3994035))))

(declare-fun lt!2413478 () Regex!16467)

(assert (=> d!2070371 (= res!2706583 (validRegex!8203 lt!2413478))))

(declare-fun e!3994037 () Regex!16467)

(assert (=> d!2070371 (= lt!2413478 e!3994037)))

(declare-fun c!1215880 () Bool)

(declare-fun e!3994036 () Bool)

(assert (=> d!2070371 (= c!1215880 e!3994036)))

(declare-fun res!2706582 () Bool)

(assert (=> d!2070371 (=> (not res!2706582) (not e!3994036))))

(assert (=> d!2070371 (= res!2706582 ((_ is Cons!65577) (unfocusZipperList!1888 zl!343)))))

(declare-fun lambda!367938 () Int)

(declare-fun forall!15656 (List!65701 Int) Bool)

(assert (=> d!2070371 (forall!15656 (unfocusZipperList!1888 zl!343) lambda!367938)))

(assert (=> d!2070371 (= (generalisedUnion!2311 (unfocusZipperList!1888 zl!343)) lt!2413478)))

(declare-fun b!6600764 () Bool)

(assert (=> b!6600764 (= e!3994037 (h!72025 (unfocusZipperList!1888 zl!343)))))

(declare-fun b!6600765 () Bool)

(declare-fun e!3994033 () Regex!16467)

(assert (=> b!6600765 (= e!3994033 EmptyLang!16467)))

(declare-fun b!6600766 () Bool)

(declare-fun e!3994032 () Bool)

(declare-fun head!13385 (List!65701) Regex!16467)

(assert (=> b!6600766 (= e!3994032 (= lt!2413478 (head!13385 (unfocusZipperList!1888 zl!343))))))

(declare-fun b!6600767 () Bool)

(declare-fun e!3994034 () Bool)

(declare-fun isEmptyLang!1853 (Regex!16467) Bool)

(assert (=> b!6600767 (= e!3994034 (isEmptyLang!1853 lt!2413478))))

(declare-fun b!6600768 () Bool)

(assert (=> b!6600768 (= e!3994037 e!3994033)))

(declare-fun c!1215879 () Bool)

(assert (=> b!6600768 (= c!1215879 ((_ is Cons!65577) (unfocusZipperList!1888 zl!343)))))

(declare-fun b!6600769 () Bool)

(declare-fun isUnion!1283 (Regex!16467) Bool)

(assert (=> b!6600769 (= e!3994032 (isUnion!1283 lt!2413478))))

(declare-fun b!6600770 () Bool)

(assert (=> b!6600770 (= e!3994033 (Union!16467 (h!72025 (unfocusZipperList!1888 zl!343)) (generalisedUnion!2311 (t!379353 (unfocusZipperList!1888 zl!343)))))))

(declare-fun b!6600771 () Bool)

(assert (=> b!6600771 (= e!3994034 e!3994032)))

(declare-fun c!1215882 () Bool)

(declare-fun tail!12470 (List!65701) List!65701)

(assert (=> b!6600771 (= c!1215882 (isEmpty!37846 (tail!12470 (unfocusZipperList!1888 zl!343))))))

(declare-fun b!6600772 () Bool)

(assert (=> b!6600772 (= e!3994035 e!3994034)))

(declare-fun c!1215881 () Bool)

(assert (=> b!6600772 (= c!1215881 (isEmpty!37846 (unfocusZipperList!1888 zl!343)))))

(declare-fun b!6600773 () Bool)

(assert (=> b!6600773 (= e!3994036 (isEmpty!37846 (t!379353 (unfocusZipperList!1888 zl!343))))))

(assert (= (and d!2070371 res!2706582) b!6600773))

(assert (= (and d!2070371 c!1215880) b!6600764))

(assert (= (and d!2070371 (not c!1215880)) b!6600768))

(assert (= (and b!6600768 c!1215879) b!6600770))

(assert (= (and b!6600768 (not c!1215879)) b!6600765))

(assert (= (and d!2070371 res!2706583) b!6600772))

(assert (= (and b!6600772 c!1215881) b!6600767))

(assert (= (and b!6600772 (not c!1215881)) b!6600771))

(assert (= (and b!6600771 c!1215882) b!6600766))

(assert (= (and b!6600771 (not c!1215882)) b!6600769))

(declare-fun m!7377040 () Bool)

(assert (=> b!6600773 m!7377040))

(declare-fun m!7377042 () Bool)

(assert (=> b!6600767 m!7377042))

(declare-fun m!7377044 () Bool)

(assert (=> d!2070371 m!7377044))

(assert (=> d!2070371 m!7376872))

(declare-fun m!7377046 () Bool)

(assert (=> d!2070371 m!7377046))

(declare-fun m!7377048 () Bool)

(assert (=> b!6600770 m!7377048))

(declare-fun m!7377050 () Bool)

(assert (=> b!6600769 m!7377050))

(assert (=> b!6600772 m!7376872))

(declare-fun m!7377052 () Bool)

(assert (=> b!6600772 m!7377052))

(assert (=> b!6600766 m!7376872))

(declare-fun m!7377054 () Bool)

(assert (=> b!6600766 m!7377054))

(assert (=> b!6600771 m!7376872))

(declare-fun m!7377056 () Bool)

(assert (=> b!6600771 m!7377056))

(assert (=> b!6600771 m!7377056))

(declare-fun m!7377058 () Bool)

(assert (=> b!6600771 m!7377058))

(assert (=> b!6600514 d!2070371))

(declare-fun bs!1692329 () Bool)

(declare-fun d!2070379 () Bool)

(assert (= bs!1692329 (and d!2070379 d!2070371)))

(declare-fun lambda!367943 () Int)

(assert (=> bs!1692329 (= lambda!367943 lambda!367938)))

(declare-fun lt!2413486 () List!65701)

(assert (=> d!2070379 (forall!15656 lt!2413486 lambda!367943)))

(declare-fun e!3994059 () List!65701)

(assert (=> d!2070379 (= lt!2413486 e!3994059)))

(declare-fun c!1215894 () Bool)

(assert (=> d!2070379 (= c!1215894 ((_ is Cons!65578) zl!343))))

(assert (=> d!2070379 (= (unfocusZipperList!1888 zl!343) lt!2413486)))

(declare-fun b!6600812 () Bool)

(assert (=> b!6600812 (= e!3994059 (Cons!65577 (generalisedConcat!2064 (exprs!6351 (h!72026 zl!343))) (unfocusZipperList!1888 (t!379354 zl!343))))))

(declare-fun b!6600813 () Bool)

(assert (=> b!6600813 (= e!3994059 Nil!65577)))

(assert (= (and d!2070379 c!1215894) b!6600812))

(assert (= (and d!2070379 (not c!1215894)) b!6600813))

(declare-fun m!7377094 () Bool)

(assert (=> d!2070379 m!7377094))

(assert (=> b!6600812 m!7376790))

(declare-fun m!7377098 () Bool)

(assert (=> b!6600812 m!7377098))

(assert (=> b!6600514 d!2070379))

(declare-fun d!2070391 () Bool)

(assert (=> d!2070391 (= (isEmpty!37846 (t!379353 (exprs!6351 (h!72026 zl!343)))) ((_ is Nil!65577) (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(assert (=> b!6600533 d!2070391))

(declare-fun b!6600875 () Bool)

(assert (=> b!6600875 true))

(declare-fun bs!1692333 () Bool)

(declare-fun b!6600877 () Bool)

(assert (= bs!1692333 (and b!6600877 b!6600875)))

(declare-fun lt!2413503 () Int)

(declare-fun lambda!367957 () Int)

(declare-fun lt!2413505 () Int)

(declare-fun lambda!367958 () Int)

(assert (=> bs!1692333 (= (= lt!2413503 lt!2413505) (= lambda!367958 lambda!367957))))

(assert (=> b!6600877 true))

(declare-fun d!2070393 () Bool)

(declare-fun e!3994097 () Bool)

(assert (=> d!2070393 e!3994097))

(declare-fun res!2706613 () Bool)

(assert (=> d!2070393 (=> (not res!2706613) (not e!3994097))))

(assert (=> d!2070393 (= res!2706613 (>= lt!2413503 0))))

(declare-fun e!3994098 () Int)

(assert (=> d!2070393 (= lt!2413503 e!3994098)))

(declare-fun c!1215925 () Bool)

(assert (=> d!2070393 (= c!1215925 ((_ is Cons!65578) zl!343))))

(assert (=> d!2070393 (= (zipperDepth!404 zl!343) lt!2413503)))

(assert (=> b!6600875 (= e!3994098 lt!2413505)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!292 (Context!11702) Int)

(assert (=> b!6600875 (= lt!2413505 (maxBigInt!0 (contextDepth!292 (h!72026 zl!343)) (zipperDepth!404 (t!379354 zl!343))))))

(declare-fun lt!2413504 () Unit!159203)

(declare-fun lambda!367956 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!276 (List!65702 Int Int Int) Unit!159203)

(assert (=> b!6600875 (= lt!2413504 (lemmaForallContextDepthBiggerThanTransitive!276 (t!379354 zl!343) lt!2413505 (zipperDepth!404 (t!379354 zl!343)) lambda!367956))))

(declare-fun forall!15657 (List!65702 Int) Bool)

(assert (=> b!6600875 (forall!15657 (t!379354 zl!343) lambda!367957)))

(declare-fun lt!2413502 () Unit!159203)

(assert (=> b!6600875 (= lt!2413502 lt!2413504)))

(declare-fun b!6600876 () Bool)

(assert (=> b!6600876 (= e!3994098 0)))

(assert (=> b!6600877 (= e!3994097 (forall!15657 zl!343 lambda!367958))))

(assert (= (and d!2070393 c!1215925) b!6600875))

(assert (= (and d!2070393 (not c!1215925)) b!6600876))

(assert (= (and d!2070393 res!2706613) b!6600877))

(declare-fun m!7377128 () Bool)

(assert (=> b!6600875 m!7377128))

(declare-fun m!7377130 () Bool)

(assert (=> b!6600875 m!7377130))

(declare-fun m!7377132 () Bool)

(assert (=> b!6600875 m!7377132))

(declare-fun m!7377134 () Bool)

(assert (=> b!6600875 m!7377134))

(assert (=> b!6600875 m!7377130))

(assert (=> b!6600875 m!7377130))

(declare-fun m!7377136 () Bool)

(assert (=> b!6600875 m!7377136))

(assert (=> b!6600875 m!7377128))

(declare-fun m!7377138 () Bool)

(assert (=> b!6600877 m!7377138))

(assert (=> b!6600534 d!2070393))

(declare-fun bs!1692334 () Bool)

(declare-fun b!6600880 () Bool)

(assert (= bs!1692334 (and b!6600880 b!6600875)))

(declare-fun lambda!367959 () Int)

(assert (=> bs!1692334 (= lambda!367959 lambda!367956)))

(declare-fun lambda!367960 () Int)

(declare-fun lt!2413509 () Int)

(assert (=> bs!1692334 (= (= lt!2413509 lt!2413505) (= lambda!367960 lambda!367957))))

(declare-fun bs!1692335 () Bool)

(assert (= bs!1692335 (and b!6600880 b!6600877)))

(assert (=> bs!1692335 (= (= lt!2413509 lt!2413503) (= lambda!367960 lambda!367958))))

(assert (=> b!6600880 true))

(declare-fun bs!1692336 () Bool)

(declare-fun b!6600882 () Bool)

(assert (= bs!1692336 (and b!6600882 b!6600875)))

(declare-fun lambda!367961 () Int)

(declare-fun lt!2413507 () Int)

(assert (=> bs!1692336 (= (= lt!2413507 lt!2413505) (= lambda!367961 lambda!367957))))

(declare-fun bs!1692337 () Bool)

(assert (= bs!1692337 (and b!6600882 b!6600877)))

(assert (=> bs!1692337 (= (= lt!2413507 lt!2413503) (= lambda!367961 lambda!367958))))

(declare-fun bs!1692338 () Bool)

(assert (= bs!1692338 (and b!6600882 b!6600880)))

(assert (=> bs!1692338 (= (= lt!2413507 lt!2413509) (= lambda!367961 lambda!367960))))

(assert (=> b!6600882 true))

(declare-fun d!2070401 () Bool)

(declare-fun e!3994099 () Bool)

(assert (=> d!2070401 e!3994099))

(declare-fun res!2706614 () Bool)

(assert (=> d!2070401 (=> (not res!2706614) (not e!3994099))))

(assert (=> d!2070401 (= res!2706614 (>= lt!2413507 0))))

(declare-fun e!3994100 () Int)

(assert (=> d!2070401 (= lt!2413507 e!3994100)))

(declare-fun c!1215926 () Bool)

(assert (=> d!2070401 (= c!1215926 ((_ is Cons!65578) lt!2413430))))

(assert (=> d!2070401 (= (zipperDepth!404 lt!2413430) lt!2413507)))

(assert (=> b!6600880 (= e!3994100 lt!2413509)))

(assert (=> b!6600880 (= lt!2413509 (maxBigInt!0 (contextDepth!292 (h!72026 lt!2413430)) (zipperDepth!404 (t!379354 lt!2413430))))))

(declare-fun lt!2413508 () Unit!159203)

(assert (=> b!6600880 (= lt!2413508 (lemmaForallContextDepthBiggerThanTransitive!276 (t!379354 lt!2413430) lt!2413509 (zipperDepth!404 (t!379354 lt!2413430)) lambda!367959))))

(assert (=> b!6600880 (forall!15657 (t!379354 lt!2413430) lambda!367960)))

(declare-fun lt!2413506 () Unit!159203)

(assert (=> b!6600880 (= lt!2413506 lt!2413508)))

(declare-fun b!6600881 () Bool)

(assert (=> b!6600881 (= e!3994100 0)))

(assert (=> b!6600882 (= e!3994099 (forall!15657 lt!2413430 lambda!367961))))

(assert (= (and d!2070401 c!1215926) b!6600880))

(assert (= (and d!2070401 (not c!1215926)) b!6600881))

(assert (= (and d!2070401 res!2706614) b!6600882))

(declare-fun m!7377144 () Bool)

(assert (=> b!6600880 m!7377144))

(declare-fun m!7377148 () Bool)

(assert (=> b!6600880 m!7377148))

(declare-fun m!7377150 () Bool)

(assert (=> b!6600880 m!7377150))

(declare-fun m!7377154 () Bool)

(assert (=> b!6600880 m!7377154))

(assert (=> b!6600880 m!7377148))

(assert (=> b!6600880 m!7377148))

(declare-fun m!7377156 () Bool)

(assert (=> b!6600880 m!7377156))

(assert (=> b!6600880 m!7377144))

(declare-fun m!7377158 () Bool)

(assert (=> b!6600882 m!7377158))

(assert (=> b!6600534 d!2070401))

(declare-fun bs!1692350 () Bool)

(declare-fun b!6600991 () Bool)

(assert (= bs!1692350 (and b!6600991 b!6600499)))

(declare-fun lambda!367978 () Int)

(assert (=> bs!1692350 (not (= lambda!367978 lambda!367918))))

(assert (=> bs!1692350 (not (= lambda!367978 lambda!367919))))

(declare-fun bs!1692351 () Bool)

(assert (= bs!1692351 (and b!6600991 b!6600495)))

(assert (=> bs!1692351 (not (= lambda!367978 lambda!367921))))

(assert (=> b!6600991 true))

(assert (=> b!6600991 true))

(declare-fun bs!1692352 () Bool)

(declare-fun b!6600987 () Bool)

(assert (= bs!1692352 (and b!6600987 b!6600499)))

(declare-fun lambda!367979 () Int)

(assert (=> bs!1692352 (not (= lambda!367979 lambda!367918))))

(assert (=> bs!1692352 (= lambda!367979 lambda!367919)))

(declare-fun bs!1692353 () Bool)

(assert (= bs!1692353 (and b!6600987 b!6600495)))

(assert (=> bs!1692353 (not (= lambda!367979 lambda!367921))))

(declare-fun bs!1692354 () Bool)

(assert (= bs!1692354 (and b!6600987 b!6600991)))

(assert (=> bs!1692354 (not (= lambda!367979 lambda!367978))))

(assert (=> b!6600987 true))

(assert (=> b!6600987 true))

(declare-fun b!6600983 () Bool)

(declare-fun e!3994161 () Bool)

(declare-fun call!577274 () Bool)

(assert (=> b!6600983 (= e!3994161 call!577274)))

(declare-fun b!6600984 () Bool)

(declare-fun e!3994159 () Bool)

(declare-fun e!3994160 () Bool)

(assert (=> b!6600984 (= e!3994159 e!3994160)))

(declare-fun c!1215965 () Bool)

(assert (=> b!6600984 (= c!1215965 ((_ is Star!16467) r!7292))))

(declare-fun b!6600985 () Bool)

(declare-fun e!3994163 () Bool)

(assert (=> b!6600985 (= e!3994159 e!3994163)))

(declare-fun res!2706653 () Bool)

(assert (=> b!6600985 (= res!2706653 (matchRSpec!3568 (regOne!33447 r!7292) s!2326))))

(assert (=> b!6600985 (=> res!2706653 e!3994163)))

(declare-fun b!6600986 () Bool)

(assert (=> b!6600986 (= e!3994163 (matchRSpec!3568 (regTwo!33447 r!7292) s!2326))))

(declare-fun call!577275 () Bool)

(assert (=> b!6600987 (= e!3994160 call!577275)))

(declare-fun d!2070405 () Bool)

(declare-fun c!1215966 () Bool)

(assert (=> d!2070405 (= c!1215966 ((_ is EmptyExpr!16467) r!7292))))

(assert (=> d!2070405 (= (matchRSpec!3568 r!7292 s!2326) e!3994161)))

(declare-fun b!6600988 () Bool)

(declare-fun e!3994162 () Bool)

(assert (=> b!6600988 (= e!3994162 (= s!2326 (Cons!65576 (c!1215814 r!7292) Nil!65576)))))

(declare-fun bm!577269 () Bool)

(assert (=> bm!577269 (= call!577275 (Exists!3537 (ite c!1215965 lambda!367978 lambda!367979)))))

(declare-fun b!6600989 () Bool)

(declare-fun c!1215963 () Bool)

(assert (=> b!6600989 (= c!1215963 ((_ is ElementMatch!16467) r!7292))))

(declare-fun e!3994164 () Bool)

(assert (=> b!6600989 (= e!3994164 e!3994162)))

(declare-fun b!6600990 () Bool)

(declare-fun c!1215964 () Bool)

(assert (=> b!6600990 (= c!1215964 ((_ is Union!16467) r!7292))))

(assert (=> b!6600990 (= e!3994162 e!3994159)))

(declare-fun bm!577270 () Bool)

(assert (=> bm!577270 (= call!577274 (isEmpty!37848 s!2326))))

(declare-fun e!3994165 () Bool)

(assert (=> b!6600991 (= e!3994165 call!577275)))

(declare-fun b!6600992 () Bool)

(declare-fun res!2706655 () Bool)

(assert (=> b!6600992 (=> res!2706655 e!3994165)))

(assert (=> b!6600992 (= res!2706655 call!577274)))

(assert (=> b!6600992 (= e!3994160 e!3994165)))

(declare-fun b!6600993 () Bool)

(assert (=> b!6600993 (= e!3994161 e!3994164)))

(declare-fun res!2706654 () Bool)

(assert (=> b!6600993 (= res!2706654 (not ((_ is EmptyLang!16467) r!7292)))))

(assert (=> b!6600993 (=> (not res!2706654) (not e!3994164))))

(assert (= (and d!2070405 c!1215966) b!6600983))

(assert (= (and d!2070405 (not c!1215966)) b!6600993))

(assert (= (and b!6600993 res!2706654) b!6600989))

(assert (= (and b!6600989 c!1215963) b!6600988))

(assert (= (and b!6600989 (not c!1215963)) b!6600990))

(assert (= (and b!6600990 c!1215964) b!6600985))

(assert (= (and b!6600990 (not c!1215964)) b!6600984))

(assert (= (and b!6600985 (not res!2706653)) b!6600986))

(assert (= (and b!6600984 c!1215965) b!6600992))

(assert (= (and b!6600984 (not c!1215965)) b!6600987))

(assert (= (and b!6600992 (not res!2706655)) b!6600991))

(assert (= (or b!6600991 b!6600987) bm!577269))

(assert (= (or b!6600983 b!6600992) bm!577270))

(declare-fun m!7377242 () Bool)

(assert (=> b!6600985 m!7377242))

(declare-fun m!7377244 () Bool)

(assert (=> b!6600986 m!7377244))

(declare-fun m!7377246 () Bool)

(assert (=> bm!577269 m!7377246))

(declare-fun m!7377248 () Bool)

(assert (=> bm!577270 m!7377248))

(assert (=> b!6600493 d!2070405))

(declare-fun b!6601071 () Bool)

(declare-fun e!3994209 () Bool)

(assert (=> b!6601071 (= e!3994209 (nullable!6460 r!7292))))

(declare-fun b!6601072 () Bool)

(declare-fun e!3994208 () Bool)

(assert (=> b!6601072 (= e!3994208 (not (= (head!13384 s!2326) (c!1215814 r!7292))))))

(declare-fun b!6601073 () Bool)

(declare-fun e!3994206 () Bool)

(declare-fun e!3994211 () Bool)

(assert (=> b!6601073 (= e!3994206 e!3994211)))

(declare-fun res!2706686 () Bool)

(assert (=> b!6601073 (=> (not res!2706686) (not e!3994211))))

(declare-fun lt!2413541 () Bool)

(assert (=> b!6601073 (= res!2706686 (not lt!2413541))))

(declare-fun b!6601074 () Bool)

(declare-fun derivativeStep!5151 (Regex!16467 C!33204) Regex!16467)

(assert (=> b!6601074 (= e!3994209 (matchR!8650 (derivativeStep!5151 r!7292 (head!13384 s!2326)) (tail!12469 s!2326)))))

(declare-fun b!6601076 () Bool)

(declare-fun e!3994207 () Bool)

(assert (=> b!6601076 (= e!3994207 (= (head!13384 s!2326) (c!1215814 r!7292)))))

(declare-fun b!6601077 () Bool)

(declare-fun res!2706688 () Bool)

(assert (=> b!6601077 (=> res!2706688 e!3994206)))

(assert (=> b!6601077 (= res!2706688 e!3994207)))

(declare-fun res!2706691 () Bool)

(assert (=> b!6601077 (=> (not res!2706691) (not e!3994207))))

(assert (=> b!6601077 (= res!2706691 lt!2413541)))

(declare-fun b!6601078 () Bool)

(declare-fun res!2706690 () Bool)

(assert (=> b!6601078 (=> (not res!2706690) (not e!3994207))))

(declare-fun call!577289 () Bool)

(assert (=> b!6601078 (= res!2706690 (not call!577289))))

(declare-fun bm!577284 () Bool)

(assert (=> bm!577284 (= call!577289 (isEmpty!37848 s!2326))))

(declare-fun b!6601079 () Bool)

(declare-fun res!2706692 () Bool)

(assert (=> b!6601079 (=> res!2706692 e!3994206)))

(assert (=> b!6601079 (= res!2706692 (not ((_ is ElementMatch!16467) r!7292)))))

(declare-fun e!3994210 () Bool)

(assert (=> b!6601079 (= e!3994210 e!3994206)))

(declare-fun b!6601080 () Bool)

(declare-fun e!3994212 () Bool)

(assert (=> b!6601080 (= e!3994212 e!3994210)))

(declare-fun c!1215993 () Bool)

(assert (=> b!6601080 (= c!1215993 ((_ is EmptyLang!16467) r!7292))))

(declare-fun b!6601081 () Bool)

(assert (=> b!6601081 (= e!3994211 e!3994208)))

(declare-fun res!2706685 () Bool)

(assert (=> b!6601081 (=> res!2706685 e!3994208)))

(assert (=> b!6601081 (= res!2706685 call!577289)))

(declare-fun b!6601082 () Bool)

(assert (=> b!6601082 (= e!3994210 (not lt!2413541))))

(declare-fun b!6601083 () Bool)

(declare-fun res!2706689 () Bool)

(assert (=> b!6601083 (=> res!2706689 e!3994208)))

(assert (=> b!6601083 (= res!2706689 (not (isEmpty!37848 (tail!12469 s!2326))))))

(declare-fun b!6601084 () Bool)

(declare-fun res!2706687 () Bool)

(assert (=> b!6601084 (=> (not res!2706687) (not e!3994207))))

(assert (=> b!6601084 (= res!2706687 (isEmpty!37848 (tail!12469 s!2326)))))

(declare-fun b!6601075 () Bool)

(assert (=> b!6601075 (= e!3994212 (= lt!2413541 call!577289))))

(declare-fun d!2070435 () Bool)

(assert (=> d!2070435 e!3994212))

(declare-fun c!1215994 () Bool)

(assert (=> d!2070435 (= c!1215994 ((_ is EmptyExpr!16467) r!7292))))

(assert (=> d!2070435 (= lt!2413541 e!3994209)))

(declare-fun c!1215992 () Bool)

(assert (=> d!2070435 (= c!1215992 (isEmpty!37848 s!2326))))

(assert (=> d!2070435 (validRegex!8203 r!7292)))

(assert (=> d!2070435 (= (matchR!8650 r!7292 s!2326) lt!2413541)))

(assert (= (and d!2070435 c!1215992) b!6601071))

(assert (= (and d!2070435 (not c!1215992)) b!6601074))

(assert (= (and d!2070435 c!1215994) b!6601075))

(assert (= (and d!2070435 (not c!1215994)) b!6601080))

(assert (= (and b!6601080 c!1215993) b!6601082))

(assert (= (and b!6601080 (not c!1215993)) b!6601079))

(assert (= (and b!6601079 (not res!2706692)) b!6601077))

(assert (= (and b!6601077 res!2706691) b!6601078))

(assert (= (and b!6601078 res!2706690) b!6601084))

(assert (= (and b!6601084 res!2706687) b!6601076))

(assert (= (and b!6601077 (not res!2706688)) b!6601073))

(assert (= (and b!6601073 res!2706686) b!6601081))

(assert (= (and b!6601081 (not res!2706685)) b!6601083))

(assert (= (and b!6601083 (not res!2706689)) b!6601072))

(assert (= (or b!6601075 b!6601078 b!6601081) bm!577284))

(declare-fun m!7377308 () Bool)

(assert (=> b!6601072 m!7377308))

(declare-fun m!7377310 () Bool)

(assert (=> b!6601071 m!7377310))

(assert (=> b!6601074 m!7377308))

(assert (=> b!6601074 m!7377308))

(declare-fun m!7377312 () Bool)

(assert (=> b!6601074 m!7377312))

(declare-fun m!7377314 () Bool)

(assert (=> b!6601074 m!7377314))

(assert (=> b!6601074 m!7377312))

(assert (=> b!6601074 m!7377314))

(declare-fun m!7377316 () Bool)

(assert (=> b!6601074 m!7377316))

(assert (=> b!6601076 m!7377308))

(assert (=> b!6601084 m!7377314))

(assert (=> b!6601084 m!7377314))

(declare-fun m!7377318 () Bool)

(assert (=> b!6601084 m!7377318))

(assert (=> d!2070435 m!7377248))

(assert (=> d!2070435 m!7376764))

(assert (=> bm!577284 m!7377248))

(assert (=> b!6601083 m!7377314))

(assert (=> b!6601083 m!7377314))

(assert (=> b!6601083 m!7377318))

(assert (=> b!6600493 d!2070435))

(declare-fun d!2070467 () Bool)

(assert (=> d!2070467 (= (matchR!8650 r!7292 s!2326) (matchRSpec!3568 r!7292 s!2326))))

(declare-fun lt!2413546 () Unit!159203)

(declare-fun choose!49270 (Regex!16467 List!65700) Unit!159203)

(assert (=> d!2070467 (= lt!2413546 (choose!49270 r!7292 s!2326))))

(assert (=> d!2070467 (validRegex!8203 r!7292)))

(assert (=> d!2070467 (= (mainMatchTheorem!3568 r!7292 s!2326) lt!2413546)))

(declare-fun bs!1692368 () Bool)

(assert (= bs!1692368 d!2070467))

(assert (=> bs!1692368 m!7376836))

(assert (=> bs!1692368 m!7376834))

(declare-fun m!7377320 () Bool)

(assert (=> bs!1692368 m!7377320))

(assert (=> bs!1692368 m!7376764))

(assert (=> b!6600493 d!2070467))

(declare-fun b!6601166 () Bool)

(declare-fun e!3994268 () Int)

(assert (=> b!6601166 (= e!3994268 1)))

(declare-fun d!2070469 () Bool)

(declare-fun e!3994265 () Bool)

(assert (=> d!2070469 e!3994265))

(declare-fun res!2706712 () Bool)

(assert (=> d!2070469 (=> (not res!2706712) (not e!3994265))))

(declare-fun lt!2413557 () Int)

(assert (=> d!2070469 (= res!2706712 (> lt!2413557 0))))

(assert (=> d!2070469 (= lt!2413557 e!3994268)))

(declare-fun c!1216033 () Bool)

(assert (=> d!2070469 (= c!1216033 ((_ is ElementMatch!16467) r!7292))))

(assert (=> d!2070469 (= (regexDepth!364 r!7292) lt!2413557)))

(declare-fun b!6601167 () Bool)

(declare-fun e!3994266 () Bool)

(assert (=> b!6601167 (= e!3994266 (= lt!2413557 1))))

(declare-fun b!6601168 () Bool)

(declare-fun e!3994269 () Int)

(assert (=> b!6601168 (= e!3994268 e!3994269)))

(declare-fun c!1216028 () Bool)

(assert (=> b!6601168 (= c!1216028 ((_ is Star!16467) r!7292))))

(declare-fun b!6601169 () Bool)

(declare-fun e!3994264 () Int)

(declare-fun e!3994263 () Int)

(assert (=> b!6601169 (= e!3994264 e!3994263)))

(declare-fun c!1216027 () Bool)

(assert (=> b!6601169 (= c!1216027 ((_ is Concat!25312) r!7292))))

(declare-fun bm!577299 () Bool)

(declare-fun call!577304 () Int)

(declare-fun c!1216030 () Bool)

(assert (=> bm!577299 (= call!577304 (regexDepth!364 (ite c!1216030 (regTwo!33447 r!7292) (regOne!33446 r!7292))))))

(declare-fun b!6601170 () Bool)

(assert (=> b!6601170 (= e!3994263 1)))

(declare-fun b!6601171 () Bool)

(declare-fun call!577307 () Int)

(assert (=> b!6601171 (= e!3994269 (+ 1 call!577307))))

(declare-fun b!6601172 () Bool)

(declare-fun e!3994260 () Bool)

(declare-fun call!577310 () Int)

(assert (=> b!6601172 (= e!3994260 (> lt!2413557 call!577310))))

(declare-fun b!6601173 () Bool)

(assert (=> b!6601173 (= c!1216030 ((_ is Union!16467) r!7292))))

(assert (=> b!6601173 (= e!3994269 e!3994264)))

(declare-fun bm!577300 () Bool)

(declare-fun call!577308 () Int)

(declare-fun call!577305 () Int)

(assert (=> bm!577300 (= call!577308 call!577305)))

(declare-fun bm!577301 () Bool)

(assert (=> bm!577301 (= call!577307 (regexDepth!364 (ite c!1216028 (reg!16796 r!7292) (ite c!1216030 (regOne!33447 r!7292) (regTwo!33446 r!7292)))))))

(declare-fun b!6601174 () Bool)

(declare-fun res!2706710 () Bool)

(assert (=> b!6601174 (=> (not res!2706710) (not e!3994260))))

(assert (=> b!6601174 (= res!2706710 (> lt!2413557 call!577308))))

(declare-fun e!3994261 () Bool)

(assert (=> b!6601174 (= e!3994261 e!3994260)))

(declare-fun b!6601175 () Bool)

(declare-fun e!3994267 () Bool)

(assert (=> b!6601175 (= e!3994265 e!3994267)))

(declare-fun c!1216032 () Bool)

(assert (=> b!6601175 (= c!1216032 ((_ is Union!16467) r!7292))))

(declare-fun b!6601176 () Bool)

(declare-fun call!577306 () Int)

(assert (=> b!6601176 (= e!3994263 (+ 1 call!577306))))

(declare-fun b!6601177 () Bool)

(assert (=> b!6601177 (= e!3994266 (> lt!2413557 call!577308))))

(declare-fun b!6601178 () Bool)

(declare-fun c!1216031 () Bool)

(assert (=> b!6601178 (= c!1216031 ((_ is Star!16467) r!7292))))

(assert (=> b!6601178 (= e!3994261 e!3994266)))

(declare-fun b!6601179 () Bool)

(assert (=> b!6601179 (= e!3994267 e!3994261)))

(declare-fun c!1216029 () Bool)

(assert (=> b!6601179 (= c!1216029 ((_ is Concat!25312) r!7292))))

(declare-fun b!6601180 () Bool)

(declare-fun e!3994262 () Bool)

(assert (=> b!6601180 (= e!3994267 e!3994262)))

(declare-fun res!2706711 () Bool)

(assert (=> b!6601180 (= res!2706711 (> lt!2413557 call!577310))))

(assert (=> b!6601180 (=> (not res!2706711) (not e!3994262))))

(declare-fun b!6601181 () Bool)

(assert (=> b!6601181 (= e!3994264 (+ 1 call!577306))))

(declare-fun bm!577302 () Bool)

(declare-fun call!577309 () Int)

(assert (=> bm!577302 (= call!577309 call!577307)))

(declare-fun bm!577303 () Bool)

(assert (=> bm!577303 (= call!577305 (regexDepth!364 (ite c!1216032 (regTwo!33447 r!7292) (ite c!1216029 (regOne!33446 r!7292) (reg!16796 r!7292)))))))

(declare-fun bm!577304 () Bool)

(assert (=> bm!577304 (= call!577306 (maxBigInt!0 (ite c!1216030 call!577309 call!577304) (ite c!1216030 call!577304 call!577309)))))

(declare-fun bm!577305 () Bool)

(assert (=> bm!577305 (= call!577310 (regexDepth!364 (ite c!1216032 (regOne!33447 r!7292) (regTwo!33446 r!7292))))))

(declare-fun b!6601182 () Bool)

(assert (=> b!6601182 (= e!3994262 (> lt!2413557 call!577305))))

(assert (= (and d!2070469 c!1216033) b!6601166))

(assert (= (and d!2070469 (not c!1216033)) b!6601168))

(assert (= (and b!6601168 c!1216028) b!6601171))

(assert (= (and b!6601168 (not c!1216028)) b!6601173))

(assert (= (and b!6601173 c!1216030) b!6601181))

(assert (= (and b!6601173 (not c!1216030)) b!6601169))

(assert (= (and b!6601169 c!1216027) b!6601176))

(assert (= (and b!6601169 (not c!1216027)) b!6601170))

(assert (= (or b!6601181 b!6601176) bm!577299))

(assert (= (or b!6601181 b!6601176) bm!577302))

(assert (= (or b!6601181 b!6601176) bm!577304))

(assert (= (or b!6601171 bm!577302) bm!577301))

(assert (= (and d!2070469 res!2706712) b!6601175))

(assert (= (and b!6601175 c!1216032) b!6601180))

(assert (= (and b!6601175 (not c!1216032)) b!6601179))

(assert (= (and b!6601180 res!2706711) b!6601182))

(assert (= (and b!6601179 c!1216029) b!6601174))

(assert (= (and b!6601179 (not c!1216029)) b!6601178))

(assert (= (and b!6601174 res!2706710) b!6601172))

(assert (= (and b!6601178 c!1216031) b!6601177))

(assert (= (and b!6601178 (not c!1216031)) b!6601167))

(assert (= (or b!6601174 b!6601177) bm!577300))

(assert (= (or b!6601182 bm!577300) bm!577303))

(assert (= (or b!6601180 b!6601172) bm!577305))

(declare-fun m!7377382 () Bool)

(assert (=> bm!577303 m!7377382))

(declare-fun m!7377384 () Bool)

(assert (=> bm!577299 m!7377384))

(declare-fun m!7377386 () Bool)

(assert (=> bm!577301 m!7377386))

(declare-fun m!7377388 () Bool)

(assert (=> bm!577305 m!7377388))

(declare-fun m!7377390 () Bool)

(assert (=> bm!577304 m!7377390))

(assert (=> b!6600491 d!2070469))

(declare-fun b!6601183 () Bool)

(declare-fun e!3994278 () Int)

(assert (=> b!6601183 (= e!3994278 1)))

(declare-fun d!2070485 () Bool)

(declare-fun e!3994275 () Bool)

(assert (=> d!2070485 e!3994275))

(declare-fun res!2706715 () Bool)

(assert (=> d!2070485 (=> (not res!2706715) (not e!3994275))))

(declare-fun lt!2413558 () Int)

(assert (=> d!2070485 (= res!2706715 (> lt!2413558 0))))

(assert (=> d!2070485 (= lt!2413558 e!3994278)))

(declare-fun c!1216040 () Bool)

(assert (=> d!2070485 (= c!1216040 ((_ is ElementMatch!16467) lt!2413439))))

(assert (=> d!2070485 (= (regexDepth!364 lt!2413439) lt!2413558)))

(declare-fun b!6601184 () Bool)

(declare-fun e!3994276 () Bool)

(assert (=> b!6601184 (= e!3994276 (= lt!2413558 1))))

(declare-fun b!6601185 () Bool)

(declare-fun e!3994279 () Int)

(assert (=> b!6601185 (= e!3994278 e!3994279)))

(declare-fun c!1216035 () Bool)

(assert (=> b!6601185 (= c!1216035 ((_ is Star!16467) lt!2413439))))

(declare-fun b!6601186 () Bool)

(declare-fun e!3994274 () Int)

(declare-fun e!3994273 () Int)

(assert (=> b!6601186 (= e!3994274 e!3994273)))

(declare-fun c!1216034 () Bool)

(assert (=> b!6601186 (= c!1216034 ((_ is Concat!25312) lt!2413439))))

(declare-fun bm!577306 () Bool)

(declare-fun call!577311 () Int)

(declare-fun c!1216037 () Bool)

(assert (=> bm!577306 (= call!577311 (regexDepth!364 (ite c!1216037 (regTwo!33447 lt!2413439) (regOne!33446 lt!2413439))))))

(declare-fun b!6601187 () Bool)

(assert (=> b!6601187 (= e!3994273 1)))

(declare-fun b!6601188 () Bool)

(declare-fun call!577314 () Int)

(assert (=> b!6601188 (= e!3994279 (+ 1 call!577314))))

(declare-fun b!6601189 () Bool)

(declare-fun e!3994270 () Bool)

(declare-fun call!577317 () Int)

(assert (=> b!6601189 (= e!3994270 (> lt!2413558 call!577317))))

(declare-fun b!6601190 () Bool)

(assert (=> b!6601190 (= c!1216037 ((_ is Union!16467) lt!2413439))))

(assert (=> b!6601190 (= e!3994279 e!3994274)))

(declare-fun bm!577307 () Bool)

(declare-fun call!577315 () Int)

(declare-fun call!577312 () Int)

(assert (=> bm!577307 (= call!577315 call!577312)))

(declare-fun bm!577308 () Bool)

(assert (=> bm!577308 (= call!577314 (regexDepth!364 (ite c!1216035 (reg!16796 lt!2413439) (ite c!1216037 (regOne!33447 lt!2413439) (regTwo!33446 lt!2413439)))))))

(declare-fun b!6601191 () Bool)

(declare-fun res!2706713 () Bool)

(assert (=> b!6601191 (=> (not res!2706713) (not e!3994270))))

(assert (=> b!6601191 (= res!2706713 (> lt!2413558 call!577315))))

(declare-fun e!3994271 () Bool)

(assert (=> b!6601191 (= e!3994271 e!3994270)))

(declare-fun b!6601192 () Bool)

(declare-fun e!3994277 () Bool)

(assert (=> b!6601192 (= e!3994275 e!3994277)))

(declare-fun c!1216039 () Bool)

(assert (=> b!6601192 (= c!1216039 ((_ is Union!16467) lt!2413439))))

(declare-fun b!6601193 () Bool)

(declare-fun call!577313 () Int)

(assert (=> b!6601193 (= e!3994273 (+ 1 call!577313))))

(declare-fun b!6601194 () Bool)

(assert (=> b!6601194 (= e!3994276 (> lt!2413558 call!577315))))

(declare-fun b!6601195 () Bool)

(declare-fun c!1216038 () Bool)

(assert (=> b!6601195 (= c!1216038 ((_ is Star!16467) lt!2413439))))

(assert (=> b!6601195 (= e!3994271 e!3994276)))

(declare-fun b!6601196 () Bool)

(assert (=> b!6601196 (= e!3994277 e!3994271)))

(declare-fun c!1216036 () Bool)

(assert (=> b!6601196 (= c!1216036 ((_ is Concat!25312) lt!2413439))))

(declare-fun b!6601197 () Bool)

(declare-fun e!3994272 () Bool)

(assert (=> b!6601197 (= e!3994277 e!3994272)))

(declare-fun res!2706714 () Bool)

(assert (=> b!6601197 (= res!2706714 (> lt!2413558 call!577317))))

(assert (=> b!6601197 (=> (not res!2706714) (not e!3994272))))

(declare-fun b!6601198 () Bool)

(assert (=> b!6601198 (= e!3994274 (+ 1 call!577313))))

(declare-fun bm!577309 () Bool)

(declare-fun call!577316 () Int)

(assert (=> bm!577309 (= call!577316 call!577314)))

(declare-fun bm!577310 () Bool)

(assert (=> bm!577310 (= call!577312 (regexDepth!364 (ite c!1216039 (regTwo!33447 lt!2413439) (ite c!1216036 (regOne!33446 lt!2413439) (reg!16796 lt!2413439)))))))

(declare-fun bm!577311 () Bool)

(assert (=> bm!577311 (= call!577313 (maxBigInt!0 (ite c!1216037 call!577316 call!577311) (ite c!1216037 call!577311 call!577316)))))

(declare-fun bm!577312 () Bool)

(assert (=> bm!577312 (= call!577317 (regexDepth!364 (ite c!1216039 (regOne!33447 lt!2413439) (regTwo!33446 lt!2413439))))))

(declare-fun b!6601199 () Bool)

(assert (=> b!6601199 (= e!3994272 (> lt!2413558 call!577312))))

(assert (= (and d!2070485 c!1216040) b!6601183))

(assert (= (and d!2070485 (not c!1216040)) b!6601185))

(assert (= (and b!6601185 c!1216035) b!6601188))

(assert (= (and b!6601185 (not c!1216035)) b!6601190))

(assert (= (and b!6601190 c!1216037) b!6601198))

(assert (= (and b!6601190 (not c!1216037)) b!6601186))

(assert (= (and b!6601186 c!1216034) b!6601193))

(assert (= (and b!6601186 (not c!1216034)) b!6601187))

(assert (= (or b!6601198 b!6601193) bm!577306))

(assert (= (or b!6601198 b!6601193) bm!577309))

(assert (= (or b!6601198 b!6601193) bm!577311))

(assert (= (or b!6601188 bm!577309) bm!577308))

(assert (= (and d!2070485 res!2706715) b!6601192))

(assert (= (and b!6601192 c!1216039) b!6601197))

(assert (= (and b!6601192 (not c!1216039)) b!6601196))

(assert (= (and b!6601197 res!2706714) b!6601199))

(assert (= (and b!6601196 c!1216036) b!6601191))

(assert (= (and b!6601196 (not c!1216036)) b!6601195))

(assert (= (and b!6601191 res!2706713) b!6601189))

(assert (= (and b!6601195 c!1216038) b!6601194))

(assert (= (and b!6601195 (not c!1216038)) b!6601184))

(assert (= (or b!6601191 b!6601194) bm!577307))

(assert (= (or b!6601199 bm!577307) bm!577310))

(assert (= (or b!6601197 b!6601189) bm!577312))

(declare-fun m!7377392 () Bool)

(assert (=> bm!577310 m!7377392))

(declare-fun m!7377394 () Bool)

(assert (=> bm!577306 m!7377394))

(declare-fun m!7377396 () Bool)

(assert (=> bm!577308 m!7377396))

(declare-fun m!7377398 () Bool)

(assert (=> bm!577312 m!7377398))

(declare-fun m!7377400 () Bool)

(assert (=> bm!577311 m!7377400))

(assert (=> b!6600491 d!2070485))

(declare-fun bs!1692390 () Bool)

(declare-fun d!2070487 () Bool)

(assert (= bs!1692390 (and d!2070487 d!2070371)))

(declare-fun lambda!367998 () Int)

(assert (=> bs!1692390 (= lambda!367998 lambda!367938)))

(declare-fun bs!1692392 () Bool)

(assert (= bs!1692392 (and d!2070487 d!2070379)))

(assert (=> bs!1692392 (= lambda!367998 lambda!367943)))

(declare-fun b!6601228 () Bool)

(declare-fun e!3994300 () Regex!16467)

(assert (=> b!6601228 (= e!3994300 (h!72025 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6601229 () Bool)

(declare-fun e!3994297 () Bool)

(declare-fun lt!2413564 () Regex!16467)

(declare-fun isConcat!1368 (Regex!16467) Bool)

(assert (=> b!6601229 (= e!3994297 (isConcat!1368 lt!2413564))))

(declare-fun b!6601230 () Bool)

(declare-fun e!3994296 () Bool)

(declare-fun isEmptyExpr!1845 (Regex!16467) Bool)

(assert (=> b!6601230 (= e!3994296 (isEmptyExpr!1845 lt!2413564))))

(declare-fun b!6601231 () Bool)

(declare-fun e!3994298 () Regex!16467)

(assert (=> b!6601231 (= e!3994298 EmptyExpr!16467)))

(declare-fun b!6601232 () Bool)

(declare-fun e!3994301 () Bool)

(assert (=> b!6601232 (= e!3994301 (isEmpty!37846 (t!379353 (t!379353 (exprs!6351 (h!72026 zl!343))))))))

(declare-fun e!3994299 () Bool)

(assert (=> d!2070487 e!3994299))

(declare-fun res!2706729 () Bool)

(assert (=> d!2070487 (=> (not res!2706729) (not e!3994299))))

(assert (=> d!2070487 (= res!2706729 (validRegex!8203 lt!2413564))))

(assert (=> d!2070487 (= lt!2413564 e!3994300)))

(declare-fun c!1216049 () Bool)

(assert (=> d!2070487 (= c!1216049 e!3994301)))

(declare-fun res!2706728 () Bool)

(assert (=> d!2070487 (=> (not res!2706728) (not e!3994301))))

(assert (=> d!2070487 (= res!2706728 ((_ is Cons!65577) (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(assert (=> d!2070487 (forall!15656 (t!379353 (exprs!6351 (h!72026 zl!343))) lambda!367998)))

(assert (=> d!2070487 (= (generalisedConcat!2064 (t!379353 (exprs!6351 (h!72026 zl!343)))) lt!2413564)))

(declare-fun b!6601233 () Bool)

(assert (=> b!6601233 (= e!3994298 (Concat!25312 (h!72025 (t!379353 (exprs!6351 (h!72026 zl!343)))) (generalisedConcat!2064 (t!379353 (t!379353 (exprs!6351 (h!72026 zl!343)))))))))

(declare-fun b!6601234 () Bool)

(assert (=> b!6601234 (= e!3994300 e!3994298)))

(declare-fun c!1216051 () Bool)

(assert (=> b!6601234 (= c!1216051 ((_ is Cons!65577) (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6601235 () Bool)

(assert (=> b!6601235 (= e!3994297 (= lt!2413564 (head!13385 (t!379353 (exprs!6351 (h!72026 zl!343))))))))

(declare-fun b!6601236 () Bool)

(assert (=> b!6601236 (= e!3994296 e!3994297)))

(declare-fun c!1216050 () Bool)

(assert (=> b!6601236 (= c!1216050 (isEmpty!37846 (tail!12470 (t!379353 (exprs!6351 (h!72026 zl!343))))))))

(declare-fun b!6601237 () Bool)

(assert (=> b!6601237 (= e!3994299 e!3994296)))

(declare-fun c!1216052 () Bool)

(assert (=> b!6601237 (= c!1216052 (isEmpty!37846 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(assert (= (and d!2070487 res!2706728) b!6601232))

(assert (= (and d!2070487 c!1216049) b!6601228))

(assert (= (and d!2070487 (not c!1216049)) b!6601234))

(assert (= (and b!6601234 c!1216051) b!6601233))

(assert (= (and b!6601234 (not c!1216051)) b!6601231))

(assert (= (and d!2070487 res!2706729) b!6601237))

(assert (= (and b!6601237 c!1216052) b!6601230))

(assert (= (and b!6601237 (not c!1216052)) b!6601236))

(assert (= (and b!6601236 c!1216050) b!6601235))

(assert (= (and b!6601236 (not c!1216050)) b!6601229))

(declare-fun m!7377402 () Bool)

(assert (=> b!6601233 m!7377402))

(declare-fun m!7377404 () Bool)

(assert (=> b!6601235 m!7377404))

(declare-fun m!7377406 () Bool)

(assert (=> b!6601230 m!7377406))

(declare-fun m!7377408 () Bool)

(assert (=> b!6601232 m!7377408))

(declare-fun m!7377410 () Bool)

(assert (=> b!6601236 m!7377410))

(assert (=> b!6601236 m!7377410))

(declare-fun m!7377412 () Bool)

(assert (=> b!6601236 m!7377412))

(declare-fun m!7377414 () Bool)

(assert (=> d!2070487 m!7377414))

(declare-fun m!7377416 () Bool)

(assert (=> d!2070487 m!7377416))

(declare-fun m!7377418 () Bool)

(assert (=> b!6601229 m!7377418))

(assert (=> b!6601237 m!7376844))

(assert (=> b!6600491 d!2070487))

(declare-fun b!6601258 () Bool)

(declare-fun e!3994319 () Bool)

(declare-fun e!3994318 () Bool)

(assert (=> b!6601258 (= e!3994319 e!3994318)))

(declare-fun c!1216057 () Bool)

(assert (=> b!6601258 (= c!1216057 ((_ is Union!16467) r!7292))))

(declare-fun bm!577319 () Bool)

(declare-fun call!577325 () Bool)

(declare-fun c!1216058 () Bool)

(assert (=> bm!577319 (= call!577325 (validRegex!8203 (ite c!1216058 (reg!16796 r!7292) (ite c!1216057 (regTwo!33447 r!7292) (regTwo!33446 r!7292)))))))

(declare-fun b!6601259 () Bool)

(declare-fun e!3994322 () Bool)

(assert (=> b!6601259 (= e!3994319 e!3994322)))

(declare-fun res!2706744 () Bool)

(assert (=> b!6601259 (= res!2706744 (not (nullable!6460 (reg!16796 r!7292))))))

(assert (=> b!6601259 (=> (not res!2706744) (not e!3994322))))

(declare-fun bm!577320 () Bool)

(declare-fun call!577326 () Bool)

(assert (=> bm!577320 (= call!577326 (validRegex!8203 (ite c!1216057 (regOne!33447 r!7292) (regOne!33446 r!7292))))))

(declare-fun b!6601260 () Bool)

(declare-fun e!3994320 () Bool)

(declare-fun call!577324 () Bool)

(assert (=> b!6601260 (= e!3994320 call!577324)))

(declare-fun b!6601261 () Bool)

(declare-fun e!3994323 () Bool)

(declare-fun e!3994321 () Bool)

(assert (=> b!6601261 (= e!3994323 e!3994321)))

(declare-fun res!2706746 () Bool)

(assert (=> b!6601261 (=> (not res!2706746) (not e!3994321))))

(assert (=> b!6601261 (= res!2706746 call!577326)))

(declare-fun bm!577321 () Bool)

(assert (=> bm!577321 (= call!577324 call!577325)))

(declare-fun b!6601262 () Bool)

(declare-fun res!2706745 () Bool)

(assert (=> b!6601262 (=> res!2706745 e!3994323)))

(assert (=> b!6601262 (= res!2706745 (not ((_ is Concat!25312) r!7292)))))

(assert (=> b!6601262 (= e!3994318 e!3994323)))

(declare-fun b!6601263 () Bool)

(assert (=> b!6601263 (= e!3994322 call!577325)))

(declare-fun b!6601265 () Bool)

(assert (=> b!6601265 (= e!3994321 call!577324)))

(declare-fun b!6601266 () Bool)

(declare-fun e!3994324 () Bool)

(assert (=> b!6601266 (= e!3994324 e!3994319)))

(assert (=> b!6601266 (= c!1216058 ((_ is Star!16467) r!7292))))

(declare-fun b!6601264 () Bool)

(declare-fun res!2706743 () Bool)

(assert (=> b!6601264 (=> (not res!2706743) (not e!3994320))))

(assert (=> b!6601264 (= res!2706743 call!577326)))

(assert (=> b!6601264 (= e!3994318 e!3994320)))

(declare-fun d!2070489 () Bool)

(declare-fun res!2706742 () Bool)

(assert (=> d!2070489 (=> res!2706742 e!3994324)))

(assert (=> d!2070489 (= res!2706742 ((_ is ElementMatch!16467) r!7292))))

(assert (=> d!2070489 (= (validRegex!8203 r!7292) e!3994324)))

(assert (= (and d!2070489 (not res!2706742)) b!6601266))

(assert (= (and b!6601266 c!1216058) b!6601259))

(assert (= (and b!6601266 (not c!1216058)) b!6601258))

(assert (= (and b!6601259 res!2706744) b!6601263))

(assert (= (and b!6601258 c!1216057) b!6601264))

(assert (= (and b!6601258 (not c!1216057)) b!6601262))

(assert (= (and b!6601264 res!2706743) b!6601260))

(assert (= (and b!6601262 (not res!2706745)) b!6601261))

(assert (= (and b!6601261 res!2706746) b!6601265))

(assert (= (or b!6601260 b!6601265) bm!577321))

(assert (= (or b!6601264 b!6601261) bm!577320))

(assert (= (or b!6601263 bm!577321) bm!577319))

(declare-fun m!7377428 () Bool)

(assert (=> bm!577319 m!7377428))

(declare-fun m!7377430 () Bool)

(assert (=> b!6601259 m!7377430))

(declare-fun m!7377432 () Bool)

(assert (=> bm!577320 m!7377432))

(assert (=> start!645426 d!2070489))

(assert (=> b!6600509 d!2070341))

(declare-fun b!6601267 () Bool)

(declare-fun e!3994328 () Bool)

(assert (=> b!6601267 (= e!3994328 (nullable!6460 lt!2413436))))

(declare-fun b!6601268 () Bool)

(declare-fun e!3994327 () Bool)

(assert (=> b!6601268 (= e!3994327 (not (= (head!13384 s!2326) (c!1215814 lt!2413436))))))

(declare-fun b!6601269 () Bool)

(declare-fun e!3994325 () Bool)

(declare-fun e!3994330 () Bool)

(assert (=> b!6601269 (= e!3994325 e!3994330)))

(declare-fun res!2706748 () Bool)

(assert (=> b!6601269 (=> (not res!2706748) (not e!3994330))))

(declare-fun lt!2413567 () Bool)

(assert (=> b!6601269 (= res!2706748 (not lt!2413567))))

(declare-fun b!6601270 () Bool)

(assert (=> b!6601270 (= e!3994328 (matchR!8650 (derivativeStep!5151 lt!2413436 (head!13384 s!2326)) (tail!12469 s!2326)))))

(declare-fun b!6601272 () Bool)

(declare-fun e!3994326 () Bool)

(assert (=> b!6601272 (= e!3994326 (= (head!13384 s!2326) (c!1215814 lt!2413436)))))

(declare-fun b!6601273 () Bool)

(declare-fun res!2706750 () Bool)

(assert (=> b!6601273 (=> res!2706750 e!3994325)))

(assert (=> b!6601273 (= res!2706750 e!3994326)))

(declare-fun res!2706753 () Bool)

(assert (=> b!6601273 (=> (not res!2706753) (not e!3994326))))

(assert (=> b!6601273 (= res!2706753 lt!2413567)))

(declare-fun b!6601274 () Bool)

(declare-fun res!2706752 () Bool)

(assert (=> b!6601274 (=> (not res!2706752) (not e!3994326))))

(declare-fun call!577327 () Bool)

(assert (=> b!6601274 (= res!2706752 (not call!577327))))

(declare-fun bm!577322 () Bool)

(assert (=> bm!577322 (= call!577327 (isEmpty!37848 s!2326))))

(declare-fun b!6601275 () Bool)

(declare-fun res!2706754 () Bool)

(assert (=> b!6601275 (=> res!2706754 e!3994325)))

(assert (=> b!6601275 (= res!2706754 (not ((_ is ElementMatch!16467) lt!2413436)))))

(declare-fun e!3994329 () Bool)

(assert (=> b!6601275 (= e!3994329 e!3994325)))

(declare-fun b!6601276 () Bool)

(declare-fun e!3994331 () Bool)

(assert (=> b!6601276 (= e!3994331 e!3994329)))

(declare-fun c!1216060 () Bool)

(assert (=> b!6601276 (= c!1216060 ((_ is EmptyLang!16467) lt!2413436))))

(declare-fun b!6601277 () Bool)

(assert (=> b!6601277 (= e!3994330 e!3994327)))

(declare-fun res!2706747 () Bool)

(assert (=> b!6601277 (=> res!2706747 e!3994327)))

(assert (=> b!6601277 (= res!2706747 call!577327)))

(declare-fun b!6601278 () Bool)

(assert (=> b!6601278 (= e!3994329 (not lt!2413567))))

(declare-fun b!6601279 () Bool)

(declare-fun res!2706751 () Bool)

(assert (=> b!6601279 (=> res!2706751 e!3994327)))

(assert (=> b!6601279 (= res!2706751 (not (isEmpty!37848 (tail!12469 s!2326))))))

(declare-fun b!6601280 () Bool)

(declare-fun res!2706749 () Bool)

(assert (=> b!6601280 (=> (not res!2706749) (not e!3994326))))

(assert (=> b!6601280 (= res!2706749 (isEmpty!37848 (tail!12469 s!2326)))))

(declare-fun b!6601271 () Bool)

(assert (=> b!6601271 (= e!3994331 (= lt!2413567 call!577327))))

(declare-fun d!2070495 () Bool)

(assert (=> d!2070495 e!3994331))

(declare-fun c!1216061 () Bool)

(assert (=> d!2070495 (= c!1216061 ((_ is EmptyExpr!16467) lt!2413436))))

(assert (=> d!2070495 (= lt!2413567 e!3994328)))

(declare-fun c!1216059 () Bool)

(assert (=> d!2070495 (= c!1216059 (isEmpty!37848 s!2326))))

(assert (=> d!2070495 (validRegex!8203 lt!2413436)))

(assert (=> d!2070495 (= (matchR!8650 lt!2413436 s!2326) lt!2413567)))

(assert (= (and d!2070495 c!1216059) b!6601267))

(assert (= (and d!2070495 (not c!1216059)) b!6601270))

(assert (= (and d!2070495 c!1216061) b!6601271))

(assert (= (and d!2070495 (not c!1216061)) b!6601276))

(assert (= (and b!6601276 c!1216060) b!6601278))

(assert (= (and b!6601276 (not c!1216060)) b!6601275))

(assert (= (and b!6601275 (not res!2706754)) b!6601273))

(assert (= (and b!6601273 res!2706753) b!6601274))

(assert (= (and b!6601274 res!2706752) b!6601280))

(assert (= (and b!6601280 res!2706749) b!6601272))

(assert (= (and b!6601273 (not res!2706750)) b!6601269))

(assert (= (and b!6601269 res!2706748) b!6601277))

(assert (= (and b!6601277 (not res!2706747)) b!6601279))

(assert (= (and b!6601279 (not res!2706751)) b!6601268))

(assert (= (or b!6601271 b!6601274 b!6601277) bm!577322))

(assert (=> b!6601268 m!7377308))

(declare-fun m!7377436 () Bool)

(assert (=> b!6601267 m!7377436))

(assert (=> b!6601270 m!7377308))

(assert (=> b!6601270 m!7377308))

(declare-fun m!7377438 () Bool)

(assert (=> b!6601270 m!7377438))

(assert (=> b!6601270 m!7377314))

(assert (=> b!6601270 m!7377438))

(assert (=> b!6601270 m!7377314))

(declare-fun m!7377442 () Bool)

(assert (=> b!6601270 m!7377442))

(assert (=> b!6601272 m!7377308))

(assert (=> b!6601280 m!7377314))

(assert (=> b!6601280 m!7377314))

(assert (=> b!6601280 m!7377318))

(assert (=> d!2070495 m!7377248))

(declare-fun m!7377446 () Bool)

(assert (=> d!2070495 m!7377446))

(assert (=> bm!577322 m!7377248))

(assert (=> b!6601279 m!7377314))

(assert (=> b!6601279 m!7377314))

(assert (=> b!6601279 m!7377318))

(assert (=> b!6600510 d!2070495))

(declare-fun bs!1692400 () Bool)

(declare-fun b!6601294 () Bool)

(assert (= bs!1692400 (and b!6601294 b!6600495)))

(declare-fun lambda!368000 () Int)

(assert (=> bs!1692400 (not (= lambda!368000 lambda!367921))))

(declare-fun bs!1692401 () Bool)

(assert (= bs!1692401 (and b!6601294 b!6600499)))

(assert (=> bs!1692401 (not (= lambda!368000 lambda!367919))))

(declare-fun bs!1692402 () Bool)

(assert (= bs!1692402 (and b!6601294 b!6600987)))

(assert (=> bs!1692402 (not (= lambda!368000 lambda!367979))))

(declare-fun bs!1692403 () Bool)

(assert (= bs!1692403 (and b!6601294 b!6600991)))

(assert (=> bs!1692403 (= (and (= (reg!16796 lt!2413436) (reg!16796 r!7292)) (= lt!2413436 r!7292)) (= lambda!368000 lambda!367978))))

(assert (=> bs!1692401 (not (= lambda!368000 lambda!367918))))

(assert (=> b!6601294 true))

(assert (=> b!6601294 true))

(declare-fun bs!1692404 () Bool)

(declare-fun b!6601290 () Bool)

(assert (= bs!1692404 (and b!6601290 b!6600495)))

(declare-fun lambda!368001 () Int)

(assert (=> bs!1692404 (not (= lambda!368001 lambda!367921))))

(declare-fun bs!1692405 () Bool)

(assert (= bs!1692405 (and b!6601290 b!6601294)))

(assert (=> bs!1692405 (not (= lambda!368001 lambda!368000))))

(declare-fun bs!1692406 () Bool)

(assert (= bs!1692406 (and b!6601290 b!6600499)))

(assert (=> bs!1692406 (= (and (= (regOne!33446 lt!2413436) (regOne!33446 r!7292)) (= (regTwo!33446 lt!2413436) (regTwo!33446 r!7292))) (= lambda!368001 lambda!367919))))

(declare-fun bs!1692407 () Bool)

(assert (= bs!1692407 (and b!6601290 b!6600987)))

(assert (=> bs!1692407 (= (and (= (regOne!33446 lt!2413436) (regOne!33446 r!7292)) (= (regTwo!33446 lt!2413436) (regTwo!33446 r!7292))) (= lambda!368001 lambda!367979))))

(declare-fun bs!1692408 () Bool)

(assert (= bs!1692408 (and b!6601290 b!6600991)))

(assert (=> bs!1692408 (not (= lambda!368001 lambda!367978))))

(assert (=> bs!1692406 (not (= lambda!368001 lambda!367918))))

(assert (=> b!6601290 true))

(assert (=> b!6601290 true))

(declare-fun b!6601286 () Bool)

(declare-fun e!3994337 () Bool)

(declare-fun call!577328 () Bool)

(assert (=> b!6601286 (= e!3994337 call!577328)))

(declare-fun b!6601287 () Bool)

(declare-fun e!3994334 () Bool)

(declare-fun e!3994336 () Bool)

(assert (=> b!6601287 (= e!3994334 e!3994336)))

(declare-fun c!1216066 () Bool)

(assert (=> b!6601287 (= c!1216066 ((_ is Star!16467) lt!2413436))))

(declare-fun b!6601288 () Bool)

(declare-fun e!3994339 () Bool)

(assert (=> b!6601288 (= e!3994334 e!3994339)))

(declare-fun res!2706756 () Bool)

(assert (=> b!6601288 (= res!2706756 (matchRSpec!3568 (regOne!33447 lt!2413436) s!2326))))

(assert (=> b!6601288 (=> res!2706756 e!3994339)))

(declare-fun b!6601289 () Bool)

(assert (=> b!6601289 (= e!3994339 (matchRSpec!3568 (regTwo!33447 lt!2413436) s!2326))))

(declare-fun call!577329 () Bool)

(assert (=> b!6601290 (= e!3994336 call!577329)))

(declare-fun d!2070501 () Bool)

(declare-fun c!1216067 () Bool)

(assert (=> d!2070501 (= c!1216067 ((_ is EmptyExpr!16467) lt!2413436))))

(assert (=> d!2070501 (= (matchRSpec!3568 lt!2413436 s!2326) e!3994337)))

(declare-fun b!6601291 () Bool)

(declare-fun e!3994338 () Bool)

(assert (=> b!6601291 (= e!3994338 (= s!2326 (Cons!65576 (c!1215814 lt!2413436) Nil!65576)))))

(declare-fun bm!577323 () Bool)

(assert (=> bm!577323 (= call!577329 (Exists!3537 (ite c!1216066 lambda!368000 lambda!368001)))))

(declare-fun b!6601292 () Bool)

(declare-fun c!1216064 () Bool)

(assert (=> b!6601292 (= c!1216064 ((_ is ElementMatch!16467) lt!2413436))))

(declare-fun e!3994340 () Bool)

(assert (=> b!6601292 (= e!3994340 e!3994338)))

(declare-fun b!6601293 () Bool)

(declare-fun c!1216065 () Bool)

(assert (=> b!6601293 (= c!1216065 ((_ is Union!16467) lt!2413436))))

(assert (=> b!6601293 (= e!3994338 e!3994334)))

(declare-fun bm!577324 () Bool)

(assert (=> bm!577324 (= call!577328 (isEmpty!37848 s!2326))))

(declare-fun e!3994341 () Bool)

(assert (=> b!6601294 (= e!3994341 call!577329)))

(declare-fun b!6601295 () Bool)

(declare-fun res!2706758 () Bool)

(assert (=> b!6601295 (=> res!2706758 e!3994341)))

(assert (=> b!6601295 (= res!2706758 call!577328)))

(assert (=> b!6601295 (= e!3994336 e!3994341)))

(declare-fun b!6601296 () Bool)

(assert (=> b!6601296 (= e!3994337 e!3994340)))

(declare-fun res!2706757 () Bool)

(assert (=> b!6601296 (= res!2706757 (not ((_ is EmptyLang!16467) lt!2413436)))))

(assert (=> b!6601296 (=> (not res!2706757) (not e!3994340))))

(assert (= (and d!2070501 c!1216067) b!6601286))

(assert (= (and d!2070501 (not c!1216067)) b!6601296))

(assert (= (and b!6601296 res!2706757) b!6601292))

(assert (= (and b!6601292 c!1216064) b!6601291))

(assert (= (and b!6601292 (not c!1216064)) b!6601293))

(assert (= (and b!6601293 c!1216065) b!6601288))

(assert (= (and b!6601293 (not c!1216065)) b!6601287))

(assert (= (and b!6601288 (not res!2706756)) b!6601289))

(assert (= (and b!6601287 c!1216066) b!6601295))

(assert (= (and b!6601287 (not c!1216066)) b!6601290))

(assert (= (and b!6601295 (not res!2706758)) b!6601294))

(assert (= (or b!6601294 b!6601290) bm!577323))

(assert (= (or b!6601286 b!6601295) bm!577324))

(declare-fun m!7377456 () Bool)

(assert (=> b!6601288 m!7377456))

(declare-fun m!7377458 () Bool)

(assert (=> b!6601289 m!7377458))

(declare-fun m!7377460 () Bool)

(assert (=> bm!577323 m!7377460))

(assert (=> bm!577324 m!7377248))

(assert (=> b!6600510 d!2070501))

(declare-fun d!2070505 () Bool)

(assert (=> d!2070505 (= (matchR!8650 lt!2413436 s!2326) (matchRSpec!3568 lt!2413436 s!2326))))

(declare-fun lt!2413569 () Unit!159203)

(assert (=> d!2070505 (= lt!2413569 (choose!49270 lt!2413436 s!2326))))

(assert (=> d!2070505 (validRegex!8203 lt!2413436)))

(assert (=> d!2070505 (= (mainMatchTheorem!3568 lt!2413436 s!2326) lt!2413569)))

(declare-fun bs!1692409 () Bool)

(assert (= bs!1692409 d!2070505))

(assert (=> bs!1692409 m!7376828))

(assert (=> bs!1692409 m!7376830))

(declare-fun m!7377462 () Bool)

(assert (=> bs!1692409 m!7377462))

(assert (=> bs!1692409 m!7377446))

(assert (=> b!6600510 d!2070505))

(assert (=> b!6600531 d!2070341))

(declare-fun d!2070507 () Bool)

(declare-fun nullableFct!2386 (Regex!16467) Bool)

(assert (=> d!2070507 (= (nullable!6460 (regOne!33446 (regOne!33446 r!7292))) (nullableFct!2386 (regOne!33446 (regOne!33446 r!7292))))))

(declare-fun bs!1692410 () Bool)

(assert (= bs!1692410 d!2070507))

(declare-fun m!7377464 () Bool)

(assert (=> bs!1692410 m!7377464))

(assert (=> b!6600508 d!2070507))

(declare-fun d!2070509 () Bool)

(declare-fun c!1216068 () Bool)

(assert (=> d!2070509 (= c!1216068 (isEmpty!37848 s!2326))))

(declare-fun e!3994342 () Bool)

(assert (=> d!2070509 (= (matchZipper!2479 lt!2413414 s!2326) e!3994342)))

(declare-fun b!6601297 () Bool)

(assert (=> b!6601297 (= e!3994342 (nullableZipper!2212 lt!2413414))))

(declare-fun b!6601298 () Bool)

(assert (=> b!6601298 (= e!3994342 (matchZipper!2479 (derivationStepZipper!2433 lt!2413414 (head!13384 s!2326)) (tail!12469 s!2326)))))

(assert (= (and d!2070509 c!1216068) b!6601297))

(assert (= (and d!2070509 (not c!1216068)) b!6601298))

(assert (=> d!2070509 m!7377248))

(declare-fun m!7377466 () Bool)

(assert (=> b!6601297 m!7377466))

(assert (=> b!6601298 m!7377308))

(assert (=> b!6601298 m!7377308))

(declare-fun m!7377468 () Bool)

(assert (=> b!6601298 m!7377468))

(assert (=> b!6601298 m!7377314))

(assert (=> b!6601298 m!7377468))

(assert (=> b!6601298 m!7377314))

(declare-fun m!7377470 () Bool)

(assert (=> b!6601298 m!7377470))

(assert (=> b!6600529 d!2070509))

(declare-fun d!2070511 () Bool)

(declare-fun c!1216069 () Bool)

(assert (=> d!2070511 (= c!1216069 (isEmpty!37848 (t!379352 s!2326)))))

(declare-fun e!3994343 () Bool)

(assert (=> d!2070511 (= (matchZipper!2479 lt!2413443 (t!379352 s!2326)) e!3994343)))

(declare-fun b!6601299 () Bool)

(assert (=> b!6601299 (= e!3994343 (nullableZipper!2212 lt!2413443))))

(declare-fun b!6601300 () Bool)

(assert (=> b!6601300 (= e!3994343 (matchZipper!2479 (derivationStepZipper!2433 lt!2413443 (head!13384 (t!379352 s!2326))) (tail!12469 (t!379352 s!2326))))))

(assert (= (and d!2070511 c!1216069) b!6601299))

(assert (= (and d!2070511 (not c!1216069)) b!6601300))

(assert (=> d!2070511 m!7376950))

(declare-fun m!7377472 () Bool)

(assert (=> b!6601299 m!7377472))

(assert (=> b!6601300 m!7376954))

(assert (=> b!6601300 m!7376954))

(declare-fun m!7377474 () Bool)

(assert (=> b!6601300 m!7377474))

(assert (=> b!6601300 m!7376958))

(assert (=> b!6601300 m!7377474))

(assert (=> b!6601300 m!7376958))

(declare-fun m!7377476 () Bool)

(assert (=> b!6601300 m!7377476))

(assert (=> b!6600529 d!2070511))

(declare-fun bs!1692411 () Bool)

(declare-fun d!2070513 () Bool)

(assert (= bs!1692411 (and d!2070513 b!6600521)))

(declare-fun lambda!368002 () Int)

(assert (=> bs!1692411 (= lambda!368002 lambda!367920)))

(declare-fun bs!1692412 () Bool)

(assert (= bs!1692412 (and d!2070513 d!2070365)))

(assert (=> bs!1692412 (= lambda!368002 lambda!367932)))

(assert (=> d!2070513 true))

(assert (=> d!2070513 (= (derivationStepZipper!2433 lt!2413429 (h!72024 s!2326)) (flatMap!1972 lt!2413429 lambda!368002))))

(declare-fun bs!1692413 () Bool)

(assert (= bs!1692413 d!2070513))

(declare-fun m!7377478 () Bool)

(assert (=> bs!1692413 m!7377478))

(assert (=> b!6600507 d!2070513))

(declare-fun d!2070515 () Bool)

(assert (=> d!2070515 (= (flatMap!1972 lt!2413429 lambda!367920) (choose!49266 lt!2413429 lambda!367920))))

(declare-fun bs!1692414 () Bool)

(assert (= bs!1692414 d!2070515))

(declare-fun m!7377480 () Bool)

(assert (=> bs!1692414 m!7377480))

(assert (=> b!6600507 d!2070515))

(declare-fun b!6601317 () Bool)

(declare-fun e!3994353 () (InoxSet Context!11702))

(assert (=> b!6601317 (= e!3994353 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601318 () Bool)

(declare-fun e!3994352 () (InoxSet Context!11702))

(assert (=> b!6601318 (= e!3994352 e!3994353)))

(declare-fun c!1216079 () Bool)

(assert (=> b!6601318 (= c!1216079 ((_ is Cons!65577) (exprs!6351 lt!2413444)))))

(declare-fun d!2070517 () Bool)

(declare-fun c!1216078 () Bool)

(declare-fun e!3994354 () Bool)

(assert (=> d!2070517 (= c!1216078 e!3994354)))

(declare-fun res!2706759 () Bool)

(assert (=> d!2070517 (=> (not res!2706759) (not e!3994354))))

(assert (=> d!2070517 (= res!2706759 ((_ is Cons!65577) (exprs!6351 lt!2413444)))))

(assert (=> d!2070517 (= (derivationStepZipperUp!1641 lt!2413444 (h!72024 s!2326)) e!3994352)))

(declare-fun b!6601319 () Bool)

(declare-fun call!577330 () (InoxSet Context!11702))

(assert (=> b!6601319 (= e!3994352 ((_ map or) call!577330 (derivationStepZipperUp!1641 (Context!11703 (t!379353 (exprs!6351 lt!2413444))) (h!72024 s!2326))))))

(declare-fun b!6601320 () Bool)

(assert (=> b!6601320 (= e!3994354 (nullable!6460 (h!72025 (exprs!6351 lt!2413444))))))

(declare-fun b!6601321 () Bool)

(assert (=> b!6601321 (= e!3994353 call!577330)))

(declare-fun bm!577325 () Bool)

(assert (=> bm!577325 (= call!577330 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 lt!2413444)) (Context!11703 (t!379353 (exprs!6351 lt!2413444))) (h!72024 s!2326)))))

(assert (= (and d!2070517 res!2706759) b!6601320))

(assert (= (and d!2070517 c!1216078) b!6601319))

(assert (= (and d!2070517 (not c!1216078)) b!6601318))

(assert (= (and b!6601318 c!1216079) b!6601321))

(assert (= (and b!6601318 (not c!1216079)) b!6601317))

(assert (= (or b!6601319 b!6601321) bm!577325))

(declare-fun m!7377482 () Bool)

(assert (=> b!6601319 m!7377482))

(declare-fun m!7377484 () Bool)

(assert (=> b!6601320 m!7377484))

(declare-fun m!7377486 () Bool)

(assert (=> bm!577325 m!7377486))

(assert (=> b!6600507 d!2070517))

(declare-fun d!2070519 () Bool)

(assert (=> d!2070519 (= (flatMap!1972 lt!2413429 lambda!367920) (dynLambda!26113 lambda!367920 lt!2413444))))

(declare-fun lt!2413572 () Unit!159203)

(assert (=> d!2070519 (= lt!2413572 (choose!49267 lt!2413429 lt!2413444 lambda!367920))))

(assert (=> d!2070519 (= lt!2413429 (store ((as const (Array Context!11702 Bool)) false) lt!2413444 true))))

(assert (=> d!2070519 (= (lemmaFlatMapOnSingletonSet!1498 lt!2413429 lt!2413444 lambda!367920) lt!2413572)))

(declare-fun b_lambda!249829 () Bool)

(assert (=> (not b_lambda!249829) (not d!2070519)))

(declare-fun bs!1692415 () Bool)

(assert (= bs!1692415 d!2070519))

(assert (=> bs!1692415 m!7376894))

(declare-fun m!7377488 () Bool)

(assert (=> bs!1692415 m!7377488))

(declare-fun m!7377490 () Bool)

(assert (=> bs!1692415 m!7377490))

(assert (=> bs!1692415 m!7376896))

(assert (=> b!6600507 d!2070519))

(declare-fun d!2070521 () Bool)

(assert (=> d!2070521 (= (isEmpty!37845 (t!379354 zl!343)) ((_ is Nil!65578) (t!379354 zl!343)))))

(assert (=> b!6600504 d!2070521))

(declare-fun d!2070523 () Bool)

(declare-fun c!1216080 () Bool)

(assert (=> d!2070523 (= c!1216080 (isEmpty!37848 s!2326))))

(declare-fun e!3994355 () Bool)

(assert (=> d!2070523 (= (matchZipper!2479 z!1189 s!2326) e!3994355)))

(declare-fun b!6601322 () Bool)

(assert (=> b!6601322 (= e!3994355 (nullableZipper!2212 z!1189))))

(declare-fun b!6601323 () Bool)

(assert (=> b!6601323 (= e!3994355 (matchZipper!2479 (derivationStepZipper!2433 z!1189 (head!13384 s!2326)) (tail!12469 s!2326)))))

(assert (= (and d!2070523 c!1216080) b!6601322))

(assert (= (and d!2070523 (not c!1216080)) b!6601323))

(assert (=> d!2070523 m!7377248))

(declare-fun m!7377492 () Bool)

(assert (=> b!6601322 m!7377492))

(assert (=> b!6601323 m!7377308))

(assert (=> b!6601323 m!7377308))

(declare-fun m!7377494 () Bool)

(assert (=> b!6601323 m!7377494))

(assert (=> b!6601323 m!7377314))

(assert (=> b!6601323 m!7377494))

(assert (=> b!6601323 m!7377314))

(declare-fun m!7377496 () Bool)

(assert (=> b!6601323 m!7377496))

(assert (=> b!6600526 d!2070523))

(declare-fun d!2070525 () Bool)

(declare-fun lt!2413575 () Regex!16467)

(assert (=> d!2070525 (validRegex!8203 lt!2413575)))

(assert (=> d!2070525 (= lt!2413575 (generalisedUnion!2311 (unfocusZipperList!1888 (Cons!65578 lt!2413434 Nil!65578))))))

(assert (=> d!2070525 (= (unfocusZipper!2209 (Cons!65578 lt!2413434 Nil!65578)) lt!2413575)))

(declare-fun bs!1692416 () Bool)

(assert (= bs!1692416 d!2070525))

(declare-fun m!7377498 () Bool)

(assert (=> bs!1692416 m!7377498))

(declare-fun m!7377500 () Bool)

(assert (=> bs!1692416 m!7377500))

(assert (=> bs!1692416 m!7377500))

(declare-fun m!7377502 () Bool)

(assert (=> bs!1692416 m!7377502))

(assert (=> b!6600501 d!2070525))

(declare-fun d!2070527 () Bool)

(declare-fun lt!2413576 () Regex!16467)

(assert (=> d!2070527 (validRegex!8203 lt!2413576)))

(assert (=> d!2070527 (= lt!2413576 (generalisedUnion!2311 (unfocusZipperList!1888 (Cons!65578 lt!2413433 Nil!65578))))))

(assert (=> d!2070527 (= (unfocusZipper!2209 (Cons!65578 lt!2413433 Nil!65578)) lt!2413576)))

(declare-fun bs!1692417 () Bool)

(assert (= bs!1692417 d!2070527))

(declare-fun m!7377504 () Bool)

(assert (=> bs!1692417 m!7377504))

(declare-fun m!7377506 () Bool)

(assert (=> bs!1692417 m!7377506))

(assert (=> bs!1692417 m!7377506))

(declare-fun m!7377508 () Bool)

(assert (=> bs!1692417 m!7377508))

(assert (=> b!6600502 d!2070527))

(declare-fun d!2070529 () Bool)

(assert (=> d!2070529 (= (flatMap!1972 lt!2413420 lambda!367920) (dynLambda!26113 lambda!367920 lt!2413452))))

(declare-fun lt!2413577 () Unit!159203)

(assert (=> d!2070529 (= lt!2413577 (choose!49267 lt!2413420 lt!2413452 lambda!367920))))

(assert (=> d!2070529 (= lt!2413420 (store ((as const (Array Context!11702 Bool)) false) lt!2413452 true))))

(assert (=> d!2070529 (= (lemmaFlatMapOnSingletonSet!1498 lt!2413420 lt!2413452 lambda!367920) lt!2413577)))

(declare-fun b_lambda!249831 () Bool)

(assert (=> (not b_lambda!249831) (not d!2070529)))

(declare-fun bs!1692418 () Bool)

(assert (= bs!1692418 d!2070529))

(assert (=> bs!1692418 m!7376776))

(declare-fun m!7377510 () Bool)

(assert (=> bs!1692418 m!7377510))

(declare-fun m!7377512 () Bool)

(assert (=> bs!1692418 m!7377512))

(assert (=> bs!1692418 m!7376788))

(assert (=> b!6600502 d!2070529))

(declare-fun b!6601342 () Bool)

(declare-fun e!3994369 () (InoxSet Context!11702))

(assert (=> b!6601342 (= e!3994369 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601343 () Bool)

(declare-fun e!3994368 () (InoxSet Context!11702))

(assert (=> b!6601343 (= e!3994368 e!3994369)))

(declare-fun c!1216088 () Bool)

(assert (=> b!6601343 (= c!1216088 ((_ is Cons!65577) (exprs!6351 lt!2413433)))))

(declare-fun d!2070531 () Bool)

(declare-fun c!1216087 () Bool)

(declare-fun e!3994370 () Bool)

(assert (=> d!2070531 (= c!1216087 e!3994370)))

(declare-fun res!2706766 () Bool)

(assert (=> d!2070531 (=> (not res!2706766) (not e!3994370))))

(assert (=> d!2070531 (= res!2706766 ((_ is Cons!65577) (exprs!6351 lt!2413433)))))

(assert (=> d!2070531 (= (derivationStepZipperUp!1641 lt!2413433 (h!72024 s!2326)) e!3994368)))

(declare-fun call!577345 () (InoxSet Context!11702))

(declare-fun b!6601344 () Bool)

(assert (=> b!6601344 (= e!3994368 ((_ map or) call!577345 (derivationStepZipperUp!1641 (Context!11703 (t!379353 (exprs!6351 lt!2413433))) (h!72024 s!2326))))))

(declare-fun b!6601345 () Bool)

(assert (=> b!6601345 (= e!3994370 (nullable!6460 (h!72025 (exprs!6351 lt!2413433))))))

(declare-fun b!6601346 () Bool)

(assert (=> b!6601346 (= e!3994369 call!577345)))

(declare-fun bm!577340 () Bool)

(assert (=> bm!577340 (= call!577345 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 lt!2413433)) (Context!11703 (t!379353 (exprs!6351 lt!2413433))) (h!72024 s!2326)))))

(assert (= (and d!2070531 res!2706766) b!6601345))

(assert (= (and d!2070531 c!1216087) b!6601344))

(assert (= (and d!2070531 (not c!1216087)) b!6601343))

(assert (= (and b!6601343 c!1216088) b!6601346))

(assert (= (and b!6601343 (not c!1216088)) b!6601342))

(assert (= (or b!6601344 b!6601346) bm!577340))

(declare-fun m!7377514 () Bool)

(assert (=> b!6601344 m!7377514))

(declare-fun m!7377516 () Bool)

(assert (=> b!6601345 m!7377516))

(declare-fun m!7377518 () Bool)

(assert (=> bm!577340 m!7377518))

(assert (=> b!6600502 d!2070531))

(declare-fun b!6601347 () Bool)

(declare-fun e!3994372 () (InoxSet Context!11702))

(assert (=> b!6601347 (= e!3994372 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601348 () Bool)

(declare-fun e!3994371 () (InoxSet Context!11702))

(assert (=> b!6601348 (= e!3994371 e!3994372)))

(declare-fun c!1216090 () Bool)

(assert (=> b!6601348 (= c!1216090 ((_ is Cons!65577) (exprs!6351 lt!2413452)))))

(declare-fun d!2070533 () Bool)

(declare-fun c!1216089 () Bool)

(declare-fun e!3994373 () Bool)

(assert (=> d!2070533 (= c!1216089 e!3994373)))

(declare-fun res!2706767 () Bool)

(assert (=> d!2070533 (=> (not res!2706767) (not e!3994373))))

(assert (=> d!2070533 (= res!2706767 ((_ is Cons!65577) (exprs!6351 lt!2413452)))))

(assert (=> d!2070533 (= (derivationStepZipperUp!1641 lt!2413452 (h!72024 s!2326)) e!3994371)))

(declare-fun call!577346 () (InoxSet Context!11702))

(declare-fun b!6601349 () Bool)

(assert (=> b!6601349 (= e!3994371 ((_ map or) call!577346 (derivationStepZipperUp!1641 (Context!11703 (t!379353 (exprs!6351 lt!2413452))) (h!72024 s!2326))))))

(declare-fun b!6601350 () Bool)

(assert (=> b!6601350 (= e!3994373 (nullable!6460 (h!72025 (exprs!6351 lt!2413452))))))

(declare-fun b!6601351 () Bool)

(assert (=> b!6601351 (= e!3994372 call!577346)))

(declare-fun bm!577341 () Bool)

(assert (=> bm!577341 (= call!577346 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 lt!2413452)) (Context!11703 (t!379353 (exprs!6351 lt!2413452))) (h!72024 s!2326)))))

(assert (= (and d!2070533 res!2706767) b!6601350))

(assert (= (and d!2070533 c!1216089) b!6601349))

(assert (= (and d!2070533 (not c!1216089)) b!6601348))

(assert (= (and b!6601348 c!1216090) b!6601351))

(assert (= (and b!6601348 (not c!1216090)) b!6601347))

(assert (= (or b!6601349 b!6601351) bm!577341))

(declare-fun m!7377520 () Bool)

(assert (=> b!6601349 m!7377520))

(declare-fun m!7377522 () Bool)

(assert (=> b!6601350 m!7377522))

(declare-fun m!7377524 () Bool)

(assert (=> bm!577341 m!7377524))

(assert (=> b!6600502 d!2070533))

(declare-fun d!2070535 () Bool)

(assert (=> d!2070535 (= (flatMap!1972 lt!2413415 lambda!367920) (dynLambda!26113 lambda!367920 lt!2413433))))

(declare-fun lt!2413578 () Unit!159203)

(assert (=> d!2070535 (= lt!2413578 (choose!49267 lt!2413415 lt!2413433 lambda!367920))))

(assert (=> d!2070535 (= lt!2413415 (store ((as const (Array Context!11702 Bool)) false) lt!2413433 true))))

(assert (=> d!2070535 (= (lemmaFlatMapOnSingletonSet!1498 lt!2413415 lt!2413433 lambda!367920) lt!2413578)))

(declare-fun b_lambda!249833 () Bool)

(assert (=> (not b_lambda!249833) (not d!2070535)))

(declare-fun bs!1692419 () Bool)

(assert (= bs!1692419 d!2070535))

(assert (=> bs!1692419 m!7376778))

(declare-fun m!7377526 () Bool)

(assert (=> bs!1692419 m!7377526))

(declare-fun m!7377528 () Bool)

(assert (=> bs!1692419 m!7377528))

(assert (=> bs!1692419 m!7376774))

(assert (=> b!6600502 d!2070535))

(declare-fun d!2070537 () Bool)

(assert (=> d!2070537 (= (flatMap!1972 lt!2413415 lambda!367920) (choose!49266 lt!2413415 lambda!367920))))

(declare-fun bs!1692420 () Bool)

(assert (= bs!1692420 d!2070537))

(declare-fun m!7377530 () Bool)

(assert (=> bs!1692420 m!7377530))

(assert (=> b!6600502 d!2070537))

(declare-fun d!2070539 () Bool)

(assert (=> d!2070539 (= (flatMap!1972 lt!2413420 lambda!367920) (choose!49266 lt!2413420 lambda!367920))))

(declare-fun bs!1692421 () Bool)

(assert (= bs!1692421 d!2070539))

(declare-fun m!7377532 () Bool)

(assert (=> bs!1692421 m!7377532))

(assert (=> b!6600502 d!2070539))

(declare-fun b!6601352 () Bool)

(declare-fun e!3994377 () Bool)

(assert (=> b!6601352 (= e!3994377 (nullable!6460 (regTwo!33446 r!7292)))))

(declare-fun b!6601353 () Bool)

(declare-fun e!3994376 () Bool)

(assert (=> b!6601353 (= e!3994376 (not (= (head!13384 s!2326) (c!1215814 (regTwo!33446 r!7292)))))))

(declare-fun b!6601354 () Bool)

(declare-fun e!3994374 () Bool)

(declare-fun e!3994379 () Bool)

(assert (=> b!6601354 (= e!3994374 e!3994379)))

(declare-fun res!2706769 () Bool)

(assert (=> b!6601354 (=> (not res!2706769) (not e!3994379))))

(declare-fun lt!2413579 () Bool)

(assert (=> b!6601354 (= res!2706769 (not lt!2413579))))

(declare-fun b!6601355 () Bool)

(assert (=> b!6601355 (= e!3994377 (matchR!8650 (derivativeStep!5151 (regTwo!33446 r!7292) (head!13384 s!2326)) (tail!12469 s!2326)))))

(declare-fun b!6601357 () Bool)

(declare-fun e!3994375 () Bool)

(assert (=> b!6601357 (= e!3994375 (= (head!13384 s!2326) (c!1215814 (regTwo!33446 r!7292))))))

(declare-fun b!6601358 () Bool)

(declare-fun res!2706771 () Bool)

(assert (=> b!6601358 (=> res!2706771 e!3994374)))

(assert (=> b!6601358 (= res!2706771 e!3994375)))

(declare-fun res!2706774 () Bool)

(assert (=> b!6601358 (=> (not res!2706774) (not e!3994375))))

(assert (=> b!6601358 (= res!2706774 lt!2413579)))

(declare-fun b!6601359 () Bool)

(declare-fun res!2706773 () Bool)

(assert (=> b!6601359 (=> (not res!2706773) (not e!3994375))))

(declare-fun call!577347 () Bool)

(assert (=> b!6601359 (= res!2706773 (not call!577347))))

(declare-fun bm!577342 () Bool)

(assert (=> bm!577342 (= call!577347 (isEmpty!37848 s!2326))))

(declare-fun b!6601360 () Bool)

(declare-fun res!2706775 () Bool)

(assert (=> b!6601360 (=> res!2706775 e!3994374)))

(assert (=> b!6601360 (= res!2706775 (not ((_ is ElementMatch!16467) (regTwo!33446 r!7292))))))

(declare-fun e!3994378 () Bool)

(assert (=> b!6601360 (= e!3994378 e!3994374)))

(declare-fun b!6601361 () Bool)

(declare-fun e!3994380 () Bool)

(assert (=> b!6601361 (= e!3994380 e!3994378)))

(declare-fun c!1216092 () Bool)

(assert (=> b!6601361 (= c!1216092 ((_ is EmptyLang!16467) (regTwo!33446 r!7292)))))

(declare-fun b!6601362 () Bool)

(assert (=> b!6601362 (= e!3994379 e!3994376)))

(declare-fun res!2706768 () Bool)

(assert (=> b!6601362 (=> res!2706768 e!3994376)))

(assert (=> b!6601362 (= res!2706768 call!577347)))

(declare-fun b!6601363 () Bool)

(assert (=> b!6601363 (= e!3994378 (not lt!2413579))))

(declare-fun b!6601364 () Bool)

(declare-fun res!2706772 () Bool)

(assert (=> b!6601364 (=> res!2706772 e!3994376)))

(assert (=> b!6601364 (= res!2706772 (not (isEmpty!37848 (tail!12469 s!2326))))))

(declare-fun b!6601365 () Bool)

(declare-fun res!2706770 () Bool)

(assert (=> b!6601365 (=> (not res!2706770) (not e!3994375))))

(assert (=> b!6601365 (= res!2706770 (isEmpty!37848 (tail!12469 s!2326)))))

(declare-fun b!6601356 () Bool)

(assert (=> b!6601356 (= e!3994380 (= lt!2413579 call!577347))))

(declare-fun d!2070541 () Bool)

(assert (=> d!2070541 e!3994380))

(declare-fun c!1216093 () Bool)

(assert (=> d!2070541 (= c!1216093 ((_ is EmptyExpr!16467) (regTwo!33446 r!7292)))))

(assert (=> d!2070541 (= lt!2413579 e!3994377)))

(declare-fun c!1216091 () Bool)

(assert (=> d!2070541 (= c!1216091 (isEmpty!37848 s!2326))))

(assert (=> d!2070541 (validRegex!8203 (regTwo!33446 r!7292))))

(assert (=> d!2070541 (= (matchR!8650 (regTwo!33446 r!7292) s!2326) lt!2413579)))

(assert (= (and d!2070541 c!1216091) b!6601352))

(assert (= (and d!2070541 (not c!1216091)) b!6601355))

(assert (= (and d!2070541 c!1216093) b!6601356))

(assert (= (and d!2070541 (not c!1216093)) b!6601361))

(assert (= (and b!6601361 c!1216092) b!6601363))

(assert (= (and b!6601361 (not c!1216092)) b!6601360))

(assert (= (and b!6601360 (not res!2706775)) b!6601358))

(assert (= (and b!6601358 res!2706774) b!6601359))

(assert (= (and b!6601359 res!2706773) b!6601365))

(assert (= (and b!6601365 res!2706770) b!6601357))

(assert (= (and b!6601358 (not res!2706771)) b!6601354))

(assert (= (and b!6601354 res!2706769) b!6601362))

(assert (= (and b!6601362 (not res!2706768)) b!6601364))

(assert (= (and b!6601364 (not res!2706772)) b!6601353))

(assert (= (or b!6601356 b!6601359 b!6601362) bm!577342))

(assert (=> b!6601353 m!7377308))

(declare-fun m!7377534 () Bool)

(assert (=> b!6601352 m!7377534))

(assert (=> b!6601355 m!7377308))

(assert (=> b!6601355 m!7377308))

(declare-fun m!7377536 () Bool)

(assert (=> b!6601355 m!7377536))

(assert (=> b!6601355 m!7377314))

(assert (=> b!6601355 m!7377536))

(assert (=> b!6601355 m!7377314))

(declare-fun m!7377538 () Bool)

(assert (=> b!6601355 m!7377538))

(assert (=> b!6601357 m!7377308))

(assert (=> b!6601365 m!7377314))

(assert (=> b!6601365 m!7377314))

(assert (=> b!6601365 m!7377318))

(assert (=> d!2070541 m!7377248))

(declare-fun m!7377540 () Bool)

(assert (=> d!2070541 m!7377540))

(assert (=> bm!577342 m!7377248))

(assert (=> b!6601364 m!7377314))

(assert (=> b!6601364 m!7377314))

(assert (=> b!6601364 m!7377318))

(assert (=> b!6600523 d!2070541))

(declare-fun b!6601366 () Bool)

(declare-fun e!3994384 () Bool)

(assert (=> b!6601366 (= e!3994384 (nullable!6460 lt!2413439))))

(declare-fun b!6601367 () Bool)

(declare-fun e!3994383 () Bool)

(assert (=> b!6601367 (= e!3994383 (not (= (head!13384 s!2326) (c!1215814 lt!2413439))))))

(declare-fun b!6601368 () Bool)

(declare-fun e!3994381 () Bool)

(declare-fun e!3994386 () Bool)

(assert (=> b!6601368 (= e!3994381 e!3994386)))

(declare-fun res!2706777 () Bool)

(assert (=> b!6601368 (=> (not res!2706777) (not e!3994386))))

(declare-fun lt!2413580 () Bool)

(assert (=> b!6601368 (= res!2706777 (not lt!2413580))))

(declare-fun b!6601369 () Bool)

(assert (=> b!6601369 (= e!3994384 (matchR!8650 (derivativeStep!5151 lt!2413439 (head!13384 s!2326)) (tail!12469 s!2326)))))

(declare-fun b!6601371 () Bool)

(declare-fun e!3994382 () Bool)

(assert (=> b!6601371 (= e!3994382 (= (head!13384 s!2326) (c!1215814 lt!2413439)))))

(declare-fun b!6601372 () Bool)

(declare-fun res!2706779 () Bool)

(assert (=> b!6601372 (=> res!2706779 e!3994381)))

(assert (=> b!6601372 (= res!2706779 e!3994382)))

(declare-fun res!2706782 () Bool)

(assert (=> b!6601372 (=> (not res!2706782) (not e!3994382))))

(assert (=> b!6601372 (= res!2706782 lt!2413580)))

(declare-fun b!6601373 () Bool)

(declare-fun res!2706781 () Bool)

(assert (=> b!6601373 (=> (not res!2706781) (not e!3994382))))

(declare-fun call!577348 () Bool)

(assert (=> b!6601373 (= res!2706781 (not call!577348))))

(declare-fun bm!577343 () Bool)

(assert (=> bm!577343 (= call!577348 (isEmpty!37848 s!2326))))

(declare-fun b!6601374 () Bool)

(declare-fun res!2706783 () Bool)

(assert (=> b!6601374 (=> res!2706783 e!3994381)))

(assert (=> b!6601374 (= res!2706783 (not ((_ is ElementMatch!16467) lt!2413439)))))

(declare-fun e!3994385 () Bool)

(assert (=> b!6601374 (= e!3994385 e!3994381)))

(declare-fun b!6601375 () Bool)

(declare-fun e!3994387 () Bool)

(assert (=> b!6601375 (= e!3994387 e!3994385)))

(declare-fun c!1216095 () Bool)

(assert (=> b!6601375 (= c!1216095 ((_ is EmptyLang!16467) lt!2413439))))

(declare-fun b!6601376 () Bool)

(assert (=> b!6601376 (= e!3994386 e!3994383)))

(declare-fun res!2706776 () Bool)

(assert (=> b!6601376 (=> res!2706776 e!3994383)))

(assert (=> b!6601376 (= res!2706776 call!577348)))

(declare-fun b!6601377 () Bool)

(assert (=> b!6601377 (= e!3994385 (not lt!2413580))))

(declare-fun b!6601378 () Bool)

(declare-fun res!2706780 () Bool)

(assert (=> b!6601378 (=> res!2706780 e!3994383)))

(assert (=> b!6601378 (= res!2706780 (not (isEmpty!37848 (tail!12469 s!2326))))))

(declare-fun b!6601379 () Bool)

(declare-fun res!2706778 () Bool)

(assert (=> b!6601379 (=> (not res!2706778) (not e!3994382))))

(assert (=> b!6601379 (= res!2706778 (isEmpty!37848 (tail!12469 s!2326)))))

(declare-fun b!6601370 () Bool)

(assert (=> b!6601370 (= e!3994387 (= lt!2413580 call!577348))))

(declare-fun d!2070543 () Bool)

(assert (=> d!2070543 e!3994387))

(declare-fun c!1216096 () Bool)

(assert (=> d!2070543 (= c!1216096 ((_ is EmptyExpr!16467) lt!2413439))))

(assert (=> d!2070543 (= lt!2413580 e!3994384)))

(declare-fun c!1216094 () Bool)

(assert (=> d!2070543 (= c!1216094 (isEmpty!37848 s!2326))))

(assert (=> d!2070543 (validRegex!8203 lt!2413439)))

(assert (=> d!2070543 (= (matchR!8650 lt!2413439 s!2326) lt!2413580)))

(assert (= (and d!2070543 c!1216094) b!6601366))

(assert (= (and d!2070543 (not c!1216094)) b!6601369))

(assert (= (and d!2070543 c!1216096) b!6601370))

(assert (= (and d!2070543 (not c!1216096)) b!6601375))

(assert (= (and b!6601375 c!1216095) b!6601377))

(assert (= (and b!6601375 (not c!1216095)) b!6601374))

(assert (= (and b!6601374 (not res!2706783)) b!6601372))

(assert (= (and b!6601372 res!2706782) b!6601373))

(assert (= (and b!6601373 res!2706781) b!6601379))

(assert (= (and b!6601379 res!2706778) b!6601371))

(assert (= (and b!6601372 (not res!2706779)) b!6601368))

(assert (= (and b!6601368 res!2706777) b!6601376))

(assert (= (and b!6601376 (not res!2706776)) b!6601378))

(assert (= (and b!6601378 (not res!2706780)) b!6601367))

(assert (= (or b!6601370 b!6601373 b!6601376) bm!577343))

(assert (=> b!6601367 m!7377308))

(declare-fun m!7377542 () Bool)

(assert (=> b!6601366 m!7377542))

(assert (=> b!6601369 m!7377308))

(assert (=> b!6601369 m!7377308))

(declare-fun m!7377544 () Bool)

(assert (=> b!6601369 m!7377544))

(assert (=> b!6601369 m!7377314))

(assert (=> b!6601369 m!7377544))

(assert (=> b!6601369 m!7377314))

(declare-fun m!7377546 () Bool)

(assert (=> b!6601369 m!7377546))

(assert (=> b!6601371 m!7377308))

(assert (=> b!6601379 m!7377314))

(assert (=> b!6601379 m!7377314))

(assert (=> b!6601379 m!7377318))

(assert (=> d!2070543 m!7377248))

(declare-fun m!7377548 () Bool)

(assert (=> d!2070543 m!7377548))

(assert (=> bm!577343 m!7377248))

(assert (=> b!6601378 m!7377314))

(assert (=> b!6601378 m!7377314))

(assert (=> b!6601378 m!7377318))

(assert (=> b!6600523 d!2070543))

(declare-fun d!2070545 () Bool)

(declare-fun c!1216097 () Bool)

(assert (=> d!2070545 (= c!1216097 (isEmpty!37848 s!2326))))

(declare-fun e!3994388 () Bool)

(assert (=> d!2070545 (= (matchZipper!2479 lt!2413429 s!2326) e!3994388)))

(declare-fun b!6601380 () Bool)

(assert (=> b!6601380 (= e!3994388 (nullableZipper!2212 lt!2413429))))

(declare-fun b!6601381 () Bool)

(assert (=> b!6601381 (= e!3994388 (matchZipper!2479 (derivationStepZipper!2433 lt!2413429 (head!13384 s!2326)) (tail!12469 s!2326)))))

(assert (= (and d!2070545 c!1216097) b!6601380))

(assert (= (and d!2070545 (not c!1216097)) b!6601381))

(assert (=> d!2070545 m!7377248))

(declare-fun m!7377550 () Bool)

(assert (=> b!6601380 m!7377550))

(assert (=> b!6601381 m!7377308))

(assert (=> b!6601381 m!7377308))

(declare-fun m!7377552 () Bool)

(assert (=> b!6601381 m!7377552))

(assert (=> b!6601381 m!7377314))

(assert (=> b!6601381 m!7377552))

(assert (=> b!6601381 m!7377314))

(declare-fun m!7377554 () Bool)

(assert (=> b!6601381 m!7377554))

(assert (=> b!6600523 d!2070545))

(declare-fun d!2070547 () Bool)

(assert (=> d!2070547 (= (matchR!8650 lt!2413439 s!2326) (matchZipper!2479 lt!2413429 s!2326))))

(declare-fun lt!2413586 () Unit!159203)

(declare-fun choose!49275 ((InoxSet Context!11702) List!65702 Regex!16467 List!65700) Unit!159203)

(assert (=> d!2070547 (= lt!2413586 (choose!49275 lt!2413429 lt!2413430 lt!2413439 s!2326))))

(assert (=> d!2070547 (validRegex!8203 lt!2413439)))

(assert (=> d!2070547 (= (theoremZipperRegexEquiv!889 lt!2413429 lt!2413430 lt!2413439 s!2326) lt!2413586)))

(declare-fun bs!1692422 () Bool)

(assert (= bs!1692422 d!2070547))

(assert (=> bs!1692422 m!7376866))

(assert (=> bs!1692422 m!7376868))

(declare-fun m!7377576 () Bool)

(assert (=> bs!1692422 m!7377576))

(assert (=> bs!1692422 m!7377548))

(assert (=> b!6600523 d!2070547))

(declare-fun d!2070553 () Bool)

(declare-fun lt!2413587 () Regex!16467)

(assert (=> d!2070553 (validRegex!8203 lt!2413587)))

(assert (=> d!2070553 (= lt!2413587 (generalisedUnion!2311 (unfocusZipperList!1888 zl!343)))))

(assert (=> d!2070553 (= (unfocusZipper!2209 zl!343) lt!2413587)))

(declare-fun bs!1692423 () Bool)

(assert (= bs!1692423 d!2070553))

(declare-fun m!7377578 () Bool)

(assert (=> bs!1692423 m!7377578))

(assert (=> bs!1692423 m!7376872))

(assert (=> bs!1692423 m!7376872))

(assert (=> bs!1692423 m!7376874))

(assert (=> b!6600500 d!2070553))

(declare-fun c!1216129 () Bool)

(declare-fun c!1216127 () Bool)

(declare-fun call!577376 () (InoxSet Context!11702))

(declare-fun call!577380 () List!65701)

(declare-fun bm!577370 () Bool)

(declare-fun c!1216128 () Bool)

(assert (=> bm!577370 (= call!577376 (derivationStepZipperDown!1715 (ite c!1216129 (regTwo!33447 (h!72025 (exprs!6351 (h!72026 zl!343)))) (ite c!1216128 (regTwo!33446 (h!72025 (exprs!6351 (h!72026 zl!343)))) (ite c!1216127 (regOne!33446 (h!72025 (exprs!6351 (h!72026 zl!343)))) (reg!16796 (h!72025 (exprs!6351 (h!72026 zl!343))))))) (ite (or c!1216129 c!1216128) lt!2413444 (Context!11703 call!577380)) (h!72024 s!2326)))))

(declare-fun b!6601502 () Bool)

(declare-fun e!3994454 () Bool)

(assert (=> b!6601502 (= e!3994454 (nullable!6460 (regOne!33446 (h!72025 (exprs!6351 (h!72026 zl!343))))))))

(declare-fun b!6601503 () Bool)

(declare-fun e!3994452 () (InoxSet Context!11702))

(declare-fun call!577379 () (InoxSet Context!11702))

(declare-fun call!577377 () (InoxSet Context!11702))

(assert (=> b!6601503 (= e!3994452 ((_ map or) call!577379 call!577377))))

(declare-fun b!6601504 () Bool)

(declare-fun e!3994450 () (InoxSet Context!11702))

(declare-fun call!577378 () (InoxSet Context!11702))

(assert (=> b!6601504 (= e!3994450 call!577378)))

(declare-fun bm!577371 () Bool)

(assert (=> bm!577371 (= call!577377 call!577376)))

(declare-fun b!6601505 () Bool)

(declare-fun e!3994455 () (InoxSet Context!11702))

(assert (=> b!6601505 (= e!3994455 (store ((as const (Array Context!11702 Bool)) false) lt!2413444 true))))

(declare-fun b!6601506 () Bool)

(declare-fun e!3994451 () (InoxSet Context!11702))

(assert (=> b!6601506 (= e!3994451 ((_ map or) call!577379 call!577376))))

(declare-fun b!6601507 () Bool)

(assert (=> b!6601507 (= e!3994450 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601508 () Bool)

(declare-fun e!3994453 () (InoxSet Context!11702))

(assert (=> b!6601508 (= e!3994452 e!3994453)))

(assert (=> b!6601508 (= c!1216127 ((_ is Concat!25312) (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun call!577375 () List!65701)

(declare-fun bm!577372 () Bool)

(assert (=> bm!577372 (= call!577379 (derivationStepZipperDown!1715 (ite c!1216129 (regOne!33447 (h!72025 (exprs!6351 (h!72026 zl!343)))) (regOne!33446 (h!72025 (exprs!6351 (h!72026 zl!343))))) (ite c!1216129 lt!2413444 (Context!11703 call!577375)) (h!72024 s!2326)))))

(declare-fun d!2070555 () Bool)

(declare-fun c!1216126 () Bool)

(assert (=> d!2070555 (= c!1216126 (and ((_ is ElementMatch!16467) (h!72025 (exprs!6351 (h!72026 zl!343)))) (= (c!1215814 (h!72025 (exprs!6351 (h!72026 zl!343)))) (h!72024 s!2326))))))

(assert (=> d!2070555 (= (derivationStepZipperDown!1715 (h!72025 (exprs!6351 (h!72026 zl!343))) lt!2413444 (h!72024 s!2326)) e!3994455)))

(declare-fun b!6601509 () Bool)

(assert (=> b!6601509 (= e!3994453 call!577378)))

(declare-fun b!6601510 () Bool)

(assert (=> b!6601510 (= e!3994455 e!3994451)))

(assert (=> b!6601510 (= c!1216129 ((_ is Union!16467) (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6601511 () Bool)

(declare-fun c!1216130 () Bool)

(assert (=> b!6601511 (= c!1216130 ((_ is Star!16467) (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(assert (=> b!6601511 (= e!3994453 e!3994450)))

(declare-fun bm!577373 () Bool)

(assert (=> bm!577373 (= call!577380 call!577375)))

(declare-fun b!6601512 () Bool)

(assert (=> b!6601512 (= c!1216128 e!3994454)))

(declare-fun res!2706794 () Bool)

(assert (=> b!6601512 (=> (not res!2706794) (not e!3994454))))

(assert (=> b!6601512 (= res!2706794 ((_ is Concat!25312) (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(assert (=> b!6601512 (= e!3994451 e!3994452)))

(declare-fun bm!577374 () Bool)

(assert (=> bm!577374 (= call!577378 call!577377)))

(declare-fun bm!577375 () Bool)

(declare-fun $colon$colon!2308 (List!65701 Regex!16467) List!65701)

(assert (=> bm!577375 (= call!577375 ($colon$colon!2308 (exprs!6351 lt!2413444) (ite (or c!1216128 c!1216127) (regTwo!33446 (h!72025 (exprs!6351 (h!72026 zl!343)))) (h!72025 (exprs!6351 (h!72026 zl!343))))))))

(assert (= (and d!2070555 c!1216126) b!6601505))

(assert (= (and d!2070555 (not c!1216126)) b!6601510))

(assert (= (and b!6601510 c!1216129) b!6601506))

(assert (= (and b!6601510 (not c!1216129)) b!6601512))

(assert (= (and b!6601512 res!2706794) b!6601502))

(assert (= (and b!6601512 c!1216128) b!6601503))

(assert (= (and b!6601512 (not c!1216128)) b!6601508))

(assert (= (and b!6601508 c!1216127) b!6601509))

(assert (= (and b!6601508 (not c!1216127)) b!6601511))

(assert (= (and b!6601511 c!1216130) b!6601504))

(assert (= (and b!6601511 (not c!1216130)) b!6601507))

(assert (= (or b!6601509 b!6601504) bm!577373))

(assert (= (or b!6601509 b!6601504) bm!577374))

(assert (= (or b!6601503 bm!577373) bm!577375))

(assert (= (or b!6601503 bm!577374) bm!577371))

(assert (= (or b!6601506 bm!577371) bm!577370))

(assert (= (or b!6601506 b!6601503) bm!577372))

(declare-fun m!7377606 () Bool)

(assert (=> b!6601502 m!7377606))

(declare-fun m!7377608 () Bool)

(assert (=> bm!577375 m!7377608))

(assert (=> b!6601505 m!7376896))

(declare-fun m!7377610 () Bool)

(assert (=> bm!577370 m!7377610))

(declare-fun m!7377612 () Bool)

(assert (=> bm!577372 m!7377612))

(assert (=> b!6600521 d!2070555))

(declare-fun d!2070573 () Bool)

(assert (=> d!2070573 (= (flatMap!1972 z!1189 lambda!367920) (dynLambda!26113 lambda!367920 (h!72026 zl!343)))))

(declare-fun lt!2413589 () Unit!159203)

(assert (=> d!2070573 (= lt!2413589 (choose!49267 z!1189 (h!72026 zl!343) lambda!367920))))

(assert (=> d!2070573 (= z!1189 (store ((as const (Array Context!11702 Bool)) false) (h!72026 zl!343) true))))

(assert (=> d!2070573 (= (lemmaFlatMapOnSingletonSet!1498 z!1189 (h!72026 zl!343) lambda!367920) lt!2413589)))

(declare-fun b_lambda!249845 () Bool)

(assert (=> (not b_lambda!249845) (not d!2070573)))

(declare-fun bs!1692440 () Bool)

(assert (= bs!1692440 d!2070573))

(assert (=> bs!1692440 m!7376914))

(declare-fun m!7377614 () Bool)

(assert (=> bs!1692440 m!7377614))

(declare-fun m!7377616 () Bool)

(assert (=> bs!1692440 m!7377616))

(declare-fun m!7377618 () Bool)

(assert (=> bs!1692440 m!7377618))

(assert (=> b!6600521 d!2070573))

(assert (=> b!6600521 d!2070517))

(declare-fun d!2070575 () Bool)

(assert (=> d!2070575 (= (nullable!6460 (h!72025 (exprs!6351 (h!72026 zl!343)))) (nullableFct!2386 (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun bs!1692441 () Bool)

(assert (= bs!1692441 d!2070575))

(declare-fun m!7377620 () Bool)

(assert (=> bs!1692441 m!7377620))

(assert (=> b!6600521 d!2070575))

(declare-fun b!6601513 () Bool)

(declare-fun e!3994457 () (InoxSet Context!11702))

(assert (=> b!6601513 (= e!3994457 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601514 () Bool)

(declare-fun e!3994456 () (InoxSet Context!11702))

(assert (=> b!6601514 (= e!3994456 e!3994457)))

(declare-fun c!1216132 () Bool)

(assert (=> b!6601514 (= c!1216132 ((_ is Cons!65577) (exprs!6351 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343))))))))))

(declare-fun d!2070577 () Bool)

(declare-fun c!1216131 () Bool)

(declare-fun e!3994458 () Bool)

(assert (=> d!2070577 (= c!1216131 e!3994458)))

(declare-fun res!2706795 () Bool)

(assert (=> d!2070577 (=> (not res!2706795) (not e!3994458))))

(assert (=> d!2070577 (= res!2706795 ((_ is Cons!65577) (exprs!6351 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343))))))))))

(assert (=> d!2070577 (= (derivationStepZipperUp!1641 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343))))) (h!72024 s!2326)) e!3994456)))

(declare-fun b!6601515 () Bool)

(declare-fun call!577381 () (InoxSet Context!11702))

(assert (=> b!6601515 (= e!3994456 ((_ map or) call!577381 (derivationStepZipperUp!1641 (Context!11703 (t!379353 (exprs!6351 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343)))))))) (h!72024 s!2326))))))

(declare-fun b!6601516 () Bool)

(assert (=> b!6601516 (= e!3994458 (nullable!6460 (h!72025 (exprs!6351 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343)))))))))))

(declare-fun b!6601517 () Bool)

(assert (=> b!6601517 (= e!3994457 call!577381)))

(declare-fun bm!577376 () Bool)

(assert (=> bm!577376 (= call!577381 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343))))))) (Context!11703 (t!379353 (exprs!6351 (Context!11703 (Cons!65577 (h!72025 (exprs!6351 (h!72026 zl!343))) (t!379353 (exprs!6351 (h!72026 zl!343)))))))) (h!72024 s!2326)))))

(assert (= (and d!2070577 res!2706795) b!6601516))

(assert (= (and d!2070577 c!1216131) b!6601515))

(assert (= (and d!2070577 (not c!1216131)) b!6601514))

(assert (= (and b!6601514 c!1216132) b!6601517))

(assert (= (and b!6601514 (not c!1216132)) b!6601513))

(assert (= (or b!6601515 b!6601517) bm!577376))

(declare-fun m!7377622 () Bool)

(assert (=> b!6601515 m!7377622))

(declare-fun m!7377624 () Bool)

(assert (=> b!6601516 m!7377624))

(declare-fun m!7377626 () Bool)

(assert (=> bm!577376 m!7377626))

(assert (=> b!6600521 d!2070577))

(declare-fun b!6601518 () Bool)

(declare-fun e!3994460 () (InoxSet Context!11702))

(assert (=> b!6601518 (= e!3994460 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601519 () Bool)

(declare-fun e!3994459 () (InoxSet Context!11702))

(assert (=> b!6601519 (= e!3994459 e!3994460)))

(declare-fun c!1216134 () Bool)

(assert (=> b!6601519 (= c!1216134 ((_ is Cons!65577) (exprs!6351 (h!72026 zl!343))))))

(declare-fun d!2070579 () Bool)

(declare-fun c!1216133 () Bool)

(declare-fun e!3994461 () Bool)

(assert (=> d!2070579 (= c!1216133 e!3994461)))

(declare-fun res!2706796 () Bool)

(assert (=> d!2070579 (=> (not res!2706796) (not e!3994461))))

(assert (=> d!2070579 (= res!2706796 ((_ is Cons!65577) (exprs!6351 (h!72026 zl!343))))))

(assert (=> d!2070579 (= (derivationStepZipperUp!1641 (h!72026 zl!343) (h!72024 s!2326)) e!3994459)))

(declare-fun b!6601520 () Bool)

(declare-fun call!577382 () (InoxSet Context!11702))

(assert (=> b!6601520 (= e!3994459 ((_ map or) call!577382 (derivationStepZipperUp!1641 (Context!11703 (t!379353 (exprs!6351 (h!72026 zl!343)))) (h!72024 s!2326))))))

(declare-fun b!6601521 () Bool)

(assert (=> b!6601521 (= e!3994461 (nullable!6460 (h!72025 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6601522 () Bool)

(assert (=> b!6601522 (= e!3994460 call!577382)))

(declare-fun bm!577377 () Bool)

(assert (=> bm!577377 (= call!577382 (derivationStepZipperDown!1715 (h!72025 (exprs!6351 (h!72026 zl!343))) (Context!11703 (t!379353 (exprs!6351 (h!72026 zl!343)))) (h!72024 s!2326)))))

(assert (= (and d!2070579 res!2706796) b!6601521))

(assert (= (and d!2070579 c!1216133) b!6601520))

(assert (= (and d!2070579 (not c!1216133)) b!6601519))

(assert (= (and b!6601519 c!1216134) b!6601522))

(assert (= (and b!6601519 (not c!1216134)) b!6601518))

(assert (= (or b!6601520 b!6601522) bm!577377))

(declare-fun m!7377628 () Bool)

(assert (=> b!6601520 m!7377628))

(assert (=> b!6601521 m!7376912))

(declare-fun m!7377630 () Bool)

(assert (=> bm!577377 m!7377630))

(assert (=> b!6600521 d!2070579))

(declare-fun d!2070581 () Bool)

(assert (=> d!2070581 (= (flatMap!1972 z!1189 lambda!367920) (choose!49266 z!1189 lambda!367920))))

(declare-fun bs!1692442 () Bool)

(assert (= bs!1692442 d!2070581))

(declare-fun m!7377632 () Bool)

(assert (=> bs!1692442 m!7377632))

(assert (=> b!6600521 d!2070581))

(declare-fun bs!1692443 () Bool)

(declare-fun d!2070583 () Bool)

(assert (= bs!1692443 (and d!2070583 d!2070371)))

(declare-fun lambda!368005 () Int)

(assert (=> bs!1692443 (= lambda!368005 lambda!367938)))

(declare-fun bs!1692444 () Bool)

(assert (= bs!1692444 (and d!2070583 d!2070379)))

(assert (=> bs!1692444 (= lambda!368005 lambda!367943)))

(declare-fun bs!1692445 () Bool)

(assert (= bs!1692445 (and d!2070583 d!2070487)))

(assert (=> bs!1692445 (= lambda!368005 lambda!367998)))

(declare-fun b!6601523 () Bool)

(declare-fun e!3994466 () Regex!16467)

(assert (=> b!6601523 (= e!3994466 (h!72025 (exprs!6351 (h!72026 zl!343))))))

(declare-fun b!6601524 () Bool)

(declare-fun e!3994463 () Bool)

(declare-fun lt!2413590 () Regex!16467)

(assert (=> b!6601524 (= e!3994463 (isConcat!1368 lt!2413590))))

(declare-fun b!6601525 () Bool)

(declare-fun e!3994462 () Bool)

(assert (=> b!6601525 (= e!3994462 (isEmptyExpr!1845 lt!2413590))))

(declare-fun b!6601526 () Bool)

(declare-fun e!3994464 () Regex!16467)

(assert (=> b!6601526 (= e!3994464 EmptyExpr!16467)))

(declare-fun b!6601527 () Bool)

(declare-fun e!3994467 () Bool)

(assert (=> b!6601527 (= e!3994467 (isEmpty!37846 (t!379353 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun e!3994465 () Bool)

(assert (=> d!2070583 e!3994465))

(declare-fun res!2706798 () Bool)

(assert (=> d!2070583 (=> (not res!2706798) (not e!3994465))))

(assert (=> d!2070583 (= res!2706798 (validRegex!8203 lt!2413590))))

(assert (=> d!2070583 (= lt!2413590 e!3994466)))

(declare-fun c!1216135 () Bool)

(assert (=> d!2070583 (= c!1216135 e!3994467)))

(declare-fun res!2706797 () Bool)

(assert (=> d!2070583 (=> (not res!2706797) (not e!3994467))))

(assert (=> d!2070583 (= res!2706797 ((_ is Cons!65577) (exprs!6351 (h!72026 zl!343))))))

(assert (=> d!2070583 (forall!15656 (exprs!6351 (h!72026 zl!343)) lambda!368005)))

(assert (=> d!2070583 (= (generalisedConcat!2064 (exprs!6351 (h!72026 zl!343))) lt!2413590)))

(declare-fun b!6601528 () Bool)

(assert (=> b!6601528 (= e!3994464 (Concat!25312 (h!72025 (exprs!6351 (h!72026 zl!343))) (generalisedConcat!2064 (t!379353 (exprs!6351 (h!72026 zl!343))))))))

(declare-fun b!6601529 () Bool)

(assert (=> b!6601529 (= e!3994466 e!3994464)))

(declare-fun c!1216137 () Bool)

(assert (=> b!6601529 (= c!1216137 ((_ is Cons!65577) (exprs!6351 (h!72026 zl!343))))))

(declare-fun b!6601530 () Bool)

(assert (=> b!6601530 (= e!3994463 (= lt!2413590 (head!13385 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6601531 () Bool)

(assert (=> b!6601531 (= e!3994462 e!3994463)))

(declare-fun c!1216136 () Bool)

(assert (=> b!6601531 (= c!1216136 (isEmpty!37846 (tail!12470 (exprs!6351 (h!72026 zl!343)))))))

(declare-fun b!6601532 () Bool)

(assert (=> b!6601532 (= e!3994465 e!3994462)))

(declare-fun c!1216138 () Bool)

(assert (=> b!6601532 (= c!1216138 (isEmpty!37846 (exprs!6351 (h!72026 zl!343))))))

(assert (= (and d!2070583 res!2706797) b!6601527))

(assert (= (and d!2070583 c!1216135) b!6601523))

(assert (= (and d!2070583 (not c!1216135)) b!6601529))

(assert (= (and b!6601529 c!1216137) b!6601528))

(assert (= (and b!6601529 (not c!1216137)) b!6601526))

(assert (= (and d!2070583 res!2706798) b!6601532))

(assert (= (and b!6601532 c!1216138) b!6601525))

(assert (= (and b!6601532 (not c!1216138)) b!6601531))

(assert (= (and b!6601531 c!1216136) b!6601530))

(assert (= (and b!6601531 (not c!1216136)) b!6601524))

(assert (=> b!6601528 m!7376818))

(declare-fun m!7377634 () Bool)

(assert (=> b!6601530 m!7377634))

(declare-fun m!7377636 () Bool)

(assert (=> b!6601525 m!7377636))

(assert (=> b!6601527 m!7376844))

(declare-fun m!7377638 () Bool)

(assert (=> b!6601531 m!7377638))

(assert (=> b!6601531 m!7377638))

(declare-fun m!7377640 () Bool)

(assert (=> b!6601531 m!7377640))

(declare-fun m!7377642 () Bool)

(assert (=> d!2070583 m!7377642))

(declare-fun m!7377644 () Bool)

(assert (=> d!2070583 m!7377644))

(declare-fun m!7377646 () Bool)

(assert (=> b!6601524 m!7377646))

(declare-fun m!7377648 () Bool)

(assert (=> b!6601532 m!7377648))

(assert (=> b!6600522 d!2070583))

(declare-fun bs!1692446 () Bool)

(declare-fun d!2070585 () Bool)

(assert (= bs!1692446 (and d!2070585 d!2070371)))

(declare-fun lambda!368008 () Int)

(assert (=> bs!1692446 (= lambda!368008 lambda!367938)))

(declare-fun bs!1692447 () Bool)

(assert (= bs!1692447 (and d!2070585 d!2070379)))

(assert (=> bs!1692447 (= lambda!368008 lambda!367943)))

(declare-fun bs!1692448 () Bool)

(assert (= bs!1692448 (and d!2070585 d!2070487)))

(assert (=> bs!1692448 (= lambda!368008 lambda!367998)))

(declare-fun bs!1692449 () Bool)

(assert (= bs!1692449 (and d!2070585 d!2070583)))

(assert (=> bs!1692449 (= lambda!368008 lambda!368005)))

(assert (=> d!2070585 (= (inv!84414 setElem!45072) (forall!15656 (exprs!6351 setElem!45072) lambda!368008))))

(declare-fun bs!1692450 () Bool)

(assert (= bs!1692450 d!2070585))

(declare-fun m!7377650 () Bool)

(assert (=> bs!1692450 m!7377650))

(assert (=> setNonEmpty!45072 d!2070585))

(declare-fun e!3994470 () Bool)

(declare-fun d!2070587 () Bool)

(assert (=> d!2070587 (= (matchZipper!2479 ((_ map or) lt!2413448 lt!2413417) (t!379352 s!2326)) e!3994470)))

(declare-fun res!2706801 () Bool)

(assert (=> d!2070587 (=> res!2706801 e!3994470)))

(assert (=> d!2070587 (= res!2706801 (matchZipper!2479 lt!2413448 (t!379352 s!2326)))))

(declare-fun lt!2413593 () Unit!159203)

(declare-fun choose!49276 ((InoxSet Context!11702) (InoxSet Context!11702) List!65700) Unit!159203)

(assert (=> d!2070587 (= lt!2413593 (choose!49276 lt!2413448 lt!2413417 (t!379352 s!2326)))))

(assert (=> d!2070587 (= (lemmaZipperConcatMatchesSameAsBothZippers!1298 lt!2413448 lt!2413417 (t!379352 s!2326)) lt!2413593)))

(declare-fun b!6601535 () Bool)

(assert (=> b!6601535 (= e!3994470 (matchZipper!2479 lt!2413417 (t!379352 s!2326)))))

(assert (= (and d!2070587 (not res!2706801)) b!6601535))

(assert (=> d!2070587 m!7376826))

(assert (=> d!2070587 m!7376824))

(declare-fun m!7377652 () Bool)

(assert (=> d!2070587 m!7377652))

(assert (=> b!6601535 m!7376840))

(assert (=> b!6600498 d!2070587))

(declare-fun d!2070589 () Bool)

(declare-fun c!1216139 () Bool)

(assert (=> d!2070589 (= c!1216139 (isEmpty!37848 (t!379352 s!2326)))))

(declare-fun e!3994471 () Bool)

(assert (=> d!2070589 (= (matchZipper!2479 lt!2413448 (t!379352 s!2326)) e!3994471)))

(declare-fun b!6601536 () Bool)

(assert (=> b!6601536 (= e!3994471 (nullableZipper!2212 lt!2413448))))

(declare-fun b!6601537 () Bool)

(assert (=> b!6601537 (= e!3994471 (matchZipper!2479 (derivationStepZipper!2433 lt!2413448 (head!13384 (t!379352 s!2326))) (tail!12469 (t!379352 s!2326))))))

(assert (= (and d!2070589 c!1216139) b!6601536))

(assert (= (and d!2070589 (not c!1216139)) b!6601537))

(assert (=> d!2070589 m!7376950))

(declare-fun m!7377654 () Bool)

(assert (=> b!6601536 m!7377654))

(assert (=> b!6601537 m!7376954))

(assert (=> b!6601537 m!7376954))

(declare-fun m!7377656 () Bool)

(assert (=> b!6601537 m!7377656))

(assert (=> b!6601537 m!7376958))

(assert (=> b!6601537 m!7377656))

(assert (=> b!6601537 m!7376958))

(declare-fun m!7377658 () Bool)

(assert (=> b!6601537 m!7377658))

(assert (=> b!6600498 d!2070589))

(declare-fun d!2070591 () Bool)

(declare-fun c!1216140 () Bool)

(assert (=> d!2070591 (= c!1216140 (isEmpty!37848 (t!379352 s!2326)))))

(declare-fun e!3994472 () Bool)

(assert (=> d!2070591 (= (matchZipper!2479 ((_ map or) lt!2413448 lt!2413417) (t!379352 s!2326)) e!3994472)))

(declare-fun b!6601538 () Bool)

(assert (=> b!6601538 (= e!3994472 (nullableZipper!2212 ((_ map or) lt!2413448 lt!2413417)))))

(declare-fun b!6601539 () Bool)

(assert (=> b!6601539 (= e!3994472 (matchZipper!2479 (derivationStepZipper!2433 ((_ map or) lt!2413448 lt!2413417) (head!13384 (t!379352 s!2326))) (tail!12469 (t!379352 s!2326))))))

(assert (= (and d!2070591 c!1216140) b!6601538))

(assert (= (and d!2070591 (not c!1216140)) b!6601539))

(assert (=> d!2070591 m!7376950))

(declare-fun m!7377660 () Bool)

(assert (=> b!6601538 m!7377660))

(assert (=> b!6601539 m!7376954))

(assert (=> b!6601539 m!7376954))

(declare-fun m!7377662 () Bool)

(assert (=> b!6601539 m!7377662))

(assert (=> b!6601539 m!7376958))

(assert (=> b!6601539 m!7377662))

(assert (=> b!6601539 m!7376958))

(declare-fun m!7377664 () Bool)

(assert (=> b!6601539 m!7377664))

(assert (=> b!6600498 d!2070591))

(declare-fun d!2070593 () Bool)

(declare-fun choose!49277 (Int) Bool)

(assert (=> d!2070593 (= (Exists!3537 lambda!367918) (choose!49277 lambda!367918))))

(declare-fun bs!1692451 () Bool)

(assert (= bs!1692451 d!2070593))

(declare-fun m!7377666 () Bool)

(assert (=> bs!1692451 m!7377666))

(assert (=> b!6600499 d!2070593))

(declare-fun b!6601558 () Bool)

(declare-fun lt!2413600 () Unit!159203)

(declare-fun lt!2413601 () Unit!159203)

(assert (=> b!6601558 (= lt!2413600 lt!2413601)))

(declare-fun ++!14613 (List!65700 List!65700) List!65700)

(assert (=> b!6601558 (= (++!14613 (++!14613 Nil!65576 (Cons!65576 (h!72024 s!2326) Nil!65576)) (t!379352 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2610 (List!65700 C!33204 List!65700 List!65700) Unit!159203)

(assert (=> b!6601558 (= lt!2413601 (lemmaMoveElementToOtherListKeepsConcatEq!2610 Nil!65576 (h!72024 s!2326) (t!379352 s!2326) s!2326))))

(declare-fun e!3994487 () Option!16358)

(assert (=> b!6601558 (= e!3994487 (findConcatSeparation!2772 (regOne!33446 r!7292) (regTwo!33446 r!7292) (++!14613 Nil!65576 (Cons!65576 (h!72024 s!2326) Nil!65576)) (t!379352 s!2326) s!2326))))

(declare-fun b!6601559 () Bool)

(declare-fun e!3994483 () Bool)

(declare-fun lt!2413602 () Option!16358)

(declare-fun get!22782 (Option!16358) tuple2!66892)

(assert (=> b!6601559 (= e!3994483 (= (++!14613 (_1!36749 (get!22782 lt!2413602)) (_2!36749 (get!22782 lt!2413602))) s!2326))))

(declare-fun b!6601560 () Bool)

(assert (=> b!6601560 (= e!3994487 None!16357)))

(declare-fun b!6601561 () Bool)

(declare-fun e!3994484 () Option!16358)

(assert (=> b!6601561 (= e!3994484 (Some!16357 (tuple2!66893 Nil!65576 s!2326)))))

(declare-fun b!6601562 () Bool)

(declare-fun res!2706814 () Bool)

(assert (=> b!6601562 (=> (not res!2706814) (not e!3994483))))

(assert (=> b!6601562 (= res!2706814 (matchR!8650 (regOne!33446 r!7292) (_1!36749 (get!22782 lt!2413602))))))

(declare-fun d!2070595 () Bool)

(declare-fun e!3994486 () Bool)

(assert (=> d!2070595 e!3994486))

(declare-fun res!2706816 () Bool)

(assert (=> d!2070595 (=> res!2706816 e!3994486)))

(assert (=> d!2070595 (= res!2706816 e!3994483)))

(declare-fun res!2706813 () Bool)

(assert (=> d!2070595 (=> (not res!2706813) (not e!3994483))))

(assert (=> d!2070595 (= res!2706813 (isDefined!13061 lt!2413602))))

(assert (=> d!2070595 (= lt!2413602 e!3994484)))

(declare-fun c!1216145 () Bool)

(declare-fun e!3994485 () Bool)

(assert (=> d!2070595 (= c!1216145 e!3994485)))

(declare-fun res!2706815 () Bool)

(assert (=> d!2070595 (=> (not res!2706815) (not e!3994485))))

(assert (=> d!2070595 (= res!2706815 (matchR!8650 (regOne!33446 r!7292) Nil!65576))))

(assert (=> d!2070595 (validRegex!8203 (regOne!33446 r!7292))))

(assert (=> d!2070595 (= (findConcatSeparation!2772 (regOne!33446 r!7292) (regTwo!33446 r!7292) Nil!65576 s!2326 s!2326) lt!2413602)))

(declare-fun b!6601563 () Bool)

(declare-fun res!2706812 () Bool)

(assert (=> b!6601563 (=> (not res!2706812) (not e!3994483))))

(assert (=> b!6601563 (= res!2706812 (matchR!8650 (regTwo!33446 r!7292) (_2!36749 (get!22782 lt!2413602))))))

(declare-fun b!6601564 () Bool)

(assert (=> b!6601564 (= e!3994486 (not (isDefined!13061 lt!2413602)))))

(declare-fun b!6601565 () Bool)

(assert (=> b!6601565 (= e!3994485 (matchR!8650 (regTwo!33446 r!7292) s!2326))))

(declare-fun b!6601566 () Bool)

(assert (=> b!6601566 (= e!3994484 e!3994487)))

(declare-fun c!1216146 () Bool)

(assert (=> b!6601566 (= c!1216146 ((_ is Nil!65576) s!2326))))

(assert (= (and d!2070595 res!2706815) b!6601565))

(assert (= (and d!2070595 c!1216145) b!6601561))

(assert (= (and d!2070595 (not c!1216145)) b!6601566))

(assert (= (and b!6601566 c!1216146) b!6601560))

(assert (= (and b!6601566 (not c!1216146)) b!6601558))

(assert (= (and d!2070595 res!2706813) b!6601562))

(assert (= (and b!6601562 res!2706814) b!6601563))

(assert (= (and b!6601563 res!2706812) b!6601559))

(assert (= (and d!2070595 (not res!2706816)) b!6601564))

(declare-fun m!7377668 () Bool)

(assert (=> b!6601562 m!7377668))

(declare-fun m!7377670 () Bool)

(assert (=> b!6601562 m!7377670))

(declare-fun m!7377672 () Bool)

(assert (=> b!6601564 m!7377672))

(assert (=> b!6601563 m!7377668))

(declare-fun m!7377674 () Bool)

(assert (=> b!6601563 m!7377674))

(assert (=> d!2070595 m!7377672))

(declare-fun m!7377676 () Bool)

(assert (=> d!2070595 m!7377676))

(declare-fun m!7377678 () Bool)

(assert (=> d!2070595 m!7377678))

(assert (=> b!6601565 m!7376864))

(assert (=> b!6601559 m!7377668))

(declare-fun m!7377680 () Bool)

(assert (=> b!6601559 m!7377680))

(declare-fun m!7377682 () Bool)

(assert (=> b!6601558 m!7377682))

(assert (=> b!6601558 m!7377682))

(declare-fun m!7377684 () Bool)

(assert (=> b!6601558 m!7377684))

(declare-fun m!7377686 () Bool)

(assert (=> b!6601558 m!7377686))

(assert (=> b!6601558 m!7377682))

(declare-fun m!7377688 () Bool)

(assert (=> b!6601558 m!7377688))

(assert (=> b!6600499 d!2070595))

(declare-fun d!2070597 () Bool)

(assert (=> d!2070597 (= (Exists!3537 lambda!367919) (choose!49277 lambda!367919))))

(declare-fun bs!1692452 () Bool)

(assert (= bs!1692452 d!2070597))

(declare-fun m!7377690 () Bool)

(assert (=> bs!1692452 m!7377690))

(assert (=> b!6600499 d!2070597))

(declare-fun bs!1692453 () Bool)

(declare-fun d!2070599 () Bool)

(assert (= bs!1692453 (and d!2070599 b!6601290)))

(declare-fun lambda!368011 () Int)

(assert (=> bs!1692453 (not (= lambda!368011 lambda!368001))))

(declare-fun bs!1692454 () Bool)

(assert (= bs!1692454 (and d!2070599 b!6600495)))

(assert (=> bs!1692454 (= (and (= s!2326 Nil!65576) (= (regOne!33446 r!7292) (reg!16796 (regOne!33446 r!7292))) (= (regTwo!33446 r!7292) lt!2413413)) (= lambda!368011 lambda!367921))))

(declare-fun bs!1692455 () Bool)

(assert (= bs!1692455 (and d!2070599 b!6601294)))

(assert (=> bs!1692455 (not (= lambda!368011 lambda!368000))))

(declare-fun bs!1692456 () Bool)

(assert (= bs!1692456 (and d!2070599 b!6600499)))

(assert (=> bs!1692456 (not (= lambda!368011 lambda!367919))))

(declare-fun bs!1692457 () Bool)

(assert (= bs!1692457 (and d!2070599 b!6600987)))

(assert (=> bs!1692457 (not (= lambda!368011 lambda!367979))))

(declare-fun bs!1692458 () Bool)

(assert (= bs!1692458 (and d!2070599 b!6600991)))

(assert (=> bs!1692458 (not (= lambda!368011 lambda!367978))))

(assert (=> bs!1692456 (= lambda!368011 lambda!367918)))

(assert (=> d!2070599 true))

(assert (=> d!2070599 true))

(assert (=> d!2070599 true))

(assert (=> d!2070599 (= (isDefined!13061 (findConcatSeparation!2772 (regOne!33446 r!7292) (regTwo!33446 r!7292) Nil!65576 s!2326 s!2326)) (Exists!3537 lambda!368011))))

(declare-fun lt!2413605 () Unit!159203)

(declare-fun choose!49280 (Regex!16467 Regex!16467 List!65700) Unit!159203)

(assert (=> d!2070599 (= lt!2413605 (choose!49280 (regOne!33446 r!7292) (regTwo!33446 r!7292) s!2326))))

(assert (=> d!2070599 (validRegex!8203 (regOne!33446 r!7292))))

(assert (=> d!2070599 (= (lemmaFindConcatSeparationEquivalentToExists!2536 (regOne!33446 r!7292) (regTwo!33446 r!7292) s!2326) lt!2413605)))

(declare-fun bs!1692459 () Bool)

(assert (= bs!1692459 d!2070599))

(declare-fun m!7377692 () Bool)

(assert (=> bs!1692459 m!7377692))

(declare-fun m!7377694 () Bool)

(assert (=> bs!1692459 m!7377694))

(assert (=> bs!1692459 m!7376802))

(assert (=> bs!1692459 m!7376804))

(assert (=> bs!1692459 m!7376802))

(assert (=> bs!1692459 m!7377678))

(assert (=> b!6600499 d!2070599))

(declare-fun bs!1692460 () Bool)

(declare-fun d!2070601 () Bool)

(assert (= bs!1692460 (and d!2070601 d!2070599)))

(declare-fun lambda!368016 () Int)

(assert (=> bs!1692460 (= lambda!368016 lambda!368011)))

(declare-fun bs!1692461 () Bool)

(assert (= bs!1692461 (and d!2070601 b!6601290)))

(assert (=> bs!1692461 (not (= lambda!368016 lambda!368001))))

(declare-fun bs!1692462 () Bool)

(assert (= bs!1692462 (and d!2070601 b!6600495)))

(assert (=> bs!1692462 (= (and (= s!2326 Nil!65576) (= (regOne!33446 r!7292) (reg!16796 (regOne!33446 r!7292))) (= (regTwo!33446 r!7292) lt!2413413)) (= lambda!368016 lambda!367921))))

(declare-fun bs!1692463 () Bool)

(assert (= bs!1692463 (and d!2070601 b!6601294)))

(assert (=> bs!1692463 (not (= lambda!368016 lambda!368000))))

(declare-fun bs!1692464 () Bool)

(assert (= bs!1692464 (and d!2070601 b!6600499)))

(assert (=> bs!1692464 (not (= lambda!368016 lambda!367919))))

(declare-fun bs!1692465 () Bool)

(assert (= bs!1692465 (and d!2070601 b!6600987)))

(assert (=> bs!1692465 (not (= lambda!368016 lambda!367979))))

(declare-fun bs!1692466 () Bool)

(assert (= bs!1692466 (and d!2070601 b!6600991)))

(assert (=> bs!1692466 (not (= lambda!368016 lambda!367978))))

(assert (=> bs!1692464 (= lambda!368016 lambda!367918)))

(assert (=> d!2070601 true))

(assert (=> d!2070601 true))

(assert (=> d!2070601 true))

(declare-fun lambda!368017 () Int)

(assert (=> bs!1692460 (not (= lambda!368017 lambda!368011))))

(assert (=> bs!1692461 (= (and (= (regOne!33446 r!7292) (regOne!33446 lt!2413436)) (= (regTwo!33446 r!7292) (regTwo!33446 lt!2413436))) (= lambda!368017 lambda!368001))))

(assert (=> bs!1692462 (not (= lambda!368017 lambda!367921))))

(assert (=> bs!1692463 (not (= lambda!368017 lambda!368000))))

(declare-fun bs!1692467 () Bool)

(assert (= bs!1692467 d!2070601))

(assert (=> bs!1692467 (not (= lambda!368017 lambda!368016))))

(assert (=> bs!1692464 (= lambda!368017 lambda!367919)))

(assert (=> bs!1692465 (= lambda!368017 lambda!367979)))

(assert (=> bs!1692466 (not (= lambda!368017 lambda!367978))))

(assert (=> bs!1692464 (not (= lambda!368017 lambda!367918))))

(assert (=> d!2070601 true))

(assert (=> d!2070601 true))

(assert (=> d!2070601 true))

(assert (=> d!2070601 (= (Exists!3537 lambda!368016) (Exists!3537 lambda!368017))))

(declare-fun lt!2413608 () Unit!159203)

(declare-fun choose!49281 (Regex!16467 Regex!16467 List!65700) Unit!159203)

(assert (=> d!2070601 (= lt!2413608 (choose!49281 (regOne!33446 r!7292) (regTwo!33446 r!7292) s!2326))))

(assert (=> d!2070601 (validRegex!8203 (regOne!33446 r!7292))))

(assert (=> d!2070601 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2074 (regOne!33446 r!7292) (regTwo!33446 r!7292) s!2326) lt!2413608)))

(declare-fun m!7377696 () Bool)

(assert (=> bs!1692467 m!7377696))

(declare-fun m!7377698 () Bool)

(assert (=> bs!1692467 m!7377698))

(declare-fun m!7377700 () Bool)

(assert (=> bs!1692467 m!7377700))

(assert (=> bs!1692467 m!7377678))

(assert (=> b!6600499 d!2070601))

(declare-fun d!2070603 () Bool)

(declare-fun isEmpty!37850 (Option!16358) Bool)

(assert (=> d!2070603 (= (isDefined!13061 (findConcatSeparation!2772 (regOne!33446 r!7292) (regTwo!33446 r!7292) Nil!65576 s!2326 s!2326)) (not (isEmpty!37850 (findConcatSeparation!2772 (regOne!33446 r!7292) (regTwo!33446 r!7292) Nil!65576 s!2326 s!2326))))))

(declare-fun bs!1692468 () Bool)

(assert (= bs!1692468 d!2070603))

(assert (=> bs!1692468 m!7376802))

(declare-fun m!7377702 () Bool)

(assert (=> bs!1692468 m!7377702))

(assert (=> b!6600499 d!2070603))

(declare-fun d!2070605 () Bool)

(declare-fun e!3994496 () Bool)

(assert (=> d!2070605 e!3994496))

(declare-fun res!2706831 () Bool)

(assert (=> d!2070605 (=> (not res!2706831) (not e!3994496))))

(declare-fun lt!2413611 () List!65702)

(declare-fun noDuplicate!2272 (List!65702) Bool)

(assert (=> d!2070605 (= res!2706831 (noDuplicate!2272 lt!2413611))))

(declare-fun choose!49282 ((InoxSet Context!11702)) List!65702)

(assert (=> d!2070605 (= lt!2413611 (choose!49282 z!1189))))

(assert (=> d!2070605 (= (toList!10251 z!1189) lt!2413611)))

(declare-fun b!6601581 () Bool)

(declare-fun content!12644 (List!65702) (InoxSet Context!11702))

(assert (=> b!6601581 (= e!3994496 (= (content!12644 lt!2413611) z!1189))))

(assert (= (and d!2070605 res!2706831) b!6601581))

(declare-fun m!7377704 () Bool)

(assert (=> d!2070605 m!7377704))

(declare-fun m!7377706 () Bool)

(assert (=> d!2070605 m!7377706))

(declare-fun m!7377708 () Bool)

(assert (=> b!6601581 m!7377708))

(assert (=> b!6600519 d!2070605))

(declare-fun b!6601582 () Bool)

(declare-fun e!3994498 () Bool)

(declare-fun e!3994497 () Bool)

(assert (=> b!6601582 (= e!3994498 e!3994497)))

(declare-fun c!1216147 () Bool)

(assert (=> b!6601582 (= c!1216147 ((_ is Union!16467) lt!2413413))))

(declare-fun call!577384 () Bool)

(declare-fun c!1216148 () Bool)

(declare-fun bm!577378 () Bool)

(assert (=> bm!577378 (= call!577384 (validRegex!8203 (ite c!1216148 (reg!16796 lt!2413413) (ite c!1216147 (regTwo!33447 lt!2413413) (regTwo!33446 lt!2413413)))))))

(declare-fun b!6601583 () Bool)

(declare-fun e!3994501 () Bool)

(assert (=> b!6601583 (= e!3994498 e!3994501)))

(declare-fun res!2706834 () Bool)

(assert (=> b!6601583 (= res!2706834 (not (nullable!6460 (reg!16796 lt!2413413))))))

(assert (=> b!6601583 (=> (not res!2706834) (not e!3994501))))

(declare-fun bm!577379 () Bool)

(declare-fun call!577385 () Bool)

(assert (=> bm!577379 (= call!577385 (validRegex!8203 (ite c!1216147 (regOne!33447 lt!2413413) (regOne!33446 lt!2413413))))))

(declare-fun b!6601584 () Bool)

(declare-fun e!3994499 () Bool)

(declare-fun call!577383 () Bool)

(assert (=> b!6601584 (= e!3994499 call!577383)))

(declare-fun b!6601585 () Bool)

(declare-fun e!3994502 () Bool)

(declare-fun e!3994500 () Bool)

(assert (=> b!6601585 (= e!3994502 e!3994500)))

(declare-fun res!2706836 () Bool)

(assert (=> b!6601585 (=> (not res!2706836) (not e!3994500))))

(assert (=> b!6601585 (= res!2706836 call!577385)))

(declare-fun bm!577380 () Bool)

(assert (=> bm!577380 (= call!577383 call!577384)))

(declare-fun b!6601586 () Bool)

(declare-fun res!2706835 () Bool)

(assert (=> b!6601586 (=> res!2706835 e!3994502)))

(assert (=> b!6601586 (= res!2706835 (not ((_ is Concat!25312) lt!2413413)))))

(assert (=> b!6601586 (= e!3994497 e!3994502)))

(declare-fun b!6601587 () Bool)

(assert (=> b!6601587 (= e!3994501 call!577384)))

(declare-fun b!6601589 () Bool)

(assert (=> b!6601589 (= e!3994500 call!577383)))

(declare-fun b!6601590 () Bool)

(declare-fun e!3994503 () Bool)

(assert (=> b!6601590 (= e!3994503 e!3994498)))

(assert (=> b!6601590 (= c!1216148 ((_ is Star!16467) lt!2413413))))

(declare-fun b!6601588 () Bool)

(declare-fun res!2706833 () Bool)

(assert (=> b!6601588 (=> (not res!2706833) (not e!3994499))))

(assert (=> b!6601588 (= res!2706833 call!577385)))

(assert (=> b!6601588 (= e!3994497 e!3994499)))

(declare-fun d!2070607 () Bool)

(declare-fun res!2706832 () Bool)

(assert (=> d!2070607 (=> res!2706832 e!3994503)))

(assert (=> d!2070607 (= res!2706832 ((_ is ElementMatch!16467) lt!2413413))))

(assert (=> d!2070607 (= (validRegex!8203 lt!2413413) e!3994503)))

(assert (= (and d!2070607 (not res!2706832)) b!6601590))

(assert (= (and b!6601590 c!1216148) b!6601583))

(assert (= (and b!6601590 (not c!1216148)) b!6601582))

(assert (= (and b!6601583 res!2706834) b!6601587))

(assert (= (and b!6601582 c!1216147) b!6601588))

(assert (= (and b!6601582 (not c!1216147)) b!6601586))

(assert (= (and b!6601588 res!2706833) b!6601584))

(assert (= (and b!6601586 (not res!2706835)) b!6601585))

(assert (= (and b!6601585 res!2706836) b!6601589))

(assert (= (or b!6601584 b!6601589) bm!577380))

(assert (= (or b!6601588 b!6601585) bm!577379))

(assert (= (or b!6601587 bm!577380) bm!577378))

(declare-fun m!7377710 () Bool)

(assert (=> bm!577378 m!7377710))

(declare-fun m!7377712 () Bool)

(assert (=> b!6601583 m!7377712))

(declare-fun m!7377714 () Bool)

(assert (=> bm!577379 m!7377714))

(assert (=> b!6600497 d!2070607))

(declare-fun c!1216151 () Bool)

(declare-fun bm!577381 () Bool)

(declare-fun call!577391 () List!65701)

(declare-fun c!1216150 () Bool)

(declare-fun c!1216152 () Bool)

(declare-fun call!577387 () (InoxSet Context!11702))

(assert (=> bm!577381 (= call!577387 (derivationStepZipperDown!1715 (ite c!1216152 (regTwo!33447 (reg!16796 (regOne!33446 r!7292))) (ite c!1216151 (regTwo!33446 (reg!16796 (regOne!33446 r!7292))) (ite c!1216150 (regOne!33446 (reg!16796 (regOne!33446 r!7292))) (reg!16796 (reg!16796 (regOne!33446 r!7292)))))) (ite (or c!1216152 c!1216151) lt!2413452 (Context!11703 call!577391)) (h!72024 s!2326)))))

(declare-fun b!6601591 () Bool)

(declare-fun e!3994508 () Bool)

(assert (=> b!6601591 (= e!3994508 (nullable!6460 (regOne!33446 (reg!16796 (regOne!33446 r!7292)))))))

(declare-fun b!6601592 () Bool)

(declare-fun e!3994506 () (InoxSet Context!11702))

(declare-fun call!577390 () (InoxSet Context!11702))

(declare-fun call!577388 () (InoxSet Context!11702))

(assert (=> b!6601592 (= e!3994506 ((_ map or) call!577390 call!577388))))

(declare-fun b!6601593 () Bool)

(declare-fun e!3994504 () (InoxSet Context!11702))

(declare-fun call!577389 () (InoxSet Context!11702))

(assert (=> b!6601593 (= e!3994504 call!577389)))

(declare-fun bm!577382 () Bool)

(assert (=> bm!577382 (= call!577388 call!577387)))

(declare-fun b!6601594 () Bool)

(declare-fun e!3994509 () (InoxSet Context!11702))

(assert (=> b!6601594 (= e!3994509 (store ((as const (Array Context!11702 Bool)) false) lt!2413452 true))))

(declare-fun b!6601595 () Bool)

(declare-fun e!3994505 () (InoxSet Context!11702))

(assert (=> b!6601595 (= e!3994505 ((_ map or) call!577390 call!577387))))

(declare-fun b!6601596 () Bool)

(assert (=> b!6601596 (= e!3994504 ((as const (Array Context!11702 Bool)) false))))

(declare-fun b!6601597 () Bool)

(declare-fun e!3994507 () (InoxSet Context!11702))

(assert (=> b!6601597 (= e!3994506 e!3994507)))

(assert (=> b!6601597 (= c!1216150 ((_ is Concat!25312) (reg!16796 (regOne!33446 r!7292))))))

(declare-fun bm!577383 () Bool)

(declare-fun call!577386 () List!65701)

(assert (=> bm!577383 (= call!577390 (derivationStepZipperDown!1715 (ite c!1216152 (regOne!33447 (reg!16796 (regOne!33446 r!7292))) (regOne!33446 (reg!16796 (regOne!33446 r!7292)))) (ite c!1216152 lt!2413452 (Context!11703 call!577386)) (h!72024 s!2326)))))

(declare-fun d!2070609 () Bool)

(declare-fun c!1216149 () Bool)

(assert (=> d!2070609 (= c!1216149 (and ((_ is ElementMatch!16467) (reg!16796 (regOne!33446 r!7292))) (= (c!1215814 (reg!16796 (regOne!33446 r!7292))) (h!72024 s!2326))))))

(assert (=> d!2070609 (= (derivationStepZipperDown!1715 (reg!16796 (regOne!33446 r!7292)) lt!2413452 (h!72024 s!2326)) e!3994509)))

(declare-fun b!6601598 () Bool)

(assert (=> b!6601598 (= e!3994507 call!577389)))

(declare-fun b!6601599 () Bool)

(assert (=> b!6601599 (= e!3994509 e!3994505)))

(assert (=> b!6601599 (= c!1216152 ((_ is Union!16467) (reg!16796 (regOne!33446 r!7292))))))

(declare-fun b!6601600 () Bool)

(declare-fun c!1216153 () Bool)

(assert (=> b!6601600 (= c!1216153 ((_ is Star!16467) (reg!16796 (regOne!33446 r!7292))))))

(assert (=> b!6601600 (= e!3994507 e!3994504)))

(declare-fun bm!577384 () Bool)

(assert (=> bm!577384 (= call!577391 call!577386)))

(declare-fun b!6601601 () Bool)

(assert (=> b!6601601 (= c!1216151 e!3994508)))

(declare-fun res!2706837 () Bool)

(assert (=> b!6601601 (=> (not res!2706837) (not e!3994508))))

(assert (=> b!6601601 (= res!2706837 ((_ is Concat!25312) (reg!16796 (regOne!33446 r!7292))))))

(assert (=> b!6601601 (= e!3994505 e!3994506)))

(declare-fun bm!577385 () Bool)

(assert (=> bm!577385 (= call!577389 call!577388)))

(declare-fun bm!577386 () Bool)

(assert (=> bm!577386 (= call!577386 ($colon$colon!2308 (exprs!6351 lt!2413452) (ite (or c!1216151 c!1216150) (regTwo!33446 (reg!16796 (regOne!33446 r!7292))) (reg!16796 (regOne!33446 r!7292)))))))

(assert (= (and d!2070609 c!1216149) b!6601594))

(assert (= (and d!2070609 (not c!1216149)) b!6601599))

(assert (= (and b!6601599 c!1216152) b!6601595))

(assert (= (and b!6601599 (not c!1216152)) b!6601601))

(assert (= (and b!6601601 res!2706837) b!6601591))

(assert (= (and b!6601601 c!1216151) b!6601592))

(assert (= (and b!6601601 (not c!1216151)) b!6601597))

(assert (= (and b!6601597 c!1216150) b!6601598))

(assert (= (and b!6601597 (not c!1216150)) b!6601600))

(assert (= (and b!6601600 c!1216153) b!6601593))

(assert (= (and b!6601600 (not c!1216153)) b!6601596))

(assert (= (or b!6601598 b!6601593) bm!577384))

(assert (= (or b!6601598 b!6601593) bm!577385))

(assert (= (or b!6601592 bm!577384) bm!577386))

(assert (= (or b!6601592 bm!577385) bm!577382))

(assert (= (or b!6601595 bm!577382) bm!577381))

(assert (= (or b!6601595 b!6601592) bm!577383))

(declare-fun m!7377716 () Bool)

(assert (=> b!6601591 m!7377716))

(declare-fun m!7377718 () Bool)

(assert (=> bm!577386 m!7377718))

(assert (=> b!6601594 m!7376788))

(declare-fun m!7377720 () Bool)

(assert (=> bm!577381 m!7377720))

(declare-fun m!7377722 () Bool)

(assert (=> bm!577383 m!7377722))

(assert (=> b!6600517 d!2070609))

(declare-fun bs!1692469 () Bool)

(declare-fun d!2070611 () Bool)

(assert (= bs!1692469 (and d!2070611 d!2070583)))

(declare-fun lambda!368018 () Int)

(assert (=> bs!1692469 (= lambda!368018 lambda!368005)))

(declare-fun bs!1692470 () Bool)

(assert (= bs!1692470 (and d!2070611 d!2070487)))

(assert (=> bs!1692470 (= lambda!368018 lambda!367998)))

(declare-fun bs!1692471 () Bool)

(assert (= bs!1692471 (and d!2070611 d!2070585)))

(assert (=> bs!1692471 (= lambda!368018 lambda!368008)))

(declare-fun bs!1692472 () Bool)

(assert (= bs!1692472 (and d!2070611 d!2070371)))

(assert (=> bs!1692472 (= lambda!368018 lambda!367938)))

(declare-fun bs!1692473 () Bool)

(assert (= bs!1692473 (and d!2070611 d!2070379)))

(assert (=> bs!1692473 (= lambda!368018 lambda!367943)))

(assert (=> d!2070611 (= (inv!84414 (h!72026 zl!343)) (forall!15656 (exprs!6351 (h!72026 zl!343)) lambda!368018))))

(declare-fun bs!1692474 () Bool)

(assert (= bs!1692474 d!2070611))

(declare-fun m!7377724 () Bool)

(assert (=> bs!1692474 m!7377724))

(assert (=> b!6600518 d!2070611))

(declare-fun d!2070613 () Bool)

(declare-fun lt!2413612 () Regex!16467)

(assert (=> d!2070613 (validRegex!8203 lt!2413612)))

(assert (=> d!2070613 (= lt!2413612 (generalisedUnion!2311 (unfocusZipperList!1888 (Cons!65578 lt!2413452 Nil!65578))))))

(assert (=> d!2070613 (= (unfocusZipper!2209 (Cons!65578 lt!2413452 Nil!65578)) lt!2413612)))

(declare-fun bs!1692475 () Bool)

(assert (= bs!1692475 d!2070613))

(declare-fun m!7377726 () Bool)

(assert (=> bs!1692475 m!7377726))

(declare-fun m!7377728 () Bool)

(assert (=> bs!1692475 m!7377728))

(assert (=> bs!1692475 m!7377728))

(declare-fun m!7377730 () Bool)

(assert (=> bs!1692475 m!7377730))

(assert (=> b!6600496 d!2070613))

(declare-fun bs!1692476 () Bool)

(declare-fun b!6601610 () Bool)

(assert (= bs!1692476 (and b!6601610 d!2070599)))

(declare-fun lambda!368019 () Int)

(assert (=> bs!1692476 (not (= lambda!368019 lambda!368011))))

(declare-fun bs!1692477 () Bool)

(assert (= bs!1692477 (and b!6601610 b!6601290)))

(assert (=> bs!1692477 (not (= lambda!368019 lambda!368001))))

(declare-fun bs!1692478 () Bool)

(assert (= bs!1692478 (and b!6601610 b!6600495)))

(assert (=> bs!1692478 (not (= lambda!368019 lambda!367921))))

(declare-fun bs!1692479 () Bool)

(assert (= bs!1692479 (and b!6601610 b!6601294)))

(assert (=> bs!1692479 (= (and (= Nil!65576 s!2326) (= (reg!16796 lt!2413413) (reg!16796 lt!2413436)) (= lt!2413413 lt!2413436)) (= lambda!368019 lambda!368000))))

(declare-fun bs!1692480 () Bool)

(assert (= bs!1692480 (and b!6601610 d!2070601)))

(assert (=> bs!1692480 (not (= lambda!368019 lambda!368016))))

(declare-fun bs!1692481 () Bool)

(assert (= bs!1692481 (and b!6601610 b!6600499)))

(assert (=> bs!1692481 (not (= lambda!368019 lambda!367919))))

(declare-fun bs!1692482 () Bool)

(assert (= bs!1692482 (and b!6601610 b!6600987)))

(assert (=> bs!1692482 (not (= lambda!368019 lambda!367979))))

(declare-fun bs!1692483 () Bool)

(assert (= bs!1692483 (and b!6601610 b!6600991)))

(assert (=> bs!1692483 (= (and (= Nil!65576 s!2326) (= (reg!16796 lt!2413413) (reg!16796 r!7292)) (= lt!2413413 r!7292)) (= lambda!368019 lambda!367978))))

(assert (=> bs!1692481 (not (= lambda!368019 lambda!367918))))

(assert (=> bs!1692480 (not (= lambda!368019 lambda!368017))))

(assert (=> b!6601610 true))

(assert (=> b!6601610 true))

(declare-fun bs!1692484 () Bool)

(declare-fun b!6601606 () Bool)

(assert (= bs!1692484 (and b!6601606 d!2070599)))

(declare-fun lambda!368020 () Int)

(assert (=> bs!1692484 (not (= lambda!368020 lambda!368011))))

(declare-fun bs!1692485 () Bool)

(assert (= bs!1692485 (and b!6601606 b!6601290)))

(assert (=> bs!1692485 (= (and (= Nil!65576 s!2326) (= (regOne!33446 lt!2413413) (regOne!33446 lt!2413436)) (= (regTwo!33446 lt!2413413) (regTwo!33446 lt!2413436))) (= lambda!368020 lambda!368001))))

(declare-fun bs!1692486 () Bool)

(assert (= bs!1692486 (and b!6601606 b!6600495)))

(assert (=> bs!1692486 (not (= lambda!368020 lambda!367921))))

(declare-fun bs!1692487 () Bool)

(assert (= bs!1692487 (and b!6601606 b!6601294)))

(assert (=> bs!1692487 (not (= lambda!368020 lambda!368000))))

(declare-fun bs!1692488 () Bool)

(assert (= bs!1692488 (and b!6601606 b!6601610)))

(assert (=> bs!1692488 (not (= lambda!368020 lambda!368019))))

(declare-fun bs!1692489 () Bool)

(assert (= bs!1692489 (and b!6601606 d!2070601)))

(assert (=> bs!1692489 (not (= lambda!368020 lambda!368016))))

(declare-fun bs!1692490 () Bool)

(assert (= bs!1692490 (and b!6601606 b!6600499)))

(assert (=> bs!1692490 (= (and (= Nil!65576 s!2326) (= (regOne!33446 lt!2413413) (regOne!33446 r!7292)) (= (regTwo!33446 lt!2413413) (regTwo!33446 r!7292))) (= lambda!368020 lambda!367919))))

(declare-fun bs!1692491 () Bool)

(assert (= bs!1692491 (and b!6601606 b!6600987)))

(assert (=> bs!1692491 (= (and (= Nil!65576 s!2326) (= (regOne!33446 lt!2413413) (regOne!33446 r!7292)) (= (regTwo!33446 lt!2413413) (regTwo!33446 r!7292))) (= lambda!368020 lambda!367979))))

(declare-fun bs!1692492 () Bool)

(assert (= bs!1692492 (and b!6601606 b!6600991)))

(assert (=> bs!1692492 (not (= lambda!368020 lambda!367978))))

(assert (=> bs!1692490 (not (= lambda!368020 lambda!367918))))

(assert (=> bs!1692489 (= (and (= Nil!65576 s!2326) (= (regOne!33446 lt!2413413) (regOne!33446 r!7292)) (= (regTwo!33446 lt!2413413) (regTwo!33446 r!7292))) (= lambda!368020 lambda!368017))))

(assert (=> b!6601606 true))

(assert (=> b!6601606 true))

(declare-fun b!6601602 () Bool)

(declare-fun e!3994512 () Bool)

(declare-fun call!577392 () Bool)

(assert (=> b!6601602 (= e!3994512 call!577392)))

(declare-fun b!6601603 () Bool)

(declare-fun e!3994510 () Bool)

(declare-fun e!3994511 () Bool)

(assert (=> b!6601603 (= e!3994510 e!3994511)))

(declare-fun c!1216156 () Bool)

(assert (=> b!6601603 (= c!1216156 ((_ is Star!16467) lt!2413413))))

(declare-fun b!6601604 () Bool)

(declare-fun e!3994514 () Bool)

(assert (=> b!6601604 (= e!3994510 e!3994514)))

(declare-fun res!2706838 () Bool)

(assert (=> b!6601604 (= res!2706838 (matchRSpec!3568 (regOne!33447 lt!2413413) Nil!65576))))

(assert (=> b!6601604 (=> res!2706838 e!3994514)))

(declare-fun b!6601605 () Bool)

(assert (=> b!6601605 (= e!3994514 (matchRSpec!3568 (regTwo!33447 lt!2413413) Nil!65576))))

(declare-fun call!577393 () Bool)

(assert (=> b!6601606 (= e!3994511 call!577393)))

(declare-fun d!2070615 () Bool)

(declare-fun c!1216157 () Bool)

(assert (=> d!2070615 (= c!1216157 ((_ is EmptyExpr!16467) lt!2413413))))

(assert (=> d!2070615 (= (matchRSpec!3568 lt!2413413 Nil!65576) e!3994512)))

(declare-fun b!6601607 () Bool)

(declare-fun e!3994513 () Bool)

(assert (=> b!6601607 (= e!3994513 (= Nil!65576 (Cons!65576 (c!1215814 lt!2413413) Nil!65576)))))

(declare-fun bm!577387 () Bool)

(assert (=> bm!577387 (= call!577393 (Exists!3537 (ite c!1216156 lambda!368019 lambda!368020)))))

(declare-fun b!6601608 () Bool)

(declare-fun c!1216154 () Bool)

(assert (=> b!6601608 (= c!1216154 ((_ is ElementMatch!16467) lt!2413413))))

(declare-fun e!3994515 () Bool)

(assert (=> b!6601608 (= e!3994515 e!3994513)))

(declare-fun b!6601609 () Bool)

(declare-fun c!1216155 () Bool)

(assert (=> b!6601609 (= c!1216155 ((_ is Union!16467) lt!2413413))))

(assert (=> b!6601609 (= e!3994513 e!3994510)))

(declare-fun bm!577388 () Bool)

(assert (=> bm!577388 (= call!577392 (isEmpty!37848 Nil!65576))))

(declare-fun e!3994516 () Bool)

(assert (=> b!6601610 (= e!3994516 call!577393)))

(declare-fun b!6601611 () Bool)

(declare-fun res!2706840 () Bool)

(assert (=> b!6601611 (=> res!2706840 e!3994516)))

(assert (=> b!6601611 (= res!2706840 call!577392)))

(assert (=> b!6601611 (= e!3994511 e!3994516)))

(declare-fun b!6601612 () Bool)

(assert (=> b!6601612 (= e!3994512 e!3994515)))

(declare-fun res!2706839 () Bool)

(assert (=> b!6601612 (= res!2706839 (not ((_ is EmptyLang!16467) lt!2413413)))))

(assert (=> b!6601612 (=> (not res!2706839) (not e!3994515))))

(assert (= (and d!2070615 c!1216157) b!6601602))

(assert (= (and d!2070615 (not c!1216157)) b!6601612))

(assert (= (and b!6601612 res!2706839) b!6601608))

(assert (= (and b!6601608 c!1216154) b!6601607))

(assert (= (and b!6601608 (not c!1216154)) b!6601609))

(assert (= (and b!6601609 c!1216155) b!6601604))

(assert (= (and b!6601609 (not c!1216155)) b!6601603))

(assert (= (and b!6601604 (not res!2706838)) b!6601605))

(assert (= (and b!6601603 c!1216156) b!6601611))

(assert (= (and b!6601603 (not c!1216156)) b!6601606))

(assert (= (and b!6601611 (not res!2706840)) b!6601610))

(assert (= (or b!6601610 b!6601606) bm!577387))

(assert (= (or b!6601602 b!6601611) bm!577388))

(declare-fun m!7377732 () Bool)

(assert (=> b!6601604 m!7377732))

(declare-fun m!7377734 () Bool)

(assert (=> b!6601605 m!7377734))

(declare-fun m!7377736 () Bool)

(assert (=> bm!577387 m!7377736))

(declare-fun m!7377738 () Bool)

(assert (=> bm!577388 m!7377738))

(assert (=> b!6600495 d!2070615))

(declare-fun b!6601613 () Bool)

(declare-fun e!3994518 () Bool)

(declare-fun e!3994517 () Bool)

(assert (=> b!6601613 (= e!3994518 e!3994517)))

(declare-fun c!1216158 () Bool)

(assert (=> b!6601613 (= c!1216158 ((_ is Union!16467) (reg!16796 (regOne!33446 r!7292))))))

(declare-fun bm!577389 () Bool)

(declare-fun c!1216159 () Bool)

(declare-fun call!577395 () Bool)

(assert (=> bm!577389 (= call!577395 (validRegex!8203 (ite c!1216159 (reg!16796 (reg!16796 (regOne!33446 r!7292))) (ite c!1216158 (regTwo!33447 (reg!16796 (regOne!33446 r!7292))) (regTwo!33446 (reg!16796 (regOne!33446 r!7292)))))))))

(declare-fun b!6601614 () Bool)

(declare-fun e!3994521 () Bool)

(assert (=> b!6601614 (= e!3994518 e!3994521)))

(declare-fun res!2706843 () Bool)

(assert (=> b!6601614 (= res!2706843 (not (nullable!6460 (reg!16796 (reg!16796 (regOne!33446 r!7292))))))))

(assert (=> b!6601614 (=> (not res!2706843) (not e!3994521))))

(declare-fun bm!577390 () Bool)

(declare-fun call!577396 () Bool)

(assert (=> bm!577390 (= call!577396 (validRegex!8203 (ite c!1216158 (regOne!33447 (reg!16796 (regOne!33446 r!7292))) (regOne!33446 (reg!16796 (regOne!33446 r!7292))))))))

(declare-fun b!6601615 () Bool)

(declare-fun e!3994519 () Bool)

(declare-fun call!577394 () Bool)

(assert (=> b!6601615 (= e!3994519 call!577394)))

(declare-fun b!6601616 () Bool)

(declare-fun e!3994522 () Bool)

(declare-fun e!3994520 () Bool)

(assert (=> b!6601616 (= e!3994522 e!3994520)))

(declare-fun res!2706845 () Bool)

(assert (=> b!6601616 (=> (not res!2706845) (not e!3994520))))

(assert (=> b!6601616 (= res!2706845 call!577396)))

(declare-fun bm!577391 () Bool)

(assert (=> bm!577391 (= call!577394 call!577395)))

(declare-fun b!6601617 () Bool)

(declare-fun res!2706844 () Bool)

(assert (=> b!6601617 (=> res!2706844 e!3994522)))

(assert (=> b!6601617 (= res!2706844 (not ((_ is Concat!25312) (reg!16796 (regOne!33446 r!7292)))))))

(assert (=> b!6601617 (= e!3994517 e!3994522)))

(declare-fun b!6601618 () Bool)

(assert (=> b!6601618 (= e!3994521 call!577395)))

(declare-fun b!6601620 () Bool)

(assert (=> b!6601620 (= e!3994520 call!577394)))

(declare-fun b!6601621 () Bool)

(declare-fun e!3994523 () Bool)

(assert (=> b!6601621 (= e!3994523 e!3994518)))

(assert (=> b!6601621 (= c!1216159 ((_ is Star!16467) (reg!16796 (regOne!33446 r!7292))))))

(declare-fun b!6601619 () Bool)

(declare-fun res!2706842 () Bool)

(assert (=> b!6601619 (=> (not res!2706842) (not e!3994519))))

(assert (=> b!6601619 (= res!2706842 call!577396)))

(assert (=> b!6601619 (= e!3994517 e!3994519)))

(declare-fun d!2070617 () Bool)

(declare-fun res!2706841 () Bool)

(assert (=> d!2070617 (=> res!2706841 e!3994523)))

(assert (=> d!2070617 (= res!2706841 ((_ is ElementMatch!16467) (reg!16796 (regOne!33446 r!7292))))))

(assert (=> d!2070617 (= (validRegex!8203 (reg!16796 (regOne!33446 r!7292))) e!3994523)))

(assert (= (and d!2070617 (not res!2706841)) b!6601621))

(assert (= (and b!6601621 c!1216159) b!6601614))

(assert (= (and b!6601621 (not c!1216159)) b!6601613))

(assert (= (and b!6601614 res!2706843) b!6601618))

(assert (= (and b!6601613 c!1216158) b!6601619))

(assert (= (and b!6601613 (not c!1216158)) b!6601617))

(assert (= (and b!6601619 res!2706842) b!6601615))

(assert (= (and b!6601617 (not res!2706844)) b!6601616))

(assert (= (and b!6601616 res!2706845) b!6601620))

(assert (= (or b!6601615 b!6601620) bm!577391))

(assert (= (or b!6601619 b!6601616) bm!577390))

(assert (= (or b!6601618 bm!577391) bm!577389))

(declare-fun m!7377740 () Bool)

(assert (=> bm!577389 m!7377740))

(declare-fun m!7377742 () Bool)

(assert (=> b!6601614 m!7377742))

(declare-fun m!7377744 () Bool)

(assert (=> bm!577390 m!7377744))

(assert (=> b!6600495 d!2070617))

(declare-fun bs!1692493 () Bool)

(declare-fun d!2070619 () Bool)

(assert (= bs!1692493 (and d!2070619 d!2070599)))

(declare-fun lambda!368021 () Int)

(assert (=> bs!1692493 (= (and (= Nil!65576 s!2326) (= (reg!16796 (regOne!33446 r!7292)) (regOne!33446 r!7292)) (= lt!2413413 (regTwo!33446 r!7292))) (= lambda!368021 lambda!368011))))

(declare-fun bs!1692494 () Bool)

(assert (= bs!1692494 (and d!2070619 b!6601290)))

(assert (=> bs!1692494 (not (= lambda!368021 lambda!368001))))

(declare-fun bs!1692495 () Bool)

(assert (= bs!1692495 (and d!2070619 b!6600495)))

(assert (=> bs!1692495 (= lambda!368021 lambda!367921)))

(declare-fun bs!1692496 () Bool)

(assert (= bs!1692496 (and d!2070619 b!6601610)))

(assert (=> bs!1692496 (not (= lambda!368021 lambda!368019))))

(declare-fun bs!1692497 () Bool)

(assert (= bs!1692497 (and d!2070619 d!2070601)))

(assert (=> bs!1692497 (= (and (= Nil!65576 s!2326) (= (reg!16796 (regOne!33446 r!7292)) (regOne!33446 r!7292)) (= lt!2413413 (regTwo!33446 r!7292))) (= lambda!368021 lambda!368016))))

(declare-fun bs!1692498 () Bool)

(assert (= bs!1692498 (and d!2070619 b!6600499)))

(assert (=> bs!1692498 (not (= lambda!368021 lambda!367919))))

(declare-fun bs!1692499 () Bool)

(assert (= bs!1692499 (and d!2070619 b!6600987)))

(assert (=> bs!1692499 (not (= lambda!368021 lambda!367979))))

(declare-fun bs!1692500 () Bool)

(assert (= bs!1692500 (and d!2070619 b!6600991)))

(assert (=> bs!1692500 (not (= lambda!368021 lambda!367978))))

(assert (=> bs!1692498 (= (and (= Nil!65576 s!2326) (= (reg!16796 (regOne!33446 r!7292)) (regOne!33446 r!7292)) (= lt!2413413 (regTwo!33446 r!7292))) (= lambda!368021 lambda!367918))))

(assert (=> bs!1692497 (not (= lambda!368021 lambda!368017))))

(declare-fun bs!1692501 () Bool)

(assert (= bs!1692501 (and d!2070619 b!6601294)))

(assert (=> bs!1692501 (not (= lambda!368021 lambda!368000))))

(declare-fun bs!1692502 () Bool)

(assert (= bs!1692502 (and d!2070619 b!6601606)))

(assert (=> bs!1692502 (not (= lambda!368021 lambda!368020))))

(assert (=> d!2070619 true))

(assert (=> d!2070619 true))

(assert (=> d!2070619 true))

(assert (=> d!2070619 (= (isDefined!13061 (findConcatSeparation!2772 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576 Nil!65576 Nil!65576)) (Exists!3537 lambda!368021))))

(declare-fun lt!2413613 () Unit!159203)

(assert (=> d!2070619 (= lt!2413613 (choose!49280 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576))))

(assert (=> d!2070619 (validRegex!8203 (reg!16796 (regOne!33446 r!7292)))))

(assert (=> d!2070619 (= (lemmaFindConcatSeparationEquivalentToExists!2536 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576) lt!2413613)))

(declare-fun bs!1692503 () Bool)

(assert (= bs!1692503 d!2070619))

(declare-fun m!7377746 () Bool)

(assert (=> bs!1692503 m!7377746))

(declare-fun m!7377748 () Bool)

(assert (=> bs!1692503 m!7377748))

(assert (=> bs!1692503 m!7376880))

(assert (=> bs!1692503 m!7376888))

(assert (=> bs!1692503 m!7376880))

(assert (=> bs!1692503 m!7376878))

(assert (=> b!6600495 d!2070619))

(declare-fun d!2070621 () Bool)

(assert (=> d!2070621 (= (Exists!3537 lambda!367921) (choose!49277 lambda!367921))))

(declare-fun bs!1692504 () Bool)

(assert (= bs!1692504 d!2070621))

(declare-fun m!7377750 () Bool)

(assert (=> bs!1692504 m!7377750))

(assert (=> b!6600495 d!2070621))

(declare-fun b!6601622 () Bool)

(declare-fun e!3994527 () Bool)

(assert (=> b!6601622 (= e!3994527 (nullable!6460 lt!2413413))))

(declare-fun b!6601623 () Bool)

(declare-fun e!3994526 () Bool)

(assert (=> b!6601623 (= e!3994526 (not (= (head!13384 Nil!65576) (c!1215814 lt!2413413))))))

(declare-fun b!6601624 () Bool)

(declare-fun e!3994524 () Bool)

(declare-fun e!3994529 () Bool)

(assert (=> b!6601624 (= e!3994524 e!3994529)))

(declare-fun res!2706847 () Bool)

(assert (=> b!6601624 (=> (not res!2706847) (not e!3994529))))

(declare-fun lt!2413614 () Bool)

(assert (=> b!6601624 (= res!2706847 (not lt!2413614))))

(declare-fun b!6601625 () Bool)

(assert (=> b!6601625 (= e!3994527 (matchR!8650 (derivativeStep!5151 lt!2413413 (head!13384 Nil!65576)) (tail!12469 Nil!65576)))))

(declare-fun b!6601627 () Bool)

(declare-fun e!3994525 () Bool)

(assert (=> b!6601627 (= e!3994525 (= (head!13384 Nil!65576) (c!1215814 lt!2413413)))))

(declare-fun b!6601628 () Bool)

(declare-fun res!2706849 () Bool)

(assert (=> b!6601628 (=> res!2706849 e!3994524)))

(assert (=> b!6601628 (= res!2706849 e!3994525)))

(declare-fun res!2706852 () Bool)

(assert (=> b!6601628 (=> (not res!2706852) (not e!3994525))))

(assert (=> b!6601628 (= res!2706852 lt!2413614)))

(declare-fun b!6601629 () Bool)

(declare-fun res!2706851 () Bool)

(assert (=> b!6601629 (=> (not res!2706851) (not e!3994525))))

(declare-fun call!577397 () Bool)

(assert (=> b!6601629 (= res!2706851 (not call!577397))))

(declare-fun bm!577392 () Bool)

(assert (=> bm!577392 (= call!577397 (isEmpty!37848 Nil!65576))))

(declare-fun b!6601630 () Bool)

(declare-fun res!2706853 () Bool)

(assert (=> b!6601630 (=> res!2706853 e!3994524)))

(assert (=> b!6601630 (= res!2706853 (not ((_ is ElementMatch!16467) lt!2413413)))))

(declare-fun e!3994528 () Bool)

(assert (=> b!6601630 (= e!3994528 e!3994524)))

(declare-fun b!6601631 () Bool)

(declare-fun e!3994530 () Bool)

(assert (=> b!6601631 (= e!3994530 e!3994528)))

(declare-fun c!1216161 () Bool)

(assert (=> b!6601631 (= c!1216161 ((_ is EmptyLang!16467) lt!2413413))))

(declare-fun b!6601632 () Bool)

(assert (=> b!6601632 (= e!3994529 e!3994526)))

(declare-fun res!2706846 () Bool)

(assert (=> b!6601632 (=> res!2706846 e!3994526)))

(assert (=> b!6601632 (= res!2706846 call!577397)))

(declare-fun b!6601633 () Bool)

(assert (=> b!6601633 (= e!3994528 (not lt!2413614))))

(declare-fun b!6601634 () Bool)

(declare-fun res!2706850 () Bool)

(assert (=> b!6601634 (=> res!2706850 e!3994526)))

(assert (=> b!6601634 (= res!2706850 (not (isEmpty!37848 (tail!12469 Nil!65576))))))

(declare-fun b!6601635 () Bool)

(declare-fun res!2706848 () Bool)

(assert (=> b!6601635 (=> (not res!2706848) (not e!3994525))))

(assert (=> b!6601635 (= res!2706848 (isEmpty!37848 (tail!12469 Nil!65576)))))

(declare-fun b!6601626 () Bool)

(assert (=> b!6601626 (= e!3994530 (= lt!2413614 call!577397))))

(declare-fun d!2070623 () Bool)

(assert (=> d!2070623 e!3994530))

(declare-fun c!1216162 () Bool)

(assert (=> d!2070623 (= c!1216162 ((_ is EmptyExpr!16467) lt!2413413))))

(assert (=> d!2070623 (= lt!2413614 e!3994527)))

(declare-fun c!1216160 () Bool)

(assert (=> d!2070623 (= c!1216160 (isEmpty!37848 Nil!65576))))

(assert (=> d!2070623 (validRegex!8203 lt!2413413)))

(assert (=> d!2070623 (= (matchR!8650 lt!2413413 Nil!65576) lt!2413614)))

(assert (= (and d!2070623 c!1216160) b!6601622))

(assert (= (and d!2070623 (not c!1216160)) b!6601625))

(assert (= (and d!2070623 c!1216162) b!6601626))

(assert (= (and d!2070623 (not c!1216162)) b!6601631))

(assert (= (and b!6601631 c!1216161) b!6601633))

(assert (= (and b!6601631 (not c!1216161)) b!6601630))

(assert (= (and b!6601630 (not res!2706853)) b!6601628))

(assert (= (and b!6601628 res!2706852) b!6601629))

(assert (= (and b!6601629 res!2706851) b!6601635))

(assert (= (and b!6601635 res!2706848) b!6601627))

(assert (= (and b!6601628 (not res!2706849)) b!6601624))

(assert (= (and b!6601624 res!2706847) b!6601632))

(assert (= (and b!6601632 (not res!2706846)) b!6601634))

(assert (= (and b!6601634 (not res!2706850)) b!6601623))

(assert (= (or b!6601626 b!6601629 b!6601632) bm!577392))

(declare-fun m!7377752 () Bool)

(assert (=> b!6601623 m!7377752))

(declare-fun m!7377754 () Bool)

(assert (=> b!6601622 m!7377754))

(assert (=> b!6601625 m!7377752))

(assert (=> b!6601625 m!7377752))

(declare-fun m!7377756 () Bool)

(assert (=> b!6601625 m!7377756))

(declare-fun m!7377758 () Bool)

(assert (=> b!6601625 m!7377758))

(assert (=> b!6601625 m!7377756))

(assert (=> b!6601625 m!7377758))

(declare-fun m!7377760 () Bool)

(assert (=> b!6601625 m!7377760))

(assert (=> b!6601627 m!7377752))

(assert (=> b!6601635 m!7377758))

(assert (=> b!6601635 m!7377758))

(declare-fun m!7377762 () Bool)

(assert (=> b!6601635 m!7377762))

(assert (=> d!2070623 m!7377738))

(assert (=> d!2070623 m!7376820))

(assert (=> bm!577392 m!7377738))

(assert (=> b!6601634 m!7377758))

(assert (=> b!6601634 m!7377758))

(assert (=> b!6601634 m!7377762))

(assert (=> b!6600495 d!2070623))

(declare-fun d!2070625 () Bool)

(assert (=> d!2070625 (= (isDefined!13061 (findConcatSeparation!2772 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576 Nil!65576 Nil!65576)) (not (isEmpty!37850 (findConcatSeparation!2772 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576 Nil!65576 Nil!65576))))))

(declare-fun bs!1692505 () Bool)

(assert (= bs!1692505 d!2070625))

(assert (=> bs!1692505 m!7376880))

(declare-fun m!7377764 () Bool)

(assert (=> bs!1692505 m!7377764))

(assert (=> b!6600495 d!2070625))

(declare-fun b!6601636 () Bool)

(declare-fun lt!2413615 () Unit!159203)

(declare-fun lt!2413616 () Unit!159203)

(assert (=> b!6601636 (= lt!2413615 lt!2413616)))

(assert (=> b!6601636 (= (++!14613 (++!14613 Nil!65576 (Cons!65576 (h!72024 Nil!65576) Nil!65576)) (t!379352 Nil!65576)) Nil!65576)))

(assert (=> b!6601636 (= lt!2413616 (lemmaMoveElementToOtherListKeepsConcatEq!2610 Nil!65576 (h!72024 Nil!65576) (t!379352 Nil!65576) Nil!65576))))

(declare-fun e!3994535 () Option!16358)

(assert (=> b!6601636 (= e!3994535 (findConcatSeparation!2772 (reg!16796 (regOne!33446 r!7292)) lt!2413413 (++!14613 Nil!65576 (Cons!65576 (h!72024 Nil!65576) Nil!65576)) (t!379352 Nil!65576) Nil!65576))))

(declare-fun b!6601637 () Bool)

(declare-fun e!3994531 () Bool)

(declare-fun lt!2413617 () Option!16358)

(assert (=> b!6601637 (= e!3994531 (= (++!14613 (_1!36749 (get!22782 lt!2413617)) (_2!36749 (get!22782 lt!2413617))) Nil!65576))))

(declare-fun b!6601638 () Bool)

(assert (=> b!6601638 (= e!3994535 None!16357)))

(declare-fun b!6601639 () Bool)

(declare-fun e!3994532 () Option!16358)

(assert (=> b!6601639 (= e!3994532 (Some!16357 (tuple2!66893 Nil!65576 Nil!65576)))))

(declare-fun b!6601640 () Bool)

(declare-fun res!2706856 () Bool)

(assert (=> b!6601640 (=> (not res!2706856) (not e!3994531))))

(assert (=> b!6601640 (= res!2706856 (matchR!8650 (reg!16796 (regOne!33446 r!7292)) (_1!36749 (get!22782 lt!2413617))))))

(declare-fun d!2070627 () Bool)

(declare-fun e!3994534 () Bool)

(assert (=> d!2070627 e!3994534))

(declare-fun res!2706858 () Bool)

(assert (=> d!2070627 (=> res!2706858 e!3994534)))

(assert (=> d!2070627 (= res!2706858 e!3994531)))

(declare-fun res!2706855 () Bool)

(assert (=> d!2070627 (=> (not res!2706855) (not e!3994531))))

(assert (=> d!2070627 (= res!2706855 (isDefined!13061 lt!2413617))))

(assert (=> d!2070627 (= lt!2413617 e!3994532)))

(declare-fun c!1216163 () Bool)

(declare-fun e!3994533 () Bool)

(assert (=> d!2070627 (= c!1216163 e!3994533)))

(declare-fun res!2706857 () Bool)

(assert (=> d!2070627 (=> (not res!2706857) (not e!3994533))))

(assert (=> d!2070627 (= res!2706857 (matchR!8650 (reg!16796 (regOne!33446 r!7292)) Nil!65576))))

(assert (=> d!2070627 (validRegex!8203 (reg!16796 (regOne!33446 r!7292)))))

(assert (=> d!2070627 (= (findConcatSeparation!2772 (reg!16796 (regOne!33446 r!7292)) lt!2413413 Nil!65576 Nil!65576 Nil!65576) lt!2413617)))

(declare-fun b!6601641 () Bool)

(declare-fun res!2706854 () Bool)

(assert (=> b!6601641 (=> (not res!2706854) (not e!3994531))))

(assert (=> b!6601641 (= res!2706854 (matchR!8650 lt!2413413 (_2!36749 (get!22782 lt!2413617))))))

(declare-fun b!6601642 () Bool)

(assert (=> b!6601642 (= e!3994534 (not (isDefined!13061 lt!2413617)))))

(declare-fun b!6601643 () Bool)

(assert (=> b!6601643 (= e!3994533 (matchR!8650 lt!2413413 Nil!65576))))

(declare-fun b!6601644 () Bool)

(assert (=> b!6601644 (= e!3994532 e!3994535)))

(declare-fun c!1216164 () Bool)

(assert (=> b!6601644 (= c!1216164 ((_ is Nil!65576) Nil!65576))))

(assert (= (and d!2070627 res!2706857) b!6601643))

(assert (= (and d!2070627 c!1216163) b!6601639))

(assert (= (and d!2070627 (not c!1216163)) b!6601644))

(assert (= (and b!6601644 c!1216164) b!6601638))

(assert (= (and b!6601644 (not c!1216164)) b!6601636))

(assert (= (and d!2070627 res!2706855) b!6601640))

(assert (= (and b!6601640 res!2706856) b!6601641))

(assert (= (and b!6601641 res!2706854) b!6601637))

(assert (= (and d!2070627 (not res!2706858)) b!6601642))

(declare-fun m!7377766 () Bool)

(assert (=> b!6601640 m!7377766))

(declare-fun m!7377768 () Bool)

(assert (=> b!6601640 m!7377768))

(declare-fun m!7377770 () Bool)

(assert (=> b!6601642 m!7377770))

(assert (=> b!6601641 m!7377766))

(declare-fun m!7377772 () Bool)

(assert (=> b!6601641 m!7377772))

(assert (=> d!2070627 m!7377770))

(declare-fun m!7377774 () Bool)

(assert (=> d!2070627 m!7377774))

(assert (=> d!2070627 m!7376878))

(assert (=> b!6601643 m!7376890))

(assert (=> b!6601637 m!7377766))

(declare-fun m!7377776 () Bool)

(assert (=> b!6601637 m!7377776))

(declare-fun m!7377778 () Bool)

(assert (=> b!6601636 m!7377778))

(assert (=> b!6601636 m!7377778))

(declare-fun m!7377780 () Bool)

(assert (=> b!6601636 m!7377780))

(declare-fun m!7377782 () Bool)

(assert (=> b!6601636 m!7377782))

(assert (=> b!6601636 m!7377778))

(declare-fun m!7377784 () Bool)

(assert (=> b!6601636 m!7377784))

(assert (=> b!6600495 d!2070627))

(declare-fun d!2070629 () Bool)

(assert (=> d!2070629 (= (matchR!8650 lt!2413413 Nil!65576) (matchRSpec!3568 lt!2413413 Nil!65576))))

(declare-fun lt!2413618 () Unit!159203)

(assert (=> d!2070629 (= lt!2413618 (choose!49270 lt!2413413 Nil!65576))))

(assert (=> d!2070629 (validRegex!8203 lt!2413413)))

(assert (=> d!2070629 (= (mainMatchTheorem!3568 lt!2413413 Nil!65576) lt!2413618)))

(declare-fun bs!1692506 () Bool)

(assert (= bs!1692506 d!2070629))

(assert (=> bs!1692506 m!7376890))

(assert (=> bs!1692506 m!7376882))

(declare-fun m!7377786 () Bool)

(assert (=> bs!1692506 m!7377786))

(assert (=> bs!1692506 m!7376820))

(assert (=> b!6600495 d!2070629))

(assert (=> b!6600515 d!2070589))

(declare-fun b!6601649 () Bool)

(declare-fun e!3994538 () Bool)

(declare-fun tp!1819846 () Bool)

(declare-fun tp!1819847 () Bool)

(assert (=> b!6601649 (= e!3994538 (and tp!1819846 tp!1819847))))

(assert (=> b!6600535 (= tp!1819779 e!3994538)))

(assert (= (and b!6600535 ((_ is Cons!65577) (exprs!6351 (h!72026 zl!343)))) b!6601649))

(declare-fun b!6601663 () Bool)

(declare-fun e!3994541 () Bool)

(declare-fun tp!1819862 () Bool)

(declare-fun tp!1819861 () Bool)

(assert (=> b!6601663 (= e!3994541 (and tp!1819862 tp!1819861))))

(declare-fun b!6601660 () Bool)

(assert (=> b!6601660 (= e!3994541 tp_is_empty!42187)))

(declare-fun b!6601662 () Bool)

(declare-fun tp!1819858 () Bool)

(assert (=> b!6601662 (= e!3994541 tp!1819858)))

(assert (=> b!6600528 (= tp!1819778 e!3994541)))

(declare-fun b!6601661 () Bool)

(declare-fun tp!1819860 () Bool)

(declare-fun tp!1819859 () Bool)

(assert (=> b!6601661 (= e!3994541 (and tp!1819860 tp!1819859))))

(assert (= (and b!6600528 ((_ is ElementMatch!16467) (regOne!33447 r!7292))) b!6601660))

(assert (= (and b!6600528 ((_ is Concat!25312) (regOne!33447 r!7292))) b!6601661))

(assert (= (and b!6600528 ((_ is Star!16467) (regOne!33447 r!7292))) b!6601662))

(assert (= (and b!6600528 ((_ is Union!16467) (regOne!33447 r!7292))) b!6601663))

(declare-fun b!6601667 () Bool)

(declare-fun e!3994542 () Bool)

(declare-fun tp!1819867 () Bool)

(declare-fun tp!1819866 () Bool)

(assert (=> b!6601667 (= e!3994542 (and tp!1819867 tp!1819866))))

(declare-fun b!6601664 () Bool)

(assert (=> b!6601664 (= e!3994542 tp_is_empty!42187)))

(declare-fun b!6601666 () Bool)

(declare-fun tp!1819863 () Bool)

(assert (=> b!6601666 (= e!3994542 tp!1819863)))

(assert (=> b!6600528 (= tp!1819774 e!3994542)))

(declare-fun b!6601665 () Bool)

(declare-fun tp!1819865 () Bool)

(declare-fun tp!1819864 () Bool)

(assert (=> b!6601665 (= e!3994542 (and tp!1819865 tp!1819864))))

(assert (= (and b!6600528 ((_ is ElementMatch!16467) (regTwo!33447 r!7292))) b!6601664))

(assert (= (and b!6600528 ((_ is Concat!25312) (regTwo!33447 r!7292))) b!6601665))

(assert (= (and b!6600528 ((_ is Star!16467) (regTwo!33447 r!7292))) b!6601666))

(assert (= (and b!6600528 ((_ is Union!16467) (regTwo!33447 r!7292))) b!6601667))

(declare-fun b!6601675 () Bool)

(declare-fun e!3994548 () Bool)

(declare-fun tp!1819872 () Bool)

(assert (=> b!6601675 (= e!3994548 tp!1819872)))

(declare-fun b!6601674 () Bool)

(declare-fun e!3994547 () Bool)

(declare-fun tp!1819873 () Bool)

(assert (=> b!6601674 (= e!3994547 (and (inv!84414 (h!72026 (t!379354 zl!343))) e!3994548 tp!1819873))))

(assert (=> b!6600518 (= tp!1819775 e!3994547)))

(assert (= b!6601674 b!6601675))

(assert (= (and b!6600518 ((_ is Cons!65578) (t!379354 zl!343))) b!6601674))

(declare-fun m!7377788 () Bool)

(assert (=> b!6601674 m!7377788))

(declare-fun b!6601679 () Bool)

(declare-fun e!3994549 () Bool)

(declare-fun tp!1819878 () Bool)

(declare-fun tp!1819877 () Bool)

(assert (=> b!6601679 (= e!3994549 (and tp!1819878 tp!1819877))))

(declare-fun b!6601676 () Bool)

(assert (=> b!6601676 (= e!3994549 tp_is_empty!42187)))

(declare-fun b!6601678 () Bool)

(declare-fun tp!1819874 () Bool)

(assert (=> b!6601678 (= e!3994549 tp!1819874)))

(assert (=> b!6600516 (= tp!1819782 e!3994549)))

(declare-fun b!6601677 () Bool)

(declare-fun tp!1819876 () Bool)

(declare-fun tp!1819875 () Bool)

(assert (=> b!6601677 (= e!3994549 (and tp!1819876 tp!1819875))))

(assert (= (and b!6600516 ((_ is ElementMatch!16467) (regOne!33446 r!7292))) b!6601676))

(assert (= (and b!6600516 ((_ is Concat!25312) (regOne!33446 r!7292))) b!6601677))

(assert (= (and b!6600516 ((_ is Star!16467) (regOne!33446 r!7292))) b!6601678))

(assert (= (and b!6600516 ((_ is Union!16467) (regOne!33446 r!7292))) b!6601679))

(declare-fun b!6601683 () Bool)

(declare-fun e!3994550 () Bool)

(declare-fun tp!1819883 () Bool)

(declare-fun tp!1819882 () Bool)

(assert (=> b!6601683 (= e!3994550 (and tp!1819883 tp!1819882))))

(declare-fun b!6601680 () Bool)

(assert (=> b!6601680 (= e!3994550 tp_is_empty!42187)))

(declare-fun b!6601682 () Bool)

(declare-fun tp!1819879 () Bool)

(assert (=> b!6601682 (= e!3994550 tp!1819879)))

(assert (=> b!6600516 (= tp!1819780 e!3994550)))

(declare-fun b!6601681 () Bool)

(declare-fun tp!1819881 () Bool)

(declare-fun tp!1819880 () Bool)

(assert (=> b!6601681 (= e!3994550 (and tp!1819881 tp!1819880))))

(assert (= (and b!6600516 ((_ is ElementMatch!16467) (regTwo!33446 r!7292))) b!6601680))

(assert (= (and b!6600516 ((_ is Concat!25312) (regTwo!33446 r!7292))) b!6601681))

(assert (= (and b!6600516 ((_ is Star!16467) (regTwo!33446 r!7292))) b!6601682))

(assert (= (and b!6600516 ((_ is Union!16467) (regTwo!33446 r!7292))) b!6601683))

(declare-fun b!6601684 () Bool)

(declare-fun e!3994551 () Bool)

(declare-fun tp!1819884 () Bool)

(declare-fun tp!1819885 () Bool)

(assert (=> b!6601684 (= e!3994551 (and tp!1819884 tp!1819885))))

(assert (=> b!6600506 (= tp!1819776 e!3994551)))

(assert (= (and b!6600506 ((_ is Cons!65577) (exprs!6351 setElem!45072))) b!6601684))

(declare-fun b!6601688 () Bool)

(declare-fun e!3994552 () Bool)

(declare-fun tp!1819890 () Bool)

(declare-fun tp!1819889 () Bool)

(assert (=> b!6601688 (= e!3994552 (and tp!1819890 tp!1819889))))

(declare-fun b!6601685 () Bool)

(assert (=> b!6601685 (= e!3994552 tp_is_empty!42187)))

(declare-fun b!6601687 () Bool)

(declare-fun tp!1819886 () Bool)

(assert (=> b!6601687 (= e!3994552 tp!1819886)))

(assert (=> b!6600492 (= tp!1819783 e!3994552)))

(declare-fun b!6601686 () Bool)

(declare-fun tp!1819888 () Bool)

(declare-fun tp!1819887 () Bool)

(assert (=> b!6601686 (= e!3994552 (and tp!1819888 tp!1819887))))

(assert (= (and b!6600492 ((_ is ElementMatch!16467) (reg!16796 r!7292))) b!6601685))

(assert (= (and b!6600492 ((_ is Concat!25312) (reg!16796 r!7292))) b!6601686))

(assert (= (and b!6600492 ((_ is Star!16467) (reg!16796 r!7292))) b!6601687))

(assert (= (and b!6600492 ((_ is Union!16467) (reg!16796 r!7292))) b!6601688))

(declare-fun b!6601693 () Bool)

(declare-fun e!3994555 () Bool)

(declare-fun tp!1819893 () Bool)

(assert (=> b!6601693 (= e!3994555 (and tp_is_empty!42187 tp!1819893))))

(assert (=> b!6600536 (= tp!1819777 e!3994555)))

(assert (= (and b!6600536 ((_ is Cons!65576) (t!379352 s!2326))) b!6601693))

(declare-fun condSetEmpty!45078 () Bool)

(assert (=> setNonEmpty!45072 (= condSetEmpty!45078 (= setRest!45072 ((as const (Array Context!11702 Bool)) false)))))

(declare-fun setRes!45078 () Bool)

(assert (=> setNonEmpty!45072 (= tp!1819781 setRes!45078)))

(declare-fun setIsEmpty!45078 () Bool)

(assert (=> setIsEmpty!45078 setRes!45078))

(declare-fun e!3994558 () Bool)

(declare-fun setElem!45078 () Context!11702)

(declare-fun setNonEmpty!45078 () Bool)

(declare-fun tp!1819899 () Bool)

(assert (=> setNonEmpty!45078 (= setRes!45078 (and tp!1819899 (inv!84414 setElem!45078) e!3994558))))

(declare-fun setRest!45078 () (InoxSet Context!11702))

(assert (=> setNonEmpty!45078 (= setRest!45072 ((_ map or) (store ((as const (Array Context!11702 Bool)) false) setElem!45078 true) setRest!45078))))

(declare-fun b!6601698 () Bool)

(declare-fun tp!1819898 () Bool)

(assert (=> b!6601698 (= e!3994558 tp!1819898)))

(assert (= (and setNonEmpty!45072 condSetEmpty!45078) setIsEmpty!45078))

(assert (= (and setNonEmpty!45072 (not condSetEmpty!45078)) setNonEmpty!45078))

(assert (= setNonEmpty!45078 b!6601698))

(declare-fun m!7377790 () Bool)

(assert (=> setNonEmpty!45078 m!7377790))

(declare-fun b_lambda!249847 () Bool)

(assert (= b_lambda!249831 (or b!6600521 b_lambda!249847)))

(declare-fun bs!1692507 () Bool)

(declare-fun d!2070631 () Bool)

(assert (= bs!1692507 (and d!2070631 b!6600521)))

(assert (=> bs!1692507 (= (dynLambda!26113 lambda!367920 lt!2413452) (derivationStepZipperUp!1641 lt!2413452 (h!72024 s!2326)))))

(assert (=> bs!1692507 m!7376782))

(assert (=> d!2070529 d!2070631))

(declare-fun b_lambda!249849 () Bool)

(assert (= b_lambda!249817 (or b!6600521 b_lambda!249849)))

(declare-fun bs!1692508 () Bool)

(declare-fun d!2070633 () Bool)

(assert (= bs!1692508 (and d!2070633 b!6600521)))

(assert (=> bs!1692508 (= (dynLambda!26113 lambda!367920 lt!2413434) (derivationStepZipperUp!1641 lt!2413434 (h!72024 s!2326)))))

(assert (=> bs!1692508 m!7376854))

(assert (=> d!2070353 d!2070633))

(declare-fun b_lambda!249851 () Bool)

(assert (= b_lambda!249845 (or b!6600521 b_lambda!249851)))

(declare-fun bs!1692509 () Bool)

(declare-fun d!2070635 () Bool)

(assert (= bs!1692509 (and d!2070635 b!6600521)))

(assert (=> bs!1692509 (= (dynLambda!26113 lambda!367920 (h!72026 zl!343)) (derivationStepZipperUp!1641 (h!72026 zl!343) (h!72024 s!2326)))))

(assert (=> bs!1692509 m!7376906))

(assert (=> d!2070573 d!2070635))

(declare-fun b_lambda!249853 () Bool)

(assert (= b_lambda!249833 (or b!6600521 b_lambda!249853)))

(declare-fun bs!1692510 () Bool)

(declare-fun d!2070637 () Bool)

(assert (= bs!1692510 (and d!2070637 b!6600521)))

(assert (=> bs!1692510 (= (dynLambda!26113 lambda!367920 lt!2413433) (derivationStepZipperUp!1641 lt!2413433 (h!72024 s!2326)))))

(assert (=> bs!1692510 m!7376780))

(assert (=> d!2070535 d!2070637))

(declare-fun b_lambda!249855 () Bool)

(assert (= b_lambda!249829 (or b!6600521 b_lambda!249855)))

(declare-fun bs!1692511 () Bool)

(declare-fun d!2070639 () Bool)

(assert (= bs!1692511 (and d!2070639 b!6600521)))

(assert (=> bs!1692511 (= (dynLambda!26113 lambda!367920 lt!2413444) (derivationStepZipperUp!1641 lt!2413444 (h!72024 s!2326)))))

(assert (=> bs!1692511 m!7376900))

(assert (=> d!2070519 d!2070639))

(check-sat (not d!2070599) (not b!6600675) (not b!6601320) (not b!6601641) (not d!2070611) (not d!2070535) (not setNonEmpty!45078) (not d!2070365) (not b!6601693) (not b!6600766) (not b!6601521) (not bm!577322) (not d!2070629) (not b!6601072) (not b!6601538) (not b!6601662) (not d!2070583) (not b!6601268) (not bm!577269) (not bm!577379) (not bs!1692511) (not b!6601355) (not b!6601319) (not b!6601649) (not b!6601345) (not b!6601663) (not b!6600877) (not b!6601528) (not b!6601636) (not bs!1692508) (not bm!577311) (not bm!577376) (not b!6601323) (not d!2070591) (not b!6601236) (not b!6601535) (not b!6601364) (not b!6601369) (not b!6601267) (not b!6601378) (not d!2070545) (not b!6601520) (not b!6601698) (not b!6601625) (not d!2070487) (not d!2070601) (not d!2070603) (not b!6600986) (not b!6601686) (not d!2070573) (not b_lambda!249855) (not b!6601640) (not bm!577226) (not d!2070379) (not bm!577386) (not b!6601366) (not b!6601583) (not b!6600812) (not bm!577325) (not d!2070341) (not d!2070553) (not b!6601270) (not b!6601559) (not b!6601581) (not bm!577389) (not bm!577301) (not b_lambda!249847) (not b!6601666) (not b!6600985) (not b!6601688) (not d!2070625) (not b!6601525) (not b!6601298) (not b!6601678) (not b!6601300) (not b!6601661) (not b!6601622) (not b!6601605) (not b!6601537) (not d!2070593) (not d!2070537) (not b!6601365) tp_is_empty!42187 (not b!6601280) (not b!6601071) (not bm!577299) (not b!6601530) (not bm!577390) (not bs!1692510) (not b!6601591) (not b!6600674) (not d!2070587) (not b!6601539) (not b!6601637) (not b!6601527) (not bm!577370) (not d!2070509) (not b!6601502) (not b!6601665) (not b_lambda!249853) (not bm!577342) (not b!6601233) (not b!6601083) (not b!6601563) (not d!2070541) (not d!2070371) (not bm!577304) (not bm!577308) (not b!6601558) (not b!6601357) (not d!2070621) (not b!6601604) (not bm!577319) (not b!6601381) (not d!2070519) (not b!6601235) (not b!6600767) (not b!6600880) (not b!6601677) (not bm!577270) (not b!6600630) (not b!6601536) (not bs!1692509) (not d!2070539) (not d!2070623) (not b!6601681) (not b!6601229) (not b!6601635) (not b!6601614) (not d!2070595) (not b!6601299) (not d!2070523) (not d!2070613) (not bm!577323) (not b!6600629) (not b!6600875) (not bm!577341) (not d!2070513) (not bs!1692507) (not b!6601643) (not bm!577372) (not bm!577305) (not b!6601289) (not b!6601232) (not b!6601667) (not d!2070581) (not b!6601297) (not b!6601684) (not d!2070505) (not d!2070529) (not d!2070589) (not d!2070605) (not d!2070585) (not b_lambda!249851) (not b!6601344) (not d!2070597) (not bm!577303) (not b!6600882) (not d!2070619) (not b!6601634) (not b!6600772) (not d!2070511) (not d!2070575) (not d!2070507) (not bm!577312) (not b!6600773) (not b!6601350) (not b!6601679) (not bm!577310) (not b!6601379) (not b!6601237) (not b!6601349) (not d!2070353) (not b!6601515) (not b!6601380) (not d!2070527) (not bm!577381) (not b!6601687) (not b!6601259) (not d!2070343) (not b!6601272) (not d!2070495) (not bm!577375) (not b!6601674) (not b!6601516) (not b!6601562) (not b!6601564) (not d!2070627) (not d!2070515) (not b!6600770) (not d!2070467) (not bm!577377) (not bm!577378) (not b!6601074) (not b!6601279) (not d!2070435) (not b!6601288) (not b!6601531) (not b!6601352) (not bm!577343) (not b!6601230) (not bm!577324) (not b!6601627) (not b_lambda!249849) (not bm!577383) (not b!6601371) (not b!6601642) (not d!2070525) (not b!6601322) (not b!6601565) (not d!2070543) (not b!6601682) (not bm!577392) (not b!6601623) (not b!6601367) (not b!6601524) (not b!6601084) (not b!6601683) (not b!6601675) (not bm!577284) (not bm!577387) (not b!6601532) (not b!6600771) (not bm!577306) (not d!2070547) (not b!6601076) (not b!6601353) (not b!6600769) (not bm!577388) (not bm!577320) (not bm!577340))
(check-sat)
