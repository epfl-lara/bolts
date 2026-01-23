; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570622 () Bool)

(assert start!570622)

(declare-fun b!5441439 () Bool)

(assert (=> b!5441439 true))

(assert (=> b!5441439 true))

(declare-fun lambda!286334 () Int)

(declare-fun lambda!286333 () Int)

(assert (=> b!5441439 (not (= lambda!286334 lambda!286333))))

(assert (=> b!5441439 true))

(assert (=> b!5441439 true))

(declare-fun b!5441443 () Bool)

(assert (=> b!5441443 true))

(declare-fun b!5441431 () Bool)

(declare-fun e!3370820 () Bool)

(declare-fun e!3370811 () Bool)

(assert (=> b!5441431 (= e!3370820 e!3370811)))

(declare-fun res!2316607 () Bool)

(assert (=> b!5441431 (=> res!2316607 e!3370811)))

(declare-fun lt!2218893 () Bool)

(declare-fun lt!2218904 () Bool)

(assert (=> b!5441431 (= res!2316607 (not (= lt!2218893 lt!2218904)))))

(declare-datatypes ((C!30788 0))(
  ( (C!30789 (val!25096 Int)) )
))
(declare-datatypes ((Regex!15259 0))(
  ( (ElementMatch!15259 (c!949571 C!30788)) (Concat!24104 (regOne!31030 Regex!15259) (regTwo!31030 Regex!15259)) (EmptyExpr!15259) (Star!15259 (reg!15588 Regex!15259)) (EmptyLang!15259) (Union!15259 (regOne!31031 Regex!15259) (regTwo!31031 Regex!15259)) )
))
(declare-fun r!7292 () Regex!15259)

(declare-datatypes ((List!62076 0))(
  ( (Nil!61952) (Cons!61952 (h!68400 C!30788) (t!375303 List!62076)) )
))
(declare-fun s!2326 () List!62076)

(declare-fun matchRSpec!2362 (Regex!15259 List!62076) Bool)

(assert (=> b!5441431 (= lt!2218904 (matchRSpec!2362 (regTwo!31030 r!7292) s!2326))))

(declare-fun matchR!7444 (Regex!15259 List!62076) Bool)

(assert (=> b!5441431 (= lt!2218904 (matchR!7444 (regTwo!31030 r!7292) s!2326))))

(declare-datatypes ((Unit!154578 0))(
  ( (Unit!154579) )
))
(declare-fun lt!2218906 () Unit!154578)

(declare-fun mainMatchTheorem!2362 (Regex!15259 List!62076) Unit!154578)

(assert (=> b!5441431 (= lt!2218906 (mainMatchTheorem!2362 (regTwo!31030 r!7292) s!2326))))

(assert (=> b!5441431 (= (matchR!7444 (regOne!31030 r!7292) s!2326) (matchRSpec!2362 (regOne!31030 r!7292) s!2326))))

(declare-fun lt!2218885 () Unit!154578)

(assert (=> b!5441431 (= lt!2218885 (mainMatchTheorem!2362 (regOne!31030 r!7292) s!2326))))

(declare-fun b!5441432 () Bool)

(declare-fun res!2316617 () Bool)

(declare-fun e!3370821 () Bool)

(assert (=> b!5441432 (=> res!2316617 e!3370821)))

(get-info :version)

(assert (=> b!5441432 (= res!2316617 (or ((_ is Concat!24104) (regOne!31030 r!7292)) ((_ is Star!15259) (regOne!31030 r!7292)) (not ((_ is EmptyExpr!15259) (regOne!31030 r!7292)))))))

(declare-fun tp!1500224 () Bool)

(declare-datatypes ((List!62077 0))(
  ( (Nil!61953) (Cons!61953 (h!68401 Regex!15259) (t!375304 List!62077)) )
))
(declare-datatypes ((Context!9286 0))(
  ( (Context!9287 (exprs!5143 List!62077)) )
))
(declare-fun setElem!35575 () Context!9286)

(declare-fun e!3370813 () Bool)

(declare-fun setNonEmpty!35575 () Bool)

(declare-fun setRes!35575 () Bool)

(declare-fun inv!81394 (Context!9286) Bool)

(assert (=> setNonEmpty!35575 (= setRes!35575 (and tp!1500224 (inv!81394 setElem!35575) e!3370813))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9286))

(declare-fun setRest!35575 () (InoxSet Context!9286))

(assert (=> setNonEmpty!35575 (= z!1189 ((_ map or) (store ((as const (Array Context!9286 Bool)) false) setElem!35575 true) setRest!35575))))

(declare-fun b!5441433 () Bool)

(declare-fun e!3370805 () Unit!154578)

(declare-fun Unit!154580 () Unit!154578)

(assert (=> b!5441433 (= e!3370805 Unit!154580)))

(declare-fun b!5441434 () Bool)

(declare-fun e!3370808 () Bool)

(declare-fun e!3370812 () Bool)

(assert (=> b!5441434 (= e!3370808 e!3370812)))

(declare-fun res!2316603 () Bool)

(assert (=> b!5441434 (=> res!2316603 e!3370812)))

(declare-fun lt!2218889 () (InoxSet Context!9286))

(declare-fun derivationStepZipper!1488 ((InoxSet Context!9286) C!30788) (InoxSet Context!9286))

(assert (=> b!5441434 (= res!2316603 (not (= (derivationStepZipper!1488 z!1189 (h!68400 s!2326)) lt!2218889)))))

(declare-fun lt!2218888 () (InoxSet Context!9286))

(declare-fun lt!2218894 () (InoxSet Context!9286))

(assert (=> b!5441434 (= lt!2218889 ((_ map or) lt!2218888 lt!2218894))))

(declare-fun b!5441435 () Bool)

(declare-fun e!3370816 () Bool)

(declare-fun tp_is_empty!39771 () Bool)

(declare-fun tp!1500222 () Bool)

(assert (=> b!5441435 (= e!3370816 (and tp_is_empty!39771 tp!1500222))))

(declare-fun b!5441436 () Bool)

(declare-fun res!2316605 () Bool)

(declare-fun e!3370822 () Bool)

(assert (=> b!5441436 (=> res!2316605 e!3370822)))

(declare-datatypes ((List!62078 0))(
  ( (Nil!61954) (Cons!61954 (h!68402 Context!9286) (t!375305 List!62078)) )
))
(declare-fun zl!343 () List!62078)

(assert (=> b!5441436 (= res!2316605 (not ((_ is Cons!61953) (exprs!5143 (h!68402 zl!343)))))))

(declare-fun b!5441437 () Bool)

(declare-fun res!2316618 () Bool)

(assert (=> b!5441437 (=> res!2316618 e!3370822)))

(declare-fun generalisedConcat!928 (List!62077) Regex!15259)

(assert (=> b!5441437 (= res!2316618 (not (= r!7292 (generalisedConcat!928 (exprs!5143 (h!68402 zl!343))))))))

(declare-fun b!5441438 () Bool)

(declare-fun e!3370815 () Bool)

(assert (=> b!5441438 (= e!3370815 (not e!3370822))))

(declare-fun res!2316621 () Bool)

(assert (=> b!5441438 (=> res!2316621 e!3370822)))

(assert (=> b!5441438 (= res!2316621 (not ((_ is Cons!61954) zl!343)))))

(assert (=> b!5441438 (= lt!2218893 (matchRSpec!2362 r!7292 s!2326))))

(assert (=> b!5441438 (= lt!2218893 (matchR!7444 r!7292 s!2326))))

(declare-fun lt!2218887 () Unit!154578)

(assert (=> b!5441438 (= lt!2218887 (mainMatchTheorem!2362 r!7292 s!2326))))

(declare-fun e!3370807 () Bool)

(assert (=> b!5441439 (= e!3370822 e!3370807)))

(declare-fun res!2316615 () Bool)

(assert (=> b!5441439 (=> res!2316615 e!3370807)))

(declare-fun lt!2218901 () Bool)

(assert (=> b!5441439 (= res!2316615 (or (not (= lt!2218893 lt!2218901)) ((_ is Nil!61952) s!2326)))))

(declare-fun Exists!2440 (Int) Bool)

(assert (=> b!5441439 (= (Exists!2440 lambda!286333) (Exists!2440 lambda!286334))))

(declare-fun lt!2218883 () Unit!154578)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1094 (Regex!15259 Regex!15259 List!62076) Unit!154578)

(assert (=> b!5441439 (= lt!2218883 (lemmaExistCutMatchRandMatchRSpecEquivalent!1094 (regOne!31030 r!7292) (regTwo!31030 r!7292) s!2326))))

(assert (=> b!5441439 (= lt!2218901 (Exists!2440 lambda!286333))))

(declare-datatypes ((tuple2!64916 0))(
  ( (tuple2!64917 (_1!35761 List!62076) (_2!35761 List!62076)) )
))
(declare-datatypes ((Option!15370 0))(
  ( (None!15369) (Some!15369 (v!51398 tuple2!64916)) )
))
(declare-fun isDefined!12073 (Option!15370) Bool)

(declare-fun findConcatSeparation!1784 (Regex!15259 Regex!15259 List!62076 List!62076 List!62076) Option!15370)

(assert (=> b!5441439 (= lt!2218901 (isDefined!12073 (findConcatSeparation!1784 (regOne!31030 r!7292) (regTwo!31030 r!7292) Nil!61952 s!2326 s!2326)))))

(declare-fun lt!2218884 () Unit!154578)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1548 (Regex!15259 Regex!15259 List!62076) Unit!154578)

(assert (=> b!5441439 (= lt!2218884 (lemmaFindConcatSeparationEquivalentToExists!1548 (regOne!31030 r!7292) (regTwo!31030 r!7292) s!2326))))

(declare-fun b!5441440 () Bool)

(declare-fun res!2316604 () Bool)

(assert (=> b!5441440 (=> (not res!2316604) (not e!3370815))))

(declare-fun unfocusZipper!1001 (List!62078) Regex!15259)

(assert (=> b!5441440 (= res!2316604 (= r!7292 (unfocusZipper!1001 zl!343)))))

(declare-fun b!5441441 () Bool)

(declare-fun e!3370814 () Bool)

(declare-fun tp!1500226 () Bool)

(declare-fun tp!1500227 () Bool)

(assert (=> b!5441441 (= e!3370814 (and tp!1500226 tp!1500227))))

(declare-fun b!5441442 () Bool)

(declare-fun e!3370818 () Bool)

(declare-fun e!3370817 () Bool)

(assert (=> b!5441442 (= e!3370818 e!3370817)))

(declare-fun res!2316620 () Bool)

(assert (=> b!5441442 (=> res!2316620 e!3370817)))

(declare-fun validRegex!6995 (Regex!15259) Bool)

(assert (=> b!5441442 (= res!2316620 (not (validRegex!6995 (generalisedConcat!928 (t!375304 (exprs!5143 (h!68402 zl!343)))))))))

(declare-fun lt!2218902 () List!62078)

(declare-fun lt!2218886 () Context!9286)

(assert (=> b!5441442 (= lt!2218902 (Cons!61954 lt!2218886 Nil!61954))))

(declare-fun res!2316614 () Bool)

(assert (=> start!570622 (=> (not res!2316614) (not e!3370815))))

(assert (=> start!570622 (= res!2316614 (validRegex!6995 r!7292))))

(assert (=> start!570622 e!3370815))

(assert (=> start!570622 e!3370814))

(declare-fun condSetEmpty!35575 () Bool)

(assert (=> start!570622 (= condSetEmpty!35575 (= z!1189 ((as const (Array Context!9286 Bool)) false)))))

(assert (=> start!570622 setRes!35575))

(declare-fun e!3370809 () Bool)

(assert (=> start!570622 e!3370809))

(assert (=> start!570622 e!3370816))

(assert (=> b!5441443 (= e!3370807 e!3370821)))

(declare-fun res!2316606 () Bool)

(assert (=> b!5441443 (=> res!2316606 e!3370821)))

(assert (=> b!5441443 (= res!2316606 (or (and ((_ is ElementMatch!15259) (regOne!31030 r!7292)) (= (c!949571 (regOne!31030 r!7292)) (h!68400 s!2326))) ((_ is Union!15259) (regOne!31030 r!7292))))))

(declare-fun lt!2218897 () Unit!154578)

(assert (=> b!5441443 (= lt!2218897 e!3370805)))

(declare-fun c!949570 () Bool)

(declare-fun nullable!5428 (Regex!15259) Bool)

(assert (=> b!5441443 (= c!949570 (nullable!5428 (h!68401 (exprs!5143 (h!68402 zl!343)))))))

(declare-fun lambda!286335 () Int)

(declare-fun flatMap!986 ((InoxSet Context!9286) Int) (InoxSet Context!9286))

(declare-fun derivationStepZipperUp!631 (Context!9286 C!30788) (InoxSet Context!9286))

(assert (=> b!5441443 (= (flatMap!986 z!1189 lambda!286335) (derivationStepZipperUp!631 (h!68402 zl!343) (h!68400 s!2326)))))

(declare-fun lt!2218898 () Unit!154578)

(declare-fun lemmaFlatMapOnSingletonSet!518 ((InoxSet Context!9286) Context!9286 Int) Unit!154578)

(assert (=> b!5441443 (= lt!2218898 (lemmaFlatMapOnSingletonSet!518 z!1189 (h!68402 zl!343) lambda!286335))))

(assert (=> b!5441443 (= lt!2218894 (derivationStepZipperUp!631 lt!2218886 (h!68400 s!2326)))))

(declare-fun derivationStepZipperDown!707 (Regex!15259 Context!9286 C!30788) (InoxSet Context!9286))

(assert (=> b!5441443 (= lt!2218888 (derivationStepZipperDown!707 (h!68401 (exprs!5143 (h!68402 zl!343))) lt!2218886 (h!68400 s!2326)))))

(assert (=> b!5441443 (= lt!2218886 (Context!9287 (t!375304 (exprs!5143 (h!68402 zl!343)))))))

(declare-fun lt!2218896 () (InoxSet Context!9286))

(assert (=> b!5441443 (= lt!2218896 (derivationStepZipperUp!631 (Context!9287 (Cons!61953 (h!68401 (exprs!5143 (h!68402 zl!343))) (t!375304 (exprs!5143 (h!68402 zl!343))))) (h!68400 s!2326)))))

(declare-fun b!5441444 () Bool)

(assert (=> b!5441444 (= e!3370814 tp_is_empty!39771)))

(declare-fun b!5441445 () Bool)

(declare-fun tp!1500220 () Bool)

(declare-fun tp!1500228 () Bool)

(assert (=> b!5441445 (= e!3370814 (and tp!1500220 tp!1500228))))

(declare-fun b!5441446 () Bool)

(declare-fun res!2316601 () Bool)

(assert (=> b!5441446 (=> (not res!2316601) (not e!3370815))))

(declare-fun toList!9043 ((InoxSet Context!9286)) List!62078)

(assert (=> b!5441446 (= res!2316601 (= (toList!9043 z!1189) zl!343))))

(declare-fun b!5441447 () Bool)

(declare-fun res!2316616 () Bool)

(assert (=> b!5441447 (=> res!2316616 e!3370807)))

(declare-fun isEmpty!33938 (List!62077) Bool)

(assert (=> b!5441447 (= res!2316616 (isEmpty!33938 (t!375304 (exprs!5143 (h!68402 zl!343)))))))

(declare-fun b!5441448 () Bool)

(declare-fun e!3370810 () Bool)

(declare-fun matchZipper!1503 ((InoxSet Context!9286) List!62076) Bool)

(assert (=> b!5441448 (= e!3370810 (matchZipper!1503 lt!2218894 (t!375303 s!2326)))))

(declare-fun b!5441449 () Bool)

(declare-fun res!2316602 () Bool)

(assert (=> b!5441449 (=> res!2316602 e!3370822)))

(assert (=> b!5441449 (= res!2316602 (or ((_ is EmptyExpr!15259) r!7292) ((_ is EmptyLang!15259) r!7292) ((_ is ElementMatch!15259) r!7292) ((_ is Union!15259) r!7292) (not ((_ is Concat!24104) r!7292))))))

(declare-fun b!5441450 () Bool)

(declare-fun Unit!154581 () Unit!154578)

(assert (=> b!5441450 (= e!3370805 Unit!154581)))

(declare-fun lt!2218905 () Unit!154578)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!496 ((InoxSet Context!9286) (InoxSet Context!9286) List!62076) Unit!154578)

(assert (=> b!5441450 (= lt!2218905 (lemmaZipperConcatMatchesSameAsBothZippers!496 lt!2218888 lt!2218894 (t!375303 s!2326)))))

(declare-fun res!2316619 () Bool)

(assert (=> b!5441450 (= res!2316619 (matchZipper!1503 lt!2218888 (t!375303 s!2326)))))

(assert (=> b!5441450 (=> res!2316619 e!3370810)))

(assert (=> b!5441450 (= (matchZipper!1503 ((_ map or) lt!2218888 lt!2218894) (t!375303 s!2326)) e!3370810)))

(declare-fun b!5441451 () Bool)

(declare-fun res!2316599 () Bool)

(assert (=> b!5441451 (=> res!2316599 e!3370821)))

(declare-fun e!3370806 () Bool)

(assert (=> b!5441451 (= res!2316599 e!3370806)))

(declare-fun res!2316609 () Bool)

(assert (=> b!5441451 (=> (not res!2316609) (not e!3370806))))

(assert (=> b!5441451 (= res!2316609 ((_ is Concat!24104) (regOne!31030 r!7292)))))

(declare-fun b!5441452 () Bool)

(assert (=> b!5441452 (= e!3370806 (nullable!5428 (regOne!31030 (regOne!31030 r!7292))))))

(declare-fun b!5441453 () Bool)

(assert (=> b!5441453 (= e!3370821 e!3370820)))

(declare-fun res!2316610 () Bool)

(assert (=> b!5441453 (=> res!2316610 e!3370820)))

(assert (=> b!5441453 (= res!2316610 (or (not (= lt!2218888 ((as const (Array Context!9286 Bool)) false))) (not (= r!7292 (Concat!24104 (regOne!31030 r!7292) (regTwo!31030 r!7292)))) (not (= (regOne!31030 r!7292) EmptyExpr!15259))))))

(assert (=> b!5441453 (not (matchZipper!1503 lt!2218888 (t!375303 s!2326)))))

(declare-fun lt!2218892 () Unit!154578)

(declare-fun lemmaEmptyZipperMatchesNothing!14 ((InoxSet Context!9286) List!62076) Unit!154578)

(assert (=> b!5441453 (= lt!2218892 (lemmaEmptyZipperMatchesNothing!14 lt!2218888 (t!375303 s!2326)))))

(declare-fun b!5441454 () Bool)

(declare-fun tp!1500223 () Bool)

(assert (=> b!5441454 (= e!3370813 tp!1500223)))

(declare-fun b!5441455 () Bool)

(declare-fun res!2316613 () Bool)

(assert (=> b!5441455 (=> res!2316613 e!3370817)))

(declare-fun lt!2218890 () (InoxSet Context!9286))

(assert (=> b!5441455 (= res!2316613 (not (= (toList!9043 lt!2218890) lt!2218902)))))

(declare-fun b!5441456 () Bool)

(assert (=> b!5441456 (= e!3370812 e!3370818)))

(declare-fun res!2316612 () Bool)

(assert (=> b!5441456 (=> res!2316612 e!3370818)))

(declare-fun lt!2218899 () Bool)

(assert (=> b!5441456 (= res!2316612 (not (= (matchZipper!1503 z!1189 s!2326) lt!2218899)))))

(declare-fun lt!2218900 () Bool)

(assert (=> b!5441456 (= lt!2218900 lt!2218899)))

(assert (=> b!5441456 (= lt!2218899 (matchZipper!1503 lt!2218894 (t!375303 s!2326)))))

(assert (=> b!5441456 (= lt!2218900 (matchZipper!1503 lt!2218889 (t!375303 s!2326)))))

(declare-fun lt!2218903 () Unit!154578)

(assert (=> b!5441456 (= lt!2218903 (lemmaZipperConcatMatchesSameAsBothZippers!496 lt!2218888 lt!2218894 (t!375303 s!2326)))))

(declare-fun b!5441457 () Bool)

(declare-fun res!2316611 () Bool)

(assert (=> b!5441457 (=> res!2316611 e!3370822)))

(declare-fun isEmpty!33939 (List!62078) Bool)

(assert (=> b!5441457 (= res!2316611 (not (isEmpty!33939 (t!375305 zl!343))))))

(declare-fun b!5441458 () Bool)

(declare-fun res!2316608 () Bool)

(assert (=> b!5441458 (=> res!2316608 e!3370822)))

(declare-fun generalisedUnion!1188 (List!62077) Regex!15259)

(declare-fun unfocusZipperList!701 (List!62078) List!62077)

(assert (=> b!5441458 (= res!2316608 (not (= r!7292 (generalisedUnion!1188 (unfocusZipperList!701 zl!343)))))))

(declare-fun b!5441459 () Bool)

(assert (=> b!5441459 (= e!3370811 e!3370808)))

(declare-fun res!2316600 () Bool)

(assert (=> b!5441459 (=> res!2316600 e!3370808)))

(assert (=> b!5441459 (= res!2316600 (not (= lt!2218894 (derivationStepZipper!1488 lt!2218890 (h!68400 s!2326)))))))

(assert (=> b!5441459 (= (flatMap!986 lt!2218890 lambda!286335) (derivationStepZipperUp!631 lt!2218886 (h!68400 s!2326)))))

(declare-fun lt!2218895 () Unit!154578)

(assert (=> b!5441459 (= lt!2218895 (lemmaFlatMapOnSingletonSet!518 lt!2218890 lt!2218886 lambda!286335))))

(assert (=> b!5441459 (= lt!2218890 (store ((as const (Array Context!9286 Bool)) false) lt!2218886 true))))

(declare-fun b!5441460 () Bool)

(declare-fun tp!1500229 () Bool)

(assert (=> b!5441460 (= e!3370814 tp!1500229)))

(declare-fun b!5441461 () Bool)

(declare-fun e!3370819 () Bool)

(declare-fun tp!1500225 () Bool)

(assert (=> b!5441461 (= e!3370819 tp!1500225)))

(declare-fun setIsEmpty!35575 () Bool)

(assert (=> setIsEmpty!35575 setRes!35575))

(declare-fun b!5441462 () Bool)

(declare-fun tp!1500221 () Bool)

(assert (=> b!5441462 (= e!3370809 (and (inv!81394 (h!68402 zl!343)) e!3370819 tp!1500221))))

(declare-fun b!5441463 () Bool)

(assert (=> b!5441463 (= e!3370817 true)))

(declare-fun lt!2218891 () Regex!15259)

(assert (=> b!5441463 (= lt!2218891 (unfocusZipper!1001 lt!2218902))))

(assert (= (and start!570622 res!2316614) b!5441446))

(assert (= (and b!5441446 res!2316601) b!5441440))

(assert (= (and b!5441440 res!2316604) b!5441438))

(assert (= (and b!5441438 (not res!2316621)) b!5441457))

(assert (= (and b!5441457 (not res!2316611)) b!5441437))

(assert (= (and b!5441437 (not res!2316618)) b!5441436))

(assert (= (and b!5441436 (not res!2316605)) b!5441458))

(assert (= (and b!5441458 (not res!2316608)) b!5441449))

(assert (= (and b!5441449 (not res!2316602)) b!5441439))

(assert (= (and b!5441439 (not res!2316615)) b!5441447))

(assert (= (and b!5441447 (not res!2316616)) b!5441443))

(assert (= (and b!5441443 c!949570) b!5441450))

(assert (= (and b!5441443 (not c!949570)) b!5441433))

(assert (= (and b!5441450 (not res!2316619)) b!5441448))

(assert (= (and b!5441443 (not res!2316606)) b!5441451))

(assert (= (and b!5441451 res!2316609) b!5441452))

(assert (= (and b!5441451 (not res!2316599)) b!5441432))

(assert (= (and b!5441432 (not res!2316617)) b!5441453))

(assert (= (and b!5441453 (not res!2316610)) b!5441431))

(assert (= (and b!5441431 (not res!2316607)) b!5441459))

(assert (= (and b!5441459 (not res!2316600)) b!5441434))

(assert (= (and b!5441434 (not res!2316603)) b!5441456))

(assert (= (and b!5441456 (not res!2316612)) b!5441442))

(assert (= (and b!5441442 (not res!2316620)) b!5441455))

(assert (= (and b!5441455 (not res!2316613)) b!5441463))

(assert (= (and start!570622 ((_ is ElementMatch!15259) r!7292)) b!5441444))

(assert (= (and start!570622 ((_ is Concat!24104) r!7292)) b!5441441))

(assert (= (and start!570622 ((_ is Star!15259) r!7292)) b!5441460))

(assert (= (and start!570622 ((_ is Union!15259) r!7292)) b!5441445))

(assert (= (and start!570622 condSetEmpty!35575) setIsEmpty!35575))

(assert (= (and start!570622 (not condSetEmpty!35575)) setNonEmpty!35575))

(assert (= setNonEmpty!35575 b!5441454))

(assert (= b!5441462 b!5441461))

(assert (= (and start!570622 ((_ is Cons!61954) zl!343)) b!5441462))

(assert (= (and start!570622 ((_ is Cons!61952) s!2326)) b!5441435))

(declare-fun m!6462210 () Bool)

(assert (=> setNonEmpty!35575 m!6462210))

(declare-fun m!6462212 () Bool)

(assert (=> b!5441448 m!6462212))

(declare-fun m!6462214 () Bool)

(assert (=> b!5441450 m!6462214))

(declare-fun m!6462216 () Bool)

(assert (=> b!5441450 m!6462216))

(declare-fun m!6462218 () Bool)

(assert (=> b!5441450 m!6462218))

(declare-fun m!6462220 () Bool)

(assert (=> b!5441446 m!6462220))

(declare-fun m!6462222 () Bool)

(assert (=> b!5441452 m!6462222))

(declare-fun m!6462224 () Bool)

(assert (=> b!5441443 m!6462224))

(declare-fun m!6462226 () Bool)

(assert (=> b!5441443 m!6462226))

(declare-fun m!6462228 () Bool)

(assert (=> b!5441443 m!6462228))

(declare-fun m!6462230 () Bool)

(assert (=> b!5441443 m!6462230))

(declare-fun m!6462232 () Bool)

(assert (=> b!5441443 m!6462232))

(declare-fun m!6462234 () Bool)

(assert (=> b!5441443 m!6462234))

(declare-fun m!6462236 () Bool)

(assert (=> b!5441443 m!6462236))

(declare-fun m!6462238 () Bool)

(assert (=> start!570622 m!6462238))

(declare-fun m!6462240 () Bool)

(assert (=> b!5441458 m!6462240))

(assert (=> b!5441458 m!6462240))

(declare-fun m!6462242 () Bool)

(assert (=> b!5441458 m!6462242))

(declare-fun m!6462244 () Bool)

(assert (=> b!5441442 m!6462244))

(assert (=> b!5441442 m!6462244))

(declare-fun m!6462246 () Bool)

(assert (=> b!5441442 m!6462246))

(declare-fun m!6462248 () Bool)

(assert (=> b!5441462 m!6462248))

(declare-fun m!6462250 () Bool)

(assert (=> b!5441447 m!6462250))

(declare-fun m!6462252 () Bool)

(assert (=> b!5441463 m!6462252))

(declare-fun m!6462254 () Bool)

(assert (=> b!5441437 m!6462254))

(declare-fun m!6462256 () Bool)

(assert (=> b!5441459 m!6462256))

(declare-fun m!6462258 () Bool)

(assert (=> b!5441459 m!6462258))

(declare-fun m!6462260 () Bool)

(assert (=> b!5441459 m!6462260))

(declare-fun m!6462262 () Bool)

(assert (=> b!5441459 m!6462262))

(assert (=> b!5441459 m!6462236))

(declare-fun m!6462264 () Bool)

(assert (=> b!5441439 m!6462264))

(assert (=> b!5441439 m!6462264))

(declare-fun m!6462266 () Bool)

(assert (=> b!5441439 m!6462266))

(declare-fun m!6462268 () Bool)

(assert (=> b!5441439 m!6462268))

(declare-fun m!6462270 () Bool)

(assert (=> b!5441439 m!6462270))

(declare-fun m!6462272 () Bool)

(assert (=> b!5441439 m!6462272))

(assert (=> b!5441439 m!6462266))

(declare-fun m!6462274 () Bool)

(assert (=> b!5441439 m!6462274))

(declare-fun m!6462276 () Bool)

(assert (=> b!5441457 m!6462276))

(declare-fun m!6462278 () Bool)

(assert (=> b!5441440 m!6462278))

(declare-fun m!6462280 () Bool)

(assert (=> b!5441455 m!6462280))

(declare-fun m!6462282 () Bool)

(assert (=> b!5441434 m!6462282))

(assert (=> b!5441453 m!6462216))

(declare-fun m!6462284 () Bool)

(assert (=> b!5441453 m!6462284))

(declare-fun m!6462286 () Bool)

(assert (=> b!5441431 m!6462286))

(declare-fun m!6462288 () Bool)

(assert (=> b!5441431 m!6462288))

(declare-fun m!6462290 () Bool)

(assert (=> b!5441431 m!6462290))

(declare-fun m!6462292 () Bool)

(assert (=> b!5441431 m!6462292))

(declare-fun m!6462294 () Bool)

(assert (=> b!5441431 m!6462294))

(declare-fun m!6462296 () Bool)

(assert (=> b!5441431 m!6462296))

(declare-fun m!6462298 () Bool)

(assert (=> b!5441438 m!6462298))

(declare-fun m!6462300 () Bool)

(assert (=> b!5441438 m!6462300))

(declare-fun m!6462302 () Bool)

(assert (=> b!5441438 m!6462302))

(declare-fun m!6462304 () Bool)

(assert (=> b!5441456 m!6462304))

(assert (=> b!5441456 m!6462212))

(declare-fun m!6462306 () Bool)

(assert (=> b!5441456 m!6462306))

(assert (=> b!5441456 m!6462214))

(check-sat (not b!5441447) (not b!5441456) (not b!5441461) (not b!5441441) (not b!5441462) (not b!5441445) (not b!5441442) (not b!5441443) (not b!5441450) (not setNonEmpty!35575) (not b!5441434) (not b!5441438) (not b!5441431) (not b!5441460) (not b!5441455) tp_is_empty!39771 (not b!5441440) (not b!5441448) (not b!5441439) (not b!5441463) (not b!5441435) (not b!5441454) (not start!570622) (not b!5441446) (not b!5441452) (not b!5441457) (not b!5441453) (not b!5441459) (not b!5441437) (not b!5441458))
(check-sat)
