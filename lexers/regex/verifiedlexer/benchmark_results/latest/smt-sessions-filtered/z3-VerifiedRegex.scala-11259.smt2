; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591476 () Bool)

(assert start!591476)

(declare-fun b!5755659 () Bool)

(assert (=> b!5755659 true))

(assert (=> b!5755659 true))

(declare-fun lambda!312460 () Int)

(declare-fun lambda!312459 () Int)

(assert (=> b!5755659 (not (= lambda!312460 lambda!312459))))

(assert (=> b!5755659 true))

(assert (=> b!5755659 true))

(declare-fun b!5755662 () Bool)

(assert (=> b!5755662 true))

(declare-fun b!5755650 () Bool)

(declare-fun e!3537086 () Bool)

(declare-fun tp_is_empty!40783 () Bool)

(assert (=> b!5755650 (= e!3537086 tp_is_empty!40783)))

(declare-fun b!5755651 () Bool)

(declare-fun res!2429863 () Bool)

(declare-fun e!3537084 () Bool)

(assert (=> b!5755651 (=> (not res!2429863) (not e!3537084))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31800 0))(
  ( (C!31801 (val!25602 Int)) )
))
(declare-datatypes ((Regex!15765 0))(
  ( (ElementMatch!15765 (c!1017073 C!31800)) (Concat!24610 (regOne!32042 Regex!15765) (regTwo!32042 Regex!15765)) (EmptyExpr!15765) (Star!15765 (reg!16094 Regex!15765)) (EmptyLang!15765) (Union!15765 (regOne!32043 Regex!15765) (regTwo!32043 Regex!15765)) )
))
(declare-datatypes ((List!63594 0))(
  ( (Nil!63470) (Cons!63470 (h!69918 Regex!15765) (t!376926 List!63594)) )
))
(declare-datatypes ((Context!10298 0))(
  ( (Context!10299 (exprs!5649 List!63594)) )
))
(declare-fun z!1189 () (InoxSet Context!10298))

(declare-datatypes ((List!63595 0))(
  ( (Nil!63471) (Cons!63471 (h!69919 Context!10298) (t!376927 List!63595)) )
))
(declare-fun zl!343 () List!63595)

(declare-fun toList!9549 ((InoxSet Context!10298)) List!63595)

(assert (=> b!5755651 (= res!2429863 (= (toList!9549 z!1189) zl!343))))

(declare-fun b!5755652 () Bool)

(declare-fun res!2429872 () Bool)

(assert (=> b!5755652 (=> (not res!2429872) (not e!3537084))))

(declare-fun r!7292 () Regex!15765)

(declare-fun unfocusZipper!1507 (List!63595) Regex!15765)

(assert (=> b!5755652 (= res!2429872 (= r!7292 (unfocusZipper!1507 zl!343)))))

(declare-fun b!5755653 () Bool)

(declare-fun res!2429865 () Bool)

(declare-fun e!3537082 () Bool)

(assert (=> b!5755653 (=> res!2429865 e!3537082)))

(get-info :version)

(assert (=> b!5755653 (= res!2429865 (or ((_ is Concat!24610) (regOne!32042 r!7292)) ((_ is Star!15765) (regOne!32042 r!7292)) (not ((_ is EmptyExpr!15765) (regOne!32042 r!7292)))))))

(declare-fun res!2429870 () Bool)

(assert (=> start!591476 (=> (not res!2429870) (not e!3537084))))

(declare-fun validRegex!7501 (Regex!15765) Bool)

(assert (=> start!591476 (= res!2429870 (validRegex!7501 r!7292))))

(assert (=> start!591476 e!3537084))

(assert (=> start!591476 e!3537086))

(declare-fun condSetEmpty!38647 () Bool)

(assert (=> start!591476 (= condSetEmpty!38647 (= z!1189 ((as const (Array Context!10298 Bool)) false)))))

(declare-fun setRes!38647 () Bool)

(assert (=> start!591476 setRes!38647))

(declare-fun e!3537079 () Bool)

(assert (=> start!591476 e!3537079))

(declare-fun e!3537080 () Bool)

(assert (=> start!591476 e!3537080))

(declare-fun b!5755654 () Bool)

(declare-fun res!2429868 () Bool)

(declare-fun e!3537089 () Bool)

(assert (=> b!5755654 (=> res!2429868 e!3537089)))

(declare-fun generalisedConcat!1380 (List!63594) Regex!15765)

(assert (=> b!5755654 (= res!2429868 (not (= r!7292 (generalisedConcat!1380 (exprs!5649 (h!69919 zl!343))))))))

(declare-fun b!5755655 () Bool)

(declare-fun tp!1590432 () Bool)

(declare-fun tp!1590433 () Bool)

(assert (=> b!5755655 (= e!3537086 (and tp!1590432 tp!1590433))))

(declare-fun b!5755656 () Bool)

(declare-fun res!2429866 () Bool)

(assert (=> b!5755656 (=> res!2429866 e!3537082)))

(declare-fun e!3537081 () Bool)

(assert (=> b!5755656 (= res!2429866 e!3537081)))

(declare-fun res!2429862 () Bool)

(assert (=> b!5755656 (=> (not res!2429862) (not e!3537081))))

(assert (=> b!5755656 (= res!2429862 ((_ is Concat!24610) (regOne!32042 r!7292)))))

(declare-fun b!5755657 () Bool)

(declare-fun e!3537090 () Bool)

(declare-fun tp!1590437 () Bool)

(assert (=> b!5755657 (= e!3537090 tp!1590437)))

(declare-fun b!5755658 () Bool)

(declare-datatypes ((Unit!156592 0))(
  ( (Unit!156593) )
))
(declare-fun e!3537087 () Unit!156592)

(declare-fun Unit!156594 () Unit!156592)

(assert (=> b!5755658 (= e!3537087 Unit!156594)))

(declare-fun e!3537083 () Bool)

(assert (=> b!5755659 (= e!3537089 e!3537083)))

(declare-fun res!2429869 () Bool)

(assert (=> b!5755659 (=> res!2429869 e!3537083)))

(declare-datatypes ((List!63596 0))(
  ( (Nil!63472) (Cons!63472 (h!69920 C!31800) (t!376928 List!63596)) )
))
(declare-fun s!2326 () List!63596)

(declare-fun lt!2288111 () Bool)

(declare-fun lt!2288108 () Bool)

(assert (=> b!5755659 (= res!2429869 (or (not (= lt!2288108 lt!2288111)) ((_ is Nil!63472) s!2326)))))

(declare-fun Exists!2865 (Int) Bool)

(assert (=> b!5755659 (= (Exists!2865 lambda!312459) (Exists!2865 lambda!312460))))

(declare-fun lt!2288112 () Unit!156592)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1494 (Regex!15765 Regex!15765 List!63596) Unit!156592)

(assert (=> b!5755659 (= lt!2288112 (lemmaExistCutMatchRandMatchRSpecEquivalent!1494 (regOne!32042 r!7292) (regTwo!32042 r!7292) s!2326))))

(assert (=> b!5755659 (= lt!2288111 (Exists!2865 lambda!312459))))

(declare-datatypes ((tuple2!65724 0))(
  ( (tuple2!65725 (_1!36165 List!63596) (_2!36165 List!63596)) )
))
(declare-datatypes ((Option!15774 0))(
  ( (None!15773) (Some!15773 (v!51830 tuple2!65724)) )
))
(declare-fun isDefined!12477 (Option!15774) Bool)

(declare-fun findConcatSeparation!2188 (Regex!15765 Regex!15765 List!63596 List!63596 List!63596) Option!15774)

(assert (=> b!5755659 (= lt!2288111 (isDefined!12477 (findConcatSeparation!2188 (regOne!32042 r!7292) (regTwo!32042 r!7292) Nil!63472 s!2326 s!2326)))))

(declare-fun lt!2288110 () Unit!156592)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1952 (Regex!15765 Regex!15765 List!63596) Unit!156592)

(assert (=> b!5755659 (= lt!2288110 (lemmaFindConcatSeparationEquivalentToExists!1952 (regOne!32042 r!7292) (regTwo!32042 r!7292) s!2326))))

(declare-fun b!5755660 () Bool)

(declare-fun tp!1590438 () Bool)

(declare-fun tp!1590431 () Bool)

(assert (=> b!5755660 (= e!3537086 (and tp!1590438 tp!1590431))))

(declare-fun b!5755661 () Bool)

(declare-fun tp!1590434 () Bool)

(declare-fun inv!82659 (Context!10298) Bool)

(assert (=> b!5755661 (= e!3537079 (and (inv!82659 (h!69919 zl!343)) e!3537090 tp!1590434))))

(assert (=> b!5755662 (= e!3537083 e!3537082)))

(declare-fun res!2429861 () Bool)

(assert (=> b!5755662 (=> res!2429861 e!3537082)))

(assert (=> b!5755662 (= res!2429861 (or (and ((_ is ElementMatch!15765) (regOne!32042 r!7292)) (= (c!1017073 (regOne!32042 r!7292)) (h!69920 s!2326))) ((_ is Union!15765) (regOne!32042 r!7292))))))

(declare-fun lt!2288113 () Unit!156592)

(assert (=> b!5755662 (= lt!2288113 e!3537087)))

(declare-fun c!1017072 () Bool)

(declare-fun nullable!5797 (Regex!15765) Bool)

(assert (=> b!5755662 (= c!1017072 (nullable!5797 (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun lambda!312461 () Int)

(declare-fun flatMap!1378 ((InoxSet Context!10298) Int) (InoxSet Context!10298))

(declare-fun derivationStepZipperUp!1033 (Context!10298 C!31800) (InoxSet Context!10298))

(assert (=> b!5755662 (= (flatMap!1378 z!1189 lambda!312461) (derivationStepZipperUp!1033 (h!69919 zl!343) (h!69920 s!2326)))))

(declare-fun lt!2288109 () Unit!156592)

(declare-fun lemmaFlatMapOnSingletonSet!910 ((InoxSet Context!10298) Context!10298 Int) Unit!156592)

(assert (=> b!5755662 (= lt!2288109 (lemmaFlatMapOnSingletonSet!910 z!1189 (h!69919 zl!343) lambda!312461))))

(declare-fun lt!2288117 () (InoxSet Context!10298))

(declare-fun lt!2288118 () Context!10298)

(assert (=> b!5755662 (= lt!2288117 (derivationStepZipperUp!1033 lt!2288118 (h!69920 s!2326)))))

(declare-fun lt!2288115 () (InoxSet Context!10298))

(declare-fun derivationStepZipperDown!1107 (Regex!15765 Context!10298 C!31800) (InoxSet Context!10298))

(assert (=> b!5755662 (= lt!2288115 (derivationStepZipperDown!1107 (h!69918 (exprs!5649 (h!69919 zl!343))) lt!2288118 (h!69920 s!2326)))))

(assert (=> b!5755662 (= lt!2288118 (Context!10299 (t!376926 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun lt!2288106 () (InoxSet Context!10298))

(assert (=> b!5755662 (= lt!2288106 (derivationStepZipperUp!1033 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343))))) (h!69920 s!2326)))))

(declare-fun b!5755663 () Bool)

(declare-fun res!2429875 () Bool)

(assert (=> b!5755663 (=> res!2429875 e!3537089)))

(declare-fun isEmpty!35357 (List!63595) Bool)

(assert (=> b!5755663 (= res!2429875 (not (isEmpty!35357 (t!376927 zl!343))))))

(declare-fun b!5755664 () Bool)

(assert (=> b!5755664 (= e!3537084 (not e!3537089))))

(declare-fun res!2429860 () Bool)

(assert (=> b!5755664 (=> res!2429860 e!3537089)))

(assert (=> b!5755664 (= res!2429860 (not ((_ is Cons!63471) zl!343)))))

(declare-fun matchRSpec!2868 (Regex!15765 List!63596) Bool)

(assert (=> b!5755664 (= lt!2288108 (matchRSpec!2868 r!7292 s!2326))))

(declare-fun matchR!7950 (Regex!15765 List!63596) Bool)

(assert (=> b!5755664 (= lt!2288108 (matchR!7950 r!7292 s!2326))))

(declare-fun lt!2288116 () Unit!156592)

(declare-fun mainMatchTheorem!2868 (Regex!15765 List!63596) Unit!156592)

(assert (=> b!5755664 (= lt!2288116 (mainMatchTheorem!2868 r!7292 s!2326))))

(declare-fun b!5755665 () Bool)

(declare-fun e!3537088 () Bool)

(declare-fun matchZipper!1903 ((InoxSet Context!10298) List!63596) Bool)

(assert (=> b!5755665 (= e!3537088 (matchZipper!1903 lt!2288117 (t!376928 s!2326)))))

(declare-fun b!5755666 () Bool)

(declare-fun res!2429864 () Bool)

(assert (=> b!5755666 (=> res!2429864 e!3537089)))

(assert (=> b!5755666 (= res!2429864 (or ((_ is EmptyExpr!15765) r!7292) ((_ is EmptyLang!15765) r!7292) ((_ is ElementMatch!15765) r!7292) ((_ is Union!15765) r!7292) (not ((_ is Concat!24610) r!7292))))))

(declare-fun setIsEmpty!38647 () Bool)

(assert (=> setIsEmpty!38647 setRes!38647))

(declare-fun b!5755667 () Bool)

(declare-fun res!2429874 () Bool)

(assert (=> b!5755667 (=> res!2429874 e!3537083)))

(declare-fun isEmpty!35358 (List!63594) Bool)

(assert (=> b!5755667 (= res!2429874 (isEmpty!35358 (t!376926 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun tp!1590435 () Bool)

(declare-fun setElem!38647 () Context!10298)

(declare-fun setNonEmpty!38647 () Bool)

(declare-fun e!3537085 () Bool)

(assert (=> setNonEmpty!38647 (= setRes!38647 (and tp!1590435 (inv!82659 setElem!38647) e!3537085))))

(declare-fun setRest!38647 () (InoxSet Context!10298))

(assert (=> setNonEmpty!38647 (= z!1189 ((_ map or) (store ((as const (Array Context!10298 Bool)) false) setElem!38647 true) setRest!38647))))

(declare-fun b!5755668 () Bool)

(declare-fun Unit!156595 () Unit!156592)

(assert (=> b!5755668 (= e!3537087 Unit!156595)))

(declare-fun lt!2288114 () Unit!156592)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!790 ((InoxSet Context!10298) (InoxSet Context!10298) List!63596) Unit!156592)

(assert (=> b!5755668 (= lt!2288114 (lemmaZipperConcatMatchesSameAsBothZippers!790 lt!2288115 lt!2288117 (t!376928 s!2326)))))

(declare-fun res!2429873 () Bool)

(assert (=> b!5755668 (= res!2429873 (matchZipper!1903 lt!2288115 (t!376928 s!2326)))))

(assert (=> b!5755668 (=> res!2429873 e!3537088)))

(assert (=> b!5755668 (= (matchZipper!1903 ((_ map or) lt!2288115 lt!2288117) (t!376928 s!2326)) e!3537088)))

(declare-fun b!5755669 () Bool)

(declare-fun res!2429871 () Bool)

(assert (=> b!5755669 (=> res!2429871 e!3537089)))

(declare-fun generalisedUnion!1628 (List!63594) Regex!15765)

(declare-fun unfocusZipperList!1193 (List!63595) List!63594)

(assert (=> b!5755669 (= res!2429871 (not (= r!7292 (generalisedUnion!1628 (unfocusZipperList!1193 zl!343)))))))

(declare-fun b!5755670 () Bool)

(declare-fun res!2429867 () Bool)

(assert (=> b!5755670 (=> res!2429867 e!3537089)))

(assert (=> b!5755670 (= res!2429867 (not ((_ is Cons!63470) (exprs!5649 (h!69919 zl!343)))))))

(declare-fun b!5755671 () Bool)

(assert (=> b!5755671 (= e!3537082 (= lt!2288115 ((as const (Array Context!10298 Bool)) false)))))

(assert (=> b!5755671 (not (matchZipper!1903 lt!2288115 (t!376928 s!2326)))))

(declare-fun lt!2288107 () Unit!156592)

(declare-fun lemmaEmptyZipperMatchesNothing!50 ((InoxSet Context!10298) List!63596) Unit!156592)

(assert (=> b!5755671 (= lt!2288107 (lemmaEmptyZipperMatchesNothing!50 lt!2288115 (t!376928 s!2326)))))

(declare-fun b!5755672 () Bool)

(declare-fun tp!1590430 () Bool)

(assert (=> b!5755672 (= e!3537080 (and tp_is_empty!40783 tp!1590430))))

(declare-fun b!5755673 () Bool)

(assert (=> b!5755673 (= e!3537081 (nullable!5797 (regOne!32042 (regOne!32042 r!7292))))))

(declare-fun b!5755674 () Bool)

(declare-fun tp!1590429 () Bool)

(assert (=> b!5755674 (= e!3537086 tp!1590429)))

(declare-fun b!5755675 () Bool)

(declare-fun tp!1590436 () Bool)

(assert (=> b!5755675 (= e!3537085 tp!1590436)))

(assert (= (and start!591476 res!2429870) b!5755651))

(assert (= (and b!5755651 res!2429863) b!5755652))

(assert (= (and b!5755652 res!2429872) b!5755664))

(assert (= (and b!5755664 (not res!2429860)) b!5755663))

(assert (= (and b!5755663 (not res!2429875)) b!5755654))

(assert (= (and b!5755654 (not res!2429868)) b!5755670))

(assert (= (and b!5755670 (not res!2429867)) b!5755669))

(assert (= (and b!5755669 (not res!2429871)) b!5755666))

(assert (= (and b!5755666 (not res!2429864)) b!5755659))

(assert (= (and b!5755659 (not res!2429869)) b!5755667))

(assert (= (and b!5755667 (not res!2429874)) b!5755662))

(assert (= (and b!5755662 c!1017072) b!5755668))

(assert (= (and b!5755662 (not c!1017072)) b!5755658))

(assert (= (and b!5755668 (not res!2429873)) b!5755665))

(assert (= (and b!5755662 (not res!2429861)) b!5755656))

(assert (= (and b!5755656 res!2429862) b!5755673))

(assert (= (and b!5755656 (not res!2429866)) b!5755653))

(assert (= (and b!5755653 (not res!2429865)) b!5755671))

(assert (= (and start!591476 ((_ is ElementMatch!15765) r!7292)) b!5755650))

(assert (= (and start!591476 ((_ is Concat!24610) r!7292)) b!5755660))

(assert (= (and start!591476 ((_ is Star!15765) r!7292)) b!5755674))

(assert (= (and start!591476 ((_ is Union!15765) r!7292)) b!5755655))

(assert (= (and start!591476 condSetEmpty!38647) setIsEmpty!38647))

(assert (= (and start!591476 (not condSetEmpty!38647)) setNonEmpty!38647))

(assert (= setNonEmpty!38647 b!5755675))

(assert (= b!5755661 b!5755657))

(assert (= (and start!591476 ((_ is Cons!63471) zl!343)) b!5755661))

(assert (= (and start!591476 ((_ is Cons!63472) s!2326)) b!5755672))

(declare-fun m!6704946 () Bool)

(assert (=> b!5755654 m!6704946))

(declare-fun m!6704948 () Bool)

(assert (=> setNonEmpty!38647 m!6704948))

(declare-fun m!6704950 () Bool)

(assert (=> b!5755659 m!6704950))

(assert (=> b!5755659 m!6704950))

(declare-fun m!6704952 () Bool)

(assert (=> b!5755659 m!6704952))

(declare-fun m!6704954 () Bool)

(assert (=> b!5755659 m!6704954))

(declare-fun m!6704956 () Bool)

(assert (=> b!5755659 m!6704956))

(declare-fun m!6704958 () Bool)

(assert (=> b!5755659 m!6704958))

(assert (=> b!5755659 m!6704956))

(declare-fun m!6704960 () Bool)

(assert (=> b!5755659 m!6704960))

(declare-fun m!6704962 () Bool)

(assert (=> b!5755671 m!6704962))

(declare-fun m!6704964 () Bool)

(assert (=> b!5755671 m!6704964))

(declare-fun m!6704966 () Bool)

(assert (=> b!5755664 m!6704966))

(declare-fun m!6704968 () Bool)

(assert (=> b!5755664 m!6704968))

(declare-fun m!6704970 () Bool)

(assert (=> b!5755664 m!6704970))

(declare-fun m!6704972 () Bool)

(assert (=> b!5755673 m!6704972))

(declare-fun m!6704974 () Bool)

(assert (=> b!5755668 m!6704974))

(assert (=> b!5755668 m!6704962))

(declare-fun m!6704976 () Bool)

(assert (=> b!5755668 m!6704976))

(declare-fun m!6704978 () Bool)

(assert (=> b!5755669 m!6704978))

(assert (=> b!5755669 m!6704978))

(declare-fun m!6704980 () Bool)

(assert (=> b!5755669 m!6704980))

(declare-fun m!6704982 () Bool)

(assert (=> b!5755665 m!6704982))

(declare-fun m!6704984 () Bool)

(assert (=> b!5755667 m!6704984))

(declare-fun m!6704986 () Bool)

(assert (=> b!5755663 m!6704986))

(declare-fun m!6704988 () Bool)

(assert (=> b!5755662 m!6704988))

(declare-fun m!6704990 () Bool)

(assert (=> b!5755662 m!6704990))

(declare-fun m!6704992 () Bool)

(assert (=> b!5755662 m!6704992))

(declare-fun m!6704994 () Bool)

(assert (=> b!5755662 m!6704994))

(declare-fun m!6704996 () Bool)

(assert (=> b!5755662 m!6704996))

(declare-fun m!6704998 () Bool)

(assert (=> b!5755662 m!6704998))

(declare-fun m!6705000 () Bool)

(assert (=> b!5755662 m!6705000))

(declare-fun m!6705002 () Bool)

(assert (=> start!591476 m!6705002))

(declare-fun m!6705004 () Bool)

(assert (=> b!5755661 m!6705004))

(declare-fun m!6705006 () Bool)

(assert (=> b!5755651 m!6705006))

(declare-fun m!6705008 () Bool)

(assert (=> b!5755652 m!6705008))

(check-sat (not b!5755667) (not b!5755652) (not b!5755651) (not b!5755663) tp_is_empty!40783 (not b!5755672) (not b!5755660) (not b!5755657) (not b!5755665) (not start!591476) (not b!5755662) (not b!5755673) (not b!5755661) (not b!5755674) (not b!5755669) (not b!5755659) (not b!5755668) (not b!5755654) (not b!5755675) (not b!5755671) (not setNonEmpty!38647) (not b!5755664) (not b!5755655))
(check-sat)
(get-model)

(declare-fun d!1813834 () Bool)

(declare-fun lambda!312464 () Int)

(declare-fun forall!14887 (List!63594 Int) Bool)

(assert (=> d!1813834 (= (inv!82659 (h!69919 zl!343)) (forall!14887 (exprs!5649 (h!69919 zl!343)) lambda!312464))))

(declare-fun bs!1348670 () Bool)

(assert (= bs!1348670 d!1813834))

(declare-fun m!6705052 () Bool)

(assert (=> bs!1348670 m!6705052))

(assert (=> b!5755661 d!1813834))

(declare-fun d!1813842 () Bool)

(declare-fun e!3537113 () Bool)

(assert (=> d!1813842 e!3537113))

(declare-fun res!2429897 () Bool)

(assert (=> d!1813842 (=> (not res!2429897) (not e!3537113))))

(declare-fun lt!2288135 () List!63595)

(declare-fun noDuplicate!1676 (List!63595) Bool)

(assert (=> d!1813842 (= res!2429897 (noDuplicate!1676 lt!2288135))))

(declare-fun choose!43648 ((InoxSet Context!10298)) List!63595)

(assert (=> d!1813842 (= lt!2288135 (choose!43648 z!1189))))

(assert (=> d!1813842 (= (toList!9549 z!1189) lt!2288135)))

(declare-fun b!5755721 () Bool)

(declare-fun content!11581 (List!63595) (InoxSet Context!10298))

(assert (=> b!5755721 (= e!3537113 (= (content!11581 lt!2288135) z!1189))))

(assert (= (and d!1813842 res!2429897) b!5755721))

(declare-fun m!6705054 () Bool)

(assert (=> d!1813842 m!6705054))

(declare-fun m!6705056 () Bool)

(assert (=> d!1813842 m!6705056))

(declare-fun m!6705058 () Bool)

(assert (=> b!5755721 m!6705058))

(assert (=> b!5755651 d!1813842))

(declare-fun d!1813844 () Bool)

(declare-fun dynLambda!24849 (Int Context!10298) (InoxSet Context!10298))

(assert (=> d!1813844 (= (flatMap!1378 z!1189 lambda!312461) (dynLambda!24849 lambda!312461 (h!69919 zl!343)))))

(declare-fun lt!2288139 () Unit!156592)

(declare-fun choose!43649 ((InoxSet Context!10298) Context!10298 Int) Unit!156592)

(assert (=> d!1813844 (= lt!2288139 (choose!43649 z!1189 (h!69919 zl!343) lambda!312461))))

(assert (=> d!1813844 (= z!1189 (store ((as const (Array Context!10298 Bool)) false) (h!69919 zl!343) true))))

(assert (=> d!1813844 (= (lemmaFlatMapOnSingletonSet!910 z!1189 (h!69919 zl!343) lambda!312461) lt!2288139)))

(declare-fun b_lambda!217423 () Bool)

(assert (=> (not b_lambda!217423) (not d!1813844)))

(declare-fun bs!1348673 () Bool)

(assert (= bs!1348673 d!1813844))

(assert (=> bs!1348673 m!6704994))

(declare-fun m!6705064 () Bool)

(assert (=> bs!1348673 m!6705064))

(declare-fun m!6705066 () Bool)

(assert (=> bs!1348673 m!6705066))

(declare-fun m!6705068 () Bool)

(assert (=> bs!1348673 m!6705068))

(assert (=> b!5755662 d!1813844))

(declare-fun b!5755740 () Bool)

(declare-fun e!3537126 () Bool)

(assert (=> b!5755740 (= e!3537126 (nullable!5797 (h!69918 (exprs!5649 lt!2288118))))))

(declare-fun b!5755741 () Bool)

(declare-fun e!3537124 () (InoxSet Context!10298))

(declare-fun e!3537125 () (InoxSet Context!10298))

(assert (=> b!5755741 (= e!3537124 e!3537125)))

(declare-fun c!1017087 () Bool)

(assert (=> b!5755741 (= c!1017087 ((_ is Cons!63470) (exprs!5649 lt!2288118)))))

(declare-fun call!441517 () (InoxSet Context!10298))

(declare-fun b!5755742 () Bool)

(assert (=> b!5755742 (= e!3537124 ((_ map or) call!441517 (derivationStepZipperUp!1033 (Context!10299 (t!376926 (exprs!5649 lt!2288118))) (h!69920 s!2326))))))

(declare-fun bm!441512 () Bool)

(assert (=> bm!441512 (= call!441517 (derivationStepZipperDown!1107 (h!69918 (exprs!5649 lt!2288118)) (Context!10299 (t!376926 (exprs!5649 lt!2288118))) (h!69920 s!2326)))))

(declare-fun b!5755743 () Bool)

(assert (=> b!5755743 (= e!3537125 call!441517)))

(declare-fun d!1813848 () Bool)

(declare-fun c!1017088 () Bool)

(assert (=> d!1813848 (= c!1017088 e!3537126)))

(declare-fun res!2429908 () Bool)

(assert (=> d!1813848 (=> (not res!2429908) (not e!3537126))))

(assert (=> d!1813848 (= res!2429908 ((_ is Cons!63470) (exprs!5649 lt!2288118)))))

(assert (=> d!1813848 (= (derivationStepZipperUp!1033 lt!2288118 (h!69920 s!2326)) e!3537124)))

(declare-fun b!5755744 () Bool)

(assert (=> b!5755744 (= e!3537125 ((as const (Array Context!10298 Bool)) false))))

(assert (= (and d!1813848 res!2429908) b!5755740))

(assert (= (and d!1813848 c!1017088) b!5755742))

(assert (= (and d!1813848 (not c!1017088)) b!5755741))

(assert (= (and b!5755741 c!1017087) b!5755743))

(assert (= (and b!5755741 (not c!1017087)) b!5755744))

(assert (= (or b!5755742 b!5755743) bm!441512))

(declare-fun m!6705078 () Bool)

(assert (=> b!5755740 m!6705078))

(declare-fun m!6705084 () Bool)

(assert (=> b!5755742 m!6705084))

(declare-fun m!6705088 () Bool)

(assert (=> bm!441512 m!6705088))

(assert (=> b!5755662 d!1813848))

(declare-fun d!1813856 () Bool)

(declare-fun nullableFct!1842 (Regex!15765) Bool)

(assert (=> d!1813856 (= (nullable!5797 (h!69918 (exprs!5649 (h!69919 zl!343)))) (nullableFct!1842 (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun bs!1348678 () Bool)

(assert (= bs!1348678 d!1813856))

(declare-fun m!6705090 () Bool)

(assert (=> bs!1348678 m!6705090))

(assert (=> b!5755662 d!1813856))

(declare-fun b!5755748 () Bool)

(declare-fun e!3537132 () Bool)

(assert (=> b!5755748 (= e!3537132 (nullable!5797 (h!69918 (exprs!5649 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343)))))))))))

(declare-fun b!5755749 () Bool)

(declare-fun e!3537130 () (InoxSet Context!10298))

(declare-fun e!3537131 () (InoxSet Context!10298))

(assert (=> b!5755749 (= e!3537130 e!3537131)))

(declare-fun c!1017089 () Bool)

(assert (=> b!5755749 (= c!1017089 ((_ is Cons!63470) (exprs!5649 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343))))))))))

(declare-fun b!5755750 () Bool)

(declare-fun call!441518 () (InoxSet Context!10298))

(assert (=> b!5755750 (= e!3537130 ((_ map or) call!441518 (derivationStepZipperUp!1033 (Context!10299 (t!376926 (exprs!5649 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343)))))))) (h!69920 s!2326))))))

(declare-fun bm!441513 () Bool)

(assert (=> bm!441513 (= call!441518 (derivationStepZipperDown!1107 (h!69918 (exprs!5649 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343))))))) (Context!10299 (t!376926 (exprs!5649 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343)))))))) (h!69920 s!2326)))))

(declare-fun b!5755751 () Bool)

(assert (=> b!5755751 (= e!3537131 call!441518)))

(declare-fun d!1813858 () Bool)

(declare-fun c!1017090 () Bool)

(assert (=> d!1813858 (= c!1017090 e!3537132)))

(declare-fun res!2429912 () Bool)

(assert (=> d!1813858 (=> (not res!2429912) (not e!3537132))))

(assert (=> d!1813858 (= res!2429912 ((_ is Cons!63470) (exprs!5649 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343))))))))))

(assert (=> d!1813858 (= (derivationStepZipperUp!1033 (Context!10299 (Cons!63470 (h!69918 (exprs!5649 (h!69919 zl!343))) (t!376926 (exprs!5649 (h!69919 zl!343))))) (h!69920 s!2326)) e!3537130)))

(declare-fun b!5755752 () Bool)

(assert (=> b!5755752 (= e!3537131 ((as const (Array Context!10298 Bool)) false))))

(assert (= (and d!1813858 res!2429912) b!5755748))

(assert (= (and d!1813858 c!1017090) b!5755750))

(assert (= (and d!1813858 (not c!1017090)) b!5755749))

(assert (= (and b!5755749 c!1017089) b!5755751))

(assert (= (and b!5755749 (not c!1017089)) b!5755752))

(assert (= (or b!5755750 b!5755751) bm!441513))

(declare-fun m!6705094 () Bool)

(assert (=> b!5755748 m!6705094))

(declare-fun m!6705096 () Bool)

(assert (=> b!5755750 m!6705096))

(declare-fun m!6705098 () Bool)

(assert (=> bm!441513 m!6705098))

(assert (=> b!5755662 d!1813858))

(declare-fun b!5755849 () Bool)

(declare-fun e!3537196 () (InoxSet Context!10298))

(declare-fun call!441547 () (InoxSet Context!10298))

(declare-fun call!441543 () (InoxSet Context!10298))

(assert (=> b!5755849 (= e!3537196 ((_ map or) call!441547 call!441543))))

(declare-fun bm!441538 () Bool)

(declare-fun call!441545 () (InoxSet Context!10298))

(assert (=> bm!441538 (= call!441545 call!441543)))

(declare-fun b!5755850 () Bool)

(declare-fun e!3537194 () (InoxSet Context!10298))

(declare-fun call!441544 () (InoxSet Context!10298))

(assert (=> b!5755850 (= e!3537194 call!441544)))

(declare-fun b!5755851 () Bool)

(declare-fun e!3537199 () (InoxSet Context!10298))

(assert (=> b!5755851 (= e!3537199 (store ((as const (Array Context!10298 Bool)) false) lt!2288118 true))))

(declare-fun b!5755852 () Bool)

(declare-fun e!3537195 () Bool)

(assert (=> b!5755852 (= e!3537195 (nullable!5797 (regOne!32042 (h!69918 (exprs!5649 (h!69919 zl!343))))))))

(declare-fun b!5755853 () Bool)

(declare-fun e!3537198 () (InoxSet Context!10298))

(assert (=> b!5755853 (= e!3537198 call!441544)))

(declare-fun b!5755854 () Bool)

(declare-fun c!1017126 () Bool)

(assert (=> b!5755854 (= c!1017126 e!3537195)))

(declare-fun res!2429939 () Bool)

(assert (=> b!5755854 (=> (not res!2429939) (not e!3537195))))

(assert (=> b!5755854 (= res!2429939 ((_ is Concat!24610) (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun e!3537197 () (InoxSet Context!10298))

(assert (=> b!5755854 (= e!3537196 e!3537197)))

(declare-fun call!441548 () List!63594)

(declare-fun bm!441540 () Bool)

(declare-fun c!1017128 () Bool)

(declare-fun $colon$colon!1764 (List!63594 Regex!15765) List!63594)

(assert (=> bm!441540 (= call!441548 ($colon$colon!1764 (exprs!5649 lt!2288118) (ite (or c!1017126 c!1017128) (regTwo!32042 (h!69918 (exprs!5649 (h!69919 zl!343)))) (h!69918 (exprs!5649 (h!69919 zl!343))))))))

(declare-fun b!5755855 () Bool)

(assert (=> b!5755855 (= e!3537197 ((_ map or) call!441547 call!441545))))

(declare-fun c!1017130 () Bool)

(declare-fun bm!441541 () Bool)

(declare-fun call!441546 () List!63594)

(assert (=> bm!441541 (= call!441543 (derivationStepZipperDown!1107 (ite c!1017130 (regTwo!32043 (h!69918 (exprs!5649 (h!69919 zl!343)))) (ite c!1017126 (regTwo!32042 (h!69918 (exprs!5649 (h!69919 zl!343)))) (ite c!1017128 (regOne!32042 (h!69918 (exprs!5649 (h!69919 zl!343)))) (reg!16094 (h!69918 (exprs!5649 (h!69919 zl!343))))))) (ite (or c!1017130 c!1017126) lt!2288118 (Context!10299 call!441546)) (h!69920 s!2326)))))

(declare-fun bm!441542 () Bool)

(assert (=> bm!441542 (= call!441544 call!441545)))

(declare-fun b!5755856 () Bool)

(assert (=> b!5755856 (= e!3537194 ((as const (Array Context!10298 Bool)) false))))

(declare-fun bm!441543 () Bool)

(assert (=> bm!441543 (= call!441547 (derivationStepZipperDown!1107 (ite c!1017130 (regOne!32043 (h!69918 (exprs!5649 (h!69919 zl!343)))) (regOne!32042 (h!69918 (exprs!5649 (h!69919 zl!343))))) (ite c!1017130 lt!2288118 (Context!10299 call!441548)) (h!69920 s!2326)))))

(declare-fun b!5755857 () Bool)

(assert (=> b!5755857 (= e!3537197 e!3537198)))

(assert (=> b!5755857 (= c!1017128 ((_ is Concat!24610) (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun d!1813862 () Bool)

(declare-fun c!1017129 () Bool)

(assert (=> d!1813862 (= c!1017129 (and ((_ is ElementMatch!15765) (h!69918 (exprs!5649 (h!69919 zl!343)))) (= (c!1017073 (h!69918 (exprs!5649 (h!69919 zl!343)))) (h!69920 s!2326))))))

(assert (=> d!1813862 (= (derivationStepZipperDown!1107 (h!69918 (exprs!5649 (h!69919 zl!343))) lt!2288118 (h!69920 s!2326)) e!3537199)))

(declare-fun bm!441539 () Bool)

(assert (=> bm!441539 (= call!441546 call!441548)))

(declare-fun b!5755858 () Bool)

(assert (=> b!5755858 (= e!3537199 e!3537196)))

(assert (=> b!5755858 (= c!1017130 ((_ is Union!15765) (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun b!5755859 () Bool)

(declare-fun c!1017127 () Bool)

(assert (=> b!5755859 (= c!1017127 ((_ is Star!15765) (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(assert (=> b!5755859 (= e!3537198 e!3537194)))

(assert (= (and d!1813862 c!1017129) b!5755851))

(assert (= (and d!1813862 (not c!1017129)) b!5755858))

(assert (= (and b!5755858 c!1017130) b!5755849))

(assert (= (and b!5755858 (not c!1017130)) b!5755854))

(assert (= (and b!5755854 res!2429939) b!5755852))

(assert (= (and b!5755854 c!1017126) b!5755855))

(assert (= (and b!5755854 (not c!1017126)) b!5755857))

(assert (= (and b!5755857 c!1017128) b!5755853))

(assert (= (and b!5755857 (not c!1017128)) b!5755859))

(assert (= (and b!5755859 c!1017127) b!5755850))

(assert (= (and b!5755859 (not c!1017127)) b!5755856))

(assert (= (or b!5755853 b!5755850) bm!441539))

(assert (= (or b!5755853 b!5755850) bm!441542))

(assert (= (or b!5755855 bm!441539) bm!441540))

(assert (= (or b!5755855 bm!441542) bm!441538))

(assert (= (or b!5755849 bm!441538) bm!441541))

(assert (= (or b!5755849 b!5755855) bm!441543))

(declare-fun m!6705142 () Bool)

(assert (=> bm!441540 m!6705142))

(declare-fun m!6705144 () Bool)

(assert (=> bm!441543 m!6705144))

(declare-fun m!6705146 () Bool)

(assert (=> bm!441541 m!6705146))

(declare-fun m!6705148 () Bool)

(assert (=> b!5755852 m!6705148))

(declare-fun m!6705150 () Bool)

(assert (=> b!5755851 m!6705150))

(assert (=> b!5755662 d!1813862))

(declare-fun d!1813880 () Bool)

(declare-fun choose!43651 ((InoxSet Context!10298) Int) (InoxSet Context!10298))

(assert (=> d!1813880 (= (flatMap!1378 z!1189 lambda!312461) (choose!43651 z!1189 lambda!312461))))

(declare-fun bs!1348684 () Bool)

(assert (= bs!1348684 d!1813880))

(declare-fun m!6705152 () Bool)

(assert (=> bs!1348684 m!6705152))

(assert (=> b!5755662 d!1813880))

(declare-fun b!5755882 () Bool)

(declare-fun e!3537214 () Bool)

(assert (=> b!5755882 (= e!3537214 (nullable!5797 (h!69918 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun b!5755883 () Bool)

(declare-fun e!3537212 () (InoxSet Context!10298))

(declare-fun e!3537213 () (InoxSet Context!10298))

(assert (=> b!5755883 (= e!3537212 e!3537213)))

(declare-fun c!1017141 () Bool)

(assert (=> b!5755883 (= c!1017141 ((_ is Cons!63470) (exprs!5649 (h!69919 zl!343))))))

(declare-fun call!441553 () (InoxSet Context!10298))

(declare-fun b!5755884 () Bool)

(assert (=> b!5755884 (= e!3537212 ((_ map or) call!441553 (derivationStepZipperUp!1033 (Context!10299 (t!376926 (exprs!5649 (h!69919 zl!343)))) (h!69920 s!2326))))))

(declare-fun bm!441548 () Bool)

(assert (=> bm!441548 (= call!441553 (derivationStepZipperDown!1107 (h!69918 (exprs!5649 (h!69919 zl!343))) (Context!10299 (t!376926 (exprs!5649 (h!69919 zl!343)))) (h!69920 s!2326)))))

(declare-fun b!5755885 () Bool)

(assert (=> b!5755885 (= e!3537213 call!441553)))

(declare-fun d!1813882 () Bool)

(declare-fun c!1017142 () Bool)

(assert (=> d!1813882 (= c!1017142 e!3537214)))

(declare-fun res!2429942 () Bool)

(assert (=> d!1813882 (=> (not res!2429942) (not e!3537214))))

(assert (=> d!1813882 (= res!2429942 ((_ is Cons!63470) (exprs!5649 (h!69919 zl!343))))))

(assert (=> d!1813882 (= (derivationStepZipperUp!1033 (h!69919 zl!343) (h!69920 s!2326)) e!3537212)))

(declare-fun b!5755886 () Bool)

(assert (=> b!5755886 (= e!3537213 ((as const (Array Context!10298 Bool)) false))))

(assert (= (and d!1813882 res!2429942) b!5755882))

(assert (= (and d!1813882 c!1017142) b!5755884))

(assert (= (and d!1813882 (not c!1017142)) b!5755883))

(assert (= (and b!5755883 c!1017141) b!5755885))

(assert (= (and b!5755883 (not c!1017141)) b!5755886))

(assert (= (or b!5755884 b!5755885) bm!441548))

(assert (=> b!5755882 m!6704992))

(declare-fun m!6705154 () Bool)

(assert (=> b!5755884 m!6705154))

(declare-fun m!6705156 () Bool)

(assert (=> bm!441548 m!6705156))

(assert (=> b!5755662 d!1813882))

(declare-fun d!1813884 () Bool)

(declare-fun c!1017154 () Bool)

(declare-fun isEmpty!35361 (List!63596) Bool)

(assert (=> d!1813884 (= c!1017154 (isEmpty!35361 (t!376928 s!2326)))))

(declare-fun e!3537229 () Bool)

(assert (=> d!1813884 (= (matchZipper!1903 lt!2288115 (t!376928 s!2326)) e!3537229)))

(declare-fun b!5755912 () Bool)

(declare-fun nullableZipper!1696 ((InoxSet Context!10298)) Bool)

(assert (=> b!5755912 (= e!3537229 (nullableZipper!1696 lt!2288115))))

(declare-fun b!5755913 () Bool)

(declare-fun derivationStepZipper!1848 ((InoxSet Context!10298) C!31800) (InoxSet Context!10298))

(declare-fun head!12174 (List!63596) C!31800)

(declare-fun tail!11269 (List!63596) List!63596)

(assert (=> b!5755913 (= e!3537229 (matchZipper!1903 (derivationStepZipper!1848 lt!2288115 (head!12174 (t!376928 s!2326))) (tail!11269 (t!376928 s!2326))))))

(assert (= (and d!1813884 c!1017154) b!5755912))

(assert (= (and d!1813884 (not c!1017154)) b!5755913))

(declare-fun m!6705178 () Bool)

(assert (=> d!1813884 m!6705178))

(declare-fun m!6705180 () Bool)

(assert (=> b!5755912 m!6705180))

(declare-fun m!6705182 () Bool)

(assert (=> b!5755913 m!6705182))

(assert (=> b!5755913 m!6705182))

(declare-fun m!6705184 () Bool)

(assert (=> b!5755913 m!6705184))

(declare-fun m!6705186 () Bool)

(assert (=> b!5755913 m!6705186))

(assert (=> b!5755913 m!6705184))

(assert (=> b!5755913 m!6705186))

(declare-fun m!6705188 () Bool)

(assert (=> b!5755913 m!6705188))

(assert (=> b!5755671 d!1813884))

(declare-fun d!1813892 () Bool)

(assert (=> d!1813892 (not (matchZipper!1903 lt!2288115 (t!376928 s!2326)))))

(declare-fun lt!2288159 () Unit!156592)

(declare-fun choose!43652 ((InoxSet Context!10298) List!63596) Unit!156592)

(assert (=> d!1813892 (= lt!2288159 (choose!43652 lt!2288115 (t!376928 s!2326)))))

(assert (=> d!1813892 (= lt!2288115 ((as const (Array Context!10298 Bool)) false))))

(assert (=> d!1813892 (= (lemmaEmptyZipperMatchesNothing!50 lt!2288115 (t!376928 s!2326)) lt!2288159)))

(declare-fun bs!1348686 () Bool)

(assert (= bs!1348686 d!1813892))

(assert (=> bs!1348686 m!6704962))

(declare-fun m!6705196 () Bool)

(assert (=> bs!1348686 m!6705196))

(assert (=> b!5755671 d!1813892))

(declare-fun d!1813896 () Bool)

(declare-fun lt!2288163 () Regex!15765)

(assert (=> d!1813896 (validRegex!7501 lt!2288163)))

(assert (=> d!1813896 (= lt!2288163 (generalisedUnion!1628 (unfocusZipperList!1193 zl!343)))))

(assert (=> d!1813896 (= (unfocusZipper!1507 zl!343) lt!2288163)))

(declare-fun bs!1348689 () Bool)

(assert (= bs!1348689 d!1813896))

(declare-fun m!6705198 () Bool)

(assert (=> bs!1348689 m!6705198))

(assert (=> bs!1348689 m!6704978))

(assert (=> bs!1348689 m!6704978))

(assert (=> bs!1348689 m!6704980))

(assert (=> b!5755652 d!1813896))

(declare-fun d!1813898 () Bool)

(assert (=> d!1813898 (= (isEmpty!35357 (t!376927 zl!343)) ((_ is Nil!63471) (t!376927 zl!343)))))

(assert (=> b!5755663 d!1813898))

(declare-fun bs!1348690 () Bool)

(declare-fun d!1813902 () Bool)

(assert (= bs!1348690 (and d!1813902 d!1813834)))

(declare-fun lambda!312483 () Int)

(assert (=> bs!1348690 (= lambda!312483 lambda!312464)))

(assert (=> d!1813902 (= (inv!82659 setElem!38647) (forall!14887 (exprs!5649 setElem!38647) lambda!312483))))

(declare-fun bs!1348691 () Bool)

(assert (= bs!1348691 d!1813902))

(declare-fun m!6705220 () Bool)

(assert (=> bs!1348691 m!6705220))

(assert (=> setNonEmpty!38647 d!1813902))

(declare-fun b!5756016 () Bool)

(declare-fun lt!2288177 () Unit!156592)

(declare-fun lt!2288176 () Unit!156592)

(assert (=> b!5756016 (= lt!2288177 lt!2288176)))

(declare-fun ++!13983 (List!63596 List!63596) List!63596)

(assert (=> b!5756016 (= (++!13983 (++!13983 Nil!63472 (Cons!63472 (h!69920 s!2326) Nil!63472)) (t!376928 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2100 (List!63596 C!31800 List!63596 List!63596) Unit!156592)

(assert (=> b!5756016 (= lt!2288176 (lemmaMoveElementToOtherListKeepsConcatEq!2100 Nil!63472 (h!69920 s!2326) (t!376928 s!2326) s!2326))))

(declare-fun e!3537292 () Option!15774)

(assert (=> b!5756016 (= e!3537292 (findConcatSeparation!2188 (regOne!32042 r!7292) (regTwo!32042 r!7292) (++!13983 Nil!63472 (Cons!63472 (h!69920 s!2326) Nil!63472)) (t!376928 s!2326) s!2326))))

(declare-fun b!5756017 () Bool)

(declare-fun res!2429984 () Bool)

(declare-fun e!3537291 () Bool)

(assert (=> b!5756017 (=> (not res!2429984) (not e!3537291))))

(declare-fun lt!2288178 () Option!15774)

(declare-fun get!21899 (Option!15774) tuple2!65724)

(assert (=> b!5756017 (= res!2429984 (matchR!7950 (regTwo!32042 r!7292) (_2!36165 (get!21899 lt!2288178))))))

(declare-fun b!5756018 () Bool)

(declare-fun res!2429987 () Bool)

(assert (=> b!5756018 (=> (not res!2429987) (not e!3537291))))

(assert (=> b!5756018 (= res!2429987 (matchR!7950 (regOne!32042 r!7292) (_1!36165 (get!21899 lt!2288178))))))

(declare-fun b!5756020 () Bool)

(declare-fun e!3537293 () Option!15774)

(assert (=> b!5756020 (= e!3537293 (Some!15773 (tuple2!65725 Nil!63472 s!2326)))))

(declare-fun b!5756021 () Bool)

(declare-fun e!3537294 () Bool)

(assert (=> b!5756021 (= e!3537294 (not (isDefined!12477 lt!2288178)))))

(declare-fun b!5756022 () Bool)

(declare-fun e!3537290 () Bool)

(assert (=> b!5756022 (= e!3537290 (matchR!7950 (regTwo!32042 r!7292) s!2326))))

(declare-fun d!1813904 () Bool)

(assert (=> d!1813904 e!3537294))

(declare-fun res!2429988 () Bool)

(assert (=> d!1813904 (=> res!2429988 e!3537294)))

(assert (=> d!1813904 (= res!2429988 e!3537291)))

(declare-fun res!2429985 () Bool)

(assert (=> d!1813904 (=> (not res!2429985) (not e!3537291))))

(assert (=> d!1813904 (= res!2429985 (isDefined!12477 lt!2288178))))

(assert (=> d!1813904 (= lt!2288178 e!3537293)))

(declare-fun c!1017188 () Bool)

(assert (=> d!1813904 (= c!1017188 e!3537290)))

(declare-fun res!2429986 () Bool)

(assert (=> d!1813904 (=> (not res!2429986) (not e!3537290))))

(assert (=> d!1813904 (= res!2429986 (matchR!7950 (regOne!32042 r!7292) Nil!63472))))

(assert (=> d!1813904 (validRegex!7501 (regOne!32042 r!7292))))

(assert (=> d!1813904 (= (findConcatSeparation!2188 (regOne!32042 r!7292) (regTwo!32042 r!7292) Nil!63472 s!2326 s!2326) lt!2288178)))

(declare-fun b!5756019 () Bool)

(assert (=> b!5756019 (= e!3537291 (= (++!13983 (_1!36165 (get!21899 lt!2288178)) (_2!36165 (get!21899 lt!2288178))) s!2326))))

(declare-fun b!5756023 () Bool)

(assert (=> b!5756023 (= e!3537292 None!15773)))

(declare-fun b!5756024 () Bool)

(assert (=> b!5756024 (= e!3537293 e!3537292)))

(declare-fun c!1017187 () Bool)

(assert (=> b!5756024 (= c!1017187 ((_ is Nil!63472) s!2326))))

(assert (= (and d!1813904 res!2429986) b!5756022))

(assert (= (and d!1813904 c!1017188) b!5756020))

(assert (= (and d!1813904 (not c!1017188)) b!5756024))

(assert (= (and b!5756024 c!1017187) b!5756023))

(assert (= (and b!5756024 (not c!1017187)) b!5756016))

(assert (= (and d!1813904 res!2429985) b!5756018))

(assert (= (and b!5756018 res!2429987) b!5756017))

(assert (= (and b!5756017 res!2429984) b!5756019))

(assert (= (and d!1813904 (not res!2429988)) b!5756021))

(declare-fun m!6705246 () Bool)

(assert (=> d!1813904 m!6705246))

(declare-fun m!6705248 () Bool)

(assert (=> d!1813904 m!6705248))

(declare-fun m!6705250 () Bool)

(assert (=> d!1813904 m!6705250))

(assert (=> b!5756021 m!6705246))

(declare-fun m!6705252 () Bool)

(assert (=> b!5756018 m!6705252))

(declare-fun m!6705254 () Bool)

(assert (=> b!5756018 m!6705254))

(declare-fun m!6705256 () Bool)

(assert (=> b!5756016 m!6705256))

(assert (=> b!5756016 m!6705256))

(declare-fun m!6705258 () Bool)

(assert (=> b!5756016 m!6705258))

(declare-fun m!6705260 () Bool)

(assert (=> b!5756016 m!6705260))

(assert (=> b!5756016 m!6705256))

(declare-fun m!6705262 () Bool)

(assert (=> b!5756016 m!6705262))

(assert (=> b!5756019 m!6705252))

(declare-fun m!6705264 () Bool)

(assert (=> b!5756019 m!6705264))

(declare-fun m!6705266 () Bool)

(assert (=> b!5756022 m!6705266))

(assert (=> b!5756017 m!6705252))

(declare-fun m!6705268 () Bool)

(assert (=> b!5756017 m!6705268))

(assert (=> b!5755659 d!1813904))

(declare-fun d!1813918 () Bool)

(declare-fun choose!43654 (Int) Bool)

(assert (=> d!1813918 (= (Exists!2865 lambda!312460) (choose!43654 lambda!312460))))

(declare-fun bs!1348708 () Bool)

(assert (= bs!1348708 d!1813918))

(declare-fun m!6705270 () Bool)

(assert (=> bs!1348708 m!6705270))

(assert (=> b!5755659 d!1813918))

(declare-fun d!1813920 () Bool)

(assert (=> d!1813920 (= (Exists!2865 lambda!312459) (choose!43654 lambda!312459))))

(declare-fun bs!1348709 () Bool)

(assert (= bs!1348709 d!1813920))

(declare-fun m!6705272 () Bool)

(assert (=> bs!1348709 m!6705272))

(assert (=> b!5755659 d!1813920))

(declare-fun bs!1348710 () Bool)

(declare-fun d!1813922 () Bool)

(assert (= bs!1348710 (and d!1813922 b!5755659)))

(declare-fun lambda!312496 () Int)

(assert (=> bs!1348710 (= lambda!312496 lambda!312459)))

(assert (=> bs!1348710 (not (= lambda!312496 lambda!312460))))

(assert (=> d!1813922 true))

(assert (=> d!1813922 true))

(assert (=> d!1813922 true))

(assert (=> d!1813922 (= (isDefined!12477 (findConcatSeparation!2188 (regOne!32042 r!7292) (regTwo!32042 r!7292) Nil!63472 s!2326 s!2326)) (Exists!2865 lambda!312496))))

(declare-fun lt!2288184 () Unit!156592)

(declare-fun choose!43655 (Regex!15765 Regex!15765 List!63596) Unit!156592)

(assert (=> d!1813922 (= lt!2288184 (choose!43655 (regOne!32042 r!7292) (regTwo!32042 r!7292) s!2326))))

(assert (=> d!1813922 (validRegex!7501 (regOne!32042 r!7292))))

(assert (=> d!1813922 (= (lemmaFindConcatSeparationEquivalentToExists!1952 (regOne!32042 r!7292) (regTwo!32042 r!7292) s!2326) lt!2288184)))

(declare-fun bs!1348711 () Bool)

(assert (= bs!1348711 d!1813922))

(assert (=> bs!1348711 m!6705250))

(declare-fun m!6705286 () Bool)

(assert (=> bs!1348711 m!6705286))

(assert (=> bs!1348711 m!6704956))

(assert (=> bs!1348711 m!6704958))

(assert (=> bs!1348711 m!6704956))

(declare-fun m!6705288 () Bool)

(assert (=> bs!1348711 m!6705288))

(assert (=> b!5755659 d!1813922))

(declare-fun bs!1348714 () Bool)

(declare-fun d!1813926 () Bool)

(assert (= bs!1348714 (and d!1813926 b!5755659)))

(declare-fun lambda!312501 () Int)

(assert (=> bs!1348714 (= lambda!312501 lambda!312459)))

(assert (=> bs!1348714 (not (= lambda!312501 lambda!312460))))

(declare-fun bs!1348715 () Bool)

(assert (= bs!1348715 (and d!1813926 d!1813922)))

(assert (=> bs!1348715 (= lambda!312501 lambda!312496)))

(assert (=> d!1813926 true))

(assert (=> d!1813926 true))

(assert (=> d!1813926 true))

(declare-fun lambda!312502 () Int)

(assert (=> bs!1348714 (not (= lambda!312502 lambda!312459))))

(assert (=> bs!1348714 (= lambda!312502 lambda!312460)))

(assert (=> bs!1348715 (not (= lambda!312502 lambda!312496))))

(declare-fun bs!1348716 () Bool)

(assert (= bs!1348716 d!1813926))

(assert (=> bs!1348716 (not (= lambda!312502 lambda!312501))))

(assert (=> d!1813926 true))

(assert (=> d!1813926 true))

(assert (=> d!1813926 true))

(assert (=> d!1813926 (= (Exists!2865 lambda!312501) (Exists!2865 lambda!312502))))

(declare-fun lt!2288190 () Unit!156592)

(declare-fun choose!43656 (Regex!15765 Regex!15765 List!63596) Unit!156592)

(assert (=> d!1813926 (= lt!2288190 (choose!43656 (regOne!32042 r!7292) (regTwo!32042 r!7292) s!2326))))

(assert (=> d!1813926 (validRegex!7501 (regOne!32042 r!7292))))

(assert (=> d!1813926 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1494 (regOne!32042 r!7292) (regTwo!32042 r!7292) s!2326) lt!2288190)))

(declare-fun m!6705296 () Bool)

(assert (=> bs!1348716 m!6705296))

(declare-fun m!6705298 () Bool)

(assert (=> bs!1348716 m!6705298))

(declare-fun m!6705300 () Bool)

(assert (=> bs!1348716 m!6705300))

(assert (=> bs!1348716 m!6705250))

(assert (=> b!5755659 d!1813926))

(declare-fun d!1813930 () Bool)

(declare-fun isEmpty!35362 (Option!15774) Bool)

(assert (=> d!1813930 (= (isDefined!12477 (findConcatSeparation!2188 (regOne!32042 r!7292) (regTwo!32042 r!7292) Nil!63472 s!2326 s!2326)) (not (isEmpty!35362 (findConcatSeparation!2188 (regOne!32042 r!7292) (regTwo!32042 r!7292) Nil!63472 s!2326 s!2326))))))

(declare-fun bs!1348717 () Bool)

(assert (= bs!1348717 d!1813930))

(assert (=> bs!1348717 m!6704956))

(declare-fun m!6705302 () Bool)

(assert (=> bs!1348717 m!6705302))

(assert (=> b!5755659 d!1813930))

(declare-fun e!3537347 () Bool)

(declare-fun d!1813932 () Bool)

(assert (=> d!1813932 (= (matchZipper!1903 ((_ map or) lt!2288115 lt!2288117) (t!376928 s!2326)) e!3537347)))

(declare-fun res!2430027 () Bool)

(assert (=> d!1813932 (=> res!2430027 e!3537347)))

(assert (=> d!1813932 (= res!2430027 (matchZipper!1903 lt!2288115 (t!376928 s!2326)))))

(declare-fun lt!2288193 () Unit!156592)

(declare-fun choose!43657 ((InoxSet Context!10298) (InoxSet Context!10298) List!63596) Unit!156592)

(assert (=> d!1813932 (= lt!2288193 (choose!43657 lt!2288115 lt!2288117 (t!376928 s!2326)))))

(assert (=> d!1813932 (= (lemmaZipperConcatMatchesSameAsBothZippers!790 lt!2288115 lt!2288117 (t!376928 s!2326)) lt!2288193)))

(declare-fun b!5756135 () Bool)

(assert (=> b!5756135 (= e!3537347 (matchZipper!1903 lt!2288117 (t!376928 s!2326)))))

(assert (= (and d!1813932 (not res!2430027)) b!5756135))

(assert (=> d!1813932 m!6704976))

(assert (=> d!1813932 m!6704962))

(declare-fun m!6705304 () Bool)

(assert (=> d!1813932 m!6705304))

(assert (=> b!5756135 m!6704982))

(assert (=> b!5755668 d!1813932))

(assert (=> b!5755668 d!1813884))

(declare-fun d!1813934 () Bool)

(declare-fun c!1017198 () Bool)

(assert (=> d!1813934 (= c!1017198 (isEmpty!35361 (t!376928 s!2326)))))

(declare-fun e!3537348 () Bool)

(assert (=> d!1813934 (= (matchZipper!1903 ((_ map or) lt!2288115 lt!2288117) (t!376928 s!2326)) e!3537348)))

(declare-fun b!5756136 () Bool)

(assert (=> b!5756136 (= e!3537348 (nullableZipper!1696 ((_ map or) lt!2288115 lt!2288117)))))

(declare-fun b!5756137 () Bool)

(assert (=> b!5756137 (= e!3537348 (matchZipper!1903 (derivationStepZipper!1848 ((_ map or) lt!2288115 lt!2288117) (head!12174 (t!376928 s!2326))) (tail!11269 (t!376928 s!2326))))))

(assert (= (and d!1813934 c!1017198) b!5756136))

(assert (= (and d!1813934 (not c!1017198)) b!5756137))

(assert (=> d!1813934 m!6705178))

(declare-fun m!6705306 () Bool)

(assert (=> b!5756136 m!6705306))

(assert (=> b!5756137 m!6705182))

(assert (=> b!5756137 m!6705182))

(declare-fun m!6705308 () Bool)

(assert (=> b!5756137 m!6705308))

(assert (=> b!5756137 m!6705186))

(assert (=> b!5756137 m!6705308))

(assert (=> b!5756137 m!6705186))

(declare-fun m!6705310 () Bool)

(assert (=> b!5756137 m!6705310))

(assert (=> b!5755668 d!1813934))

(declare-fun bs!1348718 () Bool)

(declare-fun d!1813936 () Bool)

(assert (= bs!1348718 (and d!1813936 d!1813834)))

(declare-fun lambda!312505 () Int)

(assert (=> bs!1348718 (= lambda!312505 lambda!312464)))

(declare-fun bs!1348719 () Bool)

(assert (= bs!1348719 (and d!1813936 d!1813902)))

(assert (=> bs!1348719 (= lambda!312505 lambda!312483)))

(declare-fun b!5756158 () Bool)

(declare-fun e!3537365 () Regex!15765)

(assert (=> b!5756158 (= e!3537365 (Union!15765 (h!69918 (unfocusZipperList!1193 zl!343)) (generalisedUnion!1628 (t!376926 (unfocusZipperList!1193 zl!343)))))))

(declare-fun b!5756159 () Bool)

(declare-fun e!3537364 () Bool)

(declare-fun lt!2288196 () Regex!15765)

(declare-fun isEmptyLang!1265 (Regex!15765) Bool)

(assert (=> b!5756159 (= e!3537364 (isEmptyLang!1265 lt!2288196))))

(declare-fun b!5756160 () Bool)

(declare-fun e!3537361 () Bool)

(declare-fun isUnion!695 (Regex!15765) Bool)

(assert (=> b!5756160 (= e!3537361 (isUnion!695 lt!2288196))))

(declare-fun b!5756161 () Bool)

(declare-fun e!3537362 () Bool)

(assert (=> b!5756161 (= e!3537362 e!3537364)))

(declare-fun c!1017209 () Bool)

(assert (=> b!5756161 (= c!1017209 (isEmpty!35358 (unfocusZipperList!1193 zl!343)))))

(declare-fun b!5756162 () Bool)

(declare-fun e!3537366 () Regex!15765)

(assert (=> b!5756162 (= e!3537366 e!3537365)))

(declare-fun c!1017208 () Bool)

(assert (=> b!5756162 (= c!1017208 ((_ is Cons!63470) (unfocusZipperList!1193 zl!343)))))

(declare-fun b!5756163 () Bool)

(assert (=> b!5756163 (= e!3537364 e!3537361)))

(declare-fun c!1017210 () Bool)

(declare-fun tail!11270 (List!63594) List!63594)

(assert (=> b!5756163 (= c!1017210 (isEmpty!35358 (tail!11270 (unfocusZipperList!1193 zl!343))))))

(assert (=> d!1813936 e!3537362))

(declare-fun res!2430033 () Bool)

(assert (=> d!1813936 (=> (not res!2430033) (not e!3537362))))

(assert (=> d!1813936 (= res!2430033 (validRegex!7501 lt!2288196))))

(assert (=> d!1813936 (= lt!2288196 e!3537366)))

(declare-fun c!1017207 () Bool)

(declare-fun e!3537363 () Bool)

(assert (=> d!1813936 (= c!1017207 e!3537363)))

(declare-fun res!2430032 () Bool)

(assert (=> d!1813936 (=> (not res!2430032) (not e!3537363))))

(assert (=> d!1813936 (= res!2430032 ((_ is Cons!63470) (unfocusZipperList!1193 zl!343)))))

(assert (=> d!1813936 (forall!14887 (unfocusZipperList!1193 zl!343) lambda!312505)))

(assert (=> d!1813936 (= (generalisedUnion!1628 (unfocusZipperList!1193 zl!343)) lt!2288196)))

(declare-fun b!5756164 () Bool)

(assert (=> b!5756164 (= e!3537366 (h!69918 (unfocusZipperList!1193 zl!343)))))

(declare-fun b!5756165 () Bool)

(assert (=> b!5756165 (= e!3537365 EmptyLang!15765)))

(declare-fun b!5756166 () Bool)

(assert (=> b!5756166 (= e!3537363 (isEmpty!35358 (t!376926 (unfocusZipperList!1193 zl!343))))))

(declare-fun b!5756167 () Bool)

(declare-fun head!12175 (List!63594) Regex!15765)

(assert (=> b!5756167 (= e!3537361 (= lt!2288196 (head!12175 (unfocusZipperList!1193 zl!343))))))

(assert (= (and d!1813936 res!2430032) b!5756166))

(assert (= (and d!1813936 c!1017207) b!5756164))

(assert (= (and d!1813936 (not c!1017207)) b!5756162))

(assert (= (and b!5756162 c!1017208) b!5756158))

(assert (= (and b!5756162 (not c!1017208)) b!5756165))

(assert (= (and d!1813936 res!2430033) b!5756161))

(assert (= (and b!5756161 c!1017209) b!5756159))

(assert (= (and b!5756161 (not c!1017209)) b!5756163))

(assert (= (and b!5756163 c!1017210) b!5756167))

(assert (= (and b!5756163 (not c!1017210)) b!5756160))

(assert (=> b!5756161 m!6704978))

(declare-fun m!6705312 () Bool)

(assert (=> b!5756161 m!6705312))

(declare-fun m!6705314 () Bool)

(assert (=> b!5756160 m!6705314))

(declare-fun m!6705316 () Bool)

(assert (=> b!5756158 m!6705316))

(assert (=> b!5756163 m!6704978))

(declare-fun m!6705318 () Bool)

(assert (=> b!5756163 m!6705318))

(assert (=> b!5756163 m!6705318))

(declare-fun m!6705320 () Bool)

(assert (=> b!5756163 m!6705320))

(assert (=> b!5756167 m!6704978))

(declare-fun m!6705322 () Bool)

(assert (=> b!5756167 m!6705322))

(declare-fun m!6705324 () Bool)

(assert (=> b!5756159 m!6705324))

(declare-fun m!6705326 () Bool)

(assert (=> b!5756166 m!6705326))

(declare-fun m!6705328 () Bool)

(assert (=> d!1813936 m!6705328))

(assert (=> d!1813936 m!6704978))

(declare-fun m!6705330 () Bool)

(assert (=> d!1813936 m!6705330))

(assert (=> b!5755669 d!1813936))

(declare-fun bs!1348720 () Bool)

(declare-fun d!1813938 () Bool)

(assert (= bs!1348720 (and d!1813938 d!1813834)))

(declare-fun lambda!312508 () Int)

(assert (=> bs!1348720 (= lambda!312508 lambda!312464)))

(declare-fun bs!1348721 () Bool)

(assert (= bs!1348721 (and d!1813938 d!1813902)))

(assert (=> bs!1348721 (= lambda!312508 lambda!312483)))

(declare-fun bs!1348722 () Bool)

(assert (= bs!1348722 (and d!1813938 d!1813936)))

(assert (=> bs!1348722 (= lambda!312508 lambda!312505)))

(declare-fun lt!2288199 () List!63594)

(assert (=> d!1813938 (forall!14887 lt!2288199 lambda!312508)))

(declare-fun e!3537369 () List!63594)

(assert (=> d!1813938 (= lt!2288199 e!3537369)))

(declare-fun c!1017213 () Bool)

(assert (=> d!1813938 (= c!1017213 ((_ is Cons!63471) zl!343))))

(assert (=> d!1813938 (= (unfocusZipperList!1193 zl!343) lt!2288199)))

(declare-fun b!5756172 () Bool)

(assert (=> b!5756172 (= e!3537369 (Cons!63470 (generalisedConcat!1380 (exprs!5649 (h!69919 zl!343))) (unfocusZipperList!1193 (t!376927 zl!343))))))

(declare-fun b!5756173 () Bool)

(assert (=> b!5756173 (= e!3537369 Nil!63470)))

(assert (= (and d!1813938 c!1017213) b!5756172))

(assert (= (and d!1813938 (not c!1017213)) b!5756173))

(declare-fun m!6705332 () Bool)

(assert (=> d!1813938 m!6705332))

(assert (=> b!5756172 m!6704946))

(declare-fun m!6705334 () Bool)

(assert (=> b!5756172 m!6705334))

(assert (=> b!5755669 d!1813938))

(declare-fun b!5756192 () Bool)

(declare-fun res!2430047 () Bool)

(declare-fun e!3537384 () Bool)

(assert (=> b!5756192 (=> res!2430047 e!3537384)))

(assert (=> b!5756192 (= res!2430047 (not ((_ is Concat!24610) r!7292)))))

(declare-fun e!3537386 () Bool)

(assert (=> b!5756192 (= e!3537386 e!3537384)))

(declare-fun bm!441580 () Bool)

(declare-fun call!441585 () Bool)

(declare-fun call!441586 () Bool)

(assert (=> bm!441580 (= call!441585 call!441586)))

(declare-fun b!5756193 () Bool)

(declare-fun res!2430048 () Bool)

(declare-fun e!3537389 () Bool)

(assert (=> b!5756193 (=> (not res!2430048) (not e!3537389))))

(assert (=> b!5756193 (= res!2430048 call!441585)))

(assert (=> b!5756193 (= e!3537386 e!3537389)))

(declare-fun c!1017219 () Bool)

(declare-fun bm!441581 () Bool)

(declare-fun c!1017218 () Bool)

(assert (=> bm!441581 (= call!441586 (validRegex!7501 (ite c!1017218 (reg!16094 r!7292) (ite c!1017219 (regOne!32043 r!7292) (regOne!32042 r!7292)))))))

(declare-fun b!5756195 () Bool)

(declare-fun e!3537387 () Bool)

(assert (=> b!5756195 (= e!3537387 call!441586)))

(declare-fun b!5756196 () Bool)

(declare-fun e!3537388 () Bool)

(assert (=> b!5756196 (= e!3537388 e!3537387)))

(declare-fun res!2430046 () Bool)

(assert (=> b!5756196 (= res!2430046 (not (nullable!5797 (reg!16094 r!7292))))))

(assert (=> b!5756196 (=> (not res!2430046) (not e!3537387))))

(declare-fun b!5756197 () Bool)

(declare-fun e!3537390 () Bool)

(assert (=> b!5756197 (= e!3537384 e!3537390)))

(declare-fun res!2430045 () Bool)

(assert (=> b!5756197 (=> (not res!2430045) (not e!3537390))))

(assert (=> b!5756197 (= res!2430045 call!441585)))

(declare-fun bm!441582 () Bool)

(declare-fun call!441587 () Bool)

(assert (=> bm!441582 (= call!441587 (validRegex!7501 (ite c!1017219 (regTwo!32043 r!7292) (regTwo!32042 r!7292))))))

(declare-fun b!5756198 () Bool)

(assert (=> b!5756198 (= e!3537388 e!3537386)))

(assert (=> b!5756198 (= c!1017219 ((_ is Union!15765) r!7292))))

(declare-fun b!5756199 () Bool)

(assert (=> b!5756199 (= e!3537390 call!441587)))

(declare-fun b!5756200 () Bool)

(assert (=> b!5756200 (= e!3537389 call!441587)))

(declare-fun b!5756194 () Bool)

(declare-fun e!3537385 () Bool)

(assert (=> b!5756194 (= e!3537385 e!3537388)))

(assert (=> b!5756194 (= c!1017218 ((_ is Star!15765) r!7292))))

(declare-fun d!1813940 () Bool)

(declare-fun res!2430044 () Bool)

(assert (=> d!1813940 (=> res!2430044 e!3537385)))

(assert (=> d!1813940 (= res!2430044 ((_ is ElementMatch!15765) r!7292))))

(assert (=> d!1813940 (= (validRegex!7501 r!7292) e!3537385)))

(assert (= (and d!1813940 (not res!2430044)) b!5756194))

(assert (= (and b!5756194 c!1017218) b!5756196))

(assert (= (and b!5756194 (not c!1017218)) b!5756198))

(assert (= (and b!5756196 res!2430046) b!5756195))

(assert (= (and b!5756198 c!1017219) b!5756193))

(assert (= (and b!5756198 (not c!1017219)) b!5756192))

(assert (= (and b!5756193 res!2430048) b!5756200))

(assert (= (and b!5756192 (not res!2430047)) b!5756197))

(assert (= (and b!5756197 res!2430045) b!5756199))

(assert (= (or b!5756200 b!5756199) bm!441582))

(assert (= (or b!5756193 b!5756197) bm!441580))

(assert (= (or b!5756195 bm!441580) bm!441581))

(declare-fun m!6705336 () Bool)

(assert (=> bm!441581 m!6705336))

(declare-fun m!6705338 () Bool)

(assert (=> b!5756196 m!6705338))

(declare-fun m!6705340 () Bool)

(assert (=> bm!441582 m!6705340))

(assert (=> start!591476 d!1813940))

(declare-fun d!1813942 () Bool)

(assert (=> d!1813942 (= (isEmpty!35358 (t!376926 (exprs!5649 (h!69919 zl!343)))) ((_ is Nil!63470) (t!376926 (exprs!5649 (h!69919 zl!343)))))))

(assert (=> b!5755667 d!1813942))

(declare-fun bs!1348723 () Bool)

(declare-fun b!5756242 () Bool)

(assert (= bs!1348723 (and b!5756242 b!5755659)))

(declare-fun lambda!312513 () Int)

(assert (=> bs!1348723 (not (= lambda!312513 lambda!312460))))

(assert (=> bs!1348723 (not (= lambda!312513 lambda!312459))))

(declare-fun bs!1348724 () Bool)

(assert (= bs!1348724 (and b!5756242 d!1813926)))

(assert (=> bs!1348724 (not (= lambda!312513 lambda!312501))))

(assert (=> bs!1348724 (not (= lambda!312513 lambda!312502))))

(declare-fun bs!1348725 () Bool)

(assert (= bs!1348725 (and b!5756242 d!1813922)))

(assert (=> bs!1348725 (not (= lambda!312513 lambda!312496))))

(assert (=> b!5756242 true))

(assert (=> b!5756242 true))

(declare-fun bs!1348726 () Bool)

(declare-fun b!5756241 () Bool)

(assert (= bs!1348726 (and b!5756241 b!5755659)))

(declare-fun lambda!312514 () Int)

(assert (=> bs!1348726 (= lambda!312514 lambda!312460)))

(assert (=> bs!1348726 (not (= lambda!312514 lambda!312459))))

(declare-fun bs!1348727 () Bool)

(assert (= bs!1348727 (and b!5756241 b!5756242)))

(assert (=> bs!1348727 (not (= lambda!312514 lambda!312513))))

(declare-fun bs!1348728 () Bool)

(assert (= bs!1348728 (and b!5756241 d!1813926)))

(assert (=> bs!1348728 (not (= lambda!312514 lambda!312501))))

(assert (=> bs!1348728 (= lambda!312514 lambda!312502)))

(declare-fun bs!1348729 () Bool)

(assert (= bs!1348729 (and b!5756241 d!1813922)))

(assert (=> bs!1348729 (not (= lambda!312514 lambda!312496))))

(assert (=> b!5756241 true))

(assert (=> b!5756241 true))

(declare-fun b!5756233 () Bool)

(declare-fun e!3537413 () Bool)

(assert (=> b!5756233 (= e!3537413 (matchRSpec!2868 (regTwo!32043 r!7292) s!2326))))

(declare-fun b!5756235 () Bool)

(declare-fun e!3537411 () Bool)

(declare-fun call!441592 () Bool)

(assert (=> b!5756235 (= e!3537411 call!441592)))

(declare-fun b!5756236 () Bool)

(declare-fun res!2430067 () Bool)

(declare-fun e!3537415 () Bool)

(assert (=> b!5756236 (=> res!2430067 e!3537415)))

(assert (=> b!5756236 (= res!2430067 call!441592)))

(declare-fun e!3537410 () Bool)

(assert (=> b!5756236 (= e!3537410 e!3537415)))

(declare-fun b!5756237 () Bool)

(declare-fun e!3537414 () Bool)

(assert (=> b!5756237 (= e!3537411 e!3537414)))

(declare-fun res!2430066 () Bool)

(assert (=> b!5756237 (= res!2430066 (not ((_ is EmptyLang!15765) r!7292)))))

(assert (=> b!5756237 (=> (not res!2430066) (not e!3537414))))

(declare-fun b!5756238 () Bool)

(declare-fun e!3537412 () Bool)

(assert (=> b!5756238 (= e!3537412 e!3537410)))

(declare-fun c!1017230 () Bool)

(assert (=> b!5756238 (= c!1017230 ((_ is Star!15765) r!7292))))

(declare-fun bm!441587 () Bool)

(assert (=> bm!441587 (= call!441592 (isEmpty!35361 s!2326))))

(declare-fun b!5756234 () Bool)

(declare-fun e!3537409 () Bool)

(assert (=> b!5756234 (= e!3537409 (= s!2326 (Cons!63472 (c!1017073 r!7292) Nil!63472)))))

(declare-fun d!1813944 () Bool)

(declare-fun c!1017229 () Bool)

(assert (=> d!1813944 (= c!1017229 ((_ is EmptyExpr!15765) r!7292))))

(assert (=> d!1813944 (= (matchRSpec!2868 r!7292 s!2326) e!3537411)))

(declare-fun b!5756239 () Bool)

(declare-fun c!1017228 () Bool)

(assert (=> b!5756239 (= c!1017228 ((_ is ElementMatch!15765) r!7292))))

(assert (=> b!5756239 (= e!3537414 e!3537409)))

(declare-fun bm!441588 () Bool)

(declare-fun call!441593 () Bool)

(assert (=> bm!441588 (= call!441593 (Exists!2865 (ite c!1017230 lambda!312513 lambda!312514)))))

(declare-fun b!5756240 () Bool)

(declare-fun c!1017231 () Bool)

(assert (=> b!5756240 (= c!1017231 ((_ is Union!15765) r!7292))))

(assert (=> b!5756240 (= e!3537409 e!3537412)))

(assert (=> b!5756241 (= e!3537410 call!441593)))

(assert (=> b!5756242 (= e!3537415 call!441593)))

(declare-fun b!5756243 () Bool)

(assert (=> b!5756243 (= e!3537412 e!3537413)))

(declare-fun res!2430065 () Bool)

(assert (=> b!5756243 (= res!2430065 (matchRSpec!2868 (regOne!32043 r!7292) s!2326))))

(assert (=> b!5756243 (=> res!2430065 e!3537413)))

(assert (= (and d!1813944 c!1017229) b!5756235))

(assert (= (and d!1813944 (not c!1017229)) b!5756237))

(assert (= (and b!5756237 res!2430066) b!5756239))

(assert (= (and b!5756239 c!1017228) b!5756234))

(assert (= (and b!5756239 (not c!1017228)) b!5756240))

(assert (= (and b!5756240 c!1017231) b!5756243))

(assert (= (and b!5756240 (not c!1017231)) b!5756238))

(assert (= (and b!5756243 (not res!2430065)) b!5756233))

(assert (= (and b!5756238 c!1017230) b!5756236))

(assert (= (and b!5756238 (not c!1017230)) b!5756241))

(assert (= (and b!5756236 (not res!2430067)) b!5756242))

(assert (= (or b!5756242 b!5756241) bm!441588))

(assert (= (or b!5756235 b!5756236) bm!441587))

(declare-fun m!6705342 () Bool)

(assert (=> b!5756233 m!6705342))

(declare-fun m!6705344 () Bool)

(assert (=> bm!441587 m!6705344))

(declare-fun m!6705346 () Bool)

(assert (=> bm!441588 m!6705346))

(declare-fun m!6705348 () Bool)

(assert (=> b!5756243 m!6705348))

(assert (=> b!5755664 d!1813944))

(declare-fun b!5756272 () Bool)

(declare-fun res!2430090 () Bool)

(declare-fun e!3537434 () Bool)

(assert (=> b!5756272 (=> res!2430090 e!3537434)))

(assert (=> b!5756272 (= res!2430090 (not (isEmpty!35361 (tail!11269 s!2326))))))

(declare-fun b!5756273 () Bool)

(assert (=> b!5756273 (= e!3537434 (not (= (head!12174 s!2326) (c!1017073 r!7292))))))

(declare-fun b!5756274 () Bool)

(declare-fun e!3537432 () Bool)

(declare-fun lt!2288202 () Bool)

(assert (=> b!5756274 (= e!3537432 (not lt!2288202))))

(declare-fun b!5756275 () Bool)

(declare-fun e!3537435 () Bool)

(assert (=> b!5756275 (= e!3537435 (= (head!12174 s!2326) (c!1017073 r!7292)))))

(declare-fun d!1813946 () Bool)

(declare-fun e!3537431 () Bool)

(assert (=> d!1813946 e!3537431))

(declare-fun c!1017240 () Bool)

(assert (=> d!1813946 (= c!1017240 ((_ is EmptyExpr!15765) r!7292))))

(declare-fun e!3537433 () Bool)

(assert (=> d!1813946 (= lt!2288202 e!3537433)))

(declare-fun c!1017239 () Bool)

(assert (=> d!1813946 (= c!1017239 (isEmpty!35361 s!2326))))

(assert (=> d!1813946 (validRegex!7501 r!7292)))

(assert (=> d!1813946 (= (matchR!7950 r!7292 s!2326) lt!2288202)))

(declare-fun b!5756276 () Bool)

(assert (=> b!5756276 (= e!3537431 e!3537432)))

(declare-fun c!1017238 () Bool)

(assert (=> b!5756276 (= c!1017238 ((_ is EmptyLang!15765) r!7292))))

(declare-fun b!5756277 () Bool)

(declare-fun call!441596 () Bool)

(assert (=> b!5756277 (= e!3537431 (= lt!2288202 call!441596))))

(declare-fun b!5756278 () Bool)

(declare-fun derivativeStep!4550 (Regex!15765 C!31800) Regex!15765)

(assert (=> b!5756278 (= e!3537433 (matchR!7950 (derivativeStep!4550 r!7292 (head!12174 s!2326)) (tail!11269 s!2326)))))

(declare-fun b!5756279 () Bool)

(declare-fun e!3537430 () Bool)

(assert (=> b!5756279 (= e!3537430 e!3537434)))

(declare-fun res!2430089 () Bool)

(assert (=> b!5756279 (=> res!2430089 e!3537434)))

(assert (=> b!5756279 (= res!2430089 call!441596)))

(declare-fun b!5756280 () Bool)

(declare-fun res!2430087 () Bool)

(declare-fun e!3537436 () Bool)

(assert (=> b!5756280 (=> res!2430087 e!3537436)))

(assert (=> b!5756280 (= res!2430087 (not ((_ is ElementMatch!15765) r!7292)))))

(assert (=> b!5756280 (= e!3537432 e!3537436)))

(declare-fun b!5756281 () Bool)

(declare-fun res!2430088 () Bool)

(assert (=> b!5756281 (=> (not res!2430088) (not e!3537435))))

(assert (=> b!5756281 (= res!2430088 (not call!441596))))

(declare-fun b!5756282 () Bool)

(assert (=> b!5756282 (= e!3537433 (nullable!5797 r!7292))))

(declare-fun bm!441591 () Bool)

(assert (=> bm!441591 (= call!441596 (isEmpty!35361 s!2326))))

(declare-fun b!5756283 () Bool)

(declare-fun res!2430084 () Bool)

(assert (=> b!5756283 (=> (not res!2430084) (not e!3537435))))

(assert (=> b!5756283 (= res!2430084 (isEmpty!35361 (tail!11269 s!2326)))))

(declare-fun b!5756284 () Bool)

(assert (=> b!5756284 (= e!3537436 e!3537430)))

(declare-fun res!2430091 () Bool)

(assert (=> b!5756284 (=> (not res!2430091) (not e!3537430))))

(assert (=> b!5756284 (= res!2430091 (not lt!2288202))))

(declare-fun b!5756285 () Bool)

(declare-fun res!2430085 () Bool)

(assert (=> b!5756285 (=> res!2430085 e!3537436)))

(assert (=> b!5756285 (= res!2430085 e!3537435)))

(declare-fun res!2430086 () Bool)

(assert (=> b!5756285 (=> (not res!2430086) (not e!3537435))))

(assert (=> b!5756285 (= res!2430086 lt!2288202)))

(assert (= (and d!1813946 c!1017239) b!5756282))

(assert (= (and d!1813946 (not c!1017239)) b!5756278))

(assert (= (and d!1813946 c!1017240) b!5756277))

(assert (= (and d!1813946 (not c!1017240)) b!5756276))

(assert (= (and b!5756276 c!1017238) b!5756274))

(assert (= (and b!5756276 (not c!1017238)) b!5756280))

(assert (= (and b!5756280 (not res!2430087)) b!5756285))

(assert (= (and b!5756285 res!2430086) b!5756281))

(assert (= (and b!5756281 res!2430088) b!5756283))

(assert (= (and b!5756283 res!2430084) b!5756275))

(assert (= (and b!5756285 (not res!2430085)) b!5756284))

(assert (= (and b!5756284 res!2430091) b!5756279))

(assert (= (and b!5756279 (not res!2430089)) b!5756272))

(assert (= (and b!5756272 (not res!2430090)) b!5756273))

(assert (= (or b!5756277 b!5756279 b!5756281) bm!441591))

(declare-fun m!6705350 () Bool)

(assert (=> b!5756275 m!6705350))

(assert (=> d!1813946 m!6705344))

(assert (=> d!1813946 m!6705002))

(declare-fun m!6705352 () Bool)

(assert (=> b!5756272 m!6705352))

(assert (=> b!5756272 m!6705352))

(declare-fun m!6705354 () Bool)

(assert (=> b!5756272 m!6705354))

(assert (=> b!5756273 m!6705350))

(assert (=> b!5756278 m!6705350))

(assert (=> b!5756278 m!6705350))

(declare-fun m!6705356 () Bool)

(assert (=> b!5756278 m!6705356))

(assert (=> b!5756278 m!6705352))

(assert (=> b!5756278 m!6705356))

(assert (=> b!5756278 m!6705352))

(declare-fun m!6705358 () Bool)

(assert (=> b!5756278 m!6705358))

(assert (=> b!5756283 m!6705352))

(assert (=> b!5756283 m!6705352))

(assert (=> b!5756283 m!6705354))

(declare-fun m!6705360 () Bool)

(assert (=> b!5756282 m!6705360))

(assert (=> bm!441591 m!6705344))

(assert (=> b!5755664 d!1813946))

(declare-fun d!1813948 () Bool)

(assert (=> d!1813948 (= (matchR!7950 r!7292 s!2326) (matchRSpec!2868 r!7292 s!2326))))

(declare-fun lt!2288205 () Unit!156592)

(declare-fun choose!43658 (Regex!15765 List!63596) Unit!156592)

(assert (=> d!1813948 (= lt!2288205 (choose!43658 r!7292 s!2326))))

(assert (=> d!1813948 (validRegex!7501 r!7292)))

(assert (=> d!1813948 (= (mainMatchTheorem!2868 r!7292 s!2326) lt!2288205)))

(declare-fun bs!1348730 () Bool)

(assert (= bs!1348730 d!1813948))

(assert (=> bs!1348730 m!6704968))

(assert (=> bs!1348730 m!6704966))

(declare-fun m!6705362 () Bool)

(assert (=> bs!1348730 m!6705362))

(assert (=> bs!1348730 m!6705002))

(assert (=> b!5755664 d!1813948))

(declare-fun d!1813950 () Bool)

(assert (=> d!1813950 (= (nullable!5797 (regOne!32042 (regOne!32042 r!7292))) (nullableFct!1842 (regOne!32042 (regOne!32042 r!7292))))))

(declare-fun bs!1348731 () Bool)

(assert (= bs!1348731 d!1813950))

(declare-fun m!6705364 () Bool)

(assert (=> bs!1348731 m!6705364))

(assert (=> b!5755673 d!1813950))

(declare-fun bs!1348732 () Bool)

(declare-fun d!1813952 () Bool)

(assert (= bs!1348732 (and d!1813952 d!1813834)))

(declare-fun lambda!312517 () Int)

(assert (=> bs!1348732 (= lambda!312517 lambda!312464)))

(declare-fun bs!1348733 () Bool)

(assert (= bs!1348733 (and d!1813952 d!1813902)))

(assert (=> bs!1348733 (= lambda!312517 lambda!312483)))

(declare-fun bs!1348734 () Bool)

(assert (= bs!1348734 (and d!1813952 d!1813936)))

(assert (=> bs!1348734 (= lambda!312517 lambda!312505)))

(declare-fun bs!1348735 () Bool)

(assert (= bs!1348735 (and d!1813952 d!1813938)))

(assert (=> bs!1348735 (= lambda!312517 lambda!312508)))

(declare-fun b!5756306 () Bool)

(declare-fun e!3537450 () Bool)

(declare-fun lt!2288208 () Regex!15765)

(declare-fun isConcat!778 (Regex!15765) Bool)

(assert (=> b!5756306 (= e!3537450 (isConcat!778 lt!2288208))))

(declare-fun b!5756307 () Bool)

(declare-fun e!3537451 () Bool)

(declare-fun isEmptyExpr!1255 (Regex!15765) Bool)

(assert (=> b!5756307 (= e!3537451 (isEmptyExpr!1255 lt!2288208))))

(declare-fun b!5756308 () Bool)

(declare-fun e!3537449 () Regex!15765)

(declare-fun e!3537452 () Regex!15765)

(assert (=> b!5756308 (= e!3537449 e!3537452)))

(declare-fun c!1017250 () Bool)

(assert (=> b!5756308 (= c!1017250 ((_ is Cons!63470) (exprs!5649 (h!69919 zl!343))))))

(declare-fun b!5756309 () Bool)

(assert (=> b!5756309 (= e!3537452 (Concat!24610 (h!69918 (exprs!5649 (h!69919 zl!343))) (generalisedConcat!1380 (t!376926 (exprs!5649 (h!69919 zl!343))))))))

(declare-fun b!5756310 () Bool)

(declare-fun e!3537453 () Bool)

(assert (=> b!5756310 (= e!3537453 e!3537451)))

(declare-fun c!1017252 () Bool)

(assert (=> b!5756310 (= c!1017252 (isEmpty!35358 (exprs!5649 (h!69919 zl!343))))))

(declare-fun b!5756311 () Bool)

(assert (=> b!5756311 (= e!3537452 EmptyExpr!15765)))

(declare-fun b!5756312 () Bool)

(declare-fun e!3537454 () Bool)

(assert (=> b!5756312 (= e!3537454 (isEmpty!35358 (t!376926 (exprs!5649 (h!69919 zl!343)))))))

(declare-fun b!5756313 () Bool)

(assert (=> b!5756313 (= e!3537450 (= lt!2288208 (head!12175 (exprs!5649 (h!69919 zl!343)))))))

(assert (=> d!1813952 e!3537453))

(declare-fun res!2430097 () Bool)

(assert (=> d!1813952 (=> (not res!2430097) (not e!3537453))))

(assert (=> d!1813952 (= res!2430097 (validRegex!7501 lt!2288208))))

(assert (=> d!1813952 (= lt!2288208 e!3537449)))

(declare-fun c!1017249 () Bool)

(assert (=> d!1813952 (= c!1017249 e!3537454)))

(declare-fun res!2430096 () Bool)

(assert (=> d!1813952 (=> (not res!2430096) (not e!3537454))))

(assert (=> d!1813952 (= res!2430096 ((_ is Cons!63470) (exprs!5649 (h!69919 zl!343))))))

(assert (=> d!1813952 (forall!14887 (exprs!5649 (h!69919 zl!343)) lambda!312517)))

(assert (=> d!1813952 (= (generalisedConcat!1380 (exprs!5649 (h!69919 zl!343))) lt!2288208)))

(declare-fun b!5756314 () Bool)

(assert (=> b!5756314 (= e!3537449 (h!69918 (exprs!5649 (h!69919 zl!343))))))

(declare-fun b!5756315 () Bool)

(assert (=> b!5756315 (= e!3537451 e!3537450)))

(declare-fun c!1017251 () Bool)

(assert (=> b!5756315 (= c!1017251 (isEmpty!35358 (tail!11270 (exprs!5649 (h!69919 zl!343)))))))

(assert (= (and d!1813952 res!2430096) b!5756312))

(assert (= (and d!1813952 c!1017249) b!5756314))

(assert (= (and d!1813952 (not c!1017249)) b!5756308))

(assert (= (and b!5756308 c!1017250) b!5756309))

(assert (= (and b!5756308 (not c!1017250)) b!5756311))

(assert (= (and d!1813952 res!2430097) b!5756310))

(assert (= (and b!5756310 c!1017252) b!5756307))

(assert (= (and b!5756310 (not c!1017252)) b!5756315))

(assert (= (and b!5756315 c!1017251) b!5756313))

(assert (= (and b!5756315 (not c!1017251)) b!5756306))

(declare-fun m!6705366 () Bool)

(assert (=> b!5756307 m!6705366))

(declare-fun m!6705368 () Bool)

(assert (=> b!5756309 m!6705368))

(declare-fun m!6705370 () Bool)

(assert (=> b!5756310 m!6705370))

(declare-fun m!6705372 () Bool)

(assert (=> d!1813952 m!6705372))

(declare-fun m!6705374 () Bool)

(assert (=> d!1813952 m!6705374))

(declare-fun m!6705376 () Bool)

(assert (=> b!5756313 m!6705376))

(assert (=> b!5756312 m!6704984))

(declare-fun m!6705378 () Bool)

(assert (=> b!5756315 m!6705378))

(assert (=> b!5756315 m!6705378))

(declare-fun m!6705380 () Bool)

(assert (=> b!5756315 m!6705380))

(declare-fun m!6705382 () Bool)

(assert (=> b!5756306 m!6705382))

(assert (=> b!5755654 d!1813952))

(declare-fun d!1813954 () Bool)

(declare-fun c!1017253 () Bool)

(assert (=> d!1813954 (= c!1017253 (isEmpty!35361 (t!376928 s!2326)))))

(declare-fun e!3537455 () Bool)

(assert (=> d!1813954 (= (matchZipper!1903 lt!2288117 (t!376928 s!2326)) e!3537455)))

(declare-fun b!5756316 () Bool)

(assert (=> b!5756316 (= e!3537455 (nullableZipper!1696 lt!2288117))))

(declare-fun b!5756317 () Bool)

(assert (=> b!5756317 (= e!3537455 (matchZipper!1903 (derivationStepZipper!1848 lt!2288117 (head!12174 (t!376928 s!2326))) (tail!11269 (t!376928 s!2326))))))

(assert (= (and d!1813954 c!1017253) b!5756316))

(assert (= (and d!1813954 (not c!1017253)) b!5756317))

(assert (=> d!1813954 m!6705178))

(declare-fun m!6705384 () Bool)

(assert (=> b!5756316 m!6705384))

(assert (=> b!5756317 m!6705182))

(assert (=> b!5756317 m!6705182))

(declare-fun m!6705386 () Bool)

(assert (=> b!5756317 m!6705386))

(assert (=> b!5756317 m!6705186))

(assert (=> b!5756317 m!6705386))

(assert (=> b!5756317 m!6705186))

(declare-fun m!6705388 () Bool)

(assert (=> b!5756317 m!6705388))

(assert (=> b!5755665 d!1813954))

(declare-fun b!5756325 () Bool)

(declare-fun e!3537461 () Bool)

(declare-fun tp!1590501 () Bool)

(assert (=> b!5756325 (= e!3537461 tp!1590501)))

(declare-fun e!3537460 () Bool)

(declare-fun tp!1590502 () Bool)

(declare-fun b!5756324 () Bool)

(assert (=> b!5756324 (= e!3537460 (and (inv!82659 (h!69919 (t!376927 zl!343))) e!3537461 tp!1590502))))

(assert (=> b!5755661 (= tp!1590434 e!3537460)))

(assert (= b!5756324 b!5756325))

(assert (= (and b!5755661 ((_ is Cons!63471) (t!376927 zl!343))) b!5756324))

(declare-fun m!6705390 () Bool)

(assert (=> b!5756324 m!6705390))

(declare-fun b!5756330 () Bool)

(declare-fun e!3537464 () Bool)

(declare-fun tp!1590507 () Bool)

(declare-fun tp!1590508 () Bool)

(assert (=> b!5756330 (= e!3537464 (and tp!1590507 tp!1590508))))

(assert (=> b!5755675 (= tp!1590436 e!3537464)))

(assert (= (and b!5755675 ((_ is Cons!63470) (exprs!5649 setElem!38647))) b!5756330))

(declare-fun b!5756331 () Bool)

(declare-fun e!3537465 () Bool)

(declare-fun tp!1590509 () Bool)

(declare-fun tp!1590510 () Bool)

(assert (=> b!5756331 (= e!3537465 (and tp!1590509 tp!1590510))))

(assert (=> b!5755657 (= tp!1590437 e!3537465)))

(assert (= (and b!5755657 ((_ is Cons!63470) (exprs!5649 (h!69919 zl!343)))) b!5756331))

(declare-fun b!5756336 () Bool)

(declare-fun e!3537468 () Bool)

(declare-fun tp!1590513 () Bool)

(assert (=> b!5756336 (= e!3537468 (and tp_is_empty!40783 tp!1590513))))

(assert (=> b!5755672 (= tp!1590430 e!3537468)))

(assert (= (and b!5755672 ((_ is Cons!63472) (t!376928 s!2326))) b!5756336))

(declare-fun condSetEmpty!38653 () Bool)

(assert (=> setNonEmpty!38647 (= condSetEmpty!38653 (= setRest!38647 ((as const (Array Context!10298 Bool)) false)))))

(declare-fun setRes!38653 () Bool)

(assert (=> setNonEmpty!38647 (= tp!1590435 setRes!38653)))

(declare-fun setIsEmpty!38653 () Bool)

(assert (=> setIsEmpty!38653 setRes!38653))

(declare-fun setElem!38653 () Context!10298)

(declare-fun e!3537471 () Bool)

(declare-fun tp!1590518 () Bool)

(declare-fun setNonEmpty!38653 () Bool)

(assert (=> setNonEmpty!38653 (= setRes!38653 (and tp!1590518 (inv!82659 setElem!38653) e!3537471))))

(declare-fun setRest!38653 () (InoxSet Context!10298))

(assert (=> setNonEmpty!38653 (= setRest!38647 ((_ map or) (store ((as const (Array Context!10298 Bool)) false) setElem!38653 true) setRest!38653))))

(declare-fun b!5756341 () Bool)

(declare-fun tp!1590519 () Bool)

(assert (=> b!5756341 (= e!3537471 tp!1590519)))

(assert (= (and setNonEmpty!38647 condSetEmpty!38653) setIsEmpty!38653))

(assert (= (and setNonEmpty!38647 (not condSetEmpty!38653)) setNonEmpty!38653))

(assert (= setNonEmpty!38653 b!5756341))

(declare-fun m!6705392 () Bool)

(assert (=> setNonEmpty!38653 m!6705392))

(declare-fun b!5756353 () Bool)

(declare-fun e!3537474 () Bool)

(declare-fun tp!1590530 () Bool)

(declare-fun tp!1590531 () Bool)

(assert (=> b!5756353 (= e!3537474 (and tp!1590530 tp!1590531))))

(declare-fun b!5756355 () Bool)

(declare-fun tp!1590532 () Bool)

(declare-fun tp!1590534 () Bool)

(assert (=> b!5756355 (= e!3537474 (and tp!1590532 tp!1590534))))

(assert (=> b!5755660 (= tp!1590438 e!3537474)))

(declare-fun b!5756354 () Bool)

(declare-fun tp!1590533 () Bool)

(assert (=> b!5756354 (= e!3537474 tp!1590533)))

(declare-fun b!5756352 () Bool)

(assert (=> b!5756352 (= e!3537474 tp_is_empty!40783)))

(assert (= (and b!5755660 ((_ is ElementMatch!15765) (regOne!32042 r!7292))) b!5756352))

(assert (= (and b!5755660 ((_ is Concat!24610) (regOne!32042 r!7292))) b!5756353))

(assert (= (and b!5755660 ((_ is Star!15765) (regOne!32042 r!7292))) b!5756354))

(assert (= (and b!5755660 ((_ is Union!15765) (regOne!32042 r!7292))) b!5756355))

(declare-fun b!5756357 () Bool)

(declare-fun e!3537475 () Bool)

(declare-fun tp!1590535 () Bool)

(declare-fun tp!1590536 () Bool)

(assert (=> b!5756357 (= e!3537475 (and tp!1590535 tp!1590536))))

(declare-fun b!5756359 () Bool)

(declare-fun tp!1590537 () Bool)

(declare-fun tp!1590539 () Bool)

(assert (=> b!5756359 (= e!3537475 (and tp!1590537 tp!1590539))))

(assert (=> b!5755660 (= tp!1590431 e!3537475)))

(declare-fun b!5756358 () Bool)

(declare-fun tp!1590538 () Bool)

(assert (=> b!5756358 (= e!3537475 tp!1590538)))

(declare-fun b!5756356 () Bool)

(assert (=> b!5756356 (= e!3537475 tp_is_empty!40783)))

(assert (= (and b!5755660 ((_ is ElementMatch!15765) (regTwo!32042 r!7292))) b!5756356))

(assert (= (and b!5755660 ((_ is Concat!24610) (regTwo!32042 r!7292))) b!5756357))

(assert (= (and b!5755660 ((_ is Star!15765) (regTwo!32042 r!7292))) b!5756358))

(assert (= (and b!5755660 ((_ is Union!15765) (regTwo!32042 r!7292))) b!5756359))

(declare-fun b!5756361 () Bool)

(declare-fun e!3537476 () Bool)

(declare-fun tp!1590540 () Bool)

(declare-fun tp!1590541 () Bool)

(assert (=> b!5756361 (= e!3537476 (and tp!1590540 tp!1590541))))

(declare-fun b!5756363 () Bool)

(declare-fun tp!1590542 () Bool)

(declare-fun tp!1590544 () Bool)

(assert (=> b!5756363 (= e!3537476 (and tp!1590542 tp!1590544))))

(assert (=> b!5755674 (= tp!1590429 e!3537476)))

(declare-fun b!5756362 () Bool)

(declare-fun tp!1590543 () Bool)

(assert (=> b!5756362 (= e!3537476 tp!1590543)))

(declare-fun b!5756360 () Bool)

(assert (=> b!5756360 (= e!3537476 tp_is_empty!40783)))

(assert (= (and b!5755674 ((_ is ElementMatch!15765) (reg!16094 r!7292))) b!5756360))

(assert (= (and b!5755674 ((_ is Concat!24610) (reg!16094 r!7292))) b!5756361))

(assert (= (and b!5755674 ((_ is Star!15765) (reg!16094 r!7292))) b!5756362))

(assert (= (and b!5755674 ((_ is Union!15765) (reg!16094 r!7292))) b!5756363))

(declare-fun b!5756365 () Bool)

(declare-fun e!3537477 () Bool)

(declare-fun tp!1590545 () Bool)

(declare-fun tp!1590546 () Bool)

(assert (=> b!5756365 (= e!3537477 (and tp!1590545 tp!1590546))))

(declare-fun b!5756367 () Bool)

(declare-fun tp!1590547 () Bool)

(declare-fun tp!1590549 () Bool)

(assert (=> b!5756367 (= e!3537477 (and tp!1590547 tp!1590549))))

(assert (=> b!5755655 (= tp!1590432 e!3537477)))

(declare-fun b!5756366 () Bool)

(declare-fun tp!1590548 () Bool)

(assert (=> b!5756366 (= e!3537477 tp!1590548)))

(declare-fun b!5756364 () Bool)

(assert (=> b!5756364 (= e!3537477 tp_is_empty!40783)))

(assert (= (and b!5755655 ((_ is ElementMatch!15765) (regOne!32043 r!7292))) b!5756364))

(assert (= (and b!5755655 ((_ is Concat!24610) (regOne!32043 r!7292))) b!5756365))

(assert (= (and b!5755655 ((_ is Star!15765) (regOne!32043 r!7292))) b!5756366))

(assert (= (and b!5755655 ((_ is Union!15765) (regOne!32043 r!7292))) b!5756367))

(declare-fun b!5756369 () Bool)

(declare-fun e!3537478 () Bool)

(declare-fun tp!1590550 () Bool)

(declare-fun tp!1590551 () Bool)

(assert (=> b!5756369 (= e!3537478 (and tp!1590550 tp!1590551))))

(declare-fun b!5756371 () Bool)

(declare-fun tp!1590552 () Bool)

(declare-fun tp!1590554 () Bool)

(assert (=> b!5756371 (= e!3537478 (and tp!1590552 tp!1590554))))

(assert (=> b!5755655 (= tp!1590433 e!3537478)))

(declare-fun b!5756370 () Bool)

(declare-fun tp!1590553 () Bool)

(assert (=> b!5756370 (= e!3537478 tp!1590553)))

(declare-fun b!5756368 () Bool)

(assert (=> b!5756368 (= e!3537478 tp_is_empty!40783)))

(assert (= (and b!5755655 ((_ is ElementMatch!15765) (regTwo!32043 r!7292))) b!5756368))

(assert (= (and b!5755655 ((_ is Concat!24610) (regTwo!32043 r!7292))) b!5756369))

(assert (= (and b!5755655 ((_ is Star!15765) (regTwo!32043 r!7292))) b!5756370))

(assert (= (and b!5755655 ((_ is Union!15765) (regTwo!32043 r!7292))) b!5756371))

(declare-fun b_lambda!217429 () Bool)

(assert (= b_lambda!217423 (or b!5755662 b_lambda!217429)))

(declare-fun bs!1348736 () Bool)

(declare-fun d!1813956 () Bool)

(assert (= bs!1348736 (and d!1813956 b!5755662)))

(assert (=> bs!1348736 (= (dynLambda!24849 lambda!312461 (h!69919 zl!343)) (derivationStepZipperUp!1033 (h!69919 zl!343) (h!69920 s!2326)))))

(assert (=> bs!1348736 m!6705000))

(assert (=> d!1813844 d!1813956))

(check-sat (not b!5756315) (not bm!441548) (not bm!441512) (not b_lambda!217429) (not b!5756370) (not b!5756137) (not d!1813880) (not b!5756341) (not setNonEmpty!38653) (not bm!441540) (not b!5756354) (not b!5756306) (not b!5756017) (not b!5756243) (not b!5756275) (not d!1813844) (not b!5756016) (not b!5756135) (not b!5756316) (not b!5756325) (not bm!441588) (not b!5756172) (not d!1813884) (not d!1813950) (not d!1813896) (not b!5755750) (not d!1813926) (not b!5756358) (not b!5756309) (not b!5756307) (not b!5756272) (not d!1813834) (not bm!441543) (not b!5755748) (not d!1813920) (not d!1813952) (not b!5756361) (not b!5755912) (not b!5755740) (not bm!441581) (not d!1813946) (not bs!1348736) (not d!1813904) (not b!5756369) (not b!5756019) (not b!5756160) (not d!1813842) (not b!5756312) (not b!5756136) (not b!5755913) (not b!5756353) tp_is_empty!40783 (not bm!441513) (not b!5756324) (not bm!441541) (not d!1813892) (not b!5756331) (not bm!441587) (not b!5756021) (not d!1813918) (not b!5755721) (not b!5756158) (not d!1813954) (not d!1813938) (not b!5756357) (not d!1813936) (not b!5756159) (not b!5756362) (not b!5756018) (not b!5756366) (not b!5755884) (not d!1813934) (not b!5756371) (not b!5756359) (not b!5755742) (not bm!441582) (not b!5756365) (not b!5755882) (not b!5756283) (not b!5756330) (not b!5756313) (not b!5756161) (not b!5756166) (not b!5756022) (not d!1813856) (not b!5756196) (not d!1813922) (not b!5756273) (not b!5756163) (not d!1813902) (not b!5755852) (not d!1813930) (not b!5756336) (not bm!441591) (not b!5756355) (not b!5756167) (not d!1813948) (not b!5756317) (not b!5756233) (not b!5756310) (not b!5756367) (not b!5756363) (not d!1813932) (not b!5756278) (not b!5756282))
(check-sat)
