; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!658688 () Bool)

(assert start!658688)

(declare-fun b!6804861 () Bool)

(assert (=> b!6804861 true))

(assert (=> b!6804861 true))

(declare-fun lambda!383995 () Int)

(declare-fun lambda!383994 () Int)

(assert (=> b!6804861 (not (= lambda!383995 lambda!383994))))

(assert (=> b!6804861 true))

(assert (=> b!6804861 true))

(declare-fun lambda!383996 () Int)

(assert (=> b!6804861 (not (= lambda!383996 lambda!383994))))

(assert (=> b!6804861 (not (= lambda!383996 lambda!383995))))

(assert (=> b!6804861 true))

(assert (=> b!6804861 true))

(declare-fun b!6804871 () Bool)

(assert (=> b!6804871 true))

(declare-fun b!6804863 () Bool)

(assert (=> b!6804863 true))

(declare-fun b!6804856 () Bool)

(declare-fun e!4106463 () Bool)

(declare-fun e!4106467 () Bool)

(assert (=> b!6804856 (= e!4106463 e!4106467)))

(declare-fun res!2780769 () Bool)

(assert (=> b!6804856 (=> res!2780769 e!4106467)))

(declare-datatypes ((C!33520 0))(
  ( (C!33521 (val!26462 Int)) )
))
(declare-datatypes ((List!66174 0))(
  ( (Nil!66050) (Cons!66050 (h!72498 C!33520) (t!379907 List!66174)) )
))
(declare-fun s!2326 () List!66174)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16625 0))(
  ( (ElementMatch!16625 (c!1265549 C!33520)) (Concat!25470 (regOne!33762 Regex!16625) (regTwo!33762 Regex!16625)) (EmptyExpr!16625) (Star!16625 (reg!16954 Regex!16625)) (EmptyLang!16625) (Union!16625 (regOne!33763 Regex!16625) (regTwo!33763 Regex!16625)) )
))
(declare-datatypes ((List!66175 0))(
  ( (Nil!66051) (Cons!66051 (h!72499 Regex!16625) (t!379908 List!66175)) )
))
(declare-datatypes ((Context!12018 0))(
  ( (Context!12019 (exprs!6509 List!66175)) )
))
(declare-fun lt!2448850 () (InoxSet Context!12018))

(declare-fun lt!2448868 () (InoxSet Context!12018))

(declare-fun derivationStepZipper!2569 ((InoxSet Context!12018) C!33520) (InoxSet Context!12018))

(assert (=> b!6804856 (= res!2780769 (not (= lt!2448868 (derivationStepZipper!2569 lt!2448850 (h!72498 s!2326)))))))

(declare-fun lambda!383997 () Int)

(declare-fun lt!2448866 () Context!12018)

(declare-fun flatMap!2106 ((InoxSet Context!12018) Int) (InoxSet Context!12018))

(declare-fun derivationStepZipperUp!1779 (Context!12018 C!33520) (InoxSet Context!12018))

(assert (=> b!6804856 (= (flatMap!2106 lt!2448850 lambda!383997) (derivationStepZipperUp!1779 lt!2448866 (h!72498 s!2326)))))

(declare-datatypes ((Unit!159941 0))(
  ( (Unit!159942) )
))
(declare-fun lt!2448870 () Unit!159941)

(declare-fun lemmaFlatMapOnSingletonSet!1632 ((InoxSet Context!12018) Context!12018 Int) Unit!159941)

(assert (=> b!6804856 (= lt!2448870 (lemmaFlatMapOnSingletonSet!1632 lt!2448850 lt!2448866 lambda!383997))))

(declare-fun lt!2448849 () (InoxSet Context!12018))

(declare-fun lt!2448847 () Context!12018)

(assert (=> b!6804856 (= (flatMap!2106 lt!2448849 lambda!383997) (derivationStepZipperUp!1779 lt!2448847 (h!72498 s!2326)))))

(declare-fun lt!2448853 () Unit!159941)

(assert (=> b!6804856 (= lt!2448853 (lemmaFlatMapOnSingletonSet!1632 lt!2448849 lt!2448847 lambda!383997))))

(declare-fun lt!2448878 () (InoxSet Context!12018))

(assert (=> b!6804856 (= lt!2448878 (derivationStepZipperUp!1779 lt!2448866 (h!72498 s!2326)))))

(declare-fun lt!2448857 () (InoxSet Context!12018))

(assert (=> b!6804856 (= lt!2448857 (derivationStepZipperUp!1779 lt!2448847 (h!72498 s!2326)))))

(assert (=> b!6804856 (= lt!2448850 (store ((as const (Array Context!12018 Bool)) false) lt!2448866 true))))

(assert (=> b!6804856 (= lt!2448849 (store ((as const (Array Context!12018 Bool)) false) lt!2448847 true))))

(declare-fun lt!2448875 () List!66175)

(assert (=> b!6804856 (= lt!2448847 (Context!12019 lt!2448875))))

(declare-fun r!7292 () Regex!16625)

(assert (=> b!6804856 (= lt!2448875 (Cons!66051 (reg!16954 r!7292) Nil!66051))))

(declare-fun b!6804857 () Bool)

(declare-fun res!2780764 () Bool)

(declare-fun e!4106464 () Bool)

(assert (=> b!6804857 (=> res!2780764 e!4106464)))

(get-info :version)

(assert (=> b!6804857 (= res!2780764 ((_ is Nil!66050) s!2326))))

(declare-fun b!6804858 () Bool)

(declare-fun res!2780762 () Bool)

(declare-fun e!4106477 () Bool)

(assert (=> b!6804858 (=> res!2780762 e!4106477)))

(declare-fun lt!2448859 () Regex!16625)

(assert (=> b!6804858 (= res!2780762 (or (not (= lt!2448859 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6804859 () Bool)

(declare-fun res!2780757 () Bool)

(declare-fun e!4106461 () Bool)

(assert (=> b!6804859 (=> res!2780757 e!4106461)))

(declare-fun z!1189 () (InoxSet Context!12018))

(declare-fun matchZipper!2611 ((InoxSet Context!12018) List!66174) Bool)

(assert (=> b!6804859 (= res!2780757 (not (matchZipper!2611 z!1189 s!2326)))))

(declare-fun b!6804860 () Bool)

(declare-fun res!2780765 () Bool)

(declare-fun e!4106474 () Bool)

(assert (=> b!6804860 (=> res!2780765 e!4106474)))

(assert (=> b!6804860 (= res!2780765 (or ((_ is EmptyExpr!16625) r!7292) ((_ is EmptyLang!16625) r!7292) ((_ is ElementMatch!16625) r!7292) ((_ is Union!16625) r!7292) ((_ is Concat!25470) r!7292)))))

(assert (=> b!6804861 (= e!4106474 e!4106464)))

(declare-fun res!2780744 () Bool)

(assert (=> b!6804861 (=> res!2780744 e!4106464)))

(declare-fun lt!2448862 () Bool)

(declare-fun e!4106466 () Bool)

(assert (=> b!6804861 (= res!2780744 (not (= lt!2448862 e!4106466)))))

(declare-fun res!2780761 () Bool)

(assert (=> b!6804861 (=> res!2780761 e!4106466)))

(declare-fun isEmpty!38433 (List!66174) Bool)

(assert (=> b!6804861 (= res!2780761 (isEmpty!38433 s!2326))))

(declare-fun Exists!3693 (Int) Bool)

(assert (=> b!6804861 (= (Exists!3693 lambda!383994) (Exists!3693 lambda!383996))))

(declare-fun lt!2448860 () Unit!159941)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2220 (Regex!16625 Regex!16625 List!66174) Unit!159941)

(assert (=> b!6804861 (= lt!2448860 (lemmaExistCutMatchRandMatchRSpecEquivalent!2220 (reg!16954 r!7292) r!7292 s!2326))))

(assert (=> b!6804861 (= (Exists!3693 lambda!383994) (Exists!3693 lambda!383995))))

(declare-fun lt!2448846 () Unit!159941)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!784 (Regex!16625 List!66174) Unit!159941)

(assert (=> b!6804861 (= lt!2448846 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!784 (reg!16954 r!7292) s!2326))))

(declare-fun lt!2448879 () Bool)

(assert (=> b!6804861 (= lt!2448879 (Exists!3693 lambda!383994))))

(declare-datatypes ((tuple2!67200 0))(
  ( (tuple2!67201 (_1!36903 List!66174) (_2!36903 List!66174)) )
))
(declare-datatypes ((Option!16512 0))(
  ( (None!16511) (Some!16511 (v!52717 tuple2!67200)) )
))
(declare-fun isDefined!13215 (Option!16512) Bool)

(declare-fun findConcatSeparation!2926 (Regex!16625 Regex!16625 List!66174 List!66174 List!66174) Option!16512)

(assert (=> b!6804861 (= lt!2448879 (isDefined!13215 (findConcatSeparation!2926 (reg!16954 r!7292) r!7292 Nil!66050 s!2326 s!2326)))))

(declare-fun lt!2448854 () Unit!159941)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2690 (Regex!16625 Regex!16625 List!66174) Unit!159941)

(assert (=> b!6804861 (= lt!2448854 (lemmaFindConcatSeparationEquivalentToExists!2690 (reg!16954 r!7292) r!7292 s!2326))))

(declare-fun b!6804862 () Bool)

(declare-fun res!2780750 () Bool)

(assert (=> b!6804862 (=> res!2780750 e!4106474)))

(declare-datatypes ((List!66176 0))(
  ( (Nil!66052) (Cons!66052 (h!72500 Context!12018) (t!379909 List!66176)) )
))
(declare-fun zl!343 () List!66176)

(assert (=> b!6804862 (= res!2780750 (not ((_ is Cons!66051) (exprs!6509 (h!72500 zl!343)))))))

(declare-fun e!4106465 () Bool)

(assert (=> b!6804863 (= e!4106461 e!4106465)))

(declare-fun res!2780752 () Bool)

(assert (=> b!6804863 (=> res!2780752 e!4106465)))

(declare-fun lt!2448848 () (InoxSet Context!12018))

(declare-fun appendTo!230 ((InoxSet Context!12018) Context!12018) (InoxSet Context!12018))

(assert (=> b!6804863 (= res!2780752 (not (= (appendTo!230 lt!2448849 lt!2448866) lt!2448848)))))

(declare-fun lt!2448874 () List!66175)

(declare-fun lambda!383998 () Int)

(declare-fun map!15098 ((InoxSet Context!12018) Int) (InoxSet Context!12018))

(declare-fun ++!14796 (List!66175 List!66175) List!66175)

(assert (=> b!6804863 (= (map!15098 lt!2448849 lambda!383998) (store ((as const (Array Context!12018 Bool)) false) (Context!12019 (++!14796 lt!2448875 lt!2448874)) true))))

(declare-fun lambda!383999 () Int)

(declare-fun lt!2448873 () Unit!159941)

(declare-fun lemmaConcatPreservesForall!454 (List!66175 List!66175 Int) Unit!159941)

(assert (=> b!6804863 (= lt!2448873 (lemmaConcatPreservesForall!454 lt!2448875 lt!2448874 lambda!383999))))

(declare-fun lt!2448856 () Unit!159941)

(declare-fun lemmaMapOnSingletonSet!260 ((InoxSet Context!12018) Context!12018 Int) Unit!159941)

(assert (=> b!6804863 (= lt!2448856 (lemmaMapOnSingletonSet!260 lt!2448849 lt!2448847 lambda!383998))))

(declare-fun b!6804864 () Bool)

(declare-fun e!4106469 () Bool)

(declare-fun tp_is_empty!42503 () Bool)

(declare-fun tp!1862808 () Bool)

(assert (=> b!6804864 (= e!4106469 (and tp_is_empty!42503 tp!1862808))))

(declare-fun b!6804865 () Bool)

(declare-fun e!4106475 () Bool)

(declare-fun tp!1862807 () Bool)

(assert (=> b!6804865 (= e!4106475 tp!1862807)))

(declare-fun res!2780746 () Bool)

(declare-fun e!4106462 () Bool)

(assert (=> start!658688 (=> (not res!2780746) (not e!4106462))))

(declare-fun validRegex!8361 (Regex!16625) Bool)

(assert (=> start!658688 (= res!2780746 (validRegex!8361 r!7292))))

(assert (=> start!658688 e!4106462))

(assert (=> start!658688 e!4106475))

(declare-fun condSetEmpty!46665 () Bool)

(assert (=> start!658688 (= condSetEmpty!46665 (= z!1189 ((as const (Array Context!12018 Bool)) false)))))

(declare-fun setRes!46665 () Bool)

(assert (=> start!658688 setRes!46665))

(declare-fun e!4106470 () Bool)

(assert (=> start!658688 e!4106470))

(assert (=> start!658688 e!4106469))

(declare-fun b!6804855 () Bool)

(declare-fun res!2780748 () Bool)

(assert (=> b!6804855 (=> (not res!2780748) (not e!4106462))))

(declare-fun toList!10409 ((InoxSet Context!12018)) List!66176)

(assert (=> b!6804855 (= res!2780748 (= (toList!10409 z!1189) zl!343))))

(declare-fun b!6804866 () Bool)

(assert (=> b!6804866 (= e!4106475 tp_is_empty!42503)))

(declare-fun b!6804867 () Bool)

(declare-fun res!2780751 () Bool)

(declare-fun e!4106471 () Bool)

(assert (=> b!6804867 (=> res!2780751 e!4106471)))

(declare-fun lt!2448877 () tuple2!67200)

(assert (=> b!6804867 (= res!2780751 (not (matchZipper!2611 lt!2448849 (_1!36903 lt!2448877))))))

(declare-fun b!6804868 () Bool)

(declare-fun res!2780767 () Bool)

(assert (=> b!6804868 (=> res!2780767 e!4106474)))

(declare-fun generalisedConcat!2222 (List!66175) Regex!16625)

(assert (=> b!6804868 (= res!2780767 (not (= r!7292 (generalisedConcat!2222 (exprs!6509 (h!72500 zl!343))))))))

(declare-fun setNonEmpty!46665 () Bool)

(declare-fun setElem!46665 () Context!12018)

(declare-fun tp!1862811 () Bool)

(declare-fun e!4106468 () Bool)

(declare-fun inv!84809 (Context!12018) Bool)

(assert (=> setNonEmpty!46665 (= setRes!46665 (and tp!1862811 (inv!84809 setElem!46665) e!4106468))))

(declare-fun setRest!46665 () (InoxSet Context!12018))

(assert (=> setNonEmpty!46665 (= z!1189 ((_ map or) (store ((as const (Array Context!12018 Bool)) false) setElem!46665 true) setRest!46665))))

(declare-fun setIsEmpty!46665 () Bool)

(assert (=> setIsEmpty!46665 setRes!46665))

(declare-fun b!6804869 () Bool)

(declare-fun e!4106476 () Bool)

(assert (=> b!6804869 (= e!4106476 e!4106477)))

(declare-fun res!2780758 () Bool)

(assert (=> b!6804869 (=> res!2780758 e!4106477)))

(declare-fun derivationStepZipperDown!1853 (Regex!16625 Context!12018 C!33520) (InoxSet Context!12018))

(assert (=> b!6804869 (= res!2780758 (not (= lt!2448868 (derivationStepZipperDown!1853 (reg!16954 r!7292) lt!2448866 (h!72498 s!2326)))))))

(assert (=> b!6804869 (= lt!2448866 (Context!12019 lt!2448874))))

(declare-fun lt!2448855 () Context!12018)

(assert (=> b!6804869 (= (flatMap!2106 lt!2448848 lambda!383997) (derivationStepZipperUp!1779 lt!2448855 (h!72498 s!2326)))))

(declare-fun lt!2448876 () Unit!159941)

(assert (=> b!6804869 (= lt!2448876 (lemmaFlatMapOnSingletonSet!1632 lt!2448848 lt!2448855 lambda!383997))))

(declare-fun lt!2448858 () (InoxSet Context!12018))

(assert (=> b!6804869 (= lt!2448858 (derivationStepZipperUp!1779 lt!2448855 (h!72498 s!2326)))))

(assert (=> b!6804869 (= lt!2448848 (store ((as const (Array Context!12018 Bool)) false) lt!2448855 true))))

(assert (=> b!6804869 (= lt!2448855 (Context!12019 (Cons!66051 (reg!16954 r!7292) lt!2448874)))))

(assert (=> b!6804869 (= lt!2448874 (Cons!66051 r!7292 Nil!66051))))

(declare-fun b!6804870 () Bool)

(assert (=> b!6804870 (= e!4106471 (inv!84809 lt!2448847))))

(declare-fun lt!2448872 () List!66174)

(assert (=> b!6804870 (matchZipper!2611 (store ((as const (Array Context!12018 Bool)) false) (Context!12019 (++!14796 lt!2448875 lt!2448874)) true) lt!2448872)))

(declare-fun lt!2448851 () Unit!159941)

(assert (=> b!6804870 (= lt!2448851 (lemmaConcatPreservesForall!454 lt!2448875 lt!2448874 lambda!383999))))

(declare-fun lt!2448864 () Unit!159941)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!248 (Context!12018 Context!12018 List!66174 List!66174) Unit!159941)

(assert (=> b!6804870 (= lt!2448864 (lemmaConcatenateContextMatchesConcatOfStrings!248 lt!2448847 lt!2448866 (_1!36903 lt!2448877) (_2!36903 lt!2448877)))))

(declare-fun e!4106473 () Bool)

(assert (=> b!6804871 (= e!4106473 e!4106476)))

(declare-fun res!2780747 () Bool)

(assert (=> b!6804871 (=> res!2780747 e!4106476)))

(declare-fun lt!2448867 () (InoxSet Context!12018))

(assert (=> b!6804871 (= res!2780747 (not (= lt!2448868 lt!2448867)))))

(assert (=> b!6804871 (= (flatMap!2106 z!1189 lambda!383997) (derivationStepZipperUp!1779 (h!72500 zl!343) (h!72498 s!2326)))))

(declare-fun lt!2448865 () Unit!159941)

(assert (=> b!6804871 (= lt!2448865 (lemmaFlatMapOnSingletonSet!1632 z!1189 (h!72500 zl!343) lambda!383997))))

(declare-fun b!6804872 () Bool)

(assert (=> b!6804872 (= e!4106467 e!4106461)))

(declare-fun res!2780755 () Bool)

(assert (=> b!6804872 (=> res!2780755 e!4106461)))

(declare-fun lt!2448845 () Bool)

(assert (=> b!6804872 (= res!2780755 lt!2448845)))

(declare-fun lt!2448871 () Regex!16625)

(declare-fun matchRSpec!3726 (Regex!16625 List!66174) Bool)

(assert (=> b!6804872 (= lt!2448845 (matchRSpec!3726 lt!2448871 s!2326))))

(declare-fun matchR!8808 (Regex!16625 List!66174) Bool)

(assert (=> b!6804872 (= lt!2448845 (matchR!8808 lt!2448871 s!2326))))

(declare-fun lt!2448863 () Unit!159941)

(declare-fun mainMatchTheorem!3726 (Regex!16625 List!66174) Unit!159941)

(assert (=> b!6804872 (= lt!2448863 (mainMatchTheorem!3726 lt!2448871 s!2326))))

(declare-fun b!6804873 () Bool)

(declare-fun e!4106472 () Bool)

(assert (=> b!6804873 (= e!4106462 e!4106472)))

(declare-fun res!2780745 () Bool)

(assert (=> b!6804873 (=> (not res!2780745) (not e!4106472))))

(assert (=> b!6804873 (= res!2780745 (= r!7292 lt!2448859))))

(declare-fun unfocusZipper!2367 (List!66176) Regex!16625)

(assert (=> b!6804873 (= lt!2448859 (unfocusZipper!2367 zl!343))))

(declare-fun b!6804874 () Bool)

(declare-fun res!2780756 () Bool)

(assert (=> b!6804874 (=> res!2780756 e!4106467)))

(assert (=> b!6804874 (= res!2780756 (not (= (unfocusZipper!2367 (Cons!66052 lt!2448847 Nil!66052)) (reg!16954 r!7292))))))

(declare-fun b!6804875 () Bool)

(assert (=> b!6804875 (= e!4106465 e!4106471)))

(declare-fun res!2780768 () Bool)

(assert (=> b!6804875 (=> res!2780768 e!4106471)))

(assert (=> b!6804875 (= res!2780768 (not (= s!2326 lt!2448872)))))

(declare-fun ++!14797 (List!66174 List!66174) List!66174)

(assert (=> b!6804875 (= lt!2448872 (++!14797 (_1!36903 lt!2448877) (_2!36903 lt!2448877)))))

(declare-fun lt!2448869 () Option!16512)

(declare-fun get!23007 (Option!16512) tuple2!67200)

(assert (=> b!6804875 (= lt!2448877 (get!23007 lt!2448869))))

(assert (=> b!6804875 (isDefined!13215 lt!2448869)))

(declare-fun findConcatSeparationZippers!234 ((InoxSet Context!12018) (InoxSet Context!12018) List!66174 List!66174 List!66174) Option!16512)

(assert (=> b!6804875 (= lt!2448869 (findConcatSeparationZippers!234 lt!2448849 lt!2448850 Nil!66050 s!2326 s!2326))))

(declare-fun lt!2448880 () Unit!159941)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!234 ((InoxSet Context!12018) Context!12018 List!66174) Unit!159941)

(assert (=> b!6804875 (= lt!2448880 (lemmaConcatZipperMatchesStringThenFindConcatDefined!234 lt!2448849 lt!2448866 s!2326))))

(declare-fun b!6804876 () Bool)

(declare-fun res!2780766 () Bool)

(assert (=> b!6804876 (=> res!2780766 e!4106467)))

(assert (=> b!6804876 (= res!2780766 (not (= (unfocusZipper!2367 (Cons!66052 lt!2448866 Nil!66052)) r!7292)))))

(declare-fun b!6804877 () Bool)

(assert (=> b!6804877 (= e!4106472 (not e!4106474))))

(declare-fun res!2780753 () Bool)

(assert (=> b!6804877 (=> res!2780753 e!4106474)))

(assert (=> b!6804877 (= res!2780753 (not ((_ is Cons!66052) zl!343)))))

(assert (=> b!6804877 (= lt!2448862 (matchRSpec!3726 r!7292 s!2326))))

(assert (=> b!6804877 (= lt!2448862 (matchR!8808 r!7292 s!2326))))

(declare-fun lt!2448852 () Unit!159941)

(assert (=> b!6804877 (= lt!2448852 (mainMatchTheorem!3726 r!7292 s!2326))))

(declare-fun b!6804878 () Bool)

(assert (=> b!6804878 (= e!4106477 e!4106463)))

(declare-fun res!2780763 () Bool)

(assert (=> b!6804878 (=> res!2780763 e!4106463)))

(assert (=> b!6804878 (= res!2780763 (not (= (unfocusZipper!2367 (Cons!66052 lt!2448855 Nil!66052)) lt!2448871)))))

(assert (=> b!6804878 (= lt!2448871 (Concat!25470 (reg!16954 r!7292) r!7292))))

(declare-fun b!6804879 () Bool)

(declare-fun tp!1862806 () Bool)

(declare-fun tp!1862810 () Bool)

(assert (=> b!6804879 (= e!4106475 (and tp!1862806 tp!1862810))))

(declare-fun b!6804880 () Bool)

(declare-fun res!2780749 () Bool)

(assert (=> b!6804880 (=> res!2780749 e!4106474)))

(declare-fun generalisedUnion!2469 (List!66175) Regex!16625)

(declare-fun unfocusZipperList!2046 (List!66176) List!66175)

(assert (=> b!6804880 (= res!2780749 (not (= r!7292 (generalisedUnion!2469 (unfocusZipperList!2046 zl!343)))))))

(declare-fun b!6804881 () Bool)

(assert (=> b!6804881 (= e!4106466 lt!2448879)))

(declare-fun b!6804882 () Bool)

(declare-fun res!2780770 () Bool)

(assert (=> b!6804882 (=> res!2780770 e!4106471)))

(assert (=> b!6804882 (= res!2780770 (not (matchZipper!2611 lt!2448850 (_2!36903 lt!2448877))))))

(declare-fun b!6804883 () Bool)

(declare-fun res!2780754 () Bool)

(assert (=> b!6804883 (=> res!2780754 e!4106474)))

(declare-fun isEmpty!38434 (List!66176) Bool)

(assert (=> b!6804883 (= res!2780754 (not (isEmpty!38434 (t!379909 zl!343))))))

(declare-fun b!6804884 () Bool)

(declare-fun e!4106478 () Bool)

(declare-fun tp!1862805 () Bool)

(assert (=> b!6804884 (= e!4106478 tp!1862805)))

(declare-fun b!6804885 () Bool)

(assert (=> b!6804885 (= e!4106464 e!4106473)))

(declare-fun res!2780759 () Bool)

(assert (=> b!6804885 (=> res!2780759 e!4106473)))

(declare-fun lt!2448861 () (InoxSet Context!12018))

(assert (=> b!6804885 (= res!2780759 (not (= lt!2448861 lt!2448867)))))

(assert (=> b!6804885 (= lt!2448867 (derivationStepZipperDown!1853 r!7292 (Context!12019 Nil!66051) (h!72498 s!2326)))))

(assert (=> b!6804885 (= lt!2448861 (derivationStepZipperUp!1779 (Context!12019 (Cons!66051 r!7292 Nil!66051)) (h!72498 s!2326)))))

(assert (=> b!6804885 (= lt!2448868 (derivationStepZipper!2569 z!1189 (h!72498 s!2326)))))

(declare-fun b!6804886 () Bool)

(declare-fun res!2780760 () Bool)

(assert (=> b!6804886 (=> res!2780760 e!4106477)))

(assert (=> b!6804886 (= res!2780760 (not (= (matchZipper!2611 lt!2448848 s!2326) (matchZipper!2611 (derivationStepZipper!2569 lt!2448848 (h!72498 s!2326)) (t!379907 s!2326)))))))

(declare-fun b!6804887 () Bool)

(declare-fun tp!1862809 () Bool)

(assert (=> b!6804887 (= e!4106468 tp!1862809)))

(declare-fun tp!1862803 () Bool)

(declare-fun b!6804888 () Bool)

(assert (=> b!6804888 (= e!4106470 (and (inv!84809 (h!72500 zl!343)) e!4106478 tp!1862803))))

(declare-fun b!6804889 () Bool)

(declare-fun tp!1862804 () Bool)

(declare-fun tp!1862802 () Bool)

(assert (=> b!6804889 (= e!4106475 (and tp!1862804 tp!1862802))))

(assert (= (and start!658688 res!2780746) b!6804855))

(assert (= (and b!6804855 res!2780748) b!6804873))

(assert (= (and b!6804873 res!2780745) b!6804877))

(assert (= (and b!6804877 (not res!2780753)) b!6804883))

(assert (= (and b!6804883 (not res!2780754)) b!6804868))

(assert (= (and b!6804868 (not res!2780767)) b!6804862))

(assert (= (and b!6804862 (not res!2780750)) b!6804880))

(assert (= (and b!6804880 (not res!2780749)) b!6804860))

(assert (= (and b!6804860 (not res!2780765)) b!6804861))

(assert (= (and b!6804861 (not res!2780761)) b!6804881))

(assert (= (and b!6804861 (not res!2780744)) b!6804857))

(assert (= (and b!6804857 (not res!2780764)) b!6804885))

(assert (= (and b!6804885 (not res!2780759)) b!6804871))

(assert (= (and b!6804871 (not res!2780747)) b!6804869))

(assert (= (and b!6804869 (not res!2780758)) b!6804886))

(assert (= (and b!6804886 (not res!2780760)) b!6804858))

(assert (= (and b!6804858 (not res!2780762)) b!6804878))

(assert (= (and b!6804878 (not res!2780763)) b!6804856))

(assert (= (and b!6804856 (not res!2780769)) b!6804874))

(assert (= (and b!6804874 (not res!2780756)) b!6804876))

(assert (= (and b!6804876 (not res!2780766)) b!6804872))

(assert (= (and b!6804872 (not res!2780755)) b!6804859))

(assert (= (and b!6804859 (not res!2780757)) b!6804863))

(assert (= (and b!6804863 (not res!2780752)) b!6804875))

(assert (= (and b!6804875 (not res!2780768)) b!6804867))

(assert (= (and b!6804867 (not res!2780751)) b!6804882))

(assert (= (and b!6804882 (not res!2780770)) b!6804870))

(assert (= (and start!658688 ((_ is ElementMatch!16625) r!7292)) b!6804866))

(assert (= (and start!658688 ((_ is Concat!25470) r!7292)) b!6804889))

(assert (= (and start!658688 ((_ is Star!16625) r!7292)) b!6804865))

(assert (= (and start!658688 ((_ is Union!16625) r!7292)) b!6804879))

(assert (= (and start!658688 condSetEmpty!46665) setIsEmpty!46665))

(assert (= (and start!658688 (not condSetEmpty!46665)) setNonEmpty!46665))

(assert (= setNonEmpty!46665 b!6804887))

(assert (= b!6804888 b!6804884))

(assert (= (and start!658688 ((_ is Cons!66052) zl!343)) b!6804888))

(assert (= (and start!658688 ((_ is Cons!66050) s!2326)) b!6804864))

(declare-fun m!7551066 () Bool)

(assert (=> b!6804876 m!7551066))

(declare-fun m!7551068 () Bool)

(assert (=> setNonEmpty!46665 m!7551068))

(declare-fun m!7551070 () Bool)

(assert (=> b!6804863 m!7551070))

(declare-fun m!7551072 () Bool)

(assert (=> b!6804863 m!7551072))

(declare-fun m!7551074 () Bool)

(assert (=> b!6804863 m!7551074))

(declare-fun m!7551076 () Bool)

(assert (=> b!6804863 m!7551076))

(declare-fun m!7551078 () Bool)

(assert (=> b!6804863 m!7551078))

(declare-fun m!7551080 () Bool)

(assert (=> b!6804863 m!7551080))

(declare-fun m!7551082 () Bool)

(assert (=> b!6804855 m!7551082))

(declare-fun m!7551084 () Bool)

(assert (=> b!6804877 m!7551084))

(declare-fun m!7551086 () Bool)

(assert (=> b!6804877 m!7551086))

(declare-fun m!7551088 () Bool)

(assert (=> b!6804877 m!7551088))

(declare-fun m!7551090 () Bool)

(assert (=> b!6804885 m!7551090))

(declare-fun m!7551092 () Bool)

(assert (=> b!6804885 m!7551092))

(declare-fun m!7551094 () Bool)

(assert (=> b!6804885 m!7551094))

(declare-fun m!7551096 () Bool)

(assert (=> b!6804871 m!7551096))

(declare-fun m!7551098 () Bool)

(assert (=> b!6804871 m!7551098))

(declare-fun m!7551100 () Bool)

(assert (=> b!6804871 m!7551100))

(assert (=> b!6804870 m!7551070))

(assert (=> b!6804870 m!7551080))

(declare-fun m!7551102 () Bool)

(assert (=> b!6804870 m!7551102))

(assert (=> b!6804870 m!7551078))

(declare-fun m!7551104 () Bool)

(assert (=> b!6804870 m!7551104))

(assert (=> b!6804870 m!7551078))

(declare-fun m!7551106 () Bool)

(assert (=> b!6804870 m!7551106))

(declare-fun m!7551108 () Bool)

(assert (=> b!6804861 m!7551108))

(declare-fun m!7551110 () Bool)

(assert (=> b!6804861 m!7551110))

(declare-fun m!7551112 () Bool)

(assert (=> b!6804861 m!7551112))

(declare-fun m!7551114 () Bool)

(assert (=> b!6804861 m!7551114))

(declare-fun m!7551116 () Bool)

(assert (=> b!6804861 m!7551116))

(declare-fun m!7551118 () Bool)

(assert (=> b!6804861 m!7551118))

(declare-fun m!7551120 () Bool)

(assert (=> b!6804861 m!7551120))

(assert (=> b!6804861 m!7551120))

(declare-fun m!7551122 () Bool)

(assert (=> b!6804861 m!7551122))

(declare-fun m!7551124 () Bool)

(assert (=> b!6804861 m!7551124))

(assert (=> b!6804861 m!7551114))

(assert (=> b!6804861 m!7551114))

(declare-fun m!7551126 () Bool)

(assert (=> b!6804882 m!7551126))

(declare-fun m!7551128 () Bool)

(assert (=> start!658688 m!7551128))

(declare-fun m!7551130 () Bool)

(assert (=> b!6804859 m!7551130))

(declare-fun m!7551132 () Bool)

(assert (=> b!6804869 m!7551132))

(declare-fun m!7551134 () Bool)

(assert (=> b!6804869 m!7551134))

(declare-fun m!7551136 () Bool)

(assert (=> b!6804869 m!7551136))

(declare-fun m!7551138 () Bool)

(assert (=> b!6804869 m!7551138))

(declare-fun m!7551140 () Bool)

(assert (=> b!6804869 m!7551140))

(declare-fun m!7551142 () Bool)

(assert (=> b!6804888 m!7551142))

(declare-fun m!7551144 () Bool)

(assert (=> b!6804875 m!7551144))

(declare-fun m!7551146 () Bool)

(assert (=> b!6804875 m!7551146))

(declare-fun m!7551148 () Bool)

(assert (=> b!6804875 m!7551148))

(declare-fun m!7551150 () Bool)

(assert (=> b!6804875 m!7551150))

(declare-fun m!7551152 () Bool)

(assert (=> b!6804875 m!7551152))

(declare-fun m!7551154 () Bool)

(assert (=> b!6804874 m!7551154))

(declare-fun m!7551156 () Bool)

(assert (=> b!6804880 m!7551156))

(assert (=> b!6804880 m!7551156))

(declare-fun m!7551158 () Bool)

(assert (=> b!6804880 m!7551158))

(declare-fun m!7551160 () Bool)

(assert (=> b!6804883 m!7551160))

(declare-fun m!7551162 () Bool)

(assert (=> b!6804872 m!7551162))

(declare-fun m!7551164 () Bool)

(assert (=> b!6804872 m!7551164))

(declare-fun m!7551166 () Bool)

(assert (=> b!6804872 m!7551166))

(declare-fun m!7551168 () Bool)

(assert (=> b!6804856 m!7551168))

(declare-fun m!7551170 () Bool)

(assert (=> b!6804856 m!7551170))

(declare-fun m!7551172 () Bool)

(assert (=> b!6804856 m!7551172))

(declare-fun m!7551174 () Bool)

(assert (=> b!6804856 m!7551174))

(declare-fun m!7551176 () Bool)

(assert (=> b!6804856 m!7551176))

(declare-fun m!7551178 () Bool)

(assert (=> b!6804856 m!7551178))

(declare-fun m!7551180 () Bool)

(assert (=> b!6804856 m!7551180))

(declare-fun m!7551182 () Bool)

(assert (=> b!6804856 m!7551182))

(declare-fun m!7551184 () Bool)

(assert (=> b!6804856 m!7551184))

(declare-fun m!7551186 () Bool)

(assert (=> b!6804878 m!7551186))

(declare-fun m!7551188 () Bool)

(assert (=> b!6804867 m!7551188))

(declare-fun m!7551190 () Bool)

(assert (=> b!6804873 m!7551190))

(declare-fun m!7551192 () Bool)

(assert (=> b!6804868 m!7551192))

(declare-fun m!7551194 () Bool)

(assert (=> b!6804886 m!7551194))

(declare-fun m!7551196 () Bool)

(assert (=> b!6804886 m!7551196))

(assert (=> b!6804886 m!7551196))

(declare-fun m!7551198 () Bool)

(assert (=> b!6804886 m!7551198))

(check-sat (not b!6804887) (not b!6804871) (not b!6804856) (not b!6804869) (not b!6804889) (not b!6804874) (not b!6804880) (not b!6804886) (not b!6804870) (not b!6804879) (not b!6804883) (not b!6804863) (not b!6804877) tp_is_empty!42503 (not setNonEmpty!46665) (not b!6804864) (not b!6804865) (not b!6804876) (not b!6804878) (not b!6804884) (not b!6804882) (not b!6804885) (not b!6804861) (not b!6804875) (not b!6804855) (not b!6804888) (not start!658688) (not b!6804859) (not b!6804872) (not b!6804867) (not b!6804868) (not b!6804873))
(check-sat)
(get-model)

(declare-fun d!2138430 () Bool)

(declare-fun lt!2448883 () Regex!16625)

(assert (=> d!2138430 (validRegex!8361 lt!2448883)))

(assert (=> d!2138430 (= lt!2448883 (generalisedUnion!2469 (unfocusZipperList!2046 zl!343)))))

(assert (=> d!2138430 (= (unfocusZipper!2367 zl!343) lt!2448883)))

(declare-fun bs!1814030 () Bool)

(assert (= bs!1814030 d!2138430))

(declare-fun m!7551200 () Bool)

(assert (=> bs!1814030 m!7551200))

(assert (=> bs!1814030 m!7551156))

(assert (=> bs!1814030 m!7551156))

(assert (=> bs!1814030 m!7551158))

(assert (=> b!6804873 d!2138430))

(declare-fun bs!1814031 () Bool)

(declare-fun b!6804933 () Bool)

(assert (= bs!1814031 (and b!6804933 b!6804861)))

(declare-fun lambda!384004 () Int)

(assert (=> bs!1814031 (not (= lambda!384004 lambda!383994))))

(assert (=> bs!1814031 (= (and (= (reg!16954 lt!2448871) (reg!16954 r!7292)) (= lt!2448871 r!7292)) (= lambda!384004 lambda!383995))))

(assert (=> bs!1814031 (not (= lambda!384004 lambda!383996))))

(assert (=> b!6804933 true))

(assert (=> b!6804933 true))

(declare-fun bs!1814032 () Bool)

(declare-fun b!6804939 () Bool)

(assert (= bs!1814032 (and b!6804939 b!6804861)))

(declare-fun lambda!384005 () Int)

(assert (=> bs!1814032 (not (= lambda!384005 lambda!383994))))

(assert (=> bs!1814032 (not (= lambda!384005 lambda!383995))))

(assert (=> bs!1814032 (= (and (= (regOne!33762 lt!2448871) (reg!16954 r!7292)) (= (regTwo!33762 lt!2448871) r!7292)) (= lambda!384005 lambda!383996))))

(declare-fun bs!1814033 () Bool)

(assert (= bs!1814033 (and b!6804939 b!6804933)))

(assert (=> bs!1814033 (not (= lambda!384005 lambda!384004))))

(assert (=> b!6804939 true))

(assert (=> b!6804939 true))

(declare-fun b!6804930 () Bool)

(declare-fun e!4106503 () Bool)

(declare-fun e!4106498 () Bool)

(assert (=> b!6804930 (= e!4106503 e!4106498)))

(declare-fun c!1265559 () Bool)

(assert (=> b!6804930 (= c!1265559 ((_ is Star!16625) lt!2448871))))

(declare-fun b!6804931 () Bool)

(declare-fun e!4106499 () Bool)

(assert (=> b!6804931 (= e!4106499 (matchRSpec!3726 (regTwo!33763 lt!2448871) s!2326))))

(declare-fun b!6804932 () Bool)

(declare-fun e!4106501 () Bool)

(declare-fun call!618422 () Bool)

(assert (=> b!6804932 (= e!4106501 call!618422)))

(declare-fun e!4106500 () Bool)

(declare-fun call!618423 () Bool)

(assert (=> b!6804933 (= e!4106500 call!618423)))

(declare-fun d!2138432 () Bool)

(declare-fun c!1265560 () Bool)

(assert (=> d!2138432 (= c!1265560 ((_ is EmptyExpr!16625) lt!2448871))))

(assert (=> d!2138432 (= (matchRSpec!3726 lt!2448871 s!2326) e!4106501)))

(declare-fun bm!618417 () Bool)

(assert (=> bm!618417 (= call!618422 (isEmpty!38433 s!2326))))

(declare-fun b!6804934 () Bool)

(declare-fun c!1265561 () Bool)

(assert (=> b!6804934 (= c!1265561 ((_ is ElementMatch!16625) lt!2448871))))

(declare-fun e!4106497 () Bool)

(declare-fun e!4106502 () Bool)

(assert (=> b!6804934 (= e!4106497 e!4106502)))

(declare-fun b!6804935 () Bool)

(assert (=> b!6804935 (= e!4106503 e!4106499)))

(declare-fun res!2780789 () Bool)

(assert (=> b!6804935 (= res!2780789 (matchRSpec!3726 (regOne!33763 lt!2448871) s!2326))))

(assert (=> b!6804935 (=> res!2780789 e!4106499)))

(declare-fun bm!618418 () Bool)

(assert (=> bm!618418 (= call!618423 (Exists!3693 (ite c!1265559 lambda!384004 lambda!384005)))))

(declare-fun b!6804936 () Bool)

(declare-fun c!1265558 () Bool)

(assert (=> b!6804936 (= c!1265558 ((_ is Union!16625) lt!2448871))))

(assert (=> b!6804936 (= e!4106502 e!4106503)))

(declare-fun b!6804937 () Bool)

(declare-fun res!2780788 () Bool)

(assert (=> b!6804937 (=> res!2780788 e!4106500)))

(assert (=> b!6804937 (= res!2780788 call!618422)))

(assert (=> b!6804937 (= e!4106498 e!4106500)))

(declare-fun b!6804938 () Bool)

(assert (=> b!6804938 (= e!4106501 e!4106497)))

(declare-fun res!2780790 () Bool)

(assert (=> b!6804938 (= res!2780790 (not ((_ is EmptyLang!16625) lt!2448871)))))

(assert (=> b!6804938 (=> (not res!2780790) (not e!4106497))))

(assert (=> b!6804939 (= e!4106498 call!618423)))

(declare-fun b!6804940 () Bool)

(assert (=> b!6804940 (= e!4106502 (= s!2326 (Cons!66050 (c!1265549 lt!2448871) Nil!66050)))))

(assert (= (and d!2138432 c!1265560) b!6804932))

(assert (= (and d!2138432 (not c!1265560)) b!6804938))

(assert (= (and b!6804938 res!2780790) b!6804934))

(assert (= (and b!6804934 c!1265561) b!6804940))

(assert (= (and b!6804934 (not c!1265561)) b!6804936))

(assert (= (and b!6804936 c!1265558) b!6804935))

(assert (= (and b!6804936 (not c!1265558)) b!6804930))

(assert (= (and b!6804935 (not res!2780789)) b!6804931))

(assert (= (and b!6804930 c!1265559) b!6804937))

(assert (= (and b!6804930 (not c!1265559)) b!6804939))

(assert (= (and b!6804937 (not res!2780788)) b!6804933))

(assert (= (or b!6804933 b!6804939) bm!618418))

(assert (= (or b!6804932 b!6804937) bm!618417))

(declare-fun m!7551202 () Bool)

(assert (=> b!6804931 m!7551202))

(assert (=> bm!618417 m!7551108))

(declare-fun m!7551204 () Bool)

(assert (=> b!6804935 m!7551204))

(declare-fun m!7551206 () Bool)

(assert (=> bm!618418 m!7551206))

(assert (=> b!6804872 d!2138432))

(declare-fun b!6804969 () Bool)

(declare-fun e!4106518 () Bool)

(declare-fun head!13659 (List!66174) C!33520)

(assert (=> b!6804969 (= e!4106518 (not (= (head!13659 s!2326) (c!1265549 lt!2448871))))))

(declare-fun b!6804970 () Bool)

(declare-fun e!4106522 () Bool)

(declare-fun derivativeStep!5288 (Regex!16625 C!33520) Regex!16625)

(declare-fun tail!12744 (List!66174) List!66174)

(assert (=> b!6804970 (= e!4106522 (matchR!8808 (derivativeStep!5288 lt!2448871 (head!13659 s!2326)) (tail!12744 s!2326)))))

(declare-fun b!6804971 () Bool)

(declare-fun e!4106519 () Bool)

(assert (=> b!6804971 (= e!4106519 (= (head!13659 s!2326) (c!1265549 lt!2448871)))))

(declare-fun b!6804972 () Bool)

(declare-fun e!4106520 () Bool)

(declare-fun lt!2448886 () Bool)

(assert (=> b!6804972 (= e!4106520 (not lt!2448886))))

(declare-fun b!6804973 () Bool)

(declare-fun e!4106523 () Bool)

(assert (=> b!6804973 (= e!4106523 e!4106518)))

(declare-fun res!2780812 () Bool)

(assert (=> b!6804973 (=> res!2780812 e!4106518)))

(declare-fun call!618426 () Bool)

(assert (=> b!6804973 (= res!2780812 call!618426)))

(declare-fun b!6804974 () Bool)

(declare-fun res!2780807 () Bool)

(declare-fun e!4106521 () Bool)

(assert (=> b!6804974 (=> res!2780807 e!4106521)))

(assert (=> b!6804974 (= res!2780807 e!4106519)))

(declare-fun res!2780811 () Bool)

(assert (=> b!6804974 (=> (not res!2780811) (not e!4106519))))

(assert (=> b!6804974 (= res!2780811 lt!2448886)))

(declare-fun b!6804975 () Bool)

(declare-fun e!4106524 () Bool)

(assert (=> b!6804975 (= e!4106524 (= lt!2448886 call!618426))))

(declare-fun b!6804976 () Bool)

(declare-fun res!2780809 () Bool)

(assert (=> b!6804976 (=> (not res!2780809) (not e!4106519))))

(assert (=> b!6804976 (= res!2780809 (isEmpty!38433 (tail!12744 s!2326)))))

(declare-fun b!6804977 () Bool)

(declare-fun res!2780808 () Bool)

(assert (=> b!6804977 (=> res!2780808 e!4106518)))

(assert (=> b!6804977 (= res!2780808 (not (isEmpty!38433 (tail!12744 s!2326))))))

(declare-fun b!6804978 () Bool)

(declare-fun res!2780810 () Bool)

(assert (=> b!6804978 (=> res!2780810 e!4106521)))

(assert (=> b!6804978 (= res!2780810 (not ((_ is ElementMatch!16625) lt!2448871)))))

(assert (=> b!6804978 (= e!4106520 e!4106521)))

(declare-fun b!6804979 () Bool)

(assert (=> b!6804979 (= e!4106521 e!4106523)))

(declare-fun res!2780813 () Bool)

(assert (=> b!6804979 (=> (not res!2780813) (not e!4106523))))

(assert (=> b!6804979 (= res!2780813 (not lt!2448886))))

(declare-fun d!2138434 () Bool)

(assert (=> d!2138434 e!4106524))

(declare-fun c!1265569 () Bool)

(assert (=> d!2138434 (= c!1265569 ((_ is EmptyExpr!16625) lt!2448871))))

(assert (=> d!2138434 (= lt!2448886 e!4106522)))

(declare-fun c!1265568 () Bool)

(assert (=> d!2138434 (= c!1265568 (isEmpty!38433 s!2326))))

(assert (=> d!2138434 (validRegex!8361 lt!2448871)))

(assert (=> d!2138434 (= (matchR!8808 lt!2448871 s!2326) lt!2448886)))

(declare-fun b!6804980 () Bool)

(declare-fun res!2780814 () Bool)

(assert (=> b!6804980 (=> (not res!2780814) (not e!4106519))))

(assert (=> b!6804980 (= res!2780814 (not call!618426))))

(declare-fun bm!618421 () Bool)

(assert (=> bm!618421 (= call!618426 (isEmpty!38433 s!2326))))

(declare-fun b!6804981 () Bool)

(declare-fun nullable!6603 (Regex!16625) Bool)

(assert (=> b!6804981 (= e!4106522 (nullable!6603 lt!2448871))))

(declare-fun b!6804982 () Bool)

(assert (=> b!6804982 (= e!4106524 e!4106520)))

(declare-fun c!1265570 () Bool)

(assert (=> b!6804982 (= c!1265570 ((_ is EmptyLang!16625) lt!2448871))))

(assert (= (and d!2138434 c!1265568) b!6804981))

(assert (= (and d!2138434 (not c!1265568)) b!6804970))

(assert (= (and d!2138434 c!1265569) b!6804975))

(assert (= (and d!2138434 (not c!1265569)) b!6804982))

(assert (= (and b!6804982 c!1265570) b!6804972))

(assert (= (and b!6804982 (not c!1265570)) b!6804978))

(assert (= (and b!6804978 (not res!2780810)) b!6804974))

(assert (= (and b!6804974 res!2780811) b!6804980))

(assert (= (and b!6804980 res!2780814) b!6804976))

(assert (= (and b!6804976 res!2780809) b!6804971))

(assert (= (and b!6804974 (not res!2780807)) b!6804979))

(assert (= (and b!6804979 res!2780813) b!6804973))

(assert (= (and b!6804973 (not res!2780812)) b!6804977))

(assert (= (and b!6804977 (not res!2780808)) b!6804969))

(assert (= (or b!6804975 b!6804973 b!6804980) bm!618421))

(declare-fun m!7551208 () Bool)

(assert (=> b!6804969 m!7551208))

(declare-fun m!7551210 () Bool)

(assert (=> b!6804977 m!7551210))

(assert (=> b!6804977 m!7551210))

(declare-fun m!7551212 () Bool)

(assert (=> b!6804977 m!7551212))

(assert (=> b!6804976 m!7551210))

(assert (=> b!6804976 m!7551210))

(assert (=> b!6804976 m!7551212))

(assert (=> d!2138434 m!7551108))

(declare-fun m!7551214 () Bool)

(assert (=> d!2138434 m!7551214))

(declare-fun m!7551216 () Bool)

(assert (=> b!6804981 m!7551216))

(assert (=> b!6804971 m!7551208))

(assert (=> b!6804970 m!7551208))

(assert (=> b!6804970 m!7551208))

(declare-fun m!7551218 () Bool)

(assert (=> b!6804970 m!7551218))

(assert (=> b!6804970 m!7551210))

(assert (=> b!6804970 m!7551218))

(assert (=> b!6804970 m!7551210))

(declare-fun m!7551220 () Bool)

(assert (=> b!6804970 m!7551220))

(assert (=> bm!618421 m!7551108))

(assert (=> b!6804872 d!2138434))

(declare-fun d!2138436 () Bool)

(assert (=> d!2138436 (= (matchR!8808 lt!2448871 s!2326) (matchRSpec!3726 lt!2448871 s!2326))))

(declare-fun lt!2448889 () Unit!159941)

(declare-fun choose!50734 (Regex!16625 List!66174) Unit!159941)

(assert (=> d!2138436 (= lt!2448889 (choose!50734 lt!2448871 s!2326))))

(assert (=> d!2138436 (validRegex!8361 lt!2448871)))

(assert (=> d!2138436 (= (mainMatchTheorem!3726 lt!2448871 s!2326) lt!2448889)))

(declare-fun bs!1814034 () Bool)

(assert (= bs!1814034 d!2138436))

(assert (=> bs!1814034 m!7551164))

(assert (=> bs!1814034 m!7551162))

(declare-fun m!7551222 () Bool)

(assert (=> bs!1814034 m!7551222))

(assert (=> bs!1814034 m!7551214))

(assert (=> b!6804872 d!2138436))

(declare-fun d!2138438 () Bool)

(declare-fun choose!50735 ((InoxSet Context!12018) Int) (InoxSet Context!12018))

(assert (=> d!2138438 (= (flatMap!2106 z!1189 lambda!383997) (choose!50735 z!1189 lambda!383997))))

(declare-fun bs!1814035 () Bool)

(assert (= bs!1814035 d!2138438))

(declare-fun m!7551224 () Bool)

(assert (=> bs!1814035 m!7551224))

(assert (=> b!6804871 d!2138438))

(declare-fun b!6804993 () Bool)

(declare-fun e!4106533 () (InoxSet Context!12018))

(declare-fun call!618429 () (InoxSet Context!12018))

(assert (=> b!6804993 (= e!4106533 ((_ map or) call!618429 (derivationStepZipperUp!1779 (Context!12019 (t!379908 (exprs!6509 (h!72500 zl!343)))) (h!72498 s!2326))))))

(declare-fun d!2138440 () Bool)

(declare-fun c!1265575 () Bool)

(declare-fun e!4106532 () Bool)

(assert (=> d!2138440 (= c!1265575 e!4106532)))

(declare-fun res!2780818 () Bool)

(assert (=> d!2138440 (=> (not res!2780818) (not e!4106532))))

(assert (=> d!2138440 (= res!2780818 ((_ is Cons!66051) (exprs!6509 (h!72500 zl!343))))))

(assert (=> d!2138440 (= (derivationStepZipperUp!1779 (h!72500 zl!343) (h!72498 s!2326)) e!4106533)))

(declare-fun b!6804994 () Bool)

(assert (=> b!6804994 (= e!4106532 (nullable!6603 (h!72499 (exprs!6509 (h!72500 zl!343)))))))

(declare-fun b!6804995 () Bool)

(declare-fun e!4106531 () (InoxSet Context!12018))

(assert (=> b!6804995 (= e!4106533 e!4106531)))

(declare-fun c!1265576 () Bool)

(assert (=> b!6804995 (= c!1265576 ((_ is Cons!66051) (exprs!6509 (h!72500 zl!343))))))

(declare-fun bm!618424 () Bool)

(assert (=> bm!618424 (= call!618429 (derivationStepZipperDown!1853 (h!72499 (exprs!6509 (h!72500 zl!343))) (Context!12019 (t!379908 (exprs!6509 (h!72500 zl!343)))) (h!72498 s!2326)))))

(declare-fun b!6804996 () Bool)

(assert (=> b!6804996 (= e!4106531 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6804997 () Bool)

(assert (=> b!6804997 (= e!4106531 call!618429)))

(assert (= (and d!2138440 res!2780818) b!6804994))

(assert (= (and d!2138440 c!1265575) b!6804993))

(assert (= (and d!2138440 (not c!1265575)) b!6804995))

(assert (= (and b!6804995 c!1265576) b!6804997))

(assert (= (and b!6804995 (not c!1265576)) b!6804996))

(assert (= (or b!6804993 b!6804997) bm!618424))

(declare-fun m!7551226 () Bool)

(assert (=> b!6804993 m!7551226))

(declare-fun m!7551228 () Bool)

(assert (=> b!6804994 m!7551228))

(declare-fun m!7551230 () Bool)

(assert (=> bm!618424 m!7551230))

(assert (=> b!6804871 d!2138440))

(declare-fun d!2138442 () Bool)

(declare-fun dynLambda!26381 (Int Context!12018) (InoxSet Context!12018))

(assert (=> d!2138442 (= (flatMap!2106 z!1189 lambda!383997) (dynLambda!26381 lambda!383997 (h!72500 zl!343)))))

(declare-fun lt!2448892 () Unit!159941)

(declare-fun choose!50736 ((InoxSet Context!12018) Context!12018 Int) Unit!159941)

(assert (=> d!2138442 (= lt!2448892 (choose!50736 z!1189 (h!72500 zl!343) lambda!383997))))

(assert (=> d!2138442 (= z!1189 (store ((as const (Array Context!12018 Bool)) false) (h!72500 zl!343) true))))

(assert (=> d!2138442 (= (lemmaFlatMapOnSingletonSet!1632 z!1189 (h!72500 zl!343) lambda!383997) lt!2448892)))

(declare-fun b_lambda!256547 () Bool)

(assert (=> (not b_lambda!256547) (not d!2138442)))

(declare-fun bs!1814036 () Bool)

(assert (= bs!1814036 d!2138442))

(assert (=> bs!1814036 m!7551096))

(declare-fun m!7551232 () Bool)

(assert (=> bs!1814036 m!7551232))

(declare-fun m!7551234 () Bool)

(assert (=> bs!1814036 m!7551234))

(declare-fun m!7551236 () Bool)

(assert (=> bs!1814036 m!7551236))

(assert (=> b!6804871 d!2138442))

(declare-fun b!6804998 () Bool)

(declare-fun call!618430 () (InoxSet Context!12018))

(declare-fun e!4106536 () (InoxSet Context!12018))

(assert (=> b!6804998 (= e!4106536 ((_ map or) call!618430 (derivationStepZipperUp!1779 (Context!12019 (t!379908 (exprs!6509 lt!2448847))) (h!72498 s!2326))))))

(declare-fun d!2138446 () Bool)

(declare-fun c!1265577 () Bool)

(declare-fun e!4106535 () Bool)

(assert (=> d!2138446 (= c!1265577 e!4106535)))

(declare-fun res!2780819 () Bool)

(assert (=> d!2138446 (=> (not res!2780819) (not e!4106535))))

(assert (=> d!2138446 (= res!2780819 ((_ is Cons!66051) (exprs!6509 lt!2448847)))))

(assert (=> d!2138446 (= (derivationStepZipperUp!1779 lt!2448847 (h!72498 s!2326)) e!4106536)))

(declare-fun b!6804999 () Bool)

(assert (=> b!6804999 (= e!4106535 (nullable!6603 (h!72499 (exprs!6509 lt!2448847))))))

(declare-fun b!6805000 () Bool)

(declare-fun e!4106534 () (InoxSet Context!12018))

(assert (=> b!6805000 (= e!4106536 e!4106534)))

(declare-fun c!1265578 () Bool)

(assert (=> b!6805000 (= c!1265578 ((_ is Cons!66051) (exprs!6509 lt!2448847)))))

(declare-fun bm!618425 () Bool)

(assert (=> bm!618425 (= call!618430 (derivationStepZipperDown!1853 (h!72499 (exprs!6509 lt!2448847)) (Context!12019 (t!379908 (exprs!6509 lt!2448847))) (h!72498 s!2326)))))

(declare-fun b!6805001 () Bool)

(assert (=> b!6805001 (= e!4106534 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6805002 () Bool)

(assert (=> b!6805002 (= e!4106534 call!618430)))

(assert (= (and d!2138446 res!2780819) b!6804999))

(assert (= (and d!2138446 c!1265577) b!6804998))

(assert (= (and d!2138446 (not c!1265577)) b!6805000))

(assert (= (and b!6805000 c!1265578) b!6805002))

(assert (= (and b!6805000 (not c!1265578)) b!6805001))

(assert (= (or b!6804998 b!6805002) bm!618425))

(declare-fun m!7551238 () Bool)

(assert (=> b!6804998 m!7551238))

(declare-fun m!7551240 () Bool)

(assert (=> b!6804999 m!7551240))

(declare-fun m!7551242 () Bool)

(assert (=> bm!618425 m!7551242))

(assert (=> b!6804856 d!2138446))

(declare-fun d!2138448 () Bool)

(assert (=> d!2138448 (= (flatMap!2106 lt!2448849 lambda!383997) (choose!50735 lt!2448849 lambda!383997))))

(declare-fun bs!1814037 () Bool)

(assert (= bs!1814037 d!2138448))

(declare-fun m!7551244 () Bool)

(assert (=> bs!1814037 m!7551244))

(assert (=> b!6804856 d!2138448))

(declare-fun d!2138450 () Bool)

(assert (=> d!2138450 (= (flatMap!2106 lt!2448849 lambda!383997) (dynLambda!26381 lambda!383997 lt!2448847))))

(declare-fun lt!2448893 () Unit!159941)

(assert (=> d!2138450 (= lt!2448893 (choose!50736 lt!2448849 lt!2448847 lambda!383997))))

(assert (=> d!2138450 (= lt!2448849 (store ((as const (Array Context!12018 Bool)) false) lt!2448847 true))))

(assert (=> d!2138450 (= (lemmaFlatMapOnSingletonSet!1632 lt!2448849 lt!2448847 lambda!383997) lt!2448893)))

(declare-fun b_lambda!256549 () Bool)

(assert (=> (not b_lambda!256549) (not d!2138450)))

(declare-fun bs!1814038 () Bool)

(assert (= bs!1814038 d!2138450))

(assert (=> bs!1814038 m!7551180))

(declare-fun m!7551246 () Bool)

(assert (=> bs!1814038 m!7551246))

(declare-fun m!7551248 () Bool)

(assert (=> bs!1814038 m!7551248))

(assert (=> bs!1814038 m!7551172))

(assert (=> b!6804856 d!2138450))

(declare-fun d!2138452 () Bool)

(assert (=> d!2138452 (= (flatMap!2106 lt!2448850 lambda!383997) (dynLambda!26381 lambda!383997 lt!2448866))))

(declare-fun lt!2448894 () Unit!159941)

(assert (=> d!2138452 (= lt!2448894 (choose!50736 lt!2448850 lt!2448866 lambda!383997))))

(assert (=> d!2138452 (= lt!2448850 (store ((as const (Array Context!12018 Bool)) false) lt!2448866 true))))

(assert (=> d!2138452 (= (lemmaFlatMapOnSingletonSet!1632 lt!2448850 lt!2448866 lambda!383997) lt!2448894)))

(declare-fun b_lambda!256551 () Bool)

(assert (=> (not b_lambda!256551) (not d!2138452)))

(declare-fun bs!1814039 () Bool)

(assert (= bs!1814039 d!2138452))

(assert (=> bs!1814039 m!7551178))

(declare-fun m!7551250 () Bool)

(assert (=> bs!1814039 m!7551250))

(declare-fun m!7551252 () Bool)

(assert (=> bs!1814039 m!7551252))

(assert (=> bs!1814039 m!7551176))

(assert (=> b!6804856 d!2138452))

(declare-fun bs!1814040 () Bool)

(declare-fun d!2138454 () Bool)

(assert (= bs!1814040 (and d!2138454 b!6804871)))

(declare-fun lambda!384008 () Int)

(assert (=> bs!1814040 (= lambda!384008 lambda!383997)))

(assert (=> d!2138454 true))

(assert (=> d!2138454 (= (derivationStepZipper!2569 lt!2448850 (h!72498 s!2326)) (flatMap!2106 lt!2448850 lambda!384008))))

(declare-fun bs!1814041 () Bool)

(assert (= bs!1814041 d!2138454))

(declare-fun m!7551254 () Bool)

(assert (=> bs!1814041 m!7551254))

(assert (=> b!6804856 d!2138454))

(declare-fun d!2138456 () Bool)

(assert (=> d!2138456 (= (flatMap!2106 lt!2448850 lambda!383997) (choose!50735 lt!2448850 lambda!383997))))

(declare-fun bs!1814042 () Bool)

(assert (= bs!1814042 d!2138456))

(declare-fun m!7551256 () Bool)

(assert (=> bs!1814042 m!7551256))

(assert (=> b!6804856 d!2138456))

(declare-fun b!6805005 () Bool)

(declare-fun call!618431 () (InoxSet Context!12018))

(declare-fun e!4106539 () (InoxSet Context!12018))

(assert (=> b!6805005 (= e!4106539 ((_ map or) call!618431 (derivationStepZipperUp!1779 (Context!12019 (t!379908 (exprs!6509 lt!2448866))) (h!72498 s!2326))))))

(declare-fun d!2138458 () Bool)

(declare-fun c!1265581 () Bool)

(declare-fun e!4106538 () Bool)

(assert (=> d!2138458 (= c!1265581 e!4106538)))

(declare-fun res!2780820 () Bool)

(assert (=> d!2138458 (=> (not res!2780820) (not e!4106538))))

(assert (=> d!2138458 (= res!2780820 ((_ is Cons!66051) (exprs!6509 lt!2448866)))))

(assert (=> d!2138458 (= (derivationStepZipperUp!1779 lt!2448866 (h!72498 s!2326)) e!4106539)))

(declare-fun b!6805006 () Bool)

(assert (=> b!6805006 (= e!4106538 (nullable!6603 (h!72499 (exprs!6509 lt!2448866))))))

(declare-fun b!6805007 () Bool)

(declare-fun e!4106537 () (InoxSet Context!12018))

(assert (=> b!6805007 (= e!4106539 e!4106537)))

(declare-fun c!1265582 () Bool)

(assert (=> b!6805007 (= c!1265582 ((_ is Cons!66051) (exprs!6509 lt!2448866)))))

(declare-fun bm!618426 () Bool)

(assert (=> bm!618426 (= call!618431 (derivationStepZipperDown!1853 (h!72499 (exprs!6509 lt!2448866)) (Context!12019 (t!379908 (exprs!6509 lt!2448866))) (h!72498 s!2326)))))

(declare-fun b!6805008 () Bool)

(assert (=> b!6805008 (= e!4106537 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6805009 () Bool)

(assert (=> b!6805009 (= e!4106537 call!618431)))

(assert (= (and d!2138458 res!2780820) b!6805006))

(assert (= (and d!2138458 c!1265581) b!6805005))

(assert (= (and d!2138458 (not c!1265581)) b!6805007))

(assert (= (and b!6805007 c!1265582) b!6805009))

(assert (= (and b!6805007 (not c!1265582)) b!6805008))

(assert (= (or b!6805005 b!6805009) bm!618426))

(declare-fun m!7551258 () Bool)

(assert (=> b!6805005 m!7551258))

(declare-fun m!7551260 () Bool)

(assert (=> b!6805006 m!7551260))

(declare-fun m!7551262 () Bool)

(assert (=> bm!618426 m!7551262))

(assert (=> b!6804856 d!2138458))

(declare-fun b!6805079 () Bool)

(declare-fun e!4106582 () Bool)

(assert (=> b!6805079 (= e!4106582 (matchZipper!2611 lt!2448850 s!2326))))

(declare-fun b!6805080 () Bool)

(declare-fun e!4106580 () Option!16512)

(assert (=> b!6805080 (= e!4106580 None!16511)))

(declare-fun b!6805081 () Bool)

(declare-fun res!2780842 () Bool)

(declare-fun e!4106581 () Bool)

(assert (=> b!6805081 (=> (not res!2780842) (not e!4106581))))

(declare-fun lt!2448908 () Option!16512)

(assert (=> b!6805081 (= res!2780842 (matchZipper!2611 lt!2448849 (_1!36903 (get!23007 lt!2448908))))))

(declare-fun b!6805082 () Bool)

(declare-fun e!4106584 () Bool)

(assert (=> b!6805082 (= e!4106584 (not (isDefined!13215 lt!2448908)))))

(declare-fun b!6805083 () Bool)

(declare-fun e!4106583 () Option!16512)

(assert (=> b!6805083 (= e!4106583 (Some!16511 (tuple2!67201 Nil!66050 s!2326)))))

(declare-fun d!2138460 () Bool)

(assert (=> d!2138460 e!4106584))

(declare-fun res!2780840 () Bool)

(assert (=> d!2138460 (=> res!2780840 e!4106584)))

(assert (=> d!2138460 (= res!2780840 e!4106581)))

(declare-fun res!2780844 () Bool)

(assert (=> d!2138460 (=> (not res!2780844) (not e!4106581))))

(assert (=> d!2138460 (= res!2780844 (isDefined!13215 lt!2448908))))

(assert (=> d!2138460 (= lt!2448908 e!4106583)))

(declare-fun c!1265611 () Bool)

(assert (=> d!2138460 (= c!1265611 e!4106582)))

(declare-fun res!2780843 () Bool)

(assert (=> d!2138460 (=> (not res!2780843) (not e!4106582))))

(assert (=> d!2138460 (= res!2780843 (matchZipper!2611 lt!2448849 Nil!66050))))

(assert (=> d!2138460 (= (++!14797 Nil!66050 s!2326) s!2326)))

(assert (=> d!2138460 (= (findConcatSeparationZippers!234 lt!2448849 lt!2448850 Nil!66050 s!2326 s!2326) lt!2448908)))

(declare-fun b!6805084 () Bool)

(assert (=> b!6805084 (= e!4106581 (= (++!14797 (_1!36903 (get!23007 lt!2448908)) (_2!36903 (get!23007 lt!2448908))) s!2326))))

(declare-fun b!6805085 () Bool)

(assert (=> b!6805085 (= e!4106583 e!4106580)))

(declare-fun c!1265610 () Bool)

(assert (=> b!6805085 (= c!1265610 ((_ is Nil!66050) s!2326))))

(declare-fun b!6805086 () Bool)

(declare-fun lt!2448907 () Unit!159941)

(declare-fun lt!2448909 () Unit!159941)

(assert (=> b!6805086 (= lt!2448907 lt!2448909)))

(assert (=> b!6805086 (= (++!14797 (++!14797 Nil!66050 (Cons!66050 (h!72498 s!2326) Nil!66050)) (t!379907 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2745 (List!66174 C!33520 List!66174 List!66174) Unit!159941)

(assert (=> b!6805086 (= lt!2448909 (lemmaMoveElementToOtherListKeepsConcatEq!2745 Nil!66050 (h!72498 s!2326) (t!379907 s!2326) s!2326))))

(assert (=> b!6805086 (= e!4106580 (findConcatSeparationZippers!234 lt!2448849 lt!2448850 (++!14797 Nil!66050 (Cons!66050 (h!72498 s!2326) Nil!66050)) (t!379907 s!2326) s!2326))))

(declare-fun b!6805087 () Bool)

(declare-fun res!2780841 () Bool)

(assert (=> b!6805087 (=> (not res!2780841) (not e!4106581))))

(assert (=> b!6805087 (= res!2780841 (matchZipper!2611 lt!2448850 (_2!36903 (get!23007 lt!2448908))))))

(assert (= (and d!2138460 res!2780843) b!6805079))

(assert (= (and d!2138460 c!1265611) b!6805083))

(assert (= (and d!2138460 (not c!1265611)) b!6805085))

(assert (= (and b!6805085 c!1265610) b!6805080))

(assert (= (and b!6805085 (not c!1265610)) b!6805086))

(assert (= (and d!2138460 res!2780844) b!6805081))

(assert (= (and b!6805081 res!2780842) b!6805087))

(assert (= (and b!6805087 res!2780841) b!6805084))

(assert (= (and d!2138460 (not res!2780840)) b!6805082))

(declare-fun m!7551298 () Bool)

(assert (=> b!6805086 m!7551298))

(assert (=> b!6805086 m!7551298))

(declare-fun m!7551300 () Bool)

(assert (=> b!6805086 m!7551300))

(declare-fun m!7551302 () Bool)

(assert (=> b!6805086 m!7551302))

(assert (=> b!6805086 m!7551298))

(declare-fun m!7551304 () Bool)

(assert (=> b!6805086 m!7551304))

(declare-fun m!7551306 () Bool)

(assert (=> b!6805082 m!7551306))

(declare-fun m!7551308 () Bool)

(assert (=> b!6805081 m!7551308))

(declare-fun m!7551310 () Bool)

(assert (=> b!6805081 m!7551310))

(assert (=> b!6805084 m!7551308))

(declare-fun m!7551312 () Bool)

(assert (=> b!6805084 m!7551312))

(assert (=> b!6805087 m!7551308))

(declare-fun m!7551314 () Bool)

(assert (=> b!6805087 m!7551314))

(assert (=> d!2138460 m!7551306))

(declare-fun m!7551318 () Bool)

(assert (=> d!2138460 m!7551318))

(declare-fun m!7551322 () Bool)

(assert (=> d!2138460 m!7551322))

(declare-fun m!7551324 () Bool)

(assert (=> b!6805079 m!7551324))

(assert (=> b!6804875 d!2138460))

(declare-fun d!2138472 () Bool)

(declare-fun isEmpty!38435 (Option!16512) Bool)

(assert (=> d!2138472 (= (isDefined!13215 lt!2448869) (not (isEmpty!38435 lt!2448869)))))

(declare-fun bs!1814049 () Bool)

(assert (= bs!1814049 d!2138472))

(declare-fun m!7551328 () Bool)

(assert (=> bs!1814049 m!7551328))

(assert (=> b!6804875 d!2138472))

(declare-fun d!2138476 () Bool)

(assert (=> d!2138476 (= (get!23007 lt!2448869) (v!52717 lt!2448869))))

(assert (=> b!6804875 d!2138476))

(declare-fun d!2138478 () Bool)

(assert (=> d!2138478 (isDefined!13215 (findConcatSeparationZippers!234 lt!2448849 (store ((as const (Array Context!12018 Bool)) false) lt!2448866 true) Nil!66050 s!2326 s!2326))))

(declare-fun lt!2448916 () Unit!159941)

(declare-fun choose!50737 ((InoxSet Context!12018) Context!12018 List!66174) Unit!159941)

(assert (=> d!2138478 (= lt!2448916 (choose!50737 lt!2448849 lt!2448866 s!2326))))

(assert (=> d!2138478 (matchZipper!2611 (appendTo!230 lt!2448849 lt!2448866) s!2326)))

(assert (=> d!2138478 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!234 lt!2448849 lt!2448866 s!2326) lt!2448916)))

(declare-fun bs!1814053 () Bool)

(assert (= bs!1814053 d!2138478))

(declare-fun m!7551350 () Bool)

(assert (=> bs!1814053 m!7551350))

(declare-fun m!7551354 () Bool)

(assert (=> bs!1814053 m!7551354))

(declare-fun m!7551356 () Bool)

(assert (=> bs!1814053 m!7551356))

(assert (=> bs!1814053 m!7551074))

(assert (=> bs!1814053 m!7551176))

(assert (=> bs!1814053 m!7551074))

(declare-fun m!7551358 () Bool)

(assert (=> bs!1814053 m!7551358))

(assert (=> bs!1814053 m!7551176))

(assert (=> bs!1814053 m!7551354))

(assert (=> b!6804875 d!2138478))

(declare-fun b!6805111 () Bool)

(declare-fun res!2780851 () Bool)

(declare-fun e!4106596 () Bool)

(assert (=> b!6805111 (=> (not res!2780851) (not e!4106596))))

(declare-fun lt!2448919 () List!66174)

(declare-fun size!40672 (List!66174) Int)

(assert (=> b!6805111 (= res!2780851 (= (size!40672 lt!2448919) (+ (size!40672 (_1!36903 lt!2448877)) (size!40672 (_2!36903 lt!2448877)))))))

(declare-fun d!2138490 () Bool)

(assert (=> d!2138490 e!4106596))

(declare-fun res!2780850 () Bool)

(assert (=> d!2138490 (=> (not res!2780850) (not e!4106596))))

(declare-fun content!12908 (List!66174) (InoxSet C!33520))

(assert (=> d!2138490 (= res!2780850 (= (content!12908 lt!2448919) ((_ map or) (content!12908 (_1!36903 lt!2448877)) (content!12908 (_2!36903 lt!2448877)))))))

(declare-fun e!4106595 () List!66174)

(assert (=> d!2138490 (= lt!2448919 e!4106595)))

(declare-fun c!1265619 () Bool)

(assert (=> d!2138490 (= c!1265619 ((_ is Nil!66050) (_1!36903 lt!2448877)))))

(assert (=> d!2138490 (= (++!14797 (_1!36903 lt!2448877) (_2!36903 lt!2448877)) lt!2448919)))

(declare-fun b!6805112 () Bool)

(assert (=> b!6805112 (= e!4106596 (or (not (= (_2!36903 lt!2448877) Nil!66050)) (= lt!2448919 (_1!36903 lt!2448877))))))

(declare-fun b!6805109 () Bool)

(assert (=> b!6805109 (= e!4106595 (_2!36903 lt!2448877))))

(declare-fun b!6805110 () Bool)

(assert (=> b!6805110 (= e!4106595 (Cons!66050 (h!72498 (_1!36903 lt!2448877)) (++!14797 (t!379907 (_1!36903 lt!2448877)) (_2!36903 lt!2448877))))))

(assert (= (and d!2138490 c!1265619) b!6805109))

(assert (= (and d!2138490 (not c!1265619)) b!6805110))

(assert (= (and d!2138490 res!2780850) b!6805111))

(assert (= (and b!6805111 res!2780851) b!6805112))

(declare-fun m!7551360 () Bool)

(assert (=> b!6805111 m!7551360))

(declare-fun m!7551362 () Bool)

(assert (=> b!6805111 m!7551362))

(declare-fun m!7551364 () Bool)

(assert (=> b!6805111 m!7551364))

(declare-fun m!7551366 () Bool)

(assert (=> d!2138490 m!7551366))

(declare-fun m!7551368 () Bool)

(assert (=> d!2138490 m!7551368))

(declare-fun m!7551370 () Bool)

(assert (=> d!2138490 m!7551370))

(declare-fun m!7551372 () Bool)

(assert (=> b!6805110 m!7551372))

(assert (=> b!6804875 d!2138490))

(declare-fun d!2138492 () Bool)

(declare-fun lt!2448920 () Regex!16625)

(assert (=> d!2138492 (validRegex!8361 lt!2448920)))

(assert (=> d!2138492 (= lt!2448920 (generalisedUnion!2469 (unfocusZipperList!2046 (Cons!66052 lt!2448847 Nil!66052))))))

(assert (=> d!2138492 (= (unfocusZipper!2367 (Cons!66052 lt!2448847 Nil!66052)) lt!2448920)))

(declare-fun bs!1814055 () Bool)

(assert (= bs!1814055 d!2138492))

(declare-fun m!7551374 () Bool)

(assert (=> bs!1814055 m!7551374))

(declare-fun m!7551376 () Bool)

(assert (=> bs!1814055 m!7551376))

(assert (=> bs!1814055 m!7551376))

(declare-fun m!7551378 () Bool)

(assert (=> bs!1814055 m!7551378))

(assert (=> b!6804874 d!2138492))

(declare-fun d!2138494 () Bool)

(declare-fun e!4106599 () Bool)

(assert (=> d!2138494 e!4106599))

(declare-fun res!2780854 () Bool)

(assert (=> d!2138494 (=> (not res!2780854) (not e!4106599))))

(declare-fun lt!2448926 () List!66176)

(declare-fun noDuplicate!2409 (List!66176) Bool)

(assert (=> d!2138494 (= res!2780854 (noDuplicate!2409 lt!2448926))))

(declare-fun choose!50738 ((InoxSet Context!12018)) List!66176)

(assert (=> d!2138494 (= lt!2448926 (choose!50738 z!1189))))

(assert (=> d!2138494 (= (toList!10409 z!1189) lt!2448926)))

(declare-fun b!6805115 () Bool)

(declare-fun content!12909 (List!66176) (InoxSet Context!12018))

(assert (=> b!6805115 (= e!4106599 (= (content!12909 lt!2448926) z!1189))))

(assert (= (and d!2138494 res!2780854) b!6805115))

(declare-fun m!7551388 () Bool)

(assert (=> d!2138494 m!7551388))

(declare-fun m!7551390 () Bool)

(assert (=> d!2138494 m!7551390))

(declare-fun m!7551392 () Bool)

(assert (=> b!6805115 m!7551392))

(assert (=> b!6804855 d!2138494))

(declare-fun d!2138500 () Bool)

(declare-fun lt!2448927 () Regex!16625)

(assert (=> d!2138500 (validRegex!8361 lt!2448927)))

(assert (=> d!2138500 (= lt!2448927 (generalisedUnion!2469 (unfocusZipperList!2046 (Cons!66052 lt!2448855 Nil!66052))))))

(assert (=> d!2138500 (= (unfocusZipper!2367 (Cons!66052 lt!2448855 Nil!66052)) lt!2448927)))

(declare-fun bs!1814057 () Bool)

(assert (= bs!1814057 d!2138500))

(declare-fun m!7551394 () Bool)

(assert (=> bs!1814057 m!7551394))

(declare-fun m!7551396 () Bool)

(assert (=> bs!1814057 m!7551396))

(assert (=> bs!1814057 m!7551396))

(declare-fun m!7551398 () Bool)

(assert (=> bs!1814057 m!7551398))

(assert (=> b!6804878 d!2138500))

(declare-fun d!2138502 () Bool)

(declare-fun c!1265624 () Bool)

(assert (=> d!2138502 (= c!1265624 (isEmpty!38433 s!2326))))

(declare-fun e!4106606 () Bool)

(assert (=> d!2138502 (= (matchZipper!2611 z!1189 s!2326) e!4106606)))

(declare-fun b!6805128 () Bool)

(declare-fun nullableZipper!2331 ((InoxSet Context!12018)) Bool)

(assert (=> b!6805128 (= e!4106606 (nullableZipper!2331 z!1189))))

(declare-fun b!6805129 () Bool)

(assert (=> b!6805129 (= e!4106606 (matchZipper!2611 (derivationStepZipper!2569 z!1189 (head!13659 s!2326)) (tail!12744 s!2326)))))

(assert (= (and d!2138502 c!1265624) b!6805128))

(assert (= (and d!2138502 (not c!1265624)) b!6805129))

(assert (=> d!2138502 m!7551108))

(declare-fun m!7551400 () Bool)

(assert (=> b!6805128 m!7551400))

(assert (=> b!6805129 m!7551208))

(assert (=> b!6805129 m!7551208))

(declare-fun m!7551402 () Bool)

(assert (=> b!6805129 m!7551402))

(assert (=> b!6805129 m!7551210))

(assert (=> b!6805129 m!7551402))

(assert (=> b!6805129 m!7551210))

(declare-fun m!7551404 () Bool)

(assert (=> b!6805129 m!7551404))

(assert (=> b!6804859 d!2138502))

(declare-fun bs!1814058 () Bool)

(declare-fun b!6805137 () Bool)

(assert (= bs!1814058 (and b!6805137 b!6804861)))

(declare-fun lambda!384018 () Int)

(assert (=> bs!1814058 (not (= lambda!384018 lambda!383996))))

(declare-fun bs!1814059 () Bool)

(assert (= bs!1814059 (and b!6805137 b!6804933)))

(assert (=> bs!1814059 (= (and (= (reg!16954 r!7292) (reg!16954 lt!2448871)) (= r!7292 lt!2448871)) (= lambda!384018 lambda!384004))))

(assert (=> bs!1814058 (= lambda!384018 lambda!383995)))

(assert (=> bs!1814058 (not (= lambda!384018 lambda!383994))))

(declare-fun bs!1814060 () Bool)

(assert (= bs!1814060 (and b!6805137 b!6804939)))

(assert (=> bs!1814060 (not (= lambda!384018 lambda!384005))))

(assert (=> b!6805137 true))

(assert (=> b!6805137 true))

(declare-fun bs!1814061 () Bool)

(declare-fun b!6805143 () Bool)

(assert (= bs!1814061 (and b!6805143 b!6805137)))

(declare-fun lambda!384019 () Int)

(assert (=> bs!1814061 (not (= lambda!384019 lambda!384018))))

(declare-fun bs!1814062 () Bool)

(assert (= bs!1814062 (and b!6805143 b!6804861)))

(assert (=> bs!1814062 (= (and (= (regOne!33762 r!7292) (reg!16954 r!7292)) (= (regTwo!33762 r!7292) r!7292)) (= lambda!384019 lambda!383996))))

(declare-fun bs!1814063 () Bool)

(assert (= bs!1814063 (and b!6805143 b!6804933)))

(assert (=> bs!1814063 (not (= lambda!384019 lambda!384004))))

(assert (=> bs!1814062 (not (= lambda!384019 lambda!383995))))

(assert (=> bs!1814062 (not (= lambda!384019 lambda!383994))))

(declare-fun bs!1814064 () Bool)

(assert (= bs!1814064 (and b!6805143 b!6804939)))

(assert (=> bs!1814064 (= (and (= (regOne!33762 r!7292) (regOne!33762 lt!2448871)) (= (regTwo!33762 r!7292) (regTwo!33762 lt!2448871))) (= lambda!384019 lambda!384005))))

(assert (=> b!6805143 true))

(assert (=> b!6805143 true))

(declare-fun b!6805134 () Bool)

(declare-fun e!4106615 () Bool)

(declare-fun e!4106609 () Bool)

(assert (=> b!6805134 (= e!4106615 e!4106609)))

(declare-fun c!1265627 () Bool)

(assert (=> b!6805134 (= c!1265627 ((_ is Star!16625) r!7292))))

(declare-fun b!6805135 () Bool)

(declare-fun e!4106610 () Bool)

(assert (=> b!6805135 (= e!4106610 (matchRSpec!3726 (regTwo!33763 r!7292) s!2326))))

(declare-fun b!6805136 () Bool)

(declare-fun e!4106613 () Bool)

(declare-fun call!618436 () Bool)

(assert (=> b!6805136 (= e!4106613 call!618436)))

(declare-fun e!4106612 () Bool)

(declare-fun call!618437 () Bool)

(assert (=> b!6805137 (= e!4106612 call!618437)))

(declare-fun d!2138504 () Bool)

(declare-fun c!1265628 () Bool)

(assert (=> d!2138504 (= c!1265628 ((_ is EmptyExpr!16625) r!7292))))

(assert (=> d!2138504 (= (matchRSpec!3726 r!7292 s!2326) e!4106613)))

(declare-fun bm!618431 () Bool)

(assert (=> bm!618431 (= call!618436 (isEmpty!38433 s!2326))))

(declare-fun b!6805138 () Bool)

(declare-fun c!1265629 () Bool)

(assert (=> b!6805138 (= c!1265629 ((_ is ElementMatch!16625) r!7292))))

(declare-fun e!4106607 () Bool)

(declare-fun e!4106614 () Bool)

(assert (=> b!6805138 (= e!4106607 e!4106614)))

(declare-fun b!6805139 () Bool)

(assert (=> b!6805139 (= e!4106615 e!4106610)))

(declare-fun res!2780862 () Bool)

(assert (=> b!6805139 (= res!2780862 (matchRSpec!3726 (regOne!33763 r!7292) s!2326))))

(assert (=> b!6805139 (=> res!2780862 e!4106610)))

(declare-fun bm!618432 () Bool)

(assert (=> bm!618432 (= call!618437 (Exists!3693 (ite c!1265627 lambda!384018 lambda!384019)))))

(declare-fun b!6805140 () Bool)

(declare-fun c!1265626 () Bool)

(assert (=> b!6805140 (= c!1265626 ((_ is Union!16625) r!7292))))

(assert (=> b!6805140 (= e!4106614 e!4106615)))

(declare-fun b!6805141 () Bool)

(declare-fun res!2780859 () Bool)

(assert (=> b!6805141 (=> res!2780859 e!4106612)))

(assert (=> b!6805141 (= res!2780859 call!618436)))

(assert (=> b!6805141 (= e!4106609 e!4106612)))

(declare-fun b!6805142 () Bool)

(assert (=> b!6805142 (= e!4106613 e!4106607)))

(declare-fun res!2780863 () Bool)

(assert (=> b!6805142 (= res!2780863 (not ((_ is EmptyLang!16625) r!7292)))))

(assert (=> b!6805142 (=> (not res!2780863) (not e!4106607))))

(assert (=> b!6805143 (= e!4106609 call!618437)))

(declare-fun b!6805144 () Bool)

(assert (=> b!6805144 (= e!4106614 (= s!2326 (Cons!66050 (c!1265549 r!7292) Nil!66050)))))

(assert (= (and d!2138504 c!1265628) b!6805136))

(assert (= (and d!2138504 (not c!1265628)) b!6805142))

(assert (= (and b!6805142 res!2780863) b!6805138))

(assert (= (and b!6805138 c!1265629) b!6805144))

(assert (= (and b!6805138 (not c!1265629)) b!6805140))

(assert (= (and b!6805140 c!1265626) b!6805139))

(assert (= (and b!6805140 (not c!1265626)) b!6805134))

(assert (= (and b!6805139 (not res!2780862)) b!6805135))

(assert (= (and b!6805134 c!1265627) b!6805141))

(assert (= (and b!6805134 (not c!1265627)) b!6805143))

(assert (= (and b!6805141 (not res!2780859)) b!6805137))

(assert (= (or b!6805137 b!6805143) bm!618432))

(assert (= (or b!6805136 b!6805141) bm!618431))

(declare-fun m!7551420 () Bool)

(assert (=> b!6805135 m!7551420))

(assert (=> bm!618431 m!7551108))

(declare-fun m!7551422 () Bool)

(assert (=> b!6805139 m!7551422))

(declare-fun m!7551424 () Bool)

(assert (=> bm!618432 m!7551424))

(assert (=> b!6804877 d!2138504))

(declare-fun b!6805145 () Bool)

(declare-fun e!4106616 () Bool)

(assert (=> b!6805145 (= e!4106616 (not (= (head!13659 s!2326) (c!1265549 r!7292))))))

(declare-fun b!6805146 () Bool)

(declare-fun e!4106620 () Bool)

(assert (=> b!6805146 (= e!4106620 (matchR!8808 (derivativeStep!5288 r!7292 (head!13659 s!2326)) (tail!12744 s!2326)))))

(declare-fun b!6805147 () Bool)

(declare-fun e!4106617 () Bool)

(assert (=> b!6805147 (= e!4106617 (= (head!13659 s!2326) (c!1265549 r!7292)))))

(declare-fun b!6805148 () Bool)

(declare-fun e!4106618 () Bool)

(declare-fun lt!2448931 () Bool)

(assert (=> b!6805148 (= e!4106618 (not lt!2448931))))

(declare-fun b!6805149 () Bool)

(declare-fun e!4106621 () Bool)

(assert (=> b!6805149 (= e!4106621 e!4106616)))

(declare-fun res!2780869 () Bool)

(assert (=> b!6805149 (=> res!2780869 e!4106616)))

(declare-fun call!618438 () Bool)

(assert (=> b!6805149 (= res!2780869 call!618438)))

(declare-fun b!6805150 () Bool)

(declare-fun res!2780864 () Bool)

(declare-fun e!4106619 () Bool)

(assert (=> b!6805150 (=> res!2780864 e!4106619)))

(assert (=> b!6805150 (= res!2780864 e!4106617)))

(declare-fun res!2780868 () Bool)

(assert (=> b!6805150 (=> (not res!2780868) (not e!4106617))))

(assert (=> b!6805150 (= res!2780868 lt!2448931)))

(declare-fun b!6805151 () Bool)

(declare-fun e!4106622 () Bool)

(assert (=> b!6805151 (= e!4106622 (= lt!2448931 call!618438))))

(declare-fun b!6805152 () Bool)

(declare-fun res!2780866 () Bool)

(assert (=> b!6805152 (=> (not res!2780866) (not e!4106617))))

(assert (=> b!6805152 (= res!2780866 (isEmpty!38433 (tail!12744 s!2326)))))

(declare-fun b!6805153 () Bool)

(declare-fun res!2780865 () Bool)

(assert (=> b!6805153 (=> res!2780865 e!4106616)))

(assert (=> b!6805153 (= res!2780865 (not (isEmpty!38433 (tail!12744 s!2326))))))

(declare-fun b!6805154 () Bool)

(declare-fun res!2780867 () Bool)

(assert (=> b!6805154 (=> res!2780867 e!4106619)))

(assert (=> b!6805154 (= res!2780867 (not ((_ is ElementMatch!16625) r!7292)))))

(assert (=> b!6805154 (= e!4106618 e!4106619)))

(declare-fun b!6805155 () Bool)

(assert (=> b!6805155 (= e!4106619 e!4106621)))

(declare-fun res!2780870 () Bool)

(assert (=> b!6805155 (=> (not res!2780870) (not e!4106621))))

(assert (=> b!6805155 (= res!2780870 (not lt!2448931))))

(declare-fun d!2138508 () Bool)

(assert (=> d!2138508 e!4106622))

(declare-fun c!1265631 () Bool)

(assert (=> d!2138508 (= c!1265631 ((_ is EmptyExpr!16625) r!7292))))

(assert (=> d!2138508 (= lt!2448931 e!4106620)))

(declare-fun c!1265630 () Bool)

(assert (=> d!2138508 (= c!1265630 (isEmpty!38433 s!2326))))

(assert (=> d!2138508 (validRegex!8361 r!7292)))

(assert (=> d!2138508 (= (matchR!8808 r!7292 s!2326) lt!2448931)))

(declare-fun b!6805156 () Bool)

(declare-fun res!2780871 () Bool)

(assert (=> b!6805156 (=> (not res!2780871) (not e!4106617))))

(assert (=> b!6805156 (= res!2780871 (not call!618438))))

(declare-fun bm!618433 () Bool)

(assert (=> bm!618433 (= call!618438 (isEmpty!38433 s!2326))))

(declare-fun b!6805157 () Bool)

(assert (=> b!6805157 (= e!4106620 (nullable!6603 r!7292))))

(declare-fun b!6805158 () Bool)

(assert (=> b!6805158 (= e!4106622 e!4106618)))

(declare-fun c!1265632 () Bool)

(assert (=> b!6805158 (= c!1265632 ((_ is EmptyLang!16625) r!7292))))

(assert (= (and d!2138508 c!1265630) b!6805157))

(assert (= (and d!2138508 (not c!1265630)) b!6805146))

(assert (= (and d!2138508 c!1265631) b!6805151))

(assert (= (and d!2138508 (not c!1265631)) b!6805158))

(assert (= (and b!6805158 c!1265632) b!6805148))

(assert (= (and b!6805158 (not c!1265632)) b!6805154))

(assert (= (and b!6805154 (not res!2780867)) b!6805150))

(assert (= (and b!6805150 res!2780868) b!6805156))

(assert (= (and b!6805156 res!2780871) b!6805152))

(assert (= (and b!6805152 res!2780866) b!6805147))

(assert (= (and b!6805150 (not res!2780864)) b!6805155))

(assert (= (and b!6805155 res!2780870) b!6805149))

(assert (= (and b!6805149 (not res!2780869)) b!6805153))

(assert (= (and b!6805153 (not res!2780865)) b!6805145))

(assert (= (or b!6805151 b!6805149 b!6805156) bm!618433))

(assert (=> b!6805145 m!7551208))

(assert (=> b!6805153 m!7551210))

(assert (=> b!6805153 m!7551210))

(assert (=> b!6805153 m!7551212))

(assert (=> b!6805152 m!7551210))

(assert (=> b!6805152 m!7551210))

(assert (=> b!6805152 m!7551212))

(assert (=> d!2138508 m!7551108))

(assert (=> d!2138508 m!7551128))

(declare-fun m!7551426 () Bool)

(assert (=> b!6805157 m!7551426))

(assert (=> b!6805147 m!7551208))

(assert (=> b!6805146 m!7551208))

(assert (=> b!6805146 m!7551208))

(declare-fun m!7551428 () Bool)

(assert (=> b!6805146 m!7551428))

(assert (=> b!6805146 m!7551210))

(assert (=> b!6805146 m!7551428))

(assert (=> b!6805146 m!7551210))

(declare-fun m!7551430 () Bool)

(assert (=> b!6805146 m!7551430))

(assert (=> bm!618433 m!7551108))

(assert (=> b!6804877 d!2138508))

(declare-fun d!2138510 () Bool)

(assert (=> d!2138510 (= (matchR!8808 r!7292 s!2326) (matchRSpec!3726 r!7292 s!2326))))

(declare-fun lt!2448932 () Unit!159941)

(assert (=> d!2138510 (= lt!2448932 (choose!50734 r!7292 s!2326))))

(assert (=> d!2138510 (validRegex!8361 r!7292)))

(assert (=> d!2138510 (= (mainMatchTheorem!3726 r!7292 s!2326) lt!2448932)))

(declare-fun bs!1814065 () Bool)

(assert (= bs!1814065 d!2138510))

(assert (=> bs!1814065 m!7551086))

(assert (=> bs!1814065 m!7551084))

(declare-fun m!7551432 () Bool)

(assert (=> bs!1814065 m!7551432))

(assert (=> bs!1814065 m!7551128))

(assert (=> b!6804877 d!2138510))

(declare-fun b!6805177 () Bool)

(declare-fun e!4106640 () Bool)

(declare-fun call!618446 () Bool)

(assert (=> b!6805177 (= e!4106640 call!618446)))

(declare-fun bm!618440 () Bool)

(declare-fun call!618445 () Bool)

(declare-fun call!618447 () Bool)

(assert (=> bm!618440 (= call!618445 call!618447)))

(declare-fun b!6805178 () Bool)

(declare-fun e!4106641 () Bool)

(declare-fun e!4106642 () Bool)

(assert (=> b!6805178 (= e!4106641 e!4106642)))

(declare-fun res!2780885 () Bool)

(assert (=> b!6805178 (=> (not res!2780885) (not e!4106642))))

(assert (=> b!6805178 (= res!2780885 call!618445)))

(declare-fun b!6805179 () Bool)

(declare-fun res!2780883 () Bool)

(assert (=> b!6805179 (=> (not res!2780883) (not e!4106640))))

(assert (=> b!6805179 (= res!2780883 call!618445)))

(declare-fun e!4106643 () Bool)

(assert (=> b!6805179 (= e!4106643 e!4106640)))

(declare-fun b!6805180 () Bool)

(assert (=> b!6805180 (= e!4106642 call!618446)))

(declare-fun b!6805181 () Bool)

(declare-fun e!4106637 () Bool)

(declare-fun e!4106639 () Bool)

(assert (=> b!6805181 (= e!4106637 e!4106639)))

(declare-fun res!2780884 () Bool)

(assert (=> b!6805181 (= res!2780884 (not (nullable!6603 (reg!16954 r!7292))))))

(assert (=> b!6805181 (=> (not res!2780884) (not e!4106639))))

(declare-fun b!6805182 () Bool)

(declare-fun res!2780882 () Bool)

(assert (=> b!6805182 (=> res!2780882 e!4106641)))

(assert (=> b!6805182 (= res!2780882 (not ((_ is Concat!25470) r!7292)))))

(assert (=> b!6805182 (= e!4106643 e!4106641)))

(declare-fun b!6805183 () Bool)

(declare-fun e!4106638 () Bool)

(assert (=> b!6805183 (= e!4106638 e!4106637)))

(declare-fun c!1265637 () Bool)

(assert (=> b!6805183 (= c!1265637 ((_ is Star!16625) r!7292))))

(declare-fun d!2138512 () Bool)

(declare-fun res!2780886 () Bool)

(assert (=> d!2138512 (=> res!2780886 e!4106638)))

(assert (=> d!2138512 (= res!2780886 ((_ is ElementMatch!16625) r!7292))))

(assert (=> d!2138512 (= (validRegex!8361 r!7292) e!4106638)))

(declare-fun bm!618441 () Bool)

(declare-fun c!1265638 () Bool)

(assert (=> bm!618441 (= call!618446 (validRegex!8361 (ite c!1265638 (regTwo!33763 r!7292) (regTwo!33762 r!7292))))))

(declare-fun b!6805184 () Bool)

(assert (=> b!6805184 (= e!4106637 e!4106643)))

(assert (=> b!6805184 (= c!1265638 ((_ is Union!16625) r!7292))))

(declare-fun bm!618442 () Bool)

(assert (=> bm!618442 (= call!618447 (validRegex!8361 (ite c!1265637 (reg!16954 r!7292) (ite c!1265638 (regOne!33763 r!7292) (regOne!33762 r!7292)))))))

(declare-fun b!6805185 () Bool)

(assert (=> b!6805185 (= e!4106639 call!618447)))

(assert (= (and d!2138512 (not res!2780886)) b!6805183))

(assert (= (and b!6805183 c!1265637) b!6805181))

(assert (= (and b!6805183 (not c!1265637)) b!6805184))

(assert (= (and b!6805181 res!2780884) b!6805185))

(assert (= (and b!6805184 c!1265638) b!6805179))

(assert (= (and b!6805184 (not c!1265638)) b!6805182))

(assert (= (and b!6805179 res!2780883) b!6805177))

(assert (= (and b!6805182 (not res!2780882)) b!6805178))

(assert (= (and b!6805178 res!2780885) b!6805180))

(assert (= (or b!6805177 b!6805180) bm!618441))

(assert (= (or b!6805179 b!6805178) bm!618440))

(assert (= (or b!6805185 bm!618440) bm!618442))

(declare-fun m!7551434 () Bool)

(assert (=> b!6805181 m!7551434))

(declare-fun m!7551436 () Bool)

(assert (=> bm!618441 m!7551436))

(declare-fun m!7551438 () Bool)

(assert (=> bm!618442 m!7551438))

(assert (=> start!658688 d!2138512))

(declare-fun d!2138514 () Bool)

(declare-fun lt!2448935 () Regex!16625)

(assert (=> d!2138514 (validRegex!8361 lt!2448935)))

(assert (=> d!2138514 (= lt!2448935 (generalisedUnion!2469 (unfocusZipperList!2046 (Cons!66052 lt!2448866 Nil!66052))))))

(assert (=> d!2138514 (= (unfocusZipper!2367 (Cons!66052 lt!2448866 Nil!66052)) lt!2448935)))

(declare-fun bs!1814066 () Bool)

(assert (= bs!1814066 d!2138514))

(declare-fun m!7551440 () Bool)

(assert (=> bs!1814066 m!7551440))

(declare-fun m!7551442 () Bool)

(assert (=> bs!1814066 m!7551442))

(assert (=> bs!1814066 m!7551442))

(declare-fun m!7551444 () Bool)

(assert (=> bs!1814066 m!7551444))

(assert (=> b!6804876 d!2138514))

(declare-fun bs!1814067 () Bool)

(declare-fun d!2138516 () Bool)

(assert (= bs!1814067 (and d!2138516 b!6804863)))

(declare-fun lambda!384022 () Int)

(assert (=> bs!1814067 (= lambda!384022 lambda!383999)))

(declare-fun b!6805233 () Bool)

(declare-fun e!4106676 () Bool)

(declare-fun isEmpty!38438 (List!66175) Bool)

(assert (=> b!6805233 (= e!4106676 (isEmpty!38438 (t!379908 (unfocusZipperList!2046 zl!343))))))

(declare-fun b!6805234 () Bool)

(declare-fun e!4106675 () Regex!16625)

(assert (=> b!6805234 (= e!4106675 EmptyLang!16625)))

(declare-fun b!6805235 () Bool)

(declare-fun e!4106671 () Bool)

(declare-fun lt!2448945 () Regex!16625)

(declare-fun head!13662 (List!66175) Regex!16625)

(assert (=> b!6805235 (= e!4106671 (= lt!2448945 (head!13662 (unfocusZipperList!2046 zl!343))))))

(declare-fun b!6805236 () Bool)

(assert (=> b!6805236 (= e!4106675 (Union!16625 (h!72499 (unfocusZipperList!2046 zl!343)) (generalisedUnion!2469 (t!379908 (unfocusZipperList!2046 zl!343)))))))

(declare-fun b!6805238 () Bool)

(declare-fun isUnion!1421 (Regex!16625) Bool)

(assert (=> b!6805238 (= e!4106671 (isUnion!1421 lt!2448945))))

(declare-fun b!6805239 () Bool)

(declare-fun e!4106674 () Bool)

(declare-fun e!4106672 () Bool)

(assert (=> b!6805239 (= e!4106674 e!4106672)))

(declare-fun c!1265653 () Bool)

(assert (=> b!6805239 (= c!1265653 (isEmpty!38438 (unfocusZipperList!2046 zl!343)))))

(declare-fun b!6805240 () Bool)

(declare-fun e!4106673 () Regex!16625)

(assert (=> b!6805240 (= e!4106673 (h!72499 (unfocusZipperList!2046 zl!343)))))

(declare-fun b!6805241 () Bool)

(declare-fun isEmptyLang!1991 (Regex!16625) Bool)

(assert (=> b!6805241 (= e!4106672 (isEmptyLang!1991 lt!2448945))))

(declare-fun b!6805242 () Bool)

(assert (=> b!6805242 (= e!4106673 e!4106675)))

(declare-fun c!1265656 () Bool)

(assert (=> b!6805242 (= c!1265656 ((_ is Cons!66051) (unfocusZipperList!2046 zl!343)))))

(assert (=> d!2138516 e!4106674))

(declare-fun res!2780906 () Bool)

(assert (=> d!2138516 (=> (not res!2780906) (not e!4106674))))

(assert (=> d!2138516 (= res!2780906 (validRegex!8361 lt!2448945))))

(assert (=> d!2138516 (= lt!2448945 e!4106673)))

(declare-fun c!1265654 () Bool)

(assert (=> d!2138516 (= c!1265654 e!4106676)))

(declare-fun res!2780907 () Bool)

(assert (=> d!2138516 (=> (not res!2780907) (not e!4106676))))

(assert (=> d!2138516 (= res!2780907 ((_ is Cons!66051) (unfocusZipperList!2046 zl!343)))))

(declare-fun forall!15817 (List!66175 Int) Bool)

(assert (=> d!2138516 (forall!15817 (unfocusZipperList!2046 zl!343) lambda!384022)))

(assert (=> d!2138516 (= (generalisedUnion!2469 (unfocusZipperList!2046 zl!343)) lt!2448945)))

(declare-fun b!6805237 () Bool)

(assert (=> b!6805237 (= e!4106672 e!4106671)))

(declare-fun c!1265655 () Bool)

(declare-fun tail!12747 (List!66175) List!66175)

(assert (=> b!6805237 (= c!1265655 (isEmpty!38438 (tail!12747 (unfocusZipperList!2046 zl!343))))))

(assert (= (and d!2138516 res!2780907) b!6805233))

(assert (= (and d!2138516 c!1265654) b!6805240))

(assert (= (and d!2138516 (not c!1265654)) b!6805242))

(assert (= (and b!6805242 c!1265656) b!6805236))

(assert (= (and b!6805242 (not c!1265656)) b!6805234))

(assert (= (and d!2138516 res!2780906) b!6805239))

(assert (= (and b!6805239 c!1265653) b!6805241))

(assert (= (and b!6805239 (not c!1265653)) b!6805237))

(assert (= (and b!6805237 c!1265655) b!6805235))

(assert (= (and b!6805237 (not c!1265655)) b!6805238))

(declare-fun m!7551470 () Bool)

(assert (=> d!2138516 m!7551470))

(assert (=> d!2138516 m!7551156))

(declare-fun m!7551472 () Bool)

(assert (=> d!2138516 m!7551472))

(declare-fun m!7551474 () Bool)

(assert (=> b!6805233 m!7551474))

(declare-fun m!7551476 () Bool)

(assert (=> b!6805241 m!7551476))

(declare-fun m!7551478 () Bool)

(assert (=> b!6805238 m!7551478))

(assert (=> b!6805239 m!7551156))

(declare-fun m!7551480 () Bool)

(assert (=> b!6805239 m!7551480))

(assert (=> b!6805237 m!7551156))

(declare-fun m!7551482 () Bool)

(assert (=> b!6805237 m!7551482))

(assert (=> b!6805237 m!7551482))

(declare-fun m!7551484 () Bool)

(assert (=> b!6805237 m!7551484))

(assert (=> b!6805235 m!7551156))

(declare-fun m!7551486 () Bool)

(assert (=> b!6805235 m!7551486))

(declare-fun m!7551488 () Bool)

(assert (=> b!6805236 m!7551488))

(assert (=> b!6804880 d!2138516))

(declare-fun bs!1814068 () Bool)

(declare-fun d!2138520 () Bool)

(assert (= bs!1814068 (and d!2138520 b!6804863)))

(declare-fun lambda!384025 () Int)

(assert (=> bs!1814068 (= lambda!384025 lambda!383999)))

(declare-fun bs!1814069 () Bool)

(assert (= bs!1814069 (and d!2138520 d!2138516)))

(assert (=> bs!1814069 (= lambda!384025 lambda!384022)))

(declare-fun lt!2448948 () List!66175)

(assert (=> d!2138520 (forall!15817 lt!2448948 lambda!384025)))

(declare-fun e!4106691 () List!66175)

(assert (=> d!2138520 (= lt!2448948 e!4106691)))

(declare-fun c!1265669 () Bool)

(assert (=> d!2138520 (= c!1265669 ((_ is Cons!66052) zl!343))))

(assert (=> d!2138520 (= (unfocusZipperList!2046 zl!343) lt!2448948)))

(declare-fun b!6805269 () Bool)

(assert (=> b!6805269 (= e!4106691 (Cons!66051 (generalisedConcat!2222 (exprs!6509 (h!72500 zl!343))) (unfocusZipperList!2046 (t!379909 zl!343))))))

(declare-fun b!6805270 () Bool)

(assert (=> b!6805270 (= e!4106691 Nil!66051)))

(assert (= (and d!2138520 c!1265669) b!6805269))

(assert (= (and d!2138520 (not c!1265669)) b!6805270))

(declare-fun m!7551490 () Bool)

(assert (=> d!2138520 m!7551490))

(assert (=> b!6805269 m!7551192))

(declare-fun m!7551492 () Bool)

(assert (=> b!6805269 m!7551492))

(assert (=> b!6804880 d!2138520))

(declare-fun d!2138522 () Bool)

(declare-fun choose!50742 (Int) Bool)

(assert (=> d!2138522 (= (Exists!3693 lambda!383995) (choose!50742 lambda!383995))))

(declare-fun bs!1814070 () Bool)

(assert (= bs!1814070 d!2138522))

(declare-fun m!7551494 () Bool)

(assert (=> bs!1814070 m!7551494))

(assert (=> b!6804861 d!2138522))

(declare-fun d!2138524 () Bool)

(assert (=> d!2138524 (= (isDefined!13215 (findConcatSeparation!2926 (reg!16954 r!7292) r!7292 Nil!66050 s!2326 s!2326)) (not (isEmpty!38435 (findConcatSeparation!2926 (reg!16954 r!7292) r!7292 Nil!66050 s!2326 s!2326))))))

(declare-fun bs!1814071 () Bool)

(assert (= bs!1814071 d!2138524))

(assert (=> bs!1814071 m!7551120))

(declare-fun m!7551496 () Bool)

(assert (=> bs!1814071 m!7551496))

(assert (=> b!6804861 d!2138524))

(declare-fun bs!1814074 () Bool)

(declare-fun d!2138526 () Bool)

(assert (= bs!1814074 (and d!2138526 b!6805137)))

(declare-fun lambda!384030 () Int)

(assert (=> bs!1814074 (not (= lambda!384030 lambda!384018))))

(declare-fun bs!1814075 () Bool)

(assert (= bs!1814075 (and d!2138526 b!6804861)))

(assert (=> bs!1814075 (not (= lambda!384030 lambda!383996))))

(assert (=> bs!1814075 (not (= lambda!384030 lambda!383995))))

(assert (=> bs!1814075 (= (= (Star!16625 (reg!16954 r!7292)) r!7292) (= lambda!384030 lambda!383994))))

(declare-fun bs!1814076 () Bool)

(assert (= bs!1814076 (and d!2138526 b!6804939)))

(assert (=> bs!1814076 (not (= lambda!384030 lambda!384005))))

(declare-fun bs!1814078 () Bool)

(assert (= bs!1814078 (and d!2138526 b!6805143)))

(assert (=> bs!1814078 (not (= lambda!384030 lambda!384019))))

(declare-fun bs!1814079 () Bool)

(assert (= bs!1814079 (and d!2138526 b!6804933)))

(assert (=> bs!1814079 (not (= lambda!384030 lambda!384004))))

(assert (=> d!2138526 true))

(assert (=> d!2138526 true))

(declare-fun lambda!384031 () Int)

(assert (=> bs!1814074 (= (= (Star!16625 (reg!16954 r!7292)) r!7292) (= lambda!384031 lambda!384018))))

(declare-fun bs!1814081 () Bool)

(assert (= bs!1814081 d!2138526))

(assert (=> bs!1814081 (not (= lambda!384031 lambda!384030))))

(assert (=> bs!1814075 (not (= lambda!384031 lambda!383996))))

(assert (=> bs!1814075 (= (= (Star!16625 (reg!16954 r!7292)) r!7292) (= lambda!384031 lambda!383995))))

(assert (=> bs!1814075 (not (= lambda!384031 lambda!383994))))

(assert (=> bs!1814076 (not (= lambda!384031 lambda!384005))))

(assert (=> bs!1814078 (not (= lambda!384031 lambda!384019))))

(assert (=> bs!1814079 (= (and (= (reg!16954 r!7292) (reg!16954 lt!2448871)) (= (Star!16625 (reg!16954 r!7292)) lt!2448871)) (= lambda!384031 lambda!384004))))

(assert (=> d!2138526 true))

(assert (=> d!2138526 true))

(assert (=> d!2138526 (= (Exists!3693 lambda!384030) (Exists!3693 lambda!384031))))

(declare-fun lt!2448952 () Unit!159941)

(declare-fun choose!50743 (Regex!16625 List!66174) Unit!159941)

(assert (=> d!2138526 (= lt!2448952 (choose!50743 (reg!16954 r!7292) s!2326))))

(assert (=> d!2138526 (validRegex!8361 (reg!16954 r!7292))))

(assert (=> d!2138526 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!784 (reg!16954 r!7292) s!2326) lt!2448952)))

(declare-fun m!7551550 () Bool)

(assert (=> bs!1814081 m!7551550))

(declare-fun m!7551552 () Bool)

(assert (=> bs!1814081 m!7551552))

(declare-fun m!7551554 () Bool)

(assert (=> bs!1814081 m!7551554))

(declare-fun m!7551556 () Bool)

(assert (=> bs!1814081 m!7551556))

(assert (=> b!6804861 d!2138526))

(declare-fun d!2138546 () Bool)

(assert (=> d!2138546 (= (isEmpty!38433 s!2326) ((_ is Nil!66050) s!2326))))

(assert (=> b!6804861 d!2138546))

(declare-fun d!2138548 () Bool)

(assert (=> d!2138548 (= (Exists!3693 lambda!383996) (choose!50742 lambda!383996))))

(declare-fun bs!1814082 () Bool)

(assert (= bs!1814082 d!2138548))

(declare-fun m!7551558 () Bool)

(assert (=> bs!1814082 m!7551558))

(assert (=> b!6804861 d!2138548))

(declare-fun bs!1814083 () Bool)

(declare-fun d!2138550 () Bool)

(assert (= bs!1814083 (and d!2138550 b!6805137)))

(declare-fun lambda!384036 () Int)

(assert (=> bs!1814083 (not (= lambda!384036 lambda!384018))))

(declare-fun bs!1814084 () Bool)

(assert (= bs!1814084 (and d!2138550 d!2138526)))

(assert (=> bs!1814084 (= (= r!7292 (Star!16625 (reg!16954 r!7292))) (= lambda!384036 lambda!384030))))

(assert (=> bs!1814084 (not (= lambda!384036 lambda!384031))))

(declare-fun bs!1814085 () Bool)

(assert (= bs!1814085 (and d!2138550 b!6804861)))

(assert (=> bs!1814085 (not (= lambda!384036 lambda!383996))))

(assert (=> bs!1814085 (not (= lambda!384036 lambda!383995))))

(assert (=> bs!1814085 (= lambda!384036 lambda!383994)))

(declare-fun bs!1814086 () Bool)

(assert (= bs!1814086 (and d!2138550 b!6804939)))

(assert (=> bs!1814086 (not (= lambda!384036 lambda!384005))))

(declare-fun bs!1814087 () Bool)

(assert (= bs!1814087 (and d!2138550 b!6805143)))

(assert (=> bs!1814087 (not (= lambda!384036 lambda!384019))))

(declare-fun bs!1814088 () Bool)

(assert (= bs!1814088 (and d!2138550 b!6804933)))

(assert (=> bs!1814088 (not (= lambda!384036 lambda!384004))))

(assert (=> d!2138550 true))

(assert (=> d!2138550 true))

(assert (=> d!2138550 true))

(declare-fun lambda!384037 () Int)

(assert (=> bs!1814083 (not (= lambda!384037 lambda!384018))))

(assert (=> bs!1814084 (not (= lambda!384037 lambda!384030))))

(assert (=> bs!1814084 (not (= lambda!384037 lambda!384031))))

(declare-fun bs!1814089 () Bool)

(assert (= bs!1814089 d!2138550))

(assert (=> bs!1814089 (not (= lambda!384037 lambda!384036))))

(assert (=> bs!1814085 (= lambda!384037 lambda!383996)))

(assert (=> bs!1814085 (not (= lambda!384037 lambda!383995))))

(assert (=> bs!1814085 (not (= lambda!384037 lambda!383994))))

(assert (=> bs!1814086 (= (and (= (reg!16954 r!7292) (regOne!33762 lt!2448871)) (= r!7292 (regTwo!33762 lt!2448871))) (= lambda!384037 lambda!384005))))

(assert (=> bs!1814087 (= (and (= (reg!16954 r!7292) (regOne!33762 r!7292)) (= r!7292 (regTwo!33762 r!7292))) (= lambda!384037 lambda!384019))))

(assert (=> bs!1814088 (not (= lambda!384037 lambda!384004))))

(assert (=> d!2138550 true))

(assert (=> d!2138550 true))

(assert (=> d!2138550 true))

(assert (=> d!2138550 (= (Exists!3693 lambda!384036) (Exists!3693 lambda!384037))))

(declare-fun lt!2448956 () Unit!159941)

(declare-fun choose!50744 (Regex!16625 Regex!16625 List!66174) Unit!159941)

(assert (=> d!2138550 (= lt!2448956 (choose!50744 (reg!16954 r!7292) r!7292 s!2326))))

(assert (=> d!2138550 (validRegex!8361 (reg!16954 r!7292))))

(assert (=> d!2138550 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2220 (reg!16954 r!7292) r!7292 s!2326) lt!2448956)))

(declare-fun m!7551560 () Bool)

(assert (=> bs!1814089 m!7551560))

(declare-fun m!7551562 () Bool)

(assert (=> bs!1814089 m!7551562))

(declare-fun m!7551564 () Bool)

(assert (=> bs!1814089 m!7551564))

(assert (=> bs!1814089 m!7551556))

(assert (=> b!6804861 d!2138550))

(declare-fun d!2138552 () Bool)

(assert (=> d!2138552 (= (Exists!3693 lambda!383994) (choose!50742 lambda!383994))))

(declare-fun bs!1814090 () Bool)

(assert (= bs!1814090 d!2138552))

(declare-fun m!7551566 () Bool)

(assert (=> bs!1814090 m!7551566))

(assert (=> b!6804861 d!2138552))

(declare-fun b!6805357 () Bool)

(declare-fun lt!2448965 () Unit!159941)

(declare-fun lt!2448963 () Unit!159941)

(assert (=> b!6805357 (= lt!2448965 lt!2448963)))

(assert (=> b!6805357 (= (++!14797 (++!14797 Nil!66050 (Cons!66050 (h!72498 s!2326) Nil!66050)) (t!379907 s!2326)) s!2326)))

(assert (=> b!6805357 (= lt!2448963 (lemmaMoveElementToOtherListKeepsConcatEq!2745 Nil!66050 (h!72498 s!2326) (t!379907 s!2326) s!2326))))

(declare-fun e!4106748 () Option!16512)

(assert (=> b!6805357 (= e!4106748 (findConcatSeparation!2926 (reg!16954 r!7292) r!7292 (++!14797 Nil!66050 (Cons!66050 (h!72498 s!2326) Nil!66050)) (t!379907 s!2326) s!2326))))

(declare-fun b!6805358 () Bool)

(declare-fun res!2780956 () Bool)

(declare-fun e!4106745 () Bool)

(assert (=> b!6805358 (=> (not res!2780956) (not e!4106745))))

(declare-fun lt!2448964 () Option!16512)

(assert (=> b!6805358 (= res!2780956 (matchR!8808 r!7292 (_2!36903 (get!23007 lt!2448964))))))

(declare-fun b!6805359 () Bool)

(assert (=> b!6805359 (= e!4106748 None!16511)))

(declare-fun b!6805360 () Bool)

(declare-fun res!2780958 () Bool)

(assert (=> b!6805360 (=> (not res!2780958) (not e!4106745))))

(assert (=> b!6805360 (= res!2780958 (matchR!8808 (reg!16954 r!7292) (_1!36903 (get!23007 lt!2448964))))))

(declare-fun b!6805361 () Bool)

(declare-fun e!4106747 () Option!16512)

(assert (=> b!6805361 (= e!4106747 (Some!16511 (tuple2!67201 Nil!66050 s!2326)))))

(declare-fun b!6805362 () Bool)

(assert (=> b!6805362 (= e!4106745 (= (++!14797 (_1!36903 (get!23007 lt!2448964)) (_2!36903 (get!23007 lt!2448964))) s!2326))))

(declare-fun b!6805364 () Bool)

(declare-fun e!4106744 () Bool)

(assert (=> b!6805364 (= e!4106744 (matchR!8808 r!7292 s!2326))))

(declare-fun b!6805365 () Bool)

(declare-fun e!4106746 () Bool)

(assert (=> b!6805365 (= e!4106746 (not (isDefined!13215 lt!2448964)))))

(declare-fun d!2138554 () Bool)

(assert (=> d!2138554 e!4106746))

(declare-fun res!2780959 () Bool)

(assert (=> d!2138554 (=> res!2780959 e!4106746)))

(assert (=> d!2138554 (= res!2780959 e!4106745)))

(declare-fun res!2780960 () Bool)

(assert (=> d!2138554 (=> (not res!2780960) (not e!4106745))))

(assert (=> d!2138554 (= res!2780960 (isDefined!13215 lt!2448964))))

(assert (=> d!2138554 (= lt!2448964 e!4106747)))

(declare-fun c!1265690 () Bool)

(assert (=> d!2138554 (= c!1265690 e!4106744)))

(declare-fun res!2780957 () Bool)

(assert (=> d!2138554 (=> (not res!2780957) (not e!4106744))))

(assert (=> d!2138554 (= res!2780957 (matchR!8808 (reg!16954 r!7292) Nil!66050))))

(assert (=> d!2138554 (validRegex!8361 (reg!16954 r!7292))))

(assert (=> d!2138554 (= (findConcatSeparation!2926 (reg!16954 r!7292) r!7292 Nil!66050 s!2326 s!2326) lt!2448964)))

(declare-fun b!6805363 () Bool)

(assert (=> b!6805363 (= e!4106747 e!4106748)))

(declare-fun c!1265691 () Bool)

(assert (=> b!6805363 (= c!1265691 ((_ is Nil!66050) s!2326))))

(assert (= (and d!2138554 res!2780957) b!6805364))

(assert (= (and d!2138554 c!1265690) b!6805361))

(assert (= (and d!2138554 (not c!1265690)) b!6805363))

(assert (= (and b!6805363 c!1265691) b!6805359))

(assert (= (and b!6805363 (not c!1265691)) b!6805357))

(assert (= (and d!2138554 res!2780960) b!6805360))

(assert (= (and b!6805360 res!2780958) b!6805358))

(assert (= (and b!6805358 res!2780956) b!6805362))

(assert (= (and d!2138554 (not res!2780959)) b!6805365))

(declare-fun m!7551568 () Bool)

(assert (=> b!6805365 m!7551568))

(assert (=> b!6805357 m!7551298))

(assert (=> b!6805357 m!7551298))

(assert (=> b!6805357 m!7551300))

(assert (=> b!6805357 m!7551302))

(assert (=> b!6805357 m!7551298))

(declare-fun m!7551570 () Bool)

(assert (=> b!6805357 m!7551570))

(declare-fun m!7551572 () Bool)

(assert (=> b!6805358 m!7551572))

(declare-fun m!7551574 () Bool)

(assert (=> b!6805358 m!7551574))

(assert (=> d!2138554 m!7551568))

(declare-fun m!7551576 () Bool)

(assert (=> d!2138554 m!7551576))

(assert (=> d!2138554 m!7551556))

(assert (=> b!6805362 m!7551572))

(declare-fun m!7551578 () Bool)

(assert (=> b!6805362 m!7551578))

(assert (=> b!6805360 m!7551572))

(declare-fun m!7551580 () Bool)

(assert (=> b!6805360 m!7551580))

(assert (=> b!6805364 m!7551086))

(assert (=> b!6804861 d!2138554))

(declare-fun bs!1814091 () Bool)

(declare-fun d!2138556 () Bool)

(assert (= bs!1814091 (and d!2138556 b!6805137)))

(declare-fun lambda!384040 () Int)

(assert (=> bs!1814091 (not (= lambda!384040 lambda!384018))))

(declare-fun bs!1814092 () Bool)

(assert (= bs!1814092 (and d!2138556 d!2138526)))

(assert (=> bs!1814092 (= (= r!7292 (Star!16625 (reg!16954 r!7292))) (= lambda!384040 lambda!384030))))

(declare-fun bs!1814093 () Bool)

(assert (= bs!1814093 (and d!2138556 d!2138550)))

(assert (=> bs!1814093 (not (= lambda!384040 lambda!384037))))

(assert (=> bs!1814092 (not (= lambda!384040 lambda!384031))))

(assert (=> bs!1814093 (= lambda!384040 lambda!384036)))

(declare-fun bs!1814094 () Bool)

(assert (= bs!1814094 (and d!2138556 b!6804861)))

(assert (=> bs!1814094 (not (= lambda!384040 lambda!383996))))

(assert (=> bs!1814094 (not (= lambda!384040 lambda!383995))))

(assert (=> bs!1814094 (= lambda!384040 lambda!383994)))

(declare-fun bs!1814095 () Bool)

(assert (= bs!1814095 (and d!2138556 b!6804939)))

(assert (=> bs!1814095 (not (= lambda!384040 lambda!384005))))

(declare-fun bs!1814096 () Bool)

(assert (= bs!1814096 (and d!2138556 b!6805143)))

(assert (=> bs!1814096 (not (= lambda!384040 lambda!384019))))

(declare-fun bs!1814097 () Bool)

(assert (= bs!1814097 (and d!2138556 b!6804933)))

(assert (=> bs!1814097 (not (= lambda!384040 lambda!384004))))

(assert (=> d!2138556 true))

(assert (=> d!2138556 true))

(assert (=> d!2138556 true))

(assert (=> d!2138556 (= (isDefined!13215 (findConcatSeparation!2926 (reg!16954 r!7292) r!7292 Nil!66050 s!2326 s!2326)) (Exists!3693 lambda!384040))))

(declare-fun lt!2448968 () Unit!159941)

(declare-fun choose!50745 (Regex!16625 Regex!16625 List!66174) Unit!159941)

(assert (=> d!2138556 (= lt!2448968 (choose!50745 (reg!16954 r!7292) r!7292 s!2326))))

(assert (=> d!2138556 (validRegex!8361 (reg!16954 r!7292))))

(assert (=> d!2138556 (= (lemmaFindConcatSeparationEquivalentToExists!2690 (reg!16954 r!7292) r!7292 s!2326) lt!2448968)))

(declare-fun bs!1814098 () Bool)

(assert (= bs!1814098 d!2138556))

(assert (=> bs!1814098 m!7551120))

(assert (=> bs!1814098 m!7551556))

(assert (=> bs!1814098 m!7551120))

(assert (=> bs!1814098 m!7551122))

(declare-fun m!7551582 () Bool)

(assert (=> bs!1814098 m!7551582))

(declare-fun m!7551584 () Bool)

(assert (=> bs!1814098 m!7551584))

(assert (=> b!6804861 d!2138556))

(declare-fun d!2138558 () Bool)

(assert (=> d!2138558 (= (isEmpty!38434 (t!379909 zl!343)) ((_ is Nil!66052) (t!379909 zl!343)))))

(assert (=> b!6804883 d!2138558))

(declare-fun d!2138560 () Bool)

(declare-fun c!1265700 () Bool)

(assert (=> d!2138560 (= c!1265700 (isEmpty!38433 (_2!36903 lt!2448877)))))

(declare-fun e!4106765 () Bool)

(assert (=> d!2138560 (= (matchZipper!2611 lt!2448850 (_2!36903 lt!2448877)) e!4106765)))

(declare-fun b!6805392 () Bool)

(assert (=> b!6805392 (= e!4106765 (nullableZipper!2331 lt!2448850))))

(declare-fun b!6805393 () Bool)

(assert (=> b!6805393 (= e!4106765 (matchZipper!2611 (derivationStepZipper!2569 lt!2448850 (head!13659 (_2!36903 lt!2448877))) (tail!12744 (_2!36903 lt!2448877))))))

(assert (= (and d!2138560 c!1265700) b!6805392))

(assert (= (and d!2138560 (not c!1265700)) b!6805393))

(declare-fun m!7551586 () Bool)

(assert (=> d!2138560 m!7551586))

(declare-fun m!7551588 () Bool)

(assert (=> b!6805392 m!7551588))

(declare-fun m!7551590 () Bool)

(assert (=> b!6805393 m!7551590))

(assert (=> b!6805393 m!7551590))

(declare-fun m!7551592 () Bool)

(assert (=> b!6805393 m!7551592))

(declare-fun m!7551594 () Bool)

(assert (=> b!6805393 m!7551594))

(assert (=> b!6805393 m!7551592))

(assert (=> b!6805393 m!7551594))

(declare-fun m!7551596 () Bool)

(assert (=> b!6805393 m!7551596))

(assert (=> b!6804882 d!2138560))

(declare-fun d!2138562 () Bool)

(declare-fun dynLambda!26383 (Int Context!12018) Context!12018)

(assert (=> d!2138562 (= (map!15098 lt!2448849 lambda!383998) (store ((as const (Array Context!12018 Bool)) false) (dynLambda!26383 lambda!383998 lt!2448847) true))))

(declare-fun lt!2448971 () Unit!159941)

(declare-fun choose!50746 ((InoxSet Context!12018) Context!12018 Int) Unit!159941)

(assert (=> d!2138562 (= lt!2448971 (choose!50746 lt!2448849 lt!2448847 lambda!383998))))

(assert (=> d!2138562 (= lt!2448849 (store ((as const (Array Context!12018 Bool)) false) lt!2448847 true))))

(assert (=> d!2138562 (= (lemmaMapOnSingletonSet!260 lt!2448849 lt!2448847 lambda!383998) lt!2448971)))

(declare-fun b_lambda!256561 () Bool)

(assert (=> (not b_lambda!256561) (not d!2138562)))

(declare-fun bs!1814099 () Bool)

(assert (= bs!1814099 d!2138562))

(assert (=> bs!1814099 m!7551172))

(declare-fun m!7551598 () Bool)

(assert (=> bs!1814099 m!7551598))

(assert (=> bs!1814099 m!7551072))

(declare-fun m!7551600 () Bool)

(assert (=> bs!1814099 m!7551600))

(assert (=> bs!1814099 m!7551600))

(declare-fun m!7551602 () Bool)

(assert (=> bs!1814099 m!7551602))

(assert (=> b!6804863 d!2138562))

(declare-fun d!2138564 () Bool)

(declare-fun choose!50747 ((InoxSet Context!12018) Int) (InoxSet Context!12018))

(assert (=> d!2138564 (= (map!15098 lt!2448849 lambda!383998) (choose!50747 lt!2448849 lambda!383998))))

(declare-fun bs!1814100 () Bool)

(assert (= bs!1814100 d!2138564))

(declare-fun m!7551604 () Bool)

(assert (=> bs!1814100 m!7551604))

(assert (=> b!6804863 d!2138564))

(declare-fun d!2138566 () Bool)

(assert (=> d!2138566 (forall!15817 (++!14796 lt!2448875 lt!2448874) lambda!383999)))

(declare-fun lt!2448974 () Unit!159941)

(declare-fun choose!50748 (List!66175 List!66175 Int) Unit!159941)

(assert (=> d!2138566 (= lt!2448974 (choose!50748 lt!2448875 lt!2448874 lambda!383999))))

(assert (=> d!2138566 (forall!15817 lt!2448875 lambda!383999)))

(assert (=> d!2138566 (= (lemmaConcatPreservesForall!454 lt!2448875 lt!2448874 lambda!383999) lt!2448974)))

(declare-fun bs!1814101 () Bool)

(assert (= bs!1814101 d!2138566))

(assert (=> bs!1814101 m!7551070))

(assert (=> bs!1814101 m!7551070))

(declare-fun m!7551606 () Bool)

(assert (=> bs!1814101 m!7551606))

(declare-fun m!7551608 () Bool)

(assert (=> bs!1814101 m!7551608))

(declare-fun m!7551610 () Bool)

(assert (=> bs!1814101 m!7551610))

(assert (=> b!6804863 d!2138566))

(declare-fun bs!1814105 () Bool)

(declare-fun d!2138568 () Bool)

(assert (= bs!1814105 (and d!2138568 b!6804863)))

(declare-fun lambda!384051 () Int)

(assert (=> bs!1814105 (= (= (exprs!6509 lt!2448866) lt!2448874) (= lambda!384051 lambda!383998))))

(assert (=> d!2138568 true))

(assert (=> d!2138568 (= (appendTo!230 lt!2448849 lt!2448866) (map!15098 lt!2448849 lambda!384051))))

(declare-fun bs!1814106 () Bool)

(assert (= bs!1814106 d!2138568))

(declare-fun m!7551618 () Bool)

(assert (=> bs!1814106 m!7551618))

(assert (=> b!6804863 d!2138568))

(declare-fun e!4106782 () Bool)

(declare-fun b!6805428 () Bool)

(declare-fun lt!2448979 () List!66175)

(assert (=> b!6805428 (= e!4106782 (or (not (= lt!2448874 Nil!66051)) (= lt!2448979 lt!2448875)))))

(declare-fun d!2138572 () Bool)

(assert (=> d!2138572 e!4106782))

(declare-fun res!2780988 () Bool)

(assert (=> d!2138572 (=> (not res!2780988) (not e!4106782))))

(declare-fun content!12911 (List!66175) (InoxSet Regex!16625))

(assert (=> d!2138572 (= res!2780988 (= (content!12911 lt!2448979) ((_ map or) (content!12911 lt!2448875) (content!12911 lt!2448874))))))

(declare-fun e!4106781 () List!66175)

(assert (=> d!2138572 (= lt!2448979 e!4106781)))

(declare-fun c!1265708 () Bool)

(assert (=> d!2138572 (= c!1265708 ((_ is Nil!66051) lt!2448875))))

(assert (=> d!2138572 (= (++!14796 lt!2448875 lt!2448874) lt!2448979)))

(declare-fun b!6805427 () Bool)

(declare-fun res!2780989 () Bool)

(assert (=> b!6805427 (=> (not res!2780989) (not e!4106782))))

(declare-fun size!40674 (List!66175) Int)

(assert (=> b!6805427 (= res!2780989 (= (size!40674 lt!2448979) (+ (size!40674 lt!2448875) (size!40674 lt!2448874))))))

(declare-fun b!6805425 () Bool)

(assert (=> b!6805425 (= e!4106781 lt!2448874)))

(declare-fun b!6805426 () Bool)

(assert (=> b!6805426 (= e!4106781 (Cons!66051 (h!72499 lt!2448875) (++!14796 (t!379908 lt!2448875) lt!2448874)))))

(assert (= (and d!2138572 c!1265708) b!6805425))

(assert (= (and d!2138572 (not c!1265708)) b!6805426))

(assert (= (and d!2138572 res!2780988) b!6805427))

(assert (= (and b!6805427 res!2780989) b!6805428))

(declare-fun m!7551620 () Bool)

(assert (=> d!2138572 m!7551620))

(declare-fun m!7551622 () Bool)

(assert (=> d!2138572 m!7551622))

(declare-fun m!7551624 () Bool)

(assert (=> d!2138572 m!7551624))

(declare-fun m!7551626 () Bool)

(assert (=> b!6805427 m!7551626))

(declare-fun m!7551628 () Bool)

(assert (=> b!6805427 m!7551628))

(declare-fun m!7551630 () Bool)

(assert (=> b!6805427 m!7551630))

(declare-fun m!7551632 () Bool)

(assert (=> b!6805426 m!7551632))

(assert (=> b!6804863 d!2138572))

(declare-fun d!2138574 () Bool)

(declare-fun c!1265711 () Bool)

(assert (=> d!2138574 (= c!1265711 (isEmpty!38433 s!2326))))

(declare-fun e!4106785 () Bool)

(assert (=> d!2138574 (= (matchZipper!2611 lt!2448848 s!2326) e!4106785)))

(declare-fun b!6805433 () Bool)

(assert (=> b!6805433 (= e!4106785 (nullableZipper!2331 lt!2448848))))

(declare-fun b!6805434 () Bool)

(assert (=> b!6805434 (= e!4106785 (matchZipper!2611 (derivationStepZipper!2569 lt!2448848 (head!13659 s!2326)) (tail!12744 s!2326)))))

(assert (= (and d!2138574 c!1265711) b!6805433))

(assert (= (and d!2138574 (not c!1265711)) b!6805434))

(assert (=> d!2138574 m!7551108))

(declare-fun m!7551634 () Bool)

(assert (=> b!6805433 m!7551634))

(assert (=> b!6805434 m!7551208))

(assert (=> b!6805434 m!7551208))

(declare-fun m!7551636 () Bool)

(assert (=> b!6805434 m!7551636))

(assert (=> b!6805434 m!7551210))

(assert (=> b!6805434 m!7551636))

(assert (=> b!6805434 m!7551210))

(declare-fun m!7551638 () Bool)

(assert (=> b!6805434 m!7551638))

(assert (=> b!6804886 d!2138574))

(declare-fun d!2138576 () Bool)

(declare-fun c!1265716 () Bool)

(assert (=> d!2138576 (= c!1265716 (isEmpty!38433 (t!379907 s!2326)))))

(declare-fun e!4106792 () Bool)

(assert (=> d!2138576 (= (matchZipper!2611 (derivationStepZipper!2569 lt!2448848 (h!72498 s!2326)) (t!379907 s!2326)) e!4106792)))

(declare-fun b!6805445 () Bool)

(assert (=> b!6805445 (= e!4106792 (nullableZipper!2331 (derivationStepZipper!2569 lt!2448848 (h!72498 s!2326))))))

(declare-fun b!6805446 () Bool)

(assert (=> b!6805446 (= e!4106792 (matchZipper!2611 (derivationStepZipper!2569 (derivationStepZipper!2569 lt!2448848 (h!72498 s!2326)) (head!13659 (t!379907 s!2326))) (tail!12744 (t!379907 s!2326))))))

(assert (= (and d!2138576 c!1265716) b!6805445))

(assert (= (and d!2138576 (not c!1265716)) b!6805446))

(declare-fun m!7551640 () Bool)

(assert (=> d!2138576 m!7551640))

(assert (=> b!6805445 m!7551196))

(declare-fun m!7551642 () Bool)

(assert (=> b!6805445 m!7551642))

(declare-fun m!7551644 () Bool)

(assert (=> b!6805446 m!7551644))

(assert (=> b!6805446 m!7551196))

(assert (=> b!6805446 m!7551644))

(declare-fun m!7551646 () Bool)

(assert (=> b!6805446 m!7551646))

(declare-fun m!7551648 () Bool)

(assert (=> b!6805446 m!7551648))

(assert (=> b!6805446 m!7551646))

(assert (=> b!6805446 m!7551648))

(declare-fun m!7551650 () Bool)

(assert (=> b!6805446 m!7551650))

(assert (=> b!6804886 d!2138576))

(declare-fun bs!1814107 () Bool)

(declare-fun d!2138578 () Bool)

(assert (= bs!1814107 (and d!2138578 b!6804871)))

(declare-fun lambda!384052 () Int)

(assert (=> bs!1814107 (= lambda!384052 lambda!383997)))

(declare-fun bs!1814108 () Bool)

(assert (= bs!1814108 (and d!2138578 d!2138454)))

(assert (=> bs!1814108 (= lambda!384052 lambda!384008)))

(assert (=> d!2138578 true))

(assert (=> d!2138578 (= (derivationStepZipper!2569 lt!2448848 (h!72498 s!2326)) (flatMap!2106 lt!2448848 lambda!384052))))

(declare-fun bs!1814109 () Bool)

(assert (= bs!1814109 d!2138578))

(declare-fun m!7551652 () Bool)

(assert (=> bs!1814109 m!7551652))

(assert (=> b!6804886 d!2138578))

(declare-fun d!2138580 () Bool)

(declare-fun c!1265717 () Bool)

(assert (=> d!2138580 (= c!1265717 (isEmpty!38433 (_1!36903 lt!2448877)))))

(declare-fun e!4106799 () Bool)

(assert (=> d!2138580 (= (matchZipper!2611 lt!2448849 (_1!36903 lt!2448877)) e!4106799)))

(declare-fun b!6805461 () Bool)

(assert (=> b!6805461 (= e!4106799 (nullableZipper!2331 lt!2448849))))

(declare-fun b!6805462 () Bool)

(assert (=> b!6805462 (= e!4106799 (matchZipper!2611 (derivationStepZipper!2569 lt!2448849 (head!13659 (_1!36903 lt!2448877))) (tail!12744 (_1!36903 lt!2448877))))))

(assert (= (and d!2138580 c!1265717) b!6805461))

(assert (= (and d!2138580 (not c!1265717)) b!6805462))

(declare-fun m!7551654 () Bool)

(assert (=> d!2138580 m!7551654))

(declare-fun m!7551656 () Bool)

(assert (=> b!6805461 m!7551656))

(declare-fun m!7551658 () Bool)

(assert (=> b!6805462 m!7551658))

(assert (=> b!6805462 m!7551658))

(declare-fun m!7551660 () Bool)

(assert (=> b!6805462 m!7551660))

(declare-fun m!7551662 () Bool)

(assert (=> b!6805462 m!7551662))

(assert (=> b!6805462 m!7551660))

(assert (=> b!6805462 m!7551662))

(declare-fun m!7551664 () Bool)

(assert (=> b!6805462 m!7551664))

(assert (=> b!6804867 d!2138580))

(declare-fun call!618502 () List!66175)

(declare-fun bm!618493 () Bool)

(declare-fun c!1265735 () Bool)

(declare-fun call!618499 () (InoxSet Context!12018))

(declare-fun c!1265732 () Bool)

(declare-fun c!1265733 () Bool)

(assert (=> bm!618493 (= call!618499 (derivationStepZipperDown!1853 (ite c!1265735 (regOne!33763 r!7292) (ite c!1265732 (regTwo!33762 r!7292) (ite c!1265733 (regOne!33762 r!7292) (reg!16954 r!7292)))) (ite (or c!1265735 c!1265732) (Context!12019 Nil!66051) (Context!12019 call!618502)) (h!72498 s!2326)))))

(declare-fun b!6805499 () Bool)

(declare-fun e!4106820 () Bool)

(assert (=> b!6805499 (= e!4106820 (nullable!6603 (regOne!33762 r!7292)))))

(declare-fun b!6805501 () Bool)

(declare-fun e!4106824 () (InoxSet Context!12018))

(declare-fun call!618501 () (InoxSet Context!12018))

(assert (=> b!6805501 (= e!4106824 call!618501)))

(declare-fun b!6805502 () Bool)

(declare-fun e!4106823 () (InoxSet Context!12018))

(declare-fun e!4106822 () (InoxSet Context!12018))

(assert (=> b!6805502 (= e!4106823 e!4106822)))

(assert (=> b!6805502 (= c!1265735 ((_ is Union!16625) r!7292))))

(declare-fun b!6805503 () Bool)

(declare-fun e!4106819 () (InoxSet Context!12018))

(assert (=> b!6805503 (= e!4106819 call!618501)))

(declare-fun call!618500 () List!66175)

(declare-fun bm!618494 () Bool)

(declare-fun call!618498 () (InoxSet Context!12018))

(assert (=> bm!618494 (= call!618498 (derivationStepZipperDown!1853 (ite c!1265735 (regTwo!33763 r!7292) (regOne!33762 r!7292)) (ite c!1265735 (Context!12019 Nil!66051) (Context!12019 call!618500)) (h!72498 s!2326)))))

(declare-fun b!6805504 () Bool)

(assert (=> b!6805504 (= e!4106823 (store ((as const (Array Context!12018 Bool)) false) (Context!12019 Nil!66051) true))))

(declare-fun bm!618495 () Bool)

(declare-fun call!618503 () (InoxSet Context!12018))

(assert (=> bm!618495 (= call!618501 call!618503)))

(declare-fun bm!618496 () Bool)

(declare-fun $colon$colon!2434 (List!66175 Regex!16625) List!66175)

(assert (=> bm!618496 (= call!618500 ($colon$colon!2434 (exprs!6509 (Context!12019 Nil!66051)) (ite (or c!1265732 c!1265733) (regTwo!33762 r!7292) r!7292)))))

(declare-fun bm!618497 () Bool)

(assert (=> bm!618497 (= call!618503 call!618499)))

(declare-fun b!6805505 () Bool)

(declare-fun c!1265731 () Bool)

(assert (=> b!6805505 (= c!1265731 ((_ is Star!16625) r!7292))))

(assert (=> b!6805505 (= e!4106819 e!4106824)))

(declare-fun bm!618498 () Bool)

(assert (=> bm!618498 (= call!618502 call!618500)))

(declare-fun b!6805506 () Bool)

(assert (=> b!6805506 (= e!4106824 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6805507 () Bool)

(assert (=> b!6805507 (= c!1265732 e!4106820)))

(declare-fun res!2781016 () Bool)

(assert (=> b!6805507 (=> (not res!2781016) (not e!4106820))))

(assert (=> b!6805507 (= res!2781016 ((_ is Concat!25470) r!7292))))

(declare-fun e!4106821 () (InoxSet Context!12018))

(assert (=> b!6805507 (= e!4106822 e!4106821)))

(declare-fun d!2138582 () Bool)

(declare-fun c!1265734 () Bool)

(assert (=> d!2138582 (= c!1265734 (and ((_ is ElementMatch!16625) r!7292) (= (c!1265549 r!7292) (h!72498 s!2326))))))

(assert (=> d!2138582 (= (derivationStepZipperDown!1853 r!7292 (Context!12019 Nil!66051) (h!72498 s!2326)) e!4106823)))

(declare-fun b!6805500 () Bool)

(assert (=> b!6805500 (= e!4106822 ((_ map or) call!618499 call!618498))))

(declare-fun b!6805508 () Bool)

(assert (=> b!6805508 (= e!4106821 e!4106819)))

(assert (=> b!6805508 (= c!1265733 ((_ is Concat!25470) r!7292))))

(declare-fun b!6805509 () Bool)

(assert (=> b!6805509 (= e!4106821 ((_ map or) call!618498 call!618503))))

(assert (= (and d!2138582 c!1265734) b!6805504))

(assert (= (and d!2138582 (not c!1265734)) b!6805502))

(assert (= (and b!6805502 c!1265735) b!6805500))

(assert (= (and b!6805502 (not c!1265735)) b!6805507))

(assert (= (and b!6805507 res!2781016) b!6805499))

(assert (= (and b!6805507 c!1265732) b!6805509))

(assert (= (and b!6805507 (not c!1265732)) b!6805508))

(assert (= (and b!6805508 c!1265733) b!6805503))

(assert (= (and b!6805508 (not c!1265733)) b!6805505))

(assert (= (and b!6805505 c!1265731) b!6805501))

(assert (= (and b!6805505 (not c!1265731)) b!6805506))

(assert (= (or b!6805503 b!6805501) bm!618498))

(assert (= (or b!6805503 b!6805501) bm!618495))

(assert (= (or b!6805509 bm!618498) bm!618496))

(assert (= (or b!6805509 bm!618495) bm!618497))

(assert (= (or b!6805500 b!6805509) bm!618494))

(assert (= (or b!6805500 bm!618497) bm!618493))

(declare-fun m!7551678 () Bool)

(assert (=> b!6805499 m!7551678))

(declare-fun m!7551680 () Bool)

(assert (=> bm!618493 m!7551680))

(declare-fun m!7551682 () Bool)

(assert (=> bm!618496 m!7551682))

(declare-fun m!7551684 () Bool)

(assert (=> b!6805504 m!7551684))

(declare-fun m!7551686 () Bool)

(assert (=> bm!618494 m!7551686))

(assert (=> b!6804885 d!2138582))

(declare-fun call!618504 () (InoxSet Context!12018))

(declare-fun b!6805510 () Bool)

(declare-fun e!4106827 () (InoxSet Context!12018))

(assert (=> b!6805510 (= e!4106827 ((_ map or) call!618504 (derivationStepZipperUp!1779 (Context!12019 (t!379908 (exprs!6509 (Context!12019 (Cons!66051 r!7292 Nil!66051))))) (h!72498 s!2326))))))

(declare-fun d!2138592 () Bool)

(declare-fun c!1265736 () Bool)

(declare-fun e!4106826 () Bool)

(assert (=> d!2138592 (= c!1265736 e!4106826)))

(declare-fun res!2781017 () Bool)

(assert (=> d!2138592 (=> (not res!2781017) (not e!4106826))))

(assert (=> d!2138592 (= res!2781017 ((_ is Cons!66051) (exprs!6509 (Context!12019 (Cons!66051 r!7292 Nil!66051)))))))

(assert (=> d!2138592 (= (derivationStepZipperUp!1779 (Context!12019 (Cons!66051 r!7292 Nil!66051)) (h!72498 s!2326)) e!4106827)))

(declare-fun b!6805511 () Bool)

(assert (=> b!6805511 (= e!4106826 (nullable!6603 (h!72499 (exprs!6509 (Context!12019 (Cons!66051 r!7292 Nil!66051))))))))

(declare-fun b!6805512 () Bool)

(declare-fun e!4106825 () (InoxSet Context!12018))

(assert (=> b!6805512 (= e!4106827 e!4106825)))

(declare-fun c!1265737 () Bool)

(assert (=> b!6805512 (= c!1265737 ((_ is Cons!66051) (exprs!6509 (Context!12019 (Cons!66051 r!7292 Nil!66051)))))))

(declare-fun bm!618499 () Bool)

(assert (=> bm!618499 (= call!618504 (derivationStepZipperDown!1853 (h!72499 (exprs!6509 (Context!12019 (Cons!66051 r!7292 Nil!66051)))) (Context!12019 (t!379908 (exprs!6509 (Context!12019 (Cons!66051 r!7292 Nil!66051))))) (h!72498 s!2326)))))

(declare-fun b!6805513 () Bool)

(assert (=> b!6805513 (= e!4106825 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6805514 () Bool)

(assert (=> b!6805514 (= e!4106825 call!618504)))

(assert (= (and d!2138592 res!2781017) b!6805511))

(assert (= (and d!2138592 c!1265736) b!6805510))

(assert (= (and d!2138592 (not c!1265736)) b!6805512))

(assert (= (and b!6805512 c!1265737) b!6805514))

(assert (= (and b!6805512 (not c!1265737)) b!6805513))

(assert (= (or b!6805510 b!6805514) bm!618499))

(declare-fun m!7551688 () Bool)

(assert (=> b!6805510 m!7551688))

(declare-fun m!7551690 () Bool)

(assert (=> b!6805511 m!7551690))

(declare-fun m!7551692 () Bool)

(assert (=> bm!618499 m!7551692))

(assert (=> b!6804885 d!2138592))

(declare-fun bs!1814112 () Bool)

(declare-fun d!2138594 () Bool)

(assert (= bs!1814112 (and d!2138594 b!6804871)))

(declare-fun lambda!384053 () Int)

(assert (=> bs!1814112 (= lambda!384053 lambda!383997)))

(declare-fun bs!1814113 () Bool)

(assert (= bs!1814113 (and d!2138594 d!2138454)))

(assert (=> bs!1814113 (= lambda!384053 lambda!384008)))

(declare-fun bs!1814114 () Bool)

(assert (= bs!1814114 (and d!2138594 d!2138578)))

(assert (=> bs!1814114 (= lambda!384053 lambda!384052)))

(assert (=> d!2138594 true))

(assert (=> d!2138594 (= (derivationStepZipper!2569 z!1189 (h!72498 s!2326)) (flatMap!2106 z!1189 lambda!384053))))

(declare-fun bs!1814115 () Bool)

(assert (= bs!1814115 d!2138594))

(declare-fun m!7551694 () Bool)

(assert (=> bs!1814115 m!7551694))

(assert (=> b!6804885 d!2138594))

(declare-fun bs!1814116 () Bool)

(declare-fun d!2138596 () Bool)

(assert (= bs!1814116 (and d!2138596 b!6804863)))

(declare-fun lambda!384058 () Int)

(assert (=> bs!1814116 (= lambda!384058 lambda!383999)))

(declare-fun bs!1814117 () Bool)

(assert (= bs!1814117 (and d!2138596 d!2138516)))

(assert (=> bs!1814117 (= lambda!384058 lambda!384022)))

(declare-fun bs!1814118 () Bool)

(assert (= bs!1814118 (and d!2138596 d!2138520)))

(assert (=> bs!1814118 (= lambda!384058 lambda!384025)))

(assert (=> d!2138596 (= (inv!84809 (h!72500 zl!343)) (forall!15817 (exprs!6509 (h!72500 zl!343)) lambda!384058))))

(declare-fun bs!1814119 () Bool)

(assert (= bs!1814119 d!2138596))

(declare-fun m!7551696 () Bool)

(assert (=> bs!1814119 m!7551696))

(assert (=> b!6804888 d!2138596))

(declare-fun bs!1814120 () Bool)

(declare-fun d!2138598 () Bool)

(assert (= bs!1814120 (and d!2138598 b!6804863)))

(declare-fun lambda!384059 () Int)

(assert (=> bs!1814120 (= lambda!384059 lambda!383999)))

(declare-fun bs!1814121 () Bool)

(assert (= bs!1814121 (and d!2138598 d!2138516)))

(assert (=> bs!1814121 (= lambda!384059 lambda!384022)))

(declare-fun bs!1814122 () Bool)

(assert (= bs!1814122 (and d!2138598 d!2138520)))

(assert (=> bs!1814122 (= lambda!384059 lambda!384025)))

(declare-fun bs!1814123 () Bool)

(assert (= bs!1814123 (and d!2138598 d!2138596)))

(assert (=> bs!1814123 (= lambda!384059 lambda!384058)))

(assert (=> d!2138598 (= (inv!84809 setElem!46665) (forall!15817 (exprs!6509 setElem!46665) lambda!384059))))

(declare-fun bs!1814124 () Bool)

(assert (= bs!1814124 d!2138598))

(declare-fun m!7551698 () Bool)

(assert (=> bs!1814124 m!7551698))

(assert (=> setNonEmpty!46665 d!2138598))

(declare-fun bs!1814129 () Bool)

(declare-fun d!2138600 () Bool)

(assert (= bs!1814129 (and d!2138600 b!6804863)))

(declare-fun lambda!384066 () Int)

(assert (=> bs!1814129 (= lambda!384066 lambda!383999)))

(declare-fun bs!1814130 () Bool)

(assert (= bs!1814130 (and d!2138600 d!2138516)))

(assert (=> bs!1814130 (= lambda!384066 lambda!384022)))

(declare-fun bs!1814131 () Bool)

(assert (= bs!1814131 (and d!2138600 d!2138598)))

(assert (=> bs!1814131 (= lambda!384066 lambda!384059)))

(declare-fun bs!1814132 () Bool)

(assert (= bs!1814132 (and d!2138600 d!2138520)))

(assert (=> bs!1814132 (= lambda!384066 lambda!384025)))

(declare-fun bs!1814133 () Bool)

(assert (= bs!1814133 (and d!2138600 d!2138596)))

(assert (=> bs!1814133 (= lambda!384066 lambda!384058)))

(declare-fun b!6805543 () Bool)

(declare-fun e!4106844 () Bool)

(declare-fun lt!2448991 () Regex!16625)

(declare-fun isConcat!1505 (Regex!16625) Bool)

(assert (=> b!6805543 (= e!4106844 (isConcat!1505 lt!2448991))))

(declare-fun b!6805544 () Bool)

(declare-fun e!4106847 () Regex!16625)

(assert (=> b!6805544 (= e!4106847 (h!72499 (exprs!6509 (h!72500 zl!343))))))

(declare-fun b!6805545 () Bool)

(declare-fun e!4106848 () Bool)

(assert (=> b!6805545 (= e!4106848 (isEmpty!38438 (t!379908 (exprs!6509 (h!72500 zl!343)))))))

(declare-fun b!6805546 () Bool)

(declare-fun e!4106846 () Bool)

(declare-fun e!4106845 () Bool)

(assert (=> b!6805546 (= e!4106846 e!4106845)))

(declare-fun c!1265748 () Bool)

(assert (=> b!6805546 (= c!1265748 (isEmpty!38438 (exprs!6509 (h!72500 zl!343))))))

(declare-fun b!6805547 () Bool)

(assert (=> b!6805547 (= e!4106845 e!4106844)))

(declare-fun c!1265746 () Bool)

(assert (=> b!6805547 (= c!1265746 (isEmpty!38438 (tail!12747 (exprs!6509 (h!72500 zl!343)))))))

(declare-fun b!6805548 () Bool)

(assert (=> b!6805548 (= e!4106844 (= lt!2448991 (head!13662 (exprs!6509 (h!72500 zl!343)))))))

(assert (=> d!2138600 e!4106846))

(declare-fun res!2781030 () Bool)

(assert (=> d!2138600 (=> (not res!2781030) (not e!4106846))))

(assert (=> d!2138600 (= res!2781030 (validRegex!8361 lt!2448991))))

(assert (=> d!2138600 (= lt!2448991 e!4106847)))

(declare-fun c!1265747 () Bool)

(assert (=> d!2138600 (= c!1265747 e!4106848)))

(declare-fun res!2781031 () Bool)

(assert (=> d!2138600 (=> (not res!2781031) (not e!4106848))))

(assert (=> d!2138600 (= res!2781031 ((_ is Cons!66051) (exprs!6509 (h!72500 zl!343))))))

(assert (=> d!2138600 (forall!15817 (exprs!6509 (h!72500 zl!343)) lambda!384066)))

(assert (=> d!2138600 (= (generalisedConcat!2222 (exprs!6509 (h!72500 zl!343))) lt!2448991)))

(declare-fun b!6805549 () Bool)

(declare-fun isEmptyExpr!1982 (Regex!16625) Bool)

(assert (=> b!6805549 (= e!4106845 (isEmptyExpr!1982 lt!2448991))))

(declare-fun b!6805550 () Bool)

(declare-fun e!4106849 () Regex!16625)

(assert (=> b!6805550 (= e!4106847 e!4106849)))

(declare-fun c!1265749 () Bool)

(assert (=> b!6805550 (= c!1265749 ((_ is Cons!66051) (exprs!6509 (h!72500 zl!343))))))

(declare-fun b!6805551 () Bool)

(assert (=> b!6805551 (= e!4106849 (Concat!25470 (h!72499 (exprs!6509 (h!72500 zl!343))) (generalisedConcat!2222 (t!379908 (exprs!6509 (h!72500 zl!343))))))))

(declare-fun b!6805552 () Bool)

(assert (=> b!6805552 (= e!4106849 EmptyExpr!16625)))

(assert (= (and d!2138600 res!2781031) b!6805545))

(assert (= (and d!2138600 c!1265747) b!6805544))

(assert (= (and d!2138600 (not c!1265747)) b!6805550))

(assert (= (and b!6805550 c!1265749) b!6805551))

(assert (= (and b!6805550 (not c!1265749)) b!6805552))

(assert (= (and d!2138600 res!2781030) b!6805546))

(assert (= (and b!6805546 c!1265748) b!6805549))

(assert (= (and b!6805546 (not c!1265748)) b!6805547))

(assert (= (and b!6805547 c!1265746) b!6805548))

(assert (= (and b!6805547 (not c!1265746)) b!6805543))

(declare-fun m!7551708 () Bool)

(assert (=> b!6805546 m!7551708))

(declare-fun m!7551710 () Bool)

(assert (=> b!6805545 m!7551710))

(declare-fun m!7551712 () Bool)

(assert (=> d!2138600 m!7551712))

(declare-fun m!7551714 () Bool)

(assert (=> d!2138600 m!7551714))

(declare-fun m!7551716 () Bool)

(assert (=> b!6805548 m!7551716))

(declare-fun m!7551718 () Bool)

(assert (=> b!6805547 m!7551718))

(assert (=> b!6805547 m!7551718))

(declare-fun m!7551720 () Bool)

(assert (=> b!6805547 m!7551720))

(declare-fun m!7551722 () Bool)

(assert (=> b!6805543 m!7551722))

(declare-fun m!7551724 () Bool)

(assert (=> b!6805549 m!7551724))

(declare-fun m!7551726 () Bool)

(assert (=> b!6805551 m!7551726))

(assert (=> b!6804868 d!2138600))

(declare-fun bs!1814134 () Bool)

(declare-fun d!2138604 () Bool)

(assert (= bs!1814134 (and d!2138604 d!2138600)))

(declare-fun lambda!384067 () Int)

(assert (=> bs!1814134 (= lambda!384067 lambda!384066)))

(declare-fun bs!1814135 () Bool)

(assert (= bs!1814135 (and d!2138604 b!6804863)))

(assert (=> bs!1814135 (= lambda!384067 lambda!383999)))

(declare-fun bs!1814136 () Bool)

(assert (= bs!1814136 (and d!2138604 d!2138516)))

(assert (=> bs!1814136 (= lambda!384067 lambda!384022)))

(declare-fun bs!1814137 () Bool)

(assert (= bs!1814137 (and d!2138604 d!2138598)))

(assert (=> bs!1814137 (= lambda!384067 lambda!384059)))

(declare-fun bs!1814138 () Bool)

(assert (= bs!1814138 (and d!2138604 d!2138520)))

(assert (=> bs!1814138 (= lambda!384067 lambda!384025)))

(declare-fun bs!1814139 () Bool)

(assert (= bs!1814139 (and d!2138604 d!2138596)))

(assert (=> bs!1814139 (= lambda!384067 lambda!384058)))

(assert (=> d!2138604 (= (inv!84809 lt!2448847) (forall!15817 (exprs!6509 lt!2448847) lambda!384067))))

(declare-fun bs!1814140 () Bool)

(assert (= bs!1814140 d!2138604))

(declare-fun m!7551728 () Bool)

(assert (=> bs!1814140 m!7551728))

(assert (=> b!6804870 d!2138604))

(declare-fun d!2138606 () Bool)

(declare-fun c!1265750 () Bool)

(assert (=> d!2138606 (= c!1265750 (isEmpty!38433 lt!2448872))))

(declare-fun e!4106850 () Bool)

(assert (=> d!2138606 (= (matchZipper!2611 (store ((as const (Array Context!12018 Bool)) false) (Context!12019 (++!14796 lt!2448875 lt!2448874)) true) lt!2448872) e!4106850)))

(declare-fun b!6805553 () Bool)

(assert (=> b!6805553 (= e!4106850 (nullableZipper!2331 (store ((as const (Array Context!12018 Bool)) false) (Context!12019 (++!14796 lt!2448875 lt!2448874)) true)))))

(declare-fun b!6805554 () Bool)

(assert (=> b!6805554 (= e!4106850 (matchZipper!2611 (derivationStepZipper!2569 (store ((as const (Array Context!12018 Bool)) false) (Context!12019 (++!14796 lt!2448875 lt!2448874)) true) (head!13659 lt!2448872)) (tail!12744 lt!2448872)))))

(assert (= (and d!2138606 c!1265750) b!6805553))

(assert (= (and d!2138606 (not c!1265750)) b!6805554))

(declare-fun m!7551730 () Bool)

(assert (=> d!2138606 m!7551730))

(assert (=> b!6805553 m!7551078))

(declare-fun m!7551732 () Bool)

(assert (=> b!6805553 m!7551732))

(declare-fun m!7551734 () Bool)

(assert (=> b!6805554 m!7551734))

(assert (=> b!6805554 m!7551078))

(assert (=> b!6805554 m!7551734))

(declare-fun m!7551736 () Bool)

(assert (=> b!6805554 m!7551736))

(declare-fun m!7551738 () Bool)

(assert (=> b!6805554 m!7551738))

(assert (=> b!6805554 m!7551736))

(assert (=> b!6805554 m!7551738))

(declare-fun m!7551740 () Bool)

(assert (=> b!6805554 m!7551740))

(assert (=> b!6804870 d!2138606))

(assert (=> b!6804870 d!2138572))

(declare-fun bs!1814146 () Bool)

(declare-fun d!2138608 () Bool)

(assert (= bs!1814146 (and d!2138608 d!2138600)))

(declare-fun lambda!384076 () Int)

(assert (=> bs!1814146 (= lambda!384076 lambda!384066)))

(declare-fun bs!1814147 () Bool)

(assert (= bs!1814147 (and d!2138608 b!6804863)))

(assert (=> bs!1814147 (= lambda!384076 lambda!383999)))

(declare-fun bs!1814148 () Bool)

(assert (= bs!1814148 (and d!2138608 d!2138516)))

(assert (=> bs!1814148 (= lambda!384076 lambda!384022)))

(declare-fun bs!1814149 () Bool)

(assert (= bs!1814149 (and d!2138608 d!2138604)))

(assert (=> bs!1814149 (= lambda!384076 lambda!384067)))

(declare-fun bs!1814151 () Bool)

(assert (= bs!1814151 (and d!2138608 d!2138598)))

(assert (=> bs!1814151 (= lambda!384076 lambda!384059)))

(declare-fun bs!1814152 () Bool)

(assert (= bs!1814152 (and d!2138608 d!2138520)))

(assert (=> bs!1814152 (= lambda!384076 lambda!384025)))

(declare-fun bs!1814154 () Bool)

(assert (= bs!1814154 (and d!2138608 d!2138596)))

(assert (=> bs!1814154 (= lambda!384076 lambda!384058)))

(assert (=> d!2138608 (matchZipper!2611 (store ((as const (Array Context!12018 Bool)) false) (Context!12019 (++!14796 (exprs!6509 lt!2448847) (exprs!6509 lt!2448866))) true) (++!14797 (_1!36903 lt!2448877) (_2!36903 lt!2448877)))))

(declare-fun lt!2449000 () Unit!159941)

(assert (=> d!2138608 (= lt!2449000 (lemmaConcatPreservesForall!454 (exprs!6509 lt!2448847) (exprs!6509 lt!2448866) lambda!384076))))

(declare-fun lt!2448999 () Unit!159941)

(declare-fun choose!50756 (Context!12018 Context!12018 List!66174 List!66174) Unit!159941)

(assert (=> d!2138608 (= lt!2448999 (choose!50756 lt!2448847 lt!2448866 (_1!36903 lt!2448877) (_2!36903 lt!2448877)))))

(assert (=> d!2138608 (matchZipper!2611 (store ((as const (Array Context!12018 Bool)) false) lt!2448847 true) (_1!36903 lt!2448877))))

(assert (=> d!2138608 (= (lemmaConcatenateContextMatchesConcatOfStrings!248 lt!2448847 lt!2448866 (_1!36903 lt!2448877) (_2!36903 lt!2448877)) lt!2448999)))

(declare-fun bs!1814155 () Bool)

(assert (= bs!1814155 d!2138608))

(declare-fun m!7551752 () Bool)

(assert (=> bs!1814155 m!7551752))

(assert (=> bs!1814155 m!7551144))

(assert (=> bs!1814155 m!7551172))

(declare-fun m!7551754 () Bool)

(assert (=> bs!1814155 m!7551754))

(assert (=> bs!1814155 m!7551172))

(declare-fun m!7551756 () Bool)

(assert (=> bs!1814155 m!7551756))

(declare-fun m!7551758 () Bool)

(assert (=> bs!1814155 m!7551758))

(assert (=> bs!1814155 m!7551754))

(assert (=> bs!1814155 m!7551144))

(declare-fun m!7551760 () Bool)

(assert (=> bs!1814155 m!7551760))

(declare-fun m!7551762 () Bool)

(assert (=> bs!1814155 m!7551762))

(assert (=> b!6804870 d!2138608))

(assert (=> b!6804870 d!2138566))

(declare-fun call!618506 () (InoxSet Context!12018))

(declare-fun bm!618500 () Bool)

(declare-fun c!1265755 () Bool)

(declare-fun call!618509 () List!66175)

(declare-fun c!1265753 () Bool)

(declare-fun c!1265752 () Bool)

(assert (=> bm!618500 (= call!618506 (derivationStepZipperDown!1853 (ite c!1265755 (regOne!33763 (reg!16954 r!7292)) (ite c!1265752 (regTwo!33762 (reg!16954 r!7292)) (ite c!1265753 (regOne!33762 (reg!16954 r!7292)) (reg!16954 (reg!16954 r!7292))))) (ite (or c!1265755 c!1265752) lt!2448866 (Context!12019 call!618509)) (h!72498 s!2326)))))

(declare-fun b!6805565 () Bool)

(declare-fun e!4106856 () Bool)

(assert (=> b!6805565 (= e!4106856 (nullable!6603 (regOne!33762 (reg!16954 r!7292))))))

(declare-fun b!6805567 () Bool)

(declare-fun e!4106860 () (InoxSet Context!12018))

(declare-fun call!618508 () (InoxSet Context!12018))

(assert (=> b!6805567 (= e!4106860 call!618508)))

(declare-fun b!6805568 () Bool)

(declare-fun e!4106859 () (InoxSet Context!12018))

(declare-fun e!4106858 () (InoxSet Context!12018))

(assert (=> b!6805568 (= e!4106859 e!4106858)))

(assert (=> b!6805568 (= c!1265755 ((_ is Union!16625) (reg!16954 r!7292)))))

(declare-fun b!6805569 () Bool)

(declare-fun e!4106855 () (InoxSet Context!12018))

(assert (=> b!6805569 (= e!4106855 call!618508)))

(declare-fun bm!618501 () Bool)

(declare-fun call!618505 () (InoxSet Context!12018))

(declare-fun call!618507 () List!66175)

(assert (=> bm!618501 (= call!618505 (derivationStepZipperDown!1853 (ite c!1265755 (regTwo!33763 (reg!16954 r!7292)) (regOne!33762 (reg!16954 r!7292))) (ite c!1265755 lt!2448866 (Context!12019 call!618507)) (h!72498 s!2326)))))

(declare-fun b!6805570 () Bool)

(assert (=> b!6805570 (= e!4106859 (store ((as const (Array Context!12018 Bool)) false) lt!2448866 true))))

(declare-fun bm!618502 () Bool)

(declare-fun call!618510 () (InoxSet Context!12018))

(assert (=> bm!618502 (= call!618508 call!618510)))

(declare-fun bm!618503 () Bool)

(assert (=> bm!618503 (= call!618507 ($colon$colon!2434 (exprs!6509 lt!2448866) (ite (or c!1265752 c!1265753) (regTwo!33762 (reg!16954 r!7292)) (reg!16954 r!7292))))))

(declare-fun bm!618504 () Bool)

(assert (=> bm!618504 (= call!618510 call!618506)))

(declare-fun b!6805571 () Bool)

(declare-fun c!1265751 () Bool)

(assert (=> b!6805571 (= c!1265751 ((_ is Star!16625) (reg!16954 r!7292)))))

(assert (=> b!6805571 (= e!4106855 e!4106860)))

(declare-fun bm!618505 () Bool)

(assert (=> bm!618505 (= call!618509 call!618507)))

(declare-fun b!6805572 () Bool)

(assert (=> b!6805572 (= e!4106860 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6805573 () Bool)

(assert (=> b!6805573 (= c!1265752 e!4106856)))

(declare-fun res!2781042 () Bool)

(assert (=> b!6805573 (=> (not res!2781042) (not e!4106856))))

(assert (=> b!6805573 (= res!2781042 ((_ is Concat!25470) (reg!16954 r!7292)))))

(declare-fun e!4106857 () (InoxSet Context!12018))

(assert (=> b!6805573 (= e!4106858 e!4106857)))

(declare-fun d!2138618 () Bool)

(declare-fun c!1265754 () Bool)

(assert (=> d!2138618 (= c!1265754 (and ((_ is ElementMatch!16625) (reg!16954 r!7292)) (= (c!1265549 (reg!16954 r!7292)) (h!72498 s!2326))))))

(assert (=> d!2138618 (= (derivationStepZipperDown!1853 (reg!16954 r!7292) lt!2448866 (h!72498 s!2326)) e!4106859)))

(declare-fun b!6805566 () Bool)

(assert (=> b!6805566 (= e!4106858 ((_ map or) call!618506 call!618505))))

(declare-fun b!6805574 () Bool)

(assert (=> b!6805574 (= e!4106857 e!4106855)))

(assert (=> b!6805574 (= c!1265753 ((_ is Concat!25470) (reg!16954 r!7292)))))

(declare-fun b!6805575 () Bool)

(assert (=> b!6805575 (= e!4106857 ((_ map or) call!618505 call!618510))))

(assert (= (and d!2138618 c!1265754) b!6805570))

(assert (= (and d!2138618 (not c!1265754)) b!6805568))

(assert (= (and b!6805568 c!1265755) b!6805566))

(assert (= (and b!6805568 (not c!1265755)) b!6805573))

(assert (= (and b!6805573 res!2781042) b!6805565))

(assert (= (and b!6805573 c!1265752) b!6805575))

(assert (= (and b!6805573 (not c!1265752)) b!6805574))

(assert (= (and b!6805574 c!1265753) b!6805569))

(assert (= (and b!6805574 (not c!1265753)) b!6805571))

(assert (= (and b!6805571 c!1265751) b!6805567))

(assert (= (and b!6805571 (not c!1265751)) b!6805572))

(assert (= (or b!6805569 b!6805567) bm!618505))

(assert (= (or b!6805569 b!6805567) bm!618502))

(assert (= (or b!6805575 bm!618505) bm!618503))

(assert (= (or b!6805575 bm!618502) bm!618504))

(assert (= (or b!6805566 b!6805575) bm!618501))

(assert (= (or b!6805566 bm!618504) bm!618500))

(declare-fun m!7551764 () Bool)

(assert (=> b!6805565 m!7551764))

(declare-fun m!7551766 () Bool)

(assert (=> bm!618500 m!7551766))

(declare-fun m!7551768 () Bool)

(assert (=> bm!618503 m!7551768))

(assert (=> b!6805570 m!7551176))

(declare-fun m!7551770 () Bool)

(assert (=> bm!618501 m!7551770))

(assert (=> b!6804869 d!2138618))

(declare-fun d!2138620 () Bool)

(assert (=> d!2138620 (= (flatMap!2106 lt!2448848 lambda!383997) (choose!50735 lt!2448848 lambda!383997))))

(declare-fun bs!1814156 () Bool)

(assert (= bs!1814156 d!2138620))

(declare-fun m!7551772 () Bool)

(assert (=> bs!1814156 m!7551772))

(assert (=> b!6804869 d!2138620))

(declare-fun e!4106863 () (InoxSet Context!12018))

(declare-fun call!618511 () (InoxSet Context!12018))

(declare-fun b!6805576 () Bool)

(assert (=> b!6805576 (= e!4106863 ((_ map or) call!618511 (derivationStepZipperUp!1779 (Context!12019 (t!379908 (exprs!6509 lt!2448855))) (h!72498 s!2326))))))

(declare-fun d!2138622 () Bool)

(declare-fun c!1265756 () Bool)

(declare-fun e!4106862 () Bool)

(assert (=> d!2138622 (= c!1265756 e!4106862)))

(declare-fun res!2781043 () Bool)

(assert (=> d!2138622 (=> (not res!2781043) (not e!4106862))))

(assert (=> d!2138622 (= res!2781043 ((_ is Cons!66051) (exprs!6509 lt!2448855)))))

(assert (=> d!2138622 (= (derivationStepZipperUp!1779 lt!2448855 (h!72498 s!2326)) e!4106863)))

(declare-fun b!6805577 () Bool)

(assert (=> b!6805577 (= e!4106862 (nullable!6603 (h!72499 (exprs!6509 lt!2448855))))))

(declare-fun b!6805578 () Bool)

(declare-fun e!4106861 () (InoxSet Context!12018))

(assert (=> b!6805578 (= e!4106863 e!4106861)))

(declare-fun c!1265757 () Bool)

(assert (=> b!6805578 (= c!1265757 ((_ is Cons!66051) (exprs!6509 lt!2448855)))))

(declare-fun bm!618506 () Bool)

(assert (=> bm!618506 (= call!618511 (derivationStepZipperDown!1853 (h!72499 (exprs!6509 lt!2448855)) (Context!12019 (t!379908 (exprs!6509 lt!2448855))) (h!72498 s!2326)))))

(declare-fun b!6805579 () Bool)

(assert (=> b!6805579 (= e!4106861 ((as const (Array Context!12018 Bool)) false))))

(declare-fun b!6805580 () Bool)

(assert (=> b!6805580 (= e!4106861 call!618511)))

(assert (= (and d!2138622 res!2781043) b!6805577))

(assert (= (and d!2138622 c!1265756) b!6805576))

(assert (= (and d!2138622 (not c!1265756)) b!6805578))

(assert (= (and b!6805578 c!1265757) b!6805580))

(assert (= (and b!6805578 (not c!1265757)) b!6805579))

(assert (= (or b!6805576 b!6805580) bm!618506))

(declare-fun m!7551774 () Bool)

(assert (=> b!6805576 m!7551774))

(declare-fun m!7551776 () Bool)

(assert (=> b!6805577 m!7551776))

(declare-fun m!7551778 () Bool)

(assert (=> bm!618506 m!7551778))

(assert (=> b!6804869 d!2138622))

(declare-fun d!2138624 () Bool)

(assert (=> d!2138624 (= (flatMap!2106 lt!2448848 lambda!383997) (dynLambda!26381 lambda!383997 lt!2448855))))

(declare-fun lt!2449001 () Unit!159941)

(assert (=> d!2138624 (= lt!2449001 (choose!50736 lt!2448848 lt!2448855 lambda!383997))))

(assert (=> d!2138624 (= lt!2448848 (store ((as const (Array Context!12018 Bool)) false) lt!2448855 true))))

(assert (=> d!2138624 (= (lemmaFlatMapOnSingletonSet!1632 lt!2448848 lt!2448855 lambda!383997) lt!2449001)))

(declare-fun b_lambda!256563 () Bool)

(assert (=> (not b_lambda!256563) (not d!2138624)))

(declare-fun bs!1814157 () Bool)

(assert (= bs!1814157 d!2138624))

(assert (=> bs!1814157 m!7551132))

(declare-fun m!7551780 () Bool)

(assert (=> bs!1814157 m!7551780))

(declare-fun m!7551782 () Bool)

(assert (=> bs!1814157 m!7551782))

(assert (=> bs!1814157 m!7551140))

(assert (=> b!6804869 d!2138624))

(declare-fun b!6805585 () Bool)

(declare-fun e!4106866 () Bool)

(declare-fun tp!1862814 () Bool)

(assert (=> b!6805585 (= e!4106866 (and tp_is_empty!42503 tp!1862814))))

(assert (=> b!6804864 (= tp!1862808 e!4106866)))

(assert (= (and b!6804864 ((_ is Cons!66050) (t!379907 s!2326))) b!6805585))

(declare-fun b!6805597 () Bool)

(declare-fun e!4106869 () Bool)

(declare-fun tp!1862829 () Bool)

(declare-fun tp!1862828 () Bool)

(assert (=> b!6805597 (= e!4106869 (and tp!1862829 tp!1862828))))

(declare-fun b!6805599 () Bool)

(declare-fun tp!1862827 () Bool)

(declare-fun tp!1862825 () Bool)

(assert (=> b!6805599 (= e!4106869 (and tp!1862827 tp!1862825))))

(assert (=> b!6804889 (= tp!1862804 e!4106869)))

(declare-fun b!6805596 () Bool)

(assert (=> b!6805596 (= e!4106869 tp_is_empty!42503)))

(declare-fun b!6805598 () Bool)

(declare-fun tp!1862826 () Bool)

(assert (=> b!6805598 (= e!4106869 tp!1862826)))

(assert (= (and b!6804889 ((_ is ElementMatch!16625) (regOne!33762 r!7292))) b!6805596))

(assert (= (and b!6804889 ((_ is Concat!25470) (regOne!33762 r!7292))) b!6805597))

(assert (= (and b!6804889 ((_ is Star!16625) (regOne!33762 r!7292))) b!6805598))

(assert (= (and b!6804889 ((_ is Union!16625) (regOne!33762 r!7292))) b!6805599))

(declare-fun b!6805601 () Bool)

(declare-fun e!4106870 () Bool)

(declare-fun tp!1862834 () Bool)

(declare-fun tp!1862833 () Bool)

(assert (=> b!6805601 (= e!4106870 (and tp!1862834 tp!1862833))))

(declare-fun b!6805603 () Bool)

(declare-fun tp!1862832 () Bool)

(declare-fun tp!1862830 () Bool)

(assert (=> b!6805603 (= e!4106870 (and tp!1862832 tp!1862830))))

(assert (=> b!6804889 (= tp!1862802 e!4106870)))

(declare-fun b!6805600 () Bool)

(assert (=> b!6805600 (= e!4106870 tp_is_empty!42503)))

(declare-fun b!6805602 () Bool)

(declare-fun tp!1862831 () Bool)

(assert (=> b!6805602 (= e!4106870 tp!1862831)))

(assert (= (and b!6804889 ((_ is ElementMatch!16625) (regTwo!33762 r!7292))) b!6805600))

(assert (= (and b!6804889 ((_ is Concat!25470) (regTwo!33762 r!7292))) b!6805601))

(assert (= (and b!6804889 ((_ is Star!16625) (regTwo!33762 r!7292))) b!6805602))

(assert (= (and b!6804889 ((_ is Union!16625) (regTwo!33762 r!7292))) b!6805603))

(declare-fun b!6805611 () Bool)

(declare-fun e!4106876 () Bool)

(declare-fun tp!1862839 () Bool)

(assert (=> b!6805611 (= e!4106876 tp!1862839)))

(declare-fun b!6805610 () Bool)

(declare-fun e!4106875 () Bool)

(declare-fun tp!1862840 () Bool)

(assert (=> b!6805610 (= e!4106875 (and (inv!84809 (h!72500 (t!379909 zl!343))) e!4106876 tp!1862840))))

(assert (=> b!6804888 (= tp!1862803 e!4106875)))

(assert (= b!6805610 b!6805611))

(assert (= (and b!6804888 ((_ is Cons!66052) (t!379909 zl!343))) b!6805610))

(declare-fun m!7551784 () Bool)

(assert (=> b!6805610 m!7551784))

(declare-fun condSetEmpty!46668 () Bool)

(assert (=> setNonEmpty!46665 (= condSetEmpty!46668 (= setRest!46665 ((as const (Array Context!12018 Bool)) false)))))

(declare-fun setRes!46668 () Bool)

(assert (=> setNonEmpty!46665 (= tp!1862811 setRes!46668)))

(declare-fun setIsEmpty!46668 () Bool)

(assert (=> setIsEmpty!46668 setRes!46668))

(declare-fun setNonEmpty!46668 () Bool)

(declare-fun tp!1862846 () Bool)

(declare-fun setElem!46668 () Context!12018)

(declare-fun e!4106879 () Bool)

(assert (=> setNonEmpty!46668 (= setRes!46668 (and tp!1862846 (inv!84809 setElem!46668) e!4106879))))

(declare-fun setRest!46668 () (InoxSet Context!12018))

(assert (=> setNonEmpty!46668 (= setRest!46665 ((_ map or) (store ((as const (Array Context!12018 Bool)) false) setElem!46668 true) setRest!46668))))

(declare-fun b!6805616 () Bool)

(declare-fun tp!1862845 () Bool)

(assert (=> b!6805616 (= e!4106879 tp!1862845)))

(assert (= (and setNonEmpty!46665 condSetEmpty!46668) setIsEmpty!46668))

(assert (= (and setNonEmpty!46665 (not condSetEmpty!46668)) setNonEmpty!46668))

(assert (= setNonEmpty!46668 b!6805616))

(declare-fun m!7551786 () Bool)

(assert (=> setNonEmpty!46668 m!7551786))

(declare-fun b!6805621 () Bool)

(declare-fun e!4106882 () Bool)

(declare-fun tp!1862851 () Bool)

(declare-fun tp!1862852 () Bool)

(assert (=> b!6805621 (= e!4106882 (and tp!1862851 tp!1862852))))

(assert (=> b!6804887 (= tp!1862809 e!4106882)))

(assert (= (and b!6804887 ((_ is Cons!66051) (exprs!6509 setElem!46665))) b!6805621))

(declare-fun b!6805622 () Bool)

(declare-fun e!4106883 () Bool)

(declare-fun tp!1862853 () Bool)

(declare-fun tp!1862854 () Bool)

(assert (=> b!6805622 (= e!4106883 (and tp!1862853 tp!1862854))))

(assert (=> b!6804884 (= tp!1862805 e!4106883)))

(assert (= (and b!6804884 ((_ is Cons!66051) (exprs!6509 (h!72500 zl!343)))) b!6805622))

(declare-fun b!6805624 () Bool)

(declare-fun e!4106884 () Bool)

(declare-fun tp!1862859 () Bool)

(declare-fun tp!1862858 () Bool)

(assert (=> b!6805624 (= e!4106884 (and tp!1862859 tp!1862858))))

(declare-fun b!6805626 () Bool)

(declare-fun tp!1862857 () Bool)

(declare-fun tp!1862855 () Bool)

(assert (=> b!6805626 (= e!4106884 (and tp!1862857 tp!1862855))))

(assert (=> b!6804879 (= tp!1862806 e!4106884)))

(declare-fun b!6805623 () Bool)

(assert (=> b!6805623 (= e!4106884 tp_is_empty!42503)))

(declare-fun b!6805625 () Bool)

(declare-fun tp!1862856 () Bool)

(assert (=> b!6805625 (= e!4106884 tp!1862856)))

(assert (= (and b!6804879 ((_ is ElementMatch!16625) (regOne!33763 r!7292))) b!6805623))

(assert (= (and b!6804879 ((_ is Concat!25470) (regOne!33763 r!7292))) b!6805624))

(assert (= (and b!6804879 ((_ is Star!16625) (regOne!33763 r!7292))) b!6805625))

(assert (= (and b!6804879 ((_ is Union!16625) (regOne!33763 r!7292))) b!6805626))

(declare-fun b!6805628 () Bool)

(declare-fun e!4106885 () Bool)

(declare-fun tp!1862864 () Bool)

(declare-fun tp!1862863 () Bool)

(assert (=> b!6805628 (= e!4106885 (and tp!1862864 tp!1862863))))

(declare-fun b!6805630 () Bool)

(declare-fun tp!1862862 () Bool)

(declare-fun tp!1862860 () Bool)

(assert (=> b!6805630 (= e!4106885 (and tp!1862862 tp!1862860))))

(assert (=> b!6804879 (= tp!1862810 e!4106885)))

(declare-fun b!6805627 () Bool)

(assert (=> b!6805627 (= e!4106885 tp_is_empty!42503)))

(declare-fun b!6805629 () Bool)

(declare-fun tp!1862861 () Bool)

(assert (=> b!6805629 (= e!4106885 tp!1862861)))

(assert (= (and b!6804879 ((_ is ElementMatch!16625) (regTwo!33763 r!7292))) b!6805627))

(assert (= (and b!6804879 ((_ is Concat!25470) (regTwo!33763 r!7292))) b!6805628))

(assert (= (and b!6804879 ((_ is Star!16625) (regTwo!33763 r!7292))) b!6805629))

(assert (= (and b!6804879 ((_ is Union!16625) (regTwo!33763 r!7292))) b!6805630))

(declare-fun b!6805632 () Bool)

(declare-fun e!4106886 () Bool)

(declare-fun tp!1862869 () Bool)

(declare-fun tp!1862868 () Bool)

(assert (=> b!6805632 (= e!4106886 (and tp!1862869 tp!1862868))))

(declare-fun b!6805634 () Bool)

(declare-fun tp!1862867 () Bool)

(declare-fun tp!1862865 () Bool)

(assert (=> b!6805634 (= e!4106886 (and tp!1862867 tp!1862865))))

(assert (=> b!6804865 (= tp!1862807 e!4106886)))

(declare-fun b!6805631 () Bool)

(assert (=> b!6805631 (= e!4106886 tp_is_empty!42503)))

(declare-fun b!6805633 () Bool)

(declare-fun tp!1862866 () Bool)

(assert (=> b!6805633 (= e!4106886 tp!1862866)))

(assert (= (and b!6804865 ((_ is ElementMatch!16625) (reg!16954 r!7292))) b!6805631))

(assert (= (and b!6804865 ((_ is Concat!25470) (reg!16954 r!7292))) b!6805632))

(assert (= (and b!6804865 ((_ is Star!16625) (reg!16954 r!7292))) b!6805633))

(assert (= (and b!6804865 ((_ is Union!16625) (reg!16954 r!7292))) b!6805634))

(declare-fun b_lambda!256565 () Bool)

(assert (= b_lambda!256547 (or b!6804871 b_lambda!256565)))

(declare-fun bs!1814158 () Bool)

(declare-fun d!2138626 () Bool)

(assert (= bs!1814158 (and d!2138626 b!6804871)))

(assert (=> bs!1814158 (= (dynLambda!26381 lambda!383997 (h!72500 zl!343)) (derivationStepZipperUp!1779 (h!72500 zl!343) (h!72498 s!2326)))))

(assert (=> bs!1814158 m!7551098))

(assert (=> d!2138442 d!2138626))

(declare-fun b_lambda!256567 () Bool)

(assert (= b_lambda!256551 (or b!6804871 b_lambda!256567)))

(declare-fun bs!1814159 () Bool)

(declare-fun d!2138628 () Bool)

(assert (= bs!1814159 (and d!2138628 b!6804871)))

(assert (=> bs!1814159 (= (dynLambda!26381 lambda!383997 lt!2448866) (derivationStepZipperUp!1779 lt!2448866 (h!72498 s!2326)))))

(assert (=> bs!1814159 m!7551174))

(assert (=> d!2138452 d!2138628))

(declare-fun b_lambda!256569 () Bool)

(assert (= b_lambda!256549 (or b!6804871 b_lambda!256569)))

(declare-fun bs!1814160 () Bool)

(declare-fun d!2138630 () Bool)

(assert (= bs!1814160 (and d!2138630 b!6804871)))

(assert (=> bs!1814160 (= (dynLambda!26381 lambda!383997 lt!2448847) (derivationStepZipperUp!1779 lt!2448847 (h!72498 s!2326)))))

(assert (=> bs!1814160 m!7551170))

(assert (=> d!2138450 d!2138630))

(declare-fun b_lambda!256571 () Bool)

(assert (= b_lambda!256563 (or b!6804871 b_lambda!256571)))

(declare-fun bs!1814161 () Bool)

(declare-fun d!2138632 () Bool)

(assert (= bs!1814161 (and d!2138632 b!6804871)))

(assert (=> bs!1814161 (= (dynLambda!26381 lambda!383997 lt!2448855) (derivationStepZipperUp!1779 lt!2448855 (h!72498 s!2326)))))

(assert (=> bs!1814161 m!7551134))

(assert (=> d!2138624 d!2138632))

(declare-fun b_lambda!256573 () Bool)

(assert (= b_lambda!256561 (or b!6804863 b_lambda!256573)))

(declare-fun bs!1814162 () Bool)

(declare-fun d!2138634 () Bool)

(assert (= bs!1814162 (and d!2138634 b!6804863)))

(declare-fun lt!2449002 () Unit!159941)

(assert (=> bs!1814162 (= lt!2449002 (lemmaConcatPreservesForall!454 (exprs!6509 lt!2448847) lt!2448874 lambda!383999))))

(assert (=> bs!1814162 (= (dynLambda!26383 lambda!383998 lt!2448847) (Context!12019 (++!14796 (exprs!6509 lt!2448847) lt!2448874)))))

(declare-fun m!7551788 () Bool)

(assert (=> bs!1814162 m!7551788))

(declare-fun m!7551790 () Bool)

(assert (=> bs!1814162 m!7551790))

(assert (=> d!2138562 d!2138634))

(check-sat (not d!2138560) (not d!2138516) (not b!6805434) (not d!2138578) (not d!2138564) (not d!2138520) (not b!6805499) (not bm!618499) (not b_lambda!256571) (not d!2138438) (not bm!618493) (not d!2138490) (not d!2138524) (not b!6804999) (not b!6805084) (not b!6805157) (not b!6805358) (not bs!1814159) (not d!2138550) (not b!6805616) (not d!2138600) (not d!2138494) (not d!2138554) (not b!6805239) (not d!2138620) (not b!6805082) (not b!6805087) (not bm!618441) (not b!6805624) (not b!6805147) (not d!2138608) (not d!2138568) (not bm!618500) (not b!6805611) (not b!6805629) (not b!6805543) (not d!2138522) (not b!6805577) (not b!6805630) (not b!6805005) (not b!6805086) (not bm!618417) (not b!6805576) (not b!6804977) (not b!6805110) (not b!6805006) (not d!2138580) (not b!6805610) (not b!6805598) (not bm!618421) (not b!6805510) (not b!6805362) (not b!6805565) (not d!2138460) (not b!6804993) (not d!2138472) (not bs!1814160) (not d!2138562) (not b!6804935) (not b!6804971) (not b!6805238) (not d!2138624) (not d!2138452) (not d!2138574) (not d!2138598) (not b!6805365) (not d!2138594) (not b!6805426) (not d!2138450) (not d!2138442) (not d!2138596) (not b!6805135) (not bm!618506) (not b!6805603) (not d!2138556) (not b!6805633) (not b!6805511) (not b!6805546) (not b!6805115) (not b!6805547) (not b!6805392) (not bm!618503) (not setNonEmpty!46668) (not b!6805632) (not bm!618501) (not d!2138572) (not d!2138492) (not bs!1814158) (not b!6805626) (not d!2138514) (not bs!1814162) (not d!2138566) (not d!2138526) (not b!6805462) (not d!2138606) (not b!6805145) (not b_lambda!256565) (not b!6805236) (not d!2138502) (not b!6805601) (not b_lambda!256569) (not d!2138548) (not b!6805139) (not b!6804976) (not b!6805548) (not b!6805634) (not d!2138604) (not b!6805181) (not b!6805393) (not d!2138500) (not b!6805549) (not b!6804981) (not b!6805433) (not b!6805235) (not b!6805545) (not b!6805269) (not b!6805111) (not b!6805360) (not b!6805445) (not b!6805597) (not b!6805129) (not d!2138430) (not d!2138456) (not b!6805146) (not b!6805128) (not bm!618432) (not bm!618426) (not bm!618425) (not b!6805551) (not b!6805237) (not b!6805241) (not d!2138436) (not b!6805602) (not b!6804931) (not d!2138576) (not b!6805628) (not b!6805446) (not b!6805621) (not b_lambda!256567) (not b!6805625) (not bm!618433) (not bm!618494) (not b!6805364) (not b!6804970) (not b!6805357) (not b!6805585) (not d!2138434) (not bm!618496) (not bm!618418) (not d!2138454) (not bm!618431) (not b!6805461) (not b_lambda!256573) (not d!2138448) (not d!2138552) (not d!2138510) (not bm!618442) (not b!6805152) (not b!6805599) (not d!2138478) (not d!2138508) (not b!6805079) (not b!6805427) (not b!6804969) (not b!6804994) (not b!6805554) (not bs!1814161) (not b!6805622) tp_is_empty!42503 (not bm!618424) (not b!6805233) (not b!6805081) (not b!6805553) (not b!6805153) (not b!6804998))
(check-sat)
