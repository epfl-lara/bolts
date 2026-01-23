; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570242 () Bool)

(assert start!570242)

(declare-fun b!5434471 () Bool)

(assert (=> b!5434471 true))

(assert (=> b!5434471 true))

(declare-fun lambda!285360 () Int)

(declare-fun lambda!285359 () Int)

(assert (=> b!5434471 (not (= lambda!285360 lambda!285359))))

(assert (=> b!5434471 true))

(assert (=> b!5434471 true))

(declare-fun b!5434463 () Bool)

(assert (=> b!5434463 true))

(declare-fun res!2312654 () Bool)

(declare-fun e!3367132 () Bool)

(assert (=> start!570242 (=> (not res!2312654) (not e!3367132))))

(declare-datatypes ((C!30728 0))(
  ( (C!30729 (val!25066 Int)) )
))
(declare-datatypes ((Regex!15229 0))(
  ( (ElementMatch!15229 (c!948477 C!30728)) (Concat!24074 (regOne!30970 Regex!15229) (regTwo!30970 Regex!15229)) (EmptyExpr!15229) (Star!15229 (reg!15558 Regex!15229)) (EmptyLang!15229) (Union!15229 (regOne!30971 Regex!15229) (regTwo!30971 Regex!15229)) )
))
(declare-fun r!7292 () Regex!15229)

(declare-fun validRegex!6965 (Regex!15229) Bool)

(assert (=> start!570242 (= res!2312654 (validRegex!6965 r!7292))))

(assert (=> start!570242 e!3367132))

(declare-fun e!3367108 () Bool)

(assert (=> start!570242 e!3367108))

(declare-fun condSetEmpty!35463 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61986 0))(
  ( (Nil!61862) (Cons!61862 (h!68310 Regex!15229) (t!375211 List!61986)) )
))
(declare-datatypes ((Context!9226 0))(
  ( (Context!9227 (exprs!5113 List!61986)) )
))
(declare-fun z!1189 () (InoxSet Context!9226))

(assert (=> start!570242 (= condSetEmpty!35463 (= z!1189 ((as const (Array Context!9226 Bool)) false)))))

(declare-fun setRes!35463 () Bool)

(assert (=> start!570242 setRes!35463))

(declare-fun e!3367122 () Bool)

(assert (=> start!570242 e!3367122))

(declare-fun e!3367111 () Bool)

(assert (=> start!570242 e!3367111))

(declare-fun b!5434427 () Bool)

(declare-fun res!2312652 () Bool)

(declare-fun e!3367113 () Bool)

(assert (=> b!5434427 (=> res!2312652 e!3367113)))

(declare-datatypes ((List!61987 0))(
  ( (Nil!61863) (Cons!61863 (h!68311 Context!9226) (t!375212 List!61987)) )
))
(declare-fun zl!343 () List!61987)

(get-info :version)

(assert (=> b!5434427 (= res!2312652 (not ((_ is Cons!61862) (exprs!5113 (h!68311 zl!343)))))))

(declare-fun b!5434428 () Bool)

(declare-fun tp!1498772 () Bool)

(assert (=> b!5434428 (= e!3367108 tp!1498772)))

(declare-fun b!5434429 () Bool)

(declare-fun res!2312661 () Bool)

(declare-fun e!3367127 () Bool)

(assert (=> b!5434429 (=> res!2312661 e!3367127)))

(declare-datatypes ((List!61988 0))(
  ( (Nil!61864) (Cons!61864 (h!68312 C!30728) (t!375213 List!61988)) )
))
(declare-fun s!2326 () List!61988)

(declare-fun matchZipper!1473 ((InoxSet Context!9226) List!61988) Bool)

(assert (=> b!5434429 (= res!2312661 (not (matchZipper!1473 z!1189 s!2326)))))

(declare-fun b!5434430 () Bool)

(declare-fun res!2312644 () Bool)

(assert (=> b!5434430 (=> (not res!2312644) (not e!3367132))))

(declare-fun toList!9013 ((InoxSet Context!9226)) List!61987)

(assert (=> b!5434430 (= res!2312644 (= (toList!9013 z!1189) zl!343))))

(declare-fun b!5434431 () Bool)

(declare-fun e!3367124 () Bool)

(assert (=> b!5434431 (= e!3367127 e!3367124)))

(declare-fun res!2312653 () Bool)

(assert (=> b!5434431 (=> res!2312653 e!3367124)))

(declare-fun e!3367119 () Bool)

(assert (=> b!5434431 (= res!2312653 e!3367119)))

(declare-fun res!2312636 () Bool)

(assert (=> b!5434431 (=> (not res!2312636) (not e!3367119))))

(declare-fun lt!2215484 () Bool)

(assert (=> b!5434431 (= res!2312636 (not lt!2215484))))

(declare-fun lt!2215485 () (InoxSet Context!9226))

(assert (=> b!5434431 (= lt!2215484 (matchZipper!1473 lt!2215485 (t!375213 s!2326)))))

(declare-fun b!5434432 () Bool)

(declare-fun e!3367126 () Bool)

(assert (=> b!5434432 (= e!3367124 e!3367126)))

(declare-fun res!2312660 () Bool)

(assert (=> b!5434432 (=> res!2312660 e!3367126)))

(declare-fun lt!2215488 () (InoxSet Context!9226))

(declare-fun lt!2215464 () (InoxSet Context!9226))

(declare-fun derivationStepZipper!1468 ((InoxSet Context!9226) C!30728) (InoxSet Context!9226))

(assert (=> b!5434432 (= res!2312660 (not (= lt!2215488 (derivationStepZipper!1468 lt!2215464 (h!68312 s!2326)))))))

(declare-fun lambda!285361 () Int)

(declare-fun lt!2215477 () Context!9226)

(declare-fun flatMap!956 ((InoxSet Context!9226) Int) (InoxSet Context!9226))

(declare-fun derivationStepZipperUp!601 (Context!9226 C!30728) (InoxSet Context!9226))

(assert (=> b!5434432 (= (flatMap!956 lt!2215464 lambda!285361) (derivationStepZipperUp!601 lt!2215477 (h!68312 s!2326)))))

(declare-datatypes ((Unit!154438 0))(
  ( (Unit!154439) )
))
(declare-fun lt!2215463 () Unit!154438)

(declare-fun lemmaFlatMapOnSingletonSet!488 ((InoxSet Context!9226) Context!9226 Int) Unit!154438)

(assert (=> b!5434432 (= lt!2215463 (lemmaFlatMapOnSingletonSet!488 lt!2215464 lt!2215477 lambda!285361))))

(assert (=> b!5434432 (= lt!2215464 (store ((as const (Array Context!9226 Bool)) false) lt!2215477 true))))

(declare-fun b!5434433 () Bool)

(declare-fun tp_is_empty!39711 () Bool)

(declare-fun tp!1498766 () Bool)

(assert (=> b!5434433 (= e!3367111 (and tp_is_empty!39711 tp!1498766))))

(declare-fun b!5434434 () Bool)

(declare-fun tp!1498771 () Bool)

(declare-fun tp!1498770 () Bool)

(assert (=> b!5434434 (= e!3367108 (and tp!1498771 tp!1498770))))

(declare-fun e!3367129 () Bool)

(declare-fun b!5434435 () Bool)

(declare-fun tp!1498767 () Bool)

(declare-fun inv!81319 (Context!9226) Bool)

(assert (=> b!5434435 (= e!3367122 (and (inv!81319 (h!68311 zl!343)) e!3367129 tp!1498767))))

(declare-fun b!5434436 () Bool)

(declare-fun res!2312651 () Bool)

(declare-fun e!3367112 () Bool)

(assert (=> b!5434436 (=> res!2312651 e!3367112)))

(declare-fun lt!2215486 () Regex!15229)

(assert (=> b!5434436 (= res!2312651 (not (= lt!2215486 r!7292)))))

(declare-fun setNonEmpty!35463 () Bool)

(declare-fun setElem!35463 () Context!9226)

(declare-fun tp!1498769 () Bool)

(declare-fun e!3367115 () Bool)

(assert (=> setNonEmpty!35463 (= setRes!35463 (and tp!1498769 (inv!81319 setElem!35463) e!3367115))))

(declare-fun setRest!35463 () (InoxSet Context!9226))

(assert (=> setNonEmpty!35463 (= z!1189 ((_ map or) (store ((as const (Array Context!9226 Bool)) false) setElem!35463 true) setRest!35463))))

(declare-fun b!5434437 () Bool)

(declare-fun e!3367120 () Unit!154438)

(declare-fun Unit!154440 () Unit!154438)

(assert (=> b!5434437 (= e!3367120 Unit!154440)))

(declare-fun lt!2215478 () Unit!154438)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!466 ((InoxSet Context!9226) (InoxSet Context!9226) List!61988) Unit!154438)

(assert (=> b!5434437 (= lt!2215478 (lemmaZipperConcatMatchesSameAsBothZippers!466 lt!2215485 lt!2215488 (t!375213 s!2326)))))

(declare-fun res!2312655 () Bool)

(assert (=> b!5434437 (= res!2312655 (matchZipper!1473 lt!2215485 (t!375213 s!2326)))))

(declare-fun e!3367118 () Bool)

(assert (=> b!5434437 (=> res!2312655 e!3367118)))

(assert (=> b!5434437 (= (matchZipper!1473 ((_ map or) lt!2215485 lt!2215488) (t!375213 s!2326)) e!3367118)))

(declare-fun b!5434438 () Bool)

(declare-fun res!2312648 () Bool)

(assert (=> b!5434438 (=> res!2312648 e!3367113)))

(declare-fun generalisedUnion!1158 (List!61986) Regex!15229)

(declare-fun unfocusZipperList!671 (List!61987) List!61986)

(assert (=> b!5434438 (= res!2312648 (not (= r!7292 (generalisedUnion!1158 (unfocusZipperList!671 zl!343)))))))

(declare-fun b!5434439 () Bool)

(declare-fun res!2312634 () Bool)

(assert (=> b!5434439 (=> res!2312634 e!3367124)))

(assert (=> b!5434439 (= res!2312634 lt!2215484)))

(declare-fun b!5434440 () Bool)

(declare-fun tp!1498765 () Bool)

(assert (=> b!5434440 (= e!3367115 tp!1498765)))

(declare-fun b!5434441 () Bool)

(declare-fun res!2312640 () Bool)

(assert (=> b!5434441 (=> res!2312640 e!3367113)))

(declare-fun isEmpty!33868 (List!61987) Bool)

(assert (=> b!5434441 (= res!2312640 (not (isEmpty!33868 (t!375212 zl!343))))))

(declare-fun b!5434442 () Bool)

(declare-fun e!3367130 () Bool)

(declare-fun e!3367123 () Bool)

(assert (=> b!5434442 (= e!3367130 e!3367123)))

(declare-fun res!2312637 () Bool)

(assert (=> b!5434442 (=> res!2312637 e!3367123)))

(declare-fun lt!2215482 () Context!9226)

(declare-fun unfocusZipper!971 (List!61987) Regex!15229)

(assert (=> b!5434442 (= res!2312637 (not (= (unfocusZipper!971 (Cons!61863 lt!2215482 Nil!61863)) (reg!15558 (regOne!30970 r!7292)))))))

(declare-fun lt!2215468 () (InoxSet Context!9226))

(declare-fun lt!2215491 () Context!9226)

(assert (=> b!5434442 (= (flatMap!956 lt!2215468 lambda!285361) (derivationStepZipperUp!601 lt!2215491 (h!68312 s!2326)))))

(declare-fun lt!2215474 () Unit!154438)

(assert (=> b!5434442 (= lt!2215474 (lemmaFlatMapOnSingletonSet!488 lt!2215468 lt!2215491 lambda!285361))))

(declare-fun lt!2215480 () (InoxSet Context!9226))

(assert (=> b!5434442 (= (flatMap!956 lt!2215480 lambda!285361) (derivationStepZipperUp!601 lt!2215482 (h!68312 s!2326)))))

(declare-fun lt!2215479 () Unit!154438)

(assert (=> b!5434442 (= lt!2215479 (lemmaFlatMapOnSingletonSet!488 lt!2215480 lt!2215482 lambda!285361))))

(declare-fun lt!2215489 () (InoxSet Context!9226))

(assert (=> b!5434442 (= lt!2215489 (derivationStepZipperUp!601 lt!2215491 (h!68312 s!2326)))))

(declare-fun lt!2215469 () (InoxSet Context!9226))

(assert (=> b!5434442 (= lt!2215469 (derivationStepZipperUp!601 lt!2215482 (h!68312 s!2326)))))

(assert (=> b!5434442 (= lt!2215468 (store ((as const (Array Context!9226 Bool)) false) lt!2215491 true))))

(assert (=> b!5434442 (= lt!2215480 (store ((as const (Array Context!9226 Bool)) false) lt!2215482 true))))

(assert (=> b!5434442 (= lt!2215482 (Context!9227 (Cons!61862 (reg!15558 (regOne!30970 r!7292)) Nil!61862)))))

(declare-fun b!5434443 () Bool)

(declare-fun e!3367121 () Bool)

(assert (=> b!5434443 (= e!3367121 e!3367130)))

(declare-fun res!2312657 () Bool)

(assert (=> b!5434443 (=> res!2312657 e!3367130)))

(declare-fun lt!2215494 () Context!9226)

(declare-fun lt!2215497 () Regex!15229)

(assert (=> b!5434443 (= res!2312657 (not (= (unfocusZipper!971 (Cons!61863 lt!2215494 Nil!61863)) lt!2215497)))))

(declare-fun lt!2215483 () Regex!15229)

(assert (=> b!5434443 (= lt!2215497 (Concat!24074 (reg!15558 (regOne!30970 r!7292)) lt!2215483))))

(declare-fun b!5434444 () Bool)

(declare-fun res!2312646 () Bool)

(declare-fun e!3367114 () Bool)

(assert (=> b!5434444 (=> res!2312646 e!3367114)))

(declare-fun e!3367117 () Bool)

(assert (=> b!5434444 (= res!2312646 e!3367117)))

(declare-fun res!2312639 () Bool)

(assert (=> b!5434444 (=> (not res!2312639) (not e!3367117))))

(assert (=> b!5434444 (= res!2312639 ((_ is Concat!24074) (regOne!30970 r!7292)))))

(declare-fun b!5434445 () Bool)

(declare-fun res!2312659 () Bool)

(assert (=> b!5434445 (=> res!2312659 e!3367127)))

(declare-fun lt!2215475 () Bool)

(assert (=> b!5434445 (= res!2312659 (not lt!2215475))))

(declare-fun b!5434446 () Bool)

(assert (=> b!5434446 (= e!3367118 (matchZipper!1473 lt!2215488 (t!375213 s!2326)))))

(declare-fun b!5434447 () Bool)

(assert (=> b!5434447 (= e!3367112 e!3367121)))

(declare-fun res!2312645 () Bool)

(assert (=> b!5434447 (=> res!2312645 e!3367121)))

(assert (=> b!5434447 (= res!2312645 (not (= r!7292 lt!2215483)))))

(declare-fun lt!2215473 () Regex!15229)

(assert (=> b!5434447 (= lt!2215483 (Concat!24074 lt!2215473 (regTwo!30970 r!7292)))))

(declare-fun b!5434448 () Bool)

(declare-fun res!2312629 () Bool)

(assert (=> b!5434448 (=> res!2312629 e!3367124)))

(assert (=> b!5434448 (= res!2312629 (not (matchZipper!1473 lt!2215488 (t!375213 s!2326))))))

(declare-fun b!5434449 () Bool)

(declare-fun tp!1498773 () Bool)

(declare-fun tp!1498764 () Bool)

(assert (=> b!5434449 (= e!3367108 (and tp!1498773 tp!1498764))))

(declare-fun b!5434450 () Bool)

(declare-fun e!3367110 () Bool)

(assert (=> b!5434450 (= e!3367110 true)))

(declare-fun b!5434451 () Bool)

(declare-fun res!2312649 () Bool)

(assert (=> b!5434451 (=> res!2312649 e!3367114)))

(assert (=> b!5434451 (= res!2312649 (or ((_ is Concat!24074) (regOne!30970 r!7292)) (not ((_ is Star!15229) (regOne!30970 r!7292)))))))

(declare-fun setIsEmpty!35463 () Bool)

(assert (=> setIsEmpty!35463 setRes!35463))

(declare-fun b!5434452 () Bool)

(declare-fun e!3367116 () Bool)

(assert (=> b!5434452 (= e!3367114 e!3367116)))

(declare-fun res!2312650 () Bool)

(assert (=> b!5434452 (=> res!2312650 e!3367116)))

(declare-fun lt!2215472 () (InoxSet Context!9226))

(assert (=> b!5434452 (= res!2312650 (not (= lt!2215485 lt!2215472)))))

(declare-fun derivationStepZipperDown!677 (Regex!15229 Context!9226 C!30728) (InoxSet Context!9226))

(assert (=> b!5434452 (= lt!2215472 (derivationStepZipperDown!677 (reg!15558 (regOne!30970 r!7292)) lt!2215491 (h!68312 s!2326)))))

(declare-fun lt!2215470 () List!61986)

(assert (=> b!5434452 (= lt!2215491 (Context!9227 lt!2215470))))

(assert (=> b!5434452 (= lt!2215470 (Cons!61862 lt!2215473 (t!375211 (exprs!5113 (h!68311 zl!343)))))))

(assert (=> b!5434452 (= lt!2215473 (Star!15229 (reg!15558 (regOne!30970 r!7292))))))

(declare-fun b!5434453 () Bool)

(assert (=> b!5434453 (= e!3367108 tp_is_empty!39711)))

(declare-fun b!5434454 () Bool)

(declare-fun res!2312633 () Bool)

(declare-fun e!3367128 () Bool)

(assert (=> b!5434454 (=> res!2312633 e!3367128)))

(declare-fun isEmpty!33869 (List!61986) Bool)

(assert (=> b!5434454 (= res!2312633 (isEmpty!33869 (t!375211 (exprs!5113 (h!68311 zl!343)))))))

(declare-fun b!5434455 () Bool)

(declare-fun res!2312635 () Bool)

(assert (=> b!5434455 (=> res!2312635 e!3367112)))

(declare-fun lt!2215493 () (InoxSet Context!9226))

(declare-fun lt!2215499 () (InoxSet Context!9226))

(assert (=> b!5434455 (= res!2312635 (not (= (matchZipper!1473 lt!2215493 s!2326) (matchZipper!1473 lt!2215499 (t!375213 s!2326)))))))

(declare-fun b!5434456 () Bool)

(declare-fun res!2312632 () Bool)

(assert (=> b!5434456 (=> res!2312632 e!3367123)))

(assert (=> b!5434456 (= res!2312632 (not (= (unfocusZipper!971 (Cons!61863 lt!2215491 Nil!61863)) lt!2215483)))))

(declare-fun b!5434457 () Bool)

(assert (=> b!5434457 (= e!3367119 (not (matchZipper!1473 lt!2215488 (t!375213 s!2326))))))

(declare-fun b!5434458 () Bool)

(declare-fun e!3367109 () Bool)

(assert (=> b!5434458 (= e!3367126 e!3367109)))

(declare-fun res!2312656 () Bool)

(assert (=> b!5434458 (=> res!2312656 e!3367109)))

(declare-fun lt!2215471 () Regex!15229)

(declare-fun regexDepth!185 (Regex!15229) Int)

(assert (=> b!5434458 (= res!2312656 (< (regexDepth!185 r!7292) (regexDepth!185 lt!2215471)))))

(declare-fun generalisedConcat!898 (List!61986) Regex!15229)

(assert (=> b!5434458 (= lt!2215471 (generalisedConcat!898 (t!375211 (exprs!5113 (h!68311 zl!343)))))))

(declare-fun b!5434459 () Bool)

(declare-fun e!3367131 () Bool)

(assert (=> b!5434459 (= e!3367132 e!3367131)))

(declare-fun res!2312663 () Bool)

(assert (=> b!5434459 (=> (not res!2312663) (not e!3367131))))

(assert (=> b!5434459 (= res!2312663 (= r!7292 lt!2215486))))

(assert (=> b!5434459 (= lt!2215486 (unfocusZipper!971 zl!343))))

(declare-fun b!5434460 () Bool)

(declare-fun Unit!154441 () Unit!154438)

(assert (=> b!5434460 (= e!3367120 Unit!154441)))

(declare-fun b!5434461 () Bool)

(declare-fun nullable!5398 (Regex!15229) Bool)

(assert (=> b!5434461 (= e!3367117 (nullable!5398 (regOne!30970 (regOne!30970 r!7292))))))

(declare-fun b!5434462 () Bool)

(declare-fun tp!1498768 () Bool)

(assert (=> b!5434462 (= e!3367129 tp!1498768)))

(assert (=> b!5434463 (= e!3367128 e!3367114)))

(declare-fun res!2312658 () Bool)

(assert (=> b!5434463 (=> res!2312658 e!3367114)))

(assert (=> b!5434463 (= res!2312658 (or (and ((_ is ElementMatch!15229) (regOne!30970 r!7292)) (= (c!948477 (regOne!30970 r!7292)) (h!68312 s!2326))) ((_ is Union!15229) (regOne!30970 r!7292))))))

(declare-fun lt!2215466 () Unit!154438)

(assert (=> b!5434463 (= lt!2215466 e!3367120)))

(declare-fun c!948476 () Bool)

(assert (=> b!5434463 (= c!948476 lt!2215475)))

(assert (=> b!5434463 (= lt!2215475 (nullable!5398 (h!68310 (exprs!5113 (h!68311 zl!343)))))))

(assert (=> b!5434463 (= (flatMap!956 z!1189 lambda!285361) (derivationStepZipperUp!601 (h!68311 zl!343) (h!68312 s!2326)))))

(declare-fun lt!2215496 () Unit!154438)

(assert (=> b!5434463 (= lt!2215496 (lemmaFlatMapOnSingletonSet!488 z!1189 (h!68311 zl!343) lambda!285361))))

(assert (=> b!5434463 (= lt!2215488 (derivationStepZipperUp!601 lt!2215477 (h!68312 s!2326)))))

(assert (=> b!5434463 (= lt!2215485 (derivationStepZipperDown!677 (h!68310 (exprs!5113 (h!68311 zl!343))) lt!2215477 (h!68312 s!2326)))))

(assert (=> b!5434463 (= lt!2215477 (Context!9227 (t!375211 (exprs!5113 (h!68311 zl!343)))))))

(declare-fun lt!2215498 () (InoxSet Context!9226))

(assert (=> b!5434463 (= lt!2215498 (derivationStepZipperUp!601 (Context!9227 (Cons!61862 (h!68310 (exprs!5113 (h!68311 zl!343))) (t!375211 (exprs!5113 (h!68311 zl!343))))) (h!68312 s!2326)))))

(declare-fun b!5434464 () Bool)

(declare-fun e!3367125 () Bool)

(assert (=> b!5434464 (= e!3367125 e!3367110)))

(declare-fun res!2312662 () Bool)

(assert (=> b!5434464 (=> res!2312662 e!3367110)))

(declare-fun matchR!7414 (Regex!15229 List!61988) Bool)

(assert (=> b!5434464 (= res!2312662 (not (matchR!7414 (regTwo!30970 r!7292) s!2326)))))

(assert (=> b!5434464 (= (matchR!7414 lt!2215471 s!2326) (matchZipper!1473 lt!2215464 s!2326))))

(declare-fun lt!2215487 () List!61987)

(declare-fun lt!2215490 () Unit!154438)

(declare-fun theoremZipperRegexEquiv!533 ((InoxSet Context!9226) List!61987 Regex!15229 List!61988) Unit!154438)

(assert (=> b!5434464 (= lt!2215490 (theoremZipperRegexEquiv!533 lt!2215464 lt!2215487 lt!2215471 s!2326))))

(declare-fun b!5434465 () Bool)

(declare-fun res!2312647 () Bool)

(assert (=> b!5434465 (=> res!2312647 e!3367113)))

(assert (=> b!5434465 (= res!2312647 (not (= r!7292 (generalisedConcat!898 (exprs!5113 (h!68311 zl!343))))))))

(declare-fun b!5434466 () Bool)

(assert (=> b!5434466 (= e!3367131 (not e!3367113))))

(declare-fun res!2312642 () Bool)

(assert (=> b!5434466 (=> res!2312642 e!3367113)))

(assert (=> b!5434466 (= res!2312642 (not ((_ is Cons!61863) zl!343)))))

(declare-fun lt!2215495 () Bool)

(declare-fun matchRSpec!2332 (Regex!15229 List!61988) Bool)

(assert (=> b!5434466 (= lt!2215495 (matchRSpec!2332 r!7292 s!2326))))

(assert (=> b!5434466 (= lt!2215495 (matchR!7414 r!7292 s!2326))))

(declare-fun lt!2215500 () Unit!154438)

(declare-fun mainMatchTheorem!2332 (Regex!15229 List!61988) Unit!154438)

(assert (=> b!5434466 (= lt!2215500 (mainMatchTheorem!2332 r!7292 s!2326))))

(declare-fun b!5434467 () Bool)

(declare-fun res!2312630 () Bool)

(assert (=> b!5434467 (=> res!2312630 e!3367113)))

(assert (=> b!5434467 (= res!2312630 (or ((_ is EmptyExpr!15229) r!7292) ((_ is EmptyLang!15229) r!7292) ((_ is ElementMatch!15229) r!7292) ((_ is Union!15229) r!7292) (not ((_ is Concat!24074) r!7292))))))

(declare-fun b!5434468 () Bool)

(assert (=> b!5434468 (= e!3367123 e!3367127)))

(declare-fun res!2312631 () Bool)

(assert (=> b!5434468 (=> res!2312631 e!3367127)))

(assert (=> b!5434468 (= res!2312631 lt!2215495)))

(assert (=> b!5434468 (= (matchR!7414 lt!2215497 s!2326) (matchRSpec!2332 lt!2215497 s!2326))))

(declare-fun lt!2215492 () Unit!154438)

(assert (=> b!5434468 (= lt!2215492 (mainMatchTheorem!2332 lt!2215497 s!2326))))

(declare-fun b!5434469 () Bool)

(assert (=> b!5434469 (= e!3367116 e!3367112)))

(declare-fun res!2312643 () Bool)

(assert (=> b!5434469 (=> res!2312643 e!3367112)))

(assert (=> b!5434469 (= res!2312643 (not (= lt!2215499 lt!2215472)))))

(assert (=> b!5434469 (= (flatMap!956 lt!2215493 lambda!285361) (derivationStepZipperUp!601 lt!2215494 (h!68312 s!2326)))))

(declare-fun lt!2215481 () Unit!154438)

(assert (=> b!5434469 (= lt!2215481 (lemmaFlatMapOnSingletonSet!488 lt!2215493 lt!2215494 lambda!285361))))

(declare-fun lt!2215465 () (InoxSet Context!9226))

(assert (=> b!5434469 (= lt!2215465 (derivationStepZipperUp!601 lt!2215494 (h!68312 s!2326)))))

(assert (=> b!5434469 (= lt!2215499 (derivationStepZipper!1468 lt!2215493 (h!68312 s!2326)))))

(assert (=> b!5434469 (= lt!2215493 (store ((as const (Array Context!9226 Bool)) false) lt!2215494 true))))

(assert (=> b!5434469 (= lt!2215494 (Context!9227 (Cons!61862 (reg!15558 (regOne!30970 r!7292)) lt!2215470)))))

(declare-fun b!5434470 () Bool)

(assert (=> b!5434470 (= e!3367109 e!3367125)))

(declare-fun res!2312641 () Bool)

(assert (=> b!5434470 (=> res!2312641 e!3367125)))

(declare-fun zipperDepth!170 (List!61987) Int)

(assert (=> b!5434470 (= res!2312641 (< (zipperDepth!170 zl!343) (zipperDepth!170 lt!2215487)))))

(assert (=> b!5434470 (= lt!2215487 (Cons!61863 lt!2215477 Nil!61863))))

(assert (=> b!5434471 (= e!3367113 e!3367128)))

(declare-fun res!2312638 () Bool)

(assert (=> b!5434471 (=> res!2312638 e!3367128)))

(declare-fun lt!2215476 () Bool)

(assert (=> b!5434471 (= res!2312638 (or (not (= lt!2215495 lt!2215476)) ((_ is Nil!61864) s!2326)))))

(declare-fun Exists!2410 (Int) Bool)

(assert (=> b!5434471 (= (Exists!2410 lambda!285359) (Exists!2410 lambda!285360))))

(declare-fun lt!2215467 () Unit!154438)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1064 (Regex!15229 Regex!15229 List!61988) Unit!154438)

(assert (=> b!5434471 (= lt!2215467 (lemmaExistCutMatchRandMatchRSpecEquivalent!1064 (regOne!30970 r!7292) (regTwo!30970 r!7292) s!2326))))

(assert (=> b!5434471 (= lt!2215476 (Exists!2410 lambda!285359))))

(declare-datatypes ((tuple2!64856 0))(
  ( (tuple2!64857 (_1!35731 List!61988) (_2!35731 List!61988)) )
))
(declare-datatypes ((Option!15340 0))(
  ( (None!15339) (Some!15339 (v!51368 tuple2!64856)) )
))
(declare-fun isDefined!12043 (Option!15340) Bool)

(declare-fun findConcatSeparation!1754 (Regex!15229 Regex!15229 List!61988 List!61988 List!61988) Option!15340)

(assert (=> b!5434471 (= lt!2215476 (isDefined!12043 (findConcatSeparation!1754 (regOne!30970 r!7292) (regTwo!30970 r!7292) Nil!61864 s!2326 s!2326)))))

(declare-fun lt!2215462 () Unit!154438)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1518 (Regex!15229 Regex!15229 List!61988) Unit!154438)

(assert (=> b!5434471 (= lt!2215462 (lemmaFindConcatSeparationEquivalentToExists!1518 (regOne!30970 r!7292) (regTwo!30970 r!7292) s!2326))))

(assert (= (and start!570242 res!2312654) b!5434430))

(assert (= (and b!5434430 res!2312644) b!5434459))

(assert (= (and b!5434459 res!2312663) b!5434466))

(assert (= (and b!5434466 (not res!2312642)) b!5434441))

(assert (= (and b!5434441 (not res!2312640)) b!5434465))

(assert (= (and b!5434465 (not res!2312647)) b!5434427))

(assert (= (and b!5434427 (not res!2312652)) b!5434438))

(assert (= (and b!5434438 (not res!2312648)) b!5434467))

(assert (= (and b!5434467 (not res!2312630)) b!5434471))

(assert (= (and b!5434471 (not res!2312638)) b!5434454))

(assert (= (and b!5434454 (not res!2312633)) b!5434463))

(assert (= (and b!5434463 c!948476) b!5434437))

(assert (= (and b!5434463 (not c!948476)) b!5434460))

(assert (= (and b!5434437 (not res!2312655)) b!5434446))

(assert (= (and b!5434463 (not res!2312658)) b!5434444))

(assert (= (and b!5434444 res!2312639) b!5434461))

(assert (= (and b!5434444 (not res!2312646)) b!5434451))

(assert (= (and b!5434451 (not res!2312649)) b!5434452))

(assert (= (and b!5434452 (not res!2312650)) b!5434469))

(assert (= (and b!5434469 (not res!2312643)) b!5434455))

(assert (= (and b!5434455 (not res!2312635)) b!5434436))

(assert (= (and b!5434436 (not res!2312651)) b!5434447))

(assert (= (and b!5434447 (not res!2312645)) b!5434443))

(assert (= (and b!5434443 (not res!2312657)) b!5434442))

(assert (= (and b!5434442 (not res!2312637)) b!5434456))

(assert (= (and b!5434456 (not res!2312632)) b!5434468))

(assert (= (and b!5434468 (not res!2312631)) b!5434429))

(assert (= (and b!5434429 (not res!2312661)) b!5434445))

(assert (= (and b!5434445 (not res!2312659)) b!5434431))

(assert (= (and b!5434431 res!2312636) b!5434457))

(assert (= (and b!5434431 (not res!2312653)) b!5434439))

(assert (= (and b!5434439 (not res!2312634)) b!5434448))

(assert (= (and b!5434448 (not res!2312629)) b!5434432))

(assert (= (and b!5434432 (not res!2312660)) b!5434458))

(assert (= (and b!5434458 (not res!2312656)) b!5434470))

(assert (= (and b!5434470 (not res!2312641)) b!5434464))

(assert (= (and b!5434464 (not res!2312662)) b!5434450))

(assert (= (and start!570242 ((_ is ElementMatch!15229) r!7292)) b!5434453))

(assert (= (and start!570242 ((_ is Concat!24074) r!7292)) b!5434449))

(assert (= (and start!570242 ((_ is Star!15229) r!7292)) b!5434428))

(assert (= (and start!570242 ((_ is Union!15229) r!7292)) b!5434434))

(assert (= (and start!570242 condSetEmpty!35463) setIsEmpty!35463))

(assert (= (and start!570242 (not condSetEmpty!35463)) setNonEmpty!35463))

(assert (= setNonEmpty!35463 b!5434440))

(assert (= b!5434435 b!5434462))

(assert (= (and start!570242 ((_ is Cons!61863) zl!343)) b!5434435))

(assert (= (and start!570242 ((_ is Cons!61864) s!2326)) b!5434433))

(declare-fun m!6456582 () Bool)

(assert (=> b!5434468 m!6456582))

(declare-fun m!6456584 () Bool)

(assert (=> b!5434468 m!6456584))

(declare-fun m!6456586 () Bool)

(assert (=> b!5434468 m!6456586))

(declare-fun m!6456588 () Bool)

(assert (=> b!5434463 m!6456588))

(declare-fun m!6456590 () Bool)

(assert (=> b!5434463 m!6456590))

(declare-fun m!6456592 () Bool)

(assert (=> b!5434463 m!6456592))

(declare-fun m!6456594 () Bool)

(assert (=> b!5434463 m!6456594))

(declare-fun m!6456596 () Bool)

(assert (=> b!5434463 m!6456596))

(declare-fun m!6456598 () Bool)

(assert (=> b!5434463 m!6456598))

(declare-fun m!6456600 () Bool)

(assert (=> b!5434463 m!6456600))

(declare-fun m!6456602 () Bool)

(assert (=> b!5434459 m!6456602))

(declare-fun m!6456604 () Bool)

(assert (=> b!5434431 m!6456604))

(declare-fun m!6456606 () Bool)

(assert (=> b!5434456 m!6456606))

(declare-fun m!6456608 () Bool)

(assert (=> setNonEmpty!35463 m!6456608))

(declare-fun m!6456610 () Bool)

(assert (=> start!570242 m!6456610))

(declare-fun m!6456612 () Bool)

(assert (=> b!5434466 m!6456612))

(declare-fun m!6456614 () Bool)

(assert (=> b!5434466 m!6456614))

(declare-fun m!6456616 () Bool)

(assert (=> b!5434466 m!6456616))

(declare-fun m!6456618 () Bool)

(assert (=> b!5434461 m!6456618))

(declare-fun m!6456620 () Bool)

(assert (=> b!5434446 m!6456620))

(declare-fun m!6456622 () Bool)

(assert (=> b!5434443 m!6456622))

(declare-fun m!6456624 () Bool)

(assert (=> b!5434465 m!6456624))

(declare-fun m!6456626 () Bool)

(assert (=> b!5434458 m!6456626))

(declare-fun m!6456628 () Bool)

(assert (=> b!5434458 m!6456628))

(declare-fun m!6456630 () Bool)

(assert (=> b!5434458 m!6456630))

(declare-fun m!6456632 () Bool)

(assert (=> b!5434430 m!6456632))

(declare-fun m!6456634 () Bool)

(assert (=> b!5434464 m!6456634))

(declare-fun m!6456636 () Bool)

(assert (=> b!5434464 m!6456636))

(declare-fun m!6456638 () Bool)

(assert (=> b!5434464 m!6456638))

(declare-fun m!6456640 () Bool)

(assert (=> b!5434464 m!6456640))

(declare-fun m!6456642 () Bool)

(assert (=> b!5434469 m!6456642))

(declare-fun m!6456644 () Bool)

(assert (=> b!5434469 m!6456644))

(declare-fun m!6456646 () Bool)

(assert (=> b!5434469 m!6456646))

(declare-fun m!6456648 () Bool)

(assert (=> b!5434469 m!6456648))

(declare-fun m!6456650 () Bool)

(assert (=> b!5434469 m!6456650))

(declare-fun m!6456652 () Bool)

(assert (=> b!5434429 m!6456652))

(declare-fun m!6456654 () Bool)

(assert (=> b!5434470 m!6456654))

(declare-fun m!6456656 () Bool)

(assert (=> b!5434470 m!6456656))

(assert (=> b!5434448 m!6456620))

(declare-fun m!6456658 () Bool)

(assert (=> b!5434435 m!6456658))

(assert (=> b!5434457 m!6456620))

(declare-fun m!6456660 () Bool)

(assert (=> b!5434452 m!6456660))

(declare-fun m!6456662 () Bool)

(assert (=> b!5434471 m!6456662))

(declare-fun m!6456664 () Bool)

(assert (=> b!5434471 m!6456664))

(declare-fun m!6456666 () Bool)

(assert (=> b!5434471 m!6456666))

(declare-fun m!6456668 () Bool)

(assert (=> b!5434471 m!6456668))

(assert (=> b!5434471 m!6456662))

(declare-fun m!6456670 () Bool)

(assert (=> b!5434471 m!6456670))

(assert (=> b!5434471 m!6456666))

(declare-fun m!6456672 () Bool)

(assert (=> b!5434471 m!6456672))

(declare-fun m!6456674 () Bool)

(assert (=> b!5434432 m!6456674))

(declare-fun m!6456676 () Bool)

(assert (=> b!5434432 m!6456676))

(assert (=> b!5434432 m!6456600))

(declare-fun m!6456678 () Bool)

(assert (=> b!5434432 m!6456678))

(declare-fun m!6456680 () Bool)

(assert (=> b!5434432 m!6456680))

(declare-fun m!6456682 () Bool)

(assert (=> b!5434442 m!6456682))

(declare-fun m!6456684 () Bool)

(assert (=> b!5434442 m!6456684))

(declare-fun m!6456686 () Bool)

(assert (=> b!5434442 m!6456686))

(declare-fun m!6456688 () Bool)

(assert (=> b!5434442 m!6456688))

(declare-fun m!6456690 () Bool)

(assert (=> b!5434442 m!6456690))

(declare-fun m!6456692 () Bool)

(assert (=> b!5434442 m!6456692))

(declare-fun m!6456694 () Bool)

(assert (=> b!5434442 m!6456694))

(declare-fun m!6456696 () Bool)

(assert (=> b!5434442 m!6456696))

(declare-fun m!6456698 () Bool)

(assert (=> b!5434442 m!6456698))

(declare-fun m!6456700 () Bool)

(assert (=> b!5434454 m!6456700))

(declare-fun m!6456702 () Bool)

(assert (=> b!5434441 m!6456702))

(declare-fun m!6456704 () Bool)

(assert (=> b!5434438 m!6456704))

(assert (=> b!5434438 m!6456704))

(declare-fun m!6456706 () Bool)

(assert (=> b!5434438 m!6456706))

(declare-fun m!6456708 () Bool)

(assert (=> b!5434437 m!6456708))

(assert (=> b!5434437 m!6456604))

(declare-fun m!6456710 () Bool)

(assert (=> b!5434437 m!6456710))

(declare-fun m!6456712 () Bool)

(assert (=> b!5434455 m!6456712))

(declare-fun m!6456714 () Bool)

(assert (=> b!5434455 m!6456714))

(check-sat (not b!5434435) (not b!5434428) (not b!5434468) (not b!5434446) (not b!5434456) (not b!5434440) (not b!5434434) (not b!5434431) (not b!5434438) (not b!5434464) (not b!5434448) (not b!5434470) (not b!5434429) (not b!5434465) (not start!570242) (not b!5434457) (not b!5434459) (not b!5434449) (not b!5434469) (not b!5434454) (not b!5434458) (not b!5434463) (not b!5434443) (not b!5434466) (not b!5434442) (not b!5434461) (not setNonEmpty!35463) (not b!5434441) (not b!5434433) (not b!5434430) (not b!5434471) tp_is_empty!39711 (not b!5434432) (not b!5434455) (not b!5434437) (not b!5434462) (not b!5434452))
(check-sat)
