; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!639194 () Bool)

(assert start!639194)

(declare-fun b!6505768 () Bool)

(assert (=> b!6505768 true))

(assert (=> b!6505768 true))

(declare-fun lambda!360721 () Int)

(declare-fun lambda!360720 () Int)

(assert (=> b!6505768 (not (= lambda!360721 lambda!360720))))

(assert (=> b!6505768 true))

(assert (=> b!6505768 true))

(declare-fun b!6505754 () Bool)

(assert (=> b!6505754 true))

(declare-fun b!6505772 () Bool)

(assert (=> b!6505772 true))

(declare-fun b!6505741 () Bool)

(declare-fun e!3941948 () Bool)

(declare-fun e!3941936 () Bool)

(assert (=> b!6505741 (= e!3941948 e!3941936)))

(declare-fun res!2671680 () Bool)

(assert (=> b!6505741 (=> (not res!2671680) (not e!3941936))))

(declare-datatypes ((C!33040 0))(
  ( (C!33041 (val!26222 Int)) )
))
(declare-datatypes ((Regex!16385 0))(
  ( (ElementMatch!16385 (c!1193105 C!33040)) (Concat!25230 (regOne!33282 Regex!16385) (regTwo!33282 Regex!16385)) (EmptyExpr!16385) (Star!16385 (reg!16714 Regex!16385)) (EmptyLang!16385) (Union!16385 (regOne!33283 Regex!16385) (regTwo!33283 Regex!16385)) )
))
(declare-fun r!7292 () Regex!16385)

(declare-fun lt!2392824 () Regex!16385)

(assert (=> b!6505741 (= res!2671680 (= r!7292 lt!2392824))))

(declare-datatypes ((List!65454 0))(
  ( (Nil!65330) (Cons!65330 (h!71778 Regex!16385) (t!379090 List!65454)) )
))
(declare-datatypes ((Context!11538 0))(
  ( (Context!11539 (exprs!6269 List!65454)) )
))
(declare-datatypes ((List!65455 0))(
  ( (Nil!65331) (Cons!65331 (h!71779 Context!11538) (t!379091 List!65455)) )
))
(declare-fun zl!343 () List!65455)

(declare-fun unfocusZipper!2127 (List!65455) Regex!16385)

(assert (=> b!6505741 (= lt!2392824 (unfocusZipper!2127 zl!343))))

(declare-fun b!6505742 () Bool)

(declare-fun e!3941943 () Bool)

(declare-fun nullable!6378 (Regex!16385) Bool)

(assert (=> b!6505742 (= e!3941943 (nullable!6378 (regOne!33282 (regOne!33282 r!7292))))))

(declare-fun setIsEmpty!44371 () Bool)

(declare-fun setRes!44371 () Bool)

(assert (=> setIsEmpty!44371 setRes!44371))

(declare-fun b!6505743 () Bool)

(declare-fun res!2671672 () Bool)

(declare-fun e!3941928 () Bool)

(assert (=> b!6505743 (=> res!2671672 e!3941928)))

(assert (=> b!6505743 (= res!2671672 e!3941943)))

(declare-fun res!2671683 () Bool)

(assert (=> b!6505743 (=> (not res!2671683) (not e!3941943))))

(get-info :version)

(assert (=> b!6505743 (= res!2671683 ((_ is Concat!25230) (regOne!33282 r!7292)))))

(declare-fun b!6505744 () Bool)

(declare-fun e!3941929 () Bool)

(declare-fun lt!2392811 () Context!11538)

(declare-fun inv!84209 (Context!11538) Bool)

(assert (=> b!6505744 (= e!3941929 (inv!84209 lt!2392811))))

(declare-fun b!6505745 () Bool)

(declare-fun e!3941947 () Bool)

(declare-fun tp!1799332 () Bool)

(assert (=> b!6505745 (= e!3941947 tp!1799332)))

(declare-fun e!3941931 () Bool)

(declare-fun b!6505747 () Bool)

(declare-fun tp!1799329 () Bool)

(declare-fun e!3941946 () Bool)

(assert (=> b!6505747 (= e!3941931 (and (inv!84209 (h!71779 zl!343)) e!3941946 tp!1799329))))

(declare-fun b!6505748 () Bool)

(declare-datatypes ((Unit!158875 0))(
  ( (Unit!158876) )
))
(declare-fun e!3941932 () Unit!158875)

(declare-fun Unit!158877 () Unit!158875)

(assert (=> b!6505748 (= e!3941932 Unit!158877)))

(declare-fun b!6505749 () Bool)

(declare-fun res!2671674 () Bool)

(declare-fun e!3941927 () Bool)

(assert (=> b!6505749 (=> res!2671674 e!3941927)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11538))

(declare-datatypes ((List!65456 0))(
  ( (Nil!65332) (Cons!65332 (h!71780 C!33040) (t!379092 List!65456)) )
))
(declare-fun s!2326 () List!65456)

(declare-fun matchZipper!2397 ((InoxSet Context!11538) List!65456) Bool)

(assert (=> b!6505749 (= res!2671674 (not (matchZipper!2397 z!1189 s!2326)))))

(declare-fun b!6505750 () Bool)

(declare-fun e!3941945 () Bool)

(declare-fun e!3941940 () Bool)

(assert (=> b!6505750 (= e!3941945 e!3941940)))

(declare-fun res!2671668 () Bool)

(assert (=> b!6505750 (=> res!2671668 e!3941940)))

(declare-fun lt!2392812 () Regex!16385)

(assert (=> b!6505750 (= res!2671668 (not (= r!7292 lt!2392812)))))

(declare-fun lt!2392797 () Regex!16385)

(assert (=> b!6505750 (= lt!2392812 (Concat!25230 lt!2392797 (regTwo!33282 r!7292)))))

(declare-fun b!6505751 () Bool)

(declare-fun e!3941938 () Bool)

(declare-fun lt!2392818 () (InoxSet Context!11538))

(assert (=> b!6505751 (= e!3941938 (not (matchZipper!2397 lt!2392818 (t!379092 s!2326))))))

(declare-fun b!6505752 () Bool)

(declare-fun res!2671687 () Bool)

(assert (=> b!6505752 (=> (not res!2671687) (not e!3941948))))

(declare-fun toList!10169 ((InoxSet Context!11538)) List!65455)

(assert (=> b!6505752 (= res!2671687 (= (toList!10169 z!1189) zl!343))))

(declare-fun b!6505753 () Bool)

(declare-fun res!2671682 () Bool)

(declare-fun e!3941944 () Bool)

(assert (=> b!6505753 (=> res!2671682 e!3941944)))

(assert (=> b!6505753 (= res!2671682 (not (= (unfocusZipper!2127 (Cons!65331 lt!2392811 Nil!65331)) lt!2392812)))))

(declare-fun e!3941926 () Bool)

(assert (=> b!6505754 (= e!3941926 e!3941928)))

(declare-fun res!2671675 () Bool)

(assert (=> b!6505754 (=> res!2671675 e!3941928)))

(assert (=> b!6505754 (= res!2671675 (or (and ((_ is ElementMatch!16385) (regOne!33282 r!7292)) (= (c!1193105 (regOne!33282 r!7292)) (h!71780 s!2326))) ((_ is Union!16385) (regOne!33282 r!7292))))))

(declare-fun lt!2392789 () Unit!158875)

(assert (=> b!6505754 (= lt!2392789 e!3941932)))

(declare-fun c!1193104 () Bool)

(declare-fun lt!2392801 () Bool)

(assert (=> b!6505754 (= c!1193104 lt!2392801)))

(assert (=> b!6505754 (= lt!2392801 (nullable!6378 (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun lambda!360722 () Int)

(declare-fun flatMap!1890 ((InoxSet Context!11538) Int) (InoxSet Context!11538))

(declare-fun derivationStepZipperUp!1559 (Context!11538 C!33040) (InoxSet Context!11538))

(assert (=> b!6505754 (= (flatMap!1890 z!1189 lambda!360722) (derivationStepZipperUp!1559 (h!71779 zl!343) (h!71780 s!2326)))))

(declare-fun lt!2392791 () Unit!158875)

(declare-fun lemmaFlatMapOnSingletonSet!1416 ((InoxSet Context!11538) Context!11538 Int) Unit!158875)

(assert (=> b!6505754 (= lt!2392791 (lemmaFlatMapOnSingletonSet!1416 z!1189 (h!71779 zl!343) lambda!360722))))

(declare-fun lt!2392790 () Context!11538)

(assert (=> b!6505754 (= lt!2392818 (derivationStepZipperUp!1559 lt!2392790 (h!71780 s!2326)))))

(declare-fun lt!2392805 () (InoxSet Context!11538))

(declare-fun derivationStepZipperDown!1633 (Regex!16385 Context!11538 C!33040) (InoxSet Context!11538))

(assert (=> b!6505754 (= lt!2392805 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 (h!71779 zl!343))) lt!2392790 (h!71780 s!2326)))))

(assert (=> b!6505754 (= lt!2392790 (Context!11539 (t!379090 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun lt!2392816 () (InoxSet Context!11538))

(assert (=> b!6505754 (= lt!2392816 (derivationStepZipperUp!1559 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343))))) (h!71780 s!2326)))))

(declare-fun b!6505755 () Bool)

(declare-fun res!2671660 () Bool)

(assert (=> b!6505755 (=> res!2671660 e!3941928)))

(assert (=> b!6505755 (= res!2671660 (or ((_ is Concat!25230) (regOne!33282 r!7292)) (not ((_ is Star!16385) (regOne!33282 r!7292)))))))

(declare-fun b!6505756 () Bool)

(declare-fun e!3941942 () Bool)

(assert (=> b!6505756 (= e!3941927 e!3941942)))

(declare-fun res!2671689 () Bool)

(assert (=> b!6505756 (=> res!2671689 e!3941942)))

(assert (=> b!6505756 (= res!2671689 e!3941938)))

(declare-fun res!2671667 () Bool)

(assert (=> b!6505756 (=> (not res!2671667) (not e!3941938))))

(declare-fun lt!2392808 () Bool)

(assert (=> b!6505756 (= res!2671667 (not lt!2392808))))

(assert (=> b!6505756 (= lt!2392808 (matchZipper!2397 lt!2392805 (t!379092 s!2326)))))

(declare-fun b!6505757 () Bool)

(declare-fun Unit!158878 () Unit!158875)

(assert (=> b!6505757 (= e!3941932 Unit!158878)))

(declare-fun lt!2392815 () Unit!158875)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1216 ((InoxSet Context!11538) (InoxSet Context!11538) List!65456) Unit!158875)

(assert (=> b!6505757 (= lt!2392815 (lemmaZipperConcatMatchesSameAsBothZippers!1216 lt!2392805 lt!2392818 (t!379092 s!2326)))))

(declare-fun res!2671688 () Bool)

(assert (=> b!6505757 (= res!2671688 (matchZipper!2397 lt!2392805 (t!379092 s!2326)))))

(declare-fun e!3941930 () Bool)

(assert (=> b!6505757 (=> res!2671688 e!3941930)))

(assert (=> b!6505757 (= (matchZipper!2397 ((_ map or) lt!2392805 lt!2392818) (t!379092 s!2326)) e!3941930)))

(declare-fun b!6505758 () Bool)

(declare-fun tp!1799337 () Bool)

(declare-fun tp!1799336 () Bool)

(assert (=> b!6505758 (= e!3941947 (and tp!1799337 tp!1799336))))

(declare-fun b!6505759 () Bool)

(assert (=> b!6505759 (= e!3941944 e!3941927)))

(declare-fun res!2671677 () Bool)

(assert (=> b!6505759 (=> res!2671677 e!3941927)))

(declare-fun lt!2392799 () Bool)

(assert (=> b!6505759 (= res!2671677 lt!2392799)))

(declare-fun lt!2392795 () Regex!16385)

(declare-fun matchR!8568 (Regex!16385 List!65456) Bool)

(declare-fun matchRSpec!3486 (Regex!16385 List!65456) Bool)

(assert (=> b!6505759 (= (matchR!8568 lt!2392795 s!2326) (matchRSpec!3486 lt!2392795 s!2326))))

(declare-fun lt!2392814 () Unit!158875)

(declare-fun mainMatchTheorem!3486 (Regex!16385 List!65456) Unit!158875)

(assert (=> b!6505759 (= lt!2392814 (mainMatchTheorem!3486 lt!2392795 s!2326))))

(declare-fun b!6505760 () Bool)

(declare-fun res!2671661 () Bool)

(declare-fun e!3941937 () Bool)

(assert (=> b!6505760 (=> res!2671661 e!3941937)))

(declare-fun generalisedUnion!2229 (List!65454) Regex!16385)

(declare-fun unfocusZipperList!1806 (List!65455) List!65454)

(assert (=> b!6505760 (= res!2671661 (not (= r!7292 (generalisedUnion!2229 (unfocusZipperList!1806 zl!343)))))))

(declare-fun b!6505761 () Bool)

(declare-fun e!3941935 () Bool)

(declare-fun tp!1799334 () Bool)

(assert (=> b!6505761 (= e!3941935 tp!1799334)))

(declare-fun b!6505762 () Bool)

(assert (=> b!6505762 (= e!3941930 (matchZipper!2397 lt!2392818 (t!379092 s!2326)))))

(declare-fun res!2671670 () Bool)

(assert (=> start!639194 (=> (not res!2671670) (not e!3941948))))

(declare-fun validRegex!8121 (Regex!16385) Bool)

(assert (=> start!639194 (= res!2671670 (validRegex!8121 r!7292))))

(assert (=> start!639194 e!3941948))

(assert (=> start!639194 e!3941947))

(declare-fun condSetEmpty!44371 () Bool)

(assert (=> start!639194 (= condSetEmpty!44371 (= z!1189 ((as const (Array Context!11538 Bool)) false)))))

(assert (=> start!639194 setRes!44371))

(assert (=> start!639194 e!3941931))

(declare-fun e!3941933 () Bool)

(assert (=> start!639194 e!3941933))

(declare-fun b!6505746 () Bool)

(declare-fun tp_is_empty!42023 () Bool)

(assert (=> b!6505746 (= e!3941947 tp_is_empty!42023)))

(declare-fun b!6505763 () Bool)

(declare-fun res!2671679 () Bool)

(assert (=> b!6505763 (=> res!2671679 e!3941926)))

(declare-fun isEmpty!37537 (List!65454) Bool)

(assert (=> b!6505763 (= res!2671679 (isEmpty!37537 (t!379090 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun b!6505764 () Bool)

(declare-fun res!2671678 () Bool)

(assert (=> b!6505764 (=> res!2671678 e!3941942)))

(declare-fun lt!2392798 () Bool)

(assert (=> b!6505764 (= res!2671678 (or (not lt!2392808) (not lt!2392798)))))

(declare-fun b!6505765 () Bool)

(declare-fun e!3941939 () Bool)

(assert (=> b!6505765 (= e!3941928 e!3941939)))

(declare-fun res!2671663 () Bool)

(assert (=> b!6505765 (=> res!2671663 e!3941939)))

(declare-fun lt!2392804 () (InoxSet Context!11538))

(assert (=> b!6505765 (= res!2671663 (not (= lt!2392805 lt!2392804)))))

(assert (=> b!6505765 (= lt!2392804 (derivationStepZipperDown!1633 (reg!16714 (regOne!33282 r!7292)) lt!2392811 (h!71780 s!2326)))))

(declare-fun lt!2392792 () List!65454)

(assert (=> b!6505765 (= lt!2392811 (Context!11539 lt!2392792))))

(assert (=> b!6505765 (= lt!2392792 (Cons!65330 lt!2392797 (t!379090 (exprs!6269 (h!71779 zl!343)))))))

(assert (=> b!6505765 (= lt!2392797 (Star!16385 (reg!16714 (regOne!33282 r!7292))))))

(declare-fun b!6505766 () Bool)

(declare-fun res!2671676 () Bool)

(assert (=> b!6505766 (=> res!2671676 e!3941937)))

(assert (=> b!6505766 (= res!2671676 (or ((_ is EmptyExpr!16385) r!7292) ((_ is EmptyLang!16385) r!7292) ((_ is ElementMatch!16385) r!7292) ((_ is Union!16385) r!7292) (not ((_ is Concat!25230) r!7292))))))

(declare-fun b!6505767 () Bool)

(declare-fun tp!1799330 () Bool)

(assert (=> b!6505767 (= e!3941933 (and tp_is_empty!42023 tp!1799330))))

(declare-fun setElem!44371 () Context!11538)

(declare-fun setNonEmpty!44371 () Bool)

(declare-fun tp!1799335 () Bool)

(assert (=> setNonEmpty!44371 (= setRes!44371 (and tp!1799335 (inv!84209 setElem!44371) e!3941935))))

(declare-fun setRest!44371 () (InoxSet Context!11538))

(assert (=> setNonEmpty!44371 (= z!1189 ((_ map or) (store ((as const (Array Context!11538 Bool)) false) setElem!44371 true) setRest!44371))))

(assert (=> b!6505768 (= e!3941937 e!3941926)))

(declare-fun res!2671686 () Bool)

(assert (=> b!6505768 (=> res!2671686 e!3941926)))

(declare-fun lt!2392819 () Bool)

(assert (=> b!6505768 (= res!2671686 (or (not (= lt!2392799 lt!2392819)) ((_ is Nil!65332) s!2326)))))

(declare-fun Exists!3455 (Int) Bool)

(assert (=> b!6505768 (= (Exists!3455 lambda!360720) (Exists!3455 lambda!360721))))

(declare-fun lt!2392807 () Unit!158875)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1992 (Regex!16385 Regex!16385 List!65456) Unit!158875)

(assert (=> b!6505768 (= lt!2392807 (lemmaExistCutMatchRandMatchRSpecEquivalent!1992 (regOne!33282 r!7292) (regTwo!33282 r!7292) s!2326))))

(assert (=> b!6505768 (= lt!2392819 (Exists!3455 lambda!360720))))

(declare-datatypes ((tuple2!66728 0))(
  ( (tuple2!66729 (_1!36667 List!65456) (_2!36667 List!65456)) )
))
(declare-datatypes ((Option!16276 0))(
  ( (None!16275) (Some!16275 (v!52454 tuple2!66728)) )
))
(declare-fun isDefined!12979 (Option!16276) Bool)

(declare-fun findConcatSeparation!2690 (Regex!16385 Regex!16385 List!65456 List!65456 List!65456) Option!16276)

(assert (=> b!6505768 (= lt!2392819 (isDefined!12979 (findConcatSeparation!2690 (regOne!33282 r!7292) (regTwo!33282 r!7292) Nil!65332 s!2326 s!2326)))))

(declare-fun lt!2392820 () Unit!158875)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2454 (Regex!16385 Regex!16385 List!65456) Unit!158875)

(assert (=> b!6505768 (= lt!2392820 (lemmaFindConcatSeparationEquivalentToExists!2454 (regOne!33282 r!7292) (regTwo!33282 r!7292) s!2326))))

(declare-fun b!6505769 () Bool)

(declare-fun tp!1799333 () Bool)

(declare-fun tp!1799331 () Bool)

(assert (=> b!6505769 (= e!3941947 (and tp!1799333 tp!1799331))))

(declare-fun b!6505770 () Bool)

(declare-fun tp!1799338 () Bool)

(assert (=> b!6505770 (= e!3941946 tp!1799338)))

(declare-fun b!6505771 () Bool)

(declare-fun res!2671673 () Bool)

(assert (=> b!6505771 (=> res!2671673 e!3941945)))

(assert (=> b!6505771 (= res!2671673 (not (= lt!2392824 r!7292)))))

(assert (=> b!6505772 (= e!3941942 e!3941929)))

(declare-fun res!2671684 () Bool)

(assert (=> b!6505772 (=> res!2671684 e!3941929)))

(declare-fun lt!2392794 () (InoxSet Context!11538))

(declare-fun lt!2392800 () (InoxSet Context!11538))

(declare-fun appendTo!146 ((InoxSet Context!11538) Context!11538) (InoxSet Context!11538))

(assert (=> b!6505772 (= res!2671684 (not (= (appendTo!146 lt!2392800 lt!2392811) lt!2392794)))))

(declare-fun lambda!360723 () Int)

(declare-fun map!14886 ((InoxSet Context!11538) Int) (InoxSet Context!11538))

(declare-fun ++!14473 (List!65454 List!65454) List!65454)

(assert (=> b!6505772 (= (map!14886 lt!2392800 lambda!360723) (store ((as const (Array Context!11538 Bool)) false) (Context!11539 (++!14473 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lt!2392792)) true))))

(declare-fun lt!2392823 () Unit!158875)

(declare-fun lambda!360724 () Int)

(declare-fun lemmaConcatPreservesForall!358 (List!65454 List!65454 Int) Unit!158875)

(assert (=> b!6505772 (= lt!2392823 (lemmaConcatPreservesForall!358 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lt!2392792 lambda!360724))))

(declare-fun lt!2392803 () Context!11538)

(declare-fun lt!2392796 () Unit!158875)

(declare-fun lemmaMapOnSingletonSet!168 ((InoxSet Context!11538) Context!11538 Int) Unit!158875)

(assert (=> b!6505772 (= lt!2392796 (lemmaMapOnSingletonSet!168 lt!2392800 lt!2392803 lambda!360723))))

(declare-fun b!6505773 () Bool)

(declare-fun e!3941934 () Bool)

(assert (=> b!6505773 (= e!3941934 e!3941944)))

(declare-fun res!2671665 () Bool)

(assert (=> b!6505773 (=> res!2671665 e!3941944)))

(assert (=> b!6505773 (= res!2671665 (not (= (unfocusZipper!2127 (Cons!65331 lt!2392803 Nil!65331)) (reg!16714 (regOne!33282 r!7292)))))))

(declare-fun lt!2392806 () (InoxSet Context!11538))

(assert (=> b!6505773 (= (flatMap!1890 lt!2392806 lambda!360722) (derivationStepZipperUp!1559 lt!2392811 (h!71780 s!2326)))))

(declare-fun lt!2392821 () Unit!158875)

(assert (=> b!6505773 (= lt!2392821 (lemmaFlatMapOnSingletonSet!1416 lt!2392806 lt!2392811 lambda!360722))))

(assert (=> b!6505773 (= (flatMap!1890 lt!2392800 lambda!360722) (derivationStepZipperUp!1559 lt!2392803 (h!71780 s!2326)))))

(declare-fun lt!2392788 () Unit!158875)

(assert (=> b!6505773 (= lt!2392788 (lemmaFlatMapOnSingletonSet!1416 lt!2392800 lt!2392803 lambda!360722))))

(declare-fun lt!2392810 () (InoxSet Context!11538))

(assert (=> b!6505773 (= lt!2392810 (derivationStepZipperUp!1559 lt!2392811 (h!71780 s!2326)))))

(declare-fun lt!2392802 () (InoxSet Context!11538))

(assert (=> b!6505773 (= lt!2392802 (derivationStepZipperUp!1559 lt!2392803 (h!71780 s!2326)))))

(assert (=> b!6505773 (= lt!2392806 (store ((as const (Array Context!11538 Bool)) false) lt!2392811 true))))

(assert (=> b!6505773 (= lt!2392800 (store ((as const (Array Context!11538 Bool)) false) lt!2392803 true))))

(assert (=> b!6505773 (= lt!2392803 (Context!11539 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330)))))

(declare-fun b!6505774 () Bool)

(declare-fun res!2671669 () Bool)

(assert (=> b!6505774 (=> res!2671669 e!3941927)))

(assert (=> b!6505774 (= res!2671669 (not lt!2392801))))

(declare-fun b!6505775 () Bool)

(declare-fun res!2671685 () Bool)

(assert (=> b!6505775 (=> res!2671685 e!3941937)))

(declare-fun isEmpty!37538 (List!65455) Bool)

(assert (=> b!6505775 (= res!2671685 (not (isEmpty!37538 (t!379091 zl!343))))))

(declare-fun b!6505776 () Bool)

(declare-fun e!3941941 () Bool)

(assert (=> b!6505776 (= e!3941941 e!3941945)))

(declare-fun res!2671681 () Bool)

(assert (=> b!6505776 (=> res!2671681 e!3941945)))

(declare-fun lt!2392817 () (InoxSet Context!11538))

(assert (=> b!6505776 (= res!2671681 (not (= lt!2392798 (matchZipper!2397 lt!2392817 (t!379092 s!2326)))))))

(assert (=> b!6505776 (= lt!2392798 (matchZipper!2397 lt!2392794 s!2326))))

(declare-fun b!6505777 () Bool)

(assert (=> b!6505777 (= e!3941940 e!3941934)))

(declare-fun res!2671690 () Bool)

(assert (=> b!6505777 (=> res!2671690 e!3941934)))

(declare-fun lt!2392813 () Context!11538)

(assert (=> b!6505777 (= res!2671690 (not (= (unfocusZipper!2127 (Cons!65331 lt!2392813 Nil!65331)) lt!2392795)))))

(assert (=> b!6505777 (= lt!2392795 (Concat!25230 (reg!16714 (regOne!33282 r!7292)) lt!2392812))))

(declare-fun b!6505778 () Bool)

(assert (=> b!6505778 (= e!3941936 (not e!3941937))))

(declare-fun res!2671666 () Bool)

(assert (=> b!6505778 (=> res!2671666 e!3941937)))

(assert (=> b!6505778 (= res!2671666 (not ((_ is Cons!65331) zl!343)))))

(assert (=> b!6505778 (= lt!2392799 (matchRSpec!3486 r!7292 s!2326))))

(assert (=> b!6505778 (= lt!2392799 (matchR!8568 r!7292 s!2326))))

(declare-fun lt!2392822 () Unit!158875)

(assert (=> b!6505778 (= lt!2392822 (mainMatchTheorem!3486 r!7292 s!2326))))

(declare-fun b!6505779 () Bool)

(declare-fun res!2671671 () Bool)

(assert (=> b!6505779 (=> res!2671671 e!3941937)))

(assert (=> b!6505779 (= res!2671671 (not ((_ is Cons!65330) (exprs!6269 (h!71779 zl!343)))))))

(declare-fun b!6505780 () Bool)

(declare-fun res!2671664 () Bool)

(assert (=> b!6505780 (=> res!2671664 e!3941937)))

(declare-fun generalisedConcat!1982 (List!65454) Regex!16385)

(assert (=> b!6505780 (= res!2671664 (not (= r!7292 (generalisedConcat!1982 (exprs!6269 (h!71779 zl!343))))))))

(declare-fun b!6505781 () Bool)

(assert (=> b!6505781 (= e!3941939 e!3941941)))

(declare-fun res!2671662 () Bool)

(assert (=> b!6505781 (=> res!2671662 e!3941941)))

(assert (=> b!6505781 (= res!2671662 (not (= lt!2392817 lt!2392804)))))

(assert (=> b!6505781 (= (flatMap!1890 lt!2392794 lambda!360722) (derivationStepZipperUp!1559 lt!2392813 (h!71780 s!2326)))))

(declare-fun lt!2392809 () Unit!158875)

(assert (=> b!6505781 (= lt!2392809 (lemmaFlatMapOnSingletonSet!1416 lt!2392794 lt!2392813 lambda!360722))))

(declare-fun lt!2392793 () (InoxSet Context!11538))

(assert (=> b!6505781 (= lt!2392793 (derivationStepZipperUp!1559 lt!2392813 (h!71780 s!2326)))))

(declare-fun derivationStepZipper!2351 ((InoxSet Context!11538) C!33040) (InoxSet Context!11538))

(assert (=> b!6505781 (= lt!2392817 (derivationStepZipper!2351 lt!2392794 (h!71780 s!2326)))))

(assert (=> b!6505781 (= lt!2392794 (store ((as const (Array Context!11538 Bool)) false) lt!2392813 true))))

(assert (=> b!6505781 (= lt!2392813 (Context!11539 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) lt!2392792)))))

(assert (= (and start!639194 res!2671670) b!6505752))

(assert (= (and b!6505752 res!2671687) b!6505741))

(assert (= (and b!6505741 res!2671680) b!6505778))

(assert (= (and b!6505778 (not res!2671666)) b!6505775))

(assert (= (and b!6505775 (not res!2671685)) b!6505780))

(assert (= (and b!6505780 (not res!2671664)) b!6505779))

(assert (= (and b!6505779 (not res!2671671)) b!6505760))

(assert (= (and b!6505760 (not res!2671661)) b!6505766))

(assert (= (and b!6505766 (not res!2671676)) b!6505768))

(assert (= (and b!6505768 (not res!2671686)) b!6505763))

(assert (= (and b!6505763 (not res!2671679)) b!6505754))

(assert (= (and b!6505754 c!1193104) b!6505757))

(assert (= (and b!6505754 (not c!1193104)) b!6505748))

(assert (= (and b!6505757 (not res!2671688)) b!6505762))

(assert (= (and b!6505754 (not res!2671675)) b!6505743))

(assert (= (and b!6505743 res!2671683) b!6505742))

(assert (= (and b!6505743 (not res!2671672)) b!6505755))

(assert (= (and b!6505755 (not res!2671660)) b!6505765))

(assert (= (and b!6505765 (not res!2671663)) b!6505781))

(assert (= (and b!6505781 (not res!2671662)) b!6505776))

(assert (= (and b!6505776 (not res!2671681)) b!6505771))

(assert (= (and b!6505771 (not res!2671673)) b!6505750))

(assert (= (and b!6505750 (not res!2671668)) b!6505777))

(assert (= (and b!6505777 (not res!2671690)) b!6505773))

(assert (= (and b!6505773 (not res!2671665)) b!6505753))

(assert (= (and b!6505753 (not res!2671682)) b!6505759))

(assert (= (and b!6505759 (not res!2671677)) b!6505749))

(assert (= (and b!6505749 (not res!2671674)) b!6505774))

(assert (= (and b!6505774 (not res!2671669)) b!6505756))

(assert (= (and b!6505756 res!2671667) b!6505751))

(assert (= (and b!6505756 (not res!2671689)) b!6505764))

(assert (= (and b!6505764 (not res!2671678)) b!6505772))

(assert (= (and b!6505772 (not res!2671684)) b!6505744))

(assert (= (and start!639194 ((_ is ElementMatch!16385) r!7292)) b!6505746))

(assert (= (and start!639194 ((_ is Concat!25230) r!7292)) b!6505769))

(assert (= (and start!639194 ((_ is Star!16385) r!7292)) b!6505745))

(assert (= (and start!639194 ((_ is Union!16385) r!7292)) b!6505758))

(assert (= (and start!639194 condSetEmpty!44371) setIsEmpty!44371))

(assert (= (and start!639194 (not condSetEmpty!44371)) setNonEmpty!44371))

(assert (= setNonEmpty!44371 b!6505761))

(assert (= b!6505747 b!6505770))

(assert (= (and start!639194 ((_ is Cons!65331) zl!343)) b!6505747))

(assert (= (and start!639194 ((_ is Cons!65332) s!2326)) b!6505767))

(declare-fun m!7292746 () Bool)

(assert (=> b!6505744 m!7292746))

(declare-fun m!7292748 () Bool)

(assert (=> b!6505747 m!7292748))

(declare-fun m!7292750 () Bool)

(assert (=> b!6505762 m!7292750))

(declare-fun m!7292752 () Bool)

(assert (=> b!6505780 m!7292752))

(declare-fun m!7292754 () Bool)

(assert (=> b!6505763 m!7292754))

(assert (=> b!6505751 m!7292750))

(declare-fun m!7292756 () Bool)

(assert (=> b!6505768 m!7292756))

(declare-fun m!7292758 () Bool)

(assert (=> b!6505768 m!7292758))

(assert (=> b!6505768 m!7292756))

(declare-fun m!7292760 () Bool)

(assert (=> b!6505768 m!7292760))

(declare-fun m!7292762 () Bool)

(assert (=> b!6505768 m!7292762))

(declare-fun m!7292764 () Bool)

(assert (=> b!6505768 m!7292764))

(assert (=> b!6505768 m!7292762))

(declare-fun m!7292766 () Bool)

(assert (=> b!6505768 m!7292766))

(declare-fun m!7292768 () Bool)

(assert (=> start!639194 m!7292768))

(declare-fun m!7292770 () Bool)

(assert (=> b!6505777 m!7292770))

(declare-fun m!7292772 () Bool)

(assert (=> b!6505753 m!7292772))

(declare-fun m!7292774 () Bool)

(assert (=> b!6505759 m!7292774))

(declare-fun m!7292776 () Bool)

(assert (=> b!6505759 m!7292776))

(declare-fun m!7292778 () Bool)

(assert (=> b!6505759 m!7292778))

(declare-fun m!7292780 () Bool)

(assert (=> b!6505765 m!7292780))

(declare-fun m!7292782 () Bool)

(assert (=> b!6505749 m!7292782))

(declare-fun m!7292784 () Bool)

(assert (=> b!6505741 m!7292784))

(declare-fun m!7292786 () Bool)

(assert (=> b!6505778 m!7292786))

(declare-fun m!7292788 () Bool)

(assert (=> b!6505778 m!7292788))

(declare-fun m!7292790 () Bool)

(assert (=> b!6505778 m!7292790))

(declare-fun m!7292792 () Bool)

(assert (=> b!6505760 m!7292792))

(assert (=> b!6505760 m!7292792))

(declare-fun m!7292794 () Bool)

(assert (=> b!6505760 m!7292794))

(declare-fun m!7292796 () Bool)

(assert (=> b!6505772 m!7292796))

(declare-fun m!7292798 () Bool)

(assert (=> b!6505772 m!7292798))

(declare-fun m!7292800 () Bool)

(assert (=> b!6505772 m!7292800))

(declare-fun m!7292802 () Bool)

(assert (=> b!6505772 m!7292802))

(declare-fun m!7292804 () Bool)

(assert (=> b!6505772 m!7292804))

(declare-fun m!7292806 () Bool)

(assert (=> b!6505772 m!7292806))

(declare-fun m!7292808 () Bool)

(assert (=> b!6505742 m!7292808))

(declare-fun m!7292810 () Bool)

(assert (=> b!6505776 m!7292810))

(declare-fun m!7292812 () Bool)

(assert (=> b!6505776 m!7292812))

(declare-fun m!7292814 () Bool)

(assert (=> b!6505756 m!7292814))

(declare-fun m!7292816 () Bool)

(assert (=> setNonEmpty!44371 m!7292816))

(declare-fun m!7292818 () Bool)

(assert (=> b!6505754 m!7292818))

(declare-fun m!7292820 () Bool)

(assert (=> b!6505754 m!7292820))

(declare-fun m!7292822 () Bool)

(assert (=> b!6505754 m!7292822))

(declare-fun m!7292824 () Bool)

(assert (=> b!6505754 m!7292824))

(declare-fun m!7292826 () Bool)

(assert (=> b!6505754 m!7292826))

(declare-fun m!7292828 () Bool)

(assert (=> b!6505754 m!7292828))

(declare-fun m!7292830 () Bool)

(assert (=> b!6505754 m!7292830))

(declare-fun m!7292832 () Bool)

(assert (=> b!6505752 m!7292832))

(declare-fun m!7292834 () Bool)

(assert (=> b!6505775 m!7292834))

(declare-fun m!7292836 () Bool)

(assert (=> b!6505781 m!7292836))

(declare-fun m!7292838 () Bool)

(assert (=> b!6505781 m!7292838))

(declare-fun m!7292840 () Bool)

(assert (=> b!6505781 m!7292840))

(declare-fun m!7292842 () Bool)

(assert (=> b!6505781 m!7292842))

(declare-fun m!7292844 () Bool)

(assert (=> b!6505781 m!7292844))

(declare-fun m!7292846 () Bool)

(assert (=> b!6505773 m!7292846))

(declare-fun m!7292848 () Bool)

(assert (=> b!6505773 m!7292848))

(declare-fun m!7292850 () Bool)

(assert (=> b!6505773 m!7292850))

(declare-fun m!7292852 () Bool)

(assert (=> b!6505773 m!7292852))

(declare-fun m!7292854 () Bool)

(assert (=> b!6505773 m!7292854))

(declare-fun m!7292856 () Bool)

(assert (=> b!6505773 m!7292856))

(declare-fun m!7292858 () Bool)

(assert (=> b!6505773 m!7292858))

(declare-fun m!7292860 () Bool)

(assert (=> b!6505773 m!7292860))

(declare-fun m!7292862 () Bool)

(assert (=> b!6505773 m!7292862))

(declare-fun m!7292864 () Bool)

(assert (=> b!6505757 m!7292864))

(assert (=> b!6505757 m!7292814))

(declare-fun m!7292866 () Bool)

(assert (=> b!6505757 m!7292866))

(check-sat (not b!6505780) (not b!6505777) (not b!6505760) (not b!6505770) (not b!6505752) (not b!6505775) (not b!6505778) (not b!6505753) (not b!6505768) (not b!6505776) (not b!6505744) (not b!6505767) (not b!6505772) (not b!6505751) (not b!6505756) (not b!6505759) (not setNonEmpty!44371) (not b!6505749) (not b!6505742) (not start!639194) (not b!6505757) (not b!6505763) (not b!6505745) (not b!6505762) (not b!6505761) (not b!6505754) (not b!6505781) tp_is_empty!42023 (not b!6505747) (not b!6505773) (not b!6505741) (not b!6505769) (not b!6505765) (not b!6505758))
(check-sat)
(get-model)

(declare-fun bs!1652499 () Bool)

(declare-fun d!2041240 () Bool)

(assert (= bs!1652499 (and d!2041240 b!6505772)))

(declare-fun lambda!360745 () Int)

(assert (=> bs!1652499 (= lambda!360745 lambda!360724)))

(declare-fun forall!15566 (List!65454 Int) Bool)

(assert (=> d!2041240 (= (inv!84209 setElem!44371) (forall!15566 (exprs!6269 setElem!44371) lambda!360745))))

(declare-fun bs!1652500 () Bool)

(assert (= bs!1652500 d!2041240))

(declare-fun m!7292972 () Bool)

(assert (=> bs!1652500 m!7292972))

(assert (=> setNonEmpty!44371 d!2041240))

(declare-fun bs!1652501 () Bool)

(declare-fun d!2041250 () Bool)

(assert (= bs!1652501 (and d!2041250 b!6505772)))

(declare-fun lambda!360746 () Int)

(assert (=> bs!1652501 (= lambda!360746 lambda!360724)))

(declare-fun bs!1652502 () Bool)

(assert (= bs!1652502 (and d!2041250 d!2041240)))

(assert (=> bs!1652502 (= lambda!360746 lambda!360745)))

(assert (=> d!2041250 (= (inv!84209 (h!71779 zl!343)) (forall!15566 (exprs!6269 (h!71779 zl!343)) lambda!360746))))

(declare-fun bs!1652503 () Bool)

(assert (= bs!1652503 d!2041250))

(declare-fun m!7292974 () Bool)

(assert (=> bs!1652503 m!7292974))

(assert (=> b!6505747 d!2041250))

(declare-fun b!6505973 () Bool)

(declare-fun lt!2392873 () Unit!158875)

(declare-fun lt!2392872 () Unit!158875)

(assert (=> b!6505973 (= lt!2392873 lt!2392872)))

(declare-fun ++!14475 (List!65456 List!65456) List!65456)

(assert (=> b!6505973 (= (++!14475 (++!14475 Nil!65332 (Cons!65332 (h!71780 s!2326) Nil!65332)) (t!379092 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2538 (List!65456 C!33040 List!65456 List!65456) Unit!158875)

(assert (=> b!6505973 (= lt!2392872 (lemmaMoveElementToOtherListKeepsConcatEq!2538 Nil!65332 (h!71780 s!2326) (t!379092 s!2326) s!2326))))

(declare-fun e!3942047 () Option!16276)

(assert (=> b!6505973 (= e!3942047 (findConcatSeparation!2690 (regOne!33282 r!7292) (regTwo!33282 r!7292) (++!14475 Nil!65332 (Cons!65332 (h!71780 s!2326) Nil!65332)) (t!379092 s!2326) s!2326))))

(declare-fun b!6505974 () Bool)

(declare-fun e!3942048 () Option!16276)

(assert (=> b!6505974 (= e!3942048 (Some!16275 (tuple2!66729 Nil!65332 s!2326)))))

(declare-fun b!6505975 () Bool)

(declare-fun e!3942051 () Bool)

(declare-fun lt!2392874 () Option!16276)

(declare-fun get!22661 (Option!16276) tuple2!66728)

(assert (=> b!6505975 (= e!3942051 (= (++!14475 (_1!36667 (get!22661 lt!2392874)) (_2!36667 (get!22661 lt!2392874))) s!2326))))

(declare-fun b!6505976 () Bool)

(declare-fun res!2671786 () Bool)

(assert (=> b!6505976 (=> (not res!2671786) (not e!3942051))))

(assert (=> b!6505976 (= res!2671786 (matchR!8568 (regTwo!33282 r!7292) (_2!36667 (get!22661 lt!2392874))))))

(declare-fun b!6505977 () Bool)

(assert (=> b!6505977 (= e!3942048 e!3942047)))

(declare-fun c!1193153 () Bool)

(assert (=> b!6505977 (= c!1193153 ((_ is Nil!65332) s!2326))))

(declare-fun d!2041252 () Bool)

(declare-fun e!3942049 () Bool)

(assert (=> d!2041252 e!3942049))

(declare-fun res!2671787 () Bool)

(assert (=> d!2041252 (=> res!2671787 e!3942049)))

(assert (=> d!2041252 (= res!2671787 e!3942051)))

(declare-fun res!2671785 () Bool)

(assert (=> d!2041252 (=> (not res!2671785) (not e!3942051))))

(assert (=> d!2041252 (= res!2671785 (isDefined!12979 lt!2392874))))

(assert (=> d!2041252 (= lt!2392874 e!3942048)))

(declare-fun c!1193154 () Bool)

(declare-fun e!3942050 () Bool)

(assert (=> d!2041252 (= c!1193154 e!3942050)))

(declare-fun res!2671784 () Bool)

(assert (=> d!2041252 (=> (not res!2671784) (not e!3942050))))

(assert (=> d!2041252 (= res!2671784 (matchR!8568 (regOne!33282 r!7292) Nil!65332))))

(assert (=> d!2041252 (validRegex!8121 (regOne!33282 r!7292))))

(assert (=> d!2041252 (= (findConcatSeparation!2690 (regOne!33282 r!7292) (regTwo!33282 r!7292) Nil!65332 s!2326 s!2326) lt!2392874)))

(declare-fun b!6505978 () Bool)

(assert (=> b!6505978 (= e!3942047 None!16275)))

(declare-fun b!6505979 () Bool)

(declare-fun res!2671788 () Bool)

(assert (=> b!6505979 (=> (not res!2671788) (not e!3942051))))

(assert (=> b!6505979 (= res!2671788 (matchR!8568 (regOne!33282 r!7292) (_1!36667 (get!22661 lt!2392874))))))

(declare-fun b!6505980 () Bool)

(assert (=> b!6505980 (= e!3942050 (matchR!8568 (regTwo!33282 r!7292) s!2326))))

(declare-fun b!6505981 () Bool)

(assert (=> b!6505981 (= e!3942049 (not (isDefined!12979 lt!2392874)))))

(assert (= (and d!2041252 res!2671784) b!6505980))

(assert (= (and d!2041252 c!1193154) b!6505974))

(assert (= (and d!2041252 (not c!1193154)) b!6505977))

(assert (= (and b!6505977 c!1193153) b!6505978))

(assert (= (and b!6505977 (not c!1193153)) b!6505973))

(assert (= (and d!2041252 res!2671785) b!6505979))

(assert (= (and b!6505979 res!2671788) b!6505976))

(assert (= (and b!6505976 res!2671786) b!6505975))

(assert (= (and d!2041252 (not res!2671787)) b!6505981))

(declare-fun m!7293024 () Bool)

(assert (=> b!6505976 m!7293024))

(declare-fun m!7293026 () Bool)

(assert (=> b!6505976 m!7293026))

(declare-fun m!7293028 () Bool)

(assert (=> d!2041252 m!7293028))

(declare-fun m!7293030 () Bool)

(assert (=> d!2041252 m!7293030))

(declare-fun m!7293032 () Bool)

(assert (=> d!2041252 m!7293032))

(assert (=> b!6505981 m!7293028))

(assert (=> b!6505979 m!7293024))

(declare-fun m!7293034 () Bool)

(assert (=> b!6505979 m!7293034))

(assert (=> b!6505975 m!7293024))

(declare-fun m!7293036 () Bool)

(assert (=> b!6505975 m!7293036))

(declare-fun m!7293038 () Bool)

(assert (=> b!6505973 m!7293038))

(assert (=> b!6505973 m!7293038))

(declare-fun m!7293040 () Bool)

(assert (=> b!6505973 m!7293040))

(declare-fun m!7293042 () Bool)

(assert (=> b!6505973 m!7293042))

(assert (=> b!6505973 m!7293038))

(declare-fun m!7293044 () Bool)

(assert (=> b!6505973 m!7293044))

(declare-fun m!7293046 () Bool)

(assert (=> b!6505980 m!7293046))

(assert (=> b!6505768 d!2041252))

(declare-fun d!2041270 () Bool)

(declare-fun choose!48326 (Int) Bool)

(assert (=> d!2041270 (= (Exists!3455 lambda!360721) (choose!48326 lambda!360721))))

(declare-fun bs!1652516 () Bool)

(assert (= bs!1652516 d!2041270))

(declare-fun m!7293048 () Bool)

(assert (=> bs!1652516 m!7293048))

(assert (=> b!6505768 d!2041270))

(declare-fun d!2041272 () Bool)

(assert (=> d!2041272 (= (Exists!3455 lambda!360720) (choose!48326 lambda!360720))))

(declare-fun bs!1652517 () Bool)

(assert (= bs!1652517 d!2041272))

(declare-fun m!7293050 () Bool)

(assert (=> bs!1652517 m!7293050))

(assert (=> b!6505768 d!2041272))

(declare-fun bs!1652530 () Bool)

(declare-fun d!2041274 () Bool)

(assert (= bs!1652530 (and d!2041274 b!6505768)))

(declare-fun lambda!360767 () Int)

(assert (=> bs!1652530 (= lambda!360767 lambda!360720)))

(assert (=> bs!1652530 (not (= lambda!360767 lambda!360721))))

(assert (=> d!2041274 true))

(assert (=> d!2041274 true))

(assert (=> d!2041274 true))

(assert (=> d!2041274 (= (isDefined!12979 (findConcatSeparation!2690 (regOne!33282 r!7292) (regTwo!33282 r!7292) Nil!65332 s!2326 s!2326)) (Exists!3455 lambda!360767))))

(declare-fun lt!2392887 () Unit!158875)

(declare-fun choose!48327 (Regex!16385 Regex!16385 List!65456) Unit!158875)

(assert (=> d!2041274 (= lt!2392887 (choose!48327 (regOne!33282 r!7292) (regTwo!33282 r!7292) s!2326))))

(assert (=> d!2041274 (validRegex!8121 (regOne!33282 r!7292))))

(assert (=> d!2041274 (= (lemmaFindConcatSeparationEquivalentToExists!2454 (regOne!33282 r!7292) (regTwo!33282 r!7292) s!2326) lt!2392887)))

(declare-fun bs!1652531 () Bool)

(assert (= bs!1652531 d!2041274))

(declare-fun m!7293094 () Bool)

(assert (=> bs!1652531 m!7293094))

(assert (=> bs!1652531 m!7292762))

(assert (=> bs!1652531 m!7292764))

(assert (=> bs!1652531 m!7293032))

(declare-fun m!7293096 () Bool)

(assert (=> bs!1652531 m!7293096))

(assert (=> bs!1652531 m!7292762))

(assert (=> b!6505768 d!2041274))

(declare-fun bs!1652546 () Bool)

(declare-fun d!2041284 () Bool)

(assert (= bs!1652546 (and d!2041284 b!6505768)))

(declare-fun lambda!360774 () Int)

(assert (=> bs!1652546 (= lambda!360774 lambda!360720)))

(assert (=> bs!1652546 (not (= lambda!360774 lambda!360721))))

(declare-fun bs!1652547 () Bool)

(assert (= bs!1652547 (and d!2041284 d!2041274)))

(assert (=> bs!1652547 (= lambda!360774 lambda!360767)))

(assert (=> d!2041284 true))

(assert (=> d!2041284 true))

(assert (=> d!2041284 true))

(declare-fun lambda!360775 () Int)

(assert (=> bs!1652546 (not (= lambda!360775 lambda!360720))))

(assert (=> bs!1652546 (= lambda!360775 lambda!360721)))

(assert (=> bs!1652547 (not (= lambda!360775 lambda!360767))))

(declare-fun bs!1652549 () Bool)

(assert (= bs!1652549 d!2041284))

(assert (=> bs!1652549 (not (= lambda!360775 lambda!360774))))

(assert (=> d!2041284 true))

(assert (=> d!2041284 true))

(assert (=> d!2041284 true))

(assert (=> d!2041284 (= (Exists!3455 lambda!360774) (Exists!3455 lambda!360775))))

(declare-fun lt!2392892 () Unit!158875)

(declare-fun choose!48328 (Regex!16385 Regex!16385 List!65456) Unit!158875)

(assert (=> d!2041284 (= lt!2392892 (choose!48328 (regOne!33282 r!7292) (regTwo!33282 r!7292) s!2326))))

(assert (=> d!2041284 (validRegex!8121 (regOne!33282 r!7292))))

(assert (=> d!2041284 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1992 (regOne!33282 r!7292) (regTwo!33282 r!7292) s!2326) lt!2392892)))

(declare-fun m!7293168 () Bool)

(assert (=> bs!1652549 m!7293168))

(declare-fun m!7293170 () Bool)

(assert (=> bs!1652549 m!7293170))

(declare-fun m!7293172 () Bool)

(assert (=> bs!1652549 m!7293172))

(assert (=> bs!1652549 m!7293032))

(assert (=> b!6505768 d!2041284))

(declare-fun d!2041312 () Bool)

(declare-fun isEmpty!37541 (Option!16276) Bool)

(assert (=> d!2041312 (= (isDefined!12979 (findConcatSeparation!2690 (regOne!33282 r!7292) (regTwo!33282 r!7292) Nil!65332 s!2326 s!2326)) (not (isEmpty!37541 (findConcatSeparation!2690 (regOne!33282 r!7292) (regTwo!33282 r!7292) Nil!65332 s!2326 s!2326))))))

(declare-fun bs!1652550 () Bool)

(assert (= bs!1652550 d!2041312))

(assert (=> bs!1652550 m!7292762))

(declare-fun m!7293174 () Bool)

(assert (=> bs!1652550 m!7293174))

(assert (=> b!6505768 d!2041312))

(declare-fun d!2041314 () Bool)

(declare-fun c!1193227 () Bool)

(declare-fun isEmpty!37542 (List!65456) Bool)

(assert (=> d!2041314 (= c!1193227 (isEmpty!37542 s!2326))))

(declare-fun e!3942172 () Bool)

(assert (=> d!2041314 (= (matchZipper!2397 z!1189 s!2326) e!3942172)))

(declare-fun b!6506184 () Bool)

(declare-fun nullableZipper!2140 ((InoxSet Context!11538)) Bool)

(assert (=> b!6506184 (= e!3942172 (nullableZipper!2140 z!1189))))

(declare-fun b!6506185 () Bool)

(declare-fun head!13241 (List!65456) C!33040)

(declare-fun tail!12326 (List!65456) List!65456)

(assert (=> b!6506185 (= e!3942172 (matchZipper!2397 (derivationStepZipper!2351 z!1189 (head!13241 s!2326)) (tail!12326 s!2326)))))

(assert (= (and d!2041314 c!1193227) b!6506184))

(assert (= (and d!2041314 (not c!1193227)) b!6506185))

(declare-fun m!7293190 () Bool)

(assert (=> d!2041314 m!7293190))

(declare-fun m!7293192 () Bool)

(assert (=> b!6506184 m!7293192))

(declare-fun m!7293194 () Bool)

(assert (=> b!6506185 m!7293194))

(assert (=> b!6506185 m!7293194))

(declare-fun m!7293196 () Bool)

(assert (=> b!6506185 m!7293196))

(declare-fun m!7293198 () Bool)

(assert (=> b!6506185 m!7293198))

(assert (=> b!6506185 m!7293196))

(assert (=> b!6506185 m!7293198))

(declare-fun m!7293200 () Bool)

(assert (=> b!6506185 m!7293200))

(assert (=> b!6505749 d!2041314))

(declare-fun d!2041322 () Bool)

(declare-fun c!1193228 () Bool)

(assert (=> d!2041322 (= c!1193228 (isEmpty!37542 (t!379092 s!2326)))))

(declare-fun e!3942173 () Bool)

(assert (=> d!2041322 (= (matchZipper!2397 lt!2392818 (t!379092 s!2326)) e!3942173)))

(declare-fun b!6506186 () Bool)

(assert (=> b!6506186 (= e!3942173 (nullableZipper!2140 lt!2392818))))

(declare-fun b!6506187 () Bool)

(assert (=> b!6506187 (= e!3942173 (matchZipper!2397 (derivationStepZipper!2351 lt!2392818 (head!13241 (t!379092 s!2326))) (tail!12326 (t!379092 s!2326))))))

(assert (= (and d!2041322 c!1193228) b!6506186))

(assert (= (and d!2041322 (not c!1193228)) b!6506187))

(declare-fun m!7293202 () Bool)

(assert (=> d!2041322 m!7293202))

(declare-fun m!7293204 () Bool)

(assert (=> b!6506186 m!7293204))

(declare-fun m!7293206 () Bool)

(assert (=> b!6506187 m!7293206))

(assert (=> b!6506187 m!7293206))

(declare-fun m!7293208 () Bool)

(assert (=> b!6506187 m!7293208))

(declare-fun m!7293210 () Bool)

(assert (=> b!6506187 m!7293210))

(assert (=> b!6506187 m!7293208))

(assert (=> b!6506187 m!7293210))

(declare-fun m!7293212 () Bool)

(assert (=> b!6506187 m!7293212))

(assert (=> b!6505751 d!2041322))

(declare-fun d!2041324 () Bool)

(declare-fun dynLambda!25957 (Int Context!11538) Context!11538)

(assert (=> d!2041324 (= (map!14886 lt!2392800 lambda!360723) (store ((as const (Array Context!11538 Bool)) false) (dynLambda!25957 lambda!360723 lt!2392803) true))))

(declare-fun lt!2392903 () Unit!158875)

(declare-fun choose!48329 ((InoxSet Context!11538) Context!11538 Int) Unit!158875)

(assert (=> d!2041324 (= lt!2392903 (choose!48329 lt!2392800 lt!2392803 lambda!360723))))

(assert (=> d!2041324 (= lt!2392800 (store ((as const (Array Context!11538 Bool)) false) lt!2392803 true))))

(assert (=> d!2041324 (= (lemmaMapOnSingletonSet!168 lt!2392800 lt!2392803 lambda!360723) lt!2392903)))

(declare-fun b_lambda!246331 () Bool)

(assert (=> (not b_lambda!246331) (not d!2041324)))

(declare-fun bs!1652564 () Bool)

(assert (= bs!1652564 d!2041324))

(declare-fun m!7293254 () Bool)

(assert (=> bs!1652564 m!7293254))

(declare-fun m!7293256 () Bool)

(assert (=> bs!1652564 m!7293256))

(assert (=> bs!1652564 m!7292806))

(assert (=> bs!1652564 m!7293254))

(assert (=> bs!1652564 m!7292854))

(declare-fun m!7293258 () Bool)

(assert (=> bs!1652564 m!7293258))

(assert (=> b!6505772 d!2041324))

(declare-fun d!2041342 () Bool)

(declare-fun e!3942210 () Bool)

(assert (=> d!2041342 e!3942210))

(declare-fun res!2671856 () Bool)

(assert (=> d!2041342 (=> (not res!2671856) (not e!3942210))))

(declare-fun lt!2392907 () List!65454)

(declare-fun content!12471 (List!65454) (InoxSet Regex!16385))

(assert (=> d!2041342 (= res!2671856 (= (content!12471 lt!2392907) ((_ map or) (content!12471 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330)) (content!12471 lt!2392792))))))

(declare-fun e!3942211 () List!65454)

(assert (=> d!2041342 (= lt!2392907 e!3942211)))

(declare-fun c!1193235 () Bool)

(assert (=> d!2041342 (= c!1193235 ((_ is Nil!65330) (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330)))))

(assert (=> d!2041342 (= (++!14473 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lt!2392792) lt!2392907)))

(declare-fun b!6506265 () Bool)

(declare-fun res!2671857 () Bool)

(assert (=> b!6506265 (=> (not res!2671857) (not e!3942210))))

(declare-fun size!40444 (List!65454) Int)

(assert (=> b!6506265 (= res!2671857 (= (size!40444 lt!2392907) (+ (size!40444 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330)) (size!40444 lt!2392792))))))

(declare-fun b!6506264 () Bool)

(assert (=> b!6506264 (= e!3942211 (Cons!65330 (h!71778 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330)) (++!14473 (t!379090 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330)) lt!2392792)))))

(declare-fun b!6506266 () Bool)

(assert (=> b!6506266 (= e!3942210 (or (not (= lt!2392792 Nil!65330)) (= lt!2392907 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330))))))

(declare-fun b!6506263 () Bool)

(assert (=> b!6506263 (= e!3942211 lt!2392792)))

(assert (= (and d!2041342 c!1193235) b!6506263))

(assert (= (and d!2041342 (not c!1193235)) b!6506264))

(assert (= (and d!2041342 res!2671856) b!6506265))

(assert (= (and b!6506265 res!2671857) b!6506266))

(declare-fun m!7293266 () Bool)

(assert (=> d!2041342 m!7293266))

(declare-fun m!7293268 () Bool)

(assert (=> d!2041342 m!7293268))

(declare-fun m!7293270 () Bool)

(assert (=> d!2041342 m!7293270))

(declare-fun m!7293272 () Bool)

(assert (=> b!6506265 m!7293272))

(declare-fun m!7293274 () Bool)

(assert (=> b!6506265 m!7293274))

(declare-fun m!7293276 () Bool)

(assert (=> b!6506265 m!7293276))

(declare-fun m!7293278 () Bool)

(assert (=> b!6506264 m!7293278))

(assert (=> b!6505772 d!2041342))

(declare-fun d!2041354 () Bool)

(declare-fun choose!48330 ((InoxSet Context!11538) Int) (InoxSet Context!11538))

(assert (=> d!2041354 (= (map!14886 lt!2392800 lambda!360723) (choose!48330 lt!2392800 lambda!360723))))

(declare-fun bs!1652570 () Bool)

(assert (= bs!1652570 d!2041354))

(declare-fun m!7293280 () Bool)

(assert (=> bs!1652570 m!7293280))

(assert (=> b!6505772 d!2041354))

(declare-fun bs!1652571 () Bool)

(declare-fun d!2041356 () Bool)

(assert (= bs!1652571 (and d!2041356 b!6505772)))

(declare-fun lambda!360781 () Int)

(assert (=> bs!1652571 (= (= (exprs!6269 lt!2392811) lt!2392792) (= lambda!360781 lambda!360723))))

(assert (=> d!2041356 true))

(assert (=> d!2041356 (= (appendTo!146 lt!2392800 lt!2392811) (map!14886 lt!2392800 lambda!360781))))

(declare-fun bs!1652572 () Bool)

(assert (= bs!1652572 d!2041356))

(declare-fun m!7293282 () Bool)

(assert (=> bs!1652572 m!7293282))

(assert (=> b!6505772 d!2041356))

(declare-fun d!2041358 () Bool)

(assert (=> d!2041358 (forall!15566 (++!14473 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lt!2392792) lambda!360724)))

(declare-fun lt!2392912 () Unit!158875)

(declare-fun choose!48331 (List!65454 List!65454 Int) Unit!158875)

(assert (=> d!2041358 (= lt!2392912 (choose!48331 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lt!2392792 lambda!360724))))

(assert (=> d!2041358 (forall!15566 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lambda!360724)))

(assert (=> d!2041358 (= (lemmaConcatPreservesForall!358 (Cons!65330 (reg!16714 (regOne!33282 r!7292)) Nil!65330) lt!2392792 lambda!360724) lt!2392912)))

(declare-fun bs!1652573 () Bool)

(assert (= bs!1652573 d!2041358))

(assert (=> bs!1652573 m!7292804))

(assert (=> bs!1652573 m!7292804))

(declare-fun m!7293284 () Bool)

(assert (=> bs!1652573 m!7293284))

(declare-fun m!7293286 () Bool)

(assert (=> bs!1652573 m!7293286))

(declare-fun m!7293288 () Bool)

(assert (=> bs!1652573 m!7293288))

(assert (=> b!6505772 d!2041358))

(declare-fun d!2041360 () Bool)

(declare-fun e!3942214 () Bool)

(assert (=> d!2041360 e!3942214))

(declare-fun res!2671860 () Bool)

(assert (=> d!2041360 (=> (not res!2671860) (not e!3942214))))

(declare-fun lt!2392915 () List!65455)

(declare-fun noDuplicate!2201 (List!65455) Bool)

(assert (=> d!2041360 (= res!2671860 (noDuplicate!2201 lt!2392915))))

(declare-fun choose!48332 ((InoxSet Context!11538)) List!65455)

(assert (=> d!2041360 (= lt!2392915 (choose!48332 z!1189))))

(assert (=> d!2041360 (= (toList!10169 z!1189) lt!2392915)))

(declare-fun b!6506271 () Bool)

(declare-fun content!12472 (List!65455) (InoxSet Context!11538))

(assert (=> b!6506271 (= e!3942214 (= (content!12472 lt!2392915) z!1189))))

(assert (= (and d!2041360 res!2671860) b!6506271))

(declare-fun m!7293290 () Bool)

(assert (=> d!2041360 m!7293290))

(declare-fun m!7293292 () Bool)

(assert (=> d!2041360 m!7293292))

(declare-fun m!7293294 () Bool)

(assert (=> b!6506271 m!7293294))

(assert (=> b!6505752 d!2041360))

(declare-fun d!2041362 () Bool)

(declare-fun dynLambda!25958 (Int Context!11538) (InoxSet Context!11538))

(assert (=> d!2041362 (= (flatMap!1890 lt!2392800 lambda!360722) (dynLambda!25958 lambda!360722 lt!2392803))))

(declare-fun lt!2392918 () Unit!158875)

(declare-fun choose!48333 ((InoxSet Context!11538) Context!11538 Int) Unit!158875)

(assert (=> d!2041362 (= lt!2392918 (choose!48333 lt!2392800 lt!2392803 lambda!360722))))

(assert (=> d!2041362 (= lt!2392800 (store ((as const (Array Context!11538 Bool)) false) lt!2392803 true))))

(assert (=> d!2041362 (= (lemmaFlatMapOnSingletonSet!1416 lt!2392800 lt!2392803 lambda!360722) lt!2392918)))

(declare-fun b_lambda!246343 () Bool)

(assert (=> (not b_lambda!246343) (not d!2041362)))

(declare-fun bs!1652574 () Bool)

(assert (= bs!1652574 d!2041362))

(assert (=> bs!1652574 m!7292858))

(declare-fun m!7293296 () Bool)

(assert (=> bs!1652574 m!7293296))

(declare-fun m!7293298 () Bool)

(assert (=> bs!1652574 m!7293298))

(assert (=> bs!1652574 m!7292854))

(assert (=> b!6505773 d!2041362))

(declare-fun d!2041364 () Bool)

(declare-fun choose!48334 ((InoxSet Context!11538) Int) (InoxSet Context!11538))

(assert (=> d!2041364 (= (flatMap!1890 lt!2392800 lambda!360722) (choose!48334 lt!2392800 lambda!360722))))

(declare-fun bs!1652575 () Bool)

(assert (= bs!1652575 d!2041364))

(declare-fun m!7293300 () Bool)

(assert (=> bs!1652575 m!7293300))

(assert (=> b!6505773 d!2041364))

(declare-fun d!2041366 () Bool)

(assert (=> d!2041366 (= (flatMap!1890 lt!2392806 lambda!360722) (choose!48334 lt!2392806 lambda!360722))))

(declare-fun bs!1652576 () Bool)

(assert (= bs!1652576 d!2041366))

(declare-fun m!7293302 () Bool)

(assert (=> bs!1652576 m!7293302))

(assert (=> b!6505773 d!2041366))

(declare-fun b!6506282 () Bool)

(declare-fun e!3942222 () (InoxSet Context!11538))

(declare-fun call!563937 () (InoxSet Context!11538))

(assert (=> b!6506282 (= e!3942222 ((_ map or) call!563937 (derivationStepZipperUp!1559 (Context!11539 (t!379090 (exprs!6269 lt!2392803))) (h!71780 s!2326))))))

(declare-fun d!2041368 () Bool)

(declare-fun c!1193242 () Bool)

(declare-fun e!3942221 () Bool)

(assert (=> d!2041368 (= c!1193242 e!3942221)))

(declare-fun res!2671863 () Bool)

(assert (=> d!2041368 (=> (not res!2671863) (not e!3942221))))

(assert (=> d!2041368 (= res!2671863 ((_ is Cons!65330) (exprs!6269 lt!2392803)))))

(assert (=> d!2041368 (= (derivationStepZipperUp!1559 lt!2392803 (h!71780 s!2326)) e!3942222)))

(declare-fun b!6506283 () Bool)

(declare-fun e!3942223 () (InoxSet Context!11538))

(assert (=> b!6506283 (= e!3942223 call!563937)))

(declare-fun b!6506284 () Bool)

(assert (=> b!6506284 (= e!3942221 (nullable!6378 (h!71778 (exprs!6269 lt!2392803))))))

(declare-fun b!6506285 () Bool)

(assert (=> b!6506285 (= e!3942222 e!3942223)))

(declare-fun c!1193241 () Bool)

(assert (=> b!6506285 (= c!1193241 ((_ is Cons!65330) (exprs!6269 lt!2392803)))))

(declare-fun bm!563932 () Bool)

(assert (=> bm!563932 (= call!563937 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 lt!2392803)) (Context!11539 (t!379090 (exprs!6269 lt!2392803))) (h!71780 s!2326)))))

(declare-fun b!6506286 () Bool)

(assert (=> b!6506286 (= e!3942223 ((as const (Array Context!11538 Bool)) false))))

(assert (= (and d!2041368 res!2671863) b!6506284))

(assert (= (and d!2041368 c!1193242) b!6506282))

(assert (= (and d!2041368 (not c!1193242)) b!6506285))

(assert (= (and b!6506285 c!1193241) b!6506283))

(assert (= (and b!6506285 (not c!1193241)) b!6506286))

(assert (= (or b!6506282 b!6506283) bm!563932))

(declare-fun m!7293304 () Bool)

(assert (=> b!6506282 m!7293304))

(declare-fun m!7293306 () Bool)

(assert (=> b!6506284 m!7293306))

(declare-fun m!7293308 () Bool)

(assert (=> bm!563932 m!7293308))

(assert (=> b!6505773 d!2041368))

(declare-fun d!2041370 () Bool)

(assert (=> d!2041370 (= (flatMap!1890 lt!2392806 lambda!360722) (dynLambda!25958 lambda!360722 lt!2392811))))

(declare-fun lt!2392919 () Unit!158875)

(assert (=> d!2041370 (= lt!2392919 (choose!48333 lt!2392806 lt!2392811 lambda!360722))))

(assert (=> d!2041370 (= lt!2392806 (store ((as const (Array Context!11538 Bool)) false) lt!2392811 true))))

(assert (=> d!2041370 (= (lemmaFlatMapOnSingletonSet!1416 lt!2392806 lt!2392811 lambda!360722) lt!2392919)))

(declare-fun b_lambda!246345 () Bool)

(assert (=> (not b_lambda!246345) (not d!2041370)))

(declare-fun bs!1652577 () Bool)

(assert (= bs!1652577 d!2041370))

(assert (=> bs!1652577 m!7292848))

(declare-fun m!7293310 () Bool)

(assert (=> bs!1652577 m!7293310))

(declare-fun m!7293312 () Bool)

(assert (=> bs!1652577 m!7293312))

(assert (=> bs!1652577 m!7292862))

(assert (=> b!6505773 d!2041370))

(declare-fun d!2041372 () Bool)

(declare-fun lt!2392922 () Regex!16385)

(assert (=> d!2041372 (validRegex!8121 lt!2392922)))

(assert (=> d!2041372 (= lt!2392922 (generalisedUnion!2229 (unfocusZipperList!1806 (Cons!65331 lt!2392803 Nil!65331))))))

(assert (=> d!2041372 (= (unfocusZipper!2127 (Cons!65331 lt!2392803 Nil!65331)) lt!2392922)))

(declare-fun bs!1652578 () Bool)

(assert (= bs!1652578 d!2041372))

(declare-fun m!7293314 () Bool)

(assert (=> bs!1652578 m!7293314))

(declare-fun m!7293316 () Bool)

(assert (=> bs!1652578 m!7293316))

(assert (=> bs!1652578 m!7293316))

(declare-fun m!7293318 () Bool)

(assert (=> bs!1652578 m!7293318))

(assert (=> b!6505773 d!2041372))

(declare-fun call!563938 () (InoxSet Context!11538))

(declare-fun e!3942225 () (InoxSet Context!11538))

(declare-fun b!6506287 () Bool)

(assert (=> b!6506287 (= e!3942225 ((_ map or) call!563938 (derivationStepZipperUp!1559 (Context!11539 (t!379090 (exprs!6269 lt!2392811))) (h!71780 s!2326))))))

(declare-fun d!2041374 () Bool)

(declare-fun c!1193244 () Bool)

(declare-fun e!3942224 () Bool)

(assert (=> d!2041374 (= c!1193244 e!3942224)))

(declare-fun res!2671864 () Bool)

(assert (=> d!2041374 (=> (not res!2671864) (not e!3942224))))

(assert (=> d!2041374 (= res!2671864 ((_ is Cons!65330) (exprs!6269 lt!2392811)))))

(assert (=> d!2041374 (= (derivationStepZipperUp!1559 lt!2392811 (h!71780 s!2326)) e!3942225)))

(declare-fun b!6506288 () Bool)

(declare-fun e!3942226 () (InoxSet Context!11538))

(assert (=> b!6506288 (= e!3942226 call!563938)))

(declare-fun b!6506289 () Bool)

(assert (=> b!6506289 (= e!3942224 (nullable!6378 (h!71778 (exprs!6269 lt!2392811))))))

(declare-fun b!6506290 () Bool)

(assert (=> b!6506290 (= e!3942225 e!3942226)))

(declare-fun c!1193243 () Bool)

(assert (=> b!6506290 (= c!1193243 ((_ is Cons!65330) (exprs!6269 lt!2392811)))))

(declare-fun bm!563933 () Bool)

(assert (=> bm!563933 (= call!563938 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 lt!2392811)) (Context!11539 (t!379090 (exprs!6269 lt!2392811))) (h!71780 s!2326)))))

(declare-fun b!6506291 () Bool)

(assert (=> b!6506291 (= e!3942226 ((as const (Array Context!11538 Bool)) false))))

(assert (= (and d!2041374 res!2671864) b!6506289))

(assert (= (and d!2041374 c!1193244) b!6506287))

(assert (= (and d!2041374 (not c!1193244)) b!6506290))

(assert (= (and b!6506290 c!1193243) b!6506288))

(assert (= (and b!6506290 (not c!1193243)) b!6506291))

(assert (= (or b!6506287 b!6506288) bm!563933))

(declare-fun m!7293320 () Bool)

(assert (=> b!6506287 m!7293320))

(declare-fun m!7293322 () Bool)

(assert (=> b!6506289 m!7293322))

(declare-fun m!7293324 () Bool)

(assert (=> bm!563933 m!7293324))

(assert (=> b!6505773 d!2041374))

(declare-fun d!2041376 () Bool)

(declare-fun lt!2392923 () Regex!16385)

(assert (=> d!2041376 (validRegex!8121 lt!2392923)))

(assert (=> d!2041376 (= lt!2392923 (generalisedUnion!2229 (unfocusZipperList!1806 (Cons!65331 lt!2392811 Nil!65331))))))

(assert (=> d!2041376 (= (unfocusZipper!2127 (Cons!65331 lt!2392811 Nil!65331)) lt!2392923)))

(declare-fun bs!1652579 () Bool)

(assert (= bs!1652579 d!2041376))

(declare-fun m!7293326 () Bool)

(assert (=> bs!1652579 m!7293326))

(declare-fun m!7293328 () Bool)

(assert (=> bs!1652579 m!7293328))

(assert (=> bs!1652579 m!7293328))

(declare-fun m!7293330 () Bool)

(assert (=> bs!1652579 m!7293330))

(assert (=> b!6505753 d!2041376))

(declare-fun d!2041378 () Bool)

(assert (=> d!2041378 (= (flatMap!1890 z!1189 lambda!360722) (choose!48334 z!1189 lambda!360722))))

(declare-fun bs!1652580 () Bool)

(assert (= bs!1652580 d!2041378))

(declare-fun m!7293332 () Bool)

(assert (=> bs!1652580 m!7293332))

(assert (=> b!6505754 d!2041378))

(declare-fun b!6506292 () Bool)

(declare-fun call!563939 () (InoxSet Context!11538))

(declare-fun e!3942228 () (InoxSet Context!11538))

(assert (=> b!6506292 (= e!3942228 ((_ map or) call!563939 (derivationStepZipperUp!1559 (Context!11539 (t!379090 (exprs!6269 lt!2392790))) (h!71780 s!2326))))))

(declare-fun d!2041380 () Bool)

(declare-fun c!1193246 () Bool)

(declare-fun e!3942227 () Bool)

(assert (=> d!2041380 (= c!1193246 e!3942227)))

(declare-fun res!2671865 () Bool)

(assert (=> d!2041380 (=> (not res!2671865) (not e!3942227))))

(assert (=> d!2041380 (= res!2671865 ((_ is Cons!65330) (exprs!6269 lt!2392790)))))

(assert (=> d!2041380 (= (derivationStepZipperUp!1559 lt!2392790 (h!71780 s!2326)) e!3942228)))

(declare-fun b!6506293 () Bool)

(declare-fun e!3942229 () (InoxSet Context!11538))

(assert (=> b!6506293 (= e!3942229 call!563939)))

(declare-fun b!6506294 () Bool)

(assert (=> b!6506294 (= e!3942227 (nullable!6378 (h!71778 (exprs!6269 lt!2392790))))))

(declare-fun b!6506295 () Bool)

(assert (=> b!6506295 (= e!3942228 e!3942229)))

(declare-fun c!1193245 () Bool)

(assert (=> b!6506295 (= c!1193245 ((_ is Cons!65330) (exprs!6269 lt!2392790)))))

(declare-fun bm!563934 () Bool)

(assert (=> bm!563934 (= call!563939 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 lt!2392790)) (Context!11539 (t!379090 (exprs!6269 lt!2392790))) (h!71780 s!2326)))))

(declare-fun b!6506296 () Bool)

(assert (=> b!6506296 (= e!3942229 ((as const (Array Context!11538 Bool)) false))))

(assert (= (and d!2041380 res!2671865) b!6506294))

(assert (= (and d!2041380 c!1193246) b!6506292))

(assert (= (and d!2041380 (not c!1193246)) b!6506295))

(assert (= (and b!6506295 c!1193245) b!6506293))

(assert (= (and b!6506295 (not c!1193245)) b!6506296))

(assert (= (or b!6506292 b!6506293) bm!563934))

(declare-fun m!7293334 () Bool)

(assert (=> b!6506292 m!7293334))

(declare-fun m!7293336 () Bool)

(assert (=> b!6506294 m!7293336))

(declare-fun m!7293338 () Bool)

(assert (=> bm!563934 m!7293338))

(assert (=> b!6505754 d!2041380))

(declare-fun d!2041382 () Bool)

(declare-fun nullableFct!2314 (Regex!16385) Bool)

(assert (=> d!2041382 (= (nullable!6378 (h!71778 (exprs!6269 (h!71779 zl!343)))) (nullableFct!2314 (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun bs!1652581 () Bool)

(assert (= bs!1652581 d!2041382))

(declare-fun m!7293340 () Bool)

(assert (=> bs!1652581 m!7293340))

(assert (=> b!6505754 d!2041382))

(declare-fun call!563940 () (InoxSet Context!11538))

(declare-fun e!3942231 () (InoxSet Context!11538))

(declare-fun b!6506297 () Bool)

(assert (=> b!6506297 (= e!3942231 ((_ map or) call!563940 (derivationStepZipperUp!1559 (Context!11539 (t!379090 (exprs!6269 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343)))))))) (h!71780 s!2326))))))

(declare-fun d!2041384 () Bool)

(declare-fun c!1193248 () Bool)

(declare-fun e!3942230 () Bool)

(assert (=> d!2041384 (= c!1193248 e!3942230)))

(declare-fun res!2671866 () Bool)

(assert (=> d!2041384 (=> (not res!2671866) (not e!3942230))))

(assert (=> d!2041384 (= res!2671866 ((_ is Cons!65330) (exprs!6269 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343))))))))))

(assert (=> d!2041384 (= (derivationStepZipperUp!1559 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343))))) (h!71780 s!2326)) e!3942231)))

(declare-fun b!6506298 () Bool)

(declare-fun e!3942232 () (InoxSet Context!11538))

(assert (=> b!6506298 (= e!3942232 call!563940)))

(declare-fun b!6506299 () Bool)

(assert (=> b!6506299 (= e!3942230 (nullable!6378 (h!71778 (exprs!6269 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343)))))))))))

(declare-fun b!6506300 () Bool)

(assert (=> b!6506300 (= e!3942231 e!3942232)))

(declare-fun c!1193247 () Bool)

(assert (=> b!6506300 (= c!1193247 ((_ is Cons!65330) (exprs!6269 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343))))))))))

(declare-fun bm!563935 () Bool)

(assert (=> bm!563935 (= call!563940 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343))))))) (Context!11539 (t!379090 (exprs!6269 (Context!11539 (Cons!65330 (h!71778 (exprs!6269 (h!71779 zl!343))) (t!379090 (exprs!6269 (h!71779 zl!343)))))))) (h!71780 s!2326)))))

(declare-fun b!6506301 () Bool)

(assert (=> b!6506301 (= e!3942232 ((as const (Array Context!11538 Bool)) false))))

(assert (= (and d!2041384 res!2671866) b!6506299))

(assert (= (and d!2041384 c!1193248) b!6506297))

(assert (= (and d!2041384 (not c!1193248)) b!6506300))

(assert (= (and b!6506300 c!1193247) b!6506298))

(assert (= (and b!6506300 (not c!1193247)) b!6506301))

(assert (= (or b!6506297 b!6506298) bm!563935))

(declare-fun m!7293342 () Bool)

(assert (=> b!6506297 m!7293342))

(declare-fun m!7293344 () Bool)

(assert (=> b!6506299 m!7293344))

(declare-fun m!7293346 () Bool)

(assert (=> bm!563935 m!7293346))

(assert (=> b!6505754 d!2041384))

(declare-fun d!2041386 () Bool)

(assert (=> d!2041386 (= (flatMap!1890 z!1189 lambda!360722) (dynLambda!25958 lambda!360722 (h!71779 zl!343)))))

(declare-fun lt!2392924 () Unit!158875)

(assert (=> d!2041386 (= lt!2392924 (choose!48333 z!1189 (h!71779 zl!343) lambda!360722))))

(assert (=> d!2041386 (= z!1189 (store ((as const (Array Context!11538 Bool)) false) (h!71779 zl!343) true))))

(assert (=> d!2041386 (= (lemmaFlatMapOnSingletonSet!1416 z!1189 (h!71779 zl!343) lambda!360722) lt!2392924)))

(declare-fun b_lambda!246347 () Bool)

(assert (=> (not b_lambda!246347) (not d!2041386)))

(declare-fun bs!1652582 () Bool)

(assert (= bs!1652582 d!2041386))

(assert (=> bs!1652582 m!7292820))

(declare-fun m!7293348 () Bool)

(assert (=> bs!1652582 m!7293348))

(declare-fun m!7293350 () Bool)

(assert (=> bs!1652582 m!7293350))

(declare-fun m!7293352 () Bool)

(assert (=> bs!1652582 m!7293352))

(assert (=> b!6505754 d!2041386))

(declare-fun b!6506302 () Bool)

(declare-fun e!3942234 () (InoxSet Context!11538))

(declare-fun call!563941 () (InoxSet Context!11538))

(assert (=> b!6506302 (= e!3942234 ((_ map or) call!563941 (derivationStepZipperUp!1559 (Context!11539 (t!379090 (exprs!6269 (h!71779 zl!343)))) (h!71780 s!2326))))))

(declare-fun d!2041388 () Bool)

(declare-fun c!1193250 () Bool)

(declare-fun e!3942233 () Bool)

(assert (=> d!2041388 (= c!1193250 e!3942233)))

(declare-fun res!2671867 () Bool)

(assert (=> d!2041388 (=> (not res!2671867) (not e!3942233))))

(assert (=> d!2041388 (= res!2671867 ((_ is Cons!65330) (exprs!6269 (h!71779 zl!343))))))

(assert (=> d!2041388 (= (derivationStepZipperUp!1559 (h!71779 zl!343) (h!71780 s!2326)) e!3942234)))

(declare-fun b!6506303 () Bool)

(declare-fun e!3942235 () (InoxSet Context!11538))

(assert (=> b!6506303 (= e!3942235 call!563941)))

(declare-fun b!6506304 () Bool)

(assert (=> b!6506304 (= e!3942233 (nullable!6378 (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun b!6506305 () Bool)

(assert (=> b!6506305 (= e!3942234 e!3942235)))

(declare-fun c!1193249 () Bool)

(assert (=> b!6506305 (= c!1193249 ((_ is Cons!65330) (exprs!6269 (h!71779 zl!343))))))

(declare-fun bm!563936 () Bool)

(assert (=> bm!563936 (= call!563941 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 (h!71779 zl!343))) (Context!11539 (t!379090 (exprs!6269 (h!71779 zl!343)))) (h!71780 s!2326)))))

(declare-fun b!6506306 () Bool)

(assert (=> b!6506306 (= e!3942235 ((as const (Array Context!11538 Bool)) false))))

(assert (= (and d!2041388 res!2671867) b!6506304))

(assert (= (and d!2041388 c!1193250) b!6506302))

(assert (= (and d!2041388 (not c!1193250)) b!6506305))

(assert (= (and b!6506305 c!1193249) b!6506303))

(assert (= (and b!6506305 (not c!1193249)) b!6506306))

(assert (= (or b!6506302 b!6506303) bm!563936))

(declare-fun m!7293354 () Bool)

(assert (=> b!6506302 m!7293354))

(assert (=> b!6506304 m!7292824))

(declare-fun m!7293356 () Bool)

(assert (=> bm!563936 m!7293356))

(assert (=> b!6505754 d!2041388))

(declare-fun c!1193263 () Bool)

(declare-fun c!1193262 () Bool)

(declare-fun call!563958 () List!65454)

(declare-fun bm!563949 () Bool)

(declare-fun $colon$colon!2236 (List!65454 Regex!16385) List!65454)

(assert (=> bm!563949 (= call!563958 ($colon$colon!2236 (exprs!6269 lt!2392790) (ite (or c!1193263 c!1193262) (regTwo!33282 (h!71778 (exprs!6269 (h!71779 zl!343)))) (h!71778 (exprs!6269 (h!71779 zl!343))))))))

(declare-fun b!6506329 () Bool)

(declare-fun e!3942253 () (InoxSet Context!11538))

(declare-fun call!563954 () (InoxSet Context!11538))

(assert (=> b!6506329 (= e!3942253 call!563954)))

(declare-fun b!6506330 () Bool)

(declare-fun e!3942252 () Bool)

(assert (=> b!6506330 (= c!1193263 e!3942252)))

(declare-fun res!2671870 () Bool)

(assert (=> b!6506330 (=> (not res!2671870) (not e!3942252))))

(assert (=> b!6506330 (= res!2671870 ((_ is Concat!25230) (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun e!3942249 () (InoxSet Context!11538))

(declare-fun e!3942248 () (InoxSet Context!11538))

(assert (=> b!6506330 (= e!3942249 e!3942248)))

(declare-fun b!6506331 () Bool)

(declare-fun call!563956 () (InoxSet Context!11538))

(declare-fun call!563957 () (InoxSet Context!11538))

(assert (=> b!6506331 (= e!3942249 ((_ map or) call!563956 call!563957))))

(declare-fun bm!563950 () Bool)

(declare-fun call!563959 () (InoxSet Context!11538))

(assert (=> bm!563950 (= call!563959 call!563957)))

(declare-fun b!6506332 () Bool)

(declare-fun e!3942250 () (InoxSet Context!11538))

(assert (=> b!6506332 (= e!3942250 (store ((as const (Array Context!11538 Bool)) false) lt!2392790 true))))

(declare-fun b!6506333 () Bool)

(declare-fun e!3942251 () (InoxSet Context!11538))

(assert (=> b!6506333 (= e!3942251 ((as const (Array Context!11538 Bool)) false))))

(declare-fun bm!563951 () Bool)

(declare-fun call!563955 () List!65454)

(assert (=> bm!563951 (= call!563955 call!563958)))

(declare-fun bm!563952 () Bool)

(assert (=> bm!563952 (= call!563954 call!563959)))

(declare-fun b!6506334 () Bool)

(assert (=> b!6506334 (= e!3942248 ((_ map or) call!563956 call!563959))))

(declare-fun bm!563953 () Bool)

(declare-fun c!1193264 () Bool)

(assert (=> bm!563953 (= call!563956 (derivationStepZipperDown!1633 (ite c!1193264 (regOne!33283 (h!71778 (exprs!6269 (h!71779 zl!343)))) (regOne!33282 (h!71778 (exprs!6269 (h!71779 zl!343))))) (ite c!1193264 lt!2392790 (Context!11539 call!563958)) (h!71780 s!2326)))))

(declare-fun b!6506335 () Bool)

(assert (=> b!6506335 (= e!3942248 e!3942253)))

(assert (=> b!6506335 (= c!1193262 ((_ is Concat!25230) (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun d!2041390 () Bool)

(declare-fun c!1193261 () Bool)

(assert (=> d!2041390 (= c!1193261 (and ((_ is ElementMatch!16385) (h!71778 (exprs!6269 (h!71779 zl!343)))) (= (c!1193105 (h!71778 (exprs!6269 (h!71779 zl!343)))) (h!71780 s!2326))))))

(assert (=> d!2041390 (= (derivationStepZipperDown!1633 (h!71778 (exprs!6269 (h!71779 zl!343))) lt!2392790 (h!71780 s!2326)) e!3942250)))

(declare-fun b!6506336 () Bool)

(assert (=> b!6506336 (= e!3942250 e!3942249)))

(assert (=> b!6506336 (= c!1193264 ((_ is Union!16385) (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun bm!563954 () Bool)

(assert (=> bm!563954 (= call!563957 (derivationStepZipperDown!1633 (ite c!1193264 (regTwo!33283 (h!71778 (exprs!6269 (h!71779 zl!343)))) (ite c!1193263 (regTwo!33282 (h!71778 (exprs!6269 (h!71779 zl!343)))) (ite c!1193262 (regOne!33282 (h!71778 (exprs!6269 (h!71779 zl!343)))) (reg!16714 (h!71778 (exprs!6269 (h!71779 zl!343))))))) (ite (or c!1193264 c!1193263) lt!2392790 (Context!11539 call!563955)) (h!71780 s!2326)))))

(declare-fun b!6506337 () Bool)

(declare-fun c!1193265 () Bool)

(assert (=> b!6506337 (= c!1193265 ((_ is Star!16385) (h!71778 (exprs!6269 (h!71779 zl!343)))))))

(assert (=> b!6506337 (= e!3942253 e!3942251)))

(declare-fun b!6506338 () Bool)

(assert (=> b!6506338 (= e!3942251 call!563954)))

(declare-fun b!6506339 () Bool)

(assert (=> b!6506339 (= e!3942252 (nullable!6378 (regOne!33282 (h!71778 (exprs!6269 (h!71779 zl!343))))))))

(assert (= (and d!2041390 c!1193261) b!6506332))

(assert (= (and d!2041390 (not c!1193261)) b!6506336))

(assert (= (and b!6506336 c!1193264) b!6506331))

(assert (= (and b!6506336 (not c!1193264)) b!6506330))

(assert (= (and b!6506330 res!2671870) b!6506339))

(assert (= (and b!6506330 c!1193263) b!6506334))

(assert (= (and b!6506330 (not c!1193263)) b!6506335))

(assert (= (and b!6506335 c!1193262) b!6506329))

(assert (= (and b!6506335 (not c!1193262)) b!6506337))

(assert (= (and b!6506337 c!1193265) b!6506338))

(assert (= (and b!6506337 (not c!1193265)) b!6506333))

(assert (= (or b!6506329 b!6506338) bm!563951))

(assert (= (or b!6506329 b!6506338) bm!563952))

(assert (= (or b!6506334 bm!563951) bm!563949))

(assert (= (or b!6506334 bm!563952) bm!563950))

(assert (= (or b!6506331 bm!563950) bm!563954))

(assert (= (or b!6506331 b!6506334) bm!563953))

(declare-fun m!7293358 () Bool)

(assert (=> b!6506332 m!7293358))

(declare-fun m!7293360 () Bool)

(assert (=> bm!563954 m!7293360))

(declare-fun m!7293362 () Bool)

(assert (=> bm!563949 m!7293362))

(declare-fun m!7293364 () Bool)

(assert (=> b!6506339 m!7293364))

(declare-fun m!7293366 () Bool)

(assert (=> bm!563953 m!7293366))

(assert (=> b!6505754 d!2041390))

(declare-fun d!2041392 () Bool)

(assert (=> d!2041392 (= (isEmpty!37538 (t!379091 zl!343)) ((_ is Nil!65331) (t!379091 zl!343)))))

(assert (=> b!6505775 d!2041392))

(declare-fun d!2041394 () Bool)

(declare-fun c!1193266 () Bool)

(assert (=> d!2041394 (= c!1193266 (isEmpty!37542 (t!379092 s!2326)))))

(declare-fun e!3942254 () Bool)

(assert (=> d!2041394 (= (matchZipper!2397 lt!2392817 (t!379092 s!2326)) e!3942254)))

(declare-fun b!6506340 () Bool)

(assert (=> b!6506340 (= e!3942254 (nullableZipper!2140 lt!2392817))))

(declare-fun b!6506341 () Bool)

(assert (=> b!6506341 (= e!3942254 (matchZipper!2397 (derivationStepZipper!2351 lt!2392817 (head!13241 (t!379092 s!2326))) (tail!12326 (t!379092 s!2326))))))

(assert (= (and d!2041394 c!1193266) b!6506340))

(assert (= (and d!2041394 (not c!1193266)) b!6506341))

(assert (=> d!2041394 m!7293202))

(declare-fun m!7293368 () Bool)

(assert (=> b!6506340 m!7293368))

(assert (=> b!6506341 m!7293206))

(assert (=> b!6506341 m!7293206))

(declare-fun m!7293370 () Bool)

(assert (=> b!6506341 m!7293370))

(assert (=> b!6506341 m!7293210))

(assert (=> b!6506341 m!7293370))

(assert (=> b!6506341 m!7293210))

(declare-fun m!7293372 () Bool)

(assert (=> b!6506341 m!7293372))

(assert (=> b!6505776 d!2041394))

(declare-fun d!2041396 () Bool)

(declare-fun c!1193267 () Bool)

(assert (=> d!2041396 (= c!1193267 (isEmpty!37542 s!2326))))

(declare-fun e!3942255 () Bool)

(assert (=> d!2041396 (= (matchZipper!2397 lt!2392794 s!2326) e!3942255)))

(declare-fun b!6506342 () Bool)

(assert (=> b!6506342 (= e!3942255 (nullableZipper!2140 lt!2392794))))

(declare-fun b!6506343 () Bool)

(assert (=> b!6506343 (= e!3942255 (matchZipper!2397 (derivationStepZipper!2351 lt!2392794 (head!13241 s!2326)) (tail!12326 s!2326)))))

(assert (= (and d!2041396 c!1193267) b!6506342))

(assert (= (and d!2041396 (not c!1193267)) b!6506343))

(assert (=> d!2041396 m!7293190))

(declare-fun m!7293374 () Bool)

(assert (=> b!6506342 m!7293374))

(assert (=> b!6506343 m!7293194))

(assert (=> b!6506343 m!7293194))

(declare-fun m!7293376 () Bool)

(assert (=> b!6506343 m!7293376))

(assert (=> b!6506343 m!7293198))

(assert (=> b!6506343 m!7293376))

(assert (=> b!6506343 m!7293198))

(declare-fun m!7293378 () Bool)

(assert (=> b!6506343 m!7293378))

(assert (=> b!6505776 d!2041396))

(declare-fun d!2041398 () Bool)

(declare-fun c!1193268 () Bool)

(assert (=> d!2041398 (= c!1193268 (isEmpty!37542 (t!379092 s!2326)))))

(declare-fun e!3942256 () Bool)

(assert (=> d!2041398 (= (matchZipper!2397 lt!2392805 (t!379092 s!2326)) e!3942256)))

(declare-fun b!6506344 () Bool)

(assert (=> b!6506344 (= e!3942256 (nullableZipper!2140 lt!2392805))))

(declare-fun b!6506345 () Bool)

(assert (=> b!6506345 (= e!3942256 (matchZipper!2397 (derivationStepZipper!2351 lt!2392805 (head!13241 (t!379092 s!2326))) (tail!12326 (t!379092 s!2326))))))

(assert (= (and d!2041398 c!1193268) b!6506344))

(assert (= (and d!2041398 (not c!1193268)) b!6506345))

(assert (=> d!2041398 m!7293202))

(declare-fun m!7293380 () Bool)

(assert (=> b!6506344 m!7293380))

(assert (=> b!6506345 m!7293206))

(assert (=> b!6506345 m!7293206))

(declare-fun m!7293382 () Bool)

(assert (=> b!6506345 m!7293382))

(assert (=> b!6506345 m!7293210))

(assert (=> b!6506345 m!7293382))

(assert (=> b!6506345 m!7293210))

(declare-fun m!7293384 () Bool)

(assert (=> b!6506345 m!7293384))

(assert (=> b!6505756 d!2041398))

(declare-fun d!2041400 () Bool)

(declare-fun lt!2392925 () Regex!16385)

(assert (=> d!2041400 (validRegex!8121 lt!2392925)))

(assert (=> d!2041400 (= lt!2392925 (generalisedUnion!2229 (unfocusZipperList!1806 (Cons!65331 lt!2392813 Nil!65331))))))

(assert (=> d!2041400 (= (unfocusZipper!2127 (Cons!65331 lt!2392813 Nil!65331)) lt!2392925)))

(declare-fun bs!1652583 () Bool)

(assert (= bs!1652583 d!2041400))

(declare-fun m!7293386 () Bool)

(assert (=> bs!1652583 m!7293386))

(declare-fun m!7293388 () Bool)

(assert (=> bs!1652583 m!7293388))

(assert (=> bs!1652583 m!7293388))

(declare-fun m!7293390 () Bool)

(assert (=> bs!1652583 m!7293390))

(assert (=> b!6505777 d!2041400))

(declare-fun d!2041402 () Bool)

(declare-fun e!3942259 () Bool)

(assert (=> d!2041402 (= (matchZipper!2397 ((_ map or) lt!2392805 lt!2392818) (t!379092 s!2326)) e!3942259)))

(declare-fun res!2671873 () Bool)

(assert (=> d!2041402 (=> res!2671873 e!3942259)))

(assert (=> d!2041402 (= res!2671873 (matchZipper!2397 lt!2392805 (t!379092 s!2326)))))

(declare-fun lt!2392928 () Unit!158875)

(declare-fun choose!48336 ((InoxSet Context!11538) (InoxSet Context!11538) List!65456) Unit!158875)

(assert (=> d!2041402 (= lt!2392928 (choose!48336 lt!2392805 lt!2392818 (t!379092 s!2326)))))

(assert (=> d!2041402 (= (lemmaZipperConcatMatchesSameAsBothZippers!1216 lt!2392805 lt!2392818 (t!379092 s!2326)) lt!2392928)))

(declare-fun b!6506348 () Bool)

(assert (=> b!6506348 (= e!3942259 (matchZipper!2397 lt!2392818 (t!379092 s!2326)))))

(assert (= (and d!2041402 (not res!2671873)) b!6506348))

(assert (=> d!2041402 m!7292866))

(assert (=> d!2041402 m!7292814))

(declare-fun m!7293392 () Bool)

(assert (=> d!2041402 m!7293392))

(assert (=> b!6506348 m!7292750))

(assert (=> b!6505757 d!2041402))

(assert (=> b!6505757 d!2041398))

(declare-fun d!2041404 () Bool)

(declare-fun c!1193269 () Bool)

(assert (=> d!2041404 (= c!1193269 (isEmpty!37542 (t!379092 s!2326)))))

(declare-fun e!3942260 () Bool)

(assert (=> d!2041404 (= (matchZipper!2397 ((_ map or) lt!2392805 lt!2392818) (t!379092 s!2326)) e!3942260)))

(declare-fun b!6506349 () Bool)

(assert (=> b!6506349 (= e!3942260 (nullableZipper!2140 ((_ map or) lt!2392805 lt!2392818)))))

(declare-fun b!6506350 () Bool)

(assert (=> b!6506350 (= e!3942260 (matchZipper!2397 (derivationStepZipper!2351 ((_ map or) lt!2392805 lt!2392818) (head!13241 (t!379092 s!2326))) (tail!12326 (t!379092 s!2326))))))

(assert (= (and d!2041404 c!1193269) b!6506349))

(assert (= (and d!2041404 (not c!1193269)) b!6506350))

(assert (=> d!2041404 m!7293202))

(declare-fun m!7293394 () Bool)

(assert (=> b!6506349 m!7293394))

(assert (=> b!6506350 m!7293206))

(assert (=> b!6506350 m!7293206))

(declare-fun m!7293396 () Bool)

(assert (=> b!6506350 m!7293396))

(assert (=> b!6506350 m!7293210))

(assert (=> b!6506350 m!7293396))

(assert (=> b!6506350 m!7293210))

(declare-fun m!7293398 () Bool)

(assert (=> b!6506350 m!7293398))

(assert (=> b!6505757 d!2041404))

(declare-fun bs!1652584 () Bool)

(declare-fun b!6506385 () Bool)

(assert (= bs!1652584 (and b!6506385 b!6505768)))

(declare-fun lambda!360786 () Int)

(assert (=> bs!1652584 (not (= lambda!360786 lambda!360720))))

(declare-fun bs!1652585 () Bool)

(assert (= bs!1652585 (and b!6506385 d!2041284)))

(assert (=> bs!1652585 (not (= lambda!360786 lambda!360774))))

(assert (=> bs!1652584 (not (= lambda!360786 lambda!360721))))

(declare-fun bs!1652586 () Bool)

(assert (= bs!1652586 (and b!6506385 d!2041274)))

(assert (=> bs!1652586 (not (= lambda!360786 lambda!360767))))

(assert (=> bs!1652585 (not (= lambda!360786 lambda!360775))))

(assert (=> b!6506385 true))

(assert (=> b!6506385 true))

(declare-fun bs!1652587 () Bool)

(declare-fun b!6506392 () Bool)

(assert (= bs!1652587 (and b!6506392 b!6505768)))

(declare-fun lambda!360787 () Int)

(assert (=> bs!1652587 (not (= lambda!360787 lambda!360720))))

(declare-fun bs!1652588 () Bool)

(assert (= bs!1652588 (and b!6506392 d!2041284)))

(assert (=> bs!1652588 (not (= lambda!360787 lambda!360774))))

(declare-fun bs!1652589 () Bool)

(assert (= bs!1652589 (and b!6506392 b!6506385)))

(assert (=> bs!1652589 (not (= lambda!360787 lambda!360786))))

(assert (=> bs!1652587 (= lambda!360787 lambda!360721)))

(declare-fun bs!1652590 () Bool)

(assert (= bs!1652590 (and b!6506392 d!2041274)))

(assert (=> bs!1652590 (not (= lambda!360787 lambda!360767))))

(assert (=> bs!1652588 (= lambda!360787 lambda!360775)))

(assert (=> b!6506392 true))

(assert (=> b!6506392 true))

(declare-fun b!6506383 () Bool)

(declare-fun res!2671892 () Bool)

(declare-fun e!3942280 () Bool)

(assert (=> b!6506383 (=> res!2671892 e!3942280)))

(declare-fun call!563964 () Bool)

(assert (=> b!6506383 (= res!2671892 call!563964)))

(declare-fun e!3942283 () Bool)

(assert (=> b!6506383 (= e!3942283 e!3942280)))

(declare-fun b!6506384 () Bool)

(declare-fun e!3942281 () Bool)

(assert (=> b!6506384 (= e!3942281 (matchRSpec!3486 (regTwo!33283 r!7292) s!2326))))

(declare-fun call!563965 () Bool)

(assert (=> b!6506385 (= e!3942280 call!563965)))

(declare-fun b!6506386 () Bool)

(declare-fun e!3942284 () Bool)

(assert (=> b!6506386 (= e!3942284 call!563964)))

(declare-fun b!6506388 () Bool)

(declare-fun e!3942285 () Bool)

(assert (=> b!6506388 (= e!3942284 e!3942285)))

(declare-fun res!2671891 () Bool)

(assert (=> b!6506388 (= res!2671891 (not ((_ is EmptyLang!16385) r!7292)))))

(assert (=> b!6506388 (=> (not res!2671891) (not e!3942285))))

(declare-fun b!6506389 () Bool)

(declare-fun c!1193279 () Bool)

(assert (=> b!6506389 (= c!1193279 ((_ is Union!16385) r!7292))))

(declare-fun e!3942279 () Bool)

(declare-fun e!3942282 () Bool)

(assert (=> b!6506389 (= e!3942279 e!3942282)))

(declare-fun b!6506390 () Bool)

(declare-fun c!1193281 () Bool)

(assert (=> b!6506390 (= c!1193281 ((_ is ElementMatch!16385) r!7292))))

(assert (=> b!6506390 (= e!3942285 e!3942279)))

(declare-fun b!6506391 () Bool)

(assert (=> b!6506391 (= e!3942279 (= s!2326 (Cons!65332 (c!1193105 r!7292) Nil!65332)))))

(declare-fun b!6506387 () Bool)

(assert (=> b!6506387 (= e!3942282 e!3942283)))

(declare-fun c!1193278 () Bool)

(assert (=> b!6506387 (= c!1193278 ((_ is Star!16385) r!7292))))

(declare-fun d!2041406 () Bool)

(declare-fun c!1193280 () Bool)

(assert (=> d!2041406 (= c!1193280 ((_ is EmptyExpr!16385) r!7292))))

(assert (=> d!2041406 (= (matchRSpec!3486 r!7292 s!2326) e!3942284)))

(declare-fun bm!563959 () Bool)

(assert (=> bm!563959 (= call!563965 (Exists!3455 (ite c!1193278 lambda!360786 lambda!360787)))))

(assert (=> b!6506392 (= e!3942283 call!563965)))

(declare-fun bm!563960 () Bool)

(assert (=> bm!563960 (= call!563964 (isEmpty!37542 s!2326))))

(declare-fun b!6506393 () Bool)

(assert (=> b!6506393 (= e!3942282 e!3942281)))

(declare-fun res!2671890 () Bool)

(assert (=> b!6506393 (= res!2671890 (matchRSpec!3486 (regOne!33283 r!7292) s!2326))))

(assert (=> b!6506393 (=> res!2671890 e!3942281)))

(assert (= (and d!2041406 c!1193280) b!6506386))

(assert (= (and d!2041406 (not c!1193280)) b!6506388))

(assert (= (and b!6506388 res!2671891) b!6506390))

(assert (= (and b!6506390 c!1193281) b!6506391))

(assert (= (and b!6506390 (not c!1193281)) b!6506389))

(assert (= (and b!6506389 c!1193279) b!6506393))

(assert (= (and b!6506389 (not c!1193279)) b!6506387))

(assert (= (and b!6506393 (not res!2671890)) b!6506384))

(assert (= (and b!6506387 c!1193278) b!6506383))

(assert (= (and b!6506387 (not c!1193278)) b!6506392))

(assert (= (and b!6506383 (not res!2671892)) b!6506385))

(assert (= (or b!6506385 b!6506392) bm!563959))

(assert (= (or b!6506386 b!6506383) bm!563960))

(declare-fun m!7293400 () Bool)

(assert (=> b!6506384 m!7293400))

(declare-fun m!7293402 () Bool)

(assert (=> bm!563959 m!7293402))

(assert (=> bm!563960 m!7293190))

(declare-fun m!7293404 () Bool)

(assert (=> b!6506393 m!7293404))

(assert (=> b!6505778 d!2041406))

(declare-fun b!6506422 () Bool)

(declare-fun e!3942302 () Bool)

(declare-fun derivativeStep!5079 (Regex!16385 C!33040) Regex!16385)

(assert (=> b!6506422 (= e!3942302 (matchR!8568 (derivativeStep!5079 r!7292 (head!13241 s!2326)) (tail!12326 s!2326)))))

(declare-fun b!6506423 () Bool)

(declare-fun e!3942300 () Bool)

(declare-fun e!3942301 () Bool)

(assert (=> b!6506423 (= e!3942300 e!3942301)))

(declare-fun c!1193290 () Bool)

(assert (=> b!6506423 (= c!1193290 ((_ is EmptyLang!16385) r!7292))))

(declare-fun b!6506424 () Bool)

(declare-fun lt!2392931 () Bool)

(assert (=> b!6506424 (= e!3942301 (not lt!2392931))))

(declare-fun b!6506425 () Bool)

(declare-fun e!3942303 () Bool)

(declare-fun e!3942305 () Bool)

(assert (=> b!6506425 (= e!3942303 e!3942305)))

(declare-fun res!2671911 () Bool)

(assert (=> b!6506425 (=> (not res!2671911) (not e!3942305))))

(assert (=> b!6506425 (= res!2671911 (not lt!2392931))))

(declare-fun b!6506426 () Bool)

(declare-fun e!3942306 () Bool)

(assert (=> b!6506426 (= e!3942305 e!3942306)))

(declare-fun res!2671915 () Bool)

(assert (=> b!6506426 (=> res!2671915 e!3942306)))

(declare-fun call!563968 () Bool)

(assert (=> b!6506426 (= res!2671915 call!563968)))

(declare-fun bm!563963 () Bool)

(assert (=> bm!563963 (= call!563968 (isEmpty!37542 s!2326))))

(declare-fun b!6506427 () Bool)

(declare-fun e!3942304 () Bool)

(assert (=> b!6506427 (= e!3942304 (= (head!13241 s!2326) (c!1193105 r!7292)))))

(declare-fun b!6506428 () Bool)

(assert (=> b!6506428 (= e!3942300 (= lt!2392931 call!563968))))

(declare-fun b!6506429 () Bool)

(assert (=> b!6506429 (= e!3942306 (not (= (head!13241 s!2326) (c!1193105 r!7292))))))

(declare-fun b!6506430 () Bool)

(declare-fun res!2671912 () Bool)

(assert (=> b!6506430 (=> (not res!2671912) (not e!3942304))))

(assert (=> b!6506430 (= res!2671912 (not call!563968))))

(declare-fun b!6506431 () Bool)

(declare-fun res!2671913 () Bool)

(assert (=> b!6506431 (=> res!2671913 e!3942303)))

(assert (=> b!6506431 (= res!2671913 e!3942304)))

(declare-fun res!2671910 () Bool)

(assert (=> b!6506431 (=> (not res!2671910) (not e!3942304))))

(assert (=> b!6506431 (= res!2671910 lt!2392931)))

(declare-fun d!2041408 () Bool)

(assert (=> d!2041408 e!3942300))

(declare-fun c!1193288 () Bool)

(assert (=> d!2041408 (= c!1193288 ((_ is EmptyExpr!16385) r!7292))))

(assert (=> d!2041408 (= lt!2392931 e!3942302)))

(declare-fun c!1193289 () Bool)

(assert (=> d!2041408 (= c!1193289 (isEmpty!37542 s!2326))))

(assert (=> d!2041408 (validRegex!8121 r!7292)))

(assert (=> d!2041408 (= (matchR!8568 r!7292 s!2326) lt!2392931)))

(declare-fun b!6506432 () Bool)

(declare-fun res!2671909 () Bool)

(assert (=> b!6506432 (=> res!2671909 e!3942303)))

(assert (=> b!6506432 (= res!2671909 (not ((_ is ElementMatch!16385) r!7292)))))

(assert (=> b!6506432 (= e!3942301 e!3942303)))

(declare-fun b!6506433 () Bool)

(assert (=> b!6506433 (= e!3942302 (nullable!6378 r!7292))))

(declare-fun b!6506434 () Bool)

(declare-fun res!2671916 () Bool)

(assert (=> b!6506434 (=> res!2671916 e!3942306)))

(assert (=> b!6506434 (= res!2671916 (not (isEmpty!37542 (tail!12326 s!2326))))))

(declare-fun b!6506435 () Bool)

(declare-fun res!2671914 () Bool)

(assert (=> b!6506435 (=> (not res!2671914) (not e!3942304))))

(assert (=> b!6506435 (= res!2671914 (isEmpty!37542 (tail!12326 s!2326)))))

(assert (= (and d!2041408 c!1193289) b!6506433))

(assert (= (and d!2041408 (not c!1193289)) b!6506422))

(assert (= (and d!2041408 c!1193288) b!6506428))

(assert (= (and d!2041408 (not c!1193288)) b!6506423))

(assert (= (and b!6506423 c!1193290) b!6506424))

(assert (= (and b!6506423 (not c!1193290)) b!6506432))

(assert (= (and b!6506432 (not res!2671909)) b!6506431))

(assert (= (and b!6506431 res!2671910) b!6506430))

(assert (= (and b!6506430 res!2671912) b!6506435))

(assert (= (and b!6506435 res!2671914) b!6506427))

(assert (= (and b!6506431 (not res!2671913)) b!6506425))

(assert (= (and b!6506425 res!2671911) b!6506426))

(assert (= (and b!6506426 (not res!2671915)) b!6506434))

(assert (= (and b!6506434 (not res!2671916)) b!6506429))

(assert (= (or b!6506428 b!6506426 b!6506430) bm!563963))

(assert (=> b!6506427 m!7293194))

(assert (=> b!6506434 m!7293198))

(assert (=> b!6506434 m!7293198))

(declare-fun m!7293406 () Bool)

(assert (=> b!6506434 m!7293406))

(assert (=> bm!563963 m!7293190))

(assert (=> b!6506429 m!7293194))

(declare-fun m!7293408 () Bool)

(assert (=> b!6506433 m!7293408))

(assert (=> d!2041408 m!7293190))

(assert (=> d!2041408 m!7292768))

(assert (=> b!6506435 m!7293198))

(assert (=> b!6506435 m!7293198))

(assert (=> b!6506435 m!7293406))

(assert (=> b!6506422 m!7293194))

(assert (=> b!6506422 m!7293194))

(declare-fun m!7293410 () Bool)

(assert (=> b!6506422 m!7293410))

(assert (=> b!6506422 m!7293198))

(assert (=> b!6506422 m!7293410))

(assert (=> b!6506422 m!7293198))

(declare-fun m!7293412 () Bool)

(assert (=> b!6506422 m!7293412))

(assert (=> b!6505778 d!2041408))

(declare-fun d!2041410 () Bool)

(assert (=> d!2041410 (= (matchR!8568 r!7292 s!2326) (matchRSpec!3486 r!7292 s!2326))))

(declare-fun lt!2392934 () Unit!158875)

(declare-fun choose!48337 (Regex!16385 List!65456) Unit!158875)

(assert (=> d!2041410 (= lt!2392934 (choose!48337 r!7292 s!2326))))

(assert (=> d!2041410 (validRegex!8121 r!7292)))

(assert (=> d!2041410 (= (mainMatchTheorem!3486 r!7292 s!2326) lt!2392934)))

(declare-fun bs!1652591 () Bool)

(assert (= bs!1652591 d!2041410))

(assert (=> bs!1652591 m!7292788))

(assert (=> bs!1652591 m!7292786))

(declare-fun m!7293414 () Bool)

(assert (=> bs!1652591 m!7293414))

(assert (=> bs!1652591 m!7292768))

(assert (=> b!6505778 d!2041410))

(declare-fun b!6506436 () Bool)

(declare-fun e!3942309 () Bool)

(assert (=> b!6506436 (= e!3942309 (matchR!8568 (derivativeStep!5079 lt!2392795 (head!13241 s!2326)) (tail!12326 s!2326)))))

(declare-fun b!6506437 () Bool)

(declare-fun e!3942307 () Bool)

(declare-fun e!3942308 () Bool)

(assert (=> b!6506437 (= e!3942307 e!3942308)))

(declare-fun c!1193293 () Bool)

(assert (=> b!6506437 (= c!1193293 ((_ is EmptyLang!16385) lt!2392795))))

(declare-fun b!6506438 () Bool)

(declare-fun lt!2392935 () Bool)

(assert (=> b!6506438 (= e!3942308 (not lt!2392935))))

(declare-fun b!6506439 () Bool)

(declare-fun e!3942310 () Bool)

(declare-fun e!3942312 () Bool)

(assert (=> b!6506439 (= e!3942310 e!3942312)))

(declare-fun res!2671919 () Bool)

(assert (=> b!6506439 (=> (not res!2671919) (not e!3942312))))

(assert (=> b!6506439 (= res!2671919 (not lt!2392935))))

(declare-fun b!6506440 () Bool)

(declare-fun e!3942313 () Bool)

(assert (=> b!6506440 (= e!3942312 e!3942313)))

(declare-fun res!2671923 () Bool)

(assert (=> b!6506440 (=> res!2671923 e!3942313)))

(declare-fun call!563969 () Bool)

(assert (=> b!6506440 (= res!2671923 call!563969)))

(declare-fun bm!563964 () Bool)

(assert (=> bm!563964 (= call!563969 (isEmpty!37542 s!2326))))

(declare-fun b!6506441 () Bool)

(declare-fun e!3942311 () Bool)

(assert (=> b!6506441 (= e!3942311 (= (head!13241 s!2326) (c!1193105 lt!2392795)))))

(declare-fun b!6506442 () Bool)

(assert (=> b!6506442 (= e!3942307 (= lt!2392935 call!563969))))

(declare-fun b!6506443 () Bool)

(assert (=> b!6506443 (= e!3942313 (not (= (head!13241 s!2326) (c!1193105 lt!2392795))))))

(declare-fun b!6506444 () Bool)

(declare-fun res!2671920 () Bool)

(assert (=> b!6506444 (=> (not res!2671920) (not e!3942311))))

(assert (=> b!6506444 (= res!2671920 (not call!563969))))

(declare-fun b!6506445 () Bool)

(declare-fun res!2671921 () Bool)

(assert (=> b!6506445 (=> res!2671921 e!3942310)))

(assert (=> b!6506445 (= res!2671921 e!3942311)))

(declare-fun res!2671918 () Bool)

(assert (=> b!6506445 (=> (not res!2671918) (not e!3942311))))

(assert (=> b!6506445 (= res!2671918 lt!2392935)))

(declare-fun d!2041412 () Bool)

(assert (=> d!2041412 e!3942307))

(declare-fun c!1193291 () Bool)

(assert (=> d!2041412 (= c!1193291 ((_ is EmptyExpr!16385) lt!2392795))))

(assert (=> d!2041412 (= lt!2392935 e!3942309)))

(declare-fun c!1193292 () Bool)

(assert (=> d!2041412 (= c!1193292 (isEmpty!37542 s!2326))))

(assert (=> d!2041412 (validRegex!8121 lt!2392795)))

(assert (=> d!2041412 (= (matchR!8568 lt!2392795 s!2326) lt!2392935)))

(declare-fun b!6506446 () Bool)

(declare-fun res!2671917 () Bool)

(assert (=> b!6506446 (=> res!2671917 e!3942310)))

(assert (=> b!6506446 (= res!2671917 (not ((_ is ElementMatch!16385) lt!2392795)))))

(assert (=> b!6506446 (= e!3942308 e!3942310)))

(declare-fun b!6506447 () Bool)

(assert (=> b!6506447 (= e!3942309 (nullable!6378 lt!2392795))))

(declare-fun b!6506448 () Bool)

(declare-fun res!2671924 () Bool)

(assert (=> b!6506448 (=> res!2671924 e!3942313)))

(assert (=> b!6506448 (= res!2671924 (not (isEmpty!37542 (tail!12326 s!2326))))))

(declare-fun b!6506449 () Bool)

(declare-fun res!2671922 () Bool)

(assert (=> b!6506449 (=> (not res!2671922) (not e!3942311))))

(assert (=> b!6506449 (= res!2671922 (isEmpty!37542 (tail!12326 s!2326)))))

(assert (= (and d!2041412 c!1193292) b!6506447))

(assert (= (and d!2041412 (not c!1193292)) b!6506436))

(assert (= (and d!2041412 c!1193291) b!6506442))

(assert (= (and d!2041412 (not c!1193291)) b!6506437))

(assert (= (and b!6506437 c!1193293) b!6506438))

(assert (= (and b!6506437 (not c!1193293)) b!6506446))

(assert (= (and b!6506446 (not res!2671917)) b!6506445))

(assert (= (and b!6506445 res!2671918) b!6506444))

(assert (= (and b!6506444 res!2671920) b!6506449))

(assert (= (and b!6506449 res!2671922) b!6506441))

(assert (= (and b!6506445 (not res!2671921)) b!6506439))

(assert (= (and b!6506439 res!2671919) b!6506440))

(assert (= (and b!6506440 (not res!2671923)) b!6506448))

(assert (= (and b!6506448 (not res!2671924)) b!6506443))

(assert (= (or b!6506442 b!6506440 b!6506444) bm!563964))

(assert (=> b!6506441 m!7293194))

(assert (=> b!6506448 m!7293198))

(assert (=> b!6506448 m!7293198))

(assert (=> b!6506448 m!7293406))

(assert (=> bm!563964 m!7293190))

(assert (=> b!6506443 m!7293194))

(declare-fun m!7293416 () Bool)

(assert (=> b!6506447 m!7293416))

(assert (=> d!2041412 m!7293190))

(declare-fun m!7293418 () Bool)

(assert (=> d!2041412 m!7293418))

(assert (=> b!6506449 m!7293198))

(assert (=> b!6506449 m!7293198))

(assert (=> b!6506449 m!7293406))

(assert (=> b!6506436 m!7293194))

(assert (=> b!6506436 m!7293194))

(declare-fun m!7293420 () Bool)

(assert (=> b!6506436 m!7293420))

(assert (=> b!6506436 m!7293198))

(assert (=> b!6506436 m!7293420))

(assert (=> b!6506436 m!7293198))

(declare-fun m!7293422 () Bool)

(assert (=> b!6506436 m!7293422))

(assert (=> b!6505759 d!2041412))

(declare-fun bs!1652592 () Bool)

(declare-fun b!6506452 () Bool)

(assert (= bs!1652592 (and b!6506452 d!2041284)))

(declare-fun lambda!360788 () Int)

(assert (=> bs!1652592 (not (= lambda!360788 lambda!360774))))

(declare-fun bs!1652593 () Bool)

(assert (= bs!1652593 (and b!6506452 b!6506385)))

(assert (=> bs!1652593 (= (and (= (reg!16714 lt!2392795) (reg!16714 r!7292)) (= lt!2392795 r!7292)) (= lambda!360788 lambda!360786))))

(declare-fun bs!1652594 () Bool)

(assert (= bs!1652594 (and b!6506452 b!6505768)))

(assert (=> bs!1652594 (not (= lambda!360788 lambda!360721))))

(declare-fun bs!1652595 () Bool)

(assert (= bs!1652595 (and b!6506452 d!2041274)))

(assert (=> bs!1652595 (not (= lambda!360788 lambda!360767))))

(assert (=> bs!1652592 (not (= lambda!360788 lambda!360775))))

(declare-fun bs!1652596 () Bool)

(assert (= bs!1652596 (and b!6506452 b!6506392)))

(assert (=> bs!1652596 (not (= lambda!360788 lambda!360787))))

(assert (=> bs!1652594 (not (= lambda!360788 lambda!360720))))

(assert (=> b!6506452 true))

(assert (=> b!6506452 true))

(declare-fun bs!1652597 () Bool)

(declare-fun b!6506459 () Bool)

(assert (= bs!1652597 (and b!6506459 d!2041284)))

(declare-fun lambda!360789 () Int)

(assert (=> bs!1652597 (not (= lambda!360789 lambda!360774))))

(declare-fun bs!1652598 () Bool)

(assert (= bs!1652598 (and b!6506459 b!6506385)))

(assert (=> bs!1652598 (not (= lambda!360789 lambda!360786))))

(declare-fun bs!1652599 () Bool)

(assert (= bs!1652599 (and b!6506459 b!6505768)))

(assert (=> bs!1652599 (= (and (= (regOne!33282 lt!2392795) (regOne!33282 r!7292)) (= (regTwo!33282 lt!2392795) (regTwo!33282 r!7292))) (= lambda!360789 lambda!360721))))

(declare-fun bs!1652600 () Bool)

(assert (= bs!1652600 (and b!6506459 d!2041274)))

(assert (=> bs!1652600 (not (= lambda!360789 lambda!360767))))

(assert (=> bs!1652597 (= (and (= (regOne!33282 lt!2392795) (regOne!33282 r!7292)) (= (regTwo!33282 lt!2392795) (regTwo!33282 r!7292))) (= lambda!360789 lambda!360775))))

(declare-fun bs!1652601 () Bool)

(assert (= bs!1652601 (and b!6506459 b!6506452)))

(assert (=> bs!1652601 (not (= lambda!360789 lambda!360788))))

(declare-fun bs!1652602 () Bool)

(assert (= bs!1652602 (and b!6506459 b!6506392)))

(assert (=> bs!1652602 (= (and (= (regOne!33282 lt!2392795) (regOne!33282 r!7292)) (= (regTwo!33282 lt!2392795) (regTwo!33282 r!7292))) (= lambda!360789 lambda!360787))))

(assert (=> bs!1652599 (not (= lambda!360789 lambda!360720))))

(assert (=> b!6506459 true))

(assert (=> b!6506459 true))

(declare-fun b!6506450 () Bool)

(declare-fun res!2671927 () Bool)

(declare-fun e!3942315 () Bool)

(assert (=> b!6506450 (=> res!2671927 e!3942315)))

(declare-fun call!563970 () Bool)

(assert (=> b!6506450 (= res!2671927 call!563970)))

(declare-fun e!3942318 () Bool)

(assert (=> b!6506450 (= e!3942318 e!3942315)))

(declare-fun b!6506451 () Bool)

(declare-fun e!3942316 () Bool)

(assert (=> b!6506451 (= e!3942316 (matchRSpec!3486 (regTwo!33283 lt!2392795) s!2326))))

(declare-fun call!563971 () Bool)

(assert (=> b!6506452 (= e!3942315 call!563971)))

(declare-fun b!6506453 () Bool)

(declare-fun e!3942319 () Bool)

(assert (=> b!6506453 (= e!3942319 call!563970)))

(declare-fun b!6506455 () Bool)

(declare-fun e!3942320 () Bool)

(assert (=> b!6506455 (= e!3942319 e!3942320)))

(declare-fun res!2671926 () Bool)

(assert (=> b!6506455 (= res!2671926 (not ((_ is EmptyLang!16385) lt!2392795)))))

(assert (=> b!6506455 (=> (not res!2671926) (not e!3942320))))

(declare-fun b!6506456 () Bool)

(declare-fun c!1193295 () Bool)

(assert (=> b!6506456 (= c!1193295 ((_ is Union!16385) lt!2392795))))

(declare-fun e!3942314 () Bool)

(declare-fun e!3942317 () Bool)

(assert (=> b!6506456 (= e!3942314 e!3942317)))

(declare-fun b!6506457 () Bool)

(declare-fun c!1193297 () Bool)

(assert (=> b!6506457 (= c!1193297 ((_ is ElementMatch!16385) lt!2392795))))

(assert (=> b!6506457 (= e!3942320 e!3942314)))

(declare-fun b!6506458 () Bool)

(assert (=> b!6506458 (= e!3942314 (= s!2326 (Cons!65332 (c!1193105 lt!2392795) Nil!65332)))))

(declare-fun b!6506454 () Bool)

(assert (=> b!6506454 (= e!3942317 e!3942318)))

(declare-fun c!1193294 () Bool)

(assert (=> b!6506454 (= c!1193294 ((_ is Star!16385) lt!2392795))))

(declare-fun d!2041414 () Bool)

(declare-fun c!1193296 () Bool)

(assert (=> d!2041414 (= c!1193296 ((_ is EmptyExpr!16385) lt!2392795))))

(assert (=> d!2041414 (= (matchRSpec!3486 lt!2392795 s!2326) e!3942319)))

(declare-fun bm!563965 () Bool)

(assert (=> bm!563965 (= call!563971 (Exists!3455 (ite c!1193294 lambda!360788 lambda!360789)))))

(assert (=> b!6506459 (= e!3942318 call!563971)))

(declare-fun bm!563966 () Bool)

(assert (=> bm!563966 (= call!563970 (isEmpty!37542 s!2326))))

(declare-fun b!6506460 () Bool)

(assert (=> b!6506460 (= e!3942317 e!3942316)))

(declare-fun res!2671925 () Bool)

(assert (=> b!6506460 (= res!2671925 (matchRSpec!3486 (regOne!33283 lt!2392795) s!2326))))

(assert (=> b!6506460 (=> res!2671925 e!3942316)))

(assert (= (and d!2041414 c!1193296) b!6506453))

(assert (= (and d!2041414 (not c!1193296)) b!6506455))

(assert (= (and b!6506455 res!2671926) b!6506457))

(assert (= (and b!6506457 c!1193297) b!6506458))

(assert (= (and b!6506457 (not c!1193297)) b!6506456))

(assert (= (and b!6506456 c!1193295) b!6506460))

(assert (= (and b!6506456 (not c!1193295)) b!6506454))

(assert (= (and b!6506460 (not res!2671925)) b!6506451))

(assert (= (and b!6506454 c!1193294) b!6506450))

(assert (= (and b!6506454 (not c!1193294)) b!6506459))

(assert (= (and b!6506450 (not res!2671927)) b!6506452))

(assert (= (or b!6506452 b!6506459) bm!563965))

(assert (= (or b!6506453 b!6506450) bm!563966))

(declare-fun m!7293424 () Bool)

(assert (=> b!6506451 m!7293424))

(declare-fun m!7293426 () Bool)

(assert (=> bm!563965 m!7293426))

(assert (=> bm!563966 m!7293190))

(declare-fun m!7293428 () Bool)

(assert (=> b!6506460 m!7293428))

(assert (=> b!6505759 d!2041414))

(declare-fun d!2041416 () Bool)

(assert (=> d!2041416 (= (matchR!8568 lt!2392795 s!2326) (matchRSpec!3486 lt!2392795 s!2326))))

(declare-fun lt!2392936 () Unit!158875)

(assert (=> d!2041416 (= lt!2392936 (choose!48337 lt!2392795 s!2326))))

(assert (=> d!2041416 (validRegex!8121 lt!2392795)))

(assert (=> d!2041416 (= (mainMatchTheorem!3486 lt!2392795 s!2326) lt!2392936)))

(declare-fun bs!1652603 () Bool)

(assert (= bs!1652603 d!2041416))

(assert (=> bs!1652603 m!7292774))

(assert (=> bs!1652603 m!7292776))

(declare-fun m!7293430 () Bool)

(assert (=> bs!1652603 m!7293430))

(assert (=> bs!1652603 m!7293418))

(assert (=> b!6505759 d!2041416))

(declare-fun bs!1652604 () Bool)

(declare-fun d!2041418 () Bool)

(assert (= bs!1652604 (and d!2041418 b!6505772)))

(declare-fun lambda!360792 () Int)

(assert (=> bs!1652604 (= lambda!360792 lambda!360724)))

(declare-fun bs!1652605 () Bool)

(assert (= bs!1652605 (and d!2041418 d!2041240)))

(assert (=> bs!1652605 (= lambda!360792 lambda!360745)))

(declare-fun bs!1652606 () Bool)

(assert (= bs!1652606 (and d!2041418 d!2041250)))

(assert (=> bs!1652606 (= lambda!360792 lambda!360746)))

(declare-fun b!6506481 () Bool)

(declare-fun e!3942338 () Regex!16385)

(assert (=> b!6506481 (= e!3942338 EmptyExpr!16385)))

(declare-fun b!6506482 () Bool)

(declare-fun e!3942337 () Bool)

(declare-fun lt!2392939 () Regex!16385)

(declare-fun isEmptyExpr!1774 (Regex!16385) Bool)

(assert (=> b!6506482 (= e!3942337 (isEmptyExpr!1774 lt!2392939))))

(declare-fun b!6506483 () Bool)

(declare-fun e!3942336 () Bool)

(assert (=> b!6506483 (= e!3942336 e!3942337)))

(declare-fun c!1193308 () Bool)

(assert (=> b!6506483 (= c!1193308 (isEmpty!37537 (exprs!6269 (h!71779 zl!343))))))

(assert (=> d!2041418 e!3942336))

(declare-fun res!2671932 () Bool)

(assert (=> d!2041418 (=> (not res!2671932) (not e!3942336))))

(assert (=> d!2041418 (= res!2671932 (validRegex!8121 lt!2392939))))

(declare-fun e!3942333 () Regex!16385)

(assert (=> d!2041418 (= lt!2392939 e!3942333)))

(declare-fun c!1193309 () Bool)

(declare-fun e!3942335 () Bool)

(assert (=> d!2041418 (= c!1193309 e!3942335)))

(declare-fun res!2671933 () Bool)

(assert (=> d!2041418 (=> (not res!2671933) (not e!3942335))))

(assert (=> d!2041418 (= res!2671933 ((_ is Cons!65330) (exprs!6269 (h!71779 zl!343))))))

(assert (=> d!2041418 (forall!15566 (exprs!6269 (h!71779 zl!343)) lambda!360792)))

(assert (=> d!2041418 (= (generalisedConcat!1982 (exprs!6269 (h!71779 zl!343))) lt!2392939)))

(declare-fun b!6506484 () Bool)

(assert (=> b!6506484 (= e!3942338 (Concat!25230 (h!71778 (exprs!6269 (h!71779 zl!343))) (generalisedConcat!1982 (t!379090 (exprs!6269 (h!71779 zl!343))))))))

(declare-fun b!6506485 () Bool)

(declare-fun e!3942334 () Bool)

(declare-fun head!13242 (List!65454) Regex!16385)

(assert (=> b!6506485 (= e!3942334 (= lt!2392939 (head!13242 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun b!6506486 () Bool)

(declare-fun isConcat!1297 (Regex!16385) Bool)

(assert (=> b!6506486 (= e!3942334 (isConcat!1297 lt!2392939))))

(declare-fun b!6506487 () Bool)

(assert (=> b!6506487 (= e!3942337 e!3942334)))

(declare-fun c!1193306 () Bool)

(declare-fun tail!12327 (List!65454) List!65454)

(assert (=> b!6506487 (= c!1193306 (isEmpty!37537 (tail!12327 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun b!6506488 () Bool)

(assert (=> b!6506488 (= e!3942333 (h!71778 (exprs!6269 (h!71779 zl!343))))))

(declare-fun b!6506489 () Bool)

(assert (=> b!6506489 (= e!3942335 (isEmpty!37537 (t!379090 (exprs!6269 (h!71779 zl!343)))))))

(declare-fun b!6506490 () Bool)

(assert (=> b!6506490 (= e!3942333 e!3942338)))

(declare-fun c!1193307 () Bool)

(assert (=> b!6506490 (= c!1193307 ((_ is Cons!65330) (exprs!6269 (h!71779 zl!343))))))

(assert (= (and d!2041418 res!2671933) b!6506489))

(assert (= (and d!2041418 c!1193309) b!6506488))

(assert (= (and d!2041418 (not c!1193309)) b!6506490))

(assert (= (and b!6506490 c!1193307) b!6506484))

(assert (= (and b!6506490 (not c!1193307)) b!6506481))

(assert (= (and d!2041418 res!2671932) b!6506483))

(assert (= (and b!6506483 c!1193308) b!6506482))

(assert (= (and b!6506483 (not c!1193308)) b!6506487))

(assert (= (and b!6506487 c!1193306) b!6506485))

(assert (= (and b!6506487 (not c!1193306)) b!6506486))

(declare-fun m!7293432 () Bool)

(assert (=> b!6506485 m!7293432))

(declare-fun m!7293434 () Bool)

(assert (=> b!6506483 m!7293434))

(declare-fun m!7293436 () Bool)

(assert (=> b!6506486 m!7293436))

(declare-fun m!7293438 () Bool)

(assert (=> b!6506484 m!7293438))

(declare-fun m!7293440 () Bool)

(assert (=> d!2041418 m!7293440))

(declare-fun m!7293442 () Bool)

(assert (=> d!2041418 m!7293442))

(assert (=> b!6506489 m!7292754))

(declare-fun m!7293444 () Bool)

(assert (=> b!6506487 m!7293444))

(assert (=> b!6506487 m!7293444))

(declare-fun m!7293446 () Bool)

(assert (=> b!6506487 m!7293446))

(declare-fun m!7293448 () Bool)

(assert (=> b!6506482 m!7293448))

(assert (=> b!6505780 d!2041418))

(declare-fun bs!1652607 () Bool)

(declare-fun d!2041420 () Bool)

(assert (= bs!1652607 (and d!2041420 b!6505772)))

(declare-fun lambda!360795 () Int)

(assert (=> bs!1652607 (= lambda!360795 lambda!360724)))

(declare-fun bs!1652608 () Bool)

(assert (= bs!1652608 (and d!2041420 d!2041240)))

(assert (=> bs!1652608 (= lambda!360795 lambda!360745)))

(declare-fun bs!1652609 () Bool)

(assert (= bs!1652609 (and d!2041420 d!2041250)))

(assert (=> bs!1652609 (= lambda!360795 lambda!360746)))

(declare-fun bs!1652610 () Bool)

(assert (= bs!1652610 (and d!2041420 d!2041418)))

(assert (=> bs!1652610 (= lambda!360795 lambda!360792)))

(declare-fun e!3942355 () Bool)

(assert (=> d!2041420 e!3942355))

(declare-fun res!2671939 () Bool)

(assert (=> d!2041420 (=> (not res!2671939) (not e!3942355))))

(declare-fun lt!2392942 () Regex!16385)

(assert (=> d!2041420 (= res!2671939 (validRegex!8121 lt!2392942))))

(declare-fun e!3942354 () Regex!16385)

(assert (=> d!2041420 (= lt!2392942 e!3942354)))

(declare-fun c!1193318 () Bool)

(declare-fun e!3942353 () Bool)

(assert (=> d!2041420 (= c!1193318 e!3942353)))

(declare-fun res!2671938 () Bool)

(assert (=> d!2041420 (=> (not res!2671938) (not e!3942353))))

(assert (=> d!2041420 (= res!2671938 ((_ is Cons!65330) (unfocusZipperList!1806 zl!343)))))

(assert (=> d!2041420 (forall!15566 (unfocusZipperList!1806 zl!343) lambda!360795)))

(assert (=> d!2041420 (= (generalisedUnion!2229 (unfocusZipperList!1806 zl!343)) lt!2392942)))

(declare-fun b!6506511 () Bool)

(declare-fun e!3942356 () Bool)

(declare-fun e!3942352 () Bool)

(assert (=> b!6506511 (= e!3942356 e!3942352)))

(declare-fun c!1193320 () Bool)

(assert (=> b!6506511 (= c!1193320 (isEmpty!37537 (tail!12327 (unfocusZipperList!1806 zl!343))))))

(declare-fun b!6506512 () Bool)

(declare-fun isEmptyLang!1783 (Regex!16385) Bool)

(assert (=> b!6506512 (= e!3942356 (isEmptyLang!1783 lt!2392942))))

(declare-fun b!6506513 () Bool)

(assert (=> b!6506513 (= e!3942353 (isEmpty!37537 (t!379090 (unfocusZipperList!1806 zl!343))))))

(declare-fun b!6506514 () Bool)

(declare-fun e!3942351 () Regex!16385)

(assert (=> b!6506514 (= e!3942351 (Union!16385 (h!71778 (unfocusZipperList!1806 zl!343)) (generalisedUnion!2229 (t!379090 (unfocusZipperList!1806 zl!343)))))))

(declare-fun b!6506515 () Bool)

(declare-fun isUnion!1213 (Regex!16385) Bool)

(assert (=> b!6506515 (= e!3942352 (isUnion!1213 lt!2392942))))

(declare-fun b!6506516 () Bool)

(assert (=> b!6506516 (= e!3942352 (= lt!2392942 (head!13242 (unfocusZipperList!1806 zl!343))))))

(declare-fun b!6506517 () Bool)

(assert (=> b!6506517 (= e!3942354 (h!71778 (unfocusZipperList!1806 zl!343)))))

(declare-fun b!6506518 () Bool)

(assert (=> b!6506518 (= e!3942354 e!3942351)))

(declare-fun c!1193321 () Bool)

(assert (=> b!6506518 (= c!1193321 ((_ is Cons!65330) (unfocusZipperList!1806 zl!343)))))

(declare-fun b!6506519 () Bool)

(assert (=> b!6506519 (= e!3942351 EmptyLang!16385)))

(declare-fun b!6506520 () Bool)

(assert (=> b!6506520 (= e!3942355 e!3942356)))

(declare-fun c!1193319 () Bool)

(assert (=> b!6506520 (= c!1193319 (isEmpty!37537 (unfocusZipperList!1806 zl!343)))))

(assert (= (and d!2041420 res!2671938) b!6506513))

(assert (= (and d!2041420 c!1193318) b!6506517))

(assert (= (and d!2041420 (not c!1193318)) b!6506518))

(assert (= (and b!6506518 c!1193321) b!6506514))

(assert (= (and b!6506518 (not c!1193321)) b!6506519))

(assert (= (and d!2041420 res!2671939) b!6506520))

(assert (= (and b!6506520 c!1193319) b!6506512))

(assert (= (and b!6506520 (not c!1193319)) b!6506511))

(assert (= (and b!6506511 c!1193320) b!6506516))

(assert (= (and b!6506511 (not c!1193320)) b!6506515))

(declare-fun m!7293450 () Bool)

(assert (=> b!6506512 m!7293450))

(declare-fun m!7293452 () Bool)

(assert (=> b!6506515 m!7293452))

(declare-fun m!7293454 () Bool)

(assert (=> b!6506514 m!7293454))

(assert (=> b!6506511 m!7292792))

(declare-fun m!7293456 () Bool)

(assert (=> b!6506511 m!7293456))

(assert (=> b!6506511 m!7293456))

(declare-fun m!7293458 () Bool)

(assert (=> b!6506511 m!7293458))

(assert (=> b!6506520 m!7292792))

(declare-fun m!7293460 () Bool)

(assert (=> b!6506520 m!7293460))

(assert (=> b!6506516 m!7292792))

(declare-fun m!7293462 () Bool)

(assert (=> b!6506516 m!7293462))

(declare-fun m!7293464 () Bool)

(assert (=> d!2041420 m!7293464))

(assert (=> d!2041420 m!7292792))

(declare-fun m!7293466 () Bool)

(assert (=> d!2041420 m!7293466))

(declare-fun m!7293468 () Bool)

(assert (=> b!6506513 m!7293468))

(assert (=> b!6505760 d!2041420))

(declare-fun bs!1652611 () Bool)

(declare-fun d!2041422 () Bool)

(assert (= bs!1652611 (and d!2041422 d!2041420)))

(declare-fun lambda!360798 () Int)

(assert (=> bs!1652611 (= lambda!360798 lambda!360795)))

(declare-fun bs!1652612 () Bool)

(assert (= bs!1652612 (and d!2041422 d!2041250)))

(assert (=> bs!1652612 (= lambda!360798 lambda!360746)))

(declare-fun bs!1652613 () Bool)

(assert (= bs!1652613 (and d!2041422 d!2041418)))

(assert (=> bs!1652613 (= lambda!360798 lambda!360792)))

(declare-fun bs!1652614 () Bool)

(assert (= bs!1652614 (and d!2041422 d!2041240)))

(assert (=> bs!1652614 (= lambda!360798 lambda!360745)))

(declare-fun bs!1652615 () Bool)

(assert (= bs!1652615 (and d!2041422 b!6505772)))

(assert (=> bs!1652615 (= lambda!360798 lambda!360724)))

(declare-fun lt!2392945 () List!65454)

(assert (=> d!2041422 (forall!15566 lt!2392945 lambda!360798)))

(declare-fun e!3942359 () List!65454)

(assert (=> d!2041422 (= lt!2392945 e!3942359)))

(declare-fun c!1193324 () Bool)

(assert (=> d!2041422 (= c!1193324 ((_ is Cons!65331) zl!343))))

(assert (=> d!2041422 (= (unfocusZipperList!1806 zl!343) lt!2392945)))

(declare-fun b!6506525 () Bool)

(assert (=> b!6506525 (= e!3942359 (Cons!65330 (generalisedConcat!1982 (exprs!6269 (h!71779 zl!343))) (unfocusZipperList!1806 (t!379091 zl!343))))))

(declare-fun b!6506526 () Bool)

(assert (=> b!6506526 (= e!3942359 Nil!65330)))

(assert (= (and d!2041422 c!1193324) b!6506525))

(assert (= (and d!2041422 (not c!1193324)) b!6506526))

(declare-fun m!7293470 () Bool)

(assert (=> d!2041422 m!7293470))

(assert (=> b!6506525 m!7292752))

(declare-fun m!7293472 () Bool)

(assert (=> b!6506525 m!7293472))

(assert (=> b!6505760 d!2041422))

(declare-fun bm!563973 () Bool)

(declare-fun call!563980 () Bool)

(declare-fun c!1193329 () Bool)

(assert (=> bm!563973 (= call!563980 (validRegex!8121 (ite c!1193329 (regOne!33283 r!7292) (regOne!33282 r!7292))))))

(declare-fun b!6506545 () Bool)

(declare-fun e!3942374 () Bool)

(declare-fun call!563978 () Bool)

(assert (=> b!6506545 (= e!3942374 call!563978)))

(declare-fun b!6506546 () Bool)

(declare-fun res!2671951 () Bool)

(declare-fun e!3942380 () Bool)

(assert (=> b!6506546 (=> (not res!2671951) (not e!3942380))))

(assert (=> b!6506546 (= res!2671951 call!563980)))

(declare-fun e!3942377 () Bool)

(assert (=> b!6506546 (= e!3942377 e!3942380)))

(declare-fun b!6506547 () Bool)

(declare-fun e!3942379 () Bool)

(declare-fun e!3942378 () Bool)

(assert (=> b!6506547 (= e!3942379 e!3942378)))

(declare-fun c!1193330 () Bool)

(assert (=> b!6506547 (= c!1193330 ((_ is Star!16385) r!7292))))

(declare-fun d!2041424 () Bool)

(declare-fun res!2671954 () Bool)

(assert (=> d!2041424 (=> res!2671954 e!3942379)))

(assert (=> d!2041424 (= res!2671954 ((_ is ElementMatch!16385) r!7292))))

(assert (=> d!2041424 (= (validRegex!8121 r!7292) e!3942379)))

(declare-fun b!6506548 () Bool)

(declare-fun e!3942375 () Bool)

(declare-fun e!3942376 () Bool)

(assert (=> b!6506548 (= e!3942375 e!3942376)))

(declare-fun res!2671950 () Bool)

(assert (=> b!6506548 (=> (not res!2671950) (not e!3942376))))

(assert (=> b!6506548 (= res!2671950 call!563980)))

(declare-fun bm!563974 () Bool)

(assert (=> bm!563974 (= call!563978 (validRegex!8121 (ite c!1193330 (reg!16714 r!7292) (ite c!1193329 (regTwo!33283 r!7292) (regTwo!33282 r!7292)))))))

(declare-fun b!6506549 () Bool)

(declare-fun call!563979 () Bool)

(assert (=> b!6506549 (= e!3942376 call!563979)))

(declare-fun bm!563975 () Bool)

(assert (=> bm!563975 (= call!563979 call!563978)))

(declare-fun b!6506550 () Bool)

(declare-fun res!2671953 () Bool)

(assert (=> b!6506550 (=> res!2671953 e!3942375)))

(assert (=> b!6506550 (= res!2671953 (not ((_ is Concat!25230) r!7292)))))

(assert (=> b!6506550 (= e!3942377 e!3942375)))

(declare-fun b!6506551 () Bool)

(assert (=> b!6506551 (= e!3942378 e!3942374)))

(declare-fun res!2671952 () Bool)

(assert (=> b!6506551 (= res!2671952 (not (nullable!6378 (reg!16714 r!7292))))))

(assert (=> b!6506551 (=> (not res!2671952) (not e!3942374))))

(declare-fun b!6506552 () Bool)

(assert (=> b!6506552 (= e!3942380 call!563979)))

(declare-fun b!6506553 () Bool)

(assert (=> b!6506553 (= e!3942378 e!3942377)))

(assert (=> b!6506553 (= c!1193329 ((_ is Union!16385) r!7292))))

(assert (= (and d!2041424 (not res!2671954)) b!6506547))

(assert (= (and b!6506547 c!1193330) b!6506551))

(assert (= (and b!6506547 (not c!1193330)) b!6506553))

(assert (= (and b!6506551 res!2671952) b!6506545))

(assert (= (and b!6506553 c!1193329) b!6506546))

(assert (= (and b!6506553 (not c!1193329)) b!6506550))

(assert (= (and b!6506546 res!2671951) b!6506552))

(assert (= (and b!6506550 (not res!2671953)) b!6506548))

(assert (= (and b!6506548 res!2671950) b!6506549))

(assert (= (or b!6506552 b!6506549) bm!563975))

(assert (= (or b!6506546 b!6506548) bm!563973))

(assert (= (or b!6506545 bm!563975) bm!563974))

(declare-fun m!7293474 () Bool)

(assert (=> bm!563973 m!7293474))

(declare-fun m!7293476 () Bool)

(assert (=> bm!563974 m!7293476))

(declare-fun m!7293478 () Bool)

(assert (=> b!6506551 m!7293478))

(assert (=> start!639194 d!2041424))

(declare-fun d!2041426 () Bool)

(assert (=> d!2041426 (= (flatMap!1890 lt!2392794 lambda!360722) (choose!48334 lt!2392794 lambda!360722))))

(declare-fun bs!1652616 () Bool)

(assert (= bs!1652616 d!2041426))

(declare-fun m!7293480 () Bool)

(assert (=> bs!1652616 m!7293480))

(assert (=> b!6505781 d!2041426))

(declare-fun e!3942382 () (InoxSet Context!11538))

(declare-fun b!6506554 () Bool)

(declare-fun call!563981 () (InoxSet Context!11538))

(assert (=> b!6506554 (= e!3942382 ((_ map or) call!563981 (derivationStepZipperUp!1559 (Context!11539 (t!379090 (exprs!6269 lt!2392813))) (h!71780 s!2326))))))

(declare-fun d!2041428 () Bool)

(declare-fun c!1193332 () Bool)

(declare-fun e!3942381 () Bool)

(assert (=> d!2041428 (= c!1193332 e!3942381)))

(declare-fun res!2671955 () Bool)

(assert (=> d!2041428 (=> (not res!2671955) (not e!3942381))))

(assert (=> d!2041428 (= res!2671955 ((_ is Cons!65330) (exprs!6269 lt!2392813)))))

(assert (=> d!2041428 (= (derivationStepZipperUp!1559 lt!2392813 (h!71780 s!2326)) e!3942382)))

(declare-fun b!6506555 () Bool)

(declare-fun e!3942383 () (InoxSet Context!11538))

(assert (=> b!6506555 (= e!3942383 call!563981)))

(declare-fun b!6506556 () Bool)

(assert (=> b!6506556 (= e!3942381 (nullable!6378 (h!71778 (exprs!6269 lt!2392813))))))

(declare-fun b!6506557 () Bool)

(assert (=> b!6506557 (= e!3942382 e!3942383)))

(declare-fun c!1193331 () Bool)

(assert (=> b!6506557 (= c!1193331 ((_ is Cons!65330) (exprs!6269 lt!2392813)))))

(declare-fun bm!563976 () Bool)

(assert (=> bm!563976 (= call!563981 (derivationStepZipperDown!1633 (h!71778 (exprs!6269 lt!2392813)) (Context!11539 (t!379090 (exprs!6269 lt!2392813))) (h!71780 s!2326)))))

(declare-fun b!6506558 () Bool)

(assert (=> b!6506558 (= e!3942383 ((as const (Array Context!11538 Bool)) false))))

(assert (= (and d!2041428 res!2671955) b!6506556))

(assert (= (and d!2041428 c!1193332) b!6506554))

(assert (= (and d!2041428 (not c!1193332)) b!6506557))

(assert (= (and b!6506557 c!1193331) b!6506555))

(assert (= (and b!6506557 (not c!1193331)) b!6506558))

(assert (= (or b!6506554 b!6506555) bm!563976))

(declare-fun m!7293482 () Bool)

(assert (=> b!6506554 m!7293482))

(declare-fun m!7293484 () Bool)

(assert (=> b!6506556 m!7293484))

(declare-fun m!7293486 () Bool)

(assert (=> bm!563976 m!7293486))

(assert (=> b!6505781 d!2041428))

(declare-fun d!2041430 () Bool)

(assert (=> d!2041430 (= (flatMap!1890 lt!2392794 lambda!360722) (dynLambda!25958 lambda!360722 lt!2392813))))

(declare-fun lt!2392946 () Unit!158875)

(assert (=> d!2041430 (= lt!2392946 (choose!48333 lt!2392794 lt!2392813 lambda!360722))))

(assert (=> d!2041430 (= lt!2392794 (store ((as const (Array Context!11538 Bool)) false) lt!2392813 true))))

(assert (=> d!2041430 (= (lemmaFlatMapOnSingletonSet!1416 lt!2392794 lt!2392813 lambda!360722) lt!2392946)))

(declare-fun b_lambda!246349 () Bool)

(assert (=> (not b_lambda!246349) (not d!2041430)))

(declare-fun bs!1652617 () Bool)

(assert (= bs!1652617 d!2041430))

(assert (=> bs!1652617 m!7292840))

(declare-fun m!7293488 () Bool)

(assert (=> bs!1652617 m!7293488))

(declare-fun m!7293490 () Bool)

(assert (=> bs!1652617 m!7293490))

(assert (=> bs!1652617 m!7292838))

(assert (=> b!6505781 d!2041430))

(declare-fun bs!1652618 () Bool)

(declare-fun d!2041432 () Bool)

(assert (= bs!1652618 (and d!2041432 b!6505754)))

(declare-fun lambda!360801 () Int)

(assert (=> bs!1652618 (= lambda!360801 lambda!360722)))

(assert (=> d!2041432 true))

(assert (=> d!2041432 (= (derivationStepZipper!2351 lt!2392794 (h!71780 s!2326)) (flatMap!1890 lt!2392794 lambda!360801))))

(declare-fun bs!1652619 () Bool)

(assert (= bs!1652619 d!2041432))

(declare-fun m!7293492 () Bool)

(assert (=> bs!1652619 m!7293492))

(assert (=> b!6505781 d!2041432))

(declare-fun d!2041434 () Bool)

(declare-fun lt!2392947 () Regex!16385)

(assert (=> d!2041434 (validRegex!8121 lt!2392947)))

(assert (=> d!2041434 (= lt!2392947 (generalisedUnion!2229 (unfocusZipperList!1806 zl!343)))))

(assert (=> d!2041434 (= (unfocusZipper!2127 zl!343) lt!2392947)))

(declare-fun bs!1652620 () Bool)

(assert (= bs!1652620 d!2041434))

(declare-fun m!7293494 () Bool)

(assert (=> bs!1652620 m!7293494))

(assert (=> bs!1652620 m!7292792))

(assert (=> bs!1652620 m!7292792))

(assert (=> bs!1652620 m!7292794))

(assert (=> b!6505741 d!2041434))

(assert (=> b!6505762 d!2041322))

(declare-fun d!2041436 () Bool)

(assert (=> d!2041436 (= (nullable!6378 (regOne!33282 (regOne!33282 r!7292))) (nullableFct!2314 (regOne!33282 (regOne!33282 r!7292))))))

(declare-fun bs!1652621 () Bool)

(assert (= bs!1652621 d!2041436))

(declare-fun m!7293496 () Bool)

(assert (=> bs!1652621 m!7293496))

(assert (=> b!6505742 d!2041436))

(declare-fun d!2041438 () Bool)

(assert (=> d!2041438 (= (isEmpty!37537 (t!379090 (exprs!6269 (h!71779 zl!343)))) ((_ is Nil!65330) (t!379090 (exprs!6269 (h!71779 zl!343)))))))

(assert (=> b!6505763 d!2041438))

(declare-fun bm!563977 () Bool)

(declare-fun c!1193336 () Bool)

(declare-fun c!1193337 () Bool)

(declare-fun call!563986 () List!65454)

(assert (=> bm!563977 (= call!563986 ($colon$colon!2236 (exprs!6269 lt!2392811) (ite (or c!1193337 c!1193336) (regTwo!33282 (reg!16714 (regOne!33282 r!7292))) (reg!16714 (regOne!33282 r!7292)))))))

(declare-fun b!6506561 () Bool)

(declare-fun e!3942389 () (InoxSet Context!11538))

(declare-fun call!563982 () (InoxSet Context!11538))

(assert (=> b!6506561 (= e!3942389 call!563982)))

(declare-fun b!6506562 () Bool)

(declare-fun e!3942388 () Bool)

(assert (=> b!6506562 (= c!1193337 e!3942388)))

(declare-fun res!2671956 () Bool)

(assert (=> b!6506562 (=> (not res!2671956) (not e!3942388))))

(assert (=> b!6506562 (= res!2671956 ((_ is Concat!25230) (reg!16714 (regOne!33282 r!7292))))))

(declare-fun e!3942385 () (InoxSet Context!11538))

(declare-fun e!3942384 () (InoxSet Context!11538))

(assert (=> b!6506562 (= e!3942385 e!3942384)))

(declare-fun b!6506563 () Bool)

(declare-fun call!563984 () (InoxSet Context!11538))

(declare-fun call!563985 () (InoxSet Context!11538))

(assert (=> b!6506563 (= e!3942385 ((_ map or) call!563984 call!563985))))

(declare-fun bm!563978 () Bool)

(declare-fun call!563987 () (InoxSet Context!11538))

(assert (=> bm!563978 (= call!563987 call!563985)))

(declare-fun b!6506564 () Bool)

(declare-fun e!3942386 () (InoxSet Context!11538))

(assert (=> b!6506564 (= e!3942386 (store ((as const (Array Context!11538 Bool)) false) lt!2392811 true))))

(declare-fun b!6506565 () Bool)

(declare-fun e!3942387 () (InoxSet Context!11538))

(assert (=> b!6506565 (= e!3942387 ((as const (Array Context!11538 Bool)) false))))

(declare-fun bm!563979 () Bool)

(declare-fun call!563983 () List!65454)

(assert (=> bm!563979 (= call!563983 call!563986)))

(declare-fun bm!563980 () Bool)

(assert (=> bm!563980 (= call!563982 call!563987)))

(declare-fun b!6506566 () Bool)

(assert (=> b!6506566 (= e!3942384 ((_ map or) call!563984 call!563987))))

(declare-fun c!1193338 () Bool)

(declare-fun bm!563981 () Bool)

(assert (=> bm!563981 (= call!563984 (derivationStepZipperDown!1633 (ite c!1193338 (regOne!33283 (reg!16714 (regOne!33282 r!7292))) (regOne!33282 (reg!16714 (regOne!33282 r!7292)))) (ite c!1193338 lt!2392811 (Context!11539 call!563986)) (h!71780 s!2326)))))

(declare-fun b!6506567 () Bool)

(assert (=> b!6506567 (= e!3942384 e!3942389)))

(assert (=> b!6506567 (= c!1193336 ((_ is Concat!25230) (reg!16714 (regOne!33282 r!7292))))))

(declare-fun d!2041440 () Bool)

(declare-fun c!1193335 () Bool)

(assert (=> d!2041440 (= c!1193335 (and ((_ is ElementMatch!16385) (reg!16714 (regOne!33282 r!7292))) (= (c!1193105 (reg!16714 (regOne!33282 r!7292))) (h!71780 s!2326))))))

(assert (=> d!2041440 (= (derivationStepZipperDown!1633 (reg!16714 (regOne!33282 r!7292)) lt!2392811 (h!71780 s!2326)) e!3942386)))

(declare-fun b!6506568 () Bool)

(assert (=> b!6506568 (= e!3942386 e!3942385)))

(assert (=> b!6506568 (= c!1193338 ((_ is Union!16385) (reg!16714 (regOne!33282 r!7292))))))

(declare-fun bm!563982 () Bool)

(assert (=> bm!563982 (= call!563985 (derivationStepZipperDown!1633 (ite c!1193338 (regTwo!33283 (reg!16714 (regOne!33282 r!7292))) (ite c!1193337 (regTwo!33282 (reg!16714 (regOne!33282 r!7292))) (ite c!1193336 (regOne!33282 (reg!16714 (regOne!33282 r!7292))) (reg!16714 (reg!16714 (regOne!33282 r!7292)))))) (ite (or c!1193338 c!1193337) lt!2392811 (Context!11539 call!563983)) (h!71780 s!2326)))))

(declare-fun b!6506569 () Bool)

(declare-fun c!1193339 () Bool)

(assert (=> b!6506569 (= c!1193339 ((_ is Star!16385) (reg!16714 (regOne!33282 r!7292))))))

(assert (=> b!6506569 (= e!3942389 e!3942387)))

(declare-fun b!6506570 () Bool)

(assert (=> b!6506570 (= e!3942387 call!563982)))

(declare-fun b!6506571 () Bool)

(assert (=> b!6506571 (= e!3942388 (nullable!6378 (regOne!33282 (reg!16714 (regOne!33282 r!7292)))))))

(assert (= (and d!2041440 c!1193335) b!6506564))

(assert (= (and d!2041440 (not c!1193335)) b!6506568))

(assert (= (and b!6506568 c!1193338) b!6506563))

(assert (= (and b!6506568 (not c!1193338)) b!6506562))

(assert (= (and b!6506562 res!2671956) b!6506571))

(assert (= (and b!6506562 c!1193337) b!6506566))

(assert (= (and b!6506562 (not c!1193337)) b!6506567))

(assert (= (and b!6506567 c!1193336) b!6506561))

(assert (= (and b!6506567 (not c!1193336)) b!6506569))

(assert (= (and b!6506569 c!1193339) b!6506570))

(assert (= (and b!6506569 (not c!1193339)) b!6506565))

(assert (= (or b!6506561 b!6506570) bm!563979))

(assert (= (or b!6506561 b!6506570) bm!563980))

(assert (= (or b!6506566 bm!563979) bm!563977))

(assert (= (or b!6506566 bm!563980) bm!563978))

(assert (= (or b!6506563 bm!563978) bm!563982))

(assert (= (or b!6506563 b!6506566) bm!563981))

(assert (=> b!6506564 m!7292862))

(declare-fun m!7293498 () Bool)

(assert (=> bm!563982 m!7293498))

(declare-fun m!7293500 () Bool)

(assert (=> bm!563977 m!7293500))

(declare-fun m!7293502 () Bool)

(assert (=> b!6506571 m!7293502))

(declare-fun m!7293504 () Bool)

(assert (=> bm!563981 m!7293504))

(assert (=> b!6505765 d!2041440))

(declare-fun bs!1652622 () Bool)

(declare-fun d!2041442 () Bool)

(assert (= bs!1652622 (and d!2041442 d!2041420)))

(declare-fun lambda!360802 () Int)

(assert (=> bs!1652622 (= lambda!360802 lambda!360795)))

(declare-fun bs!1652623 () Bool)

(assert (= bs!1652623 (and d!2041442 d!2041250)))

(assert (=> bs!1652623 (= lambda!360802 lambda!360746)))

(declare-fun bs!1652624 () Bool)

(assert (= bs!1652624 (and d!2041442 d!2041418)))

(assert (=> bs!1652624 (= lambda!360802 lambda!360792)))

(declare-fun bs!1652625 () Bool)

(assert (= bs!1652625 (and d!2041442 d!2041240)))

(assert (=> bs!1652625 (= lambda!360802 lambda!360745)))

(declare-fun bs!1652626 () Bool)

(assert (= bs!1652626 (and d!2041442 b!6505772)))

(assert (=> bs!1652626 (= lambda!360802 lambda!360724)))

(declare-fun bs!1652627 () Bool)

(assert (= bs!1652627 (and d!2041442 d!2041422)))

(assert (=> bs!1652627 (= lambda!360802 lambda!360798)))

(assert (=> d!2041442 (= (inv!84209 lt!2392811) (forall!15566 (exprs!6269 lt!2392811) lambda!360802))))

(declare-fun bs!1652628 () Bool)

(assert (= bs!1652628 d!2041442))

(declare-fun m!7293506 () Bool)

(assert (=> bs!1652628 m!7293506))

(assert (=> b!6505744 d!2041442))

(declare-fun b!6506576 () Bool)

(declare-fun e!3942392 () Bool)

(declare-fun tp!1799401 () Bool)

(declare-fun tp!1799402 () Bool)

(assert (=> b!6506576 (= e!3942392 (and tp!1799401 tp!1799402))))

(assert (=> b!6505770 (= tp!1799338 e!3942392)))

(assert (= (and b!6505770 ((_ is Cons!65330) (exprs!6269 (h!71779 zl!343)))) b!6506576))

(declare-fun b!6506577 () Bool)

(declare-fun e!3942393 () Bool)

(declare-fun tp!1799403 () Bool)

(declare-fun tp!1799404 () Bool)

(assert (=> b!6506577 (= e!3942393 (and tp!1799403 tp!1799404))))

(assert (=> b!6505761 (= tp!1799334 e!3942393)))

(assert (= (and b!6505761 ((_ is Cons!65330) (exprs!6269 setElem!44371))) b!6506577))

(declare-fun b!6506591 () Bool)

(declare-fun e!3942396 () Bool)

(declare-fun tp!1799418 () Bool)

(declare-fun tp!1799419 () Bool)

(assert (=> b!6506591 (= e!3942396 (and tp!1799418 tp!1799419))))

(declare-fun b!6506589 () Bool)

(declare-fun tp!1799415 () Bool)

(declare-fun tp!1799416 () Bool)

(assert (=> b!6506589 (= e!3942396 (and tp!1799415 tp!1799416))))

(assert (=> b!6505745 (= tp!1799332 e!3942396)))

(declare-fun b!6506590 () Bool)

(declare-fun tp!1799417 () Bool)

(assert (=> b!6506590 (= e!3942396 tp!1799417)))

(declare-fun b!6506588 () Bool)

(assert (=> b!6506588 (= e!3942396 tp_is_empty!42023)))

(assert (= (and b!6505745 ((_ is ElementMatch!16385) (reg!16714 r!7292))) b!6506588))

(assert (= (and b!6505745 ((_ is Concat!25230) (reg!16714 r!7292))) b!6506589))

(assert (= (and b!6505745 ((_ is Star!16385) (reg!16714 r!7292))) b!6506590))

(assert (= (and b!6505745 ((_ is Union!16385) (reg!16714 r!7292))) b!6506591))

(declare-fun b!6506596 () Bool)

(declare-fun e!3942399 () Bool)

(declare-fun tp!1799422 () Bool)

(assert (=> b!6506596 (= e!3942399 (and tp_is_empty!42023 tp!1799422))))

(assert (=> b!6505767 (= tp!1799330 e!3942399)))

(assert (= (and b!6505767 ((_ is Cons!65332) (t!379092 s!2326))) b!6506596))

(declare-fun condSetEmpty!44377 () Bool)

(assert (=> setNonEmpty!44371 (= condSetEmpty!44377 (= setRest!44371 ((as const (Array Context!11538 Bool)) false)))))

(declare-fun setRes!44377 () Bool)

(assert (=> setNonEmpty!44371 (= tp!1799335 setRes!44377)))

(declare-fun setIsEmpty!44377 () Bool)

(assert (=> setIsEmpty!44377 setRes!44377))

(declare-fun e!3942402 () Bool)

(declare-fun tp!1799428 () Bool)

(declare-fun setNonEmpty!44377 () Bool)

(declare-fun setElem!44377 () Context!11538)

(assert (=> setNonEmpty!44377 (= setRes!44377 (and tp!1799428 (inv!84209 setElem!44377) e!3942402))))

(declare-fun setRest!44377 () (InoxSet Context!11538))

(assert (=> setNonEmpty!44377 (= setRest!44371 ((_ map or) (store ((as const (Array Context!11538 Bool)) false) setElem!44377 true) setRest!44377))))

(declare-fun b!6506601 () Bool)

(declare-fun tp!1799427 () Bool)

(assert (=> b!6506601 (= e!3942402 tp!1799427)))

(assert (= (and setNonEmpty!44371 condSetEmpty!44377) setIsEmpty!44377))

(assert (= (and setNonEmpty!44371 (not condSetEmpty!44377)) setNonEmpty!44377))

(assert (= setNonEmpty!44377 b!6506601))

(declare-fun m!7293508 () Bool)

(assert (=> setNonEmpty!44377 m!7293508))

(declare-fun b!6506609 () Bool)

(declare-fun e!3942408 () Bool)

(declare-fun tp!1799433 () Bool)

(assert (=> b!6506609 (= e!3942408 tp!1799433)))

(declare-fun tp!1799434 () Bool)

(declare-fun b!6506608 () Bool)

(declare-fun e!3942407 () Bool)

(assert (=> b!6506608 (= e!3942407 (and (inv!84209 (h!71779 (t!379091 zl!343))) e!3942408 tp!1799434))))

(assert (=> b!6505747 (= tp!1799329 e!3942407)))

(assert (= b!6506608 b!6506609))

(assert (= (and b!6505747 ((_ is Cons!65331) (t!379091 zl!343))) b!6506608))

(declare-fun m!7293510 () Bool)

(assert (=> b!6506608 m!7293510))

(declare-fun b!6506613 () Bool)

(declare-fun e!3942409 () Bool)

(declare-fun tp!1799438 () Bool)

(declare-fun tp!1799439 () Bool)

(assert (=> b!6506613 (= e!3942409 (and tp!1799438 tp!1799439))))

(declare-fun b!6506611 () Bool)

(declare-fun tp!1799435 () Bool)

(declare-fun tp!1799436 () Bool)

(assert (=> b!6506611 (= e!3942409 (and tp!1799435 tp!1799436))))

(assert (=> b!6505758 (= tp!1799337 e!3942409)))

(declare-fun b!6506612 () Bool)

(declare-fun tp!1799437 () Bool)

(assert (=> b!6506612 (= e!3942409 tp!1799437)))

(declare-fun b!6506610 () Bool)

(assert (=> b!6506610 (= e!3942409 tp_is_empty!42023)))

(assert (= (and b!6505758 ((_ is ElementMatch!16385) (regOne!33283 r!7292))) b!6506610))

(assert (= (and b!6505758 ((_ is Concat!25230) (regOne!33283 r!7292))) b!6506611))

(assert (= (and b!6505758 ((_ is Star!16385) (regOne!33283 r!7292))) b!6506612))

(assert (= (and b!6505758 ((_ is Union!16385) (regOne!33283 r!7292))) b!6506613))

(declare-fun b!6506617 () Bool)

(declare-fun e!3942410 () Bool)

(declare-fun tp!1799443 () Bool)

(declare-fun tp!1799444 () Bool)

(assert (=> b!6506617 (= e!3942410 (and tp!1799443 tp!1799444))))

(declare-fun b!6506615 () Bool)

(declare-fun tp!1799440 () Bool)

(declare-fun tp!1799441 () Bool)

(assert (=> b!6506615 (= e!3942410 (and tp!1799440 tp!1799441))))

(assert (=> b!6505758 (= tp!1799336 e!3942410)))

(declare-fun b!6506616 () Bool)

(declare-fun tp!1799442 () Bool)

(assert (=> b!6506616 (= e!3942410 tp!1799442)))

(declare-fun b!6506614 () Bool)

(assert (=> b!6506614 (= e!3942410 tp_is_empty!42023)))

(assert (= (and b!6505758 ((_ is ElementMatch!16385) (regTwo!33283 r!7292))) b!6506614))

(assert (= (and b!6505758 ((_ is Concat!25230) (regTwo!33283 r!7292))) b!6506615))

(assert (= (and b!6505758 ((_ is Star!16385) (regTwo!33283 r!7292))) b!6506616))

(assert (= (and b!6505758 ((_ is Union!16385) (regTwo!33283 r!7292))) b!6506617))

(declare-fun b!6506621 () Bool)

(declare-fun e!3942411 () Bool)

(declare-fun tp!1799448 () Bool)

(declare-fun tp!1799449 () Bool)

(assert (=> b!6506621 (= e!3942411 (and tp!1799448 tp!1799449))))

(declare-fun b!6506619 () Bool)

(declare-fun tp!1799445 () Bool)

(declare-fun tp!1799446 () Bool)

(assert (=> b!6506619 (= e!3942411 (and tp!1799445 tp!1799446))))

(assert (=> b!6505769 (= tp!1799333 e!3942411)))

(declare-fun b!6506620 () Bool)

(declare-fun tp!1799447 () Bool)

(assert (=> b!6506620 (= e!3942411 tp!1799447)))

(declare-fun b!6506618 () Bool)

(assert (=> b!6506618 (= e!3942411 tp_is_empty!42023)))

(assert (= (and b!6505769 ((_ is ElementMatch!16385) (regOne!33282 r!7292))) b!6506618))

(assert (= (and b!6505769 ((_ is Concat!25230) (regOne!33282 r!7292))) b!6506619))

(assert (= (and b!6505769 ((_ is Star!16385) (regOne!33282 r!7292))) b!6506620))

(assert (= (and b!6505769 ((_ is Union!16385) (regOne!33282 r!7292))) b!6506621))

(declare-fun b!6506625 () Bool)

(declare-fun e!3942412 () Bool)

(declare-fun tp!1799453 () Bool)

(declare-fun tp!1799454 () Bool)

(assert (=> b!6506625 (= e!3942412 (and tp!1799453 tp!1799454))))

(declare-fun b!6506623 () Bool)

(declare-fun tp!1799450 () Bool)

(declare-fun tp!1799451 () Bool)

(assert (=> b!6506623 (= e!3942412 (and tp!1799450 tp!1799451))))

(assert (=> b!6505769 (= tp!1799331 e!3942412)))

(declare-fun b!6506624 () Bool)

(declare-fun tp!1799452 () Bool)

(assert (=> b!6506624 (= e!3942412 tp!1799452)))

(declare-fun b!6506622 () Bool)

(assert (=> b!6506622 (= e!3942412 tp_is_empty!42023)))

(assert (= (and b!6505769 ((_ is ElementMatch!16385) (regTwo!33282 r!7292))) b!6506622))

(assert (= (and b!6505769 ((_ is Concat!25230) (regTwo!33282 r!7292))) b!6506623))

(assert (= (and b!6505769 ((_ is Star!16385) (regTwo!33282 r!7292))) b!6506624))

(assert (= (and b!6505769 ((_ is Union!16385) (regTwo!33282 r!7292))) b!6506625))

(declare-fun b_lambda!246351 () Bool)

(assert (= b_lambda!246347 (or b!6505754 b_lambda!246351)))

(declare-fun bs!1652629 () Bool)

(declare-fun d!2041444 () Bool)

(assert (= bs!1652629 (and d!2041444 b!6505754)))

(assert (=> bs!1652629 (= (dynLambda!25958 lambda!360722 (h!71779 zl!343)) (derivationStepZipperUp!1559 (h!71779 zl!343) (h!71780 s!2326)))))

(assert (=> bs!1652629 m!7292822))

(assert (=> d!2041386 d!2041444))

(declare-fun b_lambda!246353 () Bool)

(assert (= b_lambda!246331 (or b!6505772 b_lambda!246353)))

(declare-fun bs!1652630 () Bool)

(declare-fun d!2041446 () Bool)

(assert (= bs!1652630 (and d!2041446 b!6505772)))

(declare-fun lt!2392948 () Unit!158875)

(assert (=> bs!1652630 (= lt!2392948 (lemmaConcatPreservesForall!358 (exprs!6269 lt!2392803) lt!2392792 lambda!360724))))

(assert (=> bs!1652630 (= (dynLambda!25957 lambda!360723 lt!2392803) (Context!11539 (++!14473 (exprs!6269 lt!2392803) lt!2392792)))))

(declare-fun m!7293512 () Bool)

(assert (=> bs!1652630 m!7293512))

(declare-fun m!7293514 () Bool)

(assert (=> bs!1652630 m!7293514))

(assert (=> d!2041324 d!2041446))

(declare-fun b_lambda!246355 () Bool)

(assert (= b_lambda!246343 (or b!6505754 b_lambda!246355)))

(declare-fun bs!1652631 () Bool)

(declare-fun d!2041448 () Bool)

(assert (= bs!1652631 (and d!2041448 b!6505754)))

(assert (=> bs!1652631 (= (dynLambda!25958 lambda!360722 lt!2392803) (derivationStepZipperUp!1559 lt!2392803 (h!71780 s!2326)))))

(assert (=> bs!1652631 m!7292856))

(assert (=> d!2041362 d!2041448))

(declare-fun b_lambda!246357 () Bool)

(assert (= b_lambda!246349 (or b!6505754 b_lambda!246357)))

(declare-fun bs!1652632 () Bool)

(declare-fun d!2041450 () Bool)

(assert (= bs!1652632 (and d!2041450 b!6505754)))

(assert (=> bs!1652632 (= (dynLambda!25958 lambda!360722 lt!2392813) (derivationStepZipperUp!1559 lt!2392813 (h!71780 s!2326)))))

(assert (=> bs!1652632 m!7292844))

(assert (=> d!2041430 d!2041450))

(declare-fun b_lambda!246359 () Bool)

(assert (= b_lambda!246345 (or b!6505754 b_lambda!246359)))

(declare-fun bs!1652633 () Bool)

(declare-fun d!2041452 () Bool)

(assert (= bs!1652633 (and d!2041452 b!6505754)))

(assert (=> bs!1652633 (= (dynLambda!25958 lambda!360722 lt!2392811) (derivationStepZipperUp!1559 lt!2392811 (h!71780 s!2326)))))

(assert (=> bs!1652633 m!7292850))

(assert (=> d!2041370 d!2041452))

(check-sat tp_is_empty!42023 (not d!2041314) (not b_lambda!246351) (not b!6506620) (not d!2041284) (not bm!563953) (not bs!1652633) (not b!6505979) (not d!2041386) (not b!6506612) (not d!2041416) (not b!6506304) (not b!6506516) (not b_lambda!246359) (not b!6506284) (not bm!563981) (not b!6506601) (not b!6506577) (not b!6506486) (not b!6506551) (not b!6506302) (not bm!563954) (not b!6506624) (not d!2041370) (not b!6506348) (not d!2041418) (not d!2041404) (not b!6506341) (not b!6506436) (not bm!563932) (not b!6506571) (not b!6506427) (not d!2041410) (not bm!563933) (not bm!563976) (not b_lambda!246353) (not d!2041358) (not b!6506513) (not d!2041274) (not d!2041434) (not d!2041342) (not b!6506340) (not d!2041360) (not d!2041398) (not b!6506484) (not d!2041356) (not bm!563966) (not b!6506294) (not b!6506297) (not b!6506184) (not bs!1652629) (not b!6505981) (not bm!563974) (not d!2041364) (not d!2041270) (not b!6506487) (not b!6506621) (not bm!563936) (not b!6506393) (not d!2041396) (not b!6506448) (not d!2041366) (not bm!563949) (not b!6506422) (not b!6506344) (not d!2041312) (not b!6506608) (not bm!563973) (not b!6506485) (not b!6506350) (not b!6506617) (not bs!1652631) (not d!2041362) (not d!2041378) (not bm!563964) (not b!6506556) (not b!6506187) (not bm!563965) (not b!6506611) (not b!6505973) (not b_lambda!246355) (not b!6506512) (not d!2041252) (not b!6506515) (not d!2041430) (not b!6505980) (not d!2041250) (not b!6506271) (not b!6506282) (not b!6506186) (not bs!1652632) (not b!6506460) (not d!2041412) (not d!2041382) (not d!2041400) (not d!2041432) (not b!6506264) (not d!2041354) (not b!6506265) (not b!6506299) (not b!6506613) (not b!6506589) (not b!6506434) (not bm!563977) (not b!6506343) (not b!6506576) (not b!6506339) (not b!6506623) (not d!2041420) (not b!6506287) (not b!6506625) (not d!2041324) (not b!6506616) (not d!2041376) (not b!6506289) (not b!6506441) (not b!6506345) (not b!6506449) (not b!6506591) (not b!6506443) (not b!6506554) (not bm!563982) (not b!6505975) (not d!2041436) (not d!2041394) (not b!6506514) (not bm!563934) (not b!6506384) (not b!6506349) (not b!6506520) (not b!6506609) (not b!6506619) (not d!2041240) (not d!2041322) (not b!6506342) (not bs!1652630) (not b!6506596) (not b!6506483) (not d!2041408) (not b!6506433) (not d!2041272) (not b!6506511) (not b!6506429) (not b!6506435) (not bm!563935) (not d!2041426) (not bm!563959) (not b!6506525) (not d!2041422) (not b!6506447) (not b!6506615) (not b_lambda!246357) (not b!6506292) (not b!6506451) (not bm!563960) (not b!6506489) (not b!6506482) (not d!2041442) (not d!2041372) (not bm!563963) (not setNonEmpty!44377) (not b!6506185) (not d!2041402) (not b!6506590) (not b!6505976))
(check-sat)
