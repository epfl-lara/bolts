; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!639746 () Bool)

(assert start!639746)

(declare-fun b!6510889 () Bool)

(assert (=> b!6510889 true))

(assert (=> b!6510889 true))

(declare-fun lambda!361297 () Int)

(declare-fun lambda!361296 () Int)

(assert (=> b!6510889 (not (= lambda!361297 lambda!361296))))

(assert (=> b!6510889 true))

(assert (=> b!6510889 true))

(declare-fun b!6510873 () Bool)

(assert (=> b!6510873 true))

(declare-fun b!6510848 () Bool)

(assert (=> b!6510848 true))

(declare-fun b!6510846 () Bool)

(declare-fun res!2673977 () Bool)

(declare-fun e!3944699 () Bool)

(assert (=> b!6510846 (=> res!2673977 e!3944699)))

(declare-datatypes ((C!33060 0))(
  ( (C!33061 (val!26232 Int)) )
))
(declare-datatypes ((Regex!16395 0))(
  ( (ElementMatch!16395 (c!1194259 C!33060)) (Concat!25240 (regOne!33302 Regex!16395) (regTwo!33302 Regex!16395)) (EmptyExpr!16395) (Star!16395 (reg!16724 Regex!16395)) (EmptyLang!16395) (Union!16395 (regOne!33303 Regex!16395) (regTwo!33303 Regex!16395)) )
))
(declare-fun r!7292 () Regex!16395)

(get-info :version)

(assert (=> b!6510846 (= res!2673977 (or ((_ is EmptyExpr!16395) r!7292) ((_ is EmptyLang!16395) r!7292) ((_ is ElementMatch!16395) r!7292) ((_ is Union!16395) r!7292) (not ((_ is Concat!25240) r!7292))))))

(declare-fun b!6510847 () Bool)

(declare-fun e!3944695 () Bool)

(declare-fun validRegex!8131 (Regex!16395) Bool)

(assert (=> b!6510847 (= e!3944695 (validRegex!8131 (reg!16724 (regOne!33302 r!7292))))))

(declare-datatypes ((List!65484 0))(
  ( (Nil!65360) (Cons!65360 (h!71808 Regex!16395) (t!379120 List!65484)) )
))
(declare-fun lt!2394660 () List!65484)

(declare-fun lt!2394644 () List!65484)

(declare-datatypes ((List!65485 0))(
  ( (Nil!65361) (Cons!65361 (h!71809 C!33060) (t!379121 List!65485)) )
))
(declare-fun lt!2394663 () List!65485)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!11558 0))(
  ( (Context!11559 (exprs!6279 List!65484)) )
))
(declare-fun matchZipper!2407 ((InoxSet Context!11558) List!65485) Bool)

(declare-fun ++!14492 (List!65484 List!65484) List!65484)

(assert (=> b!6510847 (matchZipper!2407 (store ((as const (Array Context!11558 Bool)) false) (Context!11559 (++!14492 lt!2394660 lt!2394644)) true) lt!2394663)))

(declare-fun lambda!361300 () Int)

(declare-datatypes ((Unit!158915 0))(
  ( (Unit!158916) )
))
(declare-fun lt!2394642 () Unit!158915)

(declare-fun lemmaConcatPreservesForall!368 (List!65484 List!65484 Int) Unit!158915)

(assert (=> b!6510847 (= lt!2394642 (lemmaConcatPreservesForall!368 lt!2394660 lt!2394644 lambda!361300))))

(declare-fun lt!2394673 () Unit!158915)

(declare-fun lt!2394645 () Context!11558)

(declare-fun lt!2394648 () Context!11558)

(declare-datatypes ((tuple2!66748 0))(
  ( (tuple2!66749 (_1!36677 List!65485) (_2!36677 List!65485)) )
))
(declare-fun lt!2394672 () tuple2!66748)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!176 (Context!11558 Context!11558 List!65485 List!65485) Unit!158915)

(assert (=> b!6510847 (= lt!2394673 (lemmaConcatenateContextMatchesConcatOfStrings!176 lt!2394645 lt!2394648 (_1!36677 lt!2394672) (_2!36677 lt!2394672)))))

(declare-fun e!3944711 () Bool)

(declare-fun e!3944709 () Bool)

(assert (=> b!6510848 (= e!3944711 e!3944709)))

(declare-fun res!2673998 () Bool)

(assert (=> b!6510848 (=> res!2673998 e!3944709)))

(declare-fun lt!2394638 () (InoxSet Context!11558))

(declare-fun lt!2394650 () (InoxSet Context!11558))

(declare-fun appendTo!156 ((InoxSet Context!11558) Context!11558) (InoxSet Context!11558))

(assert (=> b!6510848 (= res!2673998 (not (= (appendTo!156 lt!2394650 lt!2394648) lt!2394638)))))

(declare-fun lambda!361299 () Int)

(declare-fun map!14901 ((InoxSet Context!11558) Int) (InoxSet Context!11558))

(assert (=> b!6510848 (= (map!14901 lt!2394650 lambda!361299) (store ((as const (Array Context!11558 Bool)) false) (Context!11559 (++!14492 lt!2394660 lt!2394644)) true))))

(declare-fun lt!2394665 () Unit!158915)

(assert (=> b!6510848 (= lt!2394665 (lemmaConcatPreservesForall!368 lt!2394660 lt!2394644 lambda!361300))))

(declare-fun lt!2394659 () Unit!158915)

(declare-fun lemmaMapOnSingletonSet!178 ((InoxSet Context!11558) Context!11558 Int) Unit!158915)

(assert (=> b!6510848 (= lt!2394659 (lemmaMapOnSingletonSet!178 lt!2394650 lt!2394645 lambda!361299))))

(declare-fun setIsEmpty!44425 () Bool)

(declare-fun setRes!44425 () Bool)

(assert (=> setIsEmpty!44425 setRes!44425))

(declare-fun b!6510849 () Bool)

(declare-fun e!3944702 () Bool)

(declare-fun tp!1800102 () Bool)

(assert (=> b!6510849 (= e!3944702 tp!1800102)))

(declare-fun b!6510850 () Bool)

(declare-fun e!3944710 () Bool)

(declare-fun tp!1800096 () Bool)

(declare-fun tp!1800099 () Bool)

(assert (=> b!6510850 (= e!3944710 (and tp!1800096 tp!1800099))))

(declare-fun b!6510851 () Bool)

(declare-fun res!2673996 () Bool)

(assert (=> b!6510851 (=> res!2673996 e!3944699)))

(declare-datatypes ((List!65486 0))(
  ( (Nil!65362) (Cons!65362 (h!71810 Context!11558) (t!379122 List!65486)) )
))
(declare-fun zl!343 () List!65486)

(declare-fun generalisedConcat!1992 (List!65484) Regex!16395)

(assert (=> b!6510851 (= res!2673996 (not (= r!7292 (generalisedConcat!1992 (exprs!6279 (h!71810 zl!343))))))))

(declare-fun b!6510852 () Bool)

(declare-fun e!3944717 () Bool)

(declare-fun nullable!6388 (Regex!16395) Bool)

(assert (=> b!6510852 (= e!3944717 (nullable!6388 (regOne!33302 (regOne!33302 r!7292))))))

(declare-fun res!2674001 () Bool)

(declare-fun e!3944718 () Bool)

(assert (=> start!639746 (=> (not res!2674001) (not e!3944718))))

(assert (=> start!639746 (= res!2674001 (validRegex!8131 r!7292))))

(assert (=> start!639746 e!3944718))

(assert (=> start!639746 e!3944710))

(declare-fun condSetEmpty!44425 () Bool)

(declare-fun z!1189 () (InoxSet Context!11558))

(assert (=> start!639746 (= condSetEmpty!44425 (= z!1189 ((as const (Array Context!11558 Bool)) false)))))

(assert (=> start!639746 setRes!44425))

(declare-fun e!3944706 () Bool)

(assert (=> start!639746 e!3944706))

(declare-fun e!3944715 () Bool)

(assert (=> start!639746 e!3944715))

(declare-fun b!6510853 () Bool)

(declare-fun e!3944713 () Bool)

(declare-fun e!3944708 () Bool)

(assert (=> b!6510853 (= e!3944713 e!3944708)))

(declare-fun res!2673994 () Bool)

(assert (=> b!6510853 (=> res!2673994 e!3944708)))

(declare-fun lt!2394637 () Regex!16395)

(assert (=> b!6510853 (= res!2673994 (not (= r!7292 lt!2394637)))))

(declare-fun lt!2394646 () Regex!16395)

(assert (=> b!6510853 (= lt!2394637 (Concat!25240 lt!2394646 (regTwo!33302 r!7292)))))

(declare-fun b!6510854 () Bool)

(declare-fun res!2673990 () Bool)

(assert (=> b!6510854 (=> res!2673990 e!3944699)))

(assert (=> b!6510854 (= res!2673990 (not ((_ is Cons!65360) (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6510855 () Bool)

(declare-fun e!3944703 () Bool)

(declare-fun e!3944697 () Bool)

(assert (=> b!6510855 (= e!3944703 e!3944697)))

(declare-fun res!2673993 () Bool)

(assert (=> b!6510855 (=> res!2673993 e!3944697)))

(declare-fun lt!2394652 () (InoxSet Context!11558))

(declare-fun lt!2394668 () (InoxSet Context!11558))

(assert (=> b!6510855 (= res!2673993 (not (= lt!2394652 lt!2394668)))))

(declare-fun s!2326 () List!65485)

(declare-fun lt!2394649 () Context!11558)

(declare-fun lambda!361298 () Int)

(declare-fun flatMap!1900 ((InoxSet Context!11558) Int) (InoxSet Context!11558))

(declare-fun derivationStepZipperUp!1569 (Context!11558 C!33060) (InoxSet Context!11558))

(assert (=> b!6510855 (= (flatMap!1900 lt!2394638 lambda!361298) (derivationStepZipperUp!1569 lt!2394649 (h!71809 s!2326)))))

(declare-fun lt!2394653 () Unit!158915)

(declare-fun lemmaFlatMapOnSingletonSet!1426 ((InoxSet Context!11558) Context!11558 Int) Unit!158915)

(assert (=> b!6510855 (= lt!2394653 (lemmaFlatMapOnSingletonSet!1426 lt!2394638 lt!2394649 lambda!361298))))

(declare-fun lt!2394662 () (InoxSet Context!11558))

(assert (=> b!6510855 (= lt!2394662 (derivationStepZipperUp!1569 lt!2394649 (h!71809 s!2326)))))

(declare-fun derivationStepZipper!2361 ((InoxSet Context!11558) C!33060) (InoxSet Context!11558))

(assert (=> b!6510855 (= lt!2394652 (derivationStepZipper!2361 lt!2394638 (h!71809 s!2326)))))

(assert (=> b!6510855 (= lt!2394638 (store ((as const (Array Context!11558 Bool)) false) lt!2394649 true))))

(assert (=> b!6510855 (= lt!2394649 (Context!11559 (Cons!65360 (reg!16724 (regOne!33302 r!7292)) lt!2394644)))))

(declare-fun b!6510856 () Bool)

(declare-fun res!2673969 () Bool)

(declare-fun e!3944700 () Bool)

(assert (=> b!6510856 (=> res!2673969 e!3944700)))

(declare-fun unfocusZipper!2137 (List!65486) Regex!16395)

(assert (=> b!6510856 (= res!2673969 (not (= (unfocusZipper!2137 (Cons!65362 lt!2394648 Nil!65362)) lt!2394637)))))

(declare-fun b!6510857 () Bool)

(declare-fun e!3944716 () Bool)

(declare-fun tp!1800094 () Bool)

(assert (=> b!6510857 (= e!3944716 tp!1800094)))

(declare-fun setElem!44425 () Context!11558)

(declare-fun tp!1800101 () Bool)

(declare-fun setNonEmpty!44425 () Bool)

(declare-fun inv!84234 (Context!11558) Bool)

(assert (=> setNonEmpty!44425 (= setRes!44425 (and tp!1800101 (inv!84234 setElem!44425) e!3944702))))

(declare-fun setRest!44425 () (InoxSet Context!11558))

(assert (=> setNonEmpty!44425 (= z!1189 ((_ map or) (store ((as const (Array Context!11558 Bool)) false) setElem!44425 true) setRest!44425))))

(declare-fun b!6510858 () Bool)

(declare-fun e!3944704 () Bool)

(assert (=> b!6510858 (= e!3944700 e!3944704)))

(declare-fun res!2673982 () Bool)

(assert (=> b!6510858 (=> res!2673982 e!3944704)))

(declare-fun lt!2394666 () Bool)

(assert (=> b!6510858 (= res!2673982 lt!2394666)))

(declare-fun lt!2394657 () Regex!16395)

(declare-fun matchR!8578 (Regex!16395 List!65485) Bool)

(declare-fun matchRSpec!3496 (Regex!16395 List!65485) Bool)

(assert (=> b!6510858 (= (matchR!8578 lt!2394657 s!2326) (matchRSpec!3496 lt!2394657 s!2326))))

(declare-fun lt!2394656 () Unit!158915)

(declare-fun mainMatchTheorem!3496 (Regex!16395 List!65485) Unit!158915)

(assert (=> b!6510858 (= lt!2394656 (mainMatchTheorem!3496 lt!2394657 s!2326))))

(declare-fun b!6510859 () Bool)

(declare-fun e!3944701 () Bool)

(assert (=> b!6510859 (= e!3944718 e!3944701)))

(declare-fun res!2673985 () Bool)

(assert (=> b!6510859 (=> (not res!2673985) (not e!3944701))))

(declare-fun lt!2394678 () Regex!16395)

(assert (=> b!6510859 (= res!2673985 (= r!7292 lt!2394678))))

(assert (=> b!6510859 (= lt!2394678 (unfocusZipper!2137 zl!343))))

(declare-fun b!6510860 () Bool)

(declare-fun res!2673991 () Bool)

(assert (=> b!6510860 (=> res!2673991 e!3944699)))

(declare-fun isEmpty!37573 (List!65486) Bool)

(assert (=> b!6510860 (= res!2673991 (not (isEmpty!37573 (t!379122 zl!343))))))

(declare-fun b!6510861 () Bool)

(declare-fun tp_is_empty!42043 () Bool)

(declare-fun tp!1800098 () Bool)

(assert (=> b!6510861 (= e!3944715 (and tp_is_empty!42043 tp!1800098))))

(declare-fun b!6510862 () Bool)

(assert (=> b!6510862 (= e!3944704 e!3944711)))

(declare-fun res!2673975 () Bool)

(assert (=> b!6510862 (=> res!2673975 e!3944711)))

(declare-fun e!3944705 () Bool)

(assert (=> b!6510862 (= res!2673975 e!3944705)))

(declare-fun res!2673984 () Bool)

(assert (=> b!6510862 (=> (not res!2673984) (not e!3944705))))

(declare-fun lt!2394655 () Bool)

(assert (=> b!6510862 (= res!2673984 (not lt!2394655))))

(declare-fun lt!2394643 () (InoxSet Context!11558))

(assert (=> b!6510862 (= lt!2394655 (matchZipper!2407 lt!2394643 (t!379121 s!2326)))))

(declare-fun b!6510863 () Bool)

(assert (=> b!6510863 (= e!3944697 e!3944713)))

(declare-fun res!2673981 () Bool)

(assert (=> b!6510863 (=> res!2673981 e!3944713)))

(declare-fun lt!2394639 () Bool)

(assert (=> b!6510863 (= res!2673981 (not (= lt!2394639 (matchZipper!2407 lt!2394652 (t!379121 s!2326)))))))

(assert (=> b!6510863 (= lt!2394639 (matchZipper!2407 lt!2394638 s!2326))))

(declare-fun b!6510864 () Bool)

(assert (=> b!6510864 (= e!3944701 (not e!3944699))))

(declare-fun res!2673979 () Bool)

(assert (=> b!6510864 (=> res!2673979 e!3944699)))

(assert (=> b!6510864 (= res!2673979 (not ((_ is Cons!65362) zl!343)))))

(assert (=> b!6510864 (= lt!2394666 (matchRSpec!3496 r!7292 s!2326))))

(assert (=> b!6510864 (= lt!2394666 (matchR!8578 r!7292 s!2326))))

(declare-fun lt!2394671 () Unit!158915)

(assert (=> b!6510864 (= lt!2394671 (mainMatchTheorem!3496 r!7292 s!2326))))

(declare-fun b!6510865 () Bool)

(declare-fun e!3944696 () Unit!158915)

(declare-fun Unit!158917 () Unit!158915)

(assert (=> b!6510865 (= e!3944696 Unit!158917)))

(declare-fun lt!2394658 () (InoxSet Context!11558))

(declare-fun lt!2394675 () Unit!158915)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1226 ((InoxSet Context!11558) (InoxSet Context!11558) List!65485) Unit!158915)

(assert (=> b!6510865 (= lt!2394675 (lemmaZipperConcatMatchesSameAsBothZippers!1226 lt!2394643 lt!2394658 (t!379121 s!2326)))))

(declare-fun res!2673983 () Bool)

(assert (=> b!6510865 (= res!2673983 (matchZipper!2407 lt!2394643 (t!379121 s!2326)))))

(declare-fun e!3944698 () Bool)

(assert (=> b!6510865 (=> res!2673983 e!3944698)))

(assert (=> b!6510865 (= (matchZipper!2407 ((_ map or) lt!2394643 lt!2394658) (t!379121 s!2326)) e!3944698)))

(declare-fun b!6510866 () Bool)

(declare-fun res!2673989 () Bool)

(assert (=> b!6510866 (=> (not res!2673989) (not e!3944718))))

(declare-fun toList!10179 ((InoxSet Context!11558)) List!65486)

(assert (=> b!6510866 (= res!2673989 (= (toList!10179 z!1189) zl!343))))

(declare-fun b!6510867 () Bool)

(assert (=> b!6510867 (= e!3944709 e!3944695)))

(declare-fun res!2673972 () Bool)

(assert (=> b!6510867 (=> res!2673972 e!3944695)))

(assert (=> b!6510867 (= res!2673972 (not (= s!2326 lt!2394663)))))

(declare-fun ++!14493 (List!65485 List!65485) List!65485)

(assert (=> b!6510867 (= lt!2394663 (++!14493 (_1!36677 lt!2394672) (_2!36677 lt!2394672)))))

(declare-datatypes ((Option!16286 0))(
  ( (None!16285) (Some!16285 (v!52464 tuple2!66748)) )
))
(declare-fun lt!2394676 () Option!16286)

(declare-fun get!22674 (Option!16286) tuple2!66748)

(assert (=> b!6510867 (= lt!2394672 (get!22674 lt!2394676))))

(declare-fun isDefined!12989 (Option!16286) Bool)

(assert (=> b!6510867 (isDefined!12989 lt!2394676)))

(declare-fun lt!2394667 () (InoxSet Context!11558))

(declare-fun findConcatSeparationZippers!160 ((InoxSet Context!11558) (InoxSet Context!11558) List!65485 List!65485 List!65485) Option!16286)

(assert (=> b!6510867 (= lt!2394676 (findConcatSeparationZippers!160 lt!2394650 lt!2394667 Nil!65361 s!2326 s!2326))))

(declare-fun lt!2394635 () Unit!158915)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!160 ((InoxSet Context!11558) Context!11558 List!65485) Unit!158915)

(assert (=> b!6510867 (= lt!2394635 (lemmaConcatZipperMatchesStringThenFindConcatDefined!160 lt!2394650 lt!2394648 s!2326))))

(declare-fun b!6510868 () Bool)

(declare-fun res!2673974 () Bool)

(assert (=> b!6510868 (=> res!2673974 e!3944713)))

(assert (=> b!6510868 (= res!2673974 (not (= lt!2394678 r!7292)))))

(declare-fun b!6510869 () Bool)

(declare-fun tp!1800093 () Bool)

(declare-fun tp!1800095 () Bool)

(assert (=> b!6510869 (= e!3944710 (and tp!1800093 tp!1800095))))

(declare-fun b!6510870 () Bool)

(declare-fun res!2673980 () Bool)

(assert (=> b!6510870 (=> res!2673980 e!3944704)))

(assert (=> b!6510870 (= res!2673980 (not (matchZipper!2407 z!1189 s!2326)))))

(declare-fun b!6510871 () Bool)

(assert (=> b!6510871 (= e!3944698 (matchZipper!2407 lt!2394658 (t!379121 s!2326)))))

(declare-fun b!6510872 () Bool)

(declare-fun Unit!158918 () Unit!158915)

(assert (=> b!6510872 (= e!3944696 Unit!158918)))

(declare-fun e!3944712 () Bool)

(declare-fun e!3944707 () Bool)

(assert (=> b!6510873 (= e!3944712 e!3944707)))

(declare-fun res!2673976 () Bool)

(assert (=> b!6510873 (=> res!2673976 e!3944707)))

(assert (=> b!6510873 (= res!2673976 (or (and ((_ is ElementMatch!16395) (regOne!33302 r!7292)) (= (c!1194259 (regOne!33302 r!7292)) (h!71809 s!2326))) ((_ is Union!16395) (regOne!33302 r!7292))))))

(declare-fun lt!2394674 () Unit!158915)

(assert (=> b!6510873 (= lt!2394674 e!3944696)))

(declare-fun c!1194258 () Bool)

(declare-fun lt!2394636 () Bool)

(assert (=> b!6510873 (= c!1194258 lt!2394636)))

(assert (=> b!6510873 (= lt!2394636 (nullable!6388 (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(assert (=> b!6510873 (= (flatMap!1900 z!1189 lambda!361298) (derivationStepZipperUp!1569 (h!71810 zl!343) (h!71809 s!2326)))))

(declare-fun lt!2394661 () Unit!158915)

(assert (=> b!6510873 (= lt!2394661 (lemmaFlatMapOnSingletonSet!1426 z!1189 (h!71810 zl!343) lambda!361298))))

(declare-fun lt!2394651 () Context!11558)

(assert (=> b!6510873 (= lt!2394658 (derivationStepZipperUp!1569 lt!2394651 (h!71809 s!2326)))))

(declare-fun derivationStepZipperDown!1643 (Regex!16395 Context!11558 C!33060) (InoxSet Context!11558))

(assert (=> b!6510873 (= lt!2394643 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 (h!71810 zl!343))) lt!2394651 (h!71809 s!2326)))))

(assert (=> b!6510873 (= lt!2394651 (Context!11559 (t!379120 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun lt!2394664 () (InoxSet Context!11558))

(assert (=> b!6510873 (= lt!2394664 (derivationStepZipperUp!1569 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343))))) (h!71809 s!2326)))))

(declare-fun b!6510874 () Bool)

(declare-fun res!2673999 () Bool)

(assert (=> b!6510874 (=> res!2673999 e!3944711)))

(assert (=> b!6510874 (= res!2673999 (or (not lt!2394655) (not lt!2394639)))))

(declare-fun b!6510875 () Bool)

(declare-fun res!2673995 () Bool)

(assert (=> b!6510875 (=> res!2673995 e!3944712)))

(declare-fun isEmpty!37574 (List!65484) Bool)

(assert (=> b!6510875 (= res!2673995 (isEmpty!37574 (t!379120 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6510876 () Bool)

(declare-fun res!2673971 () Bool)

(assert (=> b!6510876 (=> res!2673971 e!3944707)))

(assert (=> b!6510876 (= res!2673971 e!3944717)))

(declare-fun res!2673973 () Bool)

(assert (=> b!6510876 (=> (not res!2673973) (not e!3944717))))

(assert (=> b!6510876 (= res!2673973 ((_ is Concat!25240) (regOne!33302 r!7292)))))

(declare-fun tp!1800100 () Bool)

(declare-fun b!6510877 () Bool)

(assert (=> b!6510877 (= e!3944706 (and (inv!84234 (h!71810 zl!343)) e!3944716 tp!1800100))))

(declare-fun b!6510878 () Bool)

(declare-fun tp!1800097 () Bool)

(assert (=> b!6510878 (= e!3944710 tp!1800097)))

(declare-fun b!6510879 () Bool)

(declare-fun res!2673997 () Bool)

(assert (=> b!6510879 (=> res!2673997 e!3944704)))

(assert (=> b!6510879 (= res!2673997 (not lt!2394636))))

(declare-fun b!6510880 () Bool)

(declare-fun e!3944714 () Bool)

(assert (=> b!6510880 (= e!3944714 e!3944700)))

(declare-fun res!2673986 () Bool)

(assert (=> b!6510880 (=> res!2673986 e!3944700)))

(assert (=> b!6510880 (= res!2673986 (not (= (unfocusZipper!2137 (Cons!65362 lt!2394645 Nil!65362)) (reg!16724 (regOne!33302 r!7292)))))))

(assert (=> b!6510880 (= (flatMap!1900 lt!2394667 lambda!361298) (derivationStepZipperUp!1569 lt!2394648 (h!71809 s!2326)))))

(declare-fun lt!2394670 () Unit!158915)

(assert (=> b!6510880 (= lt!2394670 (lemmaFlatMapOnSingletonSet!1426 lt!2394667 lt!2394648 lambda!361298))))

(assert (=> b!6510880 (= (flatMap!1900 lt!2394650 lambda!361298) (derivationStepZipperUp!1569 lt!2394645 (h!71809 s!2326)))))

(declare-fun lt!2394647 () Unit!158915)

(assert (=> b!6510880 (= lt!2394647 (lemmaFlatMapOnSingletonSet!1426 lt!2394650 lt!2394645 lambda!361298))))

(declare-fun lt!2394641 () (InoxSet Context!11558))

(assert (=> b!6510880 (= lt!2394641 (derivationStepZipperUp!1569 lt!2394648 (h!71809 s!2326)))))

(declare-fun lt!2394640 () (InoxSet Context!11558))

(assert (=> b!6510880 (= lt!2394640 (derivationStepZipperUp!1569 lt!2394645 (h!71809 s!2326)))))

(assert (=> b!6510880 (= lt!2394667 (store ((as const (Array Context!11558 Bool)) false) lt!2394648 true))))

(assert (=> b!6510880 (= lt!2394650 (store ((as const (Array Context!11558 Bool)) false) lt!2394645 true))))

(assert (=> b!6510880 (= lt!2394645 (Context!11559 lt!2394660))))

(assert (=> b!6510880 (= lt!2394660 (Cons!65360 (reg!16724 (regOne!33302 r!7292)) Nil!65360))))

(declare-fun b!6510881 () Bool)

(declare-fun res!2674002 () Bool)

(assert (=> b!6510881 (=> res!2674002 e!3944695)))

(assert (=> b!6510881 (= res!2674002 (not (matchZipper!2407 lt!2394667 (_2!36677 lt!2394672))))))

(declare-fun b!6510882 () Bool)

(declare-fun res!2673970 () Bool)

(assert (=> b!6510882 (=> res!2673970 e!3944699)))

(declare-fun generalisedUnion!2239 (List!65484) Regex!16395)

(declare-fun unfocusZipperList!1816 (List!65486) List!65484)

(assert (=> b!6510882 (= res!2673970 (not (= r!7292 (generalisedUnion!2239 (unfocusZipperList!1816 zl!343)))))))

(declare-fun b!6510883 () Bool)

(assert (=> b!6510883 (= e!3944710 tp_is_empty!42043)))

(declare-fun b!6510884 () Bool)

(assert (=> b!6510884 (= e!3944707 e!3944703)))

(declare-fun res!2673988 () Bool)

(assert (=> b!6510884 (=> res!2673988 e!3944703)))

(assert (=> b!6510884 (= res!2673988 (not (= lt!2394643 lt!2394668)))))

(assert (=> b!6510884 (= lt!2394668 (derivationStepZipperDown!1643 (reg!16724 (regOne!33302 r!7292)) lt!2394648 (h!71809 s!2326)))))

(assert (=> b!6510884 (= lt!2394648 (Context!11559 lt!2394644))))

(assert (=> b!6510884 (= lt!2394644 (Cons!65360 lt!2394646 (t!379120 (exprs!6279 (h!71810 zl!343)))))))

(assert (=> b!6510884 (= lt!2394646 (Star!16395 (reg!16724 (regOne!33302 r!7292))))))

(declare-fun b!6510885 () Bool)

(assert (=> b!6510885 (= e!3944708 e!3944714)))

(declare-fun res!2673978 () Bool)

(assert (=> b!6510885 (=> res!2673978 e!3944714)))

(assert (=> b!6510885 (= res!2673978 (not (= (unfocusZipper!2137 (Cons!65362 lt!2394649 Nil!65362)) lt!2394657)))))

(assert (=> b!6510885 (= lt!2394657 (Concat!25240 (reg!16724 (regOne!33302 r!7292)) lt!2394637))))

(declare-fun b!6510886 () Bool)

(declare-fun res!2673992 () Bool)

(assert (=> b!6510886 (=> res!2673992 e!3944707)))

(assert (=> b!6510886 (= res!2673992 (or ((_ is Concat!25240) (regOne!33302 r!7292)) (not ((_ is Star!16395) (regOne!33302 r!7292)))))))

(declare-fun b!6510887 () Bool)

(assert (=> b!6510887 (= e!3944705 (not (matchZipper!2407 lt!2394658 (t!379121 s!2326))))))

(declare-fun b!6510888 () Bool)

(declare-fun res!2673987 () Bool)

(assert (=> b!6510888 (=> res!2673987 e!3944695)))

(assert (=> b!6510888 (= res!2673987 (not (matchZipper!2407 lt!2394650 (_1!36677 lt!2394672))))))

(assert (=> b!6510889 (= e!3944699 e!3944712)))

(declare-fun res!2674000 () Bool)

(assert (=> b!6510889 (=> res!2674000 e!3944712)))

(declare-fun lt!2394677 () Bool)

(assert (=> b!6510889 (= res!2674000 (or (not (= lt!2394666 lt!2394677)) ((_ is Nil!65361) s!2326)))))

(declare-fun Exists!3465 (Int) Bool)

(assert (=> b!6510889 (= (Exists!3465 lambda!361296) (Exists!3465 lambda!361297))))

(declare-fun lt!2394654 () Unit!158915)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2002 (Regex!16395 Regex!16395 List!65485) Unit!158915)

(assert (=> b!6510889 (= lt!2394654 (lemmaExistCutMatchRandMatchRSpecEquivalent!2002 (regOne!33302 r!7292) (regTwo!33302 r!7292) s!2326))))

(assert (=> b!6510889 (= lt!2394677 (Exists!3465 lambda!361296))))

(declare-fun findConcatSeparation!2700 (Regex!16395 Regex!16395 List!65485 List!65485 List!65485) Option!16286)

(assert (=> b!6510889 (= lt!2394677 (isDefined!12989 (findConcatSeparation!2700 (regOne!33302 r!7292) (regTwo!33302 r!7292) Nil!65361 s!2326 s!2326)))))

(declare-fun lt!2394669 () Unit!158915)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2464 (Regex!16395 Regex!16395 List!65485) Unit!158915)

(assert (=> b!6510889 (= lt!2394669 (lemmaFindConcatSeparationEquivalentToExists!2464 (regOne!33302 r!7292) (regTwo!33302 r!7292) s!2326))))

(assert (= (and start!639746 res!2674001) b!6510866))

(assert (= (and b!6510866 res!2673989) b!6510859))

(assert (= (and b!6510859 res!2673985) b!6510864))

(assert (= (and b!6510864 (not res!2673979)) b!6510860))

(assert (= (and b!6510860 (not res!2673991)) b!6510851))

(assert (= (and b!6510851 (not res!2673996)) b!6510854))

(assert (= (and b!6510854 (not res!2673990)) b!6510882))

(assert (= (and b!6510882 (not res!2673970)) b!6510846))

(assert (= (and b!6510846 (not res!2673977)) b!6510889))

(assert (= (and b!6510889 (not res!2674000)) b!6510875))

(assert (= (and b!6510875 (not res!2673995)) b!6510873))

(assert (= (and b!6510873 c!1194258) b!6510865))

(assert (= (and b!6510873 (not c!1194258)) b!6510872))

(assert (= (and b!6510865 (not res!2673983)) b!6510871))

(assert (= (and b!6510873 (not res!2673976)) b!6510876))

(assert (= (and b!6510876 res!2673973) b!6510852))

(assert (= (and b!6510876 (not res!2673971)) b!6510886))

(assert (= (and b!6510886 (not res!2673992)) b!6510884))

(assert (= (and b!6510884 (not res!2673988)) b!6510855))

(assert (= (and b!6510855 (not res!2673993)) b!6510863))

(assert (= (and b!6510863 (not res!2673981)) b!6510868))

(assert (= (and b!6510868 (not res!2673974)) b!6510853))

(assert (= (and b!6510853 (not res!2673994)) b!6510885))

(assert (= (and b!6510885 (not res!2673978)) b!6510880))

(assert (= (and b!6510880 (not res!2673986)) b!6510856))

(assert (= (and b!6510856 (not res!2673969)) b!6510858))

(assert (= (and b!6510858 (not res!2673982)) b!6510870))

(assert (= (and b!6510870 (not res!2673980)) b!6510879))

(assert (= (and b!6510879 (not res!2673997)) b!6510862))

(assert (= (and b!6510862 res!2673984) b!6510887))

(assert (= (and b!6510862 (not res!2673975)) b!6510874))

(assert (= (and b!6510874 (not res!2673999)) b!6510848))

(assert (= (and b!6510848 (not res!2673998)) b!6510867))

(assert (= (and b!6510867 (not res!2673972)) b!6510888))

(assert (= (and b!6510888 (not res!2673987)) b!6510881))

(assert (= (and b!6510881 (not res!2674002)) b!6510847))

(assert (= (and start!639746 ((_ is ElementMatch!16395) r!7292)) b!6510883))

(assert (= (and start!639746 ((_ is Concat!25240) r!7292)) b!6510850))

(assert (= (and start!639746 ((_ is Star!16395) r!7292)) b!6510878))

(assert (= (and start!639746 ((_ is Union!16395) r!7292)) b!6510869))

(assert (= (and start!639746 condSetEmpty!44425) setIsEmpty!44425))

(assert (= (and start!639746 (not condSetEmpty!44425)) setNonEmpty!44425))

(assert (= setNonEmpty!44425 b!6510849))

(assert (= b!6510877 b!6510857))

(assert (= (and start!639746 ((_ is Cons!65362) zl!343)) b!6510877))

(assert (= (and start!639746 ((_ is Cons!65361) s!2326)) b!6510861))

(declare-fun m!7297112 () Bool)

(assert (=> b!6510877 m!7297112))

(declare-fun m!7297114 () Bool)

(assert (=> b!6510888 m!7297114))

(declare-fun m!7297116 () Bool)

(assert (=> b!6510862 m!7297116))

(declare-fun m!7297118 () Bool)

(assert (=> b!6510866 m!7297118))

(declare-fun m!7297120 () Bool)

(assert (=> b!6510858 m!7297120))

(declare-fun m!7297122 () Bool)

(assert (=> b!6510858 m!7297122))

(declare-fun m!7297124 () Bool)

(assert (=> b!6510858 m!7297124))

(declare-fun m!7297126 () Bool)

(assert (=> b!6510848 m!7297126))

(declare-fun m!7297128 () Bool)

(assert (=> b!6510848 m!7297128))

(declare-fun m!7297130 () Bool)

(assert (=> b!6510848 m!7297130))

(declare-fun m!7297132 () Bool)

(assert (=> b!6510848 m!7297132))

(declare-fun m!7297134 () Bool)

(assert (=> b!6510848 m!7297134))

(declare-fun m!7297136 () Bool)

(assert (=> b!6510848 m!7297136))

(declare-fun m!7297138 () Bool)

(assert (=> b!6510847 m!7297138))

(assert (=> b!6510847 m!7297134))

(assert (=> b!6510847 m!7297136))

(assert (=> b!6510847 m!7297136))

(declare-fun m!7297140 () Bool)

(assert (=> b!6510847 m!7297140))

(assert (=> b!6510847 m!7297128))

(declare-fun m!7297142 () Bool)

(assert (=> b!6510847 m!7297142))

(declare-fun m!7297144 () Bool)

(assert (=> b!6510885 m!7297144))

(declare-fun m!7297146 () Bool)

(assert (=> b!6510863 m!7297146))

(declare-fun m!7297148 () Bool)

(assert (=> b!6510863 m!7297148))

(declare-fun m!7297150 () Bool)

(assert (=> b!6510852 m!7297150))

(declare-fun m!7297152 () Bool)

(assert (=> b!6510881 m!7297152))

(declare-fun m!7297154 () Bool)

(assert (=> setNonEmpty!44425 m!7297154))

(declare-fun m!7297156 () Bool)

(assert (=> b!6510855 m!7297156))

(declare-fun m!7297158 () Bool)

(assert (=> b!6510855 m!7297158))

(declare-fun m!7297160 () Bool)

(assert (=> b!6510855 m!7297160))

(declare-fun m!7297162 () Bool)

(assert (=> b!6510855 m!7297162))

(declare-fun m!7297164 () Bool)

(assert (=> b!6510855 m!7297164))

(declare-fun m!7297166 () Bool)

(assert (=> b!6510851 m!7297166))

(declare-fun m!7297168 () Bool)

(assert (=> b!6510884 m!7297168))

(declare-fun m!7297170 () Bool)

(assert (=> b!6510860 m!7297170))

(declare-fun m!7297172 () Bool)

(assert (=> b!6510864 m!7297172))

(declare-fun m!7297174 () Bool)

(assert (=> b!6510864 m!7297174))

(declare-fun m!7297176 () Bool)

(assert (=> b!6510864 m!7297176))

(declare-fun m!7297178 () Bool)

(assert (=> b!6510887 m!7297178))

(declare-fun m!7297180 () Bool)

(assert (=> b!6510856 m!7297180))

(declare-fun m!7297182 () Bool)

(assert (=> b!6510882 m!7297182))

(assert (=> b!6510882 m!7297182))

(declare-fun m!7297184 () Bool)

(assert (=> b!6510882 m!7297184))

(declare-fun m!7297186 () Bool)

(assert (=> b!6510865 m!7297186))

(assert (=> b!6510865 m!7297116))

(declare-fun m!7297188 () Bool)

(assert (=> b!6510865 m!7297188))

(declare-fun m!7297190 () Bool)

(assert (=> b!6510873 m!7297190))

(declare-fun m!7297192 () Bool)

(assert (=> b!6510873 m!7297192))

(declare-fun m!7297194 () Bool)

(assert (=> b!6510873 m!7297194))

(declare-fun m!7297196 () Bool)

(assert (=> b!6510873 m!7297196))

(declare-fun m!7297198 () Bool)

(assert (=> b!6510873 m!7297198))

(declare-fun m!7297200 () Bool)

(assert (=> b!6510873 m!7297200))

(declare-fun m!7297202 () Bool)

(assert (=> b!6510873 m!7297202))

(declare-fun m!7297204 () Bool)

(assert (=> b!6510859 m!7297204))

(declare-fun m!7297206 () Bool)

(assert (=> b!6510867 m!7297206))

(declare-fun m!7297208 () Bool)

(assert (=> b!6510867 m!7297208))

(declare-fun m!7297210 () Bool)

(assert (=> b!6510867 m!7297210))

(declare-fun m!7297212 () Bool)

(assert (=> b!6510867 m!7297212))

(declare-fun m!7297214 () Bool)

(assert (=> b!6510867 m!7297214))

(assert (=> b!6510871 m!7297178))

(declare-fun m!7297216 () Bool)

(assert (=> b!6510880 m!7297216))

(declare-fun m!7297218 () Bool)

(assert (=> b!6510880 m!7297218))

(declare-fun m!7297220 () Bool)

(assert (=> b!6510880 m!7297220))

(declare-fun m!7297222 () Bool)

(assert (=> b!6510880 m!7297222))

(declare-fun m!7297224 () Bool)

(assert (=> b!6510880 m!7297224))

(declare-fun m!7297226 () Bool)

(assert (=> b!6510880 m!7297226))

(declare-fun m!7297228 () Bool)

(assert (=> b!6510880 m!7297228))

(declare-fun m!7297230 () Bool)

(assert (=> b!6510880 m!7297230))

(declare-fun m!7297232 () Bool)

(assert (=> b!6510880 m!7297232))

(declare-fun m!7297234 () Bool)

(assert (=> start!639746 m!7297234))

(declare-fun m!7297236 () Bool)

(assert (=> b!6510875 m!7297236))

(declare-fun m!7297238 () Bool)

(assert (=> b!6510870 m!7297238))

(declare-fun m!7297240 () Bool)

(assert (=> b!6510889 m!7297240))

(declare-fun m!7297242 () Bool)

(assert (=> b!6510889 m!7297242))

(declare-fun m!7297244 () Bool)

(assert (=> b!6510889 m!7297244))

(declare-fun m!7297246 () Bool)

(assert (=> b!6510889 m!7297246))

(assert (=> b!6510889 m!7297246))

(declare-fun m!7297248 () Bool)

(assert (=> b!6510889 m!7297248))

(assert (=> b!6510889 m!7297240))

(declare-fun m!7297250 () Bool)

(assert (=> b!6510889 m!7297250))

(check-sat (not b!6510857) (not b!6510878) (not b!6510859) (not b!6510850) (not b!6510871) (not b!6510864) (not b!6510863) (not b!6510856) (not b!6510851) (not b!6510858) (not b!6510862) (not b!6510887) (not b!6510866) (not b!6510875) (not b!6510855) (not b!6510869) (not start!639746) (not setNonEmpty!44425) (not b!6510877) (not b!6510884) (not b!6510861) (not b!6510849) (not b!6510865) (not b!6510880) (not b!6510847) (not b!6510860) (not b!6510882) (not b!6510888) (not b!6510881) tp_is_empty!42043 (not b!6510867) (not b!6510873) (not b!6510885) (not b!6510848) (not b!6510852) (not b!6510889) (not b!6510870))
(check-sat)
(get-model)

(declare-fun d!2042317 () Bool)

(declare-fun nullableFct!2321 (Regex!16395) Bool)

(assert (=> d!2042317 (= (nullable!6388 (h!71808 (exprs!6279 (h!71810 zl!343)))) (nullableFct!2321 (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun bs!1653151 () Bool)

(assert (= bs!1653151 d!2042317))

(declare-fun m!7297320 () Bool)

(assert (=> bs!1653151 m!7297320))

(assert (=> b!6510873 d!2042317))

(declare-fun e!3944818 () (InoxSet Context!11558))

(declare-fun call!564317 () (InoxSet Context!11558))

(declare-fun b!6511071 () Bool)

(assert (=> b!6511071 (= e!3944818 ((_ map or) call!564317 (derivationStepZipperUp!1569 (Context!11559 (t!379120 (exprs!6279 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343)))))))) (h!71809 s!2326))))))

(declare-fun d!2042319 () Bool)

(declare-fun c!1194310 () Bool)

(declare-fun e!3944816 () Bool)

(assert (=> d!2042319 (= c!1194310 e!3944816)))

(declare-fun res!2674078 () Bool)

(assert (=> d!2042319 (=> (not res!2674078) (not e!3944816))))

(assert (=> d!2042319 (= res!2674078 ((_ is Cons!65360) (exprs!6279 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343))))))))))

(assert (=> d!2042319 (= (derivationStepZipperUp!1569 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343))))) (h!71809 s!2326)) e!3944818)))

(declare-fun b!6511072 () Bool)

(assert (=> b!6511072 (= e!3944816 (nullable!6388 (h!71808 (exprs!6279 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343)))))))))))

(declare-fun b!6511073 () Bool)

(declare-fun e!3944817 () (InoxSet Context!11558))

(assert (=> b!6511073 (= e!3944818 e!3944817)))

(declare-fun c!1194311 () Bool)

(assert (=> b!6511073 (= c!1194311 ((_ is Cons!65360) (exprs!6279 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343))))))))))

(declare-fun bm!564312 () Bool)

(assert (=> bm!564312 (= call!564317 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343))))))) (Context!11559 (t!379120 (exprs!6279 (Context!11559 (Cons!65360 (h!71808 (exprs!6279 (h!71810 zl!343))) (t!379120 (exprs!6279 (h!71810 zl!343)))))))) (h!71809 s!2326)))))

(declare-fun b!6511074 () Bool)

(assert (=> b!6511074 (= e!3944817 call!564317)))

(declare-fun b!6511075 () Bool)

(assert (=> b!6511075 (= e!3944817 ((as const (Array Context!11558 Bool)) false))))

(assert (= (and d!2042319 res!2674078) b!6511072))

(assert (= (and d!2042319 c!1194310) b!6511071))

(assert (= (and d!2042319 (not c!1194310)) b!6511073))

(assert (= (and b!6511073 c!1194311) b!6511074))

(assert (= (and b!6511073 (not c!1194311)) b!6511075))

(assert (= (or b!6511071 b!6511074) bm!564312))

(declare-fun m!7297354 () Bool)

(assert (=> b!6511071 m!7297354))

(declare-fun m!7297356 () Bool)

(assert (=> b!6511072 m!7297356))

(declare-fun m!7297358 () Bool)

(assert (=> bm!564312 m!7297358))

(assert (=> b!6510873 d!2042319))

(declare-fun b!6511133 () Bool)

(declare-fun e!3944856 () (InoxSet Context!11558))

(declare-fun call!564343 () (InoxSet Context!11558))

(assert (=> b!6511133 (= e!3944856 call!564343)))

(declare-fun b!6511134 () Bool)

(assert (=> b!6511134 (= e!3944856 ((as const (Array Context!11558 Bool)) false))))

(declare-fun bm!564334 () Bool)

(declare-fun call!564342 () (InoxSet Context!11558))

(declare-fun call!564339 () (InoxSet Context!11558))

(assert (=> bm!564334 (= call!564342 call!564339)))

(declare-fun b!6511135 () Bool)

(declare-fun e!3944861 () (InoxSet Context!11558))

(declare-fun e!3944859 () (InoxSet Context!11558))

(assert (=> b!6511135 (= e!3944861 e!3944859)))

(declare-fun c!1194332 () Bool)

(assert (=> b!6511135 (= c!1194332 ((_ is Concat!25240) (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6511136 () Bool)

(declare-fun e!3944860 () Bool)

(assert (=> b!6511136 (= e!3944860 (nullable!6388 (regOne!33302 (h!71808 (exprs!6279 (h!71810 zl!343))))))))

(declare-fun b!6511137 () Bool)

(declare-fun e!3944858 () (InoxSet Context!11558))

(assert (=> b!6511137 (= e!3944858 (store ((as const (Array Context!11558 Bool)) false) lt!2394651 true))))

(declare-fun d!2042329 () Bool)

(declare-fun c!1194331 () Bool)

(assert (=> d!2042329 (= c!1194331 (and ((_ is ElementMatch!16395) (h!71808 (exprs!6279 (h!71810 zl!343)))) (= (c!1194259 (h!71808 (exprs!6279 (h!71810 zl!343)))) (h!71809 s!2326))))))

(assert (=> d!2042329 (= (derivationStepZipperDown!1643 (h!71808 (exprs!6279 (h!71810 zl!343))) lt!2394651 (h!71809 s!2326)) e!3944858)))

(declare-fun call!564344 () (InoxSet Context!11558))

(declare-fun call!564340 () List!65484)

(declare-fun c!1194328 () Bool)

(declare-fun bm!564335 () Bool)

(assert (=> bm!564335 (= call!564344 (derivationStepZipperDown!1643 (ite c!1194328 (regOne!33303 (h!71808 (exprs!6279 (h!71810 zl!343)))) (regOne!33302 (h!71808 (exprs!6279 (h!71810 zl!343))))) (ite c!1194328 lt!2394651 (Context!11559 call!564340)) (h!71809 s!2326)))))

(declare-fun c!1194329 () Bool)

(declare-fun call!564341 () List!65484)

(declare-fun bm!564336 () Bool)

(assert (=> bm!564336 (= call!564339 (derivationStepZipperDown!1643 (ite c!1194328 (regTwo!33303 (h!71808 (exprs!6279 (h!71810 zl!343)))) (ite c!1194329 (regTwo!33302 (h!71808 (exprs!6279 (h!71810 zl!343)))) (ite c!1194332 (regOne!33302 (h!71808 (exprs!6279 (h!71810 zl!343)))) (reg!16724 (h!71808 (exprs!6279 (h!71810 zl!343))))))) (ite (or c!1194328 c!1194329) lt!2394651 (Context!11559 call!564341)) (h!71809 s!2326)))))

(declare-fun bm!564337 () Bool)

(assert (=> bm!564337 (= call!564343 call!564342)))

(declare-fun bm!564338 () Bool)

(assert (=> bm!564338 (= call!564341 call!564340)))

(declare-fun b!6511138 () Bool)

(declare-fun c!1194330 () Bool)

(assert (=> b!6511138 (= c!1194330 ((_ is Star!16395) (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(assert (=> b!6511138 (= e!3944859 e!3944856)))

(declare-fun b!6511139 () Bool)

(assert (=> b!6511139 (= e!3944861 ((_ map or) call!564344 call!564342))))

(declare-fun b!6511140 () Bool)

(assert (=> b!6511140 (= e!3944859 call!564343)))

(declare-fun bm!564339 () Bool)

(declare-fun $colon$colon!2243 (List!65484 Regex!16395) List!65484)

(assert (=> bm!564339 (= call!564340 ($colon$colon!2243 (exprs!6279 lt!2394651) (ite (or c!1194329 c!1194332) (regTwo!33302 (h!71808 (exprs!6279 (h!71810 zl!343)))) (h!71808 (exprs!6279 (h!71810 zl!343))))))))

(declare-fun b!6511141 () Bool)

(assert (=> b!6511141 (= c!1194329 e!3944860)))

(declare-fun res!2674104 () Bool)

(assert (=> b!6511141 (=> (not res!2674104) (not e!3944860))))

(assert (=> b!6511141 (= res!2674104 ((_ is Concat!25240) (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun e!3944857 () (InoxSet Context!11558))

(assert (=> b!6511141 (= e!3944857 e!3944861)))

(declare-fun b!6511142 () Bool)

(assert (=> b!6511142 (= e!3944858 e!3944857)))

(assert (=> b!6511142 (= c!1194328 ((_ is Union!16395) (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6511143 () Bool)

(assert (=> b!6511143 (= e!3944857 ((_ map or) call!564344 call!564339))))

(assert (= (and d!2042329 c!1194331) b!6511137))

(assert (= (and d!2042329 (not c!1194331)) b!6511142))

(assert (= (and b!6511142 c!1194328) b!6511143))

(assert (= (and b!6511142 (not c!1194328)) b!6511141))

(assert (= (and b!6511141 res!2674104) b!6511136))

(assert (= (and b!6511141 c!1194329) b!6511139))

(assert (= (and b!6511141 (not c!1194329)) b!6511135))

(assert (= (and b!6511135 c!1194332) b!6511140))

(assert (= (and b!6511135 (not c!1194332)) b!6511138))

(assert (= (and b!6511138 c!1194330) b!6511133))

(assert (= (and b!6511138 (not c!1194330)) b!6511134))

(assert (= (or b!6511140 b!6511133) bm!564338))

(assert (= (or b!6511140 b!6511133) bm!564337))

(assert (= (or b!6511139 bm!564338) bm!564339))

(assert (= (or b!6511139 bm!564337) bm!564334))

(assert (= (or b!6511143 bm!564334) bm!564336))

(assert (= (or b!6511143 b!6511139) bm!564335))

(declare-fun m!7297392 () Bool)

(assert (=> b!6511136 m!7297392))

(declare-fun m!7297394 () Bool)

(assert (=> bm!564339 m!7297394))

(declare-fun m!7297396 () Bool)

(assert (=> b!6511137 m!7297396))

(declare-fun m!7297398 () Bool)

(assert (=> bm!564335 m!7297398))

(declare-fun m!7297400 () Bool)

(assert (=> bm!564336 m!7297400))

(assert (=> b!6510873 d!2042329))

(declare-fun d!2042341 () Bool)

(declare-fun choose!48418 ((InoxSet Context!11558) Int) (InoxSet Context!11558))

(assert (=> d!2042341 (= (flatMap!1900 z!1189 lambda!361298) (choose!48418 z!1189 lambda!361298))))

(declare-fun bs!1653170 () Bool)

(assert (= bs!1653170 d!2042341))

(declare-fun m!7297418 () Bool)

(assert (=> bs!1653170 m!7297418))

(assert (=> b!6510873 d!2042341))

(declare-fun call!564345 () (InoxSet Context!11558))

(declare-fun b!6511160 () Bool)

(declare-fun e!3944872 () (InoxSet Context!11558))

(assert (=> b!6511160 (= e!3944872 ((_ map or) call!564345 (derivationStepZipperUp!1569 (Context!11559 (t!379120 (exprs!6279 (h!71810 zl!343)))) (h!71809 s!2326))))))

(declare-fun d!2042345 () Bool)

(declare-fun c!1194337 () Bool)

(declare-fun e!3944869 () Bool)

(assert (=> d!2042345 (= c!1194337 e!3944869)))

(declare-fun res!2674111 () Bool)

(assert (=> d!2042345 (=> (not res!2674111) (not e!3944869))))

(assert (=> d!2042345 (= res!2674111 ((_ is Cons!65360) (exprs!6279 (h!71810 zl!343))))))

(assert (=> d!2042345 (= (derivationStepZipperUp!1569 (h!71810 zl!343) (h!71809 s!2326)) e!3944872)))

(declare-fun b!6511161 () Bool)

(assert (=> b!6511161 (= e!3944869 (nullable!6388 (h!71808 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6511162 () Bool)

(declare-fun e!3944871 () (InoxSet Context!11558))

(assert (=> b!6511162 (= e!3944872 e!3944871)))

(declare-fun c!1194338 () Bool)

(assert (=> b!6511162 (= c!1194338 ((_ is Cons!65360) (exprs!6279 (h!71810 zl!343))))))

(declare-fun bm!564340 () Bool)

(assert (=> bm!564340 (= call!564345 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 (h!71810 zl!343))) (Context!11559 (t!379120 (exprs!6279 (h!71810 zl!343)))) (h!71809 s!2326)))))

(declare-fun b!6511163 () Bool)

(assert (=> b!6511163 (= e!3944871 call!564345)))

(declare-fun b!6511164 () Bool)

(assert (=> b!6511164 (= e!3944871 ((as const (Array Context!11558 Bool)) false))))

(assert (= (and d!2042345 res!2674111) b!6511161))

(assert (= (and d!2042345 c!1194337) b!6511160))

(assert (= (and d!2042345 (not c!1194337)) b!6511162))

(assert (= (and b!6511162 c!1194338) b!6511163))

(assert (= (and b!6511162 (not c!1194338)) b!6511164))

(assert (= (or b!6511160 b!6511163) bm!564340))

(declare-fun m!7297442 () Bool)

(assert (=> b!6511160 m!7297442))

(assert (=> b!6511161 m!7297194))

(declare-fun m!7297444 () Bool)

(assert (=> bm!564340 m!7297444))

(assert (=> b!6510873 d!2042345))

(declare-fun call!564346 () (InoxSet Context!11558))

(declare-fun b!6511167 () Bool)

(declare-fun e!3944876 () (InoxSet Context!11558))

(assert (=> b!6511167 (= e!3944876 ((_ map or) call!564346 (derivationStepZipperUp!1569 (Context!11559 (t!379120 (exprs!6279 lt!2394651))) (h!71809 s!2326))))))

(declare-fun d!2042353 () Bool)

(declare-fun c!1194341 () Bool)

(declare-fun e!3944874 () Bool)

(assert (=> d!2042353 (= c!1194341 e!3944874)))

(declare-fun res!2674112 () Bool)

(assert (=> d!2042353 (=> (not res!2674112) (not e!3944874))))

(assert (=> d!2042353 (= res!2674112 ((_ is Cons!65360) (exprs!6279 lt!2394651)))))

(assert (=> d!2042353 (= (derivationStepZipperUp!1569 lt!2394651 (h!71809 s!2326)) e!3944876)))

(declare-fun b!6511168 () Bool)

(assert (=> b!6511168 (= e!3944874 (nullable!6388 (h!71808 (exprs!6279 lt!2394651))))))

(declare-fun b!6511169 () Bool)

(declare-fun e!3944875 () (InoxSet Context!11558))

(assert (=> b!6511169 (= e!3944876 e!3944875)))

(declare-fun c!1194342 () Bool)

(assert (=> b!6511169 (= c!1194342 ((_ is Cons!65360) (exprs!6279 lt!2394651)))))

(declare-fun bm!564341 () Bool)

(assert (=> bm!564341 (= call!564346 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 lt!2394651)) (Context!11559 (t!379120 (exprs!6279 lt!2394651))) (h!71809 s!2326)))))

(declare-fun b!6511170 () Bool)

(assert (=> b!6511170 (= e!3944875 call!564346)))

(declare-fun b!6511171 () Bool)

(assert (=> b!6511171 (= e!3944875 ((as const (Array Context!11558 Bool)) false))))

(assert (= (and d!2042353 res!2674112) b!6511168))

(assert (= (and d!2042353 c!1194341) b!6511167))

(assert (= (and d!2042353 (not c!1194341)) b!6511169))

(assert (= (and b!6511169 c!1194342) b!6511170))

(assert (= (and b!6511169 (not c!1194342)) b!6511171))

(assert (= (or b!6511167 b!6511170) bm!564341))

(declare-fun m!7297450 () Bool)

(assert (=> b!6511167 m!7297450))

(declare-fun m!7297452 () Bool)

(assert (=> b!6511168 m!7297452))

(declare-fun m!7297454 () Bool)

(assert (=> bm!564341 m!7297454))

(assert (=> b!6510873 d!2042353))

(declare-fun d!2042359 () Bool)

(declare-fun dynLambda!25971 (Int Context!11558) (InoxSet Context!11558))

(assert (=> d!2042359 (= (flatMap!1900 z!1189 lambda!361298) (dynLambda!25971 lambda!361298 (h!71810 zl!343)))))

(declare-fun lt!2394723 () Unit!158915)

(declare-fun choose!48419 ((InoxSet Context!11558) Context!11558 Int) Unit!158915)

(assert (=> d!2042359 (= lt!2394723 (choose!48419 z!1189 (h!71810 zl!343) lambda!361298))))

(assert (=> d!2042359 (= z!1189 (store ((as const (Array Context!11558 Bool)) false) (h!71810 zl!343) true))))

(assert (=> d!2042359 (= (lemmaFlatMapOnSingletonSet!1426 z!1189 (h!71810 zl!343) lambda!361298) lt!2394723)))

(declare-fun b_lambda!246481 () Bool)

(assert (=> (not b_lambda!246481) (not d!2042359)))

(declare-fun bs!1653173 () Bool)

(assert (= bs!1653173 d!2042359))

(assert (=> bs!1653173 m!7297202))

(declare-fun m!7297460 () Bool)

(assert (=> bs!1653173 m!7297460))

(declare-fun m!7297464 () Bool)

(assert (=> bs!1653173 m!7297464))

(declare-fun m!7297466 () Bool)

(assert (=> bs!1653173 m!7297466))

(assert (=> b!6510873 d!2042359))

(declare-fun d!2042363 () Bool)

(assert (=> d!2042363 (= (isEmpty!37574 (t!379120 (exprs!6279 (h!71810 zl!343)))) ((_ is Nil!65360) (t!379120 (exprs!6279 (h!71810 zl!343)))))))

(assert (=> b!6510875 d!2042363))

(declare-fun d!2042365 () Bool)

(assert (=> d!2042365 (= (flatMap!1900 lt!2394638 lambda!361298) (choose!48418 lt!2394638 lambda!361298))))

(declare-fun bs!1653174 () Bool)

(assert (= bs!1653174 d!2042365))

(declare-fun m!7297468 () Bool)

(assert (=> bs!1653174 m!7297468))

(assert (=> b!6510855 d!2042365))

(declare-fun b!6511187 () Bool)

(declare-fun call!564350 () (InoxSet Context!11558))

(declare-fun e!3944888 () (InoxSet Context!11558))

(assert (=> b!6511187 (= e!3944888 ((_ map or) call!564350 (derivationStepZipperUp!1569 (Context!11559 (t!379120 (exprs!6279 lt!2394649))) (h!71809 s!2326))))))

(declare-fun d!2042367 () Bool)

(declare-fun c!1194349 () Bool)

(declare-fun e!3944886 () Bool)

(assert (=> d!2042367 (= c!1194349 e!3944886)))

(declare-fun res!2674116 () Bool)

(assert (=> d!2042367 (=> (not res!2674116) (not e!3944886))))

(assert (=> d!2042367 (= res!2674116 ((_ is Cons!65360) (exprs!6279 lt!2394649)))))

(assert (=> d!2042367 (= (derivationStepZipperUp!1569 lt!2394649 (h!71809 s!2326)) e!3944888)))

(declare-fun b!6511188 () Bool)

(assert (=> b!6511188 (= e!3944886 (nullable!6388 (h!71808 (exprs!6279 lt!2394649))))))

(declare-fun b!6511189 () Bool)

(declare-fun e!3944887 () (InoxSet Context!11558))

(assert (=> b!6511189 (= e!3944888 e!3944887)))

(declare-fun c!1194350 () Bool)

(assert (=> b!6511189 (= c!1194350 ((_ is Cons!65360) (exprs!6279 lt!2394649)))))

(declare-fun bm!564345 () Bool)

(assert (=> bm!564345 (= call!564350 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 lt!2394649)) (Context!11559 (t!379120 (exprs!6279 lt!2394649))) (h!71809 s!2326)))))

(declare-fun b!6511190 () Bool)

(assert (=> b!6511190 (= e!3944887 call!564350)))

(declare-fun b!6511191 () Bool)

(assert (=> b!6511191 (= e!3944887 ((as const (Array Context!11558 Bool)) false))))

(assert (= (and d!2042367 res!2674116) b!6511188))

(assert (= (and d!2042367 c!1194349) b!6511187))

(assert (= (and d!2042367 (not c!1194349)) b!6511189))

(assert (= (and b!6511189 c!1194350) b!6511190))

(assert (= (and b!6511189 (not c!1194350)) b!6511191))

(assert (= (or b!6511187 b!6511190) bm!564345))

(declare-fun m!7297470 () Bool)

(assert (=> b!6511187 m!7297470))

(declare-fun m!7297472 () Bool)

(assert (=> b!6511188 m!7297472))

(declare-fun m!7297474 () Bool)

(assert (=> bm!564345 m!7297474))

(assert (=> b!6510855 d!2042367))

(declare-fun d!2042369 () Bool)

(assert (=> d!2042369 (= (flatMap!1900 lt!2394638 lambda!361298) (dynLambda!25971 lambda!361298 lt!2394649))))

(declare-fun lt!2394727 () Unit!158915)

(assert (=> d!2042369 (= lt!2394727 (choose!48419 lt!2394638 lt!2394649 lambda!361298))))

(assert (=> d!2042369 (= lt!2394638 (store ((as const (Array Context!11558 Bool)) false) lt!2394649 true))))

(assert (=> d!2042369 (= (lemmaFlatMapOnSingletonSet!1426 lt!2394638 lt!2394649 lambda!361298) lt!2394727)))

(declare-fun b_lambda!246485 () Bool)

(assert (=> (not b_lambda!246485) (not d!2042369)))

(declare-fun bs!1653176 () Bool)

(assert (= bs!1653176 d!2042369))

(assert (=> bs!1653176 m!7297158))

(declare-fun m!7297480 () Bool)

(assert (=> bs!1653176 m!7297480))

(declare-fun m!7297482 () Bool)

(assert (=> bs!1653176 m!7297482))

(assert (=> bs!1653176 m!7297164))

(assert (=> b!6510855 d!2042369))

(declare-fun bs!1653179 () Bool)

(declare-fun d!2042373 () Bool)

(assert (= bs!1653179 (and d!2042373 b!6510873)))

(declare-fun lambda!361330 () Int)

(assert (=> bs!1653179 (= lambda!361330 lambda!361298)))

(assert (=> d!2042373 true))

(assert (=> d!2042373 (= (derivationStepZipper!2361 lt!2394638 (h!71809 s!2326)) (flatMap!1900 lt!2394638 lambda!361330))))

(declare-fun bs!1653180 () Bool)

(assert (= bs!1653180 d!2042373))

(declare-fun m!7297506 () Bool)

(assert (=> bs!1653180 m!7297506))

(assert (=> b!6510855 d!2042373))

(declare-fun d!2042385 () Bool)

(declare-fun c!1194366 () Bool)

(declare-fun isEmpty!37577 (List!65485) Bool)

(assert (=> d!2042385 (= c!1194366 (isEmpty!37577 (t!379121 s!2326)))))

(declare-fun e!3944910 () Bool)

(assert (=> d!2042385 (= (matchZipper!2407 lt!2394658 (t!379121 s!2326)) e!3944910)))

(declare-fun b!6511232 () Bool)

(declare-fun nullableZipper!2148 ((InoxSet Context!11558)) Bool)

(assert (=> b!6511232 (= e!3944910 (nullableZipper!2148 lt!2394658))))

(declare-fun b!6511233 () Bool)

(declare-fun head!13257 (List!65485) C!33060)

(declare-fun tail!12342 (List!65485) List!65485)

(assert (=> b!6511233 (= e!3944910 (matchZipper!2407 (derivationStepZipper!2361 lt!2394658 (head!13257 (t!379121 s!2326))) (tail!12342 (t!379121 s!2326))))))

(assert (= (and d!2042385 c!1194366) b!6511232))

(assert (= (and d!2042385 (not c!1194366)) b!6511233))

(declare-fun m!7297534 () Bool)

(assert (=> d!2042385 m!7297534))

(declare-fun m!7297536 () Bool)

(assert (=> b!6511232 m!7297536))

(declare-fun m!7297538 () Bool)

(assert (=> b!6511233 m!7297538))

(assert (=> b!6511233 m!7297538))

(declare-fun m!7297540 () Bool)

(assert (=> b!6511233 m!7297540))

(declare-fun m!7297542 () Bool)

(assert (=> b!6511233 m!7297542))

(assert (=> b!6511233 m!7297540))

(assert (=> b!6511233 m!7297542))

(declare-fun m!7297544 () Bool)

(assert (=> b!6511233 m!7297544))

(assert (=> b!6510871 d!2042385))

(declare-fun bs!1653204 () Bool)

(declare-fun d!2042399 () Bool)

(assert (= bs!1653204 (and d!2042399 b!6510848)))

(declare-fun lambda!361343 () Int)

(assert (=> bs!1653204 (= lambda!361343 lambda!361300)))

(declare-fun b!6511275 () Bool)

(declare-fun e!3944937 () Bool)

(declare-fun lt!2394747 () Regex!16395)

(declare-fun isEmptyExpr!1781 (Regex!16395) Bool)

(assert (=> b!6511275 (= e!3944937 (isEmptyExpr!1781 lt!2394747))))

(declare-fun b!6511276 () Bool)

(declare-fun e!3944941 () Regex!16395)

(assert (=> b!6511276 (= e!3944941 (Concat!25240 (h!71808 (exprs!6279 (h!71810 zl!343))) (generalisedConcat!1992 (t!379120 (exprs!6279 (h!71810 zl!343))))))))

(declare-fun b!6511277 () Bool)

(declare-fun e!3944936 () Bool)

(assert (=> b!6511277 (= e!3944936 (isEmpty!37574 (t!379120 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6511278 () Bool)

(declare-fun e!3944940 () Regex!16395)

(assert (=> b!6511278 (= e!3944940 (h!71808 (exprs!6279 (h!71810 zl!343))))))

(declare-fun b!6511279 () Bool)

(declare-fun e!3944939 () Bool)

(declare-fun isConcat!1304 (Regex!16395) Bool)

(assert (=> b!6511279 (= e!3944939 (isConcat!1304 lt!2394747))))

(declare-fun b!6511280 () Bool)

(assert (=> b!6511280 (= e!3944941 EmptyExpr!16395)))

(declare-fun b!6511281 () Bool)

(assert (=> b!6511281 (= e!3944937 e!3944939)))

(declare-fun c!1194382 () Bool)

(declare-fun tail!12343 (List!65484) List!65484)

(assert (=> b!6511281 (= c!1194382 (isEmpty!37574 (tail!12343 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun e!3944938 () Bool)

(assert (=> d!2042399 e!3944938))

(declare-fun res!2674143 () Bool)

(assert (=> d!2042399 (=> (not res!2674143) (not e!3944938))))

(assert (=> d!2042399 (= res!2674143 (validRegex!8131 lt!2394747))))

(assert (=> d!2042399 (= lt!2394747 e!3944940)))

(declare-fun c!1194383 () Bool)

(assert (=> d!2042399 (= c!1194383 e!3944936)))

(declare-fun res!2674142 () Bool)

(assert (=> d!2042399 (=> (not res!2674142) (not e!3944936))))

(assert (=> d!2042399 (= res!2674142 ((_ is Cons!65360) (exprs!6279 (h!71810 zl!343))))))

(declare-fun forall!15574 (List!65484 Int) Bool)

(assert (=> d!2042399 (forall!15574 (exprs!6279 (h!71810 zl!343)) lambda!361343)))

(assert (=> d!2042399 (= (generalisedConcat!1992 (exprs!6279 (h!71810 zl!343))) lt!2394747)))

(declare-fun b!6511282 () Bool)

(assert (=> b!6511282 (= e!3944940 e!3944941)))

(declare-fun c!1194385 () Bool)

(assert (=> b!6511282 (= c!1194385 ((_ is Cons!65360) (exprs!6279 (h!71810 zl!343))))))

(declare-fun b!6511283 () Bool)

(declare-fun head!13258 (List!65484) Regex!16395)

(assert (=> b!6511283 (= e!3944939 (= lt!2394747 (head!13258 (exprs!6279 (h!71810 zl!343)))))))

(declare-fun b!6511284 () Bool)

(assert (=> b!6511284 (= e!3944938 e!3944937)))

(declare-fun c!1194384 () Bool)

(assert (=> b!6511284 (= c!1194384 (isEmpty!37574 (exprs!6279 (h!71810 zl!343))))))

(assert (= (and d!2042399 res!2674142) b!6511277))

(assert (= (and d!2042399 c!1194383) b!6511278))

(assert (= (and d!2042399 (not c!1194383)) b!6511282))

(assert (= (and b!6511282 c!1194385) b!6511276))

(assert (= (and b!6511282 (not c!1194385)) b!6511280))

(assert (= (and d!2042399 res!2674143) b!6511284))

(assert (= (and b!6511284 c!1194384) b!6511275))

(assert (= (and b!6511284 (not c!1194384)) b!6511281))

(assert (= (and b!6511281 c!1194382) b!6511283))

(assert (= (and b!6511281 (not c!1194382)) b!6511279))

(declare-fun m!7297588 () Bool)

(assert (=> b!6511283 m!7297588))

(declare-fun m!7297590 () Bool)

(assert (=> b!6511275 m!7297590))

(declare-fun m!7297592 () Bool)

(assert (=> b!6511281 m!7297592))

(assert (=> b!6511281 m!7297592))

(declare-fun m!7297594 () Bool)

(assert (=> b!6511281 m!7297594))

(declare-fun m!7297596 () Bool)

(assert (=> b!6511284 m!7297596))

(declare-fun m!7297598 () Bool)

(assert (=> d!2042399 m!7297598))

(declare-fun m!7297600 () Bool)

(assert (=> d!2042399 m!7297600))

(assert (=> b!6511277 m!7297236))

(declare-fun m!7297602 () Bool)

(assert (=> b!6511276 m!7297602))

(declare-fun m!7297604 () Bool)

(assert (=> b!6511279 m!7297604))

(assert (=> b!6510851 d!2042399))

(declare-fun d!2042421 () Bool)

(assert (=> d!2042421 (= (nullable!6388 (regOne!33302 (regOne!33302 r!7292))) (nullableFct!2321 (regOne!33302 (regOne!33302 r!7292))))))

(declare-fun bs!1653205 () Bool)

(assert (= bs!1653205 d!2042421))

(declare-fun m!7297606 () Bool)

(assert (=> bs!1653205 m!7297606))

(assert (=> b!6510852 d!2042421))

(declare-fun bs!1653206 () Bool)

(declare-fun d!2042423 () Bool)

(assert (= bs!1653206 (and d!2042423 b!6510848)))

(declare-fun lambda!361346 () Int)

(assert (=> bs!1653206 (= lambda!361346 lambda!361300)))

(declare-fun bs!1653207 () Bool)

(assert (= bs!1653207 (and d!2042423 d!2042399)))

(assert (=> bs!1653207 (= lambda!361346 lambda!361343)))

(assert (=> d!2042423 (= (inv!84234 setElem!44425) (forall!15574 (exprs!6279 setElem!44425) lambda!361346))))

(declare-fun bs!1653208 () Bool)

(assert (= bs!1653208 d!2042423))

(declare-fun m!7297608 () Bool)

(assert (=> bs!1653208 m!7297608))

(assert (=> setNonEmpty!44425 d!2042423))

(declare-fun bm!564374 () Bool)

(declare-fun call!564379 () Bool)

(assert (=> bm!564374 (= call!564379 (isEmpty!37577 s!2326))))

(declare-fun b!6511348 () Bool)

(declare-fun res!2674164 () Bool)

(declare-fun e!3944977 () Bool)

(assert (=> b!6511348 (=> res!2674164 e!3944977)))

(assert (=> b!6511348 (= res!2674164 (not ((_ is ElementMatch!16395) lt!2394657)))))

(declare-fun e!3944978 () Bool)

(assert (=> b!6511348 (= e!3944978 e!3944977)))

(declare-fun b!6511349 () Bool)

(declare-fun e!3944979 () Bool)

(assert (=> b!6511349 (= e!3944979 (= (head!13257 s!2326) (c!1194259 lt!2394657)))))

(declare-fun b!6511350 () Bool)

(declare-fun e!3944975 () Bool)

(assert (=> b!6511350 (= e!3944975 (nullable!6388 lt!2394657))))

(declare-fun b!6511352 () Bool)

(declare-fun res!2674168 () Bool)

(declare-fun e!3944980 () Bool)

(assert (=> b!6511352 (=> res!2674168 e!3944980)))

(assert (=> b!6511352 (= res!2674168 (not (isEmpty!37577 (tail!12342 s!2326))))))

(declare-fun b!6511353 () Bool)

(declare-fun res!2674165 () Bool)

(assert (=> b!6511353 (=> res!2674165 e!3944977)))

(assert (=> b!6511353 (= res!2674165 e!3944979)))

(declare-fun res!2674169 () Bool)

(assert (=> b!6511353 (=> (not res!2674169) (not e!3944979))))

(declare-fun lt!2394751 () Bool)

(assert (=> b!6511353 (= res!2674169 lt!2394751)))

(declare-fun b!6511354 () Bool)

(declare-fun res!2674167 () Bool)

(assert (=> b!6511354 (=> (not res!2674167) (not e!3944979))))

(assert (=> b!6511354 (= res!2674167 (not call!564379))))

(declare-fun b!6511355 () Bool)

(assert (=> b!6511355 (= e!3944980 (not (= (head!13257 s!2326) (c!1194259 lt!2394657))))))

(declare-fun b!6511356 () Bool)

(assert (=> b!6511356 (= e!3944978 (not lt!2394751))))

(declare-fun b!6511357 () Bool)

(declare-fun e!3944976 () Bool)

(assert (=> b!6511357 (= e!3944976 e!3944978)))

(declare-fun c!1194409 () Bool)

(assert (=> b!6511357 (= c!1194409 ((_ is EmptyLang!16395) lt!2394657))))

(declare-fun b!6511358 () Bool)

(declare-fun e!3944981 () Bool)

(assert (=> b!6511358 (= e!3944977 e!3944981)))

(declare-fun res!2674166 () Bool)

(assert (=> b!6511358 (=> (not res!2674166) (not e!3944981))))

(assert (=> b!6511358 (= res!2674166 (not lt!2394751))))

(declare-fun b!6511359 () Bool)

(declare-fun derivativeStep!5087 (Regex!16395 C!33060) Regex!16395)

(assert (=> b!6511359 (= e!3944975 (matchR!8578 (derivativeStep!5087 lt!2394657 (head!13257 s!2326)) (tail!12342 s!2326)))))

(declare-fun b!6511360 () Bool)

(assert (=> b!6511360 (= e!3944976 (= lt!2394751 call!564379))))

(declare-fun b!6511361 () Bool)

(assert (=> b!6511361 (= e!3944981 e!3944980)))

(declare-fun res!2674163 () Bool)

(assert (=> b!6511361 (=> res!2674163 e!3944980)))

(assert (=> b!6511361 (= res!2674163 call!564379)))

(declare-fun b!6511351 () Bool)

(declare-fun res!2674170 () Bool)

(assert (=> b!6511351 (=> (not res!2674170) (not e!3944979))))

(assert (=> b!6511351 (= res!2674170 (isEmpty!37577 (tail!12342 s!2326)))))

(declare-fun d!2042425 () Bool)

(assert (=> d!2042425 e!3944976))

(declare-fun c!1194408 () Bool)

(assert (=> d!2042425 (= c!1194408 ((_ is EmptyExpr!16395) lt!2394657))))

(assert (=> d!2042425 (= lt!2394751 e!3944975)))

(declare-fun c!1194410 () Bool)

(assert (=> d!2042425 (= c!1194410 (isEmpty!37577 s!2326))))

(assert (=> d!2042425 (validRegex!8131 lt!2394657)))

(assert (=> d!2042425 (= (matchR!8578 lt!2394657 s!2326) lt!2394751)))

(assert (= (and d!2042425 c!1194410) b!6511350))

(assert (= (and d!2042425 (not c!1194410)) b!6511359))

(assert (= (and d!2042425 c!1194408) b!6511360))

(assert (= (and d!2042425 (not c!1194408)) b!6511357))

(assert (= (and b!6511357 c!1194409) b!6511356))

(assert (= (and b!6511357 (not c!1194409)) b!6511348))

(assert (= (and b!6511348 (not res!2674164)) b!6511353))

(assert (= (and b!6511353 res!2674169) b!6511354))

(assert (= (and b!6511354 res!2674167) b!6511351))

(assert (= (and b!6511351 res!2674170) b!6511349))

(assert (= (and b!6511353 (not res!2674165)) b!6511358))

(assert (= (and b!6511358 res!2674166) b!6511361))

(assert (= (and b!6511361 (not res!2674163)) b!6511352))

(assert (= (and b!6511352 (not res!2674168)) b!6511355))

(assert (= (or b!6511360 b!6511361 b!6511354) bm!564374))

(declare-fun m!7297636 () Bool)

(assert (=> b!6511359 m!7297636))

(assert (=> b!6511359 m!7297636))

(declare-fun m!7297638 () Bool)

(assert (=> b!6511359 m!7297638))

(declare-fun m!7297640 () Bool)

(assert (=> b!6511359 m!7297640))

(assert (=> b!6511359 m!7297638))

(assert (=> b!6511359 m!7297640))

(declare-fun m!7297642 () Bool)

(assert (=> b!6511359 m!7297642))

(declare-fun m!7297644 () Bool)

(assert (=> bm!564374 m!7297644))

(assert (=> d!2042425 m!7297644))

(declare-fun m!7297646 () Bool)

(assert (=> d!2042425 m!7297646))

(assert (=> b!6511349 m!7297636))

(assert (=> b!6511355 m!7297636))

(assert (=> b!6511352 m!7297640))

(assert (=> b!6511352 m!7297640))

(declare-fun m!7297648 () Bool)

(assert (=> b!6511352 m!7297648))

(assert (=> b!6511351 m!7297640))

(assert (=> b!6511351 m!7297640))

(assert (=> b!6511351 m!7297648))

(declare-fun m!7297650 () Bool)

(assert (=> b!6511350 m!7297650))

(assert (=> b!6510858 d!2042425))

(declare-fun bs!1653211 () Bool)

(declare-fun b!6511423 () Bool)

(assert (= bs!1653211 (and b!6511423 b!6510889)))

(declare-fun lambda!361351 () Int)

(assert (=> bs!1653211 (not (= lambda!361351 lambda!361296))))

(assert (=> bs!1653211 (not (= lambda!361351 lambda!361297))))

(assert (=> b!6511423 true))

(assert (=> b!6511423 true))

(declare-fun bs!1653213 () Bool)

(declare-fun b!6511430 () Bool)

(assert (= bs!1653213 (and b!6511430 b!6510889)))

(declare-fun lambda!361352 () Int)

(assert (=> bs!1653213 (not (= lambda!361352 lambda!361296))))

(assert (=> bs!1653213 (= (and (= (regOne!33302 lt!2394657) (regOne!33302 r!7292)) (= (regTwo!33302 lt!2394657) (regTwo!33302 r!7292))) (= lambda!361352 lambda!361297))))

(declare-fun bs!1653214 () Bool)

(assert (= bs!1653214 (and b!6511430 b!6511423)))

(assert (=> bs!1653214 (not (= lambda!361352 lambda!361351))))

(assert (=> b!6511430 true))

(assert (=> b!6511430 true))

(declare-fun b!6511421 () Bool)

(declare-fun e!3945017 () Bool)

(assert (=> b!6511421 (= e!3945017 (= s!2326 (Cons!65361 (c!1194259 lt!2394657) Nil!65361)))))

(declare-fun b!6511422 () Bool)

(declare-fun e!3945018 () Bool)

(declare-fun call!564385 () Bool)

(assert (=> b!6511422 (= e!3945018 call!564385)))

(declare-fun e!3945019 () Bool)

(declare-fun call!564384 () Bool)

(assert (=> b!6511423 (= e!3945019 call!564384)))

(declare-fun b!6511424 () Bool)

(declare-fun e!3945021 () Bool)

(declare-fun e!3945020 () Bool)

(assert (=> b!6511424 (= e!3945021 e!3945020)))

(declare-fun res!2674203 () Bool)

(assert (=> b!6511424 (= res!2674203 (matchRSpec!3496 (regOne!33303 lt!2394657) s!2326))))

(assert (=> b!6511424 (=> res!2674203 e!3945020)))

(declare-fun bm!564379 () Bool)

(declare-fun c!1194425 () Bool)

(assert (=> bm!564379 (= call!564384 (Exists!3465 (ite c!1194425 lambda!361351 lambda!361352)))))

(declare-fun b!6511425 () Bool)

(assert (=> b!6511425 (= e!3945020 (matchRSpec!3496 (regTwo!33303 lt!2394657) s!2326))))

(declare-fun b!6511426 () Bool)

(declare-fun c!1194428 () Bool)

(assert (=> b!6511426 (= c!1194428 ((_ is Union!16395) lt!2394657))))

(assert (=> b!6511426 (= e!3945017 e!3945021)))

(declare-fun d!2042433 () Bool)

(declare-fun c!1194427 () Bool)

(assert (=> d!2042433 (= c!1194427 ((_ is EmptyExpr!16395) lt!2394657))))

(assert (=> d!2042433 (= (matchRSpec!3496 lt!2394657 s!2326) e!3945018)))

(declare-fun bm!564380 () Bool)

(assert (=> bm!564380 (= call!564385 (isEmpty!37577 s!2326))))

(declare-fun b!6511427 () Bool)

(declare-fun c!1194426 () Bool)

(assert (=> b!6511427 (= c!1194426 ((_ is ElementMatch!16395) lt!2394657))))

(declare-fun e!3945016 () Bool)

(assert (=> b!6511427 (= e!3945016 e!3945017)))

(declare-fun b!6511428 () Bool)

(declare-fun e!3945015 () Bool)

(assert (=> b!6511428 (= e!3945021 e!3945015)))

(assert (=> b!6511428 (= c!1194425 ((_ is Star!16395) lt!2394657))))

(declare-fun b!6511429 () Bool)

(assert (=> b!6511429 (= e!3945018 e!3945016)))

(declare-fun res!2674202 () Bool)

(assert (=> b!6511429 (= res!2674202 (not ((_ is EmptyLang!16395) lt!2394657)))))

(assert (=> b!6511429 (=> (not res!2674202) (not e!3945016))))

(assert (=> b!6511430 (= e!3945015 call!564384)))

(declare-fun b!6511431 () Bool)

(declare-fun res!2674204 () Bool)

(assert (=> b!6511431 (=> res!2674204 e!3945019)))

(assert (=> b!6511431 (= res!2674204 call!564385)))

(assert (=> b!6511431 (= e!3945015 e!3945019)))

(assert (= (and d!2042433 c!1194427) b!6511422))

(assert (= (and d!2042433 (not c!1194427)) b!6511429))

(assert (= (and b!6511429 res!2674202) b!6511427))

(assert (= (and b!6511427 c!1194426) b!6511421))

(assert (= (and b!6511427 (not c!1194426)) b!6511426))

(assert (= (and b!6511426 c!1194428) b!6511424))

(assert (= (and b!6511426 (not c!1194428)) b!6511428))

(assert (= (and b!6511424 (not res!2674203)) b!6511425))

(assert (= (and b!6511428 c!1194425) b!6511431))

(assert (= (and b!6511428 (not c!1194425)) b!6511430))

(assert (= (and b!6511431 (not res!2674204)) b!6511423))

(assert (= (or b!6511423 b!6511430) bm!564379))

(assert (= (or b!6511422 b!6511431) bm!564380))

(declare-fun m!7297680 () Bool)

(assert (=> b!6511424 m!7297680))

(declare-fun m!7297682 () Bool)

(assert (=> bm!564379 m!7297682))

(declare-fun m!7297684 () Bool)

(assert (=> b!6511425 m!7297684))

(assert (=> bm!564380 m!7297644))

(assert (=> b!6510858 d!2042433))

(declare-fun d!2042443 () Bool)

(assert (=> d!2042443 (= (matchR!8578 lt!2394657 s!2326) (matchRSpec!3496 lt!2394657 s!2326))))

(declare-fun lt!2394769 () Unit!158915)

(declare-fun choose!48423 (Regex!16395 List!65485) Unit!158915)

(assert (=> d!2042443 (= lt!2394769 (choose!48423 lt!2394657 s!2326))))

(assert (=> d!2042443 (validRegex!8131 lt!2394657)))

(assert (=> d!2042443 (= (mainMatchTheorem!3496 lt!2394657 s!2326) lt!2394769)))

(declare-fun bs!1653215 () Bool)

(assert (= bs!1653215 d!2042443))

(assert (=> bs!1653215 m!7297120))

(assert (=> bs!1653215 m!7297122))

(declare-fun m!7297700 () Bool)

(assert (=> bs!1653215 m!7297700))

(assert (=> bs!1653215 m!7297646))

(assert (=> b!6510858 d!2042443))

(declare-fun d!2042447 () Bool)

(assert (=> d!2042447 (= (flatMap!1900 lt!2394667 lambda!361298) (dynLambda!25971 lambda!361298 lt!2394648))))

(declare-fun lt!2394770 () Unit!158915)

(assert (=> d!2042447 (= lt!2394770 (choose!48419 lt!2394667 lt!2394648 lambda!361298))))

(assert (=> d!2042447 (= lt!2394667 (store ((as const (Array Context!11558 Bool)) false) lt!2394648 true))))

(assert (=> d!2042447 (= (lemmaFlatMapOnSingletonSet!1426 lt!2394667 lt!2394648 lambda!361298) lt!2394770)))

(declare-fun b_lambda!246493 () Bool)

(assert (=> (not b_lambda!246493) (not d!2042447)))

(declare-fun bs!1653216 () Bool)

(assert (= bs!1653216 d!2042447))

(assert (=> bs!1653216 m!7297216))

(declare-fun m!7297714 () Bool)

(assert (=> bs!1653216 m!7297714))

(declare-fun m!7297716 () Bool)

(assert (=> bs!1653216 m!7297716))

(assert (=> bs!1653216 m!7297222))

(assert (=> b!6510880 d!2042447))

(declare-fun d!2042451 () Bool)

(declare-fun lt!2394773 () Regex!16395)

(assert (=> d!2042451 (validRegex!8131 lt!2394773)))

(assert (=> d!2042451 (= lt!2394773 (generalisedUnion!2239 (unfocusZipperList!1816 (Cons!65362 lt!2394645 Nil!65362))))))

(assert (=> d!2042451 (= (unfocusZipper!2137 (Cons!65362 lt!2394645 Nil!65362)) lt!2394773)))

(declare-fun bs!1653223 () Bool)

(assert (= bs!1653223 d!2042451))

(declare-fun m!7297720 () Bool)

(assert (=> bs!1653223 m!7297720))

(declare-fun m!7297722 () Bool)

(assert (=> bs!1653223 m!7297722))

(assert (=> bs!1653223 m!7297722))

(declare-fun m!7297724 () Bool)

(assert (=> bs!1653223 m!7297724))

(assert (=> b!6510880 d!2042451))

(declare-fun e!3945031 () (InoxSet Context!11558))

(declare-fun b!6511446 () Bool)

(declare-fun call!564386 () (InoxSet Context!11558))

(assert (=> b!6511446 (= e!3945031 ((_ map or) call!564386 (derivationStepZipperUp!1569 (Context!11559 (t!379120 (exprs!6279 lt!2394645))) (h!71809 s!2326))))))

(declare-fun d!2042455 () Bool)

(declare-fun c!1194433 () Bool)

(declare-fun e!3945029 () Bool)

(assert (=> d!2042455 (= c!1194433 e!3945029)))

(declare-fun res!2674211 () Bool)

(assert (=> d!2042455 (=> (not res!2674211) (not e!3945029))))

(assert (=> d!2042455 (= res!2674211 ((_ is Cons!65360) (exprs!6279 lt!2394645)))))

(assert (=> d!2042455 (= (derivationStepZipperUp!1569 lt!2394645 (h!71809 s!2326)) e!3945031)))

(declare-fun b!6511447 () Bool)

(assert (=> b!6511447 (= e!3945029 (nullable!6388 (h!71808 (exprs!6279 lt!2394645))))))

(declare-fun b!6511448 () Bool)

(declare-fun e!3945030 () (InoxSet Context!11558))

(assert (=> b!6511448 (= e!3945031 e!3945030)))

(declare-fun c!1194434 () Bool)

(assert (=> b!6511448 (= c!1194434 ((_ is Cons!65360) (exprs!6279 lt!2394645)))))

(declare-fun bm!564381 () Bool)

(assert (=> bm!564381 (= call!564386 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 lt!2394645)) (Context!11559 (t!379120 (exprs!6279 lt!2394645))) (h!71809 s!2326)))))

(declare-fun b!6511449 () Bool)

(assert (=> b!6511449 (= e!3945030 call!564386)))

(declare-fun b!6511450 () Bool)

(assert (=> b!6511450 (= e!3945030 ((as const (Array Context!11558 Bool)) false))))

(assert (= (and d!2042455 res!2674211) b!6511447))

(assert (= (and d!2042455 c!1194433) b!6511446))

(assert (= (and d!2042455 (not c!1194433)) b!6511448))

(assert (= (and b!6511448 c!1194434) b!6511449))

(assert (= (and b!6511448 (not c!1194434)) b!6511450))

(assert (= (or b!6511446 b!6511449) bm!564381))

(declare-fun m!7297726 () Bool)

(assert (=> b!6511446 m!7297726))

(declare-fun m!7297728 () Bool)

(assert (=> b!6511447 m!7297728))

(declare-fun m!7297730 () Bool)

(assert (=> bm!564381 m!7297730))

(assert (=> b!6510880 d!2042455))

(declare-fun d!2042457 () Bool)

(assert (=> d!2042457 (= (flatMap!1900 lt!2394650 lambda!361298) (dynLambda!25971 lambda!361298 lt!2394645))))

(declare-fun lt!2394774 () Unit!158915)

(assert (=> d!2042457 (= lt!2394774 (choose!48419 lt!2394650 lt!2394645 lambda!361298))))

(assert (=> d!2042457 (= lt!2394650 (store ((as const (Array Context!11558 Bool)) false) lt!2394645 true))))

(assert (=> d!2042457 (= (lemmaFlatMapOnSingletonSet!1426 lt!2394650 lt!2394645 lambda!361298) lt!2394774)))

(declare-fun b_lambda!246495 () Bool)

(assert (=> (not b_lambda!246495) (not d!2042457)))

(declare-fun bs!1653224 () Bool)

(assert (= bs!1653224 d!2042457))

(assert (=> bs!1653224 m!7297232))

(declare-fun m!7297732 () Bool)

(assert (=> bs!1653224 m!7297732))

(declare-fun m!7297734 () Bool)

(assert (=> bs!1653224 m!7297734))

(assert (=> bs!1653224 m!7297224))

(assert (=> b!6510880 d!2042457))

(declare-fun d!2042459 () Bool)

(assert (=> d!2042459 (= (flatMap!1900 lt!2394667 lambda!361298) (choose!48418 lt!2394667 lambda!361298))))

(declare-fun bs!1653225 () Bool)

(assert (= bs!1653225 d!2042459))

(declare-fun m!7297736 () Bool)

(assert (=> bs!1653225 m!7297736))

(assert (=> b!6510880 d!2042459))

(declare-fun d!2042461 () Bool)

(assert (=> d!2042461 (= (flatMap!1900 lt!2394650 lambda!361298) (choose!48418 lt!2394650 lambda!361298))))

(declare-fun bs!1653226 () Bool)

(assert (= bs!1653226 d!2042461))

(declare-fun m!7297738 () Bool)

(assert (=> bs!1653226 m!7297738))

(assert (=> b!6510880 d!2042461))

(declare-fun b!6511451 () Bool)

(declare-fun call!564387 () (InoxSet Context!11558))

(declare-fun e!3945034 () (InoxSet Context!11558))

(assert (=> b!6511451 (= e!3945034 ((_ map or) call!564387 (derivationStepZipperUp!1569 (Context!11559 (t!379120 (exprs!6279 lt!2394648))) (h!71809 s!2326))))))

(declare-fun d!2042463 () Bool)

(declare-fun c!1194435 () Bool)

(declare-fun e!3945032 () Bool)

(assert (=> d!2042463 (= c!1194435 e!3945032)))

(declare-fun res!2674212 () Bool)

(assert (=> d!2042463 (=> (not res!2674212) (not e!3945032))))

(assert (=> d!2042463 (= res!2674212 ((_ is Cons!65360) (exprs!6279 lt!2394648)))))

(assert (=> d!2042463 (= (derivationStepZipperUp!1569 lt!2394648 (h!71809 s!2326)) e!3945034)))

(declare-fun b!6511452 () Bool)

(assert (=> b!6511452 (= e!3945032 (nullable!6388 (h!71808 (exprs!6279 lt!2394648))))))

(declare-fun b!6511453 () Bool)

(declare-fun e!3945033 () (InoxSet Context!11558))

(assert (=> b!6511453 (= e!3945034 e!3945033)))

(declare-fun c!1194436 () Bool)

(assert (=> b!6511453 (= c!1194436 ((_ is Cons!65360) (exprs!6279 lt!2394648)))))

(declare-fun bm!564382 () Bool)

(assert (=> bm!564382 (= call!564387 (derivationStepZipperDown!1643 (h!71808 (exprs!6279 lt!2394648)) (Context!11559 (t!379120 (exprs!6279 lt!2394648))) (h!71809 s!2326)))))

(declare-fun b!6511454 () Bool)

(assert (=> b!6511454 (= e!3945033 call!564387)))

(declare-fun b!6511455 () Bool)

(assert (=> b!6511455 (= e!3945033 ((as const (Array Context!11558 Bool)) false))))

(assert (= (and d!2042463 res!2674212) b!6511452))

(assert (= (and d!2042463 c!1194435) b!6511451))

(assert (= (and d!2042463 (not c!1194435)) b!6511453))

(assert (= (and b!6511453 c!1194436) b!6511454))

(assert (= (and b!6511453 (not c!1194436)) b!6511455))

(assert (= (or b!6511451 b!6511454) bm!564382))

(declare-fun m!7297740 () Bool)

(assert (=> b!6511451 m!7297740))

(declare-fun m!7297742 () Bool)

(assert (=> b!6511452 m!7297742))

(declare-fun m!7297744 () Bool)

(assert (=> bm!564382 m!7297744))

(assert (=> b!6510880 d!2042463))

(declare-fun d!2042465 () Bool)

(declare-fun lt!2394775 () Regex!16395)

(assert (=> d!2042465 (validRegex!8131 lt!2394775)))

(assert (=> d!2042465 (= lt!2394775 (generalisedUnion!2239 (unfocusZipperList!1816 zl!343)))))

(assert (=> d!2042465 (= (unfocusZipper!2137 zl!343) lt!2394775)))

(declare-fun bs!1653227 () Bool)

(assert (= bs!1653227 d!2042465))

(declare-fun m!7297746 () Bool)

(assert (=> bs!1653227 m!7297746))

(assert (=> bs!1653227 m!7297182))

(assert (=> bs!1653227 m!7297182))

(assert (=> bs!1653227 m!7297184))

(assert (=> b!6510859 d!2042465))

(declare-fun d!2042467 () Bool)

(declare-fun lt!2394776 () Regex!16395)

(assert (=> d!2042467 (validRegex!8131 lt!2394776)))

(assert (=> d!2042467 (= lt!2394776 (generalisedUnion!2239 (unfocusZipperList!1816 (Cons!65362 lt!2394648 Nil!65362))))))

(assert (=> d!2042467 (= (unfocusZipper!2137 (Cons!65362 lt!2394648 Nil!65362)) lt!2394776)))

(declare-fun bs!1653228 () Bool)

(assert (= bs!1653228 d!2042467))

(declare-fun m!7297748 () Bool)

(assert (=> bs!1653228 m!7297748))

(declare-fun m!7297750 () Bool)

(assert (=> bs!1653228 m!7297750))

(assert (=> bs!1653228 m!7297750))

(declare-fun m!7297752 () Bool)

(assert (=> bs!1653228 m!7297752))

(assert (=> b!6510856 d!2042467))

(declare-fun bs!1653229 () Bool)

(declare-fun d!2042469 () Bool)

(assert (= bs!1653229 (and d!2042469 b!6510848)))

(declare-fun lambda!361354 () Int)

(assert (=> bs!1653229 (= lambda!361354 lambda!361300)))

(declare-fun bs!1653230 () Bool)

(assert (= bs!1653230 (and d!2042469 d!2042399)))

(assert (=> bs!1653230 (= lambda!361354 lambda!361343)))

(declare-fun bs!1653231 () Bool)

(assert (= bs!1653231 (and d!2042469 d!2042423)))

(assert (=> bs!1653231 (= lambda!361354 lambda!361346)))

(assert (=> d!2042469 (= (inv!84234 (h!71810 zl!343)) (forall!15574 (exprs!6279 (h!71810 zl!343)) lambda!361354))))

(declare-fun bs!1653232 () Bool)

(assert (= bs!1653232 d!2042469))

(declare-fun m!7297754 () Bool)

(assert (=> bs!1653232 m!7297754))

(assert (=> b!6510877 d!2042469))

(declare-fun b!6511456 () Bool)

(declare-fun e!3945035 () (InoxSet Context!11558))

(declare-fun call!564392 () (InoxSet Context!11558))

(assert (=> b!6511456 (= e!3945035 call!564392)))

(declare-fun b!6511457 () Bool)

(assert (=> b!6511457 (= e!3945035 ((as const (Array Context!11558 Bool)) false))))

(declare-fun bm!564383 () Bool)

(declare-fun call!564391 () (InoxSet Context!11558))

(declare-fun call!564388 () (InoxSet Context!11558))

(assert (=> bm!564383 (= call!564391 call!564388)))

(declare-fun b!6511458 () Bool)

(declare-fun e!3945040 () (InoxSet Context!11558))

(declare-fun e!3945038 () (InoxSet Context!11558))

(assert (=> b!6511458 (= e!3945040 e!3945038)))

(declare-fun c!1194441 () Bool)

(assert (=> b!6511458 (= c!1194441 ((_ is Concat!25240) (reg!16724 (regOne!33302 r!7292))))))

(declare-fun b!6511459 () Bool)

(declare-fun e!3945039 () Bool)

(assert (=> b!6511459 (= e!3945039 (nullable!6388 (regOne!33302 (reg!16724 (regOne!33302 r!7292)))))))

(declare-fun b!6511460 () Bool)

(declare-fun e!3945037 () (InoxSet Context!11558))

(assert (=> b!6511460 (= e!3945037 (store ((as const (Array Context!11558 Bool)) false) lt!2394648 true))))

(declare-fun d!2042471 () Bool)

(declare-fun c!1194440 () Bool)

(assert (=> d!2042471 (= c!1194440 (and ((_ is ElementMatch!16395) (reg!16724 (regOne!33302 r!7292))) (= (c!1194259 (reg!16724 (regOne!33302 r!7292))) (h!71809 s!2326))))))

(assert (=> d!2042471 (= (derivationStepZipperDown!1643 (reg!16724 (regOne!33302 r!7292)) lt!2394648 (h!71809 s!2326)) e!3945037)))

(declare-fun c!1194437 () Bool)

(declare-fun call!564389 () List!65484)

(declare-fun bm!564384 () Bool)

(declare-fun call!564393 () (InoxSet Context!11558))

(assert (=> bm!564384 (= call!564393 (derivationStepZipperDown!1643 (ite c!1194437 (regOne!33303 (reg!16724 (regOne!33302 r!7292))) (regOne!33302 (reg!16724 (regOne!33302 r!7292)))) (ite c!1194437 lt!2394648 (Context!11559 call!564389)) (h!71809 s!2326)))))

(declare-fun c!1194438 () Bool)

(declare-fun call!564390 () List!65484)

(declare-fun bm!564385 () Bool)

(assert (=> bm!564385 (= call!564388 (derivationStepZipperDown!1643 (ite c!1194437 (regTwo!33303 (reg!16724 (regOne!33302 r!7292))) (ite c!1194438 (regTwo!33302 (reg!16724 (regOne!33302 r!7292))) (ite c!1194441 (regOne!33302 (reg!16724 (regOne!33302 r!7292))) (reg!16724 (reg!16724 (regOne!33302 r!7292)))))) (ite (or c!1194437 c!1194438) lt!2394648 (Context!11559 call!564390)) (h!71809 s!2326)))))

(declare-fun bm!564386 () Bool)

(assert (=> bm!564386 (= call!564392 call!564391)))

(declare-fun bm!564387 () Bool)

(assert (=> bm!564387 (= call!564390 call!564389)))

(declare-fun b!6511461 () Bool)

(declare-fun c!1194439 () Bool)

(assert (=> b!6511461 (= c!1194439 ((_ is Star!16395) (reg!16724 (regOne!33302 r!7292))))))

(assert (=> b!6511461 (= e!3945038 e!3945035)))

(declare-fun b!6511462 () Bool)

(assert (=> b!6511462 (= e!3945040 ((_ map or) call!564393 call!564391))))

(declare-fun b!6511463 () Bool)

(assert (=> b!6511463 (= e!3945038 call!564392)))

(declare-fun bm!564388 () Bool)

(assert (=> bm!564388 (= call!564389 ($colon$colon!2243 (exprs!6279 lt!2394648) (ite (or c!1194438 c!1194441) (regTwo!33302 (reg!16724 (regOne!33302 r!7292))) (reg!16724 (regOne!33302 r!7292)))))))

(declare-fun b!6511464 () Bool)

(assert (=> b!6511464 (= c!1194438 e!3945039)))

(declare-fun res!2674213 () Bool)

(assert (=> b!6511464 (=> (not res!2674213) (not e!3945039))))

(assert (=> b!6511464 (= res!2674213 ((_ is Concat!25240) (reg!16724 (regOne!33302 r!7292))))))

(declare-fun e!3945036 () (InoxSet Context!11558))

(assert (=> b!6511464 (= e!3945036 e!3945040)))

(declare-fun b!6511465 () Bool)

(assert (=> b!6511465 (= e!3945037 e!3945036)))

(assert (=> b!6511465 (= c!1194437 ((_ is Union!16395) (reg!16724 (regOne!33302 r!7292))))))

(declare-fun b!6511466 () Bool)

(assert (=> b!6511466 (= e!3945036 ((_ map or) call!564393 call!564388))))

(assert (= (and d!2042471 c!1194440) b!6511460))

(assert (= (and d!2042471 (not c!1194440)) b!6511465))

(assert (= (and b!6511465 c!1194437) b!6511466))

(assert (= (and b!6511465 (not c!1194437)) b!6511464))

(assert (= (and b!6511464 res!2674213) b!6511459))

(assert (= (and b!6511464 c!1194438) b!6511462))

(assert (= (and b!6511464 (not c!1194438)) b!6511458))

(assert (= (and b!6511458 c!1194441) b!6511463))

(assert (= (and b!6511458 (not c!1194441)) b!6511461))

(assert (= (and b!6511461 c!1194439) b!6511456))

(assert (= (and b!6511461 (not c!1194439)) b!6511457))

(assert (= (or b!6511463 b!6511456) bm!564387))

(assert (= (or b!6511463 b!6511456) bm!564386))

(assert (= (or b!6511462 bm!564387) bm!564388))

(assert (= (or b!6511462 bm!564386) bm!564383))

(assert (= (or b!6511466 bm!564383) bm!564385))

(assert (= (or b!6511466 b!6511462) bm!564384))

(declare-fun m!7297756 () Bool)

(assert (=> b!6511459 m!7297756))

(declare-fun m!7297758 () Bool)

(assert (=> bm!564388 m!7297758))

(assert (=> b!6511460 m!7297222))

(declare-fun m!7297760 () Bool)

(assert (=> bm!564384 m!7297760))

(declare-fun m!7297762 () Bool)

(assert (=> bm!564385 m!7297762))

(assert (=> b!6510884 d!2042471))

(declare-fun d!2042473 () Bool)

(declare-fun c!1194450 () Bool)

(assert (=> d!2042473 (= c!1194450 (isEmpty!37577 (t!379121 s!2326)))))

(declare-fun e!3945053 () Bool)

(assert (=> d!2042473 (= (matchZipper!2407 lt!2394652 (t!379121 s!2326)) e!3945053)))

(declare-fun b!6511487 () Bool)

(assert (=> b!6511487 (= e!3945053 (nullableZipper!2148 lt!2394652))))

(declare-fun b!6511488 () Bool)

(assert (=> b!6511488 (= e!3945053 (matchZipper!2407 (derivationStepZipper!2361 lt!2394652 (head!13257 (t!379121 s!2326))) (tail!12342 (t!379121 s!2326))))))

(assert (= (and d!2042473 c!1194450) b!6511487))

(assert (= (and d!2042473 (not c!1194450)) b!6511488))

(assert (=> d!2042473 m!7297534))

(declare-fun m!7297764 () Bool)

(assert (=> b!6511487 m!7297764))

(assert (=> b!6511488 m!7297538))

(assert (=> b!6511488 m!7297538))

(declare-fun m!7297766 () Bool)

(assert (=> b!6511488 m!7297766))

(assert (=> b!6511488 m!7297542))

(assert (=> b!6511488 m!7297766))

(assert (=> b!6511488 m!7297542))

(declare-fun m!7297768 () Bool)

(assert (=> b!6511488 m!7297768))

(assert (=> b!6510863 d!2042473))

(declare-fun d!2042475 () Bool)

(declare-fun c!1194451 () Bool)

(assert (=> d!2042475 (= c!1194451 (isEmpty!37577 s!2326))))

(declare-fun e!3945054 () Bool)

(assert (=> d!2042475 (= (matchZipper!2407 lt!2394638 s!2326) e!3945054)))

(declare-fun b!6511489 () Bool)

(assert (=> b!6511489 (= e!3945054 (nullableZipper!2148 lt!2394638))))

(declare-fun b!6511490 () Bool)

(assert (=> b!6511490 (= e!3945054 (matchZipper!2407 (derivationStepZipper!2361 lt!2394638 (head!13257 s!2326)) (tail!12342 s!2326)))))

(assert (= (and d!2042475 c!1194451) b!6511489))

(assert (= (and d!2042475 (not c!1194451)) b!6511490))

(assert (=> d!2042475 m!7297644))

(declare-fun m!7297770 () Bool)

(assert (=> b!6511489 m!7297770))

(assert (=> b!6511490 m!7297636))

(assert (=> b!6511490 m!7297636))

(declare-fun m!7297772 () Bool)

(assert (=> b!6511490 m!7297772))

(assert (=> b!6511490 m!7297640))

(assert (=> b!6511490 m!7297772))

(assert (=> b!6511490 m!7297640))

(declare-fun m!7297774 () Bool)

(assert (=> b!6511490 m!7297774))

(assert (=> b!6510863 d!2042475))

(declare-fun d!2042477 () Bool)

(declare-fun lt!2394779 () Regex!16395)

(assert (=> d!2042477 (validRegex!8131 lt!2394779)))

(assert (=> d!2042477 (= lt!2394779 (generalisedUnion!2239 (unfocusZipperList!1816 (Cons!65362 lt!2394649 Nil!65362))))))

(assert (=> d!2042477 (= (unfocusZipper!2137 (Cons!65362 lt!2394649 Nil!65362)) lt!2394779)))

(declare-fun bs!1653233 () Bool)

(assert (= bs!1653233 d!2042477))

(declare-fun m!7297776 () Bool)

(assert (=> bs!1653233 m!7297776))

(declare-fun m!7297778 () Bool)

(assert (=> bs!1653233 m!7297778))

(assert (=> bs!1653233 m!7297778))

(declare-fun m!7297780 () Bool)

(assert (=> bs!1653233 m!7297780))

(assert (=> b!6510885 d!2042477))

(declare-fun b!6511540 () Bool)

(declare-fun e!3945092 () Bool)

(declare-fun e!3945091 () Bool)

(assert (=> b!6511540 (= e!3945092 e!3945091)))

(declare-fun c!1194470 () Bool)

(assert (=> b!6511540 (= c!1194470 ((_ is Star!16395) r!7292))))

(declare-fun b!6511541 () Bool)

(declare-fun res!2674234 () Bool)

(declare-fun e!3945085 () Bool)

(assert (=> b!6511541 (=> (not res!2674234) (not e!3945085))))

(declare-fun call!564409 () Bool)

(assert (=> b!6511541 (= res!2674234 call!564409)))

(declare-fun e!3945088 () Bool)

(assert (=> b!6511541 (= e!3945088 e!3945085)))

(declare-fun b!6511542 () Bool)

(declare-fun call!564408 () Bool)

(assert (=> b!6511542 (= e!3945085 call!564408)))

(declare-fun b!6511543 () Bool)

(declare-fun e!3945084 () Bool)

(declare-fun call!564410 () Bool)

(assert (=> b!6511543 (= e!3945084 call!564410)))

(declare-fun bm!564403 () Bool)

(assert (=> bm!564403 (= call!564408 call!564410)))

(declare-fun b!6511544 () Bool)

(assert (=> b!6511544 (= e!3945091 e!3945088)))

(declare-fun c!1194468 () Bool)

(assert (=> b!6511544 (= c!1194468 ((_ is Union!16395) r!7292))))

(declare-fun b!6511545 () Bool)

(assert (=> b!6511545 (= e!3945091 e!3945084)))

(declare-fun res!2674237 () Bool)

(assert (=> b!6511545 (= res!2674237 (not (nullable!6388 (reg!16724 r!7292))))))

(assert (=> b!6511545 (=> (not res!2674237) (not e!3945084))))

(declare-fun b!6511546 () Bool)

(declare-fun res!2674236 () Bool)

(declare-fun e!3945093 () Bool)

(assert (=> b!6511546 (=> res!2674236 e!3945093)))

(assert (=> b!6511546 (= res!2674236 (not ((_ is Concat!25240) r!7292)))))

(assert (=> b!6511546 (= e!3945088 e!3945093)))

(declare-fun bm!564404 () Bool)

(assert (=> bm!564404 (= call!564409 (validRegex!8131 (ite c!1194468 (regOne!33303 r!7292) (regOne!33302 r!7292))))))

(declare-fun d!2042479 () Bool)

(declare-fun res!2674233 () Bool)

(assert (=> d!2042479 (=> res!2674233 e!3945092)))

(assert (=> d!2042479 (= res!2674233 ((_ is ElementMatch!16395) r!7292))))

(assert (=> d!2042479 (= (validRegex!8131 r!7292) e!3945092)))

(declare-fun bm!564405 () Bool)

(assert (=> bm!564405 (= call!564410 (validRegex!8131 (ite c!1194470 (reg!16724 r!7292) (ite c!1194468 (regTwo!33303 r!7292) (regTwo!33302 r!7292)))))))

(declare-fun b!6511547 () Bool)

(declare-fun e!3945086 () Bool)

(assert (=> b!6511547 (= e!3945093 e!3945086)))

(declare-fun res!2674232 () Bool)

(assert (=> b!6511547 (=> (not res!2674232) (not e!3945086))))

(assert (=> b!6511547 (= res!2674232 call!564409)))

(declare-fun b!6511548 () Bool)

(assert (=> b!6511548 (= e!3945086 call!564408)))

(assert (= (and d!2042479 (not res!2674233)) b!6511540))

(assert (= (and b!6511540 c!1194470) b!6511545))

(assert (= (and b!6511540 (not c!1194470)) b!6511544))

(assert (= (and b!6511545 res!2674237) b!6511543))

(assert (= (and b!6511544 c!1194468) b!6511541))

(assert (= (and b!6511544 (not c!1194468)) b!6511546))

(assert (= (and b!6511541 res!2674234) b!6511542))

(assert (= (and b!6511546 (not res!2674236)) b!6511547))

(assert (= (and b!6511547 res!2674232) b!6511548))

(assert (= (or b!6511542 b!6511548) bm!564403))

(assert (= (or b!6511541 b!6511547) bm!564404))

(assert (= (or b!6511543 bm!564403) bm!564405))

(declare-fun m!7297830 () Bool)

(assert (=> b!6511545 m!7297830))

(declare-fun m!7297832 () Bool)

(assert (=> bm!564404 m!7297832))

(declare-fun m!7297834 () Bool)

(assert (=> bm!564405 m!7297834))

(assert (=> start!639746 d!2042479))

(declare-fun bs!1653243 () Bool)

(declare-fun b!6511556 () Bool)

(assert (= bs!1653243 (and b!6511556 b!6510889)))

(declare-fun lambda!361358 () Int)

(assert (=> bs!1653243 (not (= lambda!361358 lambda!361296))))

(assert (=> bs!1653243 (not (= lambda!361358 lambda!361297))))

(declare-fun bs!1653244 () Bool)

(assert (= bs!1653244 (and b!6511556 b!6511423)))

(assert (=> bs!1653244 (= (and (= (reg!16724 r!7292) (reg!16724 lt!2394657)) (= r!7292 lt!2394657)) (= lambda!361358 lambda!361351))))

(declare-fun bs!1653245 () Bool)

(assert (= bs!1653245 (and b!6511556 b!6511430)))

(assert (=> bs!1653245 (not (= lambda!361358 lambda!361352))))

(assert (=> b!6511556 true))

(assert (=> b!6511556 true))

(declare-fun bs!1653246 () Bool)

(declare-fun b!6511563 () Bool)

(assert (= bs!1653246 (and b!6511563 b!6510889)))

(declare-fun lambda!361359 () Int)

(assert (=> bs!1653246 (= lambda!361359 lambda!361297)))

(assert (=> bs!1653246 (not (= lambda!361359 lambda!361296))))

(declare-fun bs!1653247 () Bool)

(assert (= bs!1653247 (and b!6511563 b!6511423)))

(assert (=> bs!1653247 (not (= lambda!361359 lambda!361351))))

(declare-fun bs!1653248 () Bool)

(assert (= bs!1653248 (and b!6511563 b!6511430)))

(assert (=> bs!1653248 (= (and (= (regOne!33302 r!7292) (regOne!33302 lt!2394657)) (= (regTwo!33302 r!7292) (regTwo!33302 lt!2394657))) (= lambda!361359 lambda!361352))))

(declare-fun bs!1653249 () Bool)

(assert (= bs!1653249 (and b!6511563 b!6511556)))

(assert (=> bs!1653249 (not (= lambda!361359 lambda!361358))))

(assert (=> b!6511563 true))

(assert (=> b!6511563 true))

(declare-fun b!6511554 () Bool)

(declare-fun e!3945099 () Bool)

(assert (=> b!6511554 (= e!3945099 (= s!2326 (Cons!65361 (c!1194259 r!7292) Nil!65361)))))

(declare-fun b!6511555 () Bool)

(declare-fun e!3945100 () Bool)

(declare-fun call!564413 () Bool)

(assert (=> b!6511555 (= e!3945100 call!564413)))

(declare-fun e!3945101 () Bool)

(declare-fun call!564412 () Bool)

(assert (=> b!6511556 (= e!3945101 call!564412)))

(declare-fun b!6511557 () Bool)

(declare-fun e!3945103 () Bool)

(declare-fun e!3945102 () Bool)

(assert (=> b!6511557 (= e!3945103 e!3945102)))

(declare-fun res!2674240 () Bool)

(assert (=> b!6511557 (= res!2674240 (matchRSpec!3496 (regOne!33303 r!7292) s!2326))))

(assert (=> b!6511557 (=> res!2674240 e!3945102)))

(declare-fun c!1194473 () Bool)

(declare-fun bm!564407 () Bool)

(assert (=> bm!564407 (= call!564412 (Exists!3465 (ite c!1194473 lambda!361358 lambda!361359)))))

(declare-fun b!6511558 () Bool)

(assert (=> b!6511558 (= e!3945102 (matchRSpec!3496 (regTwo!33303 r!7292) s!2326))))

(declare-fun b!6511559 () Bool)

(declare-fun c!1194476 () Bool)

(assert (=> b!6511559 (= c!1194476 ((_ is Union!16395) r!7292))))

(assert (=> b!6511559 (= e!3945099 e!3945103)))

(declare-fun d!2042495 () Bool)

(declare-fun c!1194475 () Bool)

(assert (=> d!2042495 (= c!1194475 ((_ is EmptyExpr!16395) r!7292))))

(assert (=> d!2042495 (= (matchRSpec!3496 r!7292 s!2326) e!3945100)))

(declare-fun bm!564408 () Bool)

(assert (=> bm!564408 (= call!564413 (isEmpty!37577 s!2326))))

(declare-fun b!6511560 () Bool)

(declare-fun c!1194474 () Bool)

(assert (=> b!6511560 (= c!1194474 ((_ is ElementMatch!16395) r!7292))))

(declare-fun e!3945098 () Bool)

(assert (=> b!6511560 (= e!3945098 e!3945099)))

(declare-fun b!6511561 () Bool)

(declare-fun e!3945097 () Bool)

(assert (=> b!6511561 (= e!3945103 e!3945097)))

(assert (=> b!6511561 (= c!1194473 ((_ is Star!16395) r!7292))))

(declare-fun b!6511562 () Bool)

(assert (=> b!6511562 (= e!3945100 e!3945098)))

(declare-fun res!2674239 () Bool)

(assert (=> b!6511562 (= res!2674239 (not ((_ is EmptyLang!16395) r!7292)))))

(assert (=> b!6511562 (=> (not res!2674239) (not e!3945098))))

(assert (=> b!6511563 (= e!3945097 call!564412)))

(declare-fun b!6511564 () Bool)

(declare-fun res!2674241 () Bool)

(assert (=> b!6511564 (=> res!2674241 e!3945101)))

(assert (=> b!6511564 (= res!2674241 call!564413)))

(assert (=> b!6511564 (= e!3945097 e!3945101)))

(assert (= (and d!2042495 c!1194475) b!6511555))

(assert (= (and d!2042495 (not c!1194475)) b!6511562))

(assert (= (and b!6511562 res!2674239) b!6511560))

(assert (= (and b!6511560 c!1194474) b!6511554))

(assert (= (and b!6511560 (not c!1194474)) b!6511559))

(assert (= (and b!6511559 c!1194476) b!6511557))

(assert (= (and b!6511559 (not c!1194476)) b!6511561))

(assert (= (and b!6511557 (not res!2674240)) b!6511558))

(assert (= (and b!6511561 c!1194473) b!6511564))

(assert (= (and b!6511561 (not c!1194473)) b!6511563))

(assert (= (and b!6511564 (not res!2674241)) b!6511556))

(assert (= (or b!6511556 b!6511563) bm!564407))

(assert (= (or b!6511555 b!6511564) bm!564408))

(declare-fun m!7297844 () Bool)

(assert (=> b!6511557 m!7297844))

(declare-fun m!7297846 () Bool)

(assert (=> bm!564407 m!7297846))

(declare-fun m!7297848 () Bool)

(assert (=> b!6511558 m!7297848))

(assert (=> bm!564408 m!7297644))

(assert (=> b!6510864 d!2042495))

(declare-fun bm!564409 () Bool)

(declare-fun call!564414 () Bool)

(assert (=> bm!564409 (= call!564414 (isEmpty!37577 s!2326))))

(declare-fun b!6511600 () Bool)

(declare-fun res!2674243 () Bool)

(declare-fun e!3945121 () Bool)

(assert (=> b!6511600 (=> res!2674243 e!3945121)))

(assert (=> b!6511600 (= res!2674243 (not ((_ is ElementMatch!16395) r!7292)))))

(declare-fun e!3945122 () Bool)

(assert (=> b!6511600 (= e!3945122 e!3945121)))

(declare-fun b!6511601 () Bool)

(declare-fun e!3945123 () Bool)

(assert (=> b!6511601 (= e!3945123 (= (head!13257 s!2326) (c!1194259 r!7292)))))

(declare-fun b!6511602 () Bool)

(declare-fun e!3945119 () Bool)

(assert (=> b!6511602 (= e!3945119 (nullable!6388 r!7292))))

(declare-fun b!6511604 () Bool)

(declare-fun res!2674247 () Bool)

(declare-fun e!3945124 () Bool)

(assert (=> b!6511604 (=> res!2674247 e!3945124)))

(assert (=> b!6511604 (= res!2674247 (not (isEmpty!37577 (tail!12342 s!2326))))))

(declare-fun b!6511605 () Bool)

(declare-fun res!2674244 () Bool)

(assert (=> b!6511605 (=> res!2674244 e!3945121)))

(assert (=> b!6511605 (= res!2674244 e!3945123)))

(declare-fun res!2674248 () Bool)

(assert (=> b!6511605 (=> (not res!2674248) (not e!3945123))))

(declare-fun lt!2394782 () Bool)

(assert (=> b!6511605 (= res!2674248 lt!2394782)))

(declare-fun b!6511606 () Bool)

(declare-fun res!2674246 () Bool)

(assert (=> b!6511606 (=> (not res!2674246) (not e!3945123))))

(assert (=> b!6511606 (= res!2674246 (not call!564414))))

(declare-fun b!6511607 () Bool)

(assert (=> b!6511607 (= e!3945124 (not (= (head!13257 s!2326) (c!1194259 r!7292))))))

(declare-fun b!6511608 () Bool)

(assert (=> b!6511608 (= e!3945122 (not lt!2394782))))

(declare-fun b!6511609 () Bool)

(declare-fun e!3945120 () Bool)

(assert (=> b!6511609 (= e!3945120 e!3945122)))

(declare-fun c!1194478 () Bool)

(assert (=> b!6511609 (= c!1194478 ((_ is EmptyLang!16395) r!7292))))

(declare-fun b!6511610 () Bool)

(declare-fun e!3945125 () Bool)

(assert (=> b!6511610 (= e!3945121 e!3945125)))

(declare-fun res!2674245 () Bool)

(assert (=> b!6511610 (=> (not res!2674245) (not e!3945125))))

(assert (=> b!6511610 (= res!2674245 (not lt!2394782))))

(declare-fun b!6511611 () Bool)

(assert (=> b!6511611 (= e!3945119 (matchR!8578 (derivativeStep!5087 r!7292 (head!13257 s!2326)) (tail!12342 s!2326)))))

(declare-fun b!6511612 () Bool)

(assert (=> b!6511612 (= e!3945120 (= lt!2394782 call!564414))))

(declare-fun b!6511613 () Bool)

(assert (=> b!6511613 (= e!3945125 e!3945124)))

(declare-fun res!2674242 () Bool)

(assert (=> b!6511613 (=> res!2674242 e!3945124)))

(assert (=> b!6511613 (= res!2674242 call!564414)))

(declare-fun b!6511603 () Bool)

(declare-fun res!2674249 () Bool)

(assert (=> b!6511603 (=> (not res!2674249) (not e!3945123))))

(assert (=> b!6511603 (= res!2674249 (isEmpty!37577 (tail!12342 s!2326)))))

(declare-fun d!2042497 () Bool)

(assert (=> d!2042497 e!3945120))

(declare-fun c!1194477 () Bool)

(assert (=> d!2042497 (= c!1194477 ((_ is EmptyExpr!16395) r!7292))))

(assert (=> d!2042497 (= lt!2394782 e!3945119)))

(declare-fun c!1194479 () Bool)

(assert (=> d!2042497 (= c!1194479 (isEmpty!37577 s!2326))))

(assert (=> d!2042497 (validRegex!8131 r!7292)))

(assert (=> d!2042497 (= (matchR!8578 r!7292 s!2326) lt!2394782)))

(assert (= (and d!2042497 c!1194479) b!6511602))

(assert (= (and d!2042497 (not c!1194479)) b!6511611))

(assert (= (and d!2042497 c!1194477) b!6511612))

(assert (= (and d!2042497 (not c!1194477)) b!6511609))

(assert (= (and b!6511609 c!1194478) b!6511608))

(assert (= (and b!6511609 (not c!1194478)) b!6511600))

(assert (= (and b!6511600 (not res!2674243)) b!6511605))

(assert (= (and b!6511605 res!2674248) b!6511606))

(assert (= (and b!6511606 res!2674246) b!6511603))

(assert (= (and b!6511603 res!2674249) b!6511601))

(assert (= (and b!6511605 (not res!2674244)) b!6511610))

(assert (= (and b!6511610 res!2674245) b!6511613))

(assert (= (and b!6511613 (not res!2674242)) b!6511604))

(assert (= (and b!6511604 (not res!2674247)) b!6511607))

(assert (= (or b!6511612 b!6511613 b!6511606) bm!564409))

(assert (=> b!6511611 m!7297636))

(assert (=> b!6511611 m!7297636))

(declare-fun m!7297850 () Bool)

(assert (=> b!6511611 m!7297850))

(assert (=> b!6511611 m!7297640))

(assert (=> b!6511611 m!7297850))

(assert (=> b!6511611 m!7297640))

(declare-fun m!7297854 () Bool)

(assert (=> b!6511611 m!7297854))

(assert (=> bm!564409 m!7297644))

(assert (=> d!2042497 m!7297644))

(assert (=> d!2042497 m!7297234))

(assert (=> b!6511601 m!7297636))

(assert (=> b!6511607 m!7297636))

(assert (=> b!6511604 m!7297640))

(assert (=> b!6511604 m!7297640))

(assert (=> b!6511604 m!7297648))

(assert (=> b!6511603 m!7297640))

(assert (=> b!6511603 m!7297640))

(assert (=> b!6511603 m!7297648))

(declare-fun m!7297856 () Bool)

(assert (=> b!6511602 m!7297856))

(assert (=> b!6510864 d!2042497))

(declare-fun d!2042499 () Bool)

(assert (=> d!2042499 (= (matchR!8578 r!7292 s!2326) (matchRSpec!3496 r!7292 s!2326))))

(declare-fun lt!2394783 () Unit!158915)

(assert (=> d!2042499 (= lt!2394783 (choose!48423 r!7292 s!2326))))

(assert (=> d!2042499 (validRegex!8131 r!7292)))

(assert (=> d!2042499 (= (mainMatchTheorem!3496 r!7292 s!2326) lt!2394783)))

(declare-fun bs!1653250 () Bool)

(assert (= bs!1653250 d!2042499))

(assert (=> bs!1653250 m!7297174))

(assert (=> bs!1653250 m!7297172))

(declare-fun m!7297858 () Bool)

(assert (=> bs!1653250 m!7297858))

(assert (=> bs!1653250 m!7297234))

(assert (=> b!6510864 d!2042499))

(declare-fun d!2042501 () Bool)

(declare-fun c!1194480 () Bool)

(assert (=> d!2042501 (= c!1194480 (isEmpty!37577 (_2!36677 lt!2394672)))))

(declare-fun e!3945130 () Bool)

(assert (=> d!2042501 (= (matchZipper!2407 lt!2394667 (_2!36677 lt!2394672)) e!3945130)))

(declare-fun b!6511627 () Bool)

(assert (=> b!6511627 (= e!3945130 (nullableZipper!2148 lt!2394667))))

(declare-fun b!6511628 () Bool)

(assert (=> b!6511628 (= e!3945130 (matchZipper!2407 (derivationStepZipper!2361 lt!2394667 (head!13257 (_2!36677 lt!2394672))) (tail!12342 (_2!36677 lt!2394672))))))

(assert (= (and d!2042501 c!1194480) b!6511627))

(assert (= (and d!2042501 (not c!1194480)) b!6511628))

(declare-fun m!7297860 () Bool)

(assert (=> d!2042501 m!7297860))

(declare-fun m!7297862 () Bool)

(assert (=> b!6511627 m!7297862))

(declare-fun m!7297864 () Bool)

(assert (=> b!6511628 m!7297864))

(assert (=> b!6511628 m!7297864))

(declare-fun m!7297866 () Bool)

(assert (=> b!6511628 m!7297866))

(declare-fun m!7297868 () Bool)

(assert (=> b!6511628 m!7297868))

(assert (=> b!6511628 m!7297866))

(assert (=> b!6511628 m!7297868))

(declare-fun m!7297870 () Bool)

(assert (=> b!6511628 m!7297870))

(assert (=> b!6510881 d!2042501))

(declare-fun d!2042503 () Bool)

(assert (=> d!2042503 (= (isEmpty!37573 (t!379122 zl!343)) ((_ is Nil!65362) (t!379122 zl!343)))))

(assert (=> b!6510860 d!2042503))

(declare-fun bs!1653256 () Bool)

(declare-fun d!2042505 () Bool)

(assert (= bs!1653256 (and d!2042505 b!6510848)))

(declare-fun lambda!361362 () Int)

(assert (=> bs!1653256 (= lambda!361362 lambda!361300)))

(declare-fun bs!1653257 () Bool)

(assert (= bs!1653257 (and d!2042505 d!2042399)))

(assert (=> bs!1653257 (= lambda!361362 lambda!361343)))

(declare-fun bs!1653258 () Bool)

(assert (= bs!1653258 (and d!2042505 d!2042423)))

(assert (=> bs!1653258 (= lambda!361362 lambda!361346)))

(declare-fun bs!1653259 () Bool)

(assert (= bs!1653259 (and d!2042505 d!2042469)))

(assert (=> bs!1653259 (= lambda!361362 lambda!361354)))

(declare-fun b!6511655 () Bool)

(declare-fun e!3945148 () Bool)

(declare-fun lt!2394787 () Regex!16395)

(declare-fun isUnion!1221 (Regex!16395) Bool)

(assert (=> b!6511655 (= e!3945148 (isUnion!1221 lt!2394787))))

(declare-fun b!6511656 () Bool)

(declare-fun e!3945151 () Bool)

(declare-fun e!3945152 () Bool)

(assert (=> b!6511656 (= e!3945151 e!3945152)))

(declare-fun c!1194490 () Bool)

(assert (=> b!6511656 (= c!1194490 (isEmpty!37574 (unfocusZipperList!1816 zl!343)))))

(assert (=> d!2042505 e!3945151))

(declare-fun res!2674254 () Bool)

(assert (=> d!2042505 (=> (not res!2674254) (not e!3945151))))

(assert (=> d!2042505 (= res!2674254 (validRegex!8131 lt!2394787))))

(declare-fun e!3945147 () Regex!16395)

(assert (=> d!2042505 (= lt!2394787 e!3945147)))

(declare-fun c!1194491 () Bool)

(declare-fun e!3945149 () Bool)

(assert (=> d!2042505 (= c!1194491 e!3945149)))

(declare-fun res!2674255 () Bool)

(assert (=> d!2042505 (=> (not res!2674255) (not e!3945149))))

(assert (=> d!2042505 (= res!2674255 ((_ is Cons!65360) (unfocusZipperList!1816 zl!343)))))

(assert (=> d!2042505 (forall!15574 (unfocusZipperList!1816 zl!343) lambda!361362)))

(assert (=> d!2042505 (= (generalisedUnion!2239 (unfocusZipperList!1816 zl!343)) lt!2394787)))

(declare-fun b!6511657 () Bool)

(assert (=> b!6511657 (= e!3945147 (h!71808 (unfocusZipperList!1816 zl!343)))))

(declare-fun b!6511658 () Bool)

(declare-fun e!3945150 () Regex!16395)

(assert (=> b!6511658 (= e!3945150 (Union!16395 (h!71808 (unfocusZipperList!1816 zl!343)) (generalisedUnion!2239 (t!379120 (unfocusZipperList!1816 zl!343)))))))

(declare-fun b!6511659 () Bool)

(assert (=> b!6511659 (= e!3945150 EmptyLang!16395)))

(declare-fun b!6511660 () Bool)

(assert (=> b!6511660 (= e!3945147 e!3945150)))

(declare-fun c!1194489 () Bool)

(assert (=> b!6511660 (= c!1194489 ((_ is Cons!65360) (unfocusZipperList!1816 zl!343)))))

(declare-fun b!6511661 () Bool)

(declare-fun isEmptyLang!1791 (Regex!16395) Bool)

(assert (=> b!6511661 (= e!3945152 (isEmptyLang!1791 lt!2394787))))

(declare-fun b!6511662 () Bool)

(assert (=> b!6511662 (= e!3945148 (= lt!2394787 (head!13258 (unfocusZipperList!1816 zl!343))))))

(declare-fun b!6511663 () Bool)

(assert (=> b!6511663 (= e!3945149 (isEmpty!37574 (t!379120 (unfocusZipperList!1816 zl!343))))))

(declare-fun b!6511664 () Bool)

(assert (=> b!6511664 (= e!3945152 e!3945148)))

(declare-fun c!1194492 () Bool)

(assert (=> b!6511664 (= c!1194492 (isEmpty!37574 (tail!12343 (unfocusZipperList!1816 zl!343))))))

(assert (= (and d!2042505 res!2674255) b!6511663))

(assert (= (and d!2042505 c!1194491) b!6511657))

(assert (= (and d!2042505 (not c!1194491)) b!6511660))

(assert (= (and b!6511660 c!1194489) b!6511658))

(assert (= (and b!6511660 (not c!1194489)) b!6511659))

(assert (= (and d!2042505 res!2674254) b!6511656))

(assert (= (and b!6511656 c!1194490) b!6511661))

(assert (= (and b!6511656 (not c!1194490)) b!6511664))

(assert (= (and b!6511664 c!1194492) b!6511662))

(assert (= (and b!6511664 (not c!1194492)) b!6511655))

(declare-fun m!7297876 () Bool)

(assert (=> b!6511655 m!7297876))

(assert (=> b!6511664 m!7297182))

(declare-fun m!7297878 () Bool)

(assert (=> b!6511664 m!7297878))

(assert (=> b!6511664 m!7297878))

(declare-fun m!7297880 () Bool)

(assert (=> b!6511664 m!7297880))

(assert (=> b!6511656 m!7297182))

(declare-fun m!7297882 () Bool)

(assert (=> b!6511656 m!7297882))

(declare-fun m!7297884 () Bool)

(assert (=> b!6511663 m!7297884))

(declare-fun m!7297886 () Bool)

(assert (=> d!2042505 m!7297886))

(assert (=> d!2042505 m!7297182))

(declare-fun m!7297888 () Bool)

(assert (=> d!2042505 m!7297888))

(declare-fun m!7297890 () Bool)

(assert (=> b!6511658 m!7297890))

(assert (=> b!6511662 m!7297182))

(declare-fun m!7297892 () Bool)

(assert (=> b!6511662 m!7297892))

(declare-fun m!7297894 () Bool)

(assert (=> b!6511661 m!7297894))

(assert (=> b!6510882 d!2042505))

(declare-fun bs!1653260 () Bool)

(declare-fun d!2042517 () Bool)

(assert (= bs!1653260 (and d!2042517 d!2042423)))

(declare-fun lambda!361365 () Int)

(assert (=> bs!1653260 (= lambda!361365 lambda!361346)))

(declare-fun bs!1653261 () Bool)

(assert (= bs!1653261 (and d!2042517 b!6510848)))

(assert (=> bs!1653261 (= lambda!361365 lambda!361300)))

(declare-fun bs!1653262 () Bool)

(assert (= bs!1653262 (and d!2042517 d!2042505)))

(assert (=> bs!1653262 (= lambda!361365 lambda!361362)))

(declare-fun bs!1653263 () Bool)

(assert (= bs!1653263 (and d!2042517 d!2042469)))

(assert (=> bs!1653263 (= lambda!361365 lambda!361354)))

(declare-fun bs!1653264 () Bool)

(assert (= bs!1653264 (and d!2042517 d!2042399)))

(assert (=> bs!1653264 (= lambda!361365 lambda!361343)))

(declare-fun lt!2394790 () List!65484)

(assert (=> d!2042517 (forall!15574 lt!2394790 lambda!361365)))

(declare-fun e!3945155 () List!65484)

(assert (=> d!2042517 (= lt!2394790 e!3945155)))

(declare-fun c!1194495 () Bool)

(assert (=> d!2042517 (= c!1194495 ((_ is Cons!65362) zl!343))))

(assert (=> d!2042517 (= (unfocusZipperList!1816 zl!343) lt!2394790)))

(declare-fun b!6511669 () Bool)

(assert (=> b!6511669 (= e!3945155 (Cons!65360 (generalisedConcat!1992 (exprs!6279 (h!71810 zl!343))) (unfocusZipperList!1816 (t!379122 zl!343))))))

(declare-fun b!6511670 () Bool)

(assert (=> b!6511670 (= e!3945155 Nil!65360)))

(assert (= (and d!2042517 c!1194495) b!6511669))

(assert (= (and d!2042517 (not c!1194495)) b!6511670))

(declare-fun m!7297896 () Bool)

(assert (=> d!2042517 m!7297896))

(assert (=> b!6511669 m!7297166))

(declare-fun m!7297898 () Bool)

(assert (=> b!6511669 m!7297898))

(assert (=> b!6510882 d!2042517))

(declare-fun d!2042519 () Bool)

(declare-fun c!1194496 () Bool)

(assert (=> d!2042519 (= c!1194496 (isEmpty!37577 (t!379121 s!2326)))))

(declare-fun e!3945156 () Bool)

(assert (=> d!2042519 (= (matchZipper!2407 lt!2394643 (t!379121 s!2326)) e!3945156)))

(declare-fun b!6511671 () Bool)

(assert (=> b!6511671 (= e!3945156 (nullableZipper!2148 lt!2394643))))

(declare-fun b!6511672 () Bool)

(assert (=> b!6511672 (= e!3945156 (matchZipper!2407 (derivationStepZipper!2361 lt!2394643 (head!13257 (t!379121 s!2326))) (tail!12342 (t!379121 s!2326))))))

(assert (= (and d!2042519 c!1194496) b!6511671))

(assert (= (and d!2042519 (not c!1194496)) b!6511672))

(assert (=> d!2042519 m!7297534))

(declare-fun m!7297900 () Bool)

(assert (=> b!6511671 m!7297900))

(assert (=> b!6511672 m!7297538))

(assert (=> b!6511672 m!7297538))

(declare-fun m!7297902 () Bool)

(assert (=> b!6511672 m!7297902))

(assert (=> b!6511672 m!7297542))

(assert (=> b!6511672 m!7297902))

(assert (=> b!6511672 m!7297542))

(declare-fun m!7297904 () Bool)

(assert (=> b!6511672 m!7297904))

(assert (=> b!6510862 d!2042519))

(declare-fun b!6511691 () Bool)

(declare-fun e!3945171 () Bool)

(declare-fun lt!2394798 () Option!16286)

(assert (=> b!6511691 (= e!3945171 (= (++!14493 (_1!36677 (get!22674 lt!2394798)) (_2!36677 (get!22674 lt!2394798))) s!2326))))

(declare-fun b!6511692 () Bool)

(declare-fun res!2674266 () Bool)

(assert (=> b!6511692 (=> (not res!2674266) (not e!3945171))))

(assert (=> b!6511692 (= res!2674266 (matchR!8578 (regOne!33302 r!7292) (_1!36677 (get!22674 lt!2394798))))))

(declare-fun b!6511693 () Bool)

(declare-fun e!3945170 () Option!16286)

(declare-fun e!3945169 () Option!16286)

(assert (=> b!6511693 (= e!3945170 e!3945169)))

(declare-fun c!1194502 () Bool)

(assert (=> b!6511693 (= c!1194502 ((_ is Nil!65361) s!2326))))

(declare-fun b!6511694 () Bool)

(declare-fun e!3945168 () Bool)

(assert (=> b!6511694 (= e!3945168 (matchR!8578 (regTwo!33302 r!7292) s!2326))))

(declare-fun b!6511695 () Bool)

(declare-fun lt!2394797 () Unit!158915)

(declare-fun lt!2394799 () Unit!158915)

(assert (=> b!6511695 (= lt!2394797 lt!2394799)))

(assert (=> b!6511695 (= (++!14493 (++!14493 Nil!65361 (Cons!65361 (h!71809 s!2326) Nil!65361)) (t!379121 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2546 (List!65485 C!33060 List!65485 List!65485) Unit!158915)

(assert (=> b!6511695 (= lt!2394799 (lemmaMoveElementToOtherListKeepsConcatEq!2546 Nil!65361 (h!71809 s!2326) (t!379121 s!2326) s!2326))))

(assert (=> b!6511695 (= e!3945169 (findConcatSeparation!2700 (regOne!33302 r!7292) (regTwo!33302 r!7292) (++!14493 Nil!65361 (Cons!65361 (h!71809 s!2326) Nil!65361)) (t!379121 s!2326) s!2326))))

(declare-fun b!6511696 () Bool)

(assert (=> b!6511696 (= e!3945170 (Some!16285 (tuple2!66749 Nil!65361 s!2326)))))

(declare-fun d!2042521 () Bool)

(declare-fun e!3945167 () Bool)

(assert (=> d!2042521 e!3945167))

(declare-fun res!2674268 () Bool)

(assert (=> d!2042521 (=> res!2674268 e!3945167)))

(assert (=> d!2042521 (= res!2674268 e!3945171)))

(declare-fun res!2674267 () Bool)

(assert (=> d!2042521 (=> (not res!2674267) (not e!3945171))))

(assert (=> d!2042521 (= res!2674267 (isDefined!12989 lt!2394798))))

(assert (=> d!2042521 (= lt!2394798 e!3945170)))

(declare-fun c!1194501 () Bool)

(assert (=> d!2042521 (= c!1194501 e!3945168)))

(declare-fun res!2674269 () Bool)

(assert (=> d!2042521 (=> (not res!2674269) (not e!3945168))))

(assert (=> d!2042521 (= res!2674269 (matchR!8578 (regOne!33302 r!7292) Nil!65361))))

(assert (=> d!2042521 (validRegex!8131 (regOne!33302 r!7292))))

(assert (=> d!2042521 (= (findConcatSeparation!2700 (regOne!33302 r!7292) (regTwo!33302 r!7292) Nil!65361 s!2326 s!2326) lt!2394798)))

(declare-fun b!6511697 () Bool)

(declare-fun res!2674270 () Bool)

(assert (=> b!6511697 (=> (not res!2674270) (not e!3945171))))

(assert (=> b!6511697 (= res!2674270 (matchR!8578 (regTwo!33302 r!7292) (_2!36677 (get!22674 lt!2394798))))))

(declare-fun b!6511698 () Bool)

(assert (=> b!6511698 (= e!3945167 (not (isDefined!12989 lt!2394798)))))

(declare-fun b!6511699 () Bool)

(assert (=> b!6511699 (= e!3945169 None!16285)))

(assert (= (and d!2042521 res!2674269) b!6511694))

(assert (= (and d!2042521 c!1194501) b!6511696))

(assert (= (and d!2042521 (not c!1194501)) b!6511693))

(assert (= (and b!6511693 c!1194502) b!6511699))

(assert (= (and b!6511693 (not c!1194502)) b!6511695))

(assert (= (and d!2042521 res!2674267) b!6511692))

(assert (= (and b!6511692 res!2674266) b!6511697))

(assert (= (and b!6511697 res!2674270) b!6511691))

(assert (= (and d!2042521 (not res!2674268)) b!6511698))

(declare-fun m!7297906 () Bool)

(assert (=> b!6511698 m!7297906))

(declare-fun m!7297908 () Bool)

(assert (=> b!6511697 m!7297908))

(declare-fun m!7297910 () Bool)

(assert (=> b!6511697 m!7297910))

(assert (=> b!6511692 m!7297908))

(declare-fun m!7297912 () Bool)

(assert (=> b!6511692 m!7297912))

(assert (=> b!6511691 m!7297908))

(declare-fun m!7297914 () Bool)

(assert (=> b!6511691 m!7297914))

(declare-fun m!7297916 () Bool)

(assert (=> b!6511694 m!7297916))

(assert (=> d!2042521 m!7297906))

(declare-fun m!7297918 () Bool)

(assert (=> d!2042521 m!7297918))

(declare-fun m!7297920 () Bool)

(assert (=> d!2042521 m!7297920))

(declare-fun m!7297922 () Bool)

(assert (=> b!6511695 m!7297922))

(assert (=> b!6511695 m!7297922))

(declare-fun m!7297924 () Bool)

(assert (=> b!6511695 m!7297924))

(declare-fun m!7297926 () Bool)

(assert (=> b!6511695 m!7297926))

(assert (=> b!6511695 m!7297922))

(declare-fun m!7297928 () Bool)

(assert (=> b!6511695 m!7297928))

(assert (=> b!6510889 d!2042521))

(declare-fun d!2042523 () Bool)

(declare-fun choose!48425 (Int) Bool)

(assert (=> d!2042523 (= (Exists!3465 lambda!361296) (choose!48425 lambda!361296))))

(declare-fun bs!1653265 () Bool)

(assert (= bs!1653265 d!2042523))

(declare-fun m!7297930 () Bool)

(assert (=> bs!1653265 m!7297930))

(assert (=> b!6510889 d!2042523))

(declare-fun bs!1653266 () Bool)

(declare-fun d!2042525 () Bool)

(assert (= bs!1653266 (and d!2042525 b!6510889)))

(declare-fun lambda!361368 () Int)

(assert (=> bs!1653266 (not (= lambda!361368 lambda!361297))))

(assert (=> bs!1653266 (= lambda!361368 lambda!361296)))

(declare-fun bs!1653267 () Bool)

(assert (= bs!1653267 (and d!2042525 b!6511563)))

(assert (=> bs!1653267 (not (= lambda!361368 lambda!361359))))

(declare-fun bs!1653268 () Bool)

(assert (= bs!1653268 (and d!2042525 b!6511423)))

(assert (=> bs!1653268 (not (= lambda!361368 lambda!361351))))

(declare-fun bs!1653269 () Bool)

(assert (= bs!1653269 (and d!2042525 b!6511430)))

(assert (=> bs!1653269 (not (= lambda!361368 lambda!361352))))

(declare-fun bs!1653270 () Bool)

(assert (= bs!1653270 (and d!2042525 b!6511556)))

(assert (=> bs!1653270 (not (= lambda!361368 lambda!361358))))

(assert (=> d!2042525 true))

(assert (=> d!2042525 true))

(assert (=> d!2042525 true))

(assert (=> d!2042525 (= (isDefined!12989 (findConcatSeparation!2700 (regOne!33302 r!7292) (regTwo!33302 r!7292) Nil!65361 s!2326 s!2326)) (Exists!3465 lambda!361368))))

(declare-fun lt!2394802 () Unit!158915)

(declare-fun choose!48426 (Regex!16395 Regex!16395 List!65485) Unit!158915)

(assert (=> d!2042525 (= lt!2394802 (choose!48426 (regOne!33302 r!7292) (regTwo!33302 r!7292) s!2326))))

(assert (=> d!2042525 (validRegex!8131 (regOne!33302 r!7292))))

(assert (=> d!2042525 (= (lemmaFindConcatSeparationEquivalentToExists!2464 (regOne!33302 r!7292) (regTwo!33302 r!7292) s!2326) lt!2394802)))

(declare-fun bs!1653271 () Bool)

(assert (= bs!1653271 d!2042525))

(assert (=> bs!1653271 m!7297240))

(declare-fun m!7297932 () Bool)

(assert (=> bs!1653271 m!7297932))

(declare-fun m!7297934 () Bool)

(assert (=> bs!1653271 m!7297934))

(assert (=> bs!1653271 m!7297240))

(assert (=> bs!1653271 m!7297242))

(assert (=> bs!1653271 m!7297920))

(assert (=> b!6510889 d!2042525))

(declare-fun d!2042527 () Bool)

(assert (=> d!2042527 (= (Exists!3465 lambda!361297) (choose!48425 lambda!361297))))

(declare-fun bs!1653272 () Bool)

(assert (= bs!1653272 d!2042527))

(declare-fun m!7297936 () Bool)

(assert (=> bs!1653272 m!7297936))

(assert (=> b!6510889 d!2042527))

(declare-fun bs!1653273 () Bool)

(declare-fun d!2042529 () Bool)

(assert (= bs!1653273 (and d!2042529 b!6510889)))

(declare-fun lambda!361373 () Int)

(assert (=> bs!1653273 (not (= lambda!361373 lambda!361297))))

(assert (=> bs!1653273 (= lambda!361373 lambda!361296)))

(declare-fun bs!1653274 () Bool)

(assert (= bs!1653274 (and d!2042529 d!2042525)))

(assert (=> bs!1653274 (= lambda!361373 lambda!361368)))

(declare-fun bs!1653275 () Bool)

(assert (= bs!1653275 (and d!2042529 b!6511563)))

(assert (=> bs!1653275 (not (= lambda!361373 lambda!361359))))

(declare-fun bs!1653276 () Bool)

(assert (= bs!1653276 (and d!2042529 b!6511423)))

(assert (=> bs!1653276 (not (= lambda!361373 lambda!361351))))

(declare-fun bs!1653277 () Bool)

(assert (= bs!1653277 (and d!2042529 b!6511430)))

(assert (=> bs!1653277 (not (= lambda!361373 lambda!361352))))

(declare-fun bs!1653278 () Bool)

(assert (= bs!1653278 (and d!2042529 b!6511556)))

(assert (=> bs!1653278 (not (= lambda!361373 lambda!361358))))

(assert (=> d!2042529 true))

(assert (=> d!2042529 true))

(assert (=> d!2042529 true))

(declare-fun lambda!361374 () Int)

(assert (=> bs!1653273 (= lambda!361374 lambda!361297)))

(assert (=> bs!1653273 (not (= lambda!361374 lambda!361296))))

(assert (=> bs!1653274 (not (= lambda!361374 lambda!361368))))

(assert (=> bs!1653275 (= lambda!361374 lambda!361359)))

(assert (=> bs!1653276 (not (= lambda!361374 lambda!361351))))

(declare-fun bs!1653279 () Bool)

(assert (= bs!1653279 d!2042529))

(assert (=> bs!1653279 (not (= lambda!361374 lambda!361373))))

(assert (=> bs!1653277 (= (and (= (regOne!33302 r!7292) (regOne!33302 lt!2394657)) (= (regTwo!33302 r!7292) (regTwo!33302 lt!2394657))) (= lambda!361374 lambda!361352))))

(assert (=> bs!1653278 (not (= lambda!361374 lambda!361358))))

(assert (=> d!2042529 true))

(assert (=> d!2042529 true))

(assert (=> d!2042529 true))

(assert (=> d!2042529 (= (Exists!3465 lambda!361373) (Exists!3465 lambda!361374))))

(declare-fun lt!2394805 () Unit!158915)

(declare-fun choose!48427 (Regex!16395 Regex!16395 List!65485) Unit!158915)

(assert (=> d!2042529 (= lt!2394805 (choose!48427 (regOne!33302 r!7292) (regTwo!33302 r!7292) s!2326))))

(assert (=> d!2042529 (validRegex!8131 (regOne!33302 r!7292))))

(assert (=> d!2042529 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2002 (regOne!33302 r!7292) (regTwo!33302 r!7292) s!2326) lt!2394805)))

(declare-fun m!7297938 () Bool)

(assert (=> bs!1653279 m!7297938))

(declare-fun m!7297940 () Bool)

(assert (=> bs!1653279 m!7297940))

(declare-fun m!7297942 () Bool)

(assert (=> bs!1653279 m!7297942))

(assert (=> bs!1653279 m!7297920))

(assert (=> b!6510889 d!2042529))

(declare-fun d!2042531 () Bool)

(declare-fun isEmpty!37578 (Option!16286) Bool)

(assert (=> d!2042531 (= (isDefined!12989 (findConcatSeparation!2700 (regOne!33302 r!7292) (regTwo!33302 r!7292) Nil!65361 s!2326 s!2326)) (not (isEmpty!37578 (findConcatSeparation!2700 (regOne!33302 r!7292) (regTwo!33302 r!7292) Nil!65361 s!2326 s!2326))))))

(declare-fun bs!1653280 () Bool)

(assert (= bs!1653280 d!2042531))

(assert (=> bs!1653280 m!7297240))

(declare-fun m!7297944 () Bool)

(assert (=> bs!1653280 m!7297944))

(assert (=> b!6510889 d!2042531))

(declare-fun d!2042533 () Bool)

(declare-fun c!1194503 () Bool)

(assert (=> d!2042533 (= c!1194503 (isEmpty!37577 s!2326))))

(declare-fun e!3945178 () Bool)

(assert (=> d!2042533 (= (matchZipper!2407 z!1189 s!2326) e!3945178)))

(declare-fun b!6511712 () Bool)

(assert (=> b!6511712 (= e!3945178 (nullableZipper!2148 z!1189))))

(declare-fun b!6511713 () Bool)

(assert (=> b!6511713 (= e!3945178 (matchZipper!2407 (derivationStepZipper!2361 z!1189 (head!13257 s!2326)) (tail!12342 s!2326)))))

(assert (= (and d!2042533 c!1194503) b!6511712))

(assert (= (and d!2042533 (not c!1194503)) b!6511713))

(assert (=> d!2042533 m!7297644))

(declare-fun m!7297946 () Bool)

(assert (=> b!6511712 m!7297946))

(assert (=> b!6511713 m!7297636))

(assert (=> b!6511713 m!7297636))

(declare-fun m!7297948 () Bool)

(assert (=> b!6511713 m!7297948))

(assert (=> b!6511713 m!7297640))

(assert (=> b!6511713 m!7297948))

(assert (=> b!6511713 m!7297640))

(declare-fun m!7297950 () Bool)

(assert (=> b!6511713 m!7297950))

(assert (=> b!6510870 d!2042533))

(declare-fun d!2042535 () Bool)

(declare-fun e!3945181 () Bool)

(assert (=> d!2042535 (= (matchZipper!2407 ((_ map or) lt!2394643 lt!2394658) (t!379121 s!2326)) e!3945181)))

(declare-fun res!2674285 () Bool)

(assert (=> d!2042535 (=> res!2674285 e!3945181)))

(assert (=> d!2042535 (= res!2674285 (matchZipper!2407 lt!2394643 (t!379121 s!2326)))))

(declare-fun lt!2394808 () Unit!158915)

(declare-fun choose!48428 ((InoxSet Context!11558) (InoxSet Context!11558) List!65485) Unit!158915)

(assert (=> d!2042535 (= lt!2394808 (choose!48428 lt!2394643 lt!2394658 (t!379121 s!2326)))))

(assert (=> d!2042535 (= (lemmaZipperConcatMatchesSameAsBothZippers!1226 lt!2394643 lt!2394658 (t!379121 s!2326)) lt!2394808)))

(declare-fun b!6511716 () Bool)

(assert (=> b!6511716 (= e!3945181 (matchZipper!2407 lt!2394658 (t!379121 s!2326)))))

(assert (= (and d!2042535 (not res!2674285)) b!6511716))

(assert (=> d!2042535 m!7297188))

(assert (=> d!2042535 m!7297116))

(declare-fun m!7297952 () Bool)

(assert (=> d!2042535 m!7297952))

(assert (=> b!6511716 m!7297178))

(assert (=> b!6510865 d!2042535))

(assert (=> b!6510865 d!2042519))

(declare-fun d!2042537 () Bool)

(declare-fun c!1194504 () Bool)

(assert (=> d!2042537 (= c!1194504 (isEmpty!37577 (t!379121 s!2326)))))

(declare-fun e!3945182 () Bool)

(assert (=> d!2042537 (= (matchZipper!2407 ((_ map or) lt!2394643 lt!2394658) (t!379121 s!2326)) e!3945182)))

(declare-fun b!6511717 () Bool)

(assert (=> b!6511717 (= e!3945182 (nullableZipper!2148 ((_ map or) lt!2394643 lt!2394658)))))

(declare-fun b!6511718 () Bool)

(assert (=> b!6511718 (= e!3945182 (matchZipper!2407 (derivationStepZipper!2361 ((_ map or) lt!2394643 lt!2394658) (head!13257 (t!379121 s!2326))) (tail!12342 (t!379121 s!2326))))))

(assert (= (and d!2042537 c!1194504) b!6511717))

(assert (= (and d!2042537 (not c!1194504)) b!6511718))

(assert (=> d!2042537 m!7297534))

(declare-fun m!7297954 () Bool)

(assert (=> b!6511717 m!7297954))

(assert (=> b!6511718 m!7297538))

(assert (=> b!6511718 m!7297538))

(declare-fun m!7297956 () Bool)

(assert (=> b!6511718 m!7297956))

(assert (=> b!6511718 m!7297542))

(assert (=> b!6511718 m!7297956))

(assert (=> b!6511718 m!7297542))

(declare-fun m!7297958 () Bool)

(assert (=> b!6511718 m!7297958))

(assert (=> b!6510865 d!2042537))

(assert (=> b!6510887 d!2042385))

(declare-fun d!2042539 () Bool)

(declare-fun e!3945185 () Bool)

(assert (=> d!2042539 e!3945185))

(declare-fun res!2674288 () Bool)

(assert (=> d!2042539 (=> (not res!2674288) (not e!3945185))))

(declare-fun lt!2394811 () List!65486)

(declare-fun noDuplicate!2210 (List!65486) Bool)

(assert (=> d!2042539 (= res!2674288 (noDuplicate!2210 lt!2394811))))

(declare-fun choose!48429 ((InoxSet Context!11558)) List!65486)

(assert (=> d!2042539 (= lt!2394811 (choose!48429 z!1189))))

(assert (=> d!2042539 (= (toList!10179 z!1189) lt!2394811)))

(declare-fun b!6511721 () Bool)

(declare-fun content!12494 (List!65486) (InoxSet Context!11558))

(assert (=> b!6511721 (= e!3945185 (= (content!12494 lt!2394811) z!1189))))

(assert (= (and d!2042539 res!2674288) b!6511721))

(declare-fun m!7297960 () Bool)

(assert (=> d!2042539 m!7297960))

(declare-fun m!7297962 () Bool)

(assert (=> d!2042539 m!7297962))

(declare-fun m!7297964 () Bool)

(assert (=> b!6511721 m!7297964))

(assert (=> b!6510866 d!2042539))

(declare-fun bs!1653281 () Bool)

(declare-fun d!2042541 () Bool)

(assert (= bs!1653281 (and d!2042541 d!2042423)))

(declare-fun lambda!361377 () Int)

(assert (=> bs!1653281 (= lambda!361377 lambda!361346)))

(declare-fun bs!1653282 () Bool)

(assert (= bs!1653282 (and d!2042541 d!2042517)))

(assert (=> bs!1653282 (= lambda!361377 lambda!361365)))

(declare-fun bs!1653283 () Bool)

(assert (= bs!1653283 (and d!2042541 b!6510848)))

(assert (=> bs!1653283 (= lambda!361377 lambda!361300)))

(declare-fun bs!1653284 () Bool)

(assert (= bs!1653284 (and d!2042541 d!2042505)))

(assert (=> bs!1653284 (= lambda!361377 lambda!361362)))

(declare-fun bs!1653285 () Bool)

(assert (= bs!1653285 (and d!2042541 d!2042469)))

(assert (=> bs!1653285 (= lambda!361377 lambda!361354)))

(declare-fun bs!1653286 () Bool)

(assert (= bs!1653286 (and d!2042541 d!2042399)))

(assert (=> bs!1653286 (= lambda!361377 lambda!361343)))

(assert (=> d!2042541 (matchZipper!2407 (store ((as const (Array Context!11558 Bool)) false) (Context!11559 (++!14492 (exprs!6279 lt!2394645) (exprs!6279 lt!2394648))) true) (++!14493 (_1!36677 lt!2394672) (_2!36677 lt!2394672)))))

(declare-fun lt!2394817 () Unit!158915)

(assert (=> d!2042541 (= lt!2394817 (lemmaConcatPreservesForall!368 (exprs!6279 lt!2394645) (exprs!6279 lt!2394648) lambda!361377))))

(declare-fun lt!2394816 () Unit!158915)

(declare-fun choose!48430 (Context!11558 Context!11558 List!65485 List!65485) Unit!158915)

(assert (=> d!2042541 (= lt!2394816 (choose!48430 lt!2394645 lt!2394648 (_1!36677 lt!2394672) (_2!36677 lt!2394672)))))

(assert (=> d!2042541 (matchZipper!2407 (store ((as const (Array Context!11558 Bool)) false) lt!2394645 true) (_1!36677 lt!2394672))))

(assert (=> d!2042541 (= (lemmaConcatenateContextMatchesConcatOfStrings!176 lt!2394645 lt!2394648 (_1!36677 lt!2394672) (_2!36677 lt!2394672)) lt!2394816)))

(declare-fun bs!1653287 () Bool)

(assert (= bs!1653287 d!2042541))

(declare-fun m!7297966 () Bool)

(assert (=> bs!1653287 m!7297966))

(declare-fun m!7297968 () Bool)

(assert (=> bs!1653287 m!7297968))

(assert (=> bs!1653287 m!7297224))

(declare-fun m!7297970 () Bool)

(assert (=> bs!1653287 m!7297970))

(assert (=> bs!1653287 m!7297206))

(declare-fun m!7297972 () Bool)

(assert (=> bs!1653287 m!7297972))

(assert (=> bs!1653287 m!7297224))

(declare-fun m!7297974 () Bool)

(assert (=> bs!1653287 m!7297974))

(assert (=> bs!1653287 m!7297970))

(assert (=> bs!1653287 m!7297206))

(declare-fun m!7297976 () Bool)

(assert (=> bs!1653287 m!7297976))

(assert (=> b!6510847 d!2042541))

(declare-fun d!2042543 () Bool)

(declare-fun c!1194505 () Bool)

(assert (=> d!2042543 (= c!1194505 (isEmpty!37577 lt!2394663))))

(declare-fun e!3945186 () Bool)

(assert (=> d!2042543 (= (matchZipper!2407 (store ((as const (Array Context!11558 Bool)) false) (Context!11559 (++!14492 lt!2394660 lt!2394644)) true) lt!2394663) e!3945186)))

(declare-fun b!6511722 () Bool)

(assert (=> b!6511722 (= e!3945186 (nullableZipper!2148 (store ((as const (Array Context!11558 Bool)) false) (Context!11559 (++!14492 lt!2394660 lt!2394644)) true)))))

(declare-fun b!6511723 () Bool)

(assert (=> b!6511723 (= e!3945186 (matchZipper!2407 (derivationStepZipper!2361 (store ((as const (Array Context!11558 Bool)) false) (Context!11559 (++!14492 lt!2394660 lt!2394644)) true) (head!13257 lt!2394663)) (tail!12342 lt!2394663)))))

(assert (= (and d!2042543 c!1194505) b!6511722))

(assert (= (and d!2042543 (not c!1194505)) b!6511723))

(declare-fun m!7297978 () Bool)

(assert (=> d!2042543 m!7297978))

(assert (=> b!6511722 m!7297136))

(declare-fun m!7297980 () Bool)

(assert (=> b!6511722 m!7297980))

(declare-fun m!7297982 () Bool)

(assert (=> b!6511723 m!7297982))

(assert (=> b!6511723 m!7297136))

(assert (=> b!6511723 m!7297982))

(declare-fun m!7297984 () Bool)

(assert (=> b!6511723 m!7297984))

(declare-fun m!7297986 () Bool)

(assert (=> b!6511723 m!7297986))

(assert (=> b!6511723 m!7297984))

(assert (=> b!6511723 m!7297986))

(declare-fun m!7297988 () Bool)

(assert (=> b!6511723 m!7297988))

(assert (=> b!6510847 d!2042543))

(declare-fun b!6511734 () Bool)

(declare-fun res!2674294 () Bool)

(declare-fun e!3945191 () Bool)

(assert (=> b!6511734 (=> (not res!2674294) (not e!3945191))))

(declare-fun lt!2394820 () List!65484)

(declare-fun size!40457 (List!65484) Int)

(assert (=> b!6511734 (= res!2674294 (= (size!40457 lt!2394820) (+ (size!40457 lt!2394660) (size!40457 lt!2394644))))))

(declare-fun b!6511735 () Bool)

(assert (=> b!6511735 (= e!3945191 (or (not (= lt!2394644 Nil!65360)) (= lt!2394820 lt!2394660)))))

(declare-fun b!6511732 () Bool)

(declare-fun e!3945192 () List!65484)

(assert (=> b!6511732 (= e!3945192 lt!2394644)))

(declare-fun b!6511733 () Bool)

(assert (=> b!6511733 (= e!3945192 (Cons!65360 (h!71808 lt!2394660) (++!14492 (t!379120 lt!2394660) lt!2394644)))))

(declare-fun d!2042545 () Bool)

(assert (=> d!2042545 e!3945191))

(declare-fun res!2674293 () Bool)

(assert (=> d!2042545 (=> (not res!2674293) (not e!3945191))))

(declare-fun content!12495 (List!65484) (InoxSet Regex!16395))

(assert (=> d!2042545 (= res!2674293 (= (content!12495 lt!2394820) ((_ map or) (content!12495 lt!2394660) (content!12495 lt!2394644))))))

(assert (=> d!2042545 (= lt!2394820 e!3945192)))

(declare-fun c!1194508 () Bool)

(assert (=> d!2042545 (= c!1194508 ((_ is Nil!65360) lt!2394660))))

(assert (=> d!2042545 (= (++!14492 lt!2394660 lt!2394644) lt!2394820)))

(assert (= (and d!2042545 c!1194508) b!6511732))

(assert (= (and d!2042545 (not c!1194508)) b!6511733))

(assert (= (and d!2042545 res!2674293) b!6511734))

(assert (= (and b!6511734 res!2674294) b!6511735))

(declare-fun m!7297990 () Bool)

(assert (=> b!6511734 m!7297990))

(declare-fun m!7297992 () Bool)

(assert (=> b!6511734 m!7297992))

(declare-fun m!7297994 () Bool)

(assert (=> b!6511734 m!7297994))

(declare-fun m!7297996 () Bool)

(assert (=> b!6511733 m!7297996))

(declare-fun m!7297998 () Bool)

(assert (=> d!2042545 m!7297998))

(declare-fun m!7298000 () Bool)

(assert (=> d!2042545 m!7298000))

(declare-fun m!7298002 () Bool)

(assert (=> d!2042545 m!7298002))

(assert (=> b!6510847 d!2042545))

(declare-fun d!2042547 () Bool)

(assert (=> d!2042547 (forall!15574 (++!14492 lt!2394660 lt!2394644) lambda!361300)))

(declare-fun lt!2394823 () Unit!158915)

(declare-fun choose!48431 (List!65484 List!65484 Int) Unit!158915)

(assert (=> d!2042547 (= lt!2394823 (choose!48431 lt!2394660 lt!2394644 lambda!361300))))

(assert (=> d!2042547 (forall!15574 lt!2394660 lambda!361300)))

(assert (=> d!2042547 (= (lemmaConcatPreservesForall!368 lt!2394660 lt!2394644 lambda!361300) lt!2394823)))

(declare-fun bs!1653288 () Bool)

(assert (= bs!1653288 d!2042547))

(assert (=> bs!1653288 m!7297128))

(assert (=> bs!1653288 m!7297128))

(declare-fun m!7298004 () Bool)

(assert (=> bs!1653288 m!7298004))

(declare-fun m!7298006 () Bool)

(assert (=> bs!1653288 m!7298006))

(declare-fun m!7298008 () Bool)

(assert (=> bs!1653288 m!7298008))

(assert (=> b!6510847 d!2042547))

(declare-fun b!6511736 () Bool)

(declare-fun e!3945198 () Bool)

(declare-fun e!3945197 () Bool)

(assert (=> b!6511736 (= e!3945198 e!3945197)))

(declare-fun c!1194510 () Bool)

(assert (=> b!6511736 (= c!1194510 ((_ is Star!16395) (reg!16724 (regOne!33302 r!7292))))))

(declare-fun b!6511737 () Bool)

(declare-fun res!2674297 () Bool)

(declare-fun e!3945194 () Bool)

(assert (=> b!6511737 (=> (not res!2674297) (not e!3945194))))

(declare-fun call!564416 () Bool)

(assert (=> b!6511737 (= res!2674297 call!564416)))

(declare-fun e!3945196 () Bool)

(assert (=> b!6511737 (= e!3945196 e!3945194)))

(declare-fun b!6511738 () Bool)

(declare-fun call!564415 () Bool)

(assert (=> b!6511738 (= e!3945194 call!564415)))

(declare-fun b!6511739 () Bool)

(declare-fun e!3945193 () Bool)

(declare-fun call!564417 () Bool)

(assert (=> b!6511739 (= e!3945193 call!564417)))

(declare-fun bm!564410 () Bool)

(assert (=> bm!564410 (= call!564415 call!564417)))

(declare-fun b!6511740 () Bool)

(assert (=> b!6511740 (= e!3945197 e!3945196)))

(declare-fun c!1194509 () Bool)

(assert (=> b!6511740 (= c!1194509 ((_ is Union!16395) (reg!16724 (regOne!33302 r!7292))))))

(declare-fun b!6511741 () Bool)

(assert (=> b!6511741 (= e!3945197 e!3945193)))

(declare-fun res!2674299 () Bool)

(assert (=> b!6511741 (= res!2674299 (not (nullable!6388 (reg!16724 (reg!16724 (regOne!33302 r!7292))))))))

(assert (=> b!6511741 (=> (not res!2674299) (not e!3945193))))

(declare-fun b!6511742 () Bool)

(declare-fun res!2674298 () Bool)

(declare-fun e!3945199 () Bool)

(assert (=> b!6511742 (=> res!2674298 e!3945199)))

(assert (=> b!6511742 (= res!2674298 (not ((_ is Concat!25240) (reg!16724 (regOne!33302 r!7292)))))))

(assert (=> b!6511742 (= e!3945196 e!3945199)))

(declare-fun bm!564411 () Bool)

(assert (=> bm!564411 (= call!564416 (validRegex!8131 (ite c!1194509 (regOne!33303 (reg!16724 (regOne!33302 r!7292))) (regOne!33302 (reg!16724 (regOne!33302 r!7292))))))))

(declare-fun d!2042549 () Bool)

(declare-fun res!2674296 () Bool)

(assert (=> d!2042549 (=> res!2674296 e!3945198)))

(assert (=> d!2042549 (= res!2674296 ((_ is ElementMatch!16395) (reg!16724 (regOne!33302 r!7292))))))

(assert (=> d!2042549 (= (validRegex!8131 (reg!16724 (regOne!33302 r!7292))) e!3945198)))

(declare-fun bm!564412 () Bool)

(assert (=> bm!564412 (= call!564417 (validRegex!8131 (ite c!1194510 (reg!16724 (reg!16724 (regOne!33302 r!7292))) (ite c!1194509 (regTwo!33303 (reg!16724 (regOne!33302 r!7292))) (regTwo!33302 (reg!16724 (regOne!33302 r!7292)))))))))

(declare-fun b!6511743 () Bool)

(declare-fun e!3945195 () Bool)

(assert (=> b!6511743 (= e!3945199 e!3945195)))

(declare-fun res!2674295 () Bool)

(assert (=> b!6511743 (=> (not res!2674295) (not e!3945195))))

(assert (=> b!6511743 (= res!2674295 call!564416)))

(declare-fun b!6511744 () Bool)

(assert (=> b!6511744 (= e!3945195 call!564415)))

(assert (= (and d!2042549 (not res!2674296)) b!6511736))

(assert (= (and b!6511736 c!1194510) b!6511741))

(assert (= (and b!6511736 (not c!1194510)) b!6511740))

(assert (= (and b!6511741 res!2674299) b!6511739))

(assert (= (and b!6511740 c!1194509) b!6511737))

(assert (= (and b!6511740 (not c!1194509)) b!6511742))

(assert (= (and b!6511737 res!2674297) b!6511738))

(assert (= (and b!6511742 (not res!2674298)) b!6511743))

(assert (= (and b!6511743 res!2674295) b!6511744))

(assert (= (or b!6511738 b!6511744) bm!564410))

(assert (= (or b!6511737 b!6511743) bm!564411))

(assert (= (or b!6511739 bm!564410) bm!564412))

(declare-fun m!7298010 () Bool)

(assert (=> b!6511741 m!7298010))

(declare-fun m!7298012 () Bool)

(assert (=> bm!564411 m!7298012))

(declare-fun m!7298014 () Bool)

(assert (=> bm!564412 m!7298014))

(assert (=> b!6510847 d!2042549))

(declare-fun d!2042551 () Bool)

(declare-fun c!1194511 () Bool)

(assert (=> d!2042551 (= c!1194511 (isEmpty!37577 (_1!36677 lt!2394672)))))

(declare-fun e!3945200 () Bool)

(assert (=> d!2042551 (= (matchZipper!2407 lt!2394650 (_1!36677 lt!2394672)) e!3945200)))

(declare-fun b!6511745 () Bool)

(assert (=> b!6511745 (= e!3945200 (nullableZipper!2148 lt!2394650))))

(declare-fun b!6511746 () Bool)

(assert (=> b!6511746 (= e!3945200 (matchZipper!2407 (derivationStepZipper!2361 lt!2394650 (head!13257 (_1!36677 lt!2394672))) (tail!12342 (_1!36677 lt!2394672))))))

(assert (= (and d!2042551 c!1194511) b!6511745))

(assert (= (and d!2042551 (not c!1194511)) b!6511746))

(declare-fun m!7298016 () Bool)

(assert (=> d!2042551 m!7298016))

(declare-fun m!7298018 () Bool)

(assert (=> b!6511745 m!7298018))

(declare-fun m!7298020 () Bool)

(assert (=> b!6511746 m!7298020))

(assert (=> b!6511746 m!7298020))

(declare-fun m!7298022 () Bool)

(assert (=> b!6511746 m!7298022))

(declare-fun m!7298024 () Bool)

(assert (=> b!6511746 m!7298024))

(assert (=> b!6511746 m!7298022))

(assert (=> b!6511746 m!7298024))

(declare-fun m!7298026 () Bool)

(assert (=> b!6511746 m!7298026))

(assert (=> b!6510888 d!2042551))

(declare-fun b!6511765 () Bool)

(declare-fun e!3945215 () Option!16286)

(assert (=> b!6511765 (= e!3945215 None!16285)))

(declare-fun b!6511766 () Bool)

(declare-fun e!3945212 () Option!16286)

(assert (=> b!6511766 (= e!3945212 e!3945215)))

(declare-fun c!1194517 () Bool)

(assert (=> b!6511766 (= c!1194517 ((_ is Nil!65361) s!2326))))

(declare-fun b!6511767 () Bool)

(declare-fun e!3945214 () Bool)

(declare-fun lt!2394832 () Option!16286)

(assert (=> b!6511767 (= e!3945214 (= (++!14493 (_1!36677 (get!22674 lt!2394832)) (_2!36677 (get!22674 lt!2394832))) s!2326))))

(declare-fun d!2042553 () Bool)

(declare-fun e!3945213 () Bool)

(assert (=> d!2042553 e!3945213))

(declare-fun res!2674313 () Bool)

(assert (=> d!2042553 (=> res!2674313 e!3945213)))

(assert (=> d!2042553 (= res!2674313 e!3945214)))

(declare-fun res!2674311 () Bool)

(assert (=> d!2042553 (=> (not res!2674311) (not e!3945214))))

(assert (=> d!2042553 (= res!2674311 (isDefined!12989 lt!2394832))))

(assert (=> d!2042553 (= lt!2394832 e!3945212)))

(declare-fun c!1194516 () Bool)

(declare-fun e!3945211 () Bool)

(assert (=> d!2042553 (= c!1194516 e!3945211)))

(declare-fun res!2674314 () Bool)

(assert (=> d!2042553 (=> (not res!2674314) (not e!3945211))))

(assert (=> d!2042553 (= res!2674314 (matchZipper!2407 lt!2394650 Nil!65361))))

(assert (=> d!2042553 (= (++!14493 Nil!65361 s!2326) s!2326)))

(assert (=> d!2042553 (= (findConcatSeparationZippers!160 lt!2394650 lt!2394667 Nil!65361 s!2326 s!2326) lt!2394832)))

(declare-fun b!6511768 () Bool)

(declare-fun lt!2394831 () Unit!158915)

(declare-fun lt!2394830 () Unit!158915)

(assert (=> b!6511768 (= lt!2394831 lt!2394830)))

(assert (=> b!6511768 (= (++!14493 (++!14493 Nil!65361 (Cons!65361 (h!71809 s!2326) Nil!65361)) (t!379121 s!2326)) s!2326)))

(assert (=> b!6511768 (= lt!2394830 (lemmaMoveElementToOtherListKeepsConcatEq!2546 Nil!65361 (h!71809 s!2326) (t!379121 s!2326) s!2326))))

(assert (=> b!6511768 (= e!3945215 (findConcatSeparationZippers!160 lt!2394650 lt!2394667 (++!14493 Nil!65361 (Cons!65361 (h!71809 s!2326) Nil!65361)) (t!379121 s!2326) s!2326))))

(declare-fun b!6511769 () Bool)

(assert (=> b!6511769 (= e!3945211 (matchZipper!2407 lt!2394667 s!2326))))

(declare-fun b!6511770 () Bool)

(declare-fun res!2674310 () Bool)

(assert (=> b!6511770 (=> (not res!2674310) (not e!3945214))))

(assert (=> b!6511770 (= res!2674310 (matchZipper!2407 lt!2394667 (_2!36677 (get!22674 lt!2394832))))))

(declare-fun b!6511771 () Bool)

(declare-fun res!2674312 () Bool)

(assert (=> b!6511771 (=> (not res!2674312) (not e!3945214))))

(assert (=> b!6511771 (= res!2674312 (matchZipper!2407 lt!2394650 (_1!36677 (get!22674 lt!2394832))))))

(declare-fun b!6511772 () Bool)

(assert (=> b!6511772 (= e!3945212 (Some!16285 (tuple2!66749 Nil!65361 s!2326)))))

(declare-fun b!6511773 () Bool)

(assert (=> b!6511773 (= e!3945213 (not (isDefined!12989 lt!2394832)))))

(assert (= (and d!2042553 res!2674314) b!6511769))

(assert (= (and d!2042553 c!1194516) b!6511772))

(assert (= (and d!2042553 (not c!1194516)) b!6511766))

(assert (= (and b!6511766 c!1194517) b!6511765))

(assert (= (and b!6511766 (not c!1194517)) b!6511768))

(assert (= (and d!2042553 res!2674311) b!6511771))

(assert (= (and b!6511771 res!2674312) b!6511770))

(assert (= (and b!6511770 res!2674310) b!6511767))

(assert (= (and d!2042553 (not res!2674313)) b!6511773))

(declare-fun m!7298028 () Bool)

(assert (=> b!6511770 m!7298028))

(declare-fun m!7298030 () Bool)

(assert (=> b!6511770 m!7298030))

(assert (=> b!6511771 m!7298028))

(declare-fun m!7298032 () Bool)

(assert (=> b!6511771 m!7298032))

(assert (=> b!6511768 m!7297922))

(assert (=> b!6511768 m!7297922))

(assert (=> b!6511768 m!7297924))

(assert (=> b!6511768 m!7297926))

(assert (=> b!6511768 m!7297922))

(declare-fun m!7298034 () Bool)

(assert (=> b!6511768 m!7298034))

(declare-fun m!7298036 () Bool)

(assert (=> d!2042553 m!7298036))

(declare-fun m!7298038 () Bool)

(assert (=> d!2042553 m!7298038))

(declare-fun m!7298040 () Bool)

(assert (=> d!2042553 m!7298040))

(assert (=> b!6511767 m!7298028))

(declare-fun m!7298042 () Bool)

(assert (=> b!6511767 m!7298042))

(declare-fun m!7298044 () Bool)

(assert (=> b!6511769 m!7298044))

(assert (=> b!6511773 m!7298036))

(assert (=> b!6510867 d!2042553))

(declare-fun d!2042555 () Bool)

(assert (=> d!2042555 (= (isDefined!12989 lt!2394676) (not (isEmpty!37578 lt!2394676)))))

(declare-fun bs!1653289 () Bool)

(assert (= bs!1653289 d!2042555))

(declare-fun m!7298046 () Bool)

(assert (=> bs!1653289 m!7298046))

(assert (=> b!6510867 d!2042555))

(declare-fun d!2042557 () Bool)

(assert (=> d!2042557 (= (get!22674 lt!2394676) (v!52464 lt!2394676))))

(assert (=> b!6510867 d!2042557))

(declare-fun d!2042559 () Bool)

(assert (=> d!2042559 (isDefined!12989 (findConcatSeparationZippers!160 lt!2394650 (store ((as const (Array Context!11558 Bool)) false) lt!2394648 true) Nil!65361 s!2326 s!2326))))

(declare-fun lt!2394835 () Unit!158915)

(declare-fun choose!48432 ((InoxSet Context!11558) Context!11558 List!65485) Unit!158915)

(assert (=> d!2042559 (= lt!2394835 (choose!48432 lt!2394650 lt!2394648 s!2326))))

(assert (=> d!2042559 (matchZipper!2407 (appendTo!156 lt!2394650 lt!2394648) s!2326)))

(assert (=> d!2042559 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!160 lt!2394650 lt!2394648 s!2326) lt!2394835)))

(declare-fun bs!1653290 () Bool)

(assert (= bs!1653290 d!2042559))

(assert (=> bs!1653290 m!7297126))

(declare-fun m!7298048 () Bool)

(assert (=> bs!1653290 m!7298048))

(declare-fun m!7298050 () Bool)

(assert (=> bs!1653290 m!7298050))

(assert (=> bs!1653290 m!7297222))

(assert (=> bs!1653290 m!7297126))

(declare-fun m!7298052 () Bool)

(assert (=> bs!1653290 m!7298052))

(declare-fun m!7298054 () Bool)

(assert (=> bs!1653290 m!7298054))

(assert (=> bs!1653290 m!7297222))

(assert (=> bs!1653290 m!7298052))

(assert (=> b!6510867 d!2042559))

(declare-fun d!2042561 () Bool)

(declare-fun e!3945220 () Bool)

(assert (=> d!2042561 e!3945220))

(declare-fun res!2674320 () Bool)

(assert (=> d!2042561 (=> (not res!2674320) (not e!3945220))))

(declare-fun lt!2394838 () List!65485)

(declare-fun content!12496 (List!65485) (InoxSet C!33060))

(assert (=> d!2042561 (= res!2674320 (= (content!12496 lt!2394838) ((_ map or) (content!12496 (_1!36677 lt!2394672)) (content!12496 (_2!36677 lt!2394672)))))))

(declare-fun e!3945221 () List!65485)

(assert (=> d!2042561 (= lt!2394838 e!3945221)))

(declare-fun c!1194520 () Bool)

(assert (=> d!2042561 (= c!1194520 ((_ is Nil!65361) (_1!36677 lt!2394672)))))

(assert (=> d!2042561 (= (++!14493 (_1!36677 lt!2394672) (_2!36677 lt!2394672)) lt!2394838)))

(declare-fun b!6511785 () Bool)

(assert (=> b!6511785 (= e!3945220 (or (not (= (_2!36677 lt!2394672) Nil!65361)) (= lt!2394838 (_1!36677 lt!2394672))))))

(declare-fun b!6511784 () Bool)

(declare-fun res!2674319 () Bool)

(assert (=> b!6511784 (=> (not res!2674319) (not e!3945220))))

(declare-fun size!40458 (List!65485) Int)

(assert (=> b!6511784 (= res!2674319 (= (size!40458 lt!2394838) (+ (size!40458 (_1!36677 lt!2394672)) (size!40458 (_2!36677 lt!2394672)))))))

(declare-fun b!6511783 () Bool)

(assert (=> b!6511783 (= e!3945221 (Cons!65361 (h!71809 (_1!36677 lt!2394672)) (++!14493 (t!379121 (_1!36677 lt!2394672)) (_2!36677 lt!2394672))))))

(declare-fun b!6511782 () Bool)

(assert (=> b!6511782 (= e!3945221 (_2!36677 lt!2394672))))

(assert (= (and d!2042561 c!1194520) b!6511782))

(assert (= (and d!2042561 (not c!1194520)) b!6511783))

(assert (= (and d!2042561 res!2674320) b!6511784))

(assert (= (and b!6511784 res!2674319) b!6511785))

(declare-fun m!7298056 () Bool)

(assert (=> d!2042561 m!7298056))

(declare-fun m!7298058 () Bool)

(assert (=> d!2042561 m!7298058))

(declare-fun m!7298060 () Bool)

(assert (=> d!2042561 m!7298060))

(declare-fun m!7298062 () Bool)

(assert (=> b!6511784 m!7298062))

(declare-fun m!7298064 () Bool)

(assert (=> b!6511784 m!7298064))

(declare-fun m!7298066 () Bool)

(assert (=> b!6511784 m!7298066))

(declare-fun m!7298068 () Bool)

(assert (=> b!6511783 m!7298068))

(assert (=> b!6510867 d!2042561))

(assert (=> b!6510848 d!2042547))

(declare-fun d!2042563 () Bool)

(declare-fun dynLambda!25973 (Int Context!11558) Context!11558)

(assert (=> d!2042563 (= (map!14901 lt!2394650 lambda!361299) (store ((as const (Array Context!11558 Bool)) false) (dynLambda!25973 lambda!361299 lt!2394645) true))))

(declare-fun lt!2394841 () Unit!158915)

(declare-fun choose!48433 ((InoxSet Context!11558) Context!11558 Int) Unit!158915)

(assert (=> d!2042563 (= lt!2394841 (choose!48433 lt!2394650 lt!2394645 lambda!361299))))

(assert (=> d!2042563 (= lt!2394650 (store ((as const (Array Context!11558 Bool)) false) lt!2394645 true))))

(assert (=> d!2042563 (= (lemmaMapOnSingletonSet!178 lt!2394650 lt!2394645 lambda!361299) lt!2394841)))

(declare-fun b_lambda!246509 () Bool)

(assert (=> (not b_lambda!246509) (not d!2042563)))

(declare-fun bs!1653291 () Bool)

(assert (= bs!1653291 d!2042563))

(declare-fun m!7298070 () Bool)

(assert (=> bs!1653291 m!7298070))

(declare-fun m!7298072 () Bool)

(assert (=> bs!1653291 m!7298072))

(declare-fun m!7298074 () Bool)

(assert (=> bs!1653291 m!7298074))

(assert (=> bs!1653291 m!7298072))

(assert (=> bs!1653291 m!7297224))

(assert (=> bs!1653291 m!7297132))

(assert (=> b!6510848 d!2042563))

(declare-fun bs!1653292 () Bool)

(declare-fun d!2042565 () Bool)

(assert (= bs!1653292 (and d!2042565 b!6510848)))

(declare-fun lambda!361382 () Int)

(assert (=> bs!1653292 (= (= (exprs!6279 lt!2394648) lt!2394644) (= lambda!361382 lambda!361299))))

(assert (=> d!2042565 true))

(assert (=> d!2042565 (= (appendTo!156 lt!2394650 lt!2394648) (map!14901 lt!2394650 lambda!361382))))

(declare-fun bs!1653293 () Bool)

(assert (= bs!1653293 d!2042565))

(declare-fun m!7298076 () Bool)

(assert (=> bs!1653293 m!7298076))

(assert (=> b!6510848 d!2042565))

(declare-fun d!2042567 () Bool)

(declare-fun choose!48434 ((InoxSet Context!11558) Int) (InoxSet Context!11558))

(assert (=> d!2042567 (= (map!14901 lt!2394650 lambda!361299) (choose!48434 lt!2394650 lambda!361299))))

(declare-fun bs!1653294 () Bool)

(assert (= bs!1653294 d!2042567))

(declare-fun m!7298078 () Bool)

(assert (=> bs!1653294 m!7298078))

(assert (=> b!6510848 d!2042567))

(assert (=> b!6510848 d!2042545))

(declare-fun condSetEmpty!44431 () Bool)

(assert (=> setNonEmpty!44425 (= condSetEmpty!44431 (= setRest!44425 ((as const (Array Context!11558 Bool)) false)))))

(declare-fun setRes!44431 () Bool)

(assert (=> setNonEmpty!44425 (= tp!1800101 setRes!44431)))

(declare-fun setIsEmpty!44431 () Bool)

(assert (=> setIsEmpty!44431 setRes!44431))

(declare-fun setElem!44431 () Context!11558)

(declare-fun tp!1800166 () Bool)

(declare-fun e!3945224 () Bool)

(declare-fun setNonEmpty!44431 () Bool)

(assert (=> setNonEmpty!44431 (= setRes!44431 (and tp!1800166 (inv!84234 setElem!44431) e!3945224))))

(declare-fun setRest!44431 () (InoxSet Context!11558))

(assert (=> setNonEmpty!44431 (= setRest!44425 ((_ map or) (store ((as const (Array Context!11558 Bool)) false) setElem!44431 true) setRest!44431))))

(declare-fun b!6511792 () Bool)

(declare-fun tp!1800165 () Bool)

(assert (=> b!6511792 (= e!3945224 tp!1800165)))

(assert (= (and setNonEmpty!44425 condSetEmpty!44431) setIsEmpty!44431))

(assert (= (and setNonEmpty!44425 (not condSetEmpty!44431)) setNonEmpty!44431))

(assert (= setNonEmpty!44431 b!6511792))

(declare-fun m!7298080 () Bool)

(assert (=> setNonEmpty!44431 m!7298080))

(declare-fun b!6511806 () Bool)

(declare-fun e!3945227 () Bool)

(declare-fun tp!1800181 () Bool)

(declare-fun tp!1800178 () Bool)

(assert (=> b!6511806 (= e!3945227 (and tp!1800181 tp!1800178))))

(declare-fun b!6511805 () Bool)

(declare-fun tp!1800179 () Bool)

(assert (=> b!6511805 (= e!3945227 tp!1800179)))

(declare-fun b!6511803 () Bool)

(assert (=> b!6511803 (= e!3945227 tp_is_empty!42043)))

(assert (=> b!6510869 (= tp!1800093 e!3945227)))

(declare-fun b!6511804 () Bool)

(declare-fun tp!1800180 () Bool)

(declare-fun tp!1800177 () Bool)

(assert (=> b!6511804 (= e!3945227 (and tp!1800180 tp!1800177))))

(assert (= (and b!6510869 ((_ is ElementMatch!16395) (regOne!33303 r!7292))) b!6511803))

(assert (= (and b!6510869 ((_ is Concat!25240) (regOne!33303 r!7292))) b!6511804))

(assert (= (and b!6510869 ((_ is Star!16395) (regOne!33303 r!7292))) b!6511805))

(assert (= (and b!6510869 ((_ is Union!16395) (regOne!33303 r!7292))) b!6511806))

(declare-fun b!6511810 () Bool)

(declare-fun e!3945228 () Bool)

(declare-fun tp!1800186 () Bool)

(declare-fun tp!1800183 () Bool)

(assert (=> b!6511810 (= e!3945228 (and tp!1800186 tp!1800183))))

(declare-fun b!6511809 () Bool)

(declare-fun tp!1800184 () Bool)

(assert (=> b!6511809 (= e!3945228 tp!1800184)))

(declare-fun b!6511807 () Bool)

(assert (=> b!6511807 (= e!3945228 tp_is_empty!42043)))

(assert (=> b!6510869 (= tp!1800095 e!3945228)))

(declare-fun b!6511808 () Bool)

(declare-fun tp!1800185 () Bool)

(declare-fun tp!1800182 () Bool)

(assert (=> b!6511808 (= e!3945228 (and tp!1800185 tp!1800182))))

(assert (= (and b!6510869 ((_ is ElementMatch!16395) (regTwo!33303 r!7292))) b!6511807))

(assert (= (and b!6510869 ((_ is Concat!25240) (regTwo!33303 r!7292))) b!6511808))

(assert (= (and b!6510869 ((_ is Star!16395) (regTwo!33303 r!7292))) b!6511809))

(assert (= (and b!6510869 ((_ is Union!16395) (regTwo!33303 r!7292))) b!6511810))

(declare-fun b!6511815 () Bool)

(declare-fun e!3945231 () Bool)

(declare-fun tp!1800191 () Bool)

(declare-fun tp!1800192 () Bool)

(assert (=> b!6511815 (= e!3945231 (and tp!1800191 tp!1800192))))

(assert (=> b!6510849 (= tp!1800102 e!3945231)))

(assert (= (and b!6510849 ((_ is Cons!65360) (exprs!6279 setElem!44425))) b!6511815))

(declare-fun b!6511819 () Bool)

(declare-fun e!3945232 () Bool)

(declare-fun tp!1800197 () Bool)

(declare-fun tp!1800194 () Bool)

(assert (=> b!6511819 (= e!3945232 (and tp!1800197 tp!1800194))))

(declare-fun b!6511818 () Bool)

(declare-fun tp!1800195 () Bool)

(assert (=> b!6511818 (= e!3945232 tp!1800195)))

(declare-fun b!6511816 () Bool)

(assert (=> b!6511816 (= e!3945232 tp_is_empty!42043)))

(assert (=> b!6510850 (= tp!1800096 e!3945232)))

(declare-fun b!6511817 () Bool)

(declare-fun tp!1800196 () Bool)

(declare-fun tp!1800193 () Bool)

(assert (=> b!6511817 (= e!3945232 (and tp!1800196 tp!1800193))))

(assert (= (and b!6510850 ((_ is ElementMatch!16395) (regOne!33302 r!7292))) b!6511816))

(assert (= (and b!6510850 ((_ is Concat!25240) (regOne!33302 r!7292))) b!6511817))

(assert (= (and b!6510850 ((_ is Star!16395) (regOne!33302 r!7292))) b!6511818))

(assert (= (and b!6510850 ((_ is Union!16395) (regOne!33302 r!7292))) b!6511819))

(declare-fun b!6511823 () Bool)

(declare-fun e!3945233 () Bool)

(declare-fun tp!1800202 () Bool)

(declare-fun tp!1800199 () Bool)

(assert (=> b!6511823 (= e!3945233 (and tp!1800202 tp!1800199))))

(declare-fun b!6511822 () Bool)

(declare-fun tp!1800200 () Bool)

(assert (=> b!6511822 (= e!3945233 tp!1800200)))

(declare-fun b!6511820 () Bool)

(assert (=> b!6511820 (= e!3945233 tp_is_empty!42043)))

(assert (=> b!6510850 (= tp!1800099 e!3945233)))

(declare-fun b!6511821 () Bool)

(declare-fun tp!1800201 () Bool)

(declare-fun tp!1800198 () Bool)

(assert (=> b!6511821 (= e!3945233 (and tp!1800201 tp!1800198))))

(assert (= (and b!6510850 ((_ is ElementMatch!16395) (regTwo!33302 r!7292))) b!6511820))

(assert (= (and b!6510850 ((_ is Concat!25240) (regTwo!33302 r!7292))) b!6511821))

(assert (= (and b!6510850 ((_ is Star!16395) (regTwo!33302 r!7292))) b!6511822))

(assert (= (and b!6510850 ((_ is Union!16395) (regTwo!33302 r!7292))) b!6511823))

(declare-fun b!6511831 () Bool)

(declare-fun e!3945239 () Bool)

(declare-fun tp!1800207 () Bool)

(assert (=> b!6511831 (= e!3945239 tp!1800207)))

(declare-fun b!6511830 () Bool)

(declare-fun tp!1800208 () Bool)

(declare-fun e!3945238 () Bool)

(assert (=> b!6511830 (= e!3945238 (and (inv!84234 (h!71810 (t!379122 zl!343))) e!3945239 tp!1800208))))

(assert (=> b!6510877 (= tp!1800100 e!3945238)))

(assert (= b!6511830 b!6511831))

(assert (= (and b!6510877 ((_ is Cons!65362) (t!379122 zl!343))) b!6511830))

(declare-fun m!7298082 () Bool)

(assert (=> b!6511830 m!7298082))

(declare-fun b!6511836 () Bool)

(declare-fun e!3945242 () Bool)

(declare-fun tp!1800211 () Bool)

(assert (=> b!6511836 (= e!3945242 (and tp_is_empty!42043 tp!1800211))))

(assert (=> b!6510861 (= tp!1800098 e!3945242)))

(assert (= (and b!6510861 ((_ is Cons!65361) (t!379121 s!2326))) b!6511836))

(declare-fun b!6511837 () Bool)

(declare-fun e!3945243 () Bool)

(declare-fun tp!1800212 () Bool)

(declare-fun tp!1800213 () Bool)

(assert (=> b!6511837 (= e!3945243 (and tp!1800212 tp!1800213))))

(assert (=> b!6510857 (= tp!1800094 e!3945243)))

(assert (= (and b!6510857 ((_ is Cons!65360) (exprs!6279 (h!71810 zl!343)))) b!6511837))

(declare-fun b!6511841 () Bool)

(declare-fun e!3945244 () Bool)

(declare-fun tp!1800218 () Bool)

(declare-fun tp!1800215 () Bool)

(assert (=> b!6511841 (= e!3945244 (and tp!1800218 tp!1800215))))

(declare-fun b!6511840 () Bool)

(declare-fun tp!1800216 () Bool)

(assert (=> b!6511840 (= e!3945244 tp!1800216)))

(declare-fun b!6511838 () Bool)

(assert (=> b!6511838 (= e!3945244 tp_is_empty!42043)))

(assert (=> b!6510878 (= tp!1800097 e!3945244)))

(declare-fun b!6511839 () Bool)

(declare-fun tp!1800217 () Bool)

(declare-fun tp!1800214 () Bool)

(assert (=> b!6511839 (= e!3945244 (and tp!1800217 tp!1800214))))

(assert (= (and b!6510878 ((_ is ElementMatch!16395) (reg!16724 r!7292))) b!6511838))

(assert (= (and b!6510878 ((_ is Concat!25240) (reg!16724 r!7292))) b!6511839))

(assert (= (and b!6510878 ((_ is Star!16395) (reg!16724 r!7292))) b!6511840))

(assert (= (and b!6510878 ((_ is Union!16395) (reg!16724 r!7292))) b!6511841))

(declare-fun b_lambda!246511 () Bool)

(assert (= b_lambda!246481 (or b!6510873 b_lambda!246511)))

(declare-fun bs!1653295 () Bool)

(declare-fun d!2042569 () Bool)

(assert (= bs!1653295 (and d!2042569 b!6510873)))

(assert (=> bs!1653295 (= (dynLambda!25971 lambda!361298 (h!71810 zl!343)) (derivationStepZipperUp!1569 (h!71810 zl!343) (h!71809 s!2326)))))

(assert (=> bs!1653295 m!7297190))

(assert (=> d!2042359 d!2042569))

(declare-fun b_lambda!246513 () Bool)

(assert (= b_lambda!246495 (or b!6510873 b_lambda!246513)))

(declare-fun bs!1653296 () Bool)

(declare-fun d!2042571 () Bool)

(assert (= bs!1653296 (and d!2042571 b!6510873)))

(assert (=> bs!1653296 (= (dynLambda!25971 lambda!361298 lt!2394645) (derivationStepZipperUp!1569 lt!2394645 (h!71809 s!2326)))))

(assert (=> bs!1653296 m!7297230))

(assert (=> d!2042457 d!2042571))

(declare-fun b_lambda!246515 () Bool)

(assert (= b_lambda!246493 (or b!6510873 b_lambda!246515)))

(declare-fun bs!1653297 () Bool)

(declare-fun d!2042573 () Bool)

(assert (= bs!1653297 (and d!2042573 b!6510873)))

(assert (=> bs!1653297 (= (dynLambda!25971 lambda!361298 lt!2394648) (derivationStepZipperUp!1569 lt!2394648 (h!71809 s!2326)))))

(assert (=> bs!1653297 m!7297228))

(assert (=> d!2042447 d!2042573))

(declare-fun b_lambda!246517 () Bool)

(assert (= b_lambda!246509 (or b!6510848 b_lambda!246517)))

(declare-fun bs!1653298 () Bool)

(declare-fun d!2042575 () Bool)

(assert (= bs!1653298 (and d!2042575 b!6510848)))

(declare-fun lt!2394844 () Unit!158915)

(assert (=> bs!1653298 (= lt!2394844 (lemmaConcatPreservesForall!368 (exprs!6279 lt!2394645) lt!2394644 lambda!361300))))

(assert (=> bs!1653298 (= (dynLambda!25973 lambda!361299 lt!2394645) (Context!11559 (++!14492 (exprs!6279 lt!2394645) lt!2394644)))))

(declare-fun m!7298084 () Bool)

(assert (=> bs!1653298 m!7298084))

(declare-fun m!7298086 () Bool)

(assert (=> bs!1653298 m!7298086))

(assert (=> d!2042563 d!2042575))

(declare-fun b_lambda!246519 () Bool)

(assert (= b_lambda!246485 (or b!6510873 b_lambda!246519)))

(declare-fun bs!1653299 () Bool)

(declare-fun d!2042577 () Bool)

(assert (= bs!1653299 (and d!2042577 b!6510873)))

(assert (=> bs!1653299 (= (dynLambda!25971 lambda!361298 lt!2394649) (derivationStepZipperUp!1569 lt!2394649 (h!71809 s!2326)))))

(assert (=> bs!1653299 m!7297156))

(assert (=> d!2042369 d!2042577))

(check-sat (not d!2042567) (not b!6511773) (not d!2042421) (not d!2042525) (not b!6511349) (not b!6511671) (not d!2042547) (not d!2042499) (not b!6511281) (not bs!1653297) (not b!6511603) (not b!6511805) (not b!6511661) (not b!6511713) (not b!6511611) (not b!6511490) (not b!6511355) (not d!2042541) (not b!6511822) (not b!6511809) (not bs!1653296) (not b!6511818) (not b!6511351) (not b!6511663) (not d!2042505) (not d!2042373) (not d!2042523) (not b!6511718) (not bm!564412) (not bm!564345) (not d!2042555) (not b_lambda!246519) (not b!6511806) (not d!2042559) (not d!2042369) (not b!6511819) (not bm!564404) (not bm!564335) (not d!2042465) (not b!6511487) (not b!6511452) (not b!6511167) (not b!6511425) (not b!6511769) (not b!6511232) (not b!6511692) (not b!6511721) (not d!2042443) (not b!6511072) (not d!2042365) (not b!6511188) (not b!6511830) (not b!6511276) (not bm!564381) (not b!6511840) (not d!2042539) (not d!2042517) (not b!6511275) (not d!2042447) (not b!6511277) (not b!6511810) (not b!6511459) (not b!6511745) (not b_lambda!246511) (not d!2042535) (not b!6511658) (not b!6511160) (not b!6511601) (not b!6511839) (not d!2042425) (not b!6511451) (not b!6511804) (not bm!564408) (not d!2042359) (not d!2042533) (not b!6511187) (not b!6511489) (not b!6511656) (not b!6511734) (not b!6511768) (not b!6511770) (not b!6511352) (not b_lambda!246517) (not b!6511733) (not bs!1653298) (not d!2042543) (not b!6511446) (not d!2042545) (not d!2042399) (not b!6511359) (not d!2042457) (not d!2042473) (not b!6511424) (not d!2042475) (not b!6511717) (not bm!564388) (not bm!564340) (not d!2042565) (not b!6511808) (not bm!564409) (not b!6511691) (not b!6511841) (not d!2042551) (not b!6511771) (not b!6511607) (not bm!564341) (not b_lambda!246513) (not b!6511283) (not d!2042563) (not d!2042537) (not bm!564336) (not bs!1653299) (not d!2042497) (not b!6511722) (not d!2042477) (not d!2042317) (not b!6511628) (not b!6511837) (not d!2042469) (not b!6511836) (not b!6511831) (not bm!564312) (not d!2042459) (not b!6511695) (not d!2042385) (not b!6511669) (not b!6511672) (not b!6511284) (not setNonEmpty!44431) (not b!6511545) (not b!6511716) (not b!6511655) (not b!6511071) (not b!6511557) (not b!6511233) tp_is_empty!42043 (not b_lambda!246515) (not b!6511604) (not b!6511662) (not b!6511694) (not b!6511817) (not b!6511712) (not b!6511815) (not d!2042527) (not b!6511698) (not b!6511664) (not b!6511792) (not d!2042521) (not bm!564382) (not d!2042341) (not b!6511558) (not d!2042501) (not b!6511627) (not d!2042561) (not d!2042531) (not bm!564380) (not d!2042467) (not d!2042529) (not bm!564374) (not bs!1653295) (not d!2042519) (not b!6511741) (not b!6511823) (not d!2042461) (not b!6511488) (not bm!564407) (not b!6511168) (not b!6511136) (not bm!564339) (not b!6511602) (not b!6511161) (not b!6511723) (not d!2042553) (not bm!564385) (not b!6511784) (not b!6511767) (not bm!564411) (not b!6511783) (not b!6511350) (not b!6511697) (not b!6511447) (not bm!564384) (not b!6511821) (not bm!564379) (not b!6511279) (not d!2042423) (not d!2042451) (not bm!564405) (not b!6511746))
(check-sat)
