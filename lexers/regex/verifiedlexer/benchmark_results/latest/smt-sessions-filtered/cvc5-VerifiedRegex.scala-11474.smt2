; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!623852 () Bool)

(assert start!623852)

(declare-fun b!6275692 () Bool)

(assert (=> b!6275692 true))

(assert (=> b!6275692 true))

(declare-fun lambda!343937 () Int)

(declare-fun lambda!343936 () Int)

(assert (=> b!6275692 (not (= lambda!343937 lambda!343936))))

(assert (=> b!6275692 true))

(assert (=> b!6275692 true))

(declare-fun b!6275668 () Bool)

(assert (=> b!6275668 true))

(declare-fun b!6275669 () Bool)

(declare-fun e!3816730 () Bool)

(declare-fun e!3816733 () Bool)

(assert (=> b!6275669 (= e!3816730 e!3816733)))

(declare-fun res!2588395 () Bool)

(assert (=> b!6275669 (=> res!2588395 e!3816733)))

(declare-fun e!3816738 () Bool)

(assert (=> b!6275669 (= res!2588395 e!3816738)))

(declare-fun res!2588400 () Bool)

(assert (=> b!6275669 (=> (not res!2588400) (not e!3816738))))

(declare-datatypes ((C!32658 0))(
  ( (C!32659 (val!26031 Int)) )
))
(declare-datatypes ((List!64881 0))(
  ( (Nil!64757) (Cons!64757 (h!71205 C!32658) (t!378441 List!64881)) )
))
(declare-fun s!2326 () List!64881)

(declare-fun lt!2352935 () Bool)

(declare-datatypes ((Regex!16194 0))(
  ( (ElementMatch!16194 (c!1137631 C!32658)) (Concat!25039 (regOne!32900 Regex!16194) (regTwo!32900 Regex!16194)) (EmptyExpr!16194) (Star!16194 (reg!16523 Regex!16194)) (EmptyLang!16194) (Union!16194 (regOne!32901 Regex!16194) (regTwo!32901 Regex!16194)) )
))
(declare-datatypes ((List!64882 0))(
  ( (Nil!64758) (Cons!64758 (h!71206 Regex!16194) (t!378442 List!64882)) )
))
(declare-datatypes ((Context!11156 0))(
  ( (Context!11157 (exprs!6078 List!64882)) )
))
(declare-fun lt!2352917 () (Set Context!11156))

(declare-fun matchZipper!2206 ((Set Context!11156) List!64881) Bool)

(assert (=> b!6275669 (= res!2588400 (not (= lt!2352935 (matchZipper!2206 lt!2352917 (t!378441 s!2326)))))))

(declare-fun lt!2352907 () (Set Context!11156))

(declare-fun e!3816729 () Bool)

(assert (=> b!6275669 (= (matchZipper!2206 lt!2352907 (t!378441 s!2326)) e!3816729)))

(declare-fun res!2588397 () Bool)

(assert (=> b!6275669 (=> res!2588397 e!3816729)))

(declare-fun lt!2352934 () Bool)

(assert (=> b!6275669 (= res!2588397 lt!2352934)))

(declare-datatypes ((Unit!158107 0))(
  ( (Unit!158108) )
))
(declare-fun lt!2352930 () Unit!158107)

(declare-fun lt!2352918 () (Set Context!11156))

(declare-fun lt!2352901 () (Set Context!11156))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1025 ((Set Context!11156) (Set Context!11156) List!64881) Unit!158107)

(assert (=> b!6275669 (= lt!2352930 (lemmaZipperConcatMatchesSameAsBothZippers!1025 lt!2352918 lt!2352901 (t!378441 s!2326)))))

(declare-fun lt!2352913 () Context!11156)

(declare-fun lt!2352931 () (Set Context!11156))

(declare-fun lambda!343938 () Int)

(declare-fun flatMap!1699 ((Set Context!11156) Int) (Set Context!11156))

(declare-fun derivationStepZipperUp!1368 (Context!11156 C!32658) (Set Context!11156))

(assert (=> b!6275669 (= (flatMap!1699 lt!2352931 lambda!343938) (derivationStepZipperUp!1368 lt!2352913 (h!71205 s!2326)))))

(declare-fun lt!2352932 () Unit!158107)

(declare-fun lemmaFlatMapOnSingletonSet!1225 ((Set Context!11156) Context!11156 Int) Unit!158107)

(assert (=> b!6275669 (= lt!2352932 (lemmaFlatMapOnSingletonSet!1225 lt!2352931 lt!2352913 lambda!343938))))

(declare-fun b!6275670 () Bool)

(declare-fun e!3816737 () Bool)

(declare-fun lt!2352911 () (Set Context!11156))

(assert (=> b!6275670 (= e!3816737 (matchZipper!2206 lt!2352911 (t!378441 s!2326)))))

(declare-fun b!6275671 () Bool)

(declare-fun res!2588398 () Bool)

(declare-fun e!3816725 () Bool)

(assert (=> b!6275671 (=> res!2588398 e!3816725)))

(declare-datatypes ((List!64883 0))(
  ( (Nil!64759) (Cons!64759 (h!71207 Context!11156) (t!378443 List!64883)) )
))
(declare-fun zl!343 () List!64883)

(assert (=> b!6275671 (= res!2588398 (not (is-Cons!64758 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6275672 () Bool)

(declare-fun e!3816723 () Bool)

(assert (=> b!6275672 (= e!3816723 (not (matchZipper!2206 lt!2352911 (t!378441 s!2326))))))

(declare-fun b!6275673 () Bool)

(declare-fun derivationStepZipper!2160 ((Set Context!11156) C!32658) (Set Context!11156))

(assert (=> b!6275673 (= e!3816738 (not (matchZipper!2206 (derivationStepZipper!2160 lt!2352931 (h!71205 s!2326)) (t!378441 s!2326))))))

(declare-fun b!6275674 () Bool)

(declare-fun e!3816720 () Bool)

(declare-fun lt!2352914 () (Set Context!11156))

(assert (=> b!6275674 (= e!3816720 (matchZipper!2206 lt!2352914 (t!378441 s!2326)))))

(declare-fun b!6275675 () Bool)

(declare-fun res!2588383 () Bool)

(assert (=> b!6275675 (=> res!2588383 e!3816733)))

(declare-fun r!7292 () Regex!16194)

(assert (=> b!6275675 (= res!2588383 (not (= (exprs!6078 (h!71207 zl!343)) (Cons!64758 (Concat!25039 (regOne!32900 (regOne!32900 r!7292)) (regTwo!32900 (regOne!32900 r!7292))) (t!378442 (exprs!6078 (h!71207 zl!343)))))))))

(declare-fun setNonEmpty!42689 () Bool)

(declare-fun setRes!42689 () Bool)

(declare-fun setElem!42689 () Context!11156)

(declare-fun tp!1749738 () Bool)

(declare-fun e!3816722 () Bool)

(declare-fun inv!83733 (Context!11156) Bool)

(assert (=> setNonEmpty!42689 (= setRes!42689 (and tp!1749738 (inv!83733 setElem!42689) e!3816722))))

(declare-fun z!1189 () (Set Context!11156))

(declare-fun setRest!42689 () (Set Context!11156))

(assert (=> setNonEmpty!42689 (= z!1189 (set.union (set.insert setElem!42689 (as set.empty (Set Context!11156))) setRest!42689))))

(declare-fun b!6275676 () Bool)

(declare-fun res!2588384 () Bool)

(declare-fun e!3816726 () Bool)

(assert (=> b!6275676 (=> (not res!2588384) (not e!3816726))))

(declare-fun unfocusZipper!1936 (List!64883) Regex!16194)

(assert (=> b!6275676 (= res!2588384 (= r!7292 (unfocusZipper!1936 zl!343)))))

(declare-fun b!6275677 () Bool)

(declare-fun res!2588396 () Bool)

(declare-fun e!3816731 () Bool)

(assert (=> b!6275677 (=> res!2588396 e!3816731)))

(declare-fun lt!2352920 () List!64883)

(declare-fun zipperDepth!319 (List!64883) Int)

(assert (=> b!6275677 (= res!2588396 (> (zipperDepth!319 lt!2352920) (zipperDepth!319 zl!343)))))

(declare-fun b!6275678 () Bool)

(declare-fun e!3816734 () Bool)

(declare-fun tp!1749734 () Bool)

(declare-fun tp!1749736 () Bool)

(assert (=> b!6275678 (= e!3816734 (and tp!1749734 tp!1749736))))

(declare-fun b!6275679 () Bool)

(declare-fun tp!1749735 () Bool)

(assert (=> b!6275679 (= e!3816722 tp!1749735)))

(declare-fun b!6275680 () Bool)

(declare-fun e!3816721 () Bool)

(assert (=> b!6275680 (= e!3816731 e!3816721)))

(declare-fun res!2588391 () Bool)

(assert (=> b!6275680 (=> res!2588391 e!3816721)))

(declare-fun validRegex!7930 (Regex!16194) Bool)

(assert (=> b!6275680 (= res!2588391 (not (validRegex!7930 (regOne!32900 (regOne!32900 r!7292)))))))

(declare-fun lt!2352925 () Bool)

(declare-fun lt!2352908 () Regex!16194)

(declare-fun matchRSpec!3295 (Regex!16194 List!64881) Bool)

(assert (=> b!6275680 (= lt!2352925 (matchRSpec!3295 lt!2352908 s!2326))))

(declare-fun lt!2352923 () Unit!158107)

(declare-fun mainMatchTheorem!3295 (Regex!16194 List!64881) Unit!158107)

(assert (=> b!6275680 (= lt!2352923 (mainMatchTheorem!3295 lt!2352908 s!2326))))

(declare-fun lt!2352916 () Regex!16194)

(declare-fun matchR!8377 (Regex!16194 List!64881) Bool)

(assert (=> b!6275680 (= (matchR!8377 lt!2352916 s!2326) (matchZipper!2206 lt!2352931 s!2326))))

(declare-fun lt!2352937 () Unit!158107)

(declare-fun theoremZipperRegexEquiv!764 ((Set Context!11156) List!64883 Regex!16194 List!64881) Unit!158107)

(assert (=> b!6275680 (= lt!2352937 (theoremZipperRegexEquiv!764 lt!2352931 (Cons!64759 lt!2352913 Nil!64759) lt!2352916 s!2326))))

(declare-fun lt!2352910 () List!64882)

(declare-fun generalisedConcat!1791 (List!64882) Regex!16194)

(assert (=> b!6275680 (= lt!2352916 (generalisedConcat!1791 lt!2352910))))

(declare-fun lt!2352938 () (Set Context!11156))

(assert (=> b!6275680 (= lt!2352925 (matchZipper!2206 lt!2352938 s!2326))))

(assert (=> b!6275680 (= lt!2352925 (matchR!8377 lt!2352908 s!2326))))

(declare-fun lt!2352927 () Unit!158107)

(assert (=> b!6275680 (= lt!2352927 (theoremZipperRegexEquiv!764 lt!2352938 lt!2352920 lt!2352908 s!2326))))

(declare-fun lt!2352909 () List!64882)

(assert (=> b!6275680 (= lt!2352908 (generalisedConcat!1791 lt!2352909))))

(declare-fun b!6275681 () Bool)

(declare-fun e!3816736 () Bool)

(declare-fun e!3816728 () Bool)

(assert (=> b!6275681 (= e!3816736 e!3816728)))

(declare-fun res!2588385 () Bool)

(assert (=> b!6275681 (=> res!2588385 e!3816728)))

(assert (=> b!6275681 (= res!2588385 e!3816723)))

(declare-fun res!2588399 () Bool)

(assert (=> b!6275681 (=> (not res!2588399) (not e!3816723))))

(assert (=> b!6275681 (= res!2588399 (not (= lt!2352935 lt!2352934)))))

(declare-fun lt!2352902 () (Set Context!11156))

(assert (=> b!6275681 (= lt!2352935 (matchZipper!2206 lt!2352902 (t!378441 s!2326)))))

(declare-fun lt!2352922 () (Set Context!11156))

(assert (=> b!6275681 (= (matchZipper!2206 lt!2352922 (t!378441 s!2326)) e!3816737)))

(declare-fun res!2588389 () Bool)

(assert (=> b!6275681 (=> res!2588389 e!3816737)))

(assert (=> b!6275681 (= res!2588389 lt!2352934)))

(assert (=> b!6275681 (= lt!2352934 (matchZipper!2206 lt!2352918 (t!378441 s!2326)))))

(declare-fun lt!2352926 () Unit!158107)

(assert (=> b!6275681 (= lt!2352926 (lemmaZipperConcatMatchesSameAsBothZippers!1025 lt!2352918 lt!2352911 (t!378441 s!2326)))))

(declare-fun b!6275682 () Bool)

(declare-fun res!2588394 () Bool)

(assert (=> b!6275682 (=> res!2588394 e!3816725)))

(declare-fun generalisedUnion!2038 (List!64882) Regex!16194)

(declare-fun unfocusZipperList!1615 (List!64883) List!64882)

(assert (=> b!6275682 (= res!2588394 (not (= r!7292 (generalisedUnion!2038 (unfocusZipperList!1615 zl!343)))))))

(declare-fun b!6275683 () Bool)

(assert (=> b!6275683 (= e!3816728 e!3816730)))

(declare-fun res!2588388 () Bool)

(assert (=> b!6275683 (=> res!2588388 e!3816730)))

(assert (=> b!6275683 (= res!2588388 (not (= lt!2352917 lt!2352907)))))

(assert (=> b!6275683 (= lt!2352907 (set.union lt!2352918 lt!2352901))))

(assert (=> b!6275683 (= lt!2352901 (derivationStepZipperUp!1368 lt!2352913 (h!71205 s!2326)))))

(declare-fun lt!2352936 () Context!11156)

(assert (=> b!6275683 (= (flatMap!1699 lt!2352938 lambda!343938) (derivationStepZipperUp!1368 lt!2352936 (h!71205 s!2326)))))

(declare-fun lt!2352924 () Unit!158107)

(assert (=> b!6275683 (= lt!2352924 (lemmaFlatMapOnSingletonSet!1225 lt!2352938 lt!2352936 lambda!343938))))

(declare-fun lt!2352905 () (Set Context!11156))

(assert (=> b!6275683 (= lt!2352905 (derivationStepZipperUp!1368 lt!2352936 (h!71205 s!2326)))))

(assert (=> b!6275683 (= lt!2352917 (derivationStepZipper!2160 lt!2352938 (h!71205 s!2326)))))

(assert (=> b!6275683 (= lt!2352931 (set.insert lt!2352913 (as set.empty (Set Context!11156))))))

(assert (=> b!6275683 (= lt!2352938 (set.insert lt!2352936 (as set.empty (Set Context!11156))))))

(assert (=> b!6275683 (= lt!2352936 (Context!11157 lt!2352909))))

(assert (=> b!6275683 (= lt!2352909 (Cons!64758 (regOne!32900 (regOne!32900 r!7292)) lt!2352910))))

(declare-fun e!3816724 () Bool)

(declare-fun tp!1749731 () Bool)

(declare-fun e!3816719 () Bool)

(declare-fun b!6275684 () Bool)

(assert (=> b!6275684 (= e!3816719 (and (inv!83733 (h!71207 zl!343)) e!3816724 tp!1749731))))

(declare-fun res!2588405 () Bool)

(assert (=> start!623852 (=> (not res!2588405) (not e!3816726))))

(assert (=> start!623852 (= res!2588405 (validRegex!7930 r!7292))))

(assert (=> start!623852 e!3816726))

(assert (=> start!623852 e!3816734))

(declare-fun condSetEmpty!42689 () Bool)

(assert (=> start!623852 (= condSetEmpty!42689 (= z!1189 (as set.empty (Set Context!11156))))))

(assert (=> start!623852 setRes!42689))

(assert (=> start!623852 e!3816719))

(declare-fun e!3816732 () Bool)

(assert (=> start!623852 e!3816732))

(declare-fun e!3816727 () Bool)

(declare-fun e!3816739 () Bool)

(assert (=> b!6275668 (= e!3816727 e!3816739)))

(declare-fun res!2588381 () Bool)

(assert (=> b!6275668 (=> res!2588381 e!3816739)))

(assert (=> b!6275668 (= res!2588381 (or (and (is-ElementMatch!16194 (regOne!32900 r!7292)) (= (c!1137631 (regOne!32900 r!7292)) (h!71205 s!2326))) (is-Union!16194 (regOne!32900 r!7292)) (not (is-Concat!25039 (regOne!32900 r!7292)))))))

(declare-fun lt!2352904 () Unit!158107)

(declare-fun e!3816735 () Unit!158107)

(assert (=> b!6275668 (= lt!2352904 e!3816735)))

(declare-fun c!1137630 () Bool)

(declare-fun nullable!6187 (Regex!16194) Bool)

(assert (=> b!6275668 (= c!1137630 (nullable!6187 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(assert (=> b!6275668 (= (flatMap!1699 z!1189 lambda!343938) (derivationStepZipperUp!1368 (h!71207 zl!343) (h!71205 s!2326)))))

(declare-fun lt!2352928 () Unit!158107)

(assert (=> b!6275668 (= lt!2352928 (lemmaFlatMapOnSingletonSet!1225 z!1189 (h!71207 zl!343) lambda!343938))))

(declare-fun lt!2352903 () Context!11156)

(assert (=> b!6275668 (= lt!2352914 (derivationStepZipperUp!1368 lt!2352903 (h!71205 s!2326)))))

(declare-fun derivationStepZipperDown!1442 (Regex!16194 Context!11156 C!32658) (Set Context!11156))

(assert (=> b!6275668 (= lt!2352902 (derivationStepZipperDown!1442 (h!71206 (exprs!6078 (h!71207 zl!343))) lt!2352903 (h!71205 s!2326)))))

(assert (=> b!6275668 (= lt!2352903 (Context!11157 (t!378442 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun lt!2352915 () (Set Context!11156))

(assert (=> b!6275668 (= lt!2352915 (derivationStepZipperUp!1368 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343))))) (h!71205 s!2326)))))

(declare-fun b!6275685 () Bool)

(declare-fun res!2588392 () Bool)

(assert (=> b!6275685 (=> res!2588392 e!3816733)))

(declare-fun contextDepthTotal!317 (Context!11156) Int)

(assert (=> b!6275685 (= res!2588392 (>= (contextDepthTotal!317 lt!2352936) (contextDepthTotal!317 (h!71207 zl!343))))))

(declare-fun b!6275686 () Bool)

(assert (=> b!6275686 (= e!3816726 (not e!3816725))))

(declare-fun res!2588403 () Bool)

(assert (=> b!6275686 (=> res!2588403 e!3816725)))

(assert (=> b!6275686 (= res!2588403 (not (is-Cons!64759 zl!343)))))

(declare-fun lt!2352906 () Bool)

(assert (=> b!6275686 (= lt!2352906 (matchRSpec!3295 r!7292 s!2326))))

(assert (=> b!6275686 (= lt!2352906 (matchR!8377 r!7292 s!2326))))

(declare-fun lt!2352919 () Unit!158107)

(assert (=> b!6275686 (= lt!2352919 (mainMatchTheorem!3295 r!7292 s!2326))))

(declare-fun b!6275687 () Bool)

(declare-fun res!2588382 () Bool)

(assert (=> b!6275687 (=> res!2588382 e!3816739)))

(assert (=> b!6275687 (= res!2588382 (not (nullable!6187 (regOne!32900 (regOne!32900 r!7292)))))))

(declare-fun b!6275688 () Bool)

(declare-fun tp_is_empty!41641 () Bool)

(declare-fun tp!1749739 () Bool)

(assert (=> b!6275688 (= e!3816732 (and tp_is_empty!41641 tp!1749739))))

(declare-fun b!6275689 () Bool)

(assert (=> b!6275689 (= e!3816739 e!3816736)))

(declare-fun res!2588402 () Bool)

(assert (=> b!6275689 (=> res!2588402 e!3816736)))

(assert (=> b!6275689 (= res!2588402 (not (= lt!2352902 lt!2352922)))))

(assert (=> b!6275689 (= lt!2352922 (set.union lt!2352918 lt!2352911))))

(assert (=> b!6275689 (= lt!2352911 (derivationStepZipperDown!1442 (regTwo!32900 (regOne!32900 r!7292)) lt!2352903 (h!71205 s!2326)))))

(assert (=> b!6275689 (= lt!2352918 (derivationStepZipperDown!1442 (regOne!32900 (regOne!32900 r!7292)) lt!2352913 (h!71205 s!2326)))))

(assert (=> b!6275689 (= lt!2352913 (Context!11157 lt!2352910))))

(assert (=> b!6275689 (= lt!2352910 (Cons!64758 (regTwo!32900 (regOne!32900 r!7292)) (t!378442 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6275690 () Bool)

(assert (=> b!6275690 (= e!3816721 (validRegex!7930 lt!2352916))))

(declare-fun b!6275691 () Bool)

(declare-fun res!2588390 () Bool)

(assert (=> b!6275691 (=> res!2588390 e!3816725)))

(declare-fun isEmpty!36796 (List!64883) Bool)

(assert (=> b!6275691 (= res!2588390 (not (isEmpty!36796 (t!378443 zl!343))))))

(assert (=> b!6275692 (= e!3816725 e!3816727)))

(declare-fun res!2588386 () Bool)

(assert (=> b!6275692 (=> res!2588386 e!3816727)))

(declare-fun lt!2352921 () Bool)

(assert (=> b!6275692 (= res!2588386 (or (not (= lt!2352906 lt!2352921)) (is-Nil!64757 s!2326)))))

(declare-fun Exists!3264 (Int) Bool)

(assert (=> b!6275692 (= (Exists!3264 lambda!343936) (Exists!3264 lambda!343937))))

(declare-fun lt!2352933 () Unit!158107)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1801 (Regex!16194 Regex!16194 List!64881) Unit!158107)

(assert (=> b!6275692 (= lt!2352933 (lemmaExistCutMatchRandMatchRSpecEquivalent!1801 (regOne!32900 r!7292) (regTwo!32900 r!7292) s!2326))))

(assert (=> b!6275692 (= lt!2352921 (Exists!3264 lambda!343936))))

(declare-datatypes ((tuple2!66346 0))(
  ( (tuple2!66347 (_1!36476 List!64881) (_2!36476 List!64881)) )
))
(declare-datatypes ((Option!16085 0))(
  ( (None!16084) (Some!16084 (v!52239 tuple2!66346)) )
))
(declare-fun isDefined!12788 (Option!16085) Bool)

(declare-fun findConcatSeparation!2499 (Regex!16194 Regex!16194 List!64881 List!64881 List!64881) Option!16085)

(assert (=> b!6275692 (= lt!2352921 (isDefined!12788 (findConcatSeparation!2499 (regOne!32900 r!7292) (regTwo!32900 r!7292) Nil!64757 s!2326 s!2326)))))

(declare-fun lt!2352912 () Unit!158107)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2263 (Regex!16194 Regex!16194 List!64881) Unit!158107)

(assert (=> b!6275692 (= lt!2352912 (lemmaFindConcatSeparationEquivalentToExists!2263 (regOne!32900 r!7292) (regTwo!32900 r!7292) s!2326))))

(declare-fun setIsEmpty!42689 () Bool)

(assert (=> setIsEmpty!42689 setRes!42689))

(declare-fun b!6275693 () Bool)

(declare-fun res!2588380 () Bool)

(assert (=> b!6275693 (=> (not res!2588380) (not e!3816726))))

(declare-fun toList!9978 ((Set Context!11156)) List!64883)

(assert (=> b!6275693 (= res!2588380 (= (toList!9978 z!1189) zl!343))))

(declare-fun b!6275694 () Bool)

(declare-fun tp!1749732 () Bool)

(assert (=> b!6275694 (= e!3816724 tp!1749732)))

(declare-fun b!6275695 () Bool)

(declare-fun tp!1749733 () Bool)

(declare-fun tp!1749737 () Bool)

(assert (=> b!6275695 (= e!3816734 (and tp!1749733 tp!1749737))))

(declare-fun b!6275696 () Bool)

(declare-fun Unit!158109 () Unit!158107)

(assert (=> b!6275696 (= e!3816735 Unit!158109)))

(declare-fun lt!2352929 () Unit!158107)

(assert (=> b!6275696 (= lt!2352929 (lemmaZipperConcatMatchesSameAsBothZippers!1025 lt!2352902 lt!2352914 (t!378441 s!2326)))))

(declare-fun res!2588404 () Bool)

(assert (=> b!6275696 (= res!2588404 (matchZipper!2206 lt!2352902 (t!378441 s!2326)))))

(assert (=> b!6275696 (=> res!2588404 e!3816720)))

(assert (=> b!6275696 (= (matchZipper!2206 (set.union lt!2352902 lt!2352914) (t!378441 s!2326)) e!3816720)))

(declare-fun b!6275697 () Bool)

(declare-fun res!2588393 () Bool)

(assert (=> b!6275697 (=> res!2588393 e!3816725)))

(assert (=> b!6275697 (= res!2588393 (not (= r!7292 (generalisedConcat!1791 (exprs!6078 (h!71207 zl!343))))))))

(declare-fun b!6275698 () Bool)

(assert (=> b!6275698 (= e!3816729 (matchZipper!2206 lt!2352901 (t!378441 s!2326)))))

(declare-fun b!6275699 () Bool)

(declare-fun res!2588387 () Bool)

(assert (=> b!6275699 (=> res!2588387 e!3816727)))

(declare-fun isEmpty!36797 (List!64882) Bool)

(assert (=> b!6275699 (= res!2588387 (isEmpty!36797 (t!378442 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6275700 () Bool)

(declare-fun res!2588401 () Bool)

(assert (=> b!6275700 (=> res!2588401 e!3816725)))

(assert (=> b!6275700 (= res!2588401 (or (is-EmptyExpr!16194 r!7292) (is-EmptyLang!16194 r!7292) (is-ElementMatch!16194 r!7292) (is-Union!16194 r!7292) (not (is-Concat!25039 r!7292))))))

(declare-fun b!6275701 () Bool)

(declare-fun Unit!158110 () Unit!158107)

(assert (=> b!6275701 (= e!3816735 Unit!158110)))

(declare-fun b!6275702 () Bool)

(assert (=> b!6275702 (= e!3816733 e!3816731)))

(declare-fun res!2588379 () Bool)

(assert (=> b!6275702 (=> res!2588379 e!3816731)))

(declare-fun zipperDepthTotal!347 (List!64883) Int)

(assert (=> b!6275702 (= res!2588379 (>= (zipperDepthTotal!347 lt!2352920) (zipperDepthTotal!347 zl!343)))))

(assert (=> b!6275702 (= lt!2352920 (Cons!64759 lt!2352936 Nil!64759))))

(declare-fun b!6275703 () Bool)

(declare-fun tp!1749740 () Bool)

(assert (=> b!6275703 (= e!3816734 tp!1749740)))

(declare-fun b!6275704 () Bool)

(assert (=> b!6275704 (= e!3816734 tp_is_empty!41641)))

(assert (= (and start!623852 res!2588405) b!6275693))

(assert (= (and b!6275693 res!2588380) b!6275676))

(assert (= (and b!6275676 res!2588384) b!6275686))

(assert (= (and b!6275686 (not res!2588403)) b!6275691))

(assert (= (and b!6275691 (not res!2588390)) b!6275697))

(assert (= (and b!6275697 (not res!2588393)) b!6275671))

(assert (= (and b!6275671 (not res!2588398)) b!6275682))

(assert (= (and b!6275682 (not res!2588394)) b!6275700))

(assert (= (and b!6275700 (not res!2588401)) b!6275692))

(assert (= (and b!6275692 (not res!2588386)) b!6275699))

(assert (= (and b!6275699 (not res!2588387)) b!6275668))

(assert (= (and b!6275668 c!1137630) b!6275696))

(assert (= (and b!6275668 (not c!1137630)) b!6275701))

(assert (= (and b!6275696 (not res!2588404)) b!6275674))

(assert (= (and b!6275668 (not res!2588381)) b!6275687))

(assert (= (and b!6275687 (not res!2588382)) b!6275689))

(assert (= (and b!6275689 (not res!2588402)) b!6275681))

(assert (= (and b!6275681 (not res!2588389)) b!6275670))

(assert (= (and b!6275681 res!2588399) b!6275672))

(assert (= (and b!6275681 (not res!2588385)) b!6275683))

(assert (= (and b!6275683 (not res!2588388)) b!6275669))

(assert (= (and b!6275669 (not res!2588397)) b!6275698))

(assert (= (and b!6275669 res!2588400) b!6275673))

(assert (= (and b!6275669 (not res!2588395)) b!6275675))

(assert (= (and b!6275675 (not res!2588383)) b!6275685))

(assert (= (and b!6275685 (not res!2588392)) b!6275702))

(assert (= (and b!6275702 (not res!2588379)) b!6275677))

(assert (= (and b!6275677 (not res!2588396)) b!6275680))

(assert (= (and b!6275680 (not res!2588391)) b!6275690))

(assert (= (and start!623852 (is-ElementMatch!16194 r!7292)) b!6275704))

(assert (= (and start!623852 (is-Concat!25039 r!7292)) b!6275678))

(assert (= (and start!623852 (is-Star!16194 r!7292)) b!6275703))

(assert (= (and start!623852 (is-Union!16194 r!7292)) b!6275695))

(assert (= (and start!623852 condSetEmpty!42689) setIsEmpty!42689))

(assert (= (and start!623852 (not condSetEmpty!42689)) setNonEmpty!42689))

(assert (= setNonEmpty!42689 b!6275679))

(assert (= b!6275684 b!6275694))

(assert (= (and start!623852 (is-Cons!64759 zl!343)) b!6275684))

(assert (= (and start!623852 (is-Cons!64757 s!2326)) b!6275688))

(declare-fun m!7097120 () Bool)

(assert (=> b!6275683 m!7097120))

(declare-fun m!7097122 () Bool)

(assert (=> b!6275683 m!7097122))

(declare-fun m!7097124 () Bool)

(assert (=> b!6275683 m!7097124))

(declare-fun m!7097126 () Bool)

(assert (=> b!6275683 m!7097126))

(declare-fun m!7097128 () Bool)

(assert (=> b!6275683 m!7097128))

(declare-fun m!7097130 () Bool)

(assert (=> b!6275683 m!7097130))

(declare-fun m!7097132 () Bool)

(assert (=> b!6275683 m!7097132))

(declare-fun m!7097134 () Bool)

(assert (=> b!6275681 m!7097134))

(declare-fun m!7097136 () Bool)

(assert (=> b!6275681 m!7097136))

(declare-fun m!7097138 () Bool)

(assert (=> b!6275681 m!7097138))

(declare-fun m!7097140 () Bool)

(assert (=> b!6275681 m!7097140))

(declare-fun m!7097142 () Bool)

(assert (=> start!623852 m!7097142))

(declare-fun m!7097144 () Bool)

(assert (=> b!6275670 m!7097144))

(declare-fun m!7097146 () Bool)

(assert (=> b!6275677 m!7097146))

(declare-fun m!7097148 () Bool)

(assert (=> b!6275677 m!7097148))

(declare-fun m!7097150 () Bool)

(assert (=> b!6275697 m!7097150))

(declare-fun m!7097152 () Bool)

(assert (=> b!6275673 m!7097152))

(assert (=> b!6275673 m!7097152))

(declare-fun m!7097154 () Bool)

(assert (=> b!6275673 m!7097154))

(declare-fun m!7097156 () Bool)

(assert (=> b!6275693 m!7097156))

(declare-fun m!7097158 () Bool)

(assert (=> b!6275696 m!7097158))

(assert (=> b!6275696 m!7097134))

(declare-fun m!7097160 () Bool)

(assert (=> b!6275696 m!7097160))

(declare-fun m!7097162 () Bool)

(assert (=> b!6275687 m!7097162))

(declare-fun m!7097164 () Bool)

(assert (=> b!6275689 m!7097164))

(declare-fun m!7097166 () Bool)

(assert (=> b!6275689 m!7097166))

(declare-fun m!7097168 () Bool)

(assert (=> b!6275686 m!7097168))

(declare-fun m!7097170 () Bool)

(assert (=> b!6275686 m!7097170))

(declare-fun m!7097172 () Bool)

(assert (=> b!6275686 m!7097172))

(declare-fun m!7097174 () Bool)

(assert (=> b!6275698 m!7097174))

(declare-fun m!7097176 () Bool)

(assert (=> b!6275684 m!7097176))

(declare-fun m!7097178 () Bool)

(assert (=> setNonEmpty!42689 m!7097178))

(declare-fun m!7097180 () Bool)

(assert (=> b!6275668 m!7097180))

(declare-fun m!7097182 () Bool)

(assert (=> b!6275668 m!7097182))

(declare-fun m!7097184 () Bool)

(assert (=> b!6275668 m!7097184))

(declare-fun m!7097186 () Bool)

(assert (=> b!6275668 m!7097186))

(declare-fun m!7097188 () Bool)

(assert (=> b!6275668 m!7097188))

(declare-fun m!7097190 () Bool)

(assert (=> b!6275668 m!7097190))

(declare-fun m!7097192 () Bool)

(assert (=> b!6275668 m!7097192))

(declare-fun m!7097194 () Bool)

(assert (=> b!6275690 m!7097194))

(declare-fun m!7097196 () Bool)

(assert (=> b!6275702 m!7097196))

(declare-fun m!7097198 () Bool)

(assert (=> b!6275702 m!7097198))

(declare-fun m!7097200 () Bool)

(assert (=> b!6275685 m!7097200))

(declare-fun m!7097202 () Bool)

(assert (=> b!6275685 m!7097202))

(declare-fun m!7097204 () Bool)

(assert (=> b!6275680 m!7097204))

(declare-fun m!7097206 () Bool)

(assert (=> b!6275680 m!7097206))

(declare-fun m!7097208 () Bool)

(assert (=> b!6275680 m!7097208))

(declare-fun m!7097210 () Bool)

(assert (=> b!6275680 m!7097210))

(declare-fun m!7097212 () Bool)

(assert (=> b!6275680 m!7097212))

(declare-fun m!7097214 () Bool)

(assert (=> b!6275680 m!7097214))

(declare-fun m!7097216 () Bool)

(assert (=> b!6275680 m!7097216))

(declare-fun m!7097218 () Bool)

(assert (=> b!6275680 m!7097218))

(declare-fun m!7097220 () Bool)

(assert (=> b!6275680 m!7097220))

(declare-fun m!7097222 () Bool)

(assert (=> b!6275680 m!7097222))

(declare-fun m!7097224 () Bool)

(assert (=> b!6275680 m!7097224))

(declare-fun m!7097226 () Bool)

(assert (=> b!6275682 m!7097226))

(assert (=> b!6275682 m!7097226))

(declare-fun m!7097228 () Bool)

(assert (=> b!6275682 m!7097228))

(declare-fun m!7097230 () Bool)

(assert (=> b!6275691 m!7097230))

(declare-fun m!7097232 () Bool)

(assert (=> b!6275692 m!7097232))

(declare-fun m!7097234 () Bool)

(assert (=> b!6275692 m!7097234))

(declare-fun m!7097236 () Bool)

(assert (=> b!6275692 m!7097236))

(declare-fun m!7097238 () Bool)

(assert (=> b!6275692 m!7097238))

(assert (=> b!6275692 m!7097238))

(declare-fun m!7097240 () Bool)

(assert (=> b!6275692 m!7097240))

(assert (=> b!6275692 m!7097234))

(declare-fun m!7097242 () Bool)

(assert (=> b!6275692 m!7097242))

(declare-fun m!7097244 () Bool)

(assert (=> b!6275669 m!7097244))

(declare-fun m!7097246 () Bool)

(assert (=> b!6275669 m!7097246))

(declare-fun m!7097248 () Bool)

(assert (=> b!6275669 m!7097248))

(declare-fun m!7097250 () Bool)

(assert (=> b!6275669 m!7097250))

(declare-fun m!7097252 () Bool)

(assert (=> b!6275669 m!7097252))

(assert (=> b!6275669 m!7097130))

(declare-fun m!7097254 () Bool)

(assert (=> b!6275676 m!7097254))

(assert (=> b!6275672 m!7097144))

(declare-fun m!7097256 () Bool)

(assert (=> b!6275674 m!7097256))

(declare-fun m!7097258 () Bool)

(assert (=> b!6275699 m!7097258))

(push 1)

(assert (not b!6275690))

(assert (not b!6275673))

(assert (not b!6275682))

(assert (not b!6275684))

(assert (not b!6275698))

(assert (not b!6275676))

(assert (not b!6275702))

(assert (not b!6275695))

(assert (not b!6275668))

(assert tp_is_empty!41641)

(assert (not b!6275699))

(assert (not b!6275692))

(assert (not b!6275669))

(assert (not b!6275703))

(assert (not b!6275674))

(assert (not b!6275681))

(assert (not b!6275697))

(assert (not b!6275680))

(assert (not b!6275683))

(assert (not b!6275694))

(assert (not b!6275686))

(assert (not b!6275687))

(assert (not b!6275672))

(assert (not start!623852))

(assert (not b!6275688))

(assert (not b!6275677))

(assert (not b!6275678))

(assert (not b!6275670))

(assert (not setNonEmpty!42689))

(assert (not b!6275685))

(assert (not b!6275696))

(assert (not b!6275693))

(assert (not b!6275689))

(assert (not b!6275679))

(assert (not b!6275691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1969943 () Bool)

(assert (=> d!1969943 (= (isEmpty!36796 (t!378443 zl!343)) (is-Nil!64759 (t!378443 zl!343)))))

(assert (=> b!6275691 d!1969943))

(declare-fun d!1969945 () Bool)

(declare-fun c!1137645 () Bool)

(declare-fun isEmpty!36800 (List!64881) Bool)

(assert (=> d!1969945 (= c!1137645 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816811 () Bool)

(assert (=> d!1969945 (= (matchZipper!2206 lt!2352911 (t!378441 s!2326)) e!3816811)))

(declare-fun b!6275844 () Bool)

(declare-fun nullableZipper!1964 ((Set Context!11156)) Bool)

(assert (=> b!6275844 (= e!3816811 (nullableZipper!1964 lt!2352911))))

(declare-fun b!6275845 () Bool)

(declare-fun head!12888 (List!64881) C!32658)

(declare-fun tail!11973 (List!64881) List!64881)

(assert (=> b!6275845 (= e!3816811 (matchZipper!2206 (derivationStepZipper!2160 lt!2352911 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969945 c!1137645) b!6275844))

(assert (= (and d!1969945 (not c!1137645)) b!6275845))

(declare-fun m!7097400 () Bool)

(assert (=> d!1969945 m!7097400))

(declare-fun m!7097402 () Bool)

(assert (=> b!6275844 m!7097402))

(declare-fun m!7097404 () Bool)

(assert (=> b!6275845 m!7097404))

(assert (=> b!6275845 m!7097404))

(declare-fun m!7097406 () Bool)

(assert (=> b!6275845 m!7097406))

(declare-fun m!7097408 () Bool)

(assert (=> b!6275845 m!7097408))

(assert (=> b!6275845 m!7097406))

(assert (=> b!6275845 m!7097408))

(declare-fun m!7097410 () Bool)

(assert (=> b!6275845 m!7097410))

(assert (=> b!6275672 d!1969945))

(declare-fun b!6275864 () Bool)

(declare-fun e!3816824 () Bool)

(declare-fun lt!2353060 () Option!16085)

(declare-fun ++!14268 (List!64881 List!64881) List!64881)

(declare-fun get!22381 (Option!16085) tuple2!66346)

(assert (=> b!6275864 (= e!3816824 (= (++!14268 (_1!36476 (get!22381 lt!2353060)) (_2!36476 (get!22381 lt!2353060))) s!2326))))

(declare-fun b!6275865 () Bool)

(declare-fun e!3816825 () Option!16085)

(assert (=> b!6275865 (= e!3816825 (Some!16084 (tuple2!66347 Nil!64757 s!2326)))))

(declare-fun b!6275867 () Bool)

(declare-fun e!3816822 () Option!16085)

(assert (=> b!6275867 (= e!3816822 None!16084)))

(declare-fun b!6275868 () Bool)

(assert (=> b!6275868 (= e!3816825 e!3816822)))

(declare-fun c!1137651 () Bool)

(assert (=> b!6275868 (= c!1137651 (is-Nil!64757 s!2326))))

(declare-fun b!6275869 () Bool)

(declare-fun res!2588509 () Bool)

(assert (=> b!6275869 (=> (not res!2588509) (not e!3816824))))

(assert (=> b!6275869 (= res!2588509 (matchR!8377 (regOne!32900 r!7292) (_1!36476 (get!22381 lt!2353060))))))

(declare-fun b!6275870 () Bool)

(declare-fun e!3816823 () Bool)

(assert (=> b!6275870 (= e!3816823 (not (isDefined!12788 lt!2353060)))))

(declare-fun b!6275871 () Bool)

(declare-fun res!2588510 () Bool)

(assert (=> b!6275871 (=> (not res!2588510) (not e!3816824))))

(assert (=> b!6275871 (= res!2588510 (matchR!8377 (regTwo!32900 r!7292) (_2!36476 (get!22381 lt!2353060))))))

(declare-fun b!6275872 () Bool)

(declare-fun lt!2353061 () Unit!158107)

(declare-fun lt!2353059 () Unit!158107)

(assert (=> b!6275872 (= lt!2353061 lt!2353059)))

(assert (=> b!6275872 (= (++!14268 (++!14268 Nil!64757 (Cons!64757 (h!71205 s!2326) Nil!64757)) (t!378441 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2363 (List!64881 C!32658 List!64881 List!64881) Unit!158107)

(assert (=> b!6275872 (= lt!2353059 (lemmaMoveElementToOtherListKeepsConcatEq!2363 Nil!64757 (h!71205 s!2326) (t!378441 s!2326) s!2326))))

(assert (=> b!6275872 (= e!3816822 (findConcatSeparation!2499 (regOne!32900 r!7292) (regTwo!32900 r!7292) (++!14268 Nil!64757 (Cons!64757 (h!71205 s!2326) Nil!64757)) (t!378441 s!2326) s!2326))))

(declare-fun b!6275866 () Bool)

(declare-fun e!3816826 () Bool)

(assert (=> b!6275866 (= e!3816826 (matchR!8377 (regTwo!32900 r!7292) s!2326))))

(declare-fun d!1969947 () Bool)

(assert (=> d!1969947 e!3816823))

(declare-fun res!2588512 () Bool)

(assert (=> d!1969947 (=> res!2588512 e!3816823)))

(assert (=> d!1969947 (= res!2588512 e!3816824)))

(declare-fun res!2588511 () Bool)

(assert (=> d!1969947 (=> (not res!2588511) (not e!3816824))))

(assert (=> d!1969947 (= res!2588511 (isDefined!12788 lt!2353060))))

(assert (=> d!1969947 (= lt!2353060 e!3816825)))

(declare-fun c!1137650 () Bool)

(assert (=> d!1969947 (= c!1137650 e!3816826)))

(declare-fun res!2588513 () Bool)

(assert (=> d!1969947 (=> (not res!2588513) (not e!3816826))))

(assert (=> d!1969947 (= res!2588513 (matchR!8377 (regOne!32900 r!7292) Nil!64757))))

(assert (=> d!1969947 (validRegex!7930 (regOne!32900 r!7292))))

(assert (=> d!1969947 (= (findConcatSeparation!2499 (regOne!32900 r!7292) (regTwo!32900 r!7292) Nil!64757 s!2326 s!2326) lt!2353060)))

(assert (= (and d!1969947 res!2588513) b!6275866))

(assert (= (and d!1969947 c!1137650) b!6275865))

(assert (= (and d!1969947 (not c!1137650)) b!6275868))

(assert (= (and b!6275868 c!1137651) b!6275867))

(assert (= (and b!6275868 (not c!1137651)) b!6275872))

(assert (= (and d!1969947 res!2588511) b!6275869))

(assert (= (and b!6275869 res!2588509) b!6275871))

(assert (= (and b!6275871 res!2588510) b!6275864))

(assert (= (and d!1969947 (not res!2588512)) b!6275870))

(declare-fun m!7097412 () Bool)

(assert (=> b!6275866 m!7097412))

(declare-fun m!7097414 () Bool)

(assert (=> b!6275869 m!7097414))

(declare-fun m!7097416 () Bool)

(assert (=> b!6275869 m!7097416))

(assert (=> b!6275871 m!7097414))

(declare-fun m!7097418 () Bool)

(assert (=> b!6275871 m!7097418))

(declare-fun m!7097420 () Bool)

(assert (=> b!6275872 m!7097420))

(assert (=> b!6275872 m!7097420))

(declare-fun m!7097422 () Bool)

(assert (=> b!6275872 m!7097422))

(declare-fun m!7097424 () Bool)

(assert (=> b!6275872 m!7097424))

(assert (=> b!6275872 m!7097420))

(declare-fun m!7097426 () Bool)

(assert (=> b!6275872 m!7097426))

(assert (=> b!6275864 m!7097414))

(declare-fun m!7097428 () Bool)

(assert (=> b!6275864 m!7097428))

(declare-fun m!7097430 () Bool)

(assert (=> b!6275870 m!7097430))

(assert (=> d!1969947 m!7097430))

(declare-fun m!7097432 () Bool)

(assert (=> d!1969947 m!7097432))

(declare-fun m!7097434 () Bool)

(assert (=> d!1969947 m!7097434))

(assert (=> b!6275692 d!1969947))

(declare-fun d!1969949 () Bool)

(declare-fun choose!46565 (Int) Bool)

(assert (=> d!1969949 (= (Exists!3264 lambda!343937) (choose!46565 lambda!343937))))

(declare-fun bs!1568076 () Bool)

(assert (= bs!1568076 d!1969949))

(declare-fun m!7097436 () Bool)

(assert (=> bs!1568076 m!7097436))

(assert (=> b!6275692 d!1969949))

(declare-fun d!1969951 () Bool)

(assert (=> d!1969951 (= (Exists!3264 lambda!343936) (choose!46565 lambda!343936))))

(declare-fun bs!1568077 () Bool)

(assert (= bs!1568077 d!1969951))

(declare-fun m!7097438 () Bool)

(assert (=> bs!1568077 m!7097438))

(assert (=> b!6275692 d!1969951))

(declare-fun bs!1568078 () Bool)

(declare-fun d!1969953 () Bool)

(assert (= bs!1568078 (and d!1969953 b!6275692)))

(declare-fun lambda!343956 () Int)

(assert (=> bs!1568078 (= lambda!343956 lambda!343936)))

(assert (=> bs!1568078 (not (= lambda!343956 lambda!343937))))

(assert (=> d!1969953 true))

(assert (=> d!1969953 true))

(assert (=> d!1969953 true))

(assert (=> d!1969953 (= (isDefined!12788 (findConcatSeparation!2499 (regOne!32900 r!7292) (regTwo!32900 r!7292) Nil!64757 s!2326 s!2326)) (Exists!3264 lambda!343956))))

(declare-fun lt!2353064 () Unit!158107)

(declare-fun choose!46566 (Regex!16194 Regex!16194 List!64881) Unit!158107)

(assert (=> d!1969953 (= lt!2353064 (choose!46566 (regOne!32900 r!7292) (regTwo!32900 r!7292) s!2326))))

(assert (=> d!1969953 (validRegex!7930 (regOne!32900 r!7292))))

(assert (=> d!1969953 (= (lemmaFindConcatSeparationEquivalentToExists!2263 (regOne!32900 r!7292) (regTwo!32900 r!7292) s!2326) lt!2353064)))

(declare-fun bs!1568079 () Bool)

(assert (= bs!1568079 d!1969953))

(declare-fun m!7097440 () Bool)

(assert (=> bs!1568079 m!7097440))

(assert (=> bs!1568079 m!7097234))

(assert (=> bs!1568079 m!7097236))

(assert (=> bs!1568079 m!7097234))

(assert (=> bs!1568079 m!7097434))

(declare-fun m!7097442 () Bool)

(assert (=> bs!1568079 m!7097442))

(assert (=> b!6275692 d!1969953))

(declare-fun bs!1568080 () Bool)

(declare-fun d!1969955 () Bool)

(assert (= bs!1568080 (and d!1969955 b!6275692)))

(declare-fun lambda!343961 () Int)

(assert (=> bs!1568080 (= lambda!343961 lambda!343936)))

(assert (=> bs!1568080 (not (= lambda!343961 lambda!343937))))

(declare-fun bs!1568081 () Bool)

(assert (= bs!1568081 (and d!1969955 d!1969953)))

(assert (=> bs!1568081 (= lambda!343961 lambda!343956)))

(assert (=> d!1969955 true))

(assert (=> d!1969955 true))

(assert (=> d!1969955 true))

(declare-fun lambda!343962 () Int)

(assert (=> bs!1568080 (not (= lambda!343962 lambda!343936))))

(assert (=> bs!1568080 (= lambda!343962 lambda!343937)))

(assert (=> bs!1568081 (not (= lambda!343962 lambda!343956))))

(declare-fun bs!1568082 () Bool)

(assert (= bs!1568082 d!1969955))

(assert (=> bs!1568082 (not (= lambda!343962 lambda!343961))))

(assert (=> d!1969955 true))

(assert (=> d!1969955 true))

(assert (=> d!1969955 true))

(assert (=> d!1969955 (= (Exists!3264 lambda!343961) (Exists!3264 lambda!343962))))

(declare-fun lt!2353067 () Unit!158107)

(declare-fun choose!46567 (Regex!16194 Regex!16194 List!64881) Unit!158107)

(assert (=> d!1969955 (= lt!2353067 (choose!46567 (regOne!32900 r!7292) (regTwo!32900 r!7292) s!2326))))

(assert (=> d!1969955 (validRegex!7930 (regOne!32900 r!7292))))

(assert (=> d!1969955 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1801 (regOne!32900 r!7292) (regTwo!32900 r!7292) s!2326) lt!2353067)))

(declare-fun m!7097444 () Bool)

(assert (=> bs!1568082 m!7097444))

(declare-fun m!7097446 () Bool)

(assert (=> bs!1568082 m!7097446))

(declare-fun m!7097448 () Bool)

(assert (=> bs!1568082 m!7097448))

(assert (=> bs!1568082 m!7097434))

(assert (=> b!6275692 d!1969955))

(declare-fun d!1969957 () Bool)

(declare-fun isEmpty!36801 (Option!16085) Bool)

(assert (=> d!1969957 (= (isDefined!12788 (findConcatSeparation!2499 (regOne!32900 r!7292) (regTwo!32900 r!7292) Nil!64757 s!2326 s!2326)) (not (isEmpty!36801 (findConcatSeparation!2499 (regOne!32900 r!7292) (regTwo!32900 r!7292) Nil!64757 s!2326 s!2326))))))

(declare-fun bs!1568083 () Bool)

(assert (= bs!1568083 d!1969957))

(assert (=> bs!1568083 m!7097234))

(declare-fun m!7097450 () Bool)

(assert (=> bs!1568083 m!7097450))

(assert (=> b!6275692 d!1969957))

(declare-fun d!1969959 () Bool)

(declare-fun c!1137652 () Bool)

(assert (=> d!1969959 (= c!1137652 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816833 () Bool)

(assert (=> d!1969959 (= (matchZipper!2206 lt!2352914 (t!378441 s!2326)) e!3816833)))

(declare-fun b!6275885 () Bool)

(assert (=> b!6275885 (= e!3816833 (nullableZipper!1964 lt!2352914))))

(declare-fun b!6275886 () Bool)

(assert (=> b!6275886 (= e!3816833 (matchZipper!2206 (derivationStepZipper!2160 lt!2352914 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969959 c!1137652) b!6275885))

(assert (= (and d!1969959 (not c!1137652)) b!6275886))

(assert (=> d!1969959 m!7097400))

(declare-fun m!7097452 () Bool)

(assert (=> b!6275885 m!7097452))

(assert (=> b!6275886 m!7097404))

(assert (=> b!6275886 m!7097404))

(declare-fun m!7097454 () Bool)

(assert (=> b!6275886 m!7097454))

(assert (=> b!6275886 m!7097408))

(assert (=> b!6275886 m!7097454))

(assert (=> b!6275886 m!7097408))

(declare-fun m!7097456 () Bool)

(assert (=> b!6275886 m!7097456))

(assert (=> b!6275674 d!1969959))

(declare-fun d!1969961 () Bool)

(declare-fun e!3816836 () Bool)

(assert (=> d!1969961 e!3816836))

(declare-fun res!2588528 () Bool)

(assert (=> d!1969961 (=> (not res!2588528) (not e!3816836))))

(declare-fun lt!2353070 () List!64883)

(declare-fun noDuplicate!2028 (List!64883) Bool)

(assert (=> d!1969961 (= res!2588528 (noDuplicate!2028 lt!2353070))))

(declare-fun choose!46568 ((Set Context!11156)) List!64883)

(assert (=> d!1969961 (= lt!2353070 (choose!46568 z!1189))))

(assert (=> d!1969961 (= (toList!9978 z!1189) lt!2353070)))

(declare-fun b!6275889 () Bool)

(declare-fun content!12169 (List!64883) (Set Context!11156))

(assert (=> b!6275889 (= e!3816836 (= (content!12169 lt!2353070) z!1189))))

(assert (= (and d!1969961 res!2588528) b!6275889))

(declare-fun m!7097458 () Bool)

(assert (=> d!1969961 m!7097458))

(declare-fun m!7097460 () Bool)

(assert (=> d!1969961 m!7097460))

(declare-fun m!7097462 () Bool)

(assert (=> b!6275889 m!7097462))

(assert (=> b!6275693 d!1969961))

(declare-fun d!1969963 () Bool)

(declare-fun c!1137653 () Bool)

(assert (=> d!1969963 (= c!1137653 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816837 () Bool)

(assert (=> d!1969963 (= (matchZipper!2206 (derivationStepZipper!2160 lt!2352931 (h!71205 s!2326)) (t!378441 s!2326)) e!3816837)))

(declare-fun b!6275890 () Bool)

(assert (=> b!6275890 (= e!3816837 (nullableZipper!1964 (derivationStepZipper!2160 lt!2352931 (h!71205 s!2326))))))

(declare-fun b!6275891 () Bool)

(assert (=> b!6275891 (= e!3816837 (matchZipper!2206 (derivationStepZipper!2160 (derivationStepZipper!2160 lt!2352931 (h!71205 s!2326)) (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969963 c!1137653) b!6275890))

(assert (= (and d!1969963 (not c!1137653)) b!6275891))

(assert (=> d!1969963 m!7097400))

(assert (=> b!6275890 m!7097152))

(declare-fun m!7097464 () Bool)

(assert (=> b!6275890 m!7097464))

(assert (=> b!6275891 m!7097404))

(assert (=> b!6275891 m!7097152))

(assert (=> b!6275891 m!7097404))

(declare-fun m!7097466 () Bool)

(assert (=> b!6275891 m!7097466))

(assert (=> b!6275891 m!7097408))

(assert (=> b!6275891 m!7097466))

(assert (=> b!6275891 m!7097408))

(declare-fun m!7097468 () Bool)

(assert (=> b!6275891 m!7097468))

(assert (=> b!6275673 d!1969963))

(declare-fun bs!1568084 () Bool)

(declare-fun d!1969965 () Bool)

(assert (= bs!1568084 (and d!1969965 b!6275668)))

(declare-fun lambda!343965 () Int)

(assert (=> bs!1568084 (= lambda!343965 lambda!343938)))

(assert (=> d!1969965 true))

(assert (=> d!1969965 (= (derivationStepZipper!2160 lt!2352931 (h!71205 s!2326)) (flatMap!1699 lt!2352931 lambda!343965))))

(declare-fun bs!1568085 () Bool)

(assert (= bs!1568085 d!1969965))

(declare-fun m!7097470 () Bool)

(assert (=> bs!1568085 m!7097470))

(assert (=> b!6275673 d!1969965))

(declare-fun d!1969967 () Bool)

(declare-fun e!3816840 () Bool)

(assert (=> d!1969967 (= (matchZipper!2206 (set.union lt!2352902 lt!2352914) (t!378441 s!2326)) e!3816840)))

(declare-fun res!2588531 () Bool)

(assert (=> d!1969967 (=> res!2588531 e!3816840)))

(assert (=> d!1969967 (= res!2588531 (matchZipper!2206 lt!2352902 (t!378441 s!2326)))))

(declare-fun lt!2353073 () Unit!158107)

(declare-fun choose!46569 ((Set Context!11156) (Set Context!11156) List!64881) Unit!158107)

(assert (=> d!1969967 (= lt!2353073 (choose!46569 lt!2352902 lt!2352914 (t!378441 s!2326)))))

(assert (=> d!1969967 (= (lemmaZipperConcatMatchesSameAsBothZippers!1025 lt!2352902 lt!2352914 (t!378441 s!2326)) lt!2353073)))

(declare-fun b!6275896 () Bool)

(assert (=> b!6275896 (= e!3816840 (matchZipper!2206 lt!2352914 (t!378441 s!2326)))))

(assert (= (and d!1969967 (not res!2588531)) b!6275896))

(assert (=> d!1969967 m!7097160))

(assert (=> d!1969967 m!7097134))

(declare-fun m!7097472 () Bool)

(assert (=> d!1969967 m!7097472))

(assert (=> b!6275896 m!7097256))

(assert (=> b!6275696 d!1969967))

(declare-fun d!1969969 () Bool)

(declare-fun c!1137656 () Bool)

(assert (=> d!1969969 (= c!1137656 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816841 () Bool)

(assert (=> d!1969969 (= (matchZipper!2206 lt!2352902 (t!378441 s!2326)) e!3816841)))

(declare-fun b!6275897 () Bool)

(assert (=> b!6275897 (= e!3816841 (nullableZipper!1964 lt!2352902))))

(declare-fun b!6275898 () Bool)

(assert (=> b!6275898 (= e!3816841 (matchZipper!2206 (derivationStepZipper!2160 lt!2352902 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969969 c!1137656) b!6275897))

(assert (= (and d!1969969 (not c!1137656)) b!6275898))

(assert (=> d!1969969 m!7097400))

(declare-fun m!7097474 () Bool)

(assert (=> b!6275897 m!7097474))

(assert (=> b!6275898 m!7097404))

(assert (=> b!6275898 m!7097404))

(declare-fun m!7097476 () Bool)

(assert (=> b!6275898 m!7097476))

(assert (=> b!6275898 m!7097408))

(assert (=> b!6275898 m!7097476))

(assert (=> b!6275898 m!7097408))

(declare-fun m!7097478 () Bool)

(assert (=> b!6275898 m!7097478))

(assert (=> b!6275696 d!1969969))

(declare-fun d!1969971 () Bool)

(declare-fun c!1137657 () Bool)

(assert (=> d!1969971 (= c!1137657 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816842 () Bool)

(assert (=> d!1969971 (= (matchZipper!2206 (set.union lt!2352902 lt!2352914) (t!378441 s!2326)) e!3816842)))

(declare-fun b!6275899 () Bool)

(assert (=> b!6275899 (= e!3816842 (nullableZipper!1964 (set.union lt!2352902 lt!2352914)))))

(declare-fun b!6275900 () Bool)

(assert (=> b!6275900 (= e!3816842 (matchZipper!2206 (derivationStepZipper!2160 (set.union lt!2352902 lt!2352914) (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969971 c!1137657) b!6275899))

(assert (= (and d!1969971 (not c!1137657)) b!6275900))

(assert (=> d!1969971 m!7097400))

(declare-fun m!7097480 () Bool)

(assert (=> b!6275899 m!7097480))

(assert (=> b!6275900 m!7097404))

(assert (=> b!6275900 m!7097404))

(declare-fun m!7097482 () Bool)

(assert (=> b!6275900 m!7097482))

(assert (=> b!6275900 m!7097408))

(assert (=> b!6275900 m!7097482))

(assert (=> b!6275900 m!7097408))

(declare-fun m!7097484 () Bool)

(assert (=> b!6275900 m!7097484))

(assert (=> b!6275696 d!1969971))

(declare-fun d!1969973 () Bool)

(declare-fun lambda!343968 () Int)

(declare-fun forall!15326 (List!64882 Int) Bool)

(assert (=> d!1969973 (= (inv!83733 setElem!42689) (forall!15326 (exprs!6078 setElem!42689) lambda!343968))))

(declare-fun bs!1568086 () Bool)

(assert (= bs!1568086 d!1969973))

(declare-fun m!7097486 () Bool)

(assert (=> bs!1568086 m!7097486))

(assert (=> setNonEmpty!42689 d!1969973))

(declare-fun b!6275907 () Bool)

(assert (=> b!6275907 true))

(declare-fun bs!1568087 () Bool)

(declare-fun b!6275909 () Bool)

(assert (= bs!1568087 (and b!6275909 b!6275907)))

(declare-fun lambda!343977 () Int)

(declare-fun lt!2353083 () Int)

(declare-fun lt!2353085 () Int)

(declare-fun lambda!343976 () Int)

(assert (=> bs!1568087 (= (= lt!2353083 lt!2353085) (= lambda!343977 lambda!343976))))

(assert (=> b!6275909 true))

(declare-fun d!1969975 () Bool)

(declare-fun e!3816847 () Bool)

(assert (=> d!1969975 e!3816847))

(declare-fun res!2588534 () Bool)

(assert (=> d!1969975 (=> (not res!2588534) (not e!3816847))))

(assert (=> d!1969975 (= res!2588534 (>= lt!2353083 0))))

(declare-fun e!3816848 () Int)

(assert (=> d!1969975 (= lt!2353083 e!3816848)))

(declare-fun c!1137666 () Bool)

(assert (=> d!1969975 (= c!1137666 (is-Cons!64759 lt!2352920))))

(assert (=> d!1969975 (= (zipperDepth!319 lt!2352920) lt!2353083)))

(assert (=> b!6275907 (= e!3816848 lt!2353085)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!212 (Context!11156) Int)

(assert (=> b!6275907 (= lt!2353085 (maxBigInt!0 (contextDepth!212 (h!71207 lt!2352920)) (zipperDepth!319 (t!378443 lt!2352920))))))

(declare-fun lambda!343975 () Int)

(declare-fun lt!2353082 () Unit!158107)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!196 (List!64883 Int Int Int) Unit!158107)

(assert (=> b!6275907 (= lt!2353082 (lemmaForallContextDepthBiggerThanTransitive!196 (t!378443 lt!2352920) lt!2353085 (zipperDepth!319 (t!378443 lt!2352920)) lambda!343975))))

(declare-fun forall!15327 (List!64883 Int) Bool)

(assert (=> b!6275907 (forall!15327 (t!378443 lt!2352920) lambda!343976)))

(declare-fun lt!2353084 () Unit!158107)

(assert (=> b!6275907 (= lt!2353084 lt!2353082)))

(declare-fun b!6275908 () Bool)

(assert (=> b!6275908 (= e!3816848 0)))

(assert (=> b!6275909 (= e!3816847 (forall!15327 lt!2352920 lambda!343977))))

(assert (= (and d!1969975 c!1137666) b!6275907))

(assert (= (and d!1969975 (not c!1137666)) b!6275908))

(assert (= (and d!1969975 res!2588534) b!6275909))

(declare-fun m!7097488 () Bool)

(assert (=> b!6275907 m!7097488))

(declare-fun m!7097490 () Bool)

(assert (=> b!6275907 m!7097490))

(declare-fun m!7097492 () Bool)

(assert (=> b!6275907 m!7097492))

(declare-fun m!7097494 () Bool)

(assert (=> b!6275907 m!7097494))

(assert (=> b!6275907 m!7097490))

(declare-fun m!7097496 () Bool)

(assert (=> b!6275907 m!7097496))

(assert (=> b!6275907 m!7097490))

(assert (=> b!6275907 m!7097488))

(declare-fun m!7097498 () Bool)

(assert (=> b!6275909 m!7097498))

(assert (=> b!6275677 d!1969975))

(declare-fun bs!1568088 () Bool)

(declare-fun b!6275912 () Bool)

(assert (= bs!1568088 (and b!6275912 b!6275907)))

(declare-fun lambda!343978 () Int)

(assert (=> bs!1568088 (= lambda!343978 lambda!343975)))

(declare-fun lambda!343979 () Int)

(declare-fun lt!2353089 () Int)

(assert (=> bs!1568088 (= (= lt!2353089 lt!2353085) (= lambda!343979 lambda!343976))))

(declare-fun bs!1568089 () Bool)

(assert (= bs!1568089 (and b!6275912 b!6275909)))

(assert (=> bs!1568089 (= (= lt!2353089 lt!2353083) (= lambda!343979 lambda!343977))))

(assert (=> b!6275912 true))

(declare-fun bs!1568090 () Bool)

(declare-fun b!6275914 () Bool)

(assert (= bs!1568090 (and b!6275914 b!6275907)))

(declare-fun lt!2353087 () Int)

(declare-fun lambda!343980 () Int)

(assert (=> bs!1568090 (= (= lt!2353087 lt!2353085) (= lambda!343980 lambda!343976))))

(declare-fun bs!1568091 () Bool)

(assert (= bs!1568091 (and b!6275914 b!6275909)))

(assert (=> bs!1568091 (= (= lt!2353087 lt!2353083) (= lambda!343980 lambda!343977))))

(declare-fun bs!1568092 () Bool)

(assert (= bs!1568092 (and b!6275914 b!6275912)))

(assert (=> bs!1568092 (= (= lt!2353087 lt!2353089) (= lambda!343980 lambda!343979))))

(assert (=> b!6275914 true))

(declare-fun d!1969977 () Bool)

(declare-fun e!3816849 () Bool)

(assert (=> d!1969977 e!3816849))

(declare-fun res!2588535 () Bool)

(assert (=> d!1969977 (=> (not res!2588535) (not e!3816849))))

(assert (=> d!1969977 (= res!2588535 (>= lt!2353087 0))))

(declare-fun e!3816850 () Int)

(assert (=> d!1969977 (= lt!2353087 e!3816850)))

(declare-fun c!1137667 () Bool)

(assert (=> d!1969977 (= c!1137667 (is-Cons!64759 zl!343))))

(assert (=> d!1969977 (= (zipperDepth!319 zl!343) lt!2353087)))

(assert (=> b!6275912 (= e!3816850 lt!2353089)))

(assert (=> b!6275912 (= lt!2353089 (maxBigInt!0 (contextDepth!212 (h!71207 zl!343)) (zipperDepth!319 (t!378443 zl!343))))))

(declare-fun lt!2353086 () Unit!158107)

(assert (=> b!6275912 (= lt!2353086 (lemmaForallContextDepthBiggerThanTransitive!196 (t!378443 zl!343) lt!2353089 (zipperDepth!319 (t!378443 zl!343)) lambda!343978))))

(assert (=> b!6275912 (forall!15327 (t!378443 zl!343) lambda!343979)))

(declare-fun lt!2353088 () Unit!158107)

(assert (=> b!6275912 (= lt!2353088 lt!2353086)))

(declare-fun b!6275913 () Bool)

(assert (=> b!6275913 (= e!3816850 0)))

(assert (=> b!6275914 (= e!3816849 (forall!15327 zl!343 lambda!343980))))

(assert (= (and d!1969977 c!1137667) b!6275912))

(assert (= (and d!1969977 (not c!1137667)) b!6275913))

(assert (= (and d!1969977 res!2588535) b!6275914))

(declare-fun m!7097500 () Bool)

(assert (=> b!6275912 m!7097500))

(declare-fun m!7097502 () Bool)

(assert (=> b!6275912 m!7097502))

(declare-fun m!7097504 () Bool)

(assert (=> b!6275912 m!7097504))

(declare-fun m!7097506 () Bool)

(assert (=> b!6275912 m!7097506))

(assert (=> b!6275912 m!7097502))

(declare-fun m!7097508 () Bool)

(assert (=> b!6275912 m!7097508))

(assert (=> b!6275912 m!7097502))

(assert (=> b!6275912 m!7097500))

(declare-fun m!7097510 () Bool)

(assert (=> b!6275914 m!7097510))

(assert (=> b!6275677 d!1969977))

(declare-fun bs!1568093 () Bool)

(declare-fun d!1969979 () Bool)

(assert (= bs!1568093 (and d!1969979 d!1969973)))

(declare-fun lambda!343983 () Int)

(assert (=> bs!1568093 (= lambda!343983 lambda!343968)))

(declare-fun b!6275935 () Bool)

(declare-fun e!3816863 () Regex!16194)

(assert (=> b!6275935 (= e!3816863 EmptyExpr!16194)))

(declare-fun b!6275936 () Bool)

(declare-fun e!3816865 () Bool)

(declare-fun e!3816867 () Bool)

(assert (=> b!6275936 (= e!3816865 e!3816867)))

(declare-fun c!1137678 () Bool)

(declare-fun tail!11974 (List!64882) List!64882)

(assert (=> b!6275936 (= c!1137678 (isEmpty!36797 (tail!11974 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6275938 () Bool)

(declare-fun e!3816866 () Bool)

(assert (=> b!6275938 (= e!3816866 (isEmpty!36797 (t!378442 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6275939 () Bool)

(assert (=> b!6275939 (= e!3816863 (Concat!25039 (h!71206 (exprs!6078 (h!71207 zl!343))) (generalisedConcat!1791 (t!378442 (exprs!6078 (h!71207 zl!343))))))))

(declare-fun b!6275940 () Bool)

(declare-fun e!3816868 () Regex!16194)

(assert (=> b!6275940 (= e!3816868 e!3816863)))

(declare-fun c!1137677 () Bool)

(assert (=> b!6275940 (= c!1137677 (is-Cons!64758 (exprs!6078 (h!71207 zl!343))))))

(declare-fun e!3816864 () Bool)

(assert (=> d!1969979 e!3816864))

(declare-fun res!2588541 () Bool)

(assert (=> d!1969979 (=> (not res!2588541) (not e!3816864))))

(declare-fun lt!2353092 () Regex!16194)

(assert (=> d!1969979 (= res!2588541 (validRegex!7930 lt!2353092))))

(assert (=> d!1969979 (= lt!2353092 e!3816868)))

(declare-fun c!1137679 () Bool)

(assert (=> d!1969979 (= c!1137679 e!3816866)))

(declare-fun res!2588540 () Bool)

(assert (=> d!1969979 (=> (not res!2588540) (not e!3816866))))

(assert (=> d!1969979 (= res!2588540 (is-Cons!64758 (exprs!6078 (h!71207 zl!343))))))

(assert (=> d!1969979 (forall!15326 (exprs!6078 (h!71207 zl!343)) lambda!343983)))

(assert (=> d!1969979 (= (generalisedConcat!1791 (exprs!6078 (h!71207 zl!343))) lt!2353092)))

(declare-fun b!6275937 () Bool)

(declare-fun head!12889 (List!64882) Regex!16194)

(assert (=> b!6275937 (= e!3816867 (= lt!2353092 (head!12889 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6275941 () Bool)

(assert (=> b!6275941 (= e!3816868 (h!71206 (exprs!6078 (h!71207 zl!343))))))

(declare-fun b!6275942 () Bool)

(assert (=> b!6275942 (= e!3816864 e!3816865)))

(declare-fun c!1137676 () Bool)

(assert (=> b!6275942 (= c!1137676 (isEmpty!36797 (exprs!6078 (h!71207 zl!343))))))

(declare-fun b!6275943 () Bool)

(declare-fun isEmptyExpr!1600 (Regex!16194) Bool)

(assert (=> b!6275943 (= e!3816865 (isEmptyExpr!1600 lt!2353092))))

(declare-fun b!6275944 () Bool)

(declare-fun isConcat!1123 (Regex!16194) Bool)

(assert (=> b!6275944 (= e!3816867 (isConcat!1123 lt!2353092))))

(assert (= (and d!1969979 res!2588540) b!6275938))

(assert (= (and d!1969979 c!1137679) b!6275941))

(assert (= (and d!1969979 (not c!1137679)) b!6275940))

(assert (= (and b!6275940 c!1137677) b!6275939))

(assert (= (and b!6275940 (not c!1137677)) b!6275935))

(assert (= (and d!1969979 res!2588541) b!6275942))

(assert (= (and b!6275942 c!1137676) b!6275943))

(assert (= (and b!6275942 (not c!1137676)) b!6275936))

(assert (= (and b!6275936 c!1137678) b!6275937))

(assert (= (and b!6275936 (not c!1137678)) b!6275944))

(declare-fun m!7097512 () Bool)

(assert (=> b!6275939 m!7097512))

(declare-fun m!7097514 () Bool)

(assert (=> b!6275944 m!7097514))

(declare-fun m!7097516 () Bool)

(assert (=> b!6275936 m!7097516))

(assert (=> b!6275936 m!7097516))

(declare-fun m!7097518 () Bool)

(assert (=> b!6275936 m!7097518))

(declare-fun m!7097520 () Bool)

(assert (=> b!6275943 m!7097520))

(declare-fun m!7097522 () Bool)

(assert (=> b!6275942 m!7097522))

(declare-fun m!7097524 () Bool)

(assert (=> b!6275937 m!7097524))

(assert (=> b!6275938 m!7097258))

(declare-fun m!7097526 () Bool)

(assert (=> d!1969979 m!7097526))

(declare-fun m!7097528 () Bool)

(assert (=> d!1969979 m!7097528))

(assert (=> b!6275697 d!1969979))

(declare-fun d!1969981 () Bool)

(declare-fun lt!2353095 () Regex!16194)

(assert (=> d!1969981 (validRegex!7930 lt!2353095)))

(assert (=> d!1969981 (= lt!2353095 (generalisedUnion!2038 (unfocusZipperList!1615 zl!343)))))

(assert (=> d!1969981 (= (unfocusZipper!1936 zl!343) lt!2353095)))

(declare-fun bs!1568094 () Bool)

(assert (= bs!1568094 d!1969981))

(declare-fun m!7097530 () Bool)

(assert (=> bs!1568094 m!7097530))

(assert (=> bs!1568094 m!7097226))

(assert (=> bs!1568094 m!7097226))

(assert (=> bs!1568094 m!7097228))

(assert (=> b!6275676 d!1969981))

(declare-fun d!1969983 () Bool)

(declare-fun c!1137680 () Bool)

(assert (=> d!1969983 (= c!1137680 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816869 () Bool)

(assert (=> d!1969983 (= (matchZipper!2206 lt!2352901 (t!378441 s!2326)) e!3816869)))

(declare-fun b!6275945 () Bool)

(assert (=> b!6275945 (= e!3816869 (nullableZipper!1964 lt!2352901))))

(declare-fun b!6275946 () Bool)

(assert (=> b!6275946 (= e!3816869 (matchZipper!2206 (derivationStepZipper!2160 lt!2352901 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969983 c!1137680) b!6275945))

(assert (= (and d!1969983 (not c!1137680)) b!6275946))

(assert (=> d!1969983 m!7097400))

(declare-fun m!7097532 () Bool)

(assert (=> b!6275945 m!7097532))

(assert (=> b!6275946 m!7097404))

(assert (=> b!6275946 m!7097404))

(declare-fun m!7097534 () Bool)

(assert (=> b!6275946 m!7097534))

(assert (=> b!6275946 m!7097408))

(assert (=> b!6275946 m!7097534))

(assert (=> b!6275946 m!7097408))

(declare-fun m!7097536 () Bool)

(assert (=> b!6275946 m!7097536))

(assert (=> b!6275698 d!1969983))

(declare-fun b!6275965 () Bool)

(declare-fun res!2588555 () Bool)

(declare-fun e!3816884 () Bool)

(assert (=> b!6275965 (=> (not res!2588555) (not e!3816884))))

(declare-fun call!531015 () Bool)

(assert (=> b!6275965 (= res!2588555 call!531015)))

(declare-fun e!3816887 () Bool)

(assert (=> b!6275965 (= e!3816887 e!3816884)))

(declare-fun b!6275966 () Bool)

(declare-fun res!2588553 () Bool)

(declare-fun e!3816888 () Bool)

(assert (=> b!6275966 (=> res!2588553 e!3816888)))

(assert (=> b!6275966 (= res!2588553 (not (is-Concat!25039 r!7292)))))

(assert (=> b!6275966 (= e!3816887 e!3816888)))

(declare-fun b!6275967 () Bool)

(declare-fun e!3816885 () Bool)

(declare-fun call!531016 () Bool)

(assert (=> b!6275967 (= e!3816885 call!531016)))

(declare-fun b!6275968 () Bool)

(assert (=> b!6275968 (= e!3816888 e!3816885)))

(declare-fun res!2588554 () Bool)

(assert (=> b!6275968 (=> (not res!2588554) (not e!3816885))))

(assert (=> b!6275968 (= res!2588554 call!531015)))

(declare-fun bm!531010 () Bool)

(declare-fun c!1137685 () Bool)

(assert (=> bm!531010 (= call!531015 (validRegex!7930 (ite c!1137685 (regOne!32901 r!7292) (regOne!32900 r!7292))))))

(declare-fun bm!531011 () Bool)

(declare-fun call!531017 () Bool)

(declare-fun c!1137686 () Bool)

(assert (=> bm!531011 (= call!531017 (validRegex!7930 (ite c!1137686 (reg!16523 r!7292) (ite c!1137685 (regTwo!32901 r!7292) (regTwo!32900 r!7292)))))))

(declare-fun b!6275969 () Bool)

(declare-fun e!3816890 () Bool)

(declare-fun e!3816889 () Bool)

(assert (=> b!6275969 (= e!3816890 e!3816889)))

(assert (=> b!6275969 (= c!1137686 (is-Star!16194 r!7292))))

(declare-fun b!6275971 () Bool)

(declare-fun e!3816886 () Bool)

(assert (=> b!6275971 (= e!3816886 call!531017)))

(declare-fun b!6275972 () Bool)

(assert (=> b!6275972 (= e!3816889 e!3816886)))

(declare-fun res!2588556 () Bool)

(assert (=> b!6275972 (= res!2588556 (not (nullable!6187 (reg!16523 r!7292))))))

(assert (=> b!6275972 (=> (not res!2588556) (not e!3816886))))

(declare-fun bm!531012 () Bool)

(assert (=> bm!531012 (= call!531016 call!531017)))

(declare-fun b!6275973 () Bool)

(assert (=> b!6275973 (= e!3816889 e!3816887)))

(assert (=> b!6275973 (= c!1137685 (is-Union!16194 r!7292))))

(declare-fun b!6275970 () Bool)

(assert (=> b!6275970 (= e!3816884 call!531016)))

(declare-fun d!1969985 () Bool)

(declare-fun res!2588552 () Bool)

(assert (=> d!1969985 (=> res!2588552 e!3816890)))

(assert (=> d!1969985 (= res!2588552 (is-ElementMatch!16194 r!7292))))

(assert (=> d!1969985 (= (validRegex!7930 r!7292) e!3816890)))

(assert (= (and d!1969985 (not res!2588552)) b!6275969))

(assert (= (and b!6275969 c!1137686) b!6275972))

(assert (= (and b!6275969 (not c!1137686)) b!6275973))

(assert (= (and b!6275972 res!2588556) b!6275971))

(assert (= (and b!6275973 c!1137685) b!6275965))

(assert (= (and b!6275973 (not c!1137685)) b!6275966))

(assert (= (and b!6275965 res!2588555) b!6275970))

(assert (= (and b!6275966 (not res!2588553)) b!6275968))

(assert (= (and b!6275968 res!2588554) b!6275967))

(assert (= (or b!6275970 b!6275967) bm!531012))

(assert (= (or b!6275965 b!6275968) bm!531010))

(assert (= (or b!6275971 bm!531012) bm!531011))

(declare-fun m!7097538 () Bool)

(assert (=> bm!531010 m!7097538))

(declare-fun m!7097540 () Bool)

(assert (=> bm!531011 m!7097540))

(declare-fun m!7097542 () Bool)

(assert (=> b!6275972 m!7097542))

(assert (=> start!623852 d!1969985))

(declare-fun d!1969987 () Bool)

(assert (=> d!1969987 (= (isEmpty!36797 (t!378442 (exprs!6078 (h!71207 zl!343)))) (is-Nil!64758 (t!378442 (exprs!6078 (h!71207 zl!343)))))))

(assert (=> b!6275699 d!1969987))

(assert (=> b!6275681 d!1969969))

(declare-fun d!1969989 () Bool)

(declare-fun c!1137687 () Bool)

(assert (=> d!1969989 (= c!1137687 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816891 () Bool)

(assert (=> d!1969989 (= (matchZipper!2206 lt!2352922 (t!378441 s!2326)) e!3816891)))

(declare-fun b!6275974 () Bool)

(assert (=> b!6275974 (= e!3816891 (nullableZipper!1964 lt!2352922))))

(declare-fun b!6275975 () Bool)

(assert (=> b!6275975 (= e!3816891 (matchZipper!2206 (derivationStepZipper!2160 lt!2352922 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969989 c!1137687) b!6275974))

(assert (= (and d!1969989 (not c!1137687)) b!6275975))

(assert (=> d!1969989 m!7097400))

(declare-fun m!7097544 () Bool)

(assert (=> b!6275974 m!7097544))

(assert (=> b!6275975 m!7097404))

(assert (=> b!6275975 m!7097404))

(declare-fun m!7097546 () Bool)

(assert (=> b!6275975 m!7097546))

(assert (=> b!6275975 m!7097408))

(assert (=> b!6275975 m!7097546))

(assert (=> b!6275975 m!7097408))

(declare-fun m!7097548 () Bool)

(assert (=> b!6275975 m!7097548))

(assert (=> b!6275681 d!1969989))

(declare-fun d!1969991 () Bool)

(declare-fun c!1137688 () Bool)

(assert (=> d!1969991 (= c!1137688 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3816892 () Bool)

(assert (=> d!1969991 (= (matchZipper!2206 lt!2352918 (t!378441 s!2326)) e!3816892)))

(declare-fun b!6275976 () Bool)

(assert (=> b!6275976 (= e!3816892 (nullableZipper!1964 lt!2352918))))

(declare-fun b!6275977 () Bool)

(assert (=> b!6275977 (= e!3816892 (matchZipper!2206 (derivationStepZipper!2160 lt!2352918 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1969991 c!1137688) b!6275976))

(assert (= (and d!1969991 (not c!1137688)) b!6275977))

(assert (=> d!1969991 m!7097400))

(declare-fun m!7097550 () Bool)

(assert (=> b!6275976 m!7097550))

(assert (=> b!6275977 m!7097404))

(assert (=> b!6275977 m!7097404))

(declare-fun m!7097552 () Bool)

(assert (=> b!6275977 m!7097552))

(assert (=> b!6275977 m!7097408))

(assert (=> b!6275977 m!7097552))

(assert (=> b!6275977 m!7097408))

(declare-fun m!7097554 () Bool)

(assert (=> b!6275977 m!7097554))

(assert (=> b!6275681 d!1969991))

(declare-fun d!1969993 () Bool)

(declare-fun e!3816893 () Bool)

(assert (=> d!1969993 (= (matchZipper!2206 (set.union lt!2352918 lt!2352911) (t!378441 s!2326)) e!3816893)))

(declare-fun res!2588557 () Bool)

(assert (=> d!1969993 (=> res!2588557 e!3816893)))

(assert (=> d!1969993 (= res!2588557 (matchZipper!2206 lt!2352918 (t!378441 s!2326)))))

(declare-fun lt!2353096 () Unit!158107)

(assert (=> d!1969993 (= lt!2353096 (choose!46569 lt!2352918 lt!2352911 (t!378441 s!2326)))))

(assert (=> d!1969993 (= (lemmaZipperConcatMatchesSameAsBothZippers!1025 lt!2352918 lt!2352911 (t!378441 s!2326)) lt!2353096)))

(declare-fun b!6275978 () Bool)

(assert (=> b!6275978 (= e!3816893 (matchZipper!2206 lt!2352911 (t!378441 s!2326)))))

(assert (= (and d!1969993 (not res!2588557)) b!6275978))

(declare-fun m!7097556 () Bool)

(assert (=> d!1969993 m!7097556))

(assert (=> d!1969993 m!7097138))

(declare-fun m!7097558 () Bool)

(assert (=> d!1969993 m!7097558))

(assert (=> b!6275978 m!7097144))

(assert (=> b!6275681 d!1969993))

(declare-fun d!1969995 () Bool)

(assert (=> d!1969995 (= (matchR!8377 lt!2352908 s!2326) (matchRSpec!3295 lt!2352908 s!2326))))

(declare-fun lt!2353099 () Unit!158107)

(declare-fun choose!46570 (Regex!16194 List!64881) Unit!158107)

(assert (=> d!1969995 (= lt!2353099 (choose!46570 lt!2352908 s!2326))))

(assert (=> d!1969995 (validRegex!7930 lt!2352908)))

(assert (=> d!1969995 (= (mainMatchTheorem!3295 lt!2352908 s!2326) lt!2353099)))

(declare-fun bs!1568095 () Bool)

(assert (= bs!1568095 d!1969995))

(assert (=> bs!1568095 m!7097222))

(assert (=> bs!1568095 m!7097208))

(declare-fun m!7097560 () Bool)

(assert (=> bs!1568095 m!7097560))

(declare-fun m!7097562 () Bool)

(assert (=> bs!1568095 m!7097562))

(assert (=> b!6275680 d!1969995))

(declare-fun bs!1568096 () Bool)

(declare-fun d!1969997 () Bool)

(assert (= bs!1568096 (and d!1969997 d!1969973)))

(declare-fun lambda!343984 () Int)

(assert (=> bs!1568096 (= lambda!343984 lambda!343968)))

(declare-fun bs!1568097 () Bool)

(assert (= bs!1568097 (and d!1969997 d!1969979)))

(assert (=> bs!1568097 (= lambda!343984 lambda!343983)))

(declare-fun b!6275979 () Bool)

(declare-fun e!3816894 () Regex!16194)

(assert (=> b!6275979 (= e!3816894 EmptyExpr!16194)))

(declare-fun b!6275980 () Bool)

(declare-fun e!3816896 () Bool)

(declare-fun e!3816898 () Bool)

(assert (=> b!6275980 (= e!3816896 e!3816898)))

(declare-fun c!1137691 () Bool)

(assert (=> b!6275980 (= c!1137691 (isEmpty!36797 (tail!11974 lt!2352910)))))

(declare-fun b!6275982 () Bool)

(declare-fun e!3816897 () Bool)

(assert (=> b!6275982 (= e!3816897 (isEmpty!36797 (t!378442 lt!2352910)))))

(declare-fun b!6275983 () Bool)

(assert (=> b!6275983 (= e!3816894 (Concat!25039 (h!71206 lt!2352910) (generalisedConcat!1791 (t!378442 lt!2352910))))))

(declare-fun b!6275984 () Bool)

(declare-fun e!3816899 () Regex!16194)

(assert (=> b!6275984 (= e!3816899 e!3816894)))

(declare-fun c!1137690 () Bool)

(assert (=> b!6275984 (= c!1137690 (is-Cons!64758 lt!2352910))))

(declare-fun e!3816895 () Bool)

(assert (=> d!1969997 e!3816895))

(declare-fun res!2588559 () Bool)

(assert (=> d!1969997 (=> (not res!2588559) (not e!3816895))))

(declare-fun lt!2353100 () Regex!16194)

(assert (=> d!1969997 (= res!2588559 (validRegex!7930 lt!2353100))))

(assert (=> d!1969997 (= lt!2353100 e!3816899)))

(declare-fun c!1137692 () Bool)

(assert (=> d!1969997 (= c!1137692 e!3816897)))

(declare-fun res!2588558 () Bool)

(assert (=> d!1969997 (=> (not res!2588558) (not e!3816897))))

(assert (=> d!1969997 (= res!2588558 (is-Cons!64758 lt!2352910))))

(assert (=> d!1969997 (forall!15326 lt!2352910 lambda!343984)))

(assert (=> d!1969997 (= (generalisedConcat!1791 lt!2352910) lt!2353100)))

(declare-fun b!6275981 () Bool)

(assert (=> b!6275981 (= e!3816898 (= lt!2353100 (head!12889 lt!2352910)))))

(declare-fun b!6275985 () Bool)

(assert (=> b!6275985 (= e!3816899 (h!71206 lt!2352910))))

(declare-fun b!6275986 () Bool)

(assert (=> b!6275986 (= e!3816895 e!3816896)))

(declare-fun c!1137689 () Bool)

(assert (=> b!6275986 (= c!1137689 (isEmpty!36797 lt!2352910))))

(declare-fun b!6275987 () Bool)

(assert (=> b!6275987 (= e!3816896 (isEmptyExpr!1600 lt!2353100))))

(declare-fun b!6275988 () Bool)

(assert (=> b!6275988 (= e!3816898 (isConcat!1123 lt!2353100))))

(assert (= (and d!1969997 res!2588558) b!6275982))

(assert (= (and d!1969997 c!1137692) b!6275985))

(assert (= (and d!1969997 (not c!1137692)) b!6275984))

(assert (= (and b!6275984 c!1137690) b!6275983))

(assert (= (and b!6275984 (not c!1137690)) b!6275979))

(assert (= (and d!1969997 res!2588559) b!6275986))

(assert (= (and b!6275986 c!1137689) b!6275987))

(assert (= (and b!6275986 (not c!1137689)) b!6275980))

(assert (= (and b!6275980 c!1137691) b!6275981))

(assert (= (and b!6275980 (not c!1137691)) b!6275988))

(declare-fun m!7097564 () Bool)

(assert (=> b!6275983 m!7097564))

(declare-fun m!7097566 () Bool)

(assert (=> b!6275988 m!7097566))

(declare-fun m!7097568 () Bool)

(assert (=> b!6275980 m!7097568))

(assert (=> b!6275980 m!7097568))

(declare-fun m!7097570 () Bool)

(assert (=> b!6275980 m!7097570))

(declare-fun m!7097572 () Bool)

(assert (=> b!6275987 m!7097572))

(declare-fun m!7097574 () Bool)

(assert (=> b!6275986 m!7097574))

(declare-fun m!7097576 () Bool)

(assert (=> b!6275981 m!7097576))

(declare-fun m!7097578 () Bool)

(assert (=> b!6275982 m!7097578))

(declare-fun m!7097580 () Bool)

(assert (=> d!1969997 m!7097580))

(declare-fun m!7097582 () Bool)

(assert (=> d!1969997 m!7097582))

(assert (=> b!6275680 d!1969997))

(declare-fun d!1969999 () Bool)

(declare-fun c!1137693 () Bool)

(assert (=> d!1969999 (= c!1137693 (isEmpty!36800 s!2326))))

(declare-fun e!3816900 () Bool)

(assert (=> d!1969999 (= (matchZipper!2206 lt!2352931 s!2326) e!3816900)))

(declare-fun b!6275989 () Bool)

(assert (=> b!6275989 (= e!3816900 (nullableZipper!1964 lt!2352931))))

(declare-fun b!6275990 () Bool)

(assert (=> b!6275990 (= e!3816900 (matchZipper!2206 (derivationStepZipper!2160 lt!2352931 (head!12888 s!2326)) (tail!11973 s!2326)))))

(assert (= (and d!1969999 c!1137693) b!6275989))

(assert (= (and d!1969999 (not c!1137693)) b!6275990))

(declare-fun m!7097584 () Bool)

(assert (=> d!1969999 m!7097584))

(declare-fun m!7097586 () Bool)

(assert (=> b!6275989 m!7097586))

(declare-fun m!7097588 () Bool)

(assert (=> b!6275990 m!7097588))

(assert (=> b!6275990 m!7097588))

(declare-fun m!7097590 () Bool)

(assert (=> b!6275990 m!7097590))

(declare-fun m!7097592 () Bool)

(assert (=> b!6275990 m!7097592))

(assert (=> b!6275990 m!7097590))

(assert (=> b!6275990 m!7097592))

(declare-fun m!7097594 () Bool)

(assert (=> b!6275990 m!7097594))

(assert (=> b!6275680 d!1969999))

(declare-fun bs!1568098 () Bool)

(declare-fun d!1970001 () Bool)

(assert (= bs!1568098 (and d!1970001 d!1969973)))

(declare-fun lambda!343985 () Int)

(assert (=> bs!1568098 (= lambda!343985 lambda!343968)))

(declare-fun bs!1568099 () Bool)

(assert (= bs!1568099 (and d!1970001 d!1969979)))

(assert (=> bs!1568099 (= lambda!343985 lambda!343983)))

(declare-fun bs!1568100 () Bool)

(assert (= bs!1568100 (and d!1970001 d!1969997)))

(assert (=> bs!1568100 (= lambda!343985 lambda!343984)))

(declare-fun b!6275991 () Bool)

(declare-fun e!3816901 () Regex!16194)

(assert (=> b!6275991 (= e!3816901 EmptyExpr!16194)))

(declare-fun b!6275992 () Bool)

(declare-fun e!3816903 () Bool)

(declare-fun e!3816905 () Bool)

(assert (=> b!6275992 (= e!3816903 e!3816905)))

(declare-fun c!1137696 () Bool)

(assert (=> b!6275992 (= c!1137696 (isEmpty!36797 (tail!11974 lt!2352909)))))

(declare-fun b!6275994 () Bool)

(declare-fun e!3816904 () Bool)

(assert (=> b!6275994 (= e!3816904 (isEmpty!36797 (t!378442 lt!2352909)))))

(declare-fun b!6275995 () Bool)

(assert (=> b!6275995 (= e!3816901 (Concat!25039 (h!71206 lt!2352909) (generalisedConcat!1791 (t!378442 lt!2352909))))))

(declare-fun b!6275996 () Bool)

(declare-fun e!3816906 () Regex!16194)

(assert (=> b!6275996 (= e!3816906 e!3816901)))

(declare-fun c!1137695 () Bool)

(assert (=> b!6275996 (= c!1137695 (is-Cons!64758 lt!2352909))))

(declare-fun e!3816902 () Bool)

(assert (=> d!1970001 e!3816902))

(declare-fun res!2588561 () Bool)

(assert (=> d!1970001 (=> (not res!2588561) (not e!3816902))))

(declare-fun lt!2353101 () Regex!16194)

(assert (=> d!1970001 (= res!2588561 (validRegex!7930 lt!2353101))))

(assert (=> d!1970001 (= lt!2353101 e!3816906)))

(declare-fun c!1137697 () Bool)

(assert (=> d!1970001 (= c!1137697 e!3816904)))

(declare-fun res!2588560 () Bool)

(assert (=> d!1970001 (=> (not res!2588560) (not e!3816904))))

(assert (=> d!1970001 (= res!2588560 (is-Cons!64758 lt!2352909))))

(assert (=> d!1970001 (forall!15326 lt!2352909 lambda!343985)))

(assert (=> d!1970001 (= (generalisedConcat!1791 lt!2352909) lt!2353101)))

(declare-fun b!6275993 () Bool)

(assert (=> b!6275993 (= e!3816905 (= lt!2353101 (head!12889 lt!2352909)))))

(declare-fun b!6275997 () Bool)

(assert (=> b!6275997 (= e!3816906 (h!71206 lt!2352909))))

(declare-fun b!6275998 () Bool)

(assert (=> b!6275998 (= e!3816902 e!3816903)))

(declare-fun c!1137694 () Bool)

(assert (=> b!6275998 (= c!1137694 (isEmpty!36797 lt!2352909))))

(declare-fun b!6275999 () Bool)

(assert (=> b!6275999 (= e!3816903 (isEmptyExpr!1600 lt!2353101))))

(declare-fun b!6276000 () Bool)

(assert (=> b!6276000 (= e!3816905 (isConcat!1123 lt!2353101))))

(assert (= (and d!1970001 res!2588560) b!6275994))

(assert (= (and d!1970001 c!1137697) b!6275997))

(assert (= (and d!1970001 (not c!1137697)) b!6275996))

(assert (= (and b!6275996 c!1137695) b!6275995))

(assert (= (and b!6275996 (not c!1137695)) b!6275991))

(assert (= (and d!1970001 res!2588561) b!6275998))

(assert (= (and b!6275998 c!1137694) b!6275999))

(assert (= (and b!6275998 (not c!1137694)) b!6275992))

(assert (= (and b!6275992 c!1137696) b!6275993))

(assert (= (and b!6275992 (not c!1137696)) b!6276000))

(declare-fun m!7097596 () Bool)

(assert (=> b!6275995 m!7097596))

(declare-fun m!7097598 () Bool)

(assert (=> b!6276000 m!7097598))

(declare-fun m!7097600 () Bool)

(assert (=> b!6275992 m!7097600))

(assert (=> b!6275992 m!7097600))

(declare-fun m!7097602 () Bool)

(assert (=> b!6275992 m!7097602))

(declare-fun m!7097604 () Bool)

(assert (=> b!6275999 m!7097604))

(declare-fun m!7097606 () Bool)

(assert (=> b!6275998 m!7097606))

(declare-fun m!7097608 () Bool)

(assert (=> b!6275993 m!7097608))

(declare-fun m!7097610 () Bool)

(assert (=> b!6275994 m!7097610))

(declare-fun m!7097612 () Bool)

(assert (=> d!1970001 m!7097612))

(declare-fun m!7097614 () Bool)

(assert (=> d!1970001 m!7097614))

(assert (=> b!6275680 d!1970001))

(declare-fun d!1970003 () Bool)

(declare-fun e!3816921 () Bool)

(assert (=> d!1970003 e!3816921))

(declare-fun c!1137706 () Bool)

(assert (=> d!1970003 (= c!1137706 (is-EmptyExpr!16194 lt!2352908))))

(declare-fun lt!2353104 () Bool)

(declare-fun e!3816922 () Bool)

(assert (=> d!1970003 (= lt!2353104 e!3816922)))

(declare-fun c!1137704 () Bool)

(assert (=> d!1970003 (= c!1137704 (isEmpty!36800 s!2326))))

(assert (=> d!1970003 (validRegex!7930 lt!2352908)))

(assert (=> d!1970003 (= (matchR!8377 lt!2352908 s!2326) lt!2353104)))

(declare-fun b!6276029 () Bool)

(declare-fun e!3816923 () Bool)

(declare-fun e!3816925 () Bool)

(assert (=> b!6276029 (= e!3816923 e!3816925)))

(declare-fun res!2588579 () Bool)

(assert (=> b!6276029 (=> (not res!2588579) (not e!3816925))))

(assert (=> b!6276029 (= res!2588579 (not lt!2353104))))

(declare-fun bm!531015 () Bool)

(declare-fun call!531020 () Bool)

(assert (=> bm!531015 (= call!531020 (isEmpty!36800 s!2326))))

(declare-fun b!6276030 () Bool)

(declare-fun res!2588580 () Bool)

(declare-fun e!3816924 () Bool)

(assert (=> b!6276030 (=> (not res!2588580) (not e!3816924))))

(assert (=> b!6276030 (= res!2588580 (isEmpty!36800 (tail!11973 s!2326)))))

(declare-fun b!6276031 () Bool)

(declare-fun e!3816927 () Bool)

(assert (=> b!6276031 (= e!3816921 e!3816927)))

(declare-fun c!1137705 () Bool)

(assert (=> b!6276031 (= c!1137705 (is-EmptyLang!16194 lt!2352908))))

(declare-fun b!6276032 () Bool)

(declare-fun res!2588584 () Bool)

(declare-fun e!3816926 () Bool)

(assert (=> b!6276032 (=> res!2588584 e!3816926)))

(assert (=> b!6276032 (= res!2588584 (not (isEmpty!36800 (tail!11973 s!2326))))))

(declare-fun b!6276033 () Bool)

(assert (=> b!6276033 (= e!3816926 (not (= (head!12888 s!2326) (c!1137631 lt!2352908))))))

(declare-fun b!6276034 () Bool)

(declare-fun derivativeStep!4903 (Regex!16194 C!32658) Regex!16194)

(assert (=> b!6276034 (= e!3816922 (matchR!8377 (derivativeStep!4903 lt!2352908 (head!12888 s!2326)) (tail!11973 s!2326)))))

(declare-fun b!6276035 () Bool)

(assert (=> b!6276035 (= e!3816927 (not lt!2353104))))

(declare-fun b!6276036 () Bool)

(assert (=> b!6276036 (= e!3816922 (nullable!6187 lt!2352908))))

(declare-fun b!6276037 () Bool)

(declare-fun res!2588581 () Bool)

(assert (=> b!6276037 (=> res!2588581 e!3816923)))

(assert (=> b!6276037 (= res!2588581 (not (is-ElementMatch!16194 lt!2352908)))))

(assert (=> b!6276037 (= e!3816927 e!3816923)))

(declare-fun b!6276038 () Bool)

(declare-fun res!2588585 () Bool)

(assert (=> b!6276038 (=> (not res!2588585) (not e!3816924))))

(assert (=> b!6276038 (= res!2588585 (not call!531020))))

(declare-fun b!6276039 () Bool)

(assert (=> b!6276039 (= e!3816924 (= (head!12888 s!2326) (c!1137631 lt!2352908)))))

(declare-fun b!6276040 () Bool)

(declare-fun res!2588583 () Bool)

(assert (=> b!6276040 (=> res!2588583 e!3816923)))

(assert (=> b!6276040 (= res!2588583 e!3816924)))

(declare-fun res!2588578 () Bool)

(assert (=> b!6276040 (=> (not res!2588578) (not e!3816924))))

(assert (=> b!6276040 (= res!2588578 lt!2353104)))

(declare-fun b!6276041 () Bool)

(assert (=> b!6276041 (= e!3816925 e!3816926)))

(declare-fun res!2588582 () Bool)

(assert (=> b!6276041 (=> res!2588582 e!3816926)))

(assert (=> b!6276041 (= res!2588582 call!531020)))

(declare-fun b!6276042 () Bool)

(assert (=> b!6276042 (= e!3816921 (= lt!2353104 call!531020))))

(assert (= (and d!1970003 c!1137704) b!6276036))

(assert (= (and d!1970003 (not c!1137704)) b!6276034))

(assert (= (and d!1970003 c!1137706) b!6276042))

(assert (= (and d!1970003 (not c!1137706)) b!6276031))

(assert (= (and b!6276031 c!1137705) b!6276035))

(assert (= (and b!6276031 (not c!1137705)) b!6276037))

(assert (= (and b!6276037 (not res!2588581)) b!6276040))

(assert (= (and b!6276040 res!2588578) b!6276038))

(assert (= (and b!6276038 res!2588585) b!6276030))

(assert (= (and b!6276030 res!2588580) b!6276039))

(assert (= (and b!6276040 (not res!2588583)) b!6276029))

(assert (= (and b!6276029 res!2588579) b!6276041))

(assert (= (and b!6276041 (not res!2588582)) b!6276032))

(assert (= (and b!6276032 (not res!2588584)) b!6276033))

(assert (= (or b!6276042 b!6276041 b!6276038) bm!531015))

(declare-fun m!7097616 () Bool)

(assert (=> b!6276036 m!7097616))

(assert (=> b!6276034 m!7097588))

(assert (=> b!6276034 m!7097588))

(declare-fun m!7097618 () Bool)

(assert (=> b!6276034 m!7097618))

(assert (=> b!6276034 m!7097592))

(assert (=> b!6276034 m!7097618))

(assert (=> b!6276034 m!7097592))

(declare-fun m!7097620 () Bool)

(assert (=> b!6276034 m!7097620))

(assert (=> b!6276039 m!7097588))

(assert (=> d!1970003 m!7097584))

(assert (=> d!1970003 m!7097562))

(assert (=> b!6276033 m!7097588))

(assert (=> bm!531015 m!7097584))

(assert (=> b!6276030 m!7097592))

(assert (=> b!6276030 m!7097592))

(declare-fun m!7097622 () Bool)

(assert (=> b!6276030 m!7097622))

(assert (=> b!6276032 m!7097592))

(assert (=> b!6276032 m!7097592))

(assert (=> b!6276032 m!7097622))

(assert (=> b!6275680 d!1970003))

(declare-fun d!1970005 () Bool)

(assert (=> d!1970005 (= (matchR!8377 lt!2352908 s!2326) (matchZipper!2206 lt!2352938 s!2326))))

(declare-fun lt!2353107 () Unit!158107)

(declare-fun choose!46571 ((Set Context!11156) List!64883 Regex!16194 List!64881) Unit!158107)

(assert (=> d!1970005 (= lt!2353107 (choose!46571 lt!2352938 lt!2352920 lt!2352908 s!2326))))

(assert (=> d!1970005 (validRegex!7930 lt!2352908)))

(assert (=> d!1970005 (= (theoremZipperRegexEquiv!764 lt!2352938 lt!2352920 lt!2352908 s!2326) lt!2353107)))

(declare-fun bs!1568101 () Bool)

(assert (= bs!1568101 d!1970005))

(assert (=> bs!1568101 m!7097222))

(assert (=> bs!1568101 m!7097204))

(declare-fun m!7097624 () Bool)

(assert (=> bs!1568101 m!7097624))

(assert (=> bs!1568101 m!7097562))

(assert (=> b!6275680 d!1970005))

(declare-fun bs!1568102 () Bool)

(declare-fun b!6276081 () Bool)

(assert (= bs!1568102 (and b!6276081 b!6275692)))

(declare-fun lambda!343990 () Int)

(assert (=> bs!1568102 (not (= lambda!343990 lambda!343936))))

(assert (=> bs!1568102 (not (= lambda!343990 lambda!343937))))

(declare-fun bs!1568103 () Bool)

(assert (= bs!1568103 (and b!6276081 d!1969955)))

(assert (=> bs!1568103 (not (= lambda!343990 lambda!343961))))

(assert (=> bs!1568103 (not (= lambda!343990 lambda!343962))))

(declare-fun bs!1568104 () Bool)

(assert (= bs!1568104 (and b!6276081 d!1969953)))

(assert (=> bs!1568104 (not (= lambda!343990 lambda!343956))))

(assert (=> b!6276081 true))

(assert (=> b!6276081 true))

(declare-fun bs!1568105 () Bool)

(declare-fun b!6276078 () Bool)

(assert (= bs!1568105 (and b!6276078 b!6276081)))

(declare-fun lambda!343991 () Int)

(assert (=> bs!1568105 (not (= lambda!343991 lambda!343990))))

(declare-fun bs!1568106 () Bool)

(assert (= bs!1568106 (and b!6276078 b!6275692)))

(assert (=> bs!1568106 (not (= lambda!343991 lambda!343936))))

(assert (=> bs!1568106 (= (and (= (regOne!32900 lt!2352908) (regOne!32900 r!7292)) (= (regTwo!32900 lt!2352908) (regTwo!32900 r!7292))) (= lambda!343991 lambda!343937))))

(declare-fun bs!1568107 () Bool)

(assert (= bs!1568107 (and b!6276078 d!1969955)))

(assert (=> bs!1568107 (not (= lambda!343991 lambda!343961))))

(assert (=> bs!1568107 (= (and (= (regOne!32900 lt!2352908) (regOne!32900 r!7292)) (= (regTwo!32900 lt!2352908) (regTwo!32900 r!7292))) (= lambda!343991 lambda!343962))))

(declare-fun bs!1568108 () Bool)

(assert (= bs!1568108 (and b!6276078 d!1969953)))

(assert (=> bs!1568108 (not (= lambda!343991 lambda!343956))))

(assert (=> b!6276078 true))

(assert (=> b!6276078 true))

(declare-fun b!6276075 () Bool)

(declare-fun res!2588603 () Bool)

(declare-fun e!3816946 () Bool)

(assert (=> b!6276075 (=> res!2588603 e!3816946)))

(declare-fun call!531026 () Bool)

(assert (=> b!6276075 (= res!2588603 call!531026)))

(declare-fun e!3816947 () Bool)

(assert (=> b!6276075 (= e!3816947 e!3816946)))

(declare-fun b!6276076 () Bool)

(declare-fun e!3816952 () Bool)

(assert (=> b!6276076 (= e!3816952 e!3816947)))

(declare-fun c!1137718 () Bool)

(assert (=> b!6276076 (= c!1137718 (is-Star!16194 lt!2352908))))

(declare-fun b!6276077 () Bool)

(declare-fun e!3816951 () Bool)

(declare-fun e!3816949 () Bool)

(assert (=> b!6276077 (= e!3816951 e!3816949)))

(declare-fun res!2588602 () Bool)

(assert (=> b!6276077 (= res!2588602 (not (is-EmptyLang!16194 lt!2352908)))))

(assert (=> b!6276077 (=> (not res!2588602) (not e!3816949))))

(declare-fun call!531025 () Bool)

(assert (=> b!6276078 (= e!3816947 call!531025)))

(declare-fun bm!531020 () Bool)

(assert (=> bm!531020 (= call!531025 (Exists!3264 (ite c!1137718 lambda!343990 lambda!343991)))))

(declare-fun b!6276079 () Bool)

(declare-fun e!3816948 () Bool)

(assert (=> b!6276079 (= e!3816948 (matchRSpec!3295 (regTwo!32901 lt!2352908) s!2326))))

(declare-fun b!6276080 () Bool)

(declare-fun c!1137716 () Bool)

(assert (=> b!6276080 (= c!1137716 (is-Union!16194 lt!2352908))))

(declare-fun e!3816950 () Bool)

(assert (=> b!6276080 (= e!3816950 e!3816952)))

(assert (=> b!6276081 (= e!3816946 call!531025)))

(declare-fun b!6276082 () Bool)

(assert (=> b!6276082 (= e!3816951 call!531026)))

(declare-fun d!1970007 () Bool)

(declare-fun c!1137717 () Bool)

(assert (=> d!1970007 (= c!1137717 (is-EmptyExpr!16194 lt!2352908))))

(assert (=> d!1970007 (= (matchRSpec!3295 lt!2352908 s!2326) e!3816951)))

(declare-fun b!6276083 () Bool)

(assert (=> b!6276083 (= e!3816950 (= s!2326 (Cons!64757 (c!1137631 lt!2352908) Nil!64757)))))

(declare-fun b!6276084 () Bool)

(declare-fun c!1137715 () Bool)

(assert (=> b!6276084 (= c!1137715 (is-ElementMatch!16194 lt!2352908))))

(assert (=> b!6276084 (= e!3816949 e!3816950)))

(declare-fun b!6276085 () Bool)

(assert (=> b!6276085 (= e!3816952 e!3816948)))

(declare-fun res!2588604 () Bool)

(assert (=> b!6276085 (= res!2588604 (matchRSpec!3295 (regOne!32901 lt!2352908) s!2326))))

(assert (=> b!6276085 (=> res!2588604 e!3816948)))

(declare-fun bm!531021 () Bool)

(assert (=> bm!531021 (= call!531026 (isEmpty!36800 s!2326))))

(assert (= (and d!1970007 c!1137717) b!6276082))

(assert (= (and d!1970007 (not c!1137717)) b!6276077))

(assert (= (and b!6276077 res!2588602) b!6276084))

(assert (= (and b!6276084 c!1137715) b!6276083))

(assert (= (and b!6276084 (not c!1137715)) b!6276080))

(assert (= (and b!6276080 c!1137716) b!6276085))

(assert (= (and b!6276080 (not c!1137716)) b!6276076))

(assert (= (and b!6276085 (not res!2588604)) b!6276079))

(assert (= (and b!6276076 c!1137718) b!6276075))

(assert (= (and b!6276076 (not c!1137718)) b!6276078))

(assert (= (and b!6276075 (not res!2588603)) b!6276081))

(assert (= (or b!6276081 b!6276078) bm!531020))

(assert (= (or b!6276082 b!6276075) bm!531021))

(declare-fun m!7097626 () Bool)

(assert (=> bm!531020 m!7097626))

(declare-fun m!7097628 () Bool)

(assert (=> b!6276079 m!7097628))

(declare-fun m!7097630 () Bool)

(assert (=> b!6276085 m!7097630))

(assert (=> bm!531021 m!7097584))

(assert (=> b!6275680 d!1970007))

(declare-fun d!1970009 () Bool)

(declare-fun e!3816953 () Bool)

(assert (=> d!1970009 e!3816953))

(declare-fun c!1137721 () Bool)

(assert (=> d!1970009 (= c!1137721 (is-EmptyExpr!16194 lt!2352916))))

(declare-fun lt!2353108 () Bool)

(declare-fun e!3816954 () Bool)

(assert (=> d!1970009 (= lt!2353108 e!3816954)))

(declare-fun c!1137719 () Bool)

(assert (=> d!1970009 (= c!1137719 (isEmpty!36800 s!2326))))

(assert (=> d!1970009 (validRegex!7930 lt!2352916)))

(assert (=> d!1970009 (= (matchR!8377 lt!2352916 s!2326) lt!2353108)))

(declare-fun b!6276086 () Bool)

(declare-fun e!3816955 () Bool)

(declare-fun e!3816957 () Bool)

(assert (=> b!6276086 (= e!3816955 e!3816957)))

(declare-fun res!2588606 () Bool)

(assert (=> b!6276086 (=> (not res!2588606) (not e!3816957))))

(assert (=> b!6276086 (= res!2588606 (not lt!2353108))))

(declare-fun bm!531022 () Bool)

(declare-fun call!531027 () Bool)

(assert (=> bm!531022 (= call!531027 (isEmpty!36800 s!2326))))

(declare-fun b!6276087 () Bool)

(declare-fun res!2588607 () Bool)

(declare-fun e!3816956 () Bool)

(assert (=> b!6276087 (=> (not res!2588607) (not e!3816956))))

(assert (=> b!6276087 (= res!2588607 (isEmpty!36800 (tail!11973 s!2326)))))

(declare-fun b!6276088 () Bool)

(declare-fun e!3816959 () Bool)

(assert (=> b!6276088 (= e!3816953 e!3816959)))

(declare-fun c!1137720 () Bool)

(assert (=> b!6276088 (= c!1137720 (is-EmptyLang!16194 lt!2352916))))

(declare-fun b!6276089 () Bool)

(declare-fun res!2588611 () Bool)

(declare-fun e!3816958 () Bool)

(assert (=> b!6276089 (=> res!2588611 e!3816958)))

(assert (=> b!6276089 (= res!2588611 (not (isEmpty!36800 (tail!11973 s!2326))))))

(declare-fun b!6276090 () Bool)

(assert (=> b!6276090 (= e!3816958 (not (= (head!12888 s!2326) (c!1137631 lt!2352916))))))

(declare-fun b!6276091 () Bool)

(assert (=> b!6276091 (= e!3816954 (matchR!8377 (derivativeStep!4903 lt!2352916 (head!12888 s!2326)) (tail!11973 s!2326)))))

(declare-fun b!6276092 () Bool)

(assert (=> b!6276092 (= e!3816959 (not lt!2353108))))

(declare-fun b!6276093 () Bool)

(assert (=> b!6276093 (= e!3816954 (nullable!6187 lt!2352916))))

(declare-fun b!6276094 () Bool)

(declare-fun res!2588608 () Bool)

(assert (=> b!6276094 (=> res!2588608 e!3816955)))

(assert (=> b!6276094 (= res!2588608 (not (is-ElementMatch!16194 lt!2352916)))))

(assert (=> b!6276094 (= e!3816959 e!3816955)))

(declare-fun b!6276095 () Bool)

(declare-fun res!2588612 () Bool)

(assert (=> b!6276095 (=> (not res!2588612) (not e!3816956))))

(assert (=> b!6276095 (= res!2588612 (not call!531027))))

(declare-fun b!6276096 () Bool)

(assert (=> b!6276096 (= e!3816956 (= (head!12888 s!2326) (c!1137631 lt!2352916)))))

(declare-fun b!6276097 () Bool)

(declare-fun res!2588610 () Bool)

(assert (=> b!6276097 (=> res!2588610 e!3816955)))

(assert (=> b!6276097 (= res!2588610 e!3816956)))

(declare-fun res!2588605 () Bool)

(assert (=> b!6276097 (=> (not res!2588605) (not e!3816956))))

(assert (=> b!6276097 (= res!2588605 lt!2353108)))

(declare-fun b!6276098 () Bool)

(assert (=> b!6276098 (= e!3816957 e!3816958)))

(declare-fun res!2588609 () Bool)

(assert (=> b!6276098 (=> res!2588609 e!3816958)))

(assert (=> b!6276098 (= res!2588609 call!531027)))

(declare-fun b!6276099 () Bool)

(assert (=> b!6276099 (= e!3816953 (= lt!2353108 call!531027))))

(assert (= (and d!1970009 c!1137719) b!6276093))

(assert (= (and d!1970009 (not c!1137719)) b!6276091))

(assert (= (and d!1970009 c!1137721) b!6276099))

(assert (= (and d!1970009 (not c!1137721)) b!6276088))

(assert (= (and b!6276088 c!1137720) b!6276092))

(assert (= (and b!6276088 (not c!1137720)) b!6276094))

(assert (= (and b!6276094 (not res!2588608)) b!6276097))

(assert (= (and b!6276097 res!2588605) b!6276095))

(assert (= (and b!6276095 res!2588612) b!6276087))

(assert (= (and b!6276087 res!2588607) b!6276096))

(assert (= (and b!6276097 (not res!2588610)) b!6276086))

(assert (= (and b!6276086 res!2588606) b!6276098))

(assert (= (and b!6276098 (not res!2588609)) b!6276089))

(assert (= (and b!6276089 (not res!2588611)) b!6276090))

(assert (= (or b!6276099 b!6276098 b!6276095) bm!531022))

(declare-fun m!7097632 () Bool)

(assert (=> b!6276093 m!7097632))

(assert (=> b!6276091 m!7097588))

(assert (=> b!6276091 m!7097588))

(declare-fun m!7097634 () Bool)

(assert (=> b!6276091 m!7097634))

(assert (=> b!6276091 m!7097592))

(assert (=> b!6276091 m!7097634))

(assert (=> b!6276091 m!7097592))

(declare-fun m!7097636 () Bool)

(assert (=> b!6276091 m!7097636))

(assert (=> b!6276096 m!7097588))

(assert (=> d!1970009 m!7097584))

(assert (=> d!1970009 m!7097194))

(assert (=> b!6276090 m!7097588))

(assert (=> bm!531022 m!7097584))

(assert (=> b!6276087 m!7097592))

(assert (=> b!6276087 m!7097592))

(assert (=> b!6276087 m!7097622))

(assert (=> b!6276089 m!7097592))

(assert (=> b!6276089 m!7097592))

(assert (=> b!6276089 m!7097622))

(assert (=> b!6275680 d!1970009))

(declare-fun d!1970011 () Bool)

(declare-fun c!1137722 () Bool)

(assert (=> d!1970011 (= c!1137722 (isEmpty!36800 s!2326))))

(declare-fun e!3816960 () Bool)

(assert (=> d!1970011 (= (matchZipper!2206 lt!2352938 s!2326) e!3816960)))

(declare-fun b!6276100 () Bool)

(assert (=> b!6276100 (= e!3816960 (nullableZipper!1964 lt!2352938))))

(declare-fun b!6276101 () Bool)

(assert (=> b!6276101 (= e!3816960 (matchZipper!2206 (derivationStepZipper!2160 lt!2352938 (head!12888 s!2326)) (tail!11973 s!2326)))))

(assert (= (and d!1970011 c!1137722) b!6276100))

(assert (= (and d!1970011 (not c!1137722)) b!6276101))

(assert (=> d!1970011 m!7097584))

(declare-fun m!7097638 () Bool)

(assert (=> b!6276100 m!7097638))

(assert (=> b!6276101 m!7097588))

(assert (=> b!6276101 m!7097588))

(declare-fun m!7097640 () Bool)

(assert (=> b!6276101 m!7097640))

(assert (=> b!6276101 m!7097592))

(assert (=> b!6276101 m!7097640))

(assert (=> b!6276101 m!7097592))

(declare-fun m!7097642 () Bool)

(assert (=> b!6276101 m!7097642))

(assert (=> b!6275680 d!1970011))

(declare-fun b!6276102 () Bool)

(declare-fun res!2588616 () Bool)

(declare-fun e!3816961 () Bool)

(assert (=> b!6276102 (=> (not res!2588616) (not e!3816961))))

(declare-fun call!531028 () Bool)

(assert (=> b!6276102 (= res!2588616 call!531028)))

(declare-fun e!3816964 () Bool)

(assert (=> b!6276102 (= e!3816964 e!3816961)))

(declare-fun b!6276103 () Bool)

(declare-fun res!2588614 () Bool)

(declare-fun e!3816965 () Bool)

(assert (=> b!6276103 (=> res!2588614 e!3816965)))

(assert (=> b!6276103 (= res!2588614 (not (is-Concat!25039 (regOne!32900 (regOne!32900 r!7292)))))))

(assert (=> b!6276103 (= e!3816964 e!3816965)))

(declare-fun b!6276104 () Bool)

(declare-fun e!3816962 () Bool)

(declare-fun call!531029 () Bool)

(assert (=> b!6276104 (= e!3816962 call!531029)))

(declare-fun b!6276105 () Bool)

(assert (=> b!6276105 (= e!3816965 e!3816962)))

(declare-fun res!2588615 () Bool)

(assert (=> b!6276105 (=> (not res!2588615) (not e!3816962))))

(assert (=> b!6276105 (= res!2588615 call!531028)))

(declare-fun bm!531023 () Bool)

(declare-fun c!1137723 () Bool)

(assert (=> bm!531023 (= call!531028 (validRegex!7930 (ite c!1137723 (regOne!32901 (regOne!32900 (regOne!32900 r!7292))) (regOne!32900 (regOne!32900 (regOne!32900 r!7292))))))))

(declare-fun call!531030 () Bool)

(declare-fun c!1137724 () Bool)

(declare-fun bm!531024 () Bool)

(assert (=> bm!531024 (= call!531030 (validRegex!7930 (ite c!1137724 (reg!16523 (regOne!32900 (regOne!32900 r!7292))) (ite c!1137723 (regTwo!32901 (regOne!32900 (regOne!32900 r!7292))) (regTwo!32900 (regOne!32900 (regOne!32900 r!7292)))))))))

(declare-fun b!6276106 () Bool)

(declare-fun e!3816967 () Bool)

(declare-fun e!3816966 () Bool)

(assert (=> b!6276106 (= e!3816967 e!3816966)))

(assert (=> b!6276106 (= c!1137724 (is-Star!16194 (regOne!32900 (regOne!32900 r!7292))))))

(declare-fun b!6276108 () Bool)

(declare-fun e!3816963 () Bool)

(assert (=> b!6276108 (= e!3816963 call!531030)))

(declare-fun b!6276109 () Bool)

(assert (=> b!6276109 (= e!3816966 e!3816963)))

(declare-fun res!2588617 () Bool)

(assert (=> b!6276109 (= res!2588617 (not (nullable!6187 (reg!16523 (regOne!32900 (regOne!32900 r!7292))))))))

(assert (=> b!6276109 (=> (not res!2588617) (not e!3816963))))

(declare-fun bm!531025 () Bool)

(assert (=> bm!531025 (= call!531029 call!531030)))

(declare-fun b!6276110 () Bool)

(assert (=> b!6276110 (= e!3816966 e!3816964)))

(assert (=> b!6276110 (= c!1137723 (is-Union!16194 (regOne!32900 (regOne!32900 r!7292))))))

(declare-fun b!6276107 () Bool)

(assert (=> b!6276107 (= e!3816961 call!531029)))

(declare-fun d!1970013 () Bool)

(declare-fun res!2588613 () Bool)

(assert (=> d!1970013 (=> res!2588613 e!3816967)))

(assert (=> d!1970013 (= res!2588613 (is-ElementMatch!16194 (regOne!32900 (regOne!32900 r!7292))))))

(assert (=> d!1970013 (= (validRegex!7930 (regOne!32900 (regOne!32900 r!7292))) e!3816967)))

(assert (= (and d!1970013 (not res!2588613)) b!6276106))

(assert (= (and b!6276106 c!1137724) b!6276109))

(assert (= (and b!6276106 (not c!1137724)) b!6276110))

(assert (= (and b!6276109 res!2588617) b!6276108))

(assert (= (and b!6276110 c!1137723) b!6276102))

(assert (= (and b!6276110 (not c!1137723)) b!6276103))

(assert (= (and b!6276102 res!2588616) b!6276107))

(assert (= (and b!6276103 (not res!2588614)) b!6276105))

(assert (= (and b!6276105 res!2588615) b!6276104))

(assert (= (or b!6276107 b!6276104) bm!531025))

(assert (= (or b!6276102 b!6276105) bm!531023))

(assert (= (or b!6276108 bm!531025) bm!531024))

(declare-fun m!7097644 () Bool)

(assert (=> bm!531023 m!7097644))

(declare-fun m!7097646 () Bool)

(assert (=> bm!531024 m!7097646))

(declare-fun m!7097648 () Bool)

(assert (=> b!6276109 m!7097648))

(assert (=> b!6275680 d!1970013))

(declare-fun d!1970015 () Bool)

(assert (=> d!1970015 (= (matchR!8377 lt!2352916 s!2326) (matchZipper!2206 lt!2352931 s!2326))))

(declare-fun lt!2353109 () Unit!158107)

(assert (=> d!1970015 (= lt!2353109 (choose!46571 lt!2352931 (Cons!64759 lt!2352913 Nil!64759) lt!2352916 s!2326))))

(assert (=> d!1970015 (validRegex!7930 lt!2352916)))

(assert (=> d!1970015 (= (theoremZipperRegexEquiv!764 lt!2352931 (Cons!64759 lt!2352913 Nil!64759) lt!2352916 s!2326) lt!2353109)))

(declare-fun bs!1568109 () Bool)

(assert (= bs!1568109 d!1970015))

(assert (=> bs!1568109 m!7097218))

(assert (=> bs!1568109 m!7097212))

(declare-fun m!7097650 () Bool)

(assert (=> bs!1568109 m!7097650))

(assert (=> bs!1568109 m!7097194))

(assert (=> b!6275680 d!1970015))

(declare-fun bs!1568110 () Bool)

(declare-fun d!1970017 () Bool)

(assert (= bs!1568110 (and d!1970017 d!1969973)))

(declare-fun lambda!343994 () Int)

(assert (=> bs!1568110 (= lambda!343994 lambda!343968)))

(declare-fun bs!1568111 () Bool)

(assert (= bs!1568111 (and d!1970017 d!1969979)))

(assert (=> bs!1568111 (= lambda!343994 lambda!343983)))

(declare-fun bs!1568112 () Bool)

(assert (= bs!1568112 (and d!1970017 d!1969997)))

(assert (=> bs!1568112 (= lambda!343994 lambda!343984)))

(declare-fun bs!1568113 () Bool)

(assert (= bs!1568113 (and d!1970017 d!1970001)))

(assert (=> bs!1568113 (= lambda!343994 lambda!343985)))

(declare-fun e!3816983 () Bool)

(assert (=> d!1970017 e!3816983))

(declare-fun res!2588623 () Bool)

(assert (=> d!1970017 (=> (not res!2588623) (not e!3816983))))

(declare-fun lt!2353112 () Regex!16194)

(assert (=> d!1970017 (= res!2588623 (validRegex!7930 lt!2353112))))

(declare-fun e!3816985 () Regex!16194)

(assert (=> d!1970017 (= lt!2353112 e!3816985)))

(declare-fun c!1137733 () Bool)

(declare-fun e!3816984 () Bool)

(assert (=> d!1970017 (= c!1137733 e!3816984)))

(declare-fun res!2588622 () Bool)

(assert (=> d!1970017 (=> (not res!2588622) (not e!3816984))))

(assert (=> d!1970017 (= res!2588622 (is-Cons!64758 (unfocusZipperList!1615 zl!343)))))

(assert (=> d!1970017 (forall!15326 (unfocusZipperList!1615 zl!343) lambda!343994)))

(assert (=> d!1970017 (= (generalisedUnion!2038 (unfocusZipperList!1615 zl!343)) lt!2353112)))

(declare-fun b!6276131 () Bool)

(declare-fun e!3816981 () Bool)

(declare-fun isUnion!1038 (Regex!16194) Bool)

(assert (=> b!6276131 (= e!3816981 (isUnion!1038 lt!2353112))))

(declare-fun b!6276132 () Bool)

(declare-fun e!3816982 () Regex!16194)

(assert (=> b!6276132 (= e!3816985 e!3816982)))

(declare-fun c!1137735 () Bool)

(assert (=> b!6276132 (= c!1137735 (is-Cons!64758 (unfocusZipperList!1615 zl!343)))))

(declare-fun b!6276133 () Bool)

(declare-fun e!3816980 () Bool)

(assert (=> b!6276133 (= e!3816980 e!3816981)))

(declare-fun c!1137734 () Bool)

(assert (=> b!6276133 (= c!1137734 (isEmpty!36797 (tail!11974 (unfocusZipperList!1615 zl!343))))))

(declare-fun b!6276134 () Bool)

(assert (=> b!6276134 (= e!3816983 e!3816980)))

(declare-fun c!1137736 () Bool)

(assert (=> b!6276134 (= c!1137736 (isEmpty!36797 (unfocusZipperList!1615 zl!343)))))

(declare-fun b!6276135 () Bool)

(assert (=> b!6276135 (= e!3816981 (= lt!2353112 (head!12889 (unfocusZipperList!1615 zl!343))))))

(declare-fun b!6276136 () Bool)

(assert (=> b!6276136 (= e!3816984 (isEmpty!36797 (t!378442 (unfocusZipperList!1615 zl!343))))))

(declare-fun b!6276137 () Bool)

(assert (=> b!6276137 (= e!3816982 EmptyLang!16194)))

(declare-fun b!6276138 () Bool)

(assert (=> b!6276138 (= e!3816982 (Union!16194 (h!71206 (unfocusZipperList!1615 zl!343)) (generalisedUnion!2038 (t!378442 (unfocusZipperList!1615 zl!343)))))))

(declare-fun b!6276139 () Bool)

(declare-fun isEmptyLang!1608 (Regex!16194) Bool)

(assert (=> b!6276139 (= e!3816980 (isEmptyLang!1608 lt!2353112))))

(declare-fun b!6276140 () Bool)

(assert (=> b!6276140 (= e!3816985 (h!71206 (unfocusZipperList!1615 zl!343)))))

(assert (= (and d!1970017 res!2588622) b!6276136))

(assert (= (and d!1970017 c!1137733) b!6276140))

(assert (= (and d!1970017 (not c!1137733)) b!6276132))

(assert (= (and b!6276132 c!1137735) b!6276138))

(assert (= (and b!6276132 (not c!1137735)) b!6276137))

(assert (= (and d!1970017 res!2588623) b!6276134))

(assert (= (and b!6276134 c!1137736) b!6276139))

(assert (= (and b!6276134 (not c!1137736)) b!6276133))

(assert (= (and b!6276133 c!1137734) b!6276135))

(assert (= (and b!6276133 (not c!1137734)) b!6276131))

(assert (=> b!6276134 m!7097226))

(declare-fun m!7097652 () Bool)

(assert (=> b!6276134 m!7097652))

(assert (=> b!6276133 m!7097226))

(declare-fun m!7097654 () Bool)

(assert (=> b!6276133 m!7097654))

(assert (=> b!6276133 m!7097654))

(declare-fun m!7097656 () Bool)

(assert (=> b!6276133 m!7097656))

(declare-fun m!7097658 () Bool)

(assert (=> b!6276131 m!7097658))

(declare-fun m!7097660 () Bool)

(assert (=> b!6276139 m!7097660))

(declare-fun m!7097662 () Bool)

(assert (=> b!6276136 m!7097662))

(declare-fun m!7097664 () Bool)

(assert (=> b!6276138 m!7097664))

(declare-fun m!7097666 () Bool)

(assert (=> d!1970017 m!7097666))

(assert (=> d!1970017 m!7097226))

(declare-fun m!7097668 () Bool)

(assert (=> d!1970017 m!7097668))

(assert (=> b!6276135 m!7097226))

(declare-fun m!7097670 () Bool)

(assert (=> b!6276135 m!7097670))

(assert (=> b!6275682 d!1970017))

(declare-fun bs!1568114 () Bool)

(declare-fun d!1970019 () Bool)

(assert (= bs!1568114 (and d!1970019 d!1970017)))

(declare-fun lambda!343997 () Int)

(assert (=> bs!1568114 (= lambda!343997 lambda!343994)))

(declare-fun bs!1568115 () Bool)

(assert (= bs!1568115 (and d!1970019 d!1970001)))

(assert (=> bs!1568115 (= lambda!343997 lambda!343985)))

(declare-fun bs!1568116 () Bool)

(assert (= bs!1568116 (and d!1970019 d!1969997)))

(assert (=> bs!1568116 (= lambda!343997 lambda!343984)))

(declare-fun bs!1568117 () Bool)

(assert (= bs!1568117 (and d!1970019 d!1969973)))

(assert (=> bs!1568117 (= lambda!343997 lambda!343968)))

(declare-fun bs!1568118 () Bool)

(assert (= bs!1568118 (and d!1970019 d!1969979)))

(assert (=> bs!1568118 (= lambda!343997 lambda!343983)))

(declare-fun lt!2353115 () List!64882)

(assert (=> d!1970019 (forall!15326 lt!2353115 lambda!343997)))

(declare-fun e!3816988 () List!64882)

(assert (=> d!1970019 (= lt!2353115 e!3816988)))

(declare-fun c!1137739 () Bool)

(assert (=> d!1970019 (= c!1137739 (is-Cons!64759 zl!343))))

(assert (=> d!1970019 (= (unfocusZipperList!1615 zl!343) lt!2353115)))

(declare-fun b!6276145 () Bool)

(assert (=> b!6276145 (= e!3816988 (Cons!64758 (generalisedConcat!1791 (exprs!6078 (h!71207 zl!343))) (unfocusZipperList!1615 (t!378443 zl!343))))))

(declare-fun b!6276146 () Bool)

(assert (=> b!6276146 (= e!3816988 Nil!64758)))

(assert (= (and d!1970019 c!1137739) b!6276145))

(assert (= (and d!1970019 (not c!1137739)) b!6276146))

(declare-fun m!7097672 () Bool)

(assert (=> d!1970019 m!7097672))

(assert (=> b!6276145 m!7097150))

(declare-fun m!7097674 () Bool)

(assert (=> b!6276145 m!7097674))

(assert (=> b!6275682 d!1970019))

(declare-fun d!1970021 () Bool)

(declare-fun lt!2353118 () Int)

(assert (=> d!1970021 (>= lt!2353118 0)))

(declare-fun e!3816991 () Int)

(assert (=> d!1970021 (= lt!2353118 e!3816991)))

(declare-fun c!1137742 () Bool)

(assert (=> d!1970021 (= c!1137742 (is-Cons!64759 lt!2352920))))

(assert (=> d!1970021 (= (zipperDepthTotal!347 lt!2352920) lt!2353118)))

(declare-fun b!6276151 () Bool)

(assert (=> b!6276151 (= e!3816991 (+ (contextDepthTotal!317 (h!71207 lt!2352920)) (zipperDepthTotal!347 (t!378443 lt!2352920))))))

(declare-fun b!6276152 () Bool)

(assert (=> b!6276152 (= e!3816991 0)))

(assert (= (and d!1970021 c!1137742) b!6276151))

(assert (= (and d!1970021 (not c!1137742)) b!6276152))

(declare-fun m!7097676 () Bool)

(assert (=> b!6276151 m!7097676))

(declare-fun m!7097678 () Bool)

(assert (=> b!6276151 m!7097678))

(assert (=> b!6275702 d!1970021))

(declare-fun d!1970023 () Bool)

(declare-fun lt!2353119 () Int)

(assert (=> d!1970023 (>= lt!2353119 0)))

(declare-fun e!3816992 () Int)

(assert (=> d!1970023 (= lt!2353119 e!3816992)))

(declare-fun c!1137743 () Bool)

(assert (=> d!1970023 (= c!1137743 (is-Cons!64759 zl!343))))

(assert (=> d!1970023 (= (zipperDepthTotal!347 zl!343) lt!2353119)))

(declare-fun b!6276153 () Bool)

(assert (=> b!6276153 (= e!3816992 (+ (contextDepthTotal!317 (h!71207 zl!343)) (zipperDepthTotal!347 (t!378443 zl!343))))))

(declare-fun b!6276154 () Bool)

(assert (=> b!6276154 (= e!3816992 0)))

(assert (= (and d!1970023 c!1137743) b!6276153))

(assert (= (and d!1970023 (not c!1137743)) b!6276154))

(assert (=> b!6276153 m!7097202))

(declare-fun m!7097680 () Bool)

(assert (=> b!6276153 m!7097680))

(assert (=> b!6275702 d!1970023))

(declare-fun b!6276165 () Bool)

(declare-fun e!3817000 () Bool)

(assert (=> b!6276165 (= e!3817000 (nullable!6187 (h!71206 (exprs!6078 lt!2352936))))))

(declare-fun b!6276166 () Bool)

(declare-fun e!3816999 () (Set Context!11156))

(assert (=> b!6276166 (= e!3816999 (as set.empty (Set Context!11156)))))

(declare-fun bm!531028 () Bool)

(declare-fun call!531033 () (Set Context!11156))

(assert (=> bm!531028 (= call!531033 (derivationStepZipperDown!1442 (h!71206 (exprs!6078 lt!2352936)) (Context!11157 (t!378442 (exprs!6078 lt!2352936))) (h!71205 s!2326)))))

(declare-fun b!6276167 () Bool)

(declare-fun e!3817001 () (Set Context!11156))

(assert (=> b!6276167 (= e!3817001 (set.union call!531033 (derivationStepZipperUp!1368 (Context!11157 (t!378442 (exprs!6078 lt!2352936))) (h!71205 s!2326))))))

(declare-fun b!6276168 () Bool)

(assert (=> b!6276168 (= e!3817001 e!3816999)))

(declare-fun c!1137748 () Bool)

(assert (=> b!6276168 (= c!1137748 (is-Cons!64758 (exprs!6078 lt!2352936)))))

(declare-fun d!1970025 () Bool)

(declare-fun c!1137749 () Bool)

(assert (=> d!1970025 (= c!1137749 e!3817000)))

(declare-fun res!2588626 () Bool)

(assert (=> d!1970025 (=> (not res!2588626) (not e!3817000))))

(assert (=> d!1970025 (= res!2588626 (is-Cons!64758 (exprs!6078 lt!2352936)))))

(assert (=> d!1970025 (= (derivationStepZipperUp!1368 lt!2352936 (h!71205 s!2326)) e!3817001)))

(declare-fun b!6276169 () Bool)

(assert (=> b!6276169 (= e!3816999 call!531033)))

(assert (= (and d!1970025 res!2588626) b!6276165))

(assert (= (and d!1970025 c!1137749) b!6276167))

(assert (= (and d!1970025 (not c!1137749)) b!6276168))

(assert (= (and b!6276168 c!1137748) b!6276169))

(assert (= (and b!6276168 (not c!1137748)) b!6276166))

(assert (= (or b!6276167 b!6276169) bm!531028))

(declare-fun m!7097682 () Bool)

(assert (=> b!6276165 m!7097682))

(declare-fun m!7097684 () Bool)

(assert (=> bm!531028 m!7097684))

(declare-fun m!7097686 () Bool)

(assert (=> b!6276167 m!7097686))

(assert (=> b!6275683 d!1970025))

(declare-fun b!6276170 () Bool)

(declare-fun e!3817003 () Bool)

(assert (=> b!6276170 (= e!3817003 (nullable!6187 (h!71206 (exprs!6078 lt!2352913))))))

(declare-fun b!6276171 () Bool)

(declare-fun e!3817002 () (Set Context!11156))

(assert (=> b!6276171 (= e!3817002 (as set.empty (Set Context!11156)))))

(declare-fun bm!531029 () Bool)

(declare-fun call!531034 () (Set Context!11156))

(assert (=> bm!531029 (= call!531034 (derivationStepZipperDown!1442 (h!71206 (exprs!6078 lt!2352913)) (Context!11157 (t!378442 (exprs!6078 lt!2352913))) (h!71205 s!2326)))))

(declare-fun b!6276172 () Bool)

(declare-fun e!3817004 () (Set Context!11156))

(assert (=> b!6276172 (= e!3817004 (set.union call!531034 (derivationStepZipperUp!1368 (Context!11157 (t!378442 (exprs!6078 lt!2352913))) (h!71205 s!2326))))))

(declare-fun b!6276173 () Bool)

(assert (=> b!6276173 (= e!3817004 e!3817002)))

(declare-fun c!1137750 () Bool)

(assert (=> b!6276173 (= c!1137750 (is-Cons!64758 (exprs!6078 lt!2352913)))))

(declare-fun d!1970027 () Bool)

(declare-fun c!1137751 () Bool)

(assert (=> d!1970027 (= c!1137751 e!3817003)))

(declare-fun res!2588627 () Bool)

(assert (=> d!1970027 (=> (not res!2588627) (not e!3817003))))

(assert (=> d!1970027 (= res!2588627 (is-Cons!64758 (exprs!6078 lt!2352913)))))

(assert (=> d!1970027 (= (derivationStepZipperUp!1368 lt!2352913 (h!71205 s!2326)) e!3817004)))

(declare-fun b!6276174 () Bool)

(assert (=> b!6276174 (= e!3817002 call!531034)))

(assert (= (and d!1970027 res!2588627) b!6276170))

(assert (= (and d!1970027 c!1137751) b!6276172))

(assert (= (and d!1970027 (not c!1137751)) b!6276173))

(assert (= (and b!6276173 c!1137750) b!6276174))

(assert (= (and b!6276173 (not c!1137750)) b!6276171))

(assert (= (or b!6276172 b!6276174) bm!531029))

(declare-fun m!7097688 () Bool)

(assert (=> b!6276170 m!7097688))

(declare-fun m!7097690 () Bool)

(assert (=> bm!531029 m!7097690))

(declare-fun m!7097692 () Bool)

(assert (=> b!6276172 m!7097692))

(assert (=> b!6275683 d!1970027))

(declare-fun d!1970029 () Bool)

(declare-fun choose!46572 ((Set Context!11156) Int) (Set Context!11156))

(assert (=> d!1970029 (= (flatMap!1699 lt!2352938 lambda!343938) (choose!46572 lt!2352938 lambda!343938))))

(declare-fun bs!1568119 () Bool)

(assert (= bs!1568119 d!1970029))

(declare-fun m!7097694 () Bool)

(assert (=> bs!1568119 m!7097694))

(assert (=> b!6275683 d!1970029))

(declare-fun bs!1568120 () Bool)

(declare-fun d!1970031 () Bool)

(assert (= bs!1568120 (and d!1970031 b!6275668)))

(declare-fun lambda!343998 () Int)

(assert (=> bs!1568120 (= lambda!343998 lambda!343938)))

(declare-fun bs!1568121 () Bool)

(assert (= bs!1568121 (and d!1970031 d!1969965)))

(assert (=> bs!1568121 (= lambda!343998 lambda!343965)))

(assert (=> d!1970031 true))

(assert (=> d!1970031 (= (derivationStepZipper!2160 lt!2352938 (h!71205 s!2326)) (flatMap!1699 lt!2352938 lambda!343998))))

(declare-fun bs!1568122 () Bool)

(assert (= bs!1568122 d!1970031))

(declare-fun m!7097696 () Bool)

(assert (=> bs!1568122 m!7097696))

(assert (=> b!6275683 d!1970031))

(declare-fun d!1970033 () Bool)

(declare-fun dynLambda!25620 (Int Context!11156) (Set Context!11156))

(assert (=> d!1970033 (= (flatMap!1699 lt!2352938 lambda!343938) (dynLambda!25620 lambda!343938 lt!2352936))))

(declare-fun lt!2353122 () Unit!158107)

(declare-fun choose!46573 ((Set Context!11156) Context!11156 Int) Unit!158107)

(assert (=> d!1970033 (= lt!2353122 (choose!46573 lt!2352938 lt!2352936 lambda!343938))))

(assert (=> d!1970033 (= lt!2352938 (set.insert lt!2352936 (as set.empty (Set Context!11156))))))

(assert (=> d!1970033 (= (lemmaFlatMapOnSingletonSet!1225 lt!2352938 lt!2352936 lambda!343938) lt!2353122)))

(declare-fun b_lambda!239005 () Bool)

(assert (=> (not b_lambda!239005) (not d!1970033)))

(declare-fun bs!1568123 () Bool)

(assert (= bs!1568123 d!1970033))

(assert (=> bs!1568123 m!7097122))

(declare-fun m!7097698 () Bool)

(assert (=> bs!1568123 m!7097698))

(declare-fun m!7097700 () Bool)

(assert (=> bs!1568123 m!7097700))

(assert (=> bs!1568123 m!7097124))

(assert (=> b!6275683 d!1970033))

(declare-fun d!1970035 () Bool)

(declare-fun lt!2353125 () Int)

(assert (=> d!1970035 (>= lt!2353125 0)))

(declare-fun e!3817007 () Int)

(assert (=> d!1970035 (= lt!2353125 e!3817007)))

(declare-fun c!1137755 () Bool)

(assert (=> d!1970035 (= c!1137755 (is-Cons!64758 (exprs!6078 lt!2352936)))))

(assert (=> d!1970035 (= (contextDepthTotal!317 lt!2352936) lt!2353125)))

(declare-fun b!6276179 () Bool)

(declare-fun regexDepthTotal!170 (Regex!16194) Int)

(assert (=> b!6276179 (= e!3817007 (+ (regexDepthTotal!170 (h!71206 (exprs!6078 lt!2352936))) (contextDepthTotal!317 (Context!11157 (t!378442 (exprs!6078 lt!2352936))))))))

(declare-fun b!6276180 () Bool)

(assert (=> b!6276180 (= e!3817007 1)))

(assert (= (and d!1970035 c!1137755) b!6276179))

(assert (= (and d!1970035 (not c!1137755)) b!6276180))

(declare-fun m!7097702 () Bool)

(assert (=> b!6276179 m!7097702))

(declare-fun m!7097704 () Bool)

(assert (=> b!6276179 m!7097704))

(assert (=> b!6275685 d!1970035))

(declare-fun d!1970037 () Bool)

(declare-fun lt!2353126 () Int)

(assert (=> d!1970037 (>= lt!2353126 0)))

(declare-fun e!3817008 () Int)

(assert (=> d!1970037 (= lt!2353126 e!3817008)))

(declare-fun c!1137756 () Bool)

(assert (=> d!1970037 (= c!1137756 (is-Cons!64758 (exprs!6078 (h!71207 zl!343))))))

(assert (=> d!1970037 (= (contextDepthTotal!317 (h!71207 zl!343)) lt!2353126)))

(declare-fun b!6276181 () Bool)

(assert (=> b!6276181 (= e!3817008 (+ (regexDepthTotal!170 (h!71206 (exprs!6078 (h!71207 zl!343)))) (contextDepthTotal!317 (Context!11157 (t!378442 (exprs!6078 (h!71207 zl!343)))))))))

(declare-fun b!6276182 () Bool)

(assert (=> b!6276182 (= e!3817008 1)))

(assert (= (and d!1970037 c!1137756) b!6276181))

(assert (= (and d!1970037 (not c!1137756)) b!6276182))

(declare-fun m!7097706 () Bool)

(assert (=> b!6276181 m!7097706))

(declare-fun m!7097708 () Bool)

(assert (=> b!6276181 m!7097708))

(assert (=> b!6275685 d!1970037))

(declare-fun bs!1568124 () Bool)

(declare-fun d!1970039 () Bool)

(assert (= bs!1568124 (and d!1970039 d!1970017)))

(declare-fun lambda!343999 () Int)

(assert (=> bs!1568124 (= lambda!343999 lambda!343994)))

(declare-fun bs!1568125 () Bool)

(assert (= bs!1568125 (and d!1970039 d!1970001)))

(assert (=> bs!1568125 (= lambda!343999 lambda!343985)))

(declare-fun bs!1568126 () Bool)

(assert (= bs!1568126 (and d!1970039 d!1969997)))

(assert (=> bs!1568126 (= lambda!343999 lambda!343984)))

(declare-fun bs!1568127 () Bool)

(assert (= bs!1568127 (and d!1970039 d!1970019)))

(assert (=> bs!1568127 (= lambda!343999 lambda!343997)))

(declare-fun bs!1568128 () Bool)

(assert (= bs!1568128 (and d!1970039 d!1969973)))

(assert (=> bs!1568128 (= lambda!343999 lambda!343968)))

(declare-fun bs!1568129 () Bool)

(assert (= bs!1568129 (and d!1970039 d!1969979)))

(assert (=> bs!1568129 (= lambda!343999 lambda!343983)))

(assert (=> d!1970039 (= (inv!83733 (h!71207 zl!343)) (forall!15326 (exprs!6078 (h!71207 zl!343)) lambda!343999))))

(declare-fun bs!1568130 () Bool)

(assert (= bs!1568130 d!1970039))

(declare-fun m!7097710 () Bool)

(assert (=> bs!1568130 m!7097710))

(assert (=> b!6275684 d!1970039))

(declare-fun bs!1568131 () Bool)

(declare-fun b!6276189 () Bool)

(assert (= bs!1568131 (and b!6276189 b!6276081)))

(declare-fun lambda!344000 () Int)

(assert (=> bs!1568131 (= (and (= (reg!16523 r!7292) (reg!16523 lt!2352908)) (= r!7292 lt!2352908)) (= lambda!344000 lambda!343990))))

(declare-fun bs!1568132 () Bool)

(assert (= bs!1568132 (and b!6276189 b!6275692)))

(assert (=> bs!1568132 (not (= lambda!344000 lambda!343936))))

(assert (=> bs!1568132 (not (= lambda!344000 lambda!343937))))

(declare-fun bs!1568133 () Bool)

(assert (= bs!1568133 (and b!6276189 d!1969955)))

(assert (=> bs!1568133 (not (= lambda!344000 lambda!343961))))

(assert (=> bs!1568133 (not (= lambda!344000 lambda!343962))))

(declare-fun bs!1568134 () Bool)

(assert (= bs!1568134 (and b!6276189 b!6276078)))

(assert (=> bs!1568134 (not (= lambda!344000 lambda!343991))))

(declare-fun bs!1568135 () Bool)

(assert (= bs!1568135 (and b!6276189 d!1969953)))

(assert (=> bs!1568135 (not (= lambda!344000 lambda!343956))))

(assert (=> b!6276189 true))

(assert (=> b!6276189 true))

(declare-fun bs!1568136 () Bool)

(declare-fun b!6276186 () Bool)

(assert (= bs!1568136 (and b!6276186 b!6275692)))

(declare-fun lambda!344001 () Int)

(assert (=> bs!1568136 (not (= lambda!344001 lambda!343936))))

(assert (=> bs!1568136 (= lambda!344001 lambda!343937)))

(declare-fun bs!1568137 () Bool)

(assert (= bs!1568137 (and b!6276186 d!1969955)))

(assert (=> bs!1568137 (not (= lambda!344001 lambda!343961))))

(assert (=> bs!1568137 (= lambda!344001 lambda!343962)))

(declare-fun bs!1568138 () Bool)

(assert (= bs!1568138 (and b!6276186 b!6276078)))

(assert (=> bs!1568138 (= (and (= (regOne!32900 r!7292) (regOne!32900 lt!2352908)) (= (regTwo!32900 r!7292) (regTwo!32900 lt!2352908))) (= lambda!344001 lambda!343991))))

(declare-fun bs!1568139 () Bool)

(assert (= bs!1568139 (and b!6276186 d!1969953)))

(assert (=> bs!1568139 (not (= lambda!344001 lambda!343956))))

(declare-fun bs!1568140 () Bool)

(assert (= bs!1568140 (and b!6276186 b!6276189)))

(assert (=> bs!1568140 (not (= lambda!344001 lambda!344000))))

(declare-fun bs!1568141 () Bool)

(assert (= bs!1568141 (and b!6276186 b!6276081)))

(assert (=> bs!1568141 (not (= lambda!344001 lambda!343990))))

(assert (=> b!6276186 true))

(assert (=> b!6276186 true))

(declare-fun b!6276183 () Bool)

(declare-fun res!2588629 () Bool)

(declare-fun e!3817009 () Bool)

(assert (=> b!6276183 (=> res!2588629 e!3817009)))

(declare-fun call!531036 () Bool)

(assert (=> b!6276183 (= res!2588629 call!531036)))

(declare-fun e!3817010 () Bool)

(assert (=> b!6276183 (= e!3817010 e!3817009)))

(declare-fun b!6276184 () Bool)

(declare-fun e!3817015 () Bool)

(assert (=> b!6276184 (= e!3817015 e!3817010)))

(declare-fun c!1137760 () Bool)

(assert (=> b!6276184 (= c!1137760 (is-Star!16194 r!7292))))

(declare-fun b!6276185 () Bool)

(declare-fun e!3817014 () Bool)

(declare-fun e!3817012 () Bool)

(assert (=> b!6276185 (= e!3817014 e!3817012)))

(declare-fun res!2588628 () Bool)

(assert (=> b!6276185 (= res!2588628 (not (is-EmptyLang!16194 r!7292)))))

(assert (=> b!6276185 (=> (not res!2588628) (not e!3817012))))

(declare-fun call!531035 () Bool)

(assert (=> b!6276186 (= e!3817010 call!531035)))

(declare-fun bm!531030 () Bool)

(assert (=> bm!531030 (= call!531035 (Exists!3264 (ite c!1137760 lambda!344000 lambda!344001)))))

(declare-fun b!6276187 () Bool)

(declare-fun e!3817011 () Bool)

(assert (=> b!6276187 (= e!3817011 (matchRSpec!3295 (regTwo!32901 r!7292) s!2326))))

(declare-fun b!6276188 () Bool)

(declare-fun c!1137758 () Bool)

(assert (=> b!6276188 (= c!1137758 (is-Union!16194 r!7292))))

(declare-fun e!3817013 () Bool)

(assert (=> b!6276188 (= e!3817013 e!3817015)))

(assert (=> b!6276189 (= e!3817009 call!531035)))

(declare-fun b!6276190 () Bool)

(assert (=> b!6276190 (= e!3817014 call!531036)))

(declare-fun d!1970041 () Bool)

(declare-fun c!1137759 () Bool)

(assert (=> d!1970041 (= c!1137759 (is-EmptyExpr!16194 r!7292))))

(assert (=> d!1970041 (= (matchRSpec!3295 r!7292 s!2326) e!3817014)))

(declare-fun b!6276191 () Bool)

(assert (=> b!6276191 (= e!3817013 (= s!2326 (Cons!64757 (c!1137631 r!7292) Nil!64757)))))

(declare-fun b!6276192 () Bool)

(declare-fun c!1137757 () Bool)

(assert (=> b!6276192 (= c!1137757 (is-ElementMatch!16194 r!7292))))

(assert (=> b!6276192 (= e!3817012 e!3817013)))

(declare-fun b!6276193 () Bool)

(assert (=> b!6276193 (= e!3817015 e!3817011)))

(declare-fun res!2588630 () Bool)

(assert (=> b!6276193 (= res!2588630 (matchRSpec!3295 (regOne!32901 r!7292) s!2326))))

(assert (=> b!6276193 (=> res!2588630 e!3817011)))

(declare-fun bm!531031 () Bool)

(assert (=> bm!531031 (= call!531036 (isEmpty!36800 s!2326))))

(assert (= (and d!1970041 c!1137759) b!6276190))

(assert (= (and d!1970041 (not c!1137759)) b!6276185))

(assert (= (and b!6276185 res!2588628) b!6276192))

(assert (= (and b!6276192 c!1137757) b!6276191))

(assert (= (and b!6276192 (not c!1137757)) b!6276188))

(assert (= (and b!6276188 c!1137758) b!6276193))

(assert (= (and b!6276188 (not c!1137758)) b!6276184))

(assert (= (and b!6276193 (not res!2588630)) b!6276187))

(assert (= (and b!6276184 c!1137760) b!6276183))

(assert (= (and b!6276184 (not c!1137760)) b!6276186))

(assert (= (and b!6276183 (not res!2588629)) b!6276189))

(assert (= (or b!6276189 b!6276186) bm!531030))

(assert (= (or b!6276190 b!6276183) bm!531031))

(declare-fun m!7097712 () Bool)

(assert (=> bm!531030 m!7097712))

(declare-fun m!7097714 () Bool)

(assert (=> b!6276187 m!7097714))

(declare-fun m!7097716 () Bool)

(assert (=> b!6276193 m!7097716))

(assert (=> bm!531031 m!7097584))

(assert (=> b!6275686 d!1970041))

(declare-fun d!1970043 () Bool)

(declare-fun e!3817016 () Bool)

(assert (=> d!1970043 e!3817016))

(declare-fun c!1137763 () Bool)

(assert (=> d!1970043 (= c!1137763 (is-EmptyExpr!16194 r!7292))))

(declare-fun lt!2353127 () Bool)

(declare-fun e!3817017 () Bool)

(assert (=> d!1970043 (= lt!2353127 e!3817017)))

(declare-fun c!1137761 () Bool)

(assert (=> d!1970043 (= c!1137761 (isEmpty!36800 s!2326))))

(assert (=> d!1970043 (validRegex!7930 r!7292)))

(assert (=> d!1970043 (= (matchR!8377 r!7292 s!2326) lt!2353127)))

(declare-fun b!6276194 () Bool)

(declare-fun e!3817018 () Bool)

(declare-fun e!3817020 () Bool)

(assert (=> b!6276194 (= e!3817018 e!3817020)))

(declare-fun res!2588632 () Bool)

(assert (=> b!6276194 (=> (not res!2588632) (not e!3817020))))

(assert (=> b!6276194 (= res!2588632 (not lt!2353127))))

(declare-fun bm!531032 () Bool)

(declare-fun call!531037 () Bool)

(assert (=> bm!531032 (= call!531037 (isEmpty!36800 s!2326))))

(declare-fun b!6276195 () Bool)

(declare-fun res!2588633 () Bool)

(declare-fun e!3817019 () Bool)

(assert (=> b!6276195 (=> (not res!2588633) (not e!3817019))))

(assert (=> b!6276195 (= res!2588633 (isEmpty!36800 (tail!11973 s!2326)))))

(declare-fun b!6276196 () Bool)

(declare-fun e!3817022 () Bool)

(assert (=> b!6276196 (= e!3817016 e!3817022)))

(declare-fun c!1137762 () Bool)

(assert (=> b!6276196 (= c!1137762 (is-EmptyLang!16194 r!7292))))

(declare-fun b!6276197 () Bool)

(declare-fun res!2588637 () Bool)

(declare-fun e!3817021 () Bool)

(assert (=> b!6276197 (=> res!2588637 e!3817021)))

(assert (=> b!6276197 (= res!2588637 (not (isEmpty!36800 (tail!11973 s!2326))))))

(declare-fun b!6276198 () Bool)

(assert (=> b!6276198 (= e!3817021 (not (= (head!12888 s!2326) (c!1137631 r!7292))))))

(declare-fun b!6276199 () Bool)

(assert (=> b!6276199 (= e!3817017 (matchR!8377 (derivativeStep!4903 r!7292 (head!12888 s!2326)) (tail!11973 s!2326)))))

(declare-fun b!6276200 () Bool)

(assert (=> b!6276200 (= e!3817022 (not lt!2353127))))

(declare-fun b!6276201 () Bool)

(assert (=> b!6276201 (= e!3817017 (nullable!6187 r!7292))))

(declare-fun b!6276202 () Bool)

(declare-fun res!2588634 () Bool)

(assert (=> b!6276202 (=> res!2588634 e!3817018)))

(assert (=> b!6276202 (= res!2588634 (not (is-ElementMatch!16194 r!7292)))))

(assert (=> b!6276202 (= e!3817022 e!3817018)))

(declare-fun b!6276203 () Bool)

(declare-fun res!2588638 () Bool)

(assert (=> b!6276203 (=> (not res!2588638) (not e!3817019))))

(assert (=> b!6276203 (= res!2588638 (not call!531037))))

(declare-fun b!6276204 () Bool)

(assert (=> b!6276204 (= e!3817019 (= (head!12888 s!2326) (c!1137631 r!7292)))))

(declare-fun b!6276205 () Bool)

(declare-fun res!2588636 () Bool)

(assert (=> b!6276205 (=> res!2588636 e!3817018)))

(assert (=> b!6276205 (= res!2588636 e!3817019)))

(declare-fun res!2588631 () Bool)

(assert (=> b!6276205 (=> (not res!2588631) (not e!3817019))))

(assert (=> b!6276205 (= res!2588631 lt!2353127)))

(declare-fun b!6276206 () Bool)

(assert (=> b!6276206 (= e!3817020 e!3817021)))

(declare-fun res!2588635 () Bool)

(assert (=> b!6276206 (=> res!2588635 e!3817021)))

(assert (=> b!6276206 (= res!2588635 call!531037)))

(declare-fun b!6276207 () Bool)

(assert (=> b!6276207 (= e!3817016 (= lt!2353127 call!531037))))

(assert (= (and d!1970043 c!1137761) b!6276201))

(assert (= (and d!1970043 (not c!1137761)) b!6276199))

(assert (= (and d!1970043 c!1137763) b!6276207))

(assert (= (and d!1970043 (not c!1137763)) b!6276196))

(assert (= (and b!6276196 c!1137762) b!6276200))

(assert (= (and b!6276196 (not c!1137762)) b!6276202))

(assert (= (and b!6276202 (not res!2588634)) b!6276205))

(assert (= (and b!6276205 res!2588631) b!6276203))

(assert (= (and b!6276203 res!2588638) b!6276195))

(assert (= (and b!6276195 res!2588633) b!6276204))

(assert (= (and b!6276205 (not res!2588636)) b!6276194))

(assert (= (and b!6276194 res!2588632) b!6276206))

(assert (= (and b!6276206 (not res!2588635)) b!6276197))

(assert (= (and b!6276197 (not res!2588637)) b!6276198))

(assert (= (or b!6276207 b!6276206 b!6276203) bm!531032))

(declare-fun m!7097718 () Bool)

(assert (=> b!6276201 m!7097718))

(assert (=> b!6276199 m!7097588))

(assert (=> b!6276199 m!7097588))

(declare-fun m!7097720 () Bool)

(assert (=> b!6276199 m!7097720))

(assert (=> b!6276199 m!7097592))

(assert (=> b!6276199 m!7097720))

(assert (=> b!6276199 m!7097592))

(declare-fun m!7097722 () Bool)

(assert (=> b!6276199 m!7097722))

(assert (=> b!6276204 m!7097588))

(assert (=> d!1970043 m!7097584))

(assert (=> d!1970043 m!7097142))

(assert (=> b!6276198 m!7097588))

(assert (=> bm!531032 m!7097584))

(assert (=> b!6276195 m!7097592))

(assert (=> b!6276195 m!7097592))

(assert (=> b!6276195 m!7097622))

(assert (=> b!6276197 m!7097592))

(assert (=> b!6276197 m!7097592))

(assert (=> b!6276197 m!7097622))

(assert (=> b!6275686 d!1970043))

(declare-fun d!1970045 () Bool)

(assert (=> d!1970045 (= (matchR!8377 r!7292 s!2326) (matchRSpec!3295 r!7292 s!2326))))

(declare-fun lt!2353128 () Unit!158107)

(assert (=> d!1970045 (= lt!2353128 (choose!46570 r!7292 s!2326))))

(assert (=> d!1970045 (validRegex!7930 r!7292)))

(assert (=> d!1970045 (= (mainMatchTheorem!3295 r!7292 s!2326) lt!2353128)))

(declare-fun bs!1568142 () Bool)

(assert (= bs!1568142 d!1970045))

(assert (=> bs!1568142 m!7097170))

(assert (=> bs!1568142 m!7097168))

(declare-fun m!7097724 () Bool)

(assert (=> bs!1568142 m!7097724))

(assert (=> bs!1568142 m!7097142))

(assert (=> b!6275686 d!1970045))

(declare-fun d!1970047 () Bool)

(declare-fun nullableFct!2139 (Regex!16194) Bool)

(assert (=> d!1970047 (= (nullable!6187 (regOne!32900 (regOne!32900 r!7292))) (nullableFct!2139 (regOne!32900 (regOne!32900 r!7292))))))

(declare-fun bs!1568143 () Bool)

(assert (= bs!1568143 d!1970047))

(declare-fun m!7097726 () Bool)

(assert (=> bs!1568143 m!7097726))

(assert (=> b!6275687 d!1970047))

(declare-fun b!6276230 () Bool)

(declare-fun e!3817038 () (Set Context!11156))

(declare-fun e!3817040 () (Set Context!11156))

(assert (=> b!6276230 (= e!3817038 e!3817040)))

(declare-fun c!1137774 () Bool)

(assert (=> b!6276230 (= c!1137774 (is-Union!16194 (regTwo!32900 (regOne!32900 r!7292))))))

(declare-fun b!6276231 () Bool)

(declare-fun e!3817037 () (Set Context!11156))

(declare-fun call!531055 () (Set Context!11156))

(assert (=> b!6276231 (= e!3817037 call!531055)))

(declare-fun c!1137778 () Bool)

(declare-fun c!1137776 () Bool)

(declare-fun call!531050 () (Set Context!11156))

(declare-fun bm!531045 () Bool)

(declare-fun call!531054 () List!64882)

(assert (=> bm!531045 (= call!531050 (derivationStepZipperDown!1442 (ite c!1137774 (regTwo!32901 (regTwo!32900 (regOne!32900 r!7292))) (ite c!1137778 (regTwo!32900 (regTwo!32900 (regOne!32900 r!7292))) (ite c!1137776 (regOne!32900 (regTwo!32900 (regOne!32900 r!7292))) (reg!16523 (regTwo!32900 (regOne!32900 r!7292)))))) (ite (or c!1137774 c!1137778) lt!2352903 (Context!11157 call!531054)) (h!71205 s!2326)))))

(declare-fun b!6276232 () Bool)

(declare-fun e!3817035 () (Set Context!11156))

(declare-fun e!3817036 () (Set Context!11156))

(assert (=> b!6276232 (= e!3817035 e!3817036)))

(assert (=> b!6276232 (= c!1137776 (is-Concat!25039 (regTwo!32900 (regOne!32900 r!7292))))))

(declare-fun bm!531046 () Bool)

(declare-fun call!531051 () List!64882)

(declare-fun $colon$colon!2059 (List!64882 Regex!16194) List!64882)

(assert (=> bm!531046 (= call!531051 ($colon$colon!2059 (exprs!6078 lt!2352903) (ite (or c!1137778 c!1137776) (regTwo!32900 (regTwo!32900 (regOne!32900 r!7292))) (regTwo!32900 (regOne!32900 r!7292)))))))

(declare-fun bm!531047 () Bool)

(declare-fun call!531053 () (Set Context!11156))

(assert (=> bm!531047 (= call!531053 call!531050)))

(declare-fun b!6276233 () Bool)

(declare-fun call!531052 () (Set Context!11156))

(assert (=> b!6276233 (= e!3817040 (set.union call!531052 call!531050))))

(declare-fun b!6276234 () Bool)

(assert (=> b!6276234 (= e!3817038 (set.insert lt!2352903 (as set.empty (Set Context!11156))))))

(declare-fun b!6276235 () Bool)

(assert (=> b!6276235 (= e!3817035 (set.union call!531052 call!531053))))

(declare-fun b!6276236 () Bool)

(declare-fun c!1137777 () Bool)

(assert (=> b!6276236 (= c!1137777 (is-Star!16194 (regTwo!32900 (regOne!32900 r!7292))))))

(assert (=> b!6276236 (= e!3817036 e!3817037)))

(declare-fun d!1970049 () Bool)

(declare-fun c!1137775 () Bool)

(assert (=> d!1970049 (= c!1137775 (and (is-ElementMatch!16194 (regTwo!32900 (regOne!32900 r!7292))) (= (c!1137631 (regTwo!32900 (regOne!32900 r!7292))) (h!71205 s!2326))))))

(assert (=> d!1970049 (= (derivationStepZipperDown!1442 (regTwo!32900 (regOne!32900 r!7292)) lt!2352903 (h!71205 s!2326)) e!3817038)))

(declare-fun bm!531048 () Bool)

(assert (=> bm!531048 (= call!531054 call!531051)))

(declare-fun b!6276237 () Bool)

(declare-fun e!3817039 () Bool)

(assert (=> b!6276237 (= c!1137778 e!3817039)))

(declare-fun res!2588641 () Bool)

(assert (=> b!6276237 (=> (not res!2588641) (not e!3817039))))

(assert (=> b!6276237 (= res!2588641 (is-Concat!25039 (regTwo!32900 (regOne!32900 r!7292))))))

(assert (=> b!6276237 (= e!3817040 e!3817035)))

(declare-fun bm!531049 () Bool)

(assert (=> bm!531049 (= call!531055 call!531053)))

(declare-fun b!6276238 () Bool)

(assert (=> b!6276238 (= e!3817036 call!531055)))

(declare-fun b!6276239 () Bool)

(assert (=> b!6276239 (= e!3817037 (as set.empty (Set Context!11156)))))

(declare-fun b!6276240 () Bool)

(assert (=> b!6276240 (= e!3817039 (nullable!6187 (regOne!32900 (regTwo!32900 (regOne!32900 r!7292)))))))

(declare-fun bm!531050 () Bool)

(assert (=> bm!531050 (= call!531052 (derivationStepZipperDown!1442 (ite c!1137774 (regOne!32901 (regTwo!32900 (regOne!32900 r!7292))) (regOne!32900 (regTwo!32900 (regOne!32900 r!7292)))) (ite c!1137774 lt!2352903 (Context!11157 call!531051)) (h!71205 s!2326)))))

(assert (= (and d!1970049 c!1137775) b!6276234))

(assert (= (and d!1970049 (not c!1137775)) b!6276230))

(assert (= (and b!6276230 c!1137774) b!6276233))

(assert (= (and b!6276230 (not c!1137774)) b!6276237))

(assert (= (and b!6276237 res!2588641) b!6276240))

(assert (= (and b!6276237 c!1137778) b!6276235))

(assert (= (and b!6276237 (not c!1137778)) b!6276232))

(assert (= (and b!6276232 c!1137776) b!6276238))

(assert (= (and b!6276232 (not c!1137776)) b!6276236))

(assert (= (and b!6276236 c!1137777) b!6276231))

(assert (= (and b!6276236 (not c!1137777)) b!6276239))

(assert (= (or b!6276238 b!6276231) bm!531048))

(assert (= (or b!6276238 b!6276231) bm!531049))

(assert (= (or b!6276235 bm!531048) bm!531046))

(assert (= (or b!6276235 bm!531049) bm!531047))

(assert (= (or b!6276233 bm!531047) bm!531045))

(assert (= (or b!6276233 b!6276235) bm!531050))

(declare-fun m!7097728 () Bool)

(assert (=> bm!531045 m!7097728))

(declare-fun m!7097730 () Bool)

(assert (=> bm!531050 m!7097730))

(declare-fun m!7097732 () Bool)

(assert (=> b!6276234 m!7097732))

(declare-fun m!7097734 () Bool)

(assert (=> b!6276240 m!7097734))

(declare-fun m!7097736 () Bool)

(assert (=> bm!531046 m!7097736))

(assert (=> b!6275689 d!1970049))

(declare-fun b!6276241 () Bool)

(declare-fun e!3817044 () (Set Context!11156))

(declare-fun e!3817046 () (Set Context!11156))

(assert (=> b!6276241 (= e!3817044 e!3817046)))

(declare-fun c!1137779 () Bool)

(assert (=> b!6276241 (= c!1137779 (is-Union!16194 (regOne!32900 (regOne!32900 r!7292))))))

(declare-fun b!6276242 () Bool)

(declare-fun e!3817043 () (Set Context!11156))

(declare-fun call!531061 () (Set Context!11156))

(assert (=> b!6276242 (= e!3817043 call!531061)))

(declare-fun call!531060 () List!64882)

(declare-fun bm!531051 () Bool)

(declare-fun c!1137781 () Bool)

(declare-fun call!531056 () (Set Context!11156))

(declare-fun c!1137783 () Bool)

(assert (=> bm!531051 (= call!531056 (derivationStepZipperDown!1442 (ite c!1137779 (regTwo!32901 (regOne!32900 (regOne!32900 r!7292))) (ite c!1137783 (regTwo!32900 (regOne!32900 (regOne!32900 r!7292))) (ite c!1137781 (regOne!32900 (regOne!32900 (regOne!32900 r!7292))) (reg!16523 (regOne!32900 (regOne!32900 r!7292)))))) (ite (or c!1137779 c!1137783) lt!2352913 (Context!11157 call!531060)) (h!71205 s!2326)))))

(declare-fun b!6276243 () Bool)

(declare-fun e!3817041 () (Set Context!11156))

(declare-fun e!3817042 () (Set Context!11156))

(assert (=> b!6276243 (= e!3817041 e!3817042)))

(assert (=> b!6276243 (= c!1137781 (is-Concat!25039 (regOne!32900 (regOne!32900 r!7292))))))

(declare-fun call!531057 () List!64882)

(declare-fun bm!531052 () Bool)

(assert (=> bm!531052 (= call!531057 ($colon$colon!2059 (exprs!6078 lt!2352913) (ite (or c!1137783 c!1137781) (regTwo!32900 (regOne!32900 (regOne!32900 r!7292))) (regOne!32900 (regOne!32900 r!7292)))))))

(declare-fun bm!531053 () Bool)

(declare-fun call!531059 () (Set Context!11156))

(assert (=> bm!531053 (= call!531059 call!531056)))

(declare-fun b!6276244 () Bool)

(declare-fun call!531058 () (Set Context!11156))

(assert (=> b!6276244 (= e!3817046 (set.union call!531058 call!531056))))

(declare-fun b!6276245 () Bool)

(assert (=> b!6276245 (= e!3817044 (set.insert lt!2352913 (as set.empty (Set Context!11156))))))

(declare-fun b!6276246 () Bool)

(assert (=> b!6276246 (= e!3817041 (set.union call!531058 call!531059))))

(declare-fun b!6276247 () Bool)

(declare-fun c!1137782 () Bool)

(assert (=> b!6276247 (= c!1137782 (is-Star!16194 (regOne!32900 (regOne!32900 r!7292))))))

(assert (=> b!6276247 (= e!3817042 e!3817043)))

(declare-fun d!1970051 () Bool)

(declare-fun c!1137780 () Bool)

(assert (=> d!1970051 (= c!1137780 (and (is-ElementMatch!16194 (regOne!32900 (regOne!32900 r!7292))) (= (c!1137631 (regOne!32900 (regOne!32900 r!7292))) (h!71205 s!2326))))))

(assert (=> d!1970051 (= (derivationStepZipperDown!1442 (regOne!32900 (regOne!32900 r!7292)) lt!2352913 (h!71205 s!2326)) e!3817044)))

(declare-fun bm!531054 () Bool)

(assert (=> bm!531054 (= call!531060 call!531057)))

(declare-fun b!6276248 () Bool)

(declare-fun e!3817045 () Bool)

(assert (=> b!6276248 (= c!1137783 e!3817045)))

(declare-fun res!2588642 () Bool)

(assert (=> b!6276248 (=> (not res!2588642) (not e!3817045))))

(assert (=> b!6276248 (= res!2588642 (is-Concat!25039 (regOne!32900 (regOne!32900 r!7292))))))

(assert (=> b!6276248 (= e!3817046 e!3817041)))

(declare-fun bm!531055 () Bool)

(assert (=> bm!531055 (= call!531061 call!531059)))

(declare-fun b!6276249 () Bool)

(assert (=> b!6276249 (= e!3817042 call!531061)))

(declare-fun b!6276250 () Bool)

(assert (=> b!6276250 (= e!3817043 (as set.empty (Set Context!11156)))))

(declare-fun b!6276251 () Bool)

(assert (=> b!6276251 (= e!3817045 (nullable!6187 (regOne!32900 (regOne!32900 (regOne!32900 r!7292)))))))

(declare-fun bm!531056 () Bool)

(assert (=> bm!531056 (= call!531058 (derivationStepZipperDown!1442 (ite c!1137779 (regOne!32901 (regOne!32900 (regOne!32900 r!7292))) (regOne!32900 (regOne!32900 (regOne!32900 r!7292)))) (ite c!1137779 lt!2352913 (Context!11157 call!531057)) (h!71205 s!2326)))))

(assert (= (and d!1970051 c!1137780) b!6276245))

(assert (= (and d!1970051 (not c!1137780)) b!6276241))

(assert (= (and b!6276241 c!1137779) b!6276244))

(assert (= (and b!6276241 (not c!1137779)) b!6276248))

(assert (= (and b!6276248 res!2588642) b!6276251))

(assert (= (and b!6276248 c!1137783) b!6276246))

(assert (= (and b!6276248 (not c!1137783)) b!6276243))

(assert (= (and b!6276243 c!1137781) b!6276249))

(assert (= (and b!6276243 (not c!1137781)) b!6276247))

(assert (= (and b!6276247 c!1137782) b!6276242))

(assert (= (and b!6276247 (not c!1137782)) b!6276250))

(assert (= (or b!6276249 b!6276242) bm!531054))

(assert (= (or b!6276249 b!6276242) bm!531055))

(assert (= (or b!6276246 bm!531054) bm!531052))

(assert (= (or b!6276246 bm!531055) bm!531053))

(assert (= (or b!6276244 bm!531053) bm!531051))

(assert (= (or b!6276244 b!6276246) bm!531056))

(declare-fun m!7097738 () Bool)

(assert (=> bm!531051 m!7097738))

(declare-fun m!7097740 () Bool)

(assert (=> bm!531056 m!7097740))

(assert (=> b!6276245 m!7097126))

(declare-fun m!7097742 () Bool)

(assert (=> b!6276251 m!7097742))

(declare-fun m!7097744 () Bool)

(assert (=> bm!531052 m!7097744))

(assert (=> b!6275689 d!1970051))

(declare-fun d!1970053 () Bool)

(assert (=> d!1970053 (= (flatMap!1699 z!1189 lambda!343938) (dynLambda!25620 lambda!343938 (h!71207 zl!343)))))

(declare-fun lt!2353129 () Unit!158107)

(assert (=> d!1970053 (= lt!2353129 (choose!46573 z!1189 (h!71207 zl!343) lambda!343938))))

(assert (=> d!1970053 (= z!1189 (set.insert (h!71207 zl!343) (as set.empty (Set Context!11156))))))

(assert (=> d!1970053 (= (lemmaFlatMapOnSingletonSet!1225 z!1189 (h!71207 zl!343) lambda!343938) lt!2353129)))

(declare-fun b_lambda!239007 () Bool)

(assert (=> (not b_lambda!239007) (not d!1970053)))

(declare-fun bs!1568144 () Bool)

(assert (= bs!1568144 d!1970053))

(assert (=> bs!1568144 m!7097186))

(declare-fun m!7097746 () Bool)

(assert (=> bs!1568144 m!7097746))

(declare-fun m!7097748 () Bool)

(assert (=> bs!1568144 m!7097748))

(declare-fun m!7097750 () Bool)

(assert (=> bs!1568144 m!7097750))

(assert (=> b!6275668 d!1970053))

(declare-fun b!6276252 () Bool)

(declare-fun e!3817050 () (Set Context!11156))

(declare-fun e!3817052 () (Set Context!11156))

(assert (=> b!6276252 (= e!3817050 e!3817052)))

(declare-fun c!1137784 () Bool)

(assert (=> b!6276252 (= c!1137784 (is-Union!16194 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6276253 () Bool)

(declare-fun e!3817049 () (Set Context!11156))

(declare-fun call!531067 () (Set Context!11156))

(assert (=> b!6276253 (= e!3817049 call!531067)))

(declare-fun c!1137788 () Bool)

(declare-fun call!531066 () List!64882)

(declare-fun bm!531057 () Bool)

(declare-fun call!531062 () (Set Context!11156))

(declare-fun c!1137786 () Bool)

(assert (=> bm!531057 (= call!531062 (derivationStepZipperDown!1442 (ite c!1137784 (regTwo!32901 (h!71206 (exprs!6078 (h!71207 zl!343)))) (ite c!1137788 (regTwo!32900 (h!71206 (exprs!6078 (h!71207 zl!343)))) (ite c!1137786 (regOne!32900 (h!71206 (exprs!6078 (h!71207 zl!343)))) (reg!16523 (h!71206 (exprs!6078 (h!71207 zl!343))))))) (ite (or c!1137784 c!1137788) lt!2352903 (Context!11157 call!531066)) (h!71205 s!2326)))))

(declare-fun b!6276254 () Bool)

(declare-fun e!3817047 () (Set Context!11156))

(declare-fun e!3817048 () (Set Context!11156))

(assert (=> b!6276254 (= e!3817047 e!3817048)))

(assert (=> b!6276254 (= c!1137786 (is-Concat!25039 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun bm!531058 () Bool)

(declare-fun call!531063 () List!64882)

(assert (=> bm!531058 (= call!531063 ($colon$colon!2059 (exprs!6078 lt!2352903) (ite (or c!1137788 c!1137786) (regTwo!32900 (h!71206 (exprs!6078 (h!71207 zl!343)))) (h!71206 (exprs!6078 (h!71207 zl!343))))))))

(declare-fun bm!531059 () Bool)

(declare-fun call!531065 () (Set Context!11156))

(assert (=> bm!531059 (= call!531065 call!531062)))

(declare-fun b!6276255 () Bool)

(declare-fun call!531064 () (Set Context!11156))

(assert (=> b!6276255 (= e!3817052 (set.union call!531064 call!531062))))

(declare-fun b!6276256 () Bool)

(assert (=> b!6276256 (= e!3817050 (set.insert lt!2352903 (as set.empty (Set Context!11156))))))

(declare-fun b!6276257 () Bool)

(assert (=> b!6276257 (= e!3817047 (set.union call!531064 call!531065))))

(declare-fun b!6276258 () Bool)

(declare-fun c!1137787 () Bool)

(assert (=> b!6276258 (= c!1137787 (is-Star!16194 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(assert (=> b!6276258 (= e!3817048 e!3817049)))

(declare-fun d!1970055 () Bool)

(declare-fun c!1137785 () Bool)

(assert (=> d!1970055 (= c!1137785 (and (is-ElementMatch!16194 (h!71206 (exprs!6078 (h!71207 zl!343)))) (= (c!1137631 (h!71206 (exprs!6078 (h!71207 zl!343)))) (h!71205 s!2326))))))

(assert (=> d!1970055 (= (derivationStepZipperDown!1442 (h!71206 (exprs!6078 (h!71207 zl!343))) lt!2352903 (h!71205 s!2326)) e!3817050)))

(declare-fun bm!531060 () Bool)

(assert (=> bm!531060 (= call!531066 call!531063)))

(declare-fun b!6276259 () Bool)

(declare-fun e!3817051 () Bool)

(assert (=> b!6276259 (= c!1137788 e!3817051)))

(declare-fun res!2588643 () Bool)

(assert (=> b!6276259 (=> (not res!2588643) (not e!3817051))))

(assert (=> b!6276259 (= res!2588643 (is-Concat!25039 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(assert (=> b!6276259 (= e!3817052 e!3817047)))

(declare-fun bm!531061 () Bool)

(assert (=> bm!531061 (= call!531067 call!531065)))

(declare-fun b!6276260 () Bool)

(assert (=> b!6276260 (= e!3817048 call!531067)))

(declare-fun b!6276261 () Bool)

(assert (=> b!6276261 (= e!3817049 (as set.empty (Set Context!11156)))))

(declare-fun b!6276262 () Bool)

(assert (=> b!6276262 (= e!3817051 (nullable!6187 (regOne!32900 (h!71206 (exprs!6078 (h!71207 zl!343))))))))

(declare-fun bm!531062 () Bool)

(assert (=> bm!531062 (= call!531064 (derivationStepZipperDown!1442 (ite c!1137784 (regOne!32901 (h!71206 (exprs!6078 (h!71207 zl!343)))) (regOne!32900 (h!71206 (exprs!6078 (h!71207 zl!343))))) (ite c!1137784 lt!2352903 (Context!11157 call!531063)) (h!71205 s!2326)))))

(assert (= (and d!1970055 c!1137785) b!6276256))

(assert (= (and d!1970055 (not c!1137785)) b!6276252))

(assert (= (and b!6276252 c!1137784) b!6276255))

(assert (= (and b!6276252 (not c!1137784)) b!6276259))

(assert (= (and b!6276259 res!2588643) b!6276262))

(assert (= (and b!6276259 c!1137788) b!6276257))

(assert (= (and b!6276259 (not c!1137788)) b!6276254))

(assert (= (and b!6276254 c!1137786) b!6276260))

(assert (= (and b!6276254 (not c!1137786)) b!6276258))

(assert (= (and b!6276258 c!1137787) b!6276253))

(assert (= (and b!6276258 (not c!1137787)) b!6276261))

(assert (= (or b!6276260 b!6276253) bm!531060))

(assert (= (or b!6276260 b!6276253) bm!531061))

(assert (= (or b!6276257 bm!531060) bm!531058))

(assert (= (or b!6276257 bm!531061) bm!531059))

(assert (= (or b!6276255 bm!531059) bm!531057))

(assert (= (or b!6276255 b!6276257) bm!531062))

(declare-fun m!7097752 () Bool)

(assert (=> bm!531057 m!7097752))

(declare-fun m!7097754 () Bool)

(assert (=> bm!531062 m!7097754))

(assert (=> b!6276256 m!7097732))

(declare-fun m!7097756 () Bool)

(assert (=> b!6276262 m!7097756))

(declare-fun m!7097758 () Bool)

(assert (=> bm!531058 m!7097758))

(assert (=> b!6275668 d!1970055))

(declare-fun d!1970057 () Bool)

(assert (=> d!1970057 (= (nullable!6187 (h!71206 (exprs!6078 (h!71207 zl!343)))) (nullableFct!2139 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun bs!1568145 () Bool)

(assert (= bs!1568145 d!1970057))

(declare-fun m!7097760 () Bool)

(assert (=> bs!1568145 m!7097760))

(assert (=> b!6275668 d!1970057))

(declare-fun b!6276263 () Bool)

(declare-fun e!3817054 () Bool)

(assert (=> b!6276263 (= e!3817054 (nullable!6187 (h!71206 (exprs!6078 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343)))))))))))

(declare-fun b!6276264 () Bool)

(declare-fun e!3817053 () (Set Context!11156))

(assert (=> b!6276264 (= e!3817053 (as set.empty (Set Context!11156)))))

(declare-fun bm!531063 () Bool)

(declare-fun call!531068 () (Set Context!11156))

(assert (=> bm!531063 (= call!531068 (derivationStepZipperDown!1442 (h!71206 (exprs!6078 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343))))))) (Context!11157 (t!378442 (exprs!6078 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343)))))))) (h!71205 s!2326)))))

(declare-fun b!6276265 () Bool)

(declare-fun e!3817055 () (Set Context!11156))

(assert (=> b!6276265 (= e!3817055 (set.union call!531068 (derivationStepZipperUp!1368 (Context!11157 (t!378442 (exprs!6078 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343)))))))) (h!71205 s!2326))))))

(declare-fun b!6276266 () Bool)

(assert (=> b!6276266 (= e!3817055 e!3817053)))

(declare-fun c!1137789 () Bool)

(assert (=> b!6276266 (= c!1137789 (is-Cons!64758 (exprs!6078 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343))))))))))

(declare-fun d!1970059 () Bool)

(declare-fun c!1137790 () Bool)

(assert (=> d!1970059 (= c!1137790 e!3817054)))

(declare-fun res!2588644 () Bool)

(assert (=> d!1970059 (=> (not res!2588644) (not e!3817054))))

(assert (=> d!1970059 (= res!2588644 (is-Cons!64758 (exprs!6078 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343))))))))))

(assert (=> d!1970059 (= (derivationStepZipperUp!1368 (Context!11157 (Cons!64758 (h!71206 (exprs!6078 (h!71207 zl!343))) (t!378442 (exprs!6078 (h!71207 zl!343))))) (h!71205 s!2326)) e!3817055)))

(declare-fun b!6276267 () Bool)

(assert (=> b!6276267 (= e!3817053 call!531068)))

(assert (= (and d!1970059 res!2588644) b!6276263))

(assert (= (and d!1970059 c!1137790) b!6276265))

(assert (= (and d!1970059 (not c!1137790)) b!6276266))

(assert (= (and b!6276266 c!1137789) b!6276267))

(assert (= (and b!6276266 (not c!1137789)) b!6276264))

(assert (= (or b!6276265 b!6276267) bm!531063))

(declare-fun m!7097762 () Bool)

(assert (=> b!6276263 m!7097762))

(declare-fun m!7097764 () Bool)

(assert (=> bm!531063 m!7097764))

(declare-fun m!7097766 () Bool)

(assert (=> b!6276265 m!7097766))

(assert (=> b!6275668 d!1970059))

(declare-fun b!6276268 () Bool)

(declare-fun e!3817057 () Bool)

(assert (=> b!6276268 (= e!3817057 (nullable!6187 (h!71206 (exprs!6078 (h!71207 zl!343)))))))

(declare-fun b!6276269 () Bool)

(declare-fun e!3817056 () (Set Context!11156))

(assert (=> b!6276269 (= e!3817056 (as set.empty (Set Context!11156)))))

(declare-fun bm!531064 () Bool)

(declare-fun call!531069 () (Set Context!11156))

(assert (=> bm!531064 (= call!531069 (derivationStepZipperDown!1442 (h!71206 (exprs!6078 (h!71207 zl!343))) (Context!11157 (t!378442 (exprs!6078 (h!71207 zl!343)))) (h!71205 s!2326)))))

(declare-fun e!3817058 () (Set Context!11156))

(declare-fun b!6276270 () Bool)

(assert (=> b!6276270 (= e!3817058 (set.union call!531069 (derivationStepZipperUp!1368 (Context!11157 (t!378442 (exprs!6078 (h!71207 zl!343)))) (h!71205 s!2326))))))

(declare-fun b!6276271 () Bool)

(assert (=> b!6276271 (= e!3817058 e!3817056)))

(declare-fun c!1137791 () Bool)

(assert (=> b!6276271 (= c!1137791 (is-Cons!64758 (exprs!6078 (h!71207 zl!343))))))

(declare-fun d!1970061 () Bool)

(declare-fun c!1137792 () Bool)

(assert (=> d!1970061 (= c!1137792 e!3817057)))

(declare-fun res!2588645 () Bool)

(assert (=> d!1970061 (=> (not res!2588645) (not e!3817057))))

(assert (=> d!1970061 (= res!2588645 (is-Cons!64758 (exprs!6078 (h!71207 zl!343))))))

(assert (=> d!1970061 (= (derivationStepZipperUp!1368 (h!71207 zl!343) (h!71205 s!2326)) e!3817058)))

(declare-fun b!6276272 () Bool)

(assert (=> b!6276272 (= e!3817056 call!531069)))

(assert (= (and d!1970061 res!2588645) b!6276268))

(assert (= (and d!1970061 c!1137792) b!6276270))

(assert (= (and d!1970061 (not c!1137792)) b!6276271))

(assert (= (and b!6276271 c!1137791) b!6276272))

(assert (= (and b!6276271 (not c!1137791)) b!6276269))

(assert (= (or b!6276270 b!6276272) bm!531064))

(assert (=> b!6276268 m!7097184))

(declare-fun m!7097768 () Bool)

(assert (=> bm!531064 m!7097768))

(declare-fun m!7097770 () Bool)

(assert (=> b!6276270 m!7097770))

(assert (=> b!6275668 d!1970061))

(declare-fun d!1970063 () Bool)

(assert (=> d!1970063 (= (flatMap!1699 z!1189 lambda!343938) (choose!46572 z!1189 lambda!343938))))

(declare-fun bs!1568146 () Bool)

(assert (= bs!1568146 d!1970063))

(declare-fun m!7097772 () Bool)

(assert (=> bs!1568146 m!7097772))

(assert (=> b!6275668 d!1970063))

(declare-fun b!6276273 () Bool)

(declare-fun e!3817060 () Bool)

(assert (=> b!6276273 (= e!3817060 (nullable!6187 (h!71206 (exprs!6078 lt!2352903))))))

(declare-fun b!6276274 () Bool)

(declare-fun e!3817059 () (Set Context!11156))

(assert (=> b!6276274 (= e!3817059 (as set.empty (Set Context!11156)))))

(declare-fun bm!531065 () Bool)

(declare-fun call!531070 () (Set Context!11156))

(assert (=> bm!531065 (= call!531070 (derivationStepZipperDown!1442 (h!71206 (exprs!6078 lt!2352903)) (Context!11157 (t!378442 (exprs!6078 lt!2352903))) (h!71205 s!2326)))))

(declare-fun e!3817061 () (Set Context!11156))

(declare-fun b!6276275 () Bool)

(assert (=> b!6276275 (= e!3817061 (set.union call!531070 (derivationStepZipperUp!1368 (Context!11157 (t!378442 (exprs!6078 lt!2352903))) (h!71205 s!2326))))))

(declare-fun b!6276276 () Bool)

(assert (=> b!6276276 (= e!3817061 e!3817059)))

(declare-fun c!1137793 () Bool)

(assert (=> b!6276276 (= c!1137793 (is-Cons!64758 (exprs!6078 lt!2352903)))))

(declare-fun d!1970065 () Bool)

(declare-fun c!1137794 () Bool)

(assert (=> d!1970065 (= c!1137794 e!3817060)))

(declare-fun res!2588646 () Bool)

(assert (=> d!1970065 (=> (not res!2588646) (not e!3817060))))

(assert (=> d!1970065 (= res!2588646 (is-Cons!64758 (exprs!6078 lt!2352903)))))

(assert (=> d!1970065 (= (derivationStepZipperUp!1368 lt!2352903 (h!71205 s!2326)) e!3817061)))

(declare-fun b!6276277 () Bool)

(assert (=> b!6276277 (= e!3817059 call!531070)))

(assert (= (and d!1970065 res!2588646) b!6276273))

(assert (= (and d!1970065 c!1137794) b!6276275))

(assert (= (and d!1970065 (not c!1137794)) b!6276276))

(assert (= (and b!6276276 c!1137793) b!6276277))

(assert (= (and b!6276276 (not c!1137793)) b!6276274))

(assert (= (or b!6276275 b!6276277) bm!531065))

(declare-fun m!7097774 () Bool)

(assert (=> b!6276273 m!7097774))

(declare-fun m!7097776 () Bool)

(assert (=> bm!531065 m!7097776))

(declare-fun m!7097778 () Bool)

(assert (=> b!6276275 m!7097778))

(assert (=> b!6275668 d!1970065))

(assert (=> b!6275670 d!1969945))

(declare-fun b!6276278 () Bool)

(declare-fun res!2588650 () Bool)

(declare-fun e!3817062 () Bool)

(assert (=> b!6276278 (=> (not res!2588650) (not e!3817062))))

(declare-fun call!531071 () Bool)

(assert (=> b!6276278 (= res!2588650 call!531071)))

(declare-fun e!3817065 () Bool)

(assert (=> b!6276278 (= e!3817065 e!3817062)))

(declare-fun b!6276279 () Bool)

(declare-fun res!2588648 () Bool)

(declare-fun e!3817066 () Bool)

(assert (=> b!6276279 (=> res!2588648 e!3817066)))

(assert (=> b!6276279 (= res!2588648 (not (is-Concat!25039 lt!2352916)))))

(assert (=> b!6276279 (= e!3817065 e!3817066)))

(declare-fun b!6276280 () Bool)

(declare-fun e!3817063 () Bool)

(declare-fun call!531072 () Bool)

(assert (=> b!6276280 (= e!3817063 call!531072)))

(declare-fun b!6276281 () Bool)

(assert (=> b!6276281 (= e!3817066 e!3817063)))

(declare-fun res!2588649 () Bool)

(assert (=> b!6276281 (=> (not res!2588649) (not e!3817063))))

(assert (=> b!6276281 (= res!2588649 call!531071)))

(declare-fun bm!531066 () Bool)

(declare-fun c!1137795 () Bool)

(assert (=> bm!531066 (= call!531071 (validRegex!7930 (ite c!1137795 (regOne!32901 lt!2352916) (regOne!32900 lt!2352916))))))

(declare-fun call!531073 () Bool)

(declare-fun c!1137796 () Bool)

(declare-fun bm!531067 () Bool)

(assert (=> bm!531067 (= call!531073 (validRegex!7930 (ite c!1137796 (reg!16523 lt!2352916) (ite c!1137795 (regTwo!32901 lt!2352916) (regTwo!32900 lt!2352916)))))))

(declare-fun b!6276282 () Bool)

(declare-fun e!3817068 () Bool)

(declare-fun e!3817067 () Bool)

(assert (=> b!6276282 (= e!3817068 e!3817067)))

(assert (=> b!6276282 (= c!1137796 (is-Star!16194 lt!2352916))))

(declare-fun b!6276284 () Bool)

(declare-fun e!3817064 () Bool)

(assert (=> b!6276284 (= e!3817064 call!531073)))

(declare-fun b!6276285 () Bool)

(assert (=> b!6276285 (= e!3817067 e!3817064)))

(declare-fun res!2588651 () Bool)

(assert (=> b!6276285 (= res!2588651 (not (nullable!6187 (reg!16523 lt!2352916))))))

(assert (=> b!6276285 (=> (not res!2588651) (not e!3817064))))

(declare-fun bm!531068 () Bool)

(assert (=> bm!531068 (= call!531072 call!531073)))

(declare-fun b!6276286 () Bool)

(assert (=> b!6276286 (= e!3817067 e!3817065)))

(assert (=> b!6276286 (= c!1137795 (is-Union!16194 lt!2352916))))

(declare-fun b!6276283 () Bool)

(assert (=> b!6276283 (= e!3817062 call!531072)))

(declare-fun d!1970067 () Bool)

(declare-fun res!2588647 () Bool)

(assert (=> d!1970067 (=> res!2588647 e!3817068)))

(assert (=> d!1970067 (= res!2588647 (is-ElementMatch!16194 lt!2352916))))

(assert (=> d!1970067 (= (validRegex!7930 lt!2352916) e!3817068)))

(assert (= (and d!1970067 (not res!2588647)) b!6276282))

(assert (= (and b!6276282 c!1137796) b!6276285))

(assert (= (and b!6276282 (not c!1137796)) b!6276286))

(assert (= (and b!6276285 res!2588651) b!6276284))

(assert (= (and b!6276286 c!1137795) b!6276278))

(assert (= (and b!6276286 (not c!1137795)) b!6276279))

(assert (= (and b!6276278 res!2588650) b!6276283))

(assert (= (and b!6276279 (not res!2588648)) b!6276281))

(assert (= (and b!6276281 res!2588649) b!6276280))

(assert (= (or b!6276283 b!6276280) bm!531068))

(assert (= (or b!6276278 b!6276281) bm!531066))

(assert (= (or b!6276284 bm!531068) bm!531067))

(declare-fun m!7097780 () Bool)

(assert (=> bm!531066 m!7097780))

(declare-fun m!7097782 () Bool)

(assert (=> bm!531067 m!7097782))

(declare-fun m!7097784 () Bool)

(assert (=> b!6276285 m!7097784))

(assert (=> b!6275690 d!1970067))

(declare-fun e!3817069 () Bool)

(declare-fun d!1970069 () Bool)

(assert (=> d!1970069 (= (matchZipper!2206 (set.union lt!2352918 lt!2352901) (t!378441 s!2326)) e!3817069)))

(declare-fun res!2588652 () Bool)

(assert (=> d!1970069 (=> res!2588652 e!3817069)))

(assert (=> d!1970069 (= res!2588652 (matchZipper!2206 lt!2352918 (t!378441 s!2326)))))

(declare-fun lt!2353130 () Unit!158107)

(assert (=> d!1970069 (= lt!2353130 (choose!46569 lt!2352918 lt!2352901 (t!378441 s!2326)))))

(assert (=> d!1970069 (= (lemmaZipperConcatMatchesSameAsBothZippers!1025 lt!2352918 lt!2352901 (t!378441 s!2326)) lt!2353130)))

(declare-fun b!6276287 () Bool)

(assert (=> b!6276287 (= e!3817069 (matchZipper!2206 lt!2352901 (t!378441 s!2326)))))

(assert (= (and d!1970069 (not res!2588652)) b!6276287))

(declare-fun m!7097786 () Bool)

(assert (=> d!1970069 m!7097786))

(assert (=> d!1970069 m!7097138))

(declare-fun m!7097788 () Bool)

(assert (=> d!1970069 m!7097788))

(assert (=> b!6276287 m!7097174))

(assert (=> b!6275669 d!1970069))

(declare-fun d!1970071 () Bool)

(assert (=> d!1970071 (= (flatMap!1699 lt!2352931 lambda!343938) (choose!46572 lt!2352931 lambda!343938))))

(declare-fun bs!1568147 () Bool)

(assert (= bs!1568147 d!1970071))

(declare-fun m!7097790 () Bool)

(assert (=> bs!1568147 m!7097790))

(assert (=> b!6275669 d!1970071))

(assert (=> b!6275669 d!1970027))

(declare-fun d!1970073 () Bool)

(assert (=> d!1970073 (= (flatMap!1699 lt!2352931 lambda!343938) (dynLambda!25620 lambda!343938 lt!2352913))))

(declare-fun lt!2353131 () Unit!158107)

(assert (=> d!1970073 (= lt!2353131 (choose!46573 lt!2352931 lt!2352913 lambda!343938))))

(assert (=> d!1970073 (= lt!2352931 (set.insert lt!2352913 (as set.empty (Set Context!11156))))))

(assert (=> d!1970073 (= (lemmaFlatMapOnSingletonSet!1225 lt!2352931 lt!2352913 lambda!343938) lt!2353131)))

(declare-fun b_lambda!239009 () Bool)

(assert (=> (not b_lambda!239009) (not d!1970073)))

(declare-fun bs!1568148 () Bool)

(assert (= bs!1568148 d!1970073))

(assert (=> bs!1568148 m!7097252))

(declare-fun m!7097792 () Bool)

(assert (=> bs!1568148 m!7097792))

(declare-fun m!7097794 () Bool)

(assert (=> bs!1568148 m!7097794))

(assert (=> bs!1568148 m!7097126))

(assert (=> b!6275669 d!1970073))

(declare-fun d!1970075 () Bool)

(declare-fun c!1137797 () Bool)

(assert (=> d!1970075 (= c!1137797 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3817070 () Bool)

(assert (=> d!1970075 (= (matchZipper!2206 lt!2352907 (t!378441 s!2326)) e!3817070)))

(declare-fun b!6276288 () Bool)

(assert (=> b!6276288 (= e!3817070 (nullableZipper!1964 lt!2352907))))

(declare-fun b!6276289 () Bool)

(assert (=> b!6276289 (= e!3817070 (matchZipper!2206 (derivationStepZipper!2160 lt!2352907 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1970075 c!1137797) b!6276288))

(assert (= (and d!1970075 (not c!1137797)) b!6276289))

(assert (=> d!1970075 m!7097400))

(declare-fun m!7097796 () Bool)

(assert (=> b!6276288 m!7097796))

(assert (=> b!6276289 m!7097404))

(assert (=> b!6276289 m!7097404))

(declare-fun m!7097798 () Bool)

(assert (=> b!6276289 m!7097798))

(assert (=> b!6276289 m!7097408))

(assert (=> b!6276289 m!7097798))

(assert (=> b!6276289 m!7097408))

(declare-fun m!7097800 () Bool)

(assert (=> b!6276289 m!7097800))

(assert (=> b!6275669 d!1970075))

(declare-fun d!1970077 () Bool)

(declare-fun c!1137798 () Bool)

(assert (=> d!1970077 (= c!1137798 (isEmpty!36800 (t!378441 s!2326)))))

(declare-fun e!3817071 () Bool)

(assert (=> d!1970077 (= (matchZipper!2206 lt!2352917 (t!378441 s!2326)) e!3817071)))

(declare-fun b!6276290 () Bool)

(assert (=> b!6276290 (= e!3817071 (nullableZipper!1964 lt!2352917))))

(declare-fun b!6276291 () Bool)

(assert (=> b!6276291 (= e!3817071 (matchZipper!2206 (derivationStepZipper!2160 lt!2352917 (head!12888 (t!378441 s!2326))) (tail!11973 (t!378441 s!2326))))))

(assert (= (and d!1970077 c!1137798) b!6276290))

(assert (= (and d!1970077 (not c!1137798)) b!6276291))

(assert (=> d!1970077 m!7097400))

(declare-fun m!7097802 () Bool)

(assert (=> b!6276290 m!7097802))

(assert (=> b!6276291 m!7097404))

(assert (=> b!6276291 m!7097404))

(declare-fun m!7097804 () Bool)

(assert (=> b!6276291 m!7097804))

(assert (=> b!6276291 m!7097408))

(assert (=> b!6276291 m!7097804))

(assert (=> b!6276291 m!7097408))

(declare-fun m!7097806 () Bool)

(assert (=> b!6276291 m!7097806))

(assert (=> b!6275669 d!1970077))

(declare-fun condSetEmpty!42695 () Bool)

(assert (=> setNonEmpty!42689 (= condSetEmpty!42695 (= setRest!42689 (as set.empty (Set Context!11156))))))

(declare-fun setRes!42695 () Bool)

(assert (=> setNonEmpty!42689 (= tp!1749738 setRes!42695)))

(declare-fun setIsEmpty!42695 () Bool)

(assert (=> setIsEmpty!42695 setRes!42695))

(declare-fun e!3817074 () Bool)

(declare-fun setElem!42695 () Context!11156)

(declare-fun tp!1749776 () Bool)

(declare-fun setNonEmpty!42695 () Bool)

(assert (=> setNonEmpty!42695 (= setRes!42695 (and tp!1749776 (inv!83733 setElem!42695) e!3817074))))

(declare-fun setRest!42695 () (Set Context!11156))

(assert (=> setNonEmpty!42695 (= setRest!42689 (set.union (set.insert setElem!42695 (as set.empty (Set Context!11156))) setRest!42695))))

(declare-fun b!6276296 () Bool)

(declare-fun tp!1749775 () Bool)

(assert (=> b!6276296 (= e!3817074 tp!1749775)))

(assert (= (and setNonEmpty!42689 condSetEmpty!42695) setIsEmpty!42695))

(assert (= (and setNonEmpty!42689 (not condSetEmpty!42695)) setNonEmpty!42695))

(assert (= setNonEmpty!42695 b!6276296))

(declare-fun m!7097808 () Bool)

(assert (=> setNonEmpty!42695 m!7097808))

(declare-fun b!6276309 () Bool)

(declare-fun e!3817077 () Bool)

(declare-fun tp!1749788 () Bool)

(assert (=> b!6276309 (= e!3817077 tp!1749788)))

(declare-fun b!6276308 () Bool)

(declare-fun tp!1749790 () Bool)

(declare-fun tp!1749787 () Bool)

(assert (=> b!6276308 (= e!3817077 (and tp!1749790 tp!1749787))))

(assert (=> b!6275695 (= tp!1749733 e!3817077)))

(declare-fun b!6276310 () Bool)

(declare-fun tp!1749789 () Bool)

(declare-fun tp!1749791 () Bool)

(assert (=> b!6276310 (= e!3817077 (and tp!1749789 tp!1749791))))

(declare-fun b!6276307 () Bool)

(assert (=> b!6276307 (= e!3817077 tp_is_empty!41641)))

(assert (= (and b!6275695 (is-ElementMatch!16194 (regOne!32901 r!7292))) b!6276307))

(assert (= (and b!6275695 (is-Concat!25039 (regOne!32901 r!7292))) b!6276308))

(assert (= (and b!6275695 (is-Star!16194 (regOne!32901 r!7292))) b!6276309))

(assert (= (and b!6275695 (is-Union!16194 (regOne!32901 r!7292))) b!6276310))

(declare-fun b!6276313 () Bool)

(declare-fun e!3817078 () Bool)

(declare-fun tp!1749793 () Bool)

(assert (=> b!6276313 (= e!3817078 tp!1749793)))

(declare-fun b!6276312 () Bool)

(declare-fun tp!1749795 () Bool)

(declare-fun tp!1749792 () Bool)

(assert (=> b!6276312 (= e!3817078 (and tp!1749795 tp!1749792))))

(assert (=> b!6275695 (= tp!1749737 e!3817078)))

(declare-fun b!6276314 () Bool)

(declare-fun tp!1749794 () Bool)

(declare-fun tp!1749796 () Bool)

(assert (=> b!6276314 (= e!3817078 (and tp!1749794 tp!1749796))))

(declare-fun b!6276311 () Bool)

(assert (=> b!6276311 (= e!3817078 tp_is_empty!41641)))

(assert (= (and b!6275695 (is-ElementMatch!16194 (regTwo!32901 r!7292))) b!6276311))

(assert (= (and b!6275695 (is-Concat!25039 (regTwo!32901 r!7292))) b!6276312))

(assert (= (and b!6275695 (is-Star!16194 (regTwo!32901 r!7292))) b!6276313))

(assert (= (and b!6275695 (is-Union!16194 (regTwo!32901 r!7292))) b!6276314))

(declare-fun b!6276317 () Bool)

(declare-fun e!3817079 () Bool)

(declare-fun tp!1749798 () Bool)

(assert (=> b!6276317 (= e!3817079 tp!1749798)))

(declare-fun b!6276316 () Bool)

(declare-fun tp!1749800 () Bool)

(declare-fun tp!1749797 () Bool)

(assert (=> b!6276316 (= e!3817079 (and tp!1749800 tp!1749797))))

(assert (=> b!6275678 (= tp!1749734 e!3817079)))

(declare-fun b!6276318 () Bool)

(declare-fun tp!1749799 () Bool)

(declare-fun tp!1749801 () Bool)

(assert (=> b!6276318 (= e!3817079 (and tp!1749799 tp!1749801))))

(declare-fun b!6276315 () Bool)

(assert (=> b!6276315 (= e!3817079 tp_is_empty!41641)))

(assert (= (and b!6275678 (is-ElementMatch!16194 (regOne!32900 r!7292))) b!6276315))

(assert (= (and b!6275678 (is-Concat!25039 (regOne!32900 r!7292))) b!6276316))

(assert (= (and b!6275678 (is-Star!16194 (regOne!32900 r!7292))) b!6276317))

(assert (= (and b!6275678 (is-Union!16194 (regOne!32900 r!7292))) b!6276318))

(declare-fun b!6276321 () Bool)

(declare-fun e!3817080 () Bool)

(declare-fun tp!1749803 () Bool)

(assert (=> b!6276321 (= e!3817080 tp!1749803)))

(declare-fun b!6276320 () Bool)

(declare-fun tp!1749805 () Bool)

(declare-fun tp!1749802 () Bool)

(assert (=> b!6276320 (= e!3817080 (and tp!1749805 tp!1749802))))

(assert (=> b!6275678 (= tp!1749736 e!3817080)))

(declare-fun b!6276322 () Bool)

(declare-fun tp!1749804 () Bool)

(declare-fun tp!1749806 () Bool)

(assert (=> b!6276322 (= e!3817080 (and tp!1749804 tp!1749806))))

(declare-fun b!6276319 () Bool)

(assert (=> b!6276319 (= e!3817080 tp_is_empty!41641)))

(assert (= (and b!6275678 (is-ElementMatch!16194 (regTwo!32900 r!7292))) b!6276319))

(assert (= (and b!6275678 (is-Concat!25039 (regTwo!32900 r!7292))) b!6276320))

(assert (= (and b!6275678 (is-Star!16194 (regTwo!32900 r!7292))) b!6276321))

(assert (= (and b!6275678 (is-Union!16194 (regTwo!32900 r!7292))) b!6276322))

(declare-fun b!6276327 () Bool)

(declare-fun e!3817083 () Bool)

(declare-fun tp!1749809 () Bool)

(assert (=> b!6276327 (= e!3817083 (and tp_is_empty!41641 tp!1749809))))

(assert (=> b!6275688 (= tp!1749739 e!3817083)))

(assert (= (and b!6275688 (is-Cons!64757 (t!378441 s!2326))) b!6276327))

(declare-fun b!6276330 () Bool)

(declare-fun e!3817084 () Bool)

(declare-fun tp!1749811 () Bool)

(assert (=> b!6276330 (= e!3817084 tp!1749811)))

(declare-fun b!6276329 () Bool)

(declare-fun tp!1749813 () Bool)

(declare-fun tp!1749810 () Bool)

(assert (=> b!6276329 (= e!3817084 (and tp!1749813 tp!1749810))))

(assert (=> b!6275703 (= tp!1749740 e!3817084)))

(declare-fun b!6276331 () Bool)

(declare-fun tp!1749812 () Bool)

(declare-fun tp!1749814 () Bool)

(assert (=> b!6276331 (= e!3817084 (and tp!1749812 tp!1749814))))

(declare-fun b!6276328 () Bool)

(assert (=> b!6276328 (= e!3817084 tp_is_empty!41641)))

(assert (= (and b!6275703 (is-ElementMatch!16194 (reg!16523 r!7292))) b!6276328))

(assert (= (and b!6275703 (is-Concat!25039 (reg!16523 r!7292))) b!6276329))

(assert (= (and b!6275703 (is-Star!16194 (reg!16523 r!7292))) b!6276330))

(assert (= (and b!6275703 (is-Union!16194 (reg!16523 r!7292))) b!6276331))

(declare-fun b!6276336 () Bool)

(declare-fun e!3817087 () Bool)

(declare-fun tp!1749819 () Bool)

(declare-fun tp!1749820 () Bool)

(assert (=> b!6276336 (= e!3817087 (and tp!1749819 tp!1749820))))

(assert (=> b!6275679 (= tp!1749735 e!3817087)))

(assert (= (and b!6275679 (is-Cons!64758 (exprs!6078 setElem!42689))) b!6276336))

(declare-fun b!6276337 () Bool)

(declare-fun e!3817088 () Bool)

(declare-fun tp!1749821 () Bool)

(declare-fun tp!1749822 () Bool)

(assert (=> b!6276337 (= e!3817088 (and tp!1749821 tp!1749822))))

(assert (=> b!6275694 (= tp!1749732 e!3817088)))

(assert (= (and b!6275694 (is-Cons!64758 (exprs!6078 (h!71207 zl!343)))) b!6276337))

(declare-fun b!6276345 () Bool)

(declare-fun e!3817094 () Bool)

(declare-fun tp!1749827 () Bool)

(assert (=> b!6276345 (= e!3817094 tp!1749827)))

(declare-fun b!6276344 () Bool)

(declare-fun e!3817093 () Bool)

(declare-fun tp!1749828 () Bool)

(assert (=> b!6276344 (= e!3817093 (and (inv!83733 (h!71207 (t!378443 zl!343))) e!3817094 tp!1749828))))

(assert (=> b!6275684 (= tp!1749731 e!3817093)))

(assert (= b!6276344 b!6276345))

(assert (= (and b!6275684 (is-Cons!64759 (t!378443 zl!343))) b!6276344))

(declare-fun m!7097810 () Bool)

(assert (=> b!6276344 m!7097810))

(declare-fun b_lambda!239011 () Bool)

(assert (= b_lambda!239007 (or b!6275668 b_lambda!239011)))

(declare-fun bs!1568149 () Bool)

(declare-fun d!1970079 () Bool)

(assert (= bs!1568149 (and d!1970079 b!6275668)))

(assert (=> bs!1568149 (= (dynLambda!25620 lambda!343938 (h!71207 zl!343)) (derivationStepZipperUp!1368 (h!71207 zl!343) (h!71205 s!2326)))))

(assert (=> bs!1568149 m!7097180))

(assert (=> d!1970053 d!1970079))

(declare-fun b_lambda!239013 () Bool)

(assert (= b_lambda!239009 (or b!6275668 b_lambda!239013)))

(declare-fun bs!1568150 () Bool)

(declare-fun d!1970081 () Bool)

(assert (= bs!1568150 (and d!1970081 b!6275668)))

(assert (=> bs!1568150 (= (dynLambda!25620 lambda!343938 lt!2352913) (derivationStepZipperUp!1368 lt!2352913 (h!71205 s!2326)))))

(assert (=> bs!1568150 m!7097130))

(assert (=> d!1970073 d!1970081))

(declare-fun b_lambda!239015 () Bool)

(assert (= b_lambda!239005 (or b!6275668 b_lambda!239015)))

(declare-fun bs!1568151 () Bool)

(declare-fun d!1970083 () Bool)

(assert (= bs!1568151 (and d!1970083 b!6275668)))

(assert (=> bs!1568151 (= (dynLambda!25620 lambda!343938 lt!2352936) (derivationStepZipperUp!1368 lt!2352936 (h!71205 s!2326)))))

(assert (=> bs!1568151 m!7097128))

(assert (=> d!1970033 d!1970083))

(push 1)

(assert (not b!6275982))

(assert (not d!1969953))

(assert (not b!6276314))

(assert (not b!6275989))

(assert (not b!6275980))

(assert (not bm!531032))

(assert (not b!6276288))

(assert tp_is_empty!41641)

(assert (not bm!531063))

(assert (not d!1969967))

(assert (not d!1970005))

(assert (not bm!531045))

(assert (not b!6276034))

(assert (not b!6275942))

(assert (not b!6275977))

(assert (not b!6275870))

(assert (not d!1969989))

(assert (not b!6276131))

(assert (not b!6275981))

(assert (not b!6276135))

(assert (not b!6275974))

(assert (not b!6276240))

(assert (not b!6276336))

(assert (not b!6275900))

(assert (not bm!531046))

(assert (not b!6275978))

(assert (not bm!531031))

(assert (not b!6276085))

(assert (not d!1970073))

(assert (not d!1969995))

(assert (not b!6276204))

(assert (not b!6275885))

(assert (not b!6276090))

(assert (not b!6276337))

(assert (not d!1970009))

(assert (not d!1969997))

(assert (not d!1970029))

(assert (not b!6275914))

(assert (not b!6276290))

(assert (not d!1969945))

(assert (not b!6276317))

(assert (not b!6276087))

(assert (not b!6276101))

(assert (not b!6275898))

(assert (not b!6276151))

(assert (not b!6276308))

(assert (not b!6275871))

(assert (not bm!531022))

(assert (not b!6276153))

(assert (not b!6276138))

(assert (not b!6276262))

(assert (not b!6275909))

(assert (not b!6276320))

(assert (not b!6276100))

(assert (not b!6276165))

(assert (not b!6276197))

(assert (not bm!531051))

(assert (not b!6276091))

(assert (not d!1970075))

(assert (not d!1969983))

(assert (not b_lambda!239011))

(assert (not b!6275891))

(assert (not d!1970011))

(assert (not b!6276096))

(assert (not d!1970001))

(assert (not d!1970077))

(assert (not b!6276033))

(assert (not bm!531010))

(assert (not d!1969981))

(assert (not bm!531052))

(assert (not b!6275993))

(assert (not d!1969969))

(assert (not b!6275889))

(assert (not b!6275990))

(assert (not b!6276195))

(assert (not d!1970019))

(assert (not b!6276287))

(assert (not b!6276134))

(assert (not d!1970069))

(assert (not b!6275998))

(assert (not b!6276327))

(assert (not b!6276198))

(assert (not bm!531066))

(assert (not b!6276273))

(assert (not bm!531028))

(assert (not b!6275937))

(assert (not d!1970031))

(assert (not b!6275946))

(assert (not d!1969999))

(assert (not b!6275999))

(assert (not b!6276296))

(assert (not b!6275897))

(assert (not bm!531021))

(assert (not b!6275912))

(assert (not b!6275907))

(assert (not d!1969979))

(assert (not d!1969959))

(assert (not d!1969957))

(assert (not d!1970045))

(assert (not bm!531057))

(assert (not d!1970063))

(assert (not b!6276199))

(assert (not d!1969955))

(assert (not b!6275938))

(assert (not b_lambda!239013))

(assert (not b!6275988))

(assert (not b!6276275))

(assert (not b!6275896))

(assert (not b!6275994))

(assert (not bm!531064))

(assert (not setNonEmpty!42695))

(assert (not b!6276036))

(assert (not bs!1568150))

(assert (not b!6276285))

(assert (not d!1969991))

(assert (not b!6276030))

(assert (not b!6276079))

(assert (not b!6276310))

(assert (not b!6275944))

(assert (not b!6276289))

(assert (not b!6275886))

(assert (not b!6276187))

(assert (not d!1969947))

(assert (not b!6275987))

(assert (not b!6276345))

(assert (not bm!531067))

(assert (not bm!531058))

(assert (not b!6276089))

(assert (not b!6276265))

(assert (not d!1970071))

(assert (not d!1970057))

(assert (not d!1969961))

(assert (not b!6275975))

(assert (not d!1969949))

(assert (not b!6276316))

(assert (not d!1969965))

(assert (not b!6276109))

(assert (not b!6276309))

(assert (not b!6275945))

(assert (not d!1969971))

(assert (not bm!531065))

(assert (not b!6275972))

(assert (not b!6276201))

(assert (not b!6276251))

(assert (not b!6275939))

(assert (not b!6275844))

(assert (not b!6275872))

(assert (not b!6276318))

(assert (not b!6276000))

(assert (not b!6276312))

(assert (not b!6276172))

(assert (not b!6276167))

(assert (not bm!531056))

(assert (not b!6276139))

(assert (not d!1970043))

(assert (not b!6276039))

(assert (not b!6275864))

(assert (not b!6276268))

(assert (not b!6276133))

(assert (not b!6276136))

(assert (not bm!531024))

(assert (not b!6275890))

(assert (not b!6276291))

(assert (not b!6275986))

(assert (not d!1970003))

(assert (not d!1970039))

(assert (not b_lambda!239015))

(assert (not b!6276329))

(assert (not d!1970033))

(assert (not b!6275869))

(assert (not b!6275936))

(assert (not b!6275845))

(assert (not d!1970047))

(assert (not bm!531062))

(assert (not d!1969973))

(assert (not bs!1568149))

(assert (not d!1970017))

(assert (not d!1969951))

(assert (not b!6275995))

(assert (not b!6276093))

(assert (not b!6276179))

(assert (not bm!531029))

(assert (not b!6276263))

(assert (not d!1969963))

(assert (not d!1970053))

(assert (not b!6275866))

(assert (not b!6275943))

(assert (not b!6276181))

(assert (not b!6276331))

(assert (not b!6275992))

(assert (not bs!1568151))

(assert (not bm!531050))

(assert (not bm!531023))

(assert (not b!6276270))

(assert (not b!6276032))

(assert (not b!6276344))

(assert (not b!6276330))

(assert (not b!6276322))

(assert (not d!1969993))

(assert (not bm!531015))

(assert (not b!6276145))

(assert (not bm!531030))

(assert (not bm!531020))

(assert (not b!6275899))

(assert (not b!6276321))

(assert (not b!6275976))

(assert (not b!6275983))

(assert (not b!6276170))

(assert (not b!6276313))

(assert (not b!6276193))

(assert (not d!1970015))

(assert (not bm!531011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

