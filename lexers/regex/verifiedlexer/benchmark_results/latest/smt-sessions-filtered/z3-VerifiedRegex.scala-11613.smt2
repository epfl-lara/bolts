; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645774 () Bool)

(assert start!645774)

(declare-fun b!6604972 () Bool)

(assert (=> b!6604972 true))

(assert (=> b!6604972 true))

(declare-fun lambda!368397 () Int)

(declare-fun lambda!368396 () Int)

(assert (=> b!6604972 (not (= lambda!368397 lambda!368396))))

(assert (=> b!6604972 true))

(assert (=> b!6604972 true))

(declare-fun b!6604977 () Bool)

(assert (=> b!6604977 true))

(declare-fun bs!1693037 () Bool)

(declare-fun b!6604955 () Bool)

(assert (= bs!1693037 (and b!6604955 b!6604972)))

(declare-fun lambda!368399 () Int)

(declare-datatypes ((C!33216 0))(
  ( (C!33217 (val!26310 Int)) )
))
(declare-datatypes ((Regex!16473 0))(
  ( (ElementMatch!16473 (c!1216946 C!33216)) (Concat!25318 (regOne!33458 Regex!16473) (regTwo!33458 Regex!16473)) (EmptyExpr!16473) (Star!16473 (reg!16802 Regex!16473)) (EmptyLang!16473) (Union!16473 (regOne!33459 Regex!16473) (regTwo!33459 Regex!16473)) )
))
(declare-fun r!7292 () Regex!16473)

(declare-fun lt!2414680 () Regex!16473)

(declare-datatypes ((List!65718 0))(
  ( (Nil!65594) (Cons!65594 (h!72042 C!33216) (t!379370 List!65718)) )
))
(declare-fun s!2326 () List!65718)

(assert (=> bs!1693037 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= lt!2414680 (regTwo!33458 r!7292))) (= lambda!368399 lambda!368396))))

(assert (=> bs!1693037 (not (= lambda!368399 lambda!368397))))

(assert (=> b!6604955 true))

(assert (=> b!6604955 true))

(declare-fun lambda!368400 () Int)

(assert (=> bs!1693037 (not (= lambda!368400 lambda!368396))))

(assert (=> bs!1693037 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= lt!2414680 (regTwo!33458 r!7292))) (= lambda!368400 lambda!368397))))

(assert (=> b!6604955 (not (= lambda!368400 lambda!368399))))

(assert (=> b!6604955 true))

(assert (=> b!6604955 true))

(declare-fun lambda!368401 () Int)

(assert (=> bs!1693037 (not (= lambda!368401 lambda!368396))))

(assert (=> bs!1693037 (not (= lambda!368401 lambda!368397))))

(assert (=> b!6604955 (not (= lambda!368401 lambda!368399))))

(assert (=> b!6604955 (not (= lambda!368401 lambda!368400))))

(assert (=> b!6604955 true))

(assert (=> b!6604955 true))

(declare-fun b!6604945 () Bool)

(declare-datatypes ((Unit!159227 0))(
  ( (Unit!159228) )
))
(declare-fun e!3996375 () Unit!159227)

(declare-fun Unit!159229 () Unit!159227)

(assert (=> b!6604945 (= e!3996375 Unit!159229)))

(declare-fun b!6604946 () Bool)

(declare-fun e!3996359 () Bool)

(declare-fun validRegex!8209 (Regex!16473) Bool)

(assert (=> b!6604946 (= e!3996359 (validRegex!8209 (regTwo!33458 r!7292)))))

(declare-fun res!2708374 () Bool)

(declare-fun e!3996381 () Bool)

(assert (=> start!645774 (=> (not res!2708374) (not e!3996381))))

(assert (=> start!645774 (= res!2708374 (validRegex!8209 r!7292))))

(assert (=> start!645774 e!3996381))

(declare-fun e!3996377 () Bool)

(assert (=> start!645774 e!3996377))

(declare-fun condSetEmpty!45108 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65719 0))(
  ( (Nil!65595) (Cons!65595 (h!72043 Regex!16473) (t!379371 List!65719)) )
))
(declare-datatypes ((Context!11714 0))(
  ( (Context!11715 (exprs!6357 List!65719)) )
))
(declare-fun z!1189 () (InoxSet Context!11714))

(assert (=> start!645774 (= condSetEmpty!45108 (= z!1189 ((as const (Array Context!11714 Bool)) false)))))

(declare-fun setRes!45108 () Bool)

(assert (=> start!645774 setRes!45108))

(declare-fun e!3996364 () Bool)

(assert (=> start!645774 e!3996364))

(declare-fun e!3996384 () Bool)

(assert (=> start!645774 e!3996384))

(declare-fun b!6604947 () Bool)

(declare-fun e!3996379 () Bool)

(declare-fun e!3996362 () Bool)

(assert (=> b!6604947 (= e!3996379 (not e!3996362))))

(declare-fun res!2708370 () Bool)

(assert (=> b!6604947 (=> res!2708370 e!3996362)))

(declare-datatypes ((List!65720 0))(
  ( (Nil!65596) (Cons!65596 (h!72044 Context!11714) (t!379372 List!65720)) )
))
(declare-fun zl!343 () List!65720)

(get-info :version)

(assert (=> b!6604947 (= res!2708370 (not ((_ is Cons!65596) zl!343)))))

(declare-fun lt!2414716 () Bool)

(declare-fun matchRSpec!3574 (Regex!16473 List!65718) Bool)

(assert (=> b!6604947 (= lt!2414716 (matchRSpec!3574 r!7292 s!2326))))

(declare-fun matchR!8656 (Regex!16473 List!65718) Bool)

(assert (=> b!6604947 (= lt!2414716 (matchR!8656 r!7292 s!2326))))

(declare-fun lt!2414714 () Unit!159227)

(declare-fun mainMatchTheorem!3574 (Regex!16473 List!65718) Unit!159227)

(assert (=> b!6604947 (= lt!2414714 (mainMatchTheorem!3574 r!7292 s!2326))))

(declare-fun b!6604948 () Bool)

(declare-fun e!3996382 () Bool)

(declare-fun tp!1820304 () Bool)

(assert (=> b!6604948 (= e!3996382 tp!1820304)))

(declare-fun b!6604949 () Bool)

(declare-fun Unit!159230 () Unit!159227)

(assert (=> b!6604949 (= e!3996375 Unit!159230)))

(declare-fun lt!2414693 () Unit!159227)

(declare-fun lt!2414683 () (InoxSet Context!11714))

(declare-fun lt!2414685 () (InoxSet Context!11714))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1304 ((InoxSet Context!11714) (InoxSet Context!11714) List!65718) Unit!159227)

(assert (=> b!6604949 (= lt!2414693 (lemmaZipperConcatMatchesSameAsBothZippers!1304 lt!2414685 lt!2414683 (t!379370 s!2326)))))

(declare-fun res!2708355 () Bool)

(declare-fun matchZipper!2485 ((InoxSet Context!11714) List!65718) Bool)

(assert (=> b!6604949 (= res!2708355 (matchZipper!2485 lt!2414685 (t!379370 s!2326)))))

(declare-fun e!3996370 () Bool)

(assert (=> b!6604949 (=> res!2708355 e!3996370)))

(assert (=> b!6604949 (= (matchZipper!2485 ((_ map or) lt!2414685 lt!2414683) (t!379370 s!2326)) e!3996370)))

(declare-fun b!6604950 () Bool)

(declare-fun res!2708382 () Bool)

(assert (=> b!6604950 (=> (not res!2708382) (not e!3996381))))

(declare-fun toList!10257 ((InoxSet Context!11714)) List!65720)

(assert (=> b!6604950 (= res!2708382 (= (toList!10257 z!1189) zl!343))))

(declare-fun b!6604951 () Bool)

(declare-fun res!2708369 () Bool)

(assert (=> b!6604951 (=> res!2708369 e!3996362)))

(declare-fun generalisedUnion!2317 (List!65719) Regex!16473)

(declare-fun unfocusZipperList!1894 (List!65720) List!65719)

(assert (=> b!6604951 (= res!2708369 (not (= r!7292 (generalisedUnion!2317 (unfocusZipperList!1894 zl!343)))))))

(declare-fun b!6604952 () Bool)

(declare-fun e!3996365 () Bool)

(declare-fun e!3996373 () Bool)

(assert (=> b!6604952 (= e!3996365 e!3996373)))

(declare-fun res!2708377 () Bool)

(assert (=> b!6604952 (=> res!2708377 e!3996373)))

(declare-fun lt!2414678 () Regex!16473)

(assert (=> b!6604952 (= res!2708377 (not (= r!7292 lt!2414678)))))

(assert (=> b!6604952 (= lt!2414678 (Concat!25318 lt!2414680 (regTwo!33458 r!7292)))))

(declare-fun b!6604953 () Bool)

(declare-fun res!2708385 () Bool)

(declare-fun e!3996371 () Bool)

(assert (=> b!6604953 (=> res!2708385 e!3996371)))

(assert (=> b!6604953 (= res!2708385 (not (matchZipper!2485 z!1189 s!2326)))))

(declare-fun b!6604954 () Bool)

(declare-fun tp_is_empty!42199 () Bool)

(assert (=> b!6604954 (= e!3996377 tp_is_empty!42199)))

(declare-fun e!3996376 () Bool)

(assert (=> b!6604955 (= e!3996376 e!3996359)))

(declare-fun res!2708364 () Bool)

(assert (=> b!6604955 (=> (not res!2708364) (not e!3996359))))

(assert (=> b!6604955 (= res!2708364 (validRegex!8209 lt!2414680))))

(declare-fun Exists!3543 (Int) Bool)

(assert (=> b!6604955 (= (Exists!3543 lambda!368399) (Exists!3543 lambda!368401))))

(declare-fun lt!2414709 () Unit!159227)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!668 (Regex!16473 List!65718) Unit!159227)

(assert (=> b!6604955 (= lt!2414709 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!668 (reg!16802 (regOne!33458 r!7292)) Nil!65594))))

(assert (=> b!6604955 (= (Exists!3543 lambda!368399) (Exists!3543 lambda!368400))))

(declare-fun lt!2414713 () Unit!159227)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2080 (Regex!16473 Regex!16473 List!65718) Unit!159227)

(assert (=> b!6604955 (= lt!2414713 (lemmaExistCutMatchRandMatchRSpecEquivalent!2080 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594))))

(declare-datatypes ((tuple2!66904 0))(
  ( (tuple2!66905 (_1!36755 List!65718) (_2!36755 List!65718)) )
))
(declare-datatypes ((Option!16364 0))(
  ( (None!16363) (Some!16363 (v!52552 tuple2!66904)) )
))
(declare-fun isDefined!13067 (Option!16364) Bool)

(declare-fun findConcatSeparation!2778 (Regex!16473 Regex!16473 List!65718 List!65718 List!65718) Option!16364)

(assert (=> b!6604955 (= (isDefined!13067 (findConcatSeparation!2778 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594 Nil!65594 Nil!65594)) (Exists!3543 lambda!368399))))

(declare-fun lt!2414675 () Unit!159227)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2542 (Regex!16473 Regex!16473 List!65718) Unit!159227)

(assert (=> b!6604955 (= lt!2414675 (lemmaFindConcatSeparationEquivalentToExists!2542 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594))))

(assert (=> b!6604955 (= (matchR!8656 lt!2414680 Nil!65594) (matchRSpec!3574 lt!2414680 Nil!65594))))

(declare-fun lt!2414690 () Unit!159227)

(assert (=> b!6604955 (= lt!2414690 (mainMatchTheorem!3574 lt!2414680 Nil!65594))))

(declare-fun b!6604956 () Bool)

(declare-fun e!3996368 () Bool)

(assert (=> b!6604956 (= e!3996368 e!3996365)))

(declare-fun res!2708362 () Bool)

(assert (=> b!6604956 (=> res!2708362 e!3996365)))

(declare-fun lt!2414711 () (InoxSet Context!11714))

(declare-fun lt!2414682 () (InoxSet Context!11714))

(assert (=> b!6604956 (= res!2708362 (not (= lt!2414711 lt!2414682)))))

(declare-fun lt!2414686 () (InoxSet Context!11714))

(declare-fun lambda!368398 () Int)

(declare-fun lt!2414700 () Context!11714)

(declare-fun flatMap!1978 ((InoxSet Context!11714) Int) (InoxSet Context!11714))

(declare-fun derivationStepZipperUp!1647 (Context!11714 C!33216) (InoxSet Context!11714))

(assert (=> b!6604956 (= (flatMap!1978 lt!2414686 lambda!368398) (derivationStepZipperUp!1647 lt!2414700 (h!72042 s!2326)))))

(declare-fun lt!2414706 () Unit!159227)

(declare-fun lemmaFlatMapOnSingletonSet!1504 ((InoxSet Context!11714) Context!11714 Int) Unit!159227)

(assert (=> b!6604956 (= lt!2414706 (lemmaFlatMapOnSingletonSet!1504 lt!2414686 lt!2414700 lambda!368398))))

(declare-fun lt!2414712 () (InoxSet Context!11714))

(assert (=> b!6604956 (= lt!2414712 (derivationStepZipperUp!1647 lt!2414700 (h!72042 s!2326)))))

(declare-fun derivationStepZipper!2439 ((InoxSet Context!11714) C!33216) (InoxSet Context!11714))

(assert (=> b!6604956 (= lt!2414711 (derivationStepZipper!2439 lt!2414686 (h!72042 s!2326)))))

(assert (=> b!6604956 (= lt!2414686 (store ((as const (Array Context!11714 Bool)) false) lt!2414700 true))))

(declare-fun lt!2414676 () List!65719)

(assert (=> b!6604956 (= lt!2414700 (Context!11715 (Cons!65595 (reg!16802 (regOne!33458 r!7292)) lt!2414676)))))

(declare-fun b!6604957 () Bool)

(declare-fun e!3996360 () Bool)

(declare-fun e!3996380 () Bool)

(assert (=> b!6604957 (= e!3996360 e!3996380)))

(declare-fun res!2708381 () Bool)

(assert (=> b!6604957 (=> res!2708381 e!3996380)))

(declare-fun lt!2414698 () List!65720)

(declare-fun zipperDepth!410 (List!65720) Int)

(assert (=> b!6604957 (= res!2708381 (< (zipperDepth!410 zl!343) (zipperDepth!410 lt!2414698)))))

(declare-fun lt!2414692 () Context!11714)

(assert (=> b!6604957 (= lt!2414698 (Cons!65596 lt!2414692 Nil!65596))))

(declare-fun b!6604958 () Bool)

(assert (=> b!6604958 (= e!3996370 (matchZipper!2485 lt!2414683 (t!379370 s!2326)))))

(declare-fun b!6604959 () Bool)

(declare-fun res!2708372 () Bool)

(declare-fun e!3996378 () Bool)

(assert (=> b!6604959 (=> res!2708372 e!3996378)))

(assert (=> b!6604959 (= res!2708372 (or ((_ is Concat!25318) (regOne!33458 r!7292)) (not ((_ is Star!16473) (regOne!33458 r!7292)))))))

(declare-fun b!6604960 () Bool)

(declare-fun res!2708383 () Bool)

(assert (=> b!6604960 (=> res!2708383 e!3996362)))

(declare-fun isEmpty!37869 (List!65720) Bool)

(assert (=> b!6604960 (= res!2708383 (not (isEmpty!37869 (t!379372 zl!343))))))

(declare-fun b!6604961 () Bool)

(assert (=> b!6604961 (= e!3996380 e!3996376)))

(declare-fun res!2708373 () Bool)

(assert (=> b!6604961 (=> res!2708373 e!3996376)))

(assert (=> b!6604961 (= res!2708373 (not (matchR!8656 (regTwo!33458 r!7292) s!2326)))))

(declare-fun lt!2414687 () Regex!16473)

(declare-fun lt!2414688 () (InoxSet Context!11714))

(assert (=> b!6604961 (= (matchR!8656 lt!2414687 s!2326) (matchZipper!2485 lt!2414688 s!2326))))

(declare-fun lt!2414708 () Unit!159227)

(declare-fun theoremZipperRegexEquiv!895 ((InoxSet Context!11714) List!65720 Regex!16473 List!65718) Unit!159227)

(assert (=> b!6604961 (= lt!2414708 (theoremZipperRegexEquiv!895 lt!2414688 lt!2414698 lt!2414687 s!2326))))

(declare-fun setIsEmpty!45108 () Bool)

(assert (=> setIsEmpty!45108 setRes!45108))

(declare-fun b!6604962 () Bool)

(declare-fun res!2708380 () Bool)

(assert (=> b!6604962 (=> res!2708380 e!3996362)))

(declare-fun generalisedConcat!2070 (List!65719) Regex!16473)

(assert (=> b!6604962 (= res!2708380 (not (= r!7292 (generalisedConcat!2070 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun b!6604963 () Bool)

(declare-fun e!3996372 () Bool)

(declare-fun e!3996369 () Bool)

(assert (=> b!6604963 (= e!3996372 e!3996369)))

(declare-fun res!2708376 () Bool)

(assert (=> b!6604963 (=> res!2708376 e!3996369)))

(assert (=> b!6604963 (= res!2708376 (not (= lt!2414683 (derivationStepZipper!2439 lt!2414688 (h!72042 s!2326)))))))

(assert (=> b!6604963 (= (flatMap!1978 lt!2414688 lambda!368398) (derivationStepZipperUp!1647 lt!2414692 (h!72042 s!2326)))))

(declare-fun lt!2414677 () Unit!159227)

(assert (=> b!6604963 (= lt!2414677 (lemmaFlatMapOnSingletonSet!1504 lt!2414688 lt!2414692 lambda!368398))))

(assert (=> b!6604963 (= lt!2414688 (store ((as const (Array Context!11714 Bool)) false) lt!2414692 true))))

(declare-fun b!6604964 () Bool)

(declare-fun res!2708375 () Bool)

(assert (=> b!6604964 (=> res!2708375 e!3996372)))

(assert (=> b!6604964 (= res!2708375 (not (matchZipper!2485 lt!2414683 (t!379370 s!2326))))))

(declare-fun b!6604965 () Bool)

(declare-fun res!2708357 () Bool)

(declare-fun e!3996363 () Bool)

(assert (=> b!6604965 (=> res!2708357 e!3996363)))

(declare-fun isEmpty!37870 (List!65719) Bool)

(assert (=> b!6604965 (= res!2708357 (isEmpty!37870 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6604966 () Bool)

(assert (=> b!6604966 (= e!3996381 e!3996379)))

(declare-fun res!2708367 () Bool)

(assert (=> b!6604966 (=> (not res!2708367) (not e!3996379))))

(declare-fun lt!2414689 () Regex!16473)

(assert (=> b!6604966 (= res!2708367 (= r!7292 lt!2414689))))

(declare-fun unfocusZipper!2215 (List!65720) Regex!16473)

(assert (=> b!6604966 (= lt!2414689 (unfocusZipper!2215 zl!343))))

(declare-fun b!6604967 () Bool)

(declare-fun tp!1820310 () Bool)

(declare-fun tp!1820302 () Bool)

(assert (=> b!6604967 (= e!3996377 (and tp!1820310 tp!1820302))))

(declare-fun b!6604968 () Bool)

(assert (=> b!6604968 (= e!3996369 e!3996360)))

(declare-fun res!2708359 () Bool)

(assert (=> b!6604968 (=> res!2708359 e!3996360)))

(declare-fun regexDepth!370 (Regex!16473) Int)

(assert (=> b!6604968 (= res!2708359 (< (regexDepth!370 r!7292) (regexDepth!370 lt!2414687)))))

(assert (=> b!6604968 (= lt!2414687 (generalisedConcat!2070 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6604969 () Bool)

(declare-fun res!2708378 () Bool)

(assert (=> b!6604969 (=> res!2708378 e!3996371)))

(declare-fun lt!2414701 () Bool)

(assert (=> b!6604969 (= res!2708378 (not lt!2414701))))

(declare-fun b!6604970 () Bool)

(declare-fun tp!1820309 () Bool)

(assert (=> b!6604970 (= e!3996377 tp!1820309)))

(declare-fun b!6604971 () Bool)

(declare-fun res!2708358 () Bool)

(assert (=> b!6604971 (=> res!2708358 e!3996365)))

(assert (=> b!6604971 (= res!2708358 (not (= lt!2414689 r!7292)))))

(assert (=> b!6604972 (= e!3996362 e!3996363)))

(declare-fun res!2708365 () Bool)

(assert (=> b!6604972 (=> res!2708365 e!3996363)))

(declare-fun lt!2414679 () Bool)

(assert (=> b!6604972 (= res!2708365 (or (not (= lt!2414716 lt!2414679)) ((_ is Nil!65594) s!2326)))))

(assert (=> b!6604972 (= (Exists!3543 lambda!368396) (Exists!3543 lambda!368397))))

(declare-fun lt!2414703 () Unit!159227)

(assert (=> b!6604972 (= lt!2414703 (lemmaExistCutMatchRandMatchRSpecEquivalent!2080 (regOne!33458 r!7292) (regTwo!33458 r!7292) s!2326))))

(assert (=> b!6604972 (= lt!2414679 (Exists!3543 lambda!368396))))

(assert (=> b!6604972 (= lt!2414679 (isDefined!13067 (findConcatSeparation!2778 (regOne!33458 r!7292) (regTwo!33458 r!7292) Nil!65594 s!2326 s!2326)))))

(declare-fun lt!2414697 () Unit!159227)

(assert (=> b!6604972 (= lt!2414697 (lemmaFindConcatSeparationEquivalentToExists!2542 (regOne!33458 r!7292) (regTwo!33458 r!7292) s!2326))))

(declare-fun b!6604973 () Bool)

(declare-fun res!2708366 () Bool)

(assert (=> b!6604973 (=> res!2708366 e!3996365)))

(assert (=> b!6604973 (= res!2708366 (not (= (matchZipper!2485 lt!2414686 s!2326) (matchZipper!2485 lt!2414711 (t!379370 s!2326)))))))

(declare-fun b!6604974 () Bool)

(assert (=> b!6604974 (= e!3996378 e!3996368)))

(declare-fun res!2708368 () Bool)

(assert (=> b!6604974 (=> res!2708368 e!3996368)))

(assert (=> b!6604974 (= res!2708368 (not (= lt!2414685 lt!2414682)))))

(declare-fun lt!2414696 () Context!11714)

(declare-fun derivationStepZipperDown!1721 (Regex!16473 Context!11714 C!33216) (InoxSet Context!11714))

(assert (=> b!6604974 (= lt!2414682 (derivationStepZipperDown!1721 (reg!16802 (regOne!33458 r!7292)) lt!2414696 (h!72042 s!2326)))))

(assert (=> b!6604974 (= lt!2414696 (Context!11715 lt!2414676))))

(assert (=> b!6604974 (= lt!2414676 (Cons!65595 lt!2414680 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(assert (=> b!6604974 (= lt!2414680 (Star!16473 (reg!16802 (regOne!33458 r!7292))))))

(declare-fun b!6604975 () Bool)

(declare-fun res!2708386 () Bool)

(assert (=> b!6604975 (=> res!2708386 e!3996378)))

(declare-fun e!3996367 () Bool)

(assert (=> b!6604975 (= res!2708386 e!3996367)))

(declare-fun res!2708356 () Bool)

(assert (=> b!6604975 (=> (not res!2708356) (not e!3996367))))

(assert (=> b!6604975 (= res!2708356 ((_ is Concat!25318) (regOne!33458 r!7292)))))

(declare-fun b!6604976 () Bool)

(assert (=> b!6604976 (= e!3996371 e!3996372)))

(declare-fun res!2708354 () Bool)

(assert (=> b!6604976 (=> res!2708354 e!3996372)))

(declare-fun e!3996374 () Bool)

(assert (=> b!6604976 (= res!2708354 e!3996374)))

(declare-fun res!2708388 () Bool)

(assert (=> b!6604976 (=> (not res!2708388) (not e!3996374))))

(declare-fun lt!2414691 () Bool)

(assert (=> b!6604976 (= res!2708388 (not lt!2414691))))

(assert (=> b!6604976 (= lt!2414691 (matchZipper!2485 lt!2414685 (t!379370 s!2326)))))

(assert (=> b!6604977 (= e!3996363 e!3996378)))

(declare-fun res!2708363 () Bool)

(assert (=> b!6604977 (=> res!2708363 e!3996378)))

(assert (=> b!6604977 (= res!2708363 (or (and ((_ is ElementMatch!16473) (regOne!33458 r!7292)) (= (c!1216946 (regOne!33458 r!7292)) (h!72042 s!2326))) ((_ is Union!16473) (regOne!33458 r!7292))))))

(declare-fun lt!2414684 () Unit!159227)

(assert (=> b!6604977 (= lt!2414684 e!3996375)))

(declare-fun c!1216945 () Bool)

(assert (=> b!6604977 (= c!1216945 lt!2414701)))

(declare-fun nullable!6466 (Regex!16473) Bool)

(assert (=> b!6604977 (= lt!2414701 (nullable!6466 (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(assert (=> b!6604977 (= (flatMap!1978 z!1189 lambda!368398) (derivationStepZipperUp!1647 (h!72044 zl!343) (h!72042 s!2326)))))

(declare-fun lt!2414702 () Unit!159227)

(assert (=> b!6604977 (= lt!2414702 (lemmaFlatMapOnSingletonSet!1504 z!1189 (h!72044 zl!343) lambda!368398))))

(assert (=> b!6604977 (= lt!2414683 (derivationStepZipperUp!1647 lt!2414692 (h!72042 s!2326)))))

(assert (=> b!6604977 (= lt!2414685 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 (h!72044 zl!343))) lt!2414692 (h!72042 s!2326)))))

(assert (=> b!6604977 (= lt!2414692 (Context!11715 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun lt!2414699 () (InoxSet Context!11714))

(assert (=> b!6604977 (= lt!2414699 (derivationStepZipperUp!1647 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343))))) (h!72042 s!2326)))))

(declare-fun b!6604978 () Bool)

(declare-fun tp!1820306 () Bool)

(declare-fun tp!1820303 () Bool)

(assert (=> b!6604978 (= e!3996377 (and tp!1820306 tp!1820303))))

(declare-fun b!6604979 () Bool)

(declare-fun tp!1820307 () Bool)

(assert (=> b!6604979 (= e!3996384 (and tp_is_empty!42199 tp!1820307))))

(declare-fun setNonEmpty!45108 () Bool)

(declare-fun e!3996383 () Bool)

(declare-fun tp!1820311 () Bool)

(declare-fun setElem!45108 () Context!11714)

(declare-fun inv!84429 (Context!11714) Bool)

(assert (=> setNonEmpty!45108 (= setRes!45108 (and tp!1820311 (inv!84429 setElem!45108) e!3996383))))

(declare-fun setRest!45108 () (InoxSet Context!11714))

(assert (=> setNonEmpty!45108 (= z!1189 ((_ map or) (store ((as const (Array Context!11714 Bool)) false) setElem!45108 true) setRest!45108))))

(declare-fun b!6604980 () Bool)

(declare-fun res!2708360 () Bool)

(assert (=> b!6604980 (=> res!2708360 e!3996362)))

(assert (=> b!6604980 (= res!2708360 (or ((_ is EmptyExpr!16473) r!7292) ((_ is EmptyLang!16473) r!7292) ((_ is ElementMatch!16473) r!7292) ((_ is Union!16473) r!7292) (not ((_ is Concat!25318) r!7292))))))

(declare-fun b!6604981 () Bool)

(declare-fun tp!1820308 () Bool)

(assert (=> b!6604981 (= e!3996383 tp!1820308)))

(declare-fun b!6604982 () Bool)

(declare-fun e!3996361 () Bool)

(assert (=> b!6604982 (= e!3996373 e!3996361)))

(declare-fun res!2708361 () Bool)

(assert (=> b!6604982 (=> res!2708361 e!3996361)))

(declare-fun lt!2414695 () Regex!16473)

(assert (=> b!6604982 (= res!2708361 (not (= (unfocusZipper!2215 (Cons!65596 lt!2414700 Nil!65596)) lt!2414695)))))

(assert (=> b!6604982 (= lt!2414695 (Concat!25318 (reg!16802 (regOne!33458 r!7292)) lt!2414678))))

(declare-fun b!6604983 () Bool)

(declare-fun e!3996366 () Bool)

(assert (=> b!6604983 (= e!3996361 e!3996366)))

(declare-fun res!2708353 () Bool)

(assert (=> b!6604983 (=> res!2708353 e!3996366)))

(declare-fun lt!2414715 () Context!11714)

(assert (=> b!6604983 (= res!2708353 (not (= (unfocusZipper!2215 (Cons!65596 lt!2414715 Nil!65596)) (reg!16802 (regOne!33458 r!7292)))))))

(declare-fun lt!2414694 () (InoxSet Context!11714))

(assert (=> b!6604983 (= (flatMap!1978 lt!2414694 lambda!368398) (derivationStepZipperUp!1647 lt!2414696 (h!72042 s!2326)))))

(declare-fun lt!2414681 () Unit!159227)

(assert (=> b!6604983 (= lt!2414681 (lemmaFlatMapOnSingletonSet!1504 lt!2414694 lt!2414696 lambda!368398))))

(declare-fun lt!2414710 () (InoxSet Context!11714))

(assert (=> b!6604983 (= (flatMap!1978 lt!2414710 lambda!368398) (derivationStepZipperUp!1647 lt!2414715 (h!72042 s!2326)))))

(declare-fun lt!2414705 () Unit!159227)

(assert (=> b!6604983 (= lt!2414705 (lemmaFlatMapOnSingletonSet!1504 lt!2414710 lt!2414715 lambda!368398))))

(declare-fun lt!2414707 () (InoxSet Context!11714))

(assert (=> b!6604983 (= lt!2414707 (derivationStepZipperUp!1647 lt!2414696 (h!72042 s!2326)))))

(declare-fun lt!2414704 () (InoxSet Context!11714))

(assert (=> b!6604983 (= lt!2414704 (derivationStepZipperUp!1647 lt!2414715 (h!72042 s!2326)))))

(assert (=> b!6604983 (= lt!2414694 (store ((as const (Array Context!11714 Bool)) false) lt!2414696 true))))

(assert (=> b!6604983 (= lt!2414710 (store ((as const (Array Context!11714 Bool)) false) lt!2414715 true))))

(assert (=> b!6604983 (= lt!2414715 (Context!11715 (Cons!65595 (reg!16802 (regOne!33458 r!7292)) Nil!65595)))))

(declare-fun b!6604984 () Bool)

(assert (=> b!6604984 (= e!3996366 e!3996371)))

(declare-fun res!2708384 () Bool)

(assert (=> b!6604984 (=> res!2708384 e!3996371)))

(assert (=> b!6604984 (= res!2708384 lt!2414716)))

(assert (=> b!6604984 (= (matchR!8656 lt!2414695 s!2326) (matchRSpec!3574 lt!2414695 s!2326))))

(declare-fun lt!2414674 () Unit!159227)

(assert (=> b!6604984 (= lt!2414674 (mainMatchTheorem!3574 lt!2414695 s!2326))))

(declare-fun b!6604985 () Bool)

(declare-fun res!2708387 () Bool)

(assert (=> b!6604985 (=> res!2708387 e!3996362)))

(assert (=> b!6604985 (= res!2708387 (not ((_ is Cons!65595) (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6604986 () Bool)

(assert (=> b!6604986 (= e!3996374 (not (matchZipper!2485 lt!2414683 (t!379370 s!2326))))))

(declare-fun b!6604987 () Bool)

(declare-fun res!2708379 () Bool)

(assert (=> b!6604987 (=> res!2708379 e!3996372)))

(assert (=> b!6604987 (= res!2708379 lt!2414691)))

(declare-fun b!6604988 () Bool)

(assert (=> b!6604988 (= e!3996367 (nullable!6466 (regOne!33458 (regOne!33458 r!7292))))))

(declare-fun tp!1820305 () Bool)

(declare-fun b!6604989 () Bool)

(assert (=> b!6604989 (= e!3996364 (and (inv!84429 (h!72044 zl!343)) e!3996382 tp!1820305))))

(declare-fun b!6604990 () Bool)

(declare-fun res!2708371 () Bool)

(assert (=> b!6604990 (=> res!2708371 e!3996366)))

(assert (=> b!6604990 (= res!2708371 (not (= (unfocusZipper!2215 (Cons!65596 lt!2414696 Nil!65596)) lt!2414678)))))

(assert (= (and start!645774 res!2708374) b!6604950))

(assert (= (and b!6604950 res!2708382) b!6604966))

(assert (= (and b!6604966 res!2708367) b!6604947))

(assert (= (and b!6604947 (not res!2708370)) b!6604960))

(assert (= (and b!6604960 (not res!2708383)) b!6604962))

(assert (= (and b!6604962 (not res!2708380)) b!6604985))

(assert (= (and b!6604985 (not res!2708387)) b!6604951))

(assert (= (and b!6604951 (not res!2708369)) b!6604980))

(assert (= (and b!6604980 (not res!2708360)) b!6604972))

(assert (= (and b!6604972 (not res!2708365)) b!6604965))

(assert (= (and b!6604965 (not res!2708357)) b!6604977))

(assert (= (and b!6604977 c!1216945) b!6604949))

(assert (= (and b!6604977 (not c!1216945)) b!6604945))

(assert (= (and b!6604949 (not res!2708355)) b!6604958))

(assert (= (and b!6604977 (not res!2708363)) b!6604975))

(assert (= (and b!6604975 res!2708356) b!6604988))

(assert (= (and b!6604975 (not res!2708386)) b!6604959))

(assert (= (and b!6604959 (not res!2708372)) b!6604974))

(assert (= (and b!6604974 (not res!2708368)) b!6604956))

(assert (= (and b!6604956 (not res!2708362)) b!6604973))

(assert (= (and b!6604973 (not res!2708366)) b!6604971))

(assert (= (and b!6604971 (not res!2708358)) b!6604952))

(assert (= (and b!6604952 (not res!2708377)) b!6604982))

(assert (= (and b!6604982 (not res!2708361)) b!6604983))

(assert (= (and b!6604983 (not res!2708353)) b!6604990))

(assert (= (and b!6604990 (not res!2708371)) b!6604984))

(assert (= (and b!6604984 (not res!2708384)) b!6604953))

(assert (= (and b!6604953 (not res!2708385)) b!6604969))

(assert (= (and b!6604969 (not res!2708378)) b!6604976))

(assert (= (and b!6604976 res!2708388) b!6604986))

(assert (= (and b!6604976 (not res!2708354)) b!6604987))

(assert (= (and b!6604987 (not res!2708379)) b!6604964))

(assert (= (and b!6604964 (not res!2708375)) b!6604963))

(assert (= (and b!6604963 (not res!2708376)) b!6604968))

(assert (= (and b!6604968 (not res!2708359)) b!6604957))

(assert (= (and b!6604957 (not res!2708381)) b!6604961))

(assert (= (and b!6604961 (not res!2708373)) b!6604955))

(assert (= (and b!6604955 res!2708364) b!6604946))

(assert (= (and start!645774 ((_ is ElementMatch!16473) r!7292)) b!6604954))

(assert (= (and start!645774 ((_ is Concat!25318) r!7292)) b!6604978))

(assert (= (and start!645774 ((_ is Star!16473) r!7292)) b!6604970))

(assert (= (and start!645774 ((_ is Union!16473) r!7292)) b!6604967))

(assert (= (and start!645774 condSetEmpty!45108) setIsEmpty!45108))

(assert (= (and start!645774 (not condSetEmpty!45108)) setNonEmpty!45108))

(assert (= setNonEmpty!45108 b!6604981))

(assert (= b!6604989 b!6604948))

(assert (= (and start!645774 ((_ is Cons!65596) zl!343)) b!6604989))

(assert (= (and start!645774 ((_ is Cons!65594) s!2326)) b!6604979))

(declare-fun m!7380344 () Bool)

(assert (=> b!6604966 m!7380344))

(declare-fun m!7380346 () Bool)

(assert (=> b!6604986 m!7380346))

(declare-fun m!7380348 () Bool)

(assert (=> b!6604955 m!7380348))

(declare-fun m!7380350 () Bool)

(assert (=> b!6604955 m!7380350))

(declare-fun m!7380352 () Bool)

(assert (=> b!6604955 m!7380352))

(declare-fun m!7380354 () Bool)

(assert (=> b!6604955 m!7380354))

(declare-fun m!7380356 () Bool)

(assert (=> b!6604955 m!7380356))

(declare-fun m!7380358 () Bool)

(assert (=> b!6604955 m!7380358))

(declare-fun m!7380360 () Bool)

(assert (=> b!6604955 m!7380360))

(assert (=> b!6604955 m!7380356))

(declare-fun m!7380362 () Bool)

(assert (=> b!6604955 m!7380362))

(declare-fun m!7380364 () Bool)

(assert (=> b!6604955 m!7380364))

(declare-fun m!7380366 () Bool)

(assert (=> b!6604955 m!7380366))

(declare-fun m!7380368 () Bool)

(assert (=> b!6604955 m!7380368))

(assert (=> b!6604955 m!7380354))

(declare-fun m!7380370 () Bool)

(assert (=> b!6604955 m!7380370))

(assert (=> b!6604955 m!7380356))

(declare-fun m!7380372 () Bool)

(assert (=> b!6604960 m!7380372))

(assert (=> b!6604964 m!7380346))

(declare-fun m!7380374 () Bool)

(assert (=> b!6604983 m!7380374))

(declare-fun m!7380376 () Bool)

(assert (=> b!6604983 m!7380376))

(declare-fun m!7380378 () Bool)

(assert (=> b!6604983 m!7380378))

(declare-fun m!7380380 () Bool)

(assert (=> b!6604983 m!7380380))

(declare-fun m!7380382 () Bool)

(assert (=> b!6604983 m!7380382))

(declare-fun m!7380384 () Bool)

(assert (=> b!6604983 m!7380384))

(declare-fun m!7380386 () Bool)

(assert (=> b!6604983 m!7380386))

(declare-fun m!7380388 () Bool)

(assert (=> b!6604983 m!7380388))

(declare-fun m!7380390 () Bool)

(assert (=> b!6604983 m!7380390))

(declare-fun m!7380392 () Bool)

(assert (=> b!6604974 m!7380392))

(declare-fun m!7380394 () Bool)

(assert (=> b!6604972 m!7380394))

(declare-fun m!7380396 () Bool)

(assert (=> b!6604972 m!7380396))

(declare-fun m!7380398 () Bool)

(assert (=> b!6604972 m!7380398))

(declare-fun m!7380400 () Bool)

(assert (=> b!6604972 m!7380400))

(assert (=> b!6604972 m!7380398))

(declare-fun m!7380402 () Bool)

(assert (=> b!6604972 m!7380402))

(assert (=> b!6604972 m!7380394))

(declare-fun m!7380404 () Bool)

(assert (=> b!6604972 m!7380404))

(declare-fun m!7380406 () Bool)

(assert (=> b!6604951 m!7380406))

(assert (=> b!6604951 m!7380406))

(declare-fun m!7380408 () Bool)

(assert (=> b!6604951 m!7380408))

(declare-fun m!7380410 () Bool)

(assert (=> start!645774 m!7380410))

(declare-fun m!7380412 () Bool)

(assert (=> b!6604973 m!7380412))

(declare-fun m!7380414 () Bool)

(assert (=> b!6604973 m!7380414))

(declare-fun m!7380416 () Bool)

(assert (=> b!6604977 m!7380416))

(declare-fun m!7380418 () Bool)

(assert (=> b!6604977 m!7380418))

(declare-fun m!7380420 () Bool)

(assert (=> b!6604977 m!7380420))

(declare-fun m!7380422 () Bool)

(assert (=> b!6604977 m!7380422))

(declare-fun m!7380424 () Bool)

(assert (=> b!6604977 m!7380424))

(declare-fun m!7380426 () Bool)

(assert (=> b!6604977 m!7380426))

(declare-fun m!7380428 () Bool)

(assert (=> b!6604977 m!7380428))

(declare-fun m!7380430 () Bool)

(assert (=> b!6604988 m!7380430))

(declare-fun m!7380432 () Bool)

(assert (=> b!6604989 m!7380432))

(declare-fun m!7380434 () Bool)

(assert (=> b!6604963 m!7380434))

(declare-fun m!7380436 () Bool)

(assert (=> b!6604963 m!7380436))

(declare-fun m!7380438 () Bool)

(assert (=> b!6604963 m!7380438))

(assert (=> b!6604963 m!7380428))

(declare-fun m!7380440 () Bool)

(assert (=> b!6604963 m!7380440))

(declare-fun m!7380442 () Bool)

(assert (=> setNonEmpty!45108 m!7380442))

(declare-fun m!7380444 () Bool)

(assert (=> b!6604962 m!7380444))

(declare-fun m!7380446 () Bool)

(assert (=> b!6604946 m!7380446))

(declare-fun m!7380448 () Bool)

(assert (=> b!6604947 m!7380448))

(declare-fun m!7380450 () Bool)

(assert (=> b!6604947 m!7380450))

(declare-fun m!7380452 () Bool)

(assert (=> b!6604947 m!7380452))

(declare-fun m!7380454 () Bool)

(assert (=> b!6604949 m!7380454))

(declare-fun m!7380456 () Bool)

(assert (=> b!6604949 m!7380456))

(declare-fun m!7380458 () Bool)

(assert (=> b!6604949 m!7380458))

(declare-fun m!7380460 () Bool)

(assert (=> b!6604956 m!7380460))

(declare-fun m!7380462 () Bool)

(assert (=> b!6604956 m!7380462))

(declare-fun m!7380464 () Bool)

(assert (=> b!6604956 m!7380464))

(declare-fun m!7380466 () Bool)

(assert (=> b!6604956 m!7380466))

(declare-fun m!7380468 () Bool)

(assert (=> b!6604956 m!7380468))

(declare-fun m!7380470 () Bool)

(assert (=> b!6604990 m!7380470))

(declare-fun m!7380472 () Bool)

(assert (=> b!6604965 m!7380472))

(assert (=> b!6604958 m!7380346))

(declare-fun m!7380474 () Bool)

(assert (=> b!6604957 m!7380474))

(declare-fun m!7380476 () Bool)

(assert (=> b!6604957 m!7380476))

(declare-fun m!7380478 () Bool)

(assert (=> b!6604968 m!7380478))

(declare-fun m!7380480 () Bool)

(assert (=> b!6604968 m!7380480))

(declare-fun m!7380482 () Bool)

(assert (=> b!6604968 m!7380482))

(declare-fun m!7380484 () Bool)

(assert (=> b!6604953 m!7380484))

(declare-fun m!7380486 () Bool)

(assert (=> b!6604961 m!7380486))

(declare-fun m!7380488 () Bool)

(assert (=> b!6604961 m!7380488))

(declare-fun m!7380490 () Bool)

(assert (=> b!6604961 m!7380490))

(declare-fun m!7380492 () Bool)

(assert (=> b!6604961 m!7380492))

(declare-fun m!7380494 () Bool)

(assert (=> b!6604950 m!7380494))

(declare-fun m!7380496 () Bool)

(assert (=> b!6604982 m!7380496))

(assert (=> b!6604976 m!7380456))

(declare-fun m!7380498 () Bool)

(assert (=> b!6604984 m!7380498))

(declare-fun m!7380500 () Bool)

(assert (=> b!6604984 m!7380500))

(declare-fun m!7380502 () Bool)

(assert (=> b!6604984 m!7380502))

(check-sat (not b!6604990) (not b!6604964) (not b!6604966) (not setNonEmpty!45108) (not b!6604951) (not b!6604953) (not b!6604961) (not b!6604949) (not b!6604946) (not b!6604960) (not b!6604955) (not b!6604986) (not b!6604972) (not b!6604948) (not b!6604963) (not b!6604984) (not b!6604970) (not b!6604965) (not b!6604983) (not b!6604962) (not b!6604973) (not b!6604979) (not b!6604976) tp_is_empty!42199 (not start!645774) (not b!6604947) (not b!6604956) (not b!6604981) (not b!6604967) (not b!6604977) (not b!6604968) (not b!6604978) (not b!6604982) (not b!6604989) (not b!6604958) (not b!6604957) (not b!6604950) (not b!6604974) (not b!6604988))
(check-sat)
(get-model)

(declare-fun d!2071374 () Bool)

(declare-fun c!1217075 () Bool)

(declare-fun isEmpty!37873 (List!65718) Bool)

(assert (=> d!2071374 (= c!1217075 (isEmpty!37873 (t!379370 s!2326)))))

(declare-fun e!3996625 () Bool)

(assert (=> d!2071374 (= (matchZipper!2485 lt!2414683 (t!379370 s!2326)) e!3996625)))

(declare-fun b!6605407 () Bool)

(declare-fun nullableZipper!2217 ((InoxSet Context!11714)) Bool)

(assert (=> b!6605407 (= e!3996625 (nullableZipper!2217 lt!2414683))))

(declare-fun b!6605408 () Bool)

(declare-fun head!13397 (List!65718) C!33216)

(declare-fun tail!12482 (List!65718) List!65718)

(assert (=> b!6605408 (= e!3996625 (matchZipper!2485 (derivationStepZipper!2439 lt!2414683 (head!13397 (t!379370 s!2326))) (tail!12482 (t!379370 s!2326))))))

(assert (= (and d!2071374 c!1217075) b!6605407))

(assert (= (and d!2071374 (not c!1217075)) b!6605408))

(declare-fun m!7380848 () Bool)

(assert (=> d!2071374 m!7380848))

(declare-fun m!7380850 () Bool)

(assert (=> b!6605407 m!7380850))

(declare-fun m!7380852 () Bool)

(assert (=> b!6605408 m!7380852))

(assert (=> b!6605408 m!7380852))

(declare-fun m!7380854 () Bool)

(assert (=> b!6605408 m!7380854))

(declare-fun m!7380856 () Bool)

(assert (=> b!6605408 m!7380856))

(assert (=> b!6605408 m!7380854))

(assert (=> b!6605408 m!7380856))

(declare-fun m!7380858 () Bool)

(assert (=> b!6605408 m!7380858))

(assert (=> b!6604964 d!2071374))

(declare-fun b!6605495 () Bool)

(declare-fun res!2708569 () Bool)

(declare-fun e!3996673 () Bool)

(assert (=> b!6605495 (=> (not res!2708569) (not e!3996673))))

(declare-fun call!577843 () Bool)

(assert (=> b!6605495 (= res!2708569 (not call!577843))))

(declare-fun b!6605496 () Bool)

(declare-fun e!3996671 () Bool)

(declare-fun e!3996675 () Bool)

(assert (=> b!6605496 (= e!3996671 e!3996675)))

(declare-fun res!2708574 () Bool)

(assert (=> b!6605496 (=> (not res!2708574) (not e!3996675))))

(declare-fun lt!2414782 () Bool)

(assert (=> b!6605496 (= res!2708574 (not lt!2414782))))

(declare-fun b!6605497 () Bool)

(assert (=> b!6605497 (= e!3996673 (= (head!13397 s!2326) (c!1216946 lt!2414695)))))

(declare-fun b!6605498 () Bool)

(declare-fun res!2708568 () Bool)

(assert (=> b!6605498 (=> (not res!2708568) (not e!3996673))))

(assert (=> b!6605498 (= res!2708568 (isEmpty!37873 (tail!12482 s!2326)))))

(declare-fun b!6605499 () Bool)

(declare-fun e!3996674 () Bool)

(assert (=> b!6605499 (= e!3996674 (= lt!2414782 call!577843))))

(declare-fun d!2071390 () Bool)

(assert (=> d!2071390 e!3996674))

(declare-fun c!1217110 () Bool)

(assert (=> d!2071390 (= c!1217110 ((_ is EmptyExpr!16473) lt!2414695))))

(declare-fun e!3996678 () Bool)

(assert (=> d!2071390 (= lt!2414782 e!3996678)))

(declare-fun c!1217106 () Bool)

(assert (=> d!2071390 (= c!1217106 (isEmpty!37873 s!2326))))

(assert (=> d!2071390 (validRegex!8209 lt!2414695)))

(assert (=> d!2071390 (= (matchR!8656 lt!2414695 s!2326) lt!2414782)))

(declare-fun bm!577838 () Bool)

(assert (=> bm!577838 (= call!577843 (isEmpty!37873 s!2326))))

(declare-fun b!6605500 () Bool)

(declare-fun e!3996677 () Bool)

(assert (=> b!6605500 (= e!3996677 (not (= (head!13397 s!2326) (c!1216946 lt!2414695))))))

(declare-fun b!6605501 () Bool)

(assert (=> b!6605501 (= e!3996678 (nullable!6466 lt!2414695))))

(declare-fun b!6605502 () Bool)

(declare-fun res!2708570 () Bool)

(assert (=> b!6605502 (=> res!2708570 e!3996671)))

(assert (=> b!6605502 (= res!2708570 (not ((_ is ElementMatch!16473) lt!2414695)))))

(declare-fun e!3996676 () Bool)

(assert (=> b!6605502 (= e!3996676 e!3996671)))

(declare-fun b!6605503 () Bool)

(assert (=> b!6605503 (= e!3996676 (not lt!2414782))))

(declare-fun b!6605504 () Bool)

(declare-fun derivativeStep!5157 (Regex!16473 C!33216) Regex!16473)

(assert (=> b!6605504 (= e!3996678 (matchR!8656 (derivativeStep!5157 lt!2414695 (head!13397 s!2326)) (tail!12482 s!2326)))))

(declare-fun b!6605505 () Bool)

(declare-fun res!2708573 () Bool)

(assert (=> b!6605505 (=> res!2708573 e!3996677)))

(assert (=> b!6605505 (= res!2708573 (not (isEmpty!37873 (tail!12482 s!2326))))))

(declare-fun b!6605506 () Bool)

(assert (=> b!6605506 (= e!3996674 e!3996676)))

(declare-fun c!1217108 () Bool)

(assert (=> b!6605506 (= c!1217108 ((_ is EmptyLang!16473) lt!2414695))))

(declare-fun b!6605507 () Bool)

(declare-fun res!2708567 () Bool)

(assert (=> b!6605507 (=> res!2708567 e!3996671)))

(assert (=> b!6605507 (= res!2708567 e!3996673)))

(declare-fun res!2708572 () Bool)

(assert (=> b!6605507 (=> (not res!2708572) (not e!3996673))))

(assert (=> b!6605507 (= res!2708572 lt!2414782)))

(declare-fun b!6605508 () Bool)

(assert (=> b!6605508 (= e!3996675 e!3996677)))

(declare-fun res!2708571 () Bool)

(assert (=> b!6605508 (=> res!2708571 e!3996677)))

(assert (=> b!6605508 (= res!2708571 call!577843)))

(assert (= (and d!2071390 c!1217106) b!6605501))

(assert (= (and d!2071390 (not c!1217106)) b!6605504))

(assert (= (and d!2071390 c!1217110) b!6605499))

(assert (= (and d!2071390 (not c!1217110)) b!6605506))

(assert (= (and b!6605506 c!1217108) b!6605503))

(assert (= (and b!6605506 (not c!1217108)) b!6605502))

(assert (= (and b!6605502 (not res!2708570)) b!6605507))

(assert (= (and b!6605507 res!2708572) b!6605495))

(assert (= (and b!6605495 res!2708569) b!6605498))

(assert (= (and b!6605498 res!2708568) b!6605497))

(assert (= (and b!6605507 (not res!2708567)) b!6605496))

(assert (= (and b!6605496 res!2708574) b!6605508))

(assert (= (and b!6605508 (not res!2708571)) b!6605505))

(assert (= (and b!6605505 (not res!2708573)) b!6605500))

(assert (= (or b!6605499 b!6605495 b!6605508) bm!577838))

(declare-fun m!7380896 () Bool)

(assert (=> b!6605497 m!7380896))

(declare-fun m!7380898 () Bool)

(assert (=> b!6605501 m!7380898))

(declare-fun m!7380900 () Bool)

(assert (=> b!6605505 m!7380900))

(assert (=> b!6605505 m!7380900))

(declare-fun m!7380902 () Bool)

(assert (=> b!6605505 m!7380902))

(declare-fun m!7380904 () Bool)

(assert (=> bm!577838 m!7380904))

(assert (=> b!6605500 m!7380896))

(assert (=> b!6605504 m!7380896))

(assert (=> b!6605504 m!7380896))

(declare-fun m!7380906 () Bool)

(assert (=> b!6605504 m!7380906))

(assert (=> b!6605504 m!7380900))

(assert (=> b!6605504 m!7380906))

(assert (=> b!6605504 m!7380900))

(declare-fun m!7380908 () Bool)

(assert (=> b!6605504 m!7380908))

(assert (=> b!6605498 m!7380900))

(assert (=> b!6605498 m!7380900))

(assert (=> b!6605498 m!7380902))

(assert (=> d!2071390 m!7380904))

(declare-fun m!7380910 () Bool)

(assert (=> d!2071390 m!7380910))

(assert (=> b!6604984 d!2071390))

(declare-fun bs!1693162 () Bool)

(declare-fun b!6605617 () Bool)

(assert (= bs!1693162 (and b!6605617 b!6604955)))

(declare-fun lambda!368463 () Int)

(assert (=> bs!1693162 (not (= lambda!368463 lambda!368399))))

(assert (=> bs!1693162 (= (and (= s!2326 Nil!65594) (= (reg!16802 lt!2414695) (reg!16802 (regOne!33458 r!7292))) (= lt!2414695 lt!2414680)) (= lambda!368463 lambda!368401))))

(declare-fun bs!1693166 () Bool)

(assert (= bs!1693166 (and b!6605617 b!6604972)))

(assert (=> bs!1693166 (not (= lambda!368463 lambda!368396))))

(assert (=> bs!1693166 (not (= lambda!368463 lambda!368397))))

(assert (=> bs!1693162 (not (= lambda!368463 lambda!368400))))

(assert (=> b!6605617 true))

(assert (=> b!6605617 true))

(declare-fun bs!1693173 () Bool)

(declare-fun b!6605613 () Bool)

(assert (= bs!1693173 (and b!6605613 b!6604955)))

(declare-fun lambda!368465 () Int)

(assert (=> bs!1693173 (not (= lambda!368465 lambda!368399))))

(assert (=> bs!1693173 (not (= lambda!368465 lambda!368401))))

(declare-fun bs!1693175 () Bool)

(assert (= bs!1693175 (and b!6605613 b!6604972)))

(assert (=> bs!1693175 (not (= lambda!368465 lambda!368396))))

(declare-fun bs!1693177 () Bool)

(assert (= bs!1693177 (and b!6605613 b!6605617)))

(assert (=> bs!1693177 (not (= lambda!368465 lambda!368463))))

(assert (=> bs!1693175 (= (and (= (regOne!33458 lt!2414695) (regOne!33458 r!7292)) (= (regTwo!33458 lt!2414695) (regTwo!33458 r!7292))) (= lambda!368465 lambda!368397))))

(assert (=> bs!1693173 (= (and (= s!2326 Nil!65594) (= (regOne!33458 lt!2414695) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 lt!2414695) lt!2414680)) (= lambda!368465 lambda!368400))))

(assert (=> b!6605613 true))

(assert (=> b!6605613 true))

(declare-fun b!6605611 () Bool)

(declare-fun e!3996739 () Bool)

(declare-fun e!3996742 () Bool)

(assert (=> b!6605611 (= e!3996739 e!3996742)))

(declare-fun c!1217143 () Bool)

(assert (=> b!6605611 (= c!1217143 ((_ is Star!16473) lt!2414695))))

(declare-fun d!2071406 () Bool)

(declare-fun c!1217145 () Bool)

(assert (=> d!2071406 (= c!1217145 ((_ is EmptyExpr!16473) lt!2414695))))

(declare-fun e!3996736 () Bool)

(assert (=> d!2071406 (= (matchRSpec!3574 lt!2414695 s!2326) e!3996736)))

(declare-fun b!6605612 () Bool)

(declare-fun e!3996737 () Bool)

(assert (=> b!6605612 (= e!3996736 e!3996737)))

(declare-fun res!2708626 () Bool)

(assert (=> b!6605612 (= res!2708626 (not ((_ is EmptyLang!16473) lt!2414695)))))

(assert (=> b!6605612 (=> (not res!2708626) (not e!3996737))))

(declare-fun bm!577848 () Bool)

(declare-fun call!577853 () Bool)

(assert (=> bm!577848 (= call!577853 (isEmpty!37873 s!2326))))

(declare-fun call!577854 () Bool)

(assert (=> b!6605613 (= e!3996742 call!577854)))

(declare-fun b!6605614 () Bool)

(declare-fun c!1217142 () Bool)

(assert (=> b!6605614 (= c!1217142 ((_ is Union!16473) lt!2414695))))

(declare-fun e!3996740 () Bool)

(assert (=> b!6605614 (= e!3996740 e!3996739)))

(declare-fun b!6605615 () Bool)

(assert (=> b!6605615 (= e!3996740 (= s!2326 (Cons!65594 (c!1216946 lt!2414695) Nil!65594)))))

(declare-fun b!6605616 () Bool)

(declare-fun e!3996738 () Bool)

(assert (=> b!6605616 (= e!3996738 (matchRSpec!3574 (regTwo!33459 lt!2414695) s!2326))))

(declare-fun e!3996741 () Bool)

(assert (=> b!6605617 (= e!3996741 call!577854)))

(declare-fun b!6605618 () Bool)

(assert (=> b!6605618 (= e!3996739 e!3996738)))

(declare-fun res!2708625 () Bool)

(assert (=> b!6605618 (= res!2708625 (matchRSpec!3574 (regOne!33459 lt!2414695) s!2326))))

(assert (=> b!6605618 (=> res!2708625 e!3996738)))

(declare-fun b!6605619 () Bool)

(assert (=> b!6605619 (= e!3996736 call!577853)))

(declare-fun b!6605620 () Bool)

(declare-fun c!1217144 () Bool)

(assert (=> b!6605620 (= c!1217144 ((_ is ElementMatch!16473) lt!2414695))))

(assert (=> b!6605620 (= e!3996737 e!3996740)))

(declare-fun b!6605621 () Bool)

(declare-fun res!2708627 () Bool)

(assert (=> b!6605621 (=> res!2708627 e!3996741)))

(assert (=> b!6605621 (= res!2708627 call!577853)))

(assert (=> b!6605621 (= e!3996742 e!3996741)))

(declare-fun bm!577849 () Bool)

(assert (=> bm!577849 (= call!577854 (Exists!3543 (ite c!1217143 lambda!368463 lambda!368465)))))

(assert (= (and d!2071406 c!1217145) b!6605619))

(assert (= (and d!2071406 (not c!1217145)) b!6605612))

(assert (= (and b!6605612 res!2708626) b!6605620))

(assert (= (and b!6605620 c!1217144) b!6605615))

(assert (= (and b!6605620 (not c!1217144)) b!6605614))

(assert (= (and b!6605614 c!1217142) b!6605618))

(assert (= (and b!6605614 (not c!1217142)) b!6605611))

(assert (= (and b!6605618 (not res!2708625)) b!6605616))

(assert (= (and b!6605611 c!1217143) b!6605621))

(assert (= (and b!6605611 (not c!1217143)) b!6605613))

(assert (= (and b!6605621 (not res!2708627)) b!6605617))

(assert (= (or b!6605617 b!6605613) bm!577849))

(assert (= (or b!6605619 b!6605621) bm!577848))

(assert (=> bm!577848 m!7380904))

(declare-fun m!7380980 () Bool)

(assert (=> b!6605616 m!7380980))

(declare-fun m!7380982 () Bool)

(assert (=> b!6605618 m!7380982))

(declare-fun m!7380984 () Bool)

(assert (=> bm!577849 m!7380984))

(assert (=> b!6604984 d!2071406))

(declare-fun d!2071430 () Bool)

(assert (=> d!2071430 (= (matchR!8656 lt!2414695 s!2326) (matchRSpec!3574 lt!2414695 s!2326))))

(declare-fun lt!2414809 () Unit!159227)

(declare-fun choose!49326 (Regex!16473 List!65718) Unit!159227)

(assert (=> d!2071430 (= lt!2414809 (choose!49326 lt!2414695 s!2326))))

(assert (=> d!2071430 (validRegex!8209 lt!2414695)))

(assert (=> d!2071430 (= (mainMatchTheorem!3574 lt!2414695 s!2326) lt!2414809)))

(declare-fun bs!1693180 () Bool)

(assert (= bs!1693180 d!2071430))

(assert (=> bs!1693180 m!7380498))

(assert (=> bs!1693180 m!7380500))

(declare-fun m!7380990 () Bool)

(assert (=> bs!1693180 m!7380990))

(assert (=> bs!1693180 m!7380910))

(assert (=> b!6604984 d!2071430))

(declare-fun d!2071432 () Bool)

(assert (=> d!2071432 (= (isEmpty!37870 (t!379371 (exprs!6357 (h!72044 zl!343)))) ((_ is Nil!65595) (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(assert (=> b!6604965 d!2071432))

(declare-fun d!2071434 () Bool)

(declare-fun lt!2414812 () Regex!16473)

(assert (=> d!2071434 (validRegex!8209 lt!2414812)))

(assert (=> d!2071434 (= lt!2414812 (generalisedUnion!2317 (unfocusZipperList!1894 zl!343)))))

(assert (=> d!2071434 (= (unfocusZipper!2215 zl!343) lt!2414812)))

(declare-fun bs!1693182 () Bool)

(assert (= bs!1693182 d!2071434))

(declare-fun m!7380994 () Bool)

(assert (=> bs!1693182 m!7380994))

(assert (=> bs!1693182 m!7380406))

(assert (=> bs!1693182 m!7380406))

(assert (=> bs!1693182 m!7380408))

(assert (=> b!6604966 d!2071434))

(assert (=> b!6604986 d!2071374))

(declare-fun b!6605696 () Bool)

(declare-fun e!3996780 () Bool)

(declare-fun lt!2414815 () Regex!16473)

(declare-fun isConcat!1374 (Regex!16473) Bool)

(assert (=> b!6605696 (= e!3996780 (isConcat!1374 lt!2414815))))

(declare-fun b!6605697 () Bool)

(declare-fun e!3996779 () Regex!16473)

(assert (=> b!6605697 (= e!3996779 (Concat!25318 (h!72043 (exprs!6357 (h!72044 zl!343))) (generalisedConcat!2070 (t!379371 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun b!6605698 () Bool)

(declare-fun e!3996781 () Bool)

(declare-fun e!3996782 () Bool)

(assert (=> b!6605698 (= e!3996781 e!3996782)))

(declare-fun c!1217156 () Bool)

(assert (=> b!6605698 (= c!1217156 (isEmpty!37870 (exprs!6357 (h!72044 zl!343))))))

(declare-fun d!2071440 () Bool)

(assert (=> d!2071440 e!3996781))

(declare-fun res!2708633 () Bool)

(assert (=> d!2071440 (=> (not res!2708633) (not e!3996781))))

(assert (=> d!2071440 (= res!2708633 (validRegex!8209 lt!2414815))))

(declare-fun e!3996783 () Regex!16473)

(assert (=> d!2071440 (= lt!2414815 e!3996783)))

(declare-fun c!1217157 () Bool)

(declare-fun e!3996778 () Bool)

(assert (=> d!2071440 (= c!1217157 e!3996778)))

(declare-fun res!2708632 () Bool)

(assert (=> d!2071440 (=> (not res!2708632) (not e!3996778))))

(assert (=> d!2071440 (= res!2708632 ((_ is Cons!65595) (exprs!6357 (h!72044 zl!343))))))

(declare-fun lambda!368468 () Int)

(declare-fun forall!15669 (List!65719 Int) Bool)

(assert (=> d!2071440 (forall!15669 (exprs!6357 (h!72044 zl!343)) lambda!368468)))

(assert (=> d!2071440 (= (generalisedConcat!2070 (exprs!6357 (h!72044 zl!343))) lt!2414815)))

(declare-fun b!6605699 () Bool)

(assert (=> b!6605699 (= e!3996779 EmptyExpr!16473)))

(declare-fun b!6605700 () Bool)

(declare-fun head!13398 (List!65719) Regex!16473)

(assert (=> b!6605700 (= e!3996780 (= lt!2414815 (head!13398 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6605701 () Bool)

(assert (=> b!6605701 (= e!3996783 (h!72043 (exprs!6357 (h!72044 zl!343))))))

(declare-fun b!6605702 () Bool)

(declare-fun isEmptyExpr!1851 (Regex!16473) Bool)

(assert (=> b!6605702 (= e!3996782 (isEmptyExpr!1851 lt!2414815))))

(declare-fun b!6605703 () Bool)

(assert (=> b!6605703 (= e!3996778 (isEmpty!37870 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6605704 () Bool)

(assert (=> b!6605704 (= e!3996782 e!3996780)))

(declare-fun c!1217155 () Bool)

(declare-fun tail!12483 (List!65719) List!65719)

(assert (=> b!6605704 (= c!1217155 (isEmpty!37870 (tail!12483 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6605705 () Bool)

(assert (=> b!6605705 (= e!3996783 e!3996779)))

(declare-fun c!1217154 () Bool)

(assert (=> b!6605705 (= c!1217154 ((_ is Cons!65595) (exprs!6357 (h!72044 zl!343))))))

(assert (= (and d!2071440 res!2708632) b!6605703))

(assert (= (and d!2071440 c!1217157) b!6605701))

(assert (= (and d!2071440 (not c!1217157)) b!6605705))

(assert (= (and b!6605705 c!1217154) b!6605697))

(assert (= (and b!6605705 (not c!1217154)) b!6605699))

(assert (= (and d!2071440 res!2708633) b!6605698))

(assert (= (and b!6605698 c!1217156) b!6605702))

(assert (= (and b!6605698 (not c!1217156)) b!6605704))

(assert (= (and b!6605704 c!1217155) b!6605700))

(assert (= (and b!6605704 (not c!1217155)) b!6605696))

(declare-fun m!7380996 () Bool)

(assert (=> b!6605696 m!7380996))

(assert (=> b!6605703 m!7380472))

(declare-fun m!7380998 () Bool)

(assert (=> d!2071440 m!7380998))

(declare-fun m!7381000 () Bool)

(assert (=> d!2071440 m!7381000))

(declare-fun m!7381002 () Bool)

(assert (=> b!6605704 m!7381002))

(assert (=> b!6605704 m!7381002))

(declare-fun m!7381004 () Bool)

(assert (=> b!6605704 m!7381004))

(assert (=> b!6605697 m!7380482))

(declare-fun m!7381006 () Bool)

(assert (=> b!6605700 m!7381006))

(declare-fun m!7381008 () Bool)

(assert (=> b!6605702 m!7381008))

(declare-fun m!7381010 () Bool)

(assert (=> b!6605698 m!7381010))

(assert (=> b!6604962 d!2071440))

(declare-fun d!2071448 () Bool)

(declare-fun lt!2414816 () Regex!16473)

(assert (=> d!2071448 (validRegex!8209 lt!2414816)))

(assert (=> d!2071448 (= lt!2414816 (generalisedUnion!2317 (unfocusZipperList!1894 (Cons!65596 lt!2414700 Nil!65596))))))

(assert (=> d!2071448 (= (unfocusZipper!2215 (Cons!65596 lt!2414700 Nil!65596)) lt!2414816)))

(declare-fun bs!1693187 () Bool)

(assert (= bs!1693187 d!2071448))

(declare-fun m!7381012 () Bool)

(assert (=> bs!1693187 m!7381012))

(declare-fun m!7381014 () Bool)

(assert (=> bs!1693187 m!7381014))

(assert (=> bs!1693187 m!7381014))

(declare-fun m!7381016 () Bool)

(assert (=> bs!1693187 m!7381016))

(assert (=> b!6604982 d!2071448))

(declare-fun d!2071450 () Bool)

(declare-fun choose!49327 ((InoxSet Context!11714) Int) (InoxSet Context!11714))

(assert (=> d!2071450 (= (flatMap!1978 lt!2414694 lambda!368398) (choose!49327 lt!2414694 lambda!368398))))

(declare-fun bs!1693188 () Bool)

(assert (= bs!1693188 d!2071450))

(declare-fun m!7381018 () Bool)

(assert (=> bs!1693188 m!7381018))

(assert (=> b!6604983 d!2071450))

(declare-fun b!6605716 () Bool)

(declare-fun e!3996790 () (InoxSet Context!11714))

(declare-fun e!3996792 () (InoxSet Context!11714))

(assert (=> b!6605716 (= e!3996790 e!3996792)))

(declare-fun c!1217163 () Bool)

(assert (=> b!6605716 (= c!1217163 ((_ is Cons!65595) (exprs!6357 lt!2414696)))))

(declare-fun b!6605717 () Bool)

(declare-fun call!577857 () (InoxSet Context!11714))

(assert (=> b!6605717 (= e!3996792 call!577857)))

(declare-fun d!2071452 () Bool)

(declare-fun c!1217162 () Bool)

(declare-fun e!3996791 () Bool)

(assert (=> d!2071452 (= c!1217162 e!3996791)))

(declare-fun res!2708636 () Bool)

(assert (=> d!2071452 (=> (not res!2708636) (not e!3996791))))

(assert (=> d!2071452 (= res!2708636 ((_ is Cons!65595) (exprs!6357 lt!2414696)))))

(assert (=> d!2071452 (= (derivationStepZipperUp!1647 lt!2414696 (h!72042 s!2326)) e!3996790)))

(declare-fun b!6605718 () Bool)

(assert (=> b!6605718 (= e!3996791 (nullable!6466 (h!72043 (exprs!6357 lt!2414696))))))

(declare-fun b!6605719 () Bool)

(assert (=> b!6605719 (= e!3996792 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6605720 () Bool)

(assert (=> b!6605720 (= e!3996790 ((_ map or) call!577857 (derivationStepZipperUp!1647 (Context!11715 (t!379371 (exprs!6357 lt!2414696))) (h!72042 s!2326))))))

(declare-fun bm!577852 () Bool)

(assert (=> bm!577852 (= call!577857 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 lt!2414696)) (Context!11715 (t!379371 (exprs!6357 lt!2414696))) (h!72042 s!2326)))))

(assert (= (and d!2071452 res!2708636) b!6605718))

(assert (= (and d!2071452 c!1217162) b!6605720))

(assert (= (and d!2071452 (not c!1217162)) b!6605716))

(assert (= (and b!6605716 c!1217163) b!6605717))

(assert (= (and b!6605716 (not c!1217163)) b!6605719))

(assert (= (or b!6605720 b!6605717) bm!577852))

(declare-fun m!7381020 () Bool)

(assert (=> b!6605718 m!7381020))

(declare-fun m!7381022 () Bool)

(assert (=> b!6605720 m!7381022))

(declare-fun m!7381024 () Bool)

(assert (=> bm!577852 m!7381024))

(assert (=> b!6604983 d!2071452))

(declare-fun b!6605721 () Bool)

(declare-fun e!3996793 () (InoxSet Context!11714))

(declare-fun e!3996795 () (InoxSet Context!11714))

(assert (=> b!6605721 (= e!3996793 e!3996795)))

(declare-fun c!1217165 () Bool)

(assert (=> b!6605721 (= c!1217165 ((_ is Cons!65595) (exprs!6357 lt!2414715)))))

(declare-fun b!6605722 () Bool)

(declare-fun call!577858 () (InoxSet Context!11714))

(assert (=> b!6605722 (= e!3996795 call!577858)))

(declare-fun d!2071454 () Bool)

(declare-fun c!1217164 () Bool)

(declare-fun e!3996794 () Bool)

(assert (=> d!2071454 (= c!1217164 e!3996794)))

(declare-fun res!2708637 () Bool)

(assert (=> d!2071454 (=> (not res!2708637) (not e!3996794))))

(assert (=> d!2071454 (= res!2708637 ((_ is Cons!65595) (exprs!6357 lt!2414715)))))

(assert (=> d!2071454 (= (derivationStepZipperUp!1647 lt!2414715 (h!72042 s!2326)) e!3996793)))

(declare-fun b!6605723 () Bool)

(assert (=> b!6605723 (= e!3996794 (nullable!6466 (h!72043 (exprs!6357 lt!2414715))))))

(declare-fun b!6605724 () Bool)

(assert (=> b!6605724 (= e!3996795 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6605725 () Bool)

(assert (=> b!6605725 (= e!3996793 ((_ map or) call!577858 (derivationStepZipperUp!1647 (Context!11715 (t!379371 (exprs!6357 lt!2414715))) (h!72042 s!2326))))))

(declare-fun bm!577853 () Bool)

(assert (=> bm!577853 (= call!577858 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 lt!2414715)) (Context!11715 (t!379371 (exprs!6357 lt!2414715))) (h!72042 s!2326)))))

(assert (= (and d!2071454 res!2708637) b!6605723))

(assert (= (and d!2071454 c!1217164) b!6605725))

(assert (= (and d!2071454 (not c!1217164)) b!6605721))

(assert (= (and b!6605721 c!1217165) b!6605722))

(assert (= (and b!6605721 (not c!1217165)) b!6605724))

(assert (= (or b!6605725 b!6605722) bm!577853))

(declare-fun m!7381026 () Bool)

(assert (=> b!6605723 m!7381026))

(declare-fun m!7381028 () Bool)

(assert (=> b!6605725 m!7381028))

(declare-fun m!7381030 () Bool)

(assert (=> bm!577853 m!7381030))

(assert (=> b!6604983 d!2071454))

(declare-fun d!2071456 () Bool)

(declare-fun dynLambda!26120 (Int Context!11714) (InoxSet Context!11714))

(assert (=> d!2071456 (= (flatMap!1978 lt!2414710 lambda!368398) (dynLambda!26120 lambda!368398 lt!2414715))))

(declare-fun lt!2414819 () Unit!159227)

(declare-fun choose!49328 ((InoxSet Context!11714) Context!11714 Int) Unit!159227)

(assert (=> d!2071456 (= lt!2414819 (choose!49328 lt!2414710 lt!2414715 lambda!368398))))

(assert (=> d!2071456 (= lt!2414710 (store ((as const (Array Context!11714 Bool)) false) lt!2414715 true))))

(assert (=> d!2071456 (= (lemmaFlatMapOnSingletonSet!1504 lt!2414710 lt!2414715 lambda!368398) lt!2414819)))

(declare-fun b_lambda!249957 () Bool)

(assert (=> (not b_lambda!249957) (not d!2071456)))

(declare-fun bs!1693189 () Bool)

(assert (= bs!1693189 d!2071456))

(assert (=> bs!1693189 m!7380384))

(declare-fun m!7381032 () Bool)

(assert (=> bs!1693189 m!7381032))

(declare-fun m!7381034 () Bool)

(assert (=> bs!1693189 m!7381034))

(assert (=> bs!1693189 m!7380374))

(assert (=> b!6604983 d!2071456))

(declare-fun d!2071458 () Bool)

(assert (=> d!2071458 (= (flatMap!1978 lt!2414694 lambda!368398) (dynLambda!26120 lambda!368398 lt!2414696))))

(declare-fun lt!2414820 () Unit!159227)

(assert (=> d!2071458 (= lt!2414820 (choose!49328 lt!2414694 lt!2414696 lambda!368398))))

(assert (=> d!2071458 (= lt!2414694 (store ((as const (Array Context!11714 Bool)) false) lt!2414696 true))))

(assert (=> d!2071458 (= (lemmaFlatMapOnSingletonSet!1504 lt!2414694 lt!2414696 lambda!368398) lt!2414820)))

(declare-fun b_lambda!249959 () Bool)

(assert (=> (not b_lambda!249959) (not d!2071458)))

(declare-fun bs!1693190 () Bool)

(assert (= bs!1693190 d!2071458))

(assert (=> bs!1693190 m!7380376))

(declare-fun m!7381036 () Bool)

(assert (=> bs!1693190 m!7381036))

(declare-fun m!7381038 () Bool)

(assert (=> bs!1693190 m!7381038))

(assert (=> bs!1693190 m!7380388))

(assert (=> b!6604983 d!2071458))

(declare-fun d!2071460 () Bool)

(assert (=> d!2071460 (= (flatMap!1978 lt!2414710 lambda!368398) (choose!49327 lt!2414710 lambda!368398))))

(declare-fun bs!1693191 () Bool)

(assert (= bs!1693191 d!2071460))

(declare-fun m!7381040 () Bool)

(assert (=> bs!1693191 m!7381040))

(assert (=> b!6604983 d!2071460))

(declare-fun d!2071462 () Bool)

(declare-fun lt!2414821 () Regex!16473)

(assert (=> d!2071462 (validRegex!8209 lt!2414821)))

(assert (=> d!2071462 (= lt!2414821 (generalisedUnion!2317 (unfocusZipperList!1894 (Cons!65596 lt!2414715 Nil!65596))))))

(assert (=> d!2071462 (= (unfocusZipper!2215 (Cons!65596 lt!2414715 Nil!65596)) lt!2414821)))

(declare-fun bs!1693192 () Bool)

(assert (= bs!1693192 d!2071462))

(declare-fun m!7381042 () Bool)

(assert (=> bs!1693192 m!7381042))

(declare-fun m!7381044 () Bool)

(assert (=> bs!1693192 m!7381044))

(assert (=> bs!1693192 m!7381044))

(declare-fun m!7381046 () Bool)

(assert (=> bs!1693192 m!7381046))

(assert (=> b!6604983 d!2071462))

(declare-fun bs!1693193 () Bool)

(declare-fun d!2071464 () Bool)

(assert (= bs!1693193 (and d!2071464 b!6604977)))

(declare-fun lambda!368471 () Int)

(assert (=> bs!1693193 (= lambda!368471 lambda!368398)))

(assert (=> d!2071464 true))

(assert (=> d!2071464 (= (derivationStepZipper!2439 lt!2414688 (h!72042 s!2326)) (flatMap!1978 lt!2414688 lambda!368471))))

(declare-fun bs!1693194 () Bool)

(assert (= bs!1693194 d!2071464))

(declare-fun m!7381048 () Bool)

(assert (=> bs!1693194 m!7381048))

(assert (=> b!6604963 d!2071464))

(declare-fun d!2071466 () Bool)

(assert (=> d!2071466 (= (flatMap!1978 lt!2414688 lambda!368398) (choose!49327 lt!2414688 lambda!368398))))

(declare-fun bs!1693195 () Bool)

(assert (= bs!1693195 d!2071466))

(declare-fun m!7381050 () Bool)

(assert (=> bs!1693195 m!7381050))

(assert (=> b!6604963 d!2071466))

(declare-fun b!6605728 () Bool)

(declare-fun e!3996796 () (InoxSet Context!11714))

(declare-fun e!3996798 () (InoxSet Context!11714))

(assert (=> b!6605728 (= e!3996796 e!3996798)))

(declare-fun c!1217169 () Bool)

(assert (=> b!6605728 (= c!1217169 ((_ is Cons!65595) (exprs!6357 lt!2414692)))))

(declare-fun b!6605729 () Bool)

(declare-fun call!577859 () (InoxSet Context!11714))

(assert (=> b!6605729 (= e!3996798 call!577859)))

(declare-fun d!2071468 () Bool)

(declare-fun c!1217168 () Bool)

(declare-fun e!3996797 () Bool)

(assert (=> d!2071468 (= c!1217168 e!3996797)))

(declare-fun res!2708638 () Bool)

(assert (=> d!2071468 (=> (not res!2708638) (not e!3996797))))

(assert (=> d!2071468 (= res!2708638 ((_ is Cons!65595) (exprs!6357 lt!2414692)))))

(assert (=> d!2071468 (= (derivationStepZipperUp!1647 lt!2414692 (h!72042 s!2326)) e!3996796)))

(declare-fun b!6605730 () Bool)

(assert (=> b!6605730 (= e!3996797 (nullable!6466 (h!72043 (exprs!6357 lt!2414692))))))

(declare-fun b!6605731 () Bool)

(assert (=> b!6605731 (= e!3996798 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6605732 () Bool)

(assert (=> b!6605732 (= e!3996796 ((_ map or) call!577859 (derivationStepZipperUp!1647 (Context!11715 (t!379371 (exprs!6357 lt!2414692))) (h!72042 s!2326))))))

(declare-fun bm!577854 () Bool)

(assert (=> bm!577854 (= call!577859 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 lt!2414692)) (Context!11715 (t!379371 (exprs!6357 lt!2414692))) (h!72042 s!2326)))))

(assert (= (and d!2071468 res!2708638) b!6605730))

(assert (= (and d!2071468 c!1217168) b!6605732))

(assert (= (and d!2071468 (not c!1217168)) b!6605728))

(assert (= (and b!6605728 c!1217169) b!6605729))

(assert (= (and b!6605728 (not c!1217169)) b!6605731))

(assert (= (or b!6605732 b!6605729) bm!577854))

(declare-fun m!7381052 () Bool)

(assert (=> b!6605730 m!7381052))

(declare-fun m!7381054 () Bool)

(assert (=> b!6605732 m!7381054))

(declare-fun m!7381056 () Bool)

(assert (=> bm!577854 m!7381056))

(assert (=> b!6604963 d!2071468))

(declare-fun d!2071470 () Bool)

(assert (=> d!2071470 (= (flatMap!1978 lt!2414688 lambda!368398) (dynLambda!26120 lambda!368398 lt!2414692))))

(declare-fun lt!2414822 () Unit!159227)

(assert (=> d!2071470 (= lt!2414822 (choose!49328 lt!2414688 lt!2414692 lambda!368398))))

(assert (=> d!2071470 (= lt!2414688 (store ((as const (Array Context!11714 Bool)) false) lt!2414692 true))))

(assert (=> d!2071470 (= (lemmaFlatMapOnSingletonSet!1504 lt!2414688 lt!2414692 lambda!368398) lt!2414822)))

(declare-fun b_lambda!249961 () Bool)

(assert (=> (not b_lambda!249961) (not d!2071470)))

(declare-fun bs!1693196 () Bool)

(assert (= bs!1693196 d!2071470))

(assert (=> bs!1693196 m!7380436))

(declare-fun m!7381058 () Bool)

(assert (=> bs!1693196 m!7381058))

(declare-fun m!7381060 () Bool)

(assert (=> bs!1693196 m!7381060))

(assert (=> bs!1693196 m!7380438))

(assert (=> b!6604963 d!2071470))

(declare-fun e!3996801 () Bool)

(declare-fun d!2071472 () Bool)

(assert (=> d!2071472 (= (matchZipper!2485 ((_ map or) lt!2414685 lt!2414683) (t!379370 s!2326)) e!3996801)))

(declare-fun res!2708641 () Bool)

(assert (=> d!2071472 (=> res!2708641 e!3996801)))

(assert (=> d!2071472 (= res!2708641 (matchZipper!2485 lt!2414685 (t!379370 s!2326)))))

(declare-fun lt!2414825 () Unit!159227)

(declare-fun choose!49329 ((InoxSet Context!11714) (InoxSet Context!11714) List!65718) Unit!159227)

(assert (=> d!2071472 (= lt!2414825 (choose!49329 lt!2414685 lt!2414683 (t!379370 s!2326)))))

(assert (=> d!2071472 (= (lemmaZipperConcatMatchesSameAsBothZippers!1304 lt!2414685 lt!2414683 (t!379370 s!2326)) lt!2414825)))

(declare-fun b!6605735 () Bool)

(assert (=> b!6605735 (= e!3996801 (matchZipper!2485 lt!2414683 (t!379370 s!2326)))))

(assert (= (and d!2071472 (not res!2708641)) b!6605735))

(assert (=> d!2071472 m!7380458))

(assert (=> d!2071472 m!7380456))

(declare-fun m!7381062 () Bool)

(assert (=> d!2071472 m!7381062))

(assert (=> b!6605735 m!7380346))

(assert (=> b!6604949 d!2071472))

(declare-fun d!2071474 () Bool)

(declare-fun c!1217170 () Bool)

(assert (=> d!2071474 (= c!1217170 (isEmpty!37873 (t!379370 s!2326)))))

(declare-fun e!3996802 () Bool)

(assert (=> d!2071474 (= (matchZipper!2485 lt!2414685 (t!379370 s!2326)) e!3996802)))

(declare-fun b!6605736 () Bool)

(assert (=> b!6605736 (= e!3996802 (nullableZipper!2217 lt!2414685))))

(declare-fun b!6605737 () Bool)

(assert (=> b!6605737 (= e!3996802 (matchZipper!2485 (derivationStepZipper!2439 lt!2414685 (head!13397 (t!379370 s!2326))) (tail!12482 (t!379370 s!2326))))))

(assert (= (and d!2071474 c!1217170) b!6605736))

(assert (= (and d!2071474 (not c!1217170)) b!6605737))

(assert (=> d!2071474 m!7380848))

(declare-fun m!7381064 () Bool)

(assert (=> b!6605736 m!7381064))

(assert (=> b!6605737 m!7380852))

(assert (=> b!6605737 m!7380852))

(declare-fun m!7381066 () Bool)

(assert (=> b!6605737 m!7381066))

(assert (=> b!6605737 m!7380856))

(assert (=> b!6605737 m!7381066))

(assert (=> b!6605737 m!7380856))

(declare-fun m!7381068 () Bool)

(assert (=> b!6605737 m!7381068))

(assert (=> b!6604949 d!2071474))

(declare-fun d!2071476 () Bool)

(declare-fun c!1217171 () Bool)

(assert (=> d!2071476 (= c!1217171 (isEmpty!37873 (t!379370 s!2326)))))

(declare-fun e!3996803 () Bool)

(assert (=> d!2071476 (= (matchZipper!2485 ((_ map or) lt!2414685 lt!2414683) (t!379370 s!2326)) e!3996803)))

(declare-fun b!6605738 () Bool)

(assert (=> b!6605738 (= e!3996803 (nullableZipper!2217 ((_ map or) lt!2414685 lt!2414683)))))

(declare-fun b!6605739 () Bool)

(assert (=> b!6605739 (= e!3996803 (matchZipper!2485 (derivationStepZipper!2439 ((_ map or) lt!2414685 lt!2414683) (head!13397 (t!379370 s!2326))) (tail!12482 (t!379370 s!2326))))))

(assert (= (and d!2071476 c!1217171) b!6605738))

(assert (= (and d!2071476 (not c!1217171)) b!6605739))

(assert (=> d!2071476 m!7380848))

(declare-fun m!7381070 () Bool)

(assert (=> b!6605738 m!7381070))

(assert (=> b!6605739 m!7380852))

(assert (=> b!6605739 m!7380852))

(declare-fun m!7381072 () Bool)

(assert (=> b!6605739 m!7381072))

(assert (=> b!6605739 m!7380856))

(assert (=> b!6605739 m!7381072))

(assert (=> b!6605739 m!7380856))

(declare-fun m!7381074 () Bool)

(assert (=> b!6605739 m!7381074))

(assert (=> b!6604949 d!2071476))

(declare-fun d!2071478 () Bool)

(declare-fun lt!2414826 () Regex!16473)

(assert (=> d!2071478 (validRegex!8209 lt!2414826)))

(assert (=> d!2071478 (= lt!2414826 (generalisedUnion!2317 (unfocusZipperList!1894 (Cons!65596 lt!2414696 Nil!65596))))))

(assert (=> d!2071478 (= (unfocusZipper!2215 (Cons!65596 lt!2414696 Nil!65596)) lt!2414826)))

(declare-fun bs!1693197 () Bool)

(assert (= bs!1693197 d!2071478))

(declare-fun m!7381076 () Bool)

(assert (=> bs!1693197 m!7381076))

(declare-fun m!7381078 () Bool)

(assert (=> bs!1693197 m!7381078))

(assert (=> bs!1693197 m!7381078))

(declare-fun m!7381080 () Bool)

(assert (=> bs!1693197 m!7381080))

(assert (=> b!6604990 d!2071478))

(declare-fun d!2071480 () Bool)

(declare-fun e!3996806 () Bool)

(assert (=> d!2071480 e!3996806))

(declare-fun res!2708644 () Bool)

(assert (=> d!2071480 (=> (not res!2708644) (not e!3996806))))

(declare-fun lt!2414829 () List!65720)

(declare-fun noDuplicate!2278 (List!65720) Bool)

(assert (=> d!2071480 (= res!2708644 (noDuplicate!2278 lt!2414829))))

(declare-fun choose!49331 ((InoxSet Context!11714)) List!65720)

(assert (=> d!2071480 (= lt!2414829 (choose!49331 z!1189))))

(assert (=> d!2071480 (= (toList!10257 z!1189) lt!2414829)))

(declare-fun b!6605742 () Bool)

(declare-fun content!12650 (List!65720) (InoxSet Context!11714))

(assert (=> b!6605742 (= e!3996806 (= (content!12650 lt!2414829) z!1189))))

(assert (= (and d!2071480 res!2708644) b!6605742))

(declare-fun m!7381082 () Bool)

(assert (=> d!2071480 m!7381082))

(declare-fun m!7381084 () Bool)

(assert (=> d!2071480 m!7381084))

(declare-fun m!7381086 () Bool)

(assert (=> b!6605742 m!7381086))

(assert (=> b!6604950 d!2071480))

(declare-fun bs!1693198 () Bool)

(declare-fun d!2071482 () Bool)

(assert (= bs!1693198 (and d!2071482 d!2071440)))

(declare-fun lambda!368474 () Int)

(assert (=> bs!1693198 (= lambda!368474 lambda!368468)))

(declare-fun b!6605763 () Bool)

(declare-fun e!3996822 () Regex!16473)

(declare-fun e!3996824 () Regex!16473)

(assert (=> b!6605763 (= e!3996822 e!3996824)))

(declare-fun c!1217180 () Bool)

(assert (=> b!6605763 (= c!1217180 ((_ is Cons!65595) (unfocusZipperList!1894 zl!343)))))

(declare-fun b!6605764 () Bool)

(declare-fun e!3996820 () Bool)

(declare-fun lt!2414832 () Regex!16473)

(assert (=> b!6605764 (= e!3996820 (= lt!2414832 (head!13398 (unfocusZipperList!1894 zl!343))))))

(declare-fun e!3996823 () Bool)

(assert (=> d!2071482 e!3996823))

(declare-fun res!2708649 () Bool)

(assert (=> d!2071482 (=> (not res!2708649) (not e!3996823))))

(assert (=> d!2071482 (= res!2708649 (validRegex!8209 lt!2414832))))

(assert (=> d!2071482 (= lt!2414832 e!3996822)))

(declare-fun c!1217182 () Bool)

(declare-fun e!3996819 () Bool)

(assert (=> d!2071482 (= c!1217182 e!3996819)))

(declare-fun res!2708650 () Bool)

(assert (=> d!2071482 (=> (not res!2708650) (not e!3996819))))

(assert (=> d!2071482 (= res!2708650 ((_ is Cons!65595) (unfocusZipperList!1894 zl!343)))))

(assert (=> d!2071482 (forall!15669 (unfocusZipperList!1894 zl!343) lambda!368474)))

(assert (=> d!2071482 (= (generalisedUnion!2317 (unfocusZipperList!1894 zl!343)) lt!2414832)))

(declare-fun b!6605765 () Bool)

(declare-fun e!3996821 () Bool)

(declare-fun isEmptyLang!1860 (Regex!16473) Bool)

(assert (=> b!6605765 (= e!3996821 (isEmptyLang!1860 lt!2414832))))

(declare-fun b!6605766 () Bool)

(assert (=> b!6605766 (= e!3996819 (isEmpty!37870 (t!379371 (unfocusZipperList!1894 zl!343))))))

(declare-fun b!6605767 () Bool)

(declare-fun isUnion!1290 (Regex!16473) Bool)

(assert (=> b!6605767 (= e!3996820 (isUnion!1290 lt!2414832))))

(declare-fun b!6605768 () Bool)

(assert (=> b!6605768 (= e!3996824 EmptyLang!16473)))

(declare-fun b!6605769 () Bool)

(assert (=> b!6605769 (= e!3996822 (h!72043 (unfocusZipperList!1894 zl!343)))))

(declare-fun b!6605770 () Bool)

(assert (=> b!6605770 (= e!3996821 e!3996820)))

(declare-fun c!1217183 () Bool)

(assert (=> b!6605770 (= c!1217183 (isEmpty!37870 (tail!12483 (unfocusZipperList!1894 zl!343))))))

(declare-fun b!6605771 () Bool)

(assert (=> b!6605771 (= e!3996823 e!3996821)))

(declare-fun c!1217181 () Bool)

(assert (=> b!6605771 (= c!1217181 (isEmpty!37870 (unfocusZipperList!1894 zl!343)))))

(declare-fun b!6605772 () Bool)

(assert (=> b!6605772 (= e!3996824 (Union!16473 (h!72043 (unfocusZipperList!1894 zl!343)) (generalisedUnion!2317 (t!379371 (unfocusZipperList!1894 zl!343)))))))

(assert (= (and d!2071482 res!2708650) b!6605766))

(assert (= (and d!2071482 c!1217182) b!6605769))

(assert (= (and d!2071482 (not c!1217182)) b!6605763))

(assert (= (and b!6605763 c!1217180) b!6605772))

(assert (= (and b!6605763 (not c!1217180)) b!6605768))

(assert (= (and d!2071482 res!2708649) b!6605771))

(assert (= (and b!6605771 c!1217181) b!6605765))

(assert (= (and b!6605771 (not c!1217181)) b!6605770))

(assert (= (and b!6605770 c!1217183) b!6605764))

(assert (= (and b!6605770 (not c!1217183)) b!6605767))

(declare-fun m!7381088 () Bool)

(assert (=> b!6605766 m!7381088))

(assert (=> b!6605764 m!7380406))

(declare-fun m!7381090 () Bool)

(assert (=> b!6605764 m!7381090))

(declare-fun m!7381092 () Bool)

(assert (=> d!2071482 m!7381092))

(assert (=> d!2071482 m!7380406))

(declare-fun m!7381094 () Bool)

(assert (=> d!2071482 m!7381094))

(assert (=> b!6605771 m!7380406))

(declare-fun m!7381096 () Bool)

(assert (=> b!6605771 m!7381096))

(declare-fun m!7381098 () Bool)

(assert (=> b!6605767 m!7381098))

(assert (=> b!6605770 m!7380406))

(declare-fun m!7381100 () Bool)

(assert (=> b!6605770 m!7381100))

(assert (=> b!6605770 m!7381100))

(declare-fun m!7381102 () Bool)

(assert (=> b!6605770 m!7381102))

(declare-fun m!7381104 () Bool)

(assert (=> b!6605772 m!7381104))

(declare-fun m!7381106 () Bool)

(assert (=> b!6605765 m!7381106))

(assert (=> b!6604951 d!2071482))

(declare-fun bs!1693199 () Bool)

(declare-fun d!2071484 () Bool)

(assert (= bs!1693199 (and d!2071484 d!2071440)))

(declare-fun lambda!368477 () Int)

(assert (=> bs!1693199 (= lambda!368477 lambda!368468)))

(declare-fun bs!1693200 () Bool)

(assert (= bs!1693200 (and d!2071484 d!2071482)))

(assert (=> bs!1693200 (= lambda!368477 lambda!368474)))

(declare-fun lt!2414835 () List!65719)

(assert (=> d!2071484 (forall!15669 lt!2414835 lambda!368477)))

(declare-fun e!3996827 () List!65719)

(assert (=> d!2071484 (= lt!2414835 e!3996827)))

(declare-fun c!1217186 () Bool)

(assert (=> d!2071484 (= c!1217186 ((_ is Cons!65596) zl!343))))

(assert (=> d!2071484 (= (unfocusZipperList!1894 zl!343) lt!2414835)))

(declare-fun b!6605777 () Bool)

(assert (=> b!6605777 (= e!3996827 (Cons!65595 (generalisedConcat!2070 (exprs!6357 (h!72044 zl!343))) (unfocusZipperList!1894 (t!379372 zl!343))))))

(declare-fun b!6605778 () Bool)

(assert (=> b!6605778 (= e!3996827 Nil!65595)))

(assert (= (and d!2071484 c!1217186) b!6605777))

(assert (= (and d!2071484 (not c!1217186)) b!6605778))

(declare-fun m!7381108 () Bool)

(assert (=> d!2071484 m!7381108))

(assert (=> b!6605777 m!7380444))

(declare-fun m!7381110 () Bool)

(assert (=> b!6605777 m!7381110))

(assert (=> b!6604951 d!2071484))

(declare-fun bm!577861 () Bool)

(declare-fun call!577868 () Bool)

(declare-fun call!577866 () Bool)

(assert (=> bm!577861 (= call!577868 call!577866)))

(declare-fun d!2071486 () Bool)

(declare-fun res!2708664 () Bool)

(declare-fun e!3996847 () Bool)

(assert (=> d!2071486 (=> res!2708664 e!3996847)))

(assert (=> d!2071486 (= res!2708664 ((_ is ElementMatch!16473) (regTwo!33458 r!7292)))))

(assert (=> d!2071486 (= (validRegex!8209 (regTwo!33458 r!7292)) e!3996847)))

(declare-fun b!6605797 () Bool)

(declare-fun e!3996842 () Bool)

(assert (=> b!6605797 (= e!3996847 e!3996842)))

(declare-fun c!1217192 () Bool)

(assert (=> b!6605797 (= c!1217192 ((_ is Star!16473) (regTwo!33458 r!7292)))))

(declare-fun b!6605798 () Bool)

(declare-fun e!3996843 () Bool)

(assert (=> b!6605798 (= e!3996842 e!3996843)))

(declare-fun c!1217191 () Bool)

(assert (=> b!6605798 (= c!1217191 ((_ is Union!16473) (regTwo!33458 r!7292)))))

(declare-fun bm!577862 () Bool)

(declare-fun call!577867 () Bool)

(assert (=> bm!577862 (= call!577867 (validRegex!8209 (ite c!1217191 (regTwo!33459 (regTwo!33458 r!7292)) (regTwo!33458 (regTwo!33458 r!7292)))))))

(declare-fun b!6605799 () Bool)

(declare-fun e!3996846 () Bool)

(assert (=> b!6605799 (= e!3996846 call!577867)))

(declare-fun bm!577863 () Bool)

(assert (=> bm!577863 (= call!577866 (validRegex!8209 (ite c!1217192 (reg!16802 (regTwo!33458 r!7292)) (ite c!1217191 (regOne!33459 (regTwo!33458 r!7292)) (regOne!33458 (regTwo!33458 r!7292))))))))

(declare-fun b!6605800 () Bool)

(declare-fun e!3996848 () Bool)

(assert (=> b!6605800 (= e!3996848 e!3996846)))

(declare-fun res!2708663 () Bool)

(assert (=> b!6605800 (=> (not res!2708663) (not e!3996846))))

(assert (=> b!6605800 (= res!2708663 call!577868)))

(declare-fun b!6605801 () Bool)

(declare-fun e!3996845 () Bool)

(assert (=> b!6605801 (= e!3996845 call!577866)))

(declare-fun b!6605802 () Bool)

(declare-fun res!2708665 () Bool)

(declare-fun e!3996844 () Bool)

(assert (=> b!6605802 (=> (not res!2708665) (not e!3996844))))

(assert (=> b!6605802 (= res!2708665 call!577868)))

(assert (=> b!6605802 (= e!3996843 e!3996844)))

(declare-fun b!6605803 () Bool)

(assert (=> b!6605803 (= e!3996844 call!577867)))

(declare-fun b!6605804 () Bool)

(assert (=> b!6605804 (= e!3996842 e!3996845)))

(declare-fun res!2708662 () Bool)

(assert (=> b!6605804 (= res!2708662 (not (nullable!6466 (reg!16802 (regTwo!33458 r!7292)))))))

(assert (=> b!6605804 (=> (not res!2708662) (not e!3996845))))

(declare-fun b!6605805 () Bool)

(declare-fun res!2708661 () Bool)

(assert (=> b!6605805 (=> res!2708661 e!3996848)))

(assert (=> b!6605805 (= res!2708661 (not ((_ is Concat!25318) (regTwo!33458 r!7292))))))

(assert (=> b!6605805 (= e!3996843 e!3996848)))

(assert (= (and d!2071486 (not res!2708664)) b!6605797))

(assert (= (and b!6605797 c!1217192) b!6605804))

(assert (= (and b!6605797 (not c!1217192)) b!6605798))

(assert (= (and b!6605804 res!2708662) b!6605801))

(assert (= (and b!6605798 c!1217191) b!6605802))

(assert (= (and b!6605798 (not c!1217191)) b!6605805))

(assert (= (and b!6605802 res!2708665) b!6605803))

(assert (= (and b!6605805 (not res!2708661)) b!6605800))

(assert (= (and b!6605800 res!2708663) b!6605799))

(assert (= (or b!6605803 b!6605799) bm!577862))

(assert (= (or b!6605802 b!6605800) bm!577861))

(assert (= (or b!6605801 bm!577861) bm!577863))

(declare-fun m!7381112 () Bool)

(assert (=> bm!577862 m!7381112))

(declare-fun m!7381114 () Bool)

(assert (=> bm!577863 m!7381114))

(declare-fun m!7381116 () Bool)

(assert (=> b!6605804 m!7381116))

(assert (=> b!6604946 d!2071486))

(declare-fun bs!1693201 () Bool)

(declare-fun b!6605812 () Bool)

(assert (= bs!1693201 (and b!6605812 b!6604955)))

(declare-fun lambda!368478 () Int)

(assert (=> bs!1693201 (not (= lambda!368478 lambda!368399))))

(assert (=> bs!1693201 (= (and (= s!2326 Nil!65594) (= (reg!16802 r!7292) (reg!16802 (regOne!33458 r!7292))) (= r!7292 lt!2414680)) (= lambda!368478 lambda!368401))))

(declare-fun bs!1693202 () Bool)

(assert (= bs!1693202 (and b!6605812 b!6604972)))

(assert (=> bs!1693202 (not (= lambda!368478 lambda!368396))))

(declare-fun bs!1693203 () Bool)

(assert (= bs!1693203 (and b!6605812 b!6605617)))

(assert (=> bs!1693203 (= (and (= (reg!16802 r!7292) (reg!16802 lt!2414695)) (= r!7292 lt!2414695)) (= lambda!368478 lambda!368463))))

(assert (=> bs!1693201 (not (= lambda!368478 lambda!368400))))

(declare-fun bs!1693204 () Bool)

(assert (= bs!1693204 (and b!6605812 b!6605613)))

(assert (=> bs!1693204 (not (= lambda!368478 lambda!368465))))

(assert (=> bs!1693202 (not (= lambda!368478 lambda!368397))))

(assert (=> b!6605812 true))

(assert (=> b!6605812 true))

(declare-fun bs!1693205 () Bool)

(declare-fun b!6605808 () Bool)

(assert (= bs!1693205 (and b!6605808 b!6604955)))

(declare-fun lambda!368479 () Int)

(assert (=> bs!1693205 (not (= lambda!368479 lambda!368399))))

(assert (=> bs!1693205 (not (= lambda!368479 lambda!368401))))

(declare-fun bs!1693206 () Bool)

(assert (= bs!1693206 (and b!6605808 b!6604972)))

(assert (=> bs!1693206 (not (= lambda!368479 lambda!368396))))

(declare-fun bs!1693207 () Bool)

(assert (= bs!1693207 (and b!6605808 b!6605617)))

(assert (=> bs!1693207 (not (= lambda!368479 lambda!368463))))

(declare-fun bs!1693208 () Bool)

(assert (= bs!1693208 (and b!6605808 b!6605812)))

(assert (=> bs!1693208 (not (= lambda!368479 lambda!368478))))

(assert (=> bs!1693205 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368479 lambda!368400))))

(declare-fun bs!1693209 () Bool)

(assert (= bs!1693209 (and b!6605808 b!6605613)))

(assert (=> bs!1693209 (= (and (= (regOne!33458 r!7292) (regOne!33458 lt!2414695)) (= (regTwo!33458 r!7292) (regTwo!33458 lt!2414695))) (= lambda!368479 lambda!368465))))

(assert (=> bs!1693206 (= lambda!368479 lambda!368397)))

(assert (=> b!6605808 true))

(assert (=> b!6605808 true))

(declare-fun b!6605806 () Bool)

(declare-fun e!3996852 () Bool)

(declare-fun e!3996855 () Bool)

(assert (=> b!6605806 (= e!3996852 e!3996855)))

(declare-fun c!1217194 () Bool)

(assert (=> b!6605806 (= c!1217194 ((_ is Star!16473) r!7292))))

(declare-fun d!2071488 () Bool)

(declare-fun c!1217196 () Bool)

(assert (=> d!2071488 (= c!1217196 ((_ is EmptyExpr!16473) r!7292))))

(declare-fun e!3996849 () Bool)

(assert (=> d!2071488 (= (matchRSpec!3574 r!7292 s!2326) e!3996849)))

(declare-fun b!6605807 () Bool)

(declare-fun e!3996850 () Bool)

(assert (=> b!6605807 (= e!3996849 e!3996850)))

(declare-fun res!2708667 () Bool)

(assert (=> b!6605807 (= res!2708667 (not ((_ is EmptyLang!16473) r!7292)))))

(assert (=> b!6605807 (=> (not res!2708667) (not e!3996850))))

(declare-fun bm!577864 () Bool)

(declare-fun call!577869 () Bool)

(assert (=> bm!577864 (= call!577869 (isEmpty!37873 s!2326))))

(declare-fun call!577870 () Bool)

(assert (=> b!6605808 (= e!3996855 call!577870)))

(declare-fun b!6605809 () Bool)

(declare-fun c!1217193 () Bool)

(assert (=> b!6605809 (= c!1217193 ((_ is Union!16473) r!7292))))

(declare-fun e!3996853 () Bool)

(assert (=> b!6605809 (= e!3996853 e!3996852)))

(declare-fun b!6605810 () Bool)

(assert (=> b!6605810 (= e!3996853 (= s!2326 (Cons!65594 (c!1216946 r!7292) Nil!65594)))))

(declare-fun b!6605811 () Bool)

(declare-fun e!3996851 () Bool)

(assert (=> b!6605811 (= e!3996851 (matchRSpec!3574 (regTwo!33459 r!7292) s!2326))))

(declare-fun e!3996854 () Bool)

(assert (=> b!6605812 (= e!3996854 call!577870)))

(declare-fun b!6605813 () Bool)

(assert (=> b!6605813 (= e!3996852 e!3996851)))

(declare-fun res!2708666 () Bool)

(assert (=> b!6605813 (= res!2708666 (matchRSpec!3574 (regOne!33459 r!7292) s!2326))))

(assert (=> b!6605813 (=> res!2708666 e!3996851)))

(declare-fun b!6605814 () Bool)

(assert (=> b!6605814 (= e!3996849 call!577869)))

(declare-fun b!6605815 () Bool)

(declare-fun c!1217195 () Bool)

(assert (=> b!6605815 (= c!1217195 ((_ is ElementMatch!16473) r!7292))))

(assert (=> b!6605815 (= e!3996850 e!3996853)))

(declare-fun b!6605816 () Bool)

(declare-fun res!2708668 () Bool)

(assert (=> b!6605816 (=> res!2708668 e!3996854)))

(assert (=> b!6605816 (= res!2708668 call!577869)))

(assert (=> b!6605816 (= e!3996855 e!3996854)))

(declare-fun bm!577865 () Bool)

(assert (=> bm!577865 (= call!577870 (Exists!3543 (ite c!1217194 lambda!368478 lambda!368479)))))

(assert (= (and d!2071488 c!1217196) b!6605814))

(assert (= (and d!2071488 (not c!1217196)) b!6605807))

(assert (= (and b!6605807 res!2708667) b!6605815))

(assert (= (and b!6605815 c!1217195) b!6605810))

(assert (= (and b!6605815 (not c!1217195)) b!6605809))

(assert (= (and b!6605809 c!1217193) b!6605813))

(assert (= (and b!6605809 (not c!1217193)) b!6605806))

(assert (= (and b!6605813 (not res!2708666)) b!6605811))

(assert (= (and b!6605806 c!1217194) b!6605816))

(assert (= (and b!6605806 (not c!1217194)) b!6605808))

(assert (= (and b!6605816 (not res!2708668)) b!6605812))

(assert (= (or b!6605812 b!6605808) bm!577865))

(assert (= (or b!6605814 b!6605816) bm!577864))

(assert (=> bm!577864 m!7380904))

(declare-fun m!7381118 () Bool)

(assert (=> b!6605811 m!7381118))

(declare-fun m!7381120 () Bool)

(assert (=> b!6605813 m!7381120))

(declare-fun m!7381122 () Bool)

(assert (=> bm!577865 m!7381122))

(assert (=> b!6604947 d!2071488))

(declare-fun b!6605817 () Bool)

(declare-fun res!2708671 () Bool)

(declare-fun e!3996857 () Bool)

(assert (=> b!6605817 (=> (not res!2708671) (not e!3996857))))

(declare-fun call!577871 () Bool)

(assert (=> b!6605817 (= res!2708671 (not call!577871))))

(declare-fun b!6605818 () Bool)

(declare-fun e!3996856 () Bool)

(declare-fun e!3996859 () Bool)

(assert (=> b!6605818 (= e!3996856 e!3996859)))

(declare-fun res!2708676 () Bool)

(assert (=> b!6605818 (=> (not res!2708676) (not e!3996859))))

(declare-fun lt!2414836 () Bool)

(assert (=> b!6605818 (= res!2708676 (not lt!2414836))))

(declare-fun b!6605819 () Bool)

(assert (=> b!6605819 (= e!3996857 (= (head!13397 s!2326) (c!1216946 r!7292)))))

(declare-fun b!6605820 () Bool)

(declare-fun res!2708670 () Bool)

(assert (=> b!6605820 (=> (not res!2708670) (not e!3996857))))

(assert (=> b!6605820 (= res!2708670 (isEmpty!37873 (tail!12482 s!2326)))))

(declare-fun b!6605821 () Bool)

(declare-fun e!3996858 () Bool)

(assert (=> b!6605821 (= e!3996858 (= lt!2414836 call!577871))))

(declare-fun d!2071490 () Bool)

(assert (=> d!2071490 e!3996858))

(declare-fun c!1217199 () Bool)

(assert (=> d!2071490 (= c!1217199 ((_ is EmptyExpr!16473) r!7292))))

(declare-fun e!3996862 () Bool)

(assert (=> d!2071490 (= lt!2414836 e!3996862)))

(declare-fun c!1217197 () Bool)

(assert (=> d!2071490 (= c!1217197 (isEmpty!37873 s!2326))))

(assert (=> d!2071490 (validRegex!8209 r!7292)))

(assert (=> d!2071490 (= (matchR!8656 r!7292 s!2326) lt!2414836)))

(declare-fun bm!577866 () Bool)

(assert (=> bm!577866 (= call!577871 (isEmpty!37873 s!2326))))

(declare-fun b!6605822 () Bool)

(declare-fun e!3996861 () Bool)

(assert (=> b!6605822 (= e!3996861 (not (= (head!13397 s!2326) (c!1216946 r!7292))))))

(declare-fun b!6605823 () Bool)

(assert (=> b!6605823 (= e!3996862 (nullable!6466 r!7292))))

(declare-fun b!6605824 () Bool)

(declare-fun res!2708672 () Bool)

(assert (=> b!6605824 (=> res!2708672 e!3996856)))

(assert (=> b!6605824 (= res!2708672 (not ((_ is ElementMatch!16473) r!7292)))))

(declare-fun e!3996860 () Bool)

(assert (=> b!6605824 (= e!3996860 e!3996856)))

(declare-fun b!6605825 () Bool)

(assert (=> b!6605825 (= e!3996860 (not lt!2414836))))

(declare-fun b!6605826 () Bool)

(assert (=> b!6605826 (= e!3996862 (matchR!8656 (derivativeStep!5157 r!7292 (head!13397 s!2326)) (tail!12482 s!2326)))))

(declare-fun b!6605827 () Bool)

(declare-fun res!2708675 () Bool)

(assert (=> b!6605827 (=> res!2708675 e!3996861)))

(assert (=> b!6605827 (= res!2708675 (not (isEmpty!37873 (tail!12482 s!2326))))))

(declare-fun b!6605828 () Bool)

(assert (=> b!6605828 (= e!3996858 e!3996860)))

(declare-fun c!1217198 () Bool)

(assert (=> b!6605828 (= c!1217198 ((_ is EmptyLang!16473) r!7292))))

(declare-fun b!6605829 () Bool)

(declare-fun res!2708669 () Bool)

(assert (=> b!6605829 (=> res!2708669 e!3996856)))

(assert (=> b!6605829 (= res!2708669 e!3996857)))

(declare-fun res!2708674 () Bool)

(assert (=> b!6605829 (=> (not res!2708674) (not e!3996857))))

(assert (=> b!6605829 (= res!2708674 lt!2414836)))

(declare-fun b!6605830 () Bool)

(assert (=> b!6605830 (= e!3996859 e!3996861)))

(declare-fun res!2708673 () Bool)

(assert (=> b!6605830 (=> res!2708673 e!3996861)))

(assert (=> b!6605830 (= res!2708673 call!577871)))

(assert (= (and d!2071490 c!1217197) b!6605823))

(assert (= (and d!2071490 (not c!1217197)) b!6605826))

(assert (= (and d!2071490 c!1217199) b!6605821))

(assert (= (and d!2071490 (not c!1217199)) b!6605828))

(assert (= (and b!6605828 c!1217198) b!6605825))

(assert (= (and b!6605828 (not c!1217198)) b!6605824))

(assert (= (and b!6605824 (not res!2708672)) b!6605829))

(assert (= (and b!6605829 res!2708674) b!6605817))

(assert (= (and b!6605817 res!2708671) b!6605820))

(assert (= (and b!6605820 res!2708670) b!6605819))

(assert (= (and b!6605829 (not res!2708669)) b!6605818))

(assert (= (and b!6605818 res!2708676) b!6605830))

(assert (= (and b!6605830 (not res!2708673)) b!6605827))

(assert (= (and b!6605827 (not res!2708675)) b!6605822))

(assert (= (or b!6605821 b!6605817 b!6605830) bm!577866))

(assert (=> b!6605819 m!7380896))

(declare-fun m!7381124 () Bool)

(assert (=> b!6605823 m!7381124))

(assert (=> b!6605827 m!7380900))

(assert (=> b!6605827 m!7380900))

(assert (=> b!6605827 m!7380902))

(assert (=> bm!577866 m!7380904))

(assert (=> b!6605822 m!7380896))

(assert (=> b!6605826 m!7380896))

(assert (=> b!6605826 m!7380896))

(declare-fun m!7381126 () Bool)

(assert (=> b!6605826 m!7381126))

(assert (=> b!6605826 m!7380900))

(assert (=> b!6605826 m!7381126))

(assert (=> b!6605826 m!7380900))

(declare-fun m!7381128 () Bool)

(assert (=> b!6605826 m!7381128))

(assert (=> b!6605820 m!7380900))

(assert (=> b!6605820 m!7380900))

(assert (=> b!6605820 m!7380902))

(assert (=> d!2071490 m!7380904))

(assert (=> d!2071490 m!7380410))

(assert (=> b!6604947 d!2071490))

(declare-fun d!2071492 () Bool)

(assert (=> d!2071492 (= (matchR!8656 r!7292 s!2326) (matchRSpec!3574 r!7292 s!2326))))

(declare-fun lt!2414837 () Unit!159227)

(assert (=> d!2071492 (= lt!2414837 (choose!49326 r!7292 s!2326))))

(assert (=> d!2071492 (validRegex!8209 r!7292)))

(assert (=> d!2071492 (= (mainMatchTheorem!3574 r!7292 s!2326) lt!2414837)))

(declare-fun bs!1693210 () Bool)

(assert (= bs!1693210 d!2071492))

(assert (=> bs!1693210 m!7380450))

(assert (=> bs!1693210 m!7380448))

(declare-fun m!7381130 () Bool)

(assert (=> bs!1693210 m!7381130))

(assert (=> bs!1693210 m!7380410))

(assert (=> b!6604947 d!2071492))

(declare-fun b!6605865 () Bool)

(declare-fun c!1217216 () Bool)

(assert (=> b!6605865 (= c!1217216 ((_ is Union!16473) r!7292))))

(declare-fun e!3996888 () Int)

(declare-fun e!3996890 () Int)

(assert (=> b!6605865 (= e!3996888 e!3996890)))

(declare-fun b!6605866 () Bool)

(declare-fun e!3996887 () Int)

(assert (=> b!6605866 (= e!3996887 1)))

(declare-fun c!1217214 () Bool)

(declare-fun call!577888 () Int)

(declare-fun bm!577881 () Bool)

(assert (=> bm!577881 (= call!577888 (regexDepth!370 (ite c!1217214 (reg!16802 r!7292) (ite c!1217216 (regTwo!33459 r!7292) (regOne!33458 r!7292)))))))

(declare-fun b!6605867 () Bool)

(declare-fun e!3996892 () Bool)

(declare-fun e!3996884 () Bool)

(assert (=> b!6605867 (= e!3996892 e!3996884)))

(declare-fun c!1217217 () Bool)

(assert (=> b!6605867 (= c!1217217 ((_ is Concat!25318) r!7292))))

(declare-fun b!6605868 () Bool)

(assert (=> b!6605868 (= e!3996888 (+ 1 call!577888))))

(declare-fun b!6605869 () Bool)

(declare-fun e!3996891 () Int)

(declare-fun call!577892 () Int)

(assert (=> b!6605869 (= e!3996891 (+ 1 call!577892))))

(declare-fun bm!577883 () Bool)

(declare-fun call!577891 () Int)

(declare-fun c!1217215 () Bool)

(assert (=> bm!577883 (= call!577891 (regexDepth!370 (ite c!1217215 (regOne!33459 r!7292) (regTwo!33458 r!7292))))))

(declare-fun b!6605870 () Bool)

(assert (=> b!6605870 (= e!3996890 e!3996891)))

(declare-fun c!1217218 () Bool)

(assert (=> b!6605870 (= c!1217218 ((_ is Concat!25318) r!7292))))

(declare-fun b!6605871 () Bool)

(declare-fun e!3996889 () Bool)

(declare-fun lt!2414840 () Int)

(assert (=> b!6605871 (= e!3996889 (> lt!2414840 call!577891))))

(declare-fun bm!577884 () Bool)

(declare-fun call!577887 () Int)

(assert (=> bm!577884 (= call!577887 call!577888)))

(declare-fun bm!577885 () Bool)

(declare-fun call!577890 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!577885 (= call!577892 (maxBigInt!0 (ite c!1217216 call!577890 call!577887) (ite c!1217216 call!577887 call!577890)))))

(declare-fun call!577886 () Int)

(declare-fun bm!577886 () Bool)

(assert (=> bm!577886 (= call!577886 (regexDepth!370 (ite c!1217215 (regTwo!33459 r!7292) (ite c!1217217 (regOne!33458 r!7292) (reg!16802 r!7292)))))))

(declare-fun b!6605872 () Bool)

(declare-fun c!1217220 () Bool)

(assert (=> b!6605872 (= c!1217220 ((_ is Star!16473) r!7292))))

(declare-fun e!3996886 () Bool)

(assert (=> b!6605872 (= e!3996884 e!3996886)))

(declare-fun b!6605873 () Bool)

(declare-fun call!577889 () Int)

(assert (=> b!6605873 (= e!3996886 (> lt!2414840 call!577889))))

(declare-fun bm!577882 () Bool)

(assert (=> bm!577882 (= call!577890 (regexDepth!370 (ite c!1217216 (regOne!33459 r!7292) (regTwo!33458 r!7292))))))

(declare-fun d!2071494 () Bool)

(declare-fun e!3996885 () Bool)

(assert (=> d!2071494 e!3996885))

(declare-fun res!2708685 () Bool)

(assert (=> d!2071494 (=> (not res!2708685) (not e!3996885))))

(assert (=> d!2071494 (= res!2708685 (> lt!2414840 0))))

(assert (=> d!2071494 (= lt!2414840 e!3996887)))

(declare-fun c!1217219 () Bool)

(assert (=> d!2071494 (= c!1217219 ((_ is ElementMatch!16473) r!7292))))

(assert (=> d!2071494 (= (regexDepth!370 r!7292) lt!2414840)))

(declare-fun b!6605874 () Bool)

(assert (=> b!6605874 (= e!3996887 e!3996888)))

(assert (=> b!6605874 (= c!1217214 ((_ is Star!16473) r!7292))))

(declare-fun b!6605875 () Bool)

(assert (=> b!6605875 (= e!3996890 (+ 1 call!577892))))

(declare-fun b!6605876 () Bool)

(assert (=> b!6605876 (= e!3996885 e!3996892)))

(assert (=> b!6605876 (= c!1217215 ((_ is Union!16473) r!7292))))

(declare-fun b!6605877 () Bool)

(assert (=> b!6605877 (= e!3996886 (= lt!2414840 1))))

(declare-fun b!6605878 () Bool)

(declare-fun e!3996883 () Bool)

(assert (=> b!6605878 (= e!3996892 e!3996883)))

(declare-fun res!2708683 () Bool)

(assert (=> b!6605878 (= res!2708683 (> lt!2414840 call!577891))))

(assert (=> b!6605878 (=> (not res!2708683) (not e!3996883))))

(declare-fun bm!577887 () Bool)

(assert (=> bm!577887 (= call!577889 call!577886)))

(declare-fun b!6605879 () Bool)

(assert (=> b!6605879 (= e!3996883 (> lt!2414840 call!577886))))

(declare-fun b!6605880 () Bool)

(assert (=> b!6605880 (= e!3996891 1)))

(declare-fun b!6605881 () Bool)

(declare-fun res!2708684 () Bool)

(assert (=> b!6605881 (=> (not res!2708684) (not e!3996889))))

(assert (=> b!6605881 (= res!2708684 (> lt!2414840 call!577889))))

(assert (=> b!6605881 (= e!3996884 e!3996889)))

(assert (= (and d!2071494 c!1217219) b!6605866))

(assert (= (and d!2071494 (not c!1217219)) b!6605874))

(assert (= (and b!6605874 c!1217214) b!6605868))

(assert (= (and b!6605874 (not c!1217214)) b!6605865))

(assert (= (and b!6605865 c!1217216) b!6605875))

(assert (= (and b!6605865 (not c!1217216)) b!6605870))

(assert (= (and b!6605870 c!1217218) b!6605869))

(assert (= (and b!6605870 (not c!1217218)) b!6605880))

(assert (= (or b!6605875 b!6605869) bm!577884))

(assert (= (or b!6605875 b!6605869) bm!577882))

(assert (= (or b!6605875 b!6605869) bm!577885))

(assert (= (or b!6605868 bm!577884) bm!577881))

(assert (= (and d!2071494 res!2708685) b!6605876))

(assert (= (and b!6605876 c!1217215) b!6605878))

(assert (= (and b!6605876 (not c!1217215)) b!6605867))

(assert (= (and b!6605878 res!2708683) b!6605879))

(assert (= (and b!6605867 c!1217217) b!6605881))

(assert (= (and b!6605867 (not c!1217217)) b!6605872))

(assert (= (and b!6605881 res!2708684) b!6605871))

(assert (= (and b!6605872 c!1217220) b!6605873))

(assert (= (and b!6605872 (not c!1217220)) b!6605877))

(assert (= (or b!6605881 b!6605873) bm!577887))

(assert (= (or b!6605879 bm!577887) bm!577886))

(assert (= (or b!6605878 b!6605871) bm!577883))

(declare-fun m!7381132 () Bool)

(assert (=> bm!577882 m!7381132))

(declare-fun m!7381134 () Bool)

(assert (=> bm!577886 m!7381134))

(declare-fun m!7381136 () Bool)

(assert (=> bm!577883 m!7381136))

(declare-fun m!7381138 () Bool)

(assert (=> bm!577885 m!7381138))

(declare-fun m!7381140 () Bool)

(assert (=> bm!577881 m!7381140))

(assert (=> b!6604968 d!2071494))

(declare-fun b!6605882 () Bool)

(declare-fun c!1217223 () Bool)

(assert (=> b!6605882 (= c!1217223 ((_ is Union!16473) lt!2414687))))

(declare-fun e!3996898 () Int)

(declare-fun e!3996900 () Int)

(assert (=> b!6605882 (= e!3996898 e!3996900)))

(declare-fun b!6605883 () Bool)

(declare-fun e!3996897 () Int)

(assert (=> b!6605883 (= e!3996897 1)))

(declare-fun call!577895 () Int)

(declare-fun c!1217221 () Bool)

(declare-fun bm!577888 () Bool)

(assert (=> bm!577888 (= call!577895 (regexDepth!370 (ite c!1217221 (reg!16802 lt!2414687) (ite c!1217223 (regTwo!33459 lt!2414687) (regOne!33458 lt!2414687)))))))

(declare-fun b!6605884 () Bool)

(declare-fun e!3996902 () Bool)

(declare-fun e!3996894 () Bool)

(assert (=> b!6605884 (= e!3996902 e!3996894)))

(declare-fun c!1217224 () Bool)

(assert (=> b!6605884 (= c!1217224 ((_ is Concat!25318) lt!2414687))))

(declare-fun b!6605885 () Bool)

(assert (=> b!6605885 (= e!3996898 (+ 1 call!577895))))

(declare-fun b!6605886 () Bool)

(declare-fun e!3996901 () Int)

(declare-fun call!577899 () Int)

(assert (=> b!6605886 (= e!3996901 (+ 1 call!577899))))

(declare-fun bm!577890 () Bool)

(declare-fun call!577898 () Int)

(declare-fun c!1217222 () Bool)

(assert (=> bm!577890 (= call!577898 (regexDepth!370 (ite c!1217222 (regOne!33459 lt!2414687) (regTwo!33458 lt!2414687))))))

(declare-fun b!6605887 () Bool)

(assert (=> b!6605887 (= e!3996900 e!3996901)))

(declare-fun c!1217225 () Bool)

(assert (=> b!6605887 (= c!1217225 ((_ is Concat!25318) lt!2414687))))

(declare-fun b!6605888 () Bool)

(declare-fun e!3996899 () Bool)

(declare-fun lt!2414841 () Int)

(assert (=> b!6605888 (= e!3996899 (> lt!2414841 call!577898))))

(declare-fun bm!577891 () Bool)

(declare-fun call!577894 () Int)

(assert (=> bm!577891 (= call!577894 call!577895)))

(declare-fun call!577897 () Int)

(declare-fun bm!577892 () Bool)

(assert (=> bm!577892 (= call!577899 (maxBigInt!0 (ite c!1217223 call!577897 call!577894) (ite c!1217223 call!577894 call!577897)))))

(declare-fun call!577893 () Int)

(declare-fun bm!577893 () Bool)

(assert (=> bm!577893 (= call!577893 (regexDepth!370 (ite c!1217222 (regTwo!33459 lt!2414687) (ite c!1217224 (regOne!33458 lt!2414687) (reg!16802 lt!2414687)))))))

(declare-fun b!6605889 () Bool)

(declare-fun c!1217227 () Bool)

(assert (=> b!6605889 (= c!1217227 ((_ is Star!16473) lt!2414687))))

(declare-fun e!3996896 () Bool)

(assert (=> b!6605889 (= e!3996894 e!3996896)))

(declare-fun b!6605890 () Bool)

(declare-fun call!577896 () Int)

(assert (=> b!6605890 (= e!3996896 (> lt!2414841 call!577896))))

(declare-fun bm!577889 () Bool)

(assert (=> bm!577889 (= call!577897 (regexDepth!370 (ite c!1217223 (regOne!33459 lt!2414687) (regTwo!33458 lt!2414687))))))

(declare-fun d!2071496 () Bool)

(declare-fun e!3996895 () Bool)

(assert (=> d!2071496 e!3996895))

(declare-fun res!2708688 () Bool)

(assert (=> d!2071496 (=> (not res!2708688) (not e!3996895))))

(assert (=> d!2071496 (= res!2708688 (> lt!2414841 0))))

(assert (=> d!2071496 (= lt!2414841 e!3996897)))

(declare-fun c!1217226 () Bool)

(assert (=> d!2071496 (= c!1217226 ((_ is ElementMatch!16473) lt!2414687))))

(assert (=> d!2071496 (= (regexDepth!370 lt!2414687) lt!2414841)))

(declare-fun b!6605891 () Bool)

(assert (=> b!6605891 (= e!3996897 e!3996898)))

(assert (=> b!6605891 (= c!1217221 ((_ is Star!16473) lt!2414687))))

(declare-fun b!6605892 () Bool)

(assert (=> b!6605892 (= e!3996900 (+ 1 call!577899))))

(declare-fun b!6605893 () Bool)

(assert (=> b!6605893 (= e!3996895 e!3996902)))

(assert (=> b!6605893 (= c!1217222 ((_ is Union!16473) lt!2414687))))

(declare-fun b!6605894 () Bool)

(assert (=> b!6605894 (= e!3996896 (= lt!2414841 1))))

(declare-fun b!6605895 () Bool)

(declare-fun e!3996893 () Bool)

(assert (=> b!6605895 (= e!3996902 e!3996893)))

(declare-fun res!2708686 () Bool)

(assert (=> b!6605895 (= res!2708686 (> lt!2414841 call!577898))))

(assert (=> b!6605895 (=> (not res!2708686) (not e!3996893))))

(declare-fun bm!577894 () Bool)

(assert (=> bm!577894 (= call!577896 call!577893)))

(declare-fun b!6605896 () Bool)

(assert (=> b!6605896 (= e!3996893 (> lt!2414841 call!577893))))

(declare-fun b!6605897 () Bool)

(assert (=> b!6605897 (= e!3996901 1)))

(declare-fun b!6605898 () Bool)

(declare-fun res!2708687 () Bool)

(assert (=> b!6605898 (=> (not res!2708687) (not e!3996899))))

(assert (=> b!6605898 (= res!2708687 (> lt!2414841 call!577896))))

(assert (=> b!6605898 (= e!3996894 e!3996899)))

(assert (= (and d!2071496 c!1217226) b!6605883))

(assert (= (and d!2071496 (not c!1217226)) b!6605891))

(assert (= (and b!6605891 c!1217221) b!6605885))

(assert (= (and b!6605891 (not c!1217221)) b!6605882))

(assert (= (and b!6605882 c!1217223) b!6605892))

(assert (= (and b!6605882 (not c!1217223)) b!6605887))

(assert (= (and b!6605887 c!1217225) b!6605886))

(assert (= (and b!6605887 (not c!1217225)) b!6605897))

(assert (= (or b!6605892 b!6605886) bm!577891))

(assert (= (or b!6605892 b!6605886) bm!577889))

(assert (= (or b!6605892 b!6605886) bm!577892))

(assert (= (or b!6605885 bm!577891) bm!577888))

(assert (= (and d!2071496 res!2708688) b!6605893))

(assert (= (and b!6605893 c!1217222) b!6605895))

(assert (= (and b!6605893 (not c!1217222)) b!6605884))

(assert (= (and b!6605895 res!2708686) b!6605896))

(assert (= (and b!6605884 c!1217224) b!6605898))

(assert (= (and b!6605884 (not c!1217224)) b!6605889))

(assert (= (and b!6605898 res!2708687) b!6605888))

(assert (= (and b!6605889 c!1217227) b!6605890))

(assert (= (and b!6605889 (not c!1217227)) b!6605894))

(assert (= (or b!6605898 b!6605890) bm!577894))

(assert (= (or b!6605896 bm!577894) bm!577893))

(assert (= (or b!6605895 b!6605888) bm!577890))

(declare-fun m!7381142 () Bool)

(assert (=> bm!577889 m!7381142))

(declare-fun m!7381144 () Bool)

(assert (=> bm!577893 m!7381144))

(declare-fun m!7381146 () Bool)

(assert (=> bm!577890 m!7381146))

(declare-fun m!7381148 () Bool)

(assert (=> bm!577892 m!7381148))

(declare-fun m!7381150 () Bool)

(assert (=> bm!577888 m!7381150))

(assert (=> b!6604968 d!2071496))

(declare-fun bs!1693211 () Bool)

(declare-fun d!2071498 () Bool)

(assert (= bs!1693211 (and d!2071498 d!2071440)))

(declare-fun lambda!368480 () Int)

(assert (=> bs!1693211 (= lambda!368480 lambda!368468)))

(declare-fun bs!1693212 () Bool)

(assert (= bs!1693212 (and d!2071498 d!2071482)))

(assert (=> bs!1693212 (= lambda!368480 lambda!368474)))

(declare-fun bs!1693213 () Bool)

(assert (= bs!1693213 (and d!2071498 d!2071484)))

(assert (=> bs!1693213 (= lambda!368480 lambda!368477)))

(declare-fun b!6605899 () Bool)

(declare-fun e!3996905 () Bool)

(declare-fun lt!2414842 () Regex!16473)

(assert (=> b!6605899 (= e!3996905 (isConcat!1374 lt!2414842))))

(declare-fun b!6605900 () Bool)

(declare-fun e!3996904 () Regex!16473)

(assert (=> b!6605900 (= e!3996904 (Concat!25318 (h!72043 (t!379371 (exprs!6357 (h!72044 zl!343)))) (generalisedConcat!2070 (t!379371 (t!379371 (exprs!6357 (h!72044 zl!343)))))))))

(declare-fun b!6605901 () Bool)

(declare-fun e!3996906 () Bool)

(declare-fun e!3996907 () Bool)

(assert (=> b!6605901 (= e!3996906 e!3996907)))

(declare-fun c!1217230 () Bool)

(assert (=> b!6605901 (= c!1217230 (isEmpty!37870 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(assert (=> d!2071498 e!3996906))

(declare-fun res!2708690 () Bool)

(assert (=> d!2071498 (=> (not res!2708690) (not e!3996906))))

(assert (=> d!2071498 (= res!2708690 (validRegex!8209 lt!2414842))))

(declare-fun e!3996908 () Regex!16473)

(assert (=> d!2071498 (= lt!2414842 e!3996908)))

(declare-fun c!1217231 () Bool)

(declare-fun e!3996903 () Bool)

(assert (=> d!2071498 (= c!1217231 e!3996903)))

(declare-fun res!2708689 () Bool)

(assert (=> d!2071498 (=> (not res!2708689) (not e!3996903))))

(assert (=> d!2071498 (= res!2708689 ((_ is Cons!65595) (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(assert (=> d!2071498 (forall!15669 (t!379371 (exprs!6357 (h!72044 zl!343))) lambda!368480)))

(assert (=> d!2071498 (= (generalisedConcat!2070 (t!379371 (exprs!6357 (h!72044 zl!343)))) lt!2414842)))

(declare-fun b!6605902 () Bool)

(assert (=> b!6605902 (= e!3996904 EmptyExpr!16473)))

(declare-fun b!6605903 () Bool)

(assert (=> b!6605903 (= e!3996905 (= lt!2414842 (head!13398 (t!379371 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun b!6605904 () Bool)

(assert (=> b!6605904 (= e!3996908 (h!72043 (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6605905 () Bool)

(assert (=> b!6605905 (= e!3996907 (isEmptyExpr!1851 lt!2414842))))

(declare-fun b!6605906 () Bool)

(assert (=> b!6605906 (= e!3996903 (isEmpty!37870 (t!379371 (t!379371 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun b!6605907 () Bool)

(assert (=> b!6605907 (= e!3996907 e!3996905)))

(declare-fun c!1217229 () Bool)

(assert (=> b!6605907 (= c!1217229 (isEmpty!37870 (tail!12483 (t!379371 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun b!6605908 () Bool)

(assert (=> b!6605908 (= e!3996908 e!3996904)))

(declare-fun c!1217228 () Bool)

(assert (=> b!6605908 (= c!1217228 ((_ is Cons!65595) (t!379371 (exprs!6357 (h!72044 zl!343)))))))

(assert (= (and d!2071498 res!2708689) b!6605906))

(assert (= (and d!2071498 c!1217231) b!6605904))

(assert (= (and d!2071498 (not c!1217231)) b!6605908))

(assert (= (and b!6605908 c!1217228) b!6605900))

(assert (= (and b!6605908 (not c!1217228)) b!6605902))

(assert (= (and d!2071498 res!2708690) b!6605901))

(assert (= (and b!6605901 c!1217230) b!6605905))

(assert (= (and b!6605901 (not c!1217230)) b!6605907))

(assert (= (and b!6605907 c!1217229) b!6605903))

(assert (= (and b!6605907 (not c!1217229)) b!6605899))

(declare-fun m!7381152 () Bool)

(assert (=> b!6605899 m!7381152))

(declare-fun m!7381154 () Bool)

(assert (=> b!6605906 m!7381154))

(declare-fun m!7381156 () Bool)

(assert (=> d!2071498 m!7381156))

(declare-fun m!7381158 () Bool)

(assert (=> d!2071498 m!7381158))

(declare-fun m!7381160 () Bool)

(assert (=> b!6605907 m!7381160))

(assert (=> b!6605907 m!7381160))

(declare-fun m!7381162 () Bool)

(assert (=> b!6605907 m!7381162))

(declare-fun m!7381164 () Bool)

(assert (=> b!6605900 m!7381164))

(declare-fun m!7381166 () Bool)

(assert (=> b!6605903 m!7381166))

(declare-fun m!7381168 () Bool)

(assert (=> b!6605905 m!7381168))

(assert (=> b!6605901 m!7380472))

(assert (=> b!6604968 d!2071498))

(declare-fun d!2071500 () Bool)

(declare-fun nullableFct!2392 (Regex!16473) Bool)

(assert (=> d!2071500 (= (nullable!6466 (regOne!33458 (regOne!33458 r!7292))) (nullableFct!2392 (regOne!33458 (regOne!33458 r!7292))))))

(declare-fun bs!1693214 () Bool)

(assert (= bs!1693214 d!2071500))

(declare-fun m!7381170 () Bool)

(assert (=> bs!1693214 m!7381170))

(assert (=> b!6604988 d!2071500))

(declare-fun bs!1693215 () Bool)

(declare-fun d!2071502 () Bool)

(assert (= bs!1693215 (and d!2071502 d!2071440)))

(declare-fun lambda!368483 () Int)

(assert (=> bs!1693215 (= lambda!368483 lambda!368468)))

(declare-fun bs!1693216 () Bool)

(assert (= bs!1693216 (and d!2071502 d!2071482)))

(assert (=> bs!1693216 (= lambda!368483 lambda!368474)))

(declare-fun bs!1693217 () Bool)

(assert (= bs!1693217 (and d!2071502 d!2071484)))

(assert (=> bs!1693217 (= lambda!368483 lambda!368477)))

(declare-fun bs!1693218 () Bool)

(assert (= bs!1693218 (and d!2071502 d!2071498)))

(assert (=> bs!1693218 (= lambda!368483 lambda!368480)))

(assert (=> d!2071502 (= (inv!84429 (h!72044 zl!343)) (forall!15669 (exprs!6357 (h!72044 zl!343)) lambda!368483))))

(declare-fun bs!1693219 () Bool)

(assert (= bs!1693219 d!2071502))

(declare-fun m!7381172 () Bool)

(assert (=> bs!1693219 m!7381172))

(assert (=> b!6604989 d!2071502))

(declare-fun d!2071504 () Bool)

(declare-fun choose!49332 (Int) Bool)

(assert (=> d!2071504 (= (Exists!3543 lambda!368401) (choose!49332 lambda!368401))))

(declare-fun bs!1693220 () Bool)

(assert (= bs!1693220 d!2071504))

(declare-fun m!7381174 () Bool)

(assert (=> bs!1693220 m!7381174))

(assert (=> b!6604955 d!2071504))

(declare-fun d!2071506 () Bool)

(assert (=> d!2071506 (= (Exists!3543 lambda!368399) (choose!49332 lambda!368399))))

(declare-fun bs!1693221 () Bool)

(assert (= bs!1693221 d!2071506))

(declare-fun m!7381176 () Bool)

(assert (=> bs!1693221 m!7381176))

(assert (=> b!6604955 d!2071506))

(declare-fun d!2071508 () Bool)

(assert (=> d!2071508 (= (Exists!3543 lambda!368400) (choose!49332 lambda!368400))))

(declare-fun bs!1693222 () Bool)

(assert (= bs!1693222 d!2071508))

(declare-fun m!7381178 () Bool)

(assert (=> bs!1693222 m!7381178))

(assert (=> b!6604955 d!2071508))

(declare-fun d!2071510 () Bool)

(declare-fun isEmpty!37874 (Option!16364) Bool)

(assert (=> d!2071510 (= (isDefined!13067 (findConcatSeparation!2778 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594 Nil!65594 Nil!65594)) (not (isEmpty!37874 (findConcatSeparation!2778 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594 Nil!65594 Nil!65594))))))

(declare-fun bs!1693223 () Bool)

(assert (= bs!1693223 d!2071510))

(assert (=> bs!1693223 m!7380354))

(declare-fun m!7381180 () Bool)

(assert (=> bs!1693223 m!7381180))

(assert (=> b!6604955 d!2071510))

(declare-fun bs!1693224 () Bool)

(declare-fun b!6605915 () Bool)

(assert (= bs!1693224 (and b!6605915 b!6604955)))

(declare-fun lambda!368484 () Int)

(assert (=> bs!1693224 (not (= lambda!368484 lambda!368399))))

(assert (=> bs!1693224 (= (= (reg!16802 lt!2414680) (reg!16802 (regOne!33458 r!7292))) (= lambda!368484 lambda!368401))))

(declare-fun bs!1693225 () Bool)

(assert (= bs!1693225 (and b!6605915 b!6605808)))

(assert (=> bs!1693225 (not (= lambda!368484 lambda!368479))))

(declare-fun bs!1693226 () Bool)

(assert (= bs!1693226 (and b!6605915 b!6604972)))

(assert (=> bs!1693226 (not (= lambda!368484 lambda!368396))))

(declare-fun bs!1693227 () Bool)

(assert (= bs!1693227 (and b!6605915 b!6605617)))

(assert (=> bs!1693227 (= (and (= Nil!65594 s!2326) (= (reg!16802 lt!2414680) (reg!16802 lt!2414695)) (= lt!2414680 lt!2414695)) (= lambda!368484 lambda!368463))))

(declare-fun bs!1693228 () Bool)

(assert (= bs!1693228 (and b!6605915 b!6605812)))

(assert (=> bs!1693228 (= (and (= Nil!65594 s!2326) (= (reg!16802 lt!2414680) (reg!16802 r!7292)) (= lt!2414680 r!7292)) (= lambda!368484 lambda!368478))))

(assert (=> bs!1693224 (not (= lambda!368484 lambda!368400))))

(declare-fun bs!1693229 () Bool)

(assert (= bs!1693229 (and b!6605915 b!6605613)))

(assert (=> bs!1693229 (not (= lambda!368484 lambda!368465))))

(assert (=> bs!1693226 (not (= lambda!368484 lambda!368397))))

(assert (=> b!6605915 true))

(assert (=> b!6605915 true))

(declare-fun bs!1693230 () Bool)

(declare-fun b!6605911 () Bool)

(assert (= bs!1693230 (and b!6605911 b!6604955)))

(declare-fun lambda!368485 () Int)

(assert (=> bs!1693230 (not (= lambda!368485 lambda!368399))))

(assert (=> bs!1693230 (not (= lambda!368485 lambda!368401))))

(declare-fun bs!1693231 () Bool)

(assert (= bs!1693231 (and b!6605911 b!6605808)))

(assert (=> bs!1693231 (= (and (= Nil!65594 s!2326) (= (regOne!33458 lt!2414680) (regOne!33458 r!7292)) (= (regTwo!33458 lt!2414680) (regTwo!33458 r!7292))) (= lambda!368485 lambda!368479))))

(declare-fun bs!1693232 () Bool)

(assert (= bs!1693232 (and b!6605911 b!6605915)))

(assert (=> bs!1693232 (not (= lambda!368485 lambda!368484))))

(declare-fun bs!1693233 () Bool)

(assert (= bs!1693233 (and b!6605911 b!6604972)))

(assert (=> bs!1693233 (not (= lambda!368485 lambda!368396))))

(declare-fun bs!1693234 () Bool)

(assert (= bs!1693234 (and b!6605911 b!6605617)))

(assert (=> bs!1693234 (not (= lambda!368485 lambda!368463))))

(declare-fun bs!1693235 () Bool)

(assert (= bs!1693235 (and b!6605911 b!6605812)))

(assert (=> bs!1693235 (not (= lambda!368485 lambda!368478))))

(assert (=> bs!1693230 (= (and (= (regOne!33458 lt!2414680) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 lt!2414680) lt!2414680)) (= lambda!368485 lambda!368400))))

(declare-fun bs!1693236 () Bool)

(assert (= bs!1693236 (and b!6605911 b!6605613)))

(assert (=> bs!1693236 (= (and (= Nil!65594 s!2326) (= (regOne!33458 lt!2414680) (regOne!33458 lt!2414695)) (= (regTwo!33458 lt!2414680) (regTwo!33458 lt!2414695))) (= lambda!368485 lambda!368465))))

(assert (=> bs!1693233 (= (and (= Nil!65594 s!2326) (= (regOne!33458 lt!2414680) (regOne!33458 r!7292)) (= (regTwo!33458 lt!2414680) (regTwo!33458 r!7292))) (= lambda!368485 lambda!368397))))

(assert (=> b!6605911 true))

(assert (=> b!6605911 true))

(declare-fun b!6605909 () Bool)

(declare-fun e!3996912 () Bool)

(declare-fun e!3996915 () Bool)

(assert (=> b!6605909 (= e!3996912 e!3996915)))

(declare-fun c!1217233 () Bool)

(assert (=> b!6605909 (= c!1217233 ((_ is Star!16473) lt!2414680))))

(declare-fun d!2071512 () Bool)

(declare-fun c!1217235 () Bool)

(assert (=> d!2071512 (= c!1217235 ((_ is EmptyExpr!16473) lt!2414680))))

(declare-fun e!3996909 () Bool)

(assert (=> d!2071512 (= (matchRSpec!3574 lt!2414680 Nil!65594) e!3996909)))

(declare-fun b!6605910 () Bool)

(declare-fun e!3996910 () Bool)

(assert (=> b!6605910 (= e!3996909 e!3996910)))

(declare-fun res!2708692 () Bool)

(assert (=> b!6605910 (= res!2708692 (not ((_ is EmptyLang!16473) lt!2414680)))))

(assert (=> b!6605910 (=> (not res!2708692) (not e!3996910))))

(declare-fun bm!577895 () Bool)

(declare-fun call!577900 () Bool)

(assert (=> bm!577895 (= call!577900 (isEmpty!37873 Nil!65594))))

(declare-fun call!577901 () Bool)

(assert (=> b!6605911 (= e!3996915 call!577901)))

(declare-fun b!6605912 () Bool)

(declare-fun c!1217232 () Bool)

(assert (=> b!6605912 (= c!1217232 ((_ is Union!16473) lt!2414680))))

(declare-fun e!3996913 () Bool)

(assert (=> b!6605912 (= e!3996913 e!3996912)))

(declare-fun b!6605913 () Bool)

(assert (=> b!6605913 (= e!3996913 (= Nil!65594 (Cons!65594 (c!1216946 lt!2414680) Nil!65594)))))

(declare-fun b!6605914 () Bool)

(declare-fun e!3996911 () Bool)

(assert (=> b!6605914 (= e!3996911 (matchRSpec!3574 (regTwo!33459 lt!2414680) Nil!65594))))

(declare-fun e!3996914 () Bool)

(assert (=> b!6605915 (= e!3996914 call!577901)))

(declare-fun b!6605916 () Bool)

(assert (=> b!6605916 (= e!3996912 e!3996911)))

(declare-fun res!2708691 () Bool)

(assert (=> b!6605916 (= res!2708691 (matchRSpec!3574 (regOne!33459 lt!2414680) Nil!65594))))

(assert (=> b!6605916 (=> res!2708691 e!3996911)))

(declare-fun b!6605917 () Bool)

(assert (=> b!6605917 (= e!3996909 call!577900)))

(declare-fun b!6605918 () Bool)

(declare-fun c!1217234 () Bool)

(assert (=> b!6605918 (= c!1217234 ((_ is ElementMatch!16473) lt!2414680))))

(assert (=> b!6605918 (= e!3996910 e!3996913)))

(declare-fun b!6605919 () Bool)

(declare-fun res!2708693 () Bool)

(assert (=> b!6605919 (=> res!2708693 e!3996914)))

(assert (=> b!6605919 (= res!2708693 call!577900)))

(assert (=> b!6605919 (= e!3996915 e!3996914)))

(declare-fun bm!577896 () Bool)

(assert (=> bm!577896 (= call!577901 (Exists!3543 (ite c!1217233 lambda!368484 lambda!368485)))))

(assert (= (and d!2071512 c!1217235) b!6605917))

(assert (= (and d!2071512 (not c!1217235)) b!6605910))

(assert (= (and b!6605910 res!2708692) b!6605918))

(assert (= (and b!6605918 c!1217234) b!6605913))

(assert (= (and b!6605918 (not c!1217234)) b!6605912))

(assert (= (and b!6605912 c!1217232) b!6605916))

(assert (= (and b!6605912 (not c!1217232)) b!6605909))

(assert (= (and b!6605916 (not res!2708691)) b!6605914))

(assert (= (and b!6605909 c!1217233) b!6605919))

(assert (= (and b!6605909 (not c!1217233)) b!6605911))

(assert (= (and b!6605919 (not res!2708693)) b!6605915))

(assert (= (or b!6605915 b!6605911) bm!577896))

(assert (= (or b!6605917 b!6605919) bm!577895))

(declare-fun m!7381182 () Bool)

(assert (=> bm!577895 m!7381182))

(declare-fun m!7381184 () Bool)

(assert (=> b!6605914 m!7381184))

(declare-fun m!7381186 () Bool)

(assert (=> b!6605916 m!7381186))

(declare-fun m!7381188 () Bool)

(assert (=> bm!577896 m!7381188))

(assert (=> b!6604955 d!2071512))

(declare-fun d!2071514 () Bool)

(assert (=> d!2071514 (= (matchR!8656 lt!2414680 Nil!65594) (matchRSpec!3574 lt!2414680 Nil!65594))))

(declare-fun lt!2414843 () Unit!159227)

(assert (=> d!2071514 (= lt!2414843 (choose!49326 lt!2414680 Nil!65594))))

(assert (=> d!2071514 (validRegex!8209 lt!2414680)))

(assert (=> d!2071514 (= (mainMatchTheorem!3574 lt!2414680 Nil!65594) lt!2414843)))

(declare-fun bs!1693237 () Bool)

(assert (= bs!1693237 d!2071514))

(assert (=> bs!1693237 m!7380368))

(assert (=> bs!1693237 m!7380366))

(declare-fun m!7381190 () Bool)

(assert (=> bs!1693237 m!7381190))

(assert (=> bs!1693237 m!7380362))

(assert (=> b!6604955 d!2071514))

(declare-fun bs!1693238 () Bool)

(declare-fun d!2071516 () Bool)

(assert (= bs!1693238 (and d!2071516 b!6604955)))

(declare-fun lambda!368488 () Int)

(assert (=> bs!1693238 (= lambda!368488 lambda!368399)))

(assert (=> bs!1693238 (not (= lambda!368488 lambda!368401))))

(declare-fun bs!1693239 () Bool)

(assert (= bs!1693239 (and d!2071516 b!6605808)))

(assert (=> bs!1693239 (not (= lambda!368488 lambda!368479))))

(declare-fun bs!1693240 () Bool)

(assert (= bs!1693240 (and d!2071516 b!6605915)))

(assert (=> bs!1693240 (not (= lambda!368488 lambda!368484))))

(declare-fun bs!1693241 () Bool)

(assert (= bs!1693241 (and d!2071516 b!6604972)))

(assert (=> bs!1693241 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= lt!2414680 (regTwo!33458 r!7292))) (= lambda!368488 lambda!368396))))

(declare-fun bs!1693242 () Bool)

(assert (= bs!1693242 (and d!2071516 b!6605812)))

(assert (=> bs!1693242 (not (= lambda!368488 lambda!368478))))

(assert (=> bs!1693238 (not (= lambda!368488 lambda!368400))))

(declare-fun bs!1693243 () Bool)

(assert (= bs!1693243 (and d!2071516 b!6605911)))

(assert (=> bs!1693243 (not (= lambda!368488 lambda!368485))))

(declare-fun bs!1693244 () Bool)

(assert (= bs!1693244 (and d!2071516 b!6605617)))

(assert (=> bs!1693244 (not (= lambda!368488 lambda!368463))))

(declare-fun bs!1693245 () Bool)

(assert (= bs!1693245 (and d!2071516 b!6605613)))

(assert (=> bs!1693245 (not (= lambda!368488 lambda!368465))))

(assert (=> bs!1693241 (not (= lambda!368488 lambda!368397))))

(assert (=> d!2071516 true))

(assert (=> d!2071516 true))

(assert (=> d!2071516 true))

(assert (=> d!2071516 (= (isDefined!13067 (findConcatSeparation!2778 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594 Nil!65594 Nil!65594)) (Exists!3543 lambda!368488))))

(declare-fun lt!2414846 () Unit!159227)

(declare-fun choose!49333 (Regex!16473 Regex!16473 List!65718) Unit!159227)

(assert (=> d!2071516 (= lt!2414846 (choose!49333 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594))))

(assert (=> d!2071516 (validRegex!8209 (reg!16802 (regOne!33458 r!7292)))))

(assert (=> d!2071516 (= (lemmaFindConcatSeparationEquivalentToExists!2542 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594) lt!2414846)))

(declare-fun bs!1693246 () Bool)

(assert (= bs!1693246 d!2071516))

(assert (=> bs!1693246 m!7380354))

(assert (=> bs!1693246 m!7380370))

(declare-fun m!7381192 () Bool)

(assert (=> bs!1693246 m!7381192))

(assert (=> bs!1693246 m!7380354))

(declare-fun m!7381194 () Bool)

(assert (=> bs!1693246 m!7381194))

(declare-fun m!7381196 () Bool)

(assert (=> bs!1693246 m!7381196))

(assert (=> b!6604955 d!2071516))

(declare-fun b!6605924 () Bool)

(declare-fun res!2708700 () Bool)

(declare-fun e!3996919 () Bool)

(assert (=> b!6605924 (=> (not res!2708700) (not e!3996919))))

(declare-fun call!577902 () Bool)

(assert (=> b!6605924 (= res!2708700 (not call!577902))))

(declare-fun b!6605925 () Bool)

(declare-fun e!3996918 () Bool)

(declare-fun e!3996921 () Bool)

(assert (=> b!6605925 (= e!3996918 e!3996921)))

(declare-fun res!2708705 () Bool)

(assert (=> b!6605925 (=> (not res!2708705) (not e!3996921))))

(declare-fun lt!2414847 () Bool)

(assert (=> b!6605925 (= res!2708705 (not lt!2414847))))

(declare-fun b!6605926 () Bool)

(assert (=> b!6605926 (= e!3996919 (= (head!13397 Nil!65594) (c!1216946 lt!2414680)))))

(declare-fun b!6605927 () Bool)

(declare-fun res!2708699 () Bool)

(assert (=> b!6605927 (=> (not res!2708699) (not e!3996919))))

(assert (=> b!6605927 (= res!2708699 (isEmpty!37873 (tail!12482 Nil!65594)))))

(declare-fun b!6605928 () Bool)

(declare-fun e!3996920 () Bool)

(assert (=> b!6605928 (= e!3996920 (= lt!2414847 call!577902))))

(declare-fun d!2071518 () Bool)

(assert (=> d!2071518 e!3996920))

(declare-fun c!1217238 () Bool)

(assert (=> d!2071518 (= c!1217238 ((_ is EmptyExpr!16473) lt!2414680))))

(declare-fun e!3996924 () Bool)

(assert (=> d!2071518 (= lt!2414847 e!3996924)))

(declare-fun c!1217236 () Bool)

(assert (=> d!2071518 (= c!1217236 (isEmpty!37873 Nil!65594))))

(assert (=> d!2071518 (validRegex!8209 lt!2414680)))

(assert (=> d!2071518 (= (matchR!8656 lt!2414680 Nil!65594) lt!2414847)))

(declare-fun bm!577897 () Bool)

(assert (=> bm!577897 (= call!577902 (isEmpty!37873 Nil!65594))))

(declare-fun b!6605929 () Bool)

(declare-fun e!3996923 () Bool)

(assert (=> b!6605929 (= e!3996923 (not (= (head!13397 Nil!65594) (c!1216946 lt!2414680))))))

(declare-fun b!6605930 () Bool)

(assert (=> b!6605930 (= e!3996924 (nullable!6466 lt!2414680))))

(declare-fun b!6605931 () Bool)

(declare-fun res!2708701 () Bool)

(assert (=> b!6605931 (=> res!2708701 e!3996918)))

(assert (=> b!6605931 (= res!2708701 (not ((_ is ElementMatch!16473) lt!2414680)))))

(declare-fun e!3996922 () Bool)

(assert (=> b!6605931 (= e!3996922 e!3996918)))

(declare-fun b!6605932 () Bool)

(assert (=> b!6605932 (= e!3996922 (not lt!2414847))))

(declare-fun b!6605933 () Bool)

(assert (=> b!6605933 (= e!3996924 (matchR!8656 (derivativeStep!5157 lt!2414680 (head!13397 Nil!65594)) (tail!12482 Nil!65594)))))

(declare-fun b!6605934 () Bool)

(declare-fun res!2708704 () Bool)

(assert (=> b!6605934 (=> res!2708704 e!3996923)))

(assert (=> b!6605934 (= res!2708704 (not (isEmpty!37873 (tail!12482 Nil!65594))))))

(declare-fun b!6605935 () Bool)

(assert (=> b!6605935 (= e!3996920 e!3996922)))

(declare-fun c!1217237 () Bool)

(assert (=> b!6605935 (= c!1217237 ((_ is EmptyLang!16473) lt!2414680))))

(declare-fun b!6605936 () Bool)

(declare-fun res!2708698 () Bool)

(assert (=> b!6605936 (=> res!2708698 e!3996918)))

(assert (=> b!6605936 (= res!2708698 e!3996919)))

(declare-fun res!2708703 () Bool)

(assert (=> b!6605936 (=> (not res!2708703) (not e!3996919))))

(assert (=> b!6605936 (= res!2708703 lt!2414847)))

(declare-fun b!6605937 () Bool)

(assert (=> b!6605937 (= e!3996921 e!3996923)))

(declare-fun res!2708702 () Bool)

(assert (=> b!6605937 (=> res!2708702 e!3996923)))

(assert (=> b!6605937 (= res!2708702 call!577902)))

(assert (= (and d!2071518 c!1217236) b!6605930))

(assert (= (and d!2071518 (not c!1217236)) b!6605933))

(assert (= (and d!2071518 c!1217238) b!6605928))

(assert (= (and d!2071518 (not c!1217238)) b!6605935))

(assert (= (and b!6605935 c!1217237) b!6605932))

(assert (= (and b!6605935 (not c!1217237)) b!6605931))

(assert (= (and b!6605931 (not res!2708701)) b!6605936))

(assert (= (and b!6605936 res!2708703) b!6605924))

(assert (= (and b!6605924 res!2708700) b!6605927))

(assert (= (and b!6605927 res!2708699) b!6605926))

(assert (= (and b!6605936 (not res!2708698)) b!6605925))

(assert (= (and b!6605925 res!2708705) b!6605937))

(assert (= (and b!6605937 (not res!2708702)) b!6605934))

(assert (= (and b!6605934 (not res!2708704)) b!6605929))

(assert (= (or b!6605928 b!6605924 b!6605937) bm!577897))

(declare-fun m!7381198 () Bool)

(assert (=> b!6605926 m!7381198))

(declare-fun m!7381200 () Bool)

(assert (=> b!6605930 m!7381200))

(declare-fun m!7381202 () Bool)

(assert (=> b!6605934 m!7381202))

(assert (=> b!6605934 m!7381202))

(declare-fun m!7381204 () Bool)

(assert (=> b!6605934 m!7381204))

(assert (=> bm!577897 m!7381182))

(assert (=> b!6605929 m!7381198))

(assert (=> b!6605933 m!7381198))

(assert (=> b!6605933 m!7381198))

(declare-fun m!7381206 () Bool)

(assert (=> b!6605933 m!7381206))

(assert (=> b!6605933 m!7381202))

(assert (=> b!6605933 m!7381206))

(assert (=> b!6605933 m!7381202))

(declare-fun m!7381208 () Bool)

(assert (=> b!6605933 m!7381208))

(assert (=> b!6605927 m!7381202))

(assert (=> b!6605927 m!7381202))

(assert (=> b!6605927 m!7381204))

(assert (=> d!2071518 m!7381182))

(assert (=> d!2071518 m!7380362))

(assert (=> b!6604955 d!2071518))

(declare-fun bs!1693247 () Bool)

(declare-fun d!2071520 () Bool)

(assert (= bs!1693247 (and d!2071520 b!6604955)))

(declare-fun lambda!368493 () Int)

(assert (=> bs!1693247 (= (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) lt!2414680) (= lambda!368493 lambda!368399))))

(assert (=> bs!1693247 (not (= lambda!368493 lambda!368401))))

(declare-fun bs!1693248 () Bool)

(assert (= bs!1693248 (and d!2071520 b!6605808)))

(assert (=> bs!1693248 (not (= lambda!368493 lambda!368479))))

(declare-fun bs!1693249 () Bool)

(assert (= bs!1693249 (and d!2071520 b!6605915)))

(assert (=> bs!1693249 (not (= lambda!368493 lambda!368484))))

(declare-fun bs!1693250 () Bool)

(assert (= bs!1693250 (and d!2071520 b!6604972)))

(assert (=> bs!1693250 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) (regTwo!33458 r!7292))) (= lambda!368493 lambda!368396))))

(declare-fun bs!1693251 () Bool)

(assert (= bs!1693251 (and d!2071520 b!6605812)))

(assert (=> bs!1693251 (not (= lambda!368493 lambda!368478))))

(declare-fun bs!1693252 () Bool)

(assert (= bs!1693252 (and d!2071520 b!6605911)))

(assert (=> bs!1693252 (not (= lambda!368493 lambda!368485))))

(declare-fun bs!1693253 () Bool)

(assert (= bs!1693253 (and d!2071520 b!6605617)))

(assert (=> bs!1693253 (not (= lambda!368493 lambda!368463))))

(declare-fun bs!1693254 () Bool)

(assert (= bs!1693254 (and d!2071520 b!6605613)))

(assert (=> bs!1693254 (not (= lambda!368493 lambda!368465))))

(assert (=> bs!1693250 (not (= lambda!368493 lambda!368397))))

(declare-fun bs!1693255 () Bool)

(assert (= bs!1693255 (and d!2071520 d!2071516)))

(assert (=> bs!1693255 (= (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) lt!2414680) (= lambda!368493 lambda!368488))))

(assert (=> bs!1693247 (not (= lambda!368493 lambda!368400))))

(assert (=> d!2071520 true))

(assert (=> d!2071520 true))

(declare-fun lambda!368494 () Int)

(assert (=> bs!1693247 (not (= lambda!368494 lambda!368399))))

(assert (=> bs!1693247 (= (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) lt!2414680) (= lambda!368494 lambda!368401))))

(assert (=> bs!1693248 (not (= lambda!368494 lambda!368479))))

(assert (=> bs!1693249 (= (and (= (reg!16802 (regOne!33458 r!7292)) (reg!16802 lt!2414680)) (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) lt!2414680)) (= lambda!368494 lambda!368484))))

(assert (=> bs!1693250 (not (= lambda!368494 lambda!368396))))

(assert (=> bs!1693251 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (reg!16802 r!7292)) (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) r!7292)) (= lambda!368494 lambda!368478))))

(declare-fun bs!1693256 () Bool)

(assert (= bs!1693256 d!2071520))

(assert (=> bs!1693256 (not (= lambda!368494 lambda!368493))))

(assert (=> bs!1693252 (not (= lambda!368494 lambda!368485))))

(assert (=> bs!1693253 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (reg!16802 lt!2414695)) (= (Star!16473 (reg!16802 (regOne!33458 r!7292))) lt!2414695)) (= lambda!368494 lambda!368463))))

(assert (=> bs!1693254 (not (= lambda!368494 lambda!368465))))

(assert (=> bs!1693250 (not (= lambda!368494 lambda!368397))))

(assert (=> bs!1693255 (not (= lambda!368494 lambda!368488))))

(assert (=> bs!1693247 (not (= lambda!368494 lambda!368400))))

(assert (=> d!2071520 true))

(assert (=> d!2071520 true))

(assert (=> d!2071520 (= (Exists!3543 lambda!368493) (Exists!3543 lambda!368494))))

(declare-fun lt!2414850 () Unit!159227)

(declare-fun choose!49336 (Regex!16473 List!65718) Unit!159227)

(assert (=> d!2071520 (= lt!2414850 (choose!49336 (reg!16802 (regOne!33458 r!7292)) Nil!65594))))

(assert (=> d!2071520 (validRegex!8209 (reg!16802 (regOne!33458 r!7292)))))

(assert (=> d!2071520 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!668 (reg!16802 (regOne!33458 r!7292)) Nil!65594) lt!2414850)))

(declare-fun m!7381210 () Bool)

(assert (=> bs!1693256 m!7381210))

(declare-fun m!7381212 () Bool)

(assert (=> bs!1693256 m!7381212))

(declare-fun m!7381214 () Bool)

(assert (=> bs!1693256 m!7381214))

(assert (=> bs!1693256 m!7381194))

(assert (=> b!6604955 d!2071520))

(declare-fun bm!577898 () Bool)

(declare-fun call!577905 () Bool)

(declare-fun call!577903 () Bool)

(assert (=> bm!577898 (= call!577905 call!577903)))

(declare-fun d!2071522 () Bool)

(declare-fun res!2708719 () Bool)

(declare-fun e!3996934 () Bool)

(assert (=> d!2071522 (=> res!2708719 e!3996934)))

(assert (=> d!2071522 (= res!2708719 ((_ is ElementMatch!16473) lt!2414680))))

(assert (=> d!2071522 (= (validRegex!8209 lt!2414680) e!3996934)))

(declare-fun b!6605948 () Bool)

(declare-fun e!3996929 () Bool)

(assert (=> b!6605948 (= e!3996934 e!3996929)))

(declare-fun c!1217240 () Bool)

(assert (=> b!6605948 (= c!1217240 ((_ is Star!16473) lt!2414680))))

(declare-fun b!6605949 () Bool)

(declare-fun e!3996930 () Bool)

(assert (=> b!6605949 (= e!3996929 e!3996930)))

(declare-fun c!1217239 () Bool)

(assert (=> b!6605949 (= c!1217239 ((_ is Union!16473) lt!2414680))))

(declare-fun bm!577899 () Bool)

(declare-fun call!577904 () Bool)

(assert (=> bm!577899 (= call!577904 (validRegex!8209 (ite c!1217239 (regTwo!33459 lt!2414680) (regTwo!33458 lt!2414680))))))

(declare-fun b!6605950 () Bool)

(declare-fun e!3996933 () Bool)

(assert (=> b!6605950 (= e!3996933 call!577904)))

(declare-fun bm!577900 () Bool)

(assert (=> bm!577900 (= call!577903 (validRegex!8209 (ite c!1217240 (reg!16802 lt!2414680) (ite c!1217239 (regOne!33459 lt!2414680) (regOne!33458 lt!2414680)))))))

(declare-fun b!6605951 () Bool)

(declare-fun e!3996935 () Bool)

(assert (=> b!6605951 (= e!3996935 e!3996933)))

(declare-fun res!2708718 () Bool)

(assert (=> b!6605951 (=> (not res!2708718) (not e!3996933))))

(assert (=> b!6605951 (= res!2708718 call!577905)))

(declare-fun b!6605952 () Bool)

(declare-fun e!3996932 () Bool)

(assert (=> b!6605952 (= e!3996932 call!577903)))

(declare-fun b!6605953 () Bool)

(declare-fun res!2708720 () Bool)

(declare-fun e!3996931 () Bool)

(assert (=> b!6605953 (=> (not res!2708720) (not e!3996931))))

(assert (=> b!6605953 (= res!2708720 call!577905)))

(assert (=> b!6605953 (= e!3996930 e!3996931)))

(declare-fun b!6605954 () Bool)

(assert (=> b!6605954 (= e!3996931 call!577904)))

(declare-fun b!6605955 () Bool)

(assert (=> b!6605955 (= e!3996929 e!3996932)))

(declare-fun res!2708717 () Bool)

(assert (=> b!6605955 (= res!2708717 (not (nullable!6466 (reg!16802 lt!2414680))))))

(assert (=> b!6605955 (=> (not res!2708717) (not e!3996932))))

(declare-fun b!6605956 () Bool)

(declare-fun res!2708716 () Bool)

(assert (=> b!6605956 (=> res!2708716 e!3996935)))

(assert (=> b!6605956 (= res!2708716 (not ((_ is Concat!25318) lt!2414680)))))

(assert (=> b!6605956 (= e!3996930 e!3996935)))

(assert (= (and d!2071522 (not res!2708719)) b!6605948))

(assert (= (and b!6605948 c!1217240) b!6605955))

(assert (= (and b!6605948 (not c!1217240)) b!6605949))

(assert (= (and b!6605955 res!2708717) b!6605952))

(assert (= (and b!6605949 c!1217239) b!6605953))

(assert (= (and b!6605949 (not c!1217239)) b!6605956))

(assert (= (and b!6605953 res!2708720) b!6605954))

(assert (= (and b!6605956 (not res!2708716)) b!6605951))

(assert (= (and b!6605951 res!2708718) b!6605950))

(assert (= (or b!6605954 b!6605950) bm!577899))

(assert (= (or b!6605953 b!6605951) bm!577898))

(assert (= (or b!6605952 bm!577898) bm!577900))

(declare-fun m!7381216 () Bool)

(assert (=> bm!577899 m!7381216))

(declare-fun m!7381218 () Bool)

(assert (=> bm!577900 m!7381218))

(declare-fun m!7381220 () Bool)

(assert (=> b!6605955 m!7381220))

(assert (=> b!6604955 d!2071522))

(declare-fun bs!1693257 () Bool)

(declare-fun d!2071524 () Bool)

(assert (= bs!1693257 (and d!2071524 b!6604955)))

(declare-fun lambda!368499 () Int)

(assert (=> bs!1693257 (= lambda!368499 lambda!368399)))

(assert (=> bs!1693257 (not (= lambda!368499 lambda!368401))))

(declare-fun bs!1693258 () Bool)

(assert (= bs!1693258 (and d!2071524 b!6605808)))

(assert (=> bs!1693258 (not (= lambda!368499 lambda!368479))))

(declare-fun bs!1693259 () Bool)

(assert (= bs!1693259 (and d!2071524 b!6605915)))

(assert (=> bs!1693259 (not (= lambda!368499 lambda!368484))))

(declare-fun bs!1693260 () Bool)

(assert (= bs!1693260 (and d!2071524 b!6604972)))

(assert (=> bs!1693260 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= lt!2414680 (regTwo!33458 r!7292))) (= lambda!368499 lambda!368396))))

(declare-fun bs!1693261 () Bool)

(assert (= bs!1693261 (and d!2071524 b!6605812)))

(assert (=> bs!1693261 (not (= lambda!368499 lambda!368478))))

(declare-fun bs!1693262 () Bool)

(assert (= bs!1693262 (and d!2071524 d!2071520)))

(assert (=> bs!1693262 (= (= lt!2414680 (Star!16473 (reg!16802 (regOne!33458 r!7292)))) (= lambda!368499 lambda!368493))))

(assert (=> bs!1693262 (not (= lambda!368499 lambda!368494))))

(declare-fun bs!1693263 () Bool)

(assert (= bs!1693263 (and d!2071524 b!6605911)))

(assert (=> bs!1693263 (not (= lambda!368499 lambda!368485))))

(declare-fun bs!1693264 () Bool)

(assert (= bs!1693264 (and d!2071524 b!6605617)))

(assert (=> bs!1693264 (not (= lambda!368499 lambda!368463))))

(declare-fun bs!1693265 () Bool)

(assert (= bs!1693265 (and d!2071524 b!6605613)))

(assert (=> bs!1693265 (not (= lambda!368499 lambda!368465))))

(assert (=> bs!1693260 (not (= lambda!368499 lambda!368397))))

(declare-fun bs!1693266 () Bool)

(assert (= bs!1693266 (and d!2071524 d!2071516)))

(assert (=> bs!1693266 (= lambda!368499 lambda!368488)))

(assert (=> bs!1693257 (not (= lambda!368499 lambda!368400))))

(assert (=> d!2071524 true))

(assert (=> d!2071524 true))

(assert (=> d!2071524 true))

(declare-fun lambda!368500 () Int)

(assert (=> bs!1693257 (not (= lambda!368500 lambda!368399))))

(assert (=> bs!1693257 (not (= lambda!368500 lambda!368401))))

(assert (=> bs!1693258 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= lt!2414680 (regTwo!33458 r!7292))) (= lambda!368500 lambda!368479))))

(assert (=> bs!1693259 (not (= lambda!368500 lambda!368484))))

(assert (=> bs!1693261 (not (= lambda!368500 lambda!368478))))

(assert (=> bs!1693262 (not (= lambda!368500 lambda!368493))))

(assert (=> bs!1693262 (not (= lambda!368500 lambda!368494))))

(assert (=> bs!1693260 (not (= lambda!368500 lambda!368396))))

(declare-fun bs!1693267 () Bool)

(assert (= bs!1693267 d!2071524))

(assert (=> bs!1693267 (not (= lambda!368500 lambda!368499))))

(assert (=> bs!1693263 (= (and (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 lt!2414680)) (= lt!2414680 (regTwo!33458 lt!2414680))) (= lambda!368500 lambda!368485))))

(assert (=> bs!1693264 (not (= lambda!368500 lambda!368463))))

(assert (=> bs!1693265 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 lt!2414695)) (= lt!2414680 (regTwo!33458 lt!2414695))) (= lambda!368500 lambda!368465))))

(assert (=> bs!1693260 (= (and (= Nil!65594 s!2326) (= (reg!16802 (regOne!33458 r!7292)) (regOne!33458 r!7292)) (= lt!2414680 (regTwo!33458 r!7292))) (= lambda!368500 lambda!368397))))

(assert (=> bs!1693266 (not (= lambda!368500 lambda!368488))))

(assert (=> bs!1693257 (= lambda!368500 lambda!368400)))

(assert (=> d!2071524 true))

(assert (=> d!2071524 true))

(assert (=> d!2071524 true))

(assert (=> d!2071524 (= (Exists!3543 lambda!368499) (Exists!3543 lambda!368500))))

(declare-fun lt!2414853 () Unit!159227)

(declare-fun choose!49337 (Regex!16473 Regex!16473 List!65718) Unit!159227)

(assert (=> d!2071524 (= lt!2414853 (choose!49337 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594))))

(assert (=> d!2071524 (validRegex!8209 (reg!16802 (regOne!33458 r!7292)))))

(assert (=> d!2071524 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2080 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594) lt!2414853)))

(declare-fun m!7381222 () Bool)

(assert (=> bs!1693267 m!7381222))

(declare-fun m!7381224 () Bool)

(assert (=> bs!1693267 m!7381224))

(declare-fun m!7381226 () Bool)

(assert (=> bs!1693267 m!7381226))

(assert (=> bs!1693267 m!7381194))

(assert (=> b!6604955 d!2071524))

(declare-fun b!6605983 () Bool)

(declare-fun e!3996953 () Option!16364)

(declare-fun e!3996952 () Option!16364)

(assert (=> b!6605983 (= e!3996953 e!3996952)))

(declare-fun c!1217245 () Bool)

(assert (=> b!6605983 (= c!1217245 ((_ is Nil!65594) Nil!65594))))

(declare-fun b!6605984 () Bool)

(assert (=> b!6605984 (= e!3996953 (Some!16363 (tuple2!66905 Nil!65594 Nil!65594)))))

(declare-fun b!6605985 () Bool)

(declare-fun lt!2414862 () Unit!159227)

(declare-fun lt!2414861 () Unit!159227)

(assert (=> b!6605985 (= lt!2414862 lt!2414861)))

(declare-fun ++!14619 (List!65718 List!65718) List!65718)

(assert (=> b!6605985 (= (++!14619 (++!14619 Nil!65594 (Cons!65594 (h!72042 Nil!65594) Nil!65594)) (t!379370 Nil!65594)) Nil!65594)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2616 (List!65718 C!33216 List!65718 List!65718) Unit!159227)

(assert (=> b!6605985 (= lt!2414861 (lemmaMoveElementToOtherListKeepsConcatEq!2616 Nil!65594 (h!72042 Nil!65594) (t!379370 Nil!65594) Nil!65594))))

(assert (=> b!6605985 (= e!3996952 (findConcatSeparation!2778 (reg!16802 (regOne!33458 r!7292)) lt!2414680 (++!14619 Nil!65594 (Cons!65594 (h!72042 Nil!65594) Nil!65594)) (t!379370 Nil!65594) Nil!65594))))

(declare-fun b!6605986 () Bool)

(assert (=> b!6605986 (= e!3996952 None!16363)))

(declare-fun d!2071526 () Bool)

(declare-fun e!3996951 () Bool)

(assert (=> d!2071526 e!3996951))

(declare-fun res!2708739 () Bool)

(assert (=> d!2071526 (=> res!2708739 e!3996951)))

(declare-fun e!3996954 () Bool)

(assert (=> d!2071526 (= res!2708739 e!3996954)))

(declare-fun res!2708740 () Bool)

(assert (=> d!2071526 (=> (not res!2708740) (not e!3996954))))

(declare-fun lt!2414860 () Option!16364)

(assert (=> d!2071526 (= res!2708740 (isDefined!13067 lt!2414860))))

(assert (=> d!2071526 (= lt!2414860 e!3996953)))

(declare-fun c!1217246 () Bool)

(declare-fun e!3996950 () Bool)

(assert (=> d!2071526 (= c!1217246 e!3996950)))

(declare-fun res!2708741 () Bool)

(assert (=> d!2071526 (=> (not res!2708741) (not e!3996950))))

(assert (=> d!2071526 (= res!2708741 (matchR!8656 (reg!16802 (regOne!33458 r!7292)) Nil!65594))))

(assert (=> d!2071526 (validRegex!8209 (reg!16802 (regOne!33458 r!7292)))))

(assert (=> d!2071526 (= (findConcatSeparation!2778 (reg!16802 (regOne!33458 r!7292)) lt!2414680 Nil!65594 Nil!65594 Nil!65594) lt!2414860)))

(declare-fun b!6605987 () Bool)

(declare-fun res!2708743 () Bool)

(assert (=> b!6605987 (=> (not res!2708743) (not e!3996954))))

(declare-fun get!22791 (Option!16364) tuple2!66904)

(assert (=> b!6605987 (= res!2708743 (matchR!8656 lt!2414680 (_2!36755 (get!22791 lt!2414860))))))

(declare-fun b!6605988 () Bool)

(assert (=> b!6605988 (= e!3996950 (matchR!8656 lt!2414680 Nil!65594))))

(declare-fun b!6605989 () Bool)

(assert (=> b!6605989 (= e!3996951 (not (isDefined!13067 lt!2414860)))))

(declare-fun b!6605990 () Bool)

(assert (=> b!6605990 (= e!3996954 (= (++!14619 (_1!36755 (get!22791 lt!2414860)) (_2!36755 (get!22791 lt!2414860))) Nil!65594))))

(declare-fun b!6605991 () Bool)

(declare-fun res!2708742 () Bool)

(assert (=> b!6605991 (=> (not res!2708742) (not e!3996954))))

(assert (=> b!6605991 (= res!2708742 (matchR!8656 (reg!16802 (regOne!33458 r!7292)) (_1!36755 (get!22791 lt!2414860))))))

(assert (= (and d!2071526 res!2708741) b!6605988))

(assert (= (and d!2071526 c!1217246) b!6605984))

(assert (= (and d!2071526 (not c!1217246)) b!6605983))

(assert (= (and b!6605983 c!1217245) b!6605986))

(assert (= (and b!6605983 (not c!1217245)) b!6605985))

(assert (= (and d!2071526 res!2708740) b!6605991))

(assert (= (and b!6605991 res!2708742) b!6605987))

(assert (= (and b!6605987 res!2708743) b!6605990))

(assert (= (and d!2071526 (not res!2708739)) b!6605989))

(declare-fun m!7381228 () Bool)

(assert (=> b!6605987 m!7381228))

(declare-fun m!7381230 () Bool)

(assert (=> b!6605987 m!7381230))

(declare-fun m!7381232 () Bool)

(assert (=> d!2071526 m!7381232))

(declare-fun m!7381234 () Bool)

(assert (=> d!2071526 m!7381234))

(assert (=> d!2071526 m!7381194))

(assert (=> b!6605990 m!7381228))

(declare-fun m!7381236 () Bool)

(assert (=> b!6605990 m!7381236))

(assert (=> b!6605989 m!7381232))

(assert (=> b!6605988 m!7380368))

(declare-fun m!7381238 () Bool)

(assert (=> b!6605985 m!7381238))

(assert (=> b!6605985 m!7381238))

(declare-fun m!7381240 () Bool)

(assert (=> b!6605985 m!7381240))

(declare-fun m!7381242 () Bool)

(assert (=> b!6605985 m!7381242))

(assert (=> b!6605985 m!7381238))

(declare-fun m!7381244 () Bool)

(assert (=> b!6605985 m!7381244))

(assert (=> b!6605991 m!7381228))

(declare-fun m!7381246 () Bool)

(assert (=> b!6605991 m!7381246))

(assert (=> b!6604955 d!2071526))

(assert (=> b!6604976 d!2071474))

(declare-fun d!2071528 () Bool)

(assert (=> d!2071528 (= (flatMap!1978 lt!2414686 lambda!368398) (choose!49327 lt!2414686 lambda!368398))))

(declare-fun bs!1693268 () Bool)

(assert (= bs!1693268 d!2071528))

(declare-fun m!7381248 () Bool)

(assert (=> bs!1693268 m!7381248))

(assert (=> b!6604956 d!2071528))

(declare-fun b!6605992 () Bool)

(declare-fun e!3996955 () (InoxSet Context!11714))

(declare-fun e!3996957 () (InoxSet Context!11714))

(assert (=> b!6605992 (= e!3996955 e!3996957)))

(declare-fun c!1217248 () Bool)

(assert (=> b!6605992 (= c!1217248 ((_ is Cons!65595) (exprs!6357 lt!2414700)))))

(declare-fun b!6605993 () Bool)

(declare-fun call!577906 () (InoxSet Context!11714))

(assert (=> b!6605993 (= e!3996957 call!577906)))

(declare-fun d!2071530 () Bool)

(declare-fun c!1217247 () Bool)

(declare-fun e!3996956 () Bool)

(assert (=> d!2071530 (= c!1217247 e!3996956)))

(declare-fun res!2708744 () Bool)

(assert (=> d!2071530 (=> (not res!2708744) (not e!3996956))))

(assert (=> d!2071530 (= res!2708744 ((_ is Cons!65595) (exprs!6357 lt!2414700)))))

(assert (=> d!2071530 (= (derivationStepZipperUp!1647 lt!2414700 (h!72042 s!2326)) e!3996955)))

(declare-fun b!6605994 () Bool)

(assert (=> b!6605994 (= e!3996956 (nullable!6466 (h!72043 (exprs!6357 lt!2414700))))))

(declare-fun b!6605995 () Bool)

(assert (=> b!6605995 (= e!3996957 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6605996 () Bool)

(assert (=> b!6605996 (= e!3996955 ((_ map or) call!577906 (derivationStepZipperUp!1647 (Context!11715 (t!379371 (exprs!6357 lt!2414700))) (h!72042 s!2326))))))

(declare-fun bm!577901 () Bool)

(assert (=> bm!577901 (= call!577906 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 lt!2414700)) (Context!11715 (t!379371 (exprs!6357 lt!2414700))) (h!72042 s!2326)))))

(assert (= (and d!2071530 res!2708744) b!6605994))

(assert (= (and d!2071530 c!1217247) b!6605996))

(assert (= (and d!2071530 (not c!1217247)) b!6605992))

(assert (= (and b!6605992 c!1217248) b!6605993))

(assert (= (and b!6605992 (not c!1217248)) b!6605995))

(assert (= (or b!6605996 b!6605993) bm!577901))

(declare-fun m!7381250 () Bool)

(assert (=> b!6605994 m!7381250))

(declare-fun m!7381252 () Bool)

(assert (=> b!6605996 m!7381252))

(declare-fun m!7381254 () Bool)

(assert (=> bm!577901 m!7381254))

(assert (=> b!6604956 d!2071530))

(declare-fun d!2071532 () Bool)

(assert (=> d!2071532 (= (flatMap!1978 lt!2414686 lambda!368398) (dynLambda!26120 lambda!368398 lt!2414700))))

(declare-fun lt!2414863 () Unit!159227)

(assert (=> d!2071532 (= lt!2414863 (choose!49328 lt!2414686 lt!2414700 lambda!368398))))

(assert (=> d!2071532 (= lt!2414686 (store ((as const (Array Context!11714 Bool)) false) lt!2414700 true))))

(assert (=> d!2071532 (= (lemmaFlatMapOnSingletonSet!1504 lt!2414686 lt!2414700 lambda!368398) lt!2414863)))

(declare-fun b_lambda!249963 () Bool)

(assert (=> (not b_lambda!249963) (not d!2071532)))

(declare-fun bs!1693269 () Bool)

(assert (= bs!1693269 d!2071532))

(assert (=> bs!1693269 m!7380466))

(declare-fun m!7381256 () Bool)

(assert (=> bs!1693269 m!7381256))

(declare-fun m!7381258 () Bool)

(assert (=> bs!1693269 m!7381258))

(assert (=> bs!1693269 m!7380460))

(assert (=> b!6604956 d!2071532))

(declare-fun bs!1693270 () Bool)

(declare-fun d!2071534 () Bool)

(assert (= bs!1693270 (and d!2071534 b!6604977)))

(declare-fun lambda!368501 () Int)

(assert (=> bs!1693270 (= lambda!368501 lambda!368398)))

(declare-fun bs!1693271 () Bool)

(assert (= bs!1693271 (and d!2071534 d!2071464)))

(assert (=> bs!1693271 (= lambda!368501 lambda!368471)))

(assert (=> d!2071534 true))

(assert (=> d!2071534 (= (derivationStepZipper!2439 lt!2414686 (h!72042 s!2326)) (flatMap!1978 lt!2414686 lambda!368501))))

(declare-fun bs!1693272 () Bool)

(assert (= bs!1693272 d!2071534))

(declare-fun m!7381260 () Bool)

(assert (=> bs!1693272 m!7381260))

(assert (=> b!6604956 d!2071534))

(declare-fun bm!577902 () Bool)

(declare-fun call!577909 () Bool)

(declare-fun call!577907 () Bool)

(assert (=> bm!577902 (= call!577909 call!577907)))

(declare-fun d!2071536 () Bool)

(declare-fun res!2708748 () Bool)

(declare-fun e!3996963 () Bool)

(assert (=> d!2071536 (=> res!2708748 e!3996963)))

(assert (=> d!2071536 (= res!2708748 ((_ is ElementMatch!16473) r!7292))))

(assert (=> d!2071536 (= (validRegex!8209 r!7292) e!3996963)))

(declare-fun b!6605997 () Bool)

(declare-fun e!3996958 () Bool)

(assert (=> b!6605997 (= e!3996963 e!3996958)))

(declare-fun c!1217250 () Bool)

(assert (=> b!6605997 (= c!1217250 ((_ is Star!16473) r!7292))))

(declare-fun b!6605998 () Bool)

(declare-fun e!3996959 () Bool)

(assert (=> b!6605998 (= e!3996958 e!3996959)))

(declare-fun c!1217249 () Bool)

(assert (=> b!6605998 (= c!1217249 ((_ is Union!16473) r!7292))))

(declare-fun bm!577903 () Bool)

(declare-fun call!577908 () Bool)

(assert (=> bm!577903 (= call!577908 (validRegex!8209 (ite c!1217249 (regTwo!33459 r!7292) (regTwo!33458 r!7292))))))

(declare-fun b!6605999 () Bool)

(declare-fun e!3996962 () Bool)

(assert (=> b!6605999 (= e!3996962 call!577908)))

(declare-fun bm!577904 () Bool)

(assert (=> bm!577904 (= call!577907 (validRegex!8209 (ite c!1217250 (reg!16802 r!7292) (ite c!1217249 (regOne!33459 r!7292) (regOne!33458 r!7292)))))))

(declare-fun b!6606000 () Bool)

(declare-fun e!3996964 () Bool)

(assert (=> b!6606000 (= e!3996964 e!3996962)))

(declare-fun res!2708747 () Bool)

(assert (=> b!6606000 (=> (not res!2708747) (not e!3996962))))

(assert (=> b!6606000 (= res!2708747 call!577909)))

(declare-fun b!6606001 () Bool)

(declare-fun e!3996961 () Bool)

(assert (=> b!6606001 (= e!3996961 call!577907)))

(declare-fun b!6606002 () Bool)

(declare-fun res!2708749 () Bool)

(declare-fun e!3996960 () Bool)

(assert (=> b!6606002 (=> (not res!2708749) (not e!3996960))))

(assert (=> b!6606002 (= res!2708749 call!577909)))

(assert (=> b!6606002 (= e!3996959 e!3996960)))

(declare-fun b!6606003 () Bool)

(assert (=> b!6606003 (= e!3996960 call!577908)))

(declare-fun b!6606004 () Bool)

(assert (=> b!6606004 (= e!3996958 e!3996961)))

(declare-fun res!2708746 () Bool)

(assert (=> b!6606004 (= res!2708746 (not (nullable!6466 (reg!16802 r!7292))))))

(assert (=> b!6606004 (=> (not res!2708746) (not e!3996961))))

(declare-fun b!6606005 () Bool)

(declare-fun res!2708745 () Bool)

(assert (=> b!6606005 (=> res!2708745 e!3996964)))

(assert (=> b!6606005 (= res!2708745 (not ((_ is Concat!25318) r!7292)))))

(assert (=> b!6606005 (= e!3996959 e!3996964)))

(assert (= (and d!2071536 (not res!2708748)) b!6605997))

(assert (= (and b!6605997 c!1217250) b!6606004))

(assert (= (and b!6605997 (not c!1217250)) b!6605998))

(assert (= (and b!6606004 res!2708746) b!6606001))

(assert (= (and b!6605998 c!1217249) b!6606002))

(assert (= (and b!6605998 (not c!1217249)) b!6606005))

(assert (= (and b!6606002 res!2708749) b!6606003))

(assert (= (and b!6606005 (not res!2708745)) b!6606000))

(assert (= (and b!6606000 res!2708747) b!6605999))

(assert (= (or b!6606003 b!6605999) bm!577903))

(assert (= (or b!6606002 b!6606000) bm!577902))

(assert (= (or b!6606001 bm!577902) bm!577904))

(declare-fun m!7381262 () Bool)

(assert (=> bm!577903 m!7381262))

(declare-fun m!7381264 () Bool)

(assert (=> bm!577904 m!7381264))

(declare-fun m!7381266 () Bool)

(assert (=> b!6606004 m!7381266))

(assert (=> start!645774 d!2071536))

(declare-fun b!6606006 () Bool)

(declare-fun e!3996968 () Option!16364)

(declare-fun e!3996967 () Option!16364)

(assert (=> b!6606006 (= e!3996968 e!3996967)))

(declare-fun c!1217251 () Bool)

(assert (=> b!6606006 (= c!1217251 ((_ is Nil!65594) s!2326))))

(declare-fun b!6606007 () Bool)

(assert (=> b!6606007 (= e!3996968 (Some!16363 (tuple2!66905 Nil!65594 s!2326)))))

(declare-fun b!6606008 () Bool)

(declare-fun lt!2414866 () Unit!159227)

(declare-fun lt!2414865 () Unit!159227)

(assert (=> b!6606008 (= lt!2414866 lt!2414865)))

(assert (=> b!6606008 (= (++!14619 (++!14619 Nil!65594 (Cons!65594 (h!72042 s!2326) Nil!65594)) (t!379370 s!2326)) s!2326)))

(assert (=> b!6606008 (= lt!2414865 (lemmaMoveElementToOtherListKeepsConcatEq!2616 Nil!65594 (h!72042 s!2326) (t!379370 s!2326) s!2326))))

(assert (=> b!6606008 (= e!3996967 (findConcatSeparation!2778 (regOne!33458 r!7292) (regTwo!33458 r!7292) (++!14619 Nil!65594 (Cons!65594 (h!72042 s!2326) Nil!65594)) (t!379370 s!2326) s!2326))))

(declare-fun b!6606009 () Bool)

(assert (=> b!6606009 (= e!3996967 None!16363)))

(declare-fun d!2071538 () Bool)

(declare-fun e!3996966 () Bool)

(assert (=> d!2071538 e!3996966))

(declare-fun res!2708750 () Bool)

(assert (=> d!2071538 (=> res!2708750 e!3996966)))

(declare-fun e!3996969 () Bool)

(assert (=> d!2071538 (= res!2708750 e!3996969)))

(declare-fun res!2708751 () Bool)

(assert (=> d!2071538 (=> (not res!2708751) (not e!3996969))))

(declare-fun lt!2414864 () Option!16364)

(assert (=> d!2071538 (= res!2708751 (isDefined!13067 lt!2414864))))

(assert (=> d!2071538 (= lt!2414864 e!3996968)))

(declare-fun c!1217252 () Bool)

(declare-fun e!3996965 () Bool)

(assert (=> d!2071538 (= c!1217252 e!3996965)))

(declare-fun res!2708752 () Bool)

(assert (=> d!2071538 (=> (not res!2708752) (not e!3996965))))

(assert (=> d!2071538 (= res!2708752 (matchR!8656 (regOne!33458 r!7292) Nil!65594))))

(assert (=> d!2071538 (validRegex!8209 (regOne!33458 r!7292))))

(assert (=> d!2071538 (= (findConcatSeparation!2778 (regOne!33458 r!7292) (regTwo!33458 r!7292) Nil!65594 s!2326 s!2326) lt!2414864)))

(declare-fun b!6606010 () Bool)

(declare-fun res!2708754 () Bool)

(assert (=> b!6606010 (=> (not res!2708754) (not e!3996969))))

(assert (=> b!6606010 (= res!2708754 (matchR!8656 (regTwo!33458 r!7292) (_2!36755 (get!22791 lt!2414864))))))

(declare-fun b!6606011 () Bool)

(assert (=> b!6606011 (= e!3996965 (matchR!8656 (regTwo!33458 r!7292) s!2326))))

(declare-fun b!6606012 () Bool)

(assert (=> b!6606012 (= e!3996966 (not (isDefined!13067 lt!2414864)))))

(declare-fun b!6606013 () Bool)

(assert (=> b!6606013 (= e!3996969 (= (++!14619 (_1!36755 (get!22791 lt!2414864)) (_2!36755 (get!22791 lt!2414864))) s!2326))))

(declare-fun b!6606014 () Bool)

(declare-fun res!2708753 () Bool)

(assert (=> b!6606014 (=> (not res!2708753) (not e!3996969))))

(assert (=> b!6606014 (= res!2708753 (matchR!8656 (regOne!33458 r!7292) (_1!36755 (get!22791 lt!2414864))))))

(assert (= (and d!2071538 res!2708752) b!6606011))

(assert (= (and d!2071538 c!1217252) b!6606007))

(assert (= (and d!2071538 (not c!1217252)) b!6606006))

(assert (= (and b!6606006 c!1217251) b!6606009))

(assert (= (and b!6606006 (not c!1217251)) b!6606008))

(assert (= (and d!2071538 res!2708751) b!6606014))

(assert (= (and b!6606014 res!2708753) b!6606010))

(assert (= (and b!6606010 res!2708754) b!6606013))

(assert (= (and d!2071538 (not res!2708750)) b!6606012))

(declare-fun m!7381268 () Bool)

(assert (=> b!6606010 m!7381268))

(declare-fun m!7381270 () Bool)

(assert (=> b!6606010 m!7381270))

(declare-fun m!7381272 () Bool)

(assert (=> d!2071538 m!7381272))

(declare-fun m!7381274 () Bool)

(assert (=> d!2071538 m!7381274))

(declare-fun m!7381276 () Bool)

(assert (=> d!2071538 m!7381276))

(assert (=> b!6606013 m!7381268))

(declare-fun m!7381278 () Bool)

(assert (=> b!6606013 m!7381278))

(assert (=> b!6606012 m!7381272))

(assert (=> b!6606011 m!7380486))

(declare-fun m!7381280 () Bool)

(assert (=> b!6606008 m!7381280))

(assert (=> b!6606008 m!7381280))

(declare-fun m!7381282 () Bool)

(assert (=> b!6606008 m!7381282))

(declare-fun m!7381284 () Bool)

(assert (=> b!6606008 m!7381284))

(assert (=> b!6606008 m!7381280))

(declare-fun m!7381286 () Bool)

(assert (=> b!6606008 m!7381286))

(assert (=> b!6606014 m!7381268))

(declare-fun m!7381288 () Bool)

(assert (=> b!6606014 m!7381288))

(assert (=> b!6604972 d!2071538))

(declare-fun d!2071540 () Bool)

(assert (=> d!2071540 (= (Exists!3543 lambda!368396) (choose!49332 lambda!368396))))

(declare-fun bs!1693273 () Bool)

(assert (= bs!1693273 d!2071540))

(declare-fun m!7381290 () Bool)

(assert (=> bs!1693273 m!7381290))

(assert (=> b!6604972 d!2071540))

(declare-fun d!2071542 () Bool)

(assert (=> d!2071542 (= (Exists!3543 lambda!368397) (choose!49332 lambda!368397))))

(declare-fun bs!1693274 () Bool)

(assert (= bs!1693274 d!2071542))

(declare-fun m!7381292 () Bool)

(assert (=> bs!1693274 m!7381292))

(assert (=> b!6604972 d!2071542))

(declare-fun bs!1693275 () Bool)

(declare-fun d!2071544 () Bool)

(assert (= bs!1693275 (and d!2071544 b!6604955)))

(declare-fun lambda!368502 () Int)

(assert (=> bs!1693275 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368502 lambda!368399))))

(assert (=> bs!1693275 (not (= lambda!368502 lambda!368401))))

(declare-fun bs!1693276 () Bool)

(assert (= bs!1693276 (and d!2071544 b!6605808)))

(assert (=> bs!1693276 (not (= lambda!368502 lambda!368479))))

(declare-fun bs!1693277 () Bool)

(assert (= bs!1693277 (and d!2071544 b!6605915)))

(assert (=> bs!1693277 (not (= lambda!368502 lambda!368484))))

(declare-fun bs!1693278 () Bool)

(assert (= bs!1693278 (and d!2071544 d!2071524)))

(assert (=> bs!1693278 (not (= lambda!368502 lambda!368500))))

(declare-fun bs!1693279 () Bool)

(assert (= bs!1693279 (and d!2071544 b!6605812)))

(assert (=> bs!1693279 (not (= lambda!368502 lambda!368478))))

(declare-fun bs!1693280 () Bool)

(assert (= bs!1693280 (and d!2071544 d!2071520)))

(assert (=> bs!1693280 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) (Star!16473 (reg!16802 (regOne!33458 r!7292))))) (= lambda!368502 lambda!368493))))

(assert (=> bs!1693280 (not (= lambda!368502 lambda!368494))))

(declare-fun bs!1693281 () Bool)

(assert (= bs!1693281 (and d!2071544 b!6604972)))

(assert (=> bs!1693281 (= lambda!368502 lambda!368396)))

(assert (=> bs!1693278 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368502 lambda!368499))))

(declare-fun bs!1693282 () Bool)

(assert (= bs!1693282 (and d!2071544 b!6605911)))

(assert (=> bs!1693282 (not (= lambda!368502 lambda!368485))))

(declare-fun bs!1693283 () Bool)

(assert (= bs!1693283 (and d!2071544 b!6605617)))

(assert (=> bs!1693283 (not (= lambda!368502 lambda!368463))))

(declare-fun bs!1693284 () Bool)

(assert (= bs!1693284 (and d!2071544 b!6605613)))

(assert (=> bs!1693284 (not (= lambda!368502 lambda!368465))))

(assert (=> bs!1693281 (not (= lambda!368502 lambda!368397))))

(declare-fun bs!1693285 () Bool)

(assert (= bs!1693285 (and d!2071544 d!2071516)))

(assert (=> bs!1693285 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368502 lambda!368488))))

(assert (=> bs!1693275 (not (= lambda!368502 lambda!368400))))

(assert (=> d!2071544 true))

(assert (=> d!2071544 true))

(assert (=> d!2071544 true))

(assert (=> d!2071544 (= (isDefined!13067 (findConcatSeparation!2778 (regOne!33458 r!7292) (regTwo!33458 r!7292) Nil!65594 s!2326 s!2326)) (Exists!3543 lambda!368502))))

(declare-fun lt!2414867 () Unit!159227)

(assert (=> d!2071544 (= lt!2414867 (choose!49333 (regOne!33458 r!7292) (regTwo!33458 r!7292) s!2326))))

(assert (=> d!2071544 (validRegex!8209 (regOne!33458 r!7292))))

(assert (=> d!2071544 (= (lemmaFindConcatSeparationEquivalentToExists!2542 (regOne!33458 r!7292) (regTwo!33458 r!7292) s!2326) lt!2414867)))

(declare-fun bs!1693286 () Bool)

(assert (= bs!1693286 d!2071544))

(assert (=> bs!1693286 m!7380394))

(assert (=> bs!1693286 m!7380396))

(declare-fun m!7381294 () Bool)

(assert (=> bs!1693286 m!7381294))

(assert (=> bs!1693286 m!7380394))

(assert (=> bs!1693286 m!7381276))

(declare-fun m!7381296 () Bool)

(assert (=> bs!1693286 m!7381296))

(assert (=> b!6604972 d!2071544))

(declare-fun bs!1693287 () Bool)

(declare-fun d!2071546 () Bool)

(assert (= bs!1693287 (and d!2071546 b!6604955)))

(declare-fun lambda!368503 () Int)

(assert (=> bs!1693287 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368503 lambda!368399))))

(assert (=> bs!1693287 (not (= lambda!368503 lambda!368401))))

(declare-fun bs!1693288 () Bool)

(assert (= bs!1693288 (and d!2071546 b!6605808)))

(assert (=> bs!1693288 (not (= lambda!368503 lambda!368479))))

(declare-fun bs!1693289 () Bool)

(assert (= bs!1693289 (and d!2071546 b!6605915)))

(assert (=> bs!1693289 (not (= lambda!368503 lambda!368484))))

(declare-fun bs!1693290 () Bool)

(assert (= bs!1693290 (and d!2071546 d!2071524)))

(assert (=> bs!1693290 (not (= lambda!368503 lambda!368500))))

(declare-fun bs!1693291 () Bool)

(assert (= bs!1693291 (and d!2071546 d!2071520)))

(assert (=> bs!1693291 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) (Star!16473 (reg!16802 (regOne!33458 r!7292))))) (= lambda!368503 lambda!368493))))

(assert (=> bs!1693291 (not (= lambda!368503 lambda!368494))))

(declare-fun bs!1693292 () Bool)

(assert (= bs!1693292 (and d!2071546 b!6604972)))

(assert (=> bs!1693292 (= lambda!368503 lambda!368396)))

(assert (=> bs!1693290 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368503 lambda!368499))))

(declare-fun bs!1693293 () Bool)

(assert (= bs!1693293 (and d!2071546 b!6605911)))

(assert (=> bs!1693293 (not (= lambda!368503 lambda!368485))))

(declare-fun bs!1693294 () Bool)

(assert (= bs!1693294 (and d!2071546 b!6605617)))

(assert (=> bs!1693294 (not (= lambda!368503 lambda!368463))))

(declare-fun bs!1693295 () Bool)

(assert (= bs!1693295 (and d!2071546 d!2071544)))

(assert (=> bs!1693295 (= lambda!368503 lambda!368502)))

(declare-fun bs!1693296 () Bool)

(assert (= bs!1693296 (and d!2071546 b!6605812)))

(assert (=> bs!1693296 (not (= lambda!368503 lambda!368478))))

(declare-fun bs!1693297 () Bool)

(assert (= bs!1693297 (and d!2071546 b!6605613)))

(assert (=> bs!1693297 (not (= lambda!368503 lambda!368465))))

(assert (=> bs!1693292 (not (= lambda!368503 lambda!368397))))

(declare-fun bs!1693298 () Bool)

(assert (= bs!1693298 (and d!2071546 d!2071516)))

(assert (=> bs!1693298 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368503 lambda!368488))))

(assert (=> bs!1693287 (not (= lambda!368503 lambda!368400))))

(assert (=> d!2071546 true))

(assert (=> d!2071546 true))

(assert (=> d!2071546 true))

(declare-fun lambda!368504 () Int)

(assert (=> bs!1693287 (not (= lambda!368504 lambda!368399))))

(assert (=> bs!1693287 (not (= lambda!368504 lambda!368401))))

(declare-fun bs!1693299 () Bool)

(assert (= bs!1693299 d!2071546))

(assert (=> bs!1693299 (not (= lambda!368504 lambda!368503))))

(assert (=> bs!1693288 (= lambda!368504 lambda!368479)))

(assert (=> bs!1693289 (not (= lambda!368504 lambda!368484))))

(assert (=> bs!1693290 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368504 lambda!368500))))

(assert (=> bs!1693291 (not (= lambda!368504 lambda!368493))))

(assert (=> bs!1693291 (not (= lambda!368504 lambda!368494))))

(assert (=> bs!1693292 (not (= lambda!368504 lambda!368396))))

(assert (=> bs!1693290 (not (= lambda!368504 lambda!368499))))

(assert (=> bs!1693293 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (regOne!33458 lt!2414680)) (= (regTwo!33458 r!7292) (regTwo!33458 lt!2414680))) (= lambda!368504 lambda!368485))))

(assert (=> bs!1693294 (not (= lambda!368504 lambda!368463))))

(assert (=> bs!1693295 (not (= lambda!368504 lambda!368502))))

(assert (=> bs!1693296 (not (= lambda!368504 lambda!368478))))

(assert (=> bs!1693297 (= (and (= (regOne!33458 r!7292) (regOne!33458 lt!2414695)) (= (regTwo!33458 r!7292) (regTwo!33458 lt!2414695))) (= lambda!368504 lambda!368465))))

(assert (=> bs!1693292 (= lambda!368504 lambda!368397)))

(assert (=> bs!1693298 (not (= lambda!368504 lambda!368488))))

(assert (=> bs!1693287 (= (and (= s!2326 Nil!65594) (= (regOne!33458 r!7292) (reg!16802 (regOne!33458 r!7292))) (= (regTwo!33458 r!7292) lt!2414680)) (= lambda!368504 lambda!368400))))

(assert (=> d!2071546 true))

(assert (=> d!2071546 true))

(assert (=> d!2071546 true))

(assert (=> d!2071546 (= (Exists!3543 lambda!368503) (Exists!3543 lambda!368504))))

(declare-fun lt!2414868 () Unit!159227)

(assert (=> d!2071546 (= lt!2414868 (choose!49337 (regOne!33458 r!7292) (regTwo!33458 r!7292) s!2326))))

(assert (=> d!2071546 (validRegex!8209 (regOne!33458 r!7292))))

(assert (=> d!2071546 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2080 (regOne!33458 r!7292) (regTwo!33458 r!7292) s!2326) lt!2414868)))

(declare-fun m!7381298 () Bool)

(assert (=> bs!1693299 m!7381298))

(declare-fun m!7381300 () Bool)

(assert (=> bs!1693299 m!7381300))

(declare-fun m!7381302 () Bool)

(assert (=> bs!1693299 m!7381302))

(assert (=> bs!1693299 m!7381276))

(assert (=> b!6604972 d!2071546))

(declare-fun d!2071548 () Bool)

(assert (=> d!2071548 (= (isDefined!13067 (findConcatSeparation!2778 (regOne!33458 r!7292) (regTwo!33458 r!7292) Nil!65594 s!2326 s!2326)) (not (isEmpty!37874 (findConcatSeparation!2778 (regOne!33458 r!7292) (regTwo!33458 r!7292) Nil!65594 s!2326 s!2326))))))

(declare-fun bs!1693300 () Bool)

(assert (= bs!1693300 d!2071548))

(assert (=> bs!1693300 m!7380394))

(declare-fun m!7381304 () Bool)

(assert (=> bs!1693300 m!7381304))

(assert (=> b!6604972 d!2071548))

(declare-fun d!2071550 () Bool)

(declare-fun c!1217253 () Bool)

(assert (=> d!2071550 (= c!1217253 (isEmpty!37873 s!2326))))

(declare-fun e!3996970 () Bool)

(assert (=> d!2071550 (= (matchZipper!2485 z!1189 s!2326) e!3996970)))

(declare-fun b!6606015 () Bool)

(assert (=> b!6606015 (= e!3996970 (nullableZipper!2217 z!1189))))

(declare-fun b!6606016 () Bool)

(assert (=> b!6606016 (= e!3996970 (matchZipper!2485 (derivationStepZipper!2439 z!1189 (head!13397 s!2326)) (tail!12482 s!2326)))))

(assert (= (and d!2071550 c!1217253) b!6606015))

(assert (= (and d!2071550 (not c!1217253)) b!6606016))

(assert (=> d!2071550 m!7380904))

(declare-fun m!7381306 () Bool)

(assert (=> b!6606015 m!7381306))

(assert (=> b!6606016 m!7380896))

(assert (=> b!6606016 m!7380896))

(declare-fun m!7381308 () Bool)

(assert (=> b!6606016 m!7381308))

(assert (=> b!6606016 m!7380900))

(assert (=> b!6606016 m!7381308))

(assert (=> b!6606016 m!7380900))

(declare-fun m!7381310 () Bool)

(assert (=> b!6606016 m!7381310))

(assert (=> b!6604953 d!2071550))

(declare-fun d!2071552 () Bool)

(declare-fun c!1217254 () Bool)

(assert (=> d!2071552 (= c!1217254 (isEmpty!37873 s!2326))))

(declare-fun e!3996971 () Bool)

(assert (=> d!2071552 (= (matchZipper!2485 lt!2414686 s!2326) e!3996971)))

(declare-fun b!6606017 () Bool)

(assert (=> b!6606017 (= e!3996971 (nullableZipper!2217 lt!2414686))))

(declare-fun b!6606018 () Bool)

(assert (=> b!6606018 (= e!3996971 (matchZipper!2485 (derivationStepZipper!2439 lt!2414686 (head!13397 s!2326)) (tail!12482 s!2326)))))

(assert (= (and d!2071552 c!1217254) b!6606017))

(assert (= (and d!2071552 (not c!1217254)) b!6606018))

(assert (=> d!2071552 m!7380904))

(declare-fun m!7381312 () Bool)

(assert (=> b!6606017 m!7381312))

(assert (=> b!6606018 m!7380896))

(assert (=> b!6606018 m!7380896))

(declare-fun m!7381314 () Bool)

(assert (=> b!6606018 m!7381314))

(assert (=> b!6606018 m!7380900))

(assert (=> b!6606018 m!7381314))

(assert (=> b!6606018 m!7380900))

(declare-fun m!7381316 () Bool)

(assert (=> b!6606018 m!7381316))

(assert (=> b!6604973 d!2071552))

(declare-fun d!2071554 () Bool)

(declare-fun c!1217255 () Bool)

(assert (=> d!2071554 (= c!1217255 (isEmpty!37873 (t!379370 s!2326)))))

(declare-fun e!3996972 () Bool)

(assert (=> d!2071554 (= (matchZipper!2485 lt!2414711 (t!379370 s!2326)) e!3996972)))

(declare-fun b!6606019 () Bool)

(assert (=> b!6606019 (= e!3996972 (nullableZipper!2217 lt!2414711))))

(declare-fun b!6606020 () Bool)

(assert (=> b!6606020 (= e!3996972 (matchZipper!2485 (derivationStepZipper!2439 lt!2414711 (head!13397 (t!379370 s!2326))) (tail!12482 (t!379370 s!2326))))))

(assert (= (and d!2071554 c!1217255) b!6606019))

(assert (= (and d!2071554 (not c!1217255)) b!6606020))

(assert (=> d!2071554 m!7380848))

(declare-fun m!7381318 () Bool)

(assert (=> b!6606019 m!7381318))

(assert (=> b!6606020 m!7380852))

(assert (=> b!6606020 m!7380852))

(declare-fun m!7381320 () Bool)

(assert (=> b!6606020 m!7381320))

(assert (=> b!6606020 m!7380856))

(assert (=> b!6606020 m!7381320))

(assert (=> b!6606020 m!7380856))

(declare-fun m!7381322 () Bool)

(assert (=> b!6606020 m!7381322))

(assert (=> b!6604973 d!2071554))

(declare-fun bm!577917 () Bool)

(declare-fun call!577923 () (InoxSet Context!11714))

(declare-fun call!577925 () (InoxSet Context!11714))

(assert (=> bm!577917 (= call!577923 call!577925)))

(declare-fun c!1217268 () Bool)

(declare-fun call!577927 () List!65719)

(declare-fun call!577926 () (InoxSet Context!11714))

(declare-fun bm!577918 () Bool)

(assert (=> bm!577918 (= call!577926 (derivationStepZipperDown!1721 (ite c!1217268 (regOne!33459 (reg!16802 (regOne!33458 r!7292))) (regOne!33458 (reg!16802 (regOne!33458 r!7292)))) (ite c!1217268 lt!2414696 (Context!11715 call!577927)) (h!72042 s!2326)))))

(declare-fun b!6606043 () Bool)

(declare-fun e!3996987 () (InoxSet Context!11714))

(declare-fun e!3996985 () (InoxSet Context!11714))

(assert (=> b!6606043 (= e!3996987 e!3996985)))

(assert (=> b!6606043 (= c!1217268 ((_ is Union!16473) (reg!16802 (regOne!33458 r!7292))))))

(declare-fun bm!577919 () Bool)

(declare-fun c!1217270 () Bool)

(declare-fun c!1217267 () Bool)

(declare-fun $colon$colon!2314 (List!65719 Regex!16473) List!65719)

(assert (=> bm!577919 (= call!577927 ($colon$colon!2314 (exprs!6357 lt!2414696) (ite (or c!1217267 c!1217270) (regTwo!33458 (reg!16802 (regOne!33458 r!7292))) (reg!16802 (regOne!33458 r!7292)))))))

(declare-fun call!577922 () List!65719)

(declare-fun bm!577920 () Bool)

(assert (=> bm!577920 (= call!577925 (derivationStepZipperDown!1721 (ite c!1217268 (regTwo!33459 (reg!16802 (regOne!33458 r!7292))) (ite c!1217267 (regTwo!33458 (reg!16802 (regOne!33458 r!7292))) (ite c!1217270 (regOne!33458 (reg!16802 (regOne!33458 r!7292))) (reg!16802 (reg!16802 (regOne!33458 r!7292)))))) (ite (or c!1217268 c!1217267) lt!2414696 (Context!11715 call!577922)) (h!72042 s!2326)))))

(declare-fun b!6606044 () Bool)

(declare-fun e!3996988 () Bool)

(assert (=> b!6606044 (= c!1217267 e!3996988)))

(declare-fun res!2708757 () Bool)

(assert (=> b!6606044 (=> (not res!2708757) (not e!3996988))))

(assert (=> b!6606044 (= res!2708757 ((_ is Concat!25318) (reg!16802 (regOne!33458 r!7292))))))

(declare-fun e!3996986 () (InoxSet Context!11714))

(assert (=> b!6606044 (= e!3996985 e!3996986)))

(declare-fun b!6606045 () Bool)

(assert (=> b!6606045 (= e!3996985 ((_ map or) call!577926 call!577925))))

(declare-fun b!6606046 () Bool)

(declare-fun e!3996989 () (InoxSet Context!11714))

(assert (=> b!6606046 (= e!3996989 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6606047 () Bool)

(assert (=> b!6606047 (= e!3996987 (store ((as const (Array Context!11714 Bool)) false) lt!2414696 true))))

(declare-fun b!6606048 () Bool)

(assert (=> b!6606048 (= e!3996988 (nullable!6466 (regOne!33458 (reg!16802 (regOne!33458 r!7292)))))))

(declare-fun b!6606049 () Bool)

(declare-fun call!577924 () (InoxSet Context!11714))

(assert (=> b!6606049 (= e!3996989 call!577924)))

(declare-fun bm!577921 () Bool)

(assert (=> bm!577921 (= call!577924 call!577923)))

(declare-fun b!6606050 () Bool)

(declare-fun e!3996990 () (InoxSet Context!11714))

(assert (=> b!6606050 (= e!3996990 call!577924)))

(declare-fun b!6606051 () Bool)

(assert (=> b!6606051 (= e!3996986 e!3996990)))

(assert (=> b!6606051 (= c!1217270 ((_ is Concat!25318) (reg!16802 (regOne!33458 r!7292))))))

(declare-fun bm!577922 () Bool)

(assert (=> bm!577922 (= call!577922 call!577927)))

(declare-fun d!2071556 () Bool)

(declare-fun c!1217269 () Bool)

(assert (=> d!2071556 (= c!1217269 (and ((_ is ElementMatch!16473) (reg!16802 (regOne!33458 r!7292))) (= (c!1216946 (reg!16802 (regOne!33458 r!7292))) (h!72042 s!2326))))))

(assert (=> d!2071556 (= (derivationStepZipperDown!1721 (reg!16802 (regOne!33458 r!7292)) lt!2414696 (h!72042 s!2326)) e!3996987)))

(declare-fun b!6606052 () Bool)

(assert (=> b!6606052 (= e!3996986 ((_ map or) call!577926 call!577923))))

(declare-fun b!6606053 () Bool)

(declare-fun c!1217266 () Bool)

(assert (=> b!6606053 (= c!1217266 ((_ is Star!16473) (reg!16802 (regOne!33458 r!7292))))))

(assert (=> b!6606053 (= e!3996990 e!3996989)))

(assert (= (and d!2071556 c!1217269) b!6606047))

(assert (= (and d!2071556 (not c!1217269)) b!6606043))

(assert (= (and b!6606043 c!1217268) b!6606045))

(assert (= (and b!6606043 (not c!1217268)) b!6606044))

(assert (= (and b!6606044 res!2708757) b!6606048))

(assert (= (and b!6606044 c!1217267) b!6606052))

(assert (= (and b!6606044 (not c!1217267)) b!6606051))

(assert (= (and b!6606051 c!1217270) b!6606050))

(assert (= (and b!6606051 (not c!1217270)) b!6606053))

(assert (= (and b!6606053 c!1217266) b!6606049))

(assert (= (and b!6606053 (not c!1217266)) b!6606046))

(assert (= (or b!6606050 b!6606049) bm!577922))

(assert (= (or b!6606050 b!6606049) bm!577921))

(assert (= (or b!6606052 bm!577922) bm!577919))

(assert (= (or b!6606052 bm!577921) bm!577917))

(assert (= (or b!6606045 bm!577917) bm!577920))

(assert (= (or b!6606045 b!6606052) bm!577918))

(declare-fun m!7381324 () Bool)

(assert (=> b!6606048 m!7381324))

(assert (=> b!6606047 m!7380388))

(declare-fun m!7381326 () Bool)

(assert (=> bm!577918 m!7381326))

(declare-fun m!7381328 () Bool)

(assert (=> bm!577920 m!7381328))

(declare-fun m!7381330 () Bool)

(assert (=> bm!577919 m!7381330))

(assert (=> b!6604974 d!2071556))

(declare-fun bs!1693301 () Bool)

(declare-fun d!2071558 () Bool)

(assert (= bs!1693301 (and d!2071558 d!2071440)))

(declare-fun lambda!368505 () Int)

(assert (=> bs!1693301 (= lambda!368505 lambda!368468)))

(declare-fun bs!1693302 () Bool)

(assert (= bs!1693302 (and d!2071558 d!2071502)))

(assert (=> bs!1693302 (= lambda!368505 lambda!368483)))

(declare-fun bs!1693303 () Bool)

(assert (= bs!1693303 (and d!2071558 d!2071484)))

(assert (=> bs!1693303 (= lambda!368505 lambda!368477)))

(declare-fun bs!1693304 () Bool)

(assert (= bs!1693304 (and d!2071558 d!2071498)))

(assert (=> bs!1693304 (= lambda!368505 lambda!368480)))

(declare-fun bs!1693305 () Bool)

(assert (= bs!1693305 (and d!2071558 d!2071482)))

(assert (=> bs!1693305 (= lambda!368505 lambda!368474)))

(assert (=> d!2071558 (= (inv!84429 setElem!45108) (forall!15669 (exprs!6357 setElem!45108) lambda!368505))))

(declare-fun bs!1693306 () Bool)

(assert (= bs!1693306 d!2071558))

(declare-fun m!7381332 () Bool)

(assert (=> bs!1693306 m!7381332))

(assert (=> setNonEmpty!45108 d!2071558))

(declare-fun d!2071560 () Bool)

(assert (=> d!2071560 (= (isEmpty!37869 (t!379372 zl!343)) ((_ is Nil!65596) (t!379372 zl!343)))))

(assert (=> b!6604960 d!2071560))

(declare-fun b!6606054 () Bool)

(declare-fun res!2708760 () Bool)

(declare-fun e!3996992 () Bool)

(assert (=> b!6606054 (=> (not res!2708760) (not e!3996992))))

(declare-fun call!577928 () Bool)

(assert (=> b!6606054 (= res!2708760 (not call!577928))))

(declare-fun b!6606055 () Bool)

(declare-fun e!3996991 () Bool)

(declare-fun e!3996994 () Bool)

(assert (=> b!6606055 (= e!3996991 e!3996994)))

(declare-fun res!2708765 () Bool)

(assert (=> b!6606055 (=> (not res!2708765) (not e!3996994))))

(declare-fun lt!2414869 () Bool)

(assert (=> b!6606055 (= res!2708765 (not lt!2414869))))

(declare-fun b!6606056 () Bool)

(assert (=> b!6606056 (= e!3996992 (= (head!13397 s!2326) (c!1216946 (regTwo!33458 r!7292))))))

(declare-fun b!6606057 () Bool)

(declare-fun res!2708759 () Bool)

(assert (=> b!6606057 (=> (not res!2708759) (not e!3996992))))

(assert (=> b!6606057 (= res!2708759 (isEmpty!37873 (tail!12482 s!2326)))))

(declare-fun b!6606058 () Bool)

(declare-fun e!3996993 () Bool)

(assert (=> b!6606058 (= e!3996993 (= lt!2414869 call!577928))))

(declare-fun d!2071562 () Bool)

(assert (=> d!2071562 e!3996993))

(declare-fun c!1217273 () Bool)

(assert (=> d!2071562 (= c!1217273 ((_ is EmptyExpr!16473) (regTwo!33458 r!7292)))))

(declare-fun e!3996997 () Bool)

(assert (=> d!2071562 (= lt!2414869 e!3996997)))

(declare-fun c!1217271 () Bool)

(assert (=> d!2071562 (= c!1217271 (isEmpty!37873 s!2326))))

(assert (=> d!2071562 (validRegex!8209 (regTwo!33458 r!7292))))

(assert (=> d!2071562 (= (matchR!8656 (regTwo!33458 r!7292) s!2326) lt!2414869)))

(declare-fun bm!577923 () Bool)

(assert (=> bm!577923 (= call!577928 (isEmpty!37873 s!2326))))

(declare-fun b!6606059 () Bool)

(declare-fun e!3996996 () Bool)

(assert (=> b!6606059 (= e!3996996 (not (= (head!13397 s!2326) (c!1216946 (regTwo!33458 r!7292)))))))

(declare-fun b!6606060 () Bool)

(assert (=> b!6606060 (= e!3996997 (nullable!6466 (regTwo!33458 r!7292)))))

(declare-fun b!6606061 () Bool)

(declare-fun res!2708761 () Bool)

(assert (=> b!6606061 (=> res!2708761 e!3996991)))

(assert (=> b!6606061 (= res!2708761 (not ((_ is ElementMatch!16473) (regTwo!33458 r!7292))))))

(declare-fun e!3996995 () Bool)

(assert (=> b!6606061 (= e!3996995 e!3996991)))

(declare-fun b!6606062 () Bool)

(assert (=> b!6606062 (= e!3996995 (not lt!2414869))))

(declare-fun b!6606063 () Bool)

(assert (=> b!6606063 (= e!3996997 (matchR!8656 (derivativeStep!5157 (regTwo!33458 r!7292) (head!13397 s!2326)) (tail!12482 s!2326)))))

(declare-fun b!6606064 () Bool)

(declare-fun res!2708764 () Bool)

(assert (=> b!6606064 (=> res!2708764 e!3996996)))

(assert (=> b!6606064 (= res!2708764 (not (isEmpty!37873 (tail!12482 s!2326))))))

(declare-fun b!6606065 () Bool)

(assert (=> b!6606065 (= e!3996993 e!3996995)))

(declare-fun c!1217272 () Bool)

(assert (=> b!6606065 (= c!1217272 ((_ is EmptyLang!16473) (regTwo!33458 r!7292)))))

(declare-fun b!6606066 () Bool)

(declare-fun res!2708758 () Bool)

(assert (=> b!6606066 (=> res!2708758 e!3996991)))

(assert (=> b!6606066 (= res!2708758 e!3996992)))

(declare-fun res!2708763 () Bool)

(assert (=> b!6606066 (=> (not res!2708763) (not e!3996992))))

(assert (=> b!6606066 (= res!2708763 lt!2414869)))

(declare-fun b!6606067 () Bool)

(assert (=> b!6606067 (= e!3996994 e!3996996)))

(declare-fun res!2708762 () Bool)

(assert (=> b!6606067 (=> res!2708762 e!3996996)))

(assert (=> b!6606067 (= res!2708762 call!577928)))

(assert (= (and d!2071562 c!1217271) b!6606060))

(assert (= (and d!2071562 (not c!1217271)) b!6606063))

(assert (= (and d!2071562 c!1217273) b!6606058))

(assert (= (and d!2071562 (not c!1217273)) b!6606065))

(assert (= (and b!6606065 c!1217272) b!6606062))

(assert (= (and b!6606065 (not c!1217272)) b!6606061))

(assert (= (and b!6606061 (not res!2708761)) b!6606066))

(assert (= (and b!6606066 res!2708763) b!6606054))

(assert (= (and b!6606054 res!2708760) b!6606057))

(assert (= (and b!6606057 res!2708759) b!6606056))

(assert (= (and b!6606066 (not res!2708758)) b!6606055))

(assert (= (and b!6606055 res!2708765) b!6606067))

(assert (= (and b!6606067 (not res!2708762)) b!6606064))

(assert (= (and b!6606064 (not res!2708764)) b!6606059))

(assert (= (or b!6606058 b!6606054 b!6606067) bm!577923))

(assert (=> b!6606056 m!7380896))

(declare-fun m!7381334 () Bool)

(assert (=> b!6606060 m!7381334))

(assert (=> b!6606064 m!7380900))

(assert (=> b!6606064 m!7380900))

(assert (=> b!6606064 m!7380902))

(assert (=> bm!577923 m!7380904))

(assert (=> b!6606059 m!7380896))

(assert (=> b!6606063 m!7380896))

(assert (=> b!6606063 m!7380896))

(declare-fun m!7381336 () Bool)

(assert (=> b!6606063 m!7381336))

(assert (=> b!6606063 m!7380900))

(assert (=> b!6606063 m!7381336))

(assert (=> b!6606063 m!7380900))

(declare-fun m!7381338 () Bool)

(assert (=> b!6606063 m!7381338))

(assert (=> b!6606057 m!7380900))

(assert (=> b!6606057 m!7380900))

(assert (=> b!6606057 m!7380902))

(assert (=> d!2071562 m!7380904))

(assert (=> d!2071562 m!7380446))

(assert (=> b!6604961 d!2071562))

(declare-fun b!6606068 () Bool)

(declare-fun res!2708768 () Bool)

(declare-fun e!3996999 () Bool)

(assert (=> b!6606068 (=> (not res!2708768) (not e!3996999))))

(declare-fun call!577929 () Bool)

(assert (=> b!6606068 (= res!2708768 (not call!577929))))

(declare-fun b!6606069 () Bool)

(declare-fun e!3996998 () Bool)

(declare-fun e!3997001 () Bool)

(assert (=> b!6606069 (= e!3996998 e!3997001)))

(declare-fun res!2708773 () Bool)

(assert (=> b!6606069 (=> (not res!2708773) (not e!3997001))))

(declare-fun lt!2414870 () Bool)

(assert (=> b!6606069 (= res!2708773 (not lt!2414870))))

(declare-fun b!6606070 () Bool)

(assert (=> b!6606070 (= e!3996999 (= (head!13397 s!2326) (c!1216946 lt!2414687)))))

(declare-fun b!6606071 () Bool)

(declare-fun res!2708767 () Bool)

(assert (=> b!6606071 (=> (not res!2708767) (not e!3996999))))

(assert (=> b!6606071 (= res!2708767 (isEmpty!37873 (tail!12482 s!2326)))))

(declare-fun b!6606072 () Bool)

(declare-fun e!3997000 () Bool)

(assert (=> b!6606072 (= e!3997000 (= lt!2414870 call!577929))))

(declare-fun d!2071564 () Bool)

(assert (=> d!2071564 e!3997000))

(declare-fun c!1217276 () Bool)

(assert (=> d!2071564 (= c!1217276 ((_ is EmptyExpr!16473) lt!2414687))))

(declare-fun e!3997004 () Bool)

(assert (=> d!2071564 (= lt!2414870 e!3997004)))

(declare-fun c!1217274 () Bool)

(assert (=> d!2071564 (= c!1217274 (isEmpty!37873 s!2326))))

(assert (=> d!2071564 (validRegex!8209 lt!2414687)))

(assert (=> d!2071564 (= (matchR!8656 lt!2414687 s!2326) lt!2414870)))

(declare-fun bm!577924 () Bool)

(assert (=> bm!577924 (= call!577929 (isEmpty!37873 s!2326))))

(declare-fun b!6606073 () Bool)

(declare-fun e!3997003 () Bool)

(assert (=> b!6606073 (= e!3997003 (not (= (head!13397 s!2326) (c!1216946 lt!2414687))))))

(declare-fun b!6606074 () Bool)

(assert (=> b!6606074 (= e!3997004 (nullable!6466 lt!2414687))))

(declare-fun b!6606075 () Bool)

(declare-fun res!2708769 () Bool)

(assert (=> b!6606075 (=> res!2708769 e!3996998)))

(assert (=> b!6606075 (= res!2708769 (not ((_ is ElementMatch!16473) lt!2414687)))))

(declare-fun e!3997002 () Bool)

(assert (=> b!6606075 (= e!3997002 e!3996998)))

(declare-fun b!6606076 () Bool)

(assert (=> b!6606076 (= e!3997002 (not lt!2414870))))

(declare-fun b!6606077 () Bool)

(assert (=> b!6606077 (= e!3997004 (matchR!8656 (derivativeStep!5157 lt!2414687 (head!13397 s!2326)) (tail!12482 s!2326)))))

(declare-fun b!6606078 () Bool)

(declare-fun res!2708772 () Bool)

(assert (=> b!6606078 (=> res!2708772 e!3997003)))

(assert (=> b!6606078 (= res!2708772 (not (isEmpty!37873 (tail!12482 s!2326))))))

(declare-fun b!6606079 () Bool)

(assert (=> b!6606079 (= e!3997000 e!3997002)))

(declare-fun c!1217275 () Bool)

(assert (=> b!6606079 (= c!1217275 ((_ is EmptyLang!16473) lt!2414687))))

(declare-fun b!6606080 () Bool)

(declare-fun res!2708766 () Bool)

(assert (=> b!6606080 (=> res!2708766 e!3996998)))

(assert (=> b!6606080 (= res!2708766 e!3996999)))

(declare-fun res!2708771 () Bool)

(assert (=> b!6606080 (=> (not res!2708771) (not e!3996999))))

(assert (=> b!6606080 (= res!2708771 lt!2414870)))

(declare-fun b!6606081 () Bool)

(assert (=> b!6606081 (= e!3997001 e!3997003)))

(declare-fun res!2708770 () Bool)

(assert (=> b!6606081 (=> res!2708770 e!3997003)))

(assert (=> b!6606081 (= res!2708770 call!577929)))

(assert (= (and d!2071564 c!1217274) b!6606074))

(assert (= (and d!2071564 (not c!1217274)) b!6606077))

(assert (= (and d!2071564 c!1217276) b!6606072))

(assert (= (and d!2071564 (not c!1217276)) b!6606079))

(assert (= (and b!6606079 c!1217275) b!6606076))

(assert (= (and b!6606079 (not c!1217275)) b!6606075))

(assert (= (and b!6606075 (not res!2708769)) b!6606080))

(assert (= (and b!6606080 res!2708771) b!6606068))

(assert (= (and b!6606068 res!2708768) b!6606071))

(assert (= (and b!6606071 res!2708767) b!6606070))

(assert (= (and b!6606080 (not res!2708766)) b!6606069))

(assert (= (and b!6606069 res!2708773) b!6606081))

(assert (= (and b!6606081 (not res!2708770)) b!6606078))

(assert (= (and b!6606078 (not res!2708772)) b!6606073))

(assert (= (or b!6606072 b!6606068 b!6606081) bm!577924))

(assert (=> b!6606070 m!7380896))

(declare-fun m!7381340 () Bool)

(assert (=> b!6606074 m!7381340))

(assert (=> b!6606078 m!7380900))

(assert (=> b!6606078 m!7380900))

(assert (=> b!6606078 m!7380902))

(assert (=> bm!577924 m!7380904))

(assert (=> b!6606073 m!7380896))

(assert (=> b!6606077 m!7380896))

(assert (=> b!6606077 m!7380896))

(declare-fun m!7381342 () Bool)

(assert (=> b!6606077 m!7381342))

(assert (=> b!6606077 m!7380900))

(assert (=> b!6606077 m!7381342))

(assert (=> b!6606077 m!7380900))

(declare-fun m!7381344 () Bool)

(assert (=> b!6606077 m!7381344))

(assert (=> b!6606071 m!7380900))

(assert (=> b!6606071 m!7380900))

(assert (=> b!6606071 m!7380902))

(assert (=> d!2071564 m!7380904))

(declare-fun m!7381346 () Bool)

(assert (=> d!2071564 m!7381346))

(assert (=> b!6604961 d!2071564))

(declare-fun d!2071566 () Bool)

(declare-fun c!1217277 () Bool)

(assert (=> d!2071566 (= c!1217277 (isEmpty!37873 s!2326))))

(declare-fun e!3997005 () Bool)

(assert (=> d!2071566 (= (matchZipper!2485 lt!2414688 s!2326) e!3997005)))

(declare-fun b!6606082 () Bool)

(assert (=> b!6606082 (= e!3997005 (nullableZipper!2217 lt!2414688))))

(declare-fun b!6606083 () Bool)

(assert (=> b!6606083 (= e!3997005 (matchZipper!2485 (derivationStepZipper!2439 lt!2414688 (head!13397 s!2326)) (tail!12482 s!2326)))))

(assert (= (and d!2071566 c!1217277) b!6606082))

(assert (= (and d!2071566 (not c!1217277)) b!6606083))

(assert (=> d!2071566 m!7380904))

(declare-fun m!7381348 () Bool)

(assert (=> b!6606082 m!7381348))

(assert (=> b!6606083 m!7380896))

(assert (=> b!6606083 m!7380896))

(declare-fun m!7381350 () Bool)

(assert (=> b!6606083 m!7381350))

(assert (=> b!6606083 m!7380900))

(assert (=> b!6606083 m!7381350))

(assert (=> b!6606083 m!7380900))

(declare-fun m!7381352 () Bool)

(assert (=> b!6606083 m!7381352))

(assert (=> b!6604961 d!2071566))

(declare-fun d!2071568 () Bool)

(assert (=> d!2071568 (= (matchR!8656 lt!2414687 s!2326) (matchZipper!2485 lt!2414688 s!2326))))

(declare-fun lt!2414873 () Unit!159227)

(declare-fun choose!49338 ((InoxSet Context!11714) List!65720 Regex!16473 List!65718) Unit!159227)

(assert (=> d!2071568 (= lt!2414873 (choose!49338 lt!2414688 lt!2414698 lt!2414687 s!2326))))

(assert (=> d!2071568 (validRegex!8209 lt!2414687)))

(assert (=> d!2071568 (= (theoremZipperRegexEquiv!895 lt!2414688 lt!2414698 lt!2414687 s!2326) lt!2414873)))

(declare-fun bs!1693307 () Bool)

(assert (= bs!1693307 d!2071568))

(assert (=> bs!1693307 m!7380488))

(assert (=> bs!1693307 m!7380490))

(declare-fun m!7381354 () Bool)

(assert (=> bs!1693307 m!7381354))

(assert (=> bs!1693307 m!7381346))

(assert (=> b!6604961 d!2071568))

(declare-fun b!6606090 () Bool)

(assert (=> b!6606090 true))

(declare-fun bs!1693308 () Bool)

(declare-fun b!6606092 () Bool)

(assert (= bs!1693308 (and b!6606092 b!6606090)))

(declare-fun lambda!368514 () Int)

(declare-fun lt!2414885 () Int)

(declare-fun lambda!368513 () Int)

(declare-fun lt!2414883 () Int)

(assert (=> bs!1693308 (= (= lt!2414883 lt!2414885) (= lambda!368514 lambda!368513))))

(assert (=> b!6606092 true))

(declare-fun d!2071570 () Bool)

(declare-fun e!3997010 () Bool)

(assert (=> d!2071570 e!3997010))

(declare-fun res!2708776 () Bool)

(assert (=> d!2071570 (=> (not res!2708776) (not e!3997010))))

(assert (=> d!2071570 (= res!2708776 (>= lt!2414883 0))))

(declare-fun e!3997011 () Int)

(assert (=> d!2071570 (= lt!2414883 e!3997011)))

(declare-fun c!1217286 () Bool)

(assert (=> d!2071570 (= c!1217286 ((_ is Cons!65596) zl!343))))

(assert (=> d!2071570 (= (zipperDepth!410 zl!343) lt!2414883)))

(assert (=> b!6606090 (= e!3997011 lt!2414885)))

(declare-fun contextDepth!299 (Context!11714) Int)

(assert (=> b!6606090 (= lt!2414885 (maxBigInt!0 (contextDepth!299 (h!72044 zl!343)) (zipperDepth!410 (t!379372 zl!343))))))

(declare-fun lambda!368512 () Int)

(declare-fun lt!2414884 () Unit!159227)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!283 (List!65720 Int Int Int) Unit!159227)

(assert (=> b!6606090 (= lt!2414884 (lemmaForallContextDepthBiggerThanTransitive!283 (t!379372 zl!343) lt!2414885 (zipperDepth!410 (t!379372 zl!343)) lambda!368512))))

(declare-fun forall!15671 (List!65720 Int) Bool)

(assert (=> b!6606090 (forall!15671 (t!379372 zl!343) lambda!368513)))

(declare-fun lt!2414882 () Unit!159227)

(assert (=> b!6606090 (= lt!2414882 lt!2414884)))

(declare-fun b!6606091 () Bool)

(assert (=> b!6606091 (= e!3997011 0)))

(assert (=> b!6606092 (= e!3997010 (forall!15671 zl!343 lambda!368514))))

(assert (= (and d!2071570 c!1217286) b!6606090))

(assert (= (and d!2071570 (not c!1217286)) b!6606091))

(assert (= (and d!2071570 res!2708776) b!6606092))

(declare-fun m!7381356 () Bool)

(assert (=> b!6606090 m!7381356))

(declare-fun m!7381358 () Bool)

(assert (=> b!6606090 m!7381358))

(declare-fun m!7381360 () Bool)

(assert (=> b!6606090 m!7381360))

(assert (=> b!6606090 m!7381356))

(declare-fun m!7381362 () Bool)

(assert (=> b!6606090 m!7381362))

(assert (=> b!6606090 m!7381356))

(assert (=> b!6606090 m!7381360))

(declare-fun m!7381364 () Bool)

(assert (=> b!6606090 m!7381364))

(declare-fun m!7381366 () Bool)

(assert (=> b!6606092 m!7381366))

(assert (=> b!6604957 d!2071570))

(declare-fun bs!1693309 () Bool)

(declare-fun b!6606095 () Bool)

(assert (= bs!1693309 (and b!6606095 b!6606090)))

(declare-fun lambda!368515 () Int)

(assert (=> bs!1693309 (= lambda!368515 lambda!368512)))

(declare-fun lt!2414889 () Int)

(declare-fun lambda!368516 () Int)

(assert (=> bs!1693309 (= (= lt!2414889 lt!2414885) (= lambda!368516 lambda!368513))))

(declare-fun bs!1693310 () Bool)

(assert (= bs!1693310 (and b!6606095 b!6606092)))

(assert (=> bs!1693310 (= (= lt!2414889 lt!2414883) (= lambda!368516 lambda!368514))))

(assert (=> b!6606095 true))

(declare-fun bs!1693311 () Bool)

(declare-fun b!6606097 () Bool)

(assert (= bs!1693311 (and b!6606097 b!6606090)))

(declare-fun lt!2414887 () Int)

(declare-fun lambda!368517 () Int)

(assert (=> bs!1693311 (= (= lt!2414887 lt!2414885) (= lambda!368517 lambda!368513))))

(declare-fun bs!1693312 () Bool)

(assert (= bs!1693312 (and b!6606097 b!6606092)))

(assert (=> bs!1693312 (= (= lt!2414887 lt!2414883) (= lambda!368517 lambda!368514))))

(declare-fun bs!1693313 () Bool)

(assert (= bs!1693313 (and b!6606097 b!6606095)))

(assert (=> bs!1693313 (= (= lt!2414887 lt!2414889) (= lambda!368517 lambda!368516))))

(assert (=> b!6606097 true))

(declare-fun d!2071572 () Bool)

(declare-fun e!3997012 () Bool)

(assert (=> d!2071572 e!3997012))

(declare-fun res!2708777 () Bool)

(assert (=> d!2071572 (=> (not res!2708777) (not e!3997012))))

(assert (=> d!2071572 (= res!2708777 (>= lt!2414887 0))))

(declare-fun e!3997013 () Int)

(assert (=> d!2071572 (= lt!2414887 e!3997013)))

(declare-fun c!1217287 () Bool)

(assert (=> d!2071572 (= c!1217287 ((_ is Cons!65596) lt!2414698))))

(assert (=> d!2071572 (= (zipperDepth!410 lt!2414698) lt!2414887)))

(assert (=> b!6606095 (= e!3997013 lt!2414889)))

(assert (=> b!6606095 (= lt!2414889 (maxBigInt!0 (contextDepth!299 (h!72044 lt!2414698)) (zipperDepth!410 (t!379372 lt!2414698))))))

(declare-fun lt!2414888 () Unit!159227)

(assert (=> b!6606095 (= lt!2414888 (lemmaForallContextDepthBiggerThanTransitive!283 (t!379372 lt!2414698) lt!2414889 (zipperDepth!410 (t!379372 lt!2414698)) lambda!368515))))

(assert (=> b!6606095 (forall!15671 (t!379372 lt!2414698) lambda!368516)))

(declare-fun lt!2414886 () Unit!159227)

(assert (=> b!6606095 (= lt!2414886 lt!2414888)))

(declare-fun b!6606096 () Bool)

(assert (=> b!6606096 (= e!3997013 0)))

(assert (=> b!6606097 (= e!3997012 (forall!15671 lt!2414698 lambda!368517))))

(assert (= (and d!2071572 c!1217287) b!6606095))

(assert (= (and d!2071572 (not c!1217287)) b!6606096))

(assert (= (and d!2071572 res!2708777) b!6606097))

(declare-fun m!7381368 () Bool)

(assert (=> b!6606095 m!7381368))

(declare-fun m!7381370 () Bool)

(assert (=> b!6606095 m!7381370))

(declare-fun m!7381372 () Bool)

(assert (=> b!6606095 m!7381372))

(assert (=> b!6606095 m!7381368))

(declare-fun m!7381374 () Bool)

(assert (=> b!6606095 m!7381374))

(assert (=> b!6606095 m!7381368))

(assert (=> b!6606095 m!7381372))

(declare-fun m!7381376 () Bool)

(assert (=> b!6606095 m!7381376))

(declare-fun m!7381378 () Bool)

(assert (=> b!6606097 m!7381378))

(assert (=> b!6604957 d!2071572))

(declare-fun d!2071574 () Bool)

(assert (=> d!2071574 (= (nullable!6466 (h!72043 (exprs!6357 (h!72044 zl!343)))) (nullableFct!2392 (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun bs!1693314 () Bool)

(assert (= bs!1693314 d!2071574))

(declare-fun m!7381380 () Bool)

(assert (=> bs!1693314 m!7381380))

(assert (=> b!6604977 d!2071574))

(declare-fun b!6606098 () Bool)

(declare-fun e!3997014 () (InoxSet Context!11714))

(declare-fun e!3997016 () (InoxSet Context!11714))

(assert (=> b!6606098 (= e!3997014 e!3997016)))

(declare-fun c!1217289 () Bool)

(assert (=> b!6606098 (= c!1217289 ((_ is Cons!65595) (exprs!6357 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343))))))))))

(declare-fun b!6606099 () Bool)

(declare-fun call!577930 () (InoxSet Context!11714))

(assert (=> b!6606099 (= e!3997016 call!577930)))

(declare-fun d!2071576 () Bool)

(declare-fun c!1217288 () Bool)

(declare-fun e!3997015 () Bool)

(assert (=> d!2071576 (= c!1217288 e!3997015)))

(declare-fun res!2708778 () Bool)

(assert (=> d!2071576 (=> (not res!2708778) (not e!3997015))))

(assert (=> d!2071576 (= res!2708778 ((_ is Cons!65595) (exprs!6357 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343))))))))))

(assert (=> d!2071576 (= (derivationStepZipperUp!1647 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343))))) (h!72042 s!2326)) e!3997014)))

(declare-fun b!6606100 () Bool)

(assert (=> b!6606100 (= e!3997015 (nullable!6466 (h!72043 (exprs!6357 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343)))))))))))

(declare-fun b!6606101 () Bool)

(assert (=> b!6606101 (= e!3997016 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6606102 () Bool)

(assert (=> b!6606102 (= e!3997014 ((_ map or) call!577930 (derivationStepZipperUp!1647 (Context!11715 (t!379371 (exprs!6357 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343)))))))) (h!72042 s!2326))))))

(declare-fun bm!577925 () Bool)

(assert (=> bm!577925 (= call!577930 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343))))))) (Context!11715 (t!379371 (exprs!6357 (Context!11715 (Cons!65595 (h!72043 (exprs!6357 (h!72044 zl!343))) (t!379371 (exprs!6357 (h!72044 zl!343)))))))) (h!72042 s!2326)))))

(assert (= (and d!2071576 res!2708778) b!6606100))

(assert (= (and d!2071576 c!1217288) b!6606102))

(assert (= (and d!2071576 (not c!1217288)) b!6606098))

(assert (= (and b!6606098 c!1217289) b!6606099))

(assert (= (and b!6606098 (not c!1217289)) b!6606101))

(assert (= (or b!6606102 b!6606099) bm!577925))

(declare-fun m!7381382 () Bool)

(assert (=> b!6606100 m!7381382))

(declare-fun m!7381384 () Bool)

(assert (=> b!6606102 m!7381384))

(declare-fun m!7381386 () Bool)

(assert (=> bm!577925 m!7381386))

(assert (=> b!6604977 d!2071576))

(declare-fun d!2071578 () Bool)

(assert (=> d!2071578 (= (flatMap!1978 z!1189 lambda!368398) (choose!49327 z!1189 lambda!368398))))

(declare-fun bs!1693315 () Bool)

(assert (= bs!1693315 d!2071578))

(declare-fun m!7381388 () Bool)

(assert (=> bs!1693315 m!7381388))

(assert (=> b!6604977 d!2071578))

(declare-fun bm!577926 () Bool)

(declare-fun call!577932 () (InoxSet Context!11714))

(declare-fun call!577934 () (InoxSet Context!11714))

(assert (=> bm!577926 (= call!577932 call!577934)))

(declare-fun bm!577927 () Bool)

(declare-fun c!1217292 () Bool)

(declare-fun call!577936 () List!65719)

(declare-fun call!577935 () (InoxSet Context!11714))

(assert (=> bm!577927 (= call!577935 (derivationStepZipperDown!1721 (ite c!1217292 (regOne!33459 (h!72043 (exprs!6357 (h!72044 zl!343)))) (regOne!33458 (h!72043 (exprs!6357 (h!72044 zl!343))))) (ite c!1217292 lt!2414692 (Context!11715 call!577936)) (h!72042 s!2326)))))

(declare-fun b!6606103 () Bool)

(declare-fun e!3997019 () (InoxSet Context!11714))

(declare-fun e!3997017 () (InoxSet Context!11714))

(assert (=> b!6606103 (= e!3997019 e!3997017)))

(assert (=> b!6606103 (= c!1217292 ((_ is Union!16473) (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun bm!577928 () Bool)

(declare-fun c!1217294 () Bool)

(declare-fun c!1217291 () Bool)

(assert (=> bm!577928 (= call!577936 ($colon$colon!2314 (exprs!6357 lt!2414692) (ite (or c!1217291 c!1217294) (regTwo!33458 (h!72043 (exprs!6357 (h!72044 zl!343)))) (h!72043 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun call!577931 () List!65719)

(declare-fun bm!577929 () Bool)

(assert (=> bm!577929 (= call!577934 (derivationStepZipperDown!1721 (ite c!1217292 (regTwo!33459 (h!72043 (exprs!6357 (h!72044 zl!343)))) (ite c!1217291 (regTwo!33458 (h!72043 (exprs!6357 (h!72044 zl!343)))) (ite c!1217294 (regOne!33458 (h!72043 (exprs!6357 (h!72044 zl!343)))) (reg!16802 (h!72043 (exprs!6357 (h!72044 zl!343))))))) (ite (or c!1217292 c!1217291) lt!2414692 (Context!11715 call!577931)) (h!72042 s!2326)))))

(declare-fun b!6606104 () Bool)

(declare-fun e!3997020 () Bool)

(assert (=> b!6606104 (= c!1217291 e!3997020)))

(declare-fun res!2708779 () Bool)

(assert (=> b!6606104 (=> (not res!2708779) (not e!3997020))))

(assert (=> b!6606104 (= res!2708779 ((_ is Concat!25318) (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun e!3997018 () (InoxSet Context!11714))

(assert (=> b!6606104 (= e!3997017 e!3997018)))

(declare-fun b!6606105 () Bool)

(assert (=> b!6606105 (= e!3997017 ((_ map or) call!577935 call!577934))))

(declare-fun b!6606106 () Bool)

(declare-fun e!3997021 () (InoxSet Context!11714))

(assert (=> b!6606106 (= e!3997021 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6606107 () Bool)

(assert (=> b!6606107 (= e!3997019 (store ((as const (Array Context!11714 Bool)) false) lt!2414692 true))))

(declare-fun b!6606108 () Bool)

(assert (=> b!6606108 (= e!3997020 (nullable!6466 (regOne!33458 (h!72043 (exprs!6357 (h!72044 zl!343))))))))

(declare-fun b!6606109 () Bool)

(declare-fun call!577933 () (InoxSet Context!11714))

(assert (=> b!6606109 (= e!3997021 call!577933)))

(declare-fun bm!577930 () Bool)

(assert (=> bm!577930 (= call!577933 call!577932)))

(declare-fun b!6606110 () Bool)

(declare-fun e!3997022 () (InoxSet Context!11714))

(assert (=> b!6606110 (= e!3997022 call!577933)))

(declare-fun b!6606111 () Bool)

(assert (=> b!6606111 (= e!3997018 e!3997022)))

(assert (=> b!6606111 (= c!1217294 ((_ is Concat!25318) (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun bm!577931 () Bool)

(assert (=> bm!577931 (= call!577931 call!577936)))

(declare-fun d!2071580 () Bool)

(declare-fun c!1217293 () Bool)

(assert (=> d!2071580 (= c!1217293 (and ((_ is ElementMatch!16473) (h!72043 (exprs!6357 (h!72044 zl!343)))) (= (c!1216946 (h!72043 (exprs!6357 (h!72044 zl!343)))) (h!72042 s!2326))))))

(assert (=> d!2071580 (= (derivationStepZipperDown!1721 (h!72043 (exprs!6357 (h!72044 zl!343))) lt!2414692 (h!72042 s!2326)) e!3997019)))

(declare-fun b!6606112 () Bool)

(assert (=> b!6606112 (= e!3997018 ((_ map or) call!577935 call!577932))))

(declare-fun b!6606113 () Bool)

(declare-fun c!1217290 () Bool)

(assert (=> b!6606113 (= c!1217290 ((_ is Star!16473) (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(assert (=> b!6606113 (= e!3997022 e!3997021)))

(assert (= (and d!2071580 c!1217293) b!6606107))

(assert (= (and d!2071580 (not c!1217293)) b!6606103))

(assert (= (and b!6606103 c!1217292) b!6606105))

(assert (= (and b!6606103 (not c!1217292)) b!6606104))

(assert (= (and b!6606104 res!2708779) b!6606108))

(assert (= (and b!6606104 c!1217291) b!6606112))

(assert (= (and b!6606104 (not c!1217291)) b!6606111))

(assert (= (and b!6606111 c!1217294) b!6606110))

(assert (= (and b!6606111 (not c!1217294)) b!6606113))

(assert (= (and b!6606113 c!1217290) b!6606109))

(assert (= (and b!6606113 (not c!1217290)) b!6606106))

(assert (= (or b!6606110 b!6606109) bm!577931))

(assert (= (or b!6606110 b!6606109) bm!577930))

(assert (= (or b!6606112 bm!577931) bm!577928))

(assert (= (or b!6606112 bm!577930) bm!577926))

(assert (= (or b!6606105 bm!577926) bm!577929))

(assert (= (or b!6606105 b!6606112) bm!577927))

(declare-fun m!7381390 () Bool)

(assert (=> b!6606108 m!7381390))

(assert (=> b!6606107 m!7380438))

(declare-fun m!7381392 () Bool)

(assert (=> bm!577927 m!7381392))

(declare-fun m!7381394 () Bool)

(assert (=> bm!577929 m!7381394))

(declare-fun m!7381396 () Bool)

(assert (=> bm!577928 m!7381396))

(assert (=> b!6604977 d!2071580))

(declare-fun d!2071582 () Bool)

(assert (=> d!2071582 (= (flatMap!1978 z!1189 lambda!368398) (dynLambda!26120 lambda!368398 (h!72044 zl!343)))))

(declare-fun lt!2414890 () Unit!159227)

(assert (=> d!2071582 (= lt!2414890 (choose!49328 z!1189 (h!72044 zl!343) lambda!368398))))

(assert (=> d!2071582 (= z!1189 (store ((as const (Array Context!11714 Bool)) false) (h!72044 zl!343) true))))

(assert (=> d!2071582 (= (lemmaFlatMapOnSingletonSet!1504 z!1189 (h!72044 zl!343) lambda!368398) lt!2414890)))

(declare-fun b_lambda!249965 () Bool)

(assert (=> (not b_lambda!249965) (not d!2071582)))

(declare-fun bs!1693316 () Bool)

(assert (= bs!1693316 d!2071582))

(assert (=> bs!1693316 m!7380424))

(declare-fun m!7381398 () Bool)

(assert (=> bs!1693316 m!7381398))

(declare-fun m!7381400 () Bool)

(assert (=> bs!1693316 m!7381400))

(declare-fun m!7381402 () Bool)

(assert (=> bs!1693316 m!7381402))

(assert (=> b!6604977 d!2071582))

(declare-fun b!6606114 () Bool)

(declare-fun e!3997023 () (InoxSet Context!11714))

(declare-fun e!3997025 () (InoxSet Context!11714))

(assert (=> b!6606114 (= e!3997023 e!3997025)))

(declare-fun c!1217296 () Bool)

(assert (=> b!6606114 (= c!1217296 ((_ is Cons!65595) (exprs!6357 (h!72044 zl!343))))))

(declare-fun b!6606115 () Bool)

(declare-fun call!577937 () (InoxSet Context!11714))

(assert (=> b!6606115 (= e!3997025 call!577937)))

(declare-fun d!2071584 () Bool)

(declare-fun c!1217295 () Bool)

(declare-fun e!3997024 () Bool)

(assert (=> d!2071584 (= c!1217295 e!3997024)))

(declare-fun res!2708780 () Bool)

(assert (=> d!2071584 (=> (not res!2708780) (not e!3997024))))

(assert (=> d!2071584 (= res!2708780 ((_ is Cons!65595) (exprs!6357 (h!72044 zl!343))))))

(assert (=> d!2071584 (= (derivationStepZipperUp!1647 (h!72044 zl!343) (h!72042 s!2326)) e!3997023)))

(declare-fun b!6606116 () Bool)

(assert (=> b!6606116 (= e!3997024 (nullable!6466 (h!72043 (exprs!6357 (h!72044 zl!343)))))))

(declare-fun b!6606117 () Bool)

(assert (=> b!6606117 (= e!3997025 ((as const (Array Context!11714 Bool)) false))))

(declare-fun b!6606118 () Bool)

(assert (=> b!6606118 (= e!3997023 ((_ map or) call!577937 (derivationStepZipperUp!1647 (Context!11715 (t!379371 (exprs!6357 (h!72044 zl!343)))) (h!72042 s!2326))))))

(declare-fun bm!577932 () Bool)

(assert (=> bm!577932 (= call!577937 (derivationStepZipperDown!1721 (h!72043 (exprs!6357 (h!72044 zl!343))) (Context!11715 (t!379371 (exprs!6357 (h!72044 zl!343)))) (h!72042 s!2326)))))

(assert (= (and d!2071584 res!2708780) b!6606116))

(assert (= (and d!2071584 c!1217295) b!6606118))

(assert (= (and d!2071584 (not c!1217295)) b!6606114))

(assert (= (and b!6606114 c!1217296) b!6606115))

(assert (= (and b!6606114 (not c!1217296)) b!6606117))

(assert (= (or b!6606118 b!6606115) bm!577932))

(assert (=> b!6606116 m!7380426))

(declare-fun m!7381404 () Bool)

(assert (=> b!6606118 m!7381404))

(declare-fun m!7381406 () Bool)

(assert (=> bm!577932 m!7381406))

(assert (=> b!6604977 d!2071584))

(assert (=> b!6604977 d!2071468))

(assert (=> b!6604958 d!2071374))

(declare-fun condSetEmpty!45114 () Bool)

(assert (=> setNonEmpty!45108 (= condSetEmpty!45114 (= setRest!45108 ((as const (Array Context!11714 Bool)) false)))))

(declare-fun setRes!45114 () Bool)

(assert (=> setNonEmpty!45108 (= tp!1820311 setRes!45114)))

(declare-fun setIsEmpty!45114 () Bool)

(assert (=> setIsEmpty!45114 setRes!45114))

(declare-fun e!3997028 () Bool)

(declare-fun setNonEmpty!45114 () Bool)

(declare-fun tp!1820374 () Bool)

(declare-fun setElem!45114 () Context!11714)

(assert (=> setNonEmpty!45114 (= setRes!45114 (and tp!1820374 (inv!84429 setElem!45114) e!3997028))))

(declare-fun setRest!45114 () (InoxSet Context!11714))

(assert (=> setNonEmpty!45114 (= setRest!45108 ((_ map or) (store ((as const (Array Context!11714 Bool)) false) setElem!45114 true) setRest!45114))))

(declare-fun b!6606123 () Bool)

(declare-fun tp!1820375 () Bool)

(assert (=> b!6606123 (= e!3997028 tp!1820375)))

(assert (= (and setNonEmpty!45108 condSetEmpty!45114) setIsEmpty!45114))

(assert (= (and setNonEmpty!45108 (not condSetEmpty!45114)) setNonEmpty!45114))

(assert (= setNonEmpty!45114 b!6606123))

(declare-fun m!7381408 () Bool)

(assert (=> setNonEmpty!45114 m!7381408))

(declare-fun b!6606135 () Bool)

(declare-fun e!3997031 () Bool)

(declare-fun tp!1820390 () Bool)

(declare-fun tp!1820389 () Bool)

(assert (=> b!6606135 (= e!3997031 (and tp!1820390 tp!1820389))))

(declare-fun b!6606134 () Bool)

(assert (=> b!6606134 (= e!3997031 tp_is_empty!42199)))

(declare-fun b!6606136 () Bool)

(declare-fun tp!1820388 () Bool)

(assert (=> b!6606136 (= e!3997031 tp!1820388)))

(assert (=> b!6604970 (= tp!1820309 e!3997031)))

(declare-fun b!6606137 () Bool)

(declare-fun tp!1820387 () Bool)

(declare-fun tp!1820386 () Bool)

(assert (=> b!6606137 (= e!3997031 (and tp!1820387 tp!1820386))))

(assert (= (and b!6604970 ((_ is ElementMatch!16473) (reg!16802 r!7292))) b!6606134))

(assert (= (and b!6604970 ((_ is Concat!25318) (reg!16802 r!7292))) b!6606135))

(assert (= (and b!6604970 ((_ is Star!16473) (reg!16802 r!7292))) b!6606136))

(assert (= (and b!6604970 ((_ is Union!16473) (reg!16802 r!7292))) b!6606137))

(declare-fun b!6606142 () Bool)

(declare-fun e!3997034 () Bool)

(declare-fun tp!1820395 () Bool)

(declare-fun tp!1820396 () Bool)

(assert (=> b!6606142 (= e!3997034 (and tp!1820395 tp!1820396))))

(assert (=> b!6604981 (= tp!1820308 e!3997034)))

(assert (= (and b!6604981 ((_ is Cons!65595) (exprs!6357 setElem!45108))) b!6606142))

(declare-fun b!6606144 () Bool)

(declare-fun e!3997035 () Bool)

(declare-fun tp!1820401 () Bool)

(declare-fun tp!1820400 () Bool)

(assert (=> b!6606144 (= e!3997035 (and tp!1820401 tp!1820400))))

(declare-fun b!6606143 () Bool)

(assert (=> b!6606143 (= e!3997035 tp_is_empty!42199)))

(declare-fun b!6606145 () Bool)

(declare-fun tp!1820399 () Bool)

(assert (=> b!6606145 (= e!3997035 tp!1820399)))

(assert (=> b!6604978 (= tp!1820306 e!3997035)))

(declare-fun b!6606146 () Bool)

(declare-fun tp!1820398 () Bool)

(declare-fun tp!1820397 () Bool)

(assert (=> b!6606146 (= e!3997035 (and tp!1820398 tp!1820397))))

(assert (= (and b!6604978 ((_ is ElementMatch!16473) (regOne!33458 r!7292))) b!6606143))

(assert (= (and b!6604978 ((_ is Concat!25318) (regOne!33458 r!7292))) b!6606144))

(assert (= (and b!6604978 ((_ is Star!16473) (regOne!33458 r!7292))) b!6606145))

(assert (= (and b!6604978 ((_ is Union!16473) (regOne!33458 r!7292))) b!6606146))

(declare-fun b!6606148 () Bool)

(declare-fun e!3997036 () Bool)

(declare-fun tp!1820406 () Bool)

(declare-fun tp!1820405 () Bool)

(assert (=> b!6606148 (= e!3997036 (and tp!1820406 tp!1820405))))

(declare-fun b!6606147 () Bool)

(assert (=> b!6606147 (= e!3997036 tp_is_empty!42199)))

(declare-fun b!6606149 () Bool)

(declare-fun tp!1820404 () Bool)

(assert (=> b!6606149 (= e!3997036 tp!1820404)))

(assert (=> b!6604978 (= tp!1820303 e!3997036)))

(declare-fun b!6606150 () Bool)

(declare-fun tp!1820403 () Bool)

(declare-fun tp!1820402 () Bool)

(assert (=> b!6606150 (= e!3997036 (and tp!1820403 tp!1820402))))

(assert (= (and b!6604978 ((_ is ElementMatch!16473) (regTwo!33458 r!7292))) b!6606147))

(assert (= (and b!6604978 ((_ is Concat!25318) (regTwo!33458 r!7292))) b!6606148))

(assert (= (and b!6604978 ((_ is Star!16473) (regTwo!33458 r!7292))) b!6606149))

(assert (= (and b!6604978 ((_ is Union!16473) (regTwo!33458 r!7292))) b!6606150))

(declare-fun b!6606152 () Bool)

(declare-fun e!3997037 () Bool)

(declare-fun tp!1820411 () Bool)

(declare-fun tp!1820410 () Bool)

(assert (=> b!6606152 (= e!3997037 (and tp!1820411 tp!1820410))))

(declare-fun b!6606151 () Bool)

(assert (=> b!6606151 (= e!3997037 tp_is_empty!42199)))

(declare-fun b!6606153 () Bool)

(declare-fun tp!1820409 () Bool)

(assert (=> b!6606153 (= e!3997037 tp!1820409)))

(assert (=> b!6604967 (= tp!1820310 e!3997037)))

(declare-fun b!6606154 () Bool)

(declare-fun tp!1820408 () Bool)

(declare-fun tp!1820407 () Bool)

(assert (=> b!6606154 (= e!3997037 (and tp!1820408 tp!1820407))))

(assert (= (and b!6604967 ((_ is ElementMatch!16473) (regOne!33459 r!7292))) b!6606151))

(assert (= (and b!6604967 ((_ is Concat!25318) (regOne!33459 r!7292))) b!6606152))

(assert (= (and b!6604967 ((_ is Star!16473) (regOne!33459 r!7292))) b!6606153))

(assert (= (and b!6604967 ((_ is Union!16473) (regOne!33459 r!7292))) b!6606154))

(declare-fun b!6606156 () Bool)

(declare-fun e!3997038 () Bool)

(declare-fun tp!1820416 () Bool)

(declare-fun tp!1820415 () Bool)

(assert (=> b!6606156 (= e!3997038 (and tp!1820416 tp!1820415))))

(declare-fun b!6606155 () Bool)

(assert (=> b!6606155 (= e!3997038 tp_is_empty!42199)))

(declare-fun b!6606157 () Bool)

(declare-fun tp!1820414 () Bool)

(assert (=> b!6606157 (= e!3997038 tp!1820414)))

(assert (=> b!6604967 (= tp!1820302 e!3997038)))

(declare-fun b!6606158 () Bool)

(declare-fun tp!1820413 () Bool)

(declare-fun tp!1820412 () Bool)

(assert (=> b!6606158 (= e!3997038 (and tp!1820413 tp!1820412))))

(assert (= (and b!6604967 ((_ is ElementMatch!16473) (regTwo!33459 r!7292))) b!6606155))

(assert (= (and b!6604967 ((_ is Concat!25318) (regTwo!33459 r!7292))) b!6606156))

(assert (= (and b!6604967 ((_ is Star!16473) (regTwo!33459 r!7292))) b!6606157))

(assert (= (and b!6604967 ((_ is Union!16473) (regTwo!33459 r!7292))) b!6606158))

(declare-fun b!6606166 () Bool)

(declare-fun e!3997044 () Bool)

(declare-fun tp!1820421 () Bool)

(assert (=> b!6606166 (= e!3997044 tp!1820421)))

(declare-fun tp!1820422 () Bool)

(declare-fun b!6606165 () Bool)

(declare-fun e!3997043 () Bool)

(assert (=> b!6606165 (= e!3997043 (and (inv!84429 (h!72044 (t!379372 zl!343))) e!3997044 tp!1820422))))

(assert (=> b!6604989 (= tp!1820305 e!3997043)))

(assert (= b!6606165 b!6606166))

(assert (= (and b!6604989 ((_ is Cons!65596) (t!379372 zl!343))) b!6606165))

(declare-fun m!7381410 () Bool)

(assert (=> b!6606165 m!7381410))

(declare-fun b!6606167 () Bool)

(declare-fun e!3997045 () Bool)

(declare-fun tp!1820423 () Bool)

(declare-fun tp!1820424 () Bool)

(assert (=> b!6606167 (= e!3997045 (and tp!1820423 tp!1820424))))

(assert (=> b!6604948 (= tp!1820304 e!3997045)))

(assert (= (and b!6604948 ((_ is Cons!65595) (exprs!6357 (h!72044 zl!343)))) b!6606167))

(declare-fun b!6606172 () Bool)

(declare-fun e!3997048 () Bool)

(declare-fun tp!1820427 () Bool)

(assert (=> b!6606172 (= e!3997048 (and tp_is_empty!42199 tp!1820427))))

(assert (=> b!6604979 (= tp!1820307 e!3997048)))

(assert (= (and b!6604979 ((_ is Cons!65594) (t!379370 s!2326))) b!6606172))

(declare-fun b_lambda!249967 () Bool)

(assert (= b_lambda!249959 (or b!6604977 b_lambda!249967)))

(declare-fun bs!1693317 () Bool)

(declare-fun d!2071586 () Bool)

(assert (= bs!1693317 (and d!2071586 b!6604977)))

(assert (=> bs!1693317 (= (dynLambda!26120 lambda!368398 lt!2414696) (derivationStepZipperUp!1647 lt!2414696 (h!72042 s!2326)))))

(assert (=> bs!1693317 m!7380378))

(assert (=> d!2071458 d!2071586))

(declare-fun b_lambda!249969 () Bool)

(assert (= b_lambda!249963 (or b!6604977 b_lambda!249969)))

(declare-fun bs!1693318 () Bool)

(declare-fun d!2071588 () Bool)

(assert (= bs!1693318 (and d!2071588 b!6604977)))

(assert (=> bs!1693318 (= (dynLambda!26120 lambda!368398 lt!2414700) (derivationStepZipperUp!1647 lt!2414700 (h!72042 s!2326)))))

(assert (=> bs!1693318 m!7380468))

(assert (=> d!2071532 d!2071588))

(declare-fun b_lambda!249971 () Bool)

(assert (= b_lambda!249957 (or b!6604977 b_lambda!249971)))

(declare-fun bs!1693319 () Bool)

(declare-fun d!2071590 () Bool)

(assert (= bs!1693319 (and d!2071590 b!6604977)))

(assert (=> bs!1693319 (= (dynLambda!26120 lambda!368398 lt!2414715) (derivationStepZipperUp!1647 lt!2414715 (h!72042 s!2326)))))

(assert (=> bs!1693319 m!7380380))

(assert (=> d!2071456 d!2071590))

(declare-fun b_lambda!249973 () Bool)

(assert (= b_lambda!249965 (or b!6604977 b_lambda!249973)))

(declare-fun bs!1693320 () Bool)

(declare-fun d!2071592 () Bool)

(assert (= bs!1693320 (and d!2071592 b!6604977)))

(assert (=> bs!1693320 (= (dynLambda!26120 lambda!368398 (h!72044 zl!343)) (derivationStepZipperUp!1647 (h!72044 zl!343) (h!72042 s!2326)))))

(assert (=> bs!1693320 m!7380422))

(assert (=> d!2071582 d!2071592))

(declare-fun b_lambda!249975 () Bool)

(assert (= b_lambda!249961 (or b!6604977 b_lambda!249975)))

(declare-fun bs!1693321 () Bool)

(declare-fun d!2071594 () Bool)

(assert (= bs!1693321 (and d!2071594 b!6604977)))

(assert (=> bs!1693321 (= (dynLambda!26120 lambda!368398 lt!2414692) (derivationStepZipperUp!1647 lt!2414692 (h!72042 s!2326)))))

(assert (=> bs!1693321 m!7380428))

(assert (=> d!2071470 d!2071594))

(check-sat (not b!6605903) (not d!2071510) (not b!6605738) (not d!2071390) (not d!2071456) (not bm!577892) (not b!6605900) (not bm!577904) (not d!2071480) (not b!6605766) (not b!6606015) (not b!6606059) (not bm!577848) (not b!6606150) (not b!6605732) (not setNonEmpty!45114) (not b!6605906) (not b!6605702) (not bm!577925) (not b!6605505) (not b_lambda!249971) (not b!6605725) (not d!2071516) (not d!2071492) (not bs!1693319) (not b!6605826) (not b!6606153) (not b!6605827) (not b!6606063) (not b!6605618) (not b!6606092) (not bm!577881) (not b!6606118) (not bm!577866) (not b!6606064) (not d!2071434) (not d!2071462) (not d!2071430) (not b!6606012) (not bm!577888) (not b_lambda!249967) (not d!2071478) (not b!6605767) (not b!6606157) (not b!6606102) (not b!6606166) (not d!2071466) (not b!6605820) (not b!6606095) (not b!6605698) (not b!6606149) (not b!6605735) (not d!2071558) (not b!6605988) (not bm!577899) (not b!6605929) (not b!6605927) (not bm!577920) (not b!6605697) (not bm!577889) (not bs!1693320) (not b!6606020) (not d!2071440) (not bm!577903) (not bm!577890) (not b!6605987) (not d!2071542) (not b!6606156) (not d!2071484) (not b!6606083) (not d!2071566) (not bm!577864) (not d!2071552) (not b!6605498) (not b!6606100) (not d!2071374) (not bm!577863) (not b!6606056) (not b!6605742) (not b!6606145) (not b!6605739) (not bm!577924) (not d!2071472) (not d!2071546) (not b!6605926) (not b!6605901) (not b!6606144) (not b!6605930) (not d!2071548) (not b!6605822) (not d!2071458) tp_is_empty!42199 (not b!6605764) (not b!6605991) (not b!6605899) (not b!6605718) (not b!6606008) (not b!6606097) (not b!6605765) (not d!2071448) (not b!6605736) (not b!6606135) (not b!6606060) (not d!2071470) (not d!2071482) (not d!2071562) (not b!6606017) (not b!6606082) (not b!6606019) (not b!6605804) (not b!6606004) (not b!6606078) (not b!6606077) (not d!2071450) (not b!6605914) (not bs!1693321) (not b!6605501) (not d!2071502) (not d!2071476) (not bm!577901) (not b!6606116) (not b!6606172) (not bm!577883) (not b!6606137) (not b!6605700) (not bm!577854) (not b!6605819) (not bm!577849) (not d!2071526) (not d!2071504) (not b!6605933) (not b!6606073) (not d!2071524) (not b!6606167) (not bm!577927) (not b!6605813) (not d!2071528) (not b!6605730) (not b!6605989) (not b!6605737) (not b!6606071) (not b_lambda!249973) (not d!2071568) (not bm!577897) (not bm!577900) (not bm!577865) (not b!6606108) (not b!6606057) (not b!6606158) (not d!2071550) (not bm!577862) (not b!6606154) (not b!6605407) (not b!6605777) (not bm!577885) (not b!6605907) (not d!2071464) (not b!6606123) (not d!2071534) (not d!2071532) (not d!2071520) (not b!6605955) (not d!2071538) (not bm!577893) (not d!2071582) (not bm!577882) (not bm!577932) (not b!6605504) (not b!6605905) (not bm!577852) (not b!6606070) (not bm!577853) (not b!6606074) (not b!6605771) (not d!2071574) (not bs!1693317) (not b_lambda!249975) (not b!6605703) (not bm!577923) (not b!6605616) (not d!2071490) (not d!2071498) (not b!6605934) (not b!6605770) (not d!2071518) (not b!6606165) (not b!6606146) (not bm!577886) (not b!6605990) (not b!6605811) (not d!2071554) (not b!6605916) (not b!6606152) (not bm!577929) (not bm!577919) (not b!6605704) (not b!6606148) (not b!6605720) (not b!6606142) (not b!6605500) (not b!6606018) (not d!2071474) (not b!6606090) (not b!6605996) (not b!6605772) (not bm!577896) (not b_lambda!249969) (not b!6605823) (not d!2071460) (not d!2071500) (not d!2071508) (not d!2071564) (not d!2071506) (not bm!577928) (not b!6605723) (not d!2071544) (not b!6605696) (not b!6605985) (not b!6606014) (not bm!577838) (not bm!577918) (not bs!1693318) (not b!6606048) (not d!2071578) (not b!6606016) (not b!6606013) (not bm!577895) (not d!2071514) (not b!6605497) (not b!6606136) (not b!6606011) (not d!2071540) (not b!6605408) (not b!6605994) (not b!6606010))
(check-sat)
