; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!560610 () Bool)

(assert start!560610)

(declare-fun b!5317690 () Bool)

(assert (=> b!5317690 true))

(assert (=> b!5317690 true))

(declare-fun lambda!271138 () Int)

(declare-fun lambda!271137 () Int)

(assert (=> b!5317690 (not (= lambda!271138 lambda!271137))))

(assert (=> b!5317690 true))

(assert (=> b!5317690 true))

(declare-fun b!5317683 () Bool)

(assert (=> b!5317683 true))

(declare-fun b!5317668 () Bool)

(declare-fun res!2255825 () Bool)

(declare-fun e!3303907 () Bool)

(assert (=> b!5317668 (=> res!2255825 e!3303907)))

(declare-datatypes ((C!30220 0))(
  ( (C!30221 (val!24812 Int)) )
))
(declare-datatypes ((Regex!14975 0))(
  ( (ElementMatch!14975 (c!923983 C!30220)) (Concat!23820 (regOne!30462 Regex!14975) (regTwo!30462 Regex!14975)) (EmptyExpr!14975) (Star!14975 (reg!15304 Regex!14975)) (EmptyLang!14975) (Union!14975 (regOne!30463 Regex!14975) (regTwo!30463 Regex!14975)) )
))
(declare-datatypes ((List!61224 0))(
  ( (Nil!61100) (Cons!61100 (h!67548 Regex!14975) (t!374433 List!61224)) )
))
(declare-datatypes ((Context!8718 0))(
  ( (Context!8719 (exprs!4859 List!61224)) )
))
(declare-datatypes ((List!61225 0))(
  ( (Nil!61101) (Cons!61101 (h!67549 Context!8718) (t!374434 List!61225)) )
))
(declare-fun zl!343 () List!61225)

(get-info :version)

(assert (=> b!5317668 (= res!2255825 (not ((_ is Cons!61100) (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317669 () Bool)

(declare-fun e!3303905 () Bool)

(declare-fun tp!1480978 () Bool)

(assert (=> b!5317669 (= e!3303905 tp!1480978)))

(declare-fun b!5317670 () Bool)

(declare-fun e!3303912 () Bool)

(declare-fun tp!1480975 () Bool)

(declare-fun tp!1480972 () Bool)

(assert (=> b!5317670 (= e!3303912 (and tp!1480975 tp!1480972))))

(declare-fun res!2255829 () Bool)

(declare-fun e!3303915 () Bool)

(assert (=> start!560610 (=> (not res!2255829) (not e!3303915))))

(declare-fun r!7292 () Regex!14975)

(declare-fun validRegex!6711 (Regex!14975) Bool)

(assert (=> start!560610 (= res!2255829 (validRegex!6711 r!7292))))

(assert (=> start!560610 e!3303915))

(assert (=> start!560610 e!3303912))

(declare-fun condSetEmpty!34221 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8718))

(assert (=> start!560610 (= condSetEmpty!34221 (= z!1189 ((as const (Array Context!8718 Bool)) false)))))

(declare-fun setRes!34221 () Bool)

(assert (=> start!560610 setRes!34221))

(declare-fun e!3303913 () Bool)

(assert (=> start!560610 e!3303913))

(declare-fun e!3303908 () Bool)

(assert (=> start!560610 e!3303908))

(declare-fun b!5317671 () Bool)

(declare-fun res!2255818 () Bool)

(assert (=> b!5317671 (=> (not res!2255818) (not e!3303915))))

(declare-fun unfocusZipper!717 (List!61225) Regex!14975)

(assert (=> b!5317671 (= res!2255818 (= r!7292 (unfocusZipper!717 zl!343)))))

(declare-fun b!5317672 () Bool)

(declare-fun res!2255821 () Bool)

(declare-fun e!3303911 () Bool)

(assert (=> b!5317672 (=> res!2255821 e!3303911)))

(declare-fun e!3303906 () Bool)

(assert (=> b!5317672 (= res!2255821 e!3303906)))

(declare-fun res!2255820 () Bool)

(assert (=> b!5317672 (=> (not res!2255820) (not e!3303906))))

(assert (=> b!5317672 (= res!2255820 ((_ is Concat!23820) (regOne!30462 r!7292)))))

(declare-fun b!5317673 () Bool)

(declare-fun res!2255814 () Bool)

(assert (=> b!5317673 (=> res!2255814 e!3303911)))

(assert (=> b!5317673 (= res!2255814 (not ((_ is Concat!23820) (regOne!30462 r!7292))))))

(declare-fun b!5317674 () Bool)

(declare-fun tp_is_empty!39203 () Bool)

(declare-fun tp!1480981 () Bool)

(assert (=> b!5317674 (= e!3303908 (and tp_is_empty!39203 tp!1480981))))

(declare-fun b!5317675 () Bool)

(declare-fun res!2255823 () Bool)

(assert (=> b!5317675 (=> res!2255823 e!3303907)))

(declare-fun generalisedConcat!644 (List!61224) Regex!14975)

(assert (=> b!5317675 (= res!2255823 (not (= r!7292 (generalisedConcat!644 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5317676 () Bool)

(declare-fun e!3303916 () Bool)

(declare-fun tp!1480973 () Bool)

(assert (=> b!5317676 (= e!3303916 tp!1480973)))

(declare-fun b!5317677 () Bool)

(declare-fun res!2255815 () Bool)

(assert (=> b!5317677 (=> res!2255815 e!3303907)))

(assert (=> b!5317677 (= res!2255815 (or ((_ is EmptyExpr!14975) r!7292) ((_ is EmptyLang!14975) r!7292) ((_ is ElementMatch!14975) r!7292) ((_ is Union!14975) r!7292) (not ((_ is Concat!23820) r!7292))))))

(declare-fun b!5317678 () Bool)

(declare-fun res!2255822 () Bool)

(assert (=> b!5317678 (=> res!2255822 e!3303907)))

(declare-fun isEmpty!33067 (List!61225) Bool)

(assert (=> b!5317678 (= res!2255822 (not (isEmpty!33067 (t!374434 zl!343))))))

(declare-fun b!5317679 () Bool)

(declare-fun res!2255817 () Bool)

(assert (=> b!5317679 (=> (not res!2255817) (not e!3303915))))

(declare-fun toList!8759 ((InoxSet Context!8718)) List!61225)

(assert (=> b!5317679 (= res!2255817 (= (toList!8759 z!1189) zl!343))))

(declare-fun setIsEmpty!34221 () Bool)

(assert (=> setIsEmpty!34221 setRes!34221))

(declare-fun b!5317680 () Bool)

(declare-datatypes ((Unit!153418 0))(
  ( (Unit!153419) )
))
(declare-fun e!3303910 () Unit!153418)

(declare-fun Unit!153420 () Unit!153418)

(assert (=> b!5317680 (= e!3303910 Unit!153420)))

(declare-datatypes ((List!61226 0))(
  ( (Nil!61102) (Cons!61102 (h!67550 C!30220) (t!374435 List!61226)) )
))
(declare-fun s!2326 () List!61226)

(declare-fun lt!2171463 () (InoxSet Context!8718))

(declare-fun lt!2171467 () (InoxSet Context!8718))

(declare-fun lt!2171470 () Unit!153418)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!212 ((InoxSet Context!8718) (InoxSet Context!8718) List!61226) Unit!153418)

(assert (=> b!5317680 (= lt!2171470 (lemmaZipperConcatMatchesSameAsBothZippers!212 lt!2171467 lt!2171463 (t!374435 s!2326)))))

(declare-fun res!2255827 () Bool)

(declare-fun matchZipper!1219 ((InoxSet Context!8718) List!61226) Bool)

(assert (=> b!5317680 (= res!2255827 (matchZipper!1219 lt!2171467 (t!374435 s!2326)))))

(declare-fun e!3303904 () Bool)

(assert (=> b!5317680 (=> res!2255827 e!3303904)))

(assert (=> b!5317680 (= (matchZipper!1219 ((_ map or) lt!2171467 lt!2171463) (t!374435 s!2326)) e!3303904)))

(declare-fun setNonEmpty!34221 () Bool)

(declare-fun setElem!34221 () Context!8718)

(declare-fun tp!1480980 () Bool)

(declare-fun inv!80684 (Context!8718) Bool)

(assert (=> setNonEmpty!34221 (= setRes!34221 (and tp!1480980 (inv!80684 setElem!34221) e!3303916))))

(declare-fun setRest!34221 () (InoxSet Context!8718))

(assert (=> setNonEmpty!34221 (= z!1189 ((_ map or) (store ((as const (Array Context!8718 Bool)) false) setElem!34221 true) setRest!34221))))

(declare-fun b!5317681 () Bool)

(declare-fun res!2255819 () Bool)

(declare-fun e!3303909 () Bool)

(assert (=> b!5317681 (=> res!2255819 e!3303909)))

(declare-fun lt!2171464 () (InoxSet Context!8718))

(assert (=> b!5317681 (= res!2255819 (not (= (matchZipper!1219 lt!2171467 (t!374435 s!2326)) (matchZipper!1219 lt!2171464 (t!374435 s!2326)))))))

(declare-fun b!5317682 () Bool)

(declare-fun res!2255812 () Bool)

(assert (=> b!5317682 (=> res!2255812 e!3303907)))

(declare-fun generalisedUnion!904 (List!61224) Regex!14975)

(declare-fun unfocusZipperList!417 (List!61225) List!61224)

(assert (=> b!5317682 (= res!2255812 (not (= r!7292 (generalisedUnion!904 (unfocusZipperList!417 zl!343)))))))

(declare-fun e!3303914 () Bool)

(assert (=> b!5317683 (= e!3303914 e!3303911)))

(declare-fun res!2255813 () Bool)

(assert (=> b!5317683 (=> res!2255813 e!3303911)))

(assert (=> b!5317683 (= res!2255813 (or (and ((_ is ElementMatch!14975) (regOne!30462 r!7292)) (= (c!923983 (regOne!30462 r!7292)) (h!67550 s!2326))) ((_ is Union!14975) (regOne!30462 r!7292))))))

(declare-fun lt!2171477 () Unit!153418)

(assert (=> b!5317683 (= lt!2171477 e!3303910)))

(declare-fun c!923982 () Bool)

(declare-fun nullable!5144 (Regex!14975) Bool)

(assert (=> b!5317683 (= c!923982 (nullable!5144 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun lambda!271139 () Int)

(declare-fun flatMap!702 ((InoxSet Context!8718) Int) (InoxSet Context!8718))

(declare-fun derivationStepZipperUp!347 (Context!8718 C!30220) (InoxSet Context!8718))

(assert (=> b!5317683 (= (flatMap!702 z!1189 lambda!271139) (derivationStepZipperUp!347 (h!67549 zl!343) (h!67550 s!2326)))))

(declare-fun lt!2171465 () Unit!153418)

(declare-fun lemmaFlatMapOnSingletonSet!234 ((InoxSet Context!8718) Context!8718 Int) Unit!153418)

(assert (=> b!5317683 (= lt!2171465 (lemmaFlatMapOnSingletonSet!234 z!1189 (h!67549 zl!343) lambda!271139))))

(declare-fun lt!2171466 () Context!8718)

(assert (=> b!5317683 (= lt!2171463 (derivationStepZipperUp!347 lt!2171466 (h!67550 s!2326)))))

(declare-fun derivationStepZipperDown!423 (Regex!14975 Context!8718 C!30220) (InoxSet Context!8718))

(assert (=> b!5317683 (= lt!2171467 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (h!67549 zl!343))) lt!2171466 (h!67550 s!2326)))))

(assert (=> b!5317683 (= lt!2171466 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun lt!2171471 () (InoxSet Context!8718))

(assert (=> b!5317683 (= lt!2171471 (derivationStepZipperUp!347 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))) (h!67550 s!2326)))))

(declare-fun b!5317684 () Bool)

(assert (=> b!5317684 (= e!3303909 (validRegex!6711 (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun lt!2171474 () (InoxSet Context!8718))

(declare-fun lt!2171476 () Context!8718)

(assert (=> b!5317684 (= (flatMap!702 lt!2171474 lambda!271139) (derivationStepZipperUp!347 lt!2171476 (h!67550 s!2326)))))

(declare-fun lt!2171478 () Unit!153418)

(assert (=> b!5317684 (= lt!2171478 (lemmaFlatMapOnSingletonSet!234 lt!2171474 lt!2171476 lambda!271139))))

(declare-fun lt!2171469 () (InoxSet Context!8718))

(assert (=> b!5317684 (= lt!2171469 (derivationStepZipperUp!347 lt!2171476 (h!67550 s!2326)))))

(assert (=> b!5317684 (= lt!2171474 (store ((as const (Array Context!8718 Bool)) false) lt!2171476 true))))

(declare-fun lt!2171473 () List!61224)

(assert (=> b!5317684 (= lt!2171476 (Context!8719 (Cons!61100 (regOne!30462 (regOne!30462 r!7292)) lt!2171473)))))

(declare-fun b!5317685 () Bool)

(assert (=> b!5317685 (= e!3303906 (nullable!5144 (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun b!5317686 () Bool)

(declare-fun res!2255824 () Bool)

(assert (=> b!5317686 (=> res!2255824 e!3303914)))

(declare-fun isEmpty!33068 (List!61224) Bool)

(assert (=> b!5317686 (= res!2255824 (isEmpty!33068 (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317687 () Bool)

(declare-fun tp!1480977 () Bool)

(declare-fun tp!1480979 () Bool)

(assert (=> b!5317687 (= e!3303912 (and tp!1480977 tp!1480979))))

(declare-fun b!5317688 () Bool)

(assert (=> b!5317688 (= e!3303904 (matchZipper!1219 lt!2171463 (t!374435 s!2326)))))

(declare-fun b!5317689 () Bool)

(assert (=> b!5317689 (= e!3303915 (not e!3303907))))

(declare-fun res!2255828 () Bool)

(assert (=> b!5317689 (=> res!2255828 e!3303907)))

(assert (=> b!5317689 (= res!2255828 (not ((_ is Cons!61101) zl!343)))))

(declare-fun lt!2171475 () Bool)

(declare-fun matchRSpec!2078 (Regex!14975 List!61226) Bool)

(assert (=> b!5317689 (= lt!2171475 (matchRSpec!2078 r!7292 s!2326))))

(declare-fun matchR!7160 (Regex!14975 List!61226) Bool)

(assert (=> b!5317689 (= lt!2171475 (matchR!7160 r!7292 s!2326))))

(declare-fun lt!2171472 () Unit!153418)

(declare-fun mainMatchTheorem!2078 (Regex!14975 List!61226) Unit!153418)

(assert (=> b!5317689 (= lt!2171472 (mainMatchTheorem!2078 r!7292 s!2326))))

(assert (=> b!5317690 (= e!3303907 e!3303914)))

(declare-fun res!2255826 () Bool)

(assert (=> b!5317690 (=> res!2255826 e!3303914)))

(declare-fun lt!2171468 () Bool)

(assert (=> b!5317690 (= res!2255826 (or (not (= lt!2171475 lt!2171468)) ((_ is Nil!61102) s!2326)))))

(declare-fun Exists!2156 (Int) Bool)

(assert (=> b!5317690 (= (Exists!2156 lambda!271137) (Exists!2156 lambda!271138))))

(declare-fun lt!2171480 () Unit!153418)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!810 (Regex!14975 Regex!14975 List!61226) Unit!153418)

(assert (=> b!5317690 (= lt!2171480 (lemmaExistCutMatchRandMatchRSpecEquivalent!810 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326))))

(assert (=> b!5317690 (= lt!2171468 (Exists!2156 lambda!271137))))

(declare-datatypes ((tuple2!64348 0))(
  ( (tuple2!64349 (_1!35477 List!61226) (_2!35477 List!61226)) )
))
(declare-datatypes ((Option!15086 0))(
  ( (None!15085) (Some!15085 (v!51114 tuple2!64348)) )
))
(declare-fun isDefined!11789 (Option!15086) Bool)

(declare-fun findConcatSeparation!1500 (Regex!14975 Regex!14975 List!61226 List!61226 List!61226) Option!15086)

(assert (=> b!5317690 (= lt!2171468 (isDefined!11789 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326)))))

(declare-fun lt!2171479 () Unit!153418)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1264 (Regex!14975 Regex!14975 List!61226) Unit!153418)

(assert (=> b!5317690 (= lt!2171479 (lemmaFindConcatSeparationEquivalentToExists!1264 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326))))

(declare-fun b!5317691 () Bool)

(assert (=> b!5317691 (= e!3303911 e!3303909)))

(declare-fun res!2255816 () Bool)

(assert (=> b!5317691 (=> res!2255816 e!3303909)))

(assert (=> b!5317691 (= res!2255816 (not (= lt!2171467 lt!2171464)))))

(assert (=> b!5317691 (= lt!2171464 (derivationStepZipperDown!423 (regOne!30462 (regOne!30462 r!7292)) (Context!8719 lt!2171473) (h!67550 s!2326)))))

(assert (=> b!5317691 (= lt!2171473 (Cons!61100 (regTwo!30462 (regOne!30462 r!7292)) (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317692 () Bool)

(assert (=> b!5317692 (= e!3303912 tp_is_empty!39203)))

(declare-fun tp!1480976 () Bool)

(declare-fun b!5317693 () Bool)

(assert (=> b!5317693 (= e!3303913 (and (inv!80684 (h!67549 zl!343)) e!3303905 tp!1480976))))

(declare-fun b!5317694 () Bool)

(declare-fun tp!1480974 () Bool)

(assert (=> b!5317694 (= e!3303912 tp!1480974)))

(declare-fun b!5317695 () Bool)

(declare-fun Unit!153421 () Unit!153418)

(assert (=> b!5317695 (= e!3303910 Unit!153421)))

(assert (= (and start!560610 res!2255829) b!5317679))

(assert (= (and b!5317679 res!2255817) b!5317671))

(assert (= (and b!5317671 res!2255818) b!5317689))

(assert (= (and b!5317689 (not res!2255828)) b!5317678))

(assert (= (and b!5317678 (not res!2255822)) b!5317675))

(assert (= (and b!5317675 (not res!2255823)) b!5317668))

(assert (= (and b!5317668 (not res!2255825)) b!5317682))

(assert (= (and b!5317682 (not res!2255812)) b!5317677))

(assert (= (and b!5317677 (not res!2255815)) b!5317690))

(assert (= (and b!5317690 (not res!2255826)) b!5317686))

(assert (= (and b!5317686 (not res!2255824)) b!5317683))

(assert (= (and b!5317683 c!923982) b!5317680))

(assert (= (and b!5317683 (not c!923982)) b!5317695))

(assert (= (and b!5317680 (not res!2255827)) b!5317688))

(assert (= (and b!5317683 (not res!2255813)) b!5317672))

(assert (= (and b!5317672 res!2255820) b!5317685))

(assert (= (and b!5317672 (not res!2255821)) b!5317673))

(assert (= (and b!5317673 (not res!2255814)) b!5317691))

(assert (= (and b!5317691 (not res!2255816)) b!5317681))

(assert (= (and b!5317681 (not res!2255819)) b!5317684))

(assert (= (and start!560610 ((_ is ElementMatch!14975) r!7292)) b!5317692))

(assert (= (and start!560610 ((_ is Concat!23820) r!7292)) b!5317670))

(assert (= (and start!560610 ((_ is Star!14975) r!7292)) b!5317694))

(assert (= (and start!560610 ((_ is Union!14975) r!7292)) b!5317687))

(assert (= (and start!560610 condSetEmpty!34221) setIsEmpty!34221))

(assert (= (and start!560610 (not condSetEmpty!34221)) setNonEmpty!34221))

(assert (= setNonEmpty!34221 b!5317676))

(assert (= b!5317693 b!5317669))

(assert (= (and start!560610 ((_ is Cons!61101) zl!343)) b!5317693))

(assert (= (and start!560610 ((_ is Cons!61102) s!2326)) b!5317674))

(declare-fun m!6353416 () Bool)

(assert (=> setNonEmpty!34221 m!6353416))

(declare-fun m!6353418 () Bool)

(assert (=> b!5317693 m!6353418))

(declare-fun m!6353420 () Bool)

(assert (=> b!5317686 m!6353420))

(declare-fun m!6353422 () Bool)

(assert (=> b!5317678 m!6353422))

(declare-fun m!6353424 () Bool)

(assert (=> b!5317688 m!6353424))

(declare-fun m!6353426 () Bool)

(assert (=> b!5317679 m!6353426))

(declare-fun m!6353428 () Bool)

(assert (=> b!5317680 m!6353428))

(declare-fun m!6353430 () Bool)

(assert (=> b!5317680 m!6353430))

(declare-fun m!6353432 () Bool)

(assert (=> b!5317680 m!6353432))

(declare-fun m!6353434 () Bool)

(assert (=> b!5317689 m!6353434))

(declare-fun m!6353436 () Bool)

(assert (=> b!5317689 m!6353436))

(declare-fun m!6353438 () Bool)

(assert (=> b!5317689 m!6353438))

(assert (=> b!5317681 m!6353430))

(declare-fun m!6353440 () Bool)

(assert (=> b!5317681 m!6353440))

(declare-fun m!6353442 () Bool)

(assert (=> b!5317690 m!6353442))

(declare-fun m!6353444 () Bool)

(assert (=> b!5317690 m!6353444))

(declare-fun m!6353446 () Bool)

(assert (=> b!5317690 m!6353446))

(assert (=> b!5317690 m!6353442))

(declare-fun m!6353448 () Bool)

(assert (=> b!5317690 m!6353448))

(declare-fun m!6353450 () Bool)

(assert (=> b!5317690 m!6353450))

(assert (=> b!5317690 m!6353444))

(declare-fun m!6353452 () Bool)

(assert (=> b!5317690 m!6353452))

(declare-fun m!6353454 () Bool)

(assert (=> b!5317685 m!6353454))

(declare-fun m!6353456 () Bool)

(assert (=> b!5317671 m!6353456))

(declare-fun m!6353458 () Bool)

(assert (=> b!5317682 m!6353458))

(assert (=> b!5317682 m!6353458))

(declare-fun m!6353460 () Bool)

(assert (=> b!5317682 m!6353460))

(declare-fun m!6353462 () Bool)

(assert (=> start!560610 m!6353462))

(declare-fun m!6353464 () Bool)

(assert (=> b!5317691 m!6353464))

(declare-fun m!6353466 () Bool)

(assert (=> b!5317683 m!6353466))

(declare-fun m!6353468 () Bool)

(assert (=> b!5317683 m!6353468))

(declare-fun m!6353470 () Bool)

(assert (=> b!5317683 m!6353470))

(declare-fun m!6353472 () Bool)

(assert (=> b!5317683 m!6353472))

(declare-fun m!6353474 () Bool)

(assert (=> b!5317683 m!6353474))

(declare-fun m!6353476 () Bool)

(assert (=> b!5317683 m!6353476))

(declare-fun m!6353478 () Bool)

(assert (=> b!5317683 m!6353478))

(declare-fun m!6353480 () Bool)

(assert (=> b!5317675 m!6353480))

(declare-fun m!6353482 () Bool)

(assert (=> b!5317684 m!6353482))

(declare-fun m!6353484 () Bool)

(assert (=> b!5317684 m!6353484))

(declare-fun m!6353486 () Bool)

(assert (=> b!5317684 m!6353486))

(declare-fun m!6353488 () Bool)

(assert (=> b!5317684 m!6353488))

(declare-fun m!6353490 () Bool)

(assert (=> b!5317684 m!6353490))

(check-sat (not b!5317680) (not b!5317694) (not b!5317691) (not b!5317685) (not b!5317683) (not b!5317676) (not b!5317693) (not b!5317678) tp_is_empty!39203 (not setNonEmpty!34221) (not b!5317689) (not b!5317679) (not b!5317675) (not b!5317688) (not b!5317686) (not b!5317681) (not b!5317684) (not b!5317669) (not b!5317687) (not b!5317674) (not b!5317670) (not start!560610) (not b!5317671) (not b!5317682) (not b!5317690))
(check-sat)
(get-model)

(declare-fun b!5317734 () Bool)

(declare-fun call!379439 () (InoxSet Context!8718))

(declare-fun e!3303935 () (InoxSet Context!8718))

(assert (=> b!5317734 (= e!3303935 ((_ map or) call!379439 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (h!67550 s!2326))))))

(declare-fun b!5317735 () Bool)

(declare-fun e!3303937 () (InoxSet Context!8718))

(assert (=> b!5317735 (= e!3303937 call!379439)))

(declare-fun b!5317736 () Bool)

(assert (=> b!5317736 (= e!3303935 e!3303937)))

(declare-fun c!923998 () Bool)

(assert (=> b!5317736 (= c!923998 ((_ is Cons!61100) (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))

(declare-fun d!1708231 () Bool)

(declare-fun c!923999 () Bool)

(declare-fun e!3303936 () Bool)

(assert (=> d!1708231 (= c!923999 e!3303936)))

(declare-fun res!2255834 () Bool)

(assert (=> d!1708231 (=> (not res!2255834) (not e!3303936))))

(assert (=> d!1708231 (= res!2255834 ((_ is Cons!61100) (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))

(assert (=> d!1708231 (= (derivationStepZipperUp!347 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))) (h!67550 s!2326)) e!3303935)))

(declare-fun b!5317737 () Bool)

(assert (=> b!5317737 (= e!3303936 (nullable!5144 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun b!5317738 () Bool)

(assert (=> b!5317738 (= e!3303937 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379434 () Bool)

(assert (=> bm!379434 (= call!379439 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (h!67550 s!2326)))))

(assert (= (and d!1708231 res!2255834) b!5317737))

(assert (= (and d!1708231 c!923999) b!5317734))

(assert (= (and d!1708231 (not c!923999)) b!5317736))

(assert (= (and b!5317736 c!923998) b!5317735))

(assert (= (and b!5317736 (not c!923998)) b!5317738))

(assert (= (or b!5317734 b!5317735) bm!379434))

(declare-fun m!6353494 () Bool)

(assert (=> b!5317734 m!6353494))

(declare-fun m!6353496 () Bool)

(assert (=> b!5317737 m!6353496))

(declare-fun m!6353498 () Bool)

(assert (=> bm!379434 m!6353498))

(assert (=> b!5317683 d!1708231))

(declare-fun call!379446 () (InoxSet Context!8718))

(declare-fun e!3303944 () (InoxSet Context!8718))

(declare-fun b!5317750 () Bool)

(assert (=> b!5317750 (= e!3303944 ((_ map or) call!379446 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) (h!67550 s!2326))))))

(declare-fun b!5317751 () Bool)

(declare-fun e!3303946 () (InoxSet Context!8718))

(assert (=> b!5317751 (= e!3303946 call!379446)))

(declare-fun b!5317752 () Bool)

(assert (=> b!5317752 (= e!3303944 e!3303946)))

(declare-fun c!924005 () Bool)

(assert (=> b!5317752 (= c!924005 ((_ is Cons!61100) (exprs!4859 (h!67549 zl!343))))))

(declare-fun d!1708233 () Bool)

(declare-fun c!924006 () Bool)

(declare-fun e!3303945 () Bool)

(assert (=> d!1708233 (= c!924006 e!3303945)))

(declare-fun res!2255836 () Bool)

(assert (=> d!1708233 (=> (not res!2255836) (not e!3303945))))

(assert (=> d!1708233 (= res!2255836 ((_ is Cons!61100) (exprs!4859 (h!67549 zl!343))))))

(assert (=> d!1708233 (= (derivationStepZipperUp!347 (h!67549 zl!343) (h!67550 s!2326)) e!3303944)))

(declare-fun b!5317753 () Bool)

(assert (=> b!5317753 (= e!3303945 (nullable!5144 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317754 () Bool)

(assert (=> b!5317754 (= e!3303946 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379441 () Bool)

(assert (=> bm!379441 (= call!379446 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (h!67549 zl!343))) (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) (h!67550 s!2326)))))

(assert (= (and d!1708233 res!2255836) b!5317753))

(assert (= (and d!1708233 c!924006) b!5317750))

(assert (= (and d!1708233 (not c!924006)) b!5317752))

(assert (= (and b!5317752 c!924005) b!5317751))

(assert (= (and b!5317752 (not c!924005)) b!5317754))

(assert (= (or b!5317750 b!5317751) bm!379441))

(declare-fun m!6353500 () Bool)

(assert (=> b!5317750 m!6353500))

(assert (=> b!5317753 m!6353472))

(declare-fun m!6353502 () Bool)

(assert (=> bm!379441 m!6353502))

(assert (=> b!5317683 d!1708233))

(declare-fun c!924019 () Bool)

(declare-fun c!924021 () Bool)

(declare-fun bm!379454 () Bool)

(declare-fun call!379459 () List!61224)

(declare-fun $colon$colon!1392 (List!61224 Regex!14975) List!61224)

(assert (=> bm!379454 (= call!379459 ($colon$colon!1392 (exprs!4859 lt!2171466) (ite (or c!924021 c!924019) (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (h!67548 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5317777 () Bool)

(declare-fun e!3303963 () (InoxSet Context!8718))

(declare-fun e!3303964 () (InoxSet Context!8718))

(assert (=> b!5317777 (= e!3303963 e!3303964)))

(declare-fun c!924018 () Bool)

(assert (=> b!5317777 (= c!924018 ((_ is Union!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317778 () Bool)

(declare-fun e!3303960 () Bool)

(assert (=> b!5317778 (= c!924021 e!3303960)))

(declare-fun res!2255839 () Bool)

(assert (=> b!5317778 (=> (not res!2255839) (not e!3303960))))

(assert (=> b!5317778 (= res!2255839 ((_ is Concat!23820) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun e!3303962 () (InoxSet Context!8718))

(assert (=> b!5317778 (= e!3303964 e!3303962)))

(declare-fun bm!379455 () Bool)

(declare-fun call!379463 () (InoxSet Context!8718))

(declare-fun call!379464 () (InoxSet Context!8718))

(assert (=> bm!379455 (= call!379463 call!379464)))

(declare-fun b!5317779 () Bool)

(declare-fun call!379461 () (InoxSet Context!8718))

(assert (=> b!5317779 (= e!3303962 ((_ map or) call!379461 call!379463))))

(declare-fun b!5317780 () Bool)

(assert (=> b!5317780 (= e!3303963 (store ((as const (Array Context!8718 Bool)) false) lt!2171466 true))))

(declare-fun d!1708235 () Bool)

(declare-fun c!924020 () Bool)

(assert (=> d!1708235 (= c!924020 (and ((_ is ElementMatch!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))) (= (c!923983 (h!67548 (exprs!4859 (h!67549 zl!343)))) (h!67550 s!2326))))))

(assert (=> d!1708235 (= (derivationStepZipperDown!423 (h!67548 (exprs!4859 (h!67549 zl!343))) lt!2171466 (h!67550 s!2326)) e!3303963)))

(declare-fun b!5317781 () Bool)

(assert (=> b!5317781 (= e!3303964 ((_ map or) call!379464 call!379461))))

(declare-fun b!5317782 () Bool)

(declare-fun e!3303961 () (InoxSet Context!8718))

(assert (=> b!5317782 (= e!3303961 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5317783 () Bool)

(declare-fun e!3303959 () (InoxSet Context!8718))

(declare-fun call!379462 () (InoxSet Context!8718))

(assert (=> b!5317783 (= e!3303959 call!379462)))

(declare-fun bm!379456 () Bool)

(assert (=> bm!379456 (= call!379462 call!379463)))

(declare-fun bm!379457 () Bool)

(declare-fun call!379460 () List!61224)

(assert (=> bm!379457 (= call!379460 call!379459)))

(declare-fun b!5317784 () Bool)

(assert (=> b!5317784 (= e!3303962 e!3303959)))

(assert (=> b!5317784 (= c!924019 ((_ is Concat!23820) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317785 () Bool)

(assert (=> b!5317785 (= e!3303960 (nullable!5144 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5317786 () Bool)

(assert (=> b!5317786 (= e!3303961 call!379462)))

(declare-fun bm!379458 () Bool)

(assert (=> bm!379458 (= call!379464 (derivationStepZipperDown!423 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))) (ite (or c!924018 c!924021) lt!2171466 (Context!8719 call!379460)) (h!67550 s!2326)))))

(declare-fun b!5317787 () Bool)

(declare-fun c!924017 () Bool)

(assert (=> b!5317787 (= c!924017 ((_ is Star!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> b!5317787 (= e!3303959 e!3303961)))

(declare-fun bm!379459 () Bool)

(assert (=> bm!379459 (= call!379461 (derivationStepZipperDown!423 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))) (ite c!924018 lt!2171466 (Context!8719 call!379459)) (h!67550 s!2326)))))

(assert (= (and d!1708235 c!924020) b!5317780))

(assert (= (and d!1708235 (not c!924020)) b!5317777))

(assert (= (and b!5317777 c!924018) b!5317781))

(assert (= (and b!5317777 (not c!924018)) b!5317778))

(assert (= (and b!5317778 res!2255839) b!5317785))

(assert (= (and b!5317778 c!924021) b!5317779))

(assert (= (and b!5317778 (not c!924021)) b!5317784))

(assert (= (and b!5317784 c!924019) b!5317783))

(assert (= (and b!5317784 (not c!924019)) b!5317787))

(assert (= (and b!5317787 c!924017) b!5317786))

(assert (= (and b!5317787 (not c!924017)) b!5317782))

(assert (= (or b!5317783 b!5317786) bm!379457))

(assert (= (or b!5317783 b!5317786) bm!379456))

(assert (= (or b!5317779 bm!379457) bm!379454))

(assert (= (or b!5317779 bm!379456) bm!379455))

(assert (= (or b!5317781 b!5317779) bm!379459))

(assert (= (or b!5317781 bm!379455) bm!379458))

(declare-fun m!6353518 () Bool)

(assert (=> b!5317780 m!6353518))

(declare-fun m!6353520 () Bool)

(assert (=> bm!379459 m!6353520))

(declare-fun m!6353522 () Bool)

(assert (=> bm!379454 m!6353522))

(declare-fun m!6353524 () Bool)

(assert (=> bm!379458 m!6353524))

(declare-fun m!6353526 () Bool)

(assert (=> b!5317785 m!6353526))

(assert (=> b!5317683 d!1708235))

(declare-fun d!1708243 () Bool)

(declare-fun choose!39794 ((InoxSet Context!8718) Int) (InoxSet Context!8718))

(assert (=> d!1708243 (= (flatMap!702 z!1189 lambda!271139) (choose!39794 z!1189 lambda!271139))))

(declare-fun bs!1232538 () Bool)

(assert (= bs!1232538 d!1708243))

(declare-fun m!6353528 () Bool)

(assert (=> bs!1232538 m!6353528))

(assert (=> b!5317683 d!1708243))

(declare-fun d!1708245 () Bool)

(declare-fun nullableFct!1494 (Regex!14975) Bool)

(assert (=> d!1708245 (= (nullable!5144 (h!67548 (exprs!4859 (h!67549 zl!343)))) (nullableFct!1494 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun bs!1232539 () Bool)

(assert (= bs!1232539 d!1708245))

(declare-fun m!6353530 () Bool)

(assert (=> bs!1232539 m!6353530))

(assert (=> b!5317683 d!1708245))

(declare-fun d!1708247 () Bool)

(declare-fun dynLambda!24148 (Int Context!8718) (InoxSet Context!8718))

(assert (=> d!1708247 (= (flatMap!702 z!1189 lambda!271139) (dynLambda!24148 lambda!271139 (h!67549 zl!343)))))

(declare-fun lt!2171492 () Unit!153418)

(declare-fun choose!39795 ((InoxSet Context!8718) Context!8718 Int) Unit!153418)

(assert (=> d!1708247 (= lt!2171492 (choose!39795 z!1189 (h!67549 zl!343) lambda!271139))))

(assert (=> d!1708247 (= z!1189 (store ((as const (Array Context!8718 Bool)) false) (h!67549 zl!343) true))))

(assert (=> d!1708247 (= (lemmaFlatMapOnSingletonSet!234 z!1189 (h!67549 zl!343) lambda!271139) lt!2171492)))

(declare-fun b_lambda!204565 () Bool)

(assert (=> (not b_lambda!204565) (not d!1708247)))

(declare-fun bs!1232540 () Bool)

(assert (= bs!1232540 d!1708247))

(assert (=> bs!1232540 m!6353468))

(declare-fun m!6353532 () Bool)

(assert (=> bs!1232540 m!6353532))

(declare-fun m!6353534 () Bool)

(assert (=> bs!1232540 m!6353534))

(declare-fun m!6353536 () Bool)

(assert (=> bs!1232540 m!6353536))

(assert (=> b!5317683 d!1708247))

(declare-fun b!5317806 () Bool)

(declare-fun e!3303975 () (InoxSet Context!8718))

(declare-fun call!379465 () (InoxSet Context!8718))

(assert (=> b!5317806 (= e!3303975 ((_ map or) call!379465 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 lt!2171466))) (h!67550 s!2326))))))

(declare-fun b!5317807 () Bool)

(declare-fun e!3303977 () (InoxSet Context!8718))

(assert (=> b!5317807 (= e!3303977 call!379465)))

(declare-fun b!5317808 () Bool)

(assert (=> b!5317808 (= e!3303975 e!3303977)))

(declare-fun c!924026 () Bool)

(assert (=> b!5317808 (= c!924026 ((_ is Cons!61100) (exprs!4859 lt!2171466)))))

(declare-fun d!1708249 () Bool)

(declare-fun c!924027 () Bool)

(declare-fun e!3303976 () Bool)

(assert (=> d!1708249 (= c!924027 e!3303976)))

(declare-fun res!2255850 () Bool)

(assert (=> d!1708249 (=> (not res!2255850) (not e!3303976))))

(assert (=> d!1708249 (= res!2255850 ((_ is Cons!61100) (exprs!4859 lt!2171466)))))

(assert (=> d!1708249 (= (derivationStepZipperUp!347 lt!2171466 (h!67550 s!2326)) e!3303975)))

(declare-fun b!5317809 () Bool)

(assert (=> b!5317809 (= e!3303976 (nullable!5144 (h!67548 (exprs!4859 lt!2171466))))))

(declare-fun b!5317810 () Bool)

(assert (=> b!5317810 (= e!3303977 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379460 () Bool)

(assert (=> bm!379460 (= call!379465 (derivationStepZipperDown!423 (h!67548 (exprs!4859 lt!2171466)) (Context!8719 (t!374433 (exprs!4859 lt!2171466))) (h!67550 s!2326)))))

(assert (= (and d!1708249 res!2255850) b!5317809))

(assert (= (and d!1708249 c!924027) b!5317806))

(assert (= (and d!1708249 (not c!924027)) b!5317808))

(assert (= (and b!5317808 c!924026) b!5317807))

(assert (= (and b!5317808 (not c!924026)) b!5317810))

(assert (= (or b!5317806 b!5317807) bm!379460))

(declare-fun m!6353538 () Bool)

(assert (=> b!5317806 m!6353538))

(declare-fun m!6353540 () Bool)

(assert (=> b!5317809 m!6353540))

(declare-fun m!6353542 () Bool)

(assert (=> bm!379460 m!6353542))

(assert (=> b!5317683 d!1708249))

(declare-fun d!1708251 () Bool)

(declare-fun lambda!271145 () Int)

(declare-fun forall!14393 (List!61224 Int) Bool)

(assert (=> d!1708251 (= (inv!80684 (h!67549 zl!343)) (forall!14393 (exprs!4859 (h!67549 zl!343)) lambda!271145))))

(declare-fun bs!1232541 () Bool)

(assert (= bs!1232541 d!1708251))

(declare-fun m!6353544 () Bool)

(assert (=> bs!1232541 m!6353544))

(assert (=> b!5317693 d!1708251))

(declare-fun bm!379467 () Bool)

(declare-fun call!379473 () Bool)

(declare-fun c!924034 () Bool)

(declare-fun c!924035 () Bool)

(assert (=> bm!379467 (= call!379473 (validRegex!6711 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))))))

(declare-fun b!5317838 () Bool)

(declare-fun e!3303997 () Bool)

(declare-fun call!379472 () Bool)

(assert (=> b!5317838 (= e!3303997 call!379472)))

(declare-fun bm!379468 () Bool)

(declare-fun call!379474 () Bool)

(assert (=> bm!379468 (= call!379474 call!379473)))

(declare-fun b!5317840 () Bool)

(declare-fun res!2255870 () Bool)

(assert (=> b!5317840 (=> (not res!2255870) (not e!3303997))))

(assert (=> b!5317840 (= res!2255870 call!379474)))

(declare-fun e!3303999 () Bool)

(assert (=> b!5317840 (= e!3303999 e!3303997)))

(declare-fun b!5317841 () Bool)

(declare-fun res!2255868 () Bool)

(declare-fun e!3304003 () Bool)

(assert (=> b!5317841 (=> res!2255868 e!3304003)))

(assert (=> b!5317841 (= res!2255868 (not ((_ is Concat!23820) r!7292)))))

(assert (=> b!5317841 (= e!3303999 e!3304003)))

(declare-fun b!5317842 () Bool)

(declare-fun e!3304001 () Bool)

(declare-fun e!3303998 () Bool)

(assert (=> b!5317842 (= e!3304001 e!3303998)))

(declare-fun res!2255866 () Bool)

(assert (=> b!5317842 (= res!2255866 (not (nullable!5144 (reg!15304 r!7292))))))

(assert (=> b!5317842 (=> (not res!2255866) (not e!3303998))))

(declare-fun b!5317843 () Bool)

(declare-fun e!3304002 () Bool)

(assert (=> b!5317843 (= e!3304002 e!3304001)))

(assert (=> b!5317843 (= c!924034 ((_ is Star!14975) r!7292))))

(declare-fun d!1708253 () Bool)

(declare-fun res!2255869 () Bool)

(assert (=> d!1708253 (=> res!2255869 e!3304002)))

(assert (=> d!1708253 (= res!2255869 ((_ is ElementMatch!14975) r!7292))))

(assert (=> d!1708253 (= (validRegex!6711 r!7292) e!3304002)))

(declare-fun b!5317839 () Bool)

(declare-fun e!3304000 () Bool)

(assert (=> b!5317839 (= e!3304000 call!379472)))

(declare-fun b!5317844 () Bool)

(assert (=> b!5317844 (= e!3304003 e!3304000)))

(declare-fun res!2255867 () Bool)

(assert (=> b!5317844 (=> (not res!2255867) (not e!3304000))))

(assert (=> b!5317844 (= res!2255867 call!379474)))

(declare-fun b!5317845 () Bool)

(assert (=> b!5317845 (= e!3303998 call!379473)))

(declare-fun bm!379469 () Bool)

(assert (=> bm!379469 (= call!379472 (validRegex!6711 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))))))

(declare-fun b!5317846 () Bool)

(assert (=> b!5317846 (= e!3304001 e!3303999)))

(assert (=> b!5317846 (= c!924035 ((_ is Union!14975) r!7292))))

(assert (= (and d!1708253 (not res!2255869)) b!5317843))

(assert (= (and b!5317843 c!924034) b!5317842))

(assert (= (and b!5317843 (not c!924034)) b!5317846))

(assert (= (and b!5317842 res!2255866) b!5317845))

(assert (= (and b!5317846 c!924035) b!5317840))

(assert (= (and b!5317846 (not c!924035)) b!5317841))

(assert (= (and b!5317840 res!2255870) b!5317838))

(assert (= (and b!5317841 (not res!2255868)) b!5317844))

(assert (= (and b!5317844 res!2255867) b!5317839))

(assert (= (or b!5317838 b!5317839) bm!379469))

(assert (= (or b!5317840 b!5317844) bm!379468))

(assert (= (or b!5317845 bm!379468) bm!379467))

(declare-fun m!6353574 () Bool)

(assert (=> bm!379467 m!6353574))

(declare-fun m!6353576 () Bool)

(assert (=> b!5317842 m!6353576))

(declare-fun m!6353578 () Bool)

(assert (=> bm!379469 m!6353578))

(assert (=> start!560610 d!1708253))

(declare-fun bs!1232546 () Bool)

(declare-fun d!1708261 () Bool)

(assert (= bs!1232546 (and d!1708261 d!1708251)))

(declare-fun lambda!271151 () Int)

(assert (=> bs!1232546 (= lambda!271151 lambda!271145)))

(declare-fun b!5317871 () Bool)

(declare-fun e!3304018 () Bool)

(declare-fun e!3304020 () Bool)

(assert (=> b!5317871 (= e!3304018 e!3304020)))

(declare-fun c!924045 () Bool)

(assert (=> b!5317871 (= c!924045 (isEmpty!33068 (unfocusZipperList!417 zl!343)))))

(declare-fun b!5317872 () Bool)

(declare-fun e!3304023 () Regex!14975)

(assert (=> b!5317872 (= e!3304023 (h!67548 (unfocusZipperList!417 zl!343)))))

(declare-fun b!5317873 () Bool)

(declare-fun e!3304022 () Regex!14975)

(assert (=> b!5317873 (= e!3304022 EmptyLang!14975)))

(declare-fun b!5317874 () Bool)

(declare-fun e!3304019 () Bool)

(declare-fun lt!2171501 () Regex!14975)

(declare-fun isUnion!316 (Regex!14975) Bool)

(assert (=> b!5317874 (= e!3304019 (isUnion!316 lt!2171501))))

(declare-fun b!5317875 () Bool)

(assert (=> b!5317875 (= e!3304023 e!3304022)))

(declare-fun c!924046 () Bool)

(assert (=> b!5317875 (= c!924046 ((_ is Cons!61100) (unfocusZipperList!417 zl!343)))))

(declare-fun b!5317876 () Bool)

(declare-fun isEmptyLang!884 (Regex!14975) Bool)

(assert (=> b!5317876 (= e!3304020 (isEmptyLang!884 lt!2171501))))

(declare-fun b!5317877 () Bool)

(declare-fun e!3304021 () Bool)

(assert (=> b!5317877 (= e!3304021 (isEmpty!33068 (t!374433 (unfocusZipperList!417 zl!343))))))

(declare-fun b!5317878 () Bool)

(declare-fun head!11400 (List!61224) Regex!14975)

(assert (=> b!5317878 (= e!3304019 (= lt!2171501 (head!11400 (unfocusZipperList!417 zl!343))))))

(assert (=> d!1708261 e!3304018))

(declare-fun res!2255879 () Bool)

(assert (=> d!1708261 (=> (not res!2255879) (not e!3304018))))

(assert (=> d!1708261 (= res!2255879 (validRegex!6711 lt!2171501))))

(assert (=> d!1708261 (= lt!2171501 e!3304023)))

(declare-fun c!924047 () Bool)

(assert (=> d!1708261 (= c!924047 e!3304021)))

(declare-fun res!2255880 () Bool)

(assert (=> d!1708261 (=> (not res!2255880) (not e!3304021))))

(assert (=> d!1708261 (= res!2255880 ((_ is Cons!61100) (unfocusZipperList!417 zl!343)))))

(assert (=> d!1708261 (forall!14393 (unfocusZipperList!417 zl!343) lambda!271151)))

(assert (=> d!1708261 (= (generalisedUnion!904 (unfocusZipperList!417 zl!343)) lt!2171501)))

(declare-fun b!5317879 () Bool)

(assert (=> b!5317879 (= e!3304020 e!3304019)))

(declare-fun c!924044 () Bool)

(declare-fun tail!10497 (List!61224) List!61224)

(assert (=> b!5317879 (= c!924044 (isEmpty!33068 (tail!10497 (unfocusZipperList!417 zl!343))))))

(declare-fun b!5317880 () Bool)

(assert (=> b!5317880 (= e!3304022 (Union!14975 (h!67548 (unfocusZipperList!417 zl!343)) (generalisedUnion!904 (t!374433 (unfocusZipperList!417 zl!343)))))))

(assert (= (and d!1708261 res!2255880) b!5317877))

(assert (= (and d!1708261 c!924047) b!5317872))

(assert (= (and d!1708261 (not c!924047)) b!5317875))

(assert (= (and b!5317875 c!924046) b!5317880))

(assert (= (and b!5317875 (not c!924046)) b!5317873))

(assert (= (and d!1708261 res!2255879) b!5317871))

(assert (= (and b!5317871 c!924045) b!5317876))

(assert (= (and b!5317871 (not c!924045)) b!5317879))

(assert (= (and b!5317879 c!924044) b!5317878))

(assert (= (and b!5317879 (not c!924044)) b!5317874))

(declare-fun m!6353584 () Bool)

(assert (=> b!5317880 m!6353584))

(declare-fun m!6353586 () Bool)

(assert (=> b!5317874 m!6353586))

(declare-fun m!6353588 () Bool)

(assert (=> b!5317877 m!6353588))

(declare-fun m!6353590 () Bool)

(assert (=> b!5317876 m!6353590))

(assert (=> b!5317879 m!6353458))

(declare-fun m!6353592 () Bool)

(assert (=> b!5317879 m!6353592))

(assert (=> b!5317879 m!6353592))

(declare-fun m!6353594 () Bool)

(assert (=> b!5317879 m!6353594))

(declare-fun m!6353596 () Bool)

(assert (=> d!1708261 m!6353596))

(assert (=> d!1708261 m!6353458))

(declare-fun m!6353598 () Bool)

(assert (=> d!1708261 m!6353598))

(assert (=> b!5317871 m!6353458))

(declare-fun m!6353600 () Bool)

(assert (=> b!5317871 m!6353600))

(assert (=> b!5317878 m!6353458))

(declare-fun m!6353602 () Bool)

(assert (=> b!5317878 m!6353602))

(assert (=> b!5317682 d!1708261))

(declare-fun bs!1232547 () Bool)

(declare-fun d!1708265 () Bool)

(assert (= bs!1232547 (and d!1708265 d!1708251)))

(declare-fun lambda!271158 () Int)

(assert (=> bs!1232547 (= lambda!271158 lambda!271145)))

(declare-fun bs!1232548 () Bool)

(assert (= bs!1232548 (and d!1708265 d!1708261)))

(assert (=> bs!1232548 (= lambda!271158 lambda!271151)))

(declare-fun lt!2171506 () List!61224)

(assert (=> d!1708265 (forall!14393 lt!2171506 lambda!271158)))

(declare-fun e!3304030 () List!61224)

(assert (=> d!1708265 (= lt!2171506 e!3304030)))

(declare-fun c!924050 () Bool)

(assert (=> d!1708265 (= c!924050 ((_ is Cons!61101) zl!343))))

(assert (=> d!1708265 (= (unfocusZipperList!417 zl!343) lt!2171506)))

(declare-fun b!5317893 () Bool)

(assert (=> b!5317893 (= e!3304030 (Cons!61100 (generalisedConcat!644 (exprs!4859 (h!67549 zl!343))) (unfocusZipperList!417 (t!374434 zl!343))))))

(declare-fun b!5317894 () Bool)

(assert (=> b!5317894 (= e!3304030 Nil!61100)))

(assert (= (and d!1708265 c!924050) b!5317893))

(assert (= (and d!1708265 (not c!924050)) b!5317894))

(declare-fun m!6353604 () Bool)

(assert (=> d!1708265 m!6353604))

(assert (=> b!5317893 m!6353480))

(declare-fun m!6353606 () Bool)

(assert (=> b!5317893 m!6353606))

(assert (=> b!5317682 d!1708265))

(declare-fun call!379476 () Bool)

(declare-fun bm!379470 () Bool)

(declare-fun c!924052 () Bool)

(declare-fun c!924051 () Bool)

(assert (=> bm!379470 (= call!379476 (validRegex!6711 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(declare-fun b!5317895 () Bool)

(declare-fun e!3304031 () Bool)

(declare-fun call!379475 () Bool)

(assert (=> b!5317895 (= e!3304031 call!379475)))

(declare-fun bm!379471 () Bool)

(declare-fun call!379477 () Bool)

(assert (=> bm!379471 (= call!379477 call!379476)))

(declare-fun b!5317897 () Bool)

(declare-fun res!2255893 () Bool)

(assert (=> b!5317897 (=> (not res!2255893) (not e!3304031))))

(assert (=> b!5317897 (= res!2255893 call!379477)))

(declare-fun e!3304033 () Bool)

(assert (=> b!5317897 (= e!3304033 e!3304031)))

(declare-fun b!5317898 () Bool)

(declare-fun res!2255891 () Bool)

(declare-fun e!3304037 () Bool)

(assert (=> b!5317898 (=> res!2255891 e!3304037)))

(assert (=> b!5317898 (= res!2255891 (not ((_ is Concat!23820) (regOne!30462 (regOne!30462 r!7292)))))))

(assert (=> b!5317898 (= e!3304033 e!3304037)))

(declare-fun b!5317899 () Bool)

(declare-fun e!3304035 () Bool)

(declare-fun e!3304032 () Bool)

(assert (=> b!5317899 (= e!3304035 e!3304032)))

(declare-fun res!2255889 () Bool)

(assert (=> b!5317899 (= res!2255889 (not (nullable!5144 (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))))

(assert (=> b!5317899 (=> (not res!2255889) (not e!3304032))))

(declare-fun b!5317900 () Bool)

(declare-fun e!3304036 () Bool)

(assert (=> b!5317900 (= e!3304036 e!3304035)))

(assert (=> b!5317900 (= c!924051 ((_ is Star!14975) (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun d!1708267 () Bool)

(declare-fun res!2255892 () Bool)

(assert (=> d!1708267 (=> res!2255892 e!3304036)))

(assert (=> d!1708267 (= res!2255892 ((_ is ElementMatch!14975) (regOne!30462 (regOne!30462 r!7292))))))

(assert (=> d!1708267 (= (validRegex!6711 (regOne!30462 (regOne!30462 r!7292))) e!3304036)))

(declare-fun b!5317896 () Bool)

(declare-fun e!3304034 () Bool)

(assert (=> b!5317896 (= e!3304034 call!379475)))

(declare-fun b!5317901 () Bool)

(assert (=> b!5317901 (= e!3304037 e!3304034)))

(declare-fun res!2255890 () Bool)

(assert (=> b!5317901 (=> (not res!2255890) (not e!3304034))))

(assert (=> b!5317901 (= res!2255890 call!379477)))

(declare-fun b!5317902 () Bool)

(assert (=> b!5317902 (= e!3304032 call!379476)))

(declare-fun bm!379472 () Bool)

(assert (=> bm!379472 (= call!379475 (validRegex!6711 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun b!5317903 () Bool)

(assert (=> b!5317903 (= e!3304035 e!3304033)))

(assert (=> b!5317903 (= c!924052 ((_ is Union!14975) (regOne!30462 (regOne!30462 r!7292))))))

(assert (= (and d!1708267 (not res!2255892)) b!5317900))

(assert (= (and b!5317900 c!924051) b!5317899))

(assert (= (and b!5317900 (not c!924051)) b!5317903))

(assert (= (and b!5317899 res!2255889) b!5317902))

(assert (= (and b!5317903 c!924052) b!5317897))

(assert (= (and b!5317903 (not c!924052)) b!5317898))

(assert (= (and b!5317897 res!2255893) b!5317895))

(assert (= (and b!5317898 (not res!2255891)) b!5317901))

(assert (= (and b!5317901 res!2255890) b!5317896))

(assert (= (or b!5317895 b!5317896) bm!379472))

(assert (= (or b!5317897 b!5317901) bm!379471))

(assert (= (or b!5317902 bm!379471) bm!379470))

(declare-fun m!6353608 () Bool)

(assert (=> bm!379470 m!6353608))

(declare-fun m!6353610 () Bool)

(assert (=> b!5317899 m!6353610))

(declare-fun m!6353612 () Bool)

(assert (=> bm!379472 m!6353612))

(assert (=> b!5317684 d!1708267))

(declare-fun d!1708269 () Bool)

(assert (=> d!1708269 (= (flatMap!702 lt!2171474 lambda!271139) (choose!39794 lt!2171474 lambda!271139))))

(declare-fun bs!1232551 () Bool)

(assert (= bs!1232551 d!1708269))

(declare-fun m!6353614 () Bool)

(assert (=> bs!1232551 m!6353614))

(assert (=> b!5317684 d!1708269))

(declare-fun b!5317904 () Bool)

(declare-fun call!379478 () (InoxSet Context!8718))

(declare-fun e!3304038 () (InoxSet Context!8718))

(assert (=> b!5317904 (= e!3304038 ((_ map or) call!379478 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 lt!2171476))) (h!67550 s!2326))))))

(declare-fun b!5317905 () Bool)

(declare-fun e!3304040 () (InoxSet Context!8718))

(assert (=> b!5317905 (= e!3304040 call!379478)))

(declare-fun b!5317906 () Bool)

(assert (=> b!5317906 (= e!3304038 e!3304040)))

(declare-fun c!924053 () Bool)

(assert (=> b!5317906 (= c!924053 ((_ is Cons!61100) (exprs!4859 lt!2171476)))))

(declare-fun d!1708271 () Bool)

(declare-fun c!924054 () Bool)

(declare-fun e!3304039 () Bool)

(assert (=> d!1708271 (= c!924054 e!3304039)))

(declare-fun res!2255894 () Bool)

(assert (=> d!1708271 (=> (not res!2255894) (not e!3304039))))

(assert (=> d!1708271 (= res!2255894 ((_ is Cons!61100) (exprs!4859 lt!2171476)))))

(assert (=> d!1708271 (= (derivationStepZipperUp!347 lt!2171476 (h!67550 s!2326)) e!3304038)))

(declare-fun b!5317907 () Bool)

(assert (=> b!5317907 (= e!3304039 (nullable!5144 (h!67548 (exprs!4859 lt!2171476))))))

(declare-fun b!5317908 () Bool)

(assert (=> b!5317908 (= e!3304040 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379473 () Bool)

(assert (=> bm!379473 (= call!379478 (derivationStepZipperDown!423 (h!67548 (exprs!4859 lt!2171476)) (Context!8719 (t!374433 (exprs!4859 lt!2171476))) (h!67550 s!2326)))))

(assert (= (and d!1708271 res!2255894) b!5317907))

(assert (= (and d!1708271 c!924054) b!5317904))

(assert (= (and d!1708271 (not c!924054)) b!5317906))

(assert (= (and b!5317906 c!924053) b!5317905))

(assert (= (and b!5317906 (not c!924053)) b!5317908))

(assert (= (or b!5317904 b!5317905) bm!379473))

(declare-fun m!6353616 () Bool)

(assert (=> b!5317904 m!6353616))

(declare-fun m!6353618 () Bool)

(assert (=> b!5317907 m!6353618))

(declare-fun m!6353620 () Bool)

(assert (=> bm!379473 m!6353620))

(assert (=> b!5317684 d!1708271))

(declare-fun d!1708273 () Bool)

(assert (=> d!1708273 (= (flatMap!702 lt!2171474 lambda!271139) (dynLambda!24148 lambda!271139 lt!2171476))))

(declare-fun lt!2171508 () Unit!153418)

(assert (=> d!1708273 (= lt!2171508 (choose!39795 lt!2171474 lt!2171476 lambda!271139))))

(assert (=> d!1708273 (= lt!2171474 (store ((as const (Array Context!8718 Bool)) false) lt!2171476 true))))

(assert (=> d!1708273 (= (lemmaFlatMapOnSingletonSet!234 lt!2171474 lt!2171476 lambda!271139) lt!2171508)))

(declare-fun b_lambda!204567 () Bool)

(assert (=> (not b_lambda!204567) (not d!1708273)))

(declare-fun bs!1232552 () Bool)

(assert (= bs!1232552 d!1708273))

(assert (=> bs!1232552 m!6353486))

(declare-fun m!6353622 () Bool)

(assert (=> bs!1232552 m!6353622))

(declare-fun m!6353624 () Bool)

(assert (=> bs!1232552 m!6353624))

(assert (=> bs!1232552 m!6353488))

(assert (=> b!5317684 d!1708273))

(declare-fun bs!1232555 () Bool)

(declare-fun d!1708275 () Bool)

(assert (= bs!1232555 (and d!1708275 d!1708251)))

(declare-fun lambda!271165 () Int)

(assert (=> bs!1232555 (= lambda!271165 lambda!271145)))

(declare-fun bs!1232556 () Bool)

(assert (= bs!1232556 (and d!1708275 d!1708261)))

(assert (=> bs!1232556 (= lambda!271165 lambda!271151)))

(declare-fun bs!1232557 () Bool)

(assert (= bs!1232557 (and d!1708275 d!1708265)))

(assert (=> bs!1232557 (= lambda!271165 lambda!271158)))

(declare-fun b!5317949 () Bool)

(declare-fun e!3304067 () Bool)

(assert (=> b!5317949 (= e!3304067 (isEmpty!33068 (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317950 () Bool)

(declare-fun e!3304066 () Bool)

(declare-fun e!3304068 () Bool)

(assert (=> b!5317950 (= e!3304066 e!3304068)))

(declare-fun c!924072 () Bool)

(assert (=> b!5317950 (= c!924072 (isEmpty!33068 (exprs!4859 (h!67549 zl!343))))))

(declare-fun b!5317951 () Bool)

(declare-fun e!3304065 () Bool)

(assert (=> b!5317951 (= e!3304068 e!3304065)))

(declare-fun c!924074 () Bool)

(assert (=> b!5317951 (= c!924074 (isEmpty!33068 (tail!10497 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5317952 () Bool)

(declare-fun e!3304070 () Regex!14975)

(assert (=> b!5317952 (= e!3304070 (h!67548 (exprs!4859 (h!67549 zl!343))))))

(declare-fun b!5317953 () Bool)

(declare-fun lt!2171513 () Regex!14975)

(declare-fun isEmptyExpr!876 (Regex!14975) Bool)

(assert (=> b!5317953 (= e!3304068 (isEmptyExpr!876 lt!2171513))))

(declare-fun b!5317954 () Bool)

(declare-fun e!3304069 () Regex!14975)

(assert (=> b!5317954 (= e!3304070 e!3304069)))

(declare-fun c!924071 () Bool)

(assert (=> b!5317954 (= c!924071 ((_ is Cons!61100) (exprs!4859 (h!67549 zl!343))))))

(declare-fun b!5317955 () Bool)

(declare-fun isConcat!399 (Regex!14975) Bool)

(assert (=> b!5317955 (= e!3304065 (isConcat!399 lt!2171513))))

(assert (=> d!1708275 e!3304066))

(declare-fun res!2255904 () Bool)

(assert (=> d!1708275 (=> (not res!2255904) (not e!3304066))))

(assert (=> d!1708275 (= res!2255904 (validRegex!6711 lt!2171513))))

(assert (=> d!1708275 (= lt!2171513 e!3304070)))

(declare-fun c!924073 () Bool)

(assert (=> d!1708275 (= c!924073 e!3304067)))

(declare-fun res!2255903 () Bool)

(assert (=> d!1708275 (=> (not res!2255903) (not e!3304067))))

(assert (=> d!1708275 (= res!2255903 ((_ is Cons!61100) (exprs!4859 (h!67549 zl!343))))))

(assert (=> d!1708275 (forall!14393 (exprs!4859 (h!67549 zl!343)) lambda!271165)))

(assert (=> d!1708275 (= (generalisedConcat!644 (exprs!4859 (h!67549 zl!343))) lt!2171513)))

(declare-fun b!5317956 () Bool)

(assert (=> b!5317956 (= e!3304069 EmptyExpr!14975)))

(declare-fun b!5317957 () Bool)

(assert (=> b!5317957 (= e!3304069 (Concat!23820 (h!67548 (exprs!4859 (h!67549 zl!343))) (generalisedConcat!644 (t!374433 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5317958 () Bool)

(assert (=> b!5317958 (= e!3304065 (= lt!2171513 (head!11400 (exprs!4859 (h!67549 zl!343)))))))

(assert (= (and d!1708275 res!2255903) b!5317949))

(assert (= (and d!1708275 c!924073) b!5317952))

(assert (= (and d!1708275 (not c!924073)) b!5317954))

(assert (= (and b!5317954 c!924071) b!5317957))

(assert (= (and b!5317954 (not c!924071)) b!5317956))

(assert (= (and d!1708275 res!2255904) b!5317950))

(assert (= (and b!5317950 c!924072) b!5317953))

(assert (= (and b!5317950 (not c!924072)) b!5317951))

(assert (= (and b!5317951 c!924074) b!5317958))

(assert (= (and b!5317951 (not c!924074)) b!5317955))

(declare-fun m!6353634 () Bool)

(assert (=> b!5317955 m!6353634))

(declare-fun m!6353636 () Bool)

(assert (=> b!5317950 m!6353636))

(declare-fun m!6353638 () Bool)

(assert (=> b!5317951 m!6353638))

(assert (=> b!5317951 m!6353638))

(declare-fun m!6353640 () Bool)

(assert (=> b!5317951 m!6353640))

(declare-fun m!6353642 () Bool)

(assert (=> b!5317957 m!6353642))

(declare-fun m!6353644 () Bool)

(assert (=> b!5317953 m!6353644))

(declare-fun m!6353646 () Bool)

(assert (=> d!1708275 m!6353646))

(declare-fun m!6353648 () Bool)

(assert (=> d!1708275 m!6353648))

(assert (=> b!5317949 m!6353420))

(declare-fun m!6353650 () Bool)

(assert (=> b!5317958 m!6353650))

(assert (=> b!5317675 d!1708275))

(declare-fun bm!379474 () Bool)

(declare-fun c!924081 () Bool)

(declare-fun call!379479 () List!61224)

(declare-fun c!924083 () Bool)

(assert (=> bm!379474 (= call!379479 ($colon$colon!1392 (exprs!4859 (Context!8719 lt!2171473)) (ite (or c!924083 c!924081) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 r!7292)))))))

(declare-fun b!5317969 () Bool)

(declare-fun e!3304081 () (InoxSet Context!8718))

(declare-fun e!3304082 () (InoxSet Context!8718))

(assert (=> b!5317969 (= e!3304081 e!3304082)))

(declare-fun c!924080 () Bool)

(assert (=> b!5317969 (= c!924080 ((_ is Union!14975) (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun b!5317970 () Bool)

(declare-fun e!3304078 () Bool)

(assert (=> b!5317970 (= c!924083 e!3304078)))

(declare-fun res!2255907 () Bool)

(assert (=> b!5317970 (=> (not res!2255907) (not e!3304078))))

(assert (=> b!5317970 (= res!2255907 ((_ is Concat!23820) (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun e!3304080 () (InoxSet Context!8718))

(assert (=> b!5317970 (= e!3304082 e!3304080)))

(declare-fun bm!379475 () Bool)

(declare-fun call!379483 () (InoxSet Context!8718))

(declare-fun call!379484 () (InoxSet Context!8718))

(assert (=> bm!379475 (= call!379483 call!379484)))

(declare-fun b!5317971 () Bool)

(declare-fun call!379481 () (InoxSet Context!8718))

(assert (=> b!5317971 (= e!3304080 ((_ map or) call!379481 call!379483))))

(declare-fun b!5317972 () Bool)

(assert (=> b!5317972 (= e!3304081 (store ((as const (Array Context!8718 Bool)) false) (Context!8719 lt!2171473) true))))

(declare-fun d!1708281 () Bool)

(declare-fun c!924082 () Bool)

(assert (=> d!1708281 (= c!924082 (and ((_ is ElementMatch!14975) (regOne!30462 (regOne!30462 r!7292))) (= (c!923983 (regOne!30462 (regOne!30462 r!7292))) (h!67550 s!2326))))))

(assert (=> d!1708281 (= (derivationStepZipperDown!423 (regOne!30462 (regOne!30462 r!7292)) (Context!8719 lt!2171473) (h!67550 s!2326)) e!3304081)))

(declare-fun b!5317973 () Bool)

(assert (=> b!5317973 (= e!3304082 ((_ map or) call!379484 call!379481))))

(declare-fun b!5317974 () Bool)

(declare-fun e!3304079 () (InoxSet Context!8718))

(assert (=> b!5317974 (= e!3304079 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5317975 () Bool)

(declare-fun e!3304077 () (InoxSet Context!8718))

(declare-fun call!379482 () (InoxSet Context!8718))

(assert (=> b!5317975 (= e!3304077 call!379482)))

(declare-fun bm!379476 () Bool)

(assert (=> bm!379476 (= call!379482 call!379483)))

(declare-fun bm!379477 () Bool)

(declare-fun call!379480 () List!61224)

(assert (=> bm!379477 (= call!379480 call!379479)))

(declare-fun b!5317976 () Bool)

(assert (=> b!5317976 (= e!3304080 e!3304077)))

(assert (=> b!5317976 (= c!924081 ((_ is Concat!23820) (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun b!5317977 () Bool)

(assert (=> b!5317977 (= e!3304078 (nullable!5144 (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))

(declare-fun b!5317978 () Bool)

(assert (=> b!5317978 (= e!3304079 call!379482)))

(declare-fun bm!379478 () Bool)

(assert (=> bm!379478 (= call!379484 (derivationStepZipperDown!423 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))) (ite (or c!924080 c!924083) (Context!8719 lt!2171473) (Context!8719 call!379480)) (h!67550 s!2326)))))

(declare-fun b!5317979 () Bool)

(declare-fun c!924079 () Bool)

(assert (=> b!5317979 (= c!924079 ((_ is Star!14975) (regOne!30462 (regOne!30462 r!7292))))))

(assert (=> b!5317979 (= e!3304077 e!3304079)))

(declare-fun bm!379479 () Bool)

(assert (=> bm!379479 (= call!379481 (derivationStepZipperDown!423 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))) (ite c!924080 (Context!8719 lt!2171473) (Context!8719 call!379479)) (h!67550 s!2326)))))

(assert (= (and d!1708281 c!924082) b!5317972))

(assert (= (and d!1708281 (not c!924082)) b!5317969))

(assert (= (and b!5317969 c!924080) b!5317973))

(assert (= (and b!5317969 (not c!924080)) b!5317970))

(assert (= (and b!5317970 res!2255907) b!5317977))

(assert (= (and b!5317970 c!924083) b!5317971))

(assert (= (and b!5317970 (not c!924083)) b!5317976))

(assert (= (and b!5317976 c!924081) b!5317975))

(assert (= (and b!5317976 (not c!924081)) b!5317979))

(assert (= (and b!5317979 c!924079) b!5317978))

(assert (= (and b!5317979 (not c!924079)) b!5317974))

(assert (= (or b!5317975 b!5317978) bm!379477))

(assert (= (or b!5317975 b!5317978) bm!379476))

(assert (= (or b!5317971 bm!379477) bm!379474))

(assert (= (or b!5317971 bm!379476) bm!379475))

(assert (= (or b!5317973 b!5317971) bm!379479))

(assert (= (or b!5317973 bm!379475) bm!379478))

(declare-fun m!6353660 () Bool)

(assert (=> b!5317972 m!6353660))

(declare-fun m!6353666 () Bool)

(assert (=> bm!379479 m!6353666))

(declare-fun m!6353672 () Bool)

(assert (=> bm!379474 m!6353672))

(declare-fun m!6353678 () Bool)

(assert (=> bm!379478 m!6353678))

(declare-fun m!6353680 () Bool)

(assert (=> b!5317977 m!6353680))

(assert (=> b!5317691 d!1708281))

(declare-fun bs!1232559 () Bool)

(declare-fun d!1708285 () Bool)

(assert (= bs!1232559 (and d!1708285 d!1708251)))

(declare-fun lambda!271167 () Int)

(assert (=> bs!1232559 (= lambda!271167 lambda!271145)))

(declare-fun bs!1232560 () Bool)

(assert (= bs!1232560 (and d!1708285 d!1708261)))

(assert (=> bs!1232560 (= lambda!271167 lambda!271151)))

(declare-fun bs!1232561 () Bool)

(assert (= bs!1232561 (and d!1708285 d!1708265)))

(assert (=> bs!1232561 (= lambda!271167 lambda!271158)))

(declare-fun bs!1232562 () Bool)

(assert (= bs!1232562 (and d!1708285 d!1708275)))

(assert (=> bs!1232562 (= lambda!271167 lambda!271165)))

(assert (=> d!1708285 (= (inv!80684 setElem!34221) (forall!14393 (exprs!4859 setElem!34221) lambda!271167))))

(declare-fun bs!1232563 () Bool)

(assert (= bs!1232563 d!1708285))

(declare-fun m!6353682 () Bool)

(assert (=> bs!1232563 m!6353682))

(assert (=> setNonEmpty!34221 d!1708285))

(declare-fun d!1708287 () Bool)

(declare-fun lt!2171519 () Regex!14975)

(assert (=> d!1708287 (validRegex!6711 lt!2171519)))

(assert (=> d!1708287 (= lt!2171519 (generalisedUnion!904 (unfocusZipperList!417 zl!343)))))

(assert (=> d!1708287 (= (unfocusZipper!717 zl!343) lt!2171519)))

(declare-fun bs!1232564 () Bool)

(assert (= bs!1232564 d!1708287))

(declare-fun m!6353684 () Bool)

(assert (=> bs!1232564 m!6353684))

(assert (=> bs!1232564 m!6353458))

(assert (=> bs!1232564 m!6353458))

(assert (=> bs!1232564 m!6353460))

(assert (=> b!5317671 d!1708287))

(declare-fun b!5318046 () Bool)

(declare-fun res!2255936 () Bool)

(declare-fun e!3304128 () Bool)

(assert (=> b!5318046 (=> (not res!2255936) (not e!3304128))))

(declare-fun lt!2171529 () Option!15086)

(declare-fun get!21015 (Option!15086) tuple2!64348)

(assert (=> b!5318046 (= res!2255936 (matchR!7160 (regTwo!30462 r!7292) (_2!35477 (get!21015 lt!2171529))))))

(declare-fun b!5318047 () Bool)

(declare-fun e!3304126 () Option!15086)

(assert (=> b!5318047 (= e!3304126 None!15085)))

(declare-fun b!5318048 () Bool)

(declare-fun res!2255937 () Bool)

(assert (=> b!5318048 (=> (not res!2255937) (not e!3304128))))

(assert (=> b!5318048 (= res!2255937 (matchR!7160 (regOne!30462 r!7292) (_1!35477 (get!21015 lt!2171529))))))

(declare-fun b!5318049 () Bool)

(declare-fun e!3304127 () Bool)

(assert (=> b!5318049 (= e!3304127 (not (isDefined!11789 lt!2171529)))))

(declare-fun b!5318050 () Bool)

(declare-fun e!3304129 () Bool)

(assert (=> b!5318050 (= e!3304129 (matchR!7160 (regTwo!30462 r!7292) s!2326))))

(declare-fun b!5318051 () Bool)

(declare-fun lt!2171528 () Unit!153418)

(declare-fun lt!2171527 () Unit!153418)

(assert (=> b!5318051 (= lt!2171528 lt!2171527)))

(declare-fun ++!13322 (List!61226 List!61226) List!61226)

(assert (=> b!5318051 (= (++!13322 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (t!374435 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1737 (List!61226 C!30220 List!61226 List!61226) Unit!153418)

(assert (=> b!5318051 (= lt!2171527 (lemmaMoveElementToOtherListKeepsConcatEq!1737 Nil!61102 (h!67550 s!2326) (t!374435 s!2326) s!2326))))

(assert (=> b!5318051 (= e!3304126 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (t!374435 s!2326) s!2326))))

(declare-fun b!5318052 () Bool)

(declare-fun e!3304130 () Option!15086)

(assert (=> b!5318052 (= e!3304130 (Some!15085 (tuple2!64349 Nil!61102 s!2326)))))

(declare-fun d!1708289 () Bool)

(assert (=> d!1708289 e!3304127))

(declare-fun res!2255939 () Bool)

(assert (=> d!1708289 (=> res!2255939 e!3304127)))

(assert (=> d!1708289 (= res!2255939 e!3304128)))

(declare-fun res!2255938 () Bool)

(assert (=> d!1708289 (=> (not res!2255938) (not e!3304128))))

(assert (=> d!1708289 (= res!2255938 (isDefined!11789 lt!2171529))))

(assert (=> d!1708289 (= lt!2171529 e!3304130)))

(declare-fun c!924103 () Bool)

(assert (=> d!1708289 (= c!924103 e!3304129)))

(declare-fun res!2255940 () Bool)

(assert (=> d!1708289 (=> (not res!2255940) (not e!3304129))))

(assert (=> d!1708289 (= res!2255940 (matchR!7160 (regOne!30462 r!7292) Nil!61102))))

(assert (=> d!1708289 (validRegex!6711 (regOne!30462 r!7292))))

(assert (=> d!1708289 (= (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326) lt!2171529)))

(declare-fun b!5318053 () Bool)

(assert (=> b!5318053 (= e!3304130 e!3304126)))

(declare-fun c!924104 () Bool)

(assert (=> b!5318053 (= c!924104 ((_ is Nil!61102) s!2326))))

(declare-fun b!5318054 () Bool)

(assert (=> b!5318054 (= e!3304128 (= (++!13322 (_1!35477 (get!21015 lt!2171529)) (_2!35477 (get!21015 lt!2171529))) s!2326))))

(assert (= (and d!1708289 res!2255940) b!5318050))

(assert (= (and d!1708289 c!924103) b!5318052))

(assert (= (and d!1708289 (not c!924103)) b!5318053))

(assert (= (and b!5318053 c!924104) b!5318047))

(assert (= (and b!5318053 (not c!924104)) b!5318051))

(assert (= (and d!1708289 res!2255938) b!5318048))

(assert (= (and b!5318048 res!2255937) b!5318046))

(assert (= (and b!5318046 res!2255936) b!5318054))

(assert (= (and d!1708289 (not res!2255939)) b!5318049))

(declare-fun m!6353704 () Bool)

(assert (=> b!5318050 m!6353704))

(declare-fun m!6353706 () Bool)

(assert (=> b!5318049 m!6353706))

(assert (=> d!1708289 m!6353706))

(declare-fun m!6353708 () Bool)

(assert (=> d!1708289 m!6353708))

(declare-fun m!6353710 () Bool)

(assert (=> d!1708289 m!6353710))

(declare-fun m!6353714 () Bool)

(assert (=> b!5318054 m!6353714))

(declare-fun m!6353718 () Bool)

(assert (=> b!5318054 m!6353718))

(assert (=> b!5318046 m!6353714))

(declare-fun m!6353720 () Bool)

(assert (=> b!5318046 m!6353720))

(declare-fun m!6353722 () Bool)

(assert (=> b!5318051 m!6353722))

(assert (=> b!5318051 m!6353722))

(declare-fun m!6353724 () Bool)

(assert (=> b!5318051 m!6353724))

(declare-fun m!6353726 () Bool)

(assert (=> b!5318051 m!6353726))

(assert (=> b!5318051 m!6353722))

(declare-fun m!6353728 () Bool)

(assert (=> b!5318051 m!6353728))

(assert (=> b!5318048 m!6353714))

(declare-fun m!6353730 () Bool)

(assert (=> b!5318048 m!6353730))

(assert (=> b!5317690 d!1708289))

(declare-fun d!1708301 () Bool)

(declare-fun choose!39801 (Int) Bool)

(assert (=> d!1708301 (= (Exists!2156 lambda!271137) (choose!39801 lambda!271137))))

(declare-fun bs!1232572 () Bool)

(assert (= bs!1232572 d!1708301))

(declare-fun m!6353732 () Bool)

(assert (=> bs!1232572 m!6353732))

(assert (=> b!5317690 d!1708301))

(declare-fun d!1708305 () Bool)

(assert (=> d!1708305 (= (Exists!2156 lambda!271138) (choose!39801 lambda!271138))))

(declare-fun bs!1232574 () Bool)

(assert (= bs!1232574 d!1708305))

(declare-fun m!6353736 () Bool)

(assert (=> bs!1232574 m!6353736))

(assert (=> b!5317690 d!1708305))

(declare-fun bs!1232575 () Bool)

(declare-fun d!1708309 () Bool)

(assert (= bs!1232575 (and d!1708309 b!5317690)))

(declare-fun lambda!271176 () Int)

(assert (=> bs!1232575 (= lambda!271176 lambda!271137)))

(assert (=> bs!1232575 (not (= lambda!271176 lambda!271138))))

(assert (=> d!1708309 true))

(assert (=> d!1708309 true))

(assert (=> d!1708309 true))

(assert (=> d!1708309 (= (isDefined!11789 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326)) (Exists!2156 lambda!271176))))

(declare-fun lt!2171537 () Unit!153418)

(declare-fun choose!39802 (Regex!14975 Regex!14975 List!61226) Unit!153418)

(assert (=> d!1708309 (= lt!2171537 (choose!39802 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326))))

(assert (=> d!1708309 (validRegex!6711 (regOne!30462 r!7292))))

(assert (=> d!1708309 (= (lemmaFindConcatSeparationEquivalentToExists!1264 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326) lt!2171537)))

(declare-fun bs!1232580 () Bool)

(assert (= bs!1232580 d!1708309))

(declare-fun m!6353738 () Bool)

(assert (=> bs!1232580 m!6353738))

(declare-fun m!6353740 () Bool)

(assert (=> bs!1232580 m!6353740))

(assert (=> bs!1232580 m!6353444))

(assert (=> bs!1232580 m!6353446))

(assert (=> bs!1232580 m!6353444))

(assert (=> bs!1232580 m!6353710))

(assert (=> b!5317690 d!1708309))

(declare-fun bs!1232581 () Bool)

(declare-fun d!1708311 () Bool)

(assert (= bs!1232581 (and d!1708311 b!5317690)))

(declare-fun lambda!271182 () Int)

(assert (=> bs!1232581 (= lambda!271182 lambda!271137)))

(assert (=> bs!1232581 (not (= lambda!271182 lambda!271138))))

(declare-fun bs!1232582 () Bool)

(assert (= bs!1232582 (and d!1708311 d!1708309)))

(assert (=> bs!1232582 (= lambda!271182 lambda!271176)))

(assert (=> d!1708311 true))

(assert (=> d!1708311 true))

(assert (=> d!1708311 true))

(declare-fun lambda!271183 () Int)

(assert (=> bs!1232581 (not (= lambda!271183 lambda!271137))))

(assert (=> bs!1232581 (= lambda!271183 lambda!271138)))

(assert (=> bs!1232582 (not (= lambda!271183 lambda!271176))))

(declare-fun bs!1232583 () Bool)

(assert (= bs!1232583 d!1708311))

(assert (=> bs!1232583 (not (= lambda!271183 lambda!271182))))

(assert (=> d!1708311 true))

(assert (=> d!1708311 true))

(assert (=> d!1708311 true))

(assert (=> d!1708311 (= (Exists!2156 lambda!271182) (Exists!2156 lambda!271183))))

(declare-fun lt!2171543 () Unit!153418)

(declare-fun choose!39803 (Regex!14975 Regex!14975 List!61226) Unit!153418)

(assert (=> d!1708311 (= lt!2171543 (choose!39803 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326))))

(assert (=> d!1708311 (validRegex!6711 (regOne!30462 r!7292))))

(assert (=> d!1708311 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!810 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326) lt!2171543)))

(declare-fun m!6353792 () Bool)

(assert (=> bs!1232583 m!6353792))

(declare-fun m!6353794 () Bool)

(assert (=> bs!1232583 m!6353794))

(declare-fun m!6353796 () Bool)

(assert (=> bs!1232583 m!6353796))

(assert (=> bs!1232583 m!6353710))

(assert (=> b!5317690 d!1708311))

(declare-fun d!1708327 () Bool)

(declare-fun isEmpty!33070 (Option!15086) Bool)

(assert (=> d!1708327 (= (isDefined!11789 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326)) (not (isEmpty!33070 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326))))))

(declare-fun bs!1232584 () Bool)

(assert (= bs!1232584 d!1708327))

(assert (=> bs!1232584 m!6353444))

(declare-fun m!6353798 () Bool)

(assert (=> bs!1232584 m!6353798))

(assert (=> b!5317690 d!1708327))

(declare-fun d!1708329 () Bool)

(declare-fun c!924132 () Bool)

(declare-fun isEmpty!33071 (List!61226) Bool)

(assert (=> d!1708329 (= c!924132 (isEmpty!33071 (t!374435 s!2326)))))

(declare-fun e!3304182 () Bool)

(assert (=> d!1708329 (= (matchZipper!1219 lt!2171467 (t!374435 s!2326)) e!3304182)))

(declare-fun b!5318139 () Bool)

(declare-fun nullableZipper!1341 ((InoxSet Context!8718)) Bool)

(assert (=> b!5318139 (= e!3304182 (nullableZipper!1341 lt!2171467))))

(declare-fun b!5318140 () Bool)

(declare-fun derivationStepZipper!1215 ((InoxSet Context!8718) C!30220) (InoxSet Context!8718))

(declare-fun head!11402 (List!61226) C!30220)

(declare-fun tail!10499 (List!61226) List!61226)

(assert (=> b!5318140 (= e!3304182 (matchZipper!1219 (derivationStepZipper!1215 lt!2171467 (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))))))

(assert (= (and d!1708329 c!924132) b!5318139))

(assert (= (and d!1708329 (not c!924132)) b!5318140))

(declare-fun m!6353800 () Bool)

(assert (=> d!1708329 m!6353800))

(declare-fun m!6353802 () Bool)

(assert (=> b!5318139 m!6353802))

(declare-fun m!6353804 () Bool)

(assert (=> b!5318140 m!6353804))

(assert (=> b!5318140 m!6353804))

(declare-fun m!6353806 () Bool)

(assert (=> b!5318140 m!6353806))

(declare-fun m!6353808 () Bool)

(assert (=> b!5318140 m!6353808))

(assert (=> b!5318140 m!6353806))

(assert (=> b!5318140 m!6353808))

(declare-fun m!6353810 () Bool)

(assert (=> b!5318140 m!6353810))

(assert (=> b!5317681 d!1708329))

(declare-fun d!1708331 () Bool)

(declare-fun c!924135 () Bool)

(assert (=> d!1708331 (= c!924135 (isEmpty!33071 (t!374435 s!2326)))))

(declare-fun e!3304187 () Bool)

(assert (=> d!1708331 (= (matchZipper!1219 lt!2171464 (t!374435 s!2326)) e!3304187)))

(declare-fun b!5318147 () Bool)

(assert (=> b!5318147 (= e!3304187 (nullableZipper!1341 lt!2171464))))

(declare-fun b!5318148 () Bool)

(assert (=> b!5318148 (= e!3304187 (matchZipper!1219 (derivationStepZipper!1215 lt!2171464 (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))))))

(assert (= (and d!1708331 c!924135) b!5318147))

(assert (= (and d!1708331 (not c!924135)) b!5318148))

(assert (=> d!1708331 m!6353800))

(declare-fun m!6353812 () Bool)

(assert (=> b!5318147 m!6353812))

(assert (=> b!5318148 m!6353804))

(assert (=> b!5318148 m!6353804))

(declare-fun m!6353814 () Bool)

(assert (=> b!5318148 m!6353814))

(assert (=> b!5318148 m!6353808))

(assert (=> b!5318148 m!6353814))

(assert (=> b!5318148 m!6353808))

(declare-fun m!6353816 () Bool)

(assert (=> b!5318148 m!6353816))

(assert (=> b!5317681 d!1708331))

(declare-fun d!1708333 () Bool)

(declare-fun c!924136 () Bool)

(assert (=> d!1708333 (= c!924136 (isEmpty!33071 (t!374435 s!2326)))))

(declare-fun e!3304188 () Bool)

(assert (=> d!1708333 (= (matchZipper!1219 lt!2171463 (t!374435 s!2326)) e!3304188)))

(declare-fun b!5318149 () Bool)

(assert (=> b!5318149 (= e!3304188 (nullableZipper!1341 lt!2171463))))

(declare-fun b!5318150 () Bool)

(assert (=> b!5318150 (= e!3304188 (matchZipper!1219 (derivationStepZipper!1215 lt!2171463 (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))))))

(assert (= (and d!1708333 c!924136) b!5318149))

(assert (= (and d!1708333 (not c!924136)) b!5318150))

(assert (=> d!1708333 m!6353800))

(declare-fun m!6353818 () Bool)

(assert (=> b!5318149 m!6353818))

(assert (=> b!5318150 m!6353804))

(assert (=> b!5318150 m!6353804))

(declare-fun m!6353820 () Bool)

(assert (=> b!5318150 m!6353820))

(assert (=> b!5318150 m!6353808))

(assert (=> b!5318150 m!6353820))

(assert (=> b!5318150 m!6353808))

(declare-fun m!6353822 () Bool)

(assert (=> b!5318150 m!6353822))

(assert (=> b!5317688 d!1708333))

(declare-fun d!1708335 () Bool)

(declare-fun e!3304193 () Bool)

(assert (=> d!1708335 e!3304193))

(declare-fun res!2255981 () Bool)

(assert (=> d!1708335 (=> (not res!2255981) (not e!3304193))))

(declare-fun lt!2171547 () List!61225)

(declare-fun noDuplicate!1296 (List!61225) Bool)

(assert (=> d!1708335 (= res!2255981 (noDuplicate!1296 lt!2171547))))

(declare-fun choose!39804 ((InoxSet Context!8718)) List!61225)

(assert (=> d!1708335 (= lt!2171547 (choose!39804 z!1189))))

(assert (=> d!1708335 (= (toList!8759 z!1189) lt!2171547)))

(declare-fun b!5318159 () Bool)

(declare-fun content!10890 (List!61225) (InoxSet Context!8718))

(assert (=> b!5318159 (= e!3304193 (= (content!10890 lt!2171547) z!1189))))

(assert (= (and d!1708335 res!2255981) b!5318159))

(declare-fun m!6353824 () Bool)

(assert (=> d!1708335 m!6353824))

(declare-fun m!6353826 () Bool)

(assert (=> d!1708335 m!6353826))

(declare-fun m!6353828 () Bool)

(assert (=> b!5318159 m!6353828))

(assert (=> b!5317679 d!1708335))

(declare-fun d!1708337 () Bool)

(declare-fun e!3304198 () Bool)

(assert (=> d!1708337 (= (matchZipper!1219 ((_ map or) lt!2171467 lt!2171463) (t!374435 s!2326)) e!3304198)))

(declare-fun res!2255988 () Bool)

(assert (=> d!1708337 (=> res!2255988 e!3304198)))

(assert (=> d!1708337 (= res!2255988 (matchZipper!1219 lt!2171467 (t!374435 s!2326)))))

(declare-fun lt!2171550 () Unit!153418)

(declare-fun choose!39805 ((InoxSet Context!8718) (InoxSet Context!8718) List!61226) Unit!153418)

(assert (=> d!1708337 (= lt!2171550 (choose!39805 lt!2171467 lt!2171463 (t!374435 s!2326)))))

(assert (=> d!1708337 (= (lemmaZipperConcatMatchesSameAsBothZippers!212 lt!2171467 lt!2171463 (t!374435 s!2326)) lt!2171550)))

(declare-fun b!5318166 () Bool)

(assert (=> b!5318166 (= e!3304198 (matchZipper!1219 lt!2171463 (t!374435 s!2326)))))

(assert (= (and d!1708337 (not res!2255988)) b!5318166))

(assert (=> d!1708337 m!6353432))

(assert (=> d!1708337 m!6353430))

(declare-fun m!6353830 () Bool)

(assert (=> d!1708337 m!6353830))

(assert (=> b!5318166 m!6353424))

(assert (=> b!5317680 d!1708337))

(assert (=> b!5317680 d!1708329))

(declare-fun d!1708339 () Bool)

(declare-fun c!924137 () Bool)

(assert (=> d!1708339 (= c!924137 (isEmpty!33071 (t!374435 s!2326)))))

(declare-fun e!3304199 () Bool)

(assert (=> d!1708339 (= (matchZipper!1219 ((_ map or) lt!2171467 lt!2171463) (t!374435 s!2326)) e!3304199)))

(declare-fun b!5318167 () Bool)

(assert (=> b!5318167 (= e!3304199 (nullableZipper!1341 ((_ map or) lt!2171467 lt!2171463)))))

(declare-fun b!5318168 () Bool)

(assert (=> b!5318168 (= e!3304199 (matchZipper!1219 (derivationStepZipper!1215 ((_ map or) lt!2171467 lt!2171463) (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))))))

(assert (= (and d!1708339 c!924137) b!5318167))

(assert (= (and d!1708339 (not c!924137)) b!5318168))

(assert (=> d!1708339 m!6353800))

(declare-fun m!6353832 () Bool)

(assert (=> b!5318167 m!6353832))

(assert (=> b!5318168 m!6353804))

(assert (=> b!5318168 m!6353804))

(declare-fun m!6353834 () Bool)

(assert (=> b!5318168 m!6353834))

(assert (=> b!5318168 m!6353808))

(assert (=> b!5318168 m!6353834))

(assert (=> b!5318168 m!6353808))

(declare-fun m!6353836 () Bool)

(assert (=> b!5318168 m!6353836))

(assert (=> b!5317680 d!1708339))

(declare-fun bs!1232592 () Bool)

(declare-fun b!5318241 () Bool)

(assert (= bs!1232592 (and b!5318241 d!1708311)))

(declare-fun lambda!271194 () Int)

(assert (=> bs!1232592 (not (= lambda!271194 lambda!271183))))

(declare-fun bs!1232593 () Bool)

(assert (= bs!1232593 (and b!5318241 b!5317690)))

(assert (=> bs!1232593 (not (= lambda!271194 lambda!271138))))

(assert (=> bs!1232592 (not (= lambda!271194 lambda!271182))))

(assert (=> bs!1232593 (not (= lambda!271194 lambda!271137))))

(declare-fun bs!1232594 () Bool)

(assert (= bs!1232594 (and b!5318241 d!1708309)))

(assert (=> bs!1232594 (not (= lambda!271194 lambda!271176))))

(assert (=> b!5318241 true))

(assert (=> b!5318241 true))

(declare-fun bs!1232595 () Bool)

(declare-fun b!5318240 () Bool)

(assert (= bs!1232595 (and b!5318240 d!1708311)))

(declare-fun lambda!271195 () Int)

(assert (=> bs!1232595 (= lambda!271195 lambda!271183)))

(declare-fun bs!1232596 () Bool)

(assert (= bs!1232596 (and b!5318240 b!5318241)))

(assert (=> bs!1232596 (not (= lambda!271195 lambda!271194))))

(declare-fun bs!1232597 () Bool)

(assert (= bs!1232597 (and b!5318240 b!5317690)))

(assert (=> bs!1232597 (= lambda!271195 lambda!271138)))

(assert (=> bs!1232595 (not (= lambda!271195 lambda!271182))))

(assert (=> bs!1232597 (not (= lambda!271195 lambda!271137))))

(declare-fun bs!1232598 () Bool)

(assert (= bs!1232598 (and b!5318240 d!1708309)))

(assert (=> bs!1232598 (not (= lambda!271195 lambda!271176))))

(assert (=> b!5318240 true))

(assert (=> b!5318240 true))

(declare-fun e!3304245 () Bool)

(declare-fun call!379512 () Bool)

(assert (=> b!5318240 (= e!3304245 call!379512)))

(declare-fun e!3304243 () Bool)

(assert (=> b!5318241 (= e!3304243 call!379512)))

(declare-fun b!5318242 () Bool)

(declare-fun e!3304240 () Bool)

(declare-fun e!3304239 () Bool)

(assert (=> b!5318242 (= e!3304240 e!3304239)))

(declare-fun res!2256024 () Bool)

(assert (=> b!5318242 (= res!2256024 (matchRSpec!2078 (regOne!30463 r!7292) s!2326))))

(assert (=> b!5318242 (=> res!2256024 e!3304239)))

(declare-fun bm!379507 () Bool)

(declare-fun call!379513 () Bool)

(assert (=> bm!379507 (= call!379513 (isEmpty!33071 s!2326))))

(declare-fun d!1708341 () Bool)

(declare-fun c!924157 () Bool)

(assert (=> d!1708341 (= c!924157 ((_ is EmptyExpr!14975) r!7292))))

(declare-fun e!3304241 () Bool)

(assert (=> d!1708341 (= (matchRSpec!2078 r!7292 s!2326) e!3304241)))

(declare-fun b!5318243 () Bool)

(assert (=> b!5318243 (= e!3304240 e!3304245)))

(declare-fun c!924158 () Bool)

(assert (=> b!5318243 (= c!924158 ((_ is Star!14975) r!7292))))

(declare-fun bm!379508 () Bool)

(assert (=> bm!379508 (= call!379512 (Exists!2156 (ite c!924158 lambda!271194 lambda!271195)))))

(declare-fun b!5318244 () Bool)

(declare-fun c!924159 () Bool)

(assert (=> b!5318244 (= c!924159 ((_ is ElementMatch!14975) r!7292))))

(declare-fun e!3304242 () Bool)

(declare-fun e!3304244 () Bool)

(assert (=> b!5318244 (= e!3304242 e!3304244)))

(declare-fun b!5318245 () Bool)

(assert (=> b!5318245 (= e!3304239 (matchRSpec!2078 (regTwo!30463 r!7292) s!2326))))

(declare-fun b!5318246 () Bool)

(declare-fun c!924156 () Bool)

(assert (=> b!5318246 (= c!924156 ((_ is Union!14975) r!7292))))

(assert (=> b!5318246 (= e!3304244 e!3304240)))

(declare-fun b!5318247 () Bool)

(assert (=> b!5318247 (= e!3304241 e!3304242)))

(declare-fun res!2256025 () Bool)

(assert (=> b!5318247 (= res!2256025 (not ((_ is EmptyLang!14975) r!7292)))))

(assert (=> b!5318247 (=> (not res!2256025) (not e!3304242))))

(declare-fun b!5318248 () Bool)

(assert (=> b!5318248 (= e!3304244 (= s!2326 (Cons!61102 (c!923983 r!7292) Nil!61102)))))

(declare-fun b!5318249 () Bool)

(assert (=> b!5318249 (= e!3304241 call!379513)))

(declare-fun b!5318250 () Bool)

(declare-fun res!2256026 () Bool)

(assert (=> b!5318250 (=> res!2256026 e!3304243)))

(assert (=> b!5318250 (= res!2256026 call!379513)))

(assert (=> b!5318250 (= e!3304245 e!3304243)))

(assert (= (and d!1708341 c!924157) b!5318249))

(assert (= (and d!1708341 (not c!924157)) b!5318247))

(assert (= (and b!5318247 res!2256025) b!5318244))

(assert (= (and b!5318244 c!924159) b!5318248))

(assert (= (and b!5318244 (not c!924159)) b!5318246))

(assert (= (and b!5318246 c!924156) b!5318242))

(assert (= (and b!5318246 (not c!924156)) b!5318243))

(assert (= (and b!5318242 (not res!2256024)) b!5318245))

(assert (= (and b!5318243 c!924158) b!5318250))

(assert (= (and b!5318243 (not c!924158)) b!5318240))

(assert (= (and b!5318250 (not res!2256026)) b!5318241))

(assert (= (or b!5318241 b!5318240) bm!379508))

(assert (= (or b!5318249 b!5318250) bm!379507))

(declare-fun m!6353858 () Bool)

(assert (=> b!5318242 m!6353858))

(declare-fun m!6353860 () Bool)

(assert (=> bm!379507 m!6353860))

(declare-fun m!6353862 () Bool)

(assert (=> bm!379508 m!6353862))

(declare-fun m!6353864 () Bool)

(assert (=> b!5318245 m!6353864))

(assert (=> b!5317689 d!1708341))

(declare-fun b!5318343 () Bool)

(declare-fun e!3304293 () Bool)

(declare-fun lt!2171563 () Bool)

(declare-fun call!379526 () Bool)

(assert (=> b!5318343 (= e!3304293 (= lt!2171563 call!379526))))

(declare-fun b!5318344 () Bool)

(declare-fun e!3304298 () Bool)

(assert (=> b!5318344 (= e!3304293 e!3304298)))

(declare-fun c!924181 () Bool)

(assert (=> b!5318344 (= c!924181 ((_ is EmptyLang!14975) r!7292))))

(declare-fun b!5318345 () Bool)

(assert (=> b!5318345 (= e!3304298 (not lt!2171563))))

(declare-fun bm!379521 () Bool)

(assert (=> bm!379521 (= call!379526 (isEmpty!33071 s!2326))))

(declare-fun b!5318346 () Bool)

(declare-fun e!3304295 () Bool)

(declare-fun derivativeStep!4162 (Regex!14975 C!30220) Regex!14975)

(assert (=> b!5318346 (= e!3304295 (matchR!7160 (derivativeStep!4162 r!7292 (head!11402 s!2326)) (tail!10499 s!2326)))))

(declare-fun b!5318347 () Bool)

(declare-fun res!2256060 () Bool)

(declare-fun e!3304294 () Bool)

(assert (=> b!5318347 (=> res!2256060 e!3304294)))

(assert (=> b!5318347 (= res!2256060 (not (isEmpty!33071 (tail!10499 s!2326))))))

(declare-fun b!5318348 () Bool)

(declare-fun res!2256062 () Bool)

(declare-fun e!3304296 () Bool)

(assert (=> b!5318348 (=> (not res!2256062) (not e!3304296))))

(assert (=> b!5318348 (= res!2256062 (isEmpty!33071 (tail!10499 s!2326)))))

(declare-fun b!5318349 () Bool)

(declare-fun e!3304292 () Bool)

(assert (=> b!5318349 (= e!3304292 e!3304294)))

(declare-fun res!2256064 () Bool)

(assert (=> b!5318349 (=> res!2256064 e!3304294)))

(assert (=> b!5318349 (= res!2256064 call!379526)))

(declare-fun b!5318351 () Bool)

(declare-fun res!2256061 () Bool)

(declare-fun e!3304297 () Bool)

(assert (=> b!5318351 (=> res!2256061 e!3304297)))

(assert (=> b!5318351 (= res!2256061 e!3304296)))

(declare-fun res!2256063 () Bool)

(assert (=> b!5318351 (=> (not res!2256063) (not e!3304296))))

(assert (=> b!5318351 (= res!2256063 lt!2171563)))

(declare-fun b!5318352 () Bool)

(assert (=> b!5318352 (= e!3304296 (= (head!11402 s!2326) (c!923983 r!7292)))))

(declare-fun b!5318353 () Bool)

(assert (=> b!5318353 (= e!3304297 e!3304292)))

(declare-fun res!2256059 () Bool)

(assert (=> b!5318353 (=> (not res!2256059) (not e!3304292))))

(assert (=> b!5318353 (= res!2256059 (not lt!2171563))))

(declare-fun b!5318354 () Bool)

(assert (=> b!5318354 (= e!3304295 (nullable!5144 r!7292))))

(declare-fun b!5318355 () Bool)

(declare-fun res!2256058 () Bool)

(assert (=> b!5318355 (=> (not res!2256058) (not e!3304296))))

(assert (=> b!5318355 (= res!2256058 (not call!379526))))

(declare-fun b!5318356 () Bool)

(assert (=> b!5318356 (= e!3304294 (not (= (head!11402 s!2326) (c!923983 r!7292))))))

(declare-fun d!1708347 () Bool)

(assert (=> d!1708347 e!3304293))

(declare-fun c!924183 () Bool)

(assert (=> d!1708347 (= c!924183 ((_ is EmptyExpr!14975) r!7292))))

(assert (=> d!1708347 (= lt!2171563 e!3304295)))

(declare-fun c!924182 () Bool)

(assert (=> d!1708347 (= c!924182 (isEmpty!33071 s!2326))))

(assert (=> d!1708347 (validRegex!6711 r!7292)))

(assert (=> d!1708347 (= (matchR!7160 r!7292 s!2326) lt!2171563)))

(declare-fun b!5318350 () Bool)

(declare-fun res!2256065 () Bool)

(assert (=> b!5318350 (=> res!2256065 e!3304297)))

(assert (=> b!5318350 (= res!2256065 (not ((_ is ElementMatch!14975) r!7292)))))

(assert (=> b!5318350 (= e!3304298 e!3304297)))

(assert (= (and d!1708347 c!924182) b!5318354))

(assert (= (and d!1708347 (not c!924182)) b!5318346))

(assert (= (and d!1708347 c!924183) b!5318343))

(assert (= (and d!1708347 (not c!924183)) b!5318344))

(assert (= (and b!5318344 c!924181) b!5318345))

(assert (= (and b!5318344 (not c!924181)) b!5318350))

(assert (= (and b!5318350 (not res!2256065)) b!5318351))

(assert (= (and b!5318351 res!2256063) b!5318355))

(assert (= (and b!5318355 res!2256058) b!5318348))

(assert (= (and b!5318348 res!2256062) b!5318352))

(assert (= (and b!5318351 (not res!2256061)) b!5318353))

(assert (= (and b!5318353 res!2256059) b!5318349))

(assert (= (and b!5318349 (not res!2256064)) b!5318347))

(assert (= (and b!5318347 (not res!2256060)) b!5318356))

(assert (= (or b!5318343 b!5318349 b!5318355) bm!379521))

(declare-fun m!6353918 () Bool)

(assert (=> b!5318354 m!6353918))

(declare-fun m!6353920 () Bool)

(assert (=> b!5318352 m!6353920))

(declare-fun m!6353922 () Bool)

(assert (=> b!5318347 m!6353922))

(assert (=> b!5318347 m!6353922))

(declare-fun m!6353924 () Bool)

(assert (=> b!5318347 m!6353924))

(assert (=> b!5318356 m!6353920))

(assert (=> bm!379521 m!6353860))

(assert (=> b!5318346 m!6353920))

(assert (=> b!5318346 m!6353920))

(declare-fun m!6353926 () Bool)

(assert (=> b!5318346 m!6353926))

(assert (=> b!5318346 m!6353922))

(assert (=> b!5318346 m!6353926))

(assert (=> b!5318346 m!6353922))

(declare-fun m!6353928 () Bool)

(assert (=> b!5318346 m!6353928))

(assert (=> d!1708347 m!6353860))

(assert (=> d!1708347 m!6353462))

(assert (=> b!5318348 m!6353922))

(assert (=> b!5318348 m!6353922))

(assert (=> b!5318348 m!6353924))

(assert (=> b!5317689 d!1708347))

(declare-fun d!1708367 () Bool)

(assert (=> d!1708367 (= (matchR!7160 r!7292 s!2326) (matchRSpec!2078 r!7292 s!2326))))

(declare-fun lt!2171566 () Unit!153418)

(declare-fun choose!39807 (Regex!14975 List!61226) Unit!153418)

(assert (=> d!1708367 (= lt!2171566 (choose!39807 r!7292 s!2326))))

(assert (=> d!1708367 (validRegex!6711 r!7292)))

(assert (=> d!1708367 (= (mainMatchTheorem!2078 r!7292 s!2326) lt!2171566)))

(declare-fun bs!1232605 () Bool)

(assert (= bs!1232605 d!1708367))

(assert (=> bs!1232605 m!6353436))

(assert (=> bs!1232605 m!6353434))

(declare-fun m!6353932 () Bool)

(assert (=> bs!1232605 m!6353932))

(assert (=> bs!1232605 m!6353462))

(assert (=> b!5317689 d!1708367))

(declare-fun d!1708373 () Bool)

(assert (=> d!1708373 (= (nullable!5144 (regOne!30462 (regOne!30462 r!7292))) (nullableFct!1494 (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun bs!1232606 () Bool)

(assert (= bs!1232606 d!1708373))

(declare-fun m!6353934 () Bool)

(assert (=> bs!1232606 m!6353934))

(assert (=> b!5317685 d!1708373))

(declare-fun d!1708375 () Bool)

(assert (=> d!1708375 (= (isEmpty!33067 (t!374434 zl!343)) ((_ is Nil!61101) (t!374434 zl!343)))))

(assert (=> b!5317678 d!1708375))

(declare-fun d!1708377 () Bool)

(assert (=> d!1708377 (= (isEmpty!33068 (t!374433 (exprs!4859 (h!67549 zl!343)))) ((_ is Nil!61100) (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> b!5317686 d!1708377))

(declare-fun b!5318396 () Bool)

(declare-fun e!3304318 () Bool)

(declare-fun tp!1481044 () Bool)

(declare-fun tp!1481045 () Bool)

(assert (=> b!5318396 (= e!3304318 (and tp!1481044 tp!1481045))))

(assert (=> b!5317669 (= tp!1480978 e!3304318)))

(assert (= (and b!5317669 ((_ is Cons!61100) (exprs!4859 (h!67549 zl!343)))) b!5318396))

(declare-fun b!5318401 () Bool)

(declare-fun e!3304321 () Bool)

(declare-fun tp!1481048 () Bool)

(assert (=> b!5318401 (= e!3304321 (and tp_is_empty!39203 tp!1481048))))

(assert (=> b!5317674 (= tp!1480981 e!3304321)))

(assert (= (and b!5317674 ((_ is Cons!61102) (t!374435 s!2326))) b!5318401))

(declare-fun b!5318409 () Bool)

(declare-fun e!3304327 () Bool)

(declare-fun tp!1481053 () Bool)

(assert (=> b!5318409 (= e!3304327 tp!1481053)))

(declare-fun tp!1481054 () Bool)

(declare-fun e!3304326 () Bool)

(declare-fun b!5318408 () Bool)

(assert (=> b!5318408 (= e!3304326 (and (inv!80684 (h!67549 (t!374434 zl!343))) e!3304327 tp!1481054))))

(assert (=> b!5317693 (= tp!1480976 e!3304326)))

(assert (= b!5318408 b!5318409))

(assert (= (and b!5317693 ((_ is Cons!61101) (t!374434 zl!343))) b!5318408))

(declare-fun m!6353936 () Bool)

(assert (=> b!5318408 m!6353936))

(declare-fun b!5318422 () Bool)

(declare-fun e!3304330 () Bool)

(declare-fun tp!1481067 () Bool)

(assert (=> b!5318422 (= e!3304330 tp!1481067)))

(assert (=> b!5317670 (= tp!1480975 e!3304330)))

(declare-fun b!5318420 () Bool)

(assert (=> b!5318420 (= e!3304330 tp_is_empty!39203)))

(declare-fun b!5318423 () Bool)

(declare-fun tp!1481065 () Bool)

(declare-fun tp!1481069 () Bool)

(assert (=> b!5318423 (= e!3304330 (and tp!1481065 tp!1481069))))

(declare-fun b!5318421 () Bool)

(declare-fun tp!1481068 () Bool)

(declare-fun tp!1481066 () Bool)

(assert (=> b!5318421 (= e!3304330 (and tp!1481068 tp!1481066))))

(assert (= (and b!5317670 ((_ is ElementMatch!14975) (regOne!30462 r!7292))) b!5318420))

(assert (= (and b!5317670 ((_ is Concat!23820) (regOne!30462 r!7292))) b!5318421))

(assert (= (and b!5317670 ((_ is Star!14975) (regOne!30462 r!7292))) b!5318422))

(assert (= (and b!5317670 ((_ is Union!14975) (regOne!30462 r!7292))) b!5318423))

(declare-fun b!5318426 () Bool)

(declare-fun e!3304331 () Bool)

(declare-fun tp!1481072 () Bool)

(assert (=> b!5318426 (= e!3304331 tp!1481072)))

(assert (=> b!5317670 (= tp!1480972 e!3304331)))

(declare-fun b!5318424 () Bool)

(assert (=> b!5318424 (= e!3304331 tp_is_empty!39203)))

(declare-fun b!5318427 () Bool)

(declare-fun tp!1481070 () Bool)

(declare-fun tp!1481074 () Bool)

(assert (=> b!5318427 (= e!3304331 (and tp!1481070 tp!1481074))))

(declare-fun b!5318425 () Bool)

(declare-fun tp!1481073 () Bool)

(declare-fun tp!1481071 () Bool)

(assert (=> b!5318425 (= e!3304331 (and tp!1481073 tp!1481071))))

(assert (= (and b!5317670 ((_ is ElementMatch!14975) (regTwo!30462 r!7292))) b!5318424))

(assert (= (and b!5317670 ((_ is Concat!23820) (regTwo!30462 r!7292))) b!5318425))

(assert (= (and b!5317670 ((_ is Star!14975) (regTwo!30462 r!7292))) b!5318426))

(assert (= (and b!5317670 ((_ is Union!14975) (regTwo!30462 r!7292))) b!5318427))

(declare-fun b!5318430 () Bool)

(declare-fun e!3304332 () Bool)

(declare-fun tp!1481077 () Bool)

(assert (=> b!5318430 (= e!3304332 tp!1481077)))

(assert (=> b!5317694 (= tp!1480974 e!3304332)))

(declare-fun b!5318428 () Bool)

(assert (=> b!5318428 (= e!3304332 tp_is_empty!39203)))

(declare-fun b!5318431 () Bool)

(declare-fun tp!1481075 () Bool)

(declare-fun tp!1481079 () Bool)

(assert (=> b!5318431 (= e!3304332 (and tp!1481075 tp!1481079))))

(declare-fun b!5318429 () Bool)

(declare-fun tp!1481078 () Bool)

(declare-fun tp!1481076 () Bool)

(assert (=> b!5318429 (= e!3304332 (and tp!1481078 tp!1481076))))

(assert (= (and b!5317694 ((_ is ElementMatch!14975) (reg!15304 r!7292))) b!5318428))

(assert (= (and b!5317694 ((_ is Concat!23820) (reg!15304 r!7292))) b!5318429))

(assert (= (and b!5317694 ((_ is Star!14975) (reg!15304 r!7292))) b!5318430))

(assert (= (and b!5317694 ((_ is Union!14975) (reg!15304 r!7292))) b!5318431))

(declare-fun condSetEmpty!34227 () Bool)

(assert (=> setNonEmpty!34221 (= condSetEmpty!34227 (= setRest!34221 ((as const (Array Context!8718 Bool)) false)))))

(declare-fun setRes!34227 () Bool)

(assert (=> setNonEmpty!34221 (= tp!1480980 setRes!34227)))

(declare-fun setIsEmpty!34227 () Bool)

(assert (=> setIsEmpty!34227 setRes!34227))

(declare-fun setElem!34227 () Context!8718)

(declare-fun setNonEmpty!34227 () Bool)

(declare-fun e!3304335 () Bool)

(declare-fun tp!1481085 () Bool)

(assert (=> setNonEmpty!34227 (= setRes!34227 (and tp!1481085 (inv!80684 setElem!34227) e!3304335))))

(declare-fun setRest!34227 () (InoxSet Context!8718))

(assert (=> setNonEmpty!34227 (= setRest!34221 ((_ map or) (store ((as const (Array Context!8718 Bool)) false) setElem!34227 true) setRest!34227))))

(declare-fun b!5318436 () Bool)

(declare-fun tp!1481084 () Bool)

(assert (=> b!5318436 (= e!3304335 tp!1481084)))

(assert (= (and setNonEmpty!34221 condSetEmpty!34227) setIsEmpty!34227))

(assert (= (and setNonEmpty!34221 (not condSetEmpty!34227)) setNonEmpty!34227))

(assert (= setNonEmpty!34227 b!5318436))

(declare-fun m!6353938 () Bool)

(assert (=> setNonEmpty!34227 m!6353938))

(declare-fun b!5318437 () Bool)

(declare-fun e!3304336 () Bool)

(declare-fun tp!1481086 () Bool)

(declare-fun tp!1481087 () Bool)

(assert (=> b!5318437 (= e!3304336 (and tp!1481086 tp!1481087))))

(assert (=> b!5317676 (= tp!1480973 e!3304336)))

(assert (= (and b!5317676 ((_ is Cons!61100) (exprs!4859 setElem!34221))) b!5318437))

(declare-fun b!5318440 () Bool)

(declare-fun e!3304337 () Bool)

(declare-fun tp!1481090 () Bool)

(assert (=> b!5318440 (= e!3304337 tp!1481090)))

(assert (=> b!5317687 (= tp!1480977 e!3304337)))

(declare-fun b!5318438 () Bool)

(assert (=> b!5318438 (= e!3304337 tp_is_empty!39203)))

(declare-fun b!5318441 () Bool)

(declare-fun tp!1481088 () Bool)

(declare-fun tp!1481092 () Bool)

(assert (=> b!5318441 (= e!3304337 (and tp!1481088 tp!1481092))))

(declare-fun b!5318439 () Bool)

(declare-fun tp!1481091 () Bool)

(declare-fun tp!1481089 () Bool)

(assert (=> b!5318439 (= e!3304337 (and tp!1481091 tp!1481089))))

(assert (= (and b!5317687 ((_ is ElementMatch!14975) (regOne!30463 r!7292))) b!5318438))

(assert (= (and b!5317687 ((_ is Concat!23820) (regOne!30463 r!7292))) b!5318439))

(assert (= (and b!5317687 ((_ is Star!14975) (regOne!30463 r!7292))) b!5318440))

(assert (= (and b!5317687 ((_ is Union!14975) (regOne!30463 r!7292))) b!5318441))

(declare-fun b!5318444 () Bool)

(declare-fun e!3304338 () Bool)

(declare-fun tp!1481095 () Bool)

(assert (=> b!5318444 (= e!3304338 tp!1481095)))

(assert (=> b!5317687 (= tp!1480979 e!3304338)))

(declare-fun b!5318442 () Bool)

(assert (=> b!5318442 (= e!3304338 tp_is_empty!39203)))

(declare-fun b!5318445 () Bool)

(declare-fun tp!1481093 () Bool)

(declare-fun tp!1481097 () Bool)

(assert (=> b!5318445 (= e!3304338 (and tp!1481093 tp!1481097))))

(declare-fun b!5318443 () Bool)

(declare-fun tp!1481096 () Bool)

(declare-fun tp!1481094 () Bool)

(assert (=> b!5318443 (= e!3304338 (and tp!1481096 tp!1481094))))

(assert (= (and b!5317687 ((_ is ElementMatch!14975) (regTwo!30463 r!7292))) b!5318442))

(assert (= (and b!5317687 ((_ is Concat!23820) (regTwo!30463 r!7292))) b!5318443))

(assert (= (and b!5317687 ((_ is Star!14975) (regTwo!30463 r!7292))) b!5318444))

(assert (= (and b!5317687 ((_ is Union!14975) (regTwo!30463 r!7292))) b!5318445))

(declare-fun b_lambda!204577 () Bool)

(assert (= b_lambda!204567 (or b!5317683 b_lambda!204577)))

(declare-fun bs!1232607 () Bool)

(declare-fun d!1708379 () Bool)

(assert (= bs!1232607 (and d!1708379 b!5317683)))

(assert (=> bs!1232607 (= (dynLambda!24148 lambda!271139 lt!2171476) (derivationStepZipperUp!347 lt!2171476 (h!67550 s!2326)))))

(assert (=> bs!1232607 m!6353482))

(assert (=> d!1708273 d!1708379))

(declare-fun b_lambda!204579 () Bool)

(assert (= b_lambda!204565 (or b!5317683 b_lambda!204579)))

(declare-fun bs!1232608 () Bool)

(declare-fun d!1708381 () Bool)

(assert (= bs!1232608 (and d!1708381 b!5317683)))

(assert (=> bs!1232608 (= (dynLambda!24148 lambda!271139 (h!67549 zl!343)) (derivationStepZipperUp!347 (h!67549 zl!343) (h!67550 s!2326)))))

(assert (=> bs!1232608 m!6353470))

(assert (=> d!1708247 d!1708381))

(check-sat (not b!5317893) tp_is_empty!39203 (not b!5318429) (not bm!379478) (not b!5318441) (not d!1708309) (not d!1708245) (not b!5317950) (not b!5318423) (not bm!379473) (not b!5318439) (not b!5318050) (not b!5317957) (not d!1708335) (not b!5317877) (not b!5318408) (not bs!1232608) (not bm!379460) (not setNonEmpty!34227) (not d!1708243) (not d!1708261) (not bm!379474) (not b!5317842) (not b!5317953) (not b!5317809) (not b!5317958) (not d!1708333) (not d!1708311) (not b!5317899) (not b!5317951) (not bm!379434) (not bm!379472) (not b!5318245) (not b!5317750) (not b!5318140) (not b!5317806) (not b!5318049) (not b!5318048) (not d!1708331) (not d!1708373) (not b!5318352) (not bm!379454) (not b!5318149) (not b!5318159) (not b!5318401) (not b!5317753) (not d!1708285) (not b!5318443) (not b!5317871) (not b_lambda!204579) (not b!5318425) (not b!5318139) (not b!5317880) (not b!5317874) (not b!5317785) (not d!1708287) (not b!5318437) (not b!5318168) (not b!5317737) (not b!5318166) (not d!1708265) (not b!5317904) (not d!1708329) (not b!5318054) (not bm!379507) (not bm!379479) (not b!5318242) (not d!1708251) (not b!5318356) (not b!5318426) (not bm!379508) (not d!1708347) (not b!5318167) (not b!5318354) (not d!1708275) (not b!5317949) (not b_lambda!204577) (not b!5318347) (not b!5318421) (not bm!379521) (not bm!379470) (not b!5318046) (not d!1708337) (not b!5318346) (not bm!379459) (not d!1708305) (not b!5318051) (not d!1708339) (not d!1708289) (not b!5318422) (not b!5318444) (not bm!379441) (not b!5318430) (not b!5318396) (not bm!379458) (not b!5317955) (not bm!379467) (not d!1708269) (not b!5317878) (not b!5317876) (not b!5317734) (not b!5318427) (not b!5317907) (not b!5318409) (not b!5318436) (not b!5318431) (not b!5317879) (not d!1708301) (not b!5318348) (not b!5317977) (not d!1708367) (not bs!1232607) (not b!5318148) (not b!5318445) (not b!5318147) (not d!1708273) (not bm!379469) (not b!5318150) (not d!1708327) (not d!1708247) (not b!5318440))
(check-sat)
(get-model)

(declare-fun d!1708383 () Bool)

(assert (=> d!1708383 true))

(declare-fun setRes!34230 () Bool)

(assert (=> d!1708383 setRes!34230))

(declare-fun condSetEmpty!34230 () Bool)

(declare-fun res!2256068 () (InoxSet Context!8718))

(assert (=> d!1708383 (= condSetEmpty!34230 (= res!2256068 ((as const (Array Context!8718 Bool)) false)))))

(assert (=> d!1708383 (= (choose!39794 lt!2171474 lambda!271139) res!2256068)))

(declare-fun setIsEmpty!34230 () Bool)

(assert (=> setIsEmpty!34230 setRes!34230))

(declare-fun setElem!34230 () Context!8718)

(declare-fun tp!1481102 () Bool)

(declare-fun setNonEmpty!34230 () Bool)

(declare-fun e!3304341 () Bool)

(assert (=> setNonEmpty!34230 (= setRes!34230 (and tp!1481102 (inv!80684 setElem!34230) e!3304341))))

(declare-fun setRest!34230 () (InoxSet Context!8718))

(assert (=> setNonEmpty!34230 (= res!2256068 ((_ map or) (store ((as const (Array Context!8718 Bool)) false) setElem!34230 true) setRest!34230))))

(declare-fun b!5318448 () Bool)

(declare-fun tp!1481103 () Bool)

(assert (=> b!5318448 (= e!3304341 tp!1481103)))

(assert (= (and d!1708383 condSetEmpty!34230) setIsEmpty!34230))

(assert (= (and d!1708383 (not condSetEmpty!34230)) setNonEmpty!34230))

(assert (= setNonEmpty!34230 b!5318448))

(declare-fun m!6353940 () Bool)

(assert (=> setNonEmpty!34230 m!6353940))

(assert (=> d!1708269 d!1708383))

(declare-fun call!379528 () Bool)

(declare-fun c!924185 () Bool)

(declare-fun c!924184 () Bool)

(declare-fun bm!379522 () Bool)

(assert (=> bm!379522 (= call!379528 (validRegex!6711 (ite c!924184 (reg!15304 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))) (ite c!924185 (regOne!30463 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))) (regOne!30462 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))))))

(declare-fun b!5318449 () Bool)

(declare-fun e!3304342 () Bool)

(declare-fun call!379527 () Bool)

(assert (=> b!5318449 (= e!3304342 call!379527)))

(declare-fun bm!379523 () Bool)

(declare-fun call!379529 () Bool)

(assert (=> bm!379523 (= call!379529 call!379528)))

(declare-fun b!5318451 () Bool)

(declare-fun res!2256073 () Bool)

(assert (=> b!5318451 (=> (not res!2256073) (not e!3304342))))

(assert (=> b!5318451 (= res!2256073 call!379529)))

(declare-fun e!3304344 () Bool)

(assert (=> b!5318451 (= e!3304344 e!3304342)))

(declare-fun b!5318452 () Bool)

(declare-fun res!2256071 () Bool)

(declare-fun e!3304348 () Bool)

(assert (=> b!5318452 (=> res!2256071 e!3304348)))

(assert (=> b!5318452 (= res!2256071 (not ((_ is Concat!23820) (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))))

(assert (=> b!5318452 (= e!3304344 e!3304348)))

(declare-fun b!5318453 () Bool)

(declare-fun e!3304346 () Bool)

(declare-fun e!3304343 () Bool)

(assert (=> b!5318453 (= e!3304346 e!3304343)))

(declare-fun res!2256069 () Bool)

(assert (=> b!5318453 (= res!2256069 (not (nullable!5144 (reg!15304 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))))

(assert (=> b!5318453 (=> (not res!2256069) (not e!3304343))))

(declare-fun b!5318454 () Bool)

(declare-fun e!3304347 () Bool)

(assert (=> b!5318454 (= e!3304347 e!3304346)))

(assert (=> b!5318454 (= c!924184 ((_ is Star!14975) (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(declare-fun d!1708385 () Bool)

(declare-fun res!2256072 () Bool)

(assert (=> d!1708385 (=> res!2256072 e!3304347)))

(assert (=> d!1708385 (= res!2256072 ((_ is ElementMatch!14975) (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(assert (=> d!1708385 (= (validRegex!6711 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))) e!3304347)))

(declare-fun b!5318450 () Bool)

(declare-fun e!3304345 () Bool)

(assert (=> b!5318450 (= e!3304345 call!379527)))

(declare-fun b!5318455 () Bool)

(assert (=> b!5318455 (= e!3304348 e!3304345)))

(declare-fun res!2256070 () Bool)

(assert (=> b!5318455 (=> (not res!2256070) (not e!3304345))))

(assert (=> b!5318455 (= res!2256070 call!379529)))

(declare-fun b!5318456 () Bool)

(assert (=> b!5318456 (= e!3304343 call!379528)))

(declare-fun bm!379524 () Bool)

(assert (=> bm!379524 (= call!379527 (validRegex!6711 (ite c!924185 (regTwo!30463 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))) (regTwo!30462 (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))))

(declare-fun b!5318457 () Bool)

(assert (=> b!5318457 (= e!3304346 e!3304344)))

(assert (=> b!5318457 (= c!924185 ((_ is Union!14975) (ite c!924051 (reg!15304 (regOne!30462 (regOne!30462 r!7292))) (ite c!924052 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(assert (= (and d!1708385 (not res!2256072)) b!5318454))

(assert (= (and b!5318454 c!924184) b!5318453))

(assert (= (and b!5318454 (not c!924184)) b!5318457))

(assert (= (and b!5318453 res!2256069) b!5318456))

(assert (= (and b!5318457 c!924185) b!5318451))

(assert (= (and b!5318457 (not c!924185)) b!5318452))

(assert (= (and b!5318451 res!2256073) b!5318449))

(assert (= (and b!5318452 (not res!2256071)) b!5318455))

(assert (= (and b!5318455 res!2256070) b!5318450))

(assert (= (or b!5318449 b!5318450) bm!379524))

(assert (= (or b!5318451 b!5318455) bm!379523))

(assert (= (or b!5318456 bm!379523) bm!379522))

(declare-fun m!6353942 () Bool)

(assert (=> bm!379522 m!6353942))

(declare-fun m!6353944 () Bool)

(assert (=> b!5318453 m!6353944))

(declare-fun m!6353946 () Bool)

(assert (=> bm!379524 m!6353946))

(assert (=> bm!379470 d!1708385))

(declare-fun d!1708387 () Bool)

(declare-fun c!924186 () Bool)

(assert (=> d!1708387 (= c!924186 (isEmpty!33071 (tail!10499 (t!374435 s!2326))))))

(declare-fun e!3304349 () Bool)

(assert (=> d!1708387 (= (matchZipper!1219 (derivationStepZipper!1215 lt!2171464 (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))) e!3304349)))

(declare-fun b!5318458 () Bool)

(assert (=> b!5318458 (= e!3304349 (nullableZipper!1341 (derivationStepZipper!1215 lt!2171464 (head!11402 (t!374435 s!2326)))))))

(declare-fun b!5318459 () Bool)

(assert (=> b!5318459 (= e!3304349 (matchZipper!1219 (derivationStepZipper!1215 (derivationStepZipper!1215 lt!2171464 (head!11402 (t!374435 s!2326))) (head!11402 (tail!10499 (t!374435 s!2326)))) (tail!10499 (tail!10499 (t!374435 s!2326)))))))

(assert (= (and d!1708387 c!924186) b!5318458))

(assert (= (and d!1708387 (not c!924186)) b!5318459))

(assert (=> d!1708387 m!6353808))

(declare-fun m!6353948 () Bool)

(assert (=> d!1708387 m!6353948))

(assert (=> b!5318458 m!6353814))

(declare-fun m!6353950 () Bool)

(assert (=> b!5318458 m!6353950))

(assert (=> b!5318459 m!6353808))

(declare-fun m!6353952 () Bool)

(assert (=> b!5318459 m!6353952))

(assert (=> b!5318459 m!6353814))

(assert (=> b!5318459 m!6353952))

(declare-fun m!6353954 () Bool)

(assert (=> b!5318459 m!6353954))

(assert (=> b!5318459 m!6353808))

(declare-fun m!6353956 () Bool)

(assert (=> b!5318459 m!6353956))

(assert (=> b!5318459 m!6353954))

(assert (=> b!5318459 m!6353956))

(declare-fun m!6353958 () Bool)

(assert (=> b!5318459 m!6353958))

(assert (=> b!5318148 d!1708387))

(declare-fun bs!1232609 () Bool)

(declare-fun d!1708389 () Bool)

(assert (= bs!1232609 (and d!1708389 b!5317683)))

(declare-fun lambda!271198 () Int)

(assert (=> bs!1232609 (= (= (head!11402 (t!374435 s!2326)) (h!67550 s!2326)) (= lambda!271198 lambda!271139))))

(assert (=> d!1708389 true))

(assert (=> d!1708389 (= (derivationStepZipper!1215 lt!2171464 (head!11402 (t!374435 s!2326))) (flatMap!702 lt!2171464 lambda!271198))))

(declare-fun bs!1232610 () Bool)

(assert (= bs!1232610 d!1708389))

(declare-fun m!6353960 () Bool)

(assert (=> bs!1232610 m!6353960))

(assert (=> b!5318148 d!1708389))

(declare-fun d!1708391 () Bool)

(assert (=> d!1708391 (= (head!11402 (t!374435 s!2326)) (h!67550 (t!374435 s!2326)))))

(assert (=> b!5318148 d!1708391))

(declare-fun d!1708393 () Bool)

(assert (=> d!1708393 (= (tail!10499 (t!374435 s!2326)) (t!374435 (t!374435 s!2326)))))

(assert (=> b!5318148 d!1708393))

(declare-fun bs!1232611 () Bool)

(declare-fun b!5318463 () Bool)

(assert (= bs!1232611 (and b!5318463 b!5318240)))

(declare-fun lambda!271199 () Int)

(assert (=> bs!1232611 (not (= lambda!271199 lambda!271195))))

(declare-fun bs!1232612 () Bool)

(assert (= bs!1232612 (and b!5318463 d!1708311)))

(assert (=> bs!1232612 (not (= lambda!271199 lambda!271183))))

(declare-fun bs!1232613 () Bool)

(assert (= bs!1232613 (and b!5318463 b!5318241)))

(assert (=> bs!1232613 (= (and (= (reg!15304 (regOne!30463 r!7292)) (reg!15304 r!7292)) (= (regOne!30463 r!7292) r!7292)) (= lambda!271199 lambda!271194))))

(declare-fun bs!1232614 () Bool)

(assert (= bs!1232614 (and b!5318463 b!5317690)))

(assert (=> bs!1232614 (not (= lambda!271199 lambda!271138))))

(assert (=> bs!1232612 (not (= lambda!271199 lambda!271182))))

(assert (=> bs!1232614 (not (= lambda!271199 lambda!271137))))

(declare-fun bs!1232615 () Bool)

(assert (= bs!1232615 (and b!5318463 d!1708309)))

(assert (=> bs!1232615 (not (= lambda!271199 lambda!271176))))

(assert (=> b!5318463 true))

(assert (=> b!5318463 true))

(declare-fun bs!1232616 () Bool)

(declare-fun b!5318462 () Bool)

(assert (= bs!1232616 (and b!5318462 b!5318240)))

(declare-fun lambda!271200 () Int)

(assert (=> bs!1232616 (= (and (= (regOne!30462 (regOne!30463 r!7292)) (regOne!30462 r!7292)) (= (regTwo!30462 (regOne!30463 r!7292)) (regTwo!30462 r!7292))) (= lambda!271200 lambda!271195))))

(declare-fun bs!1232617 () Bool)

(assert (= bs!1232617 (and b!5318462 b!5318463)))

(assert (=> bs!1232617 (not (= lambda!271200 lambda!271199))))

(declare-fun bs!1232618 () Bool)

(assert (= bs!1232618 (and b!5318462 d!1708311)))

(assert (=> bs!1232618 (= (and (= (regOne!30462 (regOne!30463 r!7292)) (regOne!30462 r!7292)) (= (regTwo!30462 (regOne!30463 r!7292)) (regTwo!30462 r!7292))) (= lambda!271200 lambda!271183))))

(declare-fun bs!1232619 () Bool)

(assert (= bs!1232619 (and b!5318462 b!5318241)))

(assert (=> bs!1232619 (not (= lambda!271200 lambda!271194))))

(declare-fun bs!1232620 () Bool)

(assert (= bs!1232620 (and b!5318462 b!5317690)))

(assert (=> bs!1232620 (= (and (= (regOne!30462 (regOne!30463 r!7292)) (regOne!30462 r!7292)) (= (regTwo!30462 (regOne!30463 r!7292)) (regTwo!30462 r!7292))) (= lambda!271200 lambda!271138))))

(assert (=> bs!1232618 (not (= lambda!271200 lambda!271182))))

(assert (=> bs!1232620 (not (= lambda!271200 lambda!271137))))

(declare-fun bs!1232621 () Bool)

(assert (= bs!1232621 (and b!5318462 d!1708309)))

(assert (=> bs!1232621 (not (= lambda!271200 lambda!271176))))

(assert (=> b!5318462 true))

(assert (=> b!5318462 true))

(declare-fun e!3304356 () Bool)

(declare-fun call!379530 () Bool)

(assert (=> b!5318462 (= e!3304356 call!379530)))

(declare-fun e!3304354 () Bool)

(assert (=> b!5318463 (= e!3304354 call!379530)))

(declare-fun b!5318464 () Bool)

(declare-fun e!3304351 () Bool)

(declare-fun e!3304350 () Bool)

(assert (=> b!5318464 (= e!3304351 e!3304350)))

(declare-fun res!2256074 () Bool)

(assert (=> b!5318464 (= res!2256074 (matchRSpec!2078 (regOne!30463 (regOne!30463 r!7292)) s!2326))))

(assert (=> b!5318464 (=> res!2256074 e!3304350)))

(declare-fun bm!379525 () Bool)

(declare-fun call!379531 () Bool)

(assert (=> bm!379525 (= call!379531 (isEmpty!33071 s!2326))))

(declare-fun d!1708395 () Bool)

(declare-fun c!924190 () Bool)

(assert (=> d!1708395 (= c!924190 ((_ is EmptyExpr!14975) (regOne!30463 r!7292)))))

(declare-fun e!3304352 () Bool)

(assert (=> d!1708395 (= (matchRSpec!2078 (regOne!30463 r!7292) s!2326) e!3304352)))

(declare-fun b!5318465 () Bool)

(assert (=> b!5318465 (= e!3304351 e!3304356)))

(declare-fun c!924191 () Bool)

(assert (=> b!5318465 (= c!924191 ((_ is Star!14975) (regOne!30463 r!7292)))))

(declare-fun bm!379526 () Bool)

(assert (=> bm!379526 (= call!379530 (Exists!2156 (ite c!924191 lambda!271199 lambda!271200)))))

(declare-fun b!5318466 () Bool)

(declare-fun c!924192 () Bool)

(assert (=> b!5318466 (= c!924192 ((_ is ElementMatch!14975) (regOne!30463 r!7292)))))

(declare-fun e!3304353 () Bool)

(declare-fun e!3304355 () Bool)

(assert (=> b!5318466 (= e!3304353 e!3304355)))

(declare-fun b!5318467 () Bool)

(assert (=> b!5318467 (= e!3304350 (matchRSpec!2078 (regTwo!30463 (regOne!30463 r!7292)) s!2326))))

(declare-fun b!5318468 () Bool)

(declare-fun c!924189 () Bool)

(assert (=> b!5318468 (= c!924189 ((_ is Union!14975) (regOne!30463 r!7292)))))

(assert (=> b!5318468 (= e!3304355 e!3304351)))

(declare-fun b!5318469 () Bool)

(assert (=> b!5318469 (= e!3304352 e!3304353)))

(declare-fun res!2256075 () Bool)

(assert (=> b!5318469 (= res!2256075 (not ((_ is EmptyLang!14975) (regOne!30463 r!7292))))))

(assert (=> b!5318469 (=> (not res!2256075) (not e!3304353))))

(declare-fun b!5318470 () Bool)

(assert (=> b!5318470 (= e!3304355 (= s!2326 (Cons!61102 (c!923983 (regOne!30463 r!7292)) Nil!61102)))))

(declare-fun b!5318471 () Bool)

(assert (=> b!5318471 (= e!3304352 call!379531)))

(declare-fun b!5318472 () Bool)

(declare-fun res!2256076 () Bool)

(assert (=> b!5318472 (=> res!2256076 e!3304354)))

(assert (=> b!5318472 (= res!2256076 call!379531)))

(assert (=> b!5318472 (= e!3304356 e!3304354)))

(assert (= (and d!1708395 c!924190) b!5318471))

(assert (= (and d!1708395 (not c!924190)) b!5318469))

(assert (= (and b!5318469 res!2256075) b!5318466))

(assert (= (and b!5318466 c!924192) b!5318470))

(assert (= (and b!5318466 (not c!924192)) b!5318468))

(assert (= (and b!5318468 c!924189) b!5318464))

(assert (= (and b!5318468 (not c!924189)) b!5318465))

(assert (= (and b!5318464 (not res!2256074)) b!5318467))

(assert (= (and b!5318465 c!924191) b!5318472))

(assert (= (and b!5318465 (not c!924191)) b!5318462))

(assert (= (and b!5318472 (not res!2256076)) b!5318463))

(assert (= (or b!5318463 b!5318462) bm!379526))

(assert (= (or b!5318471 b!5318472) bm!379525))

(declare-fun m!6353962 () Bool)

(assert (=> b!5318464 m!6353962))

(assert (=> bm!379525 m!6353860))

(declare-fun m!6353964 () Bool)

(assert (=> bm!379526 m!6353964))

(declare-fun m!6353966 () Bool)

(assert (=> b!5318467 m!6353966))

(assert (=> b!5318242 d!1708395))

(declare-fun d!1708397 () Bool)

(assert (=> d!1708397 (= (isDefined!11789 lt!2171529) (not (isEmpty!33070 lt!2171529)))))

(declare-fun bs!1232622 () Bool)

(assert (= bs!1232622 d!1708397))

(declare-fun m!6353968 () Bool)

(assert (=> bs!1232622 m!6353968))

(assert (=> d!1708289 d!1708397))

(declare-fun b!5318473 () Bool)

(declare-fun e!3304358 () Bool)

(declare-fun lt!2171567 () Bool)

(declare-fun call!379532 () Bool)

(assert (=> b!5318473 (= e!3304358 (= lt!2171567 call!379532))))

(declare-fun b!5318474 () Bool)

(declare-fun e!3304363 () Bool)

(assert (=> b!5318474 (= e!3304358 e!3304363)))

(declare-fun c!924193 () Bool)

(assert (=> b!5318474 (= c!924193 ((_ is EmptyLang!14975) (regOne!30462 r!7292)))))

(declare-fun b!5318475 () Bool)

(assert (=> b!5318475 (= e!3304363 (not lt!2171567))))

(declare-fun bm!379527 () Bool)

(assert (=> bm!379527 (= call!379532 (isEmpty!33071 Nil!61102))))

(declare-fun b!5318476 () Bool)

(declare-fun e!3304360 () Bool)

(assert (=> b!5318476 (= e!3304360 (matchR!7160 (derivativeStep!4162 (regOne!30462 r!7292) (head!11402 Nil!61102)) (tail!10499 Nil!61102)))))

(declare-fun b!5318477 () Bool)

(declare-fun res!2256079 () Bool)

(declare-fun e!3304359 () Bool)

(assert (=> b!5318477 (=> res!2256079 e!3304359)))

(assert (=> b!5318477 (= res!2256079 (not (isEmpty!33071 (tail!10499 Nil!61102))))))

(declare-fun b!5318478 () Bool)

(declare-fun res!2256081 () Bool)

(declare-fun e!3304361 () Bool)

(assert (=> b!5318478 (=> (not res!2256081) (not e!3304361))))

(assert (=> b!5318478 (= res!2256081 (isEmpty!33071 (tail!10499 Nil!61102)))))

(declare-fun b!5318479 () Bool)

(declare-fun e!3304357 () Bool)

(assert (=> b!5318479 (= e!3304357 e!3304359)))

(declare-fun res!2256083 () Bool)

(assert (=> b!5318479 (=> res!2256083 e!3304359)))

(assert (=> b!5318479 (= res!2256083 call!379532)))

(declare-fun b!5318481 () Bool)

(declare-fun res!2256080 () Bool)

(declare-fun e!3304362 () Bool)

(assert (=> b!5318481 (=> res!2256080 e!3304362)))

(assert (=> b!5318481 (= res!2256080 e!3304361)))

(declare-fun res!2256082 () Bool)

(assert (=> b!5318481 (=> (not res!2256082) (not e!3304361))))

(assert (=> b!5318481 (= res!2256082 lt!2171567)))

(declare-fun b!5318482 () Bool)

(assert (=> b!5318482 (= e!3304361 (= (head!11402 Nil!61102) (c!923983 (regOne!30462 r!7292))))))

(declare-fun b!5318483 () Bool)

(assert (=> b!5318483 (= e!3304362 e!3304357)))

(declare-fun res!2256078 () Bool)

(assert (=> b!5318483 (=> (not res!2256078) (not e!3304357))))

(assert (=> b!5318483 (= res!2256078 (not lt!2171567))))

(declare-fun b!5318484 () Bool)

(assert (=> b!5318484 (= e!3304360 (nullable!5144 (regOne!30462 r!7292)))))

(declare-fun b!5318485 () Bool)

(declare-fun res!2256077 () Bool)

(assert (=> b!5318485 (=> (not res!2256077) (not e!3304361))))

(assert (=> b!5318485 (= res!2256077 (not call!379532))))

(declare-fun b!5318486 () Bool)

(assert (=> b!5318486 (= e!3304359 (not (= (head!11402 Nil!61102) (c!923983 (regOne!30462 r!7292)))))))

(declare-fun d!1708399 () Bool)

(assert (=> d!1708399 e!3304358))

(declare-fun c!924195 () Bool)

(assert (=> d!1708399 (= c!924195 ((_ is EmptyExpr!14975) (regOne!30462 r!7292)))))

(assert (=> d!1708399 (= lt!2171567 e!3304360)))

(declare-fun c!924194 () Bool)

(assert (=> d!1708399 (= c!924194 (isEmpty!33071 Nil!61102))))

(assert (=> d!1708399 (validRegex!6711 (regOne!30462 r!7292))))

(assert (=> d!1708399 (= (matchR!7160 (regOne!30462 r!7292) Nil!61102) lt!2171567)))

(declare-fun b!5318480 () Bool)

(declare-fun res!2256084 () Bool)

(assert (=> b!5318480 (=> res!2256084 e!3304362)))

(assert (=> b!5318480 (= res!2256084 (not ((_ is ElementMatch!14975) (regOne!30462 r!7292))))))

(assert (=> b!5318480 (= e!3304363 e!3304362)))

(assert (= (and d!1708399 c!924194) b!5318484))

(assert (= (and d!1708399 (not c!924194)) b!5318476))

(assert (= (and d!1708399 c!924195) b!5318473))

(assert (= (and d!1708399 (not c!924195)) b!5318474))

(assert (= (and b!5318474 c!924193) b!5318475))

(assert (= (and b!5318474 (not c!924193)) b!5318480))

(assert (= (and b!5318480 (not res!2256084)) b!5318481))

(assert (= (and b!5318481 res!2256082) b!5318485))

(assert (= (and b!5318485 res!2256077) b!5318478))

(assert (= (and b!5318478 res!2256081) b!5318482))

(assert (= (and b!5318481 (not res!2256080)) b!5318483))

(assert (= (and b!5318483 res!2256078) b!5318479))

(assert (= (and b!5318479 (not res!2256083)) b!5318477))

(assert (= (and b!5318477 (not res!2256079)) b!5318486))

(assert (= (or b!5318473 b!5318479 b!5318485) bm!379527))

(declare-fun m!6353970 () Bool)

(assert (=> b!5318484 m!6353970))

(declare-fun m!6353972 () Bool)

(assert (=> b!5318482 m!6353972))

(declare-fun m!6353974 () Bool)

(assert (=> b!5318477 m!6353974))

(assert (=> b!5318477 m!6353974))

(declare-fun m!6353976 () Bool)

(assert (=> b!5318477 m!6353976))

(assert (=> b!5318486 m!6353972))

(declare-fun m!6353978 () Bool)

(assert (=> bm!379527 m!6353978))

(assert (=> b!5318476 m!6353972))

(assert (=> b!5318476 m!6353972))

(declare-fun m!6353980 () Bool)

(assert (=> b!5318476 m!6353980))

(assert (=> b!5318476 m!6353974))

(assert (=> b!5318476 m!6353980))

(assert (=> b!5318476 m!6353974))

(declare-fun m!6353982 () Bool)

(assert (=> b!5318476 m!6353982))

(assert (=> d!1708399 m!6353978))

(assert (=> d!1708399 m!6353710))

(assert (=> b!5318478 m!6353974))

(assert (=> b!5318478 m!6353974))

(assert (=> b!5318478 m!6353976))

(assert (=> d!1708289 d!1708399))

(declare-fun bm!379528 () Bool)

(declare-fun call!379534 () Bool)

(declare-fun c!924196 () Bool)

(declare-fun c!924197 () Bool)

(assert (=> bm!379528 (= call!379534 (validRegex!6711 (ite c!924196 (reg!15304 (regOne!30462 r!7292)) (ite c!924197 (regOne!30463 (regOne!30462 r!7292)) (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun b!5318487 () Bool)

(declare-fun e!3304364 () Bool)

(declare-fun call!379533 () Bool)

(assert (=> b!5318487 (= e!3304364 call!379533)))

(declare-fun bm!379529 () Bool)

(declare-fun call!379535 () Bool)

(assert (=> bm!379529 (= call!379535 call!379534)))

(declare-fun b!5318489 () Bool)

(declare-fun res!2256089 () Bool)

(assert (=> b!5318489 (=> (not res!2256089) (not e!3304364))))

(assert (=> b!5318489 (= res!2256089 call!379535)))

(declare-fun e!3304366 () Bool)

(assert (=> b!5318489 (= e!3304366 e!3304364)))

(declare-fun b!5318490 () Bool)

(declare-fun res!2256087 () Bool)

(declare-fun e!3304370 () Bool)

(assert (=> b!5318490 (=> res!2256087 e!3304370)))

(assert (=> b!5318490 (= res!2256087 (not ((_ is Concat!23820) (regOne!30462 r!7292))))))

(assert (=> b!5318490 (= e!3304366 e!3304370)))

(declare-fun b!5318491 () Bool)

(declare-fun e!3304368 () Bool)

(declare-fun e!3304365 () Bool)

(assert (=> b!5318491 (= e!3304368 e!3304365)))

(declare-fun res!2256085 () Bool)

(assert (=> b!5318491 (= res!2256085 (not (nullable!5144 (reg!15304 (regOne!30462 r!7292)))))))

(assert (=> b!5318491 (=> (not res!2256085) (not e!3304365))))

(declare-fun b!5318492 () Bool)

(declare-fun e!3304369 () Bool)

(assert (=> b!5318492 (= e!3304369 e!3304368)))

(assert (=> b!5318492 (= c!924196 ((_ is Star!14975) (regOne!30462 r!7292)))))

(declare-fun d!1708401 () Bool)

(declare-fun res!2256088 () Bool)

(assert (=> d!1708401 (=> res!2256088 e!3304369)))

(assert (=> d!1708401 (= res!2256088 ((_ is ElementMatch!14975) (regOne!30462 r!7292)))))

(assert (=> d!1708401 (= (validRegex!6711 (regOne!30462 r!7292)) e!3304369)))

(declare-fun b!5318488 () Bool)

(declare-fun e!3304367 () Bool)

(assert (=> b!5318488 (= e!3304367 call!379533)))

(declare-fun b!5318493 () Bool)

(assert (=> b!5318493 (= e!3304370 e!3304367)))

(declare-fun res!2256086 () Bool)

(assert (=> b!5318493 (=> (not res!2256086) (not e!3304367))))

(assert (=> b!5318493 (= res!2256086 call!379535)))

(declare-fun b!5318494 () Bool)

(assert (=> b!5318494 (= e!3304365 call!379534)))

(declare-fun bm!379530 () Bool)

(assert (=> bm!379530 (= call!379533 (validRegex!6711 (ite c!924197 (regTwo!30463 (regOne!30462 r!7292)) (regTwo!30462 (regOne!30462 r!7292)))))))

(declare-fun b!5318495 () Bool)

(assert (=> b!5318495 (= e!3304368 e!3304366)))

(assert (=> b!5318495 (= c!924197 ((_ is Union!14975) (regOne!30462 r!7292)))))

(assert (= (and d!1708401 (not res!2256088)) b!5318492))

(assert (= (and b!5318492 c!924196) b!5318491))

(assert (= (and b!5318492 (not c!924196)) b!5318495))

(assert (= (and b!5318491 res!2256085) b!5318494))

(assert (= (and b!5318495 c!924197) b!5318489))

(assert (= (and b!5318495 (not c!924197)) b!5318490))

(assert (= (and b!5318489 res!2256089) b!5318487))

(assert (= (and b!5318490 (not res!2256087)) b!5318493))

(assert (= (and b!5318493 res!2256086) b!5318488))

(assert (= (or b!5318487 b!5318488) bm!379530))

(assert (= (or b!5318489 b!5318493) bm!379529))

(assert (= (or b!5318494 bm!379529) bm!379528))

(declare-fun m!6353984 () Bool)

(assert (=> bm!379528 m!6353984))

(declare-fun m!6353986 () Bool)

(assert (=> b!5318491 m!6353986))

(declare-fun m!6353988 () Bool)

(assert (=> bm!379530 m!6353988))

(assert (=> d!1708289 d!1708401))

(declare-fun d!1708403 () Bool)

(assert (=> d!1708403 (= (isEmpty!33068 (exprs!4859 (h!67549 zl!343))) ((_ is Nil!61100) (exprs!4859 (h!67549 zl!343))))))

(assert (=> b!5317950 d!1708403))

(declare-fun call!379536 () List!61224)

(declare-fun c!924200 () Bool)

(declare-fun c!924202 () Bool)

(declare-fun bm!379531 () Bool)

(assert (=> bm!379531 (= call!379536 ($colon$colon!1392 (exprs!4859 (ite (or c!924018 c!924021) lt!2171466 (Context!8719 call!379460))) (ite (or c!924202 c!924200) (regTwo!30462 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))))))))

(declare-fun b!5318496 () Bool)

(declare-fun e!3304375 () (InoxSet Context!8718))

(declare-fun e!3304376 () (InoxSet Context!8718))

(assert (=> b!5318496 (= e!3304375 e!3304376)))

(declare-fun c!924199 () Bool)

(assert (=> b!5318496 (= c!924199 ((_ is Union!14975) (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun b!5318497 () Bool)

(declare-fun e!3304372 () Bool)

(assert (=> b!5318497 (= c!924202 e!3304372)))

(declare-fun res!2256090 () Bool)

(assert (=> b!5318497 (=> (not res!2256090) (not e!3304372))))

(assert (=> b!5318497 (= res!2256090 ((_ is Concat!23820) (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun e!3304374 () (InoxSet Context!8718))

(assert (=> b!5318497 (= e!3304376 e!3304374)))

(declare-fun bm!379532 () Bool)

(declare-fun call!379540 () (InoxSet Context!8718))

(declare-fun call!379541 () (InoxSet Context!8718))

(assert (=> bm!379532 (= call!379540 call!379541)))

(declare-fun b!5318498 () Bool)

(declare-fun call!379538 () (InoxSet Context!8718))

(assert (=> b!5318498 (= e!3304374 ((_ map or) call!379538 call!379540))))

(declare-fun b!5318499 () Bool)

(assert (=> b!5318499 (= e!3304375 (store ((as const (Array Context!8718 Bool)) false) (ite (or c!924018 c!924021) lt!2171466 (Context!8719 call!379460)) true))))

(declare-fun c!924201 () Bool)

(declare-fun d!1708405 () Bool)

(assert (=> d!1708405 (= c!924201 (and ((_ is ElementMatch!14975) (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (= (c!923983 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (h!67550 s!2326))))))

(assert (=> d!1708405 (= (derivationStepZipperDown!423 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))) (ite (or c!924018 c!924021) lt!2171466 (Context!8719 call!379460)) (h!67550 s!2326)) e!3304375)))

(declare-fun b!5318500 () Bool)

(assert (=> b!5318500 (= e!3304376 ((_ map or) call!379541 call!379538))))

(declare-fun b!5318501 () Bool)

(declare-fun e!3304373 () (InoxSet Context!8718))

(assert (=> b!5318501 (= e!3304373 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318502 () Bool)

(declare-fun e!3304371 () (InoxSet Context!8718))

(declare-fun call!379539 () (InoxSet Context!8718))

(assert (=> b!5318502 (= e!3304371 call!379539)))

(declare-fun bm!379533 () Bool)

(assert (=> bm!379533 (= call!379539 call!379540)))

(declare-fun bm!379534 () Bool)

(declare-fun call!379537 () List!61224)

(assert (=> bm!379534 (= call!379537 call!379536)))

(declare-fun b!5318503 () Bool)

(assert (=> b!5318503 (= e!3304374 e!3304371)))

(assert (=> b!5318503 (= c!924200 ((_ is Concat!23820) (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun b!5318504 () Bool)

(assert (=> b!5318504 (= e!3304372 (nullable!5144 (regOne!30462 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))))))))

(declare-fun b!5318505 () Bool)

(assert (=> b!5318505 (= e!3304373 call!379539)))

(declare-fun bm!379535 () Bool)

(assert (=> bm!379535 (= call!379541 (derivationStepZipperDown!423 (ite c!924199 (regOne!30463 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (ite c!924202 (regTwo!30462 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (ite c!924200 (regOne!30462 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (reg!15304 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))))))) (ite (or c!924199 c!924202) (ite (or c!924018 c!924021) lt!2171466 (Context!8719 call!379460)) (Context!8719 call!379537)) (h!67550 s!2326)))))

(declare-fun b!5318506 () Bool)

(declare-fun c!924198 () Bool)

(assert (=> b!5318506 (= c!924198 ((_ is Star!14975) (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))))

(assert (=> b!5318506 (= e!3304371 e!3304373)))

(declare-fun bm!379536 () Bool)

(assert (=> bm!379536 (= call!379538 (derivationStepZipperDown!423 (ite c!924199 (regTwo!30463 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343)))))))) (regOne!30462 (ite c!924018 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924021 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924019 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))))) (ite c!924199 (ite (or c!924018 c!924021) lt!2171466 (Context!8719 call!379460)) (Context!8719 call!379536)) (h!67550 s!2326)))))

(assert (= (and d!1708405 c!924201) b!5318499))

(assert (= (and d!1708405 (not c!924201)) b!5318496))

(assert (= (and b!5318496 c!924199) b!5318500))

(assert (= (and b!5318496 (not c!924199)) b!5318497))

(assert (= (and b!5318497 res!2256090) b!5318504))

(assert (= (and b!5318497 c!924202) b!5318498))

(assert (= (and b!5318497 (not c!924202)) b!5318503))

(assert (= (and b!5318503 c!924200) b!5318502))

(assert (= (and b!5318503 (not c!924200)) b!5318506))

(assert (= (and b!5318506 c!924198) b!5318505))

(assert (= (and b!5318506 (not c!924198)) b!5318501))

(assert (= (or b!5318502 b!5318505) bm!379534))

(assert (= (or b!5318502 b!5318505) bm!379533))

(assert (= (or b!5318498 bm!379534) bm!379531))

(assert (= (or b!5318498 bm!379533) bm!379532))

(assert (= (or b!5318500 b!5318498) bm!379536))

(assert (= (or b!5318500 bm!379532) bm!379535))

(declare-fun m!6353990 () Bool)

(assert (=> b!5318499 m!6353990))

(declare-fun m!6353992 () Bool)

(assert (=> bm!379536 m!6353992))

(declare-fun m!6353994 () Bool)

(assert (=> bm!379531 m!6353994))

(declare-fun m!6353996 () Bool)

(assert (=> bm!379535 m!6353996))

(declare-fun m!6353998 () Bool)

(assert (=> b!5318504 m!6353998))

(assert (=> bm!379458 d!1708405))

(declare-fun b!5318507 () Bool)

(declare-fun e!3304378 () Bool)

(declare-fun lt!2171568 () Bool)

(declare-fun call!379542 () Bool)

(assert (=> b!5318507 (= e!3304378 (= lt!2171568 call!379542))))

(declare-fun b!5318508 () Bool)

(declare-fun e!3304383 () Bool)

(assert (=> b!5318508 (= e!3304378 e!3304383)))

(declare-fun c!924203 () Bool)

(assert (=> b!5318508 (= c!924203 ((_ is EmptyLang!14975) (regTwo!30462 r!7292)))))

(declare-fun b!5318509 () Bool)

(assert (=> b!5318509 (= e!3304383 (not lt!2171568))))

(declare-fun bm!379537 () Bool)

(assert (=> bm!379537 (= call!379542 (isEmpty!33071 (_2!35477 (get!21015 lt!2171529))))))

(declare-fun b!5318510 () Bool)

(declare-fun e!3304380 () Bool)

(assert (=> b!5318510 (= e!3304380 (matchR!7160 (derivativeStep!4162 (regTwo!30462 r!7292) (head!11402 (_2!35477 (get!21015 lt!2171529)))) (tail!10499 (_2!35477 (get!21015 lt!2171529)))))))

(declare-fun b!5318511 () Bool)

(declare-fun res!2256093 () Bool)

(declare-fun e!3304379 () Bool)

(assert (=> b!5318511 (=> res!2256093 e!3304379)))

(assert (=> b!5318511 (= res!2256093 (not (isEmpty!33071 (tail!10499 (_2!35477 (get!21015 lt!2171529))))))))

(declare-fun b!5318512 () Bool)

(declare-fun res!2256095 () Bool)

(declare-fun e!3304381 () Bool)

(assert (=> b!5318512 (=> (not res!2256095) (not e!3304381))))

(assert (=> b!5318512 (= res!2256095 (isEmpty!33071 (tail!10499 (_2!35477 (get!21015 lt!2171529)))))))

(declare-fun b!5318513 () Bool)

(declare-fun e!3304377 () Bool)

(assert (=> b!5318513 (= e!3304377 e!3304379)))

(declare-fun res!2256097 () Bool)

(assert (=> b!5318513 (=> res!2256097 e!3304379)))

(assert (=> b!5318513 (= res!2256097 call!379542)))

(declare-fun b!5318515 () Bool)

(declare-fun res!2256094 () Bool)

(declare-fun e!3304382 () Bool)

(assert (=> b!5318515 (=> res!2256094 e!3304382)))

(assert (=> b!5318515 (= res!2256094 e!3304381)))

(declare-fun res!2256096 () Bool)

(assert (=> b!5318515 (=> (not res!2256096) (not e!3304381))))

(assert (=> b!5318515 (= res!2256096 lt!2171568)))

(declare-fun b!5318516 () Bool)

(assert (=> b!5318516 (= e!3304381 (= (head!11402 (_2!35477 (get!21015 lt!2171529))) (c!923983 (regTwo!30462 r!7292))))))

(declare-fun b!5318517 () Bool)

(assert (=> b!5318517 (= e!3304382 e!3304377)))

(declare-fun res!2256092 () Bool)

(assert (=> b!5318517 (=> (not res!2256092) (not e!3304377))))

(assert (=> b!5318517 (= res!2256092 (not lt!2171568))))

(declare-fun b!5318518 () Bool)

(assert (=> b!5318518 (= e!3304380 (nullable!5144 (regTwo!30462 r!7292)))))

(declare-fun b!5318519 () Bool)

(declare-fun res!2256091 () Bool)

(assert (=> b!5318519 (=> (not res!2256091) (not e!3304381))))

(assert (=> b!5318519 (= res!2256091 (not call!379542))))

(declare-fun b!5318520 () Bool)

(assert (=> b!5318520 (= e!3304379 (not (= (head!11402 (_2!35477 (get!21015 lt!2171529))) (c!923983 (regTwo!30462 r!7292)))))))

(declare-fun d!1708407 () Bool)

(assert (=> d!1708407 e!3304378))

(declare-fun c!924205 () Bool)

(assert (=> d!1708407 (= c!924205 ((_ is EmptyExpr!14975) (regTwo!30462 r!7292)))))

(assert (=> d!1708407 (= lt!2171568 e!3304380)))

(declare-fun c!924204 () Bool)

(assert (=> d!1708407 (= c!924204 (isEmpty!33071 (_2!35477 (get!21015 lt!2171529))))))

(assert (=> d!1708407 (validRegex!6711 (regTwo!30462 r!7292))))

(assert (=> d!1708407 (= (matchR!7160 (regTwo!30462 r!7292) (_2!35477 (get!21015 lt!2171529))) lt!2171568)))

(declare-fun b!5318514 () Bool)

(declare-fun res!2256098 () Bool)

(assert (=> b!5318514 (=> res!2256098 e!3304382)))

(assert (=> b!5318514 (= res!2256098 (not ((_ is ElementMatch!14975) (regTwo!30462 r!7292))))))

(assert (=> b!5318514 (= e!3304383 e!3304382)))

(assert (= (and d!1708407 c!924204) b!5318518))

(assert (= (and d!1708407 (not c!924204)) b!5318510))

(assert (= (and d!1708407 c!924205) b!5318507))

(assert (= (and d!1708407 (not c!924205)) b!5318508))

(assert (= (and b!5318508 c!924203) b!5318509))

(assert (= (and b!5318508 (not c!924203)) b!5318514))

(assert (= (and b!5318514 (not res!2256098)) b!5318515))

(assert (= (and b!5318515 res!2256096) b!5318519))

(assert (= (and b!5318519 res!2256091) b!5318512))

(assert (= (and b!5318512 res!2256095) b!5318516))

(assert (= (and b!5318515 (not res!2256094)) b!5318517))

(assert (= (and b!5318517 res!2256092) b!5318513))

(assert (= (and b!5318513 (not res!2256097)) b!5318511))

(assert (= (and b!5318511 (not res!2256093)) b!5318520))

(assert (= (or b!5318507 b!5318513 b!5318519) bm!379537))

(declare-fun m!6354000 () Bool)

(assert (=> b!5318518 m!6354000))

(declare-fun m!6354002 () Bool)

(assert (=> b!5318516 m!6354002))

(declare-fun m!6354004 () Bool)

(assert (=> b!5318511 m!6354004))

(assert (=> b!5318511 m!6354004))

(declare-fun m!6354006 () Bool)

(assert (=> b!5318511 m!6354006))

(assert (=> b!5318520 m!6354002))

(declare-fun m!6354008 () Bool)

(assert (=> bm!379537 m!6354008))

(assert (=> b!5318510 m!6354002))

(assert (=> b!5318510 m!6354002))

(declare-fun m!6354010 () Bool)

(assert (=> b!5318510 m!6354010))

(assert (=> b!5318510 m!6354004))

(assert (=> b!5318510 m!6354010))

(assert (=> b!5318510 m!6354004))

(declare-fun m!6354012 () Bool)

(assert (=> b!5318510 m!6354012))

(assert (=> d!1708407 m!6354008))

(declare-fun m!6354014 () Bool)

(assert (=> d!1708407 m!6354014))

(assert (=> b!5318512 m!6354004))

(assert (=> b!5318512 m!6354004))

(assert (=> b!5318512 m!6354006))

(assert (=> b!5318046 d!1708407))

(declare-fun d!1708409 () Bool)

(assert (=> d!1708409 (= (get!21015 lt!2171529) (v!51114 lt!2171529))))

(assert (=> b!5318046 d!1708409))

(declare-fun d!1708411 () Bool)

(declare-fun res!2256103 () Bool)

(declare-fun e!3304388 () Bool)

(assert (=> d!1708411 (=> res!2256103 e!3304388)))

(assert (=> d!1708411 (= res!2256103 ((_ is Nil!61100) (exprs!4859 (h!67549 zl!343))))))

(assert (=> d!1708411 (= (forall!14393 (exprs!4859 (h!67549 zl!343)) lambda!271145) e!3304388)))

(declare-fun b!5318525 () Bool)

(declare-fun e!3304389 () Bool)

(assert (=> b!5318525 (= e!3304388 e!3304389)))

(declare-fun res!2256104 () Bool)

(assert (=> b!5318525 (=> (not res!2256104) (not e!3304389))))

(declare-fun dynLambda!24150 (Int Regex!14975) Bool)

(assert (=> b!5318525 (= res!2256104 (dynLambda!24150 lambda!271145 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318526 () Bool)

(assert (=> b!5318526 (= e!3304389 (forall!14393 (t!374433 (exprs!4859 (h!67549 zl!343))) lambda!271145))))

(assert (= (and d!1708411 (not res!2256103)) b!5318525))

(assert (= (and b!5318525 res!2256104) b!5318526))

(declare-fun b_lambda!204581 () Bool)

(assert (=> (not b_lambda!204581) (not b!5318525)))

(declare-fun m!6354016 () Bool)

(assert (=> b!5318525 m!6354016))

(declare-fun m!6354018 () Bool)

(assert (=> b!5318526 m!6354018))

(assert (=> d!1708251 d!1708411))

(declare-fun d!1708413 () Bool)

(assert (=> d!1708413 (= (nullable!5144 r!7292) (nullableFct!1494 r!7292))))

(declare-fun bs!1232623 () Bool)

(assert (= bs!1232623 d!1708413))

(declare-fun m!6354020 () Bool)

(assert (=> bs!1232623 m!6354020))

(assert (=> b!5318354 d!1708413))

(declare-fun bs!1232624 () Bool)

(declare-fun d!1708415 () Bool)

(assert (= bs!1232624 (and d!1708415 d!1708285)))

(declare-fun lambda!271201 () Int)

(assert (=> bs!1232624 (= lambda!271201 lambda!271167)))

(declare-fun bs!1232625 () Bool)

(assert (= bs!1232625 (and d!1708415 d!1708261)))

(assert (=> bs!1232625 (= lambda!271201 lambda!271151)))

(declare-fun bs!1232626 () Bool)

(assert (= bs!1232626 (and d!1708415 d!1708265)))

(assert (=> bs!1232626 (= lambda!271201 lambda!271158)))

(declare-fun bs!1232627 () Bool)

(assert (= bs!1232627 (and d!1708415 d!1708251)))

(assert (=> bs!1232627 (= lambda!271201 lambda!271145)))

(declare-fun bs!1232628 () Bool)

(assert (= bs!1232628 (and d!1708415 d!1708275)))

(assert (=> bs!1232628 (= lambda!271201 lambda!271165)))

(assert (=> d!1708415 (= (inv!80684 (h!67549 (t!374434 zl!343))) (forall!14393 (exprs!4859 (h!67549 (t!374434 zl!343))) lambda!271201))))

(declare-fun bs!1232629 () Bool)

(assert (= bs!1232629 d!1708415))

(declare-fun m!6354022 () Bool)

(assert (=> bs!1232629 m!6354022))

(assert (=> b!5318408 d!1708415))

(declare-fun d!1708417 () Bool)

(declare-fun res!2256105 () Bool)

(declare-fun e!3304390 () Bool)

(assert (=> d!1708417 (=> res!2256105 e!3304390)))

(assert (=> d!1708417 (= res!2256105 ((_ is Nil!61100) (exprs!4859 setElem!34221)))))

(assert (=> d!1708417 (= (forall!14393 (exprs!4859 setElem!34221) lambda!271167) e!3304390)))

(declare-fun b!5318527 () Bool)

(declare-fun e!3304391 () Bool)

(assert (=> b!5318527 (= e!3304390 e!3304391)))

(declare-fun res!2256106 () Bool)

(assert (=> b!5318527 (=> (not res!2256106) (not e!3304391))))

(assert (=> b!5318527 (= res!2256106 (dynLambda!24150 lambda!271167 (h!67548 (exprs!4859 setElem!34221))))))

(declare-fun b!5318528 () Bool)

(assert (=> b!5318528 (= e!3304391 (forall!14393 (t!374433 (exprs!4859 setElem!34221)) lambda!271167))))

(assert (= (and d!1708417 (not res!2256105)) b!5318527))

(assert (= (and b!5318527 res!2256106) b!5318528))

(declare-fun b_lambda!204583 () Bool)

(assert (=> (not b_lambda!204583) (not b!5318527)))

(declare-fun m!6354024 () Bool)

(assert (=> b!5318527 m!6354024))

(declare-fun m!6354026 () Bool)

(assert (=> b!5318528 m!6354026))

(assert (=> d!1708285 d!1708417))

(declare-fun d!1708419 () Bool)

(assert (=> d!1708419 (= (isConcat!399 lt!2171513) ((_ is Concat!23820) lt!2171513))))

(assert (=> b!5317955 d!1708419))

(declare-fun b!5318539 () Bool)

(declare-fun res!2256112 () Bool)

(declare-fun e!3304397 () Bool)

(assert (=> b!5318539 (=> (not res!2256112) (not e!3304397))))

(declare-fun lt!2171571 () List!61226)

(declare-fun size!39764 (List!61226) Int)

(assert (=> b!5318539 (= res!2256112 (= (size!39764 lt!2171571) (+ (size!39764 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102))) (size!39764 (t!374435 s!2326)))))))

(declare-fun d!1708421 () Bool)

(assert (=> d!1708421 e!3304397))

(declare-fun res!2256111 () Bool)

(assert (=> d!1708421 (=> (not res!2256111) (not e!3304397))))

(declare-fun content!10892 (List!61226) (InoxSet C!30220))

(assert (=> d!1708421 (= res!2256111 (= (content!10892 lt!2171571) ((_ map or) (content!10892 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102))) (content!10892 (t!374435 s!2326)))))))

(declare-fun e!3304396 () List!61226)

(assert (=> d!1708421 (= lt!2171571 e!3304396)))

(declare-fun c!924208 () Bool)

(assert (=> d!1708421 (= c!924208 ((_ is Nil!61102) (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102))))))

(assert (=> d!1708421 (= (++!13322 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (t!374435 s!2326)) lt!2171571)))

(declare-fun b!5318540 () Bool)

(assert (=> b!5318540 (= e!3304397 (or (not (= (t!374435 s!2326) Nil!61102)) (= lt!2171571 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)))))))

(declare-fun b!5318538 () Bool)

(assert (=> b!5318538 (= e!3304396 (Cons!61102 (h!67550 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102))) (++!13322 (t!374435 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102))) (t!374435 s!2326))))))

(declare-fun b!5318537 () Bool)

(assert (=> b!5318537 (= e!3304396 (t!374435 s!2326))))

(assert (= (and d!1708421 c!924208) b!5318537))

(assert (= (and d!1708421 (not c!924208)) b!5318538))

(assert (= (and d!1708421 res!2256111) b!5318539))

(assert (= (and b!5318539 res!2256112) b!5318540))

(declare-fun m!6354028 () Bool)

(assert (=> b!5318539 m!6354028))

(assert (=> b!5318539 m!6353722))

(declare-fun m!6354030 () Bool)

(assert (=> b!5318539 m!6354030))

(declare-fun m!6354032 () Bool)

(assert (=> b!5318539 m!6354032))

(declare-fun m!6354034 () Bool)

(assert (=> d!1708421 m!6354034))

(assert (=> d!1708421 m!6353722))

(declare-fun m!6354036 () Bool)

(assert (=> d!1708421 m!6354036))

(declare-fun m!6354038 () Bool)

(assert (=> d!1708421 m!6354038))

(declare-fun m!6354040 () Bool)

(assert (=> b!5318538 m!6354040))

(assert (=> b!5318051 d!1708421))

(declare-fun b!5318543 () Bool)

(declare-fun res!2256114 () Bool)

(declare-fun e!3304399 () Bool)

(assert (=> b!5318543 (=> (not res!2256114) (not e!3304399))))

(declare-fun lt!2171572 () List!61226)

(assert (=> b!5318543 (= res!2256114 (= (size!39764 lt!2171572) (+ (size!39764 Nil!61102) (size!39764 (Cons!61102 (h!67550 s!2326) Nil!61102)))))))

(declare-fun d!1708423 () Bool)

(assert (=> d!1708423 e!3304399))

(declare-fun res!2256113 () Bool)

(assert (=> d!1708423 (=> (not res!2256113) (not e!3304399))))

(assert (=> d!1708423 (= res!2256113 (= (content!10892 lt!2171572) ((_ map or) (content!10892 Nil!61102) (content!10892 (Cons!61102 (h!67550 s!2326) Nil!61102)))))))

(declare-fun e!3304398 () List!61226)

(assert (=> d!1708423 (= lt!2171572 e!3304398)))

(declare-fun c!924209 () Bool)

(assert (=> d!1708423 (= c!924209 ((_ is Nil!61102) Nil!61102))))

(assert (=> d!1708423 (= (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) lt!2171572)))

(declare-fun b!5318544 () Bool)

(assert (=> b!5318544 (= e!3304399 (or (not (= (Cons!61102 (h!67550 s!2326) Nil!61102) Nil!61102)) (= lt!2171572 Nil!61102)))))

(declare-fun b!5318542 () Bool)

(assert (=> b!5318542 (= e!3304398 (Cons!61102 (h!67550 Nil!61102) (++!13322 (t!374435 Nil!61102) (Cons!61102 (h!67550 s!2326) Nil!61102))))))

(declare-fun b!5318541 () Bool)

(assert (=> b!5318541 (= e!3304398 (Cons!61102 (h!67550 s!2326) Nil!61102))))

(assert (= (and d!1708423 c!924209) b!5318541))

(assert (= (and d!1708423 (not c!924209)) b!5318542))

(assert (= (and d!1708423 res!2256113) b!5318543))

(assert (= (and b!5318543 res!2256114) b!5318544))

(declare-fun m!6354042 () Bool)

(assert (=> b!5318543 m!6354042))

(declare-fun m!6354044 () Bool)

(assert (=> b!5318543 m!6354044))

(declare-fun m!6354046 () Bool)

(assert (=> b!5318543 m!6354046))

(declare-fun m!6354048 () Bool)

(assert (=> d!1708423 m!6354048))

(declare-fun m!6354050 () Bool)

(assert (=> d!1708423 m!6354050))

(declare-fun m!6354052 () Bool)

(assert (=> d!1708423 m!6354052))

(declare-fun m!6354054 () Bool)

(assert (=> b!5318542 m!6354054))

(assert (=> b!5318051 d!1708423))

(declare-fun d!1708425 () Bool)

(assert (=> d!1708425 (= (++!13322 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (t!374435 s!2326)) s!2326)))

(declare-fun lt!2171575 () Unit!153418)

(declare-fun choose!39810 (List!61226 C!30220 List!61226 List!61226) Unit!153418)

(assert (=> d!1708425 (= lt!2171575 (choose!39810 Nil!61102 (h!67550 s!2326) (t!374435 s!2326) s!2326))))

(assert (=> d!1708425 (= (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) (t!374435 s!2326))) s!2326)))

(assert (=> d!1708425 (= (lemmaMoveElementToOtherListKeepsConcatEq!1737 Nil!61102 (h!67550 s!2326) (t!374435 s!2326) s!2326) lt!2171575)))

(declare-fun bs!1232630 () Bool)

(assert (= bs!1232630 d!1708425))

(assert (=> bs!1232630 m!6353722))

(assert (=> bs!1232630 m!6353722))

(assert (=> bs!1232630 m!6353724))

(declare-fun m!6354056 () Bool)

(assert (=> bs!1232630 m!6354056))

(declare-fun m!6354058 () Bool)

(assert (=> bs!1232630 m!6354058))

(assert (=> b!5318051 d!1708425))

(declare-fun b!5318545 () Bool)

(declare-fun res!2256115 () Bool)

(declare-fun e!3304402 () Bool)

(assert (=> b!5318545 (=> (not res!2256115) (not e!3304402))))

(declare-fun lt!2171578 () Option!15086)

(assert (=> b!5318545 (= res!2256115 (matchR!7160 (regTwo!30462 r!7292) (_2!35477 (get!21015 lt!2171578))))))

(declare-fun b!5318546 () Bool)

(declare-fun e!3304400 () Option!15086)

(assert (=> b!5318546 (= e!3304400 None!15085)))

(declare-fun b!5318547 () Bool)

(declare-fun res!2256116 () Bool)

(assert (=> b!5318547 (=> (not res!2256116) (not e!3304402))))

(assert (=> b!5318547 (= res!2256116 (matchR!7160 (regOne!30462 r!7292) (_1!35477 (get!21015 lt!2171578))))))

(declare-fun b!5318548 () Bool)

(declare-fun e!3304401 () Bool)

(assert (=> b!5318548 (= e!3304401 (not (isDefined!11789 lt!2171578)))))

(declare-fun b!5318549 () Bool)

(declare-fun e!3304403 () Bool)

(assert (=> b!5318549 (= e!3304403 (matchR!7160 (regTwo!30462 r!7292) (t!374435 s!2326)))))

(declare-fun b!5318550 () Bool)

(declare-fun lt!2171577 () Unit!153418)

(declare-fun lt!2171576 () Unit!153418)

(assert (=> b!5318550 (= lt!2171577 lt!2171576)))

(assert (=> b!5318550 (= (++!13322 (++!13322 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (Cons!61102 (h!67550 (t!374435 s!2326)) Nil!61102)) (t!374435 (t!374435 s!2326))) s!2326)))

(assert (=> b!5318550 (= lt!2171576 (lemmaMoveElementToOtherListKeepsConcatEq!1737 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (h!67550 (t!374435 s!2326)) (t!374435 (t!374435 s!2326)) s!2326))))

(assert (=> b!5318550 (= e!3304400 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) (++!13322 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (Cons!61102 (h!67550 (t!374435 s!2326)) Nil!61102)) (t!374435 (t!374435 s!2326)) s!2326))))

(declare-fun b!5318551 () Bool)

(declare-fun e!3304404 () Option!15086)

(assert (=> b!5318551 (= e!3304404 (Some!15085 (tuple2!64349 (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (t!374435 s!2326))))))

(declare-fun d!1708427 () Bool)

(assert (=> d!1708427 e!3304401))

(declare-fun res!2256118 () Bool)

(assert (=> d!1708427 (=> res!2256118 e!3304401)))

(assert (=> d!1708427 (= res!2256118 e!3304402)))

(declare-fun res!2256117 () Bool)

(assert (=> d!1708427 (=> (not res!2256117) (not e!3304402))))

(assert (=> d!1708427 (= res!2256117 (isDefined!11789 lt!2171578))))

(assert (=> d!1708427 (= lt!2171578 e!3304404)))

(declare-fun c!924210 () Bool)

(assert (=> d!1708427 (= c!924210 e!3304403)))

(declare-fun res!2256119 () Bool)

(assert (=> d!1708427 (=> (not res!2256119) (not e!3304403))))

(assert (=> d!1708427 (= res!2256119 (matchR!7160 (regOne!30462 r!7292) (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102))))))

(assert (=> d!1708427 (validRegex!6711 (regOne!30462 r!7292))))

(assert (=> d!1708427 (= (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) (++!13322 Nil!61102 (Cons!61102 (h!67550 s!2326) Nil!61102)) (t!374435 s!2326) s!2326) lt!2171578)))

(declare-fun b!5318552 () Bool)

(assert (=> b!5318552 (= e!3304404 e!3304400)))

(declare-fun c!924211 () Bool)

(assert (=> b!5318552 (= c!924211 ((_ is Nil!61102) (t!374435 s!2326)))))

(declare-fun b!5318553 () Bool)

(assert (=> b!5318553 (= e!3304402 (= (++!13322 (_1!35477 (get!21015 lt!2171578)) (_2!35477 (get!21015 lt!2171578))) s!2326))))

(assert (= (and d!1708427 res!2256119) b!5318549))

(assert (= (and d!1708427 c!924210) b!5318551))

(assert (= (and d!1708427 (not c!924210)) b!5318552))

(assert (= (and b!5318552 c!924211) b!5318546))

(assert (= (and b!5318552 (not c!924211)) b!5318550))

(assert (= (and d!1708427 res!2256117) b!5318547))

(assert (= (and b!5318547 res!2256116) b!5318545))

(assert (= (and b!5318545 res!2256115) b!5318553))

(assert (= (and d!1708427 (not res!2256118)) b!5318548))

(declare-fun m!6354060 () Bool)

(assert (=> b!5318549 m!6354060))

(declare-fun m!6354062 () Bool)

(assert (=> b!5318548 m!6354062))

(assert (=> d!1708427 m!6354062))

(assert (=> d!1708427 m!6353722))

(declare-fun m!6354064 () Bool)

(assert (=> d!1708427 m!6354064))

(assert (=> d!1708427 m!6353710))

(declare-fun m!6354066 () Bool)

(assert (=> b!5318553 m!6354066))

(declare-fun m!6354068 () Bool)

(assert (=> b!5318553 m!6354068))

(assert (=> b!5318545 m!6354066))

(declare-fun m!6354070 () Bool)

(assert (=> b!5318545 m!6354070))

(assert (=> b!5318550 m!6353722))

(declare-fun m!6354072 () Bool)

(assert (=> b!5318550 m!6354072))

(assert (=> b!5318550 m!6354072))

(declare-fun m!6354074 () Bool)

(assert (=> b!5318550 m!6354074))

(assert (=> b!5318550 m!6353722))

(declare-fun m!6354076 () Bool)

(assert (=> b!5318550 m!6354076))

(assert (=> b!5318550 m!6354072))

(declare-fun m!6354078 () Bool)

(assert (=> b!5318550 m!6354078))

(assert (=> b!5318547 m!6354066))

(declare-fun m!6354080 () Bool)

(assert (=> b!5318547 m!6354080))

(assert (=> b!5318051 d!1708427))

(declare-fun d!1708429 () Bool)

(assert (=> d!1708429 (= (head!11400 (unfocusZipperList!417 zl!343)) (h!67548 (unfocusZipperList!417 zl!343)))))

(assert (=> b!5317878 d!1708429))

(declare-fun d!1708431 () Bool)

(assert (=> d!1708431 (= (isUnion!316 lt!2171501) ((_ is Union!14975) lt!2171501))))

(assert (=> b!5317874 d!1708431))

(declare-fun b!5318554 () Bool)

(declare-fun e!3304405 () (InoxSet Context!8718))

(declare-fun call!379543 () (InoxSet Context!8718))

(assert (=> b!5318554 (= e!3304405 ((_ map or) call!379543 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343))))))) (h!67550 s!2326))))))

(declare-fun b!5318555 () Bool)

(declare-fun e!3304407 () (InoxSet Context!8718))

(assert (=> b!5318555 (= e!3304407 call!379543)))

(declare-fun b!5318556 () Bool)

(assert (=> b!5318556 (= e!3304405 e!3304407)))

(declare-fun c!924212 () Bool)

(assert (=> b!5318556 (= c!924212 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun d!1708433 () Bool)

(declare-fun c!924213 () Bool)

(declare-fun e!3304406 () Bool)

(assert (=> d!1708433 (= c!924213 e!3304406)))

(declare-fun res!2256120 () Bool)

(assert (=> d!1708433 (=> (not res!2256120) (not e!3304406))))

(assert (=> d!1708433 (= res!2256120 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))))))))

(assert (=> d!1708433 (= (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) (h!67550 s!2326)) e!3304405)))

(declare-fun b!5318557 () Bool)

(assert (=> b!5318557 (= e!3304406 (nullable!5144 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343))))))))))

(declare-fun b!5318558 () Bool)

(assert (=> b!5318558 (= e!3304407 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379538 () Bool)

(assert (=> bm!379538 (= call!379543 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))))) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343))))))) (h!67550 s!2326)))))

(assert (= (and d!1708433 res!2256120) b!5318557))

(assert (= (and d!1708433 c!924213) b!5318554))

(assert (= (and d!1708433 (not c!924213)) b!5318556))

(assert (= (and b!5318556 c!924212) b!5318555))

(assert (= (and b!5318556 (not c!924212)) b!5318558))

(assert (= (or b!5318554 b!5318555) bm!379538))

(declare-fun m!6354082 () Bool)

(assert (=> b!5318554 m!6354082))

(declare-fun m!6354084 () Bool)

(assert (=> b!5318557 m!6354084))

(declare-fun m!6354086 () Bool)

(assert (=> bm!379538 m!6354086))

(assert (=> b!5317750 d!1708433))

(declare-fun c!924216 () Bool)

(declare-fun bm!379539 () Bool)

(declare-fun call!379544 () List!61224)

(declare-fun c!924218 () Bool)

(assert (=> bm!379539 (= call!379544 ($colon$colon!1392 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466)))) (ite (or c!924218 c!924216) (regTwo!30462 (h!67548 (exprs!4859 lt!2171466))) (h!67548 (exprs!4859 lt!2171466)))))))

(declare-fun b!5318559 () Bool)

(declare-fun e!3304412 () (InoxSet Context!8718))

(declare-fun e!3304413 () (InoxSet Context!8718))

(assert (=> b!5318559 (= e!3304412 e!3304413)))

(declare-fun c!924215 () Bool)

(assert (=> b!5318559 (= c!924215 ((_ is Union!14975) (h!67548 (exprs!4859 lt!2171466))))))

(declare-fun b!5318560 () Bool)

(declare-fun e!3304409 () Bool)

(assert (=> b!5318560 (= c!924218 e!3304409)))

(declare-fun res!2256121 () Bool)

(assert (=> b!5318560 (=> (not res!2256121) (not e!3304409))))

(assert (=> b!5318560 (= res!2256121 ((_ is Concat!23820) (h!67548 (exprs!4859 lt!2171466))))))

(declare-fun e!3304411 () (InoxSet Context!8718))

(assert (=> b!5318560 (= e!3304413 e!3304411)))

(declare-fun bm!379540 () Bool)

(declare-fun call!379548 () (InoxSet Context!8718))

(declare-fun call!379549 () (InoxSet Context!8718))

(assert (=> bm!379540 (= call!379548 call!379549)))

(declare-fun b!5318561 () Bool)

(declare-fun call!379546 () (InoxSet Context!8718))

(assert (=> b!5318561 (= e!3304411 ((_ map or) call!379546 call!379548))))

(declare-fun b!5318562 () Bool)

(assert (=> b!5318562 (= e!3304412 (store ((as const (Array Context!8718 Bool)) false) (Context!8719 (t!374433 (exprs!4859 lt!2171466))) true))))

(declare-fun d!1708435 () Bool)

(declare-fun c!924217 () Bool)

(assert (=> d!1708435 (= c!924217 (and ((_ is ElementMatch!14975) (h!67548 (exprs!4859 lt!2171466))) (= (c!923983 (h!67548 (exprs!4859 lt!2171466))) (h!67550 s!2326))))))

(assert (=> d!1708435 (= (derivationStepZipperDown!423 (h!67548 (exprs!4859 lt!2171466)) (Context!8719 (t!374433 (exprs!4859 lt!2171466))) (h!67550 s!2326)) e!3304412)))

(declare-fun b!5318563 () Bool)

(assert (=> b!5318563 (= e!3304413 ((_ map or) call!379549 call!379546))))

(declare-fun b!5318564 () Bool)

(declare-fun e!3304410 () (InoxSet Context!8718))

(assert (=> b!5318564 (= e!3304410 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318565 () Bool)

(declare-fun e!3304408 () (InoxSet Context!8718))

(declare-fun call!379547 () (InoxSet Context!8718))

(assert (=> b!5318565 (= e!3304408 call!379547)))

(declare-fun bm!379541 () Bool)

(assert (=> bm!379541 (= call!379547 call!379548)))

(declare-fun bm!379542 () Bool)

(declare-fun call!379545 () List!61224)

(assert (=> bm!379542 (= call!379545 call!379544)))

(declare-fun b!5318566 () Bool)

(assert (=> b!5318566 (= e!3304411 e!3304408)))

(assert (=> b!5318566 (= c!924216 ((_ is Concat!23820) (h!67548 (exprs!4859 lt!2171466))))))

(declare-fun b!5318567 () Bool)

(assert (=> b!5318567 (= e!3304409 (nullable!5144 (regOne!30462 (h!67548 (exprs!4859 lt!2171466)))))))

(declare-fun b!5318568 () Bool)

(assert (=> b!5318568 (= e!3304410 call!379547)))

(declare-fun bm!379543 () Bool)

(assert (=> bm!379543 (= call!379549 (derivationStepZipperDown!423 (ite c!924215 (regOne!30463 (h!67548 (exprs!4859 lt!2171466))) (ite c!924218 (regTwo!30462 (h!67548 (exprs!4859 lt!2171466))) (ite c!924216 (regOne!30462 (h!67548 (exprs!4859 lt!2171466))) (reg!15304 (h!67548 (exprs!4859 lt!2171466)))))) (ite (or c!924215 c!924218) (Context!8719 (t!374433 (exprs!4859 lt!2171466))) (Context!8719 call!379545)) (h!67550 s!2326)))))

(declare-fun b!5318569 () Bool)

(declare-fun c!924214 () Bool)

(assert (=> b!5318569 (= c!924214 ((_ is Star!14975) (h!67548 (exprs!4859 lt!2171466))))))

(assert (=> b!5318569 (= e!3304408 e!3304410)))

(declare-fun bm!379544 () Bool)

(assert (=> bm!379544 (= call!379546 (derivationStepZipperDown!423 (ite c!924215 (regTwo!30463 (h!67548 (exprs!4859 lt!2171466))) (regOne!30462 (h!67548 (exprs!4859 lt!2171466)))) (ite c!924215 (Context!8719 (t!374433 (exprs!4859 lt!2171466))) (Context!8719 call!379544)) (h!67550 s!2326)))))

(assert (= (and d!1708435 c!924217) b!5318562))

(assert (= (and d!1708435 (not c!924217)) b!5318559))

(assert (= (and b!5318559 c!924215) b!5318563))

(assert (= (and b!5318559 (not c!924215)) b!5318560))

(assert (= (and b!5318560 res!2256121) b!5318567))

(assert (= (and b!5318560 c!924218) b!5318561))

(assert (= (and b!5318560 (not c!924218)) b!5318566))

(assert (= (and b!5318566 c!924216) b!5318565))

(assert (= (and b!5318566 (not c!924216)) b!5318569))

(assert (= (and b!5318569 c!924214) b!5318568))

(assert (= (and b!5318569 (not c!924214)) b!5318564))

(assert (= (or b!5318565 b!5318568) bm!379542))

(assert (= (or b!5318565 b!5318568) bm!379541))

(assert (= (or b!5318561 bm!379542) bm!379539))

(assert (= (or b!5318561 bm!379541) bm!379540))

(assert (= (or b!5318563 b!5318561) bm!379544))

(assert (= (or b!5318563 bm!379540) bm!379543))

(declare-fun m!6354088 () Bool)

(assert (=> b!5318562 m!6354088))

(declare-fun m!6354090 () Bool)

(assert (=> bm!379544 m!6354090))

(declare-fun m!6354092 () Bool)

(assert (=> bm!379539 m!6354092))

(declare-fun m!6354094 () Bool)

(assert (=> bm!379543 m!6354094))

(declare-fun m!6354096 () Bool)

(assert (=> b!5318567 m!6354096))

(assert (=> bm!379460 d!1708435))

(declare-fun b!5318570 () Bool)

(declare-fun e!3304415 () Bool)

(declare-fun lt!2171579 () Bool)

(declare-fun call!379550 () Bool)

(assert (=> b!5318570 (= e!3304415 (= lt!2171579 call!379550))))

(declare-fun b!5318571 () Bool)

(declare-fun e!3304420 () Bool)

(assert (=> b!5318571 (= e!3304415 e!3304420)))

(declare-fun c!924219 () Bool)

(assert (=> b!5318571 (= c!924219 ((_ is EmptyLang!14975) (derivativeStep!4162 r!7292 (head!11402 s!2326))))))

(declare-fun b!5318572 () Bool)

(assert (=> b!5318572 (= e!3304420 (not lt!2171579))))

(declare-fun bm!379545 () Bool)

(assert (=> bm!379545 (= call!379550 (isEmpty!33071 (tail!10499 s!2326)))))

(declare-fun b!5318573 () Bool)

(declare-fun e!3304417 () Bool)

(assert (=> b!5318573 (= e!3304417 (matchR!7160 (derivativeStep!4162 (derivativeStep!4162 r!7292 (head!11402 s!2326)) (head!11402 (tail!10499 s!2326))) (tail!10499 (tail!10499 s!2326))))))

(declare-fun b!5318574 () Bool)

(declare-fun res!2256124 () Bool)

(declare-fun e!3304416 () Bool)

(assert (=> b!5318574 (=> res!2256124 e!3304416)))

(assert (=> b!5318574 (= res!2256124 (not (isEmpty!33071 (tail!10499 (tail!10499 s!2326)))))))

(declare-fun b!5318575 () Bool)

(declare-fun res!2256126 () Bool)

(declare-fun e!3304418 () Bool)

(assert (=> b!5318575 (=> (not res!2256126) (not e!3304418))))

(assert (=> b!5318575 (= res!2256126 (isEmpty!33071 (tail!10499 (tail!10499 s!2326))))))

(declare-fun b!5318576 () Bool)

(declare-fun e!3304414 () Bool)

(assert (=> b!5318576 (= e!3304414 e!3304416)))

(declare-fun res!2256128 () Bool)

(assert (=> b!5318576 (=> res!2256128 e!3304416)))

(assert (=> b!5318576 (= res!2256128 call!379550)))

(declare-fun b!5318578 () Bool)

(declare-fun res!2256125 () Bool)

(declare-fun e!3304419 () Bool)

(assert (=> b!5318578 (=> res!2256125 e!3304419)))

(assert (=> b!5318578 (= res!2256125 e!3304418)))

(declare-fun res!2256127 () Bool)

(assert (=> b!5318578 (=> (not res!2256127) (not e!3304418))))

(assert (=> b!5318578 (= res!2256127 lt!2171579)))

(declare-fun b!5318579 () Bool)

(assert (=> b!5318579 (= e!3304418 (= (head!11402 (tail!10499 s!2326)) (c!923983 (derivativeStep!4162 r!7292 (head!11402 s!2326)))))))

(declare-fun b!5318580 () Bool)

(assert (=> b!5318580 (= e!3304419 e!3304414)))

(declare-fun res!2256123 () Bool)

(assert (=> b!5318580 (=> (not res!2256123) (not e!3304414))))

(assert (=> b!5318580 (= res!2256123 (not lt!2171579))))

(declare-fun b!5318581 () Bool)

(assert (=> b!5318581 (= e!3304417 (nullable!5144 (derivativeStep!4162 r!7292 (head!11402 s!2326))))))

(declare-fun b!5318582 () Bool)

(declare-fun res!2256122 () Bool)

(assert (=> b!5318582 (=> (not res!2256122) (not e!3304418))))

(assert (=> b!5318582 (= res!2256122 (not call!379550))))

(declare-fun b!5318583 () Bool)

(assert (=> b!5318583 (= e!3304416 (not (= (head!11402 (tail!10499 s!2326)) (c!923983 (derivativeStep!4162 r!7292 (head!11402 s!2326))))))))

(declare-fun d!1708437 () Bool)

(assert (=> d!1708437 e!3304415))

(declare-fun c!924221 () Bool)

(assert (=> d!1708437 (= c!924221 ((_ is EmptyExpr!14975) (derivativeStep!4162 r!7292 (head!11402 s!2326))))))

(assert (=> d!1708437 (= lt!2171579 e!3304417)))

(declare-fun c!924220 () Bool)

(assert (=> d!1708437 (= c!924220 (isEmpty!33071 (tail!10499 s!2326)))))

(assert (=> d!1708437 (validRegex!6711 (derivativeStep!4162 r!7292 (head!11402 s!2326)))))

(assert (=> d!1708437 (= (matchR!7160 (derivativeStep!4162 r!7292 (head!11402 s!2326)) (tail!10499 s!2326)) lt!2171579)))

(declare-fun b!5318577 () Bool)

(declare-fun res!2256129 () Bool)

(assert (=> b!5318577 (=> res!2256129 e!3304419)))

(assert (=> b!5318577 (= res!2256129 (not ((_ is ElementMatch!14975) (derivativeStep!4162 r!7292 (head!11402 s!2326)))))))

(assert (=> b!5318577 (= e!3304420 e!3304419)))

(assert (= (and d!1708437 c!924220) b!5318581))

(assert (= (and d!1708437 (not c!924220)) b!5318573))

(assert (= (and d!1708437 c!924221) b!5318570))

(assert (= (and d!1708437 (not c!924221)) b!5318571))

(assert (= (and b!5318571 c!924219) b!5318572))

(assert (= (and b!5318571 (not c!924219)) b!5318577))

(assert (= (and b!5318577 (not res!2256129)) b!5318578))

(assert (= (and b!5318578 res!2256127) b!5318582))

(assert (= (and b!5318582 res!2256122) b!5318575))

(assert (= (and b!5318575 res!2256126) b!5318579))

(assert (= (and b!5318578 (not res!2256125)) b!5318580))

(assert (= (and b!5318580 res!2256123) b!5318576))

(assert (= (and b!5318576 (not res!2256128)) b!5318574))

(assert (= (and b!5318574 (not res!2256124)) b!5318583))

(assert (= (or b!5318570 b!5318576 b!5318582) bm!379545))

(assert (=> b!5318581 m!6353926))

(declare-fun m!6354098 () Bool)

(assert (=> b!5318581 m!6354098))

(assert (=> b!5318579 m!6353922))

(declare-fun m!6354100 () Bool)

(assert (=> b!5318579 m!6354100))

(assert (=> b!5318574 m!6353922))

(declare-fun m!6354102 () Bool)

(assert (=> b!5318574 m!6354102))

(assert (=> b!5318574 m!6354102))

(declare-fun m!6354104 () Bool)

(assert (=> b!5318574 m!6354104))

(assert (=> b!5318583 m!6353922))

(assert (=> b!5318583 m!6354100))

(assert (=> bm!379545 m!6353922))

(assert (=> bm!379545 m!6353924))

(assert (=> b!5318573 m!6353922))

(assert (=> b!5318573 m!6354100))

(assert (=> b!5318573 m!6353926))

(assert (=> b!5318573 m!6354100))

(declare-fun m!6354106 () Bool)

(assert (=> b!5318573 m!6354106))

(assert (=> b!5318573 m!6353922))

(assert (=> b!5318573 m!6354102))

(assert (=> b!5318573 m!6354106))

(assert (=> b!5318573 m!6354102))

(declare-fun m!6354108 () Bool)

(assert (=> b!5318573 m!6354108))

(assert (=> d!1708437 m!6353922))

(assert (=> d!1708437 m!6353924))

(assert (=> d!1708437 m!6353926))

(declare-fun m!6354110 () Bool)

(assert (=> d!1708437 m!6354110))

(assert (=> b!5318575 m!6353922))

(assert (=> b!5318575 m!6354102))

(assert (=> b!5318575 m!6354102))

(assert (=> b!5318575 m!6354104))

(assert (=> b!5318346 d!1708437))

(declare-fun b!5318604 () Bool)

(declare-fun e!3304432 () Regex!14975)

(assert (=> b!5318604 (= e!3304432 EmptyLang!14975)))

(declare-fun d!1708439 () Bool)

(declare-fun lt!2171582 () Regex!14975)

(assert (=> d!1708439 (validRegex!6711 lt!2171582)))

(assert (=> d!1708439 (= lt!2171582 e!3304432)))

(declare-fun c!924236 () Bool)

(assert (=> d!1708439 (= c!924236 (or ((_ is EmptyExpr!14975) r!7292) ((_ is EmptyLang!14975) r!7292)))))

(assert (=> d!1708439 (validRegex!6711 r!7292)))

(assert (=> d!1708439 (= (derivativeStep!4162 r!7292 (head!11402 s!2326)) lt!2171582)))

(declare-fun call!379562 () Regex!14975)

(declare-fun c!924235 () Bool)

(declare-fun bm!379554 () Bool)

(declare-fun c!924234 () Bool)

(assert (=> bm!379554 (= call!379562 (derivativeStep!4162 (ite c!924234 (regTwo!30463 r!7292) (ite c!924235 (reg!15304 r!7292) (regOne!30462 r!7292))) (head!11402 s!2326)))))

(declare-fun bm!379555 () Bool)

(declare-fun call!379559 () Regex!14975)

(declare-fun call!379560 () Regex!14975)

(assert (=> bm!379555 (= call!379559 call!379560)))

(declare-fun bm!379556 () Bool)

(declare-fun call!379561 () Regex!14975)

(assert (=> bm!379556 (= call!379561 call!379562)))

(declare-fun e!3304433 () Regex!14975)

(declare-fun b!5318605 () Bool)

(assert (=> b!5318605 (= e!3304433 (Union!14975 (Concat!23820 call!379561 (regTwo!30462 r!7292)) call!379559))))

(declare-fun c!924232 () Bool)

(declare-fun bm!379557 () Bool)

(assert (=> bm!379557 (= call!379560 (derivativeStep!4162 (ite c!924234 (regOne!30463 r!7292) (ite c!924232 (regTwo!30462 r!7292) (regOne!30462 r!7292))) (head!11402 s!2326)))))

(declare-fun b!5318606 () Bool)

(assert (=> b!5318606 (= c!924232 (nullable!5144 (regOne!30462 r!7292)))))

(declare-fun e!3304435 () Regex!14975)

(assert (=> b!5318606 (= e!3304435 e!3304433)))

(declare-fun b!5318607 () Bool)

(assert (=> b!5318607 (= e!3304435 (Concat!23820 call!379561 r!7292))))

(declare-fun b!5318608 () Bool)

(declare-fun e!3304431 () Regex!14975)

(assert (=> b!5318608 (= e!3304431 e!3304435)))

(assert (=> b!5318608 (= c!924235 ((_ is Star!14975) r!7292))))

(declare-fun b!5318609 () Bool)

(declare-fun e!3304434 () Regex!14975)

(assert (=> b!5318609 (= e!3304434 (ite (= (head!11402 s!2326) (c!923983 r!7292)) EmptyExpr!14975 EmptyLang!14975))))

(declare-fun b!5318610 () Bool)

(assert (=> b!5318610 (= e!3304431 (Union!14975 call!379560 call!379562))))

(declare-fun b!5318611 () Bool)

(assert (=> b!5318611 (= e!3304432 e!3304434)))

(declare-fun c!924233 () Bool)

(assert (=> b!5318611 (= c!924233 ((_ is ElementMatch!14975) r!7292))))

(declare-fun b!5318612 () Bool)

(assert (=> b!5318612 (= c!924234 ((_ is Union!14975) r!7292))))

(assert (=> b!5318612 (= e!3304434 e!3304431)))

(declare-fun b!5318613 () Bool)

(assert (=> b!5318613 (= e!3304433 (Union!14975 (Concat!23820 call!379559 (regTwo!30462 r!7292)) EmptyLang!14975))))

(assert (= (and d!1708439 c!924236) b!5318604))

(assert (= (and d!1708439 (not c!924236)) b!5318611))

(assert (= (and b!5318611 c!924233) b!5318609))

(assert (= (and b!5318611 (not c!924233)) b!5318612))

(assert (= (and b!5318612 c!924234) b!5318610))

(assert (= (and b!5318612 (not c!924234)) b!5318608))

(assert (= (and b!5318608 c!924235) b!5318607))

(assert (= (and b!5318608 (not c!924235)) b!5318606))

(assert (= (and b!5318606 c!924232) b!5318605))

(assert (= (and b!5318606 (not c!924232)) b!5318613))

(assert (= (or b!5318605 b!5318613) bm!379555))

(assert (= (or b!5318607 b!5318605) bm!379556))

(assert (= (or b!5318610 bm!379556) bm!379554))

(assert (= (or b!5318610 bm!379555) bm!379557))

(declare-fun m!6354112 () Bool)

(assert (=> d!1708439 m!6354112))

(assert (=> d!1708439 m!6353462))

(assert (=> bm!379554 m!6353920))

(declare-fun m!6354114 () Bool)

(assert (=> bm!379554 m!6354114))

(assert (=> bm!379557 m!6353920))

(declare-fun m!6354116 () Bool)

(assert (=> bm!379557 m!6354116))

(assert (=> b!5318606 m!6353970))

(assert (=> b!5318346 d!1708439))

(declare-fun d!1708441 () Bool)

(assert (=> d!1708441 (= (head!11402 s!2326) (h!67550 s!2326))))

(assert (=> b!5318346 d!1708441))

(declare-fun d!1708443 () Bool)

(assert (=> d!1708443 (= (tail!10499 s!2326) (t!374435 s!2326))))

(assert (=> b!5318346 d!1708443))

(declare-fun d!1708445 () Bool)

(assert (=> d!1708445 (= (isEmpty!33071 (t!374435 s!2326)) ((_ is Nil!61102) (t!374435 s!2326)))))

(assert (=> d!1708331 d!1708445))

(declare-fun bm!379558 () Bool)

(declare-fun c!924238 () Bool)

(declare-fun call!379564 () Bool)

(declare-fun c!924237 () Bool)

(assert (=> bm!379558 (= call!379564 (validRegex!6711 (ite c!924237 (reg!15304 lt!2171513) (ite c!924238 (regOne!30463 lt!2171513) (regOne!30462 lt!2171513)))))))

(declare-fun b!5318614 () Bool)

(declare-fun e!3304436 () Bool)

(declare-fun call!379563 () Bool)

(assert (=> b!5318614 (= e!3304436 call!379563)))

(declare-fun bm!379559 () Bool)

(declare-fun call!379565 () Bool)

(assert (=> bm!379559 (= call!379565 call!379564)))

(declare-fun b!5318616 () Bool)

(declare-fun res!2256134 () Bool)

(assert (=> b!5318616 (=> (not res!2256134) (not e!3304436))))

(assert (=> b!5318616 (= res!2256134 call!379565)))

(declare-fun e!3304438 () Bool)

(assert (=> b!5318616 (= e!3304438 e!3304436)))

(declare-fun b!5318617 () Bool)

(declare-fun res!2256132 () Bool)

(declare-fun e!3304442 () Bool)

(assert (=> b!5318617 (=> res!2256132 e!3304442)))

(assert (=> b!5318617 (= res!2256132 (not ((_ is Concat!23820) lt!2171513)))))

(assert (=> b!5318617 (= e!3304438 e!3304442)))

(declare-fun b!5318618 () Bool)

(declare-fun e!3304440 () Bool)

(declare-fun e!3304437 () Bool)

(assert (=> b!5318618 (= e!3304440 e!3304437)))

(declare-fun res!2256130 () Bool)

(assert (=> b!5318618 (= res!2256130 (not (nullable!5144 (reg!15304 lt!2171513))))))

(assert (=> b!5318618 (=> (not res!2256130) (not e!3304437))))

(declare-fun b!5318619 () Bool)

(declare-fun e!3304441 () Bool)

(assert (=> b!5318619 (= e!3304441 e!3304440)))

(assert (=> b!5318619 (= c!924237 ((_ is Star!14975) lt!2171513))))

(declare-fun d!1708447 () Bool)

(declare-fun res!2256133 () Bool)

(assert (=> d!1708447 (=> res!2256133 e!3304441)))

(assert (=> d!1708447 (= res!2256133 ((_ is ElementMatch!14975) lt!2171513))))

(assert (=> d!1708447 (= (validRegex!6711 lt!2171513) e!3304441)))

(declare-fun b!5318615 () Bool)

(declare-fun e!3304439 () Bool)

(assert (=> b!5318615 (= e!3304439 call!379563)))

(declare-fun b!5318620 () Bool)

(assert (=> b!5318620 (= e!3304442 e!3304439)))

(declare-fun res!2256131 () Bool)

(assert (=> b!5318620 (=> (not res!2256131) (not e!3304439))))

(assert (=> b!5318620 (= res!2256131 call!379565)))

(declare-fun b!5318621 () Bool)

(assert (=> b!5318621 (= e!3304437 call!379564)))

(declare-fun bm!379560 () Bool)

(assert (=> bm!379560 (= call!379563 (validRegex!6711 (ite c!924238 (regTwo!30463 lt!2171513) (regTwo!30462 lt!2171513))))))

(declare-fun b!5318622 () Bool)

(assert (=> b!5318622 (= e!3304440 e!3304438)))

(assert (=> b!5318622 (= c!924238 ((_ is Union!14975) lt!2171513))))

(assert (= (and d!1708447 (not res!2256133)) b!5318619))

(assert (= (and b!5318619 c!924237) b!5318618))

(assert (= (and b!5318619 (not c!924237)) b!5318622))

(assert (= (and b!5318618 res!2256130) b!5318621))

(assert (= (and b!5318622 c!924238) b!5318616))

(assert (= (and b!5318622 (not c!924238)) b!5318617))

(assert (= (and b!5318616 res!2256134) b!5318614))

(assert (= (and b!5318617 (not res!2256132)) b!5318620))

(assert (= (and b!5318620 res!2256131) b!5318615))

(assert (= (or b!5318614 b!5318615) bm!379560))

(assert (= (or b!5318616 b!5318620) bm!379559))

(assert (= (or b!5318621 bm!379559) bm!379558))

(declare-fun m!6354118 () Bool)

(assert (=> bm!379558 m!6354118))

(declare-fun m!6354120 () Bool)

(assert (=> b!5318618 m!6354120))

(declare-fun m!6354122 () Bool)

(assert (=> bm!379560 m!6354122))

(assert (=> d!1708275 d!1708447))

(declare-fun d!1708449 () Bool)

(declare-fun res!2256135 () Bool)

(declare-fun e!3304443 () Bool)

(assert (=> d!1708449 (=> res!2256135 e!3304443)))

(assert (=> d!1708449 (= res!2256135 ((_ is Nil!61100) (exprs!4859 (h!67549 zl!343))))))

(assert (=> d!1708449 (= (forall!14393 (exprs!4859 (h!67549 zl!343)) lambda!271165) e!3304443)))

(declare-fun b!5318623 () Bool)

(declare-fun e!3304444 () Bool)

(assert (=> b!5318623 (= e!3304443 e!3304444)))

(declare-fun res!2256136 () Bool)

(assert (=> b!5318623 (=> (not res!2256136) (not e!3304444))))

(assert (=> b!5318623 (= res!2256136 (dynLambda!24150 lambda!271165 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318624 () Bool)

(assert (=> b!5318624 (= e!3304444 (forall!14393 (t!374433 (exprs!4859 (h!67549 zl!343))) lambda!271165))))

(assert (= (and d!1708449 (not res!2256135)) b!5318623))

(assert (= (and b!5318623 res!2256136) b!5318624))

(declare-fun b_lambda!204585 () Bool)

(assert (=> (not b_lambda!204585) (not b!5318623)))

(declare-fun m!6354124 () Bool)

(assert (=> b!5318623 m!6354124))

(declare-fun m!6354126 () Bool)

(assert (=> b!5318624 m!6354126))

(assert (=> d!1708275 d!1708449))

(declare-fun d!1708451 () Bool)

(assert (=> d!1708451 (= (nullable!5144 (h!67548 (exprs!4859 lt!2171476))) (nullableFct!1494 (h!67548 (exprs!4859 lt!2171476))))))

(declare-fun bs!1232631 () Bool)

(assert (= bs!1232631 d!1708451))

(declare-fun m!6354128 () Bool)

(assert (=> bs!1232631 m!6354128))

(assert (=> b!5317907 d!1708451))

(assert (=> b!5317893 d!1708275))

(declare-fun bs!1232632 () Bool)

(declare-fun d!1708453 () Bool)

(assert (= bs!1232632 (and d!1708453 d!1708285)))

(declare-fun lambda!271202 () Int)

(assert (=> bs!1232632 (= lambda!271202 lambda!271167)))

(declare-fun bs!1232633 () Bool)

(assert (= bs!1232633 (and d!1708453 d!1708265)))

(assert (=> bs!1232633 (= lambda!271202 lambda!271158)))

(declare-fun bs!1232634 () Bool)

(assert (= bs!1232634 (and d!1708453 d!1708251)))

(assert (=> bs!1232634 (= lambda!271202 lambda!271145)))

(declare-fun bs!1232635 () Bool)

(assert (= bs!1232635 (and d!1708453 d!1708275)))

(assert (=> bs!1232635 (= lambda!271202 lambda!271165)))

(declare-fun bs!1232636 () Bool)

(assert (= bs!1232636 (and d!1708453 d!1708261)))

(assert (=> bs!1232636 (= lambda!271202 lambda!271151)))

(declare-fun bs!1232637 () Bool)

(assert (= bs!1232637 (and d!1708453 d!1708415)))

(assert (=> bs!1232637 (= lambda!271202 lambda!271201)))

(declare-fun lt!2171583 () List!61224)

(assert (=> d!1708453 (forall!14393 lt!2171583 lambda!271202)))

(declare-fun e!3304445 () List!61224)

(assert (=> d!1708453 (= lt!2171583 e!3304445)))

(declare-fun c!924239 () Bool)

(assert (=> d!1708453 (= c!924239 ((_ is Cons!61101) (t!374434 zl!343)))))

(assert (=> d!1708453 (= (unfocusZipperList!417 (t!374434 zl!343)) lt!2171583)))

(declare-fun b!5318625 () Bool)

(assert (=> b!5318625 (= e!3304445 (Cons!61100 (generalisedConcat!644 (exprs!4859 (h!67549 (t!374434 zl!343)))) (unfocusZipperList!417 (t!374434 (t!374434 zl!343)))))))

(declare-fun b!5318626 () Bool)

(assert (=> b!5318626 (= e!3304445 Nil!61100)))

(assert (= (and d!1708453 c!924239) b!5318625))

(assert (= (and d!1708453 (not c!924239)) b!5318626))

(declare-fun m!6354130 () Bool)

(assert (=> d!1708453 m!6354130))

(declare-fun m!6354132 () Bool)

(assert (=> b!5318625 m!6354132))

(declare-fun m!6354134 () Bool)

(assert (=> b!5318625 m!6354134))

(assert (=> b!5317893 d!1708453))

(declare-fun call!379566 () List!61224)

(declare-fun c!924242 () Bool)

(declare-fun bm!379561 () Bool)

(declare-fun c!924244 () Bool)

(assert (=> bm!379561 (= call!379566 ($colon$colon!1392 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343))))) (ite (or c!924244 c!924242) (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (h!67548 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5318627 () Bool)

(declare-fun e!3304450 () (InoxSet Context!8718))

(declare-fun e!3304451 () (InoxSet Context!8718))

(assert (=> b!5318627 (= e!3304450 e!3304451)))

(declare-fun c!924241 () Bool)

(assert (=> b!5318627 (= c!924241 ((_ is Union!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318628 () Bool)

(declare-fun e!3304447 () Bool)

(assert (=> b!5318628 (= c!924244 e!3304447)))

(declare-fun res!2256137 () Bool)

(assert (=> b!5318628 (=> (not res!2256137) (not e!3304447))))

(assert (=> b!5318628 (= res!2256137 ((_ is Concat!23820) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun e!3304449 () (InoxSet Context!8718))

(assert (=> b!5318628 (= e!3304451 e!3304449)))

(declare-fun bm!379562 () Bool)

(declare-fun call!379570 () (InoxSet Context!8718))

(declare-fun call!379571 () (InoxSet Context!8718))

(assert (=> bm!379562 (= call!379570 call!379571)))

(declare-fun b!5318629 () Bool)

(declare-fun call!379568 () (InoxSet Context!8718))

(assert (=> b!5318629 (= e!3304449 ((_ map or) call!379568 call!379570))))

(declare-fun b!5318630 () Bool)

(assert (=> b!5318630 (= e!3304450 (store ((as const (Array Context!8718 Bool)) false) (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) true))))

(declare-fun d!1708455 () Bool)

(declare-fun c!924243 () Bool)

(assert (=> d!1708455 (= c!924243 (and ((_ is ElementMatch!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))) (= (c!923983 (h!67548 (exprs!4859 (h!67549 zl!343)))) (h!67550 s!2326))))))

(assert (=> d!1708455 (= (derivationStepZipperDown!423 (h!67548 (exprs!4859 (h!67549 zl!343))) (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) (h!67550 s!2326)) e!3304450)))

(declare-fun b!5318631 () Bool)

(assert (=> b!5318631 (= e!3304451 ((_ map or) call!379571 call!379568))))

(declare-fun b!5318632 () Bool)

(declare-fun e!3304448 () (InoxSet Context!8718))

(assert (=> b!5318632 (= e!3304448 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318633 () Bool)

(declare-fun e!3304446 () (InoxSet Context!8718))

(declare-fun call!379569 () (InoxSet Context!8718))

(assert (=> b!5318633 (= e!3304446 call!379569)))

(declare-fun bm!379563 () Bool)

(assert (=> bm!379563 (= call!379569 call!379570)))

(declare-fun bm!379564 () Bool)

(declare-fun call!379567 () List!61224)

(assert (=> bm!379564 (= call!379567 call!379566)))

(declare-fun b!5318634 () Bool)

(assert (=> b!5318634 (= e!3304449 e!3304446)))

(assert (=> b!5318634 (= c!924242 ((_ is Concat!23820) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318635 () Bool)

(assert (=> b!5318635 (= e!3304447 (nullable!5144 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5318636 () Bool)

(assert (=> b!5318636 (= e!3304448 call!379569)))

(declare-fun bm!379565 () Bool)

(assert (=> bm!379565 (= call!379571 (derivationStepZipperDown!423 (ite c!924241 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924244 (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (ite c!924242 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (reg!15304 (h!67548 (exprs!4859 (h!67549 zl!343))))))) (ite (or c!924241 c!924244) (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) (Context!8719 call!379567)) (h!67550 s!2326)))))

(declare-fun b!5318637 () Bool)

(declare-fun c!924240 () Bool)

(assert (=> b!5318637 (= c!924240 ((_ is Star!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> b!5318637 (= e!3304446 e!3304448)))

(declare-fun bm!379566 () Bool)

(assert (=> bm!379566 (= call!379568 (derivationStepZipperDown!423 (ite c!924241 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))) (ite c!924241 (Context!8719 (t!374433 (exprs!4859 (h!67549 zl!343)))) (Context!8719 call!379566)) (h!67550 s!2326)))))

(assert (= (and d!1708455 c!924243) b!5318630))

(assert (= (and d!1708455 (not c!924243)) b!5318627))

(assert (= (and b!5318627 c!924241) b!5318631))

(assert (= (and b!5318627 (not c!924241)) b!5318628))

(assert (= (and b!5318628 res!2256137) b!5318635))

(assert (= (and b!5318628 c!924244) b!5318629))

(assert (= (and b!5318628 (not c!924244)) b!5318634))

(assert (= (and b!5318634 c!924242) b!5318633))

(assert (= (and b!5318634 (not c!924242)) b!5318637))

(assert (= (and b!5318637 c!924240) b!5318636))

(assert (= (and b!5318637 (not c!924240)) b!5318632))

(assert (= (or b!5318633 b!5318636) bm!379564))

(assert (= (or b!5318633 b!5318636) bm!379563))

(assert (= (or b!5318629 bm!379564) bm!379561))

(assert (= (or b!5318629 bm!379563) bm!379562))

(assert (= (or b!5318631 b!5318629) bm!379566))

(assert (= (or b!5318631 bm!379562) bm!379565))

(declare-fun m!6354136 () Bool)

(assert (=> b!5318630 m!6354136))

(declare-fun m!6354138 () Bool)

(assert (=> bm!379566 m!6354138))

(declare-fun m!6354140 () Bool)

(assert (=> bm!379561 m!6354140))

(declare-fun m!6354142 () Bool)

(assert (=> bm!379565 m!6354142))

(assert (=> b!5318635 m!6353526))

(assert (=> bm!379441 d!1708455))

(assert (=> d!1708337 d!1708339))

(assert (=> d!1708337 d!1708329))

(declare-fun d!1708457 () Bool)

(declare-fun e!3304454 () Bool)

(assert (=> d!1708457 (= (matchZipper!1219 ((_ map or) lt!2171467 lt!2171463) (t!374435 s!2326)) e!3304454)))

(declare-fun res!2256140 () Bool)

(assert (=> d!1708457 (=> res!2256140 e!3304454)))

(assert (=> d!1708457 (= res!2256140 (matchZipper!1219 lt!2171467 (t!374435 s!2326)))))

(assert (=> d!1708457 true))

(declare-fun _$48!991 () Unit!153418)

(assert (=> d!1708457 (= (choose!39805 lt!2171467 lt!2171463 (t!374435 s!2326)) _$48!991)))

(declare-fun b!5318640 () Bool)

(assert (=> b!5318640 (= e!3304454 (matchZipper!1219 lt!2171463 (t!374435 s!2326)))))

(assert (= (and d!1708457 (not res!2256140)) b!5318640))

(assert (=> d!1708457 m!6353432))

(assert (=> d!1708457 m!6353430))

(assert (=> b!5318640 m!6353424))

(assert (=> d!1708337 d!1708457))

(declare-fun c!924245 () Bool)

(declare-fun bm!379567 () Bool)

(declare-fun call!379573 () Bool)

(declare-fun c!924246 () Bool)

(assert (=> bm!379567 (= call!379573 (validRegex!6711 (ite c!924245 (reg!15304 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))) (ite c!924246 (regOne!30463 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))) (regOne!30462 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292)))))))))

(declare-fun b!5318641 () Bool)

(declare-fun e!3304455 () Bool)

(declare-fun call!379572 () Bool)

(assert (=> b!5318641 (= e!3304455 call!379572)))

(declare-fun bm!379568 () Bool)

(declare-fun call!379574 () Bool)

(assert (=> bm!379568 (= call!379574 call!379573)))

(declare-fun b!5318643 () Bool)

(declare-fun res!2256145 () Bool)

(assert (=> b!5318643 (=> (not res!2256145) (not e!3304455))))

(assert (=> b!5318643 (= res!2256145 call!379574)))

(declare-fun e!3304457 () Bool)

(assert (=> b!5318643 (= e!3304457 e!3304455)))

(declare-fun b!5318644 () Bool)

(declare-fun res!2256143 () Bool)

(declare-fun e!3304461 () Bool)

(assert (=> b!5318644 (=> res!2256143 e!3304461)))

(assert (=> b!5318644 (= res!2256143 (not ((_ is Concat!23820) (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292)))))))

(assert (=> b!5318644 (= e!3304457 e!3304461)))

(declare-fun b!5318645 () Bool)

(declare-fun e!3304459 () Bool)

(declare-fun e!3304456 () Bool)

(assert (=> b!5318645 (= e!3304459 e!3304456)))

(declare-fun res!2256141 () Bool)

(assert (=> b!5318645 (= res!2256141 (not (nullable!5144 (reg!15304 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))))))))

(assert (=> b!5318645 (=> (not res!2256141) (not e!3304456))))

(declare-fun b!5318646 () Bool)

(declare-fun e!3304460 () Bool)

(assert (=> b!5318646 (= e!3304460 e!3304459)))

(assert (=> b!5318646 (= c!924245 ((_ is Star!14975) (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))))))

(declare-fun d!1708459 () Bool)

(declare-fun res!2256144 () Bool)

(assert (=> d!1708459 (=> res!2256144 e!3304460)))

(assert (=> d!1708459 (= res!2256144 ((_ is ElementMatch!14975) (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))))))

(assert (=> d!1708459 (= (validRegex!6711 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))) e!3304460)))

(declare-fun b!5318642 () Bool)

(declare-fun e!3304458 () Bool)

(assert (=> b!5318642 (= e!3304458 call!379572)))

(declare-fun b!5318647 () Bool)

(assert (=> b!5318647 (= e!3304461 e!3304458)))

(declare-fun res!2256142 () Bool)

(assert (=> b!5318647 (=> (not res!2256142) (not e!3304458))))

(assert (=> b!5318647 (= res!2256142 call!379574)))

(declare-fun b!5318648 () Bool)

(assert (=> b!5318648 (= e!3304456 call!379573)))

(declare-fun bm!379569 () Bool)

(assert (=> bm!379569 (= call!379572 (validRegex!6711 (ite c!924246 (regTwo!30463 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))) (regTwo!30462 (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))))))))

(declare-fun b!5318649 () Bool)

(assert (=> b!5318649 (= e!3304459 e!3304457)))

(assert (=> b!5318649 (= c!924246 ((_ is Union!14975) (ite c!924035 (regTwo!30463 r!7292) (regTwo!30462 r!7292))))))

(assert (= (and d!1708459 (not res!2256144)) b!5318646))

(assert (= (and b!5318646 c!924245) b!5318645))

(assert (= (and b!5318646 (not c!924245)) b!5318649))

(assert (= (and b!5318645 res!2256141) b!5318648))

(assert (= (and b!5318649 c!924246) b!5318643))

(assert (= (and b!5318649 (not c!924246)) b!5318644))

(assert (= (and b!5318643 res!2256145) b!5318641))

(assert (= (and b!5318644 (not res!2256143)) b!5318647))

(assert (= (and b!5318647 res!2256142) b!5318642))

(assert (= (or b!5318641 b!5318642) bm!379569))

(assert (= (or b!5318643 b!5318647) bm!379568))

(assert (= (or b!5318648 bm!379568) bm!379567))

(declare-fun m!6354144 () Bool)

(assert (=> bm!379567 m!6354144))

(declare-fun m!6354146 () Bool)

(assert (=> b!5318645 m!6354146))

(declare-fun m!6354148 () Bool)

(assert (=> bm!379569 m!6354148))

(assert (=> bm!379469 d!1708459))

(declare-fun d!1708461 () Bool)

(assert (=> d!1708461 true))

(declare-fun setRes!34231 () Bool)

(assert (=> d!1708461 setRes!34231))

(declare-fun condSetEmpty!34231 () Bool)

(declare-fun res!2256146 () (InoxSet Context!8718))

(assert (=> d!1708461 (= condSetEmpty!34231 (= res!2256146 ((as const (Array Context!8718 Bool)) false)))))

(assert (=> d!1708461 (= (choose!39794 z!1189 lambda!271139) res!2256146)))

(declare-fun setIsEmpty!34231 () Bool)

(assert (=> setIsEmpty!34231 setRes!34231))

(declare-fun e!3304462 () Bool)

(declare-fun setElem!34231 () Context!8718)

(declare-fun tp!1481104 () Bool)

(declare-fun setNonEmpty!34231 () Bool)

(assert (=> setNonEmpty!34231 (= setRes!34231 (and tp!1481104 (inv!80684 setElem!34231) e!3304462))))

(declare-fun setRest!34231 () (InoxSet Context!8718))

(assert (=> setNonEmpty!34231 (= res!2256146 ((_ map or) (store ((as const (Array Context!8718 Bool)) false) setElem!34231 true) setRest!34231))))

(declare-fun b!5318650 () Bool)

(declare-fun tp!1481105 () Bool)

(assert (=> b!5318650 (= e!3304462 tp!1481105)))

(assert (= (and d!1708461 condSetEmpty!34231) setIsEmpty!34231))

(assert (= (and d!1708461 (not condSetEmpty!34231)) setNonEmpty!34231))

(assert (= setNonEmpty!34231 b!5318650))

(declare-fun m!6354150 () Bool)

(assert (=> setNonEmpty!34231 m!6354150))

(assert (=> d!1708243 d!1708461))

(declare-fun d!1708463 () Bool)

(assert (=> d!1708463 (= (nullable!5144 (reg!15304 r!7292)) (nullableFct!1494 (reg!15304 r!7292)))))

(declare-fun bs!1232638 () Bool)

(assert (= bs!1232638 d!1708463))

(declare-fun m!6354152 () Bool)

(assert (=> bs!1232638 m!6354152))

(assert (=> b!5317842 d!1708463))

(declare-fun bm!379574 () Bool)

(declare-fun call!379580 () Bool)

(declare-fun c!924249 () Bool)

(assert (=> bm!379574 (= call!379580 (nullable!5144 (ite c!924249 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun bm!379575 () Bool)

(declare-fun call!379579 () Bool)

(assert (=> bm!379575 (= call!379579 (nullable!5144 (ite c!924249 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun b!5318666 () Bool)

(declare-fun e!3304477 () Bool)

(assert (=> b!5318666 (= e!3304477 call!379579)))

(declare-fun b!5318667 () Bool)

(declare-fun e!3304478 () Bool)

(declare-fun e!3304476 () Bool)

(assert (=> b!5318667 (= e!3304478 e!3304476)))

(declare-fun res!2256161 () Bool)

(assert (=> b!5318667 (=> (not res!2256161) (not e!3304476))))

(assert (=> b!5318667 (= res!2256161 (and (not ((_ is EmptyLang!14975) (regOne!30462 (regOne!30462 r!7292)))) (not ((_ is ElementMatch!14975) (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun b!5318668 () Bool)

(declare-fun e!3304475 () Bool)

(assert (=> b!5318668 (= e!3304476 e!3304475)))

(declare-fun res!2256160 () Bool)

(assert (=> b!5318668 (=> res!2256160 e!3304475)))

(assert (=> b!5318668 (= res!2256160 ((_ is Star!14975) (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun b!5318669 () Bool)

(declare-fun e!3304480 () Bool)

(assert (=> b!5318669 (= e!3304475 e!3304480)))

(assert (=> b!5318669 (= c!924249 ((_ is Union!14975) (regOne!30462 (regOne!30462 r!7292))))))

(declare-fun d!1708465 () Bool)

(declare-fun res!2256157 () Bool)

(assert (=> d!1708465 (=> res!2256157 e!3304478)))

(assert (=> d!1708465 (= res!2256157 ((_ is EmptyExpr!14975) (regOne!30462 (regOne!30462 r!7292))))))

(assert (=> d!1708465 (= (nullableFct!1494 (regOne!30462 (regOne!30462 r!7292))) e!3304478)))

(declare-fun b!5318665 () Bool)

(declare-fun e!3304479 () Bool)

(assert (=> b!5318665 (= e!3304480 e!3304479)))

(declare-fun res!2256158 () Bool)

(assert (=> b!5318665 (= res!2256158 call!379580)))

(assert (=> b!5318665 (=> (not res!2256158) (not e!3304479))))

(declare-fun b!5318670 () Bool)

(assert (=> b!5318670 (= e!3304479 call!379579)))

(declare-fun b!5318671 () Bool)

(assert (=> b!5318671 (= e!3304480 e!3304477)))

(declare-fun res!2256159 () Bool)

(assert (=> b!5318671 (= res!2256159 call!379580)))

(assert (=> b!5318671 (=> res!2256159 e!3304477)))

(assert (= (and d!1708465 (not res!2256157)) b!5318667))

(assert (= (and b!5318667 res!2256161) b!5318668))

(assert (= (and b!5318668 (not res!2256160)) b!5318669))

(assert (= (and b!5318669 c!924249) b!5318671))

(assert (= (and b!5318669 (not c!924249)) b!5318665))

(assert (= (and b!5318671 (not res!2256159)) b!5318666))

(assert (= (and b!5318665 res!2256158) b!5318670))

(assert (= (or b!5318666 b!5318670) bm!379575))

(assert (= (or b!5318671 b!5318665) bm!379574))

(declare-fun m!6354154 () Bool)

(assert (=> bm!379574 m!6354154))

(declare-fun m!6354156 () Bool)

(assert (=> bm!379575 m!6354156))

(assert (=> d!1708373 d!1708465))

(declare-fun d!1708467 () Bool)

(assert (=> d!1708467 (= (isEmpty!33071 s!2326) ((_ is Nil!61102) s!2326))))

(assert (=> bm!379507 d!1708467))

(assert (=> bs!1232608 d!1708233))

(declare-fun d!1708469 () Bool)

(assert (=> d!1708469 (= (isEmpty!33068 (tail!10497 (exprs!4859 (h!67549 zl!343)))) ((_ is Nil!61100) (tail!10497 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> b!5317951 d!1708469))

(declare-fun d!1708471 () Bool)

(assert (=> d!1708471 (= (tail!10497 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))

(assert (=> b!5317951 d!1708471))

(declare-fun bs!1232639 () Bool)

(declare-fun b!5318673 () Bool)

(assert (= bs!1232639 (and b!5318673 b!5318463)))

(declare-fun lambda!271203 () Int)

(assert (=> bs!1232639 (= (and (= (reg!15304 (regTwo!30463 r!7292)) (reg!15304 (regOne!30463 r!7292))) (= (regTwo!30463 r!7292) (regOne!30463 r!7292))) (= lambda!271203 lambda!271199))))

(declare-fun bs!1232640 () Bool)

(assert (= bs!1232640 (and b!5318673 d!1708311)))

(assert (=> bs!1232640 (not (= lambda!271203 lambda!271183))))

(declare-fun bs!1232641 () Bool)

(assert (= bs!1232641 (and b!5318673 b!5318241)))

(assert (=> bs!1232641 (= (and (= (reg!15304 (regTwo!30463 r!7292)) (reg!15304 r!7292)) (= (regTwo!30463 r!7292) r!7292)) (= lambda!271203 lambda!271194))))

(declare-fun bs!1232642 () Bool)

(assert (= bs!1232642 (and b!5318673 b!5317690)))

(assert (=> bs!1232642 (not (= lambda!271203 lambda!271138))))

(assert (=> bs!1232640 (not (= lambda!271203 lambda!271182))))

(declare-fun bs!1232643 () Bool)

(assert (= bs!1232643 (and b!5318673 b!5318462)))

(assert (=> bs!1232643 (not (= lambda!271203 lambda!271200))))

(declare-fun bs!1232644 () Bool)

(assert (= bs!1232644 (and b!5318673 b!5318240)))

(assert (=> bs!1232644 (not (= lambda!271203 lambda!271195))))

(assert (=> bs!1232642 (not (= lambda!271203 lambda!271137))))

(declare-fun bs!1232645 () Bool)

(assert (= bs!1232645 (and b!5318673 d!1708309)))

(assert (=> bs!1232645 (not (= lambda!271203 lambda!271176))))

(assert (=> b!5318673 true))

(assert (=> b!5318673 true))

(declare-fun bs!1232646 () Bool)

(declare-fun b!5318672 () Bool)

(assert (= bs!1232646 (and b!5318672 b!5318463)))

(declare-fun lambda!271204 () Int)

(assert (=> bs!1232646 (not (= lambda!271204 lambda!271199))))

(declare-fun bs!1232647 () Bool)

(assert (= bs!1232647 (and b!5318672 d!1708311)))

(assert (=> bs!1232647 (= (and (= (regOne!30462 (regTwo!30463 r!7292)) (regOne!30462 r!7292)) (= (regTwo!30462 (regTwo!30463 r!7292)) (regTwo!30462 r!7292))) (= lambda!271204 lambda!271183))))

(declare-fun bs!1232648 () Bool)

(assert (= bs!1232648 (and b!5318672 b!5318241)))

(assert (=> bs!1232648 (not (= lambda!271204 lambda!271194))))

(declare-fun bs!1232649 () Bool)

(assert (= bs!1232649 (and b!5318672 b!5317690)))

(assert (=> bs!1232649 (= (and (= (regOne!30462 (regTwo!30463 r!7292)) (regOne!30462 r!7292)) (= (regTwo!30462 (regTwo!30463 r!7292)) (regTwo!30462 r!7292))) (= lambda!271204 lambda!271138))))

(assert (=> bs!1232647 (not (= lambda!271204 lambda!271182))))

(declare-fun bs!1232650 () Bool)

(assert (= bs!1232650 (and b!5318672 b!5318462)))

(assert (=> bs!1232650 (= (and (= (regOne!30462 (regTwo!30463 r!7292)) (regOne!30462 (regOne!30463 r!7292))) (= (regTwo!30462 (regTwo!30463 r!7292)) (regTwo!30462 (regOne!30463 r!7292)))) (= lambda!271204 lambda!271200))))

(declare-fun bs!1232651 () Bool)

(assert (= bs!1232651 (and b!5318672 b!5318240)))

(assert (=> bs!1232651 (= (and (= (regOne!30462 (regTwo!30463 r!7292)) (regOne!30462 r!7292)) (= (regTwo!30462 (regTwo!30463 r!7292)) (regTwo!30462 r!7292))) (= lambda!271204 lambda!271195))))

(declare-fun bs!1232652 () Bool)

(assert (= bs!1232652 (and b!5318672 b!5318673)))

(assert (=> bs!1232652 (not (= lambda!271204 lambda!271203))))

(assert (=> bs!1232649 (not (= lambda!271204 lambda!271137))))

(declare-fun bs!1232653 () Bool)

(assert (= bs!1232653 (and b!5318672 d!1708309)))

(assert (=> bs!1232653 (not (= lambda!271204 lambda!271176))))

(assert (=> b!5318672 true))

(assert (=> b!5318672 true))

(declare-fun e!3304487 () Bool)

(declare-fun call!379581 () Bool)

(assert (=> b!5318672 (= e!3304487 call!379581)))

(declare-fun e!3304485 () Bool)

(assert (=> b!5318673 (= e!3304485 call!379581)))

(declare-fun b!5318674 () Bool)

(declare-fun e!3304482 () Bool)

(declare-fun e!3304481 () Bool)

(assert (=> b!5318674 (= e!3304482 e!3304481)))

(declare-fun res!2256162 () Bool)

(assert (=> b!5318674 (= res!2256162 (matchRSpec!2078 (regOne!30463 (regTwo!30463 r!7292)) s!2326))))

(assert (=> b!5318674 (=> res!2256162 e!3304481)))

(declare-fun bm!379576 () Bool)

(declare-fun call!379582 () Bool)

(assert (=> bm!379576 (= call!379582 (isEmpty!33071 s!2326))))

(declare-fun d!1708473 () Bool)

(declare-fun c!924251 () Bool)

(assert (=> d!1708473 (= c!924251 ((_ is EmptyExpr!14975) (regTwo!30463 r!7292)))))

(declare-fun e!3304483 () Bool)

(assert (=> d!1708473 (= (matchRSpec!2078 (regTwo!30463 r!7292) s!2326) e!3304483)))

(declare-fun b!5318675 () Bool)

(assert (=> b!5318675 (= e!3304482 e!3304487)))

(declare-fun c!924252 () Bool)

(assert (=> b!5318675 (= c!924252 ((_ is Star!14975) (regTwo!30463 r!7292)))))

(declare-fun bm!379577 () Bool)

(assert (=> bm!379577 (= call!379581 (Exists!2156 (ite c!924252 lambda!271203 lambda!271204)))))

(declare-fun b!5318676 () Bool)

(declare-fun c!924253 () Bool)

(assert (=> b!5318676 (= c!924253 ((_ is ElementMatch!14975) (regTwo!30463 r!7292)))))

(declare-fun e!3304484 () Bool)

(declare-fun e!3304486 () Bool)

(assert (=> b!5318676 (= e!3304484 e!3304486)))

(declare-fun b!5318677 () Bool)

(assert (=> b!5318677 (= e!3304481 (matchRSpec!2078 (regTwo!30463 (regTwo!30463 r!7292)) s!2326))))

(declare-fun b!5318678 () Bool)

(declare-fun c!924250 () Bool)

(assert (=> b!5318678 (= c!924250 ((_ is Union!14975) (regTwo!30463 r!7292)))))

(assert (=> b!5318678 (= e!3304486 e!3304482)))

(declare-fun b!5318679 () Bool)

(assert (=> b!5318679 (= e!3304483 e!3304484)))

(declare-fun res!2256163 () Bool)

(assert (=> b!5318679 (= res!2256163 (not ((_ is EmptyLang!14975) (regTwo!30463 r!7292))))))

(assert (=> b!5318679 (=> (not res!2256163) (not e!3304484))))

(declare-fun b!5318680 () Bool)

(assert (=> b!5318680 (= e!3304486 (= s!2326 (Cons!61102 (c!923983 (regTwo!30463 r!7292)) Nil!61102)))))

(declare-fun b!5318681 () Bool)

(assert (=> b!5318681 (= e!3304483 call!379582)))

(declare-fun b!5318682 () Bool)

(declare-fun res!2256164 () Bool)

(assert (=> b!5318682 (=> res!2256164 e!3304485)))

(assert (=> b!5318682 (= res!2256164 call!379582)))

(assert (=> b!5318682 (= e!3304487 e!3304485)))

(assert (= (and d!1708473 c!924251) b!5318681))

(assert (= (and d!1708473 (not c!924251)) b!5318679))

(assert (= (and b!5318679 res!2256163) b!5318676))

(assert (= (and b!5318676 c!924253) b!5318680))

(assert (= (and b!5318676 (not c!924253)) b!5318678))

(assert (= (and b!5318678 c!924250) b!5318674))

(assert (= (and b!5318678 (not c!924250)) b!5318675))

(assert (= (and b!5318674 (not res!2256162)) b!5318677))

(assert (= (and b!5318675 c!924252) b!5318682))

(assert (= (and b!5318675 (not c!924252)) b!5318672))

(assert (= (and b!5318682 (not res!2256164)) b!5318673))

(assert (= (or b!5318673 b!5318672) bm!379577))

(assert (= (or b!5318681 b!5318682) bm!379576))

(declare-fun m!6354158 () Bool)

(assert (=> b!5318674 m!6354158))

(assert (=> bm!379576 m!6353860))

(declare-fun m!6354160 () Bool)

(assert (=> bm!379577 m!6354160))

(declare-fun m!6354162 () Bool)

(assert (=> b!5318677 m!6354162))

(assert (=> b!5318245 d!1708473))

(declare-fun bm!379578 () Bool)

(declare-fun c!924255 () Bool)

(declare-fun c!924254 () Bool)

(declare-fun call!379584 () Bool)

(assert (=> bm!379578 (= call!379584 (validRegex!6711 (ite c!924254 (reg!15304 lt!2171501) (ite c!924255 (regOne!30463 lt!2171501) (regOne!30462 lt!2171501)))))))

(declare-fun b!5318683 () Bool)

(declare-fun e!3304488 () Bool)

(declare-fun call!379583 () Bool)

(assert (=> b!5318683 (= e!3304488 call!379583)))

(declare-fun bm!379579 () Bool)

(declare-fun call!379585 () Bool)

(assert (=> bm!379579 (= call!379585 call!379584)))

(declare-fun b!5318685 () Bool)

(declare-fun res!2256169 () Bool)

(assert (=> b!5318685 (=> (not res!2256169) (not e!3304488))))

(assert (=> b!5318685 (= res!2256169 call!379585)))

(declare-fun e!3304490 () Bool)

(assert (=> b!5318685 (= e!3304490 e!3304488)))

(declare-fun b!5318686 () Bool)

(declare-fun res!2256167 () Bool)

(declare-fun e!3304494 () Bool)

(assert (=> b!5318686 (=> res!2256167 e!3304494)))

(assert (=> b!5318686 (= res!2256167 (not ((_ is Concat!23820) lt!2171501)))))

(assert (=> b!5318686 (= e!3304490 e!3304494)))

(declare-fun b!5318687 () Bool)

(declare-fun e!3304492 () Bool)

(declare-fun e!3304489 () Bool)

(assert (=> b!5318687 (= e!3304492 e!3304489)))

(declare-fun res!2256165 () Bool)

(assert (=> b!5318687 (= res!2256165 (not (nullable!5144 (reg!15304 lt!2171501))))))

(assert (=> b!5318687 (=> (not res!2256165) (not e!3304489))))

(declare-fun b!5318688 () Bool)

(declare-fun e!3304493 () Bool)

(assert (=> b!5318688 (= e!3304493 e!3304492)))

(assert (=> b!5318688 (= c!924254 ((_ is Star!14975) lt!2171501))))

(declare-fun d!1708475 () Bool)

(declare-fun res!2256168 () Bool)

(assert (=> d!1708475 (=> res!2256168 e!3304493)))

(assert (=> d!1708475 (= res!2256168 ((_ is ElementMatch!14975) lt!2171501))))

(assert (=> d!1708475 (= (validRegex!6711 lt!2171501) e!3304493)))

(declare-fun b!5318684 () Bool)

(declare-fun e!3304491 () Bool)

(assert (=> b!5318684 (= e!3304491 call!379583)))

(declare-fun b!5318689 () Bool)

(assert (=> b!5318689 (= e!3304494 e!3304491)))

(declare-fun res!2256166 () Bool)

(assert (=> b!5318689 (=> (not res!2256166) (not e!3304491))))

(assert (=> b!5318689 (= res!2256166 call!379585)))

(declare-fun b!5318690 () Bool)

(assert (=> b!5318690 (= e!3304489 call!379584)))

(declare-fun bm!379580 () Bool)

(assert (=> bm!379580 (= call!379583 (validRegex!6711 (ite c!924255 (regTwo!30463 lt!2171501) (regTwo!30462 lt!2171501))))))

(declare-fun b!5318691 () Bool)

(assert (=> b!5318691 (= e!3304492 e!3304490)))

(assert (=> b!5318691 (= c!924255 ((_ is Union!14975) lt!2171501))))

(assert (= (and d!1708475 (not res!2256168)) b!5318688))

(assert (= (and b!5318688 c!924254) b!5318687))

(assert (= (and b!5318688 (not c!924254)) b!5318691))

(assert (= (and b!5318687 res!2256165) b!5318690))

(assert (= (and b!5318691 c!924255) b!5318685))

(assert (= (and b!5318691 (not c!924255)) b!5318686))

(assert (= (and b!5318685 res!2256169) b!5318683))

(assert (= (and b!5318686 (not res!2256167)) b!5318689))

(assert (= (and b!5318689 res!2256166) b!5318684))

(assert (= (or b!5318683 b!5318684) bm!379580))

(assert (= (or b!5318685 b!5318689) bm!379579))

(assert (= (or b!5318690 bm!379579) bm!379578))

(declare-fun m!6354164 () Bool)

(assert (=> bm!379578 m!6354164))

(declare-fun m!6354166 () Bool)

(assert (=> b!5318687 m!6354166))

(declare-fun m!6354168 () Bool)

(assert (=> bm!379580 m!6354168))

(assert (=> d!1708261 d!1708475))

(declare-fun d!1708477 () Bool)

(declare-fun res!2256170 () Bool)

(declare-fun e!3304495 () Bool)

(assert (=> d!1708477 (=> res!2256170 e!3304495)))

(assert (=> d!1708477 (= res!2256170 ((_ is Nil!61100) (unfocusZipperList!417 zl!343)))))

(assert (=> d!1708477 (= (forall!14393 (unfocusZipperList!417 zl!343) lambda!271151) e!3304495)))

(declare-fun b!5318692 () Bool)

(declare-fun e!3304496 () Bool)

(assert (=> b!5318692 (= e!3304495 e!3304496)))

(declare-fun res!2256171 () Bool)

(assert (=> b!5318692 (=> (not res!2256171) (not e!3304496))))

(assert (=> b!5318692 (= res!2256171 (dynLambda!24150 lambda!271151 (h!67548 (unfocusZipperList!417 zl!343))))))

(declare-fun b!5318693 () Bool)

(assert (=> b!5318693 (= e!3304496 (forall!14393 (t!374433 (unfocusZipperList!417 zl!343)) lambda!271151))))

(assert (= (and d!1708477 (not res!2256170)) b!5318692))

(assert (= (and b!5318692 res!2256171) b!5318693))

(declare-fun b_lambda!204587 () Bool)

(assert (=> (not b_lambda!204587) (not b!5318692)))

(declare-fun m!6354170 () Bool)

(assert (=> b!5318692 m!6354170))

(declare-fun m!6354172 () Bool)

(assert (=> b!5318693 m!6354172))

(assert (=> d!1708261 d!1708477))

(declare-fun c!924258 () Bool)

(declare-fun c!924260 () Bool)

(declare-fun call!379586 () List!61224)

(declare-fun bm!379581 () Bool)

(assert (=> bm!379581 (= call!379586 ($colon$colon!1392 (exprs!4859 (ite c!924080 (Context!8719 lt!2171473) (Context!8719 call!379479))) (ite (or c!924260 c!924258) (regTwo!30462 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(declare-fun b!5318694 () Bool)

(declare-fun e!3304501 () (InoxSet Context!8718))

(declare-fun e!3304502 () (InoxSet Context!8718))

(assert (=> b!5318694 (= e!3304501 e!3304502)))

(declare-fun c!924257 () Bool)

(assert (=> b!5318694 (= c!924257 ((_ is Union!14975) (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun b!5318695 () Bool)

(declare-fun e!3304498 () Bool)

(assert (=> b!5318695 (= c!924260 e!3304498)))

(declare-fun res!2256172 () Bool)

(assert (=> b!5318695 (=> (not res!2256172) (not e!3304498))))

(assert (=> b!5318695 (= res!2256172 ((_ is Concat!23820) (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun e!3304500 () (InoxSet Context!8718))

(assert (=> b!5318695 (= e!3304502 e!3304500)))

(declare-fun bm!379582 () Bool)

(declare-fun call!379590 () (InoxSet Context!8718))

(declare-fun call!379591 () (InoxSet Context!8718))

(assert (=> bm!379582 (= call!379590 call!379591)))

(declare-fun b!5318696 () Bool)

(declare-fun call!379588 () (InoxSet Context!8718))

(assert (=> b!5318696 (= e!3304500 ((_ map or) call!379588 call!379590))))

(declare-fun b!5318697 () Bool)

(assert (=> b!5318697 (= e!3304501 (store ((as const (Array Context!8718 Bool)) false) (ite c!924080 (Context!8719 lt!2171473) (Context!8719 call!379479)) true))))

(declare-fun d!1708479 () Bool)

(declare-fun c!924259 () Bool)

(assert (=> d!1708479 (= c!924259 (and ((_ is ElementMatch!14975) (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (= (c!923983 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (h!67550 s!2326))))))

(assert (=> d!1708479 (= (derivationStepZipperDown!423 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))) (ite c!924080 (Context!8719 lt!2171473) (Context!8719 call!379479)) (h!67550 s!2326)) e!3304501)))

(declare-fun b!5318698 () Bool)

(assert (=> b!5318698 (= e!3304502 ((_ map or) call!379591 call!379588))))

(declare-fun b!5318699 () Bool)

(declare-fun e!3304499 () (InoxSet Context!8718))

(assert (=> b!5318699 (= e!3304499 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318700 () Bool)

(declare-fun e!3304497 () (InoxSet Context!8718))

(declare-fun call!379589 () (InoxSet Context!8718))

(assert (=> b!5318700 (= e!3304497 call!379589)))

(declare-fun bm!379583 () Bool)

(assert (=> bm!379583 (= call!379589 call!379590)))

(declare-fun bm!379584 () Bool)

(declare-fun call!379587 () List!61224)

(assert (=> bm!379584 (= call!379587 call!379586)))

(declare-fun b!5318701 () Bool)

(assert (=> b!5318701 (= e!3304500 e!3304497)))

(assert (=> b!5318701 (= c!924258 ((_ is Concat!23820) (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun b!5318702 () Bool)

(assert (=> b!5318702 (= e!3304498 (nullable!5144 (regOne!30462 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(declare-fun b!5318703 () Bool)

(assert (=> b!5318703 (= e!3304499 call!379589)))

(declare-fun bm!379585 () Bool)

(assert (=> bm!379585 (= call!379591 (derivationStepZipperDown!423 (ite c!924257 (regOne!30463 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (ite c!924260 (regTwo!30462 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (ite c!924258 (regOne!30462 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (reg!15304 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))) (ite (or c!924257 c!924260) (ite c!924080 (Context!8719 lt!2171473) (Context!8719 call!379479)) (Context!8719 call!379587)) (h!67550 s!2326)))))

(declare-fun b!5318704 () Bool)

(declare-fun c!924256 () Bool)

(assert (=> b!5318704 (= c!924256 ((_ is Star!14975) (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(assert (=> b!5318704 (= e!3304497 e!3304499)))

(declare-fun bm!379586 () Bool)

(assert (=> bm!379586 (= call!379588 (derivationStepZipperDown!423 (ite c!924257 (regTwo!30463 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292))))) (regOne!30462 (ite c!924080 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))) (ite c!924257 (ite c!924080 (Context!8719 lt!2171473) (Context!8719 call!379479)) (Context!8719 call!379586)) (h!67550 s!2326)))))

(assert (= (and d!1708479 c!924259) b!5318697))

(assert (= (and d!1708479 (not c!924259)) b!5318694))

(assert (= (and b!5318694 c!924257) b!5318698))

(assert (= (and b!5318694 (not c!924257)) b!5318695))

(assert (= (and b!5318695 res!2256172) b!5318702))

(assert (= (and b!5318695 c!924260) b!5318696))

(assert (= (and b!5318695 (not c!924260)) b!5318701))

(assert (= (and b!5318701 c!924258) b!5318700))

(assert (= (and b!5318701 (not c!924258)) b!5318704))

(assert (= (and b!5318704 c!924256) b!5318703))

(assert (= (and b!5318704 (not c!924256)) b!5318699))

(assert (= (or b!5318700 b!5318703) bm!379584))

(assert (= (or b!5318700 b!5318703) bm!379583))

(assert (= (or b!5318696 bm!379584) bm!379581))

(assert (= (or b!5318696 bm!379583) bm!379582))

(assert (= (or b!5318698 b!5318696) bm!379586))

(assert (= (or b!5318698 bm!379582) bm!379585))

(declare-fun m!6354174 () Bool)

(assert (=> b!5318697 m!6354174))

(declare-fun m!6354176 () Bool)

(assert (=> bm!379586 m!6354176))

(declare-fun m!6354178 () Bool)

(assert (=> bm!379581 m!6354178))

(declare-fun m!6354180 () Bool)

(assert (=> bm!379585 m!6354180))

(declare-fun m!6354182 () Bool)

(assert (=> b!5318702 m!6354182))

(assert (=> bm!379479 d!1708479))

(declare-fun c!924262 () Bool)

(declare-fun c!924261 () Bool)

(declare-fun bm!379587 () Bool)

(declare-fun call!379593 () Bool)

(assert (=> bm!379587 (= call!379593 (validRegex!6711 (ite c!924261 (reg!15304 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))) (ite c!924262 (regOne!30463 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))) (regOne!30462 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292)))))))))))

(declare-fun b!5318705 () Bool)

(declare-fun e!3304503 () Bool)

(declare-fun call!379592 () Bool)

(assert (=> b!5318705 (= e!3304503 call!379592)))

(declare-fun bm!379588 () Bool)

(declare-fun call!379594 () Bool)

(assert (=> bm!379588 (= call!379594 call!379593)))

(declare-fun b!5318707 () Bool)

(declare-fun res!2256177 () Bool)

(assert (=> b!5318707 (=> (not res!2256177) (not e!3304503))))

(assert (=> b!5318707 (= res!2256177 call!379594)))

(declare-fun e!3304505 () Bool)

(assert (=> b!5318707 (= e!3304505 e!3304503)))

(declare-fun b!5318708 () Bool)

(declare-fun res!2256175 () Bool)

(declare-fun e!3304509 () Bool)

(assert (=> b!5318708 (=> res!2256175 e!3304509)))

(assert (=> b!5318708 (= res!2256175 (not ((_ is Concat!23820) (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292)))))))))

(assert (=> b!5318708 (= e!3304505 e!3304509)))

(declare-fun b!5318709 () Bool)

(declare-fun e!3304507 () Bool)

(declare-fun e!3304504 () Bool)

(assert (=> b!5318709 (= e!3304507 e!3304504)))

(declare-fun res!2256173 () Bool)

(assert (=> b!5318709 (= res!2256173 (not (nullable!5144 (reg!15304 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))))

(assert (=> b!5318709 (=> (not res!2256173) (not e!3304504))))

(declare-fun b!5318710 () Bool)

(declare-fun e!3304508 () Bool)

(assert (=> b!5318710 (= e!3304508 e!3304507)))

(assert (=> b!5318710 (= c!924261 ((_ is Star!14975) (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(declare-fun d!1708481 () Bool)

(declare-fun res!2256176 () Bool)

(assert (=> d!1708481 (=> res!2256176 e!3304508)))

(assert (=> d!1708481 (= res!2256176 ((_ is ElementMatch!14975) (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(assert (=> d!1708481 (= (validRegex!6711 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))) e!3304508)))

(declare-fun b!5318706 () Bool)

(declare-fun e!3304506 () Bool)

(assert (=> b!5318706 (= e!3304506 call!379592)))

(declare-fun b!5318711 () Bool)

(assert (=> b!5318711 (= e!3304509 e!3304506)))

(declare-fun res!2256174 () Bool)

(assert (=> b!5318711 (=> (not res!2256174) (not e!3304506))))

(assert (=> b!5318711 (= res!2256174 call!379594)))

(declare-fun b!5318712 () Bool)

(assert (=> b!5318712 (= e!3304504 call!379593)))

(declare-fun bm!379589 () Bool)

(assert (=> bm!379589 (= call!379592 (validRegex!6711 (ite c!924262 (regTwo!30463 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))) (regTwo!30462 (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))))

(declare-fun b!5318713 () Bool)

(assert (=> b!5318713 (= e!3304507 e!3304505)))

(assert (=> b!5318713 (= c!924262 ((_ is Union!14975) (ite c!924052 (regTwo!30463 (regOne!30462 (regOne!30462 r!7292))) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))))))))

(assert (= (and d!1708481 (not res!2256176)) b!5318710))

(assert (= (and b!5318710 c!924261) b!5318709))

(assert (= (and b!5318710 (not c!924261)) b!5318713))

(assert (= (and b!5318709 res!2256173) b!5318712))

(assert (= (and b!5318713 c!924262) b!5318707))

(assert (= (and b!5318713 (not c!924262)) b!5318708))

(assert (= (and b!5318707 res!2256177) b!5318705))

(assert (= (and b!5318708 (not res!2256175)) b!5318711))

(assert (= (and b!5318711 res!2256174) b!5318706))

(assert (= (or b!5318705 b!5318706) bm!379589))

(assert (= (or b!5318707 b!5318711) bm!379588))

(assert (= (or b!5318712 bm!379588) bm!379587))

(declare-fun m!6354184 () Bool)

(assert (=> bm!379587 m!6354184))

(declare-fun m!6354186 () Bool)

(assert (=> b!5318709 m!6354186))

(declare-fun m!6354188 () Bool)

(assert (=> bm!379589 m!6354188))

(assert (=> bm!379472 d!1708481))

(declare-fun d!1708483 () Bool)

(assert (=> d!1708483 (= (isEmpty!33068 (tail!10497 (unfocusZipperList!417 zl!343))) ((_ is Nil!61100) (tail!10497 (unfocusZipperList!417 zl!343))))))

(assert (=> b!5317879 d!1708483))

(declare-fun d!1708485 () Bool)

(assert (=> d!1708485 (= (tail!10497 (unfocusZipperList!417 zl!343)) (t!374433 (unfocusZipperList!417 zl!343)))))

(assert (=> b!5317879 d!1708485))

(declare-fun bs!1232654 () Bool)

(declare-fun d!1708487 () Bool)

(assert (= bs!1232654 (and d!1708487 d!1708285)))

(declare-fun lambda!271205 () Int)

(assert (=> bs!1232654 (= lambda!271205 lambda!271167)))

(declare-fun bs!1232655 () Bool)

(assert (= bs!1232655 (and d!1708487 d!1708453)))

(assert (=> bs!1232655 (= lambda!271205 lambda!271202)))

(declare-fun bs!1232656 () Bool)

(assert (= bs!1232656 (and d!1708487 d!1708265)))

(assert (=> bs!1232656 (= lambda!271205 lambda!271158)))

(declare-fun bs!1232657 () Bool)

(assert (= bs!1232657 (and d!1708487 d!1708251)))

(assert (=> bs!1232657 (= lambda!271205 lambda!271145)))

(declare-fun bs!1232658 () Bool)

(assert (= bs!1232658 (and d!1708487 d!1708275)))

(assert (=> bs!1232658 (= lambda!271205 lambda!271165)))

(declare-fun bs!1232659 () Bool)

(assert (= bs!1232659 (and d!1708487 d!1708261)))

(assert (=> bs!1232659 (= lambda!271205 lambda!271151)))

(declare-fun bs!1232660 () Bool)

(assert (= bs!1232660 (and d!1708487 d!1708415)))

(assert (=> bs!1232660 (= lambda!271205 lambda!271201)))

(assert (=> d!1708487 (= (inv!80684 setElem!34227) (forall!14393 (exprs!4859 setElem!34227) lambda!271205))))

(declare-fun bs!1232661 () Bool)

(assert (= bs!1232661 d!1708487))

(declare-fun m!6354190 () Bool)

(assert (=> bs!1232661 m!6354190))

(assert (=> setNonEmpty!34227 d!1708487))

(declare-fun b!5318714 () Bool)

(declare-fun e!3304511 () Bool)

(declare-fun lt!2171584 () Bool)

(declare-fun call!379595 () Bool)

(assert (=> b!5318714 (= e!3304511 (= lt!2171584 call!379595))))

(declare-fun b!5318715 () Bool)

(declare-fun e!3304516 () Bool)

(assert (=> b!5318715 (= e!3304511 e!3304516)))

(declare-fun c!924263 () Bool)

(assert (=> b!5318715 (= c!924263 ((_ is EmptyLang!14975) (regOne!30462 r!7292)))))

(declare-fun b!5318716 () Bool)

(assert (=> b!5318716 (= e!3304516 (not lt!2171584))))

(declare-fun bm!379590 () Bool)

(assert (=> bm!379590 (= call!379595 (isEmpty!33071 (_1!35477 (get!21015 lt!2171529))))))

(declare-fun b!5318717 () Bool)

(declare-fun e!3304513 () Bool)

(assert (=> b!5318717 (= e!3304513 (matchR!7160 (derivativeStep!4162 (regOne!30462 r!7292) (head!11402 (_1!35477 (get!21015 lt!2171529)))) (tail!10499 (_1!35477 (get!21015 lt!2171529)))))))

(declare-fun b!5318718 () Bool)

(declare-fun res!2256180 () Bool)

(declare-fun e!3304512 () Bool)

(assert (=> b!5318718 (=> res!2256180 e!3304512)))

(assert (=> b!5318718 (= res!2256180 (not (isEmpty!33071 (tail!10499 (_1!35477 (get!21015 lt!2171529))))))))

(declare-fun b!5318719 () Bool)

(declare-fun res!2256182 () Bool)

(declare-fun e!3304514 () Bool)

(assert (=> b!5318719 (=> (not res!2256182) (not e!3304514))))

(assert (=> b!5318719 (= res!2256182 (isEmpty!33071 (tail!10499 (_1!35477 (get!21015 lt!2171529)))))))

(declare-fun b!5318720 () Bool)

(declare-fun e!3304510 () Bool)

(assert (=> b!5318720 (= e!3304510 e!3304512)))

(declare-fun res!2256184 () Bool)

(assert (=> b!5318720 (=> res!2256184 e!3304512)))

(assert (=> b!5318720 (= res!2256184 call!379595)))

(declare-fun b!5318722 () Bool)

(declare-fun res!2256181 () Bool)

(declare-fun e!3304515 () Bool)

(assert (=> b!5318722 (=> res!2256181 e!3304515)))

(assert (=> b!5318722 (= res!2256181 e!3304514)))

(declare-fun res!2256183 () Bool)

(assert (=> b!5318722 (=> (not res!2256183) (not e!3304514))))

(assert (=> b!5318722 (= res!2256183 lt!2171584)))

(declare-fun b!5318723 () Bool)

(assert (=> b!5318723 (= e!3304514 (= (head!11402 (_1!35477 (get!21015 lt!2171529))) (c!923983 (regOne!30462 r!7292))))))

(declare-fun b!5318724 () Bool)

(assert (=> b!5318724 (= e!3304515 e!3304510)))

(declare-fun res!2256179 () Bool)

(assert (=> b!5318724 (=> (not res!2256179) (not e!3304510))))

(assert (=> b!5318724 (= res!2256179 (not lt!2171584))))

(declare-fun b!5318725 () Bool)

(assert (=> b!5318725 (= e!3304513 (nullable!5144 (regOne!30462 r!7292)))))

(declare-fun b!5318726 () Bool)

(declare-fun res!2256178 () Bool)

(assert (=> b!5318726 (=> (not res!2256178) (not e!3304514))))

(assert (=> b!5318726 (= res!2256178 (not call!379595))))

(declare-fun b!5318727 () Bool)

(assert (=> b!5318727 (= e!3304512 (not (= (head!11402 (_1!35477 (get!21015 lt!2171529))) (c!923983 (regOne!30462 r!7292)))))))

(declare-fun d!1708489 () Bool)

(assert (=> d!1708489 e!3304511))

(declare-fun c!924265 () Bool)

(assert (=> d!1708489 (= c!924265 ((_ is EmptyExpr!14975) (regOne!30462 r!7292)))))

(assert (=> d!1708489 (= lt!2171584 e!3304513)))

(declare-fun c!924264 () Bool)

(assert (=> d!1708489 (= c!924264 (isEmpty!33071 (_1!35477 (get!21015 lt!2171529))))))

(assert (=> d!1708489 (validRegex!6711 (regOne!30462 r!7292))))

(assert (=> d!1708489 (= (matchR!7160 (regOne!30462 r!7292) (_1!35477 (get!21015 lt!2171529))) lt!2171584)))

(declare-fun b!5318721 () Bool)

(declare-fun res!2256185 () Bool)

(assert (=> b!5318721 (=> res!2256185 e!3304515)))

(assert (=> b!5318721 (= res!2256185 (not ((_ is ElementMatch!14975) (regOne!30462 r!7292))))))

(assert (=> b!5318721 (= e!3304516 e!3304515)))

(assert (= (and d!1708489 c!924264) b!5318725))

(assert (= (and d!1708489 (not c!924264)) b!5318717))

(assert (= (and d!1708489 c!924265) b!5318714))

(assert (= (and d!1708489 (not c!924265)) b!5318715))

(assert (= (and b!5318715 c!924263) b!5318716))

(assert (= (and b!5318715 (not c!924263)) b!5318721))

(assert (= (and b!5318721 (not res!2256185)) b!5318722))

(assert (= (and b!5318722 res!2256183) b!5318726))

(assert (= (and b!5318726 res!2256178) b!5318719))

(assert (= (and b!5318719 res!2256182) b!5318723))

(assert (= (and b!5318722 (not res!2256181)) b!5318724))

(assert (= (and b!5318724 res!2256179) b!5318720))

(assert (= (and b!5318720 (not res!2256184)) b!5318718))

(assert (= (and b!5318718 (not res!2256180)) b!5318727))

(assert (= (or b!5318714 b!5318720 b!5318726) bm!379590))

(assert (=> b!5318725 m!6353970))

(declare-fun m!6354192 () Bool)

(assert (=> b!5318723 m!6354192))

(declare-fun m!6354194 () Bool)

(assert (=> b!5318718 m!6354194))

(assert (=> b!5318718 m!6354194))

(declare-fun m!6354196 () Bool)

(assert (=> b!5318718 m!6354196))

(assert (=> b!5318727 m!6354192))

(declare-fun m!6354198 () Bool)

(assert (=> bm!379590 m!6354198))

(assert (=> b!5318717 m!6354192))

(assert (=> b!5318717 m!6354192))

(declare-fun m!6354200 () Bool)

(assert (=> b!5318717 m!6354200))

(assert (=> b!5318717 m!6354194))

(assert (=> b!5318717 m!6354200))

(assert (=> b!5318717 m!6354194))

(declare-fun m!6354202 () Bool)

(assert (=> b!5318717 m!6354202))

(assert (=> d!1708489 m!6354198))

(assert (=> d!1708489 m!6353710))

(assert (=> b!5318719 m!6354194))

(assert (=> b!5318719 m!6354194))

(assert (=> b!5318719 m!6354196))

(assert (=> b!5318048 d!1708489))

(assert (=> b!5318048 d!1708409))

(declare-fun d!1708491 () Bool)

(assert (=> d!1708491 (= (isEmpty!33071 (tail!10499 s!2326)) ((_ is Nil!61102) (tail!10499 s!2326)))))

(assert (=> b!5318347 d!1708491))

(assert (=> b!5318347 d!1708443))

(declare-fun c!924266 () Bool)

(declare-fun bm!379591 () Bool)

(declare-fun c!924267 () Bool)

(declare-fun call!379597 () Bool)

(assert (=> bm!379591 (= call!379597 (validRegex!6711 (ite c!924266 (reg!15304 lt!2171519) (ite c!924267 (regOne!30463 lt!2171519) (regOne!30462 lt!2171519)))))))

(declare-fun b!5318728 () Bool)

(declare-fun e!3304517 () Bool)

(declare-fun call!379596 () Bool)

(assert (=> b!5318728 (= e!3304517 call!379596)))

(declare-fun bm!379592 () Bool)

(declare-fun call!379598 () Bool)

(assert (=> bm!379592 (= call!379598 call!379597)))

(declare-fun b!5318730 () Bool)

(declare-fun res!2256190 () Bool)

(assert (=> b!5318730 (=> (not res!2256190) (not e!3304517))))

(assert (=> b!5318730 (= res!2256190 call!379598)))

(declare-fun e!3304519 () Bool)

(assert (=> b!5318730 (= e!3304519 e!3304517)))

(declare-fun b!5318731 () Bool)

(declare-fun res!2256188 () Bool)

(declare-fun e!3304523 () Bool)

(assert (=> b!5318731 (=> res!2256188 e!3304523)))

(assert (=> b!5318731 (= res!2256188 (not ((_ is Concat!23820) lt!2171519)))))

(assert (=> b!5318731 (= e!3304519 e!3304523)))

(declare-fun b!5318732 () Bool)

(declare-fun e!3304521 () Bool)

(declare-fun e!3304518 () Bool)

(assert (=> b!5318732 (= e!3304521 e!3304518)))

(declare-fun res!2256186 () Bool)

(assert (=> b!5318732 (= res!2256186 (not (nullable!5144 (reg!15304 lt!2171519))))))

(assert (=> b!5318732 (=> (not res!2256186) (not e!3304518))))

(declare-fun b!5318733 () Bool)

(declare-fun e!3304522 () Bool)

(assert (=> b!5318733 (= e!3304522 e!3304521)))

(assert (=> b!5318733 (= c!924266 ((_ is Star!14975) lt!2171519))))

(declare-fun d!1708493 () Bool)

(declare-fun res!2256189 () Bool)

(assert (=> d!1708493 (=> res!2256189 e!3304522)))

(assert (=> d!1708493 (= res!2256189 ((_ is ElementMatch!14975) lt!2171519))))

(assert (=> d!1708493 (= (validRegex!6711 lt!2171519) e!3304522)))

(declare-fun b!5318729 () Bool)

(declare-fun e!3304520 () Bool)

(assert (=> b!5318729 (= e!3304520 call!379596)))

(declare-fun b!5318734 () Bool)

(assert (=> b!5318734 (= e!3304523 e!3304520)))

(declare-fun res!2256187 () Bool)

(assert (=> b!5318734 (=> (not res!2256187) (not e!3304520))))

(assert (=> b!5318734 (= res!2256187 call!379598)))

(declare-fun b!5318735 () Bool)

(assert (=> b!5318735 (= e!3304518 call!379597)))

(declare-fun bm!379593 () Bool)

(assert (=> bm!379593 (= call!379596 (validRegex!6711 (ite c!924267 (regTwo!30463 lt!2171519) (regTwo!30462 lt!2171519))))))

(declare-fun b!5318736 () Bool)

(assert (=> b!5318736 (= e!3304521 e!3304519)))

(assert (=> b!5318736 (= c!924267 ((_ is Union!14975) lt!2171519))))

(assert (= (and d!1708493 (not res!2256189)) b!5318733))

(assert (= (and b!5318733 c!924266) b!5318732))

(assert (= (and b!5318733 (not c!924266)) b!5318736))

(assert (= (and b!5318732 res!2256186) b!5318735))

(assert (= (and b!5318736 c!924267) b!5318730))

(assert (= (and b!5318736 (not c!924267)) b!5318731))

(assert (= (and b!5318730 res!2256190) b!5318728))

(assert (= (and b!5318731 (not res!2256188)) b!5318734))

(assert (= (and b!5318734 res!2256187) b!5318729))

(assert (= (or b!5318728 b!5318729) bm!379593))

(assert (= (or b!5318730 b!5318734) bm!379592))

(assert (= (or b!5318735 bm!379592) bm!379591))

(declare-fun m!6354204 () Bool)

(assert (=> bm!379591 m!6354204))

(declare-fun m!6354206 () Bool)

(assert (=> b!5318732 m!6354206))

(declare-fun m!6354208 () Bool)

(assert (=> bm!379593 m!6354208))

(assert (=> d!1708287 d!1708493))

(assert (=> d!1708287 d!1708261))

(assert (=> d!1708287 d!1708265))

(declare-fun d!1708495 () Bool)

(declare-fun c!924270 () Bool)

(assert (=> d!1708495 (= c!924270 ((_ is Nil!61101) lt!2171547))))

(declare-fun e!3304526 () (InoxSet Context!8718))

(assert (=> d!1708495 (= (content!10890 lt!2171547) e!3304526)))

(declare-fun b!5318741 () Bool)

(assert (=> b!5318741 (= e!3304526 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318742 () Bool)

(assert (=> b!5318742 (= e!3304526 ((_ map or) (store ((as const (Array Context!8718 Bool)) false) (h!67549 lt!2171547) true) (content!10890 (t!374434 lt!2171547))))))

(assert (= (and d!1708495 c!924270) b!5318741))

(assert (= (and d!1708495 (not c!924270)) b!5318742))

(declare-fun m!6354210 () Bool)

(assert (=> b!5318742 m!6354210))

(declare-fun m!6354212 () Bool)

(assert (=> b!5318742 m!6354212))

(assert (=> b!5318159 d!1708495))

(declare-fun call!379599 () (InoxSet Context!8718))

(declare-fun e!3304527 () (InoxSet Context!8718))

(declare-fun b!5318743 () Bool)

(assert (=> b!5318743 (= e!3304527 ((_ map or) call!379599 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476)))))) (h!67550 s!2326))))))

(declare-fun b!5318744 () Bool)

(declare-fun e!3304529 () (InoxSet Context!8718))

(assert (=> b!5318744 (= e!3304529 call!379599)))

(declare-fun b!5318745 () Bool)

(assert (=> b!5318745 (= e!3304527 e!3304529)))

(declare-fun c!924271 () Bool)

(assert (=> b!5318745 (= c!924271 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476))))))))

(declare-fun d!1708497 () Bool)

(declare-fun c!924272 () Bool)

(declare-fun e!3304528 () Bool)

(assert (=> d!1708497 (= c!924272 e!3304528)))

(declare-fun res!2256191 () Bool)

(assert (=> d!1708497 (=> (not res!2256191) (not e!3304528))))

(assert (=> d!1708497 (= res!2256191 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476))))))))

(assert (=> d!1708497 (= (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 lt!2171476))) (h!67550 s!2326)) e!3304527)))

(declare-fun b!5318746 () Bool)

(assert (=> b!5318746 (= e!3304528 (nullable!5144 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476)))))))))

(declare-fun b!5318747 () Bool)

(assert (=> b!5318747 (= e!3304529 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379594 () Bool)

(assert (=> bm!379594 (= call!379599 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476))))) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476)))))) (h!67550 s!2326)))))

(assert (= (and d!1708497 res!2256191) b!5318746))

(assert (= (and d!1708497 c!924272) b!5318743))

(assert (= (and d!1708497 (not c!924272)) b!5318745))

(assert (= (and b!5318745 c!924271) b!5318744))

(assert (= (and b!5318745 (not c!924271)) b!5318747))

(assert (= (or b!5318743 b!5318744) bm!379594))

(declare-fun m!6354214 () Bool)

(assert (=> b!5318743 m!6354214))

(declare-fun m!6354216 () Bool)

(assert (=> b!5318746 m!6354216))

(declare-fun m!6354218 () Bool)

(assert (=> bm!379594 m!6354218))

(assert (=> b!5317904 d!1708497))

(assert (=> d!1708309 d!1708289))

(assert (=> d!1708309 d!1708401))

(assert (=> d!1708309 d!1708327))

(declare-fun bs!1232662 () Bool)

(declare-fun d!1708499 () Bool)

(assert (= bs!1232662 (and d!1708499 b!5318463)))

(declare-fun lambda!271208 () Int)

(assert (=> bs!1232662 (not (= lambda!271208 lambda!271199))))

(declare-fun bs!1232663 () Bool)

(assert (= bs!1232663 (and d!1708499 d!1708311)))

(assert (=> bs!1232663 (not (= lambda!271208 lambda!271183))))

(declare-fun bs!1232664 () Bool)

(assert (= bs!1232664 (and d!1708499 b!5318241)))

(assert (=> bs!1232664 (not (= lambda!271208 lambda!271194))))

(declare-fun bs!1232665 () Bool)

(assert (= bs!1232665 (and d!1708499 b!5317690)))

(assert (=> bs!1232665 (not (= lambda!271208 lambda!271138))))

(assert (=> bs!1232663 (= lambda!271208 lambda!271182)))

(declare-fun bs!1232666 () Bool)

(assert (= bs!1232666 (and d!1708499 b!5318462)))

(assert (=> bs!1232666 (not (= lambda!271208 lambda!271200))))

(declare-fun bs!1232667 () Bool)

(assert (= bs!1232667 (and d!1708499 b!5318240)))

(assert (=> bs!1232667 (not (= lambda!271208 lambda!271195))))

(assert (=> bs!1232665 (= lambda!271208 lambda!271137)))

(declare-fun bs!1232668 () Bool)

(assert (= bs!1232668 (and d!1708499 d!1708309)))

(assert (=> bs!1232668 (= lambda!271208 lambda!271176)))

(declare-fun bs!1232669 () Bool)

(assert (= bs!1232669 (and d!1708499 b!5318672)))

(assert (=> bs!1232669 (not (= lambda!271208 lambda!271204))))

(declare-fun bs!1232670 () Bool)

(assert (= bs!1232670 (and d!1708499 b!5318673)))

(assert (=> bs!1232670 (not (= lambda!271208 lambda!271203))))

(assert (=> d!1708499 true))

(assert (=> d!1708499 true))

(assert (=> d!1708499 true))

(assert (=> d!1708499 (= (isDefined!11789 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326)) (Exists!2156 lambda!271208))))

(assert (=> d!1708499 true))

(declare-fun _$89!1513 () Unit!153418)

(assert (=> d!1708499 (= (choose!39802 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326) _$89!1513)))

(declare-fun bs!1232671 () Bool)

(assert (= bs!1232671 d!1708499))

(assert (=> bs!1232671 m!6353444))

(assert (=> bs!1232671 m!6353444))

(assert (=> bs!1232671 m!6353446))

(declare-fun m!6354220 () Bool)

(assert (=> bs!1232671 m!6354220))

(assert (=> d!1708309 d!1708499))

(declare-fun d!1708501 () Bool)

(assert (=> d!1708501 (= (Exists!2156 lambda!271176) (choose!39801 lambda!271176))))

(declare-fun bs!1232672 () Bool)

(assert (= bs!1232672 d!1708501))

(declare-fun m!6354222 () Bool)

(assert (=> bs!1232672 m!6354222))

(assert (=> d!1708309 d!1708501))

(declare-fun d!1708503 () Bool)

(declare-fun res!2256200 () Bool)

(declare-fun e!3304536 () Bool)

(assert (=> d!1708503 (=> res!2256200 e!3304536)))

(assert (=> d!1708503 (= res!2256200 ((_ is Nil!61101) lt!2171547))))

(assert (=> d!1708503 (= (noDuplicate!1296 lt!2171547) e!3304536)))

(declare-fun b!5318756 () Bool)

(declare-fun e!3304537 () Bool)

(assert (=> b!5318756 (= e!3304536 e!3304537)))

(declare-fun res!2256201 () Bool)

(assert (=> b!5318756 (=> (not res!2256201) (not e!3304537))))

(declare-fun contains!19708 (List!61225 Context!8718) Bool)

(assert (=> b!5318756 (= res!2256201 (not (contains!19708 (t!374434 lt!2171547) (h!67549 lt!2171547))))))

(declare-fun b!5318757 () Bool)

(assert (=> b!5318757 (= e!3304537 (noDuplicate!1296 (t!374434 lt!2171547)))))

(assert (= (and d!1708503 (not res!2256200)) b!5318756))

(assert (= (and b!5318756 res!2256201) b!5318757))

(declare-fun m!6354224 () Bool)

(assert (=> b!5318756 m!6354224))

(declare-fun m!6354226 () Bool)

(assert (=> b!5318757 m!6354226))

(assert (=> d!1708335 d!1708503))

(declare-fun d!1708505 () Bool)

(declare-fun e!3304546 () Bool)

(assert (=> d!1708505 e!3304546))

(declare-fun res!2256207 () Bool)

(assert (=> d!1708505 (=> (not res!2256207) (not e!3304546))))

(declare-fun res!2256206 () List!61225)

(assert (=> d!1708505 (= res!2256207 (noDuplicate!1296 res!2256206))))

(declare-fun e!3304545 () Bool)

(assert (=> d!1708505 e!3304545))

(assert (=> d!1708505 (= (choose!39804 z!1189) res!2256206)))

(declare-fun b!5318765 () Bool)

(declare-fun e!3304544 () Bool)

(declare-fun tp!1481110 () Bool)

(assert (=> b!5318765 (= e!3304544 tp!1481110)))

(declare-fun b!5318764 () Bool)

(declare-fun tp!1481111 () Bool)

(assert (=> b!5318764 (= e!3304545 (and (inv!80684 (h!67549 res!2256206)) e!3304544 tp!1481111))))

(declare-fun b!5318766 () Bool)

(assert (=> b!5318766 (= e!3304546 (= (content!10890 res!2256206) z!1189))))

(assert (= b!5318764 b!5318765))

(assert (= (and d!1708505 ((_ is Cons!61101) res!2256206)) b!5318764))

(assert (= (and d!1708505 res!2256207) b!5318766))

(declare-fun m!6354228 () Bool)

(assert (=> d!1708505 m!6354228))

(declare-fun m!6354230 () Bool)

(assert (=> b!5318764 m!6354230))

(declare-fun m!6354232 () Bool)

(assert (=> b!5318766 m!6354232))

(assert (=> d!1708335 d!1708505))

(assert (=> b!5318352 d!1708441))

(declare-fun c!924275 () Bool)

(declare-fun bm!379595 () Bool)

(declare-fun call!379600 () List!61224)

(declare-fun c!924277 () Bool)

(assert (=> bm!379595 (= call!379600 ($colon$colon!1392 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171476)))) (ite (or c!924277 c!924275) (regTwo!30462 (h!67548 (exprs!4859 lt!2171476))) (h!67548 (exprs!4859 lt!2171476)))))))

(declare-fun b!5318767 () Bool)

(declare-fun e!3304551 () (InoxSet Context!8718))

(declare-fun e!3304552 () (InoxSet Context!8718))

(assert (=> b!5318767 (= e!3304551 e!3304552)))

(declare-fun c!924274 () Bool)

(assert (=> b!5318767 (= c!924274 ((_ is Union!14975) (h!67548 (exprs!4859 lt!2171476))))))

(declare-fun b!5318768 () Bool)

(declare-fun e!3304548 () Bool)

(assert (=> b!5318768 (= c!924277 e!3304548)))

(declare-fun res!2256208 () Bool)

(assert (=> b!5318768 (=> (not res!2256208) (not e!3304548))))

(assert (=> b!5318768 (= res!2256208 ((_ is Concat!23820) (h!67548 (exprs!4859 lt!2171476))))))

(declare-fun e!3304550 () (InoxSet Context!8718))

(assert (=> b!5318768 (= e!3304552 e!3304550)))

(declare-fun bm!379596 () Bool)

(declare-fun call!379604 () (InoxSet Context!8718))

(declare-fun call!379605 () (InoxSet Context!8718))

(assert (=> bm!379596 (= call!379604 call!379605)))

(declare-fun b!5318769 () Bool)

(declare-fun call!379602 () (InoxSet Context!8718))

(assert (=> b!5318769 (= e!3304550 ((_ map or) call!379602 call!379604))))

(declare-fun b!5318770 () Bool)

(assert (=> b!5318770 (= e!3304551 (store ((as const (Array Context!8718 Bool)) false) (Context!8719 (t!374433 (exprs!4859 lt!2171476))) true))))

(declare-fun d!1708507 () Bool)

(declare-fun c!924276 () Bool)

(assert (=> d!1708507 (= c!924276 (and ((_ is ElementMatch!14975) (h!67548 (exprs!4859 lt!2171476))) (= (c!923983 (h!67548 (exprs!4859 lt!2171476))) (h!67550 s!2326))))))

(assert (=> d!1708507 (= (derivationStepZipperDown!423 (h!67548 (exprs!4859 lt!2171476)) (Context!8719 (t!374433 (exprs!4859 lt!2171476))) (h!67550 s!2326)) e!3304551)))

(declare-fun b!5318771 () Bool)

(assert (=> b!5318771 (= e!3304552 ((_ map or) call!379605 call!379602))))

(declare-fun b!5318772 () Bool)

(declare-fun e!3304549 () (InoxSet Context!8718))

(assert (=> b!5318772 (= e!3304549 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318773 () Bool)

(declare-fun e!3304547 () (InoxSet Context!8718))

(declare-fun call!379603 () (InoxSet Context!8718))

(assert (=> b!5318773 (= e!3304547 call!379603)))

(declare-fun bm!379597 () Bool)

(assert (=> bm!379597 (= call!379603 call!379604)))

(declare-fun bm!379598 () Bool)

(declare-fun call!379601 () List!61224)

(assert (=> bm!379598 (= call!379601 call!379600)))

(declare-fun b!5318774 () Bool)

(assert (=> b!5318774 (= e!3304550 e!3304547)))

(assert (=> b!5318774 (= c!924275 ((_ is Concat!23820) (h!67548 (exprs!4859 lt!2171476))))))

(declare-fun b!5318775 () Bool)

(assert (=> b!5318775 (= e!3304548 (nullable!5144 (regOne!30462 (h!67548 (exprs!4859 lt!2171476)))))))

(declare-fun b!5318776 () Bool)

(assert (=> b!5318776 (= e!3304549 call!379603)))

(declare-fun bm!379599 () Bool)

(assert (=> bm!379599 (= call!379605 (derivationStepZipperDown!423 (ite c!924274 (regOne!30463 (h!67548 (exprs!4859 lt!2171476))) (ite c!924277 (regTwo!30462 (h!67548 (exprs!4859 lt!2171476))) (ite c!924275 (regOne!30462 (h!67548 (exprs!4859 lt!2171476))) (reg!15304 (h!67548 (exprs!4859 lt!2171476)))))) (ite (or c!924274 c!924277) (Context!8719 (t!374433 (exprs!4859 lt!2171476))) (Context!8719 call!379601)) (h!67550 s!2326)))))

(declare-fun b!5318777 () Bool)

(declare-fun c!924273 () Bool)

(assert (=> b!5318777 (= c!924273 ((_ is Star!14975) (h!67548 (exprs!4859 lt!2171476))))))

(assert (=> b!5318777 (= e!3304547 e!3304549)))

(declare-fun bm!379600 () Bool)

(assert (=> bm!379600 (= call!379602 (derivationStepZipperDown!423 (ite c!924274 (regTwo!30463 (h!67548 (exprs!4859 lt!2171476))) (regOne!30462 (h!67548 (exprs!4859 lt!2171476)))) (ite c!924274 (Context!8719 (t!374433 (exprs!4859 lt!2171476))) (Context!8719 call!379600)) (h!67550 s!2326)))))

(assert (= (and d!1708507 c!924276) b!5318770))

(assert (= (and d!1708507 (not c!924276)) b!5318767))

(assert (= (and b!5318767 c!924274) b!5318771))

(assert (= (and b!5318767 (not c!924274)) b!5318768))

(assert (= (and b!5318768 res!2256208) b!5318775))

(assert (= (and b!5318768 c!924277) b!5318769))

(assert (= (and b!5318768 (not c!924277)) b!5318774))

(assert (= (and b!5318774 c!924275) b!5318773))

(assert (= (and b!5318774 (not c!924275)) b!5318777))

(assert (= (and b!5318777 c!924273) b!5318776))

(assert (= (and b!5318777 (not c!924273)) b!5318772))

(assert (= (or b!5318773 b!5318776) bm!379598))

(assert (= (or b!5318773 b!5318776) bm!379597))

(assert (= (or b!5318769 bm!379598) bm!379595))

(assert (= (or b!5318769 bm!379597) bm!379596))

(assert (= (or b!5318771 b!5318769) bm!379600))

(assert (= (or b!5318771 bm!379596) bm!379599))

(declare-fun m!6354234 () Bool)

(assert (=> b!5318770 m!6354234))

(declare-fun m!6354236 () Bool)

(assert (=> bm!379600 m!6354236))

(declare-fun m!6354238 () Bool)

(assert (=> bm!379595 m!6354238))

(declare-fun m!6354240 () Bool)

(assert (=> bm!379599 m!6354240))

(declare-fun m!6354242 () Bool)

(assert (=> b!5318775 m!6354242))

(assert (=> bm!379473 d!1708507))

(assert (=> b!5318348 d!1708491))

(assert (=> b!5318348 d!1708443))

(assert (=> b!5318356 d!1708441))

(declare-fun c!924282 () Bool)

(declare-fun bm!379601 () Bool)

(declare-fun c!924280 () Bool)

(declare-fun call!379606 () List!61224)

(assert (=> bm!379601 (= call!379606 ($colon$colon!1392 (exprs!4859 (ite c!924018 lt!2171466 (Context!8719 call!379459))) (ite (or c!924282 c!924280) (regTwo!30462 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))))))

(declare-fun b!5318778 () Bool)

(declare-fun e!3304557 () (InoxSet Context!8718))

(declare-fun e!3304558 () (InoxSet Context!8718))

(assert (=> b!5318778 (= e!3304557 e!3304558)))

(declare-fun c!924279 () Bool)

(assert (=> b!5318778 (= c!924279 ((_ is Union!14975) (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun b!5318779 () Bool)

(declare-fun e!3304554 () Bool)

(assert (=> b!5318779 (= c!924282 e!3304554)))

(declare-fun res!2256209 () Bool)

(assert (=> b!5318779 (=> (not res!2256209) (not e!3304554))))

(assert (=> b!5318779 (= res!2256209 ((_ is Concat!23820) (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun e!3304556 () (InoxSet Context!8718))

(assert (=> b!5318779 (= e!3304558 e!3304556)))

(declare-fun bm!379602 () Bool)

(declare-fun call!379610 () (InoxSet Context!8718))

(declare-fun call!379611 () (InoxSet Context!8718))

(assert (=> bm!379602 (= call!379610 call!379611)))

(declare-fun b!5318780 () Bool)

(declare-fun call!379608 () (InoxSet Context!8718))

(assert (=> b!5318780 (= e!3304556 ((_ map or) call!379608 call!379610))))

(declare-fun b!5318781 () Bool)

(assert (=> b!5318781 (= e!3304557 (store ((as const (Array Context!8718 Bool)) false) (ite c!924018 lt!2171466 (Context!8719 call!379459)) true))))

(declare-fun c!924281 () Bool)

(declare-fun d!1708509 () Bool)

(assert (=> d!1708509 (= c!924281 (and ((_ is ElementMatch!14975) (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (= (c!923983 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (h!67550 s!2326))))))

(assert (=> d!1708509 (= (derivationStepZipperDown!423 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))) (ite c!924018 lt!2171466 (Context!8719 call!379459)) (h!67550 s!2326)) e!3304557)))

(declare-fun b!5318782 () Bool)

(assert (=> b!5318782 (= e!3304558 ((_ map or) call!379611 call!379608))))

(declare-fun b!5318783 () Bool)

(declare-fun e!3304555 () (InoxSet Context!8718))

(assert (=> b!5318783 (= e!3304555 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318784 () Bool)

(declare-fun e!3304553 () (InoxSet Context!8718))

(declare-fun call!379609 () (InoxSet Context!8718))

(assert (=> b!5318784 (= e!3304553 call!379609)))

(declare-fun bm!379603 () Bool)

(assert (=> bm!379603 (= call!379609 call!379610)))

(declare-fun bm!379604 () Bool)

(declare-fun call!379607 () List!61224)

(assert (=> bm!379604 (= call!379607 call!379606)))

(declare-fun b!5318785 () Bool)

(assert (=> b!5318785 (= e!3304556 e!3304553)))

(assert (=> b!5318785 (= c!924280 ((_ is Concat!23820) (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun b!5318786 () Bool)

(assert (=> b!5318786 (= e!3304554 (nullable!5144 (regOne!30462 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))))))

(declare-fun b!5318787 () Bool)

(assert (=> b!5318787 (= e!3304555 call!379609)))

(declare-fun bm!379605 () Bool)

(assert (=> bm!379605 (= call!379611 (derivationStepZipperDown!423 (ite c!924279 (regOne!30463 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (ite c!924282 (regTwo!30462 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (ite c!924280 (regOne!30462 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (reg!15304 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))))) (ite (or c!924279 c!924282) (ite c!924018 lt!2171466 (Context!8719 call!379459)) (Context!8719 call!379607)) (h!67550 s!2326)))))

(declare-fun b!5318788 () Bool)

(declare-fun c!924278 () Bool)

(assert (=> b!5318788 (= c!924278 ((_ is Star!14975) (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(assert (=> b!5318788 (= e!3304553 e!3304555)))

(declare-fun bm!379606 () Bool)

(assert (=> bm!379606 (= call!379608 (derivationStepZipperDown!423 (ite c!924279 (regTwo!30463 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))) (regOne!30462 (ite c!924018 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))) (ite c!924279 (ite c!924018 lt!2171466 (Context!8719 call!379459)) (Context!8719 call!379606)) (h!67550 s!2326)))))

(assert (= (and d!1708509 c!924281) b!5318781))

(assert (= (and d!1708509 (not c!924281)) b!5318778))

(assert (= (and b!5318778 c!924279) b!5318782))

(assert (= (and b!5318778 (not c!924279)) b!5318779))

(assert (= (and b!5318779 res!2256209) b!5318786))

(assert (= (and b!5318779 c!924282) b!5318780))

(assert (= (and b!5318779 (not c!924282)) b!5318785))

(assert (= (and b!5318785 c!924280) b!5318784))

(assert (= (and b!5318785 (not c!924280)) b!5318788))

(assert (= (and b!5318788 c!924278) b!5318787))

(assert (= (and b!5318788 (not c!924278)) b!5318783))

(assert (= (or b!5318784 b!5318787) bm!379604))

(assert (= (or b!5318784 b!5318787) bm!379603))

(assert (= (or b!5318780 bm!379604) bm!379601))

(assert (= (or b!5318780 bm!379603) bm!379602))

(assert (= (or b!5318782 b!5318780) bm!379606))

(assert (= (or b!5318782 bm!379602) bm!379605))

(declare-fun m!6354244 () Bool)

(assert (=> b!5318781 m!6354244))

(declare-fun m!6354246 () Bool)

(assert (=> bm!379606 m!6354246))

(declare-fun m!6354248 () Bool)

(assert (=> bm!379601 m!6354248))

(declare-fun m!6354250 () Bool)

(assert (=> bm!379605 m!6354250))

(declare-fun m!6354252 () Bool)

(assert (=> b!5318786 m!6354252))

(assert (=> bm!379459 d!1708509))

(declare-fun bm!379607 () Bool)

(declare-fun call!379613 () Bool)

(declare-fun c!924283 () Bool)

(assert (=> bm!379607 (= call!379613 (nullable!5144 (ite c!924283 (regOne!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun bm!379608 () Bool)

(declare-fun call!379612 () Bool)

(assert (=> bm!379608 (= call!379612 (nullable!5144 (ite c!924283 (regTwo!30463 (h!67548 (exprs!4859 (h!67549 zl!343)))) (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun b!5318790 () Bool)

(declare-fun e!3304561 () Bool)

(assert (=> b!5318790 (= e!3304561 call!379612)))

(declare-fun b!5318791 () Bool)

(declare-fun e!3304562 () Bool)

(declare-fun e!3304560 () Bool)

(assert (=> b!5318791 (= e!3304562 e!3304560)))

(declare-fun res!2256214 () Bool)

(assert (=> b!5318791 (=> (not res!2256214) (not e!3304560))))

(assert (=> b!5318791 (= res!2256214 (and (not ((_ is EmptyLang!14975) (h!67548 (exprs!4859 (h!67549 zl!343))))) (not ((_ is ElementMatch!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun b!5318792 () Bool)

(declare-fun e!3304559 () Bool)

(assert (=> b!5318792 (= e!3304560 e!3304559)))

(declare-fun res!2256213 () Bool)

(assert (=> b!5318792 (=> res!2256213 e!3304559)))

(assert (=> b!5318792 (= res!2256213 ((_ is Star!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318793 () Bool)

(declare-fun e!3304564 () Bool)

(assert (=> b!5318793 (= e!3304559 e!3304564)))

(assert (=> b!5318793 (= c!924283 ((_ is Union!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun d!1708511 () Bool)

(declare-fun res!2256210 () Bool)

(assert (=> d!1708511 (=> res!2256210 e!3304562)))

(assert (=> d!1708511 (= res!2256210 ((_ is EmptyExpr!14975) (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> d!1708511 (= (nullableFct!1494 (h!67548 (exprs!4859 (h!67549 zl!343)))) e!3304562)))

(declare-fun b!5318789 () Bool)

(declare-fun e!3304563 () Bool)

(assert (=> b!5318789 (= e!3304564 e!3304563)))

(declare-fun res!2256211 () Bool)

(assert (=> b!5318789 (= res!2256211 call!379613)))

(assert (=> b!5318789 (=> (not res!2256211) (not e!3304563))))

(declare-fun b!5318794 () Bool)

(assert (=> b!5318794 (= e!3304563 call!379612)))

(declare-fun b!5318795 () Bool)

(assert (=> b!5318795 (= e!3304564 e!3304561)))

(declare-fun res!2256212 () Bool)

(assert (=> b!5318795 (= res!2256212 call!379613)))

(assert (=> b!5318795 (=> res!2256212 e!3304561)))

(assert (= (and d!1708511 (not res!2256210)) b!5318791))

(assert (= (and b!5318791 res!2256214) b!5318792))

(assert (= (and b!5318792 (not res!2256213)) b!5318793))

(assert (= (and b!5318793 c!924283) b!5318795))

(assert (= (and b!5318793 (not c!924283)) b!5318789))

(assert (= (and b!5318795 (not res!2256212)) b!5318790))

(assert (= (and b!5318789 res!2256211) b!5318794))

(assert (= (or b!5318790 b!5318794) bm!379608))

(assert (= (or b!5318795 b!5318789) bm!379607))

(declare-fun m!6354254 () Bool)

(assert (=> bm!379607 m!6354254))

(declare-fun m!6354256 () Bool)

(assert (=> bm!379608 m!6354256))

(assert (=> d!1708245 d!1708511))

(declare-fun d!1708513 () Bool)

(assert (=> d!1708513 (= (nullable!5144 (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))) (nullableFct!1494 (regOne!30462 (regOne!30462 (regOne!30462 r!7292)))))))

(declare-fun bs!1232673 () Bool)

(assert (= bs!1232673 d!1708513))

(declare-fun m!6354258 () Bool)

(assert (=> bs!1232673 m!6354258))

(assert (=> b!5317977 d!1708513))

(declare-fun d!1708515 () Bool)

(assert (=> d!1708515 (= (nullable!5144 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (nullableFct!1494 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun bs!1232674 () Bool)

(assert (= bs!1232674 d!1708515))

(declare-fun m!6354260 () Bool)

(assert (=> bs!1232674 m!6354260))

(assert (=> b!5317737 d!1708515))

(declare-fun d!1708517 () Bool)

(assert (=> d!1708517 (= (nullable!5144 (reg!15304 (regOne!30462 (regOne!30462 r!7292)))) (nullableFct!1494 (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))))

(declare-fun bs!1232675 () Bool)

(assert (= bs!1232675 d!1708517))

(declare-fun m!6354262 () Bool)

(assert (=> bs!1232675 m!6354262))

(assert (=> b!5317899 d!1708517))

(declare-fun d!1708519 () Bool)

(assert (=> d!1708519 (= (nullable!5144 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))) (nullableFct!1494 (regOne!30462 (h!67548 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun bs!1232676 () Bool)

(assert (= bs!1232676 d!1708519))

(declare-fun m!6354264 () Bool)

(assert (=> bs!1232676 m!6354264))

(assert (=> b!5317785 d!1708519))

(declare-fun d!1708521 () Bool)

(declare-fun lambda!271211 () Int)

(declare-fun exists!2008 ((InoxSet Context!8718) Int) Bool)

(assert (=> d!1708521 (= (nullableZipper!1341 ((_ map or) lt!2171467 lt!2171463)) (exists!2008 ((_ map or) lt!2171467 lt!2171463) lambda!271211))))

(declare-fun bs!1232677 () Bool)

(assert (= bs!1232677 d!1708521))

(declare-fun m!6354266 () Bool)

(assert (=> bs!1232677 m!6354266))

(assert (=> b!5318167 d!1708521))

(declare-fun d!1708523 () Bool)

(assert (=> d!1708523 (= (isEmpty!33068 (unfocusZipperList!417 zl!343)) ((_ is Nil!61100) (unfocusZipperList!417 zl!343)))))

(assert (=> b!5317871 d!1708523))

(assert (=> bs!1232607 d!1708271))

(declare-fun d!1708525 () Bool)

(declare-fun res!2256215 () Bool)

(declare-fun e!3304565 () Bool)

(assert (=> d!1708525 (=> res!2256215 e!3304565)))

(assert (=> d!1708525 (= res!2256215 ((_ is Nil!61100) lt!2171506))))

(assert (=> d!1708525 (= (forall!14393 lt!2171506 lambda!271158) e!3304565)))

(declare-fun b!5318796 () Bool)

(declare-fun e!3304566 () Bool)

(assert (=> b!5318796 (= e!3304565 e!3304566)))

(declare-fun res!2256216 () Bool)

(assert (=> b!5318796 (=> (not res!2256216) (not e!3304566))))

(assert (=> b!5318796 (= res!2256216 (dynLambda!24150 lambda!271158 (h!67548 lt!2171506)))))

(declare-fun b!5318797 () Bool)

(assert (=> b!5318797 (= e!3304566 (forall!14393 (t!374433 lt!2171506) lambda!271158))))

(assert (= (and d!1708525 (not res!2256215)) b!5318796))

(assert (= (and b!5318796 res!2256216) b!5318797))

(declare-fun b_lambda!204589 () Bool)

(assert (=> (not b_lambda!204589) (not b!5318796)))

(declare-fun m!6354268 () Bool)

(assert (=> b!5318796 m!6354268))

(declare-fun m!6354270 () Bool)

(assert (=> b!5318797 m!6354270))

(assert (=> d!1708265 d!1708525))

(declare-fun bs!1232678 () Bool)

(declare-fun d!1708527 () Bool)

(assert (= bs!1232678 (and d!1708527 d!1708521)))

(declare-fun lambda!271212 () Int)

(assert (=> bs!1232678 (= lambda!271212 lambda!271211)))

(assert (=> d!1708527 (= (nullableZipper!1341 lt!2171463) (exists!2008 lt!2171463 lambda!271212))))

(declare-fun bs!1232679 () Bool)

(assert (= bs!1232679 d!1708527))

(declare-fun m!6354272 () Bool)

(assert (=> bs!1232679 m!6354272))

(assert (=> b!5318149 d!1708527))

(assert (=> b!5318049 d!1708397))

(assert (=> d!1708347 d!1708467))

(assert (=> d!1708347 d!1708253))

(declare-fun d!1708529 () Bool)

(assert (=> d!1708529 (= ($colon$colon!1392 (exprs!4859 lt!2171466) (ite (or c!924021 c!924019) (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (h!67548 (exprs!4859 (h!67549 zl!343))))) (Cons!61100 (ite (or c!924021 c!924019) (regTwo!30462 (h!67548 (exprs!4859 (h!67549 zl!343)))) (h!67548 (exprs!4859 (h!67549 zl!343)))) (exprs!4859 lt!2171466)))))

(assert (=> bm!379454 d!1708529))

(declare-fun bs!1232680 () Bool)

(declare-fun d!1708531 () Bool)

(assert (= bs!1232680 (and d!1708531 d!1708285)))

(declare-fun lambda!271213 () Int)

(assert (=> bs!1232680 (= lambda!271213 lambda!271167)))

(declare-fun bs!1232681 () Bool)

(assert (= bs!1232681 (and d!1708531 d!1708487)))

(assert (=> bs!1232681 (= lambda!271213 lambda!271205)))

(declare-fun bs!1232682 () Bool)

(assert (= bs!1232682 (and d!1708531 d!1708453)))

(assert (=> bs!1232682 (= lambda!271213 lambda!271202)))

(declare-fun bs!1232683 () Bool)

(assert (= bs!1232683 (and d!1708531 d!1708265)))

(assert (=> bs!1232683 (= lambda!271213 lambda!271158)))

(declare-fun bs!1232684 () Bool)

(assert (= bs!1232684 (and d!1708531 d!1708251)))

(assert (=> bs!1232684 (= lambda!271213 lambda!271145)))

(declare-fun bs!1232685 () Bool)

(assert (= bs!1232685 (and d!1708531 d!1708275)))

(assert (=> bs!1232685 (= lambda!271213 lambda!271165)))

(declare-fun bs!1232686 () Bool)

(assert (= bs!1232686 (and d!1708531 d!1708261)))

(assert (=> bs!1232686 (= lambda!271213 lambda!271151)))

(declare-fun bs!1232687 () Bool)

(assert (= bs!1232687 (and d!1708531 d!1708415)))

(assert (=> bs!1232687 (= lambda!271213 lambda!271201)))

(declare-fun b!5318798 () Bool)

(declare-fun e!3304569 () Bool)

(assert (=> b!5318798 (= e!3304569 (isEmpty!33068 (t!374433 (t!374433 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5318799 () Bool)

(declare-fun e!3304568 () Bool)

(declare-fun e!3304570 () Bool)

(assert (=> b!5318799 (= e!3304568 e!3304570)))

(declare-fun c!924287 () Bool)

(assert (=> b!5318799 (= c!924287 (isEmpty!33068 (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318800 () Bool)

(declare-fun e!3304567 () Bool)

(assert (=> b!5318800 (= e!3304570 e!3304567)))

(declare-fun c!924289 () Bool)

(assert (=> b!5318800 (= c!924289 (isEmpty!33068 (tail!10497 (t!374433 (exprs!4859 (h!67549 zl!343))))))))

(declare-fun b!5318801 () Bool)

(declare-fun e!3304572 () Regex!14975)

(assert (=> b!5318801 (= e!3304572 (h!67548 (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318802 () Bool)

(declare-fun lt!2171585 () Regex!14975)

(assert (=> b!5318802 (= e!3304570 (isEmptyExpr!876 lt!2171585))))

(declare-fun b!5318803 () Bool)

(declare-fun e!3304571 () Regex!14975)

(assert (=> b!5318803 (= e!3304572 e!3304571)))

(declare-fun c!924286 () Bool)

(assert (=> b!5318803 (= c!924286 ((_ is Cons!61100) (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun b!5318804 () Bool)

(assert (=> b!5318804 (= e!3304567 (isConcat!399 lt!2171585))))

(assert (=> d!1708531 e!3304568))

(declare-fun res!2256218 () Bool)

(assert (=> d!1708531 (=> (not res!2256218) (not e!3304568))))

(assert (=> d!1708531 (= res!2256218 (validRegex!6711 lt!2171585))))

(assert (=> d!1708531 (= lt!2171585 e!3304572)))

(declare-fun c!924288 () Bool)

(assert (=> d!1708531 (= c!924288 e!3304569)))

(declare-fun res!2256217 () Bool)

(assert (=> d!1708531 (=> (not res!2256217) (not e!3304569))))

(assert (=> d!1708531 (= res!2256217 ((_ is Cons!61100) (t!374433 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> d!1708531 (forall!14393 (t!374433 (exprs!4859 (h!67549 zl!343))) lambda!271213)))

(assert (=> d!1708531 (= (generalisedConcat!644 (t!374433 (exprs!4859 (h!67549 zl!343)))) lt!2171585)))

(declare-fun b!5318805 () Bool)

(assert (=> b!5318805 (= e!3304571 EmptyExpr!14975)))

(declare-fun b!5318806 () Bool)

(assert (=> b!5318806 (= e!3304571 (Concat!23820 (h!67548 (t!374433 (exprs!4859 (h!67549 zl!343)))) (generalisedConcat!644 (t!374433 (t!374433 (exprs!4859 (h!67549 zl!343)))))))))

(declare-fun b!5318807 () Bool)

(assert (=> b!5318807 (= e!3304567 (= lt!2171585 (head!11400 (t!374433 (exprs!4859 (h!67549 zl!343))))))))

(assert (= (and d!1708531 res!2256217) b!5318798))

(assert (= (and d!1708531 c!924288) b!5318801))

(assert (= (and d!1708531 (not c!924288)) b!5318803))

(assert (= (and b!5318803 c!924286) b!5318806))

(assert (= (and b!5318803 (not c!924286)) b!5318805))

(assert (= (and d!1708531 res!2256218) b!5318799))

(assert (= (and b!5318799 c!924287) b!5318802))

(assert (= (and b!5318799 (not c!924287)) b!5318800))

(assert (= (and b!5318800 c!924289) b!5318807))

(assert (= (and b!5318800 (not c!924289)) b!5318804))

(declare-fun m!6354274 () Bool)

(assert (=> b!5318804 m!6354274))

(assert (=> b!5318799 m!6353420))

(declare-fun m!6354276 () Bool)

(assert (=> b!5318800 m!6354276))

(assert (=> b!5318800 m!6354276))

(declare-fun m!6354278 () Bool)

(assert (=> b!5318800 m!6354278))

(declare-fun m!6354280 () Bool)

(assert (=> b!5318806 m!6354280))

(declare-fun m!6354282 () Bool)

(assert (=> b!5318802 m!6354282))

(declare-fun m!6354284 () Bool)

(assert (=> d!1708531 m!6354284))

(declare-fun m!6354286 () Bool)

(assert (=> d!1708531 m!6354286))

(declare-fun m!6354288 () Bool)

(assert (=> b!5318798 m!6354288))

(declare-fun m!6354290 () Bool)

(assert (=> b!5318807 m!6354290))

(assert (=> b!5317957 d!1708531))

(declare-fun d!1708533 () Bool)

(assert (=> d!1708533 (= (isEmptyExpr!876 lt!2171513) ((_ is EmptyExpr!14975) lt!2171513))))

(assert (=> b!5317953 d!1708533))

(declare-fun d!1708535 () Bool)

(assert (=> d!1708535 (= (isEmpty!33070 (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326)) (not ((_ is Some!15085) (findConcatSeparation!1500 (regOne!30462 r!7292) (regTwo!30462 r!7292) Nil!61102 s!2326 s!2326))))))

(assert (=> d!1708327 d!1708535))

(declare-fun d!1708537 () Bool)

(assert (=> d!1708537 (= (isEmptyLang!884 lt!2171501) ((_ is EmptyLang!14975) lt!2171501))))

(assert (=> b!5317876 d!1708537))

(declare-fun d!1708539 () Bool)

(assert (=> d!1708539 (= ($colon$colon!1392 (exprs!4859 (Context!8719 lt!2171473)) (ite (or c!924083 c!924081) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 r!7292)))) (Cons!61100 (ite (or c!924083 c!924081) (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (regOne!30462 (regOne!30462 r!7292))) (exprs!4859 (Context!8719 lt!2171473))))))

(assert (=> bm!379474 d!1708539))

(assert (=> d!1708329 d!1708445))

(declare-fun bs!1232688 () Bool)

(declare-fun d!1708541 () Bool)

(assert (= bs!1232688 (and d!1708541 d!1708285)))

(declare-fun lambda!271214 () Int)

(assert (=> bs!1232688 (= lambda!271214 lambda!271167)))

(declare-fun bs!1232689 () Bool)

(assert (= bs!1232689 (and d!1708541 d!1708487)))

(assert (=> bs!1232689 (= lambda!271214 lambda!271205)))

(declare-fun bs!1232690 () Bool)

(assert (= bs!1232690 (and d!1708541 d!1708453)))

(assert (=> bs!1232690 (= lambda!271214 lambda!271202)))

(declare-fun bs!1232691 () Bool)

(assert (= bs!1232691 (and d!1708541 d!1708251)))

(assert (=> bs!1232691 (= lambda!271214 lambda!271145)))

(declare-fun bs!1232692 () Bool)

(assert (= bs!1232692 (and d!1708541 d!1708275)))

(assert (=> bs!1232692 (= lambda!271214 lambda!271165)))

(declare-fun bs!1232693 () Bool)

(assert (= bs!1232693 (and d!1708541 d!1708261)))

(assert (=> bs!1232693 (= lambda!271214 lambda!271151)))

(declare-fun bs!1232694 () Bool)

(assert (= bs!1232694 (and d!1708541 d!1708415)))

(assert (=> bs!1232694 (= lambda!271214 lambda!271201)))

(declare-fun bs!1232695 () Bool)

(assert (= bs!1232695 (and d!1708541 d!1708531)))

(assert (=> bs!1232695 (= lambda!271214 lambda!271213)))

(declare-fun bs!1232696 () Bool)

(assert (= bs!1232696 (and d!1708541 d!1708265)))

(assert (=> bs!1232696 (= lambda!271214 lambda!271158)))

(declare-fun b!5318808 () Bool)

(declare-fun e!3304573 () Bool)

(declare-fun e!3304575 () Bool)

(assert (=> b!5318808 (= e!3304573 e!3304575)))

(declare-fun c!924291 () Bool)

(assert (=> b!5318808 (= c!924291 (isEmpty!33068 (t!374433 (unfocusZipperList!417 zl!343))))))

(declare-fun b!5318809 () Bool)

(declare-fun e!3304578 () Regex!14975)

(assert (=> b!5318809 (= e!3304578 (h!67548 (t!374433 (unfocusZipperList!417 zl!343))))))

(declare-fun b!5318810 () Bool)

(declare-fun e!3304577 () Regex!14975)

(assert (=> b!5318810 (= e!3304577 EmptyLang!14975)))

(declare-fun b!5318811 () Bool)

(declare-fun e!3304574 () Bool)

(declare-fun lt!2171586 () Regex!14975)

(assert (=> b!5318811 (= e!3304574 (isUnion!316 lt!2171586))))

(declare-fun b!5318812 () Bool)

(assert (=> b!5318812 (= e!3304578 e!3304577)))

(declare-fun c!924292 () Bool)

(assert (=> b!5318812 (= c!924292 ((_ is Cons!61100) (t!374433 (unfocusZipperList!417 zl!343))))))

(declare-fun b!5318813 () Bool)

(assert (=> b!5318813 (= e!3304575 (isEmptyLang!884 lt!2171586))))

(declare-fun b!5318814 () Bool)

(declare-fun e!3304576 () Bool)

(assert (=> b!5318814 (= e!3304576 (isEmpty!33068 (t!374433 (t!374433 (unfocusZipperList!417 zl!343)))))))

(declare-fun b!5318815 () Bool)

(assert (=> b!5318815 (= e!3304574 (= lt!2171586 (head!11400 (t!374433 (unfocusZipperList!417 zl!343)))))))

(assert (=> d!1708541 e!3304573))

(declare-fun res!2256219 () Bool)

(assert (=> d!1708541 (=> (not res!2256219) (not e!3304573))))

(assert (=> d!1708541 (= res!2256219 (validRegex!6711 lt!2171586))))

(assert (=> d!1708541 (= lt!2171586 e!3304578)))

(declare-fun c!924293 () Bool)

(assert (=> d!1708541 (= c!924293 e!3304576)))

(declare-fun res!2256220 () Bool)

(assert (=> d!1708541 (=> (not res!2256220) (not e!3304576))))

(assert (=> d!1708541 (= res!2256220 ((_ is Cons!61100) (t!374433 (unfocusZipperList!417 zl!343))))))

(assert (=> d!1708541 (forall!14393 (t!374433 (unfocusZipperList!417 zl!343)) lambda!271214)))

(assert (=> d!1708541 (= (generalisedUnion!904 (t!374433 (unfocusZipperList!417 zl!343))) lt!2171586)))

(declare-fun b!5318816 () Bool)

(assert (=> b!5318816 (= e!3304575 e!3304574)))

(declare-fun c!924290 () Bool)

(assert (=> b!5318816 (= c!924290 (isEmpty!33068 (tail!10497 (t!374433 (unfocusZipperList!417 zl!343)))))))

(declare-fun b!5318817 () Bool)

(assert (=> b!5318817 (= e!3304577 (Union!14975 (h!67548 (t!374433 (unfocusZipperList!417 zl!343))) (generalisedUnion!904 (t!374433 (t!374433 (unfocusZipperList!417 zl!343))))))))

(assert (= (and d!1708541 res!2256220) b!5318814))

(assert (= (and d!1708541 c!924293) b!5318809))

(assert (= (and d!1708541 (not c!924293)) b!5318812))

(assert (= (and b!5318812 c!924292) b!5318817))

(assert (= (and b!5318812 (not c!924292)) b!5318810))

(assert (= (and d!1708541 res!2256219) b!5318808))

(assert (= (and b!5318808 c!924291) b!5318813))

(assert (= (and b!5318808 (not c!924291)) b!5318816))

(assert (= (and b!5318816 c!924290) b!5318815))

(assert (= (and b!5318816 (not c!924290)) b!5318811))

(declare-fun m!6354292 () Bool)

(assert (=> b!5318817 m!6354292))

(declare-fun m!6354294 () Bool)

(assert (=> b!5318811 m!6354294))

(declare-fun m!6354296 () Bool)

(assert (=> b!5318814 m!6354296))

(declare-fun m!6354298 () Bool)

(assert (=> b!5318813 m!6354298))

(declare-fun m!6354300 () Bool)

(assert (=> b!5318816 m!6354300))

(assert (=> b!5318816 m!6354300))

(declare-fun m!6354302 () Bool)

(assert (=> b!5318816 m!6354302))

(declare-fun m!6354304 () Bool)

(assert (=> d!1708541 m!6354304))

(declare-fun m!6354306 () Bool)

(assert (=> d!1708541 m!6354306))

(assert (=> b!5318808 m!6353588))

(declare-fun m!6354308 () Bool)

(assert (=> b!5318815 m!6354308))

(assert (=> b!5317880 d!1708541))

(declare-fun d!1708543 () Bool)

(assert (=> d!1708543 (= (nullable!5144 (h!67548 (exprs!4859 lt!2171466))) (nullableFct!1494 (h!67548 (exprs!4859 lt!2171466))))))

(declare-fun bs!1232697 () Bool)

(assert (= bs!1232697 d!1708543))

(declare-fun m!6354310 () Bool)

(assert (=> bs!1232697 m!6354310))

(assert (=> b!5317809 d!1708543))

(assert (=> d!1708339 d!1708445))

(declare-fun d!1708545 () Bool)

(assert (=> d!1708545 (= (Exists!2156 (ite c!924158 lambda!271194 lambda!271195)) (choose!39801 (ite c!924158 lambda!271194 lambda!271195)))))

(declare-fun bs!1232698 () Bool)

(assert (= bs!1232698 d!1708545))

(declare-fun m!6354312 () Bool)

(assert (=> bs!1232698 m!6354312))

(assert (=> bm!379508 d!1708545))

(assert (=> b!5318166 d!1708333))

(declare-fun d!1708547 () Bool)

(assert (=> d!1708547 true))

(assert (=> d!1708547 true))

(declare-fun res!2256223 () Bool)

(assert (=> d!1708547 (= (choose!39801 lambda!271137) res!2256223)))

(assert (=> d!1708301 d!1708547))

(declare-fun bs!1232699 () Bool)

(declare-fun d!1708549 () Bool)

(assert (= bs!1232699 (and d!1708549 d!1708521)))

(declare-fun lambda!271215 () Int)

(assert (=> bs!1232699 (= lambda!271215 lambda!271211)))

(declare-fun bs!1232700 () Bool)

(assert (= bs!1232700 (and d!1708549 d!1708527)))

(assert (=> bs!1232700 (= lambda!271215 lambda!271212)))

(assert (=> d!1708549 (= (nullableZipper!1341 lt!2171464) (exists!2008 lt!2171464 lambda!271215))))

(declare-fun bs!1232701 () Bool)

(assert (= bs!1232701 d!1708549))

(declare-fun m!6354314 () Bool)

(assert (=> bs!1232701 m!6354314))

(assert (=> b!5318147 d!1708549))

(assert (=> b!5317753 d!1708245))

(declare-fun d!1708551 () Bool)

(declare-fun c!924294 () Bool)

(assert (=> d!1708551 (= c!924294 (isEmpty!33071 (tail!10499 (t!374435 s!2326))))))

(declare-fun e!3304579 () Bool)

(assert (=> d!1708551 (= (matchZipper!1219 (derivationStepZipper!1215 ((_ map or) lt!2171467 lt!2171463) (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))) e!3304579)))

(declare-fun b!5318818 () Bool)

(assert (=> b!5318818 (= e!3304579 (nullableZipper!1341 (derivationStepZipper!1215 ((_ map or) lt!2171467 lt!2171463) (head!11402 (t!374435 s!2326)))))))

(declare-fun b!5318819 () Bool)

(assert (=> b!5318819 (= e!3304579 (matchZipper!1219 (derivationStepZipper!1215 (derivationStepZipper!1215 ((_ map or) lt!2171467 lt!2171463) (head!11402 (t!374435 s!2326))) (head!11402 (tail!10499 (t!374435 s!2326)))) (tail!10499 (tail!10499 (t!374435 s!2326)))))))

(assert (= (and d!1708551 c!924294) b!5318818))

(assert (= (and d!1708551 (not c!924294)) b!5318819))

(assert (=> d!1708551 m!6353808))

(assert (=> d!1708551 m!6353948))

(assert (=> b!5318818 m!6353834))

(declare-fun m!6354316 () Bool)

(assert (=> b!5318818 m!6354316))

(assert (=> b!5318819 m!6353808))

(assert (=> b!5318819 m!6353952))

(assert (=> b!5318819 m!6353834))

(assert (=> b!5318819 m!6353952))

(declare-fun m!6354318 () Bool)

(assert (=> b!5318819 m!6354318))

(assert (=> b!5318819 m!6353808))

(assert (=> b!5318819 m!6353956))

(assert (=> b!5318819 m!6354318))

(assert (=> b!5318819 m!6353956))

(declare-fun m!6354320 () Bool)

(assert (=> b!5318819 m!6354320))

(assert (=> b!5318168 d!1708551))

(declare-fun bs!1232702 () Bool)

(declare-fun d!1708553 () Bool)

(assert (= bs!1232702 (and d!1708553 b!5317683)))

(declare-fun lambda!271216 () Int)

(assert (=> bs!1232702 (= (= (head!11402 (t!374435 s!2326)) (h!67550 s!2326)) (= lambda!271216 lambda!271139))))

(declare-fun bs!1232703 () Bool)

(assert (= bs!1232703 (and d!1708553 d!1708389)))

(assert (=> bs!1232703 (= lambda!271216 lambda!271198)))

(assert (=> d!1708553 true))

(assert (=> d!1708553 (= (derivationStepZipper!1215 ((_ map or) lt!2171467 lt!2171463) (head!11402 (t!374435 s!2326))) (flatMap!702 ((_ map or) lt!2171467 lt!2171463) lambda!271216))))

(declare-fun bs!1232704 () Bool)

(assert (= bs!1232704 d!1708553))

(declare-fun m!6354322 () Bool)

(assert (=> bs!1232704 m!6354322))

(assert (=> b!5318168 d!1708553))

(assert (=> b!5318168 d!1708391))

(assert (=> b!5318168 d!1708393))

(assert (=> d!1708367 d!1708347))

(assert (=> d!1708367 d!1708341))

(declare-fun d!1708555 () Bool)

(assert (=> d!1708555 (= (matchR!7160 r!7292 s!2326) (matchRSpec!2078 r!7292 s!2326))))

(assert (=> d!1708555 true))

(declare-fun _$88!3611 () Unit!153418)

(assert (=> d!1708555 (= (choose!39807 r!7292 s!2326) _$88!3611)))

(declare-fun bs!1232705 () Bool)

(assert (= bs!1232705 d!1708555))

(assert (=> bs!1232705 m!6353436))

(assert (=> bs!1232705 m!6353434))

(assert (=> d!1708367 d!1708555))

(assert (=> d!1708367 d!1708253))

(assert (=> d!1708273 d!1708269))

(declare-fun d!1708557 () Bool)

(assert (=> d!1708557 (= (flatMap!702 lt!2171474 lambda!271139) (dynLambda!24148 lambda!271139 lt!2171476))))

(assert (=> d!1708557 true))

(declare-fun _$13!1885 () Unit!153418)

(assert (=> d!1708557 (= (choose!39795 lt!2171474 lt!2171476 lambda!271139) _$13!1885)))

(declare-fun b_lambda!204591 () Bool)

(assert (=> (not b_lambda!204591) (not d!1708557)))

(declare-fun bs!1232706 () Bool)

(assert (= bs!1232706 d!1708557))

(assert (=> bs!1232706 m!6353486))

(assert (=> bs!1232706 m!6353622))

(assert (=> d!1708273 d!1708557))

(assert (=> d!1708247 d!1708243))

(declare-fun d!1708559 () Bool)

(assert (=> d!1708559 (= (flatMap!702 z!1189 lambda!271139) (dynLambda!24148 lambda!271139 (h!67549 zl!343)))))

(assert (=> d!1708559 true))

(declare-fun _$13!1886 () Unit!153418)

(assert (=> d!1708559 (= (choose!39795 z!1189 (h!67549 zl!343) lambda!271139) _$13!1886)))

(declare-fun b_lambda!204593 () Bool)

(assert (=> (not b_lambda!204593) (not d!1708559)))

(declare-fun bs!1232707 () Bool)

(assert (= bs!1232707 d!1708559))

(assert (=> bs!1232707 m!6353468))

(assert (=> bs!1232707 m!6353532))

(assert (=> d!1708247 d!1708559))

(declare-fun bs!1232708 () Bool)

(declare-fun d!1708561 () Bool)

(assert (= bs!1232708 (and d!1708561 d!1708521)))

(declare-fun lambda!271217 () Int)

(assert (=> bs!1232708 (= lambda!271217 lambda!271211)))

(declare-fun bs!1232709 () Bool)

(assert (= bs!1232709 (and d!1708561 d!1708527)))

(assert (=> bs!1232709 (= lambda!271217 lambda!271212)))

(declare-fun bs!1232710 () Bool)

(assert (= bs!1232710 (and d!1708561 d!1708549)))

(assert (=> bs!1232710 (= lambda!271217 lambda!271215)))

(assert (=> d!1708561 (= (nullableZipper!1341 lt!2171467) (exists!2008 lt!2171467 lambda!271217))))

(declare-fun bs!1232711 () Bool)

(assert (= bs!1232711 d!1708561))

(declare-fun m!6354324 () Bool)

(assert (=> bs!1232711 m!6354324))

(assert (=> b!5318139 d!1708561))

(declare-fun b!5318820 () Bool)

(declare-fun e!3304580 () (InoxSet Context!8718))

(declare-fun call!379614 () (InoxSet Context!8718))

(assert (=> b!5318820 (= e!3304580 ((_ map or) call!379614 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))) (h!67550 s!2326))))))

(declare-fun b!5318821 () Bool)

(declare-fun e!3304582 () (InoxSet Context!8718))

(assert (=> b!5318821 (= e!3304582 call!379614)))

(declare-fun b!5318822 () Bool)

(assert (=> b!5318822 (= e!3304580 e!3304582)))

(declare-fun c!924295 () Bool)

(assert (=> b!5318822 (= c!924295 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))))

(declare-fun d!1708563 () Bool)

(declare-fun c!924296 () Bool)

(declare-fun e!3304581 () Bool)

(assert (=> d!1708563 (= c!924296 e!3304581)))

(declare-fun res!2256224 () Bool)

(assert (=> d!1708563 (=> (not res!2256224) (not e!3304581))))

(assert (=> d!1708563 (= res!2256224 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))))

(assert (=> d!1708563 (= (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (h!67550 s!2326)) e!3304580)))

(declare-fun b!5318823 () Bool)

(assert (=> b!5318823 (= e!3304581 (nullable!5144 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))))))

(declare-fun b!5318824 () Bool)

(assert (=> b!5318824 (= e!3304582 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379609 () Bool)

(assert (=> bm!379609 (= call!379614 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))) (h!67550 s!2326)))))

(assert (= (and d!1708563 res!2256224) b!5318823))

(assert (= (and d!1708563 c!924296) b!5318820))

(assert (= (and d!1708563 (not c!924296)) b!5318822))

(assert (= (and b!5318822 c!924295) b!5318821))

(assert (= (and b!5318822 (not c!924295)) b!5318824))

(assert (= (or b!5318820 b!5318821) bm!379609))

(declare-fun m!6354326 () Bool)

(assert (=> b!5318820 m!6354326))

(declare-fun m!6354328 () Bool)

(assert (=> b!5318823 m!6354328))

(declare-fun m!6354330 () Bool)

(assert (=> bm!379609 m!6354330))

(assert (=> b!5317734 d!1708563))

(assert (=> b!5317949 d!1708377))

(declare-fun call!379615 () (InoxSet Context!8718))

(declare-fun e!3304583 () (InoxSet Context!8718))

(declare-fun b!5318825 () Bool)

(assert (=> b!5318825 (= e!3304583 ((_ map or) call!379615 (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466)))))) (h!67550 s!2326))))))

(declare-fun b!5318826 () Bool)

(declare-fun e!3304585 () (InoxSet Context!8718))

(assert (=> b!5318826 (= e!3304585 call!379615)))

(declare-fun b!5318827 () Bool)

(assert (=> b!5318827 (= e!3304583 e!3304585)))

(declare-fun c!924297 () Bool)

(assert (=> b!5318827 (= c!924297 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466))))))))

(declare-fun d!1708565 () Bool)

(declare-fun c!924298 () Bool)

(declare-fun e!3304584 () Bool)

(assert (=> d!1708565 (= c!924298 e!3304584)))

(declare-fun res!2256225 () Bool)

(assert (=> d!1708565 (=> (not res!2256225) (not e!3304584))))

(assert (=> d!1708565 (= res!2256225 ((_ is Cons!61100) (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466))))))))

(assert (=> d!1708565 (= (derivationStepZipperUp!347 (Context!8719 (t!374433 (exprs!4859 lt!2171466))) (h!67550 s!2326)) e!3304583)))

(declare-fun b!5318828 () Bool)

(assert (=> b!5318828 (= e!3304584 (nullable!5144 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466)))))))))

(declare-fun b!5318829 () Bool)

(assert (=> b!5318829 (= e!3304585 ((as const (Array Context!8718 Bool)) false))))

(declare-fun bm!379610 () Bool)

(assert (=> bm!379610 (= call!379615 (derivationStepZipperDown!423 (h!67548 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466))))) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 lt!2171466)))))) (h!67550 s!2326)))))

(assert (= (and d!1708565 res!2256225) b!5318828))

(assert (= (and d!1708565 c!924298) b!5318825))

(assert (= (and d!1708565 (not c!924298)) b!5318827))

(assert (= (and b!5318827 c!924297) b!5318826))

(assert (= (and b!5318827 (not c!924297)) b!5318829))

(assert (= (or b!5318825 b!5318826) bm!379610))

(declare-fun m!6354332 () Bool)

(assert (=> b!5318825 m!6354332))

(declare-fun m!6354334 () Bool)

(assert (=> b!5318828 m!6354334))

(declare-fun m!6354336 () Bool)

(assert (=> bm!379610 m!6354336))

(assert (=> b!5317806 d!1708565))

(declare-fun b!5318830 () Bool)

(declare-fun e!3304587 () Bool)

(declare-fun lt!2171587 () Bool)

(declare-fun call!379616 () Bool)

(assert (=> b!5318830 (= e!3304587 (= lt!2171587 call!379616))))

(declare-fun b!5318831 () Bool)

(declare-fun e!3304592 () Bool)

(assert (=> b!5318831 (= e!3304587 e!3304592)))

(declare-fun c!924299 () Bool)

(assert (=> b!5318831 (= c!924299 ((_ is EmptyLang!14975) (regTwo!30462 r!7292)))))

(declare-fun b!5318832 () Bool)

(assert (=> b!5318832 (= e!3304592 (not lt!2171587))))

(declare-fun bm!379611 () Bool)

(assert (=> bm!379611 (= call!379616 (isEmpty!33071 s!2326))))

(declare-fun b!5318833 () Bool)

(declare-fun e!3304589 () Bool)

(assert (=> b!5318833 (= e!3304589 (matchR!7160 (derivativeStep!4162 (regTwo!30462 r!7292) (head!11402 s!2326)) (tail!10499 s!2326)))))

(declare-fun b!5318834 () Bool)

(declare-fun res!2256228 () Bool)

(declare-fun e!3304588 () Bool)

(assert (=> b!5318834 (=> res!2256228 e!3304588)))

(assert (=> b!5318834 (= res!2256228 (not (isEmpty!33071 (tail!10499 s!2326))))))

(declare-fun b!5318835 () Bool)

(declare-fun res!2256230 () Bool)

(declare-fun e!3304590 () Bool)

(assert (=> b!5318835 (=> (not res!2256230) (not e!3304590))))

(assert (=> b!5318835 (= res!2256230 (isEmpty!33071 (tail!10499 s!2326)))))

(declare-fun b!5318836 () Bool)

(declare-fun e!3304586 () Bool)

(assert (=> b!5318836 (= e!3304586 e!3304588)))

(declare-fun res!2256232 () Bool)

(assert (=> b!5318836 (=> res!2256232 e!3304588)))

(assert (=> b!5318836 (= res!2256232 call!379616)))

(declare-fun b!5318838 () Bool)

(declare-fun res!2256229 () Bool)

(declare-fun e!3304591 () Bool)

(assert (=> b!5318838 (=> res!2256229 e!3304591)))

(assert (=> b!5318838 (= res!2256229 e!3304590)))

(declare-fun res!2256231 () Bool)

(assert (=> b!5318838 (=> (not res!2256231) (not e!3304590))))

(assert (=> b!5318838 (= res!2256231 lt!2171587)))

(declare-fun b!5318839 () Bool)

(assert (=> b!5318839 (= e!3304590 (= (head!11402 s!2326) (c!923983 (regTwo!30462 r!7292))))))

(declare-fun b!5318840 () Bool)

(assert (=> b!5318840 (= e!3304591 e!3304586)))

(declare-fun res!2256227 () Bool)

(assert (=> b!5318840 (=> (not res!2256227) (not e!3304586))))

(assert (=> b!5318840 (= res!2256227 (not lt!2171587))))

(declare-fun b!5318841 () Bool)

(assert (=> b!5318841 (= e!3304589 (nullable!5144 (regTwo!30462 r!7292)))))

(declare-fun b!5318842 () Bool)

(declare-fun res!2256226 () Bool)

(assert (=> b!5318842 (=> (not res!2256226) (not e!3304590))))

(assert (=> b!5318842 (= res!2256226 (not call!379616))))

(declare-fun b!5318843 () Bool)

(assert (=> b!5318843 (= e!3304588 (not (= (head!11402 s!2326) (c!923983 (regTwo!30462 r!7292)))))))

(declare-fun d!1708567 () Bool)

(assert (=> d!1708567 e!3304587))

(declare-fun c!924301 () Bool)

(assert (=> d!1708567 (= c!924301 ((_ is EmptyExpr!14975) (regTwo!30462 r!7292)))))

(assert (=> d!1708567 (= lt!2171587 e!3304589)))

(declare-fun c!924300 () Bool)

(assert (=> d!1708567 (= c!924300 (isEmpty!33071 s!2326))))

(assert (=> d!1708567 (validRegex!6711 (regTwo!30462 r!7292))))

(assert (=> d!1708567 (= (matchR!7160 (regTwo!30462 r!7292) s!2326) lt!2171587)))

(declare-fun b!5318837 () Bool)

(declare-fun res!2256233 () Bool)

(assert (=> b!5318837 (=> res!2256233 e!3304591)))

(assert (=> b!5318837 (= res!2256233 (not ((_ is ElementMatch!14975) (regTwo!30462 r!7292))))))

(assert (=> b!5318837 (= e!3304592 e!3304591)))

(assert (= (and d!1708567 c!924300) b!5318841))

(assert (= (and d!1708567 (not c!924300)) b!5318833))

(assert (= (and d!1708567 c!924301) b!5318830))

(assert (= (and d!1708567 (not c!924301)) b!5318831))

(assert (= (and b!5318831 c!924299) b!5318832))

(assert (= (and b!5318831 (not c!924299)) b!5318837))

(assert (= (and b!5318837 (not res!2256233)) b!5318838))

(assert (= (and b!5318838 res!2256231) b!5318842))

(assert (= (and b!5318842 res!2256226) b!5318835))

(assert (= (and b!5318835 res!2256230) b!5318839))

(assert (= (and b!5318838 (not res!2256229)) b!5318840))

(assert (= (and b!5318840 res!2256227) b!5318836))

(assert (= (and b!5318836 (not res!2256232)) b!5318834))

(assert (= (and b!5318834 (not res!2256228)) b!5318843))

(assert (= (or b!5318830 b!5318836 b!5318842) bm!379611))

(assert (=> b!5318841 m!6354000))

(assert (=> b!5318839 m!6353920))

(assert (=> b!5318834 m!6353922))

(assert (=> b!5318834 m!6353922))

(assert (=> b!5318834 m!6353924))

(assert (=> b!5318843 m!6353920))

(assert (=> bm!379611 m!6353860))

(assert (=> b!5318833 m!6353920))

(assert (=> b!5318833 m!6353920))

(declare-fun m!6354338 () Bool)

(assert (=> b!5318833 m!6354338))

(assert (=> b!5318833 m!6353922))

(assert (=> b!5318833 m!6354338))

(assert (=> b!5318833 m!6353922))

(declare-fun m!6354340 () Bool)

(assert (=> b!5318833 m!6354340))

(assert (=> d!1708567 m!6353860))

(assert (=> d!1708567 m!6354014))

(assert (=> b!5318835 m!6353922))

(assert (=> b!5318835 m!6353922))

(assert (=> b!5318835 m!6353924))

(assert (=> b!5318050 d!1708567))

(declare-fun d!1708569 () Bool)

(assert (=> d!1708569 (= (isEmpty!33068 (t!374433 (unfocusZipperList!417 zl!343))) ((_ is Nil!61100) (t!374433 (unfocusZipperList!417 zl!343))))))

(assert (=> b!5317877 d!1708569))

(declare-fun bm!379612 () Bool)

(declare-fun c!924302 () Bool)

(declare-fun call!379618 () Bool)

(declare-fun c!924303 () Bool)

(assert (=> bm!379612 (= call!379618 (validRegex!6711 (ite c!924302 (reg!15304 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))) (ite c!924303 (regOne!30463 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))) (regOne!30462 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292))))))))))

(declare-fun b!5318844 () Bool)

(declare-fun e!3304593 () Bool)

(declare-fun call!379617 () Bool)

(assert (=> b!5318844 (= e!3304593 call!379617)))

(declare-fun bm!379613 () Bool)

(declare-fun call!379619 () Bool)

(assert (=> bm!379613 (= call!379619 call!379618)))

(declare-fun b!5318846 () Bool)

(declare-fun res!2256238 () Bool)

(assert (=> b!5318846 (=> (not res!2256238) (not e!3304593))))

(assert (=> b!5318846 (= res!2256238 call!379619)))

(declare-fun e!3304595 () Bool)

(assert (=> b!5318846 (= e!3304595 e!3304593)))

(declare-fun b!5318847 () Bool)

(declare-fun res!2256236 () Bool)

(declare-fun e!3304599 () Bool)

(assert (=> b!5318847 (=> res!2256236 e!3304599)))

(assert (=> b!5318847 (= res!2256236 (not ((_ is Concat!23820) (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292))))))))

(assert (=> b!5318847 (= e!3304595 e!3304599)))

(declare-fun b!5318848 () Bool)

(declare-fun e!3304597 () Bool)

(declare-fun e!3304594 () Bool)

(assert (=> b!5318848 (= e!3304597 e!3304594)))

(declare-fun res!2256234 () Bool)

(assert (=> b!5318848 (= res!2256234 (not (nullable!5144 (reg!15304 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))))))))

(assert (=> b!5318848 (=> (not res!2256234) (not e!3304594))))

(declare-fun b!5318849 () Bool)

(declare-fun e!3304598 () Bool)

(assert (=> b!5318849 (= e!3304598 e!3304597)))

(assert (=> b!5318849 (= c!924302 ((_ is Star!14975) (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))))))

(declare-fun d!1708571 () Bool)

(declare-fun res!2256237 () Bool)

(assert (=> d!1708571 (=> res!2256237 e!3304598)))

(assert (=> d!1708571 (= res!2256237 ((_ is ElementMatch!14975) (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))))))

(assert (=> d!1708571 (= (validRegex!6711 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))) e!3304598)))

(declare-fun b!5318845 () Bool)

(declare-fun e!3304596 () Bool)

(assert (=> b!5318845 (= e!3304596 call!379617)))

(declare-fun b!5318850 () Bool)

(assert (=> b!5318850 (= e!3304599 e!3304596)))

(declare-fun res!2256235 () Bool)

(assert (=> b!5318850 (=> (not res!2256235) (not e!3304596))))

(assert (=> b!5318850 (= res!2256235 call!379619)))

(declare-fun b!5318851 () Bool)

(assert (=> b!5318851 (= e!3304594 call!379618)))

(declare-fun bm!379614 () Bool)

(assert (=> bm!379614 (= call!379617 (validRegex!6711 (ite c!924303 (regTwo!30463 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))) (regTwo!30462 (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))))))))

(declare-fun b!5318852 () Bool)

(assert (=> b!5318852 (= e!3304597 e!3304595)))

(assert (=> b!5318852 (= c!924303 ((_ is Union!14975) (ite c!924034 (reg!15304 r!7292) (ite c!924035 (regOne!30463 r!7292) (regOne!30462 r!7292)))))))

(assert (= (and d!1708571 (not res!2256237)) b!5318849))

(assert (= (and b!5318849 c!924302) b!5318848))

(assert (= (and b!5318849 (not c!924302)) b!5318852))

(assert (= (and b!5318848 res!2256234) b!5318851))

(assert (= (and b!5318852 c!924303) b!5318846))

(assert (= (and b!5318852 (not c!924303)) b!5318847))

(assert (= (and b!5318846 res!2256238) b!5318844))

(assert (= (and b!5318847 (not res!2256236)) b!5318850))

(assert (= (and b!5318850 res!2256235) b!5318845))

(assert (= (or b!5318844 b!5318845) bm!379614))

(assert (= (or b!5318846 b!5318850) bm!379613))

(assert (= (or b!5318851 bm!379613) bm!379612))

(declare-fun m!6354342 () Bool)

(assert (=> bm!379612 m!6354342))

(declare-fun m!6354344 () Bool)

(assert (=> b!5318848 m!6354344))

(declare-fun m!6354346 () Bool)

(assert (=> bm!379614 m!6354346))

(assert (=> bm!379467 d!1708571))

(declare-fun d!1708573 () Bool)

(declare-fun c!924304 () Bool)

(assert (=> d!1708573 (= c!924304 (isEmpty!33071 (tail!10499 (t!374435 s!2326))))))

(declare-fun e!3304600 () Bool)

(assert (=> d!1708573 (= (matchZipper!1219 (derivationStepZipper!1215 lt!2171463 (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))) e!3304600)))

(declare-fun b!5318853 () Bool)

(assert (=> b!5318853 (= e!3304600 (nullableZipper!1341 (derivationStepZipper!1215 lt!2171463 (head!11402 (t!374435 s!2326)))))))

(declare-fun b!5318854 () Bool)

(assert (=> b!5318854 (= e!3304600 (matchZipper!1219 (derivationStepZipper!1215 (derivationStepZipper!1215 lt!2171463 (head!11402 (t!374435 s!2326))) (head!11402 (tail!10499 (t!374435 s!2326)))) (tail!10499 (tail!10499 (t!374435 s!2326)))))))

(assert (= (and d!1708573 c!924304) b!5318853))

(assert (= (and d!1708573 (not c!924304)) b!5318854))

(assert (=> d!1708573 m!6353808))

(assert (=> d!1708573 m!6353948))

(assert (=> b!5318853 m!6353820))

(declare-fun m!6354348 () Bool)

(assert (=> b!5318853 m!6354348))

(assert (=> b!5318854 m!6353808))

(assert (=> b!5318854 m!6353952))

(assert (=> b!5318854 m!6353820))

(assert (=> b!5318854 m!6353952))

(declare-fun m!6354350 () Bool)

(assert (=> b!5318854 m!6354350))

(assert (=> b!5318854 m!6353808))

(assert (=> b!5318854 m!6353956))

(assert (=> b!5318854 m!6354350))

(assert (=> b!5318854 m!6353956))

(declare-fun m!6354352 () Bool)

(assert (=> b!5318854 m!6354352))

(assert (=> b!5318150 d!1708573))

(declare-fun bs!1232712 () Bool)

(declare-fun d!1708575 () Bool)

(assert (= bs!1232712 (and d!1708575 b!5317683)))

(declare-fun lambda!271218 () Int)

(assert (=> bs!1232712 (= (= (head!11402 (t!374435 s!2326)) (h!67550 s!2326)) (= lambda!271218 lambda!271139))))

(declare-fun bs!1232713 () Bool)

(assert (= bs!1232713 (and d!1708575 d!1708389)))

(assert (=> bs!1232713 (= lambda!271218 lambda!271198)))

(declare-fun bs!1232714 () Bool)

(assert (= bs!1232714 (and d!1708575 d!1708553)))

(assert (=> bs!1232714 (= lambda!271218 lambda!271216)))

(assert (=> d!1708575 true))

(assert (=> d!1708575 (= (derivationStepZipper!1215 lt!2171463 (head!11402 (t!374435 s!2326))) (flatMap!702 lt!2171463 lambda!271218))))

(declare-fun bs!1232715 () Bool)

(assert (= bs!1232715 d!1708575))

(declare-fun m!6354354 () Bool)

(assert (=> bs!1232715 m!6354354))

(assert (=> b!5318150 d!1708575))

(assert (=> b!5318150 d!1708391))

(assert (=> b!5318150 d!1708393))

(declare-fun bm!379615 () Bool)

(declare-fun call!379620 () List!61224)

(declare-fun c!924309 () Bool)

(declare-fun c!924307 () Bool)

(assert (=> bm!379615 (= call!379620 ($colon$colon!1392 (exprs!4859 (ite (or c!924080 c!924083) (Context!8719 lt!2171473) (Context!8719 call!379480))) (ite (or c!924309 c!924307) (regTwo!30462 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))))))))

(declare-fun b!5318855 () Bool)

(declare-fun e!3304605 () (InoxSet Context!8718))

(declare-fun e!3304606 () (InoxSet Context!8718))

(assert (=> b!5318855 (= e!3304605 e!3304606)))

(declare-fun c!924306 () Bool)

(assert (=> b!5318855 (= c!924306 ((_ is Union!14975) (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))))))

(declare-fun b!5318856 () Bool)

(declare-fun e!3304602 () Bool)

(assert (=> b!5318856 (= c!924309 e!3304602)))

(declare-fun res!2256239 () Bool)

(assert (=> b!5318856 (=> (not res!2256239) (not e!3304602))))

(assert (=> b!5318856 (= res!2256239 ((_ is Concat!23820) (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))))))

(declare-fun e!3304604 () (InoxSet Context!8718))

(assert (=> b!5318856 (= e!3304606 e!3304604)))

(declare-fun bm!379616 () Bool)

(declare-fun call!379624 () (InoxSet Context!8718))

(declare-fun call!379625 () (InoxSet Context!8718))

(assert (=> bm!379616 (= call!379624 call!379625)))

(declare-fun b!5318857 () Bool)

(declare-fun call!379622 () (InoxSet Context!8718))

(assert (=> b!5318857 (= e!3304604 ((_ map or) call!379622 call!379624))))

(declare-fun b!5318858 () Bool)

(assert (=> b!5318858 (= e!3304605 (store ((as const (Array Context!8718 Bool)) false) (ite (or c!924080 c!924083) (Context!8719 lt!2171473) (Context!8719 call!379480)) true))))

(declare-fun c!924308 () Bool)

(declare-fun d!1708577 () Bool)

(assert (=> d!1708577 (= c!924308 (and ((_ is ElementMatch!14975) (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (= (c!923983 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (h!67550 s!2326))))))

(assert (=> d!1708577 (= (derivationStepZipperDown!423 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))) (ite (or c!924080 c!924083) (Context!8719 lt!2171473) (Context!8719 call!379480)) (h!67550 s!2326)) e!3304605)))

(declare-fun b!5318859 () Bool)

(assert (=> b!5318859 (= e!3304606 ((_ map or) call!379625 call!379622))))

(declare-fun b!5318860 () Bool)

(declare-fun e!3304603 () (InoxSet Context!8718))

(assert (=> b!5318860 (= e!3304603 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318861 () Bool)

(declare-fun e!3304601 () (InoxSet Context!8718))

(declare-fun call!379623 () (InoxSet Context!8718))

(assert (=> b!5318861 (= e!3304601 call!379623)))

(declare-fun bm!379617 () Bool)

(assert (=> bm!379617 (= call!379623 call!379624)))

(declare-fun bm!379618 () Bool)

(declare-fun call!379621 () List!61224)

(assert (=> bm!379618 (= call!379621 call!379620)))

(declare-fun b!5318862 () Bool)

(assert (=> b!5318862 (= e!3304604 e!3304601)))

(assert (=> b!5318862 (= c!924307 ((_ is Concat!23820) (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))))))

(declare-fun b!5318863 () Bool)

(assert (=> b!5318863 (= e!3304602 (nullable!5144 (regOne!30462 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))))))))

(declare-fun b!5318864 () Bool)

(assert (=> b!5318864 (= e!3304603 call!379623)))

(declare-fun bm!379619 () Bool)

(assert (=> bm!379619 (= call!379625 (derivationStepZipperDown!423 (ite c!924306 (regOne!30463 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (ite c!924309 (regTwo!30462 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (ite c!924307 (regOne!30462 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (reg!15304 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))))))) (ite (or c!924306 c!924309) (ite (or c!924080 c!924083) (Context!8719 lt!2171473) (Context!8719 call!379480)) (Context!8719 call!379621)) (h!67550 s!2326)))))

(declare-fun b!5318865 () Bool)

(declare-fun c!924305 () Bool)

(assert (=> b!5318865 (= c!924305 ((_ is Star!14975) (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))))))

(assert (=> b!5318865 (= e!3304601 e!3304603)))

(declare-fun bm!379620 () Bool)

(assert (=> bm!379620 (= call!379622 (derivationStepZipperDown!423 (ite c!924306 (regTwo!30463 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292))))))) (regOne!30462 (ite c!924080 (regOne!30463 (regOne!30462 (regOne!30462 r!7292))) (ite c!924083 (regTwo!30462 (regOne!30462 (regOne!30462 r!7292))) (ite c!924081 (regOne!30462 (regOne!30462 (regOne!30462 r!7292))) (reg!15304 (regOne!30462 (regOne!30462 r!7292)))))))) (ite c!924306 (ite (or c!924080 c!924083) (Context!8719 lt!2171473) (Context!8719 call!379480)) (Context!8719 call!379620)) (h!67550 s!2326)))))

(assert (= (and d!1708577 c!924308) b!5318858))

(assert (= (and d!1708577 (not c!924308)) b!5318855))

(assert (= (and b!5318855 c!924306) b!5318859))

(assert (= (and b!5318855 (not c!924306)) b!5318856))

(assert (= (and b!5318856 res!2256239) b!5318863))

(assert (= (and b!5318856 c!924309) b!5318857))

(assert (= (and b!5318856 (not c!924309)) b!5318862))

(assert (= (and b!5318862 c!924307) b!5318861))

(assert (= (and b!5318862 (not c!924307)) b!5318865))

(assert (= (and b!5318865 c!924305) b!5318864))

(assert (= (and b!5318865 (not c!924305)) b!5318860))

(assert (= (or b!5318861 b!5318864) bm!379618))

(assert (= (or b!5318861 b!5318864) bm!379617))

(assert (= (or b!5318857 bm!379618) bm!379615))

(assert (= (or b!5318857 bm!379617) bm!379616))

(assert (= (or b!5318859 b!5318857) bm!379620))

(assert (= (or b!5318859 bm!379616) bm!379619))

(declare-fun m!6354356 () Bool)

(assert (=> b!5318858 m!6354356))

(declare-fun m!6354358 () Bool)

(assert (=> bm!379620 m!6354358))

(declare-fun m!6354360 () Bool)

(assert (=> bm!379615 m!6354360))

(declare-fun m!6354362 () Bool)

(assert (=> bm!379619 m!6354362))

(declare-fun m!6354364 () Bool)

(assert (=> b!5318863 m!6354364))

(assert (=> bm!379478 d!1708577))

(declare-fun bm!379621 () Bool)

(declare-fun c!924314 () Bool)

(declare-fun call!379626 () List!61224)

(declare-fun c!924312 () Bool)

(assert (=> bm!379621 (= call!379626 ($colon$colon!1392 (exprs!4859 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))) (ite (or c!924314 c!924312) (regTwo!30462 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))))

(declare-fun b!5318866 () Bool)

(declare-fun e!3304611 () (InoxSet Context!8718))

(declare-fun e!3304612 () (InoxSet Context!8718))

(assert (=> b!5318866 (= e!3304611 e!3304612)))

(declare-fun c!924311 () Bool)

(assert (=> b!5318866 (= c!924311 ((_ is Union!14975) (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun b!5318867 () Bool)

(declare-fun e!3304608 () Bool)

(assert (=> b!5318867 (= c!924314 e!3304608)))

(declare-fun res!2256240 () Bool)

(assert (=> b!5318867 (=> (not res!2256240) (not e!3304608))))

(assert (=> b!5318867 (= res!2256240 ((_ is Concat!23820) (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun e!3304610 () (InoxSet Context!8718))

(assert (=> b!5318867 (= e!3304612 e!3304610)))

(declare-fun bm!379622 () Bool)

(declare-fun call!379630 () (InoxSet Context!8718))

(declare-fun call!379631 () (InoxSet Context!8718))

(assert (=> bm!379622 (= call!379630 call!379631)))

(declare-fun b!5318868 () Bool)

(declare-fun call!379628 () (InoxSet Context!8718))

(assert (=> b!5318868 (= e!3304610 ((_ map or) call!379628 call!379630))))

(declare-fun b!5318869 () Bool)

(assert (=> b!5318869 (= e!3304611 (store ((as const (Array Context!8718 Bool)) false) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) true))))

(declare-fun d!1708579 () Bool)

(declare-fun c!924313 () Bool)

(assert (=> d!1708579 (= c!924313 (and ((_ is ElementMatch!14975) (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (= (c!923983 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (h!67550 s!2326))))))

(assert (=> d!1708579 (= (derivationStepZipperDown!423 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (h!67550 s!2326)) e!3304611)))

(declare-fun b!5318870 () Bool)

(assert (=> b!5318870 (= e!3304612 ((_ map or) call!379631 call!379628))))

(declare-fun b!5318871 () Bool)

(declare-fun e!3304609 () (InoxSet Context!8718))

(assert (=> b!5318871 (= e!3304609 ((as const (Array Context!8718 Bool)) false))))

(declare-fun b!5318872 () Bool)

(declare-fun e!3304607 () (InoxSet Context!8718))

(declare-fun call!379629 () (InoxSet Context!8718))

(assert (=> b!5318872 (= e!3304607 call!379629)))

(declare-fun bm!379623 () Bool)

(assert (=> bm!379623 (= call!379629 call!379630)))

(declare-fun bm!379624 () Bool)

(declare-fun call!379627 () List!61224)

(assert (=> bm!379624 (= call!379627 call!379626)))

(declare-fun b!5318873 () Bool)

(assert (=> b!5318873 (= e!3304610 e!3304607)))

(assert (=> b!5318873 (= c!924312 ((_ is Concat!23820) (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))

(declare-fun b!5318874 () Bool)

(assert (=> b!5318874 (= e!3304608 (nullable!5144 (regOne!30462 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))))

(declare-fun b!5318875 () Bool)

(assert (=> b!5318875 (= e!3304609 call!379629)))

(declare-fun bm!379625 () Bool)

(assert (=> bm!379625 (= call!379631 (derivationStepZipperDown!423 (ite c!924311 (regOne!30463 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (ite c!924314 (regTwo!30462 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (ite c!924312 (regOne!30462 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (reg!15304 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))))) (ite (or c!924311 c!924314) (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (Context!8719 call!379627)) (h!67550 s!2326)))))

(declare-fun b!5318876 () Bool)

(declare-fun c!924310 () Bool)

(assert (=> b!5318876 (= c!924310 ((_ is Star!14975) (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))))))

(assert (=> b!5318876 (= e!3304607 e!3304609)))

(declare-fun bm!379626 () Bool)

(assert (=> bm!379626 (= call!379628 (derivationStepZipperDown!423 (ite c!924311 (regTwo!30463 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (regOne!30462 (h!67548 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343))))))))) (ite c!924311 (Context!8719 (t!374433 (exprs!4859 (Context!8719 (Cons!61100 (h!67548 (exprs!4859 (h!67549 zl!343))) (t!374433 (exprs!4859 (h!67549 zl!343)))))))) (Context!8719 call!379626)) (h!67550 s!2326)))))

(assert (= (and d!1708579 c!924313) b!5318869))

(assert (= (and d!1708579 (not c!924313)) b!5318866))

(assert (= (and b!5318866 c!924311) b!5318870))

(assert (= (and b!5318866 (not c!924311)) b!5318867))

(assert (= (and b!5318867 res!2256240) b!5318874))

(assert (= (and b!5318867 c!924314) b!5318868))

(assert (= (and b!5318867 (not c!924314)) b!5318873))

(assert (= (and b!5318873 c!924312) b!5318872))

(assert (= (and b!5318873 (not c!924312)) b!5318876))

(assert (= (and b!5318876 c!924310) b!5318875))

(assert (= (and b!5318876 (not c!924310)) b!5318871))

(assert (= (or b!5318872 b!5318875) bm!379624))

(assert (= (or b!5318872 b!5318875) bm!379623))

(assert (= (or b!5318868 bm!379624) bm!379621))

(assert (= (or b!5318868 bm!379623) bm!379622))

(assert (= (or b!5318870 b!5318868) bm!379626))

(assert (= (or b!5318870 bm!379622) bm!379625))

(declare-fun m!6354366 () Bool)

(assert (=> b!5318869 m!6354366))

(declare-fun m!6354368 () Bool)

(assert (=> bm!379626 m!6354368))

(declare-fun m!6354370 () Bool)

(assert (=> bm!379621 m!6354370))

(declare-fun m!6354372 () Bool)

(assert (=> bm!379625 m!6354372))

(declare-fun m!6354374 () Bool)

(assert (=> b!5318874 m!6354374))

(assert (=> bm!379434 d!1708579))

(assert (=> d!1708333 d!1708445))

(declare-fun d!1708581 () Bool)

(declare-fun c!924315 () Bool)

(assert (=> d!1708581 (= c!924315 (isEmpty!33071 (tail!10499 (t!374435 s!2326))))))

(declare-fun e!3304613 () Bool)

(assert (=> d!1708581 (= (matchZipper!1219 (derivationStepZipper!1215 lt!2171467 (head!11402 (t!374435 s!2326))) (tail!10499 (t!374435 s!2326))) e!3304613)))

(declare-fun b!5318877 () Bool)

(assert (=> b!5318877 (= e!3304613 (nullableZipper!1341 (derivationStepZipper!1215 lt!2171467 (head!11402 (t!374435 s!2326)))))))

(declare-fun b!5318878 () Bool)

(assert (=> b!5318878 (= e!3304613 (matchZipper!1219 (derivationStepZipper!1215 (derivationStepZipper!1215 lt!2171467 (head!11402 (t!374435 s!2326))) (head!11402 (tail!10499 (t!374435 s!2326)))) (tail!10499 (tail!10499 (t!374435 s!2326)))))))

(assert (= (and d!1708581 c!924315) b!5318877))

(assert (= (and d!1708581 (not c!924315)) b!5318878))

(assert (=> d!1708581 m!6353808))

(assert (=> d!1708581 m!6353948))

(assert (=> b!5318877 m!6353806))

(declare-fun m!6354376 () Bool)

(assert (=> b!5318877 m!6354376))

(assert (=> b!5318878 m!6353808))

(assert (=> b!5318878 m!6353952))

(assert (=> b!5318878 m!6353806))

(assert (=> b!5318878 m!6353952))

(declare-fun m!6354378 () Bool)

(assert (=> b!5318878 m!6354378))

(assert (=> b!5318878 m!6353808))

(assert (=> b!5318878 m!6353956))

(assert (=> b!5318878 m!6354378))

(assert (=> b!5318878 m!6353956))

(declare-fun m!6354380 () Bool)

(assert (=> b!5318878 m!6354380))

(assert (=> b!5318140 d!1708581))

(declare-fun bs!1232716 () Bool)

(declare-fun d!1708583 () Bool)

(assert (= bs!1232716 (and d!1708583 b!5317683)))

(declare-fun lambda!271219 () Int)

(assert (=> bs!1232716 (= (= (head!11402 (t!374435 s!2326)) (h!67550 s!2326)) (= lambda!271219 lambda!271139))))

(declare-fun bs!1232717 () Bool)

(assert (= bs!1232717 (and d!1708583 d!1708389)))

(assert (=> bs!1232717 (= lambda!271219 lambda!271198)))

(declare-fun bs!1232718 () Bool)

(assert (= bs!1232718 (and d!1708583 d!1708553)))

(assert (=> bs!1232718 (= lambda!271219 lambda!271216)))

(declare-fun bs!1232719 () Bool)

(assert (= bs!1232719 (and d!1708583 d!1708575)))

(assert (=> bs!1232719 (= lambda!271219 lambda!271218)))

(assert (=> d!1708583 true))

(assert (=> d!1708583 (= (derivationStepZipper!1215 lt!2171467 (head!11402 (t!374435 s!2326))) (flatMap!702 lt!2171467 lambda!271219))))

(declare-fun bs!1232720 () Bool)

(assert (= bs!1232720 d!1708583))

(declare-fun m!6354382 () Bool)

(assert (=> bs!1232720 m!6354382))

(assert (=> b!5318140 d!1708583))

(assert (=> b!5318140 d!1708391))

(assert (=> b!5318140 d!1708393))

(declare-fun d!1708585 () Bool)

(assert (=> d!1708585 (= (Exists!2156 lambda!271182) (choose!39801 lambda!271182))))

(declare-fun bs!1232721 () Bool)

(assert (= bs!1232721 d!1708585))

(declare-fun m!6354384 () Bool)

(assert (=> bs!1232721 m!6354384))

(assert (=> d!1708311 d!1708585))

(declare-fun d!1708587 () Bool)

(assert (=> d!1708587 (= (Exists!2156 lambda!271183) (choose!39801 lambda!271183))))

(declare-fun bs!1232722 () Bool)

(assert (= bs!1232722 d!1708587))

(declare-fun m!6354386 () Bool)

(assert (=> bs!1232722 m!6354386))

(assert (=> d!1708311 d!1708587))

(declare-fun bs!1232723 () Bool)

(declare-fun d!1708589 () Bool)

(assert (= bs!1232723 (and d!1708589 b!5318463)))

(declare-fun lambda!271224 () Int)

(assert (=> bs!1232723 (not (= lambda!271224 lambda!271199))))

(declare-fun bs!1232724 () Bool)

(assert (= bs!1232724 (and d!1708589 d!1708311)))

(assert (=> bs!1232724 (not (= lambda!271224 lambda!271183))))

(declare-fun bs!1232725 () Bool)

(assert (= bs!1232725 (and d!1708589 b!5318241)))

(assert (=> bs!1232725 (not (= lambda!271224 lambda!271194))))

(declare-fun bs!1232726 () Bool)

(assert (= bs!1232726 (and d!1708589 b!5317690)))

(assert (=> bs!1232726 (not (= lambda!271224 lambda!271138))))

(assert (=> bs!1232724 (= lambda!271224 lambda!271182)))

(declare-fun bs!1232727 () Bool)

(assert (= bs!1232727 (and d!1708589 b!5318462)))

(assert (=> bs!1232727 (not (= lambda!271224 lambda!271200))))

(declare-fun bs!1232728 () Bool)

(assert (= bs!1232728 (and d!1708589 b!5318240)))

(assert (=> bs!1232728 (not (= lambda!271224 lambda!271195))))

(declare-fun bs!1232729 () Bool)

(assert (= bs!1232729 (and d!1708589 d!1708499)))

(assert (=> bs!1232729 (= lambda!271224 lambda!271208)))

(assert (=> bs!1232726 (= lambda!271224 lambda!271137)))

(declare-fun bs!1232730 () Bool)

(assert (= bs!1232730 (and d!1708589 d!1708309)))

(assert (=> bs!1232730 (= lambda!271224 lambda!271176)))

(declare-fun bs!1232731 () Bool)

(assert (= bs!1232731 (and d!1708589 b!5318672)))

(assert (=> bs!1232731 (not (= lambda!271224 lambda!271204))))

(declare-fun bs!1232732 () Bool)

(assert (= bs!1232732 (and d!1708589 b!5318673)))

(assert (=> bs!1232732 (not (= lambda!271224 lambda!271203))))

(assert (=> d!1708589 true))

(assert (=> d!1708589 true))

(assert (=> d!1708589 true))

(declare-fun lambda!271225 () Int)

(assert (=> bs!1232723 (not (= lambda!271225 lambda!271199))))

(assert (=> bs!1232724 (= lambda!271225 lambda!271183)))

(assert (=> bs!1232725 (not (= lambda!271225 lambda!271194))))

(assert (=> bs!1232726 (= lambda!271225 lambda!271138)))

(declare-fun bs!1232733 () Bool)

(assert (= bs!1232733 d!1708589))

(assert (=> bs!1232733 (not (= lambda!271225 lambda!271224))))

(assert (=> bs!1232724 (not (= lambda!271225 lambda!271182))))

(assert (=> bs!1232727 (= (and (= (regOne!30462 r!7292) (regOne!30462 (regOne!30463 r!7292))) (= (regTwo!30462 r!7292) (regTwo!30462 (regOne!30463 r!7292)))) (= lambda!271225 lambda!271200))))

(assert (=> bs!1232728 (= lambda!271225 lambda!271195)))

(assert (=> bs!1232729 (not (= lambda!271225 lambda!271208))))

(assert (=> bs!1232726 (not (= lambda!271225 lambda!271137))))

(assert (=> bs!1232730 (not (= lambda!271225 lambda!271176))))

(assert (=> bs!1232731 (= (and (= (regOne!30462 r!7292) (regOne!30462 (regTwo!30463 r!7292))) (= (regTwo!30462 r!7292) (regTwo!30462 (regTwo!30463 r!7292)))) (= lambda!271225 lambda!271204))))

(assert (=> bs!1232732 (not (= lambda!271225 lambda!271203))))

(assert (=> d!1708589 true))

(assert (=> d!1708589 true))

(assert (=> d!1708589 true))

(assert (=> d!1708589 (= (Exists!2156 lambda!271224) (Exists!2156 lambda!271225))))

(assert (=> d!1708589 true))

(declare-fun _$90!1137 () Unit!153418)

(assert (=> d!1708589 (= (choose!39803 (regOne!30462 r!7292) (regTwo!30462 r!7292) s!2326) _$90!1137)))

(declare-fun m!6354388 () Bool)

(assert (=> bs!1232733 m!6354388))

(declare-fun m!6354390 () Bool)

(assert (=> bs!1232733 m!6354390))

(assert (=> d!1708311 d!1708589))

(assert (=> d!1708311 d!1708401))

(assert (=> bm!379521 d!1708467))

(declare-fun d!1708591 () Bool)

(assert (=> d!1708591 (= (head!11400 (exprs!4859 (h!67549 zl!343))) (h!67548 (exprs!4859 (h!67549 zl!343))))))

(assert (=> b!5317958 d!1708591))

(declare-fun b!5318889 () Bool)

(declare-fun res!2256250 () Bool)

(declare-fun e!3304619 () Bool)

(assert (=> b!5318889 (=> (not res!2256250) (not e!3304619))))

(declare-fun lt!2171588 () List!61226)

(assert (=> b!5318889 (= res!2256250 (= (size!39764 lt!2171588) (+ (size!39764 (_1!35477 (get!21015 lt!2171529))) (size!39764 (_2!35477 (get!21015 lt!2171529))))))))

(declare-fun d!1708593 () Bool)

(assert (=> d!1708593 e!3304619))

(declare-fun res!2256249 () Bool)

(assert (=> d!1708593 (=> (not res!2256249) (not e!3304619))))

(assert (=> d!1708593 (= res!2256249 (= (content!10892 lt!2171588) ((_ map or) (content!10892 (_1!35477 (get!21015 lt!2171529))) (content!10892 (_2!35477 (get!21015 lt!2171529))))))))

(declare-fun e!3304618 () List!61226)

(assert (=> d!1708593 (= lt!2171588 e!3304618)))

(declare-fun c!924316 () Bool)

(assert (=> d!1708593 (= c!924316 ((_ is Nil!61102) (_1!35477 (get!21015 lt!2171529))))))

(assert (=> d!1708593 (= (++!13322 (_1!35477 (get!21015 lt!2171529)) (_2!35477 (get!21015 lt!2171529))) lt!2171588)))

(declare-fun b!5318890 () Bool)

(assert (=> b!5318890 (= e!3304619 (or (not (= (_2!35477 (get!21015 lt!2171529)) Nil!61102)) (= lt!2171588 (_1!35477 (get!21015 lt!2171529)))))))

(declare-fun b!5318888 () Bool)

(assert (=> b!5318888 (= e!3304618 (Cons!61102 (h!67550 (_1!35477 (get!21015 lt!2171529))) (++!13322 (t!374435 (_1!35477 (get!21015 lt!2171529))) (_2!35477 (get!21015 lt!2171529)))))))

(declare-fun b!5318887 () Bool)

(assert (=> b!5318887 (= e!3304618 (_2!35477 (get!21015 lt!2171529)))))

(assert (= (and d!1708593 c!924316) b!5318887))

(assert (= (and d!1708593 (not c!924316)) b!5318888))

(assert (= (and d!1708593 res!2256249) b!5318889))

(assert (= (and b!5318889 res!2256250) b!5318890))

(declare-fun m!6354392 () Bool)

(assert (=> b!5318889 m!6354392))

(declare-fun m!6354394 () Bool)

(assert (=> b!5318889 m!6354394))

(declare-fun m!6354396 () Bool)

(assert (=> b!5318889 m!6354396))

(declare-fun m!6354398 () Bool)

(assert (=> d!1708593 m!6354398))

(declare-fun m!6354400 () Bool)

(assert (=> d!1708593 m!6354400))

(declare-fun m!6354402 () Bool)

(assert (=> d!1708593 m!6354402))

(declare-fun m!6354404 () Bool)

(assert (=> b!5318888 m!6354404))

(assert (=> b!5318054 d!1708593))

(assert (=> b!5318054 d!1708409))

(declare-fun d!1708595 () Bool)

(assert (=> d!1708595 true))

(assert (=> d!1708595 true))

(declare-fun res!2256251 () Bool)

(assert (=> d!1708595 (= (choose!39801 lambda!271138) res!2256251)))

(assert (=> d!1708305 d!1708595))

(declare-fun b!5318893 () Bool)

(declare-fun e!3304620 () Bool)

(declare-fun tp!1481114 () Bool)

(assert (=> b!5318893 (= e!3304620 tp!1481114)))

(assert (=> b!5318423 (= tp!1481065 e!3304620)))

(declare-fun b!5318891 () Bool)

(assert (=> b!5318891 (= e!3304620 tp_is_empty!39203)))

(declare-fun b!5318894 () Bool)

(declare-fun tp!1481112 () Bool)

(declare-fun tp!1481116 () Bool)

(assert (=> b!5318894 (= e!3304620 (and tp!1481112 tp!1481116))))

(declare-fun b!5318892 () Bool)

(declare-fun tp!1481115 () Bool)

(declare-fun tp!1481113 () Bool)

(assert (=> b!5318892 (= e!3304620 (and tp!1481115 tp!1481113))))

(assert (= (and b!5318423 ((_ is ElementMatch!14975) (regOne!30463 (regOne!30462 r!7292)))) b!5318891))

(assert (= (and b!5318423 ((_ is Concat!23820) (regOne!30463 (regOne!30462 r!7292)))) b!5318892))

(assert (= (and b!5318423 ((_ is Star!14975) (regOne!30463 (regOne!30462 r!7292)))) b!5318893))

(assert (= (and b!5318423 ((_ is Union!14975) (regOne!30463 (regOne!30462 r!7292)))) b!5318894))

(declare-fun b!5318897 () Bool)

(declare-fun e!3304621 () Bool)

(declare-fun tp!1481119 () Bool)

(assert (=> b!5318897 (= e!3304621 tp!1481119)))

(assert (=> b!5318423 (= tp!1481069 e!3304621)))

(declare-fun b!5318895 () Bool)

(assert (=> b!5318895 (= e!3304621 tp_is_empty!39203)))

(declare-fun b!5318898 () Bool)

(declare-fun tp!1481117 () Bool)

(declare-fun tp!1481121 () Bool)

(assert (=> b!5318898 (= e!3304621 (and tp!1481117 tp!1481121))))

(declare-fun b!5318896 () Bool)

(declare-fun tp!1481120 () Bool)

(declare-fun tp!1481118 () Bool)

(assert (=> b!5318896 (= e!3304621 (and tp!1481120 tp!1481118))))

(assert (= (and b!5318423 ((_ is ElementMatch!14975) (regTwo!30463 (regOne!30462 r!7292)))) b!5318895))

(assert (= (and b!5318423 ((_ is Concat!23820) (regTwo!30463 (regOne!30462 r!7292)))) b!5318896))

(assert (= (and b!5318423 ((_ is Star!14975) (regTwo!30463 (regOne!30462 r!7292)))) b!5318897))

(assert (= (and b!5318423 ((_ is Union!14975) (regTwo!30463 (regOne!30462 r!7292)))) b!5318898))

(declare-fun b!5318901 () Bool)

(declare-fun e!3304622 () Bool)

(declare-fun tp!1481124 () Bool)

(assert (=> b!5318901 (= e!3304622 tp!1481124)))

(assert (=> b!5318445 (= tp!1481093 e!3304622)))

(declare-fun b!5318899 () Bool)

(assert (=> b!5318899 (= e!3304622 tp_is_empty!39203)))

(declare-fun b!5318902 () Bool)

(declare-fun tp!1481122 () Bool)

(declare-fun tp!1481126 () Bool)

(assert (=> b!5318902 (= e!3304622 (and tp!1481122 tp!1481126))))

(declare-fun b!5318900 () Bool)

(declare-fun tp!1481125 () Bool)

(declare-fun tp!1481123 () Bool)

(assert (=> b!5318900 (= e!3304622 (and tp!1481125 tp!1481123))))

(assert (= (and b!5318445 ((_ is ElementMatch!14975) (regOne!30463 (regTwo!30463 r!7292)))) b!5318899))

(assert (= (and b!5318445 ((_ is Concat!23820) (regOne!30463 (regTwo!30463 r!7292)))) b!5318900))

(assert (= (and b!5318445 ((_ is Star!14975) (regOne!30463 (regTwo!30463 r!7292)))) b!5318901))

(assert (= (and b!5318445 ((_ is Union!14975) (regOne!30463 (regTwo!30463 r!7292)))) b!5318902))

(declare-fun b!5318905 () Bool)

(declare-fun e!3304623 () Bool)

(declare-fun tp!1481129 () Bool)

(assert (=> b!5318905 (= e!3304623 tp!1481129)))

(assert (=> b!5318445 (= tp!1481097 e!3304623)))

(declare-fun b!5318903 () Bool)

(assert (=> b!5318903 (= e!3304623 tp_is_empty!39203)))

(declare-fun b!5318906 () Bool)

(declare-fun tp!1481127 () Bool)

(declare-fun tp!1481131 () Bool)

(assert (=> b!5318906 (= e!3304623 (and tp!1481127 tp!1481131))))

(declare-fun b!5318904 () Bool)

(declare-fun tp!1481130 () Bool)

(declare-fun tp!1481128 () Bool)

(assert (=> b!5318904 (= e!3304623 (and tp!1481130 tp!1481128))))

(assert (= (and b!5318445 ((_ is ElementMatch!14975) (regTwo!30463 (regTwo!30463 r!7292)))) b!5318903))

(assert (= (and b!5318445 ((_ is Concat!23820) (regTwo!30463 (regTwo!30463 r!7292)))) b!5318904))

(assert (= (and b!5318445 ((_ is Star!14975) (regTwo!30463 (regTwo!30463 r!7292)))) b!5318905))

(assert (= (and b!5318445 ((_ is Union!14975) (regTwo!30463 (regTwo!30463 r!7292)))) b!5318906))

(declare-fun b!5318909 () Bool)

(declare-fun e!3304624 () Bool)

(declare-fun tp!1481134 () Bool)

(assert (=> b!5318909 (= e!3304624 tp!1481134)))

(assert (=> b!5318429 (= tp!1481078 e!3304624)))

(declare-fun b!5318907 () Bool)

(assert (=> b!5318907 (= e!3304624 tp_is_empty!39203)))

(declare-fun b!5318910 () Bool)

(declare-fun tp!1481132 () Bool)

(declare-fun tp!1481136 () Bool)

(assert (=> b!5318910 (= e!3304624 (and tp!1481132 tp!1481136))))

(declare-fun b!5318908 () Bool)

(declare-fun tp!1481135 () Bool)

(declare-fun tp!1481133 () Bool)

(assert (=> b!5318908 (= e!3304624 (and tp!1481135 tp!1481133))))

(assert (= (and b!5318429 ((_ is ElementMatch!14975) (regOne!30462 (reg!15304 r!7292)))) b!5318907))

(assert (= (and b!5318429 ((_ is Concat!23820) (regOne!30462 (reg!15304 r!7292)))) b!5318908))

(assert (= (and b!5318429 ((_ is Star!14975) (regOne!30462 (reg!15304 r!7292)))) b!5318909))

(assert (= (and b!5318429 ((_ is Union!14975) (regOne!30462 (reg!15304 r!7292)))) b!5318910))

(declare-fun b!5318913 () Bool)

(declare-fun e!3304625 () Bool)

(declare-fun tp!1481139 () Bool)

(assert (=> b!5318913 (= e!3304625 tp!1481139)))

(assert (=> b!5318429 (= tp!1481076 e!3304625)))

(declare-fun b!5318911 () Bool)

(assert (=> b!5318911 (= e!3304625 tp_is_empty!39203)))

(declare-fun b!5318914 () Bool)

(declare-fun tp!1481137 () Bool)

(declare-fun tp!1481141 () Bool)

(assert (=> b!5318914 (= e!3304625 (and tp!1481137 tp!1481141))))

(declare-fun b!5318912 () Bool)

(declare-fun tp!1481140 () Bool)

(declare-fun tp!1481138 () Bool)

(assert (=> b!5318912 (= e!3304625 (and tp!1481140 tp!1481138))))

(assert (= (and b!5318429 ((_ is ElementMatch!14975) (regTwo!30462 (reg!15304 r!7292)))) b!5318911))

(assert (= (and b!5318429 ((_ is Concat!23820) (regTwo!30462 (reg!15304 r!7292)))) b!5318912))

(assert (= (and b!5318429 ((_ is Star!14975) (regTwo!30462 (reg!15304 r!7292)))) b!5318913))

(assert (= (and b!5318429 ((_ is Union!14975) (regTwo!30462 (reg!15304 r!7292)))) b!5318914))

(declare-fun b!5318917 () Bool)

(declare-fun e!3304626 () Bool)

(declare-fun tp!1481144 () Bool)

(assert (=> b!5318917 (= e!3304626 tp!1481144)))

(assert (=> b!5318430 (= tp!1481077 e!3304626)))

(declare-fun b!5318915 () Bool)

(assert (=> b!5318915 (= e!3304626 tp_is_empty!39203)))

(declare-fun b!5318918 () Bool)

(declare-fun tp!1481142 () Bool)

(declare-fun tp!1481146 () Bool)

(assert (=> b!5318918 (= e!3304626 (and tp!1481142 tp!1481146))))

(declare-fun b!5318916 () Bool)

(declare-fun tp!1481145 () Bool)

(declare-fun tp!1481143 () Bool)

(assert (=> b!5318916 (= e!3304626 (and tp!1481145 tp!1481143))))

(assert (= (and b!5318430 ((_ is ElementMatch!14975) (reg!15304 (reg!15304 r!7292)))) b!5318915))

(assert (= (and b!5318430 ((_ is Concat!23820) (reg!15304 (reg!15304 r!7292)))) b!5318916))

(assert (= (and b!5318430 ((_ is Star!14975) (reg!15304 (reg!15304 r!7292)))) b!5318917))

(assert (= (and b!5318430 ((_ is Union!14975) (reg!15304 (reg!15304 r!7292)))) b!5318918))

(declare-fun b!5318921 () Bool)

(declare-fun e!3304627 () Bool)

(declare-fun tp!1481149 () Bool)

(assert (=> b!5318921 (= e!3304627 tp!1481149)))

(assert (=> b!5318437 (= tp!1481086 e!3304627)))

(declare-fun b!5318919 () Bool)

(assert (=> b!5318919 (= e!3304627 tp_is_empty!39203)))

(declare-fun b!5318922 () Bool)

(declare-fun tp!1481147 () Bool)

(declare-fun tp!1481151 () Bool)

(assert (=> b!5318922 (= e!3304627 (and tp!1481147 tp!1481151))))

(declare-fun b!5318920 () Bool)

(declare-fun tp!1481150 () Bool)

(declare-fun tp!1481148 () Bool)

(assert (=> b!5318920 (= e!3304627 (and tp!1481150 tp!1481148))))

(assert (= (and b!5318437 ((_ is ElementMatch!14975) (h!67548 (exprs!4859 setElem!34221)))) b!5318919))

(assert (= (and b!5318437 ((_ is Concat!23820) (h!67548 (exprs!4859 setElem!34221)))) b!5318920))

(assert (= (and b!5318437 ((_ is Star!14975) (h!67548 (exprs!4859 setElem!34221)))) b!5318921))

(assert (= (and b!5318437 ((_ is Union!14975) (h!67548 (exprs!4859 setElem!34221)))) b!5318922))

(declare-fun b!5318923 () Bool)

(declare-fun e!3304628 () Bool)

(declare-fun tp!1481152 () Bool)

(declare-fun tp!1481153 () Bool)

(assert (=> b!5318923 (= e!3304628 (and tp!1481152 tp!1481153))))

(assert (=> b!5318437 (= tp!1481087 e!3304628)))

(assert (= (and b!5318437 ((_ is Cons!61100) (t!374433 (exprs!4859 setElem!34221)))) b!5318923))

(declare-fun b!5318926 () Bool)

(declare-fun e!3304629 () Bool)

(declare-fun tp!1481156 () Bool)

(assert (=> b!5318926 (= e!3304629 tp!1481156)))

(assert (=> b!5318421 (= tp!1481068 e!3304629)))

(declare-fun b!5318924 () Bool)

(assert (=> b!5318924 (= e!3304629 tp_is_empty!39203)))

(declare-fun b!5318927 () Bool)

(declare-fun tp!1481154 () Bool)

(declare-fun tp!1481158 () Bool)

(assert (=> b!5318927 (= e!3304629 (and tp!1481154 tp!1481158))))

(declare-fun b!5318925 () Bool)

(declare-fun tp!1481157 () Bool)

(declare-fun tp!1481155 () Bool)

(assert (=> b!5318925 (= e!3304629 (and tp!1481157 tp!1481155))))

(assert (= (and b!5318421 ((_ is ElementMatch!14975) (regOne!30462 (regOne!30462 r!7292)))) b!5318924))

(assert (= (and b!5318421 ((_ is Concat!23820) (regOne!30462 (regOne!30462 r!7292)))) b!5318925))

(assert (= (and b!5318421 ((_ is Star!14975) (regOne!30462 (regOne!30462 r!7292)))) b!5318926))

(assert (= (and b!5318421 ((_ is Union!14975) (regOne!30462 (regOne!30462 r!7292)))) b!5318927))

(declare-fun b!5318930 () Bool)

(declare-fun e!3304630 () Bool)

(declare-fun tp!1481161 () Bool)

(assert (=> b!5318930 (= e!3304630 tp!1481161)))

(assert (=> b!5318421 (= tp!1481066 e!3304630)))

(declare-fun b!5318928 () Bool)

(assert (=> b!5318928 (= e!3304630 tp_is_empty!39203)))

(declare-fun b!5318931 () Bool)

(declare-fun tp!1481159 () Bool)

(declare-fun tp!1481163 () Bool)

(assert (=> b!5318931 (= e!3304630 (and tp!1481159 tp!1481163))))

(declare-fun b!5318929 () Bool)

(declare-fun tp!1481162 () Bool)

(declare-fun tp!1481160 () Bool)

(assert (=> b!5318929 (= e!3304630 (and tp!1481162 tp!1481160))))

(assert (= (and b!5318421 ((_ is ElementMatch!14975) (regTwo!30462 (regOne!30462 r!7292)))) b!5318928))

(assert (= (and b!5318421 ((_ is Concat!23820) (regTwo!30462 (regOne!30462 r!7292)))) b!5318929))

(assert (= (and b!5318421 ((_ is Star!14975) (regTwo!30462 (regOne!30462 r!7292)))) b!5318930))

(assert (= (and b!5318421 ((_ is Union!14975) (regTwo!30462 (regOne!30462 r!7292)))) b!5318931))

(declare-fun b!5318934 () Bool)

(declare-fun e!3304631 () Bool)

(declare-fun tp!1481166 () Bool)

(assert (=> b!5318934 (= e!3304631 tp!1481166)))

(assert (=> b!5318431 (= tp!1481075 e!3304631)))

(declare-fun b!5318932 () Bool)

(assert (=> b!5318932 (= e!3304631 tp_is_empty!39203)))

(declare-fun b!5318935 () Bool)

(declare-fun tp!1481164 () Bool)

(declare-fun tp!1481168 () Bool)

(assert (=> b!5318935 (= e!3304631 (and tp!1481164 tp!1481168))))

(declare-fun b!5318933 () Bool)

(declare-fun tp!1481167 () Bool)

(declare-fun tp!1481165 () Bool)

(assert (=> b!5318933 (= e!3304631 (and tp!1481167 tp!1481165))))

(assert (= (and b!5318431 ((_ is ElementMatch!14975) (regOne!30463 (reg!15304 r!7292)))) b!5318932))

(assert (= (and b!5318431 ((_ is Concat!23820) (regOne!30463 (reg!15304 r!7292)))) b!5318933))

(assert (= (and b!5318431 ((_ is Star!14975) (regOne!30463 (reg!15304 r!7292)))) b!5318934))

(assert (= (and b!5318431 ((_ is Union!14975) (regOne!30463 (reg!15304 r!7292)))) b!5318935))

(declare-fun b!5318938 () Bool)

(declare-fun e!3304632 () Bool)

(declare-fun tp!1481171 () Bool)

(assert (=> b!5318938 (= e!3304632 tp!1481171)))

(assert (=> b!5318431 (= tp!1481079 e!3304632)))

(declare-fun b!5318936 () Bool)

(assert (=> b!5318936 (= e!3304632 tp_is_empty!39203)))

(declare-fun b!5318939 () Bool)

(declare-fun tp!1481169 () Bool)

(declare-fun tp!1481173 () Bool)

(assert (=> b!5318939 (= e!3304632 (and tp!1481169 tp!1481173))))

(declare-fun b!5318937 () Bool)

(declare-fun tp!1481172 () Bool)

(declare-fun tp!1481170 () Bool)

(assert (=> b!5318937 (= e!3304632 (and tp!1481172 tp!1481170))))

(assert (= (and b!5318431 ((_ is ElementMatch!14975) (regTwo!30463 (reg!15304 r!7292)))) b!5318936))

(assert (= (and b!5318431 ((_ is Concat!23820) (regTwo!30463 (reg!15304 r!7292)))) b!5318937))

(assert (= (and b!5318431 ((_ is Star!14975) (regTwo!30463 (reg!15304 r!7292)))) b!5318938))

(assert (= (and b!5318431 ((_ is Union!14975) (regTwo!30463 (reg!15304 r!7292)))) b!5318939))

(declare-fun b!5318942 () Bool)

(declare-fun e!3304633 () Bool)

(declare-fun tp!1481176 () Bool)

(assert (=> b!5318942 (= e!3304633 tp!1481176)))

(assert (=> b!5318422 (= tp!1481067 e!3304633)))

(declare-fun b!5318940 () Bool)

(assert (=> b!5318940 (= e!3304633 tp_is_empty!39203)))

(declare-fun b!5318943 () Bool)

(declare-fun tp!1481174 () Bool)

(declare-fun tp!1481178 () Bool)

(assert (=> b!5318943 (= e!3304633 (and tp!1481174 tp!1481178))))

(declare-fun b!5318941 () Bool)

(declare-fun tp!1481177 () Bool)

(declare-fun tp!1481175 () Bool)

(assert (=> b!5318941 (= e!3304633 (and tp!1481177 tp!1481175))))

(assert (= (and b!5318422 ((_ is ElementMatch!14975) (reg!15304 (regOne!30462 r!7292)))) b!5318940))

(assert (= (and b!5318422 ((_ is Concat!23820) (reg!15304 (regOne!30462 r!7292)))) b!5318941))

(assert (= (and b!5318422 ((_ is Star!14975) (reg!15304 (regOne!30462 r!7292)))) b!5318942))

(assert (= (and b!5318422 ((_ is Union!14975) (reg!15304 (regOne!30462 r!7292)))) b!5318943))

(declare-fun b!5318944 () Bool)

(declare-fun e!3304634 () Bool)

(declare-fun tp!1481179 () Bool)

(declare-fun tp!1481180 () Bool)

(assert (=> b!5318944 (= e!3304634 (and tp!1481179 tp!1481180))))

(assert (=> b!5318409 (= tp!1481053 e!3304634)))

(assert (= (and b!5318409 ((_ is Cons!61100) (exprs!4859 (h!67549 (t!374434 zl!343))))) b!5318944))

(declare-fun b!5318947 () Bool)

(declare-fun e!3304635 () Bool)

(declare-fun tp!1481183 () Bool)

(assert (=> b!5318947 (= e!3304635 tp!1481183)))

(assert (=> b!5318439 (= tp!1481091 e!3304635)))

(declare-fun b!5318945 () Bool)

(assert (=> b!5318945 (= e!3304635 tp_is_empty!39203)))

(declare-fun b!5318948 () Bool)

(declare-fun tp!1481181 () Bool)

(declare-fun tp!1481185 () Bool)

(assert (=> b!5318948 (= e!3304635 (and tp!1481181 tp!1481185))))

(declare-fun b!5318946 () Bool)

(declare-fun tp!1481184 () Bool)

(declare-fun tp!1481182 () Bool)

(assert (=> b!5318946 (= e!3304635 (and tp!1481184 tp!1481182))))

(assert (= (and b!5318439 ((_ is ElementMatch!14975) (regOne!30462 (regOne!30463 r!7292)))) b!5318945))

(assert (= (and b!5318439 ((_ is Concat!23820) (regOne!30462 (regOne!30463 r!7292)))) b!5318946))

(assert (= (and b!5318439 ((_ is Star!14975) (regOne!30462 (regOne!30463 r!7292)))) b!5318947))

(assert (= (and b!5318439 ((_ is Union!14975) (regOne!30462 (regOne!30463 r!7292)))) b!5318948))

(declare-fun b!5318951 () Bool)

(declare-fun e!3304636 () Bool)

(declare-fun tp!1481188 () Bool)

(assert (=> b!5318951 (= e!3304636 tp!1481188)))

(assert (=> b!5318439 (= tp!1481089 e!3304636)))

(declare-fun b!5318949 () Bool)

(assert (=> b!5318949 (= e!3304636 tp_is_empty!39203)))

(declare-fun b!5318952 () Bool)

(declare-fun tp!1481186 () Bool)

(declare-fun tp!1481190 () Bool)

(assert (=> b!5318952 (= e!3304636 (and tp!1481186 tp!1481190))))

(declare-fun b!5318950 () Bool)

(declare-fun tp!1481189 () Bool)

(declare-fun tp!1481187 () Bool)

(assert (=> b!5318950 (= e!3304636 (and tp!1481189 tp!1481187))))

(assert (= (and b!5318439 ((_ is ElementMatch!14975) (regTwo!30462 (regOne!30463 r!7292)))) b!5318949))

(assert (= (and b!5318439 ((_ is Concat!23820) (regTwo!30462 (regOne!30463 r!7292)))) b!5318950))

(assert (= (and b!5318439 ((_ is Star!14975) (regTwo!30462 (regOne!30463 r!7292)))) b!5318951))

(assert (= (and b!5318439 ((_ is Union!14975) (regTwo!30462 (regOne!30463 r!7292)))) b!5318952))

(declare-fun b!5318955 () Bool)

(declare-fun e!3304637 () Bool)

(declare-fun tp!1481193 () Bool)

(assert (=> b!5318955 (= e!3304637 tp!1481193)))

(assert (=> b!5318440 (= tp!1481090 e!3304637)))

(declare-fun b!5318953 () Bool)

(assert (=> b!5318953 (= e!3304637 tp_is_empty!39203)))

(declare-fun b!5318956 () Bool)

(declare-fun tp!1481191 () Bool)

(declare-fun tp!1481195 () Bool)

(assert (=> b!5318956 (= e!3304637 (and tp!1481191 tp!1481195))))

(declare-fun b!5318954 () Bool)

(declare-fun tp!1481194 () Bool)

(declare-fun tp!1481192 () Bool)

(assert (=> b!5318954 (= e!3304637 (and tp!1481194 tp!1481192))))

(assert (= (and b!5318440 ((_ is ElementMatch!14975) (reg!15304 (regOne!30463 r!7292)))) b!5318953))

(assert (= (and b!5318440 ((_ is Concat!23820) (reg!15304 (regOne!30463 r!7292)))) b!5318954))

(assert (= (and b!5318440 ((_ is Star!14975) (reg!15304 (regOne!30463 r!7292)))) b!5318955))

(assert (= (and b!5318440 ((_ is Union!14975) (reg!15304 (regOne!30463 r!7292)))) b!5318956))

(declare-fun b!5318957 () Bool)

(declare-fun e!3304638 () Bool)

(declare-fun tp!1481196 () Bool)

(assert (=> b!5318957 (= e!3304638 (and tp_is_empty!39203 tp!1481196))))

(assert (=> b!5318401 (= tp!1481048 e!3304638)))

(assert (= (and b!5318401 ((_ is Cons!61102) (t!374435 (t!374435 s!2326)))) b!5318957))

(declare-fun b!5318959 () Bool)

(declare-fun e!3304640 () Bool)

(declare-fun tp!1481197 () Bool)

(assert (=> b!5318959 (= e!3304640 tp!1481197)))

(declare-fun e!3304639 () Bool)

(declare-fun tp!1481198 () Bool)

(declare-fun b!5318958 () Bool)

(assert (=> b!5318958 (= e!3304639 (and (inv!80684 (h!67549 (t!374434 (t!374434 zl!343)))) e!3304640 tp!1481198))))

(assert (=> b!5318408 (= tp!1481054 e!3304639)))

(assert (= b!5318958 b!5318959))

(assert (= (and b!5318408 ((_ is Cons!61101) (t!374434 (t!374434 zl!343)))) b!5318958))

(declare-fun m!6354406 () Bool)

(assert (=> b!5318958 m!6354406))

(declare-fun b!5318962 () Bool)

(declare-fun e!3304641 () Bool)

(declare-fun tp!1481201 () Bool)

(assert (=> b!5318962 (= e!3304641 tp!1481201)))

(assert (=> b!5318427 (= tp!1481070 e!3304641)))

(declare-fun b!5318960 () Bool)

(assert (=> b!5318960 (= e!3304641 tp_is_empty!39203)))

(declare-fun b!5318963 () Bool)

(declare-fun tp!1481199 () Bool)

(declare-fun tp!1481203 () Bool)

(assert (=> b!5318963 (= e!3304641 (and tp!1481199 tp!1481203))))

(declare-fun b!5318961 () Bool)

(declare-fun tp!1481202 () Bool)

(declare-fun tp!1481200 () Bool)

(assert (=> b!5318961 (= e!3304641 (and tp!1481202 tp!1481200))))

(assert (= (and b!5318427 ((_ is ElementMatch!14975) (regOne!30463 (regTwo!30462 r!7292)))) b!5318960))

(assert (= (and b!5318427 ((_ is Concat!23820) (regOne!30463 (regTwo!30462 r!7292)))) b!5318961))

(assert (= (and b!5318427 ((_ is Star!14975) (regOne!30463 (regTwo!30462 r!7292)))) b!5318962))

(assert (= (and b!5318427 ((_ is Union!14975) (regOne!30463 (regTwo!30462 r!7292)))) b!5318963))

(declare-fun b!5318966 () Bool)

(declare-fun e!3304642 () Bool)

(declare-fun tp!1481206 () Bool)

(assert (=> b!5318966 (= e!3304642 tp!1481206)))

(assert (=> b!5318427 (= tp!1481074 e!3304642)))

(declare-fun b!5318964 () Bool)

(assert (=> b!5318964 (= e!3304642 tp_is_empty!39203)))

(declare-fun b!5318967 () Bool)

(declare-fun tp!1481204 () Bool)

(declare-fun tp!1481208 () Bool)

(assert (=> b!5318967 (= e!3304642 (and tp!1481204 tp!1481208))))

(declare-fun b!5318965 () Bool)

(declare-fun tp!1481207 () Bool)

(declare-fun tp!1481205 () Bool)

(assert (=> b!5318965 (= e!3304642 (and tp!1481207 tp!1481205))))

(assert (= (and b!5318427 ((_ is ElementMatch!14975) (regTwo!30463 (regTwo!30462 r!7292)))) b!5318964))

(assert (= (and b!5318427 ((_ is Concat!23820) (regTwo!30463 (regTwo!30462 r!7292)))) b!5318965))

(assert (= (and b!5318427 ((_ is Star!14975) (regTwo!30463 (regTwo!30462 r!7292)))) b!5318966))

(assert (= (and b!5318427 ((_ is Union!14975) (regTwo!30463 (regTwo!30462 r!7292)))) b!5318967))

(declare-fun condSetEmpty!34232 () Bool)

(assert (=> setNonEmpty!34227 (= condSetEmpty!34232 (= setRest!34227 ((as const (Array Context!8718 Bool)) false)))))

(declare-fun setRes!34232 () Bool)

(assert (=> setNonEmpty!34227 (= tp!1481085 setRes!34232)))

(declare-fun setIsEmpty!34232 () Bool)

(assert (=> setIsEmpty!34232 setRes!34232))

(declare-fun tp!1481210 () Bool)

(declare-fun setNonEmpty!34232 () Bool)

(declare-fun setElem!34232 () Context!8718)

(declare-fun e!3304643 () Bool)

(assert (=> setNonEmpty!34232 (= setRes!34232 (and tp!1481210 (inv!80684 setElem!34232) e!3304643))))

(declare-fun setRest!34232 () (InoxSet Context!8718))

(assert (=> setNonEmpty!34232 (= setRest!34227 ((_ map or) (store ((as const (Array Context!8718 Bool)) false) setElem!34232 true) setRest!34232))))

(declare-fun b!5318968 () Bool)

(declare-fun tp!1481209 () Bool)

(assert (=> b!5318968 (= e!3304643 tp!1481209)))

(assert (= (and setNonEmpty!34227 condSetEmpty!34232) setIsEmpty!34232))

(assert (= (and setNonEmpty!34227 (not condSetEmpty!34232)) setNonEmpty!34232))

(assert (= setNonEmpty!34232 b!5318968))

(declare-fun m!6354408 () Bool)

(assert (=> setNonEmpty!34232 m!6354408))

(declare-fun b!5318971 () Bool)

(declare-fun e!3304644 () Bool)

(declare-fun tp!1481213 () Bool)

(assert (=> b!5318971 (= e!3304644 tp!1481213)))

(assert (=> b!5318441 (= tp!1481088 e!3304644)))

(declare-fun b!5318969 () Bool)

(assert (=> b!5318969 (= e!3304644 tp_is_empty!39203)))

(declare-fun b!5318972 () Bool)

(declare-fun tp!1481211 () Bool)

(declare-fun tp!1481215 () Bool)

(assert (=> b!5318972 (= e!3304644 (and tp!1481211 tp!1481215))))

(declare-fun b!5318970 () Bool)

(declare-fun tp!1481214 () Bool)

(declare-fun tp!1481212 () Bool)

(assert (=> b!5318970 (= e!3304644 (and tp!1481214 tp!1481212))))

(assert (= (and b!5318441 ((_ is ElementMatch!14975) (regOne!30463 (regOne!30463 r!7292)))) b!5318969))

(assert (= (and b!5318441 ((_ is Concat!23820) (regOne!30463 (regOne!30463 r!7292)))) b!5318970))

(assert (= (and b!5318441 ((_ is Star!14975) (regOne!30463 (regOne!30463 r!7292)))) b!5318971))

(assert (= (and b!5318441 ((_ is Union!14975) (regOne!30463 (regOne!30463 r!7292)))) b!5318972))

(declare-fun b!5318975 () Bool)

(declare-fun e!3304645 () Bool)

(declare-fun tp!1481218 () Bool)

(assert (=> b!5318975 (= e!3304645 tp!1481218)))

(assert (=> b!5318441 (= tp!1481092 e!3304645)))

(declare-fun b!5318973 () Bool)

(assert (=> b!5318973 (= e!3304645 tp_is_empty!39203)))

(declare-fun b!5318976 () Bool)

(declare-fun tp!1481216 () Bool)

(declare-fun tp!1481220 () Bool)

(assert (=> b!5318976 (= e!3304645 (and tp!1481216 tp!1481220))))

(declare-fun b!5318974 () Bool)

(declare-fun tp!1481219 () Bool)

(declare-fun tp!1481217 () Bool)

(assert (=> b!5318974 (= e!3304645 (and tp!1481219 tp!1481217))))

(assert (= (and b!5318441 ((_ is ElementMatch!14975) (regTwo!30463 (regOne!30463 r!7292)))) b!5318973))

(assert (= (and b!5318441 ((_ is Concat!23820) (regTwo!30463 (regOne!30463 r!7292)))) b!5318974))

(assert (= (and b!5318441 ((_ is Star!14975) (regTwo!30463 (regOne!30463 r!7292)))) b!5318975))

(assert (= (and b!5318441 ((_ is Union!14975) (regTwo!30463 (regOne!30463 r!7292)))) b!5318976))

(declare-fun b!5318979 () Bool)

(declare-fun e!3304646 () Bool)

(declare-fun tp!1481223 () Bool)

(assert (=> b!5318979 (= e!3304646 tp!1481223)))

(assert (=> b!5318425 (= tp!1481073 e!3304646)))

(declare-fun b!5318977 () Bool)

(assert (=> b!5318977 (= e!3304646 tp_is_empty!39203)))

(declare-fun b!5318980 () Bool)

(declare-fun tp!1481221 () Bool)

(declare-fun tp!1481225 () Bool)

(assert (=> b!5318980 (= e!3304646 (and tp!1481221 tp!1481225))))

(declare-fun b!5318978 () Bool)

(declare-fun tp!1481224 () Bool)

(declare-fun tp!1481222 () Bool)

(assert (=> b!5318978 (= e!3304646 (and tp!1481224 tp!1481222))))

(assert (= (and b!5318425 ((_ is ElementMatch!14975) (regOne!30462 (regTwo!30462 r!7292)))) b!5318977))

(assert (= (and b!5318425 ((_ is Concat!23820) (regOne!30462 (regTwo!30462 r!7292)))) b!5318978))

(assert (= (and b!5318425 ((_ is Star!14975) (regOne!30462 (regTwo!30462 r!7292)))) b!5318979))

(assert (= (and b!5318425 ((_ is Union!14975) (regOne!30462 (regTwo!30462 r!7292)))) b!5318980))

(declare-fun b!5318983 () Bool)

(declare-fun e!3304647 () Bool)

(declare-fun tp!1481228 () Bool)

(assert (=> b!5318983 (= e!3304647 tp!1481228)))

(assert (=> b!5318425 (= tp!1481071 e!3304647)))

(declare-fun b!5318981 () Bool)

(assert (=> b!5318981 (= e!3304647 tp_is_empty!39203)))

(declare-fun b!5318984 () Bool)

(declare-fun tp!1481226 () Bool)

(declare-fun tp!1481230 () Bool)

(assert (=> b!5318984 (= e!3304647 (and tp!1481226 tp!1481230))))

(declare-fun b!5318982 () Bool)

(declare-fun tp!1481229 () Bool)

(declare-fun tp!1481227 () Bool)

(assert (=> b!5318982 (= e!3304647 (and tp!1481229 tp!1481227))))

(assert (= (and b!5318425 ((_ is ElementMatch!14975) (regTwo!30462 (regTwo!30462 r!7292)))) b!5318981))

(assert (= (and b!5318425 ((_ is Concat!23820) (regTwo!30462 (regTwo!30462 r!7292)))) b!5318982))

(assert (= (and b!5318425 ((_ is Star!14975) (regTwo!30462 (regTwo!30462 r!7292)))) b!5318983))

(assert (= (and b!5318425 ((_ is Union!14975) (regTwo!30462 (regTwo!30462 r!7292)))) b!5318984))

(declare-fun b!5318987 () Bool)

(declare-fun e!3304648 () Bool)

(declare-fun tp!1481233 () Bool)

(assert (=> b!5318987 (= e!3304648 tp!1481233)))

(assert (=> b!5318396 (= tp!1481044 e!3304648)))

(declare-fun b!5318985 () Bool)

(assert (=> b!5318985 (= e!3304648 tp_is_empty!39203)))

(declare-fun b!5318988 () Bool)

(declare-fun tp!1481231 () Bool)

(declare-fun tp!1481235 () Bool)

(assert (=> b!5318988 (= e!3304648 (and tp!1481231 tp!1481235))))

(declare-fun b!5318986 () Bool)

(declare-fun tp!1481234 () Bool)

(declare-fun tp!1481232 () Bool)

(assert (=> b!5318986 (= e!3304648 (and tp!1481234 tp!1481232))))

(assert (= (and b!5318396 ((_ is ElementMatch!14975) (h!67548 (exprs!4859 (h!67549 zl!343))))) b!5318985))

(assert (= (and b!5318396 ((_ is Concat!23820) (h!67548 (exprs!4859 (h!67549 zl!343))))) b!5318986))

(assert (= (and b!5318396 ((_ is Star!14975) (h!67548 (exprs!4859 (h!67549 zl!343))))) b!5318987))

(assert (= (and b!5318396 ((_ is Union!14975) (h!67548 (exprs!4859 (h!67549 zl!343))))) b!5318988))

(declare-fun b!5318989 () Bool)

(declare-fun e!3304649 () Bool)

(declare-fun tp!1481236 () Bool)

(declare-fun tp!1481237 () Bool)

(assert (=> b!5318989 (= e!3304649 (and tp!1481236 tp!1481237))))

(assert (=> b!5318396 (= tp!1481045 e!3304649)))

(assert (= (and b!5318396 ((_ is Cons!61100) (t!374433 (exprs!4859 (h!67549 zl!343))))) b!5318989))

(declare-fun b!5318992 () Bool)

(declare-fun e!3304650 () Bool)

(declare-fun tp!1481240 () Bool)

(assert (=> b!5318992 (= e!3304650 tp!1481240)))

(assert (=> b!5318426 (= tp!1481072 e!3304650)))

(declare-fun b!5318990 () Bool)

(assert (=> b!5318990 (= e!3304650 tp_is_empty!39203)))

(declare-fun b!5318993 () Bool)

(declare-fun tp!1481238 () Bool)

(declare-fun tp!1481242 () Bool)

(assert (=> b!5318993 (= e!3304650 (and tp!1481238 tp!1481242))))

(declare-fun b!5318991 () Bool)

(declare-fun tp!1481241 () Bool)

(declare-fun tp!1481239 () Bool)

(assert (=> b!5318991 (= e!3304650 (and tp!1481241 tp!1481239))))

(assert (= (and b!5318426 ((_ is ElementMatch!14975) (reg!15304 (regTwo!30462 r!7292)))) b!5318990))

(assert (= (and b!5318426 ((_ is Concat!23820) (reg!15304 (regTwo!30462 r!7292)))) b!5318991))

(assert (= (and b!5318426 ((_ is Star!14975) (reg!15304 (regTwo!30462 r!7292)))) b!5318992))

(assert (= (and b!5318426 ((_ is Union!14975) (reg!15304 (regTwo!30462 r!7292)))) b!5318993))

(declare-fun b!5318996 () Bool)

(declare-fun e!3304651 () Bool)

(declare-fun tp!1481245 () Bool)

(assert (=> b!5318996 (= e!3304651 tp!1481245)))

(assert (=> b!5318443 (= tp!1481096 e!3304651)))

(declare-fun b!5318994 () Bool)

(assert (=> b!5318994 (= e!3304651 tp_is_empty!39203)))

(declare-fun b!5318997 () Bool)

(declare-fun tp!1481243 () Bool)

(declare-fun tp!1481247 () Bool)

(assert (=> b!5318997 (= e!3304651 (and tp!1481243 tp!1481247))))

(declare-fun b!5318995 () Bool)

(declare-fun tp!1481246 () Bool)

(declare-fun tp!1481244 () Bool)

(assert (=> b!5318995 (= e!3304651 (and tp!1481246 tp!1481244))))

(assert (= (and b!5318443 ((_ is ElementMatch!14975) (regOne!30462 (regTwo!30463 r!7292)))) b!5318994))

(assert (= (and b!5318443 ((_ is Concat!23820) (regOne!30462 (regTwo!30463 r!7292)))) b!5318995))

(assert (= (and b!5318443 ((_ is Star!14975) (regOne!30462 (regTwo!30463 r!7292)))) b!5318996))

(assert (= (and b!5318443 ((_ is Union!14975) (regOne!30462 (regTwo!30463 r!7292)))) b!5318997))

(declare-fun b!5319000 () Bool)

(declare-fun e!3304652 () Bool)

(declare-fun tp!1481250 () Bool)

(assert (=> b!5319000 (= e!3304652 tp!1481250)))

(assert (=> b!5318443 (= tp!1481094 e!3304652)))

(declare-fun b!5318998 () Bool)

(assert (=> b!5318998 (= e!3304652 tp_is_empty!39203)))

(declare-fun b!5319001 () Bool)

(declare-fun tp!1481248 () Bool)

(declare-fun tp!1481252 () Bool)

(assert (=> b!5319001 (= e!3304652 (and tp!1481248 tp!1481252))))

(declare-fun b!5318999 () Bool)

(declare-fun tp!1481251 () Bool)

(declare-fun tp!1481249 () Bool)

(assert (=> b!5318999 (= e!3304652 (and tp!1481251 tp!1481249))))

(assert (= (and b!5318443 ((_ is ElementMatch!14975) (regTwo!30462 (regTwo!30463 r!7292)))) b!5318998))

(assert (= (and b!5318443 ((_ is Concat!23820) (regTwo!30462 (regTwo!30463 r!7292)))) b!5318999))

(assert (= (and b!5318443 ((_ is Star!14975) (regTwo!30462 (regTwo!30463 r!7292)))) b!5319000))

(assert (= (and b!5318443 ((_ is Union!14975) (regTwo!30462 (regTwo!30463 r!7292)))) b!5319001))

(declare-fun b!5319004 () Bool)

(declare-fun e!3304653 () Bool)

(declare-fun tp!1481255 () Bool)

(assert (=> b!5319004 (= e!3304653 tp!1481255)))

(assert (=> b!5318444 (= tp!1481095 e!3304653)))

(declare-fun b!5319002 () Bool)

(assert (=> b!5319002 (= e!3304653 tp_is_empty!39203)))

(declare-fun b!5319005 () Bool)

(declare-fun tp!1481253 () Bool)

(declare-fun tp!1481257 () Bool)

(assert (=> b!5319005 (= e!3304653 (and tp!1481253 tp!1481257))))

(declare-fun b!5319003 () Bool)

(declare-fun tp!1481256 () Bool)

(declare-fun tp!1481254 () Bool)

(assert (=> b!5319003 (= e!3304653 (and tp!1481256 tp!1481254))))

(assert (= (and b!5318444 ((_ is ElementMatch!14975) (reg!15304 (regTwo!30463 r!7292)))) b!5319002))

(assert (= (and b!5318444 ((_ is Concat!23820) (reg!15304 (regTwo!30463 r!7292)))) b!5319003))

(assert (= (and b!5318444 ((_ is Star!14975) (reg!15304 (regTwo!30463 r!7292)))) b!5319004))

(assert (= (and b!5318444 ((_ is Union!14975) (reg!15304 (regTwo!30463 r!7292)))) b!5319005))

(declare-fun b!5319006 () Bool)

(declare-fun e!3304654 () Bool)

(declare-fun tp!1481258 () Bool)

(declare-fun tp!1481259 () Bool)

(assert (=> b!5319006 (= e!3304654 (and tp!1481258 tp!1481259))))

(assert (=> b!5318436 (= tp!1481084 e!3304654)))

(assert (= (and b!5318436 ((_ is Cons!61100) (exprs!4859 setElem!34227))) b!5319006))

(declare-fun b_lambda!204595 () Bool)

(assert (= b_lambda!204585 (or d!1708275 b_lambda!204595)))

(declare-fun bs!1232734 () Bool)

(declare-fun d!1708597 () Bool)

(assert (= bs!1232734 (and d!1708597 d!1708275)))

(assert (=> bs!1232734 (= (dynLambda!24150 lambda!271165 (h!67548 (exprs!4859 (h!67549 zl!343)))) (validRegex!6711 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(declare-fun m!6354410 () Bool)

(assert (=> bs!1232734 m!6354410))

(assert (=> b!5318623 d!1708597))

(declare-fun b_lambda!204597 () Bool)

(assert (= b_lambda!204593 (or b!5317683 b_lambda!204597)))

(assert (=> d!1708559 d!1708381))

(declare-fun b_lambda!204599 () Bool)

(assert (= b_lambda!204589 (or d!1708265 b_lambda!204599)))

(declare-fun bs!1232735 () Bool)

(declare-fun d!1708599 () Bool)

(assert (= bs!1232735 (and d!1708599 d!1708265)))

(assert (=> bs!1232735 (= (dynLambda!24150 lambda!271158 (h!67548 lt!2171506)) (validRegex!6711 (h!67548 lt!2171506)))))

(declare-fun m!6354412 () Bool)

(assert (=> bs!1232735 m!6354412))

(assert (=> b!5318796 d!1708599))

(declare-fun b_lambda!204601 () Bool)

(assert (= b_lambda!204581 (or d!1708251 b_lambda!204601)))

(declare-fun bs!1232736 () Bool)

(declare-fun d!1708601 () Bool)

(assert (= bs!1232736 (and d!1708601 d!1708251)))

(assert (=> bs!1232736 (= (dynLambda!24150 lambda!271145 (h!67548 (exprs!4859 (h!67549 zl!343)))) (validRegex!6711 (h!67548 (exprs!4859 (h!67549 zl!343)))))))

(assert (=> bs!1232736 m!6354410))

(assert (=> b!5318525 d!1708601))

(declare-fun b_lambda!204603 () Bool)

(assert (= b_lambda!204591 (or b!5317683 b_lambda!204603)))

(assert (=> d!1708557 d!1708379))

(declare-fun b_lambda!204605 () Bool)

(assert (= b_lambda!204587 (or d!1708261 b_lambda!204605)))

(declare-fun bs!1232737 () Bool)

(declare-fun d!1708603 () Bool)

(assert (= bs!1232737 (and d!1708603 d!1708261)))

(assert (=> bs!1232737 (= (dynLambda!24150 lambda!271151 (h!67548 (unfocusZipperList!417 zl!343))) (validRegex!6711 (h!67548 (unfocusZipperList!417 zl!343))))))

(declare-fun m!6354414 () Bool)

(assert (=> bs!1232737 m!6354414))

(assert (=> b!5318692 d!1708603))

(declare-fun b_lambda!204607 () Bool)

(assert (= b_lambda!204583 (or d!1708285 b_lambda!204607)))

(declare-fun bs!1232738 () Bool)

(declare-fun d!1708605 () Bool)

(assert (= bs!1232738 (and d!1708605 d!1708285)))

(assert (=> bs!1232738 (= (dynLambda!24150 lambda!271167 (h!67548 (exprs!4859 setElem!34221))) (validRegex!6711 (h!67548 (exprs!4859 setElem!34221))))))

(declare-fun m!6354416 () Bool)

(assert (=> bs!1232738 m!6354416))

(assert (=> b!5318527 d!1708605))

(check-sat (not b!5318958) (not b!5318757) (not bs!1232734) (not b!5319006) (not setNonEmpty!34230) (not b!5318725) (not b!5318804) (not b!5318906) (not d!1708561) (not b!5318970) (not b!5318650) (not b!5318950) (not b!5318854) (not b!5318815) (not b!5318635) (not b!5318567) (not d!1708387) (not b!5318975) (not bs!1232735) (not b!5318986) (not bm!379580) (not b!5318718) (not b!5318458) (not b!5319004) (not bm!379566) (not setNonEmpty!34232) (not b!5318573) (not b!5318925) (not b!5318910) (not b!5318723) (not b!5318946) (not b!5318843) (not d!1708583) (not b!5318550) (not bm!379525) (not b!5318766) (not b!5318799) (not b!5318545) (not b!5318583) (not b!5318839) (not b!5318993) (not b!5319001) (not b!5318549) (not b!5318526) (not b!5318929) (not b!5318797) (not b!5318743) (not b!5318542) (not d!1708513) (not bm!379531) (not b!5318913) (not b!5318948) (not b!5318947) (not b!5318898) (not b!5318909) (not d!1708531) (not b!5318717) (not d!1708557) (not d!1708549) (not bm!379587) (not bm!379535) (not bm!379565) (not d!1708575) (not b!5318618) (not bm!379557) (not b!5318742) (not bm!379530) (not b!5318528) (not b!5318828) (not d!1708527) (not d!1708437) (not b!5318927) (not b!5318972) (not b!5318798) (not b!5318941) (not bm!379586) (not d!1708499) (not b!5318923) (not b!5318983) (not d!1708593) (not b!5318926) (not bm!379558) (not b!5318848) (not bm!379554) (not b!5318841) (not bm!379612) (not d!1708515) (not b!5318765) (not d!1708581) (not b!5318813) (not b!5318952) (not bs!1232738) (not bm!379524) (not b!5318476) (not d!1708551) (not b!5318963) (not bm!379561) (not b!5318968) (not b!5318991) (not bm!379585) (not d!1708453) (not b!5318802) (not b!5318921) (not d!1708587) (not bm!379560) (not b_lambda!204599) (not b!5318823) (not b!5318512) (not b!5318727) (not b!5318702) (not d!1708489) (not b!5318966) (not bm!379594) (not b!5318674) (not b!5318965) (not b!5318581) (not b_lambda!204579) (not bm!379538) (not b!5318961) (not b!5318992) (not b!5318693) (not b!5318995) (not bm!379621) (not d!1708421) (not bm!379576) (not bm!379545) (not bm!379567) (not b!5318957) (not b!5318677) (not b!5318934) (not b!5318996) (not d!1708501) (not b!5318510) (not b!5318938) (not b!5319005) (not d!1708399) (not b!5318918) (not b!5318894) (not bs!1232737) (not b!5318624) (not b!5318543) (not b!5318959) (not b!5318504) (not bm!379569) (not b!5318818) (not d!1708541) (not b!5318825) (not bm!379537) (not d!1708397) (not b!5318833) (not b!5318956) (not b!5318874) (not bm!379589) (not b!5318835) (not b!5318756) (not b!5318877) (not b!5318814) (not b!5318853) (not bm!379595) (not b!5318912) (not b_lambda!204597) (not b!5318987) (not b!5318640) (not b!5318764) (not b!5318806) (not b!5318459) (not b!5318982) (not b!5318467) (not b!5318942) (not bm!379608) (not d!1708439) (not b!5318943) (not b_lambda!204605) (not b!5318914) (not b!5318997) (not bm!379614) (not bm!379539) (not b_lambda!204603) (not b!5318980) (not b!5318901) (not bm!379620) (not bm!379619) (not b!5318719) (not bm!379607) (not b!5318820) (not b!5318800) (not b_lambda!204577) (not d!1708559) (not d!1708573) (not bm!379575) (not b!5318939) (not d!1708451) (not d!1708423) (not b!5318732) (not b!5318511) (not b!5318606) (not b!5318889) (not bm!379606) (not b!5318954) (not b!5318933) (not b!5318916) (not b!5318922) (not d!1708589) (not b!5318687) (not bm!379577) (not d!1708505) (not bm!379610) (not b!5318453) (not d!1708427) (not bm!379581) (not b!5318951) (not b_lambda!204595) (not b!5318984) (not b!5318905) (not bm!379578) (not b!5318955) (not d!1708389) (not b!5318962) (not b!5318491) (not bm!379544) (not b!5318539) (not b!5318967) (not b!5318746) (not d!1708555) (not d!1708519) (not bm!379601) (not b!5318976) (not b!5318547) (not b!5318464) (not d!1708425) (not b!5318625) (not b!5318538) (not d!1708517) (not b!5318775) (not b!5318930) (not bm!379574) (not bm!379528) (not bm!379626) (not b!5318878) (not d!1708407) (not b!5318920) (not b!5318893) (not b!5318554) (not b!5318896) (not b!5318931) (not b!5318482) (not d!1708521) (not b!5318819) (not b!5318902) (not b!5318908) (not b!5318448) (not b!5318574) (not bm!379625) (not b!5318979) (not b!5318917) (not b!5318575) (not d!1708543) (not bm!379609) (not b!5318520) (not b_lambda!204601) (not b!5318579) (not b!5318811) (not b!5318974) (not bm!379522) (not bm!379590) tp_is_empty!39203 (not bm!379600) (not d!1708545) (not d!1708585) (not d!1708553) (not bm!379605) (not b!5318645) (not bs!1232736) (not b!5318478) (not b!5318709) (not b!5319003) (not d!1708567) (not b!5318999) (not b!5318900) (not d!1708457) (not b!5318557) (not b!5318897) (not b!5318484) (not b!5318548) (not b!5318817) (not b!5318808) (not b!5318989) (not b!5318978) (not b_lambda!204607) (not b!5319000) (not bm!379615) (not d!1708413) (not bm!379611) (not b!5318863) (not b!5318834) (not b!5318971) (not b!5318477) (not b!5318807) (not b!5318892) (not b!5318786) (not b!5318935) (not b!5318888) (not d!1708415) (not bm!379526) (not b!5318944) (not d!1708463) (not b!5318937) (not b!5318518) (not b!5318904) (not b!5318486) (not b!5318816) (not b!5318516) (not bm!379527) (not setNonEmpty!34231) (not bm!379591) (not b!5318553) (not bm!379593) (not d!1708487) (not b!5318988) (not bm!379536) (not bm!379543) (not bm!379599))
(check-sat)
