; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572602 () Bool)

(assert start!572602)

(declare-fun b!5471537 () Bool)

(assert (=> b!5471537 true))

(assert (=> b!5471537 true))

(declare-fun lambda!291233 () Int)

(declare-fun lambda!291232 () Int)

(assert (=> b!5471537 (not (= lambda!291233 lambda!291232))))

(assert (=> b!5471537 true))

(assert (=> b!5471537 true))

(declare-fun lambda!291234 () Int)

(assert (=> b!5471537 (not (= lambda!291234 lambda!291232))))

(assert (=> b!5471537 (not (= lambda!291234 lambda!291233))))

(assert (=> b!5471537 true))

(assert (=> b!5471537 true))

(declare-fun b!5471544 () Bool)

(assert (=> b!5471544 true))

(declare-fun b!5471517 () Bool)

(declare-fun e!3387035 () Bool)

(declare-fun e!3387039 () Bool)

(assert (=> b!5471517 (= e!3387035 e!3387039)))

(declare-fun res!2331794 () Bool)

(assert (=> b!5471517 (=> (not res!2331794) (not e!3387039))))

(declare-datatypes ((C!30948 0))(
  ( (C!30949 (val!25176 Int)) )
))
(declare-datatypes ((Regex!15339 0))(
  ( (ElementMatch!15339 (c!955901 C!30948)) (Concat!24184 (regOne!31190 Regex!15339) (regTwo!31190 Regex!15339)) (EmptyExpr!15339) (Star!15339 (reg!15668 Regex!15339)) (EmptyLang!15339) (Union!15339 (regOne!31191 Regex!15339) (regTwo!31191 Regex!15339)) )
))
(declare-fun r!7292 () Regex!15339)

(declare-fun lt!2235282 () Regex!15339)

(assert (=> b!5471517 (= res!2331794 (= r!7292 lt!2235282))))

(declare-datatypes ((List!62316 0))(
  ( (Nil!62192) (Cons!62192 (h!68640 Regex!15339) (t!375545 List!62316)) )
))
(declare-datatypes ((Context!9446 0))(
  ( (Context!9447 (exprs!5223 List!62316)) )
))
(declare-datatypes ((List!62317 0))(
  ( (Nil!62193) (Cons!62193 (h!68641 Context!9446) (t!375546 List!62317)) )
))
(declare-fun zl!343 () List!62317)

(declare-fun unfocusZipper!1081 (List!62317) Regex!15339)

(assert (=> b!5471517 (= lt!2235282 (unfocusZipper!1081 zl!343))))

(declare-fun b!5471518 () Bool)

(declare-fun e!3387042 () Bool)

(declare-fun tp!1504487 () Bool)

(assert (=> b!5471518 (= e!3387042 tp!1504487)))

(declare-fun b!5471519 () Bool)

(declare-fun res!2331784 () Bool)

(declare-fun e!3387037 () Bool)

(assert (=> b!5471519 (=> res!2331784 e!3387037)))

(declare-datatypes ((List!62318 0))(
  ( (Nil!62194) (Cons!62194 (h!68642 C!30948) (t!375547 List!62318)) )
))
(declare-fun s!2326 () List!62318)

(get-info :version)

(assert (=> b!5471519 (= res!2331784 ((_ is Nil!62194) s!2326))))

(declare-fun b!5471520 () Bool)

(declare-fun res!2331803 () Bool)

(declare-fun e!3387048 () Bool)

(assert (=> b!5471520 (=> res!2331803 e!3387048)))

(declare-fun generalisedConcat!1008 (List!62316) Regex!15339)

(assert (=> b!5471520 (= res!2331803 (not (= r!7292 (generalisedConcat!1008 (exprs!5223 (h!68641 zl!343))))))))

(declare-fun b!5471521 () Bool)

(declare-fun e!3387031 () Bool)

(declare-fun e!3387040 () Bool)

(assert (=> b!5471521 (= e!3387031 e!3387040)))

(declare-fun res!2331791 () Bool)

(assert (=> b!5471521 (=> res!2331791 e!3387040)))

(declare-fun lt!2235293 () Bool)

(assert (=> b!5471521 (= res!2331791 (not lt!2235293))))

(declare-fun b!5471522 () Bool)

(declare-fun e!3387041 () Bool)

(declare-fun e!3387033 () Bool)

(assert (=> b!5471522 (= e!3387041 e!3387033)))

(declare-fun res!2331792 () Bool)

(assert (=> b!5471522 (=> res!2331792 e!3387033)))

(declare-fun lt!2235278 () Context!9446)

(declare-fun lt!2235289 () Regex!15339)

(assert (=> b!5471522 (= res!2331792 (not (= (unfocusZipper!1081 (Cons!62193 lt!2235278 Nil!62193)) lt!2235289)))))

(assert (=> b!5471522 (= lt!2235289 (Concat!24184 (reg!15668 r!7292) r!7292))))

(declare-fun b!5471523 () Bool)

(declare-fun res!2331800 () Bool)

(assert (=> b!5471523 (=> res!2331800 e!3387048)))

(assert (=> b!5471523 (= res!2331800 (or ((_ is EmptyExpr!15339) r!7292) ((_ is EmptyLang!15339) r!7292) ((_ is ElementMatch!15339) r!7292) ((_ is Union!15339) r!7292) ((_ is Concat!24184) r!7292)))))

(declare-fun b!5471524 () Bool)

(declare-fun e!3387032 () Bool)

(assert (=> b!5471524 (= e!3387032 e!3387041)))

(declare-fun res!2331793 () Bool)

(assert (=> b!5471524 (=> res!2331793 e!3387041)))

(declare-fun lt!2235290 () Context!9446)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2235292 () (InoxSet Context!9446))

(declare-fun derivationStepZipperDown!765 (Regex!15339 Context!9446 C!30948) (InoxSet Context!9446))

(assert (=> b!5471524 (= res!2331793 (not (= lt!2235292 (derivationStepZipperDown!765 (reg!15668 r!7292) lt!2235290 (h!68642 s!2326)))))))

(declare-fun lt!2235300 () List!62316)

(assert (=> b!5471524 (= lt!2235290 (Context!9447 lt!2235300))))

(declare-fun lambda!291235 () Int)

(declare-fun lt!2235291 () (InoxSet Context!9446))

(declare-fun flatMap!1042 ((InoxSet Context!9446) Int) (InoxSet Context!9446))

(declare-fun derivationStepZipperUp!691 (Context!9446 C!30948) (InoxSet Context!9446))

(assert (=> b!5471524 (= (flatMap!1042 lt!2235291 lambda!291235) (derivationStepZipperUp!691 lt!2235278 (h!68642 s!2326)))))

(declare-datatypes ((Unit!155128 0))(
  ( (Unit!155129) )
))
(declare-fun lt!2235279 () Unit!155128)

(declare-fun lemmaFlatMapOnSingletonSet!574 ((InoxSet Context!9446) Context!9446 Int) Unit!155128)

(assert (=> b!5471524 (= lt!2235279 (lemmaFlatMapOnSingletonSet!574 lt!2235291 lt!2235278 lambda!291235))))

(declare-fun lt!2235296 () (InoxSet Context!9446))

(assert (=> b!5471524 (= lt!2235296 (derivationStepZipperUp!691 lt!2235278 (h!68642 s!2326)))))

(assert (=> b!5471524 (= lt!2235291 (store ((as const (Array Context!9446 Bool)) false) lt!2235278 true))))

(assert (=> b!5471524 (= lt!2235278 (Context!9447 (Cons!62192 (reg!15668 r!7292) lt!2235300)))))

(assert (=> b!5471524 (= lt!2235300 (Cons!62192 r!7292 Nil!62192))))

(declare-fun b!5471525 () Bool)

(declare-fun res!2331802 () Bool)

(assert (=> b!5471525 (=> res!2331802 e!3387048)))

(assert (=> b!5471525 (= res!2331802 (not ((_ is Cons!62192) (exprs!5223 (h!68641 zl!343)))))))

(declare-fun b!5471527 () Bool)

(declare-fun e!3387034 () Bool)

(assert (=> b!5471527 (= e!3387037 e!3387034)))

(declare-fun res!2331790 () Bool)

(assert (=> b!5471527 (=> res!2331790 e!3387034)))

(declare-fun lt!2235294 () (InoxSet Context!9446))

(declare-fun lt!2235275 () (InoxSet Context!9446))

(assert (=> b!5471527 (= res!2331790 (not (= lt!2235294 lt!2235275)))))

(assert (=> b!5471527 (= lt!2235275 (derivationStepZipperDown!765 r!7292 (Context!9447 Nil!62192) (h!68642 s!2326)))))

(assert (=> b!5471527 (= lt!2235294 (derivationStepZipperUp!691 (Context!9447 (Cons!62192 r!7292 Nil!62192)) (h!68642 s!2326)))))

(declare-fun z!1189 () (InoxSet Context!9446))

(declare-fun derivationStepZipper!1534 ((InoxSet Context!9446) C!30948) (InoxSet Context!9446))

(assert (=> b!5471527 (= lt!2235292 (derivationStepZipper!1534 z!1189 (h!68642 s!2326)))))

(declare-fun b!5471528 () Bool)

(declare-fun res!2331798 () Bool)

(assert (=> b!5471528 (=> (not res!2331798) (not e!3387035))))

(declare-fun toList!9123 ((InoxSet Context!9446)) List!62317)

(assert (=> b!5471528 (= res!2331798 (= (toList!9123 z!1189) zl!343))))

(declare-fun b!5471529 () Bool)

(declare-fun res!2331785 () Bool)

(declare-fun e!3387036 () Bool)

(assert (=> b!5471529 (=> res!2331785 e!3387036)))

(assert (=> b!5471529 (= res!2331785 (not (= (unfocusZipper!1081 (Cons!62193 lt!2235290 Nil!62193)) r!7292)))))

(declare-fun setRes!35917 () Bool)

(declare-fun tp!1504481 () Bool)

(declare-fun setNonEmpty!35917 () Bool)

(declare-fun e!3387038 () Bool)

(declare-fun setElem!35917 () Context!9446)

(declare-fun inv!81594 (Context!9446) Bool)

(assert (=> setNonEmpty!35917 (= setRes!35917 (and tp!1504481 (inv!81594 setElem!35917) e!3387038))))

(declare-fun setRest!35917 () (InoxSet Context!9446))

(assert (=> setNonEmpty!35917 (= z!1189 ((_ map or) (store ((as const (Array Context!9446 Bool)) false) setElem!35917 true) setRest!35917))))

(declare-fun b!5471530 () Bool)

(declare-fun lt!2235297 () Bool)

(assert (=> b!5471530 (= e!3387036 (or (not lt!2235293) lt!2235297))))

(assert (=> b!5471530 e!3387031))

(declare-fun res!2331805 () Bool)

(assert (=> b!5471530 (=> (not res!2331805) (not e!3387031))))

(declare-fun matchRSpec!2442 (Regex!15339 List!62318) Bool)

(assert (=> b!5471530 (= res!2331805 (= lt!2235293 (matchRSpec!2442 lt!2235289 s!2326)))))

(declare-fun matchR!7524 (Regex!15339 List!62318) Bool)

(assert (=> b!5471530 (= lt!2235293 (matchR!7524 lt!2235289 s!2326))))

(declare-fun lt!2235301 () Unit!155128)

(declare-fun mainMatchTheorem!2442 (Regex!15339 List!62318) Unit!155128)

(assert (=> b!5471530 (= lt!2235301 (mainMatchTheorem!2442 lt!2235289 s!2326))))

(declare-fun b!5471531 () Bool)

(declare-fun e!3387044 () Bool)

(declare-fun tp!1504488 () Bool)

(assert (=> b!5471531 (= e!3387044 tp!1504488)))

(declare-fun e!3387046 () Bool)

(declare-fun b!5471532 () Bool)

(declare-fun tp!1504485 () Bool)

(assert (=> b!5471532 (= e!3387046 (and (inv!81594 (h!68641 zl!343)) e!3387042 tp!1504485))))

(declare-fun b!5471533 () Bool)

(assert (=> b!5471533 (= e!3387039 (not e!3387048))))

(declare-fun res!2331795 () Bool)

(assert (=> b!5471533 (=> res!2331795 e!3387048)))

(assert (=> b!5471533 (= res!2331795 (not ((_ is Cons!62193) zl!343)))))

(declare-fun lt!2235281 () Bool)

(assert (=> b!5471533 (= lt!2235281 (matchRSpec!2442 r!7292 s!2326))))

(assert (=> b!5471533 (= lt!2235281 (matchR!7524 r!7292 s!2326))))

(declare-fun lt!2235286 () Unit!155128)

(assert (=> b!5471533 (= lt!2235286 (mainMatchTheorem!2442 r!7292 s!2326))))

(declare-fun b!5471534 () Bool)

(declare-fun res!2331806 () Bool)

(assert (=> b!5471534 (=> res!2331806 e!3387041)))

(assert (=> b!5471534 (= res!2331806 (or (not (= lt!2235282 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5471535 () Bool)

(declare-fun tp!1504489 () Bool)

(declare-fun tp!1504484 () Bool)

(assert (=> b!5471535 (= e!3387044 (and tp!1504489 tp!1504484))))

(declare-fun b!5471536 () Bool)

(declare-fun tp!1504480 () Bool)

(assert (=> b!5471536 (= e!3387038 tp!1504480)))

(assert (=> b!5471537 (= e!3387048 e!3387037)))

(declare-fun res!2331799 () Bool)

(assert (=> b!5471537 (=> res!2331799 e!3387037)))

(declare-fun e!3387047 () Bool)

(assert (=> b!5471537 (= res!2331799 (not (= lt!2235281 e!3387047)))))

(declare-fun res!2331786 () Bool)

(assert (=> b!5471537 (=> res!2331786 e!3387047)))

(declare-fun isEmpty!34150 (List!62318) Bool)

(assert (=> b!5471537 (= res!2331786 (isEmpty!34150 s!2326))))

(declare-fun Exists!2518 (Int) Bool)

(assert (=> b!5471537 (= (Exists!2518 lambda!291232) (Exists!2518 lambda!291234))))

(declare-fun lt!2235287 () Unit!155128)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1168 (Regex!15339 Regex!15339 List!62318) Unit!155128)

(assert (=> b!5471537 (= lt!2235287 (lemmaExistCutMatchRandMatchRSpecEquivalent!1168 (reg!15668 r!7292) r!7292 s!2326))))

(assert (=> b!5471537 (= (Exists!2518 lambda!291232) (Exists!2518 lambda!291233))))

(declare-fun lt!2235283 () Unit!155128)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!492 (Regex!15339 List!62318) Unit!155128)

(assert (=> b!5471537 (= lt!2235283 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!492 (reg!15668 r!7292) s!2326))))

(assert (=> b!5471537 (= lt!2235297 (Exists!2518 lambda!291232))))

(declare-datatypes ((tuple2!65072 0))(
  ( (tuple2!65073 (_1!35839 List!62318) (_2!35839 List!62318)) )
))
(declare-datatypes ((Option!15448 0))(
  ( (None!15447) (Some!15447 (v!51476 tuple2!65072)) )
))
(declare-fun isDefined!12151 (Option!15448) Bool)

(declare-fun findConcatSeparation!1862 (Regex!15339 Regex!15339 List!62318 List!62318 List!62318) Option!15448)

(assert (=> b!5471537 (= lt!2235297 (isDefined!12151 (findConcatSeparation!1862 (reg!15668 r!7292) r!7292 Nil!62194 s!2326 s!2326)))))

(declare-fun lt!2235284 () Unit!155128)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1626 (Regex!15339 Regex!15339 List!62318) Unit!155128)

(assert (=> b!5471537 (= lt!2235284 (lemmaFindConcatSeparationEquivalentToExists!1626 (reg!15668 r!7292) r!7292 s!2326))))

(declare-fun b!5471538 () Bool)

(declare-fun tp!1504483 () Bool)

(declare-fun tp!1504486 () Bool)

(assert (=> b!5471538 (= e!3387044 (and tp!1504483 tp!1504486))))

(declare-fun res!2331789 () Bool)

(assert (=> start!572602 (=> (not res!2331789) (not e!3387035))))

(declare-fun validRegex!7075 (Regex!15339) Bool)

(assert (=> start!572602 (= res!2331789 (validRegex!7075 r!7292))))

(assert (=> start!572602 e!3387035))

(assert (=> start!572602 e!3387044))

(declare-fun condSetEmpty!35917 () Bool)

(assert (=> start!572602 (= condSetEmpty!35917 (= z!1189 ((as const (Array Context!9446 Bool)) false)))))

(assert (=> start!572602 setRes!35917))

(assert (=> start!572602 e!3387046))

(declare-fun e!3387045 () Bool)

(assert (=> start!572602 e!3387045))

(declare-fun b!5471526 () Bool)

(declare-fun res!2331796 () Bool)

(assert (=> b!5471526 (=> res!2331796 e!3387041)))

(declare-fun matchZipper!1557 ((InoxSet Context!9446) List!62318) Bool)

(assert (=> b!5471526 (= res!2331796 (not (= (matchZipper!1557 lt!2235291 s!2326) (matchZipper!1557 (derivationStepZipper!1534 lt!2235291 (h!68642 s!2326)) (t!375547 s!2326)))))))

(declare-fun b!5471539 () Bool)

(declare-fun res!2331783 () Bool)

(assert (=> b!5471539 (=> res!2331783 e!3387048)))

(declare-fun isEmpty!34151 (List!62317) Bool)

(assert (=> b!5471539 (= res!2331783 (not (isEmpty!34151 (t!375546 zl!343))))))

(declare-fun b!5471540 () Bool)

(declare-fun e!3387043 () Bool)

(assert (=> b!5471540 (= e!3387043 (= lt!2235297 (Exists!2518 lambda!291232)))))

(declare-fun setIsEmpty!35917 () Bool)

(assert (=> setIsEmpty!35917 setRes!35917))

(declare-fun b!5471541 () Bool)

(assert (=> b!5471541 (= e!3387040 e!3387043)))

(declare-fun res!2331788 () Bool)

(assert (=> b!5471541 (=> (not res!2331788) (not e!3387043))))

(assert (=> b!5471541 (= res!2331788 (= (Exists!2518 lambda!291232) (Exists!2518 lambda!291233)))))

(declare-fun b!5471542 () Bool)

(assert (=> b!5471542 (= e!3387047 lt!2235297)))

(declare-fun b!5471543 () Bool)

(declare-fun tp_is_empty!39931 () Bool)

(declare-fun tp!1504482 () Bool)

(assert (=> b!5471543 (= e!3387045 (and tp_is_empty!39931 tp!1504482))))

(assert (=> b!5471544 (= e!3387034 e!3387032)))

(declare-fun res!2331787 () Bool)

(assert (=> b!5471544 (=> res!2331787 e!3387032)))

(assert (=> b!5471544 (= res!2331787 (not (= lt!2235292 lt!2235275)))))

(assert (=> b!5471544 (= (flatMap!1042 z!1189 lambda!291235) (derivationStepZipperUp!691 (h!68641 zl!343) (h!68642 s!2326)))))

(declare-fun lt!2235276 () Unit!155128)

(assert (=> b!5471544 (= lt!2235276 (lemmaFlatMapOnSingletonSet!574 z!1189 (h!68641 zl!343) lambda!291235))))

(declare-fun b!5471545 () Bool)

(declare-fun res!2331804 () Bool)

(assert (=> b!5471545 (=> res!2331804 e!3387036)))

(declare-fun lt!2235280 () Context!9446)

(assert (=> b!5471545 (= res!2331804 (not (= (unfocusZipper!1081 (Cons!62193 lt!2235280 Nil!62193)) (reg!15668 r!7292))))))

(declare-fun b!5471546 () Bool)

(assert (=> b!5471546 (= e!3387044 tp_is_empty!39931)))

(declare-fun b!5471547 () Bool)

(declare-fun res!2331797 () Bool)

(assert (=> b!5471547 (=> res!2331797 e!3387048)))

(declare-fun generalisedUnion!1268 (List!62316) Regex!15339)

(declare-fun unfocusZipperList!781 (List!62317) List!62316)

(assert (=> b!5471547 (= res!2331797 (not (= r!7292 (generalisedUnion!1268 (unfocusZipperList!781 zl!343)))))))

(declare-fun b!5471548 () Bool)

(assert (=> b!5471548 (= e!3387033 e!3387036)))

(declare-fun res!2331801 () Bool)

(assert (=> b!5471548 (=> res!2331801 e!3387036)))

(declare-fun lt!2235299 () (InoxSet Context!9446))

(assert (=> b!5471548 (= res!2331801 (not (= lt!2235292 (derivationStepZipper!1534 lt!2235299 (h!68642 s!2326)))))))

(assert (=> b!5471548 (= (flatMap!1042 lt!2235299 lambda!291235) (derivationStepZipperUp!691 lt!2235290 (h!68642 s!2326)))))

(declare-fun lt!2235277 () Unit!155128)

(assert (=> b!5471548 (= lt!2235277 (lemmaFlatMapOnSingletonSet!574 lt!2235299 lt!2235290 lambda!291235))))

(declare-fun lt!2235285 () (InoxSet Context!9446))

(assert (=> b!5471548 (= (flatMap!1042 lt!2235285 lambda!291235) (derivationStepZipperUp!691 lt!2235280 (h!68642 s!2326)))))

(declare-fun lt!2235295 () Unit!155128)

(assert (=> b!5471548 (= lt!2235295 (lemmaFlatMapOnSingletonSet!574 lt!2235285 lt!2235280 lambda!291235))))

(declare-fun lt!2235288 () (InoxSet Context!9446))

(assert (=> b!5471548 (= lt!2235288 (derivationStepZipperUp!691 lt!2235290 (h!68642 s!2326)))))

(declare-fun lt!2235298 () (InoxSet Context!9446))

(assert (=> b!5471548 (= lt!2235298 (derivationStepZipperUp!691 lt!2235280 (h!68642 s!2326)))))

(assert (=> b!5471548 (= lt!2235299 (store ((as const (Array Context!9446 Bool)) false) lt!2235290 true))))

(assert (=> b!5471548 (= lt!2235285 (store ((as const (Array Context!9446 Bool)) false) lt!2235280 true))))

(assert (=> b!5471548 (= lt!2235280 (Context!9447 (Cons!62192 (reg!15668 r!7292) Nil!62192)))))

(assert (= (and start!572602 res!2331789) b!5471528))

(assert (= (and b!5471528 res!2331798) b!5471517))

(assert (= (and b!5471517 res!2331794) b!5471533))

(assert (= (and b!5471533 (not res!2331795)) b!5471539))

(assert (= (and b!5471539 (not res!2331783)) b!5471520))

(assert (= (and b!5471520 (not res!2331803)) b!5471525))

(assert (= (and b!5471525 (not res!2331802)) b!5471547))

(assert (= (and b!5471547 (not res!2331797)) b!5471523))

(assert (= (and b!5471523 (not res!2331800)) b!5471537))

(assert (= (and b!5471537 (not res!2331786)) b!5471542))

(assert (= (and b!5471537 (not res!2331799)) b!5471519))

(assert (= (and b!5471519 (not res!2331784)) b!5471527))

(assert (= (and b!5471527 (not res!2331790)) b!5471544))

(assert (= (and b!5471544 (not res!2331787)) b!5471524))

(assert (= (and b!5471524 (not res!2331793)) b!5471526))

(assert (= (and b!5471526 (not res!2331796)) b!5471534))

(assert (= (and b!5471534 (not res!2331806)) b!5471522))

(assert (= (and b!5471522 (not res!2331792)) b!5471548))

(assert (= (and b!5471548 (not res!2331801)) b!5471545))

(assert (= (and b!5471545 (not res!2331804)) b!5471529))

(assert (= (and b!5471529 (not res!2331785)) b!5471530))

(assert (= (and b!5471530 res!2331805) b!5471521))

(assert (= (and b!5471521 (not res!2331791)) b!5471541))

(assert (= (and b!5471541 res!2331788) b!5471540))

(assert (= (and start!572602 ((_ is ElementMatch!15339) r!7292)) b!5471546))

(assert (= (and start!572602 ((_ is Concat!24184) r!7292)) b!5471538))

(assert (= (and start!572602 ((_ is Star!15339) r!7292)) b!5471531))

(assert (= (and start!572602 ((_ is Union!15339) r!7292)) b!5471535))

(assert (= (and start!572602 condSetEmpty!35917) setIsEmpty!35917))

(assert (= (and start!572602 (not condSetEmpty!35917)) setNonEmpty!35917))

(assert (= setNonEmpty!35917 b!5471536))

(assert (= b!5471532 b!5471518))

(assert (= (and start!572602 ((_ is Cons!62193) zl!343)) b!5471532))

(assert (= (and start!572602 ((_ is Cons!62194) s!2326)) b!5471543))

(declare-fun m!6489404 () Bool)

(assert (=> b!5471528 m!6489404))

(declare-fun m!6489406 () Bool)

(assert (=> b!5471527 m!6489406))

(declare-fun m!6489408 () Bool)

(assert (=> b!5471527 m!6489408))

(declare-fun m!6489410 () Bool)

(assert (=> b!5471527 m!6489410))

(declare-fun m!6489412 () Bool)

(assert (=> b!5471533 m!6489412))

(declare-fun m!6489414 () Bool)

(assert (=> b!5471533 m!6489414))

(declare-fun m!6489416 () Bool)

(assert (=> b!5471533 m!6489416))

(declare-fun m!6489418 () Bool)

(assert (=> b!5471522 m!6489418))

(declare-fun m!6489420 () Bool)

(assert (=> b!5471537 m!6489420))

(declare-fun m!6489422 () Bool)

(assert (=> b!5471537 m!6489422))

(declare-fun m!6489424 () Bool)

(assert (=> b!5471537 m!6489424))

(assert (=> b!5471537 m!6489420))

(declare-fun m!6489426 () Bool)

(assert (=> b!5471537 m!6489426))

(declare-fun m!6489428 () Bool)

(assert (=> b!5471537 m!6489428))

(declare-fun m!6489430 () Bool)

(assert (=> b!5471537 m!6489430))

(assert (=> b!5471537 m!6489430))

(declare-fun m!6489432 () Bool)

(assert (=> b!5471537 m!6489432))

(declare-fun m!6489434 () Bool)

(assert (=> b!5471537 m!6489434))

(declare-fun m!6489436 () Bool)

(assert (=> b!5471537 m!6489436))

(assert (=> b!5471537 m!6489420))

(assert (=> b!5471541 m!6489420))

(assert (=> b!5471541 m!6489436))

(declare-fun m!6489438 () Bool)

(assert (=> setNonEmpty!35917 m!6489438))

(declare-fun m!6489440 () Bool)

(assert (=> b!5471544 m!6489440))

(declare-fun m!6489442 () Bool)

(assert (=> b!5471544 m!6489442))

(declare-fun m!6489444 () Bool)

(assert (=> b!5471544 m!6489444))

(declare-fun m!6489446 () Bool)

(assert (=> b!5471530 m!6489446))

(declare-fun m!6489448 () Bool)

(assert (=> b!5471530 m!6489448))

(declare-fun m!6489450 () Bool)

(assert (=> b!5471530 m!6489450))

(declare-fun m!6489452 () Bool)

(assert (=> b!5471532 m!6489452))

(assert (=> b!5471540 m!6489420))

(declare-fun m!6489454 () Bool)

(assert (=> b!5471547 m!6489454))

(assert (=> b!5471547 m!6489454))

(declare-fun m!6489456 () Bool)

(assert (=> b!5471547 m!6489456))

(declare-fun m!6489458 () Bool)

(assert (=> b!5471548 m!6489458))

(declare-fun m!6489460 () Bool)

(assert (=> b!5471548 m!6489460))

(declare-fun m!6489462 () Bool)

(assert (=> b!5471548 m!6489462))

(declare-fun m!6489464 () Bool)

(assert (=> b!5471548 m!6489464))

(declare-fun m!6489466 () Bool)

(assert (=> b!5471548 m!6489466))

(declare-fun m!6489468 () Bool)

(assert (=> b!5471548 m!6489468))

(declare-fun m!6489470 () Bool)

(assert (=> b!5471548 m!6489470))

(declare-fun m!6489472 () Bool)

(assert (=> b!5471548 m!6489472))

(declare-fun m!6489474 () Bool)

(assert (=> b!5471548 m!6489474))

(declare-fun m!6489476 () Bool)

(assert (=> b!5471517 m!6489476))

(declare-fun m!6489478 () Bool)

(assert (=> b!5471526 m!6489478))

(declare-fun m!6489480 () Bool)

(assert (=> b!5471526 m!6489480))

(assert (=> b!5471526 m!6489480))

(declare-fun m!6489482 () Bool)

(assert (=> b!5471526 m!6489482))

(declare-fun m!6489484 () Bool)

(assert (=> b!5471529 m!6489484))

(declare-fun m!6489486 () Bool)

(assert (=> b!5471539 m!6489486))

(declare-fun m!6489488 () Bool)

(assert (=> b!5471524 m!6489488))

(declare-fun m!6489490 () Bool)

(assert (=> b!5471524 m!6489490))

(declare-fun m!6489492 () Bool)

(assert (=> b!5471524 m!6489492))

(declare-fun m!6489494 () Bool)

(assert (=> b!5471524 m!6489494))

(declare-fun m!6489496 () Bool)

(assert (=> b!5471524 m!6489496))

(declare-fun m!6489498 () Bool)

(assert (=> b!5471520 m!6489498))

(declare-fun m!6489500 () Bool)

(assert (=> start!572602 m!6489500))

(declare-fun m!6489502 () Bool)

(assert (=> b!5471545 m!6489502))

(check-sat (not b!5471536) (not b!5471527) (not b!5471538) (not setNonEmpty!35917) (not b!5471541) (not b!5471526) (not b!5471524) (not b!5471544) (not b!5471543) (not b!5471532) (not b!5471535) (not b!5471517) (not start!572602) (not b!5471537) (not b!5471522) (not b!5471520) (not b!5471518) (not b!5471547) (not b!5471530) (not b!5471528) (not b!5471533) (not b!5471531) (not b!5471548) (not b!5471540) tp_is_empty!39931 (not b!5471539) (not b!5471529) (not b!5471545))
(check-sat)
(get-model)

(declare-fun d!1739311 () Bool)

(assert (=> d!1739311 (= (isEmpty!34151 (t!375546 zl!343)) ((_ is Nil!62193) (t!375546 zl!343)))))

(assert (=> b!5471539 d!1739311))

(declare-fun d!1739317 () Bool)

(declare-fun lt!2235311 () Regex!15339)

(assert (=> d!1739317 (validRegex!7075 lt!2235311)))

(assert (=> d!1739317 (= lt!2235311 (generalisedUnion!1268 (unfocusZipperList!781 (Cons!62193 lt!2235290 Nil!62193))))))

(assert (=> d!1739317 (= (unfocusZipper!1081 (Cons!62193 lt!2235290 Nil!62193)) lt!2235311)))

(declare-fun bs!1265048 () Bool)

(assert (= bs!1265048 d!1739317))

(declare-fun m!6489552 () Bool)

(assert (=> bs!1265048 m!6489552))

(declare-fun m!6489554 () Bool)

(assert (=> bs!1265048 m!6489554))

(assert (=> bs!1265048 m!6489554))

(declare-fun m!6489556 () Bool)

(assert (=> bs!1265048 m!6489556))

(assert (=> b!5471529 d!1739317))

(declare-fun d!1739323 () Bool)

(declare-fun c!955942 () Bool)

(declare-fun e!3387106 () Bool)

(assert (=> d!1739323 (= c!955942 e!3387106)))

(declare-fun res!2331833 () Bool)

(assert (=> d!1739323 (=> (not res!2331833) (not e!3387106))))

(assert (=> d!1739323 (= res!2331833 ((_ is Cons!62192) (exprs!5223 lt!2235290)))))

(declare-fun e!3387108 () (InoxSet Context!9446))

(assert (=> d!1739323 (= (derivationStepZipperUp!691 lt!2235290 (h!68642 s!2326)) e!3387108)))

(declare-fun b!5471657 () Bool)

(declare-fun nullable!5478 (Regex!15339) Bool)

(assert (=> b!5471657 (= e!3387106 (nullable!5478 (h!68640 (exprs!5223 lt!2235290))))))

(declare-fun bm!403720 () Bool)

(declare-fun call!403725 () (InoxSet Context!9446))

(assert (=> bm!403720 (= call!403725 (derivationStepZipperDown!765 (h!68640 (exprs!5223 lt!2235290)) (Context!9447 (t!375545 (exprs!5223 lt!2235290))) (h!68642 s!2326)))))

(declare-fun b!5471658 () Bool)

(assert (=> b!5471658 (= e!3387108 ((_ map or) call!403725 (derivationStepZipperUp!691 (Context!9447 (t!375545 (exprs!5223 lt!2235290))) (h!68642 s!2326))))))

(declare-fun b!5471659 () Bool)

(declare-fun e!3387107 () (InoxSet Context!9446))

(assert (=> b!5471659 (= e!3387107 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5471660 () Bool)

(assert (=> b!5471660 (= e!3387108 e!3387107)))

(declare-fun c!955941 () Bool)

(assert (=> b!5471660 (= c!955941 ((_ is Cons!62192) (exprs!5223 lt!2235290)))))

(declare-fun b!5471661 () Bool)

(assert (=> b!5471661 (= e!3387107 call!403725)))

(assert (= (and d!1739323 res!2331833) b!5471657))

(assert (= (and d!1739323 c!955942) b!5471658))

(assert (= (and d!1739323 (not c!955942)) b!5471660))

(assert (= (and b!5471660 c!955941) b!5471661))

(assert (= (and b!5471660 (not c!955941)) b!5471659))

(assert (= (or b!5471658 b!5471661) bm!403720))

(declare-fun m!6489558 () Bool)

(assert (=> b!5471657 m!6489558))

(declare-fun m!6489560 () Bool)

(assert (=> bm!403720 m!6489560))

(declare-fun m!6489562 () Bool)

(assert (=> b!5471658 m!6489562))

(assert (=> b!5471548 d!1739323))

(declare-fun d!1739325 () Bool)

(declare-fun dynLambda!24425 (Int Context!9446) (InoxSet Context!9446))

(assert (=> d!1739325 (= (flatMap!1042 lt!2235285 lambda!291235) (dynLambda!24425 lambda!291235 lt!2235280))))

(declare-fun lt!2235314 () Unit!155128)

(declare-fun choose!41616 ((InoxSet Context!9446) Context!9446 Int) Unit!155128)

(assert (=> d!1739325 (= lt!2235314 (choose!41616 lt!2235285 lt!2235280 lambda!291235))))

(assert (=> d!1739325 (= lt!2235285 (store ((as const (Array Context!9446 Bool)) false) lt!2235280 true))))

(assert (=> d!1739325 (= (lemmaFlatMapOnSingletonSet!574 lt!2235285 lt!2235280 lambda!291235) lt!2235314)))

(declare-fun b_lambda!207983 () Bool)

(assert (=> (not b_lambda!207983) (not d!1739325)))

(declare-fun bs!1265052 () Bool)

(assert (= bs!1265052 d!1739325))

(assert (=> bs!1265052 m!6489474))

(declare-fun m!6489570 () Bool)

(assert (=> bs!1265052 m!6489570))

(declare-fun m!6489572 () Bool)

(assert (=> bs!1265052 m!6489572))

(assert (=> bs!1265052 m!6489470))

(assert (=> b!5471548 d!1739325))

(declare-fun d!1739329 () Bool)

(assert (=> d!1739329 (= (flatMap!1042 lt!2235299 lambda!291235) (dynLambda!24425 lambda!291235 lt!2235290))))

(declare-fun lt!2235315 () Unit!155128)

(assert (=> d!1739329 (= lt!2235315 (choose!41616 lt!2235299 lt!2235290 lambda!291235))))

(assert (=> d!1739329 (= lt!2235299 (store ((as const (Array Context!9446 Bool)) false) lt!2235290 true))))

(assert (=> d!1739329 (= (lemmaFlatMapOnSingletonSet!574 lt!2235299 lt!2235290 lambda!291235) lt!2235315)))

(declare-fun b_lambda!207985 () Bool)

(assert (=> (not b_lambda!207985) (not d!1739329)))

(declare-fun bs!1265053 () Bool)

(assert (= bs!1265053 d!1739329))

(assert (=> bs!1265053 m!6489464))

(declare-fun m!6489574 () Bool)

(assert (=> bs!1265053 m!6489574))

(declare-fun m!6489576 () Bool)

(assert (=> bs!1265053 m!6489576))

(assert (=> bs!1265053 m!6489460))

(assert (=> b!5471548 d!1739329))

(declare-fun d!1739331 () Bool)

(declare-fun choose!41617 ((InoxSet Context!9446) Int) (InoxSet Context!9446))

(assert (=> d!1739331 (= (flatMap!1042 lt!2235285 lambda!291235) (choose!41617 lt!2235285 lambda!291235))))

(declare-fun bs!1265054 () Bool)

(assert (= bs!1265054 d!1739331))

(declare-fun m!6489578 () Bool)

(assert (=> bs!1265054 m!6489578))

(assert (=> b!5471548 d!1739331))

(declare-fun d!1739333 () Bool)

(declare-fun c!955954 () Bool)

(declare-fun e!3387130 () Bool)

(assert (=> d!1739333 (= c!955954 e!3387130)))

(declare-fun res!2331853 () Bool)

(assert (=> d!1739333 (=> (not res!2331853) (not e!3387130))))

(assert (=> d!1739333 (= res!2331853 ((_ is Cons!62192) (exprs!5223 lt!2235280)))))

(declare-fun e!3387132 () (InoxSet Context!9446))

(assert (=> d!1739333 (= (derivationStepZipperUp!691 lt!2235280 (h!68642 s!2326)) e!3387132)))

(declare-fun b!5471701 () Bool)

(assert (=> b!5471701 (= e!3387130 (nullable!5478 (h!68640 (exprs!5223 lt!2235280))))))

(declare-fun bm!403725 () Bool)

(declare-fun call!403730 () (InoxSet Context!9446))

(assert (=> bm!403725 (= call!403730 (derivationStepZipperDown!765 (h!68640 (exprs!5223 lt!2235280)) (Context!9447 (t!375545 (exprs!5223 lt!2235280))) (h!68642 s!2326)))))

(declare-fun b!5471702 () Bool)

(assert (=> b!5471702 (= e!3387132 ((_ map or) call!403730 (derivationStepZipperUp!691 (Context!9447 (t!375545 (exprs!5223 lt!2235280))) (h!68642 s!2326))))))

(declare-fun b!5471703 () Bool)

(declare-fun e!3387131 () (InoxSet Context!9446))

(assert (=> b!5471703 (= e!3387131 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5471704 () Bool)

(assert (=> b!5471704 (= e!3387132 e!3387131)))

(declare-fun c!955953 () Bool)

(assert (=> b!5471704 (= c!955953 ((_ is Cons!62192) (exprs!5223 lt!2235280)))))

(declare-fun b!5471705 () Bool)

(assert (=> b!5471705 (= e!3387131 call!403730)))

(assert (= (and d!1739333 res!2331853) b!5471701))

(assert (= (and d!1739333 c!955954) b!5471702))

(assert (= (and d!1739333 (not c!955954)) b!5471704))

(assert (= (and b!5471704 c!955953) b!5471705))

(assert (= (and b!5471704 (not c!955953)) b!5471703))

(assert (= (or b!5471702 b!5471705) bm!403725))

(declare-fun m!6489580 () Bool)

(assert (=> b!5471701 m!6489580))

(declare-fun m!6489582 () Bool)

(assert (=> bm!403725 m!6489582))

(declare-fun m!6489584 () Bool)

(assert (=> b!5471702 m!6489584))

(assert (=> b!5471548 d!1739333))

(declare-fun bs!1265055 () Bool)

(declare-fun d!1739335 () Bool)

(assert (= bs!1265055 (and d!1739335 b!5471544)))

(declare-fun lambda!291251 () Int)

(assert (=> bs!1265055 (= lambda!291251 lambda!291235)))

(assert (=> d!1739335 true))

(assert (=> d!1739335 (= (derivationStepZipper!1534 lt!2235299 (h!68642 s!2326)) (flatMap!1042 lt!2235299 lambda!291251))))

(declare-fun bs!1265056 () Bool)

(assert (= bs!1265056 d!1739335))

(declare-fun m!6489600 () Bool)

(assert (=> bs!1265056 m!6489600))

(assert (=> b!5471548 d!1739335))

(declare-fun d!1739339 () Bool)

(assert (=> d!1739339 (= (flatMap!1042 lt!2235299 lambda!291235) (choose!41617 lt!2235299 lambda!291235))))

(declare-fun bs!1265057 () Bool)

(assert (= bs!1265057 d!1739339))

(declare-fun m!6489602 () Bool)

(assert (=> bs!1265057 m!6489602))

(assert (=> b!5471548 d!1739339))

(declare-fun b!5471786 () Bool)

(declare-fun e!3387184 () Regex!15339)

(assert (=> b!5471786 (= e!3387184 EmptyExpr!15339)))

(declare-fun b!5471787 () Bool)

(declare-fun e!3387181 () Regex!15339)

(assert (=> b!5471787 (= e!3387181 (h!68640 (exprs!5223 (h!68641 zl!343))))))

(declare-fun b!5471788 () Bool)

(declare-fun e!3387179 () Bool)

(declare-fun isEmpty!34153 (List!62316) Bool)

(assert (=> b!5471788 (= e!3387179 (isEmpty!34153 (t!375545 (exprs!5223 (h!68641 zl!343)))))))

(declare-fun b!5471789 () Bool)

(declare-fun e!3387180 () Bool)

(declare-fun lt!2235337 () Regex!15339)

(declare-fun isConcat!557 (Regex!15339) Bool)

(assert (=> b!5471789 (= e!3387180 (isConcat!557 lt!2235337))))

(declare-fun b!5471790 () Bool)

(declare-fun e!3387182 () Bool)

(declare-fun isEmptyExpr!1034 (Regex!15339) Bool)

(assert (=> b!5471790 (= e!3387182 (isEmptyExpr!1034 lt!2235337))))

(declare-fun b!5471791 () Bool)

(declare-fun head!11721 (List!62316) Regex!15339)

(assert (=> b!5471791 (= e!3387180 (= lt!2235337 (head!11721 (exprs!5223 (h!68641 zl!343)))))))

(declare-fun b!5471792 () Bool)

(assert (=> b!5471792 (= e!3387184 (Concat!24184 (h!68640 (exprs!5223 (h!68641 zl!343))) (generalisedConcat!1008 (t!375545 (exprs!5223 (h!68641 zl!343))))))))

(declare-fun b!5471793 () Bool)

(declare-fun e!3387183 () Bool)

(assert (=> b!5471793 (= e!3387183 e!3387182)))

(declare-fun c!955988 () Bool)

(assert (=> b!5471793 (= c!955988 (isEmpty!34153 (exprs!5223 (h!68641 zl!343))))))

(declare-fun b!5471794 () Bool)

(assert (=> b!5471794 (= e!3387182 e!3387180)))

(declare-fun c!955987 () Bool)

(declare-fun tail!10818 (List!62316) List!62316)

(assert (=> b!5471794 (= c!955987 (isEmpty!34153 (tail!10818 (exprs!5223 (h!68641 zl!343)))))))

(declare-fun b!5471795 () Bool)

(assert (=> b!5471795 (= e!3387181 e!3387184)))

(declare-fun c!955986 () Bool)

(assert (=> b!5471795 (= c!955986 ((_ is Cons!62192) (exprs!5223 (h!68641 zl!343))))))

(declare-fun d!1739341 () Bool)

(assert (=> d!1739341 e!3387183))

(declare-fun res!2331877 () Bool)

(assert (=> d!1739341 (=> (not res!2331877) (not e!3387183))))

(assert (=> d!1739341 (= res!2331877 (validRegex!7075 lt!2235337))))

(assert (=> d!1739341 (= lt!2235337 e!3387181)))

(declare-fun c!955985 () Bool)

(assert (=> d!1739341 (= c!955985 e!3387179)))

(declare-fun res!2331876 () Bool)

(assert (=> d!1739341 (=> (not res!2331876) (not e!3387179))))

(assert (=> d!1739341 (= res!2331876 ((_ is Cons!62192) (exprs!5223 (h!68641 zl!343))))))

(declare-fun lambda!291261 () Int)

(declare-fun forall!14608 (List!62316 Int) Bool)

(assert (=> d!1739341 (forall!14608 (exprs!5223 (h!68641 zl!343)) lambda!291261)))

(assert (=> d!1739341 (= (generalisedConcat!1008 (exprs!5223 (h!68641 zl!343))) lt!2235337)))

(assert (= (and d!1739341 res!2331876) b!5471788))

(assert (= (and d!1739341 c!955985) b!5471787))

(assert (= (and d!1739341 (not c!955985)) b!5471795))

(assert (= (and b!5471795 c!955986) b!5471792))

(assert (= (and b!5471795 (not c!955986)) b!5471786))

(assert (= (and d!1739341 res!2331877) b!5471793))

(assert (= (and b!5471793 c!955988) b!5471790))

(assert (= (and b!5471793 (not c!955988)) b!5471794))

(assert (= (and b!5471794 c!955987) b!5471791))

(assert (= (and b!5471794 (not c!955987)) b!5471789))

(declare-fun m!6489682 () Bool)

(assert (=> b!5471789 m!6489682))

(declare-fun m!6489684 () Bool)

(assert (=> b!5471790 m!6489684))

(declare-fun m!6489688 () Bool)

(assert (=> b!5471792 m!6489688))

(declare-fun m!6489690 () Bool)

(assert (=> b!5471793 m!6489690))

(declare-fun m!6489692 () Bool)

(assert (=> d!1739341 m!6489692))

(declare-fun m!6489694 () Bool)

(assert (=> d!1739341 m!6489694))

(declare-fun m!6489696 () Bool)

(assert (=> b!5471788 m!6489696))

(declare-fun m!6489698 () Bool)

(assert (=> b!5471794 m!6489698))

(assert (=> b!5471794 m!6489698))

(declare-fun m!6489700 () Bool)

(assert (=> b!5471794 m!6489700))

(declare-fun m!6489702 () Bool)

(assert (=> b!5471791 m!6489702))

(assert (=> b!5471520 d!1739341))

(declare-fun d!1739373 () Bool)

(declare-fun choose!41618 (Int) Bool)

(assert (=> d!1739373 (= (Exists!2518 lambda!291232) (choose!41618 lambda!291232))))

(declare-fun bs!1265075 () Bool)

(assert (= bs!1265075 d!1739373))

(declare-fun m!6489714 () Bool)

(assert (=> bs!1265075 m!6489714))

(assert (=> b!5471540 d!1739373))

(declare-fun bs!1265076 () Bool)

(declare-fun d!1739379 () Bool)

(assert (= bs!1265076 (and d!1739379 d!1739341)))

(declare-fun lambda!291264 () Int)

(assert (=> bs!1265076 (= lambda!291264 lambda!291261)))

(assert (=> d!1739379 (= (inv!81594 setElem!35917) (forall!14608 (exprs!5223 setElem!35917) lambda!291264))))

(declare-fun bs!1265080 () Bool)

(assert (= bs!1265080 d!1739379))

(declare-fun m!6489734 () Bool)

(assert (=> bs!1265080 m!6489734))

(assert (=> setNonEmpty!35917 d!1739379))

(declare-fun d!1739387 () Bool)

(declare-fun c!956014 () Bool)

(assert (=> d!1739387 (= c!956014 (isEmpty!34150 s!2326))))

(declare-fun e!3387218 () Bool)

(assert (=> d!1739387 (= (matchZipper!1557 lt!2235291 s!2326) e!3387218)))

(declare-fun b!5471854 () Bool)

(declare-fun nullableZipper!1500 ((InoxSet Context!9446)) Bool)

(assert (=> b!5471854 (= e!3387218 (nullableZipper!1500 lt!2235291))))

(declare-fun b!5471855 () Bool)

(declare-fun head!11722 (List!62318) C!30948)

(declare-fun tail!10819 (List!62318) List!62318)

(assert (=> b!5471855 (= e!3387218 (matchZipper!1557 (derivationStepZipper!1534 lt!2235291 (head!11722 s!2326)) (tail!10819 s!2326)))))

(assert (= (and d!1739387 c!956014) b!5471854))

(assert (= (and d!1739387 (not c!956014)) b!5471855))

(assert (=> d!1739387 m!6489424))

(declare-fun m!6489738 () Bool)

(assert (=> b!5471854 m!6489738))

(declare-fun m!6489740 () Bool)

(assert (=> b!5471855 m!6489740))

(assert (=> b!5471855 m!6489740))

(declare-fun m!6489742 () Bool)

(assert (=> b!5471855 m!6489742))

(declare-fun m!6489744 () Bool)

(assert (=> b!5471855 m!6489744))

(assert (=> b!5471855 m!6489742))

(assert (=> b!5471855 m!6489744))

(declare-fun m!6489746 () Bool)

(assert (=> b!5471855 m!6489746))

(assert (=> b!5471526 d!1739387))

(declare-fun d!1739389 () Bool)

(declare-fun c!956015 () Bool)

(assert (=> d!1739389 (= c!956015 (isEmpty!34150 (t!375547 s!2326)))))

(declare-fun e!3387219 () Bool)

(assert (=> d!1739389 (= (matchZipper!1557 (derivationStepZipper!1534 lt!2235291 (h!68642 s!2326)) (t!375547 s!2326)) e!3387219)))

(declare-fun b!5471856 () Bool)

(assert (=> b!5471856 (= e!3387219 (nullableZipper!1500 (derivationStepZipper!1534 lt!2235291 (h!68642 s!2326))))))

(declare-fun b!5471857 () Bool)

(assert (=> b!5471857 (= e!3387219 (matchZipper!1557 (derivationStepZipper!1534 (derivationStepZipper!1534 lt!2235291 (h!68642 s!2326)) (head!11722 (t!375547 s!2326))) (tail!10819 (t!375547 s!2326))))))

(assert (= (and d!1739389 c!956015) b!5471856))

(assert (= (and d!1739389 (not c!956015)) b!5471857))

(declare-fun m!6489768 () Bool)

(assert (=> d!1739389 m!6489768))

(assert (=> b!5471856 m!6489480))

(declare-fun m!6489770 () Bool)

(assert (=> b!5471856 m!6489770))

(declare-fun m!6489772 () Bool)

(assert (=> b!5471857 m!6489772))

(assert (=> b!5471857 m!6489480))

(assert (=> b!5471857 m!6489772))

(declare-fun m!6489774 () Bool)

(assert (=> b!5471857 m!6489774))

(declare-fun m!6489776 () Bool)

(assert (=> b!5471857 m!6489776))

(assert (=> b!5471857 m!6489774))

(assert (=> b!5471857 m!6489776))

(declare-fun m!6489778 () Bool)

(assert (=> b!5471857 m!6489778))

(assert (=> b!5471526 d!1739389))

(declare-fun bs!1265086 () Bool)

(declare-fun d!1739393 () Bool)

(assert (= bs!1265086 (and d!1739393 b!5471544)))

(declare-fun lambda!291269 () Int)

(assert (=> bs!1265086 (= lambda!291269 lambda!291235)))

(declare-fun bs!1265087 () Bool)

(assert (= bs!1265087 (and d!1739393 d!1739335)))

(assert (=> bs!1265087 (= lambda!291269 lambda!291251)))

(assert (=> d!1739393 true))

(assert (=> d!1739393 (= (derivationStepZipper!1534 lt!2235291 (h!68642 s!2326)) (flatMap!1042 lt!2235291 lambda!291269))))

(declare-fun bs!1265088 () Bool)

(assert (= bs!1265088 d!1739393))

(declare-fun m!6489780 () Bool)

(assert (=> bs!1265088 m!6489780))

(assert (=> b!5471526 d!1739393))

(declare-fun d!1739395 () Bool)

(declare-fun lt!2235342 () Regex!15339)

(assert (=> d!1739395 (validRegex!7075 lt!2235342)))

(assert (=> d!1739395 (= lt!2235342 (generalisedUnion!1268 (unfocusZipperList!781 (Cons!62193 lt!2235280 Nil!62193))))))

(assert (=> d!1739395 (= (unfocusZipper!1081 (Cons!62193 lt!2235280 Nil!62193)) lt!2235342)))

(declare-fun bs!1265089 () Bool)

(assert (= bs!1265089 d!1739395))

(declare-fun m!6489782 () Bool)

(assert (=> bs!1265089 m!6489782))

(declare-fun m!6489784 () Bool)

(assert (=> bs!1265089 m!6489784))

(assert (=> bs!1265089 m!6489784))

(declare-fun m!6489786 () Bool)

(assert (=> bs!1265089 m!6489786))

(assert (=> b!5471545 d!1739395))

(declare-fun d!1739397 () Bool)

(declare-fun e!3387250 () Bool)

(assert (=> d!1739397 e!3387250))

(declare-fun res!2331906 () Bool)

(assert (=> d!1739397 (=> (not res!2331906) (not e!3387250))))

(declare-fun lt!2235345 () List!62317)

(declare-fun noDuplicate!1452 (List!62317) Bool)

(assert (=> d!1739397 (= res!2331906 (noDuplicate!1452 lt!2235345))))

(declare-fun choose!41619 ((InoxSet Context!9446)) List!62317)

(assert (=> d!1739397 (= lt!2235345 (choose!41619 z!1189))))

(assert (=> d!1739397 (= (toList!9123 z!1189) lt!2235345)))

(declare-fun b!5471898 () Bool)

(declare-fun content!11195 (List!62317) (InoxSet Context!9446))

(assert (=> b!5471898 (= e!3387250 (= (content!11195 lt!2235345) z!1189))))

(assert (= (and d!1739397 res!2331906) b!5471898))

(declare-fun m!6489794 () Bool)

(assert (=> d!1739397 m!6489794))

(declare-fun m!6489796 () Bool)

(assert (=> d!1739397 m!6489796))

(declare-fun m!6489798 () Bool)

(assert (=> b!5471898 m!6489798))

(assert (=> b!5471528 d!1739397))

(declare-fun bs!1265106 () Bool)

(declare-fun d!1739401 () Bool)

(assert (= bs!1265106 (and d!1739401 d!1739341)))

(declare-fun lambda!291280 () Int)

(assert (=> bs!1265106 (= lambda!291280 lambda!291261)))

(declare-fun bs!1265107 () Bool)

(assert (= bs!1265107 (and d!1739401 d!1739379)))

(assert (=> bs!1265107 (= lambda!291280 lambda!291264)))

(declare-fun b!5471943 () Bool)

(declare-fun e!3387279 () Bool)

(assert (=> b!5471943 (= e!3387279 (isEmpty!34153 (t!375545 (unfocusZipperList!781 zl!343))))))

(declare-fun b!5471944 () Bool)

(declare-fun e!3387274 () Bool)

(declare-fun lt!2235353 () Regex!15339)

(declare-fun isUnion!475 (Regex!15339) Bool)

(assert (=> b!5471944 (= e!3387274 (isUnion!475 lt!2235353))))

(declare-fun b!5471945 () Bool)

(declare-fun e!3387278 () Regex!15339)

(assert (=> b!5471945 (= e!3387278 (Union!15339 (h!68640 (unfocusZipperList!781 zl!343)) (generalisedUnion!1268 (t!375545 (unfocusZipperList!781 zl!343)))))))

(declare-fun b!5471946 () Bool)

(assert (=> b!5471946 (= e!3387278 EmptyLang!15339)))

(declare-fun b!5471947 () Bool)

(assert (=> b!5471947 (= e!3387274 (= lt!2235353 (head!11721 (unfocusZipperList!781 zl!343))))))

(declare-fun b!5471948 () Bool)

(declare-fun e!3387275 () Bool)

(assert (=> b!5471948 (= e!3387275 e!3387274)))

(declare-fun c!956038 () Bool)

(assert (=> b!5471948 (= c!956038 (isEmpty!34153 (tail!10818 (unfocusZipperList!781 zl!343))))))

(declare-fun e!3387277 () Bool)

(assert (=> d!1739401 e!3387277))

(declare-fun res!2331929 () Bool)

(assert (=> d!1739401 (=> (not res!2331929) (not e!3387277))))

(assert (=> d!1739401 (= res!2331929 (validRegex!7075 lt!2235353))))

(declare-fun e!3387276 () Regex!15339)

(assert (=> d!1739401 (= lt!2235353 e!3387276)))

(declare-fun c!956040 () Bool)

(assert (=> d!1739401 (= c!956040 e!3387279)))

(declare-fun res!2331930 () Bool)

(assert (=> d!1739401 (=> (not res!2331930) (not e!3387279))))

(assert (=> d!1739401 (= res!2331930 ((_ is Cons!62192) (unfocusZipperList!781 zl!343)))))

(assert (=> d!1739401 (forall!14608 (unfocusZipperList!781 zl!343) lambda!291280)))

(assert (=> d!1739401 (= (generalisedUnion!1268 (unfocusZipperList!781 zl!343)) lt!2235353)))

(declare-fun b!5471949 () Bool)

(assert (=> b!5471949 (= e!3387277 e!3387275)))

(declare-fun c!956039 () Bool)

(assert (=> b!5471949 (= c!956039 (isEmpty!34153 (unfocusZipperList!781 zl!343)))))

(declare-fun b!5471950 () Bool)

(declare-fun isEmptyLang!1043 (Regex!15339) Bool)

(assert (=> b!5471950 (= e!3387275 (isEmptyLang!1043 lt!2235353))))

(declare-fun b!5471951 () Bool)

(assert (=> b!5471951 (= e!3387276 e!3387278)))

(declare-fun c!956037 () Bool)

(assert (=> b!5471951 (= c!956037 ((_ is Cons!62192) (unfocusZipperList!781 zl!343)))))

(declare-fun b!5471952 () Bool)

(assert (=> b!5471952 (= e!3387276 (h!68640 (unfocusZipperList!781 zl!343)))))

(assert (= (and d!1739401 res!2331930) b!5471943))

(assert (= (and d!1739401 c!956040) b!5471952))

(assert (= (and d!1739401 (not c!956040)) b!5471951))

(assert (= (and b!5471951 c!956037) b!5471945))

(assert (= (and b!5471951 (not c!956037)) b!5471946))

(assert (= (and d!1739401 res!2331929) b!5471949))

(assert (= (and b!5471949 c!956039) b!5471950))

(assert (= (and b!5471949 (not c!956039)) b!5471948))

(assert (= (and b!5471948 c!956038) b!5471947))

(assert (= (and b!5471948 (not c!956038)) b!5471944))

(declare-fun m!6489826 () Bool)

(assert (=> b!5471944 m!6489826))

(assert (=> b!5471947 m!6489454))

(declare-fun m!6489828 () Bool)

(assert (=> b!5471947 m!6489828))

(declare-fun m!6489830 () Bool)

(assert (=> b!5471943 m!6489830))

(declare-fun m!6489832 () Bool)

(assert (=> b!5471950 m!6489832))

(declare-fun m!6489834 () Bool)

(assert (=> b!5471945 m!6489834))

(assert (=> b!5471949 m!6489454))

(declare-fun m!6489836 () Bool)

(assert (=> b!5471949 m!6489836))

(declare-fun m!6489838 () Bool)

(assert (=> d!1739401 m!6489838))

(assert (=> d!1739401 m!6489454))

(declare-fun m!6489840 () Bool)

(assert (=> d!1739401 m!6489840))

(assert (=> b!5471948 m!6489454))

(declare-fun m!6489842 () Bool)

(assert (=> b!5471948 m!6489842))

(assert (=> b!5471948 m!6489842))

(declare-fun m!6489844 () Bool)

(assert (=> b!5471948 m!6489844))

(assert (=> b!5471547 d!1739401))

(declare-fun bs!1265114 () Bool)

(declare-fun d!1739417 () Bool)

(assert (= bs!1265114 (and d!1739417 d!1739341)))

(declare-fun lambda!291289 () Int)

(assert (=> bs!1265114 (= lambda!291289 lambda!291261)))

(declare-fun bs!1265116 () Bool)

(assert (= bs!1265116 (and d!1739417 d!1739379)))

(assert (=> bs!1265116 (= lambda!291289 lambda!291264)))

(declare-fun bs!1265117 () Bool)

(assert (= bs!1265117 (and d!1739417 d!1739401)))

(assert (=> bs!1265117 (= lambda!291289 lambda!291280)))

(declare-fun lt!2235359 () List!62316)

(assert (=> d!1739417 (forall!14608 lt!2235359 lambda!291289)))

(declare-fun e!3387286 () List!62316)

(assert (=> d!1739417 (= lt!2235359 e!3387286)))

(declare-fun c!956043 () Bool)

(assert (=> d!1739417 (= c!956043 ((_ is Cons!62193) zl!343))))

(assert (=> d!1739417 (= (unfocusZipperList!781 zl!343) lt!2235359)))

(declare-fun b!5471965 () Bool)

(assert (=> b!5471965 (= e!3387286 (Cons!62192 (generalisedConcat!1008 (exprs!5223 (h!68641 zl!343))) (unfocusZipperList!781 (t!375546 zl!343))))))

(declare-fun b!5471966 () Bool)

(assert (=> b!5471966 (= e!3387286 Nil!62192)))

(assert (= (and d!1739417 c!956043) b!5471965))

(assert (= (and d!1739417 (not c!956043)) b!5471966))

(declare-fun m!6489846 () Bool)

(assert (=> d!1739417 m!6489846))

(assert (=> b!5471965 m!6489498))

(declare-fun m!6489848 () Bool)

(assert (=> b!5471965 m!6489848))

(assert (=> b!5471547 d!1739417))

(declare-fun d!1739419 () Bool)

(declare-fun lt!2235360 () Regex!15339)

(assert (=> d!1739419 (validRegex!7075 lt!2235360)))

(assert (=> d!1739419 (= lt!2235360 (generalisedUnion!1268 (unfocusZipperList!781 zl!343)))))

(assert (=> d!1739419 (= (unfocusZipper!1081 zl!343) lt!2235360)))

(declare-fun bs!1265118 () Bool)

(assert (= bs!1265118 d!1739419))

(declare-fun m!6489856 () Bool)

(assert (=> bs!1265118 m!6489856))

(assert (=> bs!1265118 m!6489454))

(assert (=> bs!1265118 m!6489454))

(assert (=> bs!1265118 m!6489456))

(assert (=> b!5471517 d!1739419))

(declare-fun d!1739423 () Bool)

(declare-fun isEmpty!34154 (Option!15448) Bool)

(assert (=> d!1739423 (= (isDefined!12151 (findConcatSeparation!1862 (reg!15668 r!7292) r!7292 Nil!62194 s!2326 s!2326)) (not (isEmpty!34154 (findConcatSeparation!1862 (reg!15668 r!7292) r!7292 Nil!62194 s!2326 s!2326))))))

(declare-fun bs!1265119 () Bool)

(assert (= bs!1265119 d!1739423))

(assert (=> bs!1265119 m!6489430))

(declare-fun m!6489858 () Bool)

(assert (=> bs!1265119 m!6489858))

(assert (=> b!5471537 d!1739423))

(declare-fun bs!1265120 () Bool)

(declare-fun d!1739425 () Bool)

(assert (= bs!1265120 (and d!1739425 b!5471537)))

(declare-fun lambda!291296 () Int)

(assert (=> bs!1265120 (= lambda!291296 lambda!291232)))

(assert (=> bs!1265120 (not (= lambda!291296 lambda!291233))))

(assert (=> bs!1265120 (not (= lambda!291296 lambda!291234))))

(assert (=> d!1739425 true))

(assert (=> d!1739425 true))

(assert (=> d!1739425 true))

(declare-fun lambda!291297 () Int)

(assert (=> bs!1265120 (not (= lambda!291297 lambda!291232))))

(assert (=> bs!1265120 (not (= lambda!291297 lambda!291233))))

(assert (=> bs!1265120 (= lambda!291297 lambda!291234)))

(declare-fun bs!1265125 () Bool)

(assert (= bs!1265125 d!1739425))

(assert (=> bs!1265125 (not (= lambda!291297 lambda!291296))))

(assert (=> d!1739425 true))

(assert (=> d!1739425 true))

(assert (=> d!1739425 true))

(assert (=> d!1739425 (= (Exists!2518 lambda!291296) (Exists!2518 lambda!291297))))

(declare-fun lt!2235374 () Unit!155128)

(declare-fun choose!41620 (Regex!15339 Regex!15339 List!62318) Unit!155128)

(assert (=> d!1739425 (= lt!2235374 (choose!41620 (reg!15668 r!7292) r!7292 s!2326))))

(assert (=> d!1739425 (validRegex!7075 (reg!15668 r!7292))))

(assert (=> d!1739425 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1168 (reg!15668 r!7292) r!7292 s!2326) lt!2235374)))

(declare-fun m!6489880 () Bool)

(assert (=> bs!1265125 m!6489880))

(declare-fun m!6489882 () Bool)

(assert (=> bs!1265125 m!6489882))

(declare-fun m!6489884 () Bool)

(assert (=> bs!1265125 m!6489884))

(declare-fun m!6489886 () Bool)

(assert (=> bs!1265125 m!6489886))

(assert (=> b!5471537 d!1739425))

(declare-fun bs!1265134 () Bool)

(declare-fun d!1739429 () Bool)

(assert (= bs!1265134 (and d!1739429 b!5471537)))

(declare-fun lambda!291303 () Int)

(assert (=> bs!1265134 (not (= lambda!291303 lambda!291233))))

(declare-fun bs!1265135 () Bool)

(assert (= bs!1265135 (and d!1739429 d!1739425)))

(assert (=> bs!1265135 (not (= lambda!291303 lambda!291297))))

(assert (=> bs!1265135 (= (= (Star!15339 (reg!15668 r!7292)) r!7292) (= lambda!291303 lambda!291296))))

(assert (=> bs!1265134 (not (= lambda!291303 lambda!291234))))

(assert (=> bs!1265134 (= (= (Star!15339 (reg!15668 r!7292)) r!7292) (= lambda!291303 lambda!291232))))

(assert (=> d!1739429 true))

(assert (=> d!1739429 true))

(declare-fun lambda!291304 () Int)

(assert (=> bs!1265134 (= (= (Star!15339 (reg!15668 r!7292)) r!7292) (= lambda!291304 lambda!291233))))

(assert (=> bs!1265135 (not (= lambda!291304 lambda!291297))))

(assert (=> bs!1265135 (not (= lambda!291304 lambda!291296))))

(assert (=> bs!1265134 (not (= lambda!291304 lambda!291234))))

(assert (=> bs!1265134 (not (= lambda!291304 lambda!291232))))

(declare-fun bs!1265136 () Bool)

(assert (= bs!1265136 d!1739429))

(assert (=> bs!1265136 (not (= lambda!291304 lambda!291303))))

(assert (=> d!1739429 true))

(assert (=> d!1739429 true))

(assert (=> d!1739429 (= (Exists!2518 lambda!291303) (Exists!2518 lambda!291304))))

(declare-fun lt!2235378 () Unit!155128)

(declare-fun choose!41621 (Regex!15339 List!62318) Unit!155128)

(assert (=> d!1739429 (= lt!2235378 (choose!41621 (reg!15668 r!7292) s!2326))))

(assert (=> d!1739429 (validRegex!7075 (reg!15668 r!7292))))

(assert (=> d!1739429 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!492 (reg!15668 r!7292) s!2326) lt!2235378)))

(declare-fun m!6489896 () Bool)

(assert (=> bs!1265136 m!6489896))

(declare-fun m!6489898 () Bool)

(assert (=> bs!1265136 m!6489898))

(declare-fun m!6489900 () Bool)

(assert (=> bs!1265136 m!6489900))

(assert (=> bs!1265136 m!6489886))

(assert (=> b!5471537 d!1739429))

(declare-fun d!1739441 () Bool)

(assert (=> d!1739441 (= (Exists!2518 lambda!291234) (choose!41618 lambda!291234))))

(declare-fun bs!1265137 () Bool)

(assert (= bs!1265137 d!1739441))

(declare-fun m!6489902 () Bool)

(assert (=> bs!1265137 m!6489902))

(assert (=> b!5471537 d!1739441))

(declare-fun d!1739443 () Bool)

(assert (=> d!1739443 (= (Exists!2518 lambda!291233) (choose!41618 lambda!291233))))

(declare-fun bs!1265138 () Bool)

(assert (= bs!1265138 d!1739443))

(declare-fun m!6489904 () Bool)

(assert (=> bs!1265138 m!6489904))

(assert (=> b!5471537 d!1739443))

(assert (=> b!5471537 d!1739373))

(declare-fun d!1739445 () Bool)

(assert (=> d!1739445 (= (isEmpty!34150 s!2326) ((_ is Nil!62194) s!2326))))

(assert (=> b!5471537 d!1739445))

(declare-fun b!5472088 () Bool)

(declare-fun e!3387346 () Bool)

(declare-fun lt!2235385 () Option!15448)

(assert (=> b!5472088 (= e!3387346 (not (isDefined!12151 lt!2235385)))))

(declare-fun b!5472089 () Bool)

(declare-fun e!3387345 () Option!15448)

(declare-fun e!3387349 () Option!15448)

(assert (=> b!5472089 (= e!3387345 e!3387349)))

(declare-fun c!956055 () Bool)

(assert (=> b!5472089 (= c!956055 ((_ is Nil!62194) s!2326))))

(declare-fun b!5472090 () Bool)

(declare-fun e!3387347 () Bool)

(assert (=> b!5472090 (= e!3387347 (matchR!7524 r!7292 s!2326))))

(declare-fun d!1739447 () Bool)

(assert (=> d!1739447 e!3387346))

(declare-fun res!2331990 () Bool)

(assert (=> d!1739447 (=> res!2331990 e!3387346)))

(declare-fun e!3387348 () Bool)

(assert (=> d!1739447 (= res!2331990 e!3387348)))

(declare-fun res!2331986 () Bool)

(assert (=> d!1739447 (=> (not res!2331986) (not e!3387348))))

(assert (=> d!1739447 (= res!2331986 (isDefined!12151 lt!2235385))))

(assert (=> d!1739447 (= lt!2235385 e!3387345)))

(declare-fun c!956054 () Bool)

(assert (=> d!1739447 (= c!956054 e!3387347)))

(declare-fun res!2331989 () Bool)

(assert (=> d!1739447 (=> (not res!2331989) (not e!3387347))))

(assert (=> d!1739447 (= res!2331989 (matchR!7524 (reg!15668 r!7292) Nil!62194))))

(assert (=> d!1739447 (validRegex!7075 (reg!15668 r!7292))))

(assert (=> d!1739447 (= (findConcatSeparation!1862 (reg!15668 r!7292) r!7292 Nil!62194 s!2326 s!2326) lt!2235385)))

(declare-fun b!5472091 () Bool)

(declare-fun lt!2235387 () Unit!155128)

(declare-fun lt!2235386 () Unit!155128)

(assert (=> b!5472091 (= lt!2235387 lt!2235386)))

(declare-fun ++!13675 (List!62318 List!62318) List!62318)

(assert (=> b!5472091 (= (++!13675 (++!13675 Nil!62194 (Cons!62194 (h!68642 s!2326) Nil!62194)) (t!375547 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1896 (List!62318 C!30948 List!62318 List!62318) Unit!155128)

(assert (=> b!5472091 (= lt!2235386 (lemmaMoveElementToOtherListKeepsConcatEq!1896 Nil!62194 (h!68642 s!2326) (t!375547 s!2326) s!2326))))

(assert (=> b!5472091 (= e!3387349 (findConcatSeparation!1862 (reg!15668 r!7292) r!7292 (++!13675 Nil!62194 (Cons!62194 (h!68642 s!2326) Nil!62194)) (t!375547 s!2326) s!2326))))

(declare-fun b!5472092 () Bool)

(declare-fun res!2331988 () Bool)

(assert (=> b!5472092 (=> (not res!2331988) (not e!3387348))))

(declare-fun get!21438 (Option!15448) tuple2!65072)

(assert (=> b!5472092 (= res!2331988 (matchR!7524 (reg!15668 r!7292) (_1!35839 (get!21438 lt!2235385))))))

(declare-fun b!5472093 () Bool)

(assert (=> b!5472093 (= e!3387349 None!15447)))

(declare-fun b!5472094 () Bool)

(declare-fun res!2331987 () Bool)

(assert (=> b!5472094 (=> (not res!2331987) (not e!3387348))))

(assert (=> b!5472094 (= res!2331987 (matchR!7524 r!7292 (_2!35839 (get!21438 lt!2235385))))))

(declare-fun b!5472095 () Bool)

(assert (=> b!5472095 (= e!3387348 (= (++!13675 (_1!35839 (get!21438 lt!2235385)) (_2!35839 (get!21438 lt!2235385))) s!2326))))

(declare-fun b!5472096 () Bool)

(assert (=> b!5472096 (= e!3387345 (Some!15447 (tuple2!65073 Nil!62194 s!2326)))))

(assert (= (and d!1739447 res!2331989) b!5472090))

(assert (= (and d!1739447 c!956054) b!5472096))

(assert (= (and d!1739447 (not c!956054)) b!5472089))

(assert (= (and b!5472089 c!956055) b!5472093))

(assert (= (and b!5472089 (not c!956055)) b!5472091))

(assert (= (and d!1739447 res!2331986) b!5472092))

(assert (= (and b!5472092 res!2331988) b!5472094))

(assert (= (and b!5472094 res!2331987) b!5472095))

(assert (= (and d!1739447 (not res!2331990)) b!5472088))

(assert (=> b!5472090 m!6489414))

(declare-fun m!6489906 () Bool)

(assert (=> b!5472088 m!6489906))

(assert (=> d!1739447 m!6489906))

(declare-fun m!6489908 () Bool)

(assert (=> d!1739447 m!6489908))

(assert (=> d!1739447 m!6489886))

(declare-fun m!6489910 () Bool)

(assert (=> b!5472092 m!6489910))

(declare-fun m!6489912 () Bool)

(assert (=> b!5472092 m!6489912))

(declare-fun m!6489914 () Bool)

(assert (=> b!5472091 m!6489914))

(assert (=> b!5472091 m!6489914))

(declare-fun m!6489916 () Bool)

(assert (=> b!5472091 m!6489916))

(declare-fun m!6489918 () Bool)

(assert (=> b!5472091 m!6489918))

(assert (=> b!5472091 m!6489914))

(declare-fun m!6489920 () Bool)

(assert (=> b!5472091 m!6489920))

(assert (=> b!5472094 m!6489910))

(declare-fun m!6489922 () Bool)

(assert (=> b!5472094 m!6489922))

(assert (=> b!5472095 m!6489910))

(declare-fun m!6489924 () Bool)

(assert (=> b!5472095 m!6489924))

(assert (=> b!5471537 d!1739447))

(declare-fun bs!1265139 () Bool)

(declare-fun d!1739449 () Bool)

(assert (= bs!1265139 (and d!1739449 b!5471537)))

(declare-fun lambda!291307 () Int)

(assert (=> bs!1265139 (not (= lambda!291307 lambda!291233))))

(declare-fun bs!1265140 () Bool)

(assert (= bs!1265140 (and d!1739449 d!1739425)))

(assert (=> bs!1265140 (not (= lambda!291307 lambda!291297))))

(assert (=> bs!1265140 (= lambda!291307 lambda!291296)))

(assert (=> bs!1265139 (not (= lambda!291307 lambda!291234))))

(declare-fun bs!1265141 () Bool)

(assert (= bs!1265141 (and d!1739449 d!1739429)))

(assert (=> bs!1265141 (not (= lambda!291307 lambda!291304))))

(assert (=> bs!1265139 (= lambda!291307 lambda!291232)))

(assert (=> bs!1265141 (= (= r!7292 (Star!15339 (reg!15668 r!7292))) (= lambda!291307 lambda!291303))))

(assert (=> d!1739449 true))

(assert (=> d!1739449 true))

(assert (=> d!1739449 true))

(assert (=> d!1739449 (= (isDefined!12151 (findConcatSeparation!1862 (reg!15668 r!7292) r!7292 Nil!62194 s!2326 s!2326)) (Exists!2518 lambda!291307))))

(declare-fun lt!2235390 () Unit!155128)

(declare-fun choose!41624 (Regex!15339 Regex!15339 List!62318) Unit!155128)

(assert (=> d!1739449 (= lt!2235390 (choose!41624 (reg!15668 r!7292) r!7292 s!2326))))

(assert (=> d!1739449 (validRegex!7075 (reg!15668 r!7292))))

(assert (=> d!1739449 (= (lemmaFindConcatSeparationEquivalentToExists!1626 (reg!15668 r!7292) r!7292 s!2326) lt!2235390)))

(declare-fun bs!1265142 () Bool)

(assert (= bs!1265142 d!1739449))

(assert (=> bs!1265142 m!6489430))

(assert (=> bs!1265142 m!6489886))

(declare-fun m!6489926 () Bool)

(assert (=> bs!1265142 m!6489926))

(declare-fun m!6489928 () Bool)

(assert (=> bs!1265142 m!6489928))

(assert (=> bs!1265142 m!6489430))

(assert (=> bs!1265142 m!6489432))

(assert (=> b!5471537 d!1739449))

(declare-fun b!5472123 () Bool)

(declare-fun e!3387364 () (InoxSet Context!9446))

(assert (=> b!5472123 (= e!3387364 (store ((as const (Array Context!9446 Bool)) false) (Context!9447 Nil!62192) true))))

(declare-fun c!956068 () Bool)

(declare-fun call!403768 () List!62316)

(declare-fun bm!403759 () Bool)

(declare-fun c!956066 () Bool)

(declare-fun $colon$colon!1548 (List!62316 Regex!15339) List!62316)

(assert (=> bm!403759 (= call!403768 ($colon$colon!1548 (exprs!5223 (Context!9447 Nil!62192)) (ite (or c!956066 c!956068) (regTwo!31190 r!7292) r!7292)))))

(declare-fun b!5472124 () Bool)

(declare-fun e!3387365 () (InoxSet Context!9446))

(declare-fun call!403765 () (InoxSet Context!9446))

(declare-fun call!403769 () (InoxSet Context!9446))

(assert (=> b!5472124 (= e!3387365 ((_ map or) call!403765 call!403769))))

(declare-fun bm!403760 () Bool)

(declare-fun c!956067 () Bool)

(assert (=> bm!403760 (= call!403765 (derivationStepZipperDown!765 (ite c!956067 (regOne!31191 r!7292) (regOne!31190 r!7292)) (ite c!956067 (Context!9447 Nil!62192) (Context!9447 call!403768)) (h!68642 s!2326)))))

(declare-fun call!403766 () List!62316)

(declare-fun call!403767 () (InoxSet Context!9446))

(declare-fun bm!403761 () Bool)

(assert (=> bm!403761 (= call!403767 (derivationStepZipperDown!765 (ite c!956067 (regTwo!31191 r!7292) (ite c!956066 (regTwo!31190 r!7292) (ite c!956068 (regOne!31190 r!7292) (reg!15668 r!7292)))) (ite (or c!956067 c!956066) (Context!9447 Nil!62192) (Context!9447 call!403766)) (h!68642 s!2326)))))

(declare-fun bm!403762 () Bool)

(assert (=> bm!403762 (= call!403769 call!403767)))

(declare-fun b!5472125 () Bool)

(declare-fun e!3387369 () Bool)

(assert (=> b!5472125 (= c!956066 e!3387369)))

(declare-fun res!2331997 () Bool)

(assert (=> b!5472125 (=> (not res!2331997) (not e!3387369))))

(assert (=> b!5472125 (= res!2331997 ((_ is Concat!24184) r!7292))))

(declare-fun e!3387366 () (InoxSet Context!9446))

(assert (=> b!5472125 (= e!3387366 e!3387365)))

(declare-fun d!1739451 () Bool)

(declare-fun c!956069 () Bool)

(assert (=> d!1739451 (= c!956069 (and ((_ is ElementMatch!15339) r!7292) (= (c!955901 r!7292) (h!68642 s!2326))))))

(assert (=> d!1739451 (= (derivationStepZipperDown!765 r!7292 (Context!9447 Nil!62192) (h!68642 s!2326)) e!3387364)))

(declare-fun b!5472126 () Bool)

(declare-fun e!3387368 () (InoxSet Context!9446))

(assert (=> b!5472126 (= e!3387368 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5472127 () Bool)

(declare-fun c!956070 () Bool)

(assert (=> b!5472127 (= c!956070 ((_ is Star!15339) r!7292))))

(declare-fun e!3387367 () (InoxSet Context!9446))

(assert (=> b!5472127 (= e!3387367 e!3387368)))

(declare-fun b!5472128 () Bool)

(declare-fun call!403764 () (InoxSet Context!9446))

(assert (=> b!5472128 (= e!3387368 call!403764)))

(declare-fun b!5472129 () Bool)

(assert (=> b!5472129 (= e!3387366 ((_ map or) call!403765 call!403767))))

(declare-fun b!5472130 () Bool)

(assert (=> b!5472130 (= e!3387369 (nullable!5478 (regOne!31190 r!7292)))))

(declare-fun b!5472131 () Bool)

(assert (=> b!5472131 (= e!3387367 call!403764)))

(declare-fun bm!403763 () Bool)

(assert (=> bm!403763 (= call!403766 call!403768)))

(declare-fun b!5472132 () Bool)

(assert (=> b!5472132 (= e!3387365 e!3387367)))

(assert (=> b!5472132 (= c!956068 ((_ is Concat!24184) r!7292))))

(declare-fun b!5472133 () Bool)

(assert (=> b!5472133 (= e!3387364 e!3387366)))

(assert (=> b!5472133 (= c!956067 ((_ is Union!15339) r!7292))))

(declare-fun bm!403764 () Bool)

(assert (=> bm!403764 (= call!403764 call!403769)))

(assert (= (and d!1739451 c!956069) b!5472123))

(assert (= (and d!1739451 (not c!956069)) b!5472133))

(assert (= (and b!5472133 c!956067) b!5472129))

(assert (= (and b!5472133 (not c!956067)) b!5472125))

(assert (= (and b!5472125 res!2331997) b!5472130))

(assert (= (and b!5472125 c!956066) b!5472124))

(assert (= (and b!5472125 (not c!956066)) b!5472132))

(assert (= (and b!5472132 c!956068) b!5472131))

(assert (= (and b!5472132 (not c!956068)) b!5472127))

(assert (= (and b!5472127 c!956070) b!5472128))

(assert (= (and b!5472127 (not c!956070)) b!5472126))

(assert (= (or b!5472131 b!5472128) bm!403763))

(assert (= (or b!5472131 b!5472128) bm!403764))

(assert (= (or b!5472124 bm!403763) bm!403759))

(assert (= (or b!5472124 bm!403764) bm!403762))

(assert (= (or b!5472129 bm!403762) bm!403761))

(assert (= (or b!5472129 b!5472124) bm!403760))

(declare-fun m!6489930 () Bool)

(assert (=> bm!403761 m!6489930))

(declare-fun m!6489932 () Bool)

(assert (=> b!5472123 m!6489932))

(declare-fun m!6489934 () Bool)

(assert (=> bm!403759 m!6489934))

(declare-fun m!6489936 () Bool)

(assert (=> b!5472130 m!6489936))

(declare-fun m!6489938 () Bool)

(assert (=> bm!403760 m!6489938))

(assert (=> b!5471527 d!1739451))

(declare-fun d!1739453 () Bool)

(declare-fun c!956072 () Bool)

(declare-fun e!3387370 () Bool)

(assert (=> d!1739453 (= c!956072 e!3387370)))

(declare-fun res!2331998 () Bool)

(assert (=> d!1739453 (=> (not res!2331998) (not e!3387370))))

(assert (=> d!1739453 (= res!2331998 ((_ is Cons!62192) (exprs!5223 (Context!9447 (Cons!62192 r!7292 Nil!62192)))))))

(declare-fun e!3387372 () (InoxSet Context!9446))

(assert (=> d!1739453 (= (derivationStepZipperUp!691 (Context!9447 (Cons!62192 r!7292 Nil!62192)) (h!68642 s!2326)) e!3387372)))

(declare-fun b!5472134 () Bool)

(assert (=> b!5472134 (= e!3387370 (nullable!5478 (h!68640 (exprs!5223 (Context!9447 (Cons!62192 r!7292 Nil!62192))))))))

(declare-fun bm!403765 () Bool)

(declare-fun call!403770 () (InoxSet Context!9446))

(assert (=> bm!403765 (= call!403770 (derivationStepZipperDown!765 (h!68640 (exprs!5223 (Context!9447 (Cons!62192 r!7292 Nil!62192)))) (Context!9447 (t!375545 (exprs!5223 (Context!9447 (Cons!62192 r!7292 Nil!62192))))) (h!68642 s!2326)))))

(declare-fun b!5472135 () Bool)

(assert (=> b!5472135 (= e!3387372 ((_ map or) call!403770 (derivationStepZipperUp!691 (Context!9447 (t!375545 (exprs!5223 (Context!9447 (Cons!62192 r!7292 Nil!62192))))) (h!68642 s!2326))))))

(declare-fun b!5472136 () Bool)

(declare-fun e!3387371 () (InoxSet Context!9446))

(assert (=> b!5472136 (= e!3387371 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5472137 () Bool)

(assert (=> b!5472137 (= e!3387372 e!3387371)))

(declare-fun c!956071 () Bool)

(assert (=> b!5472137 (= c!956071 ((_ is Cons!62192) (exprs!5223 (Context!9447 (Cons!62192 r!7292 Nil!62192)))))))

(declare-fun b!5472138 () Bool)

(assert (=> b!5472138 (= e!3387371 call!403770)))

(assert (= (and d!1739453 res!2331998) b!5472134))

(assert (= (and d!1739453 c!956072) b!5472135))

(assert (= (and d!1739453 (not c!956072)) b!5472137))

(assert (= (and b!5472137 c!956071) b!5472138))

(assert (= (and b!5472137 (not c!956071)) b!5472136))

(assert (= (or b!5472135 b!5472138) bm!403765))

(declare-fun m!6489940 () Bool)

(assert (=> b!5472134 m!6489940))

(declare-fun m!6489942 () Bool)

(assert (=> bm!403765 m!6489942))

(declare-fun m!6489944 () Bool)

(assert (=> b!5472135 m!6489944))

(assert (=> b!5471527 d!1739453))

(declare-fun bs!1265143 () Bool)

(declare-fun d!1739455 () Bool)

(assert (= bs!1265143 (and d!1739455 b!5471544)))

(declare-fun lambda!291308 () Int)

(assert (=> bs!1265143 (= lambda!291308 lambda!291235)))

(declare-fun bs!1265144 () Bool)

(assert (= bs!1265144 (and d!1739455 d!1739335)))

(assert (=> bs!1265144 (= lambda!291308 lambda!291251)))

(declare-fun bs!1265145 () Bool)

(assert (= bs!1265145 (and d!1739455 d!1739393)))

(assert (=> bs!1265145 (= lambda!291308 lambda!291269)))

(assert (=> d!1739455 true))

(assert (=> d!1739455 (= (derivationStepZipper!1534 z!1189 (h!68642 s!2326)) (flatMap!1042 z!1189 lambda!291308))))

(declare-fun bs!1265146 () Bool)

(assert (= bs!1265146 d!1739455))

(declare-fun m!6489946 () Bool)

(assert (=> bs!1265146 m!6489946))

(assert (=> b!5471527 d!1739455))

(declare-fun b!5472139 () Bool)

(declare-fun e!3387373 () (InoxSet Context!9446))

(assert (=> b!5472139 (= e!3387373 (store ((as const (Array Context!9446 Bool)) false) lt!2235290 true))))

(declare-fun call!403775 () List!62316)

(declare-fun c!956075 () Bool)

(declare-fun c!956073 () Bool)

(declare-fun bm!403766 () Bool)

(assert (=> bm!403766 (= call!403775 ($colon$colon!1548 (exprs!5223 lt!2235290) (ite (or c!956073 c!956075) (regTwo!31190 (reg!15668 r!7292)) (reg!15668 r!7292))))))

(declare-fun b!5472140 () Bool)

(declare-fun e!3387374 () (InoxSet Context!9446))

(declare-fun call!403772 () (InoxSet Context!9446))

(declare-fun call!403776 () (InoxSet Context!9446))

(assert (=> b!5472140 (= e!3387374 ((_ map or) call!403772 call!403776))))

(declare-fun c!956074 () Bool)

(declare-fun bm!403767 () Bool)

(assert (=> bm!403767 (= call!403772 (derivationStepZipperDown!765 (ite c!956074 (regOne!31191 (reg!15668 r!7292)) (regOne!31190 (reg!15668 r!7292))) (ite c!956074 lt!2235290 (Context!9447 call!403775)) (h!68642 s!2326)))))

(declare-fun call!403774 () (InoxSet Context!9446))

(declare-fun call!403773 () List!62316)

(declare-fun bm!403768 () Bool)

(assert (=> bm!403768 (= call!403774 (derivationStepZipperDown!765 (ite c!956074 (regTwo!31191 (reg!15668 r!7292)) (ite c!956073 (regTwo!31190 (reg!15668 r!7292)) (ite c!956075 (regOne!31190 (reg!15668 r!7292)) (reg!15668 (reg!15668 r!7292))))) (ite (or c!956074 c!956073) lt!2235290 (Context!9447 call!403773)) (h!68642 s!2326)))))

(declare-fun bm!403769 () Bool)

(assert (=> bm!403769 (= call!403776 call!403774)))

(declare-fun b!5472141 () Bool)

(declare-fun e!3387378 () Bool)

(assert (=> b!5472141 (= c!956073 e!3387378)))

(declare-fun res!2331999 () Bool)

(assert (=> b!5472141 (=> (not res!2331999) (not e!3387378))))

(assert (=> b!5472141 (= res!2331999 ((_ is Concat!24184) (reg!15668 r!7292)))))

(declare-fun e!3387375 () (InoxSet Context!9446))

(assert (=> b!5472141 (= e!3387375 e!3387374)))

(declare-fun d!1739457 () Bool)

(declare-fun c!956076 () Bool)

(assert (=> d!1739457 (= c!956076 (and ((_ is ElementMatch!15339) (reg!15668 r!7292)) (= (c!955901 (reg!15668 r!7292)) (h!68642 s!2326))))))

(assert (=> d!1739457 (= (derivationStepZipperDown!765 (reg!15668 r!7292) lt!2235290 (h!68642 s!2326)) e!3387373)))

(declare-fun b!5472142 () Bool)

(declare-fun e!3387377 () (InoxSet Context!9446))

(assert (=> b!5472142 (= e!3387377 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5472143 () Bool)

(declare-fun c!956077 () Bool)

(assert (=> b!5472143 (= c!956077 ((_ is Star!15339) (reg!15668 r!7292)))))

(declare-fun e!3387376 () (InoxSet Context!9446))

(assert (=> b!5472143 (= e!3387376 e!3387377)))

(declare-fun b!5472144 () Bool)

(declare-fun call!403771 () (InoxSet Context!9446))

(assert (=> b!5472144 (= e!3387377 call!403771)))

(declare-fun b!5472145 () Bool)

(assert (=> b!5472145 (= e!3387375 ((_ map or) call!403772 call!403774))))

(declare-fun b!5472146 () Bool)

(assert (=> b!5472146 (= e!3387378 (nullable!5478 (regOne!31190 (reg!15668 r!7292))))))

(declare-fun b!5472147 () Bool)

(assert (=> b!5472147 (= e!3387376 call!403771)))

(declare-fun bm!403770 () Bool)

(assert (=> bm!403770 (= call!403773 call!403775)))

(declare-fun b!5472148 () Bool)

(assert (=> b!5472148 (= e!3387374 e!3387376)))

(assert (=> b!5472148 (= c!956075 ((_ is Concat!24184) (reg!15668 r!7292)))))

(declare-fun b!5472149 () Bool)

(assert (=> b!5472149 (= e!3387373 e!3387375)))

(assert (=> b!5472149 (= c!956074 ((_ is Union!15339) (reg!15668 r!7292)))))

(declare-fun bm!403771 () Bool)

(assert (=> bm!403771 (= call!403771 call!403776)))

(assert (= (and d!1739457 c!956076) b!5472139))

(assert (= (and d!1739457 (not c!956076)) b!5472149))

(assert (= (and b!5472149 c!956074) b!5472145))

(assert (= (and b!5472149 (not c!956074)) b!5472141))

(assert (= (and b!5472141 res!2331999) b!5472146))

(assert (= (and b!5472141 c!956073) b!5472140))

(assert (= (and b!5472141 (not c!956073)) b!5472148))

(assert (= (and b!5472148 c!956075) b!5472147))

(assert (= (and b!5472148 (not c!956075)) b!5472143))

(assert (= (and b!5472143 c!956077) b!5472144))

(assert (= (and b!5472143 (not c!956077)) b!5472142))

(assert (= (or b!5472147 b!5472144) bm!403770))

(assert (= (or b!5472147 b!5472144) bm!403771))

(assert (= (or b!5472140 bm!403770) bm!403766))

(assert (= (or b!5472140 bm!403771) bm!403769))

(assert (= (or b!5472145 bm!403769) bm!403768))

(assert (= (or b!5472145 b!5472140) bm!403767))

(declare-fun m!6489948 () Bool)

(assert (=> bm!403768 m!6489948))

(assert (=> b!5472139 m!6489460))

(declare-fun m!6489950 () Bool)

(assert (=> bm!403766 m!6489950))

(declare-fun m!6489952 () Bool)

(assert (=> b!5472146 m!6489952))

(declare-fun m!6489954 () Bool)

(assert (=> bm!403767 m!6489954))

(assert (=> b!5471524 d!1739457))

(declare-fun d!1739459 () Bool)

(assert (=> d!1739459 (= (flatMap!1042 lt!2235291 lambda!291235) (choose!41617 lt!2235291 lambda!291235))))

(declare-fun bs!1265147 () Bool)

(assert (= bs!1265147 d!1739459))

(declare-fun m!6489956 () Bool)

(assert (=> bs!1265147 m!6489956))

(assert (=> b!5471524 d!1739459))

(declare-fun d!1739461 () Bool)

(declare-fun c!956079 () Bool)

(declare-fun e!3387379 () Bool)

(assert (=> d!1739461 (= c!956079 e!3387379)))

(declare-fun res!2332000 () Bool)

(assert (=> d!1739461 (=> (not res!2332000) (not e!3387379))))

(assert (=> d!1739461 (= res!2332000 ((_ is Cons!62192) (exprs!5223 lt!2235278)))))

(declare-fun e!3387381 () (InoxSet Context!9446))

(assert (=> d!1739461 (= (derivationStepZipperUp!691 lt!2235278 (h!68642 s!2326)) e!3387381)))

(declare-fun b!5472150 () Bool)

(assert (=> b!5472150 (= e!3387379 (nullable!5478 (h!68640 (exprs!5223 lt!2235278))))))

(declare-fun bm!403772 () Bool)

(declare-fun call!403777 () (InoxSet Context!9446))

(assert (=> bm!403772 (= call!403777 (derivationStepZipperDown!765 (h!68640 (exprs!5223 lt!2235278)) (Context!9447 (t!375545 (exprs!5223 lt!2235278))) (h!68642 s!2326)))))

(declare-fun b!5472151 () Bool)

(assert (=> b!5472151 (= e!3387381 ((_ map or) call!403777 (derivationStepZipperUp!691 (Context!9447 (t!375545 (exprs!5223 lt!2235278))) (h!68642 s!2326))))))

(declare-fun b!5472152 () Bool)

(declare-fun e!3387380 () (InoxSet Context!9446))

(assert (=> b!5472152 (= e!3387380 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5472153 () Bool)

(assert (=> b!5472153 (= e!3387381 e!3387380)))

(declare-fun c!956078 () Bool)

(assert (=> b!5472153 (= c!956078 ((_ is Cons!62192) (exprs!5223 lt!2235278)))))

(declare-fun b!5472154 () Bool)

(assert (=> b!5472154 (= e!3387380 call!403777)))

(assert (= (and d!1739461 res!2332000) b!5472150))

(assert (= (and d!1739461 c!956079) b!5472151))

(assert (= (and d!1739461 (not c!956079)) b!5472153))

(assert (= (and b!5472153 c!956078) b!5472154))

(assert (= (and b!5472153 (not c!956078)) b!5472152))

(assert (= (or b!5472151 b!5472154) bm!403772))

(declare-fun m!6489958 () Bool)

(assert (=> b!5472150 m!6489958))

(declare-fun m!6489960 () Bool)

(assert (=> bm!403772 m!6489960))

(declare-fun m!6489962 () Bool)

(assert (=> b!5472151 m!6489962))

(assert (=> b!5471524 d!1739461))

(declare-fun d!1739463 () Bool)

(assert (=> d!1739463 (= (flatMap!1042 lt!2235291 lambda!291235) (dynLambda!24425 lambda!291235 lt!2235278))))

(declare-fun lt!2235391 () Unit!155128)

(assert (=> d!1739463 (= lt!2235391 (choose!41616 lt!2235291 lt!2235278 lambda!291235))))

(assert (=> d!1739463 (= lt!2235291 (store ((as const (Array Context!9446 Bool)) false) lt!2235278 true))))

(assert (=> d!1739463 (= (lemmaFlatMapOnSingletonSet!574 lt!2235291 lt!2235278 lambda!291235) lt!2235391)))

(declare-fun b_lambda!207999 () Bool)

(assert (=> (not b_lambda!207999) (not d!1739463)))

(declare-fun bs!1265148 () Bool)

(assert (= bs!1265148 d!1739463))

(assert (=> bs!1265148 m!6489488))

(declare-fun m!6489964 () Bool)

(assert (=> bs!1265148 m!6489964))

(declare-fun m!6489966 () Bool)

(assert (=> bs!1265148 m!6489966))

(assert (=> bs!1265148 m!6489494))

(assert (=> b!5471524 d!1739463))

(declare-fun bs!1265149 () Bool)

(declare-fun b!5472187 () Bool)

(assert (= bs!1265149 (and b!5472187 b!5471537)))

(declare-fun lambda!291313 () Int)

(assert (=> bs!1265149 (= lambda!291313 lambda!291233)))

(declare-fun bs!1265150 () Bool)

(assert (= bs!1265150 (and b!5472187 d!1739449)))

(assert (=> bs!1265150 (not (= lambda!291313 lambda!291307))))

(declare-fun bs!1265151 () Bool)

(assert (= bs!1265151 (and b!5472187 d!1739425)))

(assert (=> bs!1265151 (not (= lambda!291313 lambda!291297))))

(assert (=> bs!1265151 (not (= lambda!291313 lambda!291296))))

(assert (=> bs!1265149 (not (= lambda!291313 lambda!291234))))

(declare-fun bs!1265152 () Bool)

(assert (= bs!1265152 (and b!5472187 d!1739429)))

(assert (=> bs!1265152 (= (= r!7292 (Star!15339 (reg!15668 r!7292))) (= lambda!291313 lambda!291304))))

(assert (=> bs!1265149 (not (= lambda!291313 lambda!291232))))

(assert (=> bs!1265152 (not (= lambda!291313 lambda!291303))))

(assert (=> b!5472187 true))

(assert (=> b!5472187 true))

(declare-fun bs!1265153 () Bool)

(declare-fun b!5472192 () Bool)

(assert (= bs!1265153 (and b!5472192 b!5471537)))

(declare-fun lambda!291314 () Int)

(assert (=> bs!1265153 (not (= lambda!291314 lambda!291233))))

(declare-fun bs!1265154 () Bool)

(assert (= bs!1265154 (and b!5472192 d!1739449)))

(assert (=> bs!1265154 (not (= lambda!291314 lambda!291307))))

(declare-fun bs!1265155 () Bool)

(assert (= bs!1265155 (and b!5472192 d!1739425)))

(assert (=> bs!1265155 (= (and (= (regOne!31190 r!7292) (reg!15668 r!7292)) (= (regTwo!31190 r!7292) r!7292)) (= lambda!291314 lambda!291297))))

(assert (=> bs!1265155 (not (= lambda!291314 lambda!291296))))

(assert (=> bs!1265153 (= (and (= (regOne!31190 r!7292) (reg!15668 r!7292)) (= (regTwo!31190 r!7292) r!7292)) (= lambda!291314 lambda!291234))))

(declare-fun bs!1265156 () Bool)

(assert (= bs!1265156 (and b!5472192 d!1739429)))

(assert (=> bs!1265156 (not (= lambda!291314 lambda!291304))))

(declare-fun bs!1265157 () Bool)

(assert (= bs!1265157 (and b!5472192 b!5472187)))

(assert (=> bs!1265157 (not (= lambda!291314 lambda!291313))))

(assert (=> bs!1265153 (not (= lambda!291314 lambda!291232))))

(assert (=> bs!1265156 (not (= lambda!291314 lambda!291303))))

(assert (=> b!5472192 true))

(assert (=> b!5472192 true))

(declare-fun e!3387400 () Bool)

(declare-fun call!403783 () Bool)

(assert (=> b!5472187 (= e!3387400 call!403783)))

(declare-fun bm!403777 () Bool)

(declare-fun call!403782 () Bool)

(assert (=> bm!403777 (= call!403782 (isEmpty!34150 s!2326))))

(declare-fun b!5472188 () Bool)

(declare-fun e!3387401 () Bool)

(declare-fun e!3387406 () Bool)

(assert (=> b!5472188 (= e!3387401 e!3387406)))

(declare-fun res!2332019 () Bool)

(assert (=> b!5472188 (= res!2332019 (not ((_ is EmptyLang!15339) r!7292)))))

(assert (=> b!5472188 (=> (not res!2332019) (not e!3387406))))

(declare-fun b!5472189 () Bool)

(declare-fun e!3387405 () Bool)

(assert (=> b!5472189 (= e!3387405 (matchRSpec!2442 (regTwo!31191 r!7292) s!2326))))

(declare-fun b!5472190 () Bool)

(declare-fun e!3387404 () Bool)

(assert (=> b!5472190 (= e!3387404 e!3387405)))

(declare-fun res!2332017 () Bool)

(assert (=> b!5472190 (= res!2332017 (matchRSpec!2442 (regOne!31191 r!7292) s!2326))))

(assert (=> b!5472190 (=> res!2332017 e!3387405)))

(declare-fun c!956088 () Bool)

(declare-fun bm!403778 () Bool)

(assert (=> bm!403778 (= call!403783 (Exists!2518 (ite c!956088 lambda!291313 lambda!291314)))))

(declare-fun e!3387403 () Bool)

(assert (=> b!5472192 (= e!3387403 call!403783)))

(declare-fun b!5472193 () Bool)

(declare-fun c!956091 () Bool)

(assert (=> b!5472193 (= c!956091 ((_ is ElementMatch!15339) r!7292))))

(declare-fun e!3387402 () Bool)

(assert (=> b!5472193 (= e!3387406 e!3387402)))

(declare-fun b!5472194 () Bool)

(assert (=> b!5472194 (= e!3387402 (= s!2326 (Cons!62194 (c!955901 r!7292) Nil!62194)))))

(declare-fun b!5472195 () Bool)

(assert (=> b!5472195 (= e!3387404 e!3387403)))

(assert (=> b!5472195 (= c!956088 ((_ is Star!15339) r!7292))))

(declare-fun b!5472191 () Bool)

(declare-fun res!2332018 () Bool)

(assert (=> b!5472191 (=> res!2332018 e!3387400)))

(assert (=> b!5472191 (= res!2332018 call!403782)))

(assert (=> b!5472191 (= e!3387403 e!3387400)))

(declare-fun d!1739465 () Bool)

(declare-fun c!956089 () Bool)

(assert (=> d!1739465 (= c!956089 ((_ is EmptyExpr!15339) r!7292))))

(assert (=> d!1739465 (= (matchRSpec!2442 r!7292 s!2326) e!3387401)))

(declare-fun b!5472196 () Bool)

(declare-fun c!956090 () Bool)

(assert (=> b!5472196 (= c!956090 ((_ is Union!15339) r!7292))))

(assert (=> b!5472196 (= e!3387402 e!3387404)))

(declare-fun b!5472197 () Bool)

(assert (=> b!5472197 (= e!3387401 call!403782)))

(assert (= (and d!1739465 c!956089) b!5472197))

(assert (= (and d!1739465 (not c!956089)) b!5472188))

(assert (= (and b!5472188 res!2332019) b!5472193))

(assert (= (and b!5472193 c!956091) b!5472194))

(assert (= (and b!5472193 (not c!956091)) b!5472196))

(assert (= (and b!5472196 c!956090) b!5472190))

(assert (= (and b!5472196 (not c!956090)) b!5472195))

(assert (= (and b!5472190 (not res!2332017)) b!5472189))

(assert (= (and b!5472195 c!956088) b!5472191))

(assert (= (and b!5472195 (not c!956088)) b!5472192))

(assert (= (and b!5472191 (not res!2332018)) b!5472187))

(assert (= (or b!5472187 b!5472192) bm!403778))

(assert (= (or b!5472197 b!5472191) bm!403777))

(assert (=> bm!403777 m!6489424))

(declare-fun m!6489968 () Bool)

(assert (=> b!5472189 m!6489968))

(declare-fun m!6489970 () Bool)

(assert (=> b!5472190 m!6489970))

(declare-fun m!6489972 () Bool)

(assert (=> bm!403778 m!6489972))

(assert (=> b!5471533 d!1739465))

(declare-fun b!5472226 () Bool)

(declare-fun e!3387426 () Bool)

(assert (=> b!5472226 (= e!3387426 (not (= (head!11722 s!2326) (c!955901 r!7292))))))

(declare-fun b!5472227 () Bool)

(declare-fun e!3387424 () Bool)

(declare-fun lt!2235394 () Bool)

(declare-fun call!403786 () Bool)

(assert (=> b!5472227 (= e!3387424 (= lt!2235394 call!403786))))

(declare-fun b!5472228 () Bool)

(declare-fun e!3387427 () Bool)

(declare-fun derivativeStep!4323 (Regex!15339 C!30948) Regex!15339)

(assert (=> b!5472228 (= e!3387427 (matchR!7524 (derivativeStep!4323 r!7292 (head!11722 s!2326)) (tail!10819 s!2326)))))

(declare-fun b!5472229 () Bool)

(assert (=> b!5472229 (= e!3387427 (nullable!5478 r!7292))))

(declare-fun b!5472230 () Bool)

(declare-fun e!3387422 () Bool)

(assert (=> b!5472230 (= e!3387422 (= (head!11722 s!2326) (c!955901 r!7292)))))

(declare-fun b!5472231 () Bool)

(declare-fun res!2332038 () Bool)

(assert (=> b!5472231 (=> res!2332038 e!3387426)))

(assert (=> b!5472231 (= res!2332038 (not (isEmpty!34150 (tail!10819 s!2326))))))

(declare-fun b!5472232 () Bool)

(declare-fun res!2332040 () Bool)

(declare-fun e!3387421 () Bool)

(assert (=> b!5472232 (=> res!2332040 e!3387421)))

(assert (=> b!5472232 (= res!2332040 (not ((_ is ElementMatch!15339) r!7292)))))

(declare-fun e!3387423 () Bool)

(assert (=> b!5472232 (= e!3387423 e!3387421)))

(declare-fun b!5472233 () Bool)

(assert (=> b!5472233 (= e!3387423 (not lt!2235394))))

(declare-fun b!5472234 () Bool)

(declare-fun e!3387425 () Bool)

(assert (=> b!5472234 (= e!3387425 e!3387426)))

(declare-fun res!2332042 () Bool)

(assert (=> b!5472234 (=> res!2332042 e!3387426)))

(assert (=> b!5472234 (= res!2332042 call!403786)))

(declare-fun d!1739467 () Bool)

(assert (=> d!1739467 e!3387424))

(declare-fun c!956098 () Bool)

(assert (=> d!1739467 (= c!956098 ((_ is EmptyExpr!15339) r!7292))))

(assert (=> d!1739467 (= lt!2235394 e!3387427)))

(declare-fun c!956100 () Bool)

(assert (=> d!1739467 (= c!956100 (isEmpty!34150 s!2326))))

(assert (=> d!1739467 (validRegex!7075 r!7292)))

(assert (=> d!1739467 (= (matchR!7524 r!7292 s!2326) lt!2235394)))

(declare-fun b!5472235 () Bool)

(assert (=> b!5472235 (= e!3387424 e!3387423)))

(declare-fun c!956099 () Bool)

(assert (=> b!5472235 (= c!956099 ((_ is EmptyLang!15339) r!7292))))

(declare-fun b!5472236 () Bool)

(declare-fun res!2332043 () Bool)

(assert (=> b!5472236 (=> (not res!2332043) (not e!3387422))))

(assert (=> b!5472236 (= res!2332043 (isEmpty!34150 (tail!10819 s!2326)))))

(declare-fun bm!403781 () Bool)

(assert (=> bm!403781 (= call!403786 (isEmpty!34150 s!2326))))

(declare-fun b!5472237 () Bool)

(declare-fun res!2332039 () Bool)

(assert (=> b!5472237 (=> res!2332039 e!3387421)))

(assert (=> b!5472237 (= res!2332039 e!3387422)))

(declare-fun res!2332037 () Bool)

(assert (=> b!5472237 (=> (not res!2332037) (not e!3387422))))

(assert (=> b!5472237 (= res!2332037 lt!2235394)))

(declare-fun b!5472238 () Bool)

(declare-fun res!2332041 () Bool)

(assert (=> b!5472238 (=> (not res!2332041) (not e!3387422))))

(assert (=> b!5472238 (= res!2332041 (not call!403786))))

(declare-fun b!5472239 () Bool)

(assert (=> b!5472239 (= e!3387421 e!3387425)))

(declare-fun res!2332036 () Bool)

(assert (=> b!5472239 (=> (not res!2332036) (not e!3387425))))

(assert (=> b!5472239 (= res!2332036 (not lt!2235394))))

(assert (= (and d!1739467 c!956100) b!5472229))

(assert (= (and d!1739467 (not c!956100)) b!5472228))

(assert (= (and d!1739467 c!956098) b!5472227))

(assert (= (and d!1739467 (not c!956098)) b!5472235))

(assert (= (and b!5472235 c!956099) b!5472233))

(assert (= (and b!5472235 (not c!956099)) b!5472232))

(assert (= (and b!5472232 (not res!2332040)) b!5472237))

(assert (= (and b!5472237 res!2332037) b!5472238))

(assert (= (and b!5472238 res!2332041) b!5472236))

(assert (= (and b!5472236 res!2332043) b!5472230))

(assert (= (and b!5472237 (not res!2332039)) b!5472239))

(assert (= (and b!5472239 res!2332036) b!5472234))

(assert (= (and b!5472234 (not res!2332042)) b!5472231))

(assert (= (and b!5472231 (not res!2332038)) b!5472226))

(assert (= (or b!5472227 b!5472234 b!5472238) bm!403781))

(assert (=> b!5472226 m!6489740))

(assert (=> b!5472230 m!6489740))

(assert (=> b!5472236 m!6489744))

(assert (=> b!5472236 m!6489744))

(declare-fun m!6489974 () Bool)

(assert (=> b!5472236 m!6489974))

(declare-fun m!6489976 () Bool)

(assert (=> b!5472229 m!6489976))

(assert (=> d!1739467 m!6489424))

(assert (=> d!1739467 m!6489500))

(assert (=> b!5472231 m!6489744))

(assert (=> b!5472231 m!6489744))

(assert (=> b!5472231 m!6489974))

(assert (=> bm!403781 m!6489424))

(assert (=> b!5472228 m!6489740))

(assert (=> b!5472228 m!6489740))

(declare-fun m!6489978 () Bool)

(assert (=> b!5472228 m!6489978))

(assert (=> b!5472228 m!6489744))

(assert (=> b!5472228 m!6489978))

(assert (=> b!5472228 m!6489744))

(declare-fun m!6489980 () Bool)

(assert (=> b!5472228 m!6489980))

(assert (=> b!5471533 d!1739467))

(declare-fun d!1739469 () Bool)

(assert (=> d!1739469 (= (matchR!7524 r!7292 s!2326) (matchRSpec!2442 r!7292 s!2326))))

(declare-fun lt!2235397 () Unit!155128)

(declare-fun choose!41626 (Regex!15339 List!62318) Unit!155128)

(assert (=> d!1739469 (= lt!2235397 (choose!41626 r!7292 s!2326))))

(assert (=> d!1739469 (validRegex!7075 r!7292)))

(assert (=> d!1739469 (= (mainMatchTheorem!2442 r!7292 s!2326) lt!2235397)))

(declare-fun bs!1265158 () Bool)

(assert (= bs!1265158 d!1739469))

(assert (=> bs!1265158 m!6489414))

(assert (=> bs!1265158 m!6489412))

(declare-fun m!6489982 () Bool)

(assert (=> bs!1265158 m!6489982))

(assert (=> bs!1265158 m!6489500))

(assert (=> b!5471533 d!1739469))

(declare-fun d!1739471 () Bool)

(assert (=> d!1739471 (= (flatMap!1042 z!1189 lambda!291235) (choose!41617 z!1189 lambda!291235))))

(declare-fun bs!1265159 () Bool)

(assert (= bs!1265159 d!1739471))

(declare-fun m!6489984 () Bool)

(assert (=> bs!1265159 m!6489984))

(assert (=> b!5471544 d!1739471))

(declare-fun d!1739473 () Bool)

(declare-fun c!956102 () Bool)

(declare-fun e!3387428 () Bool)

(assert (=> d!1739473 (= c!956102 e!3387428)))

(declare-fun res!2332044 () Bool)

(assert (=> d!1739473 (=> (not res!2332044) (not e!3387428))))

(assert (=> d!1739473 (= res!2332044 ((_ is Cons!62192) (exprs!5223 (h!68641 zl!343))))))

(declare-fun e!3387430 () (InoxSet Context!9446))

(assert (=> d!1739473 (= (derivationStepZipperUp!691 (h!68641 zl!343) (h!68642 s!2326)) e!3387430)))

(declare-fun b!5472240 () Bool)

(assert (=> b!5472240 (= e!3387428 (nullable!5478 (h!68640 (exprs!5223 (h!68641 zl!343)))))))

(declare-fun bm!403782 () Bool)

(declare-fun call!403787 () (InoxSet Context!9446))

(assert (=> bm!403782 (= call!403787 (derivationStepZipperDown!765 (h!68640 (exprs!5223 (h!68641 zl!343))) (Context!9447 (t!375545 (exprs!5223 (h!68641 zl!343)))) (h!68642 s!2326)))))

(declare-fun b!5472241 () Bool)

(assert (=> b!5472241 (= e!3387430 ((_ map or) call!403787 (derivationStepZipperUp!691 (Context!9447 (t!375545 (exprs!5223 (h!68641 zl!343)))) (h!68642 s!2326))))))

(declare-fun b!5472242 () Bool)

(declare-fun e!3387429 () (InoxSet Context!9446))

(assert (=> b!5472242 (= e!3387429 ((as const (Array Context!9446 Bool)) false))))

(declare-fun b!5472243 () Bool)

(assert (=> b!5472243 (= e!3387430 e!3387429)))

(declare-fun c!956101 () Bool)

(assert (=> b!5472243 (= c!956101 ((_ is Cons!62192) (exprs!5223 (h!68641 zl!343))))))

(declare-fun b!5472244 () Bool)

(assert (=> b!5472244 (= e!3387429 call!403787)))

(assert (= (and d!1739473 res!2332044) b!5472240))

(assert (= (and d!1739473 c!956102) b!5472241))

(assert (= (and d!1739473 (not c!956102)) b!5472243))

(assert (= (and b!5472243 c!956101) b!5472244))

(assert (= (and b!5472243 (not c!956101)) b!5472242))

(assert (= (or b!5472241 b!5472244) bm!403782))

(declare-fun m!6489986 () Bool)

(assert (=> b!5472240 m!6489986))

(declare-fun m!6489988 () Bool)

(assert (=> bm!403782 m!6489988))

(declare-fun m!6489990 () Bool)

(assert (=> b!5472241 m!6489990))

(assert (=> b!5471544 d!1739473))

(declare-fun d!1739475 () Bool)

(assert (=> d!1739475 (= (flatMap!1042 z!1189 lambda!291235) (dynLambda!24425 lambda!291235 (h!68641 zl!343)))))

(declare-fun lt!2235398 () Unit!155128)

(assert (=> d!1739475 (= lt!2235398 (choose!41616 z!1189 (h!68641 zl!343) lambda!291235))))

(assert (=> d!1739475 (= z!1189 (store ((as const (Array Context!9446 Bool)) false) (h!68641 zl!343) true))))

(assert (=> d!1739475 (= (lemmaFlatMapOnSingletonSet!574 z!1189 (h!68641 zl!343) lambda!291235) lt!2235398)))

(declare-fun b_lambda!208001 () Bool)

(assert (=> (not b_lambda!208001) (not d!1739475)))

(declare-fun bs!1265160 () Bool)

(assert (= bs!1265160 d!1739475))

(assert (=> bs!1265160 m!6489440))

(declare-fun m!6489992 () Bool)

(assert (=> bs!1265160 m!6489992))

(declare-fun m!6489994 () Bool)

(assert (=> bs!1265160 m!6489994))

(declare-fun m!6489996 () Bool)

(assert (=> bs!1265160 m!6489996))

(assert (=> b!5471544 d!1739475))

(declare-fun c!956107 () Bool)

(declare-fun bm!403789 () Bool)

(declare-fun call!403794 () Bool)

(declare-fun c!956108 () Bool)

(assert (=> bm!403789 (= call!403794 (validRegex!7075 (ite c!956107 (reg!15668 r!7292) (ite c!956108 (regOne!31191 r!7292) (regOne!31190 r!7292)))))))

(declare-fun b!5472263 () Bool)

(declare-fun e!3387449 () Bool)

(assert (=> b!5472263 (= e!3387449 call!403794)))

(declare-fun b!5472264 () Bool)

(declare-fun res!2332058 () Bool)

(declare-fun e!3387445 () Bool)

(assert (=> b!5472264 (=> (not res!2332058) (not e!3387445))))

(declare-fun call!403796 () Bool)

(assert (=> b!5472264 (= res!2332058 call!403796)))

(declare-fun e!3387447 () Bool)

(assert (=> b!5472264 (= e!3387447 e!3387445)))

(declare-fun bm!403790 () Bool)

(declare-fun call!403795 () Bool)

(assert (=> bm!403790 (= call!403795 (validRegex!7075 (ite c!956108 (regTwo!31191 r!7292) (regTwo!31190 r!7292))))))

(declare-fun b!5472265 () Bool)

(declare-fun res!2332055 () Bool)

(declare-fun e!3387451 () Bool)

(assert (=> b!5472265 (=> res!2332055 e!3387451)))

(assert (=> b!5472265 (= res!2332055 (not ((_ is Concat!24184) r!7292)))))

(assert (=> b!5472265 (= e!3387447 e!3387451)))

(declare-fun b!5472267 () Bool)

(assert (=> b!5472267 (= e!3387445 call!403795)))

(declare-fun b!5472268 () Bool)

(declare-fun e!3387448 () Bool)

(assert (=> b!5472268 (= e!3387451 e!3387448)))

(declare-fun res!2332059 () Bool)

(assert (=> b!5472268 (=> (not res!2332059) (not e!3387448))))

(assert (=> b!5472268 (= res!2332059 call!403796)))

(declare-fun bm!403791 () Bool)

(assert (=> bm!403791 (= call!403796 call!403794)))

(declare-fun b!5472269 () Bool)

(declare-fun e!3387446 () Bool)

(assert (=> b!5472269 (= e!3387446 e!3387449)))

(declare-fun res!2332057 () Bool)

(assert (=> b!5472269 (= res!2332057 (not (nullable!5478 (reg!15668 r!7292))))))

(assert (=> b!5472269 (=> (not res!2332057) (not e!3387449))))

(declare-fun b!5472270 () Bool)

(declare-fun e!3387450 () Bool)

(assert (=> b!5472270 (= e!3387450 e!3387446)))

(assert (=> b!5472270 (= c!956107 ((_ is Star!15339) r!7292))))

(declare-fun b!5472271 () Bool)

(assert (=> b!5472271 (= e!3387448 call!403795)))

(declare-fun d!1739477 () Bool)

(declare-fun res!2332056 () Bool)

(assert (=> d!1739477 (=> res!2332056 e!3387450)))

(assert (=> d!1739477 (= res!2332056 ((_ is ElementMatch!15339) r!7292))))

(assert (=> d!1739477 (= (validRegex!7075 r!7292) e!3387450)))

(declare-fun b!5472266 () Bool)

(assert (=> b!5472266 (= e!3387446 e!3387447)))

(assert (=> b!5472266 (= c!956108 ((_ is Union!15339) r!7292))))

(assert (= (and d!1739477 (not res!2332056)) b!5472270))

(assert (= (and b!5472270 c!956107) b!5472269))

(assert (= (and b!5472270 (not c!956107)) b!5472266))

(assert (= (and b!5472269 res!2332057) b!5472263))

(assert (= (and b!5472266 c!956108) b!5472264))

(assert (= (and b!5472266 (not c!956108)) b!5472265))

(assert (= (and b!5472264 res!2332058) b!5472267))

(assert (= (and b!5472265 (not res!2332055)) b!5472268))

(assert (= (and b!5472268 res!2332059) b!5472271))

(assert (= (or b!5472267 b!5472271) bm!403790))

(assert (= (or b!5472264 b!5472268) bm!403791))

(assert (= (or b!5472263 bm!403791) bm!403789))

(declare-fun m!6489998 () Bool)

(assert (=> bm!403789 m!6489998))

(declare-fun m!6490000 () Bool)

(assert (=> bm!403790 m!6490000))

(declare-fun m!6490002 () Bool)

(assert (=> b!5472269 m!6490002))

(assert (=> start!572602 d!1739477))

(declare-fun bs!1265161 () Bool)

(declare-fun b!5472272 () Bool)

(assert (= bs!1265161 (and b!5472272 b!5471537)))

(declare-fun lambda!291315 () Int)

(assert (=> bs!1265161 (= (and (= (reg!15668 lt!2235289) (reg!15668 r!7292)) (= lt!2235289 r!7292)) (= lambda!291315 lambda!291233))))

(declare-fun bs!1265162 () Bool)

(assert (= bs!1265162 (and b!5472272 d!1739449)))

(assert (=> bs!1265162 (not (= lambda!291315 lambda!291307))))

(declare-fun bs!1265163 () Bool)

(assert (= bs!1265163 (and b!5472272 b!5472192)))

(assert (=> bs!1265163 (not (= lambda!291315 lambda!291314))))

(declare-fun bs!1265164 () Bool)

(assert (= bs!1265164 (and b!5472272 d!1739425)))

(assert (=> bs!1265164 (not (= lambda!291315 lambda!291297))))

(assert (=> bs!1265164 (not (= lambda!291315 lambda!291296))))

(assert (=> bs!1265161 (not (= lambda!291315 lambda!291234))))

(declare-fun bs!1265165 () Bool)

(assert (= bs!1265165 (and b!5472272 d!1739429)))

(assert (=> bs!1265165 (= (and (= (reg!15668 lt!2235289) (reg!15668 r!7292)) (= lt!2235289 (Star!15339 (reg!15668 r!7292)))) (= lambda!291315 lambda!291304))))

(declare-fun bs!1265166 () Bool)

(assert (= bs!1265166 (and b!5472272 b!5472187)))

(assert (=> bs!1265166 (= (and (= (reg!15668 lt!2235289) (reg!15668 r!7292)) (= lt!2235289 r!7292)) (= lambda!291315 lambda!291313))))

(assert (=> bs!1265161 (not (= lambda!291315 lambda!291232))))

(assert (=> bs!1265165 (not (= lambda!291315 lambda!291303))))

(assert (=> b!5472272 true))

(assert (=> b!5472272 true))

(declare-fun bs!1265167 () Bool)

(declare-fun b!5472277 () Bool)

(assert (= bs!1265167 (and b!5472277 b!5471537)))

(declare-fun lambda!291316 () Int)

(assert (=> bs!1265167 (not (= lambda!291316 lambda!291233))))

(declare-fun bs!1265168 () Bool)

(assert (= bs!1265168 (and b!5472277 b!5472192)))

(assert (=> bs!1265168 (= (and (= (regOne!31190 lt!2235289) (regOne!31190 r!7292)) (= (regTwo!31190 lt!2235289) (regTwo!31190 r!7292))) (= lambda!291316 lambda!291314))))

(declare-fun bs!1265169 () Bool)

(assert (= bs!1265169 (and b!5472277 d!1739425)))

(assert (=> bs!1265169 (= (and (= (regOne!31190 lt!2235289) (reg!15668 r!7292)) (= (regTwo!31190 lt!2235289) r!7292)) (= lambda!291316 lambda!291297))))

(assert (=> bs!1265169 (not (= lambda!291316 lambda!291296))))

(assert (=> bs!1265167 (= (and (= (regOne!31190 lt!2235289) (reg!15668 r!7292)) (= (regTwo!31190 lt!2235289) r!7292)) (= lambda!291316 lambda!291234))))

(declare-fun bs!1265170 () Bool)

(assert (= bs!1265170 (and b!5472277 d!1739429)))

(assert (=> bs!1265170 (not (= lambda!291316 lambda!291304))))

(declare-fun bs!1265171 () Bool)

(assert (= bs!1265171 (and b!5472277 b!5472187)))

(assert (=> bs!1265171 (not (= lambda!291316 lambda!291313))))

(assert (=> bs!1265167 (not (= lambda!291316 lambda!291232))))

(assert (=> bs!1265170 (not (= lambda!291316 lambda!291303))))

(declare-fun bs!1265172 () Bool)

(assert (= bs!1265172 (and b!5472277 d!1739449)))

(assert (=> bs!1265172 (not (= lambda!291316 lambda!291307))))

(declare-fun bs!1265173 () Bool)

(assert (= bs!1265173 (and b!5472277 b!5472272)))

(assert (=> bs!1265173 (not (= lambda!291316 lambda!291315))))

(assert (=> b!5472277 true))

(assert (=> b!5472277 true))

(declare-fun e!3387452 () Bool)

(declare-fun call!403798 () Bool)

(assert (=> b!5472272 (= e!3387452 call!403798)))

(declare-fun bm!403792 () Bool)

(declare-fun call!403797 () Bool)

(assert (=> bm!403792 (= call!403797 (isEmpty!34150 s!2326))))

(declare-fun b!5472273 () Bool)

(declare-fun e!3387453 () Bool)

(declare-fun e!3387458 () Bool)

(assert (=> b!5472273 (= e!3387453 e!3387458)))

(declare-fun res!2332062 () Bool)

(assert (=> b!5472273 (= res!2332062 (not ((_ is EmptyLang!15339) lt!2235289)))))

(assert (=> b!5472273 (=> (not res!2332062) (not e!3387458))))

(declare-fun b!5472274 () Bool)

(declare-fun e!3387457 () Bool)

(assert (=> b!5472274 (= e!3387457 (matchRSpec!2442 (regTwo!31191 lt!2235289) s!2326))))

(declare-fun b!5472275 () Bool)

(declare-fun e!3387456 () Bool)

(assert (=> b!5472275 (= e!3387456 e!3387457)))

(declare-fun res!2332060 () Bool)

(assert (=> b!5472275 (= res!2332060 (matchRSpec!2442 (regOne!31191 lt!2235289) s!2326))))

(assert (=> b!5472275 (=> res!2332060 e!3387457)))

(declare-fun c!956109 () Bool)

(declare-fun bm!403793 () Bool)

(assert (=> bm!403793 (= call!403798 (Exists!2518 (ite c!956109 lambda!291315 lambda!291316)))))

(declare-fun e!3387455 () Bool)

(assert (=> b!5472277 (= e!3387455 call!403798)))

(declare-fun b!5472278 () Bool)

(declare-fun c!956112 () Bool)

(assert (=> b!5472278 (= c!956112 ((_ is ElementMatch!15339) lt!2235289))))

(declare-fun e!3387454 () Bool)

(assert (=> b!5472278 (= e!3387458 e!3387454)))

(declare-fun b!5472279 () Bool)

(assert (=> b!5472279 (= e!3387454 (= s!2326 (Cons!62194 (c!955901 lt!2235289) Nil!62194)))))

(declare-fun b!5472280 () Bool)

(assert (=> b!5472280 (= e!3387456 e!3387455)))

(assert (=> b!5472280 (= c!956109 ((_ is Star!15339) lt!2235289))))

(declare-fun b!5472276 () Bool)

(declare-fun res!2332061 () Bool)

(assert (=> b!5472276 (=> res!2332061 e!3387452)))

(assert (=> b!5472276 (= res!2332061 call!403797)))

(assert (=> b!5472276 (= e!3387455 e!3387452)))

(declare-fun d!1739479 () Bool)

(declare-fun c!956110 () Bool)

(assert (=> d!1739479 (= c!956110 ((_ is EmptyExpr!15339) lt!2235289))))

(assert (=> d!1739479 (= (matchRSpec!2442 lt!2235289 s!2326) e!3387453)))

(declare-fun b!5472281 () Bool)

(declare-fun c!956111 () Bool)

(assert (=> b!5472281 (= c!956111 ((_ is Union!15339) lt!2235289))))

(assert (=> b!5472281 (= e!3387454 e!3387456)))

(declare-fun b!5472282 () Bool)

(assert (=> b!5472282 (= e!3387453 call!403797)))

(assert (= (and d!1739479 c!956110) b!5472282))

(assert (= (and d!1739479 (not c!956110)) b!5472273))

(assert (= (and b!5472273 res!2332062) b!5472278))

(assert (= (and b!5472278 c!956112) b!5472279))

(assert (= (and b!5472278 (not c!956112)) b!5472281))

(assert (= (and b!5472281 c!956111) b!5472275))

(assert (= (and b!5472281 (not c!956111)) b!5472280))

(assert (= (and b!5472275 (not res!2332060)) b!5472274))

(assert (= (and b!5472280 c!956109) b!5472276))

(assert (= (and b!5472280 (not c!956109)) b!5472277))

(assert (= (and b!5472276 (not res!2332061)) b!5472272))

(assert (= (or b!5472272 b!5472277) bm!403793))

(assert (= (or b!5472282 b!5472276) bm!403792))

(assert (=> bm!403792 m!6489424))

(declare-fun m!6490004 () Bool)

(assert (=> b!5472274 m!6490004))

(declare-fun m!6490006 () Bool)

(assert (=> b!5472275 m!6490006))

(declare-fun m!6490008 () Bool)

(assert (=> bm!403793 m!6490008))

(assert (=> b!5471530 d!1739479))

(declare-fun b!5472283 () Bool)

(declare-fun e!3387464 () Bool)

(assert (=> b!5472283 (= e!3387464 (not (= (head!11722 s!2326) (c!955901 lt!2235289))))))

(declare-fun b!5472284 () Bool)

(declare-fun e!3387462 () Bool)

(declare-fun lt!2235399 () Bool)

(declare-fun call!403799 () Bool)

(assert (=> b!5472284 (= e!3387462 (= lt!2235399 call!403799))))

(declare-fun b!5472285 () Bool)

(declare-fun e!3387465 () Bool)

(assert (=> b!5472285 (= e!3387465 (matchR!7524 (derivativeStep!4323 lt!2235289 (head!11722 s!2326)) (tail!10819 s!2326)))))

(declare-fun b!5472286 () Bool)

(assert (=> b!5472286 (= e!3387465 (nullable!5478 lt!2235289))))

(declare-fun b!5472287 () Bool)

(declare-fun e!3387460 () Bool)

(assert (=> b!5472287 (= e!3387460 (= (head!11722 s!2326) (c!955901 lt!2235289)))))

(declare-fun b!5472288 () Bool)

(declare-fun res!2332065 () Bool)

(assert (=> b!5472288 (=> res!2332065 e!3387464)))

(assert (=> b!5472288 (= res!2332065 (not (isEmpty!34150 (tail!10819 s!2326))))))

(declare-fun b!5472289 () Bool)

(declare-fun res!2332067 () Bool)

(declare-fun e!3387459 () Bool)

(assert (=> b!5472289 (=> res!2332067 e!3387459)))

(assert (=> b!5472289 (= res!2332067 (not ((_ is ElementMatch!15339) lt!2235289)))))

(declare-fun e!3387461 () Bool)

(assert (=> b!5472289 (= e!3387461 e!3387459)))

(declare-fun b!5472290 () Bool)

(assert (=> b!5472290 (= e!3387461 (not lt!2235399))))

(declare-fun b!5472291 () Bool)

(declare-fun e!3387463 () Bool)

(assert (=> b!5472291 (= e!3387463 e!3387464)))

(declare-fun res!2332069 () Bool)

(assert (=> b!5472291 (=> res!2332069 e!3387464)))

(assert (=> b!5472291 (= res!2332069 call!403799)))

(declare-fun d!1739481 () Bool)

(assert (=> d!1739481 e!3387462))

(declare-fun c!956113 () Bool)

(assert (=> d!1739481 (= c!956113 ((_ is EmptyExpr!15339) lt!2235289))))

(assert (=> d!1739481 (= lt!2235399 e!3387465)))

(declare-fun c!956115 () Bool)

(assert (=> d!1739481 (= c!956115 (isEmpty!34150 s!2326))))

(assert (=> d!1739481 (validRegex!7075 lt!2235289)))

(assert (=> d!1739481 (= (matchR!7524 lt!2235289 s!2326) lt!2235399)))

(declare-fun b!5472292 () Bool)

(assert (=> b!5472292 (= e!3387462 e!3387461)))

(declare-fun c!956114 () Bool)

(assert (=> b!5472292 (= c!956114 ((_ is EmptyLang!15339) lt!2235289))))

(declare-fun b!5472293 () Bool)

(declare-fun res!2332070 () Bool)

(assert (=> b!5472293 (=> (not res!2332070) (not e!3387460))))

(assert (=> b!5472293 (= res!2332070 (isEmpty!34150 (tail!10819 s!2326)))))

(declare-fun bm!403794 () Bool)

(assert (=> bm!403794 (= call!403799 (isEmpty!34150 s!2326))))

(declare-fun b!5472294 () Bool)

(declare-fun res!2332066 () Bool)

(assert (=> b!5472294 (=> res!2332066 e!3387459)))

(assert (=> b!5472294 (= res!2332066 e!3387460)))

(declare-fun res!2332064 () Bool)

(assert (=> b!5472294 (=> (not res!2332064) (not e!3387460))))

(assert (=> b!5472294 (= res!2332064 lt!2235399)))

(declare-fun b!5472295 () Bool)

(declare-fun res!2332068 () Bool)

(assert (=> b!5472295 (=> (not res!2332068) (not e!3387460))))

(assert (=> b!5472295 (= res!2332068 (not call!403799))))

(declare-fun b!5472296 () Bool)

(assert (=> b!5472296 (= e!3387459 e!3387463)))

(declare-fun res!2332063 () Bool)

(assert (=> b!5472296 (=> (not res!2332063) (not e!3387463))))

(assert (=> b!5472296 (= res!2332063 (not lt!2235399))))

(assert (= (and d!1739481 c!956115) b!5472286))

(assert (= (and d!1739481 (not c!956115)) b!5472285))

(assert (= (and d!1739481 c!956113) b!5472284))

(assert (= (and d!1739481 (not c!956113)) b!5472292))

(assert (= (and b!5472292 c!956114) b!5472290))

(assert (= (and b!5472292 (not c!956114)) b!5472289))

(assert (= (and b!5472289 (not res!2332067)) b!5472294))

(assert (= (and b!5472294 res!2332064) b!5472295))

(assert (= (and b!5472295 res!2332068) b!5472293))

(assert (= (and b!5472293 res!2332070) b!5472287))

(assert (= (and b!5472294 (not res!2332066)) b!5472296))

(assert (= (and b!5472296 res!2332063) b!5472291))

(assert (= (and b!5472291 (not res!2332069)) b!5472288))

(assert (= (and b!5472288 (not res!2332065)) b!5472283))

(assert (= (or b!5472284 b!5472291 b!5472295) bm!403794))

(assert (=> b!5472283 m!6489740))

(assert (=> b!5472287 m!6489740))

(assert (=> b!5472293 m!6489744))

(assert (=> b!5472293 m!6489744))

(assert (=> b!5472293 m!6489974))

(declare-fun m!6490010 () Bool)

(assert (=> b!5472286 m!6490010))

(assert (=> d!1739481 m!6489424))

(declare-fun m!6490012 () Bool)

(assert (=> d!1739481 m!6490012))

(assert (=> b!5472288 m!6489744))

(assert (=> b!5472288 m!6489744))

(assert (=> b!5472288 m!6489974))

(assert (=> bm!403794 m!6489424))

(assert (=> b!5472285 m!6489740))

(assert (=> b!5472285 m!6489740))

(declare-fun m!6490014 () Bool)

(assert (=> b!5472285 m!6490014))

(assert (=> b!5472285 m!6489744))

(assert (=> b!5472285 m!6490014))

(assert (=> b!5472285 m!6489744))

(declare-fun m!6490016 () Bool)

(assert (=> b!5472285 m!6490016))

(assert (=> b!5471530 d!1739481))

(declare-fun d!1739483 () Bool)

(assert (=> d!1739483 (= (matchR!7524 lt!2235289 s!2326) (matchRSpec!2442 lt!2235289 s!2326))))

(declare-fun lt!2235400 () Unit!155128)

(assert (=> d!1739483 (= lt!2235400 (choose!41626 lt!2235289 s!2326))))

(assert (=> d!1739483 (validRegex!7075 lt!2235289)))

(assert (=> d!1739483 (= (mainMatchTheorem!2442 lt!2235289 s!2326) lt!2235400)))

(declare-fun bs!1265174 () Bool)

(assert (= bs!1265174 d!1739483))

(assert (=> bs!1265174 m!6489448))

(assert (=> bs!1265174 m!6489446))

(declare-fun m!6490018 () Bool)

(assert (=> bs!1265174 m!6490018))

(assert (=> bs!1265174 m!6490012))

(assert (=> b!5471530 d!1739483))

(declare-fun bs!1265175 () Bool)

(declare-fun d!1739485 () Bool)

(assert (= bs!1265175 (and d!1739485 d!1739341)))

(declare-fun lambda!291317 () Int)

(assert (=> bs!1265175 (= lambda!291317 lambda!291261)))

(declare-fun bs!1265176 () Bool)

(assert (= bs!1265176 (and d!1739485 d!1739379)))

(assert (=> bs!1265176 (= lambda!291317 lambda!291264)))

(declare-fun bs!1265177 () Bool)

(assert (= bs!1265177 (and d!1739485 d!1739401)))

(assert (=> bs!1265177 (= lambda!291317 lambda!291280)))

(declare-fun bs!1265178 () Bool)

(assert (= bs!1265178 (and d!1739485 d!1739417)))

(assert (=> bs!1265178 (= lambda!291317 lambda!291289)))

(assert (=> d!1739485 (= (inv!81594 (h!68641 zl!343)) (forall!14608 (exprs!5223 (h!68641 zl!343)) lambda!291317))))

(declare-fun bs!1265179 () Bool)

(assert (= bs!1265179 d!1739485))

(declare-fun m!6490020 () Bool)

(assert (=> bs!1265179 m!6490020))

(assert (=> b!5471532 d!1739485))

(declare-fun d!1739487 () Bool)

(declare-fun lt!2235401 () Regex!15339)

(assert (=> d!1739487 (validRegex!7075 lt!2235401)))

(assert (=> d!1739487 (= lt!2235401 (generalisedUnion!1268 (unfocusZipperList!781 (Cons!62193 lt!2235278 Nil!62193))))))

(assert (=> d!1739487 (= (unfocusZipper!1081 (Cons!62193 lt!2235278 Nil!62193)) lt!2235401)))

(declare-fun bs!1265180 () Bool)

(assert (= bs!1265180 d!1739487))

(declare-fun m!6490022 () Bool)

(assert (=> bs!1265180 m!6490022))

(declare-fun m!6490024 () Bool)

(assert (=> bs!1265180 m!6490024))

(assert (=> bs!1265180 m!6490024))

(declare-fun m!6490026 () Bool)

(assert (=> bs!1265180 m!6490026))

(assert (=> b!5471522 d!1739487))

(assert (=> b!5471541 d!1739373))

(assert (=> b!5471541 d!1739443))

(declare-fun b!5472301 () Bool)

(declare-fun e!3387468 () Bool)

(declare-fun tp!1504550 () Bool)

(assert (=> b!5472301 (= e!3387468 (and tp_is_empty!39931 tp!1504550))))

(assert (=> b!5471543 (= tp!1504482 e!3387468)))

(assert (= (and b!5471543 ((_ is Cons!62194) (t!375547 s!2326))) b!5472301))

(declare-fun b!5472306 () Bool)

(declare-fun e!3387471 () Bool)

(declare-fun tp!1504555 () Bool)

(declare-fun tp!1504556 () Bool)

(assert (=> b!5472306 (= e!3387471 (and tp!1504555 tp!1504556))))

(assert (=> b!5471518 (= tp!1504487 e!3387471)))

(assert (= (and b!5471518 ((_ is Cons!62192) (exprs!5223 (h!68641 zl!343)))) b!5472306))

(declare-fun b!5472318 () Bool)

(declare-fun e!3387474 () Bool)

(declare-fun tp!1504568 () Bool)

(declare-fun tp!1504571 () Bool)

(assert (=> b!5472318 (= e!3387474 (and tp!1504568 tp!1504571))))

(assert (=> b!5471538 (= tp!1504483 e!3387474)))

(declare-fun b!5472319 () Bool)

(declare-fun tp!1504569 () Bool)

(assert (=> b!5472319 (= e!3387474 tp!1504569)))

(declare-fun b!5472320 () Bool)

(declare-fun tp!1504570 () Bool)

(declare-fun tp!1504567 () Bool)

(assert (=> b!5472320 (= e!3387474 (and tp!1504570 tp!1504567))))

(declare-fun b!5472317 () Bool)

(assert (=> b!5472317 (= e!3387474 tp_is_empty!39931)))

(assert (= (and b!5471538 ((_ is ElementMatch!15339) (regOne!31190 r!7292))) b!5472317))

(assert (= (and b!5471538 ((_ is Concat!24184) (regOne!31190 r!7292))) b!5472318))

(assert (= (and b!5471538 ((_ is Star!15339) (regOne!31190 r!7292))) b!5472319))

(assert (= (and b!5471538 ((_ is Union!15339) (regOne!31190 r!7292))) b!5472320))

(declare-fun b!5472322 () Bool)

(declare-fun e!3387475 () Bool)

(declare-fun tp!1504573 () Bool)

(declare-fun tp!1504576 () Bool)

(assert (=> b!5472322 (= e!3387475 (and tp!1504573 tp!1504576))))

(assert (=> b!5471538 (= tp!1504486 e!3387475)))

(declare-fun b!5472323 () Bool)

(declare-fun tp!1504574 () Bool)

(assert (=> b!5472323 (= e!3387475 tp!1504574)))

(declare-fun b!5472324 () Bool)

(declare-fun tp!1504575 () Bool)

(declare-fun tp!1504572 () Bool)

(assert (=> b!5472324 (= e!3387475 (and tp!1504575 tp!1504572))))

(declare-fun b!5472321 () Bool)

(assert (=> b!5472321 (= e!3387475 tp_is_empty!39931)))

(assert (= (and b!5471538 ((_ is ElementMatch!15339) (regTwo!31190 r!7292))) b!5472321))

(assert (= (and b!5471538 ((_ is Concat!24184) (regTwo!31190 r!7292))) b!5472322))

(assert (= (and b!5471538 ((_ is Star!15339) (regTwo!31190 r!7292))) b!5472323))

(assert (= (and b!5471538 ((_ is Union!15339) (regTwo!31190 r!7292))) b!5472324))

(declare-fun b!5472326 () Bool)

(declare-fun e!3387476 () Bool)

(declare-fun tp!1504578 () Bool)

(declare-fun tp!1504581 () Bool)

(assert (=> b!5472326 (= e!3387476 (and tp!1504578 tp!1504581))))

(assert (=> b!5471535 (= tp!1504489 e!3387476)))

(declare-fun b!5472327 () Bool)

(declare-fun tp!1504579 () Bool)

(assert (=> b!5472327 (= e!3387476 tp!1504579)))

(declare-fun b!5472328 () Bool)

(declare-fun tp!1504580 () Bool)

(declare-fun tp!1504577 () Bool)

(assert (=> b!5472328 (= e!3387476 (and tp!1504580 tp!1504577))))

(declare-fun b!5472325 () Bool)

(assert (=> b!5472325 (= e!3387476 tp_is_empty!39931)))

(assert (= (and b!5471535 ((_ is ElementMatch!15339) (regOne!31191 r!7292))) b!5472325))

(assert (= (and b!5471535 ((_ is Concat!24184) (regOne!31191 r!7292))) b!5472326))

(assert (= (and b!5471535 ((_ is Star!15339) (regOne!31191 r!7292))) b!5472327))

(assert (= (and b!5471535 ((_ is Union!15339) (regOne!31191 r!7292))) b!5472328))

(declare-fun b!5472330 () Bool)

(declare-fun e!3387477 () Bool)

(declare-fun tp!1504583 () Bool)

(declare-fun tp!1504586 () Bool)

(assert (=> b!5472330 (= e!3387477 (and tp!1504583 tp!1504586))))

(assert (=> b!5471535 (= tp!1504484 e!3387477)))

(declare-fun b!5472331 () Bool)

(declare-fun tp!1504584 () Bool)

(assert (=> b!5472331 (= e!3387477 tp!1504584)))

(declare-fun b!5472332 () Bool)

(declare-fun tp!1504585 () Bool)

(declare-fun tp!1504582 () Bool)

(assert (=> b!5472332 (= e!3387477 (and tp!1504585 tp!1504582))))

(declare-fun b!5472329 () Bool)

(assert (=> b!5472329 (= e!3387477 tp_is_empty!39931)))

(assert (= (and b!5471535 ((_ is ElementMatch!15339) (regTwo!31191 r!7292))) b!5472329))

(assert (= (and b!5471535 ((_ is Concat!24184) (regTwo!31191 r!7292))) b!5472330))

(assert (= (and b!5471535 ((_ is Star!15339) (regTwo!31191 r!7292))) b!5472331))

(assert (= (and b!5471535 ((_ is Union!15339) (regTwo!31191 r!7292))) b!5472332))

(declare-fun condSetEmpty!35923 () Bool)

(assert (=> setNonEmpty!35917 (= condSetEmpty!35923 (= setRest!35917 ((as const (Array Context!9446 Bool)) false)))))

(declare-fun setRes!35923 () Bool)

(assert (=> setNonEmpty!35917 (= tp!1504481 setRes!35923)))

(declare-fun setIsEmpty!35923 () Bool)

(assert (=> setIsEmpty!35923 setRes!35923))

(declare-fun e!3387480 () Bool)

(declare-fun setElem!35923 () Context!9446)

(declare-fun setNonEmpty!35923 () Bool)

(declare-fun tp!1504592 () Bool)

(assert (=> setNonEmpty!35923 (= setRes!35923 (and tp!1504592 (inv!81594 setElem!35923) e!3387480))))

(declare-fun setRest!35923 () (InoxSet Context!9446))

(assert (=> setNonEmpty!35923 (= setRest!35917 ((_ map or) (store ((as const (Array Context!9446 Bool)) false) setElem!35923 true) setRest!35923))))

(declare-fun b!5472337 () Bool)

(declare-fun tp!1504591 () Bool)

(assert (=> b!5472337 (= e!3387480 tp!1504591)))

(assert (= (and setNonEmpty!35917 condSetEmpty!35923) setIsEmpty!35923))

(assert (= (and setNonEmpty!35917 (not condSetEmpty!35923)) setNonEmpty!35923))

(assert (= setNonEmpty!35923 b!5472337))

(declare-fun m!6490028 () Bool)

(assert (=> setNonEmpty!35923 m!6490028))

(declare-fun b!5472339 () Bool)

(declare-fun e!3387481 () Bool)

(declare-fun tp!1504594 () Bool)

(declare-fun tp!1504597 () Bool)

(assert (=> b!5472339 (= e!3387481 (and tp!1504594 tp!1504597))))

(assert (=> b!5471531 (= tp!1504488 e!3387481)))

(declare-fun b!5472340 () Bool)

(declare-fun tp!1504595 () Bool)

(assert (=> b!5472340 (= e!3387481 tp!1504595)))

(declare-fun b!5472341 () Bool)

(declare-fun tp!1504596 () Bool)

(declare-fun tp!1504593 () Bool)

(assert (=> b!5472341 (= e!3387481 (and tp!1504596 tp!1504593))))

(declare-fun b!5472338 () Bool)

(assert (=> b!5472338 (= e!3387481 tp_is_empty!39931)))

(assert (= (and b!5471531 ((_ is ElementMatch!15339) (reg!15668 r!7292))) b!5472338))

(assert (= (and b!5471531 ((_ is Concat!24184) (reg!15668 r!7292))) b!5472339))

(assert (= (and b!5471531 ((_ is Star!15339) (reg!15668 r!7292))) b!5472340))

(assert (= (and b!5471531 ((_ is Union!15339) (reg!15668 r!7292))) b!5472341))

(declare-fun b!5472342 () Bool)

(declare-fun e!3387482 () Bool)

(declare-fun tp!1504598 () Bool)

(declare-fun tp!1504599 () Bool)

(assert (=> b!5472342 (= e!3387482 (and tp!1504598 tp!1504599))))

(assert (=> b!5471536 (= tp!1504480 e!3387482)))

(assert (= (and b!5471536 ((_ is Cons!62192) (exprs!5223 setElem!35917))) b!5472342))

(declare-fun b!5472350 () Bool)

(declare-fun e!3387488 () Bool)

(declare-fun tp!1504604 () Bool)

(assert (=> b!5472350 (= e!3387488 tp!1504604)))

(declare-fun tp!1504605 () Bool)

(declare-fun e!3387487 () Bool)

(declare-fun b!5472349 () Bool)

(assert (=> b!5472349 (= e!3387487 (and (inv!81594 (h!68641 (t!375546 zl!343))) e!3387488 tp!1504605))))

(assert (=> b!5471532 (= tp!1504485 e!3387487)))

(assert (= b!5472349 b!5472350))

(assert (= (and b!5471532 ((_ is Cons!62193) (t!375546 zl!343))) b!5472349))

(declare-fun m!6490030 () Bool)

(assert (=> b!5472349 m!6490030))

(declare-fun b_lambda!208003 () Bool)

(assert (= b_lambda!207983 (or b!5471544 b_lambda!208003)))

(declare-fun bs!1265181 () Bool)

(declare-fun d!1739489 () Bool)

(assert (= bs!1265181 (and d!1739489 b!5471544)))

(assert (=> bs!1265181 (= (dynLambda!24425 lambda!291235 lt!2235280) (derivationStepZipperUp!691 lt!2235280 (h!68642 s!2326)))))

(assert (=> bs!1265181 m!6489466))

(assert (=> d!1739325 d!1739489))

(declare-fun b_lambda!208005 () Bool)

(assert (= b_lambda!207999 (or b!5471544 b_lambda!208005)))

(declare-fun bs!1265182 () Bool)

(declare-fun d!1739491 () Bool)

(assert (= bs!1265182 (and d!1739491 b!5471544)))

(assert (=> bs!1265182 (= (dynLambda!24425 lambda!291235 lt!2235278) (derivationStepZipperUp!691 lt!2235278 (h!68642 s!2326)))))

(assert (=> bs!1265182 m!6489490))

(assert (=> d!1739463 d!1739491))

(declare-fun b_lambda!208007 () Bool)

(assert (= b_lambda!207985 (or b!5471544 b_lambda!208007)))

(declare-fun bs!1265183 () Bool)

(declare-fun d!1739493 () Bool)

(assert (= bs!1265183 (and d!1739493 b!5471544)))

(assert (=> bs!1265183 (= (dynLambda!24425 lambda!291235 lt!2235290) (derivationStepZipperUp!691 lt!2235290 (h!68642 s!2326)))))

(assert (=> bs!1265183 m!6489462))

(assert (=> d!1739329 d!1739493))

(declare-fun b_lambda!208009 () Bool)

(assert (= b_lambda!208001 (or b!5471544 b_lambda!208009)))

(declare-fun bs!1265184 () Bool)

(declare-fun d!1739495 () Bool)

(assert (= bs!1265184 (and d!1739495 b!5471544)))

(assert (=> bs!1265184 (= (dynLambda!24425 lambda!291235 (h!68641 zl!343)) (derivationStepZipperUp!691 (h!68641 zl!343) (h!68642 s!2326)))))

(assert (=> bs!1265184 m!6489442))

(assert (=> d!1739475 d!1739495))

(check-sat (not bm!403768) (not b!5472190) (not d!1739401) (not d!1739419) (not d!1739393) (not b!5472229) (not bm!403759) (not b!5471790) (not b!5472240) (not bm!403765) (not b!5472349) (not d!1739423) (not d!1739459) (not d!1739443) (not d!1739317) (not d!1739329) (not b!5471943) (not d!1739339) (not b!5471789) (not b!5471947) (not bs!1265182) (not b_lambda!208009) (not d!1739469) (not b!5472339) (not b!5471658) (not b!5471950) (not b_lambda!208003) (not b!5472293) (not b!5471944) (not b!5472228) (not d!1739331) (not b!5471657) (not b!5472323) (not b!5472337) (not b!5471792) (not bm!403790) (not d!1739441) (not b_lambda!208007) (not d!1739425) (not bm!403794) (not b!5472342) (not b!5471702) (not b!5472328) (not b!5472135) (not b!5471949) (not d!1739397) (not bm!403772) (not b!5471856) (not b!5472230) (not bm!403766) (not bm!403789) (not d!1739483) (not bm!403761) (not b!5471857) (not bs!1265183) (not bm!403792) (not d!1739471) (not b!5471945) (not bm!403767) (not bs!1265181) (not b!5472326) (not bm!403781) (not b!5472134) (not b!5472241) (not bm!403778) (not b!5472092) (not b!5471855) (not b!5472094) (not d!1739429) (not b!5472324) (not b!5472306) tp_is_empty!39931 (not b!5471898) (not bm!403777) (not b!5472332) (not b!5472320) (not d!1739335) (not d!1739395) (not b!5472095) (not b!5472322) (not d!1739341) (not b!5472341) (not d!1739417) (not b!5471793) (not b!5472189) (not b!5472301) (not b!5472274) (not d!1739389) (not b!5472146) (not bm!403793) (not b!5472288) (not d!1739487) (not bm!403725) (not b!5471948) (not b!5472318) (not d!1739485) (not d!1739379) (not setNonEmpty!35923) (not d!1739475) (not b!5472330) (not d!1739447) (not b!5471701) (not b!5472088) (not b!5472151) (not b!5472350) (not b!5472150) (not b!5472286) (not b!5471965) (not b!5472287) (not b!5472130) (not b!5472275) (not b_lambda!208005) (not b!5471854) (not b!5472226) (not b!5471788) (not b!5471794) (not d!1739373) (not b!5472091) (not d!1739463) (not bm!403760) (not b!5472319) (not b!5472285) (not d!1739387) (not bs!1265184) (not d!1739481) (not d!1739467) (not b!5472269) (not b!5472236) (not bm!403782) (not d!1739455) (not b!5472340) (not d!1739449) (not b!5472231) (not b!5472327) (not d!1739325) (not b!5471791) (not b!5472090) (not b!5472331) (not bm!403720) (not b!5472283))
(check-sat)
