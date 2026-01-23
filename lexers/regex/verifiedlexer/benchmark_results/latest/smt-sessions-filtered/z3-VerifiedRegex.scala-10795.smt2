; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553690 () Bool)

(assert start!553690)

(declare-fun b!5237498 () Bool)

(assert (=> b!5237498 true))

(assert (=> b!5237498 true))

(declare-fun lambda!263323 () Int)

(declare-fun lambda!263322 () Int)

(assert (=> b!5237498 (not (= lambda!263323 lambda!263322))))

(assert (=> b!5237498 true))

(assert (=> b!5237498 true))

(declare-fun b!5237510 () Bool)

(assert (=> b!5237510 true))

(declare-fun e!3259060 () Bool)

(declare-fun e!3259072 () Bool)

(assert (=> b!5237498 (= e!3259060 e!3259072)))

(declare-fun res!2223139 () Bool)

(assert (=> b!5237498 (=> res!2223139 e!3259072)))

(declare-fun lt!2147532 () Bool)

(declare-fun lt!2147528 () Bool)

(declare-datatypes ((C!29944 0))(
  ( (C!29945 (val!24674 Int)) )
))
(declare-datatypes ((List!60810 0))(
  ( (Nil!60686) (Cons!60686 (h!67134 C!29944) (t!373991 List!60810)) )
))
(declare-fun s!2326 () List!60810)

(get-info :version)

(assert (=> b!5237498 (= res!2223139 (or (not (= lt!2147532 lt!2147528)) ((_ is Nil!60686) s!2326)))))

(declare-fun Exists!2018 (Int) Bool)

(assert (=> b!5237498 (= (Exists!2018 lambda!263322) (Exists!2018 lambda!263323))))

(declare-datatypes ((Unit!152710 0))(
  ( (Unit!152711) )
))
(declare-fun lt!2147522 () Unit!152710)

(declare-datatypes ((Regex!14837 0))(
  ( (ElementMatch!14837 (c!904949 C!29944)) (Concat!23682 (regOne!30186 Regex!14837) (regTwo!30186 Regex!14837)) (EmptyExpr!14837) (Star!14837 (reg!15166 Regex!14837)) (EmptyLang!14837) (Union!14837 (regOne!30187 Regex!14837) (regTwo!30187 Regex!14837)) )
))
(declare-fun r!7292 () Regex!14837)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!672 (Regex!14837 Regex!14837 List!60810) Unit!152710)

(assert (=> b!5237498 (= lt!2147522 (lemmaExistCutMatchRandMatchRSpecEquivalent!672 (regOne!30186 r!7292) (regTwo!30186 r!7292) s!2326))))

(assert (=> b!5237498 (= lt!2147528 (Exists!2018 lambda!263322))))

(declare-datatypes ((tuple2!64072 0))(
  ( (tuple2!64073 (_1!35339 List!60810) (_2!35339 List!60810)) )
))
(declare-datatypes ((Option!14948 0))(
  ( (None!14947) (Some!14947 (v!50976 tuple2!64072)) )
))
(declare-fun isDefined!11651 (Option!14948) Bool)

(declare-fun findConcatSeparation!1362 (Regex!14837 Regex!14837 List!60810 List!60810 List!60810) Option!14948)

(assert (=> b!5237498 (= lt!2147528 (isDefined!11651 (findConcatSeparation!1362 (regOne!30186 r!7292) (regTwo!30186 r!7292) Nil!60686 s!2326 s!2326)))))

(declare-fun lt!2147524 () Unit!152710)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1126 (Regex!14837 Regex!14837 List!60810) Unit!152710)

(assert (=> b!5237498 (= lt!2147524 (lemmaFindConcatSeparationEquivalentToExists!1126 (regOne!30186 r!7292) (regTwo!30186 r!7292) s!2326))))

(declare-fun b!5237499 () Bool)

(declare-fun e!3259059 () Bool)

(declare-fun tp!1467076 () Bool)

(assert (=> b!5237499 (= e!3259059 tp!1467076)))

(declare-fun tp!1467073 () Bool)

(declare-fun setNonEmpty!33395 () Bool)

(declare-fun e!3259064 () Bool)

(declare-fun setRes!33395 () Bool)

(declare-datatypes ((List!60811 0))(
  ( (Nil!60687) (Cons!60687 (h!67135 Regex!14837) (t!373992 List!60811)) )
))
(declare-datatypes ((Context!8442 0))(
  ( (Context!8443 (exprs!4721 List!60811)) )
))
(declare-fun setElem!33395 () Context!8442)

(declare-fun inv!80339 (Context!8442) Bool)

(assert (=> setNonEmpty!33395 (= setRes!33395 (and tp!1467073 (inv!80339 setElem!33395) e!3259064))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8442))

(declare-fun setRest!33395 () (InoxSet Context!8442))

(assert (=> setNonEmpty!33395 (= z!1189 ((_ map or) (store ((as const (Array Context!8442 Bool)) false) setElem!33395 true) setRest!33395))))

(declare-fun b!5237500 () Bool)

(declare-fun e!3259068 () Bool)

(declare-fun lt!2147535 () (InoxSet Context!8442))

(declare-fun matchZipper!1081 ((InoxSet Context!8442) List!60810) Bool)

(assert (=> b!5237500 (= e!3259068 (not (matchZipper!1081 lt!2147535 (t!373991 s!2326))))))

(declare-fun b!5237501 () Bool)

(declare-fun e!3259061 () Bool)

(declare-fun e!3259058 () Bool)

(assert (=> b!5237501 (= e!3259061 e!3259058)))

(declare-fun res!2223148 () Bool)

(assert (=> b!5237501 (=> (not res!2223148) (not e!3259058))))

(declare-fun lt!2147495 () Regex!14837)

(assert (=> b!5237501 (= res!2223148 (= r!7292 lt!2147495))))

(declare-datatypes ((List!60812 0))(
  ( (Nil!60688) (Cons!60688 (h!67136 Context!8442) (t!373993 List!60812)) )
))
(declare-fun zl!343 () List!60812)

(declare-fun unfocusZipper!579 (List!60812) Regex!14837)

(assert (=> b!5237501 (= lt!2147495 (unfocusZipper!579 zl!343))))

(declare-fun b!5237502 () Bool)

(declare-fun e!3259066 () Bool)

(declare-fun e!3259063 () Bool)

(assert (=> b!5237502 (= e!3259066 e!3259063)))

(declare-fun res!2223135 () Bool)

(assert (=> b!5237502 (=> res!2223135 e!3259063)))

(declare-fun lt!2147519 () (InoxSet Context!8442))

(declare-fun lt!2147507 () (InoxSet Context!8442))

(assert (=> b!5237502 (= res!2223135 (not (= lt!2147519 lt!2147507)))))

(declare-fun lt!2147527 () (InoxSet Context!8442))

(assert (=> b!5237502 (= lt!2147507 ((_ map or) lt!2147527 lt!2147535))))

(declare-fun lt!2147494 () Context!8442)

(declare-fun derivationStepZipperDown!285 (Regex!14837 Context!8442 C!29944) (InoxSet Context!8442))

(assert (=> b!5237502 (= lt!2147535 (derivationStepZipperDown!285 (regTwo!30187 (regOne!30186 r!7292)) lt!2147494 (h!67134 s!2326)))))

(assert (=> b!5237502 (= lt!2147527 (derivationStepZipperDown!285 (regOne!30187 (regOne!30186 r!7292)) lt!2147494 (h!67134 s!2326)))))

(declare-fun b!5237503 () Bool)

(declare-fun e!3259080 () Bool)

(declare-fun lt!2147512 () (InoxSet Context!8442))

(assert (=> b!5237503 (= e!3259080 (matchZipper!1081 lt!2147512 (t!373991 s!2326)))))

(declare-fun b!5237505 () Bool)

(declare-fun e!3259062 () Bool)

(declare-fun e!3259065 () Bool)

(assert (=> b!5237505 (= e!3259062 e!3259065)))

(declare-fun res!2223145 () Bool)

(assert (=> b!5237505 (=> res!2223145 e!3259065)))

(declare-fun lt!2147525 () List!60812)

(declare-fun lt!2147505 () Int)

(declare-fun zipperDepthTotal!18 (List!60812) Int)

(assert (=> b!5237505 (= res!2223145 (>= (zipperDepthTotal!18 lt!2147525) lt!2147505))))

(declare-fun lt!2147529 () Context!8442)

(assert (=> b!5237505 (= lt!2147525 (Cons!60688 lt!2147529 Nil!60688))))

(declare-fun b!5237506 () Bool)

(declare-fun res!2223129 () Bool)

(assert (=> b!5237506 (=> res!2223129 e!3259060)))

(declare-fun generalisedUnion!766 (List!60811) Regex!14837)

(declare-fun unfocusZipperList!279 (List!60812) List!60811)

(assert (=> b!5237506 (= res!2223129 (not (= r!7292 (generalisedUnion!766 (unfocusZipperList!279 zl!343)))))))

(declare-fun b!5237507 () Bool)

(declare-fun e!3259079 () Bool)

(declare-fun e!3259057 () Bool)

(assert (=> b!5237507 (= e!3259079 e!3259057)))

(declare-fun res!2223126 () Bool)

(assert (=> b!5237507 (=> res!2223126 e!3259057)))

(declare-fun e!3259075 () Bool)

(assert (=> b!5237507 (= res!2223126 (not (= (matchZipper!1081 z!1189 s!2326) e!3259075)))))

(declare-fun res!2223130 () Bool)

(assert (=> b!5237507 (=> res!2223130 e!3259075)))

(declare-fun lt!2147500 () Bool)

(assert (=> b!5237507 (= res!2223130 lt!2147500)))

(declare-fun lt!2147493 () (InoxSet Context!8442))

(assert (=> b!5237507 (= lt!2147500 (matchZipper!1081 lt!2147493 s!2326))))

(declare-fun lt!2147501 () Unit!152710)

(declare-fun e!3259076 () Unit!152710)

(assert (=> b!5237507 (= lt!2147501 e!3259076)))

(declare-fun c!904946 () Bool)

(declare-fun nullable!5006 (Regex!14837) Bool)

(assert (=> b!5237507 (= c!904946 (nullable!5006 (regTwo!30187 (regOne!30186 r!7292))))))

(declare-fun lt!2147517 () (InoxSet Context!8442))

(declare-fun lambda!263324 () Int)

(declare-fun flatMap!564 ((InoxSet Context!8442) Int) (InoxSet Context!8442))

(declare-fun derivationStepZipperUp!209 (Context!8442 C!29944) (InoxSet Context!8442))

(assert (=> b!5237507 (= (flatMap!564 lt!2147517 lambda!263324) (derivationStepZipperUp!209 lt!2147529 (h!67134 s!2326)))))

(declare-fun lt!2147498 () Unit!152710)

(declare-fun lemmaFlatMapOnSingletonSet!96 ((InoxSet Context!8442) Context!8442 Int) Unit!152710)

(assert (=> b!5237507 (= lt!2147498 (lemmaFlatMapOnSingletonSet!96 lt!2147517 lt!2147529 lambda!263324))))

(declare-fun lt!2147510 () (InoxSet Context!8442))

(assert (=> b!5237507 (= lt!2147510 (derivationStepZipperUp!209 lt!2147529 (h!67134 s!2326)))))

(declare-fun lt!2147506 () Unit!152710)

(declare-fun e!3259071 () Unit!152710)

(assert (=> b!5237507 (= lt!2147506 e!3259071)))

(declare-fun c!904947 () Bool)

(assert (=> b!5237507 (= c!904947 (nullable!5006 (regOne!30187 (regOne!30186 r!7292))))))

(declare-fun lt!2147508 () Context!8442)

(assert (=> b!5237507 (= (flatMap!564 lt!2147493 lambda!263324) (derivationStepZipperUp!209 lt!2147508 (h!67134 s!2326)))))

(declare-fun lt!2147513 () Unit!152710)

(assert (=> b!5237507 (= lt!2147513 (lemmaFlatMapOnSingletonSet!96 lt!2147493 lt!2147508 lambda!263324))))

(declare-fun lt!2147516 () (InoxSet Context!8442))

(assert (=> b!5237507 (= lt!2147516 (derivationStepZipperUp!209 lt!2147508 (h!67134 s!2326)))))

(assert (=> b!5237507 (= lt!2147517 (store ((as const (Array Context!8442 Bool)) false) lt!2147529 true))))

(declare-fun lt!2147534 () List!60811)

(assert (=> b!5237507 (= lt!2147529 (Context!8443 lt!2147534))))

(assert (=> b!5237507 (= lt!2147534 (Cons!60687 (regTwo!30187 (regOne!30186 r!7292)) (t!373992 (exprs!4721 (h!67136 zl!343)))))))

(assert (=> b!5237507 (= lt!2147493 (store ((as const (Array Context!8442 Bool)) false) lt!2147508 true))))

(declare-fun lt!2147502 () List!60811)

(assert (=> b!5237507 (= lt!2147508 (Context!8443 lt!2147502))))

(assert (=> b!5237507 (= lt!2147502 (Cons!60687 (regOne!30187 (regOne!30186 r!7292)) (t!373992 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5237508 () Bool)

(declare-fun res!2223128 () Bool)

(assert (=> b!5237508 (=> res!2223128 e!3259060)))

(assert (=> b!5237508 (= res!2223128 (or ((_ is EmptyExpr!14837) r!7292) ((_ is EmptyLang!14837) r!7292) ((_ is ElementMatch!14837) r!7292) ((_ is Union!14837) r!7292) (not ((_ is Concat!23682) r!7292))))))

(declare-fun b!5237509 () Bool)

(declare-fun e!3259070 () Bool)

(assert (=> b!5237509 (= e!3259070 (matchZipper!1081 lt!2147512 (t!373991 s!2326)))))

(assert (=> b!5237510 (= e!3259072 e!3259066)))

(declare-fun res!2223146 () Bool)

(assert (=> b!5237510 (=> res!2223146 e!3259066)))

(assert (=> b!5237510 (= res!2223146 (or (and ((_ is ElementMatch!14837) (regOne!30186 r!7292)) (= (c!904949 (regOne!30186 r!7292)) (h!67134 s!2326))) (not ((_ is Union!14837) (regOne!30186 r!7292)))))))

(declare-fun lt!2147515 () Unit!152710)

(declare-fun e!3259078 () Unit!152710)

(assert (=> b!5237510 (= lt!2147515 e!3259078)))

(declare-fun c!904948 () Bool)

(assert (=> b!5237510 (= c!904948 (nullable!5006 (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(assert (=> b!5237510 (= (flatMap!564 z!1189 lambda!263324) (derivationStepZipperUp!209 (h!67136 zl!343) (h!67134 s!2326)))))

(declare-fun lt!2147533 () Unit!152710)

(assert (=> b!5237510 (= lt!2147533 (lemmaFlatMapOnSingletonSet!96 z!1189 (h!67136 zl!343) lambda!263324))))

(assert (=> b!5237510 (= lt!2147512 (derivationStepZipperUp!209 lt!2147494 (h!67134 s!2326)))))

(assert (=> b!5237510 (= lt!2147519 (derivationStepZipperDown!285 (h!67135 (exprs!4721 (h!67136 zl!343))) lt!2147494 (h!67134 s!2326)))))

(assert (=> b!5237510 (= lt!2147494 (Context!8443 (t!373992 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun lt!2147509 () (InoxSet Context!8442))

(assert (=> b!5237510 (= lt!2147509 (derivationStepZipperUp!209 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343))))) (h!67134 s!2326)))))

(declare-fun b!5237511 () Bool)

(declare-fun res!2223147 () Bool)

(assert (=> b!5237511 (=> res!2223147 e!3259060)))

(assert (=> b!5237511 (= res!2223147 (not ((_ is Cons!60687) (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5237512 () Bool)

(declare-fun e!3259069 () Bool)

(declare-fun tp_is_empty!38927 () Bool)

(declare-fun tp!1467072 () Bool)

(assert (=> b!5237512 (= e!3259069 (and tp_is_empty!38927 tp!1467072))))

(declare-fun b!5237513 () Bool)

(declare-fun tp!1467077 () Bool)

(declare-fun tp!1467081 () Bool)

(assert (=> b!5237513 (= e!3259059 (and tp!1467077 tp!1467081))))

(declare-fun b!5237514 () Bool)

(assert (=> b!5237514 (= e!3259063 e!3259079)))

(declare-fun res!2223138 () Bool)

(assert (=> b!5237514 (=> res!2223138 e!3259079)))

(assert (=> b!5237514 (= res!2223138 e!3259068)))

(declare-fun res!2223136 () Bool)

(assert (=> b!5237514 (=> (not res!2223136) (not e!3259068))))

(declare-fun lt!2147526 () Bool)

(assert (=> b!5237514 (= res!2223136 (not (= (matchZipper!1081 lt!2147519 (t!373991 s!2326)) lt!2147526)))))

(declare-fun e!3259067 () Bool)

(assert (=> b!5237514 (= (matchZipper!1081 lt!2147507 (t!373991 s!2326)) e!3259067)))

(declare-fun res!2223133 () Bool)

(assert (=> b!5237514 (=> res!2223133 e!3259067)))

(assert (=> b!5237514 (= res!2223133 lt!2147526)))

(assert (=> b!5237514 (= lt!2147526 (matchZipper!1081 lt!2147527 (t!373991 s!2326)))))

(declare-fun lt!2147536 () Unit!152710)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!74 ((InoxSet Context!8442) (InoxSet Context!8442) List!60810) Unit!152710)

(assert (=> b!5237514 (= lt!2147536 (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147527 lt!2147535 (t!373991 s!2326)))))

(declare-fun b!5237515 () Bool)

(declare-fun Unit!152712 () Unit!152710)

(assert (=> b!5237515 (= e!3259076 Unit!152712)))

(declare-fun b!5237516 () Bool)

(declare-fun Unit!152713 () Unit!152710)

(assert (=> b!5237516 (= e!3259076 Unit!152713)))

(declare-fun lt!2147504 () Unit!152710)

(assert (=> b!5237516 (= lt!2147504 (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147535 lt!2147512 (t!373991 s!2326)))))

(declare-fun res!2223142 () Bool)

(assert (=> b!5237516 (= res!2223142 (matchZipper!1081 lt!2147535 (t!373991 s!2326)))))

(assert (=> b!5237516 (=> res!2223142 e!3259070)))

(assert (=> b!5237516 (= (matchZipper!1081 ((_ map or) lt!2147535 lt!2147512) (t!373991 s!2326)) e!3259070)))

(declare-fun b!5237517 () Bool)

(declare-fun e!3259074 () Bool)

(declare-fun tp!1467079 () Bool)

(assert (=> b!5237517 (= e!3259074 tp!1467079)))

(declare-fun b!5237518 () Bool)

(declare-fun res!2223149 () Bool)

(assert (=> b!5237518 (=> res!2223149 e!3259060)))

(declare-fun isEmpty!32611 (List!60812) Bool)

(assert (=> b!5237518 (= res!2223149 (not (isEmpty!32611 (t!373993 zl!343))))))

(declare-fun b!5237519 () Bool)

(assert (=> b!5237519 (= e!3259059 tp_is_empty!38927)))

(declare-fun b!5237520 () Bool)

(assert (=> b!5237520 (= e!3259075 (matchZipper!1081 lt!2147517 s!2326))))

(declare-fun b!5237504 () Bool)

(declare-fun res!2223137 () Bool)

(assert (=> b!5237504 (=> res!2223137 e!3259057)))

(assert (=> b!5237504 (= res!2223137 (or (not (= lt!2147495 r!7292)) (not (= (exprs!4721 (h!67136 zl!343)) (Cons!60687 (regOne!30186 r!7292) (t!373992 (exprs!4721 (h!67136 zl!343))))))))))

(declare-fun res!2223132 () Bool)

(assert (=> start!553690 (=> (not res!2223132) (not e!3259061))))

(declare-fun validRegex!6573 (Regex!14837) Bool)

(assert (=> start!553690 (= res!2223132 (validRegex!6573 r!7292))))

(assert (=> start!553690 e!3259061))

(assert (=> start!553690 e!3259059))

(declare-fun condSetEmpty!33395 () Bool)

(assert (=> start!553690 (= condSetEmpty!33395 (= z!1189 ((as const (Array Context!8442 Bool)) false)))))

(assert (=> start!553690 setRes!33395))

(declare-fun e!3259073 () Bool)

(assert (=> start!553690 e!3259073))

(assert (=> start!553690 e!3259069))

(declare-fun b!5237521 () Bool)

(declare-fun tp!1467075 () Bool)

(declare-fun tp!1467078 () Bool)

(assert (=> b!5237521 (= e!3259059 (and tp!1467075 tp!1467078))))

(declare-fun b!5237522 () Bool)

(declare-fun Unit!152714 () Unit!152710)

(assert (=> b!5237522 (= e!3259078 Unit!152714)))

(declare-fun lt!2147514 () Unit!152710)

(assert (=> b!5237522 (= lt!2147514 (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147519 lt!2147512 (t!373991 s!2326)))))

(declare-fun res!2223140 () Bool)

(assert (=> b!5237522 (= res!2223140 (matchZipper!1081 lt!2147519 (t!373991 s!2326)))))

(declare-fun e!3259077 () Bool)

(assert (=> b!5237522 (=> res!2223140 e!3259077)))

(assert (=> b!5237522 (= (matchZipper!1081 ((_ map or) lt!2147519 lt!2147512) (t!373991 s!2326)) e!3259077)))

(declare-fun b!5237523 () Bool)

(declare-fun res!2223143 () Bool)

(assert (=> b!5237523 (=> (not res!2223143) (not e!3259061))))

(declare-fun toList!8621 ((InoxSet Context!8442)) List!60812)

(assert (=> b!5237523 (= res!2223143 (= (toList!8621 z!1189) zl!343))))

(declare-fun b!5237524 () Bool)

(declare-fun tp!1467074 () Bool)

(assert (=> b!5237524 (= e!3259064 tp!1467074)))

(declare-fun b!5237525 () Bool)

(declare-fun Unit!152715 () Unit!152710)

(assert (=> b!5237525 (= e!3259078 Unit!152715)))

(declare-fun b!5237526 () Bool)

(declare-fun Unit!152716 () Unit!152710)

(assert (=> b!5237526 (= e!3259071 Unit!152716)))

(declare-fun b!5237527 () Bool)

(assert (=> b!5237527 (= e!3259057 e!3259062)))

(declare-fun res!2223131 () Bool)

(assert (=> b!5237527 (=> res!2223131 e!3259062)))

(declare-fun lt!2147530 () Int)

(assert (=> b!5237527 (= res!2223131 (>= lt!2147530 lt!2147505))))

(assert (=> b!5237527 (= lt!2147505 (zipperDepthTotal!18 zl!343))))

(declare-fun lt!2147523 () List!60812)

(assert (=> b!5237527 (= lt!2147530 (zipperDepthTotal!18 lt!2147523))))

(assert (=> b!5237527 (= lt!2147523 (Cons!60688 lt!2147508 Nil!60688))))

(declare-fun b!5237528 () Bool)

(assert (=> b!5237528 (= e!3259067 (matchZipper!1081 lt!2147535 (t!373991 s!2326)))))

(declare-fun b!5237529 () Bool)

(declare-fun res!2223144 () Bool)

(assert (=> b!5237529 (=> res!2223144 e!3259060)))

(declare-fun generalisedConcat!506 (List!60811) Regex!14837)

(assert (=> b!5237529 (= res!2223144 (not (= r!7292 (generalisedConcat!506 (exprs!4721 (h!67136 zl!343))))))))

(declare-fun b!5237530 () Bool)

(assert (=> b!5237530 (= e!3259077 (matchZipper!1081 lt!2147512 (t!373991 s!2326)))))

(declare-fun b!5237531 () Bool)

(assert (=> b!5237531 (= e!3259058 (not e!3259060))))

(declare-fun res!2223141 () Bool)

(assert (=> b!5237531 (=> res!2223141 e!3259060)))

(assert (=> b!5237531 (= res!2223141 (not ((_ is Cons!60688) zl!343)))))

(declare-fun matchRSpec!1940 (Regex!14837 List!60810) Bool)

(assert (=> b!5237531 (= lt!2147532 (matchRSpec!1940 r!7292 s!2326))))

(declare-fun matchR!7022 (Regex!14837 List!60810) Bool)

(assert (=> b!5237531 (= lt!2147532 (matchR!7022 r!7292 s!2326))))

(declare-fun lt!2147511 () Unit!152710)

(declare-fun mainMatchTheorem!1940 (Regex!14837 List!60810) Unit!152710)

(assert (=> b!5237531 (= lt!2147511 (mainMatchTheorem!1940 r!7292 s!2326))))

(declare-fun b!5237532 () Bool)

(declare-fun Unit!152717 () Unit!152710)

(assert (=> b!5237532 (= e!3259071 Unit!152717)))

(declare-fun lt!2147496 () Unit!152710)

(assert (=> b!5237532 (= lt!2147496 (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147527 lt!2147512 (t!373991 s!2326)))))

(declare-fun res!2223134 () Bool)

(assert (=> b!5237532 (= res!2223134 lt!2147526)))

(assert (=> b!5237532 (=> res!2223134 e!3259080)))

(assert (=> b!5237532 (= (matchZipper!1081 ((_ map or) lt!2147527 lt!2147512) (t!373991 s!2326)) e!3259080)))

(declare-fun tp!1467080 () Bool)

(declare-fun b!5237533 () Bool)

(assert (=> b!5237533 (= e!3259073 (and (inv!80339 (h!67136 zl!343)) e!3259074 tp!1467080))))

(declare-fun b!5237534 () Bool)

(declare-fun lambda!263325 () Int)

(declare-fun forall!14261 (List!60811 Int) Bool)

(assert (=> b!5237534 (= e!3259065 (forall!14261 lt!2147502 lambda!263325))))

(declare-fun lt!2147518 () Bool)

(declare-fun lt!2147520 () Regex!14837)

(assert (=> b!5237534 (= lt!2147518 (matchRSpec!1940 lt!2147520 s!2326))))

(declare-fun lt!2147503 () Unit!152710)

(assert (=> b!5237534 (= lt!2147503 (mainMatchTheorem!1940 lt!2147520 s!2326))))

(declare-fun lt!2147492 () Bool)

(declare-fun lt!2147497 () Regex!14837)

(assert (=> b!5237534 (= lt!2147492 (matchRSpec!1940 lt!2147497 s!2326))))

(declare-fun lt!2147499 () Unit!152710)

(assert (=> b!5237534 (= lt!2147499 (mainMatchTheorem!1940 lt!2147497 s!2326))))

(assert (=> b!5237534 (= lt!2147518 (matchZipper!1081 lt!2147517 s!2326))))

(assert (=> b!5237534 (= lt!2147518 (matchR!7022 lt!2147520 s!2326))))

(declare-fun lt!2147521 () Unit!152710)

(declare-fun theoremZipperRegexEquiv!271 ((InoxSet Context!8442) List!60812 Regex!14837 List!60810) Unit!152710)

(assert (=> b!5237534 (= lt!2147521 (theoremZipperRegexEquiv!271 lt!2147517 lt!2147525 lt!2147520 s!2326))))

(assert (=> b!5237534 (= lt!2147520 (generalisedConcat!506 lt!2147534))))

(assert (=> b!5237534 (= lt!2147492 lt!2147500)))

(assert (=> b!5237534 (= lt!2147492 (matchR!7022 lt!2147497 s!2326))))

(declare-fun lt!2147531 () Unit!152710)

(assert (=> b!5237534 (= lt!2147531 (theoremZipperRegexEquiv!271 lt!2147493 lt!2147523 lt!2147497 s!2326))))

(assert (=> b!5237534 (= lt!2147497 (generalisedConcat!506 lt!2147502))))

(declare-fun b!5237535 () Bool)

(declare-fun res!2223127 () Bool)

(assert (=> b!5237535 (=> res!2223127 e!3259072)))

(declare-fun isEmpty!32612 (List!60811) Bool)

(assert (=> b!5237535 (= res!2223127 (isEmpty!32612 (t!373992 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun setIsEmpty!33395 () Bool)

(assert (=> setIsEmpty!33395 setRes!33395))

(assert (= (and start!553690 res!2223132) b!5237523))

(assert (= (and b!5237523 res!2223143) b!5237501))

(assert (= (and b!5237501 res!2223148) b!5237531))

(assert (= (and b!5237531 (not res!2223141)) b!5237518))

(assert (= (and b!5237518 (not res!2223149)) b!5237529))

(assert (= (and b!5237529 (not res!2223144)) b!5237511))

(assert (= (and b!5237511 (not res!2223147)) b!5237506))

(assert (= (and b!5237506 (not res!2223129)) b!5237508))

(assert (= (and b!5237508 (not res!2223128)) b!5237498))

(assert (= (and b!5237498 (not res!2223139)) b!5237535))

(assert (= (and b!5237535 (not res!2223127)) b!5237510))

(assert (= (and b!5237510 c!904948) b!5237522))

(assert (= (and b!5237510 (not c!904948)) b!5237525))

(assert (= (and b!5237522 (not res!2223140)) b!5237530))

(assert (= (and b!5237510 (not res!2223146)) b!5237502))

(assert (= (and b!5237502 (not res!2223135)) b!5237514))

(assert (= (and b!5237514 (not res!2223133)) b!5237528))

(assert (= (and b!5237514 res!2223136) b!5237500))

(assert (= (and b!5237514 (not res!2223138)) b!5237507))

(assert (= (and b!5237507 c!904947) b!5237532))

(assert (= (and b!5237507 (not c!904947)) b!5237526))

(assert (= (and b!5237532 (not res!2223134)) b!5237503))

(assert (= (and b!5237507 c!904946) b!5237516))

(assert (= (and b!5237507 (not c!904946)) b!5237515))

(assert (= (and b!5237516 (not res!2223142)) b!5237509))

(assert (= (and b!5237507 (not res!2223130)) b!5237520))

(assert (= (and b!5237507 (not res!2223126)) b!5237504))

(assert (= (and b!5237504 (not res!2223137)) b!5237527))

(assert (= (and b!5237527 (not res!2223131)) b!5237505))

(assert (= (and b!5237505 (not res!2223145)) b!5237534))

(assert (= (and start!553690 ((_ is ElementMatch!14837) r!7292)) b!5237519))

(assert (= (and start!553690 ((_ is Concat!23682) r!7292)) b!5237521))

(assert (= (and start!553690 ((_ is Star!14837) r!7292)) b!5237499))

(assert (= (and start!553690 ((_ is Union!14837) r!7292)) b!5237513))

(assert (= (and start!553690 condSetEmpty!33395) setIsEmpty!33395))

(assert (= (and start!553690 (not condSetEmpty!33395)) setNonEmpty!33395))

(assert (= setNonEmpty!33395 b!5237524))

(assert (= b!5237533 b!5237517))

(assert (= (and start!553690 ((_ is Cons!60688) zl!343)) b!5237533))

(assert (= (and start!553690 ((_ is Cons!60686) s!2326)) b!5237512))

(declare-fun m!6282550 () Bool)

(assert (=> b!5237501 m!6282550))

(declare-fun m!6282552 () Bool)

(assert (=> b!5237531 m!6282552))

(declare-fun m!6282554 () Bool)

(assert (=> b!5237531 m!6282554))

(declare-fun m!6282556 () Bool)

(assert (=> b!5237531 m!6282556))

(declare-fun m!6282558 () Bool)

(assert (=> b!5237503 m!6282558))

(assert (=> b!5237530 m!6282558))

(declare-fun m!6282560 () Bool)

(assert (=> b!5237516 m!6282560))

(declare-fun m!6282562 () Bool)

(assert (=> b!5237516 m!6282562))

(declare-fun m!6282564 () Bool)

(assert (=> b!5237516 m!6282564))

(declare-fun m!6282566 () Bool)

(assert (=> b!5237502 m!6282566))

(declare-fun m!6282568 () Bool)

(assert (=> b!5237502 m!6282568))

(declare-fun m!6282570 () Bool)

(assert (=> b!5237507 m!6282570))

(declare-fun m!6282572 () Bool)

(assert (=> b!5237507 m!6282572))

(declare-fun m!6282574 () Bool)

(assert (=> b!5237507 m!6282574))

(declare-fun m!6282576 () Bool)

(assert (=> b!5237507 m!6282576))

(declare-fun m!6282578 () Bool)

(assert (=> b!5237507 m!6282578))

(declare-fun m!6282580 () Bool)

(assert (=> b!5237507 m!6282580))

(declare-fun m!6282582 () Bool)

(assert (=> b!5237507 m!6282582))

(declare-fun m!6282584 () Bool)

(assert (=> b!5237507 m!6282584))

(declare-fun m!6282586 () Bool)

(assert (=> b!5237507 m!6282586))

(declare-fun m!6282588 () Bool)

(assert (=> b!5237507 m!6282588))

(declare-fun m!6282590 () Bool)

(assert (=> b!5237507 m!6282590))

(declare-fun m!6282592 () Bool)

(assert (=> b!5237507 m!6282592))

(declare-fun m!6282594 () Bool)

(assert (=> b!5237514 m!6282594))

(declare-fun m!6282596 () Bool)

(assert (=> b!5237514 m!6282596))

(declare-fun m!6282598 () Bool)

(assert (=> b!5237514 m!6282598))

(declare-fun m!6282600 () Bool)

(assert (=> b!5237514 m!6282600))

(assert (=> b!5237509 m!6282558))

(declare-fun m!6282602 () Bool)

(assert (=> b!5237505 m!6282602))

(declare-fun m!6282604 () Bool)

(assert (=> b!5237534 m!6282604))

(declare-fun m!6282606 () Bool)

(assert (=> b!5237534 m!6282606))

(declare-fun m!6282608 () Bool)

(assert (=> b!5237534 m!6282608))

(declare-fun m!6282610 () Bool)

(assert (=> b!5237534 m!6282610))

(declare-fun m!6282612 () Bool)

(assert (=> b!5237534 m!6282612))

(declare-fun m!6282614 () Bool)

(assert (=> b!5237534 m!6282614))

(declare-fun m!6282616 () Bool)

(assert (=> b!5237534 m!6282616))

(declare-fun m!6282618 () Bool)

(assert (=> b!5237534 m!6282618))

(declare-fun m!6282620 () Bool)

(assert (=> b!5237534 m!6282620))

(declare-fun m!6282622 () Bool)

(assert (=> b!5237534 m!6282622))

(declare-fun m!6282624 () Bool)

(assert (=> b!5237534 m!6282624))

(declare-fun m!6282626 () Bool)

(assert (=> b!5237534 m!6282626))

(declare-fun m!6282628 () Bool)

(assert (=> b!5237535 m!6282628))

(declare-fun m!6282630 () Bool)

(assert (=> b!5237533 m!6282630))

(declare-fun m!6282632 () Bool)

(assert (=> start!553690 m!6282632))

(declare-fun m!6282634 () Bool)

(assert (=> b!5237527 m!6282634))

(declare-fun m!6282636 () Bool)

(assert (=> b!5237527 m!6282636))

(declare-fun m!6282638 () Bool)

(assert (=> b!5237498 m!6282638))

(declare-fun m!6282640 () Bool)

(assert (=> b!5237498 m!6282640))

(declare-fun m!6282642 () Bool)

(assert (=> b!5237498 m!6282642))

(declare-fun m!6282644 () Bool)

(assert (=> b!5237498 m!6282644))

(assert (=> b!5237498 m!6282640))

(declare-fun m!6282646 () Bool)

(assert (=> b!5237498 m!6282646))

(assert (=> b!5237498 m!6282642))

(declare-fun m!6282648 () Bool)

(assert (=> b!5237498 m!6282648))

(declare-fun m!6282650 () Bool)

(assert (=> b!5237506 m!6282650))

(assert (=> b!5237506 m!6282650))

(declare-fun m!6282652 () Bool)

(assert (=> b!5237506 m!6282652))

(assert (=> b!5237528 m!6282562))

(assert (=> b!5237500 m!6282562))

(declare-fun m!6282654 () Bool)

(assert (=> setNonEmpty!33395 m!6282654))

(assert (=> b!5237520 m!6282616))

(declare-fun m!6282656 () Bool)

(assert (=> b!5237518 m!6282656))

(declare-fun m!6282658 () Bool)

(assert (=> b!5237510 m!6282658))

(declare-fun m!6282660 () Bool)

(assert (=> b!5237510 m!6282660))

(declare-fun m!6282662 () Bool)

(assert (=> b!5237510 m!6282662))

(declare-fun m!6282664 () Bool)

(assert (=> b!5237510 m!6282664))

(declare-fun m!6282666 () Bool)

(assert (=> b!5237510 m!6282666))

(declare-fun m!6282668 () Bool)

(assert (=> b!5237510 m!6282668))

(declare-fun m!6282670 () Bool)

(assert (=> b!5237510 m!6282670))

(declare-fun m!6282672 () Bool)

(assert (=> b!5237523 m!6282672))

(declare-fun m!6282674 () Bool)

(assert (=> b!5237522 m!6282674))

(assert (=> b!5237522 m!6282594))

(declare-fun m!6282676 () Bool)

(assert (=> b!5237522 m!6282676))

(declare-fun m!6282678 () Bool)

(assert (=> b!5237529 m!6282678))

(declare-fun m!6282680 () Bool)

(assert (=> b!5237532 m!6282680))

(declare-fun m!6282682 () Bool)

(assert (=> b!5237532 m!6282682))

(check-sat (not b!5237523) (not b!5237535) (not b!5237517) (not b!5237532) (not b!5237533) tp_is_empty!38927 (not b!5237513) (not b!5237501) (not b!5237506) (not b!5237522) (not b!5237505) (not b!5237520) (not b!5237531) (not b!5237507) (not b!5237518) (not b!5237509) (not b!5237534) (not b!5237503) (not b!5237512) (not b!5237528) (not b!5237510) (not b!5237499) (not b!5237530) (not b!5237527) (not b!5237500) (not start!553690) (not b!5237514) (not b!5237516) (not b!5237529) (not b!5237498) (not b!5237521) (not setNonEmpty!33395) (not b!5237524) (not b!5237502))
(check-sat)
(get-model)

(declare-fun bs!1215559 () Bool)

(declare-fun d!1688156 () Bool)

(assert (= bs!1215559 (and d!1688156 b!5237534)))

(declare-fun lambda!263362 () Int)

(assert (=> bs!1215559 (= lambda!263362 lambda!263325)))

(declare-fun b!5238044 () Bool)

(declare-fun e!3259370 () Regex!14837)

(assert (=> b!5238044 (= e!3259370 EmptyLang!14837)))

(declare-fun b!5238045 () Bool)

(assert (=> b!5238045 (= e!3259370 (Union!14837 (h!67135 (unfocusZipperList!279 zl!343)) (generalisedUnion!766 (t!373992 (unfocusZipperList!279 zl!343)))))))

(declare-fun b!5238046 () Bool)

(declare-fun e!3259368 () Regex!14837)

(assert (=> b!5238046 (= e!3259368 e!3259370)))

(declare-fun c!905098 () Bool)

(assert (=> b!5238046 (= c!905098 ((_ is Cons!60687) (unfocusZipperList!279 zl!343)))))

(declare-fun e!3259369 () Bool)

(assert (=> d!1688156 e!3259369))

(declare-fun res!2223304 () Bool)

(assert (=> d!1688156 (=> (not res!2223304) (not e!3259369))))

(declare-fun lt!2147601 () Regex!14837)

(assert (=> d!1688156 (= res!2223304 (validRegex!6573 lt!2147601))))

(assert (=> d!1688156 (= lt!2147601 e!3259368)))

(declare-fun c!905100 () Bool)

(declare-fun e!3259371 () Bool)

(assert (=> d!1688156 (= c!905100 e!3259371)))

(declare-fun res!2223305 () Bool)

(assert (=> d!1688156 (=> (not res!2223305) (not e!3259371))))

(assert (=> d!1688156 (= res!2223305 ((_ is Cons!60687) (unfocusZipperList!279 zl!343)))))

(assert (=> d!1688156 (forall!14261 (unfocusZipperList!279 zl!343) lambda!263362)))

(assert (=> d!1688156 (= (generalisedUnion!766 (unfocusZipperList!279 zl!343)) lt!2147601)))

(declare-fun b!5238047 () Bool)

(declare-fun e!3259372 () Bool)

(declare-fun e!3259367 () Bool)

(assert (=> b!5238047 (= e!3259372 e!3259367)))

(declare-fun c!905097 () Bool)

(declare-fun tail!10320 (List!60811) List!60811)

(assert (=> b!5238047 (= c!905097 (isEmpty!32612 (tail!10320 (unfocusZipperList!279 zl!343))))))

(declare-fun b!5238048 () Bool)

(assert (=> b!5238048 (= e!3259369 e!3259372)))

(declare-fun c!905099 () Bool)

(assert (=> b!5238048 (= c!905099 (isEmpty!32612 (unfocusZipperList!279 zl!343)))))

(declare-fun b!5238049 () Bool)

(assert (=> b!5238049 (= e!3259368 (h!67135 (unfocusZipperList!279 zl!343)))))

(declare-fun b!5238050 () Bool)

(assert (=> b!5238050 (= e!3259371 (isEmpty!32612 (t!373992 (unfocusZipperList!279 zl!343))))))

(declare-fun b!5238051 () Bool)

(declare-fun isUnion!229 (Regex!14837) Bool)

(assert (=> b!5238051 (= e!3259367 (isUnion!229 lt!2147601))))

(declare-fun b!5238052 () Bool)

(declare-fun head!11223 (List!60811) Regex!14837)

(assert (=> b!5238052 (= e!3259367 (= lt!2147601 (head!11223 (unfocusZipperList!279 zl!343))))))

(declare-fun b!5238053 () Bool)

(declare-fun isEmptyLang!797 (Regex!14837) Bool)

(assert (=> b!5238053 (= e!3259372 (isEmptyLang!797 lt!2147601))))

(assert (= (and d!1688156 res!2223305) b!5238050))

(assert (= (and d!1688156 c!905100) b!5238049))

(assert (= (and d!1688156 (not c!905100)) b!5238046))

(assert (= (and b!5238046 c!905098) b!5238045))

(assert (= (and b!5238046 (not c!905098)) b!5238044))

(assert (= (and d!1688156 res!2223304) b!5238048))

(assert (= (and b!5238048 c!905099) b!5238053))

(assert (= (and b!5238048 (not c!905099)) b!5238047))

(assert (= (and b!5238047 c!905097) b!5238052))

(assert (= (and b!5238047 (not c!905097)) b!5238051))

(declare-fun m!6283066 () Bool)

(assert (=> b!5238050 m!6283066))

(declare-fun m!6283068 () Bool)

(assert (=> d!1688156 m!6283068))

(assert (=> d!1688156 m!6282650))

(declare-fun m!6283070 () Bool)

(assert (=> d!1688156 m!6283070))

(declare-fun m!6283072 () Bool)

(assert (=> b!5238045 m!6283072))

(assert (=> b!5238047 m!6282650))

(declare-fun m!6283074 () Bool)

(assert (=> b!5238047 m!6283074))

(assert (=> b!5238047 m!6283074))

(declare-fun m!6283076 () Bool)

(assert (=> b!5238047 m!6283076))

(declare-fun m!6283078 () Bool)

(assert (=> b!5238051 m!6283078))

(declare-fun m!6283080 () Bool)

(assert (=> b!5238053 m!6283080))

(assert (=> b!5238052 m!6282650))

(declare-fun m!6283082 () Bool)

(assert (=> b!5238052 m!6283082))

(assert (=> b!5238048 m!6282650))

(declare-fun m!6283084 () Bool)

(assert (=> b!5238048 m!6283084))

(assert (=> b!5237506 d!1688156))

(declare-fun bs!1215560 () Bool)

(declare-fun d!1688158 () Bool)

(assert (= bs!1215560 (and d!1688158 b!5237534)))

(declare-fun lambda!263365 () Int)

(assert (=> bs!1215560 (= lambda!263365 lambda!263325)))

(declare-fun bs!1215561 () Bool)

(assert (= bs!1215561 (and d!1688158 d!1688156)))

(assert (=> bs!1215561 (= lambda!263365 lambda!263362)))

(declare-fun lt!2147604 () List!60811)

(assert (=> d!1688158 (forall!14261 lt!2147604 lambda!263365)))

(declare-fun e!3259375 () List!60811)

(assert (=> d!1688158 (= lt!2147604 e!3259375)))

(declare-fun c!905103 () Bool)

(assert (=> d!1688158 (= c!905103 ((_ is Cons!60688) zl!343))))

(assert (=> d!1688158 (= (unfocusZipperList!279 zl!343) lt!2147604)))

(declare-fun b!5238058 () Bool)

(assert (=> b!5238058 (= e!3259375 (Cons!60687 (generalisedConcat!506 (exprs!4721 (h!67136 zl!343))) (unfocusZipperList!279 (t!373993 zl!343))))))

(declare-fun b!5238059 () Bool)

(assert (=> b!5238059 (= e!3259375 Nil!60687)))

(assert (= (and d!1688158 c!905103) b!5238058))

(assert (= (and d!1688158 (not c!905103)) b!5238059))

(declare-fun m!6283086 () Bool)

(assert (=> d!1688158 m!6283086))

(assert (=> b!5238058 m!6282678))

(declare-fun m!6283088 () Bool)

(assert (=> b!5238058 m!6283088))

(assert (=> b!5237506 d!1688158))

(declare-fun d!1688160 () Bool)

(declare-fun lt!2147607 () Int)

(assert (=> d!1688160 (>= lt!2147607 0)))

(declare-fun e!3259378 () Int)

(assert (=> d!1688160 (= lt!2147607 e!3259378)))

(declare-fun c!905106 () Bool)

(assert (=> d!1688160 (= c!905106 ((_ is Cons!60688) zl!343))))

(assert (=> d!1688160 (= (zipperDepthTotal!18 zl!343) lt!2147607)))

(declare-fun b!5238064 () Bool)

(declare-fun contextDepthTotal!10 (Context!8442) Int)

(assert (=> b!5238064 (= e!3259378 (+ (contextDepthTotal!10 (h!67136 zl!343)) (zipperDepthTotal!18 (t!373993 zl!343))))))

(declare-fun b!5238065 () Bool)

(assert (=> b!5238065 (= e!3259378 0)))

(assert (= (and d!1688160 c!905106) b!5238064))

(assert (= (and d!1688160 (not c!905106)) b!5238065))

(declare-fun m!6283090 () Bool)

(assert (=> b!5238064 m!6283090))

(declare-fun m!6283092 () Bool)

(assert (=> b!5238064 m!6283092))

(assert (=> b!5237527 d!1688160))

(declare-fun d!1688162 () Bool)

(declare-fun lt!2147608 () Int)

(assert (=> d!1688162 (>= lt!2147608 0)))

(declare-fun e!3259379 () Int)

(assert (=> d!1688162 (= lt!2147608 e!3259379)))

(declare-fun c!905107 () Bool)

(assert (=> d!1688162 (= c!905107 ((_ is Cons!60688) lt!2147523))))

(assert (=> d!1688162 (= (zipperDepthTotal!18 lt!2147523) lt!2147608)))

(declare-fun b!5238066 () Bool)

(assert (=> b!5238066 (= e!3259379 (+ (contextDepthTotal!10 (h!67136 lt!2147523)) (zipperDepthTotal!18 (t!373993 lt!2147523))))))

(declare-fun b!5238067 () Bool)

(assert (=> b!5238067 (= e!3259379 0)))

(assert (= (and d!1688162 c!905107) b!5238066))

(assert (= (and d!1688162 (not c!905107)) b!5238067))

(declare-fun m!6283094 () Bool)

(assert (=> b!5238066 m!6283094))

(declare-fun m!6283096 () Bool)

(assert (=> b!5238066 m!6283096))

(assert (=> b!5237527 d!1688162))

(declare-fun d!1688164 () Bool)

(declare-fun lt!2147609 () Int)

(assert (=> d!1688164 (>= lt!2147609 0)))

(declare-fun e!3259380 () Int)

(assert (=> d!1688164 (= lt!2147609 e!3259380)))

(declare-fun c!905108 () Bool)

(assert (=> d!1688164 (= c!905108 ((_ is Cons!60688) lt!2147525))))

(assert (=> d!1688164 (= (zipperDepthTotal!18 lt!2147525) lt!2147609)))

(declare-fun b!5238068 () Bool)

(assert (=> b!5238068 (= e!3259380 (+ (contextDepthTotal!10 (h!67136 lt!2147525)) (zipperDepthTotal!18 (t!373993 lt!2147525))))))

(declare-fun b!5238069 () Bool)

(assert (=> b!5238069 (= e!3259380 0)))

(assert (= (and d!1688164 c!905108) b!5238068))

(assert (= (and d!1688164 (not c!905108)) b!5238069))

(declare-fun m!6283098 () Bool)

(assert (=> b!5238068 m!6283098))

(declare-fun m!6283100 () Bool)

(assert (=> b!5238068 m!6283100))

(assert (=> b!5237505 d!1688164))

(declare-fun d!1688166 () Bool)

(declare-fun c!905111 () Bool)

(declare-fun isEmpty!32615 (List!60810) Bool)

(assert (=> d!1688166 (= c!905111 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259383 () Bool)

(assert (=> d!1688166 (= (matchZipper!1081 lt!2147512 (t!373991 s!2326)) e!3259383)))

(declare-fun b!5238074 () Bool)

(declare-fun nullableZipper!1252 ((InoxSet Context!8442)) Bool)

(assert (=> b!5238074 (= e!3259383 (nullableZipper!1252 lt!2147512))))

(declare-fun b!5238075 () Bool)

(declare-fun derivationStepZipper!1096 ((InoxSet Context!8442) C!29944) (InoxSet Context!8442))

(declare-fun head!11224 (List!60810) C!29944)

(declare-fun tail!10321 (List!60810) List!60810)

(assert (=> b!5238075 (= e!3259383 (matchZipper!1081 (derivationStepZipper!1096 lt!2147512 (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688166 c!905111) b!5238074))

(assert (= (and d!1688166 (not c!905111)) b!5238075))

(declare-fun m!6283102 () Bool)

(assert (=> d!1688166 m!6283102))

(declare-fun m!6283104 () Bool)

(assert (=> b!5238074 m!6283104))

(declare-fun m!6283106 () Bool)

(assert (=> b!5238075 m!6283106))

(assert (=> b!5238075 m!6283106))

(declare-fun m!6283108 () Bool)

(assert (=> b!5238075 m!6283108))

(declare-fun m!6283110 () Bool)

(assert (=> b!5238075 m!6283110))

(assert (=> b!5238075 m!6283108))

(assert (=> b!5238075 m!6283110))

(declare-fun m!6283112 () Bool)

(assert (=> b!5238075 m!6283112))

(assert (=> b!5237530 d!1688166))

(declare-fun bs!1215562 () Bool)

(declare-fun d!1688168 () Bool)

(assert (= bs!1215562 (and d!1688168 b!5237534)))

(declare-fun lambda!263368 () Int)

(assert (=> bs!1215562 (= lambda!263368 lambda!263325)))

(declare-fun bs!1215563 () Bool)

(assert (= bs!1215563 (and d!1688168 d!1688156)))

(assert (=> bs!1215563 (= lambda!263368 lambda!263362)))

(declare-fun bs!1215564 () Bool)

(assert (= bs!1215564 (and d!1688168 d!1688158)))

(assert (=> bs!1215564 (= lambda!263368 lambda!263365)))

(declare-fun b!5238096 () Bool)

(declare-fun e!3259401 () Bool)

(declare-fun lt!2147612 () Regex!14837)

(declare-fun isConcat!311 (Regex!14837) Bool)

(assert (=> b!5238096 (= e!3259401 (isConcat!311 lt!2147612))))

(declare-fun b!5238097 () Bool)

(declare-fun e!3259397 () Regex!14837)

(declare-fun e!3259400 () Regex!14837)

(assert (=> b!5238097 (= e!3259397 e!3259400)))

(declare-fun c!905123 () Bool)

(assert (=> b!5238097 (= c!905123 ((_ is Cons!60687) (exprs!4721 (h!67136 zl!343))))))

(declare-fun b!5238098 () Bool)

(declare-fun e!3259399 () Bool)

(declare-fun isEmptyExpr!788 (Regex!14837) Bool)

(assert (=> b!5238098 (= e!3259399 (isEmptyExpr!788 lt!2147612))))

(declare-fun b!5238099 () Bool)

(assert (=> b!5238099 (= e!3259400 (Concat!23682 (h!67135 (exprs!4721 (h!67136 zl!343))) (generalisedConcat!506 (t!373992 (exprs!4721 (h!67136 zl!343))))))))

(declare-fun e!3259398 () Bool)

(assert (=> d!1688168 e!3259398))

(declare-fun res!2223311 () Bool)

(assert (=> d!1688168 (=> (not res!2223311) (not e!3259398))))

(assert (=> d!1688168 (= res!2223311 (validRegex!6573 lt!2147612))))

(assert (=> d!1688168 (= lt!2147612 e!3259397)))

(declare-fun c!905120 () Bool)

(declare-fun e!3259396 () Bool)

(assert (=> d!1688168 (= c!905120 e!3259396)))

(declare-fun res!2223310 () Bool)

(assert (=> d!1688168 (=> (not res!2223310) (not e!3259396))))

(assert (=> d!1688168 (= res!2223310 ((_ is Cons!60687) (exprs!4721 (h!67136 zl!343))))))

(assert (=> d!1688168 (forall!14261 (exprs!4721 (h!67136 zl!343)) lambda!263368)))

(assert (=> d!1688168 (= (generalisedConcat!506 (exprs!4721 (h!67136 zl!343))) lt!2147612)))

(declare-fun b!5238100 () Bool)

(assert (=> b!5238100 (= e!3259396 (isEmpty!32612 (t!373992 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5238101 () Bool)

(assert (=> b!5238101 (= e!3259400 EmptyExpr!14837)))

(declare-fun b!5238102 () Bool)

(assert (=> b!5238102 (= e!3259399 e!3259401)))

(declare-fun c!905121 () Bool)

(assert (=> b!5238102 (= c!905121 (isEmpty!32612 (tail!10320 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5238103 () Bool)

(assert (=> b!5238103 (= e!3259397 (h!67135 (exprs!4721 (h!67136 zl!343))))))

(declare-fun b!5238104 () Bool)

(assert (=> b!5238104 (= e!3259398 e!3259399)))

(declare-fun c!905122 () Bool)

(assert (=> b!5238104 (= c!905122 (isEmpty!32612 (exprs!4721 (h!67136 zl!343))))))

(declare-fun b!5238105 () Bool)

(assert (=> b!5238105 (= e!3259401 (= lt!2147612 (head!11223 (exprs!4721 (h!67136 zl!343)))))))

(assert (= (and d!1688168 res!2223310) b!5238100))

(assert (= (and d!1688168 c!905120) b!5238103))

(assert (= (and d!1688168 (not c!905120)) b!5238097))

(assert (= (and b!5238097 c!905123) b!5238099))

(assert (= (and b!5238097 (not c!905123)) b!5238101))

(assert (= (and d!1688168 res!2223311) b!5238104))

(assert (= (and b!5238104 c!905122) b!5238098))

(assert (= (and b!5238104 (not c!905122)) b!5238102))

(assert (= (and b!5238102 c!905121) b!5238105))

(assert (= (and b!5238102 (not c!905121)) b!5238096))

(declare-fun m!6283114 () Bool)

(assert (=> b!5238096 m!6283114))

(declare-fun m!6283116 () Bool)

(assert (=> b!5238104 m!6283116))

(declare-fun m!6283118 () Bool)

(assert (=> b!5238099 m!6283118))

(declare-fun m!6283120 () Bool)

(assert (=> d!1688168 m!6283120))

(declare-fun m!6283122 () Bool)

(assert (=> d!1688168 m!6283122))

(declare-fun m!6283124 () Bool)

(assert (=> b!5238098 m!6283124))

(assert (=> b!5238100 m!6282628))

(declare-fun m!6283126 () Bool)

(assert (=> b!5238105 m!6283126))

(declare-fun m!6283128 () Bool)

(assert (=> b!5238102 m!6283128))

(assert (=> b!5238102 m!6283128))

(declare-fun m!6283130 () Bool)

(assert (=> b!5238102 m!6283130))

(assert (=> b!5237529 d!1688168))

(declare-fun d!1688170 () Bool)

(declare-fun nullableFct!1404 (Regex!14837) Bool)

(assert (=> d!1688170 (= (nullable!5006 (regTwo!30187 (regOne!30186 r!7292))) (nullableFct!1404 (regTwo!30187 (regOne!30186 r!7292))))))

(declare-fun bs!1215565 () Bool)

(assert (= bs!1215565 d!1688170))

(declare-fun m!6283132 () Bool)

(assert (=> bs!1215565 m!6283132))

(assert (=> b!5237507 d!1688170))

(declare-fun d!1688172 () Bool)

(declare-fun c!905124 () Bool)

(assert (=> d!1688172 (= c!905124 (isEmpty!32615 s!2326))))

(declare-fun e!3259402 () Bool)

(assert (=> d!1688172 (= (matchZipper!1081 lt!2147493 s!2326) e!3259402)))

(declare-fun b!5238106 () Bool)

(assert (=> b!5238106 (= e!3259402 (nullableZipper!1252 lt!2147493))))

(declare-fun b!5238107 () Bool)

(assert (=> b!5238107 (= e!3259402 (matchZipper!1081 (derivationStepZipper!1096 lt!2147493 (head!11224 s!2326)) (tail!10321 s!2326)))))

(assert (= (and d!1688172 c!905124) b!5238106))

(assert (= (and d!1688172 (not c!905124)) b!5238107))

(declare-fun m!6283134 () Bool)

(assert (=> d!1688172 m!6283134))

(declare-fun m!6283136 () Bool)

(assert (=> b!5238106 m!6283136))

(declare-fun m!6283138 () Bool)

(assert (=> b!5238107 m!6283138))

(assert (=> b!5238107 m!6283138))

(declare-fun m!6283140 () Bool)

(assert (=> b!5238107 m!6283140))

(declare-fun m!6283142 () Bool)

(assert (=> b!5238107 m!6283142))

(assert (=> b!5238107 m!6283140))

(assert (=> b!5238107 m!6283142))

(declare-fun m!6283144 () Bool)

(assert (=> b!5238107 m!6283144))

(assert (=> b!5237507 d!1688172))

(declare-fun b!5238118 () Bool)

(declare-fun call!370694 () (InoxSet Context!8442))

(declare-fun e!3259409 () (InoxSet Context!8442))

(assert (=> b!5238118 (= e!3259409 ((_ map or) call!370694 (derivationStepZipperUp!209 (Context!8443 (t!373992 (exprs!4721 lt!2147529))) (h!67134 s!2326))))))

(declare-fun d!1688174 () Bool)

(declare-fun c!905129 () Bool)

(declare-fun e!3259410 () Bool)

(assert (=> d!1688174 (= c!905129 e!3259410)))

(declare-fun res!2223314 () Bool)

(assert (=> d!1688174 (=> (not res!2223314) (not e!3259410))))

(assert (=> d!1688174 (= res!2223314 ((_ is Cons!60687) (exprs!4721 lt!2147529)))))

(assert (=> d!1688174 (= (derivationStepZipperUp!209 lt!2147529 (h!67134 s!2326)) e!3259409)))

(declare-fun b!5238119 () Bool)

(declare-fun e!3259411 () (InoxSet Context!8442))

(assert (=> b!5238119 (= e!3259411 ((as const (Array Context!8442 Bool)) false))))

(declare-fun b!5238120 () Bool)

(assert (=> b!5238120 (= e!3259410 (nullable!5006 (h!67135 (exprs!4721 lt!2147529))))))

(declare-fun b!5238121 () Bool)

(assert (=> b!5238121 (= e!3259411 call!370694)))

(declare-fun b!5238122 () Bool)

(assert (=> b!5238122 (= e!3259409 e!3259411)))

(declare-fun c!905130 () Bool)

(assert (=> b!5238122 (= c!905130 ((_ is Cons!60687) (exprs!4721 lt!2147529)))))

(declare-fun bm!370689 () Bool)

(assert (=> bm!370689 (= call!370694 (derivationStepZipperDown!285 (h!67135 (exprs!4721 lt!2147529)) (Context!8443 (t!373992 (exprs!4721 lt!2147529))) (h!67134 s!2326)))))

(assert (= (and d!1688174 res!2223314) b!5238120))

(assert (= (and d!1688174 c!905129) b!5238118))

(assert (= (and d!1688174 (not c!905129)) b!5238122))

(assert (= (and b!5238122 c!905130) b!5238121))

(assert (= (and b!5238122 (not c!905130)) b!5238119))

(assert (= (or b!5238118 b!5238121) bm!370689))

(declare-fun m!6283146 () Bool)

(assert (=> b!5238118 m!6283146))

(declare-fun m!6283148 () Bool)

(assert (=> b!5238120 m!6283148))

(declare-fun m!6283150 () Bool)

(assert (=> bm!370689 m!6283150))

(assert (=> b!5237507 d!1688174))

(declare-fun d!1688176 () Bool)

(declare-fun choose!38972 ((InoxSet Context!8442) Int) (InoxSet Context!8442))

(assert (=> d!1688176 (= (flatMap!564 lt!2147493 lambda!263324) (choose!38972 lt!2147493 lambda!263324))))

(declare-fun bs!1215566 () Bool)

(assert (= bs!1215566 d!1688176))

(declare-fun m!6283152 () Bool)

(assert (=> bs!1215566 m!6283152))

(assert (=> b!5237507 d!1688176))

(declare-fun d!1688178 () Bool)

(declare-fun c!905131 () Bool)

(assert (=> d!1688178 (= c!905131 (isEmpty!32615 s!2326))))

(declare-fun e!3259412 () Bool)

(assert (=> d!1688178 (= (matchZipper!1081 z!1189 s!2326) e!3259412)))

(declare-fun b!5238123 () Bool)

(assert (=> b!5238123 (= e!3259412 (nullableZipper!1252 z!1189))))

(declare-fun b!5238124 () Bool)

(assert (=> b!5238124 (= e!3259412 (matchZipper!1081 (derivationStepZipper!1096 z!1189 (head!11224 s!2326)) (tail!10321 s!2326)))))

(assert (= (and d!1688178 c!905131) b!5238123))

(assert (= (and d!1688178 (not c!905131)) b!5238124))

(assert (=> d!1688178 m!6283134))

(declare-fun m!6283154 () Bool)

(assert (=> b!5238123 m!6283154))

(assert (=> b!5238124 m!6283138))

(assert (=> b!5238124 m!6283138))

(declare-fun m!6283156 () Bool)

(assert (=> b!5238124 m!6283156))

(assert (=> b!5238124 m!6283142))

(assert (=> b!5238124 m!6283156))

(assert (=> b!5238124 m!6283142))

(declare-fun m!6283158 () Bool)

(assert (=> b!5238124 m!6283158))

(assert (=> b!5237507 d!1688178))

(declare-fun d!1688180 () Bool)

(declare-fun dynLambda!23979 (Int Context!8442) (InoxSet Context!8442))

(assert (=> d!1688180 (= (flatMap!564 lt!2147493 lambda!263324) (dynLambda!23979 lambda!263324 lt!2147508))))

(declare-fun lt!2147615 () Unit!152710)

(declare-fun choose!38973 ((InoxSet Context!8442) Context!8442 Int) Unit!152710)

(assert (=> d!1688180 (= lt!2147615 (choose!38973 lt!2147493 lt!2147508 lambda!263324))))

(assert (=> d!1688180 (= lt!2147493 (store ((as const (Array Context!8442 Bool)) false) lt!2147508 true))))

(assert (=> d!1688180 (= (lemmaFlatMapOnSingletonSet!96 lt!2147493 lt!2147508 lambda!263324) lt!2147615)))

(declare-fun b_lambda!202469 () Bool)

(assert (=> (not b_lambda!202469) (not d!1688180)))

(declare-fun bs!1215567 () Bool)

(assert (= bs!1215567 d!1688180))

(assert (=> bs!1215567 m!6282580))

(declare-fun m!6283160 () Bool)

(assert (=> bs!1215567 m!6283160))

(declare-fun m!6283162 () Bool)

(assert (=> bs!1215567 m!6283162))

(assert (=> bs!1215567 m!6282574))

(assert (=> b!5237507 d!1688180))

(declare-fun d!1688182 () Bool)

(assert (=> d!1688182 (= (flatMap!564 lt!2147517 lambda!263324) (dynLambda!23979 lambda!263324 lt!2147529))))

(declare-fun lt!2147616 () Unit!152710)

(assert (=> d!1688182 (= lt!2147616 (choose!38973 lt!2147517 lt!2147529 lambda!263324))))

(assert (=> d!1688182 (= lt!2147517 (store ((as const (Array Context!8442 Bool)) false) lt!2147529 true))))

(assert (=> d!1688182 (= (lemmaFlatMapOnSingletonSet!96 lt!2147517 lt!2147529 lambda!263324) lt!2147616)))

(declare-fun b_lambda!202471 () Bool)

(assert (=> (not b_lambda!202471) (not d!1688182)))

(declare-fun bs!1215568 () Bool)

(assert (= bs!1215568 d!1688182))

(assert (=> bs!1215568 m!6282592))

(declare-fun m!6283164 () Bool)

(assert (=> bs!1215568 m!6283164))

(declare-fun m!6283166 () Bool)

(assert (=> bs!1215568 m!6283166))

(assert (=> bs!1215568 m!6282582))

(assert (=> b!5237507 d!1688182))

(declare-fun call!370695 () (InoxSet Context!8442))

(declare-fun b!5238125 () Bool)

(declare-fun e!3259413 () (InoxSet Context!8442))

(assert (=> b!5238125 (= e!3259413 ((_ map or) call!370695 (derivationStepZipperUp!209 (Context!8443 (t!373992 (exprs!4721 lt!2147508))) (h!67134 s!2326))))))

(declare-fun d!1688184 () Bool)

(declare-fun c!905132 () Bool)

(declare-fun e!3259414 () Bool)

(assert (=> d!1688184 (= c!905132 e!3259414)))

(declare-fun res!2223315 () Bool)

(assert (=> d!1688184 (=> (not res!2223315) (not e!3259414))))

(assert (=> d!1688184 (= res!2223315 ((_ is Cons!60687) (exprs!4721 lt!2147508)))))

(assert (=> d!1688184 (= (derivationStepZipperUp!209 lt!2147508 (h!67134 s!2326)) e!3259413)))

(declare-fun b!5238126 () Bool)

(declare-fun e!3259415 () (InoxSet Context!8442))

(assert (=> b!5238126 (= e!3259415 ((as const (Array Context!8442 Bool)) false))))

(declare-fun b!5238127 () Bool)

(assert (=> b!5238127 (= e!3259414 (nullable!5006 (h!67135 (exprs!4721 lt!2147508))))))

(declare-fun b!5238128 () Bool)

(assert (=> b!5238128 (= e!3259415 call!370695)))

(declare-fun b!5238129 () Bool)

(assert (=> b!5238129 (= e!3259413 e!3259415)))

(declare-fun c!905133 () Bool)

(assert (=> b!5238129 (= c!905133 ((_ is Cons!60687) (exprs!4721 lt!2147508)))))

(declare-fun bm!370690 () Bool)

(assert (=> bm!370690 (= call!370695 (derivationStepZipperDown!285 (h!67135 (exprs!4721 lt!2147508)) (Context!8443 (t!373992 (exprs!4721 lt!2147508))) (h!67134 s!2326)))))

(assert (= (and d!1688184 res!2223315) b!5238127))

(assert (= (and d!1688184 c!905132) b!5238125))

(assert (= (and d!1688184 (not c!905132)) b!5238129))

(assert (= (and b!5238129 c!905133) b!5238128))

(assert (= (and b!5238129 (not c!905133)) b!5238126))

(assert (= (or b!5238125 b!5238128) bm!370690))

(declare-fun m!6283168 () Bool)

(assert (=> b!5238125 m!6283168))

(declare-fun m!6283170 () Bool)

(assert (=> b!5238127 m!6283170))

(declare-fun m!6283172 () Bool)

(assert (=> bm!370690 m!6283172))

(assert (=> b!5237507 d!1688184))

(declare-fun d!1688186 () Bool)

(assert (=> d!1688186 (= (nullable!5006 (regOne!30187 (regOne!30186 r!7292))) (nullableFct!1404 (regOne!30187 (regOne!30186 r!7292))))))

(declare-fun bs!1215569 () Bool)

(assert (= bs!1215569 d!1688186))

(declare-fun m!6283174 () Bool)

(assert (=> bs!1215569 m!6283174))

(assert (=> b!5237507 d!1688186))

(declare-fun d!1688188 () Bool)

(assert (=> d!1688188 (= (flatMap!564 lt!2147517 lambda!263324) (choose!38972 lt!2147517 lambda!263324))))

(declare-fun bs!1215570 () Bool)

(assert (= bs!1215570 d!1688188))

(declare-fun m!6283176 () Bool)

(assert (=> bs!1215570 m!6283176))

(assert (=> b!5237507 d!1688188))

(declare-fun d!1688190 () Bool)

(declare-fun c!905134 () Bool)

(assert (=> d!1688190 (= c!905134 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259416 () Bool)

(assert (=> d!1688190 (= (matchZipper!1081 lt!2147535 (t!373991 s!2326)) e!3259416)))

(declare-fun b!5238130 () Bool)

(assert (=> b!5238130 (= e!3259416 (nullableZipper!1252 lt!2147535))))

(declare-fun b!5238131 () Bool)

(assert (=> b!5238131 (= e!3259416 (matchZipper!1081 (derivationStepZipper!1096 lt!2147535 (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688190 c!905134) b!5238130))

(assert (= (and d!1688190 (not c!905134)) b!5238131))

(assert (=> d!1688190 m!6283102))

(declare-fun m!6283178 () Bool)

(assert (=> b!5238130 m!6283178))

(assert (=> b!5238131 m!6283106))

(assert (=> b!5238131 m!6283106))

(declare-fun m!6283180 () Bool)

(assert (=> b!5238131 m!6283180))

(assert (=> b!5238131 m!6283110))

(assert (=> b!5238131 m!6283180))

(assert (=> b!5238131 m!6283110))

(declare-fun m!6283182 () Bool)

(assert (=> b!5238131 m!6283182))

(assert (=> b!5237528 d!1688190))

(declare-fun e!3259419 () Bool)

(declare-fun d!1688192 () Bool)

(assert (=> d!1688192 (= (matchZipper!1081 ((_ map or) lt!2147527 lt!2147512) (t!373991 s!2326)) e!3259419)))

(declare-fun res!2223318 () Bool)

(assert (=> d!1688192 (=> res!2223318 e!3259419)))

(assert (=> d!1688192 (= res!2223318 (matchZipper!1081 lt!2147527 (t!373991 s!2326)))))

(declare-fun lt!2147619 () Unit!152710)

(declare-fun choose!38975 ((InoxSet Context!8442) (InoxSet Context!8442) List!60810) Unit!152710)

(assert (=> d!1688192 (= lt!2147619 (choose!38975 lt!2147527 lt!2147512 (t!373991 s!2326)))))

(assert (=> d!1688192 (= (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147527 lt!2147512 (t!373991 s!2326)) lt!2147619)))

(declare-fun b!5238134 () Bool)

(assert (=> b!5238134 (= e!3259419 (matchZipper!1081 lt!2147512 (t!373991 s!2326)))))

(assert (= (and d!1688192 (not res!2223318)) b!5238134))

(assert (=> d!1688192 m!6282682))

(assert (=> d!1688192 m!6282598))

(declare-fun m!6283184 () Bool)

(assert (=> d!1688192 m!6283184))

(assert (=> b!5238134 m!6282558))

(assert (=> b!5237532 d!1688192))

(declare-fun d!1688194 () Bool)

(declare-fun c!905135 () Bool)

(assert (=> d!1688194 (= c!905135 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259420 () Bool)

(assert (=> d!1688194 (= (matchZipper!1081 ((_ map or) lt!2147527 lt!2147512) (t!373991 s!2326)) e!3259420)))

(declare-fun b!5238135 () Bool)

(assert (=> b!5238135 (= e!3259420 (nullableZipper!1252 ((_ map or) lt!2147527 lt!2147512)))))

(declare-fun b!5238136 () Bool)

(assert (=> b!5238136 (= e!3259420 (matchZipper!1081 (derivationStepZipper!1096 ((_ map or) lt!2147527 lt!2147512) (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688194 c!905135) b!5238135))

(assert (= (and d!1688194 (not c!905135)) b!5238136))

(assert (=> d!1688194 m!6283102))

(declare-fun m!6283186 () Bool)

(assert (=> b!5238135 m!6283186))

(assert (=> b!5238136 m!6283106))

(assert (=> b!5238136 m!6283106))

(declare-fun m!6283188 () Bool)

(assert (=> b!5238136 m!6283188))

(assert (=> b!5238136 m!6283110))

(assert (=> b!5238136 m!6283188))

(assert (=> b!5238136 m!6283110))

(declare-fun m!6283190 () Bool)

(assert (=> b!5238136 m!6283190))

(assert (=> b!5237532 d!1688194))

(declare-fun b!5238155 () Bool)

(declare-fun e!3259439 () Bool)

(declare-fun e!3259437 () Bool)

(assert (=> b!5238155 (= e!3259439 e!3259437)))

(declare-fun res!2223331 () Bool)

(assert (=> b!5238155 (= res!2223331 (not (nullable!5006 (reg!15166 r!7292))))))

(assert (=> b!5238155 (=> (not res!2223331) (not e!3259437))))

(declare-fun b!5238156 () Bool)

(declare-fun e!3259436 () Bool)

(assert (=> b!5238156 (= e!3259436 e!3259439)))

(declare-fun c!905141 () Bool)

(assert (=> b!5238156 (= c!905141 ((_ is Star!14837) r!7292))))

(declare-fun b!5238157 () Bool)

(declare-fun e!3259438 () Bool)

(declare-fun e!3259435 () Bool)

(assert (=> b!5238157 (= e!3259438 e!3259435)))

(declare-fun res!2223333 () Bool)

(assert (=> b!5238157 (=> (not res!2223333) (not e!3259435))))

(declare-fun call!370702 () Bool)

(assert (=> b!5238157 (= res!2223333 call!370702)))

(declare-fun b!5238158 () Bool)

(declare-fun e!3259441 () Bool)

(declare-fun call!370703 () Bool)

(assert (=> b!5238158 (= e!3259441 call!370703)))

(declare-fun b!5238159 () Bool)

(assert (=> b!5238159 (= e!3259435 call!370703)))

(declare-fun bm!370697 () Bool)

(declare-fun c!905140 () Bool)

(assert (=> bm!370697 (= call!370702 (validRegex!6573 (ite c!905140 (regOne!30187 r!7292) (regOne!30186 r!7292))))))

(declare-fun d!1688196 () Bool)

(declare-fun res!2223330 () Bool)

(assert (=> d!1688196 (=> res!2223330 e!3259436)))

(assert (=> d!1688196 (= res!2223330 ((_ is ElementMatch!14837) r!7292))))

(assert (=> d!1688196 (= (validRegex!6573 r!7292) e!3259436)))

(declare-fun b!5238160 () Bool)

(declare-fun res!2223332 () Bool)

(assert (=> b!5238160 (=> res!2223332 e!3259438)))

(assert (=> b!5238160 (= res!2223332 (not ((_ is Concat!23682) r!7292)))))

(declare-fun e!3259440 () Bool)

(assert (=> b!5238160 (= e!3259440 e!3259438)))

(declare-fun b!5238161 () Bool)

(declare-fun res!2223329 () Bool)

(assert (=> b!5238161 (=> (not res!2223329) (not e!3259441))))

(assert (=> b!5238161 (= res!2223329 call!370702)))

(assert (=> b!5238161 (= e!3259440 e!3259441)))

(declare-fun b!5238162 () Bool)

(assert (=> b!5238162 (= e!3259439 e!3259440)))

(assert (=> b!5238162 (= c!905140 ((_ is Union!14837) r!7292))))

(declare-fun bm!370698 () Bool)

(declare-fun call!370704 () Bool)

(assert (=> bm!370698 (= call!370703 call!370704)))

(declare-fun b!5238163 () Bool)

(assert (=> b!5238163 (= e!3259437 call!370704)))

(declare-fun bm!370699 () Bool)

(assert (=> bm!370699 (= call!370704 (validRegex!6573 (ite c!905141 (reg!15166 r!7292) (ite c!905140 (regTwo!30187 r!7292) (regTwo!30186 r!7292)))))))

(assert (= (and d!1688196 (not res!2223330)) b!5238156))

(assert (= (and b!5238156 c!905141) b!5238155))

(assert (= (and b!5238156 (not c!905141)) b!5238162))

(assert (= (and b!5238155 res!2223331) b!5238163))

(assert (= (and b!5238162 c!905140) b!5238161))

(assert (= (and b!5238162 (not c!905140)) b!5238160))

(assert (= (and b!5238161 res!2223329) b!5238158))

(assert (= (and b!5238160 (not res!2223332)) b!5238157))

(assert (= (and b!5238157 res!2223333) b!5238159))

(assert (= (or b!5238158 b!5238159) bm!370698))

(assert (= (or b!5238161 b!5238157) bm!370697))

(assert (= (or b!5238163 bm!370698) bm!370699))

(declare-fun m!6283192 () Bool)

(assert (=> b!5238155 m!6283192))

(declare-fun m!6283194 () Bool)

(assert (=> bm!370697 m!6283194))

(declare-fun m!6283196 () Bool)

(assert (=> bm!370699 m!6283196))

(assert (=> start!553690 d!1688196))

(declare-fun c!905154 () Bool)

(declare-fun c!905153 () Bool)

(declare-fun call!370722 () (InoxSet Context!8442))

(declare-fun bm!370712 () Bool)

(declare-fun call!370718 () List!60811)

(declare-fun c!905155 () Bool)

(assert (=> bm!370712 (= call!370722 (derivationStepZipperDown!285 (ite c!905154 (regOne!30187 (h!67135 (exprs!4721 (h!67136 zl!343)))) (ite c!905155 (regTwo!30186 (h!67135 (exprs!4721 (h!67136 zl!343)))) (ite c!905153 (regOne!30186 (h!67135 (exprs!4721 (h!67136 zl!343)))) (reg!15166 (h!67135 (exprs!4721 (h!67136 zl!343))))))) (ite (or c!905154 c!905155) lt!2147494 (Context!8443 call!370718)) (h!67134 s!2326)))))

(declare-fun b!5238186 () Bool)

(declare-fun e!3259457 () (InoxSet Context!8442))

(declare-fun call!370720 () (InoxSet Context!8442))

(assert (=> b!5238186 (= e!3259457 call!370720)))

(declare-fun b!5238187 () Bool)

(assert (=> b!5238187 (= e!3259457 ((as const (Array Context!8442 Bool)) false))))

(declare-fun d!1688198 () Bool)

(declare-fun c!905156 () Bool)

(assert (=> d!1688198 (= c!905156 (and ((_ is ElementMatch!14837) (h!67135 (exprs!4721 (h!67136 zl!343)))) (= (c!904949 (h!67135 (exprs!4721 (h!67136 zl!343)))) (h!67134 s!2326))))))

(declare-fun e!3259459 () (InoxSet Context!8442))

(assert (=> d!1688198 (= (derivationStepZipperDown!285 (h!67135 (exprs!4721 (h!67136 zl!343))) lt!2147494 (h!67134 s!2326)) e!3259459)))

(declare-fun b!5238188 () Bool)

(declare-fun e!3259458 () (InoxSet Context!8442))

(declare-fun call!370719 () (InoxSet Context!8442))

(declare-fun call!370717 () (InoxSet Context!8442))

(assert (=> b!5238188 (= e!3259458 ((_ map or) call!370719 call!370717))))

(declare-fun b!5238189 () Bool)

(declare-fun e!3259455 () Bool)

(assert (=> b!5238189 (= c!905155 e!3259455)))

(declare-fun res!2223336 () Bool)

(assert (=> b!5238189 (=> (not res!2223336) (not e!3259455))))

(assert (=> b!5238189 (= res!2223336 ((_ is Concat!23682) (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun e!3259454 () (InoxSet Context!8442))

(assert (=> b!5238189 (= e!3259454 e!3259458)))

(declare-fun call!370721 () List!60811)

(declare-fun bm!370713 () Bool)

(declare-fun $colon$colon!1302 (List!60811 Regex!14837) List!60811)

(assert (=> bm!370713 (= call!370721 ($colon$colon!1302 (exprs!4721 lt!2147494) (ite (or c!905155 c!905153) (regTwo!30186 (h!67135 (exprs!4721 (h!67136 zl!343)))) (h!67135 (exprs!4721 (h!67136 zl!343))))))))

(declare-fun b!5238190 () Bool)

(declare-fun c!905152 () Bool)

(assert (=> b!5238190 (= c!905152 ((_ is Star!14837) (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun e!3259456 () (InoxSet Context!8442))

(assert (=> b!5238190 (= e!3259456 e!3259457)))

(declare-fun b!5238191 () Bool)

(assert (=> b!5238191 (= e!3259454 ((_ map or) call!370722 call!370719))))

(declare-fun bm!370714 () Bool)

(assert (=> bm!370714 (= call!370718 call!370721)))

(declare-fun bm!370715 () Bool)

(assert (=> bm!370715 (= call!370719 (derivationStepZipperDown!285 (ite c!905154 (regTwo!30187 (h!67135 (exprs!4721 (h!67136 zl!343)))) (regOne!30186 (h!67135 (exprs!4721 (h!67136 zl!343))))) (ite c!905154 lt!2147494 (Context!8443 call!370721)) (h!67134 s!2326)))))

(declare-fun bm!370716 () Bool)

(assert (=> bm!370716 (= call!370720 call!370717)))

(declare-fun bm!370717 () Bool)

(assert (=> bm!370717 (= call!370717 call!370722)))

(declare-fun b!5238192 () Bool)

(assert (=> b!5238192 (= e!3259459 (store ((as const (Array Context!8442 Bool)) false) lt!2147494 true))))

(declare-fun b!5238193 () Bool)

(assert (=> b!5238193 (= e!3259459 e!3259454)))

(assert (=> b!5238193 (= c!905154 ((_ is Union!14837) (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5238194 () Bool)

(assert (=> b!5238194 (= e!3259458 e!3259456)))

(assert (=> b!5238194 (= c!905153 ((_ is Concat!23682) (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5238195 () Bool)

(assert (=> b!5238195 (= e!3259456 call!370720)))

(declare-fun b!5238196 () Bool)

(assert (=> b!5238196 (= e!3259455 (nullable!5006 (regOne!30186 (h!67135 (exprs!4721 (h!67136 zl!343))))))))

(assert (= (and d!1688198 c!905156) b!5238192))

(assert (= (and d!1688198 (not c!905156)) b!5238193))

(assert (= (and b!5238193 c!905154) b!5238191))

(assert (= (and b!5238193 (not c!905154)) b!5238189))

(assert (= (and b!5238189 res!2223336) b!5238196))

(assert (= (and b!5238189 c!905155) b!5238188))

(assert (= (and b!5238189 (not c!905155)) b!5238194))

(assert (= (and b!5238194 c!905153) b!5238195))

(assert (= (and b!5238194 (not c!905153)) b!5238190))

(assert (= (and b!5238190 c!905152) b!5238186))

(assert (= (and b!5238190 (not c!905152)) b!5238187))

(assert (= (or b!5238195 b!5238186) bm!370714))

(assert (= (or b!5238195 b!5238186) bm!370716))

(assert (= (or b!5238188 bm!370714) bm!370713))

(assert (= (or b!5238188 bm!370716) bm!370717))

(assert (= (or b!5238191 b!5238188) bm!370715))

(assert (= (or b!5238191 bm!370717) bm!370712))

(declare-fun m!6283198 () Bool)

(assert (=> b!5238192 m!6283198))

(declare-fun m!6283200 () Bool)

(assert (=> bm!370712 m!6283200))

(declare-fun m!6283202 () Bool)

(assert (=> b!5238196 m!6283202))

(declare-fun m!6283204 () Bool)

(assert (=> bm!370715 m!6283204))

(declare-fun m!6283206 () Bool)

(assert (=> bm!370713 m!6283206))

(assert (=> b!5237510 d!1688198))

(declare-fun e!3259460 () (InoxSet Context!8442))

(declare-fun b!5238197 () Bool)

(declare-fun call!370723 () (InoxSet Context!8442))

(assert (=> b!5238197 (= e!3259460 ((_ map or) call!370723 (derivationStepZipperUp!209 (Context!8443 (t!373992 (exprs!4721 lt!2147494))) (h!67134 s!2326))))))

(declare-fun d!1688200 () Bool)

(declare-fun c!905157 () Bool)

(declare-fun e!3259461 () Bool)

(assert (=> d!1688200 (= c!905157 e!3259461)))

(declare-fun res!2223337 () Bool)

(assert (=> d!1688200 (=> (not res!2223337) (not e!3259461))))

(assert (=> d!1688200 (= res!2223337 ((_ is Cons!60687) (exprs!4721 lt!2147494)))))

(assert (=> d!1688200 (= (derivationStepZipperUp!209 lt!2147494 (h!67134 s!2326)) e!3259460)))

(declare-fun b!5238198 () Bool)

(declare-fun e!3259462 () (InoxSet Context!8442))

(assert (=> b!5238198 (= e!3259462 ((as const (Array Context!8442 Bool)) false))))

(declare-fun b!5238199 () Bool)

(assert (=> b!5238199 (= e!3259461 (nullable!5006 (h!67135 (exprs!4721 lt!2147494))))))

(declare-fun b!5238200 () Bool)

(assert (=> b!5238200 (= e!3259462 call!370723)))

(declare-fun b!5238201 () Bool)

(assert (=> b!5238201 (= e!3259460 e!3259462)))

(declare-fun c!905158 () Bool)

(assert (=> b!5238201 (= c!905158 ((_ is Cons!60687) (exprs!4721 lt!2147494)))))

(declare-fun bm!370718 () Bool)

(assert (=> bm!370718 (= call!370723 (derivationStepZipperDown!285 (h!67135 (exprs!4721 lt!2147494)) (Context!8443 (t!373992 (exprs!4721 lt!2147494))) (h!67134 s!2326)))))

(assert (= (and d!1688200 res!2223337) b!5238199))

(assert (= (and d!1688200 c!905157) b!5238197))

(assert (= (and d!1688200 (not c!905157)) b!5238201))

(assert (= (and b!5238201 c!905158) b!5238200))

(assert (= (and b!5238201 (not c!905158)) b!5238198))

(assert (= (or b!5238197 b!5238200) bm!370718))

(declare-fun m!6283208 () Bool)

(assert (=> b!5238197 m!6283208))

(declare-fun m!6283210 () Bool)

(assert (=> b!5238199 m!6283210))

(declare-fun m!6283212 () Bool)

(assert (=> bm!370718 m!6283212))

(assert (=> b!5237510 d!1688200))

(declare-fun d!1688202 () Bool)

(assert (=> d!1688202 (= (nullable!5006 (h!67135 (exprs!4721 (h!67136 zl!343)))) (nullableFct!1404 (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun bs!1215571 () Bool)

(assert (= bs!1215571 d!1688202))

(declare-fun m!6283214 () Bool)

(assert (=> bs!1215571 m!6283214))

(assert (=> b!5237510 d!1688202))

(declare-fun b!5238202 () Bool)

(declare-fun e!3259463 () (InoxSet Context!8442))

(declare-fun call!370724 () (InoxSet Context!8442))

(assert (=> b!5238202 (= e!3259463 ((_ map or) call!370724 (derivationStepZipperUp!209 (Context!8443 (t!373992 (exprs!4721 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343)))))))) (h!67134 s!2326))))))

(declare-fun d!1688204 () Bool)

(declare-fun c!905159 () Bool)

(declare-fun e!3259464 () Bool)

(assert (=> d!1688204 (= c!905159 e!3259464)))

(declare-fun res!2223338 () Bool)

(assert (=> d!1688204 (=> (not res!2223338) (not e!3259464))))

(assert (=> d!1688204 (= res!2223338 ((_ is Cons!60687) (exprs!4721 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343))))))))))

(assert (=> d!1688204 (= (derivationStepZipperUp!209 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343))))) (h!67134 s!2326)) e!3259463)))

(declare-fun b!5238203 () Bool)

(declare-fun e!3259465 () (InoxSet Context!8442))

(assert (=> b!5238203 (= e!3259465 ((as const (Array Context!8442 Bool)) false))))

(declare-fun b!5238204 () Bool)

(assert (=> b!5238204 (= e!3259464 (nullable!5006 (h!67135 (exprs!4721 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343)))))))))))

(declare-fun b!5238205 () Bool)

(assert (=> b!5238205 (= e!3259465 call!370724)))

(declare-fun b!5238206 () Bool)

(assert (=> b!5238206 (= e!3259463 e!3259465)))

(declare-fun c!905160 () Bool)

(assert (=> b!5238206 (= c!905160 ((_ is Cons!60687) (exprs!4721 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343))))))))))

(declare-fun bm!370719 () Bool)

(assert (=> bm!370719 (= call!370724 (derivationStepZipperDown!285 (h!67135 (exprs!4721 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343))))))) (Context!8443 (t!373992 (exprs!4721 (Context!8443 (Cons!60687 (h!67135 (exprs!4721 (h!67136 zl!343))) (t!373992 (exprs!4721 (h!67136 zl!343)))))))) (h!67134 s!2326)))))

(assert (= (and d!1688204 res!2223338) b!5238204))

(assert (= (and d!1688204 c!905159) b!5238202))

(assert (= (and d!1688204 (not c!905159)) b!5238206))

(assert (= (and b!5238206 c!905160) b!5238205))

(assert (= (and b!5238206 (not c!905160)) b!5238203))

(assert (= (or b!5238202 b!5238205) bm!370719))

(declare-fun m!6283216 () Bool)

(assert (=> b!5238202 m!6283216))

(declare-fun m!6283218 () Bool)

(assert (=> b!5238204 m!6283218))

(declare-fun m!6283220 () Bool)

(assert (=> bm!370719 m!6283220))

(assert (=> b!5237510 d!1688204))

(declare-fun d!1688206 () Bool)

(assert (=> d!1688206 (= (flatMap!564 z!1189 lambda!263324) (choose!38972 z!1189 lambda!263324))))

(declare-fun bs!1215572 () Bool)

(assert (= bs!1215572 d!1688206))

(declare-fun m!6283222 () Bool)

(assert (=> bs!1215572 m!6283222))

(assert (=> b!5237510 d!1688206))

(declare-fun d!1688208 () Bool)

(assert (=> d!1688208 (= (flatMap!564 z!1189 lambda!263324) (dynLambda!23979 lambda!263324 (h!67136 zl!343)))))

(declare-fun lt!2147620 () Unit!152710)

(assert (=> d!1688208 (= lt!2147620 (choose!38973 z!1189 (h!67136 zl!343) lambda!263324))))

(assert (=> d!1688208 (= z!1189 (store ((as const (Array Context!8442 Bool)) false) (h!67136 zl!343) true))))

(assert (=> d!1688208 (= (lemmaFlatMapOnSingletonSet!96 z!1189 (h!67136 zl!343) lambda!263324) lt!2147620)))

(declare-fun b_lambda!202473 () Bool)

(assert (=> (not b_lambda!202473) (not d!1688208)))

(declare-fun bs!1215573 () Bool)

(assert (= bs!1215573 d!1688208))

(assert (=> bs!1215573 m!6282662))

(declare-fun m!6283224 () Bool)

(assert (=> bs!1215573 m!6283224))

(declare-fun m!6283226 () Bool)

(assert (=> bs!1215573 m!6283226))

(declare-fun m!6283228 () Bool)

(assert (=> bs!1215573 m!6283228))

(assert (=> b!5237510 d!1688208))

(declare-fun e!3259466 () (InoxSet Context!8442))

(declare-fun call!370725 () (InoxSet Context!8442))

(declare-fun b!5238207 () Bool)

(assert (=> b!5238207 (= e!3259466 ((_ map or) call!370725 (derivationStepZipperUp!209 (Context!8443 (t!373992 (exprs!4721 (h!67136 zl!343)))) (h!67134 s!2326))))))

(declare-fun d!1688210 () Bool)

(declare-fun c!905161 () Bool)

(declare-fun e!3259467 () Bool)

(assert (=> d!1688210 (= c!905161 e!3259467)))

(declare-fun res!2223339 () Bool)

(assert (=> d!1688210 (=> (not res!2223339) (not e!3259467))))

(assert (=> d!1688210 (= res!2223339 ((_ is Cons!60687) (exprs!4721 (h!67136 zl!343))))))

(assert (=> d!1688210 (= (derivationStepZipperUp!209 (h!67136 zl!343) (h!67134 s!2326)) e!3259466)))

(declare-fun b!5238208 () Bool)

(declare-fun e!3259468 () (InoxSet Context!8442))

(assert (=> b!5238208 (= e!3259468 ((as const (Array Context!8442 Bool)) false))))

(declare-fun b!5238209 () Bool)

(assert (=> b!5238209 (= e!3259467 (nullable!5006 (h!67135 (exprs!4721 (h!67136 zl!343)))))))

(declare-fun b!5238210 () Bool)

(assert (=> b!5238210 (= e!3259468 call!370725)))

(declare-fun b!5238211 () Bool)

(assert (=> b!5238211 (= e!3259466 e!3259468)))

(declare-fun c!905162 () Bool)

(assert (=> b!5238211 (= c!905162 ((_ is Cons!60687) (exprs!4721 (h!67136 zl!343))))))

(declare-fun bm!370720 () Bool)

(assert (=> bm!370720 (= call!370725 (derivationStepZipperDown!285 (h!67135 (exprs!4721 (h!67136 zl!343))) (Context!8443 (t!373992 (exprs!4721 (h!67136 zl!343)))) (h!67134 s!2326)))))

(assert (= (and d!1688210 res!2223339) b!5238209))

(assert (= (and d!1688210 c!905161) b!5238207))

(assert (= (and d!1688210 (not c!905161)) b!5238211))

(assert (= (and b!5238211 c!905162) b!5238210))

(assert (= (and b!5238211 (not c!905162)) b!5238208))

(assert (= (or b!5238207 b!5238210) bm!370720))

(declare-fun m!6283230 () Bool)

(assert (=> b!5238207 m!6283230))

(assert (=> b!5238209 m!6282666))

(declare-fun m!6283232 () Bool)

(assert (=> bm!370720 m!6283232))

(assert (=> b!5237510 d!1688210))

(declare-fun bs!1215574 () Bool)

(declare-fun b!5238248 () Bool)

(assert (= bs!1215574 (and b!5238248 b!5237498)))

(declare-fun lambda!263373 () Int)

(assert (=> bs!1215574 (not (= lambda!263373 lambda!263322))))

(assert (=> bs!1215574 (not (= lambda!263373 lambda!263323))))

(assert (=> b!5238248 true))

(assert (=> b!5238248 true))

(declare-fun bs!1215575 () Bool)

(declare-fun b!5238247 () Bool)

(assert (= bs!1215575 (and b!5238247 b!5237498)))

(declare-fun lambda!263374 () Int)

(assert (=> bs!1215575 (not (= lambda!263374 lambda!263322))))

(assert (=> bs!1215575 (= lambda!263374 lambda!263323)))

(declare-fun bs!1215576 () Bool)

(assert (= bs!1215576 (and b!5238247 b!5238248)))

(assert (=> bs!1215576 (not (= lambda!263374 lambda!263373))))

(assert (=> b!5238247 true))

(assert (=> b!5238247 true))

(declare-fun b!5238244 () Bool)

(declare-fun e!3259489 () Bool)

(assert (=> b!5238244 (= e!3259489 (matchRSpec!1940 (regTwo!30187 r!7292) s!2326))))

(declare-fun bm!370725 () Bool)

(declare-fun call!370731 () Bool)

(assert (=> bm!370725 (= call!370731 (isEmpty!32615 s!2326))))

(declare-fun b!5238245 () Bool)

(declare-fun res!2223356 () Bool)

(declare-fun e!3259487 () Bool)

(assert (=> b!5238245 (=> res!2223356 e!3259487)))

(assert (=> b!5238245 (= res!2223356 call!370731)))

(declare-fun e!3259490 () Bool)

(assert (=> b!5238245 (= e!3259490 e!3259487)))

(declare-fun d!1688212 () Bool)

(declare-fun c!905171 () Bool)

(assert (=> d!1688212 (= c!905171 ((_ is EmptyExpr!14837) r!7292))))

(declare-fun e!3259493 () Bool)

(assert (=> d!1688212 (= (matchRSpec!1940 r!7292 s!2326) e!3259493)))

(declare-fun bm!370726 () Bool)

(declare-fun call!370730 () Bool)

(declare-fun c!905174 () Bool)

(assert (=> bm!370726 (= call!370730 (Exists!2018 (ite c!905174 lambda!263373 lambda!263374)))))

(declare-fun b!5238246 () Bool)

(assert (=> b!5238246 (= e!3259493 call!370731)))

(assert (=> b!5238247 (= e!3259490 call!370730)))

(assert (=> b!5238248 (= e!3259487 call!370730)))

(declare-fun b!5238249 () Bool)

(declare-fun c!905172 () Bool)

(assert (=> b!5238249 (= c!905172 ((_ is Union!14837) r!7292))))

(declare-fun e!3259488 () Bool)

(declare-fun e!3259491 () Bool)

(assert (=> b!5238249 (= e!3259488 e!3259491)))

(declare-fun b!5238250 () Bool)

(assert (=> b!5238250 (= e!3259488 (= s!2326 (Cons!60686 (c!904949 r!7292) Nil!60686)))))

(declare-fun b!5238251 () Bool)

(declare-fun c!905173 () Bool)

(assert (=> b!5238251 (= c!905173 ((_ is ElementMatch!14837) r!7292))))

(declare-fun e!3259492 () Bool)

(assert (=> b!5238251 (= e!3259492 e!3259488)))

(declare-fun b!5238252 () Bool)

(assert (=> b!5238252 (= e!3259491 e!3259490)))

(assert (=> b!5238252 (= c!905174 ((_ is Star!14837) r!7292))))

(declare-fun b!5238253 () Bool)

(assert (=> b!5238253 (= e!3259493 e!3259492)))

(declare-fun res!2223358 () Bool)

(assert (=> b!5238253 (= res!2223358 (not ((_ is EmptyLang!14837) r!7292)))))

(assert (=> b!5238253 (=> (not res!2223358) (not e!3259492))))

(declare-fun b!5238254 () Bool)

(assert (=> b!5238254 (= e!3259491 e!3259489)))

(declare-fun res!2223357 () Bool)

(assert (=> b!5238254 (= res!2223357 (matchRSpec!1940 (regOne!30187 r!7292) s!2326))))

(assert (=> b!5238254 (=> res!2223357 e!3259489)))

(assert (= (and d!1688212 c!905171) b!5238246))

(assert (= (and d!1688212 (not c!905171)) b!5238253))

(assert (= (and b!5238253 res!2223358) b!5238251))

(assert (= (and b!5238251 c!905173) b!5238250))

(assert (= (and b!5238251 (not c!905173)) b!5238249))

(assert (= (and b!5238249 c!905172) b!5238254))

(assert (= (and b!5238249 (not c!905172)) b!5238252))

(assert (= (and b!5238254 (not res!2223357)) b!5238244))

(assert (= (and b!5238252 c!905174) b!5238245))

(assert (= (and b!5238252 (not c!905174)) b!5238247))

(assert (= (and b!5238245 (not res!2223356)) b!5238248))

(assert (= (or b!5238248 b!5238247) bm!370726))

(assert (= (or b!5238246 b!5238245) bm!370725))

(declare-fun m!6283234 () Bool)

(assert (=> b!5238244 m!6283234))

(assert (=> bm!370725 m!6283134))

(declare-fun m!6283236 () Bool)

(assert (=> bm!370726 m!6283236))

(declare-fun m!6283238 () Bool)

(assert (=> b!5238254 m!6283238))

(assert (=> b!5237531 d!1688212))

(declare-fun b!5238283 () Bool)

(declare-fun res!2223377 () Bool)

(declare-fun e!3259509 () Bool)

(assert (=> b!5238283 (=> (not res!2223377) (not e!3259509))))

(assert (=> b!5238283 (= res!2223377 (isEmpty!32615 (tail!10321 s!2326)))))

(declare-fun b!5238284 () Bool)

(assert (=> b!5238284 (= e!3259509 (= (head!11224 s!2326) (c!904949 r!7292)))))

(declare-fun d!1688214 () Bool)

(declare-fun e!3259511 () Bool)

(assert (=> d!1688214 e!3259511))

(declare-fun c!905181 () Bool)

(assert (=> d!1688214 (= c!905181 ((_ is EmptyExpr!14837) r!7292))))

(declare-fun lt!2147623 () Bool)

(declare-fun e!3259508 () Bool)

(assert (=> d!1688214 (= lt!2147623 e!3259508)))

(declare-fun c!905182 () Bool)

(assert (=> d!1688214 (= c!905182 (isEmpty!32615 s!2326))))

(assert (=> d!1688214 (validRegex!6573 r!7292)))

(assert (=> d!1688214 (= (matchR!7022 r!7292 s!2326) lt!2147623)))

(declare-fun b!5238285 () Bool)

(declare-fun e!3259512 () Bool)

(declare-fun e!3259510 () Bool)

(assert (=> b!5238285 (= e!3259512 e!3259510)))

(declare-fun res!2223375 () Bool)

(assert (=> b!5238285 (=> res!2223375 e!3259510)))

(declare-fun call!370734 () Bool)

(assert (=> b!5238285 (= res!2223375 call!370734)))

(declare-fun b!5238286 () Bool)

(declare-fun res!2223382 () Bool)

(declare-fun e!3259513 () Bool)

(assert (=> b!5238286 (=> res!2223382 e!3259513)))

(assert (=> b!5238286 (= res!2223382 (not ((_ is ElementMatch!14837) r!7292)))))

(declare-fun e!3259514 () Bool)

(assert (=> b!5238286 (= e!3259514 e!3259513)))

(declare-fun b!5238287 () Bool)

(declare-fun res!2223379 () Bool)

(assert (=> b!5238287 (=> res!2223379 e!3259513)))

(assert (=> b!5238287 (= res!2223379 e!3259509)))

(declare-fun res!2223381 () Bool)

(assert (=> b!5238287 (=> (not res!2223381) (not e!3259509))))

(assert (=> b!5238287 (= res!2223381 lt!2147623)))

(declare-fun b!5238288 () Bool)

(declare-fun derivativeStep!4074 (Regex!14837 C!29944) Regex!14837)

(assert (=> b!5238288 (= e!3259508 (matchR!7022 (derivativeStep!4074 r!7292 (head!11224 s!2326)) (tail!10321 s!2326)))))

(declare-fun b!5238289 () Bool)

(assert (=> b!5238289 (= e!3259514 (not lt!2147623))))

(declare-fun bm!370729 () Bool)

(assert (=> bm!370729 (= call!370734 (isEmpty!32615 s!2326))))

(declare-fun b!5238290 () Bool)

(assert (=> b!5238290 (= e!3259513 e!3259512)))

(declare-fun res!2223376 () Bool)

(assert (=> b!5238290 (=> (not res!2223376) (not e!3259512))))

(assert (=> b!5238290 (= res!2223376 (not lt!2147623))))

(declare-fun b!5238291 () Bool)

(declare-fun res!2223380 () Bool)

(assert (=> b!5238291 (=> res!2223380 e!3259510)))

(assert (=> b!5238291 (= res!2223380 (not (isEmpty!32615 (tail!10321 s!2326))))))

(declare-fun b!5238292 () Bool)

(assert (=> b!5238292 (= e!3259511 (= lt!2147623 call!370734))))

(declare-fun b!5238293 () Bool)

(assert (=> b!5238293 (= e!3259510 (not (= (head!11224 s!2326) (c!904949 r!7292))))))

(declare-fun b!5238294 () Bool)

(assert (=> b!5238294 (= e!3259508 (nullable!5006 r!7292))))

(declare-fun b!5238295 () Bool)

(declare-fun res!2223378 () Bool)

(assert (=> b!5238295 (=> (not res!2223378) (not e!3259509))))

(assert (=> b!5238295 (= res!2223378 (not call!370734))))

(declare-fun b!5238296 () Bool)

(assert (=> b!5238296 (= e!3259511 e!3259514)))

(declare-fun c!905183 () Bool)

(assert (=> b!5238296 (= c!905183 ((_ is EmptyLang!14837) r!7292))))

(assert (= (and d!1688214 c!905182) b!5238294))

(assert (= (and d!1688214 (not c!905182)) b!5238288))

(assert (= (and d!1688214 c!905181) b!5238292))

(assert (= (and d!1688214 (not c!905181)) b!5238296))

(assert (= (and b!5238296 c!905183) b!5238289))

(assert (= (and b!5238296 (not c!905183)) b!5238286))

(assert (= (and b!5238286 (not res!2223382)) b!5238287))

(assert (= (and b!5238287 res!2223381) b!5238295))

(assert (= (and b!5238295 res!2223378) b!5238283))

(assert (= (and b!5238283 res!2223377) b!5238284))

(assert (= (and b!5238287 (not res!2223379)) b!5238290))

(assert (= (and b!5238290 res!2223376) b!5238285))

(assert (= (and b!5238285 (not res!2223375)) b!5238291))

(assert (= (and b!5238291 (not res!2223380)) b!5238293))

(assert (= (or b!5238292 b!5238285 b!5238295) bm!370729))

(assert (=> b!5238293 m!6283138))

(assert (=> b!5238283 m!6283142))

(assert (=> b!5238283 m!6283142))

(declare-fun m!6283240 () Bool)

(assert (=> b!5238283 m!6283240))

(declare-fun m!6283242 () Bool)

(assert (=> b!5238294 m!6283242))

(assert (=> b!5238288 m!6283138))

(assert (=> b!5238288 m!6283138))

(declare-fun m!6283244 () Bool)

(assert (=> b!5238288 m!6283244))

(assert (=> b!5238288 m!6283142))

(assert (=> b!5238288 m!6283244))

(assert (=> b!5238288 m!6283142))

(declare-fun m!6283246 () Bool)

(assert (=> b!5238288 m!6283246))

(assert (=> d!1688214 m!6283134))

(assert (=> d!1688214 m!6282632))

(assert (=> bm!370729 m!6283134))

(assert (=> b!5238291 m!6283142))

(assert (=> b!5238291 m!6283142))

(assert (=> b!5238291 m!6283240))

(assert (=> b!5238284 m!6283138))

(assert (=> b!5237531 d!1688214))

(declare-fun d!1688216 () Bool)

(assert (=> d!1688216 (= (matchR!7022 r!7292 s!2326) (matchRSpec!1940 r!7292 s!2326))))

(declare-fun lt!2147626 () Unit!152710)

(declare-fun choose!38976 (Regex!14837 List!60810) Unit!152710)

(assert (=> d!1688216 (= lt!2147626 (choose!38976 r!7292 s!2326))))

(assert (=> d!1688216 (validRegex!6573 r!7292)))

(assert (=> d!1688216 (= (mainMatchTheorem!1940 r!7292 s!2326) lt!2147626)))

(declare-fun bs!1215577 () Bool)

(assert (= bs!1215577 d!1688216))

(assert (=> bs!1215577 m!6282554))

(assert (=> bs!1215577 m!6282552))

(declare-fun m!6283248 () Bool)

(assert (=> bs!1215577 m!6283248))

(assert (=> bs!1215577 m!6282632))

(assert (=> b!5237531 d!1688216))

(assert (=> b!5237509 d!1688166))

(declare-fun d!1688218 () Bool)

(declare-fun c!905184 () Bool)

(assert (=> d!1688218 (= c!905184 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259515 () Bool)

(assert (=> d!1688218 (= (matchZipper!1081 lt!2147519 (t!373991 s!2326)) e!3259515)))

(declare-fun b!5238297 () Bool)

(assert (=> b!5238297 (= e!3259515 (nullableZipper!1252 lt!2147519))))

(declare-fun b!5238298 () Bool)

(assert (=> b!5238298 (= e!3259515 (matchZipper!1081 (derivationStepZipper!1096 lt!2147519 (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688218 c!905184) b!5238297))

(assert (= (and d!1688218 (not c!905184)) b!5238298))

(assert (=> d!1688218 m!6283102))

(declare-fun m!6283250 () Bool)

(assert (=> b!5238297 m!6283250))

(assert (=> b!5238298 m!6283106))

(assert (=> b!5238298 m!6283106))

(declare-fun m!6283252 () Bool)

(assert (=> b!5238298 m!6283252))

(assert (=> b!5238298 m!6283110))

(assert (=> b!5238298 m!6283252))

(assert (=> b!5238298 m!6283110))

(declare-fun m!6283254 () Bool)

(assert (=> b!5238298 m!6283254))

(assert (=> b!5237514 d!1688218))

(declare-fun d!1688220 () Bool)

(declare-fun c!905185 () Bool)

(assert (=> d!1688220 (= c!905185 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259516 () Bool)

(assert (=> d!1688220 (= (matchZipper!1081 lt!2147507 (t!373991 s!2326)) e!3259516)))

(declare-fun b!5238299 () Bool)

(assert (=> b!5238299 (= e!3259516 (nullableZipper!1252 lt!2147507))))

(declare-fun b!5238300 () Bool)

(assert (=> b!5238300 (= e!3259516 (matchZipper!1081 (derivationStepZipper!1096 lt!2147507 (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688220 c!905185) b!5238299))

(assert (= (and d!1688220 (not c!905185)) b!5238300))

(assert (=> d!1688220 m!6283102))

(declare-fun m!6283256 () Bool)

(assert (=> b!5238299 m!6283256))

(assert (=> b!5238300 m!6283106))

(assert (=> b!5238300 m!6283106))

(declare-fun m!6283258 () Bool)

(assert (=> b!5238300 m!6283258))

(assert (=> b!5238300 m!6283110))

(assert (=> b!5238300 m!6283258))

(assert (=> b!5238300 m!6283110))

(declare-fun m!6283260 () Bool)

(assert (=> b!5238300 m!6283260))

(assert (=> b!5237514 d!1688220))

(declare-fun d!1688222 () Bool)

(declare-fun c!905186 () Bool)

(assert (=> d!1688222 (= c!905186 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259517 () Bool)

(assert (=> d!1688222 (= (matchZipper!1081 lt!2147527 (t!373991 s!2326)) e!3259517)))

(declare-fun b!5238301 () Bool)

(assert (=> b!5238301 (= e!3259517 (nullableZipper!1252 lt!2147527))))

(declare-fun b!5238302 () Bool)

(assert (=> b!5238302 (= e!3259517 (matchZipper!1081 (derivationStepZipper!1096 lt!2147527 (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688222 c!905186) b!5238301))

(assert (= (and d!1688222 (not c!905186)) b!5238302))

(assert (=> d!1688222 m!6283102))

(declare-fun m!6283262 () Bool)

(assert (=> b!5238301 m!6283262))

(assert (=> b!5238302 m!6283106))

(assert (=> b!5238302 m!6283106))

(declare-fun m!6283264 () Bool)

(assert (=> b!5238302 m!6283264))

(assert (=> b!5238302 m!6283110))

(assert (=> b!5238302 m!6283264))

(assert (=> b!5238302 m!6283110))

(declare-fun m!6283266 () Bool)

(assert (=> b!5238302 m!6283266))

(assert (=> b!5237514 d!1688222))

(declare-fun e!3259518 () Bool)

(declare-fun d!1688224 () Bool)

(assert (=> d!1688224 (= (matchZipper!1081 ((_ map or) lt!2147527 lt!2147535) (t!373991 s!2326)) e!3259518)))

(declare-fun res!2223383 () Bool)

(assert (=> d!1688224 (=> res!2223383 e!3259518)))

(assert (=> d!1688224 (= res!2223383 (matchZipper!1081 lt!2147527 (t!373991 s!2326)))))

(declare-fun lt!2147627 () Unit!152710)

(assert (=> d!1688224 (= lt!2147627 (choose!38975 lt!2147527 lt!2147535 (t!373991 s!2326)))))

(assert (=> d!1688224 (= (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147527 lt!2147535 (t!373991 s!2326)) lt!2147627)))

(declare-fun b!5238303 () Bool)

(assert (=> b!5238303 (= e!3259518 (matchZipper!1081 lt!2147535 (t!373991 s!2326)))))

(assert (= (and d!1688224 (not res!2223383)) b!5238303))

(declare-fun m!6283268 () Bool)

(assert (=> d!1688224 m!6283268))

(assert (=> d!1688224 m!6282598))

(declare-fun m!6283270 () Bool)

(assert (=> d!1688224 m!6283270))

(assert (=> b!5238303 m!6282562))

(assert (=> b!5237514 d!1688224))

(declare-fun d!1688226 () Bool)

(assert (=> d!1688226 (= (isEmpty!32612 (t!373992 (exprs!4721 (h!67136 zl!343)))) ((_ is Nil!60687) (t!373992 (exprs!4721 (h!67136 zl!343)))))))

(assert (=> b!5237535 d!1688226))

(declare-fun bs!1215578 () Bool)

(declare-fun d!1688228 () Bool)

(assert (= bs!1215578 (and d!1688228 b!5237534)))

(declare-fun lambda!263375 () Int)

(assert (=> bs!1215578 (= lambda!263375 lambda!263325)))

(declare-fun bs!1215579 () Bool)

(assert (= bs!1215579 (and d!1688228 d!1688156)))

(assert (=> bs!1215579 (= lambda!263375 lambda!263362)))

(declare-fun bs!1215580 () Bool)

(assert (= bs!1215580 (and d!1688228 d!1688158)))

(assert (=> bs!1215580 (= lambda!263375 lambda!263365)))

(declare-fun bs!1215581 () Bool)

(assert (= bs!1215581 (and d!1688228 d!1688168)))

(assert (=> bs!1215581 (= lambda!263375 lambda!263368)))

(declare-fun b!5238304 () Bool)

(declare-fun e!3259524 () Bool)

(declare-fun lt!2147628 () Regex!14837)

(assert (=> b!5238304 (= e!3259524 (isConcat!311 lt!2147628))))

(declare-fun b!5238305 () Bool)

(declare-fun e!3259520 () Regex!14837)

(declare-fun e!3259523 () Regex!14837)

(assert (=> b!5238305 (= e!3259520 e!3259523)))

(declare-fun c!905190 () Bool)

(assert (=> b!5238305 (= c!905190 ((_ is Cons!60687) lt!2147502))))

(declare-fun b!5238306 () Bool)

(declare-fun e!3259522 () Bool)

(assert (=> b!5238306 (= e!3259522 (isEmptyExpr!788 lt!2147628))))

(declare-fun b!5238307 () Bool)

(assert (=> b!5238307 (= e!3259523 (Concat!23682 (h!67135 lt!2147502) (generalisedConcat!506 (t!373992 lt!2147502))))))

(declare-fun e!3259521 () Bool)

(assert (=> d!1688228 e!3259521))

(declare-fun res!2223385 () Bool)

(assert (=> d!1688228 (=> (not res!2223385) (not e!3259521))))

(assert (=> d!1688228 (= res!2223385 (validRegex!6573 lt!2147628))))

(assert (=> d!1688228 (= lt!2147628 e!3259520)))

(declare-fun c!905187 () Bool)

(declare-fun e!3259519 () Bool)

(assert (=> d!1688228 (= c!905187 e!3259519)))

(declare-fun res!2223384 () Bool)

(assert (=> d!1688228 (=> (not res!2223384) (not e!3259519))))

(assert (=> d!1688228 (= res!2223384 ((_ is Cons!60687) lt!2147502))))

(assert (=> d!1688228 (forall!14261 lt!2147502 lambda!263375)))

(assert (=> d!1688228 (= (generalisedConcat!506 lt!2147502) lt!2147628)))

(declare-fun b!5238308 () Bool)

(assert (=> b!5238308 (= e!3259519 (isEmpty!32612 (t!373992 lt!2147502)))))

(declare-fun b!5238309 () Bool)

(assert (=> b!5238309 (= e!3259523 EmptyExpr!14837)))

(declare-fun b!5238310 () Bool)

(assert (=> b!5238310 (= e!3259522 e!3259524)))

(declare-fun c!905188 () Bool)

(assert (=> b!5238310 (= c!905188 (isEmpty!32612 (tail!10320 lt!2147502)))))

(declare-fun b!5238311 () Bool)

(assert (=> b!5238311 (= e!3259520 (h!67135 lt!2147502))))

(declare-fun b!5238312 () Bool)

(assert (=> b!5238312 (= e!3259521 e!3259522)))

(declare-fun c!905189 () Bool)

(assert (=> b!5238312 (= c!905189 (isEmpty!32612 lt!2147502))))

(declare-fun b!5238313 () Bool)

(assert (=> b!5238313 (= e!3259524 (= lt!2147628 (head!11223 lt!2147502)))))

(assert (= (and d!1688228 res!2223384) b!5238308))

(assert (= (and d!1688228 c!905187) b!5238311))

(assert (= (and d!1688228 (not c!905187)) b!5238305))

(assert (= (and b!5238305 c!905190) b!5238307))

(assert (= (and b!5238305 (not c!905190)) b!5238309))

(assert (= (and d!1688228 res!2223385) b!5238312))

(assert (= (and b!5238312 c!905189) b!5238306))

(assert (= (and b!5238312 (not c!905189)) b!5238310))

(assert (= (and b!5238310 c!905188) b!5238313))

(assert (= (and b!5238310 (not c!905188)) b!5238304))

(declare-fun m!6283272 () Bool)

(assert (=> b!5238304 m!6283272))

(declare-fun m!6283274 () Bool)

(assert (=> b!5238312 m!6283274))

(declare-fun m!6283276 () Bool)

(assert (=> b!5238307 m!6283276))

(declare-fun m!6283278 () Bool)

(assert (=> d!1688228 m!6283278))

(declare-fun m!6283280 () Bool)

(assert (=> d!1688228 m!6283280))

(declare-fun m!6283282 () Bool)

(assert (=> b!5238306 m!6283282))

(declare-fun m!6283284 () Bool)

(assert (=> b!5238308 m!6283284))

(declare-fun m!6283286 () Bool)

(assert (=> b!5238313 m!6283286))

(declare-fun m!6283288 () Bool)

(assert (=> b!5238310 m!6283288))

(assert (=> b!5238310 m!6283288))

(declare-fun m!6283290 () Bool)

(assert (=> b!5238310 m!6283290))

(assert (=> b!5237534 d!1688228))

(declare-fun bs!1215582 () Bool)

(declare-fun d!1688230 () Bool)

(assert (= bs!1215582 (and d!1688230 b!5237534)))

(declare-fun lambda!263376 () Int)

(assert (=> bs!1215582 (= lambda!263376 lambda!263325)))

(declare-fun bs!1215583 () Bool)

(assert (= bs!1215583 (and d!1688230 d!1688168)))

(assert (=> bs!1215583 (= lambda!263376 lambda!263368)))

(declare-fun bs!1215584 () Bool)

(assert (= bs!1215584 (and d!1688230 d!1688158)))

(assert (=> bs!1215584 (= lambda!263376 lambda!263365)))

(declare-fun bs!1215585 () Bool)

(assert (= bs!1215585 (and d!1688230 d!1688156)))

(assert (=> bs!1215585 (= lambda!263376 lambda!263362)))

(declare-fun bs!1215586 () Bool)

(assert (= bs!1215586 (and d!1688230 d!1688228)))

(assert (=> bs!1215586 (= lambda!263376 lambda!263375)))

(declare-fun b!5238314 () Bool)

(declare-fun e!3259530 () Bool)

(declare-fun lt!2147629 () Regex!14837)

(assert (=> b!5238314 (= e!3259530 (isConcat!311 lt!2147629))))

(declare-fun b!5238315 () Bool)

(declare-fun e!3259526 () Regex!14837)

(declare-fun e!3259529 () Regex!14837)

(assert (=> b!5238315 (= e!3259526 e!3259529)))

(declare-fun c!905194 () Bool)

(assert (=> b!5238315 (= c!905194 ((_ is Cons!60687) lt!2147534))))

(declare-fun b!5238316 () Bool)

(declare-fun e!3259528 () Bool)

(assert (=> b!5238316 (= e!3259528 (isEmptyExpr!788 lt!2147629))))

(declare-fun b!5238317 () Bool)

(assert (=> b!5238317 (= e!3259529 (Concat!23682 (h!67135 lt!2147534) (generalisedConcat!506 (t!373992 lt!2147534))))))

(declare-fun e!3259527 () Bool)

(assert (=> d!1688230 e!3259527))

(declare-fun res!2223387 () Bool)

(assert (=> d!1688230 (=> (not res!2223387) (not e!3259527))))

(assert (=> d!1688230 (= res!2223387 (validRegex!6573 lt!2147629))))

(assert (=> d!1688230 (= lt!2147629 e!3259526)))

(declare-fun c!905191 () Bool)

(declare-fun e!3259525 () Bool)

(assert (=> d!1688230 (= c!905191 e!3259525)))

(declare-fun res!2223386 () Bool)

(assert (=> d!1688230 (=> (not res!2223386) (not e!3259525))))

(assert (=> d!1688230 (= res!2223386 ((_ is Cons!60687) lt!2147534))))

(assert (=> d!1688230 (forall!14261 lt!2147534 lambda!263376)))

(assert (=> d!1688230 (= (generalisedConcat!506 lt!2147534) lt!2147629)))

(declare-fun b!5238318 () Bool)

(assert (=> b!5238318 (= e!3259525 (isEmpty!32612 (t!373992 lt!2147534)))))

(declare-fun b!5238319 () Bool)

(assert (=> b!5238319 (= e!3259529 EmptyExpr!14837)))

(declare-fun b!5238320 () Bool)

(assert (=> b!5238320 (= e!3259528 e!3259530)))

(declare-fun c!905192 () Bool)

(assert (=> b!5238320 (= c!905192 (isEmpty!32612 (tail!10320 lt!2147534)))))

(declare-fun b!5238321 () Bool)

(assert (=> b!5238321 (= e!3259526 (h!67135 lt!2147534))))

(declare-fun b!5238322 () Bool)

(assert (=> b!5238322 (= e!3259527 e!3259528)))

(declare-fun c!905193 () Bool)

(assert (=> b!5238322 (= c!905193 (isEmpty!32612 lt!2147534))))

(declare-fun b!5238323 () Bool)

(assert (=> b!5238323 (= e!3259530 (= lt!2147629 (head!11223 lt!2147534)))))

(assert (= (and d!1688230 res!2223386) b!5238318))

(assert (= (and d!1688230 c!905191) b!5238321))

(assert (= (and d!1688230 (not c!905191)) b!5238315))

(assert (= (and b!5238315 c!905194) b!5238317))

(assert (= (and b!5238315 (not c!905194)) b!5238319))

(assert (= (and d!1688230 res!2223387) b!5238322))

(assert (= (and b!5238322 c!905193) b!5238316))

(assert (= (and b!5238322 (not c!905193)) b!5238320))

(assert (= (and b!5238320 c!905192) b!5238323))

(assert (= (and b!5238320 (not c!905192)) b!5238314))

(declare-fun m!6283292 () Bool)

(assert (=> b!5238314 m!6283292))

(declare-fun m!6283294 () Bool)

(assert (=> b!5238322 m!6283294))

(declare-fun m!6283296 () Bool)

(assert (=> b!5238317 m!6283296))

(declare-fun m!6283298 () Bool)

(assert (=> d!1688230 m!6283298))

(declare-fun m!6283300 () Bool)

(assert (=> d!1688230 m!6283300))

(declare-fun m!6283302 () Bool)

(assert (=> b!5238316 m!6283302))

(declare-fun m!6283304 () Bool)

(assert (=> b!5238318 m!6283304))

(declare-fun m!6283306 () Bool)

(assert (=> b!5238323 m!6283306))

(declare-fun m!6283308 () Bool)

(assert (=> b!5238320 m!6283308))

(assert (=> b!5238320 m!6283308))

(declare-fun m!6283310 () Bool)

(assert (=> b!5238320 m!6283310))

(assert (=> b!5237534 d!1688230))

(declare-fun b!5238324 () Bool)

(declare-fun res!2223390 () Bool)

(declare-fun e!3259532 () Bool)

(assert (=> b!5238324 (=> (not res!2223390) (not e!3259532))))

(assert (=> b!5238324 (= res!2223390 (isEmpty!32615 (tail!10321 s!2326)))))

(declare-fun b!5238325 () Bool)

(assert (=> b!5238325 (= e!3259532 (= (head!11224 s!2326) (c!904949 lt!2147497)))))

(declare-fun d!1688232 () Bool)

(declare-fun e!3259534 () Bool)

(assert (=> d!1688232 e!3259534))

(declare-fun c!905195 () Bool)

(assert (=> d!1688232 (= c!905195 ((_ is EmptyExpr!14837) lt!2147497))))

(declare-fun lt!2147630 () Bool)

(declare-fun e!3259531 () Bool)

(assert (=> d!1688232 (= lt!2147630 e!3259531)))

(declare-fun c!905196 () Bool)

(assert (=> d!1688232 (= c!905196 (isEmpty!32615 s!2326))))

(assert (=> d!1688232 (validRegex!6573 lt!2147497)))

(assert (=> d!1688232 (= (matchR!7022 lt!2147497 s!2326) lt!2147630)))

(declare-fun b!5238326 () Bool)

(declare-fun e!3259535 () Bool)

(declare-fun e!3259533 () Bool)

(assert (=> b!5238326 (= e!3259535 e!3259533)))

(declare-fun res!2223388 () Bool)

(assert (=> b!5238326 (=> res!2223388 e!3259533)))

(declare-fun call!370735 () Bool)

(assert (=> b!5238326 (= res!2223388 call!370735)))

(declare-fun b!5238327 () Bool)

(declare-fun res!2223395 () Bool)

(declare-fun e!3259536 () Bool)

(assert (=> b!5238327 (=> res!2223395 e!3259536)))

(assert (=> b!5238327 (= res!2223395 (not ((_ is ElementMatch!14837) lt!2147497)))))

(declare-fun e!3259537 () Bool)

(assert (=> b!5238327 (= e!3259537 e!3259536)))

(declare-fun b!5238328 () Bool)

(declare-fun res!2223392 () Bool)

(assert (=> b!5238328 (=> res!2223392 e!3259536)))

(assert (=> b!5238328 (= res!2223392 e!3259532)))

(declare-fun res!2223394 () Bool)

(assert (=> b!5238328 (=> (not res!2223394) (not e!3259532))))

(assert (=> b!5238328 (= res!2223394 lt!2147630)))

(declare-fun b!5238329 () Bool)

(assert (=> b!5238329 (= e!3259531 (matchR!7022 (derivativeStep!4074 lt!2147497 (head!11224 s!2326)) (tail!10321 s!2326)))))

(declare-fun b!5238330 () Bool)

(assert (=> b!5238330 (= e!3259537 (not lt!2147630))))

(declare-fun bm!370730 () Bool)

(assert (=> bm!370730 (= call!370735 (isEmpty!32615 s!2326))))

(declare-fun b!5238331 () Bool)

(assert (=> b!5238331 (= e!3259536 e!3259535)))

(declare-fun res!2223389 () Bool)

(assert (=> b!5238331 (=> (not res!2223389) (not e!3259535))))

(assert (=> b!5238331 (= res!2223389 (not lt!2147630))))

(declare-fun b!5238332 () Bool)

(declare-fun res!2223393 () Bool)

(assert (=> b!5238332 (=> res!2223393 e!3259533)))

(assert (=> b!5238332 (= res!2223393 (not (isEmpty!32615 (tail!10321 s!2326))))))

(declare-fun b!5238333 () Bool)

(assert (=> b!5238333 (= e!3259534 (= lt!2147630 call!370735))))

(declare-fun b!5238334 () Bool)

(assert (=> b!5238334 (= e!3259533 (not (= (head!11224 s!2326) (c!904949 lt!2147497))))))

(declare-fun b!5238335 () Bool)

(assert (=> b!5238335 (= e!3259531 (nullable!5006 lt!2147497))))

(declare-fun b!5238336 () Bool)

(declare-fun res!2223391 () Bool)

(assert (=> b!5238336 (=> (not res!2223391) (not e!3259532))))

(assert (=> b!5238336 (= res!2223391 (not call!370735))))

(declare-fun b!5238337 () Bool)

(assert (=> b!5238337 (= e!3259534 e!3259537)))

(declare-fun c!905197 () Bool)

(assert (=> b!5238337 (= c!905197 ((_ is EmptyLang!14837) lt!2147497))))

(assert (= (and d!1688232 c!905196) b!5238335))

(assert (= (and d!1688232 (not c!905196)) b!5238329))

(assert (= (and d!1688232 c!905195) b!5238333))

(assert (= (and d!1688232 (not c!905195)) b!5238337))

(assert (= (and b!5238337 c!905197) b!5238330))

(assert (= (and b!5238337 (not c!905197)) b!5238327))

(assert (= (and b!5238327 (not res!2223395)) b!5238328))

(assert (= (and b!5238328 res!2223394) b!5238336))

(assert (= (and b!5238336 res!2223391) b!5238324))

(assert (= (and b!5238324 res!2223390) b!5238325))

(assert (= (and b!5238328 (not res!2223392)) b!5238331))

(assert (= (and b!5238331 res!2223389) b!5238326))

(assert (= (and b!5238326 (not res!2223388)) b!5238332))

(assert (= (and b!5238332 (not res!2223393)) b!5238334))

(assert (= (or b!5238333 b!5238326 b!5238336) bm!370730))

(assert (=> b!5238334 m!6283138))

(assert (=> b!5238324 m!6283142))

(assert (=> b!5238324 m!6283142))

(assert (=> b!5238324 m!6283240))

(declare-fun m!6283312 () Bool)

(assert (=> b!5238335 m!6283312))

(assert (=> b!5238329 m!6283138))

(assert (=> b!5238329 m!6283138))

(declare-fun m!6283314 () Bool)

(assert (=> b!5238329 m!6283314))

(assert (=> b!5238329 m!6283142))

(assert (=> b!5238329 m!6283314))

(assert (=> b!5238329 m!6283142))

(declare-fun m!6283316 () Bool)

(assert (=> b!5238329 m!6283316))

(assert (=> d!1688232 m!6283134))

(declare-fun m!6283318 () Bool)

(assert (=> d!1688232 m!6283318))

(assert (=> bm!370730 m!6283134))

(assert (=> b!5238332 m!6283142))

(assert (=> b!5238332 m!6283142))

(assert (=> b!5238332 m!6283240))

(assert (=> b!5238325 m!6283138))

(assert (=> b!5237534 d!1688232))

(declare-fun d!1688234 () Bool)

(assert (=> d!1688234 (= (matchR!7022 lt!2147497 s!2326) (matchRSpec!1940 lt!2147497 s!2326))))

(declare-fun lt!2147631 () Unit!152710)

(assert (=> d!1688234 (= lt!2147631 (choose!38976 lt!2147497 s!2326))))

(assert (=> d!1688234 (validRegex!6573 lt!2147497)))

(assert (=> d!1688234 (= (mainMatchTheorem!1940 lt!2147497 s!2326) lt!2147631)))

(declare-fun bs!1215587 () Bool)

(assert (= bs!1215587 d!1688234))

(assert (=> bs!1215587 m!6282608))

(assert (=> bs!1215587 m!6282620))

(declare-fun m!6283320 () Bool)

(assert (=> bs!1215587 m!6283320))

(assert (=> bs!1215587 m!6283318))

(assert (=> b!5237534 d!1688234))

(declare-fun b!5238338 () Bool)

(declare-fun res!2223398 () Bool)

(declare-fun e!3259539 () Bool)

(assert (=> b!5238338 (=> (not res!2223398) (not e!3259539))))

(assert (=> b!5238338 (= res!2223398 (isEmpty!32615 (tail!10321 s!2326)))))

(declare-fun b!5238339 () Bool)

(assert (=> b!5238339 (= e!3259539 (= (head!11224 s!2326) (c!904949 lt!2147520)))))

(declare-fun d!1688236 () Bool)

(declare-fun e!3259541 () Bool)

(assert (=> d!1688236 e!3259541))

(declare-fun c!905198 () Bool)

(assert (=> d!1688236 (= c!905198 ((_ is EmptyExpr!14837) lt!2147520))))

(declare-fun lt!2147632 () Bool)

(declare-fun e!3259538 () Bool)

(assert (=> d!1688236 (= lt!2147632 e!3259538)))

(declare-fun c!905199 () Bool)

(assert (=> d!1688236 (= c!905199 (isEmpty!32615 s!2326))))

(assert (=> d!1688236 (validRegex!6573 lt!2147520)))

(assert (=> d!1688236 (= (matchR!7022 lt!2147520 s!2326) lt!2147632)))

(declare-fun b!5238340 () Bool)

(declare-fun e!3259542 () Bool)

(declare-fun e!3259540 () Bool)

(assert (=> b!5238340 (= e!3259542 e!3259540)))

(declare-fun res!2223396 () Bool)

(assert (=> b!5238340 (=> res!2223396 e!3259540)))

(declare-fun call!370736 () Bool)

(assert (=> b!5238340 (= res!2223396 call!370736)))

(declare-fun b!5238341 () Bool)

(declare-fun res!2223403 () Bool)

(declare-fun e!3259543 () Bool)

(assert (=> b!5238341 (=> res!2223403 e!3259543)))

(assert (=> b!5238341 (= res!2223403 (not ((_ is ElementMatch!14837) lt!2147520)))))

(declare-fun e!3259544 () Bool)

(assert (=> b!5238341 (= e!3259544 e!3259543)))

(declare-fun b!5238342 () Bool)

(declare-fun res!2223400 () Bool)

(assert (=> b!5238342 (=> res!2223400 e!3259543)))

(assert (=> b!5238342 (= res!2223400 e!3259539)))

(declare-fun res!2223402 () Bool)

(assert (=> b!5238342 (=> (not res!2223402) (not e!3259539))))

(assert (=> b!5238342 (= res!2223402 lt!2147632)))

(declare-fun b!5238343 () Bool)

(assert (=> b!5238343 (= e!3259538 (matchR!7022 (derivativeStep!4074 lt!2147520 (head!11224 s!2326)) (tail!10321 s!2326)))))

(declare-fun b!5238344 () Bool)

(assert (=> b!5238344 (= e!3259544 (not lt!2147632))))

(declare-fun bm!370731 () Bool)

(assert (=> bm!370731 (= call!370736 (isEmpty!32615 s!2326))))

(declare-fun b!5238345 () Bool)

(assert (=> b!5238345 (= e!3259543 e!3259542)))

(declare-fun res!2223397 () Bool)

(assert (=> b!5238345 (=> (not res!2223397) (not e!3259542))))

(assert (=> b!5238345 (= res!2223397 (not lt!2147632))))

(declare-fun b!5238346 () Bool)

(declare-fun res!2223401 () Bool)

(assert (=> b!5238346 (=> res!2223401 e!3259540)))

(assert (=> b!5238346 (= res!2223401 (not (isEmpty!32615 (tail!10321 s!2326))))))

(declare-fun b!5238347 () Bool)

(assert (=> b!5238347 (= e!3259541 (= lt!2147632 call!370736))))

(declare-fun b!5238348 () Bool)

(assert (=> b!5238348 (= e!3259540 (not (= (head!11224 s!2326) (c!904949 lt!2147520))))))

(declare-fun b!5238349 () Bool)

(assert (=> b!5238349 (= e!3259538 (nullable!5006 lt!2147520))))

(declare-fun b!5238350 () Bool)

(declare-fun res!2223399 () Bool)

(assert (=> b!5238350 (=> (not res!2223399) (not e!3259539))))

(assert (=> b!5238350 (= res!2223399 (not call!370736))))

(declare-fun b!5238351 () Bool)

(assert (=> b!5238351 (= e!3259541 e!3259544)))

(declare-fun c!905200 () Bool)

(assert (=> b!5238351 (= c!905200 ((_ is EmptyLang!14837) lt!2147520))))

(assert (= (and d!1688236 c!905199) b!5238349))

(assert (= (and d!1688236 (not c!905199)) b!5238343))

(assert (= (and d!1688236 c!905198) b!5238347))

(assert (= (and d!1688236 (not c!905198)) b!5238351))

(assert (= (and b!5238351 c!905200) b!5238344))

(assert (= (and b!5238351 (not c!905200)) b!5238341))

(assert (= (and b!5238341 (not res!2223403)) b!5238342))

(assert (= (and b!5238342 res!2223402) b!5238350))

(assert (= (and b!5238350 res!2223399) b!5238338))

(assert (= (and b!5238338 res!2223398) b!5238339))

(assert (= (and b!5238342 (not res!2223400)) b!5238345))

(assert (= (and b!5238345 res!2223397) b!5238340))

(assert (= (and b!5238340 (not res!2223396)) b!5238346))

(assert (= (and b!5238346 (not res!2223401)) b!5238348))

(assert (= (or b!5238347 b!5238340 b!5238350) bm!370731))

(assert (=> b!5238348 m!6283138))

(assert (=> b!5238338 m!6283142))

(assert (=> b!5238338 m!6283142))

(assert (=> b!5238338 m!6283240))

(declare-fun m!6283322 () Bool)

(assert (=> b!5238349 m!6283322))

(assert (=> b!5238343 m!6283138))

(assert (=> b!5238343 m!6283138))

(declare-fun m!6283324 () Bool)

(assert (=> b!5238343 m!6283324))

(assert (=> b!5238343 m!6283142))

(assert (=> b!5238343 m!6283324))

(assert (=> b!5238343 m!6283142))

(declare-fun m!6283326 () Bool)

(assert (=> b!5238343 m!6283326))

(assert (=> d!1688236 m!6283134))

(declare-fun m!6283328 () Bool)

(assert (=> d!1688236 m!6283328))

(assert (=> bm!370731 m!6283134))

(assert (=> b!5238346 m!6283142))

(assert (=> b!5238346 m!6283142))

(assert (=> b!5238346 m!6283240))

(assert (=> b!5238339 m!6283138))

(assert (=> b!5237534 d!1688236))

(declare-fun bs!1215588 () Bool)

(declare-fun b!5238356 () Bool)

(assert (= bs!1215588 (and b!5238356 b!5237498)))

(declare-fun lambda!263377 () Int)

(assert (=> bs!1215588 (not (= lambda!263377 lambda!263322))))

(assert (=> bs!1215588 (not (= lambda!263377 lambda!263323))))

(declare-fun bs!1215589 () Bool)

(assert (= bs!1215589 (and b!5238356 b!5238248)))

(assert (=> bs!1215589 (= (and (= (reg!15166 lt!2147497) (reg!15166 r!7292)) (= lt!2147497 r!7292)) (= lambda!263377 lambda!263373))))

(declare-fun bs!1215590 () Bool)

(assert (= bs!1215590 (and b!5238356 b!5238247)))

(assert (=> bs!1215590 (not (= lambda!263377 lambda!263374))))

(assert (=> b!5238356 true))

(assert (=> b!5238356 true))

(declare-fun bs!1215591 () Bool)

(declare-fun b!5238355 () Bool)

(assert (= bs!1215591 (and b!5238355 b!5238248)))

(declare-fun lambda!263378 () Int)

(assert (=> bs!1215591 (not (= lambda!263378 lambda!263373))))

(declare-fun bs!1215592 () Bool)

(assert (= bs!1215592 (and b!5238355 b!5237498)))

(assert (=> bs!1215592 (not (= lambda!263378 lambda!263322))))

(declare-fun bs!1215593 () Bool)

(assert (= bs!1215593 (and b!5238355 b!5238247)))

(assert (=> bs!1215593 (= (and (= (regOne!30186 lt!2147497) (regOne!30186 r!7292)) (= (regTwo!30186 lt!2147497) (regTwo!30186 r!7292))) (= lambda!263378 lambda!263374))))

(assert (=> bs!1215592 (= (and (= (regOne!30186 lt!2147497) (regOne!30186 r!7292)) (= (regTwo!30186 lt!2147497) (regTwo!30186 r!7292))) (= lambda!263378 lambda!263323))))

(declare-fun bs!1215594 () Bool)

(assert (= bs!1215594 (and b!5238355 b!5238356)))

(assert (=> bs!1215594 (not (= lambda!263378 lambda!263377))))

(assert (=> b!5238355 true))

(assert (=> b!5238355 true))

(declare-fun b!5238352 () Bool)

(declare-fun e!3259547 () Bool)

(assert (=> b!5238352 (= e!3259547 (matchRSpec!1940 (regTwo!30187 lt!2147497) s!2326))))

(declare-fun bm!370732 () Bool)

(declare-fun call!370738 () Bool)

(assert (=> bm!370732 (= call!370738 (isEmpty!32615 s!2326))))

(declare-fun b!5238353 () Bool)

(declare-fun res!2223404 () Bool)

(declare-fun e!3259545 () Bool)

(assert (=> b!5238353 (=> res!2223404 e!3259545)))

(assert (=> b!5238353 (= res!2223404 call!370738)))

(declare-fun e!3259548 () Bool)

(assert (=> b!5238353 (= e!3259548 e!3259545)))

(declare-fun d!1688238 () Bool)

(declare-fun c!905201 () Bool)

(assert (=> d!1688238 (= c!905201 ((_ is EmptyExpr!14837) lt!2147497))))

(declare-fun e!3259551 () Bool)

(assert (=> d!1688238 (= (matchRSpec!1940 lt!2147497 s!2326) e!3259551)))

(declare-fun c!905204 () Bool)

(declare-fun call!370737 () Bool)

(declare-fun bm!370733 () Bool)

(assert (=> bm!370733 (= call!370737 (Exists!2018 (ite c!905204 lambda!263377 lambda!263378)))))

(declare-fun b!5238354 () Bool)

(assert (=> b!5238354 (= e!3259551 call!370738)))

(assert (=> b!5238355 (= e!3259548 call!370737)))

(assert (=> b!5238356 (= e!3259545 call!370737)))

(declare-fun b!5238357 () Bool)

(declare-fun c!905202 () Bool)

(assert (=> b!5238357 (= c!905202 ((_ is Union!14837) lt!2147497))))

(declare-fun e!3259546 () Bool)

(declare-fun e!3259549 () Bool)

(assert (=> b!5238357 (= e!3259546 e!3259549)))

(declare-fun b!5238358 () Bool)

(assert (=> b!5238358 (= e!3259546 (= s!2326 (Cons!60686 (c!904949 lt!2147497) Nil!60686)))))

(declare-fun b!5238359 () Bool)

(declare-fun c!905203 () Bool)

(assert (=> b!5238359 (= c!905203 ((_ is ElementMatch!14837) lt!2147497))))

(declare-fun e!3259550 () Bool)

(assert (=> b!5238359 (= e!3259550 e!3259546)))

(declare-fun b!5238360 () Bool)

(assert (=> b!5238360 (= e!3259549 e!3259548)))

(assert (=> b!5238360 (= c!905204 ((_ is Star!14837) lt!2147497))))

(declare-fun b!5238361 () Bool)

(assert (=> b!5238361 (= e!3259551 e!3259550)))

(declare-fun res!2223406 () Bool)

(assert (=> b!5238361 (= res!2223406 (not ((_ is EmptyLang!14837) lt!2147497)))))

(assert (=> b!5238361 (=> (not res!2223406) (not e!3259550))))

(declare-fun b!5238362 () Bool)

(assert (=> b!5238362 (= e!3259549 e!3259547)))

(declare-fun res!2223405 () Bool)

(assert (=> b!5238362 (= res!2223405 (matchRSpec!1940 (regOne!30187 lt!2147497) s!2326))))

(assert (=> b!5238362 (=> res!2223405 e!3259547)))

(assert (= (and d!1688238 c!905201) b!5238354))

(assert (= (and d!1688238 (not c!905201)) b!5238361))

(assert (= (and b!5238361 res!2223406) b!5238359))

(assert (= (and b!5238359 c!905203) b!5238358))

(assert (= (and b!5238359 (not c!905203)) b!5238357))

(assert (= (and b!5238357 c!905202) b!5238362))

(assert (= (and b!5238357 (not c!905202)) b!5238360))

(assert (= (and b!5238362 (not res!2223405)) b!5238352))

(assert (= (and b!5238360 c!905204) b!5238353))

(assert (= (and b!5238360 (not c!905204)) b!5238355))

(assert (= (and b!5238353 (not res!2223404)) b!5238356))

(assert (= (or b!5238356 b!5238355) bm!370733))

(assert (= (or b!5238354 b!5238353) bm!370732))

(declare-fun m!6283330 () Bool)

(assert (=> b!5238352 m!6283330))

(assert (=> bm!370732 m!6283134))

(declare-fun m!6283332 () Bool)

(assert (=> bm!370733 m!6283332))

(declare-fun m!6283334 () Bool)

(assert (=> b!5238362 m!6283334))

(assert (=> b!5237534 d!1688238))

(declare-fun d!1688240 () Bool)

(assert (=> d!1688240 (= (matchR!7022 lt!2147520 s!2326) (matchRSpec!1940 lt!2147520 s!2326))))

(declare-fun lt!2147633 () Unit!152710)

(assert (=> d!1688240 (= lt!2147633 (choose!38976 lt!2147520 s!2326))))

(assert (=> d!1688240 (validRegex!6573 lt!2147520)))

(assert (=> d!1688240 (= (mainMatchTheorem!1940 lt!2147520 s!2326) lt!2147633)))

(declare-fun bs!1215595 () Bool)

(assert (= bs!1215595 d!1688240))

(assert (=> bs!1215595 m!6282604))

(assert (=> bs!1215595 m!6282622))

(declare-fun m!6283336 () Bool)

(assert (=> bs!1215595 m!6283336))

(assert (=> bs!1215595 m!6283328))

(assert (=> b!5237534 d!1688240))

(declare-fun d!1688242 () Bool)

(declare-fun c!905205 () Bool)

(assert (=> d!1688242 (= c!905205 (isEmpty!32615 s!2326))))

(declare-fun e!3259552 () Bool)

(assert (=> d!1688242 (= (matchZipper!1081 lt!2147517 s!2326) e!3259552)))

(declare-fun b!5238363 () Bool)

(assert (=> b!5238363 (= e!3259552 (nullableZipper!1252 lt!2147517))))

(declare-fun b!5238364 () Bool)

(assert (=> b!5238364 (= e!3259552 (matchZipper!1081 (derivationStepZipper!1096 lt!2147517 (head!11224 s!2326)) (tail!10321 s!2326)))))

(assert (= (and d!1688242 c!905205) b!5238363))

(assert (= (and d!1688242 (not c!905205)) b!5238364))

(assert (=> d!1688242 m!6283134))

(declare-fun m!6283338 () Bool)

(assert (=> b!5238363 m!6283338))

(assert (=> b!5238364 m!6283138))

(assert (=> b!5238364 m!6283138))

(declare-fun m!6283340 () Bool)

(assert (=> b!5238364 m!6283340))

(assert (=> b!5238364 m!6283142))

(assert (=> b!5238364 m!6283340))

(assert (=> b!5238364 m!6283142))

(declare-fun m!6283342 () Bool)

(assert (=> b!5238364 m!6283342))

(assert (=> b!5237534 d!1688242))

(declare-fun d!1688244 () Bool)

(assert (=> d!1688244 (= (matchR!7022 lt!2147520 s!2326) (matchZipper!1081 lt!2147517 s!2326))))

(declare-fun lt!2147636 () Unit!152710)

(declare-fun choose!38977 ((InoxSet Context!8442) List!60812 Regex!14837 List!60810) Unit!152710)

(assert (=> d!1688244 (= lt!2147636 (choose!38977 lt!2147517 lt!2147525 lt!2147520 s!2326))))

(assert (=> d!1688244 (validRegex!6573 lt!2147520)))

(assert (=> d!1688244 (= (theoremZipperRegexEquiv!271 lt!2147517 lt!2147525 lt!2147520 s!2326) lt!2147636)))

(declare-fun bs!1215596 () Bool)

(assert (= bs!1215596 d!1688244))

(assert (=> bs!1215596 m!6282604))

(assert (=> bs!1215596 m!6282616))

(declare-fun m!6283344 () Bool)

(assert (=> bs!1215596 m!6283344))

(assert (=> bs!1215596 m!6283328))

(assert (=> b!5237534 d!1688244))

(declare-fun d!1688246 () Bool)

(assert (=> d!1688246 (= (matchR!7022 lt!2147497 s!2326) (matchZipper!1081 lt!2147493 s!2326))))

(declare-fun lt!2147637 () Unit!152710)

(assert (=> d!1688246 (= lt!2147637 (choose!38977 lt!2147493 lt!2147523 lt!2147497 s!2326))))

(assert (=> d!1688246 (validRegex!6573 lt!2147497)))

(assert (=> d!1688246 (= (theoremZipperRegexEquiv!271 lt!2147493 lt!2147523 lt!2147497 s!2326) lt!2147637)))

(declare-fun bs!1215597 () Bool)

(assert (= bs!1215597 d!1688246))

(assert (=> bs!1215597 m!6282608))

(assert (=> bs!1215597 m!6282586))

(declare-fun m!6283346 () Bool)

(assert (=> bs!1215597 m!6283346))

(assert (=> bs!1215597 m!6283318))

(assert (=> b!5237534 d!1688246))

(declare-fun bs!1215598 () Bool)

(declare-fun b!5238369 () Bool)

(assert (= bs!1215598 (and b!5238369 b!5238248)))

(declare-fun lambda!263379 () Int)

(assert (=> bs!1215598 (= (and (= (reg!15166 lt!2147520) (reg!15166 r!7292)) (= lt!2147520 r!7292)) (= lambda!263379 lambda!263373))))

(declare-fun bs!1215599 () Bool)

(assert (= bs!1215599 (and b!5238369 b!5237498)))

(assert (=> bs!1215599 (not (= lambda!263379 lambda!263322))))

(declare-fun bs!1215600 () Bool)

(assert (= bs!1215600 (and b!5238369 b!5238247)))

(assert (=> bs!1215600 (not (= lambda!263379 lambda!263374))))

(assert (=> bs!1215599 (not (= lambda!263379 lambda!263323))))

(declare-fun bs!1215601 () Bool)

(assert (= bs!1215601 (and b!5238369 b!5238356)))

(assert (=> bs!1215601 (= (and (= (reg!15166 lt!2147520) (reg!15166 lt!2147497)) (= lt!2147520 lt!2147497)) (= lambda!263379 lambda!263377))))

(declare-fun bs!1215602 () Bool)

(assert (= bs!1215602 (and b!5238369 b!5238355)))

(assert (=> bs!1215602 (not (= lambda!263379 lambda!263378))))

(assert (=> b!5238369 true))

(assert (=> b!5238369 true))

(declare-fun bs!1215603 () Bool)

(declare-fun b!5238368 () Bool)

(assert (= bs!1215603 (and b!5238368 b!5238248)))

(declare-fun lambda!263380 () Int)

(assert (=> bs!1215603 (not (= lambda!263380 lambda!263373))))

(declare-fun bs!1215604 () Bool)

(assert (= bs!1215604 (and b!5238368 b!5237498)))

(assert (=> bs!1215604 (not (= lambda!263380 lambda!263322))))

(declare-fun bs!1215605 () Bool)

(assert (= bs!1215605 (and b!5238368 b!5238247)))

(assert (=> bs!1215605 (= (and (= (regOne!30186 lt!2147520) (regOne!30186 r!7292)) (= (regTwo!30186 lt!2147520) (regTwo!30186 r!7292))) (= lambda!263380 lambda!263374))))

(assert (=> bs!1215604 (= (and (= (regOne!30186 lt!2147520) (regOne!30186 r!7292)) (= (regTwo!30186 lt!2147520) (regTwo!30186 r!7292))) (= lambda!263380 lambda!263323))))

(declare-fun bs!1215606 () Bool)

(assert (= bs!1215606 (and b!5238368 b!5238356)))

(assert (=> bs!1215606 (not (= lambda!263380 lambda!263377))))

(declare-fun bs!1215607 () Bool)

(assert (= bs!1215607 (and b!5238368 b!5238369)))

(assert (=> bs!1215607 (not (= lambda!263380 lambda!263379))))

(declare-fun bs!1215608 () Bool)

(assert (= bs!1215608 (and b!5238368 b!5238355)))

(assert (=> bs!1215608 (= (and (= (regOne!30186 lt!2147520) (regOne!30186 lt!2147497)) (= (regTwo!30186 lt!2147520) (regTwo!30186 lt!2147497))) (= lambda!263380 lambda!263378))))

(assert (=> b!5238368 true))

(assert (=> b!5238368 true))

(declare-fun b!5238365 () Bool)

(declare-fun e!3259555 () Bool)

(assert (=> b!5238365 (= e!3259555 (matchRSpec!1940 (regTwo!30187 lt!2147520) s!2326))))

(declare-fun bm!370734 () Bool)

(declare-fun call!370740 () Bool)

(assert (=> bm!370734 (= call!370740 (isEmpty!32615 s!2326))))

(declare-fun b!5238366 () Bool)

(declare-fun res!2223407 () Bool)

(declare-fun e!3259553 () Bool)

(assert (=> b!5238366 (=> res!2223407 e!3259553)))

(assert (=> b!5238366 (= res!2223407 call!370740)))

(declare-fun e!3259556 () Bool)

(assert (=> b!5238366 (= e!3259556 e!3259553)))

(declare-fun d!1688248 () Bool)

(declare-fun c!905206 () Bool)

(assert (=> d!1688248 (= c!905206 ((_ is EmptyExpr!14837) lt!2147520))))

(declare-fun e!3259559 () Bool)

(assert (=> d!1688248 (= (matchRSpec!1940 lt!2147520 s!2326) e!3259559)))

(declare-fun c!905209 () Bool)

(declare-fun call!370739 () Bool)

(declare-fun bm!370735 () Bool)

(assert (=> bm!370735 (= call!370739 (Exists!2018 (ite c!905209 lambda!263379 lambda!263380)))))

(declare-fun b!5238367 () Bool)

(assert (=> b!5238367 (= e!3259559 call!370740)))

(assert (=> b!5238368 (= e!3259556 call!370739)))

(assert (=> b!5238369 (= e!3259553 call!370739)))

(declare-fun b!5238370 () Bool)

(declare-fun c!905207 () Bool)

(assert (=> b!5238370 (= c!905207 ((_ is Union!14837) lt!2147520))))

(declare-fun e!3259554 () Bool)

(declare-fun e!3259557 () Bool)

(assert (=> b!5238370 (= e!3259554 e!3259557)))

(declare-fun b!5238371 () Bool)

(assert (=> b!5238371 (= e!3259554 (= s!2326 (Cons!60686 (c!904949 lt!2147520) Nil!60686)))))

(declare-fun b!5238372 () Bool)

(declare-fun c!905208 () Bool)

(assert (=> b!5238372 (= c!905208 ((_ is ElementMatch!14837) lt!2147520))))

(declare-fun e!3259558 () Bool)

(assert (=> b!5238372 (= e!3259558 e!3259554)))

(declare-fun b!5238373 () Bool)

(assert (=> b!5238373 (= e!3259557 e!3259556)))

(assert (=> b!5238373 (= c!905209 ((_ is Star!14837) lt!2147520))))

(declare-fun b!5238374 () Bool)

(assert (=> b!5238374 (= e!3259559 e!3259558)))

(declare-fun res!2223409 () Bool)

(assert (=> b!5238374 (= res!2223409 (not ((_ is EmptyLang!14837) lt!2147520)))))

(assert (=> b!5238374 (=> (not res!2223409) (not e!3259558))))

(declare-fun b!5238375 () Bool)

(assert (=> b!5238375 (= e!3259557 e!3259555)))

(declare-fun res!2223408 () Bool)

(assert (=> b!5238375 (= res!2223408 (matchRSpec!1940 (regOne!30187 lt!2147520) s!2326))))

(assert (=> b!5238375 (=> res!2223408 e!3259555)))

(assert (= (and d!1688248 c!905206) b!5238367))

(assert (= (and d!1688248 (not c!905206)) b!5238374))

(assert (= (and b!5238374 res!2223409) b!5238372))

(assert (= (and b!5238372 c!905208) b!5238371))

(assert (= (and b!5238372 (not c!905208)) b!5238370))

(assert (= (and b!5238370 c!905207) b!5238375))

(assert (= (and b!5238370 (not c!905207)) b!5238373))

(assert (= (and b!5238375 (not res!2223408)) b!5238365))

(assert (= (and b!5238373 c!905209) b!5238366))

(assert (= (and b!5238373 (not c!905209)) b!5238368))

(assert (= (and b!5238366 (not res!2223407)) b!5238369))

(assert (= (or b!5238369 b!5238368) bm!370735))

(assert (= (or b!5238367 b!5238366) bm!370734))

(declare-fun m!6283348 () Bool)

(assert (=> b!5238365 m!6283348))

(assert (=> bm!370734 m!6283134))

(declare-fun m!6283350 () Bool)

(assert (=> bm!370735 m!6283350))

(declare-fun m!6283352 () Bool)

(assert (=> b!5238375 m!6283352))

(assert (=> b!5237534 d!1688248))

(declare-fun d!1688250 () Bool)

(declare-fun res!2223414 () Bool)

(declare-fun e!3259564 () Bool)

(assert (=> d!1688250 (=> res!2223414 e!3259564)))

(assert (=> d!1688250 (= res!2223414 ((_ is Nil!60687) lt!2147502))))

(assert (=> d!1688250 (= (forall!14261 lt!2147502 lambda!263325) e!3259564)))

(declare-fun b!5238380 () Bool)

(declare-fun e!3259565 () Bool)

(assert (=> b!5238380 (= e!3259564 e!3259565)))

(declare-fun res!2223415 () Bool)

(assert (=> b!5238380 (=> (not res!2223415) (not e!3259565))))

(declare-fun dynLambda!23980 (Int Regex!14837) Bool)

(assert (=> b!5238380 (= res!2223415 (dynLambda!23980 lambda!263325 (h!67135 lt!2147502)))))

(declare-fun b!5238381 () Bool)

(assert (=> b!5238381 (= e!3259565 (forall!14261 (t!373992 lt!2147502) lambda!263325))))

(assert (= (and d!1688250 (not res!2223414)) b!5238380))

(assert (= (and b!5238380 res!2223415) b!5238381))

(declare-fun b_lambda!202475 () Bool)

(assert (=> (not b_lambda!202475) (not b!5238380)))

(declare-fun m!6283354 () Bool)

(assert (=> b!5238380 m!6283354))

(declare-fun m!6283356 () Bool)

(assert (=> b!5238381 m!6283356))

(assert (=> b!5237534 d!1688250))

(declare-fun bs!1215609 () Bool)

(declare-fun d!1688252 () Bool)

(assert (= bs!1215609 (and d!1688252 b!5237534)))

(declare-fun lambda!263383 () Int)

(assert (=> bs!1215609 (= lambda!263383 lambda!263325)))

(declare-fun bs!1215610 () Bool)

(assert (= bs!1215610 (and d!1688252 d!1688168)))

(assert (=> bs!1215610 (= lambda!263383 lambda!263368)))

(declare-fun bs!1215611 () Bool)

(assert (= bs!1215611 (and d!1688252 d!1688158)))

(assert (=> bs!1215611 (= lambda!263383 lambda!263365)))

(declare-fun bs!1215612 () Bool)

(assert (= bs!1215612 (and d!1688252 d!1688156)))

(assert (=> bs!1215612 (= lambda!263383 lambda!263362)))

(declare-fun bs!1215613 () Bool)

(assert (= bs!1215613 (and d!1688252 d!1688230)))

(assert (=> bs!1215613 (= lambda!263383 lambda!263376)))

(declare-fun bs!1215614 () Bool)

(assert (= bs!1215614 (and d!1688252 d!1688228)))

(assert (=> bs!1215614 (= lambda!263383 lambda!263375)))

(assert (=> d!1688252 (= (inv!80339 (h!67136 zl!343)) (forall!14261 (exprs!4721 (h!67136 zl!343)) lambda!263383))))

(declare-fun bs!1215615 () Bool)

(assert (= bs!1215615 d!1688252))

(declare-fun m!6283358 () Bool)

(assert (=> bs!1215615 m!6283358))

(assert (=> b!5237533 d!1688252))

(declare-fun e!3259566 () Bool)

(declare-fun d!1688254 () Bool)

(assert (=> d!1688254 (= (matchZipper!1081 ((_ map or) lt!2147535 lt!2147512) (t!373991 s!2326)) e!3259566)))

(declare-fun res!2223416 () Bool)

(assert (=> d!1688254 (=> res!2223416 e!3259566)))

(assert (=> d!1688254 (= res!2223416 (matchZipper!1081 lt!2147535 (t!373991 s!2326)))))

(declare-fun lt!2147638 () Unit!152710)

(assert (=> d!1688254 (= lt!2147638 (choose!38975 lt!2147535 lt!2147512 (t!373991 s!2326)))))

(assert (=> d!1688254 (= (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147535 lt!2147512 (t!373991 s!2326)) lt!2147638)))

(declare-fun b!5238382 () Bool)

(assert (=> b!5238382 (= e!3259566 (matchZipper!1081 lt!2147512 (t!373991 s!2326)))))

(assert (= (and d!1688254 (not res!2223416)) b!5238382))

(assert (=> d!1688254 m!6282564))

(assert (=> d!1688254 m!6282562))

(declare-fun m!6283360 () Bool)

(assert (=> d!1688254 m!6283360))

(assert (=> b!5238382 m!6282558))

(assert (=> b!5237516 d!1688254))

(assert (=> b!5237516 d!1688190))

(declare-fun d!1688256 () Bool)

(declare-fun c!905210 () Bool)

(assert (=> d!1688256 (= c!905210 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259567 () Bool)

(assert (=> d!1688256 (= (matchZipper!1081 ((_ map or) lt!2147535 lt!2147512) (t!373991 s!2326)) e!3259567)))

(declare-fun b!5238383 () Bool)

(assert (=> b!5238383 (= e!3259567 (nullableZipper!1252 ((_ map or) lt!2147535 lt!2147512)))))

(declare-fun b!5238384 () Bool)

(assert (=> b!5238384 (= e!3259567 (matchZipper!1081 (derivationStepZipper!1096 ((_ map or) lt!2147535 lt!2147512) (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688256 c!905210) b!5238383))

(assert (= (and d!1688256 (not c!905210)) b!5238384))

(assert (=> d!1688256 m!6283102))

(declare-fun m!6283362 () Bool)

(assert (=> b!5238383 m!6283362))

(assert (=> b!5238384 m!6283106))

(assert (=> b!5238384 m!6283106))

(declare-fun m!6283364 () Bool)

(assert (=> b!5238384 m!6283364))

(assert (=> b!5238384 m!6283110))

(assert (=> b!5238384 m!6283364))

(assert (=> b!5238384 m!6283110))

(declare-fun m!6283366 () Bool)

(assert (=> b!5238384 m!6283366))

(assert (=> b!5237516 d!1688256))

(declare-fun b!5238403 () Bool)

(declare-fun e!3259578 () Option!14948)

(declare-fun e!3259581 () Option!14948)

(assert (=> b!5238403 (= e!3259578 e!3259581)))

(declare-fun c!905215 () Bool)

(assert (=> b!5238403 (= c!905215 ((_ is Nil!60686) s!2326))))

(declare-fun b!5238404 () Bool)

(assert (=> b!5238404 (= e!3259578 (Some!14947 (tuple2!64073 Nil!60686 s!2326)))))

(declare-fun b!5238405 () Bool)

(declare-fun lt!2147645 () Unit!152710)

(declare-fun lt!2147647 () Unit!152710)

(assert (=> b!5238405 (= lt!2147645 lt!2147647)))

(declare-fun ++!13232 (List!60810 List!60810) List!60810)

(assert (=> b!5238405 (= (++!13232 (++!13232 Nil!60686 (Cons!60686 (h!67134 s!2326) Nil!60686)) (t!373991 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1647 (List!60810 C!29944 List!60810 List!60810) Unit!152710)

(assert (=> b!5238405 (= lt!2147647 (lemmaMoveElementToOtherListKeepsConcatEq!1647 Nil!60686 (h!67134 s!2326) (t!373991 s!2326) s!2326))))

(assert (=> b!5238405 (= e!3259581 (findConcatSeparation!1362 (regOne!30186 r!7292) (regTwo!30186 r!7292) (++!13232 Nil!60686 (Cons!60686 (h!67134 s!2326) Nil!60686)) (t!373991 s!2326) s!2326))))

(declare-fun b!5238406 () Bool)

(assert (=> b!5238406 (= e!3259581 None!14947)))

(declare-fun b!5238407 () Bool)

(declare-fun res!2223428 () Bool)

(declare-fun e!3259579 () Bool)

(assert (=> b!5238407 (=> (not res!2223428) (not e!3259579))))

(declare-fun lt!2147646 () Option!14948)

(declare-fun get!20856 (Option!14948) tuple2!64072)

(assert (=> b!5238407 (= res!2223428 (matchR!7022 (regTwo!30186 r!7292) (_2!35339 (get!20856 lt!2147646))))))

(declare-fun b!5238408 () Bool)

(declare-fun res!2223429 () Bool)

(assert (=> b!5238408 (=> (not res!2223429) (not e!3259579))))

(assert (=> b!5238408 (= res!2223429 (matchR!7022 (regOne!30186 r!7292) (_1!35339 (get!20856 lt!2147646))))))

(declare-fun b!5238409 () Bool)

(assert (=> b!5238409 (= e!3259579 (= (++!13232 (_1!35339 (get!20856 lt!2147646)) (_2!35339 (get!20856 lt!2147646))) s!2326))))

(declare-fun b!5238411 () Bool)

(declare-fun e!3259582 () Bool)

(assert (=> b!5238411 (= e!3259582 (not (isDefined!11651 lt!2147646)))))

(declare-fun b!5238410 () Bool)

(declare-fun e!3259580 () Bool)

(assert (=> b!5238410 (= e!3259580 (matchR!7022 (regTwo!30186 r!7292) s!2326))))

(declare-fun d!1688258 () Bool)

(assert (=> d!1688258 e!3259582))

(declare-fun res!2223430 () Bool)

(assert (=> d!1688258 (=> res!2223430 e!3259582)))

(assert (=> d!1688258 (= res!2223430 e!3259579)))

(declare-fun res!2223427 () Bool)

(assert (=> d!1688258 (=> (not res!2223427) (not e!3259579))))

(assert (=> d!1688258 (= res!2223427 (isDefined!11651 lt!2147646))))

(assert (=> d!1688258 (= lt!2147646 e!3259578)))

(declare-fun c!905216 () Bool)

(assert (=> d!1688258 (= c!905216 e!3259580)))

(declare-fun res!2223431 () Bool)

(assert (=> d!1688258 (=> (not res!2223431) (not e!3259580))))

(assert (=> d!1688258 (= res!2223431 (matchR!7022 (regOne!30186 r!7292) Nil!60686))))

(assert (=> d!1688258 (validRegex!6573 (regOne!30186 r!7292))))

(assert (=> d!1688258 (= (findConcatSeparation!1362 (regOne!30186 r!7292) (regTwo!30186 r!7292) Nil!60686 s!2326 s!2326) lt!2147646)))

(assert (= (and d!1688258 res!2223431) b!5238410))

(assert (= (and d!1688258 c!905216) b!5238404))

(assert (= (and d!1688258 (not c!905216)) b!5238403))

(assert (= (and b!5238403 c!905215) b!5238406))

(assert (= (and b!5238403 (not c!905215)) b!5238405))

(assert (= (and d!1688258 res!2223427) b!5238408))

(assert (= (and b!5238408 res!2223429) b!5238407))

(assert (= (and b!5238407 res!2223428) b!5238409))

(assert (= (and d!1688258 (not res!2223430)) b!5238411))

(declare-fun m!6283368 () Bool)

(assert (=> b!5238409 m!6283368))

(declare-fun m!6283370 () Bool)

(assert (=> b!5238409 m!6283370))

(declare-fun m!6283372 () Bool)

(assert (=> b!5238411 m!6283372))

(assert (=> d!1688258 m!6283372))

(declare-fun m!6283374 () Bool)

(assert (=> d!1688258 m!6283374))

(declare-fun m!6283376 () Bool)

(assert (=> d!1688258 m!6283376))

(declare-fun m!6283378 () Bool)

(assert (=> b!5238405 m!6283378))

(assert (=> b!5238405 m!6283378))

(declare-fun m!6283380 () Bool)

(assert (=> b!5238405 m!6283380))

(declare-fun m!6283382 () Bool)

(assert (=> b!5238405 m!6283382))

(assert (=> b!5238405 m!6283378))

(declare-fun m!6283384 () Bool)

(assert (=> b!5238405 m!6283384))

(assert (=> b!5238407 m!6283368))

(declare-fun m!6283386 () Bool)

(assert (=> b!5238407 m!6283386))

(declare-fun m!6283388 () Bool)

(assert (=> b!5238410 m!6283388))

(assert (=> b!5238408 m!6283368))

(declare-fun m!6283390 () Bool)

(assert (=> b!5238408 m!6283390))

(assert (=> b!5237498 d!1688258))

(declare-fun d!1688260 () Bool)

(declare-fun choose!38978 (Int) Bool)

(assert (=> d!1688260 (= (Exists!2018 lambda!263323) (choose!38978 lambda!263323))))

(declare-fun bs!1215616 () Bool)

(assert (= bs!1215616 d!1688260))

(declare-fun m!6283392 () Bool)

(assert (=> bs!1215616 m!6283392))

(assert (=> b!5237498 d!1688260))

(declare-fun d!1688262 () Bool)

(assert (=> d!1688262 (= (Exists!2018 lambda!263322) (choose!38978 lambda!263322))))

(declare-fun bs!1215617 () Bool)

(assert (= bs!1215617 d!1688262))

(declare-fun m!6283394 () Bool)

(assert (=> bs!1215617 m!6283394))

(assert (=> b!5237498 d!1688262))

(declare-fun bs!1215618 () Bool)

(declare-fun d!1688264 () Bool)

(assert (= bs!1215618 (and d!1688264 b!5237498)))

(declare-fun lambda!263386 () Int)

(assert (=> bs!1215618 (= lambda!263386 lambda!263322)))

(declare-fun bs!1215619 () Bool)

(assert (= bs!1215619 (and d!1688264 b!5238247)))

(assert (=> bs!1215619 (not (= lambda!263386 lambda!263374))))

(assert (=> bs!1215618 (not (= lambda!263386 lambda!263323))))

(declare-fun bs!1215620 () Bool)

(assert (= bs!1215620 (and d!1688264 b!5238356)))

(assert (=> bs!1215620 (not (= lambda!263386 lambda!263377))))

(declare-fun bs!1215621 () Bool)

(assert (= bs!1215621 (and d!1688264 b!5238369)))

(assert (=> bs!1215621 (not (= lambda!263386 lambda!263379))))

(declare-fun bs!1215622 () Bool)

(assert (= bs!1215622 (and d!1688264 b!5238355)))

(assert (=> bs!1215622 (not (= lambda!263386 lambda!263378))))

(declare-fun bs!1215623 () Bool)

(assert (= bs!1215623 (and d!1688264 b!5238368)))

(assert (=> bs!1215623 (not (= lambda!263386 lambda!263380))))

(declare-fun bs!1215624 () Bool)

(assert (= bs!1215624 (and d!1688264 b!5238248)))

(assert (=> bs!1215624 (not (= lambda!263386 lambda!263373))))

(assert (=> d!1688264 true))

(assert (=> d!1688264 true))

(assert (=> d!1688264 true))

(assert (=> d!1688264 (= (isDefined!11651 (findConcatSeparation!1362 (regOne!30186 r!7292) (regTwo!30186 r!7292) Nil!60686 s!2326 s!2326)) (Exists!2018 lambda!263386))))

(declare-fun lt!2147650 () Unit!152710)

(declare-fun choose!38979 (Regex!14837 Regex!14837 List!60810) Unit!152710)

(assert (=> d!1688264 (= lt!2147650 (choose!38979 (regOne!30186 r!7292) (regTwo!30186 r!7292) s!2326))))

(assert (=> d!1688264 (validRegex!6573 (regOne!30186 r!7292))))

(assert (=> d!1688264 (= (lemmaFindConcatSeparationEquivalentToExists!1126 (regOne!30186 r!7292) (regTwo!30186 r!7292) s!2326) lt!2147650)))

(declare-fun bs!1215625 () Bool)

(assert (= bs!1215625 d!1688264))

(assert (=> bs!1215625 m!6282642))

(assert (=> bs!1215625 m!6282644))

(declare-fun m!6283396 () Bool)

(assert (=> bs!1215625 m!6283396))

(declare-fun m!6283398 () Bool)

(assert (=> bs!1215625 m!6283398))

(assert (=> bs!1215625 m!6283376))

(assert (=> bs!1215625 m!6282642))

(assert (=> b!5237498 d!1688264))

(declare-fun bs!1215626 () Bool)

(declare-fun d!1688266 () Bool)

(assert (= bs!1215626 (and d!1688266 b!5237498)))

(declare-fun lambda!263391 () Int)

(assert (=> bs!1215626 (= lambda!263391 lambda!263322)))

(declare-fun bs!1215627 () Bool)

(assert (= bs!1215627 (and d!1688266 b!5238247)))

(assert (=> bs!1215627 (not (= lambda!263391 lambda!263374))))

(assert (=> bs!1215626 (not (= lambda!263391 lambda!263323))))

(declare-fun bs!1215628 () Bool)

(assert (= bs!1215628 (and d!1688266 b!5238356)))

(assert (=> bs!1215628 (not (= lambda!263391 lambda!263377))))

(declare-fun bs!1215629 () Bool)

(assert (= bs!1215629 (and d!1688266 b!5238369)))

(assert (=> bs!1215629 (not (= lambda!263391 lambda!263379))))

(declare-fun bs!1215630 () Bool)

(assert (= bs!1215630 (and d!1688266 d!1688264)))

(assert (=> bs!1215630 (= lambda!263391 lambda!263386)))

(declare-fun bs!1215631 () Bool)

(assert (= bs!1215631 (and d!1688266 b!5238355)))

(assert (=> bs!1215631 (not (= lambda!263391 lambda!263378))))

(declare-fun bs!1215632 () Bool)

(assert (= bs!1215632 (and d!1688266 b!5238368)))

(assert (=> bs!1215632 (not (= lambda!263391 lambda!263380))))

(declare-fun bs!1215633 () Bool)

(assert (= bs!1215633 (and d!1688266 b!5238248)))

(assert (=> bs!1215633 (not (= lambda!263391 lambda!263373))))

(assert (=> d!1688266 true))

(assert (=> d!1688266 true))

(assert (=> d!1688266 true))

(declare-fun bs!1215634 () Bool)

(assert (= bs!1215634 d!1688266))

(declare-fun lambda!263392 () Int)

(assert (=> bs!1215634 (not (= lambda!263392 lambda!263391))))

(assert (=> bs!1215626 (not (= lambda!263392 lambda!263322))))

(assert (=> bs!1215627 (= lambda!263392 lambda!263374)))

(assert (=> bs!1215626 (= lambda!263392 lambda!263323)))

(assert (=> bs!1215628 (not (= lambda!263392 lambda!263377))))

(assert (=> bs!1215629 (not (= lambda!263392 lambda!263379))))

(assert (=> bs!1215630 (not (= lambda!263392 lambda!263386))))

(assert (=> bs!1215631 (= (and (= (regOne!30186 r!7292) (regOne!30186 lt!2147497)) (= (regTwo!30186 r!7292) (regTwo!30186 lt!2147497))) (= lambda!263392 lambda!263378))))

(assert (=> bs!1215632 (= (and (= (regOne!30186 r!7292) (regOne!30186 lt!2147520)) (= (regTwo!30186 r!7292) (regTwo!30186 lt!2147520))) (= lambda!263392 lambda!263380))))

(assert (=> bs!1215633 (not (= lambda!263392 lambda!263373))))

(assert (=> d!1688266 true))

(assert (=> d!1688266 true))

(assert (=> d!1688266 true))

(assert (=> d!1688266 (= (Exists!2018 lambda!263391) (Exists!2018 lambda!263392))))

(declare-fun lt!2147653 () Unit!152710)

(declare-fun choose!38980 (Regex!14837 Regex!14837 List!60810) Unit!152710)

(assert (=> d!1688266 (= lt!2147653 (choose!38980 (regOne!30186 r!7292) (regTwo!30186 r!7292) s!2326))))

(assert (=> d!1688266 (validRegex!6573 (regOne!30186 r!7292))))

(assert (=> d!1688266 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!672 (regOne!30186 r!7292) (regTwo!30186 r!7292) s!2326) lt!2147653)))

(declare-fun m!6283400 () Bool)

(assert (=> bs!1215634 m!6283400))

(declare-fun m!6283402 () Bool)

(assert (=> bs!1215634 m!6283402))

(declare-fun m!6283404 () Bool)

(assert (=> bs!1215634 m!6283404))

(assert (=> bs!1215634 m!6283376))

(assert (=> b!5237498 d!1688266))

(declare-fun d!1688268 () Bool)

(declare-fun isEmpty!32616 (Option!14948) Bool)

(assert (=> d!1688268 (= (isDefined!11651 (findConcatSeparation!1362 (regOne!30186 r!7292) (regTwo!30186 r!7292) Nil!60686 s!2326 s!2326)) (not (isEmpty!32616 (findConcatSeparation!1362 (regOne!30186 r!7292) (regTwo!30186 r!7292) Nil!60686 s!2326 s!2326))))))

(declare-fun bs!1215635 () Bool)

(assert (= bs!1215635 d!1688268))

(assert (=> bs!1215635 m!6282642))

(declare-fun m!6283406 () Bool)

(assert (=> bs!1215635 m!6283406))

(assert (=> b!5237498 d!1688268))

(declare-fun d!1688270 () Bool)

(assert (=> d!1688270 (= (isEmpty!32611 (t!373993 zl!343)) ((_ is Nil!60688) (t!373993 zl!343)))))

(assert (=> b!5237518 d!1688270))

(declare-fun e!3259589 () Bool)

(declare-fun d!1688272 () Bool)

(assert (=> d!1688272 (= (matchZipper!1081 ((_ map or) lt!2147519 lt!2147512) (t!373991 s!2326)) e!3259589)))

(declare-fun res!2223444 () Bool)

(assert (=> d!1688272 (=> res!2223444 e!3259589)))

(assert (=> d!1688272 (= res!2223444 (matchZipper!1081 lt!2147519 (t!373991 s!2326)))))

(declare-fun lt!2147654 () Unit!152710)

(assert (=> d!1688272 (= lt!2147654 (choose!38975 lt!2147519 lt!2147512 (t!373991 s!2326)))))

(assert (=> d!1688272 (= (lemmaZipperConcatMatchesSameAsBothZippers!74 lt!2147519 lt!2147512 (t!373991 s!2326)) lt!2147654)))

(declare-fun b!5238424 () Bool)

(assert (=> b!5238424 (= e!3259589 (matchZipper!1081 lt!2147512 (t!373991 s!2326)))))

(assert (= (and d!1688272 (not res!2223444)) b!5238424))

(assert (=> d!1688272 m!6282676))

(assert (=> d!1688272 m!6282594))

(declare-fun m!6283408 () Bool)

(assert (=> d!1688272 m!6283408))

(assert (=> b!5238424 m!6282558))

(assert (=> b!5237522 d!1688272))

(assert (=> b!5237522 d!1688218))

(declare-fun d!1688274 () Bool)

(declare-fun c!905217 () Bool)

(assert (=> d!1688274 (= c!905217 (isEmpty!32615 (t!373991 s!2326)))))

(declare-fun e!3259590 () Bool)

(assert (=> d!1688274 (= (matchZipper!1081 ((_ map or) lt!2147519 lt!2147512) (t!373991 s!2326)) e!3259590)))

(declare-fun b!5238425 () Bool)

(assert (=> b!5238425 (= e!3259590 (nullableZipper!1252 ((_ map or) lt!2147519 lt!2147512)))))

(declare-fun b!5238426 () Bool)

(assert (=> b!5238426 (= e!3259590 (matchZipper!1081 (derivationStepZipper!1096 ((_ map or) lt!2147519 lt!2147512) (head!11224 (t!373991 s!2326))) (tail!10321 (t!373991 s!2326))))))

(assert (= (and d!1688274 c!905217) b!5238425))

(assert (= (and d!1688274 (not c!905217)) b!5238426))

(assert (=> d!1688274 m!6283102))

(declare-fun m!6283410 () Bool)

(assert (=> b!5238425 m!6283410))

(assert (=> b!5238426 m!6283106))

(assert (=> b!5238426 m!6283106))

(declare-fun m!6283412 () Bool)

(assert (=> b!5238426 m!6283412))

(assert (=> b!5238426 m!6283110))

(assert (=> b!5238426 m!6283412))

(assert (=> b!5238426 m!6283110))

(declare-fun m!6283414 () Bool)

(assert (=> b!5238426 m!6283414))

(assert (=> b!5237522 d!1688274))

(assert (=> b!5237500 d!1688190))

(declare-fun bs!1215636 () Bool)

(declare-fun d!1688276 () Bool)

(assert (= bs!1215636 (and d!1688276 b!5237534)))

(declare-fun lambda!263393 () Int)

(assert (=> bs!1215636 (= lambda!263393 lambda!263325)))

(declare-fun bs!1215637 () Bool)

(assert (= bs!1215637 (and d!1688276 d!1688168)))

(assert (=> bs!1215637 (= lambda!263393 lambda!263368)))

(declare-fun bs!1215638 () Bool)

(assert (= bs!1215638 (and d!1688276 d!1688158)))

(assert (=> bs!1215638 (= lambda!263393 lambda!263365)))

(declare-fun bs!1215639 () Bool)

(assert (= bs!1215639 (and d!1688276 d!1688252)))

(assert (=> bs!1215639 (= lambda!263393 lambda!263383)))

(declare-fun bs!1215640 () Bool)

(assert (= bs!1215640 (and d!1688276 d!1688156)))

(assert (=> bs!1215640 (= lambda!263393 lambda!263362)))

(declare-fun bs!1215641 () Bool)

(assert (= bs!1215641 (and d!1688276 d!1688230)))

(assert (=> bs!1215641 (= lambda!263393 lambda!263376)))

(declare-fun bs!1215642 () Bool)

(assert (= bs!1215642 (and d!1688276 d!1688228)))

(assert (=> bs!1215642 (= lambda!263393 lambda!263375)))

(assert (=> d!1688276 (= (inv!80339 setElem!33395) (forall!14261 (exprs!4721 setElem!33395) lambda!263393))))

(declare-fun bs!1215643 () Bool)

(assert (= bs!1215643 d!1688276))

(declare-fun m!6283416 () Bool)

(assert (=> bs!1215643 m!6283416))

(assert (=> setNonEmpty!33395 d!1688276))

(assert (=> b!5237520 d!1688242))

(assert (=> b!5237503 d!1688166))

(declare-fun call!370742 () List!60811)

(declare-fun c!905220 () Bool)

(declare-fun bm!370736 () Bool)

(declare-fun call!370746 () (InoxSet Context!8442))

(declare-fun c!905221 () Bool)

(declare-fun c!905219 () Bool)

(assert (=> bm!370736 (= call!370746 (derivationStepZipperDown!285 (ite c!905220 (regOne!30187 (regTwo!30187 (regOne!30186 r!7292))) (ite c!905221 (regTwo!30186 (regTwo!30187 (regOne!30186 r!7292))) (ite c!905219 (regOne!30186 (regTwo!30187 (regOne!30186 r!7292))) (reg!15166 (regTwo!30187 (regOne!30186 r!7292)))))) (ite (or c!905220 c!905221) lt!2147494 (Context!8443 call!370742)) (h!67134 s!2326)))))

(declare-fun b!5238427 () Bool)

(declare-fun e!3259594 () (InoxSet Context!8442))

(declare-fun call!370744 () (InoxSet Context!8442))

(assert (=> b!5238427 (= e!3259594 call!370744)))

(declare-fun b!5238428 () Bool)

(assert (=> b!5238428 (= e!3259594 ((as const (Array Context!8442 Bool)) false))))

(declare-fun d!1688278 () Bool)

(declare-fun c!905222 () Bool)

(assert (=> d!1688278 (= c!905222 (and ((_ is ElementMatch!14837) (regTwo!30187 (regOne!30186 r!7292))) (= (c!904949 (regTwo!30187 (regOne!30186 r!7292))) (h!67134 s!2326))))))

(declare-fun e!3259596 () (InoxSet Context!8442))

(assert (=> d!1688278 (= (derivationStepZipperDown!285 (regTwo!30187 (regOne!30186 r!7292)) lt!2147494 (h!67134 s!2326)) e!3259596)))

(declare-fun b!5238429 () Bool)

(declare-fun e!3259595 () (InoxSet Context!8442))

(declare-fun call!370743 () (InoxSet Context!8442))

(declare-fun call!370741 () (InoxSet Context!8442))

(assert (=> b!5238429 (= e!3259595 ((_ map or) call!370743 call!370741))))

(declare-fun b!5238430 () Bool)

(declare-fun e!3259592 () Bool)

(assert (=> b!5238430 (= c!905221 e!3259592)))

(declare-fun res!2223445 () Bool)

(assert (=> b!5238430 (=> (not res!2223445) (not e!3259592))))

(assert (=> b!5238430 (= res!2223445 ((_ is Concat!23682) (regTwo!30187 (regOne!30186 r!7292))))))

(declare-fun e!3259591 () (InoxSet Context!8442))

(assert (=> b!5238430 (= e!3259591 e!3259595)))

(declare-fun bm!370737 () Bool)

(declare-fun call!370745 () List!60811)

(assert (=> bm!370737 (= call!370745 ($colon$colon!1302 (exprs!4721 lt!2147494) (ite (or c!905221 c!905219) (regTwo!30186 (regTwo!30187 (regOne!30186 r!7292))) (regTwo!30187 (regOne!30186 r!7292)))))))

(declare-fun b!5238431 () Bool)

(declare-fun c!905218 () Bool)

(assert (=> b!5238431 (= c!905218 ((_ is Star!14837) (regTwo!30187 (regOne!30186 r!7292))))))

(declare-fun e!3259593 () (InoxSet Context!8442))

(assert (=> b!5238431 (= e!3259593 e!3259594)))

(declare-fun b!5238432 () Bool)

(assert (=> b!5238432 (= e!3259591 ((_ map or) call!370746 call!370743))))

(declare-fun bm!370738 () Bool)

(assert (=> bm!370738 (= call!370742 call!370745)))

(declare-fun bm!370739 () Bool)

(assert (=> bm!370739 (= call!370743 (derivationStepZipperDown!285 (ite c!905220 (regTwo!30187 (regTwo!30187 (regOne!30186 r!7292))) (regOne!30186 (regTwo!30187 (regOne!30186 r!7292)))) (ite c!905220 lt!2147494 (Context!8443 call!370745)) (h!67134 s!2326)))))

(declare-fun bm!370740 () Bool)

(assert (=> bm!370740 (= call!370744 call!370741)))

(declare-fun bm!370741 () Bool)

(assert (=> bm!370741 (= call!370741 call!370746)))

(declare-fun b!5238433 () Bool)

(assert (=> b!5238433 (= e!3259596 (store ((as const (Array Context!8442 Bool)) false) lt!2147494 true))))

(declare-fun b!5238434 () Bool)

(assert (=> b!5238434 (= e!3259596 e!3259591)))

(assert (=> b!5238434 (= c!905220 ((_ is Union!14837) (regTwo!30187 (regOne!30186 r!7292))))))

(declare-fun b!5238435 () Bool)

(assert (=> b!5238435 (= e!3259595 e!3259593)))

(assert (=> b!5238435 (= c!905219 ((_ is Concat!23682) (regTwo!30187 (regOne!30186 r!7292))))))

(declare-fun b!5238436 () Bool)

(assert (=> b!5238436 (= e!3259593 call!370744)))

(declare-fun b!5238437 () Bool)

(assert (=> b!5238437 (= e!3259592 (nullable!5006 (regOne!30186 (regTwo!30187 (regOne!30186 r!7292)))))))

(assert (= (and d!1688278 c!905222) b!5238433))

(assert (= (and d!1688278 (not c!905222)) b!5238434))

(assert (= (and b!5238434 c!905220) b!5238432))

(assert (= (and b!5238434 (not c!905220)) b!5238430))

(assert (= (and b!5238430 res!2223445) b!5238437))

(assert (= (and b!5238430 c!905221) b!5238429))

(assert (= (and b!5238430 (not c!905221)) b!5238435))

(assert (= (and b!5238435 c!905219) b!5238436))

(assert (= (and b!5238435 (not c!905219)) b!5238431))

(assert (= (and b!5238431 c!905218) b!5238427))

(assert (= (and b!5238431 (not c!905218)) b!5238428))

(assert (= (or b!5238436 b!5238427) bm!370738))

(assert (= (or b!5238436 b!5238427) bm!370740))

(assert (= (or b!5238429 bm!370738) bm!370737))

(assert (= (or b!5238429 bm!370740) bm!370741))

(assert (= (or b!5238432 b!5238429) bm!370739))

(assert (= (or b!5238432 bm!370741) bm!370736))

(assert (=> b!5238433 m!6283198))

(declare-fun m!6283418 () Bool)

(assert (=> bm!370736 m!6283418))

(declare-fun m!6283420 () Bool)

(assert (=> b!5238437 m!6283420))

(declare-fun m!6283422 () Bool)

(assert (=> bm!370739 m!6283422))

(declare-fun m!6283424 () Bool)

(assert (=> bm!370737 m!6283424))

(assert (=> b!5237502 d!1688278))

(declare-fun call!370752 () (InoxSet Context!8442))

(declare-fun c!905226 () Bool)

(declare-fun call!370748 () List!60811)

(declare-fun bm!370742 () Bool)

(declare-fun c!905225 () Bool)

(declare-fun c!905224 () Bool)

(assert (=> bm!370742 (= call!370752 (derivationStepZipperDown!285 (ite c!905225 (regOne!30187 (regOne!30187 (regOne!30186 r!7292))) (ite c!905226 (regTwo!30186 (regOne!30187 (regOne!30186 r!7292))) (ite c!905224 (regOne!30186 (regOne!30187 (regOne!30186 r!7292))) (reg!15166 (regOne!30187 (regOne!30186 r!7292)))))) (ite (or c!905225 c!905226) lt!2147494 (Context!8443 call!370748)) (h!67134 s!2326)))))

(declare-fun b!5238438 () Bool)

(declare-fun e!3259600 () (InoxSet Context!8442))

(declare-fun call!370750 () (InoxSet Context!8442))

(assert (=> b!5238438 (= e!3259600 call!370750)))

(declare-fun b!5238439 () Bool)

(assert (=> b!5238439 (= e!3259600 ((as const (Array Context!8442 Bool)) false))))

(declare-fun d!1688280 () Bool)

(declare-fun c!905227 () Bool)

(assert (=> d!1688280 (= c!905227 (and ((_ is ElementMatch!14837) (regOne!30187 (regOne!30186 r!7292))) (= (c!904949 (regOne!30187 (regOne!30186 r!7292))) (h!67134 s!2326))))))

(declare-fun e!3259602 () (InoxSet Context!8442))

(assert (=> d!1688280 (= (derivationStepZipperDown!285 (regOne!30187 (regOne!30186 r!7292)) lt!2147494 (h!67134 s!2326)) e!3259602)))

(declare-fun b!5238440 () Bool)

(declare-fun e!3259601 () (InoxSet Context!8442))

(declare-fun call!370749 () (InoxSet Context!8442))

(declare-fun call!370747 () (InoxSet Context!8442))

(assert (=> b!5238440 (= e!3259601 ((_ map or) call!370749 call!370747))))

(declare-fun b!5238441 () Bool)

(declare-fun e!3259598 () Bool)

(assert (=> b!5238441 (= c!905226 e!3259598)))

(declare-fun res!2223446 () Bool)

(assert (=> b!5238441 (=> (not res!2223446) (not e!3259598))))

(assert (=> b!5238441 (= res!2223446 ((_ is Concat!23682) (regOne!30187 (regOne!30186 r!7292))))))

(declare-fun e!3259597 () (InoxSet Context!8442))

(assert (=> b!5238441 (= e!3259597 e!3259601)))

(declare-fun bm!370743 () Bool)

(declare-fun call!370751 () List!60811)

(assert (=> bm!370743 (= call!370751 ($colon$colon!1302 (exprs!4721 lt!2147494) (ite (or c!905226 c!905224) (regTwo!30186 (regOne!30187 (regOne!30186 r!7292))) (regOne!30187 (regOne!30186 r!7292)))))))

(declare-fun b!5238442 () Bool)

(declare-fun c!905223 () Bool)

(assert (=> b!5238442 (= c!905223 ((_ is Star!14837) (regOne!30187 (regOne!30186 r!7292))))))

(declare-fun e!3259599 () (InoxSet Context!8442))

(assert (=> b!5238442 (= e!3259599 e!3259600)))

(declare-fun b!5238443 () Bool)

(assert (=> b!5238443 (= e!3259597 ((_ map or) call!370752 call!370749))))

(declare-fun bm!370744 () Bool)

(assert (=> bm!370744 (= call!370748 call!370751)))

(declare-fun bm!370745 () Bool)

(assert (=> bm!370745 (= call!370749 (derivationStepZipperDown!285 (ite c!905225 (regTwo!30187 (regOne!30187 (regOne!30186 r!7292))) (regOne!30186 (regOne!30187 (regOne!30186 r!7292)))) (ite c!905225 lt!2147494 (Context!8443 call!370751)) (h!67134 s!2326)))))

(declare-fun bm!370746 () Bool)

(assert (=> bm!370746 (= call!370750 call!370747)))

(declare-fun bm!370747 () Bool)

(assert (=> bm!370747 (= call!370747 call!370752)))

(declare-fun b!5238444 () Bool)

(assert (=> b!5238444 (= e!3259602 (store ((as const (Array Context!8442 Bool)) false) lt!2147494 true))))

(declare-fun b!5238445 () Bool)

(assert (=> b!5238445 (= e!3259602 e!3259597)))

(assert (=> b!5238445 (= c!905225 ((_ is Union!14837) (regOne!30187 (regOne!30186 r!7292))))))

(declare-fun b!5238446 () Bool)

(assert (=> b!5238446 (= e!3259601 e!3259599)))

(assert (=> b!5238446 (= c!905224 ((_ is Concat!23682) (regOne!30187 (regOne!30186 r!7292))))))

(declare-fun b!5238447 () Bool)

(assert (=> b!5238447 (= e!3259599 call!370750)))

(declare-fun b!5238448 () Bool)

(assert (=> b!5238448 (= e!3259598 (nullable!5006 (regOne!30186 (regOne!30187 (regOne!30186 r!7292)))))))

(assert (= (and d!1688280 c!905227) b!5238444))

(assert (= (and d!1688280 (not c!905227)) b!5238445))

(assert (= (and b!5238445 c!905225) b!5238443))

(assert (= (and b!5238445 (not c!905225)) b!5238441))

(assert (= (and b!5238441 res!2223446) b!5238448))

(assert (= (and b!5238441 c!905226) b!5238440))

(assert (= (and b!5238441 (not c!905226)) b!5238446))

(assert (= (and b!5238446 c!905224) b!5238447))

(assert (= (and b!5238446 (not c!905224)) b!5238442))

(assert (= (and b!5238442 c!905223) b!5238438))

(assert (= (and b!5238442 (not c!905223)) b!5238439))

(assert (= (or b!5238447 b!5238438) bm!370744))

(assert (= (or b!5238447 b!5238438) bm!370746))

(assert (= (or b!5238440 bm!370744) bm!370743))

(assert (= (or b!5238440 bm!370746) bm!370747))

(assert (= (or b!5238443 b!5238440) bm!370745))

(assert (= (or b!5238443 bm!370747) bm!370742))

(assert (=> b!5238444 m!6283198))

(declare-fun m!6283426 () Bool)

(assert (=> bm!370742 m!6283426))

(declare-fun m!6283428 () Bool)

(assert (=> b!5238448 m!6283428))

(declare-fun m!6283430 () Bool)

(assert (=> bm!370745 m!6283430))

(declare-fun m!6283432 () Bool)

(assert (=> bm!370743 m!6283432))

(assert (=> b!5237502 d!1688280))

(declare-fun d!1688282 () Bool)

(declare-fun e!3259605 () Bool)

(assert (=> d!1688282 e!3259605))

(declare-fun res!2223449 () Bool)

(assert (=> d!1688282 (=> (not res!2223449) (not e!3259605))))

(declare-fun lt!2147657 () List!60812)

(declare-fun noDuplicate!1208 (List!60812) Bool)

(assert (=> d!1688282 (= res!2223449 (noDuplicate!1208 lt!2147657))))

(declare-fun choose!38981 ((InoxSet Context!8442)) List!60812)

(assert (=> d!1688282 (= lt!2147657 (choose!38981 z!1189))))

(assert (=> d!1688282 (= (toList!8621 z!1189) lt!2147657)))

(declare-fun b!5238451 () Bool)

(declare-fun content!10773 (List!60812) (InoxSet Context!8442))

(assert (=> b!5238451 (= e!3259605 (= (content!10773 lt!2147657) z!1189))))

(assert (= (and d!1688282 res!2223449) b!5238451))

(declare-fun m!6283434 () Bool)

(assert (=> d!1688282 m!6283434))

(declare-fun m!6283436 () Bool)

(assert (=> d!1688282 m!6283436))

(declare-fun m!6283438 () Bool)

(assert (=> b!5238451 m!6283438))

(assert (=> b!5237523 d!1688282))

(declare-fun d!1688284 () Bool)

(declare-fun lt!2147660 () Regex!14837)

(assert (=> d!1688284 (validRegex!6573 lt!2147660)))

(assert (=> d!1688284 (= lt!2147660 (generalisedUnion!766 (unfocusZipperList!279 zl!343)))))

(assert (=> d!1688284 (= (unfocusZipper!579 zl!343) lt!2147660)))

(declare-fun bs!1215644 () Bool)

(assert (= bs!1215644 d!1688284))

(declare-fun m!6283440 () Bool)

(assert (=> bs!1215644 m!6283440))

(assert (=> bs!1215644 m!6282650))

(assert (=> bs!1215644 m!6282650))

(assert (=> bs!1215644 m!6282652))

(assert (=> b!5237501 d!1688284))

(declare-fun b!5238464 () Bool)

(declare-fun e!3259608 () Bool)

(declare-fun tp!1467150 () Bool)

(assert (=> b!5238464 (= e!3259608 tp!1467150)))

(declare-fun b!5238465 () Bool)

(declare-fun tp!1467151 () Bool)

(declare-fun tp!1467152 () Bool)

(assert (=> b!5238465 (= e!3259608 (and tp!1467151 tp!1467152))))

(assert (=> b!5237521 (= tp!1467075 e!3259608)))

(declare-fun b!5238463 () Bool)

(declare-fun tp!1467153 () Bool)

(declare-fun tp!1467154 () Bool)

(assert (=> b!5238463 (= e!3259608 (and tp!1467153 tp!1467154))))

(declare-fun b!5238462 () Bool)

(assert (=> b!5238462 (= e!3259608 tp_is_empty!38927)))

(assert (= (and b!5237521 ((_ is ElementMatch!14837) (regOne!30186 r!7292))) b!5238462))

(assert (= (and b!5237521 ((_ is Concat!23682) (regOne!30186 r!7292))) b!5238463))

(assert (= (and b!5237521 ((_ is Star!14837) (regOne!30186 r!7292))) b!5238464))

(assert (= (and b!5237521 ((_ is Union!14837) (regOne!30186 r!7292))) b!5238465))

(declare-fun b!5238468 () Bool)

(declare-fun e!3259609 () Bool)

(declare-fun tp!1467155 () Bool)

(assert (=> b!5238468 (= e!3259609 tp!1467155)))

(declare-fun b!5238469 () Bool)

(declare-fun tp!1467156 () Bool)

(declare-fun tp!1467157 () Bool)

(assert (=> b!5238469 (= e!3259609 (and tp!1467156 tp!1467157))))

(assert (=> b!5237521 (= tp!1467078 e!3259609)))

(declare-fun b!5238467 () Bool)

(declare-fun tp!1467158 () Bool)

(declare-fun tp!1467159 () Bool)

(assert (=> b!5238467 (= e!3259609 (and tp!1467158 tp!1467159))))

(declare-fun b!5238466 () Bool)

(assert (=> b!5238466 (= e!3259609 tp_is_empty!38927)))

(assert (= (and b!5237521 ((_ is ElementMatch!14837) (regTwo!30186 r!7292))) b!5238466))

(assert (= (and b!5237521 ((_ is Concat!23682) (regTwo!30186 r!7292))) b!5238467))

(assert (= (and b!5237521 ((_ is Star!14837) (regTwo!30186 r!7292))) b!5238468))

(assert (= (and b!5237521 ((_ is Union!14837) (regTwo!30186 r!7292))) b!5238469))

(declare-fun condSetEmpty!33401 () Bool)

(assert (=> setNonEmpty!33395 (= condSetEmpty!33401 (= setRest!33395 ((as const (Array Context!8442 Bool)) false)))))

(declare-fun setRes!33401 () Bool)

(assert (=> setNonEmpty!33395 (= tp!1467073 setRes!33401)))

(declare-fun setIsEmpty!33401 () Bool)

(assert (=> setIsEmpty!33401 setRes!33401))

(declare-fun setElem!33401 () Context!8442)

(declare-fun setNonEmpty!33401 () Bool)

(declare-fun tp!1467164 () Bool)

(declare-fun e!3259612 () Bool)

(assert (=> setNonEmpty!33401 (= setRes!33401 (and tp!1467164 (inv!80339 setElem!33401) e!3259612))))

(declare-fun setRest!33401 () (InoxSet Context!8442))

(assert (=> setNonEmpty!33401 (= setRest!33395 ((_ map or) (store ((as const (Array Context!8442 Bool)) false) setElem!33401 true) setRest!33401))))

(declare-fun b!5238474 () Bool)

(declare-fun tp!1467165 () Bool)

(assert (=> b!5238474 (= e!3259612 tp!1467165)))

(assert (= (and setNonEmpty!33395 condSetEmpty!33401) setIsEmpty!33401))

(assert (= (and setNonEmpty!33395 (not condSetEmpty!33401)) setNonEmpty!33401))

(assert (= setNonEmpty!33401 b!5238474))

(declare-fun m!6283442 () Bool)

(assert (=> setNonEmpty!33401 m!6283442))

(declare-fun b!5238477 () Bool)

(declare-fun e!3259613 () Bool)

(declare-fun tp!1467166 () Bool)

(assert (=> b!5238477 (= e!3259613 tp!1467166)))

(declare-fun b!5238478 () Bool)

(declare-fun tp!1467167 () Bool)

(declare-fun tp!1467168 () Bool)

(assert (=> b!5238478 (= e!3259613 (and tp!1467167 tp!1467168))))

(assert (=> b!5237499 (= tp!1467076 e!3259613)))

(declare-fun b!5238476 () Bool)

(declare-fun tp!1467169 () Bool)

(declare-fun tp!1467170 () Bool)

(assert (=> b!5238476 (= e!3259613 (and tp!1467169 tp!1467170))))

(declare-fun b!5238475 () Bool)

(assert (=> b!5238475 (= e!3259613 tp_is_empty!38927)))

(assert (= (and b!5237499 ((_ is ElementMatch!14837) (reg!15166 r!7292))) b!5238475))

(assert (= (and b!5237499 ((_ is Concat!23682) (reg!15166 r!7292))) b!5238476))

(assert (= (and b!5237499 ((_ is Star!14837) (reg!15166 r!7292))) b!5238477))

(assert (= (and b!5237499 ((_ is Union!14837) (reg!15166 r!7292))) b!5238478))

(declare-fun b!5238483 () Bool)

(declare-fun e!3259616 () Bool)

(declare-fun tp!1467175 () Bool)

(declare-fun tp!1467176 () Bool)

(assert (=> b!5238483 (= e!3259616 (and tp!1467175 tp!1467176))))

(assert (=> b!5237524 (= tp!1467074 e!3259616)))

(assert (= (and b!5237524 ((_ is Cons!60687) (exprs!4721 setElem!33395))) b!5238483))

(declare-fun b!5238486 () Bool)

(declare-fun e!3259617 () Bool)

(declare-fun tp!1467177 () Bool)

(assert (=> b!5238486 (= e!3259617 tp!1467177)))

(declare-fun b!5238487 () Bool)

(declare-fun tp!1467178 () Bool)

(declare-fun tp!1467179 () Bool)

(assert (=> b!5238487 (= e!3259617 (and tp!1467178 tp!1467179))))

(assert (=> b!5237513 (= tp!1467077 e!3259617)))

(declare-fun b!5238485 () Bool)

(declare-fun tp!1467180 () Bool)

(declare-fun tp!1467181 () Bool)

(assert (=> b!5238485 (= e!3259617 (and tp!1467180 tp!1467181))))

(declare-fun b!5238484 () Bool)

(assert (=> b!5238484 (= e!3259617 tp_is_empty!38927)))

(assert (= (and b!5237513 ((_ is ElementMatch!14837) (regOne!30187 r!7292))) b!5238484))

(assert (= (and b!5237513 ((_ is Concat!23682) (regOne!30187 r!7292))) b!5238485))

(assert (= (and b!5237513 ((_ is Star!14837) (regOne!30187 r!7292))) b!5238486))

(assert (= (and b!5237513 ((_ is Union!14837) (regOne!30187 r!7292))) b!5238487))

(declare-fun b!5238490 () Bool)

(declare-fun e!3259618 () Bool)

(declare-fun tp!1467182 () Bool)

(assert (=> b!5238490 (= e!3259618 tp!1467182)))

(declare-fun b!5238491 () Bool)

(declare-fun tp!1467183 () Bool)

(declare-fun tp!1467184 () Bool)

(assert (=> b!5238491 (= e!3259618 (and tp!1467183 tp!1467184))))

(assert (=> b!5237513 (= tp!1467081 e!3259618)))

(declare-fun b!5238489 () Bool)

(declare-fun tp!1467185 () Bool)

(declare-fun tp!1467186 () Bool)

(assert (=> b!5238489 (= e!3259618 (and tp!1467185 tp!1467186))))

(declare-fun b!5238488 () Bool)

(assert (=> b!5238488 (= e!3259618 tp_is_empty!38927)))

(assert (= (and b!5237513 ((_ is ElementMatch!14837) (regTwo!30187 r!7292))) b!5238488))

(assert (= (and b!5237513 ((_ is Concat!23682) (regTwo!30187 r!7292))) b!5238489))

(assert (= (and b!5237513 ((_ is Star!14837) (regTwo!30187 r!7292))) b!5238490))

(assert (= (and b!5237513 ((_ is Union!14837) (regTwo!30187 r!7292))) b!5238491))

(declare-fun b!5238496 () Bool)

(declare-fun e!3259621 () Bool)

(declare-fun tp!1467189 () Bool)

(assert (=> b!5238496 (= e!3259621 (and tp_is_empty!38927 tp!1467189))))

(assert (=> b!5237512 (= tp!1467072 e!3259621)))

(assert (= (and b!5237512 ((_ is Cons!60686) (t!373991 s!2326))) b!5238496))

(declare-fun b!5238504 () Bool)

(declare-fun e!3259627 () Bool)

(declare-fun tp!1467194 () Bool)

(assert (=> b!5238504 (= e!3259627 tp!1467194)))

(declare-fun tp!1467195 () Bool)

(declare-fun e!3259626 () Bool)

(declare-fun b!5238503 () Bool)

(assert (=> b!5238503 (= e!3259626 (and (inv!80339 (h!67136 (t!373993 zl!343))) e!3259627 tp!1467195))))

(assert (=> b!5237533 (= tp!1467080 e!3259626)))

(assert (= b!5238503 b!5238504))

(assert (= (and b!5237533 ((_ is Cons!60688) (t!373993 zl!343))) b!5238503))

(declare-fun m!6283444 () Bool)

(assert (=> b!5238503 m!6283444))

(declare-fun b!5238505 () Bool)

(declare-fun e!3259628 () Bool)

(declare-fun tp!1467196 () Bool)

(declare-fun tp!1467197 () Bool)

(assert (=> b!5238505 (= e!3259628 (and tp!1467196 tp!1467197))))

(assert (=> b!5237517 (= tp!1467079 e!3259628)))

(assert (= (and b!5237517 ((_ is Cons!60687) (exprs!4721 (h!67136 zl!343)))) b!5238505))

(declare-fun b_lambda!202477 () Bool)

(assert (= b_lambda!202471 (or b!5237510 b_lambda!202477)))

(declare-fun bs!1215645 () Bool)

(declare-fun d!1688286 () Bool)

(assert (= bs!1215645 (and d!1688286 b!5237510)))

(assert (=> bs!1215645 (= (dynLambda!23979 lambda!263324 lt!2147529) (derivationStepZipperUp!209 lt!2147529 (h!67134 s!2326)))))

(assert (=> bs!1215645 m!6282572))

(assert (=> d!1688182 d!1688286))

(declare-fun b_lambda!202479 () Bool)

(assert (= b_lambda!202469 (or b!5237510 b_lambda!202479)))

(declare-fun bs!1215646 () Bool)

(declare-fun d!1688288 () Bool)

(assert (= bs!1215646 (and d!1688288 b!5237510)))

(assert (=> bs!1215646 (= (dynLambda!23979 lambda!263324 lt!2147508) (derivationStepZipperUp!209 lt!2147508 (h!67134 s!2326)))))

(assert (=> bs!1215646 m!6282578))

(assert (=> d!1688180 d!1688288))

(declare-fun b_lambda!202481 () Bool)

(assert (= b_lambda!202473 (or b!5237510 b_lambda!202481)))

(declare-fun bs!1215647 () Bool)

(declare-fun d!1688290 () Bool)

(assert (= bs!1215647 (and d!1688290 b!5237510)))

(assert (=> bs!1215647 (= (dynLambda!23979 lambda!263324 (h!67136 zl!343)) (derivationStepZipperUp!209 (h!67136 zl!343) (h!67134 s!2326)))))

(assert (=> bs!1215647 m!6282658))

(assert (=> d!1688208 d!1688290))

(declare-fun b_lambda!202483 () Bool)

(assert (= b_lambda!202475 (or b!5237534 b_lambda!202483)))

(declare-fun bs!1215648 () Bool)

(declare-fun d!1688292 () Bool)

(assert (= bs!1215648 (and d!1688292 b!5237534)))

(assert (=> bs!1215648 (= (dynLambda!23980 lambda!263325 (h!67135 lt!2147502)) (validRegex!6573 (h!67135 lt!2147502)))))

(declare-fun m!6283446 () Bool)

(assert (=> bs!1215648 m!6283446))

(assert (=> b!5238380 d!1688292))

(check-sat (not b!5238469) (not d!1688268) (not bs!1215648) (not bm!370742) (not bm!370734) (not b!5238409) (not b!5238045) (not b!5238124) (not b!5238322) (not b!5238254) (not b!5238300) (not b!5238074) (not d!1688208) (not b_lambda!202477) (not bs!1215646) (not b!5238199) (not b!5238408) (not b!5238107) (not d!1688264) (not b!5238134) (not d!1688258) (not bm!370697) (not bs!1215645) (not b!5238365) (not bm!370726) (not d!1688218) (not d!1688190) (not b!5238120) (not d!1688274) (not d!1688206) (not d!1688252) (not b!5238476) (not bm!370713) (not d!1688220) (not b!5238202) (not b!5238348) (not b!5238155) (not b!5238048) (not b!5238362) (not d!1688186) (not b!5238339) (not b!5238293) (not bm!370725) (not b!5238338) (not b!5238297) (not b!5238310) (not b!5238325) (not bm!370745) (not b!5238467) (not bs!1215647) (not b!5238505) (not b!5238317) (not bm!370715) (not b!5238294) (not b!5238303) (not b!5238204) (not b!5238410) (not d!1688228) (not bm!370737) (not b!5238349) (not d!1688230) (not b!5238304) (not b!5238244) (not d!1688232) (not d!1688180) (not bm!370735) (not b!5238407) (not b!5238299) (not b!5238343) (not d!1688182) (not d!1688256) (not bm!370699) (not b!5238332) (not b!5238318) (not bm!370690) (not bm!370712) (not b!5238496) (not d!1688240) (not b!5238384) (not d!1688272) (not b!5238489) (not b!5238131) (not bm!370731) (not b!5238503) (not d!1688188) (not b!5238425) (not b!5238448) (not b!5238288) (not b!5238125) (not b!5238196) (not bm!370729) (not b!5238052) (not d!1688284) (not b!5238197) (not b!5238135) (not b_lambda!202479) (not b!5238306) (not b!5238382) (not d!1688214) (not setNonEmpty!33401) (not b!5238364) (not b!5238320) (not b!5238104) (not b!5238209) (not b!5238504) (not b!5238490) (not b!5238483) tp_is_empty!38927 (not b!5238451) (not d!1688244) (not b!5238127) (not d!1688254) (not b!5238465) (not bm!370732) (not d!1688168) (not b!5238099) (not bm!370739) (not b!5238307) (not b!5238302) (not b!5238102) (not b!5238426) (not b!5238064) (not b!5238047) (not b!5238363) (not b!5238058) (not d!1688202) (not b!5238314) (not b!5238346) (not d!1688172) (not bm!370733) (not d!1688276) (not b!5238334) (not b!5238485) (not b!5238463) (not bm!370718) (not b!5238437) (not bm!370736) (not b!5238075) (not b!5238051) (not b!5238468) (not d!1688282) (not b!5238405) (not d!1688216) (not d!1688176) (not d!1688194) (not b!5238066) (not b!5238207) (not b!5238324) (not b!5238123) (not b!5238487) (not b!5238323) (not b!5238383) (not b!5238301) (not b!5238096) (not b_lambda!202483) (not b!5238477) (not d!1688170) (not d!1688242) (not d!1688222) (not d!1688178) (not d!1688156) (not b!5238381) (not b!5238486) (not d!1688166) (not b!5238329) (not b!5238335) (not b!5238130) (not b!5238352) (not b!5238411) (not d!1688224) (not bm!370743) (not b!5238308) (not b!5238098) (not bm!370719) (not b!5238283) (not b!5238298) (not d!1688234) (not b!5238118) (not b!5238491) (not b!5238050) (not d!1688158) (not b!5238464) (not b!5238136) (not b!5238100) (not b!5238316) (not d!1688246) (not bm!370730) (not b_lambda!202481) (not bm!370720) (not b!5238291) (not b!5238068) (not b!5238106) (not d!1688236) (not b!5238424) (not bm!370689) (not b!5238312) (not b!5238105) (not d!1688266) (not b!5238053) (not b!5238478) (not d!1688260) (not b!5238284) (not d!1688262) (not d!1688192) (not b!5238313) (not b!5238474) (not b!5238375))
(check-sat)
