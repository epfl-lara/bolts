; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553802 () Bool)

(assert start!553802)

(declare-fun b!5238728 () Bool)

(assert (=> b!5238728 true))

(assert (=> b!5238728 true))

(declare-fun lambda!263422 () Int)

(declare-fun lambda!263421 () Int)

(assert (=> b!5238728 (not (= lambda!263422 lambda!263421))))

(assert (=> b!5238728 true))

(assert (=> b!5238728 true))

(declare-fun b!5238751 () Bool)

(assert (=> b!5238751 true))

(declare-fun e!3259777 () Bool)

(declare-datatypes ((C!29948 0))(
  ( (C!29949 (val!24676 Int)) )
))
(declare-datatypes ((Regex!14839 0))(
  ( (ElementMatch!14839 (c!905261 C!29948)) (Concat!23684 (regOne!30190 Regex!14839) (regTwo!30190 Regex!14839)) (EmptyExpr!14839) (Star!14839 (reg!15168 Regex!14839)) (EmptyLang!14839) (Union!14839 (regOne!30191 Regex!14839) (regTwo!30191 Regex!14839)) )
))
(declare-datatypes ((List!60816 0))(
  ( (Nil!60692) (Cons!60692 (h!67140 Regex!14839) (t!373997 List!60816)) )
))
(declare-datatypes ((Context!8446 0))(
  ( (Context!8447 (exprs!4723 List!60816)) )
))
(declare-datatypes ((List!60817 0))(
  ( (Nil!60693) (Cons!60693 (h!67141 Context!8446) (t!373998 List!60817)) )
))
(declare-fun zl!343 () List!60817)

(declare-fun b!5238726 () Bool)

(declare-fun tp!1467250 () Bool)

(declare-fun e!3259767 () Bool)

(declare-fun inv!80344 (Context!8446) Bool)

(assert (=> b!5238726 (= e!3259767 (and (inv!80344 (h!67141 zl!343)) e!3259777 tp!1467250))))

(declare-fun b!5238727 () Bool)

(declare-fun res!2223606 () Bool)

(declare-fun e!3259770 () Bool)

(assert (=> b!5238727 (=> res!2223606 e!3259770)))

(declare-fun isEmpty!32619 (List!60817) Bool)

(assert (=> b!5238727 (= res!2223606 (not (isEmpty!32619 (t!373998 zl!343))))))

(declare-fun e!3259769 () Bool)

(assert (=> b!5238728 (= e!3259770 e!3259769)))

(declare-fun res!2223601 () Bool)

(assert (=> b!5238728 (=> res!2223601 e!3259769)))

(declare-fun lt!2147926 () Bool)

(declare-fun lt!2147887 () Bool)

(declare-datatypes ((List!60818 0))(
  ( (Nil!60694) (Cons!60694 (h!67142 C!29948) (t!373999 List!60818)) )
))
(declare-fun s!2326 () List!60818)

(get-info :version)

(assert (=> b!5238728 (= res!2223601 (or (not (= lt!2147926 lt!2147887)) ((_ is Nil!60694) s!2326)))))

(declare-fun Exists!2020 (Int) Bool)

(assert (=> b!5238728 (= (Exists!2020 lambda!263421) (Exists!2020 lambda!263422))))

(declare-datatypes ((Unit!152726 0))(
  ( (Unit!152727) )
))
(declare-fun lt!2147892 () Unit!152726)

(declare-fun r!7292 () Regex!14839)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!674 (Regex!14839 Regex!14839 List!60818) Unit!152726)

(assert (=> b!5238728 (= lt!2147892 (lemmaExistCutMatchRandMatchRSpecEquivalent!674 (regOne!30190 r!7292) (regTwo!30190 r!7292) s!2326))))

(assert (=> b!5238728 (= lt!2147887 (Exists!2020 lambda!263421))))

(declare-datatypes ((tuple2!64076 0))(
  ( (tuple2!64077 (_1!35341 List!60818) (_2!35341 List!60818)) )
))
(declare-datatypes ((Option!14950 0))(
  ( (None!14949) (Some!14949 (v!50978 tuple2!64076)) )
))
(declare-fun isDefined!11653 (Option!14950) Bool)

(declare-fun findConcatSeparation!1364 (Regex!14839 Regex!14839 List!60818 List!60818 List!60818) Option!14950)

(assert (=> b!5238728 (= lt!2147887 (isDefined!11653 (findConcatSeparation!1364 (regOne!30190 r!7292) (regTwo!30190 r!7292) Nil!60694 s!2326 s!2326)))))

(declare-fun lt!2147902 () Unit!152726)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1128 (Regex!14839 Regex!14839 List!60818) Unit!152726)

(assert (=> b!5238728 (= lt!2147902 (lemmaFindConcatSeparationEquivalentToExists!1128 (regOne!30190 r!7292) (regTwo!30190 r!7292) s!2326))))

(declare-fun b!5238729 () Bool)

(declare-fun e!3259774 () Bool)

(declare-fun lt!2147905 () Regex!14839)

(declare-fun validRegex!6575 (Regex!14839) Bool)

(assert (=> b!5238729 (= e!3259774 (validRegex!6575 lt!2147905))))

(declare-fun lt!2147921 () Bool)

(declare-fun lt!2147895 () Regex!14839)

(declare-fun matchRSpec!1942 (Regex!14839 List!60818) Bool)

(assert (=> b!5238729 (= lt!2147921 (matchRSpec!1942 lt!2147895 s!2326))))

(declare-fun lt!2147918 () Unit!152726)

(declare-fun mainMatchTheorem!1942 (Regex!14839 List!60818) Unit!152726)

(assert (=> b!5238729 (= lt!2147918 (mainMatchTheorem!1942 lt!2147895 s!2326))))

(declare-fun lt!2147925 () Bool)

(assert (=> b!5238729 (= lt!2147925 (matchRSpec!1942 lt!2147905 s!2326))))

(declare-fun lt!2147906 () Unit!152726)

(assert (=> b!5238729 (= lt!2147906 (mainMatchTheorem!1942 lt!2147905 s!2326))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2147897 () (InoxSet Context!8446))

(declare-fun matchZipper!1083 ((InoxSet Context!8446) List!60818) Bool)

(assert (=> b!5238729 (= lt!2147921 (matchZipper!1083 lt!2147897 s!2326))))

(declare-fun matchR!7024 (Regex!14839 List!60818) Bool)

(assert (=> b!5238729 (= lt!2147921 (matchR!7024 lt!2147895 s!2326))))

(declare-fun lt!2147908 () List!60817)

(declare-fun lt!2147891 () Unit!152726)

(declare-fun theoremZipperRegexEquiv!273 ((InoxSet Context!8446) List!60817 Regex!14839 List!60818) Unit!152726)

(assert (=> b!5238729 (= lt!2147891 (theoremZipperRegexEquiv!273 lt!2147897 lt!2147908 lt!2147895 s!2326))))

(declare-fun lt!2147910 () List!60816)

(declare-fun generalisedConcat!508 (List!60816) Regex!14839)

(assert (=> b!5238729 (= lt!2147895 (generalisedConcat!508 lt!2147910))))

(declare-fun lt!2147898 () Bool)

(assert (=> b!5238729 (= lt!2147925 lt!2147898)))

(assert (=> b!5238729 (= lt!2147925 (matchR!7024 lt!2147905 s!2326))))

(declare-fun lt!2147911 () (InoxSet Context!8446))

(declare-fun lt!2147912 () Unit!152726)

(declare-fun lt!2147913 () List!60817)

(assert (=> b!5238729 (= lt!2147912 (theoremZipperRegexEquiv!273 lt!2147911 lt!2147913 lt!2147905 s!2326))))

(declare-fun lt!2147890 () List!60816)

(assert (=> b!5238729 (= lt!2147905 (generalisedConcat!508 lt!2147890))))

(declare-fun b!5238730 () Bool)

(declare-fun e!3259781 () Bool)

(assert (=> b!5238730 (= e!3259781 (not e!3259770))))

(declare-fun res!2223607 () Bool)

(assert (=> b!5238730 (=> res!2223607 e!3259770)))

(assert (=> b!5238730 (= res!2223607 (not ((_ is Cons!60693) zl!343)))))

(assert (=> b!5238730 (= lt!2147926 (matchRSpec!1942 r!7292 s!2326))))

(assert (=> b!5238730 (= lt!2147926 (matchR!7024 r!7292 s!2326))))

(declare-fun lt!2147914 () Unit!152726)

(assert (=> b!5238730 (= lt!2147914 (mainMatchTheorem!1942 r!7292 s!2326))))

(declare-fun b!5238731 () Bool)

(declare-fun e!3259780 () Unit!152726)

(declare-fun Unit!152728 () Unit!152726)

(assert (=> b!5238731 (= e!3259780 Unit!152728)))

(declare-fun lt!2147930 () Unit!152726)

(declare-fun lt!2147896 () (InoxSet Context!8446))

(declare-fun lt!2147900 () (InoxSet Context!8446))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!76 ((InoxSet Context!8446) (InoxSet Context!8446) List!60818) Unit!152726)

(assert (=> b!5238731 (= lt!2147930 (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147896 lt!2147900 (t!373999 s!2326)))))

(declare-fun res!2223594 () Bool)

(assert (=> b!5238731 (= res!2223594 (matchZipper!1083 lt!2147896 (t!373999 s!2326)))))

(declare-fun e!3259776 () Bool)

(assert (=> b!5238731 (=> res!2223594 e!3259776)))

(assert (=> b!5238731 (= (matchZipper!1083 ((_ map or) lt!2147896 lt!2147900) (t!373999 s!2326)) e!3259776)))

(declare-fun b!5238732 () Bool)

(declare-fun e!3259764 () Bool)

(declare-fun e!3259773 () Bool)

(assert (=> b!5238732 (= e!3259764 e!3259773)))

(declare-fun res!2223608 () Bool)

(assert (=> b!5238732 (=> res!2223608 e!3259773)))

(declare-fun e!3259784 () Bool)

(assert (=> b!5238732 (= res!2223608 e!3259784)))

(declare-fun res!2223600 () Bool)

(assert (=> b!5238732 (=> (not res!2223600) (not e!3259784))))

(declare-fun lt!2147901 () Bool)

(declare-fun lt!2147928 () (InoxSet Context!8446))

(assert (=> b!5238732 (= res!2223600 (not (= (matchZipper!1083 lt!2147928 (t!373999 s!2326)) lt!2147901)))))

(declare-fun lt!2147893 () (InoxSet Context!8446))

(declare-fun e!3259783 () Bool)

(assert (=> b!5238732 (= (matchZipper!1083 lt!2147893 (t!373999 s!2326)) e!3259783)))

(declare-fun res!2223599 () Bool)

(assert (=> b!5238732 (=> res!2223599 e!3259783)))

(assert (=> b!5238732 (= res!2223599 lt!2147901)))

(declare-fun lt!2147899 () (InoxSet Context!8446))

(assert (=> b!5238732 (= lt!2147901 (matchZipper!1083 lt!2147899 (t!373999 s!2326)))))

(declare-fun lt!2147929 () Unit!152726)

(assert (=> b!5238732 (= lt!2147929 (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147899 lt!2147896 (t!373999 s!2326)))))

(declare-fun b!5238733 () Bool)

(declare-fun e!3259775 () Bool)

(assert (=> b!5238733 (= e!3259775 (matchZipper!1083 lt!2147900 (t!373999 s!2326)))))

(declare-fun b!5238734 () Bool)

(declare-fun e!3259766 () Bool)

(assert (=> b!5238734 (= e!3259766 e!3259781)))

(declare-fun res!2223613 () Bool)

(assert (=> b!5238734 (=> (not res!2223613) (not e!3259781))))

(declare-fun lt!2147920 () Regex!14839)

(assert (=> b!5238734 (= res!2223613 (= r!7292 lt!2147920))))

(declare-fun unfocusZipper!581 (List!60817) Regex!14839)

(assert (=> b!5238734 (= lt!2147920 (unfocusZipper!581 zl!343))))

(declare-fun b!5238735 () Bool)

(declare-fun res!2223614 () Bool)

(assert (=> b!5238735 (=> res!2223614 e!3259769)))

(declare-fun isEmpty!32620 (List!60816) Bool)

(assert (=> b!5238735 (= res!2223614 (isEmpty!32620 (t!373997 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5238736 () Bool)

(declare-fun res!2223617 () Bool)

(declare-fun e!3259778 () Bool)

(assert (=> b!5238736 (=> res!2223617 e!3259778)))

(assert (=> b!5238736 (= res!2223617 (or (not (= lt!2147920 r!7292)) (not (= (exprs!4723 (h!67141 zl!343)) (Cons!60692 (regOne!30190 r!7292) (t!373997 (exprs!4723 (h!67141 zl!343))))))))))

(declare-fun b!5238737 () Bool)

(declare-fun res!2223611 () Bool)

(assert (=> b!5238737 (=> res!2223611 e!3259770)))

(assert (=> b!5238737 (= res!2223611 (not ((_ is Cons!60692) (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5238738 () Bool)

(declare-fun res!2223596 () Bool)

(assert (=> b!5238738 (=> res!2223596 e!3259770)))

(assert (=> b!5238738 (= res!2223596 (or ((_ is EmptyExpr!14839) r!7292) ((_ is EmptyLang!14839) r!7292) ((_ is ElementMatch!14839) r!7292) ((_ is Union!14839) r!7292) (not ((_ is Concat!23684) r!7292))))))

(declare-fun b!5238739 () Bool)

(assert (=> b!5238739 (= e!3259773 e!3259778)))

(declare-fun res!2223604 () Bool)

(assert (=> b!5238739 (=> res!2223604 e!3259778)))

(declare-fun z!1189 () (InoxSet Context!8446))

(declare-fun e!3259762 () Bool)

(assert (=> b!5238739 (= res!2223604 (not (= (matchZipper!1083 z!1189 s!2326) e!3259762)))))

(declare-fun res!2223598 () Bool)

(assert (=> b!5238739 (=> res!2223598 e!3259762)))

(assert (=> b!5238739 (= res!2223598 lt!2147898)))

(assert (=> b!5238739 (= lt!2147898 (matchZipper!1083 lt!2147911 s!2326))))

(declare-fun lt!2147889 () Unit!152726)

(assert (=> b!5238739 (= lt!2147889 e!3259780)))

(declare-fun c!905259 () Bool)

(declare-fun nullable!5008 (Regex!14839) Bool)

(assert (=> b!5238739 (= c!905259 (nullable!5008 (regTwo!30191 (regOne!30190 r!7292))))))

(declare-fun lt!2147923 () Context!8446)

(declare-fun lambda!263423 () Int)

(declare-fun flatMap!566 ((InoxSet Context!8446) Int) (InoxSet Context!8446))

(declare-fun derivationStepZipperUp!211 (Context!8446 C!29948) (InoxSet Context!8446))

(assert (=> b!5238739 (= (flatMap!566 lt!2147897 lambda!263423) (derivationStepZipperUp!211 lt!2147923 (h!67142 s!2326)))))

(declare-fun lt!2147927 () Unit!152726)

(declare-fun lemmaFlatMapOnSingletonSet!98 ((InoxSet Context!8446) Context!8446 Int) Unit!152726)

(assert (=> b!5238739 (= lt!2147927 (lemmaFlatMapOnSingletonSet!98 lt!2147897 lt!2147923 lambda!263423))))

(declare-fun lt!2147924 () (InoxSet Context!8446))

(assert (=> b!5238739 (= lt!2147924 (derivationStepZipperUp!211 lt!2147923 (h!67142 s!2326)))))

(declare-fun lt!2147904 () Unit!152726)

(declare-fun e!3259761 () Unit!152726)

(assert (=> b!5238739 (= lt!2147904 e!3259761)))

(declare-fun c!905258 () Bool)

(assert (=> b!5238739 (= c!905258 (nullable!5008 (regOne!30191 (regOne!30190 r!7292))))))

(declare-fun lt!2147894 () Context!8446)

(assert (=> b!5238739 (= (flatMap!566 lt!2147911 lambda!263423) (derivationStepZipperUp!211 lt!2147894 (h!67142 s!2326)))))

(declare-fun lt!2147916 () Unit!152726)

(assert (=> b!5238739 (= lt!2147916 (lemmaFlatMapOnSingletonSet!98 lt!2147911 lt!2147894 lambda!263423))))

(declare-fun lt!2147909 () (InoxSet Context!8446))

(assert (=> b!5238739 (= lt!2147909 (derivationStepZipperUp!211 lt!2147894 (h!67142 s!2326)))))

(assert (=> b!5238739 (= lt!2147897 (store ((as const (Array Context!8446 Bool)) false) lt!2147923 true))))

(assert (=> b!5238739 (= lt!2147923 (Context!8447 lt!2147910))))

(assert (=> b!5238739 (= lt!2147910 (Cons!60692 (regTwo!30191 (regOne!30190 r!7292)) (t!373997 (exprs!4723 (h!67141 zl!343)))))))

(assert (=> b!5238739 (= lt!2147911 (store ((as const (Array Context!8446 Bool)) false) lt!2147894 true))))

(assert (=> b!5238739 (= lt!2147894 (Context!8447 lt!2147890))))

(assert (=> b!5238739 (= lt!2147890 (Cons!60692 (regOne!30191 (regOne!30190 r!7292)) (t!373997 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5238740 () Bool)

(declare-fun e!3259779 () Bool)

(assert (=> b!5238740 (= e!3259779 e!3259774)))

(declare-fun res!2223602 () Bool)

(assert (=> b!5238740 (=> res!2223602 e!3259774)))

(declare-fun lt!2147888 () Int)

(declare-fun zipperDepthTotal!20 (List!60817) Int)

(assert (=> b!5238740 (= res!2223602 (>= (zipperDepthTotal!20 lt!2147908) lt!2147888))))

(assert (=> b!5238740 (= lt!2147908 (Cons!60693 lt!2147923 Nil!60693))))

(declare-fun setIsEmpty!33407 () Bool)

(declare-fun setRes!33407 () Bool)

(assert (=> setIsEmpty!33407 setRes!33407))

(declare-fun b!5238741 () Bool)

(declare-fun e!3259768 () Bool)

(assert (=> b!5238741 (= e!3259768 (matchZipper!1083 lt!2147900 (t!373999 s!2326)))))

(declare-fun b!5238742 () Bool)

(declare-fun Unit!152729 () Unit!152726)

(assert (=> b!5238742 (= e!3259780 Unit!152729)))

(declare-fun b!5238743 () Bool)

(assert (=> b!5238743 (= e!3259783 (matchZipper!1083 lt!2147896 (t!373999 s!2326)))))

(declare-fun b!5238744 () Bool)

(declare-fun e!3259763 () Bool)

(declare-fun tp!1467248 () Bool)

(declare-fun tp!1467255 () Bool)

(assert (=> b!5238744 (= e!3259763 (and tp!1467248 tp!1467255))))

(declare-fun b!5238745 () Bool)

(assert (=> b!5238745 (= e!3259762 (matchZipper!1083 lt!2147897 s!2326))))

(declare-fun b!5238746 () Bool)

(declare-fun tp!1467256 () Bool)

(assert (=> b!5238746 (= e!3259763 tp!1467256)))

(declare-fun b!5238747 () Bool)

(declare-fun res!2223603 () Bool)

(assert (=> b!5238747 (=> res!2223603 e!3259770)))

(assert (=> b!5238747 (= res!2223603 (not (= r!7292 (generalisedConcat!508 (exprs!4723 (h!67141 zl!343))))))))

(declare-fun b!5238748 () Bool)

(assert (=> b!5238748 (= e!3259784 (not (matchZipper!1083 lt!2147896 (t!373999 s!2326))))))

(declare-fun b!5238749 () Bool)

(declare-fun e!3259782 () Bool)

(declare-fun tp_is_empty!38931 () Bool)

(declare-fun tp!1467249 () Bool)

(assert (=> b!5238749 (= e!3259782 (and tp_is_empty!38931 tp!1467249))))

(declare-fun b!5238750 () Bool)

(declare-fun e!3259765 () Unit!152726)

(declare-fun Unit!152730 () Unit!152726)

(assert (=> b!5238750 (= e!3259765 Unit!152730)))

(declare-fun e!3259771 () Bool)

(assert (=> b!5238751 (= e!3259769 e!3259771)))

(declare-fun res!2223616 () Bool)

(assert (=> b!5238751 (=> res!2223616 e!3259771)))

(assert (=> b!5238751 (= res!2223616 (or (and ((_ is ElementMatch!14839) (regOne!30190 r!7292)) (= (c!905261 (regOne!30190 r!7292)) (h!67142 s!2326))) (not ((_ is Union!14839) (regOne!30190 r!7292)))))))

(declare-fun lt!2147919 () Unit!152726)

(assert (=> b!5238751 (= lt!2147919 e!3259765)))

(declare-fun c!905260 () Bool)

(assert (=> b!5238751 (= c!905260 (nullable!5008 (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(assert (=> b!5238751 (= (flatMap!566 z!1189 lambda!263423) (derivationStepZipperUp!211 (h!67141 zl!343) (h!67142 s!2326)))))

(declare-fun lt!2147886 () Unit!152726)

(assert (=> b!5238751 (= lt!2147886 (lemmaFlatMapOnSingletonSet!98 z!1189 (h!67141 zl!343) lambda!263423))))

(declare-fun lt!2147903 () Context!8446)

(assert (=> b!5238751 (= lt!2147900 (derivationStepZipperUp!211 lt!2147903 (h!67142 s!2326)))))

(declare-fun derivationStepZipperDown!287 (Regex!14839 Context!8446 C!29948) (InoxSet Context!8446))

(assert (=> b!5238751 (= lt!2147928 (derivationStepZipperDown!287 (h!67140 (exprs!4723 (h!67141 zl!343))) lt!2147903 (h!67142 s!2326)))))

(assert (=> b!5238751 (= lt!2147903 (Context!8447 (t!373997 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun lt!2147917 () (InoxSet Context!8446))

(assert (=> b!5238751 (= lt!2147917 (derivationStepZipperUp!211 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343))))) (h!67142 s!2326)))))

(declare-fun tp!1467254 () Bool)

(declare-fun e!3259772 () Bool)

(declare-fun setNonEmpty!33407 () Bool)

(declare-fun setElem!33407 () Context!8446)

(assert (=> setNonEmpty!33407 (= setRes!33407 (and tp!1467254 (inv!80344 setElem!33407) e!3259772))))

(declare-fun setRest!33407 () (InoxSet Context!8446))

(assert (=> setNonEmpty!33407 (= z!1189 ((_ map or) (store ((as const (Array Context!8446 Bool)) false) setElem!33407 true) setRest!33407))))

(declare-fun b!5238752 () Bool)

(declare-fun tp!1467253 () Bool)

(declare-fun tp!1467251 () Bool)

(assert (=> b!5238752 (= e!3259763 (and tp!1467253 tp!1467251))))

(declare-fun b!5238753 () Bool)

(assert (=> b!5238753 (= e!3259771 e!3259764)))

(declare-fun res!2223610 () Bool)

(assert (=> b!5238753 (=> res!2223610 e!3259764)))

(assert (=> b!5238753 (= res!2223610 (not (= lt!2147928 lt!2147893)))))

(assert (=> b!5238753 (= lt!2147893 ((_ map or) lt!2147899 lt!2147896))))

(assert (=> b!5238753 (= lt!2147896 (derivationStepZipperDown!287 (regTwo!30191 (regOne!30190 r!7292)) lt!2147903 (h!67142 s!2326)))))

(assert (=> b!5238753 (= lt!2147899 (derivationStepZipperDown!287 (regOne!30191 (regOne!30190 r!7292)) lt!2147903 (h!67142 s!2326)))))

(declare-fun b!5238754 () Bool)

(declare-fun res!2223612 () Bool)

(assert (=> b!5238754 (=> res!2223612 e!3259770)))

(declare-fun generalisedUnion!768 (List!60816) Regex!14839)

(declare-fun unfocusZipperList!281 (List!60817) List!60816)

(assert (=> b!5238754 (= res!2223612 (not (= r!7292 (generalisedUnion!768 (unfocusZipperList!281 zl!343)))))))

(declare-fun b!5238755 () Bool)

(assert (=> b!5238755 (= e!3259763 tp_is_empty!38931)))

(declare-fun b!5238756 () Bool)

(declare-fun Unit!152731 () Unit!152726)

(assert (=> b!5238756 (= e!3259761 Unit!152731)))

(declare-fun lt!2147915 () Unit!152726)

(assert (=> b!5238756 (= lt!2147915 (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147899 lt!2147900 (t!373999 s!2326)))))

(declare-fun res!2223609 () Bool)

(assert (=> b!5238756 (= res!2223609 lt!2147901)))

(assert (=> b!5238756 (=> res!2223609 e!3259768)))

(assert (=> b!5238756 (= (matchZipper!1083 ((_ map or) lt!2147899 lt!2147900) (t!373999 s!2326)) e!3259768)))

(declare-fun b!5238757 () Bool)

(assert (=> b!5238757 (= e!3259778 e!3259779)))

(declare-fun res!2223615 () Bool)

(assert (=> b!5238757 (=> res!2223615 e!3259779)))

(declare-fun lt!2147922 () Int)

(assert (=> b!5238757 (= res!2223615 (>= lt!2147922 lt!2147888))))

(assert (=> b!5238757 (= lt!2147888 (zipperDepthTotal!20 zl!343))))

(assert (=> b!5238757 (= lt!2147922 (zipperDepthTotal!20 lt!2147913))))

(assert (=> b!5238757 (= lt!2147913 (Cons!60693 lt!2147894 Nil!60693))))

(declare-fun b!5238758 () Bool)

(declare-fun Unit!152732 () Unit!152726)

(assert (=> b!5238758 (= e!3259765 Unit!152732)))

(declare-fun lt!2147907 () Unit!152726)

(assert (=> b!5238758 (= lt!2147907 (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147928 lt!2147900 (t!373999 s!2326)))))

(declare-fun res!2223605 () Bool)

(assert (=> b!5238758 (= res!2223605 (matchZipper!1083 lt!2147928 (t!373999 s!2326)))))

(assert (=> b!5238758 (=> res!2223605 e!3259775)))

(assert (=> b!5238758 (= (matchZipper!1083 ((_ map or) lt!2147928 lt!2147900) (t!373999 s!2326)) e!3259775)))

(declare-fun res!2223597 () Bool)

(assert (=> start!553802 (=> (not res!2223597) (not e!3259766))))

(assert (=> start!553802 (= res!2223597 (validRegex!6575 r!7292))))

(assert (=> start!553802 e!3259766))

(assert (=> start!553802 e!3259763))

(declare-fun condSetEmpty!33407 () Bool)

(assert (=> start!553802 (= condSetEmpty!33407 (= z!1189 ((as const (Array Context!8446 Bool)) false)))))

(assert (=> start!553802 setRes!33407))

(assert (=> start!553802 e!3259767))

(assert (=> start!553802 e!3259782))

(declare-fun b!5238759 () Bool)

(declare-fun Unit!152733 () Unit!152726)

(assert (=> b!5238759 (= e!3259761 Unit!152733)))

(declare-fun b!5238760 () Bool)

(declare-fun tp!1467257 () Bool)

(assert (=> b!5238760 (= e!3259772 tp!1467257)))

(declare-fun b!5238761 () Bool)

(assert (=> b!5238761 (= e!3259776 (matchZipper!1083 lt!2147900 (t!373999 s!2326)))))

(declare-fun b!5238762 () Bool)

(declare-fun res!2223595 () Bool)

(assert (=> b!5238762 (=> (not res!2223595) (not e!3259766))))

(declare-fun toList!8623 ((InoxSet Context!8446)) List!60817)

(assert (=> b!5238762 (= res!2223595 (= (toList!8623 z!1189) zl!343))))

(declare-fun b!5238763 () Bool)

(declare-fun tp!1467252 () Bool)

(assert (=> b!5238763 (= e!3259777 tp!1467252)))

(assert (= (and start!553802 res!2223597) b!5238762))

(assert (= (and b!5238762 res!2223595) b!5238734))

(assert (= (and b!5238734 res!2223613) b!5238730))

(assert (= (and b!5238730 (not res!2223607)) b!5238727))

(assert (= (and b!5238727 (not res!2223606)) b!5238747))

(assert (= (and b!5238747 (not res!2223603)) b!5238737))

(assert (= (and b!5238737 (not res!2223611)) b!5238754))

(assert (= (and b!5238754 (not res!2223612)) b!5238738))

(assert (= (and b!5238738 (not res!2223596)) b!5238728))

(assert (= (and b!5238728 (not res!2223601)) b!5238735))

(assert (= (and b!5238735 (not res!2223614)) b!5238751))

(assert (= (and b!5238751 c!905260) b!5238758))

(assert (= (and b!5238751 (not c!905260)) b!5238750))

(assert (= (and b!5238758 (not res!2223605)) b!5238733))

(assert (= (and b!5238751 (not res!2223616)) b!5238753))

(assert (= (and b!5238753 (not res!2223610)) b!5238732))

(assert (= (and b!5238732 (not res!2223599)) b!5238743))

(assert (= (and b!5238732 res!2223600) b!5238748))

(assert (= (and b!5238732 (not res!2223608)) b!5238739))

(assert (= (and b!5238739 c!905258) b!5238756))

(assert (= (and b!5238739 (not c!905258)) b!5238759))

(assert (= (and b!5238756 (not res!2223609)) b!5238741))

(assert (= (and b!5238739 c!905259) b!5238731))

(assert (= (and b!5238739 (not c!905259)) b!5238742))

(assert (= (and b!5238731 (not res!2223594)) b!5238761))

(assert (= (and b!5238739 (not res!2223598)) b!5238745))

(assert (= (and b!5238739 (not res!2223604)) b!5238736))

(assert (= (and b!5238736 (not res!2223617)) b!5238757))

(assert (= (and b!5238757 (not res!2223615)) b!5238740))

(assert (= (and b!5238740 (not res!2223602)) b!5238729))

(assert (= (and start!553802 ((_ is ElementMatch!14839) r!7292)) b!5238755))

(assert (= (and start!553802 ((_ is Concat!23684) r!7292)) b!5238752))

(assert (= (and start!553802 ((_ is Star!14839) r!7292)) b!5238746))

(assert (= (and start!553802 ((_ is Union!14839) r!7292)) b!5238744))

(assert (= (and start!553802 condSetEmpty!33407) setIsEmpty!33407))

(assert (= (and start!553802 (not condSetEmpty!33407)) setNonEmpty!33407))

(assert (= setNonEmpty!33407 b!5238760))

(assert (= b!5238726 b!5238763))

(assert (= (and start!553802 ((_ is Cons!60693) zl!343)) b!5238726))

(assert (= (and start!553802 ((_ is Cons!60694) s!2326)) b!5238749))

(declare-fun m!6283582 () Bool)

(assert (=> b!5238745 m!6283582))

(declare-fun m!6283584 () Bool)

(assert (=> b!5238757 m!6283584))

(declare-fun m!6283586 () Bool)

(assert (=> b!5238757 m!6283586))

(declare-fun m!6283588 () Bool)

(assert (=> b!5238735 m!6283588))

(declare-fun m!6283590 () Bool)

(assert (=> b!5238730 m!6283590))

(declare-fun m!6283592 () Bool)

(assert (=> b!5238730 m!6283592))

(declare-fun m!6283594 () Bool)

(assert (=> b!5238730 m!6283594))

(declare-fun m!6283596 () Bool)

(assert (=> b!5238731 m!6283596))

(declare-fun m!6283598 () Bool)

(assert (=> b!5238731 m!6283598))

(declare-fun m!6283600 () Bool)

(assert (=> b!5238731 m!6283600))

(declare-fun m!6283602 () Bool)

(assert (=> start!553802 m!6283602))

(declare-fun m!6283604 () Bool)

(assert (=> b!5238729 m!6283604))

(declare-fun m!6283606 () Bool)

(assert (=> b!5238729 m!6283606))

(declare-fun m!6283608 () Bool)

(assert (=> b!5238729 m!6283608))

(declare-fun m!6283610 () Bool)

(assert (=> b!5238729 m!6283610))

(declare-fun m!6283612 () Bool)

(assert (=> b!5238729 m!6283612))

(assert (=> b!5238729 m!6283582))

(declare-fun m!6283614 () Bool)

(assert (=> b!5238729 m!6283614))

(declare-fun m!6283616 () Bool)

(assert (=> b!5238729 m!6283616))

(declare-fun m!6283618 () Bool)

(assert (=> b!5238729 m!6283618))

(declare-fun m!6283620 () Bool)

(assert (=> b!5238729 m!6283620))

(declare-fun m!6283622 () Bool)

(assert (=> b!5238729 m!6283622))

(declare-fun m!6283624 () Bool)

(assert (=> b!5238729 m!6283624))

(declare-fun m!6283626 () Bool)

(assert (=> b!5238734 m!6283626))

(declare-fun m!6283628 () Bool)

(assert (=> b!5238756 m!6283628))

(declare-fun m!6283630 () Bool)

(assert (=> b!5238756 m!6283630))

(declare-fun m!6283632 () Bool)

(assert (=> b!5238728 m!6283632))

(declare-fun m!6283634 () Bool)

(assert (=> b!5238728 m!6283634))

(declare-fun m!6283636 () Bool)

(assert (=> b!5238728 m!6283636))

(assert (=> b!5238728 m!6283632))

(declare-fun m!6283638 () Bool)

(assert (=> b!5238728 m!6283638))

(declare-fun m!6283640 () Bool)

(assert (=> b!5238728 m!6283640))

(assert (=> b!5238728 m!6283634))

(declare-fun m!6283642 () Bool)

(assert (=> b!5238728 m!6283642))

(assert (=> b!5238743 m!6283598))

(declare-fun m!6283644 () Bool)

(assert (=> b!5238732 m!6283644))

(declare-fun m!6283646 () Bool)

(assert (=> b!5238732 m!6283646))

(declare-fun m!6283648 () Bool)

(assert (=> b!5238732 m!6283648))

(declare-fun m!6283650 () Bool)

(assert (=> b!5238732 m!6283650))

(assert (=> b!5238748 m!6283598))

(declare-fun m!6283652 () Bool)

(assert (=> setNonEmpty!33407 m!6283652))

(declare-fun m!6283654 () Bool)

(assert (=> b!5238740 m!6283654))

(declare-fun m!6283656 () Bool)

(assert (=> b!5238758 m!6283656))

(assert (=> b!5238758 m!6283644))

(declare-fun m!6283658 () Bool)

(assert (=> b!5238758 m!6283658))

(declare-fun m!6283660 () Bool)

(assert (=> b!5238761 m!6283660))

(assert (=> b!5238741 m!6283660))

(declare-fun m!6283662 () Bool)

(assert (=> b!5238747 m!6283662))

(declare-fun m!6283664 () Bool)

(assert (=> b!5238751 m!6283664))

(declare-fun m!6283666 () Bool)

(assert (=> b!5238751 m!6283666))

(declare-fun m!6283668 () Bool)

(assert (=> b!5238751 m!6283668))

(declare-fun m!6283670 () Bool)

(assert (=> b!5238751 m!6283670))

(declare-fun m!6283672 () Bool)

(assert (=> b!5238751 m!6283672))

(declare-fun m!6283674 () Bool)

(assert (=> b!5238751 m!6283674))

(declare-fun m!6283676 () Bool)

(assert (=> b!5238751 m!6283676))

(declare-fun m!6283678 () Bool)

(assert (=> b!5238727 m!6283678))

(declare-fun m!6283680 () Bool)

(assert (=> b!5238726 m!6283680))

(declare-fun m!6283682 () Bool)

(assert (=> b!5238754 m!6283682))

(assert (=> b!5238754 m!6283682))

(declare-fun m!6283684 () Bool)

(assert (=> b!5238754 m!6283684))

(declare-fun m!6283686 () Bool)

(assert (=> b!5238739 m!6283686))

(declare-fun m!6283688 () Bool)

(assert (=> b!5238739 m!6283688))

(declare-fun m!6283690 () Bool)

(assert (=> b!5238739 m!6283690))

(declare-fun m!6283692 () Bool)

(assert (=> b!5238739 m!6283692))

(declare-fun m!6283694 () Bool)

(assert (=> b!5238739 m!6283694))

(declare-fun m!6283696 () Bool)

(assert (=> b!5238739 m!6283696))

(declare-fun m!6283698 () Bool)

(assert (=> b!5238739 m!6283698))

(declare-fun m!6283700 () Bool)

(assert (=> b!5238739 m!6283700))

(declare-fun m!6283702 () Bool)

(assert (=> b!5238739 m!6283702))

(declare-fun m!6283704 () Bool)

(assert (=> b!5238739 m!6283704))

(declare-fun m!6283706 () Bool)

(assert (=> b!5238739 m!6283706))

(declare-fun m!6283708 () Bool)

(assert (=> b!5238739 m!6283708))

(declare-fun m!6283710 () Bool)

(assert (=> b!5238753 m!6283710))

(declare-fun m!6283712 () Bool)

(assert (=> b!5238753 m!6283712))

(assert (=> b!5238733 m!6283660))

(declare-fun m!6283714 () Bool)

(assert (=> b!5238762 m!6283714))

(check-sat (not b!5238728) (not b!5238732) (not b!5238731) (not b!5238758) (not b!5238749) (not b!5238747) (not b!5238746) (not b!5238729) (not b!5238763) (not b!5238739) (not b!5238730) (not b!5238751) (not b!5238760) (not b!5238743) tp_is_empty!38931 (not setNonEmpty!33407) (not b!5238752) (not b!5238735) (not b!5238744) (not b!5238741) (not start!553802) (not b!5238740) (not b!5238733) (not b!5238734) (not b!5238748) (not b!5238761) (not b!5238757) (not b!5238753) (not b!5238762) (not b!5238727) (not b!5238745) (not b!5238756) (not b!5238754) (not b!5238726))
(check-sat)
(get-model)

(declare-fun d!1688329 () Bool)

(declare-fun lt!2147943 () Int)

(assert (=> d!1688329 (>= lt!2147943 0)))

(declare-fun e!3259833 () Int)

(assert (=> d!1688329 (= lt!2147943 e!3259833)))

(declare-fun c!905290 () Bool)

(assert (=> d!1688329 (= c!905290 ((_ is Cons!60693) zl!343))))

(assert (=> d!1688329 (= (zipperDepthTotal!20 zl!343) lt!2147943)))

(declare-fun b!5238852 () Bool)

(declare-fun contextDepthTotal!11 (Context!8446) Int)

(assert (=> b!5238852 (= e!3259833 (+ (contextDepthTotal!11 (h!67141 zl!343)) (zipperDepthTotal!20 (t!373998 zl!343))))))

(declare-fun b!5238853 () Bool)

(assert (=> b!5238853 (= e!3259833 0)))

(assert (= (and d!1688329 c!905290) b!5238852))

(assert (= (and d!1688329 (not c!905290)) b!5238853))

(declare-fun m!6283790 () Bool)

(assert (=> b!5238852 m!6283790))

(declare-fun m!6283792 () Bool)

(assert (=> b!5238852 m!6283792))

(assert (=> b!5238757 d!1688329))

(declare-fun d!1688331 () Bool)

(declare-fun lt!2147944 () Int)

(assert (=> d!1688331 (>= lt!2147944 0)))

(declare-fun e!3259834 () Int)

(assert (=> d!1688331 (= lt!2147944 e!3259834)))

(declare-fun c!905291 () Bool)

(assert (=> d!1688331 (= c!905291 ((_ is Cons!60693) lt!2147913))))

(assert (=> d!1688331 (= (zipperDepthTotal!20 lt!2147913) lt!2147944)))

(declare-fun b!5238854 () Bool)

(assert (=> b!5238854 (= e!3259834 (+ (contextDepthTotal!11 (h!67141 lt!2147913)) (zipperDepthTotal!20 (t!373998 lt!2147913))))))

(declare-fun b!5238855 () Bool)

(assert (=> b!5238855 (= e!3259834 0)))

(assert (= (and d!1688331 c!905291) b!5238854))

(assert (= (and d!1688331 (not c!905291)) b!5238855))

(declare-fun m!6283794 () Bool)

(assert (=> b!5238854 m!6283794))

(declare-fun m!6283796 () Bool)

(assert (=> b!5238854 m!6283796))

(assert (=> b!5238757 d!1688331))

(declare-fun d!1688333 () Bool)

(declare-fun e!3259851 () Bool)

(assert (=> d!1688333 (= (matchZipper!1083 ((_ map or) lt!2147899 lt!2147900) (t!373999 s!2326)) e!3259851)))

(declare-fun res!2223662 () Bool)

(assert (=> d!1688333 (=> res!2223662 e!3259851)))

(assert (=> d!1688333 (= res!2223662 (matchZipper!1083 lt!2147899 (t!373999 s!2326)))))

(declare-fun lt!2147949 () Unit!152726)

(declare-fun choose!38986 ((InoxSet Context!8446) (InoxSet Context!8446) List!60818) Unit!152726)

(assert (=> d!1688333 (= lt!2147949 (choose!38986 lt!2147899 lt!2147900 (t!373999 s!2326)))))

(assert (=> d!1688333 (= (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147899 lt!2147900 (t!373999 s!2326)) lt!2147949)))

(declare-fun b!5238886 () Bool)

(assert (=> b!5238886 (= e!3259851 (matchZipper!1083 lt!2147900 (t!373999 s!2326)))))

(assert (= (and d!1688333 (not res!2223662)) b!5238886))

(assert (=> d!1688333 m!6283630))

(assert (=> d!1688333 m!6283648))

(declare-fun m!6283798 () Bool)

(assert (=> d!1688333 m!6283798))

(assert (=> b!5238886 m!6283660))

(assert (=> b!5238756 d!1688333))

(declare-fun d!1688335 () Bool)

(declare-fun c!905307 () Bool)

(declare-fun isEmpty!32622 (List!60818) Bool)

(assert (=> d!1688335 (= c!905307 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3259868 () Bool)

(assert (=> d!1688335 (= (matchZipper!1083 ((_ map or) lt!2147899 lt!2147900) (t!373999 s!2326)) e!3259868)))

(declare-fun b!5238916 () Bool)

(declare-fun nullableZipper!1254 ((InoxSet Context!8446)) Bool)

(assert (=> b!5238916 (= e!3259868 (nullableZipper!1254 ((_ map or) lt!2147899 lt!2147900)))))

(declare-fun b!5238917 () Bool)

(declare-fun derivationStepZipper!1098 ((InoxSet Context!8446) C!29948) (InoxSet Context!8446))

(declare-fun head!11226 (List!60818) C!29948)

(declare-fun tail!10323 (List!60818) List!60818)

(assert (=> b!5238917 (= e!3259868 (matchZipper!1083 (derivationStepZipper!1098 ((_ map or) lt!2147899 lt!2147900) (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688335 c!905307) b!5238916))

(assert (= (and d!1688335 (not c!905307)) b!5238917))

(declare-fun m!6283810 () Bool)

(assert (=> d!1688335 m!6283810))

(declare-fun m!6283812 () Bool)

(assert (=> b!5238916 m!6283812))

(declare-fun m!6283814 () Bool)

(assert (=> b!5238917 m!6283814))

(assert (=> b!5238917 m!6283814))

(declare-fun m!6283816 () Bool)

(assert (=> b!5238917 m!6283816))

(declare-fun m!6283818 () Bool)

(assert (=> b!5238917 m!6283818))

(assert (=> b!5238917 m!6283816))

(assert (=> b!5238917 m!6283818))

(declare-fun m!6283820 () Bool)

(assert (=> b!5238917 m!6283820))

(assert (=> b!5238756 d!1688335))

(declare-fun d!1688339 () Bool)

(declare-fun e!3259869 () Bool)

(assert (=> d!1688339 (= (matchZipper!1083 ((_ map or) lt!2147928 lt!2147900) (t!373999 s!2326)) e!3259869)))

(declare-fun res!2223674 () Bool)

(assert (=> d!1688339 (=> res!2223674 e!3259869)))

(assert (=> d!1688339 (= res!2223674 (matchZipper!1083 lt!2147928 (t!373999 s!2326)))))

(declare-fun lt!2147951 () Unit!152726)

(assert (=> d!1688339 (= lt!2147951 (choose!38986 lt!2147928 lt!2147900 (t!373999 s!2326)))))

(assert (=> d!1688339 (= (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147928 lt!2147900 (t!373999 s!2326)) lt!2147951)))

(declare-fun b!5238918 () Bool)

(assert (=> b!5238918 (= e!3259869 (matchZipper!1083 lt!2147900 (t!373999 s!2326)))))

(assert (= (and d!1688339 (not res!2223674)) b!5238918))

(assert (=> d!1688339 m!6283658))

(assert (=> d!1688339 m!6283644))

(declare-fun m!6283822 () Bool)

(assert (=> d!1688339 m!6283822))

(assert (=> b!5238918 m!6283660))

(assert (=> b!5238758 d!1688339))

(declare-fun d!1688341 () Bool)

(declare-fun c!905308 () Bool)

(assert (=> d!1688341 (= c!905308 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3259870 () Bool)

(assert (=> d!1688341 (= (matchZipper!1083 lt!2147928 (t!373999 s!2326)) e!3259870)))

(declare-fun b!5238919 () Bool)

(assert (=> b!5238919 (= e!3259870 (nullableZipper!1254 lt!2147928))))

(declare-fun b!5238920 () Bool)

(assert (=> b!5238920 (= e!3259870 (matchZipper!1083 (derivationStepZipper!1098 lt!2147928 (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688341 c!905308) b!5238919))

(assert (= (and d!1688341 (not c!905308)) b!5238920))

(assert (=> d!1688341 m!6283810))

(declare-fun m!6283824 () Bool)

(assert (=> b!5238919 m!6283824))

(assert (=> b!5238920 m!6283814))

(assert (=> b!5238920 m!6283814))

(declare-fun m!6283826 () Bool)

(assert (=> b!5238920 m!6283826))

(assert (=> b!5238920 m!6283818))

(assert (=> b!5238920 m!6283826))

(assert (=> b!5238920 m!6283818))

(declare-fun m!6283828 () Bool)

(assert (=> b!5238920 m!6283828))

(assert (=> b!5238758 d!1688341))

(declare-fun d!1688343 () Bool)

(declare-fun c!905309 () Bool)

(assert (=> d!1688343 (= c!905309 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3259871 () Bool)

(assert (=> d!1688343 (= (matchZipper!1083 ((_ map or) lt!2147928 lt!2147900) (t!373999 s!2326)) e!3259871)))

(declare-fun b!5238921 () Bool)

(assert (=> b!5238921 (= e!3259871 (nullableZipper!1254 ((_ map or) lt!2147928 lt!2147900)))))

(declare-fun b!5238922 () Bool)

(assert (=> b!5238922 (= e!3259871 (matchZipper!1083 (derivationStepZipper!1098 ((_ map or) lt!2147928 lt!2147900) (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688343 c!905309) b!5238921))

(assert (= (and d!1688343 (not c!905309)) b!5238922))

(assert (=> d!1688343 m!6283810))

(declare-fun m!6283830 () Bool)

(assert (=> b!5238921 m!6283830))

(assert (=> b!5238922 m!6283814))

(assert (=> b!5238922 m!6283814))

(declare-fun m!6283832 () Bool)

(assert (=> b!5238922 m!6283832))

(assert (=> b!5238922 m!6283818))

(assert (=> b!5238922 m!6283832))

(assert (=> b!5238922 m!6283818))

(declare-fun m!6283834 () Bool)

(assert (=> b!5238922 m!6283834))

(assert (=> b!5238758 d!1688343))

(declare-fun d!1688345 () Bool)

(declare-fun nullableFct!1406 (Regex!14839) Bool)

(assert (=> d!1688345 (= (nullable!5008 (regTwo!30191 (regOne!30190 r!7292))) (nullableFct!1406 (regTwo!30191 (regOne!30190 r!7292))))))

(declare-fun bs!1215668 () Bool)

(assert (= bs!1215668 d!1688345))

(declare-fun m!6283842 () Bool)

(assert (=> bs!1215668 m!6283842))

(assert (=> b!5238739 d!1688345))

(declare-fun d!1688349 () Bool)

(declare-fun choose!38987 ((InoxSet Context!8446) Int) (InoxSet Context!8446))

(assert (=> d!1688349 (= (flatMap!566 lt!2147911 lambda!263423) (choose!38987 lt!2147911 lambda!263423))))

(declare-fun bs!1215669 () Bool)

(assert (= bs!1215669 d!1688349))

(declare-fun m!6283844 () Bool)

(assert (=> bs!1215669 m!6283844))

(assert (=> b!5238739 d!1688349))

(declare-fun d!1688351 () Bool)

(declare-fun c!905310 () Bool)

(assert (=> d!1688351 (= c!905310 (isEmpty!32622 s!2326))))

(declare-fun e!3259872 () Bool)

(assert (=> d!1688351 (= (matchZipper!1083 z!1189 s!2326) e!3259872)))

(declare-fun b!5238923 () Bool)

(assert (=> b!5238923 (= e!3259872 (nullableZipper!1254 z!1189))))

(declare-fun b!5238924 () Bool)

(assert (=> b!5238924 (= e!3259872 (matchZipper!1083 (derivationStepZipper!1098 z!1189 (head!11226 s!2326)) (tail!10323 s!2326)))))

(assert (= (and d!1688351 c!905310) b!5238923))

(assert (= (and d!1688351 (not c!905310)) b!5238924))

(declare-fun m!6283846 () Bool)

(assert (=> d!1688351 m!6283846))

(declare-fun m!6283848 () Bool)

(assert (=> b!5238923 m!6283848))

(declare-fun m!6283850 () Bool)

(assert (=> b!5238924 m!6283850))

(assert (=> b!5238924 m!6283850))

(declare-fun m!6283852 () Bool)

(assert (=> b!5238924 m!6283852))

(declare-fun m!6283854 () Bool)

(assert (=> b!5238924 m!6283854))

(assert (=> b!5238924 m!6283852))

(assert (=> b!5238924 m!6283854))

(declare-fun m!6283856 () Bool)

(assert (=> b!5238924 m!6283856))

(assert (=> b!5238739 d!1688351))

(declare-fun d!1688353 () Bool)

(declare-fun c!905323 () Bool)

(declare-fun e!3259893 () Bool)

(assert (=> d!1688353 (= c!905323 e!3259893)))

(declare-fun res!2223681 () Bool)

(assert (=> d!1688353 (=> (not res!2223681) (not e!3259893))))

(assert (=> d!1688353 (= res!2223681 ((_ is Cons!60692) (exprs!4723 lt!2147923)))))

(declare-fun e!3259892 () (InoxSet Context!8446))

(assert (=> d!1688353 (= (derivationStepZipperUp!211 lt!2147923 (h!67142 s!2326)) e!3259892)))

(declare-fun b!5238955 () Bool)

(declare-fun call!370770 () (InoxSet Context!8446))

(assert (=> b!5238955 (= e!3259892 ((_ map or) call!370770 (derivationStepZipperUp!211 (Context!8447 (t!373997 (exprs!4723 lt!2147923))) (h!67142 s!2326))))))

(declare-fun b!5238956 () Bool)

(declare-fun e!3259891 () (InoxSet Context!8446))

(assert (=> b!5238956 (= e!3259892 e!3259891)))

(declare-fun c!905324 () Bool)

(assert (=> b!5238956 (= c!905324 ((_ is Cons!60692) (exprs!4723 lt!2147923)))))

(declare-fun b!5238957 () Bool)

(assert (=> b!5238957 (= e!3259891 call!370770)))

(declare-fun b!5238958 () Bool)

(assert (=> b!5238958 (= e!3259891 ((as const (Array Context!8446 Bool)) false))))

(declare-fun bm!370765 () Bool)

(assert (=> bm!370765 (= call!370770 (derivationStepZipperDown!287 (h!67140 (exprs!4723 lt!2147923)) (Context!8447 (t!373997 (exprs!4723 lt!2147923))) (h!67142 s!2326)))))

(declare-fun b!5238959 () Bool)

(assert (=> b!5238959 (= e!3259893 (nullable!5008 (h!67140 (exprs!4723 lt!2147923))))))

(assert (= (and d!1688353 res!2223681) b!5238959))

(assert (= (and d!1688353 c!905323) b!5238955))

(assert (= (and d!1688353 (not c!905323)) b!5238956))

(assert (= (and b!5238956 c!905324) b!5238957))

(assert (= (and b!5238956 (not c!905324)) b!5238958))

(assert (= (or b!5238955 b!5238957) bm!370765))

(declare-fun m!6283858 () Bool)

(assert (=> b!5238955 m!6283858))

(declare-fun m!6283860 () Bool)

(assert (=> bm!370765 m!6283860))

(declare-fun m!6283862 () Bool)

(assert (=> b!5238959 m!6283862))

(assert (=> b!5238739 d!1688353))

(declare-fun d!1688355 () Bool)

(declare-fun dynLambda!23982 (Int Context!8446) (InoxSet Context!8446))

(assert (=> d!1688355 (= (flatMap!566 lt!2147911 lambda!263423) (dynLambda!23982 lambda!263423 lt!2147894))))

(declare-fun lt!2147957 () Unit!152726)

(declare-fun choose!38988 ((InoxSet Context!8446) Context!8446 Int) Unit!152726)

(assert (=> d!1688355 (= lt!2147957 (choose!38988 lt!2147911 lt!2147894 lambda!263423))))

(assert (=> d!1688355 (= lt!2147911 (store ((as const (Array Context!8446 Bool)) false) lt!2147894 true))))

(assert (=> d!1688355 (= (lemmaFlatMapOnSingletonSet!98 lt!2147911 lt!2147894 lambda!263423) lt!2147957)))

(declare-fun b_lambda!202489 () Bool)

(assert (=> (not b_lambda!202489) (not d!1688355)))

(declare-fun bs!1215670 () Bool)

(assert (= bs!1215670 d!1688355))

(assert (=> bs!1215670 m!6283704))

(declare-fun m!6283884 () Bool)

(assert (=> bs!1215670 m!6283884))

(declare-fun m!6283886 () Bool)

(assert (=> bs!1215670 m!6283886))

(assert (=> bs!1215670 m!6283702))

(assert (=> b!5238739 d!1688355))

(declare-fun d!1688359 () Bool)

(declare-fun c!905332 () Bool)

(declare-fun e!3259909 () Bool)

(assert (=> d!1688359 (= c!905332 e!3259909)))

(declare-fun res!2223692 () Bool)

(assert (=> d!1688359 (=> (not res!2223692) (not e!3259909))))

(assert (=> d!1688359 (= res!2223692 ((_ is Cons!60692) (exprs!4723 lt!2147894)))))

(declare-fun e!3259908 () (InoxSet Context!8446))

(assert (=> d!1688359 (= (derivationStepZipperUp!211 lt!2147894 (h!67142 s!2326)) e!3259908)))

(declare-fun call!370772 () (InoxSet Context!8446))

(declare-fun b!5238984 () Bool)

(assert (=> b!5238984 (= e!3259908 ((_ map or) call!370772 (derivationStepZipperUp!211 (Context!8447 (t!373997 (exprs!4723 lt!2147894))) (h!67142 s!2326))))))

(declare-fun b!5238985 () Bool)

(declare-fun e!3259907 () (InoxSet Context!8446))

(assert (=> b!5238985 (= e!3259908 e!3259907)))

(declare-fun c!905333 () Bool)

(assert (=> b!5238985 (= c!905333 ((_ is Cons!60692) (exprs!4723 lt!2147894)))))

(declare-fun b!5238986 () Bool)

(assert (=> b!5238986 (= e!3259907 call!370772)))

(declare-fun b!5238987 () Bool)

(assert (=> b!5238987 (= e!3259907 ((as const (Array Context!8446 Bool)) false))))

(declare-fun bm!370767 () Bool)

(assert (=> bm!370767 (= call!370772 (derivationStepZipperDown!287 (h!67140 (exprs!4723 lt!2147894)) (Context!8447 (t!373997 (exprs!4723 lt!2147894))) (h!67142 s!2326)))))

(declare-fun b!5238988 () Bool)

(assert (=> b!5238988 (= e!3259909 (nullable!5008 (h!67140 (exprs!4723 lt!2147894))))))

(assert (= (and d!1688359 res!2223692) b!5238988))

(assert (= (and d!1688359 c!905332) b!5238984))

(assert (= (and d!1688359 (not c!905332)) b!5238985))

(assert (= (and b!5238985 c!905333) b!5238986))

(assert (= (and b!5238985 (not c!905333)) b!5238987))

(assert (= (or b!5238984 b!5238986) bm!370767))

(declare-fun m!6283888 () Bool)

(assert (=> b!5238984 m!6283888))

(declare-fun m!6283890 () Bool)

(assert (=> bm!370767 m!6283890))

(declare-fun m!6283892 () Bool)

(assert (=> b!5238988 m!6283892))

(assert (=> b!5238739 d!1688359))

(declare-fun d!1688361 () Bool)

(assert (=> d!1688361 (= (nullable!5008 (regOne!30191 (regOne!30190 r!7292))) (nullableFct!1406 (regOne!30191 (regOne!30190 r!7292))))))

(declare-fun bs!1215671 () Bool)

(assert (= bs!1215671 d!1688361))

(declare-fun m!6283894 () Bool)

(assert (=> bs!1215671 m!6283894))

(assert (=> b!5238739 d!1688361))

(declare-fun d!1688363 () Bool)

(assert (=> d!1688363 (= (flatMap!566 lt!2147897 lambda!263423) (dynLambda!23982 lambda!263423 lt!2147923))))

(declare-fun lt!2147959 () Unit!152726)

(assert (=> d!1688363 (= lt!2147959 (choose!38988 lt!2147897 lt!2147923 lambda!263423))))

(assert (=> d!1688363 (= lt!2147897 (store ((as const (Array Context!8446 Bool)) false) lt!2147923 true))))

(assert (=> d!1688363 (= (lemmaFlatMapOnSingletonSet!98 lt!2147897 lt!2147923 lambda!263423) lt!2147959)))

(declare-fun b_lambda!202491 () Bool)

(assert (=> (not b_lambda!202491) (not d!1688363)))

(declare-fun bs!1215672 () Bool)

(assert (= bs!1215672 d!1688363))

(assert (=> bs!1215672 m!6283706))

(declare-fun m!6283898 () Bool)

(assert (=> bs!1215672 m!6283898))

(declare-fun m!6283902 () Bool)

(assert (=> bs!1215672 m!6283902))

(assert (=> bs!1215672 m!6283690))

(assert (=> b!5238739 d!1688363))

(declare-fun d!1688365 () Bool)

(assert (=> d!1688365 (= (flatMap!566 lt!2147897 lambda!263423) (choose!38987 lt!2147897 lambda!263423))))

(declare-fun bs!1215673 () Bool)

(assert (= bs!1215673 d!1688365))

(declare-fun m!6283906 () Bool)

(assert (=> bs!1215673 m!6283906))

(assert (=> b!5238739 d!1688365))

(declare-fun d!1688369 () Bool)

(declare-fun c!905334 () Bool)

(assert (=> d!1688369 (= c!905334 (isEmpty!32622 s!2326))))

(declare-fun e!3259910 () Bool)

(assert (=> d!1688369 (= (matchZipper!1083 lt!2147911 s!2326) e!3259910)))

(declare-fun b!5238989 () Bool)

(assert (=> b!5238989 (= e!3259910 (nullableZipper!1254 lt!2147911))))

(declare-fun b!5238990 () Bool)

(assert (=> b!5238990 (= e!3259910 (matchZipper!1083 (derivationStepZipper!1098 lt!2147911 (head!11226 s!2326)) (tail!10323 s!2326)))))

(assert (= (and d!1688369 c!905334) b!5238989))

(assert (= (and d!1688369 (not c!905334)) b!5238990))

(assert (=> d!1688369 m!6283846))

(declare-fun m!6283908 () Bool)

(assert (=> b!5238989 m!6283908))

(assert (=> b!5238990 m!6283850))

(assert (=> b!5238990 m!6283850))

(declare-fun m!6283910 () Bool)

(assert (=> b!5238990 m!6283910))

(assert (=> b!5238990 m!6283854))

(assert (=> b!5238990 m!6283910))

(assert (=> b!5238990 m!6283854))

(declare-fun m!6283912 () Bool)

(assert (=> b!5238990 m!6283912))

(assert (=> b!5238739 d!1688369))

(declare-fun d!1688371 () Bool)

(declare-fun lt!2147960 () Int)

(assert (=> d!1688371 (>= lt!2147960 0)))

(declare-fun e!3259911 () Int)

(assert (=> d!1688371 (= lt!2147960 e!3259911)))

(declare-fun c!905335 () Bool)

(assert (=> d!1688371 (= c!905335 ((_ is Cons!60693) lt!2147908))))

(assert (=> d!1688371 (= (zipperDepthTotal!20 lt!2147908) lt!2147960)))

(declare-fun b!5238991 () Bool)

(assert (=> b!5238991 (= e!3259911 (+ (contextDepthTotal!11 (h!67141 lt!2147908)) (zipperDepthTotal!20 (t!373998 lt!2147908))))))

(declare-fun b!5238992 () Bool)

(assert (=> b!5238992 (= e!3259911 0)))

(assert (= (and d!1688371 c!905335) b!5238991))

(assert (= (and d!1688371 (not c!905335)) b!5238992))

(declare-fun m!6283914 () Bool)

(assert (=> b!5238991 m!6283914))

(declare-fun m!6283916 () Bool)

(assert (=> b!5238991 m!6283916))

(assert (=> b!5238740 d!1688371))

(declare-fun d!1688373 () Bool)

(declare-fun c!905336 () Bool)

(assert (=> d!1688373 (= c!905336 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3259912 () Bool)

(assert (=> d!1688373 (= (matchZipper!1083 lt!2147900 (t!373999 s!2326)) e!3259912)))

(declare-fun b!5238993 () Bool)

(assert (=> b!5238993 (= e!3259912 (nullableZipper!1254 lt!2147900))))

(declare-fun b!5238994 () Bool)

(assert (=> b!5238994 (= e!3259912 (matchZipper!1083 (derivationStepZipper!1098 lt!2147900 (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688373 c!905336) b!5238993))

(assert (= (and d!1688373 (not c!905336)) b!5238994))

(assert (=> d!1688373 m!6283810))

(declare-fun m!6283918 () Bool)

(assert (=> b!5238993 m!6283918))

(assert (=> b!5238994 m!6283814))

(assert (=> b!5238994 m!6283814))

(declare-fun m!6283920 () Bool)

(assert (=> b!5238994 m!6283920))

(assert (=> b!5238994 m!6283818))

(assert (=> b!5238994 m!6283920))

(assert (=> b!5238994 m!6283818))

(declare-fun m!6283922 () Bool)

(assert (=> b!5238994 m!6283922))

(assert (=> b!5238761 d!1688373))

(declare-fun d!1688375 () Bool)

(declare-fun e!3259929 () Bool)

(assert (=> d!1688375 e!3259929))

(declare-fun res!2223705 () Bool)

(assert (=> d!1688375 (=> (not res!2223705) (not e!3259929))))

(declare-fun lt!2147963 () List!60817)

(declare-fun noDuplicate!1209 (List!60817) Bool)

(assert (=> d!1688375 (= res!2223705 (noDuplicate!1209 lt!2147963))))

(declare-fun choose!38989 ((InoxSet Context!8446)) List!60817)

(assert (=> d!1688375 (= lt!2147963 (choose!38989 z!1189))))

(assert (=> d!1688375 (= (toList!8623 z!1189) lt!2147963)))

(declare-fun b!5239015 () Bool)

(declare-fun content!10774 (List!60817) (InoxSet Context!8446))

(assert (=> b!5239015 (= e!3259929 (= (content!10774 lt!2147963) z!1189))))

(assert (= (and d!1688375 res!2223705) b!5239015))

(declare-fun m!6283924 () Bool)

(assert (=> d!1688375 m!6283924))

(declare-fun m!6283926 () Bool)

(assert (=> d!1688375 m!6283926))

(declare-fun m!6283928 () Bool)

(assert (=> b!5239015 m!6283928))

(assert (=> b!5238762 d!1688375))

(assert (=> b!5238741 d!1688373))

(declare-fun d!1688377 () Bool)

(declare-fun c!905341 () Bool)

(assert (=> d!1688377 (= c!905341 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3259930 () Bool)

(assert (=> d!1688377 (= (matchZipper!1083 lt!2147896 (t!373999 s!2326)) e!3259930)))

(declare-fun b!5239016 () Bool)

(assert (=> b!5239016 (= e!3259930 (nullableZipper!1254 lt!2147896))))

(declare-fun b!5239017 () Bool)

(assert (=> b!5239017 (= e!3259930 (matchZipper!1083 (derivationStepZipper!1098 lt!2147896 (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688377 c!905341) b!5239016))

(assert (= (and d!1688377 (not c!905341)) b!5239017))

(assert (=> d!1688377 m!6283810))

(declare-fun m!6283930 () Bool)

(assert (=> b!5239016 m!6283930))

(assert (=> b!5239017 m!6283814))

(assert (=> b!5239017 m!6283814))

(declare-fun m!6283932 () Bool)

(assert (=> b!5239017 m!6283932))

(assert (=> b!5239017 m!6283818))

(assert (=> b!5239017 m!6283932))

(assert (=> b!5239017 m!6283818))

(declare-fun m!6283934 () Bool)

(assert (=> b!5239017 m!6283934))

(assert (=> b!5238743 d!1688377))

(declare-fun d!1688379 () Bool)

(declare-fun c!905342 () Bool)

(assert (=> d!1688379 (= c!905342 (isEmpty!32622 s!2326))))

(declare-fun e!3259931 () Bool)

(assert (=> d!1688379 (= (matchZipper!1083 lt!2147897 s!2326) e!3259931)))

(declare-fun b!5239018 () Bool)

(assert (=> b!5239018 (= e!3259931 (nullableZipper!1254 lt!2147897))))

(declare-fun b!5239019 () Bool)

(assert (=> b!5239019 (= e!3259931 (matchZipper!1083 (derivationStepZipper!1098 lt!2147897 (head!11226 s!2326)) (tail!10323 s!2326)))))

(assert (= (and d!1688379 c!905342) b!5239018))

(assert (= (and d!1688379 (not c!905342)) b!5239019))

(assert (=> d!1688379 m!6283846))

(declare-fun m!6283936 () Bool)

(assert (=> b!5239018 m!6283936))

(assert (=> b!5239019 m!6283850))

(assert (=> b!5239019 m!6283850))

(declare-fun m!6283938 () Bool)

(assert (=> b!5239019 m!6283938))

(assert (=> b!5239019 m!6283854))

(assert (=> b!5239019 m!6283938))

(assert (=> b!5239019 m!6283854))

(declare-fun m!6283940 () Bool)

(assert (=> b!5239019 m!6283940))

(assert (=> b!5238745 d!1688379))

(declare-fun b!5239061 () Bool)

(declare-fun e!3259961 () Regex!14839)

(assert (=> b!5239061 (= e!3259961 (h!67140 (exprs!4723 (h!67141 zl!343))))))

(declare-fun b!5239062 () Bool)

(declare-fun e!3259958 () Bool)

(declare-fun lt!2147972 () Regex!14839)

(declare-fun isConcat!313 (Regex!14839) Bool)

(assert (=> b!5239062 (= e!3259958 (isConcat!313 lt!2147972))))

(declare-fun b!5239063 () Bool)

(declare-fun e!3259962 () Bool)

(declare-fun e!3259963 () Bool)

(assert (=> b!5239063 (= e!3259962 e!3259963)))

(declare-fun c!905358 () Bool)

(assert (=> b!5239063 (= c!905358 (isEmpty!32620 (exprs!4723 (h!67141 zl!343))))))

(declare-fun b!5239064 () Bool)

(declare-fun isEmptyExpr!790 (Regex!14839) Bool)

(assert (=> b!5239064 (= e!3259963 (isEmptyExpr!790 lt!2147972))))

(declare-fun d!1688381 () Bool)

(assert (=> d!1688381 e!3259962))

(declare-fun res!2223717 () Bool)

(assert (=> d!1688381 (=> (not res!2223717) (not e!3259962))))

(assert (=> d!1688381 (= res!2223717 (validRegex!6575 lt!2147972))))

(assert (=> d!1688381 (= lt!2147972 e!3259961)))

(declare-fun c!905359 () Bool)

(declare-fun e!3259960 () Bool)

(assert (=> d!1688381 (= c!905359 e!3259960)))

(declare-fun res!2223718 () Bool)

(assert (=> d!1688381 (=> (not res!2223718) (not e!3259960))))

(assert (=> d!1688381 (= res!2223718 ((_ is Cons!60692) (exprs!4723 (h!67141 zl!343))))))

(declare-fun lambda!263438 () Int)

(declare-fun forall!14263 (List!60816 Int) Bool)

(assert (=> d!1688381 (forall!14263 (exprs!4723 (h!67141 zl!343)) lambda!263438)))

(assert (=> d!1688381 (= (generalisedConcat!508 (exprs!4723 (h!67141 zl!343))) lt!2147972)))

(declare-fun b!5239065 () Bool)

(declare-fun e!3259959 () Regex!14839)

(assert (=> b!5239065 (= e!3259961 e!3259959)))

(declare-fun c!905361 () Bool)

(assert (=> b!5239065 (= c!905361 ((_ is Cons!60692) (exprs!4723 (h!67141 zl!343))))))

(declare-fun b!5239066 () Bool)

(declare-fun head!11228 (List!60816) Regex!14839)

(assert (=> b!5239066 (= e!3259958 (= lt!2147972 (head!11228 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5239067 () Bool)

(assert (=> b!5239067 (= e!3259963 e!3259958)))

(declare-fun c!905360 () Bool)

(declare-fun tail!10325 (List!60816) List!60816)

(assert (=> b!5239067 (= c!905360 (isEmpty!32620 (tail!10325 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5239068 () Bool)

(assert (=> b!5239068 (= e!3259960 (isEmpty!32620 (t!373997 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5239069 () Bool)

(assert (=> b!5239069 (= e!3259959 (Concat!23684 (h!67140 (exprs!4723 (h!67141 zl!343))) (generalisedConcat!508 (t!373997 (exprs!4723 (h!67141 zl!343))))))))

(declare-fun b!5239070 () Bool)

(assert (=> b!5239070 (= e!3259959 EmptyExpr!14839)))

(assert (= (and d!1688381 res!2223718) b!5239068))

(assert (= (and d!1688381 c!905359) b!5239061))

(assert (= (and d!1688381 (not c!905359)) b!5239065))

(assert (= (and b!5239065 c!905361) b!5239069))

(assert (= (and b!5239065 (not c!905361)) b!5239070))

(assert (= (and d!1688381 res!2223717) b!5239063))

(assert (= (and b!5239063 c!905358) b!5239064))

(assert (= (and b!5239063 (not c!905358)) b!5239067))

(assert (= (and b!5239067 c!905360) b!5239066))

(assert (= (and b!5239067 (not c!905360)) b!5239062))

(declare-fun m!6283980 () Bool)

(assert (=> b!5239067 m!6283980))

(assert (=> b!5239067 m!6283980))

(declare-fun m!6283982 () Bool)

(assert (=> b!5239067 m!6283982))

(assert (=> b!5239068 m!6283588))

(declare-fun m!6283984 () Bool)

(assert (=> d!1688381 m!6283984))

(declare-fun m!6283986 () Bool)

(assert (=> d!1688381 m!6283986))

(declare-fun m!6283988 () Bool)

(assert (=> b!5239069 m!6283988))

(declare-fun m!6283990 () Bool)

(assert (=> b!5239063 m!6283990))

(declare-fun m!6283992 () Bool)

(assert (=> b!5239066 m!6283992))

(declare-fun m!6283994 () Bool)

(assert (=> b!5239064 m!6283994))

(declare-fun m!6283996 () Bool)

(assert (=> b!5239062 m!6283996))

(assert (=> b!5238747 d!1688381))

(declare-fun d!1688395 () Bool)

(assert (=> d!1688395 (= (isEmpty!32619 (t!373998 zl!343)) ((_ is Nil!60693) (t!373998 zl!343)))))

(assert (=> b!5238727 d!1688395))

(declare-fun bs!1215678 () Bool)

(declare-fun d!1688397 () Bool)

(assert (= bs!1215678 (and d!1688397 d!1688381)))

(declare-fun lambda!263441 () Int)

(assert (=> bs!1215678 (= lambda!263441 lambda!263438)))

(assert (=> d!1688397 (= (inv!80344 (h!67141 zl!343)) (forall!14263 (exprs!4723 (h!67141 zl!343)) lambda!263441))))

(declare-fun bs!1215679 () Bool)

(assert (= bs!1215679 d!1688397))

(declare-fun m!6283998 () Bool)

(assert (=> bs!1215679 m!6283998))

(assert (=> b!5238726 d!1688397))

(declare-fun b!5239137 () Bool)

(declare-fun e!3260003 () Option!14950)

(assert (=> b!5239137 (= e!3260003 None!14949)))

(declare-fun b!5239138 () Bool)

(declare-fun res!2223735 () Bool)

(declare-fun e!3260004 () Bool)

(assert (=> b!5239138 (=> (not res!2223735) (not e!3260004))))

(declare-fun lt!2147991 () Option!14950)

(declare-fun get!20858 (Option!14950) tuple2!64076)

(assert (=> b!5239138 (= res!2223735 (matchR!7024 (regTwo!30190 r!7292) (_2!35341 (get!20858 lt!2147991))))))

(declare-fun b!5239139 () Bool)

(declare-fun e!3260002 () Option!14950)

(assert (=> b!5239139 (= e!3260002 e!3260003)))

(declare-fun c!905387 () Bool)

(assert (=> b!5239139 (= c!905387 ((_ is Nil!60694) s!2326))))

(declare-fun b!5239140 () Bool)

(declare-fun e!3260005 () Bool)

(assert (=> b!5239140 (= e!3260005 (matchR!7024 (regTwo!30190 r!7292) s!2326))))

(declare-fun b!5239141 () Bool)

(declare-fun e!3260001 () Bool)

(assert (=> b!5239141 (= e!3260001 (not (isDefined!11653 lt!2147991)))))

(declare-fun b!5239142 () Bool)

(declare-fun lt!2147992 () Unit!152726)

(declare-fun lt!2147990 () Unit!152726)

(assert (=> b!5239142 (= lt!2147992 lt!2147990)))

(declare-fun ++!13233 (List!60818 List!60818) List!60818)

(assert (=> b!5239142 (= (++!13233 (++!13233 Nil!60694 (Cons!60694 (h!67142 s!2326) Nil!60694)) (t!373999 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1648 (List!60818 C!29948 List!60818 List!60818) Unit!152726)

(assert (=> b!5239142 (= lt!2147990 (lemmaMoveElementToOtherListKeepsConcatEq!1648 Nil!60694 (h!67142 s!2326) (t!373999 s!2326) s!2326))))

(assert (=> b!5239142 (= e!3260003 (findConcatSeparation!1364 (regOne!30190 r!7292) (regTwo!30190 r!7292) (++!13233 Nil!60694 (Cons!60694 (h!67142 s!2326) Nil!60694)) (t!373999 s!2326) s!2326))))

(declare-fun b!5239143 () Bool)

(declare-fun res!2223736 () Bool)

(assert (=> b!5239143 (=> (not res!2223736) (not e!3260004))))

(assert (=> b!5239143 (= res!2223736 (matchR!7024 (regOne!30190 r!7292) (_1!35341 (get!20858 lt!2147991))))))

(declare-fun d!1688399 () Bool)

(assert (=> d!1688399 e!3260001))

(declare-fun res!2223738 () Bool)

(assert (=> d!1688399 (=> res!2223738 e!3260001)))

(assert (=> d!1688399 (= res!2223738 e!3260004)))

(declare-fun res!2223739 () Bool)

(assert (=> d!1688399 (=> (not res!2223739) (not e!3260004))))

(assert (=> d!1688399 (= res!2223739 (isDefined!11653 lt!2147991))))

(assert (=> d!1688399 (= lt!2147991 e!3260002)))

(declare-fun c!905388 () Bool)

(assert (=> d!1688399 (= c!905388 e!3260005)))

(declare-fun res!2223737 () Bool)

(assert (=> d!1688399 (=> (not res!2223737) (not e!3260005))))

(assert (=> d!1688399 (= res!2223737 (matchR!7024 (regOne!30190 r!7292) Nil!60694))))

(assert (=> d!1688399 (validRegex!6575 (regOne!30190 r!7292))))

(assert (=> d!1688399 (= (findConcatSeparation!1364 (regOne!30190 r!7292) (regTwo!30190 r!7292) Nil!60694 s!2326 s!2326) lt!2147991)))

(declare-fun b!5239144 () Bool)

(assert (=> b!5239144 (= e!3260004 (= (++!13233 (_1!35341 (get!20858 lt!2147991)) (_2!35341 (get!20858 lt!2147991))) s!2326))))

(declare-fun b!5239145 () Bool)

(assert (=> b!5239145 (= e!3260002 (Some!14949 (tuple2!64077 Nil!60694 s!2326)))))

(assert (= (and d!1688399 res!2223737) b!5239140))

(assert (= (and d!1688399 c!905388) b!5239145))

(assert (= (and d!1688399 (not c!905388)) b!5239139))

(assert (= (and b!5239139 c!905387) b!5239137))

(assert (= (and b!5239139 (not c!905387)) b!5239142))

(assert (= (and d!1688399 res!2223739) b!5239143))

(assert (= (and b!5239143 res!2223736) b!5239138))

(assert (= (and b!5239138 res!2223735) b!5239144))

(assert (= (and d!1688399 (not res!2223738)) b!5239141))

(declare-fun m!6284042 () Bool)

(assert (=> b!5239140 m!6284042))

(declare-fun m!6284044 () Bool)

(assert (=> d!1688399 m!6284044))

(declare-fun m!6284046 () Bool)

(assert (=> d!1688399 m!6284046))

(declare-fun m!6284048 () Bool)

(assert (=> d!1688399 m!6284048))

(assert (=> b!5239141 m!6284044))

(declare-fun m!6284050 () Bool)

(assert (=> b!5239138 m!6284050))

(declare-fun m!6284052 () Bool)

(assert (=> b!5239138 m!6284052))

(assert (=> b!5239143 m!6284050))

(declare-fun m!6284054 () Bool)

(assert (=> b!5239143 m!6284054))

(assert (=> b!5239144 m!6284050))

(declare-fun m!6284056 () Bool)

(assert (=> b!5239144 m!6284056))

(declare-fun m!6284058 () Bool)

(assert (=> b!5239142 m!6284058))

(assert (=> b!5239142 m!6284058))

(declare-fun m!6284060 () Bool)

(assert (=> b!5239142 m!6284060))

(declare-fun m!6284062 () Bool)

(assert (=> b!5239142 m!6284062))

(assert (=> b!5239142 m!6284058))

(declare-fun m!6284064 () Bool)

(assert (=> b!5239142 m!6284064))

(assert (=> b!5238728 d!1688399))

(declare-fun d!1688413 () Bool)

(declare-fun choose!38991 (Int) Bool)

(assert (=> d!1688413 (= (Exists!2020 lambda!263421) (choose!38991 lambda!263421))))

(declare-fun bs!1215685 () Bool)

(assert (= bs!1215685 d!1688413))

(declare-fun m!6284066 () Bool)

(assert (=> bs!1215685 m!6284066))

(assert (=> b!5238728 d!1688413))

(declare-fun d!1688415 () Bool)

(assert (=> d!1688415 (= (Exists!2020 lambda!263422) (choose!38991 lambda!263422))))

(declare-fun bs!1215686 () Bool)

(assert (= bs!1215686 d!1688415))

(declare-fun m!6284068 () Bool)

(assert (=> bs!1215686 m!6284068))

(assert (=> b!5238728 d!1688415))

(declare-fun bs!1215687 () Bool)

(declare-fun d!1688417 () Bool)

(assert (= bs!1215687 (and d!1688417 b!5238728)))

(declare-fun lambda!263450 () Int)

(assert (=> bs!1215687 (= lambda!263450 lambda!263421)))

(assert (=> bs!1215687 (not (= lambda!263450 lambda!263422))))

(assert (=> d!1688417 true))

(assert (=> d!1688417 true))

(assert (=> d!1688417 true))

(assert (=> d!1688417 (= (isDefined!11653 (findConcatSeparation!1364 (regOne!30190 r!7292) (regTwo!30190 r!7292) Nil!60694 s!2326 s!2326)) (Exists!2020 lambda!263450))))

(declare-fun lt!2147995 () Unit!152726)

(declare-fun choose!38992 (Regex!14839 Regex!14839 List!60818) Unit!152726)

(assert (=> d!1688417 (= lt!2147995 (choose!38992 (regOne!30190 r!7292) (regTwo!30190 r!7292) s!2326))))

(assert (=> d!1688417 (validRegex!6575 (regOne!30190 r!7292))))

(assert (=> d!1688417 (= (lemmaFindConcatSeparationEquivalentToExists!1128 (regOne!30190 r!7292) (regTwo!30190 r!7292) s!2326) lt!2147995)))

(declare-fun bs!1215688 () Bool)

(assert (= bs!1215688 d!1688417))

(declare-fun m!6284078 () Bool)

(assert (=> bs!1215688 m!6284078))

(declare-fun m!6284082 () Bool)

(assert (=> bs!1215688 m!6284082))

(assert (=> bs!1215688 m!6283634))

(assert (=> bs!1215688 m!6284048))

(assert (=> bs!1215688 m!6283634))

(assert (=> bs!1215688 m!6283636))

(assert (=> b!5238728 d!1688417))

(declare-fun bs!1215702 () Bool)

(declare-fun d!1688421 () Bool)

(assert (= bs!1215702 (and d!1688421 b!5238728)))

(declare-fun lambda!263459 () Int)

(assert (=> bs!1215702 (= lambda!263459 lambda!263421)))

(assert (=> bs!1215702 (not (= lambda!263459 lambda!263422))))

(declare-fun bs!1215703 () Bool)

(assert (= bs!1215703 (and d!1688421 d!1688417)))

(assert (=> bs!1215703 (= lambda!263459 lambda!263450)))

(assert (=> d!1688421 true))

(assert (=> d!1688421 true))

(assert (=> d!1688421 true))

(declare-fun lambda!263461 () Int)

(assert (=> bs!1215702 (not (= lambda!263461 lambda!263421))))

(assert (=> bs!1215702 (= lambda!263461 lambda!263422)))

(assert (=> bs!1215703 (not (= lambda!263461 lambda!263450))))

(declare-fun bs!1215711 () Bool)

(assert (= bs!1215711 d!1688421))

(assert (=> bs!1215711 (not (= lambda!263461 lambda!263459))))

(assert (=> d!1688421 true))

(assert (=> d!1688421 true))

(assert (=> d!1688421 true))

(assert (=> d!1688421 (= (Exists!2020 lambda!263459) (Exists!2020 lambda!263461))))

(declare-fun lt!2148005 () Unit!152726)

(declare-fun choose!38993 (Regex!14839 Regex!14839 List!60818) Unit!152726)

(assert (=> d!1688421 (= lt!2148005 (choose!38993 (regOne!30190 r!7292) (regTwo!30190 r!7292) s!2326))))

(assert (=> d!1688421 (validRegex!6575 (regOne!30190 r!7292))))

(assert (=> d!1688421 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!674 (regOne!30190 r!7292) (regTwo!30190 r!7292) s!2326) lt!2148005)))

(declare-fun m!6284160 () Bool)

(assert (=> bs!1215711 m!6284160))

(declare-fun m!6284162 () Bool)

(assert (=> bs!1215711 m!6284162))

(declare-fun m!6284164 () Bool)

(assert (=> bs!1215711 m!6284164))

(assert (=> bs!1215711 m!6284048))

(assert (=> b!5238728 d!1688421))

(declare-fun d!1688455 () Bool)

(declare-fun isEmpty!32623 (Option!14950) Bool)

(assert (=> d!1688455 (= (isDefined!11653 (findConcatSeparation!1364 (regOne!30190 r!7292) (regTwo!30190 r!7292) Nil!60694 s!2326 s!2326)) (not (isEmpty!32623 (findConcatSeparation!1364 (regOne!30190 r!7292) (regTwo!30190 r!7292) Nil!60694 s!2326 s!2326))))))

(declare-fun bs!1215712 () Bool)

(assert (= bs!1215712 d!1688455))

(assert (=> bs!1215712 m!6283634))

(declare-fun m!6284174 () Bool)

(assert (=> bs!1215712 m!6284174))

(assert (=> b!5238728 d!1688455))

(assert (=> b!5238748 d!1688377))

(declare-fun b!5239282 () Bool)

(declare-fun e!3260093 () Bool)

(declare-fun e!3260094 () Bool)

(assert (=> b!5239282 (= e!3260093 e!3260094)))

(declare-fun c!905435 () Bool)

(assert (=> b!5239282 (= c!905435 ((_ is Star!14839) r!7292))))

(declare-fun b!5239283 () Bool)

(declare-fun e!3260092 () Bool)

(declare-fun call!370824 () Bool)

(assert (=> b!5239283 (= e!3260092 call!370824)))

(declare-fun bm!370819 () Bool)

(declare-fun call!370826 () Bool)

(assert (=> bm!370819 (= call!370824 call!370826)))

(declare-fun c!905436 () Bool)

(declare-fun bm!370820 () Bool)

(assert (=> bm!370820 (= call!370826 (validRegex!6575 (ite c!905435 (reg!15168 r!7292) (ite c!905436 (regTwo!30191 r!7292) (regTwo!30190 r!7292)))))))

(declare-fun b!5239284 () Bool)

(declare-fun e!3260089 () Bool)

(assert (=> b!5239284 (= e!3260094 e!3260089)))

(declare-fun res!2223784 () Bool)

(assert (=> b!5239284 (= res!2223784 (not (nullable!5008 (reg!15168 r!7292))))))

(assert (=> b!5239284 (=> (not res!2223784) (not e!3260089))))

(declare-fun b!5239285 () Bool)

(declare-fun res!2223783 () Bool)

(declare-fun e!3260091 () Bool)

(assert (=> b!5239285 (=> res!2223783 e!3260091)))

(assert (=> b!5239285 (= res!2223783 (not ((_ is Concat!23684) r!7292)))))

(declare-fun e!3260095 () Bool)

(assert (=> b!5239285 (= e!3260095 e!3260091)))

(declare-fun b!5239286 () Bool)

(assert (=> b!5239286 (= e!3260094 e!3260095)))

(assert (=> b!5239286 (= c!905436 ((_ is Union!14839) r!7292))))

(declare-fun b!5239287 () Bool)

(declare-fun res!2223786 () Bool)

(declare-fun e!3260090 () Bool)

(assert (=> b!5239287 (=> (not res!2223786) (not e!3260090))))

(declare-fun call!370825 () Bool)

(assert (=> b!5239287 (= res!2223786 call!370825)))

(assert (=> b!5239287 (= e!3260095 e!3260090)))

(declare-fun b!5239288 () Bool)

(assert (=> b!5239288 (= e!3260091 e!3260092)))

(declare-fun res!2223785 () Bool)

(assert (=> b!5239288 (=> (not res!2223785) (not e!3260092))))

(assert (=> b!5239288 (= res!2223785 call!370825)))

(declare-fun b!5239281 () Bool)

(assert (=> b!5239281 (= e!3260089 call!370826)))

(declare-fun d!1688459 () Bool)

(declare-fun res!2223787 () Bool)

(assert (=> d!1688459 (=> res!2223787 e!3260093)))

(assert (=> d!1688459 (= res!2223787 ((_ is ElementMatch!14839) r!7292))))

(assert (=> d!1688459 (= (validRegex!6575 r!7292) e!3260093)))

(declare-fun bm!370821 () Bool)

(assert (=> bm!370821 (= call!370825 (validRegex!6575 (ite c!905436 (regOne!30191 r!7292) (regOne!30190 r!7292))))))

(declare-fun b!5239289 () Bool)

(assert (=> b!5239289 (= e!3260090 call!370824)))

(assert (= (and d!1688459 (not res!2223787)) b!5239282))

(assert (= (and b!5239282 c!905435) b!5239284))

(assert (= (and b!5239282 (not c!905435)) b!5239286))

(assert (= (and b!5239284 res!2223784) b!5239281))

(assert (= (and b!5239286 c!905436) b!5239287))

(assert (= (and b!5239286 (not c!905436)) b!5239285))

(assert (= (and b!5239287 res!2223786) b!5239289))

(assert (= (and b!5239285 (not res!2223783)) b!5239288))

(assert (= (and b!5239288 res!2223785) b!5239283))

(assert (= (or b!5239289 b!5239283) bm!370819))

(assert (= (or b!5239287 b!5239288) bm!370821))

(assert (= (or b!5239281 bm!370819) bm!370820))

(declare-fun m!6284208 () Bool)

(assert (=> bm!370820 m!6284208))

(declare-fun m!6284210 () Bool)

(assert (=> b!5239284 m!6284210))

(declare-fun m!6284212 () Bool)

(assert (=> bm!370821 m!6284212))

(assert (=> start!553802 d!1688459))

(declare-fun b!5239291 () Bool)

(declare-fun e!3260100 () Bool)

(declare-fun e!3260101 () Bool)

(assert (=> b!5239291 (= e!3260100 e!3260101)))

(declare-fun c!905437 () Bool)

(assert (=> b!5239291 (= c!905437 ((_ is Star!14839) lt!2147905))))

(declare-fun b!5239292 () Bool)

(declare-fun e!3260099 () Bool)

(declare-fun call!370827 () Bool)

(assert (=> b!5239292 (= e!3260099 call!370827)))

(declare-fun bm!370822 () Bool)

(declare-fun call!370829 () Bool)

(assert (=> bm!370822 (= call!370827 call!370829)))

(declare-fun bm!370823 () Bool)

(declare-fun c!905438 () Bool)

(assert (=> bm!370823 (= call!370829 (validRegex!6575 (ite c!905437 (reg!15168 lt!2147905) (ite c!905438 (regTwo!30191 lt!2147905) (regTwo!30190 lt!2147905)))))))

(declare-fun b!5239293 () Bool)

(declare-fun e!3260096 () Bool)

(assert (=> b!5239293 (= e!3260101 e!3260096)))

(declare-fun res!2223789 () Bool)

(assert (=> b!5239293 (= res!2223789 (not (nullable!5008 (reg!15168 lt!2147905))))))

(assert (=> b!5239293 (=> (not res!2223789) (not e!3260096))))

(declare-fun b!5239294 () Bool)

(declare-fun res!2223788 () Bool)

(declare-fun e!3260098 () Bool)

(assert (=> b!5239294 (=> res!2223788 e!3260098)))

(assert (=> b!5239294 (= res!2223788 (not ((_ is Concat!23684) lt!2147905)))))

(declare-fun e!3260102 () Bool)

(assert (=> b!5239294 (= e!3260102 e!3260098)))

(declare-fun b!5239295 () Bool)

(assert (=> b!5239295 (= e!3260101 e!3260102)))

(assert (=> b!5239295 (= c!905438 ((_ is Union!14839) lt!2147905))))

(declare-fun b!5239296 () Bool)

(declare-fun res!2223791 () Bool)

(declare-fun e!3260097 () Bool)

(assert (=> b!5239296 (=> (not res!2223791) (not e!3260097))))

(declare-fun call!370828 () Bool)

(assert (=> b!5239296 (= res!2223791 call!370828)))

(assert (=> b!5239296 (= e!3260102 e!3260097)))

(declare-fun b!5239297 () Bool)

(assert (=> b!5239297 (= e!3260098 e!3260099)))

(declare-fun res!2223790 () Bool)

(assert (=> b!5239297 (=> (not res!2223790) (not e!3260099))))

(assert (=> b!5239297 (= res!2223790 call!370828)))

(declare-fun b!5239290 () Bool)

(assert (=> b!5239290 (= e!3260096 call!370829)))

(declare-fun d!1688473 () Bool)

(declare-fun res!2223792 () Bool)

(assert (=> d!1688473 (=> res!2223792 e!3260100)))

(assert (=> d!1688473 (= res!2223792 ((_ is ElementMatch!14839) lt!2147905))))

(assert (=> d!1688473 (= (validRegex!6575 lt!2147905) e!3260100)))

(declare-fun bm!370824 () Bool)

(assert (=> bm!370824 (= call!370828 (validRegex!6575 (ite c!905438 (regOne!30191 lt!2147905) (regOne!30190 lt!2147905))))))

(declare-fun b!5239298 () Bool)

(assert (=> b!5239298 (= e!3260097 call!370827)))

(assert (= (and d!1688473 (not res!2223792)) b!5239291))

(assert (= (and b!5239291 c!905437) b!5239293))

(assert (= (and b!5239291 (not c!905437)) b!5239295))

(assert (= (and b!5239293 res!2223789) b!5239290))

(assert (= (and b!5239295 c!905438) b!5239296))

(assert (= (and b!5239295 (not c!905438)) b!5239294))

(assert (= (and b!5239296 res!2223791) b!5239298))

(assert (= (and b!5239294 (not res!2223788)) b!5239297))

(assert (= (and b!5239297 res!2223790) b!5239292))

(assert (= (or b!5239298 b!5239292) bm!370822))

(assert (= (or b!5239296 b!5239297) bm!370824))

(assert (= (or b!5239290 bm!370822) bm!370823))

(declare-fun m!6284214 () Bool)

(assert (=> bm!370823 m!6284214))

(declare-fun m!6284216 () Bool)

(assert (=> b!5239293 m!6284216))

(declare-fun m!6284218 () Bool)

(assert (=> bm!370824 m!6284218))

(assert (=> b!5238729 d!1688473))

(declare-fun d!1688475 () Bool)

(assert (=> d!1688475 (= (matchR!7024 lt!2147905 s!2326) (matchRSpec!1942 lt!2147905 s!2326))))

(declare-fun lt!2148012 () Unit!152726)

(declare-fun choose!38994 (Regex!14839 List!60818) Unit!152726)

(assert (=> d!1688475 (= lt!2148012 (choose!38994 lt!2147905 s!2326))))

(assert (=> d!1688475 (validRegex!6575 lt!2147905)))

(assert (=> d!1688475 (= (mainMatchTheorem!1942 lt!2147905 s!2326) lt!2148012)))

(declare-fun bs!1215714 () Bool)

(assert (= bs!1215714 d!1688475))

(assert (=> bs!1215714 m!6283604))

(assert (=> bs!1215714 m!6283616))

(declare-fun m!6284220 () Bool)

(assert (=> bs!1215714 m!6284220))

(assert (=> bs!1215714 m!6283622))

(assert (=> b!5238729 d!1688475))

(declare-fun b!5239354 () Bool)

(declare-fun res!2223824 () Bool)

(declare-fun e!3260137 () Bool)

(assert (=> b!5239354 (=> (not res!2223824) (not e!3260137))))

(assert (=> b!5239354 (= res!2223824 (isEmpty!32622 (tail!10323 s!2326)))))

(declare-fun b!5239355 () Bool)

(declare-fun e!3260133 () Bool)

(declare-fun e!3260136 () Bool)

(assert (=> b!5239355 (= e!3260133 e!3260136)))

(declare-fun res!2223826 () Bool)

(assert (=> b!5239355 (=> (not res!2223826) (not e!3260136))))

(declare-fun lt!2148024 () Bool)

(assert (=> b!5239355 (= res!2223826 (not lt!2148024))))

(declare-fun b!5239356 () Bool)

(declare-fun e!3260134 () Bool)

(declare-fun derivativeStep!4076 (Regex!14839 C!29948) Regex!14839)

(assert (=> b!5239356 (= e!3260134 (matchR!7024 (derivativeStep!4076 lt!2147905 (head!11226 s!2326)) (tail!10323 s!2326)))))

(declare-fun b!5239357 () Bool)

(declare-fun e!3260132 () Bool)

(assert (=> b!5239357 (= e!3260132 (not lt!2148024))))

(declare-fun b!5239358 () Bool)

(declare-fun res!2223831 () Bool)

(assert (=> b!5239358 (=> (not res!2223831) (not e!3260137))))

(declare-fun call!370832 () Bool)

(assert (=> b!5239358 (= res!2223831 (not call!370832))))

(declare-fun b!5239360 () Bool)

(assert (=> b!5239360 (= e!3260134 (nullable!5008 lt!2147905))))

(declare-fun b!5239361 () Bool)

(declare-fun e!3260135 () Bool)

(assert (=> b!5239361 (= e!3260135 (= lt!2148024 call!370832))))

(declare-fun b!5239362 () Bool)

(declare-fun res!2223828 () Bool)

(declare-fun e!3260138 () Bool)

(assert (=> b!5239362 (=> res!2223828 e!3260138)))

(assert (=> b!5239362 (= res!2223828 (not (isEmpty!32622 (tail!10323 s!2326))))))

(declare-fun b!5239363 () Bool)

(assert (=> b!5239363 (= e!3260138 (not (= (head!11226 s!2326) (c!905261 lt!2147905))))))

(declare-fun b!5239364 () Bool)

(declare-fun res!2223827 () Bool)

(assert (=> b!5239364 (=> res!2223827 e!3260133)))

(assert (=> b!5239364 (= res!2223827 (not ((_ is ElementMatch!14839) lt!2147905)))))

(assert (=> b!5239364 (= e!3260132 e!3260133)))

(declare-fun b!5239365 () Bool)

(declare-fun res!2223829 () Bool)

(assert (=> b!5239365 (=> res!2223829 e!3260133)))

(assert (=> b!5239365 (= res!2223829 e!3260137)))

(declare-fun res!2223830 () Bool)

(assert (=> b!5239365 (=> (not res!2223830) (not e!3260137))))

(assert (=> b!5239365 (= res!2223830 lt!2148024)))

(declare-fun bm!370827 () Bool)

(assert (=> bm!370827 (= call!370832 (isEmpty!32622 s!2326))))

(declare-fun b!5239366 () Bool)

(assert (=> b!5239366 (= e!3260137 (= (head!11226 s!2326) (c!905261 lt!2147905)))))

(declare-fun b!5239367 () Bool)

(assert (=> b!5239367 (= e!3260135 e!3260132)))

(declare-fun c!905452 () Bool)

(assert (=> b!5239367 (= c!905452 ((_ is EmptyLang!14839) lt!2147905))))

(declare-fun b!5239359 () Bool)

(assert (=> b!5239359 (= e!3260136 e!3260138)))

(declare-fun res!2223825 () Bool)

(assert (=> b!5239359 (=> res!2223825 e!3260138)))

(assert (=> b!5239359 (= res!2223825 call!370832)))

(declare-fun d!1688477 () Bool)

(assert (=> d!1688477 e!3260135))

(declare-fun c!905453 () Bool)

(assert (=> d!1688477 (= c!905453 ((_ is EmptyExpr!14839) lt!2147905))))

(assert (=> d!1688477 (= lt!2148024 e!3260134)))

(declare-fun c!905451 () Bool)

(assert (=> d!1688477 (= c!905451 (isEmpty!32622 s!2326))))

(assert (=> d!1688477 (validRegex!6575 lt!2147905)))

(assert (=> d!1688477 (= (matchR!7024 lt!2147905 s!2326) lt!2148024)))

(assert (= (and d!1688477 c!905451) b!5239360))

(assert (= (and d!1688477 (not c!905451)) b!5239356))

(assert (= (and d!1688477 c!905453) b!5239361))

(assert (= (and d!1688477 (not c!905453)) b!5239367))

(assert (= (and b!5239367 c!905452) b!5239357))

(assert (= (and b!5239367 (not c!905452)) b!5239364))

(assert (= (and b!5239364 (not res!2223827)) b!5239365))

(assert (= (and b!5239365 res!2223830) b!5239358))

(assert (= (and b!5239358 res!2223831) b!5239354))

(assert (= (and b!5239354 res!2223824) b!5239366))

(assert (= (and b!5239365 (not res!2223829)) b!5239355))

(assert (= (and b!5239355 res!2223826) b!5239359))

(assert (= (and b!5239359 (not res!2223825)) b!5239362))

(assert (= (and b!5239362 (not res!2223828)) b!5239363))

(assert (= (or b!5239361 b!5239358 b!5239359) bm!370827))

(assert (=> b!5239354 m!6283854))

(assert (=> b!5239354 m!6283854))

(declare-fun m!6284247 () Bool)

(assert (=> b!5239354 m!6284247))

(assert (=> d!1688477 m!6283846))

(assert (=> d!1688477 m!6283622))

(assert (=> b!5239366 m!6283850))

(declare-fun m!6284250 () Bool)

(assert (=> b!5239360 m!6284250))

(assert (=> b!5239363 m!6283850))

(assert (=> bm!370827 m!6283846))

(assert (=> b!5239356 m!6283850))

(assert (=> b!5239356 m!6283850))

(declare-fun m!6284252 () Bool)

(assert (=> b!5239356 m!6284252))

(assert (=> b!5239356 m!6283854))

(assert (=> b!5239356 m!6284252))

(assert (=> b!5239356 m!6283854))

(declare-fun m!6284256 () Bool)

(assert (=> b!5239356 m!6284256))

(assert (=> b!5239362 m!6283854))

(assert (=> b!5239362 m!6283854))

(assert (=> b!5239362 m!6284247))

(assert (=> b!5238729 d!1688477))

(declare-fun d!1688485 () Bool)

(assert (=> d!1688485 (= (matchR!7024 lt!2147895 s!2326) (matchRSpec!1942 lt!2147895 s!2326))))

(declare-fun lt!2148025 () Unit!152726)

(assert (=> d!1688485 (= lt!2148025 (choose!38994 lt!2147895 s!2326))))

(assert (=> d!1688485 (validRegex!6575 lt!2147895)))

(assert (=> d!1688485 (= (mainMatchTheorem!1942 lt!2147895 s!2326) lt!2148025)))

(declare-fun bs!1215717 () Bool)

(assert (= bs!1215717 d!1688485))

(assert (=> bs!1215717 m!6283614))

(assert (=> bs!1215717 m!6283608))

(declare-fun m!6284258 () Bool)

(assert (=> bs!1215717 m!6284258))

(declare-fun m!6284260 () Bool)

(assert (=> bs!1215717 m!6284260))

(assert (=> b!5238729 d!1688485))

(declare-fun b!5239368 () Bool)

(declare-fun res!2223832 () Bool)

(declare-fun e!3260144 () Bool)

(assert (=> b!5239368 (=> (not res!2223832) (not e!3260144))))

(assert (=> b!5239368 (= res!2223832 (isEmpty!32622 (tail!10323 s!2326)))))

(declare-fun b!5239369 () Bool)

(declare-fun e!3260140 () Bool)

(declare-fun e!3260143 () Bool)

(assert (=> b!5239369 (= e!3260140 e!3260143)))

(declare-fun res!2223834 () Bool)

(assert (=> b!5239369 (=> (not res!2223834) (not e!3260143))))

(declare-fun lt!2148026 () Bool)

(assert (=> b!5239369 (= res!2223834 (not lt!2148026))))

(declare-fun b!5239370 () Bool)

(declare-fun e!3260141 () Bool)

(assert (=> b!5239370 (= e!3260141 (matchR!7024 (derivativeStep!4076 lt!2147895 (head!11226 s!2326)) (tail!10323 s!2326)))))

(declare-fun b!5239371 () Bool)

(declare-fun e!3260139 () Bool)

(assert (=> b!5239371 (= e!3260139 (not lt!2148026))))

(declare-fun b!5239372 () Bool)

(declare-fun res!2223839 () Bool)

(assert (=> b!5239372 (=> (not res!2223839) (not e!3260144))))

(declare-fun call!370833 () Bool)

(assert (=> b!5239372 (= res!2223839 (not call!370833))))

(declare-fun b!5239374 () Bool)

(assert (=> b!5239374 (= e!3260141 (nullable!5008 lt!2147895))))

(declare-fun b!5239375 () Bool)

(declare-fun e!3260142 () Bool)

(assert (=> b!5239375 (= e!3260142 (= lt!2148026 call!370833))))

(declare-fun b!5239376 () Bool)

(declare-fun res!2223836 () Bool)

(declare-fun e!3260145 () Bool)

(assert (=> b!5239376 (=> res!2223836 e!3260145)))

(assert (=> b!5239376 (= res!2223836 (not (isEmpty!32622 (tail!10323 s!2326))))))

(declare-fun b!5239377 () Bool)

(assert (=> b!5239377 (= e!3260145 (not (= (head!11226 s!2326) (c!905261 lt!2147895))))))

(declare-fun b!5239378 () Bool)

(declare-fun res!2223835 () Bool)

(assert (=> b!5239378 (=> res!2223835 e!3260140)))

(assert (=> b!5239378 (= res!2223835 (not ((_ is ElementMatch!14839) lt!2147895)))))

(assert (=> b!5239378 (= e!3260139 e!3260140)))

(declare-fun b!5239379 () Bool)

(declare-fun res!2223837 () Bool)

(assert (=> b!5239379 (=> res!2223837 e!3260140)))

(assert (=> b!5239379 (= res!2223837 e!3260144)))

(declare-fun res!2223838 () Bool)

(assert (=> b!5239379 (=> (not res!2223838) (not e!3260144))))

(assert (=> b!5239379 (= res!2223838 lt!2148026)))

(declare-fun bm!370828 () Bool)

(assert (=> bm!370828 (= call!370833 (isEmpty!32622 s!2326))))

(declare-fun b!5239380 () Bool)

(assert (=> b!5239380 (= e!3260144 (= (head!11226 s!2326) (c!905261 lt!2147895)))))

(declare-fun b!5239381 () Bool)

(assert (=> b!5239381 (= e!3260142 e!3260139)))

(declare-fun c!905455 () Bool)

(assert (=> b!5239381 (= c!905455 ((_ is EmptyLang!14839) lt!2147895))))

(declare-fun b!5239373 () Bool)

(assert (=> b!5239373 (= e!3260143 e!3260145)))

(declare-fun res!2223833 () Bool)

(assert (=> b!5239373 (=> res!2223833 e!3260145)))

(assert (=> b!5239373 (= res!2223833 call!370833)))

(declare-fun d!1688487 () Bool)

(assert (=> d!1688487 e!3260142))

(declare-fun c!905456 () Bool)

(assert (=> d!1688487 (= c!905456 ((_ is EmptyExpr!14839) lt!2147895))))

(assert (=> d!1688487 (= lt!2148026 e!3260141)))

(declare-fun c!905454 () Bool)

(assert (=> d!1688487 (= c!905454 (isEmpty!32622 s!2326))))

(assert (=> d!1688487 (validRegex!6575 lt!2147895)))

(assert (=> d!1688487 (= (matchR!7024 lt!2147895 s!2326) lt!2148026)))

(assert (= (and d!1688487 c!905454) b!5239374))

(assert (= (and d!1688487 (not c!905454)) b!5239370))

(assert (= (and d!1688487 c!905456) b!5239375))

(assert (= (and d!1688487 (not c!905456)) b!5239381))

(assert (= (and b!5239381 c!905455) b!5239371))

(assert (= (and b!5239381 (not c!905455)) b!5239378))

(assert (= (and b!5239378 (not res!2223835)) b!5239379))

(assert (= (and b!5239379 res!2223838) b!5239372))

(assert (= (and b!5239372 res!2223839) b!5239368))

(assert (= (and b!5239368 res!2223832) b!5239380))

(assert (= (and b!5239379 (not res!2223837)) b!5239369))

(assert (= (and b!5239369 res!2223834) b!5239373))

(assert (= (and b!5239373 (not res!2223833)) b!5239376))

(assert (= (and b!5239376 (not res!2223836)) b!5239377))

(assert (= (or b!5239375 b!5239372 b!5239373) bm!370828))

(assert (=> b!5239368 m!6283854))

(assert (=> b!5239368 m!6283854))

(assert (=> b!5239368 m!6284247))

(assert (=> d!1688487 m!6283846))

(assert (=> d!1688487 m!6284260))

(assert (=> b!5239380 m!6283850))

(declare-fun m!6284262 () Bool)

(assert (=> b!5239374 m!6284262))

(assert (=> b!5239377 m!6283850))

(assert (=> bm!370828 m!6283846))

(assert (=> b!5239370 m!6283850))

(assert (=> b!5239370 m!6283850))

(declare-fun m!6284264 () Bool)

(assert (=> b!5239370 m!6284264))

(assert (=> b!5239370 m!6283854))

(assert (=> b!5239370 m!6284264))

(assert (=> b!5239370 m!6283854))

(declare-fun m!6284266 () Bool)

(assert (=> b!5239370 m!6284266))

(assert (=> b!5239376 m!6283854))

(assert (=> b!5239376 m!6283854))

(assert (=> b!5239376 m!6284247))

(assert (=> b!5238729 d!1688487))

(declare-fun bs!1215718 () Bool)

(declare-fun d!1688489 () Bool)

(assert (= bs!1215718 (and d!1688489 d!1688381)))

(declare-fun lambda!263462 () Int)

(assert (=> bs!1215718 (= lambda!263462 lambda!263438)))

(declare-fun bs!1215719 () Bool)

(assert (= bs!1215719 (and d!1688489 d!1688397)))

(assert (=> bs!1215719 (= lambda!263462 lambda!263441)))

(declare-fun b!5239382 () Bool)

(declare-fun e!3260149 () Regex!14839)

(assert (=> b!5239382 (= e!3260149 (h!67140 lt!2147890))))

(declare-fun b!5239383 () Bool)

(declare-fun e!3260146 () Bool)

(declare-fun lt!2148027 () Regex!14839)

(assert (=> b!5239383 (= e!3260146 (isConcat!313 lt!2148027))))

(declare-fun b!5239384 () Bool)

(declare-fun e!3260150 () Bool)

(declare-fun e!3260151 () Bool)

(assert (=> b!5239384 (= e!3260150 e!3260151)))

(declare-fun c!905457 () Bool)

(assert (=> b!5239384 (= c!905457 (isEmpty!32620 lt!2147890))))

(declare-fun b!5239385 () Bool)

(assert (=> b!5239385 (= e!3260151 (isEmptyExpr!790 lt!2148027))))

(assert (=> d!1688489 e!3260150))

(declare-fun res!2223840 () Bool)

(assert (=> d!1688489 (=> (not res!2223840) (not e!3260150))))

(assert (=> d!1688489 (= res!2223840 (validRegex!6575 lt!2148027))))

(assert (=> d!1688489 (= lt!2148027 e!3260149)))

(declare-fun c!905458 () Bool)

(declare-fun e!3260148 () Bool)

(assert (=> d!1688489 (= c!905458 e!3260148)))

(declare-fun res!2223841 () Bool)

(assert (=> d!1688489 (=> (not res!2223841) (not e!3260148))))

(assert (=> d!1688489 (= res!2223841 ((_ is Cons!60692) lt!2147890))))

(assert (=> d!1688489 (forall!14263 lt!2147890 lambda!263462)))

(assert (=> d!1688489 (= (generalisedConcat!508 lt!2147890) lt!2148027)))

(declare-fun b!5239386 () Bool)

(declare-fun e!3260147 () Regex!14839)

(assert (=> b!5239386 (= e!3260149 e!3260147)))

(declare-fun c!905460 () Bool)

(assert (=> b!5239386 (= c!905460 ((_ is Cons!60692) lt!2147890))))

(declare-fun b!5239387 () Bool)

(assert (=> b!5239387 (= e!3260146 (= lt!2148027 (head!11228 lt!2147890)))))

(declare-fun b!5239388 () Bool)

(assert (=> b!5239388 (= e!3260151 e!3260146)))

(declare-fun c!905459 () Bool)

(assert (=> b!5239388 (= c!905459 (isEmpty!32620 (tail!10325 lt!2147890)))))

(declare-fun b!5239389 () Bool)

(assert (=> b!5239389 (= e!3260148 (isEmpty!32620 (t!373997 lt!2147890)))))

(declare-fun b!5239390 () Bool)

(assert (=> b!5239390 (= e!3260147 (Concat!23684 (h!67140 lt!2147890) (generalisedConcat!508 (t!373997 lt!2147890))))))

(declare-fun b!5239391 () Bool)

(assert (=> b!5239391 (= e!3260147 EmptyExpr!14839)))

(assert (= (and d!1688489 res!2223841) b!5239389))

(assert (= (and d!1688489 c!905458) b!5239382))

(assert (= (and d!1688489 (not c!905458)) b!5239386))

(assert (= (and b!5239386 c!905460) b!5239390))

(assert (= (and b!5239386 (not c!905460)) b!5239391))

(assert (= (and d!1688489 res!2223840) b!5239384))

(assert (= (and b!5239384 c!905457) b!5239385))

(assert (= (and b!5239384 (not c!905457)) b!5239388))

(assert (= (and b!5239388 c!905459) b!5239387))

(assert (= (and b!5239388 (not c!905459)) b!5239383))

(declare-fun m!6284268 () Bool)

(assert (=> b!5239388 m!6284268))

(assert (=> b!5239388 m!6284268))

(declare-fun m!6284270 () Bool)

(assert (=> b!5239388 m!6284270))

(declare-fun m!6284272 () Bool)

(assert (=> b!5239389 m!6284272))

(declare-fun m!6284274 () Bool)

(assert (=> d!1688489 m!6284274))

(declare-fun m!6284276 () Bool)

(assert (=> d!1688489 m!6284276))

(declare-fun m!6284278 () Bool)

(assert (=> b!5239390 m!6284278))

(declare-fun m!6284280 () Bool)

(assert (=> b!5239384 m!6284280))

(declare-fun m!6284282 () Bool)

(assert (=> b!5239387 m!6284282))

(declare-fun m!6284284 () Bool)

(assert (=> b!5239385 m!6284284))

(declare-fun m!6284286 () Bool)

(assert (=> b!5239383 m!6284286))

(assert (=> b!5238729 d!1688489))

(declare-fun d!1688491 () Bool)

(assert (=> d!1688491 (= (matchR!7024 lt!2147895 s!2326) (matchZipper!1083 lt!2147897 s!2326))))

(declare-fun lt!2148033 () Unit!152726)

(declare-fun choose!38995 ((InoxSet Context!8446) List!60817 Regex!14839 List!60818) Unit!152726)

(assert (=> d!1688491 (= lt!2148033 (choose!38995 lt!2147897 lt!2147908 lt!2147895 s!2326))))

(assert (=> d!1688491 (validRegex!6575 lt!2147895)))

(assert (=> d!1688491 (= (theoremZipperRegexEquiv!273 lt!2147897 lt!2147908 lt!2147895 s!2326) lt!2148033)))

(declare-fun bs!1215720 () Bool)

(assert (= bs!1215720 d!1688491))

(assert (=> bs!1215720 m!6283614))

(assert (=> bs!1215720 m!6283582))

(declare-fun m!6284288 () Bool)

(assert (=> bs!1215720 m!6284288))

(assert (=> bs!1215720 m!6284260))

(assert (=> b!5238729 d!1688491))

(declare-fun bs!1215723 () Bool)

(declare-fun d!1688493 () Bool)

(assert (= bs!1215723 (and d!1688493 d!1688381)))

(declare-fun lambda!263466 () Int)

(assert (=> bs!1215723 (= lambda!263466 lambda!263438)))

(declare-fun bs!1215724 () Bool)

(assert (= bs!1215724 (and d!1688493 d!1688397)))

(assert (=> bs!1215724 (= lambda!263466 lambda!263441)))

(declare-fun bs!1215726 () Bool)

(assert (= bs!1215726 (and d!1688493 d!1688489)))

(assert (=> bs!1215726 (= lambda!263466 lambda!263462)))

(declare-fun b!5239396 () Bool)

(declare-fun e!3260157 () Regex!14839)

(assert (=> b!5239396 (= e!3260157 (h!67140 lt!2147910))))

(declare-fun b!5239397 () Bool)

(declare-fun e!3260154 () Bool)

(declare-fun lt!2148034 () Regex!14839)

(assert (=> b!5239397 (= e!3260154 (isConcat!313 lt!2148034))))

(declare-fun b!5239398 () Bool)

(declare-fun e!3260158 () Bool)

(declare-fun e!3260159 () Bool)

(assert (=> b!5239398 (= e!3260158 e!3260159)))

(declare-fun c!905461 () Bool)

(assert (=> b!5239398 (= c!905461 (isEmpty!32620 lt!2147910))))

(declare-fun b!5239399 () Bool)

(assert (=> b!5239399 (= e!3260159 (isEmptyExpr!790 lt!2148034))))

(assert (=> d!1688493 e!3260158))

(declare-fun res!2223846 () Bool)

(assert (=> d!1688493 (=> (not res!2223846) (not e!3260158))))

(assert (=> d!1688493 (= res!2223846 (validRegex!6575 lt!2148034))))

(assert (=> d!1688493 (= lt!2148034 e!3260157)))

(declare-fun c!905462 () Bool)

(declare-fun e!3260156 () Bool)

(assert (=> d!1688493 (= c!905462 e!3260156)))

(declare-fun res!2223847 () Bool)

(assert (=> d!1688493 (=> (not res!2223847) (not e!3260156))))

(assert (=> d!1688493 (= res!2223847 ((_ is Cons!60692) lt!2147910))))

(assert (=> d!1688493 (forall!14263 lt!2147910 lambda!263466)))

(assert (=> d!1688493 (= (generalisedConcat!508 lt!2147910) lt!2148034)))

(declare-fun b!5239400 () Bool)

(declare-fun e!3260155 () Regex!14839)

(assert (=> b!5239400 (= e!3260157 e!3260155)))

(declare-fun c!905464 () Bool)

(assert (=> b!5239400 (= c!905464 ((_ is Cons!60692) lt!2147910))))

(declare-fun b!5239401 () Bool)

(assert (=> b!5239401 (= e!3260154 (= lt!2148034 (head!11228 lt!2147910)))))

(declare-fun b!5239402 () Bool)

(assert (=> b!5239402 (= e!3260159 e!3260154)))

(declare-fun c!905463 () Bool)

(assert (=> b!5239402 (= c!905463 (isEmpty!32620 (tail!10325 lt!2147910)))))

(declare-fun b!5239403 () Bool)

(assert (=> b!5239403 (= e!3260156 (isEmpty!32620 (t!373997 lt!2147910)))))

(declare-fun b!5239404 () Bool)

(assert (=> b!5239404 (= e!3260155 (Concat!23684 (h!67140 lt!2147910) (generalisedConcat!508 (t!373997 lt!2147910))))))

(declare-fun b!5239405 () Bool)

(assert (=> b!5239405 (= e!3260155 EmptyExpr!14839)))

(assert (= (and d!1688493 res!2223847) b!5239403))

(assert (= (and d!1688493 c!905462) b!5239396))

(assert (= (and d!1688493 (not c!905462)) b!5239400))

(assert (= (and b!5239400 c!905464) b!5239404))

(assert (= (and b!5239400 (not c!905464)) b!5239405))

(assert (= (and d!1688493 res!2223846) b!5239398))

(assert (= (and b!5239398 c!905461) b!5239399))

(assert (= (and b!5239398 (not c!905461)) b!5239402))

(assert (= (and b!5239402 c!905463) b!5239401))

(assert (= (and b!5239402 (not c!905463)) b!5239397))

(declare-fun m!6284290 () Bool)

(assert (=> b!5239402 m!6284290))

(assert (=> b!5239402 m!6284290))

(declare-fun m!6284292 () Bool)

(assert (=> b!5239402 m!6284292))

(declare-fun m!6284294 () Bool)

(assert (=> b!5239403 m!6284294))

(declare-fun m!6284296 () Bool)

(assert (=> d!1688493 m!6284296))

(declare-fun m!6284298 () Bool)

(assert (=> d!1688493 m!6284298))

(declare-fun m!6284300 () Bool)

(assert (=> b!5239404 m!6284300))

(declare-fun m!6284302 () Bool)

(assert (=> b!5239398 m!6284302))

(declare-fun m!6284304 () Bool)

(assert (=> b!5239401 m!6284304))

(declare-fun m!6284306 () Bool)

(assert (=> b!5239399 m!6284306))

(declare-fun m!6284308 () Bool)

(assert (=> b!5239397 m!6284308))

(assert (=> b!5238729 d!1688493))

(assert (=> b!5238729 d!1688379))

(declare-fun bs!1215743 () Bool)

(declare-fun b!5239464 () Bool)

(assert (= bs!1215743 (and b!5239464 b!5238728)))

(declare-fun lambda!263478 () Int)

(assert (=> bs!1215743 (not (= lambda!263478 lambda!263421))))

(assert (=> bs!1215743 (not (= lambda!263478 lambda!263422))))

(declare-fun bs!1215746 () Bool)

(assert (= bs!1215746 (and b!5239464 d!1688417)))

(assert (=> bs!1215746 (not (= lambda!263478 lambda!263450))))

(declare-fun bs!1215747 () Bool)

(assert (= bs!1215747 (and b!5239464 d!1688421)))

(assert (=> bs!1215747 (not (= lambda!263478 lambda!263459))))

(assert (=> bs!1215747 (not (= lambda!263478 lambda!263461))))

(assert (=> b!5239464 true))

(assert (=> b!5239464 true))

(declare-fun bs!1215750 () Bool)

(declare-fun b!5239462 () Bool)

(assert (= bs!1215750 (and b!5239462 b!5238728)))

(declare-fun lambda!263480 () Int)

(assert (=> bs!1215750 (not (= lambda!263480 lambda!263421))))

(assert (=> bs!1215750 (= (and (= (regOne!30190 lt!2147905) (regOne!30190 r!7292)) (= (regTwo!30190 lt!2147905) (regTwo!30190 r!7292))) (= lambda!263480 lambda!263422))))

(declare-fun bs!1215753 () Bool)

(assert (= bs!1215753 (and b!5239462 d!1688421)))

(assert (=> bs!1215753 (not (= lambda!263480 lambda!263459))))

(assert (=> bs!1215753 (= (and (= (regOne!30190 lt!2147905) (regOne!30190 r!7292)) (= (regTwo!30190 lt!2147905) (regTwo!30190 r!7292))) (= lambda!263480 lambda!263461))))

(declare-fun bs!1215756 () Bool)

(assert (= bs!1215756 (and b!5239462 b!5239464)))

(assert (=> bs!1215756 (not (= lambda!263480 lambda!263478))))

(declare-fun bs!1215758 () Bool)

(assert (= bs!1215758 (and b!5239462 d!1688417)))

(assert (=> bs!1215758 (not (= lambda!263480 lambda!263450))))

(assert (=> b!5239462 true))

(assert (=> b!5239462 true))

(declare-fun b!5239457 () Bool)

(declare-fun e!3260192 () Bool)

(declare-fun e!3260195 () Bool)

(assert (=> b!5239457 (= e!3260192 e!3260195)))

(declare-fun res!2223876 () Bool)

(assert (=> b!5239457 (= res!2223876 (not ((_ is EmptyLang!14839) lt!2147905)))))

(assert (=> b!5239457 (=> (not res!2223876) (not e!3260195))))

(declare-fun bm!370835 () Bool)

(declare-fun call!370841 () Bool)

(assert (=> bm!370835 (= call!370841 (isEmpty!32622 s!2326))))

(declare-fun b!5239458 () Bool)

(declare-fun e!3260190 () Bool)

(assert (=> b!5239458 (= e!3260190 (= s!2326 (Cons!60694 (c!905261 lt!2147905) Nil!60694)))))

(declare-fun b!5239459 () Bool)

(declare-fun res!2223877 () Bool)

(declare-fun e!3260193 () Bool)

(assert (=> b!5239459 (=> res!2223877 e!3260193)))

(assert (=> b!5239459 (= res!2223877 call!370841)))

(declare-fun e!3260194 () Bool)

(assert (=> b!5239459 (= e!3260194 e!3260193)))

(declare-fun bm!370836 () Bool)

(declare-fun c!905477 () Bool)

(declare-fun call!370840 () Bool)

(assert (=> bm!370836 (= call!370840 (Exists!2020 (ite c!905477 lambda!263478 lambda!263480)))))

(declare-fun b!5239460 () Bool)

(declare-fun e!3260191 () Bool)

(assert (=> b!5239460 (= e!3260191 (matchRSpec!1942 (regTwo!30191 lt!2147905) s!2326))))

(declare-fun b!5239461 () Bool)

(declare-fun c!905478 () Bool)

(assert (=> b!5239461 (= c!905478 ((_ is ElementMatch!14839) lt!2147905))))

(assert (=> b!5239461 (= e!3260195 e!3260190)))

(assert (=> b!5239462 (= e!3260194 call!370840)))

(assert (=> b!5239464 (= e!3260193 call!370840)))

(declare-fun b!5239465 () Bool)

(declare-fun e!3260189 () Bool)

(assert (=> b!5239465 (= e!3260189 e!3260191)))

(declare-fun res!2223875 () Bool)

(assert (=> b!5239465 (= res!2223875 (matchRSpec!1942 (regOne!30191 lt!2147905) s!2326))))

(assert (=> b!5239465 (=> res!2223875 e!3260191)))

(declare-fun b!5239466 () Bool)

(assert (=> b!5239466 (= e!3260189 e!3260194)))

(assert (=> b!5239466 (= c!905477 ((_ is Star!14839) lt!2147905))))

(declare-fun b!5239467 () Bool)

(assert (=> b!5239467 (= e!3260192 call!370841)))

(declare-fun d!1688495 () Bool)

(declare-fun c!905480 () Bool)

(assert (=> d!1688495 (= c!905480 ((_ is EmptyExpr!14839) lt!2147905))))

(assert (=> d!1688495 (= (matchRSpec!1942 lt!2147905 s!2326) e!3260192)))

(declare-fun b!5239463 () Bool)

(declare-fun c!905479 () Bool)

(assert (=> b!5239463 (= c!905479 ((_ is Union!14839) lt!2147905))))

(assert (=> b!5239463 (= e!3260190 e!3260189)))

(assert (= (and d!1688495 c!905480) b!5239467))

(assert (= (and d!1688495 (not c!905480)) b!5239457))

(assert (= (and b!5239457 res!2223876) b!5239461))

(assert (= (and b!5239461 c!905478) b!5239458))

(assert (= (and b!5239461 (not c!905478)) b!5239463))

(assert (= (and b!5239463 c!905479) b!5239465))

(assert (= (and b!5239463 (not c!905479)) b!5239466))

(assert (= (and b!5239465 (not res!2223875)) b!5239460))

(assert (= (and b!5239466 c!905477) b!5239459))

(assert (= (and b!5239466 (not c!905477)) b!5239462))

(assert (= (and b!5239459 (not res!2223877)) b!5239464))

(assert (= (or b!5239464 b!5239462) bm!370836))

(assert (= (or b!5239467 b!5239459) bm!370835))

(assert (=> bm!370835 m!6283846))

(declare-fun m!6284322 () Bool)

(assert (=> bm!370836 m!6284322))

(declare-fun m!6284324 () Bool)

(assert (=> b!5239460 m!6284324))

(declare-fun m!6284326 () Bool)

(assert (=> b!5239465 m!6284326))

(assert (=> b!5238729 d!1688495))

(declare-fun d!1688503 () Bool)

(assert (=> d!1688503 (= (matchR!7024 lt!2147905 s!2326) (matchZipper!1083 lt!2147911 s!2326))))

(declare-fun lt!2148038 () Unit!152726)

(assert (=> d!1688503 (= lt!2148038 (choose!38995 lt!2147911 lt!2147913 lt!2147905 s!2326))))

(assert (=> d!1688503 (validRegex!6575 lt!2147905)))

(assert (=> d!1688503 (= (theoremZipperRegexEquiv!273 lt!2147911 lt!2147913 lt!2147905 s!2326) lt!2148038)))

(declare-fun bs!1215760 () Bool)

(assert (= bs!1215760 d!1688503))

(assert (=> bs!1215760 m!6283604))

(assert (=> bs!1215760 m!6283692))

(declare-fun m!6284334 () Bool)

(assert (=> bs!1215760 m!6284334))

(assert (=> bs!1215760 m!6283622))

(assert (=> b!5238729 d!1688503))

(declare-fun bs!1215761 () Bool)

(declare-fun b!5239489 () Bool)

(assert (= bs!1215761 (and b!5239489 b!5238728)))

(declare-fun lambda!263481 () Int)

(assert (=> bs!1215761 (not (= lambda!263481 lambda!263421))))

(assert (=> bs!1215761 (not (= lambda!263481 lambda!263422))))

(declare-fun bs!1215762 () Bool)

(assert (= bs!1215762 (and b!5239489 d!1688421)))

(assert (=> bs!1215762 (not (= lambda!263481 lambda!263459))))

(declare-fun bs!1215763 () Bool)

(assert (= bs!1215763 (and b!5239489 b!5239464)))

(assert (=> bs!1215763 (= (and (= (reg!15168 lt!2147895) (reg!15168 lt!2147905)) (= lt!2147895 lt!2147905)) (= lambda!263481 lambda!263478))))

(declare-fun bs!1215765 () Bool)

(assert (= bs!1215765 (and b!5239489 d!1688417)))

(assert (=> bs!1215765 (not (= lambda!263481 lambda!263450))))

(assert (=> bs!1215762 (not (= lambda!263481 lambda!263461))))

(declare-fun bs!1215766 () Bool)

(assert (= bs!1215766 (and b!5239489 b!5239462)))

(assert (=> bs!1215766 (not (= lambda!263481 lambda!263480))))

(assert (=> b!5239489 true))

(assert (=> b!5239489 true))

(declare-fun bs!1215767 () Bool)

(declare-fun b!5239487 () Bool)

(assert (= bs!1215767 (and b!5239487 b!5238728)))

(declare-fun lambda!263482 () Int)

(assert (=> bs!1215767 (not (= lambda!263482 lambda!263421))))

(assert (=> bs!1215767 (= (and (= (regOne!30190 lt!2147895) (regOne!30190 r!7292)) (= (regTwo!30190 lt!2147895) (regTwo!30190 r!7292))) (= lambda!263482 lambda!263422))))

(declare-fun bs!1215768 () Bool)

(assert (= bs!1215768 (and b!5239487 d!1688421)))

(assert (=> bs!1215768 (not (= lambda!263482 lambda!263459))))

(declare-fun bs!1215769 () Bool)

(assert (= bs!1215769 (and b!5239487 b!5239489)))

(assert (=> bs!1215769 (not (= lambda!263482 lambda!263481))))

(declare-fun bs!1215770 () Bool)

(assert (= bs!1215770 (and b!5239487 b!5239464)))

(assert (=> bs!1215770 (not (= lambda!263482 lambda!263478))))

(declare-fun bs!1215771 () Bool)

(assert (= bs!1215771 (and b!5239487 d!1688417)))

(assert (=> bs!1215771 (not (= lambda!263482 lambda!263450))))

(assert (=> bs!1215768 (= (and (= (regOne!30190 lt!2147895) (regOne!30190 r!7292)) (= (regTwo!30190 lt!2147895) (regTwo!30190 r!7292))) (= lambda!263482 lambda!263461))))

(declare-fun bs!1215772 () Bool)

(assert (= bs!1215772 (and b!5239487 b!5239462)))

(assert (=> bs!1215772 (= (and (= (regOne!30190 lt!2147895) (regOne!30190 lt!2147905)) (= (regTwo!30190 lt!2147895) (regTwo!30190 lt!2147905))) (= lambda!263482 lambda!263480))))

(assert (=> b!5239487 true))

(assert (=> b!5239487 true))

(declare-fun b!5239482 () Bool)

(declare-fun e!3260206 () Bool)

(declare-fun e!3260209 () Bool)

(assert (=> b!5239482 (= e!3260206 e!3260209)))

(declare-fun res!2223887 () Bool)

(assert (=> b!5239482 (= res!2223887 (not ((_ is EmptyLang!14839) lt!2147895)))))

(assert (=> b!5239482 (=> (not res!2223887) (not e!3260209))))

(declare-fun bm!370838 () Bool)

(declare-fun call!370844 () Bool)

(assert (=> bm!370838 (= call!370844 (isEmpty!32622 s!2326))))

(declare-fun b!5239483 () Bool)

(declare-fun e!3260204 () Bool)

(assert (=> b!5239483 (= e!3260204 (= s!2326 (Cons!60694 (c!905261 lt!2147895) Nil!60694)))))

(declare-fun b!5239484 () Bool)

(declare-fun res!2223888 () Bool)

(declare-fun e!3260207 () Bool)

(assert (=> b!5239484 (=> res!2223888 e!3260207)))

(assert (=> b!5239484 (= res!2223888 call!370844)))

(declare-fun e!3260208 () Bool)

(assert (=> b!5239484 (= e!3260208 e!3260207)))

(declare-fun bm!370839 () Bool)

(declare-fun call!370843 () Bool)

(declare-fun c!905484 () Bool)

(assert (=> bm!370839 (= call!370843 (Exists!2020 (ite c!905484 lambda!263481 lambda!263482)))))

(declare-fun b!5239485 () Bool)

(declare-fun e!3260205 () Bool)

(assert (=> b!5239485 (= e!3260205 (matchRSpec!1942 (regTwo!30191 lt!2147895) s!2326))))

(declare-fun b!5239486 () Bool)

(declare-fun c!905485 () Bool)

(assert (=> b!5239486 (= c!905485 ((_ is ElementMatch!14839) lt!2147895))))

(assert (=> b!5239486 (= e!3260209 e!3260204)))

(assert (=> b!5239487 (= e!3260208 call!370843)))

(assert (=> b!5239489 (= e!3260207 call!370843)))

(declare-fun b!5239490 () Bool)

(declare-fun e!3260203 () Bool)

(assert (=> b!5239490 (= e!3260203 e!3260205)))

(declare-fun res!2223886 () Bool)

(assert (=> b!5239490 (= res!2223886 (matchRSpec!1942 (regOne!30191 lt!2147895) s!2326))))

(assert (=> b!5239490 (=> res!2223886 e!3260205)))

(declare-fun b!5239491 () Bool)

(assert (=> b!5239491 (= e!3260203 e!3260208)))

(assert (=> b!5239491 (= c!905484 ((_ is Star!14839) lt!2147895))))

(declare-fun b!5239492 () Bool)

(assert (=> b!5239492 (= e!3260206 call!370844)))

(declare-fun d!1688507 () Bool)

(declare-fun c!905487 () Bool)

(assert (=> d!1688507 (= c!905487 ((_ is EmptyExpr!14839) lt!2147895))))

(assert (=> d!1688507 (= (matchRSpec!1942 lt!2147895 s!2326) e!3260206)))

(declare-fun b!5239488 () Bool)

(declare-fun c!905486 () Bool)

(assert (=> b!5239488 (= c!905486 ((_ is Union!14839) lt!2147895))))

(assert (=> b!5239488 (= e!3260204 e!3260203)))

(assert (= (and d!1688507 c!905487) b!5239492))

(assert (= (and d!1688507 (not c!905487)) b!5239482))

(assert (= (and b!5239482 res!2223887) b!5239486))

(assert (= (and b!5239486 c!905485) b!5239483))

(assert (= (and b!5239486 (not c!905485)) b!5239488))

(assert (= (and b!5239488 c!905486) b!5239490))

(assert (= (and b!5239488 (not c!905486)) b!5239491))

(assert (= (and b!5239490 (not res!2223886)) b!5239485))

(assert (= (and b!5239491 c!905484) b!5239484))

(assert (= (and b!5239491 (not c!905484)) b!5239487))

(assert (= (and b!5239484 (not res!2223888)) b!5239489))

(assert (= (or b!5239489 b!5239487) bm!370839))

(assert (= (or b!5239492 b!5239484) bm!370838))

(assert (=> bm!370838 m!6283846))

(declare-fun m!6284344 () Bool)

(assert (=> bm!370839 m!6284344))

(declare-fun m!6284346 () Bool)

(assert (=> b!5239485 m!6284346))

(declare-fun m!6284348 () Bool)

(assert (=> b!5239490 m!6284348))

(assert (=> b!5238729 d!1688507))

(declare-fun b!5239569 () Bool)

(declare-fun e!3260249 () (InoxSet Context!8446))

(assert (=> b!5239569 (= e!3260249 ((as const (Array Context!8446 Bool)) false))))

(declare-fun b!5239570 () Bool)

(declare-fun e!3260246 () (InoxSet Context!8446))

(declare-fun call!370858 () (InoxSet Context!8446))

(declare-fun call!370860 () (InoxSet Context!8446))

(assert (=> b!5239570 (= e!3260246 ((_ map or) call!370858 call!370860))))

(declare-fun b!5239571 () Bool)

(declare-fun call!370861 () (InoxSet Context!8446))

(assert (=> b!5239571 (= e!3260249 call!370861)))

(declare-fun b!5239572 () Bool)

(declare-fun e!3260250 () (InoxSet Context!8446))

(declare-fun call!370862 () (InoxSet Context!8446))

(assert (=> b!5239572 (= e!3260250 ((_ map or) call!370858 call!370862))))

(declare-fun b!5239573 () Bool)

(declare-fun c!905499 () Bool)

(declare-fun e!3260248 () Bool)

(assert (=> b!5239573 (= c!905499 e!3260248)))

(declare-fun res!2223891 () Bool)

(assert (=> b!5239573 (=> (not res!2223891) (not e!3260248))))

(assert (=> b!5239573 (= res!2223891 ((_ is Concat!23684) (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(assert (=> b!5239573 (= e!3260246 e!3260250)))

(declare-fun bm!370852 () Bool)

(assert (=> bm!370852 (= call!370861 call!370862)))

(declare-fun bm!370853 () Bool)

(assert (=> bm!370853 (= call!370862 call!370860)))

(declare-fun d!1688511 () Bool)

(declare-fun c!905501 () Bool)

(assert (=> d!1688511 (= c!905501 (and ((_ is ElementMatch!14839) (h!67140 (exprs!4723 (h!67141 zl!343)))) (= (c!905261 (h!67140 (exprs!4723 (h!67141 zl!343)))) (h!67142 s!2326))))))

(declare-fun e!3260245 () (InoxSet Context!8446))

(assert (=> d!1688511 (= (derivationStepZipperDown!287 (h!67140 (exprs!4723 (h!67141 zl!343))) lt!2147903 (h!67142 s!2326)) e!3260245)))

(declare-fun b!5239574 () Bool)

(assert (=> b!5239574 (= e!3260245 e!3260246)))

(declare-fun c!905500 () Bool)

(assert (=> b!5239574 (= c!905500 ((_ is Union!14839) (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun c!905502 () Bool)

(declare-fun bm!370854 () Bool)

(declare-fun call!370859 () List!60816)

(assert (=> bm!370854 (= call!370860 (derivationStepZipperDown!287 (ite c!905500 (regTwo!30191 (h!67140 (exprs!4723 (h!67141 zl!343)))) (ite c!905499 (regTwo!30190 (h!67140 (exprs!4723 (h!67141 zl!343)))) (ite c!905502 (regOne!30190 (h!67140 (exprs!4723 (h!67141 zl!343)))) (reg!15168 (h!67140 (exprs!4723 (h!67141 zl!343))))))) (ite (or c!905500 c!905499) lt!2147903 (Context!8447 call!370859)) (h!67142 s!2326)))))

(declare-fun call!370857 () List!60816)

(declare-fun bm!370855 () Bool)

(assert (=> bm!370855 (= call!370858 (derivationStepZipperDown!287 (ite c!905500 (regOne!30191 (h!67140 (exprs!4723 (h!67141 zl!343)))) (regOne!30190 (h!67140 (exprs!4723 (h!67141 zl!343))))) (ite c!905500 lt!2147903 (Context!8447 call!370857)) (h!67142 s!2326)))))

(declare-fun bm!370856 () Bool)

(declare-fun $colon$colon!1304 (List!60816 Regex!14839) List!60816)

(assert (=> bm!370856 (= call!370857 ($colon$colon!1304 (exprs!4723 lt!2147903) (ite (or c!905499 c!905502) (regTwo!30190 (h!67140 (exprs!4723 (h!67141 zl!343)))) (h!67140 (exprs!4723 (h!67141 zl!343))))))))

(declare-fun bm!370857 () Bool)

(assert (=> bm!370857 (= call!370859 call!370857)))

(declare-fun b!5239575 () Bool)

(declare-fun e!3260247 () (InoxSet Context!8446))

(assert (=> b!5239575 (= e!3260247 call!370861)))

(declare-fun b!5239576 () Bool)

(assert (=> b!5239576 (= e!3260250 e!3260247)))

(assert (=> b!5239576 (= c!905502 ((_ is Concat!23684) (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun b!5239577 () Bool)

(assert (=> b!5239577 (= e!3260248 (nullable!5008 (regOne!30190 (h!67140 (exprs!4723 (h!67141 zl!343))))))))

(declare-fun b!5239578 () Bool)

(assert (=> b!5239578 (= e!3260245 (store ((as const (Array Context!8446 Bool)) false) lt!2147903 true))))

(declare-fun b!5239579 () Bool)

(declare-fun c!905498 () Bool)

(assert (=> b!5239579 (= c!905498 ((_ is Star!14839) (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(assert (=> b!5239579 (= e!3260247 e!3260249)))

(assert (= (and d!1688511 c!905501) b!5239578))

(assert (= (and d!1688511 (not c!905501)) b!5239574))

(assert (= (and b!5239574 c!905500) b!5239570))

(assert (= (and b!5239574 (not c!905500)) b!5239573))

(assert (= (and b!5239573 res!2223891) b!5239577))

(assert (= (and b!5239573 c!905499) b!5239572))

(assert (= (and b!5239573 (not c!905499)) b!5239576))

(assert (= (and b!5239576 c!905502) b!5239575))

(assert (= (and b!5239576 (not c!905502)) b!5239579))

(assert (= (and b!5239579 c!905498) b!5239571))

(assert (= (and b!5239579 (not c!905498)) b!5239569))

(assert (= (or b!5239575 b!5239571) bm!370857))

(assert (= (or b!5239575 b!5239571) bm!370852))

(assert (= (or b!5239572 bm!370857) bm!370856))

(assert (= (or b!5239572 bm!370852) bm!370853))

(assert (= (or b!5239570 bm!370853) bm!370854))

(assert (= (or b!5239570 b!5239572) bm!370855))

(declare-fun m!6284354 () Bool)

(assert (=> bm!370855 m!6284354))

(declare-fun m!6284356 () Bool)

(assert (=> bm!370854 m!6284356))

(declare-fun m!6284358 () Bool)

(assert (=> b!5239578 m!6284358))

(declare-fun m!6284360 () Bool)

(assert (=> b!5239577 m!6284360))

(declare-fun m!6284362 () Bool)

(assert (=> bm!370856 m!6284362))

(assert (=> b!5238751 d!1688511))

(declare-fun d!1688519 () Bool)

(assert (=> d!1688519 (= (nullable!5008 (h!67140 (exprs!4723 (h!67141 zl!343)))) (nullableFct!1406 (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(declare-fun bs!1215776 () Bool)

(assert (= bs!1215776 d!1688519))

(declare-fun m!6284364 () Bool)

(assert (=> bs!1215776 m!6284364))

(assert (=> b!5238751 d!1688519))

(declare-fun d!1688521 () Bool)

(declare-fun c!905503 () Bool)

(declare-fun e!3260253 () Bool)

(assert (=> d!1688521 (= c!905503 e!3260253)))

(declare-fun res!2223892 () Bool)

(assert (=> d!1688521 (=> (not res!2223892) (not e!3260253))))

(assert (=> d!1688521 (= res!2223892 ((_ is Cons!60692) (exprs!4723 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343))))))))))

(declare-fun e!3260252 () (InoxSet Context!8446))

(assert (=> d!1688521 (= (derivationStepZipperUp!211 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343))))) (h!67142 s!2326)) e!3260252)))

(declare-fun call!370863 () (InoxSet Context!8446))

(declare-fun b!5239580 () Bool)

(assert (=> b!5239580 (= e!3260252 ((_ map or) call!370863 (derivationStepZipperUp!211 (Context!8447 (t!373997 (exprs!4723 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343)))))))) (h!67142 s!2326))))))

(declare-fun b!5239581 () Bool)

(declare-fun e!3260251 () (InoxSet Context!8446))

(assert (=> b!5239581 (= e!3260252 e!3260251)))

(declare-fun c!905504 () Bool)

(assert (=> b!5239581 (= c!905504 ((_ is Cons!60692) (exprs!4723 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343))))))))))

(declare-fun b!5239582 () Bool)

(assert (=> b!5239582 (= e!3260251 call!370863)))

(declare-fun b!5239583 () Bool)

(assert (=> b!5239583 (= e!3260251 ((as const (Array Context!8446 Bool)) false))))

(declare-fun bm!370858 () Bool)

(assert (=> bm!370858 (= call!370863 (derivationStepZipperDown!287 (h!67140 (exprs!4723 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343))))))) (Context!8447 (t!373997 (exprs!4723 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343)))))))) (h!67142 s!2326)))))

(declare-fun b!5239584 () Bool)

(assert (=> b!5239584 (= e!3260253 (nullable!5008 (h!67140 (exprs!4723 (Context!8447 (Cons!60692 (h!67140 (exprs!4723 (h!67141 zl!343))) (t!373997 (exprs!4723 (h!67141 zl!343)))))))))))

(assert (= (and d!1688521 res!2223892) b!5239584))

(assert (= (and d!1688521 c!905503) b!5239580))

(assert (= (and d!1688521 (not c!905503)) b!5239581))

(assert (= (and b!5239581 c!905504) b!5239582))

(assert (= (and b!5239581 (not c!905504)) b!5239583))

(assert (= (or b!5239580 b!5239582) bm!370858))

(declare-fun m!6284366 () Bool)

(assert (=> b!5239580 m!6284366))

(declare-fun m!6284368 () Bool)

(assert (=> bm!370858 m!6284368))

(declare-fun m!6284370 () Bool)

(assert (=> b!5239584 m!6284370))

(assert (=> b!5238751 d!1688521))

(declare-fun d!1688523 () Bool)

(declare-fun c!905505 () Bool)

(declare-fun e!3260256 () Bool)

(assert (=> d!1688523 (= c!905505 e!3260256)))

(declare-fun res!2223893 () Bool)

(assert (=> d!1688523 (=> (not res!2223893) (not e!3260256))))

(assert (=> d!1688523 (= res!2223893 ((_ is Cons!60692) (exprs!4723 lt!2147903)))))

(declare-fun e!3260255 () (InoxSet Context!8446))

(assert (=> d!1688523 (= (derivationStepZipperUp!211 lt!2147903 (h!67142 s!2326)) e!3260255)))

(declare-fun b!5239585 () Bool)

(declare-fun call!370864 () (InoxSet Context!8446))

(assert (=> b!5239585 (= e!3260255 ((_ map or) call!370864 (derivationStepZipperUp!211 (Context!8447 (t!373997 (exprs!4723 lt!2147903))) (h!67142 s!2326))))))

(declare-fun b!5239586 () Bool)

(declare-fun e!3260254 () (InoxSet Context!8446))

(assert (=> b!5239586 (= e!3260255 e!3260254)))

(declare-fun c!905506 () Bool)

(assert (=> b!5239586 (= c!905506 ((_ is Cons!60692) (exprs!4723 lt!2147903)))))

(declare-fun b!5239587 () Bool)

(assert (=> b!5239587 (= e!3260254 call!370864)))

(declare-fun b!5239588 () Bool)

(assert (=> b!5239588 (= e!3260254 ((as const (Array Context!8446 Bool)) false))))

(declare-fun bm!370859 () Bool)

(assert (=> bm!370859 (= call!370864 (derivationStepZipperDown!287 (h!67140 (exprs!4723 lt!2147903)) (Context!8447 (t!373997 (exprs!4723 lt!2147903))) (h!67142 s!2326)))))

(declare-fun b!5239589 () Bool)

(assert (=> b!5239589 (= e!3260256 (nullable!5008 (h!67140 (exprs!4723 lt!2147903))))))

(assert (= (and d!1688523 res!2223893) b!5239589))

(assert (= (and d!1688523 c!905505) b!5239585))

(assert (= (and d!1688523 (not c!905505)) b!5239586))

(assert (= (and b!5239586 c!905506) b!5239587))

(assert (= (and b!5239586 (not c!905506)) b!5239588))

(assert (= (or b!5239585 b!5239587) bm!370859))

(declare-fun m!6284372 () Bool)

(assert (=> b!5239585 m!6284372))

(declare-fun m!6284374 () Bool)

(assert (=> bm!370859 m!6284374))

(declare-fun m!6284376 () Bool)

(assert (=> b!5239589 m!6284376))

(assert (=> b!5238751 d!1688523))

(declare-fun d!1688525 () Bool)

(assert (=> d!1688525 (= (flatMap!566 z!1189 lambda!263423) (dynLambda!23982 lambda!263423 (h!67141 zl!343)))))

(declare-fun lt!2148041 () Unit!152726)

(assert (=> d!1688525 (= lt!2148041 (choose!38988 z!1189 (h!67141 zl!343) lambda!263423))))

(assert (=> d!1688525 (= z!1189 (store ((as const (Array Context!8446 Bool)) false) (h!67141 zl!343) true))))

(assert (=> d!1688525 (= (lemmaFlatMapOnSingletonSet!98 z!1189 (h!67141 zl!343) lambda!263423) lt!2148041)))

(declare-fun b_lambda!202501 () Bool)

(assert (=> (not b_lambda!202501) (not d!1688525)))

(declare-fun bs!1215777 () Bool)

(assert (= bs!1215777 d!1688525))

(assert (=> bs!1215777 m!6283666))

(declare-fun m!6284378 () Bool)

(assert (=> bs!1215777 m!6284378))

(declare-fun m!6284380 () Bool)

(assert (=> bs!1215777 m!6284380))

(declare-fun m!6284382 () Bool)

(assert (=> bs!1215777 m!6284382))

(assert (=> b!5238751 d!1688525))

(declare-fun d!1688527 () Bool)

(declare-fun c!905507 () Bool)

(declare-fun e!3260259 () Bool)

(assert (=> d!1688527 (= c!905507 e!3260259)))

(declare-fun res!2223894 () Bool)

(assert (=> d!1688527 (=> (not res!2223894) (not e!3260259))))

(assert (=> d!1688527 (= res!2223894 ((_ is Cons!60692) (exprs!4723 (h!67141 zl!343))))))

(declare-fun e!3260258 () (InoxSet Context!8446))

(assert (=> d!1688527 (= (derivationStepZipperUp!211 (h!67141 zl!343) (h!67142 s!2326)) e!3260258)))

(declare-fun call!370865 () (InoxSet Context!8446))

(declare-fun b!5239590 () Bool)

(assert (=> b!5239590 (= e!3260258 ((_ map or) call!370865 (derivationStepZipperUp!211 (Context!8447 (t!373997 (exprs!4723 (h!67141 zl!343)))) (h!67142 s!2326))))))

(declare-fun b!5239591 () Bool)

(declare-fun e!3260257 () (InoxSet Context!8446))

(assert (=> b!5239591 (= e!3260258 e!3260257)))

(declare-fun c!905508 () Bool)

(assert (=> b!5239591 (= c!905508 ((_ is Cons!60692) (exprs!4723 (h!67141 zl!343))))))

(declare-fun b!5239592 () Bool)

(assert (=> b!5239592 (= e!3260257 call!370865)))

(declare-fun b!5239593 () Bool)

(assert (=> b!5239593 (= e!3260257 ((as const (Array Context!8446 Bool)) false))))

(declare-fun bm!370860 () Bool)

(assert (=> bm!370860 (= call!370865 (derivationStepZipperDown!287 (h!67140 (exprs!4723 (h!67141 zl!343))) (Context!8447 (t!373997 (exprs!4723 (h!67141 zl!343)))) (h!67142 s!2326)))))

(declare-fun b!5239594 () Bool)

(assert (=> b!5239594 (= e!3260259 (nullable!5008 (h!67140 (exprs!4723 (h!67141 zl!343)))))))

(assert (= (and d!1688527 res!2223894) b!5239594))

(assert (= (and d!1688527 c!905507) b!5239590))

(assert (= (and d!1688527 (not c!905507)) b!5239591))

(assert (= (and b!5239591 c!905508) b!5239592))

(assert (= (and b!5239591 (not c!905508)) b!5239593))

(assert (= (or b!5239590 b!5239592) bm!370860))

(declare-fun m!6284384 () Bool)

(assert (=> b!5239590 m!6284384))

(declare-fun m!6284386 () Bool)

(assert (=> bm!370860 m!6284386))

(assert (=> b!5239594 m!6283674))

(assert (=> b!5238751 d!1688527))

(declare-fun d!1688529 () Bool)

(assert (=> d!1688529 (= (flatMap!566 z!1189 lambda!263423) (choose!38987 z!1189 lambda!263423))))

(declare-fun bs!1215778 () Bool)

(assert (= bs!1215778 d!1688529))

(declare-fun m!6284388 () Bool)

(assert (=> bs!1215778 m!6284388))

(assert (=> b!5238751 d!1688529))

(declare-fun d!1688531 () Bool)

(declare-fun e!3260260 () Bool)

(assert (=> d!1688531 (= (matchZipper!1083 ((_ map or) lt!2147896 lt!2147900) (t!373999 s!2326)) e!3260260)))

(declare-fun res!2223895 () Bool)

(assert (=> d!1688531 (=> res!2223895 e!3260260)))

(assert (=> d!1688531 (= res!2223895 (matchZipper!1083 lt!2147896 (t!373999 s!2326)))))

(declare-fun lt!2148042 () Unit!152726)

(assert (=> d!1688531 (= lt!2148042 (choose!38986 lt!2147896 lt!2147900 (t!373999 s!2326)))))

(assert (=> d!1688531 (= (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147896 lt!2147900 (t!373999 s!2326)) lt!2148042)))

(declare-fun b!5239595 () Bool)

(assert (=> b!5239595 (= e!3260260 (matchZipper!1083 lt!2147900 (t!373999 s!2326)))))

(assert (= (and d!1688531 (not res!2223895)) b!5239595))

(assert (=> d!1688531 m!6283600))

(assert (=> d!1688531 m!6283598))

(declare-fun m!6284390 () Bool)

(assert (=> d!1688531 m!6284390))

(assert (=> b!5239595 m!6283660))

(assert (=> b!5238731 d!1688531))

(assert (=> b!5238731 d!1688377))

(declare-fun d!1688533 () Bool)

(declare-fun c!905509 () Bool)

(assert (=> d!1688533 (= c!905509 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3260261 () Bool)

(assert (=> d!1688533 (= (matchZipper!1083 ((_ map or) lt!2147896 lt!2147900) (t!373999 s!2326)) e!3260261)))

(declare-fun b!5239596 () Bool)

(assert (=> b!5239596 (= e!3260261 (nullableZipper!1254 ((_ map or) lt!2147896 lt!2147900)))))

(declare-fun b!5239597 () Bool)

(assert (=> b!5239597 (= e!3260261 (matchZipper!1083 (derivationStepZipper!1098 ((_ map or) lt!2147896 lt!2147900) (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688533 c!905509) b!5239596))

(assert (= (and d!1688533 (not c!905509)) b!5239597))

(assert (=> d!1688533 m!6283810))

(declare-fun m!6284392 () Bool)

(assert (=> b!5239596 m!6284392))

(assert (=> b!5239597 m!6283814))

(assert (=> b!5239597 m!6283814))

(declare-fun m!6284394 () Bool)

(assert (=> b!5239597 m!6284394))

(assert (=> b!5239597 m!6283818))

(assert (=> b!5239597 m!6284394))

(assert (=> b!5239597 m!6283818))

(declare-fun m!6284396 () Bool)

(assert (=> b!5239597 m!6284396))

(assert (=> b!5238731 d!1688533))

(declare-fun bs!1215779 () Bool)

(declare-fun b!5239605 () Bool)

(assert (= bs!1215779 (and b!5239605 b!5239487)))

(declare-fun lambda!263483 () Int)

(assert (=> bs!1215779 (not (= lambda!263483 lambda!263482))))

(declare-fun bs!1215780 () Bool)

(assert (= bs!1215780 (and b!5239605 b!5238728)))

(assert (=> bs!1215780 (not (= lambda!263483 lambda!263421))))

(assert (=> bs!1215780 (not (= lambda!263483 lambda!263422))))

(declare-fun bs!1215781 () Bool)

(assert (= bs!1215781 (and b!5239605 d!1688421)))

(assert (=> bs!1215781 (not (= lambda!263483 lambda!263459))))

(declare-fun bs!1215782 () Bool)

(assert (= bs!1215782 (and b!5239605 b!5239489)))

(assert (=> bs!1215782 (= (and (= (reg!15168 r!7292) (reg!15168 lt!2147895)) (= r!7292 lt!2147895)) (= lambda!263483 lambda!263481))))

(declare-fun bs!1215783 () Bool)

(assert (= bs!1215783 (and b!5239605 b!5239464)))

(assert (=> bs!1215783 (= (and (= (reg!15168 r!7292) (reg!15168 lt!2147905)) (= r!7292 lt!2147905)) (= lambda!263483 lambda!263478))))

(declare-fun bs!1215784 () Bool)

(assert (= bs!1215784 (and b!5239605 d!1688417)))

(assert (=> bs!1215784 (not (= lambda!263483 lambda!263450))))

(assert (=> bs!1215781 (not (= lambda!263483 lambda!263461))))

(declare-fun bs!1215785 () Bool)

(assert (= bs!1215785 (and b!5239605 b!5239462)))

(assert (=> bs!1215785 (not (= lambda!263483 lambda!263480))))

(assert (=> b!5239605 true))

(assert (=> b!5239605 true))

(declare-fun bs!1215786 () Bool)

(declare-fun b!5239603 () Bool)

(assert (= bs!1215786 (and b!5239603 b!5239487)))

(declare-fun lambda!263484 () Int)

(assert (=> bs!1215786 (= (and (= (regOne!30190 r!7292) (regOne!30190 lt!2147895)) (= (regTwo!30190 r!7292) (regTwo!30190 lt!2147895))) (= lambda!263484 lambda!263482))))

(declare-fun bs!1215787 () Bool)

(assert (= bs!1215787 (and b!5239603 b!5238728)))

(assert (=> bs!1215787 (not (= lambda!263484 lambda!263421))))

(declare-fun bs!1215788 () Bool)

(assert (= bs!1215788 (and b!5239603 b!5239605)))

(assert (=> bs!1215788 (not (= lambda!263484 lambda!263483))))

(assert (=> bs!1215787 (= lambda!263484 lambda!263422)))

(declare-fun bs!1215789 () Bool)

(assert (= bs!1215789 (and b!5239603 d!1688421)))

(assert (=> bs!1215789 (not (= lambda!263484 lambda!263459))))

(declare-fun bs!1215790 () Bool)

(assert (= bs!1215790 (and b!5239603 b!5239489)))

(assert (=> bs!1215790 (not (= lambda!263484 lambda!263481))))

(declare-fun bs!1215791 () Bool)

(assert (= bs!1215791 (and b!5239603 b!5239464)))

(assert (=> bs!1215791 (not (= lambda!263484 lambda!263478))))

(declare-fun bs!1215792 () Bool)

(assert (= bs!1215792 (and b!5239603 d!1688417)))

(assert (=> bs!1215792 (not (= lambda!263484 lambda!263450))))

(assert (=> bs!1215789 (= lambda!263484 lambda!263461)))

(declare-fun bs!1215793 () Bool)

(assert (= bs!1215793 (and b!5239603 b!5239462)))

(assert (=> bs!1215793 (= (and (= (regOne!30190 r!7292) (regOne!30190 lt!2147905)) (= (regTwo!30190 r!7292) (regTwo!30190 lt!2147905))) (= lambda!263484 lambda!263480))))

(assert (=> b!5239603 true))

(assert (=> b!5239603 true))

(declare-fun b!5239598 () Bool)

(declare-fun e!3260265 () Bool)

(declare-fun e!3260268 () Bool)

(assert (=> b!5239598 (= e!3260265 e!3260268)))

(declare-fun res!2223897 () Bool)

(assert (=> b!5239598 (= res!2223897 (not ((_ is EmptyLang!14839) r!7292)))))

(assert (=> b!5239598 (=> (not res!2223897) (not e!3260268))))

(declare-fun bm!370861 () Bool)

(declare-fun call!370867 () Bool)

(assert (=> bm!370861 (= call!370867 (isEmpty!32622 s!2326))))

(declare-fun b!5239599 () Bool)

(declare-fun e!3260263 () Bool)

(assert (=> b!5239599 (= e!3260263 (= s!2326 (Cons!60694 (c!905261 r!7292) Nil!60694)))))

(declare-fun b!5239600 () Bool)

(declare-fun res!2223898 () Bool)

(declare-fun e!3260266 () Bool)

(assert (=> b!5239600 (=> res!2223898 e!3260266)))

(assert (=> b!5239600 (= res!2223898 call!370867)))

(declare-fun e!3260267 () Bool)

(assert (=> b!5239600 (= e!3260267 e!3260266)))

(declare-fun call!370866 () Bool)

(declare-fun bm!370862 () Bool)

(declare-fun c!905510 () Bool)

(assert (=> bm!370862 (= call!370866 (Exists!2020 (ite c!905510 lambda!263483 lambda!263484)))))

(declare-fun b!5239601 () Bool)

(declare-fun e!3260264 () Bool)

(assert (=> b!5239601 (= e!3260264 (matchRSpec!1942 (regTwo!30191 r!7292) s!2326))))

(declare-fun b!5239602 () Bool)

(declare-fun c!905511 () Bool)

(assert (=> b!5239602 (= c!905511 ((_ is ElementMatch!14839) r!7292))))

(assert (=> b!5239602 (= e!3260268 e!3260263)))

(assert (=> b!5239603 (= e!3260267 call!370866)))

(assert (=> b!5239605 (= e!3260266 call!370866)))

(declare-fun b!5239606 () Bool)

(declare-fun e!3260262 () Bool)

(assert (=> b!5239606 (= e!3260262 e!3260264)))

(declare-fun res!2223896 () Bool)

(assert (=> b!5239606 (= res!2223896 (matchRSpec!1942 (regOne!30191 r!7292) s!2326))))

(assert (=> b!5239606 (=> res!2223896 e!3260264)))

(declare-fun b!5239607 () Bool)

(assert (=> b!5239607 (= e!3260262 e!3260267)))

(assert (=> b!5239607 (= c!905510 ((_ is Star!14839) r!7292))))

(declare-fun b!5239608 () Bool)

(assert (=> b!5239608 (= e!3260265 call!370867)))

(declare-fun d!1688535 () Bool)

(declare-fun c!905513 () Bool)

(assert (=> d!1688535 (= c!905513 ((_ is EmptyExpr!14839) r!7292))))

(assert (=> d!1688535 (= (matchRSpec!1942 r!7292 s!2326) e!3260265)))

(declare-fun b!5239604 () Bool)

(declare-fun c!905512 () Bool)

(assert (=> b!5239604 (= c!905512 ((_ is Union!14839) r!7292))))

(assert (=> b!5239604 (= e!3260263 e!3260262)))

(assert (= (and d!1688535 c!905513) b!5239608))

(assert (= (and d!1688535 (not c!905513)) b!5239598))

(assert (= (and b!5239598 res!2223897) b!5239602))

(assert (= (and b!5239602 c!905511) b!5239599))

(assert (= (and b!5239602 (not c!905511)) b!5239604))

(assert (= (and b!5239604 c!905512) b!5239606))

(assert (= (and b!5239604 (not c!905512)) b!5239607))

(assert (= (and b!5239606 (not res!2223896)) b!5239601))

(assert (= (and b!5239607 c!905510) b!5239600))

(assert (= (and b!5239607 (not c!905510)) b!5239603))

(assert (= (and b!5239600 (not res!2223898)) b!5239605))

(assert (= (or b!5239605 b!5239603) bm!370862))

(assert (= (or b!5239608 b!5239600) bm!370861))

(assert (=> bm!370861 m!6283846))

(declare-fun m!6284398 () Bool)

(assert (=> bm!370862 m!6284398))

(declare-fun m!6284400 () Bool)

(assert (=> b!5239601 m!6284400))

(declare-fun m!6284402 () Bool)

(assert (=> b!5239606 m!6284402))

(assert (=> b!5238730 d!1688535))

(declare-fun b!5239609 () Bool)

(declare-fun res!2223899 () Bool)

(declare-fun e!3260274 () Bool)

(assert (=> b!5239609 (=> (not res!2223899) (not e!3260274))))

(assert (=> b!5239609 (= res!2223899 (isEmpty!32622 (tail!10323 s!2326)))))

(declare-fun b!5239610 () Bool)

(declare-fun e!3260270 () Bool)

(declare-fun e!3260273 () Bool)

(assert (=> b!5239610 (= e!3260270 e!3260273)))

(declare-fun res!2223901 () Bool)

(assert (=> b!5239610 (=> (not res!2223901) (not e!3260273))))

(declare-fun lt!2148043 () Bool)

(assert (=> b!5239610 (= res!2223901 (not lt!2148043))))

(declare-fun b!5239611 () Bool)

(declare-fun e!3260271 () Bool)

(assert (=> b!5239611 (= e!3260271 (matchR!7024 (derivativeStep!4076 r!7292 (head!11226 s!2326)) (tail!10323 s!2326)))))

(declare-fun b!5239612 () Bool)

(declare-fun e!3260269 () Bool)

(assert (=> b!5239612 (= e!3260269 (not lt!2148043))))

(declare-fun b!5239613 () Bool)

(declare-fun res!2223906 () Bool)

(assert (=> b!5239613 (=> (not res!2223906) (not e!3260274))))

(declare-fun call!370868 () Bool)

(assert (=> b!5239613 (= res!2223906 (not call!370868))))

(declare-fun b!5239615 () Bool)

(assert (=> b!5239615 (= e!3260271 (nullable!5008 r!7292))))

(declare-fun b!5239616 () Bool)

(declare-fun e!3260272 () Bool)

(assert (=> b!5239616 (= e!3260272 (= lt!2148043 call!370868))))

(declare-fun b!5239617 () Bool)

(declare-fun res!2223903 () Bool)

(declare-fun e!3260275 () Bool)

(assert (=> b!5239617 (=> res!2223903 e!3260275)))

(assert (=> b!5239617 (= res!2223903 (not (isEmpty!32622 (tail!10323 s!2326))))))

(declare-fun b!5239618 () Bool)

(assert (=> b!5239618 (= e!3260275 (not (= (head!11226 s!2326) (c!905261 r!7292))))))

(declare-fun b!5239619 () Bool)

(declare-fun res!2223902 () Bool)

(assert (=> b!5239619 (=> res!2223902 e!3260270)))

(assert (=> b!5239619 (= res!2223902 (not ((_ is ElementMatch!14839) r!7292)))))

(assert (=> b!5239619 (= e!3260269 e!3260270)))

(declare-fun b!5239620 () Bool)

(declare-fun res!2223904 () Bool)

(assert (=> b!5239620 (=> res!2223904 e!3260270)))

(assert (=> b!5239620 (= res!2223904 e!3260274)))

(declare-fun res!2223905 () Bool)

(assert (=> b!5239620 (=> (not res!2223905) (not e!3260274))))

(assert (=> b!5239620 (= res!2223905 lt!2148043)))

(declare-fun bm!370863 () Bool)

(assert (=> bm!370863 (= call!370868 (isEmpty!32622 s!2326))))

(declare-fun b!5239621 () Bool)

(assert (=> b!5239621 (= e!3260274 (= (head!11226 s!2326) (c!905261 r!7292)))))

(declare-fun b!5239622 () Bool)

(assert (=> b!5239622 (= e!3260272 e!3260269)))

(declare-fun c!905515 () Bool)

(assert (=> b!5239622 (= c!905515 ((_ is EmptyLang!14839) r!7292))))

(declare-fun b!5239614 () Bool)

(assert (=> b!5239614 (= e!3260273 e!3260275)))

(declare-fun res!2223900 () Bool)

(assert (=> b!5239614 (=> res!2223900 e!3260275)))

(assert (=> b!5239614 (= res!2223900 call!370868)))

(declare-fun d!1688537 () Bool)

(assert (=> d!1688537 e!3260272))

(declare-fun c!905516 () Bool)

(assert (=> d!1688537 (= c!905516 ((_ is EmptyExpr!14839) r!7292))))

(assert (=> d!1688537 (= lt!2148043 e!3260271)))

(declare-fun c!905514 () Bool)

(assert (=> d!1688537 (= c!905514 (isEmpty!32622 s!2326))))

(assert (=> d!1688537 (validRegex!6575 r!7292)))

(assert (=> d!1688537 (= (matchR!7024 r!7292 s!2326) lt!2148043)))

(assert (= (and d!1688537 c!905514) b!5239615))

(assert (= (and d!1688537 (not c!905514)) b!5239611))

(assert (= (and d!1688537 c!905516) b!5239616))

(assert (= (and d!1688537 (not c!905516)) b!5239622))

(assert (= (and b!5239622 c!905515) b!5239612))

(assert (= (and b!5239622 (not c!905515)) b!5239619))

(assert (= (and b!5239619 (not res!2223902)) b!5239620))

(assert (= (and b!5239620 res!2223905) b!5239613))

(assert (= (and b!5239613 res!2223906) b!5239609))

(assert (= (and b!5239609 res!2223899) b!5239621))

(assert (= (and b!5239620 (not res!2223904)) b!5239610))

(assert (= (and b!5239610 res!2223901) b!5239614))

(assert (= (and b!5239614 (not res!2223900)) b!5239617))

(assert (= (and b!5239617 (not res!2223903)) b!5239618))

(assert (= (or b!5239616 b!5239613 b!5239614) bm!370863))

(assert (=> b!5239609 m!6283854))

(assert (=> b!5239609 m!6283854))

(assert (=> b!5239609 m!6284247))

(assert (=> d!1688537 m!6283846))

(assert (=> d!1688537 m!6283602))

(assert (=> b!5239621 m!6283850))

(declare-fun m!6284404 () Bool)

(assert (=> b!5239615 m!6284404))

(assert (=> b!5239618 m!6283850))

(assert (=> bm!370863 m!6283846))

(assert (=> b!5239611 m!6283850))

(assert (=> b!5239611 m!6283850))

(declare-fun m!6284406 () Bool)

(assert (=> b!5239611 m!6284406))

(assert (=> b!5239611 m!6283854))

(assert (=> b!5239611 m!6284406))

(assert (=> b!5239611 m!6283854))

(declare-fun m!6284408 () Bool)

(assert (=> b!5239611 m!6284408))

(assert (=> b!5239617 m!6283854))

(assert (=> b!5239617 m!6283854))

(assert (=> b!5239617 m!6284247))

(assert (=> b!5238730 d!1688537))

(declare-fun d!1688539 () Bool)

(assert (=> d!1688539 (= (matchR!7024 r!7292 s!2326) (matchRSpec!1942 r!7292 s!2326))))

(declare-fun lt!2148044 () Unit!152726)

(assert (=> d!1688539 (= lt!2148044 (choose!38994 r!7292 s!2326))))

(assert (=> d!1688539 (validRegex!6575 r!7292)))

(assert (=> d!1688539 (= (mainMatchTheorem!1942 r!7292 s!2326) lt!2148044)))

(declare-fun bs!1215794 () Bool)

(assert (= bs!1215794 d!1688539))

(assert (=> bs!1215794 m!6283592))

(assert (=> bs!1215794 m!6283590))

(declare-fun m!6284410 () Bool)

(assert (=> bs!1215794 m!6284410))

(assert (=> bs!1215794 m!6283602))

(assert (=> b!5238730 d!1688539))

(assert (=> b!5238732 d!1688341))

(declare-fun d!1688541 () Bool)

(declare-fun c!905517 () Bool)

(assert (=> d!1688541 (= c!905517 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3260276 () Bool)

(assert (=> d!1688541 (= (matchZipper!1083 lt!2147893 (t!373999 s!2326)) e!3260276)))

(declare-fun b!5239623 () Bool)

(assert (=> b!5239623 (= e!3260276 (nullableZipper!1254 lt!2147893))))

(declare-fun b!5239624 () Bool)

(assert (=> b!5239624 (= e!3260276 (matchZipper!1083 (derivationStepZipper!1098 lt!2147893 (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688541 c!905517) b!5239623))

(assert (= (and d!1688541 (not c!905517)) b!5239624))

(assert (=> d!1688541 m!6283810))

(declare-fun m!6284412 () Bool)

(assert (=> b!5239623 m!6284412))

(assert (=> b!5239624 m!6283814))

(assert (=> b!5239624 m!6283814))

(declare-fun m!6284414 () Bool)

(assert (=> b!5239624 m!6284414))

(assert (=> b!5239624 m!6283818))

(assert (=> b!5239624 m!6284414))

(assert (=> b!5239624 m!6283818))

(declare-fun m!6284416 () Bool)

(assert (=> b!5239624 m!6284416))

(assert (=> b!5238732 d!1688541))

(declare-fun d!1688543 () Bool)

(declare-fun c!905518 () Bool)

(assert (=> d!1688543 (= c!905518 (isEmpty!32622 (t!373999 s!2326)))))

(declare-fun e!3260277 () Bool)

(assert (=> d!1688543 (= (matchZipper!1083 lt!2147899 (t!373999 s!2326)) e!3260277)))

(declare-fun b!5239625 () Bool)

(assert (=> b!5239625 (= e!3260277 (nullableZipper!1254 lt!2147899))))

(declare-fun b!5239626 () Bool)

(assert (=> b!5239626 (= e!3260277 (matchZipper!1083 (derivationStepZipper!1098 lt!2147899 (head!11226 (t!373999 s!2326))) (tail!10323 (t!373999 s!2326))))))

(assert (= (and d!1688543 c!905518) b!5239625))

(assert (= (and d!1688543 (not c!905518)) b!5239626))

(assert (=> d!1688543 m!6283810))

(declare-fun m!6284418 () Bool)

(assert (=> b!5239625 m!6284418))

(assert (=> b!5239626 m!6283814))

(assert (=> b!5239626 m!6283814))

(declare-fun m!6284420 () Bool)

(assert (=> b!5239626 m!6284420))

(assert (=> b!5239626 m!6283818))

(assert (=> b!5239626 m!6284420))

(assert (=> b!5239626 m!6283818))

(declare-fun m!6284422 () Bool)

(assert (=> b!5239626 m!6284422))

(assert (=> b!5238732 d!1688543))

(declare-fun d!1688545 () Bool)

(declare-fun e!3260278 () Bool)

(assert (=> d!1688545 (= (matchZipper!1083 ((_ map or) lt!2147899 lt!2147896) (t!373999 s!2326)) e!3260278)))

(declare-fun res!2223907 () Bool)

(assert (=> d!1688545 (=> res!2223907 e!3260278)))

(assert (=> d!1688545 (= res!2223907 (matchZipper!1083 lt!2147899 (t!373999 s!2326)))))

(declare-fun lt!2148045 () Unit!152726)

(assert (=> d!1688545 (= lt!2148045 (choose!38986 lt!2147899 lt!2147896 (t!373999 s!2326)))))

(assert (=> d!1688545 (= (lemmaZipperConcatMatchesSameAsBothZippers!76 lt!2147899 lt!2147896 (t!373999 s!2326)) lt!2148045)))

(declare-fun b!5239627 () Bool)

(assert (=> b!5239627 (= e!3260278 (matchZipper!1083 lt!2147896 (t!373999 s!2326)))))

(assert (= (and d!1688545 (not res!2223907)) b!5239627))

(declare-fun m!6284424 () Bool)

(assert (=> d!1688545 m!6284424))

(assert (=> d!1688545 m!6283648))

(declare-fun m!6284426 () Bool)

(assert (=> d!1688545 m!6284426))

(assert (=> b!5239627 m!6283598))

(assert (=> b!5238732 d!1688545))

(declare-fun bs!1215795 () Bool)

(declare-fun d!1688547 () Bool)

(assert (= bs!1215795 (and d!1688547 d!1688381)))

(declare-fun lambda!263485 () Int)

(assert (=> bs!1215795 (= lambda!263485 lambda!263438)))

(declare-fun bs!1215796 () Bool)

(assert (= bs!1215796 (and d!1688547 d!1688397)))

(assert (=> bs!1215796 (= lambda!263485 lambda!263441)))

(declare-fun bs!1215797 () Bool)

(assert (= bs!1215797 (and d!1688547 d!1688489)))

(assert (=> bs!1215797 (= lambda!263485 lambda!263462)))

(declare-fun bs!1215798 () Bool)

(assert (= bs!1215798 (and d!1688547 d!1688493)))

(assert (=> bs!1215798 (= lambda!263485 lambda!263466)))

(assert (=> d!1688547 (= (inv!80344 setElem!33407) (forall!14263 (exprs!4723 setElem!33407) lambda!263485))))

(declare-fun bs!1215799 () Bool)

(assert (= bs!1215799 d!1688547))

(declare-fun m!6284428 () Bool)

(assert (=> bs!1215799 m!6284428))

(assert (=> setNonEmpty!33407 d!1688547))

(declare-fun b!5239628 () Bool)

(declare-fun e!3260283 () (InoxSet Context!8446))

(assert (=> b!5239628 (= e!3260283 ((as const (Array Context!8446 Bool)) false))))

(declare-fun b!5239629 () Bool)

(declare-fun e!3260280 () (InoxSet Context!8446))

(declare-fun call!370870 () (InoxSet Context!8446))

(declare-fun call!370872 () (InoxSet Context!8446))

(assert (=> b!5239629 (= e!3260280 ((_ map or) call!370870 call!370872))))

(declare-fun b!5239630 () Bool)

(declare-fun call!370873 () (InoxSet Context!8446))

(assert (=> b!5239630 (= e!3260283 call!370873)))

(declare-fun b!5239631 () Bool)

(declare-fun e!3260284 () (InoxSet Context!8446))

(declare-fun call!370874 () (InoxSet Context!8446))

(assert (=> b!5239631 (= e!3260284 ((_ map or) call!370870 call!370874))))

(declare-fun b!5239632 () Bool)

(declare-fun c!905520 () Bool)

(declare-fun e!3260282 () Bool)

(assert (=> b!5239632 (= c!905520 e!3260282)))

(declare-fun res!2223908 () Bool)

(assert (=> b!5239632 (=> (not res!2223908) (not e!3260282))))

(assert (=> b!5239632 (= res!2223908 ((_ is Concat!23684) (regTwo!30191 (regOne!30190 r!7292))))))

(assert (=> b!5239632 (= e!3260280 e!3260284)))

(declare-fun bm!370864 () Bool)

(assert (=> bm!370864 (= call!370873 call!370874)))

(declare-fun bm!370865 () Bool)

(assert (=> bm!370865 (= call!370874 call!370872)))

(declare-fun d!1688549 () Bool)

(declare-fun c!905522 () Bool)

(assert (=> d!1688549 (= c!905522 (and ((_ is ElementMatch!14839) (regTwo!30191 (regOne!30190 r!7292))) (= (c!905261 (regTwo!30191 (regOne!30190 r!7292))) (h!67142 s!2326))))))

(declare-fun e!3260279 () (InoxSet Context!8446))

(assert (=> d!1688549 (= (derivationStepZipperDown!287 (regTwo!30191 (regOne!30190 r!7292)) lt!2147903 (h!67142 s!2326)) e!3260279)))

(declare-fun b!5239633 () Bool)

(assert (=> b!5239633 (= e!3260279 e!3260280)))

(declare-fun c!905521 () Bool)

(assert (=> b!5239633 (= c!905521 ((_ is Union!14839) (regTwo!30191 (regOne!30190 r!7292))))))

(declare-fun c!905523 () Bool)

(declare-fun call!370871 () List!60816)

(declare-fun bm!370866 () Bool)

(assert (=> bm!370866 (= call!370872 (derivationStepZipperDown!287 (ite c!905521 (regTwo!30191 (regTwo!30191 (regOne!30190 r!7292))) (ite c!905520 (regTwo!30190 (regTwo!30191 (regOne!30190 r!7292))) (ite c!905523 (regOne!30190 (regTwo!30191 (regOne!30190 r!7292))) (reg!15168 (regTwo!30191 (regOne!30190 r!7292)))))) (ite (or c!905521 c!905520) lt!2147903 (Context!8447 call!370871)) (h!67142 s!2326)))))

(declare-fun call!370869 () List!60816)

(declare-fun bm!370867 () Bool)

(assert (=> bm!370867 (= call!370870 (derivationStepZipperDown!287 (ite c!905521 (regOne!30191 (regTwo!30191 (regOne!30190 r!7292))) (regOne!30190 (regTwo!30191 (regOne!30190 r!7292)))) (ite c!905521 lt!2147903 (Context!8447 call!370869)) (h!67142 s!2326)))))

(declare-fun bm!370868 () Bool)

(assert (=> bm!370868 (= call!370869 ($colon$colon!1304 (exprs!4723 lt!2147903) (ite (or c!905520 c!905523) (regTwo!30190 (regTwo!30191 (regOne!30190 r!7292))) (regTwo!30191 (regOne!30190 r!7292)))))))

(declare-fun bm!370869 () Bool)

(assert (=> bm!370869 (= call!370871 call!370869)))

(declare-fun b!5239634 () Bool)

(declare-fun e!3260281 () (InoxSet Context!8446))

(assert (=> b!5239634 (= e!3260281 call!370873)))

(declare-fun b!5239635 () Bool)

(assert (=> b!5239635 (= e!3260284 e!3260281)))

(assert (=> b!5239635 (= c!905523 ((_ is Concat!23684) (regTwo!30191 (regOne!30190 r!7292))))))

(declare-fun b!5239636 () Bool)

(assert (=> b!5239636 (= e!3260282 (nullable!5008 (regOne!30190 (regTwo!30191 (regOne!30190 r!7292)))))))

(declare-fun b!5239637 () Bool)

(assert (=> b!5239637 (= e!3260279 (store ((as const (Array Context!8446 Bool)) false) lt!2147903 true))))

(declare-fun b!5239638 () Bool)

(declare-fun c!905519 () Bool)

(assert (=> b!5239638 (= c!905519 ((_ is Star!14839) (regTwo!30191 (regOne!30190 r!7292))))))

(assert (=> b!5239638 (= e!3260281 e!3260283)))

(assert (= (and d!1688549 c!905522) b!5239637))

(assert (= (and d!1688549 (not c!905522)) b!5239633))

(assert (= (and b!5239633 c!905521) b!5239629))

(assert (= (and b!5239633 (not c!905521)) b!5239632))

(assert (= (and b!5239632 res!2223908) b!5239636))

(assert (= (and b!5239632 c!905520) b!5239631))

(assert (= (and b!5239632 (not c!905520)) b!5239635))

(assert (= (and b!5239635 c!905523) b!5239634))

(assert (= (and b!5239635 (not c!905523)) b!5239638))

(assert (= (and b!5239638 c!905519) b!5239630))

(assert (= (and b!5239638 (not c!905519)) b!5239628))

(assert (= (or b!5239634 b!5239630) bm!370869))

(assert (= (or b!5239634 b!5239630) bm!370864))

(assert (= (or b!5239631 bm!370869) bm!370868))

(assert (= (or b!5239631 bm!370864) bm!370865))

(assert (= (or b!5239629 bm!370865) bm!370866))

(assert (= (or b!5239629 b!5239631) bm!370867))

(declare-fun m!6284430 () Bool)

(assert (=> bm!370867 m!6284430))

(declare-fun m!6284432 () Bool)

(assert (=> bm!370866 m!6284432))

(assert (=> b!5239637 m!6284358))

(declare-fun m!6284434 () Bool)

(assert (=> b!5239636 m!6284434))

(declare-fun m!6284436 () Bool)

(assert (=> bm!370868 m!6284436))

(assert (=> b!5238753 d!1688549))

(declare-fun b!5239639 () Bool)

(declare-fun e!3260289 () (InoxSet Context!8446))

(assert (=> b!5239639 (= e!3260289 ((as const (Array Context!8446 Bool)) false))))

(declare-fun b!5239640 () Bool)

(declare-fun e!3260286 () (InoxSet Context!8446))

(declare-fun call!370876 () (InoxSet Context!8446))

(declare-fun call!370878 () (InoxSet Context!8446))

(assert (=> b!5239640 (= e!3260286 ((_ map or) call!370876 call!370878))))

(declare-fun b!5239641 () Bool)

(declare-fun call!370879 () (InoxSet Context!8446))

(assert (=> b!5239641 (= e!3260289 call!370879)))

(declare-fun b!5239642 () Bool)

(declare-fun e!3260290 () (InoxSet Context!8446))

(declare-fun call!370880 () (InoxSet Context!8446))

(assert (=> b!5239642 (= e!3260290 ((_ map or) call!370876 call!370880))))

(declare-fun b!5239643 () Bool)

(declare-fun c!905525 () Bool)

(declare-fun e!3260288 () Bool)

(assert (=> b!5239643 (= c!905525 e!3260288)))

(declare-fun res!2223909 () Bool)

(assert (=> b!5239643 (=> (not res!2223909) (not e!3260288))))

(assert (=> b!5239643 (= res!2223909 ((_ is Concat!23684) (regOne!30191 (regOne!30190 r!7292))))))

(assert (=> b!5239643 (= e!3260286 e!3260290)))

(declare-fun bm!370870 () Bool)

(assert (=> bm!370870 (= call!370879 call!370880)))

(declare-fun bm!370871 () Bool)

(assert (=> bm!370871 (= call!370880 call!370878)))

(declare-fun d!1688551 () Bool)

(declare-fun c!905527 () Bool)

(assert (=> d!1688551 (= c!905527 (and ((_ is ElementMatch!14839) (regOne!30191 (regOne!30190 r!7292))) (= (c!905261 (regOne!30191 (regOne!30190 r!7292))) (h!67142 s!2326))))))

(declare-fun e!3260285 () (InoxSet Context!8446))

(assert (=> d!1688551 (= (derivationStepZipperDown!287 (regOne!30191 (regOne!30190 r!7292)) lt!2147903 (h!67142 s!2326)) e!3260285)))

(declare-fun b!5239644 () Bool)

(assert (=> b!5239644 (= e!3260285 e!3260286)))

(declare-fun c!905526 () Bool)

(assert (=> b!5239644 (= c!905526 ((_ is Union!14839) (regOne!30191 (regOne!30190 r!7292))))))

(declare-fun c!905528 () Bool)

(declare-fun call!370877 () List!60816)

(declare-fun bm!370872 () Bool)

(assert (=> bm!370872 (= call!370878 (derivationStepZipperDown!287 (ite c!905526 (regTwo!30191 (regOne!30191 (regOne!30190 r!7292))) (ite c!905525 (regTwo!30190 (regOne!30191 (regOne!30190 r!7292))) (ite c!905528 (regOne!30190 (regOne!30191 (regOne!30190 r!7292))) (reg!15168 (regOne!30191 (regOne!30190 r!7292)))))) (ite (or c!905526 c!905525) lt!2147903 (Context!8447 call!370877)) (h!67142 s!2326)))))

(declare-fun call!370875 () List!60816)

(declare-fun bm!370873 () Bool)

(assert (=> bm!370873 (= call!370876 (derivationStepZipperDown!287 (ite c!905526 (regOne!30191 (regOne!30191 (regOne!30190 r!7292))) (regOne!30190 (regOne!30191 (regOne!30190 r!7292)))) (ite c!905526 lt!2147903 (Context!8447 call!370875)) (h!67142 s!2326)))))

(declare-fun bm!370874 () Bool)

(assert (=> bm!370874 (= call!370875 ($colon$colon!1304 (exprs!4723 lt!2147903) (ite (or c!905525 c!905528) (regTwo!30190 (regOne!30191 (regOne!30190 r!7292))) (regOne!30191 (regOne!30190 r!7292)))))))

(declare-fun bm!370875 () Bool)

(assert (=> bm!370875 (= call!370877 call!370875)))

(declare-fun b!5239645 () Bool)

(declare-fun e!3260287 () (InoxSet Context!8446))

(assert (=> b!5239645 (= e!3260287 call!370879)))

(declare-fun b!5239646 () Bool)

(assert (=> b!5239646 (= e!3260290 e!3260287)))

(assert (=> b!5239646 (= c!905528 ((_ is Concat!23684) (regOne!30191 (regOne!30190 r!7292))))))

(declare-fun b!5239647 () Bool)

(assert (=> b!5239647 (= e!3260288 (nullable!5008 (regOne!30190 (regOne!30191 (regOne!30190 r!7292)))))))

(declare-fun b!5239648 () Bool)

(assert (=> b!5239648 (= e!3260285 (store ((as const (Array Context!8446 Bool)) false) lt!2147903 true))))

(declare-fun b!5239649 () Bool)

(declare-fun c!905524 () Bool)

(assert (=> b!5239649 (= c!905524 ((_ is Star!14839) (regOne!30191 (regOne!30190 r!7292))))))

(assert (=> b!5239649 (= e!3260287 e!3260289)))

(assert (= (and d!1688551 c!905527) b!5239648))

(assert (= (and d!1688551 (not c!905527)) b!5239644))

(assert (= (and b!5239644 c!905526) b!5239640))

(assert (= (and b!5239644 (not c!905526)) b!5239643))

(assert (= (and b!5239643 res!2223909) b!5239647))

(assert (= (and b!5239643 c!905525) b!5239642))

(assert (= (and b!5239643 (not c!905525)) b!5239646))

(assert (= (and b!5239646 c!905528) b!5239645))

(assert (= (and b!5239646 (not c!905528)) b!5239649))

(assert (= (and b!5239649 c!905524) b!5239641))

(assert (= (and b!5239649 (not c!905524)) b!5239639))

(assert (= (or b!5239645 b!5239641) bm!370875))

(assert (= (or b!5239645 b!5239641) bm!370870))

(assert (= (or b!5239642 bm!370875) bm!370874))

(assert (= (or b!5239642 bm!370870) bm!370871))

(assert (= (or b!5239640 bm!370871) bm!370872))

(assert (= (or b!5239640 b!5239642) bm!370873))

(declare-fun m!6284438 () Bool)

(assert (=> bm!370873 m!6284438))

(declare-fun m!6284440 () Bool)

(assert (=> bm!370872 m!6284440))

(assert (=> b!5239648 m!6284358))

(declare-fun m!6284442 () Bool)

(assert (=> b!5239647 m!6284442))

(declare-fun m!6284444 () Bool)

(assert (=> bm!370874 m!6284444))

(assert (=> b!5238753 d!1688551))

(assert (=> b!5238733 d!1688373))

(declare-fun bs!1215800 () Bool)

(declare-fun d!1688553 () Bool)

(assert (= bs!1215800 (and d!1688553 d!1688547)))

(declare-fun lambda!263488 () Int)

(assert (=> bs!1215800 (= lambda!263488 lambda!263485)))

(declare-fun bs!1215801 () Bool)

(assert (= bs!1215801 (and d!1688553 d!1688397)))

(assert (=> bs!1215801 (= lambda!263488 lambda!263441)))

(declare-fun bs!1215802 () Bool)

(assert (= bs!1215802 (and d!1688553 d!1688493)))

(assert (=> bs!1215802 (= lambda!263488 lambda!263466)))

(declare-fun bs!1215803 () Bool)

(assert (= bs!1215803 (and d!1688553 d!1688489)))

(assert (=> bs!1215803 (= lambda!263488 lambda!263462)))

(declare-fun bs!1215804 () Bool)

(assert (= bs!1215804 (and d!1688553 d!1688381)))

(assert (=> bs!1215804 (= lambda!263488 lambda!263438)))

(declare-fun b!5239670 () Bool)

(declare-fun e!3260307 () Regex!14839)

(declare-fun e!3260308 () Regex!14839)

(assert (=> b!5239670 (= e!3260307 e!3260308)))

(declare-fun c!905538 () Bool)

(assert (=> b!5239670 (= c!905538 ((_ is Cons!60692) (unfocusZipperList!281 zl!343)))))

(declare-fun b!5239671 () Bool)

(declare-fun e!3260306 () Bool)

(declare-fun e!3260304 () Bool)

(assert (=> b!5239671 (= e!3260306 e!3260304)))

(declare-fun c!905539 () Bool)

(assert (=> b!5239671 (= c!905539 (isEmpty!32620 (tail!10325 (unfocusZipperList!281 zl!343))))))

(declare-fun b!5239672 () Bool)

(assert (=> b!5239672 (= e!3260308 (Union!14839 (h!67140 (unfocusZipperList!281 zl!343)) (generalisedUnion!768 (t!373997 (unfocusZipperList!281 zl!343)))))))

(declare-fun e!3260305 () Bool)

(assert (=> d!1688553 e!3260305))

(declare-fun res!2223915 () Bool)

(assert (=> d!1688553 (=> (not res!2223915) (not e!3260305))))

(declare-fun lt!2148048 () Regex!14839)

(assert (=> d!1688553 (= res!2223915 (validRegex!6575 lt!2148048))))

(assert (=> d!1688553 (= lt!2148048 e!3260307)))

(declare-fun c!905537 () Bool)

(declare-fun e!3260303 () Bool)

(assert (=> d!1688553 (= c!905537 e!3260303)))

(declare-fun res!2223914 () Bool)

(assert (=> d!1688553 (=> (not res!2223914) (not e!3260303))))

(assert (=> d!1688553 (= res!2223914 ((_ is Cons!60692) (unfocusZipperList!281 zl!343)))))

(assert (=> d!1688553 (forall!14263 (unfocusZipperList!281 zl!343) lambda!263488)))

(assert (=> d!1688553 (= (generalisedUnion!768 (unfocusZipperList!281 zl!343)) lt!2148048)))

(declare-fun b!5239673 () Bool)

(declare-fun isEmptyLang!799 (Regex!14839) Bool)

(assert (=> b!5239673 (= e!3260306 (isEmptyLang!799 lt!2148048))))

(declare-fun b!5239674 () Bool)

(assert (=> b!5239674 (= e!3260303 (isEmpty!32620 (t!373997 (unfocusZipperList!281 zl!343))))))

(declare-fun b!5239675 () Bool)

(assert (=> b!5239675 (= e!3260305 e!3260306)))

(declare-fun c!905540 () Bool)

(assert (=> b!5239675 (= c!905540 (isEmpty!32620 (unfocusZipperList!281 zl!343)))))

(declare-fun b!5239676 () Bool)

(assert (=> b!5239676 (= e!3260307 (h!67140 (unfocusZipperList!281 zl!343)))))

(declare-fun b!5239677 () Bool)

(assert (=> b!5239677 (= e!3260304 (= lt!2148048 (head!11228 (unfocusZipperList!281 zl!343))))))

(declare-fun b!5239678 () Bool)

(assert (=> b!5239678 (= e!3260308 EmptyLang!14839)))

(declare-fun b!5239679 () Bool)

(declare-fun isUnion!231 (Regex!14839) Bool)

(assert (=> b!5239679 (= e!3260304 (isUnion!231 lt!2148048))))

(assert (= (and d!1688553 res!2223914) b!5239674))

(assert (= (and d!1688553 c!905537) b!5239676))

(assert (= (and d!1688553 (not c!905537)) b!5239670))

(assert (= (and b!5239670 c!905538) b!5239672))

(assert (= (and b!5239670 (not c!905538)) b!5239678))

(assert (= (and d!1688553 res!2223915) b!5239675))

(assert (= (and b!5239675 c!905540) b!5239673))

(assert (= (and b!5239675 (not c!905540)) b!5239671))

(assert (= (and b!5239671 c!905539) b!5239677))

(assert (= (and b!5239671 (not c!905539)) b!5239679))

(declare-fun m!6284446 () Bool)

(assert (=> b!5239672 m!6284446))

(declare-fun m!6284448 () Bool)

(assert (=> b!5239679 m!6284448))

(assert (=> b!5239671 m!6283682))

(declare-fun m!6284450 () Bool)

(assert (=> b!5239671 m!6284450))

(assert (=> b!5239671 m!6284450))

(declare-fun m!6284452 () Bool)

(assert (=> b!5239671 m!6284452))

(declare-fun m!6284454 () Bool)

(assert (=> d!1688553 m!6284454))

(assert (=> d!1688553 m!6283682))

(declare-fun m!6284456 () Bool)

(assert (=> d!1688553 m!6284456))

(declare-fun m!6284458 () Bool)

(assert (=> b!5239674 m!6284458))

(declare-fun m!6284460 () Bool)

(assert (=> b!5239673 m!6284460))

(assert (=> b!5239675 m!6283682))

(declare-fun m!6284462 () Bool)

(assert (=> b!5239675 m!6284462))

(assert (=> b!5239677 m!6283682))

(declare-fun m!6284464 () Bool)

(assert (=> b!5239677 m!6284464))

(assert (=> b!5238754 d!1688553))

(declare-fun bs!1215805 () Bool)

(declare-fun d!1688555 () Bool)

(assert (= bs!1215805 (and d!1688555 d!1688547)))

(declare-fun lambda!263491 () Int)

(assert (=> bs!1215805 (= lambda!263491 lambda!263485)))

(declare-fun bs!1215806 () Bool)

(assert (= bs!1215806 (and d!1688555 d!1688397)))

(assert (=> bs!1215806 (= lambda!263491 lambda!263441)))

(declare-fun bs!1215807 () Bool)

(assert (= bs!1215807 (and d!1688555 d!1688493)))

(assert (=> bs!1215807 (= lambda!263491 lambda!263466)))

(declare-fun bs!1215808 () Bool)

(assert (= bs!1215808 (and d!1688555 d!1688553)))

(assert (=> bs!1215808 (= lambda!263491 lambda!263488)))

(declare-fun bs!1215809 () Bool)

(assert (= bs!1215809 (and d!1688555 d!1688489)))

(assert (=> bs!1215809 (= lambda!263491 lambda!263462)))

(declare-fun bs!1215810 () Bool)

(assert (= bs!1215810 (and d!1688555 d!1688381)))

(assert (=> bs!1215810 (= lambda!263491 lambda!263438)))

(declare-fun lt!2148051 () List!60816)

(assert (=> d!1688555 (forall!14263 lt!2148051 lambda!263491)))

(declare-fun e!3260311 () List!60816)

(assert (=> d!1688555 (= lt!2148051 e!3260311)))

(declare-fun c!905543 () Bool)

(assert (=> d!1688555 (= c!905543 ((_ is Cons!60693) zl!343))))

(assert (=> d!1688555 (= (unfocusZipperList!281 zl!343) lt!2148051)))

(declare-fun b!5239684 () Bool)

(assert (=> b!5239684 (= e!3260311 (Cons!60692 (generalisedConcat!508 (exprs!4723 (h!67141 zl!343))) (unfocusZipperList!281 (t!373998 zl!343))))))

(declare-fun b!5239685 () Bool)

(assert (=> b!5239685 (= e!3260311 Nil!60692)))

(assert (= (and d!1688555 c!905543) b!5239684))

(assert (= (and d!1688555 (not c!905543)) b!5239685))

(declare-fun m!6284466 () Bool)

(assert (=> d!1688555 m!6284466))

(assert (=> b!5239684 m!6283662))

(declare-fun m!6284468 () Bool)

(assert (=> b!5239684 m!6284468))

(assert (=> b!5238754 d!1688555))

(declare-fun d!1688557 () Bool)

(assert (=> d!1688557 (= (isEmpty!32620 (t!373997 (exprs!4723 (h!67141 zl!343)))) ((_ is Nil!60692) (t!373997 (exprs!4723 (h!67141 zl!343)))))))

(assert (=> b!5238735 d!1688557))

(declare-fun d!1688559 () Bool)

(declare-fun lt!2148054 () Regex!14839)

(assert (=> d!1688559 (validRegex!6575 lt!2148054)))

(assert (=> d!1688559 (= lt!2148054 (generalisedUnion!768 (unfocusZipperList!281 zl!343)))))

(assert (=> d!1688559 (= (unfocusZipper!581 zl!343) lt!2148054)))

(declare-fun bs!1215811 () Bool)

(assert (= bs!1215811 d!1688559))

(declare-fun m!6284470 () Bool)

(assert (=> bs!1215811 m!6284470))

(assert (=> bs!1215811 m!6283682))

(assert (=> bs!1215811 m!6283682))

(assert (=> bs!1215811 m!6283684))

(assert (=> b!5238734 d!1688559))

(declare-fun b!5239693 () Bool)

(declare-fun e!3260317 () Bool)

(declare-fun tp!1467320 () Bool)

(assert (=> b!5239693 (= e!3260317 tp!1467320)))

(declare-fun e!3260316 () Bool)

(declare-fun b!5239692 () Bool)

(declare-fun tp!1467321 () Bool)

(assert (=> b!5239692 (= e!3260316 (and (inv!80344 (h!67141 (t!373998 zl!343))) e!3260317 tp!1467321))))

(assert (=> b!5238726 (= tp!1467250 e!3260316)))

(assert (= b!5239692 b!5239693))

(assert (= (and b!5238726 ((_ is Cons!60693) (t!373998 zl!343))) b!5239692))

(declare-fun m!6284472 () Bool)

(assert (=> b!5239692 m!6284472))

(declare-fun condSetEmpty!33413 () Bool)

(assert (=> setNonEmpty!33407 (= condSetEmpty!33413 (= setRest!33407 ((as const (Array Context!8446 Bool)) false)))))

(declare-fun setRes!33413 () Bool)

(assert (=> setNonEmpty!33407 (= tp!1467254 setRes!33413)))

(declare-fun setIsEmpty!33413 () Bool)

(assert (=> setIsEmpty!33413 setRes!33413))

(declare-fun setNonEmpty!33413 () Bool)

(declare-fun setElem!33413 () Context!8446)

(declare-fun tp!1467326 () Bool)

(declare-fun e!3260320 () Bool)

(assert (=> setNonEmpty!33413 (= setRes!33413 (and tp!1467326 (inv!80344 setElem!33413) e!3260320))))

(declare-fun setRest!33413 () (InoxSet Context!8446))

(assert (=> setNonEmpty!33413 (= setRest!33407 ((_ map or) (store ((as const (Array Context!8446 Bool)) false) setElem!33413 true) setRest!33413))))

(declare-fun b!5239698 () Bool)

(declare-fun tp!1467327 () Bool)

(assert (=> b!5239698 (= e!3260320 tp!1467327)))

(assert (= (and setNonEmpty!33407 condSetEmpty!33413) setIsEmpty!33413))

(assert (= (and setNonEmpty!33407 (not condSetEmpty!33413)) setNonEmpty!33413))

(assert (= setNonEmpty!33413 b!5239698))

(declare-fun m!6284474 () Bool)

(assert (=> setNonEmpty!33413 m!6284474))

(declare-fun b!5239711 () Bool)

(declare-fun e!3260323 () Bool)

(declare-fun tp!1467339 () Bool)

(assert (=> b!5239711 (= e!3260323 tp!1467339)))

(assert (=> b!5238752 (= tp!1467253 e!3260323)))

(declare-fun b!5239709 () Bool)

(assert (=> b!5239709 (= e!3260323 tp_is_empty!38931)))

(declare-fun b!5239712 () Bool)

(declare-fun tp!1467341 () Bool)

(declare-fun tp!1467340 () Bool)

(assert (=> b!5239712 (= e!3260323 (and tp!1467341 tp!1467340))))

(declare-fun b!5239710 () Bool)

(declare-fun tp!1467342 () Bool)

(declare-fun tp!1467338 () Bool)

(assert (=> b!5239710 (= e!3260323 (and tp!1467342 tp!1467338))))

(assert (= (and b!5238752 ((_ is ElementMatch!14839) (regOne!30190 r!7292))) b!5239709))

(assert (= (and b!5238752 ((_ is Concat!23684) (regOne!30190 r!7292))) b!5239710))

(assert (= (and b!5238752 ((_ is Star!14839) (regOne!30190 r!7292))) b!5239711))

(assert (= (and b!5238752 ((_ is Union!14839) (regOne!30190 r!7292))) b!5239712))

(declare-fun b!5239715 () Bool)

(declare-fun e!3260324 () Bool)

(declare-fun tp!1467344 () Bool)

(assert (=> b!5239715 (= e!3260324 tp!1467344)))

(assert (=> b!5238752 (= tp!1467251 e!3260324)))

(declare-fun b!5239713 () Bool)

(assert (=> b!5239713 (= e!3260324 tp_is_empty!38931)))

(declare-fun b!5239716 () Bool)

(declare-fun tp!1467346 () Bool)

(declare-fun tp!1467345 () Bool)

(assert (=> b!5239716 (= e!3260324 (and tp!1467346 tp!1467345))))

(declare-fun b!5239714 () Bool)

(declare-fun tp!1467347 () Bool)

(declare-fun tp!1467343 () Bool)

(assert (=> b!5239714 (= e!3260324 (and tp!1467347 tp!1467343))))

(assert (= (and b!5238752 ((_ is ElementMatch!14839) (regTwo!30190 r!7292))) b!5239713))

(assert (= (and b!5238752 ((_ is Concat!23684) (regTwo!30190 r!7292))) b!5239714))

(assert (= (and b!5238752 ((_ is Star!14839) (regTwo!30190 r!7292))) b!5239715))

(assert (= (and b!5238752 ((_ is Union!14839) (regTwo!30190 r!7292))) b!5239716))

(declare-fun b!5239721 () Bool)

(declare-fun e!3260327 () Bool)

(declare-fun tp!1467352 () Bool)

(declare-fun tp!1467353 () Bool)

(assert (=> b!5239721 (= e!3260327 (and tp!1467352 tp!1467353))))

(assert (=> b!5238763 (= tp!1467252 e!3260327)))

(assert (= (and b!5238763 ((_ is Cons!60692) (exprs!4723 (h!67141 zl!343)))) b!5239721))

(declare-fun b!5239726 () Bool)

(declare-fun e!3260330 () Bool)

(declare-fun tp!1467356 () Bool)

(assert (=> b!5239726 (= e!3260330 (and tp_is_empty!38931 tp!1467356))))

(assert (=> b!5238749 (= tp!1467249 e!3260330)))

(assert (= (and b!5238749 ((_ is Cons!60694) (t!373999 s!2326))) b!5239726))

(declare-fun b!5239729 () Bool)

(declare-fun e!3260331 () Bool)

(declare-fun tp!1467358 () Bool)

(assert (=> b!5239729 (= e!3260331 tp!1467358)))

(assert (=> b!5238744 (= tp!1467248 e!3260331)))

(declare-fun b!5239727 () Bool)

(assert (=> b!5239727 (= e!3260331 tp_is_empty!38931)))

(declare-fun b!5239730 () Bool)

(declare-fun tp!1467360 () Bool)

(declare-fun tp!1467359 () Bool)

(assert (=> b!5239730 (= e!3260331 (and tp!1467360 tp!1467359))))

(declare-fun b!5239728 () Bool)

(declare-fun tp!1467361 () Bool)

(declare-fun tp!1467357 () Bool)

(assert (=> b!5239728 (= e!3260331 (and tp!1467361 tp!1467357))))

(assert (= (and b!5238744 ((_ is ElementMatch!14839) (regOne!30191 r!7292))) b!5239727))

(assert (= (and b!5238744 ((_ is Concat!23684) (regOne!30191 r!7292))) b!5239728))

(assert (= (and b!5238744 ((_ is Star!14839) (regOne!30191 r!7292))) b!5239729))

(assert (= (and b!5238744 ((_ is Union!14839) (regOne!30191 r!7292))) b!5239730))

(declare-fun b!5239733 () Bool)

(declare-fun e!3260332 () Bool)

(declare-fun tp!1467363 () Bool)

(assert (=> b!5239733 (= e!3260332 tp!1467363)))

(assert (=> b!5238744 (= tp!1467255 e!3260332)))

(declare-fun b!5239731 () Bool)

(assert (=> b!5239731 (= e!3260332 tp_is_empty!38931)))

(declare-fun b!5239734 () Bool)

(declare-fun tp!1467365 () Bool)

(declare-fun tp!1467364 () Bool)

(assert (=> b!5239734 (= e!3260332 (and tp!1467365 tp!1467364))))

(declare-fun b!5239732 () Bool)

(declare-fun tp!1467366 () Bool)

(declare-fun tp!1467362 () Bool)

(assert (=> b!5239732 (= e!3260332 (and tp!1467366 tp!1467362))))

(assert (= (and b!5238744 ((_ is ElementMatch!14839) (regTwo!30191 r!7292))) b!5239731))

(assert (= (and b!5238744 ((_ is Concat!23684) (regTwo!30191 r!7292))) b!5239732))

(assert (= (and b!5238744 ((_ is Star!14839) (regTwo!30191 r!7292))) b!5239733))

(assert (= (and b!5238744 ((_ is Union!14839) (regTwo!30191 r!7292))) b!5239734))

(declare-fun b!5239737 () Bool)

(declare-fun e!3260333 () Bool)

(declare-fun tp!1467368 () Bool)

(assert (=> b!5239737 (= e!3260333 tp!1467368)))

(assert (=> b!5238746 (= tp!1467256 e!3260333)))

(declare-fun b!5239735 () Bool)

(assert (=> b!5239735 (= e!3260333 tp_is_empty!38931)))

(declare-fun b!5239738 () Bool)

(declare-fun tp!1467370 () Bool)

(declare-fun tp!1467369 () Bool)

(assert (=> b!5239738 (= e!3260333 (and tp!1467370 tp!1467369))))

(declare-fun b!5239736 () Bool)

(declare-fun tp!1467371 () Bool)

(declare-fun tp!1467367 () Bool)

(assert (=> b!5239736 (= e!3260333 (and tp!1467371 tp!1467367))))

(assert (= (and b!5238746 ((_ is ElementMatch!14839) (reg!15168 r!7292))) b!5239735))

(assert (= (and b!5238746 ((_ is Concat!23684) (reg!15168 r!7292))) b!5239736))

(assert (= (and b!5238746 ((_ is Star!14839) (reg!15168 r!7292))) b!5239737))

(assert (= (and b!5238746 ((_ is Union!14839) (reg!15168 r!7292))) b!5239738))

(declare-fun b!5239739 () Bool)

(declare-fun e!3260334 () Bool)

(declare-fun tp!1467372 () Bool)

(declare-fun tp!1467373 () Bool)

(assert (=> b!5239739 (= e!3260334 (and tp!1467372 tp!1467373))))

(assert (=> b!5238760 (= tp!1467257 e!3260334)))

(assert (= (and b!5238760 ((_ is Cons!60692) (exprs!4723 setElem!33407))) b!5239739))

(declare-fun b_lambda!202503 () Bool)

(assert (= b_lambda!202491 (or b!5238751 b_lambda!202503)))

(declare-fun bs!1215812 () Bool)

(declare-fun d!1688561 () Bool)

(assert (= bs!1215812 (and d!1688561 b!5238751)))

(assert (=> bs!1215812 (= (dynLambda!23982 lambda!263423 lt!2147923) (derivationStepZipperUp!211 lt!2147923 (h!67142 s!2326)))))

(assert (=> bs!1215812 m!6283694))

(assert (=> d!1688363 d!1688561))

(declare-fun b_lambda!202505 () Bool)

(assert (= b_lambda!202501 (or b!5238751 b_lambda!202505)))

(declare-fun bs!1215813 () Bool)

(declare-fun d!1688563 () Bool)

(assert (= bs!1215813 (and d!1688563 b!5238751)))

(assert (=> bs!1215813 (= (dynLambda!23982 lambda!263423 (h!67141 zl!343)) (derivationStepZipperUp!211 (h!67141 zl!343) (h!67142 s!2326)))))

(assert (=> bs!1215813 m!6283668))

(assert (=> d!1688525 d!1688563))

(declare-fun b_lambda!202507 () Bool)

(assert (= b_lambda!202489 (or b!5238751 b_lambda!202507)))

(declare-fun bs!1215814 () Bool)

(declare-fun d!1688565 () Bool)

(assert (= bs!1215814 (and d!1688565 b!5238751)))

(assert (=> bs!1215814 (= (dynLambda!23982 lambda!263423 lt!2147894) (derivationStepZipperUp!211 lt!2147894 (h!67142 s!2326)))))

(assert (=> bs!1215814 m!6283700))

(assert (=> d!1688355 d!1688565))

(check-sat (not b!5238854) (not b!5239692) (not b!5239625) (not b!5239590) (not b!5239062) (not d!1688413) (not b!5239366) (not b!5239739) (not bm!370860) (not d!1688455) (not bm!370828) (not b!5239580) (not b!5239636) (not b!5239736) (not b!5239397) (not d!1688421) (not b!5239618) (not b!5239710) (not b!5239623) (not b!5239066) (not bm!370859) (not b!5239577) (not b!5239389) (not b!5239144) (not d!1688361) (not b!5238924) (not b!5239293) (not b!5238984) (not d!1688475) (not d!1688489) (not b!5239354) (not d!1688381) (not d!1688379) (not b!5239609) (not b!5239067) (not b!5239370) (not b!5239611) (not b!5239069) tp_is_empty!38931 (not b!5239596) (not b!5239606) (not b!5239363) (not b!5238988) (not bm!370866) (not d!1688373) (not b!5239138) (not d!1688519) (not d!1688553) (not d!1688369) (not d!1688559) (not b!5239377) (not d!1688547) (not d!1688529) (not b!5239143) (not b_lambda!202507) (not b!5239601) (not b!5239360) (not b!5239388) (not bm!370827) (not b!5238990) (not b!5238991) (not b!5239714) (not b!5239016) (not b!5239615) (not b_lambda!202505) (not b!5239374) (not bm!370820) (not bm!370835) (not bm!370855) (not b!5239380) (not b!5239726) (not b!5239712) (not b!5239729) (not b!5239017) (not b!5239404) (not b!5239737) (not b!5238955) (not b!5239485) (not b!5238922) (not bm!370836) (not b!5239672) (not b!5238852) (not b!5239460) (not d!1688343) (not b!5239018) (not b!5239589) (not b!5239362) (not d!1688487) (not d!1688531) (not bm!370854) (not bs!1215812) (not d!1688543) (not b!5239715) (not b!5239597) (not b!5239490) (not bm!370824) (not b!5239142) (not b_lambda!202503) (not b!5239376) (not b!5238921) (not d!1688399) (not d!1688493) (not bm!370838) (not b!5239624) (not b!5239019) (not b!5239721) (not d!1688339) (not d!1688545) (not b!5239677) (not b!5238886) (not b!5239383) (not b!5239398) (not b!5239402) (not bs!1215813) (not b!5238919) (not bm!370872) (not b!5238923) (not b!5239585) (not bm!370823) (not d!1688377) (not bs!1215814) (not d!1688555) (not b!5239284) (not bm!370874) (not bm!370858) (not b!5238917) (not bm!370867) (not b!5239626) (not d!1688341) (not d!1688363) (not b!5239403) (not bm!370856) (not b!5238959) (not bm!370767) (not b!5239679) (not d!1688365) (not b!5239716) (not b!5239399) (not b!5238993) (not b!5239390) (not b!5238989) (not b!5239401) (not b!5239673) (not b!5238920) (not b!5238994) (not b!5239733) (not b!5239621) (not b!5239732) (not b!5239671) (not b!5239627) (not d!1688355) (not bm!370765) (not b!5239387) (not b!5239368) (not b!5239734) (not b!5239647) (not b!5238918) (not bm!370839) (not d!1688533) (not b!5239064) (not b!5239738) (not bm!370862) (not d!1688351) (not b!5239015) (not b!5239063) (not b!5239385) (not setNonEmpty!33413) (not d!1688335) (not d!1688477) (not d!1688541) (not b!5239617) (not bm!370868) (not d!1688333) (not bm!370861) (not b!5239465) (not d!1688485) (not d!1688503) (not b!5238916) (not b!5239356) (not b!5239728) (not b!5239068) (not bm!370873) (not d!1688537) (not d!1688375) (not d!1688417) (not d!1688345) (not b!5239594) (not bm!370821) (not d!1688525) (not b!5239698) (not d!1688539) (not b!5239730) (not d!1688415) (not b!5239684) (not bm!370863) (not b!5239140) (not d!1688491) (not d!1688397) (not b!5239675) (not b!5239693) (not b!5239674) (not b!5239141) (not b!5239595) (not b!5239584) (not b!5239384) (not d!1688349) (not b!5239711))
(check-sat)
