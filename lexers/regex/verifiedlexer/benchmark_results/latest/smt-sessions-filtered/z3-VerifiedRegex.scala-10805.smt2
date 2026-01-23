; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554814 () Bool)

(assert start!554814)

(declare-fun b!5250538 () Bool)

(assert (=> b!5250538 true))

(assert (=> b!5250538 true))

(declare-fun lambda!264386 () Int)

(declare-fun lambda!264385 () Int)

(assert (=> b!5250538 (not (= lambda!264386 lambda!264385))))

(assert (=> b!5250538 true))

(assert (=> b!5250538 true))

(declare-fun b!5250547 () Bool)

(assert (=> b!5250547 true))

(declare-fun e!3266582 () Bool)

(declare-fun e!3266570 () Bool)

(declare-datatypes ((C!29984 0))(
  ( (C!29985 (val!24694 Int)) )
))
(declare-datatypes ((Regex!14857 0))(
  ( (ElementMatch!14857 (c!908251 C!29984)) (Concat!23702 (regOne!30226 Regex!14857) (regTwo!30226 Regex!14857)) (EmptyExpr!14857) (Star!14857 (reg!15186 Regex!14857)) (EmptyLang!14857) (Union!14857 (regOne!30227 Regex!14857) (regTwo!30227 Regex!14857)) )
))
(declare-datatypes ((List!60870 0))(
  ( (Nil!60746) (Cons!60746 (h!67194 Regex!14857) (t!374053 List!60870)) )
))
(declare-datatypes ((Context!8482 0))(
  ( (Context!8483 (exprs!4741 List!60870)) )
))
(declare-datatypes ((List!60871 0))(
  ( (Nil!60747) (Cons!60747 (h!67195 Context!8482) (t!374054 List!60871)) )
))
(declare-fun zl!343 () List!60871)

(declare-fun b!5250533 () Bool)

(declare-fun tp!1469045 () Bool)

(declare-fun inv!80389 (Context!8482) Bool)

(assert (=> b!5250533 (= e!3266570 (and (inv!80389 (h!67195 zl!343)) e!3266582 tp!1469045))))

(declare-fun b!5250534 () Bool)

(declare-fun res!2228095 () Bool)

(declare-fun e!3266569 () Bool)

(assert (=> b!5250534 (=> res!2228095 e!3266569)))

(declare-fun r!7292 () Regex!14857)

(declare-fun generalisedConcat!526 (List!60870) Regex!14857)

(assert (=> b!5250534 (= res!2228095 (not (= r!7292 (generalisedConcat!526 (exprs!4741 (h!67195 zl!343))))))))

(declare-fun b!5250535 () Bool)

(declare-fun e!3266575 () Bool)

(declare-fun tp!1469050 () Bool)

(declare-fun tp!1469052 () Bool)

(assert (=> b!5250535 (= e!3266575 (and tp!1469050 tp!1469052))))

(declare-fun b!5250536 () Bool)

(declare-fun res!2228099 () Bool)

(assert (=> b!5250536 (=> res!2228099 e!3266569)))

(get-info :version)

(assert (=> b!5250536 (= res!2228099 (or ((_ is EmptyExpr!14857) r!7292) ((_ is EmptyLang!14857) r!7292) ((_ is ElementMatch!14857) r!7292) ((_ is Union!14857) r!7292) (not ((_ is Concat!23702) r!7292))))))

(declare-fun e!3266577 () Bool)

(assert (=> b!5250538 (= e!3266569 e!3266577)))

(declare-fun res!2228092 () Bool)

(assert (=> b!5250538 (=> res!2228092 e!3266577)))

(declare-datatypes ((List!60872 0))(
  ( (Nil!60748) (Cons!60748 (h!67196 C!29984) (t!374055 List!60872)) )
))
(declare-fun s!2326 () List!60872)

(declare-fun lt!2151468 () Bool)

(declare-fun lt!2151510 () Bool)

(assert (=> b!5250538 (= res!2228092 (or (not (= lt!2151510 lt!2151468)) ((_ is Nil!60748) s!2326)))))

(declare-fun Exists!2038 (Int) Bool)

(assert (=> b!5250538 (= (Exists!2038 lambda!264385) (Exists!2038 lambda!264386))))

(declare-datatypes ((Unit!152870 0))(
  ( (Unit!152871) )
))
(declare-fun lt!2151473 () Unit!152870)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!692 (Regex!14857 Regex!14857 List!60872) Unit!152870)

(assert (=> b!5250538 (= lt!2151473 (lemmaExistCutMatchRandMatchRSpecEquivalent!692 (regOne!30226 r!7292) (regTwo!30226 r!7292) s!2326))))

(assert (=> b!5250538 (= lt!2151468 (Exists!2038 lambda!264385))))

(declare-datatypes ((tuple2!64112 0))(
  ( (tuple2!64113 (_1!35359 List!60872) (_2!35359 List!60872)) )
))
(declare-datatypes ((Option!14968 0))(
  ( (None!14967) (Some!14967 (v!50996 tuple2!64112)) )
))
(declare-fun isDefined!11671 (Option!14968) Bool)

(declare-fun findConcatSeparation!1382 (Regex!14857 Regex!14857 List!60872 List!60872 List!60872) Option!14968)

(assert (=> b!5250538 (= lt!2151468 (isDefined!11671 (findConcatSeparation!1382 (regOne!30226 r!7292) (regTwo!30226 r!7292) Nil!60748 s!2326 s!2326)))))

(declare-fun lt!2151484 () Unit!152870)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1146 (Regex!14857 Regex!14857 List!60872) Unit!152870)

(assert (=> b!5250538 (= lt!2151484 (lemmaFindConcatSeparationEquivalentToExists!1146 (regOne!30226 r!7292) (regTwo!30226 r!7292) s!2326))))

(declare-fun b!5250539 () Bool)

(declare-fun res!2228110 () Bool)

(assert (=> b!5250539 (=> res!2228110 e!3266569)))

(assert (=> b!5250539 (= res!2228110 (not ((_ is Cons!60746) (exprs!4741 (h!67195 zl!343)))))))

(declare-fun b!5250540 () Bool)

(declare-fun e!3266568 () Bool)

(declare-fun e!3266564 () Bool)

(assert (=> b!5250540 (= e!3266568 e!3266564)))

(declare-fun res!2228116 () Bool)

(assert (=> b!5250540 (=> res!2228116 e!3266564)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2151495 () (InoxSet Context!8482))

(declare-fun lt!2151490 () (InoxSet Context!8482))

(assert (=> b!5250540 (= res!2228116 (not (= lt!2151495 lt!2151490)))))

(declare-fun lt!2151486 () (InoxSet Context!8482))

(declare-fun lt!2151483 () (InoxSet Context!8482))

(assert (=> b!5250540 (= lt!2151490 ((_ map or) lt!2151486 lt!2151483))))

(declare-fun lt!2151503 () Context!8482)

(declare-fun derivationStepZipperDown!305 (Regex!14857 Context!8482 C!29984) (InoxSet Context!8482))

(assert (=> b!5250540 (= lt!2151483 (derivationStepZipperDown!305 (regTwo!30227 (regOne!30226 r!7292)) lt!2151503 (h!67196 s!2326)))))

(assert (=> b!5250540 (= lt!2151486 (derivationStepZipperDown!305 (regOne!30227 (regOne!30226 r!7292)) lt!2151503 (h!67196 s!2326)))))

(declare-fun b!5250541 () Bool)

(declare-fun e!3266562 () Bool)

(declare-fun tp_is_empty!38967 () Bool)

(declare-fun tp!1469048 () Bool)

(assert (=> b!5250541 (= e!3266562 (and tp_is_empty!38967 tp!1469048))))

(declare-fun b!5250542 () Bool)

(declare-fun e!3266560 () Bool)

(declare-fun lt!2151487 () (InoxSet Context!8482))

(declare-fun matchZipper!1101 ((InoxSet Context!8482) List!60872) Bool)

(assert (=> b!5250542 (= e!3266560 (matchZipper!1101 lt!2151487 (t!374055 s!2326)))))

(declare-fun b!5250543 () Bool)

(declare-fun e!3266580 () Unit!152870)

(declare-fun Unit!152872 () Unit!152870)

(assert (=> b!5250543 (= e!3266580 Unit!152872)))

(declare-fun b!5250544 () Bool)

(declare-fun tp!1469051 () Bool)

(assert (=> b!5250544 (= e!3266575 tp!1469051)))

(declare-fun b!5250545 () Bool)

(declare-fun tp!1469047 () Bool)

(declare-fun tp!1469046 () Bool)

(assert (=> b!5250545 (= e!3266575 (and tp!1469047 tp!1469046))))

(declare-fun setIsEmpty!33521 () Bool)

(declare-fun setRes!33521 () Bool)

(assert (=> setIsEmpty!33521 setRes!33521))

(declare-fun b!5250546 () Bool)

(declare-fun e!3266579 () Bool)

(assert (=> b!5250546 (= e!3266579 (matchZipper!1101 lt!2151487 (t!374055 s!2326)))))

(assert (=> b!5250547 (= e!3266577 e!3266568)))

(declare-fun res!2228114 () Bool)

(assert (=> b!5250547 (=> res!2228114 e!3266568)))

(assert (=> b!5250547 (= res!2228114 (or (and ((_ is ElementMatch!14857) (regOne!30226 r!7292)) (= (c!908251 (regOne!30226 r!7292)) (h!67196 s!2326))) (not ((_ is Union!14857) (regOne!30226 r!7292)))))))

(declare-fun lt!2151508 () Unit!152870)

(declare-fun e!3266558 () Unit!152870)

(assert (=> b!5250547 (= lt!2151508 e!3266558)))

(declare-fun c!908249 () Bool)

(declare-fun nullable!5026 (Regex!14857) Bool)

(assert (=> b!5250547 (= c!908249 (nullable!5026 (h!67194 (exprs!4741 (h!67195 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8482))

(declare-fun lambda!264387 () Int)

(declare-fun flatMap!584 ((InoxSet Context!8482) Int) (InoxSet Context!8482))

(declare-fun derivationStepZipperUp!229 (Context!8482 C!29984) (InoxSet Context!8482))

(assert (=> b!5250547 (= (flatMap!584 z!1189 lambda!264387) (derivationStepZipperUp!229 (h!67195 zl!343) (h!67196 s!2326)))))

(declare-fun lt!2151479 () Unit!152870)

(declare-fun lemmaFlatMapOnSingletonSet!116 ((InoxSet Context!8482) Context!8482 Int) Unit!152870)

(assert (=> b!5250547 (= lt!2151479 (lemmaFlatMapOnSingletonSet!116 z!1189 (h!67195 zl!343) lambda!264387))))

(assert (=> b!5250547 (= lt!2151487 (derivationStepZipperUp!229 lt!2151503 (h!67196 s!2326)))))

(assert (=> b!5250547 (= lt!2151495 (derivationStepZipperDown!305 (h!67194 (exprs!4741 (h!67195 zl!343))) lt!2151503 (h!67196 s!2326)))))

(assert (=> b!5250547 (= lt!2151503 (Context!8483 (t!374053 (exprs!4741 (h!67195 zl!343)))))))

(declare-fun lt!2151512 () (InoxSet Context!8482))

(assert (=> b!5250547 (= lt!2151512 (derivationStepZipperUp!229 (Context!8483 (Cons!60746 (h!67194 (exprs!4741 (h!67195 zl!343))) (t!374053 (exprs!4741 (h!67195 zl!343))))) (h!67196 s!2326)))))

(declare-fun b!5250548 () Bool)

(declare-fun e!3266584 () Bool)

(declare-fun e!3266574 () Bool)

(assert (=> b!5250548 (= e!3266584 e!3266574)))

(declare-fun res!2228111 () Bool)

(assert (=> b!5250548 (=> res!2228111 e!3266574)))

(declare-fun lt!2151493 () List!60871)

(declare-fun lt!2151466 () Int)

(declare-fun zipperDepthTotal!38 (List!60871) Int)

(assert (=> b!5250548 (= res!2228111 (>= (zipperDepthTotal!38 lt!2151493) lt!2151466))))

(declare-fun lt!2151514 () Context!8482)

(assert (=> b!5250548 (= lt!2151493 (Cons!60747 lt!2151514 Nil!60747))))

(declare-fun b!5250549 () Bool)

(declare-fun e!3266576 () Bool)

(declare-fun e!3266563 () Bool)

(assert (=> b!5250549 (= e!3266576 e!3266563)))

(declare-fun res!2228107 () Bool)

(assert (=> b!5250549 (=> res!2228107 e!3266563)))

(declare-fun lt!2151502 () Regex!14857)

(assert (=> b!5250549 (= res!2228107 (not (= r!7292 lt!2151502)))))

(assert (=> b!5250549 (= lt!2151502 (Concat!23702 (Union!14857 (regOne!30227 (regOne!30226 r!7292)) (regTwo!30227 (regOne!30226 r!7292))) (regTwo!30226 r!7292)))))

(declare-fun b!5250550 () Bool)

(declare-fun res!2228109 () Bool)

(declare-fun e!3266572 () Bool)

(assert (=> b!5250550 (=> res!2228109 e!3266572)))

(declare-fun lt!2151471 () Regex!14857)

(assert (=> b!5250550 (= res!2228109 (or (not (= lt!2151471 r!7292)) (not (= (exprs!4741 (h!67195 zl!343)) (Cons!60746 (regOne!30226 r!7292) (t!374053 (exprs!4741 (h!67195 zl!343))))))))))

(declare-fun b!5250551 () Bool)

(declare-fun e!3266567 () Bool)

(assert (=> b!5250551 (= e!3266567 (not (matchZipper!1101 lt!2151483 (t!374055 s!2326))))))

(declare-fun b!5250552 () Bool)

(declare-fun e!3266581 () Bool)

(declare-fun validRegex!6593 (Regex!14857) Bool)

(assert (=> b!5250552 (= e!3266581 (validRegex!6593 lt!2151502))))

(declare-fun matchR!7042 (Regex!14857 List!60872) Bool)

(assert (=> b!5250552 (= (matchR!7042 lt!2151502 s!2326) (matchR!7042 (Union!14857 (Concat!23702 (regOne!30227 (regOne!30226 r!7292)) (regTwo!30226 r!7292)) (Concat!23702 (regTwo!30227 (regOne!30226 r!7292)) (regTwo!30226 r!7292))) s!2326))))

(declare-fun lt!2151480 () Unit!152870)

(declare-fun lemmaConcatDistributesInUnion!2 (Regex!14857 Regex!14857 Regex!14857 List!60872) Unit!152870)

(assert (=> b!5250552 (= lt!2151480 (lemmaConcatDistributesInUnion!2 (regOne!30227 (regOne!30226 r!7292)) (regTwo!30227 (regOne!30226 r!7292)) (regTwo!30226 r!7292) s!2326))))

(declare-fun b!5250553 () Bool)

(declare-fun e!3266583 () Bool)

(assert (=> b!5250553 (= e!3266583 (matchZipper!1101 lt!2151483 (t!374055 s!2326)))))

(declare-fun b!5250554 () Bool)

(declare-fun res!2228108 () Bool)

(assert (=> b!5250554 (=> res!2228108 e!3266569)))

(declare-fun isEmpty!32687 (List!60871) Bool)

(assert (=> b!5250554 (= res!2228108 (not (isEmpty!32687 (t!374054 zl!343))))))

(declare-fun res!2228096 () Bool)

(declare-fun e!3266561 () Bool)

(assert (=> start!554814 (=> (not res!2228096) (not e!3266561))))

(assert (=> start!554814 (= res!2228096 (validRegex!6593 r!7292))))

(assert (=> start!554814 e!3266561))

(assert (=> start!554814 e!3266575))

(declare-fun condSetEmpty!33521 () Bool)

(assert (=> start!554814 (= condSetEmpty!33521 (= z!1189 ((as const (Array Context!8482 Bool)) false)))))

(assert (=> start!554814 setRes!33521))

(assert (=> start!554814 e!3266570))

(assert (=> start!554814 e!3266562))

(declare-fun b!5250537 () Bool)

(declare-fun e!3266559 () Bool)

(assert (=> b!5250537 (= e!3266564 e!3266559)))

(declare-fun res!2228097 () Bool)

(assert (=> b!5250537 (=> res!2228097 e!3266559)))

(assert (=> b!5250537 (= res!2228097 e!3266567)))

(declare-fun res!2228102 () Bool)

(assert (=> b!5250537 (=> (not res!2228102) (not e!3266567))))

(declare-fun lt!2151497 () Bool)

(assert (=> b!5250537 (= res!2228102 (not (= (matchZipper!1101 lt!2151495 (t!374055 s!2326)) lt!2151497)))))

(assert (=> b!5250537 (= (matchZipper!1101 lt!2151490 (t!374055 s!2326)) e!3266583)))

(declare-fun res!2228094 () Bool)

(assert (=> b!5250537 (=> res!2228094 e!3266583)))

(assert (=> b!5250537 (= res!2228094 lt!2151497)))

(assert (=> b!5250537 (= lt!2151497 (matchZipper!1101 lt!2151486 (t!374055 s!2326)))))

(declare-fun lt!2151481 () Unit!152870)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!94 ((InoxSet Context!8482) (InoxSet Context!8482) List!60872) Unit!152870)

(assert (=> b!5250537 (= lt!2151481 (lemmaZipperConcatMatchesSameAsBothZippers!94 lt!2151486 lt!2151483 (t!374055 s!2326)))))

(declare-fun b!5250555 () Bool)

(declare-fun e!3266573 () Bool)

(declare-fun tp!1469044 () Bool)

(assert (=> b!5250555 (= e!3266573 tp!1469044)))

(declare-fun setNonEmpty!33521 () Bool)

(declare-fun tp!1469053 () Bool)

(declare-fun setElem!33521 () Context!8482)

(assert (=> setNonEmpty!33521 (= setRes!33521 (and tp!1469053 (inv!80389 setElem!33521) e!3266573))))

(declare-fun setRest!33521 () (InoxSet Context!8482))

(assert (=> setNonEmpty!33521 (= z!1189 ((_ map or) (store ((as const (Array Context!8482 Bool)) false) setElem!33521 true) setRest!33521))))

(declare-fun b!5250556 () Bool)

(assert (=> b!5250556 (= e!3266563 e!3266581)))

(declare-fun res!2228100 () Bool)

(assert (=> b!5250556 (=> res!2228100 e!3266581)))

(declare-fun lt!2151513 () Regex!14857)

(declare-fun lt!2151476 () Regex!14857)

(declare-fun lt!2151482 () Regex!14857)

(assert (=> b!5250556 (= res!2228100 (or (not (= lt!2151476 (Concat!23702 (regOne!30227 (regOne!30226 r!7292)) lt!2151482))) (not (= lt!2151513 (Concat!23702 (regTwo!30227 (regOne!30226 r!7292)) lt!2151482))) (not (= (regTwo!30226 r!7292) lt!2151482))))))

(assert (=> b!5250556 (= lt!2151482 (generalisedConcat!526 (t!374053 (exprs!4741 (h!67195 zl!343)))))))

(declare-fun b!5250557 () Bool)

(assert (=> b!5250557 (= e!3266559 e!3266572)))

(declare-fun res!2228103 () Bool)

(assert (=> b!5250557 (=> res!2228103 e!3266572)))

(declare-fun lt!2151500 () Bool)

(declare-fun e!3266578 () Bool)

(assert (=> b!5250557 (= res!2228103 (not (= lt!2151500 e!3266578)))))

(declare-fun res!2228115 () Bool)

(assert (=> b!5250557 (=> res!2228115 e!3266578)))

(declare-fun lt!2151475 () Bool)

(assert (=> b!5250557 (= res!2228115 lt!2151475)))

(assert (=> b!5250557 (= lt!2151500 (matchZipper!1101 z!1189 s!2326))))

(declare-fun lt!2151506 () (InoxSet Context!8482))

(assert (=> b!5250557 (= lt!2151475 (matchZipper!1101 lt!2151506 s!2326))))

(declare-fun lt!2151491 () Unit!152870)

(declare-fun e!3266565 () Unit!152870)

(assert (=> b!5250557 (= lt!2151491 e!3266565)))

(declare-fun c!908248 () Bool)

(assert (=> b!5250557 (= c!908248 (nullable!5026 (regTwo!30227 (regOne!30226 r!7292))))))

(declare-fun lt!2151498 () (InoxSet Context!8482))

(assert (=> b!5250557 (= (flatMap!584 lt!2151498 lambda!264387) (derivationStepZipperUp!229 lt!2151514 (h!67196 s!2326)))))

(declare-fun lt!2151499 () Unit!152870)

(assert (=> b!5250557 (= lt!2151499 (lemmaFlatMapOnSingletonSet!116 lt!2151498 lt!2151514 lambda!264387))))

(declare-fun lt!2151489 () (InoxSet Context!8482))

(assert (=> b!5250557 (= lt!2151489 (derivationStepZipperUp!229 lt!2151514 (h!67196 s!2326)))))

(declare-fun lt!2151505 () Unit!152870)

(assert (=> b!5250557 (= lt!2151505 e!3266580)))

(declare-fun c!908250 () Bool)

(assert (=> b!5250557 (= c!908250 (nullable!5026 (regOne!30227 (regOne!30226 r!7292))))))

(declare-fun lt!2151501 () Context!8482)

(assert (=> b!5250557 (= (flatMap!584 lt!2151506 lambda!264387) (derivationStepZipperUp!229 lt!2151501 (h!67196 s!2326)))))

(declare-fun lt!2151467 () Unit!152870)

(assert (=> b!5250557 (= lt!2151467 (lemmaFlatMapOnSingletonSet!116 lt!2151506 lt!2151501 lambda!264387))))

(declare-fun lt!2151494 () (InoxSet Context!8482))

(assert (=> b!5250557 (= lt!2151494 (derivationStepZipperUp!229 lt!2151501 (h!67196 s!2326)))))

(assert (=> b!5250557 (= lt!2151498 (store ((as const (Array Context!8482 Bool)) false) lt!2151514 true))))

(declare-fun lt!2151470 () List!60870)

(assert (=> b!5250557 (= lt!2151514 (Context!8483 lt!2151470))))

(assert (=> b!5250557 (= lt!2151470 (Cons!60746 (regTwo!30227 (regOne!30226 r!7292)) (t!374053 (exprs!4741 (h!67195 zl!343)))))))

(assert (=> b!5250557 (= lt!2151506 (store ((as const (Array Context!8482 Bool)) false) lt!2151501 true))))

(declare-fun lt!2151492 () List!60870)

(assert (=> b!5250557 (= lt!2151501 (Context!8483 lt!2151492))))

(assert (=> b!5250557 (= lt!2151492 (Cons!60746 (regOne!30227 (regOne!30226 r!7292)) (t!374053 (exprs!4741 (h!67195 zl!343)))))))

(declare-fun b!5250558 () Bool)

(declare-fun e!3266571 () Bool)

(assert (=> b!5250558 (= e!3266571 (matchZipper!1101 lt!2151487 (t!374055 s!2326)))))

(declare-fun b!5250559 () Bool)

(declare-fun Unit!152873 () Unit!152870)

(assert (=> b!5250559 (= e!3266558 Unit!152873)))

(declare-fun lt!2151474 () Unit!152870)

(assert (=> b!5250559 (= lt!2151474 (lemmaZipperConcatMatchesSameAsBothZippers!94 lt!2151495 lt!2151487 (t!374055 s!2326)))))

(declare-fun res!2228101 () Bool)

(assert (=> b!5250559 (= res!2228101 (matchZipper!1101 lt!2151495 (t!374055 s!2326)))))

(assert (=> b!5250559 (=> res!2228101 e!3266579)))

(assert (=> b!5250559 (= (matchZipper!1101 ((_ map or) lt!2151495 lt!2151487) (t!374055 s!2326)) e!3266579)))

(declare-fun b!5250560 () Bool)

(declare-fun tp!1469049 () Bool)

(assert (=> b!5250560 (= e!3266582 tp!1469049)))

(declare-fun b!5250561 () Bool)

(assert (=> b!5250561 (= e!3266578 (matchZipper!1101 lt!2151498 s!2326))))

(declare-fun b!5250562 () Bool)

(declare-fun res!2228106 () Bool)

(assert (=> b!5250562 (=> res!2228106 e!3266577)))

(declare-fun isEmpty!32688 (List!60870) Bool)

(assert (=> b!5250562 (= res!2228106 (isEmpty!32688 (t!374053 (exprs!4741 (h!67195 zl!343)))))))

(declare-fun b!5250563 () Bool)

(declare-fun res!2228098 () Bool)

(assert (=> b!5250563 (=> res!2228098 e!3266569)))

(declare-fun generalisedUnion!786 (List!60870) Regex!14857)

(declare-fun unfocusZipperList!299 (List!60871) List!60870)

(assert (=> b!5250563 (= res!2228098 (not (= r!7292 (generalisedUnion!786 (unfocusZipperList!299 zl!343)))))))

(declare-fun b!5250564 () Bool)

(declare-fun Unit!152874 () Unit!152870)

(assert (=> b!5250564 (= e!3266580 Unit!152874)))

(declare-fun lt!2151504 () Unit!152870)

(assert (=> b!5250564 (= lt!2151504 (lemmaZipperConcatMatchesSameAsBothZippers!94 lt!2151486 lt!2151487 (t!374055 s!2326)))))

(declare-fun res!2228112 () Bool)

(assert (=> b!5250564 (= res!2228112 lt!2151497)))

(assert (=> b!5250564 (=> res!2228112 e!3266571)))

(assert (=> b!5250564 (= (matchZipper!1101 ((_ map or) lt!2151486 lt!2151487) (t!374055 s!2326)) e!3266571)))

(declare-fun b!5250565 () Bool)

(declare-fun e!3266566 () Bool)

(assert (=> b!5250565 (= e!3266566 (not e!3266569))))

(declare-fun res!2228117 () Bool)

(assert (=> b!5250565 (=> res!2228117 e!3266569)))

(assert (=> b!5250565 (= res!2228117 (not ((_ is Cons!60747) zl!343)))))

(declare-fun matchRSpec!1960 (Regex!14857 List!60872) Bool)

(assert (=> b!5250565 (= lt!2151510 (matchRSpec!1960 r!7292 s!2326))))

(assert (=> b!5250565 (= lt!2151510 (matchR!7042 r!7292 s!2326))))

(declare-fun lt!2151469 () Unit!152870)

(declare-fun mainMatchTheorem!1960 (Regex!14857 List!60872) Unit!152870)

(assert (=> b!5250565 (= lt!2151469 (mainMatchTheorem!1960 r!7292 s!2326))))

(declare-fun b!5250566 () Bool)

(declare-fun Unit!152875 () Unit!152870)

(assert (=> b!5250566 (= e!3266565 Unit!152875)))

(declare-fun b!5250567 () Bool)

(declare-fun Unit!152876 () Unit!152870)

(assert (=> b!5250567 (= e!3266558 Unit!152876)))

(declare-fun b!5250568 () Bool)

(declare-fun Unit!152877 () Unit!152870)

(assert (=> b!5250568 (= e!3266565 Unit!152877)))

(declare-fun lt!2151478 () Unit!152870)

(assert (=> b!5250568 (= lt!2151478 (lemmaZipperConcatMatchesSameAsBothZippers!94 lt!2151483 lt!2151487 (t!374055 s!2326)))))

(declare-fun res!2228113 () Bool)

(assert (=> b!5250568 (= res!2228113 (matchZipper!1101 lt!2151483 (t!374055 s!2326)))))

(assert (=> b!5250568 (=> res!2228113 e!3266560)))

(assert (=> b!5250568 (= (matchZipper!1101 ((_ map or) lt!2151483 lt!2151487) (t!374055 s!2326)) e!3266560)))

(declare-fun b!5250569 () Bool)

(assert (=> b!5250569 (= e!3266572 e!3266584)))

(declare-fun res!2228104 () Bool)

(assert (=> b!5250569 (=> res!2228104 e!3266584)))

(declare-fun lt!2151472 () Int)

(assert (=> b!5250569 (= res!2228104 (>= lt!2151472 lt!2151466))))

(assert (=> b!5250569 (= lt!2151466 (zipperDepthTotal!38 zl!343))))

(declare-fun lt!2151477 () List!60871)

(assert (=> b!5250569 (= lt!2151472 (zipperDepthTotal!38 lt!2151477))))

(assert (=> b!5250569 (= lt!2151477 (Cons!60747 lt!2151501 Nil!60747))))

(declare-fun b!5250570 () Bool)

(assert (=> b!5250570 (= e!3266575 tp_is_empty!38967)))

(declare-fun b!5250571 () Bool)

(assert (=> b!5250571 (= e!3266561 e!3266566)))

(declare-fun res!2228105 () Bool)

(assert (=> b!5250571 (=> (not res!2228105) (not e!3266566))))

(assert (=> b!5250571 (= res!2228105 (= r!7292 lt!2151471))))

(declare-fun unfocusZipper!599 (List!60871) Regex!14857)

(assert (=> b!5250571 (= lt!2151471 (unfocusZipper!599 zl!343))))

(declare-fun b!5250572 () Bool)

(declare-fun res!2228093 () Bool)

(assert (=> b!5250572 (=> (not res!2228093) (not e!3266561))))

(declare-fun toList!8641 ((InoxSet Context!8482)) List!60871)

(assert (=> b!5250572 (= res!2228093 (= (toList!8641 z!1189) zl!343))))

(declare-fun b!5250573 () Bool)

(assert (=> b!5250573 (= e!3266574 e!3266576)))

(declare-fun res!2228091 () Bool)

(assert (=> b!5250573 (=> res!2228091 e!3266576)))

(declare-fun lt!2151496 () Bool)

(declare-fun lt!2151509 () Bool)

(assert (=> b!5250573 (= res!2228091 (and (not (= lt!2151500 lt!2151496)) (not lt!2151509)))))

(assert (=> b!5250573 (= lt!2151509 (matchRSpec!1960 lt!2151513 s!2326))))

(declare-fun lt!2151485 () Unit!152870)

(assert (=> b!5250573 (= lt!2151485 (mainMatchTheorem!1960 lt!2151513 s!2326))))

(assert (=> b!5250573 (= lt!2151496 (matchRSpec!1960 lt!2151476 s!2326))))

(declare-fun lt!2151507 () Unit!152870)

(assert (=> b!5250573 (= lt!2151507 (mainMatchTheorem!1960 lt!2151476 s!2326))))

(assert (=> b!5250573 (= lt!2151509 (matchZipper!1101 lt!2151498 s!2326))))

(assert (=> b!5250573 (= lt!2151509 (matchR!7042 lt!2151513 s!2326))))

(declare-fun lt!2151511 () Unit!152870)

(declare-fun theoremZipperRegexEquiv!291 ((InoxSet Context!8482) List!60871 Regex!14857 List!60872) Unit!152870)

(assert (=> b!5250573 (= lt!2151511 (theoremZipperRegexEquiv!291 lt!2151498 lt!2151493 lt!2151513 s!2326))))

(assert (=> b!5250573 (= lt!2151513 (generalisedConcat!526 lt!2151470))))

(assert (=> b!5250573 (= lt!2151496 lt!2151475)))

(assert (=> b!5250573 (= lt!2151496 (matchR!7042 lt!2151476 s!2326))))

(declare-fun lt!2151488 () Unit!152870)

(assert (=> b!5250573 (= lt!2151488 (theoremZipperRegexEquiv!291 lt!2151506 lt!2151477 lt!2151476 s!2326))))

(assert (=> b!5250573 (= lt!2151476 (generalisedConcat!526 lt!2151492))))

(assert (= (and start!554814 res!2228096) b!5250572))

(assert (= (and b!5250572 res!2228093) b!5250571))

(assert (= (and b!5250571 res!2228105) b!5250565))

(assert (= (and b!5250565 (not res!2228117)) b!5250554))

(assert (= (and b!5250554 (not res!2228108)) b!5250534))

(assert (= (and b!5250534 (not res!2228095)) b!5250539))

(assert (= (and b!5250539 (not res!2228110)) b!5250563))

(assert (= (and b!5250563 (not res!2228098)) b!5250536))

(assert (= (and b!5250536 (not res!2228099)) b!5250538))

(assert (= (and b!5250538 (not res!2228092)) b!5250562))

(assert (= (and b!5250562 (not res!2228106)) b!5250547))

(assert (= (and b!5250547 c!908249) b!5250559))

(assert (= (and b!5250547 (not c!908249)) b!5250567))

(assert (= (and b!5250559 (not res!2228101)) b!5250546))

(assert (= (and b!5250547 (not res!2228114)) b!5250540))

(assert (= (and b!5250540 (not res!2228116)) b!5250537))

(assert (= (and b!5250537 (not res!2228094)) b!5250553))

(assert (= (and b!5250537 res!2228102) b!5250551))

(assert (= (and b!5250537 (not res!2228097)) b!5250557))

(assert (= (and b!5250557 c!908250) b!5250564))

(assert (= (and b!5250557 (not c!908250)) b!5250543))

(assert (= (and b!5250564 (not res!2228112)) b!5250558))

(assert (= (and b!5250557 c!908248) b!5250568))

(assert (= (and b!5250557 (not c!908248)) b!5250566))

(assert (= (and b!5250568 (not res!2228113)) b!5250542))

(assert (= (and b!5250557 (not res!2228115)) b!5250561))

(assert (= (and b!5250557 (not res!2228103)) b!5250550))

(assert (= (and b!5250550 (not res!2228109)) b!5250569))

(assert (= (and b!5250569 (not res!2228104)) b!5250548))

(assert (= (and b!5250548 (not res!2228111)) b!5250573))

(assert (= (and b!5250573 (not res!2228091)) b!5250549))

(assert (= (and b!5250549 (not res!2228107)) b!5250556))

(assert (= (and b!5250556 (not res!2228100)) b!5250552))

(assert (= (and start!554814 ((_ is ElementMatch!14857) r!7292)) b!5250570))

(assert (= (and start!554814 ((_ is Concat!23702) r!7292)) b!5250535))

(assert (= (and start!554814 ((_ is Star!14857) r!7292)) b!5250544))

(assert (= (and start!554814 ((_ is Union!14857) r!7292)) b!5250545))

(assert (= (and start!554814 condSetEmpty!33521) setIsEmpty!33521))

(assert (= (and start!554814 (not condSetEmpty!33521)) setNonEmpty!33521))

(assert (= setNonEmpty!33521 b!5250555))

(assert (= b!5250533 b!5250560))

(assert (= (and start!554814 ((_ is Cons!60747) zl!343)) b!5250533))

(assert (= (and start!554814 ((_ is Cons!60748) s!2326)) b!5250541))

(declare-fun m!6293730 () Bool)

(assert (=> start!554814 m!6293730))

(declare-fun m!6293732 () Bool)

(assert (=> b!5250558 m!6293732))

(assert (=> b!5250542 m!6293732))

(declare-fun m!6293734 () Bool)

(assert (=> b!5250565 m!6293734))

(declare-fun m!6293736 () Bool)

(assert (=> b!5250565 m!6293736))

(declare-fun m!6293738 () Bool)

(assert (=> b!5250565 m!6293738))

(declare-fun m!6293740 () Bool)

(assert (=> b!5250557 m!6293740))

(declare-fun m!6293742 () Bool)

(assert (=> b!5250557 m!6293742))

(declare-fun m!6293744 () Bool)

(assert (=> b!5250557 m!6293744))

(declare-fun m!6293746 () Bool)

(assert (=> b!5250557 m!6293746))

(declare-fun m!6293748 () Bool)

(assert (=> b!5250557 m!6293748))

(declare-fun m!6293750 () Bool)

(assert (=> b!5250557 m!6293750))

(declare-fun m!6293752 () Bool)

(assert (=> b!5250557 m!6293752))

(declare-fun m!6293754 () Bool)

(assert (=> b!5250557 m!6293754))

(declare-fun m!6293756 () Bool)

(assert (=> b!5250557 m!6293756))

(declare-fun m!6293758 () Bool)

(assert (=> b!5250557 m!6293758))

(declare-fun m!6293760 () Bool)

(assert (=> b!5250557 m!6293760))

(declare-fun m!6293762 () Bool)

(assert (=> b!5250557 m!6293762))

(declare-fun m!6293764 () Bool)

(assert (=> b!5250563 m!6293764))

(assert (=> b!5250563 m!6293764))

(declare-fun m!6293766 () Bool)

(assert (=> b!5250563 m!6293766))

(declare-fun m!6293768 () Bool)

(assert (=> b!5250564 m!6293768))

(declare-fun m!6293770 () Bool)

(assert (=> b!5250564 m!6293770))

(declare-fun m!6293772 () Bool)

(assert (=> b!5250548 m!6293772))

(declare-fun m!6293774 () Bool)

(assert (=> b!5250571 m!6293774))

(declare-fun m!6293776 () Bool)

(assert (=> b!5250537 m!6293776))

(declare-fun m!6293778 () Bool)

(assert (=> b!5250537 m!6293778))

(declare-fun m!6293780 () Bool)

(assert (=> b!5250537 m!6293780))

(declare-fun m!6293782 () Bool)

(assert (=> b!5250537 m!6293782))

(assert (=> b!5250546 m!6293732))

(declare-fun m!6293784 () Bool)

(assert (=> b!5250568 m!6293784))

(declare-fun m!6293786 () Bool)

(assert (=> b!5250568 m!6293786))

(declare-fun m!6293788 () Bool)

(assert (=> b!5250568 m!6293788))

(declare-fun m!6293790 () Bool)

(assert (=> b!5250552 m!6293790))

(declare-fun m!6293792 () Bool)

(assert (=> b!5250552 m!6293792))

(declare-fun m!6293794 () Bool)

(assert (=> b!5250552 m!6293794))

(declare-fun m!6293796 () Bool)

(assert (=> b!5250552 m!6293796))

(declare-fun m!6293798 () Bool)

(assert (=> b!5250573 m!6293798))

(declare-fun m!6293800 () Bool)

(assert (=> b!5250573 m!6293800))

(declare-fun m!6293802 () Bool)

(assert (=> b!5250573 m!6293802))

(declare-fun m!6293804 () Bool)

(assert (=> b!5250573 m!6293804))

(declare-fun m!6293806 () Bool)

(assert (=> b!5250573 m!6293806))

(declare-fun m!6293808 () Bool)

(assert (=> b!5250573 m!6293808))

(declare-fun m!6293810 () Bool)

(assert (=> b!5250573 m!6293810))

(declare-fun m!6293812 () Bool)

(assert (=> b!5250573 m!6293812))

(declare-fun m!6293814 () Bool)

(assert (=> b!5250573 m!6293814))

(declare-fun m!6293816 () Bool)

(assert (=> b!5250573 m!6293816))

(declare-fun m!6293818 () Bool)

(assert (=> b!5250573 m!6293818))

(declare-fun m!6293820 () Bool)

(assert (=> b!5250547 m!6293820))

(declare-fun m!6293822 () Bool)

(assert (=> b!5250547 m!6293822))

(declare-fun m!6293824 () Bool)

(assert (=> b!5250547 m!6293824))

(declare-fun m!6293826 () Bool)

(assert (=> b!5250547 m!6293826))

(declare-fun m!6293828 () Bool)

(assert (=> b!5250547 m!6293828))

(declare-fun m!6293830 () Bool)

(assert (=> b!5250547 m!6293830))

(declare-fun m!6293832 () Bool)

(assert (=> b!5250547 m!6293832))

(assert (=> b!5250561 m!6293808))

(declare-fun m!6293834 () Bool)

(assert (=> b!5250572 m!6293834))

(declare-fun m!6293836 () Bool)

(assert (=> setNonEmpty!33521 m!6293836))

(declare-fun m!6293838 () Bool)

(assert (=> b!5250569 m!6293838))

(declare-fun m!6293840 () Bool)

(assert (=> b!5250569 m!6293840))

(declare-fun m!6293842 () Bool)

(assert (=> b!5250538 m!6293842))

(declare-fun m!6293844 () Bool)

(assert (=> b!5250538 m!6293844))

(declare-fun m!6293846 () Bool)

(assert (=> b!5250538 m!6293846))

(declare-fun m!6293848 () Bool)

(assert (=> b!5250538 m!6293848))

(assert (=> b!5250538 m!6293842))

(declare-fun m!6293850 () Bool)

(assert (=> b!5250538 m!6293850))

(assert (=> b!5250538 m!6293848))

(declare-fun m!6293852 () Bool)

(assert (=> b!5250538 m!6293852))

(declare-fun m!6293854 () Bool)

(assert (=> b!5250540 m!6293854))

(declare-fun m!6293856 () Bool)

(assert (=> b!5250540 m!6293856))

(declare-fun m!6293858 () Bool)

(assert (=> b!5250554 m!6293858))

(declare-fun m!6293860 () Bool)

(assert (=> b!5250562 m!6293860))

(declare-fun m!6293862 () Bool)

(assert (=> b!5250534 m!6293862))

(declare-fun m!6293864 () Bool)

(assert (=> b!5250556 m!6293864))

(declare-fun m!6293866 () Bool)

(assert (=> b!5250559 m!6293866))

(assert (=> b!5250559 m!6293776))

(declare-fun m!6293868 () Bool)

(assert (=> b!5250559 m!6293868))

(assert (=> b!5250551 m!6293786))

(declare-fun m!6293870 () Bool)

(assert (=> b!5250533 m!6293870))

(assert (=> b!5250553 m!6293786))

(check-sat (not setNonEmpty!33521) (not b!5250553) (not start!554814) (not b!5250547) (not b!5250533) (not b!5250564) (not b!5250535) (not b!5250571) (not b!5250542) (not b!5250554) (not b!5250565) (not b!5250546) (not b!5250559) (not b!5250568) (not b!5250537) (not b!5250560) (not b!5250563) (not b!5250569) (not b!5250544) tp_is_empty!38967 (not b!5250555) (not b!5250561) (not b!5250548) (not b!5250534) (not b!5250556) (not b!5250540) (not b!5250572) (not b!5250551) (not b!5250541) (not b!5250545) (not b!5250552) (not b!5250557) (not b!5250562) (not b!5250538) (not b!5250558) (not b!5250573))
(check-sat)
