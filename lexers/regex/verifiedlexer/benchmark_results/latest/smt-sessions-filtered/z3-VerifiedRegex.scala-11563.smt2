; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638174 () Bool)

(assert start!638174)

(declare-fun b!6494886 () Bool)

(assert (=> b!6494886 true))

(assert (=> b!6494886 true))

(declare-fun lambda!359803 () Int)

(declare-fun lambda!359802 () Int)

(assert (=> b!6494886 (not (= lambda!359803 lambda!359802))))

(assert (=> b!6494886 true))

(assert (=> b!6494886 true))

(declare-fun b!6494901 () Bool)

(assert (=> b!6494901 true))

(declare-fun b!6494878 () Bool)

(declare-fun e!3935862 () Bool)

(declare-fun e!3935869 () Bool)

(assert (=> b!6494878 (= e!3935862 e!3935869)))

(declare-fun res!2667537 () Bool)

(assert (=> b!6494878 (=> res!2667537 e!3935869)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33016 0))(
  ( (C!33017 (val!26210 Int)) )
))
(declare-datatypes ((Regex!16373 0))(
  ( (ElementMatch!16373 (c!1190447 C!33016)) (Concat!25218 (regOne!33258 Regex!16373) (regTwo!33258 Regex!16373)) (EmptyExpr!16373) (Star!16373 (reg!16702 Regex!16373)) (EmptyLang!16373) (Union!16373 (regOne!33259 Regex!16373) (regTwo!33259 Regex!16373)) )
))
(declare-datatypes ((List!65418 0))(
  ( (Nil!65294) (Cons!65294 (h!71742 Regex!16373) (t!379048 List!65418)) )
))
(declare-datatypes ((Context!11514 0))(
  ( (Context!11515 (exprs!6257 List!65418)) )
))
(declare-fun lt!2390649 () (InoxSet Context!11514))

(declare-fun lt!2390648 () (InoxSet Context!11514))

(assert (=> b!6494878 (= res!2667537 (not (= lt!2390649 lt!2390648)))))

(declare-fun lt!2390657 () (InoxSet Context!11514))

(declare-datatypes ((List!65419 0))(
  ( (Nil!65295) (Cons!65295 (h!71743 C!33016) (t!379049 List!65419)) )
))
(declare-fun s!2326 () List!65419)

(declare-fun lt!2390647 () Context!11514)

(declare-fun lambda!359804 () Int)

(declare-fun flatMap!1878 ((InoxSet Context!11514) Int) (InoxSet Context!11514))

(declare-fun derivationStepZipperUp!1547 (Context!11514 C!33016) (InoxSet Context!11514))

(assert (=> b!6494878 (= (flatMap!1878 lt!2390657 lambda!359804) (derivationStepZipperUp!1547 lt!2390647 (h!71743 s!2326)))))

(declare-datatypes ((Unit!158827 0))(
  ( (Unit!158828) )
))
(declare-fun lt!2390637 () Unit!158827)

(declare-fun lemmaFlatMapOnSingletonSet!1404 ((InoxSet Context!11514) Context!11514 Int) Unit!158827)

(assert (=> b!6494878 (= lt!2390637 (lemmaFlatMapOnSingletonSet!1404 lt!2390657 lt!2390647 lambda!359804))))

(declare-fun lt!2390634 () (InoxSet Context!11514))

(assert (=> b!6494878 (= lt!2390634 (derivationStepZipperUp!1547 lt!2390647 (h!71743 s!2326)))))

(declare-fun derivationStepZipper!2339 ((InoxSet Context!11514) C!33016) (InoxSet Context!11514))

(assert (=> b!6494878 (= lt!2390649 (derivationStepZipper!2339 lt!2390657 (h!71743 s!2326)))))

(assert (=> b!6494878 (= lt!2390657 (store ((as const (Array Context!11514 Bool)) false) lt!2390647 true))))

(declare-fun r!7292 () Regex!16373)

(declare-fun lt!2390629 () List!65418)

(assert (=> b!6494878 (= lt!2390647 (Context!11515 (Cons!65294 (reg!16702 (regOne!33258 r!7292)) lt!2390629)))))

(declare-fun b!6494879 () Bool)

(declare-fun e!3935853 () Bool)

(declare-fun e!3935867 () Bool)

(assert (=> b!6494879 (= e!3935853 e!3935867)))

(declare-fun res!2667531 () Bool)

(assert (=> b!6494879 (=> res!2667531 e!3935867)))

(declare-fun lt!2390659 () Regex!16373)

(declare-datatypes ((List!65420 0))(
  ( (Nil!65296) (Cons!65296 (h!71744 Context!11514) (t!379050 List!65420)) )
))
(declare-fun unfocusZipper!2115 (List!65420) Regex!16373)

(assert (=> b!6494879 (= res!2667531 (not (= (unfocusZipper!2115 (Cons!65296 lt!2390647 Nil!65296)) lt!2390659)))))

(declare-fun lt!2390631 () Regex!16373)

(assert (=> b!6494879 (= lt!2390659 (Concat!25218 (reg!16702 (regOne!33258 r!7292)) lt!2390631))))

(declare-fun tp!1797263 () Bool)

(declare-fun setNonEmpty!44251 () Bool)

(declare-fun setElem!44251 () Context!11514)

(declare-fun e!3935868 () Bool)

(declare-fun setRes!44251 () Bool)

(declare-fun inv!84179 (Context!11514) Bool)

(assert (=> setNonEmpty!44251 (= setRes!44251 (and tp!1797263 (inv!84179 setElem!44251) e!3935868))))

(declare-fun z!1189 () (InoxSet Context!11514))

(declare-fun setRest!44251 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44251 (= z!1189 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44251 true) setRest!44251))))

(declare-fun b!6494881 () Bool)

(declare-fun e!3935861 () Bool)

(declare-fun tp!1797256 () Bool)

(assert (=> b!6494881 (= e!3935861 tp!1797256)))

(declare-fun b!6494882 () Bool)

(declare-fun e!3935857 () Bool)

(declare-fun e!3935858 () Bool)

(assert (=> b!6494882 (= e!3935857 e!3935858)))

(declare-fun res!2667536 () Bool)

(assert (=> b!6494882 (=> (not res!2667536) (not e!3935858))))

(declare-fun lt!2390638 () Regex!16373)

(assert (=> b!6494882 (= res!2667536 (= r!7292 lt!2390638))))

(declare-fun zl!343 () List!65420)

(assert (=> b!6494882 (= lt!2390638 (unfocusZipper!2115 zl!343))))

(declare-fun b!6494883 () Bool)

(declare-fun res!2667515 () Bool)

(declare-fun e!3935865 () Bool)

(assert (=> b!6494883 (=> res!2667515 e!3935865)))

(declare-fun e!3935871 () Bool)

(assert (=> b!6494883 (= res!2667515 e!3935871)))

(declare-fun res!2667527 () Bool)

(assert (=> b!6494883 (=> (not res!2667527) (not e!3935871))))

(get-info :version)

(assert (=> b!6494883 (= res!2667527 ((_ is Concat!25218) (regOne!33258 r!7292)))))

(declare-fun b!6494884 () Bool)

(declare-fun e!3935855 () Bool)

(declare-fun tp!1797259 () Bool)

(assert (=> b!6494884 (= e!3935855 tp!1797259)))

(declare-fun b!6494885 () Bool)

(declare-fun res!2667518 () Bool)

(assert (=> b!6494885 (=> (not res!2667518) (not e!3935857))))

(declare-fun toList!10157 ((InoxSet Context!11514)) List!65420)

(assert (=> b!6494885 (= res!2667518 (= (toList!10157 z!1189) zl!343))))

(declare-fun e!3935863 () Bool)

(declare-fun e!3935864 () Bool)

(assert (=> b!6494886 (= e!3935863 e!3935864)))

(declare-fun res!2667517 () Bool)

(assert (=> b!6494886 (=> res!2667517 e!3935864)))

(declare-fun lt!2390654 () Bool)

(declare-fun lt!2390645 () Bool)

(assert (=> b!6494886 (= res!2667517 (or (not (= lt!2390645 lt!2390654)) ((_ is Nil!65295) s!2326)))))

(declare-fun Exists!3443 (Int) Bool)

(assert (=> b!6494886 (= (Exists!3443 lambda!359802) (Exists!3443 lambda!359803))))

(declare-fun lt!2390651 () Unit!158827)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1980 (Regex!16373 Regex!16373 List!65419) Unit!158827)

(assert (=> b!6494886 (= lt!2390651 (lemmaExistCutMatchRandMatchRSpecEquivalent!1980 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326))))

(assert (=> b!6494886 (= lt!2390654 (Exists!3443 lambda!359802))))

(declare-datatypes ((tuple2!66704 0))(
  ( (tuple2!66705 (_1!36655 List!65419) (_2!36655 List!65419)) )
))
(declare-datatypes ((Option!16264 0))(
  ( (None!16263) (Some!16263 (v!52442 tuple2!66704)) )
))
(declare-fun isDefined!12967 (Option!16264) Bool)

(declare-fun findConcatSeparation!2678 (Regex!16373 Regex!16373 List!65419 List!65419 List!65419) Option!16264)

(assert (=> b!6494886 (= lt!2390654 (isDefined!12967 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326)))))

(declare-fun lt!2390658 () Unit!158827)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2442 (Regex!16373 Regex!16373 List!65419) Unit!158827)

(assert (=> b!6494886 (= lt!2390658 (lemmaFindConcatSeparationEquivalentToExists!2442 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326))))

(declare-fun b!6494887 () Bool)

(declare-fun e!3935854 () Unit!158827)

(declare-fun Unit!158829 () Unit!158827)

(assert (=> b!6494887 (= e!3935854 Unit!158829)))

(declare-fun b!6494888 () Bool)

(declare-fun res!2667541 () Bool)

(declare-fun e!3935856 () Bool)

(assert (=> b!6494888 (=> res!2667541 e!3935856)))

(declare-fun lt!2390661 () Bool)

(declare-fun lt!2390628 () Bool)

(assert (=> b!6494888 (= res!2667541 (or (not lt!2390661) (not lt!2390628)))))

(declare-fun b!6494889 () Bool)

(declare-fun tp!1797258 () Bool)

(declare-fun tp!1797264 () Bool)

(assert (=> b!6494889 (= e!3935861 (and tp!1797258 tp!1797264))))

(declare-fun b!6494890 () Bool)

(declare-fun res!2667542 () Bool)

(assert (=> b!6494890 (=> res!2667542 e!3935864)))

(declare-fun isEmpty!37489 (List!65418) Bool)

(assert (=> b!6494890 (= res!2667542 (isEmpty!37489 (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6494891 () Bool)

(assert (=> b!6494891 (= e!3935865 e!3935862)))

(declare-fun res!2667529 () Bool)

(assert (=> b!6494891 (=> res!2667529 e!3935862)))

(declare-fun lt!2390644 () (InoxSet Context!11514))

(assert (=> b!6494891 (= res!2667529 (not (= lt!2390644 lt!2390648)))))

(declare-fun lt!2390632 () Context!11514)

(declare-fun derivationStepZipperDown!1621 (Regex!16373 Context!11514 C!33016) (InoxSet Context!11514))

(assert (=> b!6494891 (= lt!2390648 (derivationStepZipperDown!1621 (reg!16702 (regOne!33258 r!7292)) lt!2390632 (h!71743 s!2326)))))

(assert (=> b!6494891 (= lt!2390632 (Context!11515 lt!2390629))))

(declare-fun lt!2390640 () Regex!16373)

(assert (=> b!6494891 (= lt!2390629 (Cons!65294 lt!2390640 (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6494891 (= lt!2390640 (Star!16373 (reg!16702 (regOne!33258 r!7292))))))

(declare-fun b!6494892 () Bool)

(declare-fun res!2667539 () Bool)

(assert (=> b!6494892 (=> res!2667539 e!3935863)))

(declare-fun generalisedUnion!2217 (List!65418) Regex!16373)

(declare-fun unfocusZipperList!1794 (List!65420) List!65418)

(assert (=> b!6494892 (= res!2667539 (not (= r!7292 (generalisedUnion!2217 (unfocusZipperList!1794 zl!343)))))))

(declare-fun b!6494893 () Bool)

(assert (=> b!6494893 (= e!3935858 (not e!3935863))))

(declare-fun res!2667519 () Bool)

(assert (=> b!6494893 (=> res!2667519 e!3935863)))

(assert (=> b!6494893 (= res!2667519 (not ((_ is Cons!65296) zl!343)))))

(declare-fun matchRSpec!3474 (Regex!16373 List!65419) Bool)

(assert (=> b!6494893 (= lt!2390645 (matchRSpec!3474 r!7292 s!2326))))

(declare-fun matchR!8556 (Regex!16373 List!65419) Bool)

(assert (=> b!6494893 (= lt!2390645 (matchR!8556 r!7292 s!2326))))

(declare-fun lt!2390653 () Unit!158827)

(declare-fun mainMatchTheorem!3474 (Regex!16373 List!65419) Unit!158827)

(assert (=> b!6494893 (= lt!2390653 (mainMatchTheorem!3474 r!7292 s!2326))))

(declare-fun b!6494894 () Bool)

(declare-fun tp_is_empty!41999 () Bool)

(assert (=> b!6494894 (= e!3935861 tp_is_empty!41999)))

(declare-fun b!6494895 () Bool)

(declare-fun res!2667535 () Bool)

(assert (=> b!6494895 (=> res!2667535 e!3935863)))

(assert (=> b!6494895 (= res!2667535 (not ((_ is Cons!65294) (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6494896 () Bool)

(assert (=> b!6494896 (= e!3935856 (inv!84179 lt!2390647))))

(declare-fun b!6494897 () Bool)

(declare-fun e!3935860 () Bool)

(declare-fun tp!1797262 () Bool)

(assert (=> b!6494897 (= e!3935860 (and tp_is_empty!41999 tp!1797262))))

(declare-fun res!2667538 () Bool)

(assert (=> start!638174 (=> (not res!2667538) (not e!3935857))))

(declare-fun validRegex!8109 (Regex!16373) Bool)

(assert (=> start!638174 (= res!2667538 (validRegex!8109 r!7292))))

(assert (=> start!638174 e!3935857))

(assert (=> start!638174 e!3935861))

(declare-fun condSetEmpty!44251 () Bool)

(assert (=> start!638174 (= condSetEmpty!44251 (= z!1189 ((as const (Array Context!11514 Bool)) false)))))

(assert (=> start!638174 setRes!44251))

(declare-fun e!3935866 () Bool)

(assert (=> start!638174 e!3935866))

(assert (=> start!638174 e!3935860))

(declare-fun b!6494880 () Bool)

(declare-fun Unit!158830 () Unit!158827)

(assert (=> b!6494880 (= e!3935854 Unit!158830)))

(declare-fun lt!2390660 () (InoxSet Context!11514))

(declare-fun lt!2390642 () Unit!158827)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1204 ((InoxSet Context!11514) (InoxSet Context!11514) List!65419) Unit!158827)

(assert (=> b!6494880 (= lt!2390642 (lemmaZipperConcatMatchesSameAsBothZippers!1204 lt!2390644 lt!2390660 (t!379049 s!2326)))))

(declare-fun res!2667525 () Bool)

(declare-fun matchZipper!2385 ((InoxSet Context!11514) List!65419) Bool)

(assert (=> b!6494880 (= res!2667525 (matchZipper!2385 lt!2390644 (t!379049 s!2326)))))

(declare-fun e!3935872 () Bool)

(assert (=> b!6494880 (=> res!2667525 e!3935872)))

(assert (=> b!6494880 (= (matchZipper!2385 ((_ map or) lt!2390644 lt!2390660) (t!379049 s!2326)) e!3935872)))

(declare-fun b!6494898 () Bool)

(declare-fun res!2667526 () Bool)

(declare-fun e!3935874 () Bool)

(assert (=> b!6494898 (=> res!2667526 e!3935874)))

(assert (=> b!6494898 (= res!2667526 (not (= lt!2390638 r!7292)))))

(declare-fun b!6494899 () Bool)

(declare-fun res!2667516 () Bool)

(declare-fun e!3935859 () Bool)

(assert (=> b!6494899 (=> res!2667516 e!3935859)))

(assert (=> b!6494899 (= res!2667516 (not (= (unfocusZipper!2115 (Cons!65296 lt!2390632 Nil!65296)) lt!2390631)))))

(declare-fun b!6494900 () Bool)

(declare-fun e!3935870 () Bool)

(assert (=> b!6494900 (= e!3935870 (not (matchZipper!2385 lt!2390660 (t!379049 s!2326))))))

(assert (=> b!6494901 (= e!3935864 e!3935865)))

(declare-fun res!2667523 () Bool)

(assert (=> b!6494901 (=> res!2667523 e!3935865)))

(assert (=> b!6494901 (= res!2667523 (or (and ((_ is ElementMatch!16373) (regOne!33258 r!7292)) (= (c!1190447 (regOne!33258 r!7292)) (h!71743 s!2326))) ((_ is Union!16373) (regOne!33258 r!7292))))))

(declare-fun lt!2390655 () Unit!158827)

(assert (=> b!6494901 (= lt!2390655 e!3935854)))

(declare-fun c!1190446 () Bool)

(declare-fun lt!2390641 () Bool)

(assert (=> b!6494901 (= c!1190446 lt!2390641)))

(declare-fun nullable!6366 (Regex!16373) Bool)

(assert (=> b!6494901 (= lt!2390641 (nullable!6366 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6494901 (= (flatMap!1878 z!1189 lambda!359804) (derivationStepZipperUp!1547 (h!71744 zl!343) (h!71743 s!2326)))))

(declare-fun lt!2390636 () Unit!158827)

(assert (=> b!6494901 (= lt!2390636 (lemmaFlatMapOnSingletonSet!1404 z!1189 (h!71744 zl!343) lambda!359804))))

(declare-fun lt!2390633 () Context!11514)

(assert (=> b!6494901 (= lt!2390660 (derivationStepZipperUp!1547 lt!2390633 (h!71743 s!2326)))))

(assert (=> b!6494901 (= lt!2390644 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (h!71744 zl!343))) lt!2390633 (h!71743 s!2326)))))

(assert (=> b!6494901 (= lt!2390633 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun lt!2390650 () (InoxSet Context!11514))

(assert (=> b!6494901 (= lt!2390650 (derivationStepZipperUp!1547 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))) (h!71743 s!2326)))))

(declare-fun b!6494902 () Bool)

(declare-fun res!2667540 () Bool)

(declare-fun e!3935873 () Bool)

(assert (=> b!6494902 (=> res!2667540 e!3935873)))

(assert (=> b!6494902 (= res!2667540 (not lt!2390641))))

(declare-fun b!6494903 () Bool)

(declare-fun tp!1797260 () Bool)

(declare-fun tp!1797255 () Bool)

(assert (=> b!6494903 (= e!3935861 (and tp!1797260 tp!1797255))))

(declare-fun b!6494904 () Bool)

(declare-fun res!2667524 () Bool)

(assert (=> b!6494904 (=> res!2667524 e!3935873)))

(assert (=> b!6494904 (= res!2667524 (not (matchZipper!2385 z!1189 s!2326)))))

(declare-fun b!6494905 () Bool)

(declare-fun res!2667528 () Bool)

(assert (=> b!6494905 (=> res!2667528 e!3935865)))

(assert (=> b!6494905 (= res!2667528 (or ((_ is Concat!25218) (regOne!33258 r!7292)) (not ((_ is Star!16373) (regOne!33258 r!7292)))))))

(declare-fun b!6494906 () Bool)

(assert (=> b!6494906 (= e!3935867 e!3935859)))

(declare-fun res!2667521 () Bool)

(assert (=> b!6494906 (=> res!2667521 e!3935859)))

(declare-fun lt!2390635 () Context!11514)

(assert (=> b!6494906 (= res!2667521 (not (= (unfocusZipper!2115 (Cons!65296 lt!2390635 Nil!65296)) (reg!16702 (regOne!33258 r!7292)))))))

(declare-fun lt!2390643 () (InoxSet Context!11514))

(assert (=> b!6494906 (= (flatMap!1878 lt!2390643 lambda!359804) (derivationStepZipperUp!1547 lt!2390632 (h!71743 s!2326)))))

(declare-fun lt!2390630 () Unit!158827)

(assert (=> b!6494906 (= lt!2390630 (lemmaFlatMapOnSingletonSet!1404 lt!2390643 lt!2390632 lambda!359804))))

(declare-fun lt!2390646 () (InoxSet Context!11514))

(assert (=> b!6494906 (= (flatMap!1878 lt!2390646 lambda!359804) (derivationStepZipperUp!1547 lt!2390635 (h!71743 s!2326)))))

(declare-fun lt!2390662 () Unit!158827)

(assert (=> b!6494906 (= lt!2390662 (lemmaFlatMapOnSingletonSet!1404 lt!2390646 lt!2390635 lambda!359804))))

(declare-fun lt!2390652 () (InoxSet Context!11514))

(assert (=> b!6494906 (= lt!2390652 (derivationStepZipperUp!1547 lt!2390632 (h!71743 s!2326)))))

(declare-fun lt!2390656 () (InoxSet Context!11514))

(assert (=> b!6494906 (= lt!2390656 (derivationStepZipperUp!1547 lt!2390635 (h!71743 s!2326)))))

(assert (=> b!6494906 (= lt!2390643 (store ((as const (Array Context!11514 Bool)) false) lt!2390632 true))))

(assert (=> b!6494906 (= lt!2390646 (store ((as const (Array Context!11514 Bool)) false) lt!2390635 true))))

(assert (=> b!6494906 (= lt!2390635 (Context!11515 (Cons!65294 (reg!16702 (regOne!33258 r!7292)) Nil!65294)))))

(declare-fun b!6494907 () Bool)

(assert (=> b!6494907 (= e!3935871 (nullable!6366 (regOne!33258 (regOne!33258 r!7292))))))

(declare-fun tp!1797261 () Bool)

(declare-fun b!6494908 () Bool)

(assert (=> b!6494908 (= e!3935866 (and (inv!84179 (h!71744 zl!343)) e!3935855 tp!1797261))))

(declare-fun b!6494909 () Bool)

(assert (=> b!6494909 (= e!3935873 e!3935856)))

(declare-fun res!2667533 () Bool)

(assert (=> b!6494909 (=> res!2667533 e!3935856)))

(assert (=> b!6494909 (= res!2667533 e!3935870)))

(declare-fun res!2667532 () Bool)

(assert (=> b!6494909 (=> (not res!2667532) (not e!3935870))))

(assert (=> b!6494909 (= res!2667532 (not lt!2390661))))

(assert (=> b!6494909 (= lt!2390661 (matchZipper!2385 lt!2390644 (t!379049 s!2326)))))

(declare-fun setIsEmpty!44251 () Bool)

(assert (=> setIsEmpty!44251 setRes!44251))

(declare-fun b!6494910 () Bool)

(assert (=> b!6494910 (= e!3935869 e!3935874)))

(declare-fun res!2667513 () Bool)

(assert (=> b!6494910 (=> res!2667513 e!3935874)))

(assert (=> b!6494910 (= res!2667513 (not (= lt!2390628 (matchZipper!2385 lt!2390649 (t!379049 s!2326)))))))

(assert (=> b!6494910 (= lt!2390628 (matchZipper!2385 lt!2390657 s!2326))))

(declare-fun b!6494911 () Bool)

(declare-fun tp!1797257 () Bool)

(assert (=> b!6494911 (= e!3935868 tp!1797257)))

(declare-fun b!6494912 () Bool)

(assert (=> b!6494912 (= e!3935872 (matchZipper!2385 lt!2390660 (t!379049 s!2326)))))

(declare-fun b!6494913 () Bool)

(assert (=> b!6494913 (= e!3935859 e!3935873)))

(declare-fun res!2667522 () Bool)

(assert (=> b!6494913 (=> res!2667522 e!3935873)))

(assert (=> b!6494913 (= res!2667522 lt!2390645)))

(assert (=> b!6494913 (= (matchR!8556 lt!2390659 s!2326) (matchRSpec!3474 lt!2390659 s!2326))))

(declare-fun lt!2390639 () Unit!158827)

(assert (=> b!6494913 (= lt!2390639 (mainMatchTheorem!3474 lt!2390659 s!2326))))

(declare-fun b!6494914 () Bool)

(declare-fun res!2667520 () Bool)

(assert (=> b!6494914 (=> res!2667520 e!3935863)))

(assert (=> b!6494914 (= res!2667520 (or ((_ is EmptyExpr!16373) r!7292) ((_ is EmptyLang!16373) r!7292) ((_ is ElementMatch!16373) r!7292) ((_ is Union!16373) r!7292) (not ((_ is Concat!25218) r!7292))))))

(declare-fun b!6494915 () Bool)

(declare-fun res!2667530 () Bool)

(assert (=> b!6494915 (=> res!2667530 e!3935863)))

(declare-fun isEmpty!37490 (List!65420) Bool)

(assert (=> b!6494915 (= res!2667530 (not (isEmpty!37490 (t!379050 zl!343))))))

(declare-fun b!6494916 () Bool)

(assert (=> b!6494916 (= e!3935874 e!3935853)))

(declare-fun res!2667534 () Bool)

(assert (=> b!6494916 (=> res!2667534 e!3935853)))

(assert (=> b!6494916 (= res!2667534 (not (= r!7292 lt!2390631)))))

(assert (=> b!6494916 (= lt!2390631 (Concat!25218 lt!2390640 (regTwo!33258 r!7292)))))

(declare-fun b!6494917 () Bool)

(declare-fun res!2667514 () Bool)

(assert (=> b!6494917 (=> res!2667514 e!3935863)))

(declare-fun generalisedConcat!1970 (List!65418) Regex!16373)

(assert (=> b!6494917 (= res!2667514 (not (= r!7292 (generalisedConcat!1970 (exprs!6257 (h!71744 zl!343))))))))

(assert (= (and start!638174 res!2667538) b!6494885))

(assert (= (and b!6494885 res!2667518) b!6494882))

(assert (= (and b!6494882 res!2667536) b!6494893))

(assert (= (and b!6494893 (not res!2667519)) b!6494915))

(assert (= (and b!6494915 (not res!2667530)) b!6494917))

(assert (= (and b!6494917 (not res!2667514)) b!6494895))

(assert (= (and b!6494895 (not res!2667535)) b!6494892))

(assert (= (and b!6494892 (not res!2667539)) b!6494914))

(assert (= (and b!6494914 (not res!2667520)) b!6494886))

(assert (= (and b!6494886 (not res!2667517)) b!6494890))

(assert (= (and b!6494890 (not res!2667542)) b!6494901))

(assert (= (and b!6494901 c!1190446) b!6494880))

(assert (= (and b!6494901 (not c!1190446)) b!6494887))

(assert (= (and b!6494880 (not res!2667525)) b!6494912))

(assert (= (and b!6494901 (not res!2667523)) b!6494883))

(assert (= (and b!6494883 res!2667527) b!6494907))

(assert (= (and b!6494883 (not res!2667515)) b!6494905))

(assert (= (and b!6494905 (not res!2667528)) b!6494891))

(assert (= (and b!6494891 (not res!2667529)) b!6494878))

(assert (= (and b!6494878 (not res!2667537)) b!6494910))

(assert (= (and b!6494910 (not res!2667513)) b!6494898))

(assert (= (and b!6494898 (not res!2667526)) b!6494916))

(assert (= (and b!6494916 (not res!2667534)) b!6494879))

(assert (= (and b!6494879 (not res!2667531)) b!6494906))

(assert (= (and b!6494906 (not res!2667521)) b!6494899))

(assert (= (and b!6494899 (not res!2667516)) b!6494913))

(assert (= (and b!6494913 (not res!2667522)) b!6494904))

(assert (= (and b!6494904 (not res!2667524)) b!6494902))

(assert (= (and b!6494902 (not res!2667540)) b!6494909))

(assert (= (and b!6494909 res!2667532) b!6494900))

(assert (= (and b!6494909 (not res!2667533)) b!6494888))

(assert (= (and b!6494888 (not res!2667541)) b!6494896))

(assert (= (and start!638174 ((_ is ElementMatch!16373) r!7292)) b!6494894))

(assert (= (and start!638174 ((_ is Concat!25218) r!7292)) b!6494903))

(assert (= (and start!638174 ((_ is Star!16373) r!7292)) b!6494881))

(assert (= (and start!638174 ((_ is Union!16373) r!7292)) b!6494889))

(assert (= (and start!638174 condSetEmpty!44251) setIsEmpty!44251))

(assert (= (and start!638174 (not condSetEmpty!44251)) setNonEmpty!44251))

(assert (= setNonEmpty!44251 b!6494911))

(assert (= b!6494908 b!6494884))

(assert (= (and start!638174 ((_ is Cons!65296) zl!343)) b!6494908))

(assert (= (and start!638174 ((_ is Cons!65295) s!2326)) b!6494897))

(declare-fun m!7283606 () Bool)

(assert (=> b!6494879 m!7283606))

(declare-fun m!7283608 () Bool)

(assert (=> b!6494899 m!7283608))

(declare-fun m!7283610 () Bool)

(assert (=> b!6494910 m!7283610))

(declare-fun m!7283612 () Bool)

(assert (=> b!6494910 m!7283612))

(declare-fun m!7283614 () Bool)

(assert (=> b!6494893 m!7283614))

(declare-fun m!7283616 () Bool)

(assert (=> b!6494893 m!7283616))

(declare-fun m!7283618 () Bool)

(assert (=> b!6494893 m!7283618))

(declare-fun m!7283620 () Bool)

(assert (=> b!6494913 m!7283620))

(declare-fun m!7283622 () Bool)

(assert (=> b!6494913 m!7283622))

(declare-fun m!7283624 () Bool)

(assert (=> b!6494913 m!7283624))

(declare-fun m!7283626 () Bool)

(assert (=> b!6494915 m!7283626))

(declare-fun m!7283628 () Bool)

(assert (=> setNonEmpty!44251 m!7283628))

(declare-fun m!7283630 () Bool)

(assert (=> b!6494882 m!7283630))

(declare-fun m!7283632 () Bool)

(assert (=> b!6494917 m!7283632))

(declare-fun m!7283634 () Bool)

(assert (=> b!6494896 m!7283634))

(declare-fun m!7283636 () Bool)

(assert (=> b!6494901 m!7283636))

(declare-fun m!7283638 () Bool)

(assert (=> b!6494901 m!7283638))

(declare-fun m!7283640 () Bool)

(assert (=> b!6494901 m!7283640))

(declare-fun m!7283642 () Bool)

(assert (=> b!6494901 m!7283642))

(declare-fun m!7283644 () Bool)

(assert (=> b!6494901 m!7283644))

(declare-fun m!7283646 () Bool)

(assert (=> b!6494901 m!7283646))

(declare-fun m!7283648 () Bool)

(assert (=> b!6494901 m!7283648))

(declare-fun m!7283650 () Bool)

(assert (=> b!6494906 m!7283650))

(declare-fun m!7283652 () Bool)

(assert (=> b!6494906 m!7283652))

(declare-fun m!7283654 () Bool)

(assert (=> b!6494906 m!7283654))

(declare-fun m!7283656 () Bool)

(assert (=> b!6494906 m!7283656))

(declare-fun m!7283658 () Bool)

(assert (=> b!6494906 m!7283658))

(declare-fun m!7283660 () Bool)

(assert (=> b!6494906 m!7283660))

(declare-fun m!7283662 () Bool)

(assert (=> b!6494906 m!7283662))

(declare-fun m!7283664 () Bool)

(assert (=> b!6494906 m!7283664))

(declare-fun m!7283666 () Bool)

(assert (=> b!6494906 m!7283666))

(declare-fun m!7283668 () Bool)

(assert (=> b!6494891 m!7283668))

(declare-fun m!7283670 () Bool)

(assert (=> b!6494904 m!7283670))

(declare-fun m!7283672 () Bool)

(assert (=> b!6494908 m!7283672))

(declare-fun m!7283674 () Bool)

(assert (=> b!6494892 m!7283674))

(assert (=> b!6494892 m!7283674))

(declare-fun m!7283676 () Bool)

(assert (=> b!6494892 m!7283676))

(declare-fun m!7283678 () Bool)

(assert (=> start!638174 m!7283678))

(declare-fun m!7283680 () Bool)

(assert (=> b!6494886 m!7283680))

(declare-fun m!7283682 () Bool)

(assert (=> b!6494886 m!7283682))

(declare-fun m!7283684 () Bool)

(assert (=> b!6494886 m!7283684))

(declare-fun m!7283686 () Bool)

(assert (=> b!6494886 m!7283686))

(assert (=> b!6494886 m!7283680))

(declare-fun m!7283688 () Bool)

(assert (=> b!6494886 m!7283688))

(declare-fun m!7283690 () Bool)

(assert (=> b!6494886 m!7283690))

(assert (=> b!6494886 m!7283686))

(declare-fun m!7283692 () Bool)

(assert (=> b!6494907 m!7283692))

(declare-fun m!7283694 () Bool)

(assert (=> b!6494912 m!7283694))

(assert (=> b!6494900 m!7283694))

(declare-fun m!7283696 () Bool)

(assert (=> b!6494878 m!7283696))

(declare-fun m!7283698 () Bool)

(assert (=> b!6494878 m!7283698))

(declare-fun m!7283700 () Bool)

(assert (=> b!6494878 m!7283700))

(declare-fun m!7283702 () Bool)

(assert (=> b!6494878 m!7283702))

(declare-fun m!7283704 () Bool)

(assert (=> b!6494878 m!7283704))

(declare-fun m!7283706 () Bool)

(assert (=> b!6494909 m!7283706))

(declare-fun m!7283708 () Bool)

(assert (=> b!6494885 m!7283708))

(declare-fun m!7283710 () Bool)

(assert (=> b!6494890 m!7283710))

(declare-fun m!7283712 () Bool)

(assert (=> b!6494880 m!7283712))

(assert (=> b!6494880 m!7283706))

(declare-fun m!7283714 () Bool)

(assert (=> b!6494880 m!7283714))

(check-sat (not b!6494890) (not b!6494880) (not b!6494911) (not b!6494910) (not b!6494891) (not b!6494892) (not b!6494896) (not start!638174) (not b!6494903) (not b!6494885) (not b!6494907) (not b!6494915) (not b!6494901) (not b!6494884) (not b!6494893) (not b!6494908) (not b!6494897) (not b!6494889) (not b!6494900) (not b!6494912) (not b!6494904) (not b!6494909) (not b!6494881) (not b!6494878) (not b!6494879) (not setNonEmpty!44251) (not b!6494886) (not b!6494913) tp_is_empty!41999 (not b!6494906) (not b!6494899) (not b!6494882) (not b!6494917))
(check-sat)
(get-model)

(declare-fun d!2038112 () Bool)

(declare-fun lambda!359841 () Int)

(declare-fun forall!15554 (List!65418 Int) Bool)

(assert (=> d!2038112 (= (inv!84179 (h!71744 zl!343)) (forall!15554 (exprs!6257 (h!71744 zl!343)) lambda!359841))))

(declare-fun bs!1649694 () Bool)

(assert (= bs!1649694 d!2038112))

(declare-fun m!7284006 () Bool)

(assert (=> bs!1649694 m!7284006))

(assert (=> b!6494908 d!2038112))

(declare-fun b!6495346 () Bool)

(declare-fun e!3936113 () Bool)

(declare-fun lt!2390719 () Option!16264)

(assert (=> b!6495346 (= e!3936113 (not (isDefined!12967 lt!2390719)))))

(declare-fun b!6495347 () Bool)

(declare-fun e!3936112 () Bool)

(declare-fun ++!14455 (List!65419 List!65419) List!65419)

(declare-fun get!22643 (Option!16264) tuple2!66704)

(assert (=> b!6495347 (= e!3936112 (= (++!14455 (_1!36655 (get!22643 lt!2390719)) (_2!36655 (get!22643 lt!2390719))) s!2326))))

(declare-fun b!6495348 () Bool)

(declare-fun res!2667682 () Bool)

(assert (=> b!6495348 (=> (not res!2667682) (not e!3936112))))

(assert (=> b!6495348 (= res!2667682 (matchR!8556 (regTwo!33258 r!7292) (_2!36655 (get!22643 lt!2390719))))))

(declare-fun b!6495349 () Bool)

(declare-fun e!3936114 () Option!16264)

(assert (=> b!6495349 (= e!3936114 (Some!16263 (tuple2!66705 Nil!65295 s!2326)))))

(declare-fun b!6495350 () Bool)

(declare-fun res!2667683 () Bool)

(assert (=> b!6495350 (=> (not res!2667683) (not e!3936112))))

(assert (=> b!6495350 (= res!2667683 (matchR!8556 (regOne!33258 r!7292) (_1!36655 (get!22643 lt!2390719))))))

(declare-fun b!6495351 () Bool)

(declare-fun e!3936111 () Option!16264)

(assert (=> b!6495351 (= e!3936114 e!3936111)))

(declare-fun c!1190565 () Bool)

(assert (=> b!6495351 (= c!1190565 ((_ is Nil!65295) s!2326))))

(declare-fun b!6495352 () Bool)

(declare-fun e!3936115 () Bool)

(assert (=> b!6495352 (= e!3936115 (matchR!8556 (regTwo!33258 r!7292) s!2326))))

(declare-fun d!2038114 () Bool)

(assert (=> d!2038114 e!3936113))

(declare-fun res!2667681 () Bool)

(assert (=> d!2038114 (=> res!2667681 e!3936113)))

(assert (=> d!2038114 (= res!2667681 e!3936112)))

(declare-fun res!2667680 () Bool)

(assert (=> d!2038114 (=> (not res!2667680) (not e!3936112))))

(assert (=> d!2038114 (= res!2667680 (isDefined!12967 lt!2390719))))

(assert (=> d!2038114 (= lt!2390719 e!3936114)))

(declare-fun c!1190566 () Bool)

(assert (=> d!2038114 (= c!1190566 e!3936115)))

(declare-fun res!2667679 () Bool)

(assert (=> d!2038114 (=> (not res!2667679) (not e!3936115))))

(assert (=> d!2038114 (= res!2667679 (matchR!8556 (regOne!33258 r!7292) Nil!65295))))

(assert (=> d!2038114 (validRegex!8109 (regOne!33258 r!7292))))

(assert (=> d!2038114 (= (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326) lt!2390719)))

(declare-fun b!6495353 () Bool)

(declare-fun lt!2390721 () Unit!158827)

(declare-fun lt!2390720 () Unit!158827)

(assert (=> b!6495353 (= lt!2390721 lt!2390720)))

(assert (=> b!6495353 (= (++!14455 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (t!379049 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2526 (List!65419 C!33016 List!65419 List!65419) Unit!158827)

(assert (=> b!6495353 (= lt!2390720 (lemmaMoveElementToOtherListKeepsConcatEq!2526 Nil!65295 (h!71743 s!2326) (t!379049 s!2326) s!2326))))

(assert (=> b!6495353 (= e!3936111 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (t!379049 s!2326) s!2326))))

(declare-fun b!6495354 () Bool)

(assert (=> b!6495354 (= e!3936111 None!16263)))

(assert (= (and d!2038114 res!2667679) b!6495352))

(assert (= (and d!2038114 c!1190566) b!6495349))

(assert (= (and d!2038114 (not c!1190566)) b!6495351))

(assert (= (and b!6495351 c!1190565) b!6495354))

(assert (= (and b!6495351 (not c!1190565)) b!6495353))

(assert (= (and d!2038114 res!2667680) b!6495350))

(assert (= (and b!6495350 res!2667683) b!6495348))

(assert (= (and b!6495348 res!2667682) b!6495347))

(assert (= (and d!2038114 (not res!2667681)) b!6495346))

(declare-fun m!7284008 () Bool)

(assert (=> d!2038114 m!7284008))

(declare-fun m!7284010 () Bool)

(assert (=> d!2038114 m!7284010))

(declare-fun m!7284012 () Bool)

(assert (=> d!2038114 m!7284012))

(declare-fun m!7284014 () Bool)

(assert (=> b!6495352 m!7284014))

(declare-fun m!7284016 () Bool)

(assert (=> b!6495353 m!7284016))

(assert (=> b!6495353 m!7284016))

(declare-fun m!7284018 () Bool)

(assert (=> b!6495353 m!7284018))

(declare-fun m!7284020 () Bool)

(assert (=> b!6495353 m!7284020))

(assert (=> b!6495353 m!7284016))

(declare-fun m!7284022 () Bool)

(assert (=> b!6495353 m!7284022))

(assert (=> b!6495346 m!7284008))

(declare-fun m!7284024 () Bool)

(assert (=> b!6495347 m!7284024))

(declare-fun m!7284026 () Bool)

(assert (=> b!6495347 m!7284026))

(assert (=> b!6495350 m!7284024))

(declare-fun m!7284028 () Bool)

(assert (=> b!6495350 m!7284028))

(assert (=> b!6495348 m!7284024))

(declare-fun m!7284030 () Bool)

(assert (=> b!6495348 m!7284030))

(assert (=> b!6494886 d!2038114))

(declare-fun d!2038116 () Bool)

(declare-fun choose!48211 (Int) Bool)

(assert (=> d!2038116 (= (Exists!3443 lambda!359803) (choose!48211 lambda!359803))))

(declare-fun bs!1649695 () Bool)

(assert (= bs!1649695 d!2038116))

(declare-fun m!7284032 () Bool)

(assert (=> bs!1649695 m!7284032))

(assert (=> b!6494886 d!2038116))

(declare-fun d!2038118 () Bool)

(assert (=> d!2038118 (= (Exists!3443 lambda!359802) (choose!48211 lambda!359802))))

(declare-fun bs!1649696 () Bool)

(assert (= bs!1649696 d!2038118))

(declare-fun m!7284034 () Bool)

(assert (=> bs!1649696 m!7284034))

(assert (=> b!6494886 d!2038118))

(declare-fun bs!1649697 () Bool)

(declare-fun d!2038120 () Bool)

(assert (= bs!1649697 (and d!2038120 b!6494886)))

(declare-fun lambda!359844 () Int)

(assert (=> bs!1649697 (= lambda!359844 lambda!359802)))

(assert (=> bs!1649697 (not (= lambda!359844 lambda!359803))))

(assert (=> d!2038120 true))

(assert (=> d!2038120 true))

(assert (=> d!2038120 true))

(assert (=> d!2038120 (= (isDefined!12967 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326)) (Exists!3443 lambda!359844))))

(declare-fun lt!2390724 () Unit!158827)

(declare-fun choose!48212 (Regex!16373 Regex!16373 List!65419) Unit!158827)

(assert (=> d!2038120 (= lt!2390724 (choose!48212 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326))))

(assert (=> d!2038120 (validRegex!8109 (regOne!33258 r!7292))))

(assert (=> d!2038120 (= (lemmaFindConcatSeparationEquivalentToExists!2442 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326) lt!2390724)))

(declare-fun bs!1649698 () Bool)

(assert (= bs!1649698 d!2038120))

(assert (=> bs!1649698 m!7283680))

(assert (=> bs!1649698 m!7283682))

(declare-fun m!7284036 () Bool)

(assert (=> bs!1649698 m!7284036))

(declare-fun m!7284038 () Bool)

(assert (=> bs!1649698 m!7284038))

(assert (=> bs!1649698 m!7283680))

(assert (=> bs!1649698 m!7284012))

(assert (=> b!6494886 d!2038120))

(declare-fun bs!1649699 () Bool)

(declare-fun d!2038122 () Bool)

(assert (= bs!1649699 (and d!2038122 b!6494886)))

(declare-fun lambda!359849 () Int)

(assert (=> bs!1649699 (= lambda!359849 lambda!359802)))

(assert (=> bs!1649699 (not (= lambda!359849 lambda!359803))))

(declare-fun bs!1649700 () Bool)

(assert (= bs!1649700 (and d!2038122 d!2038120)))

(assert (=> bs!1649700 (= lambda!359849 lambda!359844)))

(assert (=> d!2038122 true))

(assert (=> d!2038122 true))

(assert (=> d!2038122 true))

(declare-fun lambda!359850 () Int)

(assert (=> bs!1649699 (not (= lambda!359850 lambda!359802))))

(assert (=> bs!1649699 (= lambda!359850 lambda!359803)))

(assert (=> bs!1649700 (not (= lambda!359850 lambda!359844))))

(declare-fun bs!1649701 () Bool)

(assert (= bs!1649701 d!2038122))

(assert (=> bs!1649701 (not (= lambda!359850 lambda!359849))))

(assert (=> d!2038122 true))

(assert (=> d!2038122 true))

(assert (=> d!2038122 true))

(assert (=> d!2038122 (= (Exists!3443 lambda!359849) (Exists!3443 lambda!359850))))

(declare-fun lt!2390727 () Unit!158827)

(declare-fun choose!48213 (Regex!16373 Regex!16373 List!65419) Unit!158827)

(assert (=> d!2038122 (= lt!2390727 (choose!48213 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326))))

(assert (=> d!2038122 (validRegex!8109 (regOne!33258 r!7292))))

(assert (=> d!2038122 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1980 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326) lt!2390727)))

(declare-fun m!7284040 () Bool)

(assert (=> bs!1649701 m!7284040))

(declare-fun m!7284042 () Bool)

(assert (=> bs!1649701 m!7284042))

(declare-fun m!7284044 () Bool)

(assert (=> bs!1649701 m!7284044))

(assert (=> bs!1649701 m!7284012))

(assert (=> b!6494886 d!2038122))

(declare-fun d!2038124 () Bool)

(declare-fun isEmpty!37493 (Option!16264) Bool)

(assert (=> d!2038124 (= (isDefined!12967 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326)) (not (isEmpty!37493 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326))))))

(declare-fun bs!1649702 () Bool)

(assert (= bs!1649702 d!2038124))

(assert (=> bs!1649702 m!7283680))

(declare-fun m!7284046 () Bool)

(assert (=> bs!1649702 m!7284046))

(assert (=> b!6494886 d!2038124))

(declare-fun d!2038126 () Bool)

(declare-fun nullableFct!2302 (Regex!16373) Bool)

(assert (=> d!2038126 (= (nullable!6366 (regOne!33258 (regOne!33258 r!7292))) (nullableFct!2302 (regOne!33258 (regOne!33258 r!7292))))))

(declare-fun bs!1649703 () Bool)

(assert (= bs!1649703 d!2038126))

(declare-fun m!7284048 () Bool)

(assert (=> bs!1649703 m!7284048))

(assert (=> b!6494907 d!2038126))

(declare-fun d!2038128 () Bool)

(declare-fun c!1190569 () Bool)

(declare-fun isEmpty!37494 (List!65419) Bool)

(assert (=> d!2038128 (= c!1190569 (isEmpty!37494 (t!379049 s!2326)))))

(declare-fun e!3936124 () Bool)

(assert (=> d!2038128 (= (matchZipper!2385 lt!2390644 (t!379049 s!2326)) e!3936124)))

(declare-fun b!6495371 () Bool)

(declare-fun nullableZipper!2128 ((InoxSet Context!11514)) Bool)

(assert (=> b!6495371 (= e!3936124 (nullableZipper!2128 lt!2390644))))

(declare-fun b!6495372 () Bool)

(declare-fun head!13217 (List!65419) C!33016)

(declare-fun tail!12302 (List!65419) List!65419)

(assert (=> b!6495372 (= e!3936124 (matchZipper!2385 (derivationStepZipper!2339 lt!2390644 (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))))))

(assert (= (and d!2038128 c!1190569) b!6495371))

(assert (= (and d!2038128 (not c!1190569)) b!6495372))

(declare-fun m!7284050 () Bool)

(assert (=> d!2038128 m!7284050))

(declare-fun m!7284052 () Bool)

(assert (=> b!6495371 m!7284052))

(declare-fun m!7284054 () Bool)

(assert (=> b!6495372 m!7284054))

(assert (=> b!6495372 m!7284054))

(declare-fun m!7284056 () Bool)

(assert (=> b!6495372 m!7284056))

(declare-fun m!7284058 () Bool)

(assert (=> b!6495372 m!7284058))

(assert (=> b!6495372 m!7284056))

(assert (=> b!6495372 m!7284058))

(declare-fun m!7284060 () Bool)

(assert (=> b!6495372 m!7284060))

(assert (=> b!6494909 d!2038128))

(declare-fun d!2038130 () Bool)

(assert (=> d!2038130 (= (isEmpty!37489 (t!379048 (exprs!6257 (h!71744 zl!343)))) ((_ is Nil!65294) (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6494890 d!2038130))

(declare-fun d!2038132 () Bool)

(declare-fun c!1190570 () Bool)

(assert (=> d!2038132 (= c!1190570 (isEmpty!37494 (t!379049 s!2326)))))

(declare-fun e!3936125 () Bool)

(assert (=> d!2038132 (= (matchZipper!2385 lt!2390649 (t!379049 s!2326)) e!3936125)))

(declare-fun b!6495373 () Bool)

(assert (=> b!6495373 (= e!3936125 (nullableZipper!2128 lt!2390649))))

(declare-fun b!6495374 () Bool)

(assert (=> b!6495374 (= e!3936125 (matchZipper!2385 (derivationStepZipper!2339 lt!2390649 (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))))))

(assert (= (and d!2038132 c!1190570) b!6495373))

(assert (= (and d!2038132 (not c!1190570)) b!6495374))

(assert (=> d!2038132 m!7284050))

(declare-fun m!7284062 () Bool)

(assert (=> b!6495373 m!7284062))

(assert (=> b!6495374 m!7284054))

(assert (=> b!6495374 m!7284054))

(declare-fun m!7284064 () Bool)

(assert (=> b!6495374 m!7284064))

(assert (=> b!6495374 m!7284058))

(assert (=> b!6495374 m!7284064))

(assert (=> b!6495374 m!7284058))

(declare-fun m!7284066 () Bool)

(assert (=> b!6495374 m!7284066))

(assert (=> b!6494910 d!2038132))

(declare-fun d!2038134 () Bool)

(declare-fun c!1190571 () Bool)

(assert (=> d!2038134 (= c!1190571 (isEmpty!37494 s!2326))))

(declare-fun e!3936126 () Bool)

(assert (=> d!2038134 (= (matchZipper!2385 lt!2390657 s!2326) e!3936126)))

(declare-fun b!6495375 () Bool)

(assert (=> b!6495375 (= e!3936126 (nullableZipper!2128 lt!2390657))))

(declare-fun b!6495376 () Bool)

(assert (=> b!6495376 (= e!3936126 (matchZipper!2385 (derivationStepZipper!2339 lt!2390657 (head!13217 s!2326)) (tail!12302 s!2326)))))

(assert (= (and d!2038134 c!1190571) b!6495375))

(assert (= (and d!2038134 (not c!1190571)) b!6495376))

(declare-fun m!7284068 () Bool)

(assert (=> d!2038134 m!7284068))

(declare-fun m!7284070 () Bool)

(assert (=> b!6495375 m!7284070))

(declare-fun m!7284072 () Bool)

(assert (=> b!6495376 m!7284072))

(assert (=> b!6495376 m!7284072))

(declare-fun m!7284074 () Bool)

(assert (=> b!6495376 m!7284074))

(declare-fun m!7284076 () Bool)

(assert (=> b!6495376 m!7284076))

(assert (=> b!6495376 m!7284074))

(assert (=> b!6495376 m!7284076))

(declare-fun m!7284078 () Bool)

(assert (=> b!6495376 m!7284078))

(assert (=> b!6494910 d!2038134))

(declare-fun d!2038136 () Bool)

(declare-fun c!1190572 () Bool)

(assert (=> d!2038136 (= c!1190572 (isEmpty!37494 s!2326))))

(declare-fun e!3936127 () Bool)

(assert (=> d!2038136 (= (matchZipper!2385 z!1189 s!2326) e!3936127)))

(declare-fun b!6495377 () Bool)

(assert (=> b!6495377 (= e!3936127 (nullableZipper!2128 z!1189))))

(declare-fun b!6495378 () Bool)

(assert (=> b!6495378 (= e!3936127 (matchZipper!2385 (derivationStepZipper!2339 z!1189 (head!13217 s!2326)) (tail!12302 s!2326)))))

(assert (= (and d!2038136 c!1190572) b!6495377))

(assert (= (and d!2038136 (not c!1190572)) b!6495378))

(assert (=> d!2038136 m!7284068))

(declare-fun m!7284080 () Bool)

(assert (=> b!6495377 m!7284080))

(assert (=> b!6495378 m!7284072))

(assert (=> b!6495378 m!7284072))

(declare-fun m!7284082 () Bool)

(assert (=> b!6495378 m!7284082))

(assert (=> b!6495378 m!7284076))

(assert (=> b!6495378 m!7284082))

(assert (=> b!6495378 m!7284076))

(declare-fun m!7284084 () Bool)

(assert (=> b!6495378 m!7284084))

(assert (=> b!6494904 d!2038136))

(declare-fun d!2038138 () Bool)

(declare-fun lt!2390730 () Regex!16373)

(assert (=> d!2038138 (validRegex!8109 lt!2390730)))

(assert (=> d!2038138 (= lt!2390730 (generalisedUnion!2217 (unfocusZipperList!1794 zl!343)))))

(assert (=> d!2038138 (= (unfocusZipper!2115 zl!343) lt!2390730)))

(declare-fun bs!1649704 () Bool)

(assert (= bs!1649704 d!2038138))

(declare-fun m!7284086 () Bool)

(assert (=> bs!1649704 m!7284086))

(assert (=> bs!1649704 m!7283674))

(assert (=> bs!1649704 m!7283674))

(assert (=> bs!1649704 m!7283676))

(assert (=> b!6494882 d!2038138))

(declare-fun d!2038140 () Bool)

(declare-fun e!3936130 () Bool)

(assert (=> d!2038140 e!3936130))

(declare-fun res!2667698 () Bool)

(assert (=> d!2038140 (=> (not res!2667698) (not e!3936130))))

(declare-fun lt!2390733 () List!65420)

(declare-fun noDuplicate!2191 (List!65420) Bool)

(assert (=> d!2038140 (= res!2667698 (noDuplicate!2191 lt!2390733))))

(declare-fun choose!48214 ((InoxSet Context!11514)) List!65420)

(assert (=> d!2038140 (= lt!2390733 (choose!48214 z!1189))))

(assert (=> d!2038140 (= (toList!10157 z!1189) lt!2390733)))

(declare-fun b!6495381 () Bool)

(declare-fun content!12448 (List!65420) (InoxSet Context!11514))

(assert (=> b!6495381 (= e!3936130 (= (content!12448 lt!2390733) z!1189))))

(assert (= (and d!2038140 res!2667698) b!6495381))

(declare-fun m!7284088 () Bool)

(assert (=> d!2038140 m!7284088))

(declare-fun m!7284090 () Bool)

(assert (=> d!2038140 m!7284090))

(declare-fun m!7284092 () Bool)

(assert (=> b!6495381 m!7284092))

(assert (=> b!6494885 d!2038140))

(declare-fun d!2038142 () Bool)

(declare-fun dynLambda!25935 (Int Context!11514) (InoxSet Context!11514))

(assert (=> d!2038142 (= (flatMap!1878 lt!2390643 lambda!359804) (dynLambda!25935 lambda!359804 lt!2390632))))

(declare-fun lt!2390736 () Unit!158827)

(declare-fun choose!48215 ((InoxSet Context!11514) Context!11514 Int) Unit!158827)

(assert (=> d!2038142 (= lt!2390736 (choose!48215 lt!2390643 lt!2390632 lambda!359804))))

(assert (=> d!2038142 (= lt!2390643 (store ((as const (Array Context!11514 Bool)) false) lt!2390632 true))))

(assert (=> d!2038142 (= (lemmaFlatMapOnSingletonSet!1404 lt!2390643 lt!2390632 lambda!359804) lt!2390736)))

(declare-fun b_lambda!245865 () Bool)

(assert (=> (not b_lambda!245865) (not d!2038142)))

(declare-fun bs!1649705 () Bool)

(assert (= bs!1649705 d!2038142))

(assert (=> bs!1649705 m!7283660))

(declare-fun m!7284094 () Bool)

(assert (=> bs!1649705 m!7284094))

(declare-fun m!7284096 () Bool)

(assert (=> bs!1649705 m!7284096))

(assert (=> bs!1649705 m!7283654))

(assert (=> b!6494906 d!2038142))

(declare-fun d!2038144 () Bool)

(declare-fun c!1190578 () Bool)

(declare-fun e!3936138 () Bool)

(assert (=> d!2038144 (= c!1190578 e!3936138)))

(declare-fun res!2667701 () Bool)

(assert (=> d!2038144 (=> (not res!2667701) (not e!3936138))))

(assert (=> d!2038144 (= res!2667701 ((_ is Cons!65294) (exprs!6257 lt!2390632)))))

(declare-fun e!3936139 () (InoxSet Context!11514))

(assert (=> d!2038144 (= (derivationStepZipperUp!1547 lt!2390632 (h!71743 s!2326)) e!3936139)))

(declare-fun bm!562492 () Bool)

(declare-fun call!562497 () (InoxSet Context!11514))

(assert (=> bm!562492 (= call!562497 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390632)) (Context!11515 (t!379048 (exprs!6257 lt!2390632))) (h!71743 s!2326)))))

(declare-fun b!6495392 () Bool)

(assert (=> b!6495392 (= e!3936138 (nullable!6366 (h!71742 (exprs!6257 lt!2390632))))))

(declare-fun b!6495393 () Bool)

(declare-fun e!3936137 () (InoxSet Context!11514))

(assert (=> b!6495393 (= e!3936137 call!562497)))

(declare-fun b!6495394 () Bool)

(assert (=> b!6495394 (= e!3936139 ((_ map or) call!562497 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390632))) (h!71743 s!2326))))))

(declare-fun b!6495395 () Bool)

(assert (=> b!6495395 (= e!3936139 e!3936137)))

(declare-fun c!1190577 () Bool)

(assert (=> b!6495395 (= c!1190577 ((_ is Cons!65294) (exprs!6257 lt!2390632)))))

(declare-fun b!6495396 () Bool)

(assert (=> b!6495396 (= e!3936137 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038144 res!2667701) b!6495392))

(assert (= (and d!2038144 c!1190578) b!6495394))

(assert (= (and d!2038144 (not c!1190578)) b!6495395))

(assert (= (and b!6495395 c!1190577) b!6495393))

(assert (= (and b!6495395 (not c!1190577)) b!6495396))

(assert (= (or b!6495394 b!6495393) bm!562492))

(declare-fun m!7284098 () Bool)

(assert (=> bm!562492 m!7284098))

(declare-fun m!7284100 () Bool)

(assert (=> b!6495392 m!7284100))

(declare-fun m!7284102 () Bool)

(assert (=> b!6495394 m!7284102))

(assert (=> b!6494906 d!2038144))

(declare-fun d!2038146 () Bool)

(assert (=> d!2038146 (= (flatMap!1878 lt!2390646 lambda!359804) (dynLambda!25935 lambda!359804 lt!2390635))))

(declare-fun lt!2390737 () Unit!158827)

(assert (=> d!2038146 (= lt!2390737 (choose!48215 lt!2390646 lt!2390635 lambda!359804))))

(assert (=> d!2038146 (= lt!2390646 (store ((as const (Array Context!11514 Bool)) false) lt!2390635 true))))

(assert (=> d!2038146 (= (lemmaFlatMapOnSingletonSet!1404 lt!2390646 lt!2390635 lambda!359804) lt!2390737)))

(declare-fun b_lambda!245867 () Bool)

(assert (=> (not b_lambda!245867) (not d!2038146)))

(declare-fun bs!1649706 () Bool)

(assert (= bs!1649706 d!2038146))

(assert (=> bs!1649706 m!7283652))

(declare-fun m!7284104 () Bool)

(assert (=> bs!1649706 m!7284104))

(declare-fun m!7284106 () Bool)

(assert (=> bs!1649706 m!7284106))

(assert (=> bs!1649706 m!7283662))

(assert (=> b!6494906 d!2038146))

(declare-fun d!2038148 () Bool)

(declare-fun lt!2390738 () Regex!16373)

(assert (=> d!2038148 (validRegex!8109 lt!2390738)))

(assert (=> d!2038148 (= lt!2390738 (generalisedUnion!2217 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))))))

(assert (=> d!2038148 (= (unfocusZipper!2115 (Cons!65296 lt!2390635 Nil!65296)) lt!2390738)))

(declare-fun bs!1649707 () Bool)

(assert (= bs!1649707 d!2038148))

(declare-fun m!7284108 () Bool)

(assert (=> bs!1649707 m!7284108))

(declare-fun m!7284110 () Bool)

(assert (=> bs!1649707 m!7284110))

(assert (=> bs!1649707 m!7284110))

(declare-fun m!7284112 () Bool)

(assert (=> bs!1649707 m!7284112))

(assert (=> b!6494906 d!2038148))

(declare-fun d!2038150 () Bool)

(declare-fun choose!48216 ((InoxSet Context!11514) Int) (InoxSet Context!11514))

(assert (=> d!2038150 (= (flatMap!1878 lt!2390646 lambda!359804) (choose!48216 lt!2390646 lambda!359804))))

(declare-fun bs!1649708 () Bool)

(assert (= bs!1649708 d!2038150))

(declare-fun m!7284114 () Bool)

(assert (=> bs!1649708 m!7284114))

(assert (=> b!6494906 d!2038150))

(declare-fun d!2038152 () Bool)

(assert (=> d!2038152 (= (flatMap!1878 lt!2390643 lambda!359804) (choose!48216 lt!2390643 lambda!359804))))

(declare-fun bs!1649709 () Bool)

(assert (= bs!1649709 d!2038152))

(declare-fun m!7284116 () Bool)

(assert (=> bs!1649709 m!7284116))

(assert (=> b!6494906 d!2038152))

(declare-fun d!2038154 () Bool)

(declare-fun c!1190580 () Bool)

(declare-fun e!3936141 () Bool)

(assert (=> d!2038154 (= c!1190580 e!3936141)))

(declare-fun res!2667702 () Bool)

(assert (=> d!2038154 (=> (not res!2667702) (not e!3936141))))

(assert (=> d!2038154 (= res!2667702 ((_ is Cons!65294) (exprs!6257 lt!2390635)))))

(declare-fun e!3936142 () (InoxSet Context!11514))

(assert (=> d!2038154 (= (derivationStepZipperUp!1547 lt!2390635 (h!71743 s!2326)) e!3936142)))

(declare-fun bm!562493 () Bool)

(declare-fun call!562498 () (InoxSet Context!11514))

(assert (=> bm!562493 (= call!562498 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390635)) (Context!11515 (t!379048 (exprs!6257 lt!2390635))) (h!71743 s!2326)))))

(declare-fun b!6495397 () Bool)

(assert (=> b!6495397 (= e!3936141 (nullable!6366 (h!71742 (exprs!6257 lt!2390635))))))

(declare-fun b!6495398 () Bool)

(declare-fun e!3936140 () (InoxSet Context!11514))

(assert (=> b!6495398 (= e!3936140 call!562498)))

(declare-fun b!6495399 () Bool)

(assert (=> b!6495399 (= e!3936142 ((_ map or) call!562498 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390635))) (h!71743 s!2326))))))

(declare-fun b!6495400 () Bool)

(assert (=> b!6495400 (= e!3936142 e!3936140)))

(declare-fun c!1190579 () Bool)

(assert (=> b!6495400 (= c!1190579 ((_ is Cons!65294) (exprs!6257 lt!2390635)))))

(declare-fun b!6495401 () Bool)

(assert (=> b!6495401 (= e!3936140 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038154 res!2667702) b!6495397))

(assert (= (and d!2038154 c!1190580) b!6495399))

(assert (= (and d!2038154 (not c!1190580)) b!6495400))

(assert (= (and b!6495400 c!1190579) b!6495398))

(assert (= (and b!6495400 (not c!1190579)) b!6495401))

(assert (= (or b!6495399 b!6495398) bm!562493))

(declare-fun m!7284118 () Bool)

(assert (=> bm!562493 m!7284118))

(declare-fun m!7284120 () Bool)

(assert (=> b!6495397 m!7284120))

(declare-fun m!7284122 () Bool)

(assert (=> b!6495399 m!7284122))

(assert (=> b!6494906 d!2038154))

(declare-fun bs!1649710 () Bool)

(declare-fun d!2038156 () Bool)

(assert (= bs!1649710 (and d!2038156 d!2038112)))

(declare-fun lambda!359853 () Int)

(assert (=> bs!1649710 (= lambda!359853 lambda!359841)))

(declare-fun b!6495422 () Bool)

(declare-fun e!3936158 () Bool)

(declare-fun lt!2390741 () Regex!16373)

(declare-fun head!13218 (List!65418) Regex!16373)

(assert (=> b!6495422 (= e!3936158 (= lt!2390741 (head!13218 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6495423 () Bool)

(declare-fun e!3936157 () Bool)

(assert (=> b!6495423 (= e!3936157 e!3936158)))

(declare-fun c!1190591 () Bool)

(declare-fun tail!12303 (List!65418) List!65418)

(assert (=> b!6495423 (= c!1190591 (isEmpty!37489 (tail!12303 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6495424 () Bool)

(declare-fun e!3936159 () Regex!16373)

(assert (=> b!6495424 (= e!3936159 (Concat!25218 (h!71742 (exprs!6257 (h!71744 zl!343))) (generalisedConcat!1970 (t!379048 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun e!3936156 () Bool)

(assert (=> d!2038156 e!3936156))

(declare-fun res!2667707 () Bool)

(assert (=> d!2038156 (=> (not res!2667707) (not e!3936156))))

(assert (=> d!2038156 (= res!2667707 (validRegex!8109 lt!2390741))))

(declare-fun e!3936160 () Regex!16373)

(assert (=> d!2038156 (= lt!2390741 e!3936160)))

(declare-fun c!1190592 () Bool)

(declare-fun e!3936155 () Bool)

(assert (=> d!2038156 (= c!1190592 e!3936155)))

(declare-fun res!2667708 () Bool)

(assert (=> d!2038156 (=> (not res!2667708) (not e!3936155))))

(assert (=> d!2038156 (= res!2667708 ((_ is Cons!65294) (exprs!6257 (h!71744 zl!343))))))

(assert (=> d!2038156 (forall!15554 (exprs!6257 (h!71744 zl!343)) lambda!359853)))

(assert (=> d!2038156 (= (generalisedConcat!1970 (exprs!6257 (h!71744 zl!343))) lt!2390741)))

(declare-fun b!6495425 () Bool)

(assert (=> b!6495425 (= e!3936155 (isEmpty!37489 (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6495426 () Bool)

(assert (=> b!6495426 (= e!3936159 EmptyExpr!16373)))

(declare-fun b!6495427 () Bool)

(assert (=> b!6495427 (= e!3936160 e!3936159)))

(declare-fun c!1190590 () Bool)

(assert (=> b!6495427 (= c!1190590 ((_ is Cons!65294) (exprs!6257 (h!71744 zl!343))))))

(declare-fun b!6495428 () Bool)

(assert (=> b!6495428 (= e!3936156 e!3936157)))

(declare-fun c!1190589 () Bool)

(assert (=> b!6495428 (= c!1190589 (isEmpty!37489 (exprs!6257 (h!71744 zl!343))))))

(declare-fun b!6495429 () Bool)

(assert (=> b!6495429 (= e!3936160 (h!71742 (exprs!6257 (h!71744 zl!343))))))

(declare-fun b!6495430 () Bool)

(declare-fun isConcat!1286 (Regex!16373) Bool)

(assert (=> b!6495430 (= e!3936158 (isConcat!1286 lt!2390741))))

(declare-fun b!6495431 () Bool)

(declare-fun isEmptyExpr!1763 (Regex!16373) Bool)

(assert (=> b!6495431 (= e!3936157 (isEmptyExpr!1763 lt!2390741))))

(assert (= (and d!2038156 res!2667708) b!6495425))

(assert (= (and d!2038156 c!1190592) b!6495429))

(assert (= (and d!2038156 (not c!1190592)) b!6495427))

(assert (= (and b!6495427 c!1190590) b!6495424))

(assert (= (and b!6495427 (not c!1190590)) b!6495426))

(assert (= (and d!2038156 res!2667707) b!6495428))

(assert (= (and b!6495428 c!1190589) b!6495431))

(assert (= (and b!6495428 (not c!1190589)) b!6495423))

(assert (= (and b!6495423 c!1190591) b!6495422))

(assert (= (and b!6495423 (not c!1190591)) b!6495430))

(declare-fun m!7284124 () Bool)

(assert (=> b!6495428 m!7284124))

(declare-fun m!7284126 () Bool)

(assert (=> b!6495423 m!7284126))

(assert (=> b!6495423 m!7284126))

(declare-fun m!7284128 () Bool)

(assert (=> b!6495423 m!7284128))

(declare-fun m!7284130 () Bool)

(assert (=> b!6495430 m!7284130))

(declare-fun m!7284132 () Bool)

(assert (=> d!2038156 m!7284132))

(declare-fun m!7284134 () Bool)

(assert (=> d!2038156 m!7284134))

(declare-fun m!7284136 () Bool)

(assert (=> b!6495424 m!7284136))

(declare-fun m!7284138 () Bool)

(assert (=> b!6495431 m!7284138))

(declare-fun m!7284140 () Bool)

(assert (=> b!6495422 m!7284140))

(assert (=> b!6495425 m!7283710))

(assert (=> b!6494917 d!2038156))

(declare-fun d!2038158 () Bool)

(assert (=> d!2038158 (= (flatMap!1878 lt!2390657 lambda!359804) (choose!48216 lt!2390657 lambda!359804))))

(declare-fun bs!1649711 () Bool)

(assert (= bs!1649711 d!2038158))

(declare-fun m!7284142 () Bool)

(assert (=> bs!1649711 m!7284142))

(assert (=> b!6494878 d!2038158))

(declare-fun d!2038160 () Bool)

(declare-fun c!1190594 () Bool)

(declare-fun e!3936162 () Bool)

(assert (=> d!2038160 (= c!1190594 e!3936162)))

(declare-fun res!2667709 () Bool)

(assert (=> d!2038160 (=> (not res!2667709) (not e!3936162))))

(assert (=> d!2038160 (= res!2667709 ((_ is Cons!65294) (exprs!6257 lt!2390647)))))

(declare-fun e!3936163 () (InoxSet Context!11514))

(assert (=> d!2038160 (= (derivationStepZipperUp!1547 lt!2390647 (h!71743 s!2326)) e!3936163)))

(declare-fun bm!562494 () Bool)

(declare-fun call!562499 () (InoxSet Context!11514))

(assert (=> bm!562494 (= call!562499 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390647)) (Context!11515 (t!379048 (exprs!6257 lt!2390647))) (h!71743 s!2326)))))

(declare-fun b!6495432 () Bool)

(assert (=> b!6495432 (= e!3936162 (nullable!6366 (h!71742 (exprs!6257 lt!2390647))))))

(declare-fun b!6495433 () Bool)

(declare-fun e!3936161 () (InoxSet Context!11514))

(assert (=> b!6495433 (= e!3936161 call!562499)))

(declare-fun b!6495434 () Bool)

(assert (=> b!6495434 (= e!3936163 ((_ map or) call!562499 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390647))) (h!71743 s!2326))))))

(declare-fun b!6495435 () Bool)

(assert (=> b!6495435 (= e!3936163 e!3936161)))

(declare-fun c!1190593 () Bool)

(assert (=> b!6495435 (= c!1190593 ((_ is Cons!65294) (exprs!6257 lt!2390647)))))

(declare-fun b!6495436 () Bool)

(assert (=> b!6495436 (= e!3936161 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038160 res!2667709) b!6495432))

(assert (= (and d!2038160 c!1190594) b!6495434))

(assert (= (and d!2038160 (not c!1190594)) b!6495435))

(assert (= (and b!6495435 c!1190593) b!6495433))

(assert (= (and b!6495435 (not c!1190593)) b!6495436))

(assert (= (or b!6495434 b!6495433) bm!562494))

(declare-fun m!7284144 () Bool)

(assert (=> bm!562494 m!7284144))

(declare-fun m!7284146 () Bool)

(assert (=> b!6495432 m!7284146))

(declare-fun m!7284148 () Bool)

(assert (=> b!6495434 m!7284148))

(assert (=> b!6494878 d!2038160))

(declare-fun d!2038162 () Bool)

(assert (=> d!2038162 (= (flatMap!1878 lt!2390657 lambda!359804) (dynLambda!25935 lambda!359804 lt!2390647))))

(declare-fun lt!2390742 () Unit!158827)

(assert (=> d!2038162 (= lt!2390742 (choose!48215 lt!2390657 lt!2390647 lambda!359804))))

(assert (=> d!2038162 (= lt!2390657 (store ((as const (Array Context!11514 Bool)) false) lt!2390647 true))))

(assert (=> d!2038162 (= (lemmaFlatMapOnSingletonSet!1404 lt!2390657 lt!2390647 lambda!359804) lt!2390742)))

(declare-fun b_lambda!245869 () Bool)

(assert (=> (not b_lambda!245869) (not d!2038162)))

(declare-fun bs!1649712 () Bool)

(assert (= bs!1649712 d!2038162))

(assert (=> bs!1649712 m!7283698))

(declare-fun m!7284150 () Bool)

(assert (=> bs!1649712 m!7284150))

(declare-fun m!7284152 () Bool)

(assert (=> bs!1649712 m!7284152))

(assert (=> bs!1649712 m!7283696))

(assert (=> b!6494878 d!2038162))

(declare-fun bs!1649713 () Bool)

(declare-fun d!2038164 () Bool)

(assert (= bs!1649713 (and d!2038164 b!6494901)))

(declare-fun lambda!359856 () Int)

(assert (=> bs!1649713 (= lambda!359856 lambda!359804)))

(assert (=> d!2038164 true))

(assert (=> d!2038164 (= (derivationStepZipper!2339 lt!2390657 (h!71743 s!2326)) (flatMap!1878 lt!2390657 lambda!359856))))

(declare-fun bs!1649714 () Bool)

(assert (= bs!1649714 d!2038164))

(declare-fun m!7284154 () Bool)

(assert (=> bs!1649714 m!7284154))

(assert (=> b!6494878 d!2038164))

(declare-fun d!2038166 () Bool)

(declare-fun c!1190597 () Bool)

(assert (=> d!2038166 (= c!1190597 (isEmpty!37494 (t!379049 s!2326)))))

(declare-fun e!3936164 () Bool)

(assert (=> d!2038166 (= (matchZipper!2385 lt!2390660 (t!379049 s!2326)) e!3936164)))

(declare-fun b!6495439 () Bool)

(assert (=> b!6495439 (= e!3936164 (nullableZipper!2128 lt!2390660))))

(declare-fun b!6495440 () Bool)

(assert (=> b!6495440 (= e!3936164 (matchZipper!2385 (derivationStepZipper!2339 lt!2390660 (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))))))

(assert (= (and d!2038166 c!1190597) b!6495439))

(assert (= (and d!2038166 (not c!1190597)) b!6495440))

(assert (=> d!2038166 m!7284050))

(declare-fun m!7284156 () Bool)

(assert (=> b!6495439 m!7284156))

(assert (=> b!6495440 m!7284054))

(assert (=> b!6495440 m!7284054))

(declare-fun m!7284158 () Bool)

(assert (=> b!6495440 m!7284158))

(assert (=> b!6495440 m!7284058))

(assert (=> b!6495440 m!7284158))

(assert (=> b!6495440 m!7284058))

(declare-fun m!7284160 () Bool)

(assert (=> b!6495440 m!7284160))

(assert (=> b!6494900 d!2038166))

(declare-fun d!2038168 () Bool)

(declare-fun lt!2390743 () Regex!16373)

(assert (=> d!2038168 (validRegex!8109 lt!2390743)))

(assert (=> d!2038168 (= lt!2390743 (generalisedUnion!2217 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))))))

(assert (=> d!2038168 (= (unfocusZipper!2115 (Cons!65296 lt!2390647 Nil!65296)) lt!2390743)))

(declare-fun bs!1649715 () Bool)

(assert (= bs!1649715 d!2038168))

(declare-fun m!7284162 () Bool)

(assert (=> bs!1649715 m!7284162))

(declare-fun m!7284164 () Bool)

(assert (=> bs!1649715 m!7284164))

(assert (=> bs!1649715 m!7284164))

(declare-fun m!7284166 () Bool)

(assert (=> bs!1649715 m!7284166))

(assert (=> b!6494879 d!2038168))

(declare-fun d!2038170 () Bool)

(declare-fun lt!2390744 () Regex!16373)

(assert (=> d!2038170 (validRegex!8109 lt!2390744)))

(assert (=> d!2038170 (= lt!2390744 (generalisedUnion!2217 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))))))

(assert (=> d!2038170 (= (unfocusZipper!2115 (Cons!65296 lt!2390632 Nil!65296)) lt!2390744)))

(declare-fun bs!1649716 () Bool)

(assert (= bs!1649716 d!2038170))

(declare-fun m!7284168 () Bool)

(assert (=> bs!1649716 m!7284168))

(declare-fun m!7284170 () Bool)

(assert (=> bs!1649716 m!7284170))

(assert (=> bs!1649716 m!7284170))

(declare-fun m!7284172 () Bool)

(assert (=> bs!1649716 m!7284172))

(assert (=> b!6494899 d!2038170))

(declare-fun bs!1649717 () Bool)

(declare-fun d!2038172 () Bool)

(assert (= bs!1649717 (and d!2038172 d!2038112)))

(declare-fun lambda!359857 () Int)

(assert (=> bs!1649717 (= lambda!359857 lambda!359841)))

(declare-fun bs!1649718 () Bool)

(assert (= bs!1649718 (and d!2038172 d!2038156)))

(assert (=> bs!1649718 (= lambda!359857 lambda!359853)))

(assert (=> d!2038172 (= (inv!84179 setElem!44251) (forall!15554 (exprs!6257 setElem!44251) lambda!359857))))

(declare-fun bs!1649719 () Bool)

(assert (= bs!1649719 d!2038172))

(declare-fun m!7284174 () Bool)

(assert (=> bs!1649719 m!7284174))

(assert (=> setNonEmpty!44251 d!2038172))

(declare-fun d!2038174 () Bool)

(assert (=> d!2038174 (= (flatMap!1878 z!1189 lambda!359804) (dynLambda!25935 lambda!359804 (h!71744 zl!343)))))

(declare-fun lt!2390745 () Unit!158827)

(assert (=> d!2038174 (= lt!2390745 (choose!48215 z!1189 (h!71744 zl!343) lambda!359804))))

(assert (=> d!2038174 (= z!1189 (store ((as const (Array Context!11514 Bool)) false) (h!71744 zl!343) true))))

(assert (=> d!2038174 (= (lemmaFlatMapOnSingletonSet!1404 z!1189 (h!71744 zl!343) lambda!359804) lt!2390745)))

(declare-fun b_lambda!245871 () Bool)

(assert (=> (not b_lambda!245871) (not d!2038174)))

(declare-fun bs!1649720 () Bool)

(assert (= bs!1649720 d!2038174))

(assert (=> bs!1649720 m!7283644))

(declare-fun m!7284176 () Bool)

(assert (=> bs!1649720 m!7284176))

(declare-fun m!7284178 () Bool)

(assert (=> bs!1649720 m!7284178))

(declare-fun m!7284180 () Bool)

(assert (=> bs!1649720 m!7284180))

(assert (=> b!6494901 d!2038174))

(declare-fun d!2038176 () Bool)

(assert (=> d!2038176 (= (flatMap!1878 z!1189 lambda!359804) (choose!48216 z!1189 lambda!359804))))

(declare-fun bs!1649721 () Bool)

(assert (= bs!1649721 d!2038176))

(declare-fun m!7284182 () Bool)

(assert (=> bs!1649721 m!7284182))

(assert (=> b!6494901 d!2038176))

(declare-fun d!2038178 () Bool)

(assert (=> d!2038178 (= (nullable!6366 (h!71742 (exprs!6257 (h!71744 zl!343)))) (nullableFct!2302 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun bs!1649722 () Bool)

(assert (= bs!1649722 d!2038178))

(declare-fun m!7284184 () Bool)

(assert (=> bs!1649722 m!7284184))

(assert (=> b!6494901 d!2038178))

(declare-fun d!2038180 () Bool)

(declare-fun c!1190599 () Bool)

(declare-fun e!3936166 () Bool)

(assert (=> d!2038180 (= c!1190599 e!3936166)))

(declare-fun res!2667710 () Bool)

(assert (=> d!2038180 (=> (not res!2667710) (not e!3936166))))

(assert (=> d!2038180 (= res!2667710 ((_ is Cons!65294) (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))

(declare-fun e!3936167 () (InoxSet Context!11514))

(assert (=> d!2038180 (= (derivationStepZipperUp!1547 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))) (h!71743 s!2326)) e!3936167)))

(declare-fun bm!562495 () Bool)

(declare-fun call!562500 () (InoxSet Context!11514))

(assert (=> bm!562495 (= call!562500 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (h!71743 s!2326)))))

(declare-fun b!6495441 () Bool)

(assert (=> b!6495441 (= e!3936166 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))

(declare-fun b!6495442 () Bool)

(declare-fun e!3936165 () (InoxSet Context!11514))

(assert (=> b!6495442 (= e!3936165 call!562500)))

(declare-fun b!6495443 () Bool)

(assert (=> b!6495443 (= e!3936167 ((_ map or) call!562500 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (h!71743 s!2326))))))

(declare-fun b!6495444 () Bool)

(assert (=> b!6495444 (= e!3936167 e!3936165)))

(declare-fun c!1190598 () Bool)

(assert (=> b!6495444 (= c!1190598 ((_ is Cons!65294) (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))

(declare-fun b!6495445 () Bool)

(assert (=> b!6495445 (= e!3936165 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038180 res!2667710) b!6495441))

(assert (= (and d!2038180 c!1190599) b!6495443))

(assert (= (and d!2038180 (not c!1190599)) b!6495444))

(assert (= (and b!6495444 c!1190598) b!6495442))

(assert (= (and b!6495444 (not c!1190598)) b!6495445))

(assert (= (or b!6495443 b!6495442) bm!562495))

(declare-fun m!7284186 () Bool)

(assert (=> bm!562495 m!7284186))

(declare-fun m!7284188 () Bool)

(assert (=> b!6495441 m!7284188))

(declare-fun m!7284190 () Bool)

(assert (=> b!6495443 m!7284190))

(assert (=> b!6494901 d!2038180))

(declare-fun b!6495468 () Bool)

(declare-fun e!3936182 () (InoxSet Context!11514))

(assert (=> b!6495468 (= e!3936182 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562508 () Bool)

(declare-fun call!562515 () List!65418)

(declare-fun call!562516 () List!65418)

(assert (=> bm!562508 (= call!562515 call!562516)))

(declare-fun b!6495469 () Bool)

(declare-fun e!3936181 () (InoxSet Context!11514))

(declare-fun e!3936183 () (InoxSet Context!11514))

(assert (=> b!6495469 (= e!3936181 e!3936183)))

(declare-fun c!1190613 () Bool)

(assert (=> b!6495469 (= c!1190613 ((_ is Concat!25218) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6495470 () Bool)

(declare-fun e!3936184 () (InoxSet Context!11514))

(assert (=> b!6495470 (= e!3936184 (store ((as const (Array Context!11514 Bool)) false) lt!2390633 true))))

(declare-fun bm!562509 () Bool)

(declare-fun c!1190610 () Bool)

(declare-fun $colon$colon!2224 (List!65418 Regex!16373) List!65418)

(assert (=> bm!562509 (= call!562516 ($colon$colon!2224 (exprs!6257 lt!2390633) (ite (or c!1190610 c!1190613) (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (h!71742 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun d!2038182 () Bool)

(declare-fun c!1190612 () Bool)

(assert (=> d!2038182 (= c!1190612 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))) (= (c!1190447 (h!71742 (exprs!6257 (h!71744 zl!343)))) (h!71743 s!2326))))))

(assert (=> d!2038182 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (h!71744 zl!343))) lt!2390633 (h!71743 s!2326)) e!3936184)))

(declare-fun b!6495471 () Bool)

(declare-fun e!3936180 () (InoxSet Context!11514))

(assert (=> b!6495471 (= e!3936184 e!3936180)))

(declare-fun c!1190611 () Bool)

(assert (=> b!6495471 (= c!1190611 ((_ is Union!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun bm!562510 () Bool)

(declare-fun call!562518 () (InoxSet Context!11514))

(declare-fun call!562513 () (InoxSet Context!11514))

(assert (=> bm!562510 (= call!562518 call!562513)))

(declare-fun b!6495472 () Bool)

(declare-fun call!562514 () (InoxSet Context!11514))

(assert (=> b!6495472 (= e!3936183 call!562514)))

(declare-fun bm!562511 () Bool)

(assert (=> bm!562511 (= call!562514 call!562518)))

(declare-fun bm!562512 () Bool)

(declare-fun call!562517 () (InoxSet Context!11514))

(assert (=> bm!562512 (= call!562517 (derivationStepZipperDown!1621 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))) (ite c!1190611 lt!2390633 (Context!11515 call!562516)) (h!71743 s!2326)))))

(declare-fun bm!562513 () Bool)

(assert (=> bm!562513 (= call!562513 (derivationStepZipperDown!1621 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))) (ite (or c!1190611 c!1190610) lt!2390633 (Context!11515 call!562515)) (h!71743 s!2326)))))

(declare-fun b!6495473 () Bool)

(declare-fun e!3936185 () Bool)

(assert (=> b!6495473 (= e!3936185 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun b!6495474 () Bool)

(assert (=> b!6495474 (= e!3936180 ((_ map or) call!562517 call!562513))))

(declare-fun b!6495475 () Bool)

(declare-fun c!1190614 () Bool)

(assert (=> b!6495475 (= c!1190614 ((_ is Star!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6495475 (= e!3936183 e!3936182)))

(declare-fun b!6495476 () Bool)

(assert (=> b!6495476 (= e!3936181 ((_ map or) call!562517 call!562518))))

(declare-fun b!6495477 () Bool)

(assert (=> b!6495477 (= e!3936182 call!562514)))

(declare-fun b!6495478 () Bool)

(assert (=> b!6495478 (= c!1190610 e!3936185)))

(declare-fun res!2667713 () Bool)

(assert (=> b!6495478 (=> (not res!2667713) (not e!3936185))))

(assert (=> b!6495478 (= res!2667713 ((_ is Concat!25218) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6495478 (= e!3936180 e!3936181)))

(assert (= (and d!2038182 c!1190612) b!6495470))

(assert (= (and d!2038182 (not c!1190612)) b!6495471))

(assert (= (and b!6495471 c!1190611) b!6495474))

(assert (= (and b!6495471 (not c!1190611)) b!6495478))

(assert (= (and b!6495478 res!2667713) b!6495473))

(assert (= (and b!6495478 c!1190610) b!6495476))

(assert (= (and b!6495478 (not c!1190610)) b!6495469))

(assert (= (and b!6495469 c!1190613) b!6495472))

(assert (= (and b!6495469 (not c!1190613)) b!6495475))

(assert (= (and b!6495475 c!1190614) b!6495477))

(assert (= (and b!6495475 (not c!1190614)) b!6495468))

(assert (= (or b!6495472 b!6495477) bm!562508))

(assert (= (or b!6495472 b!6495477) bm!562511))

(assert (= (or b!6495476 bm!562508) bm!562509))

(assert (= (or b!6495476 bm!562511) bm!562510))

(assert (= (or b!6495474 bm!562510) bm!562513))

(assert (= (or b!6495474 b!6495476) bm!562512))

(declare-fun m!7284192 () Bool)

(assert (=> bm!562509 m!7284192))

(declare-fun m!7284194 () Bool)

(assert (=> bm!562513 m!7284194))

(declare-fun m!7284196 () Bool)

(assert (=> b!6495470 m!7284196))

(declare-fun m!7284198 () Bool)

(assert (=> b!6495473 m!7284198))

(declare-fun m!7284200 () Bool)

(assert (=> bm!562512 m!7284200))

(assert (=> b!6494901 d!2038182))

(declare-fun d!2038184 () Bool)

(declare-fun c!1190616 () Bool)

(declare-fun e!3936187 () Bool)

(assert (=> d!2038184 (= c!1190616 e!3936187)))

(declare-fun res!2667714 () Bool)

(assert (=> d!2038184 (=> (not res!2667714) (not e!3936187))))

(assert (=> d!2038184 (= res!2667714 ((_ is Cons!65294) (exprs!6257 lt!2390633)))))

(declare-fun e!3936188 () (InoxSet Context!11514))

(assert (=> d!2038184 (= (derivationStepZipperUp!1547 lt!2390633 (h!71743 s!2326)) e!3936188)))

(declare-fun bm!562514 () Bool)

(declare-fun call!562519 () (InoxSet Context!11514))

(assert (=> bm!562514 (= call!562519 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390633)) (Context!11515 (t!379048 (exprs!6257 lt!2390633))) (h!71743 s!2326)))))

(declare-fun b!6495479 () Bool)

(assert (=> b!6495479 (= e!3936187 (nullable!6366 (h!71742 (exprs!6257 lt!2390633))))))

(declare-fun b!6495480 () Bool)

(declare-fun e!3936186 () (InoxSet Context!11514))

(assert (=> b!6495480 (= e!3936186 call!562519)))

(declare-fun b!6495481 () Bool)

(assert (=> b!6495481 (= e!3936188 ((_ map or) call!562519 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390633))) (h!71743 s!2326))))))

(declare-fun b!6495482 () Bool)

(assert (=> b!6495482 (= e!3936188 e!3936186)))

(declare-fun c!1190615 () Bool)

(assert (=> b!6495482 (= c!1190615 ((_ is Cons!65294) (exprs!6257 lt!2390633)))))

(declare-fun b!6495483 () Bool)

(assert (=> b!6495483 (= e!3936186 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038184 res!2667714) b!6495479))

(assert (= (and d!2038184 c!1190616) b!6495481))

(assert (= (and d!2038184 (not c!1190616)) b!6495482))

(assert (= (and b!6495482 c!1190615) b!6495480))

(assert (= (and b!6495482 (not c!1190615)) b!6495483))

(assert (= (or b!6495481 b!6495480) bm!562514))

(declare-fun m!7284202 () Bool)

(assert (=> bm!562514 m!7284202))

(declare-fun m!7284204 () Bool)

(assert (=> b!6495479 m!7284204))

(declare-fun m!7284206 () Bool)

(assert (=> b!6495481 m!7284206))

(assert (=> b!6494901 d!2038184))

(declare-fun d!2038186 () Bool)

(declare-fun c!1190618 () Bool)

(declare-fun e!3936190 () Bool)

(assert (=> d!2038186 (= c!1190618 e!3936190)))

(declare-fun res!2667715 () Bool)

(assert (=> d!2038186 (=> (not res!2667715) (not e!3936190))))

(assert (=> d!2038186 (= res!2667715 ((_ is Cons!65294) (exprs!6257 (h!71744 zl!343))))))

(declare-fun e!3936191 () (InoxSet Context!11514))

(assert (=> d!2038186 (= (derivationStepZipperUp!1547 (h!71744 zl!343) (h!71743 s!2326)) e!3936191)))

(declare-fun bm!562515 () Bool)

(declare-fun call!562520 () (InoxSet Context!11514))

(assert (=> bm!562515 (= call!562520 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (h!71744 zl!343))) (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) (h!71743 s!2326)))))

(declare-fun b!6495484 () Bool)

(assert (=> b!6495484 (= e!3936190 (nullable!6366 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6495485 () Bool)

(declare-fun e!3936189 () (InoxSet Context!11514))

(assert (=> b!6495485 (= e!3936189 call!562520)))

(declare-fun b!6495486 () Bool)

(assert (=> b!6495486 (= e!3936191 ((_ map or) call!562520 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) (h!71743 s!2326))))))

(declare-fun b!6495487 () Bool)

(assert (=> b!6495487 (= e!3936191 e!3936189)))

(declare-fun c!1190617 () Bool)

(assert (=> b!6495487 (= c!1190617 ((_ is Cons!65294) (exprs!6257 (h!71744 zl!343))))))

(declare-fun b!6495488 () Bool)

(assert (=> b!6495488 (= e!3936189 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038186 res!2667715) b!6495484))

(assert (= (and d!2038186 c!1190618) b!6495486))

(assert (= (and d!2038186 (not c!1190618)) b!6495487))

(assert (= (and b!6495487 c!1190617) b!6495485))

(assert (= (and b!6495487 (not c!1190617)) b!6495488))

(assert (= (or b!6495486 b!6495485) bm!562515))

(declare-fun m!7284208 () Bool)

(assert (=> bm!562515 m!7284208))

(assert (=> b!6495484 m!7283638))

(declare-fun m!7284210 () Bool)

(assert (=> b!6495486 m!7284210))

(assert (=> b!6494901 d!2038186))

(declare-fun d!2038188 () Bool)

(declare-fun e!3936194 () Bool)

(assert (=> d!2038188 (= (matchZipper!2385 ((_ map or) lt!2390644 lt!2390660) (t!379049 s!2326)) e!3936194)))

(declare-fun res!2667718 () Bool)

(assert (=> d!2038188 (=> res!2667718 e!3936194)))

(assert (=> d!2038188 (= res!2667718 (matchZipper!2385 lt!2390644 (t!379049 s!2326)))))

(declare-fun lt!2390748 () Unit!158827)

(declare-fun choose!48217 ((InoxSet Context!11514) (InoxSet Context!11514) List!65419) Unit!158827)

(assert (=> d!2038188 (= lt!2390748 (choose!48217 lt!2390644 lt!2390660 (t!379049 s!2326)))))

(assert (=> d!2038188 (= (lemmaZipperConcatMatchesSameAsBothZippers!1204 lt!2390644 lt!2390660 (t!379049 s!2326)) lt!2390748)))

(declare-fun b!6495491 () Bool)

(assert (=> b!6495491 (= e!3936194 (matchZipper!2385 lt!2390660 (t!379049 s!2326)))))

(assert (= (and d!2038188 (not res!2667718)) b!6495491))

(assert (=> d!2038188 m!7283714))

(assert (=> d!2038188 m!7283706))

(declare-fun m!7284212 () Bool)

(assert (=> d!2038188 m!7284212))

(assert (=> b!6495491 m!7283694))

(assert (=> b!6494880 d!2038188))

(assert (=> b!6494880 d!2038128))

(declare-fun d!2038190 () Bool)

(declare-fun c!1190619 () Bool)

(assert (=> d!2038190 (= c!1190619 (isEmpty!37494 (t!379049 s!2326)))))

(declare-fun e!3936195 () Bool)

(assert (=> d!2038190 (= (matchZipper!2385 ((_ map or) lt!2390644 lt!2390660) (t!379049 s!2326)) e!3936195)))

(declare-fun b!6495492 () Bool)

(assert (=> b!6495492 (= e!3936195 (nullableZipper!2128 ((_ map or) lt!2390644 lt!2390660)))))

(declare-fun b!6495493 () Bool)

(assert (=> b!6495493 (= e!3936195 (matchZipper!2385 (derivationStepZipper!2339 ((_ map or) lt!2390644 lt!2390660) (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))))))

(assert (= (and d!2038190 c!1190619) b!6495492))

(assert (= (and d!2038190 (not c!1190619)) b!6495493))

(assert (=> d!2038190 m!7284050))

(declare-fun m!7284214 () Bool)

(assert (=> b!6495492 m!7284214))

(assert (=> b!6495493 m!7284054))

(assert (=> b!6495493 m!7284054))

(declare-fun m!7284216 () Bool)

(assert (=> b!6495493 m!7284216))

(assert (=> b!6495493 m!7284058))

(assert (=> b!6495493 m!7284216))

(assert (=> b!6495493 m!7284058))

(declare-fun m!7284218 () Bool)

(assert (=> b!6495493 m!7284218))

(assert (=> b!6494880 d!2038190))

(declare-fun bs!1649723 () Bool)

(declare-fun d!2038192 () Bool)

(assert (= bs!1649723 (and d!2038192 d!2038112)))

(declare-fun lambda!359860 () Int)

(assert (=> bs!1649723 (= lambda!359860 lambda!359841)))

(declare-fun bs!1649724 () Bool)

(assert (= bs!1649724 (and d!2038192 d!2038156)))

(assert (=> bs!1649724 (= lambda!359860 lambda!359853)))

(declare-fun bs!1649725 () Bool)

(assert (= bs!1649725 (and d!2038192 d!2038172)))

(assert (=> bs!1649725 (= lambda!359860 lambda!359857)))

(declare-fun b!6495514 () Bool)

(declare-fun e!3936210 () Regex!16373)

(assert (=> b!6495514 (= e!3936210 (Union!16373 (h!71742 (unfocusZipperList!1794 zl!343)) (generalisedUnion!2217 (t!379048 (unfocusZipperList!1794 zl!343)))))))

(declare-fun b!6495515 () Bool)

(declare-fun e!3936209 () Bool)

(declare-fun lt!2390751 () Regex!16373)

(declare-fun isUnion!1201 (Regex!16373) Bool)

(assert (=> b!6495515 (= e!3936209 (isUnion!1201 lt!2390751))))

(declare-fun e!3936212 () Bool)

(assert (=> d!2038192 e!3936212))

(declare-fun res!2667724 () Bool)

(assert (=> d!2038192 (=> (not res!2667724) (not e!3936212))))

(assert (=> d!2038192 (= res!2667724 (validRegex!8109 lt!2390751))))

(declare-fun e!3936211 () Regex!16373)

(assert (=> d!2038192 (= lt!2390751 e!3936211)))

(declare-fun c!1190631 () Bool)

(declare-fun e!3936213 () Bool)

(assert (=> d!2038192 (= c!1190631 e!3936213)))

(declare-fun res!2667723 () Bool)

(assert (=> d!2038192 (=> (not res!2667723) (not e!3936213))))

(assert (=> d!2038192 (= res!2667723 ((_ is Cons!65294) (unfocusZipperList!1794 zl!343)))))

(assert (=> d!2038192 (forall!15554 (unfocusZipperList!1794 zl!343) lambda!359860)))

(assert (=> d!2038192 (= (generalisedUnion!2217 (unfocusZipperList!1794 zl!343)) lt!2390751)))

(declare-fun b!6495516 () Bool)

(assert (=> b!6495516 (= e!3936213 (isEmpty!37489 (t!379048 (unfocusZipperList!1794 zl!343))))))

(declare-fun b!6495517 () Bool)

(declare-fun e!3936208 () Bool)

(assert (=> b!6495517 (= e!3936208 e!3936209)))

(declare-fun c!1190628 () Bool)

(assert (=> b!6495517 (= c!1190628 (isEmpty!37489 (tail!12303 (unfocusZipperList!1794 zl!343))))))

(declare-fun b!6495518 () Bool)

(declare-fun isEmptyLang!1771 (Regex!16373) Bool)

(assert (=> b!6495518 (= e!3936208 (isEmptyLang!1771 lt!2390751))))

(declare-fun b!6495519 () Bool)

(assert (=> b!6495519 (= e!3936212 e!3936208)))

(declare-fun c!1190629 () Bool)

(assert (=> b!6495519 (= c!1190629 (isEmpty!37489 (unfocusZipperList!1794 zl!343)))))

(declare-fun b!6495520 () Bool)

(assert (=> b!6495520 (= e!3936211 e!3936210)))

(declare-fun c!1190630 () Bool)

(assert (=> b!6495520 (= c!1190630 ((_ is Cons!65294) (unfocusZipperList!1794 zl!343)))))

(declare-fun b!6495521 () Bool)

(assert (=> b!6495521 (= e!3936209 (= lt!2390751 (head!13218 (unfocusZipperList!1794 zl!343))))))

(declare-fun b!6495522 () Bool)

(assert (=> b!6495522 (= e!3936210 EmptyLang!16373)))

(declare-fun b!6495523 () Bool)

(assert (=> b!6495523 (= e!3936211 (h!71742 (unfocusZipperList!1794 zl!343)))))

(assert (= (and d!2038192 res!2667723) b!6495516))

(assert (= (and d!2038192 c!1190631) b!6495523))

(assert (= (and d!2038192 (not c!1190631)) b!6495520))

(assert (= (and b!6495520 c!1190630) b!6495514))

(assert (= (and b!6495520 (not c!1190630)) b!6495522))

(assert (= (and d!2038192 res!2667724) b!6495519))

(assert (= (and b!6495519 c!1190629) b!6495518))

(assert (= (and b!6495519 (not c!1190629)) b!6495517))

(assert (= (and b!6495517 c!1190628) b!6495521))

(assert (= (and b!6495517 (not c!1190628)) b!6495515))

(assert (=> b!6495521 m!7283674))

(declare-fun m!7284220 () Bool)

(assert (=> b!6495521 m!7284220))

(declare-fun m!7284222 () Bool)

(assert (=> b!6495515 m!7284222))

(assert (=> b!6495517 m!7283674))

(declare-fun m!7284224 () Bool)

(assert (=> b!6495517 m!7284224))

(assert (=> b!6495517 m!7284224))

(declare-fun m!7284226 () Bool)

(assert (=> b!6495517 m!7284226))

(assert (=> b!6495519 m!7283674))

(declare-fun m!7284228 () Bool)

(assert (=> b!6495519 m!7284228))

(declare-fun m!7284230 () Bool)

(assert (=> d!2038192 m!7284230))

(assert (=> d!2038192 m!7283674))

(declare-fun m!7284232 () Bool)

(assert (=> d!2038192 m!7284232))

(declare-fun m!7284234 () Bool)

(assert (=> b!6495516 m!7284234))

(declare-fun m!7284236 () Bool)

(assert (=> b!6495518 m!7284236))

(declare-fun m!7284238 () Bool)

(assert (=> b!6495514 m!7284238))

(assert (=> b!6494892 d!2038192))

(declare-fun bs!1649726 () Bool)

(declare-fun d!2038194 () Bool)

(assert (= bs!1649726 (and d!2038194 d!2038112)))

(declare-fun lambda!359863 () Int)

(assert (=> bs!1649726 (= lambda!359863 lambda!359841)))

(declare-fun bs!1649727 () Bool)

(assert (= bs!1649727 (and d!2038194 d!2038156)))

(assert (=> bs!1649727 (= lambda!359863 lambda!359853)))

(declare-fun bs!1649728 () Bool)

(assert (= bs!1649728 (and d!2038194 d!2038172)))

(assert (=> bs!1649728 (= lambda!359863 lambda!359857)))

(declare-fun bs!1649729 () Bool)

(assert (= bs!1649729 (and d!2038194 d!2038192)))

(assert (=> bs!1649729 (= lambda!359863 lambda!359860)))

(declare-fun lt!2390754 () List!65418)

(assert (=> d!2038194 (forall!15554 lt!2390754 lambda!359863)))

(declare-fun e!3936216 () List!65418)

(assert (=> d!2038194 (= lt!2390754 e!3936216)))

(declare-fun c!1190634 () Bool)

(assert (=> d!2038194 (= c!1190634 ((_ is Cons!65296) zl!343))))

(assert (=> d!2038194 (= (unfocusZipperList!1794 zl!343) lt!2390754)))

(declare-fun b!6495528 () Bool)

(assert (=> b!6495528 (= e!3936216 (Cons!65294 (generalisedConcat!1970 (exprs!6257 (h!71744 zl!343))) (unfocusZipperList!1794 (t!379050 zl!343))))))

(declare-fun b!6495529 () Bool)

(assert (=> b!6495529 (= e!3936216 Nil!65294)))

(assert (= (and d!2038194 c!1190634) b!6495528))

(assert (= (and d!2038194 (not c!1190634)) b!6495529))

(declare-fun m!7284240 () Bool)

(assert (=> d!2038194 m!7284240))

(assert (=> b!6495528 m!7283632))

(declare-fun m!7284242 () Bool)

(assert (=> b!6495528 m!7284242))

(assert (=> b!6494892 d!2038194))

(assert (=> b!6494912 d!2038166))

(declare-fun b!6495530 () Bool)

(declare-fun e!3936219 () (InoxSet Context!11514))

(assert (=> b!6495530 (= e!3936219 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562516 () Bool)

(declare-fun call!562523 () List!65418)

(declare-fun call!562524 () List!65418)

(assert (=> bm!562516 (= call!562523 call!562524)))

(declare-fun b!6495531 () Bool)

(declare-fun e!3936218 () (InoxSet Context!11514))

(declare-fun e!3936220 () (InoxSet Context!11514))

(assert (=> b!6495531 (= e!3936218 e!3936220)))

(declare-fun c!1190638 () Bool)

(assert (=> b!6495531 (= c!1190638 ((_ is Concat!25218) (reg!16702 (regOne!33258 r!7292))))))

(declare-fun b!6495532 () Bool)

(declare-fun e!3936221 () (InoxSet Context!11514))

(assert (=> b!6495532 (= e!3936221 (store ((as const (Array Context!11514 Bool)) false) lt!2390632 true))))

(declare-fun bm!562517 () Bool)

(declare-fun c!1190635 () Bool)

(assert (=> bm!562517 (= call!562524 ($colon$colon!2224 (exprs!6257 lt!2390632) (ite (or c!1190635 c!1190638) (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (regOne!33258 r!7292)))))))

(declare-fun d!2038196 () Bool)

(declare-fun c!1190637 () Bool)

(assert (=> d!2038196 (= c!1190637 (and ((_ is ElementMatch!16373) (reg!16702 (regOne!33258 r!7292))) (= (c!1190447 (reg!16702 (regOne!33258 r!7292))) (h!71743 s!2326))))))

(assert (=> d!2038196 (= (derivationStepZipperDown!1621 (reg!16702 (regOne!33258 r!7292)) lt!2390632 (h!71743 s!2326)) e!3936221)))

(declare-fun b!6495533 () Bool)

(declare-fun e!3936217 () (InoxSet Context!11514))

(assert (=> b!6495533 (= e!3936221 e!3936217)))

(declare-fun c!1190636 () Bool)

(assert (=> b!6495533 (= c!1190636 ((_ is Union!16373) (reg!16702 (regOne!33258 r!7292))))))

(declare-fun bm!562518 () Bool)

(declare-fun call!562526 () (InoxSet Context!11514))

(declare-fun call!562521 () (InoxSet Context!11514))

(assert (=> bm!562518 (= call!562526 call!562521)))

(declare-fun b!6495534 () Bool)

(declare-fun call!562522 () (InoxSet Context!11514))

(assert (=> b!6495534 (= e!3936220 call!562522)))

(declare-fun bm!562519 () Bool)

(assert (=> bm!562519 (= call!562522 call!562526)))

(declare-fun call!562525 () (InoxSet Context!11514))

(declare-fun bm!562520 () Bool)

(assert (=> bm!562520 (= call!562525 (derivationStepZipperDown!1621 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292)))) (ite c!1190636 lt!2390632 (Context!11515 call!562524)) (h!71743 s!2326)))))

(declare-fun bm!562521 () Bool)

(assert (=> bm!562521 (= call!562521 (derivationStepZipperDown!1621 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292)))))) (ite (or c!1190636 c!1190635) lt!2390632 (Context!11515 call!562523)) (h!71743 s!2326)))))

(declare-fun b!6495535 () Bool)

(declare-fun e!3936222 () Bool)

(assert (=> b!6495535 (= e!3936222 (nullable!6366 (regOne!33258 (reg!16702 (regOne!33258 r!7292)))))))

(declare-fun b!6495536 () Bool)

(assert (=> b!6495536 (= e!3936217 ((_ map or) call!562525 call!562521))))

(declare-fun b!6495537 () Bool)

(declare-fun c!1190639 () Bool)

(assert (=> b!6495537 (= c!1190639 ((_ is Star!16373) (reg!16702 (regOne!33258 r!7292))))))

(assert (=> b!6495537 (= e!3936220 e!3936219)))

(declare-fun b!6495538 () Bool)

(assert (=> b!6495538 (= e!3936218 ((_ map or) call!562525 call!562526))))

(declare-fun b!6495539 () Bool)

(assert (=> b!6495539 (= e!3936219 call!562522)))

(declare-fun b!6495540 () Bool)

(assert (=> b!6495540 (= c!1190635 e!3936222)))

(declare-fun res!2667725 () Bool)

(assert (=> b!6495540 (=> (not res!2667725) (not e!3936222))))

(assert (=> b!6495540 (= res!2667725 ((_ is Concat!25218) (reg!16702 (regOne!33258 r!7292))))))

(assert (=> b!6495540 (= e!3936217 e!3936218)))

(assert (= (and d!2038196 c!1190637) b!6495532))

(assert (= (and d!2038196 (not c!1190637)) b!6495533))

(assert (= (and b!6495533 c!1190636) b!6495536))

(assert (= (and b!6495533 (not c!1190636)) b!6495540))

(assert (= (and b!6495540 res!2667725) b!6495535))

(assert (= (and b!6495540 c!1190635) b!6495538))

(assert (= (and b!6495540 (not c!1190635)) b!6495531))

(assert (= (and b!6495531 c!1190638) b!6495534))

(assert (= (and b!6495531 (not c!1190638)) b!6495537))

(assert (= (and b!6495537 c!1190639) b!6495539))

(assert (= (and b!6495537 (not c!1190639)) b!6495530))

(assert (= (or b!6495534 b!6495539) bm!562516))

(assert (= (or b!6495534 b!6495539) bm!562519))

(assert (= (or b!6495538 bm!562516) bm!562517))

(assert (= (or b!6495538 bm!562519) bm!562518))

(assert (= (or b!6495536 bm!562518) bm!562521))

(assert (= (or b!6495536 b!6495538) bm!562520))

(declare-fun m!7284244 () Bool)

(assert (=> bm!562517 m!7284244))

(declare-fun m!7284246 () Bool)

(assert (=> bm!562521 m!7284246))

(assert (=> b!6495532 m!7283654))

(declare-fun m!7284248 () Bool)

(assert (=> b!6495535 m!7284248))

(declare-fun m!7284250 () Bool)

(assert (=> bm!562520 m!7284250))

(assert (=> b!6494891 d!2038196))

(declare-fun bs!1649730 () Bool)

(declare-fun b!6495576 () Bool)

(assert (= bs!1649730 (and b!6495576 b!6494886)))

(declare-fun lambda!359868 () Int)

(assert (=> bs!1649730 (not (= lambda!359868 lambda!359802))))

(assert (=> bs!1649730 (not (= lambda!359868 lambda!359803))))

(declare-fun bs!1649731 () Bool)

(assert (= bs!1649731 (and b!6495576 d!2038120)))

(assert (=> bs!1649731 (not (= lambda!359868 lambda!359844))))

(declare-fun bs!1649732 () Bool)

(assert (= bs!1649732 (and b!6495576 d!2038122)))

(assert (=> bs!1649732 (not (= lambda!359868 lambda!359850))))

(assert (=> bs!1649732 (not (= lambda!359868 lambda!359849))))

(assert (=> b!6495576 true))

(assert (=> b!6495576 true))

(declare-fun bs!1649733 () Bool)

(declare-fun b!6495582 () Bool)

(assert (= bs!1649733 (and b!6495582 b!6495576)))

(declare-fun lambda!359869 () Int)

(assert (=> bs!1649733 (not (= lambda!359869 lambda!359868))))

(declare-fun bs!1649734 () Bool)

(assert (= bs!1649734 (and b!6495582 b!6494886)))

(assert (=> bs!1649734 (not (= lambda!359869 lambda!359802))))

(assert (=> bs!1649734 (= lambda!359869 lambda!359803)))

(declare-fun bs!1649735 () Bool)

(assert (= bs!1649735 (and b!6495582 d!2038120)))

(assert (=> bs!1649735 (not (= lambda!359869 lambda!359844))))

(declare-fun bs!1649736 () Bool)

(assert (= bs!1649736 (and b!6495582 d!2038122)))

(assert (=> bs!1649736 (= lambda!359869 lambda!359850)))

(assert (=> bs!1649736 (not (= lambda!359869 lambda!359849))))

(assert (=> b!6495582 true))

(assert (=> b!6495582 true))

(declare-fun bm!562526 () Bool)

(declare-fun call!562532 () Bool)

(assert (=> bm!562526 (= call!562532 (isEmpty!37494 s!2326))))

(declare-fun b!6495573 () Bool)

(declare-fun e!3936247 () Bool)

(assert (=> b!6495573 (= e!3936247 (= s!2326 (Cons!65295 (c!1190447 r!7292) Nil!65295)))))

(declare-fun d!2038198 () Bool)

(declare-fun c!1190649 () Bool)

(assert (=> d!2038198 (= c!1190649 ((_ is EmptyExpr!16373) r!7292))))

(declare-fun e!3936243 () Bool)

(assert (=> d!2038198 (= (matchRSpec!3474 r!7292 s!2326) e!3936243)))

(declare-fun b!6495574 () Bool)

(declare-fun e!3936242 () Bool)

(assert (=> b!6495574 (= e!3936243 e!3936242)))

(declare-fun res!2667744 () Bool)

(assert (=> b!6495574 (= res!2667744 (not ((_ is EmptyLang!16373) r!7292)))))

(assert (=> b!6495574 (=> (not res!2667744) (not e!3936242))))

(declare-fun b!6495575 () Bool)

(declare-fun e!3936244 () Bool)

(declare-fun e!3936245 () Bool)

(assert (=> b!6495575 (= e!3936244 e!3936245)))

(declare-fun res!2667743 () Bool)

(assert (=> b!6495575 (= res!2667743 (matchRSpec!3474 (regOne!33259 r!7292) s!2326))))

(assert (=> b!6495575 (=> res!2667743 e!3936245)))

(declare-fun e!3936241 () Bool)

(declare-fun call!562531 () Bool)

(assert (=> b!6495576 (= e!3936241 call!562531)))

(declare-fun b!6495577 () Bool)

(assert (=> b!6495577 (= e!3936243 call!562532)))

(declare-fun b!6495578 () Bool)

(declare-fun c!1190648 () Bool)

(assert (=> b!6495578 (= c!1190648 ((_ is ElementMatch!16373) r!7292))))

(assert (=> b!6495578 (= e!3936242 e!3936247)))

(declare-fun b!6495579 () Bool)

(declare-fun res!2667742 () Bool)

(assert (=> b!6495579 (=> res!2667742 e!3936241)))

(assert (=> b!6495579 (= res!2667742 call!562532)))

(declare-fun e!3936246 () Bool)

(assert (=> b!6495579 (= e!3936246 e!3936241)))

(declare-fun b!6495580 () Bool)

(assert (=> b!6495580 (= e!3936244 e!3936246)))

(declare-fun c!1190651 () Bool)

(assert (=> b!6495580 (= c!1190651 ((_ is Star!16373) r!7292))))

(declare-fun bm!562527 () Bool)

(assert (=> bm!562527 (= call!562531 (Exists!3443 (ite c!1190651 lambda!359868 lambda!359869)))))

(declare-fun b!6495581 () Bool)

(declare-fun c!1190650 () Bool)

(assert (=> b!6495581 (= c!1190650 ((_ is Union!16373) r!7292))))

(assert (=> b!6495581 (= e!3936247 e!3936244)))

(assert (=> b!6495582 (= e!3936246 call!562531)))

(declare-fun b!6495583 () Bool)

(assert (=> b!6495583 (= e!3936245 (matchRSpec!3474 (regTwo!33259 r!7292) s!2326))))

(assert (= (and d!2038198 c!1190649) b!6495577))

(assert (= (and d!2038198 (not c!1190649)) b!6495574))

(assert (= (and b!6495574 res!2667744) b!6495578))

(assert (= (and b!6495578 c!1190648) b!6495573))

(assert (= (and b!6495578 (not c!1190648)) b!6495581))

(assert (= (and b!6495581 c!1190650) b!6495575))

(assert (= (and b!6495581 (not c!1190650)) b!6495580))

(assert (= (and b!6495575 (not res!2667743)) b!6495583))

(assert (= (and b!6495580 c!1190651) b!6495579))

(assert (= (and b!6495580 (not c!1190651)) b!6495582))

(assert (= (and b!6495579 (not res!2667742)) b!6495576))

(assert (= (or b!6495576 b!6495582) bm!562527))

(assert (= (or b!6495577 b!6495579) bm!562526))

(assert (=> bm!562526 m!7284068))

(declare-fun m!7284252 () Bool)

(assert (=> b!6495575 m!7284252))

(declare-fun m!7284254 () Bool)

(assert (=> bm!562527 m!7284254))

(declare-fun m!7284256 () Bool)

(assert (=> b!6495583 m!7284256))

(assert (=> b!6494893 d!2038198))

(declare-fun b!6495612 () Bool)

(declare-fun e!3936264 () Bool)

(declare-fun e!3936265 () Bool)

(assert (=> b!6495612 (= e!3936264 e!3936265)))

(declare-fun c!1190659 () Bool)

(assert (=> b!6495612 (= c!1190659 ((_ is EmptyLang!16373) r!7292))))

(declare-fun d!2038200 () Bool)

(assert (=> d!2038200 e!3936264))

(declare-fun c!1190660 () Bool)

(assert (=> d!2038200 (= c!1190660 ((_ is EmptyExpr!16373) r!7292))))

(declare-fun lt!2390757 () Bool)

(declare-fun e!3936263 () Bool)

(assert (=> d!2038200 (= lt!2390757 e!3936263)))

(declare-fun c!1190658 () Bool)

(assert (=> d!2038200 (= c!1190658 (isEmpty!37494 s!2326))))

(assert (=> d!2038200 (validRegex!8109 r!7292)))

(assert (=> d!2038200 (= (matchR!8556 r!7292 s!2326) lt!2390757)))

(declare-fun b!6495613 () Bool)

(declare-fun res!2667763 () Bool)

(declare-fun e!3936267 () Bool)

(assert (=> b!6495613 (=> res!2667763 e!3936267)))

(assert (=> b!6495613 (= res!2667763 (not ((_ is ElementMatch!16373) r!7292)))))

(assert (=> b!6495613 (= e!3936265 e!3936267)))

(declare-fun b!6495614 () Bool)

(declare-fun call!562535 () Bool)

(assert (=> b!6495614 (= e!3936264 (= lt!2390757 call!562535))))

(declare-fun b!6495615 () Bool)

(declare-fun res!2667768 () Bool)

(declare-fun e!3936262 () Bool)

(assert (=> b!6495615 (=> res!2667768 e!3936262)))

(assert (=> b!6495615 (= res!2667768 (not (isEmpty!37494 (tail!12302 s!2326))))))

(declare-fun b!6495616 () Bool)

(assert (=> b!6495616 (= e!3936265 (not lt!2390757))))

(declare-fun b!6495617 () Bool)

(declare-fun res!2667766 () Bool)

(declare-fun e!3936266 () Bool)

(assert (=> b!6495617 (=> (not res!2667766) (not e!3936266))))

(assert (=> b!6495617 (= res!2667766 (not call!562535))))

(declare-fun b!6495618 () Bool)

(assert (=> b!6495618 (= e!3936262 (not (= (head!13217 s!2326) (c!1190447 r!7292))))))

(declare-fun b!6495619 () Bool)

(assert (=> b!6495619 (= e!3936266 (= (head!13217 s!2326) (c!1190447 r!7292)))))

(declare-fun b!6495620 () Bool)

(declare-fun res!2667762 () Bool)

(assert (=> b!6495620 (=> res!2667762 e!3936267)))

(assert (=> b!6495620 (= res!2667762 e!3936266)))

(declare-fun res!2667764 () Bool)

(assert (=> b!6495620 (=> (not res!2667764) (not e!3936266))))

(assert (=> b!6495620 (= res!2667764 lt!2390757)))

(declare-fun b!6495621 () Bool)

(declare-fun e!3936268 () Bool)

(assert (=> b!6495621 (= e!3936267 e!3936268)))

(declare-fun res!2667767 () Bool)

(assert (=> b!6495621 (=> (not res!2667767) (not e!3936268))))

(assert (=> b!6495621 (= res!2667767 (not lt!2390757))))

(declare-fun bm!562530 () Bool)

(assert (=> bm!562530 (= call!562535 (isEmpty!37494 s!2326))))

(declare-fun b!6495622 () Bool)

(declare-fun res!2667761 () Bool)

(assert (=> b!6495622 (=> (not res!2667761) (not e!3936266))))

(assert (=> b!6495622 (= res!2667761 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun b!6495623 () Bool)

(assert (=> b!6495623 (= e!3936268 e!3936262)))

(declare-fun res!2667765 () Bool)

(assert (=> b!6495623 (=> res!2667765 e!3936262)))

(assert (=> b!6495623 (= res!2667765 call!562535)))

(declare-fun b!6495624 () Bool)

(declare-fun derivativeStep!5067 (Regex!16373 C!33016) Regex!16373)

(assert (=> b!6495624 (= e!3936263 (matchR!8556 (derivativeStep!5067 r!7292 (head!13217 s!2326)) (tail!12302 s!2326)))))

(declare-fun b!6495625 () Bool)

(assert (=> b!6495625 (= e!3936263 (nullable!6366 r!7292))))

(assert (= (and d!2038200 c!1190658) b!6495625))

(assert (= (and d!2038200 (not c!1190658)) b!6495624))

(assert (= (and d!2038200 c!1190660) b!6495614))

(assert (= (and d!2038200 (not c!1190660)) b!6495612))

(assert (= (and b!6495612 c!1190659) b!6495616))

(assert (= (and b!6495612 (not c!1190659)) b!6495613))

(assert (= (and b!6495613 (not res!2667763)) b!6495620))

(assert (= (and b!6495620 res!2667764) b!6495617))

(assert (= (and b!6495617 res!2667766) b!6495622))

(assert (= (and b!6495622 res!2667761) b!6495619))

(assert (= (and b!6495620 (not res!2667762)) b!6495621))

(assert (= (and b!6495621 res!2667767) b!6495623))

(assert (= (and b!6495623 (not res!2667765)) b!6495615))

(assert (= (and b!6495615 (not res!2667768)) b!6495618))

(assert (= (or b!6495614 b!6495617 b!6495623) bm!562530))

(assert (=> b!6495624 m!7284072))

(assert (=> b!6495624 m!7284072))

(declare-fun m!7284258 () Bool)

(assert (=> b!6495624 m!7284258))

(assert (=> b!6495624 m!7284076))

(assert (=> b!6495624 m!7284258))

(assert (=> b!6495624 m!7284076))

(declare-fun m!7284260 () Bool)

(assert (=> b!6495624 m!7284260))

(assert (=> b!6495618 m!7284072))

(assert (=> d!2038200 m!7284068))

(assert (=> d!2038200 m!7283678))

(declare-fun m!7284262 () Bool)

(assert (=> b!6495625 m!7284262))

(assert (=> bm!562530 m!7284068))

(assert (=> b!6495622 m!7284076))

(assert (=> b!6495622 m!7284076))

(declare-fun m!7284264 () Bool)

(assert (=> b!6495622 m!7284264))

(assert (=> b!6495615 m!7284076))

(assert (=> b!6495615 m!7284076))

(assert (=> b!6495615 m!7284264))

(assert (=> b!6495619 m!7284072))

(assert (=> b!6494893 d!2038200))

(declare-fun d!2038202 () Bool)

(assert (=> d!2038202 (= (matchR!8556 r!7292 s!2326) (matchRSpec!3474 r!7292 s!2326))))

(declare-fun lt!2390760 () Unit!158827)

(declare-fun choose!48218 (Regex!16373 List!65419) Unit!158827)

(assert (=> d!2038202 (= lt!2390760 (choose!48218 r!7292 s!2326))))

(assert (=> d!2038202 (validRegex!8109 r!7292)))

(assert (=> d!2038202 (= (mainMatchTheorem!3474 r!7292 s!2326) lt!2390760)))

(declare-fun bs!1649737 () Bool)

(assert (= bs!1649737 d!2038202))

(assert (=> bs!1649737 m!7283616))

(assert (=> bs!1649737 m!7283614))

(declare-fun m!7284266 () Bool)

(assert (=> bs!1649737 m!7284266))

(assert (=> bs!1649737 m!7283678))

(assert (=> b!6494893 d!2038202))

(declare-fun b!6495626 () Bool)

(declare-fun e!3936271 () Bool)

(declare-fun e!3936272 () Bool)

(assert (=> b!6495626 (= e!3936271 e!3936272)))

(declare-fun c!1190662 () Bool)

(assert (=> b!6495626 (= c!1190662 ((_ is EmptyLang!16373) lt!2390659))))

(declare-fun d!2038204 () Bool)

(assert (=> d!2038204 e!3936271))

(declare-fun c!1190663 () Bool)

(assert (=> d!2038204 (= c!1190663 ((_ is EmptyExpr!16373) lt!2390659))))

(declare-fun lt!2390761 () Bool)

(declare-fun e!3936270 () Bool)

(assert (=> d!2038204 (= lt!2390761 e!3936270)))

(declare-fun c!1190661 () Bool)

(assert (=> d!2038204 (= c!1190661 (isEmpty!37494 s!2326))))

(assert (=> d!2038204 (validRegex!8109 lt!2390659)))

(assert (=> d!2038204 (= (matchR!8556 lt!2390659 s!2326) lt!2390761)))

(declare-fun b!6495627 () Bool)

(declare-fun res!2667771 () Bool)

(declare-fun e!3936274 () Bool)

(assert (=> b!6495627 (=> res!2667771 e!3936274)))

(assert (=> b!6495627 (= res!2667771 (not ((_ is ElementMatch!16373) lt!2390659)))))

(assert (=> b!6495627 (= e!3936272 e!3936274)))

(declare-fun b!6495628 () Bool)

(declare-fun call!562536 () Bool)

(assert (=> b!6495628 (= e!3936271 (= lt!2390761 call!562536))))

(declare-fun b!6495629 () Bool)

(declare-fun res!2667776 () Bool)

(declare-fun e!3936269 () Bool)

(assert (=> b!6495629 (=> res!2667776 e!3936269)))

(assert (=> b!6495629 (= res!2667776 (not (isEmpty!37494 (tail!12302 s!2326))))))

(declare-fun b!6495630 () Bool)

(assert (=> b!6495630 (= e!3936272 (not lt!2390761))))

(declare-fun b!6495631 () Bool)

(declare-fun res!2667774 () Bool)

(declare-fun e!3936273 () Bool)

(assert (=> b!6495631 (=> (not res!2667774) (not e!3936273))))

(assert (=> b!6495631 (= res!2667774 (not call!562536))))

(declare-fun b!6495632 () Bool)

(assert (=> b!6495632 (= e!3936269 (not (= (head!13217 s!2326) (c!1190447 lt!2390659))))))

(declare-fun b!6495633 () Bool)

(assert (=> b!6495633 (= e!3936273 (= (head!13217 s!2326) (c!1190447 lt!2390659)))))

(declare-fun b!6495634 () Bool)

(declare-fun res!2667770 () Bool)

(assert (=> b!6495634 (=> res!2667770 e!3936274)))

(assert (=> b!6495634 (= res!2667770 e!3936273)))

(declare-fun res!2667772 () Bool)

(assert (=> b!6495634 (=> (not res!2667772) (not e!3936273))))

(assert (=> b!6495634 (= res!2667772 lt!2390761)))

(declare-fun b!6495635 () Bool)

(declare-fun e!3936275 () Bool)

(assert (=> b!6495635 (= e!3936274 e!3936275)))

(declare-fun res!2667775 () Bool)

(assert (=> b!6495635 (=> (not res!2667775) (not e!3936275))))

(assert (=> b!6495635 (= res!2667775 (not lt!2390761))))

(declare-fun bm!562531 () Bool)

(assert (=> bm!562531 (= call!562536 (isEmpty!37494 s!2326))))

(declare-fun b!6495636 () Bool)

(declare-fun res!2667769 () Bool)

(assert (=> b!6495636 (=> (not res!2667769) (not e!3936273))))

(assert (=> b!6495636 (= res!2667769 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun b!6495637 () Bool)

(assert (=> b!6495637 (= e!3936275 e!3936269)))

(declare-fun res!2667773 () Bool)

(assert (=> b!6495637 (=> res!2667773 e!3936269)))

(assert (=> b!6495637 (= res!2667773 call!562536)))

(declare-fun b!6495638 () Bool)

(assert (=> b!6495638 (= e!3936270 (matchR!8556 (derivativeStep!5067 lt!2390659 (head!13217 s!2326)) (tail!12302 s!2326)))))

(declare-fun b!6495639 () Bool)

(assert (=> b!6495639 (= e!3936270 (nullable!6366 lt!2390659))))

(assert (= (and d!2038204 c!1190661) b!6495639))

(assert (= (and d!2038204 (not c!1190661)) b!6495638))

(assert (= (and d!2038204 c!1190663) b!6495628))

(assert (= (and d!2038204 (not c!1190663)) b!6495626))

(assert (= (and b!6495626 c!1190662) b!6495630))

(assert (= (and b!6495626 (not c!1190662)) b!6495627))

(assert (= (and b!6495627 (not res!2667771)) b!6495634))

(assert (= (and b!6495634 res!2667772) b!6495631))

(assert (= (and b!6495631 res!2667774) b!6495636))

(assert (= (and b!6495636 res!2667769) b!6495633))

(assert (= (and b!6495634 (not res!2667770)) b!6495635))

(assert (= (and b!6495635 res!2667775) b!6495637))

(assert (= (and b!6495637 (not res!2667773)) b!6495629))

(assert (= (and b!6495629 (not res!2667776)) b!6495632))

(assert (= (or b!6495628 b!6495631 b!6495637) bm!562531))

(assert (=> b!6495638 m!7284072))

(assert (=> b!6495638 m!7284072))

(declare-fun m!7284268 () Bool)

(assert (=> b!6495638 m!7284268))

(assert (=> b!6495638 m!7284076))

(assert (=> b!6495638 m!7284268))

(assert (=> b!6495638 m!7284076))

(declare-fun m!7284270 () Bool)

(assert (=> b!6495638 m!7284270))

(assert (=> b!6495632 m!7284072))

(assert (=> d!2038204 m!7284068))

(declare-fun m!7284272 () Bool)

(assert (=> d!2038204 m!7284272))

(declare-fun m!7284274 () Bool)

(assert (=> b!6495639 m!7284274))

(assert (=> bm!562531 m!7284068))

(assert (=> b!6495636 m!7284076))

(assert (=> b!6495636 m!7284076))

(assert (=> b!6495636 m!7284264))

(assert (=> b!6495629 m!7284076))

(assert (=> b!6495629 m!7284076))

(assert (=> b!6495629 m!7284264))

(assert (=> b!6495633 m!7284072))

(assert (=> b!6494913 d!2038204))

(declare-fun bs!1649738 () Bool)

(declare-fun b!6495643 () Bool)

(assert (= bs!1649738 (and b!6495643 b!6495576)))

(declare-fun lambda!359870 () Int)

(assert (=> bs!1649738 (= (and (= (reg!16702 lt!2390659) (reg!16702 r!7292)) (= lt!2390659 r!7292)) (= lambda!359870 lambda!359868))))

(declare-fun bs!1649739 () Bool)

(assert (= bs!1649739 (and b!6495643 b!6495582)))

(assert (=> bs!1649739 (not (= lambda!359870 lambda!359869))))

(declare-fun bs!1649740 () Bool)

(assert (= bs!1649740 (and b!6495643 b!6494886)))

(assert (=> bs!1649740 (not (= lambda!359870 lambda!359802))))

(assert (=> bs!1649740 (not (= lambda!359870 lambda!359803))))

(declare-fun bs!1649741 () Bool)

(assert (= bs!1649741 (and b!6495643 d!2038120)))

(assert (=> bs!1649741 (not (= lambda!359870 lambda!359844))))

(declare-fun bs!1649742 () Bool)

(assert (= bs!1649742 (and b!6495643 d!2038122)))

(assert (=> bs!1649742 (not (= lambda!359870 lambda!359850))))

(assert (=> bs!1649742 (not (= lambda!359870 lambda!359849))))

(assert (=> b!6495643 true))

(assert (=> b!6495643 true))

(declare-fun bs!1649743 () Bool)

(declare-fun b!6495649 () Bool)

(assert (= bs!1649743 (and b!6495649 b!6495576)))

(declare-fun lambda!359871 () Int)

(assert (=> bs!1649743 (not (= lambda!359871 lambda!359868))))

(declare-fun bs!1649744 () Bool)

(assert (= bs!1649744 (and b!6495649 b!6495582)))

(assert (=> bs!1649744 (= (and (= (regOne!33258 lt!2390659) (regOne!33258 r!7292)) (= (regTwo!33258 lt!2390659) (regTwo!33258 r!7292))) (= lambda!359871 lambda!359869))))

(declare-fun bs!1649745 () Bool)

(assert (= bs!1649745 (and b!6495649 b!6495643)))

(assert (=> bs!1649745 (not (= lambda!359871 lambda!359870))))

(declare-fun bs!1649746 () Bool)

(assert (= bs!1649746 (and b!6495649 b!6494886)))

(assert (=> bs!1649746 (not (= lambda!359871 lambda!359802))))

(assert (=> bs!1649746 (= (and (= (regOne!33258 lt!2390659) (regOne!33258 r!7292)) (= (regTwo!33258 lt!2390659) (regTwo!33258 r!7292))) (= lambda!359871 lambda!359803))))

(declare-fun bs!1649747 () Bool)

(assert (= bs!1649747 (and b!6495649 d!2038120)))

(assert (=> bs!1649747 (not (= lambda!359871 lambda!359844))))

(declare-fun bs!1649748 () Bool)

(assert (= bs!1649748 (and b!6495649 d!2038122)))

(assert (=> bs!1649748 (= (and (= (regOne!33258 lt!2390659) (regOne!33258 r!7292)) (= (regTwo!33258 lt!2390659) (regTwo!33258 r!7292))) (= lambda!359871 lambda!359850))))

(assert (=> bs!1649748 (not (= lambda!359871 lambda!359849))))

(assert (=> b!6495649 true))

(assert (=> b!6495649 true))

(declare-fun bm!562532 () Bool)

(declare-fun call!562538 () Bool)

(assert (=> bm!562532 (= call!562538 (isEmpty!37494 s!2326))))

(declare-fun b!6495640 () Bool)

(declare-fun e!3936282 () Bool)

(assert (=> b!6495640 (= e!3936282 (= s!2326 (Cons!65295 (c!1190447 lt!2390659) Nil!65295)))))

(declare-fun d!2038206 () Bool)

(declare-fun c!1190665 () Bool)

(assert (=> d!2038206 (= c!1190665 ((_ is EmptyExpr!16373) lt!2390659))))

(declare-fun e!3936278 () Bool)

(assert (=> d!2038206 (= (matchRSpec!3474 lt!2390659 s!2326) e!3936278)))

(declare-fun b!6495641 () Bool)

(declare-fun e!3936277 () Bool)

(assert (=> b!6495641 (= e!3936278 e!3936277)))

(declare-fun res!2667779 () Bool)

(assert (=> b!6495641 (= res!2667779 (not ((_ is EmptyLang!16373) lt!2390659)))))

(assert (=> b!6495641 (=> (not res!2667779) (not e!3936277))))

(declare-fun b!6495642 () Bool)

(declare-fun e!3936279 () Bool)

(declare-fun e!3936280 () Bool)

(assert (=> b!6495642 (= e!3936279 e!3936280)))

(declare-fun res!2667778 () Bool)

(assert (=> b!6495642 (= res!2667778 (matchRSpec!3474 (regOne!33259 lt!2390659) s!2326))))

(assert (=> b!6495642 (=> res!2667778 e!3936280)))

(declare-fun e!3936276 () Bool)

(declare-fun call!562537 () Bool)

(assert (=> b!6495643 (= e!3936276 call!562537)))

(declare-fun b!6495644 () Bool)

(assert (=> b!6495644 (= e!3936278 call!562538)))

(declare-fun b!6495645 () Bool)

(declare-fun c!1190664 () Bool)

(assert (=> b!6495645 (= c!1190664 ((_ is ElementMatch!16373) lt!2390659))))

(assert (=> b!6495645 (= e!3936277 e!3936282)))

(declare-fun b!6495646 () Bool)

(declare-fun res!2667777 () Bool)

(assert (=> b!6495646 (=> res!2667777 e!3936276)))

(assert (=> b!6495646 (= res!2667777 call!562538)))

(declare-fun e!3936281 () Bool)

(assert (=> b!6495646 (= e!3936281 e!3936276)))

(declare-fun b!6495647 () Bool)

(assert (=> b!6495647 (= e!3936279 e!3936281)))

(declare-fun c!1190667 () Bool)

(assert (=> b!6495647 (= c!1190667 ((_ is Star!16373) lt!2390659))))

(declare-fun bm!562533 () Bool)

(assert (=> bm!562533 (= call!562537 (Exists!3443 (ite c!1190667 lambda!359870 lambda!359871)))))

(declare-fun b!6495648 () Bool)

(declare-fun c!1190666 () Bool)

(assert (=> b!6495648 (= c!1190666 ((_ is Union!16373) lt!2390659))))

(assert (=> b!6495648 (= e!3936282 e!3936279)))

(assert (=> b!6495649 (= e!3936281 call!562537)))

(declare-fun b!6495650 () Bool)

(assert (=> b!6495650 (= e!3936280 (matchRSpec!3474 (regTwo!33259 lt!2390659) s!2326))))

(assert (= (and d!2038206 c!1190665) b!6495644))

(assert (= (and d!2038206 (not c!1190665)) b!6495641))

(assert (= (and b!6495641 res!2667779) b!6495645))

(assert (= (and b!6495645 c!1190664) b!6495640))

(assert (= (and b!6495645 (not c!1190664)) b!6495648))

(assert (= (and b!6495648 c!1190666) b!6495642))

(assert (= (and b!6495648 (not c!1190666)) b!6495647))

(assert (= (and b!6495642 (not res!2667778)) b!6495650))

(assert (= (and b!6495647 c!1190667) b!6495646))

(assert (= (and b!6495647 (not c!1190667)) b!6495649))

(assert (= (and b!6495646 (not res!2667777)) b!6495643))

(assert (= (or b!6495643 b!6495649) bm!562533))

(assert (= (or b!6495644 b!6495646) bm!562532))

(assert (=> bm!562532 m!7284068))

(declare-fun m!7284276 () Bool)

(assert (=> b!6495642 m!7284276))

(declare-fun m!7284278 () Bool)

(assert (=> bm!562533 m!7284278))

(declare-fun m!7284280 () Bool)

(assert (=> b!6495650 m!7284280))

(assert (=> b!6494913 d!2038206))

(declare-fun d!2038208 () Bool)

(assert (=> d!2038208 (= (matchR!8556 lt!2390659 s!2326) (matchRSpec!3474 lt!2390659 s!2326))))

(declare-fun lt!2390762 () Unit!158827)

(assert (=> d!2038208 (= lt!2390762 (choose!48218 lt!2390659 s!2326))))

(assert (=> d!2038208 (validRegex!8109 lt!2390659)))

(assert (=> d!2038208 (= (mainMatchTheorem!3474 lt!2390659 s!2326) lt!2390762)))

(declare-fun bs!1649749 () Bool)

(assert (= bs!1649749 d!2038208))

(assert (=> bs!1649749 m!7283620))

(assert (=> bs!1649749 m!7283622))

(declare-fun m!7284282 () Bool)

(assert (=> bs!1649749 m!7284282))

(assert (=> bs!1649749 m!7284272))

(assert (=> b!6494913 d!2038208))

(declare-fun c!1190672 () Bool)

(declare-fun bm!562540 () Bool)

(declare-fun c!1190673 () Bool)

(declare-fun call!562545 () Bool)

(assert (=> bm!562540 (= call!562545 (validRegex!8109 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))))))

(declare-fun b!6495669 () Bool)

(declare-fun e!3936301 () Bool)

(declare-fun e!3936298 () Bool)

(assert (=> b!6495669 (= e!3936301 e!3936298)))

(declare-fun res!2667791 () Bool)

(assert (=> b!6495669 (= res!2667791 (not (nullable!6366 (reg!16702 r!7292))))))

(assert (=> b!6495669 (=> (not res!2667791) (not e!3936298))))

(declare-fun b!6495670 () Bool)

(declare-fun e!3936300 () Bool)

(declare-fun call!562547 () Bool)

(assert (=> b!6495670 (= e!3936300 call!562547)))

(declare-fun bm!562541 () Bool)

(declare-fun call!562546 () Bool)

(assert (=> bm!562541 (= call!562546 (validRegex!8109 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))))))

(declare-fun b!6495671 () Bool)

(declare-fun e!3936299 () Bool)

(assert (=> b!6495671 (= e!3936299 e!3936301)))

(assert (=> b!6495671 (= c!1190672 ((_ is Star!16373) r!7292))))

(declare-fun b!6495672 () Bool)

(declare-fun res!2667793 () Bool)

(declare-fun e!3936302 () Bool)

(assert (=> b!6495672 (=> res!2667793 e!3936302)))

(assert (=> b!6495672 (= res!2667793 (not ((_ is Concat!25218) r!7292)))))

(declare-fun e!3936297 () Bool)

(assert (=> b!6495672 (= e!3936297 e!3936302)))

(declare-fun b!6495673 () Bool)

(declare-fun e!3936303 () Bool)

(assert (=> b!6495673 (= e!3936303 call!562547)))

(declare-fun b!6495674 () Bool)

(assert (=> b!6495674 (= e!3936301 e!3936297)))

(assert (=> b!6495674 (= c!1190673 ((_ is Union!16373) r!7292))))

(declare-fun b!6495675 () Bool)

(assert (=> b!6495675 (= e!3936302 e!3936303)))

(declare-fun res!2667794 () Bool)

(assert (=> b!6495675 (=> (not res!2667794) (not e!3936303))))

(assert (=> b!6495675 (= res!2667794 call!562546)))

(declare-fun bm!562542 () Bool)

(assert (=> bm!562542 (= call!562547 call!562545)))

(declare-fun d!2038210 () Bool)

(declare-fun res!2667790 () Bool)

(assert (=> d!2038210 (=> res!2667790 e!3936299)))

(assert (=> d!2038210 (= res!2667790 ((_ is ElementMatch!16373) r!7292))))

(assert (=> d!2038210 (= (validRegex!8109 r!7292) e!3936299)))

(declare-fun b!6495676 () Bool)

(assert (=> b!6495676 (= e!3936298 call!562545)))

(declare-fun b!6495677 () Bool)

(declare-fun res!2667792 () Bool)

(assert (=> b!6495677 (=> (not res!2667792) (not e!3936300))))

(assert (=> b!6495677 (= res!2667792 call!562546)))

(assert (=> b!6495677 (= e!3936297 e!3936300)))

(assert (= (and d!2038210 (not res!2667790)) b!6495671))

(assert (= (and b!6495671 c!1190672) b!6495669))

(assert (= (and b!6495671 (not c!1190672)) b!6495674))

(assert (= (and b!6495669 res!2667791) b!6495676))

(assert (= (and b!6495674 c!1190673) b!6495677))

(assert (= (and b!6495674 (not c!1190673)) b!6495672))

(assert (= (and b!6495677 res!2667792) b!6495670))

(assert (= (and b!6495672 (not res!2667793)) b!6495675))

(assert (= (and b!6495675 res!2667794) b!6495673))

(assert (= (or b!6495670 b!6495673) bm!562542))

(assert (= (or b!6495677 b!6495675) bm!562541))

(assert (= (or b!6495676 bm!562542) bm!562540))

(declare-fun m!7284284 () Bool)

(assert (=> bm!562540 m!7284284))

(declare-fun m!7284286 () Bool)

(assert (=> b!6495669 m!7284286))

(declare-fun m!7284288 () Bool)

(assert (=> bm!562541 m!7284288))

(assert (=> start!638174 d!2038210))

(declare-fun d!2038212 () Bool)

(assert (=> d!2038212 (= (isEmpty!37490 (t!379050 zl!343)) ((_ is Nil!65296) (t!379050 zl!343)))))

(assert (=> b!6494915 d!2038212))

(declare-fun bs!1649750 () Bool)

(declare-fun d!2038214 () Bool)

(assert (= bs!1649750 (and d!2038214 d!2038172)))

(declare-fun lambda!359872 () Int)

(assert (=> bs!1649750 (= lambda!359872 lambda!359857)))

(declare-fun bs!1649751 () Bool)

(assert (= bs!1649751 (and d!2038214 d!2038112)))

(assert (=> bs!1649751 (= lambda!359872 lambda!359841)))

(declare-fun bs!1649752 () Bool)

(assert (= bs!1649752 (and d!2038214 d!2038156)))

(assert (=> bs!1649752 (= lambda!359872 lambda!359853)))

(declare-fun bs!1649753 () Bool)

(assert (= bs!1649753 (and d!2038214 d!2038194)))

(assert (=> bs!1649753 (= lambda!359872 lambda!359863)))

(declare-fun bs!1649754 () Bool)

(assert (= bs!1649754 (and d!2038214 d!2038192)))

(assert (=> bs!1649754 (= lambda!359872 lambda!359860)))

(assert (=> d!2038214 (= (inv!84179 lt!2390647) (forall!15554 (exprs!6257 lt!2390647) lambda!359872))))

(declare-fun bs!1649755 () Bool)

(assert (= bs!1649755 d!2038214))

(declare-fun m!7284290 () Bool)

(assert (=> bs!1649755 m!7284290))

(assert (=> b!6494896 d!2038214))

(declare-fun b!6495685 () Bool)

(declare-fun e!3936309 () Bool)

(declare-fun tp!1797327 () Bool)

(assert (=> b!6495685 (= e!3936309 tp!1797327)))

(declare-fun e!3936308 () Bool)

(declare-fun tp!1797328 () Bool)

(declare-fun b!6495684 () Bool)

(assert (=> b!6495684 (= e!3936308 (and (inv!84179 (h!71744 (t!379050 zl!343))) e!3936309 tp!1797328))))

(assert (=> b!6494908 (= tp!1797261 e!3936308)))

(assert (= b!6495684 b!6495685))

(assert (= (and b!6494908 ((_ is Cons!65296) (t!379050 zl!343))) b!6495684))

(declare-fun m!7284292 () Bool)

(assert (=> b!6495684 m!7284292))

(declare-fun b!6495690 () Bool)

(declare-fun e!3936312 () Bool)

(declare-fun tp!1797331 () Bool)

(assert (=> b!6495690 (= e!3936312 (and tp_is_empty!41999 tp!1797331))))

(assert (=> b!6494897 (= tp!1797262 e!3936312)))

(assert (= (and b!6494897 ((_ is Cons!65295) (t!379049 s!2326))) b!6495690))

(declare-fun b!6495702 () Bool)

(declare-fun e!3936315 () Bool)

(declare-fun tp!1797345 () Bool)

(declare-fun tp!1797346 () Bool)

(assert (=> b!6495702 (= e!3936315 (and tp!1797345 tp!1797346))))

(declare-fun b!6495701 () Bool)

(assert (=> b!6495701 (= e!3936315 tp_is_empty!41999)))

(declare-fun b!6495703 () Bool)

(declare-fun tp!1797344 () Bool)

(assert (=> b!6495703 (= e!3936315 tp!1797344)))

(assert (=> b!6494881 (= tp!1797256 e!3936315)))

(declare-fun b!6495704 () Bool)

(declare-fun tp!1797343 () Bool)

(declare-fun tp!1797342 () Bool)

(assert (=> b!6495704 (= e!3936315 (and tp!1797343 tp!1797342))))

(assert (= (and b!6494881 ((_ is ElementMatch!16373) (reg!16702 r!7292))) b!6495701))

(assert (= (and b!6494881 ((_ is Concat!25218) (reg!16702 r!7292))) b!6495702))

(assert (= (and b!6494881 ((_ is Star!16373) (reg!16702 r!7292))) b!6495703))

(assert (= (and b!6494881 ((_ is Union!16373) (reg!16702 r!7292))) b!6495704))

(declare-fun b!6495706 () Bool)

(declare-fun e!3936316 () Bool)

(declare-fun tp!1797350 () Bool)

(declare-fun tp!1797351 () Bool)

(assert (=> b!6495706 (= e!3936316 (and tp!1797350 tp!1797351))))

(declare-fun b!6495705 () Bool)

(assert (=> b!6495705 (= e!3936316 tp_is_empty!41999)))

(declare-fun b!6495707 () Bool)

(declare-fun tp!1797349 () Bool)

(assert (=> b!6495707 (= e!3936316 tp!1797349)))

(assert (=> b!6494903 (= tp!1797260 e!3936316)))

(declare-fun b!6495708 () Bool)

(declare-fun tp!1797348 () Bool)

(declare-fun tp!1797347 () Bool)

(assert (=> b!6495708 (= e!3936316 (and tp!1797348 tp!1797347))))

(assert (= (and b!6494903 ((_ is ElementMatch!16373) (regOne!33258 r!7292))) b!6495705))

(assert (= (and b!6494903 ((_ is Concat!25218) (regOne!33258 r!7292))) b!6495706))

(assert (= (and b!6494903 ((_ is Star!16373) (regOne!33258 r!7292))) b!6495707))

(assert (= (and b!6494903 ((_ is Union!16373) (regOne!33258 r!7292))) b!6495708))

(declare-fun b!6495710 () Bool)

(declare-fun e!3936317 () Bool)

(declare-fun tp!1797355 () Bool)

(declare-fun tp!1797356 () Bool)

(assert (=> b!6495710 (= e!3936317 (and tp!1797355 tp!1797356))))

(declare-fun b!6495709 () Bool)

(assert (=> b!6495709 (= e!3936317 tp_is_empty!41999)))

(declare-fun b!6495711 () Bool)

(declare-fun tp!1797354 () Bool)

(assert (=> b!6495711 (= e!3936317 tp!1797354)))

(assert (=> b!6494903 (= tp!1797255 e!3936317)))

(declare-fun b!6495712 () Bool)

(declare-fun tp!1797353 () Bool)

(declare-fun tp!1797352 () Bool)

(assert (=> b!6495712 (= e!3936317 (and tp!1797353 tp!1797352))))

(assert (= (and b!6494903 ((_ is ElementMatch!16373) (regTwo!33258 r!7292))) b!6495709))

(assert (= (and b!6494903 ((_ is Concat!25218) (regTwo!33258 r!7292))) b!6495710))

(assert (= (and b!6494903 ((_ is Star!16373) (regTwo!33258 r!7292))) b!6495711))

(assert (= (and b!6494903 ((_ is Union!16373) (regTwo!33258 r!7292))) b!6495712))

(declare-fun b!6495717 () Bool)

(declare-fun e!3936320 () Bool)

(declare-fun tp!1797361 () Bool)

(declare-fun tp!1797362 () Bool)

(assert (=> b!6495717 (= e!3936320 (and tp!1797361 tp!1797362))))

(assert (=> b!6494884 (= tp!1797259 e!3936320)))

(assert (= (and b!6494884 ((_ is Cons!65294) (exprs!6257 (h!71744 zl!343)))) b!6495717))

(declare-fun b!6495719 () Bool)

(declare-fun e!3936321 () Bool)

(declare-fun tp!1797366 () Bool)

(declare-fun tp!1797367 () Bool)

(assert (=> b!6495719 (= e!3936321 (and tp!1797366 tp!1797367))))

(declare-fun b!6495718 () Bool)

(assert (=> b!6495718 (= e!3936321 tp_is_empty!41999)))

(declare-fun b!6495720 () Bool)

(declare-fun tp!1797365 () Bool)

(assert (=> b!6495720 (= e!3936321 tp!1797365)))

(assert (=> b!6494889 (= tp!1797258 e!3936321)))

(declare-fun b!6495721 () Bool)

(declare-fun tp!1797364 () Bool)

(declare-fun tp!1797363 () Bool)

(assert (=> b!6495721 (= e!3936321 (and tp!1797364 tp!1797363))))

(assert (= (and b!6494889 ((_ is ElementMatch!16373) (regOne!33259 r!7292))) b!6495718))

(assert (= (and b!6494889 ((_ is Concat!25218) (regOne!33259 r!7292))) b!6495719))

(assert (= (and b!6494889 ((_ is Star!16373) (regOne!33259 r!7292))) b!6495720))

(assert (= (and b!6494889 ((_ is Union!16373) (regOne!33259 r!7292))) b!6495721))

(declare-fun b!6495723 () Bool)

(declare-fun e!3936322 () Bool)

(declare-fun tp!1797371 () Bool)

(declare-fun tp!1797372 () Bool)

(assert (=> b!6495723 (= e!3936322 (and tp!1797371 tp!1797372))))

(declare-fun b!6495722 () Bool)

(assert (=> b!6495722 (= e!3936322 tp_is_empty!41999)))

(declare-fun b!6495724 () Bool)

(declare-fun tp!1797370 () Bool)

(assert (=> b!6495724 (= e!3936322 tp!1797370)))

(assert (=> b!6494889 (= tp!1797264 e!3936322)))

(declare-fun b!6495725 () Bool)

(declare-fun tp!1797369 () Bool)

(declare-fun tp!1797368 () Bool)

(assert (=> b!6495725 (= e!3936322 (and tp!1797369 tp!1797368))))

(assert (= (and b!6494889 ((_ is ElementMatch!16373) (regTwo!33259 r!7292))) b!6495722))

(assert (= (and b!6494889 ((_ is Concat!25218) (regTwo!33259 r!7292))) b!6495723))

(assert (= (and b!6494889 ((_ is Star!16373) (regTwo!33259 r!7292))) b!6495724))

(assert (= (and b!6494889 ((_ is Union!16373) (regTwo!33259 r!7292))) b!6495725))

(declare-fun b!6495726 () Bool)

(declare-fun e!3936323 () Bool)

(declare-fun tp!1797373 () Bool)

(declare-fun tp!1797374 () Bool)

(assert (=> b!6495726 (= e!3936323 (and tp!1797373 tp!1797374))))

(assert (=> b!6494911 (= tp!1797257 e!3936323)))

(assert (= (and b!6494911 ((_ is Cons!65294) (exprs!6257 setElem!44251))) b!6495726))

(declare-fun condSetEmpty!44257 () Bool)

(assert (=> setNonEmpty!44251 (= condSetEmpty!44257 (= setRest!44251 ((as const (Array Context!11514 Bool)) false)))))

(declare-fun setRes!44257 () Bool)

(assert (=> setNonEmpty!44251 (= tp!1797263 setRes!44257)))

(declare-fun setIsEmpty!44257 () Bool)

(assert (=> setIsEmpty!44257 setRes!44257))

(declare-fun setElem!44257 () Context!11514)

(declare-fun e!3936326 () Bool)

(declare-fun setNonEmpty!44257 () Bool)

(declare-fun tp!1797380 () Bool)

(assert (=> setNonEmpty!44257 (= setRes!44257 (and tp!1797380 (inv!84179 setElem!44257) e!3936326))))

(declare-fun setRest!44257 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44257 (= setRest!44251 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44257 true) setRest!44257))))

(declare-fun b!6495731 () Bool)

(declare-fun tp!1797379 () Bool)

(assert (=> b!6495731 (= e!3936326 tp!1797379)))

(assert (= (and setNonEmpty!44251 condSetEmpty!44257) setIsEmpty!44257))

(assert (= (and setNonEmpty!44251 (not condSetEmpty!44257)) setNonEmpty!44257))

(assert (= setNonEmpty!44257 b!6495731))

(declare-fun m!7284294 () Bool)

(assert (=> setNonEmpty!44257 m!7284294))

(declare-fun b_lambda!245873 () Bool)

(assert (= b_lambda!245871 (or b!6494901 b_lambda!245873)))

(declare-fun bs!1649756 () Bool)

(declare-fun d!2038216 () Bool)

(assert (= bs!1649756 (and d!2038216 b!6494901)))

(assert (=> bs!1649756 (= (dynLambda!25935 lambda!359804 (h!71744 zl!343)) (derivationStepZipperUp!1547 (h!71744 zl!343) (h!71743 s!2326)))))

(assert (=> bs!1649756 m!7283636))

(assert (=> d!2038174 d!2038216))

(declare-fun b_lambda!245875 () Bool)

(assert (= b_lambda!245869 (or b!6494901 b_lambda!245875)))

(declare-fun bs!1649757 () Bool)

(declare-fun d!2038218 () Bool)

(assert (= bs!1649757 (and d!2038218 b!6494901)))

(assert (=> bs!1649757 (= (dynLambda!25935 lambda!359804 lt!2390647) (derivationStepZipperUp!1547 lt!2390647 (h!71743 s!2326)))))

(assert (=> bs!1649757 m!7283702))

(assert (=> d!2038162 d!2038218))

(declare-fun b_lambda!245877 () Bool)

(assert (= b_lambda!245867 (or b!6494901 b_lambda!245877)))

(declare-fun bs!1649758 () Bool)

(declare-fun d!2038220 () Bool)

(assert (= bs!1649758 (and d!2038220 b!6494901)))

(assert (=> bs!1649758 (= (dynLambda!25935 lambda!359804 lt!2390635) (derivationStepZipperUp!1547 lt!2390635 (h!71743 s!2326)))))

(assert (=> bs!1649758 m!7283666))

(assert (=> d!2038146 d!2038220))

(declare-fun b_lambda!245879 () Bool)

(assert (= b_lambda!245865 (or b!6494901 b_lambda!245879)))

(declare-fun bs!1649759 () Bool)

(declare-fun d!2038222 () Bool)

(assert (= bs!1649759 (and d!2038222 b!6494901)))

(assert (=> bs!1649759 (= (dynLambda!25935 lambda!359804 lt!2390632) (derivationStepZipperUp!1547 lt!2390632 (h!71743 s!2326)))))

(assert (=> bs!1649759 m!7283658))

(assert (=> d!2038142 d!2038222))

(check-sat (not b!6495397) (not b!6495711) (not b!6495392) (not b!6495347) (not b!6495423) (not d!2038116) (not b!6495348) (not d!2038124) (not b_lambda!245877) (not d!2038112) (not b!6495424) (not b!6495639) (not bm!562521) (not b!6495618) (not d!2038168) (not d!2038118) (not d!2038194) (not d!2038150) (not d!2038136) (not b!6495636) (not b!6495431) (not b!6495521) (not b!6495377) (not b!6495516) (not b!6495710) (not b!6495708) (not b!6495723) (not b!6495441) (not d!2038208) (not d!2038176) (not b!6495353) (not b!6495346) (not bm!562509) (not d!2038126) (not b!6495633) (not bm!562531) (not d!2038200) (not bm!562533) (not b!6495352) (not b!6495642) (not b!6495374) (not b!6495650) (not b!6495704) (not d!2038134) (not b!6495717) (not bm!562532) (not b!6495719) (not b!6495519) (not d!2038190) (not b!6495535) (not b!6495432) (not b!6495381) (not d!2038202) (not d!2038178) (not b!6495371) (not b!6495514) (not bs!1649756) (not d!2038142) (not d!2038114) (not d!2038148) (not bm!562517) (not b!6495690) (not bm!562515) (not b!6495638) (not b!6495439) (not d!2038188) (not b!6495528) (not b!6495629) (not b!6495685) (not b!6495399) (not d!2038122) (not d!2038166) (not d!2038172) (not b!6495712) (not b!6495440) (not d!2038158) (not d!2038192) (not b!6495625) (not b!6495473) (not b!6495517) (not d!2038128) (not b!6495720) (not d!2038146) (not b!6495619) (not b!6495575) (not b!6495491) (not b!6495706) (not b!6495422) (not bm!562527) (not b_lambda!245875) (not b!6495428) (not bm!562530) (not bm!562493) (not b!6495375) (not b!6495394) (not b!6495430) (not b!6495434) (not setNonEmpty!44257) (not b!6495702) (not bm!562512) (not bm!562540) (not bm!562514) (not b!6495372) (not b!6495376) (not d!2038140) (not bm!562492) (not b!6495481) (not d!2038132) (not d!2038170) (not b!6495484) (not b!6495515) (not b!6495725) (not bm!562513) (not b!6495615) (not bm!562526) (not d!2038138) (not bs!1649758) (not b!6495373) (not bm!562494) (not b!6495624) (not d!2038152) (not d!2038164) (not b!6495632) (not bs!1649759) (not bm!562495) (not b!6495492) (not b!6495703) (not d!2038174) (not b!6495486) (not b!6495425) (not bm!562541) (not d!2038204) (not bs!1649757) (not b!6495350) (not b!6495479) (not b!6495721) (not b!6495493) (not b!6495724) (not b!6495731) (not b!6495669) (not b!6495684) (not b!6495622) (not b!6495378) (not b!6495518) tp_is_empty!41999 (not b_lambda!245879) (not b!6495443) (not d!2038162) (not b!6495707) (not d!2038156) (not d!2038214) (not b!6495583) (not b_lambda!245873) (not d!2038120) (not bm!562520) (not b!6495726))
(check-sat)
(get-model)

(assert (=> b!6495491 d!2038166))

(declare-fun b!6496018 () Bool)

(declare-fun e!3936514 () Bool)

(declare-fun e!3936515 () Bool)

(assert (=> b!6496018 (= e!3936514 e!3936515)))

(declare-fun c!1190756 () Bool)

(assert (=> b!6496018 (= c!1190756 ((_ is EmptyLang!16373) (regOne!33258 r!7292)))))

(declare-fun d!2038364 () Bool)

(assert (=> d!2038364 e!3936514))

(declare-fun c!1190757 () Bool)

(assert (=> d!2038364 (= c!1190757 ((_ is EmptyExpr!16373) (regOne!33258 r!7292)))))

(declare-fun lt!2390774 () Bool)

(declare-fun e!3936513 () Bool)

(assert (=> d!2038364 (= lt!2390774 e!3936513)))

(declare-fun c!1190755 () Bool)

(assert (=> d!2038364 (= c!1190755 (isEmpty!37494 (_1!36655 (get!22643 lt!2390719))))))

(assert (=> d!2038364 (validRegex!8109 (regOne!33258 r!7292))))

(assert (=> d!2038364 (= (matchR!8556 (regOne!33258 r!7292) (_1!36655 (get!22643 lt!2390719))) lt!2390774)))

(declare-fun b!6496019 () Bool)

(declare-fun res!2667926 () Bool)

(declare-fun e!3936517 () Bool)

(assert (=> b!6496019 (=> res!2667926 e!3936517)))

(assert (=> b!6496019 (= res!2667926 (not ((_ is ElementMatch!16373) (regOne!33258 r!7292))))))

(assert (=> b!6496019 (= e!3936515 e!3936517)))

(declare-fun b!6496020 () Bool)

(declare-fun call!562617 () Bool)

(assert (=> b!6496020 (= e!3936514 (= lt!2390774 call!562617))))

(declare-fun b!6496021 () Bool)

(declare-fun res!2667931 () Bool)

(declare-fun e!3936512 () Bool)

(assert (=> b!6496021 (=> res!2667931 e!3936512)))

(assert (=> b!6496021 (= res!2667931 (not (isEmpty!37494 (tail!12302 (_1!36655 (get!22643 lt!2390719))))))))

(declare-fun b!6496022 () Bool)

(assert (=> b!6496022 (= e!3936515 (not lt!2390774))))

(declare-fun b!6496023 () Bool)

(declare-fun res!2667929 () Bool)

(declare-fun e!3936516 () Bool)

(assert (=> b!6496023 (=> (not res!2667929) (not e!3936516))))

(assert (=> b!6496023 (= res!2667929 (not call!562617))))

(declare-fun b!6496024 () Bool)

(assert (=> b!6496024 (= e!3936512 (not (= (head!13217 (_1!36655 (get!22643 lt!2390719))) (c!1190447 (regOne!33258 r!7292)))))))

(declare-fun b!6496025 () Bool)

(assert (=> b!6496025 (= e!3936516 (= (head!13217 (_1!36655 (get!22643 lt!2390719))) (c!1190447 (regOne!33258 r!7292))))))

(declare-fun b!6496026 () Bool)

(declare-fun res!2667925 () Bool)

(assert (=> b!6496026 (=> res!2667925 e!3936517)))

(assert (=> b!6496026 (= res!2667925 e!3936516)))

(declare-fun res!2667927 () Bool)

(assert (=> b!6496026 (=> (not res!2667927) (not e!3936516))))

(assert (=> b!6496026 (= res!2667927 lt!2390774)))

(declare-fun b!6496027 () Bool)

(declare-fun e!3936518 () Bool)

(assert (=> b!6496027 (= e!3936517 e!3936518)))

(declare-fun res!2667930 () Bool)

(assert (=> b!6496027 (=> (not res!2667930) (not e!3936518))))

(assert (=> b!6496027 (= res!2667930 (not lt!2390774))))

(declare-fun bm!562612 () Bool)

(assert (=> bm!562612 (= call!562617 (isEmpty!37494 (_1!36655 (get!22643 lt!2390719))))))

(declare-fun b!6496028 () Bool)

(declare-fun res!2667924 () Bool)

(assert (=> b!6496028 (=> (not res!2667924) (not e!3936516))))

(assert (=> b!6496028 (= res!2667924 (isEmpty!37494 (tail!12302 (_1!36655 (get!22643 lt!2390719)))))))

(declare-fun b!6496029 () Bool)

(assert (=> b!6496029 (= e!3936518 e!3936512)))

(declare-fun res!2667928 () Bool)

(assert (=> b!6496029 (=> res!2667928 e!3936512)))

(assert (=> b!6496029 (= res!2667928 call!562617)))

(declare-fun b!6496030 () Bool)

(assert (=> b!6496030 (= e!3936513 (matchR!8556 (derivativeStep!5067 (regOne!33258 r!7292) (head!13217 (_1!36655 (get!22643 lt!2390719)))) (tail!12302 (_1!36655 (get!22643 lt!2390719)))))))

(declare-fun b!6496031 () Bool)

(assert (=> b!6496031 (= e!3936513 (nullable!6366 (regOne!33258 r!7292)))))

(assert (= (and d!2038364 c!1190755) b!6496031))

(assert (= (and d!2038364 (not c!1190755)) b!6496030))

(assert (= (and d!2038364 c!1190757) b!6496020))

(assert (= (and d!2038364 (not c!1190757)) b!6496018))

(assert (= (and b!6496018 c!1190756) b!6496022))

(assert (= (and b!6496018 (not c!1190756)) b!6496019))

(assert (= (and b!6496019 (not res!2667926)) b!6496026))

(assert (= (and b!6496026 res!2667927) b!6496023))

(assert (= (and b!6496023 res!2667929) b!6496028))

(assert (= (and b!6496028 res!2667924) b!6496025))

(assert (= (and b!6496026 (not res!2667925)) b!6496027))

(assert (= (and b!6496027 res!2667930) b!6496029))

(assert (= (and b!6496029 (not res!2667928)) b!6496021))

(assert (= (and b!6496021 (not res!2667931)) b!6496024))

(assert (= (or b!6496020 b!6496023 b!6496029) bm!562612))

(declare-fun m!7284590 () Bool)

(assert (=> b!6496030 m!7284590))

(assert (=> b!6496030 m!7284590))

(declare-fun m!7284592 () Bool)

(assert (=> b!6496030 m!7284592))

(declare-fun m!7284594 () Bool)

(assert (=> b!6496030 m!7284594))

(assert (=> b!6496030 m!7284592))

(assert (=> b!6496030 m!7284594))

(declare-fun m!7284596 () Bool)

(assert (=> b!6496030 m!7284596))

(assert (=> b!6496024 m!7284590))

(declare-fun m!7284598 () Bool)

(assert (=> d!2038364 m!7284598))

(assert (=> d!2038364 m!7284012))

(declare-fun m!7284602 () Bool)

(assert (=> b!6496031 m!7284602))

(assert (=> bm!562612 m!7284598))

(assert (=> b!6496028 m!7284594))

(assert (=> b!6496028 m!7284594))

(declare-fun m!7284606 () Bool)

(assert (=> b!6496028 m!7284606))

(assert (=> b!6496021 m!7284594))

(assert (=> b!6496021 m!7284594))

(assert (=> b!6496021 m!7284606))

(assert (=> b!6496025 m!7284590))

(assert (=> b!6495350 d!2038364))

(declare-fun d!2038368 () Bool)

(assert (=> d!2038368 (= (get!22643 lt!2390719) (v!52442 lt!2390719))))

(assert (=> b!6495350 d!2038368))

(declare-fun d!2038370 () Bool)

(assert (=> d!2038370 (= (isEmpty!37494 s!2326) ((_ is Nil!65295) s!2326))))

(assert (=> bm!562530 d!2038370))

(declare-fun d!2038372 () Bool)

(declare-fun lambda!359900 () Int)

(declare-fun exists!2621 ((InoxSet Context!11514) Int) Bool)

(assert (=> d!2038372 (= (nullableZipper!2128 lt!2390649) (exists!2621 lt!2390649 lambda!359900))))

(declare-fun bs!1649889 () Bool)

(assert (= bs!1649889 d!2038372))

(declare-fun m!7284638 () Bool)

(assert (=> bs!1649889 m!7284638))

(assert (=> b!6495373 d!2038372))

(declare-fun bm!562615 () Bool)

(declare-fun call!562620 () Bool)

(declare-fun c!1190766 () Bool)

(declare-fun c!1190767 () Bool)

(assert (=> bm!562615 (= call!562620 (validRegex!8109 (ite c!1190766 (reg!16702 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))) (ite c!1190767 (regTwo!33259 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))) (regTwo!33258 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292))))))))))

(declare-fun b!6496054 () Bool)

(declare-fun e!3936535 () Bool)

(declare-fun e!3936532 () Bool)

(assert (=> b!6496054 (= e!3936535 e!3936532)))

(declare-fun res!2667941 () Bool)

(assert (=> b!6496054 (= res!2667941 (not (nullable!6366 (reg!16702 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))))))))

(assert (=> b!6496054 (=> (not res!2667941) (not e!3936532))))

(declare-fun b!6496055 () Bool)

(declare-fun e!3936534 () Bool)

(declare-fun call!562622 () Bool)

(assert (=> b!6496055 (= e!3936534 call!562622)))

(declare-fun bm!562616 () Bool)

(declare-fun call!562621 () Bool)

(assert (=> bm!562616 (= call!562621 (validRegex!8109 (ite c!1190767 (regOne!33259 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))) (regOne!33258 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))))))))

(declare-fun b!6496056 () Bool)

(declare-fun e!3936533 () Bool)

(assert (=> b!6496056 (= e!3936533 e!3936535)))

(assert (=> b!6496056 (= c!1190766 ((_ is Star!16373) (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))))))

(declare-fun b!6496057 () Bool)

(declare-fun res!2667943 () Bool)

(declare-fun e!3936536 () Bool)

(assert (=> b!6496057 (=> res!2667943 e!3936536)))

(assert (=> b!6496057 (= res!2667943 (not ((_ is Concat!25218) (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292))))))))

(declare-fun e!3936531 () Bool)

(assert (=> b!6496057 (= e!3936531 e!3936536)))

(declare-fun b!6496058 () Bool)

(declare-fun e!3936538 () Bool)

(assert (=> b!6496058 (= e!3936538 call!562622)))

(declare-fun b!6496059 () Bool)

(assert (=> b!6496059 (= e!3936535 e!3936531)))

(assert (=> b!6496059 (= c!1190767 ((_ is Union!16373) (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))))))

(declare-fun b!6496060 () Bool)

(assert (=> b!6496060 (= e!3936536 e!3936538)))

(declare-fun res!2667944 () Bool)

(assert (=> b!6496060 (=> (not res!2667944) (not e!3936538))))

(assert (=> b!6496060 (= res!2667944 call!562621)))

(declare-fun bm!562617 () Bool)

(assert (=> bm!562617 (= call!562622 call!562620)))

(declare-fun d!2038380 () Bool)

(declare-fun res!2667940 () Bool)

(assert (=> d!2038380 (=> res!2667940 e!3936533)))

(assert (=> d!2038380 (= res!2667940 ((_ is ElementMatch!16373) (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))))))

(assert (=> d!2038380 (= (validRegex!8109 (ite c!1190672 (reg!16702 r!7292) (ite c!1190673 (regTwo!33259 r!7292) (regTwo!33258 r!7292)))) e!3936533)))

(declare-fun b!6496061 () Bool)

(assert (=> b!6496061 (= e!3936532 call!562620)))

(declare-fun b!6496062 () Bool)

(declare-fun res!2667942 () Bool)

(assert (=> b!6496062 (=> (not res!2667942) (not e!3936534))))

(assert (=> b!6496062 (= res!2667942 call!562621)))

(assert (=> b!6496062 (= e!3936531 e!3936534)))

(assert (= (and d!2038380 (not res!2667940)) b!6496056))

(assert (= (and b!6496056 c!1190766) b!6496054))

(assert (= (and b!6496056 (not c!1190766)) b!6496059))

(assert (= (and b!6496054 res!2667941) b!6496061))

(assert (= (and b!6496059 c!1190767) b!6496062))

(assert (= (and b!6496059 (not c!1190767)) b!6496057))

(assert (= (and b!6496062 res!2667942) b!6496055))

(assert (= (and b!6496057 (not res!2667943)) b!6496060))

(assert (= (and b!6496060 res!2667944) b!6496058))

(assert (= (or b!6496055 b!6496058) bm!562617))

(assert (= (or b!6496062 b!6496060) bm!562616))

(assert (= (or b!6496061 bm!562617) bm!562615))

(declare-fun m!7284658 () Bool)

(assert (=> bm!562615 m!7284658))

(declare-fun m!7284660 () Bool)

(assert (=> b!6496054 m!7284660))

(declare-fun m!7284662 () Bool)

(assert (=> bm!562616 m!7284662))

(assert (=> bm!562540 d!2038380))

(assert (=> d!2038200 d!2038370))

(assert (=> d!2038200 d!2038210))

(declare-fun d!2038386 () Bool)

(assert (=> d!2038386 (= (isEmptyLang!1771 lt!2390751) ((_ is EmptyLang!16373) lt!2390751))))

(assert (=> b!6495518 d!2038386))

(declare-fun d!2038394 () Bool)

(declare-fun c!1190770 () Bool)

(declare-fun e!3936542 () Bool)

(assert (=> d!2038394 (= c!1190770 e!3936542)))

(declare-fun res!2667947 () Bool)

(assert (=> d!2038394 (=> (not res!2667947) (not e!3936542))))

(assert (=> d!2038394 (= res!2667947 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))))

(declare-fun e!3936543 () (InoxSet Context!11514))

(assert (=> d!2038394 (= (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (h!71743 s!2326)) e!3936543)))

(declare-fun bm!562618 () Bool)

(declare-fun call!562623 () (InoxSet Context!11514))

(assert (=> bm!562618 (= call!562623 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))) (h!71743 s!2326)))))

(declare-fun b!6496065 () Bool)

(assert (=> b!6496065 (= e!3936542 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))))))

(declare-fun b!6496066 () Bool)

(declare-fun e!3936541 () (InoxSet Context!11514))

(assert (=> b!6496066 (= e!3936541 call!562623)))

(declare-fun b!6496067 () Bool)

(assert (=> b!6496067 (= e!3936543 ((_ map or) call!562623 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))) (h!71743 s!2326))))))

(declare-fun b!6496068 () Bool)

(assert (=> b!6496068 (= e!3936543 e!3936541)))

(declare-fun c!1190769 () Bool)

(assert (=> b!6496068 (= c!1190769 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))))

(declare-fun b!6496069 () Bool)

(assert (=> b!6496069 (= e!3936541 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038394 res!2667947) b!6496065))

(assert (= (and d!2038394 c!1190770) b!6496067))

(assert (= (and d!2038394 (not c!1190770)) b!6496068))

(assert (= (and b!6496068 c!1190769) b!6496066))

(assert (= (and b!6496068 (not c!1190769)) b!6496069))

(assert (= (or b!6496067 b!6496066) bm!562618))

(declare-fun m!7284672 () Bool)

(assert (=> bm!562618 m!7284672))

(declare-fun m!7284678 () Bool)

(assert (=> b!6496065 m!7284678))

(declare-fun m!7284680 () Bool)

(assert (=> b!6496067 m!7284680))

(assert (=> b!6495443 d!2038394))

(declare-fun d!2038404 () Bool)

(assert (=> d!2038404 (= (Exists!3443 (ite c!1190651 lambda!359868 lambda!359869)) (choose!48211 (ite c!1190651 lambda!359868 lambda!359869)))))

(declare-fun bs!1649894 () Bool)

(assert (= bs!1649894 d!2038404))

(declare-fun m!7284682 () Bool)

(assert (=> bs!1649894 m!7284682))

(assert (=> bm!562527 d!2038404))

(declare-fun d!2038406 () Bool)

(assert (=> d!2038406 true))

(declare-fun setRes!44265 () Bool)

(assert (=> d!2038406 setRes!44265))

(declare-fun condSetEmpty!44265 () Bool)

(declare-fun res!2667958 () (InoxSet Context!11514))

(assert (=> d!2038406 (= condSetEmpty!44265 (= res!2667958 ((as const (Array Context!11514 Bool)) false)))))

(assert (=> d!2038406 (= (choose!48216 z!1189 lambda!359804) res!2667958)))

(declare-fun setIsEmpty!44265 () Bool)

(assert (=> setIsEmpty!44265 setRes!44265))

(declare-fun setElem!44265 () Context!11514)

(declare-fun e!3936562 () Bool)

(declare-fun setNonEmpty!44265 () Bool)

(declare-fun tp!1797401 () Bool)

(assert (=> setNonEmpty!44265 (= setRes!44265 (and tp!1797401 (inv!84179 setElem!44265) e!3936562))))

(declare-fun setRest!44265 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44265 (= res!2667958 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44265 true) setRest!44265))))

(declare-fun b!6496096 () Bool)

(declare-fun tp!1797402 () Bool)

(assert (=> b!6496096 (= e!3936562 tp!1797402)))

(assert (= (and d!2038406 condSetEmpty!44265) setIsEmpty!44265))

(assert (= (and d!2038406 (not condSetEmpty!44265)) setNonEmpty!44265))

(assert (= setNonEmpty!44265 b!6496096))

(declare-fun m!7284706 () Bool)

(assert (=> setNonEmpty!44265 m!7284706))

(assert (=> d!2038176 d!2038406))

(assert (=> d!2038188 d!2038190))

(assert (=> d!2038188 d!2038128))

(declare-fun d!2038410 () Bool)

(declare-fun e!3936567 () Bool)

(assert (=> d!2038410 (= (matchZipper!2385 ((_ map or) lt!2390644 lt!2390660) (t!379049 s!2326)) e!3936567)))

(declare-fun res!2667961 () Bool)

(assert (=> d!2038410 (=> res!2667961 e!3936567)))

(assert (=> d!2038410 (= res!2667961 (matchZipper!2385 lt!2390644 (t!379049 s!2326)))))

(assert (=> d!2038410 true))

(declare-fun _$48!2255 () Unit!158827)

(assert (=> d!2038410 (= (choose!48217 lt!2390644 lt!2390660 (t!379049 s!2326)) _$48!2255)))

(declare-fun b!6496103 () Bool)

(assert (=> b!6496103 (= e!3936567 (matchZipper!2385 lt!2390660 (t!379049 s!2326)))))

(assert (= (and d!2038410 (not res!2667961)) b!6496103))

(assert (=> d!2038410 m!7283714))

(assert (=> d!2038410 m!7283706))

(assert (=> b!6496103 m!7283694))

(assert (=> d!2038188 d!2038410))

(assert (=> d!2038162 d!2038158))

(declare-fun d!2038422 () Bool)

(assert (=> d!2038422 (= (flatMap!1878 lt!2390657 lambda!359804) (dynLambda!25935 lambda!359804 lt!2390647))))

(assert (=> d!2038422 true))

(declare-fun _$13!3736 () Unit!158827)

(assert (=> d!2038422 (= (choose!48215 lt!2390657 lt!2390647 lambda!359804) _$13!3736)))

(declare-fun b_lambda!245893 () Bool)

(assert (=> (not b_lambda!245893) (not d!2038422)))

(declare-fun bs!1649923 () Bool)

(assert (= bs!1649923 d!2038422))

(assert (=> bs!1649923 m!7283698))

(assert (=> bs!1649923 m!7284150))

(assert (=> d!2038162 d!2038422))

(declare-fun d!2038426 () Bool)

(declare-fun c!1190790 () Bool)

(assert (=> d!2038426 (= c!1190790 ((_ is Nil!65296) lt!2390733))))

(declare-fun e!3936583 () (InoxSet Context!11514))

(assert (=> d!2038426 (= (content!12448 lt!2390733) e!3936583)))

(declare-fun b!6496128 () Bool)

(assert (=> b!6496128 (= e!3936583 ((as const (Array Context!11514 Bool)) false))))

(declare-fun b!6496129 () Bool)

(assert (=> b!6496129 (= e!3936583 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) (h!71744 lt!2390733) true) (content!12448 (t!379050 lt!2390733))))))

(assert (= (and d!2038426 c!1190790) b!6496128))

(assert (= (and d!2038426 (not c!1190790)) b!6496129))

(declare-fun m!7284744 () Bool)

(assert (=> b!6496129 m!7284744))

(declare-fun m!7284746 () Bool)

(assert (=> b!6496129 m!7284746))

(assert (=> b!6495381 d!2038426))

(declare-fun d!2038434 () Bool)

(assert (=> d!2038434 (= (nullable!6366 r!7292) (nullableFct!2302 r!7292))))

(declare-fun bs!1649926 () Bool)

(assert (= bs!1649926 d!2038434))

(declare-fun m!7284750 () Bool)

(assert (=> bs!1649926 m!7284750))

(assert (=> b!6495625 d!2038434))

(declare-fun d!2038438 () Bool)

(assert (=> d!2038438 true))

(declare-fun setRes!44266 () Bool)

(assert (=> d!2038438 setRes!44266))

(declare-fun condSetEmpty!44266 () Bool)

(declare-fun res!2667968 () (InoxSet Context!11514))

(assert (=> d!2038438 (= condSetEmpty!44266 (= res!2667968 ((as const (Array Context!11514 Bool)) false)))))

(assert (=> d!2038438 (= (choose!48216 lt!2390646 lambda!359804) res!2667968)))

(declare-fun setIsEmpty!44266 () Bool)

(assert (=> setIsEmpty!44266 setRes!44266))

(declare-fun setNonEmpty!44266 () Bool)

(declare-fun e!3936584 () Bool)

(declare-fun setElem!44266 () Context!11514)

(declare-fun tp!1797403 () Bool)

(assert (=> setNonEmpty!44266 (= setRes!44266 (and tp!1797403 (inv!84179 setElem!44266) e!3936584))))

(declare-fun setRest!44266 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44266 (= res!2667968 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44266 true) setRest!44266))))

(declare-fun b!6496130 () Bool)

(declare-fun tp!1797404 () Bool)

(assert (=> b!6496130 (= e!3936584 tp!1797404)))

(assert (= (and d!2038438 condSetEmpty!44266) setIsEmpty!44266))

(assert (= (and d!2038438 (not condSetEmpty!44266)) setNonEmpty!44266))

(assert (= setNonEmpty!44266 b!6496130))

(declare-fun m!7284754 () Bool)

(assert (=> setNonEmpty!44266 m!7284754))

(assert (=> d!2038150 d!2038438))

(declare-fun bm!562632 () Bool)

(declare-fun call!562637 () Bool)

(declare-fun c!1190796 () Bool)

(declare-fun c!1190795 () Bool)

(assert (=> bm!562632 (= call!562637 (validRegex!8109 (ite c!1190795 (reg!16702 lt!2390751) (ite c!1190796 (regTwo!33259 lt!2390751) (regTwo!33258 lt!2390751)))))))

(declare-fun b!6496141 () Bool)

(declare-fun e!3936595 () Bool)

(declare-fun e!3936592 () Bool)

(assert (=> b!6496141 (= e!3936595 e!3936592)))

(declare-fun res!2667972 () Bool)

(assert (=> b!6496141 (= res!2667972 (not (nullable!6366 (reg!16702 lt!2390751))))))

(assert (=> b!6496141 (=> (not res!2667972) (not e!3936592))))

(declare-fun b!6496142 () Bool)

(declare-fun e!3936594 () Bool)

(declare-fun call!562639 () Bool)

(assert (=> b!6496142 (= e!3936594 call!562639)))

(declare-fun bm!562633 () Bool)

(declare-fun call!562638 () Bool)

(assert (=> bm!562633 (= call!562638 (validRegex!8109 (ite c!1190796 (regOne!33259 lt!2390751) (regOne!33258 lt!2390751))))))

(declare-fun b!6496143 () Bool)

(declare-fun e!3936593 () Bool)

(assert (=> b!6496143 (= e!3936593 e!3936595)))

(assert (=> b!6496143 (= c!1190795 ((_ is Star!16373) lt!2390751))))

(declare-fun b!6496144 () Bool)

(declare-fun res!2667974 () Bool)

(declare-fun e!3936596 () Bool)

(assert (=> b!6496144 (=> res!2667974 e!3936596)))

(assert (=> b!6496144 (= res!2667974 (not ((_ is Concat!25218) lt!2390751)))))

(declare-fun e!3936591 () Bool)

(assert (=> b!6496144 (= e!3936591 e!3936596)))

(declare-fun b!6496145 () Bool)

(declare-fun e!3936597 () Bool)

(assert (=> b!6496145 (= e!3936597 call!562639)))

(declare-fun b!6496146 () Bool)

(assert (=> b!6496146 (= e!3936595 e!3936591)))

(assert (=> b!6496146 (= c!1190796 ((_ is Union!16373) lt!2390751))))

(declare-fun b!6496147 () Bool)

(assert (=> b!6496147 (= e!3936596 e!3936597)))

(declare-fun res!2667975 () Bool)

(assert (=> b!6496147 (=> (not res!2667975) (not e!3936597))))

(assert (=> b!6496147 (= res!2667975 call!562638)))

(declare-fun bm!562634 () Bool)

(assert (=> bm!562634 (= call!562639 call!562637)))

(declare-fun d!2038442 () Bool)

(declare-fun res!2667971 () Bool)

(assert (=> d!2038442 (=> res!2667971 e!3936593)))

(assert (=> d!2038442 (= res!2667971 ((_ is ElementMatch!16373) lt!2390751))))

(assert (=> d!2038442 (= (validRegex!8109 lt!2390751) e!3936593)))

(declare-fun b!6496148 () Bool)

(assert (=> b!6496148 (= e!3936592 call!562637)))

(declare-fun b!6496149 () Bool)

(declare-fun res!2667973 () Bool)

(assert (=> b!6496149 (=> (not res!2667973) (not e!3936594))))

(assert (=> b!6496149 (= res!2667973 call!562638)))

(assert (=> b!6496149 (= e!3936591 e!3936594)))

(assert (= (and d!2038442 (not res!2667971)) b!6496143))

(assert (= (and b!6496143 c!1190795) b!6496141))

(assert (= (and b!6496143 (not c!1190795)) b!6496146))

(assert (= (and b!6496141 res!2667972) b!6496148))

(assert (= (and b!6496146 c!1190796) b!6496149))

(assert (= (and b!6496146 (not c!1190796)) b!6496144))

(assert (= (and b!6496149 res!2667973) b!6496142))

(assert (= (and b!6496144 (not res!2667974)) b!6496147))

(assert (= (and b!6496147 res!2667975) b!6496145))

(assert (= (or b!6496142 b!6496145) bm!562634))

(assert (= (or b!6496149 b!6496147) bm!562633))

(assert (= (or b!6496148 bm!562634) bm!562632))

(declare-fun m!7284756 () Bool)

(assert (=> bm!562632 m!7284756))

(declare-fun m!7284758 () Bool)

(assert (=> b!6496141 m!7284758))

(declare-fun m!7284760 () Bool)

(assert (=> bm!562633 m!7284760))

(assert (=> d!2038192 d!2038442))

(declare-fun d!2038444 () Bool)

(declare-fun res!2667985 () Bool)

(declare-fun e!3936609 () Bool)

(assert (=> d!2038444 (=> res!2667985 e!3936609)))

(assert (=> d!2038444 (= res!2667985 ((_ is Nil!65294) (unfocusZipperList!1794 zl!343)))))

(assert (=> d!2038444 (= (forall!15554 (unfocusZipperList!1794 zl!343) lambda!359860) e!3936609)))

(declare-fun b!6496163 () Bool)

(declare-fun e!3936610 () Bool)

(assert (=> b!6496163 (= e!3936609 e!3936610)))

(declare-fun res!2667986 () Bool)

(assert (=> b!6496163 (=> (not res!2667986) (not e!3936610))))

(declare-fun dynLambda!25937 (Int Regex!16373) Bool)

(assert (=> b!6496163 (= res!2667986 (dynLambda!25937 lambda!359860 (h!71742 (unfocusZipperList!1794 zl!343))))))

(declare-fun b!6496164 () Bool)

(assert (=> b!6496164 (= e!3936610 (forall!15554 (t!379048 (unfocusZipperList!1794 zl!343)) lambda!359860))))

(assert (= (and d!2038444 (not res!2667985)) b!6496163))

(assert (= (and b!6496163 res!2667986) b!6496164))

(declare-fun b_lambda!245895 () Bool)

(assert (=> (not b_lambda!245895) (not b!6496163)))

(declare-fun m!7284786 () Bool)

(assert (=> b!6496163 m!7284786))

(declare-fun m!7284788 () Bool)

(assert (=> b!6496164 m!7284788))

(assert (=> d!2038192 d!2038444))

(assert (=> bm!562532 d!2038370))

(declare-fun d!2038450 () Bool)

(assert (=> d!2038450 true))

(assert (=> d!2038450 true))

(declare-fun res!2667993 () Bool)

(assert (=> d!2038450 (= (choose!48211 lambda!359802) res!2667993)))

(assert (=> d!2038118 d!2038450))

(declare-fun d!2038454 () Bool)

(declare-fun c!1190804 () Bool)

(declare-fun e!3936620 () Bool)

(assert (=> d!2038454 (= c!1190804 e!3936620)))

(declare-fun res!2667994 () Bool)

(assert (=> d!2038454 (=> (not res!2667994) (not e!3936620))))

(assert (=> d!2038454 (= res!2667994 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun e!3936621 () (InoxSet Context!11514))

(assert (=> d!2038454 (= (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) (h!71743 s!2326)) e!3936621)))

(declare-fun bm!562640 () Bool)

(declare-fun call!562645 () (InoxSet Context!11514))

(assert (=> bm!562640 (= call!562645 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343))))))) (h!71743 s!2326)))))

(declare-fun b!6496177 () Bool)

(assert (=> b!6496177 (= e!3936620 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343))))))))))

(declare-fun b!6496178 () Bool)

(declare-fun e!3936619 () (InoxSet Context!11514))

(assert (=> b!6496178 (= e!3936619 call!562645)))

(declare-fun b!6496179 () Bool)

(assert (=> b!6496179 (= e!3936621 ((_ map or) call!562645 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343))))))) (h!71743 s!2326))))))

(declare-fun b!6496180 () Bool)

(assert (=> b!6496180 (= e!3936621 e!3936619)))

(declare-fun c!1190803 () Bool)

(assert (=> b!6496180 (= c!1190803 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun b!6496181 () Bool)

(assert (=> b!6496181 (= e!3936619 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038454 res!2667994) b!6496177))

(assert (= (and d!2038454 c!1190804) b!6496179))

(assert (= (and d!2038454 (not c!1190804)) b!6496180))

(assert (= (and b!6496180 c!1190803) b!6496178))

(assert (= (and b!6496180 (not c!1190803)) b!6496181))

(assert (= (or b!6496179 b!6496178) bm!562640))

(declare-fun m!7284792 () Bool)

(assert (=> bm!562640 m!7284792))

(declare-fun m!7284794 () Bool)

(assert (=> b!6496177 m!7284794))

(declare-fun m!7284796 () Bool)

(assert (=> b!6496179 m!7284796))

(assert (=> b!6495486 d!2038454))

(declare-fun d!2038456 () Bool)

(declare-fun c!1190806 () Bool)

(declare-fun e!3936623 () Bool)

(assert (=> d!2038456 (= c!1190806 e!3936623)))

(declare-fun res!2667995 () Bool)

(assert (=> d!2038456 (=> (not res!2667995) (not e!3936623))))

(assert (=> d!2038456 (= res!2667995 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633))))))))

(declare-fun e!3936624 () (InoxSet Context!11514))

(assert (=> d!2038456 (= (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390633))) (h!71743 s!2326)) e!3936624)))

(declare-fun bm!562641 () Bool)

(declare-fun call!562646 () (InoxSet Context!11514))

(assert (=> bm!562641 (= call!562646 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633)))))) (h!71743 s!2326)))))

(declare-fun b!6496182 () Bool)

(assert (=> b!6496182 (= e!3936623 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633)))))))))

(declare-fun b!6496183 () Bool)

(declare-fun e!3936622 () (InoxSet Context!11514))

(assert (=> b!6496183 (= e!3936622 call!562646)))

(declare-fun b!6496184 () Bool)

(assert (=> b!6496184 (= e!3936624 ((_ map or) call!562646 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633)))))) (h!71743 s!2326))))))

(declare-fun b!6496185 () Bool)

(assert (=> b!6496185 (= e!3936624 e!3936622)))

(declare-fun c!1190805 () Bool)

(assert (=> b!6496185 (= c!1190805 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633))))))))

(declare-fun b!6496186 () Bool)

(assert (=> b!6496186 (= e!3936622 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038456 res!2667995) b!6496182))

(assert (= (and d!2038456 c!1190806) b!6496184))

(assert (= (and d!2038456 (not c!1190806)) b!6496185))

(assert (= (and b!6496185 c!1190805) b!6496183))

(assert (= (and b!6496185 (not c!1190805)) b!6496186))

(assert (= (or b!6496184 b!6496183) bm!562641))

(declare-fun m!7284798 () Bool)

(assert (=> bm!562641 m!7284798))

(declare-fun m!7284800 () Bool)

(assert (=> b!6496182 m!7284800))

(declare-fun m!7284802 () Bool)

(assert (=> b!6496184 m!7284802))

(assert (=> b!6495481 d!2038456))

(declare-fun d!2038458 () Bool)

(assert (=> d!2038458 (= (isDefined!12967 lt!2390719) (not (isEmpty!37493 lt!2390719)))))

(declare-fun bs!1649949 () Bool)

(assert (= bs!1649949 d!2038458))

(declare-fun m!7284804 () Bool)

(assert (=> bs!1649949 m!7284804))

(assert (=> b!6495346 d!2038458))

(declare-fun d!2038460 () Bool)

(assert (=> d!2038460 (= (head!13217 s!2326) (h!71743 s!2326))))

(assert (=> b!6495618 d!2038460))

(declare-fun b!6496206 () Bool)

(declare-fun e!3936645 () Bool)

(declare-fun e!3936643 () Bool)

(assert (=> b!6496206 (= e!3936645 e!3936643)))

(declare-fun res!2668010 () Bool)

(assert (=> b!6496206 (=> res!2668010 e!3936643)))

(assert (=> b!6496206 (= res!2668010 ((_ is Star!16373) (regOne!33258 (regOne!33258 r!7292))))))

(declare-fun d!2038462 () Bool)

(declare-fun res!2668008 () Bool)

(declare-fun e!3936641 () Bool)

(assert (=> d!2038462 (=> res!2668008 e!3936641)))

(assert (=> d!2038462 (= res!2668008 ((_ is EmptyExpr!16373) (regOne!33258 (regOne!33258 r!7292))))))

(assert (=> d!2038462 (= (nullableFct!2302 (regOne!33258 (regOne!33258 r!7292))) e!3936641)))

(declare-fun b!6496207 () Bool)

(declare-fun e!3936640 () Bool)

(declare-fun call!562652 () Bool)

(assert (=> b!6496207 (= e!3936640 call!562652)))

(declare-fun b!6496208 () Bool)

(declare-fun e!3936644 () Bool)

(assert (=> b!6496208 (= e!3936644 call!562652)))

(declare-fun bm!562647 () Bool)

(declare-fun call!562653 () Bool)

(declare-fun c!1190811 () Bool)

(assert (=> bm!562647 (= call!562653 (nullable!6366 (ite c!1190811 (regOne!33259 (regOne!33258 (regOne!33258 r!7292))) (regOne!33258 (regOne!33258 (regOne!33258 r!7292))))))))

(declare-fun b!6496209 () Bool)

(declare-fun e!3936642 () Bool)

(assert (=> b!6496209 (= e!3936642 e!3936644)))

(declare-fun res!2668007 () Bool)

(assert (=> b!6496209 (= res!2668007 call!562653)))

(assert (=> b!6496209 (=> res!2668007 e!3936644)))

(declare-fun bm!562648 () Bool)

(assert (=> bm!562648 (= call!562652 (nullable!6366 (ite c!1190811 (regTwo!33259 (regOne!33258 (regOne!33258 r!7292))) (regTwo!33258 (regOne!33258 (regOne!33258 r!7292))))))))

(declare-fun b!6496210 () Bool)

(assert (=> b!6496210 (= e!3936643 e!3936642)))

(assert (=> b!6496210 (= c!1190811 ((_ is Union!16373) (regOne!33258 (regOne!33258 r!7292))))))

(declare-fun b!6496211 () Bool)

(assert (=> b!6496211 (= e!3936642 e!3936640)))

(declare-fun res!2668009 () Bool)

(assert (=> b!6496211 (= res!2668009 call!562653)))

(assert (=> b!6496211 (=> (not res!2668009) (not e!3936640))))

(declare-fun b!6496212 () Bool)

(assert (=> b!6496212 (= e!3936641 e!3936645)))

(declare-fun res!2668011 () Bool)

(assert (=> b!6496212 (=> (not res!2668011) (not e!3936645))))

(assert (=> b!6496212 (= res!2668011 (and (not ((_ is EmptyLang!16373) (regOne!33258 (regOne!33258 r!7292)))) (not ((_ is ElementMatch!16373) (regOne!33258 (regOne!33258 r!7292))))))))

(assert (= (and d!2038462 (not res!2668008)) b!6496212))

(assert (= (and b!6496212 res!2668011) b!6496206))

(assert (= (and b!6496206 (not res!2668010)) b!6496210))

(assert (= (and b!6496210 c!1190811) b!6496209))

(assert (= (and b!6496210 (not c!1190811)) b!6496211))

(assert (= (and b!6496209 (not res!2668007)) b!6496208))

(assert (= (and b!6496211 res!2668009) b!6496207))

(assert (= (or b!6496208 b!6496207) bm!562648))

(assert (= (or b!6496209 b!6496211) bm!562647))

(declare-fun m!7284818 () Bool)

(assert (=> bm!562647 m!7284818))

(declare-fun m!7284820 () Bool)

(assert (=> bm!562648 m!7284820))

(assert (=> d!2038126 d!2038462))

(declare-fun d!2038474 () Bool)

(declare-fun c!1190813 () Bool)

(declare-fun e!3936647 () Bool)

(assert (=> d!2038474 (= c!1190813 e!3936647)))

(declare-fun res!2668012 () Bool)

(assert (=> d!2038474 (=> (not res!2668012) (not e!3936647))))

(assert (=> d!2038474 (= res!2668012 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635))))))))

(declare-fun e!3936648 () (InoxSet Context!11514))

(assert (=> d!2038474 (= (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390635))) (h!71743 s!2326)) e!3936648)))

(declare-fun bm!562649 () Bool)

(declare-fun call!562654 () (InoxSet Context!11514))

(assert (=> bm!562649 (= call!562654 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635)))))) (h!71743 s!2326)))))

(declare-fun b!6496213 () Bool)

(assert (=> b!6496213 (= e!3936647 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635)))))))))

(declare-fun b!6496214 () Bool)

(declare-fun e!3936646 () (InoxSet Context!11514))

(assert (=> b!6496214 (= e!3936646 call!562654)))

(declare-fun b!6496215 () Bool)

(assert (=> b!6496215 (= e!3936648 ((_ map or) call!562654 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635)))))) (h!71743 s!2326))))))

(declare-fun b!6496216 () Bool)

(assert (=> b!6496216 (= e!3936648 e!3936646)))

(declare-fun c!1190812 () Bool)

(assert (=> b!6496216 (= c!1190812 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635))))))))

(declare-fun b!6496217 () Bool)

(assert (=> b!6496217 (= e!3936646 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038474 res!2668012) b!6496213))

(assert (= (and d!2038474 c!1190813) b!6496215))

(assert (= (and d!2038474 (not c!1190813)) b!6496216))

(assert (= (and b!6496216 c!1190812) b!6496214))

(assert (= (and b!6496216 (not c!1190812)) b!6496217))

(assert (= (or b!6496215 b!6496214) bm!562649))

(declare-fun m!7284822 () Bool)

(assert (=> bm!562649 m!7284822))

(declare-fun m!7284824 () Bool)

(assert (=> b!6496213 m!7284824))

(declare-fun m!7284826 () Bool)

(assert (=> b!6496215 m!7284826))

(assert (=> b!6495399 d!2038474))

(declare-fun bs!1649969 () Bool)

(declare-fun d!2038476 () Bool)

(assert (= bs!1649969 (and d!2038476 d!2038172)))

(declare-fun lambda!359908 () Int)

(assert (=> bs!1649969 (= lambda!359908 lambda!359857)))

(declare-fun bs!1649970 () Bool)

(assert (= bs!1649970 (and d!2038476 d!2038112)))

(assert (=> bs!1649970 (= lambda!359908 lambda!359841)))

(declare-fun bs!1649971 () Bool)

(assert (= bs!1649971 (and d!2038476 d!2038214)))

(assert (=> bs!1649971 (= lambda!359908 lambda!359872)))

(declare-fun bs!1649972 () Bool)

(assert (= bs!1649972 (and d!2038476 d!2038156)))

(assert (=> bs!1649972 (= lambda!359908 lambda!359853)))

(declare-fun bs!1649973 () Bool)

(assert (= bs!1649973 (and d!2038476 d!2038194)))

(assert (=> bs!1649973 (= lambda!359908 lambda!359863)))

(declare-fun bs!1649974 () Bool)

(assert (= bs!1649974 (and d!2038476 d!2038192)))

(assert (=> bs!1649974 (= lambda!359908 lambda!359860)))

(declare-fun b!6496229 () Bool)

(declare-fun e!3936657 () Regex!16373)

(assert (=> b!6496229 (= e!3936657 (Union!16373 (h!71742 (t!379048 (unfocusZipperList!1794 zl!343))) (generalisedUnion!2217 (t!379048 (t!379048 (unfocusZipperList!1794 zl!343))))))))

(declare-fun b!6496230 () Bool)

(declare-fun e!3936656 () Bool)

(declare-fun lt!2390784 () Regex!16373)

(assert (=> b!6496230 (= e!3936656 (isUnion!1201 lt!2390784))))

(declare-fun e!3936659 () Bool)

(assert (=> d!2038476 e!3936659))

(declare-fun res!2668015 () Bool)

(assert (=> d!2038476 (=> (not res!2668015) (not e!3936659))))

(assert (=> d!2038476 (= res!2668015 (validRegex!8109 lt!2390784))))

(declare-fun e!3936658 () Regex!16373)

(assert (=> d!2038476 (= lt!2390784 e!3936658)))

(declare-fun c!1190822 () Bool)

(declare-fun e!3936660 () Bool)

(assert (=> d!2038476 (= c!1190822 e!3936660)))

(declare-fun res!2668014 () Bool)

(assert (=> d!2038476 (=> (not res!2668014) (not e!3936660))))

(assert (=> d!2038476 (= res!2668014 ((_ is Cons!65294) (t!379048 (unfocusZipperList!1794 zl!343))))))

(assert (=> d!2038476 (forall!15554 (t!379048 (unfocusZipperList!1794 zl!343)) lambda!359908)))

(assert (=> d!2038476 (= (generalisedUnion!2217 (t!379048 (unfocusZipperList!1794 zl!343))) lt!2390784)))

(declare-fun b!6496231 () Bool)

(assert (=> b!6496231 (= e!3936660 (isEmpty!37489 (t!379048 (t!379048 (unfocusZipperList!1794 zl!343)))))))

(declare-fun b!6496232 () Bool)

(declare-fun e!3936655 () Bool)

(assert (=> b!6496232 (= e!3936655 e!3936656)))

(declare-fun c!1190819 () Bool)

(assert (=> b!6496232 (= c!1190819 (isEmpty!37489 (tail!12303 (t!379048 (unfocusZipperList!1794 zl!343)))))))

(declare-fun b!6496233 () Bool)

(assert (=> b!6496233 (= e!3936655 (isEmptyLang!1771 lt!2390784))))

(declare-fun b!6496234 () Bool)

(assert (=> b!6496234 (= e!3936659 e!3936655)))

(declare-fun c!1190820 () Bool)

(assert (=> b!6496234 (= c!1190820 (isEmpty!37489 (t!379048 (unfocusZipperList!1794 zl!343))))))

(declare-fun b!6496235 () Bool)

(assert (=> b!6496235 (= e!3936658 e!3936657)))

(declare-fun c!1190821 () Bool)

(assert (=> b!6496235 (= c!1190821 ((_ is Cons!65294) (t!379048 (unfocusZipperList!1794 zl!343))))))

(declare-fun b!6496236 () Bool)

(assert (=> b!6496236 (= e!3936656 (= lt!2390784 (head!13218 (t!379048 (unfocusZipperList!1794 zl!343)))))))

(declare-fun b!6496237 () Bool)

(assert (=> b!6496237 (= e!3936657 EmptyLang!16373)))

(declare-fun b!6496238 () Bool)

(assert (=> b!6496238 (= e!3936658 (h!71742 (t!379048 (unfocusZipperList!1794 zl!343))))))

(assert (= (and d!2038476 res!2668014) b!6496231))

(assert (= (and d!2038476 c!1190822) b!6496238))

(assert (= (and d!2038476 (not c!1190822)) b!6496235))

(assert (= (and b!6496235 c!1190821) b!6496229))

(assert (= (and b!6496235 (not c!1190821)) b!6496237))

(assert (= (and d!2038476 res!2668015) b!6496234))

(assert (= (and b!6496234 c!1190820) b!6496233))

(assert (= (and b!6496234 (not c!1190820)) b!6496232))

(assert (= (and b!6496232 c!1190819) b!6496236))

(assert (= (and b!6496232 (not c!1190819)) b!6496230))

(declare-fun m!7284840 () Bool)

(assert (=> b!6496236 m!7284840))

(declare-fun m!7284842 () Bool)

(assert (=> b!6496230 m!7284842))

(declare-fun m!7284844 () Bool)

(assert (=> b!6496232 m!7284844))

(assert (=> b!6496232 m!7284844))

(declare-fun m!7284848 () Bool)

(assert (=> b!6496232 m!7284848))

(assert (=> b!6496234 m!7284234))

(declare-fun m!7284850 () Bool)

(assert (=> d!2038476 m!7284850))

(declare-fun m!7284852 () Bool)

(assert (=> d!2038476 m!7284852))

(declare-fun m!7284856 () Bool)

(assert (=> b!6496231 m!7284856))

(declare-fun m!7284858 () Bool)

(assert (=> b!6496233 m!7284858))

(declare-fun m!7284860 () Bool)

(assert (=> b!6496229 m!7284860))

(assert (=> b!6495514 d!2038476))

(assert (=> d!2038134 d!2038370))

(declare-fun d!2038482 () Bool)

(assert (=> d!2038482 (= (isEmpty!37493 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326)) (not ((_ is Some!16263) (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326))))))

(assert (=> d!2038124 d!2038482))

(assert (=> d!2038174 d!2038176))

(declare-fun d!2038484 () Bool)

(assert (=> d!2038484 (= (flatMap!1878 z!1189 lambda!359804) (dynLambda!25935 lambda!359804 (h!71744 zl!343)))))

(assert (=> d!2038484 true))

(declare-fun _$13!3737 () Unit!158827)

(assert (=> d!2038484 (= (choose!48215 z!1189 (h!71744 zl!343) lambda!359804) _$13!3737)))

(declare-fun b_lambda!245897 () Bool)

(assert (=> (not b_lambda!245897) (not d!2038484)))

(declare-fun bs!1649981 () Bool)

(assert (= bs!1649981 d!2038484))

(assert (=> bs!1649981 m!7283644))

(assert (=> bs!1649981 m!7284176))

(assert (=> d!2038174 d!2038484))

(assert (=> d!2038142 d!2038152))

(declare-fun d!2038488 () Bool)

(assert (=> d!2038488 (= (flatMap!1878 lt!2390643 lambda!359804) (dynLambda!25935 lambda!359804 lt!2390632))))

(assert (=> d!2038488 true))

(declare-fun _$13!3738 () Unit!158827)

(assert (=> d!2038488 (= (choose!48215 lt!2390643 lt!2390632 lambda!359804) _$13!3738)))

(declare-fun b_lambda!245899 () Bool)

(assert (=> (not b_lambda!245899) (not d!2038488)))

(declare-fun bs!1649986 () Bool)

(assert (= bs!1649986 d!2038488))

(assert (=> bs!1649986 m!7283660))

(assert (=> bs!1649986 m!7284094))

(assert (=> d!2038142 d!2038488))

(declare-fun d!2038490 () Bool)

(assert (=> d!2038490 (= (nullable!6366 (h!71742 (exprs!6257 lt!2390647))) (nullableFct!2302 (h!71742 (exprs!6257 lt!2390647))))))

(declare-fun bs!1649988 () Bool)

(assert (= bs!1649988 d!2038490))

(declare-fun m!7284866 () Bool)

(assert (=> bs!1649988 m!7284866))

(assert (=> b!6495432 d!2038490))

(assert (=> b!6495425 d!2038130))

(declare-fun d!2038494 () Bool)

(declare-fun c!1190824 () Bool)

(assert (=> d!2038494 (= c!1190824 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun e!3936664 () Bool)

(assert (=> d!2038494 (= (matchZipper!2385 (derivationStepZipper!2339 lt!2390657 (head!13217 s!2326)) (tail!12302 s!2326)) e!3936664)))

(declare-fun b!6496243 () Bool)

(assert (=> b!6496243 (= e!3936664 (nullableZipper!2128 (derivationStepZipper!2339 lt!2390657 (head!13217 s!2326))))))

(declare-fun b!6496244 () Bool)

(assert (=> b!6496244 (= e!3936664 (matchZipper!2385 (derivationStepZipper!2339 (derivationStepZipper!2339 lt!2390657 (head!13217 s!2326)) (head!13217 (tail!12302 s!2326))) (tail!12302 (tail!12302 s!2326))))))

(assert (= (and d!2038494 c!1190824) b!6496243))

(assert (= (and d!2038494 (not c!1190824)) b!6496244))

(assert (=> d!2038494 m!7284076))

(assert (=> d!2038494 m!7284264))

(assert (=> b!6496243 m!7284074))

(declare-fun m!7284872 () Bool)

(assert (=> b!6496243 m!7284872))

(assert (=> b!6496244 m!7284076))

(declare-fun m!7284874 () Bool)

(assert (=> b!6496244 m!7284874))

(assert (=> b!6496244 m!7284074))

(assert (=> b!6496244 m!7284874))

(declare-fun m!7284876 () Bool)

(assert (=> b!6496244 m!7284876))

(assert (=> b!6496244 m!7284076))

(declare-fun m!7284878 () Bool)

(assert (=> b!6496244 m!7284878))

(assert (=> b!6496244 m!7284876))

(assert (=> b!6496244 m!7284878))

(declare-fun m!7284880 () Bool)

(assert (=> b!6496244 m!7284880))

(assert (=> b!6495376 d!2038494))

(declare-fun bs!1649989 () Bool)

(declare-fun d!2038498 () Bool)

(assert (= bs!1649989 (and d!2038498 b!6494901)))

(declare-fun lambda!359911 () Int)

(assert (=> bs!1649989 (= (= (head!13217 s!2326) (h!71743 s!2326)) (= lambda!359911 lambda!359804))))

(declare-fun bs!1649990 () Bool)

(assert (= bs!1649990 (and d!2038498 d!2038164)))

(assert (=> bs!1649990 (= (= (head!13217 s!2326) (h!71743 s!2326)) (= lambda!359911 lambda!359856))))

(assert (=> d!2038498 true))

(assert (=> d!2038498 (= (derivationStepZipper!2339 lt!2390657 (head!13217 s!2326)) (flatMap!1878 lt!2390657 lambda!359911))))

(declare-fun bs!1649991 () Bool)

(assert (= bs!1649991 d!2038498))

(declare-fun m!7284888 () Bool)

(assert (=> bs!1649991 m!7284888))

(assert (=> b!6495376 d!2038498))

(assert (=> b!6495376 d!2038460))

(declare-fun d!2038502 () Bool)

(assert (=> d!2038502 (= (tail!12302 s!2326) (t!379049 s!2326))))

(assert (=> b!6495376 d!2038502))

(assert (=> d!2038204 d!2038370))

(declare-fun c!1190827 () Bool)

(declare-fun c!1190826 () Bool)

(declare-fun bm!562656 () Bool)

(declare-fun call!562661 () Bool)

(assert (=> bm!562656 (= call!562661 (validRegex!8109 (ite c!1190826 (reg!16702 lt!2390659) (ite c!1190827 (regTwo!33259 lt!2390659) (regTwo!33258 lt!2390659)))))))

(declare-fun b!6496247 () Bool)

(declare-fun e!3936670 () Bool)

(declare-fun e!3936667 () Bool)

(assert (=> b!6496247 (= e!3936670 e!3936667)))

(declare-fun res!2668019 () Bool)

(assert (=> b!6496247 (= res!2668019 (not (nullable!6366 (reg!16702 lt!2390659))))))

(assert (=> b!6496247 (=> (not res!2668019) (not e!3936667))))

(declare-fun b!6496248 () Bool)

(declare-fun e!3936669 () Bool)

(declare-fun call!562663 () Bool)

(assert (=> b!6496248 (= e!3936669 call!562663)))

(declare-fun bm!562657 () Bool)

(declare-fun call!562662 () Bool)

(assert (=> bm!562657 (= call!562662 (validRegex!8109 (ite c!1190827 (regOne!33259 lt!2390659) (regOne!33258 lt!2390659))))))

(declare-fun b!6496249 () Bool)

(declare-fun e!3936668 () Bool)

(assert (=> b!6496249 (= e!3936668 e!3936670)))

(assert (=> b!6496249 (= c!1190826 ((_ is Star!16373) lt!2390659))))

(declare-fun b!6496250 () Bool)

(declare-fun res!2668021 () Bool)

(declare-fun e!3936671 () Bool)

(assert (=> b!6496250 (=> res!2668021 e!3936671)))

(assert (=> b!6496250 (= res!2668021 (not ((_ is Concat!25218) lt!2390659)))))

(declare-fun e!3936666 () Bool)

(assert (=> b!6496250 (= e!3936666 e!3936671)))

(declare-fun b!6496251 () Bool)

(declare-fun e!3936672 () Bool)

(assert (=> b!6496251 (= e!3936672 call!562663)))

(declare-fun b!6496252 () Bool)

(assert (=> b!6496252 (= e!3936670 e!3936666)))

(assert (=> b!6496252 (= c!1190827 ((_ is Union!16373) lt!2390659))))

(declare-fun b!6496253 () Bool)

(assert (=> b!6496253 (= e!3936671 e!3936672)))

(declare-fun res!2668022 () Bool)

(assert (=> b!6496253 (=> (not res!2668022) (not e!3936672))))

(assert (=> b!6496253 (= res!2668022 call!562662)))

(declare-fun bm!562658 () Bool)

(assert (=> bm!562658 (= call!562663 call!562661)))

(declare-fun d!2038504 () Bool)

(declare-fun res!2668018 () Bool)

(assert (=> d!2038504 (=> res!2668018 e!3936668)))

(assert (=> d!2038504 (= res!2668018 ((_ is ElementMatch!16373) lt!2390659))))

(assert (=> d!2038504 (= (validRegex!8109 lt!2390659) e!3936668)))

(declare-fun b!6496254 () Bool)

(assert (=> b!6496254 (= e!3936667 call!562661)))

(declare-fun b!6496255 () Bool)

(declare-fun res!2668020 () Bool)

(assert (=> b!6496255 (=> (not res!2668020) (not e!3936669))))

(assert (=> b!6496255 (= res!2668020 call!562662)))

(assert (=> b!6496255 (= e!3936666 e!3936669)))

(assert (= (and d!2038504 (not res!2668018)) b!6496249))

(assert (= (and b!6496249 c!1190826) b!6496247))

(assert (= (and b!6496249 (not c!1190826)) b!6496252))

(assert (= (and b!6496247 res!2668019) b!6496254))

(assert (= (and b!6496252 c!1190827) b!6496255))

(assert (= (and b!6496252 (not c!1190827)) b!6496250))

(assert (= (and b!6496255 res!2668020) b!6496248))

(assert (= (and b!6496250 (not res!2668021)) b!6496253))

(assert (= (and b!6496253 res!2668022) b!6496251))

(assert (= (or b!6496248 b!6496251) bm!562658))

(assert (= (or b!6496255 b!6496253) bm!562657))

(assert (= (or b!6496254 bm!562658) bm!562656))

(declare-fun m!7284892 () Bool)

(assert (=> bm!562656 m!7284892))

(declare-fun m!7284894 () Bool)

(assert (=> b!6496247 m!7284894))

(declare-fun m!7284896 () Bool)

(assert (=> bm!562657 m!7284896))

(assert (=> d!2038204 d!2038504))

(declare-fun b!6496270 () Bool)

(declare-fun e!3936685 () Bool)

(declare-fun e!3936683 () Bool)

(assert (=> b!6496270 (= e!3936685 e!3936683)))

(declare-fun res!2668034 () Bool)

(assert (=> b!6496270 (=> res!2668034 e!3936683)))

(assert (=> b!6496270 (= res!2668034 ((_ is Star!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun d!2038508 () Bool)

(declare-fun res!2668032 () Bool)

(declare-fun e!3936681 () Bool)

(assert (=> d!2038508 (=> res!2668032 e!3936681)))

(assert (=> d!2038508 (= res!2668032 ((_ is EmptyExpr!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> d!2038508 (= (nullableFct!2302 (h!71742 (exprs!6257 (h!71744 zl!343)))) e!3936681)))

(declare-fun b!6496271 () Bool)

(declare-fun e!3936680 () Bool)

(declare-fun call!562665 () Bool)

(assert (=> b!6496271 (= e!3936680 call!562665)))

(declare-fun b!6496272 () Bool)

(declare-fun e!3936684 () Bool)

(assert (=> b!6496272 (= e!3936684 call!562665)))

(declare-fun bm!562660 () Bool)

(declare-fun call!562666 () Bool)

(declare-fun c!1190831 () Bool)

(assert (=> bm!562660 (= call!562666 (nullable!6366 (ite c!1190831 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun b!6496273 () Bool)

(declare-fun e!3936682 () Bool)

(assert (=> b!6496273 (= e!3936682 e!3936684)))

(declare-fun res!2668031 () Bool)

(assert (=> b!6496273 (= res!2668031 call!562666)))

(assert (=> b!6496273 (=> res!2668031 e!3936684)))

(declare-fun bm!562661 () Bool)

(assert (=> bm!562661 (= call!562665 (nullable!6366 (ite c!1190831 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun b!6496274 () Bool)

(assert (=> b!6496274 (= e!3936683 e!3936682)))

(assert (=> b!6496274 (= c!1190831 ((_ is Union!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6496275 () Bool)

(assert (=> b!6496275 (= e!3936682 e!3936680)))

(declare-fun res!2668033 () Bool)

(assert (=> b!6496275 (= res!2668033 call!562666)))

(assert (=> b!6496275 (=> (not res!2668033) (not e!3936680))))

(declare-fun b!6496276 () Bool)

(assert (=> b!6496276 (= e!3936681 e!3936685)))

(declare-fun res!2668035 () Bool)

(assert (=> b!6496276 (=> (not res!2668035) (not e!3936685))))

(assert (=> b!6496276 (= res!2668035 (and (not ((_ is EmptyLang!16373) (h!71742 (exprs!6257 (h!71744 zl!343))))) (not ((_ is ElementMatch!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(assert (= (and d!2038508 (not res!2668032)) b!6496276))

(assert (= (and b!6496276 res!2668035) b!6496270))

(assert (= (and b!6496270 (not res!2668034)) b!6496274))

(assert (= (and b!6496274 c!1190831) b!6496273))

(assert (= (and b!6496274 (not c!1190831)) b!6496275))

(assert (= (and b!6496273 (not res!2668031)) b!6496272))

(assert (= (and b!6496275 res!2668033) b!6496271))

(assert (= (or b!6496272 b!6496271) bm!562661))

(assert (= (or b!6496273 b!6496275) bm!562660))

(declare-fun m!7284902 () Bool)

(assert (=> bm!562660 m!7284902))

(declare-fun m!7284906 () Bool)

(assert (=> bm!562661 m!7284906))

(assert (=> d!2038178 d!2038508))

(declare-fun d!2038510 () Bool)

(assert (=> d!2038510 (= (Exists!3443 (ite c!1190667 lambda!359870 lambda!359871)) (choose!48211 (ite c!1190667 lambda!359870 lambda!359871)))))

(declare-fun bs!1649999 () Bool)

(assert (= bs!1649999 d!2038510))

(declare-fun m!7284910 () Bool)

(assert (=> bs!1649999 m!7284910))

(assert (=> bm!562533 d!2038510))

(declare-fun d!2038512 () Bool)

(declare-fun c!1190832 () Bool)

(assert (=> d!2038512 (= c!1190832 (isEmpty!37494 (tail!12302 (t!379049 s!2326))))))

(declare-fun e!3936686 () Bool)

(assert (=> d!2038512 (= (matchZipper!2385 (derivationStepZipper!2339 ((_ map or) lt!2390644 lt!2390660) (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))) e!3936686)))

(declare-fun b!6496277 () Bool)

(assert (=> b!6496277 (= e!3936686 (nullableZipper!2128 (derivationStepZipper!2339 ((_ map or) lt!2390644 lt!2390660) (head!13217 (t!379049 s!2326)))))))

(declare-fun b!6496278 () Bool)

(assert (=> b!6496278 (= e!3936686 (matchZipper!2385 (derivationStepZipper!2339 (derivationStepZipper!2339 ((_ map or) lt!2390644 lt!2390660) (head!13217 (t!379049 s!2326))) (head!13217 (tail!12302 (t!379049 s!2326)))) (tail!12302 (tail!12302 (t!379049 s!2326)))))))

(assert (= (and d!2038512 c!1190832) b!6496277))

(assert (= (and d!2038512 (not c!1190832)) b!6496278))

(assert (=> d!2038512 m!7284058))

(declare-fun m!7284914 () Bool)

(assert (=> d!2038512 m!7284914))

(assert (=> b!6496277 m!7284216))

(declare-fun m!7284916 () Bool)

(assert (=> b!6496277 m!7284916))

(assert (=> b!6496278 m!7284058))

(declare-fun m!7284918 () Bool)

(assert (=> b!6496278 m!7284918))

(assert (=> b!6496278 m!7284216))

(assert (=> b!6496278 m!7284918))

(declare-fun m!7284920 () Bool)

(assert (=> b!6496278 m!7284920))

(assert (=> b!6496278 m!7284058))

(declare-fun m!7284922 () Bool)

(assert (=> b!6496278 m!7284922))

(assert (=> b!6496278 m!7284920))

(assert (=> b!6496278 m!7284922))

(declare-fun m!7284924 () Bool)

(assert (=> b!6496278 m!7284924))

(assert (=> b!6495493 d!2038512))

(declare-fun bs!1650000 () Bool)

(declare-fun d!2038516 () Bool)

(assert (= bs!1650000 (and d!2038516 b!6494901)))

(declare-fun lambda!359913 () Int)

(assert (=> bs!1650000 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359913 lambda!359804))))

(declare-fun bs!1650001 () Bool)

(assert (= bs!1650001 (and d!2038516 d!2038164)))

(assert (=> bs!1650001 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359913 lambda!359856))))

(declare-fun bs!1650002 () Bool)

(assert (= bs!1650002 (and d!2038516 d!2038498)))

(assert (=> bs!1650002 (= (= (head!13217 (t!379049 s!2326)) (head!13217 s!2326)) (= lambda!359913 lambda!359911))))

(assert (=> d!2038516 true))

(assert (=> d!2038516 (= (derivationStepZipper!2339 ((_ map or) lt!2390644 lt!2390660) (head!13217 (t!379049 s!2326))) (flatMap!1878 ((_ map or) lt!2390644 lt!2390660) lambda!359913))))

(declare-fun bs!1650003 () Bool)

(assert (= bs!1650003 d!2038516))

(declare-fun m!7284926 () Bool)

(assert (=> bs!1650003 m!7284926))

(assert (=> b!6495493 d!2038516))

(declare-fun d!2038518 () Bool)

(assert (=> d!2038518 (= (head!13217 (t!379049 s!2326)) (h!71743 (t!379049 s!2326)))))

(assert (=> b!6495493 d!2038518))

(declare-fun d!2038520 () Bool)

(assert (=> d!2038520 (= (tail!12302 (t!379049 s!2326)) (t!379049 (t!379049 s!2326)))))

(assert (=> b!6495493 d!2038520))

(declare-fun d!2038522 () Bool)

(assert (=> d!2038522 true))

(assert (=> d!2038522 true))

(declare-fun res!2668036 () Bool)

(assert (=> d!2038522 (= (choose!48211 lambda!359803) res!2668036)))

(assert (=> d!2038116 d!2038522))

(assert (=> bs!1649758 d!2038154))

(declare-fun b!6496279 () Bool)

(declare-fun e!3936689 () (InoxSet Context!11514))

(assert (=> b!6496279 (= e!3936689 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562662 () Bool)

(declare-fun call!562669 () List!65418)

(declare-fun call!562670 () List!65418)

(assert (=> bm!562662 (= call!562669 call!562670)))

(declare-fun b!6496280 () Bool)

(declare-fun e!3936688 () (InoxSet Context!11514))

(declare-fun e!3936690 () (InoxSet Context!11514))

(assert (=> b!6496280 (= e!3936688 e!3936690)))

(declare-fun c!1190836 () Bool)

(assert (=> b!6496280 (= c!1190836 ((_ is Concat!25218) (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))))

(declare-fun e!3936691 () (InoxSet Context!11514))

(declare-fun b!6496281 () Bool)

(assert (=> b!6496281 (= e!3936691 (store ((as const (Array Context!11514 Bool)) false) (ite (or c!1190611 c!1190610) lt!2390633 (Context!11515 call!562515)) true))))

(declare-fun c!1190833 () Bool)

(declare-fun bm!562663 () Bool)

(assert (=> bm!562663 (= call!562670 ($colon$colon!2224 (exprs!6257 (ite (or c!1190611 c!1190610) lt!2390633 (Context!11515 call!562515))) (ite (or c!1190833 c!1190836) (regTwo!33258 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))))))))

(declare-fun d!2038524 () Bool)

(declare-fun c!1190835 () Bool)

(assert (=> d!2038524 (= c!1190835 (and ((_ is ElementMatch!16373) (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (= (c!1190447 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (h!71743 s!2326))))))

(assert (=> d!2038524 (= (derivationStepZipperDown!1621 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))) (ite (or c!1190611 c!1190610) lt!2390633 (Context!11515 call!562515)) (h!71743 s!2326)) e!3936691)))

(declare-fun b!6496282 () Bool)

(declare-fun e!3936687 () (InoxSet Context!11514))

(assert (=> b!6496282 (= e!3936691 e!3936687)))

(declare-fun c!1190834 () Bool)

(assert (=> b!6496282 (= c!1190834 ((_ is Union!16373) (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))))

(declare-fun bm!562664 () Bool)

(declare-fun call!562672 () (InoxSet Context!11514))

(declare-fun call!562667 () (InoxSet Context!11514))

(assert (=> bm!562664 (= call!562672 call!562667)))

(declare-fun b!6496283 () Bool)

(declare-fun call!562668 () (InoxSet Context!11514))

(assert (=> b!6496283 (= e!3936690 call!562668)))

(declare-fun bm!562665 () Bool)

(assert (=> bm!562665 (= call!562668 call!562672)))

(declare-fun bm!562666 () Bool)

(declare-fun call!562671 () (InoxSet Context!11514))

(assert (=> bm!562666 (= call!562671 (derivationStepZipperDown!1621 (ite c!1190834 (regOne!33259 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (regOne!33258 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))))) (ite c!1190834 (ite (or c!1190611 c!1190610) lt!2390633 (Context!11515 call!562515)) (Context!11515 call!562670)) (h!71743 s!2326)))))

(declare-fun bm!562667 () Bool)

(assert (=> bm!562667 (= call!562667 (derivationStepZipperDown!1621 (ite c!1190834 (regTwo!33259 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (ite c!1190833 (regTwo!33258 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (ite c!1190836 (regOne!33258 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))) (reg!16702 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))))))) (ite (or c!1190834 c!1190833) (ite (or c!1190611 c!1190610) lt!2390633 (Context!11515 call!562515)) (Context!11515 call!562669)) (h!71743 s!2326)))))

(declare-fun e!3936692 () Bool)

(declare-fun b!6496284 () Bool)

(assert (=> b!6496284 (= e!3936692 (nullable!6366 (regOne!33258 (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))))))))

(declare-fun b!6496285 () Bool)

(assert (=> b!6496285 (= e!3936687 ((_ map or) call!562671 call!562667))))

(declare-fun c!1190837 () Bool)

(declare-fun b!6496286 () Bool)

(assert (=> b!6496286 (= c!1190837 ((_ is Star!16373) (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))))

(assert (=> b!6496286 (= e!3936690 e!3936689)))

(declare-fun b!6496287 () Bool)

(assert (=> b!6496287 (= e!3936688 ((_ map or) call!562671 call!562672))))

(declare-fun b!6496288 () Bool)

(assert (=> b!6496288 (= e!3936689 call!562668)))

(declare-fun b!6496289 () Bool)

(assert (=> b!6496289 (= c!1190833 e!3936692)))

(declare-fun res!2668037 () Bool)

(assert (=> b!6496289 (=> (not res!2668037) (not e!3936692))))

(assert (=> b!6496289 (= res!2668037 ((_ is Concat!25218) (ite c!1190611 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190610 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1190613 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))))

(assert (=> b!6496289 (= e!3936687 e!3936688)))

(assert (= (and d!2038524 c!1190835) b!6496281))

(assert (= (and d!2038524 (not c!1190835)) b!6496282))

(assert (= (and b!6496282 c!1190834) b!6496285))

(assert (= (and b!6496282 (not c!1190834)) b!6496289))

(assert (= (and b!6496289 res!2668037) b!6496284))

(assert (= (and b!6496289 c!1190833) b!6496287))

(assert (= (and b!6496289 (not c!1190833)) b!6496280))

(assert (= (and b!6496280 c!1190836) b!6496283))

(assert (= (and b!6496280 (not c!1190836)) b!6496286))

(assert (= (and b!6496286 c!1190837) b!6496288))

(assert (= (and b!6496286 (not c!1190837)) b!6496279))

(assert (= (or b!6496283 b!6496288) bm!562662))

(assert (= (or b!6496283 b!6496288) bm!562665))

(assert (= (or b!6496287 bm!562662) bm!562663))

(assert (= (or b!6496287 bm!562665) bm!562664))

(assert (= (or b!6496285 bm!562664) bm!562667))

(assert (= (or b!6496285 b!6496287) bm!562666))

(declare-fun m!7284928 () Bool)

(assert (=> bm!562663 m!7284928))

(declare-fun m!7284930 () Bool)

(assert (=> bm!562667 m!7284930))

(declare-fun m!7284932 () Bool)

(assert (=> b!6496281 m!7284932))

(declare-fun m!7284934 () Bool)

(assert (=> b!6496284 m!7284934))

(declare-fun m!7284936 () Bool)

(assert (=> bm!562666 m!7284936))

(assert (=> bm!562513 d!2038524))

(declare-fun bs!1650004 () Bool)

(declare-fun d!2038526 () Bool)

(assert (= bs!1650004 (and d!2038526 d!2038372)))

(declare-fun lambda!359914 () Int)

(assert (=> bs!1650004 (= lambda!359914 lambda!359900)))

(assert (=> d!2038526 (= (nullableZipper!2128 z!1189) (exists!2621 z!1189 lambda!359914))))

(declare-fun bs!1650005 () Bool)

(assert (= bs!1650005 d!2038526))

(declare-fun m!7284938 () Bool)

(assert (=> bs!1650005 m!7284938))

(assert (=> b!6495377 d!2038526))

(declare-fun b!6496290 () Bool)

(declare-fun e!3936695 () (InoxSet Context!11514))

(assert (=> b!6496290 (= e!3936695 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562668 () Bool)

(declare-fun call!562675 () List!65418)

(declare-fun call!562676 () List!65418)

(assert (=> bm!562668 (= call!562675 call!562676)))

(declare-fun b!6496291 () Bool)

(declare-fun e!3936694 () (InoxSet Context!11514))

(declare-fun e!3936696 () (InoxSet Context!11514))

(assert (=> b!6496291 (= e!3936694 e!3936696)))

(declare-fun c!1190841 () Bool)

(assert (=> b!6496291 (= c!1190841 ((_ is Concat!25218) (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))))))

(declare-fun e!3936697 () (InoxSet Context!11514))

(declare-fun b!6496292 () Bool)

(assert (=> b!6496292 (= e!3936697 (store ((as const (Array Context!11514 Bool)) false) (ite (or c!1190636 c!1190635) lt!2390632 (Context!11515 call!562523)) true))))

(declare-fun bm!562669 () Bool)

(declare-fun c!1190838 () Bool)

(assert (=> bm!562669 (= call!562676 ($colon$colon!2224 (exprs!6257 (ite (or c!1190636 c!1190635) lt!2390632 (Context!11515 call!562523))) (ite (or c!1190838 c!1190841) (regTwo!33258 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292)))))))))))

(declare-fun c!1190840 () Bool)

(declare-fun d!2038528 () Bool)

(assert (=> d!2038528 (= c!1190840 (and ((_ is ElementMatch!16373) (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (= (c!1190447 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (h!71743 s!2326))))))

(assert (=> d!2038528 (= (derivationStepZipperDown!1621 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292)))))) (ite (or c!1190636 c!1190635) lt!2390632 (Context!11515 call!562523)) (h!71743 s!2326)) e!3936697)))

(declare-fun b!6496293 () Bool)

(declare-fun e!3936693 () (InoxSet Context!11514))

(assert (=> b!6496293 (= e!3936697 e!3936693)))

(declare-fun c!1190839 () Bool)

(assert (=> b!6496293 (= c!1190839 ((_ is Union!16373) (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))))))

(declare-fun bm!562670 () Bool)

(declare-fun call!562678 () (InoxSet Context!11514))

(declare-fun call!562673 () (InoxSet Context!11514))

(assert (=> bm!562670 (= call!562678 call!562673)))

(declare-fun b!6496294 () Bool)

(declare-fun call!562674 () (InoxSet Context!11514))

(assert (=> b!6496294 (= e!3936696 call!562674)))

(declare-fun bm!562671 () Bool)

(assert (=> bm!562671 (= call!562674 call!562678)))

(declare-fun bm!562672 () Bool)

(declare-fun call!562677 () (InoxSet Context!11514))

(assert (=> bm!562672 (= call!562677 (derivationStepZipperDown!1621 (ite c!1190839 (regOne!33259 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (regOne!33258 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292)))))))) (ite c!1190839 (ite (or c!1190636 c!1190635) lt!2390632 (Context!11515 call!562523)) (Context!11515 call!562676)) (h!71743 s!2326)))))

(declare-fun bm!562673 () Bool)

(assert (=> bm!562673 (= call!562673 (derivationStepZipperDown!1621 (ite c!1190839 (regTwo!33259 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (ite c!1190838 (regTwo!33258 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (ite c!1190841 (regOne!33258 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))) (reg!16702 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292)))))))))) (ite (or c!1190839 c!1190838) (ite (or c!1190636 c!1190635) lt!2390632 (Context!11515 call!562523)) (Context!11515 call!562675)) (h!71743 s!2326)))))

(declare-fun b!6496295 () Bool)

(declare-fun e!3936698 () Bool)

(assert (=> b!6496295 (= e!3936698 (nullable!6366 (regOne!33258 (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292)))))))))))

(declare-fun b!6496296 () Bool)

(assert (=> b!6496296 (= e!3936693 ((_ map or) call!562677 call!562673))))

(declare-fun b!6496297 () Bool)

(declare-fun c!1190842 () Bool)

(assert (=> b!6496297 (= c!1190842 ((_ is Star!16373) (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))))))

(assert (=> b!6496297 (= e!3936696 e!3936695)))

(declare-fun b!6496298 () Bool)

(assert (=> b!6496298 (= e!3936694 ((_ map or) call!562677 call!562678))))

(declare-fun b!6496299 () Bool)

(assert (=> b!6496299 (= e!3936695 call!562674)))

(declare-fun b!6496300 () Bool)

(assert (=> b!6496300 (= c!1190838 e!3936698)))

(declare-fun res!2668038 () Bool)

(assert (=> b!6496300 (=> (not res!2668038) (not e!3936698))))

(assert (=> b!6496300 (= res!2668038 ((_ is Concat!25218) (ite c!1190636 (regTwo!33259 (reg!16702 (regOne!33258 r!7292))) (ite c!1190635 (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (ite c!1190638 (regOne!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (reg!16702 (regOne!33258 r!7292))))))))))

(assert (=> b!6496300 (= e!3936693 e!3936694)))

(assert (= (and d!2038528 c!1190840) b!6496292))

(assert (= (and d!2038528 (not c!1190840)) b!6496293))

(assert (= (and b!6496293 c!1190839) b!6496296))

(assert (= (and b!6496293 (not c!1190839)) b!6496300))

(assert (= (and b!6496300 res!2668038) b!6496295))

(assert (= (and b!6496300 c!1190838) b!6496298))

(assert (= (and b!6496300 (not c!1190838)) b!6496291))

(assert (= (and b!6496291 c!1190841) b!6496294))

(assert (= (and b!6496291 (not c!1190841)) b!6496297))

(assert (= (and b!6496297 c!1190842) b!6496299))

(assert (= (and b!6496297 (not c!1190842)) b!6496290))

(assert (= (or b!6496294 b!6496299) bm!562668))

(assert (= (or b!6496294 b!6496299) bm!562671))

(assert (= (or b!6496298 bm!562668) bm!562669))

(assert (= (or b!6496298 bm!562671) bm!562670))

(assert (= (or b!6496296 bm!562670) bm!562673))

(assert (= (or b!6496296 b!6496298) bm!562672))

(declare-fun m!7284940 () Bool)

(assert (=> bm!562669 m!7284940))

(declare-fun m!7284942 () Bool)

(assert (=> bm!562673 m!7284942))

(declare-fun m!7284944 () Bool)

(assert (=> b!6496292 m!7284944))

(declare-fun m!7284946 () Bool)

(assert (=> b!6496295 m!7284946))

(declare-fun m!7284948 () Bool)

(assert (=> bm!562672 m!7284948))

(assert (=> bm!562521 d!2038528))

(declare-fun d!2038530 () Bool)

(assert (=> d!2038530 true))

(declare-fun setRes!44268 () Bool)

(assert (=> d!2038530 setRes!44268))

(declare-fun condSetEmpty!44268 () Bool)

(declare-fun res!2668039 () (InoxSet Context!11514))

(assert (=> d!2038530 (= condSetEmpty!44268 (= res!2668039 ((as const (Array Context!11514 Bool)) false)))))

(assert (=> d!2038530 (= (choose!48216 lt!2390657 lambda!359804) res!2668039)))

(declare-fun setIsEmpty!44268 () Bool)

(assert (=> setIsEmpty!44268 setRes!44268))

(declare-fun setNonEmpty!44268 () Bool)

(declare-fun tp!1797407 () Bool)

(declare-fun e!3936709 () Bool)

(declare-fun setElem!44268 () Context!11514)

(assert (=> setNonEmpty!44268 (= setRes!44268 (and tp!1797407 (inv!84179 setElem!44268) e!3936709))))

(declare-fun setRest!44268 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44268 (= res!2668039 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44268 true) setRest!44268))))

(declare-fun b!6496321 () Bool)

(declare-fun tp!1797408 () Bool)

(assert (=> b!6496321 (= e!3936709 tp!1797408)))

(assert (= (and d!2038530 condSetEmpty!44268) setIsEmpty!44268))

(assert (= (and d!2038530 (not condSetEmpty!44268)) setNonEmpty!44268))

(assert (= setNonEmpty!44268 b!6496321))

(declare-fun m!7284950 () Bool)

(assert (=> setNonEmpty!44268 m!7284950))

(assert (=> d!2038158 d!2038530))

(declare-fun d!2038532 () Bool)

(declare-fun c!1190853 () Bool)

(assert (=> d!2038532 (= c!1190853 (isEmpty!37494 (tail!12302 (t!379049 s!2326))))))

(declare-fun e!3936710 () Bool)

(assert (=> d!2038532 (= (matchZipper!2385 (derivationStepZipper!2339 lt!2390644 (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))) e!3936710)))

(declare-fun b!6496322 () Bool)

(assert (=> b!6496322 (= e!3936710 (nullableZipper!2128 (derivationStepZipper!2339 lt!2390644 (head!13217 (t!379049 s!2326)))))))

(declare-fun b!6496323 () Bool)

(assert (=> b!6496323 (= e!3936710 (matchZipper!2385 (derivationStepZipper!2339 (derivationStepZipper!2339 lt!2390644 (head!13217 (t!379049 s!2326))) (head!13217 (tail!12302 (t!379049 s!2326)))) (tail!12302 (tail!12302 (t!379049 s!2326)))))))

(assert (= (and d!2038532 c!1190853) b!6496322))

(assert (= (and d!2038532 (not c!1190853)) b!6496323))

(assert (=> d!2038532 m!7284058))

(assert (=> d!2038532 m!7284914))

(assert (=> b!6496322 m!7284056))

(declare-fun m!7284952 () Bool)

(assert (=> b!6496322 m!7284952))

(assert (=> b!6496323 m!7284058))

(assert (=> b!6496323 m!7284918))

(assert (=> b!6496323 m!7284056))

(assert (=> b!6496323 m!7284918))

(declare-fun m!7284954 () Bool)

(assert (=> b!6496323 m!7284954))

(assert (=> b!6496323 m!7284058))

(assert (=> b!6496323 m!7284922))

(assert (=> b!6496323 m!7284954))

(assert (=> b!6496323 m!7284922))

(declare-fun m!7284956 () Bool)

(assert (=> b!6496323 m!7284956))

(assert (=> b!6495372 d!2038532))

(declare-fun bs!1650006 () Bool)

(declare-fun d!2038534 () Bool)

(assert (= bs!1650006 (and d!2038534 b!6494901)))

(declare-fun lambda!359915 () Int)

(assert (=> bs!1650006 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359915 lambda!359804))))

(declare-fun bs!1650007 () Bool)

(assert (= bs!1650007 (and d!2038534 d!2038164)))

(assert (=> bs!1650007 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359915 lambda!359856))))

(declare-fun bs!1650008 () Bool)

(assert (= bs!1650008 (and d!2038534 d!2038498)))

(assert (=> bs!1650008 (= (= (head!13217 (t!379049 s!2326)) (head!13217 s!2326)) (= lambda!359915 lambda!359911))))

(declare-fun bs!1650009 () Bool)

(assert (= bs!1650009 (and d!2038534 d!2038516)))

(assert (=> bs!1650009 (= lambda!359915 lambda!359913)))

(assert (=> d!2038534 true))

(assert (=> d!2038534 (= (derivationStepZipper!2339 lt!2390644 (head!13217 (t!379049 s!2326))) (flatMap!1878 lt!2390644 lambda!359915))))

(declare-fun bs!1650010 () Bool)

(assert (= bs!1650010 d!2038534))

(declare-fun m!7284958 () Bool)

(assert (=> bs!1650010 m!7284958))

(assert (=> b!6495372 d!2038534))

(assert (=> b!6495372 d!2038518))

(assert (=> b!6495372 d!2038520))

(declare-fun d!2038536 () Bool)

(assert (=> d!2038536 (= (isEmpty!37489 (tail!12303 (unfocusZipperList!1794 zl!343))) ((_ is Nil!65294) (tail!12303 (unfocusZipperList!1794 zl!343))))))

(assert (=> b!6495517 d!2038536))

(declare-fun d!2038538 () Bool)

(assert (=> d!2038538 (= (tail!12303 (unfocusZipperList!1794 zl!343)) (t!379048 (unfocusZipperList!1794 zl!343)))))

(assert (=> b!6495517 d!2038538))

(declare-fun b!6496345 () Bool)

(declare-fun e!3936721 () Bool)

(declare-fun lt!2390791 () List!65419)

(assert (=> b!6496345 (= e!3936721 (or (not (= (t!379049 s!2326) Nil!65295)) (= lt!2390791 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)))))))

(declare-fun b!6496343 () Bool)

(declare-fun e!3936720 () List!65419)

(assert (=> b!6496343 (= e!3936720 (Cons!65295 (h!71743 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295))) (++!14455 (t!379049 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295))) (t!379049 s!2326))))))

(declare-fun b!6496342 () Bool)

(assert (=> b!6496342 (= e!3936720 (t!379049 s!2326))))

(declare-fun b!6496344 () Bool)

(declare-fun res!2668044 () Bool)

(assert (=> b!6496344 (=> (not res!2668044) (not e!3936721))))

(declare-fun size!40431 (List!65419) Int)

(assert (=> b!6496344 (= res!2668044 (= (size!40431 lt!2390791) (+ (size!40431 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295))) (size!40431 (t!379049 s!2326)))))))

(declare-fun d!2038540 () Bool)

(assert (=> d!2038540 e!3936721))

(declare-fun res!2668045 () Bool)

(assert (=> d!2038540 (=> (not res!2668045) (not e!3936721))))

(declare-fun content!12449 (List!65419) (InoxSet C!33016))

(assert (=> d!2038540 (= res!2668045 (= (content!12449 lt!2390791) ((_ map or) (content!12449 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295))) (content!12449 (t!379049 s!2326)))))))

(assert (=> d!2038540 (= lt!2390791 e!3936720)))

(declare-fun c!1190861 () Bool)

(assert (=> d!2038540 (= c!1190861 ((_ is Nil!65295) (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295))))))

(assert (=> d!2038540 (= (++!14455 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (t!379049 s!2326)) lt!2390791)))

(assert (= (and d!2038540 c!1190861) b!6496342))

(assert (= (and d!2038540 (not c!1190861)) b!6496343))

(assert (= (and d!2038540 res!2668045) b!6496344))

(assert (= (and b!6496344 res!2668044) b!6496345))

(declare-fun m!7284966 () Bool)

(assert (=> b!6496343 m!7284966))

(declare-fun m!7284968 () Bool)

(assert (=> b!6496344 m!7284968))

(assert (=> b!6496344 m!7284016))

(declare-fun m!7284970 () Bool)

(assert (=> b!6496344 m!7284970))

(declare-fun m!7284972 () Bool)

(assert (=> b!6496344 m!7284972))

(declare-fun m!7284974 () Bool)

(assert (=> d!2038540 m!7284974))

(assert (=> d!2038540 m!7284016))

(declare-fun m!7284976 () Bool)

(assert (=> d!2038540 m!7284976))

(declare-fun m!7284978 () Bool)

(assert (=> d!2038540 m!7284978))

(assert (=> b!6495353 d!2038540))

(declare-fun b!6496353 () Bool)

(declare-fun e!3936725 () Bool)

(declare-fun lt!2390792 () List!65419)

(assert (=> b!6496353 (= e!3936725 (or (not (= (Cons!65295 (h!71743 s!2326) Nil!65295) Nil!65295)) (= lt!2390792 Nil!65295)))))

(declare-fun b!6496351 () Bool)

(declare-fun e!3936724 () List!65419)

(assert (=> b!6496351 (= e!3936724 (Cons!65295 (h!71743 Nil!65295) (++!14455 (t!379049 Nil!65295) (Cons!65295 (h!71743 s!2326) Nil!65295))))))

(declare-fun b!6496350 () Bool)

(assert (=> b!6496350 (= e!3936724 (Cons!65295 (h!71743 s!2326) Nil!65295))))

(declare-fun b!6496352 () Bool)

(declare-fun res!2668046 () Bool)

(assert (=> b!6496352 (=> (not res!2668046) (not e!3936725))))

(assert (=> b!6496352 (= res!2668046 (= (size!40431 lt!2390792) (+ (size!40431 Nil!65295) (size!40431 (Cons!65295 (h!71743 s!2326) Nil!65295)))))))

(declare-fun d!2038544 () Bool)

(assert (=> d!2038544 e!3936725))

(declare-fun res!2668047 () Bool)

(assert (=> d!2038544 (=> (not res!2668047) (not e!3936725))))

(assert (=> d!2038544 (= res!2668047 (= (content!12449 lt!2390792) ((_ map or) (content!12449 Nil!65295) (content!12449 (Cons!65295 (h!71743 s!2326) Nil!65295)))))))

(assert (=> d!2038544 (= lt!2390792 e!3936724)))

(declare-fun c!1190864 () Bool)

(assert (=> d!2038544 (= c!1190864 ((_ is Nil!65295) Nil!65295))))

(assert (=> d!2038544 (= (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) lt!2390792)))

(assert (= (and d!2038544 c!1190864) b!6496350))

(assert (= (and d!2038544 (not c!1190864)) b!6496351))

(assert (= (and d!2038544 res!2668047) b!6496352))

(assert (= (and b!6496352 res!2668046) b!6496353))

(declare-fun m!7284980 () Bool)

(assert (=> b!6496351 m!7284980))

(declare-fun m!7284982 () Bool)

(assert (=> b!6496352 m!7284982))

(declare-fun m!7284984 () Bool)

(assert (=> b!6496352 m!7284984))

(declare-fun m!7284986 () Bool)

(assert (=> b!6496352 m!7284986))

(declare-fun m!7284988 () Bool)

(assert (=> d!2038544 m!7284988))

(declare-fun m!7284990 () Bool)

(assert (=> d!2038544 m!7284990))

(declare-fun m!7284992 () Bool)

(assert (=> d!2038544 m!7284992))

(assert (=> b!6495353 d!2038544))

(declare-fun d!2038546 () Bool)

(assert (=> d!2038546 (= (++!14455 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (t!379049 s!2326)) s!2326)))

(declare-fun lt!2390797 () Unit!158827)

(declare-fun choose!48219 (List!65419 C!33016 List!65419 List!65419) Unit!158827)

(assert (=> d!2038546 (= lt!2390797 (choose!48219 Nil!65295 (h!71743 s!2326) (t!379049 s!2326) s!2326))))

(assert (=> d!2038546 (= (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) (t!379049 s!2326))) s!2326)))

(assert (=> d!2038546 (= (lemmaMoveElementToOtherListKeepsConcatEq!2526 Nil!65295 (h!71743 s!2326) (t!379049 s!2326) s!2326) lt!2390797)))

(declare-fun bs!1650021 () Bool)

(assert (= bs!1650021 d!2038546))

(assert (=> bs!1650021 m!7284016))

(assert (=> bs!1650021 m!7284016))

(assert (=> bs!1650021 m!7284018))

(declare-fun m!7285020 () Bool)

(assert (=> bs!1650021 m!7285020))

(declare-fun m!7285022 () Bool)

(assert (=> bs!1650021 m!7285022))

(assert (=> b!6495353 d!2038546))

(declare-fun b!6496379 () Bool)

(declare-fun e!3936744 () Bool)

(declare-fun lt!2390798 () Option!16264)

(assert (=> b!6496379 (= e!3936744 (not (isDefined!12967 lt!2390798)))))

(declare-fun b!6496380 () Bool)

(declare-fun e!3936743 () Bool)

(assert (=> b!6496380 (= e!3936743 (= (++!14455 (_1!36655 (get!22643 lt!2390798)) (_2!36655 (get!22643 lt!2390798))) s!2326))))

(declare-fun b!6496381 () Bool)

(declare-fun res!2668060 () Bool)

(assert (=> b!6496381 (=> (not res!2668060) (not e!3936743))))

(assert (=> b!6496381 (= res!2668060 (matchR!8556 (regTwo!33258 r!7292) (_2!36655 (get!22643 lt!2390798))))))

(declare-fun b!6496382 () Bool)

(declare-fun e!3936745 () Option!16264)

(assert (=> b!6496382 (= e!3936745 (Some!16263 (tuple2!66705 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (t!379049 s!2326))))))

(declare-fun b!6496383 () Bool)

(declare-fun res!2668061 () Bool)

(assert (=> b!6496383 (=> (not res!2668061) (not e!3936743))))

(assert (=> b!6496383 (= res!2668061 (matchR!8556 (regOne!33258 r!7292) (_1!36655 (get!22643 lt!2390798))))))

(declare-fun b!6496384 () Bool)

(declare-fun e!3936742 () Option!16264)

(assert (=> b!6496384 (= e!3936745 e!3936742)))

(declare-fun c!1190873 () Bool)

(assert (=> b!6496384 (= c!1190873 ((_ is Nil!65295) (t!379049 s!2326)))))

(declare-fun b!6496385 () Bool)

(declare-fun e!3936746 () Bool)

(assert (=> b!6496385 (= e!3936746 (matchR!8556 (regTwo!33258 r!7292) (t!379049 s!2326)))))

(declare-fun d!2038556 () Bool)

(assert (=> d!2038556 e!3936744))

(declare-fun res!2668059 () Bool)

(assert (=> d!2038556 (=> res!2668059 e!3936744)))

(assert (=> d!2038556 (= res!2668059 e!3936743)))

(declare-fun res!2668058 () Bool)

(assert (=> d!2038556 (=> (not res!2668058) (not e!3936743))))

(assert (=> d!2038556 (= res!2668058 (isDefined!12967 lt!2390798))))

(assert (=> d!2038556 (= lt!2390798 e!3936745)))

(declare-fun c!1190874 () Bool)

(assert (=> d!2038556 (= c!1190874 e!3936746)))

(declare-fun res!2668057 () Bool)

(assert (=> d!2038556 (=> (not res!2668057) (not e!3936746))))

(assert (=> d!2038556 (= res!2668057 (matchR!8556 (regOne!33258 r!7292) (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295))))))

(assert (=> d!2038556 (validRegex!8109 (regOne!33258 r!7292))))

(assert (=> d!2038556 (= (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (t!379049 s!2326) s!2326) lt!2390798)))

(declare-fun b!6496386 () Bool)

(declare-fun lt!2390800 () Unit!158827)

(declare-fun lt!2390799 () Unit!158827)

(assert (=> b!6496386 (= lt!2390800 lt!2390799)))

(assert (=> b!6496386 (= (++!14455 (++!14455 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (Cons!65295 (h!71743 (t!379049 s!2326)) Nil!65295)) (t!379049 (t!379049 s!2326))) s!2326)))

(assert (=> b!6496386 (= lt!2390799 (lemmaMoveElementToOtherListKeepsConcatEq!2526 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (h!71743 (t!379049 s!2326)) (t!379049 (t!379049 s!2326)) s!2326))))

(assert (=> b!6496386 (= e!3936742 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) (++!14455 (++!14455 Nil!65295 (Cons!65295 (h!71743 s!2326) Nil!65295)) (Cons!65295 (h!71743 (t!379049 s!2326)) Nil!65295)) (t!379049 (t!379049 s!2326)) s!2326))))

(declare-fun b!6496387 () Bool)

(assert (=> b!6496387 (= e!3936742 None!16263)))

(assert (= (and d!2038556 res!2668057) b!6496385))

(assert (= (and d!2038556 c!1190874) b!6496382))

(assert (= (and d!2038556 (not c!1190874)) b!6496384))

(assert (= (and b!6496384 c!1190873) b!6496387))

(assert (= (and b!6496384 (not c!1190873)) b!6496386))

(assert (= (and d!2038556 res!2668058) b!6496383))

(assert (= (and b!6496383 res!2668061) b!6496381))

(assert (= (and b!6496381 res!2668060) b!6496380))

(assert (= (and d!2038556 (not res!2668059)) b!6496379))

(declare-fun m!7285044 () Bool)

(assert (=> d!2038556 m!7285044))

(assert (=> d!2038556 m!7284016))

(declare-fun m!7285046 () Bool)

(assert (=> d!2038556 m!7285046))

(assert (=> d!2038556 m!7284012))

(declare-fun m!7285048 () Bool)

(assert (=> b!6496385 m!7285048))

(assert (=> b!6496386 m!7284016))

(declare-fun m!7285050 () Bool)

(assert (=> b!6496386 m!7285050))

(assert (=> b!6496386 m!7285050))

(declare-fun m!7285052 () Bool)

(assert (=> b!6496386 m!7285052))

(assert (=> b!6496386 m!7284016))

(declare-fun m!7285054 () Bool)

(assert (=> b!6496386 m!7285054))

(assert (=> b!6496386 m!7285050))

(declare-fun m!7285056 () Bool)

(assert (=> b!6496386 m!7285056))

(assert (=> b!6496379 m!7285044))

(declare-fun m!7285058 () Bool)

(assert (=> b!6496380 m!7285058))

(declare-fun m!7285060 () Bool)

(assert (=> b!6496380 m!7285060))

(assert (=> b!6496383 m!7285058))

(declare-fun m!7285062 () Bool)

(assert (=> b!6496383 m!7285062))

(assert (=> b!6496381 m!7285058))

(declare-fun m!7285064 () Bool)

(assert (=> b!6496381 m!7285064))

(assert (=> b!6495353 d!2038556))

(declare-fun b!6496390 () Bool)

(declare-fun e!3936750 () Bool)

(declare-fun e!3936751 () Bool)

(assert (=> b!6496390 (= e!3936750 e!3936751)))

(declare-fun c!1190877 () Bool)

(assert (=> b!6496390 (= c!1190877 ((_ is EmptyLang!16373) (derivativeStep!5067 r!7292 (head!13217 s!2326))))))

(declare-fun d!2038560 () Bool)

(assert (=> d!2038560 e!3936750))

(declare-fun c!1190878 () Bool)

(assert (=> d!2038560 (= c!1190878 ((_ is EmptyExpr!16373) (derivativeStep!5067 r!7292 (head!13217 s!2326))))))

(declare-fun lt!2390802 () Bool)

(declare-fun e!3936749 () Bool)

(assert (=> d!2038560 (= lt!2390802 e!3936749)))

(declare-fun c!1190876 () Bool)

(assert (=> d!2038560 (= c!1190876 (isEmpty!37494 (tail!12302 s!2326)))))

(assert (=> d!2038560 (validRegex!8109 (derivativeStep!5067 r!7292 (head!13217 s!2326)))))

(assert (=> d!2038560 (= (matchR!8556 (derivativeStep!5067 r!7292 (head!13217 s!2326)) (tail!12302 s!2326)) lt!2390802)))

(declare-fun b!6496391 () Bool)

(declare-fun res!2668064 () Bool)

(declare-fun e!3936753 () Bool)

(assert (=> b!6496391 (=> res!2668064 e!3936753)))

(assert (=> b!6496391 (= res!2668064 (not ((_ is ElementMatch!16373) (derivativeStep!5067 r!7292 (head!13217 s!2326)))))))

(assert (=> b!6496391 (= e!3936751 e!3936753)))

(declare-fun b!6496392 () Bool)

(declare-fun call!562694 () Bool)

(assert (=> b!6496392 (= e!3936750 (= lt!2390802 call!562694))))

(declare-fun b!6496393 () Bool)

(declare-fun res!2668069 () Bool)

(declare-fun e!3936748 () Bool)

(assert (=> b!6496393 (=> res!2668069 e!3936748)))

(assert (=> b!6496393 (= res!2668069 (not (isEmpty!37494 (tail!12302 (tail!12302 s!2326)))))))

(declare-fun b!6496394 () Bool)

(assert (=> b!6496394 (= e!3936751 (not lt!2390802))))

(declare-fun b!6496395 () Bool)

(declare-fun res!2668067 () Bool)

(declare-fun e!3936752 () Bool)

(assert (=> b!6496395 (=> (not res!2668067) (not e!3936752))))

(assert (=> b!6496395 (= res!2668067 (not call!562694))))

(declare-fun b!6496396 () Bool)

(assert (=> b!6496396 (= e!3936748 (not (= (head!13217 (tail!12302 s!2326)) (c!1190447 (derivativeStep!5067 r!7292 (head!13217 s!2326))))))))

(declare-fun b!6496397 () Bool)

(assert (=> b!6496397 (= e!3936752 (= (head!13217 (tail!12302 s!2326)) (c!1190447 (derivativeStep!5067 r!7292 (head!13217 s!2326)))))))

(declare-fun b!6496398 () Bool)

(declare-fun res!2668063 () Bool)

(assert (=> b!6496398 (=> res!2668063 e!3936753)))

(assert (=> b!6496398 (= res!2668063 e!3936752)))

(declare-fun res!2668065 () Bool)

(assert (=> b!6496398 (=> (not res!2668065) (not e!3936752))))

(assert (=> b!6496398 (= res!2668065 lt!2390802)))

(declare-fun b!6496399 () Bool)

(declare-fun e!3936754 () Bool)

(assert (=> b!6496399 (= e!3936753 e!3936754)))

(declare-fun res!2668068 () Bool)

(assert (=> b!6496399 (=> (not res!2668068) (not e!3936754))))

(assert (=> b!6496399 (= res!2668068 (not lt!2390802))))

(declare-fun bm!562689 () Bool)

(assert (=> bm!562689 (= call!562694 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun b!6496400 () Bool)

(declare-fun res!2668062 () Bool)

(assert (=> b!6496400 (=> (not res!2668062) (not e!3936752))))

(assert (=> b!6496400 (= res!2668062 (isEmpty!37494 (tail!12302 (tail!12302 s!2326))))))

(declare-fun b!6496401 () Bool)

(assert (=> b!6496401 (= e!3936754 e!3936748)))

(declare-fun res!2668066 () Bool)

(assert (=> b!6496401 (=> res!2668066 e!3936748)))

(assert (=> b!6496401 (= res!2668066 call!562694)))

(declare-fun b!6496402 () Bool)

(assert (=> b!6496402 (= e!3936749 (matchR!8556 (derivativeStep!5067 (derivativeStep!5067 r!7292 (head!13217 s!2326)) (head!13217 (tail!12302 s!2326))) (tail!12302 (tail!12302 s!2326))))))

(declare-fun b!6496403 () Bool)

(assert (=> b!6496403 (= e!3936749 (nullable!6366 (derivativeStep!5067 r!7292 (head!13217 s!2326))))))

(assert (= (and d!2038560 c!1190876) b!6496403))

(assert (= (and d!2038560 (not c!1190876)) b!6496402))

(assert (= (and d!2038560 c!1190878) b!6496392))

(assert (= (and d!2038560 (not c!1190878)) b!6496390))

(assert (= (and b!6496390 c!1190877) b!6496394))

(assert (= (and b!6496390 (not c!1190877)) b!6496391))

(assert (= (and b!6496391 (not res!2668064)) b!6496398))

(assert (= (and b!6496398 res!2668065) b!6496395))

(assert (= (and b!6496395 res!2668067) b!6496400))

(assert (= (and b!6496400 res!2668062) b!6496397))

(assert (= (and b!6496398 (not res!2668063)) b!6496399))

(assert (= (and b!6496399 res!2668068) b!6496401))

(assert (= (and b!6496401 (not res!2668066)) b!6496393))

(assert (= (and b!6496393 (not res!2668069)) b!6496396))

(assert (= (or b!6496392 b!6496395 b!6496401) bm!562689))

(assert (=> b!6496402 m!7284076))

(assert (=> b!6496402 m!7284874))

(assert (=> b!6496402 m!7284258))

(assert (=> b!6496402 m!7284874))

(declare-fun m!7285072 () Bool)

(assert (=> b!6496402 m!7285072))

(assert (=> b!6496402 m!7284076))

(assert (=> b!6496402 m!7284878))

(assert (=> b!6496402 m!7285072))

(assert (=> b!6496402 m!7284878))

(declare-fun m!7285074 () Bool)

(assert (=> b!6496402 m!7285074))

(assert (=> b!6496396 m!7284076))

(assert (=> b!6496396 m!7284874))

(assert (=> d!2038560 m!7284076))

(assert (=> d!2038560 m!7284264))

(assert (=> d!2038560 m!7284258))

(declare-fun m!7285076 () Bool)

(assert (=> d!2038560 m!7285076))

(assert (=> b!6496403 m!7284258))

(declare-fun m!7285078 () Bool)

(assert (=> b!6496403 m!7285078))

(assert (=> bm!562689 m!7284076))

(assert (=> bm!562689 m!7284264))

(assert (=> b!6496400 m!7284076))

(assert (=> b!6496400 m!7284878))

(assert (=> b!6496400 m!7284878))

(declare-fun m!7285080 () Bool)

(assert (=> b!6496400 m!7285080))

(assert (=> b!6496393 m!7284076))

(assert (=> b!6496393 m!7284878))

(assert (=> b!6496393 m!7284878))

(assert (=> b!6496393 m!7285080))

(assert (=> b!6496397 m!7284076))

(assert (=> b!6496397 m!7284874))

(assert (=> b!6495624 d!2038560))

(declare-fun call!562716 () Regex!16373)

(declare-fun call!562713 () Regex!16373)

(declare-fun e!3936791 () Regex!16373)

(declare-fun b!6496459 () Bool)

(assert (=> b!6496459 (= e!3936791 (Union!16373 (Concat!25218 call!562716 (regTwo!33258 r!7292)) call!562713))))

(declare-fun b!6496460 () Bool)

(declare-fun c!1190904 () Bool)

(assert (=> b!6496460 (= c!1190904 (nullable!6366 (regOne!33258 r!7292)))))

(declare-fun e!3936788 () Regex!16373)

(assert (=> b!6496460 (= e!3936788 e!3936791)))

(declare-fun c!1190905 () Bool)

(declare-fun call!562715 () Regex!16373)

(declare-fun bm!562708 () Bool)

(assert (=> bm!562708 (= call!562715 (derivativeStep!5067 (ite c!1190905 (regOne!33259 r!7292) (ite c!1190904 (regTwo!33258 r!7292) (regOne!33258 r!7292))) (head!13217 s!2326)))))

(declare-fun b!6496461 () Bool)

(declare-fun e!3936789 () Regex!16373)

(assert (=> b!6496461 (= e!3936789 EmptyLang!16373)))

(declare-fun b!6496462 () Bool)

(declare-fun e!3936790 () Regex!16373)

(declare-fun call!562714 () Regex!16373)

(assert (=> b!6496462 (= e!3936790 (Union!16373 call!562715 call!562714))))

(declare-fun bm!562710 () Bool)

(assert (=> bm!562710 (= call!562716 call!562714)))

(declare-fun b!6496463 () Bool)

(declare-fun e!3936787 () Regex!16373)

(assert (=> b!6496463 (= e!3936789 e!3936787)))

(declare-fun c!1190906 () Bool)

(assert (=> b!6496463 (= c!1190906 ((_ is ElementMatch!16373) r!7292))))

(declare-fun b!6496464 () Bool)

(assert (=> b!6496464 (= e!3936788 (Concat!25218 call!562716 r!7292))))

(declare-fun b!6496465 () Bool)

(assert (=> b!6496465 (= e!3936791 (Union!16373 (Concat!25218 call!562713 (regTwo!33258 r!7292)) EmptyLang!16373))))

(declare-fun bm!562711 () Bool)

(assert (=> bm!562711 (= call!562713 call!562715)))

(declare-fun b!6496466 () Bool)

(assert (=> b!6496466 (= e!3936790 e!3936788)))

(declare-fun c!1190902 () Bool)

(assert (=> b!6496466 (= c!1190902 ((_ is Star!16373) r!7292))))

(declare-fun bm!562709 () Bool)

(assert (=> bm!562709 (= call!562714 (derivativeStep!5067 (ite c!1190905 (regTwo!33259 r!7292) (ite c!1190902 (reg!16702 r!7292) (regOne!33258 r!7292))) (head!13217 s!2326)))))

(declare-fun d!2038564 () Bool)

(declare-fun lt!2390805 () Regex!16373)

(assert (=> d!2038564 (validRegex!8109 lt!2390805)))

(assert (=> d!2038564 (= lt!2390805 e!3936789)))

(declare-fun c!1190903 () Bool)

(assert (=> d!2038564 (= c!1190903 (or ((_ is EmptyExpr!16373) r!7292) ((_ is EmptyLang!16373) r!7292)))))

(assert (=> d!2038564 (validRegex!8109 r!7292)))

(assert (=> d!2038564 (= (derivativeStep!5067 r!7292 (head!13217 s!2326)) lt!2390805)))

(declare-fun b!6496467 () Bool)

(assert (=> b!6496467 (= c!1190905 ((_ is Union!16373) r!7292))))

(assert (=> b!6496467 (= e!3936787 e!3936790)))

(declare-fun b!6496468 () Bool)

(assert (=> b!6496468 (= e!3936787 (ite (= (head!13217 s!2326) (c!1190447 r!7292)) EmptyExpr!16373 EmptyLang!16373))))

(assert (= (and d!2038564 c!1190903) b!6496461))

(assert (= (and d!2038564 (not c!1190903)) b!6496463))

(assert (= (and b!6496463 c!1190906) b!6496468))

(assert (= (and b!6496463 (not c!1190906)) b!6496467))

(assert (= (and b!6496467 c!1190905) b!6496462))

(assert (= (and b!6496467 (not c!1190905)) b!6496466))

(assert (= (and b!6496466 c!1190902) b!6496464))

(assert (= (and b!6496466 (not c!1190902)) b!6496460))

(assert (= (and b!6496460 c!1190904) b!6496459))

(assert (= (and b!6496460 (not c!1190904)) b!6496465))

(assert (= (or b!6496459 b!6496465) bm!562711))

(assert (= (or b!6496464 b!6496459) bm!562710))

(assert (= (or b!6496462 bm!562710) bm!562709))

(assert (= (or b!6496462 bm!562711) bm!562708))

(assert (=> b!6496460 m!7284602))

(assert (=> bm!562708 m!7284072))

(declare-fun m!7285108 () Bool)

(assert (=> bm!562708 m!7285108))

(assert (=> bm!562709 m!7284072))

(declare-fun m!7285110 () Bool)

(assert (=> bm!562709 m!7285110))

(declare-fun m!7285112 () Bool)

(assert (=> d!2038564 m!7285112))

(assert (=> d!2038564 m!7283678))

(assert (=> b!6495624 d!2038564))

(assert (=> b!6495624 d!2038460))

(assert (=> b!6495624 d!2038502))

(declare-fun d!2038580 () Bool)

(assert (=> d!2038580 (= ($colon$colon!2224 (exprs!6257 lt!2390633) (ite (or c!1190610 c!1190613) (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (h!71742 (exprs!6257 (h!71744 zl!343))))) (Cons!65294 (ite (or c!1190610 c!1190613) (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (h!71742 (exprs!6257 (h!71744 zl!343)))) (exprs!6257 lt!2390633)))))

(assert (=> bm!562509 d!2038580))

(declare-fun d!2038582 () Bool)

(assert (=> d!2038582 (= ($colon$colon!2224 (exprs!6257 lt!2390632) (ite (or c!1190635 c!1190638) (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (regOne!33258 r!7292)))) (Cons!65294 (ite (or c!1190635 c!1190638) (regTwo!33258 (reg!16702 (regOne!33258 r!7292))) (reg!16702 (regOne!33258 r!7292))) (exprs!6257 lt!2390632)))))

(assert (=> bm!562517 d!2038582))

(assert (=> d!2038114 d!2038458))

(declare-fun b!6496469 () Bool)

(declare-fun e!3936794 () Bool)

(declare-fun e!3936795 () Bool)

(assert (=> b!6496469 (= e!3936794 e!3936795)))

(declare-fun c!1190908 () Bool)

(assert (=> b!6496469 (= c!1190908 ((_ is EmptyLang!16373) (regOne!33258 r!7292)))))

(declare-fun d!2038584 () Bool)

(assert (=> d!2038584 e!3936794))

(declare-fun c!1190909 () Bool)

(assert (=> d!2038584 (= c!1190909 ((_ is EmptyExpr!16373) (regOne!33258 r!7292)))))

(declare-fun lt!2390806 () Bool)

(declare-fun e!3936793 () Bool)

(assert (=> d!2038584 (= lt!2390806 e!3936793)))

(declare-fun c!1190907 () Bool)

(assert (=> d!2038584 (= c!1190907 (isEmpty!37494 Nil!65295))))

(assert (=> d!2038584 (validRegex!8109 (regOne!33258 r!7292))))

(assert (=> d!2038584 (= (matchR!8556 (regOne!33258 r!7292) Nil!65295) lt!2390806)))

(declare-fun b!6496470 () Bool)

(declare-fun res!2668081 () Bool)

(declare-fun e!3936797 () Bool)

(assert (=> b!6496470 (=> res!2668081 e!3936797)))

(assert (=> b!6496470 (= res!2668081 (not ((_ is ElementMatch!16373) (regOne!33258 r!7292))))))

(assert (=> b!6496470 (= e!3936795 e!3936797)))

(declare-fun b!6496471 () Bool)

(declare-fun call!562717 () Bool)

(assert (=> b!6496471 (= e!3936794 (= lt!2390806 call!562717))))

(declare-fun b!6496472 () Bool)

(declare-fun res!2668086 () Bool)

(declare-fun e!3936792 () Bool)

(assert (=> b!6496472 (=> res!2668086 e!3936792)))

(assert (=> b!6496472 (= res!2668086 (not (isEmpty!37494 (tail!12302 Nil!65295))))))

(declare-fun b!6496473 () Bool)

(assert (=> b!6496473 (= e!3936795 (not lt!2390806))))

(declare-fun b!6496474 () Bool)

(declare-fun res!2668084 () Bool)

(declare-fun e!3936796 () Bool)

(assert (=> b!6496474 (=> (not res!2668084) (not e!3936796))))

(assert (=> b!6496474 (= res!2668084 (not call!562717))))

(declare-fun b!6496475 () Bool)

(assert (=> b!6496475 (= e!3936792 (not (= (head!13217 Nil!65295) (c!1190447 (regOne!33258 r!7292)))))))

(declare-fun b!6496476 () Bool)

(assert (=> b!6496476 (= e!3936796 (= (head!13217 Nil!65295) (c!1190447 (regOne!33258 r!7292))))))

(declare-fun b!6496477 () Bool)

(declare-fun res!2668080 () Bool)

(assert (=> b!6496477 (=> res!2668080 e!3936797)))

(assert (=> b!6496477 (= res!2668080 e!3936796)))

(declare-fun res!2668082 () Bool)

(assert (=> b!6496477 (=> (not res!2668082) (not e!3936796))))

(assert (=> b!6496477 (= res!2668082 lt!2390806)))

(declare-fun b!6496478 () Bool)

(declare-fun e!3936798 () Bool)

(assert (=> b!6496478 (= e!3936797 e!3936798)))

(declare-fun res!2668085 () Bool)

(assert (=> b!6496478 (=> (not res!2668085) (not e!3936798))))

(assert (=> b!6496478 (= res!2668085 (not lt!2390806))))

(declare-fun bm!562712 () Bool)

(assert (=> bm!562712 (= call!562717 (isEmpty!37494 Nil!65295))))

(declare-fun b!6496479 () Bool)

(declare-fun res!2668079 () Bool)

(assert (=> b!6496479 (=> (not res!2668079) (not e!3936796))))

(assert (=> b!6496479 (= res!2668079 (isEmpty!37494 (tail!12302 Nil!65295)))))

(declare-fun b!6496480 () Bool)

(assert (=> b!6496480 (= e!3936798 e!3936792)))

(declare-fun res!2668083 () Bool)

(assert (=> b!6496480 (=> res!2668083 e!3936792)))

(assert (=> b!6496480 (= res!2668083 call!562717)))

(declare-fun b!6496481 () Bool)

(assert (=> b!6496481 (= e!3936793 (matchR!8556 (derivativeStep!5067 (regOne!33258 r!7292) (head!13217 Nil!65295)) (tail!12302 Nil!65295)))))

(declare-fun b!6496482 () Bool)

(assert (=> b!6496482 (= e!3936793 (nullable!6366 (regOne!33258 r!7292)))))

(assert (= (and d!2038584 c!1190907) b!6496482))

(assert (= (and d!2038584 (not c!1190907)) b!6496481))

(assert (= (and d!2038584 c!1190909) b!6496471))

(assert (= (and d!2038584 (not c!1190909)) b!6496469))

(assert (= (and b!6496469 c!1190908) b!6496473))

(assert (= (and b!6496469 (not c!1190908)) b!6496470))

(assert (= (and b!6496470 (not res!2668081)) b!6496477))

(assert (= (and b!6496477 res!2668082) b!6496474))

(assert (= (and b!6496474 res!2668084) b!6496479))

(assert (= (and b!6496479 res!2668079) b!6496476))

(assert (= (and b!6496477 (not res!2668080)) b!6496478))

(assert (= (and b!6496478 res!2668085) b!6496480))

(assert (= (and b!6496480 (not res!2668083)) b!6496472))

(assert (= (and b!6496472 (not res!2668086)) b!6496475))

(assert (= (or b!6496471 b!6496474 b!6496480) bm!562712))

(declare-fun m!7285114 () Bool)

(assert (=> b!6496481 m!7285114))

(assert (=> b!6496481 m!7285114))

(declare-fun m!7285116 () Bool)

(assert (=> b!6496481 m!7285116))

(declare-fun m!7285118 () Bool)

(assert (=> b!6496481 m!7285118))

(assert (=> b!6496481 m!7285116))

(assert (=> b!6496481 m!7285118))

(declare-fun m!7285120 () Bool)

(assert (=> b!6496481 m!7285120))

(assert (=> b!6496475 m!7285114))

(declare-fun m!7285122 () Bool)

(assert (=> d!2038584 m!7285122))

(assert (=> d!2038584 m!7284012))

(assert (=> b!6496482 m!7284602))

(assert (=> bm!562712 m!7285122))

(assert (=> b!6496479 m!7285118))

(assert (=> b!6496479 m!7285118))

(declare-fun m!7285128 () Bool)

(assert (=> b!6496479 m!7285128))

(assert (=> b!6496472 m!7285118))

(assert (=> b!6496472 m!7285118))

(assert (=> b!6496472 m!7285128))

(assert (=> b!6496476 m!7285114))

(assert (=> d!2038114 d!2038584))

(declare-fun c!1190910 () Bool)

(declare-fun call!562718 () Bool)

(declare-fun bm!562713 () Bool)

(declare-fun c!1190911 () Bool)

(assert (=> bm!562713 (= call!562718 (validRegex!8109 (ite c!1190910 (reg!16702 (regOne!33258 r!7292)) (ite c!1190911 (regTwo!33259 (regOne!33258 r!7292)) (regTwo!33258 (regOne!33258 r!7292))))))))

(declare-fun b!6496483 () Bool)

(declare-fun e!3936803 () Bool)

(declare-fun e!3936800 () Bool)

(assert (=> b!6496483 (= e!3936803 e!3936800)))

(declare-fun res!2668088 () Bool)

(assert (=> b!6496483 (= res!2668088 (not (nullable!6366 (reg!16702 (regOne!33258 r!7292)))))))

(assert (=> b!6496483 (=> (not res!2668088) (not e!3936800))))

(declare-fun b!6496484 () Bool)

(declare-fun e!3936802 () Bool)

(declare-fun call!562720 () Bool)

(assert (=> b!6496484 (= e!3936802 call!562720)))

(declare-fun bm!562714 () Bool)

(declare-fun call!562719 () Bool)

(assert (=> bm!562714 (= call!562719 (validRegex!8109 (ite c!1190911 (regOne!33259 (regOne!33258 r!7292)) (regOne!33258 (regOne!33258 r!7292)))))))

(declare-fun b!6496485 () Bool)

(declare-fun e!3936801 () Bool)

(assert (=> b!6496485 (= e!3936801 e!3936803)))

(assert (=> b!6496485 (= c!1190910 ((_ is Star!16373) (regOne!33258 r!7292)))))

(declare-fun b!6496486 () Bool)

(declare-fun res!2668090 () Bool)

(declare-fun e!3936804 () Bool)

(assert (=> b!6496486 (=> res!2668090 e!3936804)))

(assert (=> b!6496486 (= res!2668090 (not ((_ is Concat!25218) (regOne!33258 r!7292))))))

(declare-fun e!3936799 () Bool)

(assert (=> b!6496486 (= e!3936799 e!3936804)))

(declare-fun b!6496487 () Bool)

(declare-fun e!3936805 () Bool)

(assert (=> b!6496487 (= e!3936805 call!562720)))

(declare-fun b!6496488 () Bool)

(assert (=> b!6496488 (= e!3936803 e!3936799)))

(assert (=> b!6496488 (= c!1190911 ((_ is Union!16373) (regOne!33258 r!7292)))))

(declare-fun b!6496489 () Bool)

(assert (=> b!6496489 (= e!3936804 e!3936805)))

(declare-fun res!2668091 () Bool)

(assert (=> b!6496489 (=> (not res!2668091) (not e!3936805))))

(assert (=> b!6496489 (= res!2668091 call!562719)))

(declare-fun bm!562715 () Bool)

(assert (=> bm!562715 (= call!562720 call!562718)))

(declare-fun d!2038588 () Bool)

(declare-fun res!2668087 () Bool)

(assert (=> d!2038588 (=> res!2668087 e!3936801)))

(assert (=> d!2038588 (= res!2668087 ((_ is ElementMatch!16373) (regOne!33258 r!7292)))))

(assert (=> d!2038588 (= (validRegex!8109 (regOne!33258 r!7292)) e!3936801)))

(declare-fun b!6496490 () Bool)

(assert (=> b!6496490 (= e!3936800 call!562718)))

(declare-fun b!6496491 () Bool)

(declare-fun res!2668089 () Bool)

(assert (=> b!6496491 (=> (not res!2668089) (not e!3936802))))

(assert (=> b!6496491 (= res!2668089 call!562719)))

(assert (=> b!6496491 (= e!3936799 e!3936802)))

(assert (= (and d!2038588 (not res!2668087)) b!6496485))

(assert (= (and b!6496485 c!1190910) b!6496483))

(assert (= (and b!6496485 (not c!1190910)) b!6496488))

(assert (= (and b!6496483 res!2668088) b!6496490))

(assert (= (and b!6496488 c!1190911) b!6496491))

(assert (= (and b!6496488 (not c!1190911)) b!6496486))

(assert (= (and b!6496491 res!2668089) b!6496484))

(assert (= (and b!6496486 (not res!2668090)) b!6496489))

(assert (= (and b!6496489 res!2668091) b!6496487))

(assert (= (or b!6496484 b!6496487) bm!562715))

(assert (= (or b!6496491 b!6496489) bm!562714))

(assert (= (or b!6496490 bm!562715) bm!562713))

(declare-fun m!7285132 () Bool)

(assert (=> bm!562713 m!7285132))

(declare-fun m!7285134 () Bool)

(assert (=> b!6496483 m!7285134))

(declare-fun m!7285136 () Bool)

(assert (=> bm!562714 m!7285136))

(assert (=> d!2038114 d!2038588))

(declare-fun d!2038590 () Bool)

(assert (=> d!2038590 (= (isEmpty!37494 (tail!12302 s!2326)) ((_ is Nil!65295) (tail!12302 s!2326)))))

(assert (=> b!6495636 d!2038590))

(assert (=> b!6495636 d!2038502))

(declare-fun c!1190915 () Bool)

(declare-fun c!1190916 () Bool)

(declare-fun bm!562717 () Bool)

(declare-fun call!562722 () Bool)

(assert (=> bm!562717 (= call!562722 (validRegex!8109 (ite c!1190915 (reg!16702 lt!2390744) (ite c!1190916 (regTwo!33259 lt!2390744) (regTwo!33258 lt!2390744)))))))

(declare-fun b!6496506 () Bool)

(declare-fun e!3936817 () Bool)

(declare-fun e!3936814 () Bool)

(assert (=> b!6496506 (= e!3936817 e!3936814)))

(declare-fun res!2668101 () Bool)

(assert (=> b!6496506 (= res!2668101 (not (nullable!6366 (reg!16702 lt!2390744))))))

(assert (=> b!6496506 (=> (not res!2668101) (not e!3936814))))

(declare-fun b!6496507 () Bool)

(declare-fun e!3936816 () Bool)

(declare-fun call!562724 () Bool)

(assert (=> b!6496507 (= e!3936816 call!562724)))

(declare-fun bm!562718 () Bool)

(declare-fun call!562723 () Bool)

(assert (=> bm!562718 (= call!562723 (validRegex!8109 (ite c!1190916 (regOne!33259 lt!2390744) (regOne!33258 lt!2390744))))))

(declare-fun b!6496508 () Bool)

(declare-fun e!3936815 () Bool)

(assert (=> b!6496508 (= e!3936815 e!3936817)))

(assert (=> b!6496508 (= c!1190915 ((_ is Star!16373) lt!2390744))))

(declare-fun b!6496509 () Bool)

(declare-fun res!2668103 () Bool)

(declare-fun e!3936818 () Bool)

(assert (=> b!6496509 (=> res!2668103 e!3936818)))

(assert (=> b!6496509 (= res!2668103 (not ((_ is Concat!25218) lt!2390744)))))

(declare-fun e!3936813 () Bool)

(assert (=> b!6496509 (= e!3936813 e!3936818)))

(declare-fun b!6496510 () Bool)

(declare-fun e!3936819 () Bool)

(assert (=> b!6496510 (= e!3936819 call!562724)))

(declare-fun b!6496511 () Bool)

(assert (=> b!6496511 (= e!3936817 e!3936813)))

(assert (=> b!6496511 (= c!1190916 ((_ is Union!16373) lt!2390744))))

(declare-fun b!6496512 () Bool)

(assert (=> b!6496512 (= e!3936818 e!3936819)))

(declare-fun res!2668104 () Bool)

(assert (=> b!6496512 (=> (not res!2668104) (not e!3936819))))

(assert (=> b!6496512 (= res!2668104 call!562723)))

(declare-fun bm!562719 () Bool)

(assert (=> bm!562719 (= call!562724 call!562722)))

(declare-fun d!2038592 () Bool)

(declare-fun res!2668100 () Bool)

(assert (=> d!2038592 (=> res!2668100 e!3936815)))

(assert (=> d!2038592 (= res!2668100 ((_ is ElementMatch!16373) lt!2390744))))

(assert (=> d!2038592 (= (validRegex!8109 lt!2390744) e!3936815)))

(declare-fun b!6496513 () Bool)

(assert (=> b!6496513 (= e!3936814 call!562722)))

(declare-fun b!6496514 () Bool)

(declare-fun res!2668102 () Bool)

(assert (=> b!6496514 (=> (not res!2668102) (not e!3936816))))

(assert (=> b!6496514 (= res!2668102 call!562723)))

(assert (=> b!6496514 (= e!3936813 e!3936816)))

(assert (= (and d!2038592 (not res!2668100)) b!6496508))

(assert (= (and b!6496508 c!1190915) b!6496506))

(assert (= (and b!6496508 (not c!1190915)) b!6496511))

(assert (= (and b!6496506 res!2668101) b!6496513))

(assert (= (and b!6496511 c!1190916) b!6496514))

(assert (= (and b!6496511 (not c!1190916)) b!6496509))

(assert (= (and b!6496514 res!2668102) b!6496507))

(assert (= (and b!6496509 (not res!2668103)) b!6496512))

(assert (= (and b!6496512 res!2668104) b!6496510))

(assert (= (or b!6496507 b!6496510) bm!562719))

(assert (= (or b!6496514 b!6496512) bm!562718))

(assert (= (or b!6496513 bm!562719) bm!562717))

(declare-fun m!7285150 () Bool)

(assert (=> bm!562717 m!7285150))

(declare-fun m!7285152 () Bool)

(assert (=> b!6496506 m!7285152))

(declare-fun m!7285154 () Bool)

(assert (=> bm!562718 m!7285154))

(assert (=> d!2038170 d!2038592))

(declare-fun bs!1650080 () Bool)

(declare-fun d!2038596 () Bool)

(assert (= bs!1650080 (and d!2038596 d!2038172)))

(declare-fun lambda!359921 () Int)

(assert (=> bs!1650080 (= lambda!359921 lambda!359857)))

(declare-fun bs!1650081 () Bool)

(assert (= bs!1650081 (and d!2038596 d!2038112)))

(assert (=> bs!1650081 (= lambda!359921 lambda!359841)))

(declare-fun bs!1650082 () Bool)

(assert (= bs!1650082 (and d!2038596 d!2038156)))

(assert (=> bs!1650082 (= lambda!359921 lambda!359853)))

(declare-fun bs!1650083 () Bool)

(assert (= bs!1650083 (and d!2038596 d!2038214)))

(assert (=> bs!1650083 (= lambda!359921 lambda!359872)))

(declare-fun bs!1650084 () Bool)

(assert (= bs!1650084 (and d!2038596 d!2038476)))

(assert (=> bs!1650084 (= lambda!359921 lambda!359908)))

(declare-fun bs!1650085 () Bool)

(assert (= bs!1650085 (and d!2038596 d!2038194)))

(assert (=> bs!1650085 (= lambda!359921 lambda!359863)))

(declare-fun bs!1650086 () Bool)

(assert (= bs!1650086 (and d!2038596 d!2038192)))

(assert (=> bs!1650086 (= lambda!359921 lambda!359860)))

(declare-fun b!6496517 () Bool)

(declare-fun e!3936823 () Regex!16373)

(assert (=> b!6496517 (= e!3936823 (Union!16373 (h!71742 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))) (generalisedUnion!2217 (t!379048 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))))))))

(declare-fun b!6496518 () Bool)

(declare-fun e!3936822 () Bool)

(declare-fun lt!2390808 () Regex!16373)

(assert (=> b!6496518 (= e!3936822 (isUnion!1201 lt!2390808))))

(declare-fun e!3936825 () Bool)

(assert (=> d!2038596 e!3936825))

(declare-fun res!2668106 () Bool)

(assert (=> d!2038596 (=> (not res!2668106) (not e!3936825))))

(assert (=> d!2038596 (= res!2668106 (validRegex!8109 lt!2390808))))

(declare-fun e!3936824 () Regex!16373)

(assert (=> d!2038596 (= lt!2390808 e!3936824)))

(declare-fun c!1190921 () Bool)

(declare-fun e!3936826 () Bool)

(assert (=> d!2038596 (= c!1190921 e!3936826)))

(declare-fun res!2668105 () Bool)

(assert (=> d!2038596 (=> (not res!2668105) (not e!3936826))))

(assert (=> d!2038596 (= res!2668105 ((_ is Cons!65294) (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))))))

(assert (=> d!2038596 (forall!15554 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296)) lambda!359921)))

(assert (=> d!2038596 (= (generalisedUnion!2217 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))) lt!2390808)))

(declare-fun b!6496519 () Bool)

(assert (=> b!6496519 (= e!3936826 (isEmpty!37489 (t!379048 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296)))))))

(declare-fun b!6496520 () Bool)

(declare-fun e!3936821 () Bool)

(assert (=> b!6496520 (= e!3936821 e!3936822)))

(declare-fun c!1190918 () Bool)

(assert (=> b!6496520 (= c!1190918 (isEmpty!37489 (tail!12303 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296)))))))

(declare-fun b!6496521 () Bool)

(assert (=> b!6496521 (= e!3936821 (isEmptyLang!1771 lt!2390808))))

(declare-fun b!6496522 () Bool)

(assert (=> b!6496522 (= e!3936825 e!3936821)))

(declare-fun c!1190919 () Bool)

(assert (=> b!6496522 (= c!1190919 (isEmpty!37489 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))))))

(declare-fun b!6496523 () Bool)

(assert (=> b!6496523 (= e!3936824 e!3936823)))

(declare-fun c!1190920 () Bool)

(assert (=> b!6496523 (= c!1190920 ((_ is Cons!65294) (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))))))

(declare-fun b!6496524 () Bool)

(assert (=> b!6496524 (= e!3936822 (= lt!2390808 (head!13218 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296)))))))

(declare-fun b!6496525 () Bool)

(assert (=> b!6496525 (= e!3936823 EmptyLang!16373)))

(declare-fun b!6496526 () Bool)

(assert (=> b!6496526 (= e!3936824 (h!71742 (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296))))))

(assert (= (and d!2038596 res!2668105) b!6496519))

(assert (= (and d!2038596 c!1190921) b!6496526))

(assert (= (and d!2038596 (not c!1190921)) b!6496523))

(assert (= (and b!6496523 c!1190920) b!6496517))

(assert (= (and b!6496523 (not c!1190920)) b!6496525))

(assert (= (and d!2038596 res!2668106) b!6496522))

(assert (= (and b!6496522 c!1190919) b!6496521))

(assert (= (and b!6496522 (not c!1190919)) b!6496520))

(assert (= (and b!6496520 c!1190918) b!6496524))

(assert (= (and b!6496520 (not c!1190918)) b!6496518))

(assert (=> b!6496524 m!7284170))

(declare-fun m!7285164 () Bool)

(assert (=> b!6496524 m!7285164))

(declare-fun m!7285166 () Bool)

(assert (=> b!6496518 m!7285166))

(assert (=> b!6496520 m!7284170))

(declare-fun m!7285168 () Bool)

(assert (=> b!6496520 m!7285168))

(assert (=> b!6496520 m!7285168))

(declare-fun m!7285170 () Bool)

(assert (=> b!6496520 m!7285170))

(assert (=> b!6496522 m!7284170))

(declare-fun m!7285174 () Bool)

(assert (=> b!6496522 m!7285174))

(declare-fun m!7285176 () Bool)

(assert (=> d!2038596 m!7285176))

(assert (=> d!2038596 m!7284170))

(declare-fun m!7285178 () Bool)

(assert (=> d!2038596 m!7285178))

(declare-fun m!7285180 () Bool)

(assert (=> b!6496519 m!7285180))

(declare-fun m!7285182 () Bool)

(assert (=> b!6496521 m!7285182))

(declare-fun m!7285184 () Bool)

(assert (=> b!6496517 m!7285184))

(assert (=> d!2038170 d!2038596))

(declare-fun bs!1650096 () Bool)

(declare-fun d!2038604 () Bool)

(assert (= bs!1650096 (and d!2038604 d!2038596)))

(declare-fun lambda!359923 () Int)

(assert (=> bs!1650096 (= lambda!359923 lambda!359921)))

(declare-fun bs!1650097 () Bool)

(assert (= bs!1650097 (and d!2038604 d!2038172)))

(assert (=> bs!1650097 (= lambda!359923 lambda!359857)))

(declare-fun bs!1650098 () Bool)

(assert (= bs!1650098 (and d!2038604 d!2038112)))

(assert (=> bs!1650098 (= lambda!359923 lambda!359841)))

(declare-fun bs!1650099 () Bool)

(assert (= bs!1650099 (and d!2038604 d!2038156)))

(assert (=> bs!1650099 (= lambda!359923 lambda!359853)))

(declare-fun bs!1650100 () Bool)

(assert (= bs!1650100 (and d!2038604 d!2038214)))

(assert (=> bs!1650100 (= lambda!359923 lambda!359872)))

(declare-fun bs!1650101 () Bool)

(assert (= bs!1650101 (and d!2038604 d!2038476)))

(assert (=> bs!1650101 (= lambda!359923 lambda!359908)))

(declare-fun bs!1650102 () Bool)

(assert (= bs!1650102 (and d!2038604 d!2038194)))

(assert (=> bs!1650102 (= lambda!359923 lambda!359863)))

(declare-fun bs!1650103 () Bool)

(assert (= bs!1650103 (and d!2038604 d!2038192)))

(assert (=> bs!1650103 (= lambda!359923 lambda!359860)))

(declare-fun lt!2390809 () List!65418)

(assert (=> d!2038604 (forall!15554 lt!2390809 lambda!359923)))

(declare-fun e!3936827 () List!65418)

(assert (=> d!2038604 (= lt!2390809 e!3936827)))

(declare-fun c!1190922 () Bool)

(assert (=> d!2038604 (= c!1190922 ((_ is Cons!65296) (Cons!65296 lt!2390632 Nil!65296)))))

(assert (=> d!2038604 (= (unfocusZipperList!1794 (Cons!65296 lt!2390632 Nil!65296)) lt!2390809)))

(declare-fun b!6496527 () Bool)

(assert (=> b!6496527 (= e!3936827 (Cons!65294 (generalisedConcat!1970 (exprs!6257 (h!71744 (Cons!65296 lt!2390632 Nil!65296)))) (unfocusZipperList!1794 (t!379050 (Cons!65296 lt!2390632 Nil!65296)))))))

(declare-fun b!6496528 () Bool)

(assert (=> b!6496528 (= e!3936827 Nil!65294)))

(assert (= (and d!2038604 c!1190922) b!6496527))

(assert (= (and d!2038604 (not c!1190922)) b!6496528))

(declare-fun m!7285186 () Bool)

(assert (=> d!2038604 m!7285186))

(declare-fun m!7285188 () Bool)

(assert (=> b!6496527 m!7285188))

(declare-fun m!7285190 () Bool)

(assert (=> b!6496527 m!7285190))

(assert (=> d!2038170 d!2038604))

(declare-fun d!2038608 () Bool)

(assert (=> d!2038608 (= (isEmpty!37489 (exprs!6257 (h!71744 zl!343))) ((_ is Nil!65294) (exprs!6257 (h!71744 zl!343))))))

(assert (=> b!6495428 d!2038608))

(declare-fun c!1190926 () Bool)

(declare-fun call!562728 () Bool)

(declare-fun c!1190925 () Bool)

(declare-fun bm!562723 () Bool)

(assert (=> bm!562723 (= call!562728 (validRegex!8109 (ite c!1190925 (reg!16702 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))) (ite c!1190926 (regTwo!33259 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))) (regTwo!33258 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292)))))))))

(declare-fun b!6496538 () Bool)

(declare-fun e!3936839 () Bool)

(declare-fun e!3936836 () Bool)

(assert (=> b!6496538 (= e!3936839 e!3936836)))

(declare-fun res!2668113 () Bool)

(assert (=> b!6496538 (= res!2668113 (not (nullable!6366 (reg!16702 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))))))))

(assert (=> b!6496538 (=> (not res!2668113) (not e!3936836))))

(declare-fun b!6496539 () Bool)

(declare-fun e!3936838 () Bool)

(declare-fun call!562730 () Bool)

(assert (=> b!6496539 (= e!3936838 call!562730)))

(declare-fun call!562729 () Bool)

(declare-fun bm!562724 () Bool)

(assert (=> bm!562724 (= call!562729 (validRegex!8109 (ite c!1190926 (regOne!33259 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))) (regOne!33258 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))))))))

(declare-fun b!6496540 () Bool)

(declare-fun e!3936837 () Bool)

(assert (=> b!6496540 (= e!3936837 e!3936839)))

(assert (=> b!6496540 (= c!1190925 ((_ is Star!16373) (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))))))

(declare-fun b!6496541 () Bool)

(declare-fun res!2668115 () Bool)

(declare-fun e!3936840 () Bool)

(assert (=> b!6496541 (=> res!2668115 e!3936840)))

(assert (=> b!6496541 (= res!2668115 (not ((_ is Concat!25218) (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292)))))))

(declare-fun e!3936835 () Bool)

(assert (=> b!6496541 (= e!3936835 e!3936840)))

(declare-fun b!6496542 () Bool)

(declare-fun e!3936841 () Bool)

(assert (=> b!6496542 (= e!3936841 call!562730)))

(declare-fun b!6496543 () Bool)

(assert (=> b!6496543 (= e!3936839 e!3936835)))

(assert (=> b!6496543 (= c!1190926 ((_ is Union!16373) (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))))))

(declare-fun b!6496544 () Bool)

(assert (=> b!6496544 (= e!3936840 e!3936841)))

(declare-fun res!2668116 () Bool)

(assert (=> b!6496544 (=> (not res!2668116) (not e!3936841))))

(assert (=> b!6496544 (= res!2668116 call!562729)))

(declare-fun bm!562725 () Bool)

(assert (=> bm!562725 (= call!562730 call!562728)))

(declare-fun d!2038610 () Bool)

(declare-fun res!2668112 () Bool)

(assert (=> d!2038610 (=> res!2668112 e!3936837)))

(assert (=> d!2038610 (= res!2668112 ((_ is ElementMatch!16373) (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))))))

(assert (=> d!2038610 (= (validRegex!8109 (ite c!1190673 (regOne!33259 r!7292) (regOne!33258 r!7292))) e!3936837)))

(declare-fun b!6496545 () Bool)

(assert (=> b!6496545 (= e!3936836 call!562728)))

(declare-fun b!6496546 () Bool)

(declare-fun res!2668114 () Bool)

(assert (=> b!6496546 (=> (not res!2668114) (not e!3936838))))

(assert (=> b!6496546 (= res!2668114 call!562729)))

(assert (=> b!6496546 (= e!3936835 e!3936838)))

(assert (= (and d!2038610 (not res!2668112)) b!6496540))

(assert (= (and b!6496540 c!1190925) b!6496538))

(assert (= (and b!6496540 (not c!1190925)) b!6496543))

(assert (= (and b!6496538 res!2668113) b!6496545))

(assert (= (and b!6496543 c!1190926) b!6496546))

(assert (= (and b!6496543 (not c!1190926)) b!6496541))

(assert (= (and b!6496546 res!2668114) b!6496539))

(assert (= (and b!6496541 (not res!2668115)) b!6496544))

(assert (= (and b!6496544 res!2668116) b!6496542))

(assert (= (or b!6496539 b!6496542) bm!562725))

(assert (= (or b!6496546 b!6496544) bm!562724))

(assert (= (or b!6496545 bm!562725) bm!562723))

(declare-fun m!7285198 () Bool)

(assert (=> bm!562723 m!7285198))

(declare-fun m!7285200 () Bool)

(assert (=> b!6496538 m!7285200))

(declare-fun m!7285202 () Bool)

(assert (=> bm!562724 m!7285202))

(assert (=> bm!562541 d!2038610))

(declare-fun d!2038614 () Bool)

(declare-fun res!2668125 () Bool)

(declare-fun e!3936849 () Bool)

(assert (=> d!2038614 (=> res!2668125 e!3936849)))

(assert (=> d!2038614 (= res!2668125 ((_ is Nil!65294) (exprs!6257 lt!2390647)))))

(assert (=> d!2038614 (= (forall!15554 (exprs!6257 lt!2390647) lambda!359872) e!3936849)))

(declare-fun b!6496561 () Bool)

(declare-fun e!3936850 () Bool)

(assert (=> b!6496561 (= e!3936849 e!3936850)))

(declare-fun res!2668126 () Bool)

(assert (=> b!6496561 (=> (not res!2668126) (not e!3936850))))

(assert (=> b!6496561 (= res!2668126 (dynLambda!25937 lambda!359872 (h!71742 (exprs!6257 lt!2390647))))))

(declare-fun b!6496562 () Bool)

(assert (=> b!6496562 (= e!3936850 (forall!15554 (t!379048 (exprs!6257 lt!2390647)) lambda!359872))))

(assert (= (and d!2038614 (not res!2668125)) b!6496561))

(assert (= (and b!6496561 res!2668126) b!6496562))

(declare-fun b_lambda!245903 () Bool)

(assert (=> (not b_lambda!245903) (not b!6496561)))

(declare-fun m!7285206 () Bool)

(assert (=> b!6496561 m!7285206))

(declare-fun m!7285208 () Bool)

(assert (=> b!6496562 m!7285208))

(assert (=> d!2038214 d!2038614))

(assert (=> b!6495629 d!2038590))

(assert (=> b!6495629 d!2038502))

(declare-fun b!6496563 () Bool)

(declare-fun e!3936853 () (InoxSet Context!11514))

(assert (=> b!6496563 (= e!3936853 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562727 () Bool)

(declare-fun call!562734 () List!65418)

(declare-fun call!562735 () List!65418)

(assert (=> bm!562727 (= call!562734 call!562735)))

(declare-fun b!6496564 () Bool)

(declare-fun e!3936852 () (InoxSet Context!11514))

(declare-fun e!3936854 () (InoxSet Context!11514))

(assert (=> b!6496564 (= e!3936852 e!3936854)))

(declare-fun c!1190933 () Bool)

(assert (=> b!6496564 (= c!1190933 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390647))))))

(declare-fun b!6496565 () Bool)

(declare-fun e!3936855 () (InoxSet Context!11514))

(assert (=> b!6496565 (= e!3936855 (store ((as const (Array Context!11514 Bool)) false) (Context!11515 (t!379048 (exprs!6257 lt!2390647))) true))))

(declare-fun bm!562728 () Bool)

(declare-fun c!1190930 () Bool)

(assert (=> bm!562728 (= call!562735 ($colon$colon!2224 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647)))) (ite (or c!1190930 c!1190933) (regTwo!33258 (h!71742 (exprs!6257 lt!2390647))) (h!71742 (exprs!6257 lt!2390647)))))))

(declare-fun d!2038616 () Bool)

(declare-fun c!1190932 () Bool)

(assert (=> d!2038616 (= c!1190932 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 lt!2390647))) (= (c!1190447 (h!71742 (exprs!6257 lt!2390647))) (h!71743 s!2326))))))

(assert (=> d!2038616 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390647)) (Context!11515 (t!379048 (exprs!6257 lt!2390647))) (h!71743 s!2326)) e!3936855)))

(declare-fun b!6496566 () Bool)

(declare-fun e!3936851 () (InoxSet Context!11514))

(assert (=> b!6496566 (= e!3936855 e!3936851)))

(declare-fun c!1190931 () Bool)

(assert (=> b!6496566 (= c!1190931 ((_ is Union!16373) (h!71742 (exprs!6257 lt!2390647))))))

(declare-fun bm!562729 () Bool)

(declare-fun call!562737 () (InoxSet Context!11514))

(declare-fun call!562732 () (InoxSet Context!11514))

(assert (=> bm!562729 (= call!562737 call!562732)))

(declare-fun b!6496567 () Bool)

(declare-fun call!562733 () (InoxSet Context!11514))

(assert (=> b!6496567 (= e!3936854 call!562733)))

(declare-fun bm!562730 () Bool)

(assert (=> bm!562730 (= call!562733 call!562737)))

(declare-fun call!562736 () (InoxSet Context!11514))

(declare-fun bm!562731 () Bool)

(assert (=> bm!562731 (= call!562736 (derivationStepZipperDown!1621 (ite c!1190931 (regOne!33259 (h!71742 (exprs!6257 lt!2390647))) (regOne!33258 (h!71742 (exprs!6257 lt!2390647)))) (ite c!1190931 (Context!11515 (t!379048 (exprs!6257 lt!2390647))) (Context!11515 call!562735)) (h!71743 s!2326)))))

(declare-fun bm!562732 () Bool)

(assert (=> bm!562732 (= call!562732 (derivationStepZipperDown!1621 (ite c!1190931 (regTwo!33259 (h!71742 (exprs!6257 lt!2390647))) (ite c!1190930 (regTwo!33258 (h!71742 (exprs!6257 lt!2390647))) (ite c!1190933 (regOne!33258 (h!71742 (exprs!6257 lt!2390647))) (reg!16702 (h!71742 (exprs!6257 lt!2390647)))))) (ite (or c!1190931 c!1190930) (Context!11515 (t!379048 (exprs!6257 lt!2390647))) (Context!11515 call!562734)) (h!71743 s!2326)))))

(declare-fun b!6496568 () Bool)

(declare-fun e!3936856 () Bool)

(assert (=> b!6496568 (= e!3936856 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 lt!2390647)))))))

(declare-fun b!6496569 () Bool)

(assert (=> b!6496569 (= e!3936851 ((_ map or) call!562736 call!562732))))

(declare-fun b!6496570 () Bool)

(declare-fun c!1190934 () Bool)

(assert (=> b!6496570 (= c!1190934 ((_ is Star!16373) (h!71742 (exprs!6257 lt!2390647))))))

(assert (=> b!6496570 (= e!3936854 e!3936853)))

(declare-fun b!6496571 () Bool)

(assert (=> b!6496571 (= e!3936852 ((_ map or) call!562736 call!562737))))

(declare-fun b!6496572 () Bool)

(assert (=> b!6496572 (= e!3936853 call!562733)))

(declare-fun b!6496573 () Bool)

(assert (=> b!6496573 (= c!1190930 e!3936856)))

(declare-fun res!2668127 () Bool)

(assert (=> b!6496573 (=> (not res!2668127) (not e!3936856))))

(assert (=> b!6496573 (= res!2668127 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390647))))))

(assert (=> b!6496573 (= e!3936851 e!3936852)))

(assert (= (and d!2038616 c!1190932) b!6496565))

(assert (= (and d!2038616 (not c!1190932)) b!6496566))

(assert (= (and b!6496566 c!1190931) b!6496569))

(assert (= (and b!6496566 (not c!1190931)) b!6496573))

(assert (= (and b!6496573 res!2668127) b!6496568))

(assert (= (and b!6496573 c!1190930) b!6496571))

(assert (= (and b!6496573 (not c!1190930)) b!6496564))

(assert (= (and b!6496564 c!1190933) b!6496567))

(assert (= (and b!6496564 (not c!1190933)) b!6496570))

(assert (= (and b!6496570 c!1190934) b!6496572))

(assert (= (and b!6496570 (not c!1190934)) b!6496563))

(assert (= (or b!6496567 b!6496572) bm!562727))

(assert (= (or b!6496567 b!6496572) bm!562730))

(assert (= (or b!6496571 bm!562727) bm!562728))

(assert (= (or b!6496571 bm!562730) bm!562729))

(assert (= (or b!6496569 bm!562729) bm!562732))

(assert (= (or b!6496569 b!6496571) bm!562731))

(declare-fun m!7285218 () Bool)

(assert (=> bm!562728 m!7285218))

(declare-fun m!7285224 () Bool)

(assert (=> bm!562732 m!7285224))

(declare-fun m!7285226 () Bool)

(assert (=> b!6496565 m!7285226))

(declare-fun m!7285230 () Bool)

(assert (=> b!6496568 m!7285230))

(declare-fun m!7285232 () Bool)

(assert (=> bm!562731 m!7285232))

(assert (=> bm!562494 d!2038616))

(declare-fun bs!1650104 () Bool)

(declare-fun d!2038622 () Bool)

(assert (= bs!1650104 (and d!2038622 d!2038372)))

(declare-fun lambda!359924 () Int)

(assert (=> bs!1650104 (= lambda!359924 lambda!359900)))

(declare-fun bs!1650105 () Bool)

(assert (= bs!1650105 (and d!2038622 d!2038526)))

(assert (=> bs!1650105 (= lambda!359924 lambda!359914)))

(assert (=> d!2038622 (= (nullableZipper!2128 lt!2390657) (exists!2621 lt!2390657 lambda!359924))))

(declare-fun bs!1650106 () Bool)

(assert (= bs!1650106 d!2038622))

(declare-fun m!7285238 () Bool)

(assert (=> bs!1650106 m!7285238))

(assert (=> b!6495375 d!2038622))

(declare-fun bs!1650107 () Bool)

(declare-fun d!2038626 () Bool)

(assert (= bs!1650107 (and d!2038626 d!2038596)))

(declare-fun lambda!359925 () Int)

(assert (=> bs!1650107 (= lambda!359925 lambda!359921)))

(declare-fun bs!1650108 () Bool)

(assert (= bs!1650108 (and d!2038626 d!2038172)))

(assert (=> bs!1650108 (= lambda!359925 lambda!359857)))

(declare-fun bs!1650109 () Bool)

(assert (= bs!1650109 (and d!2038626 d!2038112)))

(assert (=> bs!1650109 (= lambda!359925 lambda!359841)))

(declare-fun bs!1650110 () Bool)

(assert (= bs!1650110 (and d!2038626 d!2038604)))

(assert (=> bs!1650110 (= lambda!359925 lambda!359923)))

(declare-fun bs!1650111 () Bool)

(assert (= bs!1650111 (and d!2038626 d!2038156)))

(assert (=> bs!1650111 (= lambda!359925 lambda!359853)))

(declare-fun bs!1650112 () Bool)

(assert (= bs!1650112 (and d!2038626 d!2038214)))

(assert (=> bs!1650112 (= lambda!359925 lambda!359872)))

(declare-fun bs!1650113 () Bool)

(assert (= bs!1650113 (and d!2038626 d!2038476)))

(assert (=> bs!1650113 (= lambda!359925 lambda!359908)))

(declare-fun bs!1650114 () Bool)

(assert (= bs!1650114 (and d!2038626 d!2038194)))

(assert (=> bs!1650114 (= lambda!359925 lambda!359863)))

(declare-fun bs!1650115 () Bool)

(assert (= bs!1650115 (and d!2038626 d!2038192)))

(assert (=> bs!1650115 (= lambda!359925 lambda!359860)))

(declare-fun b!6496595 () Bool)

(declare-fun e!3936874 () Bool)

(declare-fun lt!2390812 () Regex!16373)

(assert (=> b!6496595 (= e!3936874 (= lt!2390812 (head!13218 (t!379048 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun b!6496596 () Bool)

(declare-fun e!3936873 () Bool)

(assert (=> b!6496596 (= e!3936873 e!3936874)))

(declare-fun c!1190944 () Bool)

(assert (=> b!6496596 (= c!1190944 (isEmpty!37489 (tail!12303 (t!379048 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun b!6496597 () Bool)

(declare-fun e!3936875 () Regex!16373)

(assert (=> b!6496597 (= e!3936875 (Concat!25218 (h!71742 (t!379048 (exprs!6257 (h!71744 zl!343)))) (generalisedConcat!1970 (t!379048 (t!379048 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun e!3936872 () Bool)

(assert (=> d!2038626 e!3936872))

(declare-fun res!2668135 () Bool)

(assert (=> d!2038626 (=> (not res!2668135) (not e!3936872))))

(assert (=> d!2038626 (= res!2668135 (validRegex!8109 lt!2390812))))

(declare-fun e!3936876 () Regex!16373)

(assert (=> d!2038626 (= lt!2390812 e!3936876)))

(declare-fun c!1190945 () Bool)

(declare-fun e!3936871 () Bool)

(assert (=> d!2038626 (= c!1190945 e!3936871)))

(declare-fun res!2668136 () Bool)

(assert (=> d!2038626 (=> (not res!2668136) (not e!3936871))))

(assert (=> d!2038626 (= res!2668136 ((_ is Cons!65294) (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> d!2038626 (forall!15554 (t!379048 (exprs!6257 (h!71744 zl!343))) lambda!359925)))

(assert (=> d!2038626 (= (generalisedConcat!1970 (t!379048 (exprs!6257 (h!71744 zl!343)))) lt!2390812)))

(declare-fun b!6496598 () Bool)

(assert (=> b!6496598 (= e!3936871 (isEmpty!37489 (t!379048 (t!379048 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun b!6496599 () Bool)

(assert (=> b!6496599 (= e!3936875 EmptyExpr!16373)))

(declare-fun b!6496600 () Bool)

(assert (=> b!6496600 (= e!3936876 e!3936875)))

(declare-fun c!1190943 () Bool)

(assert (=> b!6496600 (= c!1190943 ((_ is Cons!65294) (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6496601 () Bool)

(assert (=> b!6496601 (= e!3936872 e!3936873)))

(declare-fun c!1190942 () Bool)

(assert (=> b!6496601 (= c!1190942 (isEmpty!37489 (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6496602 () Bool)

(assert (=> b!6496602 (= e!3936876 (h!71742 (t!379048 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6496603 () Bool)

(assert (=> b!6496603 (= e!3936874 (isConcat!1286 lt!2390812))))

(declare-fun b!6496604 () Bool)

(assert (=> b!6496604 (= e!3936873 (isEmptyExpr!1763 lt!2390812))))

(assert (= (and d!2038626 res!2668136) b!6496598))

(assert (= (and d!2038626 c!1190945) b!6496602))

(assert (= (and d!2038626 (not c!1190945)) b!6496600))

(assert (= (and b!6496600 c!1190943) b!6496597))

(assert (= (and b!6496600 (not c!1190943)) b!6496599))

(assert (= (and d!2038626 res!2668135) b!6496601))

(assert (= (and b!6496601 c!1190942) b!6496604))

(assert (= (and b!6496601 (not c!1190942)) b!6496596))

(assert (= (and b!6496596 c!1190944) b!6496595))

(assert (= (and b!6496596 (not c!1190944)) b!6496603))

(assert (=> b!6496601 m!7283710))

(declare-fun m!7285250 () Bool)

(assert (=> b!6496596 m!7285250))

(assert (=> b!6496596 m!7285250))

(declare-fun m!7285252 () Bool)

(assert (=> b!6496596 m!7285252))

(declare-fun m!7285254 () Bool)

(assert (=> b!6496603 m!7285254))

(declare-fun m!7285256 () Bool)

(assert (=> d!2038626 m!7285256))

(declare-fun m!7285258 () Bool)

(assert (=> d!2038626 m!7285258))

(declare-fun m!7285260 () Bool)

(assert (=> b!6496597 m!7285260))

(declare-fun m!7285262 () Bool)

(assert (=> b!6496604 m!7285262))

(declare-fun m!7285264 () Bool)

(assert (=> b!6496595 m!7285264))

(declare-fun m!7285266 () Bool)

(assert (=> b!6496598 m!7285266))

(assert (=> b!6495424 d!2038626))

(assert (=> bm!562526 d!2038370))

(declare-fun bs!1650135 () Bool)

(declare-fun b!6496610 () Bool)

(assert (= bs!1650135 (and b!6496610 b!6495576)))

(declare-fun lambda!359927 () Int)

(assert (=> bs!1650135 (= (and (= (reg!16702 (regTwo!33259 lt!2390659)) (reg!16702 r!7292)) (= (regTwo!33259 lt!2390659) r!7292)) (= lambda!359927 lambda!359868))))

(declare-fun bs!1650136 () Bool)

(assert (= bs!1650136 (and b!6496610 b!6495582)))

(assert (=> bs!1650136 (not (= lambda!359927 lambda!359869))))

(declare-fun bs!1650137 () Bool)

(assert (= bs!1650137 (and b!6496610 b!6495643)))

(assert (=> bs!1650137 (= (and (= (reg!16702 (regTwo!33259 lt!2390659)) (reg!16702 lt!2390659)) (= (regTwo!33259 lt!2390659) lt!2390659)) (= lambda!359927 lambda!359870))))

(declare-fun bs!1650138 () Bool)

(assert (= bs!1650138 (and b!6496610 b!6494886)))

(assert (=> bs!1650138 (not (= lambda!359927 lambda!359802))))

(assert (=> bs!1650138 (not (= lambda!359927 lambda!359803))))

(declare-fun bs!1650139 () Bool)

(assert (= bs!1650139 (and b!6496610 d!2038120)))

(assert (=> bs!1650139 (not (= lambda!359927 lambda!359844))))

(declare-fun bs!1650140 () Bool)

(assert (= bs!1650140 (and b!6496610 b!6495649)))

(assert (=> bs!1650140 (not (= lambda!359927 lambda!359871))))

(declare-fun bs!1650141 () Bool)

(assert (= bs!1650141 (and b!6496610 d!2038122)))

(assert (=> bs!1650141 (not (= lambda!359927 lambda!359850))))

(assert (=> bs!1650141 (not (= lambda!359927 lambda!359849))))

(assert (=> b!6496610 true))

(assert (=> b!6496610 true))

(declare-fun bs!1650142 () Bool)

(declare-fun b!6496616 () Bool)

(assert (= bs!1650142 (and b!6496616 b!6495576)))

(declare-fun lambda!359928 () Int)

(assert (=> bs!1650142 (not (= lambda!359928 lambda!359868))))

(declare-fun bs!1650143 () Bool)

(assert (= bs!1650143 (and b!6496616 b!6495582)))

(assert (=> bs!1650143 (= (and (= (regOne!33258 (regTwo!33259 lt!2390659)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 lt!2390659)) (regTwo!33258 r!7292))) (= lambda!359928 lambda!359869))))

(declare-fun bs!1650144 () Bool)

(assert (= bs!1650144 (and b!6496616 b!6496610)))

(assert (=> bs!1650144 (not (= lambda!359928 lambda!359927))))

(declare-fun bs!1650145 () Bool)

(assert (= bs!1650145 (and b!6496616 b!6495643)))

(assert (=> bs!1650145 (not (= lambda!359928 lambda!359870))))

(declare-fun bs!1650146 () Bool)

(assert (= bs!1650146 (and b!6496616 b!6494886)))

(assert (=> bs!1650146 (not (= lambda!359928 lambda!359802))))

(assert (=> bs!1650146 (= (and (= (regOne!33258 (regTwo!33259 lt!2390659)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 lt!2390659)) (regTwo!33258 r!7292))) (= lambda!359928 lambda!359803))))

(declare-fun bs!1650147 () Bool)

(assert (= bs!1650147 (and b!6496616 d!2038120)))

(assert (=> bs!1650147 (not (= lambda!359928 lambda!359844))))

(declare-fun bs!1650148 () Bool)

(assert (= bs!1650148 (and b!6496616 b!6495649)))

(assert (=> bs!1650148 (= (and (= (regOne!33258 (regTwo!33259 lt!2390659)) (regOne!33258 lt!2390659)) (= (regTwo!33258 (regTwo!33259 lt!2390659)) (regTwo!33258 lt!2390659))) (= lambda!359928 lambda!359871))))

(declare-fun bs!1650149 () Bool)

(assert (= bs!1650149 (and b!6496616 d!2038122)))

(assert (=> bs!1650149 (= (and (= (regOne!33258 (regTwo!33259 lt!2390659)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 lt!2390659)) (regTwo!33258 r!7292))) (= lambda!359928 lambda!359850))))

(assert (=> bs!1650149 (not (= lambda!359928 lambda!359849))))

(assert (=> b!6496616 true))

(assert (=> b!6496616 true))

(declare-fun bm!562740 () Bool)

(declare-fun call!562746 () Bool)

(assert (=> bm!562740 (= call!562746 (isEmpty!37494 s!2326))))

(declare-fun b!6496607 () Bool)

(declare-fun e!3936885 () Bool)

(assert (=> b!6496607 (= e!3936885 (= s!2326 (Cons!65295 (c!1190447 (regTwo!33259 lt!2390659)) Nil!65295)))))

(declare-fun d!2038634 () Bool)

(declare-fun c!1190947 () Bool)

(assert (=> d!2038634 (= c!1190947 ((_ is EmptyExpr!16373) (regTwo!33259 lt!2390659)))))

(declare-fun e!3936881 () Bool)

(assert (=> d!2038634 (= (matchRSpec!3474 (regTwo!33259 lt!2390659) s!2326) e!3936881)))

(declare-fun b!6496608 () Bool)

(declare-fun e!3936880 () Bool)

(assert (=> b!6496608 (= e!3936881 e!3936880)))

(declare-fun res!2668141 () Bool)

(assert (=> b!6496608 (= res!2668141 (not ((_ is EmptyLang!16373) (regTwo!33259 lt!2390659))))))

(assert (=> b!6496608 (=> (not res!2668141) (not e!3936880))))

(declare-fun b!6496609 () Bool)

(declare-fun e!3936882 () Bool)

(declare-fun e!3936883 () Bool)

(assert (=> b!6496609 (= e!3936882 e!3936883)))

(declare-fun res!2668140 () Bool)

(assert (=> b!6496609 (= res!2668140 (matchRSpec!3474 (regOne!33259 (regTwo!33259 lt!2390659)) s!2326))))

(assert (=> b!6496609 (=> res!2668140 e!3936883)))

(declare-fun e!3936879 () Bool)

(declare-fun call!562745 () Bool)

(assert (=> b!6496610 (= e!3936879 call!562745)))

(declare-fun b!6496611 () Bool)

(assert (=> b!6496611 (= e!3936881 call!562746)))

(declare-fun b!6496612 () Bool)

(declare-fun c!1190946 () Bool)

(assert (=> b!6496612 (= c!1190946 ((_ is ElementMatch!16373) (regTwo!33259 lt!2390659)))))

(assert (=> b!6496612 (= e!3936880 e!3936885)))

(declare-fun b!6496613 () Bool)

(declare-fun res!2668139 () Bool)

(assert (=> b!6496613 (=> res!2668139 e!3936879)))

(assert (=> b!6496613 (= res!2668139 call!562746)))

(declare-fun e!3936884 () Bool)

(assert (=> b!6496613 (= e!3936884 e!3936879)))

(declare-fun b!6496614 () Bool)

(assert (=> b!6496614 (= e!3936882 e!3936884)))

(declare-fun c!1190949 () Bool)

(assert (=> b!6496614 (= c!1190949 ((_ is Star!16373) (regTwo!33259 lt!2390659)))))

(declare-fun bm!562741 () Bool)

(assert (=> bm!562741 (= call!562745 (Exists!3443 (ite c!1190949 lambda!359927 lambda!359928)))))

(declare-fun b!6496615 () Bool)

(declare-fun c!1190948 () Bool)

(assert (=> b!6496615 (= c!1190948 ((_ is Union!16373) (regTwo!33259 lt!2390659)))))

(assert (=> b!6496615 (= e!3936885 e!3936882)))

(assert (=> b!6496616 (= e!3936884 call!562745)))

(declare-fun b!6496617 () Bool)

(assert (=> b!6496617 (= e!3936883 (matchRSpec!3474 (regTwo!33259 (regTwo!33259 lt!2390659)) s!2326))))

(assert (= (and d!2038634 c!1190947) b!6496611))

(assert (= (and d!2038634 (not c!1190947)) b!6496608))

(assert (= (and b!6496608 res!2668141) b!6496612))

(assert (= (and b!6496612 c!1190946) b!6496607))

(assert (= (and b!6496612 (not c!1190946)) b!6496615))

(assert (= (and b!6496615 c!1190948) b!6496609))

(assert (= (and b!6496615 (not c!1190948)) b!6496614))

(assert (= (and b!6496609 (not res!2668140)) b!6496617))

(assert (= (and b!6496614 c!1190949) b!6496613))

(assert (= (and b!6496614 (not c!1190949)) b!6496616))

(assert (= (and b!6496613 (not res!2668139)) b!6496610))

(assert (= (or b!6496610 b!6496616) bm!562741))

(assert (= (or b!6496611 b!6496613) bm!562740))

(assert (=> bm!562740 m!7284068))

(declare-fun m!7285274 () Bool)

(assert (=> b!6496609 m!7285274))

(declare-fun m!7285276 () Bool)

(assert (=> bm!562741 m!7285276))

(declare-fun m!7285278 () Bool)

(assert (=> b!6496617 m!7285278))

(assert (=> b!6495650 d!2038634))

(declare-fun d!2038638 () Bool)

(assert (=> d!2038638 (= (isEmpty!37494 (t!379049 s!2326)) ((_ is Nil!65295) (t!379049 s!2326)))))

(assert (=> d!2038128 d!2038638))

(declare-fun d!2038640 () Bool)

(declare-fun res!2668142 () Bool)

(declare-fun e!3936903 () Bool)

(assert (=> d!2038640 (=> res!2668142 e!3936903)))

(assert (=> d!2038640 (= res!2668142 ((_ is Nil!65294) (exprs!6257 (h!71744 zl!343))))))

(assert (=> d!2038640 (= (forall!15554 (exprs!6257 (h!71744 zl!343)) lambda!359841) e!3936903)))

(declare-fun b!6496671 () Bool)

(declare-fun e!3936904 () Bool)

(assert (=> b!6496671 (= e!3936903 e!3936904)))

(declare-fun res!2668143 () Bool)

(assert (=> b!6496671 (=> (not res!2668143) (not e!3936904))))

(assert (=> b!6496671 (= res!2668143 (dynLambda!25937 lambda!359841 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6496672 () Bool)

(assert (=> b!6496672 (= e!3936904 (forall!15554 (t!379048 (exprs!6257 (h!71744 zl!343))) lambda!359841))))

(assert (= (and d!2038640 (not res!2668142)) b!6496671))

(assert (= (and b!6496671 res!2668143) b!6496672))

(declare-fun b_lambda!245911 () Bool)

(assert (=> (not b_lambda!245911) (not b!6496671)))

(declare-fun m!7285280 () Bool)

(assert (=> b!6496671 m!7285280))

(declare-fun m!7285282 () Bool)

(assert (=> b!6496672 m!7285282))

(assert (=> d!2038112 d!2038640))

(assert (=> bs!1649759 d!2038144))

(declare-fun d!2038642 () Bool)

(declare-fun c!1190951 () Bool)

(declare-fun e!3936908 () Bool)

(assert (=> d!2038642 (= c!1190951 e!3936908)))

(declare-fun res!2668144 () Bool)

(assert (=> d!2038642 (=> (not res!2668144) (not e!3936908))))

(assert (=> d!2038642 (= res!2668144 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632))))))))

(declare-fun e!3936910 () (InoxSet Context!11514))

(assert (=> d!2038642 (= (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390632))) (h!71743 s!2326)) e!3936910)))

(declare-fun bm!562742 () Bool)

(declare-fun call!562747 () (InoxSet Context!11514))

(assert (=> bm!562742 (= call!562747 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632)))))) (h!71743 s!2326)))))

(declare-fun b!6496681 () Bool)

(assert (=> b!6496681 (= e!3936908 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632)))))))))

(declare-fun b!6496683 () Bool)

(declare-fun e!3936907 () (InoxSet Context!11514))

(assert (=> b!6496683 (= e!3936907 call!562747)))

(declare-fun b!6496685 () Bool)

(assert (=> b!6496685 (= e!3936910 ((_ map or) call!562747 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632)))))) (h!71743 s!2326))))))

(declare-fun b!6496687 () Bool)

(assert (=> b!6496687 (= e!3936910 e!3936907)))

(declare-fun c!1190950 () Bool)

(assert (=> b!6496687 (= c!1190950 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632))))))))

(declare-fun b!6496689 () Bool)

(assert (=> b!6496689 (= e!3936907 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038642 res!2668144) b!6496681))

(assert (= (and d!2038642 c!1190951) b!6496685))

(assert (= (and d!2038642 (not c!1190951)) b!6496687))

(assert (= (and b!6496687 c!1190950) b!6496683))

(assert (= (and b!6496687 (not c!1190950)) b!6496689))

(assert (= (or b!6496685 b!6496683) bm!562742))

(declare-fun m!7285284 () Bool)

(assert (=> bm!562742 m!7285284))

(declare-fun m!7285286 () Bool)

(assert (=> b!6496681 m!7285286))

(declare-fun m!7285288 () Bool)

(assert (=> b!6496685 m!7285288))

(assert (=> b!6495394 d!2038642))

(declare-fun bs!1650150 () Bool)

(declare-fun d!2038644 () Bool)

(assert (= bs!1650150 (and d!2038644 d!2038372)))

(declare-fun lambda!359929 () Int)

(assert (=> bs!1650150 (= lambda!359929 lambda!359900)))

(declare-fun bs!1650151 () Bool)

(assert (= bs!1650151 (and d!2038644 d!2038526)))

(assert (=> bs!1650151 (= lambda!359929 lambda!359914)))

(declare-fun bs!1650152 () Bool)

(assert (= bs!1650152 (and d!2038644 d!2038622)))

(assert (=> bs!1650152 (= lambda!359929 lambda!359924)))

(assert (=> d!2038644 (= (nullableZipper!2128 ((_ map or) lt!2390644 lt!2390660)) (exists!2621 ((_ map or) lt!2390644 lt!2390660) lambda!359929))))

(declare-fun bs!1650153 () Bool)

(assert (= bs!1650153 d!2038644))

(declare-fun m!7285290 () Bool)

(assert (=> bs!1650153 m!7285290))

(assert (=> b!6495492 d!2038644))

(assert (=> b!6495633 d!2038460))

(declare-fun d!2038646 () Bool)

(declare-fun res!2668149 () Bool)

(declare-fun e!3936930 () Bool)

(assert (=> d!2038646 (=> res!2668149 e!3936930)))

(assert (=> d!2038646 (= res!2668149 ((_ is Nil!65296) lt!2390733))))

(assert (=> d!2038646 (= (noDuplicate!2191 lt!2390733) e!3936930)))

(declare-fun b!6496745 () Bool)

(declare-fun e!3936931 () Bool)

(assert (=> b!6496745 (= e!3936930 e!3936931)))

(declare-fun res!2668150 () Bool)

(assert (=> b!6496745 (=> (not res!2668150) (not e!3936931))))

(declare-fun contains!20194 (List!65420 Context!11514) Bool)

(assert (=> b!6496745 (= res!2668150 (not (contains!20194 (t!379050 lt!2390733) (h!71744 lt!2390733))))))

(declare-fun b!6496746 () Bool)

(assert (=> b!6496746 (= e!3936931 (noDuplicate!2191 (t!379050 lt!2390733)))))

(assert (= (and d!2038646 (not res!2668149)) b!6496745))

(assert (= (and b!6496745 res!2668150) b!6496746))

(declare-fun m!7285294 () Bool)

(assert (=> b!6496745 m!7285294))

(declare-fun m!7285296 () Bool)

(assert (=> b!6496746 m!7285296))

(assert (=> d!2038140 d!2038646))

(declare-fun d!2038650 () Bool)

(declare-fun e!3936940 () Bool)

(assert (=> d!2038650 e!3936940))

(declare-fun res!2668156 () Bool)

(assert (=> d!2038650 (=> (not res!2668156) (not e!3936940))))

(declare-fun res!2668155 () List!65420)

(assert (=> d!2038650 (= res!2668156 (noDuplicate!2191 res!2668155))))

(declare-fun e!3936939 () Bool)

(assert (=> d!2038650 e!3936939))

(assert (=> d!2038650 (= (choose!48214 z!1189) res!2668155)))

(declare-fun b!6496754 () Bool)

(declare-fun e!3936938 () Bool)

(declare-fun tp!1797562 () Bool)

(assert (=> b!6496754 (= e!3936938 tp!1797562)))

(declare-fun tp!1797561 () Bool)

(declare-fun b!6496753 () Bool)

(assert (=> b!6496753 (= e!3936939 (and (inv!84179 (h!71744 res!2668155)) e!3936938 tp!1797561))))

(declare-fun b!6496755 () Bool)

(assert (=> b!6496755 (= e!3936940 (= (content!12448 res!2668155) z!1189))))

(assert (= b!6496753 b!6496754))

(assert (= (and d!2038650 ((_ is Cons!65296) res!2668155)) b!6496753))

(assert (= (and d!2038650 res!2668156) b!6496755))

(declare-fun m!7285308 () Bool)

(assert (=> d!2038650 m!7285308))

(declare-fun m!7285310 () Bool)

(assert (=> b!6496753 m!7285310))

(declare-fun m!7285312 () Bool)

(assert (=> b!6496755 m!7285312))

(assert (=> d!2038140 d!2038650))

(declare-fun b!6496756 () Bool)

(declare-fun e!3936943 () (InoxSet Context!11514))

(assert (=> b!6496756 (= e!3936943 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562743 () Bool)

(declare-fun call!562750 () List!65418)

(declare-fun call!562751 () List!65418)

(assert (=> bm!562743 (= call!562750 call!562751)))

(declare-fun b!6496757 () Bool)

(declare-fun e!3936942 () (InoxSet Context!11514))

(declare-fun e!3936944 () (InoxSet Context!11514))

(assert (=> b!6496757 (= e!3936942 e!3936944)))

(declare-fun c!1190955 () Bool)

(assert (=> b!6496757 (= c!1190955 ((_ is Concat!25218) (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun e!3936945 () (InoxSet Context!11514))

(declare-fun b!6496758 () Bool)

(assert (=> b!6496758 (= e!3936945 (store ((as const (Array Context!11514 Bool)) false) (ite c!1190611 lt!2390633 (Context!11515 call!562516)) true))))

(declare-fun c!1190952 () Bool)

(declare-fun bm!562744 () Bool)

(assert (=> bm!562744 (= call!562751 ($colon$colon!2224 (exprs!6257 (ite c!1190611 lt!2390633 (Context!11515 call!562516))) (ite (or c!1190952 c!1190955) (regTwo!33258 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))))))

(declare-fun c!1190954 () Bool)

(declare-fun d!2038662 () Bool)

(assert (=> d!2038662 (= c!1190954 (and ((_ is ElementMatch!16373) (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (= (c!1190447 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (h!71743 s!2326))))))

(assert (=> d!2038662 (= (derivationStepZipperDown!1621 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))) (ite c!1190611 lt!2390633 (Context!11515 call!562516)) (h!71743 s!2326)) e!3936945)))

(declare-fun b!6496759 () Bool)

(declare-fun e!3936941 () (InoxSet Context!11514))

(assert (=> b!6496759 (= e!3936945 e!3936941)))

(declare-fun c!1190953 () Bool)

(assert (=> b!6496759 (= c!1190953 ((_ is Union!16373) (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(declare-fun bm!562745 () Bool)

(declare-fun call!562753 () (InoxSet Context!11514))

(declare-fun call!562748 () (InoxSet Context!11514))

(assert (=> bm!562745 (= call!562753 call!562748)))

(declare-fun b!6496760 () Bool)

(declare-fun call!562749 () (InoxSet Context!11514))

(assert (=> b!6496760 (= e!3936944 call!562749)))

(declare-fun bm!562746 () Bool)

(assert (=> bm!562746 (= call!562749 call!562753)))

(declare-fun bm!562747 () Bool)

(declare-fun call!562752 () (InoxSet Context!11514))

(assert (=> bm!562747 (= call!562752 (derivationStepZipperDown!1621 (ite c!1190953 (regOne!33259 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (regOne!33258 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))) (ite c!1190953 (ite c!1190611 lt!2390633 (Context!11515 call!562516)) (Context!11515 call!562751)) (h!71743 s!2326)))))

(declare-fun bm!562748 () Bool)

(assert (=> bm!562748 (= call!562748 (derivationStepZipperDown!1621 (ite c!1190953 (regTwo!33259 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (ite c!1190952 (regTwo!33258 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (ite c!1190955 (regOne!33258 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))) (reg!16702 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))))) (ite (or c!1190953 c!1190952) (ite c!1190611 lt!2390633 (Context!11515 call!562516)) (Context!11515 call!562750)) (h!71743 s!2326)))))

(declare-fun b!6496761 () Bool)

(declare-fun e!3936946 () Bool)

(assert (=> b!6496761 (= e!3936946 (nullable!6366 (regOne!33258 (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))))))

(declare-fun b!6496762 () Bool)

(assert (=> b!6496762 (= e!3936941 ((_ map or) call!562752 call!562748))))

(declare-fun b!6496763 () Bool)

(declare-fun c!1190956 () Bool)

(assert (=> b!6496763 (= c!1190956 ((_ is Star!16373) (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(assert (=> b!6496763 (= e!3936944 e!3936943)))

(declare-fun b!6496764 () Bool)

(assert (=> b!6496764 (= e!3936942 ((_ map or) call!562752 call!562753))))

(declare-fun b!6496765 () Bool)

(assert (=> b!6496765 (= e!3936943 call!562749)))

(declare-fun b!6496766 () Bool)

(assert (=> b!6496766 (= c!1190952 e!3936946)))

(declare-fun res!2668157 () Bool)

(assert (=> b!6496766 (=> (not res!2668157) (not e!3936946))))

(assert (=> b!6496766 (= res!2668157 ((_ is Concat!25218) (ite c!1190611 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))))))))

(assert (=> b!6496766 (= e!3936941 e!3936942)))

(assert (= (and d!2038662 c!1190954) b!6496758))

(assert (= (and d!2038662 (not c!1190954)) b!6496759))

(assert (= (and b!6496759 c!1190953) b!6496762))

(assert (= (and b!6496759 (not c!1190953)) b!6496766))

(assert (= (and b!6496766 res!2668157) b!6496761))

(assert (= (and b!6496766 c!1190952) b!6496764))

(assert (= (and b!6496766 (not c!1190952)) b!6496757))

(assert (= (and b!6496757 c!1190955) b!6496760))

(assert (= (and b!6496757 (not c!1190955)) b!6496763))

(assert (= (and b!6496763 c!1190956) b!6496765))

(assert (= (and b!6496763 (not c!1190956)) b!6496756))

(assert (= (or b!6496760 b!6496765) bm!562743))

(assert (= (or b!6496760 b!6496765) bm!562746))

(assert (= (or b!6496764 bm!562743) bm!562744))

(assert (= (or b!6496764 bm!562746) bm!562745))

(assert (= (or b!6496762 bm!562745) bm!562748))

(assert (= (or b!6496762 b!6496764) bm!562747))

(declare-fun m!7285314 () Bool)

(assert (=> bm!562744 m!7285314))

(declare-fun m!7285316 () Bool)

(assert (=> bm!562748 m!7285316))

(declare-fun m!7285318 () Bool)

(assert (=> b!6496758 m!7285318))

(declare-fun m!7285320 () Bool)

(assert (=> b!6496761 m!7285320))

(declare-fun m!7285322 () Bool)

(assert (=> bm!562747 m!7285322))

(assert (=> bm!562512 d!2038662))

(declare-fun b!6496767 () Bool)

(declare-fun e!3936949 () (InoxSet Context!11514))

(assert (=> b!6496767 (= e!3936949 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562749 () Bool)

(declare-fun call!562756 () List!65418)

(declare-fun call!562757 () List!65418)

(assert (=> bm!562749 (= call!562756 call!562757)))

(declare-fun b!6496768 () Bool)

(declare-fun e!3936948 () (InoxSet Context!11514))

(declare-fun e!3936950 () (InoxSet Context!11514))

(assert (=> b!6496768 (= e!3936948 e!3936950)))

(declare-fun c!1190960 () Bool)

(assert (=> b!6496768 (= c!1190960 ((_ is Concat!25218) (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))))))

(declare-fun b!6496769 () Bool)

(declare-fun e!3936951 () (InoxSet Context!11514))

(assert (=> b!6496769 (= e!3936951 (store ((as const (Array Context!11514 Bool)) false) (ite c!1190636 lt!2390632 (Context!11515 call!562524)) true))))

(declare-fun c!1190957 () Bool)

(declare-fun bm!562750 () Bool)

(assert (=> bm!562750 (= call!562757 ($colon$colon!2224 (exprs!6257 (ite c!1190636 lt!2390632 (Context!11515 call!562524))) (ite (or c!1190957 c!1190960) (regTwo!33258 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292)))))))))

(declare-fun d!2038664 () Bool)

(declare-fun c!1190959 () Bool)

(assert (=> d!2038664 (= c!1190959 (and ((_ is ElementMatch!16373) (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (= (c!1190447 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (h!71743 s!2326))))))

(assert (=> d!2038664 (= (derivationStepZipperDown!1621 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292)))) (ite c!1190636 lt!2390632 (Context!11515 call!562524)) (h!71743 s!2326)) e!3936951)))

(declare-fun b!6496770 () Bool)

(declare-fun e!3936947 () (InoxSet Context!11514))

(assert (=> b!6496770 (= e!3936951 e!3936947)))

(declare-fun c!1190958 () Bool)

(assert (=> b!6496770 (= c!1190958 ((_ is Union!16373) (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))))))

(declare-fun bm!562751 () Bool)

(declare-fun call!562759 () (InoxSet Context!11514))

(declare-fun call!562754 () (InoxSet Context!11514))

(assert (=> bm!562751 (= call!562759 call!562754)))

(declare-fun b!6496771 () Bool)

(declare-fun call!562755 () (InoxSet Context!11514))

(assert (=> b!6496771 (= e!3936950 call!562755)))

(declare-fun bm!562752 () Bool)

(assert (=> bm!562752 (= call!562755 call!562759)))

(declare-fun bm!562753 () Bool)

(declare-fun call!562758 () (InoxSet Context!11514))

(assert (=> bm!562753 (= call!562758 (derivationStepZipperDown!1621 (ite c!1190958 (regOne!33259 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (regOne!33258 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292)))))) (ite c!1190958 (ite c!1190636 lt!2390632 (Context!11515 call!562524)) (Context!11515 call!562757)) (h!71743 s!2326)))))

(declare-fun bm!562754 () Bool)

(assert (=> bm!562754 (= call!562754 (derivationStepZipperDown!1621 (ite c!1190958 (regTwo!33259 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (ite c!1190957 (regTwo!33258 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (ite c!1190960 (regOne!33258 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))) (reg!16702 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292)))))))) (ite (or c!1190958 c!1190957) (ite c!1190636 lt!2390632 (Context!11515 call!562524)) (Context!11515 call!562756)) (h!71743 s!2326)))))

(declare-fun b!6496772 () Bool)

(declare-fun e!3936952 () Bool)

(assert (=> b!6496772 (= e!3936952 (nullable!6366 (regOne!33258 (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292)))))))))

(declare-fun b!6496773 () Bool)

(assert (=> b!6496773 (= e!3936947 ((_ map or) call!562758 call!562754))))

(declare-fun b!6496774 () Bool)

(declare-fun c!1190961 () Bool)

(assert (=> b!6496774 (= c!1190961 ((_ is Star!16373) (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))))))

(assert (=> b!6496774 (= e!3936950 e!3936949)))

(declare-fun b!6496775 () Bool)

(assert (=> b!6496775 (= e!3936948 ((_ map or) call!562758 call!562759))))

(declare-fun b!6496776 () Bool)

(assert (=> b!6496776 (= e!3936949 call!562755)))

(declare-fun b!6496777 () Bool)

(assert (=> b!6496777 (= c!1190957 e!3936952)))

(declare-fun res!2668158 () Bool)

(assert (=> b!6496777 (=> (not res!2668158) (not e!3936952))))

(assert (=> b!6496777 (= res!2668158 ((_ is Concat!25218) (ite c!1190636 (regOne!33259 (reg!16702 (regOne!33258 r!7292))) (regOne!33258 (reg!16702 (regOne!33258 r!7292))))))))

(assert (=> b!6496777 (= e!3936947 e!3936948)))

(assert (= (and d!2038664 c!1190959) b!6496769))

(assert (= (and d!2038664 (not c!1190959)) b!6496770))

(assert (= (and b!6496770 c!1190958) b!6496773))

(assert (= (and b!6496770 (not c!1190958)) b!6496777))

(assert (= (and b!6496777 res!2668158) b!6496772))

(assert (= (and b!6496777 c!1190957) b!6496775))

(assert (= (and b!6496777 (not c!1190957)) b!6496768))

(assert (= (and b!6496768 c!1190960) b!6496771))

(assert (= (and b!6496768 (not c!1190960)) b!6496774))

(assert (= (and b!6496774 c!1190961) b!6496776))

(assert (= (and b!6496774 (not c!1190961)) b!6496767))

(assert (= (or b!6496771 b!6496776) bm!562749))

(assert (= (or b!6496771 b!6496776) bm!562752))

(assert (= (or b!6496775 bm!562749) bm!562750))

(assert (= (or b!6496775 bm!562752) bm!562751))

(assert (= (or b!6496773 bm!562751) bm!562754))

(assert (= (or b!6496773 b!6496775) bm!562753))

(declare-fun m!7285324 () Bool)

(assert (=> bm!562750 m!7285324))

(declare-fun m!7285326 () Bool)

(assert (=> bm!562754 m!7285326))

(declare-fun m!7285328 () Bool)

(assert (=> b!6496769 m!7285328))

(declare-fun m!7285330 () Bool)

(assert (=> b!6496772 m!7285330))

(declare-fun m!7285332 () Bool)

(assert (=> bm!562753 m!7285332))

(assert (=> bm!562520 d!2038664))

(declare-fun bs!1650160 () Bool)

(declare-fun d!2038666 () Bool)

(assert (= bs!1650160 (and d!2038666 d!2038372)))

(declare-fun lambda!359930 () Int)

(assert (=> bs!1650160 (= lambda!359930 lambda!359900)))

(declare-fun bs!1650161 () Bool)

(assert (= bs!1650161 (and d!2038666 d!2038526)))

(assert (=> bs!1650161 (= lambda!359930 lambda!359914)))

(declare-fun bs!1650162 () Bool)

(assert (= bs!1650162 (and d!2038666 d!2038622)))

(assert (=> bs!1650162 (= lambda!359930 lambda!359924)))

(declare-fun bs!1650163 () Bool)

(assert (= bs!1650163 (and d!2038666 d!2038644)))

(assert (=> bs!1650163 (= lambda!359930 lambda!359929)))

(assert (=> d!2038666 (= (nullableZipper!2128 lt!2390644) (exists!2621 lt!2390644 lambda!359930))))

(declare-fun bs!1650164 () Bool)

(assert (= bs!1650164 d!2038666))

(declare-fun m!7285334 () Bool)

(assert (=> bs!1650164 m!7285334))

(assert (=> b!6495371 d!2038666))

(declare-fun d!2038668 () Bool)

(assert (=> d!2038668 (= (isEmpty!37489 (t!379048 (unfocusZipperList!1794 zl!343))) ((_ is Nil!65294) (t!379048 (unfocusZipperList!1794 zl!343))))))

(assert (=> b!6495516 d!2038668))

(declare-fun d!2038670 () Bool)

(assert (=> d!2038670 (= (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (nullableFct!2302 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))

(declare-fun bs!1650165 () Bool)

(assert (= bs!1650165 d!2038670))

(declare-fun m!7285336 () Bool)

(assert (=> bs!1650165 m!7285336))

(assert (=> b!6495441 d!2038670))

(declare-fun d!2038672 () Bool)

(assert (=> d!2038672 (= (nullable!6366 lt!2390659) (nullableFct!2302 lt!2390659))))

(declare-fun bs!1650166 () Bool)

(assert (= bs!1650166 d!2038672))

(declare-fun m!7285338 () Bool)

(assert (=> bs!1650166 m!7285338))

(assert (=> b!6495639 d!2038672))

(declare-fun b!6496778 () Bool)

(declare-fun e!3936955 () Bool)

(declare-fun e!3936956 () Bool)

(assert (=> b!6496778 (= e!3936955 e!3936956)))

(declare-fun c!1190963 () Bool)

(assert (=> b!6496778 (= c!1190963 ((_ is EmptyLang!16373) (regTwo!33258 r!7292)))))

(declare-fun d!2038674 () Bool)

(assert (=> d!2038674 e!3936955))

(declare-fun c!1190964 () Bool)

(assert (=> d!2038674 (= c!1190964 ((_ is EmptyExpr!16373) (regTwo!33258 r!7292)))))

(declare-fun lt!2390813 () Bool)

(declare-fun e!3936954 () Bool)

(assert (=> d!2038674 (= lt!2390813 e!3936954)))

(declare-fun c!1190962 () Bool)

(assert (=> d!2038674 (= c!1190962 (isEmpty!37494 s!2326))))

(assert (=> d!2038674 (validRegex!8109 (regTwo!33258 r!7292))))

(assert (=> d!2038674 (= (matchR!8556 (regTwo!33258 r!7292) s!2326) lt!2390813)))

(declare-fun b!6496779 () Bool)

(declare-fun res!2668161 () Bool)

(declare-fun e!3936958 () Bool)

(assert (=> b!6496779 (=> res!2668161 e!3936958)))

(assert (=> b!6496779 (= res!2668161 (not ((_ is ElementMatch!16373) (regTwo!33258 r!7292))))))

(assert (=> b!6496779 (= e!3936956 e!3936958)))

(declare-fun b!6496780 () Bool)

(declare-fun call!562760 () Bool)

(assert (=> b!6496780 (= e!3936955 (= lt!2390813 call!562760))))

(declare-fun b!6496781 () Bool)

(declare-fun res!2668166 () Bool)

(declare-fun e!3936953 () Bool)

(assert (=> b!6496781 (=> res!2668166 e!3936953)))

(assert (=> b!6496781 (= res!2668166 (not (isEmpty!37494 (tail!12302 s!2326))))))

(declare-fun b!6496782 () Bool)

(assert (=> b!6496782 (= e!3936956 (not lt!2390813))))

(declare-fun b!6496783 () Bool)

(declare-fun res!2668164 () Bool)

(declare-fun e!3936957 () Bool)

(assert (=> b!6496783 (=> (not res!2668164) (not e!3936957))))

(assert (=> b!6496783 (= res!2668164 (not call!562760))))

(declare-fun b!6496784 () Bool)

(assert (=> b!6496784 (= e!3936953 (not (= (head!13217 s!2326) (c!1190447 (regTwo!33258 r!7292)))))))

(declare-fun b!6496785 () Bool)

(assert (=> b!6496785 (= e!3936957 (= (head!13217 s!2326) (c!1190447 (regTwo!33258 r!7292))))))

(declare-fun b!6496786 () Bool)

(declare-fun res!2668160 () Bool)

(assert (=> b!6496786 (=> res!2668160 e!3936958)))

(assert (=> b!6496786 (= res!2668160 e!3936957)))

(declare-fun res!2668162 () Bool)

(assert (=> b!6496786 (=> (not res!2668162) (not e!3936957))))

(assert (=> b!6496786 (= res!2668162 lt!2390813)))

(declare-fun b!6496787 () Bool)

(declare-fun e!3936959 () Bool)

(assert (=> b!6496787 (= e!3936958 e!3936959)))

(declare-fun res!2668165 () Bool)

(assert (=> b!6496787 (=> (not res!2668165) (not e!3936959))))

(assert (=> b!6496787 (= res!2668165 (not lt!2390813))))

(declare-fun bm!562755 () Bool)

(assert (=> bm!562755 (= call!562760 (isEmpty!37494 s!2326))))

(declare-fun b!6496788 () Bool)

(declare-fun res!2668159 () Bool)

(assert (=> b!6496788 (=> (not res!2668159) (not e!3936957))))

(assert (=> b!6496788 (= res!2668159 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun b!6496789 () Bool)

(assert (=> b!6496789 (= e!3936959 e!3936953)))

(declare-fun res!2668163 () Bool)

(assert (=> b!6496789 (=> res!2668163 e!3936953)))

(assert (=> b!6496789 (= res!2668163 call!562760)))

(declare-fun b!6496790 () Bool)

(assert (=> b!6496790 (= e!3936954 (matchR!8556 (derivativeStep!5067 (regTwo!33258 r!7292) (head!13217 s!2326)) (tail!12302 s!2326)))))

(declare-fun b!6496791 () Bool)

(assert (=> b!6496791 (= e!3936954 (nullable!6366 (regTwo!33258 r!7292)))))

(assert (= (and d!2038674 c!1190962) b!6496791))

(assert (= (and d!2038674 (not c!1190962)) b!6496790))

(assert (= (and d!2038674 c!1190964) b!6496780))

(assert (= (and d!2038674 (not c!1190964)) b!6496778))

(assert (= (and b!6496778 c!1190963) b!6496782))

(assert (= (and b!6496778 (not c!1190963)) b!6496779))

(assert (= (and b!6496779 (not res!2668161)) b!6496786))

(assert (= (and b!6496786 res!2668162) b!6496783))

(assert (= (and b!6496783 res!2668164) b!6496788))

(assert (= (and b!6496788 res!2668159) b!6496785))

(assert (= (and b!6496786 (not res!2668160)) b!6496787))

(assert (= (and b!6496787 res!2668165) b!6496789))

(assert (= (and b!6496789 (not res!2668163)) b!6496781))

(assert (= (and b!6496781 (not res!2668166)) b!6496784))

(assert (= (or b!6496780 b!6496783 b!6496789) bm!562755))

(assert (=> b!6496790 m!7284072))

(assert (=> b!6496790 m!7284072))

(declare-fun m!7285340 () Bool)

(assert (=> b!6496790 m!7285340))

(assert (=> b!6496790 m!7284076))

(assert (=> b!6496790 m!7285340))

(assert (=> b!6496790 m!7284076))

(declare-fun m!7285342 () Bool)

(assert (=> b!6496790 m!7285342))

(assert (=> b!6496784 m!7284072))

(assert (=> d!2038674 m!7284068))

(declare-fun m!7285344 () Bool)

(assert (=> d!2038674 m!7285344))

(declare-fun m!7285346 () Bool)

(assert (=> b!6496791 m!7285346))

(assert (=> bm!562755 m!7284068))

(assert (=> b!6496788 m!7284076))

(assert (=> b!6496788 m!7284076))

(assert (=> b!6496788 m!7284264))

(assert (=> b!6496781 m!7284076))

(assert (=> b!6496781 m!7284076))

(assert (=> b!6496781 m!7284264))

(assert (=> b!6496785 m!7284072))

(assert (=> b!6495352 d!2038674))

(declare-fun d!2038676 () Bool)

(declare-fun c!1190966 () Bool)

(declare-fun e!3936961 () Bool)

(assert (=> d!2038676 (= c!1190966 e!3936961)))

(declare-fun res!2668167 () Bool)

(assert (=> d!2038676 (=> (not res!2668167) (not e!3936961))))

(assert (=> d!2038676 (= res!2668167 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647))))))))

(declare-fun e!3936962 () (InoxSet Context!11514))

(assert (=> d!2038676 (= (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 lt!2390647))) (h!71743 s!2326)) e!3936962)))

(declare-fun bm!562756 () Bool)

(declare-fun call!562761 () (InoxSet Context!11514))

(assert (=> bm!562756 (= call!562761 (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647)))))) (h!71743 s!2326)))))

(declare-fun b!6496792 () Bool)

(assert (=> b!6496792 (= e!3936961 (nullable!6366 (h!71742 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647)))))))))

(declare-fun b!6496793 () Bool)

(declare-fun e!3936960 () (InoxSet Context!11514))

(assert (=> b!6496793 (= e!3936960 call!562761)))

(declare-fun b!6496794 () Bool)

(assert (=> b!6496794 (= e!3936962 ((_ map or) call!562761 (derivationStepZipperUp!1547 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647)))))) (h!71743 s!2326))))))

(declare-fun b!6496795 () Bool)

(assert (=> b!6496795 (= e!3936962 e!3936960)))

(declare-fun c!1190965 () Bool)

(assert (=> b!6496795 (= c!1190965 ((_ is Cons!65294) (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390647))))))))

(declare-fun b!6496796 () Bool)

(assert (=> b!6496796 (= e!3936960 ((as const (Array Context!11514 Bool)) false))))

(assert (= (and d!2038676 res!2668167) b!6496792))

(assert (= (and d!2038676 c!1190966) b!6496794))

(assert (= (and d!2038676 (not c!1190966)) b!6496795))

(assert (= (and b!6496795 c!1190965) b!6496793))

(assert (= (and b!6496795 (not c!1190965)) b!6496796))

(assert (= (or b!6496794 b!6496793) bm!562756))

(declare-fun m!7285348 () Bool)

(assert (=> bm!562756 m!7285348))

(declare-fun m!7285350 () Bool)

(assert (=> b!6496792 m!7285350))

(declare-fun m!7285352 () Bool)

(assert (=> b!6496794 m!7285352))

(assert (=> b!6495434 d!2038676))

(declare-fun d!2038678 () Bool)

(assert (=> d!2038678 (= (nullable!6366 (h!71742 (exprs!6257 lt!2390633))) (nullableFct!2302 (h!71742 (exprs!6257 lt!2390633))))))

(declare-fun bs!1650167 () Bool)

(assert (= bs!1650167 d!2038678))

(declare-fun m!7285354 () Bool)

(assert (=> bs!1650167 m!7285354))

(assert (=> b!6495479 d!2038678))

(declare-fun d!2038680 () Bool)

(assert (=> d!2038680 (= (nullable!6366 (h!71742 (exprs!6257 lt!2390635))) (nullableFct!2302 (h!71742 (exprs!6257 lt!2390635))))))

(declare-fun bs!1650168 () Bool)

(assert (= bs!1650168 d!2038680))

(declare-fun m!7285356 () Bool)

(assert (=> bs!1650168 m!7285356))

(assert (=> b!6495397 d!2038680))

(declare-fun bs!1650169 () Bool)

(declare-fun b!6496800 () Bool)

(assert (= bs!1650169 (and b!6496800 b!6496616)))

(declare-fun lambda!359931 () Int)

(assert (=> bs!1650169 (not (= lambda!359931 lambda!359928))))

(declare-fun bs!1650170 () Bool)

(assert (= bs!1650170 (and b!6496800 b!6495576)))

(assert (=> bs!1650170 (= (and (= (reg!16702 (regOne!33259 r!7292)) (reg!16702 r!7292)) (= (regOne!33259 r!7292) r!7292)) (= lambda!359931 lambda!359868))))

(declare-fun bs!1650171 () Bool)

(assert (= bs!1650171 (and b!6496800 b!6495582)))

(assert (=> bs!1650171 (not (= lambda!359931 lambda!359869))))

(declare-fun bs!1650172 () Bool)

(assert (= bs!1650172 (and b!6496800 b!6496610)))

(assert (=> bs!1650172 (= (and (= (reg!16702 (regOne!33259 r!7292)) (reg!16702 (regTwo!33259 lt!2390659))) (= (regOne!33259 r!7292) (regTwo!33259 lt!2390659))) (= lambda!359931 lambda!359927))))

(declare-fun bs!1650173 () Bool)

(assert (= bs!1650173 (and b!6496800 b!6495643)))

(assert (=> bs!1650173 (= (and (= (reg!16702 (regOne!33259 r!7292)) (reg!16702 lt!2390659)) (= (regOne!33259 r!7292) lt!2390659)) (= lambda!359931 lambda!359870))))

(declare-fun bs!1650174 () Bool)

(assert (= bs!1650174 (and b!6496800 b!6494886)))

(assert (=> bs!1650174 (not (= lambda!359931 lambda!359802))))

(assert (=> bs!1650174 (not (= lambda!359931 lambda!359803))))

(declare-fun bs!1650175 () Bool)

(assert (= bs!1650175 (and b!6496800 d!2038120)))

(assert (=> bs!1650175 (not (= lambda!359931 lambda!359844))))

(declare-fun bs!1650176 () Bool)

(assert (= bs!1650176 (and b!6496800 b!6495649)))

(assert (=> bs!1650176 (not (= lambda!359931 lambda!359871))))

(declare-fun bs!1650177 () Bool)

(assert (= bs!1650177 (and b!6496800 d!2038122)))

(assert (=> bs!1650177 (not (= lambda!359931 lambda!359850))))

(assert (=> bs!1650177 (not (= lambda!359931 lambda!359849))))

(assert (=> b!6496800 true))

(assert (=> b!6496800 true))

(declare-fun bs!1650178 () Bool)

(declare-fun b!6496806 () Bool)

(assert (= bs!1650178 (and b!6496806 b!6496616)))

(declare-fun lambda!359932 () Int)

(assert (=> bs!1650178 (= (and (= (regOne!33258 (regOne!33259 r!7292)) (regOne!33258 (regTwo!33259 lt!2390659))) (= (regTwo!33258 (regOne!33259 r!7292)) (regTwo!33258 (regTwo!33259 lt!2390659)))) (= lambda!359932 lambda!359928))))

(declare-fun bs!1650179 () Bool)

(assert (= bs!1650179 (and b!6496806 b!6495576)))

(assert (=> bs!1650179 (not (= lambda!359932 lambda!359868))))

(declare-fun bs!1650180 () Bool)

(assert (= bs!1650180 (and b!6496806 b!6495582)))

(assert (=> bs!1650180 (= (and (= (regOne!33258 (regOne!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regOne!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359932 lambda!359869))))

(declare-fun bs!1650181 () Bool)

(assert (= bs!1650181 (and b!6496806 b!6496610)))

(assert (=> bs!1650181 (not (= lambda!359932 lambda!359927))))

(declare-fun bs!1650182 () Bool)

(assert (= bs!1650182 (and b!6496806 b!6495643)))

(assert (=> bs!1650182 (not (= lambda!359932 lambda!359870))))

(declare-fun bs!1650183 () Bool)

(assert (= bs!1650183 (and b!6496806 b!6494886)))

(assert (=> bs!1650183 (not (= lambda!359932 lambda!359802))))

(assert (=> bs!1650183 (= (and (= (regOne!33258 (regOne!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regOne!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359932 lambda!359803))))

(declare-fun bs!1650184 () Bool)

(assert (= bs!1650184 (and b!6496806 d!2038120)))

(assert (=> bs!1650184 (not (= lambda!359932 lambda!359844))))

(declare-fun bs!1650185 () Bool)

(assert (= bs!1650185 (and b!6496806 b!6495649)))

(assert (=> bs!1650185 (= (and (= (regOne!33258 (regOne!33259 r!7292)) (regOne!33258 lt!2390659)) (= (regTwo!33258 (regOne!33259 r!7292)) (regTwo!33258 lt!2390659))) (= lambda!359932 lambda!359871))))

(declare-fun bs!1650186 () Bool)

(assert (= bs!1650186 (and b!6496806 d!2038122)))

(assert (=> bs!1650186 (= (and (= (regOne!33258 (regOne!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regOne!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359932 lambda!359850))))

(assert (=> bs!1650186 (not (= lambda!359932 lambda!359849))))

(declare-fun bs!1650187 () Bool)

(assert (= bs!1650187 (and b!6496806 b!6496800)))

(assert (=> bs!1650187 (not (= lambda!359932 lambda!359931))))

(assert (=> b!6496806 true))

(assert (=> b!6496806 true))

(declare-fun bm!562757 () Bool)

(declare-fun call!562763 () Bool)

(assert (=> bm!562757 (= call!562763 (isEmpty!37494 s!2326))))

(declare-fun b!6496797 () Bool)

(declare-fun e!3936969 () Bool)

(assert (=> b!6496797 (= e!3936969 (= s!2326 (Cons!65295 (c!1190447 (regOne!33259 r!7292)) Nil!65295)))))

(declare-fun d!2038682 () Bool)

(declare-fun c!1190968 () Bool)

(assert (=> d!2038682 (= c!1190968 ((_ is EmptyExpr!16373) (regOne!33259 r!7292)))))

(declare-fun e!3936965 () Bool)

(assert (=> d!2038682 (= (matchRSpec!3474 (regOne!33259 r!7292) s!2326) e!3936965)))

(declare-fun b!6496798 () Bool)

(declare-fun e!3936964 () Bool)

(assert (=> b!6496798 (= e!3936965 e!3936964)))

(declare-fun res!2668170 () Bool)

(assert (=> b!6496798 (= res!2668170 (not ((_ is EmptyLang!16373) (regOne!33259 r!7292))))))

(assert (=> b!6496798 (=> (not res!2668170) (not e!3936964))))

(declare-fun b!6496799 () Bool)

(declare-fun e!3936966 () Bool)

(declare-fun e!3936967 () Bool)

(assert (=> b!6496799 (= e!3936966 e!3936967)))

(declare-fun res!2668169 () Bool)

(assert (=> b!6496799 (= res!2668169 (matchRSpec!3474 (regOne!33259 (regOne!33259 r!7292)) s!2326))))

(assert (=> b!6496799 (=> res!2668169 e!3936967)))

(declare-fun e!3936963 () Bool)

(declare-fun call!562762 () Bool)

(assert (=> b!6496800 (= e!3936963 call!562762)))

(declare-fun b!6496801 () Bool)

(assert (=> b!6496801 (= e!3936965 call!562763)))

(declare-fun b!6496802 () Bool)

(declare-fun c!1190967 () Bool)

(assert (=> b!6496802 (= c!1190967 ((_ is ElementMatch!16373) (regOne!33259 r!7292)))))

(assert (=> b!6496802 (= e!3936964 e!3936969)))

(declare-fun b!6496803 () Bool)

(declare-fun res!2668168 () Bool)

(assert (=> b!6496803 (=> res!2668168 e!3936963)))

(assert (=> b!6496803 (= res!2668168 call!562763)))

(declare-fun e!3936968 () Bool)

(assert (=> b!6496803 (= e!3936968 e!3936963)))

(declare-fun b!6496804 () Bool)

(assert (=> b!6496804 (= e!3936966 e!3936968)))

(declare-fun c!1190970 () Bool)

(assert (=> b!6496804 (= c!1190970 ((_ is Star!16373) (regOne!33259 r!7292)))))

(declare-fun bm!562758 () Bool)

(assert (=> bm!562758 (= call!562762 (Exists!3443 (ite c!1190970 lambda!359931 lambda!359932)))))

(declare-fun b!6496805 () Bool)

(declare-fun c!1190969 () Bool)

(assert (=> b!6496805 (= c!1190969 ((_ is Union!16373) (regOne!33259 r!7292)))))

(assert (=> b!6496805 (= e!3936969 e!3936966)))

(assert (=> b!6496806 (= e!3936968 call!562762)))

(declare-fun b!6496807 () Bool)

(assert (=> b!6496807 (= e!3936967 (matchRSpec!3474 (regTwo!33259 (regOne!33259 r!7292)) s!2326))))

(assert (= (and d!2038682 c!1190968) b!6496801))

(assert (= (and d!2038682 (not c!1190968)) b!6496798))

(assert (= (and b!6496798 res!2668170) b!6496802))

(assert (= (and b!6496802 c!1190967) b!6496797))

(assert (= (and b!6496802 (not c!1190967)) b!6496805))

(assert (= (and b!6496805 c!1190969) b!6496799))

(assert (= (and b!6496805 (not c!1190969)) b!6496804))

(assert (= (and b!6496799 (not res!2668169)) b!6496807))

(assert (= (and b!6496804 c!1190970) b!6496803))

(assert (= (and b!6496804 (not c!1190970)) b!6496806))

(assert (= (and b!6496803 (not res!2668168)) b!6496800))

(assert (= (or b!6496800 b!6496806) bm!562758))

(assert (= (or b!6496801 b!6496803) bm!562757))

(assert (=> bm!562757 m!7284068))

(declare-fun m!7285358 () Bool)

(assert (=> b!6496799 m!7285358))

(declare-fun m!7285360 () Bool)

(assert (=> bm!562758 m!7285360))

(declare-fun m!7285362 () Bool)

(assert (=> b!6496807 m!7285362))

(assert (=> b!6495575 d!2038682))

(declare-fun d!2038684 () Bool)

(declare-fun c!1190971 () Bool)

(assert (=> d!2038684 (= c!1190971 (isEmpty!37494 (tail!12302 (t!379049 s!2326))))))

(declare-fun e!3936970 () Bool)

(assert (=> d!2038684 (= (matchZipper!2385 (derivationStepZipper!2339 lt!2390660 (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))) e!3936970)))

(declare-fun b!6496808 () Bool)

(assert (=> b!6496808 (= e!3936970 (nullableZipper!2128 (derivationStepZipper!2339 lt!2390660 (head!13217 (t!379049 s!2326)))))))

(declare-fun b!6496809 () Bool)

(assert (=> b!6496809 (= e!3936970 (matchZipper!2385 (derivationStepZipper!2339 (derivationStepZipper!2339 lt!2390660 (head!13217 (t!379049 s!2326))) (head!13217 (tail!12302 (t!379049 s!2326)))) (tail!12302 (tail!12302 (t!379049 s!2326)))))))

(assert (= (and d!2038684 c!1190971) b!6496808))

(assert (= (and d!2038684 (not c!1190971)) b!6496809))

(assert (=> d!2038684 m!7284058))

(assert (=> d!2038684 m!7284914))

(assert (=> b!6496808 m!7284158))

(declare-fun m!7285364 () Bool)

(assert (=> b!6496808 m!7285364))

(assert (=> b!6496809 m!7284058))

(assert (=> b!6496809 m!7284918))

(assert (=> b!6496809 m!7284158))

(assert (=> b!6496809 m!7284918))

(declare-fun m!7285366 () Bool)

(assert (=> b!6496809 m!7285366))

(assert (=> b!6496809 m!7284058))

(assert (=> b!6496809 m!7284922))

(assert (=> b!6496809 m!7285366))

(assert (=> b!6496809 m!7284922))

(declare-fun m!7285368 () Bool)

(assert (=> b!6496809 m!7285368))

(assert (=> b!6495440 d!2038684))

(declare-fun bs!1650188 () Bool)

(declare-fun d!2038686 () Bool)

(assert (= bs!1650188 (and d!2038686 d!2038534)))

(declare-fun lambda!359933 () Int)

(assert (=> bs!1650188 (= lambda!359933 lambda!359915)))

(declare-fun bs!1650189 () Bool)

(assert (= bs!1650189 (and d!2038686 b!6494901)))

(assert (=> bs!1650189 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359933 lambda!359804))))

(declare-fun bs!1650190 () Bool)

(assert (= bs!1650190 (and d!2038686 d!2038164)))

(assert (=> bs!1650190 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359933 lambda!359856))))

(declare-fun bs!1650191 () Bool)

(assert (= bs!1650191 (and d!2038686 d!2038498)))

(assert (=> bs!1650191 (= (= (head!13217 (t!379049 s!2326)) (head!13217 s!2326)) (= lambda!359933 lambda!359911))))

(declare-fun bs!1650192 () Bool)

(assert (= bs!1650192 (and d!2038686 d!2038516)))

(assert (=> bs!1650192 (= lambda!359933 lambda!359913)))

(assert (=> d!2038686 true))

(assert (=> d!2038686 (= (derivationStepZipper!2339 lt!2390660 (head!13217 (t!379049 s!2326))) (flatMap!1878 lt!2390660 lambda!359933))))

(declare-fun bs!1650193 () Bool)

(assert (= bs!1650193 d!2038686))

(declare-fun m!7285370 () Bool)

(assert (=> bs!1650193 m!7285370))

(assert (=> b!6495440 d!2038686))

(assert (=> b!6495440 d!2038518))

(assert (=> b!6495440 d!2038520))

(declare-fun b!6496810 () Bool)

(declare-fun e!3936973 () Bool)

(declare-fun e!3936974 () Bool)

(assert (=> b!6496810 (= e!3936973 e!3936974)))

(declare-fun c!1190973 () Bool)

(assert (=> b!6496810 (= c!1190973 ((_ is EmptyLang!16373) (regTwo!33258 r!7292)))))

(declare-fun d!2038688 () Bool)

(assert (=> d!2038688 e!3936973))

(declare-fun c!1190974 () Bool)

(assert (=> d!2038688 (= c!1190974 ((_ is EmptyExpr!16373) (regTwo!33258 r!7292)))))

(declare-fun lt!2390814 () Bool)

(declare-fun e!3936972 () Bool)

(assert (=> d!2038688 (= lt!2390814 e!3936972)))

(declare-fun c!1190972 () Bool)

(assert (=> d!2038688 (= c!1190972 (isEmpty!37494 (_2!36655 (get!22643 lt!2390719))))))

(assert (=> d!2038688 (validRegex!8109 (regTwo!33258 r!7292))))

(assert (=> d!2038688 (= (matchR!8556 (regTwo!33258 r!7292) (_2!36655 (get!22643 lt!2390719))) lt!2390814)))

(declare-fun b!6496811 () Bool)

(declare-fun res!2668173 () Bool)

(declare-fun e!3936976 () Bool)

(assert (=> b!6496811 (=> res!2668173 e!3936976)))

(assert (=> b!6496811 (= res!2668173 (not ((_ is ElementMatch!16373) (regTwo!33258 r!7292))))))

(assert (=> b!6496811 (= e!3936974 e!3936976)))

(declare-fun b!6496812 () Bool)

(declare-fun call!562764 () Bool)

(assert (=> b!6496812 (= e!3936973 (= lt!2390814 call!562764))))

(declare-fun b!6496813 () Bool)

(declare-fun res!2668178 () Bool)

(declare-fun e!3936971 () Bool)

(assert (=> b!6496813 (=> res!2668178 e!3936971)))

(assert (=> b!6496813 (= res!2668178 (not (isEmpty!37494 (tail!12302 (_2!36655 (get!22643 lt!2390719))))))))

(declare-fun b!6496814 () Bool)

(assert (=> b!6496814 (= e!3936974 (not lt!2390814))))

(declare-fun b!6496815 () Bool)

(declare-fun res!2668176 () Bool)

(declare-fun e!3936975 () Bool)

(assert (=> b!6496815 (=> (not res!2668176) (not e!3936975))))

(assert (=> b!6496815 (= res!2668176 (not call!562764))))

(declare-fun b!6496816 () Bool)

(assert (=> b!6496816 (= e!3936971 (not (= (head!13217 (_2!36655 (get!22643 lt!2390719))) (c!1190447 (regTwo!33258 r!7292)))))))

(declare-fun b!6496817 () Bool)

(assert (=> b!6496817 (= e!3936975 (= (head!13217 (_2!36655 (get!22643 lt!2390719))) (c!1190447 (regTwo!33258 r!7292))))))

(declare-fun b!6496818 () Bool)

(declare-fun res!2668172 () Bool)

(assert (=> b!6496818 (=> res!2668172 e!3936976)))

(assert (=> b!6496818 (= res!2668172 e!3936975)))

(declare-fun res!2668174 () Bool)

(assert (=> b!6496818 (=> (not res!2668174) (not e!3936975))))

(assert (=> b!6496818 (= res!2668174 lt!2390814)))

(declare-fun b!6496819 () Bool)

(declare-fun e!3936977 () Bool)

(assert (=> b!6496819 (= e!3936976 e!3936977)))

(declare-fun res!2668177 () Bool)

(assert (=> b!6496819 (=> (not res!2668177) (not e!3936977))))

(assert (=> b!6496819 (= res!2668177 (not lt!2390814))))

(declare-fun bm!562759 () Bool)

(assert (=> bm!562759 (= call!562764 (isEmpty!37494 (_2!36655 (get!22643 lt!2390719))))))

(declare-fun b!6496820 () Bool)

(declare-fun res!2668171 () Bool)

(assert (=> b!6496820 (=> (not res!2668171) (not e!3936975))))

(assert (=> b!6496820 (= res!2668171 (isEmpty!37494 (tail!12302 (_2!36655 (get!22643 lt!2390719)))))))

(declare-fun b!6496821 () Bool)

(assert (=> b!6496821 (= e!3936977 e!3936971)))

(declare-fun res!2668175 () Bool)

(assert (=> b!6496821 (=> res!2668175 e!3936971)))

(assert (=> b!6496821 (= res!2668175 call!562764)))

(declare-fun b!6496822 () Bool)

(assert (=> b!6496822 (= e!3936972 (matchR!8556 (derivativeStep!5067 (regTwo!33258 r!7292) (head!13217 (_2!36655 (get!22643 lt!2390719)))) (tail!12302 (_2!36655 (get!22643 lt!2390719)))))))

(declare-fun b!6496823 () Bool)

(assert (=> b!6496823 (= e!3936972 (nullable!6366 (regTwo!33258 r!7292)))))

(assert (= (and d!2038688 c!1190972) b!6496823))

(assert (= (and d!2038688 (not c!1190972)) b!6496822))

(assert (= (and d!2038688 c!1190974) b!6496812))

(assert (= (and d!2038688 (not c!1190974)) b!6496810))

(assert (= (and b!6496810 c!1190973) b!6496814))

(assert (= (and b!6496810 (not c!1190973)) b!6496811))

(assert (= (and b!6496811 (not res!2668173)) b!6496818))

(assert (= (and b!6496818 res!2668174) b!6496815))

(assert (= (and b!6496815 res!2668176) b!6496820))

(assert (= (and b!6496820 res!2668171) b!6496817))

(assert (= (and b!6496818 (not res!2668172)) b!6496819))

(assert (= (and b!6496819 res!2668177) b!6496821))

(assert (= (and b!6496821 (not res!2668175)) b!6496813))

(assert (= (and b!6496813 (not res!2668178)) b!6496816))

(assert (= (or b!6496812 b!6496815 b!6496821) bm!562759))

(declare-fun m!7285372 () Bool)

(assert (=> b!6496822 m!7285372))

(assert (=> b!6496822 m!7285372))

(declare-fun m!7285374 () Bool)

(assert (=> b!6496822 m!7285374))

(declare-fun m!7285376 () Bool)

(assert (=> b!6496822 m!7285376))

(assert (=> b!6496822 m!7285374))

(assert (=> b!6496822 m!7285376))

(declare-fun m!7285378 () Bool)

(assert (=> b!6496822 m!7285378))

(assert (=> b!6496816 m!7285372))

(declare-fun m!7285380 () Bool)

(assert (=> d!2038688 m!7285380))

(assert (=> d!2038688 m!7285344))

(assert (=> b!6496823 m!7285346))

(assert (=> bm!562759 m!7285380))

(assert (=> b!6496820 m!7285376))

(assert (=> b!6496820 m!7285376))

(declare-fun m!7285382 () Bool)

(assert (=> b!6496820 m!7285382))

(assert (=> b!6496813 m!7285376))

(assert (=> b!6496813 m!7285376))

(assert (=> b!6496813 m!7285382))

(assert (=> b!6496817 m!7285372))

(assert (=> b!6495348 d!2038688))

(assert (=> b!6495348 d!2038368))

(declare-fun d!2038690 () Bool)

(assert (=> d!2038690 (= (isEmptyExpr!1763 lt!2390741) ((_ is EmptyExpr!16373) lt!2390741))))

(assert (=> b!6495431 d!2038690))

(declare-fun d!2038692 () Bool)

(assert (=> d!2038692 (= (isEmpty!37489 (tail!12303 (exprs!6257 (h!71744 zl!343)))) ((_ is Nil!65294) (tail!12303 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6495423 d!2038692))

(declare-fun d!2038694 () Bool)

(assert (=> d!2038694 (= (tail!12303 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))

(assert (=> b!6495423 d!2038694))

(declare-fun bs!1650194 () Bool)

(declare-fun b!6496827 () Bool)

(assert (= bs!1650194 (and b!6496827 b!6496616)))

(declare-fun lambda!359934 () Int)

(assert (=> bs!1650194 (not (= lambda!359934 lambda!359928))))

(declare-fun bs!1650195 () Bool)

(assert (= bs!1650195 (and b!6496827 b!6495576)))

(assert (=> bs!1650195 (= (and (= (reg!16702 (regOne!33259 lt!2390659)) (reg!16702 r!7292)) (= (regOne!33259 lt!2390659) r!7292)) (= lambda!359934 lambda!359868))))

(declare-fun bs!1650196 () Bool)

(assert (= bs!1650196 (and b!6496827 b!6495582)))

(assert (=> bs!1650196 (not (= lambda!359934 lambda!359869))))

(declare-fun bs!1650197 () Bool)

(assert (= bs!1650197 (and b!6496827 b!6496610)))

(assert (=> bs!1650197 (= (and (= (reg!16702 (regOne!33259 lt!2390659)) (reg!16702 (regTwo!33259 lt!2390659))) (= (regOne!33259 lt!2390659) (regTwo!33259 lt!2390659))) (= lambda!359934 lambda!359927))))

(declare-fun bs!1650198 () Bool)

(assert (= bs!1650198 (and b!6496827 b!6496806)))

(assert (=> bs!1650198 (not (= lambda!359934 lambda!359932))))

(declare-fun bs!1650199 () Bool)

(assert (= bs!1650199 (and b!6496827 b!6495643)))

(assert (=> bs!1650199 (= (and (= (reg!16702 (regOne!33259 lt!2390659)) (reg!16702 lt!2390659)) (= (regOne!33259 lt!2390659) lt!2390659)) (= lambda!359934 lambda!359870))))

(declare-fun bs!1650200 () Bool)

(assert (= bs!1650200 (and b!6496827 b!6494886)))

(assert (=> bs!1650200 (not (= lambda!359934 lambda!359802))))

(assert (=> bs!1650200 (not (= lambda!359934 lambda!359803))))

(declare-fun bs!1650201 () Bool)

(assert (= bs!1650201 (and b!6496827 d!2038120)))

(assert (=> bs!1650201 (not (= lambda!359934 lambda!359844))))

(declare-fun bs!1650202 () Bool)

(assert (= bs!1650202 (and b!6496827 b!6495649)))

(assert (=> bs!1650202 (not (= lambda!359934 lambda!359871))))

(declare-fun bs!1650203 () Bool)

(assert (= bs!1650203 (and b!6496827 d!2038122)))

(assert (=> bs!1650203 (not (= lambda!359934 lambda!359850))))

(assert (=> bs!1650203 (not (= lambda!359934 lambda!359849))))

(declare-fun bs!1650204 () Bool)

(assert (= bs!1650204 (and b!6496827 b!6496800)))

(assert (=> bs!1650204 (= (and (= (reg!16702 (regOne!33259 lt!2390659)) (reg!16702 (regOne!33259 r!7292))) (= (regOne!33259 lt!2390659) (regOne!33259 r!7292))) (= lambda!359934 lambda!359931))))

(assert (=> b!6496827 true))

(assert (=> b!6496827 true))

(declare-fun bs!1650205 () Bool)

(declare-fun b!6496833 () Bool)

(assert (= bs!1650205 (and b!6496833 b!6496616)))

(declare-fun lambda!359935 () Int)

(assert (=> bs!1650205 (= (and (= (regOne!33258 (regOne!33259 lt!2390659)) (regOne!33258 (regTwo!33259 lt!2390659))) (= (regTwo!33258 (regOne!33259 lt!2390659)) (regTwo!33258 (regTwo!33259 lt!2390659)))) (= lambda!359935 lambda!359928))))

(declare-fun bs!1650206 () Bool)

(assert (= bs!1650206 (and b!6496833 b!6495576)))

(assert (=> bs!1650206 (not (= lambda!359935 lambda!359868))))

(declare-fun bs!1650207 () Bool)

(assert (= bs!1650207 (and b!6496833 b!6495582)))

(assert (=> bs!1650207 (= (and (= (regOne!33258 (regOne!33259 lt!2390659)) (regOne!33258 r!7292)) (= (regTwo!33258 (regOne!33259 lt!2390659)) (regTwo!33258 r!7292))) (= lambda!359935 lambda!359869))))

(declare-fun bs!1650208 () Bool)

(assert (= bs!1650208 (and b!6496833 b!6496806)))

(assert (=> bs!1650208 (= (and (= (regOne!33258 (regOne!33259 lt!2390659)) (regOne!33258 (regOne!33259 r!7292))) (= (regTwo!33258 (regOne!33259 lt!2390659)) (regTwo!33258 (regOne!33259 r!7292)))) (= lambda!359935 lambda!359932))))

(declare-fun bs!1650209 () Bool)

(assert (= bs!1650209 (and b!6496833 b!6495643)))

(assert (=> bs!1650209 (not (= lambda!359935 lambda!359870))))

(declare-fun bs!1650210 () Bool)

(assert (= bs!1650210 (and b!6496833 b!6494886)))

(assert (=> bs!1650210 (not (= lambda!359935 lambda!359802))))

(assert (=> bs!1650210 (= (and (= (regOne!33258 (regOne!33259 lt!2390659)) (regOne!33258 r!7292)) (= (regTwo!33258 (regOne!33259 lt!2390659)) (regTwo!33258 r!7292))) (= lambda!359935 lambda!359803))))

(declare-fun bs!1650211 () Bool)

(assert (= bs!1650211 (and b!6496833 d!2038120)))

(assert (=> bs!1650211 (not (= lambda!359935 lambda!359844))))

(declare-fun bs!1650212 () Bool)

(assert (= bs!1650212 (and b!6496833 b!6495649)))

(assert (=> bs!1650212 (= (and (= (regOne!33258 (regOne!33259 lt!2390659)) (regOne!33258 lt!2390659)) (= (regTwo!33258 (regOne!33259 lt!2390659)) (regTwo!33258 lt!2390659))) (= lambda!359935 lambda!359871))))

(declare-fun bs!1650213 () Bool)

(assert (= bs!1650213 (and b!6496833 b!6496610)))

(assert (=> bs!1650213 (not (= lambda!359935 lambda!359927))))

(declare-fun bs!1650214 () Bool)

(assert (= bs!1650214 (and b!6496833 b!6496827)))

(assert (=> bs!1650214 (not (= lambda!359935 lambda!359934))))

(declare-fun bs!1650215 () Bool)

(assert (= bs!1650215 (and b!6496833 d!2038122)))

(assert (=> bs!1650215 (= (and (= (regOne!33258 (regOne!33259 lt!2390659)) (regOne!33258 r!7292)) (= (regTwo!33258 (regOne!33259 lt!2390659)) (regTwo!33258 r!7292))) (= lambda!359935 lambda!359850))))

(assert (=> bs!1650215 (not (= lambda!359935 lambda!359849))))

(declare-fun bs!1650216 () Bool)

(assert (= bs!1650216 (and b!6496833 b!6496800)))

(assert (=> bs!1650216 (not (= lambda!359935 lambda!359931))))

(assert (=> b!6496833 true))

(assert (=> b!6496833 true))

(declare-fun bm!562760 () Bool)

(declare-fun call!562766 () Bool)

(assert (=> bm!562760 (= call!562766 (isEmpty!37494 s!2326))))

(declare-fun b!6496824 () Bool)

(declare-fun e!3936984 () Bool)

(assert (=> b!6496824 (= e!3936984 (= s!2326 (Cons!65295 (c!1190447 (regOne!33259 lt!2390659)) Nil!65295)))))

(declare-fun d!2038696 () Bool)

(declare-fun c!1190976 () Bool)

(assert (=> d!2038696 (= c!1190976 ((_ is EmptyExpr!16373) (regOne!33259 lt!2390659)))))

(declare-fun e!3936980 () Bool)

(assert (=> d!2038696 (= (matchRSpec!3474 (regOne!33259 lt!2390659) s!2326) e!3936980)))

(declare-fun b!6496825 () Bool)

(declare-fun e!3936979 () Bool)

(assert (=> b!6496825 (= e!3936980 e!3936979)))

(declare-fun res!2668181 () Bool)

(assert (=> b!6496825 (= res!2668181 (not ((_ is EmptyLang!16373) (regOne!33259 lt!2390659))))))

(assert (=> b!6496825 (=> (not res!2668181) (not e!3936979))))

(declare-fun b!6496826 () Bool)

(declare-fun e!3936981 () Bool)

(declare-fun e!3936982 () Bool)

(assert (=> b!6496826 (= e!3936981 e!3936982)))

(declare-fun res!2668180 () Bool)

(assert (=> b!6496826 (= res!2668180 (matchRSpec!3474 (regOne!33259 (regOne!33259 lt!2390659)) s!2326))))

(assert (=> b!6496826 (=> res!2668180 e!3936982)))

(declare-fun e!3936978 () Bool)

(declare-fun call!562765 () Bool)

(assert (=> b!6496827 (= e!3936978 call!562765)))

(declare-fun b!6496828 () Bool)

(assert (=> b!6496828 (= e!3936980 call!562766)))

(declare-fun b!6496829 () Bool)

(declare-fun c!1190975 () Bool)

(assert (=> b!6496829 (= c!1190975 ((_ is ElementMatch!16373) (regOne!33259 lt!2390659)))))

(assert (=> b!6496829 (= e!3936979 e!3936984)))

(declare-fun b!6496830 () Bool)

(declare-fun res!2668179 () Bool)

(assert (=> b!6496830 (=> res!2668179 e!3936978)))

(assert (=> b!6496830 (= res!2668179 call!562766)))

(declare-fun e!3936983 () Bool)

(assert (=> b!6496830 (= e!3936983 e!3936978)))

(declare-fun b!6496831 () Bool)

(assert (=> b!6496831 (= e!3936981 e!3936983)))

(declare-fun c!1190978 () Bool)

(assert (=> b!6496831 (= c!1190978 ((_ is Star!16373) (regOne!33259 lt!2390659)))))

(declare-fun bm!562761 () Bool)

(assert (=> bm!562761 (= call!562765 (Exists!3443 (ite c!1190978 lambda!359934 lambda!359935)))))

(declare-fun b!6496832 () Bool)

(declare-fun c!1190977 () Bool)

(assert (=> b!6496832 (= c!1190977 ((_ is Union!16373) (regOne!33259 lt!2390659)))))

(assert (=> b!6496832 (= e!3936984 e!3936981)))

(assert (=> b!6496833 (= e!3936983 call!562765)))

(declare-fun b!6496834 () Bool)

(assert (=> b!6496834 (= e!3936982 (matchRSpec!3474 (regTwo!33259 (regOne!33259 lt!2390659)) s!2326))))

(assert (= (and d!2038696 c!1190976) b!6496828))

(assert (= (and d!2038696 (not c!1190976)) b!6496825))

(assert (= (and b!6496825 res!2668181) b!6496829))

(assert (= (and b!6496829 c!1190975) b!6496824))

(assert (= (and b!6496829 (not c!1190975)) b!6496832))

(assert (= (and b!6496832 c!1190977) b!6496826))

(assert (= (and b!6496832 (not c!1190977)) b!6496831))

(assert (= (and b!6496826 (not res!2668180)) b!6496834))

(assert (= (and b!6496831 c!1190978) b!6496830))

(assert (= (and b!6496831 (not c!1190978)) b!6496833))

(assert (= (and b!6496830 (not res!2668179)) b!6496827))

(assert (= (or b!6496827 b!6496833) bm!562761))

(assert (= (or b!6496828 b!6496830) bm!562760))

(assert (=> bm!562760 m!7284068))

(declare-fun m!7285384 () Bool)

(assert (=> b!6496826 m!7285384))

(declare-fun m!7285386 () Bool)

(assert (=> bm!562761 m!7285386))

(declare-fun m!7285388 () Bool)

(assert (=> b!6496834 m!7285388))

(assert (=> b!6495642 d!2038696))

(declare-fun d!2038698 () Bool)

(assert (=> d!2038698 (= (Exists!3443 lambda!359849) (choose!48211 lambda!359849))))

(declare-fun bs!1650217 () Bool)

(assert (= bs!1650217 d!2038698))

(declare-fun m!7285390 () Bool)

(assert (=> bs!1650217 m!7285390))

(assert (=> d!2038122 d!2038698))

(declare-fun d!2038700 () Bool)

(assert (=> d!2038700 (= (Exists!3443 lambda!359850) (choose!48211 lambda!359850))))

(declare-fun bs!1650218 () Bool)

(assert (= bs!1650218 d!2038700))

(declare-fun m!7285392 () Bool)

(assert (=> bs!1650218 m!7285392))

(assert (=> d!2038122 d!2038700))

(declare-fun bs!1650219 () Bool)

(declare-fun d!2038702 () Bool)

(assert (= bs!1650219 (and d!2038702 b!6496616)))

(declare-fun lambda!359940 () Int)

(assert (=> bs!1650219 (not (= lambda!359940 lambda!359928))))

(declare-fun bs!1650220 () Bool)

(assert (= bs!1650220 (and d!2038702 b!6495576)))

(assert (=> bs!1650220 (not (= lambda!359940 lambda!359868))))

(declare-fun bs!1650221 () Bool)

(assert (= bs!1650221 (and d!2038702 b!6495582)))

(assert (=> bs!1650221 (not (= lambda!359940 lambda!359869))))

(declare-fun bs!1650222 () Bool)

(assert (= bs!1650222 (and d!2038702 b!6496806)))

(assert (=> bs!1650222 (not (= lambda!359940 lambda!359932))))

(declare-fun bs!1650223 () Bool)

(assert (= bs!1650223 (and d!2038702 b!6495643)))

(assert (=> bs!1650223 (not (= lambda!359940 lambda!359870))))

(declare-fun bs!1650224 () Bool)

(assert (= bs!1650224 (and d!2038702 b!6494886)))

(assert (=> bs!1650224 (= lambda!359940 lambda!359802)))

(assert (=> bs!1650224 (not (= lambda!359940 lambda!359803))))

(declare-fun bs!1650225 () Bool)

(assert (= bs!1650225 (and d!2038702 b!6496833)))

(assert (=> bs!1650225 (not (= lambda!359940 lambda!359935))))

(declare-fun bs!1650226 () Bool)

(assert (= bs!1650226 (and d!2038702 d!2038120)))

(assert (=> bs!1650226 (= lambda!359940 lambda!359844)))

(declare-fun bs!1650227 () Bool)

(assert (= bs!1650227 (and d!2038702 b!6495649)))

(assert (=> bs!1650227 (not (= lambda!359940 lambda!359871))))

(declare-fun bs!1650228 () Bool)

(assert (= bs!1650228 (and d!2038702 b!6496610)))

(assert (=> bs!1650228 (not (= lambda!359940 lambda!359927))))

(declare-fun bs!1650229 () Bool)

(assert (= bs!1650229 (and d!2038702 b!6496827)))

(assert (=> bs!1650229 (not (= lambda!359940 lambda!359934))))

(declare-fun bs!1650230 () Bool)

(assert (= bs!1650230 (and d!2038702 d!2038122)))

(assert (=> bs!1650230 (not (= lambda!359940 lambda!359850))))

(assert (=> bs!1650230 (= lambda!359940 lambda!359849)))

(declare-fun bs!1650231 () Bool)

(assert (= bs!1650231 (and d!2038702 b!6496800)))

(assert (=> bs!1650231 (not (= lambda!359940 lambda!359931))))

(assert (=> d!2038702 true))

(assert (=> d!2038702 true))

(assert (=> d!2038702 true))

(declare-fun lambda!359941 () Int)

(assert (=> bs!1650220 (not (= lambda!359941 lambda!359868))))

(assert (=> bs!1650221 (= lambda!359941 lambda!359869)))

(assert (=> bs!1650222 (= (and (= (regOne!33258 r!7292) (regOne!33258 (regOne!33259 r!7292))) (= (regTwo!33258 r!7292) (regTwo!33258 (regOne!33259 r!7292)))) (= lambda!359941 lambda!359932))))

(assert (=> bs!1650223 (not (= lambda!359941 lambda!359870))))

(assert (=> bs!1650224 (not (= lambda!359941 lambda!359802))))

(assert (=> bs!1650224 (= lambda!359941 lambda!359803)))

(assert (=> bs!1650225 (= (and (= (regOne!33258 r!7292) (regOne!33258 (regOne!33259 lt!2390659))) (= (regTwo!33258 r!7292) (regTwo!33258 (regOne!33259 lt!2390659)))) (= lambda!359941 lambda!359935))))

(assert (=> bs!1650226 (not (= lambda!359941 lambda!359844))))

(assert (=> bs!1650227 (= (and (= (regOne!33258 r!7292) (regOne!33258 lt!2390659)) (= (regTwo!33258 r!7292) (regTwo!33258 lt!2390659))) (= lambda!359941 lambda!359871))))

(declare-fun bs!1650232 () Bool)

(assert (= bs!1650232 d!2038702))

(assert (=> bs!1650232 (not (= lambda!359941 lambda!359940))))

(assert (=> bs!1650219 (= (and (= (regOne!33258 r!7292) (regOne!33258 (regTwo!33259 lt!2390659))) (= (regTwo!33258 r!7292) (regTwo!33258 (regTwo!33259 lt!2390659)))) (= lambda!359941 lambda!359928))))

(assert (=> bs!1650228 (not (= lambda!359941 lambda!359927))))

(assert (=> bs!1650229 (not (= lambda!359941 lambda!359934))))

(assert (=> bs!1650230 (= lambda!359941 lambda!359850)))

(assert (=> bs!1650230 (not (= lambda!359941 lambda!359849))))

(assert (=> bs!1650231 (not (= lambda!359941 lambda!359931))))

(assert (=> d!2038702 true))

(assert (=> d!2038702 true))

(assert (=> d!2038702 true))

(assert (=> d!2038702 (= (Exists!3443 lambda!359940) (Exists!3443 lambda!359941))))

(assert (=> d!2038702 true))

(declare-fun _$90!2365 () Unit!158827)

(assert (=> d!2038702 (= (choose!48213 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326) _$90!2365)))

(declare-fun m!7285394 () Bool)

(assert (=> bs!1650232 m!7285394))

(declare-fun m!7285396 () Bool)

(assert (=> bs!1650232 m!7285396))

(assert (=> d!2038122 d!2038702))

(assert (=> d!2038122 d!2038588))

(assert (=> d!2038166 d!2038638))

(assert (=> b!6495484 d!2038178))

(assert (=> bs!1649756 d!2038186))

(declare-fun d!2038704 () Bool)

(assert (=> d!2038704 (= (head!13218 (unfocusZipperList!1794 zl!343)) (h!71742 (unfocusZipperList!1794 zl!343)))))

(assert (=> b!6495521 d!2038704))

(assert (=> bm!562531 d!2038370))

(declare-fun bs!1650233 () Bool)

(declare-fun b!6496846 () Bool)

(assert (= bs!1650233 (and b!6496846 b!6495576)))

(declare-fun lambda!359942 () Int)

(assert (=> bs!1650233 (= (and (= (reg!16702 (regTwo!33259 r!7292)) (reg!16702 r!7292)) (= (regTwo!33259 r!7292) r!7292)) (= lambda!359942 lambda!359868))))

(declare-fun bs!1650234 () Bool)

(assert (= bs!1650234 (and b!6496846 b!6495582)))

(assert (=> bs!1650234 (not (= lambda!359942 lambda!359869))))

(declare-fun bs!1650235 () Bool)

(assert (= bs!1650235 (and b!6496846 d!2038702)))

(assert (=> bs!1650235 (not (= lambda!359942 lambda!359941))))

(declare-fun bs!1650236 () Bool)

(assert (= bs!1650236 (and b!6496846 b!6496806)))

(assert (=> bs!1650236 (not (= lambda!359942 lambda!359932))))

(declare-fun bs!1650237 () Bool)

(assert (= bs!1650237 (and b!6496846 b!6495643)))

(assert (=> bs!1650237 (= (and (= (reg!16702 (regTwo!33259 r!7292)) (reg!16702 lt!2390659)) (= (regTwo!33259 r!7292) lt!2390659)) (= lambda!359942 lambda!359870))))

(declare-fun bs!1650238 () Bool)

(assert (= bs!1650238 (and b!6496846 b!6494886)))

(assert (=> bs!1650238 (not (= lambda!359942 lambda!359802))))

(assert (=> bs!1650238 (not (= lambda!359942 lambda!359803))))

(declare-fun bs!1650239 () Bool)

(assert (= bs!1650239 (and b!6496846 b!6496833)))

(assert (=> bs!1650239 (not (= lambda!359942 lambda!359935))))

(declare-fun bs!1650240 () Bool)

(assert (= bs!1650240 (and b!6496846 d!2038120)))

(assert (=> bs!1650240 (not (= lambda!359942 lambda!359844))))

(declare-fun bs!1650241 () Bool)

(assert (= bs!1650241 (and b!6496846 b!6495649)))

(assert (=> bs!1650241 (not (= lambda!359942 lambda!359871))))

(assert (=> bs!1650235 (not (= lambda!359942 lambda!359940))))

(declare-fun bs!1650242 () Bool)

(assert (= bs!1650242 (and b!6496846 b!6496616)))

(assert (=> bs!1650242 (not (= lambda!359942 lambda!359928))))

(declare-fun bs!1650243 () Bool)

(assert (= bs!1650243 (and b!6496846 b!6496610)))

(assert (=> bs!1650243 (= (and (= (reg!16702 (regTwo!33259 r!7292)) (reg!16702 (regTwo!33259 lt!2390659))) (= (regTwo!33259 r!7292) (regTwo!33259 lt!2390659))) (= lambda!359942 lambda!359927))))

(declare-fun bs!1650244 () Bool)

(assert (= bs!1650244 (and b!6496846 b!6496827)))

(assert (=> bs!1650244 (= (and (= (reg!16702 (regTwo!33259 r!7292)) (reg!16702 (regOne!33259 lt!2390659))) (= (regTwo!33259 r!7292) (regOne!33259 lt!2390659))) (= lambda!359942 lambda!359934))))

(declare-fun bs!1650245 () Bool)

(assert (= bs!1650245 (and b!6496846 d!2038122)))

(assert (=> bs!1650245 (not (= lambda!359942 lambda!359850))))

(assert (=> bs!1650245 (not (= lambda!359942 lambda!359849))))

(declare-fun bs!1650246 () Bool)

(assert (= bs!1650246 (and b!6496846 b!6496800)))

(assert (=> bs!1650246 (= (and (= (reg!16702 (regTwo!33259 r!7292)) (reg!16702 (regOne!33259 r!7292))) (= (regTwo!33259 r!7292) (regOne!33259 r!7292))) (= lambda!359942 lambda!359931))))

(assert (=> b!6496846 true))

(assert (=> b!6496846 true))

(declare-fun bs!1650247 () Bool)

(declare-fun b!6496852 () Bool)

(assert (= bs!1650247 (and b!6496852 b!6495576)))

(declare-fun lambda!359943 () Int)

(assert (=> bs!1650247 (not (= lambda!359943 lambda!359868))))

(declare-fun bs!1650248 () Bool)

(assert (= bs!1650248 (and b!6496852 b!6495582)))

(assert (=> bs!1650248 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359943 lambda!359869))))

(declare-fun bs!1650249 () Bool)

(assert (= bs!1650249 (and b!6496852 d!2038702)))

(assert (=> bs!1650249 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359943 lambda!359941))))

(declare-fun bs!1650250 () Bool)

(assert (= bs!1650250 (and b!6496852 b!6496806)))

(assert (=> bs!1650250 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 (regOne!33259 r!7292))) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 (regOne!33259 r!7292)))) (= lambda!359943 lambda!359932))))

(declare-fun bs!1650251 () Bool)

(assert (= bs!1650251 (and b!6496852 b!6495643)))

(assert (=> bs!1650251 (not (= lambda!359943 lambda!359870))))

(declare-fun bs!1650252 () Bool)

(assert (= bs!1650252 (and b!6496852 b!6494886)))

(assert (=> bs!1650252 (not (= lambda!359943 lambda!359802))))

(assert (=> bs!1650252 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359943 lambda!359803))))

(declare-fun bs!1650253 () Bool)

(assert (= bs!1650253 (and b!6496852 b!6496833)))

(assert (=> bs!1650253 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 (regOne!33259 lt!2390659))) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 (regOne!33259 lt!2390659)))) (= lambda!359943 lambda!359935))))

(declare-fun bs!1650254 () Bool)

(assert (= bs!1650254 (and b!6496852 b!6495649)))

(assert (=> bs!1650254 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 lt!2390659)) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 lt!2390659))) (= lambda!359943 lambda!359871))))

(assert (=> bs!1650249 (not (= lambda!359943 lambda!359940))))

(declare-fun bs!1650255 () Bool)

(assert (= bs!1650255 (and b!6496852 b!6496616)))

(assert (=> bs!1650255 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 (regTwo!33259 lt!2390659))) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 (regTwo!33259 lt!2390659)))) (= lambda!359943 lambda!359928))))

(declare-fun bs!1650256 () Bool)

(assert (= bs!1650256 (and b!6496852 b!6496610)))

(assert (=> bs!1650256 (not (= lambda!359943 lambda!359927))))

(declare-fun bs!1650257 () Bool)

(assert (= bs!1650257 (and b!6496852 b!6496827)))

(assert (=> bs!1650257 (not (= lambda!359943 lambda!359934))))

(declare-fun bs!1650258 () Bool)

(assert (= bs!1650258 (and b!6496852 d!2038122)))

(assert (=> bs!1650258 (= (and (= (regOne!33258 (regTwo!33259 r!7292)) (regOne!33258 r!7292)) (= (regTwo!33258 (regTwo!33259 r!7292)) (regTwo!33258 r!7292))) (= lambda!359943 lambda!359850))))

(assert (=> bs!1650258 (not (= lambda!359943 lambda!359849))))

(declare-fun bs!1650259 () Bool)

(assert (= bs!1650259 (and b!6496852 b!6496800)))

(assert (=> bs!1650259 (not (= lambda!359943 lambda!359931))))

(declare-fun bs!1650260 () Bool)

(assert (= bs!1650260 (and b!6496852 b!6496846)))

(assert (=> bs!1650260 (not (= lambda!359943 lambda!359942))))

(declare-fun bs!1650261 () Bool)

(assert (= bs!1650261 (and b!6496852 d!2038120)))

(assert (=> bs!1650261 (not (= lambda!359943 lambda!359844))))

(assert (=> b!6496852 true))

(assert (=> b!6496852 true))

(declare-fun bm!562762 () Bool)

(declare-fun call!562768 () Bool)

(assert (=> bm!562762 (= call!562768 (isEmpty!37494 s!2326))))

(declare-fun b!6496843 () Bool)

(declare-fun e!3936995 () Bool)

(assert (=> b!6496843 (= e!3936995 (= s!2326 (Cons!65295 (c!1190447 (regTwo!33259 r!7292)) Nil!65295)))))

(declare-fun d!2038706 () Bool)

(declare-fun c!1190980 () Bool)

(assert (=> d!2038706 (= c!1190980 ((_ is EmptyExpr!16373) (regTwo!33259 r!7292)))))

(declare-fun e!3936991 () Bool)

(assert (=> d!2038706 (= (matchRSpec!3474 (regTwo!33259 r!7292) s!2326) e!3936991)))

(declare-fun b!6496844 () Bool)

(declare-fun e!3936990 () Bool)

(assert (=> b!6496844 (= e!3936991 e!3936990)))

(declare-fun res!2668192 () Bool)

(assert (=> b!6496844 (= res!2668192 (not ((_ is EmptyLang!16373) (regTwo!33259 r!7292))))))

(assert (=> b!6496844 (=> (not res!2668192) (not e!3936990))))

(declare-fun b!6496845 () Bool)

(declare-fun e!3936992 () Bool)

(declare-fun e!3936993 () Bool)

(assert (=> b!6496845 (= e!3936992 e!3936993)))

(declare-fun res!2668191 () Bool)

(assert (=> b!6496845 (= res!2668191 (matchRSpec!3474 (regOne!33259 (regTwo!33259 r!7292)) s!2326))))

(assert (=> b!6496845 (=> res!2668191 e!3936993)))

(declare-fun e!3936989 () Bool)

(declare-fun call!562767 () Bool)

(assert (=> b!6496846 (= e!3936989 call!562767)))

(declare-fun b!6496847 () Bool)

(assert (=> b!6496847 (= e!3936991 call!562768)))

(declare-fun b!6496848 () Bool)

(declare-fun c!1190979 () Bool)

(assert (=> b!6496848 (= c!1190979 ((_ is ElementMatch!16373) (regTwo!33259 r!7292)))))

(assert (=> b!6496848 (= e!3936990 e!3936995)))

(declare-fun b!6496849 () Bool)

(declare-fun res!2668190 () Bool)

(assert (=> b!6496849 (=> res!2668190 e!3936989)))

(assert (=> b!6496849 (= res!2668190 call!562768)))

(declare-fun e!3936994 () Bool)

(assert (=> b!6496849 (= e!3936994 e!3936989)))

(declare-fun b!6496850 () Bool)

(assert (=> b!6496850 (= e!3936992 e!3936994)))

(declare-fun c!1190982 () Bool)

(assert (=> b!6496850 (= c!1190982 ((_ is Star!16373) (regTwo!33259 r!7292)))))

(declare-fun bm!562763 () Bool)

(assert (=> bm!562763 (= call!562767 (Exists!3443 (ite c!1190982 lambda!359942 lambda!359943)))))

(declare-fun b!6496851 () Bool)

(declare-fun c!1190981 () Bool)

(assert (=> b!6496851 (= c!1190981 ((_ is Union!16373) (regTwo!33259 r!7292)))))

(assert (=> b!6496851 (= e!3936995 e!3936992)))

(assert (=> b!6496852 (= e!3936994 call!562767)))

(declare-fun b!6496853 () Bool)

(assert (=> b!6496853 (= e!3936993 (matchRSpec!3474 (regTwo!33259 (regTwo!33259 r!7292)) s!2326))))

(assert (= (and d!2038706 c!1190980) b!6496847))

(assert (= (and d!2038706 (not c!1190980)) b!6496844))

(assert (= (and b!6496844 res!2668192) b!6496848))

(assert (= (and b!6496848 c!1190979) b!6496843))

(assert (= (and b!6496848 (not c!1190979)) b!6496851))

(assert (= (and b!6496851 c!1190981) b!6496845))

(assert (= (and b!6496851 (not c!1190981)) b!6496850))

(assert (= (and b!6496845 (not res!2668191)) b!6496853))

(assert (= (and b!6496850 c!1190982) b!6496849))

(assert (= (and b!6496850 (not c!1190982)) b!6496852))

(assert (= (and b!6496849 (not res!2668190)) b!6496846))

(assert (= (or b!6496846 b!6496852) bm!562763))

(assert (= (or b!6496847 b!6496849) bm!562762))

(assert (=> bm!562762 m!7284068))

(declare-fun m!7285398 () Bool)

(assert (=> b!6496845 m!7285398))

(declare-fun m!7285400 () Bool)

(assert (=> bm!562763 m!7285400))

(declare-fun m!7285402 () Bool)

(assert (=> b!6496853 m!7285402))

(assert (=> b!6495583 d!2038706))

(declare-fun c!1190984 () Bool)

(declare-fun c!1190983 () Bool)

(declare-fun call!562769 () Bool)

(declare-fun bm!562764 () Bool)

(assert (=> bm!562764 (= call!562769 (validRegex!8109 (ite c!1190983 (reg!16702 lt!2390738) (ite c!1190984 (regTwo!33259 lt!2390738) (regTwo!33258 lt!2390738)))))))

(declare-fun b!6496854 () Bool)

(declare-fun e!3937000 () Bool)

(declare-fun e!3936997 () Bool)

(assert (=> b!6496854 (= e!3937000 e!3936997)))

(declare-fun res!2668194 () Bool)

(assert (=> b!6496854 (= res!2668194 (not (nullable!6366 (reg!16702 lt!2390738))))))

(assert (=> b!6496854 (=> (not res!2668194) (not e!3936997))))

(declare-fun b!6496855 () Bool)

(declare-fun e!3936999 () Bool)

(declare-fun call!562771 () Bool)

(assert (=> b!6496855 (= e!3936999 call!562771)))

(declare-fun bm!562765 () Bool)

(declare-fun call!562770 () Bool)

(assert (=> bm!562765 (= call!562770 (validRegex!8109 (ite c!1190984 (regOne!33259 lt!2390738) (regOne!33258 lt!2390738))))))

(declare-fun b!6496856 () Bool)

(declare-fun e!3936998 () Bool)

(assert (=> b!6496856 (= e!3936998 e!3937000)))

(assert (=> b!6496856 (= c!1190983 ((_ is Star!16373) lt!2390738))))

(declare-fun b!6496857 () Bool)

(declare-fun res!2668196 () Bool)

(declare-fun e!3937001 () Bool)

(assert (=> b!6496857 (=> res!2668196 e!3937001)))

(assert (=> b!6496857 (= res!2668196 (not ((_ is Concat!25218) lt!2390738)))))

(declare-fun e!3936996 () Bool)

(assert (=> b!6496857 (= e!3936996 e!3937001)))

(declare-fun b!6496858 () Bool)

(declare-fun e!3937002 () Bool)

(assert (=> b!6496858 (= e!3937002 call!562771)))

(declare-fun b!6496859 () Bool)

(assert (=> b!6496859 (= e!3937000 e!3936996)))

(assert (=> b!6496859 (= c!1190984 ((_ is Union!16373) lt!2390738))))

(declare-fun b!6496860 () Bool)

(assert (=> b!6496860 (= e!3937001 e!3937002)))

(declare-fun res!2668197 () Bool)

(assert (=> b!6496860 (=> (not res!2668197) (not e!3937002))))

(assert (=> b!6496860 (= res!2668197 call!562770)))

(declare-fun bm!562766 () Bool)

(assert (=> bm!562766 (= call!562771 call!562769)))

(declare-fun d!2038708 () Bool)

(declare-fun res!2668193 () Bool)

(assert (=> d!2038708 (=> res!2668193 e!3936998)))

(assert (=> d!2038708 (= res!2668193 ((_ is ElementMatch!16373) lt!2390738))))

(assert (=> d!2038708 (= (validRegex!8109 lt!2390738) e!3936998)))

(declare-fun b!6496861 () Bool)

(assert (=> b!6496861 (= e!3936997 call!562769)))

(declare-fun b!6496862 () Bool)

(declare-fun res!2668195 () Bool)

(assert (=> b!6496862 (=> (not res!2668195) (not e!3936999))))

(assert (=> b!6496862 (= res!2668195 call!562770)))

(assert (=> b!6496862 (= e!3936996 e!3936999)))

(assert (= (and d!2038708 (not res!2668193)) b!6496856))

(assert (= (and b!6496856 c!1190983) b!6496854))

(assert (= (and b!6496856 (not c!1190983)) b!6496859))

(assert (= (and b!6496854 res!2668194) b!6496861))

(assert (= (and b!6496859 c!1190984) b!6496862))

(assert (= (and b!6496859 (not c!1190984)) b!6496857))

(assert (= (and b!6496862 res!2668195) b!6496855))

(assert (= (and b!6496857 (not res!2668196)) b!6496860))

(assert (= (and b!6496860 res!2668197) b!6496858))

(assert (= (or b!6496855 b!6496858) bm!562766))

(assert (= (or b!6496862 b!6496860) bm!562765))

(assert (= (or b!6496861 bm!562766) bm!562764))

(declare-fun m!7285404 () Bool)

(assert (=> bm!562764 m!7285404))

(declare-fun m!7285406 () Bool)

(assert (=> b!6496854 m!7285406))

(declare-fun m!7285408 () Bool)

(assert (=> bm!562765 m!7285408))

(assert (=> d!2038148 d!2038708))

(declare-fun bs!1650262 () Bool)

(declare-fun d!2038710 () Bool)

(assert (= bs!1650262 (and d!2038710 d!2038596)))

(declare-fun lambda!359944 () Int)

(assert (=> bs!1650262 (= lambda!359944 lambda!359921)))

(declare-fun bs!1650263 () Bool)

(assert (= bs!1650263 (and d!2038710 d!2038172)))

(assert (=> bs!1650263 (= lambda!359944 lambda!359857)))

(declare-fun bs!1650264 () Bool)

(assert (= bs!1650264 (and d!2038710 d!2038112)))

(assert (=> bs!1650264 (= lambda!359944 lambda!359841)))

(declare-fun bs!1650265 () Bool)

(assert (= bs!1650265 (and d!2038710 d!2038604)))

(assert (=> bs!1650265 (= lambda!359944 lambda!359923)))

(declare-fun bs!1650266 () Bool)

(assert (= bs!1650266 (and d!2038710 d!2038156)))

(assert (=> bs!1650266 (= lambda!359944 lambda!359853)))

(declare-fun bs!1650267 () Bool)

(assert (= bs!1650267 (and d!2038710 d!2038626)))

(assert (=> bs!1650267 (= lambda!359944 lambda!359925)))

(declare-fun bs!1650268 () Bool)

(assert (= bs!1650268 (and d!2038710 d!2038214)))

(assert (=> bs!1650268 (= lambda!359944 lambda!359872)))

(declare-fun bs!1650269 () Bool)

(assert (= bs!1650269 (and d!2038710 d!2038476)))

(assert (=> bs!1650269 (= lambda!359944 lambda!359908)))

(declare-fun bs!1650270 () Bool)

(assert (= bs!1650270 (and d!2038710 d!2038194)))

(assert (=> bs!1650270 (= lambda!359944 lambda!359863)))

(declare-fun bs!1650271 () Bool)

(assert (= bs!1650271 (and d!2038710 d!2038192)))

(assert (=> bs!1650271 (= lambda!359944 lambda!359860)))

(declare-fun b!6496863 () Bool)

(declare-fun e!3937005 () Regex!16373)

(assert (=> b!6496863 (= e!3937005 (Union!16373 (h!71742 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))) (generalisedUnion!2217 (t!379048 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))))))))

(declare-fun b!6496864 () Bool)

(declare-fun e!3937004 () Bool)

(declare-fun lt!2390815 () Regex!16373)

(assert (=> b!6496864 (= e!3937004 (isUnion!1201 lt!2390815))))

(declare-fun e!3937007 () Bool)

(assert (=> d!2038710 e!3937007))

(declare-fun res!2668199 () Bool)

(assert (=> d!2038710 (=> (not res!2668199) (not e!3937007))))

(assert (=> d!2038710 (= res!2668199 (validRegex!8109 lt!2390815))))

(declare-fun e!3937006 () Regex!16373)

(assert (=> d!2038710 (= lt!2390815 e!3937006)))

(declare-fun c!1190988 () Bool)

(declare-fun e!3937008 () Bool)

(assert (=> d!2038710 (= c!1190988 e!3937008)))

(declare-fun res!2668198 () Bool)

(assert (=> d!2038710 (=> (not res!2668198) (not e!3937008))))

(assert (=> d!2038710 (= res!2668198 ((_ is Cons!65294) (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))))))

(assert (=> d!2038710 (forall!15554 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296)) lambda!359944)))

(assert (=> d!2038710 (= (generalisedUnion!2217 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))) lt!2390815)))

(declare-fun b!6496865 () Bool)

(assert (=> b!6496865 (= e!3937008 (isEmpty!37489 (t!379048 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296)))))))

(declare-fun b!6496866 () Bool)

(declare-fun e!3937003 () Bool)

(assert (=> b!6496866 (= e!3937003 e!3937004)))

(declare-fun c!1190985 () Bool)

(assert (=> b!6496866 (= c!1190985 (isEmpty!37489 (tail!12303 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296)))))))

(declare-fun b!6496867 () Bool)

(assert (=> b!6496867 (= e!3937003 (isEmptyLang!1771 lt!2390815))))

(declare-fun b!6496868 () Bool)

(assert (=> b!6496868 (= e!3937007 e!3937003)))

(declare-fun c!1190986 () Bool)

(assert (=> b!6496868 (= c!1190986 (isEmpty!37489 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))))))

(declare-fun b!6496869 () Bool)

(assert (=> b!6496869 (= e!3937006 e!3937005)))

(declare-fun c!1190987 () Bool)

(assert (=> b!6496869 (= c!1190987 ((_ is Cons!65294) (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))))))

(declare-fun b!6496870 () Bool)

(assert (=> b!6496870 (= e!3937004 (= lt!2390815 (head!13218 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296)))))))

(declare-fun b!6496871 () Bool)

(assert (=> b!6496871 (= e!3937005 EmptyLang!16373)))

(declare-fun b!6496872 () Bool)

(assert (=> b!6496872 (= e!3937006 (h!71742 (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296))))))

(assert (= (and d!2038710 res!2668198) b!6496865))

(assert (= (and d!2038710 c!1190988) b!6496872))

(assert (= (and d!2038710 (not c!1190988)) b!6496869))

(assert (= (and b!6496869 c!1190987) b!6496863))

(assert (= (and b!6496869 (not c!1190987)) b!6496871))

(assert (= (and d!2038710 res!2668199) b!6496868))

(assert (= (and b!6496868 c!1190986) b!6496867))

(assert (= (and b!6496868 (not c!1190986)) b!6496866))

(assert (= (and b!6496866 c!1190985) b!6496870))

(assert (= (and b!6496866 (not c!1190985)) b!6496864))

(assert (=> b!6496870 m!7284110))

(declare-fun m!7285410 () Bool)

(assert (=> b!6496870 m!7285410))

(declare-fun m!7285412 () Bool)

(assert (=> b!6496864 m!7285412))

(assert (=> b!6496866 m!7284110))

(declare-fun m!7285414 () Bool)

(assert (=> b!6496866 m!7285414))

(assert (=> b!6496866 m!7285414))

(declare-fun m!7285416 () Bool)

(assert (=> b!6496866 m!7285416))

(assert (=> b!6496868 m!7284110))

(declare-fun m!7285418 () Bool)

(assert (=> b!6496868 m!7285418))

(declare-fun m!7285420 () Bool)

(assert (=> d!2038710 m!7285420))

(assert (=> d!2038710 m!7284110))

(declare-fun m!7285422 () Bool)

(assert (=> d!2038710 m!7285422))

(declare-fun m!7285424 () Bool)

(assert (=> b!6496865 m!7285424))

(declare-fun m!7285426 () Bool)

(assert (=> b!6496867 m!7285426))

(declare-fun m!7285428 () Bool)

(assert (=> b!6496863 m!7285428))

(assert (=> d!2038148 d!2038710))

(declare-fun bs!1650272 () Bool)

(declare-fun d!2038712 () Bool)

(assert (= bs!1650272 (and d!2038712 d!2038596)))

(declare-fun lambda!359945 () Int)

(assert (=> bs!1650272 (= lambda!359945 lambda!359921)))

(declare-fun bs!1650273 () Bool)

(assert (= bs!1650273 (and d!2038712 d!2038172)))

(assert (=> bs!1650273 (= lambda!359945 lambda!359857)))

(declare-fun bs!1650274 () Bool)

(assert (= bs!1650274 (and d!2038712 d!2038112)))

(assert (=> bs!1650274 (= lambda!359945 lambda!359841)))

(declare-fun bs!1650275 () Bool)

(assert (= bs!1650275 (and d!2038712 d!2038604)))

(assert (=> bs!1650275 (= lambda!359945 lambda!359923)))

(declare-fun bs!1650276 () Bool)

(assert (= bs!1650276 (and d!2038712 d!2038156)))

(assert (=> bs!1650276 (= lambda!359945 lambda!359853)))

(declare-fun bs!1650277 () Bool)

(assert (= bs!1650277 (and d!2038712 d!2038626)))

(assert (=> bs!1650277 (= lambda!359945 lambda!359925)))

(declare-fun bs!1650278 () Bool)

(assert (= bs!1650278 (and d!2038712 d!2038710)))

(assert (=> bs!1650278 (= lambda!359945 lambda!359944)))

(declare-fun bs!1650279 () Bool)

(assert (= bs!1650279 (and d!2038712 d!2038214)))

(assert (=> bs!1650279 (= lambda!359945 lambda!359872)))

(declare-fun bs!1650280 () Bool)

(assert (= bs!1650280 (and d!2038712 d!2038476)))

(assert (=> bs!1650280 (= lambda!359945 lambda!359908)))

(declare-fun bs!1650281 () Bool)

(assert (= bs!1650281 (and d!2038712 d!2038194)))

(assert (=> bs!1650281 (= lambda!359945 lambda!359863)))

(declare-fun bs!1650282 () Bool)

(assert (= bs!1650282 (and d!2038712 d!2038192)))

(assert (=> bs!1650282 (= lambda!359945 lambda!359860)))

(declare-fun lt!2390816 () List!65418)

(assert (=> d!2038712 (forall!15554 lt!2390816 lambda!359945)))

(declare-fun e!3937009 () List!65418)

(assert (=> d!2038712 (= lt!2390816 e!3937009)))

(declare-fun c!1190989 () Bool)

(assert (=> d!2038712 (= c!1190989 ((_ is Cons!65296) (Cons!65296 lt!2390635 Nil!65296)))))

(assert (=> d!2038712 (= (unfocusZipperList!1794 (Cons!65296 lt!2390635 Nil!65296)) lt!2390816)))

(declare-fun b!6496873 () Bool)

(assert (=> b!6496873 (= e!3937009 (Cons!65294 (generalisedConcat!1970 (exprs!6257 (h!71744 (Cons!65296 lt!2390635 Nil!65296)))) (unfocusZipperList!1794 (t!379050 (Cons!65296 lt!2390635 Nil!65296)))))))

(declare-fun b!6496874 () Bool)

(assert (=> b!6496874 (= e!3937009 Nil!65294)))

(assert (= (and d!2038712 c!1190989) b!6496873))

(assert (= (and d!2038712 (not c!1190989)) b!6496874))

(declare-fun m!7285430 () Bool)

(assert (=> d!2038712 m!7285430))

(declare-fun m!7285432 () Bool)

(assert (=> b!6496873 m!7285432))

(declare-fun m!7285434 () Bool)

(assert (=> b!6496873 m!7285434))

(assert (=> d!2038148 d!2038712))

(assert (=> b!6495632 d!2038460))

(declare-fun b!6496875 () Bool)

(declare-fun e!3937012 () (InoxSet Context!11514))

(assert (=> b!6496875 (= e!3937012 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562767 () Bool)

(declare-fun call!562774 () List!65418)

(declare-fun call!562775 () List!65418)

(assert (=> bm!562767 (= call!562774 call!562775)))

(declare-fun b!6496876 () Bool)

(declare-fun e!3937011 () (InoxSet Context!11514))

(declare-fun e!3937013 () (InoxSet Context!11514))

(assert (=> b!6496876 (= e!3937011 e!3937013)))

(declare-fun c!1190993 () Bool)

(assert (=> b!6496876 (= c!1190993 ((_ is Concat!25218) (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))

(declare-fun b!6496877 () Bool)

(declare-fun e!3937014 () (InoxSet Context!11514))

(assert (=> b!6496877 (= e!3937014 (store ((as const (Array Context!11514 Bool)) false) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) true))))

(declare-fun c!1190990 () Bool)

(declare-fun bm!562768 () Bool)

(assert (=> bm!562768 (= call!562775 ($colon$colon!2224 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))) (ite (or c!1190990 c!1190993) (regTwo!33258 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))))

(declare-fun d!2038714 () Bool)

(declare-fun c!1190992 () Bool)

(assert (=> d!2038714 (= c!1190992 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (= (c!1190447 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (h!71743 s!2326))))))

(assert (=> d!2038714 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (h!71743 s!2326)) e!3937014)))

(declare-fun b!6496878 () Bool)

(declare-fun e!3937010 () (InoxSet Context!11514))

(assert (=> b!6496878 (= e!3937014 e!3937010)))

(declare-fun c!1190991 () Bool)

(assert (=> b!6496878 (= c!1190991 ((_ is Union!16373) (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))

(declare-fun bm!562769 () Bool)

(declare-fun call!562777 () (InoxSet Context!11514))

(declare-fun call!562772 () (InoxSet Context!11514))

(assert (=> bm!562769 (= call!562777 call!562772)))

(declare-fun b!6496879 () Bool)

(declare-fun call!562773 () (InoxSet Context!11514))

(assert (=> b!6496879 (= e!3937013 call!562773)))

(declare-fun bm!562770 () Bool)

(assert (=> bm!562770 (= call!562773 call!562777)))

(declare-fun bm!562771 () Bool)

(declare-fun call!562776 () (InoxSet Context!11514))

(assert (=> bm!562771 (= call!562776 (derivationStepZipperDown!1621 (ite c!1190991 (regOne!33259 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (regOne!33258 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))) (ite c!1190991 (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (Context!11515 call!562775)) (h!71743 s!2326)))))

(declare-fun bm!562772 () Bool)

(assert (=> bm!562772 (= call!562772 (derivationStepZipperDown!1621 (ite c!1190991 (regTwo!33259 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (ite c!1190990 (regTwo!33258 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (ite c!1190993 (regOne!33258 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (reg!16702 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))) (ite (or c!1190991 c!1190990) (Context!11515 (t!379048 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))) (Context!11515 call!562774)) (h!71743 s!2326)))))

(declare-fun b!6496880 () Bool)

(declare-fun e!3937015 () Bool)

(assert (=> b!6496880 (= e!3937015 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343))))))))))))

(declare-fun b!6496881 () Bool)

(assert (=> b!6496881 (= e!3937010 ((_ map or) call!562776 call!562772))))

(declare-fun b!6496882 () Bool)

(declare-fun c!1190994 () Bool)

(assert (=> b!6496882 (= c!1190994 ((_ is Star!16373) (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))

(assert (=> b!6496882 (= e!3937013 e!3937012)))

(declare-fun b!6496883 () Bool)

(assert (=> b!6496883 (= e!3937011 ((_ map or) call!562776 call!562777))))

(declare-fun b!6496884 () Bool)

(assert (=> b!6496884 (= e!3937012 call!562773)))

(declare-fun b!6496885 () Bool)

(assert (=> b!6496885 (= c!1190990 e!3937015)))

(declare-fun res!2668200 () Bool)

(assert (=> b!6496885 (=> (not res!2668200) (not e!3937015))))

(assert (=> b!6496885 (= res!2668200 ((_ is Concat!25218) (h!71742 (exprs!6257 (Context!11515 (Cons!65294 (h!71742 (exprs!6257 (h!71744 zl!343))) (t!379048 (exprs!6257 (h!71744 zl!343)))))))))))

(assert (=> b!6496885 (= e!3937010 e!3937011)))

(assert (= (and d!2038714 c!1190992) b!6496877))

(assert (= (and d!2038714 (not c!1190992)) b!6496878))

(assert (= (and b!6496878 c!1190991) b!6496881))

(assert (= (and b!6496878 (not c!1190991)) b!6496885))

(assert (= (and b!6496885 res!2668200) b!6496880))

(assert (= (and b!6496885 c!1190990) b!6496883))

(assert (= (and b!6496885 (not c!1190990)) b!6496876))

(assert (= (and b!6496876 c!1190993) b!6496879))

(assert (= (and b!6496876 (not c!1190993)) b!6496882))

(assert (= (and b!6496882 c!1190994) b!6496884))

(assert (= (and b!6496882 (not c!1190994)) b!6496875))

(assert (= (or b!6496879 b!6496884) bm!562767))

(assert (= (or b!6496879 b!6496884) bm!562770))

(assert (= (or b!6496883 bm!562767) bm!562768))

(assert (= (or b!6496883 bm!562770) bm!562769))

(assert (= (or b!6496881 bm!562769) bm!562772))

(assert (= (or b!6496881 b!6496883) bm!562771))

(declare-fun m!7285436 () Bool)

(assert (=> bm!562768 m!7285436))

(declare-fun m!7285438 () Bool)

(assert (=> bm!562772 m!7285438))

(declare-fun m!7285440 () Bool)

(assert (=> b!6496877 m!7285440))

(declare-fun m!7285442 () Bool)

(assert (=> b!6496880 m!7285442))

(declare-fun m!7285444 () Bool)

(assert (=> bm!562771 m!7285444))

(assert (=> bm!562495 d!2038714))

(assert (=> d!2038120 d!2038114))

(assert (=> d!2038120 d!2038588))

(assert (=> d!2038120 d!2038124))

(declare-fun d!2038716 () Bool)

(assert (=> d!2038716 (= (Exists!3443 lambda!359844) (choose!48211 lambda!359844))))

(declare-fun bs!1650283 () Bool)

(assert (= bs!1650283 d!2038716))

(declare-fun m!7285446 () Bool)

(assert (=> bs!1650283 m!7285446))

(assert (=> d!2038120 d!2038716))

(declare-fun bs!1650284 () Bool)

(declare-fun d!2038718 () Bool)

(assert (= bs!1650284 (and d!2038718 b!6495576)))

(declare-fun lambda!359948 () Int)

(assert (=> bs!1650284 (not (= lambda!359948 lambda!359868))))

(declare-fun bs!1650285 () Bool)

(assert (= bs!1650285 (and d!2038718 b!6495582)))

(assert (=> bs!1650285 (not (= lambda!359948 lambda!359869))))

(declare-fun bs!1650286 () Bool)

(assert (= bs!1650286 (and d!2038718 d!2038702)))

(assert (=> bs!1650286 (not (= lambda!359948 lambda!359941))))

(declare-fun bs!1650287 () Bool)

(assert (= bs!1650287 (and d!2038718 b!6496806)))

(assert (=> bs!1650287 (not (= lambda!359948 lambda!359932))))

(declare-fun bs!1650288 () Bool)

(assert (= bs!1650288 (and d!2038718 b!6495643)))

(assert (=> bs!1650288 (not (= lambda!359948 lambda!359870))))

(declare-fun bs!1650289 () Bool)

(assert (= bs!1650289 (and d!2038718 b!6494886)))

(assert (=> bs!1650289 (= lambda!359948 lambda!359802)))

(assert (=> bs!1650289 (not (= lambda!359948 lambda!359803))))

(declare-fun bs!1650290 () Bool)

(assert (= bs!1650290 (and d!2038718 b!6496833)))

(assert (=> bs!1650290 (not (= lambda!359948 lambda!359935))))

(assert (=> bs!1650286 (= lambda!359948 lambda!359940)))

(declare-fun bs!1650291 () Bool)

(assert (= bs!1650291 (and d!2038718 b!6496616)))

(assert (=> bs!1650291 (not (= lambda!359948 lambda!359928))))

(declare-fun bs!1650292 () Bool)

(assert (= bs!1650292 (and d!2038718 b!6496610)))

(assert (=> bs!1650292 (not (= lambda!359948 lambda!359927))))

(declare-fun bs!1650293 () Bool)

(assert (= bs!1650293 (and d!2038718 b!6496827)))

(assert (=> bs!1650293 (not (= lambda!359948 lambda!359934))))

(declare-fun bs!1650294 () Bool)

(assert (= bs!1650294 (and d!2038718 d!2038122)))

(assert (=> bs!1650294 (not (= lambda!359948 lambda!359850))))

(assert (=> bs!1650294 (= lambda!359948 lambda!359849)))

(declare-fun bs!1650295 () Bool)

(assert (= bs!1650295 (and d!2038718 b!6496800)))

(assert (=> bs!1650295 (not (= lambda!359948 lambda!359931))))

(declare-fun bs!1650296 () Bool)

(assert (= bs!1650296 (and d!2038718 b!6496846)))

(assert (=> bs!1650296 (not (= lambda!359948 lambda!359942))))

(declare-fun bs!1650297 () Bool)

(assert (= bs!1650297 (and d!2038718 d!2038120)))

(assert (=> bs!1650297 (= lambda!359948 lambda!359844)))

(declare-fun bs!1650298 () Bool)

(assert (= bs!1650298 (and d!2038718 b!6496852)))

(assert (=> bs!1650298 (not (= lambda!359948 lambda!359943))))

(declare-fun bs!1650299 () Bool)

(assert (= bs!1650299 (and d!2038718 b!6495649)))

(assert (=> bs!1650299 (not (= lambda!359948 lambda!359871))))

(assert (=> d!2038718 true))

(assert (=> d!2038718 true))

(assert (=> d!2038718 true))

(assert (=> d!2038718 (= (isDefined!12967 (findConcatSeparation!2678 (regOne!33258 r!7292) (regTwo!33258 r!7292) Nil!65295 s!2326 s!2326)) (Exists!3443 lambda!359948))))

(assert (=> d!2038718 true))

(declare-fun _$89!2743 () Unit!158827)

(assert (=> d!2038718 (= (choose!48212 (regOne!33258 r!7292) (regTwo!33258 r!7292) s!2326) _$89!2743)))

(declare-fun bs!1650300 () Bool)

(assert (= bs!1650300 d!2038718))

(assert (=> bs!1650300 m!7283680))

(assert (=> bs!1650300 m!7283680))

(assert (=> bs!1650300 m!7283682))

(declare-fun m!7285448 () Bool)

(assert (=> bs!1650300 m!7285448))

(assert (=> d!2038120 d!2038718))

(declare-fun d!2038720 () Bool)

(assert (=> d!2038720 (= (nullable!6366 (reg!16702 r!7292)) (nullableFct!2302 (reg!16702 r!7292)))))

(declare-fun bs!1650301 () Bool)

(assert (= bs!1650301 d!2038720))

(declare-fun m!7285450 () Bool)

(assert (=> bs!1650301 m!7285450))

(assert (=> b!6495669 d!2038720))

(assert (=> b!6495622 d!2038590))

(assert (=> b!6495622 d!2038502))

(declare-fun b!6496890 () Bool)

(declare-fun e!3937020 () Bool)

(declare-fun e!3937021 () Bool)

(assert (=> b!6496890 (= e!3937020 e!3937021)))

(declare-fun c!1190996 () Bool)

(assert (=> b!6496890 (= c!1190996 ((_ is EmptyLang!16373) (derivativeStep!5067 lt!2390659 (head!13217 s!2326))))))

(declare-fun d!2038722 () Bool)

(assert (=> d!2038722 e!3937020))

(declare-fun c!1190997 () Bool)

(assert (=> d!2038722 (= c!1190997 ((_ is EmptyExpr!16373) (derivativeStep!5067 lt!2390659 (head!13217 s!2326))))))

(declare-fun lt!2390817 () Bool)

(declare-fun e!3937019 () Bool)

(assert (=> d!2038722 (= lt!2390817 e!3937019)))

(declare-fun c!1190995 () Bool)

(assert (=> d!2038722 (= c!1190995 (isEmpty!37494 (tail!12302 s!2326)))))

(assert (=> d!2038722 (validRegex!8109 (derivativeStep!5067 lt!2390659 (head!13217 s!2326)))))

(assert (=> d!2038722 (= (matchR!8556 (derivativeStep!5067 lt!2390659 (head!13217 s!2326)) (tail!12302 s!2326)) lt!2390817)))

(declare-fun b!6496891 () Bool)

(declare-fun res!2668207 () Bool)

(declare-fun e!3937023 () Bool)

(assert (=> b!6496891 (=> res!2668207 e!3937023)))

(assert (=> b!6496891 (= res!2668207 (not ((_ is ElementMatch!16373) (derivativeStep!5067 lt!2390659 (head!13217 s!2326)))))))

(assert (=> b!6496891 (= e!3937021 e!3937023)))

(declare-fun b!6496892 () Bool)

(declare-fun call!562778 () Bool)

(assert (=> b!6496892 (= e!3937020 (= lt!2390817 call!562778))))

(declare-fun b!6496893 () Bool)

(declare-fun res!2668212 () Bool)

(declare-fun e!3937018 () Bool)

(assert (=> b!6496893 (=> res!2668212 e!3937018)))

(assert (=> b!6496893 (= res!2668212 (not (isEmpty!37494 (tail!12302 (tail!12302 s!2326)))))))

(declare-fun b!6496894 () Bool)

(assert (=> b!6496894 (= e!3937021 (not lt!2390817))))

(declare-fun b!6496895 () Bool)

(declare-fun res!2668210 () Bool)

(declare-fun e!3937022 () Bool)

(assert (=> b!6496895 (=> (not res!2668210) (not e!3937022))))

(assert (=> b!6496895 (= res!2668210 (not call!562778))))

(declare-fun b!6496896 () Bool)

(assert (=> b!6496896 (= e!3937018 (not (= (head!13217 (tail!12302 s!2326)) (c!1190447 (derivativeStep!5067 lt!2390659 (head!13217 s!2326))))))))

(declare-fun b!6496897 () Bool)

(assert (=> b!6496897 (= e!3937022 (= (head!13217 (tail!12302 s!2326)) (c!1190447 (derivativeStep!5067 lt!2390659 (head!13217 s!2326)))))))

(declare-fun b!6496898 () Bool)

(declare-fun res!2668206 () Bool)

(assert (=> b!6496898 (=> res!2668206 e!3937023)))

(assert (=> b!6496898 (= res!2668206 e!3937022)))

(declare-fun res!2668208 () Bool)

(assert (=> b!6496898 (=> (not res!2668208) (not e!3937022))))

(assert (=> b!6496898 (= res!2668208 lt!2390817)))

(declare-fun b!6496899 () Bool)

(declare-fun e!3937024 () Bool)

(assert (=> b!6496899 (= e!3937023 e!3937024)))

(declare-fun res!2668211 () Bool)

(assert (=> b!6496899 (=> (not res!2668211) (not e!3937024))))

(assert (=> b!6496899 (= res!2668211 (not lt!2390817))))

(declare-fun bm!562773 () Bool)

(assert (=> bm!562773 (= call!562778 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun b!6496900 () Bool)

(declare-fun res!2668205 () Bool)

(assert (=> b!6496900 (=> (not res!2668205) (not e!3937022))))

(assert (=> b!6496900 (= res!2668205 (isEmpty!37494 (tail!12302 (tail!12302 s!2326))))))

(declare-fun b!6496901 () Bool)

(assert (=> b!6496901 (= e!3937024 e!3937018)))

(declare-fun res!2668209 () Bool)

(assert (=> b!6496901 (=> res!2668209 e!3937018)))

(assert (=> b!6496901 (= res!2668209 call!562778)))

(declare-fun b!6496902 () Bool)

(assert (=> b!6496902 (= e!3937019 (matchR!8556 (derivativeStep!5067 (derivativeStep!5067 lt!2390659 (head!13217 s!2326)) (head!13217 (tail!12302 s!2326))) (tail!12302 (tail!12302 s!2326))))))

(declare-fun b!6496903 () Bool)

(assert (=> b!6496903 (= e!3937019 (nullable!6366 (derivativeStep!5067 lt!2390659 (head!13217 s!2326))))))

(assert (= (and d!2038722 c!1190995) b!6496903))

(assert (= (and d!2038722 (not c!1190995)) b!6496902))

(assert (= (and d!2038722 c!1190997) b!6496892))

(assert (= (and d!2038722 (not c!1190997)) b!6496890))

(assert (= (and b!6496890 c!1190996) b!6496894))

(assert (= (and b!6496890 (not c!1190996)) b!6496891))

(assert (= (and b!6496891 (not res!2668207)) b!6496898))

(assert (= (and b!6496898 res!2668208) b!6496895))

(assert (= (and b!6496895 res!2668210) b!6496900))

(assert (= (and b!6496900 res!2668205) b!6496897))

(assert (= (and b!6496898 (not res!2668206)) b!6496899))

(assert (= (and b!6496899 res!2668211) b!6496901))

(assert (= (and b!6496901 (not res!2668209)) b!6496893))

(assert (= (and b!6496893 (not res!2668212)) b!6496896))

(assert (= (or b!6496892 b!6496895 b!6496901) bm!562773))

(assert (=> b!6496902 m!7284076))

(assert (=> b!6496902 m!7284874))

(assert (=> b!6496902 m!7284268))

(assert (=> b!6496902 m!7284874))

(declare-fun m!7285452 () Bool)

(assert (=> b!6496902 m!7285452))

(assert (=> b!6496902 m!7284076))

(assert (=> b!6496902 m!7284878))

(assert (=> b!6496902 m!7285452))

(assert (=> b!6496902 m!7284878))

(declare-fun m!7285454 () Bool)

(assert (=> b!6496902 m!7285454))

(assert (=> b!6496896 m!7284076))

(assert (=> b!6496896 m!7284874))

(assert (=> d!2038722 m!7284076))

(assert (=> d!2038722 m!7284264))

(assert (=> d!2038722 m!7284268))

(declare-fun m!7285456 () Bool)

(assert (=> d!2038722 m!7285456))

(assert (=> b!6496903 m!7284268))

(declare-fun m!7285458 () Bool)

(assert (=> b!6496903 m!7285458))

(assert (=> bm!562773 m!7284076))

(assert (=> bm!562773 m!7284264))

(assert (=> b!6496900 m!7284076))

(assert (=> b!6496900 m!7284878))

(assert (=> b!6496900 m!7284878))

(assert (=> b!6496900 m!7285080))

(assert (=> b!6496893 m!7284076))

(assert (=> b!6496893 m!7284878))

(assert (=> b!6496893 m!7284878))

(assert (=> b!6496893 m!7285080))

(assert (=> b!6496897 m!7284076))

(assert (=> b!6496897 m!7284874))

(assert (=> b!6495638 d!2038722))

(declare-fun call!562779 () Regex!16373)

(declare-fun e!3937029 () Regex!16373)

(declare-fun call!562782 () Regex!16373)

(declare-fun b!6496904 () Bool)

(assert (=> b!6496904 (= e!3937029 (Union!16373 (Concat!25218 call!562782 (regTwo!33258 lt!2390659)) call!562779))))

(declare-fun b!6496905 () Bool)

(declare-fun c!1191000 () Bool)

(assert (=> b!6496905 (= c!1191000 (nullable!6366 (regOne!33258 lt!2390659)))))

(declare-fun e!3937026 () Regex!16373)

(assert (=> b!6496905 (= e!3937026 e!3937029)))

(declare-fun bm!562774 () Bool)

(declare-fun call!562781 () Regex!16373)

(declare-fun c!1191001 () Bool)

(assert (=> bm!562774 (= call!562781 (derivativeStep!5067 (ite c!1191001 (regOne!33259 lt!2390659) (ite c!1191000 (regTwo!33258 lt!2390659) (regOne!33258 lt!2390659))) (head!13217 s!2326)))))

(declare-fun b!6496906 () Bool)

(declare-fun e!3937027 () Regex!16373)

(assert (=> b!6496906 (= e!3937027 EmptyLang!16373)))

(declare-fun b!6496907 () Bool)

(declare-fun e!3937028 () Regex!16373)

(declare-fun call!562780 () Regex!16373)

(assert (=> b!6496907 (= e!3937028 (Union!16373 call!562781 call!562780))))

(declare-fun bm!562776 () Bool)

(assert (=> bm!562776 (= call!562782 call!562780)))

(declare-fun b!6496908 () Bool)

(declare-fun e!3937025 () Regex!16373)

(assert (=> b!6496908 (= e!3937027 e!3937025)))

(declare-fun c!1191002 () Bool)

(assert (=> b!6496908 (= c!1191002 ((_ is ElementMatch!16373) lt!2390659))))

(declare-fun b!6496909 () Bool)

(assert (=> b!6496909 (= e!3937026 (Concat!25218 call!562782 lt!2390659))))

(declare-fun b!6496910 () Bool)

(assert (=> b!6496910 (= e!3937029 (Union!16373 (Concat!25218 call!562779 (regTwo!33258 lt!2390659)) EmptyLang!16373))))

(declare-fun bm!562777 () Bool)

(assert (=> bm!562777 (= call!562779 call!562781)))

(declare-fun b!6496911 () Bool)

(assert (=> b!6496911 (= e!3937028 e!3937026)))

(declare-fun c!1190998 () Bool)

(assert (=> b!6496911 (= c!1190998 ((_ is Star!16373) lt!2390659))))

(declare-fun bm!562775 () Bool)

(assert (=> bm!562775 (= call!562780 (derivativeStep!5067 (ite c!1191001 (regTwo!33259 lt!2390659) (ite c!1190998 (reg!16702 lt!2390659) (regOne!33258 lt!2390659))) (head!13217 s!2326)))))

(declare-fun d!2038724 () Bool)

(declare-fun lt!2390818 () Regex!16373)

(assert (=> d!2038724 (validRegex!8109 lt!2390818)))

(assert (=> d!2038724 (= lt!2390818 e!3937027)))

(declare-fun c!1190999 () Bool)

(assert (=> d!2038724 (= c!1190999 (or ((_ is EmptyExpr!16373) lt!2390659) ((_ is EmptyLang!16373) lt!2390659)))))

(assert (=> d!2038724 (validRegex!8109 lt!2390659)))

(assert (=> d!2038724 (= (derivativeStep!5067 lt!2390659 (head!13217 s!2326)) lt!2390818)))

(declare-fun b!6496912 () Bool)

(assert (=> b!6496912 (= c!1191001 ((_ is Union!16373) lt!2390659))))

(assert (=> b!6496912 (= e!3937025 e!3937028)))

(declare-fun b!6496913 () Bool)

(assert (=> b!6496913 (= e!3937025 (ite (= (head!13217 s!2326) (c!1190447 lt!2390659)) EmptyExpr!16373 EmptyLang!16373))))

(assert (= (and d!2038724 c!1190999) b!6496906))

(assert (= (and d!2038724 (not c!1190999)) b!6496908))

(assert (= (and b!6496908 c!1191002) b!6496913))

(assert (= (and b!6496908 (not c!1191002)) b!6496912))

(assert (= (and b!6496912 c!1191001) b!6496907))

(assert (= (and b!6496912 (not c!1191001)) b!6496911))

(assert (= (and b!6496911 c!1190998) b!6496909))

(assert (= (and b!6496911 (not c!1190998)) b!6496905))

(assert (= (and b!6496905 c!1191000) b!6496904))

(assert (= (and b!6496905 (not c!1191000)) b!6496910))

(assert (= (or b!6496904 b!6496910) bm!562777))

(assert (= (or b!6496909 b!6496904) bm!562776))

(assert (= (or b!6496907 bm!562776) bm!562775))

(assert (= (or b!6496907 bm!562777) bm!562774))

(declare-fun m!7285460 () Bool)

(assert (=> b!6496905 m!7285460))

(assert (=> bm!562774 m!7284072))

(declare-fun m!7285462 () Bool)

(assert (=> bm!562774 m!7285462))

(assert (=> bm!562775 m!7284072))

(declare-fun m!7285464 () Bool)

(assert (=> bm!562775 m!7285464))

(declare-fun m!7285466 () Bool)

(assert (=> d!2038724 m!7285466))

(assert (=> d!2038724 m!7284272))

(assert (=> b!6495638 d!2038724))

(assert (=> b!6495638 d!2038460))

(assert (=> b!6495638 d!2038502))

(declare-fun d!2038726 () Bool)

(declare-fun c!1191003 () Bool)

(assert (=> d!2038726 (= c!1191003 (isEmpty!37494 (tail!12302 (t!379049 s!2326))))))

(declare-fun e!3937030 () Bool)

(assert (=> d!2038726 (= (matchZipper!2385 (derivationStepZipper!2339 lt!2390649 (head!13217 (t!379049 s!2326))) (tail!12302 (t!379049 s!2326))) e!3937030)))

(declare-fun b!6496914 () Bool)

(assert (=> b!6496914 (= e!3937030 (nullableZipper!2128 (derivationStepZipper!2339 lt!2390649 (head!13217 (t!379049 s!2326)))))))

(declare-fun b!6496915 () Bool)

(assert (=> b!6496915 (= e!3937030 (matchZipper!2385 (derivationStepZipper!2339 (derivationStepZipper!2339 lt!2390649 (head!13217 (t!379049 s!2326))) (head!13217 (tail!12302 (t!379049 s!2326)))) (tail!12302 (tail!12302 (t!379049 s!2326)))))))

(assert (= (and d!2038726 c!1191003) b!6496914))

(assert (= (and d!2038726 (not c!1191003)) b!6496915))

(assert (=> d!2038726 m!7284058))

(assert (=> d!2038726 m!7284914))

(assert (=> b!6496914 m!7284064))

(declare-fun m!7285468 () Bool)

(assert (=> b!6496914 m!7285468))

(assert (=> b!6496915 m!7284058))

(assert (=> b!6496915 m!7284918))

(assert (=> b!6496915 m!7284064))

(assert (=> b!6496915 m!7284918))

(declare-fun m!7285470 () Bool)

(assert (=> b!6496915 m!7285470))

(assert (=> b!6496915 m!7284058))

(assert (=> b!6496915 m!7284922))

(assert (=> b!6496915 m!7285470))

(assert (=> b!6496915 m!7284922))

(declare-fun m!7285472 () Bool)

(assert (=> b!6496915 m!7285472))

(assert (=> b!6495374 d!2038726))

(declare-fun bs!1650302 () Bool)

(declare-fun d!2038728 () Bool)

(assert (= bs!1650302 (and d!2038728 d!2038686)))

(declare-fun lambda!359949 () Int)

(assert (=> bs!1650302 (= lambda!359949 lambda!359933)))

(declare-fun bs!1650303 () Bool)

(assert (= bs!1650303 (and d!2038728 d!2038534)))

(assert (=> bs!1650303 (= lambda!359949 lambda!359915)))

(declare-fun bs!1650304 () Bool)

(assert (= bs!1650304 (and d!2038728 b!6494901)))

(assert (=> bs!1650304 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359949 lambda!359804))))

(declare-fun bs!1650305 () Bool)

(assert (= bs!1650305 (and d!2038728 d!2038164)))

(assert (=> bs!1650305 (= (= (head!13217 (t!379049 s!2326)) (h!71743 s!2326)) (= lambda!359949 lambda!359856))))

(declare-fun bs!1650306 () Bool)

(assert (= bs!1650306 (and d!2038728 d!2038498)))

(assert (=> bs!1650306 (= (= (head!13217 (t!379049 s!2326)) (head!13217 s!2326)) (= lambda!359949 lambda!359911))))

(declare-fun bs!1650307 () Bool)

(assert (= bs!1650307 (and d!2038728 d!2038516)))

(assert (=> bs!1650307 (= lambda!359949 lambda!359913)))

(assert (=> d!2038728 true))

(assert (=> d!2038728 (= (derivationStepZipper!2339 lt!2390649 (head!13217 (t!379049 s!2326))) (flatMap!1878 lt!2390649 lambda!359949))))

(declare-fun bs!1650308 () Bool)

(assert (= bs!1650308 d!2038728))

(declare-fun m!7285474 () Bool)

(assert (=> bs!1650308 m!7285474))

(assert (=> b!6495374 d!2038728))

(assert (=> b!6495374 d!2038518))

(assert (=> b!6495374 d!2038520))

(declare-fun d!2038730 () Bool)

(assert (=> d!2038730 (= (isEmpty!37489 (unfocusZipperList!1794 zl!343)) ((_ is Nil!65294) (unfocusZipperList!1794 zl!343)))))

(assert (=> b!6495519 d!2038730))

(assert (=> d!2038208 d!2038204))

(assert (=> d!2038208 d!2038206))

(declare-fun d!2038732 () Bool)

(assert (=> d!2038732 (= (matchR!8556 lt!2390659 s!2326) (matchRSpec!3474 lt!2390659 s!2326))))

(assert (=> d!2038732 true))

(declare-fun _$88!5198 () Unit!158827)

(assert (=> d!2038732 (= (choose!48218 lt!2390659 s!2326) _$88!5198)))

(declare-fun bs!1650309 () Bool)

(assert (= bs!1650309 d!2038732))

(assert (=> bs!1650309 m!7283620))

(assert (=> bs!1650309 m!7283622))

(assert (=> d!2038208 d!2038732))

(assert (=> d!2038208 d!2038504))

(declare-fun d!2038734 () Bool)

(assert (=> d!2038734 true))

(declare-fun setRes!44270 () Bool)

(assert (=> d!2038734 setRes!44270))

(declare-fun condSetEmpty!44270 () Bool)

(declare-fun res!2668213 () (InoxSet Context!11514))

(assert (=> d!2038734 (= condSetEmpty!44270 (= res!2668213 ((as const (Array Context!11514 Bool)) false)))))

(assert (=> d!2038734 (= (choose!48216 lt!2390643 lambda!359804) res!2668213)))

(declare-fun setIsEmpty!44270 () Bool)

(assert (=> setIsEmpty!44270 setRes!44270))

(declare-fun tp!1797563 () Bool)

(declare-fun setElem!44270 () Context!11514)

(declare-fun setNonEmpty!44270 () Bool)

(declare-fun e!3937031 () Bool)

(assert (=> setNonEmpty!44270 (= setRes!44270 (and tp!1797563 (inv!84179 setElem!44270) e!3937031))))

(declare-fun setRest!44270 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44270 (= res!2668213 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44270 true) setRest!44270))))

(declare-fun b!6496916 () Bool)

(declare-fun tp!1797564 () Bool)

(assert (=> b!6496916 (= e!3937031 tp!1797564)))

(assert (= (and d!2038734 condSetEmpty!44270) setIsEmpty!44270))

(assert (= (and d!2038734 (not condSetEmpty!44270)) setNonEmpty!44270))

(assert (= setNonEmpty!44270 b!6496916))

(declare-fun m!7285476 () Bool)

(assert (=> setNonEmpty!44270 m!7285476))

(assert (=> d!2038152 d!2038734))

(declare-fun d!2038736 () Bool)

(declare-fun res!2668214 () Bool)

(declare-fun e!3937032 () Bool)

(assert (=> d!2038736 (=> res!2668214 e!3937032)))

(assert (=> d!2038736 (= res!2668214 ((_ is Nil!65294) (exprs!6257 setElem!44251)))))

(assert (=> d!2038736 (= (forall!15554 (exprs!6257 setElem!44251) lambda!359857) e!3937032)))

(declare-fun b!6496917 () Bool)

(declare-fun e!3937033 () Bool)

(assert (=> b!6496917 (= e!3937032 e!3937033)))

(declare-fun res!2668215 () Bool)

(assert (=> b!6496917 (=> (not res!2668215) (not e!3937033))))

(assert (=> b!6496917 (= res!2668215 (dynLambda!25937 lambda!359857 (h!71742 (exprs!6257 setElem!44251))))))

(declare-fun b!6496918 () Bool)

(assert (=> b!6496918 (= e!3937033 (forall!15554 (t!379048 (exprs!6257 setElem!44251)) lambda!359857))))

(assert (= (and d!2038736 (not res!2668214)) b!6496917))

(assert (= (and b!6496917 res!2668215) b!6496918))

(declare-fun b_lambda!245933 () Bool)

(assert (=> (not b_lambda!245933) (not b!6496917)))

(declare-fun m!7285478 () Bool)

(assert (=> b!6496917 m!7285478))

(declare-fun m!7285480 () Bool)

(assert (=> b!6496918 m!7285480))

(assert (=> d!2038172 d!2038736))

(declare-fun b!6496919 () Bool)

(declare-fun e!3937036 () (InoxSet Context!11514))

(assert (=> b!6496919 (= e!3937036 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562778 () Bool)

(declare-fun call!562785 () List!65418)

(declare-fun call!562786 () List!65418)

(assert (=> bm!562778 (= call!562785 call!562786)))

(declare-fun b!6496920 () Bool)

(declare-fun e!3937035 () (InoxSet Context!11514))

(declare-fun e!3937037 () (InoxSet Context!11514))

(assert (=> b!6496920 (= e!3937035 e!3937037)))

(declare-fun c!1191007 () Bool)

(assert (=> b!6496920 (= c!1191007 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390632))))))

(declare-fun b!6496921 () Bool)

(declare-fun e!3937038 () (InoxSet Context!11514))

(assert (=> b!6496921 (= e!3937038 (store ((as const (Array Context!11514 Bool)) false) (Context!11515 (t!379048 (exprs!6257 lt!2390632))) true))))

(declare-fun bm!562779 () Bool)

(declare-fun c!1191004 () Bool)

(assert (=> bm!562779 (= call!562786 ($colon$colon!2224 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390632)))) (ite (or c!1191004 c!1191007) (regTwo!33258 (h!71742 (exprs!6257 lt!2390632))) (h!71742 (exprs!6257 lt!2390632)))))))

(declare-fun d!2038738 () Bool)

(declare-fun c!1191006 () Bool)

(assert (=> d!2038738 (= c!1191006 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 lt!2390632))) (= (c!1190447 (h!71742 (exprs!6257 lt!2390632))) (h!71743 s!2326))))))

(assert (=> d!2038738 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390632)) (Context!11515 (t!379048 (exprs!6257 lt!2390632))) (h!71743 s!2326)) e!3937038)))

(declare-fun b!6496922 () Bool)

(declare-fun e!3937034 () (InoxSet Context!11514))

(assert (=> b!6496922 (= e!3937038 e!3937034)))

(declare-fun c!1191005 () Bool)

(assert (=> b!6496922 (= c!1191005 ((_ is Union!16373) (h!71742 (exprs!6257 lt!2390632))))))

(declare-fun bm!562780 () Bool)

(declare-fun call!562788 () (InoxSet Context!11514))

(declare-fun call!562783 () (InoxSet Context!11514))

(assert (=> bm!562780 (= call!562788 call!562783)))

(declare-fun b!6496923 () Bool)

(declare-fun call!562784 () (InoxSet Context!11514))

(assert (=> b!6496923 (= e!3937037 call!562784)))

(declare-fun bm!562781 () Bool)

(assert (=> bm!562781 (= call!562784 call!562788)))

(declare-fun bm!562782 () Bool)

(declare-fun call!562787 () (InoxSet Context!11514))

(assert (=> bm!562782 (= call!562787 (derivationStepZipperDown!1621 (ite c!1191005 (regOne!33259 (h!71742 (exprs!6257 lt!2390632))) (regOne!33258 (h!71742 (exprs!6257 lt!2390632)))) (ite c!1191005 (Context!11515 (t!379048 (exprs!6257 lt!2390632))) (Context!11515 call!562786)) (h!71743 s!2326)))))

(declare-fun bm!562783 () Bool)

(assert (=> bm!562783 (= call!562783 (derivationStepZipperDown!1621 (ite c!1191005 (regTwo!33259 (h!71742 (exprs!6257 lt!2390632))) (ite c!1191004 (regTwo!33258 (h!71742 (exprs!6257 lt!2390632))) (ite c!1191007 (regOne!33258 (h!71742 (exprs!6257 lt!2390632))) (reg!16702 (h!71742 (exprs!6257 lt!2390632)))))) (ite (or c!1191005 c!1191004) (Context!11515 (t!379048 (exprs!6257 lt!2390632))) (Context!11515 call!562785)) (h!71743 s!2326)))))

(declare-fun b!6496924 () Bool)

(declare-fun e!3937039 () Bool)

(assert (=> b!6496924 (= e!3937039 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 lt!2390632)))))))

(declare-fun b!6496925 () Bool)

(assert (=> b!6496925 (= e!3937034 ((_ map or) call!562787 call!562783))))

(declare-fun b!6496926 () Bool)

(declare-fun c!1191008 () Bool)

(assert (=> b!6496926 (= c!1191008 ((_ is Star!16373) (h!71742 (exprs!6257 lt!2390632))))))

(assert (=> b!6496926 (= e!3937037 e!3937036)))

(declare-fun b!6496927 () Bool)

(assert (=> b!6496927 (= e!3937035 ((_ map or) call!562787 call!562788))))

(declare-fun b!6496928 () Bool)

(assert (=> b!6496928 (= e!3937036 call!562784)))

(declare-fun b!6496929 () Bool)

(assert (=> b!6496929 (= c!1191004 e!3937039)))

(declare-fun res!2668216 () Bool)

(assert (=> b!6496929 (=> (not res!2668216) (not e!3937039))))

(assert (=> b!6496929 (= res!2668216 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390632))))))

(assert (=> b!6496929 (= e!3937034 e!3937035)))

(assert (= (and d!2038738 c!1191006) b!6496921))

(assert (= (and d!2038738 (not c!1191006)) b!6496922))

(assert (= (and b!6496922 c!1191005) b!6496925))

(assert (= (and b!6496922 (not c!1191005)) b!6496929))

(assert (= (and b!6496929 res!2668216) b!6496924))

(assert (= (and b!6496929 c!1191004) b!6496927))

(assert (= (and b!6496929 (not c!1191004)) b!6496920))

(assert (= (and b!6496920 c!1191007) b!6496923))

(assert (= (and b!6496920 (not c!1191007)) b!6496926))

(assert (= (and b!6496926 c!1191008) b!6496928))

(assert (= (and b!6496926 (not c!1191008)) b!6496919))

(assert (= (or b!6496923 b!6496928) bm!562778))

(assert (= (or b!6496923 b!6496928) bm!562781))

(assert (= (or b!6496927 bm!562778) bm!562779))

(assert (= (or b!6496927 bm!562781) bm!562780))

(assert (= (or b!6496925 bm!562780) bm!562783))

(assert (= (or b!6496925 b!6496927) bm!562782))

(declare-fun m!7285482 () Bool)

(assert (=> bm!562779 m!7285482))

(declare-fun m!7285484 () Bool)

(assert (=> bm!562783 m!7285484))

(declare-fun m!7285486 () Bool)

(assert (=> b!6496921 m!7285486))

(declare-fun m!7285488 () Bool)

(assert (=> b!6496924 m!7285488))

(declare-fun m!7285490 () Bool)

(assert (=> bm!562782 m!7285490))

(assert (=> bm!562492 d!2038738))

(assert (=> d!2038190 d!2038638))

(declare-fun b!6496930 () Bool)

(declare-fun e!3937042 () (InoxSet Context!11514))

(assert (=> b!6496930 (= e!3937042 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562784 () Bool)

(declare-fun call!562791 () List!65418)

(declare-fun call!562792 () List!65418)

(assert (=> bm!562784 (= call!562791 call!562792)))

(declare-fun b!6496931 () Bool)

(declare-fun e!3937041 () (InoxSet Context!11514))

(declare-fun e!3937043 () (InoxSet Context!11514))

(assert (=> b!6496931 (= e!3937041 e!3937043)))

(declare-fun c!1191012 () Bool)

(assert (=> b!6496931 (= c!1191012 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390635))))))

(declare-fun b!6496932 () Bool)

(declare-fun e!3937044 () (InoxSet Context!11514))

(assert (=> b!6496932 (= e!3937044 (store ((as const (Array Context!11514 Bool)) false) (Context!11515 (t!379048 (exprs!6257 lt!2390635))) true))))

(declare-fun c!1191009 () Bool)

(declare-fun bm!562785 () Bool)

(assert (=> bm!562785 (= call!562792 ($colon$colon!2224 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390635)))) (ite (or c!1191009 c!1191012) (regTwo!33258 (h!71742 (exprs!6257 lt!2390635))) (h!71742 (exprs!6257 lt!2390635)))))))

(declare-fun d!2038740 () Bool)

(declare-fun c!1191011 () Bool)

(assert (=> d!2038740 (= c!1191011 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 lt!2390635))) (= (c!1190447 (h!71742 (exprs!6257 lt!2390635))) (h!71743 s!2326))))))

(assert (=> d!2038740 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390635)) (Context!11515 (t!379048 (exprs!6257 lt!2390635))) (h!71743 s!2326)) e!3937044)))

(declare-fun b!6496933 () Bool)

(declare-fun e!3937040 () (InoxSet Context!11514))

(assert (=> b!6496933 (= e!3937044 e!3937040)))

(declare-fun c!1191010 () Bool)

(assert (=> b!6496933 (= c!1191010 ((_ is Union!16373) (h!71742 (exprs!6257 lt!2390635))))))

(declare-fun bm!562786 () Bool)

(declare-fun call!562794 () (InoxSet Context!11514))

(declare-fun call!562789 () (InoxSet Context!11514))

(assert (=> bm!562786 (= call!562794 call!562789)))

(declare-fun b!6496934 () Bool)

(declare-fun call!562790 () (InoxSet Context!11514))

(assert (=> b!6496934 (= e!3937043 call!562790)))

(declare-fun bm!562787 () Bool)

(assert (=> bm!562787 (= call!562790 call!562794)))

(declare-fun call!562793 () (InoxSet Context!11514))

(declare-fun bm!562788 () Bool)

(assert (=> bm!562788 (= call!562793 (derivationStepZipperDown!1621 (ite c!1191010 (regOne!33259 (h!71742 (exprs!6257 lt!2390635))) (regOne!33258 (h!71742 (exprs!6257 lt!2390635)))) (ite c!1191010 (Context!11515 (t!379048 (exprs!6257 lt!2390635))) (Context!11515 call!562792)) (h!71743 s!2326)))))

(declare-fun bm!562789 () Bool)

(assert (=> bm!562789 (= call!562789 (derivationStepZipperDown!1621 (ite c!1191010 (regTwo!33259 (h!71742 (exprs!6257 lt!2390635))) (ite c!1191009 (regTwo!33258 (h!71742 (exprs!6257 lt!2390635))) (ite c!1191012 (regOne!33258 (h!71742 (exprs!6257 lt!2390635))) (reg!16702 (h!71742 (exprs!6257 lt!2390635)))))) (ite (or c!1191010 c!1191009) (Context!11515 (t!379048 (exprs!6257 lt!2390635))) (Context!11515 call!562791)) (h!71743 s!2326)))))

(declare-fun b!6496935 () Bool)

(declare-fun e!3937045 () Bool)

(assert (=> b!6496935 (= e!3937045 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 lt!2390635)))))))

(declare-fun b!6496936 () Bool)

(assert (=> b!6496936 (= e!3937040 ((_ map or) call!562793 call!562789))))

(declare-fun b!6496937 () Bool)

(declare-fun c!1191013 () Bool)

(assert (=> b!6496937 (= c!1191013 ((_ is Star!16373) (h!71742 (exprs!6257 lt!2390635))))))

(assert (=> b!6496937 (= e!3937043 e!3937042)))

(declare-fun b!6496938 () Bool)

(assert (=> b!6496938 (= e!3937041 ((_ map or) call!562793 call!562794))))

(declare-fun b!6496939 () Bool)

(assert (=> b!6496939 (= e!3937042 call!562790)))

(declare-fun b!6496940 () Bool)

(assert (=> b!6496940 (= c!1191009 e!3937045)))

(declare-fun res!2668217 () Bool)

(assert (=> b!6496940 (=> (not res!2668217) (not e!3937045))))

(assert (=> b!6496940 (= res!2668217 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390635))))))

(assert (=> b!6496940 (= e!3937040 e!3937041)))

(assert (= (and d!2038740 c!1191011) b!6496932))

(assert (= (and d!2038740 (not c!1191011)) b!6496933))

(assert (= (and b!6496933 c!1191010) b!6496936))

(assert (= (and b!6496933 (not c!1191010)) b!6496940))

(assert (= (and b!6496940 res!2668217) b!6496935))

(assert (= (and b!6496940 c!1191009) b!6496938))

(assert (= (and b!6496940 (not c!1191009)) b!6496931))

(assert (= (and b!6496931 c!1191012) b!6496934))

(assert (= (and b!6496931 (not c!1191012)) b!6496937))

(assert (= (and b!6496937 c!1191013) b!6496939))

(assert (= (and b!6496937 (not c!1191013)) b!6496930))

(assert (= (or b!6496934 b!6496939) bm!562784))

(assert (= (or b!6496934 b!6496939) bm!562787))

(assert (= (or b!6496938 bm!562784) bm!562785))

(assert (= (or b!6496938 bm!562787) bm!562786))

(assert (= (or b!6496936 bm!562786) bm!562789))

(assert (= (or b!6496936 b!6496938) bm!562788))

(declare-fun m!7285492 () Bool)

(assert (=> bm!562785 m!7285492))

(declare-fun m!7285494 () Bool)

(assert (=> bm!562789 m!7285494))

(declare-fun m!7285496 () Bool)

(assert (=> b!6496932 m!7285496))

(declare-fun m!7285498 () Bool)

(assert (=> b!6496935 m!7285498))

(declare-fun m!7285500 () Bool)

(assert (=> bm!562788 m!7285500))

(assert (=> bm!562493 d!2038740))

(assert (=> d!2038146 d!2038150))

(declare-fun d!2038742 () Bool)

(assert (=> d!2038742 (= (flatMap!1878 lt!2390646 lambda!359804) (dynLambda!25935 lambda!359804 lt!2390635))))

(assert (=> d!2038742 true))

(declare-fun _$13!3740 () Unit!158827)

(assert (=> d!2038742 (= (choose!48215 lt!2390646 lt!2390635 lambda!359804) _$13!3740)))

(declare-fun b_lambda!245935 () Bool)

(assert (=> (not b_lambda!245935) (not d!2038742)))

(declare-fun bs!1650310 () Bool)

(assert (= bs!1650310 d!2038742))

(assert (=> bs!1650310 m!7283652))

(assert (=> bs!1650310 m!7284104))

(assert (=> d!2038146 d!2038742))

(declare-fun bs!1650311 () Bool)

(declare-fun d!2038744 () Bool)

(assert (= bs!1650311 (and d!2038744 d!2038372)))

(declare-fun lambda!359950 () Int)

(assert (=> bs!1650311 (= lambda!359950 lambda!359900)))

(declare-fun bs!1650312 () Bool)

(assert (= bs!1650312 (and d!2038744 d!2038622)))

(assert (=> bs!1650312 (= lambda!359950 lambda!359924)))

(declare-fun bs!1650313 () Bool)

(assert (= bs!1650313 (and d!2038744 d!2038644)))

(assert (=> bs!1650313 (= lambda!359950 lambda!359929)))

(declare-fun bs!1650314 () Bool)

(assert (= bs!1650314 (and d!2038744 d!2038666)))

(assert (=> bs!1650314 (= lambda!359950 lambda!359930)))

(declare-fun bs!1650315 () Bool)

(assert (= bs!1650315 (and d!2038744 d!2038526)))

(assert (=> bs!1650315 (= lambda!359950 lambda!359914)))

(assert (=> d!2038744 (= (nullableZipper!2128 lt!2390660) (exists!2621 lt!2390660 lambda!359950))))

(declare-fun bs!1650316 () Bool)

(assert (= bs!1650316 d!2038744))

(declare-fun m!7285502 () Bool)

(assert (=> bs!1650316 m!7285502))

(assert (=> b!6495439 d!2038744))

(declare-fun b!6496944 () Bool)

(declare-fun e!3937047 () Bool)

(declare-fun lt!2390819 () List!65419)

(assert (=> b!6496944 (= e!3937047 (or (not (= (_2!36655 (get!22643 lt!2390719)) Nil!65295)) (= lt!2390819 (_1!36655 (get!22643 lt!2390719)))))))

(declare-fun b!6496942 () Bool)

(declare-fun e!3937046 () List!65419)

(assert (=> b!6496942 (= e!3937046 (Cons!65295 (h!71743 (_1!36655 (get!22643 lt!2390719))) (++!14455 (t!379049 (_1!36655 (get!22643 lt!2390719))) (_2!36655 (get!22643 lt!2390719)))))))

(declare-fun b!6496941 () Bool)

(assert (=> b!6496941 (= e!3937046 (_2!36655 (get!22643 lt!2390719)))))

(declare-fun b!6496943 () Bool)

(declare-fun res!2668218 () Bool)

(assert (=> b!6496943 (=> (not res!2668218) (not e!3937047))))

(assert (=> b!6496943 (= res!2668218 (= (size!40431 lt!2390819) (+ (size!40431 (_1!36655 (get!22643 lt!2390719))) (size!40431 (_2!36655 (get!22643 lt!2390719))))))))

(declare-fun d!2038746 () Bool)

(assert (=> d!2038746 e!3937047))

(declare-fun res!2668219 () Bool)

(assert (=> d!2038746 (=> (not res!2668219) (not e!3937047))))

(assert (=> d!2038746 (= res!2668219 (= (content!12449 lt!2390819) ((_ map or) (content!12449 (_1!36655 (get!22643 lt!2390719))) (content!12449 (_2!36655 (get!22643 lt!2390719))))))))

(assert (=> d!2038746 (= lt!2390819 e!3937046)))

(declare-fun c!1191014 () Bool)

(assert (=> d!2038746 (= c!1191014 ((_ is Nil!65295) (_1!36655 (get!22643 lt!2390719))))))

(assert (=> d!2038746 (= (++!14455 (_1!36655 (get!22643 lt!2390719)) (_2!36655 (get!22643 lt!2390719))) lt!2390819)))

(assert (= (and d!2038746 c!1191014) b!6496941))

(assert (= (and d!2038746 (not c!1191014)) b!6496942))

(assert (= (and d!2038746 res!2668219) b!6496943))

(assert (= (and b!6496943 res!2668218) b!6496944))

(declare-fun m!7285504 () Bool)

(assert (=> b!6496942 m!7285504))

(declare-fun m!7285506 () Bool)

(assert (=> b!6496943 m!7285506))

(declare-fun m!7285508 () Bool)

(assert (=> b!6496943 m!7285508))

(declare-fun m!7285510 () Bool)

(assert (=> b!6496943 m!7285510))

(declare-fun m!7285512 () Bool)

(assert (=> d!2038746 m!7285512))

(declare-fun m!7285514 () Bool)

(assert (=> d!2038746 m!7285514))

(declare-fun m!7285516 () Bool)

(assert (=> d!2038746 m!7285516))

(assert (=> b!6495347 d!2038746))

(assert (=> b!6495347 d!2038368))

(declare-fun c!1191016 () Bool)

(declare-fun call!562795 () Bool)

(declare-fun c!1191015 () Bool)

(declare-fun bm!562790 () Bool)

(assert (=> bm!562790 (= call!562795 (validRegex!8109 (ite c!1191015 (reg!16702 lt!2390730) (ite c!1191016 (regTwo!33259 lt!2390730) (regTwo!33258 lt!2390730)))))))

(declare-fun b!6496945 () Bool)

(declare-fun e!3937052 () Bool)

(declare-fun e!3937049 () Bool)

(assert (=> b!6496945 (= e!3937052 e!3937049)))

(declare-fun res!2668221 () Bool)

(assert (=> b!6496945 (= res!2668221 (not (nullable!6366 (reg!16702 lt!2390730))))))

(assert (=> b!6496945 (=> (not res!2668221) (not e!3937049))))

(declare-fun b!6496946 () Bool)

(declare-fun e!3937051 () Bool)

(declare-fun call!562797 () Bool)

(assert (=> b!6496946 (= e!3937051 call!562797)))

(declare-fun bm!562791 () Bool)

(declare-fun call!562796 () Bool)

(assert (=> bm!562791 (= call!562796 (validRegex!8109 (ite c!1191016 (regOne!33259 lt!2390730) (regOne!33258 lt!2390730))))))

(declare-fun b!6496947 () Bool)

(declare-fun e!3937050 () Bool)

(assert (=> b!6496947 (= e!3937050 e!3937052)))

(assert (=> b!6496947 (= c!1191015 ((_ is Star!16373) lt!2390730))))

(declare-fun b!6496948 () Bool)

(declare-fun res!2668223 () Bool)

(declare-fun e!3937053 () Bool)

(assert (=> b!6496948 (=> res!2668223 e!3937053)))

(assert (=> b!6496948 (= res!2668223 (not ((_ is Concat!25218) lt!2390730)))))

(declare-fun e!3937048 () Bool)

(assert (=> b!6496948 (= e!3937048 e!3937053)))

(declare-fun b!6496949 () Bool)

(declare-fun e!3937054 () Bool)

(assert (=> b!6496949 (= e!3937054 call!562797)))

(declare-fun b!6496950 () Bool)

(assert (=> b!6496950 (= e!3937052 e!3937048)))

(assert (=> b!6496950 (= c!1191016 ((_ is Union!16373) lt!2390730))))

(declare-fun b!6496951 () Bool)

(assert (=> b!6496951 (= e!3937053 e!3937054)))

(declare-fun res!2668224 () Bool)

(assert (=> b!6496951 (=> (not res!2668224) (not e!3937054))))

(assert (=> b!6496951 (= res!2668224 call!562796)))

(declare-fun bm!562792 () Bool)

(assert (=> bm!562792 (= call!562797 call!562795)))

(declare-fun d!2038748 () Bool)

(declare-fun res!2668220 () Bool)

(assert (=> d!2038748 (=> res!2668220 e!3937050)))

(assert (=> d!2038748 (= res!2668220 ((_ is ElementMatch!16373) lt!2390730))))

(assert (=> d!2038748 (= (validRegex!8109 lt!2390730) e!3937050)))

(declare-fun b!6496952 () Bool)

(assert (=> b!6496952 (= e!3937049 call!562795)))

(declare-fun b!6496953 () Bool)

(declare-fun res!2668222 () Bool)

(assert (=> b!6496953 (=> (not res!2668222) (not e!3937051))))

(assert (=> b!6496953 (= res!2668222 call!562796)))

(assert (=> b!6496953 (= e!3937048 e!3937051)))

(assert (= (and d!2038748 (not res!2668220)) b!6496947))

(assert (= (and b!6496947 c!1191015) b!6496945))

(assert (= (and b!6496947 (not c!1191015)) b!6496950))

(assert (= (and b!6496945 res!2668221) b!6496952))

(assert (= (and b!6496950 c!1191016) b!6496953))

(assert (= (and b!6496950 (not c!1191016)) b!6496948))

(assert (= (and b!6496953 res!2668222) b!6496946))

(assert (= (and b!6496948 (not res!2668223)) b!6496951))

(assert (= (and b!6496951 res!2668224) b!6496949))

(assert (= (or b!6496946 b!6496949) bm!562792))

(assert (= (or b!6496953 b!6496951) bm!562791))

(assert (= (or b!6496952 bm!562792) bm!562790))

(declare-fun m!7285518 () Bool)

(assert (=> bm!562790 m!7285518))

(declare-fun m!7285520 () Bool)

(assert (=> b!6496945 m!7285520))

(declare-fun m!7285522 () Bool)

(assert (=> bm!562791 m!7285522))

(assert (=> d!2038138 d!2038748))

(assert (=> d!2038138 d!2038192))

(assert (=> d!2038138 d!2038194))

(assert (=> b!6495619 d!2038460))

(declare-fun d!2038750 () Bool)

(assert (=> d!2038750 (= (isConcat!1286 lt!2390741) ((_ is Concat!25218) lt!2390741))))

(assert (=> b!6495430 d!2038750))

(assert (=> d!2038132 d!2038638))

(declare-fun d!2038752 () Bool)

(assert (=> d!2038752 (= (isUnion!1201 lt!2390751) ((_ is Union!16373) lt!2390751))))

(assert (=> b!6495515 d!2038752))

(declare-fun d!2038754 () Bool)

(assert (=> d!2038754 (= (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))) (nullableFct!2302 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun bs!1650317 () Bool)

(assert (= bs!1650317 d!2038754))

(declare-fun m!7285524 () Bool)

(assert (=> bs!1650317 m!7285524))

(assert (=> b!6495473 d!2038754))

(declare-fun d!2038756 () Bool)

(declare-fun c!1191017 () Bool)

(assert (=> d!2038756 (= c!1191017 (isEmpty!37494 (tail!12302 s!2326)))))

(declare-fun e!3937055 () Bool)

(assert (=> d!2038756 (= (matchZipper!2385 (derivationStepZipper!2339 z!1189 (head!13217 s!2326)) (tail!12302 s!2326)) e!3937055)))

(declare-fun b!6496954 () Bool)

(assert (=> b!6496954 (= e!3937055 (nullableZipper!2128 (derivationStepZipper!2339 z!1189 (head!13217 s!2326))))))

(declare-fun b!6496955 () Bool)

(assert (=> b!6496955 (= e!3937055 (matchZipper!2385 (derivationStepZipper!2339 (derivationStepZipper!2339 z!1189 (head!13217 s!2326)) (head!13217 (tail!12302 s!2326))) (tail!12302 (tail!12302 s!2326))))))

(assert (= (and d!2038756 c!1191017) b!6496954))

(assert (= (and d!2038756 (not c!1191017)) b!6496955))

(assert (=> d!2038756 m!7284076))

(assert (=> d!2038756 m!7284264))

(assert (=> b!6496954 m!7284082))

(declare-fun m!7285526 () Bool)

(assert (=> b!6496954 m!7285526))

(assert (=> b!6496955 m!7284076))

(assert (=> b!6496955 m!7284874))

(assert (=> b!6496955 m!7284082))

(assert (=> b!6496955 m!7284874))

(declare-fun m!7285528 () Bool)

(assert (=> b!6496955 m!7285528))

(assert (=> b!6496955 m!7284076))

(assert (=> b!6496955 m!7284878))

(assert (=> b!6496955 m!7285528))

(assert (=> b!6496955 m!7284878))

(declare-fun m!7285530 () Bool)

(assert (=> b!6496955 m!7285530))

(assert (=> b!6495378 d!2038756))

(declare-fun bs!1650318 () Bool)

(declare-fun d!2038758 () Bool)

(assert (= bs!1650318 (and d!2038758 d!2038728)))

(declare-fun lambda!359951 () Int)

(assert (=> bs!1650318 (= (= (head!13217 s!2326) (head!13217 (t!379049 s!2326))) (= lambda!359951 lambda!359949))))

(declare-fun bs!1650319 () Bool)

(assert (= bs!1650319 (and d!2038758 d!2038686)))

(assert (=> bs!1650319 (= (= (head!13217 s!2326) (head!13217 (t!379049 s!2326))) (= lambda!359951 lambda!359933))))

(declare-fun bs!1650320 () Bool)

(assert (= bs!1650320 (and d!2038758 d!2038534)))

(assert (=> bs!1650320 (= (= (head!13217 s!2326) (head!13217 (t!379049 s!2326))) (= lambda!359951 lambda!359915))))

(declare-fun bs!1650321 () Bool)

(assert (= bs!1650321 (and d!2038758 b!6494901)))

(assert (=> bs!1650321 (= (= (head!13217 s!2326) (h!71743 s!2326)) (= lambda!359951 lambda!359804))))

(declare-fun bs!1650322 () Bool)

(assert (= bs!1650322 (and d!2038758 d!2038164)))

(assert (=> bs!1650322 (= (= (head!13217 s!2326) (h!71743 s!2326)) (= lambda!359951 lambda!359856))))

(declare-fun bs!1650323 () Bool)

(assert (= bs!1650323 (and d!2038758 d!2038498)))

(assert (=> bs!1650323 (= lambda!359951 lambda!359911)))

(declare-fun bs!1650324 () Bool)

(assert (= bs!1650324 (and d!2038758 d!2038516)))

(assert (=> bs!1650324 (= (= (head!13217 s!2326) (head!13217 (t!379049 s!2326))) (= lambda!359951 lambda!359913))))

(assert (=> d!2038758 true))

(assert (=> d!2038758 (= (derivationStepZipper!2339 z!1189 (head!13217 s!2326)) (flatMap!1878 z!1189 lambda!359951))))

(declare-fun bs!1650325 () Bool)

(assert (= bs!1650325 d!2038758))

(declare-fun m!7285532 () Bool)

(assert (=> bs!1650325 m!7285532))

(assert (=> b!6495378 d!2038758))

(assert (=> b!6495378 d!2038460))

(assert (=> b!6495378 d!2038502))

(declare-fun d!2038760 () Bool)

(assert (=> d!2038760 (= (nullable!6366 (regOne!33258 (reg!16702 (regOne!33258 r!7292)))) (nullableFct!2302 (regOne!33258 (reg!16702 (regOne!33258 r!7292)))))))

(declare-fun bs!1650326 () Bool)

(assert (= bs!1650326 d!2038760))

(declare-fun m!7285534 () Bool)

(assert (=> bs!1650326 m!7285534))

(assert (=> b!6495535 d!2038760))

(declare-fun d!2038762 () Bool)

(assert (=> d!2038762 (= (head!13218 (exprs!6257 (h!71744 zl!343))) (h!71742 (exprs!6257 (h!71744 zl!343))))))

(assert (=> b!6495422 d!2038762))

(assert (=> b!6495528 d!2038156))

(declare-fun bs!1650327 () Bool)

(declare-fun d!2038764 () Bool)

(assert (= bs!1650327 (and d!2038764 d!2038596)))

(declare-fun lambda!359952 () Int)

(assert (=> bs!1650327 (= lambda!359952 lambda!359921)))

(declare-fun bs!1650328 () Bool)

(assert (= bs!1650328 (and d!2038764 d!2038172)))

(assert (=> bs!1650328 (= lambda!359952 lambda!359857)))

(declare-fun bs!1650329 () Bool)

(assert (= bs!1650329 (and d!2038764 d!2038112)))

(assert (=> bs!1650329 (= lambda!359952 lambda!359841)))

(declare-fun bs!1650330 () Bool)

(assert (= bs!1650330 (and d!2038764 d!2038604)))

(assert (=> bs!1650330 (= lambda!359952 lambda!359923)))

(declare-fun bs!1650331 () Bool)

(assert (= bs!1650331 (and d!2038764 d!2038156)))

(assert (=> bs!1650331 (= lambda!359952 lambda!359853)))

(declare-fun bs!1650332 () Bool)

(assert (= bs!1650332 (and d!2038764 d!2038626)))

(assert (=> bs!1650332 (= lambda!359952 lambda!359925)))

(declare-fun bs!1650333 () Bool)

(assert (= bs!1650333 (and d!2038764 d!2038710)))

(assert (=> bs!1650333 (= lambda!359952 lambda!359944)))

(declare-fun bs!1650334 () Bool)

(assert (= bs!1650334 (and d!2038764 d!2038214)))

(assert (=> bs!1650334 (= lambda!359952 lambda!359872)))

(declare-fun bs!1650335 () Bool)

(assert (= bs!1650335 (and d!2038764 d!2038712)))

(assert (=> bs!1650335 (= lambda!359952 lambda!359945)))

(declare-fun bs!1650336 () Bool)

(assert (= bs!1650336 (and d!2038764 d!2038476)))

(assert (=> bs!1650336 (= lambda!359952 lambda!359908)))

(declare-fun bs!1650337 () Bool)

(assert (= bs!1650337 (and d!2038764 d!2038194)))

(assert (=> bs!1650337 (= lambda!359952 lambda!359863)))

(declare-fun bs!1650338 () Bool)

(assert (= bs!1650338 (and d!2038764 d!2038192)))

(assert (=> bs!1650338 (= lambda!359952 lambda!359860)))

(declare-fun lt!2390820 () List!65418)

(assert (=> d!2038764 (forall!15554 lt!2390820 lambda!359952)))

(declare-fun e!3937056 () List!65418)

(assert (=> d!2038764 (= lt!2390820 e!3937056)))

(declare-fun c!1191018 () Bool)

(assert (=> d!2038764 (= c!1191018 ((_ is Cons!65296) (t!379050 zl!343)))))

(assert (=> d!2038764 (= (unfocusZipperList!1794 (t!379050 zl!343)) lt!2390820)))

(declare-fun b!6496956 () Bool)

(assert (=> b!6496956 (= e!3937056 (Cons!65294 (generalisedConcat!1970 (exprs!6257 (h!71744 (t!379050 zl!343)))) (unfocusZipperList!1794 (t!379050 (t!379050 zl!343)))))))

(declare-fun b!6496957 () Bool)

(assert (=> b!6496957 (= e!3937056 Nil!65294)))

(assert (= (and d!2038764 c!1191018) b!6496956))

(assert (= (and d!2038764 (not c!1191018)) b!6496957))

(declare-fun m!7285536 () Bool)

(assert (=> d!2038764 m!7285536))

(declare-fun m!7285538 () Bool)

(assert (=> b!6496956 m!7285538))

(declare-fun m!7285540 () Bool)

(assert (=> b!6496956 m!7285540))

(assert (=> b!6495528 d!2038764))

(declare-fun d!2038766 () Bool)

(declare-fun res!2668225 () Bool)

(declare-fun e!3937057 () Bool)

(assert (=> d!2038766 (=> res!2668225 e!3937057)))

(assert (=> d!2038766 (= res!2668225 ((_ is Nil!65294) lt!2390754))))

(assert (=> d!2038766 (= (forall!15554 lt!2390754 lambda!359863) e!3937057)))

(declare-fun b!6496958 () Bool)

(declare-fun e!3937058 () Bool)

(assert (=> b!6496958 (= e!3937057 e!3937058)))

(declare-fun res!2668226 () Bool)

(assert (=> b!6496958 (=> (not res!2668226) (not e!3937058))))

(assert (=> b!6496958 (= res!2668226 (dynLambda!25937 lambda!359863 (h!71742 lt!2390754)))))

(declare-fun b!6496959 () Bool)

(assert (=> b!6496959 (= e!3937058 (forall!15554 (t!379048 lt!2390754) lambda!359863))))

(assert (= (and d!2038766 (not res!2668225)) b!6496958))

(assert (= (and b!6496958 res!2668226) b!6496959))

(declare-fun b_lambda!245937 () Bool)

(assert (=> (not b_lambda!245937) (not b!6496958)))

(declare-fun m!7285542 () Bool)

(assert (=> b!6496958 m!7285542))

(declare-fun m!7285544 () Bool)

(assert (=> b!6496959 m!7285544))

(assert (=> d!2038194 d!2038766))

(assert (=> bs!1649757 d!2038160))

(declare-fun d!2038768 () Bool)

(assert (=> d!2038768 (= (flatMap!1878 lt!2390657 lambda!359856) (choose!48216 lt!2390657 lambda!359856))))

(declare-fun bs!1650339 () Bool)

(assert (= bs!1650339 d!2038768))

(declare-fun m!7285546 () Bool)

(assert (=> bs!1650339 m!7285546))

(assert (=> d!2038164 d!2038768))

(declare-fun b!6496960 () Bool)

(declare-fun e!3937061 () (InoxSet Context!11514))

(assert (=> b!6496960 (= e!3937061 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562793 () Bool)

(declare-fun call!562800 () List!65418)

(declare-fun call!562801 () List!65418)

(assert (=> bm!562793 (= call!562800 call!562801)))

(declare-fun b!6496961 () Bool)

(declare-fun e!3937060 () (InoxSet Context!11514))

(declare-fun e!3937062 () (InoxSet Context!11514))

(assert (=> b!6496961 (= e!3937060 e!3937062)))

(declare-fun c!1191022 () Bool)

(assert (=> b!6496961 (= c!1191022 ((_ is Concat!25218) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6496962 () Bool)

(declare-fun e!3937063 () (InoxSet Context!11514))

(assert (=> b!6496962 (= e!3937063 (store ((as const (Array Context!11514 Bool)) false) (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) true))))

(declare-fun bm!562794 () Bool)

(declare-fun c!1191019 () Bool)

(assert (=> bm!562794 (= call!562801 ($colon$colon!2224 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343))))) (ite (or c!1191019 c!1191022) (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (h!71742 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun d!2038770 () Bool)

(declare-fun c!1191021 () Bool)

(assert (=> d!2038770 (= c!1191021 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))) (= (c!1190447 (h!71742 (exprs!6257 (h!71744 zl!343)))) (h!71743 s!2326))))))

(assert (=> d!2038770 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 (h!71744 zl!343))) (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) (h!71743 s!2326)) e!3937063)))

(declare-fun b!6496963 () Bool)

(declare-fun e!3937059 () (InoxSet Context!11514))

(assert (=> b!6496963 (= e!3937063 e!3937059)))

(declare-fun c!1191020 () Bool)

(assert (=> b!6496963 (= c!1191020 ((_ is Union!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun bm!562795 () Bool)

(declare-fun call!562803 () (InoxSet Context!11514))

(declare-fun call!562798 () (InoxSet Context!11514))

(assert (=> bm!562795 (= call!562803 call!562798)))

(declare-fun b!6496964 () Bool)

(declare-fun call!562799 () (InoxSet Context!11514))

(assert (=> b!6496964 (= e!3937062 call!562799)))

(declare-fun bm!562796 () Bool)

(assert (=> bm!562796 (= call!562799 call!562803)))

(declare-fun call!562802 () (InoxSet Context!11514))

(declare-fun bm!562797 () Bool)

(assert (=> bm!562797 (= call!562802 (derivationStepZipperDown!1621 (ite c!1191020 (regOne!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))) (ite c!1191020 (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) (Context!11515 call!562801)) (h!71743 s!2326)))))

(declare-fun bm!562798 () Bool)

(assert (=> bm!562798 (= call!562798 (derivationStepZipperDown!1621 (ite c!1191020 (regTwo!33259 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1191019 (regTwo!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (ite c!1191022 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343)))) (reg!16702 (h!71742 (exprs!6257 (h!71744 zl!343))))))) (ite (or c!1191020 c!1191019) (Context!11515 (t!379048 (exprs!6257 (h!71744 zl!343)))) (Context!11515 call!562800)) (h!71743 s!2326)))))

(declare-fun b!6496965 () Bool)

(declare-fun e!3937064 () Bool)

(assert (=> b!6496965 (= e!3937064 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 (h!71744 zl!343))))))))

(declare-fun b!6496966 () Bool)

(assert (=> b!6496966 (= e!3937059 ((_ map or) call!562802 call!562798))))

(declare-fun b!6496967 () Bool)

(declare-fun c!1191023 () Bool)

(assert (=> b!6496967 (= c!1191023 ((_ is Star!16373) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6496967 (= e!3937062 e!3937061)))

(declare-fun b!6496968 () Bool)

(assert (=> b!6496968 (= e!3937060 ((_ map or) call!562802 call!562803))))

(declare-fun b!6496969 () Bool)

(assert (=> b!6496969 (= e!3937061 call!562799)))

(declare-fun b!6496970 () Bool)

(assert (=> b!6496970 (= c!1191019 e!3937064)))

(declare-fun res!2668227 () Bool)

(assert (=> b!6496970 (=> (not res!2668227) (not e!3937064))))

(assert (=> b!6496970 (= res!2668227 ((_ is Concat!25218) (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> b!6496970 (= e!3937059 e!3937060)))

(assert (= (and d!2038770 c!1191021) b!6496962))

(assert (= (and d!2038770 (not c!1191021)) b!6496963))

(assert (= (and b!6496963 c!1191020) b!6496966))

(assert (= (and b!6496963 (not c!1191020)) b!6496970))

(assert (= (and b!6496970 res!2668227) b!6496965))

(assert (= (and b!6496970 c!1191019) b!6496968))

(assert (= (and b!6496970 (not c!1191019)) b!6496961))

(assert (= (and b!6496961 c!1191022) b!6496964))

(assert (= (and b!6496961 (not c!1191022)) b!6496967))

(assert (= (and b!6496967 c!1191023) b!6496969))

(assert (= (and b!6496967 (not c!1191023)) b!6496960))

(assert (= (or b!6496964 b!6496969) bm!562793))

(assert (= (or b!6496964 b!6496969) bm!562796))

(assert (= (or b!6496968 bm!562793) bm!562794))

(assert (= (or b!6496968 bm!562796) bm!562795))

(assert (= (or b!6496966 bm!562795) bm!562798))

(assert (= (or b!6496966 b!6496968) bm!562797))

(declare-fun m!7285548 () Bool)

(assert (=> bm!562794 m!7285548))

(declare-fun m!7285550 () Bool)

(assert (=> bm!562798 m!7285550))

(declare-fun m!7285552 () Bool)

(assert (=> b!6496962 m!7285552))

(assert (=> b!6496965 m!7284198))

(declare-fun m!7285554 () Bool)

(assert (=> bm!562797 m!7285554))

(assert (=> bm!562515 d!2038770))

(assert (=> d!2038202 d!2038200))

(assert (=> d!2038202 d!2038198))

(declare-fun d!2038772 () Bool)

(assert (=> d!2038772 (= (matchR!8556 r!7292 s!2326) (matchRSpec!3474 r!7292 s!2326))))

(assert (=> d!2038772 true))

(declare-fun _$88!5199 () Unit!158827)

(assert (=> d!2038772 (= (choose!48218 r!7292 s!2326) _$88!5199)))

(declare-fun bs!1650340 () Bool)

(assert (= bs!1650340 d!2038772))

(assert (=> bs!1650340 m!7283616))

(assert (=> bs!1650340 m!7283614))

(assert (=> d!2038202 d!2038772))

(assert (=> d!2038202 d!2038210))

(declare-fun b!6496971 () Bool)

(declare-fun e!3937067 () (InoxSet Context!11514))

(assert (=> b!6496971 (= e!3937067 ((as const (Array Context!11514 Bool)) false))))

(declare-fun bm!562799 () Bool)

(declare-fun call!562806 () List!65418)

(declare-fun call!562807 () List!65418)

(assert (=> bm!562799 (= call!562806 call!562807)))

(declare-fun b!6496972 () Bool)

(declare-fun e!3937066 () (InoxSet Context!11514))

(declare-fun e!3937068 () (InoxSet Context!11514))

(assert (=> b!6496972 (= e!3937066 e!3937068)))

(declare-fun c!1191027 () Bool)

(assert (=> b!6496972 (= c!1191027 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390633))))))

(declare-fun b!6496973 () Bool)

(declare-fun e!3937069 () (InoxSet Context!11514))

(assert (=> b!6496973 (= e!3937069 (store ((as const (Array Context!11514 Bool)) false) (Context!11515 (t!379048 (exprs!6257 lt!2390633))) true))))

(declare-fun c!1191024 () Bool)

(declare-fun bm!562800 () Bool)

(assert (=> bm!562800 (= call!562807 ($colon$colon!2224 (exprs!6257 (Context!11515 (t!379048 (exprs!6257 lt!2390633)))) (ite (or c!1191024 c!1191027) (regTwo!33258 (h!71742 (exprs!6257 lt!2390633))) (h!71742 (exprs!6257 lt!2390633)))))))

(declare-fun d!2038774 () Bool)

(declare-fun c!1191026 () Bool)

(assert (=> d!2038774 (= c!1191026 (and ((_ is ElementMatch!16373) (h!71742 (exprs!6257 lt!2390633))) (= (c!1190447 (h!71742 (exprs!6257 lt!2390633))) (h!71743 s!2326))))))

(assert (=> d!2038774 (= (derivationStepZipperDown!1621 (h!71742 (exprs!6257 lt!2390633)) (Context!11515 (t!379048 (exprs!6257 lt!2390633))) (h!71743 s!2326)) e!3937069)))

(declare-fun b!6496974 () Bool)

(declare-fun e!3937065 () (InoxSet Context!11514))

(assert (=> b!6496974 (= e!3937069 e!3937065)))

(declare-fun c!1191025 () Bool)

(assert (=> b!6496974 (= c!1191025 ((_ is Union!16373) (h!71742 (exprs!6257 lt!2390633))))))

(declare-fun bm!562801 () Bool)

(declare-fun call!562809 () (InoxSet Context!11514))

(declare-fun call!562804 () (InoxSet Context!11514))

(assert (=> bm!562801 (= call!562809 call!562804)))

(declare-fun b!6496975 () Bool)

(declare-fun call!562805 () (InoxSet Context!11514))

(assert (=> b!6496975 (= e!3937068 call!562805)))

(declare-fun bm!562802 () Bool)

(assert (=> bm!562802 (= call!562805 call!562809)))

(declare-fun bm!562803 () Bool)

(declare-fun call!562808 () (InoxSet Context!11514))

(assert (=> bm!562803 (= call!562808 (derivationStepZipperDown!1621 (ite c!1191025 (regOne!33259 (h!71742 (exprs!6257 lt!2390633))) (regOne!33258 (h!71742 (exprs!6257 lt!2390633)))) (ite c!1191025 (Context!11515 (t!379048 (exprs!6257 lt!2390633))) (Context!11515 call!562807)) (h!71743 s!2326)))))

(declare-fun bm!562804 () Bool)

(assert (=> bm!562804 (= call!562804 (derivationStepZipperDown!1621 (ite c!1191025 (regTwo!33259 (h!71742 (exprs!6257 lt!2390633))) (ite c!1191024 (regTwo!33258 (h!71742 (exprs!6257 lt!2390633))) (ite c!1191027 (regOne!33258 (h!71742 (exprs!6257 lt!2390633))) (reg!16702 (h!71742 (exprs!6257 lt!2390633)))))) (ite (or c!1191025 c!1191024) (Context!11515 (t!379048 (exprs!6257 lt!2390633))) (Context!11515 call!562806)) (h!71743 s!2326)))))

(declare-fun b!6496976 () Bool)

(declare-fun e!3937070 () Bool)

(assert (=> b!6496976 (= e!3937070 (nullable!6366 (regOne!33258 (h!71742 (exprs!6257 lt!2390633)))))))

(declare-fun b!6496977 () Bool)

(assert (=> b!6496977 (= e!3937065 ((_ map or) call!562808 call!562804))))

(declare-fun b!6496978 () Bool)

(declare-fun c!1191028 () Bool)

(assert (=> b!6496978 (= c!1191028 ((_ is Star!16373) (h!71742 (exprs!6257 lt!2390633))))))

(assert (=> b!6496978 (= e!3937068 e!3937067)))

(declare-fun b!6496979 () Bool)

(assert (=> b!6496979 (= e!3937066 ((_ map or) call!562808 call!562809))))

(declare-fun b!6496980 () Bool)

(assert (=> b!6496980 (= e!3937067 call!562805)))

(declare-fun b!6496981 () Bool)

(assert (=> b!6496981 (= c!1191024 e!3937070)))

(declare-fun res!2668228 () Bool)

(assert (=> b!6496981 (=> (not res!2668228) (not e!3937070))))

(assert (=> b!6496981 (= res!2668228 ((_ is Concat!25218) (h!71742 (exprs!6257 lt!2390633))))))

(assert (=> b!6496981 (= e!3937065 e!3937066)))

(assert (= (and d!2038774 c!1191026) b!6496973))

(assert (= (and d!2038774 (not c!1191026)) b!6496974))

(assert (= (and b!6496974 c!1191025) b!6496977))

(assert (= (and b!6496974 (not c!1191025)) b!6496981))

(assert (= (and b!6496981 res!2668228) b!6496976))

(assert (= (and b!6496981 c!1191024) b!6496979))

(assert (= (and b!6496981 (not c!1191024)) b!6496972))

(assert (= (and b!6496972 c!1191027) b!6496975))

(assert (= (and b!6496972 (not c!1191027)) b!6496978))

(assert (= (and b!6496978 c!1191028) b!6496980))

(assert (= (and b!6496978 (not c!1191028)) b!6496971))

(assert (= (or b!6496975 b!6496980) bm!562799))

(assert (= (or b!6496975 b!6496980) bm!562802))

(assert (= (or b!6496979 bm!562799) bm!562800))

(assert (= (or b!6496979 bm!562802) bm!562801))

(assert (= (or b!6496977 bm!562801) bm!562804))

(assert (= (or b!6496977 b!6496979) bm!562803))

(declare-fun m!7285556 () Bool)

(assert (=> bm!562800 m!7285556))

(declare-fun m!7285558 () Bool)

(assert (=> bm!562804 m!7285558))

(declare-fun m!7285560 () Bool)

(assert (=> b!6496973 m!7285560))

(declare-fun m!7285562 () Bool)

(assert (=> b!6496976 m!7285562))

(declare-fun m!7285564 () Bool)

(assert (=> bm!562803 m!7285564))

(assert (=> bm!562514 d!2038774))

(assert (=> b!6495615 d!2038590))

(assert (=> b!6495615 d!2038502))

(declare-fun d!2038776 () Bool)

(assert (=> d!2038776 (= (nullable!6366 (h!71742 (exprs!6257 lt!2390632))) (nullableFct!2302 (h!71742 (exprs!6257 lt!2390632))))))

(declare-fun bs!1650341 () Bool)

(assert (= bs!1650341 d!2038776))

(declare-fun m!7285566 () Bool)

(assert (=> bs!1650341 m!7285566))

(assert (=> b!6495392 d!2038776))

(declare-fun c!1191030 () Bool)

(declare-fun c!1191029 () Bool)

(declare-fun bm!562805 () Bool)

(declare-fun call!562810 () Bool)

(assert (=> bm!562805 (= call!562810 (validRegex!8109 (ite c!1191029 (reg!16702 lt!2390743) (ite c!1191030 (regTwo!33259 lt!2390743) (regTwo!33258 lt!2390743)))))))

(declare-fun b!6496982 () Bool)

(declare-fun e!3937075 () Bool)

(declare-fun e!3937072 () Bool)

(assert (=> b!6496982 (= e!3937075 e!3937072)))

(declare-fun res!2668230 () Bool)

(assert (=> b!6496982 (= res!2668230 (not (nullable!6366 (reg!16702 lt!2390743))))))

(assert (=> b!6496982 (=> (not res!2668230) (not e!3937072))))

(declare-fun b!6496983 () Bool)

(declare-fun e!3937074 () Bool)

(declare-fun call!562812 () Bool)

(assert (=> b!6496983 (= e!3937074 call!562812)))

(declare-fun bm!562806 () Bool)

(declare-fun call!562811 () Bool)

(assert (=> bm!562806 (= call!562811 (validRegex!8109 (ite c!1191030 (regOne!33259 lt!2390743) (regOne!33258 lt!2390743))))))

(declare-fun b!6496984 () Bool)

(declare-fun e!3937073 () Bool)

(assert (=> b!6496984 (= e!3937073 e!3937075)))

(assert (=> b!6496984 (= c!1191029 ((_ is Star!16373) lt!2390743))))

(declare-fun b!6496985 () Bool)

(declare-fun res!2668232 () Bool)

(declare-fun e!3937076 () Bool)

(assert (=> b!6496985 (=> res!2668232 e!3937076)))

(assert (=> b!6496985 (= res!2668232 (not ((_ is Concat!25218) lt!2390743)))))

(declare-fun e!3937071 () Bool)

(assert (=> b!6496985 (= e!3937071 e!3937076)))

(declare-fun b!6496986 () Bool)

(declare-fun e!3937077 () Bool)

(assert (=> b!6496986 (= e!3937077 call!562812)))

(declare-fun b!6496987 () Bool)

(assert (=> b!6496987 (= e!3937075 e!3937071)))

(assert (=> b!6496987 (= c!1191030 ((_ is Union!16373) lt!2390743))))

(declare-fun b!6496988 () Bool)

(assert (=> b!6496988 (= e!3937076 e!3937077)))

(declare-fun res!2668233 () Bool)

(assert (=> b!6496988 (=> (not res!2668233) (not e!3937077))))

(assert (=> b!6496988 (= res!2668233 call!562811)))

(declare-fun bm!562807 () Bool)

(assert (=> bm!562807 (= call!562812 call!562810)))

(declare-fun d!2038778 () Bool)

(declare-fun res!2668229 () Bool)

(assert (=> d!2038778 (=> res!2668229 e!3937073)))

(assert (=> d!2038778 (= res!2668229 ((_ is ElementMatch!16373) lt!2390743))))

(assert (=> d!2038778 (= (validRegex!8109 lt!2390743) e!3937073)))

(declare-fun b!6496989 () Bool)

(assert (=> b!6496989 (= e!3937072 call!562810)))

(declare-fun b!6496990 () Bool)

(declare-fun res!2668231 () Bool)

(assert (=> b!6496990 (=> (not res!2668231) (not e!3937074))))

(assert (=> b!6496990 (= res!2668231 call!562811)))

(assert (=> b!6496990 (= e!3937071 e!3937074)))

(assert (= (and d!2038778 (not res!2668229)) b!6496984))

(assert (= (and b!6496984 c!1191029) b!6496982))

(assert (= (and b!6496984 (not c!1191029)) b!6496987))

(assert (= (and b!6496982 res!2668230) b!6496989))

(assert (= (and b!6496987 c!1191030) b!6496990))

(assert (= (and b!6496987 (not c!1191030)) b!6496985))

(assert (= (and b!6496990 res!2668231) b!6496983))

(assert (= (and b!6496985 (not res!2668232)) b!6496988))

(assert (= (and b!6496988 res!2668233) b!6496986))

(assert (= (or b!6496983 b!6496986) bm!562807))

(assert (= (or b!6496990 b!6496988) bm!562806))

(assert (= (or b!6496989 bm!562807) bm!562805))

(declare-fun m!7285568 () Bool)

(assert (=> bm!562805 m!7285568))

(declare-fun m!7285570 () Bool)

(assert (=> b!6496982 m!7285570))

(declare-fun m!7285572 () Bool)

(assert (=> bm!562806 m!7285572))

(assert (=> d!2038168 d!2038778))

(declare-fun bs!1650342 () Bool)

(declare-fun d!2038780 () Bool)

(assert (= bs!1650342 (and d!2038780 d!2038596)))

(declare-fun lambda!359953 () Int)

(assert (=> bs!1650342 (= lambda!359953 lambda!359921)))

(declare-fun bs!1650343 () Bool)

(assert (= bs!1650343 (and d!2038780 d!2038172)))

(assert (=> bs!1650343 (= lambda!359953 lambda!359857)))

(declare-fun bs!1650344 () Bool)

(assert (= bs!1650344 (and d!2038780 d!2038112)))

(assert (=> bs!1650344 (= lambda!359953 lambda!359841)))

(declare-fun bs!1650345 () Bool)

(assert (= bs!1650345 (and d!2038780 d!2038156)))

(assert (=> bs!1650345 (= lambda!359953 lambda!359853)))

(declare-fun bs!1650346 () Bool)

(assert (= bs!1650346 (and d!2038780 d!2038626)))

(assert (=> bs!1650346 (= lambda!359953 lambda!359925)))

(declare-fun bs!1650347 () Bool)

(assert (= bs!1650347 (and d!2038780 d!2038710)))

(assert (=> bs!1650347 (= lambda!359953 lambda!359944)))

(declare-fun bs!1650348 () Bool)

(assert (= bs!1650348 (and d!2038780 d!2038764)))

(assert (=> bs!1650348 (= lambda!359953 lambda!359952)))

(declare-fun bs!1650349 () Bool)

(assert (= bs!1650349 (and d!2038780 d!2038604)))

(assert (=> bs!1650349 (= lambda!359953 lambda!359923)))

(declare-fun bs!1650350 () Bool)

(assert (= bs!1650350 (and d!2038780 d!2038214)))

(assert (=> bs!1650350 (= lambda!359953 lambda!359872)))

(declare-fun bs!1650351 () Bool)

(assert (= bs!1650351 (and d!2038780 d!2038712)))

(assert (=> bs!1650351 (= lambda!359953 lambda!359945)))

(declare-fun bs!1650352 () Bool)

(assert (= bs!1650352 (and d!2038780 d!2038476)))

(assert (=> bs!1650352 (= lambda!359953 lambda!359908)))

(declare-fun bs!1650353 () Bool)

(assert (= bs!1650353 (and d!2038780 d!2038194)))

(assert (=> bs!1650353 (= lambda!359953 lambda!359863)))

(declare-fun bs!1650354 () Bool)

(assert (= bs!1650354 (and d!2038780 d!2038192)))

(assert (=> bs!1650354 (= lambda!359953 lambda!359860)))

(declare-fun b!6496991 () Bool)

(declare-fun e!3937080 () Regex!16373)

(assert (=> b!6496991 (= e!3937080 (Union!16373 (h!71742 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))) (generalisedUnion!2217 (t!379048 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))))))))

(declare-fun b!6496992 () Bool)

(declare-fun e!3937079 () Bool)

(declare-fun lt!2390821 () Regex!16373)

(assert (=> b!6496992 (= e!3937079 (isUnion!1201 lt!2390821))))

(declare-fun e!3937082 () Bool)

(assert (=> d!2038780 e!3937082))

(declare-fun res!2668235 () Bool)

(assert (=> d!2038780 (=> (not res!2668235) (not e!3937082))))

(assert (=> d!2038780 (= res!2668235 (validRegex!8109 lt!2390821))))

(declare-fun e!3937081 () Regex!16373)

(assert (=> d!2038780 (= lt!2390821 e!3937081)))

(declare-fun c!1191034 () Bool)

(declare-fun e!3937083 () Bool)

(assert (=> d!2038780 (= c!1191034 e!3937083)))

(declare-fun res!2668234 () Bool)

(assert (=> d!2038780 (=> (not res!2668234) (not e!3937083))))

(assert (=> d!2038780 (= res!2668234 ((_ is Cons!65294) (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))))))

(assert (=> d!2038780 (forall!15554 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296)) lambda!359953)))

(assert (=> d!2038780 (= (generalisedUnion!2217 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))) lt!2390821)))

(declare-fun b!6496993 () Bool)

(assert (=> b!6496993 (= e!3937083 (isEmpty!37489 (t!379048 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296)))))))

(declare-fun b!6496994 () Bool)

(declare-fun e!3937078 () Bool)

(assert (=> b!6496994 (= e!3937078 e!3937079)))

(declare-fun c!1191031 () Bool)

(assert (=> b!6496994 (= c!1191031 (isEmpty!37489 (tail!12303 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296)))))))

(declare-fun b!6496995 () Bool)

(assert (=> b!6496995 (= e!3937078 (isEmptyLang!1771 lt!2390821))))

(declare-fun b!6496996 () Bool)

(assert (=> b!6496996 (= e!3937082 e!3937078)))

(declare-fun c!1191032 () Bool)

(assert (=> b!6496996 (= c!1191032 (isEmpty!37489 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))))))

(declare-fun b!6496997 () Bool)

(assert (=> b!6496997 (= e!3937081 e!3937080)))

(declare-fun c!1191033 () Bool)

(assert (=> b!6496997 (= c!1191033 ((_ is Cons!65294) (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))))))

(declare-fun b!6496998 () Bool)

(assert (=> b!6496998 (= e!3937079 (= lt!2390821 (head!13218 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296)))))))

(declare-fun b!6496999 () Bool)

(assert (=> b!6496999 (= e!3937080 EmptyLang!16373)))

(declare-fun b!6497000 () Bool)

(assert (=> b!6497000 (= e!3937081 (h!71742 (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296))))))

(assert (= (and d!2038780 res!2668234) b!6496993))

(assert (= (and d!2038780 c!1191034) b!6497000))

(assert (= (and d!2038780 (not c!1191034)) b!6496997))

(assert (= (and b!6496997 c!1191033) b!6496991))

(assert (= (and b!6496997 (not c!1191033)) b!6496999))

(assert (= (and d!2038780 res!2668235) b!6496996))

(assert (= (and b!6496996 c!1191032) b!6496995))

(assert (= (and b!6496996 (not c!1191032)) b!6496994))

(assert (= (and b!6496994 c!1191031) b!6496998))

(assert (= (and b!6496994 (not c!1191031)) b!6496992))

(assert (=> b!6496998 m!7284164))

(declare-fun m!7285574 () Bool)

(assert (=> b!6496998 m!7285574))

(declare-fun m!7285576 () Bool)

(assert (=> b!6496992 m!7285576))

(assert (=> b!6496994 m!7284164))

(declare-fun m!7285578 () Bool)

(assert (=> b!6496994 m!7285578))

(assert (=> b!6496994 m!7285578))

(declare-fun m!7285580 () Bool)

(assert (=> b!6496994 m!7285580))

(assert (=> b!6496996 m!7284164))

(declare-fun m!7285582 () Bool)

(assert (=> b!6496996 m!7285582))

(declare-fun m!7285584 () Bool)

(assert (=> d!2038780 m!7285584))

(assert (=> d!2038780 m!7284164))

(declare-fun m!7285586 () Bool)

(assert (=> d!2038780 m!7285586))

(declare-fun m!7285588 () Bool)

(assert (=> b!6496993 m!7285588))

(declare-fun m!7285590 () Bool)

(assert (=> b!6496995 m!7285590))

(declare-fun m!7285592 () Bool)

(assert (=> b!6496991 m!7285592))

(assert (=> d!2038168 d!2038780))

(declare-fun bs!1650355 () Bool)

(declare-fun d!2038782 () Bool)

(assert (= bs!1650355 (and d!2038782 d!2038596)))

(declare-fun lambda!359954 () Int)

(assert (=> bs!1650355 (= lambda!359954 lambda!359921)))

(declare-fun bs!1650356 () Bool)

(assert (= bs!1650356 (and d!2038782 d!2038112)))

(assert (=> bs!1650356 (= lambda!359954 lambda!359841)))

(declare-fun bs!1650357 () Bool)

(assert (= bs!1650357 (and d!2038782 d!2038156)))

(assert (=> bs!1650357 (= lambda!359954 lambda!359853)))

(declare-fun bs!1650358 () Bool)

(assert (= bs!1650358 (and d!2038782 d!2038626)))

(assert (=> bs!1650358 (= lambda!359954 lambda!359925)))

(declare-fun bs!1650359 () Bool)

(assert (= bs!1650359 (and d!2038782 d!2038710)))

(assert (=> bs!1650359 (= lambda!359954 lambda!359944)))

(declare-fun bs!1650360 () Bool)

(assert (= bs!1650360 (and d!2038782 d!2038172)))

(assert (=> bs!1650360 (= lambda!359954 lambda!359857)))

(declare-fun bs!1650361 () Bool)

(assert (= bs!1650361 (and d!2038782 d!2038780)))

(assert (=> bs!1650361 (= lambda!359954 lambda!359953)))

(declare-fun bs!1650362 () Bool)

(assert (= bs!1650362 (and d!2038782 d!2038764)))

(assert (=> bs!1650362 (= lambda!359954 lambda!359952)))

(declare-fun bs!1650363 () Bool)

(assert (= bs!1650363 (and d!2038782 d!2038604)))

(assert (=> bs!1650363 (= lambda!359954 lambda!359923)))

(declare-fun bs!1650364 () Bool)

(assert (= bs!1650364 (and d!2038782 d!2038214)))

(assert (=> bs!1650364 (= lambda!359954 lambda!359872)))

(declare-fun bs!1650365 () Bool)

(assert (= bs!1650365 (and d!2038782 d!2038712)))

(assert (=> bs!1650365 (= lambda!359954 lambda!359945)))

(declare-fun bs!1650366 () Bool)

(assert (= bs!1650366 (and d!2038782 d!2038476)))

(assert (=> bs!1650366 (= lambda!359954 lambda!359908)))

(declare-fun bs!1650367 () Bool)

(assert (= bs!1650367 (and d!2038782 d!2038194)))

(assert (=> bs!1650367 (= lambda!359954 lambda!359863)))

(declare-fun bs!1650368 () Bool)

(assert (= bs!1650368 (and d!2038782 d!2038192)))

(assert (=> bs!1650368 (= lambda!359954 lambda!359860)))

(declare-fun lt!2390822 () List!65418)

(assert (=> d!2038782 (forall!15554 lt!2390822 lambda!359954)))

(declare-fun e!3937084 () List!65418)

(assert (=> d!2038782 (= lt!2390822 e!3937084)))

(declare-fun c!1191035 () Bool)

(assert (=> d!2038782 (= c!1191035 ((_ is Cons!65296) (Cons!65296 lt!2390647 Nil!65296)))))

(assert (=> d!2038782 (= (unfocusZipperList!1794 (Cons!65296 lt!2390647 Nil!65296)) lt!2390822)))

(declare-fun b!6497001 () Bool)

(assert (=> b!6497001 (= e!3937084 (Cons!65294 (generalisedConcat!1970 (exprs!6257 (h!71744 (Cons!65296 lt!2390647 Nil!65296)))) (unfocusZipperList!1794 (t!379050 (Cons!65296 lt!2390647 Nil!65296)))))))

(declare-fun b!6497002 () Bool)

(assert (=> b!6497002 (= e!3937084 Nil!65294)))

(assert (= (and d!2038782 c!1191035) b!6497001))

(assert (= (and d!2038782 (not c!1191035)) b!6497002))

(declare-fun m!7285594 () Bool)

(assert (=> d!2038782 m!7285594))

(declare-fun m!7285596 () Bool)

(assert (=> b!6497001 m!7285596))

(declare-fun m!7285598 () Bool)

(assert (=> b!6497001 m!7285598))

(assert (=> d!2038168 d!2038782))

(assert (=> d!2038136 d!2038370))

(declare-fun bs!1650369 () Bool)

(declare-fun d!2038784 () Bool)

(assert (= bs!1650369 (and d!2038784 d!2038596)))

(declare-fun lambda!359955 () Int)

(assert (=> bs!1650369 (= lambda!359955 lambda!359921)))

(declare-fun bs!1650370 () Bool)

(assert (= bs!1650370 (and d!2038784 d!2038112)))

(assert (=> bs!1650370 (= lambda!359955 lambda!359841)))

(declare-fun bs!1650371 () Bool)

(assert (= bs!1650371 (and d!2038784 d!2038782)))

(assert (=> bs!1650371 (= lambda!359955 lambda!359954)))

(declare-fun bs!1650372 () Bool)

(assert (= bs!1650372 (and d!2038784 d!2038156)))

(assert (=> bs!1650372 (= lambda!359955 lambda!359853)))

(declare-fun bs!1650373 () Bool)

(assert (= bs!1650373 (and d!2038784 d!2038626)))

(assert (=> bs!1650373 (= lambda!359955 lambda!359925)))

(declare-fun bs!1650374 () Bool)

(assert (= bs!1650374 (and d!2038784 d!2038710)))

(assert (=> bs!1650374 (= lambda!359955 lambda!359944)))

(declare-fun bs!1650375 () Bool)

(assert (= bs!1650375 (and d!2038784 d!2038172)))

(assert (=> bs!1650375 (= lambda!359955 lambda!359857)))

(declare-fun bs!1650376 () Bool)

(assert (= bs!1650376 (and d!2038784 d!2038780)))

(assert (=> bs!1650376 (= lambda!359955 lambda!359953)))

(declare-fun bs!1650377 () Bool)

(assert (= bs!1650377 (and d!2038784 d!2038764)))

(assert (=> bs!1650377 (= lambda!359955 lambda!359952)))

(declare-fun bs!1650378 () Bool)

(assert (= bs!1650378 (and d!2038784 d!2038604)))

(assert (=> bs!1650378 (= lambda!359955 lambda!359923)))

(declare-fun bs!1650379 () Bool)

(assert (= bs!1650379 (and d!2038784 d!2038214)))

(assert (=> bs!1650379 (= lambda!359955 lambda!359872)))

(declare-fun bs!1650380 () Bool)

(assert (= bs!1650380 (and d!2038784 d!2038712)))

(assert (=> bs!1650380 (= lambda!359955 lambda!359945)))

(declare-fun bs!1650381 () Bool)

(assert (= bs!1650381 (and d!2038784 d!2038476)))

(assert (=> bs!1650381 (= lambda!359955 lambda!359908)))

(declare-fun bs!1650382 () Bool)

(assert (= bs!1650382 (and d!2038784 d!2038194)))

(assert (=> bs!1650382 (= lambda!359955 lambda!359863)))

(declare-fun bs!1650383 () Bool)

(assert (= bs!1650383 (and d!2038784 d!2038192)))

(assert (=> bs!1650383 (= lambda!359955 lambda!359860)))

(assert (=> d!2038784 (= (inv!84179 setElem!44257) (forall!15554 (exprs!6257 setElem!44257) lambda!359955))))

(declare-fun bs!1650384 () Bool)

(assert (= bs!1650384 d!2038784))

(declare-fun m!7285600 () Bool)

(assert (=> bs!1650384 m!7285600))

(assert (=> setNonEmpty!44257 d!2038784))

(declare-fun c!1191037 () Bool)

(declare-fun call!562813 () Bool)

(declare-fun bm!562808 () Bool)

(declare-fun c!1191036 () Bool)

(assert (=> bm!562808 (= call!562813 (validRegex!8109 (ite c!1191036 (reg!16702 lt!2390741) (ite c!1191037 (regTwo!33259 lt!2390741) (regTwo!33258 lt!2390741)))))))

(declare-fun b!6497003 () Bool)

(declare-fun e!3937089 () Bool)

(declare-fun e!3937086 () Bool)

(assert (=> b!6497003 (= e!3937089 e!3937086)))

(declare-fun res!2668237 () Bool)

(assert (=> b!6497003 (= res!2668237 (not (nullable!6366 (reg!16702 lt!2390741))))))

(assert (=> b!6497003 (=> (not res!2668237) (not e!3937086))))

(declare-fun b!6497004 () Bool)

(declare-fun e!3937088 () Bool)

(declare-fun call!562815 () Bool)

(assert (=> b!6497004 (= e!3937088 call!562815)))

(declare-fun bm!562809 () Bool)

(declare-fun call!562814 () Bool)

(assert (=> bm!562809 (= call!562814 (validRegex!8109 (ite c!1191037 (regOne!33259 lt!2390741) (regOne!33258 lt!2390741))))))

(declare-fun b!6497005 () Bool)

(declare-fun e!3937087 () Bool)

(assert (=> b!6497005 (= e!3937087 e!3937089)))

(assert (=> b!6497005 (= c!1191036 ((_ is Star!16373) lt!2390741))))

(declare-fun b!6497006 () Bool)

(declare-fun res!2668239 () Bool)

(declare-fun e!3937090 () Bool)

(assert (=> b!6497006 (=> res!2668239 e!3937090)))

(assert (=> b!6497006 (= res!2668239 (not ((_ is Concat!25218) lt!2390741)))))

(declare-fun e!3937085 () Bool)

(assert (=> b!6497006 (= e!3937085 e!3937090)))

(declare-fun b!6497007 () Bool)

(declare-fun e!3937091 () Bool)

(assert (=> b!6497007 (= e!3937091 call!562815)))

(declare-fun b!6497008 () Bool)

(assert (=> b!6497008 (= e!3937089 e!3937085)))

(assert (=> b!6497008 (= c!1191037 ((_ is Union!16373) lt!2390741))))

(declare-fun b!6497009 () Bool)

(assert (=> b!6497009 (= e!3937090 e!3937091)))

(declare-fun res!2668240 () Bool)

(assert (=> b!6497009 (=> (not res!2668240) (not e!3937091))))

(assert (=> b!6497009 (= res!2668240 call!562814)))

(declare-fun bm!562810 () Bool)

(assert (=> bm!562810 (= call!562815 call!562813)))

(declare-fun d!2038786 () Bool)

(declare-fun res!2668236 () Bool)

(assert (=> d!2038786 (=> res!2668236 e!3937087)))

(assert (=> d!2038786 (= res!2668236 ((_ is ElementMatch!16373) lt!2390741))))

(assert (=> d!2038786 (= (validRegex!8109 lt!2390741) e!3937087)))

(declare-fun b!6497010 () Bool)

(assert (=> b!6497010 (= e!3937086 call!562813)))

(declare-fun b!6497011 () Bool)

(declare-fun res!2668238 () Bool)

(assert (=> b!6497011 (=> (not res!2668238) (not e!3937088))))

(assert (=> b!6497011 (= res!2668238 call!562814)))

(assert (=> b!6497011 (= e!3937085 e!3937088)))

(assert (= (and d!2038786 (not res!2668236)) b!6497005))

(assert (= (and b!6497005 c!1191036) b!6497003))

(assert (= (and b!6497005 (not c!1191036)) b!6497008))

(assert (= (and b!6497003 res!2668237) b!6497010))

(assert (= (and b!6497008 c!1191037) b!6497011))

(assert (= (and b!6497008 (not c!1191037)) b!6497006))

(assert (= (and b!6497011 res!2668238) b!6497004))

(assert (= (and b!6497006 (not res!2668239)) b!6497009))

(assert (= (and b!6497009 res!2668240) b!6497007))

(assert (= (or b!6497004 b!6497007) bm!562810))

(assert (= (or b!6497011 b!6497009) bm!562809))

(assert (= (or b!6497010 bm!562810) bm!562808))

(declare-fun m!7285602 () Bool)

(assert (=> bm!562808 m!7285602))

(declare-fun m!7285604 () Bool)

(assert (=> b!6497003 m!7285604))

(declare-fun m!7285606 () Bool)

(assert (=> bm!562809 m!7285606))

(assert (=> d!2038156 d!2038786))

(declare-fun d!2038788 () Bool)

(declare-fun res!2668241 () Bool)

(declare-fun e!3937092 () Bool)

(assert (=> d!2038788 (=> res!2668241 e!3937092)))

(assert (=> d!2038788 (= res!2668241 ((_ is Nil!65294) (exprs!6257 (h!71744 zl!343))))))

(assert (=> d!2038788 (= (forall!15554 (exprs!6257 (h!71744 zl!343)) lambda!359853) e!3937092)))

(declare-fun b!6497012 () Bool)

(declare-fun e!3937093 () Bool)

(assert (=> b!6497012 (= e!3937092 e!3937093)))

(declare-fun res!2668242 () Bool)

(assert (=> b!6497012 (=> (not res!2668242) (not e!3937093))))

(assert (=> b!6497012 (= res!2668242 (dynLambda!25937 lambda!359853 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun b!6497013 () Bool)

(assert (=> b!6497013 (= e!3937093 (forall!15554 (t!379048 (exprs!6257 (h!71744 zl!343))) lambda!359853))))

(assert (= (and d!2038788 (not res!2668241)) b!6497012))

(assert (= (and b!6497012 res!2668242) b!6497013))

(declare-fun b_lambda!245939 () Bool)

(assert (=> (not b_lambda!245939) (not b!6497012)))

(declare-fun m!7285608 () Bool)

(assert (=> b!6497012 m!7285608))

(declare-fun m!7285610 () Bool)

(assert (=> b!6497013 m!7285610))

(assert (=> d!2038156 d!2038788))

(declare-fun bs!1650385 () Bool)

(declare-fun d!2038790 () Bool)

(assert (= bs!1650385 (and d!2038790 d!2038596)))

(declare-fun lambda!359956 () Int)

(assert (=> bs!1650385 (= lambda!359956 lambda!359921)))

(declare-fun bs!1650386 () Bool)

(assert (= bs!1650386 (and d!2038790 d!2038784)))

(assert (=> bs!1650386 (= lambda!359956 lambda!359955)))

(declare-fun bs!1650387 () Bool)

(assert (= bs!1650387 (and d!2038790 d!2038112)))

(assert (=> bs!1650387 (= lambda!359956 lambda!359841)))

(declare-fun bs!1650388 () Bool)

(assert (= bs!1650388 (and d!2038790 d!2038782)))

(assert (=> bs!1650388 (= lambda!359956 lambda!359954)))

(declare-fun bs!1650389 () Bool)

(assert (= bs!1650389 (and d!2038790 d!2038156)))

(assert (=> bs!1650389 (= lambda!359956 lambda!359853)))

(declare-fun bs!1650390 () Bool)

(assert (= bs!1650390 (and d!2038790 d!2038626)))

(assert (=> bs!1650390 (= lambda!359956 lambda!359925)))

(declare-fun bs!1650391 () Bool)

(assert (= bs!1650391 (and d!2038790 d!2038710)))

(assert (=> bs!1650391 (= lambda!359956 lambda!359944)))

(declare-fun bs!1650392 () Bool)

(assert (= bs!1650392 (and d!2038790 d!2038172)))

(assert (=> bs!1650392 (= lambda!359956 lambda!359857)))

(declare-fun bs!1650393 () Bool)

(assert (= bs!1650393 (and d!2038790 d!2038780)))

(assert (=> bs!1650393 (= lambda!359956 lambda!359953)))

(declare-fun bs!1650394 () Bool)

(assert (= bs!1650394 (and d!2038790 d!2038764)))

(assert (=> bs!1650394 (= lambda!359956 lambda!359952)))

(declare-fun bs!1650395 () Bool)

(assert (= bs!1650395 (and d!2038790 d!2038604)))

(assert (=> bs!1650395 (= lambda!359956 lambda!359923)))

(declare-fun bs!1650396 () Bool)

(assert (= bs!1650396 (and d!2038790 d!2038214)))

(assert (=> bs!1650396 (= lambda!359956 lambda!359872)))

(declare-fun bs!1650397 () Bool)

(assert (= bs!1650397 (and d!2038790 d!2038712)))

(assert (=> bs!1650397 (= lambda!359956 lambda!359945)))

(declare-fun bs!1650398 () Bool)

(assert (= bs!1650398 (and d!2038790 d!2038476)))

(assert (=> bs!1650398 (= lambda!359956 lambda!359908)))

(declare-fun bs!1650399 () Bool)

(assert (= bs!1650399 (and d!2038790 d!2038194)))

(assert (=> bs!1650399 (= lambda!359956 lambda!359863)))

(declare-fun bs!1650400 () Bool)

(assert (= bs!1650400 (and d!2038790 d!2038192)))

(assert (=> bs!1650400 (= lambda!359956 lambda!359860)))

(assert (=> d!2038790 (= (inv!84179 (h!71744 (t!379050 zl!343))) (forall!15554 (exprs!6257 (h!71744 (t!379050 zl!343))) lambda!359956))))

(declare-fun bs!1650401 () Bool)

(assert (= bs!1650401 d!2038790))

(declare-fun m!7285612 () Bool)

(assert (=> bs!1650401 m!7285612))

(assert (=> b!6495684 d!2038790))

(declare-fun b!6497015 () Bool)

(declare-fun e!3937094 () Bool)

(declare-fun tp!1797568 () Bool)

(declare-fun tp!1797569 () Bool)

(assert (=> b!6497015 (= e!3937094 (and tp!1797568 tp!1797569))))

(declare-fun b!6497014 () Bool)

(assert (=> b!6497014 (= e!3937094 tp_is_empty!41999)))

(declare-fun b!6497016 () Bool)

(declare-fun tp!1797567 () Bool)

(assert (=> b!6497016 (= e!3937094 tp!1797567)))

(assert (=> b!6495712 (= tp!1797353 e!3937094)))

(declare-fun b!6497017 () Bool)

(declare-fun tp!1797566 () Bool)

(declare-fun tp!1797565 () Bool)

(assert (=> b!6497017 (= e!3937094 (and tp!1797566 tp!1797565))))

(assert (= (and b!6495712 ((_ is ElementMatch!16373) (regOne!33259 (regTwo!33258 r!7292)))) b!6497014))

(assert (= (and b!6495712 ((_ is Concat!25218) (regOne!33259 (regTwo!33258 r!7292)))) b!6497015))

(assert (= (and b!6495712 ((_ is Star!16373) (regOne!33259 (regTwo!33258 r!7292)))) b!6497016))

(assert (= (and b!6495712 ((_ is Union!16373) (regOne!33259 (regTwo!33258 r!7292)))) b!6497017))

(declare-fun b!6497019 () Bool)

(declare-fun e!3937095 () Bool)

(declare-fun tp!1797573 () Bool)

(declare-fun tp!1797574 () Bool)

(assert (=> b!6497019 (= e!3937095 (and tp!1797573 tp!1797574))))

(declare-fun b!6497018 () Bool)

(assert (=> b!6497018 (= e!3937095 tp_is_empty!41999)))

(declare-fun b!6497020 () Bool)

(declare-fun tp!1797572 () Bool)

(assert (=> b!6497020 (= e!3937095 tp!1797572)))

(assert (=> b!6495712 (= tp!1797352 e!3937095)))

(declare-fun b!6497021 () Bool)

(declare-fun tp!1797571 () Bool)

(declare-fun tp!1797570 () Bool)

(assert (=> b!6497021 (= e!3937095 (and tp!1797571 tp!1797570))))

(assert (= (and b!6495712 ((_ is ElementMatch!16373) (regTwo!33259 (regTwo!33258 r!7292)))) b!6497018))

(assert (= (and b!6495712 ((_ is Concat!25218) (regTwo!33259 (regTwo!33258 r!7292)))) b!6497019))

(assert (= (and b!6495712 ((_ is Star!16373) (regTwo!33259 (regTwo!33258 r!7292)))) b!6497020))

(assert (= (and b!6495712 ((_ is Union!16373) (regTwo!33259 (regTwo!33258 r!7292)))) b!6497021))

(declare-fun b!6497023 () Bool)

(declare-fun e!3937096 () Bool)

(declare-fun tp!1797578 () Bool)

(declare-fun tp!1797579 () Bool)

(assert (=> b!6497023 (= e!3937096 (and tp!1797578 tp!1797579))))

(declare-fun b!6497022 () Bool)

(assert (=> b!6497022 (= e!3937096 tp_is_empty!41999)))

(declare-fun b!6497024 () Bool)

(declare-fun tp!1797577 () Bool)

(assert (=> b!6497024 (= e!3937096 tp!1797577)))

(assert (=> b!6495726 (= tp!1797373 e!3937096)))

(declare-fun b!6497025 () Bool)

(declare-fun tp!1797576 () Bool)

(declare-fun tp!1797575 () Bool)

(assert (=> b!6497025 (= e!3937096 (and tp!1797576 tp!1797575))))

(assert (= (and b!6495726 ((_ is ElementMatch!16373) (h!71742 (exprs!6257 setElem!44251)))) b!6497022))

(assert (= (and b!6495726 ((_ is Concat!25218) (h!71742 (exprs!6257 setElem!44251)))) b!6497023))

(assert (= (and b!6495726 ((_ is Star!16373) (h!71742 (exprs!6257 setElem!44251)))) b!6497024))

(assert (= (and b!6495726 ((_ is Union!16373) (h!71742 (exprs!6257 setElem!44251)))) b!6497025))

(declare-fun b!6497026 () Bool)

(declare-fun e!3937097 () Bool)

(declare-fun tp!1797580 () Bool)

(declare-fun tp!1797581 () Bool)

(assert (=> b!6497026 (= e!3937097 (and tp!1797580 tp!1797581))))

(assert (=> b!6495726 (= tp!1797374 e!3937097)))

(assert (= (and b!6495726 ((_ is Cons!65294) (t!379048 (exprs!6257 setElem!44251)))) b!6497026))

(declare-fun b!6497028 () Bool)

(declare-fun e!3937098 () Bool)

(declare-fun tp!1797585 () Bool)

(declare-fun tp!1797586 () Bool)

(assert (=> b!6497028 (= e!3937098 (and tp!1797585 tp!1797586))))

(declare-fun b!6497027 () Bool)

(assert (=> b!6497027 (= e!3937098 tp_is_empty!41999)))

(declare-fun b!6497029 () Bool)

(declare-fun tp!1797584 () Bool)

(assert (=> b!6497029 (= e!3937098 tp!1797584)))

(assert (=> b!6495702 (= tp!1797345 e!3937098)))

(declare-fun b!6497030 () Bool)

(declare-fun tp!1797583 () Bool)

(declare-fun tp!1797582 () Bool)

(assert (=> b!6497030 (= e!3937098 (and tp!1797583 tp!1797582))))

(assert (= (and b!6495702 ((_ is ElementMatch!16373) (regOne!33258 (reg!16702 r!7292)))) b!6497027))

(assert (= (and b!6495702 ((_ is Concat!25218) (regOne!33258 (reg!16702 r!7292)))) b!6497028))

(assert (= (and b!6495702 ((_ is Star!16373) (regOne!33258 (reg!16702 r!7292)))) b!6497029))

(assert (= (and b!6495702 ((_ is Union!16373) (regOne!33258 (reg!16702 r!7292)))) b!6497030))

(declare-fun b!6497032 () Bool)

(declare-fun e!3937099 () Bool)

(declare-fun tp!1797590 () Bool)

(declare-fun tp!1797591 () Bool)

(assert (=> b!6497032 (= e!3937099 (and tp!1797590 tp!1797591))))

(declare-fun b!6497031 () Bool)

(assert (=> b!6497031 (= e!3937099 tp_is_empty!41999)))

(declare-fun b!6497033 () Bool)

(declare-fun tp!1797589 () Bool)

(assert (=> b!6497033 (= e!3937099 tp!1797589)))

(assert (=> b!6495702 (= tp!1797346 e!3937099)))

(declare-fun b!6497034 () Bool)

(declare-fun tp!1797588 () Bool)

(declare-fun tp!1797587 () Bool)

(assert (=> b!6497034 (= e!3937099 (and tp!1797588 tp!1797587))))

(assert (= (and b!6495702 ((_ is ElementMatch!16373) (regTwo!33258 (reg!16702 r!7292)))) b!6497031))

(assert (= (and b!6495702 ((_ is Concat!25218) (regTwo!33258 (reg!16702 r!7292)))) b!6497032))

(assert (= (and b!6495702 ((_ is Star!16373) (regTwo!33258 (reg!16702 r!7292)))) b!6497033))

(assert (= (and b!6495702 ((_ is Union!16373) (regTwo!33258 (reg!16702 r!7292)))) b!6497034))

(declare-fun b!6497036 () Bool)

(declare-fun e!3937100 () Bool)

(declare-fun tp!1797595 () Bool)

(declare-fun tp!1797596 () Bool)

(assert (=> b!6497036 (= e!3937100 (and tp!1797595 tp!1797596))))

(declare-fun b!6497035 () Bool)

(assert (=> b!6497035 (= e!3937100 tp_is_empty!41999)))

(declare-fun b!6497037 () Bool)

(declare-fun tp!1797594 () Bool)

(assert (=> b!6497037 (= e!3937100 tp!1797594)))

(assert (=> b!6495711 (= tp!1797354 e!3937100)))

(declare-fun b!6497038 () Bool)

(declare-fun tp!1797593 () Bool)

(declare-fun tp!1797592 () Bool)

(assert (=> b!6497038 (= e!3937100 (and tp!1797593 tp!1797592))))

(assert (= (and b!6495711 ((_ is ElementMatch!16373) (reg!16702 (regTwo!33258 r!7292)))) b!6497035))

(assert (= (and b!6495711 ((_ is Concat!25218) (reg!16702 (regTwo!33258 r!7292)))) b!6497036))

(assert (= (and b!6495711 ((_ is Star!16373) (reg!16702 (regTwo!33258 r!7292)))) b!6497037))

(assert (= (and b!6495711 ((_ is Union!16373) (reg!16702 (regTwo!33258 r!7292)))) b!6497038))

(declare-fun b!6497040 () Bool)

(declare-fun e!3937101 () Bool)

(declare-fun tp!1797600 () Bool)

(declare-fun tp!1797601 () Bool)

(assert (=> b!6497040 (= e!3937101 (and tp!1797600 tp!1797601))))

(declare-fun b!6497039 () Bool)

(assert (=> b!6497039 (= e!3937101 tp_is_empty!41999)))

(declare-fun b!6497041 () Bool)

(declare-fun tp!1797599 () Bool)

(assert (=> b!6497041 (= e!3937101 tp!1797599)))

(assert (=> b!6495710 (= tp!1797355 e!3937101)))

(declare-fun b!6497042 () Bool)

(declare-fun tp!1797598 () Bool)

(declare-fun tp!1797597 () Bool)

(assert (=> b!6497042 (= e!3937101 (and tp!1797598 tp!1797597))))

(assert (= (and b!6495710 ((_ is ElementMatch!16373) (regOne!33258 (regTwo!33258 r!7292)))) b!6497039))

(assert (= (and b!6495710 ((_ is Concat!25218) (regOne!33258 (regTwo!33258 r!7292)))) b!6497040))

(assert (= (and b!6495710 ((_ is Star!16373) (regOne!33258 (regTwo!33258 r!7292)))) b!6497041))

(assert (= (and b!6495710 ((_ is Union!16373) (regOne!33258 (regTwo!33258 r!7292)))) b!6497042))

(declare-fun b!6497044 () Bool)

(declare-fun e!3937102 () Bool)

(declare-fun tp!1797605 () Bool)

(declare-fun tp!1797606 () Bool)

(assert (=> b!6497044 (= e!3937102 (and tp!1797605 tp!1797606))))

(declare-fun b!6497043 () Bool)

(assert (=> b!6497043 (= e!3937102 tp_is_empty!41999)))

(declare-fun b!6497045 () Bool)

(declare-fun tp!1797604 () Bool)

(assert (=> b!6497045 (= e!3937102 tp!1797604)))

(assert (=> b!6495710 (= tp!1797356 e!3937102)))

(declare-fun b!6497046 () Bool)

(declare-fun tp!1797603 () Bool)

(declare-fun tp!1797602 () Bool)

(assert (=> b!6497046 (= e!3937102 (and tp!1797603 tp!1797602))))

(assert (= (and b!6495710 ((_ is ElementMatch!16373) (regTwo!33258 (regTwo!33258 r!7292)))) b!6497043))

(assert (= (and b!6495710 ((_ is Concat!25218) (regTwo!33258 (regTwo!33258 r!7292)))) b!6497044))

(assert (= (and b!6495710 ((_ is Star!16373) (regTwo!33258 (regTwo!33258 r!7292)))) b!6497045))

(assert (= (and b!6495710 ((_ is Union!16373) (regTwo!33258 (regTwo!33258 r!7292)))) b!6497046))

(declare-fun b!6497048 () Bool)

(declare-fun e!3937103 () Bool)

(declare-fun tp!1797610 () Bool)

(declare-fun tp!1797611 () Bool)

(assert (=> b!6497048 (= e!3937103 (and tp!1797610 tp!1797611))))

(declare-fun b!6497047 () Bool)

(assert (=> b!6497047 (= e!3937103 tp_is_empty!41999)))

(declare-fun b!6497049 () Bool)

(declare-fun tp!1797609 () Bool)

(assert (=> b!6497049 (= e!3937103 tp!1797609)))

(assert (=> b!6495717 (= tp!1797361 e!3937103)))

(declare-fun b!6497050 () Bool)

(declare-fun tp!1797608 () Bool)

(declare-fun tp!1797607 () Bool)

(assert (=> b!6497050 (= e!3937103 (and tp!1797608 tp!1797607))))

(assert (= (and b!6495717 ((_ is ElementMatch!16373) (h!71742 (exprs!6257 (h!71744 zl!343))))) b!6497047))

(assert (= (and b!6495717 ((_ is Concat!25218) (h!71742 (exprs!6257 (h!71744 zl!343))))) b!6497048))

(assert (= (and b!6495717 ((_ is Star!16373) (h!71742 (exprs!6257 (h!71744 zl!343))))) b!6497049))

(assert (= (and b!6495717 ((_ is Union!16373) (h!71742 (exprs!6257 (h!71744 zl!343))))) b!6497050))

(declare-fun b!6497051 () Bool)

(declare-fun e!3937104 () Bool)

(declare-fun tp!1797612 () Bool)

(declare-fun tp!1797613 () Bool)

(assert (=> b!6497051 (= e!3937104 (and tp!1797612 tp!1797613))))

(assert (=> b!6495717 (= tp!1797362 e!3937104)))

(assert (= (and b!6495717 ((_ is Cons!65294) (t!379048 (exprs!6257 (h!71744 zl!343))))) b!6497051))

(declare-fun b!6497053 () Bool)

(declare-fun e!3937105 () Bool)

(declare-fun tp!1797617 () Bool)

(declare-fun tp!1797618 () Bool)

(assert (=> b!6497053 (= e!3937105 (and tp!1797617 tp!1797618))))

(declare-fun b!6497052 () Bool)

(assert (=> b!6497052 (= e!3937105 tp_is_empty!41999)))

(declare-fun b!6497054 () Bool)

(declare-fun tp!1797616 () Bool)

(assert (=> b!6497054 (= e!3937105 tp!1797616)))

(assert (=> b!6495725 (= tp!1797369 e!3937105)))

(declare-fun b!6497055 () Bool)

(declare-fun tp!1797615 () Bool)

(declare-fun tp!1797614 () Bool)

(assert (=> b!6497055 (= e!3937105 (and tp!1797615 tp!1797614))))

(assert (= (and b!6495725 ((_ is ElementMatch!16373) (regOne!33259 (regTwo!33259 r!7292)))) b!6497052))

(assert (= (and b!6495725 ((_ is Concat!25218) (regOne!33259 (regTwo!33259 r!7292)))) b!6497053))

(assert (= (and b!6495725 ((_ is Star!16373) (regOne!33259 (regTwo!33259 r!7292)))) b!6497054))

(assert (= (and b!6495725 ((_ is Union!16373) (regOne!33259 (regTwo!33259 r!7292)))) b!6497055))

(declare-fun b!6497057 () Bool)

(declare-fun e!3937106 () Bool)

(declare-fun tp!1797622 () Bool)

(declare-fun tp!1797623 () Bool)

(assert (=> b!6497057 (= e!3937106 (and tp!1797622 tp!1797623))))

(declare-fun b!6497056 () Bool)

(assert (=> b!6497056 (= e!3937106 tp_is_empty!41999)))

(declare-fun b!6497058 () Bool)

(declare-fun tp!1797621 () Bool)

(assert (=> b!6497058 (= e!3937106 tp!1797621)))

(assert (=> b!6495725 (= tp!1797368 e!3937106)))

(declare-fun b!6497059 () Bool)

(declare-fun tp!1797620 () Bool)

(declare-fun tp!1797619 () Bool)

(assert (=> b!6497059 (= e!3937106 (and tp!1797620 tp!1797619))))

(assert (= (and b!6495725 ((_ is ElementMatch!16373) (regTwo!33259 (regTwo!33259 r!7292)))) b!6497056))

(assert (= (and b!6495725 ((_ is Concat!25218) (regTwo!33259 (regTwo!33259 r!7292)))) b!6497057))

(assert (= (and b!6495725 ((_ is Star!16373) (regTwo!33259 (regTwo!33259 r!7292)))) b!6497058))

(assert (= (and b!6495725 ((_ is Union!16373) (regTwo!33259 (regTwo!33259 r!7292)))) b!6497059))

(declare-fun b!6497061 () Bool)

(declare-fun e!3937107 () Bool)

(declare-fun tp!1797627 () Bool)

(declare-fun tp!1797628 () Bool)

(assert (=> b!6497061 (= e!3937107 (and tp!1797627 tp!1797628))))

(declare-fun b!6497060 () Bool)

(assert (=> b!6497060 (= e!3937107 tp_is_empty!41999)))

(declare-fun b!6497062 () Bool)

(declare-fun tp!1797626 () Bool)

(assert (=> b!6497062 (= e!3937107 tp!1797626)))

(assert (=> b!6495719 (= tp!1797366 e!3937107)))

(declare-fun b!6497063 () Bool)

(declare-fun tp!1797625 () Bool)

(declare-fun tp!1797624 () Bool)

(assert (=> b!6497063 (= e!3937107 (and tp!1797625 tp!1797624))))

(assert (= (and b!6495719 ((_ is ElementMatch!16373) (regOne!33258 (regOne!33259 r!7292)))) b!6497060))

(assert (= (and b!6495719 ((_ is Concat!25218) (regOne!33258 (regOne!33259 r!7292)))) b!6497061))

(assert (= (and b!6495719 ((_ is Star!16373) (regOne!33258 (regOne!33259 r!7292)))) b!6497062))

(assert (= (and b!6495719 ((_ is Union!16373) (regOne!33258 (regOne!33259 r!7292)))) b!6497063))

(declare-fun b!6497065 () Bool)

(declare-fun e!3937108 () Bool)

(declare-fun tp!1797632 () Bool)

(declare-fun tp!1797633 () Bool)

(assert (=> b!6497065 (= e!3937108 (and tp!1797632 tp!1797633))))

(declare-fun b!6497064 () Bool)

(assert (=> b!6497064 (= e!3937108 tp_is_empty!41999)))

(declare-fun b!6497066 () Bool)

(declare-fun tp!1797631 () Bool)

(assert (=> b!6497066 (= e!3937108 tp!1797631)))

(assert (=> b!6495719 (= tp!1797367 e!3937108)))

(declare-fun b!6497067 () Bool)

(declare-fun tp!1797630 () Bool)

(declare-fun tp!1797629 () Bool)

(assert (=> b!6497067 (= e!3937108 (and tp!1797630 tp!1797629))))

(assert (= (and b!6495719 ((_ is ElementMatch!16373) (regTwo!33258 (regOne!33259 r!7292)))) b!6497064))

(assert (= (and b!6495719 ((_ is Concat!25218) (regTwo!33258 (regOne!33259 r!7292)))) b!6497065))

(assert (= (and b!6495719 ((_ is Star!16373) (regTwo!33258 (regOne!33259 r!7292)))) b!6497066))

(assert (= (and b!6495719 ((_ is Union!16373) (regTwo!33258 (regOne!33259 r!7292)))) b!6497067))

(declare-fun b!6497069 () Bool)

(declare-fun e!3937109 () Bool)

(declare-fun tp!1797637 () Bool)

(declare-fun tp!1797638 () Bool)

(assert (=> b!6497069 (= e!3937109 (and tp!1797637 tp!1797638))))

(declare-fun b!6497068 () Bool)

(assert (=> b!6497068 (= e!3937109 tp_is_empty!41999)))

(declare-fun b!6497070 () Bool)

(declare-fun tp!1797636 () Bool)

(assert (=> b!6497070 (= e!3937109 tp!1797636)))

(assert (=> b!6495704 (= tp!1797343 e!3937109)))

(declare-fun b!6497071 () Bool)

(declare-fun tp!1797635 () Bool)

(declare-fun tp!1797634 () Bool)

(assert (=> b!6497071 (= e!3937109 (and tp!1797635 tp!1797634))))

(assert (= (and b!6495704 ((_ is ElementMatch!16373) (regOne!33259 (reg!16702 r!7292)))) b!6497068))

(assert (= (and b!6495704 ((_ is Concat!25218) (regOne!33259 (reg!16702 r!7292)))) b!6497069))

(assert (= (and b!6495704 ((_ is Star!16373) (regOne!33259 (reg!16702 r!7292)))) b!6497070))

(assert (= (and b!6495704 ((_ is Union!16373) (regOne!33259 (reg!16702 r!7292)))) b!6497071))

(declare-fun b!6497073 () Bool)

(declare-fun e!3937110 () Bool)

(declare-fun tp!1797642 () Bool)

(declare-fun tp!1797643 () Bool)

(assert (=> b!6497073 (= e!3937110 (and tp!1797642 tp!1797643))))

(declare-fun b!6497072 () Bool)

(assert (=> b!6497072 (= e!3937110 tp_is_empty!41999)))

(declare-fun b!6497074 () Bool)

(declare-fun tp!1797641 () Bool)

(assert (=> b!6497074 (= e!3937110 tp!1797641)))

(assert (=> b!6495704 (= tp!1797342 e!3937110)))

(declare-fun b!6497075 () Bool)

(declare-fun tp!1797640 () Bool)

(declare-fun tp!1797639 () Bool)

(assert (=> b!6497075 (= e!3937110 (and tp!1797640 tp!1797639))))

(assert (= (and b!6495704 ((_ is ElementMatch!16373) (regTwo!33259 (reg!16702 r!7292)))) b!6497072))

(assert (= (and b!6495704 ((_ is Concat!25218) (regTwo!33259 (reg!16702 r!7292)))) b!6497073))

(assert (= (and b!6495704 ((_ is Star!16373) (regTwo!33259 (reg!16702 r!7292)))) b!6497074))

(assert (= (and b!6495704 ((_ is Union!16373) (regTwo!33259 (reg!16702 r!7292)))) b!6497075))

(declare-fun b!6497077 () Bool)

(declare-fun e!3937111 () Bool)

(declare-fun tp!1797647 () Bool)

(declare-fun tp!1797648 () Bool)

(assert (=> b!6497077 (= e!3937111 (and tp!1797647 tp!1797648))))

(declare-fun b!6497076 () Bool)

(assert (=> b!6497076 (= e!3937111 tp_is_empty!41999)))

(declare-fun b!6497078 () Bool)

(declare-fun tp!1797646 () Bool)

(assert (=> b!6497078 (= e!3937111 tp!1797646)))

(assert (=> b!6495703 (= tp!1797344 e!3937111)))

(declare-fun b!6497079 () Bool)

(declare-fun tp!1797645 () Bool)

(declare-fun tp!1797644 () Bool)

(assert (=> b!6497079 (= e!3937111 (and tp!1797645 tp!1797644))))

(assert (= (and b!6495703 ((_ is ElementMatch!16373) (reg!16702 (reg!16702 r!7292)))) b!6497076))

(assert (= (and b!6495703 ((_ is Concat!25218) (reg!16702 (reg!16702 r!7292)))) b!6497077))

(assert (= (and b!6495703 ((_ is Star!16373) (reg!16702 (reg!16702 r!7292)))) b!6497078))

(assert (= (and b!6495703 ((_ is Union!16373) (reg!16702 (reg!16702 r!7292)))) b!6497079))

(declare-fun b!6497081 () Bool)

(declare-fun e!3937112 () Bool)

(declare-fun tp!1797652 () Bool)

(declare-fun tp!1797653 () Bool)

(assert (=> b!6497081 (= e!3937112 (and tp!1797652 tp!1797653))))

(declare-fun b!6497080 () Bool)

(assert (=> b!6497080 (= e!3937112 tp_is_empty!41999)))

(declare-fun b!6497082 () Bool)

(declare-fun tp!1797651 () Bool)

(assert (=> b!6497082 (= e!3937112 tp!1797651)))

(assert (=> b!6495707 (= tp!1797349 e!3937112)))

(declare-fun b!6497083 () Bool)

(declare-fun tp!1797650 () Bool)

(declare-fun tp!1797649 () Bool)

(assert (=> b!6497083 (= e!3937112 (and tp!1797650 tp!1797649))))

(assert (= (and b!6495707 ((_ is ElementMatch!16373) (reg!16702 (regOne!33258 r!7292)))) b!6497080))

(assert (= (and b!6495707 ((_ is Concat!25218) (reg!16702 (regOne!33258 r!7292)))) b!6497081))

(assert (= (and b!6495707 ((_ is Star!16373) (reg!16702 (regOne!33258 r!7292)))) b!6497082))

(assert (= (and b!6495707 ((_ is Union!16373) (reg!16702 (regOne!33258 r!7292)))) b!6497083))

(declare-fun b!6497085 () Bool)

(declare-fun e!3937113 () Bool)

(declare-fun tp!1797657 () Bool)

(declare-fun tp!1797658 () Bool)

(assert (=> b!6497085 (= e!3937113 (and tp!1797657 tp!1797658))))

(declare-fun b!6497084 () Bool)

(assert (=> b!6497084 (= e!3937113 tp_is_empty!41999)))

(declare-fun b!6497086 () Bool)

(declare-fun tp!1797656 () Bool)

(assert (=> b!6497086 (= e!3937113 tp!1797656)))

(assert (=> b!6495706 (= tp!1797350 e!3937113)))

(declare-fun b!6497087 () Bool)

(declare-fun tp!1797655 () Bool)

(declare-fun tp!1797654 () Bool)

(assert (=> b!6497087 (= e!3937113 (and tp!1797655 tp!1797654))))

(assert (= (and b!6495706 ((_ is ElementMatch!16373) (regOne!33258 (regOne!33258 r!7292)))) b!6497084))

(assert (= (and b!6495706 ((_ is Concat!25218) (regOne!33258 (regOne!33258 r!7292)))) b!6497085))

(assert (= (and b!6495706 ((_ is Star!16373) (regOne!33258 (regOne!33258 r!7292)))) b!6497086))

(assert (= (and b!6495706 ((_ is Union!16373) (regOne!33258 (regOne!33258 r!7292)))) b!6497087))

(declare-fun b!6497089 () Bool)

(declare-fun e!3937114 () Bool)

(declare-fun tp!1797662 () Bool)

(declare-fun tp!1797663 () Bool)

(assert (=> b!6497089 (= e!3937114 (and tp!1797662 tp!1797663))))

(declare-fun b!6497088 () Bool)

(assert (=> b!6497088 (= e!3937114 tp_is_empty!41999)))

(declare-fun b!6497090 () Bool)

(declare-fun tp!1797661 () Bool)

(assert (=> b!6497090 (= e!3937114 tp!1797661)))

(assert (=> b!6495706 (= tp!1797351 e!3937114)))

(declare-fun b!6497091 () Bool)

(declare-fun tp!1797660 () Bool)

(declare-fun tp!1797659 () Bool)

(assert (=> b!6497091 (= e!3937114 (and tp!1797660 tp!1797659))))

(assert (= (and b!6495706 ((_ is ElementMatch!16373) (regTwo!33258 (regOne!33258 r!7292)))) b!6497088))

(assert (= (and b!6495706 ((_ is Concat!25218) (regTwo!33258 (regOne!33258 r!7292)))) b!6497089))

(assert (= (and b!6495706 ((_ is Star!16373) (regTwo!33258 (regOne!33258 r!7292)))) b!6497090))

(assert (= (and b!6495706 ((_ is Union!16373) (regTwo!33258 (regOne!33258 r!7292)))) b!6497091))

(declare-fun b!6497092 () Bool)

(declare-fun e!3937115 () Bool)

(declare-fun tp!1797664 () Bool)

(assert (=> b!6497092 (= e!3937115 (and tp_is_empty!41999 tp!1797664))))

(assert (=> b!6495690 (= tp!1797331 e!3937115)))

(assert (= (and b!6495690 ((_ is Cons!65295) (t!379049 (t!379049 s!2326)))) b!6497092))

(declare-fun b!6497094 () Bool)

(declare-fun e!3937116 () Bool)

(declare-fun tp!1797668 () Bool)

(declare-fun tp!1797669 () Bool)

(assert (=> b!6497094 (= e!3937116 (and tp!1797668 tp!1797669))))

(declare-fun b!6497093 () Bool)

(assert (=> b!6497093 (= e!3937116 tp_is_empty!41999)))

(declare-fun b!6497095 () Bool)

(declare-fun tp!1797667 () Bool)

(assert (=> b!6497095 (= e!3937116 tp!1797667)))

(assert (=> b!6495721 (= tp!1797364 e!3937116)))

(declare-fun b!6497096 () Bool)

(declare-fun tp!1797666 () Bool)

(declare-fun tp!1797665 () Bool)

(assert (=> b!6497096 (= e!3937116 (and tp!1797666 tp!1797665))))

(assert (= (and b!6495721 ((_ is ElementMatch!16373) (regOne!33259 (regOne!33259 r!7292)))) b!6497093))

(assert (= (and b!6495721 ((_ is Concat!25218) (regOne!33259 (regOne!33259 r!7292)))) b!6497094))

(assert (= (and b!6495721 ((_ is Star!16373) (regOne!33259 (regOne!33259 r!7292)))) b!6497095))

(assert (= (and b!6495721 ((_ is Union!16373) (regOne!33259 (regOne!33259 r!7292)))) b!6497096))

(declare-fun b!6497098 () Bool)

(declare-fun e!3937117 () Bool)

(declare-fun tp!1797673 () Bool)

(declare-fun tp!1797674 () Bool)

(assert (=> b!6497098 (= e!3937117 (and tp!1797673 tp!1797674))))

(declare-fun b!6497097 () Bool)

(assert (=> b!6497097 (= e!3937117 tp_is_empty!41999)))

(declare-fun b!6497099 () Bool)

(declare-fun tp!1797672 () Bool)

(assert (=> b!6497099 (= e!3937117 tp!1797672)))

(assert (=> b!6495721 (= tp!1797363 e!3937117)))

(declare-fun b!6497100 () Bool)

(declare-fun tp!1797671 () Bool)

(declare-fun tp!1797670 () Bool)

(assert (=> b!6497100 (= e!3937117 (and tp!1797671 tp!1797670))))

(assert (= (and b!6495721 ((_ is ElementMatch!16373) (regTwo!33259 (regOne!33259 r!7292)))) b!6497097))

(assert (= (and b!6495721 ((_ is Concat!25218) (regTwo!33259 (regOne!33259 r!7292)))) b!6497098))

(assert (= (and b!6495721 ((_ is Star!16373) (regTwo!33259 (regOne!33259 r!7292)))) b!6497099))

(assert (= (and b!6495721 ((_ is Union!16373) (regTwo!33259 (regOne!33259 r!7292)))) b!6497100))

(declare-fun b!6497102 () Bool)

(declare-fun e!3937118 () Bool)

(declare-fun tp!1797678 () Bool)

(declare-fun tp!1797679 () Bool)

(assert (=> b!6497102 (= e!3937118 (and tp!1797678 tp!1797679))))

(declare-fun b!6497101 () Bool)

(assert (=> b!6497101 (= e!3937118 tp_is_empty!41999)))

(declare-fun b!6497103 () Bool)

(declare-fun tp!1797677 () Bool)

(assert (=> b!6497103 (= e!3937118 tp!1797677)))

(assert (=> b!6495720 (= tp!1797365 e!3937118)))

(declare-fun b!6497104 () Bool)

(declare-fun tp!1797676 () Bool)

(declare-fun tp!1797675 () Bool)

(assert (=> b!6497104 (= e!3937118 (and tp!1797676 tp!1797675))))

(assert (= (and b!6495720 ((_ is ElementMatch!16373) (reg!16702 (regOne!33259 r!7292)))) b!6497101))

(assert (= (and b!6495720 ((_ is Concat!25218) (reg!16702 (regOne!33259 r!7292)))) b!6497102))

(assert (= (and b!6495720 ((_ is Star!16373) (reg!16702 (regOne!33259 r!7292)))) b!6497103))

(assert (= (and b!6495720 ((_ is Union!16373) (reg!16702 (regOne!33259 r!7292)))) b!6497104))

(declare-fun b!6497106 () Bool)

(declare-fun e!3937119 () Bool)

(declare-fun tp!1797683 () Bool)

(declare-fun tp!1797684 () Bool)

(assert (=> b!6497106 (= e!3937119 (and tp!1797683 tp!1797684))))

(declare-fun b!6497105 () Bool)

(assert (=> b!6497105 (= e!3937119 tp_is_empty!41999)))

(declare-fun b!6497107 () Bool)

(declare-fun tp!1797682 () Bool)

(assert (=> b!6497107 (= e!3937119 tp!1797682)))

(assert (=> b!6495724 (= tp!1797370 e!3937119)))

(declare-fun b!6497108 () Bool)

(declare-fun tp!1797681 () Bool)

(declare-fun tp!1797680 () Bool)

(assert (=> b!6497108 (= e!3937119 (and tp!1797681 tp!1797680))))

(assert (= (and b!6495724 ((_ is ElementMatch!16373) (reg!16702 (regTwo!33259 r!7292)))) b!6497105))

(assert (= (and b!6495724 ((_ is Concat!25218) (reg!16702 (regTwo!33259 r!7292)))) b!6497106))

(assert (= (and b!6495724 ((_ is Star!16373) (reg!16702 (regTwo!33259 r!7292)))) b!6497107))

(assert (= (and b!6495724 ((_ is Union!16373) (reg!16702 (regTwo!33259 r!7292)))) b!6497108))

(declare-fun b!6497110 () Bool)

(declare-fun e!3937120 () Bool)

(declare-fun tp!1797688 () Bool)

(declare-fun tp!1797689 () Bool)

(assert (=> b!6497110 (= e!3937120 (and tp!1797688 tp!1797689))))

(declare-fun b!6497109 () Bool)

(assert (=> b!6497109 (= e!3937120 tp_is_empty!41999)))

(declare-fun b!6497111 () Bool)

(declare-fun tp!1797687 () Bool)

(assert (=> b!6497111 (= e!3937120 tp!1797687)))

(assert (=> b!6495723 (= tp!1797371 e!3937120)))

(declare-fun b!6497112 () Bool)

(declare-fun tp!1797686 () Bool)

(declare-fun tp!1797685 () Bool)

(assert (=> b!6497112 (= e!3937120 (and tp!1797686 tp!1797685))))

(assert (= (and b!6495723 ((_ is ElementMatch!16373) (regOne!33258 (regTwo!33259 r!7292)))) b!6497109))

(assert (= (and b!6495723 ((_ is Concat!25218) (regOne!33258 (regTwo!33259 r!7292)))) b!6497110))

(assert (= (and b!6495723 ((_ is Star!16373) (regOne!33258 (regTwo!33259 r!7292)))) b!6497111))

(assert (= (and b!6495723 ((_ is Union!16373) (regOne!33258 (regTwo!33259 r!7292)))) b!6497112))

(declare-fun b!6497114 () Bool)

(declare-fun e!3937121 () Bool)

(declare-fun tp!1797693 () Bool)

(declare-fun tp!1797694 () Bool)

(assert (=> b!6497114 (= e!3937121 (and tp!1797693 tp!1797694))))

(declare-fun b!6497113 () Bool)

(assert (=> b!6497113 (= e!3937121 tp_is_empty!41999)))

(declare-fun b!6497115 () Bool)

(declare-fun tp!1797692 () Bool)

(assert (=> b!6497115 (= e!3937121 tp!1797692)))

(assert (=> b!6495723 (= tp!1797372 e!3937121)))

(declare-fun b!6497116 () Bool)

(declare-fun tp!1797691 () Bool)

(declare-fun tp!1797690 () Bool)

(assert (=> b!6497116 (= e!3937121 (and tp!1797691 tp!1797690))))

(assert (= (and b!6495723 ((_ is ElementMatch!16373) (regTwo!33258 (regTwo!33259 r!7292)))) b!6497113))

(assert (= (and b!6495723 ((_ is Concat!25218) (regTwo!33258 (regTwo!33259 r!7292)))) b!6497114))

(assert (= (and b!6495723 ((_ is Star!16373) (regTwo!33258 (regTwo!33259 r!7292)))) b!6497115))

(assert (= (and b!6495723 ((_ is Union!16373) (regTwo!33258 (regTwo!33259 r!7292)))) b!6497116))

(declare-fun b!6497117 () Bool)

(declare-fun e!3937122 () Bool)

(declare-fun tp!1797695 () Bool)

(declare-fun tp!1797696 () Bool)

(assert (=> b!6497117 (= e!3937122 (and tp!1797695 tp!1797696))))

(assert (=> b!6495731 (= tp!1797379 e!3937122)))

(assert (= (and b!6495731 ((_ is Cons!65294) (exprs!6257 setElem!44257))) b!6497117))

(declare-fun condSetEmpty!44271 () Bool)

(assert (=> setNonEmpty!44257 (= condSetEmpty!44271 (= setRest!44257 ((as const (Array Context!11514 Bool)) false)))))

(declare-fun setRes!44271 () Bool)

(assert (=> setNonEmpty!44257 (= tp!1797380 setRes!44271)))

(declare-fun setIsEmpty!44271 () Bool)

(assert (=> setIsEmpty!44271 setRes!44271))

(declare-fun setElem!44271 () Context!11514)

(declare-fun tp!1797698 () Bool)

(declare-fun setNonEmpty!44271 () Bool)

(declare-fun e!3937123 () Bool)

(assert (=> setNonEmpty!44271 (= setRes!44271 (and tp!1797698 (inv!84179 setElem!44271) e!3937123))))

(declare-fun setRest!44271 () (InoxSet Context!11514))

(assert (=> setNonEmpty!44271 (= setRest!44257 ((_ map or) (store ((as const (Array Context!11514 Bool)) false) setElem!44271 true) setRest!44271))))

(declare-fun b!6497118 () Bool)

(declare-fun tp!1797697 () Bool)

(assert (=> b!6497118 (= e!3937123 tp!1797697)))

(assert (= (and setNonEmpty!44257 condSetEmpty!44271) setIsEmpty!44271))

(assert (= (and setNonEmpty!44257 (not condSetEmpty!44271)) setNonEmpty!44271))

(assert (= setNonEmpty!44271 b!6497118))

(declare-fun m!7285614 () Bool)

(assert (=> setNonEmpty!44271 m!7285614))

(declare-fun b!6497119 () Bool)

(declare-fun e!3937124 () Bool)

(declare-fun tp!1797699 () Bool)

(declare-fun tp!1797700 () Bool)

(assert (=> b!6497119 (= e!3937124 (and tp!1797699 tp!1797700))))

(assert (=> b!6495685 (= tp!1797327 e!3937124)))

(assert (= (and b!6495685 ((_ is Cons!65294) (exprs!6257 (h!71744 (t!379050 zl!343))))) b!6497119))

(declare-fun b!6497121 () Bool)

(declare-fun e!3937125 () Bool)

(declare-fun tp!1797704 () Bool)

(declare-fun tp!1797705 () Bool)

(assert (=> b!6497121 (= e!3937125 (and tp!1797704 tp!1797705))))

(declare-fun b!6497120 () Bool)

(assert (=> b!6497120 (= e!3937125 tp_is_empty!41999)))

(declare-fun b!6497122 () Bool)

(declare-fun tp!1797703 () Bool)

(assert (=> b!6497122 (= e!3937125 tp!1797703)))

(assert (=> b!6495708 (= tp!1797348 e!3937125)))

(declare-fun b!6497123 () Bool)

(declare-fun tp!1797702 () Bool)

(declare-fun tp!1797701 () Bool)

(assert (=> b!6497123 (= e!3937125 (and tp!1797702 tp!1797701))))

(assert (= (and b!6495708 ((_ is ElementMatch!16373) (regOne!33259 (regOne!33258 r!7292)))) b!6497120))

(assert (= (and b!6495708 ((_ is Concat!25218) (regOne!33259 (regOne!33258 r!7292)))) b!6497121))

(assert (= (and b!6495708 ((_ is Star!16373) (regOne!33259 (regOne!33258 r!7292)))) b!6497122))

(assert (= (and b!6495708 ((_ is Union!16373) (regOne!33259 (regOne!33258 r!7292)))) b!6497123))

(declare-fun b!6497125 () Bool)

(declare-fun e!3937126 () Bool)

(declare-fun tp!1797709 () Bool)

(declare-fun tp!1797710 () Bool)

(assert (=> b!6497125 (= e!3937126 (and tp!1797709 tp!1797710))))

(declare-fun b!6497124 () Bool)

(assert (=> b!6497124 (= e!3937126 tp_is_empty!41999)))

(declare-fun b!6497126 () Bool)

(declare-fun tp!1797708 () Bool)

(assert (=> b!6497126 (= e!3937126 tp!1797708)))

(assert (=> b!6495708 (= tp!1797347 e!3937126)))

(declare-fun b!6497127 () Bool)

(declare-fun tp!1797707 () Bool)

(declare-fun tp!1797706 () Bool)

(assert (=> b!6497127 (= e!3937126 (and tp!1797707 tp!1797706))))

(assert (= (and b!6495708 ((_ is ElementMatch!16373) (regTwo!33259 (regOne!33258 r!7292)))) b!6497124))

(assert (= (and b!6495708 ((_ is Concat!25218) (regTwo!33259 (regOne!33258 r!7292)))) b!6497125))

(assert (= (and b!6495708 ((_ is Star!16373) (regTwo!33259 (regOne!33258 r!7292)))) b!6497126))

(assert (= (and b!6495708 ((_ is Union!16373) (regTwo!33259 (regOne!33258 r!7292)))) b!6497127))

(declare-fun b!6497129 () Bool)

(declare-fun e!3937128 () Bool)

(declare-fun tp!1797711 () Bool)

(assert (=> b!6497129 (= e!3937128 tp!1797711)))

(declare-fun e!3937127 () Bool)

(declare-fun b!6497128 () Bool)

(declare-fun tp!1797712 () Bool)

(assert (=> b!6497128 (= e!3937127 (and (inv!84179 (h!71744 (t!379050 (t!379050 zl!343)))) e!3937128 tp!1797712))))

(assert (=> b!6495684 (= tp!1797328 e!3937127)))

(assert (= b!6497128 b!6497129))

(assert (= (and b!6495684 ((_ is Cons!65296) (t!379050 (t!379050 zl!343)))) b!6497128))

(declare-fun m!7285616 () Bool)

(assert (=> b!6497128 m!7285616))

(declare-fun b_lambda!245941 () Bool)

(assert (= b_lambda!245939 (or d!2038156 b_lambda!245941)))

(declare-fun bs!1650402 () Bool)

(declare-fun d!2038792 () Bool)

(assert (= bs!1650402 (and d!2038792 d!2038156)))

(assert (=> bs!1650402 (= (dynLambda!25937 lambda!359853 (h!71742 (exprs!6257 (h!71744 zl!343)))) (validRegex!8109 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(declare-fun m!7285618 () Bool)

(assert (=> bs!1650402 m!7285618))

(assert (=> b!6497012 d!2038792))

(declare-fun b_lambda!245943 () Bool)

(assert (= b_lambda!245899 (or b!6494901 b_lambda!245943)))

(assert (=> d!2038488 d!2038222))

(declare-fun b_lambda!245945 () Bool)

(assert (= b_lambda!245911 (or d!2038112 b_lambda!245945)))

(declare-fun bs!1650403 () Bool)

(declare-fun d!2038794 () Bool)

(assert (= bs!1650403 (and d!2038794 d!2038112)))

(assert (=> bs!1650403 (= (dynLambda!25937 lambda!359841 (h!71742 (exprs!6257 (h!71744 zl!343)))) (validRegex!8109 (h!71742 (exprs!6257 (h!71744 zl!343)))))))

(assert (=> bs!1650403 m!7285618))

(assert (=> b!6496671 d!2038794))

(declare-fun b_lambda!245947 () Bool)

(assert (= b_lambda!245895 (or d!2038192 b_lambda!245947)))

(declare-fun bs!1650404 () Bool)

(declare-fun d!2038796 () Bool)

(assert (= bs!1650404 (and d!2038796 d!2038192)))

(assert (=> bs!1650404 (= (dynLambda!25937 lambda!359860 (h!71742 (unfocusZipperList!1794 zl!343))) (validRegex!8109 (h!71742 (unfocusZipperList!1794 zl!343))))))

(declare-fun m!7285620 () Bool)

(assert (=> bs!1650404 m!7285620))

(assert (=> b!6496163 d!2038796))

(declare-fun b_lambda!245949 () Bool)

(assert (= b_lambda!245937 (or d!2038194 b_lambda!245949)))

(declare-fun bs!1650405 () Bool)

(declare-fun d!2038798 () Bool)

(assert (= bs!1650405 (and d!2038798 d!2038194)))

(assert (=> bs!1650405 (= (dynLambda!25937 lambda!359863 (h!71742 lt!2390754)) (validRegex!8109 (h!71742 lt!2390754)))))

(declare-fun m!7285622 () Bool)

(assert (=> bs!1650405 m!7285622))

(assert (=> b!6496958 d!2038798))

(declare-fun b_lambda!245951 () Bool)

(assert (= b_lambda!245935 (or b!6494901 b_lambda!245951)))

(assert (=> d!2038742 d!2038220))

(declare-fun b_lambda!245953 () Bool)

(assert (= b_lambda!245893 (or b!6494901 b_lambda!245953)))

(assert (=> d!2038422 d!2038218))

(declare-fun b_lambda!245955 () Bool)

(assert (= b_lambda!245903 (or d!2038214 b_lambda!245955)))

(declare-fun bs!1650406 () Bool)

(declare-fun d!2038800 () Bool)

(assert (= bs!1650406 (and d!2038800 d!2038214)))

(assert (=> bs!1650406 (= (dynLambda!25937 lambda!359872 (h!71742 (exprs!6257 lt!2390647))) (validRegex!8109 (h!71742 (exprs!6257 lt!2390647))))))

(declare-fun m!7285624 () Bool)

(assert (=> bs!1650406 m!7285624))

(assert (=> b!6496561 d!2038800))

(declare-fun b_lambda!245957 () Bool)

(assert (= b_lambda!245933 (or d!2038172 b_lambda!245957)))

(declare-fun bs!1650407 () Bool)

(declare-fun d!2038802 () Bool)

(assert (= bs!1650407 (and d!2038802 d!2038172)))

(assert (=> bs!1650407 (= (dynLambda!25937 lambda!359857 (h!71742 (exprs!6257 setElem!44251))) (validRegex!8109 (h!71742 (exprs!6257 setElem!44251))))))

(declare-fun m!7285626 () Bool)

(assert (=> bs!1650407 m!7285626))

(assert (=> b!6496917 d!2038802))

(declare-fun b_lambda!245959 () Bool)

(assert (= b_lambda!245897 (or b!6494901 b_lambda!245959)))

(assert (=> d!2038484 d!2038216))

(check-sat (not d!2038622) (not b!6496854) (not b!6497071) (not b!6497121) (not setNonEmpty!44270) (not bm!562709) (not d!2038584) (not b!6497049) (not setNonEmpty!44266) (not bm!562661) (not b!6497116) (not b!6496790) (not bm!562663) (not b_lambda!245945) (not d!2038698) (not b!6496924) (not b!6496822) (not b!6496785) (not bm!562760) (not b_lambda!245877) (not d!2038756) (not bm!562728) (not bm!562657) (not b!6497016) (not bm!562759) (not b!6496233) (not bm!562773) (not bm!562673) (not b!6496865) (not bm!562714) (not b!6496823) (not d!2038688) (not b!6497015) (not b!6496955) (not b!6497020) (not b!6496807) (not b!6496902) (not b!6496781) (not bm!562616) (not bm!562758) (not bm!562742) (not b!6497025) (not b!6496792) (not d!2038404) (not b!6496918) (not d!2038684) (not b!6496380) (not b!6496030) (not d!2038644) (not setNonEmpty!44265) (not bm!562708) (not b_lambda!245957) (not bm!562633) (not b!6497106) (not d!2038776) (not b!6496568) (not b!6497042) (not b!6496915) (not d!2038720) (not d!2038724) (not b!6497122) (not bm!562741) (not b!6496996) (not bm!562615) (not d!2038764) (not b!6496916) (not b!6497111) (not b!6496942) (not bm!562808) (not d!2038744) (not bm!562672) (not bm!562779) (not d!2038768) (not b!6496164) (not bm!562732) (not b!6496954) (not b!6496820) (not b!6496386) (not setNonEmpty!44268) (not bm!562783) (not bm!562649) (not b!6496784) (not bm!562748) (not b!6496213) (not b!6496799) (not bs!1650402) (not b!6497038) (not b!6496982) (not b!6496483) (not b!6496788) (not b!6497112) (not b!6497029) (not d!2038728) (not d!2038710) (not d!2038650) (not bm!562771) (not b!6497081) (not b!6497117) (not b!6496277) (not d!2038484) (not b!6496538) (not d!2038516) (not b!6497041) (not b!6496402) (not b!6496863) (not bm!562723) (not b!6496603) (not bm!562612) (not d!2038532) (not b!6497024) (not b!6496067) (not b!6497050) (not d!2038422) (not d!2038534) (not d!2038746) (not b!6497046) (not b!6496344) (not bm!562788) (not b!6496352) (not b!6497054) (not d!2038488) (not b!6497115) (not bm!562791) (not b!6497095) (not b!6497034) (not b!6497023) (not b!6496397) (not b!6497067) (not b!6496215) (not b!6496826) (not d!2038476) (not b!6496396) (not b!6496379) (not bm!562762) (not bm!562667) (not bm!562763) (not b!6497078) (not d!2038760) (not b!6496897) (not b!6497085) (not b!6496604) (not b!6497021) (not b!6496905) (not d!2038732) (not b!6497090) (not b!6496351) (not b!6497118) (not d!2038526) (not b!6496755) (not bm!562660) (not b!6497073) (not bm!562641) (not b!6497013) (not b!6496096) (not b_lambda!245951) (not bm!562809) (not b!6496672) (not b!6496322) (not b!6496893) (not d!2038410) (not d!2038626) (not b!6496959) (not b!6496866) (not b!6496393) (not setNonEmpty!44271) (not b_lambda!245949) (not d!2038772) (not b!6496506) (not b!6496753) (not bm!562731) (not d!2038510) (not b!6496598) (not b!6496609) (not b!6496853) (not b!6496182) (not bm!562632) (not b!6496597) (not b!6497110) (not b!6496247) (not bm!562756) (not b!6496617) (not d!2038498) (not bm!562789) (not bs!1650405) (not d!2038666) (not b!6497062) (not b!6496914) (not b!6497061) (not b!6496025) (not bm!562765) (not b!6497063) (not bm!562712) (not b!6496472) (not b!6497128) (not bm!562656) (not bm!562797) (not b!6496177) (not d!2038544) (not b!6496479) (not b!6496236) (not d!2038494) (not b!6496998) (not bm!562666) (not b!6496230) (not b!6496794) (not b!6497100) (not b!6496596) (not b!6496400) (not d!2038754) (not b!6496244) (not b!6496754) (not bm!562800) (not b!6496993) (not b!6496521) (not d!2038564) (not d!2038742) (not bm!562724) (not b!6496323) (not b!6496995) (not b!6496520) (not b!6497001) (not b!6496935) (not b!6496991) (not b!6496595) (not b!6497077) (not b!6496903) (not b!6497114) (not d!2038678) (not bm!562754) (not b!6497096) (not b_lambda!245875) (not d!2038672) (not d!2038540) (not b!6496518) (not d!2038782) (not d!2038560) (not b!6496103) (not b!6496945) (not b!6497104) (not b!6497102) (not b!6496522) (not b!6496476) (not bm!562717) (not b!6496284) (not b!6496900) (not b!6496808) (not b!6496231) (not b!6497019) (not b!6497057) (not b!6497032) (not b!6497003) (not b!6496024) (not d!2038700) (not b!6496956) (not b!6497103) (not b!6496519) (not b!6497058) (not d!2038686) (not d!2038712) (not b!6496817) (not bm!562785) (not b!6497055) (not b!6496772) (not d!2038364) (not b!6497028) (not bm!562794) (not b!6497129) (not b!6496179) (not b!6497074) (not b!6496745) (not b!6496791) (not b!6496278) (not b!6497099) (not b!6496845) (not bm!562747) (not d!2038780) (not d!2038434) (not b!6497127) (not b_lambda!245947) (not bm!562761) (not d!2038702) (not b!6497017) (not bs!1650407) (not b!6496130) (not b!6496229) (not bm!562648) (not b!6497108) (not b!6496054) (not d!2038674) (not b!6497059) (not b!6497066) (not b!6496685) (not bm!562803) (not b_lambda!245941) (not b!6496601) (not b!6496864) (not b!6496028) (not bm!562775) (not b!6496141) (not b!6497033) (not bm!562804) (not b!6496880) (not b!6496232) (not bm!562798) (not d!2038556) (not b!6497098) (not b!6497092) (not d!2038490) (not bm!562774) (not d!2038372) (not b!6497045) (not bm!562689) (not b!6496562) (not b!6497079) (not b!6497053) (not b!6497030) (not b!6496482) (not b!6496870) (not b!6496873) (not bm!562755) (not d!2038726) (not d!2038680) (not bm!562750) (not b!6497044) (not b!6496385) (not b!6496896) (not b!6496343) (not b!6496065) (not bm!562744) (not bm!562757) (not b!6497123) (not b!6496481) (not b!6496321) (not bm!562713) (not b!6497087) (not bm!562806) (not b!6496867) (not bm!562640) (not b!6496994) (not bm!562772) (not b_lambda!245959) (not d!2038512) (not bs!1650406) (not b!6496809) (not b!6496031) (not b!6497026) (not bs!1650404) (not b!6497089) (not b_lambda!245943) (not d!2038670) (not b!6497051) (not bm!562753) (not b!6497086) (not d!2038718) (not b!6496243) (not b!6497094) (not b!6496868) (not b_lambda!245955) (not b!6496021) (not b!6497082) (not b!6496965) (not b!6496403) (not b!6496184) (not b!6497069) (not b!6496976) (not bs!1650403) (not b!6496475) (not bm!562647) (not b!6496943) (not b!6497091) (not b!6497048) (not b!6497037) (not bm!562618) (not bm!562790) (not bm!562740) (not b_lambda!245953) (not b!6496129) (not b!6496746) (not b!6496460) (not b!6496381) (not b!6496295) (not b!6497119) (not b!6496517) (not b_lambda!245879) (not bm!562768) (not bm!562805) (not d!2038596) (not bm!562764) tp_is_empty!41999 (not d!2038790) (not b!6496816) (not bm!562718) (not bm!562782) (not d!2038784) (not b!6497070) (not b!6496992) (not d!2038458) (not b!6497125) (not d!2038722) (not b!6496834) (not b!6497107) (not b!6497083) (not b!6496681) (not b!6497065) (not b!6496524) (not b!6496813) (not d!2038758) (not b!6496527) (not d!2038716) (not b!6497040) (not b_lambda!245873) (not d!2038604) (not d!2038546) (not b!6496234) (not b!6497126) (not b!6497036) (not b!6497075) (not b!6496383) (not bm!562669) (not b!6496761))
(check-sat)
