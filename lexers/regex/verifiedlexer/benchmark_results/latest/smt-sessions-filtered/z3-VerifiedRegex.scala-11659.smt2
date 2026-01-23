; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653456 () Bool)

(assert start!653456)

(declare-fun b!6737451 () Bool)

(assert (=> b!6737451 true))

(assert (=> b!6737451 true))

(declare-fun lambda!378369 () Int)

(declare-fun lambda!378368 () Int)

(assert (=> b!6737451 (not (= lambda!378369 lambda!378368))))

(assert (=> b!6737451 true))

(assert (=> b!6737451 true))

(declare-fun lambda!378370 () Int)

(assert (=> b!6737451 (not (= lambda!378370 lambda!378368))))

(assert (=> b!6737451 (not (= lambda!378370 lambda!378369))))

(assert (=> b!6737451 true))

(assert (=> b!6737451 true))

(declare-fun b!6737448 () Bool)

(assert (=> b!6737448 true))

(declare-fun setNonEmpty!45987 () Bool)

(declare-fun e!4069807 () Bool)

(declare-fun tp!1847149 () Bool)

(declare-fun setRes!45987 () Bool)

(declare-datatypes ((C!33400 0))(
  ( (C!33401 (val!26402 Int)) )
))
(declare-datatypes ((Regex!16565 0))(
  ( (ElementMatch!16565 (c!1249609 C!33400)) (Concat!25410 (regOne!33642 Regex!16565) (regTwo!33642 Regex!16565)) (EmptyExpr!16565) (Star!16565 (reg!16894 Regex!16565)) (EmptyLang!16565) (Union!16565 (regOne!33643 Regex!16565) (regTwo!33643 Regex!16565)) )
))
(declare-datatypes ((List!65994 0))(
  ( (Nil!65870) (Cons!65870 (h!72318 Regex!16565) (t!379689 List!65994)) )
))
(declare-datatypes ((Context!11898 0))(
  ( (Context!11899 (exprs!6449 List!65994)) )
))
(declare-fun setElem!45987 () Context!11898)

(declare-fun inv!84659 (Context!11898) Bool)

(assert (=> setNonEmpty!45987 (= setRes!45987 (and tp!1847149 (inv!84659 setElem!45987) e!4069807))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11898))

(declare-fun setRest!45987 () (InoxSet Context!11898))

(assert (=> setNonEmpty!45987 (= z!1189 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) setElem!45987 true) setRest!45987))))

(declare-fun b!6737431 () Bool)

(declare-fun e!4069802 () Bool)

(declare-fun e!4069796 () Bool)

(assert (=> b!6737431 (= e!4069802 e!4069796)))

(declare-fun res!2756094 () Bool)

(assert (=> b!6737431 (=> res!2756094 e!4069796)))

(declare-fun r!7292 () Regex!16565)

(declare-datatypes ((List!65995 0))(
  ( (Nil!65871) (Cons!65871 (h!72319 C!33400) (t!379690 List!65995)) )
))
(declare-fun s!2326 () List!65995)

(declare-fun lt!2438637 () Context!11898)

(declare-fun lt!2438632 () (InoxSet Context!11898))

(declare-fun derivationStepZipperDown!1793 (Regex!16565 Context!11898 C!33400) (InoxSet Context!11898))

(assert (=> b!6737431 (= res!2756094 (not (= lt!2438632 (derivationStepZipperDown!1793 (reg!16894 r!7292) lt!2438637 (h!72319 s!2326)))))))

(declare-fun lt!2438640 () List!65994)

(assert (=> b!6737431 (= lt!2438637 (Context!11899 lt!2438640))))

(declare-fun lambda!378371 () Int)

(declare-fun lt!2438628 () Context!11898)

(declare-fun lt!2438633 () (InoxSet Context!11898))

(declare-fun flatMap!2046 ((InoxSet Context!11898) Int) (InoxSet Context!11898))

(declare-fun derivationStepZipperUp!1719 (Context!11898 C!33400) (InoxSet Context!11898))

(assert (=> b!6737431 (= (flatMap!2046 lt!2438633 lambda!378371) (derivationStepZipperUp!1719 lt!2438628 (h!72319 s!2326)))))

(declare-datatypes ((Unit!159821 0))(
  ( (Unit!159822) )
))
(declare-fun lt!2438643 () Unit!159821)

(declare-fun lemmaFlatMapOnSingletonSet!1572 ((InoxSet Context!11898) Context!11898 Int) Unit!159821)

(assert (=> b!6737431 (= lt!2438643 (lemmaFlatMapOnSingletonSet!1572 lt!2438633 lt!2438628 lambda!378371))))

(declare-fun lt!2438641 () (InoxSet Context!11898))

(assert (=> b!6737431 (= lt!2438641 (derivationStepZipperUp!1719 lt!2438628 (h!72319 s!2326)))))

(assert (=> b!6737431 (= lt!2438633 (store ((as const (Array Context!11898 Bool)) false) lt!2438628 true))))

(assert (=> b!6737431 (= lt!2438628 (Context!11899 (Cons!65870 (reg!16894 r!7292) lt!2438640)))))

(assert (=> b!6737431 (= lt!2438640 (Cons!65870 r!7292 Nil!65870))))

(declare-fun b!6737432 () Bool)

(declare-fun res!2756092 () Bool)

(declare-fun e!4069803 () Bool)

(assert (=> b!6737432 (=> res!2756092 e!4069803)))

(get-info :version)

(assert (=> b!6737432 (= res!2756092 ((_ is Nil!65871) s!2326))))

(declare-fun b!6737433 () Bool)

(declare-fun res!2756102 () Bool)

(declare-fun e!4069801 () Bool)

(assert (=> b!6737433 (=> res!2756102 e!4069801)))

(assert (=> b!6737433 (= res!2756102 (or ((_ is EmptyExpr!16565) r!7292) ((_ is EmptyLang!16565) r!7292) ((_ is ElementMatch!16565) r!7292) ((_ is Union!16565) r!7292) ((_ is Concat!25410) r!7292)))))

(declare-fun b!6737434 () Bool)

(declare-fun e!4069806 () Bool)

(declare-fun tp!1847146 () Bool)

(assert (=> b!6737434 (= e!4069806 tp!1847146)))

(declare-fun b!6737435 () Bool)

(declare-fun res!2756088 () Bool)

(assert (=> b!6737435 (=> res!2756088 e!4069796)))

(declare-fun matchZipper!2551 ((InoxSet Context!11898) List!65995) Bool)

(declare-fun derivationStepZipper!2509 ((InoxSet Context!11898) C!33400) (InoxSet Context!11898))

(assert (=> b!6737435 (= res!2756088 (not (= (matchZipper!2551 lt!2438633 s!2326) (matchZipper!2551 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (t!379690 s!2326)))))))

(declare-fun b!6737436 () Bool)

(declare-fun res!2756097 () Bool)

(declare-fun e!4069797 () Bool)

(assert (=> b!6737436 (=> (not res!2756097) (not e!4069797))))

(declare-datatypes ((List!65996 0))(
  ( (Nil!65872) (Cons!65872 (h!72320 Context!11898) (t!379691 List!65996)) )
))
(declare-fun zl!343 () List!65996)

(declare-fun toList!10349 ((InoxSet Context!11898)) List!65996)

(assert (=> b!6737436 (= res!2756097 (= (toList!10349 z!1189) zl!343))))

(declare-fun b!6737437 () Bool)

(declare-fun tp!1847144 () Bool)

(assert (=> b!6737437 (= e!4069807 tp!1847144)))

(declare-fun setIsEmpty!45987 () Bool)

(assert (=> setIsEmpty!45987 setRes!45987))

(declare-fun b!6737438 () Bool)

(declare-fun tp_is_empty!42383 () Bool)

(assert (=> b!6737438 (= e!4069806 tp_is_empty!42383)))

(declare-fun res!2756096 () Bool)

(assert (=> start!653456 (=> (not res!2756096) (not e!4069797))))

(declare-fun validRegex!8301 (Regex!16565) Bool)

(assert (=> start!653456 (= res!2756096 (validRegex!8301 r!7292))))

(assert (=> start!653456 e!4069797))

(assert (=> start!653456 e!4069806))

(declare-fun condSetEmpty!45987 () Bool)

(assert (=> start!653456 (= condSetEmpty!45987 (= z!1189 ((as const (Array Context!11898 Bool)) false)))))

(assert (=> start!653456 setRes!45987))

(declare-fun e!4069798 () Bool)

(assert (=> start!653456 e!4069798))

(declare-fun e!4069799 () Bool)

(assert (=> start!653456 e!4069799))

(declare-fun b!6737430 () Bool)

(declare-fun e!4069808 () Bool)

(assert (=> b!6737430 (= e!4069803 e!4069808)))

(declare-fun res!2756095 () Bool)

(assert (=> b!6737430 (=> res!2756095 e!4069808)))

(declare-fun lt!2438638 () (InoxSet Context!11898))

(declare-fun lt!2438634 () (InoxSet Context!11898))

(assert (=> b!6737430 (= res!2756095 (not (= lt!2438638 lt!2438634)))))

(assert (=> b!6737430 (= lt!2438634 (derivationStepZipperDown!1793 r!7292 (Context!11899 Nil!65870) (h!72319 s!2326)))))

(assert (=> b!6737430 (= lt!2438638 (derivationStepZipperUp!1719 (Context!11899 (Cons!65870 r!7292 Nil!65870)) (h!72319 s!2326)))))

(assert (=> b!6737430 (= lt!2438632 (derivationStepZipper!2509 z!1189 (h!72319 s!2326)))))

(declare-fun b!6737439 () Bool)

(declare-fun e!4069804 () Bool)

(assert (=> b!6737439 (= e!4069797 e!4069804)))

(declare-fun res!2756087 () Bool)

(assert (=> b!6737439 (=> (not res!2756087) (not e!4069804))))

(declare-fun lt!2438644 () Regex!16565)

(assert (=> b!6737439 (= res!2756087 (= r!7292 lt!2438644))))

(declare-fun unfocusZipper!2307 (List!65996) Regex!16565)

(assert (=> b!6737439 (= lt!2438644 (unfocusZipper!2307 zl!343))))

(declare-fun b!6737440 () Bool)

(declare-fun res!2756098 () Bool)

(assert (=> b!6737440 (=> res!2756098 e!4069801)))

(declare-fun generalisedConcat!2162 (List!65994) Regex!16565)

(assert (=> b!6737440 (= res!2756098 (not (= r!7292 (generalisedConcat!2162 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6737441 () Bool)

(assert (=> b!6737441 (= e!4069804 (not e!4069801))))

(declare-fun res!2756099 () Bool)

(assert (=> b!6737441 (=> res!2756099 e!4069801)))

(assert (=> b!6737441 (= res!2756099 (not ((_ is Cons!65872) zl!343)))))

(declare-fun lt!2438631 () Bool)

(declare-fun matchRSpec!3666 (Regex!16565 List!65995) Bool)

(assert (=> b!6737441 (= lt!2438631 (matchRSpec!3666 r!7292 s!2326))))

(declare-fun matchR!8748 (Regex!16565 List!65995) Bool)

(assert (=> b!6737441 (= lt!2438631 (matchR!8748 r!7292 s!2326))))

(declare-fun lt!2438642 () Unit!159821)

(declare-fun mainMatchTheorem!3666 (Regex!16565 List!65995) Unit!159821)

(assert (=> b!6737441 (= lt!2438642 (mainMatchTheorem!3666 r!7292 s!2326))))

(declare-fun b!6737442 () Bool)

(declare-fun res!2756091 () Bool)

(assert (=> b!6737442 (=> res!2756091 e!4069801)))

(assert (=> b!6737442 (= res!2756091 (not ((_ is Cons!65870) (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6737443 () Bool)

(declare-fun res!2756101 () Bool)

(assert (=> b!6737443 (=> res!2756101 e!4069796)))

(assert (=> b!6737443 (= res!2756101 (not (= (unfocusZipper!2307 (Cons!65872 lt!2438628 Nil!65872)) (Concat!25410 (reg!16894 r!7292) r!7292))))))

(declare-fun b!6737444 () Bool)

(declare-fun e!4069805 () Bool)

(declare-fun lt!2438629 () Bool)

(assert (=> b!6737444 (= e!4069805 lt!2438629)))

(declare-fun b!6737445 () Bool)

(declare-fun e!4069800 () Bool)

(declare-fun tp!1847151 () Bool)

(assert (=> b!6737445 (= e!4069800 tp!1847151)))

(declare-fun b!6737446 () Bool)

(declare-fun tp!1847147 () Bool)

(assert (=> b!6737446 (= e!4069799 (and tp_is_empty!42383 tp!1847147))))

(declare-fun b!6737447 () Bool)

(declare-fun res!2756103 () Bool)

(assert (=> b!6737447 (=> res!2756103 e!4069801)))

(declare-fun generalisedUnion!2409 (List!65994) Regex!16565)

(declare-fun unfocusZipperList!1986 (List!65996) List!65994)

(assert (=> b!6737447 (= res!2756103 (not (= r!7292 (generalisedUnion!2409 (unfocusZipperList!1986 zl!343)))))))

(assert (=> b!6737448 (= e!4069808 e!4069802)))

(declare-fun res!2756100 () Bool)

(assert (=> b!6737448 (=> res!2756100 e!4069802)))

(assert (=> b!6737448 (= res!2756100 (not (= lt!2438632 lt!2438634)))))

(assert (=> b!6737448 (= (flatMap!2046 z!1189 lambda!378371) (derivationStepZipperUp!1719 (h!72320 zl!343) (h!72319 s!2326)))))

(declare-fun lt!2438624 () Unit!159821)

(assert (=> b!6737448 (= lt!2438624 (lemmaFlatMapOnSingletonSet!1572 z!1189 (h!72320 zl!343) lambda!378371))))

(declare-fun b!6737449 () Bool)

(declare-fun tp!1847152 () Bool)

(declare-fun tp!1847148 () Bool)

(assert (=> b!6737449 (= e!4069806 (and tp!1847152 tp!1847148))))

(declare-fun b!6737450 () Bool)

(declare-fun res!2756090 () Bool)

(assert (=> b!6737450 (=> res!2756090 e!4069796)))

(assert (=> b!6737450 (= res!2756090 (or (not (= lt!2438644 r!7292)) (not (= r!7292 r!7292))))))

(assert (=> b!6737451 (= e!4069801 e!4069803)))

(declare-fun res!2756093 () Bool)

(assert (=> b!6737451 (=> res!2756093 e!4069803)))

(assert (=> b!6737451 (= res!2756093 (not (= lt!2438631 e!4069805)))))

(declare-fun res!2756089 () Bool)

(assert (=> b!6737451 (=> res!2756089 e!4069805)))

(declare-fun isEmpty!38209 (List!65995) Bool)

(assert (=> b!6737451 (= res!2756089 (isEmpty!38209 s!2326))))

(declare-fun Exists!3633 (Int) Bool)

(assert (=> b!6737451 (= (Exists!3633 lambda!378368) (Exists!3633 lambda!378370))))

(declare-fun lt!2438626 () Unit!159821)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2160 (Regex!16565 Regex!16565 List!65995) Unit!159821)

(assert (=> b!6737451 (= lt!2438626 (lemmaExistCutMatchRandMatchRSpecEquivalent!2160 (reg!16894 r!7292) r!7292 s!2326))))

(assert (=> b!6737451 (= (Exists!3633 lambda!378368) (Exists!3633 lambda!378369))))

(declare-fun lt!2438623 () Unit!159821)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!724 (Regex!16565 List!65995) Unit!159821)

(assert (=> b!6737451 (= lt!2438623 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!724 (reg!16894 r!7292) s!2326))))

(assert (=> b!6737451 (= lt!2438629 (Exists!3633 lambda!378368))))

(declare-datatypes ((tuple2!67080 0))(
  ( (tuple2!67081 (_1!36843 List!65995) (_2!36843 List!65995)) )
))
(declare-datatypes ((Option!16452 0))(
  ( (None!16451) (Some!16451 (v!52651 tuple2!67080)) )
))
(declare-fun isDefined!13155 (Option!16452) Bool)

(declare-fun findConcatSeparation!2866 (Regex!16565 Regex!16565 List!65995 List!65995 List!65995) Option!16452)

(assert (=> b!6737451 (= lt!2438629 (isDefined!13155 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326)))))

(declare-fun lt!2438630 () Unit!159821)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2630 (Regex!16565 Regex!16565 List!65995) Unit!159821)

(assert (=> b!6737451 (= lt!2438630 (lemmaFindConcatSeparationEquivalentToExists!2630 (reg!16894 r!7292) r!7292 s!2326))))

(declare-fun b!6737452 () Bool)

(assert (=> b!6737452 (= e!4069796 (inv!84659 lt!2438637))))

(declare-fun lt!2438636 () (InoxSet Context!11898))

(declare-fun lt!2438625 () Context!11898)

(assert (=> b!6737452 (= (flatMap!2046 lt!2438636 lambda!378371) (derivationStepZipperUp!1719 lt!2438625 (h!72319 s!2326)))))

(declare-fun lt!2438635 () Unit!159821)

(assert (=> b!6737452 (= lt!2438635 (lemmaFlatMapOnSingletonSet!1572 lt!2438636 lt!2438625 lambda!378371))))

(declare-fun lt!2438639 () (InoxSet Context!11898))

(assert (=> b!6737452 (= lt!2438639 (derivationStepZipperUp!1719 lt!2438637 (h!72319 s!2326)))))

(declare-fun lt!2438627 () (InoxSet Context!11898))

(assert (=> b!6737452 (= lt!2438627 (derivationStepZipperUp!1719 lt!2438625 (h!72319 s!2326)))))

(assert (=> b!6737452 (= lt!2438636 (store ((as const (Array Context!11898 Bool)) false) lt!2438625 true))))

(assert (=> b!6737452 (= lt!2438625 (Context!11899 (Cons!65870 (reg!16894 r!7292) Nil!65870)))))

(declare-fun b!6737453 () Bool)

(declare-fun tp!1847153 () Bool)

(declare-fun tp!1847150 () Bool)

(assert (=> b!6737453 (= e!4069806 (and tp!1847153 tp!1847150))))

(declare-fun b!6737454 () Bool)

(declare-fun tp!1847145 () Bool)

(assert (=> b!6737454 (= e!4069798 (and (inv!84659 (h!72320 zl!343)) e!4069800 tp!1847145))))

(declare-fun b!6737455 () Bool)

(declare-fun res!2756104 () Bool)

(assert (=> b!6737455 (=> res!2756104 e!4069801)))

(declare-fun isEmpty!38210 (List!65996) Bool)

(assert (=> b!6737455 (= res!2756104 (not (isEmpty!38210 (t!379691 zl!343))))))

(assert (= (and start!653456 res!2756096) b!6737436))

(assert (= (and b!6737436 res!2756097) b!6737439))

(assert (= (and b!6737439 res!2756087) b!6737441))

(assert (= (and b!6737441 (not res!2756099)) b!6737455))

(assert (= (and b!6737455 (not res!2756104)) b!6737440))

(assert (= (and b!6737440 (not res!2756098)) b!6737442))

(assert (= (and b!6737442 (not res!2756091)) b!6737447))

(assert (= (and b!6737447 (not res!2756103)) b!6737433))

(assert (= (and b!6737433 (not res!2756102)) b!6737451))

(assert (= (and b!6737451 (not res!2756089)) b!6737444))

(assert (= (and b!6737451 (not res!2756093)) b!6737432))

(assert (= (and b!6737432 (not res!2756092)) b!6737430))

(assert (= (and b!6737430 (not res!2756095)) b!6737448))

(assert (= (and b!6737448 (not res!2756100)) b!6737431))

(assert (= (and b!6737431 (not res!2756094)) b!6737435))

(assert (= (and b!6737435 (not res!2756088)) b!6737450))

(assert (= (and b!6737450 (not res!2756090)) b!6737443))

(assert (= (and b!6737443 (not res!2756101)) b!6737452))

(assert (= (and start!653456 ((_ is ElementMatch!16565) r!7292)) b!6737438))

(assert (= (and start!653456 ((_ is Concat!25410) r!7292)) b!6737449))

(assert (= (and start!653456 ((_ is Star!16565) r!7292)) b!6737434))

(assert (= (and start!653456 ((_ is Union!16565) r!7292)) b!6737453))

(assert (= (and start!653456 condSetEmpty!45987) setIsEmpty!45987))

(assert (= (and start!653456 (not condSetEmpty!45987)) setNonEmpty!45987))

(assert (= setNonEmpty!45987 b!6737437))

(assert (= b!6737454 b!6737445))

(assert (= (and start!653456 ((_ is Cons!65872) zl!343)) b!6737454))

(assert (= (and start!653456 ((_ is Cons!65871) s!2326)) b!6737446))

(declare-fun m!7494612 () Bool)

(assert (=> b!6737435 m!7494612))

(declare-fun m!7494614 () Bool)

(assert (=> b!6737435 m!7494614))

(assert (=> b!6737435 m!7494614))

(declare-fun m!7494616 () Bool)

(assert (=> b!6737435 m!7494616))

(declare-fun m!7494618 () Bool)

(assert (=> b!6737439 m!7494618))

(declare-fun m!7494620 () Bool)

(assert (=> b!6737447 m!7494620))

(assert (=> b!6737447 m!7494620))

(declare-fun m!7494622 () Bool)

(assert (=> b!6737447 m!7494622))

(declare-fun m!7494624 () Bool)

(assert (=> start!653456 m!7494624))

(declare-fun m!7494626 () Bool)

(assert (=> b!6737431 m!7494626))

(declare-fun m!7494628 () Bool)

(assert (=> b!6737431 m!7494628))

(declare-fun m!7494630 () Bool)

(assert (=> b!6737431 m!7494630))

(declare-fun m!7494632 () Bool)

(assert (=> b!6737431 m!7494632))

(declare-fun m!7494634 () Bool)

(assert (=> b!6737431 m!7494634))

(declare-fun m!7494636 () Bool)

(assert (=> b!6737452 m!7494636))

(declare-fun m!7494638 () Bool)

(assert (=> b!6737452 m!7494638))

(declare-fun m!7494640 () Bool)

(assert (=> b!6737452 m!7494640))

(declare-fun m!7494642 () Bool)

(assert (=> b!6737452 m!7494642))

(declare-fun m!7494644 () Bool)

(assert (=> b!6737452 m!7494644))

(declare-fun m!7494646 () Bool)

(assert (=> b!6737452 m!7494646))

(declare-fun m!7494648 () Bool)

(assert (=> b!6737455 m!7494648))

(declare-fun m!7494650 () Bool)

(assert (=> b!6737430 m!7494650))

(declare-fun m!7494652 () Bool)

(assert (=> b!6737430 m!7494652))

(declare-fun m!7494654 () Bool)

(assert (=> b!6737430 m!7494654))

(declare-fun m!7494656 () Bool)

(assert (=> b!6737454 m!7494656))

(declare-fun m!7494658 () Bool)

(assert (=> b!6737436 m!7494658))

(declare-fun m!7494660 () Bool)

(assert (=> b!6737443 m!7494660))

(declare-fun m!7494662 () Bool)

(assert (=> b!6737441 m!7494662))

(declare-fun m!7494664 () Bool)

(assert (=> b!6737441 m!7494664))

(declare-fun m!7494666 () Bool)

(assert (=> b!6737441 m!7494666))

(declare-fun m!7494668 () Bool)

(assert (=> setNonEmpty!45987 m!7494668))

(declare-fun m!7494670 () Bool)

(assert (=> b!6737440 m!7494670))

(declare-fun m!7494672 () Bool)

(assert (=> b!6737448 m!7494672))

(declare-fun m!7494674 () Bool)

(assert (=> b!6737448 m!7494674))

(declare-fun m!7494676 () Bool)

(assert (=> b!6737448 m!7494676))

(declare-fun m!7494678 () Bool)

(assert (=> b!6737451 m!7494678))

(declare-fun m!7494680 () Bool)

(assert (=> b!6737451 m!7494680))

(declare-fun m!7494682 () Bool)

(assert (=> b!6737451 m!7494682))

(declare-fun m!7494684 () Bool)

(assert (=> b!6737451 m!7494684))

(declare-fun m!7494686 () Bool)

(assert (=> b!6737451 m!7494686))

(declare-fun m!7494688 () Bool)

(assert (=> b!6737451 m!7494688))

(assert (=> b!6737451 m!7494682))

(assert (=> b!6737451 m!7494688))

(declare-fun m!7494690 () Bool)

(assert (=> b!6737451 m!7494690))

(declare-fun m!7494692 () Bool)

(assert (=> b!6737451 m!7494692))

(assert (=> b!6737451 m!7494682))

(declare-fun m!7494694 () Bool)

(assert (=> b!6737451 m!7494694))

(check-sat (not b!6737431) (not b!6737448) (not b!6737451) (not b!6737437) (not b!6737452) (not b!6737445) (not b!6737443) (not b!6737436) (not b!6737439) (not b!6737434) (not b!6737455) (not b!6737440) tp_is_empty!42383 (not setNonEmpty!45987) (not b!6737435) (not b!6737447) (not b!6737453) (not b!6737441) (not b!6737449) (not b!6737446) (not b!6737430) (not b!6737454) (not start!653456))
(check-sat)
(get-model)

(declare-fun d!2116864 () Bool)

(declare-fun c!1249622 () Bool)

(declare-fun e!4069828 () Bool)

(assert (=> d!2116864 (= c!1249622 e!4069828)))

(declare-fun res!2756111 () Bool)

(assert (=> d!2116864 (=> (not res!2756111) (not e!4069828))))

(assert (=> d!2116864 (= res!2756111 ((_ is Cons!65870) (exprs!6449 lt!2438625)))))

(declare-fun e!4069829 () (InoxSet Context!11898))

(assert (=> d!2116864 (= (derivationStepZipperUp!1719 lt!2438625 (h!72319 s!2326)) e!4069829)))

(declare-fun call!608848 () (InoxSet Context!11898))

(declare-fun b!6737492 () Bool)

(assert (=> b!6737492 (= e!4069829 ((_ map or) call!608848 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 lt!2438625))) (h!72319 s!2326))))))

(declare-fun b!6737493 () Bool)

(declare-fun e!4069827 () (InoxSet Context!11898))

(assert (=> b!6737493 (= e!4069827 call!608848)))

(declare-fun b!6737494 () Bool)

(declare-fun nullable!6552 (Regex!16565) Bool)

(assert (=> b!6737494 (= e!4069828 (nullable!6552 (h!72318 (exprs!6449 lt!2438625))))))

(declare-fun b!6737495 () Bool)

(assert (=> b!6737495 (= e!4069829 e!4069827)))

(declare-fun c!1249623 () Bool)

(assert (=> b!6737495 (= c!1249623 ((_ is Cons!65870) (exprs!6449 lt!2438625)))))

(declare-fun bm!608843 () Bool)

(assert (=> bm!608843 (= call!608848 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 lt!2438625)) (Context!11899 (t!379689 (exprs!6449 lt!2438625))) (h!72319 s!2326)))))

(declare-fun b!6737496 () Bool)

(assert (=> b!6737496 (= e!4069827 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2116864 res!2756111) b!6737494))

(assert (= (and d!2116864 c!1249622) b!6737492))

(assert (= (and d!2116864 (not c!1249622)) b!6737495))

(assert (= (and b!6737495 c!1249623) b!6737493))

(assert (= (and b!6737495 (not c!1249623)) b!6737496))

(assert (= (or b!6737492 b!6737493) bm!608843))

(declare-fun m!7494718 () Bool)

(assert (=> b!6737492 m!7494718))

(declare-fun m!7494720 () Bool)

(assert (=> b!6737494 m!7494720))

(declare-fun m!7494722 () Bool)

(assert (=> bm!608843 m!7494722))

(assert (=> b!6737452 d!2116864))

(declare-fun d!2116876 () Bool)

(declare-fun lambda!378380 () Int)

(declare-fun forall!15765 (List!65994 Int) Bool)

(assert (=> d!2116876 (= (inv!84659 lt!2438637) (forall!15765 (exprs!6449 lt!2438637) lambda!378380))))

(declare-fun bs!1791579 () Bool)

(assert (= bs!1791579 d!2116876))

(declare-fun m!7494724 () Bool)

(assert (=> bs!1791579 m!7494724))

(assert (=> b!6737452 d!2116876))

(declare-fun d!2116878 () Bool)

(declare-fun dynLambda!26280 (Int Context!11898) (InoxSet Context!11898))

(assert (=> d!2116878 (= (flatMap!2046 lt!2438636 lambda!378371) (dynLambda!26280 lambda!378371 lt!2438625))))

(declare-fun lt!2438650 () Unit!159821)

(declare-fun choose!50221 ((InoxSet Context!11898) Context!11898 Int) Unit!159821)

(assert (=> d!2116878 (= lt!2438650 (choose!50221 lt!2438636 lt!2438625 lambda!378371))))

(assert (=> d!2116878 (= lt!2438636 (store ((as const (Array Context!11898 Bool)) false) lt!2438625 true))))

(assert (=> d!2116878 (= (lemmaFlatMapOnSingletonSet!1572 lt!2438636 lt!2438625 lambda!378371) lt!2438650)))

(declare-fun b_lambda!253693 () Bool)

(assert (=> (not b_lambda!253693) (not d!2116878)))

(declare-fun bs!1791580 () Bool)

(assert (= bs!1791580 d!2116878))

(assert (=> bs!1791580 m!7494640))

(declare-fun m!7494726 () Bool)

(assert (=> bs!1791580 m!7494726))

(declare-fun m!7494728 () Bool)

(assert (=> bs!1791580 m!7494728))

(assert (=> bs!1791580 m!7494636))

(assert (=> b!6737452 d!2116878))

(declare-fun d!2116880 () Bool)

(declare-fun choose!50222 ((InoxSet Context!11898) Int) (InoxSet Context!11898))

(assert (=> d!2116880 (= (flatMap!2046 lt!2438636 lambda!378371) (choose!50222 lt!2438636 lambda!378371))))

(declare-fun bs!1791582 () Bool)

(assert (= bs!1791582 d!2116880))

(declare-fun m!7494730 () Bool)

(assert (=> bs!1791582 m!7494730))

(assert (=> b!6737452 d!2116880))

(declare-fun d!2116882 () Bool)

(declare-fun c!1249636 () Bool)

(declare-fun e!4069856 () Bool)

(assert (=> d!2116882 (= c!1249636 e!4069856)))

(declare-fun res!2756131 () Bool)

(assert (=> d!2116882 (=> (not res!2756131) (not e!4069856))))

(assert (=> d!2116882 (= res!2756131 ((_ is Cons!65870) (exprs!6449 lt!2438637)))))

(declare-fun e!4069857 () (InoxSet Context!11898))

(assert (=> d!2116882 (= (derivationStepZipperUp!1719 lt!2438637 (h!72319 s!2326)) e!4069857)))

(declare-fun call!608855 () (InoxSet Context!11898))

(declare-fun b!6737540 () Bool)

(assert (=> b!6737540 (= e!4069857 ((_ map or) call!608855 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 lt!2438637))) (h!72319 s!2326))))))

(declare-fun b!6737541 () Bool)

(declare-fun e!4069855 () (InoxSet Context!11898))

(assert (=> b!6737541 (= e!4069855 call!608855)))

(declare-fun b!6737542 () Bool)

(assert (=> b!6737542 (= e!4069856 (nullable!6552 (h!72318 (exprs!6449 lt!2438637))))))

(declare-fun b!6737543 () Bool)

(assert (=> b!6737543 (= e!4069857 e!4069855)))

(declare-fun c!1249637 () Bool)

(assert (=> b!6737543 (= c!1249637 ((_ is Cons!65870) (exprs!6449 lt!2438637)))))

(declare-fun bm!608850 () Bool)

(assert (=> bm!608850 (= call!608855 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 lt!2438637)) (Context!11899 (t!379689 (exprs!6449 lt!2438637))) (h!72319 s!2326)))))

(declare-fun b!6737544 () Bool)

(assert (=> b!6737544 (= e!4069855 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2116882 res!2756131) b!6737542))

(assert (= (and d!2116882 c!1249636) b!6737540))

(assert (= (and d!2116882 (not c!1249636)) b!6737543))

(assert (= (and b!6737543 c!1249637) b!6737541))

(assert (= (and b!6737543 (not c!1249637)) b!6737544))

(assert (= (or b!6737540 b!6737541) bm!608850))

(declare-fun m!7494732 () Bool)

(assert (=> b!6737540 m!7494732))

(declare-fun m!7494734 () Bool)

(assert (=> b!6737542 m!7494734))

(declare-fun m!7494736 () Bool)

(assert (=> bm!608850 m!7494736))

(assert (=> b!6737452 d!2116882))

(declare-fun d!2116884 () Bool)

(declare-fun lt!2438653 () Regex!16565)

(assert (=> d!2116884 (validRegex!8301 lt!2438653)))

(assert (=> d!2116884 (= lt!2438653 (generalisedUnion!2409 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))))))

(assert (=> d!2116884 (= (unfocusZipper!2307 (Cons!65872 lt!2438628 Nil!65872)) lt!2438653)))

(declare-fun bs!1791585 () Bool)

(assert (= bs!1791585 d!2116884))

(declare-fun m!7494744 () Bool)

(assert (=> bs!1791585 m!7494744))

(declare-fun m!7494746 () Bool)

(assert (=> bs!1791585 m!7494746))

(assert (=> bs!1791585 m!7494746))

(declare-fun m!7494748 () Bool)

(assert (=> bs!1791585 m!7494748))

(assert (=> b!6737443 d!2116884))

(declare-fun bs!1791586 () Bool)

(declare-fun d!2116888 () Bool)

(assert (= bs!1791586 (and d!2116888 d!2116876)))

(declare-fun lambda!378385 () Int)

(assert (=> bs!1791586 (= lambda!378385 lambda!378380)))

(assert (=> d!2116888 (= (inv!84659 (h!72320 zl!343)) (forall!15765 (exprs!6449 (h!72320 zl!343)) lambda!378385))))

(declare-fun bs!1791587 () Bool)

(assert (= bs!1791587 d!2116888))

(declare-fun m!7494750 () Bool)

(assert (=> bs!1791587 m!7494750))

(assert (=> b!6737454 d!2116888))

(declare-fun d!2116890 () Bool)

(assert (=> d!2116890 (= (isEmpty!38210 (t!379691 zl!343)) ((_ is Nil!65872) (t!379691 zl!343)))))

(assert (=> b!6737455 d!2116890))

(declare-fun d!2116892 () Bool)

(declare-fun c!1249649 () Bool)

(assert (=> d!2116892 (= c!1249649 (isEmpty!38209 s!2326))))

(declare-fun e!4069881 () Bool)

(assert (=> d!2116892 (= (matchZipper!2551 lt!2438633 s!2326) e!4069881)))

(declare-fun b!6737591 () Bool)

(declare-fun nullableZipper!2279 ((InoxSet Context!11898)) Bool)

(assert (=> b!6737591 (= e!4069881 (nullableZipper!2279 lt!2438633))))

(declare-fun b!6737592 () Bool)

(declare-fun head!13556 (List!65995) C!33400)

(declare-fun tail!12641 (List!65995) List!65995)

(assert (=> b!6737592 (= e!4069881 (matchZipper!2551 (derivationStepZipper!2509 lt!2438633 (head!13556 s!2326)) (tail!12641 s!2326)))))

(assert (= (and d!2116892 c!1249649) b!6737591))

(assert (= (and d!2116892 (not c!1249649)) b!6737592))

(assert (=> d!2116892 m!7494694))

(declare-fun m!7494764 () Bool)

(assert (=> b!6737591 m!7494764))

(declare-fun m!7494766 () Bool)

(assert (=> b!6737592 m!7494766))

(assert (=> b!6737592 m!7494766))

(declare-fun m!7494768 () Bool)

(assert (=> b!6737592 m!7494768))

(declare-fun m!7494770 () Bool)

(assert (=> b!6737592 m!7494770))

(assert (=> b!6737592 m!7494768))

(assert (=> b!6737592 m!7494770))

(declare-fun m!7494772 () Bool)

(assert (=> b!6737592 m!7494772))

(assert (=> b!6737435 d!2116892))

(declare-fun d!2116896 () Bool)

(declare-fun c!1249650 () Bool)

(assert (=> d!2116896 (= c!1249650 (isEmpty!38209 (t!379690 s!2326)))))

(declare-fun e!4069882 () Bool)

(assert (=> d!2116896 (= (matchZipper!2551 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (t!379690 s!2326)) e!4069882)))

(declare-fun b!6737593 () Bool)

(assert (=> b!6737593 (= e!4069882 (nullableZipper!2279 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326))))))

(declare-fun b!6737594 () Bool)

(assert (=> b!6737594 (= e!4069882 (matchZipper!2551 (derivationStepZipper!2509 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (head!13556 (t!379690 s!2326))) (tail!12641 (t!379690 s!2326))))))

(assert (= (and d!2116896 c!1249650) b!6737593))

(assert (= (and d!2116896 (not c!1249650)) b!6737594))

(declare-fun m!7494774 () Bool)

(assert (=> d!2116896 m!7494774))

(assert (=> b!6737593 m!7494614))

(declare-fun m!7494776 () Bool)

(assert (=> b!6737593 m!7494776))

(declare-fun m!7494778 () Bool)

(assert (=> b!6737594 m!7494778))

(assert (=> b!6737594 m!7494614))

(assert (=> b!6737594 m!7494778))

(declare-fun m!7494780 () Bool)

(assert (=> b!6737594 m!7494780))

(declare-fun m!7494782 () Bool)

(assert (=> b!6737594 m!7494782))

(assert (=> b!6737594 m!7494780))

(assert (=> b!6737594 m!7494782))

(declare-fun m!7494784 () Bool)

(assert (=> b!6737594 m!7494784))

(assert (=> b!6737435 d!2116896))

(declare-fun bs!1791589 () Bool)

(declare-fun d!2116898 () Bool)

(assert (= bs!1791589 (and d!2116898 b!6737448)))

(declare-fun lambda!378388 () Int)

(assert (=> bs!1791589 (= lambda!378388 lambda!378371)))

(assert (=> d!2116898 true))

(assert (=> d!2116898 (= (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (flatMap!2046 lt!2438633 lambda!378388))))

(declare-fun bs!1791590 () Bool)

(assert (= bs!1791590 d!2116898))

(declare-fun m!7494788 () Bool)

(assert (=> bs!1791590 m!7494788))

(assert (=> b!6737435 d!2116898))

(declare-fun d!2116902 () Bool)

(declare-fun e!4069906 () Bool)

(assert (=> d!2116902 e!4069906))

(declare-fun res!2756173 () Bool)

(assert (=> d!2116902 (=> (not res!2756173) (not e!4069906))))

(declare-fun lt!2438662 () List!65996)

(declare-fun noDuplicate!2358 (List!65996) Bool)

(assert (=> d!2116902 (= res!2756173 (noDuplicate!2358 lt!2438662))))

(declare-fun choose!50223 ((InoxSet Context!11898)) List!65996)

(assert (=> d!2116902 (= lt!2438662 (choose!50223 z!1189))))

(assert (=> d!2116902 (= (toList!10349 z!1189) lt!2438662)))

(declare-fun b!6737626 () Bool)

(declare-fun content!12799 (List!65996) (InoxSet Context!11898))

(assert (=> b!6737626 (= e!4069906 (= (content!12799 lt!2438662) z!1189))))

(assert (= (and d!2116902 res!2756173) b!6737626))

(declare-fun m!7494796 () Bool)

(assert (=> d!2116902 m!7494796))

(declare-fun m!7494798 () Bool)

(assert (=> d!2116902 m!7494798))

(declare-fun m!7494800 () Bool)

(assert (=> b!6737626 m!7494800))

(assert (=> b!6737436 d!2116902))

(declare-fun bs!1791592 () Bool)

(declare-fun d!2116908 () Bool)

(assert (= bs!1791592 (and d!2116908 d!2116876)))

(declare-fun lambda!378391 () Int)

(assert (=> bs!1791592 (= lambda!378391 lambda!378380)))

(declare-fun bs!1791594 () Bool)

(assert (= bs!1791594 (and d!2116908 d!2116888)))

(assert (=> bs!1791594 (= lambda!378391 lambda!378385)))

(declare-fun b!6737683 () Bool)

(declare-fun e!4069943 () Bool)

(declare-fun lt!2438671 () Regex!16565)

(declare-fun isEmptyLang!1938 (Regex!16565) Bool)

(assert (=> b!6737683 (= e!4069943 (isEmptyLang!1938 lt!2438671))))

(declare-fun b!6737684 () Bool)

(declare-fun e!4069940 () Regex!16565)

(declare-fun e!4069945 () Regex!16565)

(assert (=> b!6737684 (= e!4069940 e!4069945)))

(declare-fun c!1249683 () Bool)

(assert (=> b!6737684 (= c!1249683 ((_ is Cons!65870) (unfocusZipperList!1986 zl!343)))))

(declare-fun b!6737685 () Bool)

(assert (=> b!6737685 (= e!4069945 EmptyLang!16565)))

(declare-fun b!6737686 () Bool)

(declare-fun e!4069942 () Bool)

(assert (=> b!6737686 (= e!4069943 e!4069942)))

(declare-fun c!1249684 () Bool)

(declare-fun isEmpty!38211 (List!65994) Bool)

(declare-fun tail!12642 (List!65994) List!65994)

(assert (=> b!6737686 (= c!1249684 (isEmpty!38211 (tail!12642 (unfocusZipperList!1986 zl!343))))))

(declare-fun e!4069944 () Bool)

(assert (=> d!2116908 e!4069944))

(declare-fun res!2756185 () Bool)

(assert (=> d!2116908 (=> (not res!2756185) (not e!4069944))))

(assert (=> d!2116908 (= res!2756185 (validRegex!8301 lt!2438671))))

(assert (=> d!2116908 (= lt!2438671 e!4069940)))

(declare-fun c!1249685 () Bool)

(declare-fun e!4069941 () Bool)

(assert (=> d!2116908 (= c!1249685 e!4069941)))

(declare-fun res!2756184 () Bool)

(assert (=> d!2116908 (=> (not res!2756184) (not e!4069941))))

(assert (=> d!2116908 (= res!2756184 ((_ is Cons!65870) (unfocusZipperList!1986 zl!343)))))

(assert (=> d!2116908 (forall!15765 (unfocusZipperList!1986 zl!343) lambda!378391)))

(assert (=> d!2116908 (= (generalisedUnion!2409 (unfocusZipperList!1986 zl!343)) lt!2438671)))

(declare-fun b!6737687 () Bool)

(assert (=> b!6737687 (= e!4069944 e!4069943)))

(declare-fun c!1249682 () Bool)

(assert (=> b!6737687 (= c!1249682 (isEmpty!38211 (unfocusZipperList!1986 zl!343)))))

(declare-fun b!6737688 () Bool)

(assert (=> b!6737688 (= e!4069941 (isEmpty!38211 (t!379689 (unfocusZipperList!1986 zl!343))))))

(declare-fun b!6737689 () Bool)

(declare-fun isUnion!1368 (Regex!16565) Bool)

(assert (=> b!6737689 (= e!4069942 (isUnion!1368 lt!2438671))))

(declare-fun b!6737690 () Bool)

(assert (=> b!6737690 (= e!4069945 (Union!16565 (h!72318 (unfocusZipperList!1986 zl!343)) (generalisedUnion!2409 (t!379689 (unfocusZipperList!1986 zl!343)))))))

(declare-fun b!6737691 () Bool)

(assert (=> b!6737691 (= e!4069940 (h!72318 (unfocusZipperList!1986 zl!343)))))

(declare-fun b!6737692 () Bool)

(declare-fun head!13557 (List!65994) Regex!16565)

(assert (=> b!6737692 (= e!4069942 (= lt!2438671 (head!13557 (unfocusZipperList!1986 zl!343))))))

(assert (= (and d!2116908 res!2756184) b!6737688))

(assert (= (and d!2116908 c!1249685) b!6737691))

(assert (= (and d!2116908 (not c!1249685)) b!6737684))

(assert (= (and b!6737684 c!1249683) b!6737690))

(assert (= (and b!6737684 (not c!1249683)) b!6737685))

(assert (= (and d!2116908 res!2756185) b!6737687))

(assert (= (and b!6737687 c!1249682) b!6737683))

(assert (= (and b!6737687 (not c!1249682)) b!6737686))

(assert (= (and b!6737686 c!1249684) b!6737692))

(assert (= (and b!6737686 (not c!1249684)) b!6737689))

(assert (=> b!6737687 m!7494620))

(declare-fun m!7494832 () Bool)

(assert (=> b!6737687 m!7494832))

(assert (=> b!6737692 m!7494620))

(declare-fun m!7494834 () Bool)

(assert (=> b!6737692 m!7494834))

(declare-fun m!7494836 () Bool)

(assert (=> b!6737690 m!7494836))

(declare-fun m!7494838 () Bool)

(assert (=> b!6737683 m!7494838))

(declare-fun m!7494840 () Bool)

(assert (=> d!2116908 m!7494840))

(assert (=> d!2116908 m!7494620))

(declare-fun m!7494842 () Bool)

(assert (=> d!2116908 m!7494842))

(declare-fun m!7494844 () Bool)

(assert (=> b!6737688 m!7494844))

(assert (=> b!6737686 m!7494620))

(declare-fun m!7494846 () Bool)

(assert (=> b!6737686 m!7494846))

(assert (=> b!6737686 m!7494846))

(declare-fun m!7494848 () Bool)

(assert (=> b!6737686 m!7494848))

(declare-fun m!7494850 () Bool)

(assert (=> b!6737689 m!7494850))

(assert (=> b!6737447 d!2116908))

(declare-fun bs!1791600 () Bool)

(declare-fun d!2116922 () Bool)

(assert (= bs!1791600 (and d!2116922 d!2116876)))

(declare-fun lambda!378397 () Int)

(assert (=> bs!1791600 (= lambda!378397 lambda!378380)))

(declare-fun bs!1791601 () Bool)

(assert (= bs!1791601 (and d!2116922 d!2116888)))

(assert (=> bs!1791601 (= lambda!378397 lambda!378385)))

(declare-fun bs!1791602 () Bool)

(assert (= bs!1791602 (and d!2116922 d!2116908)))

(assert (=> bs!1791602 (= lambda!378397 lambda!378391)))

(declare-fun lt!2438675 () List!65994)

(assert (=> d!2116922 (forall!15765 lt!2438675 lambda!378397)))

(declare-fun e!4069960 () List!65994)

(assert (=> d!2116922 (= lt!2438675 e!4069960)))

(declare-fun c!1249699 () Bool)

(assert (=> d!2116922 (= c!1249699 ((_ is Cons!65872) zl!343))))

(assert (=> d!2116922 (= (unfocusZipperList!1986 zl!343) lt!2438675)))

(declare-fun b!6737720 () Bool)

(assert (=> b!6737720 (= e!4069960 (Cons!65870 (generalisedConcat!2162 (exprs!6449 (h!72320 zl!343))) (unfocusZipperList!1986 (t!379691 zl!343))))))

(declare-fun b!6737721 () Bool)

(assert (=> b!6737721 (= e!4069960 Nil!65870)))

(assert (= (and d!2116922 c!1249699) b!6737720))

(assert (= (and d!2116922 (not c!1249699)) b!6737721))

(declare-fun m!7494874 () Bool)

(assert (=> d!2116922 m!7494874))

(assert (=> b!6737720 m!7494670))

(declare-fun m!7494876 () Bool)

(assert (=> b!6737720 m!7494876))

(assert (=> b!6737447 d!2116922))

(declare-fun d!2116934 () Bool)

(assert (=> d!2116934 (= (flatMap!2046 z!1189 lambda!378371) (choose!50222 z!1189 lambda!378371))))

(declare-fun bs!1791603 () Bool)

(assert (= bs!1791603 d!2116934))

(declare-fun m!7494878 () Bool)

(assert (=> bs!1791603 m!7494878))

(assert (=> b!6737448 d!2116934))

(declare-fun d!2116936 () Bool)

(declare-fun c!1249700 () Bool)

(declare-fun e!4069962 () Bool)

(assert (=> d!2116936 (= c!1249700 e!4069962)))

(declare-fun res!2756189 () Bool)

(assert (=> d!2116936 (=> (not res!2756189) (not e!4069962))))

(assert (=> d!2116936 (= res!2756189 ((_ is Cons!65870) (exprs!6449 (h!72320 zl!343))))))

(declare-fun e!4069963 () (InoxSet Context!11898))

(assert (=> d!2116936 (= (derivationStepZipperUp!1719 (h!72320 zl!343) (h!72319 s!2326)) e!4069963)))

(declare-fun b!6737722 () Bool)

(declare-fun call!608894 () (InoxSet Context!11898))

(assert (=> b!6737722 (= e!4069963 ((_ map or) call!608894 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) (h!72319 s!2326))))))

(declare-fun b!6737723 () Bool)

(declare-fun e!4069961 () (InoxSet Context!11898))

(assert (=> b!6737723 (= e!4069961 call!608894)))

(declare-fun b!6737724 () Bool)

(assert (=> b!6737724 (= e!4069962 (nullable!6552 (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6737725 () Bool)

(assert (=> b!6737725 (= e!4069963 e!4069961)))

(declare-fun c!1249701 () Bool)

(assert (=> b!6737725 (= c!1249701 ((_ is Cons!65870) (exprs!6449 (h!72320 zl!343))))))

(declare-fun bm!608889 () Bool)

(assert (=> bm!608889 (= call!608894 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (h!72320 zl!343))) (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) (h!72319 s!2326)))))

(declare-fun b!6737726 () Bool)

(assert (=> b!6737726 (= e!4069961 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2116936 res!2756189) b!6737724))

(assert (= (and d!2116936 c!1249700) b!6737722))

(assert (= (and d!2116936 (not c!1249700)) b!6737725))

(assert (= (and b!6737725 c!1249701) b!6737723))

(assert (= (and b!6737725 (not c!1249701)) b!6737726))

(assert (= (or b!6737722 b!6737723) bm!608889))

(declare-fun m!7494880 () Bool)

(assert (=> b!6737722 m!7494880))

(declare-fun m!7494882 () Bool)

(assert (=> b!6737724 m!7494882))

(declare-fun m!7494884 () Bool)

(assert (=> bm!608889 m!7494884))

(assert (=> b!6737448 d!2116936))

(declare-fun d!2116938 () Bool)

(assert (=> d!2116938 (= (flatMap!2046 z!1189 lambda!378371) (dynLambda!26280 lambda!378371 (h!72320 zl!343)))))

(declare-fun lt!2438676 () Unit!159821)

(assert (=> d!2116938 (= lt!2438676 (choose!50221 z!1189 (h!72320 zl!343) lambda!378371))))

(assert (=> d!2116938 (= z!1189 (store ((as const (Array Context!11898 Bool)) false) (h!72320 zl!343) true))))

(assert (=> d!2116938 (= (lemmaFlatMapOnSingletonSet!1572 z!1189 (h!72320 zl!343) lambda!378371) lt!2438676)))

(declare-fun b_lambda!253697 () Bool)

(assert (=> (not b_lambda!253697) (not d!2116938)))

(declare-fun bs!1791604 () Bool)

(assert (= bs!1791604 d!2116938))

(assert (=> bs!1791604 m!7494672))

(declare-fun m!7494886 () Bool)

(assert (=> bs!1791604 m!7494886))

(declare-fun m!7494888 () Bool)

(assert (=> bs!1791604 m!7494888))

(declare-fun m!7494890 () Bool)

(assert (=> bs!1791604 m!7494890))

(assert (=> b!6737448 d!2116938))

(declare-fun bm!608896 () Bool)

(declare-fun call!608901 () Bool)

(declare-fun c!1249707 () Bool)

(assert (=> bm!608896 (= call!608901 (validRegex!8301 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))))))

(declare-fun b!6737753 () Bool)

(declare-fun e!4069986 () Bool)

(declare-fun e!4069988 () Bool)

(assert (=> b!6737753 (= e!4069986 e!4069988)))

(declare-fun res!2756211 () Bool)

(assert (=> b!6737753 (=> (not res!2756211) (not e!4069988))))

(assert (=> b!6737753 (= res!2756211 call!608901)))

(declare-fun c!1249706 () Bool)

(declare-fun call!608903 () Bool)

(declare-fun bm!608897 () Bool)

(assert (=> bm!608897 (= call!608903 (validRegex!8301 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))))))

(declare-fun b!6737754 () Bool)

(declare-fun e!4069984 () Bool)

(declare-fun call!608902 () Bool)

(assert (=> b!6737754 (= e!4069984 call!608902)))

(declare-fun b!6737755 () Bool)

(declare-fun e!4069985 () Bool)

(assert (=> b!6737755 (= e!4069985 call!608903)))

(declare-fun b!6737756 () Bool)

(declare-fun e!4069987 () Bool)

(declare-fun e!4069982 () Bool)

(assert (=> b!6737756 (= e!4069987 e!4069982)))

(assert (=> b!6737756 (= c!1249706 ((_ is Star!16565) r!7292))))

(declare-fun b!6737757 () Bool)

(assert (=> b!6737757 (= e!4069988 call!608902)))

(declare-fun b!6737758 () Bool)

(assert (=> b!6737758 (= e!4069982 e!4069985)))

(declare-fun res!2756212 () Bool)

(assert (=> b!6737758 (= res!2756212 (not (nullable!6552 (reg!16894 r!7292))))))

(assert (=> b!6737758 (=> (not res!2756212) (not e!4069985))))

(declare-fun b!6737759 () Bool)

(declare-fun e!4069983 () Bool)

(assert (=> b!6737759 (= e!4069982 e!4069983)))

(assert (=> b!6737759 (= c!1249707 ((_ is Union!16565) r!7292))))

(declare-fun d!2116940 () Bool)

(declare-fun res!2756209 () Bool)

(assert (=> d!2116940 (=> res!2756209 e!4069987)))

(assert (=> d!2116940 (= res!2756209 ((_ is ElementMatch!16565) r!7292))))

(assert (=> d!2116940 (= (validRegex!8301 r!7292) e!4069987)))

(declare-fun bm!608898 () Bool)

(assert (=> bm!608898 (= call!608902 call!608903)))

(declare-fun b!6737760 () Bool)

(declare-fun res!2756210 () Bool)

(assert (=> b!6737760 (=> res!2756210 e!4069986)))

(assert (=> b!6737760 (= res!2756210 (not ((_ is Concat!25410) r!7292)))))

(assert (=> b!6737760 (= e!4069983 e!4069986)))

(declare-fun b!6737761 () Bool)

(declare-fun res!2756208 () Bool)

(assert (=> b!6737761 (=> (not res!2756208) (not e!4069984))))

(assert (=> b!6737761 (= res!2756208 call!608901)))

(assert (=> b!6737761 (= e!4069983 e!4069984)))

(assert (= (and d!2116940 (not res!2756209)) b!6737756))

(assert (= (and b!6737756 c!1249706) b!6737758))

(assert (= (and b!6737756 (not c!1249706)) b!6737759))

(assert (= (and b!6737758 res!2756212) b!6737755))

(assert (= (and b!6737759 c!1249707) b!6737761))

(assert (= (and b!6737759 (not c!1249707)) b!6737760))

(assert (= (and b!6737761 res!2756208) b!6737754))

(assert (= (and b!6737760 (not res!2756210)) b!6737753))

(assert (= (and b!6737753 res!2756211) b!6737757))

(assert (= (or b!6737754 b!6737757) bm!608898))

(assert (= (or b!6737761 b!6737753) bm!608896))

(assert (= (or b!6737755 bm!608898) bm!608897))

(declare-fun m!7494900 () Bool)

(assert (=> bm!608896 m!7494900))

(declare-fun m!7494902 () Bool)

(assert (=> bm!608897 m!7494902))

(declare-fun m!7494904 () Bool)

(assert (=> b!6737758 m!7494904))

(assert (=> start!653456 d!2116940))

(declare-fun bs!1791609 () Bool)

(declare-fun d!2116944 () Bool)

(assert (= bs!1791609 (and d!2116944 d!2116876)))

(declare-fun lambda!378404 () Int)

(assert (=> bs!1791609 (= lambda!378404 lambda!378380)))

(declare-fun bs!1791610 () Bool)

(assert (= bs!1791610 (and d!2116944 d!2116888)))

(assert (=> bs!1791610 (= lambda!378404 lambda!378385)))

(declare-fun bs!1791611 () Bool)

(assert (= bs!1791611 (and d!2116944 d!2116908)))

(assert (=> bs!1791611 (= lambda!378404 lambda!378391)))

(declare-fun bs!1791612 () Bool)

(assert (= bs!1791612 (and d!2116944 d!2116922)))

(assert (=> bs!1791612 (= lambda!378404 lambda!378397)))

(assert (=> d!2116944 (= (inv!84659 setElem!45987) (forall!15765 (exprs!6449 setElem!45987) lambda!378404))))

(declare-fun bs!1791613 () Bool)

(assert (= bs!1791613 d!2116944))

(declare-fun m!7494906 () Bool)

(assert (=> bs!1791613 m!7494906))

(assert (=> setNonEmpty!45987 d!2116944))

(declare-fun d!2116946 () Bool)

(declare-fun lt!2438680 () Regex!16565)

(assert (=> d!2116946 (validRegex!8301 lt!2438680)))

(assert (=> d!2116946 (= lt!2438680 (generalisedUnion!2409 (unfocusZipperList!1986 zl!343)))))

(assert (=> d!2116946 (= (unfocusZipper!2307 zl!343) lt!2438680)))

(declare-fun bs!1791614 () Bool)

(assert (= bs!1791614 d!2116946))

(declare-fun m!7494908 () Bool)

(assert (=> bs!1791614 m!7494908))

(assert (=> bs!1791614 m!7494620))

(assert (=> bs!1791614 m!7494620))

(assert (=> bs!1791614 m!7494622))

(assert (=> b!6737439 d!2116946))

(declare-fun d!2116948 () Bool)

(declare-fun c!1249722 () Bool)

(assert (=> d!2116948 (= c!1249722 (and ((_ is ElementMatch!16565) r!7292) (= (c!1249609 r!7292) (h!72319 s!2326))))))

(declare-fun e!4070014 () (InoxSet Context!11898))

(assert (=> d!2116948 (= (derivationStepZipperDown!1793 r!7292 (Context!11899 Nil!65870) (h!72319 s!2326)) e!4070014)))

(declare-fun bm!608911 () Bool)

(declare-fun call!608917 () (InoxSet Context!11898))

(declare-fun call!608916 () (InoxSet Context!11898))

(assert (=> bm!608911 (= call!608917 call!608916)))

(declare-fun b!6737800 () Bool)

(declare-fun e!4070008 () Bool)

(assert (=> b!6737800 (= e!4070008 (nullable!6552 (regOne!33642 r!7292)))))

(declare-fun b!6737801 () Bool)

(declare-fun e!4070013 () (InoxSet Context!11898))

(declare-fun call!608921 () (InoxSet Context!11898))

(declare-fun call!608919 () (InoxSet Context!11898))

(assert (=> b!6737801 (= e!4070013 ((_ map or) call!608921 call!608919))))

(declare-fun b!6737802 () Bool)

(assert (=> b!6737802 (= e!4070014 (store ((as const (Array Context!11898 Bool)) false) (Context!11899 Nil!65870) true))))

(declare-fun bm!608912 () Bool)

(assert (=> bm!608912 (= call!608916 call!608921)))

(declare-fun b!6737803 () Bool)

(declare-fun e!4070007 () (InoxSet Context!11898))

(assert (=> b!6737803 (= e!4070007 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6737804 () Bool)

(assert (=> b!6737804 (= e!4070014 e!4070013)))

(declare-fun c!1249721 () Bool)

(assert (=> b!6737804 (= c!1249721 ((_ is Union!16565) r!7292))))

(declare-fun c!1249720 () Bool)

(declare-fun bm!608913 () Bool)

(declare-fun call!608920 () List!65994)

(declare-fun c!1249723 () Bool)

(declare-fun $colon$colon!2382 (List!65994 Regex!16565) List!65994)

(assert (=> bm!608913 (= call!608920 ($colon$colon!2382 (exprs!6449 (Context!11899 Nil!65870)) (ite (or c!1249720 c!1249723) (regTwo!33642 r!7292) r!7292)))))

(declare-fun b!6737805 () Bool)

(declare-fun e!4070011 () (InoxSet Context!11898))

(assert (=> b!6737805 (= e!4070011 call!608917)))

(declare-fun b!6737806 () Bool)

(declare-fun e!4070012 () (InoxSet Context!11898))

(assert (=> b!6737806 (= e!4070012 e!4070011)))

(assert (=> b!6737806 (= c!1249723 ((_ is Concat!25410) r!7292))))

(declare-fun bm!608914 () Bool)

(declare-fun call!608918 () List!65994)

(assert (=> bm!608914 (= call!608918 call!608920)))

(declare-fun b!6737807 () Bool)

(assert (=> b!6737807 (= c!1249720 e!4070008)))

(declare-fun res!2756225 () Bool)

(assert (=> b!6737807 (=> (not res!2756225) (not e!4070008))))

(assert (=> b!6737807 (= res!2756225 ((_ is Concat!25410) r!7292))))

(assert (=> b!6737807 (= e!4070013 e!4070012)))

(declare-fun bm!608915 () Bool)

(assert (=> bm!608915 (= call!608921 (derivationStepZipperDown!1793 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292)))) (ite (or c!1249721 c!1249720) (Context!11899 Nil!65870) (Context!11899 call!608918)) (h!72319 s!2326)))))

(declare-fun bm!608916 () Bool)

(assert (=> bm!608916 (= call!608919 (derivationStepZipperDown!1793 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292)) (ite c!1249721 (Context!11899 Nil!65870) (Context!11899 call!608920)) (h!72319 s!2326)))))

(declare-fun b!6737808 () Bool)

(declare-fun c!1249724 () Bool)

(assert (=> b!6737808 (= c!1249724 ((_ is Star!16565) r!7292))))

(assert (=> b!6737808 (= e!4070011 e!4070007)))

(declare-fun b!6737809 () Bool)

(assert (=> b!6737809 (= e!4070012 ((_ map or) call!608919 call!608916))))

(declare-fun b!6737810 () Bool)

(assert (=> b!6737810 (= e!4070007 call!608917)))

(assert (= (and d!2116948 c!1249722) b!6737802))

(assert (= (and d!2116948 (not c!1249722)) b!6737804))

(assert (= (and b!6737804 c!1249721) b!6737801))

(assert (= (and b!6737804 (not c!1249721)) b!6737807))

(assert (= (and b!6737807 res!2756225) b!6737800))

(assert (= (and b!6737807 c!1249720) b!6737809))

(assert (= (and b!6737807 (not c!1249720)) b!6737806))

(assert (= (and b!6737806 c!1249723) b!6737805))

(assert (= (and b!6737806 (not c!1249723)) b!6737808))

(assert (= (and b!6737808 c!1249724) b!6737810))

(assert (= (and b!6737808 (not c!1249724)) b!6737803))

(assert (= (or b!6737805 b!6737810) bm!608914))

(assert (= (or b!6737805 b!6737810) bm!608911))

(assert (= (or b!6737809 bm!608914) bm!608913))

(assert (= (or b!6737809 bm!608911) bm!608912))

(assert (= (or b!6737801 b!6737809) bm!608916))

(assert (= (or b!6737801 bm!608912) bm!608915))

(declare-fun m!7494920 () Bool)

(assert (=> bm!608913 m!7494920))

(declare-fun m!7494922 () Bool)

(assert (=> b!6737800 m!7494922))

(declare-fun m!7494924 () Bool)

(assert (=> b!6737802 m!7494924))

(declare-fun m!7494926 () Bool)

(assert (=> bm!608915 m!7494926))

(declare-fun m!7494928 () Bool)

(assert (=> bm!608916 m!7494928))

(assert (=> b!6737430 d!2116948))

(declare-fun d!2116958 () Bool)

(declare-fun c!1249727 () Bool)

(declare-fun e!4070022 () Bool)

(assert (=> d!2116958 (= c!1249727 e!4070022)))

(declare-fun res!2756236 () Bool)

(assert (=> d!2116958 (=> (not res!2756236) (not e!4070022))))

(assert (=> d!2116958 (= res!2756236 ((_ is Cons!65870) (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))

(declare-fun e!4070023 () (InoxSet Context!11898))

(assert (=> d!2116958 (= (derivationStepZipperUp!1719 (Context!11899 (Cons!65870 r!7292 Nil!65870)) (h!72319 s!2326)) e!4070023)))

(declare-fun b!6737823 () Bool)

(declare-fun call!608922 () (InoxSet Context!11898))

(assert (=> b!6737823 (= e!4070023 ((_ map or) call!608922 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (h!72319 s!2326))))))

(declare-fun b!6737824 () Bool)

(declare-fun e!4070021 () (InoxSet Context!11898))

(assert (=> b!6737824 (= e!4070021 call!608922)))

(declare-fun b!6737825 () Bool)

(assert (=> b!6737825 (= e!4070022 (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))

(declare-fun b!6737826 () Bool)

(assert (=> b!6737826 (= e!4070023 e!4070021)))

(declare-fun c!1249728 () Bool)

(assert (=> b!6737826 (= c!1249728 ((_ is Cons!65870) (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))

(declare-fun bm!608917 () Bool)

(assert (=> bm!608917 (= call!608922 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (h!72319 s!2326)))))

(declare-fun b!6737827 () Bool)

(assert (=> b!6737827 (= e!4070021 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2116958 res!2756236) b!6737825))

(assert (= (and d!2116958 c!1249727) b!6737823))

(assert (= (and d!2116958 (not c!1249727)) b!6737826))

(assert (= (and b!6737826 c!1249728) b!6737824))

(assert (= (and b!6737826 (not c!1249728)) b!6737827))

(assert (= (or b!6737823 b!6737824) bm!608917))

(declare-fun m!7494930 () Bool)

(assert (=> b!6737823 m!7494930))

(declare-fun m!7494932 () Bool)

(assert (=> b!6737825 m!7494932))

(declare-fun m!7494934 () Bool)

(assert (=> bm!608917 m!7494934))

(assert (=> b!6737430 d!2116958))

(declare-fun bs!1791622 () Bool)

(declare-fun d!2116960 () Bool)

(assert (= bs!1791622 (and d!2116960 b!6737448)))

(declare-fun lambda!378411 () Int)

(assert (=> bs!1791622 (= lambda!378411 lambda!378371)))

(declare-fun bs!1791623 () Bool)

(assert (= bs!1791623 (and d!2116960 d!2116898)))

(assert (=> bs!1791623 (= lambda!378411 lambda!378388)))

(assert (=> d!2116960 true))

(assert (=> d!2116960 (= (derivationStepZipper!2509 z!1189 (h!72319 s!2326)) (flatMap!2046 z!1189 lambda!378411))))

(declare-fun bs!1791624 () Bool)

(assert (= bs!1791624 d!2116960))

(declare-fun m!7494936 () Bool)

(assert (=> bs!1791624 m!7494936))

(assert (=> b!6737430 d!2116960))

(declare-fun bs!1791625 () Bool)

(declare-fun d!2116962 () Bool)

(assert (= bs!1791625 (and d!2116962 d!2116922)))

(declare-fun lambda!378417 () Int)

(assert (=> bs!1791625 (= lambda!378417 lambda!378397)))

(declare-fun bs!1791626 () Bool)

(assert (= bs!1791626 (and d!2116962 d!2116908)))

(assert (=> bs!1791626 (= lambda!378417 lambda!378391)))

(declare-fun bs!1791627 () Bool)

(assert (= bs!1791627 (and d!2116962 d!2116944)))

(assert (=> bs!1791627 (= lambda!378417 lambda!378404)))

(declare-fun bs!1791629 () Bool)

(assert (= bs!1791629 (and d!2116962 d!2116888)))

(assert (=> bs!1791629 (= lambda!378417 lambda!378385)))

(declare-fun bs!1791630 () Bool)

(assert (= bs!1791630 (and d!2116962 d!2116876)))

(assert (=> bs!1791630 (= lambda!378417 lambda!378380)))

(declare-fun b!6737861 () Bool)

(declare-fun e!4070047 () Bool)

(declare-fun e!4070046 () Bool)

(assert (=> b!6737861 (= e!4070047 e!4070046)))

(declare-fun c!1249740 () Bool)

(assert (=> b!6737861 (= c!1249740 (isEmpty!38211 (exprs!6449 (h!72320 zl!343))))))

(declare-fun b!6737862 () Bool)

(declare-fun e!4070045 () Bool)

(assert (=> b!6737862 (= e!4070046 e!4070045)))

(declare-fun c!1249741 () Bool)

(assert (=> b!6737862 (= c!1249741 (isEmpty!38211 (tail!12642 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6737863 () Bool)

(declare-fun lt!2438698 () Regex!16565)

(declare-fun isConcat!1453 (Regex!16565) Bool)

(assert (=> b!6737863 (= e!4070045 (isConcat!1453 lt!2438698))))

(declare-fun b!6737864 () Bool)

(assert (=> b!6737864 (= e!4070045 (= lt!2438698 (head!13557 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6737865 () Bool)

(declare-fun e!4070048 () Regex!16565)

(assert (=> b!6737865 (= e!4070048 (h!72318 (exprs!6449 (h!72320 zl!343))))))

(assert (=> d!2116962 e!4070047))

(declare-fun res!2756250 () Bool)

(assert (=> d!2116962 (=> (not res!2756250) (not e!4070047))))

(assert (=> d!2116962 (= res!2756250 (validRegex!8301 lt!2438698))))

(assert (=> d!2116962 (= lt!2438698 e!4070048)))

(declare-fun c!1249742 () Bool)

(declare-fun e!4070044 () Bool)

(assert (=> d!2116962 (= c!1249742 e!4070044)))

(declare-fun res!2756251 () Bool)

(assert (=> d!2116962 (=> (not res!2756251) (not e!4070044))))

(assert (=> d!2116962 (= res!2756251 ((_ is Cons!65870) (exprs!6449 (h!72320 zl!343))))))

(assert (=> d!2116962 (forall!15765 (exprs!6449 (h!72320 zl!343)) lambda!378417)))

(assert (=> d!2116962 (= (generalisedConcat!2162 (exprs!6449 (h!72320 zl!343))) lt!2438698)))

(declare-fun b!6737866 () Bool)

(declare-fun e!4070043 () Regex!16565)

(assert (=> b!6737866 (= e!4070043 (Concat!25410 (h!72318 (exprs!6449 (h!72320 zl!343))) (generalisedConcat!2162 (t!379689 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6737867 () Bool)

(assert (=> b!6737867 (= e!4070044 (isEmpty!38211 (t!379689 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6737868 () Bool)

(declare-fun isEmptyExpr!1930 (Regex!16565) Bool)

(assert (=> b!6737868 (= e!4070046 (isEmptyExpr!1930 lt!2438698))))

(declare-fun b!6737869 () Bool)

(assert (=> b!6737869 (= e!4070043 EmptyExpr!16565)))

(declare-fun b!6737870 () Bool)

(assert (=> b!6737870 (= e!4070048 e!4070043)))

(declare-fun c!1249739 () Bool)

(assert (=> b!6737870 (= c!1249739 ((_ is Cons!65870) (exprs!6449 (h!72320 zl!343))))))

(assert (= (and d!2116962 res!2756251) b!6737867))

(assert (= (and d!2116962 c!1249742) b!6737865))

(assert (= (and d!2116962 (not c!1249742)) b!6737870))

(assert (= (and b!6737870 c!1249739) b!6737866))

(assert (= (and b!6737870 (not c!1249739)) b!6737869))

(assert (= (and d!2116962 res!2756250) b!6737861))

(assert (= (and b!6737861 c!1249740) b!6737868))

(assert (= (and b!6737861 (not c!1249740)) b!6737862))

(assert (= (and b!6737862 c!1249741) b!6737864))

(assert (= (and b!6737862 (not c!1249741)) b!6737863))

(declare-fun m!7494958 () Bool)

(assert (=> b!6737861 m!7494958))

(declare-fun m!7494960 () Bool)

(assert (=> b!6737866 m!7494960))

(declare-fun m!7494962 () Bool)

(assert (=> d!2116962 m!7494962))

(declare-fun m!7494964 () Bool)

(assert (=> d!2116962 m!7494964))

(declare-fun m!7494966 () Bool)

(assert (=> b!6737864 m!7494966))

(declare-fun m!7494968 () Bool)

(assert (=> b!6737862 m!7494968))

(assert (=> b!6737862 m!7494968))

(declare-fun m!7494970 () Bool)

(assert (=> b!6737862 m!7494970))

(declare-fun m!7494972 () Bool)

(assert (=> b!6737868 m!7494972))

(declare-fun m!7494974 () Bool)

(assert (=> b!6737867 m!7494974))

(declare-fun m!7494976 () Bool)

(assert (=> b!6737863 m!7494976))

(assert (=> b!6737440 d!2116962))

(declare-fun d!2116966 () Bool)

(declare-fun isEmpty!38213 (Option!16452) Bool)

(assert (=> d!2116966 (= (isDefined!13155 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326)) (not (isEmpty!38213 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326))))))

(declare-fun bs!1791636 () Bool)

(assert (= bs!1791636 d!2116966))

(assert (=> bs!1791636 m!7494688))

(declare-fun m!7494982 () Bool)

(assert (=> bs!1791636 m!7494982))

(assert (=> b!6737451 d!2116966))

(declare-fun bs!1791639 () Bool)

(declare-fun d!2116970 () Bool)

(assert (= bs!1791639 (and d!2116970 b!6737451)))

(declare-fun lambda!378425 () Int)

(assert (=> bs!1791639 (= lambda!378425 lambda!378368)))

(assert (=> bs!1791639 (not (= lambda!378425 lambda!378369))))

(assert (=> bs!1791639 (not (= lambda!378425 lambda!378370))))

(assert (=> d!2116970 true))

(assert (=> d!2116970 true))

(assert (=> d!2116970 true))

(declare-fun lambda!378426 () Int)

(assert (=> bs!1791639 (not (= lambda!378426 lambda!378368))))

(assert (=> bs!1791639 (not (= lambda!378426 lambda!378369))))

(assert (=> bs!1791639 (= lambda!378426 lambda!378370)))

(declare-fun bs!1791640 () Bool)

(assert (= bs!1791640 d!2116970))

(assert (=> bs!1791640 (not (= lambda!378426 lambda!378425))))

(assert (=> d!2116970 true))

(assert (=> d!2116970 true))

(assert (=> d!2116970 true))

(assert (=> d!2116970 (= (Exists!3633 lambda!378425) (Exists!3633 lambda!378426))))

(declare-fun lt!2438704 () Unit!159821)

(declare-fun choose!50228 (Regex!16565 Regex!16565 List!65995) Unit!159821)

(assert (=> d!2116970 (= lt!2438704 (choose!50228 (reg!16894 r!7292) r!7292 s!2326))))

(assert (=> d!2116970 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2116970 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2160 (reg!16894 r!7292) r!7292 s!2326) lt!2438704)))

(declare-fun m!7495004 () Bool)

(assert (=> bs!1791640 m!7495004))

(declare-fun m!7495006 () Bool)

(assert (=> bs!1791640 m!7495006))

(declare-fun m!7495008 () Bool)

(assert (=> bs!1791640 m!7495008))

(declare-fun m!7495010 () Bool)

(assert (=> bs!1791640 m!7495010))

(assert (=> b!6737451 d!2116970))

(declare-fun d!2116974 () Bool)

(declare-fun choose!50229 (Int) Bool)

(assert (=> d!2116974 (= (Exists!3633 lambda!378369) (choose!50229 lambda!378369))))

(declare-fun bs!1791641 () Bool)

(assert (= bs!1791641 d!2116974))

(declare-fun m!7495012 () Bool)

(assert (=> bs!1791641 m!7495012))

(assert (=> b!6737451 d!2116974))

(declare-fun bs!1791656 () Bool)

(declare-fun d!2116976 () Bool)

(assert (= bs!1791656 (and d!2116976 b!6737451)))

(declare-fun lambda!378436 () Int)

(assert (=> bs!1791656 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378436 lambda!378368))))

(declare-fun bs!1791657 () Bool)

(assert (= bs!1791657 (and d!2116976 d!2116970)))

(assert (=> bs!1791657 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378436 lambda!378425))))

(assert (=> bs!1791656 (not (= lambda!378436 lambda!378369))))

(assert (=> bs!1791657 (not (= lambda!378436 lambda!378426))))

(assert (=> bs!1791656 (not (= lambda!378436 lambda!378370))))

(assert (=> d!2116976 true))

(assert (=> d!2116976 true))

(declare-fun lambda!378439 () Int)

(assert (=> bs!1791656 (not (= lambda!378439 lambda!378368))))

(assert (=> bs!1791657 (not (= lambda!378439 lambda!378425))))

(assert (=> bs!1791657 (not (= lambda!378439 lambda!378426))))

(assert (=> bs!1791656 (not (= lambda!378439 lambda!378370))))

(declare-fun bs!1791658 () Bool)

(assert (= bs!1791658 d!2116976))

(assert (=> bs!1791658 (not (= lambda!378439 lambda!378436))))

(assert (=> bs!1791656 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378439 lambda!378369))))

(assert (=> d!2116976 true))

(assert (=> d!2116976 true))

(assert (=> d!2116976 (= (Exists!3633 lambda!378436) (Exists!3633 lambda!378439))))

(declare-fun lt!2438712 () Unit!159821)

(declare-fun choose!50230 (Regex!16565 List!65995) Unit!159821)

(assert (=> d!2116976 (= lt!2438712 (choose!50230 (reg!16894 r!7292) s!2326))))

(assert (=> d!2116976 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2116976 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!724 (reg!16894 r!7292) s!2326) lt!2438712)))

(declare-fun m!7495060 () Bool)

(assert (=> bs!1791658 m!7495060))

(declare-fun m!7495062 () Bool)

(assert (=> bs!1791658 m!7495062))

(declare-fun m!7495064 () Bool)

(assert (=> bs!1791658 m!7495064))

(assert (=> bs!1791658 m!7495010))

(assert (=> b!6737451 d!2116976))

(declare-fun d!2116996 () Bool)

(assert (=> d!2116996 (= (Exists!3633 lambda!378370) (choose!50229 lambda!378370))))

(declare-fun bs!1791659 () Bool)

(assert (= bs!1791659 d!2116996))

(declare-fun m!7495066 () Bool)

(assert (=> bs!1791659 m!7495066))

(assert (=> b!6737451 d!2116996))

(declare-fun d!2116998 () Bool)

(assert (=> d!2116998 (= (Exists!3633 lambda!378368) (choose!50229 lambda!378368))))

(declare-fun bs!1791660 () Bool)

(assert (= bs!1791660 d!2116998))

(declare-fun m!7495068 () Bool)

(assert (=> bs!1791660 m!7495068))

(assert (=> b!6737451 d!2116998))

(declare-fun d!2117000 () Bool)

(assert (=> d!2117000 (= (isEmpty!38209 s!2326) ((_ is Nil!65871) s!2326))))

(assert (=> b!6737451 d!2117000))

(declare-fun b!6738040 () Bool)

(declare-fun lt!2438722 () Unit!159821)

(declare-fun lt!2438724 () Unit!159821)

(assert (=> b!6738040 (= lt!2438722 lt!2438724)))

(declare-fun ++!14721 (List!65995 List!65995) List!65995)

(assert (=> b!6738040 (= (++!14721 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (t!379690 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2694 (List!65995 C!33400 List!65995 List!65995) Unit!159821)

(assert (=> b!6738040 (= lt!2438724 (lemmaMoveElementToOtherListKeepsConcatEq!2694 Nil!65871 (h!72319 s!2326) (t!379690 s!2326) s!2326))))

(declare-fun e!4070138 () Option!16452)

(assert (=> b!6738040 (= e!4070138 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (t!379690 s!2326) s!2326))))

(declare-fun b!6738041 () Bool)

(declare-fun e!4070137 () Bool)

(assert (=> b!6738041 (= e!4070137 (matchR!8748 r!7292 s!2326))))

(declare-fun b!6738042 () Bool)

(declare-fun e!4070136 () Bool)

(declare-fun lt!2438723 () Option!16452)

(assert (=> b!6738042 (= e!4070136 (not (isDefined!13155 lt!2438723)))))

(declare-fun d!2117002 () Bool)

(assert (=> d!2117002 e!4070136))

(declare-fun res!2756296 () Bool)

(assert (=> d!2117002 (=> res!2756296 e!4070136)))

(declare-fun e!4070140 () Bool)

(assert (=> d!2117002 (= res!2756296 e!4070140)))

(declare-fun res!2756297 () Bool)

(assert (=> d!2117002 (=> (not res!2756297) (not e!4070140))))

(assert (=> d!2117002 (= res!2756297 (isDefined!13155 lt!2438723))))

(declare-fun e!4070139 () Option!16452)

(assert (=> d!2117002 (= lt!2438723 e!4070139)))

(declare-fun c!1249780 () Bool)

(assert (=> d!2117002 (= c!1249780 e!4070137)))

(declare-fun res!2756293 () Bool)

(assert (=> d!2117002 (=> (not res!2756293) (not e!4070137))))

(assert (=> d!2117002 (= res!2756293 (matchR!8748 (reg!16894 r!7292) Nil!65871))))

(assert (=> d!2117002 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2117002 (= (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326) lt!2438723)))

(declare-fun b!6738043 () Bool)

(declare-fun res!2756294 () Bool)

(assert (=> b!6738043 (=> (not res!2756294) (not e!4070140))))

(declare-fun get!22919 (Option!16452) tuple2!67080)

(assert (=> b!6738043 (= res!2756294 (matchR!8748 (reg!16894 r!7292) (_1!36843 (get!22919 lt!2438723))))))

(declare-fun b!6738044 () Bool)

(assert (=> b!6738044 (= e!4070139 e!4070138)))

(declare-fun c!1249781 () Bool)

(assert (=> b!6738044 (= c!1249781 ((_ is Nil!65871) s!2326))))

(declare-fun b!6738045 () Bool)

(assert (=> b!6738045 (= e!4070139 (Some!16451 (tuple2!67081 Nil!65871 s!2326)))))

(declare-fun b!6738046 () Bool)

(assert (=> b!6738046 (= e!4070138 None!16451)))

(declare-fun b!6738047 () Bool)

(assert (=> b!6738047 (= e!4070140 (= (++!14721 (_1!36843 (get!22919 lt!2438723)) (_2!36843 (get!22919 lt!2438723))) s!2326))))

(declare-fun b!6738048 () Bool)

(declare-fun res!2756295 () Bool)

(assert (=> b!6738048 (=> (not res!2756295) (not e!4070140))))

(assert (=> b!6738048 (= res!2756295 (matchR!8748 r!7292 (_2!36843 (get!22919 lt!2438723))))))

(assert (= (and d!2117002 res!2756293) b!6738041))

(assert (= (and d!2117002 c!1249780) b!6738045))

(assert (= (and d!2117002 (not c!1249780)) b!6738044))

(assert (= (and b!6738044 c!1249781) b!6738046))

(assert (= (and b!6738044 (not c!1249781)) b!6738040))

(assert (= (and d!2117002 res!2756297) b!6738043))

(assert (= (and b!6738043 res!2756294) b!6738048))

(assert (= (and b!6738048 res!2756295) b!6738047))

(assert (= (and d!2117002 (not res!2756296)) b!6738042))

(assert (=> b!6738041 m!7494664))

(declare-fun m!7495094 () Bool)

(assert (=> b!6738048 m!7495094))

(declare-fun m!7495096 () Bool)

(assert (=> b!6738048 m!7495096))

(declare-fun m!7495098 () Bool)

(assert (=> b!6738042 m!7495098))

(assert (=> b!6738043 m!7495094))

(declare-fun m!7495100 () Bool)

(assert (=> b!6738043 m!7495100))

(assert (=> b!6738047 m!7495094))

(declare-fun m!7495102 () Bool)

(assert (=> b!6738047 m!7495102))

(declare-fun m!7495104 () Bool)

(assert (=> b!6738040 m!7495104))

(assert (=> b!6738040 m!7495104))

(declare-fun m!7495106 () Bool)

(assert (=> b!6738040 m!7495106))

(declare-fun m!7495108 () Bool)

(assert (=> b!6738040 m!7495108))

(assert (=> b!6738040 m!7495104))

(declare-fun m!7495110 () Bool)

(assert (=> b!6738040 m!7495110))

(assert (=> d!2117002 m!7495098))

(declare-fun m!7495112 () Bool)

(assert (=> d!2117002 m!7495112))

(assert (=> d!2117002 m!7495010))

(assert (=> b!6737451 d!2117002))

(declare-fun bs!1791669 () Bool)

(declare-fun d!2117010 () Bool)

(assert (= bs!1791669 (and d!2117010 b!6737451)))

(declare-fun lambda!378443 () Int)

(assert (=> bs!1791669 (= lambda!378443 lambda!378368)))

(declare-fun bs!1791670 () Bool)

(assert (= bs!1791670 (and d!2117010 d!2116970)))

(assert (=> bs!1791670 (= lambda!378443 lambda!378425)))

(declare-fun bs!1791671 () Bool)

(assert (= bs!1791671 (and d!2117010 d!2116976)))

(assert (=> bs!1791671 (not (= lambda!378443 lambda!378439))))

(assert (=> bs!1791670 (not (= lambda!378443 lambda!378426))))

(assert (=> bs!1791669 (not (= lambda!378443 lambda!378370))))

(assert (=> bs!1791671 (= (= r!7292 (Star!16565 (reg!16894 r!7292))) (= lambda!378443 lambda!378436))))

(assert (=> bs!1791669 (not (= lambda!378443 lambda!378369))))

(assert (=> d!2117010 true))

(assert (=> d!2117010 true))

(assert (=> d!2117010 true))

(assert (=> d!2117010 (= (isDefined!13155 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326)) (Exists!3633 lambda!378443))))

(declare-fun lt!2438727 () Unit!159821)

(declare-fun choose!50231 (Regex!16565 Regex!16565 List!65995) Unit!159821)

(assert (=> d!2117010 (= lt!2438727 (choose!50231 (reg!16894 r!7292) r!7292 s!2326))))

(assert (=> d!2117010 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2117010 (= (lemmaFindConcatSeparationEquivalentToExists!2630 (reg!16894 r!7292) r!7292 s!2326) lt!2438727)))

(declare-fun bs!1791672 () Bool)

(assert (= bs!1791672 d!2117010))

(declare-fun m!7495114 () Bool)

(assert (=> bs!1791672 m!7495114))

(assert (=> bs!1791672 m!7494688))

(declare-fun m!7495116 () Bool)

(assert (=> bs!1791672 m!7495116))

(assert (=> bs!1791672 m!7495010))

(assert (=> bs!1791672 m!7494688))

(assert (=> bs!1791672 m!7494690))

(assert (=> b!6737451 d!2117010))

(declare-fun d!2117012 () Bool)

(declare-fun c!1249784 () Bool)

(assert (=> d!2117012 (= c!1249784 (and ((_ is ElementMatch!16565) (reg!16894 r!7292)) (= (c!1249609 (reg!16894 r!7292)) (h!72319 s!2326))))))

(declare-fun e!4070148 () (InoxSet Context!11898))

(assert (=> d!2117012 (= (derivationStepZipperDown!1793 (reg!16894 r!7292) lt!2438637 (h!72319 s!2326)) e!4070148)))

(declare-fun bm!608919 () Bool)

(declare-fun call!608925 () (InoxSet Context!11898))

(declare-fun call!608924 () (InoxSet Context!11898))

(assert (=> bm!608919 (= call!608925 call!608924)))

(declare-fun b!6738053 () Bool)

(declare-fun e!4070144 () Bool)

(assert (=> b!6738053 (= e!4070144 (nullable!6552 (regOne!33642 (reg!16894 r!7292))))))

(declare-fun b!6738054 () Bool)

(declare-fun e!4070147 () (InoxSet Context!11898))

(declare-fun call!608929 () (InoxSet Context!11898))

(declare-fun call!608927 () (InoxSet Context!11898))

(assert (=> b!6738054 (= e!4070147 ((_ map or) call!608929 call!608927))))

(declare-fun b!6738055 () Bool)

(assert (=> b!6738055 (= e!4070148 (store ((as const (Array Context!11898 Bool)) false) lt!2438637 true))))

(declare-fun bm!608920 () Bool)

(assert (=> bm!608920 (= call!608924 call!608929)))

(declare-fun b!6738056 () Bool)

(declare-fun e!4070143 () (InoxSet Context!11898))

(assert (=> b!6738056 (= e!4070143 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738057 () Bool)

(assert (=> b!6738057 (= e!4070148 e!4070147)))

(declare-fun c!1249783 () Bool)

(assert (=> b!6738057 (= c!1249783 ((_ is Union!16565) (reg!16894 r!7292)))))

(declare-fun c!1249785 () Bool)

(declare-fun bm!608921 () Bool)

(declare-fun c!1249782 () Bool)

(declare-fun call!608928 () List!65994)

(assert (=> bm!608921 (= call!608928 ($colon$colon!2382 (exprs!6449 lt!2438637) (ite (or c!1249782 c!1249785) (regTwo!33642 (reg!16894 r!7292)) (reg!16894 r!7292))))))

(declare-fun b!6738058 () Bool)

(declare-fun e!4070145 () (InoxSet Context!11898))

(assert (=> b!6738058 (= e!4070145 call!608925)))

(declare-fun b!6738059 () Bool)

(declare-fun e!4070146 () (InoxSet Context!11898))

(assert (=> b!6738059 (= e!4070146 e!4070145)))

(assert (=> b!6738059 (= c!1249785 ((_ is Concat!25410) (reg!16894 r!7292)))))

(declare-fun bm!608922 () Bool)

(declare-fun call!608926 () List!65994)

(assert (=> bm!608922 (= call!608926 call!608928)))

(declare-fun b!6738060 () Bool)

(assert (=> b!6738060 (= c!1249782 e!4070144)))

(declare-fun res!2756302 () Bool)

(assert (=> b!6738060 (=> (not res!2756302) (not e!4070144))))

(assert (=> b!6738060 (= res!2756302 ((_ is Concat!25410) (reg!16894 r!7292)))))

(assert (=> b!6738060 (= e!4070147 e!4070146)))

(declare-fun bm!608923 () Bool)

(assert (=> bm!608923 (= call!608929 (derivationStepZipperDown!1793 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292))))) (ite (or c!1249783 c!1249782) lt!2438637 (Context!11899 call!608926)) (h!72319 s!2326)))))

(declare-fun bm!608924 () Bool)

(assert (=> bm!608924 (= call!608927 (derivationStepZipperDown!1793 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292))) (ite c!1249783 lt!2438637 (Context!11899 call!608928)) (h!72319 s!2326)))))

(declare-fun b!6738061 () Bool)

(declare-fun c!1249786 () Bool)

(assert (=> b!6738061 (= c!1249786 ((_ is Star!16565) (reg!16894 r!7292)))))

(assert (=> b!6738061 (= e!4070145 e!4070143)))

(declare-fun b!6738062 () Bool)

(assert (=> b!6738062 (= e!4070146 ((_ map or) call!608927 call!608924))))

(declare-fun b!6738063 () Bool)

(assert (=> b!6738063 (= e!4070143 call!608925)))

(assert (= (and d!2117012 c!1249784) b!6738055))

(assert (= (and d!2117012 (not c!1249784)) b!6738057))

(assert (= (and b!6738057 c!1249783) b!6738054))

(assert (= (and b!6738057 (not c!1249783)) b!6738060))

(assert (= (and b!6738060 res!2756302) b!6738053))

(assert (= (and b!6738060 c!1249782) b!6738062))

(assert (= (and b!6738060 (not c!1249782)) b!6738059))

(assert (= (and b!6738059 c!1249785) b!6738058))

(assert (= (and b!6738059 (not c!1249785)) b!6738061))

(assert (= (and b!6738061 c!1249786) b!6738063))

(assert (= (and b!6738061 (not c!1249786)) b!6738056))

(assert (= (or b!6738058 b!6738063) bm!608922))

(assert (= (or b!6738058 b!6738063) bm!608919))

(assert (= (or b!6738062 bm!608922) bm!608921))

(assert (= (or b!6738062 bm!608919) bm!608920))

(assert (= (or b!6738054 b!6738062) bm!608924))

(assert (= (or b!6738054 bm!608920) bm!608923))

(declare-fun m!7495118 () Bool)

(assert (=> bm!608921 m!7495118))

(declare-fun m!7495120 () Bool)

(assert (=> b!6738053 m!7495120))

(declare-fun m!7495122 () Bool)

(assert (=> b!6738055 m!7495122))

(declare-fun m!7495124 () Bool)

(assert (=> bm!608923 m!7495124))

(declare-fun m!7495126 () Bool)

(assert (=> bm!608924 m!7495126))

(assert (=> b!6737431 d!2117012))

(declare-fun d!2117014 () Bool)

(assert (=> d!2117014 (= (flatMap!2046 lt!2438633 lambda!378371) (choose!50222 lt!2438633 lambda!378371))))

(declare-fun bs!1791673 () Bool)

(assert (= bs!1791673 d!2117014))

(declare-fun m!7495128 () Bool)

(assert (=> bs!1791673 m!7495128))

(assert (=> b!6737431 d!2117014))

(declare-fun d!2117016 () Bool)

(declare-fun c!1249787 () Bool)

(declare-fun e!4070150 () Bool)

(assert (=> d!2117016 (= c!1249787 e!4070150)))

(declare-fun res!2756303 () Bool)

(assert (=> d!2117016 (=> (not res!2756303) (not e!4070150))))

(assert (=> d!2117016 (= res!2756303 ((_ is Cons!65870) (exprs!6449 lt!2438628)))))

(declare-fun e!4070151 () (InoxSet Context!11898))

(assert (=> d!2117016 (= (derivationStepZipperUp!1719 lt!2438628 (h!72319 s!2326)) e!4070151)))

(declare-fun b!6738064 () Bool)

(declare-fun call!608930 () (InoxSet Context!11898))

(assert (=> b!6738064 (= e!4070151 ((_ map or) call!608930 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 lt!2438628))) (h!72319 s!2326))))))

(declare-fun b!6738065 () Bool)

(declare-fun e!4070149 () (InoxSet Context!11898))

(assert (=> b!6738065 (= e!4070149 call!608930)))

(declare-fun b!6738066 () Bool)

(assert (=> b!6738066 (= e!4070150 (nullable!6552 (h!72318 (exprs!6449 lt!2438628))))))

(declare-fun b!6738067 () Bool)

(assert (=> b!6738067 (= e!4070151 e!4070149)))

(declare-fun c!1249788 () Bool)

(assert (=> b!6738067 (= c!1249788 ((_ is Cons!65870) (exprs!6449 lt!2438628)))))

(declare-fun bm!608925 () Bool)

(assert (=> bm!608925 (= call!608930 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 lt!2438628)) (Context!11899 (t!379689 (exprs!6449 lt!2438628))) (h!72319 s!2326)))))

(declare-fun b!6738068 () Bool)

(assert (=> b!6738068 (= e!4070149 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2117016 res!2756303) b!6738066))

(assert (= (and d!2117016 c!1249787) b!6738064))

(assert (= (and d!2117016 (not c!1249787)) b!6738067))

(assert (= (and b!6738067 c!1249788) b!6738065))

(assert (= (and b!6738067 (not c!1249788)) b!6738068))

(assert (= (or b!6738064 b!6738065) bm!608925))

(declare-fun m!7495130 () Bool)

(assert (=> b!6738064 m!7495130))

(declare-fun m!7495132 () Bool)

(assert (=> b!6738066 m!7495132))

(declare-fun m!7495134 () Bool)

(assert (=> bm!608925 m!7495134))

(assert (=> b!6737431 d!2117016))

(declare-fun d!2117018 () Bool)

(assert (=> d!2117018 (= (flatMap!2046 lt!2438633 lambda!378371) (dynLambda!26280 lambda!378371 lt!2438628))))

(declare-fun lt!2438728 () Unit!159821)

(assert (=> d!2117018 (= lt!2438728 (choose!50221 lt!2438633 lt!2438628 lambda!378371))))

(assert (=> d!2117018 (= lt!2438633 (store ((as const (Array Context!11898 Bool)) false) lt!2438628 true))))

(assert (=> d!2117018 (= (lemmaFlatMapOnSingletonSet!1572 lt!2438633 lt!2438628 lambda!378371) lt!2438728)))

(declare-fun b_lambda!253707 () Bool)

(assert (=> (not b_lambda!253707) (not d!2117018)))

(declare-fun bs!1791674 () Bool)

(assert (= bs!1791674 d!2117018))

(assert (=> bs!1791674 m!7494634))

(declare-fun m!7495136 () Bool)

(assert (=> bs!1791674 m!7495136))

(declare-fun m!7495138 () Bool)

(assert (=> bs!1791674 m!7495138))

(assert (=> bs!1791674 m!7494628))

(assert (=> b!6737431 d!2117018))

(declare-fun bs!1791675 () Bool)

(declare-fun b!6738106 () Bool)

(assert (= bs!1791675 (and b!6738106 b!6737451)))

(declare-fun lambda!378448 () Int)

(assert (=> bs!1791675 (not (= lambda!378448 lambda!378368))))

(declare-fun bs!1791676 () Bool)

(assert (= bs!1791676 (and b!6738106 d!2116970)))

(assert (=> bs!1791676 (not (= lambda!378448 lambda!378425))))

(assert (=> bs!1791676 (not (= lambda!378448 lambda!378426))))

(assert (=> bs!1791675 (not (= lambda!378448 lambda!378370))))

(declare-fun bs!1791677 () Bool)

(assert (= bs!1791677 (and b!6738106 d!2116976)))

(assert (=> bs!1791677 (not (= lambda!378448 lambda!378436))))

(assert (=> bs!1791675 (= lambda!378448 lambda!378369)))

(assert (=> bs!1791677 (= (= r!7292 (Star!16565 (reg!16894 r!7292))) (= lambda!378448 lambda!378439))))

(declare-fun bs!1791678 () Bool)

(assert (= bs!1791678 (and b!6738106 d!2117010)))

(assert (=> bs!1791678 (not (= lambda!378448 lambda!378443))))

(assert (=> b!6738106 true))

(assert (=> b!6738106 true))

(declare-fun bs!1791679 () Bool)

(declare-fun b!6738101 () Bool)

(assert (= bs!1791679 (and b!6738101 b!6737451)))

(declare-fun lambda!378449 () Int)

(assert (=> bs!1791679 (not (= lambda!378449 lambda!378368))))

(declare-fun bs!1791680 () Bool)

(assert (= bs!1791680 (and b!6738101 b!6738106)))

(assert (=> bs!1791680 (not (= lambda!378449 lambda!378448))))

(declare-fun bs!1791681 () Bool)

(assert (= bs!1791681 (and b!6738101 d!2116970)))

(assert (=> bs!1791681 (not (= lambda!378449 lambda!378425))))

(assert (=> bs!1791681 (= (and (= (regOne!33642 r!7292) (reg!16894 r!7292)) (= (regTwo!33642 r!7292) r!7292)) (= lambda!378449 lambda!378426))))

(assert (=> bs!1791679 (= (and (= (regOne!33642 r!7292) (reg!16894 r!7292)) (= (regTwo!33642 r!7292) r!7292)) (= lambda!378449 lambda!378370))))

(declare-fun bs!1791682 () Bool)

(assert (= bs!1791682 (and b!6738101 d!2116976)))

(assert (=> bs!1791682 (not (= lambda!378449 lambda!378436))))

(assert (=> bs!1791679 (not (= lambda!378449 lambda!378369))))

(assert (=> bs!1791682 (not (= lambda!378449 lambda!378439))))

(declare-fun bs!1791683 () Bool)

(assert (= bs!1791683 (and b!6738101 d!2117010)))

(assert (=> bs!1791683 (not (= lambda!378449 lambda!378443))))

(assert (=> b!6738101 true))

(assert (=> b!6738101 true))

(declare-fun e!4070172 () Bool)

(declare-fun call!608935 () Bool)

(assert (=> b!6738101 (= e!4070172 call!608935)))

(declare-fun b!6738102 () Bool)

(declare-fun e!4070175 () Bool)

(assert (=> b!6738102 (= e!4070175 (matchRSpec!3666 (regTwo!33643 r!7292) s!2326))))

(declare-fun b!6738103 () Bool)

(declare-fun e!4070170 () Bool)

(declare-fun call!608936 () Bool)

(assert (=> b!6738103 (= e!4070170 call!608936)))

(declare-fun bm!608930 () Bool)

(declare-fun c!1249798 () Bool)

(assert (=> bm!608930 (= call!608935 (Exists!3633 (ite c!1249798 lambda!378448 lambda!378449)))))

(declare-fun b!6738104 () Bool)

(declare-fun c!1249799 () Bool)

(assert (=> b!6738104 (= c!1249799 ((_ is Union!16565) r!7292))))

(declare-fun e!4070171 () Bool)

(declare-fun e!4070176 () Bool)

(assert (=> b!6738104 (= e!4070171 e!4070176)))

(declare-fun b!6738105 () Bool)

(assert (=> b!6738105 (= e!4070176 e!4070172)))

(assert (=> b!6738105 (= c!1249798 ((_ is Star!16565) r!7292))))

(declare-fun e!4070173 () Bool)

(assert (=> b!6738106 (= e!4070173 call!608935)))

(declare-fun b!6738107 () Bool)

(declare-fun res!2756322 () Bool)

(assert (=> b!6738107 (=> res!2756322 e!4070173)))

(assert (=> b!6738107 (= res!2756322 call!608936)))

(assert (=> b!6738107 (= e!4070172 e!4070173)))

(declare-fun b!6738108 () Bool)

(assert (=> b!6738108 (= e!4070176 e!4070175)))

(declare-fun res!2756321 () Bool)

(assert (=> b!6738108 (= res!2756321 (matchRSpec!3666 (regOne!33643 r!7292) s!2326))))

(assert (=> b!6738108 (=> res!2756321 e!4070175)))

(declare-fun b!6738109 () Bool)

(declare-fun e!4070174 () Bool)

(assert (=> b!6738109 (= e!4070170 e!4070174)))

(declare-fun res!2756320 () Bool)

(assert (=> b!6738109 (= res!2756320 (not ((_ is EmptyLang!16565) r!7292)))))

(assert (=> b!6738109 (=> (not res!2756320) (not e!4070174))))

(declare-fun b!6738110 () Bool)

(assert (=> b!6738110 (= e!4070171 (= s!2326 (Cons!65871 (c!1249609 r!7292) Nil!65871)))))

(declare-fun b!6738111 () Bool)

(declare-fun c!1249800 () Bool)

(assert (=> b!6738111 (= c!1249800 ((_ is ElementMatch!16565) r!7292))))

(assert (=> b!6738111 (= e!4070174 e!4070171)))

(declare-fun d!2117020 () Bool)

(declare-fun c!1249797 () Bool)

(assert (=> d!2117020 (= c!1249797 ((_ is EmptyExpr!16565) r!7292))))

(assert (=> d!2117020 (= (matchRSpec!3666 r!7292 s!2326) e!4070170)))

(declare-fun bm!608931 () Bool)

(assert (=> bm!608931 (= call!608936 (isEmpty!38209 s!2326))))

(assert (= (and d!2117020 c!1249797) b!6738103))

(assert (= (and d!2117020 (not c!1249797)) b!6738109))

(assert (= (and b!6738109 res!2756320) b!6738111))

(assert (= (and b!6738111 c!1249800) b!6738110))

(assert (= (and b!6738111 (not c!1249800)) b!6738104))

(assert (= (and b!6738104 c!1249799) b!6738108))

(assert (= (and b!6738104 (not c!1249799)) b!6738105))

(assert (= (and b!6738108 (not res!2756321)) b!6738102))

(assert (= (and b!6738105 c!1249798) b!6738107))

(assert (= (and b!6738105 (not c!1249798)) b!6738101))

(assert (= (and b!6738107 (not res!2756322)) b!6738106))

(assert (= (or b!6738106 b!6738101) bm!608930))

(assert (= (or b!6738103 b!6738107) bm!608931))

(declare-fun m!7495140 () Bool)

(assert (=> b!6738102 m!7495140))

(declare-fun m!7495142 () Bool)

(assert (=> bm!608930 m!7495142))

(declare-fun m!7495144 () Bool)

(assert (=> b!6738108 m!7495144))

(assert (=> bm!608931 m!7494694))

(assert (=> b!6737441 d!2117020))

(declare-fun b!6738140 () Bool)

(declare-fun e!4070194 () Bool)

(declare-fun derivativeStep!5237 (Regex!16565 C!33400) Regex!16565)

(assert (=> b!6738140 (= e!4070194 (matchR!8748 (derivativeStep!5237 r!7292 (head!13556 s!2326)) (tail!12641 s!2326)))))

(declare-fun d!2117022 () Bool)

(declare-fun e!4070192 () Bool)

(assert (=> d!2117022 e!4070192))

(declare-fun c!1249809 () Bool)

(assert (=> d!2117022 (= c!1249809 ((_ is EmptyExpr!16565) r!7292))))

(declare-fun lt!2438731 () Bool)

(assert (=> d!2117022 (= lt!2438731 e!4070194)))

(declare-fun c!1249807 () Bool)

(assert (=> d!2117022 (= c!1249807 (isEmpty!38209 s!2326))))

(assert (=> d!2117022 (validRegex!8301 r!7292)))

(assert (=> d!2117022 (= (matchR!8748 r!7292 s!2326) lt!2438731)))

(declare-fun b!6738141 () Bool)

(declare-fun e!4070197 () Bool)

(assert (=> b!6738141 (= e!4070197 (not lt!2438731))))

(declare-fun b!6738142 () Bool)

(declare-fun res!2756344 () Bool)

(declare-fun e!4070196 () Bool)

(assert (=> b!6738142 (=> res!2756344 e!4070196)))

(declare-fun e!4070191 () Bool)

(assert (=> b!6738142 (= res!2756344 e!4070191)))

(declare-fun res!2756345 () Bool)

(assert (=> b!6738142 (=> (not res!2756345) (not e!4070191))))

(assert (=> b!6738142 (= res!2756345 lt!2438731)))

(declare-fun b!6738143 () Bool)

(declare-fun e!4070195 () Bool)

(assert (=> b!6738143 (= e!4070195 (not (= (head!13556 s!2326) (c!1249609 r!7292))))))

(declare-fun b!6738144 () Bool)

(declare-fun res!2756340 () Bool)

(assert (=> b!6738144 (=> (not res!2756340) (not e!4070191))))

(assert (=> b!6738144 (= res!2756340 (isEmpty!38209 (tail!12641 s!2326)))))

(declare-fun b!6738145 () Bool)

(declare-fun res!2756339 () Bool)

(assert (=> b!6738145 (=> res!2756339 e!4070195)))

(assert (=> b!6738145 (= res!2756339 (not (isEmpty!38209 (tail!12641 s!2326))))))

(declare-fun b!6738146 () Bool)

(assert (=> b!6738146 (= e!4070194 (nullable!6552 r!7292))))

(declare-fun b!6738147 () Bool)

(assert (=> b!6738147 (= e!4070191 (= (head!13556 s!2326) (c!1249609 r!7292)))))

(declare-fun b!6738148 () Bool)

(declare-fun e!4070193 () Bool)

(assert (=> b!6738148 (= e!4070193 e!4070195)))

(declare-fun res!2756341 () Bool)

(assert (=> b!6738148 (=> res!2756341 e!4070195)))

(declare-fun call!608939 () Bool)

(assert (=> b!6738148 (= res!2756341 call!608939)))

(declare-fun b!6738149 () Bool)

(assert (=> b!6738149 (= e!4070192 e!4070197)))

(declare-fun c!1249808 () Bool)

(assert (=> b!6738149 (= c!1249808 ((_ is EmptyLang!16565) r!7292))))

(declare-fun b!6738150 () Bool)

(declare-fun res!2756343 () Bool)

(assert (=> b!6738150 (=> res!2756343 e!4070196)))

(assert (=> b!6738150 (= res!2756343 (not ((_ is ElementMatch!16565) r!7292)))))

(assert (=> b!6738150 (= e!4070197 e!4070196)))

(declare-fun b!6738151 () Bool)

(assert (=> b!6738151 (= e!4070196 e!4070193)))

(declare-fun res!2756342 () Bool)

(assert (=> b!6738151 (=> (not res!2756342) (not e!4070193))))

(assert (=> b!6738151 (= res!2756342 (not lt!2438731))))

(declare-fun b!6738152 () Bool)

(declare-fun res!2756346 () Bool)

(assert (=> b!6738152 (=> (not res!2756346) (not e!4070191))))

(assert (=> b!6738152 (= res!2756346 (not call!608939))))

(declare-fun b!6738153 () Bool)

(assert (=> b!6738153 (= e!4070192 (= lt!2438731 call!608939))))

(declare-fun bm!608934 () Bool)

(assert (=> bm!608934 (= call!608939 (isEmpty!38209 s!2326))))

(assert (= (and d!2117022 c!1249807) b!6738146))

(assert (= (and d!2117022 (not c!1249807)) b!6738140))

(assert (= (and d!2117022 c!1249809) b!6738153))

(assert (= (and d!2117022 (not c!1249809)) b!6738149))

(assert (= (and b!6738149 c!1249808) b!6738141))

(assert (= (and b!6738149 (not c!1249808)) b!6738150))

(assert (= (and b!6738150 (not res!2756343)) b!6738142))

(assert (= (and b!6738142 res!2756345) b!6738152))

(assert (= (and b!6738152 res!2756346) b!6738144))

(assert (= (and b!6738144 res!2756340) b!6738147))

(assert (= (and b!6738142 (not res!2756344)) b!6738151))

(assert (= (and b!6738151 res!2756342) b!6738148))

(assert (= (and b!6738148 (not res!2756341)) b!6738145))

(assert (= (and b!6738145 (not res!2756339)) b!6738143))

(assert (= (or b!6738153 b!6738148 b!6738152) bm!608934))

(assert (=> bm!608934 m!7494694))

(assert (=> b!6738147 m!7494766))

(assert (=> b!6738140 m!7494766))

(assert (=> b!6738140 m!7494766))

(declare-fun m!7495146 () Bool)

(assert (=> b!6738140 m!7495146))

(assert (=> b!6738140 m!7494770))

(assert (=> b!6738140 m!7495146))

(assert (=> b!6738140 m!7494770))

(declare-fun m!7495148 () Bool)

(assert (=> b!6738140 m!7495148))

(assert (=> d!2117022 m!7494694))

(assert (=> d!2117022 m!7494624))

(assert (=> b!6738144 m!7494770))

(assert (=> b!6738144 m!7494770))

(declare-fun m!7495150 () Bool)

(assert (=> b!6738144 m!7495150))

(assert (=> b!6738143 m!7494766))

(declare-fun m!7495152 () Bool)

(assert (=> b!6738146 m!7495152))

(assert (=> b!6738145 m!7494770))

(assert (=> b!6738145 m!7494770))

(assert (=> b!6738145 m!7495150))

(assert (=> b!6737441 d!2117022))

(declare-fun d!2117024 () Bool)

(assert (=> d!2117024 (= (matchR!8748 r!7292 s!2326) (matchRSpec!3666 r!7292 s!2326))))

(declare-fun lt!2438734 () Unit!159821)

(declare-fun choose!50232 (Regex!16565 List!65995) Unit!159821)

(assert (=> d!2117024 (= lt!2438734 (choose!50232 r!7292 s!2326))))

(assert (=> d!2117024 (validRegex!8301 r!7292)))

(assert (=> d!2117024 (= (mainMatchTheorem!3666 r!7292 s!2326) lt!2438734)))

(declare-fun bs!1791684 () Bool)

(assert (= bs!1791684 d!2117024))

(assert (=> bs!1791684 m!7494664))

(assert (=> bs!1791684 m!7494662))

(declare-fun m!7495154 () Bool)

(assert (=> bs!1791684 m!7495154))

(assert (=> bs!1791684 m!7494624))

(assert (=> b!6737441 d!2117024))

(declare-fun b!6738158 () Bool)

(declare-fun e!4070200 () Bool)

(declare-fun tp!1847216 () Bool)

(declare-fun tp!1847217 () Bool)

(assert (=> b!6738158 (= e!4070200 (and tp!1847216 tp!1847217))))

(assert (=> b!6737437 (= tp!1847144 e!4070200)))

(assert (= (and b!6737437 ((_ is Cons!65870) (exprs!6449 setElem!45987))) b!6738158))

(declare-fun b!6738170 () Bool)

(declare-fun e!4070203 () Bool)

(declare-fun tp!1847228 () Bool)

(declare-fun tp!1847230 () Bool)

(assert (=> b!6738170 (= e!4070203 (and tp!1847228 tp!1847230))))

(assert (=> b!6737453 (= tp!1847153 e!4070203)))

(declare-fun b!6738171 () Bool)

(declare-fun tp!1847231 () Bool)

(assert (=> b!6738171 (= e!4070203 tp!1847231)))

(declare-fun b!6738169 () Bool)

(assert (=> b!6738169 (= e!4070203 tp_is_empty!42383)))

(declare-fun b!6738172 () Bool)

(declare-fun tp!1847232 () Bool)

(declare-fun tp!1847229 () Bool)

(assert (=> b!6738172 (= e!4070203 (and tp!1847232 tp!1847229))))

(assert (= (and b!6737453 ((_ is ElementMatch!16565) (regOne!33643 r!7292))) b!6738169))

(assert (= (and b!6737453 ((_ is Concat!25410) (regOne!33643 r!7292))) b!6738170))

(assert (= (and b!6737453 ((_ is Star!16565) (regOne!33643 r!7292))) b!6738171))

(assert (= (and b!6737453 ((_ is Union!16565) (regOne!33643 r!7292))) b!6738172))

(declare-fun b!6738174 () Bool)

(declare-fun e!4070204 () Bool)

(declare-fun tp!1847233 () Bool)

(declare-fun tp!1847235 () Bool)

(assert (=> b!6738174 (= e!4070204 (and tp!1847233 tp!1847235))))

(assert (=> b!6737453 (= tp!1847150 e!4070204)))

(declare-fun b!6738175 () Bool)

(declare-fun tp!1847236 () Bool)

(assert (=> b!6738175 (= e!4070204 tp!1847236)))

(declare-fun b!6738173 () Bool)

(assert (=> b!6738173 (= e!4070204 tp_is_empty!42383)))

(declare-fun b!6738176 () Bool)

(declare-fun tp!1847237 () Bool)

(declare-fun tp!1847234 () Bool)

(assert (=> b!6738176 (= e!4070204 (and tp!1847237 tp!1847234))))

(assert (= (and b!6737453 ((_ is ElementMatch!16565) (regTwo!33643 r!7292))) b!6738173))

(assert (= (and b!6737453 ((_ is Concat!25410) (regTwo!33643 r!7292))) b!6738174))

(assert (= (and b!6737453 ((_ is Star!16565) (regTwo!33643 r!7292))) b!6738175))

(assert (= (and b!6737453 ((_ is Union!16565) (regTwo!33643 r!7292))) b!6738176))

(declare-fun b!6738184 () Bool)

(declare-fun e!4070210 () Bool)

(declare-fun tp!1847242 () Bool)

(assert (=> b!6738184 (= e!4070210 tp!1847242)))

(declare-fun b!6738183 () Bool)

(declare-fun tp!1847243 () Bool)

(declare-fun e!4070209 () Bool)

(assert (=> b!6738183 (= e!4070209 (and (inv!84659 (h!72320 (t!379691 zl!343))) e!4070210 tp!1847243))))

(assert (=> b!6737454 (= tp!1847145 e!4070209)))

(assert (= b!6738183 b!6738184))

(assert (= (and b!6737454 ((_ is Cons!65872) (t!379691 zl!343))) b!6738183))

(declare-fun m!7495156 () Bool)

(assert (=> b!6738183 m!7495156))

(declare-fun b!6738186 () Bool)

(declare-fun e!4070211 () Bool)

(declare-fun tp!1847244 () Bool)

(declare-fun tp!1847246 () Bool)

(assert (=> b!6738186 (= e!4070211 (and tp!1847244 tp!1847246))))

(assert (=> b!6737434 (= tp!1847146 e!4070211)))

(declare-fun b!6738187 () Bool)

(declare-fun tp!1847247 () Bool)

(assert (=> b!6738187 (= e!4070211 tp!1847247)))

(declare-fun b!6738185 () Bool)

(assert (=> b!6738185 (= e!4070211 tp_is_empty!42383)))

(declare-fun b!6738188 () Bool)

(declare-fun tp!1847248 () Bool)

(declare-fun tp!1847245 () Bool)

(assert (=> b!6738188 (= e!4070211 (and tp!1847248 tp!1847245))))

(assert (= (and b!6737434 ((_ is ElementMatch!16565) (reg!16894 r!7292))) b!6738185))

(assert (= (and b!6737434 ((_ is Concat!25410) (reg!16894 r!7292))) b!6738186))

(assert (= (and b!6737434 ((_ is Star!16565) (reg!16894 r!7292))) b!6738187))

(assert (= (and b!6737434 ((_ is Union!16565) (reg!16894 r!7292))) b!6738188))

(declare-fun b!6738190 () Bool)

(declare-fun e!4070212 () Bool)

(declare-fun tp!1847249 () Bool)

(declare-fun tp!1847251 () Bool)

(assert (=> b!6738190 (= e!4070212 (and tp!1847249 tp!1847251))))

(assert (=> b!6737449 (= tp!1847152 e!4070212)))

(declare-fun b!6738191 () Bool)

(declare-fun tp!1847252 () Bool)

(assert (=> b!6738191 (= e!4070212 tp!1847252)))

(declare-fun b!6738189 () Bool)

(assert (=> b!6738189 (= e!4070212 tp_is_empty!42383)))

(declare-fun b!6738192 () Bool)

(declare-fun tp!1847253 () Bool)

(declare-fun tp!1847250 () Bool)

(assert (=> b!6738192 (= e!4070212 (and tp!1847253 tp!1847250))))

(assert (= (and b!6737449 ((_ is ElementMatch!16565) (regOne!33642 r!7292))) b!6738189))

(assert (= (and b!6737449 ((_ is Concat!25410) (regOne!33642 r!7292))) b!6738190))

(assert (= (and b!6737449 ((_ is Star!16565) (regOne!33642 r!7292))) b!6738191))

(assert (= (and b!6737449 ((_ is Union!16565) (regOne!33642 r!7292))) b!6738192))

(declare-fun b!6738194 () Bool)

(declare-fun e!4070213 () Bool)

(declare-fun tp!1847254 () Bool)

(declare-fun tp!1847256 () Bool)

(assert (=> b!6738194 (= e!4070213 (and tp!1847254 tp!1847256))))

(assert (=> b!6737449 (= tp!1847148 e!4070213)))

(declare-fun b!6738195 () Bool)

(declare-fun tp!1847257 () Bool)

(assert (=> b!6738195 (= e!4070213 tp!1847257)))

(declare-fun b!6738193 () Bool)

(assert (=> b!6738193 (= e!4070213 tp_is_empty!42383)))

(declare-fun b!6738196 () Bool)

(declare-fun tp!1847258 () Bool)

(declare-fun tp!1847255 () Bool)

(assert (=> b!6738196 (= e!4070213 (and tp!1847258 tp!1847255))))

(assert (= (and b!6737449 ((_ is ElementMatch!16565) (regTwo!33642 r!7292))) b!6738193))

(assert (= (and b!6737449 ((_ is Concat!25410) (regTwo!33642 r!7292))) b!6738194))

(assert (= (and b!6737449 ((_ is Star!16565) (regTwo!33642 r!7292))) b!6738195))

(assert (= (and b!6737449 ((_ is Union!16565) (regTwo!33642 r!7292))) b!6738196))

(declare-fun condSetEmpty!45993 () Bool)

(assert (=> setNonEmpty!45987 (= condSetEmpty!45993 (= setRest!45987 ((as const (Array Context!11898 Bool)) false)))))

(declare-fun setRes!45993 () Bool)

(assert (=> setNonEmpty!45987 (= tp!1847149 setRes!45993)))

(declare-fun setIsEmpty!45993 () Bool)

(assert (=> setIsEmpty!45993 setRes!45993))

(declare-fun e!4070216 () Bool)

(declare-fun tp!1847264 () Bool)

(declare-fun setElem!45993 () Context!11898)

(declare-fun setNonEmpty!45993 () Bool)

(assert (=> setNonEmpty!45993 (= setRes!45993 (and tp!1847264 (inv!84659 setElem!45993) e!4070216))))

(declare-fun setRest!45993 () (InoxSet Context!11898))

(assert (=> setNonEmpty!45993 (= setRest!45987 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) setElem!45993 true) setRest!45993))))

(declare-fun b!6738201 () Bool)

(declare-fun tp!1847263 () Bool)

(assert (=> b!6738201 (= e!4070216 tp!1847263)))

(assert (= (and setNonEmpty!45987 condSetEmpty!45993) setIsEmpty!45993))

(assert (= (and setNonEmpty!45987 (not condSetEmpty!45993)) setNonEmpty!45993))

(assert (= setNonEmpty!45993 b!6738201))

(declare-fun m!7495158 () Bool)

(assert (=> setNonEmpty!45993 m!7495158))

(declare-fun b!6738202 () Bool)

(declare-fun e!4070217 () Bool)

(declare-fun tp!1847265 () Bool)

(declare-fun tp!1847266 () Bool)

(assert (=> b!6738202 (= e!4070217 (and tp!1847265 tp!1847266))))

(assert (=> b!6737445 (= tp!1847151 e!4070217)))

(assert (= (and b!6737445 ((_ is Cons!65870) (exprs!6449 (h!72320 zl!343)))) b!6738202))

(declare-fun b!6738207 () Bool)

(declare-fun e!4070220 () Bool)

(declare-fun tp!1847269 () Bool)

(assert (=> b!6738207 (= e!4070220 (and tp_is_empty!42383 tp!1847269))))

(assert (=> b!6737446 (= tp!1847147 e!4070220)))

(assert (= (and b!6737446 ((_ is Cons!65871) (t!379690 s!2326))) b!6738207))

(declare-fun b_lambda!253709 () Bool)

(assert (= b_lambda!253697 (or b!6737448 b_lambda!253709)))

(declare-fun bs!1791685 () Bool)

(declare-fun d!2117026 () Bool)

(assert (= bs!1791685 (and d!2117026 b!6737448)))

(assert (=> bs!1791685 (= (dynLambda!26280 lambda!378371 (h!72320 zl!343)) (derivationStepZipperUp!1719 (h!72320 zl!343) (h!72319 s!2326)))))

(assert (=> bs!1791685 m!7494674))

(assert (=> d!2116938 d!2117026))

(declare-fun b_lambda!253711 () Bool)

(assert (= b_lambda!253707 (or b!6737448 b_lambda!253711)))

(declare-fun bs!1791686 () Bool)

(declare-fun d!2117028 () Bool)

(assert (= bs!1791686 (and d!2117028 b!6737448)))

(assert (=> bs!1791686 (= (dynLambda!26280 lambda!378371 lt!2438628) (derivationStepZipperUp!1719 lt!2438628 (h!72319 s!2326)))))

(assert (=> bs!1791686 m!7494630))

(assert (=> d!2117018 d!2117028))

(declare-fun b_lambda!253713 () Bool)

(assert (= b_lambda!253693 (or b!6737448 b_lambda!253713)))

(declare-fun bs!1791687 () Bool)

(declare-fun d!2117030 () Bool)

(assert (= bs!1791687 (and d!2117030 b!6737448)))

(assert (=> bs!1791687 (= (dynLambda!26280 lambda!378371 lt!2438625) (derivationStepZipperUp!1719 lt!2438625 (h!72319 s!2326)))))

(assert (=> bs!1791687 m!7494638))

(assert (=> d!2116878 d!2117030))

(check-sat (not b!6737540) (not b!6737689) (not b!6737692) (not b!6737724) (not b!6738186) (not b!6738187) (not b!6738146) (not b!6737868) (not bm!608921) (not bm!608843) (not b!6737722) (not b!6737492) (not b!6738102) (not b!6738202) (not b!6738183) (not b!6738184) (not b!6738172) (not b!6737867) (not d!2116998) (not b!6737494) (not b!6737626) (not b!6738144) (not d!2116888) (not d!2116922) (not b!6738043) (not d!2117018) (not b!6738171) (not bm!608916) (not d!2116898) (not b!6737866) (not b!6738064) (not b!6737863) (not bm!608897) (not bm!608917) (not b!6738176) (not bm!608930) (not b!6737687) (not b!6737592) (not b!6738145) (not b!6738201) (not b!6737594) (not d!2116960) tp_is_empty!42383 (not d!2116934) (not b!6738196) (not b!6737862) (not b!6737758) (not d!2116876) (not bm!608923) (not bm!608925) (not b!6738143) (not d!2116908) (not d!2117022) (not d!2116878) (not bs!1791685) (not b!6737591) (not d!2116892) (not d!2116944) (not b!6738192) (not b!6738191) (not b!6737861) (not b!6738190) (not bm!608931) (not b!6738175) (not setNonEmpty!45993) (not d!2116996) (not d!2117002) (not b!6738053) (not b!6738041) (not bm!608934) (not b!6738140) (not b!6738048) (not b!6737683) (not d!2116896) (not d!2116884) (not b!6737800) (not b!6738195) (not b!6737720) (not d!2116902) (not b!6737823) (not d!2116946) (not b!6737690) (not d!2117024) (not d!2116970) (not b!6738170) (not b!6737542) (not d!2116966) (not bs!1791687) (not b!6738174) (not b!6737688) (not d!2116938) (not d!2116880) (not d!2116974) (not b!6737686) (not b!6738207) (not b!6737825) (not d!2117010) (not b!6738147) (not b!6738066) (not d!2116976) (not bm!608850) (not b!6738042) (not b!6738047) (not bm!608924) (not b!6738040) (not b!6738108) (not b!6738188) (not d!2116962) (not b_lambda!253711) (not bm!608896) (not bs!1791686) (not b!6737593) (not b_lambda!253713) (not b!6738194) (not b!6737864) (not bm!608889) (not bm!608915) (not b_lambda!253709) (not b!6738158) (not bm!608913) (not d!2117014))
(check-sat)
(get-model)

(declare-fun d!2117032 () Bool)

(declare-fun nullableFct!2465 (Regex!16565) Bool)

(assert (=> d!2117032 (= (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (nullableFct!2465 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))

(declare-fun bs!1791688 () Bool)

(assert (= bs!1791688 d!2117032))

(declare-fun m!7495160 () Bool)

(assert (=> bs!1791688 m!7495160))

(assert (=> b!6737825 d!2117032))

(declare-fun d!2117034 () Bool)

(declare-fun res!2756351 () Bool)

(declare-fun e!4070225 () Bool)

(assert (=> d!2117034 (=> res!2756351 e!4070225)))

(assert (=> d!2117034 (= res!2756351 ((_ is Nil!65872) lt!2438662))))

(assert (=> d!2117034 (= (noDuplicate!2358 lt!2438662) e!4070225)))

(declare-fun b!6738212 () Bool)

(declare-fun e!4070226 () Bool)

(assert (=> b!6738212 (= e!4070225 e!4070226)))

(declare-fun res!2756352 () Bool)

(assert (=> b!6738212 (=> (not res!2756352) (not e!4070226))))

(declare-fun contains!20262 (List!65996 Context!11898) Bool)

(assert (=> b!6738212 (= res!2756352 (not (contains!20262 (t!379691 lt!2438662) (h!72320 lt!2438662))))))

(declare-fun b!6738213 () Bool)

(assert (=> b!6738213 (= e!4070226 (noDuplicate!2358 (t!379691 lt!2438662)))))

(assert (= (and d!2117034 (not res!2756351)) b!6738212))

(assert (= (and b!6738212 res!2756352) b!6738213))

(declare-fun m!7495162 () Bool)

(assert (=> b!6738212 m!7495162))

(declare-fun m!7495164 () Bool)

(assert (=> b!6738213 m!7495164))

(assert (=> d!2116902 d!2117034))

(declare-fun d!2117036 () Bool)

(declare-fun e!4070233 () Bool)

(assert (=> d!2117036 e!4070233))

(declare-fun res!2756357 () Bool)

(assert (=> d!2117036 (=> (not res!2756357) (not e!4070233))))

(declare-fun res!2756358 () List!65996)

(assert (=> d!2117036 (= res!2756357 (noDuplicate!2358 res!2756358))))

(declare-fun e!4070235 () Bool)

(assert (=> d!2117036 e!4070235))

(assert (=> d!2117036 (= (choose!50223 z!1189) res!2756358)))

(declare-fun b!6738221 () Bool)

(declare-fun e!4070234 () Bool)

(declare-fun tp!1847274 () Bool)

(assert (=> b!6738221 (= e!4070234 tp!1847274)))

(declare-fun tp!1847275 () Bool)

(declare-fun b!6738220 () Bool)

(assert (=> b!6738220 (= e!4070235 (and (inv!84659 (h!72320 res!2756358)) e!4070234 tp!1847275))))

(declare-fun b!6738222 () Bool)

(assert (=> b!6738222 (= e!4070233 (= (content!12799 res!2756358) z!1189))))

(assert (= b!6738220 b!6738221))

(assert (= (and d!2117036 ((_ is Cons!65872) res!2756358)) b!6738220))

(assert (= (and d!2117036 res!2756357) b!6738222))

(declare-fun m!7495166 () Bool)

(assert (=> d!2117036 m!7495166))

(declare-fun m!7495168 () Bool)

(assert (=> b!6738220 m!7495168))

(declare-fun m!7495170 () Bool)

(assert (=> b!6738222 m!7495170))

(assert (=> d!2116902 d!2117036))

(assert (=> d!2116938 d!2116934))

(declare-fun d!2117038 () Bool)

(assert (=> d!2117038 (= (flatMap!2046 z!1189 lambda!378371) (dynLambda!26280 lambda!378371 (h!72320 zl!343)))))

(assert (=> d!2117038 true))

(declare-fun _$13!4066 () Unit!159821)

(assert (=> d!2117038 (= (choose!50221 z!1189 (h!72320 zl!343) lambda!378371) _$13!4066)))

(declare-fun b_lambda!253715 () Bool)

(assert (=> (not b_lambda!253715) (not d!2117038)))

(declare-fun bs!1791689 () Bool)

(assert (= bs!1791689 d!2117038))

(assert (=> bs!1791689 m!7494672))

(assert (=> bs!1791689 m!7494886))

(assert (=> d!2116938 d!2117038))

(declare-fun d!2117040 () Bool)

(assert (=> d!2117040 (= (isEmpty!38209 (tail!12641 s!2326)) ((_ is Nil!65871) (tail!12641 s!2326)))))

(assert (=> b!6738145 d!2117040))

(declare-fun d!2117042 () Bool)

(assert (=> d!2117042 (= (tail!12641 s!2326) (t!379690 s!2326))))

(assert (=> b!6738145 d!2117042))

(assert (=> d!2117024 d!2117022))

(assert (=> d!2117024 d!2117020))

(declare-fun d!2117044 () Bool)

(assert (=> d!2117044 (= (matchR!8748 r!7292 s!2326) (matchRSpec!3666 r!7292 s!2326))))

(assert (=> d!2117044 true))

(declare-fun _$88!5495 () Unit!159821)

(assert (=> d!2117044 (= (choose!50232 r!7292 s!2326) _$88!5495)))

(declare-fun bs!1791690 () Bool)

(assert (= bs!1791690 d!2117044))

(assert (=> bs!1791690 m!7494664))

(assert (=> bs!1791690 m!7494662))

(assert (=> d!2117024 d!2117044))

(assert (=> d!2117024 d!2116940))

(declare-fun d!2117046 () Bool)

(declare-fun res!2756363 () Bool)

(declare-fun e!4070240 () Bool)

(assert (=> d!2117046 (=> res!2756363 e!4070240)))

(assert (=> d!2117046 (= res!2756363 ((_ is Nil!65870) (exprs!6449 setElem!45987)))))

(assert (=> d!2117046 (= (forall!15765 (exprs!6449 setElem!45987) lambda!378404) e!4070240)))

(declare-fun b!6738227 () Bool)

(declare-fun e!4070241 () Bool)

(assert (=> b!6738227 (= e!4070240 e!4070241)))

(declare-fun res!2756364 () Bool)

(assert (=> b!6738227 (=> (not res!2756364) (not e!4070241))))

(declare-fun dynLambda!26281 (Int Regex!16565) Bool)

(assert (=> b!6738227 (= res!2756364 (dynLambda!26281 lambda!378404 (h!72318 (exprs!6449 setElem!45987))))))

(declare-fun b!6738228 () Bool)

(assert (=> b!6738228 (= e!4070241 (forall!15765 (t!379689 (exprs!6449 setElem!45987)) lambda!378404))))

(assert (= (and d!2117046 (not res!2756363)) b!6738227))

(assert (= (and b!6738227 res!2756364) b!6738228))

(declare-fun b_lambda!253717 () Bool)

(assert (=> (not b_lambda!253717) (not b!6738227)))

(declare-fun m!7495172 () Bool)

(assert (=> b!6738227 m!7495172))

(declare-fun m!7495174 () Bool)

(assert (=> b!6738228 m!7495174))

(assert (=> d!2116944 d!2117046))

(declare-fun d!2117048 () Bool)

(assert (=> d!2117048 (= (isEmptyExpr!1930 lt!2438698) ((_ is EmptyExpr!16565) lt!2438698))))

(assert (=> b!6737868 d!2117048))

(declare-fun d!2117050 () Bool)

(assert (=> d!2117050 (= (isUnion!1368 lt!2438671) ((_ is Union!16565) lt!2438671))))

(assert (=> b!6737689 d!2117050))

(declare-fun d!2117052 () Bool)

(assert (=> d!2117052 (= (nullable!6552 (h!72318 (exprs!6449 lt!2438625))) (nullableFct!2465 (h!72318 (exprs!6449 lt!2438625))))))

(declare-fun bs!1791691 () Bool)

(assert (= bs!1791691 d!2117052))

(declare-fun m!7495176 () Bool)

(assert (=> bs!1791691 m!7495176))

(assert (=> b!6737494 d!2117052))

(declare-fun d!2117054 () Bool)

(declare-fun c!1249810 () Bool)

(assert (=> d!2117054 (= c!1249810 (isEmpty!38209 (tail!12641 s!2326)))))

(declare-fun e!4070242 () Bool)

(assert (=> d!2117054 (= (matchZipper!2551 (derivationStepZipper!2509 lt!2438633 (head!13556 s!2326)) (tail!12641 s!2326)) e!4070242)))

(declare-fun b!6738229 () Bool)

(assert (=> b!6738229 (= e!4070242 (nullableZipper!2279 (derivationStepZipper!2509 lt!2438633 (head!13556 s!2326))))))

(declare-fun b!6738230 () Bool)

(assert (=> b!6738230 (= e!4070242 (matchZipper!2551 (derivationStepZipper!2509 (derivationStepZipper!2509 lt!2438633 (head!13556 s!2326)) (head!13556 (tail!12641 s!2326))) (tail!12641 (tail!12641 s!2326))))))

(assert (= (and d!2117054 c!1249810) b!6738229))

(assert (= (and d!2117054 (not c!1249810)) b!6738230))

(assert (=> d!2117054 m!7494770))

(assert (=> d!2117054 m!7495150))

(assert (=> b!6738229 m!7494768))

(declare-fun m!7495178 () Bool)

(assert (=> b!6738229 m!7495178))

(assert (=> b!6738230 m!7494770))

(declare-fun m!7495180 () Bool)

(assert (=> b!6738230 m!7495180))

(assert (=> b!6738230 m!7494768))

(assert (=> b!6738230 m!7495180))

(declare-fun m!7495182 () Bool)

(assert (=> b!6738230 m!7495182))

(assert (=> b!6738230 m!7494770))

(declare-fun m!7495184 () Bool)

(assert (=> b!6738230 m!7495184))

(assert (=> b!6738230 m!7495182))

(assert (=> b!6738230 m!7495184))

(declare-fun m!7495186 () Bool)

(assert (=> b!6738230 m!7495186))

(assert (=> b!6737592 d!2117054))

(declare-fun bs!1791692 () Bool)

(declare-fun d!2117056 () Bool)

(assert (= bs!1791692 (and d!2117056 b!6737448)))

(declare-fun lambda!378450 () Int)

(assert (=> bs!1791692 (= (= (head!13556 s!2326) (h!72319 s!2326)) (= lambda!378450 lambda!378371))))

(declare-fun bs!1791693 () Bool)

(assert (= bs!1791693 (and d!2117056 d!2116898)))

(assert (=> bs!1791693 (= (= (head!13556 s!2326) (h!72319 s!2326)) (= lambda!378450 lambda!378388))))

(declare-fun bs!1791694 () Bool)

(assert (= bs!1791694 (and d!2117056 d!2116960)))

(assert (=> bs!1791694 (= (= (head!13556 s!2326) (h!72319 s!2326)) (= lambda!378450 lambda!378411))))

(assert (=> d!2117056 true))

(assert (=> d!2117056 (= (derivationStepZipper!2509 lt!2438633 (head!13556 s!2326)) (flatMap!2046 lt!2438633 lambda!378450))))

(declare-fun bs!1791695 () Bool)

(assert (= bs!1791695 d!2117056))

(declare-fun m!7495188 () Bool)

(assert (=> bs!1791695 m!7495188))

(assert (=> b!6737592 d!2117056))

(declare-fun d!2117058 () Bool)

(assert (=> d!2117058 (= (head!13556 s!2326) (h!72319 s!2326))))

(assert (=> b!6737592 d!2117058))

(assert (=> b!6737592 d!2117042))

(declare-fun d!2117060 () Bool)

(assert (=> d!2117060 (= (head!13557 (exprs!6449 (h!72320 zl!343))) (h!72318 (exprs!6449 (h!72320 zl!343))))))

(assert (=> b!6737864 d!2117060))

(declare-fun d!2117062 () Bool)

(declare-fun c!1249811 () Bool)

(declare-fun e!4070244 () Bool)

(assert (=> d!2117062 (= c!1249811 e!4070244)))

(declare-fun res!2756365 () Bool)

(assert (=> d!2117062 (=> (not res!2756365) (not e!4070244))))

(assert (=> d!2117062 (= res!2756365 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637))))))))

(declare-fun e!4070245 () (InoxSet Context!11898))

(assert (=> d!2117062 (= (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 lt!2438637))) (h!72319 s!2326)) e!4070245)))

(declare-fun b!6738231 () Bool)

(declare-fun call!608940 () (InoxSet Context!11898))

(assert (=> b!6738231 (= e!4070245 ((_ map or) call!608940 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637)))))) (h!72319 s!2326))))))

(declare-fun b!6738232 () Bool)

(declare-fun e!4070243 () (InoxSet Context!11898))

(assert (=> b!6738232 (= e!4070243 call!608940)))

(declare-fun b!6738233 () Bool)

(assert (=> b!6738233 (= e!4070244 (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637)))))))))

(declare-fun b!6738234 () Bool)

(assert (=> b!6738234 (= e!4070245 e!4070243)))

(declare-fun c!1249812 () Bool)

(assert (=> b!6738234 (= c!1249812 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637))))))))

(declare-fun bm!608935 () Bool)

(assert (=> bm!608935 (= call!608940 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637))))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637)))))) (h!72319 s!2326)))))

(declare-fun b!6738235 () Bool)

(assert (=> b!6738235 (= e!4070243 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2117062 res!2756365) b!6738233))

(assert (= (and d!2117062 c!1249811) b!6738231))

(assert (= (and d!2117062 (not c!1249811)) b!6738234))

(assert (= (and b!6738234 c!1249812) b!6738232))

(assert (= (and b!6738234 (not c!1249812)) b!6738235))

(assert (= (or b!6738231 b!6738232) bm!608935))

(declare-fun m!7495190 () Bool)

(assert (=> b!6738231 m!7495190))

(declare-fun m!7495192 () Bool)

(assert (=> b!6738233 m!7495192))

(declare-fun m!7495194 () Bool)

(assert (=> bm!608935 m!7495194))

(assert (=> b!6737540 d!2117062))

(assert (=> bm!608934 d!2117000))

(declare-fun c!1249815 () Bool)

(declare-fun d!2117064 () Bool)

(assert (=> d!2117064 (= c!1249815 (and ((_ is ElementMatch!16565) (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (= (c!1249609 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (h!72319 s!2326))))))

(declare-fun e!4070251 () (InoxSet Context!11898))

(assert (=> d!2117064 (= (derivationStepZipperDown!1793 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292)))) (ite (or c!1249721 c!1249720) (Context!11899 Nil!65870) (Context!11899 call!608918)) (h!72319 s!2326)) e!4070251)))

(declare-fun bm!608936 () Bool)

(declare-fun call!608942 () (InoxSet Context!11898))

(declare-fun call!608941 () (InoxSet Context!11898))

(assert (=> bm!608936 (= call!608942 call!608941)))

(declare-fun e!4070247 () Bool)

(declare-fun b!6738236 () Bool)

(assert (=> b!6738236 (= e!4070247 (nullable!6552 (regOne!33642 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292)))))))))

(declare-fun b!6738237 () Bool)

(declare-fun e!4070250 () (InoxSet Context!11898))

(declare-fun call!608946 () (InoxSet Context!11898))

(declare-fun call!608944 () (InoxSet Context!11898))

(assert (=> b!6738237 (= e!4070250 ((_ map or) call!608946 call!608944))))

(declare-fun b!6738238 () Bool)

(assert (=> b!6738238 (= e!4070251 (store ((as const (Array Context!11898 Bool)) false) (ite (or c!1249721 c!1249720) (Context!11899 Nil!65870) (Context!11899 call!608918)) true))))

(declare-fun bm!608937 () Bool)

(assert (=> bm!608937 (= call!608941 call!608946)))

(declare-fun b!6738239 () Bool)

(declare-fun e!4070246 () (InoxSet Context!11898))

(assert (=> b!6738239 (= e!4070246 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738240 () Bool)

(assert (=> b!6738240 (= e!4070251 e!4070250)))

(declare-fun c!1249814 () Bool)

(assert (=> b!6738240 (= c!1249814 ((_ is Union!16565) (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))))))

(declare-fun bm!608938 () Bool)

(declare-fun c!1249813 () Bool)

(declare-fun c!1249816 () Bool)

(declare-fun call!608945 () List!65994)

(assert (=> bm!608938 (= call!608945 ($colon$colon!2382 (exprs!6449 (ite (or c!1249721 c!1249720) (Context!11899 Nil!65870) (Context!11899 call!608918))) (ite (or c!1249813 c!1249816) (regTwo!33642 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292)))))))))

(declare-fun b!6738241 () Bool)

(declare-fun e!4070248 () (InoxSet Context!11898))

(assert (=> b!6738241 (= e!4070248 call!608942)))

(declare-fun b!6738242 () Bool)

(declare-fun e!4070249 () (InoxSet Context!11898))

(assert (=> b!6738242 (= e!4070249 e!4070248)))

(assert (=> b!6738242 (= c!1249816 ((_ is Concat!25410) (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))))))

(declare-fun bm!608939 () Bool)

(declare-fun call!608943 () List!65994)

(assert (=> bm!608939 (= call!608943 call!608945)))

(declare-fun b!6738243 () Bool)

(assert (=> b!6738243 (= c!1249813 e!4070247)))

(declare-fun res!2756366 () Bool)

(assert (=> b!6738243 (=> (not res!2756366) (not e!4070247))))

(assert (=> b!6738243 (= res!2756366 ((_ is Concat!25410) (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))))))

(assert (=> b!6738243 (= e!4070250 e!4070249)))

(declare-fun bm!608940 () Bool)

(assert (=> bm!608940 (= call!608946 (derivationStepZipperDown!1793 (ite c!1249814 (regOne!33643 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (ite c!1249813 (regTwo!33642 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (ite c!1249816 (regOne!33642 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (reg!16894 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292)))))))) (ite (or c!1249814 c!1249813) (ite (or c!1249721 c!1249720) (Context!11899 Nil!65870) (Context!11899 call!608918)) (Context!11899 call!608943)) (h!72319 s!2326)))))

(declare-fun bm!608941 () Bool)

(assert (=> bm!608941 (= call!608944 (derivationStepZipperDown!1793 (ite c!1249814 (regTwo!33643 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))) (regOne!33642 (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292)))))) (ite c!1249814 (ite (or c!1249721 c!1249720) (Context!11899 Nil!65870) (Context!11899 call!608918)) (Context!11899 call!608945)) (h!72319 s!2326)))))

(declare-fun b!6738244 () Bool)

(declare-fun c!1249817 () Bool)

(assert (=> b!6738244 (= c!1249817 ((_ is Star!16565) (ite c!1249721 (regOne!33643 r!7292) (ite c!1249720 (regTwo!33642 r!7292) (ite c!1249723 (regOne!33642 r!7292) (reg!16894 r!7292))))))))

(assert (=> b!6738244 (= e!4070248 e!4070246)))

(declare-fun b!6738245 () Bool)

(assert (=> b!6738245 (= e!4070249 ((_ map or) call!608944 call!608941))))

(declare-fun b!6738246 () Bool)

(assert (=> b!6738246 (= e!4070246 call!608942)))

(assert (= (and d!2117064 c!1249815) b!6738238))

(assert (= (and d!2117064 (not c!1249815)) b!6738240))

(assert (= (and b!6738240 c!1249814) b!6738237))

(assert (= (and b!6738240 (not c!1249814)) b!6738243))

(assert (= (and b!6738243 res!2756366) b!6738236))

(assert (= (and b!6738243 c!1249813) b!6738245))

(assert (= (and b!6738243 (not c!1249813)) b!6738242))

(assert (= (and b!6738242 c!1249816) b!6738241))

(assert (= (and b!6738242 (not c!1249816)) b!6738244))

(assert (= (and b!6738244 c!1249817) b!6738246))

(assert (= (and b!6738244 (not c!1249817)) b!6738239))

(assert (= (or b!6738241 b!6738246) bm!608939))

(assert (= (or b!6738241 b!6738246) bm!608936))

(assert (= (or b!6738245 bm!608939) bm!608938))

(assert (= (or b!6738245 bm!608936) bm!608937))

(assert (= (or b!6738237 b!6738245) bm!608941))

(assert (= (or b!6738237 bm!608937) bm!608940))

(declare-fun m!7495196 () Bool)

(assert (=> bm!608938 m!7495196))

(declare-fun m!7495198 () Bool)

(assert (=> b!6738236 m!7495198))

(declare-fun m!7495200 () Bool)

(assert (=> b!6738238 m!7495200))

(declare-fun m!7495202 () Bool)

(assert (=> bm!608940 m!7495202))

(declare-fun m!7495204 () Bool)

(assert (=> bm!608941 m!7495204))

(assert (=> bm!608915 d!2117064))

(declare-fun d!2117066 () Bool)

(declare-fun c!1249820 () Bool)

(assert (=> d!2117066 (= c!1249820 (and ((_ is ElementMatch!16565) (h!72318 (exprs!6449 lt!2438637))) (= (c!1249609 (h!72318 (exprs!6449 lt!2438637))) (h!72319 s!2326))))))

(declare-fun e!4070257 () (InoxSet Context!11898))

(assert (=> d!2117066 (= (derivationStepZipperDown!1793 (h!72318 (exprs!6449 lt!2438637)) (Context!11899 (t!379689 (exprs!6449 lt!2438637))) (h!72319 s!2326)) e!4070257)))

(declare-fun bm!608942 () Bool)

(declare-fun call!608948 () (InoxSet Context!11898))

(declare-fun call!608947 () (InoxSet Context!11898))

(assert (=> bm!608942 (= call!608948 call!608947)))

(declare-fun b!6738247 () Bool)

(declare-fun e!4070253 () Bool)

(assert (=> b!6738247 (= e!4070253 (nullable!6552 (regOne!33642 (h!72318 (exprs!6449 lt!2438637)))))))

(declare-fun b!6738248 () Bool)

(declare-fun e!4070256 () (InoxSet Context!11898))

(declare-fun call!608952 () (InoxSet Context!11898))

(declare-fun call!608950 () (InoxSet Context!11898))

(assert (=> b!6738248 (= e!4070256 ((_ map or) call!608952 call!608950))))

(declare-fun b!6738249 () Bool)

(assert (=> b!6738249 (= e!4070257 (store ((as const (Array Context!11898 Bool)) false) (Context!11899 (t!379689 (exprs!6449 lt!2438637))) true))))

(declare-fun bm!608943 () Bool)

(assert (=> bm!608943 (= call!608947 call!608952)))

(declare-fun b!6738250 () Bool)

(declare-fun e!4070252 () (InoxSet Context!11898))

(assert (=> b!6738250 (= e!4070252 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738251 () Bool)

(assert (=> b!6738251 (= e!4070257 e!4070256)))

(declare-fun c!1249819 () Bool)

(assert (=> b!6738251 (= c!1249819 ((_ is Union!16565) (h!72318 (exprs!6449 lt!2438637))))))

(declare-fun c!1249818 () Bool)

(declare-fun c!1249821 () Bool)

(declare-fun call!608951 () List!65994)

(declare-fun bm!608944 () Bool)

(assert (=> bm!608944 (= call!608951 ($colon$colon!2382 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438637)))) (ite (or c!1249818 c!1249821) (regTwo!33642 (h!72318 (exprs!6449 lt!2438637))) (h!72318 (exprs!6449 lt!2438637)))))))

(declare-fun b!6738252 () Bool)

(declare-fun e!4070254 () (InoxSet Context!11898))

(assert (=> b!6738252 (= e!4070254 call!608948)))

(declare-fun b!6738253 () Bool)

(declare-fun e!4070255 () (InoxSet Context!11898))

(assert (=> b!6738253 (= e!4070255 e!4070254)))

(assert (=> b!6738253 (= c!1249821 ((_ is Concat!25410) (h!72318 (exprs!6449 lt!2438637))))))

(declare-fun bm!608945 () Bool)

(declare-fun call!608949 () List!65994)

(assert (=> bm!608945 (= call!608949 call!608951)))

(declare-fun b!6738254 () Bool)

(assert (=> b!6738254 (= c!1249818 e!4070253)))

(declare-fun res!2756367 () Bool)

(assert (=> b!6738254 (=> (not res!2756367) (not e!4070253))))

(assert (=> b!6738254 (= res!2756367 ((_ is Concat!25410) (h!72318 (exprs!6449 lt!2438637))))))

(assert (=> b!6738254 (= e!4070256 e!4070255)))

(declare-fun bm!608946 () Bool)

(assert (=> bm!608946 (= call!608952 (derivationStepZipperDown!1793 (ite c!1249819 (regOne!33643 (h!72318 (exprs!6449 lt!2438637))) (ite c!1249818 (regTwo!33642 (h!72318 (exprs!6449 lt!2438637))) (ite c!1249821 (regOne!33642 (h!72318 (exprs!6449 lt!2438637))) (reg!16894 (h!72318 (exprs!6449 lt!2438637)))))) (ite (or c!1249819 c!1249818) (Context!11899 (t!379689 (exprs!6449 lt!2438637))) (Context!11899 call!608949)) (h!72319 s!2326)))))

(declare-fun bm!608947 () Bool)

(assert (=> bm!608947 (= call!608950 (derivationStepZipperDown!1793 (ite c!1249819 (regTwo!33643 (h!72318 (exprs!6449 lt!2438637))) (regOne!33642 (h!72318 (exprs!6449 lt!2438637)))) (ite c!1249819 (Context!11899 (t!379689 (exprs!6449 lt!2438637))) (Context!11899 call!608951)) (h!72319 s!2326)))))

(declare-fun b!6738255 () Bool)

(declare-fun c!1249822 () Bool)

(assert (=> b!6738255 (= c!1249822 ((_ is Star!16565) (h!72318 (exprs!6449 lt!2438637))))))

(assert (=> b!6738255 (= e!4070254 e!4070252)))

(declare-fun b!6738256 () Bool)

(assert (=> b!6738256 (= e!4070255 ((_ map or) call!608950 call!608947))))

(declare-fun b!6738257 () Bool)

(assert (=> b!6738257 (= e!4070252 call!608948)))

(assert (= (and d!2117066 c!1249820) b!6738249))

(assert (= (and d!2117066 (not c!1249820)) b!6738251))

(assert (= (and b!6738251 c!1249819) b!6738248))

(assert (= (and b!6738251 (not c!1249819)) b!6738254))

(assert (= (and b!6738254 res!2756367) b!6738247))

(assert (= (and b!6738254 c!1249818) b!6738256))

(assert (= (and b!6738254 (not c!1249818)) b!6738253))

(assert (= (and b!6738253 c!1249821) b!6738252))

(assert (= (and b!6738253 (not c!1249821)) b!6738255))

(assert (= (and b!6738255 c!1249822) b!6738257))

(assert (= (and b!6738255 (not c!1249822)) b!6738250))

(assert (= (or b!6738252 b!6738257) bm!608945))

(assert (= (or b!6738252 b!6738257) bm!608942))

(assert (= (or b!6738256 bm!608945) bm!608944))

(assert (= (or b!6738256 bm!608942) bm!608943))

(assert (= (or b!6738248 b!6738256) bm!608947))

(assert (= (or b!6738248 bm!608943) bm!608946))

(declare-fun m!7495206 () Bool)

(assert (=> bm!608944 m!7495206))

(declare-fun m!7495208 () Bool)

(assert (=> b!6738247 m!7495208))

(declare-fun m!7495210 () Bool)

(assert (=> b!6738249 m!7495210))

(declare-fun m!7495212 () Bool)

(assert (=> bm!608946 m!7495212))

(declare-fun m!7495214 () Bool)

(assert (=> bm!608947 m!7495214))

(assert (=> bm!608850 d!2117066))

(assert (=> bs!1791685 d!2116936))

(assert (=> b!6737720 d!2116962))

(declare-fun bs!1791696 () Bool)

(declare-fun d!2117068 () Bool)

(assert (= bs!1791696 (and d!2117068 d!2116962)))

(declare-fun lambda!378451 () Int)

(assert (=> bs!1791696 (= lambda!378451 lambda!378417)))

(declare-fun bs!1791697 () Bool)

(assert (= bs!1791697 (and d!2117068 d!2116922)))

(assert (=> bs!1791697 (= lambda!378451 lambda!378397)))

(declare-fun bs!1791698 () Bool)

(assert (= bs!1791698 (and d!2117068 d!2116908)))

(assert (=> bs!1791698 (= lambda!378451 lambda!378391)))

(declare-fun bs!1791699 () Bool)

(assert (= bs!1791699 (and d!2117068 d!2116944)))

(assert (=> bs!1791699 (= lambda!378451 lambda!378404)))

(declare-fun bs!1791700 () Bool)

(assert (= bs!1791700 (and d!2117068 d!2116888)))

(assert (=> bs!1791700 (= lambda!378451 lambda!378385)))

(declare-fun bs!1791701 () Bool)

(assert (= bs!1791701 (and d!2117068 d!2116876)))

(assert (=> bs!1791701 (= lambda!378451 lambda!378380)))

(declare-fun lt!2438735 () List!65994)

(assert (=> d!2117068 (forall!15765 lt!2438735 lambda!378451)))

(declare-fun e!4070258 () List!65994)

(assert (=> d!2117068 (= lt!2438735 e!4070258)))

(declare-fun c!1249823 () Bool)

(assert (=> d!2117068 (= c!1249823 ((_ is Cons!65872) (t!379691 zl!343)))))

(assert (=> d!2117068 (= (unfocusZipperList!1986 (t!379691 zl!343)) lt!2438735)))

(declare-fun b!6738258 () Bool)

(assert (=> b!6738258 (= e!4070258 (Cons!65870 (generalisedConcat!2162 (exprs!6449 (h!72320 (t!379691 zl!343)))) (unfocusZipperList!1986 (t!379691 (t!379691 zl!343)))))))

(declare-fun b!6738259 () Bool)

(assert (=> b!6738259 (= e!4070258 Nil!65870)))

(assert (= (and d!2117068 c!1249823) b!6738258))

(assert (= (and d!2117068 (not c!1249823)) b!6738259))

(declare-fun m!7495216 () Bool)

(assert (=> d!2117068 m!7495216))

(declare-fun m!7495218 () Bool)

(assert (=> b!6738258 m!7495218))

(declare-fun m!7495220 () Bool)

(assert (=> b!6738258 m!7495220))

(assert (=> b!6737720 d!2117068))

(declare-fun d!2117070 () Bool)

(assert (=> d!2117070 (= (Exists!3633 lambda!378425) (choose!50229 lambda!378425))))

(declare-fun bs!1791702 () Bool)

(assert (= bs!1791702 d!2117070))

(declare-fun m!7495222 () Bool)

(assert (=> bs!1791702 m!7495222))

(assert (=> d!2116970 d!2117070))

(declare-fun d!2117072 () Bool)

(assert (=> d!2117072 (= (Exists!3633 lambda!378426) (choose!50229 lambda!378426))))

(declare-fun bs!1791703 () Bool)

(assert (= bs!1791703 d!2117072))

(declare-fun m!7495224 () Bool)

(assert (=> bs!1791703 m!7495224))

(assert (=> d!2116970 d!2117072))

(declare-fun bs!1791704 () Bool)

(declare-fun d!2117074 () Bool)

(assert (= bs!1791704 (and d!2117074 b!6737451)))

(declare-fun lambda!378456 () Int)

(assert (=> bs!1791704 (= lambda!378456 lambda!378368)))

(declare-fun bs!1791705 () Bool)

(assert (= bs!1791705 (and d!2117074 b!6738106)))

(assert (=> bs!1791705 (not (= lambda!378456 lambda!378448))))

(declare-fun bs!1791706 () Bool)

(assert (= bs!1791706 (and d!2117074 d!2116970)))

(assert (=> bs!1791706 (= lambda!378456 lambda!378425)))

(declare-fun bs!1791707 () Bool)

(assert (= bs!1791707 (and d!2117074 b!6738101)))

(assert (=> bs!1791707 (not (= lambda!378456 lambda!378449))))

(assert (=> bs!1791706 (not (= lambda!378456 lambda!378426))))

(assert (=> bs!1791704 (not (= lambda!378456 lambda!378370))))

(declare-fun bs!1791708 () Bool)

(assert (= bs!1791708 (and d!2117074 d!2116976)))

(assert (=> bs!1791708 (= (= r!7292 (Star!16565 (reg!16894 r!7292))) (= lambda!378456 lambda!378436))))

(assert (=> bs!1791704 (not (= lambda!378456 lambda!378369))))

(assert (=> bs!1791708 (not (= lambda!378456 lambda!378439))))

(declare-fun bs!1791709 () Bool)

(assert (= bs!1791709 (and d!2117074 d!2117010)))

(assert (=> bs!1791709 (= lambda!378456 lambda!378443)))

(assert (=> d!2117074 true))

(assert (=> d!2117074 true))

(assert (=> d!2117074 true))

(declare-fun lambda!378457 () Int)

(assert (=> bs!1791704 (not (= lambda!378457 lambda!378368))))

(assert (=> bs!1791705 (not (= lambda!378457 lambda!378448))))

(assert (=> bs!1791706 (not (= lambda!378457 lambda!378425))))

(assert (=> bs!1791707 (= (and (= (reg!16894 r!7292) (regOne!33642 r!7292)) (= r!7292 (regTwo!33642 r!7292))) (= lambda!378457 lambda!378449))))

(assert (=> bs!1791706 (= lambda!378457 lambda!378426)))

(assert (=> bs!1791704 (= lambda!378457 lambda!378370)))

(declare-fun bs!1791710 () Bool)

(assert (= bs!1791710 d!2117074))

(assert (=> bs!1791710 (not (= lambda!378457 lambda!378456))))

(assert (=> bs!1791708 (not (= lambda!378457 lambda!378436))))

(assert (=> bs!1791704 (not (= lambda!378457 lambda!378369))))

(assert (=> bs!1791708 (not (= lambda!378457 lambda!378439))))

(assert (=> bs!1791709 (not (= lambda!378457 lambda!378443))))

(assert (=> d!2117074 true))

(assert (=> d!2117074 true))

(assert (=> d!2117074 true))

(assert (=> d!2117074 (= (Exists!3633 lambda!378456) (Exists!3633 lambda!378457))))

(assert (=> d!2117074 true))

(declare-fun _$90!2593 () Unit!159821)

(assert (=> d!2117074 (= (choose!50228 (reg!16894 r!7292) r!7292 s!2326) _$90!2593)))

(declare-fun m!7495226 () Bool)

(assert (=> bs!1791710 m!7495226))

(declare-fun m!7495228 () Bool)

(assert (=> bs!1791710 m!7495228))

(assert (=> d!2116970 d!2117074))

(declare-fun bm!608948 () Bool)

(declare-fun call!608953 () Bool)

(declare-fun c!1249825 () Bool)

(assert (=> bm!608948 (= call!608953 (validRegex!8301 (ite c!1249825 (regOne!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))))))

(declare-fun b!6738268 () Bool)

(declare-fun e!4070267 () Bool)

(declare-fun e!4070269 () Bool)

(assert (=> b!6738268 (= e!4070267 e!4070269)))

(declare-fun res!2756379 () Bool)

(assert (=> b!6738268 (=> (not res!2756379) (not e!4070269))))

(assert (=> b!6738268 (= res!2756379 call!608953)))

(declare-fun c!1249824 () Bool)

(declare-fun bm!608949 () Bool)

(declare-fun call!608955 () Bool)

(assert (=> bm!608949 (= call!608955 (validRegex!8301 (ite c!1249824 (reg!16894 (reg!16894 r!7292)) (ite c!1249825 (regTwo!33643 (reg!16894 r!7292)) (regTwo!33642 (reg!16894 r!7292))))))))

(declare-fun b!6738269 () Bool)

(declare-fun e!4070265 () Bool)

(declare-fun call!608954 () Bool)

(assert (=> b!6738269 (= e!4070265 call!608954)))

(declare-fun b!6738270 () Bool)

(declare-fun e!4070266 () Bool)

(assert (=> b!6738270 (= e!4070266 call!608955)))

(declare-fun b!6738271 () Bool)

(declare-fun e!4070268 () Bool)

(declare-fun e!4070263 () Bool)

(assert (=> b!6738271 (= e!4070268 e!4070263)))

(assert (=> b!6738271 (= c!1249824 ((_ is Star!16565) (reg!16894 r!7292)))))

(declare-fun b!6738272 () Bool)

(assert (=> b!6738272 (= e!4070269 call!608954)))

(declare-fun b!6738273 () Bool)

(assert (=> b!6738273 (= e!4070263 e!4070266)))

(declare-fun res!2756380 () Bool)

(assert (=> b!6738273 (= res!2756380 (not (nullable!6552 (reg!16894 (reg!16894 r!7292)))))))

(assert (=> b!6738273 (=> (not res!2756380) (not e!4070266))))

(declare-fun b!6738274 () Bool)

(declare-fun e!4070264 () Bool)

(assert (=> b!6738274 (= e!4070263 e!4070264)))

(assert (=> b!6738274 (= c!1249825 ((_ is Union!16565) (reg!16894 r!7292)))))

(declare-fun d!2117076 () Bool)

(declare-fun res!2756377 () Bool)

(assert (=> d!2117076 (=> res!2756377 e!4070268)))

(assert (=> d!2117076 (= res!2756377 ((_ is ElementMatch!16565) (reg!16894 r!7292)))))

(assert (=> d!2117076 (= (validRegex!8301 (reg!16894 r!7292)) e!4070268)))

(declare-fun bm!608950 () Bool)

(assert (=> bm!608950 (= call!608954 call!608955)))

(declare-fun b!6738275 () Bool)

(declare-fun res!2756378 () Bool)

(assert (=> b!6738275 (=> res!2756378 e!4070267)))

(assert (=> b!6738275 (= res!2756378 (not ((_ is Concat!25410) (reg!16894 r!7292))))))

(assert (=> b!6738275 (= e!4070264 e!4070267)))

(declare-fun b!6738276 () Bool)

(declare-fun res!2756376 () Bool)

(assert (=> b!6738276 (=> (not res!2756376) (not e!4070265))))

(assert (=> b!6738276 (= res!2756376 call!608953)))

(assert (=> b!6738276 (= e!4070264 e!4070265)))

(assert (= (and d!2117076 (not res!2756377)) b!6738271))

(assert (= (and b!6738271 c!1249824) b!6738273))

(assert (= (and b!6738271 (not c!1249824)) b!6738274))

(assert (= (and b!6738273 res!2756380) b!6738270))

(assert (= (and b!6738274 c!1249825) b!6738276))

(assert (= (and b!6738274 (not c!1249825)) b!6738275))

(assert (= (and b!6738276 res!2756376) b!6738269))

(assert (= (and b!6738275 (not res!2756378)) b!6738268))

(assert (= (and b!6738268 res!2756379) b!6738272))

(assert (= (or b!6738269 b!6738272) bm!608950))

(assert (= (or b!6738276 b!6738268) bm!608948))

(assert (= (or b!6738270 bm!608950) bm!608949))

(declare-fun m!7495230 () Bool)

(assert (=> bm!608948 m!7495230))

(declare-fun m!7495232 () Bool)

(assert (=> bm!608949 m!7495232))

(declare-fun m!7495234 () Bool)

(assert (=> b!6738273 m!7495234))

(assert (=> d!2116970 d!2117076))

(declare-fun d!2117078 () Bool)

(assert (=> d!2117078 (= (isDefined!13155 lt!2438723) (not (isEmpty!38213 lt!2438723)))))

(declare-fun bs!1791711 () Bool)

(assert (= bs!1791711 d!2117078))

(declare-fun m!7495236 () Bool)

(assert (=> bs!1791711 m!7495236))

(assert (=> b!6738042 d!2117078))

(declare-fun d!2117080 () Bool)

(assert (=> d!2117080 (= (nullable!6552 r!7292) (nullableFct!2465 r!7292))))

(declare-fun bs!1791712 () Bool)

(assert (= bs!1791712 d!2117080))

(declare-fun m!7495238 () Bool)

(assert (=> bs!1791712 m!7495238))

(assert (=> b!6738146 d!2117080))

(declare-fun d!2117082 () Bool)

(assert (=> d!2117082 (= (Exists!3633 (ite c!1249798 lambda!378448 lambda!378449)) (choose!50229 (ite c!1249798 lambda!378448 lambda!378449)))))

(declare-fun bs!1791713 () Bool)

(assert (= bs!1791713 d!2117082))

(declare-fun m!7495240 () Bool)

(assert (=> bs!1791713 m!7495240))

(assert (=> bm!608930 d!2117082))

(declare-fun d!2117084 () Bool)

(assert (=> d!2117084 (= (flatMap!2046 lt!2438633 lambda!378388) (choose!50222 lt!2438633 lambda!378388))))

(declare-fun bs!1791714 () Bool)

(assert (= bs!1791714 d!2117084))

(declare-fun m!7495242 () Bool)

(assert (=> bs!1791714 m!7495242))

(assert (=> d!2116898 d!2117084))

(declare-fun d!2117086 () Bool)

(declare-fun res!2756381 () Bool)

(declare-fun e!4070270 () Bool)

(assert (=> d!2117086 (=> res!2756381 e!4070270)))

(assert (=> d!2117086 (= res!2756381 ((_ is Nil!65870) (exprs!6449 lt!2438637)))))

(assert (=> d!2117086 (= (forall!15765 (exprs!6449 lt!2438637) lambda!378380) e!4070270)))

(declare-fun b!6738277 () Bool)

(declare-fun e!4070271 () Bool)

(assert (=> b!6738277 (= e!4070270 e!4070271)))

(declare-fun res!2756382 () Bool)

(assert (=> b!6738277 (=> (not res!2756382) (not e!4070271))))

(assert (=> b!6738277 (= res!2756382 (dynLambda!26281 lambda!378380 (h!72318 (exprs!6449 lt!2438637))))))

(declare-fun b!6738278 () Bool)

(assert (=> b!6738278 (= e!4070271 (forall!15765 (t!379689 (exprs!6449 lt!2438637)) lambda!378380))))

(assert (= (and d!2117086 (not res!2756381)) b!6738277))

(assert (= (and b!6738277 res!2756382) b!6738278))

(declare-fun b_lambda!253719 () Bool)

(assert (=> (not b_lambda!253719) (not b!6738277)))

(declare-fun m!7495244 () Bool)

(assert (=> b!6738277 m!7495244))

(declare-fun m!7495246 () Bool)

(assert (=> b!6738278 m!7495246))

(assert (=> d!2116876 d!2117086))

(declare-fun bm!608951 () Bool)

(declare-fun call!608956 () Bool)

(declare-fun c!1249827 () Bool)

(assert (=> bm!608951 (= call!608956 (validRegex!8301 (ite c!1249827 (regOne!33643 lt!2438653) (regOne!33642 lt!2438653))))))

(declare-fun b!6738279 () Bool)

(declare-fun e!4070276 () Bool)

(declare-fun e!4070278 () Bool)

(assert (=> b!6738279 (= e!4070276 e!4070278)))

(declare-fun res!2756386 () Bool)

(assert (=> b!6738279 (=> (not res!2756386) (not e!4070278))))

(assert (=> b!6738279 (= res!2756386 call!608956)))

(declare-fun bm!608952 () Bool)

(declare-fun c!1249826 () Bool)

(declare-fun call!608958 () Bool)

(assert (=> bm!608952 (= call!608958 (validRegex!8301 (ite c!1249826 (reg!16894 lt!2438653) (ite c!1249827 (regTwo!33643 lt!2438653) (regTwo!33642 lt!2438653)))))))

(declare-fun b!6738280 () Bool)

(declare-fun e!4070274 () Bool)

(declare-fun call!608957 () Bool)

(assert (=> b!6738280 (= e!4070274 call!608957)))

(declare-fun b!6738281 () Bool)

(declare-fun e!4070275 () Bool)

(assert (=> b!6738281 (= e!4070275 call!608958)))

(declare-fun b!6738282 () Bool)

(declare-fun e!4070277 () Bool)

(declare-fun e!4070272 () Bool)

(assert (=> b!6738282 (= e!4070277 e!4070272)))

(assert (=> b!6738282 (= c!1249826 ((_ is Star!16565) lt!2438653))))

(declare-fun b!6738283 () Bool)

(assert (=> b!6738283 (= e!4070278 call!608957)))

(declare-fun b!6738284 () Bool)

(assert (=> b!6738284 (= e!4070272 e!4070275)))

(declare-fun res!2756387 () Bool)

(assert (=> b!6738284 (= res!2756387 (not (nullable!6552 (reg!16894 lt!2438653))))))

(assert (=> b!6738284 (=> (not res!2756387) (not e!4070275))))

(declare-fun b!6738285 () Bool)

(declare-fun e!4070273 () Bool)

(assert (=> b!6738285 (= e!4070272 e!4070273)))

(assert (=> b!6738285 (= c!1249827 ((_ is Union!16565) lt!2438653))))

(declare-fun d!2117088 () Bool)

(declare-fun res!2756384 () Bool)

(assert (=> d!2117088 (=> res!2756384 e!4070277)))

(assert (=> d!2117088 (= res!2756384 ((_ is ElementMatch!16565) lt!2438653))))

(assert (=> d!2117088 (= (validRegex!8301 lt!2438653) e!4070277)))

(declare-fun bm!608953 () Bool)

(assert (=> bm!608953 (= call!608957 call!608958)))

(declare-fun b!6738286 () Bool)

(declare-fun res!2756385 () Bool)

(assert (=> b!6738286 (=> res!2756385 e!4070276)))

(assert (=> b!6738286 (= res!2756385 (not ((_ is Concat!25410) lt!2438653)))))

(assert (=> b!6738286 (= e!4070273 e!4070276)))

(declare-fun b!6738287 () Bool)

(declare-fun res!2756383 () Bool)

(assert (=> b!6738287 (=> (not res!2756383) (not e!4070274))))

(assert (=> b!6738287 (= res!2756383 call!608956)))

(assert (=> b!6738287 (= e!4070273 e!4070274)))

(assert (= (and d!2117088 (not res!2756384)) b!6738282))

(assert (= (and b!6738282 c!1249826) b!6738284))

(assert (= (and b!6738282 (not c!1249826)) b!6738285))

(assert (= (and b!6738284 res!2756387) b!6738281))

(assert (= (and b!6738285 c!1249827) b!6738287))

(assert (= (and b!6738285 (not c!1249827)) b!6738286))

(assert (= (and b!6738287 res!2756383) b!6738280))

(assert (= (and b!6738286 (not res!2756385)) b!6738279))

(assert (= (and b!6738279 res!2756386) b!6738283))

(assert (= (or b!6738280 b!6738283) bm!608953))

(assert (= (or b!6738287 b!6738279) bm!608951))

(assert (= (or b!6738281 bm!608953) bm!608952))

(declare-fun m!7495248 () Bool)

(assert (=> bm!608951 m!7495248))

(declare-fun m!7495250 () Bool)

(assert (=> bm!608952 m!7495250))

(declare-fun m!7495252 () Bool)

(assert (=> b!6738284 m!7495252))

(assert (=> d!2116884 d!2117088))

(declare-fun bs!1791715 () Bool)

(declare-fun d!2117090 () Bool)

(assert (= bs!1791715 (and d!2117090 d!2116962)))

(declare-fun lambda!378458 () Int)

(assert (=> bs!1791715 (= lambda!378458 lambda!378417)))

(declare-fun bs!1791716 () Bool)

(assert (= bs!1791716 (and d!2117090 d!2117068)))

(assert (=> bs!1791716 (= lambda!378458 lambda!378451)))

(declare-fun bs!1791717 () Bool)

(assert (= bs!1791717 (and d!2117090 d!2116922)))

(assert (=> bs!1791717 (= lambda!378458 lambda!378397)))

(declare-fun bs!1791718 () Bool)

(assert (= bs!1791718 (and d!2117090 d!2116908)))

(assert (=> bs!1791718 (= lambda!378458 lambda!378391)))

(declare-fun bs!1791719 () Bool)

(assert (= bs!1791719 (and d!2117090 d!2116944)))

(assert (=> bs!1791719 (= lambda!378458 lambda!378404)))

(declare-fun bs!1791720 () Bool)

(assert (= bs!1791720 (and d!2117090 d!2116888)))

(assert (=> bs!1791720 (= lambda!378458 lambda!378385)))

(declare-fun bs!1791721 () Bool)

(assert (= bs!1791721 (and d!2117090 d!2116876)))

(assert (=> bs!1791721 (= lambda!378458 lambda!378380)))

(declare-fun b!6738288 () Bool)

(declare-fun e!4070282 () Bool)

(declare-fun lt!2438736 () Regex!16565)

(assert (=> b!6738288 (= e!4070282 (isEmptyLang!1938 lt!2438736))))

(declare-fun b!6738289 () Bool)

(declare-fun e!4070279 () Regex!16565)

(declare-fun e!4070284 () Regex!16565)

(assert (=> b!6738289 (= e!4070279 e!4070284)))

(declare-fun c!1249829 () Bool)

(assert (=> b!6738289 (= c!1249829 ((_ is Cons!65870) (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))))))

(declare-fun b!6738290 () Bool)

(assert (=> b!6738290 (= e!4070284 EmptyLang!16565)))

(declare-fun b!6738291 () Bool)

(declare-fun e!4070281 () Bool)

(assert (=> b!6738291 (= e!4070282 e!4070281)))

(declare-fun c!1249830 () Bool)

(assert (=> b!6738291 (= c!1249830 (isEmpty!38211 (tail!12642 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872)))))))

(declare-fun e!4070283 () Bool)

(assert (=> d!2117090 e!4070283))

(declare-fun res!2756389 () Bool)

(assert (=> d!2117090 (=> (not res!2756389) (not e!4070283))))

(assert (=> d!2117090 (= res!2756389 (validRegex!8301 lt!2438736))))

(assert (=> d!2117090 (= lt!2438736 e!4070279)))

(declare-fun c!1249831 () Bool)

(declare-fun e!4070280 () Bool)

(assert (=> d!2117090 (= c!1249831 e!4070280)))

(declare-fun res!2756388 () Bool)

(assert (=> d!2117090 (=> (not res!2756388) (not e!4070280))))

(assert (=> d!2117090 (= res!2756388 ((_ is Cons!65870) (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))))))

(assert (=> d!2117090 (forall!15765 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872)) lambda!378458)))

(assert (=> d!2117090 (= (generalisedUnion!2409 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))) lt!2438736)))

(declare-fun b!6738292 () Bool)

(assert (=> b!6738292 (= e!4070283 e!4070282)))

(declare-fun c!1249828 () Bool)

(assert (=> b!6738292 (= c!1249828 (isEmpty!38211 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))))))

(declare-fun b!6738293 () Bool)

(assert (=> b!6738293 (= e!4070280 (isEmpty!38211 (t!379689 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872)))))))

(declare-fun b!6738294 () Bool)

(assert (=> b!6738294 (= e!4070281 (isUnion!1368 lt!2438736))))

(declare-fun b!6738295 () Bool)

(assert (=> b!6738295 (= e!4070284 (Union!16565 (h!72318 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))) (generalisedUnion!2409 (t!379689 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))))))))

(declare-fun b!6738296 () Bool)

(assert (=> b!6738296 (= e!4070279 (h!72318 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872))))))

(declare-fun b!6738297 () Bool)

(assert (=> b!6738297 (= e!4070281 (= lt!2438736 (head!13557 (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872)))))))

(assert (= (and d!2117090 res!2756388) b!6738293))

(assert (= (and d!2117090 c!1249831) b!6738296))

(assert (= (and d!2117090 (not c!1249831)) b!6738289))

(assert (= (and b!6738289 c!1249829) b!6738295))

(assert (= (and b!6738289 (not c!1249829)) b!6738290))

(assert (= (and d!2117090 res!2756389) b!6738292))

(assert (= (and b!6738292 c!1249828) b!6738288))

(assert (= (and b!6738292 (not c!1249828)) b!6738291))

(assert (= (and b!6738291 c!1249830) b!6738297))

(assert (= (and b!6738291 (not c!1249830)) b!6738294))

(assert (=> b!6738292 m!7494746))

(declare-fun m!7495254 () Bool)

(assert (=> b!6738292 m!7495254))

(assert (=> b!6738297 m!7494746))

(declare-fun m!7495256 () Bool)

(assert (=> b!6738297 m!7495256))

(declare-fun m!7495258 () Bool)

(assert (=> b!6738295 m!7495258))

(declare-fun m!7495260 () Bool)

(assert (=> b!6738288 m!7495260))

(declare-fun m!7495262 () Bool)

(assert (=> d!2117090 m!7495262))

(assert (=> d!2117090 m!7494746))

(declare-fun m!7495264 () Bool)

(assert (=> d!2117090 m!7495264))

(declare-fun m!7495266 () Bool)

(assert (=> b!6738293 m!7495266))

(assert (=> b!6738291 m!7494746))

(declare-fun m!7495268 () Bool)

(assert (=> b!6738291 m!7495268))

(assert (=> b!6738291 m!7495268))

(declare-fun m!7495270 () Bool)

(assert (=> b!6738291 m!7495270))

(declare-fun m!7495272 () Bool)

(assert (=> b!6738294 m!7495272))

(assert (=> d!2116884 d!2117090))

(declare-fun bs!1791722 () Bool)

(declare-fun d!2117092 () Bool)

(assert (= bs!1791722 (and d!2117092 d!2117090)))

(declare-fun lambda!378459 () Int)

(assert (=> bs!1791722 (= lambda!378459 lambda!378458)))

(declare-fun bs!1791723 () Bool)

(assert (= bs!1791723 (and d!2117092 d!2116962)))

(assert (=> bs!1791723 (= lambda!378459 lambda!378417)))

(declare-fun bs!1791724 () Bool)

(assert (= bs!1791724 (and d!2117092 d!2117068)))

(assert (=> bs!1791724 (= lambda!378459 lambda!378451)))

(declare-fun bs!1791725 () Bool)

(assert (= bs!1791725 (and d!2117092 d!2116922)))

(assert (=> bs!1791725 (= lambda!378459 lambda!378397)))

(declare-fun bs!1791726 () Bool)

(assert (= bs!1791726 (and d!2117092 d!2116908)))

(assert (=> bs!1791726 (= lambda!378459 lambda!378391)))

(declare-fun bs!1791727 () Bool)

(assert (= bs!1791727 (and d!2117092 d!2116944)))

(assert (=> bs!1791727 (= lambda!378459 lambda!378404)))

(declare-fun bs!1791728 () Bool)

(assert (= bs!1791728 (and d!2117092 d!2116888)))

(assert (=> bs!1791728 (= lambda!378459 lambda!378385)))

(declare-fun bs!1791729 () Bool)

(assert (= bs!1791729 (and d!2117092 d!2116876)))

(assert (=> bs!1791729 (= lambda!378459 lambda!378380)))

(declare-fun lt!2438737 () List!65994)

(assert (=> d!2117092 (forall!15765 lt!2438737 lambda!378459)))

(declare-fun e!4070285 () List!65994)

(assert (=> d!2117092 (= lt!2438737 e!4070285)))

(declare-fun c!1249832 () Bool)

(assert (=> d!2117092 (= c!1249832 ((_ is Cons!65872) (Cons!65872 lt!2438628 Nil!65872)))))

(assert (=> d!2117092 (= (unfocusZipperList!1986 (Cons!65872 lt!2438628 Nil!65872)) lt!2438737)))

(declare-fun b!6738298 () Bool)

(assert (=> b!6738298 (= e!4070285 (Cons!65870 (generalisedConcat!2162 (exprs!6449 (h!72320 (Cons!65872 lt!2438628 Nil!65872)))) (unfocusZipperList!1986 (t!379691 (Cons!65872 lt!2438628 Nil!65872)))))))

(declare-fun b!6738299 () Bool)

(assert (=> b!6738299 (= e!4070285 Nil!65870)))

(assert (= (and d!2117092 c!1249832) b!6738298))

(assert (= (and d!2117092 (not c!1249832)) b!6738299))

(declare-fun m!7495274 () Bool)

(assert (=> d!2117092 m!7495274))

(declare-fun m!7495276 () Bool)

(assert (=> b!6738298 m!7495276))

(declare-fun m!7495278 () Bool)

(assert (=> b!6738298 m!7495278))

(assert (=> d!2116884 d!2117092))

(declare-fun bs!1791730 () Bool)

(declare-fun d!2117094 () Bool)

(assert (= bs!1791730 (and d!2117094 d!2117090)))

(declare-fun lambda!378460 () Int)

(assert (=> bs!1791730 (= lambda!378460 lambda!378458)))

(declare-fun bs!1791731 () Bool)

(assert (= bs!1791731 (and d!2117094 d!2116962)))

(assert (=> bs!1791731 (= lambda!378460 lambda!378417)))

(declare-fun bs!1791732 () Bool)

(assert (= bs!1791732 (and d!2117094 d!2117068)))

(assert (=> bs!1791732 (= lambda!378460 lambda!378451)))

(declare-fun bs!1791733 () Bool)

(assert (= bs!1791733 (and d!2117094 d!2117092)))

(assert (=> bs!1791733 (= lambda!378460 lambda!378459)))

(declare-fun bs!1791734 () Bool)

(assert (= bs!1791734 (and d!2117094 d!2116922)))

(assert (=> bs!1791734 (= lambda!378460 lambda!378397)))

(declare-fun bs!1791735 () Bool)

(assert (= bs!1791735 (and d!2117094 d!2116908)))

(assert (=> bs!1791735 (= lambda!378460 lambda!378391)))

(declare-fun bs!1791736 () Bool)

(assert (= bs!1791736 (and d!2117094 d!2116944)))

(assert (=> bs!1791736 (= lambda!378460 lambda!378404)))

(declare-fun bs!1791737 () Bool)

(assert (= bs!1791737 (and d!2117094 d!2116888)))

(assert (=> bs!1791737 (= lambda!378460 lambda!378385)))

(declare-fun bs!1791738 () Bool)

(assert (= bs!1791738 (and d!2117094 d!2116876)))

(assert (=> bs!1791738 (= lambda!378460 lambda!378380)))

(declare-fun b!6738300 () Bool)

(declare-fun e!4070289 () Bool)

(declare-fun lt!2438738 () Regex!16565)

(assert (=> b!6738300 (= e!4070289 (isEmptyLang!1938 lt!2438738))))

(declare-fun b!6738301 () Bool)

(declare-fun e!4070286 () Regex!16565)

(declare-fun e!4070291 () Regex!16565)

(assert (=> b!6738301 (= e!4070286 e!4070291)))

(declare-fun c!1249834 () Bool)

(assert (=> b!6738301 (= c!1249834 ((_ is Cons!65870) (t!379689 (unfocusZipperList!1986 zl!343))))))

(declare-fun b!6738302 () Bool)

(assert (=> b!6738302 (= e!4070291 EmptyLang!16565)))

(declare-fun b!6738303 () Bool)

(declare-fun e!4070288 () Bool)

(assert (=> b!6738303 (= e!4070289 e!4070288)))

(declare-fun c!1249835 () Bool)

(assert (=> b!6738303 (= c!1249835 (isEmpty!38211 (tail!12642 (t!379689 (unfocusZipperList!1986 zl!343)))))))

(declare-fun e!4070290 () Bool)

(assert (=> d!2117094 e!4070290))

(declare-fun res!2756391 () Bool)

(assert (=> d!2117094 (=> (not res!2756391) (not e!4070290))))

(assert (=> d!2117094 (= res!2756391 (validRegex!8301 lt!2438738))))

(assert (=> d!2117094 (= lt!2438738 e!4070286)))

(declare-fun c!1249836 () Bool)

(declare-fun e!4070287 () Bool)

(assert (=> d!2117094 (= c!1249836 e!4070287)))

(declare-fun res!2756390 () Bool)

(assert (=> d!2117094 (=> (not res!2756390) (not e!4070287))))

(assert (=> d!2117094 (= res!2756390 ((_ is Cons!65870) (t!379689 (unfocusZipperList!1986 zl!343))))))

(assert (=> d!2117094 (forall!15765 (t!379689 (unfocusZipperList!1986 zl!343)) lambda!378460)))

(assert (=> d!2117094 (= (generalisedUnion!2409 (t!379689 (unfocusZipperList!1986 zl!343))) lt!2438738)))

(declare-fun b!6738304 () Bool)

(assert (=> b!6738304 (= e!4070290 e!4070289)))

(declare-fun c!1249833 () Bool)

(assert (=> b!6738304 (= c!1249833 (isEmpty!38211 (t!379689 (unfocusZipperList!1986 zl!343))))))

(declare-fun b!6738305 () Bool)

(assert (=> b!6738305 (= e!4070287 (isEmpty!38211 (t!379689 (t!379689 (unfocusZipperList!1986 zl!343)))))))

(declare-fun b!6738306 () Bool)

(assert (=> b!6738306 (= e!4070288 (isUnion!1368 lt!2438738))))

(declare-fun b!6738307 () Bool)

(assert (=> b!6738307 (= e!4070291 (Union!16565 (h!72318 (t!379689 (unfocusZipperList!1986 zl!343))) (generalisedUnion!2409 (t!379689 (t!379689 (unfocusZipperList!1986 zl!343))))))))

(declare-fun b!6738308 () Bool)

(assert (=> b!6738308 (= e!4070286 (h!72318 (t!379689 (unfocusZipperList!1986 zl!343))))))

(declare-fun b!6738309 () Bool)

(assert (=> b!6738309 (= e!4070288 (= lt!2438738 (head!13557 (t!379689 (unfocusZipperList!1986 zl!343)))))))

(assert (= (and d!2117094 res!2756390) b!6738305))

(assert (= (and d!2117094 c!1249836) b!6738308))

(assert (= (and d!2117094 (not c!1249836)) b!6738301))

(assert (= (and b!6738301 c!1249834) b!6738307))

(assert (= (and b!6738301 (not c!1249834)) b!6738302))

(assert (= (and d!2117094 res!2756391) b!6738304))

(assert (= (and b!6738304 c!1249833) b!6738300))

(assert (= (and b!6738304 (not c!1249833)) b!6738303))

(assert (= (and b!6738303 c!1249835) b!6738309))

(assert (= (and b!6738303 (not c!1249835)) b!6738306))

(assert (=> b!6738304 m!7494844))

(declare-fun m!7495280 () Bool)

(assert (=> b!6738309 m!7495280))

(declare-fun m!7495282 () Bool)

(assert (=> b!6738307 m!7495282))

(declare-fun m!7495284 () Bool)

(assert (=> b!6738300 m!7495284))

(declare-fun m!7495286 () Bool)

(assert (=> d!2117094 m!7495286))

(declare-fun m!7495288 () Bool)

(assert (=> d!2117094 m!7495288))

(declare-fun m!7495290 () Bool)

(assert (=> b!6738305 m!7495290))

(declare-fun m!7495292 () Bool)

(assert (=> b!6738303 m!7495292))

(assert (=> b!6738303 m!7495292))

(declare-fun m!7495294 () Bool)

(assert (=> b!6738303 m!7495294))

(declare-fun m!7495296 () Bool)

(assert (=> b!6738306 m!7495296))

(assert (=> b!6737690 d!2117094))

(declare-fun d!2117096 () Bool)

(assert (=> d!2117096 true))

(assert (=> d!2117096 true))

(declare-fun res!2756394 () Bool)

(assert (=> d!2117096 (= (choose!50229 lambda!378370) res!2756394)))

(assert (=> d!2116996 d!2117096))

(declare-fun bs!1791739 () Bool)

(declare-fun d!2117098 () Bool)

(assert (= bs!1791739 (and d!2117098 d!2117090)))

(declare-fun lambda!378461 () Int)

(assert (=> bs!1791739 (= lambda!378461 lambda!378458)))

(declare-fun bs!1791740 () Bool)

(assert (= bs!1791740 (and d!2117098 d!2116962)))

(assert (=> bs!1791740 (= lambda!378461 lambda!378417)))

(declare-fun bs!1791741 () Bool)

(assert (= bs!1791741 (and d!2117098 d!2117068)))

(assert (=> bs!1791741 (= lambda!378461 lambda!378451)))

(declare-fun bs!1791742 () Bool)

(assert (= bs!1791742 (and d!2117098 d!2117094)))

(assert (=> bs!1791742 (= lambda!378461 lambda!378460)))

(declare-fun bs!1791743 () Bool)

(assert (= bs!1791743 (and d!2117098 d!2117092)))

(assert (=> bs!1791743 (= lambda!378461 lambda!378459)))

(declare-fun bs!1791744 () Bool)

(assert (= bs!1791744 (and d!2117098 d!2116922)))

(assert (=> bs!1791744 (= lambda!378461 lambda!378397)))

(declare-fun bs!1791745 () Bool)

(assert (= bs!1791745 (and d!2117098 d!2116908)))

(assert (=> bs!1791745 (= lambda!378461 lambda!378391)))

(declare-fun bs!1791746 () Bool)

(assert (= bs!1791746 (and d!2117098 d!2116944)))

(assert (=> bs!1791746 (= lambda!378461 lambda!378404)))

(declare-fun bs!1791747 () Bool)

(assert (= bs!1791747 (and d!2117098 d!2116888)))

(assert (=> bs!1791747 (= lambda!378461 lambda!378385)))

(declare-fun bs!1791748 () Bool)

(assert (= bs!1791748 (and d!2117098 d!2116876)))

(assert (=> bs!1791748 (= lambda!378461 lambda!378380)))

(assert (=> d!2117098 (= (inv!84659 (h!72320 (t!379691 zl!343))) (forall!15765 (exprs!6449 (h!72320 (t!379691 zl!343))) lambda!378461))))

(declare-fun bs!1791749 () Bool)

(assert (= bs!1791749 d!2117098))

(declare-fun m!7495298 () Bool)

(assert (=> bs!1791749 m!7495298))

(assert (=> b!6738183 d!2117098))

(declare-fun d!2117100 () Bool)

(assert (=> d!2117100 (= ($colon$colon!2382 (exprs!6449 lt!2438637) (ite (or c!1249782 c!1249785) (regTwo!33642 (reg!16894 r!7292)) (reg!16894 r!7292))) (Cons!65870 (ite (or c!1249782 c!1249785) (regTwo!33642 (reg!16894 r!7292)) (reg!16894 r!7292)) (exprs!6449 lt!2438637)))))

(assert (=> bm!608921 d!2117100))

(declare-fun d!2117102 () Bool)

(assert (=> d!2117102 (= (nullable!6552 (h!72318 (exprs!6449 (h!72320 zl!343)))) (nullableFct!2465 (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun bs!1791750 () Bool)

(assert (= bs!1791750 d!2117102))

(declare-fun m!7495300 () Bool)

(assert (=> bs!1791750 m!7495300))

(assert (=> b!6737724 d!2117102))

(assert (=> d!2116878 d!2116880))

(declare-fun d!2117104 () Bool)

(assert (=> d!2117104 (= (flatMap!2046 lt!2438636 lambda!378371) (dynLambda!26280 lambda!378371 lt!2438625))))

(assert (=> d!2117104 true))

(declare-fun _$13!4067 () Unit!159821)

(assert (=> d!2117104 (= (choose!50221 lt!2438636 lt!2438625 lambda!378371) _$13!4067)))

(declare-fun b_lambda!253721 () Bool)

(assert (=> (not b_lambda!253721) (not d!2117104)))

(declare-fun bs!1791751 () Bool)

(assert (= bs!1791751 d!2117104))

(assert (=> bs!1791751 m!7494640))

(assert (=> bs!1791751 m!7494726))

(assert (=> d!2116878 d!2117104))

(declare-fun d!2117106 () Bool)

(assert (=> d!2117106 (= (isEmpty!38211 (tail!12642 (unfocusZipperList!1986 zl!343))) ((_ is Nil!65870) (tail!12642 (unfocusZipperList!1986 zl!343))))))

(assert (=> b!6737686 d!2117106))

(declare-fun d!2117108 () Bool)

(assert (=> d!2117108 (= (tail!12642 (unfocusZipperList!1986 zl!343)) (t!379689 (unfocusZipperList!1986 zl!343)))))

(assert (=> b!6737686 d!2117108))

(declare-fun d!2117110 () Bool)

(assert (=> d!2117110 true))

(declare-fun setRes!45996 () Bool)

(assert (=> d!2117110 setRes!45996))

(declare-fun condSetEmpty!45996 () Bool)

(declare-fun res!2756397 () (InoxSet Context!11898))

(assert (=> d!2117110 (= condSetEmpty!45996 (= res!2756397 ((as const (Array Context!11898 Bool)) false)))))

(assert (=> d!2117110 (= (choose!50222 lt!2438633 lambda!378371) res!2756397)))

(declare-fun setIsEmpty!45996 () Bool)

(assert (=> setIsEmpty!45996 setRes!45996))

(declare-fun e!4070294 () Bool)

(declare-fun setElem!45996 () Context!11898)

(declare-fun tp!1847280 () Bool)

(declare-fun setNonEmpty!45996 () Bool)

(assert (=> setNonEmpty!45996 (= setRes!45996 (and tp!1847280 (inv!84659 setElem!45996) e!4070294))))

(declare-fun setRest!45996 () (InoxSet Context!11898))

(assert (=> setNonEmpty!45996 (= res!2756397 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) setElem!45996 true) setRest!45996))))

(declare-fun b!6738312 () Bool)

(declare-fun tp!1847281 () Bool)

(assert (=> b!6738312 (= e!4070294 tp!1847281)))

(assert (= (and d!2117110 condSetEmpty!45996) setIsEmpty!45996))

(assert (= (and d!2117110 (not condSetEmpty!45996)) setNonEmpty!45996))

(assert (= setNonEmpty!45996 b!6738312))

(declare-fun m!7495302 () Bool)

(assert (=> setNonEmpty!45996 m!7495302))

(assert (=> d!2117014 d!2117110))

(declare-fun bm!608954 () Bool)

(declare-fun call!608959 () Bool)

(declare-fun c!1249838 () Bool)

(assert (=> bm!608954 (= call!608959 (validRegex!8301 (ite c!1249838 (regOne!33643 lt!2438671) (regOne!33642 lt!2438671))))))

(declare-fun b!6738313 () Bool)

(declare-fun e!4070299 () Bool)

(declare-fun e!4070301 () Bool)

(assert (=> b!6738313 (= e!4070299 e!4070301)))

(declare-fun res!2756401 () Bool)

(assert (=> b!6738313 (=> (not res!2756401) (not e!4070301))))

(assert (=> b!6738313 (= res!2756401 call!608959)))

(declare-fun c!1249837 () Bool)

(declare-fun call!608961 () Bool)

(declare-fun bm!608955 () Bool)

(assert (=> bm!608955 (= call!608961 (validRegex!8301 (ite c!1249837 (reg!16894 lt!2438671) (ite c!1249838 (regTwo!33643 lt!2438671) (regTwo!33642 lt!2438671)))))))

(declare-fun b!6738314 () Bool)

(declare-fun e!4070297 () Bool)

(declare-fun call!608960 () Bool)

(assert (=> b!6738314 (= e!4070297 call!608960)))

(declare-fun b!6738315 () Bool)

(declare-fun e!4070298 () Bool)

(assert (=> b!6738315 (= e!4070298 call!608961)))

(declare-fun b!6738316 () Bool)

(declare-fun e!4070300 () Bool)

(declare-fun e!4070295 () Bool)

(assert (=> b!6738316 (= e!4070300 e!4070295)))

(assert (=> b!6738316 (= c!1249837 ((_ is Star!16565) lt!2438671))))

(declare-fun b!6738317 () Bool)

(assert (=> b!6738317 (= e!4070301 call!608960)))

(declare-fun b!6738318 () Bool)

(assert (=> b!6738318 (= e!4070295 e!4070298)))

(declare-fun res!2756402 () Bool)

(assert (=> b!6738318 (= res!2756402 (not (nullable!6552 (reg!16894 lt!2438671))))))

(assert (=> b!6738318 (=> (not res!2756402) (not e!4070298))))

(declare-fun b!6738319 () Bool)

(declare-fun e!4070296 () Bool)

(assert (=> b!6738319 (= e!4070295 e!4070296)))

(assert (=> b!6738319 (= c!1249838 ((_ is Union!16565) lt!2438671))))

(declare-fun d!2117112 () Bool)

(declare-fun res!2756399 () Bool)

(assert (=> d!2117112 (=> res!2756399 e!4070300)))

(assert (=> d!2117112 (= res!2756399 ((_ is ElementMatch!16565) lt!2438671))))

(assert (=> d!2117112 (= (validRegex!8301 lt!2438671) e!4070300)))

(declare-fun bm!608956 () Bool)

(assert (=> bm!608956 (= call!608960 call!608961)))

(declare-fun b!6738320 () Bool)

(declare-fun res!2756400 () Bool)

(assert (=> b!6738320 (=> res!2756400 e!4070299)))

(assert (=> b!6738320 (= res!2756400 (not ((_ is Concat!25410) lt!2438671)))))

(assert (=> b!6738320 (= e!4070296 e!4070299)))

(declare-fun b!6738321 () Bool)

(declare-fun res!2756398 () Bool)

(assert (=> b!6738321 (=> (not res!2756398) (not e!4070297))))

(assert (=> b!6738321 (= res!2756398 call!608959)))

(assert (=> b!6738321 (= e!4070296 e!4070297)))

(assert (= (and d!2117112 (not res!2756399)) b!6738316))

(assert (= (and b!6738316 c!1249837) b!6738318))

(assert (= (and b!6738316 (not c!1249837)) b!6738319))

(assert (= (and b!6738318 res!2756402) b!6738315))

(assert (= (and b!6738319 c!1249838) b!6738321))

(assert (= (and b!6738319 (not c!1249838)) b!6738320))

(assert (= (and b!6738321 res!2756398) b!6738314))

(assert (= (and b!6738320 (not res!2756400)) b!6738313))

(assert (= (and b!6738313 res!2756401) b!6738317))

(assert (= (or b!6738314 b!6738317) bm!608956))

(assert (= (or b!6738321 b!6738313) bm!608954))

(assert (= (or b!6738315 bm!608956) bm!608955))

(declare-fun m!7495304 () Bool)

(assert (=> bm!608954 m!7495304))

(declare-fun m!7495306 () Bool)

(assert (=> bm!608955 m!7495306))

(declare-fun m!7495308 () Bool)

(assert (=> b!6738318 m!7495308))

(assert (=> d!2116908 d!2117112))

(declare-fun d!2117114 () Bool)

(declare-fun res!2756403 () Bool)

(declare-fun e!4070302 () Bool)

(assert (=> d!2117114 (=> res!2756403 e!4070302)))

(assert (=> d!2117114 (= res!2756403 ((_ is Nil!65870) (unfocusZipperList!1986 zl!343)))))

(assert (=> d!2117114 (= (forall!15765 (unfocusZipperList!1986 zl!343) lambda!378391) e!4070302)))

(declare-fun b!6738322 () Bool)

(declare-fun e!4070303 () Bool)

(assert (=> b!6738322 (= e!4070302 e!4070303)))

(declare-fun res!2756404 () Bool)

(assert (=> b!6738322 (=> (not res!2756404) (not e!4070303))))

(assert (=> b!6738322 (= res!2756404 (dynLambda!26281 lambda!378391 (h!72318 (unfocusZipperList!1986 zl!343))))))

(declare-fun b!6738323 () Bool)

(assert (=> b!6738323 (= e!4070303 (forall!15765 (t!379689 (unfocusZipperList!1986 zl!343)) lambda!378391))))

(assert (= (and d!2117114 (not res!2756403)) b!6738322))

(assert (= (and b!6738322 res!2756404) b!6738323))

(declare-fun b_lambda!253723 () Bool)

(assert (=> (not b_lambda!253723) (not b!6738322)))

(declare-fun m!7495310 () Bool)

(assert (=> b!6738322 m!7495310))

(declare-fun m!7495312 () Bool)

(assert (=> b!6738323 m!7495312))

(assert (=> d!2116908 d!2117114))

(declare-fun d!2117116 () Bool)

(assert (=> d!2117116 (= (isEmpty!38211 (exprs!6449 (h!72320 zl!343))) ((_ is Nil!65870) (exprs!6449 (h!72320 zl!343))))))

(assert (=> b!6737861 d!2117116))

(declare-fun d!2117118 () Bool)

(declare-fun res!2756405 () Bool)

(declare-fun e!4070304 () Bool)

(assert (=> d!2117118 (=> res!2756405 e!4070304)))

(assert (=> d!2117118 (= res!2756405 ((_ is Nil!65870) lt!2438675))))

(assert (=> d!2117118 (= (forall!15765 lt!2438675 lambda!378397) e!4070304)))

(declare-fun b!6738324 () Bool)

(declare-fun e!4070305 () Bool)

(assert (=> b!6738324 (= e!4070304 e!4070305)))

(declare-fun res!2756406 () Bool)

(assert (=> b!6738324 (=> (not res!2756406) (not e!4070305))))

(assert (=> b!6738324 (= res!2756406 (dynLambda!26281 lambda!378397 (h!72318 lt!2438675)))))

(declare-fun b!6738325 () Bool)

(assert (=> b!6738325 (= e!4070305 (forall!15765 (t!379689 lt!2438675) lambda!378397))))

(assert (= (and d!2117118 (not res!2756405)) b!6738324))

(assert (= (and b!6738324 res!2756406) b!6738325))

(declare-fun b_lambda!253725 () Bool)

(assert (=> (not b_lambda!253725) (not b!6738324)))

(declare-fun m!7495314 () Bool)

(assert (=> b!6738324 m!7495314))

(declare-fun m!7495316 () Bool)

(assert (=> b!6738325 m!7495316))

(assert (=> d!2116922 d!2117118))

(declare-fun d!2117120 () Bool)

(declare-fun e!4070310 () Bool)

(assert (=> d!2117120 e!4070310))

(declare-fun res!2756412 () Bool)

(assert (=> d!2117120 (=> (not res!2756412) (not e!4070310))))

(declare-fun lt!2438741 () List!65995)

(declare-fun content!12800 (List!65995) (InoxSet C!33400))

(assert (=> d!2117120 (= res!2756412 (= (content!12800 lt!2438741) ((_ map or) (content!12800 (_1!36843 (get!22919 lt!2438723))) (content!12800 (_2!36843 (get!22919 lt!2438723))))))))

(declare-fun e!4070311 () List!65995)

(assert (=> d!2117120 (= lt!2438741 e!4070311)))

(declare-fun c!1249841 () Bool)

(assert (=> d!2117120 (= c!1249841 ((_ is Nil!65871) (_1!36843 (get!22919 lt!2438723))))))

(assert (=> d!2117120 (= (++!14721 (_1!36843 (get!22919 lt!2438723)) (_2!36843 (get!22919 lt!2438723))) lt!2438741)))

(declare-fun b!6738334 () Bool)

(assert (=> b!6738334 (= e!4070311 (_2!36843 (get!22919 lt!2438723)))))

(declare-fun b!6738335 () Bool)

(assert (=> b!6738335 (= e!4070311 (Cons!65871 (h!72319 (_1!36843 (get!22919 lt!2438723))) (++!14721 (t!379690 (_1!36843 (get!22919 lt!2438723))) (_2!36843 (get!22919 lt!2438723)))))))

(declare-fun b!6738337 () Bool)

(assert (=> b!6738337 (= e!4070310 (or (not (= (_2!36843 (get!22919 lt!2438723)) Nil!65871)) (= lt!2438741 (_1!36843 (get!22919 lt!2438723)))))))

(declare-fun b!6738336 () Bool)

(declare-fun res!2756411 () Bool)

(assert (=> b!6738336 (=> (not res!2756411) (not e!4070310))))

(declare-fun size!40614 (List!65995) Int)

(assert (=> b!6738336 (= res!2756411 (= (size!40614 lt!2438741) (+ (size!40614 (_1!36843 (get!22919 lt!2438723))) (size!40614 (_2!36843 (get!22919 lt!2438723))))))))

(assert (= (and d!2117120 c!1249841) b!6738334))

(assert (= (and d!2117120 (not c!1249841)) b!6738335))

(assert (= (and d!2117120 res!2756412) b!6738336))

(assert (= (and b!6738336 res!2756411) b!6738337))

(declare-fun m!7495318 () Bool)

(assert (=> d!2117120 m!7495318))

(declare-fun m!7495320 () Bool)

(assert (=> d!2117120 m!7495320))

(declare-fun m!7495322 () Bool)

(assert (=> d!2117120 m!7495322))

(declare-fun m!7495324 () Bool)

(assert (=> b!6738335 m!7495324))

(declare-fun m!7495326 () Bool)

(assert (=> b!6738336 m!7495326))

(declare-fun m!7495328 () Bool)

(assert (=> b!6738336 m!7495328))

(declare-fun m!7495330 () Bool)

(assert (=> b!6738336 m!7495330))

(assert (=> b!6738047 d!2117120))

(declare-fun d!2117122 () Bool)

(assert (=> d!2117122 (= (get!22919 lt!2438723) (v!52651 lt!2438723))))

(assert (=> b!6738047 d!2117122))

(declare-fun d!2117124 () Bool)

(declare-fun c!1249844 () Bool)

(assert (=> d!2117124 (= c!1249844 (and ((_ is ElementMatch!16565) (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (= (c!1249609 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (h!72319 s!2326))))))

(declare-fun e!4070317 () (InoxSet Context!11898))

(assert (=> d!2117124 (= (derivationStepZipperDown!1793 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292)) (ite c!1249721 (Context!11899 Nil!65870) (Context!11899 call!608920)) (h!72319 s!2326)) e!4070317)))

(declare-fun bm!608957 () Bool)

(declare-fun call!608963 () (InoxSet Context!11898))

(declare-fun call!608962 () (InoxSet Context!11898))

(assert (=> bm!608957 (= call!608963 call!608962)))

(declare-fun b!6738338 () Bool)

(declare-fun e!4070313 () Bool)

(assert (=> b!6738338 (= e!4070313 (nullable!6552 (regOne!33642 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292)))))))

(declare-fun b!6738339 () Bool)

(declare-fun e!4070316 () (InoxSet Context!11898))

(declare-fun call!608967 () (InoxSet Context!11898))

(declare-fun call!608965 () (InoxSet Context!11898))

(assert (=> b!6738339 (= e!4070316 ((_ map or) call!608967 call!608965))))

(declare-fun b!6738340 () Bool)

(assert (=> b!6738340 (= e!4070317 (store ((as const (Array Context!11898 Bool)) false) (ite c!1249721 (Context!11899 Nil!65870) (Context!11899 call!608920)) true))))

(declare-fun bm!608958 () Bool)

(assert (=> bm!608958 (= call!608962 call!608967)))

(declare-fun b!6738341 () Bool)

(declare-fun e!4070312 () (InoxSet Context!11898))

(assert (=> b!6738341 (= e!4070312 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738342 () Bool)

(assert (=> b!6738342 (= e!4070317 e!4070316)))

(declare-fun c!1249843 () Bool)

(assert (=> b!6738342 (= c!1249843 ((_ is Union!16565) (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))))))

(declare-fun c!1249845 () Bool)

(declare-fun c!1249842 () Bool)

(declare-fun bm!608959 () Bool)

(declare-fun call!608966 () List!65994)

(assert (=> bm!608959 (= call!608966 ($colon$colon!2382 (exprs!6449 (ite c!1249721 (Context!11899 Nil!65870) (Context!11899 call!608920))) (ite (or c!1249842 c!1249845) (regTwo!33642 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292)))))))

(declare-fun b!6738343 () Bool)

(declare-fun e!4070314 () (InoxSet Context!11898))

(assert (=> b!6738343 (= e!4070314 call!608963)))

(declare-fun b!6738344 () Bool)

(declare-fun e!4070315 () (InoxSet Context!11898))

(assert (=> b!6738344 (= e!4070315 e!4070314)))

(assert (=> b!6738344 (= c!1249845 ((_ is Concat!25410) (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))))))

(declare-fun bm!608960 () Bool)

(declare-fun call!608964 () List!65994)

(assert (=> bm!608960 (= call!608964 call!608966)))

(declare-fun b!6738345 () Bool)

(assert (=> b!6738345 (= c!1249842 e!4070313)))

(declare-fun res!2756413 () Bool)

(assert (=> b!6738345 (=> (not res!2756413) (not e!4070313))))

(assert (=> b!6738345 (= res!2756413 ((_ is Concat!25410) (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))))))

(assert (=> b!6738345 (= e!4070316 e!4070315)))

(declare-fun bm!608961 () Bool)

(assert (=> bm!608961 (= call!608967 (derivationStepZipperDown!1793 (ite c!1249843 (regOne!33643 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (ite c!1249842 (regTwo!33642 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (ite c!1249845 (regOne!33642 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (reg!16894 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292)))))) (ite (or c!1249843 c!1249842) (ite c!1249721 (Context!11899 Nil!65870) (Context!11899 call!608920)) (Context!11899 call!608964)) (h!72319 s!2326)))))

(declare-fun bm!608962 () Bool)

(assert (=> bm!608962 (= call!608965 (derivationStepZipperDown!1793 (ite c!1249843 (regTwo!33643 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))) (regOne!33642 (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292)))) (ite c!1249843 (ite c!1249721 (Context!11899 Nil!65870) (Context!11899 call!608920)) (Context!11899 call!608966)) (h!72319 s!2326)))))

(declare-fun b!6738346 () Bool)

(declare-fun c!1249846 () Bool)

(assert (=> b!6738346 (= c!1249846 ((_ is Star!16565) (ite c!1249721 (regTwo!33643 r!7292) (regOne!33642 r!7292))))))

(assert (=> b!6738346 (= e!4070314 e!4070312)))

(declare-fun b!6738347 () Bool)

(assert (=> b!6738347 (= e!4070315 ((_ map or) call!608965 call!608962))))

(declare-fun b!6738348 () Bool)

(assert (=> b!6738348 (= e!4070312 call!608963)))

(assert (= (and d!2117124 c!1249844) b!6738340))

(assert (= (and d!2117124 (not c!1249844)) b!6738342))

(assert (= (and b!6738342 c!1249843) b!6738339))

(assert (= (and b!6738342 (not c!1249843)) b!6738345))

(assert (= (and b!6738345 res!2756413) b!6738338))

(assert (= (and b!6738345 c!1249842) b!6738347))

(assert (= (and b!6738345 (not c!1249842)) b!6738344))

(assert (= (and b!6738344 c!1249845) b!6738343))

(assert (= (and b!6738344 (not c!1249845)) b!6738346))

(assert (= (and b!6738346 c!1249846) b!6738348))

(assert (= (and b!6738346 (not c!1249846)) b!6738341))

(assert (= (or b!6738343 b!6738348) bm!608960))

(assert (= (or b!6738343 b!6738348) bm!608957))

(assert (= (or b!6738347 bm!608960) bm!608959))

(assert (= (or b!6738347 bm!608957) bm!608958))

(assert (= (or b!6738339 b!6738347) bm!608962))

(assert (= (or b!6738339 bm!608958) bm!608961))

(declare-fun m!7495332 () Bool)

(assert (=> bm!608959 m!7495332))

(declare-fun m!7495334 () Bool)

(assert (=> b!6738338 m!7495334))

(declare-fun m!7495336 () Bool)

(assert (=> b!6738340 m!7495336))

(declare-fun m!7495338 () Bool)

(assert (=> bm!608961 m!7495338))

(declare-fun m!7495340 () Bool)

(assert (=> bm!608962 m!7495340))

(assert (=> bm!608916 d!2117124))

(declare-fun d!2117126 () Bool)

(assert (=> d!2117126 (= (nullable!6552 (reg!16894 r!7292)) (nullableFct!2465 (reg!16894 r!7292)))))

(declare-fun bs!1791752 () Bool)

(assert (= bs!1791752 d!2117126))

(declare-fun m!7495342 () Bool)

(assert (=> bs!1791752 m!7495342))

(assert (=> b!6737758 d!2117126))

(declare-fun bm!608963 () Bool)

(declare-fun call!608968 () Bool)

(declare-fun c!1249848 () Bool)

(assert (=> bm!608963 (= call!608968 (validRegex!8301 (ite c!1249848 (regOne!33643 lt!2438680) (regOne!33642 lt!2438680))))))

(declare-fun b!6738349 () Bool)

(declare-fun e!4070322 () Bool)

(declare-fun e!4070324 () Bool)

(assert (=> b!6738349 (= e!4070322 e!4070324)))

(declare-fun res!2756417 () Bool)

(assert (=> b!6738349 (=> (not res!2756417) (not e!4070324))))

(assert (=> b!6738349 (= res!2756417 call!608968)))

(declare-fun c!1249847 () Bool)

(declare-fun call!608970 () Bool)

(declare-fun bm!608964 () Bool)

(assert (=> bm!608964 (= call!608970 (validRegex!8301 (ite c!1249847 (reg!16894 lt!2438680) (ite c!1249848 (regTwo!33643 lt!2438680) (regTwo!33642 lt!2438680)))))))

(declare-fun b!6738350 () Bool)

(declare-fun e!4070320 () Bool)

(declare-fun call!608969 () Bool)

(assert (=> b!6738350 (= e!4070320 call!608969)))

(declare-fun b!6738351 () Bool)

(declare-fun e!4070321 () Bool)

(assert (=> b!6738351 (= e!4070321 call!608970)))

(declare-fun b!6738352 () Bool)

(declare-fun e!4070323 () Bool)

(declare-fun e!4070318 () Bool)

(assert (=> b!6738352 (= e!4070323 e!4070318)))

(assert (=> b!6738352 (= c!1249847 ((_ is Star!16565) lt!2438680))))

(declare-fun b!6738353 () Bool)

(assert (=> b!6738353 (= e!4070324 call!608969)))

(declare-fun b!6738354 () Bool)

(assert (=> b!6738354 (= e!4070318 e!4070321)))

(declare-fun res!2756418 () Bool)

(assert (=> b!6738354 (= res!2756418 (not (nullable!6552 (reg!16894 lt!2438680))))))

(assert (=> b!6738354 (=> (not res!2756418) (not e!4070321))))

(declare-fun b!6738355 () Bool)

(declare-fun e!4070319 () Bool)

(assert (=> b!6738355 (= e!4070318 e!4070319)))

(assert (=> b!6738355 (= c!1249848 ((_ is Union!16565) lt!2438680))))

(declare-fun d!2117128 () Bool)

(declare-fun res!2756415 () Bool)

(assert (=> d!2117128 (=> res!2756415 e!4070323)))

(assert (=> d!2117128 (= res!2756415 ((_ is ElementMatch!16565) lt!2438680))))

(assert (=> d!2117128 (= (validRegex!8301 lt!2438680) e!4070323)))

(declare-fun bm!608965 () Bool)

(assert (=> bm!608965 (= call!608969 call!608970)))

(declare-fun b!6738356 () Bool)

(declare-fun res!2756416 () Bool)

(assert (=> b!6738356 (=> res!2756416 e!4070322)))

(assert (=> b!6738356 (= res!2756416 (not ((_ is Concat!25410) lt!2438680)))))

(assert (=> b!6738356 (= e!4070319 e!4070322)))

(declare-fun b!6738357 () Bool)

(declare-fun res!2756414 () Bool)

(assert (=> b!6738357 (=> (not res!2756414) (not e!4070320))))

(assert (=> b!6738357 (= res!2756414 call!608968)))

(assert (=> b!6738357 (= e!4070319 e!4070320)))

(assert (= (and d!2117128 (not res!2756415)) b!6738352))

(assert (= (and b!6738352 c!1249847) b!6738354))

(assert (= (and b!6738352 (not c!1249847)) b!6738355))

(assert (= (and b!6738354 res!2756418) b!6738351))

(assert (= (and b!6738355 c!1249848) b!6738357))

(assert (= (and b!6738355 (not c!1249848)) b!6738356))

(assert (= (and b!6738357 res!2756414) b!6738350))

(assert (= (and b!6738356 (not res!2756416)) b!6738349))

(assert (= (and b!6738349 res!2756417) b!6738353))

(assert (= (or b!6738350 b!6738353) bm!608965))

(assert (= (or b!6738357 b!6738349) bm!608963))

(assert (= (or b!6738351 bm!608965) bm!608964))

(declare-fun m!7495344 () Bool)

(assert (=> bm!608963 m!7495344))

(declare-fun m!7495346 () Bool)

(assert (=> bm!608964 m!7495346))

(declare-fun m!7495348 () Bool)

(assert (=> b!6738354 m!7495348))

(assert (=> d!2116946 d!2117128))

(assert (=> d!2116946 d!2116908))

(assert (=> d!2116946 d!2116922))

(assert (=> bm!608931 d!2117000))

(declare-fun d!2117130 () Bool)

(declare-fun c!1249851 () Bool)

(assert (=> d!2117130 (= c!1249851 (and ((_ is ElementMatch!16565) (h!72318 (exprs!6449 lt!2438628))) (= (c!1249609 (h!72318 (exprs!6449 lt!2438628))) (h!72319 s!2326))))))

(declare-fun e!4070330 () (InoxSet Context!11898))

(assert (=> d!2117130 (= (derivationStepZipperDown!1793 (h!72318 (exprs!6449 lt!2438628)) (Context!11899 (t!379689 (exprs!6449 lt!2438628))) (h!72319 s!2326)) e!4070330)))

(declare-fun bm!608966 () Bool)

(declare-fun call!608972 () (InoxSet Context!11898))

(declare-fun call!608971 () (InoxSet Context!11898))

(assert (=> bm!608966 (= call!608972 call!608971)))

(declare-fun b!6738358 () Bool)

(declare-fun e!4070326 () Bool)

(assert (=> b!6738358 (= e!4070326 (nullable!6552 (regOne!33642 (h!72318 (exprs!6449 lt!2438628)))))))

(declare-fun b!6738359 () Bool)

(declare-fun e!4070329 () (InoxSet Context!11898))

(declare-fun call!608976 () (InoxSet Context!11898))

(declare-fun call!608974 () (InoxSet Context!11898))

(assert (=> b!6738359 (= e!4070329 ((_ map or) call!608976 call!608974))))

(declare-fun b!6738360 () Bool)

(assert (=> b!6738360 (= e!4070330 (store ((as const (Array Context!11898 Bool)) false) (Context!11899 (t!379689 (exprs!6449 lt!2438628))) true))))

(declare-fun bm!608967 () Bool)

(assert (=> bm!608967 (= call!608971 call!608976)))

(declare-fun b!6738361 () Bool)

(declare-fun e!4070325 () (InoxSet Context!11898))

(assert (=> b!6738361 (= e!4070325 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738362 () Bool)

(assert (=> b!6738362 (= e!4070330 e!4070329)))

(declare-fun c!1249850 () Bool)

(assert (=> b!6738362 (= c!1249850 ((_ is Union!16565) (h!72318 (exprs!6449 lt!2438628))))))

(declare-fun call!608975 () List!65994)

(declare-fun bm!608968 () Bool)

(declare-fun c!1249852 () Bool)

(declare-fun c!1249849 () Bool)

(assert (=> bm!608968 (= call!608975 ($colon$colon!2382 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628)))) (ite (or c!1249849 c!1249852) (regTwo!33642 (h!72318 (exprs!6449 lt!2438628))) (h!72318 (exprs!6449 lt!2438628)))))))

(declare-fun b!6738363 () Bool)

(declare-fun e!4070327 () (InoxSet Context!11898))

(assert (=> b!6738363 (= e!4070327 call!608972)))

(declare-fun b!6738364 () Bool)

(declare-fun e!4070328 () (InoxSet Context!11898))

(assert (=> b!6738364 (= e!4070328 e!4070327)))

(assert (=> b!6738364 (= c!1249852 ((_ is Concat!25410) (h!72318 (exprs!6449 lt!2438628))))))

(declare-fun bm!608969 () Bool)

(declare-fun call!608973 () List!65994)

(assert (=> bm!608969 (= call!608973 call!608975)))

(declare-fun b!6738365 () Bool)

(assert (=> b!6738365 (= c!1249849 e!4070326)))

(declare-fun res!2756419 () Bool)

(assert (=> b!6738365 (=> (not res!2756419) (not e!4070326))))

(assert (=> b!6738365 (= res!2756419 ((_ is Concat!25410) (h!72318 (exprs!6449 lt!2438628))))))

(assert (=> b!6738365 (= e!4070329 e!4070328)))

(declare-fun bm!608970 () Bool)

(assert (=> bm!608970 (= call!608976 (derivationStepZipperDown!1793 (ite c!1249850 (regOne!33643 (h!72318 (exprs!6449 lt!2438628))) (ite c!1249849 (regTwo!33642 (h!72318 (exprs!6449 lt!2438628))) (ite c!1249852 (regOne!33642 (h!72318 (exprs!6449 lt!2438628))) (reg!16894 (h!72318 (exprs!6449 lt!2438628)))))) (ite (or c!1249850 c!1249849) (Context!11899 (t!379689 (exprs!6449 lt!2438628))) (Context!11899 call!608973)) (h!72319 s!2326)))))

(declare-fun bm!608971 () Bool)

(assert (=> bm!608971 (= call!608974 (derivationStepZipperDown!1793 (ite c!1249850 (regTwo!33643 (h!72318 (exprs!6449 lt!2438628))) (regOne!33642 (h!72318 (exprs!6449 lt!2438628)))) (ite c!1249850 (Context!11899 (t!379689 (exprs!6449 lt!2438628))) (Context!11899 call!608975)) (h!72319 s!2326)))))

(declare-fun b!6738366 () Bool)

(declare-fun c!1249853 () Bool)

(assert (=> b!6738366 (= c!1249853 ((_ is Star!16565) (h!72318 (exprs!6449 lt!2438628))))))

(assert (=> b!6738366 (= e!4070327 e!4070325)))

(declare-fun b!6738367 () Bool)

(assert (=> b!6738367 (= e!4070328 ((_ map or) call!608974 call!608971))))

(declare-fun b!6738368 () Bool)

(assert (=> b!6738368 (= e!4070325 call!608972)))

(assert (= (and d!2117130 c!1249851) b!6738360))

(assert (= (and d!2117130 (not c!1249851)) b!6738362))

(assert (= (and b!6738362 c!1249850) b!6738359))

(assert (= (and b!6738362 (not c!1249850)) b!6738365))

(assert (= (and b!6738365 res!2756419) b!6738358))

(assert (= (and b!6738365 c!1249849) b!6738367))

(assert (= (and b!6738365 (not c!1249849)) b!6738364))

(assert (= (and b!6738364 c!1249852) b!6738363))

(assert (= (and b!6738364 (not c!1249852)) b!6738366))

(assert (= (and b!6738366 c!1249853) b!6738368))

(assert (= (and b!6738366 (not c!1249853)) b!6738361))

(assert (= (or b!6738363 b!6738368) bm!608969))

(assert (= (or b!6738363 b!6738368) bm!608966))

(assert (= (or b!6738367 bm!608969) bm!608968))

(assert (= (or b!6738367 bm!608966) bm!608967))

(assert (= (or b!6738359 b!6738367) bm!608971))

(assert (= (or b!6738359 bm!608967) bm!608970))

(declare-fun m!7495350 () Bool)

(assert (=> bm!608968 m!7495350))

(declare-fun m!7495352 () Bool)

(assert (=> b!6738358 m!7495352))

(declare-fun m!7495354 () Bool)

(assert (=> b!6738360 m!7495354))

(declare-fun m!7495356 () Bool)

(assert (=> bm!608970 m!7495356))

(declare-fun m!7495358 () Bool)

(assert (=> bm!608971 m!7495358))

(assert (=> bm!608925 d!2117130))

(declare-fun b!6738369 () Bool)

(declare-fun e!4070334 () Bool)

(assert (=> b!6738369 (= e!4070334 (matchR!8748 (derivativeStep!5237 (reg!16894 r!7292) (head!13556 (_1!36843 (get!22919 lt!2438723)))) (tail!12641 (_1!36843 (get!22919 lt!2438723)))))))

(declare-fun d!2117132 () Bool)

(declare-fun e!4070332 () Bool)

(assert (=> d!2117132 e!4070332))

(declare-fun c!1249856 () Bool)

(assert (=> d!2117132 (= c!1249856 ((_ is EmptyExpr!16565) (reg!16894 r!7292)))))

(declare-fun lt!2438742 () Bool)

(assert (=> d!2117132 (= lt!2438742 e!4070334)))

(declare-fun c!1249854 () Bool)

(assert (=> d!2117132 (= c!1249854 (isEmpty!38209 (_1!36843 (get!22919 lt!2438723))))))

(assert (=> d!2117132 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2117132 (= (matchR!8748 (reg!16894 r!7292) (_1!36843 (get!22919 lt!2438723))) lt!2438742)))

(declare-fun b!6738370 () Bool)

(declare-fun e!4070337 () Bool)

(assert (=> b!6738370 (= e!4070337 (not lt!2438742))))

(declare-fun b!6738371 () Bool)

(declare-fun res!2756425 () Bool)

(declare-fun e!4070336 () Bool)

(assert (=> b!6738371 (=> res!2756425 e!4070336)))

(declare-fun e!4070331 () Bool)

(assert (=> b!6738371 (= res!2756425 e!4070331)))

(declare-fun res!2756426 () Bool)

(assert (=> b!6738371 (=> (not res!2756426) (not e!4070331))))

(assert (=> b!6738371 (= res!2756426 lt!2438742)))

(declare-fun b!6738372 () Bool)

(declare-fun e!4070335 () Bool)

(assert (=> b!6738372 (= e!4070335 (not (= (head!13556 (_1!36843 (get!22919 lt!2438723))) (c!1249609 (reg!16894 r!7292)))))))

(declare-fun b!6738373 () Bool)

(declare-fun res!2756421 () Bool)

(assert (=> b!6738373 (=> (not res!2756421) (not e!4070331))))

(assert (=> b!6738373 (= res!2756421 (isEmpty!38209 (tail!12641 (_1!36843 (get!22919 lt!2438723)))))))

(declare-fun b!6738374 () Bool)

(declare-fun res!2756420 () Bool)

(assert (=> b!6738374 (=> res!2756420 e!4070335)))

(assert (=> b!6738374 (= res!2756420 (not (isEmpty!38209 (tail!12641 (_1!36843 (get!22919 lt!2438723))))))))

(declare-fun b!6738375 () Bool)

(assert (=> b!6738375 (= e!4070334 (nullable!6552 (reg!16894 r!7292)))))

(declare-fun b!6738376 () Bool)

(assert (=> b!6738376 (= e!4070331 (= (head!13556 (_1!36843 (get!22919 lt!2438723))) (c!1249609 (reg!16894 r!7292))))))

(declare-fun b!6738377 () Bool)

(declare-fun e!4070333 () Bool)

(assert (=> b!6738377 (= e!4070333 e!4070335)))

(declare-fun res!2756422 () Bool)

(assert (=> b!6738377 (=> res!2756422 e!4070335)))

(declare-fun call!608977 () Bool)

(assert (=> b!6738377 (= res!2756422 call!608977)))

(declare-fun b!6738378 () Bool)

(assert (=> b!6738378 (= e!4070332 e!4070337)))

(declare-fun c!1249855 () Bool)

(assert (=> b!6738378 (= c!1249855 ((_ is EmptyLang!16565) (reg!16894 r!7292)))))

(declare-fun b!6738379 () Bool)

(declare-fun res!2756424 () Bool)

(assert (=> b!6738379 (=> res!2756424 e!4070336)))

(assert (=> b!6738379 (= res!2756424 (not ((_ is ElementMatch!16565) (reg!16894 r!7292))))))

(assert (=> b!6738379 (= e!4070337 e!4070336)))

(declare-fun b!6738380 () Bool)

(assert (=> b!6738380 (= e!4070336 e!4070333)))

(declare-fun res!2756423 () Bool)

(assert (=> b!6738380 (=> (not res!2756423) (not e!4070333))))

(assert (=> b!6738380 (= res!2756423 (not lt!2438742))))

(declare-fun b!6738381 () Bool)

(declare-fun res!2756427 () Bool)

(assert (=> b!6738381 (=> (not res!2756427) (not e!4070331))))

(assert (=> b!6738381 (= res!2756427 (not call!608977))))

(declare-fun b!6738382 () Bool)

(assert (=> b!6738382 (= e!4070332 (= lt!2438742 call!608977))))

(declare-fun bm!608972 () Bool)

(assert (=> bm!608972 (= call!608977 (isEmpty!38209 (_1!36843 (get!22919 lt!2438723))))))

(assert (= (and d!2117132 c!1249854) b!6738375))

(assert (= (and d!2117132 (not c!1249854)) b!6738369))

(assert (= (and d!2117132 c!1249856) b!6738382))

(assert (= (and d!2117132 (not c!1249856)) b!6738378))

(assert (= (and b!6738378 c!1249855) b!6738370))

(assert (= (and b!6738378 (not c!1249855)) b!6738379))

(assert (= (and b!6738379 (not res!2756424)) b!6738371))

(assert (= (and b!6738371 res!2756426) b!6738381))

(assert (= (and b!6738381 res!2756427) b!6738373))

(assert (= (and b!6738373 res!2756421) b!6738376))

(assert (= (and b!6738371 (not res!2756425)) b!6738380))

(assert (= (and b!6738380 res!2756423) b!6738377))

(assert (= (and b!6738377 (not res!2756422)) b!6738374))

(assert (= (and b!6738374 (not res!2756420)) b!6738372))

(assert (= (or b!6738382 b!6738377 b!6738381) bm!608972))

(declare-fun m!7495360 () Bool)

(assert (=> bm!608972 m!7495360))

(declare-fun m!7495362 () Bool)

(assert (=> b!6738376 m!7495362))

(assert (=> b!6738369 m!7495362))

(assert (=> b!6738369 m!7495362))

(declare-fun m!7495364 () Bool)

(assert (=> b!6738369 m!7495364))

(declare-fun m!7495366 () Bool)

(assert (=> b!6738369 m!7495366))

(assert (=> b!6738369 m!7495364))

(assert (=> b!6738369 m!7495366))

(declare-fun m!7495368 () Bool)

(assert (=> b!6738369 m!7495368))

(assert (=> d!2117132 m!7495360))

(assert (=> d!2117132 m!7495010))

(assert (=> b!6738373 m!7495366))

(assert (=> b!6738373 m!7495366))

(declare-fun m!7495370 () Bool)

(assert (=> b!6738373 m!7495370))

(assert (=> b!6738372 m!7495362))

(assert (=> b!6738375 m!7494904))

(assert (=> b!6738374 m!7495366))

(assert (=> b!6738374 m!7495366))

(assert (=> b!6738374 m!7495370))

(assert (=> b!6738043 d!2117132))

(assert (=> b!6738043 d!2117122))

(declare-fun bs!1791753 () Bool)

(declare-fun b!6738388 () Bool)

(assert (= bs!1791753 (and b!6738388 b!6737451)))

(declare-fun lambda!378462 () Int)

(assert (=> bs!1791753 (not (= lambda!378462 lambda!378368))))

(declare-fun bs!1791754 () Bool)

(assert (= bs!1791754 (and b!6738388 b!6738106)))

(assert (=> bs!1791754 (= (and (= (reg!16894 (regOne!33643 r!7292)) (reg!16894 r!7292)) (= (regOne!33643 r!7292) r!7292)) (= lambda!378462 lambda!378448))))

(declare-fun bs!1791755 () Bool)

(assert (= bs!1791755 (and b!6738388 d!2116970)))

(assert (=> bs!1791755 (not (= lambda!378462 lambda!378425))))

(declare-fun bs!1791756 () Bool)

(assert (= bs!1791756 (and b!6738388 b!6738101)))

(assert (=> bs!1791756 (not (= lambda!378462 lambda!378449))))

(assert (=> bs!1791755 (not (= lambda!378462 lambda!378426))))

(declare-fun bs!1791757 () Bool)

(assert (= bs!1791757 (and b!6738388 d!2117074)))

(assert (=> bs!1791757 (not (= lambda!378462 lambda!378457))))

(assert (=> bs!1791753 (not (= lambda!378462 lambda!378370))))

(assert (=> bs!1791757 (not (= lambda!378462 lambda!378456))))

(declare-fun bs!1791758 () Bool)

(assert (= bs!1791758 (and b!6738388 d!2116976)))

(assert (=> bs!1791758 (not (= lambda!378462 lambda!378436))))

(assert (=> bs!1791753 (= (and (= (reg!16894 (regOne!33643 r!7292)) (reg!16894 r!7292)) (= (regOne!33643 r!7292) r!7292)) (= lambda!378462 lambda!378369))))

(assert (=> bs!1791758 (= (and (= (reg!16894 (regOne!33643 r!7292)) (reg!16894 r!7292)) (= (regOne!33643 r!7292) (Star!16565 (reg!16894 r!7292)))) (= lambda!378462 lambda!378439))))

(declare-fun bs!1791759 () Bool)

(assert (= bs!1791759 (and b!6738388 d!2117010)))

(assert (=> bs!1791759 (not (= lambda!378462 lambda!378443))))

(assert (=> b!6738388 true))

(assert (=> b!6738388 true))

(declare-fun bs!1791760 () Bool)

(declare-fun b!6738383 () Bool)

(assert (= bs!1791760 (and b!6738383 b!6737451)))

(declare-fun lambda!378463 () Int)

(assert (=> bs!1791760 (not (= lambda!378463 lambda!378368))))

(declare-fun bs!1791761 () Bool)

(assert (= bs!1791761 (and b!6738383 b!6738106)))

(assert (=> bs!1791761 (not (= lambda!378463 lambda!378448))))

(declare-fun bs!1791762 () Bool)

(assert (= bs!1791762 (and b!6738383 b!6738388)))

(assert (=> bs!1791762 (not (= lambda!378463 lambda!378462))))

(declare-fun bs!1791763 () Bool)

(assert (= bs!1791763 (and b!6738383 d!2116970)))

(assert (=> bs!1791763 (not (= lambda!378463 lambda!378425))))

(declare-fun bs!1791764 () Bool)

(assert (= bs!1791764 (and b!6738383 b!6738101)))

(assert (=> bs!1791764 (= (and (= (regOne!33642 (regOne!33643 r!7292)) (regOne!33642 r!7292)) (= (regTwo!33642 (regOne!33643 r!7292)) (regTwo!33642 r!7292))) (= lambda!378463 lambda!378449))))

(assert (=> bs!1791763 (= (and (= (regOne!33642 (regOne!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33642 (regOne!33643 r!7292)) r!7292)) (= lambda!378463 lambda!378426))))

(declare-fun bs!1791765 () Bool)

(assert (= bs!1791765 (and b!6738383 d!2117074)))

(assert (=> bs!1791765 (= (and (= (regOne!33642 (regOne!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33642 (regOne!33643 r!7292)) r!7292)) (= lambda!378463 lambda!378457))))

(assert (=> bs!1791760 (= (and (= (regOne!33642 (regOne!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33642 (regOne!33643 r!7292)) r!7292)) (= lambda!378463 lambda!378370))))

(assert (=> bs!1791765 (not (= lambda!378463 lambda!378456))))

(declare-fun bs!1791766 () Bool)

(assert (= bs!1791766 (and b!6738383 d!2116976)))

(assert (=> bs!1791766 (not (= lambda!378463 lambda!378436))))

(assert (=> bs!1791760 (not (= lambda!378463 lambda!378369))))

(assert (=> bs!1791766 (not (= lambda!378463 lambda!378439))))

(declare-fun bs!1791767 () Bool)

(assert (= bs!1791767 (and b!6738383 d!2117010)))

(assert (=> bs!1791767 (not (= lambda!378463 lambda!378443))))

(assert (=> b!6738383 true))

(assert (=> b!6738383 true))

(declare-fun e!4070340 () Bool)

(declare-fun call!608978 () Bool)

(assert (=> b!6738383 (= e!4070340 call!608978)))

(declare-fun b!6738384 () Bool)

(declare-fun e!4070343 () Bool)

(assert (=> b!6738384 (= e!4070343 (matchRSpec!3666 (regTwo!33643 (regOne!33643 r!7292)) s!2326))))

(declare-fun b!6738385 () Bool)

(declare-fun e!4070338 () Bool)

(declare-fun call!608979 () Bool)

(assert (=> b!6738385 (= e!4070338 call!608979)))

(declare-fun bm!608973 () Bool)

(declare-fun c!1249858 () Bool)

(assert (=> bm!608973 (= call!608978 (Exists!3633 (ite c!1249858 lambda!378462 lambda!378463)))))

(declare-fun b!6738386 () Bool)

(declare-fun c!1249859 () Bool)

(assert (=> b!6738386 (= c!1249859 ((_ is Union!16565) (regOne!33643 r!7292)))))

(declare-fun e!4070339 () Bool)

(declare-fun e!4070344 () Bool)

(assert (=> b!6738386 (= e!4070339 e!4070344)))

(declare-fun b!6738387 () Bool)

(assert (=> b!6738387 (= e!4070344 e!4070340)))

(assert (=> b!6738387 (= c!1249858 ((_ is Star!16565) (regOne!33643 r!7292)))))

(declare-fun e!4070341 () Bool)

(assert (=> b!6738388 (= e!4070341 call!608978)))

(declare-fun b!6738389 () Bool)

(declare-fun res!2756430 () Bool)

(assert (=> b!6738389 (=> res!2756430 e!4070341)))

(assert (=> b!6738389 (= res!2756430 call!608979)))

(assert (=> b!6738389 (= e!4070340 e!4070341)))

(declare-fun b!6738390 () Bool)

(assert (=> b!6738390 (= e!4070344 e!4070343)))

(declare-fun res!2756429 () Bool)

(assert (=> b!6738390 (= res!2756429 (matchRSpec!3666 (regOne!33643 (regOne!33643 r!7292)) s!2326))))

(assert (=> b!6738390 (=> res!2756429 e!4070343)))

(declare-fun b!6738391 () Bool)

(declare-fun e!4070342 () Bool)

(assert (=> b!6738391 (= e!4070338 e!4070342)))

(declare-fun res!2756428 () Bool)

(assert (=> b!6738391 (= res!2756428 (not ((_ is EmptyLang!16565) (regOne!33643 r!7292))))))

(assert (=> b!6738391 (=> (not res!2756428) (not e!4070342))))

(declare-fun b!6738392 () Bool)

(assert (=> b!6738392 (= e!4070339 (= s!2326 (Cons!65871 (c!1249609 (regOne!33643 r!7292)) Nil!65871)))))

(declare-fun b!6738393 () Bool)

(declare-fun c!1249860 () Bool)

(assert (=> b!6738393 (= c!1249860 ((_ is ElementMatch!16565) (regOne!33643 r!7292)))))

(assert (=> b!6738393 (= e!4070342 e!4070339)))

(declare-fun d!2117134 () Bool)

(declare-fun c!1249857 () Bool)

(assert (=> d!2117134 (= c!1249857 ((_ is EmptyExpr!16565) (regOne!33643 r!7292)))))

(assert (=> d!2117134 (= (matchRSpec!3666 (regOne!33643 r!7292) s!2326) e!4070338)))

(declare-fun bm!608974 () Bool)

(assert (=> bm!608974 (= call!608979 (isEmpty!38209 s!2326))))

(assert (= (and d!2117134 c!1249857) b!6738385))

(assert (= (and d!2117134 (not c!1249857)) b!6738391))

(assert (= (and b!6738391 res!2756428) b!6738393))

(assert (= (and b!6738393 c!1249860) b!6738392))

(assert (= (and b!6738393 (not c!1249860)) b!6738386))

(assert (= (and b!6738386 c!1249859) b!6738390))

(assert (= (and b!6738386 (not c!1249859)) b!6738387))

(assert (= (and b!6738390 (not res!2756429)) b!6738384))

(assert (= (and b!6738387 c!1249858) b!6738389))

(assert (= (and b!6738387 (not c!1249858)) b!6738383))

(assert (= (and b!6738389 (not res!2756430)) b!6738388))

(assert (= (or b!6738388 b!6738383) bm!608973))

(assert (= (or b!6738385 b!6738389) bm!608974))

(declare-fun m!7495372 () Bool)

(assert (=> b!6738384 m!7495372))

(declare-fun m!7495374 () Bool)

(assert (=> bm!608973 m!7495374))

(declare-fun m!7495376 () Bool)

(assert (=> b!6738390 m!7495376))

(assert (=> bm!608974 m!7494694))

(assert (=> b!6738108 d!2117134))

(declare-fun d!2117136 () Bool)

(declare-fun c!1249863 () Bool)

(assert (=> d!2117136 (= c!1249863 (and ((_ is ElementMatch!16565) (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (= (c!1249609 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (h!72319 s!2326))))))

(declare-fun e!4070350 () (InoxSet Context!11898))

(assert (=> d!2117136 (= (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (h!72319 s!2326)) e!4070350)))

(declare-fun bm!608975 () Bool)

(declare-fun call!608981 () (InoxSet Context!11898))

(declare-fun call!608980 () (InoxSet Context!11898))

(assert (=> bm!608975 (= call!608981 call!608980)))

(declare-fun b!6738394 () Bool)

(declare-fun e!4070346 () Bool)

(assert (=> b!6738394 (= e!4070346 (nullable!6552 (regOne!33642 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))))

(declare-fun b!6738395 () Bool)

(declare-fun e!4070349 () (InoxSet Context!11898))

(declare-fun call!608985 () (InoxSet Context!11898))

(declare-fun call!608983 () (InoxSet Context!11898))

(assert (=> b!6738395 (= e!4070349 ((_ map or) call!608985 call!608983))))

(declare-fun b!6738396 () Bool)

(assert (=> b!6738396 (= e!4070350 (store ((as const (Array Context!11898 Bool)) false) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) true))))

(declare-fun bm!608976 () Bool)

(assert (=> bm!608976 (= call!608980 call!608985)))

(declare-fun b!6738397 () Bool)

(declare-fun e!4070345 () (InoxSet Context!11898))

(assert (=> b!6738397 (= e!4070345 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738398 () Bool)

(assert (=> b!6738398 (= e!4070350 e!4070349)))

(declare-fun c!1249862 () Bool)

(assert (=> b!6738398 (= c!1249862 ((_ is Union!16565) (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))

(declare-fun bm!608977 () Bool)

(declare-fun call!608984 () List!65994)

(declare-fun c!1249861 () Bool)

(declare-fun c!1249864 () Bool)

(assert (=> bm!608977 (= call!608984 ($colon$colon!2382 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))) (ite (or c!1249861 c!1249864) (regTwo!33642 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))))

(declare-fun b!6738399 () Bool)

(declare-fun e!4070347 () (InoxSet Context!11898))

(assert (=> b!6738399 (= e!4070347 call!608981)))

(declare-fun b!6738400 () Bool)

(declare-fun e!4070348 () (InoxSet Context!11898))

(assert (=> b!6738400 (= e!4070348 e!4070347)))

(assert (=> b!6738400 (= c!1249864 ((_ is Concat!25410) (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))

(declare-fun bm!608978 () Bool)

(declare-fun call!608982 () List!65994)

(assert (=> bm!608978 (= call!608982 call!608984)))

(declare-fun b!6738401 () Bool)

(assert (=> b!6738401 (= c!1249861 e!4070346)))

(declare-fun res!2756431 () Bool)

(assert (=> b!6738401 (=> (not res!2756431) (not e!4070346))))

(assert (=> b!6738401 (= res!2756431 ((_ is Concat!25410) (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))

(assert (=> b!6738401 (= e!4070349 e!4070348)))

(declare-fun bm!608979 () Bool)

(assert (=> bm!608979 (= call!608985 (derivationStepZipperDown!1793 (ite c!1249862 (regOne!33643 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (ite c!1249861 (regTwo!33642 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (ite c!1249864 (regOne!33642 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (reg!16894 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))) (ite (or c!1249862 c!1249861) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (Context!11899 call!608982)) (h!72319 s!2326)))))

(declare-fun bm!608980 () Bool)

(assert (=> bm!608980 (= call!608983 (derivationStepZipperDown!1793 (ite c!1249862 (regTwo!33643 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (regOne!33642 (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))) (ite c!1249862 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (Context!11899 call!608984)) (h!72319 s!2326)))))

(declare-fun b!6738402 () Bool)

(declare-fun c!1249865 () Bool)

(assert (=> b!6738402 (= c!1249865 ((_ is Star!16565) (h!72318 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))

(assert (=> b!6738402 (= e!4070347 e!4070345)))

(declare-fun b!6738403 () Bool)

(assert (=> b!6738403 (= e!4070348 ((_ map or) call!608983 call!608980))))

(declare-fun b!6738404 () Bool)

(assert (=> b!6738404 (= e!4070345 call!608981)))

(assert (= (and d!2117136 c!1249863) b!6738396))

(assert (= (and d!2117136 (not c!1249863)) b!6738398))

(assert (= (and b!6738398 c!1249862) b!6738395))

(assert (= (and b!6738398 (not c!1249862)) b!6738401))

(assert (= (and b!6738401 res!2756431) b!6738394))

(assert (= (and b!6738401 c!1249861) b!6738403))

(assert (= (and b!6738401 (not c!1249861)) b!6738400))

(assert (= (and b!6738400 c!1249864) b!6738399))

(assert (= (and b!6738400 (not c!1249864)) b!6738402))

(assert (= (and b!6738402 c!1249865) b!6738404))

(assert (= (and b!6738402 (not c!1249865)) b!6738397))

(assert (= (or b!6738399 b!6738404) bm!608978))

(assert (= (or b!6738399 b!6738404) bm!608975))

(assert (= (or b!6738403 bm!608978) bm!608977))

(assert (= (or b!6738403 bm!608975) bm!608976))

(assert (= (or b!6738395 b!6738403) bm!608980))

(assert (= (or b!6738395 bm!608976) bm!608979))

(declare-fun m!7495378 () Bool)

(assert (=> bm!608977 m!7495378))

(declare-fun m!7495380 () Bool)

(assert (=> b!6738394 m!7495380))

(declare-fun m!7495382 () Bool)

(assert (=> b!6738396 m!7495382))

(declare-fun m!7495384 () Bool)

(assert (=> bm!608979 m!7495384))

(declare-fun m!7495386 () Bool)

(assert (=> bm!608980 m!7495386))

(assert (=> bm!608917 d!2117136))

(assert (=> b!6738147 d!2117058))

(declare-fun d!2117138 () Bool)

(declare-fun c!1249866 () Bool)

(declare-fun e!4070352 () Bool)

(assert (=> d!2117138 (= c!1249866 e!4070352)))

(declare-fun res!2756432 () Bool)

(assert (=> d!2117138 (=> (not res!2756432) (not e!4070352))))

(assert (=> d!2117138 (= res!2756432 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628))))))))

(declare-fun e!4070353 () (InoxSet Context!11898))

(assert (=> d!2117138 (= (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 lt!2438628))) (h!72319 s!2326)) e!4070353)))

(declare-fun b!6738405 () Bool)

(declare-fun call!608986 () (InoxSet Context!11898))

(assert (=> b!6738405 (= e!4070353 ((_ map or) call!608986 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628)))))) (h!72319 s!2326))))))

(declare-fun b!6738406 () Bool)

(declare-fun e!4070351 () (InoxSet Context!11898))

(assert (=> b!6738406 (= e!4070351 call!608986)))

(declare-fun b!6738407 () Bool)

(assert (=> b!6738407 (= e!4070352 (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628)))))))))

(declare-fun b!6738408 () Bool)

(assert (=> b!6738408 (= e!4070353 e!4070351)))

(declare-fun c!1249867 () Bool)

(assert (=> b!6738408 (= c!1249867 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628))))))))

(declare-fun bm!608981 () Bool)

(assert (=> bm!608981 (= call!608986 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628))))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438628)))))) (h!72319 s!2326)))))

(declare-fun b!6738409 () Bool)

(assert (=> b!6738409 (= e!4070351 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2117138 res!2756432) b!6738407))

(assert (= (and d!2117138 c!1249866) b!6738405))

(assert (= (and d!2117138 (not c!1249866)) b!6738408))

(assert (= (and b!6738408 c!1249867) b!6738406))

(assert (= (and b!6738408 (not c!1249867)) b!6738409))

(assert (= (or b!6738405 b!6738406) bm!608981))

(declare-fun m!7495388 () Bool)

(assert (=> b!6738405 m!7495388))

(declare-fun m!7495390 () Bool)

(assert (=> b!6738407 m!7495390))

(declare-fun m!7495392 () Bool)

(assert (=> bm!608981 m!7495392))

(assert (=> b!6738064 d!2117138))

(declare-fun bm!608982 () Bool)

(declare-fun call!608987 () Bool)

(declare-fun c!1249869 () Bool)

(assert (=> bm!608982 (= call!608987 (validRegex!8301 (ite c!1249869 (regOne!33643 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))) (regOne!33642 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))))))))

(declare-fun b!6738410 () Bool)

(declare-fun e!4070358 () Bool)

(declare-fun e!4070360 () Bool)

(assert (=> b!6738410 (= e!4070358 e!4070360)))

(declare-fun res!2756436 () Bool)

(assert (=> b!6738410 (=> (not res!2756436) (not e!4070360))))

(assert (=> b!6738410 (= res!2756436 call!608987)))

(declare-fun call!608989 () Bool)

(declare-fun bm!608983 () Bool)

(declare-fun c!1249868 () Bool)

(assert (=> bm!608983 (= call!608989 (validRegex!8301 (ite c!1249868 (reg!16894 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))) (ite c!1249869 (regTwo!33643 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))) (regTwo!33642 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292)))))))))

(declare-fun b!6738411 () Bool)

(declare-fun e!4070356 () Bool)

(declare-fun call!608988 () Bool)

(assert (=> b!6738411 (= e!4070356 call!608988)))

(declare-fun b!6738412 () Bool)

(declare-fun e!4070357 () Bool)

(assert (=> b!6738412 (= e!4070357 call!608989)))

(declare-fun b!6738413 () Bool)

(declare-fun e!4070359 () Bool)

(declare-fun e!4070354 () Bool)

(assert (=> b!6738413 (= e!4070359 e!4070354)))

(assert (=> b!6738413 (= c!1249868 ((_ is Star!16565) (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))))))

(declare-fun b!6738414 () Bool)

(assert (=> b!6738414 (= e!4070360 call!608988)))

(declare-fun b!6738415 () Bool)

(assert (=> b!6738415 (= e!4070354 e!4070357)))

(declare-fun res!2756437 () Bool)

(assert (=> b!6738415 (= res!2756437 (not (nullable!6552 (reg!16894 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))))))))

(assert (=> b!6738415 (=> (not res!2756437) (not e!4070357))))

(declare-fun b!6738416 () Bool)

(declare-fun e!4070355 () Bool)

(assert (=> b!6738416 (= e!4070354 e!4070355)))

(assert (=> b!6738416 (= c!1249869 ((_ is Union!16565) (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))))))

(declare-fun d!2117140 () Bool)

(declare-fun res!2756434 () Bool)

(assert (=> d!2117140 (=> res!2756434 e!4070359)))

(assert (=> d!2117140 (= res!2756434 ((_ is ElementMatch!16565) (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))))))

(assert (=> d!2117140 (= (validRegex!8301 (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292))) e!4070359)))

(declare-fun bm!608984 () Bool)

(assert (=> bm!608984 (= call!608988 call!608989)))

(declare-fun b!6738417 () Bool)

(declare-fun res!2756435 () Bool)

(assert (=> b!6738417 (=> res!2756435 e!4070358)))

(assert (=> b!6738417 (= res!2756435 (not ((_ is Concat!25410) (ite c!1249707 (regOne!33643 r!7292) (regOne!33642 r!7292)))))))

(assert (=> b!6738417 (= e!4070355 e!4070358)))

(declare-fun b!6738418 () Bool)

(declare-fun res!2756433 () Bool)

(assert (=> b!6738418 (=> (not res!2756433) (not e!4070356))))

(assert (=> b!6738418 (= res!2756433 call!608987)))

(assert (=> b!6738418 (= e!4070355 e!4070356)))

(assert (= (and d!2117140 (not res!2756434)) b!6738413))

(assert (= (and b!6738413 c!1249868) b!6738415))

(assert (= (and b!6738413 (not c!1249868)) b!6738416))

(assert (= (and b!6738415 res!2756437) b!6738412))

(assert (= (and b!6738416 c!1249869) b!6738418))

(assert (= (and b!6738416 (not c!1249869)) b!6738417))

(assert (= (and b!6738418 res!2756433) b!6738411))

(assert (= (and b!6738417 (not res!2756435)) b!6738410))

(assert (= (and b!6738410 res!2756436) b!6738414))

(assert (= (or b!6738411 b!6738414) bm!608984))

(assert (= (or b!6738418 b!6738410) bm!608982))

(assert (= (or b!6738412 bm!608984) bm!608983))

(declare-fun m!7495394 () Bool)

(assert (=> bm!608982 m!7495394))

(declare-fun m!7495396 () Bool)

(assert (=> bm!608983 m!7495396))

(declare-fun m!7495398 () Bool)

(assert (=> b!6738415 m!7495398))

(assert (=> bm!608896 d!2117140))

(declare-fun bm!608985 () Bool)

(declare-fun call!608990 () Bool)

(declare-fun c!1249871 () Bool)

(assert (=> bm!608985 (= call!608990 (validRegex!8301 (ite c!1249871 (regOne!33643 lt!2438698) (regOne!33642 lt!2438698))))))

(declare-fun b!6738419 () Bool)

(declare-fun e!4070365 () Bool)

(declare-fun e!4070367 () Bool)

(assert (=> b!6738419 (= e!4070365 e!4070367)))

(declare-fun res!2756441 () Bool)

(assert (=> b!6738419 (=> (not res!2756441) (not e!4070367))))

(assert (=> b!6738419 (= res!2756441 call!608990)))

(declare-fun c!1249870 () Bool)

(declare-fun bm!608986 () Bool)

(declare-fun call!608992 () Bool)

(assert (=> bm!608986 (= call!608992 (validRegex!8301 (ite c!1249870 (reg!16894 lt!2438698) (ite c!1249871 (regTwo!33643 lt!2438698) (regTwo!33642 lt!2438698)))))))

(declare-fun b!6738420 () Bool)

(declare-fun e!4070363 () Bool)

(declare-fun call!608991 () Bool)

(assert (=> b!6738420 (= e!4070363 call!608991)))

(declare-fun b!6738421 () Bool)

(declare-fun e!4070364 () Bool)

(assert (=> b!6738421 (= e!4070364 call!608992)))

(declare-fun b!6738422 () Bool)

(declare-fun e!4070366 () Bool)

(declare-fun e!4070361 () Bool)

(assert (=> b!6738422 (= e!4070366 e!4070361)))

(assert (=> b!6738422 (= c!1249870 ((_ is Star!16565) lt!2438698))))

(declare-fun b!6738423 () Bool)

(assert (=> b!6738423 (= e!4070367 call!608991)))

(declare-fun b!6738424 () Bool)

(assert (=> b!6738424 (= e!4070361 e!4070364)))

(declare-fun res!2756442 () Bool)

(assert (=> b!6738424 (= res!2756442 (not (nullable!6552 (reg!16894 lt!2438698))))))

(assert (=> b!6738424 (=> (not res!2756442) (not e!4070364))))

(declare-fun b!6738425 () Bool)

(declare-fun e!4070362 () Bool)

(assert (=> b!6738425 (= e!4070361 e!4070362)))

(assert (=> b!6738425 (= c!1249871 ((_ is Union!16565) lt!2438698))))

(declare-fun d!2117142 () Bool)

(declare-fun res!2756439 () Bool)

(assert (=> d!2117142 (=> res!2756439 e!4070366)))

(assert (=> d!2117142 (= res!2756439 ((_ is ElementMatch!16565) lt!2438698))))

(assert (=> d!2117142 (= (validRegex!8301 lt!2438698) e!4070366)))

(declare-fun bm!608987 () Bool)

(assert (=> bm!608987 (= call!608991 call!608992)))

(declare-fun b!6738426 () Bool)

(declare-fun res!2756440 () Bool)

(assert (=> b!6738426 (=> res!2756440 e!4070365)))

(assert (=> b!6738426 (= res!2756440 (not ((_ is Concat!25410) lt!2438698)))))

(assert (=> b!6738426 (= e!4070362 e!4070365)))

(declare-fun b!6738427 () Bool)

(declare-fun res!2756438 () Bool)

(assert (=> b!6738427 (=> (not res!2756438) (not e!4070363))))

(assert (=> b!6738427 (= res!2756438 call!608990)))

(assert (=> b!6738427 (= e!4070362 e!4070363)))

(assert (= (and d!2117142 (not res!2756439)) b!6738422))

(assert (= (and b!6738422 c!1249870) b!6738424))

(assert (= (and b!6738422 (not c!1249870)) b!6738425))

(assert (= (and b!6738424 res!2756442) b!6738421))

(assert (= (and b!6738425 c!1249871) b!6738427))

(assert (= (and b!6738425 (not c!1249871)) b!6738426))

(assert (= (and b!6738427 res!2756438) b!6738420))

(assert (= (and b!6738426 (not res!2756440)) b!6738419))

(assert (= (and b!6738419 res!2756441) b!6738423))

(assert (= (or b!6738420 b!6738423) bm!608987))

(assert (= (or b!6738427 b!6738419) bm!608985))

(assert (= (or b!6738421 bm!608987) bm!608986))

(declare-fun m!7495400 () Bool)

(assert (=> bm!608985 m!7495400))

(declare-fun m!7495402 () Bool)

(assert (=> bm!608986 m!7495402))

(declare-fun m!7495404 () Bool)

(assert (=> b!6738424 m!7495404))

(assert (=> d!2116962 d!2117142))

(declare-fun d!2117144 () Bool)

(declare-fun res!2756443 () Bool)

(declare-fun e!4070368 () Bool)

(assert (=> d!2117144 (=> res!2756443 e!4070368)))

(assert (=> d!2117144 (= res!2756443 ((_ is Nil!65870) (exprs!6449 (h!72320 zl!343))))))

(assert (=> d!2117144 (= (forall!15765 (exprs!6449 (h!72320 zl!343)) lambda!378417) e!4070368)))

(declare-fun b!6738428 () Bool)

(declare-fun e!4070369 () Bool)

(assert (=> b!6738428 (= e!4070368 e!4070369)))

(declare-fun res!2756444 () Bool)

(assert (=> b!6738428 (=> (not res!2756444) (not e!4070369))))

(assert (=> b!6738428 (= res!2756444 (dynLambda!26281 lambda!378417 (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6738429 () Bool)

(assert (=> b!6738429 (= e!4070369 (forall!15765 (t!379689 (exprs!6449 (h!72320 zl!343))) lambda!378417))))

(assert (= (and d!2117144 (not res!2756443)) b!6738428))

(assert (= (and b!6738428 res!2756444) b!6738429))

(declare-fun b_lambda!253727 () Bool)

(assert (=> (not b_lambda!253727) (not b!6738428)))

(declare-fun m!7495406 () Bool)

(assert (=> b!6738428 m!7495406))

(declare-fun m!7495408 () Bool)

(assert (=> b!6738429 m!7495408))

(assert (=> d!2116962 d!2117144))

(declare-fun d!2117146 () Bool)

(declare-fun c!1249872 () Bool)

(declare-fun e!4070371 () Bool)

(assert (=> d!2117146 (= c!1249872 e!4070371)))

(declare-fun res!2756445 () Bool)

(assert (=> d!2117146 (=> (not res!2756445) (not e!4070371))))

(assert (=> d!2117146 (= res!2756445 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))))

(declare-fun e!4070372 () (InoxSet Context!11898))

(assert (=> d!2117146 (= (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))) (h!72319 s!2326)) e!4070372)))

(declare-fun call!608993 () (InoxSet Context!11898))

(declare-fun b!6738430 () Bool)

(assert (=> b!6738430 (= e!4070372 ((_ map or) call!608993 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))) (h!72319 s!2326))))))

(declare-fun b!6738431 () Bool)

(declare-fun e!4070370 () (InoxSet Context!11898))

(assert (=> b!6738431 (= e!4070370 call!608993)))

(declare-fun b!6738432 () Bool)

(assert (=> b!6738432 (= e!4070371 (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))))))

(declare-fun b!6738433 () Bool)

(assert (=> b!6738433 (= e!4070372 e!4070370)))

(declare-fun c!1249873 () Bool)

(assert (=> b!6738433 (= c!1249873 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))))))

(declare-fun bm!608988 () Bool)

(assert (=> bm!608988 (= call!608993 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870))))))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (Cons!65870 r!7292 Nil!65870)))))))) (h!72319 s!2326)))))

(declare-fun b!6738434 () Bool)

(assert (=> b!6738434 (= e!4070370 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2117146 res!2756445) b!6738432))

(assert (= (and d!2117146 c!1249872) b!6738430))

(assert (= (and d!2117146 (not c!1249872)) b!6738433))

(assert (= (and b!6738433 c!1249873) b!6738431))

(assert (= (and b!6738433 (not c!1249873)) b!6738434))

(assert (= (or b!6738430 b!6738431) bm!608988))

(declare-fun m!7495410 () Bool)

(assert (=> b!6738430 m!7495410))

(declare-fun m!7495412 () Bool)

(assert (=> b!6738432 m!7495412))

(declare-fun m!7495414 () Bool)

(assert (=> bm!608988 m!7495414))

(assert (=> b!6737823 d!2117146))

(assert (=> b!6738143 d!2117058))

(declare-fun d!2117148 () Bool)

(assert (=> d!2117148 true))

(assert (=> d!2117148 true))

(declare-fun res!2756446 () Bool)

(assert (=> d!2117148 (= (choose!50229 lambda!378368) res!2756446)))

(assert (=> d!2116998 d!2117148))

(declare-fun d!2117150 () Bool)

(assert (=> d!2117150 (= (nullable!6552 (regOne!33642 r!7292)) (nullableFct!2465 (regOne!33642 r!7292)))))

(declare-fun bs!1791768 () Bool)

(assert (= bs!1791768 d!2117150))

(declare-fun m!7495416 () Bool)

(assert (=> bs!1791768 m!7495416))

(assert (=> b!6737800 d!2117150))

(declare-fun bs!1791769 () Bool)

(declare-fun d!2117152 () Bool)

(assert (= bs!1791769 (and d!2117152 d!2117090)))

(declare-fun lambda!378464 () Int)

(assert (=> bs!1791769 (= lambda!378464 lambda!378458)))

(declare-fun bs!1791770 () Bool)

(assert (= bs!1791770 (and d!2117152 d!2116962)))

(assert (=> bs!1791770 (= lambda!378464 lambda!378417)))

(declare-fun bs!1791771 () Bool)

(assert (= bs!1791771 (and d!2117152 d!2117068)))

(assert (=> bs!1791771 (= lambda!378464 lambda!378451)))

(declare-fun bs!1791772 () Bool)

(assert (= bs!1791772 (and d!2117152 d!2117094)))

(assert (=> bs!1791772 (= lambda!378464 lambda!378460)))

(declare-fun bs!1791773 () Bool)

(assert (= bs!1791773 (and d!2117152 d!2117092)))

(assert (=> bs!1791773 (= lambda!378464 lambda!378459)))

(declare-fun bs!1791774 () Bool)

(assert (= bs!1791774 (and d!2117152 d!2116922)))

(assert (=> bs!1791774 (= lambda!378464 lambda!378397)))

(declare-fun bs!1791775 () Bool)

(assert (= bs!1791775 (and d!2117152 d!2117098)))

(assert (=> bs!1791775 (= lambda!378464 lambda!378461)))

(declare-fun bs!1791776 () Bool)

(assert (= bs!1791776 (and d!2117152 d!2116908)))

(assert (=> bs!1791776 (= lambda!378464 lambda!378391)))

(declare-fun bs!1791777 () Bool)

(assert (= bs!1791777 (and d!2117152 d!2116944)))

(assert (=> bs!1791777 (= lambda!378464 lambda!378404)))

(declare-fun bs!1791778 () Bool)

(assert (= bs!1791778 (and d!2117152 d!2116888)))

(assert (=> bs!1791778 (= lambda!378464 lambda!378385)))

(declare-fun bs!1791779 () Bool)

(assert (= bs!1791779 (and d!2117152 d!2116876)))

(assert (=> bs!1791779 (= lambda!378464 lambda!378380)))

(assert (=> d!2117152 (= (inv!84659 setElem!45993) (forall!15765 (exprs!6449 setElem!45993) lambda!378464))))

(declare-fun bs!1791780 () Bool)

(assert (= bs!1791780 d!2117152))

(declare-fun m!7495418 () Bool)

(assert (=> bs!1791780 m!7495418))

(assert (=> setNonEmpty!45993 d!2117152))

(assert (=> d!2117018 d!2117014))

(declare-fun d!2117154 () Bool)

(assert (=> d!2117154 (= (flatMap!2046 lt!2438633 lambda!378371) (dynLambda!26280 lambda!378371 lt!2438628))))

(assert (=> d!2117154 true))

(declare-fun _$13!4068 () Unit!159821)

(assert (=> d!2117154 (= (choose!50221 lt!2438633 lt!2438628 lambda!378371) _$13!4068)))

(declare-fun b_lambda!253729 () Bool)

(assert (=> (not b_lambda!253729) (not d!2117154)))

(declare-fun bs!1791781 () Bool)

(assert (= bs!1791781 d!2117154))

(assert (=> bs!1791781 m!7494634))

(assert (=> bs!1791781 m!7495136))

(assert (=> d!2117018 d!2117154))

(declare-fun c!1249876 () Bool)

(declare-fun d!2117156 () Bool)

(assert (=> d!2117156 (= c!1249876 (and ((_ is ElementMatch!16565) (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (= (c!1249609 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (h!72319 s!2326))))))

(declare-fun e!4070378 () (InoxSet Context!11898))

(assert (=> d!2117156 (= (derivationStepZipperDown!1793 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292))))) (ite (or c!1249783 c!1249782) lt!2438637 (Context!11899 call!608926)) (h!72319 s!2326)) e!4070378)))

(declare-fun bm!608989 () Bool)

(declare-fun call!608995 () (InoxSet Context!11898))

(declare-fun call!608994 () (InoxSet Context!11898))

(assert (=> bm!608989 (= call!608995 call!608994)))

(declare-fun b!6738435 () Bool)

(declare-fun e!4070374 () Bool)

(assert (=> b!6738435 (= e!4070374 (nullable!6552 (regOne!33642 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292))))))))))

(declare-fun b!6738436 () Bool)

(declare-fun e!4070377 () (InoxSet Context!11898))

(declare-fun call!608999 () (InoxSet Context!11898))

(declare-fun call!608997 () (InoxSet Context!11898))

(assert (=> b!6738436 (= e!4070377 ((_ map or) call!608999 call!608997))))

(declare-fun b!6738437 () Bool)

(assert (=> b!6738437 (= e!4070378 (store ((as const (Array Context!11898 Bool)) false) (ite (or c!1249783 c!1249782) lt!2438637 (Context!11899 call!608926)) true))))

(declare-fun bm!608990 () Bool)

(assert (=> bm!608990 (= call!608994 call!608999)))

(declare-fun b!6738438 () Bool)

(declare-fun e!4070373 () (InoxSet Context!11898))

(assert (=> b!6738438 (= e!4070373 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738439 () Bool)

(assert (=> b!6738439 (= e!4070378 e!4070377)))

(declare-fun c!1249875 () Bool)

(assert (=> b!6738439 (= c!1249875 ((_ is Union!16565) (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))))))

(declare-fun bm!608991 () Bool)

(declare-fun call!608998 () List!65994)

(declare-fun c!1249877 () Bool)

(declare-fun c!1249874 () Bool)

(assert (=> bm!608991 (= call!608998 ($colon$colon!2382 (exprs!6449 (ite (or c!1249783 c!1249782) lt!2438637 (Context!11899 call!608926))) (ite (or c!1249874 c!1249877) (regTwo!33642 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292))))))))))

(declare-fun b!6738440 () Bool)

(declare-fun e!4070375 () (InoxSet Context!11898))

(assert (=> b!6738440 (= e!4070375 call!608995)))

(declare-fun b!6738441 () Bool)

(declare-fun e!4070376 () (InoxSet Context!11898))

(assert (=> b!6738441 (= e!4070376 e!4070375)))

(assert (=> b!6738441 (= c!1249877 ((_ is Concat!25410) (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))))))

(declare-fun bm!608992 () Bool)

(declare-fun call!608996 () List!65994)

(assert (=> bm!608992 (= call!608996 call!608998)))

(declare-fun b!6738442 () Bool)

(assert (=> b!6738442 (= c!1249874 e!4070374)))

(declare-fun res!2756447 () Bool)

(assert (=> b!6738442 (=> (not res!2756447) (not e!4070374))))

(assert (=> b!6738442 (= res!2756447 ((_ is Concat!25410) (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))))))

(assert (=> b!6738442 (= e!4070377 e!4070376)))

(declare-fun bm!608993 () Bool)

(assert (=> bm!608993 (= call!608999 (derivationStepZipperDown!1793 (ite c!1249875 (regOne!33643 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (ite c!1249874 (regTwo!33642 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (ite c!1249877 (regOne!33642 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (reg!16894 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292))))))))) (ite (or c!1249875 c!1249874) (ite (or c!1249783 c!1249782) lt!2438637 (Context!11899 call!608926)) (Context!11899 call!608996)) (h!72319 s!2326)))))

(declare-fun bm!608994 () Bool)

(assert (=> bm!608994 (= call!608997 (derivationStepZipperDown!1793 (ite c!1249875 (regTwo!33643 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))) (regOne!33642 (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292))))))) (ite c!1249875 (ite (or c!1249783 c!1249782) lt!2438637 (Context!11899 call!608926)) (Context!11899 call!608998)) (h!72319 s!2326)))))

(declare-fun b!6738443 () Bool)

(declare-fun c!1249878 () Bool)

(assert (=> b!6738443 (= c!1249878 ((_ is Star!16565) (ite c!1249783 (regOne!33643 (reg!16894 r!7292)) (ite c!1249782 (regTwo!33642 (reg!16894 r!7292)) (ite c!1249785 (regOne!33642 (reg!16894 r!7292)) (reg!16894 (reg!16894 r!7292)))))))))

(assert (=> b!6738443 (= e!4070375 e!4070373)))

(declare-fun b!6738444 () Bool)

(assert (=> b!6738444 (= e!4070376 ((_ map or) call!608997 call!608994))))

(declare-fun b!6738445 () Bool)

(assert (=> b!6738445 (= e!4070373 call!608995)))

(assert (= (and d!2117156 c!1249876) b!6738437))

(assert (= (and d!2117156 (not c!1249876)) b!6738439))

(assert (= (and b!6738439 c!1249875) b!6738436))

(assert (= (and b!6738439 (not c!1249875)) b!6738442))

(assert (= (and b!6738442 res!2756447) b!6738435))

(assert (= (and b!6738442 c!1249874) b!6738444))

(assert (= (and b!6738442 (not c!1249874)) b!6738441))

(assert (= (and b!6738441 c!1249877) b!6738440))

(assert (= (and b!6738441 (not c!1249877)) b!6738443))

(assert (= (and b!6738443 c!1249878) b!6738445))

(assert (= (and b!6738443 (not c!1249878)) b!6738438))

(assert (= (or b!6738440 b!6738445) bm!608992))

(assert (= (or b!6738440 b!6738445) bm!608989))

(assert (= (or b!6738444 bm!608992) bm!608991))

(assert (= (or b!6738444 bm!608989) bm!608990))

(assert (= (or b!6738436 b!6738444) bm!608994))

(assert (= (or b!6738436 bm!608990) bm!608993))

(declare-fun m!7495420 () Bool)

(assert (=> bm!608991 m!7495420))

(declare-fun m!7495422 () Bool)

(assert (=> b!6738435 m!7495422))

(declare-fun m!7495424 () Bool)

(assert (=> b!6738437 m!7495424))

(declare-fun m!7495426 () Bool)

(assert (=> bm!608993 m!7495426))

(declare-fun m!7495428 () Bool)

(assert (=> bm!608994 m!7495428))

(assert (=> bm!608923 d!2117156))

(declare-fun d!2117158 () Bool)

(declare-fun c!1249879 () Bool)

(declare-fun e!4070380 () Bool)

(assert (=> d!2117158 (= c!1249879 e!4070380)))

(declare-fun res!2756448 () Bool)

(assert (=> d!2117158 (=> (not res!2756448) (not e!4070380))))

(assert (=> d!2117158 (= res!2756448 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625))))))))

(declare-fun e!4070381 () (InoxSet Context!11898))

(assert (=> d!2117158 (= (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 lt!2438625))) (h!72319 s!2326)) e!4070381)))

(declare-fun call!609000 () (InoxSet Context!11898))

(declare-fun b!6738446 () Bool)

(assert (=> b!6738446 (= e!4070381 ((_ map or) call!609000 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625)))))) (h!72319 s!2326))))))

(declare-fun b!6738447 () Bool)

(declare-fun e!4070379 () (InoxSet Context!11898))

(assert (=> b!6738447 (= e!4070379 call!609000)))

(declare-fun b!6738448 () Bool)

(assert (=> b!6738448 (= e!4070380 (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625)))))))))

(declare-fun b!6738449 () Bool)

(assert (=> b!6738449 (= e!4070381 e!4070379)))

(declare-fun c!1249880 () Bool)

(assert (=> b!6738449 (= c!1249880 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625))))))))

(declare-fun bm!608995 () Bool)

(assert (=> bm!608995 (= call!609000 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625))))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625)))))) (h!72319 s!2326)))))

(declare-fun b!6738450 () Bool)

(assert (=> b!6738450 (= e!4070379 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2117158 res!2756448) b!6738448))

(assert (= (and d!2117158 c!1249879) b!6738446))

(assert (= (and d!2117158 (not c!1249879)) b!6738449))

(assert (= (and b!6738449 c!1249880) b!6738447))

(assert (= (and b!6738449 (not c!1249880)) b!6738450))

(assert (= (or b!6738446 b!6738447) bm!608995))

(declare-fun m!7495430 () Bool)

(assert (=> b!6738446 m!7495430))

(declare-fun m!7495432 () Bool)

(assert (=> b!6738448 m!7495432))

(declare-fun m!7495434 () Bool)

(assert (=> bm!608995 m!7495434))

(assert (=> b!6737492 d!2117158))

(declare-fun bs!1791782 () Bool)

(declare-fun d!2117160 () Bool)

(assert (= bs!1791782 (and d!2117160 d!2117090)))

(declare-fun lambda!378465 () Int)

(assert (=> bs!1791782 (= lambda!378465 lambda!378458)))

(declare-fun bs!1791783 () Bool)

(assert (= bs!1791783 (and d!2117160 d!2116962)))

(assert (=> bs!1791783 (= lambda!378465 lambda!378417)))

(declare-fun bs!1791784 () Bool)

(assert (= bs!1791784 (and d!2117160 d!2117068)))

(assert (=> bs!1791784 (= lambda!378465 lambda!378451)))

(declare-fun bs!1791785 () Bool)

(assert (= bs!1791785 (and d!2117160 d!2117094)))

(assert (=> bs!1791785 (= lambda!378465 lambda!378460)))

(declare-fun bs!1791786 () Bool)

(assert (= bs!1791786 (and d!2117160 d!2116922)))

(assert (=> bs!1791786 (= lambda!378465 lambda!378397)))

(declare-fun bs!1791787 () Bool)

(assert (= bs!1791787 (and d!2117160 d!2117098)))

(assert (=> bs!1791787 (= lambda!378465 lambda!378461)))

(declare-fun bs!1791788 () Bool)

(assert (= bs!1791788 (and d!2117160 d!2116908)))

(assert (=> bs!1791788 (= lambda!378465 lambda!378391)))

(declare-fun bs!1791789 () Bool)

(assert (= bs!1791789 (and d!2117160 d!2116944)))

(assert (=> bs!1791789 (= lambda!378465 lambda!378404)))

(declare-fun bs!1791790 () Bool)

(assert (= bs!1791790 (and d!2117160 d!2116888)))

(assert (=> bs!1791790 (= lambda!378465 lambda!378385)))

(declare-fun bs!1791791 () Bool)

(assert (= bs!1791791 (and d!2117160 d!2116876)))

(assert (=> bs!1791791 (= lambda!378465 lambda!378380)))

(declare-fun bs!1791792 () Bool)

(assert (= bs!1791792 (and d!2117160 d!2117152)))

(assert (=> bs!1791792 (= lambda!378465 lambda!378464)))

(declare-fun bs!1791793 () Bool)

(assert (= bs!1791793 (and d!2117160 d!2117092)))

(assert (=> bs!1791793 (= lambda!378465 lambda!378459)))

(declare-fun b!6738451 () Bool)

(declare-fun e!4070386 () Bool)

(declare-fun e!4070385 () Bool)

(assert (=> b!6738451 (= e!4070386 e!4070385)))

(declare-fun c!1249882 () Bool)

(assert (=> b!6738451 (= c!1249882 (isEmpty!38211 (t!379689 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6738452 () Bool)

(declare-fun e!4070384 () Bool)

(assert (=> b!6738452 (= e!4070385 e!4070384)))

(declare-fun c!1249883 () Bool)

(assert (=> b!6738452 (= c!1249883 (isEmpty!38211 (tail!12642 (t!379689 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6738453 () Bool)

(declare-fun lt!2438743 () Regex!16565)

(assert (=> b!6738453 (= e!4070384 (isConcat!1453 lt!2438743))))

(declare-fun b!6738454 () Bool)

(assert (=> b!6738454 (= e!4070384 (= lt!2438743 (head!13557 (t!379689 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6738455 () Bool)

(declare-fun e!4070387 () Regex!16565)

(assert (=> b!6738455 (= e!4070387 (h!72318 (t!379689 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> d!2117160 e!4070386))

(declare-fun res!2756449 () Bool)

(assert (=> d!2117160 (=> (not res!2756449) (not e!4070386))))

(assert (=> d!2117160 (= res!2756449 (validRegex!8301 lt!2438743))))

(assert (=> d!2117160 (= lt!2438743 e!4070387)))

(declare-fun c!1249884 () Bool)

(declare-fun e!4070383 () Bool)

(assert (=> d!2117160 (= c!1249884 e!4070383)))

(declare-fun res!2756450 () Bool)

(assert (=> d!2117160 (=> (not res!2756450) (not e!4070383))))

(assert (=> d!2117160 (= res!2756450 ((_ is Cons!65870) (t!379689 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> d!2117160 (forall!15765 (t!379689 (exprs!6449 (h!72320 zl!343))) lambda!378465)))

(assert (=> d!2117160 (= (generalisedConcat!2162 (t!379689 (exprs!6449 (h!72320 zl!343)))) lt!2438743)))

(declare-fun b!6738456 () Bool)

(declare-fun e!4070382 () Regex!16565)

(assert (=> b!6738456 (= e!4070382 (Concat!25410 (h!72318 (t!379689 (exprs!6449 (h!72320 zl!343)))) (generalisedConcat!2162 (t!379689 (t!379689 (exprs!6449 (h!72320 zl!343)))))))))

(declare-fun b!6738457 () Bool)

(assert (=> b!6738457 (= e!4070383 (isEmpty!38211 (t!379689 (t!379689 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6738458 () Bool)

(assert (=> b!6738458 (= e!4070385 (isEmptyExpr!1930 lt!2438743))))

(declare-fun b!6738459 () Bool)

(assert (=> b!6738459 (= e!4070382 EmptyExpr!16565)))

(declare-fun b!6738460 () Bool)

(assert (=> b!6738460 (= e!4070387 e!4070382)))

(declare-fun c!1249881 () Bool)

(assert (=> b!6738460 (= c!1249881 ((_ is Cons!65870) (t!379689 (exprs!6449 (h!72320 zl!343)))))))

(assert (= (and d!2117160 res!2756450) b!6738457))

(assert (= (and d!2117160 c!1249884) b!6738455))

(assert (= (and d!2117160 (not c!1249884)) b!6738460))

(assert (= (and b!6738460 c!1249881) b!6738456))

(assert (= (and b!6738460 (not c!1249881)) b!6738459))

(assert (= (and d!2117160 res!2756449) b!6738451))

(assert (= (and b!6738451 c!1249882) b!6738458))

(assert (= (and b!6738451 (not c!1249882)) b!6738452))

(assert (= (and b!6738452 c!1249883) b!6738454))

(assert (= (and b!6738452 (not c!1249883)) b!6738453))

(assert (=> b!6738451 m!7494974))

(declare-fun m!7495436 () Bool)

(assert (=> b!6738456 m!7495436))

(declare-fun m!7495438 () Bool)

(assert (=> d!2117160 m!7495438))

(declare-fun m!7495440 () Bool)

(assert (=> d!2117160 m!7495440))

(declare-fun m!7495442 () Bool)

(assert (=> b!6738454 m!7495442))

(declare-fun m!7495444 () Bool)

(assert (=> b!6738452 m!7495444))

(assert (=> b!6738452 m!7495444))

(declare-fun m!7495446 () Bool)

(assert (=> b!6738452 m!7495446))

(declare-fun m!7495448 () Bool)

(assert (=> b!6738458 m!7495448))

(declare-fun m!7495450 () Bool)

(assert (=> b!6738457 m!7495450))

(declare-fun m!7495452 () Bool)

(assert (=> b!6738453 m!7495452))

(assert (=> b!6737866 d!2117160))

(declare-fun d!2117162 () Bool)

(assert (=> d!2117162 (= (flatMap!2046 z!1189 lambda!378411) (choose!50222 z!1189 lambda!378411))))

(declare-fun bs!1791794 () Bool)

(assert (= bs!1791794 d!2117162))

(declare-fun m!7495454 () Bool)

(assert (=> bs!1791794 m!7495454))

(assert (=> d!2116960 d!2117162))

(declare-fun d!2117164 () Bool)

(assert (=> d!2117164 (= (isEmpty!38211 (unfocusZipperList!1986 zl!343)) ((_ is Nil!65870) (unfocusZipperList!1986 zl!343)))))

(assert (=> b!6737687 d!2117164))

(assert (=> bs!1791687 d!2116864))

(declare-fun d!2117166 () Bool)

(declare-fun c!1249887 () Bool)

(assert (=> d!2117166 (= c!1249887 (and ((_ is ElementMatch!16565) (h!72318 (exprs!6449 lt!2438625))) (= (c!1249609 (h!72318 (exprs!6449 lt!2438625))) (h!72319 s!2326))))))

(declare-fun e!4070393 () (InoxSet Context!11898))

(assert (=> d!2117166 (= (derivationStepZipperDown!1793 (h!72318 (exprs!6449 lt!2438625)) (Context!11899 (t!379689 (exprs!6449 lt!2438625))) (h!72319 s!2326)) e!4070393)))

(declare-fun bm!608996 () Bool)

(declare-fun call!609002 () (InoxSet Context!11898))

(declare-fun call!609001 () (InoxSet Context!11898))

(assert (=> bm!608996 (= call!609002 call!609001)))

(declare-fun b!6738461 () Bool)

(declare-fun e!4070389 () Bool)

(assert (=> b!6738461 (= e!4070389 (nullable!6552 (regOne!33642 (h!72318 (exprs!6449 lt!2438625)))))))

(declare-fun b!6738462 () Bool)

(declare-fun e!4070392 () (InoxSet Context!11898))

(declare-fun call!609006 () (InoxSet Context!11898))

(declare-fun call!609004 () (InoxSet Context!11898))

(assert (=> b!6738462 (= e!4070392 ((_ map or) call!609006 call!609004))))

(declare-fun b!6738463 () Bool)

(assert (=> b!6738463 (= e!4070393 (store ((as const (Array Context!11898 Bool)) false) (Context!11899 (t!379689 (exprs!6449 lt!2438625))) true))))

(declare-fun bm!608997 () Bool)

(assert (=> bm!608997 (= call!609001 call!609006)))

(declare-fun b!6738464 () Bool)

(declare-fun e!4070388 () (InoxSet Context!11898))

(assert (=> b!6738464 (= e!4070388 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738465 () Bool)

(assert (=> b!6738465 (= e!4070393 e!4070392)))

(declare-fun c!1249886 () Bool)

(assert (=> b!6738465 (= c!1249886 ((_ is Union!16565) (h!72318 (exprs!6449 lt!2438625))))))

(declare-fun call!609005 () List!65994)

(declare-fun c!1249885 () Bool)

(declare-fun c!1249888 () Bool)

(declare-fun bm!608998 () Bool)

(assert (=> bm!608998 (= call!609005 ($colon$colon!2382 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 lt!2438625)))) (ite (or c!1249885 c!1249888) (regTwo!33642 (h!72318 (exprs!6449 lt!2438625))) (h!72318 (exprs!6449 lt!2438625)))))))

(declare-fun b!6738466 () Bool)

(declare-fun e!4070390 () (InoxSet Context!11898))

(assert (=> b!6738466 (= e!4070390 call!609002)))

(declare-fun b!6738467 () Bool)

(declare-fun e!4070391 () (InoxSet Context!11898))

(assert (=> b!6738467 (= e!4070391 e!4070390)))

(assert (=> b!6738467 (= c!1249888 ((_ is Concat!25410) (h!72318 (exprs!6449 lt!2438625))))))

(declare-fun bm!608999 () Bool)

(declare-fun call!609003 () List!65994)

(assert (=> bm!608999 (= call!609003 call!609005)))

(declare-fun b!6738468 () Bool)

(assert (=> b!6738468 (= c!1249885 e!4070389)))

(declare-fun res!2756451 () Bool)

(assert (=> b!6738468 (=> (not res!2756451) (not e!4070389))))

(assert (=> b!6738468 (= res!2756451 ((_ is Concat!25410) (h!72318 (exprs!6449 lt!2438625))))))

(assert (=> b!6738468 (= e!4070392 e!4070391)))

(declare-fun bm!609000 () Bool)

(assert (=> bm!609000 (= call!609006 (derivationStepZipperDown!1793 (ite c!1249886 (regOne!33643 (h!72318 (exprs!6449 lt!2438625))) (ite c!1249885 (regTwo!33642 (h!72318 (exprs!6449 lt!2438625))) (ite c!1249888 (regOne!33642 (h!72318 (exprs!6449 lt!2438625))) (reg!16894 (h!72318 (exprs!6449 lt!2438625)))))) (ite (or c!1249886 c!1249885) (Context!11899 (t!379689 (exprs!6449 lt!2438625))) (Context!11899 call!609003)) (h!72319 s!2326)))))

(declare-fun bm!609001 () Bool)

(assert (=> bm!609001 (= call!609004 (derivationStepZipperDown!1793 (ite c!1249886 (regTwo!33643 (h!72318 (exprs!6449 lt!2438625))) (regOne!33642 (h!72318 (exprs!6449 lt!2438625)))) (ite c!1249886 (Context!11899 (t!379689 (exprs!6449 lt!2438625))) (Context!11899 call!609005)) (h!72319 s!2326)))))

(declare-fun b!6738469 () Bool)

(declare-fun c!1249889 () Bool)

(assert (=> b!6738469 (= c!1249889 ((_ is Star!16565) (h!72318 (exprs!6449 lt!2438625))))))

(assert (=> b!6738469 (= e!4070390 e!4070388)))

(declare-fun b!6738470 () Bool)

(assert (=> b!6738470 (= e!4070391 ((_ map or) call!609004 call!609001))))

(declare-fun b!6738471 () Bool)

(assert (=> b!6738471 (= e!4070388 call!609002)))

(assert (= (and d!2117166 c!1249887) b!6738463))

(assert (= (and d!2117166 (not c!1249887)) b!6738465))

(assert (= (and b!6738465 c!1249886) b!6738462))

(assert (= (and b!6738465 (not c!1249886)) b!6738468))

(assert (= (and b!6738468 res!2756451) b!6738461))

(assert (= (and b!6738468 c!1249885) b!6738470))

(assert (= (and b!6738468 (not c!1249885)) b!6738467))

(assert (= (and b!6738467 c!1249888) b!6738466))

(assert (= (and b!6738467 (not c!1249888)) b!6738469))

(assert (= (and b!6738469 c!1249889) b!6738471))

(assert (= (and b!6738469 (not c!1249889)) b!6738464))

(assert (= (or b!6738466 b!6738471) bm!608999))

(assert (= (or b!6738466 b!6738471) bm!608996))

(assert (= (or b!6738470 bm!608999) bm!608998))

(assert (= (or b!6738470 bm!608996) bm!608997))

(assert (= (or b!6738462 b!6738470) bm!609001))

(assert (= (or b!6738462 bm!608997) bm!609000))

(declare-fun m!7495456 () Bool)

(assert (=> bm!608998 m!7495456))

(declare-fun m!7495458 () Bool)

(assert (=> b!6738461 m!7495458))

(declare-fun m!7495460 () Bool)

(assert (=> b!6738463 m!7495460))

(declare-fun m!7495462 () Bool)

(assert (=> bm!609000 m!7495462))

(declare-fun m!7495464 () Bool)

(assert (=> bm!609001 m!7495464))

(assert (=> bm!608843 d!2117166))

(declare-fun d!2117168 () Bool)

(assert (=> d!2117168 (= (isEmpty!38211 (tail!12642 (exprs!6449 (h!72320 zl!343)))) ((_ is Nil!65870) (tail!12642 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> b!6737862 d!2117168))

(declare-fun d!2117170 () Bool)

(assert (=> d!2117170 (= (tail!12642 (exprs!6449 (h!72320 zl!343))) (t!379689 (exprs!6449 (h!72320 zl!343))))))

(assert (=> b!6737862 d!2117170))

(declare-fun b!6738472 () Bool)

(declare-fun e!4070397 () Bool)

(assert (=> b!6738472 (= e!4070397 (matchR!8748 (derivativeStep!5237 r!7292 (head!13556 (_2!36843 (get!22919 lt!2438723)))) (tail!12641 (_2!36843 (get!22919 lt!2438723)))))))

(declare-fun d!2117172 () Bool)

(declare-fun e!4070395 () Bool)

(assert (=> d!2117172 e!4070395))

(declare-fun c!1249892 () Bool)

(assert (=> d!2117172 (= c!1249892 ((_ is EmptyExpr!16565) r!7292))))

(declare-fun lt!2438744 () Bool)

(assert (=> d!2117172 (= lt!2438744 e!4070397)))

(declare-fun c!1249890 () Bool)

(assert (=> d!2117172 (= c!1249890 (isEmpty!38209 (_2!36843 (get!22919 lt!2438723))))))

(assert (=> d!2117172 (validRegex!8301 r!7292)))

(assert (=> d!2117172 (= (matchR!8748 r!7292 (_2!36843 (get!22919 lt!2438723))) lt!2438744)))

(declare-fun b!6738473 () Bool)

(declare-fun e!4070400 () Bool)

(assert (=> b!6738473 (= e!4070400 (not lt!2438744))))

(declare-fun b!6738474 () Bool)

(declare-fun res!2756457 () Bool)

(declare-fun e!4070399 () Bool)

(assert (=> b!6738474 (=> res!2756457 e!4070399)))

(declare-fun e!4070394 () Bool)

(assert (=> b!6738474 (= res!2756457 e!4070394)))

(declare-fun res!2756458 () Bool)

(assert (=> b!6738474 (=> (not res!2756458) (not e!4070394))))

(assert (=> b!6738474 (= res!2756458 lt!2438744)))

(declare-fun b!6738475 () Bool)

(declare-fun e!4070398 () Bool)

(assert (=> b!6738475 (= e!4070398 (not (= (head!13556 (_2!36843 (get!22919 lt!2438723))) (c!1249609 r!7292))))))

(declare-fun b!6738476 () Bool)

(declare-fun res!2756453 () Bool)

(assert (=> b!6738476 (=> (not res!2756453) (not e!4070394))))

(assert (=> b!6738476 (= res!2756453 (isEmpty!38209 (tail!12641 (_2!36843 (get!22919 lt!2438723)))))))

(declare-fun b!6738477 () Bool)

(declare-fun res!2756452 () Bool)

(assert (=> b!6738477 (=> res!2756452 e!4070398)))

(assert (=> b!6738477 (= res!2756452 (not (isEmpty!38209 (tail!12641 (_2!36843 (get!22919 lt!2438723))))))))

(declare-fun b!6738478 () Bool)

(assert (=> b!6738478 (= e!4070397 (nullable!6552 r!7292))))

(declare-fun b!6738479 () Bool)

(assert (=> b!6738479 (= e!4070394 (= (head!13556 (_2!36843 (get!22919 lt!2438723))) (c!1249609 r!7292)))))

(declare-fun b!6738480 () Bool)

(declare-fun e!4070396 () Bool)

(assert (=> b!6738480 (= e!4070396 e!4070398)))

(declare-fun res!2756454 () Bool)

(assert (=> b!6738480 (=> res!2756454 e!4070398)))

(declare-fun call!609007 () Bool)

(assert (=> b!6738480 (= res!2756454 call!609007)))

(declare-fun b!6738481 () Bool)

(assert (=> b!6738481 (= e!4070395 e!4070400)))

(declare-fun c!1249891 () Bool)

(assert (=> b!6738481 (= c!1249891 ((_ is EmptyLang!16565) r!7292))))

(declare-fun b!6738482 () Bool)

(declare-fun res!2756456 () Bool)

(assert (=> b!6738482 (=> res!2756456 e!4070399)))

(assert (=> b!6738482 (= res!2756456 (not ((_ is ElementMatch!16565) r!7292)))))

(assert (=> b!6738482 (= e!4070400 e!4070399)))

(declare-fun b!6738483 () Bool)

(assert (=> b!6738483 (= e!4070399 e!4070396)))

(declare-fun res!2756455 () Bool)

(assert (=> b!6738483 (=> (not res!2756455) (not e!4070396))))

(assert (=> b!6738483 (= res!2756455 (not lt!2438744))))

(declare-fun b!6738484 () Bool)

(declare-fun res!2756459 () Bool)

(assert (=> b!6738484 (=> (not res!2756459) (not e!4070394))))

(assert (=> b!6738484 (= res!2756459 (not call!609007))))

(declare-fun b!6738485 () Bool)

(assert (=> b!6738485 (= e!4070395 (= lt!2438744 call!609007))))

(declare-fun bm!609002 () Bool)

(assert (=> bm!609002 (= call!609007 (isEmpty!38209 (_2!36843 (get!22919 lt!2438723))))))

(assert (= (and d!2117172 c!1249890) b!6738478))

(assert (= (and d!2117172 (not c!1249890)) b!6738472))

(assert (= (and d!2117172 c!1249892) b!6738485))

(assert (= (and d!2117172 (not c!1249892)) b!6738481))

(assert (= (and b!6738481 c!1249891) b!6738473))

(assert (= (and b!6738481 (not c!1249891)) b!6738482))

(assert (= (and b!6738482 (not res!2756456)) b!6738474))

(assert (= (and b!6738474 res!2756458) b!6738484))

(assert (= (and b!6738484 res!2756459) b!6738476))

(assert (= (and b!6738476 res!2756453) b!6738479))

(assert (= (and b!6738474 (not res!2756457)) b!6738483))

(assert (= (and b!6738483 res!2756455) b!6738480))

(assert (= (and b!6738480 (not res!2756454)) b!6738477))

(assert (= (and b!6738477 (not res!2756452)) b!6738475))

(assert (= (or b!6738485 b!6738480 b!6738484) bm!609002))

(declare-fun m!7495466 () Bool)

(assert (=> bm!609002 m!7495466))

(declare-fun m!7495468 () Bool)

(assert (=> b!6738479 m!7495468))

(assert (=> b!6738472 m!7495468))

(assert (=> b!6738472 m!7495468))

(declare-fun m!7495470 () Bool)

(assert (=> b!6738472 m!7495470))

(declare-fun m!7495472 () Bool)

(assert (=> b!6738472 m!7495472))

(assert (=> b!6738472 m!7495470))

(assert (=> b!6738472 m!7495472))

(declare-fun m!7495474 () Bool)

(assert (=> b!6738472 m!7495474))

(assert (=> d!2117172 m!7495466))

(assert (=> d!2117172 m!7494624))

(assert (=> b!6738476 m!7495472))

(assert (=> b!6738476 m!7495472))

(declare-fun m!7495476 () Bool)

(assert (=> b!6738476 m!7495476))

(assert (=> b!6738475 m!7495468))

(assert (=> b!6738478 m!7495152))

(assert (=> b!6738477 m!7495472))

(assert (=> b!6738477 m!7495472))

(assert (=> b!6738477 m!7495476))

(assert (=> b!6738048 d!2117172))

(assert (=> b!6738048 d!2117122))

(declare-fun d!2117174 () Bool)

(assert (=> d!2117174 (= (isEmpty!38213 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326)) (not ((_ is Some!16451) (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326))))))

(assert (=> d!2116966 d!2117174))

(declare-fun d!2117176 () Bool)

(assert (=> d!2117176 (= (nullable!6552 (h!72318 (exprs!6449 lt!2438637))) (nullableFct!2465 (h!72318 (exprs!6449 lt!2438637))))))

(declare-fun bs!1791795 () Bool)

(assert (= bs!1791795 d!2117176))

(declare-fun m!7495478 () Bool)

(assert (=> bs!1791795 m!7495478))

(assert (=> b!6737542 d!2117176))

(declare-fun d!2117178 () Bool)

(assert (=> d!2117178 true))

(declare-fun setRes!45997 () Bool)

(assert (=> d!2117178 setRes!45997))

(declare-fun condSetEmpty!45997 () Bool)

(declare-fun res!2756460 () (InoxSet Context!11898))

(assert (=> d!2117178 (= condSetEmpty!45997 (= res!2756460 ((as const (Array Context!11898 Bool)) false)))))

(assert (=> d!2117178 (= (choose!50222 lt!2438636 lambda!378371) res!2756460)))

(declare-fun setIsEmpty!45997 () Bool)

(assert (=> setIsEmpty!45997 setRes!45997))

(declare-fun setElem!45997 () Context!11898)

(declare-fun setNonEmpty!45997 () Bool)

(declare-fun tp!1847282 () Bool)

(declare-fun e!4070401 () Bool)

(assert (=> setNonEmpty!45997 (= setRes!45997 (and tp!1847282 (inv!84659 setElem!45997) e!4070401))))

(declare-fun setRest!45997 () (InoxSet Context!11898))

(assert (=> setNonEmpty!45997 (= res!2756460 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) setElem!45997 true) setRest!45997))))

(declare-fun b!6738486 () Bool)

(declare-fun tp!1847283 () Bool)

(assert (=> b!6738486 (= e!4070401 tp!1847283)))

(assert (= (and d!2117178 condSetEmpty!45997) setIsEmpty!45997))

(assert (= (and d!2117178 (not condSetEmpty!45997)) setNonEmpty!45997))

(assert (= setNonEmpty!45997 b!6738486))

(declare-fun m!7495480 () Bool)

(assert (=> setNonEmpty!45997 m!7495480))

(assert (=> d!2116880 d!2117178))

(declare-fun d!2117180 () Bool)

(assert (=> d!2117180 (= (isEmptyLang!1938 lt!2438671) ((_ is EmptyLang!16565) lt!2438671))))

(assert (=> b!6737683 d!2117180))

(declare-fun d!2117182 () Bool)

(assert (=> d!2117182 true))

(assert (=> d!2117182 true))

(declare-fun res!2756461 () Bool)

(assert (=> d!2117182 (= (choose!50229 lambda!378369) res!2756461)))

(assert (=> d!2116974 d!2117182))

(declare-fun d!2117184 () Bool)

(declare-fun lambda!378468 () Int)

(declare-fun exists!2698 ((InoxSet Context!11898) Int) Bool)

(assert (=> d!2117184 (= (nullableZipper!2279 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326))) (exists!2698 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) lambda!378468))))

(declare-fun bs!1791796 () Bool)

(assert (= bs!1791796 d!2117184))

(assert (=> bs!1791796 m!7494614))

(declare-fun m!7495482 () Bool)

(assert (=> bs!1791796 m!7495482))

(assert (=> b!6737593 d!2117184))

(declare-fun d!2117186 () Bool)

(declare-fun e!4070402 () Bool)

(assert (=> d!2117186 e!4070402))

(declare-fun res!2756463 () Bool)

(assert (=> d!2117186 (=> (not res!2756463) (not e!4070402))))

(declare-fun lt!2438745 () List!65995)

(assert (=> d!2117186 (= res!2756463 (= (content!12800 lt!2438745) ((_ map or) (content!12800 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871))) (content!12800 (t!379690 s!2326)))))))

(declare-fun e!4070403 () List!65995)

(assert (=> d!2117186 (= lt!2438745 e!4070403)))

(declare-fun c!1249895 () Bool)

(assert (=> d!2117186 (= c!1249895 ((_ is Nil!65871) (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871))))))

(assert (=> d!2117186 (= (++!14721 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (t!379690 s!2326)) lt!2438745)))

(declare-fun b!6738487 () Bool)

(assert (=> b!6738487 (= e!4070403 (t!379690 s!2326))))

(declare-fun b!6738488 () Bool)

(assert (=> b!6738488 (= e!4070403 (Cons!65871 (h!72319 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871))) (++!14721 (t!379690 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871))) (t!379690 s!2326))))))

(declare-fun b!6738490 () Bool)

(assert (=> b!6738490 (= e!4070402 (or (not (= (t!379690 s!2326) Nil!65871)) (= lt!2438745 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)))))))

(declare-fun b!6738489 () Bool)

(declare-fun res!2756462 () Bool)

(assert (=> b!6738489 (=> (not res!2756462) (not e!4070402))))

(assert (=> b!6738489 (= res!2756462 (= (size!40614 lt!2438745) (+ (size!40614 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871))) (size!40614 (t!379690 s!2326)))))))

(assert (= (and d!2117186 c!1249895) b!6738487))

(assert (= (and d!2117186 (not c!1249895)) b!6738488))

(assert (= (and d!2117186 res!2756463) b!6738489))

(assert (= (and b!6738489 res!2756462) b!6738490))

(declare-fun m!7495484 () Bool)

(assert (=> d!2117186 m!7495484))

(assert (=> d!2117186 m!7495104))

(declare-fun m!7495486 () Bool)

(assert (=> d!2117186 m!7495486))

(declare-fun m!7495488 () Bool)

(assert (=> d!2117186 m!7495488))

(declare-fun m!7495490 () Bool)

(assert (=> b!6738488 m!7495490))

(declare-fun m!7495492 () Bool)

(assert (=> b!6738489 m!7495492))

(assert (=> b!6738489 m!7495104))

(declare-fun m!7495494 () Bool)

(assert (=> b!6738489 m!7495494))

(declare-fun m!7495496 () Bool)

(assert (=> b!6738489 m!7495496))

(assert (=> b!6738040 d!2117186))

(declare-fun d!2117188 () Bool)

(declare-fun e!4070404 () Bool)

(assert (=> d!2117188 e!4070404))

(declare-fun res!2756465 () Bool)

(assert (=> d!2117188 (=> (not res!2756465) (not e!4070404))))

(declare-fun lt!2438746 () List!65995)

(assert (=> d!2117188 (= res!2756465 (= (content!12800 lt!2438746) ((_ map or) (content!12800 Nil!65871) (content!12800 (Cons!65871 (h!72319 s!2326) Nil!65871)))))))

(declare-fun e!4070405 () List!65995)

(assert (=> d!2117188 (= lt!2438746 e!4070405)))

(declare-fun c!1249896 () Bool)

(assert (=> d!2117188 (= c!1249896 ((_ is Nil!65871) Nil!65871))))

(assert (=> d!2117188 (= (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) lt!2438746)))

(declare-fun b!6738491 () Bool)

(assert (=> b!6738491 (= e!4070405 (Cons!65871 (h!72319 s!2326) Nil!65871))))

(declare-fun b!6738492 () Bool)

(assert (=> b!6738492 (= e!4070405 (Cons!65871 (h!72319 Nil!65871) (++!14721 (t!379690 Nil!65871) (Cons!65871 (h!72319 s!2326) Nil!65871))))))

(declare-fun b!6738494 () Bool)

(assert (=> b!6738494 (= e!4070404 (or (not (= (Cons!65871 (h!72319 s!2326) Nil!65871) Nil!65871)) (= lt!2438746 Nil!65871)))))

(declare-fun b!6738493 () Bool)

(declare-fun res!2756464 () Bool)

(assert (=> b!6738493 (=> (not res!2756464) (not e!4070404))))

(assert (=> b!6738493 (= res!2756464 (= (size!40614 lt!2438746) (+ (size!40614 Nil!65871) (size!40614 (Cons!65871 (h!72319 s!2326) Nil!65871)))))))

(assert (= (and d!2117188 c!1249896) b!6738491))

(assert (= (and d!2117188 (not c!1249896)) b!6738492))

(assert (= (and d!2117188 res!2756465) b!6738493))

(assert (= (and b!6738493 res!2756464) b!6738494))

(declare-fun m!7495498 () Bool)

(assert (=> d!2117188 m!7495498))

(declare-fun m!7495500 () Bool)

(assert (=> d!2117188 m!7495500))

(declare-fun m!7495502 () Bool)

(assert (=> d!2117188 m!7495502))

(declare-fun m!7495504 () Bool)

(assert (=> b!6738492 m!7495504))

(declare-fun m!7495506 () Bool)

(assert (=> b!6738493 m!7495506))

(declare-fun m!7495508 () Bool)

(assert (=> b!6738493 m!7495508))

(declare-fun m!7495510 () Bool)

(assert (=> b!6738493 m!7495510))

(assert (=> b!6738040 d!2117188))

(declare-fun d!2117192 () Bool)

(assert (=> d!2117192 (= (++!14721 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (t!379690 s!2326)) s!2326)))

(declare-fun lt!2438749 () Unit!159821)

(declare-fun choose!50233 (List!65995 C!33400 List!65995 List!65995) Unit!159821)

(assert (=> d!2117192 (= lt!2438749 (choose!50233 Nil!65871 (h!72319 s!2326) (t!379690 s!2326) s!2326))))

(assert (=> d!2117192 (= (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) (t!379690 s!2326))) s!2326)))

(assert (=> d!2117192 (= (lemmaMoveElementToOtherListKeepsConcatEq!2694 Nil!65871 (h!72319 s!2326) (t!379690 s!2326) s!2326) lt!2438749)))

(declare-fun bs!1791799 () Bool)

(assert (= bs!1791799 d!2117192))

(assert (=> bs!1791799 m!7495104))

(assert (=> bs!1791799 m!7495104))

(assert (=> bs!1791799 m!7495106))

(declare-fun m!7495512 () Bool)

(assert (=> bs!1791799 m!7495512))

(declare-fun m!7495514 () Bool)

(assert (=> bs!1791799 m!7495514))

(assert (=> b!6738040 d!2117192))

(declare-fun b!6738506 () Bool)

(declare-fun lt!2438750 () Unit!159821)

(declare-fun lt!2438752 () Unit!159821)

(assert (=> b!6738506 (= lt!2438750 lt!2438752)))

(assert (=> b!6738506 (= (++!14721 (++!14721 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (Cons!65871 (h!72319 (t!379690 s!2326)) Nil!65871)) (t!379690 (t!379690 s!2326))) s!2326)))

(assert (=> b!6738506 (= lt!2438752 (lemmaMoveElementToOtherListKeepsConcatEq!2694 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (h!72319 (t!379690 s!2326)) (t!379690 (t!379690 s!2326)) s!2326))))

(declare-fun e!4070415 () Option!16452)

(assert (=> b!6738506 (= e!4070415 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 (++!14721 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (Cons!65871 (h!72319 (t!379690 s!2326)) Nil!65871)) (t!379690 (t!379690 s!2326)) s!2326))))

(declare-fun b!6738507 () Bool)

(declare-fun e!4070414 () Bool)

(assert (=> b!6738507 (= e!4070414 (matchR!8748 r!7292 (t!379690 s!2326)))))

(declare-fun b!6738508 () Bool)

(declare-fun e!4070413 () Bool)

(declare-fun lt!2438751 () Option!16452)

(assert (=> b!6738508 (= e!4070413 (not (isDefined!13155 lt!2438751)))))

(declare-fun d!2117194 () Bool)

(assert (=> d!2117194 e!4070413))

(declare-fun res!2756472 () Bool)

(assert (=> d!2117194 (=> res!2756472 e!4070413)))

(declare-fun e!4070417 () Bool)

(assert (=> d!2117194 (= res!2756472 e!4070417)))

(declare-fun res!2756473 () Bool)

(assert (=> d!2117194 (=> (not res!2756473) (not e!4070417))))

(assert (=> d!2117194 (= res!2756473 (isDefined!13155 lt!2438751))))

(declare-fun e!4070416 () Option!16452)

(assert (=> d!2117194 (= lt!2438751 e!4070416)))

(declare-fun c!1249901 () Bool)

(assert (=> d!2117194 (= c!1249901 e!4070414)))

(declare-fun res!2756469 () Bool)

(assert (=> d!2117194 (=> (not res!2756469) (not e!4070414))))

(assert (=> d!2117194 (= res!2756469 (matchR!8748 (reg!16894 r!7292) (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871))))))

(assert (=> d!2117194 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2117194 (= (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (t!379690 s!2326) s!2326) lt!2438751)))

(declare-fun b!6738509 () Bool)

(declare-fun res!2756470 () Bool)

(assert (=> b!6738509 (=> (not res!2756470) (not e!4070417))))

(assert (=> b!6738509 (= res!2756470 (matchR!8748 (reg!16894 r!7292) (_1!36843 (get!22919 lt!2438751))))))

(declare-fun b!6738510 () Bool)

(assert (=> b!6738510 (= e!4070416 e!4070415)))

(declare-fun c!1249902 () Bool)

(assert (=> b!6738510 (= c!1249902 ((_ is Nil!65871) (t!379690 s!2326)))))

(declare-fun b!6738511 () Bool)

(assert (=> b!6738511 (= e!4070416 (Some!16451 (tuple2!67081 (++!14721 Nil!65871 (Cons!65871 (h!72319 s!2326) Nil!65871)) (t!379690 s!2326))))))

(declare-fun b!6738512 () Bool)

(assert (=> b!6738512 (= e!4070415 None!16451)))

(declare-fun b!6738513 () Bool)

(assert (=> b!6738513 (= e!4070417 (= (++!14721 (_1!36843 (get!22919 lt!2438751)) (_2!36843 (get!22919 lt!2438751))) s!2326))))

(declare-fun b!6738514 () Bool)

(declare-fun res!2756471 () Bool)

(assert (=> b!6738514 (=> (not res!2756471) (not e!4070417))))

(assert (=> b!6738514 (= res!2756471 (matchR!8748 r!7292 (_2!36843 (get!22919 lt!2438751))))))

(assert (= (and d!2117194 res!2756469) b!6738507))

(assert (= (and d!2117194 c!1249901) b!6738511))

(assert (= (and d!2117194 (not c!1249901)) b!6738510))

(assert (= (and b!6738510 c!1249902) b!6738512))

(assert (= (and b!6738510 (not c!1249902)) b!6738506))

(assert (= (and d!2117194 res!2756473) b!6738509))

(assert (= (and b!6738509 res!2756470) b!6738514))

(assert (= (and b!6738514 res!2756471) b!6738513))

(assert (= (and d!2117194 (not res!2756472)) b!6738508))

(declare-fun m!7495516 () Bool)

(assert (=> b!6738507 m!7495516))

(declare-fun m!7495518 () Bool)

(assert (=> b!6738514 m!7495518))

(declare-fun m!7495520 () Bool)

(assert (=> b!6738514 m!7495520))

(declare-fun m!7495522 () Bool)

(assert (=> b!6738508 m!7495522))

(assert (=> b!6738509 m!7495518))

(declare-fun m!7495524 () Bool)

(assert (=> b!6738509 m!7495524))

(assert (=> b!6738513 m!7495518))

(declare-fun m!7495526 () Bool)

(assert (=> b!6738513 m!7495526))

(assert (=> b!6738506 m!7495104))

(declare-fun m!7495528 () Bool)

(assert (=> b!6738506 m!7495528))

(assert (=> b!6738506 m!7495528))

(declare-fun m!7495530 () Bool)

(assert (=> b!6738506 m!7495530))

(assert (=> b!6738506 m!7495104))

(declare-fun m!7495532 () Bool)

(assert (=> b!6738506 m!7495532))

(assert (=> b!6738506 m!7495528))

(declare-fun m!7495534 () Bool)

(assert (=> b!6738506 m!7495534))

(assert (=> d!2117194 m!7495522))

(assert (=> d!2117194 m!7495104))

(declare-fun m!7495536 () Bool)

(assert (=> d!2117194 m!7495536))

(assert (=> d!2117194 m!7495010))

(assert (=> b!6738040 d!2117194))

(assert (=> b!6738144 d!2117040))

(assert (=> b!6738144 d!2117042))

(declare-fun d!2117196 () Bool)

(declare-fun c!1249905 () Bool)

(assert (=> d!2117196 (= c!1249905 ((_ is Nil!65872) lt!2438662))))

(declare-fun e!4070420 () (InoxSet Context!11898))

(assert (=> d!2117196 (= (content!12799 lt!2438662) e!4070420)))

(declare-fun b!6738519 () Bool)

(assert (=> b!6738519 (= e!4070420 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738520 () Bool)

(assert (=> b!6738520 (= e!4070420 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) (h!72320 lt!2438662) true) (content!12799 (t!379691 lt!2438662))))))

(assert (= (and d!2117196 c!1249905) b!6738519))

(assert (= (and d!2117196 (not c!1249905)) b!6738520))

(declare-fun m!7495538 () Bool)

(assert (=> b!6738520 m!7495538))

(declare-fun m!7495540 () Bool)

(assert (=> b!6738520 m!7495540))

(assert (=> b!6737626 d!2117196))

(declare-fun d!2117198 () Bool)

(assert (=> d!2117198 (= (Exists!3633 lambda!378436) (choose!50229 lambda!378436))))

(declare-fun bs!1791810 () Bool)

(assert (= bs!1791810 d!2117198))

(declare-fun m!7495542 () Bool)

(assert (=> bs!1791810 m!7495542))

(assert (=> d!2116976 d!2117198))

(declare-fun d!2117200 () Bool)

(assert (=> d!2117200 (= (Exists!3633 lambda!378439) (choose!50229 lambda!378439))))

(declare-fun bs!1791811 () Bool)

(assert (= bs!1791811 d!2117200))

(declare-fun m!7495544 () Bool)

(assert (=> bs!1791811 m!7495544))

(assert (=> d!2116976 d!2117200))

(declare-fun bs!1791813 () Bool)

(declare-fun d!2117202 () Bool)

(assert (= bs!1791813 (and d!2117202 b!6737451)))

(declare-fun lambda!378475 () Int)

(assert (=> bs!1791813 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378475 lambda!378368))))

(declare-fun bs!1791814 () Bool)

(assert (= bs!1791814 (and d!2117202 b!6738106)))

(assert (=> bs!1791814 (not (= lambda!378475 lambda!378448))))

(declare-fun bs!1791815 () Bool)

(assert (= bs!1791815 (and d!2117202 b!6738388)))

(assert (=> bs!1791815 (not (= lambda!378475 lambda!378462))))

(declare-fun bs!1791816 () Bool)

(assert (= bs!1791816 (and d!2117202 d!2116970)))

(assert (=> bs!1791816 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378475 lambda!378425))))

(declare-fun bs!1791817 () Bool)

(assert (= bs!1791817 (and d!2117202 b!6738383)))

(assert (=> bs!1791817 (not (= lambda!378475 lambda!378463))))

(declare-fun bs!1791818 () Bool)

(assert (= bs!1791818 (and d!2117202 b!6738101)))

(assert (=> bs!1791818 (not (= lambda!378475 lambda!378449))))

(assert (=> bs!1791816 (not (= lambda!378475 lambda!378426))))

(declare-fun bs!1791819 () Bool)

(assert (= bs!1791819 (and d!2117202 d!2117074)))

(assert (=> bs!1791819 (not (= lambda!378475 lambda!378457))))

(assert (=> bs!1791813 (not (= lambda!378475 lambda!378370))))

(assert (=> bs!1791819 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378475 lambda!378456))))

(declare-fun bs!1791820 () Bool)

(assert (= bs!1791820 (and d!2117202 d!2116976)))

(assert (=> bs!1791820 (= lambda!378475 lambda!378436)))

(assert (=> bs!1791813 (not (= lambda!378475 lambda!378369))))

(assert (=> bs!1791820 (not (= lambda!378475 lambda!378439))))

(declare-fun bs!1791821 () Bool)

(assert (= bs!1791821 (and d!2117202 d!2117010)))

(assert (=> bs!1791821 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378475 lambda!378443))))

(assert (=> d!2117202 true))

(assert (=> d!2117202 true))

(declare-fun lambda!378476 () Int)

(assert (=> bs!1791813 (not (= lambda!378476 lambda!378368))))

(assert (=> bs!1791814 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378476 lambda!378448))))

(assert (=> bs!1791815 (= (and (= (reg!16894 r!7292) (reg!16894 (regOne!33643 r!7292))) (= (Star!16565 (reg!16894 r!7292)) (regOne!33643 r!7292))) (= lambda!378476 lambda!378462))))

(assert (=> bs!1791817 (not (= lambda!378476 lambda!378463))))

(assert (=> bs!1791818 (not (= lambda!378476 lambda!378449))))

(assert (=> bs!1791816 (not (= lambda!378476 lambda!378426))))

(assert (=> bs!1791819 (not (= lambda!378476 lambda!378457))))

(assert (=> bs!1791813 (not (= lambda!378476 lambda!378370))))

(assert (=> bs!1791819 (not (= lambda!378476 lambda!378456))))

(assert (=> bs!1791816 (not (= lambda!378476 lambda!378425))))

(declare-fun bs!1791822 () Bool)

(assert (= bs!1791822 d!2117202))

(assert (=> bs!1791822 (not (= lambda!378476 lambda!378475))))

(assert (=> bs!1791820 (not (= lambda!378476 lambda!378436))))

(assert (=> bs!1791813 (= (= (Star!16565 (reg!16894 r!7292)) r!7292) (= lambda!378476 lambda!378369))))

(assert (=> bs!1791820 (= lambda!378476 lambda!378439)))

(assert (=> bs!1791821 (not (= lambda!378476 lambda!378443))))

(assert (=> d!2117202 true))

(assert (=> d!2117202 true))

(assert (=> d!2117202 (= (Exists!3633 lambda!378475) (Exists!3633 lambda!378476))))

(assert (=> d!2117202 true))

(declare-fun _$91!713 () Unit!159821)

(assert (=> d!2117202 (= (choose!50230 (reg!16894 r!7292) s!2326) _$91!713)))

(declare-fun m!7495566 () Bool)

(assert (=> bs!1791822 m!7495566))

(declare-fun m!7495568 () Bool)

(assert (=> bs!1791822 m!7495568))

(assert (=> d!2116976 d!2117202))

(assert (=> d!2116976 d!2117076))

(declare-fun bs!1791823 () Bool)

(declare-fun b!6738548 () Bool)

(assert (= bs!1791823 (and b!6738548 b!6737451)))

(declare-fun lambda!378477 () Int)

(assert (=> bs!1791823 (not (= lambda!378477 lambda!378368))))

(declare-fun bs!1791824 () Bool)

(assert (= bs!1791824 (and b!6738548 b!6738106)))

(assert (=> bs!1791824 (= (and (= (reg!16894 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33643 r!7292) r!7292)) (= lambda!378477 lambda!378448))))

(declare-fun bs!1791825 () Bool)

(assert (= bs!1791825 (and b!6738548 b!6738388)))

(assert (=> bs!1791825 (= (and (= (reg!16894 (regTwo!33643 r!7292)) (reg!16894 (regOne!33643 r!7292))) (= (regTwo!33643 r!7292) (regOne!33643 r!7292))) (= lambda!378477 lambda!378462))))

(declare-fun bs!1791826 () Bool)

(assert (= bs!1791826 (and b!6738548 b!6738383)))

(assert (=> bs!1791826 (not (= lambda!378477 lambda!378463))))

(declare-fun bs!1791827 () Bool)

(assert (= bs!1791827 (and b!6738548 b!6738101)))

(assert (=> bs!1791827 (not (= lambda!378477 lambda!378449))))

(declare-fun bs!1791828 () Bool)

(assert (= bs!1791828 (and b!6738548 d!2116970)))

(assert (=> bs!1791828 (not (= lambda!378477 lambda!378426))))

(declare-fun bs!1791829 () Bool)

(assert (= bs!1791829 (and b!6738548 d!2117074)))

(assert (=> bs!1791829 (not (= lambda!378477 lambda!378457))))

(assert (=> bs!1791823 (not (= lambda!378477 lambda!378370))))

(declare-fun bs!1791830 () Bool)

(assert (= bs!1791830 (and b!6738548 d!2117202)))

(assert (=> bs!1791830 (= (and (= (reg!16894 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33643 r!7292) (Star!16565 (reg!16894 r!7292)))) (= lambda!378477 lambda!378476))))

(assert (=> bs!1791829 (not (= lambda!378477 lambda!378456))))

(assert (=> bs!1791828 (not (= lambda!378477 lambda!378425))))

(assert (=> bs!1791830 (not (= lambda!378477 lambda!378475))))

(declare-fun bs!1791831 () Bool)

(assert (= bs!1791831 (and b!6738548 d!2116976)))

(assert (=> bs!1791831 (not (= lambda!378477 lambda!378436))))

(assert (=> bs!1791823 (= (and (= (reg!16894 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33643 r!7292) r!7292)) (= lambda!378477 lambda!378369))))

(assert (=> bs!1791831 (= (and (= (reg!16894 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33643 r!7292) (Star!16565 (reg!16894 r!7292)))) (= lambda!378477 lambda!378439))))

(declare-fun bs!1791832 () Bool)

(assert (= bs!1791832 (and b!6738548 d!2117010)))

(assert (=> bs!1791832 (not (= lambda!378477 lambda!378443))))

(assert (=> b!6738548 true))

(assert (=> b!6738548 true))

(declare-fun bs!1791833 () Bool)

(declare-fun b!6738543 () Bool)

(assert (= bs!1791833 (and b!6738543 b!6738548)))

(declare-fun lambda!378478 () Int)

(assert (=> bs!1791833 (not (= lambda!378478 lambda!378477))))

(declare-fun bs!1791834 () Bool)

(assert (= bs!1791834 (and b!6738543 b!6737451)))

(assert (=> bs!1791834 (not (= lambda!378478 lambda!378368))))

(declare-fun bs!1791835 () Bool)

(assert (= bs!1791835 (and b!6738543 b!6738106)))

(assert (=> bs!1791835 (not (= lambda!378478 lambda!378448))))

(declare-fun bs!1791836 () Bool)

(assert (= bs!1791836 (and b!6738543 b!6738388)))

(assert (=> bs!1791836 (not (= lambda!378478 lambda!378462))))

(declare-fun bs!1791837 () Bool)

(assert (= bs!1791837 (and b!6738543 b!6738383)))

(assert (=> bs!1791837 (= (and (= (regOne!33642 (regTwo!33643 r!7292)) (regOne!33642 (regOne!33643 r!7292))) (= (regTwo!33642 (regTwo!33643 r!7292)) (regTwo!33642 (regOne!33643 r!7292)))) (= lambda!378478 lambda!378463))))

(declare-fun bs!1791838 () Bool)

(assert (= bs!1791838 (and b!6738543 b!6738101)))

(assert (=> bs!1791838 (= (and (= (regOne!33642 (regTwo!33643 r!7292)) (regOne!33642 r!7292)) (= (regTwo!33642 (regTwo!33643 r!7292)) (regTwo!33642 r!7292))) (= lambda!378478 lambda!378449))))

(declare-fun bs!1791839 () Bool)

(assert (= bs!1791839 (and b!6738543 d!2116970)))

(assert (=> bs!1791839 (= (and (= (regOne!33642 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33642 (regTwo!33643 r!7292)) r!7292)) (= lambda!378478 lambda!378426))))

(declare-fun bs!1791840 () Bool)

(assert (= bs!1791840 (and b!6738543 d!2117074)))

(assert (=> bs!1791840 (= (and (= (regOne!33642 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33642 (regTwo!33643 r!7292)) r!7292)) (= lambda!378478 lambda!378457))))

(assert (=> bs!1791834 (= (and (= (regOne!33642 (regTwo!33643 r!7292)) (reg!16894 r!7292)) (= (regTwo!33642 (regTwo!33643 r!7292)) r!7292)) (= lambda!378478 lambda!378370))))

(declare-fun bs!1791841 () Bool)

(assert (= bs!1791841 (and b!6738543 d!2117202)))

(assert (=> bs!1791841 (not (= lambda!378478 lambda!378476))))

(assert (=> bs!1791840 (not (= lambda!378478 lambda!378456))))

(assert (=> bs!1791839 (not (= lambda!378478 lambda!378425))))

(assert (=> bs!1791841 (not (= lambda!378478 lambda!378475))))

(declare-fun bs!1791842 () Bool)

(assert (= bs!1791842 (and b!6738543 d!2116976)))

(assert (=> bs!1791842 (not (= lambda!378478 lambda!378436))))

(assert (=> bs!1791834 (not (= lambda!378478 lambda!378369))))

(assert (=> bs!1791842 (not (= lambda!378478 lambda!378439))))

(declare-fun bs!1791843 () Bool)

(assert (= bs!1791843 (and b!6738543 d!2117010)))

(assert (=> bs!1791843 (not (= lambda!378478 lambda!378443))))

(assert (=> b!6738543 true))

(assert (=> b!6738543 true))

(declare-fun e!4070433 () Bool)

(declare-fun call!609010 () Bool)

(assert (=> b!6738543 (= e!4070433 call!609010)))

(declare-fun b!6738544 () Bool)

(declare-fun e!4070436 () Bool)

(assert (=> b!6738544 (= e!4070436 (matchRSpec!3666 (regTwo!33643 (regTwo!33643 r!7292)) s!2326))))

(declare-fun b!6738545 () Bool)

(declare-fun e!4070431 () Bool)

(declare-fun call!609011 () Bool)

(assert (=> b!6738545 (= e!4070431 call!609011)))

(declare-fun c!1249910 () Bool)

(declare-fun bm!609005 () Bool)

(assert (=> bm!609005 (= call!609010 (Exists!3633 (ite c!1249910 lambda!378477 lambda!378478)))))

(declare-fun b!6738546 () Bool)

(declare-fun c!1249911 () Bool)

(assert (=> b!6738546 (= c!1249911 ((_ is Union!16565) (regTwo!33643 r!7292)))))

(declare-fun e!4070432 () Bool)

(declare-fun e!4070437 () Bool)

(assert (=> b!6738546 (= e!4070432 e!4070437)))

(declare-fun b!6738547 () Bool)

(assert (=> b!6738547 (= e!4070437 e!4070433)))

(assert (=> b!6738547 (= c!1249910 ((_ is Star!16565) (regTwo!33643 r!7292)))))

(declare-fun e!4070434 () Bool)

(assert (=> b!6738548 (= e!4070434 call!609010)))

(declare-fun b!6738549 () Bool)

(declare-fun res!2756492 () Bool)

(assert (=> b!6738549 (=> res!2756492 e!4070434)))

(assert (=> b!6738549 (= res!2756492 call!609011)))

(assert (=> b!6738549 (= e!4070433 e!4070434)))

(declare-fun b!6738550 () Bool)

(assert (=> b!6738550 (= e!4070437 e!4070436)))

(declare-fun res!2756491 () Bool)

(assert (=> b!6738550 (= res!2756491 (matchRSpec!3666 (regOne!33643 (regTwo!33643 r!7292)) s!2326))))

(assert (=> b!6738550 (=> res!2756491 e!4070436)))

(declare-fun b!6738551 () Bool)

(declare-fun e!4070435 () Bool)

(assert (=> b!6738551 (= e!4070431 e!4070435)))

(declare-fun res!2756490 () Bool)

(assert (=> b!6738551 (= res!2756490 (not ((_ is EmptyLang!16565) (regTwo!33643 r!7292))))))

(assert (=> b!6738551 (=> (not res!2756490) (not e!4070435))))

(declare-fun b!6738552 () Bool)

(assert (=> b!6738552 (= e!4070432 (= s!2326 (Cons!65871 (c!1249609 (regTwo!33643 r!7292)) Nil!65871)))))

(declare-fun b!6738553 () Bool)

(declare-fun c!1249912 () Bool)

(assert (=> b!6738553 (= c!1249912 ((_ is ElementMatch!16565) (regTwo!33643 r!7292)))))

(assert (=> b!6738553 (= e!4070435 e!4070432)))

(declare-fun d!2117210 () Bool)

(declare-fun c!1249909 () Bool)

(assert (=> d!2117210 (= c!1249909 ((_ is EmptyExpr!16565) (regTwo!33643 r!7292)))))

(assert (=> d!2117210 (= (matchRSpec!3666 (regTwo!33643 r!7292) s!2326) e!4070431)))

(declare-fun bm!609006 () Bool)

(assert (=> bm!609006 (= call!609011 (isEmpty!38209 s!2326))))

(assert (= (and d!2117210 c!1249909) b!6738545))

(assert (= (and d!2117210 (not c!1249909)) b!6738551))

(assert (= (and b!6738551 res!2756490) b!6738553))

(assert (= (and b!6738553 c!1249912) b!6738552))

(assert (= (and b!6738553 (not c!1249912)) b!6738546))

(assert (= (and b!6738546 c!1249911) b!6738550))

(assert (= (and b!6738546 (not c!1249911)) b!6738547))

(assert (= (and b!6738550 (not res!2756491)) b!6738544))

(assert (= (and b!6738547 c!1249910) b!6738549))

(assert (= (and b!6738547 (not c!1249910)) b!6738543))

(assert (= (and b!6738549 (not res!2756492)) b!6738548))

(assert (= (or b!6738548 b!6738543) bm!609005))

(assert (= (or b!6738545 b!6738549) bm!609006))

(declare-fun m!7495590 () Bool)

(assert (=> b!6738544 m!7495590))

(declare-fun m!7495592 () Bool)

(assert (=> bm!609005 m!7495592))

(declare-fun m!7495594 () Bool)

(assert (=> b!6738550 m!7495594))

(assert (=> bm!609006 m!7494694))

(assert (=> b!6738102 d!2117210))

(declare-fun d!2117218 () Bool)

(assert (=> d!2117218 true))

(declare-fun setRes!45998 () Bool)

(assert (=> d!2117218 setRes!45998))

(declare-fun condSetEmpty!45998 () Bool)

(declare-fun res!2756503 () (InoxSet Context!11898))

(assert (=> d!2117218 (= condSetEmpty!45998 (= res!2756503 ((as const (Array Context!11898 Bool)) false)))))

(assert (=> d!2117218 (= (choose!50222 z!1189 lambda!378371) res!2756503)))

(declare-fun setIsEmpty!45998 () Bool)

(assert (=> setIsEmpty!45998 setRes!45998))

(declare-fun e!4070457 () Bool)

(declare-fun tp!1847284 () Bool)

(declare-fun setNonEmpty!45998 () Bool)

(declare-fun setElem!45998 () Context!11898)

(assert (=> setNonEmpty!45998 (= setRes!45998 (and tp!1847284 (inv!84659 setElem!45998) e!4070457))))

(declare-fun setRest!45998 () (InoxSet Context!11898))

(assert (=> setNonEmpty!45998 (= res!2756503 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) setElem!45998 true) setRest!45998))))

(declare-fun b!6738585 () Bool)

(declare-fun tp!1847285 () Bool)

(assert (=> b!6738585 (= e!4070457 tp!1847285)))

(assert (= (and d!2117218 condSetEmpty!45998) setIsEmpty!45998))

(assert (= (and d!2117218 (not condSetEmpty!45998)) setNonEmpty!45998))

(assert (= setNonEmpty!45998 b!6738585))

(declare-fun m!7495596 () Bool)

(assert (=> setNonEmpty!45998 m!7495596))

(assert (=> d!2116934 d!2117218))

(declare-fun b!6738586 () Bool)

(declare-fun e!4070461 () Bool)

(assert (=> b!6738586 (= e!4070461 (matchR!8748 (derivativeStep!5237 (derivativeStep!5237 r!7292 (head!13556 s!2326)) (head!13556 (tail!12641 s!2326))) (tail!12641 (tail!12641 s!2326))))))

(declare-fun d!2117220 () Bool)

(declare-fun e!4070459 () Bool)

(assert (=> d!2117220 e!4070459))

(declare-fun c!1249927 () Bool)

(assert (=> d!2117220 (= c!1249927 ((_ is EmptyExpr!16565) (derivativeStep!5237 r!7292 (head!13556 s!2326))))))

(declare-fun lt!2438756 () Bool)

(assert (=> d!2117220 (= lt!2438756 e!4070461)))

(declare-fun c!1249925 () Bool)

(assert (=> d!2117220 (= c!1249925 (isEmpty!38209 (tail!12641 s!2326)))))

(assert (=> d!2117220 (validRegex!8301 (derivativeStep!5237 r!7292 (head!13556 s!2326)))))

(assert (=> d!2117220 (= (matchR!8748 (derivativeStep!5237 r!7292 (head!13556 s!2326)) (tail!12641 s!2326)) lt!2438756)))

(declare-fun b!6738587 () Bool)

(declare-fun e!4070464 () Bool)

(assert (=> b!6738587 (= e!4070464 (not lt!2438756))))

(declare-fun b!6738588 () Bool)

(declare-fun res!2756509 () Bool)

(declare-fun e!4070463 () Bool)

(assert (=> b!6738588 (=> res!2756509 e!4070463)))

(declare-fun e!4070458 () Bool)

(assert (=> b!6738588 (= res!2756509 e!4070458)))

(declare-fun res!2756510 () Bool)

(assert (=> b!6738588 (=> (not res!2756510) (not e!4070458))))

(assert (=> b!6738588 (= res!2756510 lt!2438756)))

(declare-fun b!6738589 () Bool)

(declare-fun e!4070462 () Bool)

(assert (=> b!6738589 (= e!4070462 (not (= (head!13556 (tail!12641 s!2326)) (c!1249609 (derivativeStep!5237 r!7292 (head!13556 s!2326))))))))

(declare-fun b!6738590 () Bool)

(declare-fun res!2756505 () Bool)

(assert (=> b!6738590 (=> (not res!2756505) (not e!4070458))))

(assert (=> b!6738590 (= res!2756505 (isEmpty!38209 (tail!12641 (tail!12641 s!2326))))))

(declare-fun b!6738591 () Bool)

(declare-fun res!2756504 () Bool)

(assert (=> b!6738591 (=> res!2756504 e!4070462)))

(assert (=> b!6738591 (= res!2756504 (not (isEmpty!38209 (tail!12641 (tail!12641 s!2326)))))))

(declare-fun b!6738592 () Bool)

(assert (=> b!6738592 (= e!4070461 (nullable!6552 (derivativeStep!5237 r!7292 (head!13556 s!2326))))))

(declare-fun b!6738593 () Bool)

(assert (=> b!6738593 (= e!4070458 (= (head!13556 (tail!12641 s!2326)) (c!1249609 (derivativeStep!5237 r!7292 (head!13556 s!2326)))))))

(declare-fun b!6738594 () Bool)

(declare-fun e!4070460 () Bool)

(assert (=> b!6738594 (= e!4070460 e!4070462)))

(declare-fun res!2756506 () Bool)

(assert (=> b!6738594 (=> res!2756506 e!4070462)))

(declare-fun call!609027 () Bool)

(assert (=> b!6738594 (= res!2756506 call!609027)))

(declare-fun b!6738595 () Bool)

(assert (=> b!6738595 (= e!4070459 e!4070464)))

(declare-fun c!1249926 () Bool)

(assert (=> b!6738595 (= c!1249926 ((_ is EmptyLang!16565) (derivativeStep!5237 r!7292 (head!13556 s!2326))))))

(declare-fun b!6738596 () Bool)

(declare-fun res!2756508 () Bool)

(assert (=> b!6738596 (=> res!2756508 e!4070463)))

(assert (=> b!6738596 (= res!2756508 (not ((_ is ElementMatch!16565) (derivativeStep!5237 r!7292 (head!13556 s!2326)))))))

(assert (=> b!6738596 (= e!4070464 e!4070463)))

(declare-fun b!6738597 () Bool)

(assert (=> b!6738597 (= e!4070463 e!4070460)))

(declare-fun res!2756507 () Bool)

(assert (=> b!6738597 (=> (not res!2756507) (not e!4070460))))

(assert (=> b!6738597 (= res!2756507 (not lt!2438756))))

(declare-fun b!6738598 () Bool)

(declare-fun res!2756511 () Bool)

(assert (=> b!6738598 (=> (not res!2756511) (not e!4070458))))

(assert (=> b!6738598 (= res!2756511 (not call!609027))))

(declare-fun b!6738599 () Bool)

(assert (=> b!6738599 (= e!4070459 (= lt!2438756 call!609027))))

(declare-fun bm!609022 () Bool)

(assert (=> bm!609022 (= call!609027 (isEmpty!38209 (tail!12641 s!2326)))))

(assert (= (and d!2117220 c!1249925) b!6738592))

(assert (= (and d!2117220 (not c!1249925)) b!6738586))

(assert (= (and d!2117220 c!1249927) b!6738599))

(assert (= (and d!2117220 (not c!1249927)) b!6738595))

(assert (= (and b!6738595 c!1249926) b!6738587))

(assert (= (and b!6738595 (not c!1249926)) b!6738596))

(assert (= (and b!6738596 (not res!2756508)) b!6738588))

(assert (= (and b!6738588 res!2756510) b!6738598))

(assert (= (and b!6738598 res!2756511) b!6738590))

(assert (= (and b!6738590 res!2756505) b!6738593))

(assert (= (and b!6738588 (not res!2756509)) b!6738597))

(assert (= (and b!6738597 res!2756507) b!6738594))

(assert (= (and b!6738594 (not res!2756506)) b!6738591))

(assert (= (and b!6738591 (not res!2756504)) b!6738589))

(assert (= (or b!6738599 b!6738594 b!6738598) bm!609022))

(assert (=> bm!609022 m!7494770))

(assert (=> bm!609022 m!7495150))

(assert (=> b!6738593 m!7494770))

(assert (=> b!6738593 m!7495180))

(assert (=> b!6738586 m!7494770))

(assert (=> b!6738586 m!7495180))

(assert (=> b!6738586 m!7495146))

(assert (=> b!6738586 m!7495180))

(declare-fun m!7495604 () Bool)

(assert (=> b!6738586 m!7495604))

(assert (=> b!6738586 m!7494770))

(assert (=> b!6738586 m!7495184))

(assert (=> b!6738586 m!7495604))

(assert (=> b!6738586 m!7495184))

(declare-fun m!7495606 () Bool)

(assert (=> b!6738586 m!7495606))

(assert (=> d!2117220 m!7494770))

(assert (=> d!2117220 m!7495150))

(assert (=> d!2117220 m!7495146))

(declare-fun m!7495608 () Bool)

(assert (=> d!2117220 m!7495608))

(assert (=> b!6738590 m!7494770))

(assert (=> b!6738590 m!7495184))

(assert (=> b!6738590 m!7495184))

(declare-fun m!7495610 () Bool)

(assert (=> b!6738590 m!7495610))

(assert (=> b!6738589 m!7494770))

(assert (=> b!6738589 m!7495180))

(assert (=> b!6738592 m!7495146))

(declare-fun m!7495612 () Bool)

(assert (=> b!6738592 m!7495612))

(assert (=> b!6738591 m!7494770))

(assert (=> b!6738591 m!7495184))

(assert (=> b!6738591 m!7495184))

(assert (=> b!6738591 m!7495610))

(assert (=> b!6738140 d!2117220))

(declare-fun call!609038 () Regex!16565)

(declare-fun b!6738639 () Bool)

(declare-fun e!4070490 () Regex!16565)

(declare-fun call!609041 () Regex!16565)

(assert (=> b!6738639 (= e!4070490 (Union!16565 (Concat!25410 call!609038 (regTwo!33642 r!7292)) call!609041))))

(declare-fun bm!609033 () Bool)

(declare-fun call!609040 () Regex!16565)

(assert (=> bm!609033 (= call!609041 call!609040)))

(declare-fun bm!609034 () Bool)

(declare-fun call!609039 () Regex!16565)

(assert (=> bm!609034 (= call!609038 call!609039)))

(declare-fun b!6738640 () Bool)

(assert (=> b!6738640 (= e!4070490 (Union!16565 (Concat!25410 call!609041 (regTwo!33642 r!7292)) EmptyLang!16565))))

(declare-fun bm!609035 () Bool)

(declare-fun c!1249946 () Bool)

(declare-fun c!1249945 () Bool)

(assert (=> bm!609035 (= call!609039 (derivativeStep!5237 (ite c!1249945 (regOne!33643 r!7292) (ite c!1249946 (reg!16894 r!7292) (regOne!33642 r!7292))) (head!13556 s!2326)))))

(declare-fun b!6738641 () Bool)

(assert (=> b!6738641 (= c!1249945 ((_ is Union!16565) r!7292))))

(declare-fun e!4070494 () Regex!16565)

(declare-fun e!4070492 () Regex!16565)

(assert (=> b!6738641 (= e!4070494 e!4070492)))

(declare-fun b!6738642 () Bool)

(declare-fun e!4070493 () Regex!16565)

(assert (=> b!6738642 (= e!4070492 e!4070493)))

(assert (=> b!6738642 (= c!1249946 ((_ is Star!16565) r!7292))))

(declare-fun d!2117224 () Bool)

(declare-fun lt!2438759 () Regex!16565)

(assert (=> d!2117224 (validRegex!8301 lt!2438759)))

(declare-fun e!4070491 () Regex!16565)

(assert (=> d!2117224 (= lt!2438759 e!4070491)))

(declare-fun c!1249944 () Bool)

(assert (=> d!2117224 (= c!1249944 (or ((_ is EmptyExpr!16565) r!7292) ((_ is EmptyLang!16565) r!7292)))))

(assert (=> d!2117224 (validRegex!8301 r!7292)))

(assert (=> d!2117224 (= (derivativeStep!5237 r!7292 (head!13556 s!2326)) lt!2438759)))

(declare-fun b!6738643 () Bool)

(assert (=> b!6738643 (= e!4070494 (ite (= (head!13556 s!2326) (c!1249609 r!7292)) EmptyExpr!16565 EmptyLang!16565))))

(declare-fun bm!609036 () Bool)

(declare-fun c!1249942 () Bool)

(assert (=> bm!609036 (= call!609040 (derivativeStep!5237 (ite c!1249945 (regTwo!33643 r!7292) (ite c!1249942 (regTwo!33642 r!7292) (regOne!33642 r!7292))) (head!13556 s!2326)))))

(declare-fun b!6738644 () Bool)

(assert (=> b!6738644 (= e!4070491 e!4070494)))

(declare-fun c!1249943 () Bool)

(assert (=> b!6738644 (= c!1249943 ((_ is ElementMatch!16565) r!7292))))

(declare-fun b!6738645 () Bool)

(assert (=> b!6738645 (= e!4070491 EmptyLang!16565)))

(declare-fun b!6738646 () Bool)

(assert (=> b!6738646 (= c!1249942 (nullable!6552 (regOne!33642 r!7292)))))

(assert (=> b!6738646 (= e!4070493 e!4070490)))

(declare-fun b!6738647 () Bool)

(assert (=> b!6738647 (= e!4070493 (Concat!25410 call!609038 r!7292))))

(declare-fun b!6738648 () Bool)

(assert (=> b!6738648 (= e!4070492 (Union!16565 call!609039 call!609040))))

(assert (= (and d!2117224 c!1249944) b!6738645))

(assert (= (and d!2117224 (not c!1249944)) b!6738644))

(assert (= (and b!6738644 c!1249943) b!6738643))

(assert (= (and b!6738644 (not c!1249943)) b!6738641))

(assert (= (and b!6738641 c!1249945) b!6738648))

(assert (= (and b!6738641 (not c!1249945)) b!6738642))

(assert (= (and b!6738642 c!1249946) b!6738647))

(assert (= (and b!6738642 (not c!1249946)) b!6738646))

(assert (= (and b!6738646 c!1249942) b!6738639))

(assert (= (and b!6738646 (not c!1249942)) b!6738640))

(assert (= (or b!6738639 b!6738640) bm!609033))

(assert (= (or b!6738647 b!6738639) bm!609034))

(assert (= (or b!6738648 bm!609033) bm!609036))

(assert (= (or b!6738648 bm!609034) bm!609035))

(assert (=> bm!609035 m!7494766))

(declare-fun m!7495622 () Bool)

(assert (=> bm!609035 m!7495622))

(declare-fun m!7495624 () Bool)

(assert (=> d!2117224 m!7495624))

(assert (=> d!2117224 m!7494624))

(assert (=> bm!609036 m!7494766))

(declare-fun m!7495626 () Bool)

(assert (=> bm!609036 m!7495626))

(assert (=> b!6738646 m!7494922))

(assert (=> b!6738140 d!2117224))

(assert (=> b!6738140 d!2117058))

(assert (=> b!6738140 d!2117042))

(declare-fun d!2117232 () Bool)

(assert (=> d!2117232 (= (head!13557 (unfocusZipperList!1986 zl!343)) (h!72318 (unfocusZipperList!1986 zl!343)))))

(assert (=> b!6737692 d!2117232))

(declare-fun d!2117234 () Bool)

(declare-fun c!1249949 () Bool)

(assert (=> d!2117234 (= c!1249949 (and ((_ is ElementMatch!16565) (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (= (c!1249609 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (h!72319 s!2326))))))

(declare-fun e!4070500 () (InoxSet Context!11898))

(assert (=> d!2117234 (= (derivationStepZipperDown!1793 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292))) (ite c!1249783 lt!2438637 (Context!11899 call!608928)) (h!72319 s!2326)) e!4070500)))

(declare-fun bm!609037 () Bool)

(declare-fun call!609043 () (InoxSet Context!11898))

(declare-fun call!609042 () (InoxSet Context!11898))

(assert (=> bm!609037 (= call!609043 call!609042)))

(declare-fun b!6738649 () Bool)

(declare-fun e!4070496 () Bool)

(assert (=> b!6738649 (= e!4070496 (nullable!6552 (regOne!33642 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292))))))))

(declare-fun b!6738650 () Bool)

(declare-fun e!4070499 () (InoxSet Context!11898))

(declare-fun call!609047 () (InoxSet Context!11898))

(declare-fun call!609045 () (InoxSet Context!11898))

(assert (=> b!6738650 (= e!4070499 ((_ map or) call!609047 call!609045))))

(declare-fun b!6738651 () Bool)

(assert (=> b!6738651 (= e!4070500 (store ((as const (Array Context!11898 Bool)) false) (ite c!1249783 lt!2438637 (Context!11899 call!608928)) true))))

(declare-fun bm!609038 () Bool)

(assert (=> bm!609038 (= call!609042 call!609047)))

(declare-fun b!6738652 () Bool)

(declare-fun e!4070495 () (InoxSet Context!11898))

(assert (=> b!6738652 (= e!4070495 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738653 () Bool)

(assert (=> b!6738653 (= e!4070500 e!4070499)))

(declare-fun c!1249948 () Bool)

(assert (=> b!6738653 (= c!1249948 ((_ is Union!16565) (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))))))

(declare-fun c!1249947 () Bool)

(declare-fun bm!609039 () Bool)

(declare-fun call!609046 () List!65994)

(declare-fun c!1249950 () Bool)

(assert (=> bm!609039 (= call!609046 ($colon$colon!2382 (exprs!6449 (ite c!1249783 lt!2438637 (Context!11899 call!608928))) (ite (or c!1249947 c!1249950) (regTwo!33642 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292))))))))

(declare-fun b!6738654 () Bool)

(declare-fun e!4070497 () (InoxSet Context!11898))

(assert (=> b!6738654 (= e!4070497 call!609043)))

(declare-fun b!6738655 () Bool)

(declare-fun e!4070498 () (InoxSet Context!11898))

(assert (=> b!6738655 (= e!4070498 e!4070497)))

(assert (=> b!6738655 (= c!1249950 ((_ is Concat!25410) (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))))))

(declare-fun bm!609040 () Bool)

(declare-fun call!609044 () List!65994)

(assert (=> bm!609040 (= call!609044 call!609046)))

(declare-fun b!6738656 () Bool)

(assert (=> b!6738656 (= c!1249947 e!4070496)))

(declare-fun res!2756523 () Bool)

(assert (=> b!6738656 (=> (not res!2756523) (not e!4070496))))

(assert (=> b!6738656 (= res!2756523 ((_ is Concat!25410) (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))))))

(assert (=> b!6738656 (= e!4070499 e!4070498)))

(declare-fun bm!609041 () Bool)

(assert (=> bm!609041 (= call!609047 (derivationStepZipperDown!1793 (ite c!1249948 (regOne!33643 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (ite c!1249947 (regTwo!33642 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (ite c!1249950 (regOne!33642 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (reg!16894 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292))))))) (ite (or c!1249948 c!1249947) (ite c!1249783 lt!2438637 (Context!11899 call!608928)) (Context!11899 call!609044)) (h!72319 s!2326)))))

(declare-fun bm!609042 () Bool)

(assert (=> bm!609042 (= call!609045 (derivationStepZipperDown!1793 (ite c!1249948 (regTwo!33643 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))) (regOne!33642 (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292))))) (ite c!1249948 (ite c!1249783 lt!2438637 (Context!11899 call!608928)) (Context!11899 call!609046)) (h!72319 s!2326)))))

(declare-fun b!6738657 () Bool)

(declare-fun c!1249951 () Bool)

(assert (=> b!6738657 (= c!1249951 ((_ is Star!16565) (ite c!1249783 (regTwo!33643 (reg!16894 r!7292)) (regOne!33642 (reg!16894 r!7292)))))))

(assert (=> b!6738657 (= e!4070497 e!4070495)))

(declare-fun b!6738658 () Bool)

(assert (=> b!6738658 (= e!4070498 ((_ map or) call!609045 call!609042))))

(declare-fun b!6738659 () Bool)

(assert (=> b!6738659 (= e!4070495 call!609043)))

(assert (= (and d!2117234 c!1249949) b!6738651))

(assert (= (and d!2117234 (not c!1249949)) b!6738653))

(assert (= (and b!6738653 c!1249948) b!6738650))

(assert (= (and b!6738653 (not c!1249948)) b!6738656))

(assert (= (and b!6738656 res!2756523) b!6738649))

(assert (= (and b!6738656 c!1249947) b!6738658))

(assert (= (and b!6738656 (not c!1249947)) b!6738655))

(assert (= (and b!6738655 c!1249950) b!6738654))

(assert (= (and b!6738655 (not c!1249950)) b!6738657))

(assert (= (and b!6738657 c!1249951) b!6738659))

(assert (= (and b!6738657 (not c!1249951)) b!6738652))

(assert (= (or b!6738654 b!6738659) bm!609040))

(assert (= (or b!6738654 b!6738659) bm!609037))

(assert (= (or b!6738658 bm!609040) bm!609039))

(assert (= (or b!6738658 bm!609037) bm!609038))

(assert (= (or b!6738650 b!6738658) bm!609042))

(assert (= (or b!6738650 bm!609038) bm!609041))

(declare-fun m!7495628 () Bool)

(assert (=> bm!609039 m!7495628))

(declare-fun m!7495632 () Bool)

(assert (=> b!6738649 m!7495632))

(declare-fun m!7495634 () Bool)

(assert (=> b!6738651 m!7495634))

(declare-fun m!7495640 () Bool)

(assert (=> bm!609041 m!7495640))

(declare-fun m!7495642 () Bool)

(assert (=> bm!609042 m!7495642))

(assert (=> bm!608924 d!2117234))

(declare-fun d!2117238 () Bool)

(assert (=> d!2117238 (= (isEmpty!38211 (t!379689 (exprs!6449 (h!72320 zl!343)))) ((_ is Nil!65870) (t!379689 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> b!6737867 d!2117238))

(declare-fun d!2117240 () Bool)

(declare-fun res!2756524 () Bool)

(declare-fun e!4070501 () Bool)

(assert (=> d!2117240 (=> res!2756524 e!4070501)))

(assert (=> d!2117240 (= res!2756524 ((_ is Nil!65870) (exprs!6449 (h!72320 zl!343))))))

(assert (=> d!2117240 (= (forall!15765 (exprs!6449 (h!72320 zl!343)) lambda!378385) e!4070501)))

(declare-fun b!6738660 () Bool)

(declare-fun e!4070502 () Bool)

(assert (=> b!6738660 (= e!4070501 e!4070502)))

(declare-fun res!2756525 () Bool)

(assert (=> b!6738660 (=> (not res!2756525) (not e!4070502))))

(assert (=> b!6738660 (= res!2756525 (dynLambda!26281 lambda!378385 (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun b!6738661 () Bool)

(assert (=> b!6738661 (= e!4070502 (forall!15765 (t!379689 (exprs!6449 (h!72320 zl!343))) lambda!378385))))

(assert (= (and d!2117240 (not res!2756524)) b!6738660))

(assert (= (and b!6738660 res!2756525) b!6738661))

(declare-fun b_lambda!253735 () Bool)

(assert (=> (not b_lambda!253735) (not b!6738660)))

(declare-fun m!7495644 () Bool)

(assert (=> b!6738660 m!7495644))

(declare-fun m!7495646 () Bool)

(assert (=> b!6738661 m!7495646))

(assert (=> d!2116888 d!2117240))

(declare-fun d!2117242 () Bool)

(declare-fun c!1249954 () Bool)

(assert (=> d!2117242 (= c!1249954 (and ((_ is ElementMatch!16565) (h!72318 (exprs!6449 (h!72320 zl!343)))) (= (c!1249609 (h!72318 (exprs!6449 (h!72320 zl!343)))) (h!72319 s!2326))))))

(declare-fun e!4070508 () (InoxSet Context!11898))

(assert (=> d!2117242 (= (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (h!72320 zl!343))) (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) (h!72319 s!2326)) e!4070508)))

(declare-fun bm!609043 () Bool)

(declare-fun call!609049 () (InoxSet Context!11898))

(declare-fun call!609048 () (InoxSet Context!11898))

(assert (=> bm!609043 (= call!609049 call!609048)))

(declare-fun b!6738662 () Bool)

(declare-fun e!4070504 () Bool)

(assert (=> b!6738662 (= e!4070504 (nullable!6552 (regOne!33642 (h!72318 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6738663 () Bool)

(declare-fun e!4070507 () (InoxSet Context!11898))

(declare-fun call!609053 () (InoxSet Context!11898))

(declare-fun call!609051 () (InoxSet Context!11898))

(assert (=> b!6738663 (= e!4070507 ((_ map or) call!609053 call!609051))))

(declare-fun b!6738664 () Bool)

(assert (=> b!6738664 (= e!4070508 (store ((as const (Array Context!11898 Bool)) false) (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) true))))

(declare-fun bm!609044 () Bool)

(assert (=> bm!609044 (= call!609048 call!609053)))

(declare-fun b!6738665 () Bool)

(declare-fun e!4070503 () (InoxSet Context!11898))

(assert (=> b!6738665 (= e!4070503 ((as const (Array Context!11898 Bool)) false))))

(declare-fun b!6738666 () Bool)

(assert (=> b!6738666 (= e!4070508 e!4070507)))

(declare-fun c!1249953 () Bool)

(assert (=> b!6738666 (= c!1249953 ((_ is Union!16565) (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun c!1249955 () Bool)

(declare-fun c!1249952 () Bool)

(declare-fun bm!609045 () Bool)

(declare-fun call!609052 () List!65994)

(assert (=> bm!609045 (= call!609052 ($colon$colon!2382 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343))))) (ite (or c!1249952 c!1249955) (regTwo!33642 (h!72318 (exprs!6449 (h!72320 zl!343)))) (h!72318 (exprs!6449 (h!72320 zl!343))))))))

(declare-fun b!6738667 () Bool)

(declare-fun e!4070505 () (InoxSet Context!11898))

(assert (=> b!6738667 (= e!4070505 call!609049)))

(declare-fun b!6738668 () Bool)

(declare-fun e!4070506 () (InoxSet Context!11898))

(assert (=> b!6738668 (= e!4070506 e!4070505)))

(assert (=> b!6738668 (= c!1249955 ((_ is Concat!25410) (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun bm!609046 () Bool)

(declare-fun call!609050 () List!65994)

(assert (=> bm!609046 (= call!609050 call!609052)))

(declare-fun b!6738669 () Bool)

(assert (=> b!6738669 (= c!1249952 e!4070504)))

(declare-fun res!2756526 () Bool)

(assert (=> b!6738669 (=> (not res!2756526) (not e!4070504))))

(assert (=> b!6738669 (= res!2756526 ((_ is Concat!25410) (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> b!6738669 (= e!4070507 e!4070506)))

(declare-fun bm!609047 () Bool)

(assert (=> bm!609047 (= call!609053 (derivationStepZipperDown!1793 (ite c!1249953 (regOne!33643 (h!72318 (exprs!6449 (h!72320 zl!343)))) (ite c!1249952 (regTwo!33642 (h!72318 (exprs!6449 (h!72320 zl!343)))) (ite c!1249955 (regOne!33642 (h!72318 (exprs!6449 (h!72320 zl!343)))) (reg!16894 (h!72318 (exprs!6449 (h!72320 zl!343))))))) (ite (or c!1249953 c!1249952) (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) (Context!11899 call!609050)) (h!72319 s!2326)))))

(declare-fun bm!609048 () Bool)

(assert (=> bm!609048 (= call!609051 (derivationStepZipperDown!1793 (ite c!1249953 (regTwo!33643 (h!72318 (exprs!6449 (h!72320 zl!343)))) (regOne!33642 (h!72318 (exprs!6449 (h!72320 zl!343))))) (ite c!1249953 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) (Context!11899 call!609052)) (h!72319 s!2326)))))

(declare-fun b!6738670 () Bool)

(declare-fun c!1249956 () Bool)

(assert (=> b!6738670 (= c!1249956 ((_ is Star!16565) (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> b!6738670 (= e!4070505 e!4070503)))

(declare-fun b!6738671 () Bool)

(assert (=> b!6738671 (= e!4070506 ((_ map or) call!609051 call!609048))))

(declare-fun b!6738672 () Bool)

(assert (=> b!6738672 (= e!4070503 call!609049)))

(assert (= (and d!2117242 c!1249954) b!6738664))

(assert (= (and d!2117242 (not c!1249954)) b!6738666))

(assert (= (and b!6738666 c!1249953) b!6738663))

(assert (= (and b!6738666 (not c!1249953)) b!6738669))

(assert (= (and b!6738669 res!2756526) b!6738662))

(assert (= (and b!6738669 c!1249952) b!6738671))

(assert (= (and b!6738669 (not c!1249952)) b!6738668))

(assert (= (and b!6738668 c!1249955) b!6738667))

(assert (= (and b!6738668 (not c!1249955)) b!6738670))

(assert (= (and b!6738670 c!1249956) b!6738672))

(assert (= (and b!6738670 (not c!1249956)) b!6738665))

(assert (= (or b!6738667 b!6738672) bm!609046))

(assert (= (or b!6738667 b!6738672) bm!609043))

(assert (= (or b!6738671 bm!609046) bm!609045))

(assert (= (or b!6738671 bm!609043) bm!609044))

(assert (= (or b!6738663 b!6738671) bm!609048))

(assert (= (or b!6738663 bm!609044) bm!609047))

(declare-fun m!7495652 () Bool)

(assert (=> bm!609045 m!7495652))

(declare-fun m!7495654 () Bool)

(assert (=> b!6738662 m!7495654))

(declare-fun m!7495656 () Bool)

(assert (=> b!6738664 m!7495656))

(declare-fun m!7495658 () Bool)

(assert (=> bm!609047 m!7495658))

(declare-fun m!7495660 () Bool)

(assert (=> bm!609048 m!7495660))

(assert (=> bm!608889 d!2117242))

(declare-fun d!2117248 () Bool)

(assert (=> d!2117248 (= (isEmpty!38211 (t!379689 (unfocusZipperList!1986 zl!343))) ((_ is Nil!65870) (t!379689 (unfocusZipperList!1986 zl!343))))))

(assert (=> b!6737688 d!2117248))

(declare-fun d!2117250 () Bool)

(assert (=> d!2117250 (= (isConcat!1453 lt!2438698) ((_ is Concat!25410) lt!2438698))))

(assert (=> b!6737863 d!2117250))

(declare-fun bs!1791861 () Bool)

(declare-fun d!2117252 () Bool)

(assert (= bs!1791861 (and d!2117252 d!2117184)))

(declare-fun lambda!378481 () Int)

(assert (=> bs!1791861 (= lambda!378481 lambda!378468)))

(assert (=> d!2117252 (= (nullableZipper!2279 lt!2438633) (exists!2698 lt!2438633 lambda!378481))))

(declare-fun bs!1791862 () Bool)

(assert (= bs!1791862 d!2117252))

(declare-fun m!7495662 () Bool)

(assert (=> bs!1791862 m!7495662))

(assert (=> b!6737591 d!2117252))

(assert (=> d!2117010 d!2116966))

(declare-fun d!2117254 () Bool)

(assert (=> d!2117254 (= (Exists!3633 lambda!378443) (choose!50229 lambda!378443))))

(declare-fun bs!1791863 () Bool)

(assert (= bs!1791863 d!2117254))

(declare-fun m!7495664 () Bool)

(assert (=> bs!1791863 m!7495664))

(assert (=> d!2117010 d!2117254))

(declare-fun bs!1791864 () Bool)

(declare-fun d!2117256 () Bool)

(assert (= bs!1791864 (and d!2117256 b!6738548)))

(declare-fun lambda!378484 () Int)

(assert (=> bs!1791864 (not (= lambda!378484 lambda!378477))))

(declare-fun bs!1791865 () Bool)

(assert (= bs!1791865 (and d!2117256 b!6737451)))

(assert (=> bs!1791865 (= lambda!378484 lambda!378368)))

(declare-fun bs!1791866 () Bool)

(assert (= bs!1791866 (and d!2117256 b!6738106)))

(assert (=> bs!1791866 (not (= lambda!378484 lambda!378448))))

(declare-fun bs!1791867 () Bool)

(assert (= bs!1791867 (and d!2117256 b!6738388)))

(assert (=> bs!1791867 (not (= lambda!378484 lambda!378462))))

(declare-fun bs!1791868 () Bool)

(assert (= bs!1791868 (and d!2117256 b!6738383)))

(assert (=> bs!1791868 (not (= lambda!378484 lambda!378463))))

(declare-fun bs!1791869 () Bool)

(assert (= bs!1791869 (and d!2117256 b!6738101)))

(assert (=> bs!1791869 (not (= lambda!378484 lambda!378449))))

(declare-fun bs!1791870 () Bool)

(assert (= bs!1791870 (and d!2117256 d!2116970)))

(assert (=> bs!1791870 (not (= lambda!378484 lambda!378426))))

(declare-fun bs!1791871 () Bool)

(assert (= bs!1791871 (and d!2117256 d!2117074)))

(assert (=> bs!1791871 (not (= lambda!378484 lambda!378457))))

(declare-fun bs!1791872 () Bool)

(assert (= bs!1791872 (and d!2117256 b!6738543)))

(assert (=> bs!1791872 (not (= lambda!378484 lambda!378478))))

(assert (=> bs!1791865 (not (= lambda!378484 lambda!378370))))

(declare-fun bs!1791873 () Bool)

(assert (= bs!1791873 (and d!2117256 d!2117202)))

(assert (=> bs!1791873 (not (= lambda!378484 lambda!378476))))

(assert (=> bs!1791871 (= lambda!378484 lambda!378456)))

(assert (=> bs!1791870 (= lambda!378484 lambda!378425)))

(assert (=> bs!1791873 (= (= r!7292 (Star!16565 (reg!16894 r!7292))) (= lambda!378484 lambda!378475))))

(declare-fun bs!1791874 () Bool)

(assert (= bs!1791874 (and d!2117256 d!2116976)))

(assert (=> bs!1791874 (= (= r!7292 (Star!16565 (reg!16894 r!7292))) (= lambda!378484 lambda!378436))))

(assert (=> bs!1791865 (not (= lambda!378484 lambda!378369))))

(assert (=> bs!1791874 (not (= lambda!378484 lambda!378439))))

(declare-fun bs!1791875 () Bool)

(assert (= bs!1791875 (and d!2117256 d!2117010)))

(assert (=> bs!1791875 (= lambda!378484 lambda!378443)))

(assert (=> d!2117256 true))

(assert (=> d!2117256 true))

(assert (=> d!2117256 true))

(assert (=> d!2117256 (= (isDefined!13155 (findConcatSeparation!2866 (reg!16894 r!7292) r!7292 Nil!65871 s!2326 s!2326)) (Exists!3633 lambda!378484))))

(assert (=> d!2117256 true))

(declare-fun _$89!2971 () Unit!159821)

(assert (=> d!2117256 (= (choose!50231 (reg!16894 r!7292) r!7292 s!2326) _$89!2971)))

(declare-fun bs!1791876 () Bool)

(assert (= bs!1791876 d!2117256))

(assert (=> bs!1791876 m!7494688))

(assert (=> bs!1791876 m!7494688))

(assert (=> bs!1791876 m!7494690))

(declare-fun m!7495680 () Bool)

(assert (=> bs!1791876 m!7495680))

(assert (=> d!2117010 d!2117256))

(assert (=> d!2117010 d!2117002))

(assert (=> d!2117010 d!2117076))

(assert (=> bs!1791686 d!2117016))

(declare-fun d!2117260 () Bool)

(declare-fun c!1249970 () Bool)

(declare-fun e!4070531 () Bool)

(assert (=> d!2117260 (= c!1249970 e!4070531)))

(declare-fun res!2756541 () Bool)

(assert (=> d!2117260 (=> (not res!2756541) (not e!4070531))))

(assert (=> d!2117260 (= res!2756541 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))))))))

(declare-fun e!4070532 () (InoxSet Context!11898))

(assert (=> d!2117260 (= (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))) (h!72319 s!2326)) e!4070532)))

(declare-fun call!609061 () (InoxSet Context!11898))

(declare-fun b!6738713 () Bool)

(assert (=> b!6738713 (= e!4070532 ((_ map or) call!609061 (derivationStepZipperUp!1719 (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343))))))) (h!72319 s!2326))))))

(declare-fun b!6738714 () Bool)

(declare-fun e!4070530 () (InoxSet Context!11898))

(assert (=> b!6738714 (= e!4070530 call!609061)))

(declare-fun b!6738715 () Bool)

(assert (=> b!6738715 (= e!4070531 (nullable!6552 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343))))))))))

(declare-fun b!6738716 () Bool)

(assert (=> b!6738716 (= e!4070532 e!4070530)))

(declare-fun c!1249971 () Bool)

(assert (=> b!6738716 (= c!1249971 ((_ is Cons!65870) (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))))))))

(declare-fun bm!609056 () Bool)

(assert (=> bm!609056 (= call!609061 (derivationStepZipperDown!1793 (h!72318 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343)))))) (Context!11899 (t!379689 (exprs!6449 (Context!11899 (t!379689 (exprs!6449 (h!72320 zl!343))))))) (h!72319 s!2326)))))

(declare-fun b!6738717 () Bool)

(assert (=> b!6738717 (= e!4070530 ((as const (Array Context!11898 Bool)) false))))

(assert (= (and d!2117260 res!2756541) b!6738715))

(assert (= (and d!2117260 c!1249970) b!6738713))

(assert (= (and d!2117260 (not c!1249970)) b!6738716))

(assert (= (and b!6738716 c!1249971) b!6738714))

(assert (= (and b!6738716 (not c!1249971)) b!6738717))

(assert (= (or b!6738713 b!6738714) bm!609056))

(declare-fun m!7495682 () Bool)

(assert (=> b!6738713 m!7495682))

(declare-fun m!7495684 () Bool)

(assert (=> b!6738715 m!7495684))

(declare-fun m!7495686 () Bool)

(assert (=> bm!609056 m!7495686))

(assert (=> b!6737722 d!2117260))

(assert (=> d!2117002 d!2117078))

(declare-fun b!6738718 () Bool)

(declare-fun e!4070536 () Bool)

(assert (=> b!6738718 (= e!4070536 (matchR!8748 (derivativeStep!5237 (reg!16894 r!7292) (head!13556 Nil!65871)) (tail!12641 Nil!65871)))))

(declare-fun d!2117262 () Bool)

(declare-fun e!4070534 () Bool)

(assert (=> d!2117262 e!4070534))

(declare-fun c!1249974 () Bool)

(assert (=> d!2117262 (= c!1249974 ((_ is EmptyExpr!16565) (reg!16894 r!7292)))))

(declare-fun lt!2438763 () Bool)

(assert (=> d!2117262 (= lt!2438763 e!4070536)))

(declare-fun c!1249972 () Bool)

(assert (=> d!2117262 (= c!1249972 (isEmpty!38209 Nil!65871))))

(assert (=> d!2117262 (validRegex!8301 (reg!16894 r!7292))))

(assert (=> d!2117262 (= (matchR!8748 (reg!16894 r!7292) Nil!65871) lt!2438763)))

(declare-fun b!6738719 () Bool)

(declare-fun e!4070539 () Bool)

(assert (=> b!6738719 (= e!4070539 (not lt!2438763))))

(declare-fun b!6738720 () Bool)

(declare-fun res!2756547 () Bool)

(declare-fun e!4070538 () Bool)

(assert (=> b!6738720 (=> res!2756547 e!4070538)))

(declare-fun e!4070533 () Bool)

(assert (=> b!6738720 (= res!2756547 e!4070533)))

(declare-fun res!2756548 () Bool)

(assert (=> b!6738720 (=> (not res!2756548) (not e!4070533))))

(assert (=> b!6738720 (= res!2756548 lt!2438763)))

(declare-fun b!6738721 () Bool)

(declare-fun e!4070537 () Bool)

(assert (=> b!6738721 (= e!4070537 (not (= (head!13556 Nil!65871) (c!1249609 (reg!16894 r!7292)))))))

(declare-fun b!6738722 () Bool)

(declare-fun res!2756543 () Bool)

(assert (=> b!6738722 (=> (not res!2756543) (not e!4070533))))

(assert (=> b!6738722 (= res!2756543 (isEmpty!38209 (tail!12641 Nil!65871)))))

(declare-fun b!6738723 () Bool)

(declare-fun res!2756542 () Bool)

(assert (=> b!6738723 (=> res!2756542 e!4070537)))

(assert (=> b!6738723 (= res!2756542 (not (isEmpty!38209 (tail!12641 Nil!65871))))))

(declare-fun b!6738724 () Bool)

(assert (=> b!6738724 (= e!4070536 (nullable!6552 (reg!16894 r!7292)))))

(declare-fun b!6738725 () Bool)

(assert (=> b!6738725 (= e!4070533 (= (head!13556 Nil!65871) (c!1249609 (reg!16894 r!7292))))))

(declare-fun b!6738726 () Bool)

(declare-fun e!4070535 () Bool)

(assert (=> b!6738726 (= e!4070535 e!4070537)))

(declare-fun res!2756544 () Bool)

(assert (=> b!6738726 (=> res!2756544 e!4070537)))

(declare-fun call!609064 () Bool)

(assert (=> b!6738726 (= res!2756544 call!609064)))

(declare-fun b!6738727 () Bool)

(assert (=> b!6738727 (= e!4070534 e!4070539)))

(declare-fun c!1249973 () Bool)

(assert (=> b!6738727 (= c!1249973 ((_ is EmptyLang!16565) (reg!16894 r!7292)))))

(declare-fun b!6738728 () Bool)

(declare-fun res!2756546 () Bool)

(assert (=> b!6738728 (=> res!2756546 e!4070538)))

(assert (=> b!6738728 (= res!2756546 (not ((_ is ElementMatch!16565) (reg!16894 r!7292))))))

(assert (=> b!6738728 (= e!4070539 e!4070538)))

(declare-fun b!6738729 () Bool)

(assert (=> b!6738729 (= e!4070538 e!4070535)))

(declare-fun res!2756545 () Bool)

(assert (=> b!6738729 (=> (not res!2756545) (not e!4070535))))

(assert (=> b!6738729 (= res!2756545 (not lt!2438763))))

(declare-fun b!6738730 () Bool)

(declare-fun res!2756549 () Bool)

(assert (=> b!6738730 (=> (not res!2756549) (not e!4070533))))

(assert (=> b!6738730 (= res!2756549 (not call!609064))))

(declare-fun b!6738731 () Bool)

(assert (=> b!6738731 (= e!4070534 (= lt!2438763 call!609064))))

(declare-fun bm!609059 () Bool)

(assert (=> bm!609059 (= call!609064 (isEmpty!38209 Nil!65871))))

(assert (= (and d!2117262 c!1249972) b!6738724))

(assert (= (and d!2117262 (not c!1249972)) b!6738718))

(assert (= (and d!2117262 c!1249974) b!6738731))

(assert (= (and d!2117262 (not c!1249974)) b!6738727))

(assert (= (and b!6738727 c!1249973) b!6738719))

(assert (= (and b!6738727 (not c!1249973)) b!6738728))

(assert (= (and b!6738728 (not res!2756546)) b!6738720))

(assert (= (and b!6738720 res!2756548) b!6738730))

(assert (= (and b!6738730 res!2756549) b!6738722))

(assert (= (and b!6738722 res!2756543) b!6738725))

(assert (= (and b!6738720 (not res!2756547)) b!6738729))

(assert (= (and b!6738729 res!2756545) b!6738726))

(assert (= (and b!6738726 (not res!2756544)) b!6738723))

(assert (= (and b!6738723 (not res!2756542)) b!6738721))

(assert (= (or b!6738731 b!6738726 b!6738730) bm!609059))

(declare-fun m!7495688 () Bool)

(assert (=> bm!609059 m!7495688))

(declare-fun m!7495690 () Bool)

(assert (=> b!6738725 m!7495690))

(assert (=> b!6738718 m!7495690))

(assert (=> b!6738718 m!7495690))

(declare-fun m!7495692 () Bool)

(assert (=> b!6738718 m!7495692))

(declare-fun m!7495694 () Bool)

(assert (=> b!6738718 m!7495694))

(assert (=> b!6738718 m!7495692))

(assert (=> b!6738718 m!7495694))

(declare-fun m!7495696 () Bool)

(assert (=> b!6738718 m!7495696))

(assert (=> d!2117262 m!7495688))

(assert (=> d!2117262 m!7495010))

(assert (=> b!6738722 m!7495694))

(assert (=> b!6738722 m!7495694))

(declare-fun m!7495698 () Bool)

(assert (=> b!6738722 m!7495698))

(assert (=> b!6738721 m!7495690))

(assert (=> b!6738724 m!7494904))

(assert (=> b!6738723 m!7495694))

(assert (=> b!6738723 m!7495694))

(assert (=> b!6738723 m!7495698))

(assert (=> d!2117002 d!2117262))

(assert (=> d!2117002 d!2117076))

(declare-fun d!2117264 () Bool)

(declare-fun c!1249975 () Bool)

(assert (=> d!2117264 (= c!1249975 (isEmpty!38209 (tail!12641 (t!379690 s!2326))))))

(declare-fun e!4070540 () Bool)

(assert (=> d!2117264 (= (matchZipper!2551 (derivationStepZipper!2509 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (head!13556 (t!379690 s!2326))) (tail!12641 (t!379690 s!2326))) e!4070540)))

(declare-fun b!6738732 () Bool)

(assert (=> b!6738732 (= e!4070540 (nullableZipper!2279 (derivationStepZipper!2509 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (head!13556 (t!379690 s!2326)))))))

(declare-fun b!6738733 () Bool)

(assert (=> b!6738733 (= e!4070540 (matchZipper!2551 (derivationStepZipper!2509 (derivationStepZipper!2509 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (head!13556 (t!379690 s!2326))) (head!13556 (tail!12641 (t!379690 s!2326)))) (tail!12641 (tail!12641 (t!379690 s!2326)))))))

(assert (= (and d!2117264 c!1249975) b!6738732))

(assert (= (and d!2117264 (not c!1249975)) b!6738733))

(assert (=> d!2117264 m!7494782))

(declare-fun m!7495700 () Bool)

(assert (=> d!2117264 m!7495700))

(assert (=> b!6738732 m!7494780))

(declare-fun m!7495702 () Bool)

(assert (=> b!6738732 m!7495702))

(assert (=> b!6738733 m!7494782))

(declare-fun m!7495704 () Bool)

(assert (=> b!6738733 m!7495704))

(assert (=> b!6738733 m!7494780))

(assert (=> b!6738733 m!7495704))

(declare-fun m!7495706 () Bool)

(assert (=> b!6738733 m!7495706))

(assert (=> b!6738733 m!7494782))

(declare-fun m!7495708 () Bool)

(assert (=> b!6738733 m!7495708))

(assert (=> b!6738733 m!7495706))

(assert (=> b!6738733 m!7495708))

(declare-fun m!7495710 () Bool)

(assert (=> b!6738733 m!7495710))

(assert (=> b!6737594 d!2117264))

(declare-fun bs!1791877 () Bool)

(declare-fun d!2117266 () Bool)

(assert (= bs!1791877 (and d!2117266 b!6737448)))

(declare-fun lambda!378485 () Int)

(assert (=> bs!1791877 (= (= (head!13556 (t!379690 s!2326)) (h!72319 s!2326)) (= lambda!378485 lambda!378371))))

(declare-fun bs!1791878 () Bool)

(assert (= bs!1791878 (and d!2117266 d!2116898)))

(assert (=> bs!1791878 (= (= (head!13556 (t!379690 s!2326)) (h!72319 s!2326)) (= lambda!378485 lambda!378388))))

(declare-fun bs!1791879 () Bool)

(assert (= bs!1791879 (and d!2117266 d!2116960)))

(assert (=> bs!1791879 (= (= (head!13556 (t!379690 s!2326)) (h!72319 s!2326)) (= lambda!378485 lambda!378411))))

(declare-fun bs!1791880 () Bool)

(assert (= bs!1791880 (and d!2117266 d!2117056)))

(assert (=> bs!1791880 (= (= (head!13556 (t!379690 s!2326)) (head!13556 s!2326)) (= lambda!378485 lambda!378450))))

(assert (=> d!2117266 true))

(assert (=> d!2117266 (= (derivationStepZipper!2509 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) (head!13556 (t!379690 s!2326))) (flatMap!2046 (derivationStepZipper!2509 lt!2438633 (h!72319 s!2326)) lambda!378485))))

(declare-fun bs!1791881 () Bool)

(assert (= bs!1791881 d!2117266))

(assert (=> bs!1791881 m!7494614))

(declare-fun m!7495712 () Bool)

(assert (=> bs!1791881 m!7495712))

(assert (=> b!6737594 d!2117266))

(declare-fun d!2117268 () Bool)

(assert (=> d!2117268 (= (head!13556 (t!379690 s!2326)) (h!72319 (t!379690 s!2326)))))

(assert (=> b!6737594 d!2117268))

(declare-fun d!2117270 () Bool)

(assert (=> d!2117270 (= (tail!12641 (t!379690 s!2326)) (t!379690 (t!379690 s!2326)))))

(assert (=> b!6737594 d!2117270))

(assert (=> d!2117022 d!2117000))

(assert (=> d!2117022 d!2116940))

(declare-fun d!2117272 () Bool)

(assert (=> d!2117272 (= (nullable!6552 (h!72318 (exprs!6449 lt!2438628))) (nullableFct!2465 (h!72318 (exprs!6449 lt!2438628))))))

(declare-fun bs!1791882 () Bool)

(assert (= bs!1791882 d!2117272))

(declare-fun m!7495714 () Bool)

(assert (=> bs!1791882 m!7495714))

(assert (=> b!6738066 d!2117272))

(declare-fun d!2117274 () Bool)

(assert (=> d!2117274 (= (nullable!6552 (regOne!33642 (reg!16894 r!7292))) (nullableFct!2465 (regOne!33642 (reg!16894 r!7292))))))

(declare-fun bs!1791883 () Bool)

(assert (= bs!1791883 d!2117274))

(declare-fun m!7495716 () Bool)

(assert (=> bs!1791883 m!7495716))

(assert (=> b!6738053 d!2117274))

(assert (=> b!6738041 d!2117022))

(declare-fun d!2117276 () Bool)

(assert (=> d!2117276 (= ($colon$colon!2382 (exprs!6449 (Context!11899 Nil!65870)) (ite (or c!1249720 c!1249723) (regTwo!33642 r!7292) r!7292)) (Cons!65870 (ite (or c!1249720 c!1249723) (regTwo!33642 r!7292) r!7292) (exprs!6449 (Context!11899 Nil!65870))))))

(assert (=> bm!608913 d!2117276))

(assert (=> d!2116892 d!2117000))

(declare-fun d!2117278 () Bool)

(assert (=> d!2117278 (= (isEmpty!38209 (t!379690 s!2326)) ((_ is Nil!65871) (t!379690 s!2326)))))

(assert (=> d!2116896 d!2117278))

(declare-fun c!1249982 () Bool)

(declare-fun bm!609064 () Bool)

(declare-fun call!609069 () Bool)

(assert (=> bm!609064 (= call!609069 (validRegex!8301 (ite c!1249982 (regOne!33643 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))) (regOne!33642 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))))))))

(declare-fun b!6738744 () Bool)

(declare-fun e!4070550 () Bool)

(declare-fun e!4070552 () Bool)

(assert (=> b!6738744 (= e!4070550 e!4070552)))

(declare-fun res!2756553 () Bool)

(assert (=> b!6738744 (=> (not res!2756553) (not e!4070552))))

(assert (=> b!6738744 (= res!2756553 call!609069)))

(declare-fun c!1249981 () Bool)

(declare-fun call!609071 () Bool)

(declare-fun bm!609065 () Bool)

(assert (=> bm!609065 (= call!609071 (validRegex!8301 (ite c!1249981 (reg!16894 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))) (ite c!1249982 (regTwo!33643 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))) (regTwo!33642 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292))))))))))

(declare-fun b!6738745 () Bool)

(declare-fun e!4070548 () Bool)

(declare-fun call!609070 () Bool)

(assert (=> b!6738745 (= e!4070548 call!609070)))

(declare-fun b!6738746 () Bool)

(declare-fun e!4070549 () Bool)

(assert (=> b!6738746 (= e!4070549 call!609071)))

(declare-fun b!6738747 () Bool)

(declare-fun e!4070551 () Bool)

(declare-fun e!4070546 () Bool)

(assert (=> b!6738747 (= e!4070551 e!4070546)))

(assert (=> b!6738747 (= c!1249981 ((_ is Star!16565) (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))))))

(declare-fun b!6738748 () Bool)

(assert (=> b!6738748 (= e!4070552 call!609070)))

(declare-fun b!6738749 () Bool)

(assert (=> b!6738749 (= e!4070546 e!4070549)))

(declare-fun res!2756554 () Bool)

(assert (=> b!6738749 (= res!2756554 (not (nullable!6552 (reg!16894 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))))))))

(assert (=> b!6738749 (=> (not res!2756554) (not e!4070549))))

(declare-fun b!6738750 () Bool)

(declare-fun e!4070547 () Bool)

(assert (=> b!6738750 (= e!4070546 e!4070547)))

(assert (=> b!6738750 (= c!1249982 ((_ is Union!16565) (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))))))

(declare-fun d!2117280 () Bool)

(declare-fun res!2756551 () Bool)

(assert (=> d!2117280 (=> res!2756551 e!4070551)))

(assert (=> d!2117280 (= res!2756551 ((_ is ElementMatch!16565) (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))))))

(assert (=> d!2117280 (= (validRegex!8301 (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292)))) e!4070551)))

(declare-fun bm!609066 () Bool)

(assert (=> bm!609066 (= call!609070 call!609071)))

(declare-fun b!6738751 () Bool)

(declare-fun res!2756552 () Bool)

(assert (=> b!6738751 (=> res!2756552 e!4070550)))

(assert (=> b!6738751 (= res!2756552 (not ((_ is Concat!25410) (ite c!1249706 (reg!16894 r!7292) (ite c!1249707 (regTwo!33643 r!7292) (regTwo!33642 r!7292))))))))

(assert (=> b!6738751 (= e!4070547 e!4070550)))

(declare-fun b!6738752 () Bool)

(declare-fun res!2756550 () Bool)

(assert (=> b!6738752 (=> (not res!2756550) (not e!4070548))))

(assert (=> b!6738752 (= res!2756550 call!609069)))

(assert (=> b!6738752 (= e!4070547 e!4070548)))

(assert (= (and d!2117280 (not res!2756551)) b!6738747))

(assert (= (and b!6738747 c!1249981) b!6738749))

(assert (= (and b!6738747 (not c!1249981)) b!6738750))

(assert (= (and b!6738749 res!2756554) b!6738746))

(assert (= (and b!6738750 c!1249982) b!6738752))

(assert (= (and b!6738750 (not c!1249982)) b!6738751))

(assert (= (and b!6738752 res!2756550) b!6738745))

(assert (= (and b!6738751 (not res!2756552)) b!6738744))

(assert (= (and b!6738744 res!2756553) b!6738748))

(assert (= (or b!6738745 b!6738748) bm!609066))

(assert (= (or b!6738752 b!6738744) bm!609064))

(assert (= (or b!6738746 bm!609066) bm!609065))

(declare-fun m!7495724 () Bool)

(assert (=> bm!609064 m!7495724))

(declare-fun m!7495726 () Bool)

(assert (=> bm!609065 m!7495726))

(declare-fun m!7495728 () Bool)

(assert (=> b!6738749 m!7495728))

(assert (=> bm!608897 d!2117280))

(declare-fun b!6738754 () Bool)

(declare-fun e!4070553 () Bool)

(declare-fun tp!1847286 () Bool)

(declare-fun tp!1847288 () Bool)

(assert (=> b!6738754 (= e!4070553 (and tp!1847286 tp!1847288))))

(assert (=> b!6738172 (= tp!1847232 e!4070553)))

(declare-fun b!6738755 () Bool)

(declare-fun tp!1847289 () Bool)

(assert (=> b!6738755 (= e!4070553 tp!1847289)))

(declare-fun b!6738753 () Bool)

(assert (=> b!6738753 (= e!4070553 tp_is_empty!42383)))

(declare-fun b!6738756 () Bool)

(declare-fun tp!1847290 () Bool)

(declare-fun tp!1847287 () Bool)

(assert (=> b!6738756 (= e!4070553 (and tp!1847290 tp!1847287))))

(assert (= (and b!6738172 ((_ is ElementMatch!16565) (regOne!33643 (regOne!33643 r!7292)))) b!6738753))

(assert (= (and b!6738172 ((_ is Concat!25410) (regOne!33643 (regOne!33643 r!7292)))) b!6738754))

(assert (= (and b!6738172 ((_ is Star!16565) (regOne!33643 (regOne!33643 r!7292)))) b!6738755))

(assert (= (and b!6738172 ((_ is Union!16565) (regOne!33643 (regOne!33643 r!7292)))) b!6738756))

(declare-fun b!6738758 () Bool)

(declare-fun e!4070554 () Bool)

(declare-fun tp!1847291 () Bool)

(declare-fun tp!1847293 () Bool)

(assert (=> b!6738758 (= e!4070554 (and tp!1847291 tp!1847293))))

(assert (=> b!6738172 (= tp!1847229 e!4070554)))

(declare-fun b!6738759 () Bool)

(declare-fun tp!1847294 () Bool)

(assert (=> b!6738759 (= e!4070554 tp!1847294)))

(declare-fun b!6738757 () Bool)

(assert (=> b!6738757 (= e!4070554 tp_is_empty!42383)))

(declare-fun b!6738760 () Bool)

(declare-fun tp!1847295 () Bool)

(declare-fun tp!1847292 () Bool)

(assert (=> b!6738760 (= e!4070554 (and tp!1847295 tp!1847292))))

(assert (= (and b!6738172 ((_ is ElementMatch!16565) (regTwo!33643 (regOne!33643 r!7292)))) b!6738757))

(assert (= (and b!6738172 ((_ is Concat!25410) (regTwo!33643 (regOne!33643 r!7292)))) b!6738758))

(assert (= (and b!6738172 ((_ is Star!16565) (regTwo!33643 (regOne!33643 r!7292)))) b!6738759))

(assert (= (and b!6738172 ((_ is Union!16565) (regTwo!33643 (regOne!33643 r!7292)))) b!6738760))

(declare-fun b!6738762 () Bool)

(declare-fun e!4070555 () Bool)

(declare-fun tp!1847296 () Bool)

(declare-fun tp!1847298 () Bool)

(assert (=> b!6738762 (= e!4070555 (and tp!1847296 tp!1847298))))

(assert (=> b!6738194 (= tp!1847254 e!4070555)))

(declare-fun b!6738763 () Bool)

(declare-fun tp!1847299 () Bool)

(assert (=> b!6738763 (= e!4070555 tp!1847299)))

(declare-fun b!6738761 () Bool)

(assert (=> b!6738761 (= e!4070555 tp_is_empty!42383)))

(declare-fun b!6738764 () Bool)

(declare-fun tp!1847300 () Bool)

(declare-fun tp!1847297 () Bool)

(assert (=> b!6738764 (= e!4070555 (and tp!1847300 tp!1847297))))

(assert (= (and b!6738194 ((_ is ElementMatch!16565) (regOne!33642 (regTwo!33642 r!7292)))) b!6738761))

(assert (= (and b!6738194 ((_ is Concat!25410) (regOne!33642 (regTwo!33642 r!7292)))) b!6738762))

(assert (= (and b!6738194 ((_ is Star!16565) (regOne!33642 (regTwo!33642 r!7292)))) b!6738763))

(assert (= (and b!6738194 ((_ is Union!16565) (regOne!33642 (regTwo!33642 r!7292)))) b!6738764))

(declare-fun b!6738766 () Bool)

(declare-fun e!4070556 () Bool)

(declare-fun tp!1847301 () Bool)

(declare-fun tp!1847303 () Bool)

(assert (=> b!6738766 (= e!4070556 (and tp!1847301 tp!1847303))))

(assert (=> b!6738194 (= tp!1847256 e!4070556)))

(declare-fun b!6738767 () Bool)

(declare-fun tp!1847304 () Bool)

(assert (=> b!6738767 (= e!4070556 tp!1847304)))

(declare-fun b!6738765 () Bool)

(assert (=> b!6738765 (= e!4070556 tp_is_empty!42383)))

(declare-fun b!6738768 () Bool)

(declare-fun tp!1847305 () Bool)

(declare-fun tp!1847302 () Bool)

(assert (=> b!6738768 (= e!4070556 (and tp!1847305 tp!1847302))))

(assert (= (and b!6738194 ((_ is ElementMatch!16565) (regTwo!33642 (regTwo!33642 r!7292)))) b!6738765))

(assert (= (and b!6738194 ((_ is Concat!25410) (regTwo!33642 (regTwo!33642 r!7292)))) b!6738766))

(assert (= (and b!6738194 ((_ is Star!16565) (regTwo!33642 (regTwo!33642 r!7292)))) b!6738767))

(assert (= (and b!6738194 ((_ is Union!16565) (regTwo!33642 (regTwo!33642 r!7292)))) b!6738768))

(declare-fun b!6738770 () Bool)

(declare-fun e!4070557 () Bool)

(declare-fun tp!1847306 () Bool)

(declare-fun tp!1847308 () Bool)

(assert (=> b!6738770 (= e!4070557 (and tp!1847306 tp!1847308))))

(assert (=> b!6738171 (= tp!1847231 e!4070557)))

(declare-fun b!6738771 () Bool)

(declare-fun tp!1847309 () Bool)

(assert (=> b!6738771 (= e!4070557 tp!1847309)))

(declare-fun b!6738769 () Bool)

(assert (=> b!6738769 (= e!4070557 tp_is_empty!42383)))

(declare-fun b!6738772 () Bool)

(declare-fun tp!1847310 () Bool)

(declare-fun tp!1847307 () Bool)

(assert (=> b!6738772 (= e!4070557 (and tp!1847310 tp!1847307))))

(assert (= (and b!6738171 ((_ is ElementMatch!16565) (reg!16894 (regOne!33643 r!7292)))) b!6738769))

(assert (= (and b!6738171 ((_ is Concat!25410) (reg!16894 (regOne!33643 r!7292)))) b!6738770))

(assert (= (and b!6738171 ((_ is Star!16565) (reg!16894 (regOne!33643 r!7292)))) b!6738771))

(assert (= (and b!6738171 ((_ is Union!16565) (reg!16894 (regOne!33643 r!7292)))) b!6738772))

(declare-fun b!6738774 () Bool)

(declare-fun e!4070558 () Bool)

(declare-fun tp!1847311 () Bool)

(declare-fun tp!1847313 () Bool)

(assert (=> b!6738774 (= e!4070558 (and tp!1847311 tp!1847313))))

(assert (=> b!6738170 (= tp!1847228 e!4070558)))

(declare-fun b!6738775 () Bool)

(declare-fun tp!1847314 () Bool)

(assert (=> b!6738775 (= e!4070558 tp!1847314)))

(declare-fun b!6738773 () Bool)

(assert (=> b!6738773 (= e!4070558 tp_is_empty!42383)))

(declare-fun b!6738776 () Bool)

(declare-fun tp!1847315 () Bool)

(declare-fun tp!1847312 () Bool)

(assert (=> b!6738776 (= e!4070558 (and tp!1847315 tp!1847312))))

(assert (= (and b!6738170 ((_ is ElementMatch!16565) (regOne!33642 (regOne!33643 r!7292)))) b!6738773))

(assert (= (and b!6738170 ((_ is Concat!25410) (regOne!33642 (regOne!33643 r!7292)))) b!6738774))

(assert (= (and b!6738170 ((_ is Star!16565) (regOne!33642 (regOne!33643 r!7292)))) b!6738775))

(assert (= (and b!6738170 ((_ is Union!16565) (regOne!33642 (regOne!33643 r!7292)))) b!6738776))

(declare-fun b!6738778 () Bool)

(declare-fun e!4070559 () Bool)

(declare-fun tp!1847316 () Bool)

(declare-fun tp!1847318 () Bool)

(assert (=> b!6738778 (= e!4070559 (and tp!1847316 tp!1847318))))

(assert (=> b!6738170 (= tp!1847230 e!4070559)))

(declare-fun b!6738779 () Bool)

(declare-fun tp!1847319 () Bool)

(assert (=> b!6738779 (= e!4070559 tp!1847319)))

(declare-fun b!6738777 () Bool)

(assert (=> b!6738777 (= e!4070559 tp_is_empty!42383)))

(declare-fun b!6738780 () Bool)

(declare-fun tp!1847320 () Bool)

(declare-fun tp!1847317 () Bool)

(assert (=> b!6738780 (= e!4070559 (and tp!1847320 tp!1847317))))

(assert (= (and b!6738170 ((_ is ElementMatch!16565) (regTwo!33642 (regOne!33643 r!7292)))) b!6738777))

(assert (= (and b!6738170 ((_ is Concat!25410) (regTwo!33642 (regOne!33643 r!7292)))) b!6738778))

(assert (= (and b!6738170 ((_ is Star!16565) (regTwo!33642 (regOne!33643 r!7292)))) b!6738779))

(assert (= (and b!6738170 ((_ is Union!16565) (regTwo!33642 (regOne!33643 r!7292)))) b!6738780))

(declare-fun b!6738781 () Bool)

(declare-fun e!4070560 () Bool)

(declare-fun tp!1847321 () Bool)

(assert (=> b!6738781 (= e!4070560 (and tp_is_empty!42383 tp!1847321))))

(assert (=> b!6738207 (= tp!1847269 e!4070560)))

(assert (= (and b!6738207 ((_ is Cons!65871) (t!379690 (t!379690 s!2326)))) b!6738781))

(declare-fun condSetEmpty!45999 () Bool)

(assert (=> setNonEmpty!45993 (= condSetEmpty!45999 (= setRest!45993 ((as const (Array Context!11898 Bool)) false)))))

(declare-fun setRes!45999 () Bool)

(assert (=> setNonEmpty!45993 (= tp!1847264 setRes!45999)))

(declare-fun setIsEmpty!45999 () Bool)

(assert (=> setIsEmpty!45999 setRes!45999))

(declare-fun tp!1847323 () Bool)

(declare-fun setElem!45999 () Context!11898)

(declare-fun setNonEmpty!45999 () Bool)

(declare-fun e!4070561 () Bool)

(assert (=> setNonEmpty!45999 (= setRes!45999 (and tp!1847323 (inv!84659 setElem!45999) e!4070561))))

(declare-fun setRest!45999 () (InoxSet Context!11898))

(assert (=> setNonEmpty!45999 (= setRest!45993 ((_ map or) (store ((as const (Array Context!11898 Bool)) false) setElem!45999 true) setRest!45999))))

(declare-fun b!6738782 () Bool)

(declare-fun tp!1847322 () Bool)

(assert (=> b!6738782 (= e!4070561 tp!1847322)))

(assert (= (and setNonEmpty!45993 condSetEmpty!45999) setIsEmpty!45999))

(assert (= (and setNonEmpty!45993 (not condSetEmpty!45999)) setNonEmpty!45999))

(assert (= setNonEmpty!45999 b!6738782))

(declare-fun m!7495732 () Bool)

(assert (=> setNonEmpty!45999 m!7495732))

(declare-fun b!6738783 () Bool)

(declare-fun e!4070562 () Bool)

(declare-fun tp!1847324 () Bool)

(declare-fun tp!1847325 () Bool)

(assert (=> b!6738783 (= e!4070562 (and tp!1847324 tp!1847325))))

(assert (=> b!6738201 (= tp!1847263 e!4070562)))

(assert (= (and b!6738201 ((_ is Cons!65870) (exprs!6449 setElem!45993))) b!6738783))

(declare-fun b!6738785 () Bool)

(declare-fun e!4070563 () Bool)

(declare-fun tp!1847326 () Bool)

(declare-fun tp!1847328 () Bool)

(assert (=> b!6738785 (= e!4070563 (and tp!1847326 tp!1847328))))

(assert (=> b!6738192 (= tp!1847253 e!4070563)))

(declare-fun b!6738786 () Bool)

(declare-fun tp!1847329 () Bool)

(assert (=> b!6738786 (= e!4070563 tp!1847329)))

(declare-fun b!6738784 () Bool)

(assert (=> b!6738784 (= e!4070563 tp_is_empty!42383)))

(declare-fun b!6738787 () Bool)

(declare-fun tp!1847330 () Bool)

(declare-fun tp!1847327 () Bool)

(assert (=> b!6738787 (= e!4070563 (and tp!1847330 tp!1847327))))

(assert (= (and b!6738192 ((_ is ElementMatch!16565) (regOne!33643 (regOne!33642 r!7292)))) b!6738784))

(assert (= (and b!6738192 ((_ is Concat!25410) (regOne!33643 (regOne!33642 r!7292)))) b!6738785))

(assert (= (and b!6738192 ((_ is Star!16565) (regOne!33643 (regOne!33642 r!7292)))) b!6738786))

(assert (= (and b!6738192 ((_ is Union!16565) (regOne!33643 (regOne!33642 r!7292)))) b!6738787))

(declare-fun b!6738789 () Bool)

(declare-fun e!4070564 () Bool)

(declare-fun tp!1847331 () Bool)

(declare-fun tp!1847333 () Bool)

(assert (=> b!6738789 (= e!4070564 (and tp!1847331 tp!1847333))))

(assert (=> b!6738192 (= tp!1847250 e!4070564)))

(declare-fun b!6738790 () Bool)

(declare-fun tp!1847334 () Bool)

(assert (=> b!6738790 (= e!4070564 tp!1847334)))

(declare-fun b!6738788 () Bool)

(assert (=> b!6738788 (= e!4070564 tp_is_empty!42383)))

(declare-fun b!6738791 () Bool)

(declare-fun tp!1847335 () Bool)

(declare-fun tp!1847332 () Bool)

(assert (=> b!6738791 (= e!4070564 (and tp!1847335 tp!1847332))))

(assert (= (and b!6738192 ((_ is ElementMatch!16565) (regTwo!33643 (regOne!33642 r!7292)))) b!6738788))

(assert (= (and b!6738192 ((_ is Concat!25410) (regTwo!33643 (regOne!33642 r!7292)))) b!6738789))

(assert (= (and b!6738192 ((_ is Star!16565) (regTwo!33643 (regOne!33642 r!7292)))) b!6738790))

(assert (= (and b!6738192 ((_ is Union!16565) (regTwo!33643 (regOne!33642 r!7292)))) b!6738791))

(declare-fun b!6738793 () Bool)

(declare-fun e!4070566 () Bool)

(declare-fun tp!1847336 () Bool)

(assert (=> b!6738793 (= e!4070566 tp!1847336)))

(declare-fun e!4070565 () Bool)

(declare-fun tp!1847337 () Bool)

(declare-fun b!6738792 () Bool)

(assert (=> b!6738792 (= e!4070565 (and (inv!84659 (h!72320 (t!379691 (t!379691 zl!343)))) e!4070566 tp!1847337))))

(assert (=> b!6738183 (= tp!1847243 e!4070565)))

(assert (= b!6738792 b!6738793))

(assert (= (and b!6738183 ((_ is Cons!65872) (t!379691 (t!379691 zl!343)))) b!6738792))

(declare-fun m!7495734 () Bool)

(assert (=> b!6738792 m!7495734))

(declare-fun b!6738794 () Bool)

(declare-fun e!4070567 () Bool)

(declare-fun tp!1847338 () Bool)

(declare-fun tp!1847339 () Bool)

(assert (=> b!6738794 (= e!4070567 (and tp!1847338 tp!1847339))))

(assert (=> b!6738184 (= tp!1847242 e!4070567)))

(assert (= (and b!6738184 ((_ is Cons!65870) (exprs!6449 (h!72320 (t!379691 zl!343))))) b!6738794))

(declare-fun b!6738796 () Bool)

(declare-fun e!4070568 () Bool)

(declare-fun tp!1847340 () Bool)

(declare-fun tp!1847342 () Bool)

(assert (=> b!6738796 (= e!4070568 (and tp!1847340 tp!1847342))))

(assert (=> b!6738191 (= tp!1847252 e!4070568)))

(declare-fun b!6738797 () Bool)

(declare-fun tp!1847343 () Bool)

(assert (=> b!6738797 (= e!4070568 tp!1847343)))

(declare-fun b!6738795 () Bool)

(assert (=> b!6738795 (= e!4070568 tp_is_empty!42383)))

(declare-fun b!6738798 () Bool)

(declare-fun tp!1847344 () Bool)

(declare-fun tp!1847341 () Bool)

(assert (=> b!6738798 (= e!4070568 (and tp!1847344 tp!1847341))))

(assert (= (and b!6738191 ((_ is ElementMatch!16565) (reg!16894 (regOne!33642 r!7292)))) b!6738795))

(assert (= (and b!6738191 ((_ is Concat!25410) (reg!16894 (regOne!33642 r!7292)))) b!6738796))

(assert (= (and b!6738191 ((_ is Star!16565) (reg!16894 (regOne!33642 r!7292)))) b!6738797))

(assert (= (and b!6738191 ((_ is Union!16565) (reg!16894 (regOne!33642 r!7292)))) b!6738798))

(declare-fun b!6738800 () Bool)

(declare-fun e!4070569 () Bool)

(declare-fun tp!1847345 () Bool)

(declare-fun tp!1847347 () Bool)

(assert (=> b!6738800 (= e!4070569 (and tp!1847345 tp!1847347))))

(assert (=> b!6738190 (= tp!1847249 e!4070569)))

(declare-fun b!6738801 () Bool)

(declare-fun tp!1847348 () Bool)

(assert (=> b!6738801 (= e!4070569 tp!1847348)))

(declare-fun b!6738799 () Bool)

(assert (=> b!6738799 (= e!4070569 tp_is_empty!42383)))

(declare-fun b!6738802 () Bool)

(declare-fun tp!1847349 () Bool)

(declare-fun tp!1847346 () Bool)

(assert (=> b!6738802 (= e!4070569 (and tp!1847349 tp!1847346))))

(assert (= (and b!6738190 ((_ is ElementMatch!16565) (regOne!33642 (regOne!33642 r!7292)))) b!6738799))

(assert (= (and b!6738190 ((_ is Concat!25410) (regOne!33642 (regOne!33642 r!7292)))) b!6738800))

(assert (= (and b!6738190 ((_ is Star!16565) (regOne!33642 (regOne!33642 r!7292)))) b!6738801))

(assert (= (and b!6738190 ((_ is Union!16565) (regOne!33642 (regOne!33642 r!7292)))) b!6738802))

(declare-fun b!6738804 () Bool)

(declare-fun e!4070570 () Bool)

(declare-fun tp!1847350 () Bool)

(declare-fun tp!1847352 () Bool)

(assert (=> b!6738804 (= e!4070570 (and tp!1847350 tp!1847352))))

(assert (=> b!6738190 (= tp!1847251 e!4070570)))

(declare-fun b!6738805 () Bool)

(declare-fun tp!1847353 () Bool)

(assert (=> b!6738805 (= e!4070570 tp!1847353)))

(declare-fun b!6738803 () Bool)

(assert (=> b!6738803 (= e!4070570 tp_is_empty!42383)))

(declare-fun b!6738806 () Bool)

(declare-fun tp!1847354 () Bool)

(declare-fun tp!1847351 () Bool)

(assert (=> b!6738806 (= e!4070570 (and tp!1847354 tp!1847351))))

(assert (= (and b!6738190 ((_ is ElementMatch!16565) (regTwo!33642 (regOne!33642 r!7292)))) b!6738803))

(assert (= (and b!6738190 ((_ is Concat!25410) (regTwo!33642 (regOne!33642 r!7292)))) b!6738804))

(assert (= (and b!6738190 ((_ is Star!16565) (regTwo!33642 (regOne!33642 r!7292)))) b!6738805))

(assert (= (and b!6738190 ((_ is Union!16565) (regTwo!33642 (regOne!33642 r!7292)))) b!6738806))

(declare-fun b!6738808 () Bool)

(declare-fun e!4070571 () Bool)

(declare-fun tp!1847355 () Bool)

(declare-fun tp!1847357 () Bool)

(assert (=> b!6738808 (= e!4070571 (and tp!1847355 tp!1847357))))

(assert (=> b!6738175 (= tp!1847236 e!4070571)))

(declare-fun b!6738809 () Bool)

(declare-fun tp!1847358 () Bool)

(assert (=> b!6738809 (= e!4070571 tp!1847358)))

(declare-fun b!6738807 () Bool)

(assert (=> b!6738807 (= e!4070571 tp_is_empty!42383)))

(declare-fun b!6738810 () Bool)

(declare-fun tp!1847359 () Bool)

(declare-fun tp!1847356 () Bool)

(assert (=> b!6738810 (= e!4070571 (and tp!1847359 tp!1847356))))

(assert (= (and b!6738175 ((_ is ElementMatch!16565) (reg!16894 (regTwo!33643 r!7292)))) b!6738807))

(assert (= (and b!6738175 ((_ is Concat!25410) (reg!16894 (regTwo!33643 r!7292)))) b!6738808))

(assert (= (and b!6738175 ((_ is Star!16565) (reg!16894 (regTwo!33643 r!7292)))) b!6738809))

(assert (= (and b!6738175 ((_ is Union!16565) (reg!16894 (regTwo!33643 r!7292)))) b!6738810))

(declare-fun b!6738812 () Bool)

(declare-fun e!4070572 () Bool)

(declare-fun tp!1847360 () Bool)

(declare-fun tp!1847362 () Bool)

(assert (=> b!6738812 (= e!4070572 (and tp!1847360 tp!1847362))))

(assert (=> b!6738176 (= tp!1847237 e!4070572)))

(declare-fun b!6738813 () Bool)

(declare-fun tp!1847363 () Bool)

(assert (=> b!6738813 (= e!4070572 tp!1847363)))

(declare-fun b!6738811 () Bool)

(assert (=> b!6738811 (= e!4070572 tp_is_empty!42383)))

(declare-fun b!6738814 () Bool)

(declare-fun tp!1847364 () Bool)

(declare-fun tp!1847361 () Bool)

(assert (=> b!6738814 (= e!4070572 (and tp!1847364 tp!1847361))))

(assert (= (and b!6738176 ((_ is ElementMatch!16565) (regOne!33643 (regTwo!33643 r!7292)))) b!6738811))

(assert (= (and b!6738176 ((_ is Concat!25410) (regOne!33643 (regTwo!33643 r!7292)))) b!6738812))

(assert (= (and b!6738176 ((_ is Star!16565) (regOne!33643 (regTwo!33643 r!7292)))) b!6738813))

(assert (= (and b!6738176 ((_ is Union!16565) (regOne!33643 (regTwo!33643 r!7292)))) b!6738814))

(declare-fun b!6738816 () Bool)

(declare-fun e!4070573 () Bool)

(declare-fun tp!1847365 () Bool)

(declare-fun tp!1847367 () Bool)

(assert (=> b!6738816 (= e!4070573 (and tp!1847365 tp!1847367))))

(assert (=> b!6738176 (= tp!1847234 e!4070573)))

(declare-fun b!6738817 () Bool)

(declare-fun tp!1847368 () Bool)

(assert (=> b!6738817 (= e!4070573 tp!1847368)))

(declare-fun b!6738815 () Bool)

(assert (=> b!6738815 (= e!4070573 tp_is_empty!42383)))

(declare-fun b!6738818 () Bool)

(declare-fun tp!1847369 () Bool)

(declare-fun tp!1847366 () Bool)

(assert (=> b!6738818 (= e!4070573 (and tp!1847369 tp!1847366))))

(assert (= (and b!6738176 ((_ is ElementMatch!16565) (regTwo!33643 (regTwo!33643 r!7292)))) b!6738815))

(assert (= (and b!6738176 ((_ is Concat!25410) (regTwo!33643 (regTwo!33643 r!7292)))) b!6738816))

(assert (= (and b!6738176 ((_ is Star!16565) (regTwo!33643 (regTwo!33643 r!7292)))) b!6738817))

(assert (= (and b!6738176 ((_ is Union!16565) (regTwo!33643 (regTwo!33643 r!7292)))) b!6738818))

(declare-fun b!6738820 () Bool)

(declare-fun e!4070574 () Bool)

(declare-fun tp!1847370 () Bool)

(declare-fun tp!1847372 () Bool)

(assert (=> b!6738820 (= e!4070574 (and tp!1847370 tp!1847372))))

(assert (=> b!6738174 (= tp!1847233 e!4070574)))

(declare-fun b!6738821 () Bool)

(declare-fun tp!1847373 () Bool)

(assert (=> b!6738821 (= e!4070574 tp!1847373)))

(declare-fun b!6738819 () Bool)

(assert (=> b!6738819 (= e!4070574 tp_is_empty!42383)))

(declare-fun b!6738822 () Bool)

(declare-fun tp!1847374 () Bool)

(declare-fun tp!1847371 () Bool)

(assert (=> b!6738822 (= e!4070574 (and tp!1847374 tp!1847371))))

(assert (= (and b!6738174 ((_ is ElementMatch!16565) (regOne!33642 (regTwo!33643 r!7292)))) b!6738819))

(assert (= (and b!6738174 ((_ is Concat!25410) (regOne!33642 (regTwo!33643 r!7292)))) b!6738820))

(assert (= (and b!6738174 ((_ is Star!16565) (regOne!33642 (regTwo!33643 r!7292)))) b!6738821))

(assert (= (and b!6738174 ((_ is Union!16565) (regOne!33642 (regTwo!33643 r!7292)))) b!6738822))

(declare-fun b!6738824 () Bool)

(declare-fun e!4070575 () Bool)

(declare-fun tp!1847375 () Bool)

(declare-fun tp!1847377 () Bool)

(assert (=> b!6738824 (= e!4070575 (and tp!1847375 tp!1847377))))

(assert (=> b!6738174 (= tp!1847235 e!4070575)))

(declare-fun b!6738825 () Bool)

(declare-fun tp!1847378 () Bool)

(assert (=> b!6738825 (= e!4070575 tp!1847378)))

(declare-fun b!6738823 () Bool)

(assert (=> b!6738823 (= e!4070575 tp_is_empty!42383)))

(declare-fun b!6738826 () Bool)

(declare-fun tp!1847379 () Bool)

(declare-fun tp!1847376 () Bool)

(assert (=> b!6738826 (= e!4070575 (and tp!1847379 tp!1847376))))

(assert (= (and b!6738174 ((_ is ElementMatch!16565) (regTwo!33642 (regTwo!33643 r!7292)))) b!6738823))

(assert (= (and b!6738174 ((_ is Concat!25410) (regTwo!33642 (regTwo!33643 r!7292)))) b!6738824))

(assert (= (and b!6738174 ((_ is Star!16565) (regTwo!33642 (regTwo!33643 r!7292)))) b!6738825))

(assert (= (and b!6738174 ((_ is Union!16565) (regTwo!33642 (regTwo!33643 r!7292)))) b!6738826))

(declare-fun b!6738828 () Bool)

(declare-fun e!4070576 () Bool)

(declare-fun tp!1847380 () Bool)

(declare-fun tp!1847382 () Bool)

(assert (=> b!6738828 (= e!4070576 (and tp!1847380 tp!1847382))))

(assert (=> b!6738158 (= tp!1847216 e!4070576)))

(declare-fun b!6738829 () Bool)

(declare-fun tp!1847383 () Bool)

(assert (=> b!6738829 (= e!4070576 tp!1847383)))

(declare-fun b!6738827 () Bool)

(assert (=> b!6738827 (= e!4070576 tp_is_empty!42383)))

(declare-fun b!6738830 () Bool)

(declare-fun tp!1847384 () Bool)

(declare-fun tp!1847381 () Bool)

(assert (=> b!6738830 (= e!4070576 (and tp!1847384 tp!1847381))))

(assert (= (and b!6738158 ((_ is ElementMatch!16565) (h!72318 (exprs!6449 setElem!45987)))) b!6738827))

(assert (= (and b!6738158 ((_ is Concat!25410) (h!72318 (exprs!6449 setElem!45987)))) b!6738828))

(assert (= (and b!6738158 ((_ is Star!16565) (h!72318 (exprs!6449 setElem!45987)))) b!6738829))

(assert (= (and b!6738158 ((_ is Union!16565) (h!72318 (exprs!6449 setElem!45987)))) b!6738830))

(declare-fun b!6738831 () Bool)

(declare-fun e!4070577 () Bool)

(declare-fun tp!1847385 () Bool)

(declare-fun tp!1847386 () Bool)

(assert (=> b!6738831 (= e!4070577 (and tp!1847385 tp!1847386))))

(assert (=> b!6738158 (= tp!1847217 e!4070577)))

(assert (= (and b!6738158 ((_ is Cons!65870) (t!379689 (exprs!6449 setElem!45987)))) b!6738831))

(declare-fun b!6738833 () Bool)

(declare-fun e!4070578 () Bool)

(declare-fun tp!1847387 () Bool)

(declare-fun tp!1847389 () Bool)

(assert (=> b!6738833 (= e!4070578 (and tp!1847387 tp!1847389))))

(assert (=> b!6738202 (= tp!1847265 e!4070578)))

(declare-fun b!6738834 () Bool)

(declare-fun tp!1847390 () Bool)

(assert (=> b!6738834 (= e!4070578 tp!1847390)))

(declare-fun b!6738832 () Bool)

(assert (=> b!6738832 (= e!4070578 tp_is_empty!42383)))

(declare-fun b!6738835 () Bool)

(declare-fun tp!1847391 () Bool)

(declare-fun tp!1847388 () Bool)

(assert (=> b!6738835 (= e!4070578 (and tp!1847391 tp!1847388))))

(assert (= (and b!6738202 ((_ is ElementMatch!16565) (h!72318 (exprs!6449 (h!72320 zl!343))))) b!6738832))

(assert (= (and b!6738202 ((_ is Concat!25410) (h!72318 (exprs!6449 (h!72320 zl!343))))) b!6738833))

(assert (= (and b!6738202 ((_ is Star!16565) (h!72318 (exprs!6449 (h!72320 zl!343))))) b!6738834))

(assert (= (and b!6738202 ((_ is Union!16565) (h!72318 (exprs!6449 (h!72320 zl!343))))) b!6738835))

(declare-fun b!6738836 () Bool)

(declare-fun e!4070579 () Bool)

(declare-fun tp!1847392 () Bool)

(declare-fun tp!1847393 () Bool)

(assert (=> b!6738836 (= e!4070579 (and tp!1847392 tp!1847393))))

(assert (=> b!6738202 (= tp!1847266 e!4070579)))

(assert (= (and b!6738202 ((_ is Cons!65870) (t!379689 (exprs!6449 (h!72320 zl!343))))) b!6738836))

(declare-fun b!6738838 () Bool)

(declare-fun e!4070580 () Bool)

(declare-fun tp!1847394 () Bool)

(declare-fun tp!1847396 () Bool)

(assert (=> b!6738838 (= e!4070580 (and tp!1847394 tp!1847396))))

(assert (=> b!6738187 (= tp!1847247 e!4070580)))

(declare-fun b!6738839 () Bool)

(declare-fun tp!1847397 () Bool)

(assert (=> b!6738839 (= e!4070580 tp!1847397)))

(declare-fun b!6738837 () Bool)

(assert (=> b!6738837 (= e!4070580 tp_is_empty!42383)))

(declare-fun b!6738840 () Bool)

(declare-fun tp!1847398 () Bool)

(declare-fun tp!1847395 () Bool)

(assert (=> b!6738840 (= e!4070580 (and tp!1847398 tp!1847395))))

(assert (= (and b!6738187 ((_ is ElementMatch!16565) (reg!16894 (reg!16894 r!7292)))) b!6738837))

(assert (= (and b!6738187 ((_ is Concat!25410) (reg!16894 (reg!16894 r!7292)))) b!6738838))

(assert (= (and b!6738187 ((_ is Star!16565) (reg!16894 (reg!16894 r!7292)))) b!6738839))

(assert (= (and b!6738187 ((_ is Union!16565) (reg!16894 (reg!16894 r!7292)))) b!6738840))

(declare-fun b!6738842 () Bool)

(declare-fun e!4070581 () Bool)

(declare-fun tp!1847399 () Bool)

(declare-fun tp!1847401 () Bool)

(assert (=> b!6738842 (= e!4070581 (and tp!1847399 tp!1847401))))

(assert (=> b!6738188 (= tp!1847248 e!4070581)))

(declare-fun b!6738843 () Bool)

(declare-fun tp!1847402 () Bool)

(assert (=> b!6738843 (= e!4070581 tp!1847402)))

(declare-fun b!6738841 () Bool)

(assert (=> b!6738841 (= e!4070581 tp_is_empty!42383)))

(declare-fun b!6738844 () Bool)

(declare-fun tp!1847403 () Bool)

(declare-fun tp!1847400 () Bool)

(assert (=> b!6738844 (= e!4070581 (and tp!1847403 tp!1847400))))

(assert (= (and b!6738188 ((_ is ElementMatch!16565) (regOne!33643 (reg!16894 r!7292)))) b!6738841))

(assert (= (and b!6738188 ((_ is Concat!25410) (regOne!33643 (reg!16894 r!7292)))) b!6738842))

(assert (= (and b!6738188 ((_ is Star!16565) (regOne!33643 (reg!16894 r!7292)))) b!6738843))

(assert (= (and b!6738188 ((_ is Union!16565) (regOne!33643 (reg!16894 r!7292)))) b!6738844))

(declare-fun b!6738846 () Bool)

(declare-fun e!4070582 () Bool)

(declare-fun tp!1847404 () Bool)

(declare-fun tp!1847406 () Bool)

(assert (=> b!6738846 (= e!4070582 (and tp!1847404 tp!1847406))))

(assert (=> b!6738188 (= tp!1847245 e!4070582)))

(declare-fun b!6738847 () Bool)

(declare-fun tp!1847407 () Bool)

(assert (=> b!6738847 (= e!4070582 tp!1847407)))

(declare-fun b!6738845 () Bool)

(assert (=> b!6738845 (= e!4070582 tp_is_empty!42383)))

(declare-fun b!6738848 () Bool)

(declare-fun tp!1847408 () Bool)

(declare-fun tp!1847405 () Bool)

(assert (=> b!6738848 (= e!4070582 (and tp!1847408 tp!1847405))))

(assert (= (and b!6738188 ((_ is ElementMatch!16565) (regTwo!33643 (reg!16894 r!7292)))) b!6738845))

(assert (= (and b!6738188 ((_ is Concat!25410) (regTwo!33643 (reg!16894 r!7292)))) b!6738846))

(assert (= (and b!6738188 ((_ is Star!16565) (regTwo!33643 (reg!16894 r!7292)))) b!6738847))

(assert (= (and b!6738188 ((_ is Union!16565) (regTwo!33643 (reg!16894 r!7292)))) b!6738848))

(declare-fun b!6738850 () Bool)

(declare-fun e!4070583 () Bool)

(declare-fun tp!1847409 () Bool)

(declare-fun tp!1847411 () Bool)

(assert (=> b!6738850 (= e!4070583 (and tp!1847409 tp!1847411))))

(assert (=> b!6738186 (= tp!1847244 e!4070583)))

(declare-fun b!6738851 () Bool)

(declare-fun tp!1847412 () Bool)

(assert (=> b!6738851 (= e!4070583 tp!1847412)))

(declare-fun b!6738849 () Bool)

(assert (=> b!6738849 (= e!4070583 tp_is_empty!42383)))

(declare-fun b!6738852 () Bool)

(declare-fun tp!1847413 () Bool)

(declare-fun tp!1847410 () Bool)

(assert (=> b!6738852 (= e!4070583 (and tp!1847413 tp!1847410))))

(assert (= (and b!6738186 ((_ is ElementMatch!16565) (regOne!33642 (reg!16894 r!7292)))) b!6738849))

(assert (= (and b!6738186 ((_ is Concat!25410) (regOne!33642 (reg!16894 r!7292)))) b!6738850))

(assert (= (and b!6738186 ((_ is Star!16565) (regOne!33642 (reg!16894 r!7292)))) b!6738851))

(assert (= (and b!6738186 ((_ is Union!16565) (regOne!33642 (reg!16894 r!7292)))) b!6738852))

(declare-fun b!6738854 () Bool)

(declare-fun e!4070584 () Bool)

(declare-fun tp!1847414 () Bool)

(declare-fun tp!1847416 () Bool)

(assert (=> b!6738854 (= e!4070584 (and tp!1847414 tp!1847416))))

(assert (=> b!6738186 (= tp!1847246 e!4070584)))

(declare-fun b!6738855 () Bool)

(declare-fun tp!1847417 () Bool)

(assert (=> b!6738855 (= e!4070584 tp!1847417)))

(declare-fun b!6738853 () Bool)

(assert (=> b!6738853 (= e!4070584 tp_is_empty!42383)))

(declare-fun b!6738856 () Bool)

(declare-fun tp!1847418 () Bool)

(declare-fun tp!1847415 () Bool)

(assert (=> b!6738856 (= e!4070584 (and tp!1847418 tp!1847415))))

(assert (= (and b!6738186 ((_ is ElementMatch!16565) (regTwo!33642 (reg!16894 r!7292)))) b!6738853))

(assert (= (and b!6738186 ((_ is Concat!25410) (regTwo!33642 (reg!16894 r!7292)))) b!6738854))

(assert (= (and b!6738186 ((_ is Star!16565) (regTwo!33642 (reg!16894 r!7292)))) b!6738855))

(assert (= (and b!6738186 ((_ is Union!16565) (regTwo!33642 (reg!16894 r!7292)))) b!6738856))

(declare-fun b!6738858 () Bool)

(declare-fun e!4070585 () Bool)

(declare-fun tp!1847419 () Bool)

(declare-fun tp!1847421 () Bool)

(assert (=> b!6738858 (= e!4070585 (and tp!1847419 tp!1847421))))

(assert (=> b!6738195 (= tp!1847257 e!4070585)))

(declare-fun b!6738859 () Bool)

(declare-fun tp!1847422 () Bool)

(assert (=> b!6738859 (= e!4070585 tp!1847422)))

(declare-fun b!6738857 () Bool)

(assert (=> b!6738857 (= e!4070585 tp_is_empty!42383)))

(declare-fun b!6738860 () Bool)

(declare-fun tp!1847423 () Bool)

(declare-fun tp!1847420 () Bool)

(assert (=> b!6738860 (= e!4070585 (and tp!1847423 tp!1847420))))

(assert (= (and b!6738195 ((_ is ElementMatch!16565) (reg!16894 (regTwo!33642 r!7292)))) b!6738857))

(assert (= (and b!6738195 ((_ is Concat!25410) (reg!16894 (regTwo!33642 r!7292)))) b!6738858))

(assert (= (and b!6738195 ((_ is Star!16565) (reg!16894 (regTwo!33642 r!7292)))) b!6738859))

(assert (= (and b!6738195 ((_ is Union!16565) (reg!16894 (regTwo!33642 r!7292)))) b!6738860))

(declare-fun b!6738862 () Bool)

(declare-fun e!4070586 () Bool)

(declare-fun tp!1847424 () Bool)

(declare-fun tp!1847426 () Bool)

(assert (=> b!6738862 (= e!4070586 (and tp!1847424 tp!1847426))))

(assert (=> b!6738196 (= tp!1847258 e!4070586)))

(declare-fun b!6738863 () Bool)

(declare-fun tp!1847427 () Bool)

(assert (=> b!6738863 (= e!4070586 tp!1847427)))

(declare-fun b!6738861 () Bool)

(assert (=> b!6738861 (= e!4070586 tp_is_empty!42383)))

(declare-fun b!6738864 () Bool)

(declare-fun tp!1847428 () Bool)

(declare-fun tp!1847425 () Bool)

(assert (=> b!6738864 (= e!4070586 (and tp!1847428 tp!1847425))))

(assert (= (and b!6738196 ((_ is ElementMatch!16565) (regOne!33643 (regTwo!33642 r!7292)))) b!6738861))

(assert (= (and b!6738196 ((_ is Concat!25410) (regOne!33643 (regTwo!33642 r!7292)))) b!6738862))

(assert (= (and b!6738196 ((_ is Star!16565) (regOne!33643 (regTwo!33642 r!7292)))) b!6738863))

(assert (= (and b!6738196 ((_ is Union!16565) (regOne!33643 (regTwo!33642 r!7292)))) b!6738864))

(declare-fun b!6738866 () Bool)

(declare-fun e!4070587 () Bool)

(declare-fun tp!1847429 () Bool)

(declare-fun tp!1847431 () Bool)

(assert (=> b!6738866 (= e!4070587 (and tp!1847429 tp!1847431))))

(assert (=> b!6738196 (= tp!1847255 e!4070587)))

(declare-fun b!6738867 () Bool)

(declare-fun tp!1847432 () Bool)

(assert (=> b!6738867 (= e!4070587 tp!1847432)))

(declare-fun b!6738865 () Bool)

(assert (=> b!6738865 (= e!4070587 tp_is_empty!42383)))

(declare-fun b!6738868 () Bool)

(declare-fun tp!1847433 () Bool)

(declare-fun tp!1847430 () Bool)

(assert (=> b!6738868 (= e!4070587 (and tp!1847433 tp!1847430))))

(assert (= (and b!6738196 ((_ is ElementMatch!16565) (regTwo!33643 (regTwo!33642 r!7292)))) b!6738865))

(assert (= (and b!6738196 ((_ is Concat!25410) (regTwo!33643 (regTwo!33642 r!7292)))) b!6738866))

(assert (= (and b!6738196 ((_ is Star!16565) (regTwo!33643 (regTwo!33642 r!7292)))) b!6738867))

(assert (= (and b!6738196 ((_ is Union!16565) (regTwo!33643 (regTwo!33642 r!7292)))) b!6738868))

(declare-fun b_lambda!253743 () Bool)

(assert (= b_lambda!253735 (or d!2116888 b_lambda!253743)))

(declare-fun bs!1791889 () Bool)

(declare-fun d!2117304 () Bool)

(assert (= bs!1791889 (and d!2117304 d!2116888)))

(assert (=> bs!1791889 (= (dynLambda!26281 lambda!378385 (h!72318 (exprs!6449 (h!72320 zl!343)))) (validRegex!8301 (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(declare-fun m!7495744 () Bool)

(assert (=> bs!1791889 m!7495744))

(assert (=> b!6738660 d!2117304))

(declare-fun b_lambda!253745 () Bool)

(assert (= b_lambda!253721 (or b!6737448 b_lambda!253745)))

(assert (=> d!2117104 d!2117030))

(declare-fun b_lambda!253747 () Bool)

(assert (= b_lambda!253723 (or d!2116908 b_lambda!253747)))

(declare-fun bs!1791890 () Bool)

(declare-fun d!2117308 () Bool)

(assert (= bs!1791890 (and d!2117308 d!2116908)))

(assert (=> bs!1791890 (= (dynLambda!26281 lambda!378391 (h!72318 (unfocusZipperList!1986 zl!343))) (validRegex!8301 (h!72318 (unfocusZipperList!1986 zl!343))))))

(declare-fun m!7495746 () Bool)

(assert (=> bs!1791890 m!7495746))

(assert (=> b!6738322 d!2117308))

(declare-fun b_lambda!253749 () Bool)

(assert (= b_lambda!253715 (or b!6737448 b_lambda!253749)))

(assert (=> d!2117038 d!2117026))

(declare-fun b_lambda!253751 () Bool)

(assert (= b_lambda!253729 (or b!6737448 b_lambda!253751)))

(assert (=> d!2117154 d!2117028))

(declare-fun b_lambda!253753 () Bool)

(assert (= b_lambda!253719 (or d!2116876 b_lambda!253753)))

(declare-fun bs!1791891 () Bool)

(declare-fun d!2117312 () Bool)

(assert (= bs!1791891 (and d!2117312 d!2116876)))

(assert (=> bs!1791891 (= (dynLambda!26281 lambda!378380 (h!72318 (exprs!6449 lt!2438637))) (validRegex!8301 (h!72318 (exprs!6449 lt!2438637))))))

(declare-fun m!7495748 () Bool)

(assert (=> bs!1791891 m!7495748))

(assert (=> b!6738277 d!2117312))

(declare-fun b_lambda!253755 () Bool)

(assert (= b_lambda!253725 (or d!2116922 b_lambda!253755)))

(declare-fun bs!1791892 () Bool)

(declare-fun d!2117314 () Bool)

(assert (= bs!1791892 (and d!2117314 d!2116922)))

(assert (=> bs!1791892 (= (dynLambda!26281 lambda!378397 (h!72318 lt!2438675)) (validRegex!8301 (h!72318 lt!2438675)))))

(declare-fun m!7495750 () Bool)

(assert (=> bs!1791892 m!7495750))

(assert (=> b!6738324 d!2117314))

(declare-fun b_lambda!253757 () Bool)

(assert (= b_lambda!253727 (or d!2116962 b_lambda!253757)))

(declare-fun bs!1791893 () Bool)

(declare-fun d!2117316 () Bool)

(assert (= bs!1791893 (and d!2117316 d!2116962)))

(assert (=> bs!1791893 (= (dynLambda!26281 lambda!378417 (h!72318 (exprs!6449 (h!72320 zl!343)))) (validRegex!8301 (h!72318 (exprs!6449 (h!72320 zl!343)))))))

(assert (=> bs!1791893 m!7495744))

(assert (=> b!6738428 d!2117316))

(declare-fun b_lambda!253759 () Bool)

(assert (= b_lambda!253717 (or d!2116944 b_lambda!253759)))

(declare-fun bs!1791894 () Bool)

(declare-fun d!2117318 () Bool)

(assert (= bs!1791894 (and d!2117318 d!2116944)))

(assert (=> bs!1791894 (= (dynLambda!26281 lambda!378404 (h!72318 (exprs!6449 setElem!45987))) (validRegex!8301 (h!72318 (exprs!6449 setElem!45987))))))

(declare-fun m!7495752 () Bool)

(assert (=> bs!1791894 m!7495752))

(assert (=> b!6738227 d!2117318))

(check-sat (not b_lambda!253751) (not b!6738805) (not b!6738829) (not b!6738790) (not bm!609056) (not b!6738760) (not bm!608935) (not bm!608993) (not b!6738278) (not b!6738514) (not b!6738325) (not b!6738808) (not b!6738725) (not bm!608977) (not bm!609036) (not b_lambda!253759) (not d!2117152) (not d!2117068) (not bm!608983) (not d!2117078) (not b!6738430) (not b!6738293) (not bm!608961) (not bm!609005) (not d!2117224) (not b!6738768) (not bm!609000) (not b!6738300) (not b!6738830) (not b!6738774) (not d!2117070) (not d!2117054) (not b!6738354) (not d!2117194) (not d!2117162) (not bs!1791889) (not b!6738236) (not b!6738763) (not b!6738294) (not setNonEmpty!45999) (not d!2117188) (not b!6738852) (not b!6738479) (not b!6738506) (not b!6738787) (not b!6738854) (not b!6738247) (not b!6738453) (not b!6738489) (not b!6738866) (not b!6738713) (not b!6738486) (not b!6738767) (not d!2117056) (not d!2117150) (not b!6738718) (not d!2117032) (not b!6738851) (not d!2117192) (not b!6738762) (not setNonEmpty!45997) (not b!6738834) (not d!2117252) (not b!6738291) (not d!2117052) (not bm!608982) (not b_lambda!253753) (not b!6738507) (not b!6738458) (not b!6738304) (not b!6738336) (not b!6738513) (not b!6738429) (not bm!608948) (not b!6738759) (not b!6738722) (not b!6738821) (not b!6738758) (not b!6738258) (not bm!608998) (not b!6738789) (not bm!608988) (not b!6738860) (not b!6738836) (not d!2117132) (not b!6738284) tp_is_empty!42383 (not b!6738586) (not bm!608952) (not b!6738213) (not b!6738723) (not b!6738785) (not d!2117186) (not b!6738220) (not bm!608979) (not b!6738842) (not d!2117082) (not b!6738843) (not b!6738828) (not b!6738456) (not b!6738461) (not bm!609002) (not d!2117044) (not b!6738813) (not b!6738312) (not d!2117256) (not b!6738778) (not b!6738715) (not b_lambda!253747) (not b!6738868) (not b!6738782) (not b!6738384) (not b!6738646) (not b!6738867) (not bm!608968) (not d!2117038) (not d!2117102) (not b!6738764) (not d!2117176) (not bm!609065) (not b!6738771) (not b!6738372) (not d!2117264) (not b!6738661) (not b!6738306) (not b!6738297) (not setNonEmpty!45996) (not b!6738859) (not b!6738798) (not b!6738838) (not b!6738477) (not b!6738550) (not bs!1791894) (not b!6738649) (not b!6738756) (not bm!608980) (not b!6738593) (not b!6738476) (not b!6738233) (not bm!608962) (not b!6738435) (not bm!608964) (not setNonEmpty!45998) (not b_lambda!253757) (not b!6738791) (not b!6738797) (not b!6738292) (not d!2117274) (not bm!608938) (not bm!608991) (not b!6738298) (not bm!608974) (not b!6738424) (not d!2117262) (not b!6738591) (not b!6738374) (not bm!608981) (not b!6738809) (not b!6738358) (not bm!608959) (not b!6738804) (not b!6738776) (not b!6738475) (not b!6738786) (not b!6738863) (not bm!608940) (not b!6738802) (not b!6738373) (not b!6738592) (not bm!609059) (not bm!608947) (not b!6738451) (not d!2117154) (not b!6738831) (not b!6738222) (not b!6738369) (not b!6738585) (not b!6738818) (not d!2117092) (not b!6738812) (not bm!609045) (not bm!608973) (not b!6738820) (not b!6738846) (not d!2117160) (not b!6738589) (not b!6738335) (not b_lambda!253755) (not b!6738212) (not b_lambda!253749) (not d!2117104) (not b!6738318) (not bm!609039) (not d!2117074) (not b!6738772) (not b!6738457) (not b!6738305) (not b!6738839) (not bm!608971) (not bm!608944) (not b!6738221) (not d!2117254) (not b!6738432) (not b!6738825) (not b!6738794) (not b!6738732) (not b!6738724) (not bm!608941) (not bs!1791890) (not bm!609042) (not d!2117126) (not bm!609048) (not d!2117094) (not d!2117272) (not b!6738228) (not b!6738775) (not b!6738796) (not b!6738733) (not b!6738844) (not b!6738415) (not b!6738375) (not b!6738662) (not bm!608994) (not d!2117184) (not b!6738749) (not b!6738295) (not b!6738376) (not d!2117098) (not d!2117200) (not b!6738835) (not b!6738793) (not b!6738840) (not b!6738781) (not b!6738288) (not b!6738824) (not b!6738822) (not b!6738721) (not d!2117080) (not b!6738814) (not d!2117072) (not d!2117172) (not b!6738864) (not bm!609047) (not b!6738509) (not bm!608955) (not b!6738307) (not bm!608963) (not b!6738303) (not bm!608949) (not b!6738493) (not b!6738856) (not bm!609022) (not b!6738826) (not bm!609001) (not b!6738850) (not d!2117266) (not b!6738780) (not b!6738862) (not bm!609041) (not bs!1791891) (not b!6738806) (not b_lambda!253743) (not d!2117090) (not b!6738754) (not bm!608986) (not b!6738478) (not b_lambda!253745) (not bm!609064) (not b!6738273) (not d!2117202) (not bm!608954) (not b!6738858) (not bm!609035) (not b!6738816) (not d!2117120) (not bm!608970) (not b!6738407) (not b!6738452) (not b!6738770) (not b!6738338) (not b!6738230) (not bm!608985) (not b!6738508) (not b!6738817) (not d!2117084) (not d!2117220) (not b!6738800) (not b!6738229) (not b_lambda!253711) (not b!6738766) (not bm!608995) (not b!6738833) (not b!6738323) (not d!2117036) (not bs!1791892) (not b!6738855) (not b!6738847) (not b!6738792) (not b!6738783) (not b!6738448) (not b!6738488) (not b!6738394) (not b!6738779) (not bm!608951) (not b!6738590) (not bm!609006) (not b!6738472) (not b!6738309) (not b!6738810) (not b!6738492) (not b_lambda!253713) (not b!6738446) (not b!6738848) (not b!6738390) (not b!6738231) (not b!6738544) (not b!6738755) (not b!6738454) (not b!6738520) (not bm!608946) (not b!6738801) (not bm!608972) (not b_lambda!253709) (not bs!1791893) (not d!2117198) (not b!6738405))
(check-sat)
