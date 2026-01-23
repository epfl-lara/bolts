; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565990 () Bool)

(assert start!565990)

(declare-fun b!5382559 () Bool)

(assert (=> b!5382559 true))

(assert (=> b!5382559 true))

(declare-fun lambda!278689 () Int)

(declare-fun lambda!278688 () Int)

(assert (=> b!5382559 (not (= lambda!278689 lambda!278688))))

(assert (=> b!5382559 true))

(assert (=> b!5382559 true))

(declare-fun b!5382535 () Bool)

(assert (=> b!5382535 true))

(declare-fun bs!1246104 () Bool)

(declare-fun b!5382554 () Bool)

(assert (= bs!1246104 (and b!5382554 b!5382559)))

(declare-datatypes ((C!30492 0))(
  ( (C!30493 (val!24948 Int)) )
))
(declare-datatypes ((Regex!15111 0))(
  ( (ElementMatch!15111 (c!938103 C!30492)) (Concat!23956 (regOne!30734 Regex!15111) (regTwo!30734 Regex!15111)) (EmptyExpr!15111) (Star!15111 (reg!15440 Regex!15111)) (EmptyLang!15111) (Union!15111 (regOne!30735 Regex!15111) (regTwo!30735 Regex!15111)) )
))
(declare-fun r!7292 () Regex!15111)

(declare-fun lambda!278691 () Int)

(declare-fun lt!2191684 () Regex!15111)

(assert (=> bs!1246104 (= (= lt!2191684 (regOne!30734 r!7292)) (= lambda!278691 lambda!278688))))

(assert (=> bs!1246104 (not (= lambda!278691 lambda!278689))))

(assert (=> b!5382554 true))

(assert (=> b!5382554 true))

(assert (=> b!5382554 true))

(declare-fun lambda!278692 () Int)

(assert (=> bs!1246104 (not (= lambda!278692 lambda!278688))))

(assert (=> bs!1246104 (= (= lt!2191684 (regOne!30734 r!7292)) (= lambda!278692 lambda!278689))))

(assert (=> b!5382554 (not (= lambda!278692 lambda!278691))))

(assert (=> b!5382554 true))

(assert (=> b!5382554 true))

(assert (=> b!5382554 true))

(declare-fun bs!1246105 () Bool)

(declare-fun b!5382556 () Bool)

(assert (= bs!1246105 (and b!5382556 b!5382559)))

(declare-datatypes ((List!61632 0))(
  ( (Nil!61508) (Cons!61508 (h!67956 C!30492) (t!374855 List!61632)) )
))
(declare-fun s!2326 () List!61632)

(declare-datatypes ((tuple2!64620 0))(
  ( (tuple2!64621 (_1!35613 List!61632) (_2!35613 List!61632)) )
))
(declare-fun lt!2191653 () tuple2!64620)

(declare-fun lambda!278693 () Int)

(assert (=> bs!1246105 (= (and (= (_1!35613 lt!2191653) s!2326) (= (reg!15440 (regOne!30734 r!7292)) (regOne!30734 r!7292)) (= lt!2191684 (regTwo!30734 r!7292))) (= lambda!278693 lambda!278688))))

(assert (=> bs!1246105 (not (= lambda!278693 lambda!278689))))

(declare-fun bs!1246106 () Bool)

(assert (= bs!1246106 (and b!5382556 b!5382554)))

(assert (=> bs!1246106 (= (and (= (_1!35613 lt!2191653) s!2326) (= (reg!15440 (regOne!30734 r!7292)) lt!2191684) (= lt!2191684 (regTwo!30734 r!7292))) (= lambda!278693 lambda!278691))))

(assert (=> bs!1246106 (not (= lambda!278693 lambda!278692))))

(assert (=> b!5382556 true))

(assert (=> b!5382556 true))

(assert (=> b!5382556 true))

(declare-fun lambda!278694 () Int)

(assert (=> bs!1246105 (not (= lambda!278694 lambda!278688))))

(assert (=> bs!1246106 (not (= lambda!278694 lambda!278692))))

(assert (=> bs!1246106 (not (= lambda!278694 lambda!278691))))

(assert (=> bs!1246105 (not (= lambda!278694 lambda!278689))))

(assert (=> b!5382556 (not (= lambda!278694 lambda!278693))))

(assert (=> b!5382556 true))

(assert (=> b!5382556 true))

(assert (=> b!5382556 true))

(declare-fun lambda!278695 () Int)

(assert (=> bs!1246105 (not (= lambda!278695 lambda!278688))))

(assert (=> bs!1246106 (= (and (= (_1!35613 lt!2191653) s!2326) (= (reg!15440 (regOne!30734 r!7292)) lt!2191684) (= lt!2191684 (regTwo!30734 r!7292))) (= lambda!278695 lambda!278692))))

(assert (=> bs!1246106 (not (= lambda!278695 lambda!278691))))

(assert (=> bs!1246105 (= (and (= (_1!35613 lt!2191653) s!2326) (= (reg!15440 (regOne!30734 r!7292)) (regOne!30734 r!7292)) (= lt!2191684 (regTwo!30734 r!7292))) (= lambda!278695 lambda!278689))))

(assert (=> b!5382556 (not (= lambda!278695 lambda!278694))))

(assert (=> b!5382556 (not (= lambda!278695 lambda!278693))))

(assert (=> b!5382556 true))

(assert (=> b!5382556 true))

(assert (=> b!5382556 true))

(declare-fun b!5382532 () Bool)

(declare-fun res!2285610 () Bool)

(declare-fun e!3338870 () Bool)

(assert (=> b!5382532 (=> res!2285610 e!3338870)))

(declare-datatypes ((List!61633 0))(
  ( (Nil!61509) (Cons!61509 (h!67957 Regex!15111) (t!374856 List!61633)) )
))
(declare-datatypes ((Context!8990 0))(
  ( (Context!8991 (exprs!4995 List!61633)) )
))
(declare-fun lt!2191679 () Context!8990)

(declare-fun lt!2191670 () Regex!15111)

(declare-datatypes ((List!61634 0))(
  ( (Nil!61510) (Cons!61510 (h!67958 Context!8990) (t!374857 List!61634)) )
))
(declare-fun unfocusZipper!853 (List!61634) Regex!15111)

(assert (=> b!5382532 (= res!2285610 (not (= (unfocusZipper!853 (Cons!61510 lt!2191679 Nil!61510)) lt!2191670)))))

(declare-fun b!5382533 () Bool)

(declare-fun e!3338862 () Bool)

(declare-fun lt!2191694 () Bool)

(declare-fun lt!2191659 () Bool)

(assert (=> b!5382533 (= e!3338862 (or (not lt!2191694) lt!2191659))))

(declare-fun b!5382534 () Bool)

(declare-fun e!3338861 () Bool)

(declare-fun tp!1491626 () Bool)

(declare-fun tp!1491629 () Bool)

(assert (=> b!5382534 (= e!3338861 (and tp!1491626 tp!1491629))))

(declare-fun e!3338863 () Bool)

(declare-fun e!3338869 () Bool)

(assert (=> b!5382535 (= e!3338863 e!3338869)))

(declare-fun res!2285607 () Bool)

(assert (=> b!5382535 (=> res!2285607 e!3338869)))

(get-info :version)

(assert (=> b!5382535 (= res!2285607 (or (and ((_ is ElementMatch!15111) (regOne!30734 r!7292)) (= (c!938103 (regOne!30734 r!7292)) (h!67956 s!2326))) ((_ is Union!15111) (regOne!30734 r!7292))))))

(declare-datatypes ((Unit!153962 0))(
  ( (Unit!153963) )
))
(declare-fun lt!2191691 () Unit!153962)

(declare-fun e!3338854 () Unit!153962)

(assert (=> b!5382535 (= lt!2191691 e!3338854)))

(declare-fun c!938102 () Bool)

(declare-fun zl!343 () List!61634)

(declare-fun nullable!5280 (Regex!15111) Bool)

(assert (=> b!5382535 (= c!938102 (nullable!5280 (h!67957 (exprs!4995 (h!67958 zl!343)))))))

(declare-fun lambda!278690 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8990))

(declare-fun flatMap!838 ((InoxSet Context!8990) Int) (InoxSet Context!8990))

(declare-fun derivationStepZipperUp!483 (Context!8990 C!30492) (InoxSet Context!8990))

(assert (=> b!5382535 (= (flatMap!838 z!1189 lambda!278690) (derivationStepZipperUp!483 (h!67958 zl!343) (h!67956 s!2326)))))

(declare-fun lt!2191664 () Unit!153962)

(declare-fun lemmaFlatMapOnSingletonSet!370 ((InoxSet Context!8990) Context!8990 Int) Unit!153962)

(assert (=> b!5382535 (= lt!2191664 (lemmaFlatMapOnSingletonSet!370 z!1189 (h!67958 zl!343) lambda!278690))))

(declare-fun lt!2191656 () (InoxSet Context!8990))

(declare-fun lt!2191666 () Context!8990)

(assert (=> b!5382535 (= lt!2191656 (derivationStepZipperUp!483 lt!2191666 (h!67956 s!2326)))))

(declare-fun lt!2191685 () (InoxSet Context!8990))

(declare-fun derivationStepZipperDown!559 (Regex!15111 Context!8990 C!30492) (InoxSet Context!8990))

(assert (=> b!5382535 (= lt!2191685 (derivationStepZipperDown!559 (h!67957 (exprs!4995 (h!67958 zl!343))) lt!2191666 (h!67956 s!2326)))))

(assert (=> b!5382535 (= lt!2191666 (Context!8991 (t!374856 (exprs!4995 (h!67958 zl!343)))))))

(declare-fun lt!2191652 () (InoxSet Context!8990))

(assert (=> b!5382535 (= lt!2191652 (derivationStepZipperUp!483 (Context!8991 (Cons!61509 (h!67957 (exprs!4995 (h!67958 zl!343))) (t!374856 (exprs!4995 (h!67958 zl!343))))) (h!67956 s!2326)))))

(declare-fun setIsEmpty!34925 () Bool)

(declare-fun setRes!34925 () Bool)

(assert (=> setIsEmpty!34925 setRes!34925))

(declare-fun b!5382536 () Bool)

(declare-fun res!2285619 () Bool)

(declare-fun e!3338868 () Bool)

(assert (=> b!5382536 (=> res!2285619 e!3338868)))

(declare-fun lt!2191678 () tuple2!64620)

(declare-fun matchR!7296 (Regex!15111 List!61632) Bool)

(assert (=> b!5382536 (= res!2285619 (not (matchR!7296 (reg!15440 (regOne!30734 r!7292)) (_1!35613 lt!2191678))))))

(declare-fun b!5382537 () Bool)

(declare-fun e!3338855 () Bool)

(declare-fun e!3338871 () Bool)

(assert (=> b!5382537 (= e!3338855 e!3338871)))

(declare-fun res!2285588 () Bool)

(assert (=> b!5382537 (=> res!2285588 e!3338871)))

(assert (=> b!5382537 (= res!2285588 (not (= r!7292 lt!2191670)))))

(assert (=> b!5382537 (= lt!2191670 (Concat!23956 lt!2191684 (regTwo!30734 r!7292)))))

(declare-fun b!5382538 () Bool)

(declare-fun res!2285596 () Bool)

(assert (=> b!5382538 (=> res!2285596 e!3338869)))

(assert (=> b!5382538 (= res!2285596 (or ((_ is Concat!23956) (regOne!30734 r!7292)) (not ((_ is Star!15111) (regOne!30734 r!7292)))))))

(declare-fun b!5382539 () Bool)

(declare-fun validRegex!6847 (Regex!15111) Bool)

(assert (=> b!5382539 (= e!3338868 (validRegex!6847 lt!2191670))))

(declare-fun lt!2191690 () List!61632)

(assert (=> b!5382539 (matchR!7296 lt!2191670 lt!2191690)))

(declare-fun lt!2191682 () Unit!153962)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!158 (Regex!15111 Regex!15111 List!61632 List!61632) Unit!153962)

(assert (=> b!5382539 (= lt!2191682 (lemmaTwoRegexMatchThenConcatMatchesConcatString!158 lt!2191684 (regTwo!30734 r!7292) (_2!35613 lt!2191678) (_2!35613 lt!2191653)))))

(declare-fun lt!2191675 () List!61632)

(assert (=> b!5382539 (matchR!7296 lt!2191684 lt!2191675)))

(declare-fun lt!2191697 () Unit!153962)

(declare-fun lemmaStarApp!32 (Regex!15111 List!61632 List!61632) Unit!153962)

(assert (=> b!5382539 (= lt!2191697 (lemmaStarApp!32 (reg!15440 (regOne!30734 r!7292)) (_1!35613 lt!2191678) (_2!35613 lt!2191678)))))

(declare-fun b!5382540 () Bool)

(declare-fun res!2285620 () Bool)

(declare-fun e!3338874 () Bool)

(assert (=> b!5382540 (=> res!2285620 e!3338874)))

(assert (=> b!5382540 (= res!2285620 (not (matchR!7296 (regTwo!30734 r!7292) (_2!35613 lt!2191653))))))

(declare-fun b!5382541 () Bool)

(declare-fun res!2285615 () Bool)

(assert (=> b!5382541 (=> res!2285615 e!3338874)))

(assert (=> b!5382541 (= res!2285615 (not (matchR!7296 lt!2191684 (_1!35613 lt!2191653))))))

(declare-fun b!5382542 () Bool)

(declare-fun e!3338859 () Bool)

(declare-fun matchZipper!1355 ((InoxSet Context!8990) List!61632) Bool)

(assert (=> b!5382542 (= e!3338859 (matchZipper!1355 lt!2191656 (t!374855 s!2326)))))

(declare-fun b!5382543 () Bool)

(declare-fun e!3338867 () Bool)

(declare-fun tp!1491627 () Bool)

(assert (=> b!5382543 (= e!3338867 tp!1491627)))

(declare-fun b!5382544 () Bool)

(declare-fun Unit!153964 () Unit!153962)

(assert (=> b!5382544 (= e!3338854 Unit!153964)))

(declare-fun lt!2191676 () Unit!153962)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!348 ((InoxSet Context!8990) (InoxSet Context!8990) List!61632) Unit!153962)

(assert (=> b!5382544 (= lt!2191676 (lemmaZipperConcatMatchesSameAsBothZippers!348 lt!2191685 lt!2191656 (t!374855 s!2326)))))

(declare-fun res!2285602 () Bool)

(assert (=> b!5382544 (= res!2285602 (matchZipper!1355 lt!2191685 (t!374855 s!2326)))))

(assert (=> b!5382544 (=> res!2285602 e!3338859)))

(assert (=> b!5382544 (= (matchZipper!1355 ((_ map or) lt!2191685 lt!2191656) (t!374855 s!2326)) e!3338859)))

(declare-fun tp!1491624 () Bool)

(declare-fun b!5382545 () Bool)

(declare-fun e!3338853 () Bool)

(declare-fun inv!81024 (Context!8990) Bool)

(assert (=> b!5382545 (= e!3338853 (and (inv!81024 (h!67958 zl!343)) e!3338867 tp!1491624))))

(declare-fun b!5382546 () Bool)

(declare-fun e!3338873 () Bool)

(assert (=> b!5382546 (= e!3338873 e!3338855)))

(declare-fun res!2285617 () Bool)

(assert (=> b!5382546 (=> res!2285617 e!3338855)))

(declare-fun lt!2191693 () (InoxSet Context!8990))

(declare-fun lt!2191681 () (InoxSet Context!8990))

(assert (=> b!5382546 (= res!2285617 (not (= lt!2191693 lt!2191681)))))

(declare-fun lt!2191673 () (InoxSet Context!8990))

(declare-fun lt!2191680 () Context!8990)

(assert (=> b!5382546 (= (flatMap!838 lt!2191673 lambda!278690) (derivationStepZipperUp!483 lt!2191680 (h!67956 s!2326)))))

(declare-fun lt!2191661 () Unit!153962)

(assert (=> b!5382546 (= lt!2191661 (lemmaFlatMapOnSingletonSet!370 lt!2191673 lt!2191680 lambda!278690))))

(declare-fun lt!2191650 () (InoxSet Context!8990))

(assert (=> b!5382546 (= lt!2191650 (derivationStepZipperUp!483 lt!2191680 (h!67956 s!2326)))))

(declare-fun derivationStepZipper!1350 ((InoxSet Context!8990) C!30492) (InoxSet Context!8990))

(assert (=> b!5382546 (= lt!2191693 (derivationStepZipper!1350 lt!2191673 (h!67956 s!2326)))))

(assert (=> b!5382546 (= lt!2191673 (store ((as const (Array Context!8990 Bool)) false) lt!2191680 true))))

(declare-fun lt!2191695 () List!61633)

(assert (=> b!5382546 (= lt!2191680 (Context!8991 (Cons!61509 (reg!15440 (regOne!30734 r!7292)) lt!2191695)))))

(declare-fun b!5382547 () Bool)

(declare-fun res!2285595 () Bool)

(declare-fun e!3338852 () Bool)

(assert (=> b!5382547 (=> (not res!2285595) (not e!3338852))))

(declare-fun toList!8895 ((InoxSet Context!8990)) List!61634)

(assert (=> b!5382547 (= res!2285595 (= (toList!8895 z!1189) zl!343))))

(declare-fun b!5382548 () Bool)

(declare-fun res!2285600 () Bool)

(assert (=> b!5382548 (=> res!2285600 e!3338863)))

(declare-fun isEmpty!33502 (List!61633) Bool)

(assert (=> b!5382548 (= res!2285600 (isEmpty!33502 (t!374856 (exprs!4995 (h!67958 zl!343)))))))

(declare-fun b!5382549 () Bool)

(declare-fun res!2285605 () Bool)

(declare-fun e!3338866 () Bool)

(assert (=> b!5382549 (=> res!2285605 e!3338866)))

(declare-fun generalisedConcat!780 (List!61633) Regex!15111)

(assert (=> b!5382549 (= res!2285605 (not (= r!7292 (generalisedConcat!780 (exprs!4995 (h!67958 zl!343))))))))

(declare-fun b!5382550 () Bool)

(declare-fun e!3338864 () Bool)

(assert (=> b!5382550 (= e!3338871 e!3338864)))

(declare-fun res!2285590 () Bool)

(assert (=> b!5382550 (=> res!2285590 e!3338864)))

(declare-fun lt!2191671 () Regex!15111)

(assert (=> b!5382550 (= res!2285590 (not (= (unfocusZipper!853 (Cons!61510 lt!2191680 Nil!61510)) lt!2191671)))))

(assert (=> b!5382550 (= lt!2191671 (Concat!23956 (reg!15440 (regOne!30734 r!7292)) lt!2191670))))

(declare-fun b!5382551 () Bool)

(declare-fun Unit!153965 () Unit!153962)

(assert (=> b!5382551 (= e!3338854 Unit!153965)))

(declare-fun b!5382552 () Bool)

(declare-fun e!3338860 () Bool)

(assert (=> b!5382552 (= e!3338852 e!3338860)))

(declare-fun res!2285616 () Bool)

(assert (=> b!5382552 (=> (not res!2285616) (not e!3338860))))

(declare-fun lt!2191687 () Regex!15111)

(assert (=> b!5382552 (= res!2285616 (= r!7292 lt!2191687))))

(assert (=> b!5382552 (= lt!2191687 (unfocusZipper!853 zl!343))))

(declare-fun b!5382553 () Bool)

(declare-fun res!2285593 () Bool)

(assert (=> b!5382553 (=> res!2285593 e!3338855)))

(assert (=> b!5382553 (= res!2285593 (not (= lt!2191687 r!7292)))))

(declare-fun res!2285606 () Bool)

(assert (=> start!565990 (=> (not res!2285606) (not e!3338852))))

(assert (=> start!565990 (= res!2285606 (validRegex!6847 r!7292))))

(assert (=> start!565990 e!3338852))

(assert (=> start!565990 e!3338861))

(declare-fun condSetEmpty!34925 () Bool)

(assert (=> start!565990 (= condSetEmpty!34925 (= z!1189 ((as const (Array Context!8990 Bool)) false)))))

(assert (=> start!565990 setRes!34925))

(assert (=> start!565990 e!3338853))

(declare-fun e!3338865 () Bool)

(assert (=> start!565990 e!3338865))

(declare-fun e!3338858 () Bool)

(assert (=> b!5382554 (= e!3338858 e!3338874)))

(declare-fun res!2285613 () Bool)

(assert (=> b!5382554 (=> res!2285613 e!3338874)))

(declare-fun ++!13414 (List!61632 List!61632) List!61632)

(assert (=> b!5382554 (= res!2285613 (not (= (++!13414 (_1!35613 lt!2191653) (_2!35613 lt!2191653)) s!2326)))))

(declare-datatypes ((Option!15222 0))(
  ( (None!15221) (Some!15221 (v!51250 tuple2!64620)) )
))
(declare-fun lt!2191663 () Option!15222)

(declare-fun get!21175 (Option!15222) tuple2!64620)

(assert (=> b!5382554 (= lt!2191653 (get!21175 lt!2191663))))

(declare-fun Exists!2292 (Int) Bool)

(assert (=> b!5382554 (= (Exists!2292 lambda!278691) (Exists!2292 lambda!278692))))

(declare-fun lt!2191658 () Unit!153962)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!946 (Regex!15111 Regex!15111 List!61632) Unit!153962)

(assert (=> b!5382554 (= lt!2191658 (lemmaExistCutMatchRandMatchRSpecEquivalent!946 lt!2191684 (regTwo!30734 r!7292) s!2326))))

(declare-fun isDefined!11925 (Option!15222) Bool)

(assert (=> b!5382554 (= (isDefined!11925 lt!2191663) (Exists!2292 lambda!278691))))

(declare-fun findConcatSeparation!1636 (Regex!15111 Regex!15111 List!61632 List!61632 List!61632) Option!15222)

(assert (=> b!5382554 (= lt!2191663 (findConcatSeparation!1636 lt!2191684 (regTwo!30734 r!7292) Nil!61508 s!2326 s!2326))))

(declare-fun lt!2191651 () Unit!153962)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1400 (Regex!15111 Regex!15111 List!61632) Unit!153962)

(assert (=> b!5382554 (= lt!2191651 (lemmaFindConcatSeparationEquivalentToExists!1400 lt!2191684 (regTwo!30734 r!7292) s!2326))))

(declare-fun b!5382555 () Bool)

(declare-fun res!2285592 () Bool)

(assert (=> b!5382555 (=> res!2285592 e!3338866)))

(assert (=> b!5382555 (= res!2285592 (not ((_ is Cons!61509) (exprs!4995 (h!67958 zl!343)))))))

(declare-fun e!3338856 () Bool)

(assert (=> b!5382556 (= e!3338874 e!3338856)))

(declare-fun res!2285612 () Bool)

(assert (=> b!5382556 (=> res!2285612 e!3338856)))

(assert (=> b!5382556 (= res!2285612 (not (= (_1!35613 lt!2191653) lt!2191675)))))

(assert (=> b!5382556 (= lt!2191675 (++!13414 (_1!35613 lt!2191678) (_2!35613 lt!2191678)))))

(declare-fun lt!2191665 () Option!15222)

(assert (=> b!5382556 (= lt!2191678 (get!21175 lt!2191665))))

(assert (=> b!5382556 (= (Exists!2292 lambda!278693) (Exists!2292 lambda!278695))))

(declare-fun lt!2191689 () Unit!153962)

(assert (=> b!5382556 (= lt!2191689 (lemmaExistCutMatchRandMatchRSpecEquivalent!946 (reg!15440 (regOne!30734 r!7292)) lt!2191684 (_1!35613 lt!2191653)))))

(assert (=> b!5382556 (= (Exists!2292 lambda!278693) (Exists!2292 lambda!278694))))

(declare-fun lt!2191654 () Unit!153962)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!376 (Regex!15111 List!61632) Unit!153962)

(assert (=> b!5382556 (= lt!2191654 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!376 (reg!15440 (regOne!30734 r!7292)) (_1!35613 lt!2191653)))))

(assert (=> b!5382556 (= (isDefined!11925 lt!2191665) (Exists!2292 lambda!278693))))

(assert (=> b!5382556 (= lt!2191665 (findConcatSeparation!1636 (reg!15440 (regOne!30734 r!7292)) lt!2191684 Nil!61508 (_1!35613 lt!2191653) (_1!35613 lt!2191653)))))

(declare-fun lt!2191669 () Unit!153962)

(assert (=> b!5382556 (= lt!2191669 (lemmaFindConcatSeparationEquivalentToExists!1400 (reg!15440 (regOne!30734 r!7292)) lt!2191684 (_1!35613 lt!2191653)))))

(declare-fun matchRSpec!2214 (Regex!15111 List!61632) Bool)

(assert (=> b!5382556 (matchRSpec!2214 lt!2191684 (_1!35613 lt!2191653))))

(declare-fun lt!2191686 () Unit!153962)

(declare-fun mainMatchTheorem!2214 (Regex!15111 List!61632) Unit!153962)

(assert (=> b!5382556 (= lt!2191686 (mainMatchTheorem!2214 lt!2191684 (_1!35613 lt!2191653)))))

(declare-fun b!5382557 () Bool)

(declare-fun e!3338857 () Bool)

(assert (=> b!5382557 (= e!3338857 (nullable!5280 (regOne!30734 (regOne!30734 r!7292))))))

(declare-fun b!5382558 () Bool)

(declare-fun res!2285604 () Bool)

(assert (=> b!5382558 (=> res!2285604 e!3338855)))

(assert (=> b!5382558 (= res!2285604 (not (= (matchZipper!1355 lt!2191673 s!2326) (matchZipper!1355 lt!2191693 (t!374855 s!2326)))))))

(assert (=> b!5382559 (= e!3338866 e!3338863)))

(declare-fun res!2285618 () Bool)

(assert (=> b!5382559 (=> res!2285618 e!3338863)))

(declare-fun lt!2191696 () Bool)

(assert (=> b!5382559 (= res!2285618 (or (not (= lt!2191694 lt!2191696)) ((_ is Nil!61508) s!2326)))))

(assert (=> b!5382559 (= (Exists!2292 lambda!278688) (Exists!2292 lambda!278689))))

(declare-fun lt!2191668 () Unit!153962)

(assert (=> b!5382559 (= lt!2191668 (lemmaExistCutMatchRandMatchRSpecEquivalent!946 (regOne!30734 r!7292) (regTwo!30734 r!7292) s!2326))))

(assert (=> b!5382559 (= lt!2191696 (Exists!2292 lambda!278688))))

(assert (=> b!5382559 (= lt!2191696 (isDefined!11925 (findConcatSeparation!1636 (regOne!30734 r!7292) (regTwo!30734 r!7292) Nil!61508 s!2326 s!2326)))))

(declare-fun lt!2191692 () Unit!153962)

(assert (=> b!5382559 (= lt!2191692 (lemmaFindConcatSeparationEquivalentToExists!1400 (regOne!30734 r!7292) (regTwo!30734 r!7292) s!2326))))

(declare-fun setNonEmpty!34925 () Bool)

(declare-fun tp!1491621 () Bool)

(declare-fun setElem!34925 () Context!8990)

(declare-fun e!3338872 () Bool)

(assert (=> setNonEmpty!34925 (= setRes!34925 (and tp!1491621 (inv!81024 setElem!34925) e!3338872))))

(declare-fun setRest!34925 () (InoxSet Context!8990))

(assert (=> setNonEmpty!34925 (= z!1189 ((_ map or) (store ((as const (Array Context!8990 Bool)) false) setElem!34925 true) setRest!34925))))

(declare-fun b!5382560 () Bool)

(assert (=> b!5382560 (= e!3338856 e!3338868)))

(declare-fun res!2285597 () Bool)

(assert (=> b!5382560 (=> res!2285597 e!3338868)))

(declare-fun lt!2191698 () List!61632)

(assert (=> b!5382560 (= res!2285597 (not (= lt!2191698 s!2326)))))

(assert (=> b!5382560 (= lt!2191698 (++!13414 (_1!35613 lt!2191678) lt!2191690))))

(assert (=> b!5382560 (= lt!2191698 (++!13414 lt!2191675 (_2!35613 lt!2191653)))))

(assert (=> b!5382560 (= lt!2191690 (++!13414 (_2!35613 lt!2191678) (_2!35613 lt!2191653)))))

(declare-fun lt!2191672 () Unit!153962)

(declare-fun lemmaConcatAssociativity!2808 (List!61632 List!61632 List!61632) Unit!153962)

(assert (=> b!5382560 (= lt!2191672 (lemmaConcatAssociativity!2808 (_1!35613 lt!2191678) (_2!35613 lt!2191678) (_2!35613 lt!2191653)))))

(declare-fun b!5382561 () Bool)

(declare-fun tp!1491620 () Bool)

(declare-fun tp!1491622 () Bool)

(assert (=> b!5382561 (= e!3338861 (and tp!1491620 tp!1491622))))

(declare-fun b!5382562 () Bool)

(declare-fun tp!1491625 () Bool)

(assert (=> b!5382562 (= e!3338872 tp!1491625)))

(declare-fun b!5382563 () Bool)

(declare-fun tp!1491623 () Bool)

(assert (=> b!5382563 (= e!3338861 tp!1491623)))

(declare-fun b!5382564 () Bool)

(declare-fun res!2285609 () Bool)

(assert (=> b!5382564 (=> res!2285609 e!3338866)))

(declare-fun isEmpty!33503 (List!61634) Bool)

(assert (=> b!5382564 (= res!2285609 (not (isEmpty!33503 (t!374857 zl!343))))))

(declare-fun b!5382565 () Bool)

(declare-fun tp_is_empty!39475 () Bool)

(assert (=> b!5382565 (= e!3338861 tp_is_empty!39475)))

(declare-fun b!5382566 () Bool)

(declare-fun res!2285601 () Bool)

(assert (=> b!5382566 (=> res!2285601 e!3338869)))

(assert (=> b!5382566 (= res!2285601 e!3338857)))

(declare-fun res!2285589 () Bool)

(assert (=> b!5382566 (=> (not res!2285589) (not e!3338857))))

(assert (=> b!5382566 (= res!2285589 ((_ is Concat!23956) (regOne!30734 r!7292)))))

(declare-fun b!5382567 () Bool)

(assert (=> b!5382567 (= e!3338870 e!3338858)))

(declare-fun res!2285594 () Bool)

(assert (=> b!5382567 (=> res!2285594 e!3338858)))

(assert (=> b!5382567 (= res!2285594 (not lt!2191694))))

(assert (=> b!5382567 e!3338862))

(declare-fun res!2285598 () Bool)

(assert (=> b!5382567 (=> (not res!2285598) (not e!3338862))))

(assert (=> b!5382567 (= res!2285598 (= (matchR!7296 lt!2191671 s!2326) (matchRSpec!2214 lt!2191671 s!2326)))))

(declare-fun lt!2191657 () Unit!153962)

(assert (=> b!5382567 (= lt!2191657 (mainMatchTheorem!2214 lt!2191671 s!2326))))

(declare-fun b!5382568 () Bool)

(declare-fun res!2285603 () Bool)

(assert (=> b!5382568 (=> res!2285603 e!3338866)))

(declare-fun generalisedUnion!1040 (List!61633) Regex!15111)

(declare-fun unfocusZipperList!553 (List!61634) List!61633)

(assert (=> b!5382568 (= res!2285603 (not (= r!7292 (generalisedUnion!1040 (unfocusZipperList!553 zl!343)))))))

(declare-fun b!5382569 () Bool)

(declare-fun res!2285611 () Bool)

(assert (=> b!5382569 (=> res!2285611 e!3338874)))

(declare-fun isEmpty!33504 (List!61632) Bool)

(assert (=> b!5382569 (= res!2285611 (isEmpty!33504 (_1!35613 lt!2191653)))))

(declare-fun b!5382570 () Bool)

(declare-fun res!2285608 () Bool)

(assert (=> b!5382570 (=> res!2285608 e!3338866)))

(assert (=> b!5382570 (= res!2285608 (or ((_ is EmptyExpr!15111) r!7292) ((_ is EmptyLang!15111) r!7292) ((_ is ElementMatch!15111) r!7292) ((_ is Union!15111) r!7292) (not ((_ is Concat!23956) r!7292))))))

(declare-fun b!5382571 () Bool)

(assert (=> b!5382571 (= e!3338860 (not e!3338866))))

(declare-fun res!2285614 () Bool)

(assert (=> b!5382571 (=> res!2285614 e!3338866)))

(assert (=> b!5382571 (= res!2285614 (not ((_ is Cons!61510) zl!343)))))

(assert (=> b!5382571 (= lt!2191694 lt!2191659)))

(assert (=> b!5382571 (= lt!2191659 (matchRSpec!2214 r!7292 s!2326))))

(assert (=> b!5382571 (= lt!2191694 (matchR!7296 r!7292 s!2326))))

(declare-fun lt!2191683 () Unit!153962)

(assert (=> b!5382571 (= lt!2191683 (mainMatchTheorem!2214 r!7292 s!2326))))

(declare-fun b!5382572 () Bool)

(assert (=> b!5382572 (= e!3338864 e!3338870)))

(declare-fun res!2285591 () Bool)

(assert (=> b!5382572 (=> res!2285591 e!3338870)))

(declare-fun lt!2191667 () Context!8990)

(assert (=> b!5382572 (= res!2285591 (not (= (unfocusZipper!853 (Cons!61510 lt!2191667 Nil!61510)) (reg!15440 (regOne!30734 r!7292)))))))

(declare-fun lt!2191662 () (InoxSet Context!8990))

(assert (=> b!5382572 (= (flatMap!838 lt!2191662 lambda!278690) (derivationStepZipperUp!483 lt!2191679 (h!67956 s!2326)))))

(declare-fun lt!2191660 () Unit!153962)

(assert (=> b!5382572 (= lt!2191660 (lemmaFlatMapOnSingletonSet!370 lt!2191662 lt!2191679 lambda!278690))))

(declare-fun lt!2191655 () (InoxSet Context!8990))

(assert (=> b!5382572 (= (flatMap!838 lt!2191655 lambda!278690) (derivationStepZipperUp!483 lt!2191667 (h!67956 s!2326)))))

(declare-fun lt!2191688 () Unit!153962)

(assert (=> b!5382572 (= lt!2191688 (lemmaFlatMapOnSingletonSet!370 lt!2191655 lt!2191667 lambda!278690))))

(declare-fun lt!2191674 () (InoxSet Context!8990))

(assert (=> b!5382572 (= lt!2191674 (derivationStepZipperUp!483 lt!2191679 (h!67956 s!2326)))))

(declare-fun lt!2191677 () (InoxSet Context!8990))

(assert (=> b!5382572 (= lt!2191677 (derivationStepZipperUp!483 lt!2191667 (h!67956 s!2326)))))

(assert (=> b!5382572 (= lt!2191662 (store ((as const (Array Context!8990 Bool)) false) lt!2191679 true))))

(assert (=> b!5382572 (= lt!2191655 (store ((as const (Array Context!8990 Bool)) false) lt!2191667 true))))

(assert (=> b!5382572 (= lt!2191667 (Context!8991 (Cons!61509 (reg!15440 (regOne!30734 r!7292)) Nil!61509)))))

(declare-fun b!5382573 () Bool)

(assert (=> b!5382573 (= e!3338869 e!3338873)))

(declare-fun res!2285599 () Bool)

(assert (=> b!5382573 (=> res!2285599 e!3338873)))

(assert (=> b!5382573 (= res!2285599 (not (= lt!2191685 lt!2191681)))))

(assert (=> b!5382573 (= lt!2191681 (derivationStepZipperDown!559 (reg!15440 (regOne!30734 r!7292)) lt!2191679 (h!67956 s!2326)))))

(assert (=> b!5382573 (= lt!2191679 (Context!8991 lt!2191695))))

(assert (=> b!5382573 (= lt!2191695 (Cons!61509 lt!2191684 (t!374856 (exprs!4995 (h!67958 zl!343)))))))

(assert (=> b!5382573 (= lt!2191684 (Star!15111 (reg!15440 (regOne!30734 r!7292))))))

(declare-fun b!5382574 () Bool)

(declare-fun res!2285621 () Bool)

(assert (=> b!5382574 (=> res!2285621 e!3338868)))

(assert (=> b!5382574 (= res!2285621 (not (matchR!7296 lt!2191684 (_2!35613 lt!2191678))))))

(declare-fun b!5382575 () Bool)

(declare-fun tp!1491628 () Bool)

(assert (=> b!5382575 (= e!3338865 (and tp_is_empty!39475 tp!1491628))))

(assert (= (and start!565990 res!2285606) b!5382547))

(assert (= (and b!5382547 res!2285595) b!5382552))

(assert (= (and b!5382552 res!2285616) b!5382571))

(assert (= (and b!5382571 (not res!2285614)) b!5382564))

(assert (= (and b!5382564 (not res!2285609)) b!5382549))

(assert (= (and b!5382549 (not res!2285605)) b!5382555))

(assert (= (and b!5382555 (not res!2285592)) b!5382568))

(assert (= (and b!5382568 (not res!2285603)) b!5382570))

(assert (= (and b!5382570 (not res!2285608)) b!5382559))

(assert (= (and b!5382559 (not res!2285618)) b!5382548))

(assert (= (and b!5382548 (not res!2285600)) b!5382535))

(assert (= (and b!5382535 c!938102) b!5382544))

(assert (= (and b!5382535 (not c!938102)) b!5382551))

(assert (= (and b!5382544 (not res!2285602)) b!5382542))

(assert (= (and b!5382535 (not res!2285607)) b!5382566))

(assert (= (and b!5382566 res!2285589) b!5382557))

(assert (= (and b!5382566 (not res!2285601)) b!5382538))

(assert (= (and b!5382538 (not res!2285596)) b!5382573))

(assert (= (and b!5382573 (not res!2285599)) b!5382546))

(assert (= (and b!5382546 (not res!2285617)) b!5382558))

(assert (= (and b!5382558 (not res!2285604)) b!5382553))

(assert (= (and b!5382553 (not res!2285593)) b!5382537))

(assert (= (and b!5382537 (not res!2285588)) b!5382550))

(assert (= (and b!5382550 (not res!2285590)) b!5382572))

(assert (= (and b!5382572 (not res!2285591)) b!5382532))

(assert (= (and b!5382532 (not res!2285610)) b!5382567))

(assert (= (and b!5382567 res!2285598) b!5382533))

(assert (= (and b!5382567 (not res!2285594)) b!5382554))

(assert (= (and b!5382554 (not res!2285613)) b!5382541))

(assert (= (and b!5382541 (not res!2285615)) b!5382540))

(assert (= (and b!5382540 (not res!2285620)) b!5382569))

(assert (= (and b!5382569 (not res!2285611)) b!5382556))

(assert (= (and b!5382556 (not res!2285612)) b!5382560))

(assert (= (and b!5382560 (not res!2285597)) b!5382536))

(assert (= (and b!5382536 (not res!2285619)) b!5382574))

(assert (= (and b!5382574 (not res!2285621)) b!5382539))

(assert (= (and start!565990 ((_ is ElementMatch!15111) r!7292)) b!5382565))

(assert (= (and start!565990 ((_ is Concat!23956) r!7292)) b!5382561))

(assert (= (and start!565990 ((_ is Star!15111) r!7292)) b!5382563))

(assert (= (and start!565990 ((_ is Union!15111) r!7292)) b!5382534))

(assert (= (and start!565990 condSetEmpty!34925) setIsEmpty!34925))

(assert (= (and start!565990 (not condSetEmpty!34925)) setNonEmpty!34925))

(assert (= setNonEmpty!34925 b!5382562))

(assert (= b!5382545 b!5382543))

(assert (= (and start!565990 ((_ is Cons!61510) zl!343)) b!5382545))

(assert (= (and start!565990 ((_ is Cons!61508) s!2326)) b!5382575))

(declare-fun m!6408314 () Bool)

(assert (=> b!5382558 m!6408314))

(declare-fun m!6408316 () Bool)

(assert (=> b!5382558 m!6408316))

(declare-fun m!6408318 () Bool)

(assert (=> b!5382568 m!6408318))

(assert (=> b!5382568 m!6408318))

(declare-fun m!6408320 () Bool)

(assert (=> b!5382568 m!6408320))

(declare-fun m!6408322 () Bool)

(assert (=> b!5382540 m!6408322))

(declare-fun m!6408324 () Bool)

(assert (=> setNonEmpty!34925 m!6408324))

(declare-fun m!6408326 () Bool)

(assert (=> b!5382564 m!6408326))

(declare-fun m!6408328 () Bool)

(assert (=> b!5382539 m!6408328))

(declare-fun m!6408330 () Bool)

(assert (=> b!5382539 m!6408330))

(declare-fun m!6408332 () Bool)

(assert (=> b!5382539 m!6408332))

(declare-fun m!6408334 () Bool)

(assert (=> b!5382539 m!6408334))

(declare-fun m!6408336 () Bool)

(assert (=> b!5382539 m!6408336))

(declare-fun m!6408338 () Bool)

(assert (=> b!5382536 m!6408338))

(declare-fun m!6408340 () Bool)

(assert (=> start!565990 m!6408340))

(declare-fun m!6408342 () Bool)

(assert (=> b!5382532 m!6408342))

(declare-fun m!6408344 () Bool)

(assert (=> b!5382574 m!6408344))

(declare-fun m!6408346 () Bool)

(assert (=> b!5382552 m!6408346))

(declare-fun m!6408348 () Bool)

(assert (=> b!5382544 m!6408348))

(declare-fun m!6408350 () Bool)

(assert (=> b!5382544 m!6408350))

(declare-fun m!6408352 () Bool)

(assert (=> b!5382544 m!6408352))

(declare-fun m!6408354 () Bool)

(assert (=> b!5382571 m!6408354))

(declare-fun m!6408356 () Bool)

(assert (=> b!5382571 m!6408356))

(declare-fun m!6408358 () Bool)

(assert (=> b!5382571 m!6408358))

(declare-fun m!6408360 () Bool)

(assert (=> b!5382556 m!6408360))

(declare-fun m!6408362 () Bool)

(assert (=> b!5382556 m!6408362))

(declare-fun m!6408364 () Bool)

(assert (=> b!5382556 m!6408364))

(declare-fun m!6408366 () Bool)

(assert (=> b!5382556 m!6408366))

(assert (=> b!5382556 m!6408366))

(assert (=> b!5382556 m!6408366))

(declare-fun m!6408368 () Bool)

(assert (=> b!5382556 m!6408368))

(declare-fun m!6408370 () Bool)

(assert (=> b!5382556 m!6408370))

(declare-fun m!6408372 () Bool)

(assert (=> b!5382556 m!6408372))

(declare-fun m!6408374 () Bool)

(assert (=> b!5382556 m!6408374))

(declare-fun m!6408376 () Bool)

(assert (=> b!5382556 m!6408376))

(declare-fun m!6408378 () Bool)

(assert (=> b!5382556 m!6408378))

(declare-fun m!6408380 () Bool)

(assert (=> b!5382556 m!6408380))

(declare-fun m!6408382 () Bool)

(assert (=> b!5382556 m!6408382))

(declare-fun m!6408384 () Bool)

(assert (=> b!5382545 m!6408384))

(declare-fun m!6408386 () Bool)

(assert (=> b!5382542 m!6408386))

(declare-fun m!6408388 () Bool)

(assert (=> b!5382567 m!6408388))

(declare-fun m!6408390 () Bool)

(assert (=> b!5382567 m!6408390))

(declare-fun m!6408392 () Bool)

(assert (=> b!5382567 m!6408392))

(declare-fun m!6408394 () Bool)

(assert (=> b!5382573 m!6408394))

(declare-fun m!6408396 () Bool)

(assert (=> b!5382572 m!6408396))

(declare-fun m!6408398 () Bool)

(assert (=> b!5382572 m!6408398))

(declare-fun m!6408400 () Bool)

(assert (=> b!5382572 m!6408400))

(declare-fun m!6408402 () Bool)

(assert (=> b!5382572 m!6408402))

(declare-fun m!6408404 () Bool)

(assert (=> b!5382572 m!6408404))

(declare-fun m!6408406 () Bool)

(assert (=> b!5382572 m!6408406))

(declare-fun m!6408408 () Bool)

(assert (=> b!5382572 m!6408408))

(declare-fun m!6408410 () Bool)

(assert (=> b!5382572 m!6408410))

(declare-fun m!6408412 () Bool)

(assert (=> b!5382572 m!6408412))

(declare-fun m!6408414 () Bool)

(assert (=> b!5382554 m!6408414))

(declare-fun m!6408416 () Bool)

(assert (=> b!5382554 m!6408416))

(declare-fun m!6408418 () Bool)

(assert (=> b!5382554 m!6408418))

(declare-fun m!6408420 () Bool)

(assert (=> b!5382554 m!6408420))

(declare-fun m!6408422 () Bool)

(assert (=> b!5382554 m!6408422))

(declare-fun m!6408424 () Bool)

(assert (=> b!5382554 m!6408424))

(assert (=> b!5382554 m!6408420))

(declare-fun m!6408426 () Bool)

(assert (=> b!5382554 m!6408426))

(declare-fun m!6408428 () Bool)

(assert (=> b!5382554 m!6408428))

(declare-fun m!6408430 () Bool)

(assert (=> b!5382550 m!6408430))

(declare-fun m!6408432 () Bool)

(assert (=> b!5382569 m!6408432))

(declare-fun m!6408434 () Bool)

(assert (=> b!5382560 m!6408434))

(declare-fun m!6408436 () Bool)

(assert (=> b!5382560 m!6408436))

(declare-fun m!6408438 () Bool)

(assert (=> b!5382560 m!6408438))

(declare-fun m!6408440 () Bool)

(assert (=> b!5382560 m!6408440))

(declare-fun m!6408442 () Bool)

(assert (=> b!5382541 m!6408442))

(declare-fun m!6408444 () Bool)

(assert (=> b!5382535 m!6408444))

(declare-fun m!6408446 () Bool)

(assert (=> b!5382535 m!6408446))

(declare-fun m!6408448 () Bool)

(assert (=> b!5382535 m!6408448))

(declare-fun m!6408450 () Bool)

(assert (=> b!5382535 m!6408450))

(declare-fun m!6408452 () Bool)

(assert (=> b!5382535 m!6408452))

(declare-fun m!6408454 () Bool)

(assert (=> b!5382535 m!6408454))

(declare-fun m!6408456 () Bool)

(assert (=> b!5382535 m!6408456))

(declare-fun m!6408458 () Bool)

(assert (=> b!5382546 m!6408458))

(declare-fun m!6408460 () Bool)

(assert (=> b!5382546 m!6408460))

(declare-fun m!6408462 () Bool)

(assert (=> b!5382546 m!6408462))

(declare-fun m!6408464 () Bool)

(assert (=> b!5382546 m!6408464))

(declare-fun m!6408466 () Bool)

(assert (=> b!5382546 m!6408466))

(declare-fun m!6408468 () Bool)

(assert (=> b!5382549 m!6408468))

(declare-fun m!6408470 () Bool)

(assert (=> b!5382548 m!6408470))

(declare-fun m!6408472 () Bool)

(assert (=> b!5382547 m!6408472))

(declare-fun m!6408474 () Bool)

(assert (=> b!5382557 m!6408474))

(declare-fun m!6408476 () Bool)

(assert (=> b!5382559 m!6408476))

(declare-fun m!6408478 () Bool)

(assert (=> b!5382559 m!6408478))

(declare-fun m!6408480 () Bool)

(assert (=> b!5382559 m!6408480))

(declare-fun m!6408482 () Bool)

(assert (=> b!5382559 m!6408482))

(declare-fun m!6408484 () Bool)

(assert (=> b!5382559 m!6408484))

(assert (=> b!5382559 m!6408484))

(assert (=> b!5382559 m!6408478))

(declare-fun m!6408486 () Bool)

(assert (=> b!5382559 m!6408486))

(check-sat (not b!5382561) (not b!5382574) (not b!5382567) (not b!5382573) (not b!5382556) (not b!5382534) (not b!5382564) tp_is_empty!39475 (not b!5382543) (not b!5382547) (not b!5382550) (not b!5382548) (not b!5382532) (not b!5382536) (not b!5382562) (not b!5382549) (not setNonEmpty!34925) (not b!5382559) (not start!565990) (not b!5382539) (not b!5382540) (not b!5382563) (not b!5382575) (not b!5382572) (not b!5382541) (not b!5382568) (not b!5382542) (not b!5382560) (not b!5382557) (not b!5382552) (not b!5382569) (not b!5382544) (not b!5382571) (not b!5382554) (not b!5382535) (not b!5382558) (not b!5382546) (not b!5382545))
(check-sat)
