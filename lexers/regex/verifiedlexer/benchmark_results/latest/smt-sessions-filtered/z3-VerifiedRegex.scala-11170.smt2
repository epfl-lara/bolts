; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!581540 () Bool)

(assert start!581540)

(declare-fun b!5599759 () Bool)

(assert (=> b!5599759 true))

(assert (=> b!5599759 true))

(declare-fun lambda!300743 () Int)

(declare-fun lambda!300742 () Int)

(assert (=> b!5599759 (not (= lambda!300743 lambda!300742))))

(assert (=> b!5599759 true))

(assert (=> b!5599759 true))

(declare-fun b!5599754 () Bool)

(assert (=> b!5599754 true))

(declare-fun b!5599751 () Bool)

(declare-fun e!3454195 () Bool)

(declare-fun e!3454194 () Bool)

(assert (=> b!5599751 (= e!3454195 e!3454194)))

(declare-fun res!2375106 () Bool)

(assert (=> b!5599751 (=> res!2375106 e!3454194)))

(declare-datatypes ((C!31444 0))(
  ( (C!31445 (val!25424 Int)) )
))
(declare-datatypes ((List!63060 0))(
  ( (Nil!62936) (Cons!62936 (h!69384 C!31444) (t!376346 List!63060)) )
))
(declare-fun s!2326 () List!63060)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15587 0))(
  ( (ElementMatch!15587 (c!981902 C!31444)) (Concat!24432 (regOne!31686 Regex!15587) (regTwo!31686 Regex!15587)) (EmptyExpr!15587) (Star!15587 (reg!15916 Regex!15587)) (EmptyLang!15587) (Union!15587 (regOne!31687 Regex!15587) (regTwo!31687 Regex!15587)) )
))
(declare-datatypes ((List!63061 0))(
  ( (Nil!62937) (Cons!62937 (h!69385 Regex!15587) (t!376347 List!63061)) )
))
(declare-datatypes ((Context!9942 0))(
  ( (Context!9943 (exprs!5471 List!63061)) )
))
(declare-fun z!1189 () (InoxSet Context!9942))

(declare-fun e!3454209 () Bool)

(declare-fun matchZipper!1725 ((InoxSet Context!9942) List!63060) Bool)

(assert (=> b!5599751 (= res!2375106 (not (= (matchZipper!1725 z!1189 s!2326) e!3454209)))))

(declare-fun res!2375117 () Bool)

(assert (=> b!5599751 (=> res!2375117 e!3454209)))

(declare-fun lt!2256828 () (InoxSet Context!9942))

(assert (=> b!5599751 (= res!2375117 (matchZipper!1725 lt!2256828 s!2326))))

(declare-datatypes ((Unit!155788 0))(
  ( (Unit!155789) )
))
(declare-fun lt!2256831 () Unit!155788)

(declare-fun e!3454208 () Unit!155788)

(assert (=> b!5599751 (= lt!2256831 e!3454208)))

(declare-fun c!981901 () Bool)

(declare-fun r!7292 () Regex!15587)

(declare-fun nullable!5619 (Regex!15587) Bool)

(assert (=> b!5599751 (= c!981901 (nullable!5619 (regTwo!31687 (regOne!31686 r!7292))))))

(declare-fun lambda!300744 () Int)

(declare-fun lt!2256827 () (InoxSet Context!9942))

(declare-fun lt!2256837 () Context!9942)

(declare-fun flatMap!1200 ((InoxSet Context!9942) Int) (InoxSet Context!9942))

(declare-fun derivationStepZipperUp!855 (Context!9942 C!31444) (InoxSet Context!9942))

(assert (=> b!5599751 (= (flatMap!1200 lt!2256827 lambda!300744) (derivationStepZipperUp!855 lt!2256837 (h!69384 s!2326)))))

(declare-fun lt!2256816 () Unit!155788)

(declare-fun lemmaFlatMapOnSingletonSet!732 ((InoxSet Context!9942) Context!9942 Int) Unit!155788)

(assert (=> b!5599751 (= lt!2256816 (lemmaFlatMapOnSingletonSet!732 lt!2256827 lt!2256837 lambda!300744))))

(declare-fun lt!2256823 () (InoxSet Context!9942))

(assert (=> b!5599751 (= lt!2256823 (derivationStepZipperUp!855 lt!2256837 (h!69384 s!2326)))))

(declare-fun lt!2256813 () Unit!155788)

(declare-fun e!3454192 () Unit!155788)

(assert (=> b!5599751 (= lt!2256813 e!3454192)))

(declare-fun c!981900 () Bool)

(assert (=> b!5599751 (= c!981900 (nullable!5619 (regOne!31687 (regOne!31686 r!7292))))))

(declare-fun lt!2256812 () Context!9942)

(assert (=> b!5599751 (= (flatMap!1200 lt!2256828 lambda!300744) (derivationStepZipperUp!855 lt!2256812 (h!69384 s!2326)))))

(declare-fun lt!2256838 () Unit!155788)

(assert (=> b!5599751 (= lt!2256838 (lemmaFlatMapOnSingletonSet!732 lt!2256828 lt!2256812 lambda!300744))))

(declare-fun lt!2256811 () (InoxSet Context!9942))

(assert (=> b!5599751 (= lt!2256811 (derivationStepZipperUp!855 lt!2256812 (h!69384 s!2326)))))

(assert (=> b!5599751 (= lt!2256827 (store ((as const (Array Context!9942 Bool)) false) lt!2256837 true))))

(declare-datatypes ((List!63062 0))(
  ( (Nil!62938) (Cons!62938 (h!69386 Context!9942) (t!376348 List!63062)) )
))
(declare-fun zl!343 () List!63062)

(assert (=> b!5599751 (= lt!2256837 (Context!9943 (Cons!62937 (regTwo!31687 (regOne!31686 r!7292)) (t!376347 (exprs!5471 (h!69386 zl!343))))))))

(assert (=> b!5599751 (= lt!2256828 (store ((as const (Array Context!9942 Bool)) false) lt!2256812 true))))

(assert (=> b!5599751 (= lt!2256812 (Context!9943 (Cons!62937 (regOne!31687 (regOne!31686 r!7292)) (t!376347 (exprs!5471 (h!69386 zl!343))))))))

(declare-fun setIsEmpty!37357 () Bool)

(declare-fun setRes!37357 () Bool)

(assert (=> setIsEmpty!37357 setRes!37357))

(declare-fun b!5599752 () Bool)

(declare-fun Unit!155790 () Unit!155788)

(assert (=> b!5599752 (= e!3454192 Unit!155790)))

(declare-fun b!5599753 () Bool)

(declare-fun res!2375121 () Bool)

(declare-fun e!3454197 () Bool)

(assert (=> b!5599753 (=> res!2375121 e!3454197)))

(declare-fun isEmpty!34762 (List!63061) Bool)

(assert (=> b!5599753 (= res!2375121 (isEmpty!34762 (t!376347 (exprs!5471 (h!69386 zl!343)))))))

(declare-fun e!3454204 () Bool)

(assert (=> b!5599754 (= e!3454197 e!3454204)))

(declare-fun res!2375102 () Bool)

(assert (=> b!5599754 (=> res!2375102 e!3454204)))

(get-info :version)

(assert (=> b!5599754 (= res!2375102 (or (and ((_ is ElementMatch!15587) (regOne!31686 r!7292)) (= (c!981902 (regOne!31686 r!7292)) (h!69384 s!2326))) (not ((_ is Union!15587) (regOne!31686 r!7292)))))))

(declare-fun lt!2256833 () Unit!155788)

(declare-fun e!3454189 () Unit!155788)

(assert (=> b!5599754 (= lt!2256833 e!3454189)))

(declare-fun c!981899 () Bool)

(assert (=> b!5599754 (= c!981899 (nullable!5619 (h!69385 (exprs!5471 (h!69386 zl!343)))))))

(assert (=> b!5599754 (= (flatMap!1200 z!1189 lambda!300744) (derivationStepZipperUp!855 (h!69386 zl!343) (h!69384 s!2326)))))

(declare-fun lt!2256814 () Unit!155788)

(assert (=> b!5599754 (= lt!2256814 (lemmaFlatMapOnSingletonSet!732 z!1189 (h!69386 zl!343) lambda!300744))))

(declare-fun lt!2256835 () (InoxSet Context!9942))

(declare-fun lt!2256829 () Context!9942)

(assert (=> b!5599754 (= lt!2256835 (derivationStepZipperUp!855 lt!2256829 (h!69384 s!2326)))))

(declare-fun lt!2256820 () (InoxSet Context!9942))

(declare-fun derivationStepZipperDown!929 (Regex!15587 Context!9942 C!31444) (InoxSet Context!9942))

(assert (=> b!5599754 (= lt!2256820 (derivationStepZipperDown!929 (h!69385 (exprs!5471 (h!69386 zl!343))) lt!2256829 (h!69384 s!2326)))))

(assert (=> b!5599754 (= lt!2256829 (Context!9943 (t!376347 (exprs!5471 (h!69386 zl!343)))))))

(declare-fun lt!2256832 () (InoxSet Context!9942))

(assert (=> b!5599754 (= lt!2256832 (derivationStepZipperUp!855 (Context!9943 (Cons!62937 (h!69385 (exprs!5471 (h!69386 zl!343))) (t!376347 (exprs!5471 (h!69386 zl!343))))) (h!69384 s!2326)))))

(declare-fun e!3454196 () Bool)

(declare-fun tp!1548346 () Bool)

(declare-fun setNonEmpty!37357 () Bool)

(declare-fun setElem!37357 () Context!9942)

(declare-fun inv!82214 (Context!9942) Bool)

(assert (=> setNonEmpty!37357 (= setRes!37357 (and tp!1548346 (inv!82214 setElem!37357) e!3454196))))

(declare-fun setRest!37357 () (InoxSet Context!9942))

(assert (=> setNonEmpty!37357 (= z!1189 ((_ map or) (store ((as const (Array Context!9942 Bool)) false) setElem!37357 true) setRest!37357))))

(declare-fun res!2375107 () Bool)

(declare-fun e!3454191 () Bool)

(assert (=> start!581540 (=> (not res!2375107) (not e!3454191))))

(declare-fun validRegex!7323 (Regex!15587) Bool)

(assert (=> start!581540 (= res!2375107 (validRegex!7323 r!7292))))

(assert (=> start!581540 e!3454191))

(declare-fun e!3454202 () Bool)

(assert (=> start!581540 e!3454202))

(declare-fun condSetEmpty!37357 () Bool)

(assert (=> start!581540 (= condSetEmpty!37357 (= z!1189 ((as const (Array Context!9942 Bool)) false)))))

(assert (=> start!581540 setRes!37357))

(declare-fun e!3454206 () Bool)

(assert (=> start!581540 e!3454206))

(declare-fun e!3454207 () Bool)

(assert (=> start!581540 e!3454207))

(declare-fun b!5599755 () Bool)

(declare-fun Unit!155791 () Unit!155788)

(assert (=> b!5599755 (= e!3454208 Unit!155791)))

(declare-fun lt!2256834 () Unit!155788)

(declare-fun lt!2256819 () (InoxSet Context!9942))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!612 ((InoxSet Context!9942) (InoxSet Context!9942) List!63060) Unit!155788)

(assert (=> b!5599755 (= lt!2256834 (lemmaZipperConcatMatchesSameAsBothZippers!612 lt!2256819 lt!2256835 (t!376346 s!2326)))))

(declare-fun res!2375119 () Bool)

(assert (=> b!5599755 (= res!2375119 (matchZipper!1725 lt!2256819 (t!376346 s!2326)))))

(declare-fun e!3454193 () Bool)

(assert (=> b!5599755 (=> res!2375119 e!3454193)))

(assert (=> b!5599755 (= (matchZipper!1725 ((_ map or) lt!2256819 lt!2256835) (t!376346 s!2326)) e!3454193)))

(declare-fun b!5599756 () Bool)

(declare-fun tp!1548347 () Bool)

(declare-fun tp!1548339 () Bool)

(assert (=> b!5599756 (= e!3454202 (and tp!1548347 tp!1548339))))

(declare-fun b!5599757 () Bool)

(assert (=> b!5599757 (= e!3454209 (matchZipper!1725 lt!2256827 s!2326))))

(declare-fun b!5599758 () Bool)

(declare-fun e!3454201 () Bool)

(declare-fun tp!1548341 () Bool)

(assert (=> b!5599758 (= e!3454201 tp!1548341)))

(declare-fun e!3454203 () Bool)

(assert (=> b!5599759 (= e!3454203 e!3454197)))

(declare-fun res!2375105 () Bool)

(assert (=> b!5599759 (=> res!2375105 e!3454197)))

(declare-fun lt!2256839 () Bool)

(declare-fun lt!2256825 () Bool)

(assert (=> b!5599759 (= res!2375105 (or (not (= lt!2256825 lt!2256839)) ((_ is Nil!62936) s!2326)))))

(declare-fun Exists!2687 (Int) Bool)

(assert (=> b!5599759 (= (Exists!2687 lambda!300742) (Exists!2687 lambda!300743))))

(declare-fun lt!2256818 () Unit!155788)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1316 (Regex!15587 Regex!15587 List!63060) Unit!155788)

(assert (=> b!5599759 (= lt!2256818 (lemmaExistCutMatchRandMatchRSpecEquivalent!1316 (regOne!31686 r!7292) (regTwo!31686 r!7292) s!2326))))

(assert (=> b!5599759 (= lt!2256839 (Exists!2687 lambda!300742))))

(declare-datatypes ((tuple2!65368 0))(
  ( (tuple2!65369 (_1!35987 List!63060) (_2!35987 List!63060)) )
))
(declare-datatypes ((Option!15596 0))(
  ( (None!15595) (Some!15595 (v!51636 tuple2!65368)) )
))
(declare-fun isDefined!12299 (Option!15596) Bool)

(declare-fun findConcatSeparation!2010 (Regex!15587 Regex!15587 List!63060 List!63060 List!63060) Option!15596)

(assert (=> b!5599759 (= lt!2256839 (isDefined!12299 (findConcatSeparation!2010 (regOne!31686 r!7292) (regTwo!31686 r!7292) Nil!62936 s!2326 s!2326)))))

(declare-fun lt!2256821 () Unit!155788)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1774 (Regex!15587 Regex!15587 List!63060) Unit!155788)

(assert (=> b!5599759 (= lt!2256821 (lemmaFindConcatSeparationEquivalentToExists!1774 (regOne!31686 r!7292) (regTwo!31686 r!7292) s!2326))))

(declare-fun b!5599760 () Bool)

(declare-fun res!2375112 () Bool)

(assert (=> b!5599760 (=> res!2375112 e!3454203)))

(assert (=> b!5599760 (= res!2375112 (not ((_ is Cons!62937) (exprs!5471 (h!69386 zl!343)))))))

(declare-fun b!5599761 () Bool)

(declare-fun Unit!155792 () Unit!155788)

(assert (=> b!5599761 (= e!3454189 Unit!155792)))

(declare-fun lt!2256836 () Unit!155788)

(assert (=> b!5599761 (= lt!2256836 (lemmaZipperConcatMatchesSameAsBothZippers!612 lt!2256820 lt!2256835 (t!376346 s!2326)))))

(declare-fun res!2375118 () Bool)

(assert (=> b!5599761 (= res!2375118 (matchZipper!1725 lt!2256820 (t!376346 s!2326)))))

(declare-fun e!3454210 () Bool)

(assert (=> b!5599761 (=> res!2375118 e!3454210)))

(assert (=> b!5599761 (= (matchZipper!1725 ((_ map or) lt!2256820 lt!2256835) (t!376346 s!2326)) e!3454210)))

(declare-fun b!5599762 () Bool)

(declare-fun e!3454205 () Bool)

(assert (=> b!5599762 (= e!3454205 (matchZipper!1725 lt!2256835 (t!376346 s!2326)))))

(declare-fun b!5599763 () Bool)

(declare-fun e!3454200 () Bool)

(assert (=> b!5599763 (= e!3454200 (not e!3454203))))

(declare-fun res!2375111 () Bool)

(assert (=> b!5599763 (=> res!2375111 e!3454203)))

(assert (=> b!5599763 (= res!2375111 (not ((_ is Cons!62938) zl!343)))))

(declare-fun matchRSpec!2690 (Regex!15587 List!63060) Bool)

(assert (=> b!5599763 (= lt!2256825 (matchRSpec!2690 r!7292 s!2326))))

(declare-fun matchR!7772 (Regex!15587 List!63060) Bool)

(assert (=> b!5599763 (= lt!2256825 (matchR!7772 r!7292 s!2326))))

(declare-fun lt!2256826 () Unit!155788)

(declare-fun mainMatchTheorem!2690 (Regex!15587 List!63060) Unit!155788)

(assert (=> b!5599763 (= lt!2256826 (mainMatchTheorem!2690 r!7292 s!2326))))

(declare-fun b!5599764 () Bool)

(declare-fun Unit!155793 () Unit!155788)

(assert (=> b!5599764 (= e!3454208 Unit!155793)))

(declare-fun b!5599765 () Bool)

(declare-fun res!2375114 () Bool)

(assert (=> b!5599765 (=> res!2375114 e!3454203)))

(assert (=> b!5599765 (= res!2375114 (or ((_ is EmptyExpr!15587) r!7292) ((_ is EmptyLang!15587) r!7292) ((_ is ElementMatch!15587) r!7292) ((_ is Union!15587) r!7292) (not ((_ is Concat!24432) r!7292))))))

(declare-fun b!5599766 () Bool)

(declare-fun e!3454190 () Bool)

(assert (=> b!5599766 (= e!3454190 e!3454195)))

(declare-fun res!2375115 () Bool)

(assert (=> b!5599766 (=> res!2375115 e!3454195)))

(declare-fun e!3454199 () Bool)

(assert (=> b!5599766 (= res!2375115 e!3454199)))

(declare-fun res!2375120 () Bool)

(assert (=> b!5599766 (=> (not res!2375120) (not e!3454199))))

(declare-fun lt!2256815 () Bool)

(assert (=> b!5599766 (= res!2375120 (not (= (matchZipper!1725 lt!2256820 (t!376346 s!2326)) lt!2256815)))))

(declare-fun lt!2256830 () (InoxSet Context!9942))

(declare-fun e!3454198 () Bool)

(assert (=> b!5599766 (= (matchZipper!1725 lt!2256830 (t!376346 s!2326)) e!3454198)))

(declare-fun res!2375116 () Bool)

(assert (=> b!5599766 (=> res!2375116 e!3454198)))

(assert (=> b!5599766 (= res!2375116 lt!2256815)))

(declare-fun lt!2256824 () (InoxSet Context!9942))

(assert (=> b!5599766 (= lt!2256815 (matchZipper!1725 lt!2256824 (t!376346 s!2326)))))

(declare-fun lt!2256817 () Unit!155788)

(assert (=> b!5599766 (= lt!2256817 (lemmaZipperConcatMatchesSameAsBothZippers!612 lt!2256824 lt!2256819 (t!376346 s!2326)))))

(declare-fun b!5599767 () Bool)

(declare-fun res!2375109 () Bool)

(assert (=> b!5599767 (=> res!2375109 e!3454203)))

(declare-fun generalisedConcat!1202 (List!63061) Regex!15587)

(assert (=> b!5599767 (= res!2375109 (not (= r!7292 (generalisedConcat!1202 (exprs!5471 (h!69386 zl!343))))))))

(declare-fun b!5599768 () Bool)

(declare-fun res!2375103 () Bool)

(assert (=> b!5599768 (=> res!2375103 e!3454203)))

(declare-fun generalisedUnion!1450 (List!63061) Regex!15587)

(declare-fun unfocusZipperList!1015 (List!63062) List!63061)

(assert (=> b!5599768 (= res!2375103 (not (= r!7292 (generalisedUnion!1450 (unfocusZipperList!1015 zl!343)))))))

(declare-fun b!5599769 () Bool)

(declare-fun tp!1548340 () Bool)

(assert (=> b!5599769 (= e!3454202 tp!1548340)))

(declare-fun b!5599770 () Bool)

(declare-fun tp!1548345 () Bool)

(assert (=> b!5599770 (= e!3454196 tp!1548345)))

(declare-fun b!5599771 () Bool)

(declare-fun res!2375110 () Bool)

(assert (=> b!5599771 (=> res!2375110 e!3454203)))

(declare-fun isEmpty!34763 (List!63062) Bool)

(assert (=> b!5599771 (= res!2375110 (not (isEmpty!34763 (t!376348 zl!343))))))

(declare-fun b!5599772 () Bool)

(assert (=> b!5599772 (= e!3454210 (matchZipper!1725 lt!2256835 (t!376346 s!2326)))))

(declare-fun b!5599773 () Bool)

(declare-fun Unit!155794 () Unit!155788)

(assert (=> b!5599773 (= e!3454189 Unit!155794)))

(declare-fun b!5599774 () Bool)

(assert (=> b!5599774 (= e!3454198 (matchZipper!1725 lt!2256819 (t!376346 s!2326)))))

(declare-fun b!5599775 () Bool)

(declare-fun res!2375104 () Bool)

(assert (=> b!5599775 (=> (not res!2375104) (not e!3454191))))

(declare-fun toList!9371 ((InoxSet Context!9942)) List!63062)

(assert (=> b!5599775 (= res!2375104 (= (toList!9371 z!1189) zl!343))))

(declare-fun b!5599776 () Bool)

(assert (=> b!5599776 (= e!3454199 (not (matchZipper!1725 lt!2256819 (t!376346 s!2326))))))

(declare-fun b!5599777 () Bool)

(declare-fun tp!1548343 () Bool)

(declare-fun tp!1548342 () Bool)

(assert (=> b!5599777 (= e!3454202 (and tp!1548343 tp!1548342))))

(declare-fun b!5599778 () Bool)

(assert (=> b!5599778 (= e!3454191 e!3454200)))

(declare-fun res!2375108 () Bool)

(assert (=> b!5599778 (=> (not res!2375108) (not e!3454200))))

(declare-fun lt!2256822 () Regex!15587)

(assert (=> b!5599778 (= res!2375108 (= r!7292 lt!2256822))))

(declare-fun unfocusZipper!1329 (List!63062) Regex!15587)

(assert (=> b!5599778 (= lt!2256822 (unfocusZipper!1329 zl!343))))

(declare-fun b!5599779 () Bool)

(declare-fun Unit!155795 () Unit!155788)

(assert (=> b!5599779 (= e!3454192 Unit!155795)))

(declare-fun lt!2256840 () Unit!155788)

(assert (=> b!5599779 (= lt!2256840 (lemmaZipperConcatMatchesSameAsBothZippers!612 lt!2256824 lt!2256835 (t!376346 s!2326)))))

(declare-fun res!2375122 () Bool)

(assert (=> b!5599779 (= res!2375122 lt!2256815)))

(assert (=> b!5599779 (=> res!2375122 e!3454205)))

(assert (=> b!5599779 (= (matchZipper!1725 ((_ map or) lt!2256824 lt!2256835) (t!376346 s!2326)) e!3454205)))

(declare-fun tp!1548338 () Bool)

(declare-fun b!5599780 () Bool)

(assert (=> b!5599780 (= e!3454206 (and (inv!82214 (h!69386 zl!343)) e!3454201 tp!1548338))))

(declare-fun b!5599781 () Bool)

(declare-fun tp_is_empty!40427 () Bool)

(declare-fun tp!1548344 () Bool)

(assert (=> b!5599781 (= e!3454207 (and tp_is_empty!40427 tp!1548344))))

(declare-fun b!5599782 () Bool)

(assert (=> b!5599782 (= e!3454204 e!3454190)))

(declare-fun res!2375113 () Bool)

(assert (=> b!5599782 (=> res!2375113 e!3454190)))

(assert (=> b!5599782 (= res!2375113 (not (= lt!2256820 lt!2256830)))))

(assert (=> b!5599782 (= lt!2256830 ((_ map or) lt!2256824 lt!2256819))))

(assert (=> b!5599782 (= lt!2256819 (derivationStepZipperDown!929 (regTwo!31687 (regOne!31686 r!7292)) lt!2256829 (h!69384 s!2326)))))

(assert (=> b!5599782 (= lt!2256824 (derivationStepZipperDown!929 (regOne!31687 (regOne!31686 r!7292)) lt!2256829 (h!69384 s!2326)))))

(declare-fun b!5599783 () Bool)

(assert (=> b!5599783 (= e!3454202 tp_is_empty!40427)))

(declare-fun b!5599784 () Bool)

(assert (=> b!5599784 (= e!3454193 (matchZipper!1725 lt!2256835 (t!376346 s!2326)))))

(declare-fun b!5599785 () Bool)

(assert (=> b!5599785 (= e!3454194 (= lt!2256822 r!7292))))

(assert (= (and start!581540 res!2375107) b!5599775))

(assert (= (and b!5599775 res!2375104) b!5599778))

(assert (= (and b!5599778 res!2375108) b!5599763))

(assert (= (and b!5599763 (not res!2375111)) b!5599771))

(assert (= (and b!5599771 (not res!2375110)) b!5599767))

(assert (= (and b!5599767 (not res!2375109)) b!5599760))

(assert (= (and b!5599760 (not res!2375112)) b!5599768))

(assert (= (and b!5599768 (not res!2375103)) b!5599765))

(assert (= (and b!5599765 (not res!2375114)) b!5599759))

(assert (= (and b!5599759 (not res!2375105)) b!5599753))

(assert (= (and b!5599753 (not res!2375121)) b!5599754))

(assert (= (and b!5599754 c!981899) b!5599761))

(assert (= (and b!5599754 (not c!981899)) b!5599773))

(assert (= (and b!5599761 (not res!2375118)) b!5599772))

(assert (= (and b!5599754 (not res!2375102)) b!5599782))

(assert (= (and b!5599782 (not res!2375113)) b!5599766))

(assert (= (and b!5599766 (not res!2375116)) b!5599774))

(assert (= (and b!5599766 res!2375120) b!5599776))

(assert (= (and b!5599766 (not res!2375115)) b!5599751))

(assert (= (and b!5599751 c!981900) b!5599779))

(assert (= (and b!5599751 (not c!981900)) b!5599752))

(assert (= (and b!5599779 (not res!2375122)) b!5599762))

(assert (= (and b!5599751 c!981901) b!5599755))

(assert (= (and b!5599751 (not c!981901)) b!5599764))

(assert (= (and b!5599755 (not res!2375119)) b!5599784))

(assert (= (and b!5599751 (not res!2375117)) b!5599757))

(assert (= (and b!5599751 (not res!2375106)) b!5599785))

(assert (= (and start!581540 ((_ is ElementMatch!15587) r!7292)) b!5599783))

(assert (= (and start!581540 ((_ is Concat!24432) r!7292)) b!5599777))

(assert (= (and start!581540 ((_ is Star!15587) r!7292)) b!5599769))

(assert (= (and start!581540 ((_ is Union!15587) r!7292)) b!5599756))

(assert (= (and start!581540 condSetEmpty!37357) setIsEmpty!37357))

(assert (= (and start!581540 (not condSetEmpty!37357)) setNonEmpty!37357))

(assert (= setNonEmpty!37357 b!5599770))

(assert (= b!5599780 b!5599758))

(assert (= (and start!581540 ((_ is Cons!62938) zl!343)) b!5599780))

(assert (= (and start!581540 ((_ is Cons!62936) s!2326)) b!5599781))

(declare-fun m!6578412 () Bool)

(assert (=> b!5599775 m!6578412))

(declare-fun m!6578414 () Bool)

(assert (=> b!5599778 m!6578414))

(declare-fun m!6578416 () Bool)

(assert (=> start!581540 m!6578416))

(declare-fun m!6578418 () Bool)

(assert (=> b!5599753 m!6578418))

(declare-fun m!6578420 () Bool)

(assert (=> b!5599762 m!6578420))

(declare-fun m!6578422 () Bool)

(assert (=> b!5599766 m!6578422))

(declare-fun m!6578424 () Bool)

(assert (=> b!5599766 m!6578424))

(declare-fun m!6578426 () Bool)

(assert (=> b!5599766 m!6578426))

(declare-fun m!6578428 () Bool)

(assert (=> b!5599766 m!6578428))

(declare-fun m!6578430 () Bool)

(assert (=> b!5599755 m!6578430))

(declare-fun m!6578432 () Bool)

(assert (=> b!5599755 m!6578432))

(declare-fun m!6578434 () Bool)

(assert (=> b!5599755 m!6578434))

(declare-fun m!6578436 () Bool)

(assert (=> b!5599757 m!6578436))

(declare-fun m!6578438 () Bool)

(assert (=> setNonEmpty!37357 m!6578438))

(declare-fun m!6578440 () Bool)

(assert (=> b!5599763 m!6578440))

(declare-fun m!6578442 () Bool)

(assert (=> b!5599763 m!6578442))

(declare-fun m!6578444 () Bool)

(assert (=> b!5599763 m!6578444))

(declare-fun m!6578446 () Bool)

(assert (=> b!5599754 m!6578446))

(declare-fun m!6578448 () Bool)

(assert (=> b!5599754 m!6578448))

(declare-fun m!6578450 () Bool)

(assert (=> b!5599754 m!6578450))

(declare-fun m!6578452 () Bool)

(assert (=> b!5599754 m!6578452))

(declare-fun m!6578454 () Bool)

(assert (=> b!5599754 m!6578454))

(declare-fun m!6578456 () Bool)

(assert (=> b!5599754 m!6578456))

(declare-fun m!6578458 () Bool)

(assert (=> b!5599754 m!6578458))

(assert (=> b!5599774 m!6578432))

(declare-fun m!6578460 () Bool)

(assert (=> b!5599761 m!6578460))

(assert (=> b!5599761 m!6578422))

(declare-fun m!6578462 () Bool)

(assert (=> b!5599761 m!6578462))

(declare-fun m!6578464 () Bool)

(assert (=> b!5599782 m!6578464))

(declare-fun m!6578466 () Bool)

(assert (=> b!5599782 m!6578466))

(declare-fun m!6578468 () Bool)

(assert (=> b!5599768 m!6578468))

(assert (=> b!5599768 m!6578468))

(declare-fun m!6578470 () Bool)

(assert (=> b!5599768 m!6578470))

(declare-fun m!6578472 () Bool)

(assert (=> b!5599751 m!6578472))

(declare-fun m!6578474 () Bool)

(assert (=> b!5599751 m!6578474))

(declare-fun m!6578476 () Bool)

(assert (=> b!5599751 m!6578476))

(declare-fun m!6578478 () Bool)

(assert (=> b!5599751 m!6578478))

(declare-fun m!6578480 () Bool)

(assert (=> b!5599751 m!6578480))

(declare-fun m!6578482 () Bool)

(assert (=> b!5599751 m!6578482))

(declare-fun m!6578484 () Bool)

(assert (=> b!5599751 m!6578484))

(declare-fun m!6578486 () Bool)

(assert (=> b!5599751 m!6578486))

(declare-fun m!6578488 () Bool)

(assert (=> b!5599751 m!6578488))

(declare-fun m!6578490 () Bool)

(assert (=> b!5599751 m!6578490))

(declare-fun m!6578492 () Bool)

(assert (=> b!5599751 m!6578492))

(declare-fun m!6578494 () Bool)

(assert (=> b!5599751 m!6578494))

(assert (=> b!5599776 m!6578432))

(assert (=> b!5599784 m!6578420))

(assert (=> b!5599772 m!6578420))

(declare-fun m!6578496 () Bool)

(assert (=> b!5599771 m!6578496))

(declare-fun m!6578498 () Bool)

(assert (=> b!5599779 m!6578498))

(declare-fun m!6578500 () Bool)

(assert (=> b!5599779 m!6578500))

(declare-fun m!6578502 () Bool)

(assert (=> b!5599767 m!6578502))

(declare-fun m!6578504 () Bool)

(assert (=> b!5599780 m!6578504))

(declare-fun m!6578506 () Bool)

(assert (=> b!5599759 m!6578506))

(declare-fun m!6578508 () Bool)

(assert (=> b!5599759 m!6578508))

(declare-fun m!6578510 () Bool)

(assert (=> b!5599759 m!6578510))

(assert (=> b!5599759 m!6578506))

(declare-fun m!6578512 () Bool)

(assert (=> b!5599759 m!6578512))

(declare-fun m!6578514 () Bool)

(assert (=> b!5599759 m!6578514))

(assert (=> b!5599759 m!6578508))

(declare-fun m!6578516 () Bool)

(assert (=> b!5599759 m!6578516))

(check-sat (not b!5599759) (not b!5599782) (not b!5599770) (not b!5599757) (not b!5599781) (not start!581540) (not b!5599779) (not setNonEmpty!37357) (not b!5599754) (not b!5599777) (not b!5599774) (not b!5599753) (not b!5599768) (not b!5599755) (not b!5599771) (not b!5599769) (not b!5599766) (not b!5599775) (not b!5599776) tp_is_empty!40427 (not b!5599761) (not b!5599758) (not b!5599762) (not b!5599772) (not b!5599778) (not b!5599756) (not b!5599751) (not b!5599784) (not b!5599763) (not b!5599780) (not b!5599767))
(check-sat)
