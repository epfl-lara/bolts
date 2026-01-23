; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582816 () Bool)

(assert start!582816)

(declare-fun b!5625402 () Bool)

(assert (=> b!5625402 true))

(assert (=> b!5625402 true))

(declare-fun lambda!302119 () Int)

(declare-fun lambda!302118 () Int)

(assert (=> b!5625402 (not (= lambda!302119 lambda!302118))))

(assert (=> b!5625402 true))

(assert (=> b!5625402 true))

(declare-fun b!5625384 () Bool)

(assert (=> b!5625384 true))

(declare-fun b!5625381 () Bool)

(declare-fun e!3467486 () Bool)

(declare-fun e!3467493 () Bool)

(assert (=> b!5625381 (= e!3467486 (not e!3467493))))

(declare-fun res!2382610 () Bool)

(assert (=> b!5625381 (=> res!2382610 e!3467493)))

(declare-datatypes ((C!31500 0))(
  ( (C!31501 (val!25452 Int)) )
))
(declare-datatypes ((Regex!15615 0))(
  ( (ElementMatch!15615 (c!987439 C!31500)) (Concat!24460 (regOne!31742 Regex!15615) (regTwo!31742 Regex!15615)) (EmptyExpr!15615) (Star!15615 (reg!15944 Regex!15615)) (EmptyLang!15615) (Union!15615 (regOne!31743 Regex!15615) (regTwo!31743 Regex!15615)) )
))
(declare-datatypes ((List!63144 0))(
  ( (Nil!63020) (Cons!63020 (h!69468 Regex!15615) (t!376436 List!63144)) )
))
(declare-datatypes ((Context!9998 0))(
  ( (Context!9999 (exprs!5499 List!63144)) )
))
(declare-datatypes ((List!63145 0))(
  ( (Nil!63021) (Cons!63021 (h!69469 Context!9998) (t!376437 List!63145)) )
))
(declare-fun zl!343 () List!63145)

(get-info :version)

(assert (=> b!5625381 (= res!2382610 (not ((_ is Cons!63021) zl!343)))))

(declare-fun lt!2261345 () Bool)

(declare-fun r!7292 () Regex!15615)

(declare-datatypes ((List!63146 0))(
  ( (Nil!63022) (Cons!63022 (h!69470 C!31500) (t!376438 List!63146)) )
))
(declare-fun s!2326 () List!63146)

(declare-fun matchRSpec!2718 (Regex!15615 List!63146) Bool)

(assert (=> b!5625381 (= lt!2261345 (matchRSpec!2718 r!7292 s!2326))))

(declare-fun matchR!7800 (Regex!15615 List!63146) Bool)

(assert (=> b!5625381 (= lt!2261345 (matchR!7800 r!7292 s!2326))))

(declare-datatypes ((Unit!155992 0))(
  ( (Unit!155993) )
))
(declare-fun lt!2261331 () Unit!155992)

(declare-fun mainMatchTheorem!2718 (Regex!15615 List!63146) Unit!155992)

(assert (=> b!5625381 (= lt!2261331 (mainMatchTheorem!2718 r!7292 s!2326))))

(declare-fun b!5625382 () Bool)

(declare-fun res!2382615 () Bool)

(assert (=> b!5625382 (=> (not res!2382615) (not e!3467486))))

(declare-fun unfocusZipper!1357 (List!63145) Regex!15615)

(assert (=> b!5625382 (= res!2382615 (= r!7292 (unfocusZipper!1357 zl!343)))))

(declare-fun b!5625383 () Bool)

(declare-fun e!3467499 () Bool)

(declare-fun tp!1557591 () Bool)

(assert (=> b!5625383 (= e!3467499 tp!1557591)))

(declare-fun res!2382613 () Bool)

(assert (=> start!582816 (=> (not res!2382613) (not e!3467486))))

(declare-fun validRegex!7351 (Regex!15615) Bool)

(assert (=> start!582816 (= res!2382613 (validRegex!7351 r!7292))))

(assert (=> start!582816 e!3467486))

(declare-fun e!3467487 () Bool)

(assert (=> start!582816 e!3467487))

(declare-fun condSetEmpty!37552 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9998))

(assert (=> start!582816 (= condSetEmpty!37552 (= z!1189 ((as const (Array Context!9998 Bool)) false)))))

(declare-fun setRes!37552 () Bool)

(assert (=> start!582816 setRes!37552))

(declare-fun e!3467490 () Bool)

(assert (=> start!582816 e!3467490))

(declare-fun e!3467495 () Bool)

(assert (=> start!582816 e!3467495))

(declare-fun e!3467498 () Bool)

(declare-fun e!3467494 () Bool)

(assert (=> b!5625384 (= e!3467498 e!3467494)))

(declare-fun res!2382611 () Bool)

(assert (=> b!5625384 (=> res!2382611 e!3467494)))

(assert (=> b!5625384 (= res!2382611 (or (and ((_ is ElementMatch!15615) (regOne!31742 r!7292)) (= (c!987439 (regOne!31742 r!7292)) (h!69470 s!2326))) ((_ is Union!15615) (regOne!31742 r!7292)) (not ((_ is Concat!24460) (regOne!31742 r!7292)))))))

(declare-fun lt!2261335 () Unit!155992)

(declare-fun e!3467488 () Unit!155992)

(assert (=> b!5625384 (= lt!2261335 e!3467488)))

(declare-fun c!987438 () Bool)

(declare-fun nullable!5647 (Regex!15615) Bool)

(assert (=> b!5625384 (= c!987438 (nullable!5647 (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun lambda!302120 () Int)

(declare-fun flatMap!1228 ((InoxSet Context!9998) Int) (InoxSet Context!9998))

(declare-fun derivationStepZipperUp!883 (Context!9998 C!31500) (InoxSet Context!9998))

(assert (=> b!5625384 (= (flatMap!1228 z!1189 lambda!302120) (derivationStepZipperUp!883 (h!69469 zl!343) (h!69470 s!2326)))))

(declare-fun lt!2261340 () Unit!155992)

(declare-fun lemmaFlatMapOnSingletonSet!760 ((InoxSet Context!9998) Context!9998 Int) Unit!155992)

(assert (=> b!5625384 (= lt!2261340 (lemmaFlatMapOnSingletonSet!760 z!1189 (h!69469 zl!343) lambda!302120))))

(declare-fun lt!2261334 () (InoxSet Context!9998))

(declare-fun lt!2261341 () Context!9998)

(assert (=> b!5625384 (= lt!2261334 (derivationStepZipperUp!883 lt!2261341 (h!69470 s!2326)))))

(declare-fun lt!2261324 () (InoxSet Context!9998))

(declare-fun derivationStepZipperDown!957 (Regex!15615 Context!9998 C!31500) (InoxSet Context!9998))

(assert (=> b!5625384 (= lt!2261324 (derivationStepZipperDown!957 (h!69468 (exprs!5499 (h!69469 zl!343))) lt!2261341 (h!69470 s!2326)))))

(assert (=> b!5625384 (= lt!2261341 (Context!9999 (t!376436 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun lt!2261344 () (InoxSet Context!9998))

(assert (=> b!5625384 (= lt!2261344 (derivationStepZipperUp!883 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343))))) (h!69470 s!2326)))))

(declare-fun b!5625385 () Bool)

(declare-fun e!3467489 () Bool)

(assert (=> b!5625385 (= e!3467494 e!3467489)))

(declare-fun res!2382600 () Bool)

(assert (=> b!5625385 (=> res!2382600 e!3467489)))

(declare-fun lt!2261329 () (InoxSet Context!9998))

(assert (=> b!5625385 (= res!2382600 (not (= lt!2261324 lt!2261329)))))

(declare-fun lt!2261330 () (InoxSet Context!9998))

(declare-fun lt!2261325 () (InoxSet Context!9998))

(assert (=> b!5625385 (= lt!2261329 ((_ map or) lt!2261330 lt!2261325))))

(assert (=> b!5625385 (= lt!2261325 (derivationStepZipperDown!957 (regTwo!31742 (regOne!31742 r!7292)) lt!2261341 (h!69470 s!2326)))))

(declare-fun lt!2261336 () Context!9998)

(assert (=> b!5625385 (= lt!2261330 (derivationStepZipperDown!957 (regOne!31742 (regOne!31742 r!7292)) lt!2261336 (h!69470 s!2326)))))

(declare-fun lt!2261346 () List!63144)

(assert (=> b!5625385 (= lt!2261336 (Context!9999 lt!2261346))))

(assert (=> b!5625385 (= lt!2261346 (Cons!63020 (regTwo!31742 (regOne!31742 r!7292)) (t!376436 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5625386 () Bool)

(declare-fun e!3467500 () Bool)

(declare-fun matchZipper!1753 ((InoxSet Context!9998) List!63146) Bool)

(assert (=> b!5625386 (= e!3467500 (matchZipper!1753 lt!2261325 (t!376438 s!2326)))))

(declare-fun b!5625387 () Bool)

(declare-fun tp_is_empty!40483 () Bool)

(declare-fun tp!1557590 () Bool)

(assert (=> b!5625387 (= e!3467495 (and tp_is_empty!40483 tp!1557590))))

(declare-fun b!5625388 () Bool)

(declare-fun Unit!155994 () Unit!155992)

(assert (=> b!5625388 (= e!3467488 Unit!155994)))

(declare-fun b!5625389 () Bool)

(declare-fun e!3467496 () Bool)

(assert (=> b!5625389 (= e!3467496 (not (matchZipper!1753 lt!2261325 (t!376438 s!2326))))))

(declare-fun b!5625390 () Bool)

(declare-fun tp!1557587 () Bool)

(assert (=> b!5625390 (= e!3467487 tp!1557587)))

(declare-fun b!5625391 () Bool)

(declare-fun Unit!155995 () Unit!155992)

(assert (=> b!5625391 (= e!3467488 Unit!155995)))

(declare-fun lt!2261327 () Unit!155992)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!640 ((InoxSet Context!9998) (InoxSet Context!9998) List!63146) Unit!155992)

(assert (=> b!5625391 (= lt!2261327 (lemmaZipperConcatMatchesSameAsBothZippers!640 lt!2261324 lt!2261334 (t!376438 s!2326)))))

(declare-fun res!2382609 () Bool)

(assert (=> b!5625391 (= res!2382609 (matchZipper!1753 lt!2261324 (t!376438 s!2326)))))

(declare-fun e!3467497 () Bool)

(assert (=> b!5625391 (=> res!2382609 e!3467497)))

(assert (=> b!5625391 (= (matchZipper!1753 ((_ map or) lt!2261324 lt!2261334) (t!376438 s!2326)) e!3467497)))

(declare-fun b!5625392 () Bool)

(declare-fun e!3467492 () Bool)

(declare-fun tp!1557592 () Bool)

(assert (=> b!5625392 (= e!3467492 tp!1557592)))

(declare-fun b!5625393 () Bool)

(assert (=> b!5625393 (= e!3467497 (matchZipper!1753 lt!2261334 (t!376438 s!2326)))))

(declare-fun b!5625394 () Bool)

(declare-fun res!2382616 () Bool)

(assert (=> b!5625394 (=> (not res!2382616) (not e!3467486))))

(declare-fun toList!9399 ((InoxSet Context!9998)) List!63145)

(assert (=> b!5625394 (= res!2382616 (= (toList!9399 z!1189) zl!343))))

(declare-fun b!5625395 () Bool)

(assert (=> b!5625395 (= e!3467487 tp_is_empty!40483)))

(declare-fun b!5625396 () Bool)

(declare-fun res!2382599 () Bool)

(assert (=> b!5625396 (=> res!2382599 e!3467493)))

(assert (=> b!5625396 (= res!2382599 (or ((_ is EmptyExpr!15615) r!7292) ((_ is EmptyLang!15615) r!7292) ((_ is ElementMatch!15615) r!7292) ((_ is Union!15615) r!7292) (not ((_ is Concat!24460) r!7292))))))

(declare-fun lt!2261332 () (InoxSet Context!9998))

(declare-fun b!5625397 () Bool)

(declare-fun e!3467491 () Bool)

(declare-fun derivationStepZipper!1702 ((InoxSet Context!9998) C!31500) (InoxSet Context!9998))

(assert (=> b!5625397 (= e!3467491 (= (derivationStepZipper!1702 lt!2261332 (h!69470 s!2326)) ((_ map or) lt!2261330 (derivationStepZipperUp!883 lt!2261336 (h!69470 s!2326)))))))

(declare-fun lt!2261338 () Context!9998)

(assert (=> b!5625397 (= (flatMap!1228 lt!2261332 lambda!302120) (derivationStepZipperUp!883 lt!2261338 (h!69470 s!2326)))))

(declare-fun lt!2261339 () Unit!155992)

(assert (=> b!5625397 (= lt!2261339 (lemmaFlatMapOnSingletonSet!760 lt!2261332 lt!2261338 lambda!302120))))

(declare-fun lt!2261337 () (InoxSet Context!9998))

(assert (=> b!5625397 (= lt!2261337 (derivationStepZipperUp!883 lt!2261338 (h!69470 s!2326)))))

(assert (=> b!5625397 (= lt!2261332 (store ((as const (Array Context!9998 Bool)) false) lt!2261338 true))))

(assert (=> b!5625397 (= lt!2261338 (Context!9999 (Cons!63020 (regOne!31742 (regOne!31742 r!7292)) lt!2261346)))))

(declare-fun b!5625398 () Bool)

(declare-fun res!2382603 () Bool)

(assert (=> b!5625398 (=> res!2382603 e!3467498)))

(declare-fun isEmpty!34850 (List!63144) Bool)

(assert (=> b!5625398 (= res!2382603 (isEmpty!34850 (t!376436 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5625399 () Bool)

(declare-fun res!2382605 () Bool)

(assert (=> b!5625399 (=> res!2382605 e!3467494)))

(assert (=> b!5625399 (= res!2382605 (not (nullable!5647 (regOne!31742 (regOne!31742 r!7292)))))))

(declare-fun b!5625400 () Bool)

(declare-fun tp!1557595 () Bool)

(declare-fun tp!1557589 () Bool)

(assert (=> b!5625400 (= e!3467487 (and tp!1557595 tp!1557589))))

(declare-fun setElem!37552 () Context!9998)

(declare-fun tp!1557593 () Bool)

(declare-fun setNonEmpty!37552 () Bool)

(declare-fun inv!82284 (Context!9998) Bool)

(assert (=> setNonEmpty!37552 (= setRes!37552 (and tp!1557593 (inv!82284 setElem!37552) e!3467499))))

(declare-fun setRest!37552 () (InoxSet Context!9998))

(assert (=> setNonEmpty!37552 (= z!1189 ((_ map or) (store ((as const (Array Context!9998 Bool)) false) setElem!37552 true) setRest!37552))))

(declare-fun b!5625401 () Bool)

(declare-fun res!2382601 () Bool)

(assert (=> b!5625401 (=> res!2382601 e!3467493)))

(declare-fun generalisedConcat!1230 (List!63144) Regex!15615)

(assert (=> b!5625401 (= res!2382601 (not (= r!7292 (generalisedConcat!1230 (exprs!5499 (h!69469 zl!343))))))))

(assert (=> b!5625402 (= e!3467493 e!3467498)))

(declare-fun res!2382612 () Bool)

(assert (=> b!5625402 (=> res!2382612 e!3467498)))

(declare-fun lt!2261333 () Bool)

(assert (=> b!5625402 (= res!2382612 (or (not (= lt!2261345 lt!2261333)) ((_ is Nil!63022) s!2326)))))

(declare-fun Exists!2715 (Int) Bool)

(assert (=> b!5625402 (= (Exists!2715 lambda!302118) (Exists!2715 lambda!302119))))

(declare-fun lt!2261343 () Unit!155992)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1344 (Regex!15615 Regex!15615 List!63146) Unit!155992)

(assert (=> b!5625402 (= lt!2261343 (lemmaExistCutMatchRandMatchRSpecEquivalent!1344 (regOne!31742 r!7292) (regTwo!31742 r!7292) s!2326))))

(assert (=> b!5625402 (= lt!2261333 (Exists!2715 lambda!302118))))

(declare-datatypes ((tuple2!65424 0))(
  ( (tuple2!65425 (_1!36015 List!63146) (_2!36015 List!63146)) )
))
(declare-datatypes ((Option!15624 0))(
  ( (None!15623) (Some!15623 (v!51668 tuple2!65424)) )
))
(declare-fun isDefined!12327 (Option!15624) Bool)

(declare-fun findConcatSeparation!2038 (Regex!15615 Regex!15615 List!63146 List!63146 List!63146) Option!15624)

(assert (=> b!5625402 (= lt!2261333 (isDefined!12327 (findConcatSeparation!2038 (regOne!31742 r!7292) (regTwo!31742 r!7292) Nil!63022 s!2326 s!2326)))))

(declare-fun lt!2261342 () Unit!155992)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1802 (Regex!15615 Regex!15615 List!63146) Unit!155992)

(assert (=> b!5625402 (= lt!2261342 (lemmaFindConcatSeparationEquivalentToExists!1802 (regOne!31742 r!7292) (regTwo!31742 r!7292) s!2326))))

(declare-fun b!5625403 () Bool)

(declare-fun res!2382604 () Bool)

(assert (=> b!5625403 (=> res!2382604 e!3467493)))

(assert (=> b!5625403 (= res!2382604 (not ((_ is Cons!63020) (exprs!5499 (h!69469 zl!343)))))))

(declare-fun setIsEmpty!37552 () Bool)

(assert (=> setIsEmpty!37552 setRes!37552))

(declare-fun b!5625404 () Bool)

(assert (=> b!5625404 (= e!3467489 e!3467491)))

(declare-fun res!2382614 () Bool)

(assert (=> b!5625404 (=> res!2382614 e!3467491)))

(assert (=> b!5625404 (= res!2382614 e!3467496)))

(declare-fun res!2382602 () Bool)

(assert (=> b!5625404 (=> (not res!2382602) (not e!3467496))))

(declare-fun lt!2261328 () Bool)

(assert (=> b!5625404 (= res!2382602 (not (= (matchZipper!1753 lt!2261324 (t!376438 s!2326)) lt!2261328)))))

(assert (=> b!5625404 (= (matchZipper!1753 lt!2261329 (t!376438 s!2326)) e!3467500)))

(declare-fun res!2382608 () Bool)

(assert (=> b!5625404 (=> res!2382608 e!3467500)))

(assert (=> b!5625404 (= res!2382608 lt!2261328)))

(assert (=> b!5625404 (= lt!2261328 (matchZipper!1753 lt!2261330 (t!376438 s!2326)))))

(declare-fun lt!2261326 () Unit!155992)

(assert (=> b!5625404 (= lt!2261326 (lemmaZipperConcatMatchesSameAsBothZippers!640 lt!2261330 lt!2261325 (t!376438 s!2326)))))

(declare-fun b!5625405 () Bool)

(declare-fun res!2382607 () Bool)

(assert (=> b!5625405 (=> res!2382607 e!3467493)))

(declare-fun generalisedUnion!1478 (List!63144) Regex!15615)

(declare-fun unfocusZipperList!1043 (List!63145) List!63144)

(assert (=> b!5625405 (= res!2382607 (not (= r!7292 (generalisedUnion!1478 (unfocusZipperList!1043 zl!343)))))))

(declare-fun tp!1557586 () Bool)

(declare-fun b!5625406 () Bool)

(assert (=> b!5625406 (= e!3467490 (and (inv!82284 (h!69469 zl!343)) e!3467492 tp!1557586))))

(declare-fun b!5625407 () Bool)

(declare-fun tp!1557588 () Bool)

(declare-fun tp!1557594 () Bool)

(assert (=> b!5625407 (= e!3467487 (and tp!1557588 tp!1557594))))

(declare-fun b!5625408 () Bool)

(declare-fun res!2382606 () Bool)

(assert (=> b!5625408 (=> res!2382606 e!3467493)))

(declare-fun isEmpty!34851 (List!63145) Bool)

(assert (=> b!5625408 (= res!2382606 (not (isEmpty!34851 (t!376437 zl!343))))))

(assert (= (and start!582816 res!2382613) b!5625394))

(assert (= (and b!5625394 res!2382616) b!5625382))

(assert (= (and b!5625382 res!2382615) b!5625381))

(assert (= (and b!5625381 (not res!2382610)) b!5625408))

(assert (= (and b!5625408 (not res!2382606)) b!5625401))

(assert (= (and b!5625401 (not res!2382601)) b!5625403))

(assert (= (and b!5625403 (not res!2382604)) b!5625405))

(assert (= (and b!5625405 (not res!2382607)) b!5625396))

(assert (= (and b!5625396 (not res!2382599)) b!5625402))

(assert (= (and b!5625402 (not res!2382612)) b!5625398))

(assert (= (and b!5625398 (not res!2382603)) b!5625384))

(assert (= (and b!5625384 c!987438) b!5625391))

(assert (= (and b!5625384 (not c!987438)) b!5625388))

(assert (= (and b!5625391 (not res!2382609)) b!5625393))

(assert (= (and b!5625384 (not res!2382611)) b!5625399))

(assert (= (and b!5625399 (not res!2382605)) b!5625385))

(assert (= (and b!5625385 (not res!2382600)) b!5625404))

(assert (= (and b!5625404 (not res!2382608)) b!5625386))

(assert (= (and b!5625404 res!2382602) b!5625389))

(assert (= (and b!5625404 (not res!2382614)) b!5625397))

(assert (= (and start!582816 ((_ is ElementMatch!15615) r!7292)) b!5625395))

(assert (= (and start!582816 ((_ is Concat!24460) r!7292)) b!5625407))

(assert (= (and start!582816 ((_ is Star!15615) r!7292)) b!5625390))

(assert (= (and start!582816 ((_ is Union!15615) r!7292)) b!5625400))

(assert (= (and start!582816 condSetEmpty!37552) setIsEmpty!37552))

(assert (= (and start!582816 (not condSetEmpty!37552)) setNonEmpty!37552))

(assert (= setNonEmpty!37552 b!5625383))

(assert (= b!5625406 b!5625392))

(assert (= (and start!582816 ((_ is Cons!63021) zl!343)) b!5625406))

(assert (= (and start!582816 ((_ is Cons!63022) s!2326)) b!5625387))

(declare-fun m!6597874 () Bool)

(assert (=> b!5625397 m!6597874))

(declare-fun m!6597876 () Bool)

(assert (=> b!5625397 m!6597876))

(declare-fun m!6597878 () Bool)

(assert (=> b!5625397 m!6597878))

(declare-fun m!6597880 () Bool)

(assert (=> b!5625397 m!6597880))

(declare-fun m!6597882 () Bool)

(assert (=> b!5625397 m!6597882))

(declare-fun m!6597884 () Bool)

(assert (=> b!5625397 m!6597884))

(declare-fun m!6597886 () Bool)

(assert (=> b!5625394 m!6597886))

(declare-fun m!6597888 () Bool)

(assert (=> b!5625386 m!6597888))

(declare-fun m!6597890 () Bool)

(assert (=> b!5625399 m!6597890))

(declare-fun m!6597892 () Bool)

(assert (=> b!5625384 m!6597892))

(declare-fun m!6597894 () Bool)

(assert (=> b!5625384 m!6597894))

(declare-fun m!6597896 () Bool)

(assert (=> b!5625384 m!6597896))

(declare-fun m!6597898 () Bool)

(assert (=> b!5625384 m!6597898))

(declare-fun m!6597900 () Bool)

(assert (=> b!5625384 m!6597900))

(declare-fun m!6597902 () Bool)

(assert (=> b!5625384 m!6597902))

(declare-fun m!6597904 () Bool)

(assert (=> b!5625384 m!6597904))

(declare-fun m!6597906 () Bool)

(assert (=> b!5625404 m!6597906))

(declare-fun m!6597908 () Bool)

(assert (=> b!5625404 m!6597908))

(declare-fun m!6597910 () Bool)

(assert (=> b!5625404 m!6597910))

(declare-fun m!6597912 () Bool)

(assert (=> b!5625404 m!6597912))

(declare-fun m!6597914 () Bool)

(assert (=> b!5625402 m!6597914))

(declare-fun m!6597916 () Bool)

(assert (=> b!5625402 m!6597916))

(declare-fun m!6597918 () Bool)

(assert (=> b!5625402 m!6597918))

(assert (=> b!5625402 m!6597914))

(declare-fun m!6597920 () Bool)

(assert (=> b!5625402 m!6597920))

(declare-fun m!6597922 () Bool)

(assert (=> b!5625402 m!6597922))

(assert (=> b!5625402 m!6597920))

(declare-fun m!6597924 () Bool)

(assert (=> b!5625402 m!6597924))

(declare-fun m!6597926 () Bool)

(assert (=> start!582816 m!6597926))

(declare-fun m!6597928 () Bool)

(assert (=> b!5625398 m!6597928))

(declare-fun m!6597930 () Bool)

(assert (=> b!5625385 m!6597930))

(declare-fun m!6597932 () Bool)

(assert (=> b!5625385 m!6597932))

(declare-fun m!6597934 () Bool)

(assert (=> b!5625406 m!6597934))

(declare-fun m!6597936 () Bool)

(assert (=> b!5625401 m!6597936))

(declare-fun m!6597938 () Bool)

(assert (=> setNonEmpty!37552 m!6597938))

(declare-fun m!6597940 () Bool)

(assert (=> b!5625381 m!6597940))

(declare-fun m!6597942 () Bool)

(assert (=> b!5625381 m!6597942))

(declare-fun m!6597944 () Bool)

(assert (=> b!5625381 m!6597944))

(declare-fun m!6597946 () Bool)

(assert (=> b!5625405 m!6597946))

(assert (=> b!5625405 m!6597946))

(declare-fun m!6597948 () Bool)

(assert (=> b!5625405 m!6597948))

(declare-fun m!6597950 () Bool)

(assert (=> b!5625382 m!6597950))

(declare-fun m!6597952 () Bool)

(assert (=> b!5625408 m!6597952))

(declare-fun m!6597954 () Bool)

(assert (=> b!5625391 m!6597954))

(assert (=> b!5625391 m!6597906))

(declare-fun m!6597956 () Bool)

(assert (=> b!5625391 m!6597956))

(declare-fun m!6597958 () Bool)

(assert (=> b!5625393 m!6597958))

(assert (=> b!5625389 m!6597888))

(check-sat (not b!5625398) (not b!5625389) (not b!5625399) (not b!5625406) (not start!582816) (not b!5625402) (not b!5625390) (not b!5625384) (not b!5625401) (not b!5625382) (not b!5625397) (not b!5625386) (not b!5625392) (not b!5625400) (not b!5625405) (not b!5625383) (not b!5625393) (not b!5625381) (not b!5625387) (not b!5625394) (not b!5625408) tp_is_empty!40483 (not b!5625391) (not b!5625404) (not b!5625385) (not setNonEmpty!37552) (not b!5625407))
(check-sat)
(get-model)

(declare-fun d!1777229 () Bool)

(declare-fun lambda!302134 () Int)

(declare-fun forall!14770 (List!63144 Int) Bool)

(assert (=> d!1777229 (= (inv!82284 setElem!37552) (forall!14770 (exprs!5499 setElem!37552) lambda!302134))))

(declare-fun bs!1302273 () Bool)

(assert (= bs!1302273 d!1777229))

(declare-fun m!6598024 () Bool)

(assert (=> bs!1302273 m!6598024))

(assert (=> setNonEmpty!37552 d!1777229))

(declare-fun d!1777231 () Bool)

(declare-fun nullableFct!1744 (Regex!15615) Bool)

(assert (=> d!1777231 (= (nullable!5647 (regOne!31742 (regOne!31742 r!7292))) (nullableFct!1744 (regOne!31742 (regOne!31742 r!7292))))))

(declare-fun bs!1302275 () Bool)

(assert (= bs!1302275 d!1777231))

(declare-fun m!6598026 () Bool)

(assert (=> bs!1302275 m!6598026))

(assert (=> b!5625399 d!1777231))

(declare-fun d!1777233 () Bool)

(assert (=> d!1777233 (= (isEmpty!34851 (t!376437 zl!343)) ((_ is Nil!63021) (t!376437 zl!343)))))

(assert (=> b!5625408 d!1777233))

(declare-fun d!1777237 () Bool)

(declare-fun c!987509 () Bool)

(declare-fun isEmpty!34853 (List!63146) Bool)

(assert (=> d!1777237 (= c!987509 (isEmpty!34853 (t!376438 s!2326)))))

(declare-fun e!3467613 () Bool)

(assert (=> d!1777237 (= (matchZipper!1753 lt!2261325 (t!376438 s!2326)) e!3467613)))

(declare-fun b!5625614 () Bool)

(declare-fun nullableZipper!1598 ((InoxSet Context!9998)) Bool)

(assert (=> b!5625614 (= e!3467613 (nullableZipper!1598 lt!2261325))))

(declare-fun b!5625615 () Bool)

(declare-fun head!11975 (List!63146) C!31500)

(declare-fun tail!11070 (List!63146) List!63146)

(assert (=> b!5625615 (= e!3467613 (matchZipper!1753 (derivationStepZipper!1702 lt!2261325 (head!11975 (t!376438 s!2326))) (tail!11070 (t!376438 s!2326))))))

(assert (= (and d!1777237 c!987509) b!5625614))

(assert (= (and d!1777237 (not c!987509)) b!5625615))

(declare-fun m!6598070 () Bool)

(assert (=> d!1777237 m!6598070))

(declare-fun m!6598072 () Bool)

(assert (=> b!5625614 m!6598072))

(declare-fun m!6598074 () Bool)

(assert (=> b!5625615 m!6598074))

(assert (=> b!5625615 m!6598074))

(declare-fun m!6598076 () Bool)

(assert (=> b!5625615 m!6598076))

(declare-fun m!6598078 () Bool)

(assert (=> b!5625615 m!6598078))

(assert (=> b!5625615 m!6598076))

(assert (=> b!5625615 m!6598078))

(declare-fun m!6598080 () Bool)

(assert (=> b!5625615 m!6598080))

(assert (=> b!5625389 d!1777237))

(declare-fun d!1777249 () Bool)

(declare-fun e!3467675 () Bool)

(assert (=> d!1777249 e!3467675))

(declare-fun res!2382725 () Bool)

(assert (=> d!1777249 (=> res!2382725 e!3467675)))

(declare-fun e!3467674 () Bool)

(assert (=> d!1777249 (= res!2382725 e!3467674)))

(declare-fun res!2382726 () Bool)

(assert (=> d!1777249 (=> (not res!2382726) (not e!3467674))))

(declare-fun lt!2261382 () Option!15624)

(assert (=> d!1777249 (= res!2382726 (isDefined!12327 lt!2261382))))

(declare-fun e!3467676 () Option!15624)

(assert (=> d!1777249 (= lt!2261382 e!3467676)))

(declare-fun c!987538 () Bool)

(declare-fun e!3467678 () Bool)

(assert (=> d!1777249 (= c!987538 e!3467678)))

(declare-fun res!2382727 () Bool)

(assert (=> d!1777249 (=> (not res!2382727) (not e!3467678))))

(assert (=> d!1777249 (= res!2382727 (matchR!7800 (regOne!31742 r!7292) Nil!63022))))

(assert (=> d!1777249 (validRegex!7351 (regOne!31742 r!7292))))

(assert (=> d!1777249 (= (findConcatSeparation!2038 (regOne!31742 r!7292) (regTwo!31742 r!7292) Nil!63022 s!2326 s!2326) lt!2261382)))

(declare-fun b!5625715 () Bool)

(assert (=> b!5625715 (= e!3467678 (matchR!7800 (regTwo!31742 r!7292) s!2326))))

(declare-fun b!5625716 () Bool)

(declare-fun ++!13831 (List!63146 List!63146) List!63146)

(declare-fun get!21706 (Option!15624) tuple2!65424)

(assert (=> b!5625716 (= e!3467674 (= (++!13831 (_1!36015 (get!21706 lt!2261382)) (_2!36015 (get!21706 lt!2261382))) s!2326))))

(declare-fun b!5625717 () Bool)

(declare-fun e!3467677 () Option!15624)

(assert (=> b!5625717 (= e!3467677 None!15623)))

(declare-fun b!5625718 () Bool)

(declare-fun res!2382729 () Bool)

(assert (=> b!5625718 (=> (not res!2382729) (not e!3467674))))

(assert (=> b!5625718 (= res!2382729 (matchR!7800 (regTwo!31742 r!7292) (_2!36015 (get!21706 lt!2261382))))))

(declare-fun b!5625719 () Bool)

(assert (=> b!5625719 (= e!3467676 e!3467677)))

(declare-fun c!987537 () Bool)

(assert (=> b!5625719 (= c!987537 ((_ is Nil!63022) s!2326))))

(declare-fun b!5625720 () Bool)

(declare-fun lt!2261380 () Unit!155992)

(declare-fun lt!2261381 () Unit!155992)

(assert (=> b!5625720 (= lt!2261380 lt!2261381)))

(assert (=> b!5625720 (= (++!13831 (++!13831 Nil!63022 (Cons!63022 (h!69470 s!2326) Nil!63022)) (t!376438 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2001 (List!63146 C!31500 List!63146 List!63146) Unit!155992)

(assert (=> b!5625720 (= lt!2261381 (lemmaMoveElementToOtherListKeepsConcatEq!2001 Nil!63022 (h!69470 s!2326) (t!376438 s!2326) s!2326))))

(assert (=> b!5625720 (= e!3467677 (findConcatSeparation!2038 (regOne!31742 r!7292) (regTwo!31742 r!7292) (++!13831 Nil!63022 (Cons!63022 (h!69470 s!2326) Nil!63022)) (t!376438 s!2326) s!2326))))

(declare-fun b!5625721 () Bool)

(declare-fun res!2382728 () Bool)

(assert (=> b!5625721 (=> (not res!2382728) (not e!3467674))))

(assert (=> b!5625721 (= res!2382728 (matchR!7800 (regOne!31742 r!7292) (_1!36015 (get!21706 lt!2261382))))))

(declare-fun b!5625722 () Bool)

(assert (=> b!5625722 (= e!3467675 (not (isDefined!12327 lt!2261382)))))

(declare-fun b!5625723 () Bool)

(assert (=> b!5625723 (= e!3467676 (Some!15623 (tuple2!65425 Nil!63022 s!2326)))))

(assert (= (and d!1777249 res!2382727) b!5625715))

(assert (= (and d!1777249 c!987538) b!5625723))

(assert (= (and d!1777249 (not c!987538)) b!5625719))

(assert (= (and b!5625719 c!987537) b!5625717))

(assert (= (and b!5625719 (not c!987537)) b!5625720))

(assert (= (and d!1777249 res!2382726) b!5625721))

(assert (= (and b!5625721 res!2382728) b!5625718))

(assert (= (and b!5625718 res!2382729) b!5625716))

(assert (= (and d!1777249 (not res!2382725)) b!5625722))

(declare-fun m!6598146 () Bool)

(assert (=> b!5625722 m!6598146))

(assert (=> d!1777249 m!6598146))

(declare-fun m!6598148 () Bool)

(assert (=> d!1777249 m!6598148))

(declare-fun m!6598150 () Bool)

(assert (=> d!1777249 m!6598150))

(declare-fun m!6598152 () Bool)

(assert (=> b!5625721 m!6598152))

(declare-fun m!6598154 () Bool)

(assert (=> b!5625721 m!6598154))

(declare-fun m!6598156 () Bool)

(assert (=> b!5625720 m!6598156))

(assert (=> b!5625720 m!6598156))

(declare-fun m!6598162 () Bool)

(assert (=> b!5625720 m!6598162))

(declare-fun m!6598164 () Bool)

(assert (=> b!5625720 m!6598164))

(assert (=> b!5625720 m!6598156))

(declare-fun m!6598166 () Bool)

(assert (=> b!5625720 m!6598166))

(assert (=> b!5625718 m!6598152))

(declare-fun m!6598168 () Bool)

(assert (=> b!5625718 m!6598168))

(assert (=> b!5625716 m!6598152))

(declare-fun m!6598170 () Bool)

(assert (=> b!5625716 m!6598170))

(declare-fun m!6598172 () Bool)

(assert (=> b!5625715 m!6598172))

(assert (=> b!5625402 d!1777249))

(declare-fun bs!1302295 () Bool)

(declare-fun d!1777275 () Bool)

(assert (= bs!1302295 (and d!1777275 b!5625402)))

(declare-fun lambda!302152 () Int)

(assert (=> bs!1302295 (= lambda!302152 lambda!302118)))

(assert (=> bs!1302295 (not (= lambda!302152 lambda!302119))))

(assert (=> d!1777275 true))

(assert (=> d!1777275 true))

(assert (=> d!1777275 true))

(assert (=> d!1777275 (= (isDefined!12327 (findConcatSeparation!2038 (regOne!31742 r!7292) (regTwo!31742 r!7292) Nil!63022 s!2326 s!2326)) (Exists!2715 lambda!302152))))

(declare-fun lt!2261392 () Unit!155992)

(declare-fun choose!42617 (Regex!15615 Regex!15615 List!63146) Unit!155992)

(assert (=> d!1777275 (= lt!2261392 (choose!42617 (regOne!31742 r!7292) (regTwo!31742 r!7292) s!2326))))

(assert (=> d!1777275 (validRegex!7351 (regOne!31742 r!7292))))

(assert (=> d!1777275 (= (lemmaFindConcatSeparationEquivalentToExists!1802 (regOne!31742 r!7292) (regTwo!31742 r!7292) s!2326) lt!2261392)))

(declare-fun bs!1302296 () Bool)

(assert (= bs!1302296 d!1777275))

(assert (=> bs!1302296 m!6598150))

(assert (=> bs!1302296 m!6597920))

(assert (=> bs!1302296 m!6597920))

(assert (=> bs!1302296 m!6597922))

(declare-fun m!6598188 () Bool)

(assert (=> bs!1302296 m!6598188))

(declare-fun m!6598190 () Bool)

(assert (=> bs!1302296 m!6598190))

(assert (=> b!5625402 d!1777275))

(declare-fun d!1777283 () Bool)

(declare-fun choose!42618 (Int) Bool)

(assert (=> d!1777283 (= (Exists!2715 lambda!302118) (choose!42618 lambda!302118))))

(declare-fun bs!1302297 () Bool)

(assert (= bs!1302297 d!1777283))

(declare-fun m!6598192 () Bool)

(assert (=> bs!1302297 m!6598192))

(assert (=> b!5625402 d!1777283))

(declare-fun d!1777285 () Bool)

(assert (=> d!1777285 (= (Exists!2715 lambda!302119) (choose!42618 lambda!302119))))

(declare-fun bs!1302298 () Bool)

(assert (= bs!1302298 d!1777285))

(declare-fun m!6598194 () Bool)

(assert (=> bs!1302298 m!6598194))

(assert (=> b!5625402 d!1777285))

(declare-fun bs!1302313 () Bool)

(declare-fun d!1777287 () Bool)

(assert (= bs!1302313 (and d!1777287 b!5625402)))

(declare-fun lambda!302162 () Int)

(assert (=> bs!1302313 (= lambda!302162 lambda!302118)))

(assert (=> bs!1302313 (not (= lambda!302162 lambda!302119))))

(declare-fun bs!1302314 () Bool)

(assert (= bs!1302314 (and d!1777287 d!1777275)))

(assert (=> bs!1302314 (= lambda!302162 lambda!302152)))

(assert (=> d!1777287 true))

(assert (=> d!1777287 true))

(assert (=> d!1777287 true))

(declare-fun lambda!302163 () Int)

(assert (=> bs!1302313 (not (= lambda!302163 lambda!302118))))

(assert (=> bs!1302313 (= lambda!302163 lambda!302119)))

(assert (=> bs!1302314 (not (= lambda!302163 lambda!302152))))

(declare-fun bs!1302315 () Bool)

(assert (= bs!1302315 d!1777287))

(assert (=> bs!1302315 (not (= lambda!302163 lambda!302162))))

(assert (=> d!1777287 true))

(assert (=> d!1777287 true))

(assert (=> d!1777287 true))

(assert (=> d!1777287 (= (Exists!2715 lambda!302162) (Exists!2715 lambda!302163))))

(declare-fun lt!2261405 () Unit!155992)

(declare-fun choose!42620 (Regex!15615 Regex!15615 List!63146) Unit!155992)

(assert (=> d!1777287 (= lt!2261405 (choose!42620 (regOne!31742 r!7292) (regTwo!31742 r!7292) s!2326))))

(assert (=> d!1777287 (validRegex!7351 (regOne!31742 r!7292))))

(assert (=> d!1777287 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1344 (regOne!31742 r!7292) (regTwo!31742 r!7292) s!2326) lt!2261405)))

(declare-fun m!6598258 () Bool)

(assert (=> bs!1302315 m!6598258))

(declare-fun m!6598260 () Bool)

(assert (=> bs!1302315 m!6598260))

(declare-fun m!6598262 () Bool)

(assert (=> bs!1302315 m!6598262))

(assert (=> bs!1302315 m!6598150))

(assert (=> b!5625402 d!1777287))

(declare-fun d!1777313 () Bool)

(declare-fun isEmpty!34854 (Option!15624) Bool)

(assert (=> d!1777313 (= (isDefined!12327 (findConcatSeparation!2038 (regOne!31742 r!7292) (regTwo!31742 r!7292) Nil!63022 s!2326 s!2326)) (not (isEmpty!34854 (findConcatSeparation!2038 (regOne!31742 r!7292) (regTwo!31742 r!7292) Nil!63022 s!2326 s!2326))))))

(declare-fun bs!1302316 () Bool)

(assert (= bs!1302316 d!1777313))

(assert (=> bs!1302316 m!6597920))

(declare-fun m!6598264 () Bool)

(assert (=> bs!1302316 m!6598264))

(assert (=> b!5625402 d!1777313))

(declare-fun d!1777315 () Bool)

(declare-fun lt!2261408 () Regex!15615)

(assert (=> d!1777315 (validRegex!7351 lt!2261408)))

(assert (=> d!1777315 (= lt!2261408 (generalisedUnion!1478 (unfocusZipperList!1043 zl!343)))))

(assert (=> d!1777315 (= (unfocusZipper!1357 zl!343) lt!2261408)))

(declare-fun bs!1302317 () Bool)

(assert (= bs!1302317 d!1777315))

(declare-fun m!6598266 () Bool)

(assert (=> bs!1302317 m!6598266))

(assert (=> bs!1302317 m!6597946))

(assert (=> bs!1302317 m!6597946))

(assert (=> bs!1302317 m!6597948))

(assert (=> b!5625382 d!1777315))

(declare-fun d!1777317 () Bool)

(declare-fun c!987558 () Bool)

(assert (=> d!1777317 (= c!987558 (isEmpty!34853 (t!376438 s!2326)))))

(declare-fun e!3467741 () Bool)

(assert (=> d!1777317 (= (matchZipper!1753 lt!2261334 (t!376438 s!2326)) e!3467741)))

(declare-fun b!5625846 () Bool)

(assert (=> b!5625846 (= e!3467741 (nullableZipper!1598 lt!2261334))))

(declare-fun b!5625847 () Bool)

(assert (=> b!5625847 (= e!3467741 (matchZipper!1753 (derivationStepZipper!1702 lt!2261334 (head!11975 (t!376438 s!2326))) (tail!11070 (t!376438 s!2326))))))

(assert (= (and d!1777317 c!987558) b!5625846))

(assert (= (and d!1777317 (not c!987558)) b!5625847))

(assert (=> d!1777317 m!6598070))

(declare-fun m!6598268 () Bool)

(assert (=> b!5625846 m!6598268))

(assert (=> b!5625847 m!6598074))

(assert (=> b!5625847 m!6598074))

(declare-fun m!6598270 () Bool)

(assert (=> b!5625847 m!6598270))

(assert (=> b!5625847 m!6598078))

(assert (=> b!5625847 m!6598270))

(assert (=> b!5625847 m!6598078))

(declare-fun m!6598272 () Bool)

(assert (=> b!5625847 m!6598272))

(assert (=> b!5625393 d!1777317))

(declare-fun d!1777319 () Bool)

(declare-fun e!3467744 () Bool)

(assert (=> d!1777319 (= (matchZipper!1753 ((_ map or) lt!2261324 lt!2261334) (t!376438 s!2326)) e!3467744)))

(declare-fun res!2382762 () Bool)

(assert (=> d!1777319 (=> res!2382762 e!3467744)))

(assert (=> d!1777319 (= res!2382762 (matchZipper!1753 lt!2261324 (t!376438 s!2326)))))

(declare-fun lt!2261411 () Unit!155992)

(declare-fun choose!42623 ((InoxSet Context!9998) (InoxSet Context!9998) List!63146) Unit!155992)

(assert (=> d!1777319 (= lt!2261411 (choose!42623 lt!2261324 lt!2261334 (t!376438 s!2326)))))

(assert (=> d!1777319 (= (lemmaZipperConcatMatchesSameAsBothZippers!640 lt!2261324 lt!2261334 (t!376438 s!2326)) lt!2261411)))

(declare-fun b!5625850 () Bool)

(assert (=> b!5625850 (= e!3467744 (matchZipper!1753 lt!2261334 (t!376438 s!2326)))))

(assert (= (and d!1777319 (not res!2382762)) b!5625850))

(assert (=> d!1777319 m!6597956))

(assert (=> d!1777319 m!6597906))

(declare-fun m!6598274 () Bool)

(assert (=> d!1777319 m!6598274))

(assert (=> b!5625850 m!6597958))

(assert (=> b!5625391 d!1777319))

(declare-fun d!1777321 () Bool)

(declare-fun c!987559 () Bool)

(assert (=> d!1777321 (= c!987559 (isEmpty!34853 (t!376438 s!2326)))))

(declare-fun e!3467745 () Bool)

(assert (=> d!1777321 (= (matchZipper!1753 lt!2261324 (t!376438 s!2326)) e!3467745)))

(declare-fun b!5625851 () Bool)

(assert (=> b!5625851 (= e!3467745 (nullableZipper!1598 lt!2261324))))

(declare-fun b!5625852 () Bool)

(assert (=> b!5625852 (= e!3467745 (matchZipper!1753 (derivationStepZipper!1702 lt!2261324 (head!11975 (t!376438 s!2326))) (tail!11070 (t!376438 s!2326))))))

(assert (= (and d!1777321 c!987559) b!5625851))

(assert (= (and d!1777321 (not c!987559)) b!5625852))

(assert (=> d!1777321 m!6598070))

(declare-fun m!6598276 () Bool)

(assert (=> b!5625851 m!6598276))

(assert (=> b!5625852 m!6598074))

(assert (=> b!5625852 m!6598074))

(declare-fun m!6598278 () Bool)

(assert (=> b!5625852 m!6598278))

(assert (=> b!5625852 m!6598078))

(assert (=> b!5625852 m!6598278))

(assert (=> b!5625852 m!6598078))

(declare-fun m!6598280 () Bool)

(assert (=> b!5625852 m!6598280))

(assert (=> b!5625391 d!1777321))

(declare-fun d!1777323 () Bool)

(declare-fun c!987560 () Bool)

(assert (=> d!1777323 (= c!987560 (isEmpty!34853 (t!376438 s!2326)))))

(declare-fun e!3467746 () Bool)

(assert (=> d!1777323 (= (matchZipper!1753 ((_ map or) lt!2261324 lt!2261334) (t!376438 s!2326)) e!3467746)))

(declare-fun b!5625853 () Bool)

(assert (=> b!5625853 (= e!3467746 (nullableZipper!1598 ((_ map or) lt!2261324 lt!2261334)))))

(declare-fun b!5625854 () Bool)

(assert (=> b!5625854 (= e!3467746 (matchZipper!1753 (derivationStepZipper!1702 ((_ map or) lt!2261324 lt!2261334) (head!11975 (t!376438 s!2326))) (tail!11070 (t!376438 s!2326))))))

(assert (= (and d!1777323 c!987560) b!5625853))

(assert (= (and d!1777323 (not c!987560)) b!5625854))

(assert (=> d!1777323 m!6598070))

(declare-fun m!6598282 () Bool)

(assert (=> b!5625853 m!6598282))

(assert (=> b!5625854 m!6598074))

(assert (=> b!5625854 m!6598074))

(declare-fun m!6598284 () Bool)

(assert (=> b!5625854 m!6598284))

(assert (=> b!5625854 m!6598078))

(assert (=> b!5625854 m!6598284))

(assert (=> b!5625854 m!6598078))

(declare-fun m!6598286 () Bool)

(assert (=> b!5625854 m!6598286))

(assert (=> b!5625391 d!1777323))

(declare-fun bs!1302318 () Bool)

(declare-fun d!1777325 () Bool)

(assert (= bs!1302318 (and d!1777325 d!1777229)))

(declare-fun lambda!302166 () Int)

(assert (=> bs!1302318 (= lambda!302166 lambda!302134)))

(declare-fun b!5625875 () Bool)

(declare-fun e!3467764 () Bool)

(declare-fun e!3467763 () Bool)

(assert (=> b!5625875 (= e!3467764 e!3467763)))

(declare-fun c!987572 () Bool)

(assert (=> b!5625875 (= c!987572 (isEmpty!34850 (exprs!5499 (h!69469 zl!343))))))

(declare-fun b!5625876 () Bool)

(declare-fun lt!2261414 () Regex!15615)

(declare-fun isEmptyExpr!1157 (Regex!15615) Bool)

(assert (=> b!5625876 (= e!3467763 (isEmptyExpr!1157 lt!2261414))))

(declare-fun b!5625877 () Bool)

(declare-fun e!3467761 () Regex!15615)

(assert (=> b!5625877 (= e!3467761 EmptyExpr!15615)))

(declare-fun b!5625878 () Bool)

(declare-fun e!3467759 () Regex!15615)

(assert (=> b!5625878 (= e!3467759 e!3467761)))

(declare-fun c!987571 () Bool)

(assert (=> b!5625878 (= c!987571 ((_ is Cons!63020) (exprs!5499 (h!69469 zl!343))))))

(declare-fun b!5625879 () Bool)

(declare-fun e!3467762 () Bool)

(assert (=> b!5625879 (= e!3467763 e!3467762)))

(declare-fun c!987570 () Bool)

(declare-fun tail!11071 (List!63144) List!63144)

(assert (=> b!5625879 (= c!987570 (isEmpty!34850 (tail!11071 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5625880 () Bool)

(declare-fun head!11976 (List!63144) Regex!15615)

(assert (=> b!5625880 (= e!3467762 (= lt!2261414 (head!11976 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5625881 () Bool)

(assert (=> b!5625881 (= e!3467761 (Concat!24460 (h!69468 (exprs!5499 (h!69469 zl!343))) (generalisedConcat!1230 (t!376436 (exprs!5499 (h!69469 zl!343))))))))

(declare-fun b!5625883 () Bool)

(assert (=> b!5625883 (= e!3467759 (h!69468 (exprs!5499 (h!69469 zl!343))))))

(declare-fun b!5625884 () Bool)

(declare-fun e!3467760 () Bool)

(assert (=> b!5625884 (= e!3467760 (isEmpty!34850 (t!376436 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5625882 () Bool)

(declare-fun isConcat!680 (Regex!15615) Bool)

(assert (=> b!5625882 (= e!3467762 (isConcat!680 lt!2261414))))

(assert (=> d!1777325 e!3467764))

(declare-fun res!2382767 () Bool)

(assert (=> d!1777325 (=> (not res!2382767) (not e!3467764))))

(assert (=> d!1777325 (= res!2382767 (validRegex!7351 lt!2261414))))

(assert (=> d!1777325 (= lt!2261414 e!3467759)))

(declare-fun c!987569 () Bool)

(assert (=> d!1777325 (= c!987569 e!3467760)))

(declare-fun res!2382768 () Bool)

(assert (=> d!1777325 (=> (not res!2382768) (not e!3467760))))

(assert (=> d!1777325 (= res!2382768 ((_ is Cons!63020) (exprs!5499 (h!69469 zl!343))))))

(assert (=> d!1777325 (forall!14770 (exprs!5499 (h!69469 zl!343)) lambda!302166)))

(assert (=> d!1777325 (= (generalisedConcat!1230 (exprs!5499 (h!69469 zl!343))) lt!2261414)))

(assert (= (and d!1777325 res!2382768) b!5625884))

(assert (= (and d!1777325 c!987569) b!5625883))

(assert (= (and d!1777325 (not c!987569)) b!5625878))

(assert (= (and b!5625878 c!987571) b!5625881))

(assert (= (and b!5625878 (not c!987571)) b!5625877))

(assert (= (and d!1777325 res!2382767) b!5625875))

(assert (= (and b!5625875 c!987572) b!5625876))

(assert (= (and b!5625875 (not c!987572)) b!5625879))

(assert (= (and b!5625879 c!987570) b!5625880))

(assert (= (and b!5625879 (not c!987570)) b!5625882))

(declare-fun m!6598288 () Bool)

(assert (=> b!5625880 m!6598288))

(declare-fun m!6598290 () Bool)

(assert (=> b!5625882 m!6598290))

(declare-fun m!6598292 () Bool)

(assert (=> b!5625881 m!6598292))

(declare-fun m!6598294 () Bool)

(assert (=> b!5625876 m!6598294))

(declare-fun m!6598296 () Bool)

(assert (=> b!5625879 m!6598296))

(assert (=> b!5625879 m!6598296))

(declare-fun m!6598298 () Bool)

(assert (=> b!5625879 m!6598298))

(assert (=> b!5625884 m!6597928))

(declare-fun m!6598300 () Bool)

(assert (=> d!1777325 m!6598300))

(declare-fun m!6598302 () Bool)

(assert (=> d!1777325 m!6598302))

(declare-fun m!6598304 () Bool)

(assert (=> b!5625875 m!6598304))

(assert (=> b!5625401 d!1777325))

(declare-fun bs!1302319 () Bool)

(declare-fun b!5625923 () Bool)

(assert (= bs!1302319 (and b!5625923 d!1777287)))

(declare-fun lambda!302171 () Int)

(assert (=> bs!1302319 (not (= lambda!302171 lambda!302162))))

(assert (=> bs!1302319 (not (= lambda!302171 lambda!302163))))

(declare-fun bs!1302320 () Bool)

(assert (= bs!1302320 (and b!5625923 b!5625402)))

(assert (=> bs!1302320 (not (= lambda!302171 lambda!302118))))

(assert (=> bs!1302320 (not (= lambda!302171 lambda!302119))))

(declare-fun bs!1302321 () Bool)

(assert (= bs!1302321 (and b!5625923 d!1777275)))

(assert (=> bs!1302321 (not (= lambda!302171 lambda!302152))))

(assert (=> b!5625923 true))

(assert (=> b!5625923 true))

(declare-fun bs!1302322 () Bool)

(declare-fun b!5625919 () Bool)

(assert (= bs!1302322 (and b!5625919 d!1777287)))

(declare-fun lambda!302172 () Int)

(assert (=> bs!1302322 (not (= lambda!302172 lambda!302162))))

(assert (=> bs!1302322 (= lambda!302172 lambda!302163)))

(declare-fun bs!1302323 () Bool)

(assert (= bs!1302323 (and b!5625919 b!5625402)))

(assert (=> bs!1302323 (not (= lambda!302172 lambda!302118))))

(assert (=> bs!1302323 (= lambda!302172 lambda!302119)))

(declare-fun bs!1302324 () Bool)

(assert (= bs!1302324 (and b!5625919 b!5625923)))

(assert (=> bs!1302324 (not (= lambda!302172 lambda!302171))))

(declare-fun bs!1302325 () Bool)

(assert (= bs!1302325 (and b!5625919 d!1777275)))

(assert (=> bs!1302325 (not (= lambda!302172 lambda!302152))))

(assert (=> b!5625919 true))

(assert (=> b!5625919 true))

(declare-fun b!5625917 () Bool)

(declare-fun res!2382787 () Bool)

(declare-fun e!3467788 () Bool)

(assert (=> b!5625917 (=> res!2382787 e!3467788)))

(declare-fun call!423793 () Bool)

(assert (=> b!5625917 (= res!2382787 call!423793)))

(declare-fun e!3467784 () Bool)

(assert (=> b!5625917 (= e!3467784 e!3467788)))

(declare-fun d!1777327 () Bool)

(declare-fun c!987582 () Bool)

(assert (=> d!1777327 (= c!987582 ((_ is EmptyExpr!15615) r!7292))))

(declare-fun e!3467787 () Bool)

(assert (=> d!1777327 (= (matchRSpec!2718 r!7292 s!2326) e!3467787)))

(declare-fun b!5625918 () Bool)

(declare-fun e!3467783 () Bool)

(declare-fun e!3467785 () Bool)

(assert (=> b!5625918 (= e!3467783 e!3467785)))

(declare-fun res!2382785 () Bool)

(assert (=> b!5625918 (= res!2382785 (matchRSpec!2718 (regOne!31743 r!7292) s!2326))))

(assert (=> b!5625918 (=> res!2382785 e!3467785)))

(declare-fun call!423794 () Bool)

(assert (=> b!5625919 (= e!3467784 call!423794)))

(declare-fun b!5625920 () Bool)

(declare-fun c!987584 () Bool)

(assert (=> b!5625920 (= c!987584 ((_ is Union!15615) r!7292))))

(declare-fun e!3467786 () Bool)

(assert (=> b!5625920 (= e!3467786 e!3467783)))

(declare-fun b!5625921 () Bool)

(assert (=> b!5625921 (= e!3467783 e!3467784)))

(declare-fun c!987583 () Bool)

(assert (=> b!5625921 (= c!987583 ((_ is Star!15615) r!7292))))

(declare-fun b!5625922 () Bool)

(declare-fun e!3467789 () Bool)

(assert (=> b!5625922 (= e!3467787 e!3467789)))

(declare-fun res!2382786 () Bool)

(assert (=> b!5625922 (= res!2382786 (not ((_ is EmptyLang!15615) r!7292)))))

(assert (=> b!5625922 (=> (not res!2382786) (not e!3467789))))

(assert (=> b!5625923 (= e!3467788 call!423794)))

(declare-fun b!5625924 () Bool)

(declare-fun c!987581 () Bool)

(assert (=> b!5625924 (= c!987581 ((_ is ElementMatch!15615) r!7292))))

(assert (=> b!5625924 (= e!3467789 e!3467786)))

(declare-fun bm!423788 () Bool)

(assert (=> bm!423788 (= call!423793 (isEmpty!34853 s!2326))))

(declare-fun b!5625925 () Bool)

(assert (=> b!5625925 (= e!3467787 call!423793)))

(declare-fun b!5625926 () Bool)

(assert (=> b!5625926 (= e!3467785 (matchRSpec!2718 (regTwo!31743 r!7292) s!2326))))

(declare-fun bm!423789 () Bool)

(assert (=> bm!423789 (= call!423794 (Exists!2715 (ite c!987583 lambda!302171 lambda!302172)))))

(declare-fun b!5625927 () Bool)

(assert (=> b!5625927 (= e!3467786 (= s!2326 (Cons!63022 (c!987439 r!7292) Nil!63022)))))

(assert (= (and d!1777327 c!987582) b!5625925))

(assert (= (and d!1777327 (not c!987582)) b!5625922))

(assert (= (and b!5625922 res!2382786) b!5625924))

(assert (= (and b!5625924 c!987581) b!5625927))

(assert (= (and b!5625924 (not c!987581)) b!5625920))

(assert (= (and b!5625920 c!987584) b!5625918))

(assert (= (and b!5625920 (not c!987584)) b!5625921))

(assert (= (and b!5625918 (not res!2382785)) b!5625926))

(assert (= (and b!5625921 c!987583) b!5625917))

(assert (= (and b!5625921 (not c!987583)) b!5625919))

(assert (= (and b!5625917 (not res!2382787)) b!5625923))

(assert (= (or b!5625923 b!5625919) bm!423789))

(assert (= (or b!5625925 b!5625917) bm!423788))

(declare-fun m!6598306 () Bool)

(assert (=> b!5625918 m!6598306))

(declare-fun m!6598308 () Bool)

(assert (=> bm!423788 m!6598308))

(declare-fun m!6598310 () Bool)

(assert (=> b!5625926 m!6598310))

(declare-fun m!6598312 () Bool)

(assert (=> bm!423789 m!6598312))

(assert (=> b!5625381 d!1777327))

(declare-fun b!5625956 () Bool)

(declare-fun e!3467810 () Bool)

(declare-fun lt!2261417 () Bool)

(assert (=> b!5625956 (= e!3467810 (not lt!2261417))))

(declare-fun b!5625957 () Bool)

(declare-fun res!2382807 () Bool)

(declare-fun e!3467809 () Bool)

(assert (=> b!5625957 (=> (not res!2382807) (not e!3467809))))

(declare-fun call!423797 () Bool)

(assert (=> b!5625957 (= res!2382807 (not call!423797))))

(declare-fun b!5625958 () Bool)

(declare-fun res!2382810 () Bool)

(declare-fun e!3467808 () Bool)

(assert (=> b!5625958 (=> res!2382810 e!3467808)))

(assert (=> b!5625958 (= res!2382810 (not ((_ is ElementMatch!15615) r!7292)))))

(assert (=> b!5625958 (= e!3467810 e!3467808)))

(declare-fun bm!423792 () Bool)

(assert (=> bm!423792 (= call!423797 (isEmpty!34853 s!2326))))

(declare-fun b!5625959 () Bool)

(declare-fun e!3467805 () Bool)

(assert (=> b!5625959 (= e!3467805 (= lt!2261417 call!423797))))

(declare-fun b!5625961 () Bool)

(assert (=> b!5625961 (= e!3467805 e!3467810)))

(declare-fun c!987591 () Bool)

(assert (=> b!5625961 (= c!987591 ((_ is EmptyLang!15615) r!7292))))

(declare-fun b!5625962 () Bool)

(assert (=> b!5625962 (= e!3467809 (= (head!11975 s!2326) (c!987439 r!7292)))))

(declare-fun b!5625963 () Bool)

(declare-fun e!3467806 () Bool)

(assert (=> b!5625963 (= e!3467806 (not (= (head!11975 s!2326) (c!987439 r!7292))))))

(declare-fun b!5625964 () Bool)

(declare-fun res!2382806 () Bool)

(assert (=> b!5625964 (=> res!2382806 e!3467808)))

(assert (=> b!5625964 (= res!2382806 e!3467809)))

(declare-fun res!2382804 () Bool)

(assert (=> b!5625964 (=> (not res!2382804) (not e!3467809))))

(assert (=> b!5625964 (= res!2382804 lt!2261417)))

(declare-fun b!5625965 () Bool)

(declare-fun e!3467804 () Bool)

(assert (=> b!5625965 (= e!3467804 e!3467806)))

(declare-fun res!2382805 () Bool)

(assert (=> b!5625965 (=> res!2382805 e!3467806)))

(assert (=> b!5625965 (= res!2382805 call!423797)))

(declare-fun b!5625966 () Bool)

(declare-fun e!3467807 () Bool)

(declare-fun derivativeStep!4451 (Regex!15615 C!31500) Regex!15615)

(assert (=> b!5625966 (= e!3467807 (matchR!7800 (derivativeStep!4451 r!7292 (head!11975 s!2326)) (tail!11070 s!2326)))))

(declare-fun b!5625967 () Bool)

(assert (=> b!5625967 (= e!3467808 e!3467804)))

(declare-fun res!2382811 () Bool)

(assert (=> b!5625967 (=> (not res!2382811) (not e!3467804))))

(assert (=> b!5625967 (= res!2382811 (not lt!2261417))))

(declare-fun b!5625960 () Bool)

(declare-fun res!2382809 () Bool)

(assert (=> b!5625960 (=> (not res!2382809) (not e!3467809))))

(assert (=> b!5625960 (= res!2382809 (isEmpty!34853 (tail!11070 s!2326)))))

(declare-fun d!1777329 () Bool)

(assert (=> d!1777329 e!3467805))

(declare-fun c!987592 () Bool)

(assert (=> d!1777329 (= c!987592 ((_ is EmptyExpr!15615) r!7292))))

(assert (=> d!1777329 (= lt!2261417 e!3467807)))

(declare-fun c!987593 () Bool)

(assert (=> d!1777329 (= c!987593 (isEmpty!34853 s!2326))))

(assert (=> d!1777329 (validRegex!7351 r!7292)))

(assert (=> d!1777329 (= (matchR!7800 r!7292 s!2326) lt!2261417)))

(declare-fun b!5625968 () Bool)

(assert (=> b!5625968 (= e!3467807 (nullable!5647 r!7292))))

(declare-fun b!5625969 () Bool)

(declare-fun res!2382808 () Bool)

(assert (=> b!5625969 (=> res!2382808 e!3467806)))

(assert (=> b!5625969 (= res!2382808 (not (isEmpty!34853 (tail!11070 s!2326))))))

(assert (= (and d!1777329 c!987593) b!5625968))

(assert (= (and d!1777329 (not c!987593)) b!5625966))

(assert (= (and d!1777329 c!987592) b!5625959))

(assert (= (and d!1777329 (not c!987592)) b!5625961))

(assert (= (and b!5625961 c!987591) b!5625956))

(assert (= (and b!5625961 (not c!987591)) b!5625958))

(assert (= (and b!5625958 (not res!2382810)) b!5625964))

(assert (= (and b!5625964 res!2382804) b!5625957))

(assert (= (and b!5625957 res!2382807) b!5625960))

(assert (= (and b!5625960 res!2382809) b!5625962))

(assert (= (and b!5625964 (not res!2382806)) b!5625967))

(assert (= (and b!5625967 res!2382811) b!5625965))

(assert (= (and b!5625965 (not res!2382805)) b!5625969))

(assert (= (and b!5625969 (not res!2382808)) b!5625963))

(assert (= (or b!5625959 b!5625957 b!5625965) bm!423792))

(declare-fun m!6598314 () Bool)

(assert (=> b!5625962 m!6598314))

(declare-fun m!6598316 () Bool)

(assert (=> b!5625968 m!6598316))

(assert (=> bm!423792 m!6598308))

(declare-fun m!6598318 () Bool)

(assert (=> b!5625960 m!6598318))

(assert (=> b!5625960 m!6598318))

(declare-fun m!6598320 () Bool)

(assert (=> b!5625960 m!6598320))

(assert (=> b!5625963 m!6598314))

(assert (=> b!5625969 m!6598318))

(assert (=> b!5625969 m!6598318))

(assert (=> b!5625969 m!6598320))

(assert (=> d!1777329 m!6598308))

(assert (=> d!1777329 m!6597926))

(assert (=> b!5625966 m!6598314))

(assert (=> b!5625966 m!6598314))

(declare-fun m!6598322 () Bool)

(assert (=> b!5625966 m!6598322))

(assert (=> b!5625966 m!6598318))

(assert (=> b!5625966 m!6598322))

(assert (=> b!5625966 m!6598318))

(declare-fun m!6598324 () Bool)

(assert (=> b!5625966 m!6598324))

(assert (=> b!5625381 d!1777329))

(declare-fun d!1777331 () Bool)

(assert (=> d!1777331 (= (matchR!7800 r!7292 s!2326) (matchRSpec!2718 r!7292 s!2326))))

(declare-fun lt!2261420 () Unit!155992)

(declare-fun choose!42624 (Regex!15615 List!63146) Unit!155992)

(assert (=> d!1777331 (= lt!2261420 (choose!42624 r!7292 s!2326))))

(assert (=> d!1777331 (validRegex!7351 r!7292)))

(assert (=> d!1777331 (= (mainMatchTheorem!2718 r!7292 s!2326) lt!2261420)))

(declare-fun bs!1302326 () Bool)

(assert (= bs!1302326 d!1777331))

(assert (=> bs!1302326 m!6597942))

(assert (=> bs!1302326 m!6597940))

(declare-fun m!6598326 () Bool)

(assert (=> bs!1302326 m!6598326))

(assert (=> bs!1302326 m!6597926))

(assert (=> b!5625381 d!1777331))

(assert (=> b!5625404 d!1777321))

(declare-fun d!1777333 () Bool)

(declare-fun c!987594 () Bool)

(assert (=> d!1777333 (= c!987594 (isEmpty!34853 (t!376438 s!2326)))))

(declare-fun e!3467811 () Bool)

(assert (=> d!1777333 (= (matchZipper!1753 lt!2261329 (t!376438 s!2326)) e!3467811)))

(declare-fun b!5625970 () Bool)

(assert (=> b!5625970 (= e!3467811 (nullableZipper!1598 lt!2261329))))

(declare-fun b!5625971 () Bool)

(assert (=> b!5625971 (= e!3467811 (matchZipper!1753 (derivationStepZipper!1702 lt!2261329 (head!11975 (t!376438 s!2326))) (tail!11070 (t!376438 s!2326))))))

(assert (= (and d!1777333 c!987594) b!5625970))

(assert (= (and d!1777333 (not c!987594)) b!5625971))

(assert (=> d!1777333 m!6598070))

(declare-fun m!6598328 () Bool)

(assert (=> b!5625970 m!6598328))

(assert (=> b!5625971 m!6598074))

(assert (=> b!5625971 m!6598074))

(declare-fun m!6598330 () Bool)

(assert (=> b!5625971 m!6598330))

(assert (=> b!5625971 m!6598078))

(assert (=> b!5625971 m!6598330))

(assert (=> b!5625971 m!6598078))

(declare-fun m!6598332 () Bool)

(assert (=> b!5625971 m!6598332))

(assert (=> b!5625404 d!1777333))

(declare-fun d!1777335 () Bool)

(declare-fun c!987595 () Bool)

(assert (=> d!1777335 (= c!987595 (isEmpty!34853 (t!376438 s!2326)))))

(declare-fun e!3467812 () Bool)

(assert (=> d!1777335 (= (matchZipper!1753 lt!2261330 (t!376438 s!2326)) e!3467812)))

(declare-fun b!5625972 () Bool)

(assert (=> b!5625972 (= e!3467812 (nullableZipper!1598 lt!2261330))))

(declare-fun b!5625973 () Bool)

(assert (=> b!5625973 (= e!3467812 (matchZipper!1753 (derivationStepZipper!1702 lt!2261330 (head!11975 (t!376438 s!2326))) (tail!11070 (t!376438 s!2326))))))

(assert (= (and d!1777335 c!987595) b!5625972))

(assert (= (and d!1777335 (not c!987595)) b!5625973))

(assert (=> d!1777335 m!6598070))

(declare-fun m!6598334 () Bool)

(assert (=> b!5625972 m!6598334))

(assert (=> b!5625973 m!6598074))

(assert (=> b!5625973 m!6598074))

(declare-fun m!6598336 () Bool)

(assert (=> b!5625973 m!6598336))

(assert (=> b!5625973 m!6598078))

(assert (=> b!5625973 m!6598336))

(assert (=> b!5625973 m!6598078))

(declare-fun m!6598338 () Bool)

(assert (=> b!5625973 m!6598338))

(assert (=> b!5625404 d!1777335))

(declare-fun d!1777337 () Bool)

(declare-fun e!3467813 () Bool)

(assert (=> d!1777337 (= (matchZipper!1753 ((_ map or) lt!2261330 lt!2261325) (t!376438 s!2326)) e!3467813)))

(declare-fun res!2382812 () Bool)

(assert (=> d!1777337 (=> res!2382812 e!3467813)))

(assert (=> d!1777337 (= res!2382812 (matchZipper!1753 lt!2261330 (t!376438 s!2326)))))

(declare-fun lt!2261421 () Unit!155992)

(assert (=> d!1777337 (= lt!2261421 (choose!42623 lt!2261330 lt!2261325 (t!376438 s!2326)))))

(assert (=> d!1777337 (= (lemmaZipperConcatMatchesSameAsBothZippers!640 lt!2261330 lt!2261325 (t!376438 s!2326)) lt!2261421)))

(declare-fun b!5625974 () Bool)

(assert (=> b!5625974 (= e!3467813 (matchZipper!1753 lt!2261325 (t!376438 s!2326)))))

(assert (= (and d!1777337 (not res!2382812)) b!5625974))

(declare-fun m!6598340 () Bool)

(assert (=> d!1777337 m!6598340))

(assert (=> d!1777337 m!6597910))

(declare-fun m!6598342 () Bool)

(assert (=> d!1777337 m!6598342))

(assert (=> b!5625974 m!6597888))

(assert (=> b!5625404 d!1777337))

(declare-fun call!423812 () (InoxSet Context!9998))

(declare-fun bm!423805 () Bool)

(declare-fun call!423813 () List!63144)

(declare-fun c!987606 () Bool)

(assert (=> bm!423805 (= call!423812 (derivationStepZipperDown!957 (ite c!987606 (regOne!31743 (regTwo!31742 (regOne!31742 r!7292))) (regOne!31742 (regTwo!31742 (regOne!31742 r!7292)))) (ite c!987606 lt!2261341 (Context!9999 call!423813)) (h!69470 s!2326)))))

(declare-fun bm!423806 () Bool)

(declare-fun call!423810 () (InoxSet Context!9998))

(declare-fun call!423811 () (InoxSet Context!9998))

(assert (=> bm!423806 (= call!423810 call!423811)))

(declare-fun bm!423807 () Bool)

(declare-fun call!423814 () List!63144)

(assert (=> bm!423807 (= call!423814 call!423813)))

(declare-fun c!987610 () Bool)

(declare-fun bm!423808 () Bool)

(declare-fun c!987607 () Bool)

(assert (=> bm!423808 (= call!423811 (derivationStepZipperDown!957 (ite c!987606 (regTwo!31743 (regTwo!31742 (regOne!31742 r!7292))) (ite c!987607 (regTwo!31742 (regTwo!31742 (regOne!31742 r!7292))) (ite c!987610 (regOne!31742 (regTwo!31742 (regOne!31742 r!7292))) (reg!15944 (regTwo!31742 (regOne!31742 r!7292)))))) (ite (or c!987606 c!987607) lt!2261341 (Context!9999 call!423814)) (h!69470 s!2326)))))

(declare-fun b!5625998 () Bool)

(declare-fun e!3467826 () (InoxSet Context!9998))

(declare-fun e!3467829 () (InoxSet Context!9998))

(assert (=> b!5625998 (= e!3467826 e!3467829)))

(assert (=> b!5625998 (= c!987610 ((_ is Concat!24460) (regTwo!31742 (regOne!31742 r!7292))))))

(declare-fun b!5625999 () Bool)

(assert (=> b!5625999 (= e!3467826 ((_ map or) call!423812 call!423810))))

(declare-fun b!5626000 () Bool)

(declare-fun e!3467831 () (InoxSet Context!9998))

(declare-fun e!3467827 () (InoxSet Context!9998))

(assert (=> b!5626000 (= e!3467831 e!3467827)))

(assert (=> b!5626000 (= c!987606 ((_ is Union!15615) (regTwo!31742 (regOne!31742 r!7292))))))

(declare-fun b!5626001 () Bool)

(declare-fun call!423815 () (InoxSet Context!9998))

(assert (=> b!5626001 (= e!3467829 call!423815)))

(declare-fun b!5625997 () Bool)

(assert (=> b!5625997 (= e!3467827 ((_ map or) call!423812 call!423811))))

(declare-fun d!1777339 () Bool)

(declare-fun c!987609 () Bool)

(assert (=> d!1777339 (= c!987609 (and ((_ is ElementMatch!15615) (regTwo!31742 (regOne!31742 r!7292))) (= (c!987439 (regTwo!31742 (regOne!31742 r!7292))) (h!69470 s!2326))))))

(assert (=> d!1777339 (= (derivationStepZipperDown!957 (regTwo!31742 (regOne!31742 r!7292)) lt!2261341 (h!69470 s!2326)) e!3467831)))

(declare-fun b!5626002 () Bool)

(declare-fun e!3467830 () Bool)

(assert (=> b!5626002 (= e!3467830 (nullable!5647 (regOne!31742 (regTwo!31742 (regOne!31742 r!7292)))))))

(declare-fun bm!423809 () Bool)

(declare-fun $colon$colon!1666 (List!63144 Regex!15615) List!63144)

(assert (=> bm!423809 (= call!423813 ($colon$colon!1666 (exprs!5499 lt!2261341) (ite (or c!987607 c!987610) (regTwo!31742 (regTwo!31742 (regOne!31742 r!7292))) (regTwo!31742 (regOne!31742 r!7292)))))))

(declare-fun bm!423810 () Bool)

(assert (=> bm!423810 (= call!423815 call!423810)))

(declare-fun b!5626003 () Bool)

(assert (=> b!5626003 (= e!3467831 (store ((as const (Array Context!9998 Bool)) false) lt!2261341 true))))

(declare-fun b!5626004 () Bool)

(declare-fun e!3467828 () (InoxSet Context!9998))

(assert (=> b!5626004 (= e!3467828 call!423815)))

(declare-fun b!5626005 () Bool)

(declare-fun c!987608 () Bool)

(assert (=> b!5626005 (= c!987608 ((_ is Star!15615) (regTwo!31742 (regOne!31742 r!7292))))))

(assert (=> b!5626005 (= e!3467829 e!3467828)))

(declare-fun b!5626006 () Bool)

(assert (=> b!5626006 (= c!987607 e!3467830)))

(declare-fun res!2382815 () Bool)

(assert (=> b!5626006 (=> (not res!2382815) (not e!3467830))))

(assert (=> b!5626006 (= res!2382815 ((_ is Concat!24460) (regTwo!31742 (regOne!31742 r!7292))))))

(assert (=> b!5626006 (= e!3467827 e!3467826)))

(declare-fun b!5626007 () Bool)

(assert (=> b!5626007 (= e!3467828 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777339 c!987609) b!5626003))

(assert (= (and d!1777339 (not c!987609)) b!5626000))

(assert (= (and b!5626000 c!987606) b!5625997))

(assert (= (and b!5626000 (not c!987606)) b!5626006))

(assert (= (and b!5626006 res!2382815) b!5626002))

(assert (= (and b!5626006 c!987607) b!5625999))

(assert (= (and b!5626006 (not c!987607)) b!5625998))

(assert (= (and b!5625998 c!987610) b!5626001))

(assert (= (and b!5625998 (not c!987610)) b!5626005))

(assert (= (and b!5626005 c!987608) b!5626004))

(assert (= (and b!5626005 (not c!987608)) b!5626007))

(assert (= (or b!5626001 b!5626004) bm!423807))

(assert (= (or b!5626001 b!5626004) bm!423810))

(assert (= (or b!5625999 bm!423807) bm!423809))

(assert (= (or b!5625999 bm!423810) bm!423806))

(assert (= (or b!5625997 bm!423806) bm!423808))

(assert (= (or b!5625997 b!5625999) bm!423805))

(declare-fun m!6598344 () Bool)

(assert (=> bm!423809 m!6598344))

(declare-fun m!6598346 () Bool)

(assert (=> b!5626002 m!6598346))

(declare-fun m!6598348 () Bool)

(assert (=> bm!423808 m!6598348))

(declare-fun m!6598350 () Bool)

(assert (=> b!5626003 m!6598350))

(declare-fun m!6598352 () Bool)

(assert (=> bm!423805 m!6598352))

(assert (=> b!5625385 d!1777339))

(declare-fun call!423819 () List!63144)

(declare-fun bm!423811 () Bool)

(declare-fun c!987611 () Bool)

(declare-fun call!423818 () (InoxSet Context!9998))

(assert (=> bm!423811 (= call!423818 (derivationStepZipperDown!957 (ite c!987611 (regOne!31743 (regOne!31742 (regOne!31742 r!7292))) (regOne!31742 (regOne!31742 (regOne!31742 r!7292)))) (ite c!987611 lt!2261336 (Context!9999 call!423819)) (h!69470 s!2326)))))

(declare-fun bm!423812 () Bool)

(declare-fun call!423816 () (InoxSet Context!9998))

(declare-fun call!423817 () (InoxSet Context!9998))

(assert (=> bm!423812 (= call!423816 call!423817)))

(declare-fun bm!423813 () Bool)

(declare-fun call!423820 () List!63144)

(assert (=> bm!423813 (= call!423820 call!423819)))

(declare-fun c!987615 () Bool)

(declare-fun bm!423814 () Bool)

(declare-fun c!987612 () Bool)

(assert (=> bm!423814 (= call!423817 (derivationStepZipperDown!957 (ite c!987611 (regTwo!31743 (regOne!31742 (regOne!31742 r!7292))) (ite c!987612 (regTwo!31742 (regOne!31742 (regOne!31742 r!7292))) (ite c!987615 (regOne!31742 (regOne!31742 (regOne!31742 r!7292))) (reg!15944 (regOne!31742 (regOne!31742 r!7292)))))) (ite (or c!987611 c!987612) lt!2261336 (Context!9999 call!423820)) (h!69470 s!2326)))))

(declare-fun b!5626009 () Bool)

(declare-fun e!3467832 () (InoxSet Context!9998))

(declare-fun e!3467835 () (InoxSet Context!9998))

(assert (=> b!5626009 (= e!3467832 e!3467835)))

(assert (=> b!5626009 (= c!987615 ((_ is Concat!24460) (regOne!31742 (regOne!31742 r!7292))))))

(declare-fun b!5626010 () Bool)

(assert (=> b!5626010 (= e!3467832 ((_ map or) call!423818 call!423816))))

(declare-fun b!5626011 () Bool)

(declare-fun e!3467837 () (InoxSet Context!9998))

(declare-fun e!3467833 () (InoxSet Context!9998))

(assert (=> b!5626011 (= e!3467837 e!3467833)))

(assert (=> b!5626011 (= c!987611 ((_ is Union!15615) (regOne!31742 (regOne!31742 r!7292))))))

(declare-fun b!5626012 () Bool)

(declare-fun call!423821 () (InoxSet Context!9998))

(assert (=> b!5626012 (= e!3467835 call!423821)))

(declare-fun b!5626008 () Bool)

(assert (=> b!5626008 (= e!3467833 ((_ map or) call!423818 call!423817))))

(declare-fun d!1777341 () Bool)

(declare-fun c!987614 () Bool)

(assert (=> d!1777341 (= c!987614 (and ((_ is ElementMatch!15615) (regOne!31742 (regOne!31742 r!7292))) (= (c!987439 (regOne!31742 (regOne!31742 r!7292))) (h!69470 s!2326))))))

(assert (=> d!1777341 (= (derivationStepZipperDown!957 (regOne!31742 (regOne!31742 r!7292)) lt!2261336 (h!69470 s!2326)) e!3467837)))

(declare-fun b!5626013 () Bool)

(declare-fun e!3467836 () Bool)

(assert (=> b!5626013 (= e!3467836 (nullable!5647 (regOne!31742 (regOne!31742 (regOne!31742 r!7292)))))))

(declare-fun bm!423815 () Bool)

(assert (=> bm!423815 (= call!423819 ($colon$colon!1666 (exprs!5499 lt!2261336) (ite (or c!987612 c!987615) (regTwo!31742 (regOne!31742 (regOne!31742 r!7292))) (regOne!31742 (regOne!31742 r!7292)))))))

(declare-fun bm!423816 () Bool)

(assert (=> bm!423816 (= call!423821 call!423816)))

(declare-fun b!5626014 () Bool)

(assert (=> b!5626014 (= e!3467837 (store ((as const (Array Context!9998 Bool)) false) lt!2261336 true))))

(declare-fun b!5626015 () Bool)

(declare-fun e!3467834 () (InoxSet Context!9998))

(assert (=> b!5626015 (= e!3467834 call!423821)))

(declare-fun b!5626016 () Bool)

(declare-fun c!987613 () Bool)

(assert (=> b!5626016 (= c!987613 ((_ is Star!15615) (regOne!31742 (regOne!31742 r!7292))))))

(assert (=> b!5626016 (= e!3467835 e!3467834)))

(declare-fun b!5626017 () Bool)

(assert (=> b!5626017 (= c!987612 e!3467836)))

(declare-fun res!2382816 () Bool)

(assert (=> b!5626017 (=> (not res!2382816) (not e!3467836))))

(assert (=> b!5626017 (= res!2382816 ((_ is Concat!24460) (regOne!31742 (regOne!31742 r!7292))))))

(assert (=> b!5626017 (= e!3467833 e!3467832)))

(declare-fun b!5626018 () Bool)

(assert (=> b!5626018 (= e!3467834 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777341 c!987614) b!5626014))

(assert (= (and d!1777341 (not c!987614)) b!5626011))

(assert (= (and b!5626011 c!987611) b!5626008))

(assert (= (and b!5626011 (not c!987611)) b!5626017))

(assert (= (and b!5626017 res!2382816) b!5626013))

(assert (= (and b!5626017 c!987612) b!5626010))

(assert (= (and b!5626017 (not c!987612)) b!5626009))

(assert (= (and b!5626009 c!987615) b!5626012))

(assert (= (and b!5626009 (not c!987615)) b!5626016))

(assert (= (and b!5626016 c!987613) b!5626015))

(assert (= (and b!5626016 (not c!987613)) b!5626018))

(assert (= (or b!5626012 b!5626015) bm!423813))

(assert (= (or b!5626012 b!5626015) bm!423816))

(assert (= (or b!5626010 bm!423813) bm!423815))

(assert (= (or b!5626010 bm!423816) bm!423812))

(assert (= (or b!5626008 bm!423812) bm!423814))

(assert (= (or b!5626008 b!5626010) bm!423811))

(declare-fun m!6598354 () Bool)

(assert (=> bm!423815 m!6598354))

(declare-fun m!6598356 () Bool)

(assert (=> b!5626013 m!6598356))

(declare-fun m!6598358 () Bool)

(assert (=> bm!423814 m!6598358))

(declare-fun m!6598360 () Bool)

(assert (=> b!5626014 m!6598360))

(declare-fun m!6598362 () Bool)

(assert (=> bm!423811 m!6598362))

(assert (=> b!5625385 d!1777341))

(declare-fun d!1777343 () Bool)

(declare-fun e!3467840 () Bool)

(assert (=> d!1777343 e!3467840))

(declare-fun res!2382819 () Bool)

(assert (=> d!1777343 (=> (not res!2382819) (not e!3467840))))

(declare-fun lt!2261424 () List!63145)

(declare-fun noDuplicate!1579 (List!63145) Bool)

(assert (=> d!1777343 (= res!2382819 (noDuplicate!1579 lt!2261424))))

(declare-fun choose!42625 ((InoxSet Context!9998)) List!63145)

(assert (=> d!1777343 (= lt!2261424 (choose!42625 z!1189))))

(assert (=> d!1777343 (= (toList!9399 z!1189) lt!2261424)))

(declare-fun b!5626021 () Bool)

(declare-fun content!11390 (List!63145) (InoxSet Context!9998))

(assert (=> b!5626021 (= e!3467840 (= (content!11390 lt!2261424) z!1189))))

(assert (= (and d!1777343 res!2382819) b!5626021))

(declare-fun m!6598364 () Bool)

(assert (=> d!1777343 m!6598364))

(declare-fun m!6598366 () Bool)

(assert (=> d!1777343 m!6598366))

(declare-fun m!6598368 () Bool)

(assert (=> b!5626021 m!6598368))

(assert (=> b!5625394 d!1777343))

(declare-fun call!423825 () List!63144)

(declare-fun c!987616 () Bool)

(declare-fun call!423824 () (InoxSet Context!9998))

(declare-fun bm!423817 () Bool)

(assert (=> bm!423817 (= call!423824 (derivationStepZipperDown!957 (ite c!987616 (regOne!31743 (h!69468 (exprs!5499 (h!69469 zl!343)))) (regOne!31742 (h!69468 (exprs!5499 (h!69469 zl!343))))) (ite c!987616 lt!2261341 (Context!9999 call!423825)) (h!69470 s!2326)))))

(declare-fun bm!423818 () Bool)

(declare-fun call!423822 () (InoxSet Context!9998))

(declare-fun call!423823 () (InoxSet Context!9998))

(assert (=> bm!423818 (= call!423822 call!423823)))

(declare-fun bm!423819 () Bool)

(declare-fun call!423826 () List!63144)

(assert (=> bm!423819 (= call!423826 call!423825)))

(declare-fun c!987617 () Bool)

(declare-fun bm!423820 () Bool)

(declare-fun c!987620 () Bool)

(assert (=> bm!423820 (= call!423823 (derivationStepZipperDown!957 (ite c!987616 (regTwo!31743 (h!69468 (exprs!5499 (h!69469 zl!343)))) (ite c!987617 (regTwo!31742 (h!69468 (exprs!5499 (h!69469 zl!343)))) (ite c!987620 (regOne!31742 (h!69468 (exprs!5499 (h!69469 zl!343)))) (reg!15944 (h!69468 (exprs!5499 (h!69469 zl!343))))))) (ite (or c!987616 c!987617) lt!2261341 (Context!9999 call!423826)) (h!69470 s!2326)))))

(declare-fun b!5626023 () Bool)

(declare-fun e!3467841 () (InoxSet Context!9998))

(declare-fun e!3467844 () (InoxSet Context!9998))

(assert (=> b!5626023 (= e!3467841 e!3467844)))

(assert (=> b!5626023 (= c!987620 ((_ is Concat!24460) (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5626024 () Bool)

(assert (=> b!5626024 (= e!3467841 ((_ map or) call!423824 call!423822))))

(declare-fun b!5626025 () Bool)

(declare-fun e!3467846 () (InoxSet Context!9998))

(declare-fun e!3467842 () (InoxSet Context!9998))

(assert (=> b!5626025 (= e!3467846 e!3467842)))

(assert (=> b!5626025 (= c!987616 ((_ is Union!15615) (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun b!5626026 () Bool)

(declare-fun call!423827 () (InoxSet Context!9998))

(assert (=> b!5626026 (= e!3467844 call!423827)))

(declare-fun b!5626022 () Bool)

(assert (=> b!5626022 (= e!3467842 ((_ map or) call!423824 call!423823))))

(declare-fun d!1777345 () Bool)

(declare-fun c!987619 () Bool)

(assert (=> d!1777345 (= c!987619 (and ((_ is ElementMatch!15615) (h!69468 (exprs!5499 (h!69469 zl!343)))) (= (c!987439 (h!69468 (exprs!5499 (h!69469 zl!343)))) (h!69470 s!2326))))))

(assert (=> d!1777345 (= (derivationStepZipperDown!957 (h!69468 (exprs!5499 (h!69469 zl!343))) lt!2261341 (h!69470 s!2326)) e!3467846)))

(declare-fun b!5626027 () Bool)

(declare-fun e!3467845 () Bool)

(assert (=> b!5626027 (= e!3467845 (nullable!5647 (regOne!31742 (h!69468 (exprs!5499 (h!69469 zl!343))))))))

(declare-fun bm!423821 () Bool)

(assert (=> bm!423821 (= call!423825 ($colon$colon!1666 (exprs!5499 lt!2261341) (ite (or c!987617 c!987620) (regTwo!31742 (h!69468 (exprs!5499 (h!69469 zl!343)))) (h!69468 (exprs!5499 (h!69469 zl!343))))))))

(declare-fun bm!423822 () Bool)

(assert (=> bm!423822 (= call!423827 call!423822)))

(declare-fun b!5626028 () Bool)

(assert (=> b!5626028 (= e!3467846 (store ((as const (Array Context!9998 Bool)) false) lt!2261341 true))))

(declare-fun b!5626029 () Bool)

(declare-fun e!3467843 () (InoxSet Context!9998))

(assert (=> b!5626029 (= e!3467843 call!423827)))

(declare-fun b!5626030 () Bool)

(declare-fun c!987618 () Bool)

(assert (=> b!5626030 (= c!987618 ((_ is Star!15615) (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(assert (=> b!5626030 (= e!3467844 e!3467843)))

(declare-fun b!5626031 () Bool)

(assert (=> b!5626031 (= c!987617 e!3467845)))

(declare-fun res!2382820 () Bool)

(assert (=> b!5626031 (=> (not res!2382820) (not e!3467845))))

(assert (=> b!5626031 (= res!2382820 ((_ is Concat!24460) (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(assert (=> b!5626031 (= e!3467842 e!3467841)))

(declare-fun b!5626032 () Bool)

(assert (=> b!5626032 (= e!3467843 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777345 c!987619) b!5626028))

(assert (= (and d!1777345 (not c!987619)) b!5626025))

(assert (= (and b!5626025 c!987616) b!5626022))

(assert (= (and b!5626025 (not c!987616)) b!5626031))

(assert (= (and b!5626031 res!2382820) b!5626027))

(assert (= (and b!5626031 c!987617) b!5626024))

(assert (= (and b!5626031 (not c!987617)) b!5626023))

(assert (= (and b!5626023 c!987620) b!5626026))

(assert (= (and b!5626023 (not c!987620)) b!5626030))

(assert (= (and b!5626030 c!987618) b!5626029))

(assert (= (and b!5626030 (not c!987618)) b!5626032))

(assert (= (or b!5626026 b!5626029) bm!423819))

(assert (= (or b!5626026 b!5626029) bm!423822))

(assert (= (or b!5626024 bm!423819) bm!423821))

(assert (= (or b!5626024 bm!423822) bm!423818))

(assert (= (or b!5626022 bm!423818) bm!423820))

(assert (= (or b!5626022 b!5626024) bm!423817))

(declare-fun m!6598370 () Bool)

(assert (=> bm!423821 m!6598370))

(declare-fun m!6598372 () Bool)

(assert (=> b!5626027 m!6598372))

(declare-fun m!6598374 () Bool)

(assert (=> bm!423820 m!6598374))

(assert (=> b!5626028 m!6598350))

(declare-fun m!6598376 () Bool)

(assert (=> bm!423817 m!6598376))

(assert (=> b!5625384 d!1777345))

(declare-fun d!1777347 () Bool)

(declare-fun dynLambda!24644 (Int Context!9998) (InoxSet Context!9998))

(assert (=> d!1777347 (= (flatMap!1228 z!1189 lambda!302120) (dynLambda!24644 lambda!302120 (h!69469 zl!343)))))

(declare-fun lt!2261427 () Unit!155992)

(declare-fun choose!42626 ((InoxSet Context!9998) Context!9998 Int) Unit!155992)

(assert (=> d!1777347 (= lt!2261427 (choose!42626 z!1189 (h!69469 zl!343) lambda!302120))))

(assert (=> d!1777347 (= z!1189 (store ((as const (Array Context!9998 Bool)) false) (h!69469 zl!343) true))))

(assert (=> d!1777347 (= (lemmaFlatMapOnSingletonSet!760 z!1189 (h!69469 zl!343) lambda!302120) lt!2261427)))

(declare-fun b_lambda!212803 () Bool)

(assert (=> (not b_lambda!212803) (not d!1777347)))

(declare-fun bs!1302327 () Bool)

(assert (= bs!1302327 d!1777347))

(assert (=> bs!1302327 m!6597894))

(declare-fun m!6598378 () Bool)

(assert (=> bs!1302327 m!6598378))

(declare-fun m!6598380 () Bool)

(assert (=> bs!1302327 m!6598380))

(declare-fun m!6598382 () Bool)

(assert (=> bs!1302327 m!6598382))

(assert (=> b!5625384 d!1777347))

(declare-fun b!5626043 () Bool)

(declare-fun e!3467854 () (InoxSet Context!9998))

(declare-fun call!423830 () (InoxSet Context!9998))

(assert (=> b!5626043 (= e!3467854 ((_ map or) call!423830 (derivationStepZipperUp!883 (Context!9999 (t!376436 (exprs!5499 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343)))))))) (h!69470 s!2326))))))

(declare-fun d!1777349 () Bool)

(declare-fun c!987625 () Bool)

(declare-fun e!3467855 () Bool)

(assert (=> d!1777349 (= c!987625 e!3467855)))

(declare-fun res!2382823 () Bool)

(assert (=> d!1777349 (=> (not res!2382823) (not e!3467855))))

(assert (=> d!1777349 (= res!2382823 ((_ is Cons!63020) (exprs!5499 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343))))))))))

(assert (=> d!1777349 (= (derivationStepZipperUp!883 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343))))) (h!69470 s!2326)) e!3467854)))

(declare-fun b!5626044 () Bool)

(assert (=> b!5626044 (= e!3467855 (nullable!5647 (h!69468 (exprs!5499 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343)))))))))))

(declare-fun bm!423825 () Bool)

(assert (=> bm!423825 (= call!423830 (derivationStepZipperDown!957 (h!69468 (exprs!5499 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343))))))) (Context!9999 (t!376436 (exprs!5499 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343)))))))) (h!69470 s!2326)))))

(declare-fun b!5626045 () Bool)

(declare-fun e!3467853 () (InoxSet Context!9998))

(assert (=> b!5626045 (= e!3467854 e!3467853)))

(declare-fun c!987626 () Bool)

(assert (=> b!5626045 (= c!987626 ((_ is Cons!63020) (exprs!5499 (Context!9999 (Cons!63020 (h!69468 (exprs!5499 (h!69469 zl!343))) (t!376436 (exprs!5499 (h!69469 zl!343))))))))))

(declare-fun b!5626046 () Bool)

(assert (=> b!5626046 (= e!3467853 call!423830)))

(declare-fun b!5626047 () Bool)

(assert (=> b!5626047 (= e!3467853 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777349 res!2382823) b!5626044))

(assert (= (and d!1777349 c!987625) b!5626043))

(assert (= (and d!1777349 (not c!987625)) b!5626045))

(assert (= (and b!5626045 c!987626) b!5626046))

(assert (= (and b!5626045 (not c!987626)) b!5626047))

(assert (= (or b!5626043 b!5626046) bm!423825))

(declare-fun m!6598384 () Bool)

(assert (=> b!5626043 m!6598384))

(declare-fun m!6598386 () Bool)

(assert (=> b!5626044 m!6598386))

(declare-fun m!6598388 () Bool)

(assert (=> bm!423825 m!6598388))

(assert (=> b!5625384 d!1777349))

(declare-fun b!5626048 () Bool)

(declare-fun e!3467857 () (InoxSet Context!9998))

(declare-fun call!423831 () (InoxSet Context!9998))

(assert (=> b!5626048 (= e!3467857 ((_ map or) call!423831 (derivationStepZipperUp!883 (Context!9999 (t!376436 (exprs!5499 (h!69469 zl!343)))) (h!69470 s!2326))))))

(declare-fun d!1777351 () Bool)

(declare-fun c!987627 () Bool)

(declare-fun e!3467858 () Bool)

(assert (=> d!1777351 (= c!987627 e!3467858)))

(declare-fun res!2382824 () Bool)

(assert (=> d!1777351 (=> (not res!2382824) (not e!3467858))))

(assert (=> d!1777351 (= res!2382824 ((_ is Cons!63020) (exprs!5499 (h!69469 zl!343))))))

(assert (=> d!1777351 (= (derivationStepZipperUp!883 (h!69469 zl!343) (h!69470 s!2326)) e!3467857)))

(declare-fun b!5626049 () Bool)

(assert (=> b!5626049 (= e!3467858 (nullable!5647 (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun bm!423826 () Bool)

(assert (=> bm!423826 (= call!423831 (derivationStepZipperDown!957 (h!69468 (exprs!5499 (h!69469 zl!343))) (Context!9999 (t!376436 (exprs!5499 (h!69469 zl!343)))) (h!69470 s!2326)))))

(declare-fun b!5626050 () Bool)

(declare-fun e!3467856 () (InoxSet Context!9998))

(assert (=> b!5626050 (= e!3467857 e!3467856)))

(declare-fun c!987628 () Bool)

(assert (=> b!5626050 (= c!987628 ((_ is Cons!63020) (exprs!5499 (h!69469 zl!343))))))

(declare-fun b!5626051 () Bool)

(assert (=> b!5626051 (= e!3467856 call!423831)))

(declare-fun b!5626052 () Bool)

(assert (=> b!5626052 (= e!3467856 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777351 res!2382824) b!5626049))

(assert (= (and d!1777351 c!987627) b!5626048))

(assert (= (and d!1777351 (not c!987627)) b!5626050))

(assert (= (and b!5626050 c!987628) b!5626051))

(assert (= (and b!5626050 (not c!987628)) b!5626052))

(assert (= (or b!5626048 b!5626051) bm!423826))

(declare-fun m!6598390 () Bool)

(assert (=> b!5626048 m!6598390))

(assert (=> b!5626049 m!6597902))

(declare-fun m!6598392 () Bool)

(assert (=> bm!423826 m!6598392))

(assert (=> b!5625384 d!1777351))

(declare-fun b!5626053 () Bool)

(declare-fun e!3467860 () (InoxSet Context!9998))

(declare-fun call!423832 () (InoxSet Context!9998))

(assert (=> b!5626053 (= e!3467860 ((_ map or) call!423832 (derivationStepZipperUp!883 (Context!9999 (t!376436 (exprs!5499 lt!2261341))) (h!69470 s!2326))))))

(declare-fun d!1777353 () Bool)

(declare-fun c!987629 () Bool)

(declare-fun e!3467861 () Bool)

(assert (=> d!1777353 (= c!987629 e!3467861)))

(declare-fun res!2382825 () Bool)

(assert (=> d!1777353 (=> (not res!2382825) (not e!3467861))))

(assert (=> d!1777353 (= res!2382825 ((_ is Cons!63020) (exprs!5499 lt!2261341)))))

(assert (=> d!1777353 (= (derivationStepZipperUp!883 lt!2261341 (h!69470 s!2326)) e!3467860)))

(declare-fun b!5626054 () Bool)

(assert (=> b!5626054 (= e!3467861 (nullable!5647 (h!69468 (exprs!5499 lt!2261341))))))

(declare-fun bm!423827 () Bool)

(assert (=> bm!423827 (= call!423832 (derivationStepZipperDown!957 (h!69468 (exprs!5499 lt!2261341)) (Context!9999 (t!376436 (exprs!5499 lt!2261341))) (h!69470 s!2326)))))

(declare-fun b!5626055 () Bool)

(declare-fun e!3467859 () (InoxSet Context!9998))

(assert (=> b!5626055 (= e!3467860 e!3467859)))

(declare-fun c!987630 () Bool)

(assert (=> b!5626055 (= c!987630 ((_ is Cons!63020) (exprs!5499 lt!2261341)))))

(declare-fun b!5626056 () Bool)

(assert (=> b!5626056 (= e!3467859 call!423832)))

(declare-fun b!5626057 () Bool)

(assert (=> b!5626057 (= e!3467859 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777353 res!2382825) b!5626054))

(assert (= (and d!1777353 c!987629) b!5626053))

(assert (= (and d!1777353 (not c!987629)) b!5626055))

(assert (= (and b!5626055 c!987630) b!5626056))

(assert (= (and b!5626055 (not c!987630)) b!5626057))

(assert (= (or b!5626053 b!5626056) bm!423827))

(declare-fun m!6598394 () Bool)

(assert (=> b!5626053 m!6598394))

(declare-fun m!6598396 () Bool)

(assert (=> b!5626054 m!6598396))

(declare-fun m!6598398 () Bool)

(assert (=> bm!423827 m!6598398))

(assert (=> b!5625384 d!1777353))

(declare-fun d!1777355 () Bool)

(assert (=> d!1777355 (= (nullable!5647 (h!69468 (exprs!5499 (h!69469 zl!343)))) (nullableFct!1744 (h!69468 (exprs!5499 (h!69469 zl!343)))))))

(declare-fun bs!1302328 () Bool)

(assert (= bs!1302328 d!1777355))

(declare-fun m!6598400 () Bool)

(assert (=> bs!1302328 m!6598400))

(assert (=> b!5625384 d!1777355))

(declare-fun d!1777357 () Bool)

(declare-fun choose!42627 ((InoxSet Context!9998) Int) (InoxSet Context!9998))

(assert (=> d!1777357 (= (flatMap!1228 z!1189 lambda!302120) (choose!42627 z!1189 lambda!302120))))

(declare-fun bs!1302329 () Bool)

(assert (= bs!1302329 d!1777357))

(declare-fun m!6598402 () Bool)

(assert (=> bs!1302329 m!6598402))

(assert (=> b!5625384 d!1777357))

(declare-fun c!987635 () Bool)

(declare-fun c!987636 () Bool)

(declare-fun bm!423834 () Bool)

(declare-fun call!423839 () Bool)

(assert (=> bm!423834 (= call!423839 (validRegex!7351 (ite c!987636 (reg!15944 r!7292) (ite c!987635 (regTwo!31743 r!7292) (regTwo!31742 r!7292)))))))

(declare-fun b!5626076 () Bool)

(declare-fun e!3467879 () Bool)

(declare-fun e!3467882 () Bool)

(assert (=> b!5626076 (= e!3467879 e!3467882)))

(declare-fun res!2382838 () Bool)

(assert (=> b!5626076 (= res!2382838 (not (nullable!5647 (reg!15944 r!7292))))))

(assert (=> b!5626076 (=> (not res!2382838) (not e!3467882))))

(declare-fun b!5626077 () Bool)

(declare-fun e!3467877 () Bool)

(declare-fun call!423841 () Bool)

(assert (=> b!5626077 (= e!3467877 call!423841)))

(declare-fun b!5626078 () Bool)

(declare-fun e!3467881 () Bool)

(assert (=> b!5626078 (= e!3467881 call!423841)))

(declare-fun b!5626079 () Bool)

(declare-fun e!3467876 () Bool)

(assert (=> b!5626079 (= e!3467876 e!3467881)))

(declare-fun res!2382839 () Bool)

(assert (=> b!5626079 (=> (not res!2382839) (not e!3467881))))

(declare-fun call!423840 () Bool)

(assert (=> b!5626079 (= res!2382839 call!423840)))

(declare-fun b!5626080 () Bool)

(assert (=> b!5626080 (= e!3467882 call!423839)))

(declare-fun d!1777359 () Bool)

(declare-fun res!2382836 () Bool)

(declare-fun e!3467880 () Bool)

(assert (=> d!1777359 (=> res!2382836 e!3467880)))

(assert (=> d!1777359 (= res!2382836 ((_ is ElementMatch!15615) r!7292))))

(assert (=> d!1777359 (= (validRegex!7351 r!7292) e!3467880)))

(declare-fun b!5626081 () Bool)

(declare-fun res!2382837 () Bool)

(assert (=> b!5626081 (=> (not res!2382837) (not e!3467877))))

(assert (=> b!5626081 (= res!2382837 call!423840)))

(declare-fun e!3467878 () Bool)

(assert (=> b!5626081 (= e!3467878 e!3467877)))

(declare-fun bm!423835 () Bool)

(assert (=> bm!423835 (= call!423841 call!423839)))

(declare-fun b!5626082 () Bool)

(assert (=> b!5626082 (= e!3467879 e!3467878)))

(assert (=> b!5626082 (= c!987635 ((_ is Union!15615) r!7292))))

(declare-fun bm!423836 () Bool)

(assert (=> bm!423836 (= call!423840 (validRegex!7351 (ite c!987635 (regOne!31743 r!7292) (regOne!31742 r!7292))))))

(declare-fun b!5626083 () Bool)

(declare-fun res!2382840 () Bool)

(assert (=> b!5626083 (=> res!2382840 e!3467876)))

(assert (=> b!5626083 (= res!2382840 (not ((_ is Concat!24460) r!7292)))))

(assert (=> b!5626083 (= e!3467878 e!3467876)))

(declare-fun b!5626084 () Bool)

(assert (=> b!5626084 (= e!3467880 e!3467879)))

(assert (=> b!5626084 (= c!987636 ((_ is Star!15615) r!7292))))

(assert (= (and d!1777359 (not res!2382836)) b!5626084))

(assert (= (and b!5626084 c!987636) b!5626076))

(assert (= (and b!5626084 (not c!987636)) b!5626082))

(assert (= (and b!5626076 res!2382838) b!5626080))

(assert (= (and b!5626082 c!987635) b!5626081))

(assert (= (and b!5626082 (not c!987635)) b!5626083))

(assert (= (and b!5626081 res!2382837) b!5626077))

(assert (= (and b!5626083 (not res!2382840)) b!5626079))

(assert (= (and b!5626079 res!2382839) b!5626078))

(assert (= (or b!5626077 b!5626078) bm!423835))

(assert (= (or b!5626081 b!5626079) bm!423836))

(assert (= (or b!5626080 bm!423835) bm!423834))

(declare-fun m!6598404 () Bool)

(assert (=> bm!423834 m!6598404))

(declare-fun m!6598406 () Bool)

(assert (=> b!5626076 m!6598406))

(declare-fun m!6598408 () Bool)

(assert (=> bm!423836 m!6598408))

(assert (=> start!582816 d!1777359))

(declare-fun d!1777361 () Bool)

(assert (=> d!1777361 (= (isEmpty!34850 (t!376436 (exprs!5499 (h!69469 zl!343)))) ((_ is Nil!63020) (t!376436 (exprs!5499 (h!69469 zl!343)))))))

(assert (=> b!5625398 d!1777361))

(declare-fun bs!1302330 () Bool)

(declare-fun d!1777363 () Bool)

(assert (= bs!1302330 (and d!1777363 d!1777229)))

(declare-fun lambda!302175 () Int)

(assert (=> bs!1302330 (= lambda!302175 lambda!302134)))

(declare-fun bs!1302331 () Bool)

(assert (= bs!1302331 (and d!1777363 d!1777325)))

(assert (=> bs!1302331 (= lambda!302175 lambda!302166)))

(declare-fun b!5626105 () Bool)

(declare-fun e!3467898 () Regex!15615)

(assert (=> b!5626105 (= e!3467898 EmptyLang!15615)))

(declare-fun b!5626106 () Bool)

(assert (=> b!5626106 (= e!3467898 (Union!15615 (h!69468 (unfocusZipperList!1043 zl!343)) (generalisedUnion!1478 (t!376436 (unfocusZipperList!1043 zl!343)))))))

(declare-fun e!3467897 () Bool)

(assert (=> d!1777363 e!3467897))

(declare-fun res!2382845 () Bool)

(assert (=> d!1777363 (=> (not res!2382845) (not e!3467897))))

(declare-fun lt!2261430 () Regex!15615)

(assert (=> d!1777363 (= res!2382845 (validRegex!7351 lt!2261430))))

(declare-fun e!3467896 () Regex!15615)

(assert (=> d!1777363 (= lt!2261430 e!3467896)))

(declare-fun c!987645 () Bool)

(declare-fun e!3467900 () Bool)

(assert (=> d!1777363 (= c!987645 e!3467900)))

(declare-fun res!2382846 () Bool)

(assert (=> d!1777363 (=> (not res!2382846) (not e!3467900))))

(assert (=> d!1777363 (= res!2382846 ((_ is Cons!63020) (unfocusZipperList!1043 zl!343)))))

(assert (=> d!1777363 (forall!14770 (unfocusZipperList!1043 zl!343) lambda!302175)))

(assert (=> d!1777363 (= (generalisedUnion!1478 (unfocusZipperList!1043 zl!343)) lt!2261430)))

(declare-fun b!5626107 () Bool)

(assert (=> b!5626107 (= e!3467900 (isEmpty!34850 (t!376436 (unfocusZipperList!1043 zl!343))))))

(declare-fun b!5626108 () Bool)

(declare-fun e!3467895 () Bool)

(assert (=> b!5626108 (= e!3467897 e!3467895)))

(declare-fun c!987648 () Bool)

(assert (=> b!5626108 (= c!987648 (isEmpty!34850 (unfocusZipperList!1043 zl!343)))))

(declare-fun b!5626109 () Bool)

(declare-fun e!3467899 () Bool)

(declare-fun isUnion!597 (Regex!15615) Bool)

(assert (=> b!5626109 (= e!3467899 (isUnion!597 lt!2261430))))

(declare-fun b!5626110 () Bool)

(assert (=> b!5626110 (= e!3467895 e!3467899)))

(declare-fun c!987647 () Bool)

(assert (=> b!5626110 (= c!987647 (isEmpty!34850 (tail!11071 (unfocusZipperList!1043 zl!343))))))

(declare-fun b!5626111 () Bool)

(assert (=> b!5626111 (= e!3467899 (= lt!2261430 (head!11976 (unfocusZipperList!1043 zl!343))))))

(declare-fun b!5626112 () Bool)

(assert (=> b!5626112 (= e!3467896 e!3467898)))

(declare-fun c!987646 () Bool)

(assert (=> b!5626112 (= c!987646 ((_ is Cons!63020) (unfocusZipperList!1043 zl!343)))))

(declare-fun b!5626113 () Bool)

(assert (=> b!5626113 (= e!3467896 (h!69468 (unfocusZipperList!1043 zl!343)))))

(declare-fun b!5626114 () Bool)

(declare-fun isEmptyLang!1167 (Regex!15615) Bool)

(assert (=> b!5626114 (= e!3467895 (isEmptyLang!1167 lt!2261430))))

(assert (= (and d!1777363 res!2382846) b!5626107))

(assert (= (and d!1777363 c!987645) b!5626113))

(assert (= (and d!1777363 (not c!987645)) b!5626112))

(assert (= (and b!5626112 c!987646) b!5626106))

(assert (= (and b!5626112 (not c!987646)) b!5626105))

(assert (= (and d!1777363 res!2382845) b!5626108))

(assert (= (and b!5626108 c!987648) b!5626114))

(assert (= (and b!5626108 (not c!987648)) b!5626110))

(assert (= (and b!5626110 c!987647) b!5626111))

(assert (= (and b!5626110 (not c!987647)) b!5626109))

(declare-fun m!6598410 () Bool)

(assert (=> d!1777363 m!6598410))

(assert (=> d!1777363 m!6597946))

(declare-fun m!6598412 () Bool)

(assert (=> d!1777363 m!6598412))

(declare-fun m!6598414 () Bool)

(assert (=> b!5626106 m!6598414))

(assert (=> b!5626108 m!6597946))

(declare-fun m!6598416 () Bool)

(assert (=> b!5626108 m!6598416))

(declare-fun m!6598418 () Bool)

(assert (=> b!5626107 m!6598418))

(assert (=> b!5626111 m!6597946))

(declare-fun m!6598420 () Bool)

(assert (=> b!5626111 m!6598420))

(declare-fun m!6598422 () Bool)

(assert (=> b!5626109 m!6598422))

(assert (=> b!5626110 m!6597946))

(declare-fun m!6598424 () Bool)

(assert (=> b!5626110 m!6598424))

(assert (=> b!5626110 m!6598424))

(declare-fun m!6598426 () Bool)

(assert (=> b!5626110 m!6598426))

(declare-fun m!6598428 () Bool)

(assert (=> b!5626114 m!6598428))

(assert (=> b!5625405 d!1777363))

(declare-fun bs!1302332 () Bool)

(declare-fun d!1777365 () Bool)

(assert (= bs!1302332 (and d!1777365 d!1777229)))

(declare-fun lambda!302178 () Int)

(assert (=> bs!1302332 (= lambda!302178 lambda!302134)))

(declare-fun bs!1302333 () Bool)

(assert (= bs!1302333 (and d!1777365 d!1777325)))

(assert (=> bs!1302333 (= lambda!302178 lambda!302166)))

(declare-fun bs!1302334 () Bool)

(assert (= bs!1302334 (and d!1777365 d!1777363)))

(assert (=> bs!1302334 (= lambda!302178 lambda!302175)))

(declare-fun lt!2261433 () List!63144)

(assert (=> d!1777365 (forall!14770 lt!2261433 lambda!302178)))

(declare-fun e!3467903 () List!63144)

(assert (=> d!1777365 (= lt!2261433 e!3467903)))

(declare-fun c!987651 () Bool)

(assert (=> d!1777365 (= c!987651 ((_ is Cons!63021) zl!343))))

(assert (=> d!1777365 (= (unfocusZipperList!1043 zl!343) lt!2261433)))

(declare-fun b!5626119 () Bool)

(assert (=> b!5626119 (= e!3467903 (Cons!63020 (generalisedConcat!1230 (exprs!5499 (h!69469 zl!343))) (unfocusZipperList!1043 (t!376437 zl!343))))))

(declare-fun b!5626120 () Bool)

(assert (=> b!5626120 (= e!3467903 Nil!63020)))

(assert (= (and d!1777365 c!987651) b!5626119))

(assert (= (and d!1777365 (not c!987651)) b!5626120))

(declare-fun m!6598430 () Bool)

(assert (=> d!1777365 m!6598430))

(assert (=> b!5626119 m!6597936))

(declare-fun m!6598432 () Bool)

(assert (=> b!5626119 m!6598432))

(assert (=> b!5625405 d!1777365))

(assert (=> b!5625386 d!1777237))

(declare-fun d!1777367 () Bool)

(assert (=> d!1777367 (= (flatMap!1228 lt!2261332 lambda!302120) (dynLambda!24644 lambda!302120 lt!2261338))))

(declare-fun lt!2261434 () Unit!155992)

(assert (=> d!1777367 (= lt!2261434 (choose!42626 lt!2261332 lt!2261338 lambda!302120))))

(assert (=> d!1777367 (= lt!2261332 (store ((as const (Array Context!9998 Bool)) false) lt!2261338 true))))

(assert (=> d!1777367 (= (lemmaFlatMapOnSingletonSet!760 lt!2261332 lt!2261338 lambda!302120) lt!2261434)))

(declare-fun b_lambda!212805 () Bool)

(assert (=> (not b_lambda!212805) (not d!1777367)))

(declare-fun bs!1302335 () Bool)

(assert (= bs!1302335 d!1777367))

(assert (=> bs!1302335 m!6597880))

(declare-fun m!6598434 () Bool)

(assert (=> bs!1302335 m!6598434))

(declare-fun m!6598436 () Bool)

(assert (=> bs!1302335 m!6598436))

(assert (=> bs!1302335 m!6597878))

(assert (=> b!5625397 d!1777367))

(declare-fun d!1777369 () Bool)

(assert (=> d!1777369 (= (flatMap!1228 lt!2261332 lambda!302120) (choose!42627 lt!2261332 lambda!302120))))

(declare-fun bs!1302336 () Bool)

(assert (= bs!1302336 d!1777369))

(declare-fun m!6598438 () Bool)

(assert (=> bs!1302336 m!6598438))

(assert (=> b!5625397 d!1777369))

(declare-fun bs!1302337 () Bool)

(declare-fun d!1777371 () Bool)

(assert (= bs!1302337 (and d!1777371 b!5625384)))

(declare-fun lambda!302181 () Int)

(assert (=> bs!1302337 (= lambda!302181 lambda!302120)))

(assert (=> d!1777371 true))

(assert (=> d!1777371 (= (derivationStepZipper!1702 lt!2261332 (h!69470 s!2326)) (flatMap!1228 lt!2261332 lambda!302181))))

(declare-fun bs!1302338 () Bool)

(assert (= bs!1302338 d!1777371))

(declare-fun m!6598440 () Bool)

(assert (=> bs!1302338 m!6598440))

(assert (=> b!5625397 d!1777371))

(declare-fun e!3467905 () (InoxSet Context!9998))

(declare-fun b!5626123 () Bool)

(declare-fun call!423842 () (InoxSet Context!9998))

(assert (=> b!5626123 (= e!3467905 ((_ map or) call!423842 (derivationStepZipperUp!883 (Context!9999 (t!376436 (exprs!5499 lt!2261338))) (h!69470 s!2326))))))

(declare-fun d!1777373 () Bool)

(declare-fun c!987654 () Bool)

(declare-fun e!3467906 () Bool)

(assert (=> d!1777373 (= c!987654 e!3467906)))

(declare-fun res!2382847 () Bool)

(assert (=> d!1777373 (=> (not res!2382847) (not e!3467906))))

(assert (=> d!1777373 (= res!2382847 ((_ is Cons!63020) (exprs!5499 lt!2261338)))))

(assert (=> d!1777373 (= (derivationStepZipperUp!883 lt!2261338 (h!69470 s!2326)) e!3467905)))

(declare-fun b!5626124 () Bool)

(assert (=> b!5626124 (= e!3467906 (nullable!5647 (h!69468 (exprs!5499 lt!2261338))))))

(declare-fun bm!423837 () Bool)

(assert (=> bm!423837 (= call!423842 (derivationStepZipperDown!957 (h!69468 (exprs!5499 lt!2261338)) (Context!9999 (t!376436 (exprs!5499 lt!2261338))) (h!69470 s!2326)))))

(declare-fun b!5626125 () Bool)

(declare-fun e!3467904 () (InoxSet Context!9998))

(assert (=> b!5626125 (= e!3467905 e!3467904)))

(declare-fun c!987655 () Bool)

(assert (=> b!5626125 (= c!987655 ((_ is Cons!63020) (exprs!5499 lt!2261338)))))

(declare-fun b!5626126 () Bool)

(assert (=> b!5626126 (= e!3467904 call!423842)))

(declare-fun b!5626127 () Bool)

(assert (=> b!5626127 (= e!3467904 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777373 res!2382847) b!5626124))

(assert (= (and d!1777373 c!987654) b!5626123))

(assert (= (and d!1777373 (not c!987654)) b!5626125))

(assert (= (and b!5626125 c!987655) b!5626126))

(assert (= (and b!5626125 (not c!987655)) b!5626127))

(assert (= (or b!5626123 b!5626126) bm!423837))

(declare-fun m!6598442 () Bool)

(assert (=> b!5626123 m!6598442))

(declare-fun m!6598444 () Bool)

(assert (=> b!5626124 m!6598444))

(declare-fun m!6598446 () Bool)

(assert (=> bm!423837 m!6598446))

(assert (=> b!5625397 d!1777373))

(declare-fun call!423843 () (InoxSet Context!9998))

(declare-fun b!5626128 () Bool)

(declare-fun e!3467908 () (InoxSet Context!9998))

(assert (=> b!5626128 (= e!3467908 ((_ map or) call!423843 (derivationStepZipperUp!883 (Context!9999 (t!376436 (exprs!5499 lt!2261336))) (h!69470 s!2326))))))

(declare-fun d!1777375 () Bool)

(declare-fun c!987656 () Bool)

(declare-fun e!3467909 () Bool)

(assert (=> d!1777375 (= c!987656 e!3467909)))

(declare-fun res!2382848 () Bool)

(assert (=> d!1777375 (=> (not res!2382848) (not e!3467909))))

(assert (=> d!1777375 (= res!2382848 ((_ is Cons!63020) (exprs!5499 lt!2261336)))))

(assert (=> d!1777375 (= (derivationStepZipperUp!883 lt!2261336 (h!69470 s!2326)) e!3467908)))

(declare-fun b!5626129 () Bool)

(assert (=> b!5626129 (= e!3467909 (nullable!5647 (h!69468 (exprs!5499 lt!2261336))))))

(declare-fun bm!423838 () Bool)

(assert (=> bm!423838 (= call!423843 (derivationStepZipperDown!957 (h!69468 (exprs!5499 lt!2261336)) (Context!9999 (t!376436 (exprs!5499 lt!2261336))) (h!69470 s!2326)))))

(declare-fun b!5626130 () Bool)

(declare-fun e!3467907 () (InoxSet Context!9998))

(assert (=> b!5626130 (= e!3467908 e!3467907)))

(declare-fun c!987657 () Bool)

(assert (=> b!5626130 (= c!987657 ((_ is Cons!63020) (exprs!5499 lt!2261336)))))

(declare-fun b!5626131 () Bool)

(assert (=> b!5626131 (= e!3467907 call!423843)))

(declare-fun b!5626132 () Bool)

(assert (=> b!5626132 (= e!3467907 ((as const (Array Context!9998 Bool)) false))))

(assert (= (and d!1777375 res!2382848) b!5626129))

(assert (= (and d!1777375 c!987656) b!5626128))

(assert (= (and d!1777375 (not c!987656)) b!5626130))

(assert (= (and b!5626130 c!987657) b!5626131))

(assert (= (and b!5626130 (not c!987657)) b!5626132))

(assert (= (or b!5626128 b!5626131) bm!423838))

(declare-fun m!6598448 () Bool)

(assert (=> b!5626128 m!6598448))

(declare-fun m!6598450 () Bool)

(assert (=> b!5626129 m!6598450))

(declare-fun m!6598452 () Bool)

(assert (=> bm!423838 m!6598452))

(assert (=> b!5625397 d!1777375))

(declare-fun bs!1302339 () Bool)

(declare-fun d!1777377 () Bool)

(assert (= bs!1302339 (and d!1777377 d!1777229)))

(declare-fun lambda!302182 () Int)

(assert (=> bs!1302339 (= lambda!302182 lambda!302134)))

(declare-fun bs!1302340 () Bool)

(assert (= bs!1302340 (and d!1777377 d!1777325)))

(assert (=> bs!1302340 (= lambda!302182 lambda!302166)))

(declare-fun bs!1302341 () Bool)

(assert (= bs!1302341 (and d!1777377 d!1777363)))

(assert (=> bs!1302341 (= lambda!302182 lambda!302175)))

(declare-fun bs!1302342 () Bool)

(assert (= bs!1302342 (and d!1777377 d!1777365)))

(assert (=> bs!1302342 (= lambda!302182 lambda!302178)))

(assert (=> d!1777377 (= (inv!82284 (h!69469 zl!343)) (forall!14770 (exprs!5499 (h!69469 zl!343)) lambda!302182))))

(declare-fun bs!1302343 () Bool)

(assert (= bs!1302343 d!1777377))

(declare-fun m!6598454 () Bool)

(assert (=> bs!1302343 m!6598454))

(assert (=> b!5625406 d!1777377))

(declare-fun b!5626145 () Bool)

(declare-fun e!3467912 () Bool)

(declare-fun tp!1557667 () Bool)

(assert (=> b!5626145 (= e!3467912 tp!1557667)))

(declare-fun b!5626146 () Bool)

(declare-fun tp!1557665 () Bool)

(declare-fun tp!1557666 () Bool)

(assert (=> b!5626146 (= e!3467912 (and tp!1557665 tp!1557666))))

(assert (=> b!5625390 (= tp!1557587 e!3467912)))

(declare-fun b!5626144 () Bool)

(declare-fun tp!1557664 () Bool)

(declare-fun tp!1557668 () Bool)

(assert (=> b!5626144 (= e!3467912 (and tp!1557664 tp!1557668))))

(declare-fun b!5626143 () Bool)

(assert (=> b!5626143 (= e!3467912 tp_is_empty!40483)))

(assert (= (and b!5625390 ((_ is ElementMatch!15615) (reg!15944 r!7292))) b!5626143))

(assert (= (and b!5625390 ((_ is Concat!24460) (reg!15944 r!7292))) b!5626144))

(assert (= (and b!5625390 ((_ is Star!15615) (reg!15944 r!7292))) b!5626145))

(assert (= (and b!5625390 ((_ is Union!15615) (reg!15944 r!7292))) b!5626146))

(declare-fun condSetEmpty!37558 () Bool)

(assert (=> setNonEmpty!37552 (= condSetEmpty!37558 (= setRest!37552 ((as const (Array Context!9998 Bool)) false)))))

(declare-fun setRes!37558 () Bool)

(assert (=> setNonEmpty!37552 (= tp!1557593 setRes!37558)))

(declare-fun setIsEmpty!37558 () Bool)

(assert (=> setIsEmpty!37558 setRes!37558))

(declare-fun e!3467915 () Bool)

(declare-fun setNonEmpty!37558 () Bool)

(declare-fun setElem!37558 () Context!9998)

(declare-fun tp!1557673 () Bool)

(assert (=> setNonEmpty!37558 (= setRes!37558 (and tp!1557673 (inv!82284 setElem!37558) e!3467915))))

(declare-fun setRest!37558 () (InoxSet Context!9998))

(assert (=> setNonEmpty!37558 (= setRest!37552 ((_ map or) (store ((as const (Array Context!9998 Bool)) false) setElem!37558 true) setRest!37558))))

(declare-fun b!5626151 () Bool)

(declare-fun tp!1557674 () Bool)

(assert (=> b!5626151 (= e!3467915 tp!1557674)))

(assert (= (and setNonEmpty!37552 condSetEmpty!37558) setIsEmpty!37558))

(assert (= (and setNonEmpty!37552 (not condSetEmpty!37558)) setNonEmpty!37558))

(assert (= setNonEmpty!37558 b!5626151))

(declare-fun m!6598456 () Bool)

(assert (=> setNonEmpty!37558 m!6598456))

(declare-fun b!5626156 () Bool)

(declare-fun e!3467918 () Bool)

(declare-fun tp!1557679 () Bool)

(declare-fun tp!1557680 () Bool)

(assert (=> b!5626156 (= e!3467918 (and tp!1557679 tp!1557680))))

(assert (=> b!5625383 (= tp!1557591 e!3467918)))

(assert (= (and b!5625383 ((_ is Cons!63020) (exprs!5499 setElem!37552))) b!5626156))

(declare-fun b!5626159 () Bool)

(declare-fun e!3467919 () Bool)

(declare-fun tp!1557684 () Bool)

(assert (=> b!5626159 (= e!3467919 tp!1557684)))

(declare-fun b!5626160 () Bool)

(declare-fun tp!1557682 () Bool)

(declare-fun tp!1557683 () Bool)

(assert (=> b!5626160 (= e!3467919 (and tp!1557682 tp!1557683))))

(assert (=> b!5625400 (= tp!1557595 e!3467919)))

(declare-fun b!5626158 () Bool)

(declare-fun tp!1557681 () Bool)

(declare-fun tp!1557685 () Bool)

(assert (=> b!5626158 (= e!3467919 (and tp!1557681 tp!1557685))))

(declare-fun b!5626157 () Bool)

(assert (=> b!5626157 (= e!3467919 tp_is_empty!40483)))

(assert (= (and b!5625400 ((_ is ElementMatch!15615) (regOne!31743 r!7292))) b!5626157))

(assert (= (and b!5625400 ((_ is Concat!24460) (regOne!31743 r!7292))) b!5626158))

(assert (= (and b!5625400 ((_ is Star!15615) (regOne!31743 r!7292))) b!5626159))

(assert (= (and b!5625400 ((_ is Union!15615) (regOne!31743 r!7292))) b!5626160))

(declare-fun b!5626163 () Bool)

(declare-fun e!3467920 () Bool)

(declare-fun tp!1557689 () Bool)

(assert (=> b!5626163 (= e!3467920 tp!1557689)))

(declare-fun b!5626164 () Bool)

(declare-fun tp!1557687 () Bool)

(declare-fun tp!1557688 () Bool)

(assert (=> b!5626164 (= e!3467920 (and tp!1557687 tp!1557688))))

(assert (=> b!5625400 (= tp!1557589 e!3467920)))

(declare-fun b!5626162 () Bool)

(declare-fun tp!1557686 () Bool)

(declare-fun tp!1557690 () Bool)

(assert (=> b!5626162 (= e!3467920 (and tp!1557686 tp!1557690))))

(declare-fun b!5626161 () Bool)

(assert (=> b!5626161 (= e!3467920 tp_is_empty!40483)))

(assert (= (and b!5625400 ((_ is ElementMatch!15615) (regTwo!31743 r!7292))) b!5626161))

(assert (= (and b!5625400 ((_ is Concat!24460) (regTwo!31743 r!7292))) b!5626162))

(assert (= (and b!5625400 ((_ is Star!15615) (regTwo!31743 r!7292))) b!5626163))

(assert (= (and b!5625400 ((_ is Union!15615) (regTwo!31743 r!7292))) b!5626164))

(declare-fun b!5626169 () Bool)

(declare-fun e!3467923 () Bool)

(declare-fun tp!1557693 () Bool)

(assert (=> b!5626169 (= e!3467923 (and tp_is_empty!40483 tp!1557693))))

(assert (=> b!5625387 (= tp!1557590 e!3467923)))

(assert (= (and b!5625387 ((_ is Cons!63022) (t!376438 s!2326))) b!5626169))

(declare-fun b!5626172 () Bool)

(declare-fun e!3467924 () Bool)

(declare-fun tp!1557697 () Bool)

(assert (=> b!5626172 (= e!3467924 tp!1557697)))

(declare-fun b!5626173 () Bool)

(declare-fun tp!1557695 () Bool)

(declare-fun tp!1557696 () Bool)

(assert (=> b!5626173 (= e!3467924 (and tp!1557695 tp!1557696))))

(assert (=> b!5625407 (= tp!1557588 e!3467924)))

(declare-fun b!5626171 () Bool)

(declare-fun tp!1557694 () Bool)

(declare-fun tp!1557698 () Bool)

(assert (=> b!5626171 (= e!3467924 (and tp!1557694 tp!1557698))))

(declare-fun b!5626170 () Bool)

(assert (=> b!5626170 (= e!3467924 tp_is_empty!40483)))

(assert (= (and b!5625407 ((_ is ElementMatch!15615) (regOne!31742 r!7292))) b!5626170))

(assert (= (and b!5625407 ((_ is Concat!24460) (regOne!31742 r!7292))) b!5626171))

(assert (= (and b!5625407 ((_ is Star!15615) (regOne!31742 r!7292))) b!5626172))

(assert (= (and b!5625407 ((_ is Union!15615) (regOne!31742 r!7292))) b!5626173))

(declare-fun b!5626176 () Bool)

(declare-fun e!3467925 () Bool)

(declare-fun tp!1557702 () Bool)

(assert (=> b!5626176 (= e!3467925 tp!1557702)))

(declare-fun b!5626177 () Bool)

(declare-fun tp!1557700 () Bool)

(declare-fun tp!1557701 () Bool)

(assert (=> b!5626177 (= e!3467925 (and tp!1557700 tp!1557701))))

(assert (=> b!5625407 (= tp!1557594 e!3467925)))

(declare-fun b!5626175 () Bool)

(declare-fun tp!1557699 () Bool)

(declare-fun tp!1557703 () Bool)

(assert (=> b!5626175 (= e!3467925 (and tp!1557699 tp!1557703))))

(declare-fun b!5626174 () Bool)

(assert (=> b!5626174 (= e!3467925 tp_is_empty!40483)))

(assert (= (and b!5625407 ((_ is ElementMatch!15615) (regTwo!31742 r!7292))) b!5626174))

(assert (= (and b!5625407 ((_ is Concat!24460) (regTwo!31742 r!7292))) b!5626175))

(assert (= (and b!5625407 ((_ is Star!15615) (regTwo!31742 r!7292))) b!5626176))

(assert (= (and b!5625407 ((_ is Union!15615) (regTwo!31742 r!7292))) b!5626177))

(declare-fun b!5626185 () Bool)

(declare-fun e!3467931 () Bool)

(declare-fun tp!1557708 () Bool)

(assert (=> b!5626185 (= e!3467931 tp!1557708)))

(declare-fun b!5626184 () Bool)

(declare-fun e!3467930 () Bool)

(declare-fun tp!1557709 () Bool)

(assert (=> b!5626184 (= e!3467930 (and (inv!82284 (h!69469 (t!376437 zl!343))) e!3467931 tp!1557709))))

(assert (=> b!5625406 (= tp!1557586 e!3467930)))

(assert (= b!5626184 b!5626185))

(assert (= (and b!5625406 ((_ is Cons!63021) (t!376437 zl!343))) b!5626184))

(declare-fun m!6598458 () Bool)

(assert (=> b!5626184 m!6598458))

(declare-fun b!5626186 () Bool)

(declare-fun e!3467932 () Bool)

(declare-fun tp!1557710 () Bool)

(declare-fun tp!1557711 () Bool)

(assert (=> b!5626186 (= e!3467932 (and tp!1557710 tp!1557711))))

(assert (=> b!5625392 (= tp!1557592 e!3467932)))

(assert (= (and b!5625392 ((_ is Cons!63020) (exprs!5499 (h!69469 zl!343)))) b!5626186))

(declare-fun b_lambda!212807 () Bool)

(assert (= b_lambda!212803 (or b!5625384 b_lambda!212807)))

(declare-fun bs!1302344 () Bool)

(declare-fun d!1777379 () Bool)

(assert (= bs!1302344 (and d!1777379 b!5625384)))

(assert (=> bs!1302344 (= (dynLambda!24644 lambda!302120 (h!69469 zl!343)) (derivationStepZipperUp!883 (h!69469 zl!343) (h!69470 s!2326)))))

(assert (=> bs!1302344 m!6597896))

(assert (=> d!1777347 d!1777379))

(declare-fun b_lambda!212809 () Bool)

(assert (= b_lambda!212805 (or b!5625384 b_lambda!212809)))

(declare-fun bs!1302345 () Bool)

(declare-fun d!1777381 () Bool)

(assert (= bs!1302345 (and d!1777381 b!5625384)))

(assert (=> bs!1302345 (= (dynLambda!24644 lambda!302120 lt!2261338) (derivationStepZipperUp!883 lt!2261338 (h!69470 s!2326)))))

(assert (=> bs!1302345 m!6597876))

(assert (=> d!1777367 d!1777381))

(check-sat (not b!5626172) (not b!5625973) (not bs!1302344) (not b!5625875) (not b!5625963) (not b!5626021) (not bs!1302345) (not b!5626053) (not b!5626043) (not b!5626156) (not b!5626002) (not d!1777231) (not d!1777337) (not b!5625847) (not b!5626129) (not bm!423809) (not bm!423834) (not b!5625926) (not b!5626186) (not b!5625884) (not b!5626158) (not b!5626108) (not b!5626114) (not b!5626163) (not b!5625722) (not b!5625970) (not d!1777287) (not d!1777369) (not d!1777347) (not b!5625969) (not b!5626184) (not b!5626164) (not b!5626109) (not bm!423805) (not b!5626054) (not b!5625615) (not b!5626044) (not d!1777371) (not d!1777331) (not b!5626177) (not d!1777365) (not b!5626048) (not b!5625879) (not b!5625850) (not b!5625968) (not bm!423811) (not bm!423838) (not bm!423817) (not bm!423837) (not b!5625854) (not d!1777321) (not d!1777319) (not bm!423815) (not b!5625966) (not b!5626110) (not b!5625876) (not d!1777323) (not b!5626128) (not bm!423792) (not b!5626175) (not b!5625882) (not b!5626176) (not b!5625853) (not d!1777325) (not d!1777329) (not b!5626173) (not bm!423825) (not d!1777333) (not b!5626162) (not d!1777357) (not b!5625718) (not b!5626185) (not d!1777335) (not b!5626013) (not d!1777367) (not d!1777313) (not d!1777249) tp_is_empty!40483 (not d!1777283) (not d!1777343) (not b!5626144) (not bm!423808) (not d!1777315) (not b!5626145) (not d!1777377) (not b!5625960) (not d!1777363) (not b!5626049) (not b!5626160) (not b_lambda!212809) (not b!5626106) (not b!5626076) (not b!5626124) (not b!5626171) (not b!5625851) (not b!5625720) (not b_lambda!212807) (not b!5626159) (not d!1777229) (not d!1777285) (not b!5626107) (not bm!423821) (not b!5625972) (not b!5625962) (not b!5625614) (not b!5625974) (not b!5626111) (not b!5626123) (not b!5626027) (not d!1777275) (not b!5625971) (not bm!423820) (not b!5625716) (not b!5625721) (not d!1777317) (not bm!423836) (not b!5626146) (not d!1777355) (not b!5625881) (not d!1777237) (not b!5626151) (not bm!423788) (not b!5626169) (not b!5625918) (not bm!423789) (not bm!423826) (not b!5625880) (not b!5625715) (not bm!423827) (not b!5626119) (not b!5625846) (not b!5625852) (not bm!423814) (not setNonEmpty!37558))
(check-sat)
