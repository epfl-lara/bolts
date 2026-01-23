; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!656748 () Bool)

(assert start!656748)

(declare-fun b!6785576 () Bool)

(assert (=> b!6785576 true))

(assert (=> b!6785576 true))

(declare-fun lambda!382083 () Int)

(declare-fun lambda!382082 () Int)

(assert (=> b!6785576 (not (= lambda!382083 lambda!382082))))

(assert (=> b!6785576 true))

(assert (=> b!6785576 true))

(declare-fun lambda!382084 () Int)

(assert (=> b!6785576 (not (= lambda!382084 lambda!382082))))

(assert (=> b!6785576 (not (= lambda!382084 lambda!382083))))

(assert (=> b!6785576 true))

(assert (=> b!6785576 true))

(declare-fun b!6785571 () Bool)

(assert (=> b!6785571 true))

(declare-fun b!6785553 () Bool)

(declare-fun res!2773514 () Bool)

(declare-fun e!4095929 () Bool)

(assert (=> b!6785553 (=> res!2773514 e!4095929)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33484 0))(
  ( (C!33485 (val!26444 Int)) )
))
(declare-datatypes ((Regex!16607 0))(
  ( (ElementMatch!16607 (c!1260825 C!33484)) (Concat!25452 (regOne!33726 Regex!16607) (regTwo!33726 Regex!16607)) (EmptyExpr!16607) (Star!16607 (reg!16936 Regex!16607)) (EmptyLang!16607) (Union!16607 (regOne!33727 Regex!16607) (regTwo!33727 Regex!16607)) )
))
(declare-datatypes ((List!66120 0))(
  ( (Nil!65996) (Cons!65996 (h!72444 Regex!16607) (t!379839 List!66120)) )
))
(declare-datatypes ((Context!11982 0))(
  ( (Context!11983 (exprs!6491 List!66120)) )
))
(declare-fun z!1189 () (InoxSet Context!11982))

(declare-datatypes ((List!66121 0))(
  ( (Nil!65997) (Cons!65997 (h!72445 C!33484) (t!379840 List!66121)) )
))
(declare-fun s!2326 () List!66121)

(declare-fun matchZipper!2593 ((InoxSet Context!11982) List!66121) Bool)

(assert (=> b!6785553 (= res!2773514 (not (matchZipper!2593 z!1189 s!2326)))))

(declare-fun b!6785554 () Bool)

(declare-fun e!4095925 () Bool)

(declare-fun e!4095928 () Bool)

(assert (=> b!6785554 (= e!4095925 (not e!4095928))))

(declare-fun res!2773521 () Bool)

(assert (=> b!6785554 (=> res!2773521 e!4095928)))

(declare-datatypes ((List!66122 0))(
  ( (Nil!65998) (Cons!65998 (h!72446 Context!11982) (t!379841 List!66122)) )
))
(declare-fun zl!343 () List!66122)

(get-info :version)

(assert (=> b!6785554 (= res!2773521 (not ((_ is Cons!65998) zl!343)))))

(declare-fun lt!2445597 () Bool)

(declare-fun r!7292 () Regex!16607)

(declare-fun matchRSpec!3708 (Regex!16607 List!66121) Bool)

(assert (=> b!6785554 (= lt!2445597 (matchRSpec!3708 r!7292 s!2326))))

(declare-fun matchR!8790 (Regex!16607 List!66121) Bool)

(assert (=> b!6785554 (= lt!2445597 (matchR!8790 r!7292 s!2326))))

(declare-datatypes ((Unit!159905 0))(
  ( (Unit!159906) )
))
(declare-fun lt!2445583 () Unit!159905)

(declare-fun mainMatchTheorem!3708 (Regex!16607 List!66121) Unit!159905)

(assert (=> b!6785554 (= lt!2445583 (mainMatchTheorem!3708 r!7292 s!2326))))

(declare-fun b!6785555 () Bool)

(declare-fun res!2773530 () Bool)

(declare-fun e!4095918 () Bool)

(assert (=> b!6785555 (=> (not res!2773530) (not e!4095918))))

(declare-fun toList!10391 ((InoxSet Context!11982)) List!66122)

(assert (=> b!6785555 (= res!2773530 (= (toList!10391 z!1189) zl!343))))

(declare-fun b!6785556 () Bool)

(declare-fun res!2773520 () Bool)

(assert (=> b!6785556 (=> res!2773520 e!4095928)))

(assert (=> b!6785556 (= res!2773520 (not ((_ is Cons!65996) (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6785557 () Bool)

(declare-fun e!4095916 () Bool)

(declare-fun tp!1858824 () Bool)

(declare-fun tp!1858827 () Bool)

(assert (=> b!6785557 (= e!4095916 (and tp!1858824 tp!1858827))))

(declare-fun b!6785558 () Bool)

(declare-fun res!2773523 () Bool)

(declare-fun e!4095930 () Bool)

(assert (=> b!6785558 (=> res!2773523 e!4095930)))

(assert (=> b!6785558 (= res!2773523 ((_ is Nil!65997) s!2326))))

(declare-fun res!2773515 () Bool)

(assert (=> start!656748 (=> (not res!2773515) (not e!4095918))))

(declare-fun validRegex!8343 (Regex!16607) Bool)

(assert (=> start!656748 (= res!2773515 (validRegex!8343 r!7292))))

(assert (=> start!656748 e!4095918))

(assert (=> start!656748 e!4095916))

(declare-fun condSetEmpty!46429 () Bool)

(assert (=> start!656748 (= condSetEmpty!46429 (= z!1189 ((as const (Array Context!11982 Bool)) false)))))

(declare-fun setRes!46429 () Bool)

(assert (=> start!656748 setRes!46429))

(declare-fun e!4095915 () Bool)

(assert (=> start!656748 e!4095915))

(declare-fun e!4095921 () Bool)

(assert (=> start!656748 e!4095921))

(declare-fun b!6785559 () Bool)

(declare-fun lt!2445587 () Context!11982)

(declare-fun inv!84764 (Context!11982) Bool)

(assert (=> b!6785559 (= e!4095929 (inv!84764 lt!2445587))))

(declare-fun b!6785560 () Bool)

(declare-fun e!4095919 () Bool)

(declare-fun e!4095923 () Bool)

(assert (=> b!6785560 (= e!4095919 e!4095923)))

(declare-fun res!2773522 () Bool)

(assert (=> b!6785560 (=> res!2773522 e!4095923)))

(declare-fun lt!2445591 () Context!11982)

(declare-fun lt!2445581 () Regex!16607)

(declare-fun unfocusZipper!2349 (List!66122) Regex!16607)

(assert (=> b!6785560 (= res!2773522 (not (= (unfocusZipper!2349 (Cons!65998 lt!2445591 Nil!65998)) lt!2445581)))))

(assert (=> b!6785560 (= lt!2445581 (Concat!25452 (reg!16936 r!7292) r!7292))))

(declare-fun b!6785561 () Bool)

(declare-fun res!2773518 () Bool)

(assert (=> b!6785561 (=> res!2773518 e!4095919)))

(declare-fun lt!2445599 () (InoxSet Context!11982))

(declare-fun derivationStepZipper!2551 ((InoxSet Context!11982) C!33484) (InoxSet Context!11982))

(assert (=> b!6785561 (= res!2773518 (not (= (matchZipper!2593 lt!2445599 s!2326) (matchZipper!2593 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (t!379840 s!2326)))))))

(declare-fun b!6785562 () Bool)

(declare-fun e!4095920 () Bool)

(assert (=> b!6785562 (= e!4095930 e!4095920)))

(declare-fun res!2773517 () Bool)

(assert (=> b!6785562 (=> res!2773517 e!4095920)))

(declare-fun lt!2445590 () (InoxSet Context!11982))

(declare-fun lt!2445577 () (InoxSet Context!11982))

(assert (=> b!6785562 (= res!2773517 (not (= lt!2445590 lt!2445577)))))

(declare-fun derivationStepZipperDown!1835 (Regex!16607 Context!11982 C!33484) (InoxSet Context!11982))

(assert (=> b!6785562 (= lt!2445577 (derivationStepZipperDown!1835 r!7292 (Context!11983 Nil!65996) (h!72445 s!2326)))))

(declare-fun derivationStepZipperUp!1761 (Context!11982 C!33484) (InoxSet Context!11982))

(assert (=> b!6785562 (= lt!2445590 (derivationStepZipperUp!1761 (Context!11983 (Cons!65996 r!7292 Nil!65996)) (h!72445 s!2326)))))

(declare-fun lt!2445580 () (InoxSet Context!11982))

(assert (=> b!6785562 (= lt!2445580 (derivationStepZipper!2551 z!1189 (h!72445 s!2326)))))

(declare-fun b!6785563 () Bool)

(declare-fun res!2773529 () Bool)

(assert (=> b!6785563 (=> res!2773529 e!4095928)))

(assert (=> b!6785563 (= res!2773529 (or ((_ is EmptyExpr!16607) r!7292) ((_ is EmptyLang!16607) r!7292) ((_ is ElementMatch!16607) r!7292) ((_ is Union!16607) r!7292) ((_ is Concat!25452) r!7292)))))

(declare-fun b!6785564 () Bool)

(declare-fun tp!1858831 () Bool)

(declare-fun tp!1858833 () Bool)

(assert (=> b!6785564 (= e!4095916 (and tp!1858831 tp!1858833))))

(declare-fun b!6785565 () Bool)

(declare-fun res!2773525 () Bool)

(assert (=> b!6785565 (=> res!2773525 e!4095919)))

(declare-fun lt!2445585 () Regex!16607)

(assert (=> b!6785565 (= res!2773525 (or (not (= lt!2445585 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6785566 () Bool)

(declare-fun e!4095927 () Bool)

(declare-fun tp!1858829 () Bool)

(assert (=> b!6785566 (= e!4095927 tp!1858829)))

(declare-fun b!6785567 () Bool)

(declare-fun res!2773532 () Bool)

(assert (=> b!6785567 (=> res!2773532 e!4095928)))

(declare-fun isEmpty!38361 (List!66122) Bool)

(assert (=> b!6785567 (= res!2773532 (not (isEmpty!38361 (t!379841 zl!343))))))

(declare-fun b!6785568 () Bool)

(declare-fun e!4095917 () Bool)

(declare-fun lt!2445594 () Bool)

(assert (=> b!6785568 (= e!4095917 lt!2445594)))

(declare-fun b!6785569 () Bool)

(declare-fun e!4095926 () Bool)

(assert (=> b!6785569 (= e!4095926 e!4095919)))

(declare-fun res!2773531 () Bool)

(assert (=> b!6785569 (=> res!2773531 e!4095919)))

(declare-fun lt!2445602 () Context!11982)

(assert (=> b!6785569 (= res!2773531 (not (= lt!2445580 (derivationStepZipperDown!1835 (reg!16936 r!7292) lt!2445602 (h!72445 s!2326)))))))

(declare-fun lt!2445586 () List!66120)

(assert (=> b!6785569 (= lt!2445602 (Context!11983 lt!2445586))))

(declare-fun lambda!382085 () Int)

(declare-fun flatMap!2088 ((InoxSet Context!11982) Int) (InoxSet Context!11982))

(assert (=> b!6785569 (= (flatMap!2088 lt!2445599 lambda!382085) (derivationStepZipperUp!1761 lt!2445591 (h!72445 s!2326)))))

(declare-fun lt!2445579 () Unit!159905)

(declare-fun lemmaFlatMapOnSingletonSet!1614 ((InoxSet Context!11982) Context!11982 Int) Unit!159905)

(assert (=> b!6785569 (= lt!2445579 (lemmaFlatMapOnSingletonSet!1614 lt!2445599 lt!2445591 lambda!382085))))

(declare-fun lt!2445584 () (InoxSet Context!11982))

(assert (=> b!6785569 (= lt!2445584 (derivationStepZipperUp!1761 lt!2445591 (h!72445 s!2326)))))

(assert (=> b!6785569 (= lt!2445599 (store ((as const (Array Context!11982 Bool)) false) lt!2445591 true))))

(assert (=> b!6785569 (= lt!2445591 (Context!11983 (Cons!65996 (reg!16936 r!7292) lt!2445586)))))

(assert (=> b!6785569 (= lt!2445586 (Cons!65996 r!7292 Nil!65996))))

(declare-fun b!6785570 () Bool)

(declare-fun e!4095922 () Bool)

(assert (=> b!6785570 (= e!4095923 e!4095922)))

(declare-fun res!2773528 () Bool)

(assert (=> b!6785570 (=> res!2773528 e!4095922)))

(declare-fun lt!2445592 () (InoxSet Context!11982))

(assert (=> b!6785570 (= res!2773528 (not (= lt!2445580 (derivationStepZipper!2551 lt!2445592 (h!72445 s!2326)))))))

(assert (=> b!6785570 (= (flatMap!2088 lt!2445592 lambda!382085) (derivationStepZipperUp!1761 lt!2445602 (h!72445 s!2326)))))

(declare-fun lt!2445576 () Unit!159905)

(assert (=> b!6785570 (= lt!2445576 (lemmaFlatMapOnSingletonSet!1614 lt!2445592 lt!2445602 lambda!382085))))

(declare-fun lt!2445589 () (InoxSet Context!11982))

(assert (=> b!6785570 (= (flatMap!2088 lt!2445589 lambda!382085) (derivationStepZipperUp!1761 lt!2445587 (h!72445 s!2326)))))

(declare-fun lt!2445588 () Unit!159905)

(assert (=> b!6785570 (= lt!2445588 (lemmaFlatMapOnSingletonSet!1614 lt!2445589 lt!2445587 lambda!382085))))

(declare-fun lt!2445596 () (InoxSet Context!11982))

(assert (=> b!6785570 (= lt!2445596 (derivationStepZipperUp!1761 lt!2445602 (h!72445 s!2326)))))

(declare-fun lt!2445600 () (InoxSet Context!11982))

(assert (=> b!6785570 (= lt!2445600 (derivationStepZipperUp!1761 lt!2445587 (h!72445 s!2326)))))

(assert (=> b!6785570 (= lt!2445592 (store ((as const (Array Context!11982 Bool)) false) lt!2445602 true))))

(assert (=> b!6785570 (= lt!2445589 (store ((as const (Array Context!11982 Bool)) false) lt!2445587 true))))

(assert (=> b!6785570 (= lt!2445587 (Context!11983 (Cons!65996 (reg!16936 r!7292) Nil!65996)))))

(assert (=> b!6785571 (= e!4095920 e!4095926)))

(declare-fun res!2773524 () Bool)

(assert (=> b!6785571 (=> res!2773524 e!4095926)))

(assert (=> b!6785571 (= res!2773524 (not (= lt!2445580 lt!2445577)))))

(assert (=> b!6785571 (= (flatMap!2088 z!1189 lambda!382085) (derivationStepZipperUp!1761 (h!72446 zl!343) (h!72445 s!2326)))))

(declare-fun lt!2445582 () Unit!159905)

(assert (=> b!6785571 (= lt!2445582 (lemmaFlatMapOnSingletonSet!1614 z!1189 (h!72446 zl!343) lambda!382085))))

(declare-fun setIsEmpty!46429 () Bool)

(assert (=> setIsEmpty!46429 setRes!46429))

(declare-fun b!6785572 () Bool)

(declare-fun tp!1858830 () Bool)

(assert (=> b!6785572 (= e!4095916 tp!1858830)))

(declare-fun b!6785573 () Bool)

(declare-fun res!2773533 () Bool)

(assert (=> b!6785573 (=> res!2773533 e!4095922)))

(assert (=> b!6785573 (= res!2773533 (not (= (unfocusZipper!2349 (Cons!65998 lt!2445602 Nil!65998)) r!7292)))))

(declare-fun b!6785574 () Bool)

(declare-fun tp_is_empty!42467 () Bool)

(assert (=> b!6785574 (= e!4095916 tp_is_empty!42467)))

(declare-fun b!6785575 () Bool)

(declare-fun tp!1858832 () Bool)

(assert (=> b!6785575 (= e!4095921 (and tp_is_empty!42467 tp!1858832))))

(assert (=> b!6785576 (= e!4095928 e!4095930)))

(declare-fun res!2773516 () Bool)

(assert (=> b!6785576 (=> res!2773516 e!4095930)))

(assert (=> b!6785576 (= res!2773516 (not (= lt!2445597 e!4095917)))))

(declare-fun res!2773513 () Bool)

(assert (=> b!6785576 (=> res!2773513 e!4095917)))

(declare-fun isEmpty!38362 (List!66121) Bool)

(assert (=> b!6785576 (= res!2773513 (isEmpty!38362 s!2326))))

(declare-fun Exists!3675 (Int) Bool)

(assert (=> b!6785576 (= (Exists!3675 lambda!382082) (Exists!3675 lambda!382084))))

(declare-fun lt!2445601 () Unit!159905)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2202 (Regex!16607 Regex!16607 List!66121) Unit!159905)

(assert (=> b!6785576 (= lt!2445601 (lemmaExistCutMatchRandMatchRSpecEquivalent!2202 (reg!16936 r!7292) r!7292 s!2326))))

(assert (=> b!6785576 (= (Exists!3675 lambda!382082) (Exists!3675 lambda!382083))))

(declare-fun lt!2445598 () Unit!159905)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!766 (Regex!16607 List!66121) Unit!159905)

(assert (=> b!6785576 (= lt!2445598 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!766 (reg!16936 r!7292) s!2326))))

(assert (=> b!6785576 (= lt!2445594 (Exists!3675 lambda!382082))))

(declare-datatypes ((tuple2!67164 0))(
  ( (tuple2!67165 (_1!36885 List!66121) (_2!36885 List!66121)) )
))
(declare-datatypes ((Option!16494 0))(
  ( (None!16493) (Some!16493 (v!52699 tuple2!67164)) )
))
(declare-fun isDefined!13197 (Option!16494) Bool)

(declare-fun findConcatSeparation!2908 (Regex!16607 Regex!16607 List!66121 List!66121 List!66121) Option!16494)

(assert (=> b!6785576 (= lt!2445594 (isDefined!13197 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326)))))

(declare-fun lt!2445593 () Unit!159905)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2672 (Regex!16607 Regex!16607 List!66121) Unit!159905)

(assert (=> b!6785576 (= lt!2445593 (lemmaFindConcatSeparationEquivalentToExists!2672 (reg!16936 r!7292) r!7292 s!2326))))

(declare-fun b!6785577 () Bool)

(declare-fun res!2773519 () Bool)

(assert (=> b!6785577 (=> res!2773519 e!4095928)))

(declare-fun generalisedConcat!2204 (List!66120) Regex!16607)

(assert (=> b!6785577 (= res!2773519 (not (= r!7292 (generalisedConcat!2204 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun setElem!46429 () Context!11982)

(declare-fun tp!1858825 () Bool)

(declare-fun e!4095924 () Bool)

(declare-fun setNonEmpty!46429 () Bool)

(assert (=> setNonEmpty!46429 (= setRes!46429 (and tp!1858825 (inv!84764 setElem!46429) e!4095924))))

(declare-fun setRest!46429 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46429 (= z!1189 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46429 true) setRest!46429))))

(declare-fun b!6785578 () Bool)

(declare-fun res!2773526 () Bool)

(assert (=> b!6785578 (=> res!2773526 e!4095928)))

(declare-fun generalisedUnion!2451 (List!66120) Regex!16607)

(declare-fun unfocusZipperList!2028 (List!66122) List!66120)

(assert (=> b!6785578 (= res!2773526 (not (= r!7292 (generalisedUnion!2451 (unfocusZipperList!2028 zl!343)))))))

(declare-fun b!6785579 () Bool)

(declare-fun tp!1858828 () Bool)

(assert (=> b!6785579 (= e!4095915 (and (inv!84764 (h!72446 zl!343)) e!4095927 tp!1858828))))

(declare-fun b!6785580 () Bool)

(declare-fun tp!1858826 () Bool)

(assert (=> b!6785580 (= e!4095924 tp!1858826)))

(declare-fun b!6785581 () Bool)

(assert (=> b!6785581 (= e!4095918 e!4095925)))

(declare-fun res!2773534 () Bool)

(assert (=> b!6785581 (=> (not res!2773534) (not e!4095925))))

(assert (=> b!6785581 (= res!2773534 (= r!7292 lt!2445585))))

(assert (=> b!6785581 (= lt!2445585 (unfocusZipper!2349 zl!343))))

(declare-fun b!6785582 () Bool)

(assert (=> b!6785582 (= e!4095922 e!4095929)))

(declare-fun res!2773512 () Bool)

(assert (=> b!6785582 (=> res!2773512 e!4095929)))

(declare-fun lt!2445595 () Bool)

(assert (=> b!6785582 (= res!2773512 lt!2445595)))

(assert (=> b!6785582 (= lt!2445595 (matchRSpec!3708 lt!2445581 s!2326))))

(assert (=> b!6785582 (= lt!2445595 (matchR!8790 lt!2445581 s!2326))))

(declare-fun lt!2445578 () Unit!159905)

(assert (=> b!6785582 (= lt!2445578 (mainMatchTheorem!3708 lt!2445581 s!2326))))

(declare-fun b!6785583 () Bool)

(declare-fun res!2773527 () Bool)

(assert (=> b!6785583 (=> res!2773527 e!4095922)))

(assert (=> b!6785583 (= res!2773527 (not (= (unfocusZipper!2349 (Cons!65998 lt!2445587 Nil!65998)) (reg!16936 r!7292))))))

(assert (= (and start!656748 res!2773515) b!6785555))

(assert (= (and b!6785555 res!2773530) b!6785581))

(assert (= (and b!6785581 res!2773534) b!6785554))

(assert (= (and b!6785554 (not res!2773521)) b!6785567))

(assert (= (and b!6785567 (not res!2773532)) b!6785577))

(assert (= (and b!6785577 (not res!2773519)) b!6785556))

(assert (= (and b!6785556 (not res!2773520)) b!6785578))

(assert (= (and b!6785578 (not res!2773526)) b!6785563))

(assert (= (and b!6785563 (not res!2773529)) b!6785576))

(assert (= (and b!6785576 (not res!2773513)) b!6785568))

(assert (= (and b!6785576 (not res!2773516)) b!6785558))

(assert (= (and b!6785558 (not res!2773523)) b!6785562))

(assert (= (and b!6785562 (not res!2773517)) b!6785571))

(assert (= (and b!6785571 (not res!2773524)) b!6785569))

(assert (= (and b!6785569 (not res!2773531)) b!6785561))

(assert (= (and b!6785561 (not res!2773518)) b!6785565))

(assert (= (and b!6785565 (not res!2773525)) b!6785560))

(assert (= (and b!6785560 (not res!2773522)) b!6785570))

(assert (= (and b!6785570 (not res!2773528)) b!6785583))

(assert (= (and b!6785583 (not res!2773527)) b!6785573))

(assert (= (and b!6785573 (not res!2773533)) b!6785582))

(assert (= (and b!6785582 (not res!2773512)) b!6785553))

(assert (= (and b!6785553 (not res!2773514)) b!6785559))

(assert (= (and start!656748 ((_ is ElementMatch!16607) r!7292)) b!6785574))

(assert (= (and start!656748 ((_ is Concat!25452) r!7292)) b!6785557))

(assert (= (and start!656748 ((_ is Star!16607) r!7292)) b!6785572))

(assert (= (and start!656748 ((_ is Union!16607) r!7292)) b!6785564))

(assert (= (and start!656748 condSetEmpty!46429) setIsEmpty!46429))

(assert (= (and start!656748 (not condSetEmpty!46429)) setNonEmpty!46429))

(assert (= setNonEmpty!46429 b!6785580))

(assert (= b!6785579 b!6785566))

(assert (= (and start!656748 ((_ is Cons!65998) zl!343)) b!6785579))

(assert (= (and start!656748 ((_ is Cons!65997) s!2326)) b!6785575))

(declare-fun m!7533868 () Bool)

(assert (=> b!6785569 m!7533868))

(declare-fun m!7533870 () Bool)

(assert (=> b!6785569 m!7533870))

(declare-fun m!7533872 () Bool)

(assert (=> b!6785569 m!7533872))

(declare-fun m!7533874 () Bool)

(assert (=> b!6785569 m!7533874))

(declare-fun m!7533876 () Bool)

(assert (=> b!6785569 m!7533876))

(declare-fun m!7533878 () Bool)

(assert (=> b!6785581 m!7533878))

(declare-fun m!7533880 () Bool)

(assert (=> b!6785578 m!7533880))

(assert (=> b!6785578 m!7533880))

(declare-fun m!7533882 () Bool)

(assert (=> b!6785578 m!7533882))

(declare-fun m!7533884 () Bool)

(assert (=> b!6785567 m!7533884))

(declare-fun m!7533886 () Bool)

(assert (=> b!6785576 m!7533886))

(declare-fun m!7533888 () Bool)

(assert (=> b!6785576 m!7533888))

(declare-fun m!7533890 () Bool)

(assert (=> b!6785576 m!7533890))

(declare-fun m!7533892 () Bool)

(assert (=> b!6785576 m!7533892))

(declare-fun m!7533894 () Bool)

(assert (=> b!6785576 m!7533894))

(declare-fun m!7533896 () Bool)

(assert (=> b!6785576 m!7533896))

(assert (=> b!6785576 m!7533894))

(declare-fun m!7533898 () Bool)

(assert (=> b!6785576 m!7533898))

(declare-fun m!7533900 () Bool)

(assert (=> b!6785576 m!7533900))

(declare-fun m!7533902 () Bool)

(assert (=> b!6785576 m!7533902))

(assert (=> b!6785576 m!7533898))

(assert (=> b!6785576 m!7533894))

(declare-fun m!7533904 () Bool)

(assert (=> setNonEmpty!46429 m!7533904))

(declare-fun m!7533906 () Bool)

(assert (=> b!6785577 m!7533906))

(declare-fun m!7533908 () Bool)

(assert (=> b!6785570 m!7533908))

(declare-fun m!7533910 () Bool)

(assert (=> b!6785570 m!7533910))

(declare-fun m!7533912 () Bool)

(assert (=> b!6785570 m!7533912))

(declare-fun m!7533914 () Bool)

(assert (=> b!6785570 m!7533914))

(declare-fun m!7533916 () Bool)

(assert (=> b!6785570 m!7533916))

(declare-fun m!7533918 () Bool)

(assert (=> b!6785570 m!7533918))

(declare-fun m!7533920 () Bool)

(assert (=> b!6785570 m!7533920))

(declare-fun m!7533922 () Bool)

(assert (=> b!6785570 m!7533922))

(declare-fun m!7533924 () Bool)

(assert (=> b!6785570 m!7533924))

(declare-fun m!7533926 () Bool)

(assert (=> b!6785560 m!7533926))

(declare-fun m!7533928 () Bool)

(assert (=> b!6785555 m!7533928))

(declare-fun m!7533930 () Bool)

(assert (=> b!6785559 m!7533930))

(declare-fun m!7533932 () Bool)

(assert (=> b!6785583 m!7533932))

(declare-fun m!7533934 () Bool)

(assert (=> b!6785573 m!7533934))

(declare-fun m!7533936 () Bool)

(assert (=> b!6785562 m!7533936))

(declare-fun m!7533938 () Bool)

(assert (=> b!6785562 m!7533938))

(declare-fun m!7533940 () Bool)

(assert (=> b!6785562 m!7533940))

(declare-fun m!7533942 () Bool)

(assert (=> b!6785554 m!7533942))

(declare-fun m!7533944 () Bool)

(assert (=> b!6785554 m!7533944))

(declare-fun m!7533946 () Bool)

(assert (=> b!6785554 m!7533946))

(declare-fun m!7533948 () Bool)

(assert (=> b!6785579 m!7533948))

(declare-fun m!7533950 () Bool)

(assert (=> start!656748 m!7533950))

(declare-fun m!7533952 () Bool)

(assert (=> b!6785561 m!7533952))

(declare-fun m!7533954 () Bool)

(assert (=> b!6785561 m!7533954))

(assert (=> b!6785561 m!7533954))

(declare-fun m!7533956 () Bool)

(assert (=> b!6785561 m!7533956))

(declare-fun m!7533958 () Bool)

(assert (=> b!6785571 m!7533958))

(declare-fun m!7533960 () Bool)

(assert (=> b!6785571 m!7533960))

(declare-fun m!7533962 () Bool)

(assert (=> b!6785571 m!7533962))

(declare-fun m!7533964 () Bool)

(assert (=> b!6785582 m!7533964))

(declare-fun m!7533966 () Bool)

(assert (=> b!6785582 m!7533966))

(declare-fun m!7533968 () Bool)

(assert (=> b!6785582 m!7533968))

(declare-fun m!7533970 () Bool)

(assert (=> b!6785553 m!7533970))

(check-sat (not b!6785577) (not b!6785561) (not b!6785580) (not b!6785562) (not b!6785573) (not b!6785553) (not b!6785575) (not b!6785560) (not b!6785566) (not b!6785583) (not b!6785559) (not b!6785567) (not b!6785557) (not setNonEmpty!46429) (not b!6785578) (not b!6785572) (not b!6785581) (not b!6785570) (not b!6785576) (not b!6785564) (not b!6785555) (not b!6785569) (not b!6785579) (not b!6785554) (not b!6785571) (not start!656748) (not b!6785582) tp_is_empty!42467)
(check-sat)
(get-model)

(declare-fun bs!1807610 () Bool)

(declare-fun b!6785656 () Bool)

(assert (= bs!1807610 (and b!6785656 b!6785576)))

(declare-fun lambda!382094 () Int)

(assert (=> bs!1807610 (not (= lambda!382094 lambda!382082))))

(assert (=> bs!1807610 (= lambda!382094 lambda!382083)))

(assert (=> bs!1807610 (not (= lambda!382094 lambda!382084))))

(assert (=> b!6785656 true))

(assert (=> b!6785656 true))

(declare-fun bs!1807613 () Bool)

(declare-fun b!6785661 () Bool)

(assert (= bs!1807613 (and b!6785661 b!6785576)))

(declare-fun lambda!382096 () Int)

(assert (=> bs!1807613 (not (= lambda!382096 lambda!382082))))

(assert (=> bs!1807613 (not (= lambda!382096 lambda!382083))))

(assert (=> bs!1807613 (= (and (= (regOne!33726 r!7292) (reg!16936 r!7292)) (= (regTwo!33726 r!7292) r!7292)) (= lambda!382096 lambda!382084))))

(declare-fun bs!1807615 () Bool)

(assert (= bs!1807615 (and b!6785661 b!6785656)))

(assert (=> bs!1807615 (not (= lambda!382096 lambda!382094))))

(assert (=> b!6785661 true))

(assert (=> b!6785661 true))

(declare-fun b!6785654 () Bool)

(declare-fun c!1260843 () Bool)

(assert (=> b!6785654 (= c!1260843 ((_ is ElementMatch!16607) r!7292))))

(declare-fun e!4095971 () Bool)

(declare-fun e!4095967 () Bool)

(assert (=> b!6785654 (= e!4095971 e!4095967)))

(declare-fun b!6785655 () Bool)

(declare-fun e!4095968 () Bool)

(declare-fun call!615839 () Bool)

(assert (=> b!6785655 (= e!4095968 call!615839)))

(declare-fun e!4095973 () Bool)

(declare-fun call!615838 () Bool)

(assert (=> b!6785656 (= e!4095973 call!615838)))

(declare-fun b!6785657 () Bool)

(declare-fun c!1260845 () Bool)

(assert (=> b!6785657 (= c!1260845 ((_ is Union!16607) r!7292))))

(declare-fun e!4095970 () Bool)

(assert (=> b!6785657 (= e!4095967 e!4095970)))

(declare-fun b!6785659 () Bool)

(assert (=> b!6785659 (= e!4095967 (= s!2326 (Cons!65997 (c!1260825 r!7292) Nil!65997)))))

(declare-fun b!6785660 () Bool)

(declare-fun e!4095972 () Bool)

(assert (=> b!6785660 (= e!4095972 (matchRSpec!3708 (regTwo!33727 r!7292) s!2326))))

(declare-fun bm!615833 () Bool)

(assert (=> bm!615833 (= call!615839 (isEmpty!38362 s!2326))))

(declare-fun e!4095969 () Bool)

(assert (=> b!6785661 (= e!4095969 call!615838)))

(declare-fun d!2132033 () Bool)

(declare-fun c!1260844 () Bool)

(assert (=> d!2132033 (= c!1260844 ((_ is EmptyExpr!16607) r!7292))))

(assert (=> d!2132033 (= (matchRSpec!3708 r!7292 s!2326) e!4095968)))

(declare-fun b!6785658 () Bool)

(assert (=> b!6785658 (= e!4095970 e!4095972)))

(declare-fun res!2773568 () Bool)

(assert (=> b!6785658 (= res!2773568 (matchRSpec!3708 (regOne!33727 r!7292) s!2326))))

(assert (=> b!6785658 (=> res!2773568 e!4095972)))

(declare-fun b!6785662 () Bool)

(declare-fun res!2773567 () Bool)

(assert (=> b!6785662 (=> res!2773567 e!4095973)))

(assert (=> b!6785662 (= res!2773567 call!615839)))

(assert (=> b!6785662 (= e!4095969 e!4095973)))

(declare-fun b!6785663 () Bool)

(assert (=> b!6785663 (= e!4095968 e!4095971)))

(declare-fun res!2773569 () Bool)

(assert (=> b!6785663 (= res!2773569 (not ((_ is EmptyLang!16607) r!7292)))))

(assert (=> b!6785663 (=> (not res!2773569) (not e!4095971))))

(declare-fun bm!615834 () Bool)

(declare-fun c!1260842 () Bool)

(assert (=> bm!615834 (= call!615838 (Exists!3675 (ite c!1260842 lambda!382094 lambda!382096)))))

(declare-fun b!6785664 () Bool)

(assert (=> b!6785664 (= e!4095970 e!4095969)))

(assert (=> b!6785664 (= c!1260842 ((_ is Star!16607) r!7292))))

(assert (= (and d!2132033 c!1260844) b!6785655))

(assert (= (and d!2132033 (not c!1260844)) b!6785663))

(assert (= (and b!6785663 res!2773569) b!6785654))

(assert (= (and b!6785654 c!1260843) b!6785659))

(assert (= (and b!6785654 (not c!1260843)) b!6785657))

(assert (= (and b!6785657 c!1260845) b!6785658))

(assert (= (and b!6785657 (not c!1260845)) b!6785664))

(assert (= (and b!6785658 (not res!2773568)) b!6785660))

(assert (= (and b!6785664 c!1260842) b!6785662))

(assert (= (and b!6785664 (not c!1260842)) b!6785661))

(assert (= (and b!6785662 (not res!2773567)) b!6785656))

(assert (= (or b!6785656 b!6785661) bm!615834))

(assert (= (or b!6785655 b!6785662) bm!615833))

(declare-fun m!7533978 () Bool)

(assert (=> b!6785660 m!7533978))

(assert (=> bm!615833 m!7533888))

(declare-fun m!7533980 () Bool)

(assert (=> b!6785658 m!7533980))

(declare-fun m!7533982 () Bool)

(assert (=> bm!615834 m!7533982))

(assert (=> b!6785554 d!2132033))

(declare-fun b!6785813 () Bool)

(declare-fun e!4096051 () Bool)

(declare-fun e!4096053 () Bool)

(assert (=> b!6785813 (= e!4096051 e!4096053)))

(declare-fun c!1260881 () Bool)

(assert (=> b!6785813 (= c!1260881 ((_ is EmptyLang!16607) r!7292))))

(declare-fun b!6785814 () Bool)

(declare-fun e!4096052 () Bool)

(declare-fun e!4096055 () Bool)

(assert (=> b!6785814 (= e!4096052 e!4096055)))

(declare-fun res!2773654 () Bool)

(assert (=> b!6785814 (=> (not res!2773654) (not e!4096055))))

(declare-fun lt!2445630 () Bool)

(assert (=> b!6785814 (= res!2773654 (not lt!2445630))))

(declare-fun b!6785815 () Bool)

(declare-fun res!2773656 () Bool)

(assert (=> b!6785815 (=> res!2773656 e!4096052)))

(declare-fun e!4096057 () Bool)

(assert (=> b!6785815 (= res!2773656 e!4096057)))

(declare-fun res!2773657 () Bool)

(assert (=> b!6785815 (=> (not res!2773657) (not e!4096057))))

(assert (=> b!6785815 (= res!2773657 lt!2445630)))

(declare-fun b!6785816 () Bool)

(declare-fun res!2773652 () Bool)

(assert (=> b!6785816 (=> (not res!2773652) (not e!4096057))))

(declare-fun tail!12709 (List!66121) List!66121)

(assert (=> b!6785816 (= res!2773652 (isEmpty!38362 (tail!12709 s!2326)))))

(declare-fun b!6785817 () Bool)

(declare-fun res!2773653 () Bool)

(assert (=> b!6785817 (=> res!2773653 e!4096052)))

(assert (=> b!6785817 (= res!2773653 (not ((_ is ElementMatch!16607) r!7292)))))

(assert (=> b!6785817 (= e!4096053 e!4096052)))

(declare-fun d!2132039 () Bool)

(assert (=> d!2132039 e!4096051))

(declare-fun c!1260882 () Bool)

(assert (=> d!2132039 (= c!1260882 ((_ is EmptyExpr!16607) r!7292))))

(declare-fun e!4096054 () Bool)

(assert (=> d!2132039 (= lt!2445630 e!4096054)))

(declare-fun c!1260883 () Bool)

(assert (=> d!2132039 (= c!1260883 (isEmpty!38362 s!2326))))

(assert (=> d!2132039 (validRegex!8343 r!7292)))

(assert (=> d!2132039 (= (matchR!8790 r!7292 s!2326) lt!2445630)))

(declare-fun b!6785818 () Bool)

(declare-fun call!615851 () Bool)

(assert (=> b!6785818 (= e!4096051 (= lt!2445630 call!615851))))

(declare-fun b!6785819 () Bool)

(assert (=> b!6785819 (= e!4096053 (not lt!2445630))))

(declare-fun bm!615846 () Bool)

(assert (=> bm!615846 (= call!615851 (isEmpty!38362 s!2326))))

(declare-fun b!6785820 () Bool)

(declare-fun e!4096056 () Bool)

(assert (=> b!6785820 (= e!4096055 e!4096056)))

(declare-fun res!2773650 () Bool)

(assert (=> b!6785820 (=> res!2773650 e!4096056)))

(assert (=> b!6785820 (= res!2773650 call!615851)))

(declare-fun b!6785821 () Bool)

(declare-fun head!13624 (List!66121) C!33484)

(assert (=> b!6785821 (= e!4096056 (not (= (head!13624 s!2326) (c!1260825 r!7292))))))

(declare-fun b!6785822 () Bool)

(assert (=> b!6785822 (= e!4096057 (= (head!13624 s!2326) (c!1260825 r!7292)))))

(declare-fun b!6785823 () Bool)

(declare-fun res!2773655 () Bool)

(assert (=> b!6785823 (=> (not res!2773655) (not e!4096057))))

(assert (=> b!6785823 (= res!2773655 (not call!615851))))

(declare-fun b!6785824 () Bool)

(declare-fun derivativeStep!5271 (Regex!16607 C!33484) Regex!16607)

(assert (=> b!6785824 (= e!4096054 (matchR!8790 (derivativeStep!5271 r!7292 (head!13624 s!2326)) (tail!12709 s!2326)))))

(declare-fun b!6785825 () Bool)

(declare-fun res!2773651 () Bool)

(assert (=> b!6785825 (=> res!2773651 e!4096056)))

(assert (=> b!6785825 (= res!2773651 (not (isEmpty!38362 (tail!12709 s!2326))))))

(declare-fun b!6785826 () Bool)

(declare-fun nullable!6586 (Regex!16607) Bool)

(assert (=> b!6785826 (= e!4096054 (nullable!6586 r!7292))))

(assert (= (and d!2132039 c!1260883) b!6785826))

(assert (= (and d!2132039 (not c!1260883)) b!6785824))

(assert (= (and d!2132039 c!1260882) b!6785818))

(assert (= (and d!2132039 (not c!1260882)) b!6785813))

(assert (= (and b!6785813 c!1260881) b!6785819))

(assert (= (and b!6785813 (not c!1260881)) b!6785817))

(assert (= (and b!6785817 (not res!2773653)) b!6785815))

(assert (= (and b!6785815 res!2773657) b!6785823))

(assert (= (and b!6785823 res!2773655) b!6785816))

(assert (= (and b!6785816 res!2773652) b!6785822))

(assert (= (and b!6785815 (not res!2773656)) b!6785814))

(assert (= (and b!6785814 res!2773654) b!6785820))

(assert (= (and b!6785820 (not res!2773650)) b!6785825))

(assert (= (and b!6785825 (not res!2773651)) b!6785821))

(assert (= (or b!6785818 b!6785823 b!6785820) bm!615846))

(declare-fun m!7534068 () Bool)

(assert (=> b!6785821 m!7534068))

(assert (=> d!2132039 m!7533888))

(assert (=> d!2132039 m!7533950))

(assert (=> b!6785824 m!7534068))

(assert (=> b!6785824 m!7534068))

(declare-fun m!7534070 () Bool)

(assert (=> b!6785824 m!7534070))

(declare-fun m!7534072 () Bool)

(assert (=> b!6785824 m!7534072))

(assert (=> b!6785824 m!7534070))

(assert (=> b!6785824 m!7534072))

(declare-fun m!7534074 () Bool)

(assert (=> b!6785824 m!7534074))

(declare-fun m!7534076 () Bool)

(assert (=> b!6785826 m!7534076))

(assert (=> b!6785822 m!7534068))

(assert (=> bm!615846 m!7533888))

(assert (=> b!6785825 m!7534072))

(assert (=> b!6785825 m!7534072))

(declare-fun m!7534078 () Bool)

(assert (=> b!6785825 m!7534078))

(assert (=> b!6785816 m!7534072))

(assert (=> b!6785816 m!7534072))

(assert (=> b!6785816 m!7534078))

(assert (=> b!6785554 d!2132039))

(declare-fun d!2132075 () Bool)

(assert (=> d!2132075 (= (matchR!8790 r!7292 s!2326) (matchRSpec!3708 r!7292 s!2326))))

(declare-fun lt!2445639 () Unit!159905)

(declare-fun choose!50542 (Regex!16607 List!66121) Unit!159905)

(assert (=> d!2132075 (= lt!2445639 (choose!50542 r!7292 s!2326))))

(assert (=> d!2132075 (validRegex!8343 r!7292)))

(assert (=> d!2132075 (= (mainMatchTheorem!3708 r!7292 s!2326) lt!2445639)))

(declare-fun bs!1807643 () Bool)

(assert (= bs!1807643 d!2132075))

(assert (=> bs!1807643 m!7533944))

(assert (=> bs!1807643 m!7533942))

(declare-fun m!7534090 () Bool)

(assert (=> bs!1807643 m!7534090))

(assert (=> bs!1807643 m!7533950))

(assert (=> b!6785554 d!2132075))

(declare-fun bs!1807647 () Bool)

(declare-fun b!6785833 () Bool)

(assert (= bs!1807647 (and b!6785833 b!6785576)))

(declare-fun lambda!382120 () Int)

(assert (=> bs!1807647 (not (= lambda!382120 lambda!382084))))

(declare-fun bs!1807648 () Bool)

(assert (= bs!1807648 (and b!6785833 b!6785656)))

(assert (=> bs!1807648 (= (and (= (reg!16936 lt!2445581) (reg!16936 r!7292)) (= lt!2445581 r!7292)) (= lambda!382120 lambda!382094))))

(assert (=> bs!1807647 (not (= lambda!382120 lambda!382082))))

(declare-fun bs!1807649 () Bool)

(assert (= bs!1807649 (and b!6785833 b!6785661)))

(assert (=> bs!1807649 (not (= lambda!382120 lambda!382096))))

(assert (=> bs!1807647 (= (and (= (reg!16936 lt!2445581) (reg!16936 r!7292)) (= lt!2445581 r!7292)) (= lambda!382120 lambda!382083))))

(assert (=> b!6785833 true))

(assert (=> b!6785833 true))

(declare-fun bs!1807650 () Bool)

(declare-fun b!6785838 () Bool)

(assert (= bs!1807650 (and b!6785838 b!6785576)))

(declare-fun lambda!382121 () Int)

(assert (=> bs!1807650 (= (and (= (regOne!33726 lt!2445581) (reg!16936 r!7292)) (= (regTwo!33726 lt!2445581) r!7292)) (= lambda!382121 lambda!382084))))

(declare-fun bs!1807651 () Bool)

(assert (= bs!1807651 (and b!6785838 b!6785656)))

(assert (=> bs!1807651 (not (= lambda!382121 lambda!382094))))

(assert (=> bs!1807650 (not (= lambda!382121 lambda!382082))))

(declare-fun bs!1807652 () Bool)

(assert (= bs!1807652 (and b!6785838 b!6785833)))

(assert (=> bs!1807652 (not (= lambda!382121 lambda!382120))))

(declare-fun bs!1807653 () Bool)

(assert (= bs!1807653 (and b!6785838 b!6785661)))

(assert (=> bs!1807653 (= (and (= (regOne!33726 lt!2445581) (regOne!33726 r!7292)) (= (regTwo!33726 lt!2445581) (regTwo!33726 r!7292))) (= lambda!382121 lambda!382096))))

(assert (=> bs!1807650 (not (= lambda!382121 lambda!382083))))

(assert (=> b!6785838 true))

(assert (=> b!6785838 true))

(declare-fun b!6785831 () Bool)

(declare-fun c!1260885 () Bool)

(assert (=> b!6785831 (= c!1260885 ((_ is ElementMatch!16607) lt!2445581))))

(declare-fun e!4096064 () Bool)

(declare-fun e!4096060 () Bool)

(assert (=> b!6785831 (= e!4096064 e!4096060)))

(declare-fun b!6785832 () Bool)

(declare-fun e!4096061 () Bool)

(declare-fun call!615853 () Bool)

(assert (=> b!6785832 (= e!4096061 call!615853)))

(declare-fun e!4096066 () Bool)

(declare-fun call!615852 () Bool)

(assert (=> b!6785833 (= e!4096066 call!615852)))

(declare-fun b!6785834 () Bool)

(declare-fun c!1260887 () Bool)

(assert (=> b!6785834 (= c!1260887 ((_ is Union!16607) lt!2445581))))

(declare-fun e!4096063 () Bool)

(assert (=> b!6785834 (= e!4096060 e!4096063)))

(declare-fun b!6785836 () Bool)

(assert (=> b!6785836 (= e!4096060 (= s!2326 (Cons!65997 (c!1260825 lt!2445581) Nil!65997)))))

(declare-fun b!6785837 () Bool)

(declare-fun e!4096065 () Bool)

(assert (=> b!6785837 (= e!4096065 (matchRSpec!3708 (regTwo!33727 lt!2445581) s!2326))))

(declare-fun bm!615847 () Bool)

(assert (=> bm!615847 (= call!615853 (isEmpty!38362 s!2326))))

(declare-fun e!4096062 () Bool)

(assert (=> b!6785838 (= e!4096062 call!615852)))

(declare-fun d!2132081 () Bool)

(declare-fun c!1260886 () Bool)

(assert (=> d!2132081 (= c!1260886 ((_ is EmptyExpr!16607) lt!2445581))))

(assert (=> d!2132081 (= (matchRSpec!3708 lt!2445581 s!2326) e!4096061)))

(declare-fun b!6785835 () Bool)

(assert (=> b!6785835 (= e!4096063 e!4096065)))

(declare-fun res!2773663 () Bool)

(assert (=> b!6785835 (= res!2773663 (matchRSpec!3708 (regOne!33727 lt!2445581) s!2326))))

(assert (=> b!6785835 (=> res!2773663 e!4096065)))

(declare-fun b!6785839 () Bool)

(declare-fun res!2773662 () Bool)

(assert (=> b!6785839 (=> res!2773662 e!4096066)))

(assert (=> b!6785839 (= res!2773662 call!615853)))

(assert (=> b!6785839 (= e!4096062 e!4096066)))

(declare-fun b!6785840 () Bool)

(assert (=> b!6785840 (= e!4096061 e!4096064)))

(declare-fun res!2773664 () Bool)

(assert (=> b!6785840 (= res!2773664 (not ((_ is EmptyLang!16607) lt!2445581)))))

(assert (=> b!6785840 (=> (not res!2773664) (not e!4096064))))

(declare-fun c!1260884 () Bool)

(declare-fun bm!615848 () Bool)

(assert (=> bm!615848 (= call!615852 (Exists!3675 (ite c!1260884 lambda!382120 lambda!382121)))))

(declare-fun b!6785841 () Bool)

(assert (=> b!6785841 (= e!4096063 e!4096062)))

(assert (=> b!6785841 (= c!1260884 ((_ is Star!16607) lt!2445581))))

(assert (= (and d!2132081 c!1260886) b!6785832))

(assert (= (and d!2132081 (not c!1260886)) b!6785840))

(assert (= (and b!6785840 res!2773664) b!6785831))

(assert (= (and b!6785831 c!1260885) b!6785836))

(assert (= (and b!6785831 (not c!1260885)) b!6785834))

(assert (= (and b!6785834 c!1260887) b!6785835))

(assert (= (and b!6785834 (not c!1260887)) b!6785841))

(assert (= (and b!6785835 (not res!2773663)) b!6785837))

(assert (= (and b!6785841 c!1260884) b!6785839))

(assert (= (and b!6785841 (not c!1260884)) b!6785838))

(assert (= (and b!6785839 (not res!2773662)) b!6785833))

(assert (= (or b!6785833 b!6785838) bm!615848))

(assert (= (or b!6785832 b!6785839) bm!615847))

(declare-fun m!7534096 () Bool)

(assert (=> b!6785837 m!7534096))

(assert (=> bm!615847 m!7533888))

(declare-fun m!7534098 () Bool)

(assert (=> b!6785835 m!7534098))

(declare-fun m!7534100 () Bool)

(assert (=> bm!615848 m!7534100))

(assert (=> b!6785582 d!2132081))

(declare-fun b!6785869 () Bool)

(declare-fun e!4096088 () Bool)

(declare-fun e!4096090 () Bool)

(assert (=> b!6785869 (= e!4096088 e!4096090)))

(declare-fun c!1260894 () Bool)

(assert (=> b!6785869 (= c!1260894 ((_ is EmptyLang!16607) lt!2445581))))

(declare-fun b!6785870 () Bool)

(declare-fun e!4096089 () Bool)

(declare-fun e!4096092 () Bool)

(assert (=> b!6785870 (= e!4096089 e!4096092)))

(declare-fun res!2773684 () Bool)

(assert (=> b!6785870 (=> (not res!2773684) (not e!4096092))))

(declare-fun lt!2445640 () Bool)

(assert (=> b!6785870 (= res!2773684 (not lt!2445640))))

(declare-fun b!6785871 () Bool)

(declare-fun res!2773686 () Bool)

(assert (=> b!6785871 (=> res!2773686 e!4096089)))

(declare-fun e!4096094 () Bool)

(assert (=> b!6785871 (= res!2773686 e!4096094)))

(declare-fun res!2773687 () Bool)

(assert (=> b!6785871 (=> (not res!2773687) (not e!4096094))))

(assert (=> b!6785871 (= res!2773687 lt!2445640)))

(declare-fun b!6785872 () Bool)

(declare-fun res!2773682 () Bool)

(assert (=> b!6785872 (=> (not res!2773682) (not e!4096094))))

(assert (=> b!6785872 (= res!2773682 (isEmpty!38362 (tail!12709 s!2326)))))

(declare-fun b!6785873 () Bool)

(declare-fun res!2773683 () Bool)

(assert (=> b!6785873 (=> res!2773683 e!4096089)))

(assert (=> b!6785873 (= res!2773683 (not ((_ is ElementMatch!16607) lt!2445581)))))

(assert (=> b!6785873 (= e!4096090 e!4096089)))

(declare-fun d!2132087 () Bool)

(assert (=> d!2132087 e!4096088))

(declare-fun c!1260895 () Bool)

(assert (=> d!2132087 (= c!1260895 ((_ is EmptyExpr!16607) lt!2445581))))

(declare-fun e!4096091 () Bool)

(assert (=> d!2132087 (= lt!2445640 e!4096091)))

(declare-fun c!1260896 () Bool)

(assert (=> d!2132087 (= c!1260896 (isEmpty!38362 s!2326))))

(assert (=> d!2132087 (validRegex!8343 lt!2445581)))

(assert (=> d!2132087 (= (matchR!8790 lt!2445581 s!2326) lt!2445640)))

(declare-fun b!6785874 () Bool)

(declare-fun call!615863 () Bool)

(assert (=> b!6785874 (= e!4096088 (= lt!2445640 call!615863))))

(declare-fun b!6785875 () Bool)

(assert (=> b!6785875 (= e!4096090 (not lt!2445640))))

(declare-fun bm!615858 () Bool)

(assert (=> bm!615858 (= call!615863 (isEmpty!38362 s!2326))))

(declare-fun b!6785876 () Bool)

(declare-fun e!4096093 () Bool)

(assert (=> b!6785876 (= e!4096092 e!4096093)))

(declare-fun res!2773680 () Bool)

(assert (=> b!6785876 (=> res!2773680 e!4096093)))

(assert (=> b!6785876 (= res!2773680 call!615863)))

(declare-fun b!6785877 () Bool)

(assert (=> b!6785877 (= e!4096093 (not (= (head!13624 s!2326) (c!1260825 lt!2445581))))))

(declare-fun b!6785878 () Bool)

(assert (=> b!6785878 (= e!4096094 (= (head!13624 s!2326) (c!1260825 lt!2445581)))))

(declare-fun b!6785879 () Bool)

(declare-fun res!2773685 () Bool)

(assert (=> b!6785879 (=> (not res!2773685) (not e!4096094))))

(assert (=> b!6785879 (= res!2773685 (not call!615863))))

(declare-fun b!6785880 () Bool)

(assert (=> b!6785880 (= e!4096091 (matchR!8790 (derivativeStep!5271 lt!2445581 (head!13624 s!2326)) (tail!12709 s!2326)))))

(declare-fun b!6785881 () Bool)

(declare-fun res!2773681 () Bool)

(assert (=> b!6785881 (=> res!2773681 e!4096093)))

(assert (=> b!6785881 (= res!2773681 (not (isEmpty!38362 (tail!12709 s!2326))))))

(declare-fun b!6785882 () Bool)

(assert (=> b!6785882 (= e!4096091 (nullable!6586 lt!2445581))))

(assert (= (and d!2132087 c!1260896) b!6785882))

(assert (= (and d!2132087 (not c!1260896)) b!6785880))

(assert (= (and d!2132087 c!1260895) b!6785874))

(assert (= (and d!2132087 (not c!1260895)) b!6785869))

(assert (= (and b!6785869 c!1260894) b!6785875))

(assert (= (and b!6785869 (not c!1260894)) b!6785873))

(assert (= (and b!6785873 (not res!2773683)) b!6785871))

(assert (= (and b!6785871 res!2773687) b!6785879))

(assert (= (and b!6785879 res!2773685) b!6785872))

(assert (= (and b!6785872 res!2773682) b!6785878))

(assert (= (and b!6785871 (not res!2773686)) b!6785870))

(assert (= (and b!6785870 res!2773684) b!6785876))

(assert (= (and b!6785876 (not res!2773680)) b!6785881))

(assert (= (and b!6785881 (not res!2773681)) b!6785877))

(assert (= (or b!6785874 b!6785879 b!6785876) bm!615858))

(assert (=> b!6785877 m!7534068))

(assert (=> d!2132087 m!7533888))

(declare-fun m!7534114 () Bool)

(assert (=> d!2132087 m!7534114))

(assert (=> b!6785880 m!7534068))

(assert (=> b!6785880 m!7534068))

(declare-fun m!7534116 () Bool)

(assert (=> b!6785880 m!7534116))

(assert (=> b!6785880 m!7534072))

(assert (=> b!6785880 m!7534116))

(assert (=> b!6785880 m!7534072))

(declare-fun m!7534118 () Bool)

(assert (=> b!6785880 m!7534118))

(declare-fun m!7534120 () Bool)

(assert (=> b!6785882 m!7534120))

(assert (=> b!6785878 m!7534068))

(assert (=> bm!615858 m!7533888))

(assert (=> b!6785881 m!7534072))

(assert (=> b!6785881 m!7534072))

(assert (=> b!6785881 m!7534078))

(assert (=> b!6785872 m!7534072))

(assert (=> b!6785872 m!7534072))

(assert (=> b!6785872 m!7534078))

(assert (=> b!6785582 d!2132087))

(declare-fun d!2132093 () Bool)

(assert (=> d!2132093 (= (matchR!8790 lt!2445581 s!2326) (matchRSpec!3708 lt!2445581 s!2326))))

(declare-fun lt!2445642 () Unit!159905)

(assert (=> d!2132093 (= lt!2445642 (choose!50542 lt!2445581 s!2326))))

(assert (=> d!2132093 (validRegex!8343 lt!2445581)))

(assert (=> d!2132093 (= (mainMatchTheorem!3708 lt!2445581 s!2326) lt!2445642)))

(declare-fun bs!1807655 () Bool)

(assert (= bs!1807655 d!2132093))

(assert (=> bs!1807655 m!7533966))

(assert (=> bs!1807655 m!7533964))

(declare-fun m!7534122 () Bool)

(assert (=> bs!1807655 m!7534122))

(assert (=> bs!1807655 m!7534114))

(assert (=> b!6785582 d!2132093))

(declare-fun d!2132095 () Bool)

(declare-fun lt!2445648 () Regex!16607)

(assert (=> d!2132095 (validRegex!8343 lt!2445648)))

(assert (=> d!2132095 (= lt!2445648 (generalisedUnion!2451 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))))))

(assert (=> d!2132095 (= (unfocusZipper!2349 (Cons!65998 lt!2445602 Nil!65998)) lt!2445648)))

(declare-fun bs!1807656 () Bool)

(assert (= bs!1807656 d!2132095))

(declare-fun m!7534130 () Bool)

(assert (=> bs!1807656 m!7534130))

(declare-fun m!7534132 () Bool)

(assert (=> bs!1807656 m!7534132))

(assert (=> bs!1807656 m!7534132))

(declare-fun m!7534134 () Bool)

(assert (=> bs!1807656 m!7534134))

(assert (=> b!6785573 d!2132095))

(declare-fun d!2132099 () Bool)

(declare-fun res!2773715 () Bool)

(declare-fun e!4096129 () Bool)

(assert (=> d!2132099 (=> res!2773715 e!4096129)))

(assert (=> d!2132099 (= res!2773715 ((_ is ElementMatch!16607) r!7292))))

(assert (=> d!2132099 (= (validRegex!8343 r!7292) e!4096129)))

(declare-fun b!6785935 () Bool)

(declare-fun res!2773716 () Bool)

(declare-fun e!4096133 () Bool)

(assert (=> b!6785935 (=> res!2773716 e!4096133)))

(assert (=> b!6785935 (= res!2773716 (not ((_ is Concat!25452) r!7292)))))

(declare-fun e!4096134 () Bool)

(assert (=> b!6785935 (= e!4096134 e!4096133)))

(declare-fun b!6785936 () Bool)

(declare-fun e!4096131 () Bool)

(declare-fun call!615874 () Bool)

(assert (=> b!6785936 (= e!4096131 call!615874)))

(declare-fun b!6785937 () Bool)

(declare-fun e!4096132 () Bool)

(declare-fun e!4096130 () Bool)

(assert (=> b!6785937 (= e!4096132 e!4096130)))

(declare-fun res!2773712 () Bool)

(assert (=> b!6785937 (= res!2773712 (not (nullable!6586 (reg!16936 r!7292))))))

(assert (=> b!6785937 (=> (not res!2773712) (not e!4096130))))

(declare-fun bm!615868 () Bool)

(declare-fun call!615873 () Bool)

(declare-fun c!1260911 () Bool)

(assert (=> bm!615868 (= call!615873 (validRegex!8343 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun bm!615869 () Bool)

(declare-fun call!615875 () Bool)

(assert (=> bm!615869 (= call!615874 call!615875)))

(declare-fun b!6785938 () Bool)

(assert (=> b!6785938 (= e!4096132 e!4096134)))

(assert (=> b!6785938 (= c!1260911 ((_ is Union!16607) r!7292))))

(declare-fun b!6785939 () Bool)

(assert (=> b!6785939 (= e!4096129 e!4096132)))

(declare-fun c!1260912 () Bool)

(assert (=> b!6785939 (= c!1260912 ((_ is Star!16607) r!7292))))

(declare-fun b!6785940 () Bool)

(declare-fun e!4096135 () Bool)

(assert (=> b!6785940 (= e!4096135 call!615874)))

(declare-fun b!6785941 () Bool)

(assert (=> b!6785941 (= e!4096133 e!4096135)))

(declare-fun res!2773713 () Bool)

(assert (=> b!6785941 (=> (not res!2773713) (not e!4096135))))

(assert (=> b!6785941 (= res!2773713 call!615873)))

(declare-fun b!6785942 () Bool)

(assert (=> b!6785942 (= e!4096130 call!615875)))

(declare-fun bm!615870 () Bool)

(assert (=> bm!615870 (= call!615875 (validRegex!8343 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))))))

(declare-fun b!6785943 () Bool)

(declare-fun res!2773714 () Bool)

(assert (=> b!6785943 (=> (not res!2773714) (not e!4096131))))

(assert (=> b!6785943 (= res!2773714 call!615873)))

(assert (=> b!6785943 (= e!4096134 e!4096131)))

(assert (= (and d!2132099 (not res!2773715)) b!6785939))

(assert (= (and b!6785939 c!1260912) b!6785937))

(assert (= (and b!6785939 (not c!1260912)) b!6785938))

(assert (= (and b!6785937 res!2773712) b!6785942))

(assert (= (and b!6785938 c!1260911) b!6785943))

(assert (= (and b!6785938 (not c!1260911)) b!6785935))

(assert (= (and b!6785943 res!2773714) b!6785936))

(assert (= (and b!6785935 (not res!2773716)) b!6785941))

(assert (= (and b!6785941 res!2773713) b!6785940))

(assert (= (or b!6785936 b!6785940) bm!615869))

(assert (= (or b!6785943 b!6785941) bm!615868))

(assert (= (or b!6785942 bm!615869) bm!615870))

(declare-fun m!7534164 () Bool)

(assert (=> b!6785937 m!7534164))

(declare-fun m!7534166 () Bool)

(assert (=> bm!615868 m!7534166))

(declare-fun m!7534168 () Bool)

(assert (=> bm!615870 m!7534168))

(assert (=> start!656748 d!2132099))

(declare-fun d!2132113 () Bool)

(declare-fun c!1260930 () Bool)

(assert (=> d!2132113 (= c!1260930 (isEmpty!38362 s!2326))))

(declare-fun e!4096156 () Bool)

(assert (=> d!2132113 (= (matchZipper!2593 z!1189 s!2326) e!4096156)))

(declare-fun b!6785981 () Bool)

(declare-fun nullableZipper!2314 ((InoxSet Context!11982)) Bool)

(assert (=> b!6785981 (= e!4096156 (nullableZipper!2314 z!1189))))

(declare-fun b!6785982 () Bool)

(assert (=> b!6785982 (= e!4096156 (matchZipper!2593 (derivationStepZipper!2551 z!1189 (head!13624 s!2326)) (tail!12709 s!2326)))))

(assert (= (and d!2132113 c!1260930) b!6785981))

(assert (= (and d!2132113 (not c!1260930)) b!6785982))

(assert (=> d!2132113 m!7533888))

(declare-fun m!7534170 () Bool)

(assert (=> b!6785981 m!7534170))

(assert (=> b!6785982 m!7534068))

(assert (=> b!6785982 m!7534068))

(declare-fun m!7534172 () Bool)

(assert (=> b!6785982 m!7534172))

(assert (=> b!6785982 m!7534072))

(assert (=> b!6785982 m!7534172))

(assert (=> b!6785982 m!7534072))

(declare-fun m!7534174 () Bool)

(assert (=> b!6785982 m!7534174))

(assert (=> b!6785553 d!2132113))

(declare-fun d!2132115 () Bool)

(declare-fun lt!2445652 () Regex!16607)

(assert (=> d!2132115 (validRegex!8343 lt!2445652)))

(assert (=> d!2132115 (= lt!2445652 (generalisedUnion!2451 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))))))

(assert (=> d!2132115 (= (unfocusZipper!2349 (Cons!65998 lt!2445587 Nil!65998)) lt!2445652)))

(declare-fun bs!1807675 () Bool)

(assert (= bs!1807675 d!2132115))

(declare-fun m!7534182 () Bool)

(assert (=> bs!1807675 m!7534182))

(declare-fun m!7534188 () Bool)

(assert (=> bs!1807675 m!7534188))

(assert (=> bs!1807675 m!7534188))

(declare-fun m!7534190 () Bool)

(assert (=> bs!1807675 m!7534190))

(assert (=> b!6785583 d!2132115))

(declare-fun d!2132119 () Bool)

(assert (=> d!2132119 (= (isEmpty!38361 (t!379841 zl!343)) ((_ is Nil!65998) (t!379841 zl!343)))))

(assert (=> b!6785567 d!2132119))

(declare-fun b!6786063 () Bool)

(declare-fun e!4096206 () Bool)

(declare-fun e!4096205 () Bool)

(assert (=> b!6786063 (= e!4096206 e!4096205)))

(declare-fun c!1260966 () Bool)

(declare-fun isEmpty!38364 (List!66120) Bool)

(assert (=> b!6786063 (= c!1260966 (isEmpty!38364 (exprs!6491 (h!72446 zl!343))))))

(declare-fun b!6786064 () Bool)

(declare-fun e!4096204 () Bool)

(assert (=> b!6786064 (= e!4096205 e!4096204)))

(declare-fun c!1260964 () Bool)

(declare-fun tail!12710 (List!66120) List!66120)

(assert (=> b!6786064 (= c!1260964 (isEmpty!38364 (tail!12710 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6786065 () Bool)

(declare-fun e!4096209 () Bool)

(assert (=> b!6786065 (= e!4096209 (isEmpty!38364 (t!379839 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6786066 () Bool)

(declare-fun lt!2445661 () Regex!16607)

(declare-fun isConcat!1487 (Regex!16607) Bool)

(assert (=> b!6786066 (= e!4096204 (isConcat!1487 lt!2445661))))

(declare-fun b!6786067 () Bool)

(declare-fun e!4096207 () Regex!16607)

(assert (=> b!6786067 (= e!4096207 (Concat!25452 (h!72444 (exprs!6491 (h!72446 zl!343))) (generalisedConcat!2204 (t!379839 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun d!2132123 () Bool)

(assert (=> d!2132123 e!4096206))

(declare-fun res!2773734 () Bool)

(assert (=> d!2132123 (=> (not res!2773734) (not e!4096206))))

(assert (=> d!2132123 (= res!2773734 (validRegex!8343 lt!2445661))))

(declare-fun e!4096208 () Regex!16607)

(assert (=> d!2132123 (= lt!2445661 e!4096208)))

(declare-fun c!1260965 () Bool)

(assert (=> d!2132123 (= c!1260965 e!4096209)))

(declare-fun res!2773735 () Bool)

(assert (=> d!2132123 (=> (not res!2773735) (not e!4096209))))

(assert (=> d!2132123 (= res!2773735 ((_ is Cons!65996) (exprs!6491 (h!72446 zl!343))))))

(declare-fun lambda!382132 () Int)

(declare-fun forall!15799 (List!66120 Int) Bool)

(assert (=> d!2132123 (forall!15799 (exprs!6491 (h!72446 zl!343)) lambda!382132)))

(assert (=> d!2132123 (= (generalisedConcat!2204 (exprs!6491 (h!72446 zl!343))) lt!2445661)))

(declare-fun b!6786068 () Bool)

(declare-fun isEmptyExpr!1965 (Regex!16607) Bool)

(assert (=> b!6786068 (= e!4096205 (isEmptyExpr!1965 lt!2445661))))

(declare-fun b!6786069 () Bool)

(declare-fun head!13626 (List!66120) Regex!16607)

(assert (=> b!6786069 (= e!4096204 (= lt!2445661 (head!13626 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6786070 () Bool)

(assert (=> b!6786070 (= e!4096208 e!4096207)))

(declare-fun c!1260967 () Bool)

(assert (=> b!6786070 (= c!1260967 ((_ is Cons!65996) (exprs!6491 (h!72446 zl!343))))))

(declare-fun b!6786071 () Bool)

(assert (=> b!6786071 (= e!4096208 (h!72444 (exprs!6491 (h!72446 zl!343))))))

(declare-fun b!6786072 () Bool)

(assert (=> b!6786072 (= e!4096207 EmptyExpr!16607)))

(assert (= (and d!2132123 res!2773735) b!6786065))

(assert (= (and d!2132123 c!1260965) b!6786071))

(assert (= (and d!2132123 (not c!1260965)) b!6786070))

(assert (= (and b!6786070 c!1260967) b!6786067))

(assert (= (and b!6786070 (not c!1260967)) b!6786072))

(assert (= (and d!2132123 res!2773734) b!6786063))

(assert (= (and b!6786063 c!1260966) b!6786068))

(assert (= (and b!6786063 (not c!1260966)) b!6786064))

(assert (= (and b!6786064 c!1260964) b!6786069))

(assert (= (and b!6786064 (not c!1260964)) b!6786066))

(declare-fun m!7534276 () Bool)

(assert (=> b!6786065 m!7534276))

(declare-fun m!7534278 () Bool)

(assert (=> b!6786064 m!7534278))

(assert (=> b!6786064 m!7534278))

(declare-fun m!7534280 () Bool)

(assert (=> b!6786064 m!7534280))

(declare-fun m!7534282 () Bool)

(assert (=> b!6786066 m!7534282))

(declare-fun m!7534284 () Bool)

(assert (=> d!2132123 m!7534284))

(declare-fun m!7534286 () Bool)

(assert (=> d!2132123 m!7534286))

(declare-fun m!7534288 () Bool)

(assert (=> b!6786069 m!7534288))

(declare-fun m!7534290 () Bool)

(assert (=> b!6786067 m!7534290))

(declare-fun m!7534292 () Bool)

(assert (=> b!6786068 m!7534292))

(declare-fun m!7534294 () Bool)

(assert (=> b!6786063 m!7534294))

(assert (=> b!6785577 d!2132123))

(declare-fun d!2132153 () Bool)

(declare-fun e!4096224 () Bool)

(assert (=> d!2132153 e!4096224))

(declare-fun res!2773742 () Bool)

(assert (=> d!2132153 (=> (not res!2773742) (not e!4096224))))

(declare-fun lt!2445666 () List!66122)

(declare-fun noDuplicate!2392 (List!66122) Bool)

(assert (=> d!2132153 (= res!2773742 (noDuplicate!2392 lt!2445666))))

(declare-fun choose!50543 ((InoxSet Context!11982)) List!66122)

(assert (=> d!2132153 (= lt!2445666 (choose!50543 z!1189))))

(assert (=> d!2132153 (= (toList!10391 z!1189) lt!2445666)))

(declare-fun b!6786095 () Bool)

(declare-fun content!12861 (List!66122) (InoxSet Context!11982))

(assert (=> b!6786095 (= e!4096224 (= (content!12861 lt!2445666) z!1189))))

(assert (= (and d!2132153 res!2773742) b!6786095))

(declare-fun m!7534296 () Bool)

(assert (=> d!2132153 m!7534296))

(declare-fun m!7534298 () Bool)

(assert (=> d!2132153 m!7534298))

(declare-fun m!7534300 () Bool)

(assert (=> b!6786095 m!7534300))

(assert (=> b!6785555 d!2132153))

(declare-fun d!2132155 () Bool)

(declare-fun choose!50544 (Int) Bool)

(assert (=> d!2132155 (= (Exists!3675 lambda!382082) (choose!50544 lambda!382082))))

(declare-fun bs!1807691 () Bool)

(assert (= bs!1807691 d!2132155))

(declare-fun m!7534302 () Bool)

(assert (=> bs!1807691 m!7534302))

(assert (=> b!6785576 d!2132155))

(declare-fun d!2132157 () Bool)

(assert (=> d!2132157 (= (Exists!3675 lambda!382083) (choose!50544 lambda!382083))))

(declare-fun bs!1807692 () Bool)

(assert (= bs!1807692 d!2132157))

(declare-fun m!7534304 () Bool)

(assert (=> bs!1807692 m!7534304))

(assert (=> b!6785576 d!2132157))

(declare-fun d!2132159 () Bool)

(declare-fun isEmpty!38366 (Option!16494) Bool)

(assert (=> d!2132159 (= (isDefined!13197 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326)) (not (isEmpty!38366 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326))))))

(declare-fun bs!1807693 () Bool)

(assert (= bs!1807693 d!2132159))

(assert (=> bs!1807693 m!7533898))

(declare-fun m!7534306 () Bool)

(assert (=> bs!1807693 m!7534306))

(assert (=> b!6785576 d!2132159))

(declare-fun bs!1807703 () Bool)

(declare-fun d!2132161 () Bool)

(assert (= bs!1807703 (and d!2132161 b!6785576)))

(declare-fun lambda!382143 () Int)

(assert (=> bs!1807703 (not (= lambda!382143 lambda!382084))))

(declare-fun bs!1807704 () Bool)

(assert (= bs!1807704 (and d!2132161 b!6785656)))

(assert (=> bs!1807704 (not (= lambda!382143 lambda!382094))))

(assert (=> bs!1807703 (= lambda!382143 lambda!382082)))

(declare-fun bs!1807705 () Bool)

(assert (= bs!1807705 (and d!2132161 b!6785838)))

(assert (=> bs!1807705 (not (= lambda!382143 lambda!382121))))

(declare-fun bs!1807706 () Bool)

(assert (= bs!1807706 (and d!2132161 b!6785833)))

(assert (=> bs!1807706 (not (= lambda!382143 lambda!382120))))

(declare-fun bs!1807707 () Bool)

(assert (= bs!1807707 (and d!2132161 b!6785661)))

(assert (=> bs!1807707 (not (= lambda!382143 lambda!382096))))

(assert (=> bs!1807703 (not (= lambda!382143 lambda!382083))))

(assert (=> d!2132161 true))

(assert (=> d!2132161 true))

(assert (=> d!2132161 true))

(declare-fun lambda!382144 () Int)

(assert (=> bs!1807703 (= lambda!382144 lambda!382084)))

(assert (=> bs!1807704 (not (= lambda!382144 lambda!382094))))

(declare-fun bs!1807712 () Bool)

(assert (= bs!1807712 d!2132161))

(assert (=> bs!1807712 (not (= lambda!382144 lambda!382143))))

(assert (=> bs!1807703 (not (= lambda!382144 lambda!382082))))

(assert (=> bs!1807705 (= (and (= (reg!16936 r!7292) (regOne!33726 lt!2445581)) (= r!7292 (regTwo!33726 lt!2445581))) (= lambda!382144 lambda!382121))))

(assert (=> bs!1807706 (not (= lambda!382144 lambda!382120))))

(assert (=> bs!1807707 (= (and (= (reg!16936 r!7292) (regOne!33726 r!7292)) (= r!7292 (regTwo!33726 r!7292))) (= lambda!382144 lambda!382096))))

(assert (=> bs!1807703 (not (= lambda!382144 lambda!382083))))

(assert (=> d!2132161 true))

(assert (=> d!2132161 true))

(assert (=> d!2132161 true))

(assert (=> d!2132161 (= (Exists!3675 lambda!382143) (Exists!3675 lambda!382144))))

(declare-fun lt!2445673 () Unit!159905)

(declare-fun choose!50545 (Regex!16607 Regex!16607 List!66121) Unit!159905)

(assert (=> d!2132161 (= lt!2445673 (choose!50545 (reg!16936 r!7292) r!7292 s!2326))))

(assert (=> d!2132161 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132161 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2202 (reg!16936 r!7292) r!7292 s!2326) lt!2445673)))

(declare-fun m!7534336 () Bool)

(assert (=> bs!1807712 m!7534336))

(declare-fun m!7534338 () Bool)

(assert (=> bs!1807712 m!7534338))

(declare-fun m!7534340 () Bool)

(assert (=> bs!1807712 m!7534340))

(declare-fun m!7534342 () Bool)

(assert (=> bs!1807712 m!7534342))

(assert (=> b!6785576 d!2132161))

(declare-fun bs!1807713 () Bool)

(declare-fun d!2132173 () Bool)

(assert (= bs!1807713 (and d!2132173 b!6785576)))

(declare-fun lambda!382149 () Int)

(assert (=> bs!1807713 (not (= lambda!382149 lambda!382084))))

(declare-fun bs!1807714 () Bool)

(assert (= bs!1807714 (and d!2132173 b!6785656)))

(assert (=> bs!1807714 (not (= lambda!382149 lambda!382094))))

(declare-fun bs!1807715 () Bool)

(assert (= bs!1807715 (and d!2132173 d!2132161)))

(assert (=> bs!1807715 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382149 lambda!382143))))

(assert (=> bs!1807713 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382149 lambda!382082))))

(declare-fun bs!1807716 () Bool)

(assert (= bs!1807716 (and d!2132173 b!6785838)))

(assert (=> bs!1807716 (not (= lambda!382149 lambda!382121))))

(declare-fun bs!1807717 () Bool)

(assert (= bs!1807717 (and d!2132173 b!6785833)))

(assert (=> bs!1807717 (not (= lambda!382149 lambda!382120))))

(declare-fun bs!1807718 () Bool)

(assert (= bs!1807718 (and d!2132173 b!6785661)))

(assert (=> bs!1807718 (not (= lambda!382149 lambda!382096))))

(assert (=> bs!1807713 (not (= lambda!382149 lambda!382083))))

(assert (=> bs!1807715 (not (= lambda!382149 lambda!382144))))

(assert (=> d!2132173 true))

(assert (=> d!2132173 true))

(declare-fun lambda!382150 () Int)

(assert (=> bs!1807713 (not (= lambda!382150 lambda!382084))))

(assert (=> bs!1807715 (not (= lambda!382150 lambda!382143))))

(assert (=> bs!1807713 (not (= lambda!382150 lambda!382082))))

(assert (=> bs!1807716 (not (= lambda!382150 lambda!382121))))

(assert (=> bs!1807717 (= (and (= (reg!16936 r!7292) (reg!16936 lt!2445581)) (= (Star!16607 (reg!16936 r!7292)) lt!2445581)) (= lambda!382150 lambda!382120))))

(assert (=> bs!1807718 (not (= lambda!382150 lambda!382096))))

(declare-fun bs!1807719 () Bool)

(assert (= bs!1807719 d!2132173))

(assert (=> bs!1807719 (not (= lambda!382150 lambda!382149))))

(assert (=> bs!1807714 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382150 lambda!382094))))

(assert (=> bs!1807713 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382150 lambda!382083))))

(assert (=> bs!1807715 (not (= lambda!382150 lambda!382144))))

(assert (=> d!2132173 true))

(assert (=> d!2132173 true))

(assert (=> d!2132173 (= (Exists!3675 lambda!382149) (Exists!3675 lambda!382150))))

(declare-fun lt!2445676 () Unit!159905)

(declare-fun choose!50546 (Regex!16607 List!66121) Unit!159905)

(assert (=> d!2132173 (= lt!2445676 (choose!50546 (reg!16936 r!7292) s!2326))))

(assert (=> d!2132173 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132173 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!766 (reg!16936 r!7292) s!2326) lt!2445676)))

(declare-fun m!7534344 () Bool)

(assert (=> bs!1807719 m!7534344))

(declare-fun m!7534346 () Bool)

(assert (=> bs!1807719 m!7534346))

(declare-fun m!7534348 () Bool)

(assert (=> bs!1807719 m!7534348))

(assert (=> bs!1807719 m!7534342))

(assert (=> b!6785576 d!2132173))

(declare-fun d!2132175 () Bool)

(assert (=> d!2132175 (= (isEmpty!38362 s!2326) ((_ is Nil!65997) s!2326))))

(assert (=> b!6785576 d!2132175))

(declare-fun d!2132177 () Bool)

(assert (=> d!2132177 (= (Exists!3675 lambda!382084) (choose!50544 lambda!382084))))

(declare-fun bs!1807720 () Bool)

(assert (= bs!1807720 d!2132177))

(declare-fun m!7534350 () Bool)

(assert (=> bs!1807720 m!7534350))

(assert (=> b!6785576 d!2132177))

(declare-fun b!6786202 () Bool)

(declare-fun e!4096279 () Option!16494)

(declare-fun e!4096275 () Option!16494)

(assert (=> b!6786202 (= e!4096279 e!4096275)))

(declare-fun c!1260988 () Bool)

(assert (=> b!6786202 (= c!1260988 ((_ is Nil!65997) s!2326))))

(declare-fun d!2132179 () Bool)

(declare-fun e!4096278 () Bool)

(assert (=> d!2132179 e!4096278))

(declare-fun res!2773774 () Bool)

(assert (=> d!2132179 (=> res!2773774 e!4096278)))

(declare-fun e!4096276 () Bool)

(assert (=> d!2132179 (= res!2773774 e!4096276)))

(declare-fun res!2773776 () Bool)

(assert (=> d!2132179 (=> (not res!2773776) (not e!4096276))))

(declare-fun lt!2445683 () Option!16494)

(assert (=> d!2132179 (= res!2773776 (isDefined!13197 lt!2445683))))

(assert (=> d!2132179 (= lt!2445683 e!4096279)))

(declare-fun c!1260987 () Bool)

(declare-fun e!4096277 () Bool)

(assert (=> d!2132179 (= c!1260987 e!4096277)))

(declare-fun res!2773775 () Bool)

(assert (=> d!2132179 (=> (not res!2773775) (not e!4096277))))

(assert (=> d!2132179 (= res!2773775 (matchR!8790 (reg!16936 r!7292) Nil!65997))))

(assert (=> d!2132179 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132179 (= (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326) lt!2445683)))

(declare-fun b!6786203 () Bool)

(declare-fun res!2773773 () Bool)

(assert (=> b!6786203 (=> (not res!2773773) (not e!4096276))))

(declare-fun get!22980 (Option!16494) tuple2!67164)

(assert (=> b!6786203 (= res!2773773 (matchR!8790 (reg!16936 r!7292) (_1!36885 (get!22980 lt!2445683))))))

(declare-fun b!6786204 () Bool)

(assert (=> b!6786204 (= e!4096277 (matchR!8790 r!7292 s!2326))))

(declare-fun b!6786205 () Bool)

(declare-fun lt!2445684 () Unit!159905)

(declare-fun lt!2445685 () Unit!159905)

(assert (=> b!6786205 (= lt!2445684 lt!2445685)))

(declare-fun ++!14763 (List!66121 List!66121) List!66121)

(assert (=> b!6786205 (= (++!14763 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (t!379840 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2728 (List!66121 C!33484 List!66121 List!66121) Unit!159905)

(assert (=> b!6786205 (= lt!2445685 (lemmaMoveElementToOtherListKeepsConcatEq!2728 Nil!65997 (h!72445 s!2326) (t!379840 s!2326) s!2326))))

(assert (=> b!6786205 (= e!4096275 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (t!379840 s!2326) s!2326))))

(declare-fun b!6786206 () Bool)

(declare-fun res!2773777 () Bool)

(assert (=> b!6786206 (=> (not res!2773777) (not e!4096276))))

(assert (=> b!6786206 (= res!2773777 (matchR!8790 r!7292 (_2!36885 (get!22980 lt!2445683))))))

(declare-fun b!6786207 () Bool)

(assert (=> b!6786207 (= e!4096276 (= (++!14763 (_1!36885 (get!22980 lt!2445683)) (_2!36885 (get!22980 lt!2445683))) s!2326))))

(declare-fun b!6786208 () Bool)

(assert (=> b!6786208 (= e!4096278 (not (isDefined!13197 lt!2445683)))))

(declare-fun b!6786209 () Bool)

(assert (=> b!6786209 (= e!4096279 (Some!16493 (tuple2!67165 Nil!65997 s!2326)))))

(declare-fun b!6786210 () Bool)

(assert (=> b!6786210 (= e!4096275 None!16493)))

(assert (= (and d!2132179 res!2773775) b!6786204))

(assert (= (and d!2132179 c!1260987) b!6786209))

(assert (= (and d!2132179 (not c!1260987)) b!6786202))

(assert (= (and b!6786202 c!1260988) b!6786210))

(assert (= (and b!6786202 (not c!1260988)) b!6786205))

(assert (= (and d!2132179 res!2773776) b!6786203))

(assert (= (and b!6786203 res!2773773) b!6786206))

(assert (= (and b!6786206 res!2773777) b!6786207))

(assert (= (and d!2132179 (not res!2773774)) b!6786208))

(declare-fun m!7534352 () Bool)

(assert (=> b!6786208 m!7534352))

(declare-fun m!7534354 () Bool)

(assert (=> b!6786206 m!7534354))

(declare-fun m!7534356 () Bool)

(assert (=> b!6786206 m!7534356))

(assert (=> d!2132179 m!7534352))

(declare-fun m!7534358 () Bool)

(assert (=> d!2132179 m!7534358))

(assert (=> d!2132179 m!7534342))

(assert (=> b!6786207 m!7534354))

(declare-fun m!7534360 () Bool)

(assert (=> b!6786207 m!7534360))

(declare-fun m!7534362 () Bool)

(assert (=> b!6786205 m!7534362))

(assert (=> b!6786205 m!7534362))

(declare-fun m!7534364 () Bool)

(assert (=> b!6786205 m!7534364))

(declare-fun m!7534366 () Bool)

(assert (=> b!6786205 m!7534366))

(assert (=> b!6786205 m!7534362))

(declare-fun m!7534368 () Bool)

(assert (=> b!6786205 m!7534368))

(assert (=> b!6786203 m!7534354))

(declare-fun m!7534370 () Bool)

(assert (=> b!6786203 m!7534370))

(assert (=> b!6786204 m!7533944))

(assert (=> b!6785576 d!2132179))

(declare-fun bs!1807721 () Bool)

(declare-fun d!2132181 () Bool)

(assert (= bs!1807721 (and d!2132181 b!6785576)))

(declare-fun lambda!382153 () Int)

(assert (=> bs!1807721 (not (= lambda!382153 lambda!382084))))

(declare-fun bs!1807722 () Bool)

(assert (= bs!1807722 (and d!2132181 d!2132173)))

(assert (=> bs!1807722 (not (= lambda!382153 lambda!382150))))

(declare-fun bs!1807723 () Bool)

(assert (= bs!1807723 (and d!2132181 d!2132161)))

(assert (=> bs!1807723 (= lambda!382153 lambda!382143)))

(assert (=> bs!1807721 (= lambda!382153 lambda!382082)))

(declare-fun bs!1807724 () Bool)

(assert (= bs!1807724 (and d!2132181 b!6785838)))

(assert (=> bs!1807724 (not (= lambda!382153 lambda!382121))))

(declare-fun bs!1807725 () Bool)

(assert (= bs!1807725 (and d!2132181 b!6785833)))

(assert (=> bs!1807725 (not (= lambda!382153 lambda!382120))))

(declare-fun bs!1807726 () Bool)

(assert (= bs!1807726 (and d!2132181 b!6785661)))

(assert (=> bs!1807726 (not (= lambda!382153 lambda!382096))))

(assert (=> bs!1807722 (= (= r!7292 (Star!16607 (reg!16936 r!7292))) (= lambda!382153 lambda!382149))))

(declare-fun bs!1807727 () Bool)

(assert (= bs!1807727 (and d!2132181 b!6785656)))

(assert (=> bs!1807727 (not (= lambda!382153 lambda!382094))))

(assert (=> bs!1807721 (not (= lambda!382153 lambda!382083))))

(assert (=> bs!1807723 (not (= lambda!382153 lambda!382144))))

(assert (=> d!2132181 true))

(assert (=> d!2132181 true))

(assert (=> d!2132181 true))

(assert (=> d!2132181 (= (isDefined!13197 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326)) (Exists!3675 lambda!382153))))

(declare-fun lt!2445688 () Unit!159905)

(declare-fun choose!50547 (Regex!16607 Regex!16607 List!66121) Unit!159905)

(assert (=> d!2132181 (= lt!2445688 (choose!50547 (reg!16936 r!7292) r!7292 s!2326))))

(assert (=> d!2132181 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132181 (= (lemmaFindConcatSeparationEquivalentToExists!2672 (reg!16936 r!7292) r!7292 s!2326) lt!2445688)))

(declare-fun bs!1807728 () Bool)

(assert (= bs!1807728 d!2132181))

(assert (=> bs!1807728 m!7533898))

(assert (=> bs!1807728 m!7533900))

(assert (=> bs!1807728 m!7533898))

(assert (=> bs!1807728 m!7534342))

(declare-fun m!7534372 () Bool)

(assert (=> bs!1807728 m!7534372))

(declare-fun m!7534374 () Bool)

(assert (=> bs!1807728 m!7534374))

(assert (=> b!6785576 d!2132181))

(declare-fun bs!1807729 () Bool)

(declare-fun d!2132183 () Bool)

(assert (= bs!1807729 (and d!2132183 d!2132123)))

(declare-fun lambda!382156 () Int)

(assert (=> bs!1807729 (= lambda!382156 lambda!382132)))

(declare-fun b!6786235 () Bool)

(declare-fun e!4096296 () Bool)

(declare-fun e!4096295 () Bool)

(assert (=> b!6786235 (= e!4096296 e!4096295)))

(declare-fun c!1260998 () Bool)

(assert (=> b!6786235 (= c!1260998 (isEmpty!38364 (tail!12710 (unfocusZipperList!2028 zl!343))))))

(declare-fun b!6786236 () Bool)

(declare-fun lt!2445691 () Regex!16607)

(declare-fun isUnion!1402 (Regex!16607) Bool)

(assert (=> b!6786236 (= e!4096295 (isUnion!1402 lt!2445691))))

(declare-fun e!4096299 () Bool)

(assert (=> d!2132183 e!4096299))

(declare-fun res!2773787 () Bool)

(assert (=> d!2132183 (=> (not res!2773787) (not e!4096299))))

(assert (=> d!2132183 (= res!2773787 (validRegex!8343 lt!2445691))))

(declare-fun e!4096294 () Regex!16607)

(assert (=> d!2132183 (= lt!2445691 e!4096294)))

(declare-fun c!1260997 () Bool)

(declare-fun e!4096297 () Bool)

(assert (=> d!2132183 (= c!1260997 e!4096297)))

(declare-fun res!2773786 () Bool)

(assert (=> d!2132183 (=> (not res!2773786) (not e!4096297))))

(assert (=> d!2132183 (= res!2773786 ((_ is Cons!65996) (unfocusZipperList!2028 zl!343)))))

(assert (=> d!2132183 (forall!15799 (unfocusZipperList!2028 zl!343) lambda!382156)))

(assert (=> d!2132183 (= (generalisedUnion!2451 (unfocusZipperList!2028 zl!343)) lt!2445691)))

(declare-fun b!6786237 () Bool)

(declare-fun isEmptyLang!1972 (Regex!16607) Bool)

(assert (=> b!6786237 (= e!4096296 (isEmptyLang!1972 lt!2445691))))

(declare-fun b!6786238 () Bool)

(assert (=> b!6786238 (= e!4096299 e!4096296)))

(declare-fun c!1260999 () Bool)

(assert (=> b!6786238 (= c!1260999 (isEmpty!38364 (unfocusZipperList!2028 zl!343)))))

(declare-fun b!6786239 () Bool)

(declare-fun e!4096298 () Regex!16607)

(assert (=> b!6786239 (= e!4096298 EmptyLang!16607)))

(declare-fun b!6786240 () Bool)

(assert (=> b!6786240 (= e!4096295 (= lt!2445691 (head!13626 (unfocusZipperList!2028 zl!343))))))

(declare-fun b!6786241 () Bool)

(assert (=> b!6786241 (= e!4096298 (Union!16607 (h!72444 (unfocusZipperList!2028 zl!343)) (generalisedUnion!2451 (t!379839 (unfocusZipperList!2028 zl!343)))))))

(declare-fun b!6786242 () Bool)

(assert (=> b!6786242 (= e!4096297 (isEmpty!38364 (t!379839 (unfocusZipperList!2028 zl!343))))))

(declare-fun b!6786243 () Bool)

(assert (=> b!6786243 (= e!4096294 (h!72444 (unfocusZipperList!2028 zl!343)))))

(declare-fun b!6786244 () Bool)

(assert (=> b!6786244 (= e!4096294 e!4096298)))

(declare-fun c!1261000 () Bool)

(assert (=> b!6786244 (= c!1261000 ((_ is Cons!65996) (unfocusZipperList!2028 zl!343)))))

(assert (= (and d!2132183 res!2773786) b!6786242))

(assert (= (and d!2132183 c!1260997) b!6786243))

(assert (= (and d!2132183 (not c!1260997)) b!6786244))

(assert (= (and b!6786244 c!1261000) b!6786241))

(assert (= (and b!6786244 (not c!1261000)) b!6786239))

(assert (= (and d!2132183 res!2773787) b!6786238))

(assert (= (and b!6786238 c!1260999) b!6786237))

(assert (= (and b!6786238 (not c!1260999)) b!6786235))

(assert (= (and b!6786235 c!1260998) b!6786240))

(assert (= (and b!6786235 (not c!1260998)) b!6786236))

(declare-fun m!7534376 () Bool)

(assert (=> b!6786242 m!7534376))

(assert (=> b!6786238 m!7533880))

(declare-fun m!7534378 () Bool)

(assert (=> b!6786238 m!7534378))

(declare-fun m!7534380 () Bool)

(assert (=> b!6786241 m!7534380))

(declare-fun m!7534382 () Bool)

(assert (=> b!6786236 m!7534382))

(declare-fun m!7534384 () Bool)

(assert (=> b!6786237 m!7534384))

(assert (=> b!6786235 m!7533880))

(declare-fun m!7534386 () Bool)

(assert (=> b!6786235 m!7534386))

(assert (=> b!6786235 m!7534386))

(declare-fun m!7534388 () Bool)

(assert (=> b!6786235 m!7534388))

(declare-fun m!7534390 () Bool)

(assert (=> d!2132183 m!7534390))

(assert (=> d!2132183 m!7533880))

(declare-fun m!7534392 () Bool)

(assert (=> d!2132183 m!7534392))

(assert (=> b!6786240 m!7533880))

(declare-fun m!7534394 () Bool)

(assert (=> b!6786240 m!7534394))

(assert (=> b!6785578 d!2132183))

(declare-fun bs!1807730 () Bool)

(declare-fun d!2132185 () Bool)

(assert (= bs!1807730 (and d!2132185 d!2132123)))

(declare-fun lambda!382159 () Int)

(assert (=> bs!1807730 (= lambda!382159 lambda!382132)))

(declare-fun bs!1807731 () Bool)

(assert (= bs!1807731 (and d!2132185 d!2132183)))

(assert (=> bs!1807731 (= lambda!382159 lambda!382156)))

(declare-fun lt!2445694 () List!66120)

(assert (=> d!2132185 (forall!15799 lt!2445694 lambda!382159)))

(declare-fun e!4096302 () List!66120)

(assert (=> d!2132185 (= lt!2445694 e!4096302)))

(declare-fun c!1261003 () Bool)

(assert (=> d!2132185 (= c!1261003 ((_ is Cons!65998) zl!343))))

(assert (=> d!2132185 (= (unfocusZipperList!2028 zl!343) lt!2445694)))

(declare-fun b!6786249 () Bool)

(assert (=> b!6786249 (= e!4096302 (Cons!65996 (generalisedConcat!2204 (exprs!6491 (h!72446 zl!343))) (unfocusZipperList!2028 (t!379841 zl!343))))))

(declare-fun b!6786250 () Bool)

(assert (=> b!6786250 (= e!4096302 Nil!65996)))

(assert (= (and d!2132185 c!1261003) b!6786249))

(assert (= (and d!2132185 (not c!1261003)) b!6786250))

(declare-fun m!7534396 () Bool)

(assert (=> d!2132185 m!7534396))

(assert (=> b!6786249 m!7533906))

(declare-fun m!7534398 () Bool)

(assert (=> b!6786249 m!7534398))

(assert (=> b!6785578 d!2132185))

(declare-fun bs!1807732 () Bool)

(declare-fun d!2132187 () Bool)

(assert (= bs!1807732 (and d!2132187 d!2132123)))

(declare-fun lambda!382162 () Int)

(assert (=> bs!1807732 (= lambda!382162 lambda!382132)))

(declare-fun bs!1807733 () Bool)

(assert (= bs!1807733 (and d!2132187 d!2132183)))

(assert (=> bs!1807733 (= lambda!382162 lambda!382156)))

(declare-fun bs!1807734 () Bool)

(assert (= bs!1807734 (and d!2132187 d!2132185)))

(assert (=> bs!1807734 (= lambda!382162 lambda!382159)))

(assert (=> d!2132187 (= (inv!84764 lt!2445587) (forall!15799 (exprs!6491 lt!2445587) lambda!382162))))

(declare-fun bs!1807735 () Bool)

(assert (= bs!1807735 d!2132187))

(declare-fun m!7534400 () Bool)

(assert (=> bs!1807735 m!7534400))

(assert (=> b!6785559 d!2132187))

(declare-fun d!2132189 () Bool)

(declare-fun c!1261009 () Bool)

(declare-fun e!4096311 () Bool)

(assert (=> d!2132189 (= c!1261009 e!4096311)))

(declare-fun res!2773790 () Bool)

(assert (=> d!2132189 (=> (not res!2773790) (not e!4096311))))

(assert (=> d!2132189 (= res!2773790 ((_ is Cons!65996) (exprs!6491 lt!2445602)))))

(declare-fun e!4096309 () (InoxSet Context!11982))

(assert (=> d!2132189 (= (derivationStepZipperUp!1761 lt!2445602 (h!72445 s!2326)) e!4096309)))

(declare-fun bm!615900 () Bool)

(declare-fun call!615905 () (InoxSet Context!11982))

(assert (=> bm!615900 (= call!615905 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 lt!2445602)) (Context!11983 (t!379839 (exprs!6491 lt!2445602))) (h!72445 s!2326)))))

(declare-fun b!6786261 () Bool)

(assert (=> b!6786261 (= e!4096311 (nullable!6586 (h!72444 (exprs!6491 lt!2445602))))))

(declare-fun b!6786262 () Bool)

(declare-fun e!4096310 () (InoxSet Context!11982))

(assert (=> b!6786262 (= e!4096310 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786263 () Bool)

(assert (=> b!6786263 (= e!4096309 e!4096310)))

(declare-fun c!1261008 () Bool)

(assert (=> b!6786263 (= c!1261008 ((_ is Cons!65996) (exprs!6491 lt!2445602)))))

(declare-fun b!6786264 () Bool)

(assert (=> b!6786264 (= e!4096309 ((_ map or) call!615905 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 lt!2445602))) (h!72445 s!2326))))))

(declare-fun b!6786265 () Bool)

(assert (=> b!6786265 (= e!4096310 call!615905)))

(assert (= (and d!2132189 res!2773790) b!6786261))

(assert (= (and d!2132189 c!1261009) b!6786264))

(assert (= (and d!2132189 (not c!1261009)) b!6786263))

(assert (= (and b!6786263 c!1261008) b!6786265))

(assert (= (and b!6786263 (not c!1261008)) b!6786262))

(assert (= (or b!6786264 b!6786265) bm!615900))

(declare-fun m!7534402 () Bool)

(assert (=> bm!615900 m!7534402))

(declare-fun m!7534404 () Bool)

(assert (=> b!6786261 m!7534404))

(declare-fun m!7534406 () Bool)

(assert (=> b!6786264 m!7534406))

(assert (=> b!6785570 d!2132189))

(declare-fun d!2132191 () Bool)

(declare-fun dynLambda!26338 (Int Context!11982) (InoxSet Context!11982))

(assert (=> d!2132191 (= (flatMap!2088 lt!2445589 lambda!382085) (dynLambda!26338 lambda!382085 lt!2445587))))

(declare-fun lt!2445697 () Unit!159905)

(declare-fun choose!50548 ((InoxSet Context!11982) Context!11982 Int) Unit!159905)

(assert (=> d!2132191 (= lt!2445697 (choose!50548 lt!2445589 lt!2445587 lambda!382085))))

(assert (=> d!2132191 (= lt!2445589 (store ((as const (Array Context!11982 Bool)) false) lt!2445587 true))))

(assert (=> d!2132191 (= (lemmaFlatMapOnSingletonSet!1614 lt!2445589 lt!2445587 lambda!382085) lt!2445697)))

(declare-fun b_lambda!255555 () Bool)

(assert (=> (not b_lambda!255555) (not d!2132191)))

(declare-fun bs!1807736 () Bool)

(assert (= bs!1807736 d!2132191))

(assert (=> bs!1807736 m!7533918))

(declare-fun m!7534408 () Bool)

(assert (=> bs!1807736 m!7534408))

(declare-fun m!7534410 () Bool)

(assert (=> bs!1807736 m!7534410))

(assert (=> bs!1807736 m!7533914))

(assert (=> b!6785570 d!2132191))

(declare-fun d!2132193 () Bool)

(declare-fun choose!50549 ((InoxSet Context!11982) Int) (InoxSet Context!11982))

(assert (=> d!2132193 (= (flatMap!2088 lt!2445589 lambda!382085) (choose!50549 lt!2445589 lambda!382085))))

(declare-fun bs!1807737 () Bool)

(assert (= bs!1807737 d!2132193))

(declare-fun m!7534412 () Bool)

(assert (=> bs!1807737 m!7534412))

(assert (=> b!6785570 d!2132193))

(declare-fun bs!1807738 () Bool)

(declare-fun d!2132195 () Bool)

(assert (= bs!1807738 (and d!2132195 b!6785571)))

(declare-fun lambda!382165 () Int)

(assert (=> bs!1807738 (= lambda!382165 lambda!382085)))

(assert (=> d!2132195 true))

(assert (=> d!2132195 (= (derivationStepZipper!2551 lt!2445592 (h!72445 s!2326)) (flatMap!2088 lt!2445592 lambda!382165))))

(declare-fun bs!1807739 () Bool)

(assert (= bs!1807739 d!2132195))

(declare-fun m!7534414 () Bool)

(assert (=> bs!1807739 m!7534414))

(assert (=> b!6785570 d!2132195))

(declare-fun d!2132197 () Bool)

(assert (=> d!2132197 (= (flatMap!2088 lt!2445592 lambda!382085) (choose!50549 lt!2445592 lambda!382085))))

(declare-fun bs!1807740 () Bool)

(assert (= bs!1807740 d!2132197))

(declare-fun m!7534416 () Bool)

(assert (=> bs!1807740 m!7534416))

(assert (=> b!6785570 d!2132197))

(declare-fun d!2132199 () Bool)

(assert (=> d!2132199 (= (flatMap!2088 lt!2445592 lambda!382085) (dynLambda!26338 lambda!382085 lt!2445602))))

(declare-fun lt!2445698 () Unit!159905)

(assert (=> d!2132199 (= lt!2445698 (choose!50548 lt!2445592 lt!2445602 lambda!382085))))

(assert (=> d!2132199 (= lt!2445592 (store ((as const (Array Context!11982 Bool)) false) lt!2445602 true))))

(assert (=> d!2132199 (= (lemmaFlatMapOnSingletonSet!1614 lt!2445592 lt!2445602 lambda!382085) lt!2445698)))

(declare-fun b_lambda!255557 () Bool)

(assert (=> (not b_lambda!255557) (not d!2132199)))

(declare-fun bs!1807741 () Bool)

(assert (= bs!1807741 d!2132199))

(assert (=> bs!1807741 m!7533912))

(declare-fun m!7534418 () Bool)

(assert (=> bs!1807741 m!7534418))

(declare-fun m!7534420 () Bool)

(assert (=> bs!1807741 m!7534420))

(assert (=> bs!1807741 m!7533920))

(assert (=> b!6785570 d!2132199))

(declare-fun d!2132201 () Bool)

(declare-fun c!1261013 () Bool)

(declare-fun e!4096314 () Bool)

(assert (=> d!2132201 (= c!1261013 e!4096314)))

(declare-fun res!2773791 () Bool)

(assert (=> d!2132201 (=> (not res!2773791) (not e!4096314))))

(assert (=> d!2132201 (= res!2773791 ((_ is Cons!65996) (exprs!6491 lt!2445587)))))

(declare-fun e!4096312 () (InoxSet Context!11982))

(assert (=> d!2132201 (= (derivationStepZipperUp!1761 lt!2445587 (h!72445 s!2326)) e!4096312)))

(declare-fun bm!615901 () Bool)

(declare-fun call!615906 () (InoxSet Context!11982))

(assert (=> bm!615901 (= call!615906 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 lt!2445587)) (Context!11983 (t!379839 (exprs!6491 lt!2445587))) (h!72445 s!2326)))))

(declare-fun b!6786268 () Bool)

(assert (=> b!6786268 (= e!4096314 (nullable!6586 (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun b!6786269 () Bool)

(declare-fun e!4096313 () (InoxSet Context!11982))

(assert (=> b!6786269 (= e!4096313 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786270 () Bool)

(assert (=> b!6786270 (= e!4096312 e!4096313)))

(declare-fun c!1261012 () Bool)

(assert (=> b!6786270 (= c!1261012 ((_ is Cons!65996) (exprs!6491 lt!2445587)))))

(declare-fun b!6786271 () Bool)

(assert (=> b!6786271 (= e!4096312 ((_ map or) call!615906 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 lt!2445587))) (h!72445 s!2326))))))

(declare-fun b!6786272 () Bool)

(assert (=> b!6786272 (= e!4096313 call!615906)))

(assert (= (and d!2132201 res!2773791) b!6786268))

(assert (= (and d!2132201 c!1261013) b!6786271))

(assert (= (and d!2132201 (not c!1261013)) b!6786270))

(assert (= (and b!6786270 c!1261012) b!6786272))

(assert (= (and b!6786270 (not c!1261012)) b!6786269))

(assert (= (or b!6786271 b!6786272) bm!615901))

(declare-fun m!7534422 () Bool)

(assert (=> bm!615901 m!7534422))

(declare-fun m!7534424 () Bool)

(assert (=> b!6786268 m!7534424))

(declare-fun m!7534426 () Bool)

(assert (=> b!6786271 m!7534426))

(assert (=> b!6785570 d!2132201))

(declare-fun bs!1807742 () Bool)

(declare-fun d!2132203 () Bool)

(assert (= bs!1807742 (and d!2132203 d!2132123)))

(declare-fun lambda!382166 () Int)

(assert (=> bs!1807742 (= lambda!382166 lambda!382132)))

(declare-fun bs!1807743 () Bool)

(assert (= bs!1807743 (and d!2132203 d!2132183)))

(assert (=> bs!1807743 (= lambda!382166 lambda!382156)))

(declare-fun bs!1807744 () Bool)

(assert (= bs!1807744 (and d!2132203 d!2132185)))

(assert (=> bs!1807744 (= lambda!382166 lambda!382159)))

(declare-fun bs!1807745 () Bool)

(assert (= bs!1807745 (and d!2132203 d!2132187)))

(assert (=> bs!1807745 (= lambda!382166 lambda!382162)))

(assert (=> d!2132203 (= (inv!84764 (h!72446 zl!343)) (forall!15799 (exprs!6491 (h!72446 zl!343)) lambda!382166))))

(declare-fun bs!1807746 () Bool)

(assert (= bs!1807746 d!2132203))

(declare-fun m!7534428 () Bool)

(assert (=> bs!1807746 m!7534428))

(assert (=> b!6785579 d!2132203))

(declare-fun bs!1807747 () Bool)

(declare-fun d!2132205 () Bool)

(assert (= bs!1807747 (and d!2132205 d!2132185)))

(declare-fun lambda!382167 () Int)

(assert (=> bs!1807747 (= lambda!382167 lambda!382159)))

(declare-fun bs!1807748 () Bool)

(assert (= bs!1807748 (and d!2132205 d!2132203)))

(assert (=> bs!1807748 (= lambda!382167 lambda!382166)))

(declare-fun bs!1807749 () Bool)

(assert (= bs!1807749 (and d!2132205 d!2132183)))

(assert (=> bs!1807749 (= lambda!382167 lambda!382156)))

(declare-fun bs!1807750 () Bool)

(assert (= bs!1807750 (and d!2132205 d!2132187)))

(assert (=> bs!1807750 (= lambda!382167 lambda!382162)))

(declare-fun bs!1807751 () Bool)

(assert (= bs!1807751 (and d!2132205 d!2132123)))

(assert (=> bs!1807751 (= lambda!382167 lambda!382132)))

(assert (=> d!2132205 (= (inv!84764 setElem!46429) (forall!15799 (exprs!6491 setElem!46429) lambda!382167))))

(declare-fun bs!1807752 () Bool)

(assert (= bs!1807752 d!2132205))

(declare-fun m!7534430 () Bool)

(assert (=> bs!1807752 m!7534430))

(assert (=> setNonEmpty!46429 d!2132205))

(declare-fun b!6786295 () Bool)

(declare-fun e!4096330 () (InoxSet Context!11982))

(declare-fun call!615924 () (InoxSet Context!11982))

(assert (=> b!6786295 (= e!4096330 call!615924)))

(declare-fun b!6786296 () Bool)

(declare-fun c!1261028 () Bool)

(assert (=> b!6786296 (= c!1261028 ((_ is Star!16607) (reg!16936 r!7292)))))

(declare-fun e!4096331 () (InoxSet Context!11982))

(assert (=> b!6786296 (= e!4096331 e!4096330)))

(declare-fun c!1261024 () Bool)

(declare-fun call!615922 () (InoxSet Context!11982))

(declare-fun c!1261027 () Bool)

(declare-fun bm!615914 () Bool)

(declare-fun c!1261026 () Bool)

(declare-fun call!615923 () List!66120)

(assert (=> bm!615914 (= call!615922 (derivationStepZipperDown!1835 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292))))) (ite (or c!1261024 c!1261027) lt!2445602 (Context!11983 call!615923)) (h!72445 s!2326)))))

(declare-fun b!6786297 () Bool)

(assert (=> b!6786297 (= e!4096330 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!615915 () Bool)

(declare-fun call!615920 () List!66120)

(assert (=> bm!615915 (= call!615923 call!615920)))

(declare-fun b!6786298 () Bool)

(declare-fun e!4096328 () (InoxSet Context!11982))

(assert (=> b!6786298 (= e!4096328 e!4096331)))

(assert (=> b!6786298 (= c!1261026 ((_ is Concat!25452) (reg!16936 r!7292)))))

(declare-fun bm!615916 () Bool)

(declare-fun call!615919 () (InoxSet Context!11982))

(assert (=> bm!615916 (= call!615924 call!615919)))

(declare-fun b!6786299 () Bool)

(declare-fun e!4096329 () Bool)

(assert (=> b!6786299 (= c!1261027 e!4096329)))

(declare-fun res!2773794 () Bool)

(assert (=> b!6786299 (=> (not res!2773794) (not e!4096329))))

(assert (=> b!6786299 (= res!2773794 ((_ is Concat!25452) (reg!16936 r!7292)))))

(declare-fun e!4096327 () (InoxSet Context!11982))

(assert (=> b!6786299 (= e!4096327 e!4096328)))

(declare-fun bm!615917 () Bool)

(assert (=> bm!615917 (= call!615919 call!615922)))

(declare-fun b!6786300 () Bool)

(assert (=> b!6786300 (= e!4096331 call!615924)))

(declare-fun b!6786301 () Bool)

(declare-fun e!4096332 () (InoxSet Context!11982))

(assert (=> b!6786301 (= e!4096332 (store ((as const (Array Context!11982 Bool)) false) lt!2445602 true))))

(declare-fun bm!615918 () Bool)

(declare-fun $colon$colon!2416 (List!66120 Regex!16607) List!66120)

(assert (=> bm!615918 (= call!615920 ($colon$colon!2416 (exprs!6491 lt!2445602) (ite (or c!1261027 c!1261026) (regTwo!33726 (reg!16936 r!7292)) (reg!16936 r!7292))))))

(declare-fun b!6786303 () Bool)

(declare-fun call!615921 () (InoxSet Context!11982))

(assert (=> b!6786303 (= e!4096328 ((_ map or) call!615921 call!615919))))

(declare-fun bm!615919 () Bool)

(assert (=> bm!615919 (= call!615921 (derivationStepZipperDown!1835 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292))) (ite c!1261024 lt!2445602 (Context!11983 call!615920)) (h!72445 s!2326)))))

(declare-fun b!6786304 () Bool)

(assert (=> b!6786304 (= e!4096329 (nullable!6586 (regOne!33726 (reg!16936 r!7292))))))

(declare-fun b!6786305 () Bool)

(assert (=> b!6786305 (= e!4096332 e!4096327)))

(assert (=> b!6786305 (= c!1261024 ((_ is Union!16607) (reg!16936 r!7292)))))

(declare-fun d!2132207 () Bool)

(declare-fun c!1261025 () Bool)

(assert (=> d!2132207 (= c!1261025 (and ((_ is ElementMatch!16607) (reg!16936 r!7292)) (= (c!1260825 (reg!16936 r!7292)) (h!72445 s!2326))))))

(assert (=> d!2132207 (= (derivationStepZipperDown!1835 (reg!16936 r!7292) lt!2445602 (h!72445 s!2326)) e!4096332)))

(declare-fun b!6786302 () Bool)

(assert (=> b!6786302 (= e!4096327 ((_ map or) call!615921 call!615922))))

(assert (= (and d!2132207 c!1261025) b!6786301))

(assert (= (and d!2132207 (not c!1261025)) b!6786305))

(assert (= (and b!6786305 c!1261024) b!6786302))

(assert (= (and b!6786305 (not c!1261024)) b!6786299))

(assert (= (and b!6786299 res!2773794) b!6786304))

(assert (= (and b!6786299 c!1261027) b!6786303))

(assert (= (and b!6786299 (not c!1261027)) b!6786298))

(assert (= (and b!6786298 c!1261026) b!6786300))

(assert (= (and b!6786298 (not c!1261026)) b!6786296))

(assert (= (and b!6786296 c!1261028) b!6786295))

(assert (= (and b!6786296 (not c!1261028)) b!6786297))

(assert (= (or b!6786300 b!6786295) bm!615915))

(assert (= (or b!6786300 b!6786295) bm!615916))

(assert (= (or b!6786303 bm!615915) bm!615918))

(assert (= (or b!6786303 bm!615916) bm!615917))

(assert (= (or b!6786302 bm!615917) bm!615914))

(assert (= (or b!6786302 b!6786303) bm!615919))

(declare-fun m!7534432 () Bool)

(assert (=> bm!615914 m!7534432))

(declare-fun m!7534434 () Bool)

(assert (=> bm!615919 m!7534434))

(declare-fun m!7534436 () Bool)

(assert (=> b!6786304 m!7534436))

(declare-fun m!7534438 () Bool)

(assert (=> bm!615918 m!7534438))

(assert (=> b!6786301 m!7533920))

(assert (=> b!6785569 d!2132207))

(declare-fun d!2132209 () Bool)

(assert (=> d!2132209 (= (flatMap!2088 lt!2445599 lambda!382085) (choose!50549 lt!2445599 lambda!382085))))

(declare-fun bs!1807753 () Bool)

(assert (= bs!1807753 d!2132209))

(declare-fun m!7534440 () Bool)

(assert (=> bs!1807753 m!7534440))

(assert (=> b!6785569 d!2132209))

(declare-fun d!2132211 () Bool)

(declare-fun c!1261030 () Bool)

(declare-fun e!4096335 () Bool)

(assert (=> d!2132211 (= c!1261030 e!4096335)))

(declare-fun res!2773795 () Bool)

(assert (=> d!2132211 (=> (not res!2773795) (not e!4096335))))

(assert (=> d!2132211 (= res!2773795 ((_ is Cons!65996) (exprs!6491 lt!2445591)))))

(declare-fun e!4096333 () (InoxSet Context!11982))

(assert (=> d!2132211 (= (derivationStepZipperUp!1761 lt!2445591 (h!72445 s!2326)) e!4096333)))

(declare-fun bm!615920 () Bool)

(declare-fun call!615925 () (InoxSet Context!11982))

(assert (=> bm!615920 (= call!615925 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 lt!2445591)) (Context!11983 (t!379839 (exprs!6491 lt!2445591))) (h!72445 s!2326)))))

(declare-fun b!6786306 () Bool)

(assert (=> b!6786306 (= e!4096335 (nullable!6586 (h!72444 (exprs!6491 lt!2445591))))))

(declare-fun b!6786307 () Bool)

(declare-fun e!4096334 () (InoxSet Context!11982))

(assert (=> b!6786307 (= e!4096334 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786308 () Bool)

(assert (=> b!6786308 (= e!4096333 e!4096334)))

(declare-fun c!1261029 () Bool)

(assert (=> b!6786308 (= c!1261029 ((_ is Cons!65996) (exprs!6491 lt!2445591)))))

(declare-fun b!6786309 () Bool)

(assert (=> b!6786309 (= e!4096333 ((_ map or) call!615925 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 lt!2445591))) (h!72445 s!2326))))))

(declare-fun b!6786310 () Bool)

(assert (=> b!6786310 (= e!4096334 call!615925)))

(assert (= (and d!2132211 res!2773795) b!6786306))

(assert (= (and d!2132211 c!1261030) b!6786309))

(assert (= (and d!2132211 (not c!1261030)) b!6786308))

(assert (= (and b!6786308 c!1261029) b!6786310))

(assert (= (and b!6786308 (not c!1261029)) b!6786307))

(assert (= (or b!6786309 b!6786310) bm!615920))

(declare-fun m!7534442 () Bool)

(assert (=> bm!615920 m!7534442))

(declare-fun m!7534444 () Bool)

(assert (=> b!6786306 m!7534444))

(declare-fun m!7534446 () Bool)

(assert (=> b!6786309 m!7534446))

(assert (=> b!6785569 d!2132211))

(declare-fun d!2132213 () Bool)

(assert (=> d!2132213 (= (flatMap!2088 lt!2445599 lambda!382085) (dynLambda!26338 lambda!382085 lt!2445591))))

(declare-fun lt!2445699 () Unit!159905)

(assert (=> d!2132213 (= lt!2445699 (choose!50548 lt!2445599 lt!2445591 lambda!382085))))

(assert (=> d!2132213 (= lt!2445599 (store ((as const (Array Context!11982 Bool)) false) lt!2445591 true))))

(assert (=> d!2132213 (= (lemmaFlatMapOnSingletonSet!1614 lt!2445599 lt!2445591 lambda!382085) lt!2445699)))

(declare-fun b_lambda!255559 () Bool)

(assert (=> (not b_lambda!255559) (not d!2132213)))

(declare-fun bs!1807754 () Bool)

(assert (= bs!1807754 d!2132213))

(assert (=> bs!1807754 m!7533876))

(declare-fun m!7534448 () Bool)

(assert (=> bs!1807754 m!7534448))

(declare-fun m!7534450 () Bool)

(assert (=> bs!1807754 m!7534450))

(assert (=> bs!1807754 m!7533874))

(assert (=> b!6785569 d!2132213))

(declare-fun d!2132215 () Bool)

(declare-fun lt!2445700 () Regex!16607)

(assert (=> d!2132215 (validRegex!8343 lt!2445700)))

(assert (=> d!2132215 (= lt!2445700 (generalisedUnion!2451 (unfocusZipperList!2028 zl!343)))))

(assert (=> d!2132215 (= (unfocusZipper!2349 zl!343) lt!2445700)))

(declare-fun bs!1807755 () Bool)

(assert (= bs!1807755 d!2132215))

(declare-fun m!7534452 () Bool)

(assert (=> bs!1807755 m!7534452))

(assert (=> bs!1807755 m!7533880))

(assert (=> bs!1807755 m!7533880))

(assert (=> bs!1807755 m!7533882))

(assert (=> b!6785581 d!2132215))

(declare-fun b!6786311 () Bool)

(declare-fun e!4096339 () (InoxSet Context!11982))

(declare-fun call!615931 () (InoxSet Context!11982))

(assert (=> b!6786311 (= e!4096339 call!615931)))

(declare-fun b!6786312 () Bool)

(declare-fun c!1261035 () Bool)

(assert (=> b!6786312 (= c!1261035 ((_ is Star!16607) r!7292))))

(declare-fun e!4096340 () (InoxSet Context!11982))

(assert (=> b!6786312 (= e!4096340 e!4096339)))

(declare-fun call!615929 () (InoxSet Context!11982))

(declare-fun c!1261031 () Bool)

(declare-fun call!615930 () List!66120)

(declare-fun c!1261034 () Bool)

(declare-fun bm!615921 () Bool)

(declare-fun c!1261033 () Bool)

(assert (=> bm!615921 (= call!615929 (derivationStepZipperDown!1835 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292)))) (ite (or c!1261031 c!1261034) (Context!11983 Nil!65996) (Context!11983 call!615930)) (h!72445 s!2326)))))

(declare-fun b!6786313 () Bool)

(assert (=> b!6786313 (= e!4096339 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!615922 () Bool)

(declare-fun call!615927 () List!66120)

(assert (=> bm!615922 (= call!615930 call!615927)))

(declare-fun b!6786314 () Bool)

(declare-fun e!4096337 () (InoxSet Context!11982))

(assert (=> b!6786314 (= e!4096337 e!4096340)))

(assert (=> b!6786314 (= c!1261033 ((_ is Concat!25452) r!7292))))

(declare-fun bm!615923 () Bool)

(declare-fun call!615926 () (InoxSet Context!11982))

(assert (=> bm!615923 (= call!615931 call!615926)))

(declare-fun b!6786315 () Bool)

(declare-fun e!4096338 () Bool)

(assert (=> b!6786315 (= c!1261034 e!4096338)))

(declare-fun res!2773796 () Bool)

(assert (=> b!6786315 (=> (not res!2773796) (not e!4096338))))

(assert (=> b!6786315 (= res!2773796 ((_ is Concat!25452) r!7292))))

(declare-fun e!4096336 () (InoxSet Context!11982))

(assert (=> b!6786315 (= e!4096336 e!4096337)))

(declare-fun bm!615924 () Bool)

(assert (=> bm!615924 (= call!615926 call!615929)))

(declare-fun b!6786316 () Bool)

(assert (=> b!6786316 (= e!4096340 call!615931)))

(declare-fun b!6786317 () Bool)

(declare-fun e!4096341 () (InoxSet Context!11982))

(assert (=> b!6786317 (= e!4096341 (store ((as const (Array Context!11982 Bool)) false) (Context!11983 Nil!65996) true))))

(declare-fun bm!615925 () Bool)

(assert (=> bm!615925 (= call!615927 ($colon$colon!2416 (exprs!6491 (Context!11983 Nil!65996)) (ite (or c!1261034 c!1261033) (regTwo!33726 r!7292) r!7292)))))

(declare-fun b!6786319 () Bool)

(declare-fun call!615928 () (InoxSet Context!11982))

(assert (=> b!6786319 (= e!4096337 ((_ map or) call!615928 call!615926))))

(declare-fun bm!615926 () Bool)

(assert (=> bm!615926 (= call!615928 (derivationStepZipperDown!1835 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292)) (ite c!1261031 (Context!11983 Nil!65996) (Context!11983 call!615927)) (h!72445 s!2326)))))

(declare-fun b!6786320 () Bool)

(assert (=> b!6786320 (= e!4096338 (nullable!6586 (regOne!33726 r!7292)))))

(declare-fun b!6786321 () Bool)

(assert (=> b!6786321 (= e!4096341 e!4096336)))

(assert (=> b!6786321 (= c!1261031 ((_ is Union!16607) r!7292))))

(declare-fun d!2132217 () Bool)

(declare-fun c!1261032 () Bool)

(assert (=> d!2132217 (= c!1261032 (and ((_ is ElementMatch!16607) r!7292) (= (c!1260825 r!7292) (h!72445 s!2326))))))

(assert (=> d!2132217 (= (derivationStepZipperDown!1835 r!7292 (Context!11983 Nil!65996) (h!72445 s!2326)) e!4096341)))

(declare-fun b!6786318 () Bool)

(assert (=> b!6786318 (= e!4096336 ((_ map or) call!615928 call!615929))))

(assert (= (and d!2132217 c!1261032) b!6786317))

(assert (= (and d!2132217 (not c!1261032)) b!6786321))

(assert (= (and b!6786321 c!1261031) b!6786318))

(assert (= (and b!6786321 (not c!1261031)) b!6786315))

(assert (= (and b!6786315 res!2773796) b!6786320))

(assert (= (and b!6786315 c!1261034) b!6786319))

(assert (= (and b!6786315 (not c!1261034)) b!6786314))

(assert (= (and b!6786314 c!1261033) b!6786316))

(assert (= (and b!6786314 (not c!1261033)) b!6786312))

(assert (= (and b!6786312 c!1261035) b!6786311))

(assert (= (and b!6786312 (not c!1261035)) b!6786313))

(assert (= (or b!6786316 b!6786311) bm!615922))

(assert (= (or b!6786316 b!6786311) bm!615923))

(assert (= (or b!6786319 bm!615922) bm!615925))

(assert (= (or b!6786319 bm!615923) bm!615924))

(assert (= (or b!6786318 bm!615924) bm!615921))

(assert (= (or b!6786318 b!6786319) bm!615926))

(declare-fun m!7534454 () Bool)

(assert (=> bm!615921 m!7534454))

(declare-fun m!7534456 () Bool)

(assert (=> bm!615926 m!7534456))

(declare-fun m!7534458 () Bool)

(assert (=> b!6786320 m!7534458))

(declare-fun m!7534460 () Bool)

(assert (=> bm!615925 m!7534460))

(declare-fun m!7534462 () Bool)

(assert (=> b!6786317 m!7534462))

(assert (=> b!6785562 d!2132217))

(declare-fun d!2132219 () Bool)

(declare-fun c!1261037 () Bool)

(declare-fun e!4096344 () Bool)

(assert (=> d!2132219 (= c!1261037 e!4096344)))

(declare-fun res!2773797 () Bool)

(assert (=> d!2132219 (=> (not res!2773797) (not e!4096344))))

(assert (=> d!2132219 (= res!2773797 ((_ is Cons!65996) (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))

(declare-fun e!4096342 () (InoxSet Context!11982))

(assert (=> d!2132219 (= (derivationStepZipperUp!1761 (Context!11983 (Cons!65996 r!7292 Nil!65996)) (h!72445 s!2326)) e!4096342)))

(declare-fun bm!615927 () Bool)

(declare-fun call!615932 () (InoxSet Context!11982))

(assert (=> bm!615927 (= call!615932 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (h!72445 s!2326)))))

(declare-fun b!6786322 () Bool)

(assert (=> b!6786322 (= e!4096344 (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))

(declare-fun b!6786323 () Bool)

(declare-fun e!4096343 () (InoxSet Context!11982))

(assert (=> b!6786323 (= e!4096343 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786324 () Bool)

(assert (=> b!6786324 (= e!4096342 e!4096343)))

(declare-fun c!1261036 () Bool)

(assert (=> b!6786324 (= c!1261036 ((_ is Cons!65996) (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))

(declare-fun b!6786325 () Bool)

(assert (=> b!6786325 (= e!4096342 ((_ map or) call!615932 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (h!72445 s!2326))))))

(declare-fun b!6786326 () Bool)

(assert (=> b!6786326 (= e!4096343 call!615932)))

(assert (= (and d!2132219 res!2773797) b!6786322))

(assert (= (and d!2132219 c!1261037) b!6786325))

(assert (= (and d!2132219 (not c!1261037)) b!6786324))

(assert (= (and b!6786324 c!1261036) b!6786326))

(assert (= (and b!6786324 (not c!1261036)) b!6786323))

(assert (= (or b!6786325 b!6786326) bm!615927))

(declare-fun m!7534464 () Bool)

(assert (=> bm!615927 m!7534464))

(declare-fun m!7534466 () Bool)

(assert (=> b!6786322 m!7534466))

(declare-fun m!7534468 () Bool)

(assert (=> b!6786325 m!7534468))

(assert (=> b!6785562 d!2132219))

(declare-fun bs!1807756 () Bool)

(declare-fun d!2132221 () Bool)

(assert (= bs!1807756 (and d!2132221 b!6785571)))

(declare-fun lambda!382168 () Int)

(assert (=> bs!1807756 (= lambda!382168 lambda!382085)))

(declare-fun bs!1807757 () Bool)

(assert (= bs!1807757 (and d!2132221 d!2132195)))

(assert (=> bs!1807757 (= lambda!382168 lambda!382165)))

(assert (=> d!2132221 true))

(assert (=> d!2132221 (= (derivationStepZipper!2551 z!1189 (h!72445 s!2326)) (flatMap!2088 z!1189 lambda!382168))))

(declare-fun bs!1807758 () Bool)

(assert (= bs!1807758 d!2132221))

(declare-fun m!7534470 () Bool)

(assert (=> bs!1807758 m!7534470))

(assert (=> b!6785562 d!2132221))

(declare-fun d!2132223 () Bool)

(declare-fun lt!2445701 () Regex!16607)

(assert (=> d!2132223 (validRegex!8343 lt!2445701)))

(assert (=> d!2132223 (= lt!2445701 (generalisedUnion!2451 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))))))

(assert (=> d!2132223 (= (unfocusZipper!2349 (Cons!65998 lt!2445591 Nil!65998)) lt!2445701)))

(declare-fun bs!1807759 () Bool)

(assert (= bs!1807759 d!2132223))

(declare-fun m!7534472 () Bool)

(assert (=> bs!1807759 m!7534472))

(declare-fun m!7534474 () Bool)

(assert (=> bs!1807759 m!7534474))

(assert (=> bs!1807759 m!7534474))

(declare-fun m!7534476 () Bool)

(assert (=> bs!1807759 m!7534476))

(assert (=> b!6785560 d!2132223))

(declare-fun d!2132225 () Bool)

(assert (=> d!2132225 (= (flatMap!2088 z!1189 lambda!382085) (choose!50549 z!1189 lambda!382085))))

(declare-fun bs!1807760 () Bool)

(assert (= bs!1807760 d!2132225))

(declare-fun m!7534478 () Bool)

(assert (=> bs!1807760 m!7534478))

(assert (=> b!6785571 d!2132225))

(declare-fun d!2132227 () Bool)

(declare-fun c!1261039 () Bool)

(declare-fun e!4096347 () Bool)

(assert (=> d!2132227 (= c!1261039 e!4096347)))

(declare-fun res!2773798 () Bool)

(assert (=> d!2132227 (=> (not res!2773798) (not e!4096347))))

(assert (=> d!2132227 (= res!2773798 ((_ is Cons!65996) (exprs!6491 (h!72446 zl!343))))))

(declare-fun e!4096345 () (InoxSet Context!11982))

(assert (=> d!2132227 (= (derivationStepZipperUp!1761 (h!72446 zl!343) (h!72445 s!2326)) e!4096345)))

(declare-fun bm!615928 () Bool)

(declare-fun call!615933 () (InoxSet Context!11982))

(assert (=> bm!615928 (= call!615933 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (h!72446 zl!343))) (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) (h!72445 s!2326)))))

(declare-fun b!6786327 () Bool)

(assert (=> b!6786327 (= e!4096347 (nullable!6586 (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6786328 () Bool)

(declare-fun e!4096346 () (InoxSet Context!11982))

(assert (=> b!6786328 (= e!4096346 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786329 () Bool)

(assert (=> b!6786329 (= e!4096345 e!4096346)))

(declare-fun c!1261038 () Bool)

(assert (=> b!6786329 (= c!1261038 ((_ is Cons!65996) (exprs!6491 (h!72446 zl!343))))))

(declare-fun b!6786330 () Bool)

(assert (=> b!6786330 (= e!4096345 ((_ map or) call!615933 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) (h!72445 s!2326))))))

(declare-fun b!6786331 () Bool)

(assert (=> b!6786331 (= e!4096346 call!615933)))

(assert (= (and d!2132227 res!2773798) b!6786327))

(assert (= (and d!2132227 c!1261039) b!6786330))

(assert (= (and d!2132227 (not c!1261039)) b!6786329))

(assert (= (and b!6786329 c!1261038) b!6786331))

(assert (= (and b!6786329 (not c!1261038)) b!6786328))

(assert (= (or b!6786330 b!6786331) bm!615928))

(declare-fun m!7534480 () Bool)

(assert (=> bm!615928 m!7534480))

(declare-fun m!7534482 () Bool)

(assert (=> b!6786327 m!7534482))

(declare-fun m!7534484 () Bool)

(assert (=> b!6786330 m!7534484))

(assert (=> b!6785571 d!2132227))

(declare-fun d!2132229 () Bool)

(assert (=> d!2132229 (= (flatMap!2088 z!1189 lambda!382085) (dynLambda!26338 lambda!382085 (h!72446 zl!343)))))

(declare-fun lt!2445702 () Unit!159905)

(assert (=> d!2132229 (= lt!2445702 (choose!50548 z!1189 (h!72446 zl!343) lambda!382085))))

(assert (=> d!2132229 (= z!1189 (store ((as const (Array Context!11982 Bool)) false) (h!72446 zl!343) true))))

(assert (=> d!2132229 (= (lemmaFlatMapOnSingletonSet!1614 z!1189 (h!72446 zl!343) lambda!382085) lt!2445702)))

(declare-fun b_lambda!255561 () Bool)

(assert (=> (not b_lambda!255561) (not d!2132229)))

(declare-fun bs!1807761 () Bool)

(assert (= bs!1807761 d!2132229))

(assert (=> bs!1807761 m!7533958))

(declare-fun m!7534486 () Bool)

(assert (=> bs!1807761 m!7534486))

(declare-fun m!7534488 () Bool)

(assert (=> bs!1807761 m!7534488))

(declare-fun m!7534490 () Bool)

(assert (=> bs!1807761 m!7534490))

(assert (=> b!6785571 d!2132229))

(declare-fun d!2132231 () Bool)

(declare-fun c!1261040 () Bool)

(assert (=> d!2132231 (= c!1261040 (isEmpty!38362 s!2326))))

(declare-fun e!4096348 () Bool)

(assert (=> d!2132231 (= (matchZipper!2593 lt!2445599 s!2326) e!4096348)))

(declare-fun b!6786332 () Bool)

(assert (=> b!6786332 (= e!4096348 (nullableZipper!2314 lt!2445599))))

(declare-fun b!6786333 () Bool)

(assert (=> b!6786333 (= e!4096348 (matchZipper!2593 (derivationStepZipper!2551 lt!2445599 (head!13624 s!2326)) (tail!12709 s!2326)))))

(assert (= (and d!2132231 c!1261040) b!6786332))

(assert (= (and d!2132231 (not c!1261040)) b!6786333))

(assert (=> d!2132231 m!7533888))

(declare-fun m!7534492 () Bool)

(assert (=> b!6786332 m!7534492))

(assert (=> b!6786333 m!7534068))

(assert (=> b!6786333 m!7534068))

(declare-fun m!7534494 () Bool)

(assert (=> b!6786333 m!7534494))

(assert (=> b!6786333 m!7534072))

(assert (=> b!6786333 m!7534494))

(assert (=> b!6786333 m!7534072))

(declare-fun m!7534496 () Bool)

(assert (=> b!6786333 m!7534496))

(assert (=> b!6785561 d!2132231))

(declare-fun d!2132233 () Bool)

(declare-fun c!1261041 () Bool)

(assert (=> d!2132233 (= c!1261041 (isEmpty!38362 (t!379840 s!2326)))))

(declare-fun e!4096349 () Bool)

(assert (=> d!2132233 (= (matchZipper!2593 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (t!379840 s!2326)) e!4096349)))

(declare-fun b!6786334 () Bool)

(assert (=> b!6786334 (= e!4096349 (nullableZipper!2314 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326))))))

(declare-fun b!6786335 () Bool)

(assert (=> b!6786335 (= e!4096349 (matchZipper!2593 (derivationStepZipper!2551 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (head!13624 (t!379840 s!2326))) (tail!12709 (t!379840 s!2326))))))

(assert (= (and d!2132233 c!1261041) b!6786334))

(assert (= (and d!2132233 (not c!1261041)) b!6786335))

(declare-fun m!7534498 () Bool)

(assert (=> d!2132233 m!7534498))

(assert (=> b!6786334 m!7533954))

(declare-fun m!7534500 () Bool)

(assert (=> b!6786334 m!7534500))

(declare-fun m!7534502 () Bool)

(assert (=> b!6786335 m!7534502))

(assert (=> b!6786335 m!7533954))

(assert (=> b!6786335 m!7534502))

(declare-fun m!7534504 () Bool)

(assert (=> b!6786335 m!7534504))

(declare-fun m!7534506 () Bool)

(assert (=> b!6786335 m!7534506))

(assert (=> b!6786335 m!7534504))

(assert (=> b!6786335 m!7534506))

(declare-fun m!7534508 () Bool)

(assert (=> b!6786335 m!7534508))

(assert (=> b!6785561 d!2132233))

(declare-fun bs!1807762 () Bool)

(declare-fun d!2132235 () Bool)

(assert (= bs!1807762 (and d!2132235 b!6785571)))

(declare-fun lambda!382169 () Int)

(assert (=> bs!1807762 (= lambda!382169 lambda!382085)))

(declare-fun bs!1807763 () Bool)

(assert (= bs!1807763 (and d!2132235 d!2132195)))

(assert (=> bs!1807763 (= lambda!382169 lambda!382165)))

(declare-fun bs!1807764 () Bool)

(assert (= bs!1807764 (and d!2132235 d!2132221)))

(assert (=> bs!1807764 (= lambda!382169 lambda!382168)))

(assert (=> d!2132235 true))

(assert (=> d!2132235 (= (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (flatMap!2088 lt!2445599 lambda!382169))))

(declare-fun bs!1807765 () Bool)

(assert (= bs!1807765 d!2132235))

(declare-fun m!7534510 () Bool)

(assert (=> bs!1807765 m!7534510))

(assert (=> b!6785561 d!2132235))

(declare-fun b!6786349 () Bool)

(declare-fun e!4096352 () Bool)

(declare-fun tp!1858904 () Bool)

(declare-fun tp!1858902 () Bool)

(assert (=> b!6786349 (= e!4096352 (and tp!1858904 tp!1858902))))

(declare-fun b!6786346 () Bool)

(assert (=> b!6786346 (= e!4096352 tp_is_empty!42467)))

(declare-fun b!6786347 () Bool)

(declare-fun tp!1858905 () Bool)

(declare-fun tp!1858906 () Bool)

(assert (=> b!6786347 (= e!4096352 (and tp!1858905 tp!1858906))))

(assert (=> b!6785564 (= tp!1858831 e!4096352)))

(declare-fun b!6786348 () Bool)

(declare-fun tp!1858903 () Bool)

(assert (=> b!6786348 (= e!4096352 tp!1858903)))

(assert (= (and b!6785564 ((_ is ElementMatch!16607) (regOne!33727 r!7292))) b!6786346))

(assert (= (and b!6785564 ((_ is Concat!25452) (regOne!33727 r!7292))) b!6786347))

(assert (= (and b!6785564 ((_ is Star!16607) (regOne!33727 r!7292))) b!6786348))

(assert (= (and b!6785564 ((_ is Union!16607) (regOne!33727 r!7292))) b!6786349))

(declare-fun b!6786353 () Bool)

(declare-fun e!4096353 () Bool)

(declare-fun tp!1858909 () Bool)

(declare-fun tp!1858907 () Bool)

(assert (=> b!6786353 (= e!4096353 (and tp!1858909 tp!1858907))))

(declare-fun b!6786350 () Bool)

(assert (=> b!6786350 (= e!4096353 tp_is_empty!42467)))

(declare-fun b!6786351 () Bool)

(declare-fun tp!1858910 () Bool)

(declare-fun tp!1858911 () Bool)

(assert (=> b!6786351 (= e!4096353 (and tp!1858910 tp!1858911))))

(assert (=> b!6785564 (= tp!1858833 e!4096353)))

(declare-fun b!6786352 () Bool)

(declare-fun tp!1858908 () Bool)

(assert (=> b!6786352 (= e!4096353 tp!1858908)))

(assert (= (and b!6785564 ((_ is ElementMatch!16607) (regTwo!33727 r!7292))) b!6786350))

(assert (= (and b!6785564 ((_ is Concat!25452) (regTwo!33727 r!7292))) b!6786351))

(assert (= (and b!6785564 ((_ is Star!16607) (regTwo!33727 r!7292))) b!6786352))

(assert (= (and b!6785564 ((_ is Union!16607) (regTwo!33727 r!7292))) b!6786353))

(declare-fun b!6786361 () Bool)

(declare-fun e!4096359 () Bool)

(declare-fun tp!1858916 () Bool)

(assert (=> b!6786361 (= e!4096359 tp!1858916)))

(declare-fun e!4096358 () Bool)

(declare-fun b!6786360 () Bool)

(declare-fun tp!1858917 () Bool)

(assert (=> b!6786360 (= e!4096358 (and (inv!84764 (h!72446 (t!379841 zl!343))) e!4096359 tp!1858917))))

(assert (=> b!6785579 (= tp!1858828 e!4096358)))

(assert (= b!6786360 b!6786361))

(assert (= (and b!6785579 ((_ is Cons!65998) (t!379841 zl!343))) b!6786360))

(declare-fun m!7534512 () Bool)

(assert (=> b!6786360 m!7534512))

(declare-fun condSetEmpty!46435 () Bool)

(assert (=> setNonEmpty!46429 (= condSetEmpty!46435 (= setRest!46429 ((as const (Array Context!11982 Bool)) false)))))

(declare-fun setRes!46435 () Bool)

(assert (=> setNonEmpty!46429 (= tp!1858825 setRes!46435)))

(declare-fun setIsEmpty!46435 () Bool)

(assert (=> setIsEmpty!46435 setRes!46435))

(declare-fun e!4096362 () Bool)

(declare-fun tp!1858923 () Bool)

(declare-fun setNonEmpty!46435 () Bool)

(declare-fun setElem!46435 () Context!11982)

(assert (=> setNonEmpty!46435 (= setRes!46435 (and tp!1858923 (inv!84764 setElem!46435) e!4096362))))

(declare-fun setRest!46435 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46435 (= setRest!46429 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46435 true) setRest!46435))))

(declare-fun b!6786366 () Bool)

(declare-fun tp!1858922 () Bool)

(assert (=> b!6786366 (= e!4096362 tp!1858922)))

(assert (= (and setNonEmpty!46429 condSetEmpty!46435) setIsEmpty!46435))

(assert (= (and setNonEmpty!46429 (not condSetEmpty!46435)) setNonEmpty!46435))

(assert (= setNonEmpty!46435 b!6786366))

(declare-fun m!7534514 () Bool)

(assert (=> setNonEmpty!46435 m!7534514))

(declare-fun b!6786370 () Bool)

(declare-fun e!4096363 () Bool)

(declare-fun tp!1858926 () Bool)

(declare-fun tp!1858924 () Bool)

(assert (=> b!6786370 (= e!4096363 (and tp!1858926 tp!1858924))))

(declare-fun b!6786367 () Bool)

(assert (=> b!6786367 (= e!4096363 tp_is_empty!42467)))

(declare-fun b!6786368 () Bool)

(declare-fun tp!1858927 () Bool)

(declare-fun tp!1858928 () Bool)

(assert (=> b!6786368 (= e!4096363 (and tp!1858927 tp!1858928))))

(assert (=> b!6785557 (= tp!1858824 e!4096363)))

(declare-fun b!6786369 () Bool)

(declare-fun tp!1858925 () Bool)

(assert (=> b!6786369 (= e!4096363 tp!1858925)))

(assert (= (and b!6785557 ((_ is ElementMatch!16607) (regOne!33726 r!7292))) b!6786367))

(assert (= (and b!6785557 ((_ is Concat!25452) (regOne!33726 r!7292))) b!6786368))

(assert (= (and b!6785557 ((_ is Star!16607) (regOne!33726 r!7292))) b!6786369))

(assert (= (and b!6785557 ((_ is Union!16607) (regOne!33726 r!7292))) b!6786370))

(declare-fun b!6786374 () Bool)

(declare-fun e!4096364 () Bool)

(declare-fun tp!1858931 () Bool)

(declare-fun tp!1858929 () Bool)

(assert (=> b!6786374 (= e!4096364 (and tp!1858931 tp!1858929))))

(declare-fun b!6786371 () Bool)

(assert (=> b!6786371 (= e!4096364 tp_is_empty!42467)))

(declare-fun b!6786372 () Bool)

(declare-fun tp!1858932 () Bool)

(declare-fun tp!1858933 () Bool)

(assert (=> b!6786372 (= e!4096364 (and tp!1858932 tp!1858933))))

(assert (=> b!6785557 (= tp!1858827 e!4096364)))

(declare-fun b!6786373 () Bool)

(declare-fun tp!1858930 () Bool)

(assert (=> b!6786373 (= e!4096364 tp!1858930)))

(assert (= (and b!6785557 ((_ is ElementMatch!16607) (regTwo!33726 r!7292))) b!6786371))

(assert (= (and b!6785557 ((_ is Concat!25452) (regTwo!33726 r!7292))) b!6786372))

(assert (= (and b!6785557 ((_ is Star!16607) (regTwo!33726 r!7292))) b!6786373))

(assert (= (and b!6785557 ((_ is Union!16607) (regTwo!33726 r!7292))) b!6786374))

(declare-fun b!6786378 () Bool)

(declare-fun e!4096365 () Bool)

(declare-fun tp!1858936 () Bool)

(declare-fun tp!1858934 () Bool)

(assert (=> b!6786378 (= e!4096365 (and tp!1858936 tp!1858934))))

(declare-fun b!6786375 () Bool)

(assert (=> b!6786375 (= e!4096365 tp_is_empty!42467)))

(declare-fun b!6786376 () Bool)

(declare-fun tp!1858937 () Bool)

(declare-fun tp!1858938 () Bool)

(assert (=> b!6786376 (= e!4096365 (and tp!1858937 tp!1858938))))

(assert (=> b!6785572 (= tp!1858830 e!4096365)))

(declare-fun b!6786377 () Bool)

(declare-fun tp!1858935 () Bool)

(assert (=> b!6786377 (= e!4096365 tp!1858935)))

(assert (= (and b!6785572 ((_ is ElementMatch!16607) (reg!16936 r!7292))) b!6786375))

(assert (= (and b!6785572 ((_ is Concat!25452) (reg!16936 r!7292))) b!6786376))

(assert (= (and b!6785572 ((_ is Star!16607) (reg!16936 r!7292))) b!6786377))

(assert (= (and b!6785572 ((_ is Union!16607) (reg!16936 r!7292))) b!6786378))

(declare-fun b!6786383 () Bool)

(declare-fun e!4096368 () Bool)

(declare-fun tp!1858941 () Bool)

(assert (=> b!6786383 (= e!4096368 (and tp_is_empty!42467 tp!1858941))))

(assert (=> b!6785575 (= tp!1858832 e!4096368)))

(assert (= (and b!6785575 ((_ is Cons!65997) (t!379840 s!2326))) b!6786383))

(declare-fun b!6786388 () Bool)

(declare-fun e!4096371 () Bool)

(declare-fun tp!1858946 () Bool)

(declare-fun tp!1858947 () Bool)

(assert (=> b!6786388 (= e!4096371 (and tp!1858946 tp!1858947))))

(assert (=> b!6785566 (= tp!1858829 e!4096371)))

(assert (= (and b!6785566 ((_ is Cons!65996) (exprs!6491 (h!72446 zl!343)))) b!6786388))

(declare-fun b!6786389 () Bool)

(declare-fun e!4096372 () Bool)

(declare-fun tp!1858948 () Bool)

(declare-fun tp!1858949 () Bool)

(assert (=> b!6786389 (= e!4096372 (and tp!1858948 tp!1858949))))

(assert (=> b!6785580 (= tp!1858826 e!4096372)))

(assert (= (and b!6785580 ((_ is Cons!65996) (exprs!6491 setElem!46429))) b!6786389))

(declare-fun b_lambda!255563 () Bool)

(assert (= b_lambda!255557 (or b!6785571 b_lambda!255563)))

(declare-fun bs!1807766 () Bool)

(declare-fun d!2132237 () Bool)

(assert (= bs!1807766 (and d!2132237 b!6785571)))

(assert (=> bs!1807766 (= (dynLambda!26338 lambda!382085 lt!2445602) (derivationStepZipperUp!1761 lt!2445602 (h!72445 s!2326)))))

(assert (=> bs!1807766 m!7533908))

(assert (=> d!2132199 d!2132237))

(declare-fun b_lambda!255565 () Bool)

(assert (= b_lambda!255559 (or b!6785571 b_lambda!255565)))

(declare-fun bs!1807767 () Bool)

(declare-fun d!2132239 () Bool)

(assert (= bs!1807767 (and d!2132239 b!6785571)))

(assert (=> bs!1807767 (= (dynLambda!26338 lambda!382085 lt!2445591) (derivationStepZipperUp!1761 lt!2445591 (h!72445 s!2326)))))

(assert (=> bs!1807767 m!7533868))

(assert (=> d!2132213 d!2132239))

(declare-fun b_lambda!255567 () Bool)

(assert (= b_lambda!255561 (or b!6785571 b_lambda!255567)))

(declare-fun bs!1807768 () Bool)

(declare-fun d!2132241 () Bool)

(assert (= bs!1807768 (and d!2132241 b!6785571)))

(assert (=> bs!1807768 (= (dynLambda!26338 lambda!382085 (h!72446 zl!343)) (derivationStepZipperUp!1761 (h!72446 zl!343) (h!72445 s!2326)))))

(assert (=> bs!1807768 m!7533960))

(assert (=> d!2132229 d!2132241))

(declare-fun b_lambda!255569 () Bool)

(assert (= b_lambda!255555 (or b!6785571 b_lambda!255569)))

(declare-fun bs!1807769 () Bool)

(declare-fun d!2132243 () Bool)

(assert (= bs!1807769 (and d!2132243 b!6785571)))

(assert (=> bs!1807769 (= (dynLambda!26338 lambda!382085 lt!2445587) (derivationStepZipperUp!1761 lt!2445587 (h!72445 s!2326)))))

(assert (=> bs!1807769 m!7533916))

(assert (=> d!2132191 d!2132243))

(check-sat (not setNonEmpty!46435) (not d!2132179) (not d!2132213) (not d!2132231) (not d!2132203) (not b!6785877) (not d!2132183) (not b!6786208) (not bm!615925) (not b!6786264) (not b!6786236) (not bs!1807768) (not b!6786304) (not b!6786240) (not b!6786353) (not d!2132225) (not d!2132159) (not bm!615847) (not b_lambda!255567) (not d!2132075) (not d!2132199) (not bm!615870) (not b!6785878) (not b!6786327) (not b!6785937) (not b!6786368) (not d!2132095) (not d!2132181) (not bm!615919) (not b!6786370) (not b!6786366) (not b!6786372) (not d!2132177) (not b!6786068) (not b!6786388) (not b!6786237) (not d!2132209) (not b!6785835) (not b!6786241) (not b!6786361) (not b!6786349) (not b!6786205) (not d!2132153) (not d!2132197) (not b!6786332) (not bm!615846) (not b!6786095) (not d!2132233) (not bm!615833) (not b!6786325) (not bm!615848) (not d!2132173) (not d!2132235) (not d!2132161) (not b!6786322) (not b!6786207) (not d!2132115) (not b!6785882) (not b!6785872) (not bm!615914) (not b!6786376) (not b!6786238) (not b!6786067) (not b!6786383) (not b!6786335) (not b!6786203) (not b!6786369) (not bm!615868) (not b!6786348) (not b!6785821) (not d!2132187) (not b!6786204) (not d!2132093) (not bm!615858) (not d!2132113) (not d!2132223) (not d!2132123) (not b!6785880) (not bs!1807766) (not b!6786271) (not d!2132157) (not b!6786333) (not d!2132221) (not b!6785825) (not b!6785822) (not bm!615900) (not b!6786063) (not b!6786378) (not b!6785981) (not b!6786249) (not b!6785824) (not b!6786306) (not d!2132191) (not b!6785837) (not b!6785826) (not b!6786347) (not bm!615918) (not d!2132229) (not b!6786066) (not b!6786330) (not b!6785816) (not b_lambda!255569) (not bm!615921) (not b!6786309) (not bm!615928) (not d!2132185) (not b!6786268) (not b!6786373) (not b!6786206) (not b_lambda!255565) (not b!6785982) (not bm!615834) (not d!2132039) (not d!2132195) (not bm!615920) (not b!6786351) (not b!6786065) (not b!6786352) (not b!6785660) (not bm!615926) (not b!6786320) (not bm!615901) (not b!6786374) (not d!2132155) (not b_lambda!255563) (not d!2132205) (not bm!615927) (not b!6785658) (not b!6786235) (not b!6786261) (not bs!1807767) (not b!6786360) (not d!2132215) (not b!6785881) (not b!6786389) (not b!6786377) (not b!6786064) (not d!2132087) (not b!6786069) tp_is_empty!42467 (not bs!1807769) (not b!6786242) (not b!6786334) (not d!2132193))
(check-sat)
(get-model)

(declare-fun d!2132351 () Bool)

(assert (=> d!2132351 (= (head!13626 (exprs!6491 (h!72446 zl!343))) (h!72444 (exprs!6491 (h!72446 zl!343))))))

(assert (=> b!6786069 d!2132351))

(assert (=> bs!1807768 d!2132227))

(declare-fun d!2132357 () Bool)

(assert (=> d!2132357 (= (isEmpty!38362 (tail!12709 s!2326)) ((_ is Nil!65997) (tail!12709 s!2326)))))

(assert (=> b!6785825 d!2132357))

(declare-fun d!2132359 () Bool)

(assert (=> d!2132359 (= (tail!12709 s!2326) (t!379840 s!2326))))

(assert (=> b!6785825 d!2132359))

(declare-fun d!2132361 () Bool)

(declare-fun c!1261117 () Bool)

(declare-fun e!4096518 () Bool)

(assert (=> d!2132361 (= c!1261117 e!4096518)))

(declare-fun res!2773896 () Bool)

(assert (=> d!2132361 (=> (not res!2773896) (not e!4096518))))

(assert (=> d!2132361 (= res!2773896 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))))

(declare-fun e!4096516 () (InoxSet Context!11982))

(assert (=> d!2132361 (= (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (h!72445 s!2326)) e!4096516)))

(declare-fun bm!615977 () Bool)

(declare-fun call!615982 () (InoxSet Context!11982))

(assert (=> bm!615977 (= call!615982 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))) (h!72445 s!2326)))))

(declare-fun b!6786627 () Bool)

(assert (=> b!6786627 (= e!4096518 (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))))))

(declare-fun b!6786628 () Bool)

(declare-fun e!4096517 () (InoxSet Context!11982))

(assert (=> b!6786628 (= e!4096517 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786629 () Bool)

(assert (=> b!6786629 (= e!4096516 e!4096517)))

(declare-fun c!1261116 () Bool)

(assert (=> b!6786629 (= c!1261116 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))))

(declare-fun b!6786630 () Bool)

(assert (=> b!6786630 (= e!4096516 ((_ map or) call!615982 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))) (h!72445 s!2326))))))

(declare-fun b!6786631 () Bool)

(assert (=> b!6786631 (= e!4096517 call!615982)))

(assert (= (and d!2132361 res!2773896) b!6786627))

(assert (= (and d!2132361 c!1261117) b!6786630))

(assert (= (and d!2132361 (not c!1261117)) b!6786629))

(assert (= (and b!6786629 c!1261116) b!6786631))

(assert (= (and b!6786629 (not c!1261116)) b!6786628))

(assert (= (or b!6786630 b!6786631) bm!615977))

(declare-fun m!7534772 () Bool)

(assert (=> bm!615977 m!7534772))

(declare-fun m!7534774 () Bool)

(assert (=> b!6786627 m!7534774))

(declare-fun m!7534776 () Bool)

(assert (=> b!6786630 m!7534776))

(assert (=> b!6786325 d!2132361))

(declare-fun d!2132363 () Bool)

(declare-fun res!2773900 () Bool)

(declare-fun e!4096519 () Bool)

(assert (=> d!2132363 (=> res!2773900 e!4096519)))

(assert (=> d!2132363 (= res!2773900 ((_ is ElementMatch!16607) (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(assert (=> d!2132363 (= (validRegex!8343 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))) e!4096519)))

(declare-fun b!6786632 () Bool)

(declare-fun res!2773901 () Bool)

(declare-fun e!4096523 () Bool)

(assert (=> b!6786632 (=> res!2773901 e!4096523)))

(assert (=> b!6786632 (= res!2773901 (not ((_ is Concat!25452) (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292)))))))

(declare-fun e!4096524 () Bool)

(assert (=> b!6786632 (= e!4096524 e!4096523)))

(declare-fun b!6786633 () Bool)

(declare-fun e!4096521 () Bool)

(declare-fun call!615984 () Bool)

(assert (=> b!6786633 (= e!4096521 call!615984)))

(declare-fun b!6786634 () Bool)

(declare-fun e!4096522 () Bool)

(declare-fun e!4096520 () Bool)

(assert (=> b!6786634 (= e!4096522 e!4096520)))

(declare-fun res!2773897 () Bool)

(assert (=> b!6786634 (= res!2773897 (not (nullable!6586 (reg!16936 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))))))))

(assert (=> b!6786634 (=> (not res!2773897) (not e!4096520))))

(declare-fun c!1261118 () Bool)

(declare-fun call!615983 () Bool)

(declare-fun bm!615978 () Bool)

(assert (=> bm!615978 (= call!615983 (validRegex!8343 (ite c!1261118 (regOne!33727 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))) (regOne!33726 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))))))))

(declare-fun bm!615979 () Bool)

(declare-fun call!615985 () Bool)

(assert (=> bm!615979 (= call!615984 call!615985)))

(declare-fun b!6786635 () Bool)

(assert (=> b!6786635 (= e!4096522 e!4096524)))

(assert (=> b!6786635 (= c!1261118 ((_ is Union!16607) (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun b!6786636 () Bool)

(assert (=> b!6786636 (= e!4096519 e!4096522)))

(declare-fun c!1261119 () Bool)

(assert (=> b!6786636 (= c!1261119 ((_ is Star!16607) (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun b!6786637 () Bool)

(declare-fun e!4096525 () Bool)

(assert (=> b!6786637 (= e!4096525 call!615984)))

(declare-fun b!6786638 () Bool)

(assert (=> b!6786638 (= e!4096523 e!4096525)))

(declare-fun res!2773898 () Bool)

(assert (=> b!6786638 (=> (not res!2773898) (not e!4096525))))

(assert (=> b!6786638 (= res!2773898 call!615983)))

(declare-fun b!6786639 () Bool)

(assert (=> b!6786639 (= e!4096520 call!615985)))

(declare-fun bm!615980 () Bool)

(assert (=> bm!615980 (= call!615985 (validRegex!8343 (ite c!1261119 (reg!16936 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))) (ite c!1261118 (regTwo!33727 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292))) (regTwo!33726 (ite c!1260911 (regOne!33727 r!7292) (regOne!33726 r!7292)))))))))

(declare-fun b!6786640 () Bool)

(declare-fun res!2773899 () Bool)

(assert (=> b!6786640 (=> (not res!2773899) (not e!4096521))))

(assert (=> b!6786640 (= res!2773899 call!615983)))

(assert (=> b!6786640 (= e!4096524 e!4096521)))

(assert (= (and d!2132363 (not res!2773900)) b!6786636))

(assert (= (and b!6786636 c!1261119) b!6786634))

(assert (= (and b!6786636 (not c!1261119)) b!6786635))

(assert (= (and b!6786634 res!2773897) b!6786639))

(assert (= (and b!6786635 c!1261118) b!6786640))

(assert (= (and b!6786635 (not c!1261118)) b!6786632))

(assert (= (and b!6786640 res!2773899) b!6786633))

(assert (= (and b!6786632 (not res!2773901)) b!6786638))

(assert (= (and b!6786638 res!2773898) b!6786637))

(assert (= (or b!6786633 b!6786637) bm!615979))

(assert (= (or b!6786640 b!6786638) bm!615978))

(assert (= (or b!6786639 bm!615979) bm!615980))

(declare-fun m!7534778 () Bool)

(assert (=> b!6786634 m!7534778))

(declare-fun m!7534780 () Bool)

(assert (=> bm!615978 m!7534780))

(declare-fun m!7534782 () Bool)

(assert (=> bm!615980 m!7534782))

(assert (=> bm!615868 d!2132363))

(declare-fun bs!1807861 () Bool)

(declare-fun d!2132365 () Bool)

(assert (= bs!1807861 (and d!2132365 d!2132185)))

(declare-fun lambda!382188 () Int)

(assert (=> bs!1807861 (= lambda!382188 lambda!382159)))

(declare-fun bs!1807862 () Bool)

(assert (= bs!1807862 (and d!2132365 d!2132203)))

(assert (=> bs!1807862 (= lambda!382188 lambda!382166)))

(declare-fun bs!1807863 () Bool)

(assert (= bs!1807863 (and d!2132365 d!2132183)))

(assert (=> bs!1807863 (= lambda!382188 lambda!382156)))

(declare-fun bs!1807864 () Bool)

(assert (= bs!1807864 (and d!2132365 d!2132205)))

(assert (=> bs!1807864 (= lambda!382188 lambda!382167)))

(declare-fun bs!1807865 () Bool)

(assert (= bs!1807865 (and d!2132365 d!2132187)))

(assert (=> bs!1807865 (= lambda!382188 lambda!382162)))

(declare-fun bs!1807866 () Bool)

(assert (= bs!1807866 (and d!2132365 d!2132123)))

(assert (=> bs!1807866 (= lambda!382188 lambda!382132)))

(assert (=> d!2132365 (= (inv!84764 (h!72446 (t!379841 zl!343))) (forall!15799 (exprs!6491 (h!72446 (t!379841 zl!343))) lambda!382188))))

(declare-fun bs!1807867 () Bool)

(assert (= bs!1807867 d!2132365))

(declare-fun m!7534784 () Bool)

(assert (=> bs!1807867 m!7534784))

(assert (=> b!6786360 d!2132365))

(declare-fun d!2132367 () Bool)

(assert (=> d!2132367 (= (isUnion!1402 lt!2445691) ((_ is Union!16607) lt!2445691))))

(assert (=> b!6786236 d!2132367))

(assert (=> d!2132113 d!2132175))

(declare-fun b!6786645 () Bool)

(declare-fun e!4096531 () (InoxSet Context!11982))

(declare-fun call!615991 () (InoxSet Context!11982))

(assert (=> b!6786645 (= e!4096531 call!615991)))

(declare-fun c!1261124 () Bool)

(declare-fun b!6786646 () Bool)

(assert (=> b!6786646 (= c!1261124 ((_ is Star!16607) (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))))))

(declare-fun e!4096532 () (InoxSet Context!11982))

(assert (=> b!6786646 (= e!4096532 e!4096531)))

(declare-fun call!615989 () (InoxSet Context!11982))

(declare-fun c!1261120 () Bool)

(declare-fun c!1261122 () Bool)

(declare-fun call!615990 () List!66120)

(declare-fun bm!615981 () Bool)

(declare-fun c!1261123 () Bool)

(assert (=> bm!615981 (= call!615989 (derivationStepZipperDown!1835 (ite c!1261120 (regTwo!33727 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (ite c!1261123 (regTwo!33726 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (ite c!1261122 (regOne!33726 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (reg!16936 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292)))))))) (ite (or c!1261120 c!1261123) (ite (or c!1261031 c!1261034) (Context!11983 Nil!65996) (Context!11983 call!615930)) (Context!11983 call!615990)) (h!72445 s!2326)))))

(declare-fun b!6786647 () Bool)

(assert (=> b!6786647 (= e!4096531 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!615982 () Bool)

(declare-fun call!615987 () List!66120)

(assert (=> bm!615982 (= call!615990 call!615987)))

(declare-fun b!6786648 () Bool)

(declare-fun e!4096529 () (InoxSet Context!11982))

(assert (=> b!6786648 (= e!4096529 e!4096532)))

(assert (=> b!6786648 (= c!1261122 ((_ is Concat!25452) (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))))))

(declare-fun bm!615983 () Bool)

(declare-fun call!615986 () (InoxSet Context!11982))

(assert (=> bm!615983 (= call!615991 call!615986)))

(declare-fun b!6786649 () Bool)

(declare-fun e!4096530 () Bool)

(assert (=> b!6786649 (= c!1261123 e!4096530)))

(declare-fun res!2773906 () Bool)

(assert (=> b!6786649 (=> (not res!2773906) (not e!4096530))))

(assert (=> b!6786649 (= res!2773906 ((_ is Concat!25452) (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))))))

(declare-fun e!4096528 () (InoxSet Context!11982))

(assert (=> b!6786649 (= e!4096528 e!4096529)))

(declare-fun bm!615984 () Bool)

(assert (=> bm!615984 (= call!615986 call!615989)))

(declare-fun b!6786650 () Bool)

(assert (=> b!6786650 (= e!4096532 call!615991)))

(declare-fun e!4096533 () (InoxSet Context!11982))

(declare-fun b!6786651 () Bool)

(assert (=> b!6786651 (= e!4096533 (store ((as const (Array Context!11982 Bool)) false) (ite (or c!1261031 c!1261034) (Context!11983 Nil!65996) (Context!11983 call!615930)) true))))

(declare-fun bm!615985 () Bool)

(assert (=> bm!615985 (= call!615987 ($colon$colon!2416 (exprs!6491 (ite (or c!1261031 c!1261034) (Context!11983 Nil!65996) (Context!11983 call!615930))) (ite (or c!1261123 c!1261122) (regTwo!33726 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292)))))))))

(declare-fun b!6786653 () Bool)

(declare-fun call!615988 () (InoxSet Context!11982))

(assert (=> b!6786653 (= e!4096529 ((_ map or) call!615988 call!615986))))

(declare-fun bm!615986 () Bool)

(assert (=> bm!615986 (= call!615988 (derivationStepZipperDown!1835 (ite c!1261120 (regOne!33727 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (regOne!33726 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292)))))) (ite c!1261120 (ite (or c!1261031 c!1261034) (Context!11983 Nil!65996) (Context!11983 call!615930)) (Context!11983 call!615987)) (h!72445 s!2326)))))

(declare-fun b!6786654 () Bool)

(assert (=> b!6786654 (= e!4096530 (nullable!6586 (regOne!33726 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292)))))))))

(declare-fun b!6786655 () Bool)

(assert (=> b!6786655 (= e!4096533 e!4096528)))

(assert (=> b!6786655 (= c!1261120 ((_ is Union!16607) (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))))))

(declare-fun d!2132369 () Bool)

(declare-fun c!1261121 () Bool)

(assert (=> d!2132369 (= c!1261121 (and ((_ is ElementMatch!16607) (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (= (c!1260825 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292))))) (h!72445 s!2326))))))

(assert (=> d!2132369 (= (derivationStepZipperDown!1835 (ite c!1261031 (regTwo!33727 r!7292) (ite c!1261034 (regTwo!33726 r!7292) (ite c!1261033 (regOne!33726 r!7292) (reg!16936 r!7292)))) (ite (or c!1261031 c!1261034) (Context!11983 Nil!65996) (Context!11983 call!615930)) (h!72445 s!2326)) e!4096533)))

(declare-fun b!6786652 () Bool)

(assert (=> b!6786652 (= e!4096528 ((_ map or) call!615988 call!615989))))

(assert (= (and d!2132369 c!1261121) b!6786651))

(assert (= (and d!2132369 (not c!1261121)) b!6786655))

(assert (= (and b!6786655 c!1261120) b!6786652))

(assert (= (and b!6786655 (not c!1261120)) b!6786649))

(assert (= (and b!6786649 res!2773906) b!6786654))

(assert (= (and b!6786649 c!1261123) b!6786653))

(assert (= (and b!6786649 (not c!1261123)) b!6786648))

(assert (= (and b!6786648 c!1261122) b!6786650))

(assert (= (and b!6786648 (not c!1261122)) b!6786646))

(assert (= (and b!6786646 c!1261124) b!6786645))

(assert (= (and b!6786646 (not c!1261124)) b!6786647))

(assert (= (or b!6786650 b!6786645) bm!615982))

(assert (= (or b!6786650 b!6786645) bm!615983))

(assert (= (or b!6786653 bm!615982) bm!615985))

(assert (= (or b!6786653 bm!615983) bm!615984))

(assert (= (or b!6786652 bm!615984) bm!615981))

(assert (= (or b!6786652 b!6786653) bm!615986))

(declare-fun m!7534786 () Bool)

(assert (=> bm!615981 m!7534786))

(declare-fun m!7534788 () Bool)

(assert (=> bm!615986 m!7534788))

(declare-fun m!7534790 () Bool)

(assert (=> b!6786654 m!7534790))

(declare-fun m!7534792 () Bool)

(assert (=> bm!615985 m!7534792))

(declare-fun m!7534794 () Bool)

(assert (=> b!6786651 m!7534794))

(assert (=> bm!615921 d!2132369))

(declare-fun d!2132371 () Bool)

(assert (=> d!2132371 (= (head!13626 (unfocusZipperList!2028 zl!343)) (h!72444 (unfocusZipperList!2028 zl!343)))))

(assert (=> b!6786240 d!2132371))

(assert (=> b!6785872 d!2132357))

(assert (=> b!6785872 d!2132359))

(declare-fun d!2132373 () Bool)

(declare-fun res!2773911 () Bool)

(declare-fun e!4096538 () Bool)

(assert (=> d!2132373 (=> res!2773911 e!4096538)))

(assert (=> d!2132373 (= res!2773911 ((_ is Nil!65996) (exprs!6491 (h!72446 zl!343))))))

(assert (=> d!2132373 (= (forall!15799 (exprs!6491 (h!72446 zl!343)) lambda!382166) e!4096538)))

(declare-fun b!6786660 () Bool)

(declare-fun e!4096539 () Bool)

(assert (=> b!6786660 (= e!4096538 e!4096539)))

(declare-fun res!2773912 () Bool)

(assert (=> b!6786660 (=> (not res!2773912) (not e!4096539))))

(declare-fun dynLambda!26340 (Int Regex!16607) Bool)

(assert (=> b!6786660 (= res!2773912 (dynLambda!26340 lambda!382166 (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6786661 () Bool)

(assert (=> b!6786661 (= e!4096539 (forall!15799 (t!379839 (exprs!6491 (h!72446 zl!343))) lambda!382166))))

(assert (= (and d!2132373 (not res!2773911)) b!6786660))

(assert (= (and b!6786660 res!2773912) b!6786661))

(declare-fun b_lambda!255577 () Bool)

(assert (=> (not b_lambda!255577) (not b!6786660)))

(declare-fun m!7534798 () Bool)

(assert (=> b!6786660 m!7534798))

(declare-fun m!7534800 () Bool)

(assert (=> b!6786661 m!7534800))

(assert (=> d!2132203 d!2132373))

(declare-fun d!2132379 () Bool)

(assert (=> d!2132379 (= (flatMap!2088 z!1189 lambda!382168) (choose!50549 z!1189 lambda!382168))))

(declare-fun bs!1807882 () Bool)

(assert (= bs!1807882 d!2132379))

(declare-fun m!7534802 () Bool)

(assert (=> bs!1807882 m!7534802))

(assert (=> d!2132221 d!2132379))

(declare-fun d!2132381 () Bool)

(assert (=> d!2132381 (= (Exists!3675 lambda!382149) (choose!50544 lambda!382149))))

(declare-fun bs!1807883 () Bool)

(assert (= bs!1807883 d!2132381))

(declare-fun m!7534804 () Bool)

(assert (=> bs!1807883 m!7534804))

(assert (=> d!2132173 d!2132381))

(declare-fun d!2132383 () Bool)

(assert (=> d!2132383 (= (Exists!3675 lambda!382150) (choose!50544 lambda!382150))))

(declare-fun bs!1807884 () Bool)

(assert (= bs!1807884 d!2132383))

(declare-fun m!7534806 () Bool)

(assert (=> bs!1807884 m!7534806))

(assert (=> d!2132173 d!2132383))

(declare-fun bs!1807894 () Bool)

(declare-fun d!2132385 () Bool)

(assert (= bs!1807894 (and d!2132385 b!6785576)))

(declare-fun lambda!382197 () Int)

(assert (=> bs!1807894 (not (= lambda!382197 lambda!382084))))

(declare-fun bs!1807895 () Bool)

(assert (= bs!1807895 (and d!2132385 d!2132181)))

(assert (=> bs!1807895 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382197 lambda!382153))))

(declare-fun bs!1807896 () Bool)

(assert (= bs!1807896 (and d!2132385 d!2132173)))

(assert (=> bs!1807896 (not (= lambda!382197 lambda!382150))))

(declare-fun bs!1807897 () Bool)

(assert (= bs!1807897 (and d!2132385 d!2132161)))

(assert (=> bs!1807897 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382197 lambda!382143))))

(assert (=> bs!1807894 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382197 lambda!382082))))

(declare-fun bs!1807898 () Bool)

(assert (= bs!1807898 (and d!2132385 b!6785838)))

(assert (=> bs!1807898 (not (= lambda!382197 lambda!382121))))

(declare-fun bs!1807899 () Bool)

(assert (= bs!1807899 (and d!2132385 b!6785833)))

(assert (=> bs!1807899 (not (= lambda!382197 lambda!382120))))

(declare-fun bs!1807900 () Bool)

(assert (= bs!1807900 (and d!2132385 b!6785661)))

(assert (=> bs!1807900 (not (= lambda!382197 lambda!382096))))

(assert (=> bs!1807896 (= lambda!382197 lambda!382149)))

(declare-fun bs!1807901 () Bool)

(assert (= bs!1807901 (and d!2132385 b!6785656)))

(assert (=> bs!1807901 (not (= lambda!382197 lambda!382094))))

(assert (=> bs!1807894 (not (= lambda!382197 lambda!382083))))

(assert (=> bs!1807897 (not (= lambda!382197 lambda!382144))))

(assert (=> d!2132385 true))

(assert (=> d!2132385 true))

(declare-fun lambda!382198 () Int)

(assert (=> bs!1807894 (not (= lambda!382198 lambda!382084))))

(assert (=> bs!1807895 (not (= lambda!382198 lambda!382153))))

(assert (=> bs!1807896 (= lambda!382198 lambda!382150)))

(assert (=> bs!1807897 (not (= lambda!382198 lambda!382143))))

(declare-fun bs!1807902 () Bool)

(assert (= bs!1807902 d!2132385))

(assert (=> bs!1807902 (not (= lambda!382198 lambda!382197))))

(assert (=> bs!1807894 (not (= lambda!382198 lambda!382082))))

(assert (=> bs!1807898 (not (= lambda!382198 lambda!382121))))

(assert (=> bs!1807899 (= (and (= (reg!16936 r!7292) (reg!16936 lt!2445581)) (= (Star!16607 (reg!16936 r!7292)) lt!2445581)) (= lambda!382198 lambda!382120))))

(assert (=> bs!1807900 (not (= lambda!382198 lambda!382096))))

(assert (=> bs!1807896 (not (= lambda!382198 lambda!382149))))

(assert (=> bs!1807901 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382198 lambda!382094))))

(assert (=> bs!1807894 (= (= (Star!16607 (reg!16936 r!7292)) r!7292) (= lambda!382198 lambda!382083))))

(assert (=> bs!1807897 (not (= lambda!382198 lambda!382144))))

(assert (=> d!2132385 true))

(assert (=> d!2132385 true))

(assert (=> d!2132385 (= (Exists!3675 lambda!382197) (Exists!3675 lambda!382198))))

(assert (=> d!2132385 true))

(declare-fun _$91!785 () Unit!159905)

(assert (=> d!2132385 (= (choose!50546 (reg!16936 r!7292) s!2326) _$91!785)))

(declare-fun m!7534884 () Bool)

(assert (=> bs!1807902 m!7534884))

(declare-fun m!7534886 () Bool)

(assert (=> bs!1807902 m!7534886))

(assert (=> d!2132173 d!2132385))

(declare-fun d!2132423 () Bool)

(declare-fun res!2773952 () Bool)

(declare-fun e!4096597 () Bool)

(assert (=> d!2132423 (=> res!2773952 e!4096597)))

(assert (=> d!2132423 (= res!2773952 ((_ is ElementMatch!16607) (reg!16936 r!7292)))))

(assert (=> d!2132423 (= (validRegex!8343 (reg!16936 r!7292)) e!4096597)))

(declare-fun b!6786758 () Bool)

(declare-fun res!2773953 () Bool)

(declare-fun e!4096601 () Bool)

(assert (=> b!6786758 (=> res!2773953 e!4096601)))

(assert (=> b!6786758 (= res!2773953 (not ((_ is Concat!25452) (reg!16936 r!7292))))))

(declare-fun e!4096602 () Bool)

(assert (=> b!6786758 (= e!4096602 e!4096601)))

(declare-fun b!6786759 () Bool)

(declare-fun e!4096599 () Bool)

(declare-fun call!616024 () Bool)

(assert (=> b!6786759 (= e!4096599 call!616024)))

(declare-fun b!6786760 () Bool)

(declare-fun e!4096600 () Bool)

(declare-fun e!4096598 () Bool)

(assert (=> b!6786760 (= e!4096600 e!4096598)))

(declare-fun res!2773949 () Bool)

(assert (=> b!6786760 (= res!2773949 (not (nullable!6586 (reg!16936 (reg!16936 r!7292)))))))

(assert (=> b!6786760 (=> (not res!2773949) (not e!4096598))))

(declare-fun bm!616018 () Bool)

(declare-fun call!616023 () Bool)

(declare-fun c!1261154 () Bool)

(assert (=> bm!616018 (= call!616023 (validRegex!8343 (ite c!1261154 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))))))

(declare-fun bm!616019 () Bool)

(declare-fun call!616025 () Bool)

(assert (=> bm!616019 (= call!616024 call!616025)))

(declare-fun b!6786761 () Bool)

(assert (=> b!6786761 (= e!4096600 e!4096602)))

(assert (=> b!6786761 (= c!1261154 ((_ is Union!16607) (reg!16936 r!7292)))))

(declare-fun b!6786762 () Bool)

(assert (=> b!6786762 (= e!4096597 e!4096600)))

(declare-fun c!1261155 () Bool)

(assert (=> b!6786762 (= c!1261155 ((_ is Star!16607) (reg!16936 r!7292)))))

(declare-fun b!6786763 () Bool)

(declare-fun e!4096603 () Bool)

(assert (=> b!6786763 (= e!4096603 call!616024)))

(declare-fun b!6786764 () Bool)

(assert (=> b!6786764 (= e!4096601 e!4096603)))

(declare-fun res!2773950 () Bool)

(assert (=> b!6786764 (=> (not res!2773950) (not e!4096603))))

(assert (=> b!6786764 (= res!2773950 call!616023)))

(declare-fun b!6786765 () Bool)

(assert (=> b!6786765 (= e!4096598 call!616025)))

(declare-fun bm!616020 () Bool)

(assert (=> bm!616020 (= call!616025 (validRegex!8343 (ite c!1261155 (reg!16936 (reg!16936 r!7292)) (ite c!1261154 (regTwo!33727 (reg!16936 r!7292)) (regTwo!33726 (reg!16936 r!7292))))))))

(declare-fun b!6786766 () Bool)

(declare-fun res!2773951 () Bool)

(assert (=> b!6786766 (=> (not res!2773951) (not e!4096599))))

(assert (=> b!6786766 (= res!2773951 call!616023)))

(assert (=> b!6786766 (= e!4096602 e!4096599)))

(assert (= (and d!2132423 (not res!2773952)) b!6786762))

(assert (= (and b!6786762 c!1261155) b!6786760))

(assert (= (and b!6786762 (not c!1261155)) b!6786761))

(assert (= (and b!6786760 res!2773949) b!6786765))

(assert (= (and b!6786761 c!1261154) b!6786766))

(assert (= (and b!6786761 (not c!1261154)) b!6786758))

(assert (= (and b!6786766 res!2773951) b!6786759))

(assert (= (and b!6786758 (not res!2773953)) b!6786764))

(assert (= (and b!6786764 res!2773950) b!6786763))

(assert (= (or b!6786759 b!6786763) bm!616019))

(assert (= (or b!6786766 b!6786764) bm!616018))

(assert (= (or b!6786765 bm!616019) bm!616020))

(declare-fun m!7534892 () Bool)

(assert (=> b!6786760 m!7534892))

(declare-fun m!7534894 () Bool)

(assert (=> bm!616018 m!7534894))

(declare-fun m!7534898 () Bool)

(assert (=> bm!616020 m!7534898))

(assert (=> d!2132173 d!2132423))

(declare-fun d!2132425 () Bool)

(assert (=> d!2132425 true))

(declare-fun setRes!46443 () Bool)

(assert (=> d!2132425 setRes!46443))

(declare-fun condSetEmpty!46443 () Bool)

(declare-fun res!2773958 () (InoxSet Context!11982))

(assert (=> d!2132425 (= condSetEmpty!46443 (= res!2773958 ((as const (Array Context!11982 Bool)) false)))))

(assert (=> d!2132425 (= (choose!50549 lt!2445592 lambda!382085) res!2773958)))

(declare-fun setIsEmpty!46443 () Bool)

(assert (=> setIsEmpty!46443 setRes!46443))

(declare-fun e!4096613 () Bool)

(declare-fun setElem!46443 () Context!11982)

(declare-fun tp!1858971 () Bool)

(declare-fun setNonEmpty!46443 () Bool)

(assert (=> setNonEmpty!46443 (= setRes!46443 (and tp!1858971 (inv!84764 setElem!46443) e!4096613))))

(declare-fun setRest!46443 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46443 (= res!2773958 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46443 true) setRest!46443))))

(declare-fun b!6786781 () Bool)

(declare-fun tp!1858970 () Bool)

(assert (=> b!6786781 (= e!4096613 tp!1858970)))

(assert (= (and d!2132425 condSetEmpty!46443) setIsEmpty!46443))

(assert (= (and d!2132425 (not condSetEmpty!46443)) setNonEmpty!46443))

(assert (= setNonEmpty!46443 b!6786781))

(declare-fun m!7534914 () Bool)

(assert (=> setNonEmpty!46443 m!7534914))

(assert (=> d!2132197 d!2132425))

(declare-fun b!6786791 () Bool)

(declare-fun e!4096621 () Bool)

(declare-fun e!4096623 () Bool)

(assert (=> b!6786791 (= e!4096621 e!4096623)))

(declare-fun c!1261163 () Bool)

(assert (=> b!6786791 (= c!1261163 ((_ is EmptyLang!16607) r!7292))))

(declare-fun b!6786792 () Bool)

(declare-fun e!4096622 () Bool)

(declare-fun e!4096625 () Bool)

(assert (=> b!6786792 (= e!4096622 e!4096625)))

(declare-fun res!2773968 () Bool)

(assert (=> b!6786792 (=> (not res!2773968) (not e!4096625))))

(declare-fun lt!2445723 () Bool)

(assert (=> b!6786792 (= res!2773968 (not lt!2445723))))

(declare-fun b!6786793 () Bool)

(declare-fun res!2773970 () Bool)

(assert (=> b!6786793 (=> res!2773970 e!4096622)))

(declare-fun e!4096627 () Bool)

(assert (=> b!6786793 (= res!2773970 e!4096627)))

(declare-fun res!2773971 () Bool)

(assert (=> b!6786793 (=> (not res!2773971) (not e!4096627))))

(assert (=> b!6786793 (= res!2773971 lt!2445723)))

(declare-fun b!6786794 () Bool)

(declare-fun res!2773966 () Bool)

(assert (=> b!6786794 (=> (not res!2773966) (not e!4096627))))

(assert (=> b!6786794 (= res!2773966 (isEmpty!38362 (tail!12709 (_2!36885 (get!22980 lt!2445683)))))))

(declare-fun b!6786795 () Bool)

(declare-fun res!2773967 () Bool)

(assert (=> b!6786795 (=> res!2773967 e!4096622)))

(assert (=> b!6786795 (= res!2773967 (not ((_ is ElementMatch!16607) r!7292)))))

(assert (=> b!6786795 (= e!4096623 e!4096622)))

(declare-fun d!2132437 () Bool)

(assert (=> d!2132437 e!4096621))

(declare-fun c!1261164 () Bool)

(assert (=> d!2132437 (= c!1261164 ((_ is EmptyExpr!16607) r!7292))))

(declare-fun e!4096624 () Bool)

(assert (=> d!2132437 (= lt!2445723 e!4096624)))

(declare-fun c!1261165 () Bool)

(assert (=> d!2132437 (= c!1261165 (isEmpty!38362 (_2!36885 (get!22980 lt!2445683))))))

(assert (=> d!2132437 (validRegex!8343 r!7292)))

(assert (=> d!2132437 (= (matchR!8790 r!7292 (_2!36885 (get!22980 lt!2445683))) lt!2445723)))

(declare-fun b!6786796 () Bool)

(declare-fun call!616033 () Bool)

(assert (=> b!6786796 (= e!4096621 (= lt!2445723 call!616033))))

(declare-fun b!6786797 () Bool)

(assert (=> b!6786797 (= e!4096623 (not lt!2445723))))

(declare-fun bm!616028 () Bool)

(assert (=> bm!616028 (= call!616033 (isEmpty!38362 (_2!36885 (get!22980 lt!2445683))))))

(declare-fun b!6786798 () Bool)

(declare-fun e!4096626 () Bool)

(assert (=> b!6786798 (= e!4096625 e!4096626)))

(declare-fun res!2773964 () Bool)

(assert (=> b!6786798 (=> res!2773964 e!4096626)))

(assert (=> b!6786798 (= res!2773964 call!616033)))

(declare-fun b!6786799 () Bool)

(assert (=> b!6786799 (= e!4096626 (not (= (head!13624 (_2!36885 (get!22980 lt!2445683))) (c!1260825 r!7292))))))

(declare-fun b!6786800 () Bool)

(assert (=> b!6786800 (= e!4096627 (= (head!13624 (_2!36885 (get!22980 lt!2445683))) (c!1260825 r!7292)))))

(declare-fun b!6786801 () Bool)

(declare-fun res!2773969 () Bool)

(assert (=> b!6786801 (=> (not res!2773969) (not e!4096627))))

(assert (=> b!6786801 (= res!2773969 (not call!616033))))

(declare-fun b!6786802 () Bool)

(assert (=> b!6786802 (= e!4096624 (matchR!8790 (derivativeStep!5271 r!7292 (head!13624 (_2!36885 (get!22980 lt!2445683)))) (tail!12709 (_2!36885 (get!22980 lt!2445683)))))))

(declare-fun b!6786803 () Bool)

(declare-fun res!2773965 () Bool)

(assert (=> b!6786803 (=> res!2773965 e!4096626)))

(assert (=> b!6786803 (= res!2773965 (not (isEmpty!38362 (tail!12709 (_2!36885 (get!22980 lt!2445683))))))))

(declare-fun b!6786804 () Bool)

(assert (=> b!6786804 (= e!4096624 (nullable!6586 r!7292))))

(assert (= (and d!2132437 c!1261165) b!6786804))

(assert (= (and d!2132437 (not c!1261165)) b!6786802))

(assert (= (and d!2132437 c!1261164) b!6786796))

(assert (= (and d!2132437 (not c!1261164)) b!6786791))

(assert (= (and b!6786791 c!1261163) b!6786797))

(assert (= (and b!6786791 (not c!1261163)) b!6786795))

(assert (= (and b!6786795 (not res!2773967)) b!6786793))

(assert (= (and b!6786793 res!2773971) b!6786801))

(assert (= (and b!6786801 res!2773969) b!6786794))

(assert (= (and b!6786794 res!2773966) b!6786800))

(assert (= (and b!6786793 (not res!2773970)) b!6786792))

(assert (= (and b!6786792 res!2773968) b!6786798))

(assert (= (and b!6786798 (not res!2773964)) b!6786803))

(assert (= (and b!6786803 (not res!2773965)) b!6786799))

(assert (= (or b!6786796 b!6786801 b!6786798) bm!616028))

(declare-fun m!7534924 () Bool)

(assert (=> b!6786799 m!7534924))

(declare-fun m!7534926 () Bool)

(assert (=> d!2132437 m!7534926))

(assert (=> d!2132437 m!7533950))

(assert (=> b!6786802 m!7534924))

(assert (=> b!6786802 m!7534924))

(declare-fun m!7534928 () Bool)

(assert (=> b!6786802 m!7534928))

(declare-fun m!7534930 () Bool)

(assert (=> b!6786802 m!7534930))

(assert (=> b!6786802 m!7534928))

(assert (=> b!6786802 m!7534930))

(declare-fun m!7534932 () Bool)

(assert (=> b!6786802 m!7534932))

(assert (=> b!6786804 m!7534076))

(assert (=> b!6786800 m!7534924))

(assert (=> bm!616028 m!7534926))

(assert (=> b!6786803 m!7534930))

(assert (=> b!6786803 m!7534930))

(declare-fun m!7534934 () Bool)

(assert (=> b!6786803 m!7534934))

(assert (=> b!6786794 m!7534930))

(assert (=> b!6786794 m!7534930))

(assert (=> b!6786794 m!7534934))

(assert (=> b!6786206 d!2132437))

(declare-fun d!2132443 () Bool)

(assert (=> d!2132443 (= (get!22980 lt!2445683) (v!52699 lt!2445683))))

(assert (=> b!6786206 d!2132443))

(declare-fun d!2132447 () Bool)

(assert (=> d!2132447 (= (isEmpty!38364 (t!379839 (exprs!6491 (h!72446 zl!343)))) ((_ is Nil!65996) (t!379839 (exprs!6491 (h!72446 zl!343)))))))

(assert (=> b!6786065 d!2132447))

(declare-fun d!2132449 () Bool)

(declare-fun lambda!382201 () Int)

(declare-fun exists!2729 ((InoxSet Context!11982) Int) Bool)

(assert (=> d!2132449 (= (nullableZipper!2314 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326))) (exists!2729 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) lambda!382201))))

(declare-fun bs!1807906 () Bool)

(assert (= bs!1807906 d!2132449))

(assert (=> bs!1807906 m!7533954))

(declare-fun m!7534974 () Bool)

(assert (=> bs!1807906 m!7534974))

(assert (=> b!6786334 d!2132449))

(declare-fun d!2132457 () Bool)

(assert (=> d!2132457 (= (head!13624 s!2326) (h!72445 s!2326))))

(assert (=> b!6785821 d!2132457))

(declare-fun d!2132459 () Bool)

(declare-fun nullableFct!2492 (Regex!16607) Bool)

(assert (=> d!2132459 (= (nullable!6586 (h!72444 (exprs!6491 lt!2445587))) (nullableFct!2492 (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun bs!1807907 () Bool)

(assert (= bs!1807907 d!2132459))

(declare-fun m!7534986 () Bool)

(assert (=> bs!1807907 m!7534986))

(assert (=> b!6786268 d!2132459))

(declare-fun b!6786854 () Bool)

(declare-fun e!4096659 () (InoxSet Context!11982))

(declare-fun call!616055 () (InoxSet Context!11982))

(assert (=> b!6786854 (= e!4096659 call!616055)))

(declare-fun b!6786855 () Bool)

(declare-fun c!1261188 () Bool)

(assert (=> b!6786855 (= c!1261188 ((_ is Star!16607) (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))

(declare-fun e!4096660 () (InoxSet Context!11982))

(assert (=> b!6786855 (= e!4096660 e!4096659)))

(declare-fun bm!616045 () Bool)

(declare-fun c!1261186 () Bool)

(declare-fun c!1261184 () Bool)

(declare-fun call!616054 () List!66120)

(declare-fun c!1261187 () Bool)

(declare-fun call!616053 () (InoxSet Context!11982))

(assert (=> bm!616045 (= call!616053 (derivationStepZipperDown!1835 (ite c!1261184 (regTwo!33727 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (ite c!1261187 (regTwo!33726 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (ite c!1261186 (regOne!33726 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (reg!16936 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))) (ite (or c!1261184 c!1261187) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (Context!11983 call!616054)) (h!72445 s!2326)))))

(declare-fun b!6786856 () Bool)

(assert (=> b!6786856 (= e!4096659 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616046 () Bool)

(declare-fun call!616051 () List!66120)

(assert (=> bm!616046 (= call!616054 call!616051)))

(declare-fun b!6786857 () Bool)

(declare-fun e!4096657 () (InoxSet Context!11982))

(assert (=> b!6786857 (= e!4096657 e!4096660)))

(assert (=> b!6786857 (= c!1261186 ((_ is Concat!25452) (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))

(declare-fun bm!616047 () Bool)

(declare-fun call!616050 () (InoxSet Context!11982))

(assert (=> bm!616047 (= call!616055 call!616050)))

(declare-fun b!6786858 () Bool)

(declare-fun e!4096658 () Bool)

(assert (=> b!6786858 (= c!1261187 e!4096658)))

(declare-fun res!2773989 () Bool)

(assert (=> b!6786858 (=> (not res!2773989) (not e!4096658))))

(assert (=> b!6786858 (= res!2773989 ((_ is Concat!25452) (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))

(declare-fun e!4096656 () (InoxSet Context!11982))

(assert (=> b!6786858 (= e!4096656 e!4096657)))

(declare-fun bm!616048 () Bool)

(assert (=> bm!616048 (= call!616050 call!616053)))

(declare-fun b!6786859 () Bool)

(assert (=> b!6786859 (= e!4096660 call!616055)))

(declare-fun b!6786860 () Bool)

(declare-fun e!4096661 () (InoxSet Context!11982))

(assert (=> b!6786860 (= e!4096661 (store ((as const (Array Context!11982 Bool)) false) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) true))))

(declare-fun bm!616049 () Bool)

(assert (=> bm!616049 (= call!616051 ($colon$colon!2416 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))) (ite (or c!1261187 c!1261186) (regTwo!33726 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))))

(declare-fun b!6786862 () Bool)

(declare-fun call!616052 () (InoxSet Context!11982))

(assert (=> b!6786862 (= e!4096657 ((_ map or) call!616052 call!616050))))

(declare-fun bm!616050 () Bool)

(assert (=> bm!616050 (= call!616052 (derivationStepZipperDown!1835 (ite c!1261184 (regOne!33727 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (regOne!33726 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))) (ite c!1261184 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (Context!11983 call!616051)) (h!72445 s!2326)))))

(declare-fun b!6786863 () Bool)

(assert (=> b!6786863 (= e!4096658 (nullable!6586 (regOne!33726 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))))))))

(declare-fun b!6786864 () Bool)

(assert (=> b!6786864 (= e!4096661 e!4096656)))

(assert (=> b!6786864 (= c!1261184 ((_ is Union!16607) (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))

(declare-fun d!2132463 () Bool)

(declare-fun c!1261185 () Bool)

(assert (=> d!2132463 (= c!1261185 (and ((_ is ElementMatch!16607) (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (= (c!1260825 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (h!72445 s!2326))))))

(assert (=> d!2132463 (= (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996)))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (h!72445 s!2326)) e!4096661)))

(declare-fun b!6786861 () Bool)

(assert (=> b!6786861 (= e!4096656 ((_ map or) call!616052 call!616053))))

(assert (= (and d!2132463 c!1261185) b!6786860))

(assert (= (and d!2132463 (not c!1261185)) b!6786864))

(assert (= (and b!6786864 c!1261184) b!6786861))

(assert (= (and b!6786864 (not c!1261184)) b!6786858))

(assert (= (and b!6786858 res!2773989) b!6786863))

(assert (= (and b!6786858 c!1261187) b!6786862))

(assert (= (and b!6786858 (not c!1261187)) b!6786857))

(assert (= (and b!6786857 c!1261186) b!6786859))

(assert (= (and b!6786857 (not c!1261186)) b!6786855))

(assert (= (and b!6786855 c!1261188) b!6786854))

(assert (= (and b!6786855 (not c!1261188)) b!6786856))

(assert (= (or b!6786859 b!6786854) bm!616046))

(assert (= (or b!6786859 b!6786854) bm!616047))

(assert (= (or b!6786862 bm!616046) bm!616049))

(assert (= (or b!6786862 bm!616047) bm!616048))

(assert (= (or b!6786861 bm!616048) bm!616045))

(assert (= (or b!6786861 b!6786862) bm!616050))

(declare-fun m!7534994 () Bool)

(assert (=> bm!616045 m!7534994))

(declare-fun m!7534996 () Bool)

(assert (=> bm!616050 m!7534996))

(declare-fun m!7534998 () Bool)

(assert (=> b!6786863 m!7534998))

(declare-fun m!7535000 () Bool)

(assert (=> bm!616049 m!7535000))

(declare-fun m!7535002 () Bool)

(assert (=> b!6786860 m!7535002))

(assert (=> bm!615927 d!2132463))

(declare-fun b!6786875 () Bool)

(declare-fun e!4096668 () Bool)

(declare-fun e!4096670 () Bool)

(assert (=> b!6786875 (= e!4096668 e!4096670)))

(declare-fun c!1261193 () Bool)

(assert (=> b!6786875 (= c!1261193 ((_ is EmptyLang!16607) (derivativeStep!5271 lt!2445581 (head!13624 s!2326))))))

(declare-fun b!6786876 () Bool)

(declare-fun e!4096669 () Bool)

(declare-fun e!4096672 () Bool)

(assert (=> b!6786876 (= e!4096669 e!4096672)))

(declare-fun res!2773996 () Bool)

(assert (=> b!6786876 (=> (not res!2773996) (not e!4096672))))

(declare-fun lt!2445727 () Bool)

(assert (=> b!6786876 (= res!2773996 (not lt!2445727))))

(declare-fun b!6786877 () Bool)

(declare-fun res!2773998 () Bool)

(assert (=> b!6786877 (=> res!2773998 e!4096669)))

(declare-fun e!4096674 () Bool)

(assert (=> b!6786877 (= res!2773998 e!4096674)))

(declare-fun res!2773999 () Bool)

(assert (=> b!6786877 (=> (not res!2773999) (not e!4096674))))

(assert (=> b!6786877 (= res!2773999 lt!2445727)))

(declare-fun b!6786878 () Bool)

(declare-fun res!2773994 () Bool)

(assert (=> b!6786878 (=> (not res!2773994) (not e!4096674))))

(assert (=> b!6786878 (= res!2773994 (isEmpty!38362 (tail!12709 (tail!12709 s!2326))))))

(declare-fun b!6786879 () Bool)

(declare-fun res!2773995 () Bool)

(assert (=> b!6786879 (=> res!2773995 e!4096669)))

(assert (=> b!6786879 (= res!2773995 (not ((_ is ElementMatch!16607) (derivativeStep!5271 lt!2445581 (head!13624 s!2326)))))))

(assert (=> b!6786879 (= e!4096670 e!4096669)))

(declare-fun d!2132467 () Bool)

(assert (=> d!2132467 e!4096668))

(declare-fun c!1261194 () Bool)

(assert (=> d!2132467 (= c!1261194 ((_ is EmptyExpr!16607) (derivativeStep!5271 lt!2445581 (head!13624 s!2326))))))

(declare-fun e!4096671 () Bool)

(assert (=> d!2132467 (= lt!2445727 e!4096671)))

(declare-fun c!1261195 () Bool)

(assert (=> d!2132467 (= c!1261195 (isEmpty!38362 (tail!12709 s!2326)))))

(assert (=> d!2132467 (validRegex!8343 (derivativeStep!5271 lt!2445581 (head!13624 s!2326)))))

(assert (=> d!2132467 (= (matchR!8790 (derivativeStep!5271 lt!2445581 (head!13624 s!2326)) (tail!12709 s!2326)) lt!2445727)))

(declare-fun b!6786880 () Bool)

(declare-fun call!616056 () Bool)

(assert (=> b!6786880 (= e!4096668 (= lt!2445727 call!616056))))

(declare-fun b!6786881 () Bool)

(assert (=> b!6786881 (= e!4096670 (not lt!2445727))))

(declare-fun bm!616051 () Bool)

(assert (=> bm!616051 (= call!616056 (isEmpty!38362 (tail!12709 s!2326)))))

(declare-fun b!6786882 () Bool)

(declare-fun e!4096673 () Bool)

(assert (=> b!6786882 (= e!4096672 e!4096673)))

(declare-fun res!2773992 () Bool)

(assert (=> b!6786882 (=> res!2773992 e!4096673)))

(assert (=> b!6786882 (= res!2773992 call!616056)))

(declare-fun b!6786883 () Bool)

(assert (=> b!6786883 (= e!4096673 (not (= (head!13624 (tail!12709 s!2326)) (c!1260825 (derivativeStep!5271 lt!2445581 (head!13624 s!2326))))))))

(declare-fun b!6786884 () Bool)

(assert (=> b!6786884 (= e!4096674 (= (head!13624 (tail!12709 s!2326)) (c!1260825 (derivativeStep!5271 lt!2445581 (head!13624 s!2326)))))))

(declare-fun b!6786885 () Bool)

(declare-fun res!2773997 () Bool)

(assert (=> b!6786885 (=> (not res!2773997) (not e!4096674))))

(assert (=> b!6786885 (= res!2773997 (not call!616056))))

(declare-fun b!6786886 () Bool)

(assert (=> b!6786886 (= e!4096671 (matchR!8790 (derivativeStep!5271 (derivativeStep!5271 lt!2445581 (head!13624 s!2326)) (head!13624 (tail!12709 s!2326))) (tail!12709 (tail!12709 s!2326))))))

(declare-fun b!6786887 () Bool)

(declare-fun res!2773993 () Bool)

(assert (=> b!6786887 (=> res!2773993 e!4096673)))

(assert (=> b!6786887 (= res!2773993 (not (isEmpty!38362 (tail!12709 (tail!12709 s!2326)))))))

(declare-fun b!6786888 () Bool)

(assert (=> b!6786888 (= e!4096671 (nullable!6586 (derivativeStep!5271 lt!2445581 (head!13624 s!2326))))))

(assert (= (and d!2132467 c!1261195) b!6786888))

(assert (= (and d!2132467 (not c!1261195)) b!6786886))

(assert (= (and d!2132467 c!1261194) b!6786880))

(assert (= (and d!2132467 (not c!1261194)) b!6786875))

(assert (= (and b!6786875 c!1261193) b!6786881))

(assert (= (and b!6786875 (not c!1261193)) b!6786879))

(assert (= (and b!6786879 (not res!2773995)) b!6786877))

(assert (= (and b!6786877 res!2773999) b!6786885))

(assert (= (and b!6786885 res!2773997) b!6786878))

(assert (= (and b!6786878 res!2773994) b!6786884))

(assert (= (and b!6786877 (not res!2773998)) b!6786876))

(assert (= (and b!6786876 res!2773996) b!6786882))

(assert (= (and b!6786882 (not res!2773992)) b!6786887))

(assert (= (and b!6786887 (not res!2773993)) b!6786883))

(assert (= (or b!6786880 b!6786885 b!6786882) bm!616051))

(assert (=> b!6786883 m!7534072))

(declare-fun m!7535024 () Bool)

(assert (=> b!6786883 m!7535024))

(assert (=> d!2132467 m!7534072))

(assert (=> d!2132467 m!7534078))

(assert (=> d!2132467 m!7534116))

(declare-fun m!7535026 () Bool)

(assert (=> d!2132467 m!7535026))

(assert (=> b!6786886 m!7534072))

(assert (=> b!6786886 m!7535024))

(assert (=> b!6786886 m!7534116))

(assert (=> b!6786886 m!7535024))

(declare-fun m!7535028 () Bool)

(assert (=> b!6786886 m!7535028))

(assert (=> b!6786886 m!7534072))

(declare-fun m!7535030 () Bool)

(assert (=> b!6786886 m!7535030))

(assert (=> b!6786886 m!7535028))

(assert (=> b!6786886 m!7535030))

(declare-fun m!7535032 () Bool)

(assert (=> b!6786886 m!7535032))

(assert (=> b!6786888 m!7534116))

(declare-fun m!7535034 () Bool)

(assert (=> b!6786888 m!7535034))

(assert (=> b!6786884 m!7534072))

(assert (=> b!6786884 m!7535024))

(assert (=> bm!616051 m!7534072))

(assert (=> bm!616051 m!7534078))

(assert (=> b!6786887 m!7534072))

(assert (=> b!6786887 m!7535030))

(assert (=> b!6786887 m!7535030))

(declare-fun m!7535036 () Bool)

(assert (=> b!6786887 m!7535036))

(assert (=> b!6786878 m!7534072))

(assert (=> b!6786878 m!7535030))

(assert (=> b!6786878 m!7535030))

(assert (=> b!6786878 m!7535036))

(assert (=> b!6785880 d!2132467))

(declare-fun b!6786944 () Bool)

(declare-fun e!4096708 () Regex!16607)

(declare-fun e!4096709 () Regex!16607)

(assert (=> b!6786944 (= e!4096708 e!4096709)))

(declare-fun c!1261220 () Bool)

(assert (=> b!6786944 (= c!1261220 ((_ is ElementMatch!16607) lt!2445581))))

(declare-fun b!6786945 () Bool)

(assert (=> b!6786945 (= e!4096709 (ite (= (head!13624 s!2326) (c!1260825 lt!2445581)) EmptyExpr!16607 EmptyLang!16607))))

(declare-fun call!616072 () Regex!16607)

(declare-fun bm!616065 () Bool)

(declare-fun c!1261222 () Bool)

(declare-fun c!1261221 () Bool)

(declare-fun c!1261218 () Bool)

(assert (=> bm!616065 (= call!616072 (derivativeStep!5271 (ite c!1261218 (regTwo!33727 lt!2445581) (ite c!1261222 (reg!16936 lt!2445581) (ite c!1261221 (regTwo!33726 lt!2445581) (regOne!33726 lt!2445581)))) (head!13624 s!2326)))))

(declare-fun b!6786946 () Bool)

(declare-fun e!4096710 () Regex!16607)

(declare-fun e!4096711 () Regex!16607)

(assert (=> b!6786946 (= e!4096710 e!4096711)))

(assert (=> b!6786946 (= c!1261222 ((_ is Star!16607) lt!2445581))))

(declare-fun b!6786947 () Bool)

(assert (=> b!6786947 (= c!1261221 (nullable!6586 (regOne!33726 lt!2445581)))))

(declare-fun e!4096707 () Regex!16607)

(assert (=> b!6786947 (= e!4096711 e!4096707)))

(declare-fun b!6786948 () Bool)

(declare-fun call!616071 () Regex!16607)

(assert (=> b!6786948 (= e!4096711 (Concat!25452 call!616071 lt!2445581))))

(declare-fun b!6786949 () Bool)

(declare-fun call!616073 () Regex!16607)

(assert (=> b!6786949 (= e!4096707 (Union!16607 (Concat!25452 call!616073 (regTwo!33726 lt!2445581)) EmptyLang!16607))))

(declare-fun bm!616066 () Bool)

(assert (=> bm!616066 (= call!616071 call!616072)))

(declare-fun bm!616067 () Bool)

(declare-fun call!616070 () Regex!16607)

(assert (=> bm!616067 (= call!616070 (derivativeStep!5271 (ite c!1261218 (regOne!33727 lt!2445581) (regOne!33726 lt!2445581)) (head!13624 s!2326)))))

(declare-fun bm!616068 () Bool)

(assert (=> bm!616068 (= call!616073 call!616071)))

(declare-fun b!6786950 () Bool)

(assert (=> b!6786950 (= c!1261218 ((_ is Union!16607) lt!2445581))))

(assert (=> b!6786950 (= e!4096709 e!4096710)))

(declare-fun b!6786943 () Bool)

(assert (=> b!6786943 (= e!4096710 (Union!16607 call!616070 call!616072))))

(declare-fun d!2132471 () Bool)

(declare-fun lt!2445733 () Regex!16607)

(assert (=> d!2132471 (validRegex!8343 lt!2445733)))

(assert (=> d!2132471 (= lt!2445733 e!4096708)))

(declare-fun c!1261219 () Bool)

(assert (=> d!2132471 (= c!1261219 (or ((_ is EmptyExpr!16607) lt!2445581) ((_ is EmptyLang!16607) lt!2445581)))))

(assert (=> d!2132471 (validRegex!8343 lt!2445581)))

(assert (=> d!2132471 (= (derivativeStep!5271 lt!2445581 (head!13624 s!2326)) lt!2445733)))

(declare-fun b!6786951 () Bool)

(assert (=> b!6786951 (= e!4096708 EmptyLang!16607)))

(declare-fun b!6786952 () Bool)

(assert (=> b!6786952 (= e!4096707 (Union!16607 (Concat!25452 call!616070 (regTwo!33726 lt!2445581)) call!616073))))

(assert (= (and d!2132471 c!1261219) b!6786951))

(assert (= (and d!2132471 (not c!1261219)) b!6786944))

(assert (= (and b!6786944 c!1261220) b!6786945))

(assert (= (and b!6786944 (not c!1261220)) b!6786950))

(assert (= (and b!6786950 c!1261218) b!6786943))

(assert (= (and b!6786950 (not c!1261218)) b!6786946))

(assert (= (and b!6786946 c!1261222) b!6786948))

(assert (= (and b!6786946 (not c!1261222)) b!6786947))

(assert (= (and b!6786947 c!1261221) b!6786952))

(assert (= (and b!6786947 (not c!1261221)) b!6786949))

(assert (= (or b!6786952 b!6786949) bm!616068))

(assert (= (or b!6786948 bm!616068) bm!616066))

(assert (= (or b!6786943 bm!616066) bm!616065))

(assert (= (or b!6786943 b!6786952) bm!616067))

(assert (=> bm!616065 m!7534068))

(declare-fun m!7535084 () Bool)

(assert (=> bm!616065 m!7535084))

(declare-fun m!7535086 () Bool)

(assert (=> b!6786947 m!7535086))

(assert (=> bm!616067 m!7534068))

(declare-fun m!7535088 () Bool)

(assert (=> bm!616067 m!7535088))

(declare-fun m!7535090 () Bool)

(assert (=> d!2132471 m!7535090))

(assert (=> d!2132471 m!7534114))

(assert (=> b!6785880 d!2132471))

(assert (=> b!6785880 d!2132457))

(assert (=> b!6785880 d!2132359))

(declare-fun d!2132485 () Bool)

(declare-fun res!2774015 () Bool)

(declare-fun e!4096714 () Bool)

(assert (=> d!2132485 (=> res!2774015 e!4096714)))

(assert (=> d!2132485 (= res!2774015 ((_ is ElementMatch!16607) lt!2445701))))

(assert (=> d!2132485 (= (validRegex!8343 lt!2445701) e!4096714)))

(declare-fun b!6786955 () Bool)

(declare-fun res!2774016 () Bool)

(declare-fun e!4096718 () Bool)

(assert (=> b!6786955 (=> res!2774016 e!4096718)))

(assert (=> b!6786955 (= res!2774016 (not ((_ is Concat!25452) lt!2445701)))))

(declare-fun e!4096719 () Bool)

(assert (=> b!6786955 (= e!4096719 e!4096718)))

(declare-fun b!6786956 () Bool)

(declare-fun e!4096716 () Bool)

(declare-fun call!616075 () Bool)

(assert (=> b!6786956 (= e!4096716 call!616075)))

(declare-fun b!6786957 () Bool)

(declare-fun e!4096717 () Bool)

(declare-fun e!4096715 () Bool)

(assert (=> b!6786957 (= e!4096717 e!4096715)))

(declare-fun res!2774012 () Bool)

(assert (=> b!6786957 (= res!2774012 (not (nullable!6586 (reg!16936 lt!2445701))))))

(assert (=> b!6786957 (=> (not res!2774012) (not e!4096715))))

(declare-fun bm!616069 () Bool)

(declare-fun call!616074 () Bool)

(declare-fun c!1261223 () Bool)

(assert (=> bm!616069 (= call!616074 (validRegex!8343 (ite c!1261223 (regOne!33727 lt!2445701) (regOne!33726 lt!2445701))))))

(declare-fun bm!616070 () Bool)

(declare-fun call!616076 () Bool)

(assert (=> bm!616070 (= call!616075 call!616076)))

(declare-fun b!6786958 () Bool)

(assert (=> b!6786958 (= e!4096717 e!4096719)))

(assert (=> b!6786958 (= c!1261223 ((_ is Union!16607) lt!2445701))))

(declare-fun b!6786959 () Bool)

(assert (=> b!6786959 (= e!4096714 e!4096717)))

(declare-fun c!1261224 () Bool)

(assert (=> b!6786959 (= c!1261224 ((_ is Star!16607) lt!2445701))))

(declare-fun b!6786960 () Bool)

(declare-fun e!4096720 () Bool)

(assert (=> b!6786960 (= e!4096720 call!616075)))

(declare-fun b!6786961 () Bool)

(assert (=> b!6786961 (= e!4096718 e!4096720)))

(declare-fun res!2774013 () Bool)

(assert (=> b!6786961 (=> (not res!2774013) (not e!4096720))))

(assert (=> b!6786961 (= res!2774013 call!616074)))

(declare-fun b!6786962 () Bool)

(assert (=> b!6786962 (= e!4096715 call!616076)))

(declare-fun bm!616071 () Bool)

(assert (=> bm!616071 (= call!616076 (validRegex!8343 (ite c!1261224 (reg!16936 lt!2445701) (ite c!1261223 (regTwo!33727 lt!2445701) (regTwo!33726 lt!2445701)))))))

(declare-fun b!6786963 () Bool)

(declare-fun res!2774014 () Bool)

(assert (=> b!6786963 (=> (not res!2774014) (not e!4096716))))

(assert (=> b!6786963 (= res!2774014 call!616074)))

(assert (=> b!6786963 (= e!4096719 e!4096716)))

(assert (= (and d!2132485 (not res!2774015)) b!6786959))

(assert (= (and b!6786959 c!1261224) b!6786957))

(assert (= (and b!6786959 (not c!1261224)) b!6786958))

(assert (= (and b!6786957 res!2774012) b!6786962))

(assert (= (and b!6786958 c!1261223) b!6786963))

(assert (= (and b!6786958 (not c!1261223)) b!6786955))

(assert (= (and b!6786963 res!2774014) b!6786956))

(assert (= (and b!6786955 (not res!2774016)) b!6786961))

(assert (= (and b!6786961 res!2774013) b!6786960))

(assert (= (or b!6786956 b!6786960) bm!616070))

(assert (= (or b!6786963 b!6786961) bm!616069))

(assert (= (or b!6786962 bm!616070) bm!616071))

(declare-fun m!7535096 () Bool)

(assert (=> b!6786957 m!7535096))

(declare-fun m!7535098 () Bool)

(assert (=> bm!616069 m!7535098))

(declare-fun m!7535100 () Bool)

(assert (=> bm!616071 m!7535100))

(assert (=> d!2132223 d!2132485))

(declare-fun bs!1807983 () Bool)

(declare-fun d!2132491 () Bool)

(assert (= bs!1807983 (and d!2132491 d!2132185)))

(declare-fun lambda!382209 () Int)

(assert (=> bs!1807983 (= lambda!382209 lambda!382159)))

(declare-fun bs!1807984 () Bool)

(assert (= bs!1807984 (and d!2132491 d!2132203)))

(assert (=> bs!1807984 (= lambda!382209 lambda!382166)))

(declare-fun bs!1807985 () Bool)

(assert (= bs!1807985 (and d!2132491 d!2132365)))

(assert (=> bs!1807985 (= lambda!382209 lambda!382188)))

(declare-fun bs!1807986 () Bool)

(assert (= bs!1807986 (and d!2132491 d!2132183)))

(assert (=> bs!1807986 (= lambda!382209 lambda!382156)))

(declare-fun bs!1807987 () Bool)

(assert (= bs!1807987 (and d!2132491 d!2132205)))

(assert (=> bs!1807987 (= lambda!382209 lambda!382167)))

(declare-fun bs!1807988 () Bool)

(assert (= bs!1807988 (and d!2132491 d!2132187)))

(assert (=> bs!1807988 (= lambda!382209 lambda!382162)))

(declare-fun bs!1807989 () Bool)

(assert (= bs!1807989 (and d!2132491 d!2132123)))

(assert (=> bs!1807989 (= lambda!382209 lambda!382132)))

(declare-fun b!6786964 () Bool)

(declare-fun e!4096723 () Bool)

(declare-fun e!4096722 () Bool)

(assert (=> b!6786964 (= e!4096723 e!4096722)))

(declare-fun c!1261226 () Bool)

(assert (=> b!6786964 (= c!1261226 (isEmpty!38364 (tail!12710 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998)))))))

(declare-fun b!6786965 () Bool)

(declare-fun lt!2445734 () Regex!16607)

(assert (=> b!6786965 (= e!4096722 (isUnion!1402 lt!2445734))))

(declare-fun e!4096726 () Bool)

(assert (=> d!2132491 e!4096726))

(declare-fun res!2774018 () Bool)

(assert (=> d!2132491 (=> (not res!2774018) (not e!4096726))))

(assert (=> d!2132491 (= res!2774018 (validRegex!8343 lt!2445734))))

(declare-fun e!4096721 () Regex!16607)

(assert (=> d!2132491 (= lt!2445734 e!4096721)))

(declare-fun c!1261225 () Bool)

(declare-fun e!4096724 () Bool)

(assert (=> d!2132491 (= c!1261225 e!4096724)))

(declare-fun res!2774017 () Bool)

(assert (=> d!2132491 (=> (not res!2774017) (not e!4096724))))

(assert (=> d!2132491 (= res!2774017 ((_ is Cons!65996) (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))))))

(assert (=> d!2132491 (forall!15799 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998)) lambda!382209)))

(assert (=> d!2132491 (= (generalisedUnion!2451 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))) lt!2445734)))

(declare-fun b!6786966 () Bool)

(assert (=> b!6786966 (= e!4096723 (isEmptyLang!1972 lt!2445734))))

(declare-fun b!6786967 () Bool)

(assert (=> b!6786967 (= e!4096726 e!4096723)))

(declare-fun c!1261227 () Bool)

(assert (=> b!6786967 (= c!1261227 (isEmpty!38364 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))))))

(declare-fun b!6786968 () Bool)

(declare-fun e!4096725 () Regex!16607)

(assert (=> b!6786968 (= e!4096725 EmptyLang!16607)))

(declare-fun b!6786969 () Bool)

(assert (=> b!6786969 (= e!4096722 (= lt!2445734 (head!13626 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998)))))))

(declare-fun b!6786970 () Bool)

(assert (=> b!6786970 (= e!4096725 (Union!16607 (h!72444 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))) (generalisedUnion!2451 (t!379839 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))))))))

(declare-fun b!6786971 () Bool)

(assert (=> b!6786971 (= e!4096724 (isEmpty!38364 (t!379839 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998)))))))

(declare-fun b!6786972 () Bool)

(assert (=> b!6786972 (= e!4096721 (h!72444 (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))))))

(declare-fun b!6786973 () Bool)

(assert (=> b!6786973 (= e!4096721 e!4096725)))

(declare-fun c!1261228 () Bool)

(assert (=> b!6786973 (= c!1261228 ((_ is Cons!65996) (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998))))))

(assert (= (and d!2132491 res!2774017) b!6786971))

(assert (= (and d!2132491 c!1261225) b!6786972))

(assert (= (and d!2132491 (not c!1261225)) b!6786973))

(assert (= (and b!6786973 c!1261228) b!6786970))

(assert (= (and b!6786973 (not c!1261228)) b!6786968))

(assert (= (and d!2132491 res!2774018) b!6786967))

(assert (= (and b!6786967 c!1261227) b!6786966))

(assert (= (and b!6786967 (not c!1261227)) b!6786964))

(assert (= (and b!6786964 c!1261226) b!6786969))

(assert (= (and b!6786964 (not c!1261226)) b!6786965))

(declare-fun m!7535114 () Bool)

(assert (=> b!6786971 m!7535114))

(assert (=> b!6786967 m!7534474))

(declare-fun m!7535116 () Bool)

(assert (=> b!6786967 m!7535116))

(declare-fun m!7535118 () Bool)

(assert (=> b!6786970 m!7535118))

(declare-fun m!7535120 () Bool)

(assert (=> b!6786965 m!7535120))

(declare-fun m!7535122 () Bool)

(assert (=> b!6786966 m!7535122))

(assert (=> b!6786964 m!7534474))

(declare-fun m!7535124 () Bool)

(assert (=> b!6786964 m!7535124))

(assert (=> b!6786964 m!7535124))

(declare-fun m!7535126 () Bool)

(assert (=> b!6786964 m!7535126))

(declare-fun m!7535128 () Bool)

(assert (=> d!2132491 m!7535128))

(assert (=> d!2132491 m!7534474))

(declare-fun m!7535130 () Bool)

(assert (=> d!2132491 m!7535130))

(assert (=> b!6786969 m!7534474))

(declare-fun m!7535132 () Bool)

(assert (=> b!6786969 m!7535132))

(assert (=> d!2132223 d!2132491))

(declare-fun bs!1807992 () Bool)

(declare-fun d!2132505 () Bool)

(assert (= bs!1807992 (and d!2132505 d!2132185)))

(declare-fun lambda!382210 () Int)

(assert (=> bs!1807992 (= lambda!382210 lambda!382159)))

(declare-fun bs!1807993 () Bool)

(assert (= bs!1807993 (and d!2132505 d!2132203)))

(assert (=> bs!1807993 (= lambda!382210 lambda!382166)))

(declare-fun bs!1807994 () Bool)

(assert (= bs!1807994 (and d!2132505 d!2132365)))

(assert (=> bs!1807994 (= lambda!382210 lambda!382188)))

(declare-fun bs!1807995 () Bool)

(assert (= bs!1807995 (and d!2132505 d!2132183)))

(assert (=> bs!1807995 (= lambda!382210 lambda!382156)))

(declare-fun bs!1807996 () Bool)

(assert (= bs!1807996 (and d!2132505 d!2132205)))

(assert (=> bs!1807996 (= lambda!382210 lambda!382167)))

(declare-fun bs!1807997 () Bool)

(assert (= bs!1807997 (and d!2132505 d!2132491)))

(assert (=> bs!1807997 (= lambda!382210 lambda!382209)))

(declare-fun bs!1807998 () Bool)

(assert (= bs!1807998 (and d!2132505 d!2132187)))

(assert (=> bs!1807998 (= lambda!382210 lambda!382162)))

(declare-fun bs!1807999 () Bool)

(assert (= bs!1807999 (and d!2132505 d!2132123)))

(assert (=> bs!1807999 (= lambda!382210 lambda!382132)))

(declare-fun lt!2445735 () List!66120)

(assert (=> d!2132505 (forall!15799 lt!2445735 lambda!382210)))

(declare-fun e!4096734 () List!66120)

(assert (=> d!2132505 (= lt!2445735 e!4096734)))

(declare-fun c!1261231 () Bool)

(assert (=> d!2132505 (= c!1261231 ((_ is Cons!65998) (Cons!65998 lt!2445591 Nil!65998)))))

(assert (=> d!2132505 (= (unfocusZipperList!2028 (Cons!65998 lt!2445591 Nil!65998)) lt!2445735)))

(declare-fun b!6786983 () Bool)

(assert (=> b!6786983 (= e!4096734 (Cons!65996 (generalisedConcat!2204 (exprs!6491 (h!72446 (Cons!65998 lt!2445591 Nil!65998)))) (unfocusZipperList!2028 (t!379841 (Cons!65998 lt!2445591 Nil!65998)))))))

(declare-fun b!6786984 () Bool)

(assert (=> b!6786984 (= e!4096734 Nil!65996)))

(assert (= (and d!2132505 c!1261231) b!6786983))

(assert (= (and d!2132505 (not c!1261231)) b!6786984))

(declare-fun m!7535134 () Bool)

(assert (=> d!2132505 m!7535134))

(declare-fun m!7535136 () Bool)

(assert (=> b!6786983 m!7535136))

(declare-fun m!7535138 () Bool)

(assert (=> b!6786983 m!7535138))

(assert (=> d!2132223 d!2132505))

(declare-fun d!2132507 () Bool)

(assert (=> d!2132507 (= (nullable!6586 (regOne!33726 r!7292)) (nullableFct!2492 (regOne!33726 r!7292)))))

(declare-fun bs!1808000 () Bool)

(assert (= bs!1808000 d!2132507))

(declare-fun m!7535140 () Bool)

(assert (=> bs!1808000 m!7535140))

(assert (=> b!6786320 d!2132507))

(declare-fun bs!1808001 () Bool)

(declare-fun d!2132509 () Bool)

(assert (= bs!1808001 (and d!2132509 d!2132185)))

(declare-fun lambda!382211 () Int)

(assert (=> bs!1808001 (= lambda!382211 lambda!382159)))

(declare-fun bs!1808002 () Bool)

(assert (= bs!1808002 (and d!2132509 d!2132203)))

(assert (=> bs!1808002 (= lambda!382211 lambda!382166)))

(declare-fun bs!1808003 () Bool)

(assert (= bs!1808003 (and d!2132509 d!2132365)))

(assert (=> bs!1808003 (= lambda!382211 lambda!382188)))

(declare-fun bs!1808004 () Bool)

(assert (= bs!1808004 (and d!2132509 d!2132183)))

(assert (=> bs!1808004 (= lambda!382211 lambda!382156)))

(declare-fun bs!1808005 () Bool)

(assert (= bs!1808005 (and d!2132509 d!2132205)))

(assert (=> bs!1808005 (= lambda!382211 lambda!382167)))

(declare-fun bs!1808006 () Bool)

(assert (= bs!1808006 (and d!2132509 d!2132505)))

(assert (=> bs!1808006 (= lambda!382211 lambda!382210)))

(declare-fun bs!1808007 () Bool)

(assert (= bs!1808007 (and d!2132509 d!2132491)))

(assert (=> bs!1808007 (= lambda!382211 lambda!382209)))

(declare-fun bs!1808008 () Bool)

(assert (= bs!1808008 (and d!2132509 d!2132187)))

(assert (=> bs!1808008 (= lambda!382211 lambda!382162)))

(declare-fun bs!1808009 () Bool)

(assert (= bs!1808009 (and d!2132509 d!2132123)))

(assert (=> bs!1808009 (= lambda!382211 lambda!382132)))

(assert (=> d!2132509 (= (inv!84764 setElem!46435) (forall!15799 (exprs!6491 setElem!46435) lambda!382211))))

(declare-fun bs!1808010 () Bool)

(assert (= bs!1808010 d!2132509))

(declare-fun m!7535142 () Bool)

(assert (=> bs!1808010 m!7535142))

(assert (=> setNonEmpty!46435 d!2132509))

(declare-fun d!2132511 () Bool)

(assert (=> d!2132511 (= (nullable!6586 (h!72444 (exprs!6491 (h!72446 zl!343)))) (nullableFct!2492 (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun bs!1808011 () Bool)

(assert (= bs!1808011 d!2132511))

(declare-fun m!7535144 () Bool)

(assert (=> bs!1808011 m!7535144))

(assert (=> b!6786327 d!2132511))

(declare-fun d!2132513 () Bool)

(declare-fun res!2774027 () Bool)

(declare-fun e!4096735 () Bool)

(assert (=> d!2132513 (=> res!2774027 e!4096735)))

(assert (=> d!2132513 (= res!2774027 ((_ is ElementMatch!16607) lt!2445691))))

(assert (=> d!2132513 (= (validRegex!8343 lt!2445691) e!4096735)))

(declare-fun b!6786985 () Bool)

(declare-fun res!2774028 () Bool)

(declare-fun e!4096739 () Bool)

(assert (=> b!6786985 (=> res!2774028 e!4096739)))

(assert (=> b!6786985 (= res!2774028 (not ((_ is Concat!25452) lt!2445691)))))

(declare-fun e!4096740 () Bool)

(assert (=> b!6786985 (= e!4096740 e!4096739)))

(declare-fun b!6786986 () Bool)

(declare-fun e!4096737 () Bool)

(declare-fun call!616081 () Bool)

(assert (=> b!6786986 (= e!4096737 call!616081)))

(declare-fun b!6786987 () Bool)

(declare-fun e!4096738 () Bool)

(declare-fun e!4096736 () Bool)

(assert (=> b!6786987 (= e!4096738 e!4096736)))

(declare-fun res!2774024 () Bool)

(assert (=> b!6786987 (= res!2774024 (not (nullable!6586 (reg!16936 lt!2445691))))))

(assert (=> b!6786987 (=> (not res!2774024) (not e!4096736))))

(declare-fun bm!616075 () Bool)

(declare-fun call!616080 () Bool)

(declare-fun c!1261232 () Bool)

(assert (=> bm!616075 (= call!616080 (validRegex!8343 (ite c!1261232 (regOne!33727 lt!2445691) (regOne!33726 lt!2445691))))))

(declare-fun bm!616076 () Bool)

(declare-fun call!616082 () Bool)

(assert (=> bm!616076 (= call!616081 call!616082)))

(declare-fun b!6786988 () Bool)

(assert (=> b!6786988 (= e!4096738 e!4096740)))

(assert (=> b!6786988 (= c!1261232 ((_ is Union!16607) lt!2445691))))

(declare-fun b!6786989 () Bool)

(assert (=> b!6786989 (= e!4096735 e!4096738)))

(declare-fun c!1261233 () Bool)

(assert (=> b!6786989 (= c!1261233 ((_ is Star!16607) lt!2445691))))

(declare-fun b!6786990 () Bool)

(declare-fun e!4096741 () Bool)

(assert (=> b!6786990 (= e!4096741 call!616081)))

(declare-fun b!6786991 () Bool)

(assert (=> b!6786991 (= e!4096739 e!4096741)))

(declare-fun res!2774025 () Bool)

(assert (=> b!6786991 (=> (not res!2774025) (not e!4096741))))

(assert (=> b!6786991 (= res!2774025 call!616080)))

(declare-fun b!6786992 () Bool)

(assert (=> b!6786992 (= e!4096736 call!616082)))

(declare-fun bm!616077 () Bool)

(assert (=> bm!616077 (= call!616082 (validRegex!8343 (ite c!1261233 (reg!16936 lt!2445691) (ite c!1261232 (regTwo!33727 lt!2445691) (regTwo!33726 lt!2445691)))))))

(declare-fun b!6786993 () Bool)

(declare-fun res!2774026 () Bool)

(assert (=> b!6786993 (=> (not res!2774026) (not e!4096737))))

(assert (=> b!6786993 (= res!2774026 call!616080)))

(assert (=> b!6786993 (= e!4096740 e!4096737)))

(assert (= (and d!2132513 (not res!2774027)) b!6786989))

(assert (= (and b!6786989 c!1261233) b!6786987))

(assert (= (and b!6786989 (not c!1261233)) b!6786988))

(assert (= (and b!6786987 res!2774024) b!6786992))

(assert (= (and b!6786988 c!1261232) b!6786993))

(assert (= (and b!6786988 (not c!1261232)) b!6786985))

(assert (= (and b!6786993 res!2774026) b!6786986))

(assert (= (and b!6786985 (not res!2774028)) b!6786991))

(assert (= (and b!6786991 res!2774025) b!6786990))

(assert (= (or b!6786986 b!6786990) bm!616076))

(assert (= (or b!6786993 b!6786991) bm!616075))

(assert (= (or b!6786992 bm!616076) bm!616077))

(declare-fun m!7535146 () Bool)

(assert (=> b!6786987 m!7535146))

(declare-fun m!7535148 () Bool)

(assert (=> bm!616075 m!7535148))

(declare-fun m!7535150 () Bool)

(assert (=> bm!616077 m!7535150))

(assert (=> d!2132183 d!2132513))

(declare-fun d!2132515 () Bool)

(declare-fun res!2774029 () Bool)

(declare-fun e!4096742 () Bool)

(assert (=> d!2132515 (=> res!2774029 e!4096742)))

(assert (=> d!2132515 (= res!2774029 ((_ is Nil!65996) (unfocusZipperList!2028 zl!343)))))

(assert (=> d!2132515 (= (forall!15799 (unfocusZipperList!2028 zl!343) lambda!382156) e!4096742)))

(declare-fun b!6786994 () Bool)

(declare-fun e!4096743 () Bool)

(assert (=> b!6786994 (= e!4096742 e!4096743)))

(declare-fun res!2774030 () Bool)

(assert (=> b!6786994 (=> (not res!2774030) (not e!4096743))))

(assert (=> b!6786994 (= res!2774030 (dynLambda!26340 lambda!382156 (h!72444 (unfocusZipperList!2028 zl!343))))))

(declare-fun b!6786995 () Bool)

(assert (=> b!6786995 (= e!4096743 (forall!15799 (t!379839 (unfocusZipperList!2028 zl!343)) lambda!382156))))

(assert (= (and d!2132515 (not res!2774029)) b!6786994))

(assert (= (and b!6786994 res!2774030) b!6786995))

(declare-fun b_lambda!255585 () Bool)

(assert (=> (not b_lambda!255585) (not b!6786994)))

(declare-fun m!7535152 () Bool)

(assert (=> b!6786994 m!7535152))

(declare-fun m!7535154 () Bool)

(assert (=> b!6786995 m!7535154))

(assert (=> d!2132183 d!2132515))

(declare-fun d!2132517 () Bool)

(assert (=> d!2132517 (= (nullable!6586 (reg!16936 r!7292)) (nullableFct!2492 (reg!16936 r!7292)))))

(declare-fun bs!1808012 () Bool)

(assert (= bs!1808012 d!2132517))

(declare-fun m!7535156 () Bool)

(assert (=> bs!1808012 m!7535156))

(assert (=> b!6785937 d!2132517))

(declare-fun d!2132519 () Bool)

(declare-fun c!1261235 () Bool)

(declare-fun e!4096746 () Bool)

(assert (=> d!2132519 (= c!1261235 e!4096746)))

(declare-fun res!2774031 () Bool)

(assert (=> d!2132519 (=> (not res!2774031) (not e!4096746))))

(assert (=> d!2132519 (= res!2774031 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587))))))))

(declare-fun e!4096744 () (InoxSet Context!11982))

(assert (=> d!2132519 (= (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 lt!2445587))) (h!72445 s!2326)) e!4096744)))

(declare-fun bm!616078 () Bool)

(declare-fun call!616083 () (InoxSet Context!11982))

(assert (=> bm!616078 (= call!616083 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587))))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587)))))) (h!72445 s!2326)))))

(declare-fun b!6786996 () Bool)

(assert (=> b!6786996 (= e!4096746 (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587)))))))))

(declare-fun b!6786997 () Bool)

(declare-fun e!4096745 () (InoxSet Context!11982))

(assert (=> b!6786997 (= e!4096745 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6786998 () Bool)

(assert (=> b!6786998 (= e!4096744 e!4096745)))

(declare-fun c!1261234 () Bool)

(assert (=> b!6786998 (= c!1261234 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587))))))))

(declare-fun b!6786999 () Bool)

(assert (=> b!6786999 (= e!4096744 ((_ map or) call!616083 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587)))))) (h!72445 s!2326))))))

(declare-fun b!6787000 () Bool)

(assert (=> b!6787000 (= e!4096745 call!616083)))

(assert (= (and d!2132519 res!2774031) b!6786996))

(assert (= (and d!2132519 c!1261235) b!6786999))

(assert (= (and d!2132519 (not c!1261235)) b!6786998))

(assert (= (and b!6786998 c!1261234) b!6787000))

(assert (= (and b!6786998 (not c!1261234)) b!6786997))

(assert (= (or b!6786999 b!6787000) bm!616078))

(declare-fun m!7535158 () Bool)

(assert (=> bm!616078 m!7535158))

(declare-fun m!7535160 () Bool)

(assert (=> b!6786996 m!7535160))

(declare-fun m!7535162 () Bool)

(assert (=> b!6786999 m!7535162))

(assert (=> b!6786271 d!2132519))

(declare-fun d!2132521 () Bool)

(declare-fun res!2774035 () Bool)

(declare-fun e!4096747 () Bool)

(assert (=> d!2132521 (=> res!2774035 e!4096747)))

(assert (=> d!2132521 (= res!2774035 ((_ is ElementMatch!16607) lt!2445652))))

(assert (=> d!2132521 (= (validRegex!8343 lt!2445652) e!4096747)))

(declare-fun b!6787001 () Bool)

(declare-fun res!2774036 () Bool)

(declare-fun e!4096751 () Bool)

(assert (=> b!6787001 (=> res!2774036 e!4096751)))

(assert (=> b!6787001 (= res!2774036 (not ((_ is Concat!25452) lt!2445652)))))

(declare-fun e!4096752 () Bool)

(assert (=> b!6787001 (= e!4096752 e!4096751)))

(declare-fun b!6787002 () Bool)

(declare-fun e!4096749 () Bool)

(declare-fun call!616085 () Bool)

(assert (=> b!6787002 (= e!4096749 call!616085)))

(declare-fun b!6787003 () Bool)

(declare-fun e!4096750 () Bool)

(declare-fun e!4096748 () Bool)

(assert (=> b!6787003 (= e!4096750 e!4096748)))

(declare-fun res!2774032 () Bool)

(assert (=> b!6787003 (= res!2774032 (not (nullable!6586 (reg!16936 lt!2445652))))))

(assert (=> b!6787003 (=> (not res!2774032) (not e!4096748))))

(declare-fun bm!616079 () Bool)

(declare-fun call!616084 () Bool)

(declare-fun c!1261236 () Bool)

(assert (=> bm!616079 (= call!616084 (validRegex!8343 (ite c!1261236 (regOne!33727 lt!2445652) (regOne!33726 lt!2445652))))))

(declare-fun bm!616080 () Bool)

(declare-fun call!616086 () Bool)

(assert (=> bm!616080 (= call!616085 call!616086)))

(declare-fun b!6787004 () Bool)

(assert (=> b!6787004 (= e!4096750 e!4096752)))

(assert (=> b!6787004 (= c!1261236 ((_ is Union!16607) lt!2445652))))

(declare-fun b!6787005 () Bool)

(assert (=> b!6787005 (= e!4096747 e!4096750)))

(declare-fun c!1261237 () Bool)

(assert (=> b!6787005 (= c!1261237 ((_ is Star!16607) lt!2445652))))

(declare-fun b!6787006 () Bool)

(declare-fun e!4096753 () Bool)

(assert (=> b!6787006 (= e!4096753 call!616085)))

(declare-fun b!6787007 () Bool)

(assert (=> b!6787007 (= e!4096751 e!4096753)))

(declare-fun res!2774033 () Bool)

(assert (=> b!6787007 (=> (not res!2774033) (not e!4096753))))

(assert (=> b!6787007 (= res!2774033 call!616084)))

(declare-fun b!6787008 () Bool)

(assert (=> b!6787008 (= e!4096748 call!616086)))

(declare-fun bm!616081 () Bool)

(assert (=> bm!616081 (= call!616086 (validRegex!8343 (ite c!1261237 (reg!16936 lt!2445652) (ite c!1261236 (regTwo!33727 lt!2445652) (regTwo!33726 lt!2445652)))))))

(declare-fun b!6787009 () Bool)

(declare-fun res!2774034 () Bool)

(assert (=> b!6787009 (=> (not res!2774034) (not e!4096749))))

(assert (=> b!6787009 (= res!2774034 call!616084)))

(assert (=> b!6787009 (= e!4096752 e!4096749)))

(assert (= (and d!2132521 (not res!2774035)) b!6787005))

(assert (= (and b!6787005 c!1261237) b!6787003))

(assert (= (and b!6787005 (not c!1261237)) b!6787004))

(assert (= (and b!6787003 res!2774032) b!6787008))

(assert (= (and b!6787004 c!1261236) b!6787009))

(assert (= (and b!6787004 (not c!1261236)) b!6787001))

(assert (= (and b!6787009 res!2774034) b!6787002))

(assert (= (and b!6787001 (not res!2774036)) b!6787007))

(assert (= (and b!6787007 res!2774033) b!6787006))

(assert (= (or b!6787002 b!6787006) bm!616080))

(assert (= (or b!6787009 b!6787007) bm!616079))

(assert (= (or b!6787008 bm!616080) bm!616081))

(declare-fun m!7535164 () Bool)

(assert (=> b!6787003 m!7535164))

(declare-fun m!7535166 () Bool)

(assert (=> bm!616079 m!7535166))

(declare-fun m!7535168 () Bool)

(assert (=> bm!616081 m!7535168))

(assert (=> d!2132115 d!2132521))

(declare-fun bs!1808013 () Bool)

(declare-fun d!2132523 () Bool)

(assert (= bs!1808013 (and d!2132523 d!2132185)))

(declare-fun lambda!382214 () Int)

(assert (=> bs!1808013 (= lambda!382214 lambda!382159)))

(declare-fun bs!1808014 () Bool)

(assert (= bs!1808014 (and d!2132523 d!2132509)))

(assert (=> bs!1808014 (= lambda!382214 lambda!382211)))

(declare-fun bs!1808015 () Bool)

(assert (= bs!1808015 (and d!2132523 d!2132203)))

(assert (=> bs!1808015 (= lambda!382214 lambda!382166)))

(declare-fun bs!1808016 () Bool)

(assert (= bs!1808016 (and d!2132523 d!2132365)))

(assert (=> bs!1808016 (= lambda!382214 lambda!382188)))

(declare-fun bs!1808017 () Bool)

(assert (= bs!1808017 (and d!2132523 d!2132183)))

(assert (=> bs!1808017 (= lambda!382214 lambda!382156)))

(declare-fun bs!1808018 () Bool)

(assert (= bs!1808018 (and d!2132523 d!2132205)))

(assert (=> bs!1808018 (= lambda!382214 lambda!382167)))

(declare-fun bs!1808019 () Bool)

(assert (= bs!1808019 (and d!2132523 d!2132505)))

(assert (=> bs!1808019 (= lambda!382214 lambda!382210)))

(declare-fun bs!1808020 () Bool)

(assert (= bs!1808020 (and d!2132523 d!2132491)))

(assert (=> bs!1808020 (= lambda!382214 lambda!382209)))

(declare-fun bs!1808021 () Bool)

(assert (= bs!1808021 (and d!2132523 d!2132187)))

(assert (=> bs!1808021 (= lambda!382214 lambda!382162)))

(declare-fun bs!1808022 () Bool)

(assert (= bs!1808022 (and d!2132523 d!2132123)))

(assert (=> bs!1808022 (= lambda!382214 lambda!382132)))

(declare-fun b!6787014 () Bool)

(declare-fun e!4096758 () Bool)

(declare-fun e!4096757 () Bool)

(assert (=> b!6787014 (= e!4096758 e!4096757)))

(declare-fun c!1261239 () Bool)

(assert (=> b!6787014 (= c!1261239 (isEmpty!38364 (tail!12710 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998)))))))

(declare-fun b!6787015 () Bool)

(declare-fun lt!2445736 () Regex!16607)

(assert (=> b!6787015 (= e!4096757 (isUnion!1402 lt!2445736))))

(declare-fun e!4096761 () Bool)

(assert (=> d!2132523 e!4096761))

(declare-fun res!2774042 () Bool)

(assert (=> d!2132523 (=> (not res!2774042) (not e!4096761))))

(assert (=> d!2132523 (= res!2774042 (validRegex!8343 lt!2445736))))

(declare-fun e!4096756 () Regex!16607)

(assert (=> d!2132523 (= lt!2445736 e!4096756)))

(declare-fun c!1261238 () Bool)

(declare-fun e!4096759 () Bool)

(assert (=> d!2132523 (= c!1261238 e!4096759)))

(declare-fun res!2774041 () Bool)

(assert (=> d!2132523 (=> (not res!2774041) (not e!4096759))))

(assert (=> d!2132523 (= res!2774041 ((_ is Cons!65996) (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))))))

(assert (=> d!2132523 (forall!15799 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998)) lambda!382214)))

(assert (=> d!2132523 (= (generalisedUnion!2451 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))) lt!2445736)))

(declare-fun b!6787016 () Bool)

(assert (=> b!6787016 (= e!4096758 (isEmptyLang!1972 lt!2445736))))

(declare-fun b!6787017 () Bool)

(assert (=> b!6787017 (= e!4096761 e!4096758)))

(declare-fun c!1261240 () Bool)

(assert (=> b!6787017 (= c!1261240 (isEmpty!38364 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))))))

(declare-fun b!6787018 () Bool)

(declare-fun e!4096760 () Regex!16607)

(assert (=> b!6787018 (= e!4096760 EmptyLang!16607)))

(declare-fun b!6787019 () Bool)

(assert (=> b!6787019 (= e!4096757 (= lt!2445736 (head!13626 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998)))))))

(declare-fun b!6787020 () Bool)

(assert (=> b!6787020 (= e!4096760 (Union!16607 (h!72444 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))) (generalisedUnion!2451 (t!379839 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))))))))

(declare-fun b!6787021 () Bool)

(assert (=> b!6787021 (= e!4096759 (isEmpty!38364 (t!379839 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998)))))))

(declare-fun b!6787022 () Bool)

(assert (=> b!6787022 (= e!4096756 (h!72444 (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))))))

(declare-fun b!6787023 () Bool)

(assert (=> b!6787023 (= e!4096756 e!4096760)))

(declare-fun c!1261241 () Bool)

(assert (=> b!6787023 (= c!1261241 ((_ is Cons!65996) (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998))))))

(assert (= (and d!2132523 res!2774041) b!6787021))

(assert (= (and d!2132523 c!1261238) b!6787022))

(assert (= (and d!2132523 (not c!1261238)) b!6787023))

(assert (= (and b!6787023 c!1261241) b!6787020))

(assert (= (and b!6787023 (not c!1261241)) b!6787018))

(assert (= (and d!2132523 res!2774042) b!6787017))

(assert (= (and b!6787017 c!1261240) b!6787016))

(assert (= (and b!6787017 (not c!1261240)) b!6787014))

(assert (= (and b!6787014 c!1261239) b!6787019))

(assert (= (and b!6787014 (not c!1261239)) b!6787015))

(declare-fun m!7535170 () Bool)

(assert (=> b!6787021 m!7535170))

(assert (=> b!6787017 m!7534188))

(declare-fun m!7535172 () Bool)

(assert (=> b!6787017 m!7535172))

(declare-fun m!7535174 () Bool)

(assert (=> b!6787020 m!7535174))

(declare-fun m!7535176 () Bool)

(assert (=> b!6787015 m!7535176))

(declare-fun m!7535178 () Bool)

(assert (=> b!6787016 m!7535178))

(assert (=> b!6787014 m!7534188))

(declare-fun m!7535180 () Bool)

(assert (=> b!6787014 m!7535180))

(assert (=> b!6787014 m!7535180))

(declare-fun m!7535182 () Bool)

(assert (=> b!6787014 m!7535182))

(declare-fun m!7535184 () Bool)

(assert (=> d!2132523 m!7535184))

(assert (=> d!2132523 m!7534188))

(declare-fun m!7535186 () Bool)

(assert (=> d!2132523 m!7535186))

(assert (=> b!6787019 m!7534188))

(declare-fun m!7535188 () Bool)

(assert (=> b!6787019 m!7535188))

(assert (=> d!2132115 d!2132523))

(declare-fun bs!1808023 () Bool)

(declare-fun d!2132525 () Bool)

(assert (= bs!1808023 (and d!2132525 d!2132185)))

(declare-fun lambda!382217 () Int)

(assert (=> bs!1808023 (= lambda!382217 lambda!382159)))

(declare-fun bs!1808024 () Bool)

(assert (= bs!1808024 (and d!2132525 d!2132509)))

(assert (=> bs!1808024 (= lambda!382217 lambda!382211)))

(declare-fun bs!1808025 () Bool)

(assert (= bs!1808025 (and d!2132525 d!2132203)))

(assert (=> bs!1808025 (= lambda!382217 lambda!382166)))

(declare-fun bs!1808026 () Bool)

(assert (= bs!1808026 (and d!2132525 d!2132365)))

(assert (=> bs!1808026 (= lambda!382217 lambda!382188)))

(declare-fun bs!1808027 () Bool)

(assert (= bs!1808027 (and d!2132525 d!2132523)))

(assert (=> bs!1808027 (= lambda!382217 lambda!382214)))

(declare-fun bs!1808028 () Bool)

(assert (= bs!1808028 (and d!2132525 d!2132183)))

(assert (=> bs!1808028 (= lambda!382217 lambda!382156)))

(declare-fun bs!1808029 () Bool)

(assert (= bs!1808029 (and d!2132525 d!2132205)))

(assert (=> bs!1808029 (= lambda!382217 lambda!382167)))

(declare-fun bs!1808030 () Bool)

(assert (= bs!1808030 (and d!2132525 d!2132505)))

(assert (=> bs!1808030 (= lambda!382217 lambda!382210)))

(declare-fun bs!1808031 () Bool)

(assert (= bs!1808031 (and d!2132525 d!2132491)))

(assert (=> bs!1808031 (= lambda!382217 lambda!382209)))

(declare-fun bs!1808032 () Bool)

(assert (= bs!1808032 (and d!2132525 d!2132187)))

(assert (=> bs!1808032 (= lambda!382217 lambda!382162)))

(declare-fun bs!1808033 () Bool)

(assert (= bs!1808033 (and d!2132525 d!2132123)))

(assert (=> bs!1808033 (= lambda!382217 lambda!382132)))

(declare-fun lt!2445737 () List!66120)

(assert (=> d!2132525 (forall!15799 lt!2445737 lambda!382217)))

(declare-fun e!4096764 () List!66120)

(assert (=> d!2132525 (= lt!2445737 e!4096764)))

(declare-fun c!1261242 () Bool)

(assert (=> d!2132525 (= c!1261242 ((_ is Cons!65998) (Cons!65998 lt!2445587 Nil!65998)))))

(assert (=> d!2132525 (= (unfocusZipperList!2028 (Cons!65998 lt!2445587 Nil!65998)) lt!2445737)))

(declare-fun b!6787030 () Bool)

(assert (=> b!6787030 (= e!4096764 (Cons!65996 (generalisedConcat!2204 (exprs!6491 (h!72446 (Cons!65998 lt!2445587 Nil!65998)))) (unfocusZipperList!2028 (t!379841 (Cons!65998 lt!2445587 Nil!65998)))))))

(declare-fun b!6787031 () Bool)

(assert (=> b!6787031 (= e!4096764 Nil!65996)))

(assert (= (and d!2132525 c!1261242) b!6787030))

(assert (= (and d!2132525 (not c!1261242)) b!6787031))

(declare-fun m!7535190 () Bool)

(assert (=> d!2132525 m!7535190))

(declare-fun m!7535192 () Bool)

(assert (=> b!6787030 m!7535192))

(declare-fun m!7535194 () Bool)

(assert (=> b!6787030 m!7535194))

(assert (=> d!2132115 d!2132525))

(declare-fun b!6787032 () Bool)

(declare-fun e!4096765 () Bool)

(declare-fun e!4096767 () Bool)

(assert (=> b!6787032 (= e!4096765 e!4096767)))

(declare-fun c!1261243 () Bool)

(assert (=> b!6787032 (= c!1261243 ((_ is EmptyLang!16607) (derivativeStep!5271 r!7292 (head!13624 s!2326))))))

(declare-fun b!6787033 () Bool)

(declare-fun e!4096766 () Bool)

(declare-fun e!4096769 () Bool)

(assert (=> b!6787033 (= e!4096766 e!4096769)))

(declare-fun res!2774053 () Bool)

(assert (=> b!6787033 (=> (not res!2774053) (not e!4096769))))

(declare-fun lt!2445738 () Bool)

(assert (=> b!6787033 (= res!2774053 (not lt!2445738))))

(declare-fun b!6787034 () Bool)

(declare-fun res!2774055 () Bool)

(assert (=> b!6787034 (=> res!2774055 e!4096766)))

(declare-fun e!4096771 () Bool)

(assert (=> b!6787034 (= res!2774055 e!4096771)))

(declare-fun res!2774056 () Bool)

(assert (=> b!6787034 (=> (not res!2774056) (not e!4096771))))

(assert (=> b!6787034 (= res!2774056 lt!2445738)))

(declare-fun b!6787035 () Bool)

(declare-fun res!2774051 () Bool)

(assert (=> b!6787035 (=> (not res!2774051) (not e!4096771))))

(assert (=> b!6787035 (= res!2774051 (isEmpty!38362 (tail!12709 (tail!12709 s!2326))))))

(declare-fun b!6787036 () Bool)

(declare-fun res!2774052 () Bool)

(assert (=> b!6787036 (=> res!2774052 e!4096766)))

(assert (=> b!6787036 (= res!2774052 (not ((_ is ElementMatch!16607) (derivativeStep!5271 r!7292 (head!13624 s!2326)))))))

(assert (=> b!6787036 (= e!4096767 e!4096766)))

(declare-fun d!2132527 () Bool)

(assert (=> d!2132527 e!4096765))

(declare-fun c!1261244 () Bool)

(assert (=> d!2132527 (= c!1261244 ((_ is EmptyExpr!16607) (derivativeStep!5271 r!7292 (head!13624 s!2326))))))

(declare-fun e!4096768 () Bool)

(assert (=> d!2132527 (= lt!2445738 e!4096768)))

(declare-fun c!1261245 () Bool)

(assert (=> d!2132527 (= c!1261245 (isEmpty!38362 (tail!12709 s!2326)))))

(assert (=> d!2132527 (validRegex!8343 (derivativeStep!5271 r!7292 (head!13624 s!2326)))))

(assert (=> d!2132527 (= (matchR!8790 (derivativeStep!5271 r!7292 (head!13624 s!2326)) (tail!12709 s!2326)) lt!2445738)))

(declare-fun b!6787037 () Bool)

(declare-fun call!616087 () Bool)

(assert (=> b!6787037 (= e!4096765 (= lt!2445738 call!616087))))

(declare-fun b!6787038 () Bool)

(assert (=> b!6787038 (= e!4096767 (not lt!2445738))))

(declare-fun bm!616082 () Bool)

(assert (=> bm!616082 (= call!616087 (isEmpty!38362 (tail!12709 s!2326)))))

(declare-fun b!6787039 () Bool)

(declare-fun e!4096770 () Bool)

(assert (=> b!6787039 (= e!4096769 e!4096770)))

(declare-fun res!2774049 () Bool)

(assert (=> b!6787039 (=> res!2774049 e!4096770)))

(assert (=> b!6787039 (= res!2774049 call!616087)))

(declare-fun b!6787040 () Bool)

(assert (=> b!6787040 (= e!4096770 (not (= (head!13624 (tail!12709 s!2326)) (c!1260825 (derivativeStep!5271 r!7292 (head!13624 s!2326))))))))

(declare-fun b!6787041 () Bool)

(assert (=> b!6787041 (= e!4096771 (= (head!13624 (tail!12709 s!2326)) (c!1260825 (derivativeStep!5271 r!7292 (head!13624 s!2326)))))))

(declare-fun b!6787042 () Bool)

(declare-fun res!2774054 () Bool)

(assert (=> b!6787042 (=> (not res!2774054) (not e!4096771))))

(assert (=> b!6787042 (= res!2774054 (not call!616087))))

(declare-fun b!6787043 () Bool)

(assert (=> b!6787043 (= e!4096768 (matchR!8790 (derivativeStep!5271 (derivativeStep!5271 r!7292 (head!13624 s!2326)) (head!13624 (tail!12709 s!2326))) (tail!12709 (tail!12709 s!2326))))))

(declare-fun b!6787044 () Bool)

(declare-fun res!2774050 () Bool)

(assert (=> b!6787044 (=> res!2774050 e!4096770)))

(assert (=> b!6787044 (= res!2774050 (not (isEmpty!38362 (tail!12709 (tail!12709 s!2326)))))))

(declare-fun b!6787045 () Bool)

(assert (=> b!6787045 (= e!4096768 (nullable!6586 (derivativeStep!5271 r!7292 (head!13624 s!2326))))))

(assert (= (and d!2132527 c!1261245) b!6787045))

(assert (= (and d!2132527 (not c!1261245)) b!6787043))

(assert (= (and d!2132527 c!1261244) b!6787037))

(assert (= (and d!2132527 (not c!1261244)) b!6787032))

(assert (= (and b!6787032 c!1261243) b!6787038))

(assert (= (and b!6787032 (not c!1261243)) b!6787036))

(assert (= (and b!6787036 (not res!2774052)) b!6787034))

(assert (= (and b!6787034 res!2774056) b!6787042))

(assert (= (and b!6787042 res!2774054) b!6787035))

(assert (= (and b!6787035 res!2774051) b!6787041))

(assert (= (and b!6787034 (not res!2774055)) b!6787033))

(assert (= (and b!6787033 res!2774053) b!6787039))

(assert (= (and b!6787039 (not res!2774049)) b!6787044))

(assert (= (and b!6787044 (not res!2774050)) b!6787040))

(assert (= (or b!6787037 b!6787042 b!6787039) bm!616082))

(assert (=> b!6787040 m!7534072))

(assert (=> b!6787040 m!7535024))

(assert (=> d!2132527 m!7534072))

(assert (=> d!2132527 m!7534078))

(assert (=> d!2132527 m!7534070))

(declare-fun m!7535196 () Bool)

(assert (=> d!2132527 m!7535196))

(assert (=> b!6787043 m!7534072))

(assert (=> b!6787043 m!7535024))

(assert (=> b!6787043 m!7534070))

(assert (=> b!6787043 m!7535024))

(declare-fun m!7535198 () Bool)

(assert (=> b!6787043 m!7535198))

(assert (=> b!6787043 m!7534072))

(assert (=> b!6787043 m!7535030))

(assert (=> b!6787043 m!7535198))

(assert (=> b!6787043 m!7535030))

(declare-fun m!7535200 () Bool)

(assert (=> b!6787043 m!7535200))

(assert (=> b!6787045 m!7534070))

(declare-fun m!7535202 () Bool)

(assert (=> b!6787045 m!7535202))

(assert (=> b!6787041 m!7534072))

(assert (=> b!6787041 m!7535024))

(assert (=> bm!616082 m!7534072))

(assert (=> bm!616082 m!7534078))

(assert (=> b!6787044 m!7534072))

(assert (=> b!6787044 m!7535030))

(assert (=> b!6787044 m!7535030))

(assert (=> b!6787044 m!7535036))

(assert (=> b!6787035 m!7534072))

(assert (=> b!6787035 m!7535030))

(assert (=> b!6787035 m!7535030))

(assert (=> b!6787035 m!7535036))

(assert (=> b!6785824 d!2132527))

(declare-fun b!6787047 () Bool)

(declare-fun e!4096773 () Regex!16607)

(declare-fun e!4096774 () Regex!16607)

(assert (=> b!6787047 (= e!4096773 e!4096774)))

(declare-fun c!1261248 () Bool)

(assert (=> b!6787047 (= c!1261248 ((_ is ElementMatch!16607) r!7292))))

(declare-fun b!6787048 () Bool)

(assert (=> b!6787048 (= e!4096774 (ite (= (head!13624 s!2326) (c!1260825 r!7292)) EmptyExpr!16607 EmptyLang!16607))))

(declare-fun c!1261246 () Bool)

(declare-fun bm!616083 () Bool)

(declare-fun c!1261249 () Bool)

(declare-fun call!616090 () Regex!16607)

(declare-fun c!1261250 () Bool)

(assert (=> bm!616083 (= call!616090 (derivativeStep!5271 (ite c!1261246 (regTwo!33727 r!7292) (ite c!1261250 (reg!16936 r!7292) (ite c!1261249 (regTwo!33726 r!7292) (regOne!33726 r!7292)))) (head!13624 s!2326)))))

(declare-fun b!6787049 () Bool)

(declare-fun e!4096775 () Regex!16607)

(declare-fun e!4096776 () Regex!16607)

(assert (=> b!6787049 (= e!4096775 e!4096776)))

(assert (=> b!6787049 (= c!1261250 ((_ is Star!16607) r!7292))))

(declare-fun b!6787050 () Bool)

(assert (=> b!6787050 (= c!1261249 (nullable!6586 (regOne!33726 r!7292)))))

(declare-fun e!4096772 () Regex!16607)

(assert (=> b!6787050 (= e!4096776 e!4096772)))

(declare-fun b!6787051 () Bool)

(declare-fun call!616089 () Regex!16607)

(assert (=> b!6787051 (= e!4096776 (Concat!25452 call!616089 r!7292))))

(declare-fun b!6787052 () Bool)

(declare-fun call!616091 () Regex!16607)

(assert (=> b!6787052 (= e!4096772 (Union!16607 (Concat!25452 call!616091 (regTwo!33726 r!7292)) EmptyLang!16607))))

(declare-fun bm!616084 () Bool)

(assert (=> bm!616084 (= call!616089 call!616090)))

(declare-fun call!616088 () Regex!16607)

(declare-fun bm!616085 () Bool)

(assert (=> bm!616085 (= call!616088 (derivativeStep!5271 (ite c!1261246 (regOne!33727 r!7292) (regOne!33726 r!7292)) (head!13624 s!2326)))))

(declare-fun bm!616086 () Bool)

(assert (=> bm!616086 (= call!616091 call!616089)))

(declare-fun b!6787053 () Bool)

(assert (=> b!6787053 (= c!1261246 ((_ is Union!16607) r!7292))))

(assert (=> b!6787053 (= e!4096774 e!4096775)))

(declare-fun b!6787046 () Bool)

(assert (=> b!6787046 (= e!4096775 (Union!16607 call!616088 call!616090))))

(declare-fun d!2132529 () Bool)

(declare-fun lt!2445739 () Regex!16607)

(assert (=> d!2132529 (validRegex!8343 lt!2445739)))

(assert (=> d!2132529 (= lt!2445739 e!4096773)))

(declare-fun c!1261247 () Bool)

(assert (=> d!2132529 (= c!1261247 (or ((_ is EmptyExpr!16607) r!7292) ((_ is EmptyLang!16607) r!7292)))))

(assert (=> d!2132529 (validRegex!8343 r!7292)))

(assert (=> d!2132529 (= (derivativeStep!5271 r!7292 (head!13624 s!2326)) lt!2445739)))

(declare-fun b!6787054 () Bool)

(assert (=> b!6787054 (= e!4096773 EmptyLang!16607)))

(declare-fun b!6787055 () Bool)

(assert (=> b!6787055 (= e!4096772 (Union!16607 (Concat!25452 call!616088 (regTwo!33726 r!7292)) call!616091))))

(assert (= (and d!2132529 c!1261247) b!6787054))

(assert (= (and d!2132529 (not c!1261247)) b!6787047))

(assert (= (and b!6787047 c!1261248) b!6787048))

(assert (= (and b!6787047 (not c!1261248)) b!6787053))

(assert (= (and b!6787053 c!1261246) b!6787046))

(assert (= (and b!6787053 (not c!1261246)) b!6787049))

(assert (= (and b!6787049 c!1261250) b!6787051))

(assert (= (and b!6787049 (not c!1261250)) b!6787050))

(assert (= (and b!6787050 c!1261249) b!6787055))

(assert (= (and b!6787050 (not c!1261249)) b!6787052))

(assert (= (or b!6787055 b!6787052) bm!616086))

(assert (= (or b!6787051 bm!616086) bm!616084))

(assert (= (or b!6787046 bm!616084) bm!616083))

(assert (= (or b!6787046 b!6787055) bm!616085))

(assert (=> bm!616083 m!7534068))

(declare-fun m!7535204 () Bool)

(assert (=> bm!616083 m!7535204))

(assert (=> b!6787050 m!7534458))

(assert (=> bm!616085 m!7534068))

(declare-fun m!7535206 () Bool)

(assert (=> bm!616085 m!7535206))

(declare-fun m!7535208 () Bool)

(assert (=> d!2132529 m!7535208))

(assert (=> d!2132529 m!7533950))

(assert (=> b!6785824 d!2132529))

(assert (=> b!6785824 d!2132457))

(assert (=> b!6785824 d!2132359))

(assert (=> bs!1807769 d!2132201))

(declare-fun d!2132531 () Bool)

(assert (=> d!2132531 (= (isEmpty!38364 (tail!12710 (unfocusZipperList!2028 zl!343))) ((_ is Nil!65996) (tail!12710 (unfocusZipperList!2028 zl!343))))))

(assert (=> b!6786235 d!2132531))

(declare-fun d!2132533 () Bool)

(assert (=> d!2132533 (= (tail!12710 (unfocusZipperList!2028 zl!343)) (t!379839 (unfocusZipperList!2028 zl!343)))))

(assert (=> b!6786235 d!2132533))

(declare-fun d!2132535 () Bool)

(assert (=> d!2132535 true))

(declare-fun setRes!46444 () Bool)

(assert (=> d!2132535 setRes!46444))

(declare-fun condSetEmpty!46444 () Bool)

(declare-fun res!2774057 () (InoxSet Context!11982))

(assert (=> d!2132535 (= condSetEmpty!46444 (= res!2774057 ((as const (Array Context!11982 Bool)) false)))))

(assert (=> d!2132535 (= (choose!50549 lt!2445589 lambda!382085) res!2774057)))

(declare-fun setIsEmpty!46444 () Bool)

(assert (=> setIsEmpty!46444 setRes!46444))

(declare-fun tp!1858973 () Bool)

(declare-fun setElem!46444 () Context!11982)

(declare-fun setNonEmpty!46444 () Bool)

(declare-fun e!4096777 () Bool)

(assert (=> setNonEmpty!46444 (= setRes!46444 (and tp!1858973 (inv!84764 setElem!46444) e!4096777))))

(declare-fun setRest!46444 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46444 (= res!2774057 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46444 true) setRest!46444))))

(declare-fun b!6787056 () Bool)

(declare-fun tp!1858972 () Bool)

(assert (=> b!6787056 (= e!4096777 tp!1858972)))

(assert (= (and d!2132535 condSetEmpty!46444) setIsEmpty!46444))

(assert (= (and d!2132535 (not condSetEmpty!46444)) setNonEmpty!46444))

(assert (= setNonEmpty!46444 b!6787056))

(declare-fun m!7535210 () Bool)

(assert (=> setNonEmpty!46444 m!7535210))

(assert (=> d!2132193 d!2132535))

(declare-fun bs!1808051 () Bool)

(declare-fun b!6787059 () Bool)

(assert (= bs!1808051 (and b!6787059 b!6785576)))

(declare-fun lambda!382220 () Int)

(assert (=> bs!1808051 (not (= lambda!382220 lambda!382084))))

(declare-fun bs!1808052 () Bool)

(assert (= bs!1808052 (and b!6787059 d!2132181)))

(assert (=> bs!1808052 (not (= lambda!382220 lambda!382153))))

(declare-fun bs!1808053 () Bool)

(assert (= bs!1808053 (and b!6787059 d!2132173)))

(assert (=> bs!1808053 (= (and (= (reg!16936 (regOne!33727 lt!2445581)) (reg!16936 r!7292)) (= (regOne!33727 lt!2445581) (Star!16607 (reg!16936 r!7292)))) (= lambda!382220 lambda!382150))))

(declare-fun bs!1808054 () Bool)

(assert (= bs!1808054 (and b!6787059 d!2132161)))

(assert (=> bs!1808054 (not (= lambda!382220 lambda!382143))))

(declare-fun bs!1808055 () Bool)

(assert (= bs!1808055 (and b!6787059 d!2132385)))

(assert (=> bs!1808055 (not (= lambda!382220 lambda!382197))))

(assert (=> bs!1808051 (not (= lambda!382220 lambda!382082))))

(declare-fun bs!1808056 () Bool)

(assert (= bs!1808056 (and b!6787059 b!6785838)))

(assert (=> bs!1808056 (not (= lambda!382220 lambda!382121))))

(declare-fun bs!1808057 () Bool)

(assert (= bs!1808057 (and b!6787059 b!6785833)))

(assert (=> bs!1808057 (= (and (= (reg!16936 (regOne!33727 lt!2445581)) (reg!16936 lt!2445581)) (= (regOne!33727 lt!2445581) lt!2445581)) (= lambda!382220 lambda!382120))))

(assert (=> bs!1808053 (not (= lambda!382220 lambda!382149))))

(declare-fun bs!1808058 () Bool)

(assert (= bs!1808058 (and b!6787059 b!6785656)))

(assert (=> bs!1808058 (= (and (= (reg!16936 (regOne!33727 lt!2445581)) (reg!16936 r!7292)) (= (regOne!33727 lt!2445581) r!7292)) (= lambda!382220 lambda!382094))))

(assert (=> bs!1808055 (= (and (= (reg!16936 (regOne!33727 lt!2445581)) (reg!16936 r!7292)) (= (regOne!33727 lt!2445581) (Star!16607 (reg!16936 r!7292)))) (= lambda!382220 lambda!382198))))

(declare-fun bs!1808059 () Bool)

(assert (= bs!1808059 (and b!6787059 b!6785661)))

(assert (=> bs!1808059 (not (= lambda!382220 lambda!382096))))

(assert (=> bs!1808051 (= (and (= (reg!16936 (regOne!33727 lt!2445581)) (reg!16936 r!7292)) (= (regOne!33727 lt!2445581) r!7292)) (= lambda!382220 lambda!382083))))

(assert (=> bs!1808054 (not (= lambda!382220 lambda!382144))))

(assert (=> b!6787059 true))

(assert (=> b!6787059 true))

(declare-fun bs!1808060 () Bool)

(declare-fun b!6787064 () Bool)

(assert (= bs!1808060 (and b!6787064 b!6785576)))

(declare-fun lambda!382221 () Int)

(assert (=> bs!1808060 (= (and (= (regOne!33726 (regOne!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33726 (regOne!33727 lt!2445581)) r!7292)) (= lambda!382221 lambda!382084))))

(declare-fun bs!1808061 () Bool)

(assert (= bs!1808061 (and b!6787064 d!2132181)))

(assert (=> bs!1808061 (not (= lambda!382221 lambda!382153))))

(declare-fun bs!1808062 () Bool)

(assert (= bs!1808062 (and b!6787064 d!2132173)))

(assert (=> bs!1808062 (not (= lambda!382221 lambda!382150))))

(declare-fun bs!1808063 () Bool)

(assert (= bs!1808063 (and b!6787064 d!2132385)))

(assert (=> bs!1808063 (not (= lambda!382221 lambda!382197))))

(assert (=> bs!1808060 (not (= lambda!382221 lambda!382082))))

(declare-fun bs!1808064 () Bool)

(assert (= bs!1808064 (and b!6787064 b!6785838)))

(assert (=> bs!1808064 (= (and (= (regOne!33726 (regOne!33727 lt!2445581)) (regOne!33726 lt!2445581)) (= (regTwo!33726 (regOne!33727 lt!2445581)) (regTwo!33726 lt!2445581))) (= lambda!382221 lambda!382121))))

(declare-fun bs!1808065 () Bool)

(assert (= bs!1808065 (and b!6787064 b!6785833)))

(assert (=> bs!1808065 (not (= lambda!382221 lambda!382120))))

(assert (=> bs!1808062 (not (= lambda!382221 lambda!382149))))

(declare-fun bs!1808066 () Bool)

(assert (= bs!1808066 (and b!6787064 b!6785656)))

(assert (=> bs!1808066 (not (= lambda!382221 lambda!382094))))

(declare-fun bs!1808067 () Bool)

(assert (= bs!1808067 (and b!6787064 b!6787059)))

(assert (=> bs!1808067 (not (= lambda!382221 lambda!382220))))

(declare-fun bs!1808068 () Bool)

(assert (= bs!1808068 (and b!6787064 d!2132161)))

(assert (=> bs!1808068 (not (= lambda!382221 lambda!382143))))

(assert (=> bs!1808063 (not (= lambda!382221 lambda!382198))))

(declare-fun bs!1808069 () Bool)

(assert (= bs!1808069 (and b!6787064 b!6785661)))

(assert (=> bs!1808069 (= (and (= (regOne!33726 (regOne!33727 lt!2445581)) (regOne!33726 r!7292)) (= (regTwo!33726 (regOne!33727 lt!2445581)) (regTwo!33726 r!7292))) (= lambda!382221 lambda!382096))))

(assert (=> bs!1808060 (not (= lambda!382221 lambda!382083))))

(assert (=> bs!1808068 (= (and (= (regOne!33726 (regOne!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33726 (regOne!33727 lt!2445581)) r!7292)) (= lambda!382221 lambda!382144))))

(assert (=> b!6787064 true))

(assert (=> b!6787064 true))

(declare-fun b!6787057 () Bool)

(declare-fun c!1261252 () Bool)

(assert (=> b!6787057 (= c!1261252 ((_ is ElementMatch!16607) (regOne!33727 lt!2445581)))))

(declare-fun e!4096782 () Bool)

(declare-fun e!4096778 () Bool)

(assert (=> b!6787057 (= e!4096782 e!4096778)))

(declare-fun b!6787058 () Bool)

(declare-fun e!4096779 () Bool)

(declare-fun call!616093 () Bool)

(assert (=> b!6787058 (= e!4096779 call!616093)))

(declare-fun e!4096784 () Bool)

(declare-fun call!616092 () Bool)

(assert (=> b!6787059 (= e!4096784 call!616092)))

(declare-fun b!6787060 () Bool)

(declare-fun c!1261254 () Bool)

(assert (=> b!6787060 (= c!1261254 ((_ is Union!16607) (regOne!33727 lt!2445581)))))

(declare-fun e!4096781 () Bool)

(assert (=> b!6787060 (= e!4096778 e!4096781)))

(declare-fun b!6787062 () Bool)

(assert (=> b!6787062 (= e!4096778 (= s!2326 (Cons!65997 (c!1260825 (regOne!33727 lt!2445581)) Nil!65997)))))

(declare-fun b!6787063 () Bool)

(declare-fun e!4096783 () Bool)

(assert (=> b!6787063 (= e!4096783 (matchRSpec!3708 (regTwo!33727 (regOne!33727 lt!2445581)) s!2326))))

(declare-fun bm!616087 () Bool)

(assert (=> bm!616087 (= call!616093 (isEmpty!38362 s!2326))))

(declare-fun e!4096780 () Bool)

(assert (=> b!6787064 (= e!4096780 call!616092)))

(declare-fun d!2132537 () Bool)

(declare-fun c!1261253 () Bool)

(assert (=> d!2132537 (= c!1261253 ((_ is EmptyExpr!16607) (regOne!33727 lt!2445581)))))

(assert (=> d!2132537 (= (matchRSpec!3708 (regOne!33727 lt!2445581) s!2326) e!4096779)))

(declare-fun b!6787061 () Bool)

(assert (=> b!6787061 (= e!4096781 e!4096783)))

(declare-fun res!2774059 () Bool)

(assert (=> b!6787061 (= res!2774059 (matchRSpec!3708 (regOne!33727 (regOne!33727 lt!2445581)) s!2326))))

(assert (=> b!6787061 (=> res!2774059 e!4096783)))

(declare-fun b!6787065 () Bool)

(declare-fun res!2774058 () Bool)

(assert (=> b!6787065 (=> res!2774058 e!4096784)))

(assert (=> b!6787065 (= res!2774058 call!616093)))

(assert (=> b!6787065 (= e!4096780 e!4096784)))

(declare-fun b!6787066 () Bool)

(assert (=> b!6787066 (= e!4096779 e!4096782)))

(declare-fun res!2774060 () Bool)

(assert (=> b!6787066 (= res!2774060 (not ((_ is EmptyLang!16607) (regOne!33727 lt!2445581))))))

(assert (=> b!6787066 (=> (not res!2774060) (not e!4096782))))

(declare-fun bm!616088 () Bool)

(declare-fun c!1261251 () Bool)

(assert (=> bm!616088 (= call!616092 (Exists!3675 (ite c!1261251 lambda!382220 lambda!382221)))))

(declare-fun b!6787067 () Bool)

(assert (=> b!6787067 (= e!4096781 e!4096780)))

(assert (=> b!6787067 (= c!1261251 ((_ is Star!16607) (regOne!33727 lt!2445581)))))

(assert (= (and d!2132537 c!1261253) b!6787058))

(assert (= (and d!2132537 (not c!1261253)) b!6787066))

(assert (= (and b!6787066 res!2774060) b!6787057))

(assert (= (and b!6787057 c!1261252) b!6787062))

(assert (= (and b!6787057 (not c!1261252)) b!6787060))

(assert (= (and b!6787060 c!1261254) b!6787061))

(assert (= (and b!6787060 (not c!1261254)) b!6787067))

(assert (= (and b!6787061 (not res!2774059)) b!6787063))

(assert (= (and b!6787067 c!1261251) b!6787065))

(assert (= (and b!6787067 (not c!1261251)) b!6787064))

(assert (= (and b!6787065 (not res!2774058)) b!6787059))

(assert (= (or b!6787059 b!6787064) bm!616088))

(assert (= (or b!6787058 b!6787065) bm!616087))

(declare-fun m!7535228 () Bool)

(assert (=> b!6787063 m!7535228))

(assert (=> bm!616087 m!7533888))

(declare-fun m!7535230 () Bool)

(assert (=> b!6787061 m!7535230))

(declare-fun m!7535232 () Bool)

(assert (=> bm!616088 m!7535232))

(assert (=> b!6785835 d!2132537))

(declare-fun d!2132549 () Bool)

(declare-fun res!2774074 () Bool)

(declare-fun e!4096801 () Bool)

(assert (=> d!2132549 (=> res!2774074 e!4096801)))

(assert (=> d!2132549 (= res!2774074 ((_ is ElementMatch!16607) (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))))))

(assert (=> d!2132549 (= (validRegex!8343 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))) e!4096801)))

(declare-fun b!6787090 () Bool)

(declare-fun res!2774075 () Bool)

(declare-fun e!4096805 () Bool)

(assert (=> b!6787090 (=> res!2774075 e!4096805)))

(assert (=> b!6787090 (= res!2774075 (not ((_ is Concat!25452) (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292))))))))

(declare-fun e!4096806 () Bool)

(assert (=> b!6787090 (= e!4096806 e!4096805)))

(declare-fun b!6787091 () Bool)

(declare-fun e!4096803 () Bool)

(declare-fun call!616100 () Bool)

(assert (=> b!6787091 (= e!4096803 call!616100)))

(declare-fun b!6787092 () Bool)

(declare-fun e!4096804 () Bool)

(declare-fun e!4096802 () Bool)

(assert (=> b!6787092 (= e!4096804 e!4096802)))

(declare-fun res!2774071 () Bool)

(assert (=> b!6787092 (= res!2774071 (not (nullable!6586 (reg!16936 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))))))))

(assert (=> b!6787092 (=> (not res!2774071) (not e!4096802))))

(declare-fun bm!616094 () Bool)

(declare-fun call!616099 () Bool)

(declare-fun c!1261261 () Bool)

(assert (=> bm!616094 (= call!616099 (validRegex!8343 (ite c!1261261 (regOne!33727 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))) (regOne!33726 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))))))))

(declare-fun bm!616095 () Bool)

(declare-fun call!616101 () Bool)

(assert (=> bm!616095 (= call!616100 call!616101)))

(declare-fun b!6787093 () Bool)

(assert (=> b!6787093 (= e!4096804 e!4096806)))

(assert (=> b!6787093 (= c!1261261 ((_ is Union!16607) (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))))))

(declare-fun b!6787094 () Bool)

(assert (=> b!6787094 (= e!4096801 e!4096804)))

(declare-fun c!1261262 () Bool)

(assert (=> b!6787094 (= c!1261262 ((_ is Star!16607) (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))))))

(declare-fun b!6787095 () Bool)

(declare-fun e!4096807 () Bool)

(assert (=> b!6787095 (= e!4096807 call!616100)))

(declare-fun b!6787096 () Bool)

(assert (=> b!6787096 (= e!4096805 e!4096807)))

(declare-fun res!2774072 () Bool)

(assert (=> b!6787096 (=> (not res!2774072) (not e!4096807))))

(assert (=> b!6787096 (= res!2774072 call!616099)))

(declare-fun b!6787097 () Bool)

(assert (=> b!6787097 (= e!4096802 call!616101)))

(declare-fun bm!616096 () Bool)

(assert (=> bm!616096 (= call!616101 (validRegex!8343 (ite c!1261262 (reg!16936 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))) (ite c!1261261 (regTwo!33727 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292)))) (regTwo!33726 (ite c!1260912 (reg!16936 r!7292) (ite c!1260911 (regTwo!33727 r!7292) (regTwo!33726 r!7292))))))))))

(declare-fun b!6787098 () Bool)

(declare-fun res!2774073 () Bool)

(assert (=> b!6787098 (=> (not res!2774073) (not e!4096803))))

(assert (=> b!6787098 (= res!2774073 call!616099)))

(assert (=> b!6787098 (= e!4096806 e!4096803)))

(assert (= (and d!2132549 (not res!2774074)) b!6787094))

(assert (= (and b!6787094 c!1261262) b!6787092))

(assert (= (and b!6787094 (not c!1261262)) b!6787093))

(assert (= (and b!6787092 res!2774071) b!6787097))

(assert (= (and b!6787093 c!1261261) b!6787098))

(assert (= (and b!6787093 (not c!1261261)) b!6787090))

(assert (= (and b!6787098 res!2774073) b!6787091))

(assert (= (and b!6787090 (not res!2774075)) b!6787096))

(assert (= (and b!6787096 res!2774072) b!6787095))

(assert (= (or b!6787091 b!6787095) bm!616095))

(assert (= (or b!6787098 b!6787096) bm!616094))

(assert (= (or b!6787097 bm!616095) bm!616096))

(declare-fun m!7535234 () Bool)

(assert (=> b!6787092 m!7535234))

(declare-fun m!7535236 () Bool)

(assert (=> bm!616094 m!7535236))

(declare-fun m!7535238 () Bool)

(assert (=> bm!616096 m!7535238))

(assert (=> bm!615870 d!2132549))

(assert (=> d!2132191 d!2132193))

(declare-fun d!2132551 () Bool)

(assert (=> d!2132551 (= (flatMap!2088 lt!2445589 lambda!382085) (dynLambda!26338 lambda!382085 lt!2445587))))

(assert (=> d!2132551 true))

(declare-fun _$13!4212 () Unit!159905)

(assert (=> d!2132551 (= (choose!50548 lt!2445589 lt!2445587 lambda!382085) _$13!4212)))

(declare-fun b_lambda!255589 () Bool)

(assert (=> (not b_lambda!255589) (not d!2132551)))

(declare-fun bs!1808081 () Bool)

(assert (= bs!1808081 d!2132551))

(assert (=> bs!1808081 m!7533918))

(assert (=> bs!1808081 m!7534408))

(assert (=> d!2132191 d!2132551))

(declare-fun d!2132553 () Bool)

(assert (=> d!2132553 (= ($colon$colon!2416 (exprs!6491 lt!2445602) (ite (or c!1261027 c!1261026) (regTwo!33726 (reg!16936 r!7292)) (reg!16936 r!7292))) (Cons!65996 (ite (or c!1261027 c!1261026) (regTwo!33726 (reg!16936 r!7292)) (reg!16936 r!7292)) (exprs!6491 lt!2445602)))))

(assert (=> bm!615918 d!2132553))

(assert (=> d!2132039 d!2132175))

(assert (=> d!2132039 d!2132099))

(assert (=> bm!615858 d!2132175))

(declare-fun bs!1808089 () Bool)

(declare-fun b!6787101 () Bool)

(assert (= bs!1808089 (and b!6787101 b!6785576)))

(declare-fun lambda!382223 () Int)

(assert (=> bs!1808089 (not (= lambda!382223 lambda!382084))))

(declare-fun bs!1808090 () Bool)

(assert (= bs!1808090 (and b!6787101 d!2132181)))

(assert (=> bs!1808090 (not (= lambda!382223 lambda!382153))))

(declare-fun bs!1808091 () Bool)

(assert (= bs!1808091 (and b!6787101 d!2132173)))

(assert (=> bs!1808091 (= (and (= (reg!16936 (regOne!33727 r!7292)) (reg!16936 r!7292)) (= (regOne!33727 r!7292) (Star!16607 (reg!16936 r!7292)))) (= lambda!382223 lambda!382150))))

(declare-fun bs!1808093 () Bool)

(assert (= bs!1808093 (and b!6787101 d!2132385)))

(assert (=> bs!1808093 (not (= lambda!382223 lambda!382197))))

(assert (=> bs!1808089 (not (= lambda!382223 lambda!382082))))

(declare-fun bs!1808097 () Bool)

(assert (= bs!1808097 (and b!6787101 b!6787064)))

(assert (=> bs!1808097 (not (= lambda!382223 lambda!382221))))

(declare-fun bs!1808099 () Bool)

(assert (= bs!1808099 (and b!6787101 b!6785838)))

(assert (=> bs!1808099 (not (= lambda!382223 lambda!382121))))

(declare-fun bs!1808101 () Bool)

(assert (= bs!1808101 (and b!6787101 b!6785833)))

(assert (=> bs!1808101 (= (and (= (reg!16936 (regOne!33727 r!7292)) (reg!16936 lt!2445581)) (= (regOne!33727 r!7292) lt!2445581)) (= lambda!382223 lambda!382120))))

(assert (=> bs!1808091 (not (= lambda!382223 lambda!382149))))

(declare-fun bs!1808104 () Bool)

(assert (= bs!1808104 (and b!6787101 b!6785656)))

(assert (=> bs!1808104 (= (and (= (reg!16936 (regOne!33727 r!7292)) (reg!16936 r!7292)) (= (regOne!33727 r!7292) r!7292)) (= lambda!382223 lambda!382094))))

(declare-fun bs!1808106 () Bool)

(assert (= bs!1808106 (and b!6787101 b!6787059)))

(assert (=> bs!1808106 (= (and (= (reg!16936 (regOne!33727 r!7292)) (reg!16936 (regOne!33727 lt!2445581))) (= (regOne!33727 r!7292) (regOne!33727 lt!2445581))) (= lambda!382223 lambda!382220))))

(declare-fun bs!1808108 () Bool)

(assert (= bs!1808108 (and b!6787101 d!2132161)))

(assert (=> bs!1808108 (not (= lambda!382223 lambda!382143))))

(assert (=> bs!1808093 (= (and (= (reg!16936 (regOne!33727 r!7292)) (reg!16936 r!7292)) (= (regOne!33727 r!7292) (Star!16607 (reg!16936 r!7292)))) (= lambda!382223 lambda!382198))))

(declare-fun bs!1808109 () Bool)

(assert (= bs!1808109 (and b!6787101 b!6785661)))

(assert (=> bs!1808109 (not (= lambda!382223 lambda!382096))))

(assert (=> bs!1808089 (= (and (= (reg!16936 (regOne!33727 r!7292)) (reg!16936 r!7292)) (= (regOne!33727 r!7292) r!7292)) (= lambda!382223 lambda!382083))))

(assert (=> bs!1808108 (not (= lambda!382223 lambda!382144))))

(assert (=> b!6787101 true))

(assert (=> b!6787101 true))

(declare-fun bs!1808115 () Bool)

(declare-fun b!6787106 () Bool)

(assert (= bs!1808115 (and b!6787106 b!6785576)))

(declare-fun lambda!382225 () Int)

(assert (=> bs!1808115 (= (and (= (regOne!33726 (regOne!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33726 (regOne!33727 r!7292)) r!7292)) (= lambda!382225 lambda!382084))))

(declare-fun bs!1808117 () Bool)

(assert (= bs!1808117 (and b!6787106 d!2132181)))

(assert (=> bs!1808117 (not (= lambda!382225 lambda!382153))))

(declare-fun bs!1808118 () Bool)

(assert (= bs!1808118 (and b!6787106 b!6787101)))

(assert (=> bs!1808118 (not (= lambda!382225 lambda!382223))))

(declare-fun bs!1808121 () Bool)

(assert (= bs!1808121 (and b!6787106 d!2132173)))

(assert (=> bs!1808121 (not (= lambda!382225 lambda!382150))))

(declare-fun bs!1808122 () Bool)

(assert (= bs!1808122 (and b!6787106 d!2132385)))

(assert (=> bs!1808122 (not (= lambda!382225 lambda!382197))))

(assert (=> bs!1808115 (not (= lambda!382225 lambda!382082))))

(declare-fun bs!1808123 () Bool)

(assert (= bs!1808123 (and b!6787106 b!6787064)))

(assert (=> bs!1808123 (= (and (= (regOne!33726 (regOne!33727 r!7292)) (regOne!33726 (regOne!33727 lt!2445581))) (= (regTwo!33726 (regOne!33727 r!7292)) (regTwo!33726 (regOne!33727 lt!2445581)))) (= lambda!382225 lambda!382221))))

(declare-fun bs!1808124 () Bool)

(assert (= bs!1808124 (and b!6787106 b!6785838)))

(assert (=> bs!1808124 (= (and (= (regOne!33726 (regOne!33727 r!7292)) (regOne!33726 lt!2445581)) (= (regTwo!33726 (regOne!33727 r!7292)) (regTwo!33726 lt!2445581))) (= lambda!382225 lambda!382121))))

(declare-fun bs!1808125 () Bool)

(assert (= bs!1808125 (and b!6787106 b!6785833)))

(assert (=> bs!1808125 (not (= lambda!382225 lambda!382120))))

(assert (=> bs!1808121 (not (= lambda!382225 lambda!382149))))

(declare-fun bs!1808126 () Bool)

(assert (= bs!1808126 (and b!6787106 b!6785656)))

(assert (=> bs!1808126 (not (= lambda!382225 lambda!382094))))

(declare-fun bs!1808127 () Bool)

(assert (= bs!1808127 (and b!6787106 b!6787059)))

(assert (=> bs!1808127 (not (= lambda!382225 lambda!382220))))

(declare-fun bs!1808129 () Bool)

(assert (= bs!1808129 (and b!6787106 d!2132161)))

(assert (=> bs!1808129 (not (= lambda!382225 lambda!382143))))

(assert (=> bs!1808122 (not (= lambda!382225 lambda!382198))))

(declare-fun bs!1808134 () Bool)

(assert (= bs!1808134 (and b!6787106 b!6785661)))

(assert (=> bs!1808134 (= (and (= (regOne!33726 (regOne!33727 r!7292)) (regOne!33726 r!7292)) (= (regTwo!33726 (regOne!33727 r!7292)) (regTwo!33726 r!7292))) (= lambda!382225 lambda!382096))))

(assert (=> bs!1808115 (not (= lambda!382225 lambda!382083))))

(assert (=> bs!1808129 (= (and (= (regOne!33726 (regOne!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33726 (regOne!33727 r!7292)) r!7292)) (= lambda!382225 lambda!382144))))

(assert (=> b!6787106 true))

(assert (=> b!6787106 true))

(declare-fun b!6787099 () Bool)

(declare-fun c!1261264 () Bool)

(assert (=> b!6787099 (= c!1261264 ((_ is ElementMatch!16607) (regOne!33727 r!7292)))))

(declare-fun e!4096812 () Bool)

(declare-fun e!4096808 () Bool)

(assert (=> b!6787099 (= e!4096812 e!4096808)))

(declare-fun b!6787100 () Bool)

(declare-fun e!4096809 () Bool)

(declare-fun call!616103 () Bool)

(assert (=> b!6787100 (= e!4096809 call!616103)))

(declare-fun e!4096814 () Bool)

(declare-fun call!616102 () Bool)

(assert (=> b!6787101 (= e!4096814 call!616102)))

(declare-fun b!6787102 () Bool)

(declare-fun c!1261266 () Bool)

(assert (=> b!6787102 (= c!1261266 ((_ is Union!16607) (regOne!33727 r!7292)))))

(declare-fun e!4096811 () Bool)

(assert (=> b!6787102 (= e!4096808 e!4096811)))

(declare-fun b!6787104 () Bool)

(assert (=> b!6787104 (= e!4096808 (= s!2326 (Cons!65997 (c!1260825 (regOne!33727 r!7292)) Nil!65997)))))

(declare-fun b!6787105 () Bool)

(declare-fun e!4096813 () Bool)

(assert (=> b!6787105 (= e!4096813 (matchRSpec!3708 (regTwo!33727 (regOne!33727 r!7292)) s!2326))))

(declare-fun bm!616097 () Bool)

(assert (=> bm!616097 (= call!616103 (isEmpty!38362 s!2326))))

(declare-fun e!4096810 () Bool)

(assert (=> b!6787106 (= e!4096810 call!616102)))

(declare-fun d!2132555 () Bool)

(declare-fun c!1261265 () Bool)

(assert (=> d!2132555 (= c!1261265 ((_ is EmptyExpr!16607) (regOne!33727 r!7292)))))

(assert (=> d!2132555 (= (matchRSpec!3708 (regOne!33727 r!7292) s!2326) e!4096809)))

(declare-fun b!6787103 () Bool)

(assert (=> b!6787103 (= e!4096811 e!4096813)))

(declare-fun res!2774077 () Bool)

(assert (=> b!6787103 (= res!2774077 (matchRSpec!3708 (regOne!33727 (regOne!33727 r!7292)) s!2326))))

(assert (=> b!6787103 (=> res!2774077 e!4096813)))

(declare-fun b!6787107 () Bool)

(declare-fun res!2774076 () Bool)

(assert (=> b!6787107 (=> res!2774076 e!4096814)))

(assert (=> b!6787107 (= res!2774076 call!616103)))

(assert (=> b!6787107 (= e!4096810 e!4096814)))

(declare-fun b!6787108 () Bool)

(assert (=> b!6787108 (= e!4096809 e!4096812)))

(declare-fun res!2774078 () Bool)

(assert (=> b!6787108 (= res!2774078 (not ((_ is EmptyLang!16607) (regOne!33727 r!7292))))))

(assert (=> b!6787108 (=> (not res!2774078) (not e!4096812))))

(declare-fun bm!616098 () Bool)

(declare-fun c!1261263 () Bool)

(assert (=> bm!616098 (= call!616102 (Exists!3675 (ite c!1261263 lambda!382223 lambda!382225)))))

(declare-fun b!6787109 () Bool)

(assert (=> b!6787109 (= e!4096811 e!4096810)))

(assert (=> b!6787109 (= c!1261263 ((_ is Star!16607) (regOne!33727 r!7292)))))

(assert (= (and d!2132555 c!1261265) b!6787100))

(assert (= (and d!2132555 (not c!1261265)) b!6787108))

(assert (= (and b!6787108 res!2774078) b!6787099))

(assert (= (and b!6787099 c!1261264) b!6787104))

(assert (= (and b!6787099 (not c!1261264)) b!6787102))

(assert (= (and b!6787102 c!1261266) b!6787103))

(assert (= (and b!6787102 (not c!1261266)) b!6787109))

(assert (= (and b!6787103 (not res!2774077)) b!6787105))

(assert (= (and b!6787109 c!1261263) b!6787107))

(assert (= (and b!6787109 (not c!1261263)) b!6787106))

(assert (= (and b!6787107 (not res!2774076)) b!6787101))

(assert (= (or b!6787101 b!6787106) bm!616098))

(assert (= (or b!6787100 b!6787107) bm!616097))

(declare-fun m!7535248 () Bool)

(assert (=> b!6787105 m!7535248))

(assert (=> bm!616097 m!7533888))

(declare-fun m!7535250 () Bool)

(assert (=> b!6787103 m!7535250))

(declare-fun m!7535252 () Bool)

(assert (=> bm!616098 m!7535252))

(assert (=> b!6785658 d!2132555))

(declare-fun d!2132561 () Bool)

(declare-fun c!1261267 () Bool)

(assert (=> d!2132561 (= c!1261267 (isEmpty!38362 (tail!12709 s!2326)))))

(declare-fun e!4096817 () Bool)

(assert (=> d!2132561 (= (matchZipper!2593 (derivationStepZipper!2551 z!1189 (head!13624 s!2326)) (tail!12709 s!2326)) e!4096817)))

(declare-fun b!6787112 () Bool)

(assert (=> b!6787112 (= e!4096817 (nullableZipper!2314 (derivationStepZipper!2551 z!1189 (head!13624 s!2326))))))

(declare-fun b!6787113 () Bool)

(assert (=> b!6787113 (= e!4096817 (matchZipper!2593 (derivationStepZipper!2551 (derivationStepZipper!2551 z!1189 (head!13624 s!2326)) (head!13624 (tail!12709 s!2326))) (tail!12709 (tail!12709 s!2326))))))

(assert (= (and d!2132561 c!1261267) b!6787112))

(assert (= (and d!2132561 (not c!1261267)) b!6787113))

(assert (=> d!2132561 m!7534072))

(assert (=> d!2132561 m!7534078))

(assert (=> b!6787112 m!7534172))

(declare-fun m!7535260 () Bool)

(assert (=> b!6787112 m!7535260))

(assert (=> b!6787113 m!7534072))

(assert (=> b!6787113 m!7535024))

(assert (=> b!6787113 m!7534172))

(assert (=> b!6787113 m!7535024))

(declare-fun m!7535262 () Bool)

(assert (=> b!6787113 m!7535262))

(assert (=> b!6787113 m!7534072))

(assert (=> b!6787113 m!7535030))

(assert (=> b!6787113 m!7535262))

(assert (=> b!6787113 m!7535030))

(declare-fun m!7535266 () Bool)

(assert (=> b!6787113 m!7535266))

(assert (=> b!6785982 d!2132561))

(declare-fun bs!1808145 () Bool)

(declare-fun d!2132569 () Bool)

(assert (= bs!1808145 (and d!2132569 b!6785571)))

(declare-fun lambda!382227 () Int)

(assert (=> bs!1808145 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382227 lambda!382085))))

(declare-fun bs!1808146 () Bool)

(assert (= bs!1808146 (and d!2132569 d!2132195)))

(assert (=> bs!1808146 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382227 lambda!382165))))

(declare-fun bs!1808147 () Bool)

(assert (= bs!1808147 (and d!2132569 d!2132221)))

(assert (=> bs!1808147 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382227 lambda!382168))))

(declare-fun bs!1808148 () Bool)

(assert (= bs!1808148 (and d!2132569 d!2132235)))

(assert (=> bs!1808148 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382227 lambda!382169))))

(assert (=> d!2132569 true))

(assert (=> d!2132569 (= (derivationStepZipper!2551 z!1189 (head!13624 s!2326)) (flatMap!2088 z!1189 lambda!382227))))

(declare-fun bs!1808149 () Bool)

(assert (= bs!1808149 d!2132569))

(declare-fun m!7535268 () Bool)

(assert (=> bs!1808149 m!7535268))

(assert (=> b!6785982 d!2132569))

(assert (=> b!6785982 d!2132457))

(assert (=> b!6785982 d!2132359))

(declare-fun d!2132571 () Bool)

(assert (=> d!2132571 (= (flatMap!2088 lt!2445592 lambda!382165) (choose!50549 lt!2445592 lambda!382165))))

(declare-fun bs!1808150 () Bool)

(assert (= bs!1808150 d!2132571))

(declare-fun m!7535270 () Bool)

(assert (=> bs!1808150 m!7535270))

(assert (=> d!2132195 d!2132571))

(declare-fun b!6787149 () Bool)

(declare-fun e!4096840 () List!66121)

(assert (=> b!6787149 (= e!4096840 (Cons!65997 (h!72445 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997))) (++!14763 (t!379840 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997))) (t!379840 s!2326))))))

(declare-fun b!6787151 () Bool)

(declare-fun e!4096839 () Bool)

(declare-fun lt!2445743 () List!66121)

(assert (=> b!6787151 (= e!4096839 (or (not (= (t!379840 s!2326) Nil!65997)) (= lt!2445743 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)))))))

(declare-fun d!2132573 () Bool)

(assert (=> d!2132573 e!4096839))

(declare-fun res!2774093 () Bool)

(assert (=> d!2132573 (=> (not res!2774093) (not e!4096839))))

(declare-fun content!12863 (List!66121) (InoxSet C!33484))

(assert (=> d!2132573 (= res!2774093 (= (content!12863 lt!2445743) ((_ map or) (content!12863 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997))) (content!12863 (t!379840 s!2326)))))))

(assert (=> d!2132573 (= lt!2445743 e!4096840)))

(declare-fun c!1261279 () Bool)

(assert (=> d!2132573 (= c!1261279 ((_ is Nil!65997) (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997))))))

(assert (=> d!2132573 (= (++!14763 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (t!379840 s!2326)) lt!2445743)))

(declare-fun b!6787150 () Bool)

(declare-fun res!2774094 () Bool)

(assert (=> b!6787150 (=> (not res!2774094) (not e!4096839))))

(declare-fun size!40643 (List!66121) Int)

(assert (=> b!6787150 (= res!2774094 (= (size!40643 lt!2445743) (+ (size!40643 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997))) (size!40643 (t!379840 s!2326)))))))

(declare-fun b!6787148 () Bool)

(assert (=> b!6787148 (= e!4096840 (t!379840 s!2326))))

(assert (= (and d!2132573 c!1261279) b!6787148))

(assert (= (and d!2132573 (not c!1261279)) b!6787149))

(assert (= (and d!2132573 res!2774093) b!6787150))

(assert (= (and b!6787150 res!2774094) b!6787151))

(declare-fun m!7535302 () Bool)

(assert (=> b!6787149 m!7535302))

(declare-fun m!7535304 () Bool)

(assert (=> d!2132573 m!7535304))

(assert (=> d!2132573 m!7534362))

(declare-fun m!7535306 () Bool)

(assert (=> d!2132573 m!7535306))

(declare-fun m!7535308 () Bool)

(assert (=> d!2132573 m!7535308))

(declare-fun m!7535310 () Bool)

(assert (=> b!6787150 m!7535310))

(assert (=> b!6787150 m!7534362))

(declare-fun m!7535312 () Bool)

(assert (=> b!6787150 m!7535312))

(declare-fun m!7535314 () Bool)

(assert (=> b!6787150 m!7535314))

(assert (=> b!6786205 d!2132573))

(declare-fun b!6787163 () Bool)

(declare-fun e!4096848 () List!66121)

(assert (=> b!6787163 (= e!4096848 (Cons!65997 (h!72445 Nil!65997) (++!14763 (t!379840 Nil!65997) (Cons!65997 (h!72445 s!2326) Nil!65997))))))

(declare-fun b!6787165 () Bool)

(declare-fun e!4096847 () Bool)

(declare-fun lt!2445745 () List!66121)

(assert (=> b!6787165 (= e!4096847 (or (not (= (Cons!65997 (h!72445 s!2326) Nil!65997) Nil!65997)) (= lt!2445745 Nil!65997)))))

(declare-fun d!2132587 () Bool)

(assert (=> d!2132587 e!4096847))

(declare-fun res!2774097 () Bool)

(assert (=> d!2132587 (=> (not res!2774097) (not e!4096847))))

(assert (=> d!2132587 (= res!2774097 (= (content!12863 lt!2445745) ((_ map or) (content!12863 Nil!65997) (content!12863 (Cons!65997 (h!72445 s!2326) Nil!65997)))))))

(assert (=> d!2132587 (= lt!2445745 e!4096848)))

(declare-fun c!1261284 () Bool)

(assert (=> d!2132587 (= c!1261284 ((_ is Nil!65997) Nil!65997))))

(assert (=> d!2132587 (= (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) lt!2445745)))

(declare-fun b!6787164 () Bool)

(declare-fun res!2774098 () Bool)

(assert (=> b!6787164 (=> (not res!2774098) (not e!4096847))))

(assert (=> b!6787164 (= res!2774098 (= (size!40643 lt!2445745) (+ (size!40643 Nil!65997) (size!40643 (Cons!65997 (h!72445 s!2326) Nil!65997)))))))

(declare-fun b!6787162 () Bool)

(assert (=> b!6787162 (= e!4096848 (Cons!65997 (h!72445 s!2326) Nil!65997))))

(assert (= (and d!2132587 c!1261284) b!6787162))

(assert (= (and d!2132587 (not c!1261284)) b!6787163))

(assert (= (and d!2132587 res!2774097) b!6787164))

(assert (= (and b!6787164 res!2774098) b!6787165))

(declare-fun m!7535316 () Bool)

(assert (=> b!6787163 m!7535316))

(declare-fun m!7535318 () Bool)

(assert (=> d!2132587 m!7535318))

(declare-fun m!7535320 () Bool)

(assert (=> d!2132587 m!7535320))

(declare-fun m!7535322 () Bool)

(assert (=> d!2132587 m!7535322))

(declare-fun m!7535324 () Bool)

(assert (=> b!6787164 m!7535324))

(declare-fun m!7535326 () Bool)

(assert (=> b!6787164 m!7535326))

(declare-fun m!7535328 () Bool)

(assert (=> b!6787164 m!7535328))

(assert (=> b!6786205 d!2132587))

(declare-fun d!2132589 () Bool)

(assert (=> d!2132589 (= (++!14763 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (t!379840 s!2326)) s!2326)))

(declare-fun lt!2445749 () Unit!159905)

(declare-fun choose!50551 (List!66121 C!33484 List!66121 List!66121) Unit!159905)

(assert (=> d!2132589 (= lt!2445749 (choose!50551 Nil!65997 (h!72445 s!2326) (t!379840 s!2326) s!2326))))

(assert (=> d!2132589 (= (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) (t!379840 s!2326))) s!2326)))

(assert (=> d!2132589 (= (lemmaMoveElementToOtherListKeepsConcatEq!2728 Nil!65997 (h!72445 s!2326) (t!379840 s!2326) s!2326) lt!2445749)))

(declare-fun bs!1808199 () Bool)

(assert (= bs!1808199 d!2132589))

(assert (=> bs!1808199 m!7534362))

(assert (=> bs!1808199 m!7534362))

(assert (=> bs!1808199 m!7534364))

(declare-fun m!7535352 () Bool)

(assert (=> bs!1808199 m!7535352))

(declare-fun m!7535356 () Bool)

(assert (=> bs!1808199 m!7535356))

(assert (=> b!6786205 d!2132589))

(declare-fun b!6787168 () Bool)

(declare-fun e!4096854 () Option!16494)

(declare-fun e!4096850 () Option!16494)

(assert (=> b!6787168 (= e!4096854 e!4096850)))

(declare-fun c!1261287 () Bool)

(assert (=> b!6787168 (= c!1261287 ((_ is Nil!65997) (t!379840 s!2326)))))

(declare-fun d!2132595 () Bool)

(declare-fun e!4096853 () Bool)

(assert (=> d!2132595 e!4096853))

(declare-fun res!2774100 () Bool)

(assert (=> d!2132595 (=> res!2774100 e!4096853)))

(declare-fun e!4096851 () Bool)

(assert (=> d!2132595 (= res!2774100 e!4096851)))

(declare-fun res!2774102 () Bool)

(assert (=> d!2132595 (=> (not res!2774102) (not e!4096851))))

(declare-fun lt!2445750 () Option!16494)

(assert (=> d!2132595 (= res!2774102 (isDefined!13197 lt!2445750))))

(assert (=> d!2132595 (= lt!2445750 e!4096854)))

(declare-fun c!1261286 () Bool)

(declare-fun e!4096852 () Bool)

(assert (=> d!2132595 (= c!1261286 e!4096852)))

(declare-fun res!2774101 () Bool)

(assert (=> d!2132595 (=> (not res!2774101) (not e!4096852))))

(assert (=> d!2132595 (= res!2774101 (matchR!8790 (reg!16936 r!7292) (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997))))))

(assert (=> d!2132595 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132595 (= (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (t!379840 s!2326) s!2326) lt!2445750)))

(declare-fun b!6787169 () Bool)

(declare-fun res!2774099 () Bool)

(assert (=> b!6787169 (=> (not res!2774099) (not e!4096851))))

(assert (=> b!6787169 (= res!2774099 (matchR!8790 (reg!16936 r!7292) (_1!36885 (get!22980 lt!2445750))))))

(declare-fun b!6787170 () Bool)

(assert (=> b!6787170 (= e!4096852 (matchR!8790 r!7292 (t!379840 s!2326)))))

(declare-fun b!6787171 () Bool)

(declare-fun lt!2445751 () Unit!159905)

(declare-fun lt!2445752 () Unit!159905)

(assert (=> b!6787171 (= lt!2445751 lt!2445752)))

(assert (=> b!6787171 (= (++!14763 (++!14763 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (Cons!65997 (h!72445 (t!379840 s!2326)) Nil!65997)) (t!379840 (t!379840 s!2326))) s!2326)))

(assert (=> b!6787171 (= lt!2445752 (lemmaMoveElementToOtherListKeepsConcatEq!2728 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (h!72445 (t!379840 s!2326)) (t!379840 (t!379840 s!2326)) s!2326))))

(assert (=> b!6787171 (= e!4096850 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 (++!14763 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (Cons!65997 (h!72445 (t!379840 s!2326)) Nil!65997)) (t!379840 (t!379840 s!2326)) s!2326))))

(declare-fun b!6787172 () Bool)

(declare-fun res!2774103 () Bool)

(assert (=> b!6787172 (=> (not res!2774103) (not e!4096851))))

(assert (=> b!6787172 (= res!2774103 (matchR!8790 r!7292 (_2!36885 (get!22980 lt!2445750))))))

(declare-fun b!6787173 () Bool)

(assert (=> b!6787173 (= e!4096851 (= (++!14763 (_1!36885 (get!22980 lt!2445750)) (_2!36885 (get!22980 lt!2445750))) s!2326))))

(declare-fun b!6787174 () Bool)

(assert (=> b!6787174 (= e!4096853 (not (isDefined!13197 lt!2445750)))))

(declare-fun b!6787175 () Bool)

(assert (=> b!6787175 (= e!4096854 (Some!16493 (tuple2!67165 (++!14763 Nil!65997 (Cons!65997 (h!72445 s!2326) Nil!65997)) (t!379840 s!2326))))))

(declare-fun b!6787176 () Bool)

(assert (=> b!6787176 (= e!4096850 None!16493)))

(assert (= (and d!2132595 res!2774101) b!6787170))

(assert (= (and d!2132595 c!1261286) b!6787175))

(assert (= (and d!2132595 (not c!1261286)) b!6787168))

(assert (= (and b!6787168 c!1261287) b!6787176))

(assert (= (and b!6787168 (not c!1261287)) b!6787171))

(assert (= (and d!2132595 res!2774102) b!6787169))

(assert (= (and b!6787169 res!2774099) b!6787172))

(assert (= (and b!6787172 res!2774103) b!6787173))

(assert (= (and d!2132595 (not res!2774100)) b!6787174))

(declare-fun m!7535368 () Bool)

(assert (=> b!6787174 m!7535368))

(declare-fun m!7535370 () Bool)

(assert (=> b!6787172 m!7535370))

(declare-fun m!7535372 () Bool)

(assert (=> b!6787172 m!7535372))

(assert (=> d!2132595 m!7535368))

(assert (=> d!2132595 m!7534362))

(declare-fun m!7535374 () Bool)

(assert (=> d!2132595 m!7535374))

(assert (=> d!2132595 m!7534342))

(assert (=> b!6787173 m!7535370))

(declare-fun m!7535376 () Bool)

(assert (=> b!6787173 m!7535376))

(assert (=> b!6787171 m!7534362))

(declare-fun m!7535378 () Bool)

(assert (=> b!6787171 m!7535378))

(assert (=> b!6787171 m!7535378))

(declare-fun m!7535380 () Bool)

(assert (=> b!6787171 m!7535380))

(assert (=> b!6787171 m!7534362))

(declare-fun m!7535382 () Bool)

(assert (=> b!6787171 m!7535382))

(assert (=> b!6787171 m!7535378))

(declare-fun m!7535384 () Bool)

(assert (=> b!6787171 m!7535384))

(assert (=> b!6787169 m!7535370))

(declare-fun m!7535386 () Bool)

(assert (=> b!6787169 m!7535386))

(declare-fun m!7535388 () Bool)

(assert (=> b!6787170 m!7535388))

(assert (=> b!6786205 d!2132595))

(assert (=> b!6786249 d!2132123))

(declare-fun bs!1808208 () Bool)

(declare-fun d!2132607 () Bool)

(assert (= bs!1808208 (and d!2132607 d!2132185)))

(declare-fun lambda!382232 () Int)

(assert (=> bs!1808208 (= lambda!382232 lambda!382159)))

(declare-fun bs!1808209 () Bool)

(assert (= bs!1808209 (and d!2132607 d!2132509)))

(assert (=> bs!1808209 (= lambda!382232 lambda!382211)))

(declare-fun bs!1808211 () Bool)

(assert (= bs!1808211 (and d!2132607 d!2132203)))

(assert (=> bs!1808211 (= lambda!382232 lambda!382166)))

(declare-fun bs!1808213 () Bool)

(assert (= bs!1808213 (and d!2132607 d!2132365)))

(assert (=> bs!1808213 (= lambda!382232 lambda!382188)))

(declare-fun bs!1808214 () Bool)

(assert (= bs!1808214 (and d!2132607 d!2132523)))

(assert (=> bs!1808214 (= lambda!382232 lambda!382214)))

(declare-fun bs!1808216 () Bool)

(assert (= bs!1808216 (and d!2132607 d!2132183)))

(assert (=> bs!1808216 (= lambda!382232 lambda!382156)))

(declare-fun bs!1808217 () Bool)

(assert (= bs!1808217 (and d!2132607 d!2132205)))

(assert (=> bs!1808217 (= lambda!382232 lambda!382167)))

(declare-fun bs!1808218 () Bool)

(assert (= bs!1808218 (and d!2132607 d!2132525)))

(assert (=> bs!1808218 (= lambda!382232 lambda!382217)))

(declare-fun bs!1808219 () Bool)

(assert (= bs!1808219 (and d!2132607 d!2132505)))

(assert (=> bs!1808219 (= lambda!382232 lambda!382210)))

(declare-fun bs!1808220 () Bool)

(assert (= bs!1808220 (and d!2132607 d!2132491)))

(assert (=> bs!1808220 (= lambda!382232 lambda!382209)))

(declare-fun bs!1808221 () Bool)

(assert (= bs!1808221 (and d!2132607 d!2132187)))

(assert (=> bs!1808221 (= lambda!382232 lambda!382162)))

(declare-fun bs!1808222 () Bool)

(assert (= bs!1808222 (and d!2132607 d!2132123)))

(assert (=> bs!1808222 (= lambda!382232 lambda!382132)))

(declare-fun lt!2445753 () List!66120)

(assert (=> d!2132607 (forall!15799 lt!2445753 lambda!382232)))

(declare-fun e!4096856 () List!66120)

(assert (=> d!2132607 (= lt!2445753 e!4096856)))

(declare-fun c!1261289 () Bool)

(assert (=> d!2132607 (= c!1261289 ((_ is Cons!65998) (t!379841 zl!343)))))

(assert (=> d!2132607 (= (unfocusZipperList!2028 (t!379841 zl!343)) lt!2445753)))

(declare-fun b!6787179 () Bool)

(assert (=> b!6787179 (= e!4096856 (Cons!65996 (generalisedConcat!2204 (exprs!6491 (h!72446 (t!379841 zl!343)))) (unfocusZipperList!2028 (t!379841 (t!379841 zl!343)))))))

(declare-fun b!6787180 () Bool)

(assert (=> b!6787180 (= e!4096856 Nil!65996)))

(assert (= (and d!2132607 c!1261289) b!6787179))

(assert (= (and d!2132607 (not c!1261289)) b!6787180))

(declare-fun m!7535398 () Bool)

(assert (=> d!2132607 m!7535398))

(declare-fun m!7535400 () Bool)

(assert (=> b!6787179 m!7535400))

(declare-fun m!7535402 () Bool)

(assert (=> b!6787179 m!7535402))

(assert (=> b!6786249 d!2132607))

(declare-fun d!2132617 () Bool)

(assert (=> d!2132617 (= (isEmpty!38364 (tail!12710 (exprs!6491 (h!72446 zl!343)))) ((_ is Nil!65996) (tail!12710 (exprs!6491 (h!72446 zl!343)))))))

(assert (=> b!6786064 d!2132617))

(declare-fun d!2132619 () Bool)

(assert (=> d!2132619 (= (tail!12710 (exprs!6491 (h!72446 zl!343))) (t!379839 (exprs!6491 (h!72446 zl!343))))))

(assert (=> b!6786064 d!2132619))

(declare-fun b!6787187 () Bool)

(declare-fun e!4096863 () (InoxSet Context!11982))

(declare-fun call!616112 () (InoxSet Context!11982))

(assert (=> b!6787187 (= e!4096863 call!616112)))

(declare-fun b!6787188 () Bool)

(declare-fun c!1261294 () Bool)

(assert (=> b!6787188 (= c!1261294 ((_ is Star!16607) (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun e!4096864 () (InoxSet Context!11982))

(assert (=> b!6787188 (= e!4096864 e!4096863)))

(declare-fun bm!616102 () Bool)

(declare-fun c!1261290 () Bool)

(declare-fun call!616110 () (InoxSet Context!11982))

(declare-fun c!1261293 () Bool)

(declare-fun c!1261292 () Bool)

(declare-fun call!616111 () List!66120)

(assert (=> bm!616102 (= call!616110 (derivationStepZipperDown!1835 (ite c!1261290 (regTwo!33727 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (ite c!1261293 (regTwo!33726 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (ite c!1261292 (regOne!33726 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (reg!16936 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292)))))) (ite (or c!1261290 c!1261293) (ite c!1261031 (Context!11983 Nil!65996) (Context!11983 call!615927)) (Context!11983 call!616111)) (h!72445 s!2326)))))

(declare-fun b!6787189 () Bool)

(assert (=> b!6787189 (= e!4096863 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616103 () Bool)

(declare-fun call!616108 () List!66120)

(assert (=> bm!616103 (= call!616111 call!616108)))

(declare-fun b!6787190 () Bool)

(declare-fun e!4096861 () (InoxSet Context!11982))

(assert (=> b!6787190 (= e!4096861 e!4096864)))

(assert (=> b!6787190 (= c!1261292 ((_ is Concat!25452) (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun bm!616104 () Bool)

(declare-fun call!616107 () (InoxSet Context!11982))

(assert (=> bm!616104 (= call!616112 call!616107)))

(declare-fun b!6787191 () Bool)

(declare-fun e!4096862 () Bool)

(assert (=> b!6787191 (= c!1261293 e!4096862)))

(declare-fun res!2774104 () Bool)

(assert (=> b!6787191 (=> (not res!2774104) (not e!4096862))))

(assert (=> b!6787191 (= res!2774104 ((_ is Concat!25452) (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun e!4096860 () (InoxSet Context!11982))

(assert (=> b!6787191 (= e!4096860 e!4096861)))

(declare-fun bm!616105 () Bool)

(assert (=> bm!616105 (= call!616107 call!616110)))

(declare-fun b!6787192 () Bool)

(assert (=> b!6787192 (= e!4096864 call!616112)))

(declare-fun b!6787193 () Bool)

(declare-fun e!4096865 () (InoxSet Context!11982))

(assert (=> b!6787193 (= e!4096865 (store ((as const (Array Context!11982 Bool)) false) (ite c!1261031 (Context!11983 Nil!65996) (Context!11983 call!615927)) true))))

(declare-fun bm!616106 () Bool)

(assert (=> bm!616106 (= call!616108 ($colon$colon!2416 (exprs!6491 (ite c!1261031 (Context!11983 Nil!65996) (Context!11983 call!615927))) (ite (or c!1261293 c!1261292) (regTwo!33726 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292)))))))

(declare-fun b!6787195 () Bool)

(declare-fun call!616109 () (InoxSet Context!11982))

(assert (=> b!6787195 (= e!4096861 ((_ map or) call!616109 call!616107))))

(declare-fun bm!616107 () Bool)

(assert (=> bm!616107 (= call!616109 (derivationStepZipperDown!1835 (ite c!1261290 (regOne!33727 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (regOne!33726 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292)))) (ite c!1261290 (ite c!1261031 (Context!11983 Nil!65996) (Context!11983 call!615927)) (Context!11983 call!616108)) (h!72445 s!2326)))))

(declare-fun b!6787196 () Bool)

(assert (=> b!6787196 (= e!4096862 (nullable!6586 (regOne!33726 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292)))))))

(declare-fun b!6787201 () Bool)

(assert (=> b!6787201 (= e!4096865 e!4096860)))

(assert (=> b!6787201 (= c!1261290 ((_ is Union!16607) (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))))))

(declare-fun d!2132621 () Bool)

(declare-fun c!1261291 () Bool)

(assert (=> d!2132621 (= c!1261291 (and ((_ is ElementMatch!16607) (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (= (c!1260825 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292))) (h!72445 s!2326))))))

(assert (=> d!2132621 (= (derivationStepZipperDown!1835 (ite c!1261031 (regOne!33727 r!7292) (regOne!33726 r!7292)) (ite c!1261031 (Context!11983 Nil!65996) (Context!11983 call!615927)) (h!72445 s!2326)) e!4096865)))

(declare-fun b!6787194 () Bool)

(assert (=> b!6787194 (= e!4096860 ((_ map or) call!616109 call!616110))))

(assert (= (and d!2132621 c!1261291) b!6787193))

(assert (= (and d!2132621 (not c!1261291)) b!6787201))

(assert (= (and b!6787201 c!1261290) b!6787194))

(assert (= (and b!6787201 (not c!1261290)) b!6787191))

(assert (= (and b!6787191 res!2774104) b!6787196))

(assert (= (and b!6787191 c!1261293) b!6787195))

(assert (= (and b!6787191 (not c!1261293)) b!6787190))

(assert (= (and b!6787190 c!1261292) b!6787192))

(assert (= (and b!6787190 (not c!1261292)) b!6787188))

(assert (= (and b!6787188 c!1261294) b!6787187))

(assert (= (and b!6787188 (not c!1261294)) b!6787189))

(assert (= (or b!6787192 b!6787187) bm!616103))

(assert (= (or b!6787192 b!6787187) bm!616104))

(assert (= (or b!6787195 bm!616103) bm!616106))

(assert (= (or b!6787195 bm!616104) bm!616105))

(assert (= (or b!6787194 bm!616105) bm!616102))

(assert (= (or b!6787194 b!6787195) bm!616107))

(declare-fun m!7535406 () Bool)

(assert (=> bm!616102 m!7535406))

(declare-fun m!7535408 () Bool)

(assert (=> bm!616107 m!7535408))

(declare-fun m!7535410 () Bool)

(assert (=> b!6787196 m!7535410))

(declare-fun m!7535412 () Bool)

(assert (=> bm!616106 m!7535412))

(declare-fun m!7535414 () Bool)

(assert (=> b!6787193 m!7535414))

(assert (=> bm!615926 d!2132621))

(declare-fun b!6787227 () Bool)

(declare-fun e!4096877 () (InoxSet Context!11982))

(declare-fun call!616118 () (InoxSet Context!11982))

(assert (=> b!6787227 (= e!4096877 call!616118)))

(declare-fun b!6787228 () Bool)

(declare-fun c!1261299 () Bool)

(assert (=> b!6787228 (= c!1261299 ((_ is Star!16607) (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun e!4096878 () (InoxSet Context!11982))

(assert (=> b!6787228 (= e!4096878 e!4096877)))

(declare-fun call!616117 () List!66120)

(declare-fun call!616116 () (InoxSet Context!11982))

(declare-fun c!1261298 () Bool)

(declare-fun c!1261297 () Bool)

(declare-fun c!1261295 () Bool)

(declare-fun bm!616108 () Bool)

(assert (=> bm!616108 (= call!616116 (derivationStepZipperDown!1835 (ite c!1261295 (regTwo!33727 (h!72444 (exprs!6491 lt!2445587))) (ite c!1261298 (regTwo!33726 (h!72444 (exprs!6491 lt!2445587))) (ite c!1261297 (regOne!33726 (h!72444 (exprs!6491 lt!2445587))) (reg!16936 (h!72444 (exprs!6491 lt!2445587)))))) (ite (or c!1261295 c!1261298) (Context!11983 (t!379839 (exprs!6491 lt!2445587))) (Context!11983 call!616117)) (h!72445 s!2326)))))

(declare-fun b!6787229 () Bool)

(assert (=> b!6787229 (= e!4096877 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616109 () Bool)

(declare-fun call!616114 () List!66120)

(assert (=> bm!616109 (= call!616117 call!616114)))

(declare-fun b!6787230 () Bool)

(declare-fun e!4096875 () (InoxSet Context!11982))

(assert (=> b!6787230 (= e!4096875 e!4096878)))

(assert (=> b!6787230 (= c!1261297 ((_ is Concat!25452) (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun bm!616110 () Bool)

(declare-fun call!616113 () (InoxSet Context!11982))

(assert (=> bm!616110 (= call!616118 call!616113)))

(declare-fun b!6787231 () Bool)

(declare-fun e!4096876 () Bool)

(assert (=> b!6787231 (= c!1261298 e!4096876)))

(declare-fun res!2774105 () Bool)

(assert (=> b!6787231 (=> (not res!2774105) (not e!4096876))))

(assert (=> b!6787231 (= res!2774105 ((_ is Concat!25452) (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun e!4096874 () (InoxSet Context!11982))

(assert (=> b!6787231 (= e!4096874 e!4096875)))

(declare-fun bm!616111 () Bool)

(assert (=> bm!616111 (= call!616113 call!616116)))

(declare-fun b!6787232 () Bool)

(assert (=> b!6787232 (= e!4096878 call!616118)))

(declare-fun b!6787233 () Bool)

(declare-fun e!4096879 () (InoxSet Context!11982))

(assert (=> b!6787233 (= e!4096879 (store ((as const (Array Context!11982 Bool)) false) (Context!11983 (t!379839 (exprs!6491 lt!2445587))) true))))

(declare-fun bm!616112 () Bool)

(assert (=> bm!616112 (= call!616114 ($colon$colon!2416 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445587)))) (ite (or c!1261298 c!1261297) (regTwo!33726 (h!72444 (exprs!6491 lt!2445587))) (h!72444 (exprs!6491 lt!2445587)))))))

(declare-fun b!6787235 () Bool)

(declare-fun call!616115 () (InoxSet Context!11982))

(assert (=> b!6787235 (= e!4096875 ((_ map or) call!616115 call!616113))))

(declare-fun bm!616113 () Bool)

(assert (=> bm!616113 (= call!616115 (derivationStepZipperDown!1835 (ite c!1261295 (regOne!33727 (h!72444 (exprs!6491 lt!2445587))) (regOne!33726 (h!72444 (exprs!6491 lt!2445587)))) (ite c!1261295 (Context!11983 (t!379839 (exprs!6491 lt!2445587))) (Context!11983 call!616114)) (h!72445 s!2326)))))

(declare-fun b!6787236 () Bool)

(assert (=> b!6787236 (= e!4096876 (nullable!6586 (regOne!33726 (h!72444 (exprs!6491 lt!2445587)))))))

(declare-fun b!6787237 () Bool)

(assert (=> b!6787237 (= e!4096879 e!4096874)))

(assert (=> b!6787237 (= c!1261295 ((_ is Union!16607) (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun d!2132623 () Bool)

(declare-fun c!1261296 () Bool)

(assert (=> d!2132623 (= c!1261296 (and ((_ is ElementMatch!16607) (h!72444 (exprs!6491 lt!2445587))) (= (c!1260825 (h!72444 (exprs!6491 lt!2445587))) (h!72445 s!2326))))))

(assert (=> d!2132623 (= (derivationStepZipperDown!1835 (h!72444 (exprs!6491 lt!2445587)) (Context!11983 (t!379839 (exprs!6491 lt!2445587))) (h!72445 s!2326)) e!4096879)))

(declare-fun b!6787234 () Bool)

(assert (=> b!6787234 (= e!4096874 ((_ map or) call!616115 call!616116))))

(assert (= (and d!2132623 c!1261296) b!6787233))

(assert (= (and d!2132623 (not c!1261296)) b!6787237))

(assert (= (and b!6787237 c!1261295) b!6787234))

(assert (= (and b!6787237 (not c!1261295)) b!6787231))

(assert (= (and b!6787231 res!2774105) b!6787236))

(assert (= (and b!6787231 c!1261298) b!6787235))

(assert (= (and b!6787231 (not c!1261298)) b!6787230))

(assert (= (and b!6787230 c!1261297) b!6787232))

(assert (= (and b!6787230 (not c!1261297)) b!6787228))

(assert (= (and b!6787228 c!1261299) b!6787227))

(assert (= (and b!6787228 (not c!1261299)) b!6787229))

(assert (= (or b!6787232 b!6787227) bm!616109))

(assert (= (or b!6787232 b!6787227) bm!616110))

(assert (= (or b!6787235 bm!616109) bm!616112))

(assert (= (or b!6787235 bm!616110) bm!616111))

(assert (= (or b!6787234 bm!616111) bm!616108))

(assert (= (or b!6787234 b!6787235) bm!616113))

(declare-fun m!7535416 () Bool)

(assert (=> bm!616108 m!7535416))

(declare-fun m!7535418 () Bool)

(assert (=> bm!616113 m!7535418))

(declare-fun m!7535420 () Bool)

(assert (=> b!6787236 m!7535420))

(declare-fun m!7535422 () Bool)

(assert (=> bm!616112 m!7535422))

(declare-fun m!7535424 () Bool)

(assert (=> b!6787233 m!7535424))

(assert (=> bm!615901 d!2132623))

(declare-fun d!2132625 () Bool)

(declare-fun res!2774109 () Bool)

(declare-fun e!4096887 () Bool)

(assert (=> d!2132625 (=> res!2774109 e!4096887)))

(assert (=> d!2132625 (= res!2774109 ((_ is ElementMatch!16607) lt!2445700))))

(assert (=> d!2132625 (= (validRegex!8343 lt!2445700) e!4096887)))

(declare-fun b!6787263 () Bool)

(declare-fun res!2774110 () Bool)

(declare-fun e!4096891 () Bool)

(assert (=> b!6787263 (=> res!2774110 e!4096891)))

(assert (=> b!6787263 (= res!2774110 (not ((_ is Concat!25452) lt!2445700)))))

(declare-fun e!4096892 () Bool)

(assert (=> b!6787263 (= e!4096892 e!4096891)))

(declare-fun b!6787264 () Bool)

(declare-fun e!4096889 () Bool)

(declare-fun call!616120 () Bool)

(assert (=> b!6787264 (= e!4096889 call!616120)))

(declare-fun b!6787265 () Bool)

(declare-fun e!4096890 () Bool)

(declare-fun e!4096888 () Bool)

(assert (=> b!6787265 (= e!4096890 e!4096888)))

(declare-fun res!2774106 () Bool)

(assert (=> b!6787265 (= res!2774106 (not (nullable!6586 (reg!16936 lt!2445700))))))

(assert (=> b!6787265 (=> (not res!2774106) (not e!4096888))))

(declare-fun bm!616114 () Bool)

(declare-fun call!616119 () Bool)

(declare-fun c!1261300 () Bool)

(assert (=> bm!616114 (= call!616119 (validRegex!8343 (ite c!1261300 (regOne!33727 lt!2445700) (regOne!33726 lt!2445700))))))

(declare-fun bm!616115 () Bool)

(declare-fun call!616121 () Bool)

(assert (=> bm!616115 (= call!616120 call!616121)))

(declare-fun b!6787266 () Bool)

(assert (=> b!6787266 (= e!4096890 e!4096892)))

(assert (=> b!6787266 (= c!1261300 ((_ is Union!16607) lt!2445700))))

(declare-fun b!6787267 () Bool)

(assert (=> b!6787267 (= e!4096887 e!4096890)))

(declare-fun c!1261301 () Bool)

(assert (=> b!6787267 (= c!1261301 ((_ is Star!16607) lt!2445700))))

(declare-fun b!6787268 () Bool)

(declare-fun e!4096893 () Bool)

(assert (=> b!6787268 (= e!4096893 call!616120)))

(declare-fun b!6787269 () Bool)

(assert (=> b!6787269 (= e!4096891 e!4096893)))

(declare-fun res!2774107 () Bool)

(assert (=> b!6787269 (=> (not res!2774107) (not e!4096893))))

(assert (=> b!6787269 (= res!2774107 call!616119)))

(declare-fun b!6787270 () Bool)

(assert (=> b!6787270 (= e!4096888 call!616121)))

(declare-fun bm!616116 () Bool)

(assert (=> bm!616116 (= call!616121 (validRegex!8343 (ite c!1261301 (reg!16936 lt!2445700) (ite c!1261300 (regTwo!33727 lt!2445700) (regTwo!33726 lt!2445700)))))))

(declare-fun b!6787271 () Bool)

(declare-fun res!2774108 () Bool)

(assert (=> b!6787271 (=> (not res!2774108) (not e!4096889))))

(assert (=> b!6787271 (= res!2774108 call!616119)))

(assert (=> b!6787271 (= e!4096892 e!4096889)))

(assert (= (and d!2132625 (not res!2774109)) b!6787267))

(assert (= (and b!6787267 c!1261301) b!6787265))

(assert (= (and b!6787267 (not c!1261301)) b!6787266))

(assert (= (and b!6787265 res!2774106) b!6787270))

(assert (= (and b!6787266 c!1261300) b!6787271))

(assert (= (and b!6787266 (not c!1261300)) b!6787263))

(assert (= (and b!6787271 res!2774108) b!6787264))

(assert (= (and b!6787263 (not res!2774110)) b!6787269))

(assert (= (and b!6787269 res!2774107) b!6787268))

(assert (= (or b!6787264 b!6787268) bm!616115))

(assert (= (or b!6787271 b!6787269) bm!616114))

(assert (= (or b!6787270 bm!616115) bm!616116))

(declare-fun m!7535426 () Bool)

(assert (=> b!6787265 m!7535426))

(declare-fun m!7535428 () Bool)

(assert (=> bm!616114 m!7535428))

(declare-fun m!7535430 () Bool)

(assert (=> bm!616116 m!7535430))

(assert (=> d!2132215 d!2132625))

(assert (=> d!2132215 d!2132183))

(assert (=> d!2132215 d!2132185))

(declare-fun d!2132627 () Bool)

(assert (=> d!2132627 (= (nullable!6586 (h!72444 (exprs!6491 lt!2445602))) (nullableFct!2492 (h!72444 (exprs!6491 lt!2445602))))))

(declare-fun bs!1808223 () Bool)

(assert (= bs!1808223 d!2132627))

(declare-fun m!7535432 () Bool)

(assert (=> bs!1808223 m!7535432))

(assert (=> b!6786261 d!2132627))

(declare-fun d!2132629 () Bool)

(assert (=> d!2132629 (= (isEmptyExpr!1965 lt!2445661) ((_ is EmptyExpr!16607) lt!2445661))))

(assert (=> b!6786068 d!2132629))

(assert (=> d!2132087 d!2132175))

(declare-fun d!2132631 () Bool)

(declare-fun res!2774114 () Bool)

(declare-fun e!4096902 () Bool)

(assert (=> d!2132631 (=> res!2774114 e!4096902)))

(assert (=> d!2132631 (= res!2774114 ((_ is ElementMatch!16607) lt!2445581))))

(assert (=> d!2132631 (= (validRegex!8343 lt!2445581) e!4096902)))

(declare-fun b!6787304 () Bool)

(declare-fun res!2774115 () Bool)

(declare-fun e!4096906 () Bool)

(assert (=> b!6787304 (=> res!2774115 e!4096906)))

(assert (=> b!6787304 (= res!2774115 (not ((_ is Concat!25452) lt!2445581)))))

(declare-fun e!4096907 () Bool)

(assert (=> b!6787304 (= e!4096907 e!4096906)))

(declare-fun b!6787305 () Bool)

(declare-fun e!4096904 () Bool)

(declare-fun call!616123 () Bool)

(assert (=> b!6787305 (= e!4096904 call!616123)))

(declare-fun b!6787306 () Bool)

(declare-fun e!4096905 () Bool)

(declare-fun e!4096903 () Bool)

(assert (=> b!6787306 (= e!4096905 e!4096903)))

(declare-fun res!2774111 () Bool)

(assert (=> b!6787306 (= res!2774111 (not (nullable!6586 (reg!16936 lt!2445581))))))

(assert (=> b!6787306 (=> (not res!2774111) (not e!4096903))))

(declare-fun bm!616117 () Bool)

(declare-fun call!616122 () Bool)

(declare-fun c!1261302 () Bool)

(assert (=> bm!616117 (= call!616122 (validRegex!8343 (ite c!1261302 (regOne!33727 lt!2445581) (regOne!33726 lt!2445581))))))

(declare-fun bm!616118 () Bool)

(declare-fun call!616124 () Bool)

(assert (=> bm!616118 (= call!616123 call!616124)))

(declare-fun b!6787307 () Bool)

(assert (=> b!6787307 (= e!4096905 e!4096907)))

(assert (=> b!6787307 (= c!1261302 ((_ is Union!16607) lt!2445581))))

(declare-fun b!6787308 () Bool)

(assert (=> b!6787308 (= e!4096902 e!4096905)))

(declare-fun c!1261303 () Bool)

(assert (=> b!6787308 (= c!1261303 ((_ is Star!16607) lt!2445581))))

(declare-fun b!6787309 () Bool)

(declare-fun e!4096908 () Bool)

(assert (=> b!6787309 (= e!4096908 call!616123)))

(declare-fun b!6787310 () Bool)

(assert (=> b!6787310 (= e!4096906 e!4096908)))

(declare-fun res!2774112 () Bool)

(assert (=> b!6787310 (=> (not res!2774112) (not e!4096908))))

(assert (=> b!6787310 (= res!2774112 call!616122)))

(declare-fun b!6787311 () Bool)

(assert (=> b!6787311 (= e!4096903 call!616124)))

(declare-fun bm!616119 () Bool)

(assert (=> bm!616119 (= call!616124 (validRegex!8343 (ite c!1261303 (reg!16936 lt!2445581) (ite c!1261302 (regTwo!33727 lt!2445581) (regTwo!33726 lt!2445581)))))))

(declare-fun b!6787312 () Bool)

(declare-fun res!2774113 () Bool)

(assert (=> b!6787312 (=> (not res!2774113) (not e!4096904))))

(assert (=> b!6787312 (= res!2774113 call!616122)))

(assert (=> b!6787312 (= e!4096907 e!4096904)))

(assert (= (and d!2132631 (not res!2774114)) b!6787308))

(assert (= (and b!6787308 c!1261303) b!6787306))

(assert (= (and b!6787308 (not c!1261303)) b!6787307))

(assert (= (and b!6787306 res!2774111) b!6787311))

(assert (= (and b!6787307 c!1261302) b!6787312))

(assert (= (and b!6787307 (not c!1261302)) b!6787304))

(assert (= (and b!6787312 res!2774113) b!6787305))

(assert (= (and b!6787304 (not res!2774115)) b!6787310))

(assert (= (and b!6787310 res!2774112) b!6787309))

(assert (= (or b!6787305 b!6787309) bm!616118))

(assert (= (or b!6787312 b!6787310) bm!616117))

(assert (= (or b!6787311 bm!616118) bm!616119))

(declare-fun m!7535434 () Bool)

(assert (=> b!6787306 m!7535434))

(declare-fun m!7535436 () Bool)

(assert (=> bm!616117 m!7535436))

(declare-fun m!7535438 () Bool)

(assert (=> bm!616119 m!7535438))

(assert (=> d!2132087 d!2132631))

(declare-fun d!2132633 () Bool)

(declare-fun c!1261305 () Bool)

(declare-fun e!4096917 () Bool)

(assert (=> d!2132633 (= c!1261305 e!4096917)))

(declare-fun res!2774116 () Bool)

(assert (=> d!2132633 (=> (not res!2774116) (not e!4096917))))

(assert (=> d!2132633 (= res!2774116 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602))))))))

(declare-fun e!4096915 () (InoxSet Context!11982))

(assert (=> d!2132633 (= (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 lt!2445602))) (h!72445 s!2326)) e!4096915)))

(declare-fun bm!616120 () Bool)

(declare-fun call!616125 () (InoxSet Context!11982))

(assert (=> bm!616120 (= call!616125 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602))))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602)))))) (h!72445 s!2326)))))

(declare-fun b!6787331 () Bool)

(assert (=> b!6787331 (= e!4096917 (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602)))))))))

(declare-fun b!6787332 () Bool)

(declare-fun e!4096916 () (InoxSet Context!11982))

(assert (=> b!6787332 (= e!4096916 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6787333 () Bool)

(assert (=> b!6787333 (= e!4096915 e!4096916)))

(declare-fun c!1261304 () Bool)

(assert (=> b!6787333 (= c!1261304 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602))))))))

(declare-fun b!6787334 () Bool)

(assert (=> b!6787334 (= e!4096915 ((_ map or) call!616125 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602)))))) (h!72445 s!2326))))))

(declare-fun b!6787335 () Bool)

(assert (=> b!6787335 (= e!4096916 call!616125)))

(assert (= (and d!2132633 res!2774116) b!6787331))

(assert (= (and d!2132633 c!1261305) b!6787334))

(assert (= (and d!2132633 (not c!1261305)) b!6787333))

(assert (= (and b!6787333 c!1261304) b!6787335))

(assert (= (and b!6787333 (not c!1261304)) b!6787332))

(assert (= (or b!6787334 b!6787335) bm!616120))

(declare-fun m!7535442 () Bool)

(assert (=> bm!616120 m!7535442))

(declare-fun m!7535444 () Bool)

(assert (=> b!6787331 m!7535444))

(declare-fun m!7535446 () Bool)

(assert (=> b!6787334 m!7535446))

(assert (=> b!6786264 d!2132633))

(declare-fun d!2132635 () Bool)

(assert (=> d!2132635 (= (nullable!6586 lt!2445581) (nullableFct!2492 lt!2445581))))

(declare-fun bs!1808224 () Bool)

(assert (= bs!1808224 d!2132635))

(declare-fun m!7535448 () Bool)

(assert (=> bs!1808224 m!7535448))

(assert (=> b!6785882 d!2132635))

(declare-fun b!6787342 () Bool)

(declare-fun e!4096924 () (InoxSet Context!11982))

(declare-fun call!616131 () (InoxSet Context!11982))

(assert (=> b!6787342 (= e!4096924 call!616131)))

(declare-fun b!6787343 () Bool)

(declare-fun c!1261310 () Bool)

(assert (=> b!6787343 (= c!1261310 ((_ is Star!16607) (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))))))

(declare-fun e!4096925 () (InoxSet Context!11982))

(assert (=> b!6787343 (= e!4096925 e!4096924)))

(declare-fun bm!616121 () Bool)

(declare-fun c!1261306 () Bool)

(declare-fun c!1261308 () Bool)

(declare-fun call!616129 () (InoxSet Context!11982))

(declare-fun c!1261309 () Bool)

(declare-fun call!616130 () List!66120)

(assert (=> bm!616121 (= call!616129 (derivationStepZipperDown!1835 (ite c!1261306 (regTwo!33727 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (ite c!1261309 (regTwo!33726 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (ite c!1261308 (regOne!33726 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (reg!16936 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292))))))))) (ite (or c!1261306 c!1261309) (ite (or c!1261024 c!1261027) lt!2445602 (Context!11983 call!615923)) (Context!11983 call!616130)) (h!72445 s!2326)))))

(declare-fun b!6787344 () Bool)

(assert (=> b!6787344 (= e!4096924 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616122 () Bool)

(declare-fun call!616127 () List!66120)

(assert (=> bm!616122 (= call!616130 call!616127)))

(declare-fun b!6787345 () Bool)

(declare-fun e!4096922 () (InoxSet Context!11982))

(assert (=> b!6787345 (= e!4096922 e!4096925)))

(assert (=> b!6787345 (= c!1261308 ((_ is Concat!25452) (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))))))

(declare-fun bm!616123 () Bool)

(declare-fun call!616126 () (InoxSet Context!11982))

(assert (=> bm!616123 (= call!616131 call!616126)))

(declare-fun b!6787346 () Bool)

(declare-fun e!4096923 () Bool)

(assert (=> b!6787346 (= c!1261309 e!4096923)))

(declare-fun res!2774117 () Bool)

(assert (=> b!6787346 (=> (not res!2774117) (not e!4096923))))

(assert (=> b!6787346 (= res!2774117 ((_ is Concat!25452) (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))))))

(declare-fun e!4096921 () (InoxSet Context!11982))

(assert (=> b!6787346 (= e!4096921 e!4096922)))

(declare-fun bm!616124 () Bool)

(assert (=> bm!616124 (= call!616126 call!616129)))

(declare-fun b!6787347 () Bool)

(assert (=> b!6787347 (= e!4096925 call!616131)))

(declare-fun e!4096926 () (InoxSet Context!11982))

(declare-fun b!6787348 () Bool)

(assert (=> b!6787348 (= e!4096926 (store ((as const (Array Context!11982 Bool)) false) (ite (or c!1261024 c!1261027) lt!2445602 (Context!11983 call!615923)) true))))

(declare-fun bm!616125 () Bool)

(assert (=> bm!616125 (= call!616127 ($colon$colon!2416 (exprs!6491 (ite (or c!1261024 c!1261027) lt!2445602 (Context!11983 call!615923))) (ite (or c!1261309 c!1261308) (regTwo!33726 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292))))))))))

(declare-fun b!6787350 () Bool)

(declare-fun call!616128 () (InoxSet Context!11982))

(assert (=> b!6787350 (= e!4096922 ((_ map or) call!616128 call!616126))))

(declare-fun bm!616126 () Bool)

(assert (=> bm!616126 (= call!616128 (derivationStepZipperDown!1835 (ite c!1261306 (regOne!33727 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (regOne!33726 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292))))))) (ite c!1261306 (ite (or c!1261024 c!1261027) lt!2445602 (Context!11983 call!615923)) (Context!11983 call!616127)) (h!72445 s!2326)))))

(declare-fun b!6787351 () Bool)

(assert (=> b!6787351 (= e!4096923 (nullable!6586 (regOne!33726 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292))))))))))

(declare-fun b!6787352 () Bool)

(assert (=> b!6787352 (= e!4096926 e!4096921)))

(assert (=> b!6787352 (= c!1261306 ((_ is Union!16607) (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))))))

(declare-fun c!1261307 () Bool)

(declare-fun d!2132637 () Bool)

(assert (=> d!2132637 (= c!1261307 (and ((_ is ElementMatch!16607) (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (= (c!1260825 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292)))))) (h!72445 s!2326))))))

(assert (=> d!2132637 (= (derivationStepZipperDown!1835 (ite c!1261024 (regTwo!33727 (reg!16936 r!7292)) (ite c!1261027 (regTwo!33726 (reg!16936 r!7292)) (ite c!1261026 (regOne!33726 (reg!16936 r!7292)) (reg!16936 (reg!16936 r!7292))))) (ite (or c!1261024 c!1261027) lt!2445602 (Context!11983 call!615923)) (h!72445 s!2326)) e!4096926)))

(declare-fun b!6787349 () Bool)

(assert (=> b!6787349 (= e!4096921 ((_ map or) call!616128 call!616129))))

(assert (= (and d!2132637 c!1261307) b!6787348))

(assert (= (and d!2132637 (not c!1261307)) b!6787352))

(assert (= (and b!6787352 c!1261306) b!6787349))

(assert (= (and b!6787352 (not c!1261306)) b!6787346))

(assert (= (and b!6787346 res!2774117) b!6787351))

(assert (= (and b!6787346 c!1261309) b!6787350))

(assert (= (and b!6787346 (not c!1261309)) b!6787345))

(assert (= (and b!6787345 c!1261308) b!6787347))

(assert (= (and b!6787345 (not c!1261308)) b!6787343))

(assert (= (and b!6787343 c!1261310) b!6787342))

(assert (= (and b!6787343 (not c!1261310)) b!6787344))

(assert (= (or b!6787347 b!6787342) bm!616122))

(assert (= (or b!6787347 b!6787342) bm!616123))

(assert (= (or b!6787350 bm!616122) bm!616125))

(assert (= (or b!6787350 bm!616123) bm!616124))

(assert (= (or b!6787349 bm!616124) bm!616121))

(assert (= (or b!6787349 b!6787350) bm!616126))

(declare-fun m!7535460 () Bool)

(assert (=> bm!616121 m!7535460))

(declare-fun m!7535462 () Bool)

(assert (=> bm!616126 m!7535462))

(declare-fun m!7535464 () Bool)

(assert (=> b!6787351 m!7535464))

(declare-fun m!7535466 () Bool)

(assert (=> bm!616125 m!7535466))

(declare-fun m!7535468 () Bool)

(assert (=> b!6787348 m!7535468))

(assert (=> bm!615914 d!2132637))

(declare-fun d!2132651 () Bool)

(assert (=> d!2132651 (= (isDefined!13197 lt!2445683) (not (isEmpty!38366 lt!2445683)))))

(declare-fun bs!1808231 () Bool)

(assert (= bs!1808231 d!2132651))

(declare-fun m!7535470 () Bool)

(assert (=> bs!1808231 m!7535470))

(assert (=> d!2132179 d!2132651))

(declare-fun b!6787353 () Bool)

(declare-fun e!4096927 () Bool)

(declare-fun e!4096929 () Bool)

(assert (=> b!6787353 (= e!4096927 e!4096929)))

(declare-fun c!1261311 () Bool)

(assert (=> b!6787353 (= c!1261311 ((_ is EmptyLang!16607) (reg!16936 r!7292)))))

(declare-fun b!6787354 () Bool)

(declare-fun e!4096928 () Bool)

(declare-fun e!4096931 () Bool)

(assert (=> b!6787354 (= e!4096928 e!4096931)))

(declare-fun res!2774122 () Bool)

(assert (=> b!6787354 (=> (not res!2774122) (not e!4096931))))

(declare-fun lt!2445754 () Bool)

(assert (=> b!6787354 (= res!2774122 (not lt!2445754))))

(declare-fun b!6787355 () Bool)

(declare-fun res!2774124 () Bool)

(assert (=> b!6787355 (=> res!2774124 e!4096928)))

(declare-fun e!4096933 () Bool)

(assert (=> b!6787355 (= res!2774124 e!4096933)))

(declare-fun res!2774125 () Bool)

(assert (=> b!6787355 (=> (not res!2774125) (not e!4096933))))

(assert (=> b!6787355 (= res!2774125 lt!2445754)))

(declare-fun b!6787356 () Bool)

(declare-fun res!2774120 () Bool)

(assert (=> b!6787356 (=> (not res!2774120) (not e!4096933))))

(assert (=> b!6787356 (= res!2774120 (isEmpty!38362 (tail!12709 Nil!65997)))))

(declare-fun b!6787357 () Bool)

(declare-fun res!2774121 () Bool)

(assert (=> b!6787357 (=> res!2774121 e!4096928)))

(assert (=> b!6787357 (= res!2774121 (not ((_ is ElementMatch!16607) (reg!16936 r!7292))))))

(assert (=> b!6787357 (= e!4096929 e!4096928)))

(declare-fun d!2132653 () Bool)

(assert (=> d!2132653 e!4096927))

(declare-fun c!1261312 () Bool)

(assert (=> d!2132653 (= c!1261312 ((_ is EmptyExpr!16607) (reg!16936 r!7292)))))

(declare-fun e!4096930 () Bool)

(assert (=> d!2132653 (= lt!2445754 e!4096930)))

(declare-fun c!1261313 () Bool)

(assert (=> d!2132653 (= c!1261313 (isEmpty!38362 Nil!65997))))

(assert (=> d!2132653 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132653 (= (matchR!8790 (reg!16936 r!7292) Nil!65997) lt!2445754)))

(declare-fun b!6787358 () Bool)

(declare-fun call!616132 () Bool)

(assert (=> b!6787358 (= e!4096927 (= lt!2445754 call!616132))))

(declare-fun b!6787359 () Bool)

(assert (=> b!6787359 (= e!4096929 (not lt!2445754))))

(declare-fun bm!616127 () Bool)

(assert (=> bm!616127 (= call!616132 (isEmpty!38362 Nil!65997))))

(declare-fun b!6787360 () Bool)

(declare-fun e!4096932 () Bool)

(assert (=> b!6787360 (= e!4096931 e!4096932)))

(declare-fun res!2774118 () Bool)

(assert (=> b!6787360 (=> res!2774118 e!4096932)))

(assert (=> b!6787360 (= res!2774118 call!616132)))

(declare-fun b!6787361 () Bool)

(assert (=> b!6787361 (= e!4096932 (not (= (head!13624 Nil!65997) (c!1260825 (reg!16936 r!7292)))))))

(declare-fun b!6787362 () Bool)

(assert (=> b!6787362 (= e!4096933 (= (head!13624 Nil!65997) (c!1260825 (reg!16936 r!7292))))))

(declare-fun b!6787363 () Bool)

(declare-fun res!2774123 () Bool)

(assert (=> b!6787363 (=> (not res!2774123) (not e!4096933))))

(assert (=> b!6787363 (= res!2774123 (not call!616132))))

(declare-fun b!6787364 () Bool)

(assert (=> b!6787364 (= e!4096930 (matchR!8790 (derivativeStep!5271 (reg!16936 r!7292) (head!13624 Nil!65997)) (tail!12709 Nil!65997)))))

(declare-fun b!6787365 () Bool)

(declare-fun res!2774119 () Bool)

(assert (=> b!6787365 (=> res!2774119 e!4096932)))

(assert (=> b!6787365 (= res!2774119 (not (isEmpty!38362 (tail!12709 Nil!65997))))))

(declare-fun b!6787366 () Bool)

(assert (=> b!6787366 (= e!4096930 (nullable!6586 (reg!16936 r!7292)))))

(assert (= (and d!2132653 c!1261313) b!6787366))

(assert (= (and d!2132653 (not c!1261313)) b!6787364))

(assert (= (and d!2132653 c!1261312) b!6787358))

(assert (= (and d!2132653 (not c!1261312)) b!6787353))

(assert (= (and b!6787353 c!1261311) b!6787359))

(assert (= (and b!6787353 (not c!1261311)) b!6787357))

(assert (= (and b!6787357 (not res!2774121)) b!6787355))

(assert (= (and b!6787355 res!2774125) b!6787363))

(assert (= (and b!6787363 res!2774123) b!6787356))

(assert (= (and b!6787356 res!2774120) b!6787362))

(assert (= (and b!6787355 (not res!2774124)) b!6787354))

(assert (= (and b!6787354 res!2774122) b!6787360))

(assert (= (and b!6787360 (not res!2774118)) b!6787365))

(assert (= (and b!6787365 (not res!2774119)) b!6787361))

(assert (= (or b!6787358 b!6787363 b!6787360) bm!616127))

(declare-fun m!7535472 () Bool)

(assert (=> b!6787361 m!7535472))

(declare-fun m!7535474 () Bool)

(assert (=> d!2132653 m!7535474))

(assert (=> d!2132653 m!7534342))

(assert (=> b!6787364 m!7535472))

(assert (=> b!6787364 m!7535472))

(declare-fun m!7535476 () Bool)

(assert (=> b!6787364 m!7535476))

(declare-fun m!7535478 () Bool)

(assert (=> b!6787364 m!7535478))

(assert (=> b!6787364 m!7535476))

(assert (=> b!6787364 m!7535478))

(declare-fun m!7535480 () Bool)

(assert (=> b!6787364 m!7535480))

(assert (=> b!6787366 m!7534164))

(assert (=> b!6787362 m!7535472))

(assert (=> bm!616127 m!7535474))

(assert (=> b!6787365 m!7535478))

(assert (=> b!6787365 m!7535478))

(declare-fun m!7535482 () Bool)

(assert (=> b!6787365 m!7535482))

(assert (=> b!6787356 m!7535478))

(assert (=> b!6787356 m!7535478))

(assert (=> b!6787356 m!7535482))

(assert (=> d!2132179 d!2132653))

(assert (=> d!2132179 d!2132423))

(declare-fun d!2132655 () Bool)

(declare-fun c!1261315 () Bool)

(declare-fun e!4096936 () Bool)

(assert (=> d!2132655 (= c!1261315 e!4096936)))

(declare-fun res!2774126 () Bool)

(assert (=> d!2132655 (=> (not res!2774126) (not e!4096936))))

(assert (=> d!2132655 (= res!2774126 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))))))))

(declare-fun e!4096934 () (InoxSet Context!11982))

(assert (=> d!2132655 (= (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) (h!72445 s!2326)) e!4096934)))

(declare-fun bm!616128 () Bool)

(declare-fun call!616133 () (InoxSet Context!11982))

(assert (=> bm!616128 (= call!616133 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343))))))) (h!72445 s!2326)))))

(declare-fun b!6787367 () Bool)

(assert (=> b!6787367 (= e!4096936 (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343))))))))))

(declare-fun b!6787368 () Bool)

(declare-fun e!4096935 () (InoxSet Context!11982))

(assert (=> b!6787368 (= e!4096935 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6787369 () Bool)

(assert (=> b!6787369 (= e!4096934 e!4096935)))

(declare-fun c!1261314 () Bool)

(assert (=> b!6787369 (= c!1261314 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))))))))

(declare-fun b!6787370 () Bool)

(assert (=> b!6787370 (= e!4096934 ((_ map or) call!616133 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343))))))) (h!72445 s!2326))))))

(declare-fun b!6787371 () Bool)

(assert (=> b!6787371 (= e!4096935 call!616133)))

(assert (= (and d!2132655 res!2774126) b!6787367))

(assert (= (and d!2132655 c!1261315) b!6787370))

(assert (= (and d!2132655 (not c!1261315)) b!6787369))

(assert (= (and b!6787369 c!1261314) b!6787371))

(assert (= (and b!6787369 (not c!1261314)) b!6787368))

(assert (= (or b!6787370 b!6787371) bm!616128))

(declare-fun m!7535484 () Bool)

(assert (=> bm!616128 m!7535484))

(declare-fun m!7535486 () Bool)

(assert (=> b!6787367 m!7535486))

(declare-fun m!7535488 () Bool)

(assert (=> b!6787370 m!7535488))

(assert (=> b!6786330 d!2132655))

(assert (=> d!2132231 d!2132175))

(declare-fun d!2132657 () Bool)

(assert (=> d!2132657 (= (isEmpty!38364 (unfocusZipperList!2028 zl!343)) ((_ is Nil!65996) (unfocusZipperList!2028 zl!343)))))

(assert (=> b!6786238 d!2132657))

(declare-fun d!2132659 () Bool)

(declare-fun c!1261316 () Bool)

(assert (=> d!2132659 (= c!1261316 (isEmpty!38362 (tail!12709 s!2326)))))

(declare-fun e!4096937 () Bool)

(assert (=> d!2132659 (= (matchZipper!2593 (derivationStepZipper!2551 lt!2445599 (head!13624 s!2326)) (tail!12709 s!2326)) e!4096937)))

(declare-fun b!6787372 () Bool)

(assert (=> b!6787372 (= e!4096937 (nullableZipper!2314 (derivationStepZipper!2551 lt!2445599 (head!13624 s!2326))))))

(declare-fun b!6787373 () Bool)

(assert (=> b!6787373 (= e!4096937 (matchZipper!2593 (derivationStepZipper!2551 (derivationStepZipper!2551 lt!2445599 (head!13624 s!2326)) (head!13624 (tail!12709 s!2326))) (tail!12709 (tail!12709 s!2326))))))

(assert (= (and d!2132659 c!1261316) b!6787372))

(assert (= (and d!2132659 (not c!1261316)) b!6787373))

(assert (=> d!2132659 m!7534072))

(assert (=> d!2132659 m!7534078))

(assert (=> b!6787372 m!7534494))

(declare-fun m!7535490 () Bool)

(assert (=> b!6787372 m!7535490))

(assert (=> b!6787373 m!7534072))

(assert (=> b!6787373 m!7535024))

(assert (=> b!6787373 m!7534494))

(assert (=> b!6787373 m!7535024))

(declare-fun m!7535492 () Bool)

(assert (=> b!6787373 m!7535492))

(assert (=> b!6787373 m!7534072))

(assert (=> b!6787373 m!7535030))

(assert (=> b!6787373 m!7535492))

(assert (=> b!6787373 m!7535030))

(declare-fun m!7535494 () Bool)

(assert (=> b!6787373 m!7535494))

(assert (=> b!6786333 d!2132659))

(declare-fun bs!1808232 () Bool)

(declare-fun d!2132661 () Bool)

(assert (= bs!1808232 (and d!2132661 d!2132195)))

(declare-fun lambda!382233 () Int)

(assert (=> bs!1808232 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382233 lambda!382165))))

(declare-fun bs!1808233 () Bool)

(assert (= bs!1808233 (and d!2132661 d!2132235)))

(assert (=> bs!1808233 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382233 lambda!382169))))

(declare-fun bs!1808234 () Bool)

(assert (= bs!1808234 (and d!2132661 d!2132221)))

(assert (=> bs!1808234 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382233 lambda!382168))))

(declare-fun bs!1808235 () Bool)

(assert (= bs!1808235 (and d!2132661 d!2132569)))

(assert (=> bs!1808235 (= lambda!382233 lambda!382227)))

(declare-fun bs!1808236 () Bool)

(assert (= bs!1808236 (and d!2132661 b!6785571)))

(assert (=> bs!1808236 (= (= (head!13624 s!2326) (h!72445 s!2326)) (= lambda!382233 lambda!382085))))

(assert (=> d!2132661 true))

(assert (=> d!2132661 (= (derivationStepZipper!2551 lt!2445599 (head!13624 s!2326)) (flatMap!2088 lt!2445599 lambda!382233))))

(declare-fun bs!1808237 () Bool)

(assert (= bs!1808237 d!2132661))

(declare-fun m!7535496 () Bool)

(assert (=> bs!1808237 m!7535496))

(assert (=> b!6786333 d!2132661))

(assert (=> b!6786333 d!2132457))

(assert (=> b!6786333 d!2132359))

(declare-fun d!2132663 () Bool)

(assert (=> d!2132663 true))

(declare-fun setRes!46447 () Bool)

(assert (=> d!2132663 setRes!46447))

(declare-fun condSetEmpty!46447 () Bool)

(declare-fun res!2774127 () (InoxSet Context!11982))

(assert (=> d!2132663 (= condSetEmpty!46447 (= res!2774127 ((as const (Array Context!11982 Bool)) false)))))

(assert (=> d!2132663 (= (choose!50549 z!1189 lambda!382085) res!2774127)))

(declare-fun setIsEmpty!46447 () Bool)

(assert (=> setIsEmpty!46447 setRes!46447))

(declare-fun setNonEmpty!46447 () Bool)

(declare-fun setElem!46447 () Context!11982)

(declare-fun e!4096938 () Bool)

(declare-fun tp!1859125 () Bool)

(assert (=> setNonEmpty!46447 (= setRes!46447 (and tp!1859125 (inv!84764 setElem!46447) e!4096938))))

(declare-fun setRest!46447 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46447 (= res!2774127 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46447 true) setRest!46447))))

(declare-fun b!6787374 () Bool)

(declare-fun tp!1859124 () Bool)

(assert (=> b!6787374 (= e!4096938 tp!1859124)))

(assert (= (and d!2132663 condSetEmpty!46447) setIsEmpty!46447))

(assert (= (and d!2132663 (not condSetEmpty!46447)) setNonEmpty!46447))

(assert (= setNonEmpty!46447 b!6787374))

(declare-fun m!7535498 () Bool)

(assert (=> setNonEmpty!46447 m!7535498))

(assert (=> d!2132225 d!2132663))

(declare-fun d!2132665 () Bool)

(assert (=> d!2132665 (= (isEmpty!38366 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326)) (not ((_ is Some!16493) (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326))))))

(assert (=> d!2132159 d!2132665))

(assert (=> d!2132213 d!2132209))

(declare-fun d!2132667 () Bool)

(assert (=> d!2132667 (= (flatMap!2088 lt!2445599 lambda!382085) (dynLambda!26338 lambda!382085 lt!2445591))))

(assert (=> d!2132667 true))

(declare-fun _$13!4215 () Unit!159905)

(assert (=> d!2132667 (= (choose!50548 lt!2445599 lt!2445591 lambda!382085) _$13!4215)))

(declare-fun b_lambda!255617 () Bool)

(assert (=> (not b_lambda!255617) (not d!2132667)))

(declare-fun bs!1808238 () Bool)

(assert (= bs!1808238 d!2132667))

(assert (=> bs!1808238 m!7533876))

(assert (=> bs!1808238 m!7534448))

(assert (=> d!2132213 d!2132667))

(declare-fun d!2132669 () Bool)

(declare-fun res!2774131 () Bool)

(declare-fun e!4096939 () Bool)

(assert (=> d!2132669 (=> res!2774131 e!4096939)))

(assert (=> d!2132669 (= res!2774131 ((_ is ElementMatch!16607) lt!2445661))))

(assert (=> d!2132669 (= (validRegex!8343 lt!2445661) e!4096939)))

(declare-fun b!6787375 () Bool)

(declare-fun res!2774132 () Bool)

(declare-fun e!4096943 () Bool)

(assert (=> b!6787375 (=> res!2774132 e!4096943)))

(assert (=> b!6787375 (= res!2774132 (not ((_ is Concat!25452) lt!2445661)))))

(declare-fun e!4096944 () Bool)

(assert (=> b!6787375 (= e!4096944 e!4096943)))

(declare-fun b!6787376 () Bool)

(declare-fun e!4096941 () Bool)

(declare-fun call!616135 () Bool)

(assert (=> b!6787376 (= e!4096941 call!616135)))

(declare-fun b!6787377 () Bool)

(declare-fun e!4096942 () Bool)

(declare-fun e!4096940 () Bool)

(assert (=> b!6787377 (= e!4096942 e!4096940)))

(declare-fun res!2774128 () Bool)

(assert (=> b!6787377 (= res!2774128 (not (nullable!6586 (reg!16936 lt!2445661))))))

(assert (=> b!6787377 (=> (not res!2774128) (not e!4096940))))

(declare-fun bm!616129 () Bool)

(declare-fun call!616134 () Bool)

(declare-fun c!1261317 () Bool)

(assert (=> bm!616129 (= call!616134 (validRegex!8343 (ite c!1261317 (regOne!33727 lt!2445661) (regOne!33726 lt!2445661))))))

(declare-fun bm!616130 () Bool)

(declare-fun call!616136 () Bool)

(assert (=> bm!616130 (= call!616135 call!616136)))

(declare-fun b!6787378 () Bool)

(assert (=> b!6787378 (= e!4096942 e!4096944)))

(assert (=> b!6787378 (= c!1261317 ((_ is Union!16607) lt!2445661))))

(declare-fun b!6787379 () Bool)

(assert (=> b!6787379 (= e!4096939 e!4096942)))

(declare-fun c!1261318 () Bool)

(assert (=> b!6787379 (= c!1261318 ((_ is Star!16607) lt!2445661))))

(declare-fun b!6787380 () Bool)

(declare-fun e!4096945 () Bool)

(assert (=> b!6787380 (= e!4096945 call!616135)))

(declare-fun b!6787381 () Bool)

(assert (=> b!6787381 (= e!4096943 e!4096945)))

(declare-fun res!2774129 () Bool)

(assert (=> b!6787381 (=> (not res!2774129) (not e!4096945))))

(assert (=> b!6787381 (= res!2774129 call!616134)))

(declare-fun b!6787382 () Bool)

(assert (=> b!6787382 (= e!4096940 call!616136)))

(declare-fun bm!616131 () Bool)

(assert (=> bm!616131 (= call!616136 (validRegex!8343 (ite c!1261318 (reg!16936 lt!2445661) (ite c!1261317 (regTwo!33727 lt!2445661) (regTwo!33726 lt!2445661)))))))

(declare-fun b!6787383 () Bool)

(declare-fun res!2774130 () Bool)

(assert (=> b!6787383 (=> (not res!2774130) (not e!4096941))))

(assert (=> b!6787383 (= res!2774130 call!616134)))

(assert (=> b!6787383 (= e!4096944 e!4096941)))

(assert (= (and d!2132669 (not res!2774131)) b!6787379))

(assert (= (and b!6787379 c!1261318) b!6787377))

(assert (= (and b!6787379 (not c!1261318)) b!6787378))

(assert (= (and b!6787377 res!2774128) b!6787382))

(assert (= (and b!6787378 c!1261317) b!6787383))

(assert (= (and b!6787378 (not c!1261317)) b!6787375))

(assert (= (and b!6787383 res!2774130) b!6787376))

(assert (= (and b!6787375 (not res!2774132)) b!6787381))

(assert (= (and b!6787381 res!2774129) b!6787380))

(assert (= (or b!6787376 b!6787380) bm!616130))

(assert (= (or b!6787383 b!6787381) bm!616129))

(assert (= (or b!6787382 bm!616130) bm!616131))

(declare-fun m!7535500 () Bool)

(assert (=> b!6787377 m!7535500))

(declare-fun m!7535502 () Bool)

(assert (=> bm!616129 m!7535502))

(declare-fun m!7535504 () Bool)

(assert (=> bm!616131 m!7535504))

(assert (=> d!2132123 d!2132669))

(declare-fun d!2132671 () Bool)

(declare-fun res!2774133 () Bool)

(declare-fun e!4096946 () Bool)

(assert (=> d!2132671 (=> res!2774133 e!4096946)))

(assert (=> d!2132671 (= res!2774133 ((_ is Nil!65996) (exprs!6491 (h!72446 zl!343))))))

(assert (=> d!2132671 (= (forall!15799 (exprs!6491 (h!72446 zl!343)) lambda!382132) e!4096946)))

(declare-fun b!6787384 () Bool)

(declare-fun e!4096947 () Bool)

(assert (=> b!6787384 (= e!4096946 e!4096947)))

(declare-fun res!2774134 () Bool)

(assert (=> b!6787384 (=> (not res!2774134) (not e!4096947))))

(assert (=> b!6787384 (= res!2774134 (dynLambda!26340 lambda!382132 (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6787385 () Bool)

(assert (=> b!6787385 (= e!4096947 (forall!15799 (t!379839 (exprs!6491 (h!72446 zl!343))) lambda!382132))))

(assert (= (and d!2132671 (not res!2774133)) b!6787384))

(assert (= (and b!6787384 res!2774134) b!6787385))

(declare-fun b_lambda!255619 () Bool)

(assert (=> (not b_lambda!255619) (not b!6787384)))

(declare-fun m!7535506 () Bool)

(assert (=> b!6787384 m!7535506))

(declare-fun m!7535508 () Bool)

(assert (=> b!6787385 m!7535508))

(assert (=> d!2132123 d!2132671))

(declare-fun d!2132673 () Bool)

(declare-fun c!1261321 () Bool)

(assert (=> d!2132673 (= c!1261321 ((_ is Nil!65998) lt!2445666))))

(declare-fun e!4096950 () (InoxSet Context!11982))

(assert (=> d!2132673 (= (content!12861 lt!2445666) e!4096950)))

(declare-fun b!6787390 () Bool)

(assert (=> b!6787390 (= e!4096950 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6787391 () Bool)

(assert (=> b!6787391 (= e!4096950 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) (h!72446 lt!2445666) true) (content!12861 (t!379841 lt!2445666))))))

(assert (= (and d!2132673 c!1261321) b!6787390))

(assert (= (and d!2132673 (not c!1261321)) b!6787391))

(declare-fun m!7535510 () Bool)

(assert (=> b!6787391 m!7535510))

(declare-fun m!7535512 () Bool)

(assert (=> b!6787391 m!7535512))

(assert (=> b!6786095 d!2132673))

(declare-fun d!2132675 () Bool)

(assert (=> d!2132675 (= (flatMap!2088 lt!2445599 lambda!382169) (choose!50549 lt!2445599 lambda!382169))))

(declare-fun bs!1808239 () Bool)

(assert (= bs!1808239 d!2132675))

(declare-fun m!7535514 () Bool)

(assert (=> bs!1808239 m!7535514))

(assert (=> d!2132235 d!2132675))

(assert (=> d!2132229 d!2132225))

(declare-fun d!2132677 () Bool)

(assert (=> d!2132677 (= (flatMap!2088 z!1189 lambda!382085) (dynLambda!26338 lambda!382085 (h!72446 zl!343)))))

(assert (=> d!2132677 true))

(declare-fun _$13!4216 () Unit!159905)

(assert (=> d!2132677 (= (choose!50548 z!1189 (h!72446 zl!343) lambda!382085) _$13!4216)))

(declare-fun b_lambda!255621 () Bool)

(assert (=> (not b_lambda!255621) (not d!2132677)))

(declare-fun bs!1808240 () Bool)

(assert (= bs!1808240 d!2132677))

(assert (=> bs!1808240 m!7533958))

(assert (=> bs!1808240 m!7534486))

(assert (=> d!2132229 d!2132677))

(declare-fun bs!1808241 () Bool)

(declare-fun d!2132679 () Bool)

(assert (= bs!1808241 (and d!2132679 d!2132449)))

(declare-fun lambda!382234 () Int)

(assert (=> bs!1808241 (= lambda!382234 lambda!382201)))

(assert (=> d!2132679 (= (nullableZipper!2314 z!1189) (exists!2729 z!1189 lambda!382234))))

(declare-fun bs!1808242 () Bool)

(assert (= bs!1808242 d!2132679))

(declare-fun m!7535516 () Bool)

(assert (=> bs!1808242 m!7535516))

(assert (=> b!6785981 d!2132679))

(assert (=> b!6785816 d!2132357))

(assert (=> b!6785816 d!2132359))

(assert (=> b!6786204 d!2132039))

(declare-fun d!2132681 () Bool)

(assert (=> d!2132681 (= (nullable!6586 (regOne!33726 (reg!16936 r!7292))) (nullableFct!2492 (regOne!33726 (reg!16936 r!7292))))))

(declare-fun bs!1808243 () Bool)

(assert (= bs!1808243 d!2132681))

(declare-fun m!7535518 () Bool)

(assert (=> bs!1808243 m!7535518))

(assert (=> b!6786304 d!2132681))

(declare-fun d!2132683 () Bool)

(declare-fun res!2774135 () Bool)

(declare-fun e!4096951 () Bool)

(assert (=> d!2132683 (=> res!2774135 e!4096951)))

(assert (=> d!2132683 (= res!2774135 ((_ is Nil!65996) lt!2445694))))

(assert (=> d!2132683 (= (forall!15799 lt!2445694 lambda!382159) e!4096951)))

(declare-fun b!6787392 () Bool)

(declare-fun e!4096952 () Bool)

(assert (=> b!6787392 (= e!4096951 e!4096952)))

(declare-fun res!2774136 () Bool)

(assert (=> b!6787392 (=> (not res!2774136) (not e!4096952))))

(assert (=> b!6787392 (= res!2774136 (dynLambda!26340 lambda!382159 (h!72444 lt!2445694)))))

(declare-fun b!6787393 () Bool)

(assert (=> b!6787393 (= e!4096952 (forall!15799 (t!379839 lt!2445694) lambda!382159))))

(assert (= (and d!2132683 (not res!2774135)) b!6787392))

(assert (= (and b!6787392 res!2774136) b!6787393))

(declare-fun b_lambda!255623 () Bool)

(assert (=> (not b_lambda!255623) (not b!6787392)))

(declare-fun m!7535520 () Bool)

(assert (=> b!6787392 m!7535520))

(declare-fun m!7535522 () Bool)

(assert (=> b!6787393 m!7535522))

(assert (=> d!2132185 d!2132683))

(assert (=> bs!1807766 d!2132189))

(assert (=> bm!615833 d!2132175))

(declare-fun d!2132685 () Bool)

(assert (=> d!2132685 (= (isEmpty!38364 (exprs!6491 (h!72446 zl!343))) ((_ is Nil!65996) (exprs!6491 (h!72446 zl!343))))))

(assert (=> b!6786063 d!2132685))

(assert (=> bm!615846 d!2132175))

(declare-fun b!6787394 () Bool)

(declare-fun e!4096956 () (InoxSet Context!11982))

(declare-fun call!616142 () (InoxSet Context!11982))

(assert (=> b!6787394 (= e!4096956 call!616142)))

(declare-fun b!6787395 () Bool)

(declare-fun c!1261326 () Bool)

(assert (=> b!6787395 (= c!1261326 ((_ is Star!16607) (h!72444 (exprs!6491 lt!2445602))))))

(declare-fun e!4096957 () (InoxSet Context!11982))

(assert (=> b!6787395 (= e!4096957 e!4096956)))

(declare-fun bm!616132 () Bool)

(declare-fun c!1261322 () Bool)

(declare-fun call!616140 () (InoxSet Context!11982))

(declare-fun call!616141 () List!66120)

(declare-fun c!1261325 () Bool)

(declare-fun c!1261324 () Bool)

(assert (=> bm!616132 (= call!616140 (derivationStepZipperDown!1835 (ite c!1261322 (regTwo!33727 (h!72444 (exprs!6491 lt!2445602))) (ite c!1261325 (regTwo!33726 (h!72444 (exprs!6491 lt!2445602))) (ite c!1261324 (regOne!33726 (h!72444 (exprs!6491 lt!2445602))) (reg!16936 (h!72444 (exprs!6491 lt!2445602)))))) (ite (or c!1261322 c!1261325) (Context!11983 (t!379839 (exprs!6491 lt!2445602))) (Context!11983 call!616141)) (h!72445 s!2326)))))

(declare-fun b!6787396 () Bool)

(assert (=> b!6787396 (= e!4096956 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616133 () Bool)

(declare-fun call!616138 () List!66120)

(assert (=> bm!616133 (= call!616141 call!616138)))

(declare-fun b!6787397 () Bool)

(declare-fun e!4096954 () (InoxSet Context!11982))

(assert (=> b!6787397 (= e!4096954 e!4096957)))

(assert (=> b!6787397 (= c!1261324 ((_ is Concat!25452) (h!72444 (exprs!6491 lt!2445602))))))

(declare-fun bm!616134 () Bool)

(declare-fun call!616137 () (InoxSet Context!11982))

(assert (=> bm!616134 (= call!616142 call!616137)))

(declare-fun b!6787398 () Bool)

(declare-fun e!4096955 () Bool)

(assert (=> b!6787398 (= c!1261325 e!4096955)))

(declare-fun res!2774137 () Bool)

(assert (=> b!6787398 (=> (not res!2774137) (not e!4096955))))

(assert (=> b!6787398 (= res!2774137 ((_ is Concat!25452) (h!72444 (exprs!6491 lt!2445602))))))

(declare-fun e!4096953 () (InoxSet Context!11982))

(assert (=> b!6787398 (= e!4096953 e!4096954)))

(declare-fun bm!616135 () Bool)

(assert (=> bm!616135 (= call!616137 call!616140)))

(declare-fun b!6787399 () Bool)

(assert (=> b!6787399 (= e!4096957 call!616142)))

(declare-fun b!6787400 () Bool)

(declare-fun e!4096958 () (InoxSet Context!11982))

(assert (=> b!6787400 (= e!4096958 (store ((as const (Array Context!11982 Bool)) false) (Context!11983 (t!379839 (exprs!6491 lt!2445602))) true))))

(declare-fun bm!616136 () Bool)

(assert (=> bm!616136 (= call!616138 ($colon$colon!2416 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445602)))) (ite (or c!1261325 c!1261324) (regTwo!33726 (h!72444 (exprs!6491 lt!2445602))) (h!72444 (exprs!6491 lt!2445602)))))))

(declare-fun b!6787402 () Bool)

(declare-fun call!616139 () (InoxSet Context!11982))

(assert (=> b!6787402 (= e!4096954 ((_ map or) call!616139 call!616137))))

(declare-fun bm!616137 () Bool)

(assert (=> bm!616137 (= call!616139 (derivationStepZipperDown!1835 (ite c!1261322 (regOne!33727 (h!72444 (exprs!6491 lt!2445602))) (regOne!33726 (h!72444 (exprs!6491 lt!2445602)))) (ite c!1261322 (Context!11983 (t!379839 (exprs!6491 lt!2445602))) (Context!11983 call!616138)) (h!72445 s!2326)))))

(declare-fun b!6787403 () Bool)

(assert (=> b!6787403 (= e!4096955 (nullable!6586 (regOne!33726 (h!72444 (exprs!6491 lt!2445602)))))))

(declare-fun b!6787404 () Bool)

(assert (=> b!6787404 (= e!4096958 e!4096953)))

(assert (=> b!6787404 (= c!1261322 ((_ is Union!16607) (h!72444 (exprs!6491 lt!2445602))))))

(declare-fun d!2132687 () Bool)

(declare-fun c!1261323 () Bool)

(assert (=> d!2132687 (= c!1261323 (and ((_ is ElementMatch!16607) (h!72444 (exprs!6491 lt!2445602))) (= (c!1260825 (h!72444 (exprs!6491 lt!2445602))) (h!72445 s!2326))))))

(assert (=> d!2132687 (= (derivationStepZipperDown!1835 (h!72444 (exprs!6491 lt!2445602)) (Context!11983 (t!379839 (exprs!6491 lt!2445602))) (h!72445 s!2326)) e!4096958)))

(declare-fun b!6787401 () Bool)

(assert (=> b!6787401 (= e!4096953 ((_ map or) call!616139 call!616140))))

(assert (= (and d!2132687 c!1261323) b!6787400))

(assert (= (and d!2132687 (not c!1261323)) b!6787404))

(assert (= (and b!6787404 c!1261322) b!6787401))

(assert (= (and b!6787404 (not c!1261322)) b!6787398))

(assert (= (and b!6787398 res!2774137) b!6787403))

(assert (= (and b!6787398 c!1261325) b!6787402))

(assert (= (and b!6787398 (not c!1261325)) b!6787397))

(assert (= (and b!6787397 c!1261324) b!6787399))

(assert (= (and b!6787397 (not c!1261324)) b!6787395))

(assert (= (and b!6787395 c!1261326) b!6787394))

(assert (= (and b!6787395 (not c!1261326)) b!6787396))

(assert (= (or b!6787399 b!6787394) bm!616133))

(assert (= (or b!6787399 b!6787394) bm!616134))

(assert (= (or b!6787402 bm!616133) bm!616136))

(assert (= (or b!6787402 bm!616134) bm!616135))

(assert (= (or b!6787401 bm!616135) bm!616132))

(assert (= (or b!6787401 b!6787402) bm!616137))

(declare-fun m!7535524 () Bool)

(assert (=> bm!616132 m!7535524))

(declare-fun m!7535526 () Bool)

(assert (=> bm!616137 m!7535526))

(declare-fun m!7535528 () Bool)

(assert (=> b!6787403 m!7535528))

(declare-fun m!7535530 () Bool)

(assert (=> bm!616136 m!7535530))

(declare-fun m!7535532 () Bool)

(assert (=> b!6787400 m!7535532))

(assert (=> bm!615900 d!2132687))

(declare-fun d!2132689 () Bool)

(assert (=> d!2132689 (= (nullable!6586 (h!72444 (exprs!6491 lt!2445591))) (nullableFct!2492 (h!72444 (exprs!6491 lt!2445591))))))

(declare-fun bs!1808244 () Bool)

(assert (= bs!1808244 d!2132689))

(declare-fun m!7535534 () Bool)

(assert (=> bs!1808244 m!7535534))

(assert (=> b!6786306 d!2132689))

(assert (=> b!6786208 d!2132651))

(assert (=> b!6785878 d!2132457))

(declare-fun b!6787405 () Bool)

(declare-fun e!4096962 () (InoxSet Context!11982))

(declare-fun call!616148 () (InoxSet Context!11982))

(assert (=> b!6787405 (= e!4096962 call!616148)))

(declare-fun b!6787406 () Bool)

(declare-fun c!1261331 () Bool)

(assert (=> b!6787406 (= c!1261331 ((_ is Star!16607) (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun e!4096963 () (InoxSet Context!11982))

(assert (=> b!6787406 (= e!4096963 e!4096962)))

(declare-fun call!616146 () (InoxSet Context!11982))

(declare-fun c!1261330 () Bool)

(declare-fun bm!616138 () Bool)

(declare-fun call!616147 () List!66120)

(declare-fun c!1261327 () Bool)

(declare-fun c!1261329 () Bool)

(assert (=> bm!616138 (= call!616146 (derivationStepZipperDown!1835 (ite c!1261327 (regTwo!33727 (h!72444 (exprs!6491 (h!72446 zl!343)))) (ite c!1261330 (regTwo!33726 (h!72444 (exprs!6491 (h!72446 zl!343)))) (ite c!1261329 (regOne!33726 (h!72444 (exprs!6491 (h!72446 zl!343)))) (reg!16936 (h!72444 (exprs!6491 (h!72446 zl!343))))))) (ite (or c!1261327 c!1261330) (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) (Context!11983 call!616147)) (h!72445 s!2326)))))

(declare-fun b!6787407 () Bool)

(assert (=> b!6787407 (= e!4096962 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616139 () Bool)

(declare-fun call!616144 () List!66120)

(assert (=> bm!616139 (= call!616147 call!616144)))

(declare-fun b!6787408 () Bool)

(declare-fun e!4096960 () (InoxSet Context!11982))

(assert (=> b!6787408 (= e!4096960 e!4096963)))

(assert (=> b!6787408 (= c!1261329 ((_ is Concat!25452) (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun bm!616140 () Bool)

(declare-fun call!616143 () (InoxSet Context!11982))

(assert (=> bm!616140 (= call!616148 call!616143)))

(declare-fun b!6787409 () Bool)

(declare-fun e!4096961 () Bool)

(assert (=> b!6787409 (= c!1261330 e!4096961)))

(declare-fun res!2774138 () Bool)

(assert (=> b!6787409 (=> (not res!2774138) (not e!4096961))))

(assert (=> b!6787409 (= res!2774138 ((_ is Concat!25452) (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun e!4096959 () (InoxSet Context!11982))

(assert (=> b!6787409 (= e!4096959 e!4096960)))

(declare-fun bm!616141 () Bool)

(assert (=> bm!616141 (= call!616143 call!616146)))

(declare-fun b!6787410 () Bool)

(assert (=> b!6787410 (= e!4096963 call!616148)))

(declare-fun b!6787411 () Bool)

(declare-fun e!4096964 () (InoxSet Context!11982))

(assert (=> b!6787411 (= e!4096964 (store ((as const (Array Context!11982 Bool)) false) (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) true))))

(declare-fun bm!616142 () Bool)

(assert (=> bm!616142 (= call!616144 ($colon$colon!2416 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343))))) (ite (or c!1261330 c!1261329) (regTwo!33726 (h!72444 (exprs!6491 (h!72446 zl!343)))) (h!72444 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun b!6787413 () Bool)

(declare-fun call!616145 () (InoxSet Context!11982))

(assert (=> b!6787413 (= e!4096960 ((_ map or) call!616145 call!616143))))

(declare-fun bm!616143 () Bool)

(assert (=> bm!616143 (= call!616145 (derivationStepZipperDown!1835 (ite c!1261327 (regOne!33727 (h!72444 (exprs!6491 (h!72446 zl!343)))) (regOne!33726 (h!72444 (exprs!6491 (h!72446 zl!343))))) (ite c!1261327 (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) (Context!11983 call!616144)) (h!72445 s!2326)))))

(declare-fun b!6787414 () Bool)

(assert (=> b!6787414 (= e!4096961 (nullable!6586 (regOne!33726 (h!72444 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun b!6787415 () Bool)

(assert (=> b!6787415 (= e!4096964 e!4096959)))

(assert (=> b!6787415 (= c!1261327 ((_ is Union!16607) (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun d!2132691 () Bool)

(declare-fun c!1261328 () Bool)

(assert (=> d!2132691 (= c!1261328 (and ((_ is ElementMatch!16607) (h!72444 (exprs!6491 (h!72446 zl!343)))) (= (c!1260825 (h!72444 (exprs!6491 (h!72446 zl!343)))) (h!72445 s!2326))))))

(assert (=> d!2132691 (= (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (h!72446 zl!343))) (Context!11983 (t!379839 (exprs!6491 (h!72446 zl!343)))) (h!72445 s!2326)) e!4096964)))

(declare-fun b!6787412 () Bool)

(assert (=> b!6787412 (= e!4096959 ((_ map or) call!616145 call!616146))))

(assert (= (and d!2132691 c!1261328) b!6787411))

(assert (= (and d!2132691 (not c!1261328)) b!6787415))

(assert (= (and b!6787415 c!1261327) b!6787412))

(assert (= (and b!6787415 (not c!1261327)) b!6787409))

(assert (= (and b!6787409 res!2774138) b!6787414))

(assert (= (and b!6787409 c!1261330) b!6787413))

(assert (= (and b!6787409 (not c!1261330)) b!6787408))

(assert (= (and b!6787408 c!1261329) b!6787410))

(assert (= (and b!6787408 (not c!1261329)) b!6787406))

(assert (= (and b!6787406 c!1261331) b!6787405))

(assert (= (and b!6787406 (not c!1261331)) b!6787407))

(assert (= (or b!6787410 b!6787405) bm!616139))

(assert (= (or b!6787410 b!6787405) bm!616140))

(assert (= (or b!6787413 bm!616139) bm!616142))

(assert (= (or b!6787413 bm!616140) bm!616141))

(assert (= (or b!6787412 bm!616141) bm!616138))

(assert (= (or b!6787412 b!6787413) bm!616143))

(declare-fun m!7535536 () Bool)

(assert (=> bm!616138 m!7535536))

(declare-fun m!7535538 () Bool)

(assert (=> bm!616143 m!7535538))

(declare-fun m!7535540 () Bool)

(assert (=> b!6787414 m!7535540))

(declare-fun m!7535542 () Bool)

(assert (=> bm!616142 m!7535542))

(declare-fun m!7535544 () Bool)

(assert (=> b!6787411 m!7535544))

(assert (=> bm!615928 d!2132691))

(declare-fun d!2132693 () Bool)

(assert (=> d!2132693 (= (Exists!3675 (ite c!1260842 lambda!382094 lambda!382096)) (choose!50544 (ite c!1260842 lambda!382094 lambda!382096)))))

(declare-fun bs!1808245 () Bool)

(assert (= bs!1808245 d!2132693))

(declare-fun m!7535546 () Bool)

(assert (=> bs!1808245 m!7535546))

(assert (=> bm!615834 d!2132693))

(declare-fun bs!1808246 () Bool)

(declare-fun d!2132695 () Bool)

(assert (= bs!1808246 (and d!2132695 d!2132607)))

(declare-fun lambda!382235 () Int)

(assert (=> bs!1808246 (= lambda!382235 lambda!382232)))

(declare-fun bs!1808247 () Bool)

(assert (= bs!1808247 (and d!2132695 d!2132185)))

(assert (=> bs!1808247 (= lambda!382235 lambda!382159)))

(declare-fun bs!1808248 () Bool)

(assert (= bs!1808248 (and d!2132695 d!2132509)))

(assert (=> bs!1808248 (= lambda!382235 lambda!382211)))

(declare-fun bs!1808249 () Bool)

(assert (= bs!1808249 (and d!2132695 d!2132203)))

(assert (=> bs!1808249 (= lambda!382235 lambda!382166)))

(declare-fun bs!1808250 () Bool)

(assert (= bs!1808250 (and d!2132695 d!2132365)))

(assert (=> bs!1808250 (= lambda!382235 lambda!382188)))

(declare-fun bs!1808251 () Bool)

(assert (= bs!1808251 (and d!2132695 d!2132523)))

(assert (=> bs!1808251 (= lambda!382235 lambda!382214)))

(declare-fun bs!1808252 () Bool)

(assert (= bs!1808252 (and d!2132695 d!2132183)))

(assert (=> bs!1808252 (= lambda!382235 lambda!382156)))

(declare-fun bs!1808253 () Bool)

(assert (= bs!1808253 (and d!2132695 d!2132205)))

(assert (=> bs!1808253 (= lambda!382235 lambda!382167)))

(declare-fun bs!1808254 () Bool)

(assert (= bs!1808254 (and d!2132695 d!2132525)))

(assert (=> bs!1808254 (= lambda!382235 lambda!382217)))

(declare-fun bs!1808255 () Bool)

(assert (= bs!1808255 (and d!2132695 d!2132505)))

(assert (=> bs!1808255 (= lambda!382235 lambda!382210)))

(declare-fun bs!1808256 () Bool)

(assert (= bs!1808256 (and d!2132695 d!2132491)))

(assert (=> bs!1808256 (= lambda!382235 lambda!382209)))

(declare-fun bs!1808257 () Bool)

(assert (= bs!1808257 (and d!2132695 d!2132187)))

(assert (=> bs!1808257 (= lambda!382235 lambda!382162)))

(declare-fun bs!1808258 () Bool)

(assert (= bs!1808258 (and d!2132695 d!2132123)))

(assert (=> bs!1808258 (= lambda!382235 lambda!382132)))

(declare-fun b!6787416 () Bool)

(declare-fun e!4096967 () Bool)

(declare-fun e!4096966 () Bool)

(assert (=> b!6787416 (= e!4096967 e!4096966)))

(declare-fun c!1261334 () Bool)

(assert (=> b!6787416 (= c!1261334 (isEmpty!38364 (t!379839 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6787417 () Bool)

(declare-fun e!4096965 () Bool)

(assert (=> b!6787417 (= e!4096966 e!4096965)))

(declare-fun c!1261332 () Bool)

(assert (=> b!6787417 (= c!1261332 (isEmpty!38364 (tail!12710 (t!379839 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun b!6787418 () Bool)

(declare-fun e!4096970 () Bool)

(assert (=> b!6787418 (= e!4096970 (isEmpty!38364 (t!379839 (t!379839 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun b!6787419 () Bool)

(declare-fun lt!2445755 () Regex!16607)

(assert (=> b!6787419 (= e!4096965 (isConcat!1487 lt!2445755))))

(declare-fun b!6787420 () Bool)

(declare-fun e!4096968 () Regex!16607)

(assert (=> b!6787420 (= e!4096968 (Concat!25452 (h!72444 (t!379839 (exprs!6491 (h!72446 zl!343)))) (generalisedConcat!2204 (t!379839 (t!379839 (exprs!6491 (h!72446 zl!343)))))))))

(assert (=> d!2132695 e!4096967))

(declare-fun res!2774139 () Bool)

(assert (=> d!2132695 (=> (not res!2774139) (not e!4096967))))

(assert (=> d!2132695 (= res!2774139 (validRegex!8343 lt!2445755))))

(declare-fun e!4096969 () Regex!16607)

(assert (=> d!2132695 (= lt!2445755 e!4096969)))

(declare-fun c!1261333 () Bool)

(assert (=> d!2132695 (= c!1261333 e!4096970)))

(declare-fun res!2774140 () Bool)

(assert (=> d!2132695 (=> (not res!2774140) (not e!4096970))))

(assert (=> d!2132695 (= res!2774140 ((_ is Cons!65996) (t!379839 (exprs!6491 (h!72446 zl!343)))))))

(assert (=> d!2132695 (forall!15799 (t!379839 (exprs!6491 (h!72446 zl!343))) lambda!382235)))

(assert (=> d!2132695 (= (generalisedConcat!2204 (t!379839 (exprs!6491 (h!72446 zl!343)))) lt!2445755)))

(declare-fun b!6787421 () Bool)

(assert (=> b!6787421 (= e!4096966 (isEmptyExpr!1965 lt!2445755))))

(declare-fun b!6787422 () Bool)

(assert (=> b!6787422 (= e!4096965 (= lt!2445755 (head!13626 (t!379839 (exprs!6491 (h!72446 zl!343))))))))

(declare-fun b!6787423 () Bool)

(assert (=> b!6787423 (= e!4096969 e!4096968)))

(declare-fun c!1261335 () Bool)

(assert (=> b!6787423 (= c!1261335 ((_ is Cons!65996) (t!379839 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6787424 () Bool)

(assert (=> b!6787424 (= e!4096969 (h!72444 (t!379839 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun b!6787425 () Bool)

(assert (=> b!6787425 (= e!4096968 EmptyExpr!16607)))

(assert (= (and d!2132695 res!2774140) b!6787418))

(assert (= (and d!2132695 c!1261333) b!6787424))

(assert (= (and d!2132695 (not c!1261333)) b!6787423))

(assert (= (and b!6787423 c!1261335) b!6787420))

(assert (= (and b!6787423 (not c!1261335)) b!6787425))

(assert (= (and d!2132695 res!2774139) b!6787416))

(assert (= (and b!6787416 c!1261334) b!6787421))

(assert (= (and b!6787416 (not c!1261334)) b!6787417))

(assert (= (and b!6787417 c!1261332) b!6787422))

(assert (= (and b!6787417 (not c!1261332)) b!6787419))

(declare-fun m!7535548 () Bool)

(assert (=> b!6787418 m!7535548))

(declare-fun m!7535550 () Bool)

(assert (=> b!6787417 m!7535550))

(assert (=> b!6787417 m!7535550))

(declare-fun m!7535552 () Bool)

(assert (=> b!6787417 m!7535552))

(declare-fun m!7535554 () Bool)

(assert (=> b!6787419 m!7535554))

(declare-fun m!7535556 () Bool)

(assert (=> d!2132695 m!7535556))

(declare-fun m!7535558 () Bool)

(assert (=> d!2132695 m!7535558))

(declare-fun m!7535560 () Bool)

(assert (=> b!6787422 m!7535560))

(declare-fun m!7535562 () Bool)

(assert (=> b!6787420 m!7535562))

(declare-fun m!7535564 () Bool)

(assert (=> b!6787421 m!7535564))

(assert (=> b!6787416 m!7534276))

(assert (=> b!6786067 d!2132695))

(declare-fun d!2132697 () Bool)

(declare-fun c!1261337 () Bool)

(declare-fun e!4096973 () Bool)

(assert (=> d!2132697 (= c!1261337 e!4096973)))

(declare-fun res!2774141 () Bool)

(assert (=> d!2132697 (=> (not res!2774141) (not e!4096973))))

(assert (=> d!2132697 (= res!2774141 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591))))))))

(declare-fun e!4096971 () (InoxSet Context!11982))

(assert (=> d!2132697 (= (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 lt!2445591))) (h!72445 s!2326)) e!4096971)))

(declare-fun bm!616144 () Bool)

(declare-fun call!616149 () (InoxSet Context!11982))

(assert (=> bm!616144 (= call!616149 (derivationStepZipperDown!1835 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591))))) (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591)))))) (h!72445 s!2326)))))

(declare-fun b!6787426 () Bool)

(assert (=> b!6787426 (= e!4096973 (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591)))))))))

(declare-fun b!6787427 () Bool)

(declare-fun e!4096972 () (InoxSet Context!11982))

(assert (=> b!6787427 (= e!4096972 ((as const (Array Context!11982 Bool)) false))))

(declare-fun b!6787428 () Bool)

(assert (=> b!6787428 (= e!4096971 e!4096972)))

(declare-fun c!1261336 () Bool)

(assert (=> b!6787428 (= c!1261336 ((_ is Cons!65996) (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591))))))))

(declare-fun b!6787429 () Bool)

(assert (=> b!6787429 (= e!4096971 ((_ map or) call!616149 (derivationStepZipperUp!1761 (Context!11983 (t!379839 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591)))))) (h!72445 s!2326))))))

(declare-fun b!6787430 () Bool)

(assert (=> b!6787430 (= e!4096972 call!616149)))

(assert (= (and d!2132697 res!2774141) b!6787426))

(assert (= (and d!2132697 c!1261337) b!6787429))

(assert (= (and d!2132697 (not c!1261337)) b!6787428))

(assert (= (and b!6787428 c!1261336) b!6787430))

(assert (= (and b!6787428 (not c!1261336)) b!6787427))

(assert (= (or b!6787429 b!6787430) bm!616144))

(declare-fun m!7535566 () Bool)

(assert (=> bm!616144 m!7535566))

(declare-fun m!7535568 () Bool)

(assert (=> b!6787426 m!7535568))

(declare-fun m!7535570 () Bool)

(assert (=> b!6787429 m!7535570))

(assert (=> b!6786309 d!2132697))

(declare-fun d!2132699 () Bool)

(declare-fun res!2774145 () Bool)

(declare-fun e!4096974 () Bool)

(assert (=> d!2132699 (=> res!2774145 e!4096974)))

(assert (=> d!2132699 (= res!2774145 ((_ is ElementMatch!16607) lt!2445648))))

(assert (=> d!2132699 (= (validRegex!8343 lt!2445648) e!4096974)))

(declare-fun b!6787431 () Bool)

(declare-fun res!2774146 () Bool)

(declare-fun e!4096978 () Bool)

(assert (=> b!6787431 (=> res!2774146 e!4096978)))

(assert (=> b!6787431 (= res!2774146 (not ((_ is Concat!25452) lt!2445648)))))

(declare-fun e!4096979 () Bool)

(assert (=> b!6787431 (= e!4096979 e!4096978)))

(declare-fun b!6787432 () Bool)

(declare-fun e!4096976 () Bool)

(declare-fun call!616151 () Bool)

(assert (=> b!6787432 (= e!4096976 call!616151)))

(declare-fun b!6787433 () Bool)

(declare-fun e!4096977 () Bool)

(declare-fun e!4096975 () Bool)

(assert (=> b!6787433 (= e!4096977 e!4096975)))

(declare-fun res!2774142 () Bool)

(assert (=> b!6787433 (= res!2774142 (not (nullable!6586 (reg!16936 lt!2445648))))))

(assert (=> b!6787433 (=> (not res!2774142) (not e!4096975))))

(declare-fun bm!616145 () Bool)

(declare-fun call!616150 () Bool)

(declare-fun c!1261338 () Bool)

(assert (=> bm!616145 (= call!616150 (validRegex!8343 (ite c!1261338 (regOne!33727 lt!2445648) (regOne!33726 lt!2445648))))))

(declare-fun bm!616146 () Bool)

(declare-fun call!616152 () Bool)

(assert (=> bm!616146 (= call!616151 call!616152)))

(declare-fun b!6787434 () Bool)

(assert (=> b!6787434 (= e!4096977 e!4096979)))

(assert (=> b!6787434 (= c!1261338 ((_ is Union!16607) lt!2445648))))

(declare-fun b!6787435 () Bool)

(assert (=> b!6787435 (= e!4096974 e!4096977)))

(declare-fun c!1261339 () Bool)

(assert (=> b!6787435 (= c!1261339 ((_ is Star!16607) lt!2445648))))

(declare-fun b!6787436 () Bool)

(declare-fun e!4096980 () Bool)

(assert (=> b!6787436 (= e!4096980 call!616151)))

(declare-fun b!6787437 () Bool)

(assert (=> b!6787437 (= e!4096978 e!4096980)))

(declare-fun res!2774143 () Bool)

(assert (=> b!6787437 (=> (not res!2774143) (not e!4096980))))

(assert (=> b!6787437 (= res!2774143 call!616150)))

(declare-fun b!6787438 () Bool)

(assert (=> b!6787438 (= e!4096975 call!616152)))

(declare-fun bm!616147 () Bool)

(assert (=> bm!616147 (= call!616152 (validRegex!8343 (ite c!1261339 (reg!16936 lt!2445648) (ite c!1261338 (regTwo!33727 lt!2445648) (regTwo!33726 lt!2445648)))))))

(declare-fun b!6787439 () Bool)

(declare-fun res!2774144 () Bool)

(assert (=> b!6787439 (=> (not res!2774144) (not e!4096976))))

(assert (=> b!6787439 (= res!2774144 call!616150)))

(assert (=> b!6787439 (= e!4096979 e!4096976)))

(assert (= (and d!2132699 (not res!2774145)) b!6787435))

(assert (= (and b!6787435 c!1261339) b!6787433))

(assert (= (and b!6787435 (not c!1261339)) b!6787434))

(assert (= (and b!6787433 res!2774142) b!6787438))

(assert (= (and b!6787434 c!1261338) b!6787439))

(assert (= (and b!6787434 (not c!1261338)) b!6787431))

(assert (= (and b!6787439 res!2774144) b!6787432))

(assert (= (and b!6787431 (not res!2774146)) b!6787437))

(assert (= (and b!6787437 res!2774143) b!6787436))

(assert (= (or b!6787432 b!6787436) bm!616146))

(assert (= (or b!6787439 b!6787437) bm!616145))

(assert (= (or b!6787438 bm!616146) bm!616147))

(declare-fun m!7535572 () Bool)

(assert (=> b!6787433 m!7535572))

(declare-fun m!7535574 () Bool)

(assert (=> bm!616145 m!7535574))

(declare-fun m!7535576 () Bool)

(assert (=> bm!616147 m!7535576))

(assert (=> d!2132095 d!2132699))

(declare-fun bs!1808259 () Bool)

(declare-fun d!2132701 () Bool)

(assert (= bs!1808259 (and d!2132701 d!2132695)))

(declare-fun lambda!382236 () Int)

(assert (=> bs!1808259 (= lambda!382236 lambda!382235)))

(declare-fun bs!1808260 () Bool)

(assert (= bs!1808260 (and d!2132701 d!2132607)))

(assert (=> bs!1808260 (= lambda!382236 lambda!382232)))

(declare-fun bs!1808261 () Bool)

(assert (= bs!1808261 (and d!2132701 d!2132185)))

(assert (=> bs!1808261 (= lambda!382236 lambda!382159)))

(declare-fun bs!1808262 () Bool)

(assert (= bs!1808262 (and d!2132701 d!2132509)))

(assert (=> bs!1808262 (= lambda!382236 lambda!382211)))

(declare-fun bs!1808263 () Bool)

(assert (= bs!1808263 (and d!2132701 d!2132203)))

(assert (=> bs!1808263 (= lambda!382236 lambda!382166)))

(declare-fun bs!1808264 () Bool)

(assert (= bs!1808264 (and d!2132701 d!2132365)))

(assert (=> bs!1808264 (= lambda!382236 lambda!382188)))

(declare-fun bs!1808265 () Bool)

(assert (= bs!1808265 (and d!2132701 d!2132523)))

(assert (=> bs!1808265 (= lambda!382236 lambda!382214)))

(declare-fun bs!1808266 () Bool)

(assert (= bs!1808266 (and d!2132701 d!2132183)))

(assert (=> bs!1808266 (= lambda!382236 lambda!382156)))

(declare-fun bs!1808267 () Bool)

(assert (= bs!1808267 (and d!2132701 d!2132205)))

(assert (=> bs!1808267 (= lambda!382236 lambda!382167)))

(declare-fun bs!1808268 () Bool)

(assert (= bs!1808268 (and d!2132701 d!2132525)))

(assert (=> bs!1808268 (= lambda!382236 lambda!382217)))

(declare-fun bs!1808269 () Bool)

(assert (= bs!1808269 (and d!2132701 d!2132505)))

(assert (=> bs!1808269 (= lambda!382236 lambda!382210)))

(declare-fun bs!1808270 () Bool)

(assert (= bs!1808270 (and d!2132701 d!2132491)))

(assert (=> bs!1808270 (= lambda!382236 lambda!382209)))

(declare-fun bs!1808271 () Bool)

(assert (= bs!1808271 (and d!2132701 d!2132187)))

(assert (=> bs!1808271 (= lambda!382236 lambda!382162)))

(declare-fun bs!1808272 () Bool)

(assert (= bs!1808272 (and d!2132701 d!2132123)))

(assert (=> bs!1808272 (= lambda!382236 lambda!382132)))

(declare-fun b!6787440 () Bool)

(declare-fun e!4096983 () Bool)

(declare-fun e!4096982 () Bool)

(assert (=> b!6787440 (= e!4096983 e!4096982)))

(declare-fun c!1261341 () Bool)

(assert (=> b!6787440 (= c!1261341 (isEmpty!38364 (tail!12710 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998)))))))

(declare-fun b!6787441 () Bool)

(declare-fun lt!2445756 () Regex!16607)

(assert (=> b!6787441 (= e!4096982 (isUnion!1402 lt!2445756))))

(declare-fun e!4096986 () Bool)

(assert (=> d!2132701 e!4096986))

(declare-fun res!2774148 () Bool)

(assert (=> d!2132701 (=> (not res!2774148) (not e!4096986))))

(assert (=> d!2132701 (= res!2774148 (validRegex!8343 lt!2445756))))

(declare-fun e!4096981 () Regex!16607)

(assert (=> d!2132701 (= lt!2445756 e!4096981)))

(declare-fun c!1261340 () Bool)

(declare-fun e!4096984 () Bool)

(assert (=> d!2132701 (= c!1261340 e!4096984)))

(declare-fun res!2774147 () Bool)

(assert (=> d!2132701 (=> (not res!2774147) (not e!4096984))))

(assert (=> d!2132701 (= res!2774147 ((_ is Cons!65996) (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))))))

(assert (=> d!2132701 (forall!15799 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998)) lambda!382236)))

(assert (=> d!2132701 (= (generalisedUnion!2451 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))) lt!2445756)))

(declare-fun b!6787442 () Bool)

(assert (=> b!6787442 (= e!4096983 (isEmptyLang!1972 lt!2445756))))

(declare-fun b!6787443 () Bool)

(assert (=> b!6787443 (= e!4096986 e!4096983)))

(declare-fun c!1261342 () Bool)

(assert (=> b!6787443 (= c!1261342 (isEmpty!38364 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))))))

(declare-fun b!6787444 () Bool)

(declare-fun e!4096985 () Regex!16607)

(assert (=> b!6787444 (= e!4096985 EmptyLang!16607)))

(declare-fun b!6787445 () Bool)

(assert (=> b!6787445 (= e!4096982 (= lt!2445756 (head!13626 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998)))))))

(declare-fun b!6787446 () Bool)

(assert (=> b!6787446 (= e!4096985 (Union!16607 (h!72444 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))) (generalisedUnion!2451 (t!379839 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))))))))

(declare-fun b!6787447 () Bool)

(assert (=> b!6787447 (= e!4096984 (isEmpty!38364 (t!379839 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998)))))))

(declare-fun b!6787448 () Bool)

(assert (=> b!6787448 (= e!4096981 (h!72444 (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))))))

(declare-fun b!6787449 () Bool)

(assert (=> b!6787449 (= e!4096981 e!4096985)))

(declare-fun c!1261343 () Bool)

(assert (=> b!6787449 (= c!1261343 ((_ is Cons!65996) (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998))))))

(assert (= (and d!2132701 res!2774147) b!6787447))

(assert (= (and d!2132701 c!1261340) b!6787448))

(assert (= (and d!2132701 (not c!1261340)) b!6787449))

(assert (= (and b!6787449 c!1261343) b!6787446))

(assert (= (and b!6787449 (not c!1261343)) b!6787444))

(assert (= (and d!2132701 res!2774148) b!6787443))

(assert (= (and b!6787443 c!1261342) b!6787442))

(assert (= (and b!6787443 (not c!1261342)) b!6787440))

(assert (= (and b!6787440 c!1261341) b!6787445))

(assert (= (and b!6787440 (not c!1261341)) b!6787441))

(declare-fun m!7535578 () Bool)

(assert (=> b!6787447 m!7535578))

(assert (=> b!6787443 m!7534132))

(declare-fun m!7535580 () Bool)

(assert (=> b!6787443 m!7535580))

(declare-fun m!7535582 () Bool)

(assert (=> b!6787446 m!7535582))

(declare-fun m!7535584 () Bool)

(assert (=> b!6787441 m!7535584))

(declare-fun m!7535586 () Bool)

(assert (=> b!6787442 m!7535586))

(assert (=> b!6787440 m!7534132))

(declare-fun m!7535588 () Bool)

(assert (=> b!6787440 m!7535588))

(assert (=> b!6787440 m!7535588))

(declare-fun m!7535590 () Bool)

(assert (=> b!6787440 m!7535590))

(declare-fun m!7535592 () Bool)

(assert (=> d!2132701 m!7535592))

(assert (=> d!2132701 m!7534132))

(declare-fun m!7535594 () Bool)

(assert (=> d!2132701 m!7535594))

(assert (=> b!6787445 m!7534132))

(declare-fun m!7535596 () Bool)

(assert (=> b!6787445 m!7535596))

(assert (=> d!2132095 d!2132701))

(declare-fun bs!1808273 () Bool)

(declare-fun d!2132703 () Bool)

(assert (= bs!1808273 (and d!2132703 d!2132695)))

(declare-fun lambda!382237 () Int)

(assert (=> bs!1808273 (= lambda!382237 lambda!382235)))

(declare-fun bs!1808274 () Bool)

(assert (= bs!1808274 (and d!2132703 d!2132607)))

(assert (=> bs!1808274 (= lambda!382237 lambda!382232)))

(declare-fun bs!1808275 () Bool)

(assert (= bs!1808275 (and d!2132703 d!2132185)))

(assert (=> bs!1808275 (= lambda!382237 lambda!382159)))

(declare-fun bs!1808276 () Bool)

(assert (= bs!1808276 (and d!2132703 d!2132509)))

(assert (=> bs!1808276 (= lambda!382237 lambda!382211)))

(declare-fun bs!1808277 () Bool)

(assert (= bs!1808277 (and d!2132703 d!2132203)))

(assert (=> bs!1808277 (= lambda!382237 lambda!382166)))

(declare-fun bs!1808278 () Bool)

(assert (= bs!1808278 (and d!2132703 d!2132365)))

(assert (=> bs!1808278 (= lambda!382237 lambda!382188)))

(declare-fun bs!1808279 () Bool)

(assert (= bs!1808279 (and d!2132703 d!2132523)))

(assert (=> bs!1808279 (= lambda!382237 lambda!382214)))

(declare-fun bs!1808280 () Bool)

(assert (= bs!1808280 (and d!2132703 d!2132183)))

(assert (=> bs!1808280 (= lambda!382237 lambda!382156)))

(declare-fun bs!1808281 () Bool)

(assert (= bs!1808281 (and d!2132703 d!2132205)))

(assert (=> bs!1808281 (= lambda!382237 lambda!382167)))

(declare-fun bs!1808282 () Bool)

(assert (= bs!1808282 (and d!2132703 d!2132525)))

(assert (=> bs!1808282 (= lambda!382237 lambda!382217)))

(declare-fun bs!1808283 () Bool)

(assert (= bs!1808283 (and d!2132703 d!2132491)))

(assert (=> bs!1808283 (= lambda!382237 lambda!382209)))

(declare-fun bs!1808284 () Bool)

(assert (= bs!1808284 (and d!2132703 d!2132187)))

(assert (=> bs!1808284 (= lambda!382237 lambda!382162)))

(declare-fun bs!1808285 () Bool)

(assert (= bs!1808285 (and d!2132703 d!2132123)))

(assert (=> bs!1808285 (= lambda!382237 lambda!382132)))

(declare-fun bs!1808286 () Bool)

(assert (= bs!1808286 (and d!2132703 d!2132505)))

(assert (=> bs!1808286 (= lambda!382237 lambda!382210)))

(declare-fun bs!1808287 () Bool)

(assert (= bs!1808287 (and d!2132703 d!2132701)))

(assert (=> bs!1808287 (= lambda!382237 lambda!382236)))

(declare-fun lt!2445757 () List!66120)

(assert (=> d!2132703 (forall!15799 lt!2445757 lambda!382237)))

(declare-fun e!4096987 () List!66120)

(assert (=> d!2132703 (= lt!2445757 e!4096987)))

(declare-fun c!1261344 () Bool)

(assert (=> d!2132703 (= c!1261344 ((_ is Cons!65998) (Cons!65998 lt!2445602 Nil!65998)))))

(assert (=> d!2132703 (= (unfocusZipperList!2028 (Cons!65998 lt!2445602 Nil!65998)) lt!2445757)))

(declare-fun b!6787450 () Bool)

(assert (=> b!6787450 (= e!4096987 (Cons!65996 (generalisedConcat!2204 (exprs!6491 (h!72446 (Cons!65998 lt!2445602 Nil!65998)))) (unfocusZipperList!2028 (t!379841 (Cons!65998 lt!2445602 Nil!65998)))))))

(declare-fun b!6787451 () Bool)

(assert (=> b!6787451 (= e!4096987 Nil!65996)))

(assert (= (and d!2132703 c!1261344) b!6787450))

(assert (= (and d!2132703 (not c!1261344)) b!6787451))

(declare-fun m!7535598 () Bool)

(assert (=> d!2132703 m!7535598))

(declare-fun m!7535600 () Bool)

(assert (=> b!6787450 m!7535600))

(declare-fun m!7535602 () Bool)

(assert (=> b!6787450 m!7535602))

(assert (=> d!2132095 d!2132703))

(declare-fun d!2132705 () Bool)

(assert (=> d!2132705 (= (nullable!6586 r!7292) (nullableFct!2492 r!7292))))

(declare-fun bs!1808288 () Bool)

(assert (= bs!1808288 d!2132705))

(declare-fun m!7535604 () Bool)

(assert (=> bs!1808288 m!7535604))

(assert (=> b!6785826 d!2132705))

(declare-fun d!2132707 () Bool)

(assert (=> d!2132707 true))

(declare-fun setRes!46448 () Bool)

(assert (=> d!2132707 setRes!46448))

(declare-fun condSetEmpty!46448 () Bool)

(declare-fun res!2774149 () (InoxSet Context!11982))

(assert (=> d!2132707 (= condSetEmpty!46448 (= res!2774149 ((as const (Array Context!11982 Bool)) false)))))

(assert (=> d!2132707 (= (choose!50549 lt!2445599 lambda!382085) res!2774149)))

(declare-fun setIsEmpty!46448 () Bool)

(assert (=> setIsEmpty!46448 setRes!46448))

(declare-fun setElem!46448 () Context!11982)

(declare-fun setNonEmpty!46448 () Bool)

(declare-fun e!4096988 () Bool)

(declare-fun tp!1859127 () Bool)

(assert (=> setNonEmpty!46448 (= setRes!46448 (and tp!1859127 (inv!84764 setElem!46448) e!4096988))))

(declare-fun setRest!46448 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46448 (= res!2774149 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46448 true) setRest!46448))))

(declare-fun b!6787452 () Bool)

(declare-fun tp!1859126 () Bool)

(assert (=> b!6787452 (= e!4096988 tp!1859126)))

(assert (= (and d!2132707 condSetEmpty!46448) setIsEmpty!46448))

(assert (= (and d!2132707 (not condSetEmpty!46448)) setNonEmpty!46448))

(assert (= setNonEmpty!46448 b!6787452))

(declare-fun m!7535606 () Bool)

(assert (=> setNonEmpty!46448 m!7535606))

(assert (=> d!2132209 d!2132707))

(declare-fun d!2132709 () Bool)

(assert (=> d!2132709 true))

(assert (=> d!2132709 true))

(declare-fun res!2774152 () Bool)

(assert (=> d!2132709 (= (choose!50544 lambda!382083) res!2774152)))

(assert (=> d!2132157 d!2132709))

(declare-fun d!2132711 () Bool)

(declare-fun res!2774153 () Bool)

(declare-fun e!4096989 () Bool)

(assert (=> d!2132711 (=> res!2774153 e!4096989)))

(assert (=> d!2132711 (= res!2774153 ((_ is Nil!65996) (exprs!6491 lt!2445587)))))

(assert (=> d!2132711 (= (forall!15799 (exprs!6491 lt!2445587) lambda!382162) e!4096989)))

(declare-fun b!6787453 () Bool)

(declare-fun e!4096990 () Bool)

(assert (=> b!6787453 (= e!4096989 e!4096990)))

(declare-fun res!2774154 () Bool)

(assert (=> b!6787453 (=> (not res!2774154) (not e!4096990))))

(assert (=> b!6787453 (= res!2774154 (dynLambda!26340 lambda!382162 (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun b!6787454 () Bool)

(assert (=> b!6787454 (= e!4096990 (forall!15799 (t!379839 (exprs!6491 lt!2445587)) lambda!382162))))

(assert (= (and d!2132711 (not res!2774153)) b!6787453))

(assert (= (and b!6787453 res!2774154) b!6787454))

(declare-fun b_lambda!255625 () Bool)

(assert (=> (not b_lambda!255625) (not b!6787453)))

(declare-fun m!7535608 () Bool)

(assert (=> b!6787453 m!7535608))

(declare-fun m!7535610 () Bool)

(assert (=> b!6787454 m!7535610))

(assert (=> d!2132187 d!2132711))

(declare-fun bs!1808289 () Bool)

(declare-fun d!2132713 () Bool)

(assert (= bs!1808289 (and d!2132713 d!2132449)))

(declare-fun lambda!382238 () Int)

(assert (=> bs!1808289 (= lambda!382238 lambda!382201)))

(declare-fun bs!1808290 () Bool)

(assert (= bs!1808290 (and d!2132713 d!2132679)))

(assert (=> bs!1808290 (= lambda!382238 lambda!382234)))

(assert (=> d!2132713 (= (nullableZipper!2314 lt!2445599) (exists!2729 lt!2445599 lambda!382238))))

(declare-fun bs!1808291 () Bool)

(assert (= bs!1808291 d!2132713))

(declare-fun m!7535612 () Bool)

(assert (=> bs!1808291 m!7535612))

(assert (=> b!6786332 d!2132713))

(declare-fun d!2132715 () Bool)

(declare-fun res!2774159 () Bool)

(declare-fun e!4096995 () Bool)

(assert (=> d!2132715 (=> res!2774159 e!4096995)))

(assert (=> d!2132715 (= res!2774159 ((_ is Nil!65998) lt!2445666))))

(assert (=> d!2132715 (= (noDuplicate!2392 lt!2445666) e!4096995)))

(declare-fun b!6787459 () Bool)

(declare-fun e!4096996 () Bool)

(assert (=> b!6787459 (= e!4096995 e!4096996)))

(declare-fun res!2774160 () Bool)

(assert (=> b!6787459 (=> (not res!2774160) (not e!4096996))))

(declare-fun contains!20287 (List!66122 Context!11982) Bool)

(assert (=> b!6787459 (= res!2774160 (not (contains!20287 (t!379841 lt!2445666) (h!72446 lt!2445666))))))

(declare-fun b!6787460 () Bool)

(assert (=> b!6787460 (= e!4096996 (noDuplicate!2392 (t!379841 lt!2445666)))))

(assert (= (and d!2132715 (not res!2774159)) b!6787459))

(assert (= (and b!6787459 res!2774160) b!6787460))

(declare-fun m!7535614 () Bool)

(assert (=> b!6787459 m!7535614))

(declare-fun m!7535616 () Bool)

(assert (=> b!6787460 m!7535616))

(assert (=> d!2132153 d!2132715))

(declare-fun d!2132717 () Bool)

(declare-fun e!4097004 () Bool)

(assert (=> d!2132717 e!4097004))

(declare-fun res!2774165 () Bool)

(assert (=> d!2132717 (=> (not res!2774165) (not e!4097004))))

(declare-fun res!2774166 () List!66122)

(assert (=> d!2132717 (= res!2774165 (noDuplicate!2392 res!2774166))))

(declare-fun e!4097003 () Bool)

(assert (=> d!2132717 e!4097003))

(assert (=> d!2132717 (= (choose!50543 z!1189) res!2774166)))

(declare-fun b!6787468 () Bool)

(declare-fun e!4097005 () Bool)

(declare-fun tp!1859133 () Bool)

(assert (=> b!6787468 (= e!4097005 tp!1859133)))

(declare-fun tp!1859132 () Bool)

(declare-fun b!6787467 () Bool)

(assert (=> b!6787467 (= e!4097003 (and (inv!84764 (h!72446 res!2774166)) e!4097005 tp!1859132))))

(declare-fun b!6787469 () Bool)

(assert (=> b!6787469 (= e!4097004 (= (content!12861 res!2774166) z!1189))))

(assert (= b!6787467 b!6787468))

(assert (= (and d!2132717 ((_ is Cons!65998) res!2774166)) b!6787467))

(assert (= (and d!2132717 res!2774165) b!6787469))

(declare-fun m!7535618 () Bool)

(assert (=> d!2132717 m!7535618))

(declare-fun m!7535620 () Bool)

(assert (=> b!6787467 m!7535620))

(declare-fun m!7535622 () Bool)

(assert (=> b!6787469 m!7535622))

(assert (=> d!2132153 d!2132717))

(declare-fun d!2132719 () Bool)

(assert (=> d!2132719 (= (isEmptyLang!1972 lt!2445691) ((_ is EmptyLang!16607) lt!2445691))))

(assert (=> b!6786237 d!2132719))

(assert (=> d!2132093 d!2132087))

(assert (=> d!2132093 d!2132081))

(declare-fun d!2132721 () Bool)

(assert (=> d!2132721 (= (matchR!8790 lt!2445581 s!2326) (matchRSpec!3708 lt!2445581 s!2326))))

(assert (=> d!2132721 true))

(declare-fun _$88!5589 () Unit!159905)

(assert (=> d!2132721 (= (choose!50542 lt!2445581 s!2326) _$88!5589)))

(declare-fun bs!1808292 () Bool)

(assert (= bs!1808292 d!2132721))

(assert (=> bs!1808292 m!7533966))

(assert (=> bs!1808292 m!7533964))

(assert (=> d!2132093 d!2132721))

(assert (=> d!2132093 d!2132631))

(declare-fun bs!1808293 () Bool)

(declare-fun b!6787472 () Bool)

(assert (= bs!1808293 (and b!6787472 b!6785576)))

(declare-fun lambda!382239 () Int)

(assert (=> bs!1808293 (not (= lambda!382239 lambda!382084))))

(declare-fun bs!1808294 () Bool)

(assert (= bs!1808294 (and b!6787472 d!2132181)))

(assert (=> bs!1808294 (not (= lambda!382239 lambda!382153))))

(declare-fun bs!1808295 () Bool)

(assert (= bs!1808295 (and b!6787472 b!6787101)))

(assert (=> bs!1808295 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 (regOne!33727 r!7292))) (= (regTwo!33727 lt!2445581) (regOne!33727 r!7292))) (= lambda!382239 lambda!382223))))

(declare-fun bs!1808296 () Bool)

(assert (= bs!1808296 (and b!6787472 d!2132173)))

(assert (=> bs!1808296 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33727 lt!2445581) (Star!16607 (reg!16936 r!7292)))) (= lambda!382239 lambda!382150))))

(declare-fun bs!1808297 () Bool)

(assert (= bs!1808297 (and b!6787472 d!2132385)))

(assert (=> bs!1808297 (not (= lambda!382239 lambda!382197))))

(assert (=> bs!1808293 (not (= lambda!382239 lambda!382082))))

(declare-fun bs!1808298 () Bool)

(assert (= bs!1808298 (and b!6787472 b!6787064)))

(assert (=> bs!1808298 (not (= lambda!382239 lambda!382221))))

(declare-fun bs!1808299 () Bool)

(assert (= bs!1808299 (and b!6787472 b!6785833)))

(assert (=> bs!1808299 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 lt!2445581)) (= (regTwo!33727 lt!2445581) lt!2445581)) (= lambda!382239 lambda!382120))))

(assert (=> bs!1808296 (not (= lambda!382239 lambda!382149))))

(declare-fun bs!1808300 () Bool)

(assert (= bs!1808300 (and b!6787472 b!6785656)))

(assert (=> bs!1808300 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33727 lt!2445581) r!7292)) (= lambda!382239 lambda!382094))))

(declare-fun bs!1808301 () Bool)

(assert (= bs!1808301 (and b!6787472 b!6787059)))

(assert (=> bs!1808301 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 (regOne!33727 lt!2445581))) (= (regTwo!33727 lt!2445581) (regOne!33727 lt!2445581))) (= lambda!382239 lambda!382220))))

(declare-fun bs!1808302 () Bool)

(assert (= bs!1808302 (and b!6787472 d!2132161)))

(assert (=> bs!1808302 (not (= lambda!382239 lambda!382143))))

(declare-fun bs!1808303 () Bool)

(assert (= bs!1808303 (and b!6787472 b!6787106)))

(assert (=> bs!1808303 (not (= lambda!382239 lambda!382225))))

(declare-fun bs!1808304 () Bool)

(assert (= bs!1808304 (and b!6787472 b!6785838)))

(assert (=> bs!1808304 (not (= lambda!382239 lambda!382121))))

(assert (=> bs!1808297 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33727 lt!2445581) (Star!16607 (reg!16936 r!7292)))) (= lambda!382239 lambda!382198))))

(declare-fun bs!1808305 () Bool)

(assert (= bs!1808305 (and b!6787472 b!6785661)))

(assert (=> bs!1808305 (not (= lambda!382239 lambda!382096))))

(assert (=> bs!1808293 (= (and (= (reg!16936 (regTwo!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33727 lt!2445581) r!7292)) (= lambda!382239 lambda!382083))))

(assert (=> bs!1808302 (not (= lambda!382239 lambda!382144))))

(assert (=> b!6787472 true))

(assert (=> b!6787472 true))

(declare-fun bs!1808306 () Bool)

(declare-fun b!6787477 () Bool)

(assert (= bs!1808306 (and b!6787477 b!6785576)))

(declare-fun lambda!382240 () Int)

(assert (=> bs!1808306 (= (and (= (regOne!33726 (regTwo!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33726 (regTwo!33727 lt!2445581)) r!7292)) (= lambda!382240 lambda!382084))))

(declare-fun bs!1808307 () Bool)

(assert (= bs!1808307 (and b!6787477 d!2132181)))

(assert (=> bs!1808307 (not (= lambda!382240 lambda!382153))))

(declare-fun bs!1808308 () Bool)

(assert (= bs!1808308 (and b!6787477 b!6787101)))

(assert (=> bs!1808308 (not (= lambda!382240 lambda!382223))))

(declare-fun bs!1808309 () Bool)

(assert (= bs!1808309 (and b!6787477 d!2132173)))

(assert (=> bs!1808309 (not (= lambda!382240 lambda!382150))))

(declare-fun bs!1808310 () Bool)

(assert (= bs!1808310 (and b!6787477 d!2132385)))

(assert (=> bs!1808310 (not (= lambda!382240 lambda!382197))))

(assert (=> bs!1808306 (not (= lambda!382240 lambda!382082))))

(declare-fun bs!1808311 () Bool)

(assert (= bs!1808311 (and b!6787477 b!6787064)))

(assert (=> bs!1808311 (= (and (= (regOne!33726 (regTwo!33727 lt!2445581)) (regOne!33726 (regOne!33727 lt!2445581))) (= (regTwo!33726 (regTwo!33727 lt!2445581)) (regTwo!33726 (regOne!33727 lt!2445581)))) (= lambda!382240 lambda!382221))))

(declare-fun bs!1808312 () Bool)

(assert (= bs!1808312 (and b!6787477 b!6785833)))

(assert (=> bs!1808312 (not (= lambda!382240 lambda!382120))))

(assert (=> bs!1808309 (not (= lambda!382240 lambda!382149))))

(declare-fun bs!1808313 () Bool)

(assert (= bs!1808313 (and b!6787477 b!6785656)))

(assert (=> bs!1808313 (not (= lambda!382240 lambda!382094))))

(declare-fun bs!1808314 () Bool)

(assert (= bs!1808314 (and b!6787477 b!6787472)))

(assert (=> bs!1808314 (not (= lambda!382240 lambda!382239))))

(declare-fun bs!1808315 () Bool)

(assert (= bs!1808315 (and b!6787477 b!6787059)))

(assert (=> bs!1808315 (not (= lambda!382240 lambda!382220))))

(declare-fun bs!1808316 () Bool)

(assert (= bs!1808316 (and b!6787477 d!2132161)))

(assert (=> bs!1808316 (not (= lambda!382240 lambda!382143))))

(declare-fun bs!1808317 () Bool)

(assert (= bs!1808317 (and b!6787477 b!6787106)))

(assert (=> bs!1808317 (= (and (= (regOne!33726 (regTwo!33727 lt!2445581)) (regOne!33726 (regOne!33727 r!7292))) (= (regTwo!33726 (regTwo!33727 lt!2445581)) (regTwo!33726 (regOne!33727 r!7292)))) (= lambda!382240 lambda!382225))))

(declare-fun bs!1808318 () Bool)

(assert (= bs!1808318 (and b!6787477 b!6785838)))

(assert (=> bs!1808318 (= (and (= (regOne!33726 (regTwo!33727 lt!2445581)) (regOne!33726 lt!2445581)) (= (regTwo!33726 (regTwo!33727 lt!2445581)) (regTwo!33726 lt!2445581))) (= lambda!382240 lambda!382121))))

(assert (=> bs!1808310 (not (= lambda!382240 lambda!382198))))

(declare-fun bs!1808319 () Bool)

(assert (= bs!1808319 (and b!6787477 b!6785661)))

(assert (=> bs!1808319 (= (and (= (regOne!33726 (regTwo!33727 lt!2445581)) (regOne!33726 r!7292)) (= (regTwo!33726 (regTwo!33727 lt!2445581)) (regTwo!33726 r!7292))) (= lambda!382240 lambda!382096))))

(assert (=> bs!1808306 (not (= lambda!382240 lambda!382083))))

(assert (=> bs!1808316 (= (and (= (regOne!33726 (regTwo!33727 lt!2445581)) (reg!16936 r!7292)) (= (regTwo!33726 (regTwo!33727 lt!2445581)) r!7292)) (= lambda!382240 lambda!382144))))

(assert (=> b!6787477 true))

(assert (=> b!6787477 true))

(declare-fun b!6787470 () Bool)

(declare-fun c!1261346 () Bool)

(assert (=> b!6787470 (= c!1261346 ((_ is ElementMatch!16607) (regTwo!33727 lt!2445581)))))

(declare-fun e!4097010 () Bool)

(declare-fun e!4097006 () Bool)

(assert (=> b!6787470 (= e!4097010 e!4097006)))

(declare-fun b!6787471 () Bool)

(declare-fun e!4097007 () Bool)

(declare-fun call!616154 () Bool)

(assert (=> b!6787471 (= e!4097007 call!616154)))

(declare-fun e!4097012 () Bool)

(declare-fun call!616153 () Bool)

(assert (=> b!6787472 (= e!4097012 call!616153)))

(declare-fun b!6787473 () Bool)

(declare-fun c!1261348 () Bool)

(assert (=> b!6787473 (= c!1261348 ((_ is Union!16607) (regTwo!33727 lt!2445581)))))

(declare-fun e!4097009 () Bool)

(assert (=> b!6787473 (= e!4097006 e!4097009)))

(declare-fun b!6787475 () Bool)

(assert (=> b!6787475 (= e!4097006 (= s!2326 (Cons!65997 (c!1260825 (regTwo!33727 lt!2445581)) Nil!65997)))))

(declare-fun b!6787476 () Bool)

(declare-fun e!4097011 () Bool)

(assert (=> b!6787476 (= e!4097011 (matchRSpec!3708 (regTwo!33727 (regTwo!33727 lt!2445581)) s!2326))))

(declare-fun bm!616148 () Bool)

(assert (=> bm!616148 (= call!616154 (isEmpty!38362 s!2326))))

(declare-fun e!4097008 () Bool)

(assert (=> b!6787477 (= e!4097008 call!616153)))

(declare-fun d!2132723 () Bool)

(declare-fun c!1261347 () Bool)

(assert (=> d!2132723 (= c!1261347 ((_ is EmptyExpr!16607) (regTwo!33727 lt!2445581)))))

(assert (=> d!2132723 (= (matchRSpec!3708 (regTwo!33727 lt!2445581) s!2326) e!4097007)))

(declare-fun b!6787474 () Bool)

(assert (=> b!6787474 (= e!4097009 e!4097011)))

(declare-fun res!2774168 () Bool)

(assert (=> b!6787474 (= res!2774168 (matchRSpec!3708 (regOne!33727 (regTwo!33727 lt!2445581)) s!2326))))

(assert (=> b!6787474 (=> res!2774168 e!4097011)))

(declare-fun b!6787478 () Bool)

(declare-fun res!2774167 () Bool)

(assert (=> b!6787478 (=> res!2774167 e!4097012)))

(assert (=> b!6787478 (= res!2774167 call!616154)))

(assert (=> b!6787478 (= e!4097008 e!4097012)))

(declare-fun b!6787479 () Bool)

(assert (=> b!6787479 (= e!4097007 e!4097010)))

(declare-fun res!2774169 () Bool)

(assert (=> b!6787479 (= res!2774169 (not ((_ is EmptyLang!16607) (regTwo!33727 lt!2445581))))))

(assert (=> b!6787479 (=> (not res!2774169) (not e!4097010))))

(declare-fun bm!616149 () Bool)

(declare-fun c!1261345 () Bool)

(assert (=> bm!616149 (= call!616153 (Exists!3675 (ite c!1261345 lambda!382239 lambda!382240)))))

(declare-fun b!6787480 () Bool)

(assert (=> b!6787480 (= e!4097009 e!4097008)))

(assert (=> b!6787480 (= c!1261345 ((_ is Star!16607) (regTwo!33727 lt!2445581)))))

(assert (= (and d!2132723 c!1261347) b!6787471))

(assert (= (and d!2132723 (not c!1261347)) b!6787479))

(assert (= (and b!6787479 res!2774169) b!6787470))

(assert (= (and b!6787470 c!1261346) b!6787475))

(assert (= (and b!6787470 (not c!1261346)) b!6787473))

(assert (= (and b!6787473 c!1261348) b!6787474))

(assert (= (and b!6787473 (not c!1261348)) b!6787480))

(assert (= (and b!6787474 (not res!2774168)) b!6787476))

(assert (= (and b!6787480 c!1261345) b!6787478))

(assert (= (and b!6787480 (not c!1261345)) b!6787477))

(assert (= (and b!6787478 (not res!2774167)) b!6787472))

(assert (= (or b!6787472 b!6787477) bm!616149))

(assert (= (or b!6787471 b!6787478) bm!616148))

(declare-fun m!7535624 () Bool)

(assert (=> b!6787476 m!7535624))

(assert (=> bm!616148 m!7533888))

(declare-fun m!7535626 () Bool)

(assert (=> b!6787474 m!7535626))

(declare-fun m!7535628 () Bool)

(assert (=> bm!616149 m!7535628))

(assert (=> b!6785837 d!2132723))

(declare-fun bs!1808320 () Bool)

(declare-fun d!2132725 () Bool)

(assert (= bs!1808320 (and d!2132725 d!2132695)))

(declare-fun lambda!382241 () Int)

(assert (=> bs!1808320 (= lambda!382241 lambda!382235)))

(declare-fun bs!1808321 () Bool)

(assert (= bs!1808321 (and d!2132725 d!2132607)))

(assert (=> bs!1808321 (= lambda!382241 lambda!382232)))

(declare-fun bs!1808322 () Bool)

(assert (= bs!1808322 (and d!2132725 d!2132185)))

(assert (=> bs!1808322 (= lambda!382241 lambda!382159)))

(declare-fun bs!1808323 () Bool)

(assert (= bs!1808323 (and d!2132725 d!2132509)))

(assert (=> bs!1808323 (= lambda!382241 lambda!382211)))

(declare-fun bs!1808324 () Bool)

(assert (= bs!1808324 (and d!2132725 d!2132203)))

(assert (=> bs!1808324 (= lambda!382241 lambda!382166)))

(declare-fun bs!1808325 () Bool)

(assert (= bs!1808325 (and d!2132725 d!2132365)))

(assert (=> bs!1808325 (= lambda!382241 lambda!382188)))

(declare-fun bs!1808326 () Bool)

(assert (= bs!1808326 (and d!2132725 d!2132523)))

(assert (=> bs!1808326 (= lambda!382241 lambda!382214)))

(declare-fun bs!1808327 () Bool)

(assert (= bs!1808327 (and d!2132725 d!2132183)))

(assert (=> bs!1808327 (= lambda!382241 lambda!382156)))

(declare-fun bs!1808328 () Bool)

(assert (= bs!1808328 (and d!2132725 d!2132205)))

(assert (=> bs!1808328 (= lambda!382241 lambda!382167)))

(declare-fun bs!1808329 () Bool)

(assert (= bs!1808329 (and d!2132725 d!2132525)))

(assert (=> bs!1808329 (= lambda!382241 lambda!382217)))

(declare-fun bs!1808330 () Bool)

(assert (= bs!1808330 (and d!2132725 d!2132703)))

(assert (=> bs!1808330 (= lambda!382241 lambda!382237)))

(declare-fun bs!1808331 () Bool)

(assert (= bs!1808331 (and d!2132725 d!2132491)))

(assert (=> bs!1808331 (= lambda!382241 lambda!382209)))

(declare-fun bs!1808332 () Bool)

(assert (= bs!1808332 (and d!2132725 d!2132187)))

(assert (=> bs!1808332 (= lambda!382241 lambda!382162)))

(declare-fun bs!1808333 () Bool)

(assert (= bs!1808333 (and d!2132725 d!2132123)))

(assert (=> bs!1808333 (= lambda!382241 lambda!382132)))

(declare-fun bs!1808334 () Bool)

(assert (= bs!1808334 (and d!2132725 d!2132505)))

(assert (=> bs!1808334 (= lambda!382241 lambda!382210)))

(declare-fun bs!1808335 () Bool)

(assert (= bs!1808335 (and d!2132725 d!2132701)))

(assert (=> bs!1808335 (= lambda!382241 lambda!382236)))

(declare-fun b!6787481 () Bool)

(declare-fun e!4097015 () Bool)

(declare-fun e!4097014 () Bool)

(assert (=> b!6787481 (= e!4097015 e!4097014)))

(declare-fun c!1261350 () Bool)

(assert (=> b!6787481 (= c!1261350 (isEmpty!38364 (tail!12710 (t!379839 (unfocusZipperList!2028 zl!343)))))))

(declare-fun b!6787482 () Bool)

(declare-fun lt!2445758 () Regex!16607)

(assert (=> b!6787482 (= e!4097014 (isUnion!1402 lt!2445758))))

(declare-fun e!4097018 () Bool)

(assert (=> d!2132725 e!4097018))

(declare-fun res!2774171 () Bool)

(assert (=> d!2132725 (=> (not res!2774171) (not e!4097018))))

(assert (=> d!2132725 (= res!2774171 (validRegex!8343 lt!2445758))))

(declare-fun e!4097013 () Regex!16607)

(assert (=> d!2132725 (= lt!2445758 e!4097013)))

(declare-fun c!1261349 () Bool)

(declare-fun e!4097016 () Bool)

(assert (=> d!2132725 (= c!1261349 e!4097016)))

(declare-fun res!2774170 () Bool)

(assert (=> d!2132725 (=> (not res!2774170) (not e!4097016))))

(assert (=> d!2132725 (= res!2774170 ((_ is Cons!65996) (t!379839 (unfocusZipperList!2028 zl!343))))))

(assert (=> d!2132725 (forall!15799 (t!379839 (unfocusZipperList!2028 zl!343)) lambda!382241)))

(assert (=> d!2132725 (= (generalisedUnion!2451 (t!379839 (unfocusZipperList!2028 zl!343))) lt!2445758)))

(declare-fun b!6787483 () Bool)

(assert (=> b!6787483 (= e!4097015 (isEmptyLang!1972 lt!2445758))))

(declare-fun b!6787484 () Bool)

(assert (=> b!6787484 (= e!4097018 e!4097015)))

(declare-fun c!1261351 () Bool)

(assert (=> b!6787484 (= c!1261351 (isEmpty!38364 (t!379839 (unfocusZipperList!2028 zl!343))))))

(declare-fun b!6787485 () Bool)

(declare-fun e!4097017 () Regex!16607)

(assert (=> b!6787485 (= e!4097017 EmptyLang!16607)))

(declare-fun b!6787486 () Bool)

(assert (=> b!6787486 (= e!4097014 (= lt!2445758 (head!13626 (t!379839 (unfocusZipperList!2028 zl!343)))))))

(declare-fun b!6787487 () Bool)

(assert (=> b!6787487 (= e!4097017 (Union!16607 (h!72444 (t!379839 (unfocusZipperList!2028 zl!343))) (generalisedUnion!2451 (t!379839 (t!379839 (unfocusZipperList!2028 zl!343))))))))

(declare-fun b!6787488 () Bool)

(assert (=> b!6787488 (= e!4097016 (isEmpty!38364 (t!379839 (t!379839 (unfocusZipperList!2028 zl!343)))))))

(declare-fun b!6787489 () Bool)

(assert (=> b!6787489 (= e!4097013 (h!72444 (t!379839 (unfocusZipperList!2028 zl!343))))))

(declare-fun b!6787490 () Bool)

(assert (=> b!6787490 (= e!4097013 e!4097017)))

(declare-fun c!1261352 () Bool)

(assert (=> b!6787490 (= c!1261352 ((_ is Cons!65996) (t!379839 (unfocusZipperList!2028 zl!343))))))

(assert (= (and d!2132725 res!2774170) b!6787488))

(assert (= (and d!2132725 c!1261349) b!6787489))

(assert (= (and d!2132725 (not c!1261349)) b!6787490))

(assert (= (and b!6787490 c!1261352) b!6787487))

(assert (= (and b!6787490 (not c!1261352)) b!6787485))

(assert (= (and d!2132725 res!2774171) b!6787484))

(assert (= (and b!6787484 c!1261351) b!6787483))

(assert (= (and b!6787484 (not c!1261351)) b!6787481))

(assert (= (and b!6787481 c!1261350) b!6787486))

(assert (= (and b!6787481 (not c!1261350)) b!6787482))

(declare-fun m!7535630 () Bool)

(assert (=> b!6787488 m!7535630))

(assert (=> b!6787484 m!7534376))

(declare-fun m!7535632 () Bool)

(assert (=> b!6787487 m!7535632))

(declare-fun m!7535634 () Bool)

(assert (=> b!6787482 m!7535634))

(declare-fun m!7535636 () Bool)

(assert (=> b!6787483 m!7535636))

(declare-fun m!7535638 () Bool)

(assert (=> b!6787481 m!7535638))

(assert (=> b!6787481 m!7535638))

(declare-fun m!7535640 () Bool)

(assert (=> b!6787481 m!7535640))

(declare-fun m!7535642 () Bool)

(assert (=> d!2132725 m!7535642))

(declare-fun m!7535644 () Bool)

(assert (=> d!2132725 m!7535644))

(declare-fun m!7535646 () Bool)

(assert (=> b!6787486 m!7535646))

(assert (=> b!6786241 d!2132725))

(declare-fun d!2132727 () Bool)

(assert (=> d!2132727 (= (isEmpty!38364 (t!379839 (unfocusZipperList!2028 zl!343))) ((_ is Nil!65996) (t!379839 (unfocusZipperList!2028 zl!343))))))

(assert (=> b!6786242 d!2132727))

(assert (=> bm!615847 d!2132175))

(declare-fun b!6787491 () Bool)

(declare-fun e!4097022 () (InoxSet Context!11982))

(declare-fun call!616160 () (InoxSet Context!11982))

(assert (=> b!6787491 (= e!4097022 call!616160)))

(declare-fun b!6787492 () Bool)

(declare-fun c!1261357 () Bool)

(assert (=> b!6787492 (= c!1261357 ((_ is Star!16607) (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))))))

(declare-fun e!4097023 () (InoxSet Context!11982))

(assert (=> b!6787492 (= e!4097023 e!4097022)))

(declare-fun call!616159 () List!66120)

(declare-fun c!1261355 () Bool)

(declare-fun c!1261353 () Bool)

(declare-fun c!1261356 () Bool)

(declare-fun bm!616150 () Bool)

(declare-fun call!616158 () (InoxSet Context!11982))

(assert (=> bm!616150 (= call!616158 (derivationStepZipperDown!1835 (ite c!1261353 (regTwo!33727 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (ite c!1261356 (regTwo!33726 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (ite c!1261355 (regOne!33726 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (reg!16936 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292))))))) (ite (or c!1261353 c!1261356) (ite c!1261024 lt!2445602 (Context!11983 call!615920)) (Context!11983 call!616159)) (h!72445 s!2326)))))

(declare-fun b!6787493 () Bool)

(assert (=> b!6787493 (= e!4097022 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616151 () Bool)

(declare-fun call!616156 () List!66120)

(assert (=> bm!616151 (= call!616159 call!616156)))

(declare-fun b!6787494 () Bool)

(declare-fun e!4097020 () (InoxSet Context!11982))

(assert (=> b!6787494 (= e!4097020 e!4097023)))

(assert (=> b!6787494 (= c!1261355 ((_ is Concat!25452) (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))))))

(declare-fun bm!616152 () Bool)

(declare-fun call!616155 () (InoxSet Context!11982))

(assert (=> bm!616152 (= call!616160 call!616155)))

(declare-fun b!6787495 () Bool)

(declare-fun e!4097021 () Bool)

(assert (=> b!6787495 (= c!1261356 e!4097021)))

(declare-fun res!2774172 () Bool)

(assert (=> b!6787495 (=> (not res!2774172) (not e!4097021))))

(assert (=> b!6787495 (= res!2774172 ((_ is Concat!25452) (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))))))

(declare-fun e!4097019 () (InoxSet Context!11982))

(assert (=> b!6787495 (= e!4097019 e!4097020)))

(declare-fun bm!616153 () Bool)

(assert (=> bm!616153 (= call!616155 call!616158)))

(declare-fun b!6787496 () Bool)

(assert (=> b!6787496 (= e!4097023 call!616160)))

(declare-fun b!6787497 () Bool)

(declare-fun e!4097024 () (InoxSet Context!11982))

(assert (=> b!6787497 (= e!4097024 (store ((as const (Array Context!11982 Bool)) false) (ite c!1261024 lt!2445602 (Context!11983 call!615920)) true))))

(declare-fun bm!616154 () Bool)

(assert (=> bm!616154 (= call!616156 ($colon$colon!2416 (exprs!6491 (ite c!1261024 lt!2445602 (Context!11983 call!615920))) (ite (or c!1261356 c!1261355) (regTwo!33726 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292))))))))

(declare-fun b!6787499 () Bool)

(declare-fun call!616157 () (InoxSet Context!11982))

(assert (=> b!6787499 (= e!4097020 ((_ map or) call!616157 call!616155))))

(declare-fun bm!616155 () Bool)

(assert (=> bm!616155 (= call!616157 (derivationStepZipperDown!1835 (ite c!1261353 (regOne!33727 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (regOne!33726 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292))))) (ite c!1261353 (ite c!1261024 lt!2445602 (Context!11983 call!615920)) (Context!11983 call!616156)) (h!72445 s!2326)))))

(declare-fun b!6787500 () Bool)

(assert (=> b!6787500 (= e!4097021 (nullable!6586 (regOne!33726 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292))))))))

(declare-fun b!6787501 () Bool)

(assert (=> b!6787501 (= e!4097024 e!4097019)))

(assert (=> b!6787501 (= c!1261353 ((_ is Union!16607) (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))))))

(declare-fun c!1261354 () Bool)

(declare-fun d!2132729 () Bool)

(assert (=> d!2132729 (= c!1261354 (and ((_ is ElementMatch!16607) (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (= (c!1260825 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292)))) (h!72445 s!2326))))))

(assert (=> d!2132729 (= (derivationStepZipperDown!1835 (ite c!1261024 (regOne!33727 (reg!16936 r!7292)) (regOne!33726 (reg!16936 r!7292))) (ite c!1261024 lt!2445602 (Context!11983 call!615920)) (h!72445 s!2326)) e!4097024)))

(declare-fun b!6787498 () Bool)

(assert (=> b!6787498 (= e!4097019 ((_ map or) call!616157 call!616158))))

(assert (= (and d!2132729 c!1261354) b!6787497))

(assert (= (and d!2132729 (not c!1261354)) b!6787501))

(assert (= (and b!6787501 c!1261353) b!6787498))

(assert (= (and b!6787501 (not c!1261353)) b!6787495))

(assert (= (and b!6787495 res!2774172) b!6787500))

(assert (= (and b!6787495 c!1261356) b!6787499))

(assert (= (and b!6787495 (not c!1261356)) b!6787494))

(assert (= (and b!6787494 c!1261355) b!6787496))

(assert (= (and b!6787494 (not c!1261355)) b!6787492))

(assert (= (and b!6787492 c!1261357) b!6787491))

(assert (= (and b!6787492 (not c!1261357)) b!6787493))

(assert (= (or b!6787496 b!6787491) bm!616151))

(assert (= (or b!6787496 b!6787491) bm!616152))

(assert (= (or b!6787499 bm!616151) bm!616154))

(assert (= (or b!6787499 bm!616152) bm!616153))

(assert (= (or b!6787498 bm!616153) bm!616150))

(assert (= (or b!6787498 b!6787499) bm!616155))

(declare-fun m!7535648 () Bool)

(assert (=> bm!616150 m!7535648))

(declare-fun m!7535650 () Bool)

(assert (=> bm!616155 m!7535650))

(declare-fun m!7535652 () Bool)

(assert (=> b!6787500 m!7535652))

(declare-fun m!7535654 () Bool)

(assert (=> bm!616154 m!7535654))

(declare-fun m!7535656 () Bool)

(assert (=> b!6787497 m!7535656))

(assert (=> bm!615919 d!2132729))

(declare-fun b!6787502 () Bool)

(declare-fun e!4097025 () Bool)

(declare-fun e!4097027 () Bool)

(assert (=> b!6787502 (= e!4097025 e!4097027)))

(declare-fun c!1261358 () Bool)

(assert (=> b!6787502 (= c!1261358 ((_ is EmptyLang!16607) (reg!16936 r!7292)))))

(declare-fun b!6787503 () Bool)

(declare-fun e!4097026 () Bool)

(declare-fun e!4097029 () Bool)

(assert (=> b!6787503 (= e!4097026 e!4097029)))

(declare-fun res!2774177 () Bool)

(assert (=> b!6787503 (=> (not res!2774177) (not e!4097029))))

(declare-fun lt!2445759 () Bool)

(assert (=> b!6787503 (= res!2774177 (not lt!2445759))))

(declare-fun b!6787504 () Bool)

(declare-fun res!2774179 () Bool)

(assert (=> b!6787504 (=> res!2774179 e!4097026)))

(declare-fun e!4097031 () Bool)

(assert (=> b!6787504 (= res!2774179 e!4097031)))

(declare-fun res!2774180 () Bool)

(assert (=> b!6787504 (=> (not res!2774180) (not e!4097031))))

(assert (=> b!6787504 (= res!2774180 lt!2445759)))

(declare-fun b!6787505 () Bool)

(declare-fun res!2774175 () Bool)

(assert (=> b!6787505 (=> (not res!2774175) (not e!4097031))))

(assert (=> b!6787505 (= res!2774175 (isEmpty!38362 (tail!12709 (_1!36885 (get!22980 lt!2445683)))))))

(declare-fun b!6787506 () Bool)

(declare-fun res!2774176 () Bool)

(assert (=> b!6787506 (=> res!2774176 e!4097026)))

(assert (=> b!6787506 (= res!2774176 (not ((_ is ElementMatch!16607) (reg!16936 r!7292))))))

(assert (=> b!6787506 (= e!4097027 e!4097026)))

(declare-fun d!2132731 () Bool)

(assert (=> d!2132731 e!4097025))

(declare-fun c!1261359 () Bool)

(assert (=> d!2132731 (= c!1261359 ((_ is EmptyExpr!16607) (reg!16936 r!7292)))))

(declare-fun e!4097028 () Bool)

(assert (=> d!2132731 (= lt!2445759 e!4097028)))

(declare-fun c!1261360 () Bool)

(assert (=> d!2132731 (= c!1261360 (isEmpty!38362 (_1!36885 (get!22980 lt!2445683))))))

(assert (=> d!2132731 (validRegex!8343 (reg!16936 r!7292))))

(assert (=> d!2132731 (= (matchR!8790 (reg!16936 r!7292) (_1!36885 (get!22980 lt!2445683))) lt!2445759)))

(declare-fun b!6787507 () Bool)

(declare-fun call!616161 () Bool)

(assert (=> b!6787507 (= e!4097025 (= lt!2445759 call!616161))))

(declare-fun b!6787508 () Bool)

(assert (=> b!6787508 (= e!4097027 (not lt!2445759))))

(declare-fun bm!616156 () Bool)

(assert (=> bm!616156 (= call!616161 (isEmpty!38362 (_1!36885 (get!22980 lt!2445683))))))

(declare-fun b!6787509 () Bool)

(declare-fun e!4097030 () Bool)

(assert (=> b!6787509 (= e!4097029 e!4097030)))

(declare-fun res!2774173 () Bool)

(assert (=> b!6787509 (=> res!2774173 e!4097030)))

(assert (=> b!6787509 (= res!2774173 call!616161)))

(declare-fun b!6787510 () Bool)

(assert (=> b!6787510 (= e!4097030 (not (= (head!13624 (_1!36885 (get!22980 lt!2445683))) (c!1260825 (reg!16936 r!7292)))))))

(declare-fun b!6787511 () Bool)

(assert (=> b!6787511 (= e!4097031 (= (head!13624 (_1!36885 (get!22980 lt!2445683))) (c!1260825 (reg!16936 r!7292))))))

(declare-fun b!6787512 () Bool)

(declare-fun res!2774178 () Bool)

(assert (=> b!6787512 (=> (not res!2774178) (not e!4097031))))

(assert (=> b!6787512 (= res!2774178 (not call!616161))))

(declare-fun b!6787513 () Bool)

(assert (=> b!6787513 (= e!4097028 (matchR!8790 (derivativeStep!5271 (reg!16936 r!7292) (head!13624 (_1!36885 (get!22980 lt!2445683)))) (tail!12709 (_1!36885 (get!22980 lt!2445683)))))))

(declare-fun b!6787514 () Bool)

(declare-fun res!2774174 () Bool)

(assert (=> b!6787514 (=> res!2774174 e!4097030)))

(assert (=> b!6787514 (= res!2774174 (not (isEmpty!38362 (tail!12709 (_1!36885 (get!22980 lt!2445683))))))))

(declare-fun b!6787515 () Bool)

(assert (=> b!6787515 (= e!4097028 (nullable!6586 (reg!16936 r!7292)))))

(assert (= (and d!2132731 c!1261360) b!6787515))

(assert (= (and d!2132731 (not c!1261360)) b!6787513))

(assert (= (and d!2132731 c!1261359) b!6787507))

(assert (= (and d!2132731 (not c!1261359)) b!6787502))

(assert (= (and b!6787502 c!1261358) b!6787508))

(assert (= (and b!6787502 (not c!1261358)) b!6787506))

(assert (= (and b!6787506 (not res!2774176)) b!6787504))

(assert (= (and b!6787504 res!2774180) b!6787512))

(assert (= (and b!6787512 res!2774178) b!6787505))

(assert (= (and b!6787505 res!2774175) b!6787511))

(assert (= (and b!6787504 (not res!2774179)) b!6787503))

(assert (= (and b!6787503 res!2774177) b!6787509))

(assert (= (and b!6787509 (not res!2774173)) b!6787514))

(assert (= (and b!6787514 (not res!2774174)) b!6787510))

(assert (= (or b!6787507 b!6787512 b!6787509) bm!616156))

(declare-fun m!7535658 () Bool)

(assert (=> b!6787510 m!7535658))

(declare-fun m!7535660 () Bool)

(assert (=> d!2132731 m!7535660))

(assert (=> d!2132731 m!7534342))

(assert (=> b!6787513 m!7535658))

(assert (=> b!6787513 m!7535658))

(declare-fun m!7535662 () Bool)

(assert (=> b!6787513 m!7535662))

(declare-fun m!7535664 () Bool)

(assert (=> b!6787513 m!7535664))

(assert (=> b!6787513 m!7535662))

(assert (=> b!6787513 m!7535664))

(declare-fun m!7535666 () Bool)

(assert (=> b!6787513 m!7535666))

(assert (=> b!6787515 m!7534164))

(assert (=> b!6787511 m!7535658))

(assert (=> bm!616156 m!7535660))

(assert (=> b!6787514 m!7535664))

(assert (=> b!6787514 m!7535664))

(declare-fun m!7535668 () Bool)

(assert (=> b!6787514 m!7535668))

(assert (=> b!6787505 m!7535664))

(assert (=> b!6787505 m!7535664))

(assert (=> b!6787505 m!7535668))

(assert (=> b!6786203 d!2132731))

(assert (=> b!6786203 d!2132443))

(declare-fun bs!1808336 () Bool)

(declare-fun b!6787518 () Bool)

(assert (= bs!1808336 (and b!6787518 b!6785576)))

(declare-fun lambda!382242 () Int)

(assert (=> bs!1808336 (not (= lambda!382242 lambda!382084))))

(declare-fun bs!1808337 () Bool)

(assert (= bs!1808337 (and b!6787518 d!2132181)))

(assert (=> bs!1808337 (not (= lambda!382242 lambda!382153))))

(declare-fun bs!1808338 () Bool)

(assert (= bs!1808338 (and b!6787518 b!6787101)))

(assert (=> bs!1808338 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 (regOne!33727 r!7292))) (= (regTwo!33727 r!7292) (regOne!33727 r!7292))) (= lambda!382242 lambda!382223))))

(declare-fun bs!1808339 () Bool)

(assert (= bs!1808339 (and b!6787518 d!2132173)))

(assert (=> bs!1808339 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33727 r!7292) (Star!16607 (reg!16936 r!7292)))) (= lambda!382242 lambda!382150))))

(declare-fun bs!1808340 () Bool)

(assert (= bs!1808340 (and b!6787518 d!2132385)))

(assert (=> bs!1808340 (not (= lambda!382242 lambda!382197))))

(assert (=> bs!1808336 (not (= lambda!382242 lambda!382082))))

(declare-fun bs!1808341 () Bool)

(assert (= bs!1808341 (and b!6787518 b!6787064)))

(assert (=> bs!1808341 (not (= lambda!382242 lambda!382221))))

(declare-fun bs!1808342 () Bool)

(assert (= bs!1808342 (and b!6787518 b!6785833)))

(assert (=> bs!1808342 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 lt!2445581)) (= (regTwo!33727 r!7292) lt!2445581)) (= lambda!382242 lambda!382120))))

(assert (=> bs!1808339 (not (= lambda!382242 lambda!382149))))

(declare-fun bs!1808343 () Bool)

(assert (= bs!1808343 (and b!6787518 b!6785656)))

(assert (=> bs!1808343 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33727 r!7292) r!7292)) (= lambda!382242 lambda!382094))))

(declare-fun bs!1808344 () Bool)

(assert (= bs!1808344 (and b!6787518 b!6787472)))

(assert (=> bs!1808344 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 (regTwo!33727 lt!2445581))) (= (regTwo!33727 r!7292) (regTwo!33727 lt!2445581))) (= lambda!382242 lambda!382239))))

(declare-fun bs!1808345 () Bool)

(assert (= bs!1808345 (and b!6787518 b!6787059)))

(assert (=> bs!1808345 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 (regOne!33727 lt!2445581))) (= (regTwo!33727 r!7292) (regOne!33727 lt!2445581))) (= lambda!382242 lambda!382220))))

(declare-fun bs!1808346 () Bool)

(assert (= bs!1808346 (and b!6787518 d!2132161)))

(assert (=> bs!1808346 (not (= lambda!382242 lambda!382143))))

(declare-fun bs!1808347 () Bool)

(assert (= bs!1808347 (and b!6787518 b!6787106)))

(assert (=> bs!1808347 (not (= lambda!382242 lambda!382225))))

(declare-fun bs!1808348 () Bool)

(assert (= bs!1808348 (and b!6787518 b!6785838)))

(assert (=> bs!1808348 (not (= lambda!382242 lambda!382121))))

(assert (=> bs!1808340 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33727 r!7292) (Star!16607 (reg!16936 r!7292)))) (= lambda!382242 lambda!382198))))

(declare-fun bs!1808349 () Bool)

(assert (= bs!1808349 (and b!6787518 b!6785661)))

(assert (=> bs!1808349 (not (= lambda!382242 lambda!382096))))

(declare-fun bs!1808350 () Bool)

(assert (= bs!1808350 (and b!6787518 b!6787477)))

(assert (=> bs!1808350 (not (= lambda!382242 lambda!382240))))

(assert (=> bs!1808336 (= (and (= (reg!16936 (regTwo!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33727 r!7292) r!7292)) (= lambda!382242 lambda!382083))))

(assert (=> bs!1808346 (not (= lambda!382242 lambda!382144))))

(assert (=> b!6787518 true))

(assert (=> b!6787518 true))

(declare-fun bs!1808351 () Bool)

(declare-fun b!6787523 () Bool)

(assert (= bs!1808351 (and b!6787523 b!6787518)))

(declare-fun lambda!382243 () Int)

(assert (=> bs!1808351 (not (= lambda!382243 lambda!382242))))

(declare-fun bs!1808352 () Bool)

(assert (= bs!1808352 (and b!6787523 b!6785576)))

(assert (=> bs!1808352 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33726 (regTwo!33727 r!7292)) r!7292)) (= lambda!382243 lambda!382084))))

(declare-fun bs!1808353 () Bool)

(assert (= bs!1808353 (and b!6787523 d!2132181)))

(assert (=> bs!1808353 (not (= lambda!382243 lambda!382153))))

(declare-fun bs!1808354 () Bool)

(assert (= bs!1808354 (and b!6787523 b!6787101)))

(assert (=> bs!1808354 (not (= lambda!382243 lambda!382223))))

(declare-fun bs!1808355 () Bool)

(assert (= bs!1808355 (and b!6787523 d!2132173)))

(assert (=> bs!1808355 (not (= lambda!382243 lambda!382150))))

(declare-fun bs!1808356 () Bool)

(assert (= bs!1808356 (and b!6787523 d!2132385)))

(assert (=> bs!1808356 (not (= lambda!382243 lambda!382197))))

(assert (=> bs!1808352 (not (= lambda!382243 lambda!382082))))

(declare-fun bs!1808357 () Bool)

(assert (= bs!1808357 (and b!6787523 b!6787064)))

(assert (=> bs!1808357 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (regOne!33726 (regOne!33727 lt!2445581))) (= (regTwo!33726 (regTwo!33727 r!7292)) (regTwo!33726 (regOne!33727 lt!2445581)))) (= lambda!382243 lambda!382221))))

(declare-fun bs!1808358 () Bool)

(assert (= bs!1808358 (and b!6787523 b!6785833)))

(assert (=> bs!1808358 (not (= lambda!382243 lambda!382120))))

(assert (=> bs!1808355 (not (= lambda!382243 lambda!382149))))

(declare-fun bs!1808359 () Bool)

(assert (= bs!1808359 (and b!6787523 b!6785656)))

(assert (=> bs!1808359 (not (= lambda!382243 lambda!382094))))

(declare-fun bs!1808360 () Bool)

(assert (= bs!1808360 (and b!6787523 b!6787472)))

(assert (=> bs!1808360 (not (= lambda!382243 lambda!382239))))

(declare-fun bs!1808361 () Bool)

(assert (= bs!1808361 (and b!6787523 b!6787059)))

(assert (=> bs!1808361 (not (= lambda!382243 lambda!382220))))

(declare-fun bs!1808362 () Bool)

(assert (= bs!1808362 (and b!6787523 d!2132161)))

(assert (=> bs!1808362 (not (= lambda!382243 lambda!382143))))

(declare-fun bs!1808363 () Bool)

(assert (= bs!1808363 (and b!6787523 b!6787106)))

(assert (=> bs!1808363 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (regOne!33726 (regOne!33727 r!7292))) (= (regTwo!33726 (regTwo!33727 r!7292)) (regTwo!33726 (regOne!33727 r!7292)))) (= lambda!382243 lambda!382225))))

(declare-fun bs!1808364 () Bool)

(assert (= bs!1808364 (and b!6787523 b!6785838)))

(assert (=> bs!1808364 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (regOne!33726 lt!2445581)) (= (regTwo!33726 (regTwo!33727 r!7292)) (regTwo!33726 lt!2445581))) (= lambda!382243 lambda!382121))))

(assert (=> bs!1808356 (not (= lambda!382243 lambda!382198))))

(declare-fun bs!1808365 () Bool)

(assert (= bs!1808365 (and b!6787523 b!6785661)))

(assert (=> bs!1808365 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (regOne!33726 r!7292)) (= (regTwo!33726 (regTwo!33727 r!7292)) (regTwo!33726 r!7292))) (= lambda!382243 lambda!382096))))

(declare-fun bs!1808366 () Bool)

(assert (= bs!1808366 (and b!6787523 b!6787477)))

(assert (=> bs!1808366 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (regOne!33726 (regTwo!33727 lt!2445581))) (= (regTwo!33726 (regTwo!33727 r!7292)) (regTwo!33726 (regTwo!33727 lt!2445581)))) (= lambda!382243 lambda!382240))))

(assert (=> bs!1808352 (not (= lambda!382243 lambda!382083))))

(assert (=> bs!1808362 (= (and (= (regOne!33726 (regTwo!33727 r!7292)) (reg!16936 r!7292)) (= (regTwo!33726 (regTwo!33727 r!7292)) r!7292)) (= lambda!382243 lambda!382144))))

(assert (=> b!6787523 true))

(assert (=> b!6787523 true))

(declare-fun b!6787516 () Bool)

(declare-fun c!1261362 () Bool)

(assert (=> b!6787516 (= c!1261362 ((_ is ElementMatch!16607) (regTwo!33727 r!7292)))))

(declare-fun e!4097036 () Bool)

(declare-fun e!4097032 () Bool)

(assert (=> b!6787516 (= e!4097036 e!4097032)))

(declare-fun b!6787517 () Bool)

(declare-fun e!4097033 () Bool)

(declare-fun call!616163 () Bool)

(assert (=> b!6787517 (= e!4097033 call!616163)))

(declare-fun e!4097038 () Bool)

(declare-fun call!616162 () Bool)

(assert (=> b!6787518 (= e!4097038 call!616162)))

(declare-fun b!6787519 () Bool)

(declare-fun c!1261364 () Bool)

(assert (=> b!6787519 (= c!1261364 ((_ is Union!16607) (regTwo!33727 r!7292)))))

(declare-fun e!4097035 () Bool)

(assert (=> b!6787519 (= e!4097032 e!4097035)))

(declare-fun b!6787521 () Bool)

(assert (=> b!6787521 (= e!4097032 (= s!2326 (Cons!65997 (c!1260825 (regTwo!33727 r!7292)) Nil!65997)))))

(declare-fun b!6787522 () Bool)

(declare-fun e!4097037 () Bool)

(assert (=> b!6787522 (= e!4097037 (matchRSpec!3708 (regTwo!33727 (regTwo!33727 r!7292)) s!2326))))

(declare-fun bm!616157 () Bool)

(assert (=> bm!616157 (= call!616163 (isEmpty!38362 s!2326))))

(declare-fun e!4097034 () Bool)

(assert (=> b!6787523 (= e!4097034 call!616162)))

(declare-fun d!2132733 () Bool)

(declare-fun c!1261363 () Bool)

(assert (=> d!2132733 (= c!1261363 ((_ is EmptyExpr!16607) (regTwo!33727 r!7292)))))

(assert (=> d!2132733 (= (matchRSpec!3708 (regTwo!33727 r!7292) s!2326) e!4097033)))

(declare-fun b!6787520 () Bool)

(assert (=> b!6787520 (= e!4097035 e!4097037)))

(declare-fun res!2774182 () Bool)

(assert (=> b!6787520 (= res!2774182 (matchRSpec!3708 (regOne!33727 (regTwo!33727 r!7292)) s!2326))))

(assert (=> b!6787520 (=> res!2774182 e!4097037)))

(declare-fun b!6787524 () Bool)

(declare-fun res!2774181 () Bool)

(assert (=> b!6787524 (=> res!2774181 e!4097038)))

(assert (=> b!6787524 (= res!2774181 call!616163)))

(assert (=> b!6787524 (= e!4097034 e!4097038)))

(declare-fun b!6787525 () Bool)

(assert (=> b!6787525 (= e!4097033 e!4097036)))

(declare-fun res!2774183 () Bool)

(assert (=> b!6787525 (= res!2774183 (not ((_ is EmptyLang!16607) (regTwo!33727 r!7292))))))

(assert (=> b!6787525 (=> (not res!2774183) (not e!4097036))))

(declare-fun bm!616158 () Bool)

(declare-fun c!1261361 () Bool)

(assert (=> bm!616158 (= call!616162 (Exists!3675 (ite c!1261361 lambda!382242 lambda!382243)))))

(declare-fun b!6787526 () Bool)

(assert (=> b!6787526 (= e!4097035 e!4097034)))

(assert (=> b!6787526 (= c!1261361 ((_ is Star!16607) (regTwo!33727 r!7292)))))

(assert (= (and d!2132733 c!1261363) b!6787517))

(assert (= (and d!2132733 (not c!1261363)) b!6787525))

(assert (= (and b!6787525 res!2774183) b!6787516))

(assert (= (and b!6787516 c!1261362) b!6787521))

(assert (= (and b!6787516 (not c!1261362)) b!6787519))

(assert (= (and b!6787519 c!1261364) b!6787520))

(assert (= (and b!6787519 (not c!1261364)) b!6787526))

(assert (= (and b!6787520 (not res!2774182)) b!6787522))

(assert (= (and b!6787526 c!1261361) b!6787524))

(assert (= (and b!6787526 (not c!1261361)) b!6787523))

(assert (= (and b!6787524 (not res!2774181)) b!6787518))

(assert (= (or b!6787518 b!6787523) bm!616158))

(assert (= (or b!6787517 b!6787524) bm!616157))

(declare-fun m!7535670 () Bool)

(assert (=> b!6787522 m!7535670))

(assert (=> bm!616157 m!7533888))

(declare-fun m!7535672 () Bool)

(assert (=> b!6787520 m!7535672))

(declare-fun m!7535674 () Bool)

(assert (=> bm!616158 m!7535674))

(assert (=> b!6785660 d!2132733))

(declare-fun d!2132735 () Bool)

(assert (=> d!2132735 (= (isEmpty!38362 (t!379840 s!2326)) ((_ is Nil!65997) (t!379840 s!2326)))))

(assert (=> d!2132233 d!2132735))

(declare-fun d!2132737 () Bool)

(assert (=> d!2132737 (= (Exists!3675 (ite c!1260884 lambda!382120 lambda!382121)) (choose!50544 (ite c!1260884 lambda!382120 lambda!382121)))))

(declare-fun bs!1808367 () Bool)

(assert (= bs!1808367 d!2132737))

(declare-fun m!7535676 () Bool)

(assert (=> bs!1808367 m!7535676))

(assert (=> bm!615848 d!2132737))

(declare-fun d!2132739 () Bool)

(assert (=> d!2132739 (= ($colon$colon!2416 (exprs!6491 (Context!11983 Nil!65996)) (ite (or c!1261034 c!1261033) (regTwo!33726 r!7292) r!7292)) (Cons!65996 (ite (or c!1261034 c!1261033) (regTwo!33726 r!7292) r!7292) (exprs!6491 (Context!11983 Nil!65996))))))

(assert (=> bm!615925 d!2132739))

(assert (=> b!6785877 d!2132457))

(declare-fun b!6787527 () Bool)

(declare-fun e!4097042 () (InoxSet Context!11982))

(declare-fun call!616169 () (InoxSet Context!11982))

(assert (=> b!6787527 (= e!4097042 call!616169)))

(declare-fun b!6787528 () Bool)

(declare-fun c!1261369 () Bool)

(assert (=> b!6787528 (= c!1261369 ((_ is Star!16607) (h!72444 (exprs!6491 lt!2445591))))))

(declare-fun e!4097043 () (InoxSet Context!11982))

(assert (=> b!6787528 (= e!4097043 e!4097042)))

(declare-fun call!616168 () List!66120)

(declare-fun c!1261367 () Bool)

(declare-fun c!1261368 () Bool)

(declare-fun call!616167 () (InoxSet Context!11982))

(declare-fun c!1261365 () Bool)

(declare-fun bm!616159 () Bool)

(assert (=> bm!616159 (= call!616167 (derivationStepZipperDown!1835 (ite c!1261365 (regTwo!33727 (h!72444 (exprs!6491 lt!2445591))) (ite c!1261368 (regTwo!33726 (h!72444 (exprs!6491 lt!2445591))) (ite c!1261367 (regOne!33726 (h!72444 (exprs!6491 lt!2445591))) (reg!16936 (h!72444 (exprs!6491 lt!2445591)))))) (ite (or c!1261365 c!1261368) (Context!11983 (t!379839 (exprs!6491 lt!2445591))) (Context!11983 call!616168)) (h!72445 s!2326)))))

(declare-fun b!6787529 () Bool)

(assert (=> b!6787529 (= e!4097042 ((as const (Array Context!11982 Bool)) false))))

(declare-fun bm!616160 () Bool)

(declare-fun call!616165 () List!66120)

(assert (=> bm!616160 (= call!616168 call!616165)))

(declare-fun b!6787530 () Bool)

(declare-fun e!4097040 () (InoxSet Context!11982))

(assert (=> b!6787530 (= e!4097040 e!4097043)))

(assert (=> b!6787530 (= c!1261367 ((_ is Concat!25452) (h!72444 (exprs!6491 lt!2445591))))))

(declare-fun bm!616161 () Bool)

(declare-fun call!616164 () (InoxSet Context!11982))

(assert (=> bm!616161 (= call!616169 call!616164)))

(declare-fun b!6787531 () Bool)

(declare-fun e!4097041 () Bool)

(assert (=> b!6787531 (= c!1261368 e!4097041)))

(declare-fun res!2774184 () Bool)

(assert (=> b!6787531 (=> (not res!2774184) (not e!4097041))))

(assert (=> b!6787531 (= res!2774184 ((_ is Concat!25452) (h!72444 (exprs!6491 lt!2445591))))))

(declare-fun e!4097039 () (InoxSet Context!11982))

(assert (=> b!6787531 (= e!4097039 e!4097040)))

(declare-fun bm!616162 () Bool)

(assert (=> bm!616162 (= call!616164 call!616167)))

(declare-fun b!6787532 () Bool)

(assert (=> b!6787532 (= e!4097043 call!616169)))

(declare-fun b!6787533 () Bool)

(declare-fun e!4097044 () (InoxSet Context!11982))

(assert (=> b!6787533 (= e!4097044 (store ((as const (Array Context!11982 Bool)) false) (Context!11983 (t!379839 (exprs!6491 lt!2445591))) true))))

(declare-fun bm!616163 () Bool)

(assert (=> bm!616163 (= call!616165 ($colon$colon!2416 (exprs!6491 (Context!11983 (t!379839 (exprs!6491 lt!2445591)))) (ite (or c!1261368 c!1261367) (regTwo!33726 (h!72444 (exprs!6491 lt!2445591))) (h!72444 (exprs!6491 lt!2445591)))))))

(declare-fun b!6787535 () Bool)

(declare-fun call!616166 () (InoxSet Context!11982))

(assert (=> b!6787535 (= e!4097040 ((_ map or) call!616166 call!616164))))

(declare-fun bm!616164 () Bool)

(assert (=> bm!616164 (= call!616166 (derivationStepZipperDown!1835 (ite c!1261365 (regOne!33727 (h!72444 (exprs!6491 lt!2445591))) (regOne!33726 (h!72444 (exprs!6491 lt!2445591)))) (ite c!1261365 (Context!11983 (t!379839 (exprs!6491 lt!2445591))) (Context!11983 call!616165)) (h!72445 s!2326)))))

(declare-fun b!6787536 () Bool)

(assert (=> b!6787536 (= e!4097041 (nullable!6586 (regOne!33726 (h!72444 (exprs!6491 lt!2445591)))))))

(declare-fun b!6787537 () Bool)

(assert (=> b!6787537 (= e!4097044 e!4097039)))

(assert (=> b!6787537 (= c!1261365 ((_ is Union!16607) (h!72444 (exprs!6491 lt!2445591))))))

(declare-fun d!2132741 () Bool)

(declare-fun c!1261366 () Bool)

(assert (=> d!2132741 (= c!1261366 (and ((_ is ElementMatch!16607) (h!72444 (exprs!6491 lt!2445591))) (= (c!1260825 (h!72444 (exprs!6491 lt!2445591))) (h!72445 s!2326))))))

(assert (=> d!2132741 (= (derivationStepZipperDown!1835 (h!72444 (exprs!6491 lt!2445591)) (Context!11983 (t!379839 (exprs!6491 lt!2445591))) (h!72445 s!2326)) e!4097044)))

(declare-fun b!6787534 () Bool)

(assert (=> b!6787534 (= e!4097039 ((_ map or) call!616166 call!616167))))

(assert (= (and d!2132741 c!1261366) b!6787533))

(assert (= (and d!2132741 (not c!1261366)) b!6787537))

(assert (= (and b!6787537 c!1261365) b!6787534))

(assert (= (and b!6787537 (not c!1261365)) b!6787531))

(assert (= (and b!6787531 res!2774184) b!6787536))

(assert (= (and b!6787531 c!1261368) b!6787535))

(assert (= (and b!6787531 (not c!1261368)) b!6787530))

(assert (= (and b!6787530 c!1261367) b!6787532))

(assert (= (and b!6787530 (not c!1261367)) b!6787528))

(assert (= (and b!6787528 c!1261369) b!6787527))

(assert (= (and b!6787528 (not c!1261369)) b!6787529))

(assert (= (or b!6787532 b!6787527) bm!616160))

(assert (= (or b!6787532 b!6787527) bm!616161))

(assert (= (or b!6787535 bm!616160) bm!616163))

(assert (= (or b!6787535 bm!616161) bm!616162))

(assert (= (or b!6787534 bm!616162) bm!616159))

(assert (= (or b!6787534 b!6787535) bm!616164))

(declare-fun m!7535678 () Bool)

(assert (=> bm!616159 m!7535678))

(declare-fun m!7535680 () Bool)

(assert (=> bm!616164 m!7535680))

(declare-fun m!7535682 () Bool)

(assert (=> b!6787536 m!7535682))

(declare-fun m!7535684 () Bool)

(assert (=> bm!616163 m!7535684))

(declare-fun m!7535686 () Bool)

(assert (=> b!6787533 m!7535686))

(assert (=> bm!615920 d!2132741))

(declare-fun b!6787539 () Bool)

(declare-fun e!4097046 () List!66121)

(assert (=> b!6787539 (= e!4097046 (Cons!65997 (h!72445 (_1!36885 (get!22980 lt!2445683))) (++!14763 (t!379840 (_1!36885 (get!22980 lt!2445683))) (_2!36885 (get!22980 lt!2445683)))))))

(declare-fun b!6787541 () Bool)

(declare-fun e!4097045 () Bool)

(declare-fun lt!2445760 () List!66121)

(assert (=> b!6787541 (= e!4097045 (or (not (= (_2!36885 (get!22980 lt!2445683)) Nil!65997)) (= lt!2445760 (_1!36885 (get!22980 lt!2445683)))))))

(declare-fun d!2132743 () Bool)

(assert (=> d!2132743 e!4097045))

(declare-fun res!2774185 () Bool)

(assert (=> d!2132743 (=> (not res!2774185) (not e!4097045))))

(assert (=> d!2132743 (= res!2774185 (= (content!12863 lt!2445760) ((_ map or) (content!12863 (_1!36885 (get!22980 lt!2445683))) (content!12863 (_2!36885 (get!22980 lt!2445683))))))))

(assert (=> d!2132743 (= lt!2445760 e!4097046)))

(declare-fun c!1261370 () Bool)

(assert (=> d!2132743 (= c!1261370 ((_ is Nil!65997) (_1!36885 (get!22980 lt!2445683))))))

(assert (=> d!2132743 (= (++!14763 (_1!36885 (get!22980 lt!2445683)) (_2!36885 (get!22980 lt!2445683))) lt!2445760)))

(declare-fun b!6787540 () Bool)

(declare-fun res!2774186 () Bool)

(assert (=> b!6787540 (=> (not res!2774186) (not e!4097045))))

(assert (=> b!6787540 (= res!2774186 (= (size!40643 lt!2445760) (+ (size!40643 (_1!36885 (get!22980 lt!2445683))) (size!40643 (_2!36885 (get!22980 lt!2445683))))))))

(declare-fun b!6787538 () Bool)

(assert (=> b!6787538 (= e!4097046 (_2!36885 (get!22980 lt!2445683)))))

(assert (= (and d!2132743 c!1261370) b!6787538))

(assert (= (and d!2132743 (not c!1261370)) b!6787539))

(assert (= (and d!2132743 res!2774185) b!6787540))

(assert (= (and b!6787540 res!2774186) b!6787541))

(declare-fun m!7535688 () Bool)

(assert (=> b!6787539 m!7535688))

(declare-fun m!7535690 () Bool)

(assert (=> d!2132743 m!7535690))

(declare-fun m!7535692 () Bool)

(assert (=> d!2132743 m!7535692))

(declare-fun m!7535694 () Bool)

(assert (=> d!2132743 m!7535694))

(declare-fun m!7535696 () Bool)

(assert (=> b!6787540 m!7535696))

(declare-fun m!7535698 () Bool)

(assert (=> b!6787540 m!7535698))

(declare-fun m!7535700 () Bool)

(assert (=> b!6787540 m!7535700))

(assert (=> b!6786207 d!2132743))

(assert (=> b!6786207 d!2132443))

(declare-fun d!2132745 () Bool)

(assert (=> d!2132745 true))

(assert (=> d!2132745 true))

(declare-fun res!2774187 () Bool)

(assert (=> d!2132745 (= (choose!50544 lambda!382082) res!2774187)))

(assert (=> d!2132155 d!2132745))

(declare-fun d!2132747 () Bool)

(declare-fun c!1261371 () Bool)

(assert (=> d!2132747 (= c!1261371 (isEmpty!38362 (tail!12709 (t!379840 s!2326))))))

(declare-fun e!4097047 () Bool)

(assert (=> d!2132747 (= (matchZipper!2593 (derivationStepZipper!2551 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (head!13624 (t!379840 s!2326))) (tail!12709 (t!379840 s!2326))) e!4097047)))

(declare-fun b!6787542 () Bool)

(assert (=> b!6787542 (= e!4097047 (nullableZipper!2314 (derivationStepZipper!2551 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (head!13624 (t!379840 s!2326)))))))

(declare-fun b!6787543 () Bool)

(assert (=> b!6787543 (= e!4097047 (matchZipper!2593 (derivationStepZipper!2551 (derivationStepZipper!2551 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (head!13624 (t!379840 s!2326))) (head!13624 (tail!12709 (t!379840 s!2326)))) (tail!12709 (tail!12709 (t!379840 s!2326)))))))

(assert (= (and d!2132747 c!1261371) b!6787542))

(assert (= (and d!2132747 (not c!1261371)) b!6787543))

(assert (=> d!2132747 m!7534506))

(declare-fun m!7535702 () Bool)

(assert (=> d!2132747 m!7535702))

(assert (=> b!6787542 m!7534504))

(declare-fun m!7535704 () Bool)

(assert (=> b!6787542 m!7535704))

(assert (=> b!6787543 m!7534506))

(declare-fun m!7535706 () Bool)

(assert (=> b!6787543 m!7535706))

(assert (=> b!6787543 m!7534504))

(assert (=> b!6787543 m!7535706))

(declare-fun m!7535708 () Bool)

(assert (=> b!6787543 m!7535708))

(assert (=> b!6787543 m!7534506))

(declare-fun m!7535710 () Bool)

(assert (=> b!6787543 m!7535710))

(assert (=> b!6787543 m!7535708))

(assert (=> b!6787543 m!7535710))

(declare-fun m!7535712 () Bool)

(assert (=> b!6787543 m!7535712))

(assert (=> b!6786335 d!2132747))

(declare-fun bs!1808368 () Bool)

(declare-fun d!2132749 () Bool)

(assert (= bs!1808368 (and d!2132749 d!2132195)))

(declare-fun lambda!382244 () Int)

(assert (=> bs!1808368 (= (= (head!13624 (t!379840 s!2326)) (h!72445 s!2326)) (= lambda!382244 lambda!382165))))

(declare-fun bs!1808369 () Bool)

(assert (= bs!1808369 (and d!2132749 d!2132235)))

(assert (=> bs!1808369 (= (= (head!13624 (t!379840 s!2326)) (h!72445 s!2326)) (= lambda!382244 lambda!382169))))

(declare-fun bs!1808370 () Bool)

(assert (= bs!1808370 (and d!2132749 d!2132569)))

(assert (=> bs!1808370 (= (= (head!13624 (t!379840 s!2326)) (head!13624 s!2326)) (= lambda!382244 lambda!382227))))

(declare-fun bs!1808371 () Bool)

(assert (= bs!1808371 (and d!2132749 b!6785571)))

(assert (=> bs!1808371 (= (= (head!13624 (t!379840 s!2326)) (h!72445 s!2326)) (= lambda!382244 lambda!382085))))

(declare-fun bs!1808372 () Bool)

(assert (= bs!1808372 (and d!2132749 d!2132661)))

(assert (=> bs!1808372 (= (= (head!13624 (t!379840 s!2326)) (head!13624 s!2326)) (= lambda!382244 lambda!382233))))

(declare-fun bs!1808373 () Bool)

(assert (= bs!1808373 (and d!2132749 d!2132221)))

(assert (=> bs!1808373 (= (= (head!13624 (t!379840 s!2326)) (h!72445 s!2326)) (= lambda!382244 lambda!382168))))

(assert (=> d!2132749 true))

(assert (=> d!2132749 (= (derivationStepZipper!2551 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) (head!13624 (t!379840 s!2326))) (flatMap!2088 (derivationStepZipper!2551 lt!2445599 (h!72445 s!2326)) lambda!382244))))

(declare-fun bs!1808374 () Bool)

(assert (= bs!1808374 d!2132749))

(assert (=> bs!1808374 m!7533954))

(declare-fun m!7535714 () Bool)

(assert (=> bs!1808374 m!7535714))

(assert (=> b!6786335 d!2132749))

(declare-fun d!2132751 () Bool)

(assert (=> d!2132751 (= (head!13624 (t!379840 s!2326)) (h!72445 (t!379840 s!2326)))))

(assert (=> b!6786335 d!2132751))

(declare-fun d!2132753 () Bool)

(assert (=> d!2132753 (= (tail!12709 (t!379840 s!2326)) (t!379840 (t!379840 s!2326)))))

(assert (=> b!6786335 d!2132753))

(declare-fun d!2132755 () Bool)

(assert (=> d!2132755 true))

(assert (=> d!2132755 true))

(declare-fun res!2774188 () Bool)

(assert (=> d!2132755 (= (choose!50544 lambda!382084) res!2774188)))

(assert (=> d!2132177 d!2132755))

(declare-fun d!2132757 () Bool)

(declare-fun res!2774189 () Bool)

(declare-fun e!4097048 () Bool)

(assert (=> d!2132757 (=> res!2774189 e!4097048)))

(assert (=> d!2132757 (= res!2774189 ((_ is Nil!65996) (exprs!6491 setElem!46429)))))

(assert (=> d!2132757 (= (forall!15799 (exprs!6491 setElem!46429) lambda!382167) e!4097048)))

(declare-fun b!6787544 () Bool)

(declare-fun e!4097049 () Bool)

(assert (=> b!6787544 (= e!4097048 e!4097049)))

(declare-fun res!2774190 () Bool)

(assert (=> b!6787544 (=> (not res!2774190) (not e!4097049))))

(assert (=> b!6787544 (= res!2774190 (dynLambda!26340 lambda!382167 (h!72444 (exprs!6491 setElem!46429))))))

(declare-fun b!6787545 () Bool)

(assert (=> b!6787545 (= e!4097049 (forall!15799 (t!379839 (exprs!6491 setElem!46429)) lambda!382167))))

(assert (= (and d!2132757 (not res!2774189)) b!6787544))

(assert (= (and b!6787544 res!2774190) b!6787545))

(declare-fun b_lambda!255627 () Bool)

(assert (=> (not b_lambda!255627) (not b!6787544)))

(declare-fun m!7535716 () Bool)

(assert (=> b!6787544 m!7535716))

(declare-fun m!7535718 () Bool)

(assert (=> b!6787545 m!7535718))

(assert (=> d!2132205 d!2132757))

(assert (=> bs!1807767 d!2132211))

(declare-fun d!2132759 () Bool)

(assert (=> d!2132759 (= (isConcat!1487 lt!2445661) ((_ is Concat!25452) lt!2445661))))

(assert (=> b!6786066 d!2132759))

(assert (=> d!2132199 d!2132197))

(declare-fun d!2132761 () Bool)

(assert (=> d!2132761 (= (flatMap!2088 lt!2445592 lambda!382085) (dynLambda!26338 lambda!382085 lt!2445602))))

(assert (=> d!2132761 true))

(declare-fun _$13!4217 () Unit!159905)

(assert (=> d!2132761 (= (choose!50548 lt!2445592 lt!2445602 lambda!382085) _$13!4217)))

(declare-fun b_lambda!255629 () Bool)

(assert (=> (not b_lambda!255629) (not d!2132761)))

(declare-fun bs!1808375 () Bool)

(assert (= bs!1808375 d!2132761))

(assert (=> bs!1808375 m!7533912))

(assert (=> bs!1808375 m!7534418))

(assert (=> d!2132199 d!2132761))

(assert (=> b!6785822 d!2132457))

(declare-fun d!2132763 () Bool)

(assert (=> d!2132763 (= (Exists!3675 lambda!382143) (choose!50544 lambda!382143))))

(declare-fun bs!1808376 () Bool)

(assert (= bs!1808376 d!2132763))

(declare-fun m!7535720 () Bool)

(assert (=> bs!1808376 m!7535720))

(assert (=> d!2132161 d!2132763))

(declare-fun d!2132765 () Bool)

(assert (=> d!2132765 (= (Exists!3675 lambda!382144) (choose!50544 lambda!382144))))

(declare-fun bs!1808377 () Bool)

(assert (= bs!1808377 d!2132765))

(declare-fun m!7535722 () Bool)

(assert (=> bs!1808377 m!7535722))

(assert (=> d!2132161 d!2132765))

(declare-fun bs!1808378 () Bool)

(declare-fun d!2132767 () Bool)

(assert (= bs!1808378 (and d!2132767 b!6787518)))

(declare-fun lambda!382249 () Int)

(assert (=> bs!1808378 (not (= lambda!382249 lambda!382242))))

(declare-fun bs!1808379 () Bool)

(assert (= bs!1808379 (and d!2132767 b!6785576)))

(assert (=> bs!1808379 (not (= lambda!382249 lambda!382084))))

(declare-fun bs!1808380 () Bool)

(assert (= bs!1808380 (and d!2132767 d!2132181)))

(assert (=> bs!1808380 (= lambda!382249 lambda!382153)))

(declare-fun bs!1808381 () Bool)

(assert (= bs!1808381 (and d!2132767 b!6787101)))

(assert (=> bs!1808381 (not (= lambda!382249 lambda!382223))))

(declare-fun bs!1808382 () Bool)

(assert (= bs!1808382 (and d!2132767 d!2132173)))

(assert (=> bs!1808382 (not (= lambda!382249 lambda!382150))))

(declare-fun bs!1808383 () Bool)

(assert (= bs!1808383 (and d!2132767 d!2132385)))

(assert (=> bs!1808383 (= (= r!7292 (Star!16607 (reg!16936 r!7292))) (= lambda!382249 lambda!382197))))

(declare-fun bs!1808384 () Bool)

(assert (= bs!1808384 (and d!2132767 b!6787523)))

(assert (=> bs!1808384 (not (= lambda!382249 lambda!382243))))

(assert (=> bs!1808379 (= lambda!382249 lambda!382082)))

(declare-fun bs!1808385 () Bool)

(assert (= bs!1808385 (and d!2132767 b!6787064)))

(assert (=> bs!1808385 (not (= lambda!382249 lambda!382221))))

(declare-fun bs!1808386 () Bool)

(assert (= bs!1808386 (and d!2132767 b!6785833)))

(assert (=> bs!1808386 (not (= lambda!382249 lambda!382120))))

(assert (=> bs!1808382 (= (= r!7292 (Star!16607 (reg!16936 r!7292))) (= lambda!382249 lambda!382149))))

(declare-fun bs!1808387 () Bool)

(assert (= bs!1808387 (and d!2132767 b!6785656)))

(assert (=> bs!1808387 (not (= lambda!382249 lambda!382094))))

(declare-fun bs!1808388 () Bool)

(assert (= bs!1808388 (and d!2132767 b!6787472)))

(assert (=> bs!1808388 (not (= lambda!382249 lambda!382239))))

(declare-fun bs!1808389 () Bool)

(assert (= bs!1808389 (and d!2132767 b!6787059)))

(assert (=> bs!1808389 (not (= lambda!382249 lambda!382220))))

(declare-fun bs!1808390 () Bool)

(assert (= bs!1808390 (and d!2132767 d!2132161)))

(assert (=> bs!1808390 (= lambda!382249 lambda!382143)))

(declare-fun bs!1808391 () Bool)

(assert (= bs!1808391 (and d!2132767 b!6787106)))

(assert (=> bs!1808391 (not (= lambda!382249 lambda!382225))))

(declare-fun bs!1808392 () Bool)

(assert (= bs!1808392 (and d!2132767 b!6785838)))

(assert (=> bs!1808392 (not (= lambda!382249 lambda!382121))))

(assert (=> bs!1808383 (not (= lambda!382249 lambda!382198))))

(declare-fun bs!1808393 () Bool)

(assert (= bs!1808393 (and d!2132767 b!6785661)))

(assert (=> bs!1808393 (not (= lambda!382249 lambda!382096))))

(declare-fun bs!1808394 () Bool)

(assert (= bs!1808394 (and d!2132767 b!6787477)))

(assert (=> bs!1808394 (not (= lambda!382249 lambda!382240))))

(assert (=> bs!1808379 (not (= lambda!382249 lambda!382083))))

(assert (=> bs!1808390 (not (= lambda!382249 lambda!382144))))

(assert (=> d!2132767 true))

(assert (=> d!2132767 true))

(assert (=> d!2132767 true))

(declare-fun lambda!382250 () Int)

(assert (=> bs!1808378 (not (= lambda!382250 lambda!382242))))

(assert (=> bs!1808379 (= lambda!382250 lambda!382084)))

(assert (=> bs!1808380 (not (= lambda!382250 lambda!382153))))

(assert (=> bs!1808381 (not (= lambda!382250 lambda!382223))))

(assert (=> bs!1808382 (not (= lambda!382250 lambda!382150))))

(assert (=> bs!1808383 (not (= lambda!382250 lambda!382197))))

(assert (=> bs!1808384 (= (and (= (reg!16936 r!7292) (regOne!33726 (regTwo!33727 r!7292))) (= r!7292 (regTwo!33726 (regTwo!33727 r!7292)))) (= lambda!382250 lambda!382243))))

(assert (=> bs!1808379 (not (= lambda!382250 lambda!382082))))

(assert (=> bs!1808385 (= (and (= (reg!16936 r!7292) (regOne!33726 (regOne!33727 lt!2445581))) (= r!7292 (regTwo!33726 (regOne!33727 lt!2445581)))) (= lambda!382250 lambda!382221))))

(assert (=> bs!1808386 (not (= lambda!382250 lambda!382120))))

(assert (=> bs!1808382 (not (= lambda!382250 lambda!382149))))

(assert (=> bs!1808387 (not (= lambda!382250 lambda!382094))))

(assert (=> bs!1808388 (not (= lambda!382250 lambda!382239))))

(assert (=> bs!1808389 (not (= lambda!382250 lambda!382220))))

(assert (=> bs!1808390 (not (= lambda!382250 lambda!382143))))

(assert (=> bs!1808391 (= (and (= (reg!16936 r!7292) (regOne!33726 (regOne!33727 r!7292))) (= r!7292 (regTwo!33726 (regOne!33727 r!7292)))) (= lambda!382250 lambda!382225))))

(assert (=> bs!1808392 (= (and (= (reg!16936 r!7292) (regOne!33726 lt!2445581)) (= r!7292 (regTwo!33726 lt!2445581))) (= lambda!382250 lambda!382121))))

(declare-fun bs!1808395 () Bool)

(assert (= bs!1808395 d!2132767))

(assert (=> bs!1808395 (not (= lambda!382250 lambda!382249))))

(assert (=> bs!1808383 (not (= lambda!382250 lambda!382198))))

(assert (=> bs!1808393 (= (and (= (reg!16936 r!7292) (regOne!33726 r!7292)) (= r!7292 (regTwo!33726 r!7292))) (= lambda!382250 lambda!382096))))

(assert (=> bs!1808394 (= (and (= (reg!16936 r!7292) (regOne!33726 (regTwo!33727 lt!2445581))) (= r!7292 (regTwo!33726 (regTwo!33727 lt!2445581)))) (= lambda!382250 lambda!382240))))

(assert (=> bs!1808379 (not (= lambda!382250 lambda!382083))))

(assert (=> bs!1808390 (= lambda!382250 lambda!382144)))

(assert (=> d!2132767 true))

(assert (=> d!2132767 true))

(assert (=> d!2132767 true))

(assert (=> d!2132767 (= (Exists!3675 lambda!382249) (Exists!3675 lambda!382250))))

(assert (=> d!2132767 true))

(declare-fun _$90!2668 () Unit!159905)

(assert (=> d!2132767 (= (choose!50545 (reg!16936 r!7292) r!7292 s!2326) _$90!2668)))

(declare-fun m!7535724 () Bool)

(assert (=> bs!1808395 m!7535724))

(declare-fun m!7535726 () Bool)

(assert (=> bs!1808395 m!7535726))

(assert (=> d!2132161 d!2132767))

(assert (=> d!2132161 d!2132423))

(declare-fun d!2132769 () Bool)

(assert (=> d!2132769 (= (nullable!6586 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))) (nullableFct!2492 (h!72444 (exprs!6491 (Context!11983 (Cons!65996 r!7292 Nil!65996))))))))

(declare-fun bs!1808396 () Bool)

(assert (= bs!1808396 d!2132769))

(declare-fun m!7535728 () Bool)

(assert (=> bs!1808396 m!7535728))

(assert (=> b!6786322 d!2132769))

(assert (=> b!6785881 d!2132357))

(assert (=> b!6785881 d!2132359))

(assert (=> d!2132181 d!2132159))

(declare-fun bs!1808397 () Bool)

(declare-fun d!2132771 () Bool)

(assert (= bs!1808397 (and d!2132771 b!6787518)))

(declare-fun lambda!382253 () Int)

(assert (=> bs!1808397 (not (= lambda!382253 lambda!382242))))

(declare-fun bs!1808398 () Bool)

(assert (= bs!1808398 (and d!2132771 b!6785576)))

(assert (=> bs!1808398 (not (= lambda!382253 lambda!382084))))

(declare-fun bs!1808399 () Bool)

(assert (= bs!1808399 (and d!2132771 d!2132181)))

(assert (=> bs!1808399 (= lambda!382253 lambda!382153)))

(declare-fun bs!1808400 () Bool)

(assert (= bs!1808400 (and d!2132771 d!2132767)))

(assert (=> bs!1808400 (not (= lambda!382253 lambda!382250))))

(declare-fun bs!1808401 () Bool)

(assert (= bs!1808401 (and d!2132771 b!6787101)))

(assert (=> bs!1808401 (not (= lambda!382253 lambda!382223))))

(declare-fun bs!1808402 () Bool)

(assert (= bs!1808402 (and d!2132771 d!2132173)))

(assert (=> bs!1808402 (not (= lambda!382253 lambda!382150))))

(declare-fun bs!1808403 () Bool)

(assert (= bs!1808403 (and d!2132771 d!2132385)))

(assert (=> bs!1808403 (= (= r!7292 (Star!16607 (reg!16936 r!7292))) (= lambda!382253 lambda!382197))))

(declare-fun bs!1808404 () Bool)

(assert (= bs!1808404 (and d!2132771 b!6787523)))

(assert (=> bs!1808404 (not (= lambda!382253 lambda!382243))))

(assert (=> bs!1808398 (= lambda!382253 lambda!382082)))

(declare-fun bs!1808405 () Bool)

(assert (= bs!1808405 (and d!2132771 b!6787064)))

(assert (=> bs!1808405 (not (= lambda!382253 lambda!382221))))

(declare-fun bs!1808406 () Bool)

(assert (= bs!1808406 (and d!2132771 b!6785833)))

(assert (=> bs!1808406 (not (= lambda!382253 lambda!382120))))

(assert (=> bs!1808402 (= (= r!7292 (Star!16607 (reg!16936 r!7292))) (= lambda!382253 lambda!382149))))

(declare-fun bs!1808407 () Bool)

(assert (= bs!1808407 (and d!2132771 b!6785656)))

(assert (=> bs!1808407 (not (= lambda!382253 lambda!382094))))

(declare-fun bs!1808408 () Bool)

(assert (= bs!1808408 (and d!2132771 b!6787472)))

(assert (=> bs!1808408 (not (= lambda!382253 lambda!382239))))

(declare-fun bs!1808409 () Bool)

(assert (= bs!1808409 (and d!2132771 b!6787059)))

(assert (=> bs!1808409 (not (= lambda!382253 lambda!382220))))

(declare-fun bs!1808410 () Bool)

(assert (= bs!1808410 (and d!2132771 d!2132161)))

(assert (=> bs!1808410 (= lambda!382253 lambda!382143)))

(declare-fun bs!1808411 () Bool)

(assert (= bs!1808411 (and d!2132771 b!6787106)))

(assert (=> bs!1808411 (not (= lambda!382253 lambda!382225))))

(declare-fun bs!1808412 () Bool)

(assert (= bs!1808412 (and d!2132771 b!6785838)))

(assert (=> bs!1808412 (not (= lambda!382253 lambda!382121))))

(assert (=> bs!1808400 (= lambda!382253 lambda!382249)))

(assert (=> bs!1808403 (not (= lambda!382253 lambda!382198))))

(declare-fun bs!1808413 () Bool)

(assert (= bs!1808413 (and d!2132771 b!6785661)))

(assert (=> bs!1808413 (not (= lambda!382253 lambda!382096))))

(declare-fun bs!1808414 () Bool)

(assert (= bs!1808414 (and d!2132771 b!6787477)))

(assert (=> bs!1808414 (not (= lambda!382253 lambda!382240))))

(assert (=> bs!1808398 (not (= lambda!382253 lambda!382083))))

(assert (=> bs!1808410 (not (= lambda!382253 lambda!382144))))

(assert (=> d!2132771 true))

(assert (=> d!2132771 true))

(assert (=> d!2132771 true))

(assert (=> d!2132771 (= (isDefined!13197 (findConcatSeparation!2908 (reg!16936 r!7292) r!7292 Nil!65997 s!2326 s!2326)) (Exists!3675 lambda!382253))))

(assert (=> d!2132771 true))

(declare-fun _$89!3046 () Unit!159905)

(assert (=> d!2132771 (= (choose!50547 (reg!16936 r!7292) r!7292 s!2326) _$89!3046)))

(declare-fun bs!1808415 () Bool)

(assert (= bs!1808415 d!2132771))

(assert (=> bs!1808415 m!7533898))

(assert (=> bs!1808415 m!7533898))

(assert (=> bs!1808415 m!7533900))

(declare-fun m!7535730 () Bool)

(assert (=> bs!1808415 m!7535730))

(assert (=> d!2132181 d!2132771))

(declare-fun d!2132773 () Bool)

(assert (=> d!2132773 (= (Exists!3675 lambda!382153) (choose!50544 lambda!382153))))

(declare-fun bs!1808416 () Bool)

(assert (= bs!1808416 d!2132773))

(declare-fun m!7535732 () Bool)

(assert (=> bs!1808416 m!7535732))

(assert (=> d!2132181 d!2132773))

(assert (=> d!2132181 d!2132179))

(assert (=> d!2132181 d!2132423))

(assert (=> d!2132075 d!2132039))

(assert (=> d!2132075 d!2132033))

(declare-fun d!2132775 () Bool)

(assert (=> d!2132775 (= (matchR!8790 r!7292 s!2326) (matchRSpec!3708 r!7292 s!2326))))

(assert (=> d!2132775 true))

(declare-fun _$88!5590 () Unit!159905)

(assert (=> d!2132775 (= (choose!50542 r!7292 s!2326) _$88!5590)))

(declare-fun bs!1808417 () Bool)

(assert (= bs!1808417 d!2132775))

(assert (=> bs!1808417 m!7533944))

(assert (=> bs!1808417 m!7533942))

(assert (=> d!2132075 d!2132775))

(assert (=> d!2132075 d!2132099))

(declare-fun b!6787561 () Bool)

(declare-fun e!4097056 () Bool)

(declare-fun tp!1859136 () Bool)

(declare-fun tp!1859134 () Bool)

(assert (=> b!6787561 (= e!4097056 (and tp!1859136 tp!1859134))))

(declare-fun b!6787558 () Bool)

(assert (=> b!6787558 (= e!4097056 tp_is_empty!42467)))

(declare-fun b!6787559 () Bool)

(declare-fun tp!1859137 () Bool)

(declare-fun tp!1859138 () Bool)

(assert (=> b!6787559 (= e!4097056 (and tp!1859137 tp!1859138))))

(assert (=> b!6786374 (= tp!1858931 e!4097056)))

(declare-fun b!6787560 () Bool)

(declare-fun tp!1859135 () Bool)

(assert (=> b!6787560 (= e!4097056 tp!1859135)))

(assert (= (and b!6786374 ((_ is ElementMatch!16607) (regOne!33727 (regTwo!33726 r!7292)))) b!6787558))

(assert (= (and b!6786374 ((_ is Concat!25452) (regOne!33727 (regTwo!33726 r!7292)))) b!6787559))

(assert (= (and b!6786374 ((_ is Star!16607) (regOne!33727 (regTwo!33726 r!7292)))) b!6787560))

(assert (= (and b!6786374 ((_ is Union!16607) (regOne!33727 (regTwo!33726 r!7292)))) b!6787561))

(declare-fun b!6787565 () Bool)

(declare-fun e!4097057 () Bool)

(declare-fun tp!1859141 () Bool)

(declare-fun tp!1859139 () Bool)

(assert (=> b!6787565 (= e!4097057 (and tp!1859141 tp!1859139))))

(declare-fun b!6787562 () Bool)

(assert (=> b!6787562 (= e!4097057 tp_is_empty!42467)))

(declare-fun b!6787563 () Bool)

(declare-fun tp!1859142 () Bool)

(declare-fun tp!1859143 () Bool)

(assert (=> b!6787563 (= e!4097057 (and tp!1859142 tp!1859143))))

(assert (=> b!6786374 (= tp!1858929 e!4097057)))

(declare-fun b!6787564 () Bool)

(declare-fun tp!1859140 () Bool)

(assert (=> b!6787564 (= e!4097057 tp!1859140)))

(assert (= (and b!6786374 ((_ is ElementMatch!16607) (regTwo!33727 (regTwo!33726 r!7292)))) b!6787562))

(assert (= (and b!6786374 ((_ is Concat!25452) (regTwo!33727 (regTwo!33726 r!7292)))) b!6787563))

(assert (= (and b!6786374 ((_ is Star!16607) (regTwo!33727 (regTwo!33726 r!7292)))) b!6787564))

(assert (= (and b!6786374 ((_ is Union!16607) (regTwo!33727 (regTwo!33726 r!7292)))) b!6787565))

(declare-fun b!6787569 () Bool)

(declare-fun e!4097058 () Bool)

(declare-fun tp!1859146 () Bool)

(declare-fun tp!1859144 () Bool)

(assert (=> b!6787569 (= e!4097058 (and tp!1859146 tp!1859144))))

(declare-fun b!6787566 () Bool)

(assert (=> b!6787566 (= e!4097058 tp_is_empty!42467)))

(declare-fun b!6787567 () Bool)

(declare-fun tp!1859147 () Bool)

(declare-fun tp!1859148 () Bool)

(assert (=> b!6787567 (= e!4097058 (and tp!1859147 tp!1859148))))

(assert (=> b!6786352 (= tp!1858908 e!4097058)))

(declare-fun b!6787568 () Bool)

(declare-fun tp!1859145 () Bool)

(assert (=> b!6787568 (= e!4097058 tp!1859145)))

(assert (= (and b!6786352 ((_ is ElementMatch!16607) (reg!16936 (regTwo!33727 r!7292)))) b!6787566))

(assert (= (and b!6786352 ((_ is Concat!25452) (reg!16936 (regTwo!33727 r!7292)))) b!6787567))

(assert (= (and b!6786352 ((_ is Star!16607) (reg!16936 (regTwo!33727 r!7292)))) b!6787568))

(assert (= (and b!6786352 ((_ is Union!16607) (reg!16936 (regTwo!33727 r!7292)))) b!6787569))

(declare-fun b!6787573 () Bool)

(declare-fun e!4097059 () Bool)

(declare-fun tp!1859151 () Bool)

(declare-fun tp!1859149 () Bool)

(assert (=> b!6787573 (= e!4097059 (and tp!1859151 tp!1859149))))

(declare-fun b!6787570 () Bool)

(assert (=> b!6787570 (= e!4097059 tp_is_empty!42467)))

(declare-fun b!6787571 () Bool)

(declare-fun tp!1859152 () Bool)

(declare-fun tp!1859153 () Bool)

(assert (=> b!6787571 (= e!4097059 (and tp!1859152 tp!1859153))))

(assert (=> b!6786388 (= tp!1858946 e!4097059)))

(declare-fun b!6787572 () Bool)

(declare-fun tp!1859150 () Bool)

(assert (=> b!6787572 (= e!4097059 tp!1859150)))

(assert (= (and b!6786388 ((_ is ElementMatch!16607) (h!72444 (exprs!6491 (h!72446 zl!343))))) b!6787570))

(assert (= (and b!6786388 ((_ is Concat!25452) (h!72444 (exprs!6491 (h!72446 zl!343))))) b!6787571))

(assert (= (and b!6786388 ((_ is Star!16607) (h!72444 (exprs!6491 (h!72446 zl!343))))) b!6787572))

(assert (= (and b!6786388 ((_ is Union!16607) (h!72444 (exprs!6491 (h!72446 zl!343))))) b!6787573))

(declare-fun b!6787574 () Bool)

(declare-fun e!4097060 () Bool)

(declare-fun tp!1859154 () Bool)

(declare-fun tp!1859155 () Bool)

(assert (=> b!6787574 (= e!4097060 (and tp!1859154 tp!1859155))))

(assert (=> b!6786388 (= tp!1858947 e!4097060)))

(assert (= (and b!6786388 ((_ is Cons!65996) (t!379839 (exprs!6491 (h!72446 zl!343))))) b!6787574))

(declare-fun b!6787578 () Bool)

(declare-fun e!4097061 () Bool)

(declare-fun tp!1859158 () Bool)

(declare-fun tp!1859156 () Bool)

(assert (=> b!6787578 (= e!4097061 (and tp!1859158 tp!1859156))))

(declare-fun b!6787575 () Bool)

(assert (=> b!6787575 (= e!4097061 tp_is_empty!42467)))

(declare-fun b!6787576 () Bool)

(declare-fun tp!1859159 () Bool)

(declare-fun tp!1859160 () Bool)

(assert (=> b!6787576 (= e!4097061 (and tp!1859159 tp!1859160))))

(assert (=> b!6786353 (= tp!1858909 e!4097061)))

(declare-fun b!6787577 () Bool)

(declare-fun tp!1859157 () Bool)

(assert (=> b!6787577 (= e!4097061 tp!1859157)))

(assert (= (and b!6786353 ((_ is ElementMatch!16607) (regOne!33727 (regTwo!33727 r!7292)))) b!6787575))

(assert (= (and b!6786353 ((_ is Concat!25452) (regOne!33727 (regTwo!33727 r!7292)))) b!6787576))

(assert (= (and b!6786353 ((_ is Star!16607) (regOne!33727 (regTwo!33727 r!7292)))) b!6787577))

(assert (= (and b!6786353 ((_ is Union!16607) (regOne!33727 (regTwo!33727 r!7292)))) b!6787578))

(declare-fun b!6787582 () Bool)

(declare-fun e!4097062 () Bool)

(declare-fun tp!1859163 () Bool)

(declare-fun tp!1859161 () Bool)

(assert (=> b!6787582 (= e!4097062 (and tp!1859163 tp!1859161))))

(declare-fun b!6787579 () Bool)

(assert (=> b!6787579 (= e!4097062 tp_is_empty!42467)))

(declare-fun b!6787580 () Bool)

(declare-fun tp!1859164 () Bool)

(declare-fun tp!1859165 () Bool)

(assert (=> b!6787580 (= e!4097062 (and tp!1859164 tp!1859165))))

(assert (=> b!6786353 (= tp!1858907 e!4097062)))

(declare-fun b!6787581 () Bool)

(declare-fun tp!1859162 () Bool)

(assert (=> b!6787581 (= e!4097062 tp!1859162)))

(assert (= (and b!6786353 ((_ is ElementMatch!16607) (regTwo!33727 (regTwo!33727 r!7292)))) b!6787579))

(assert (= (and b!6786353 ((_ is Concat!25452) (regTwo!33727 (regTwo!33727 r!7292)))) b!6787580))

(assert (= (and b!6786353 ((_ is Star!16607) (regTwo!33727 (regTwo!33727 r!7292)))) b!6787581))

(assert (= (and b!6786353 ((_ is Union!16607) (regTwo!33727 (regTwo!33727 r!7292)))) b!6787582))

(declare-fun b!6787584 () Bool)

(declare-fun e!4097064 () Bool)

(declare-fun tp!1859166 () Bool)

(assert (=> b!6787584 (= e!4097064 tp!1859166)))

(declare-fun tp!1859167 () Bool)

(declare-fun b!6787583 () Bool)

(declare-fun e!4097063 () Bool)

(assert (=> b!6787583 (= e!4097063 (and (inv!84764 (h!72446 (t!379841 (t!379841 zl!343)))) e!4097064 tp!1859167))))

(assert (=> b!6786360 (= tp!1858917 e!4097063)))

(assert (= b!6787583 b!6787584))

(assert (= (and b!6786360 ((_ is Cons!65998) (t!379841 (t!379841 zl!343)))) b!6787583))

(declare-fun m!7535734 () Bool)

(assert (=> b!6787583 m!7535734))

(declare-fun b!6787585 () Bool)

(declare-fun e!4097065 () Bool)

(declare-fun tp!1859168 () Bool)

(assert (=> b!6787585 (= e!4097065 (and tp_is_empty!42467 tp!1859168))))

(assert (=> b!6786383 (= tp!1858941 e!4097065)))

(assert (= (and b!6786383 ((_ is Cons!65997) (t!379840 (t!379840 s!2326)))) b!6787585))

(declare-fun b!6787586 () Bool)

(declare-fun e!4097066 () Bool)

(declare-fun tp!1859169 () Bool)

(declare-fun tp!1859170 () Bool)

(assert (=> b!6787586 (= e!4097066 (and tp!1859169 tp!1859170))))

(assert (=> b!6786361 (= tp!1858916 e!4097066)))

(assert (= (and b!6786361 ((_ is Cons!65996) (exprs!6491 (h!72446 (t!379841 zl!343))))) b!6787586))

(declare-fun b!6787590 () Bool)

(declare-fun e!4097067 () Bool)

(declare-fun tp!1859173 () Bool)

(declare-fun tp!1859171 () Bool)

(assert (=> b!6787590 (= e!4097067 (and tp!1859173 tp!1859171))))

(declare-fun b!6787587 () Bool)

(assert (=> b!6787587 (= e!4097067 tp_is_empty!42467)))

(declare-fun b!6787588 () Bool)

(declare-fun tp!1859174 () Bool)

(declare-fun tp!1859175 () Bool)

(assert (=> b!6787588 (= e!4097067 (and tp!1859174 tp!1859175))))

(assert (=> b!6786389 (= tp!1858948 e!4097067)))

(declare-fun b!6787589 () Bool)

(declare-fun tp!1859172 () Bool)

(assert (=> b!6787589 (= e!4097067 tp!1859172)))

(assert (= (and b!6786389 ((_ is ElementMatch!16607) (h!72444 (exprs!6491 setElem!46429)))) b!6787587))

(assert (= (and b!6786389 ((_ is Concat!25452) (h!72444 (exprs!6491 setElem!46429)))) b!6787588))

(assert (= (and b!6786389 ((_ is Star!16607) (h!72444 (exprs!6491 setElem!46429)))) b!6787589))

(assert (= (and b!6786389 ((_ is Union!16607) (h!72444 (exprs!6491 setElem!46429)))) b!6787590))

(declare-fun b!6787591 () Bool)

(declare-fun e!4097068 () Bool)

(declare-fun tp!1859176 () Bool)

(declare-fun tp!1859177 () Bool)

(assert (=> b!6787591 (= e!4097068 (and tp!1859176 tp!1859177))))

(assert (=> b!6786389 (= tp!1858949 e!4097068)))

(assert (= (and b!6786389 ((_ is Cons!65996) (t!379839 (exprs!6491 setElem!46429)))) b!6787591))

(declare-fun b!6787595 () Bool)

(declare-fun e!4097069 () Bool)

(declare-fun tp!1859180 () Bool)

(declare-fun tp!1859178 () Bool)

(assert (=> b!6787595 (= e!4097069 (and tp!1859180 tp!1859178))))

(declare-fun b!6787592 () Bool)

(assert (=> b!6787592 (= e!4097069 tp_is_empty!42467)))

(declare-fun b!6787593 () Bool)

(declare-fun tp!1859181 () Bool)

(declare-fun tp!1859182 () Bool)

(assert (=> b!6787593 (= e!4097069 (and tp!1859181 tp!1859182))))

(assert (=> b!6786376 (= tp!1858937 e!4097069)))

(declare-fun b!6787594 () Bool)

(declare-fun tp!1859179 () Bool)

(assert (=> b!6787594 (= e!4097069 tp!1859179)))

(assert (= (and b!6786376 ((_ is ElementMatch!16607) (regOne!33726 (reg!16936 r!7292)))) b!6787592))

(assert (= (and b!6786376 ((_ is Concat!25452) (regOne!33726 (reg!16936 r!7292)))) b!6787593))

(assert (= (and b!6786376 ((_ is Star!16607) (regOne!33726 (reg!16936 r!7292)))) b!6787594))

(assert (= (and b!6786376 ((_ is Union!16607) (regOne!33726 (reg!16936 r!7292)))) b!6787595))

(declare-fun b!6787599 () Bool)

(declare-fun e!4097070 () Bool)

(declare-fun tp!1859185 () Bool)

(declare-fun tp!1859183 () Bool)

(assert (=> b!6787599 (= e!4097070 (and tp!1859185 tp!1859183))))

(declare-fun b!6787596 () Bool)

(assert (=> b!6787596 (= e!4097070 tp_is_empty!42467)))

(declare-fun b!6787597 () Bool)

(declare-fun tp!1859186 () Bool)

(declare-fun tp!1859187 () Bool)

(assert (=> b!6787597 (= e!4097070 (and tp!1859186 tp!1859187))))

(assert (=> b!6786376 (= tp!1858938 e!4097070)))

(declare-fun b!6787598 () Bool)

(declare-fun tp!1859184 () Bool)

(assert (=> b!6787598 (= e!4097070 tp!1859184)))

(assert (= (and b!6786376 ((_ is ElementMatch!16607) (regTwo!33726 (reg!16936 r!7292)))) b!6787596))

(assert (= (and b!6786376 ((_ is Concat!25452) (regTwo!33726 (reg!16936 r!7292)))) b!6787597))

(assert (= (and b!6786376 ((_ is Star!16607) (regTwo!33726 (reg!16936 r!7292)))) b!6787598))

(assert (= (and b!6786376 ((_ is Union!16607) (regTwo!33726 (reg!16936 r!7292)))) b!6787599))

(declare-fun b!6787603 () Bool)

(declare-fun e!4097071 () Bool)

(declare-fun tp!1859190 () Bool)

(declare-fun tp!1859188 () Bool)

(assert (=> b!6787603 (= e!4097071 (and tp!1859190 tp!1859188))))

(declare-fun b!6787600 () Bool)

(assert (=> b!6787600 (= e!4097071 tp_is_empty!42467)))

(declare-fun b!6787601 () Bool)

(declare-fun tp!1859191 () Bool)

(declare-fun tp!1859192 () Bool)

(assert (=> b!6787601 (= e!4097071 (and tp!1859191 tp!1859192))))

(assert (=> b!6786377 (= tp!1858935 e!4097071)))

(declare-fun b!6787602 () Bool)

(declare-fun tp!1859189 () Bool)

(assert (=> b!6787602 (= e!4097071 tp!1859189)))

(assert (= (and b!6786377 ((_ is ElementMatch!16607) (reg!16936 (reg!16936 r!7292)))) b!6787600))

(assert (= (and b!6786377 ((_ is Concat!25452) (reg!16936 (reg!16936 r!7292)))) b!6787601))

(assert (= (and b!6786377 ((_ is Star!16607) (reg!16936 (reg!16936 r!7292)))) b!6787602))

(assert (= (and b!6786377 ((_ is Union!16607) (reg!16936 (reg!16936 r!7292)))) b!6787603))

(declare-fun b!6787607 () Bool)

(declare-fun e!4097072 () Bool)

(declare-fun tp!1859195 () Bool)

(declare-fun tp!1859193 () Bool)

(assert (=> b!6787607 (= e!4097072 (and tp!1859195 tp!1859193))))

(declare-fun b!6787604 () Bool)

(assert (=> b!6787604 (= e!4097072 tp_is_empty!42467)))

(declare-fun b!6787605 () Bool)

(declare-fun tp!1859196 () Bool)

(declare-fun tp!1859197 () Bool)

(assert (=> b!6787605 (= e!4097072 (and tp!1859196 tp!1859197))))

(assert (=> b!6786368 (= tp!1858927 e!4097072)))

(declare-fun b!6787606 () Bool)

(declare-fun tp!1859194 () Bool)

(assert (=> b!6787606 (= e!4097072 tp!1859194)))

(assert (= (and b!6786368 ((_ is ElementMatch!16607) (regOne!33726 (regOne!33726 r!7292)))) b!6787604))

(assert (= (and b!6786368 ((_ is Concat!25452) (regOne!33726 (regOne!33726 r!7292)))) b!6787605))

(assert (= (and b!6786368 ((_ is Star!16607) (regOne!33726 (regOne!33726 r!7292)))) b!6787606))

(assert (= (and b!6786368 ((_ is Union!16607) (regOne!33726 (regOne!33726 r!7292)))) b!6787607))

(declare-fun b!6787611 () Bool)

(declare-fun e!4097073 () Bool)

(declare-fun tp!1859200 () Bool)

(declare-fun tp!1859198 () Bool)

(assert (=> b!6787611 (= e!4097073 (and tp!1859200 tp!1859198))))

(declare-fun b!6787608 () Bool)

(assert (=> b!6787608 (= e!4097073 tp_is_empty!42467)))

(declare-fun b!6787609 () Bool)

(declare-fun tp!1859201 () Bool)

(declare-fun tp!1859202 () Bool)

(assert (=> b!6787609 (= e!4097073 (and tp!1859201 tp!1859202))))

(assert (=> b!6786368 (= tp!1858928 e!4097073)))

(declare-fun b!6787610 () Bool)

(declare-fun tp!1859199 () Bool)

(assert (=> b!6787610 (= e!4097073 tp!1859199)))

(assert (= (and b!6786368 ((_ is ElementMatch!16607) (regTwo!33726 (regOne!33726 r!7292)))) b!6787608))

(assert (= (and b!6786368 ((_ is Concat!25452) (regTwo!33726 (regOne!33726 r!7292)))) b!6787609))

(assert (= (and b!6786368 ((_ is Star!16607) (regTwo!33726 (regOne!33726 r!7292)))) b!6787610))

(assert (= (and b!6786368 ((_ is Union!16607) (regTwo!33726 (regOne!33726 r!7292)))) b!6787611))

(declare-fun b!6787615 () Bool)

(declare-fun e!4097074 () Bool)

(declare-fun tp!1859205 () Bool)

(declare-fun tp!1859203 () Bool)

(assert (=> b!6787615 (= e!4097074 (and tp!1859205 tp!1859203))))

(declare-fun b!6787612 () Bool)

(assert (=> b!6787612 (= e!4097074 tp_is_empty!42467)))

(declare-fun b!6787613 () Bool)

(declare-fun tp!1859206 () Bool)

(declare-fun tp!1859207 () Bool)

(assert (=> b!6787613 (= e!4097074 (and tp!1859206 tp!1859207))))

(assert (=> b!6786378 (= tp!1858936 e!4097074)))

(declare-fun b!6787614 () Bool)

(declare-fun tp!1859204 () Bool)

(assert (=> b!6787614 (= e!4097074 tp!1859204)))

(assert (= (and b!6786378 ((_ is ElementMatch!16607) (regOne!33727 (reg!16936 r!7292)))) b!6787612))

(assert (= (and b!6786378 ((_ is Concat!25452) (regOne!33727 (reg!16936 r!7292)))) b!6787613))

(assert (= (and b!6786378 ((_ is Star!16607) (regOne!33727 (reg!16936 r!7292)))) b!6787614))

(assert (= (and b!6786378 ((_ is Union!16607) (regOne!33727 (reg!16936 r!7292)))) b!6787615))

(declare-fun b!6787619 () Bool)

(declare-fun e!4097075 () Bool)

(declare-fun tp!1859210 () Bool)

(declare-fun tp!1859208 () Bool)

(assert (=> b!6787619 (= e!4097075 (and tp!1859210 tp!1859208))))

(declare-fun b!6787616 () Bool)

(assert (=> b!6787616 (= e!4097075 tp_is_empty!42467)))

(declare-fun b!6787617 () Bool)

(declare-fun tp!1859211 () Bool)

(declare-fun tp!1859212 () Bool)

(assert (=> b!6787617 (= e!4097075 (and tp!1859211 tp!1859212))))

(assert (=> b!6786378 (= tp!1858934 e!4097075)))

(declare-fun b!6787618 () Bool)

(declare-fun tp!1859209 () Bool)

(assert (=> b!6787618 (= e!4097075 tp!1859209)))

(assert (= (and b!6786378 ((_ is ElementMatch!16607) (regTwo!33727 (reg!16936 r!7292)))) b!6787616))

(assert (= (and b!6786378 ((_ is Concat!25452) (regTwo!33727 (reg!16936 r!7292)))) b!6787617))

(assert (= (and b!6786378 ((_ is Star!16607) (regTwo!33727 (reg!16936 r!7292)))) b!6787618))

(assert (= (and b!6786378 ((_ is Union!16607) (regTwo!33727 (reg!16936 r!7292)))) b!6787619))

(declare-fun b!6787623 () Bool)

(declare-fun e!4097076 () Bool)

(declare-fun tp!1859215 () Bool)

(declare-fun tp!1859213 () Bool)

(assert (=> b!6787623 (= e!4097076 (and tp!1859215 tp!1859213))))

(declare-fun b!6787620 () Bool)

(assert (=> b!6787620 (= e!4097076 tp_is_empty!42467)))

(declare-fun b!6787621 () Bool)

(declare-fun tp!1859216 () Bool)

(declare-fun tp!1859217 () Bool)

(assert (=> b!6787621 (= e!4097076 (and tp!1859216 tp!1859217))))

(assert (=> b!6786369 (= tp!1858925 e!4097076)))

(declare-fun b!6787622 () Bool)

(declare-fun tp!1859214 () Bool)

(assert (=> b!6787622 (= e!4097076 tp!1859214)))

(assert (= (and b!6786369 ((_ is ElementMatch!16607) (reg!16936 (regOne!33726 r!7292)))) b!6787620))

(assert (= (and b!6786369 ((_ is Concat!25452) (reg!16936 (regOne!33726 r!7292)))) b!6787621))

(assert (= (and b!6786369 ((_ is Star!16607) (reg!16936 (regOne!33726 r!7292)))) b!6787622))

(assert (= (and b!6786369 ((_ is Union!16607) (reg!16936 (regOne!33726 r!7292)))) b!6787623))

(declare-fun b!6787627 () Bool)

(declare-fun e!4097077 () Bool)

(declare-fun tp!1859220 () Bool)

(declare-fun tp!1859218 () Bool)

(assert (=> b!6787627 (= e!4097077 (and tp!1859220 tp!1859218))))

(declare-fun b!6787624 () Bool)

(assert (=> b!6787624 (= e!4097077 tp_is_empty!42467)))

(declare-fun b!6787625 () Bool)

(declare-fun tp!1859221 () Bool)

(declare-fun tp!1859222 () Bool)

(assert (=> b!6787625 (= e!4097077 (and tp!1859221 tp!1859222))))

(assert (=> b!6786347 (= tp!1858905 e!4097077)))

(declare-fun b!6787626 () Bool)

(declare-fun tp!1859219 () Bool)

(assert (=> b!6787626 (= e!4097077 tp!1859219)))

(assert (= (and b!6786347 ((_ is ElementMatch!16607) (regOne!33726 (regOne!33727 r!7292)))) b!6787624))

(assert (= (and b!6786347 ((_ is Concat!25452) (regOne!33726 (regOne!33727 r!7292)))) b!6787625))

(assert (= (and b!6786347 ((_ is Star!16607) (regOne!33726 (regOne!33727 r!7292)))) b!6787626))

(assert (= (and b!6786347 ((_ is Union!16607) (regOne!33726 (regOne!33727 r!7292)))) b!6787627))

(declare-fun b!6787631 () Bool)

(declare-fun e!4097078 () Bool)

(declare-fun tp!1859225 () Bool)

(declare-fun tp!1859223 () Bool)

(assert (=> b!6787631 (= e!4097078 (and tp!1859225 tp!1859223))))

(declare-fun b!6787628 () Bool)

(assert (=> b!6787628 (= e!4097078 tp_is_empty!42467)))

(declare-fun b!6787629 () Bool)

(declare-fun tp!1859226 () Bool)

(declare-fun tp!1859227 () Bool)

(assert (=> b!6787629 (= e!4097078 (and tp!1859226 tp!1859227))))

(assert (=> b!6786347 (= tp!1858906 e!4097078)))

(declare-fun b!6787630 () Bool)

(declare-fun tp!1859224 () Bool)

(assert (=> b!6787630 (= e!4097078 tp!1859224)))

(assert (= (and b!6786347 ((_ is ElementMatch!16607) (regTwo!33726 (regOne!33727 r!7292)))) b!6787628))

(assert (= (and b!6786347 ((_ is Concat!25452) (regTwo!33726 (regOne!33727 r!7292)))) b!6787629))

(assert (= (and b!6786347 ((_ is Star!16607) (regTwo!33726 (regOne!33727 r!7292)))) b!6787630))

(assert (= (and b!6786347 ((_ is Union!16607) (regTwo!33726 (regOne!33727 r!7292)))) b!6787631))

(declare-fun b!6787635 () Bool)

(declare-fun e!4097079 () Bool)

(declare-fun tp!1859230 () Bool)

(declare-fun tp!1859228 () Bool)

(assert (=> b!6787635 (= e!4097079 (and tp!1859230 tp!1859228))))

(declare-fun b!6787632 () Bool)

(assert (=> b!6787632 (= e!4097079 tp_is_empty!42467)))

(declare-fun b!6787633 () Bool)

(declare-fun tp!1859231 () Bool)

(declare-fun tp!1859232 () Bool)

(assert (=> b!6787633 (= e!4097079 (and tp!1859231 tp!1859232))))

(assert (=> b!6786370 (= tp!1858926 e!4097079)))

(declare-fun b!6787634 () Bool)

(declare-fun tp!1859229 () Bool)

(assert (=> b!6787634 (= e!4097079 tp!1859229)))

(assert (= (and b!6786370 ((_ is ElementMatch!16607) (regOne!33727 (regOne!33726 r!7292)))) b!6787632))

(assert (= (and b!6786370 ((_ is Concat!25452) (regOne!33727 (regOne!33726 r!7292)))) b!6787633))

(assert (= (and b!6786370 ((_ is Star!16607) (regOne!33727 (regOne!33726 r!7292)))) b!6787634))

(assert (= (and b!6786370 ((_ is Union!16607) (regOne!33727 (regOne!33726 r!7292)))) b!6787635))

(declare-fun b!6787639 () Bool)

(declare-fun e!4097080 () Bool)

(declare-fun tp!1859235 () Bool)

(declare-fun tp!1859233 () Bool)

(assert (=> b!6787639 (= e!4097080 (and tp!1859235 tp!1859233))))

(declare-fun b!6787636 () Bool)

(assert (=> b!6787636 (= e!4097080 tp_is_empty!42467)))

(declare-fun b!6787637 () Bool)

(declare-fun tp!1859236 () Bool)

(declare-fun tp!1859237 () Bool)

(assert (=> b!6787637 (= e!4097080 (and tp!1859236 tp!1859237))))

(assert (=> b!6786370 (= tp!1858924 e!4097080)))

(declare-fun b!6787638 () Bool)

(declare-fun tp!1859234 () Bool)

(assert (=> b!6787638 (= e!4097080 tp!1859234)))

(assert (= (and b!6786370 ((_ is ElementMatch!16607) (regTwo!33727 (regOne!33726 r!7292)))) b!6787636))

(assert (= (and b!6786370 ((_ is Concat!25452) (regTwo!33727 (regOne!33726 r!7292)))) b!6787637))

(assert (= (and b!6786370 ((_ is Star!16607) (regTwo!33727 (regOne!33726 r!7292)))) b!6787638))

(assert (= (and b!6786370 ((_ is Union!16607) (regTwo!33727 (regOne!33726 r!7292)))) b!6787639))

(declare-fun b!6787643 () Bool)

(declare-fun e!4097081 () Bool)

(declare-fun tp!1859240 () Bool)

(declare-fun tp!1859238 () Bool)

(assert (=> b!6787643 (= e!4097081 (and tp!1859240 tp!1859238))))

(declare-fun b!6787640 () Bool)

(assert (=> b!6787640 (= e!4097081 tp_is_empty!42467)))

(declare-fun b!6787641 () Bool)

(declare-fun tp!1859241 () Bool)

(declare-fun tp!1859242 () Bool)

(assert (=> b!6787641 (= e!4097081 (and tp!1859241 tp!1859242))))

(assert (=> b!6786348 (= tp!1858903 e!4097081)))

(declare-fun b!6787642 () Bool)

(declare-fun tp!1859239 () Bool)

(assert (=> b!6787642 (= e!4097081 tp!1859239)))

(assert (= (and b!6786348 ((_ is ElementMatch!16607) (reg!16936 (regOne!33727 r!7292)))) b!6787640))

(assert (= (and b!6786348 ((_ is Concat!25452) (reg!16936 (regOne!33727 r!7292)))) b!6787641))

(assert (= (and b!6786348 ((_ is Star!16607) (reg!16936 (regOne!33727 r!7292)))) b!6787642))

(assert (= (and b!6786348 ((_ is Union!16607) (reg!16936 (regOne!33727 r!7292)))) b!6787643))

(declare-fun b!6787647 () Bool)

(declare-fun e!4097082 () Bool)

(declare-fun tp!1859245 () Bool)

(declare-fun tp!1859243 () Bool)

(assert (=> b!6787647 (= e!4097082 (and tp!1859245 tp!1859243))))

(declare-fun b!6787644 () Bool)

(assert (=> b!6787644 (= e!4097082 tp_is_empty!42467)))

(declare-fun b!6787645 () Bool)

(declare-fun tp!1859246 () Bool)

(declare-fun tp!1859247 () Bool)

(assert (=> b!6787645 (= e!4097082 (and tp!1859246 tp!1859247))))

(assert (=> b!6786349 (= tp!1858904 e!4097082)))

(declare-fun b!6787646 () Bool)

(declare-fun tp!1859244 () Bool)

(assert (=> b!6787646 (= e!4097082 tp!1859244)))

(assert (= (and b!6786349 ((_ is ElementMatch!16607) (regOne!33727 (regOne!33727 r!7292)))) b!6787644))

(assert (= (and b!6786349 ((_ is Concat!25452) (regOne!33727 (regOne!33727 r!7292)))) b!6787645))

(assert (= (and b!6786349 ((_ is Star!16607) (regOne!33727 (regOne!33727 r!7292)))) b!6787646))

(assert (= (and b!6786349 ((_ is Union!16607) (regOne!33727 (regOne!33727 r!7292)))) b!6787647))

(declare-fun b!6787651 () Bool)

(declare-fun e!4097083 () Bool)

(declare-fun tp!1859250 () Bool)

(declare-fun tp!1859248 () Bool)

(assert (=> b!6787651 (= e!4097083 (and tp!1859250 tp!1859248))))

(declare-fun b!6787648 () Bool)

(assert (=> b!6787648 (= e!4097083 tp_is_empty!42467)))

(declare-fun b!6787649 () Bool)

(declare-fun tp!1859251 () Bool)

(declare-fun tp!1859252 () Bool)

(assert (=> b!6787649 (= e!4097083 (and tp!1859251 tp!1859252))))

(assert (=> b!6786349 (= tp!1858902 e!4097083)))

(declare-fun b!6787650 () Bool)

(declare-fun tp!1859249 () Bool)

(assert (=> b!6787650 (= e!4097083 tp!1859249)))

(assert (= (and b!6786349 ((_ is ElementMatch!16607) (regTwo!33727 (regOne!33727 r!7292)))) b!6787648))

(assert (= (and b!6786349 ((_ is Concat!25452) (regTwo!33727 (regOne!33727 r!7292)))) b!6787649))

(assert (= (and b!6786349 ((_ is Star!16607) (regTwo!33727 (regOne!33727 r!7292)))) b!6787650))

(assert (= (and b!6786349 ((_ is Union!16607) (regTwo!33727 (regOne!33727 r!7292)))) b!6787651))

(declare-fun b!6787655 () Bool)

(declare-fun e!4097084 () Bool)

(declare-fun tp!1859255 () Bool)

(declare-fun tp!1859253 () Bool)

(assert (=> b!6787655 (= e!4097084 (and tp!1859255 tp!1859253))))

(declare-fun b!6787652 () Bool)

(assert (=> b!6787652 (= e!4097084 tp_is_empty!42467)))

(declare-fun b!6787653 () Bool)

(declare-fun tp!1859256 () Bool)

(declare-fun tp!1859257 () Bool)

(assert (=> b!6787653 (= e!4097084 (and tp!1859256 tp!1859257))))

(assert (=> b!6786372 (= tp!1858932 e!4097084)))

(declare-fun b!6787654 () Bool)

(declare-fun tp!1859254 () Bool)

(assert (=> b!6787654 (= e!4097084 tp!1859254)))

(assert (= (and b!6786372 ((_ is ElementMatch!16607) (regOne!33726 (regTwo!33726 r!7292)))) b!6787652))

(assert (= (and b!6786372 ((_ is Concat!25452) (regOne!33726 (regTwo!33726 r!7292)))) b!6787653))

(assert (= (and b!6786372 ((_ is Star!16607) (regOne!33726 (regTwo!33726 r!7292)))) b!6787654))

(assert (= (and b!6786372 ((_ is Union!16607) (regOne!33726 (regTwo!33726 r!7292)))) b!6787655))

(declare-fun b!6787659 () Bool)

(declare-fun e!4097085 () Bool)

(declare-fun tp!1859260 () Bool)

(declare-fun tp!1859258 () Bool)

(assert (=> b!6787659 (= e!4097085 (and tp!1859260 tp!1859258))))

(declare-fun b!6787656 () Bool)

(assert (=> b!6787656 (= e!4097085 tp_is_empty!42467)))

(declare-fun b!6787657 () Bool)

(declare-fun tp!1859261 () Bool)

(declare-fun tp!1859262 () Bool)

(assert (=> b!6787657 (= e!4097085 (and tp!1859261 tp!1859262))))

(assert (=> b!6786372 (= tp!1858933 e!4097085)))

(declare-fun b!6787658 () Bool)

(declare-fun tp!1859259 () Bool)

(assert (=> b!6787658 (= e!4097085 tp!1859259)))

(assert (= (and b!6786372 ((_ is ElementMatch!16607) (regTwo!33726 (regTwo!33726 r!7292)))) b!6787656))

(assert (= (and b!6786372 ((_ is Concat!25452) (regTwo!33726 (regTwo!33726 r!7292)))) b!6787657))

(assert (= (and b!6786372 ((_ is Star!16607) (regTwo!33726 (regTwo!33726 r!7292)))) b!6787658))

(assert (= (and b!6786372 ((_ is Union!16607) (regTwo!33726 (regTwo!33726 r!7292)))) b!6787659))

(declare-fun condSetEmpty!46449 () Bool)

(assert (=> setNonEmpty!46435 (= condSetEmpty!46449 (= setRest!46435 ((as const (Array Context!11982 Bool)) false)))))

(declare-fun setRes!46449 () Bool)

(assert (=> setNonEmpty!46435 (= tp!1858923 setRes!46449)))

(declare-fun setIsEmpty!46449 () Bool)

(assert (=> setIsEmpty!46449 setRes!46449))

(declare-fun e!4097086 () Bool)

(declare-fun setNonEmpty!46449 () Bool)

(declare-fun tp!1859264 () Bool)

(declare-fun setElem!46449 () Context!11982)

(assert (=> setNonEmpty!46449 (= setRes!46449 (and tp!1859264 (inv!84764 setElem!46449) e!4097086))))

(declare-fun setRest!46449 () (InoxSet Context!11982))

(assert (=> setNonEmpty!46449 (= setRest!46435 ((_ map or) (store ((as const (Array Context!11982 Bool)) false) setElem!46449 true) setRest!46449))))

(declare-fun b!6787660 () Bool)

(declare-fun tp!1859263 () Bool)

(assert (=> b!6787660 (= e!4097086 tp!1859263)))

(assert (= (and setNonEmpty!46435 condSetEmpty!46449) setIsEmpty!46449))

(assert (= (and setNonEmpty!46435 (not condSetEmpty!46449)) setNonEmpty!46449))

(assert (= setNonEmpty!46449 b!6787660))

(declare-fun m!7535736 () Bool)

(assert (=> setNonEmpty!46449 m!7535736))

(declare-fun b!6787664 () Bool)

(declare-fun e!4097087 () Bool)

(declare-fun tp!1859267 () Bool)

(declare-fun tp!1859265 () Bool)

(assert (=> b!6787664 (= e!4097087 (and tp!1859267 tp!1859265))))

(declare-fun b!6787661 () Bool)

(assert (=> b!6787661 (= e!4097087 tp_is_empty!42467)))

(declare-fun b!6787662 () Bool)

(declare-fun tp!1859268 () Bool)

(declare-fun tp!1859269 () Bool)

(assert (=> b!6787662 (= e!4097087 (and tp!1859268 tp!1859269))))

(assert (=> b!6786373 (= tp!1858930 e!4097087)))

(declare-fun b!6787663 () Bool)

(declare-fun tp!1859266 () Bool)

(assert (=> b!6787663 (= e!4097087 tp!1859266)))

(assert (= (and b!6786373 ((_ is ElementMatch!16607) (reg!16936 (regTwo!33726 r!7292)))) b!6787661))

(assert (= (and b!6786373 ((_ is Concat!25452) (reg!16936 (regTwo!33726 r!7292)))) b!6787662))

(assert (= (and b!6786373 ((_ is Star!16607) (reg!16936 (regTwo!33726 r!7292)))) b!6787663))

(assert (= (and b!6786373 ((_ is Union!16607) (reg!16936 (regTwo!33726 r!7292)))) b!6787664))

(declare-fun b!6787668 () Bool)

(declare-fun e!4097088 () Bool)

(declare-fun tp!1859272 () Bool)

(declare-fun tp!1859270 () Bool)

(assert (=> b!6787668 (= e!4097088 (and tp!1859272 tp!1859270))))

(declare-fun b!6787665 () Bool)

(assert (=> b!6787665 (= e!4097088 tp_is_empty!42467)))

(declare-fun b!6787666 () Bool)

(declare-fun tp!1859273 () Bool)

(declare-fun tp!1859274 () Bool)

(assert (=> b!6787666 (= e!4097088 (and tp!1859273 tp!1859274))))

(assert (=> b!6786351 (= tp!1858910 e!4097088)))

(declare-fun b!6787667 () Bool)

(declare-fun tp!1859271 () Bool)

(assert (=> b!6787667 (= e!4097088 tp!1859271)))

(assert (= (and b!6786351 ((_ is ElementMatch!16607) (regOne!33726 (regTwo!33727 r!7292)))) b!6787665))

(assert (= (and b!6786351 ((_ is Concat!25452) (regOne!33726 (regTwo!33727 r!7292)))) b!6787666))

(assert (= (and b!6786351 ((_ is Star!16607) (regOne!33726 (regTwo!33727 r!7292)))) b!6787667))

(assert (= (and b!6786351 ((_ is Union!16607) (regOne!33726 (regTwo!33727 r!7292)))) b!6787668))

(declare-fun b!6787672 () Bool)

(declare-fun e!4097089 () Bool)

(declare-fun tp!1859277 () Bool)

(declare-fun tp!1859275 () Bool)

(assert (=> b!6787672 (= e!4097089 (and tp!1859277 tp!1859275))))

(declare-fun b!6787669 () Bool)

(assert (=> b!6787669 (= e!4097089 tp_is_empty!42467)))

(declare-fun b!6787670 () Bool)

(declare-fun tp!1859278 () Bool)

(declare-fun tp!1859279 () Bool)

(assert (=> b!6787670 (= e!4097089 (and tp!1859278 tp!1859279))))

(assert (=> b!6786351 (= tp!1858911 e!4097089)))

(declare-fun b!6787671 () Bool)

(declare-fun tp!1859276 () Bool)

(assert (=> b!6787671 (= e!4097089 tp!1859276)))

(assert (= (and b!6786351 ((_ is ElementMatch!16607) (regTwo!33726 (regTwo!33727 r!7292)))) b!6787669))

(assert (= (and b!6786351 ((_ is Concat!25452) (regTwo!33726 (regTwo!33727 r!7292)))) b!6787670))

(assert (= (and b!6786351 ((_ is Star!16607) (regTwo!33726 (regTwo!33727 r!7292)))) b!6787671))

(assert (= (and b!6786351 ((_ is Union!16607) (regTwo!33726 (regTwo!33727 r!7292)))) b!6787672))

(declare-fun b!6787673 () Bool)

(declare-fun e!4097090 () Bool)

(declare-fun tp!1859280 () Bool)

(declare-fun tp!1859281 () Bool)

(assert (=> b!6787673 (= e!4097090 (and tp!1859280 tp!1859281))))

(assert (=> b!6786366 (= tp!1858922 e!4097090)))

(assert (= (and b!6786366 ((_ is Cons!65996) (exprs!6491 setElem!46435))) b!6787673))

(declare-fun b_lambda!255631 () Bool)

(assert (= b_lambda!255625 (or d!2132187 b_lambda!255631)))

(declare-fun bs!1808418 () Bool)

(declare-fun d!2132777 () Bool)

(assert (= bs!1808418 (and d!2132777 d!2132187)))

(assert (=> bs!1808418 (= (dynLambda!26340 lambda!382162 (h!72444 (exprs!6491 lt!2445587))) (validRegex!8343 (h!72444 (exprs!6491 lt!2445587))))))

(declare-fun m!7535738 () Bool)

(assert (=> bs!1808418 m!7535738))

(assert (=> b!6787453 d!2132777))

(declare-fun b_lambda!255633 () Bool)

(assert (= b_lambda!255619 (or d!2132123 b_lambda!255633)))

(declare-fun bs!1808419 () Bool)

(declare-fun d!2132779 () Bool)

(assert (= bs!1808419 (and d!2132779 d!2132123)))

(assert (=> bs!1808419 (= (dynLambda!26340 lambda!382132 (h!72444 (exprs!6491 (h!72446 zl!343)))) (validRegex!8343 (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(declare-fun m!7535740 () Bool)

(assert (=> bs!1808419 m!7535740))

(assert (=> b!6787384 d!2132779))

(declare-fun b_lambda!255635 () Bool)

(assert (= b_lambda!255617 (or b!6785571 b_lambda!255635)))

(assert (=> d!2132667 d!2132239))

(declare-fun b_lambda!255637 () Bool)

(assert (= b_lambda!255577 (or d!2132203 b_lambda!255637)))

(declare-fun bs!1808420 () Bool)

(declare-fun d!2132781 () Bool)

(assert (= bs!1808420 (and d!2132781 d!2132203)))

(assert (=> bs!1808420 (= (dynLambda!26340 lambda!382166 (h!72444 (exprs!6491 (h!72446 zl!343)))) (validRegex!8343 (h!72444 (exprs!6491 (h!72446 zl!343)))))))

(assert (=> bs!1808420 m!7535740))

(assert (=> b!6786660 d!2132781))

(declare-fun b_lambda!255639 () Bool)

(assert (= b_lambda!255623 (or d!2132185 b_lambda!255639)))

(declare-fun bs!1808421 () Bool)

(declare-fun d!2132783 () Bool)

(assert (= bs!1808421 (and d!2132783 d!2132185)))

(assert (=> bs!1808421 (= (dynLambda!26340 lambda!382159 (h!72444 lt!2445694)) (validRegex!8343 (h!72444 lt!2445694)))))

(declare-fun m!7535742 () Bool)

(assert (=> bs!1808421 m!7535742))

(assert (=> b!6787392 d!2132783))

(declare-fun b_lambda!255641 () Bool)

(assert (= b_lambda!255621 (or b!6785571 b_lambda!255641)))

(assert (=> d!2132677 d!2132241))

(declare-fun b_lambda!255643 () Bool)

(assert (= b_lambda!255589 (or b!6785571 b_lambda!255643)))

(assert (=> d!2132551 d!2132243))

(declare-fun b_lambda!255645 () Bool)

(assert (= b_lambda!255629 (or b!6785571 b_lambda!255645)))

(assert (=> d!2132761 d!2132237))

(declare-fun b_lambda!255647 () Bool)

(assert (= b_lambda!255585 (or d!2132183 b_lambda!255647)))

(declare-fun bs!1808422 () Bool)

(declare-fun d!2132785 () Bool)

(assert (= bs!1808422 (and d!2132785 d!2132183)))

(assert (=> bs!1808422 (= (dynLambda!26340 lambda!382156 (h!72444 (unfocusZipperList!2028 zl!343))) (validRegex!8343 (h!72444 (unfocusZipperList!2028 zl!343))))))

(declare-fun m!7535744 () Bool)

(assert (=> bs!1808422 m!7535744))

(assert (=> b!6786994 d!2132785))

(declare-fun b_lambda!255649 () Bool)

(assert (= b_lambda!255627 (or d!2132205 b_lambda!255649)))

(declare-fun bs!1808423 () Bool)

(declare-fun d!2132787 () Bool)

(assert (= bs!1808423 (and d!2132787 d!2132205)))

(assert (=> bs!1808423 (= (dynLambda!26340 lambda!382167 (h!72444 (exprs!6491 setElem!46429))) (validRegex!8343 (h!72444 (exprs!6491 setElem!46429))))))

(declare-fun m!7535746 () Bool)

(assert (=> bs!1808423 m!7535746))

(assert (=> b!6787544 d!2132787))

(check-sat (not bm!616045) (not d!2132383) (not b!6787367) (not d!2132385) (not b!6786947) (not b!6787603) (not b!6787651) (not b!6787500) (not bm!616120) (not b!6787515) (not bm!616125) (not b!6787660) (not b!6787374) (not b!6787564) (not bs!1808419) (not b!6786886) (not bm!616157) (not b!6787149) (not b!6787364) (not d!2132635) (not b!6787452) (not bm!616136) (not bm!616116) (not b!6787351) (not b!6787569) (not bm!616131) (not d!2132725) (not d!2132517) (not b!6787105) (not d!2132529) (not d!2132491) (not b!6787637) (not b!6787522) (not b!6787446) (not bm!616132) (not b!6786802) (not b_lambda!255567) (not b!6787609) (not b!6786887) (not b!6787414) (not b!6787667) (not b!6786794) (not b_lambda!255645) (not b!6787442) (not setNonEmpty!46449) (not b!6787584) (not b!6787476) (not bm!616106) (not b!6787426) (not bm!615986) (not b!6787520) (not b!6787633) (not bm!616121) (not bs!1808418) (not d!2132569) (not b_lambda!255633) (not b!6787606) (not b!6787450) (not b!6787361) (not d!2132695) (not bm!616098) (not b!6787605) (not d!2132381) (not b!6786995) (not b!6787578) (not d!2132763) (not b!6787571) (not b!6787179) (not b!6787513) (not d!2132749) (not b!6787419) (not setNonEmpty!46443) (not d!2132561) (not b!6787565) (not d!2132769) (not bm!616149) (not b!6787043) (not b!6787474) (not b!6786800) (not d!2132681) (not d!2132689) (not d!2132667) (not b!6786863) (not b!6787403) (not bm!616126) (not bm!616119) (not d!2132761) (not bm!616159) (not d!2132459) (not b!6786987) (not b!6787580) (not b!6787061) (not d!2132587) (not b!6786781) (not b!6787673) (not b!6787445) (not setNonEmpty!46448) (not b!6787588) (not b!6787092) (not b!6787614) (not d!2132573) (not d!2132527) (not bm!616154) (not b!6787649) (not d!2132659) (not b!6787655) (not b!6787639) (not b_lambda!255637) (not bm!616050) (not b!6787610) (not d!2132661) (not d!2132721) (not b!6787574) (not b!6786799) (not b!6787511) (not bm!616144) (not d!2132627) (not d!2132505) (not b!6787030) (not b!6787417) (not b!6787635) (not b!6787441) (not b!6787568) (not b!6787486) (not bm!616096) (not b!6787164) (not b!6787488) (not bm!616079) (not b!6787643) (not d!2132449) (not b!6787020) (not b!6786654) (not b!6786634) (not b!6787045) (not d!2132693) (not b!6787657) (not b!6787420) (not b!6787602) (not b!6786878) (not b!6787663) (not b!6787597) (not b!6787634) (not d!2132713) (not b!6787623) (not b!6787429) (not b_lambda!255647) (not b!6786883) (not b!6786803) (not b!6787585) (not d!2132703) (not d!2132509) (not d!2132607) (not setNonEmpty!46444) (not bs!1808420) (not b!6787510) (not b_lambda!255639) (not bm!616094) (not b!6787015) (not bm!616067) (not d!2132679) (not b!6786971) (not b!6787377) (not b!6787331) (not d!2132775) (not b!6787664) (not bm!616114) (not b!6787041) (not b!6787645) (not b!6787646) (not b!6787035) (not bm!616156) (not b!6787173) (not b!6786888) (not bm!616065) (not b!6786884) (not d!2132705) (not d!2132551) (not b!6786957) (not bm!615977) (not b!6787391) (not b!6787670) (not bm!616082) (not b!6787561) (not d!2132523) (not d!2132675) (not b!6787468) (not b!6787050) (not b!6787169) (not bm!616158) (not b!6787613) (not b!6787170) (not bm!615978) (not d!2132511) (not b!6787671) (not bm!616108) (not b!6786804) (not bm!616113) (not bs!1808421) (not b!6787040) (not b!6787590) (not b!6787586) (not b!6787659) (not b!6787265) (not b!6787163) (not b!6787668) (not d!2132651) (not bm!616147) (not b!6787021) (not bm!616163) (not bm!616097) (not d!2132765) (not b!6787617) (not b!6787484) (not b!6787629) (not d!2132571) (not b!6787385) (not b!6787505) (not bm!616049) (not b!6786999) (not b!6787650) (not b!6787421) (not b!6787014) (not b!6787631) (not bs!1808422) (not bm!615981) (not b!6787418) (not b!6787482) (not b!6786996) (not d!2132379) (not bm!616164) (not d!2132731) (not b!6787447) (not b!6787626) (not b_lambda!255635) (not b!6787373) (not b!6787621) (not bm!616137) (not bm!616051) (not b!6787366) (not b!6787016) (not b!6787577) (not bm!616088) (not d!2132773) (not b!6787150) (not b!6787543) (not bm!616129) (not b_lambda!255631) (not b!6786760) (not b!6787573) (not d!2132595) (not b!6787017) (not b!6787582) (not b!6787615) (not d!2132701) (not b!6787113) (not bm!616083) (not b!6786966) (not b!6787593) (not bm!616078) (not b!6787440) (not b!6787598) (not b!6787056) (not b!6787481) (not bm!616155) (not b!6787618) (not d!2132737) (not b!6787630) (not b!6787607) (not d!2132471) (not b_lambda!255649) (not b!6787393) (not b!6787365) (not b!6787483) (not b!6787662) (not bm!616071) (not b!6786983) (not b!6787619) (not b_lambda!255569) (not b!6787601) (not b!6787594) (not b!6787572) (not bm!616018) (not bm!616077) (not b!6787196) (not b_lambda!255641) (not b!6787641) (not bm!616081) (not b!6787672) (not b!6786630) (not d!2132525) (not b!6787019) (not b!6787540) (not b!6787514) (not b!6786964) (not bm!616075) (not b!6787487) (not b!6787171) (not b!6787416) (not bm!616142) (not d!2132677) (not b!6787459) (not b_lambda!255643) (not b!6787647) (not d!2132771) (not b!6787454) (not b_lambda!255565) (not b!6787599) (not b!6787422) (not b!6786627) (not b!6787563) (not b!6787581) (not bm!616020) (not b!6787595) (not bm!616069) (not bm!616112) (not bm!616107) (not b!6787044) (not b!6787539) (not b!6787370) (not bm!616150) (not b!6787112) (not b!6787638) (not bs!1808423) (not d!2132653) (not b!6787172) (not b!6787443) (not d!2132589) (not b!6787003) (not b!6787174) (not bm!616102) (not b!6787460) (not bm!616087) (not bm!616117) (not b!6787334) (not b!6786967) (not b!6787103) (not b!6787306) (not b!6787583) (not b!6787567) (not d!2132767) (not b!6787467) (not b!6787576) (not b!6787622) (not bm!616145) (not b_lambda!255563) (not b!6787356) (not bm!616127) (not bm!616148) (not bm!616143) (not b!6786970) (not d!2132437) (not b!6787589) (not bm!615980) (not b!6787063) (not b!6787372) (not b!6787653) (not d!2132467) (not setNonEmpty!46447) (not b!6787654) (not b!6786661) (not d!2132507) (not b!6786965) (not b!6787627) (not d!2132747) (not b!6787559) (not b!6787560) (not bm!616028) (not b!6787362) (not bm!615985) (not b!6787536) (not d!2132743) (not b!6787658) (not b!6787611) (not b!6787591) (not b!6787236) (not b!6787469) (not b!6787433) (not b!6786969) (not b!6787625) (not b!6787642) (not b!6787545) (not bm!616085) (not d!2132717) (not bm!616128) (not d!2132365) (not b!6787666) (not bm!616138) tp_is_empty!42467 (not b!6787542))
(check-sat)
