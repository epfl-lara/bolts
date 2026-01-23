; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!642050 () Bool)

(assert start!642050)

(declare-fun b!6552081 () Bool)

(assert (=> b!6552081 true))

(assert (=> b!6552081 true))

(declare-fun lambda!363998 () Int)

(declare-fun lambda!363997 () Int)

(assert (=> b!6552081 (not (= lambda!363998 lambda!363997))))

(assert (=> b!6552081 true))

(assert (=> b!6552081 true))

(declare-fun b!6552102 () Bool)

(assert (=> b!6552102 true))

(declare-fun b!6552065 () Bool)

(assert (=> b!6552065 true))

(declare-fun bs!1672507 () Bool)

(declare-fun b!6552070 () Bool)

(assert (= bs!1672507 (and b!6552070 b!6552081)))

(declare-datatypes ((C!33124 0))(
  ( (C!33125 (val!26264 Int)) )
))
(declare-datatypes ((Regex!16427 0))(
  ( (ElementMatch!16427 (c!1203556 C!33124)) (Concat!25272 (regOne!33366 Regex!16427) (regTwo!33366 Regex!16427)) (EmptyExpr!16427) (Star!16427 (reg!16756 Regex!16427)) (EmptyLang!16427) (Union!16427 (regOne!33367 Regex!16427) (regTwo!33367 Regex!16427)) )
))
(declare-fun lt!2402883 () Regex!16427)

(declare-fun r!7292 () Regex!16427)

(declare-fun lambda!364002 () Int)

(assert (=> bs!1672507 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364002 lambda!363997))))

(assert (=> bs!1672507 (not (= lambda!364002 lambda!363998))))

(assert (=> b!6552070 true))

(assert (=> b!6552070 true))

(assert (=> b!6552070 true))

(declare-fun lambda!364003 () Int)

(assert (=> bs!1672507 (not (= lambda!364003 lambda!363997))))

(assert (=> bs!1672507 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364003 lambda!363998))))

(assert (=> b!6552070 (not (= lambda!364003 lambda!364002))))

(assert (=> b!6552070 true))

(assert (=> b!6552070 true))

(assert (=> b!6552070 true))

(declare-fun b!6552057 () Bool)

(declare-fun e!3966852 () Bool)

(declare-fun lt!2402922 () Bool)

(assert (=> b!6552057 (= e!3966852 lt!2402922)))

(declare-fun b!6552058 () Bool)

(declare-fun res!2688155 () Bool)

(declare-fun e!3966859 () Bool)

(assert (=> b!6552058 (=> res!2688155 e!3966859)))

(declare-datatypes ((List!65580 0))(
  ( (Nil!65456) (Cons!65456 (h!71904 Regex!16427) (t!379222 List!65580)) )
))
(declare-datatypes ((Context!11622 0))(
  ( (Context!11623 (exprs!6311 List!65580)) )
))
(declare-datatypes ((List!65581 0))(
  ( (Nil!65457) (Cons!65457 (h!71905 Context!11622) (t!379223 List!65581)) )
))
(declare-fun zl!343 () List!65581)

(declare-fun isEmpty!37685 (List!65580) Bool)

(assert (=> b!6552058 (= res!2688155 (isEmpty!37685 (t!379222 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6552059 () Bool)

(declare-fun e!3966839 () Bool)

(declare-fun e!3966862 () Bool)

(assert (=> b!6552059 (= e!3966839 e!3966862)))

(declare-fun res!2688131 () Bool)

(assert (=> b!6552059 (=> res!2688131 e!3966862)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2402886 () (InoxSet Context!11622))

(declare-fun lt!2402919 () (InoxSet Context!11622))

(assert (=> b!6552059 (= res!2688131 (not (= lt!2402886 lt!2402919)))))

(declare-fun lt!2402894 () (InoxSet Context!11622))

(declare-datatypes ((List!65582 0))(
  ( (Nil!65458) (Cons!65458 (h!71906 C!33124) (t!379224 List!65582)) )
))
(declare-fun s!2326 () List!65582)

(declare-fun lambda!363999 () Int)

(declare-fun lt!2402912 () Context!11622)

(declare-fun flatMap!1932 ((InoxSet Context!11622) Int) (InoxSet Context!11622))

(declare-fun derivationStepZipperUp!1601 (Context!11622 C!33124) (InoxSet Context!11622))

(assert (=> b!6552059 (= (flatMap!1932 lt!2402894 lambda!363999) (derivationStepZipperUp!1601 lt!2402912 (h!71906 s!2326)))))

(declare-datatypes ((Unit!159043 0))(
  ( (Unit!159044) )
))
(declare-fun lt!2402874 () Unit!159043)

(declare-fun lemmaFlatMapOnSingletonSet!1458 ((InoxSet Context!11622) Context!11622 Int) Unit!159043)

(assert (=> b!6552059 (= lt!2402874 (lemmaFlatMapOnSingletonSet!1458 lt!2402894 lt!2402912 lambda!363999))))

(declare-fun lt!2402921 () (InoxSet Context!11622))

(assert (=> b!6552059 (= lt!2402921 (derivationStepZipperUp!1601 lt!2402912 (h!71906 s!2326)))))

(declare-fun derivationStepZipper!2393 ((InoxSet Context!11622) C!33124) (InoxSet Context!11622))

(assert (=> b!6552059 (= lt!2402886 (derivationStepZipper!2393 lt!2402894 (h!71906 s!2326)))))

(assert (=> b!6552059 (= lt!2402894 (store ((as const (Array Context!11622 Bool)) false) lt!2402912 true))))

(declare-fun lt!2402888 () List!65580)

(assert (=> b!6552059 (= lt!2402912 (Context!11623 (Cons!65456 (reg!16756 (regOne!33366 r!7292)) lt!2402888)))))

(declare-fun b!6552060 () Bool)

(declare-fun res!2688151 () Bool)

(declare-fun e!3966838 () Bool)

(assert (=> b!6552060 (=> res!2688151 e!3966838)))

(get-info :version)

(assert (=> b!6552060 (= res!2688151 (not ((_ is Cons!65456) (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6552062 () Bool)

(declare-fun e!3966853 () Unit!159043)

(declare-fun Unit!159045 () Unit!159043)

(assert (=> b!6552062 (= e!3966853 Unit!159045)))

(declare-fun lt!2402917 () (InoxSet Context!11622))

(declare-fun lt!2402878 () (InoxSet Context!11622))

(declare-fun lt!2402914 () Unit!159043)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1258 ((InoxSet Context!11622) (InoxSet Context!11622) List!65582) Unit!159043)

(assert (=> b!6552062 (= lt!2402914 (lemmaZipperConcatMatchesSameAsBothZippers!1258 lt!2402917 lt!2402878 (t!379224 s!2326)))))

(declare-fun res!2688130 () Bool)

(declare-fun matchZipper!2439 ((InoxSet Context!11622) List!65582) Bool)

(assert (=> b!6552062 (= res!2688130 (matchZipper!2439 lt!2402917 (t!379224 s!2326)))))

(declare-fun e!3966854 () Bool)

(assert (=> b!6552062 (=> res!2688130 e!3966854)))

(assert (=> b!6552062 (= (matchZipper!2439 ((_ map or) lt!2402917 lt!2402878) (t!379224 s!2326)) e!3966854)))

(declare-fun b!6552063 () Bool)

(declare-fun res!2688152 () Bool)

(assert (=> b!6552063 (=> res!2688152 e!3966838)))

(declare-fun isEmpty!37686 (List!65581) Bool)

(assert (=> b!6552063 (= res!2688152 (not (isEmpty!37686 (t!379223 zl!343))))))

(declare-fun b!6552064 () Bool)

(declare-fun e!3966856 () Bool)

(declare-fun e!3966857 () Bool)

(assert (=> b!6552064 (= e!3966856 e!3966857)))

(declare-fun res!2688144 () Bool)

(assert (=> b!6552064 (=> res!2688144 e!3966857)))

(declare-fun lt!2402906 () List!65581)

(declare-fun lt!2402897 () Regex!16427)

(declare-fun unfocusZipper!2169 (List!65581) Regex!16427)

(assert (=> b!6552064 (= res!2688144 (not (= (unfocusZipper!2169 lt!2402906) lt!2402897)))))

(declare-fun lt!2402901 () Context!11622)

(assert (=> b!6552064 (= lt!2402906 (Cons!65457 lt!2402901 Nil!65457))))

(declare-fun e!3966855 () Bool)

(declare-fun e!3966845 () Bool)

(assert (=> b!6552065 (= e!3966855 e!3966845)))

(declare-fun res!2688153 () Bool)

(assert (=> b!6552065 (=> res!2688153 e!3966845)))

(declare-fun lt!2402910 () (InoxSet Context!11622))

(declare-fun appendTo!188 ((InoxSet Context!11622) Context!11622) (InoxSet Context!11622))

(assert (=> b!6552065 (= res!2688153 (not (= (appendTo!188 lt!2402910 lt!2402901) lt!2402894)))))

(declare-fun lt!2402916 () List!65580)

(declare-fun lambda!364000 () Int)

(declare-fun map!14949 ((InoxSet Context!11622) Int) (InoxSet Context!11622))

(declare-fun ++!14556 (List!65580 List!65580) List!65580)

(assert (=> b!6552065 (= (map!14949 lt!2402910 lambda!364000) (store ((as const (Array Context!11622 Bool)) false) (Context!11623 (++!14556 lt!2402916 lt!2402888)) true))))

(declare-fun lambda!364001 () Int)

(declare-fun lt!2402890 () Unit!159043)

(declare-fun lemmaConcatPreservesForall!400 (List!65580 List!65580 Int) Unit!159043)

(assert (=> b!6552065 (= lt!2402890 (lemmaConcatPreservesForall!400 lt!2402916 lt!2402888 lambda!364001))))

(declare-fun lt!2402908 () Unit!159043)

(declare-fun lt!2402875 () Context!11622)

(declare-fun lemmaMapOnSingletonSet!210 ((InoxSet Context!11622) Context!11622 Int) Unit!159043)

(assert (=> b!6552065 (= lt!2402908 (lemmaMapOnSingletonSet!210 lt!2402910 lt!2402875 lambda!364000))))

(declare-fun b!6552066 () Bool)

(declare-fun e!3966850 () Bool)

(assert (=> b!6552066 (= e!3966850 (not e!3966838))))

(declare-fun res!2688133 () Bool)

(assert (=> b!6552066 (=> res!2688133 e!3966838)))

(assert (=> b!6552066 (= res!2688133 (not ((_ is Cons!65457) zl!343)))))

(declare-fun lt!2402902 () Bool)

(declare-fun matchRSpec!3528 (Regex!16427 List!65582) Bool)

(assert (=> b!6552066 (= lt!2402902 (matchRSpec!3528 r!7292 s!2326))))

(declare-fun matchR!8610 (Regex!16427 List!65582) Bool)

(assert (=> b!6552066 (= lt!2402902 (matchR!8610 r!7292 s!2326))))

(declare-fun lt!2402889 () Unit!159043)

(declare-fun mainMatchTheorem!3528 (Regex!16427 List!65582) Unit!159043)

(assert (=> b!6552066 (= lt!2402889 (mainMatchTheorem!3528 r!7292 s!2326))))

(declare-fun b!6552067 () Bool)

(declare-fun e!3966844 () Bool)

(declare-fun tp_is_empty!42107 () Bool)

(assert (=> b!6552067 (= e!3966844 tp_is_empty!42107)))

(declare-fun e!3966840 () Bool)

(declare-fun setRes!44718 () Bool)

(declare-fun setNonEmpty!44718 () Bool)

(declare-fun tp!1811586 () Bool)

(declare-fun setElem!44718 () Context!11622)

(declare-fun inv!84314 (Context!11622) Bool)

(assert (=> setNonEmpty!44718 (= setRes!44718 (and tp!1811586 (inv!84314 setElem!44718) e!3966840))))

(declare-fun z!1189 () (InoxSet Context!11622))

(declare-fun setRest!44718 () (InoxSet Context!11622))

(assert (=> setNonEmpty!44718 (= z!1189 ((_ map or) (store ((as const (Array Context!11622 Bool)) false) setElem!44718 true) setRest!44718))))

(declare-fun b!6552068 () Bool)

(declare-fun e!3966846 () Bool)

(assert (=> b!6552068 (= e!3966846 e!3966856)))

(declare-fun res!2688160 () Bool)

(assert (=> b!6552068 (=> res!2688160 e!3966856)))

(declare-fun lt!2402905 () List!65581)

(assert (=> b!6552068 (= res!2688160 (not (= (unfocusZipper!2169 lt!2402905) (reg!16756 (regOne!33366 r!7292)))))))

(assert (=> b!6552068 (= lt!2402905 (Cons!65457 lt!2402875 Nil!65457))))

(declare-fun lt!2402881 () (InoxSet Context!11622))

(assert (=> b!6552068 (= (flatMap!1932 lt!2402881 lambda!363999) (derivationStepZipperUp!1601 lt!2402901 (h!71906 s!2326)))))

(declare-fun lt!2402887 () Unit!159043)

(assert (=> b!6552068 (= lt!2402887 (lemmaFlatMapOnSingletonSet!1458 lt!2402881 lt!2402901 lambda!363999))))

(assert (=> b!6552068 (= (flatMap!1932 lt!2402910 lambda!363999) (derivationStepZipperUp!1601 lt!2402875 (h!71906 s!2326)))))

(declare-fun lt!2402900 () Unit!159043)

(assert (=> b!6552068 (= lt!2402900 (lemmaFlatMapOnSingletonSet!1458 lt!2402910 lt!2402875 lambda!363999))))

(declare-fun lt!2402876 () (InoxSet Context!11622))

(assert (=> b!6552068 (= lt!2402876 (derivationStepZipperUp!1601 lt!2402901 (h!71906 s!2326)))))

(declare-fun lt!2402903 () (InoxSet Context!11622))

(assert (=> b!6552068 (= lt!2402903 (derivationStepZipperUp!1601 lt!2402875 (h!71906 s!2326)))))

(assert (=> b!6552068 (= lt!2402881 (store ((as const (Array Context!11622 Bool)) false) lt!2402901 true))))

(assert (=> b!6552068 (= lt!2402910 (store ((as const (Array Context!11622 Bool)) false) lt!2402875 true))))

(assert (=> b!6552068 (= lt!2402875 (Context!11623 lt!2402916))))

(assert (=> b!6552068 (= lt!2402916 (Cons!65456 (reg!16756 (regOne!33366 r!7292)) Nil!65456))))

(declare-fun b!6552069 () Bool)

(declare-fun res!2688148 () Bool)

(declare-fun e!3966848 () Bool)

(assert (=> b!6552069 (=> res!2688148 e!3966848)))

(declare-datatypes ((tuple2!66812 0))(
  ( (tuple2!66813 (_1!36709 List!65582) (_2!36709 List!65582)) )
))
(declare-fun lt!2402920 () tuple2!66812)

(assert (=> b!6552069 (= res!2688148 (not (matchZipper!2439 lt!2402881 (_2!36709 lt!2402920))))))

(declare-fun e!3966841 () Bool)

(assert (=> b!6552070 (= e!3966848 e!3966841)))

(declare-fun res!2688141 () Bool)

(assert (=> b!6552070 (=> res!2688141 e!3966841)))

(declare-datatypes ((Option!16318 0))(
  ( (None!16317) (Some!16317 (v!52502 tuple2!66812)) )
))
(declare-fun lt!2402930 () Option!16318)

(declare-fun get!22722 (Option!16318) tuple2!66812)

(assert (=> b!6552070 (= res!2688141 (not (matchR!8610 lt!2402883 (_1!36709 (get!22722 lt!2402930)))))))

(declare-fun Exists!3497 (Int) Bool)

(assert (=> b!6552070 (= (Exists!3497 lambda!364002) (Exists!3497 lambda!364003))))

(declare-fun lt!2402928 () Unit!159043)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2034 (Regex!16427 Regex!16427 List!65582) Unit!159043)

(assert (=> b!6552070 (= lt!2402928 (lemmaExistCutMatchRandMatchRSpecEquivalent!2034 lt!2402883 (regTwo!33366 r!7292) s!2326))))

(declare-fun isDefined!13021 (Option!16318) Bool)

(assert (=> b!6552070 (= (isDefined!13021 lt!2402930) (Exists!3497 lambda!364002))))

(declare-fun findConcatSeparation!2732 (Regex!16427 Regex!16427 List!65582 List!65582 List!65582) Option!16318)

(assert (=> b!6552070 (= lt!2402930 (findConcatSeparation!2732 lt!2402883 (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326))))

(declare-fun lt!2402877 () Unit!159043)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2496 (Regex!16427 Regex!16427 List!65582) Unit!159043)

(assert (=> b!6552070 (= lt!2402877 (lemmaFindConcatSeparationEquivalentToExists!2496 lt!2402883 (regTwo!33366 r!7292) s!2326))))

(declare-fun lt!2402882 () Regex!16427)

(assert (=> b!6552070 (matchRSpec!3528 lt!2402882 s!2326)))

(declare-fun lt!2402898 () Unit!159043)

(assert (=> b!6552070 (= lt!2402898 (mainMatchTheorem!3528 lt!2402882 s!2326))))

(assert (=> b!6552070 (matchR!8610 lt!2402882 s!2326)))

(assert (=> b!6552070 (= lt!2402882 (Concat!25272 lt!2402883 (regTwo!33366 r!7292)))))

(declare-fun lt!2402923 () Regex!16427)

(assert (=> b!6552070 (= lt!2402883 (Concat!25272 (reg!16756 (regOne!33366 r!7292)) lt!2402923))))

(declare-fun lt!2402929 () Unit!159043)

(declare-fun lemmaConcatAssociative!124 (Regex!16427 Regex!16427 Regex!16427 List!65582) Unit!159043)

(assert (=> b!6552070 (= lt!2402929 (lemmaConcatAssociative!124 (reg!16756 (regOne!33366 r!7292)) lt!2402923 (regTwo!33366 r!7292) s!2326))))

(assert (=> b!6552070 e!3966852))

(declare-fun res!2688127 () Bool)

(assert (=> b!6552070 (=> (not res!2688127) (not e!3966852))))

(declare-fun lt!2402885 () Regex!16427)

(declare-fun lt!2402892 () List!65582)

(assert (=> b!6552070 (= res!2688127 (matchR!8610 lt!2402885 lt!2402892))))

(declare-fun lt!2402907 () Unit!159043)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!348 (Regex!16427 Regex!16427 List!65582 List!65582) Unit!159043)

(assert (=> b!6552070 (= lt!2402907 (lemmaTwoRegexMatchThenConcatMatchesConcatString!348 (reg!16756 (regOne!33366 r!7292)) lt!2402897 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(assert (=> b!6552070 (matchR!8610 lt!2402897 (_2!36709 lt!2402920))))

(declare-fun lt!2402918 () Unit!159043)

(declare-fun theoremZipperRegexEquiv!863 ((InoxSet Context!11622) List!65581 Regex!16427 List!65582) Unit!159043)

(assert (=> b!6552070 (= lt!2402918 (theoremZipperRegexEquiv!863 lt!2402881 lt!2402906 lt!2402897 (_2!36709 lt!2402920)))))

(assert (=> b!6552070 (matchR!8610 (reg!16756 (regOne!33366 r!7292)) (_1!36709 lt!2402920))))

(declare-fun lt!2402904 () Unit!159043)

(assert (=> b!6552070 (= lt!2402904 (theoremZipperRegexEquiv!863 lt!2402910 lt!2402905 (reg!16756 (regOne!33366 r!7292)) (_1!36709 lt!2402920)))))

(assert (=> b!6552070 (matchZipper!2439 (store ((as const (Array Context!11622 Bool)) false) (Context!11623 (++!14556 lt!2402916 lt!2402888)) true) lt!2402892)))

(declare-fun lt!2402879 () Unit!159043)

(assert (=> b!6552070 (= lt!2402879 (lemmaConcatPreservesForall!400 lt!2402916 lt!2402888 lambda!364001))))

(declare-fun lt!2402909 () Unit!159043)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!208 (Context!11622 Context!11622 List!65582 List!65582) Unit!159043)

(assert (=> b!6552070 (= lt!2402909 (lemmaConcatenateContextMatchesConcatOfStrings!208 lt!2402875 lt!2402901 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(declare-fun b!6552071 () Bool)

(declare-fun res!2688138 () Bool)

(assert (=> b!6552071 (=> res!2688138 e!3966855)))

(declare-fun lt!2402913 () Bool)

(declare-fun lt!2402927 () Bool)

(assert (=> b!6552071 (= res!2688138 (or (not lt!2402913) (not lt!2402927)))))

(declare-fun b!6552072 () Bool)

(assert (=> b!6552072 (= e!3966845 e!3966848)))

(declare-fun res!2688157 () Bool)

(assert (=> b!6552072 (=> res!2688157 e!3966848)))

(assert (=> b!6552072 (= res!2688157 (not (= s!2326 lt!2402892)))))

(declare-fun ++!14557 (List!65582 List!65582) List!65582)

(assert (=> b!6552072 (= lt!2402892 (++!14557 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(declare-fun lt!2402896 () Option!16318)

(assert (=> b!6552072 (= lt!2402920 (get!22722 lt!2402896))))

(assert (=> b!6552072 (isDefined!13021 lt!2402896)))

(declare-fun findConcatSeparationZippers!192 ((InoxSet Context!11622) (InoxSet Context!11622) List!65582 List!65582 List!65582) Option!16318)

(assert (=> b!6552072 (= lt!2402896 (findConcatSeparationZippers!192 lt!2402910 lt!2402881 Nil!65458 s!2326 s!2326))))

(declare-fun lt!2402899 () Unit!159043)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!192 ((InoxSet Context!11622) Context!11622 List!65582) Unit!159043)

(assert (=> b!6552072 (= lt!2402899 (lemmaConcatZipperMatchesStringThenFindConcatDefined!192 lt!2402910 lt!2402901 s!2326))))

(declare-fun b!6552073 () Bool)

(declare-fun e!3966861 () Bool)

(declare-fun e!3966860 () Bool)

(assert (=> b!6552073 (= e!3966861 e!3966860)))

(declare-fun res!2688128 () Bool)

(assert (=> b!6552073 (=> res!2688128 e!3966860)))

(assert (=> b!6552073 (= res!2688128 (not (= r!7292 lt!2402897)))))

(assert (=> b!6552073 (= lt!2402897 (Concat!25272 lt!2402923 (regTwo!33366 r!7292)))))

(declare-fun b!6552074 () Bool)

(declare-fun e!3966858 () Bool)

(assert (=> b!6552074 (= e!3966858 e!3966850)))

(declare-fun res!2688136 () Bool)

(assert (=> b!6552074 (=> (not res!2688136) (not e!3966850))))

(declare-fun lt!2402911 () Regex!16427)

(assert (=> b!6552074 (= res!2688136 (= r!7292 lt!2402911))))

(assert (=> b!6552074 (= lt!2402911 (unfocusZipper!2169 zl!343))))

(declare-fun b!6552075 () Bool)

(declare-fun res!2688134 () Bool)

(assert (=> b!6552075 (=> res!2688134 e!3966838)))

(declare-fun generalisedUnion!2271 (List!65580) Regex!16427)

(declare-fun unfocusZipperList!1848 (List!65581) List!65580)

(assert (=> b!6552075 (= res!2688134 (not (= r!7292 (generalisedUnion!2271 (unfocusZipperList!1848 zl!343)))))))

(declare-fun b!6552076 () Bool)

(declare-fun res!2688154 () Bool)

(assert (=> b!6552076 (=> res!2688154 e!3966838)))

(declare-fun generalisedConcat!2024 (List!65580) Regex!16427)

(assert (=> b!6552076 (= res!2688154 (not (= r!7292 (generalisedConcat!2024 (exprs!6311 (h!71905 zl!343))))))))

(declare-fun b!6552077 () Bool)

(declare-fun tp!1811589 () Bool)

(declare-fun e!3966864 () Bool)

(declare-fun e!3966849 () Bool)

(assert (=> b!6552077 (= e!3966864 (and (inv!84314 (h!71905 zl!343)) e!3966849 tp!1811589))))

(declare-fun b!6552078 () Bool)

(declare-fun e!3966842 () Bool)

(declare-fun nullable!6420 (Regex!16427) Bool)

(assert (=> b!6552078 (= e!3966842 (nullable!6420 (regOne!33366 (regOne!33366 r!7292))))))

(declare-fun b!6552061 () Bool)

(declare-fun Unit!159046 () Unit!159043)

(assert (=> b!6552061 (= e!3966853 Unit!159046)))

(declare-fun res!2688140 () Bool)

(assert (=> start!642050 (=> (not res!2688140) (not e!3966858))))

(declare-fun validRegex!8163 (Regex!16427) Bool)

(assert (=> start!642050 (= res!2688140 (validRegex!8163 r!7292))))

(assert (=> start!642050 e!3966858))

(assert (=> start!642050 e!3966844))

(declare-fun condSetEmpty!44718 () Bool)

(assert (=> start!642050 (= condSetEmpty!44718 (= z!1189 ((as const (Array Context!11622 Bool)) false)))))

(assert (=> start!642050 setRes!44718))

(assert (=> start!642050 e!3966864))

(declare-fun e!3966863 () Bool)

(assert (=> start!642050 e!3966863))

(declare-fun b!6552079 () Bool)

(declare-fun tp!1811582 () Bool)

(assert (=> b!6552079 (= e!3966849 tp!1811582)))

(declare-fun b!6552080 () Bool)

(declare-fun e!3966847 () Bool)

(assert (=> b!6552080 (= e!3966857 e!3966847)))

(declare-fun res!2688137 () Bool)

(assert (=> b!6552080 (=> res!2688137 e!3966847)))

(assert (=> b!6552080 (= res!2688137 lt!2402902)))

(assert (=> b!6552080 (= lt!2402922 (matchRSpec!3528 lt!2402885 s!2326))))

(assert (=> b!6552080 (= lt!2402922 (matchR!8610 lt!2402885 s!2326))))

(declare-fun lt!2402924 () Unit!159043)

(assert (=> b!6552080 (= lt!2402924 (mainMatchTheorem!3528 lt!2402885 s!2326))))

(assert (=> b!6552081 (= e!3966838 e!3966859)))

(declare-fun res!2688145 () Bool)

(assert (=> b!6552081 (=> res!2688145 e!3966859)))

(declare-fun lt!2402915 () Bool)

(assert (=> b!6552081 (= res!2688145 (or (not (= lt!2402902 lt!2402915)) ((_ is Nil!65458) s!2326)))))

(assert (=> b!6552081 (= (Exists!3497 lambda!363997) (Exists!3497 lambda!363998))))

(declare-fun lt!2402925 () Unit!159043)

(assert (=> b!6552081 (= lt!2402925 (lemmaExistCutMatchRandMatchRSpecEquivalent!2034 (regOne!33366 r!7292) (regTwo!33366 r!7292) s!2326))))

(assert (=> b!6552081 (= lt!2402915 (Exists!3497 lambda!363997))))

(assert (=> b!6552081 (= lt!2402915 (isDefined!13021 (findConcatSeparation!2732 (regOne!33366 r!7292) (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326)))))

(declare-fun lt!2402895 () Unit!159043)

(assert (=> b!6552081 (= lt!2402895 (lemmaFindConcatSeparationEquivalentToExists!2496 (regOne!33366 r!7292) (regTwo!33366 r!7292) s!2326))))

(declare-fun b!6552082 () Bool)

(declare-fun res!2688147 () Bool)

(assert (=> b!6552082 (=> res!2688147 e!3966861)))

(assert (=> b!6552082 (= res!2688147 (not (= lt!2402911 r!7292)))))

(declare-fun b!6552083 () Bool)

(declare-fun e!3966843 () Bool)

(assert (=> b!6552083 (= e!3966843 e!3966839)))

(declare-fun res!2688156 () Bool)

(assert (=> b!6552083 (=> res!2688156 e!3966839)))

(assert (=> b!6552083 (= res!2688156 (not (= lt!2402917 lt!2402919)))))

(declare-fun derivationStepZipperDown!1675 (Regex!16427 Context!11622 C!33124) (InoxSet Context!11622))

(assert (=> b!6552083 (= lt!2402919 (derivationStepZipperDown!1675 (reg!16756 (regOne!33366 r!7292)) lt!2402901 (h!71906 s!2326)))))

(assert (=> b!6552083 (= lt!2402901 (Context!11623 lt!2402888))))

(assert (=> b!6552083 (= lt!2402888 (Cons!65456 lt!2402923 (t!379222 (exprs!6311 (h!71905 zl!343)))))))

(assert (=> b!6552083 (= lt!2402923 (Star!16427 (reg!16756 (regOne!33366 r!7292))))))

(declare-fun b!6552084 () Bool)

(declare-fun e!3966851 () Bool)

(assert (=> b!6552084 (= e!3966851 (not (matchZipper!2439 lt!2402878 (t!379224 s!2326))))))

(declare-fun b!6552085 () Bool)

(declare-fun tp!1811590 () Bool)

(declare-fun tp!1811585 () Bool)

(assert (=> b!6552085 (= e!3966844 (and tp!1811590 tp!1811585))))

(declare-fun b!6552086 () Bool)

(declare-fun tp!1811591 () Bool)

(assert (=> b!6552086 (= e!3966840 tp!1811591)))

(declare-fun b!6552087 () Bool)

(declare-fun tp!1811583 () Bool)

(assert (=> b!6552087 (= e!3966863 (and tp_is_empty!42107 tp!1811583))))

(declare-fun b!6552088 () Bool)

(assert (=> b!6552088 (= e!3966841 (validRegex!8163 lt!2402883))))

(declare-fun b!6552089 () Bool)

(assert (=> b!6552089 (= e!3966854 (matchZipper!2439 lt!2402878 (t!379224 s!2326)))))

(declare-fun b!6552090 () Bool)

(declare-fun res!2688159 () Bool)

(assert (=> b!6552090 (=> res!2688159 e!3966848)))

(assert (=> b!6552090 (= res!2688159 (not (matchZipper!2439 lt!2402910 (_1!36709 lt!2402920))))))

(declare-fun b!6552091 () Bool)

(declare-fun res!2688129 () Bool)

(assert (=> b!6552091 (=> (not res!2688129) (not e!3966858))))

(declare-fun toList!10211 ((InoxSet Context!11622)) List!65581)

(assert (=> b!6552091 (= res!2688129 (= (toList!10211 z!1189) zl!343))))

(declare-fun b!6552092 () Bool)

(declare-fun res!2688135 () Bool)

(assert (=> b!6552092 (=> res!2688135 e!3966847)))

(assert (=> b!6552092 (= res!2688135 (not (matchZipper!2439 z!1189 s!2326)))))

(declare-fun setIsEmpty!44718 () Bool)

(assert (=> setIsEmpty!44718 setRes!44718))

(declare-fun b!6552093 () Bool)

(declare-fun res!2688143 () Bool)

(assert (=> b!6552093 (=> res!2688143 e!3966838)))

(assert (=> b!6552093 (= res!2688143 (or ((_ is EmptyExpr!16427) r!7292) ((_ is EmptyLang!16427) r!7292) ((_ is ElementMatch!16427) r!7292) ((_ is Union!16427) r!7292) (not ((_ is Concat!25272) r!7292))))))

(declare-fun b!6552094 () Bool)

(declare-fun res!2688132 () Bool)

(assert (=> b!6552094 (=> res!2688132 e!3966847)))

(declare-fun lt!2402880 () Bool)

(assert (=> b!6552094 (= res!2688132 (not lt!2402880))))

(declare-fun b!6552095 () Bool)

(assert (=> b!6552095 (= e!3966862 e!3966861)))

(declare-fun res!2688126 () Bool)

(assert (=> b!6552095 (=> res!2688126 e!3966861)))

(assert (=> b!6552095 (= res!2688126 (not (= lt!2402927 (matchZipper!2439 lt!2402886 (t!379224 s!2326)))))))

(assert (=> b!6552095 (= lt!2402927 (matchZipper!2439 lt!2402894 s!2326))))

(declare-fun b!6552096 () Bool)

(declare-fun tp!1811588 () Bool)

(assert (=> b!6552096 (= e!3966844 tp!1811588)))

(declare-fun b!6552097 () Bool)

(assert (=> b!6552097 (= e!3966847 e!3966855)))

(declare-fun res!2688149 () Bool)

(assert (=> b!6552097 (=> res!2688149 e!3966855)))

(assert (=> b!6552097 (= res!2688149 e!3966851)))

(declare-fun res!2688146 () Bool)

(assert (=> b!6552097 (=> (not res!2688146) (not e!3966851))))

(assert (=> b!6552097 (= res!2688146 (not lt!2402913))))

(assert (=> b!6552097 (= lt!2402913 (matchZipper!2439 lt!2402917 (t!379224 s!2326)))))

(declare-fun b!6552098 () Bool)

(declare-fun res!2688139 () Bool)

(assert (=> b!6552098 (=> res!2688139 e!3966843)))

(assert (=> b!6552098 (= res!2688139 e!3966842)))

(declare-fun res!2688142 () Bool)

(assert (=> b!6552098 (=> (not res!2688142) (not e!3966842))))

(assert (=> b!6552098 (= res!2688142 ((_ is Concat!25272) (regOne!33366 r!7292)))))

(declare-fun b!6552099 () Bool)

(declare-fun tp!1811584 () Bool)

(declare-fun tp!1811587 () Bool)

(assert (=> b!6552099 (= e!3966844 (and tp!1811584 tp!1811587))))

(declare-fun b!6552100 () Bool)

(assert (=> b!6552100 (= e!3966860 e!3966846)))

(declare-fun res!2688150 () Bool)

(assert (=> b!6552100 (=> res!2688150 e!3966846)))

(assert (=> b!6552100 (= res!2688150 (not (= (unfocusZipper!2169 (Cons!65457 lt!2402912 Nil!65457)) lt!2402885)))))

(assert (=> b!6552100 (= lt!2402885 (Concat!25272 (reg!16756 (regOne!33366 r!7292)) lt!2402897))))

(declare-fun b!6552101 () Bool)

(declare-fun res!2688158 () Bool)

(assert (=> b!6552101 (=> res!2688158 e!3966843)))

(assert (=> b!6552101 (= res!2688158 (or ((_ is Concat!25272) (regOne!33366 r!7292)) (not ((_ is Star!16427) (regOne!33366 r!7292)))))))

(assert (=> b!6552102 (= e!3966859 e!3966843)))

(declare-fun res!2688125 () Bool)

(assert (=> b!6552102 (=> res!2688125 e!3966843)))

(assert (=> b!6552102 (= res!2688125 (or (and ((_ is ElementMatch!16427) (regOne!33366 r!7292)) (= (c!1203556 (regOne!33366 r!7292)) (h!71906 s!2326))) ((_ is Union!16427) (regOne!33366 r!7292))))))

(declare-fun lt!2402891 () Unit!159043)

(assert (=> b!6552102 (= lt!2402891 e!3966853)))

(declare-fun c!1203555 () Bool)

(assert (=> b!6552102 (= c!1203555 lt!2402880)))

(assert (=> b!6552102 (= lt!2402880 (nullable!6420 (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(assert (=> b!6552102 (= (flatMap!1932 z!1189 lambda!363999) (derivationStepZipperUp!1601 (h!71905 zl!343) (h!71906 s!2326)))))

(declare-fun lt!2402884 () Unit!159043)

(assert (=> b!6552102 (= lt!2402884 (lemmaFlatMapOnSingletonSet!1458 z!1189 (h!71905 zl!343) lambda!363999))))

(declare-fun lt!2402926 () Context!11622)

(assert (=> b!6552102 (= lt!2402878 (derivationStepZipperUp!1601 lt!2402926 (h!71906 s!2326)))))

(assert (=> b!6552102 (= lt!2402917 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 (h!71905 zl!343))) lt!2402926 (h!71906 s!2326)))))

(assert (=> b!6552102 (= lt!2402926 (Context!11623 (t!379222 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun lt!2402893 () (InoxSet Context!11622))

(assert (=> b!6552102 (= lt!2402893 (derivationStepZipperUp!1601 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343))))) (h!71906 s!2326)))))

(assert (= (and start!642050 res!2688140) b!6552091))

(assert (= (and b!6552091 res!2688129) b!6552074))

(assert (= (and b!6552074 res!2688136) b!6552066))

(assert (= (and b!6552066 (not res!2688133)) b!6552063))

(assert (= (and b!6552063 (not res!2688152)) b!6552076))

(assert (= (and b!6552076 (not res!2688154)) b!6552060))

(assert (= (and b!6552060 (not res!2688151)) b!6552075))

(assert (= (and b!6552075 (not res!2688134)) b!6552093))

(assert (= (and b!6552093 (not res!2688143)) b!6552081))

(assert (= (and b!6552081 (not res!2688145)) b!6552058))

(assert (= (and b!6552058 (not res!2688155)) b!6552102))

(assert (= (and b!6552102 c!1203555) b!6552062))

(assert (= (and b!6552102 (not c!1203555)) b!6552061))

(assert (= (and b!6552062 (not res!2688130)) b!6552089))

(assert (= (and b!6552102 (not res!2688125)) b!6552098))

(assert (= (and b!6552098 res!2688142) b!6552078))

(assert (= (and b!6552098 (not res!2688139)) b!6552101))

(assert (= (and b!6552101 (not res!2688158)) b!6552083))

(assert (= (and b!6552083 (not res!2688156)) b!6552059))

(assert (= (and b!6552059 (not res!2688131)) b!6552095))

(assert (= (and b!6552095 (not res!2688126)) b!6552082))

(assert (= (and b!6552082 (not res!2688147)) b!6552073))

(assert (= (and b!6552073 (not res!2688128)) b!6552100))

(assert (= (and b!6552100 (not res!2688150)) b!6552068))

(assert (= (and b!6552068 (not res!2688160)) b!6552064))

(assert (= (and b!6552064 (not res!2688144)) b!6552080))

(assert (= (and b!6552080 (not res!2688137)) b!6552092))

(assert (= (and b!6552092 (not res!2688135)) b!6552094))

(assert (= (and b!6552094 (not res!2688132)) b!6552097))

(assert (= (and b!6552097 res!2688146) b!6552084))

(assert (= (and b!6552097 (not res!2688149)) b!6552071))

(assert (= (and b!6552071 (not res!2688138)) b!6552065))

(assert (= (and b!6552065 (not res!2688153)) b!6552072))

(assert (= (and b!6552072 (not res!2688157)) b!6552090))

(assert (= (and b!6552090 (not res!2688159)) b!6552069))

(assert (= (and b!6552069 (not res!2688148)) b!6552070))

(assert (= (and b!6552070 res!2688127) b!6552057))

(assert (= (and b!6552070 (not res!2688141)) b!6552088))

(assert (= (and start!642050 ((_ is ElementMatch!16427) r!7292)) b!6552067))

(assert (= (and start!642050 ((_ is Concat!25272) r!7292)) b!6552099))

(assert (= (and start!642050 ((_ is Star!16427) r!7292)) b!6552096))

(assert (= (and start!642050 ((_ is Union!16427) r!7292)) b!6552085))

(assert (= (and start!642050 condSetEmpty!44718) setIsEmpty!44718))

(assert (= (and start!642050 (not condSetEmpty!44718)) setNonEmpty!44718))

(assert (= setNonEmpty!44718 b!6552086))

(assert (= b!6552077 b!6552079))

(assert (= (and start!642050 ((_ is Cons!65457) zl!343)) b!6552077))

(assert (= (and start!642050 ((_ is Cons!65458) s!2326)) b!6552087))

(declare-fun m!7334372 () Bool)

(assert (=> b!6552070 m!7334372))

(declare-fun m!7334374 () Bool)

(assert (=> b!6552070 m!7334374))

(declare-fun m!7334376 () Bool)

(assert (=> b!6552070 m!7334376))

(declare-fun m!7334378 () Bool)

(assert (=> b!6552070 m!7334378))

(declare-fun m!7334380 () Bool)

(assert (=> b!6552070 m!7334380))

(declare-fun m!7334382 () Bool)

(assert (=> b!6552070 m!7334382))

(declare-fun m!7334384 () Bool)

(assert (=> b!6552070 m!7334384))

(declare-fun m!7334386 () Bool)

(assert (=> b!6552070 m!7334386))

(declare-fun m!7334388 () Bool)

(assert (=> b!6552070 m!7334388))

(declare-fun m!7334390 () Bool)

(assert (=> b!6552070 m!7334390))

(declare-fun m!7334392 () Bool)

(assert (=> b!6552070 m!7334392))

(assert (=> b!6552070 m!7334390))

(declare-fun m!7334394 () Bool)

(assert (=> b!6552070 m!7334394))

(declare-fun m!7334396 () Bool)

(assert (=> b!6552070 m!7334396))

(declare-fun m!7334398 () Bool)

(assert (=> b!6552070 m!7334398))

(declare-fun m!7334400 () Bool)

(assert (=> b!6552070 m!7334400))

(declare-fun m!7334402 () Bool)

(assert (=> b!6552070 m!7334402))

(declare-fun m!7334404 () Bool)

(assert (=> b!6552070 m!7334404))

(declare-fun m!7334406 () Bool)

(assert (=> b!6552070 m!7334406))

(declare-fun m!7334408 () Bool)

(assert (=> b!6552070 m!7334408))

(assert (=> b!6552070 m!7334380))

(declare-fun m!7334410 () Bool)

(assert (=> b!6552070 m!7334410))

(declare-fun m!7334412 () Bool)

(assert (=> b!6552070 m!7334412))

(declare-fun m!7334414 () Bool)

(assert (=> b!6552070 m!7334414))

(declare-fun m!7334416 () Bool)

(assert (=> b!6552070 m!7334416))

(declare-fun m!7334418 () Bool)

(assert (=> b!6552074 m!7334418))

(declare-fun m!7334420 () Bool)

(assert (=> b!6552063 m!7334420))

(declare-fun m!7334422 () Bool)

(assert (=> b!6552088 m!7334422))

(declare-fun m!7334424 () Bool)

(assert (=> b!6552058 m!7334424))

(declare-fun m!7334426 () Bool)

(assert (=> b!6552081 m!7334426))

(assert (=> b!6552081 m!7334426))

(declare-fun m!7334428 () Bool)

(assert (=> b!6552081 m!7334428))

(declare-fun m!7334430 () Bool)

(assert (=> b!6552081 m!7334430))

(declare-fun m!7334432 () Bool)

(assert (=> b!6552081 m!7334432))

(declare-fun m!7334434 () Bool)

(assert (=> b!6552081 m!7334434))

(assert (=> b!6552081 m!7334428))

(declare-fun m!7334436 () Bool)

(assert (=> b!6552081 m!7334436))

(declare-fun m!7334438 () Bool)

(assert (=> b!6552076 m!7334438))

(declare-fun m!7334440 () Bool)

(assert (=> b!6552089 m!7334440))

(declare-fun m!7334442 () Bool)

(assert (=> b!6552068 m!7334442))

(declare-fun m!7334444 () Bool)

(assert (=> b!6552068 m!7334444))

(declare-fun m!7334446 () Bool)

(assert (=> b!6552068 m!7334446))

(declare-fun m!7334448 () Bool)

(assert (=> b!6552068 m!7334448))

(declare-fun m!7334450 () Bool)

(assert (=> b!6552068 m!7334450))

(declare-fun m!7334452 () Bool)

(assert (=> b!6552068 m!7334452))

(declare-fun m!7334454 () Bool)

(assert (=> b!6552068 m!7334454))

(declare-fun m!7334456 () Bool)

(assert (=> b!6552068 m!7334456))

(declare-fun m!7334458 () Bool)

(assert (=> b!6552068 m!7334458))

(declare-fun m!7334460 () Bool)

(assert (=> b!6552075 m!7334460))

(assert (=> b!6552075 m!7334460))

(declare-fun m!7334462 () Bool)

(assert (=> b!6552075 m!7334462))

(assert (=> b!6552084 m!7334440))

(declare-fun m!7334464 () Bool)

(assert (=> setNonEmpty!44718 m!7334464))

(declare-fun m!7334466 () Bool)

(assert (=> b!6552095 m!7334466))

(declare-fun m!7334468 () Bool)

(assert (=> b!6552095 m!7334468))

(declare-fun m!7334470 () Bool)

(assert (=> b!6552064 m!7334470))

(declare-fun m!7334472 () Bool)

(assert (=> b!6552080 m!7334472))

(declare-fun m!7334474 () Bool)

(assert (=> b!6552080 m!7334474))

(declare-fun m!7334476 () Bool)

(assert (=> b!6552080 m!7334476))

(declare-fun m!7334478 () Bool)

(assert (=> b!6552072 m!7334478))

(declare-fun m!7334480 () Bool)

(assert (=> b!6552072 m!7334480))

(declare-fun m!7334482 () Bool)

(assert (=> b!6552072 m!7334482))

(declare-fun m!7334484 () Bool)

(assert (=> b!6552072 m!7334484))

(declare-fun m!7334486 () Bool)

(assert (=> b!6552072 m!7334486))

(declare-fun m!7334488 () Bool)

(assert (=> b!6552065 m!7334488))

(assert (=> b!6552065 m!7334390))

(assert (=> b!6552065 m!7334398))

(declare-fun m!7334490 () Bool)

(assert (=> b!6552065 m!7334490))

(assert (=> b!6552065 m!7334378))

(declare-fun m!7334492 () Bool)

(assert (=> b!6552065 m!7334492))

(declare-fun m!7334494 () Bool)

(assert (=> b!6552100 m!7334494))

(declare-fun m!7334496 () Bool)

(assert (=> b!6552077 m!7334496))

(declare-fun m!7334498 () Bool)

(assert (=> b!6552090 m!7334498))

(declare-fun m!7334500 () Bool)

(assert (=> b!6552102 m!7334500))

(declare-fun m!7334502 () Bool)

(assert (=> b!6552102 m!7334502))

(declare-fun m!7334504 () Bool)

(assert (=> b!6552102 m!7334504))

(declare-fun m!7334506 () Bool)

(assert (=> b!6552102 m!7334506))

(declare-fun m!7334508 () Bool)

(assert (=> b!6552102 m!7334508))

(declare-fun m!7334510 () Bool)

(assert (=> b!6552102 m!7334510))

(declare-fun m!7334512 () Bool)

(assert (=> b!6552102 m!7334512))

(declare-fun m!7334514 () Bool)

(assert (=> b!6552059 m!7334514))

(declare-fun m!7334516 () Bool)

(assert (=> b!6552059 m!7334516))

(declare-fun m!7334518 () Bool)

(assert (=> b!6552059 m!7334518))

(declare-fun m!7334520 () Bool)

(assert (=> b!6552059 m!7334520))

(declare-fun m!7334522 () Bool)

(assert (=> b!6552059 m!7334522))

(declare-fun m!7334524 () Bool)

(assert (=> b!6552078 m!7334524))

(declare-fun m!7334526 () Bool)

(assert (=> b!6552062 m!7334526))

(declare-fun m!7334528 () Bool)

(assert (=> b!6552062 m!7334528))

(declare-fun m!7334530 () Bool)

(assert (=> b!6552062 m!7334530))

(assert (=> b!6552097 m!7334528))

(declare-fun m!7334532 () Bool)

(assert (=> start!642050 m!7334532))

(declare-fun m!7334534 () Bool)

(assert (=> b!6552066 m!7334534))

(declare-fun m!7334536 () Bool)

(assert (=> b!6552066 m!7334536))

(declare-fun m!7334538 () Bool)

(assert (=> b!6552066 m!7334538))

(declare-fun m!7334540 () Bool)

(assert (=> b!6552091 m!7334540))

(declare-fun m!7334542 () Bool)

(assert (=> b!6552092 m!7334542))

(declare-fun m!7334544 () Bool)

(assert (=> b!6552069 m!7334544))

(declare-fun m!7334546 () Bool)

(assert (=> b!6552083 m!7334546))

(check-sat (not b!6552095) (not b!6552088) (not b!6552086) (not b!6552063) (not b!6552092) (not b!6552077) (not b!6552091) (not b!6552062) (not b!6552072) tp_is_empty!42107 (not b!6552075) (not b!6552066) (not b!6552078) (not b!6552090) (not b!6552083) (not setNonEmpty!44718) (not b!6552076) (not b!6552074) (not b!6552065) (not b!6552080) (not b!6552070) (not b!6552079) (not b!6552085) (not b!6552059) (not b!6552089) (not b!6552084) (not b!6552102) (not b!6552064) (not b!6552099) (not b!6552097) (not b!6552068) (not b!6552087) (not b!6552058) (not b!6552100) (not start!642050) (not b!6552081) (not b!6552096) (not b!6552069))
(check-sat)
(get-model)

(declare-fun b!6552190 () Bool)

(declare-fun res!2688187 () Bool)

(declare-fun e!3966915 () Bool)

(assert (=> b!6552190 (=> (not res!2688187) (not e!3966915))))

(declare-fun lt!2402951 () Option!16318)

(assert (=> b!6552190 (= res!2688187 (matchR!8610 (regTwo!33366 r!7292) (_2!36709 (get!22722 lt!2402951))))))

(declare-fun b!6552191 () Bool)

(declare-fun e!3966914 () Option!16318)

(declare-fun e!3966912 () Option!16318)

(assert (=> b!6552191 (= e!3966914 e!3966912)))

(declare-fun c!1203586 () Bool)

(assert (=> b!6552191 (= c!1203586 ((_ is Nil!65458) s!2326))))

(declare-fun b!6552192 () Bool)

(declare-fun e!3966913 () Bool)

(assert (=> b!6552192 (= e!3966913 (matchR!8610 (regTwo!33366 r!7292) s!2326))))

(declare-fun b!6552193 () Bool)

(declare-fun e!3966911 () Bool)

(assert (=> b!6552193 (= e!3966911 (not (isDefined!13021 lt!2402951)))))

(declare-fun b!6552194 () Bool)

(assert (=> b!6552194 (= e!3966912 None!16317)))

(declare-fun d!2056241 () Bool)

(assert (=> d!2056241 e!3966911))

(declare-fun res!2688186 () Bool)

(assert (=> d!2056241 (=> res!2688186 e!3966911)))

(assert (=> d!2056241 (= res!2688186 e!3966915)))

(declare-fun res!2688185 () Bool)

(assert (=> d!2056241 (=> (not res!2688185) (not e!3966915))))

(assert (=> d!2056241 (= res!2688185 (isDefined!13021 lt!2402951))))

(assert (=> d!2056241 (= lt!2402951 e!3966914)))

(declare-fun c!1203587 () Bool)

(assert (=> d!2056241 (= c!1203587 e!3966913)))

(declare-fun res!2688184 () Bool)

(assert (=> d!2056241 (=> (not res!2688184) (not e!3966913))))

(assert (=> d!2056241 (= res!2688184 (matchR!8610 (regOne!33366 r!7292) Nil!65458))))

(assert (=> d!2056241 (validRegex!8163 (regOne!33366 r!7292))))

(assert (=> d!2056241 (= (findConcatSeparation!2732 (regOne!33366 r!7292) (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326) lt!2402951)))

(declare-fun b!6552195 () Bool)

(declare-fun lt!2402950 () Unit!159043)

(declare-fun lt!2402952 () Unit!159043)

(assert (=> b!6552195 (= lt!2402950 lt!2402952)))

(assert (=> b!6552195 (= (++!14557 (++!14557 Nil!65458 (Cons!65458 (h!71906 s!2326) Nil!65458)) (t!379224 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2569 (List!65582 C!33124 List!65582 List!65582) Unit!159043)

(assert (=> b!6552195 (= lt!2402952 (lemmaMoveElementToOtherListKeepsConcatEq!2569 Nil!65458 (h!71906 s!2326) (t!379224 s!2326) s!2326))))

(assert (=> b!6552195 (= e!3966912 (findConcatSeparation!2732 (regOne!33366 r!7292) (regTwo!33366 r!7292) (++!14557 Nil!65458 (Cons!65458 (h!71906 s!2326) Nil!65458)) (t!379224 s!2326) s!2326))))

(declare-fun b!6552196 () Bool)

(declare-fun res!2688188 () Bool)

(assert (=> b!6552196 (=> (not res!2688188) (not e!3966915))))

(assert (=> b!6552196 (= res!2688188 (matchR!8610 (regOne!33366 r!7292) (_1!36709 (get!22722 lt!2402951))))))

(declare-fun b!6552197 () Bool)

(assert (=> b!6552197 (= e!3966915 (= (++!14557 (_1!36709 (get!22722 lt!2402951)) (_2!36709 (get!22722 lt!2402951))) s!2326))))

(declare-fun b!6552198 () Bool)

(assert (=> b!6552198 (= e!3966914 (Some!16317 (tuple2!66813 Nil!65458 s!2326)))))

(assert (= (and d!2056241 res!2688184) b!6552192))

(assert (= (and d!2056241 c!1203587) b!6552198))

(assert (= (and d!2056241 (not c!1203587)) b!6552191))

(assert (= (and b!6552191 c!1203586) b!6552194))

(assert (= (and b!6552191 (not c!1203586)) b!6552195))

(assert (= (and d!2056241 res!2688185) b!6552196))

(assert (= (and b!6552196 res!2688188) b!6552190))

(assert (= (and b!6552190 res!2688187) b!6552197))

(assert (= (and d!2056241 (not res!2688186)) b!6552193))

(declare-fun m!7334600 () Bool)

(assert (=> b!6552192 m!7334600))

(declare-fun m!7334602 () Bool)

(assert (=> d!2056241 m!7334602))

(declare-fun m!7334604 () Bool)

(assert (=> d!2056241 m!7334604))

(declare-fun m!7334606 () Bool)

(assert (=> d!2056241 m!7334606))

(assert (=> b!6552193 m!7334602))

(declare-fun m!7334608 () Bool)

(assert (=> b!6552190 m!7334608))

(declare-fun m!7334610 () Bool)

(assert (=> b!6552190 m!7334610))

(declare-fun m!7334612 () Bool)

(assert (=> b!6552195 m!7334612))

(assert (=> b!6552195 m!7334612))

(declare-fun m!7334614 () Bool)

(assert (=> b!6552195 m!7334614))

(declare-fun m!7334616 () Bool)

(assert (=> b!6552195 m!7334616))

(assert (=> b!6552195 m!7334612))

(declare-fun m!7334618 () Bool)

(assert (=> b!6552195 m!7334618))

(assert (=> b!6552197 m!7334608))

(declare-fun m!7334620 () Bool)

(assert (=> b!6552197 m!7334620))

(assert (=> b!6552196 m!7334608))

(declare-fun m!7334622 () Bool)

(assert (=> b!6552196 m!7334622))

(assert (=> b!6552081 d!2056241))

(declare-fun d!2056269 () Bool)

(declare-fun choose!48765 (Int) Bool)

(assert (=> d!2056269 (= (Exists!3497 lambda!363998) (choose!48765 lambda!363998))))

(declare-fun bs!1672514 () Bool)

(assert (= bs!1672514 d!2056269))

(declare-fun m!7334638 () Bool)

(assert (=> bs!1672514 m!7334638))

(assert (=> b!6552081 d!2056269))

(declare-fun d!2056273 () Bool)

(assert (=> d!2056273 (= (Exists!3497 lambda!363997) (choose!48765 lambda!363997))))

(declare-fun bs!1672515 () Bool)

(assert (= bs!1672515 d!2056273))

(declare-fun m!7334640 () Bool)

(assert (=> bs!1672515 m!7334640))

(assert (=> b!6552081 d!2056273))

(declare-fun bs!1672518 () Bool)

(declare-fun d!2056275 () Bool)

(assert (= bs!1672518 (and d!2056275 b!6552081)))

(declare-fun lambda!364009 () Int)

(assert (=> bs!1672518 (= lambda!364009 lambda!363997)))

(assert (=> bs!1672518 (not (= lambda!364009 lambda!363998))))

(declare-fun bs!1672520 () Bool)

(assert (= bs!1672520 (and d!2056275 b!6552070)))

(assert (=> bs!1672520 (= (= (regOne!33366 r!7292) lt!2402883) (= lambda!364009 lambda!364002))))

(assert (=> bs!1672520 (not (= lambda!364009 lambda!364003))))

(assert (=> d!2056275 true))

(assert (=> d!2056275 true))

(assert (=> d!2056275 true))

(assert (=> d!2056275 (= (isDefined!13021 (findConcatSeparation!2732 (regOne!33366 r!7292) (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326)) (Exists!3497 lambda!364009))))

(declare-fun lt!2402968 () Unit!159043)

(declare-fun choose!48766 (Regex!16427 Regex!16427 List!65582) Unit!159043)

(assert (=> d!2056275 (= lt!2402968 (choose!48766 (regOne!33366 r!7292) (regTwo!33366 r!7292) s!2326))))

(assert (=> d!2056275 (validRegex!8163 (regOne!33366 r!7292))))

(assert (=> d!2056275 (= (lemmaFindConcatSeparationEquivalentToExists!2496 (regOne!33366 r!7292) (regTwo!33366 r!7292) s!2326) lt!2402968)))

(declare-fun bs!1672521 () Bool)

(assert (= bs!1672521 d!2056275))

(assert (=> bs!1672521 m!7334428))

(declare-fun m!7334684 () Bool)

(assert (=> bs!1672521 m!7334684))

(assert (=> bs!1672521 m!7334428))

(assert (=> bs!1672521 m!7334430))

(assert (=> bs!1672521 m!7334606))

(declare-fun m!7334686 () Bool)

(assert (=> bs!1672521 m!7334686))

(assert (=> b!6552081 d!2056275))

(declare-fun bs!1672524 () Bool)

(declare-fun d!2056285 () Bool)

(assert (= bs!1672524 (and d!2056285 b!6552070)))

(declare-fun lambda!364016 () Int)

(assert (=> bs!1672524 (not (= lambda!364016 lambda!364003))))

(declare-fun bs!1672525 () Bool)

(assert (= bs!1672525 (and d!2056285 b!6552081)))

(assert (=> bs!1672525 (= lambda!364016 lambda!363997)))

(assert (=> bs!1672524 (= (= (regOne!33366 r!7292) lt!2402883) (= lambda!364016 lambda!364002))))

(assert (=> bs!1672525 (not (= lambda!364016 lambda!363998))))

(declare-fun bs!1672526 () Bool)

(assert (= bs!1672526 (and d!2056285 d!2056275)))

(assert (=> bs!1672526 (= lambda!364016 lambda!364009)))

(assert (=> d!2056285 true))

(assert (=> d!2056285 true))

(assert (=> d!2056285 true))

(declare-fun lambda!364019 () Int)

(assert (=> bs!1672524 (= (= (regOne!33366 r!7292) lt!2402883) (= lambda!364019 lambda!364003))))

(assert (=> bs!1672525 (not (= lambda!364019 lambda!363997))))

(assert (=> bs!1672524 (not (= lambda!364019 lambda!364002))))

(assert (=> bs!1672525 (= lambda!364019 lambda!363998)))

(declare-fun bs!1672529 () Bool)

(assert (= bs!1672529 d!2056285))

(assert (=> bs!1672529 (not (= lambda!364019 lambda!364016))))

(assert (=> bs!1672526 (not (= lambda!364019 lambda!364009))))

(assert (=> d!2056285 true))

(assert (=> d!2056285 true))

(assert (=> d!2056285 true))

(assert (=> d!2056285 (= (Exists!3497 lambda!364016) (Exists!3497 lambda!364019))))

(declare-fun lt!2402985 () Unit!159043)

(declare-fun choose!48767 (Regex!16427 Regex!16427 List!65582) Unit!159043)

(assert (=> d!2056285 (= lt!2402985 (choose!48767 (regOne!33366 r!7292) (regTwo!33366 r!7292) s!2326))))

(assert (=> d!2056285 (validRegex!8163 (regOne!33366 r!7292))))

(assert (=> d!2056285 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2034 (regOne!33366 r!7292) (regTwo!33366 r!7292) s!2326) lt!2402985)))

(declare-fun m!7334718 () Bool)

(assert (=> bs!1672529 m!7334718))

(declare-fun m!7334720 () Bool)

(assert (=> bs!1672529 m!7334720))

(declare-fun m!7334722 () Bool)

(assert (=> bs!1672529 m!7334722))

(assert (=> bs!1672529 m!7334606))

(assert (=> b!6552081 d!2056285))

(declare-fun d!2056293 () Bool)

(declare-fun isEmpty!37689 (Option!16318) Bool)

(assert (=> d!2056293 (= (isDefined!13021 (findConcatSeparation!2732 (regOne!33366 r!7292) (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326)) (not (isEmpty!37689 (findConcatSeparation!2732 (regOne!33366 r!7292) (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326))))))

(declare-fun bs!1672531 () Bool)

(assert (= bs!1672531 d!2056293))

(assert (=> bs!1672531 m!7334428))

(declare-fun m!7334730 () Bool)

(assert (=> bs!1672531 m!7334730))

(assert (=> b!6552081 d!2056293))

(declare-fun d!2056297 () Bool)

(declare-fun e!3966986 () Bool)

(assert (=> d!2056297 (= (matchZipper!2439 ((_ map or) lt!2402917 lt!2402878) (t!379224 s!2326)) e!3966986)))

(declare-fun res!2688276 () Bool)

(assert (=> d!2056297 (=> res!2688276 e!3966986)))

(assert (=> d!2056297 (= res!2688276 (matchZipper!2439 lt!2402917 (t!379224 s!2326)))))

(declare-fun lt!2402992 () Unit!159043)

(declare-fun choose!48768 ((InoxSet Context!11622) (InoxSet Context!11622) List!65582) Unit!159043)

(assert (=> d!2056297 (= lt!2402992 (choose!48768 lt!2402917 lt!2402878 (t!379224 s!2326)))))

(assert (=> d!2056297 (= (lemmaZipperConcatMatchesSameAsBothZippers!1258 lt!2402917 lt!2402878 (t!379224 s!2326)) lt!2402992)))

(declare-fun b!6552334 () Bool)

(assert (=> b!6552334 (= e!3966986 (matchZipper!2439 lt!2402878 (t!379224 s!2326)))))

(assert (= (and d!2056297 (not res!2688276)) b!6552334))

(assert (=> d!2056297 m!7334530))

(assert (=> d!2056297 m!7334528))

(declare-fun m!7334746 () Bool)

(assert (=> d!2056297 m!7334746))

(assert (=> b!6552334 m!7334440))

(assert (=> b!6552062 d!2056297))

(declare-fun d!2056301 () Bool)

(declare-fun c!1203614 () Bool)

(declare-fun isEmpty!37690 (List!65582) Bool)

(assert (=> d!2056301 (= c!1203614 (isEmpty!37690 (t!379224 s!2326)))))

(declare-fun e!3966989 () Bool)

(assert (=> d!2056301 (= (matchZipper!2439 lt!2402917 (t!379224 s!2326)) e!3966989)))

(declare-fun b!6552339 () Bool)

(declare-fun nullableZipper!2171 ((InoxSet Context!11622)) Bool)

(assert (=> b!6552339 (= e!3966989 (nullableZipper!2171 lt!2402917))))

(declare-fun b!6552340 () Bool)

(declare-fun head!13304 (List!65582) C!33124)

(declare-fun tail!12389 (List!65582) List!65582)

(assert (=> b!6552340 (= e!3966989 (matchZipper!2439 (derivationStepZipper!2393 lt!2402917 (head!13304 (t!379224 s!2326))) (tail!12389 (t!379224 s!2326))))))

(assert (= (and d!2056301 c!1203614) b!6552339))

(assert (= (and d!2056301 (not c!1203614)) b!6552340))

(declare-fun m!7334756 () Bool)

(assert (=> d!2056301 m!7334756))

(declare-fun m!7334758 () Bool)

(assert (=> b!6552339 m!7334758))

(declare-fun m!7334760 () Bool)

(assert (=> b!6552340 m!7334760))

(assert (=> b!6552340 m!7334760))

(declare-fun m!7334762 () Bool)

(assert (=> b!6552340 m!7334762))

(declare-fun m!7334764 () Bool)

(assert (=> b!6552340 m!7334764))

(assert (=> b!6552340 m!7334762))

(assert (=> b!6552340 m!7334764))

(declare-fun m!7334766 () Bool)

(assert (=> b!6552340 m!7334766))

(assert (=> b!6552062 d!2056301))

(declare-fun d!2056307 () Bool)

(declare-fun c!1203618 () Bool)

(assert (=> d!2056307 (= c!1203618 (isEmpty!37690 (t!379224 s!2326)))))

(declare-fun e!3966995 () Bool)

(assert (=> d!2056307 (= (matchZipper!2439 ((_ map or) lt!2402917 lt!2402878) (t!379224 s!2326)) e!3966995)))

(declare-fun b!6552351 () Bool)

(assert (=> b!6552351 (= e!3966995 (nullableZipper!2171 ((_ map or) lt!2402917 lt!2402878)))))

(declare-fun b!6552352 () Bool)

(assert (=> b!6552352 (= e!3966995 (matchZipper!2439 (derivationStepZipper!2393 ((_ map or) lt!2402917 lt!2402878) (head!13304 (t!379224 s!2326))) (tail!12389 (t!379224 s!2326))))))

(assert (= (and d!2056307 c!1203618) b!6552351))

(assert (= (and d!2056307 (not c!1203618)) b!6552352))

(assert (=> d!2056307 m!7334756))

(declare-fun m!7334768 () Bool)

(assert (=> b!6552351 m!7334768))

(assert (=> b!6552352 m!7334760))

(assert (=> b!6552352 m!7334760))

(declare-fun m!7334770 () Bool)

(assert (=> b!6552352 m!7334770))

(assert (=> b!6552352 m!7334764))

(assert (=> b!6552352 m!7334770))

(assert (=> b!6552352 m!7334764))

(declare-fun m!7334772 () Bool)

(assert (=> b!6552352 m!7334772))

(assert (=> b!6552062 d!2056307))

(declare-fun d!2056309 () Bool)

(declare-fun dynLambda!26025 (Int Context!11622) (InoxSet Context!11622))

(assert (=> d!2056309 (= (flatMap!1932 z!1189 lambda!363999) (dynLambda!26025 lambda!363999 (h!71905 zl!343)))))

(declare-fun lt!2402996 () Unit!159043)

(declare-fun choose!48769 ((InoxSet Context!11622) Context!11622 Int) Unit!159043)

(assert (=> d!2056309 (= lt!2402996 (choose!48769 z!1189 (h!71905 zl!343) lambda!363999))))

(assert (=> d!2056309 (= z!1189 (store ((as const (Array Context!11622 Bool)) false) (h!71905 zl!343) true))))

(assert (=> d!2056309 (= (lemmaFlatMapOnSingletonSet!1458 z!1189 (h!71905 zl!343) lambda!363999) lt!2402996)))

(declare-fun b_lambda!247963 () Bool)

(assert (=> (not b_lambda!247963) (not d!2056309)))

(declare-fun bs!1672537 () Bool)

(assert (= bs!1672537 d!2056309))

(assert (=> bs!1672537 m!7334508))

(declare-fun m!7334774 () Bool)

(assert (=> bs!1672537 m!7334774))

(declare-fun m!7334776 () Bool)

(assert (=> bs!1672537 m!7334776))

(declare-fun m!7334778 () Bool)

(assert (=> bs!1672537 m!7334778))

(assert (=> b!6552102 d!2056309))

(declare-fun bm!569895 () Bool)

(declare-fun call!569900 () (InoxSet Context!11622))

(assert (=> bm!569895 (= call!569900 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343))))))) (Context!11623 (t!379222 (exprs!6311 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343)))))))) (h!71906 s!2326)))))

(declare-fun b!6552396 () Bool)

(declare-fun e!3967022 () (InoxSet Context!11622))

(assert (=> b!6552396 (= e!3967022 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056311 () Bool)

(declare-fun c!1203633 () Bool)

(declare-fun e!3967023 () Bool)

(assert (=> d!2056311 (= c!1203633 e!3967023)))

(declare-fun res!2688298 () Bool)

(assert (=> d!2056311 (=> (not res!2688298) (not e!3967023))))

(assert (=> d!2056311 (= res!2688298 ((_ is Cons!65456) (exprs!6311 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343))))))))))

(declare-fun e!3967024 () (InoxSet Context!11622))

(assert (=> d!2056311 (= (derivationStepZipperUp!1601 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343))))) (h!71906 s!2326)) e!3967024)))

(declare-fun b!6552397 () Bool)

(assert (=> b!6552397 (= e!3967024 e!3967022)))

(declare-fun c!1203632 () Bool)

(assert (=> b!6552397 (= c!1203632 ((_ is Cons!65456) (exprs!6311 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343))))))))))

(declare-fun b!6552398 () Bool)

(assert (=> b!6552398 (= e!3967023 (nullable!6420 (h!71904 (exprs!6311 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343)))))))))))

(declare-fun b!6552399 () Bool)

(assert (=> b!6552399 (= e!3967022 call!569900)))

(declare-fun b!6552400 () Bool)

(assert (=> b!6552400 (= e!3967024 ((_ map or) call!569900 (derivationStepZipperUp!1601 (Context!11623 (t!379222 (exprs!6311 (Context!11623 (Cons!65456 (h!71904 (exprs!6311 (h!71905 zl!343))) (t!379222 (exprs!6311 (h!71905 zl!343)))))))) (h!71906 s!2326))))))

(assert (= (and d!2056311 res!2688298) b!6552398))

(assert (= (and d!2056311 c!1203633) b!6552400))

(assert (= (and d!2056311 (not c!1203633)) b!6552397))

(assert (= (and b!6552397 c!1203632) b!6552399))

(assert (= (and b!6552397 (not c!1203632)) b!6552396))

(assert (= (or b!6552400 b!6552399) bm!569895))

(declare-fun m!7334786 () Bool)

(assert (=> bm!569895 m!7334786))

(declare-fun m!7334788 () Bool)

(assert (=> b!6552398 m!7334788))

(declare-fun m!7334790 () Bool)

(assert (=> b!6552400 m!7334790))

(assert (=> b!6552102 d!2056311))

(declare-fun bm!569896 () Bool)

(declare-fun call!569901 () (InoxSet Context!11622))

(assert (=> bm!569896 (= call!569901 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 lt!2402926)) (Context!11623 (t!379222 (exprs!6311 lt!2402926))) (h!71906 s!2326)))))

(declare-fun b!6552401 () Bool)

(declare-fun e!3967025 () (InoxSet Context!11622))

(assert (=> b!6552401 (= e!3967025 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056315 () Bool)

(declare-fun c!1203635 () Bool)

(declare-fun e!3967026 () Bool)

(assert (=> d!2056315 (= c!1203635 e!3967026)))

(declare-fun res!2688299 () Bool)

(assert (=> d!2056315 (=> (not res!2688299) (not e!3967026))))

(assert (=> d!2056315 (= res!2688299 ((_ is Cons!65456) (exprs!6311 lt!2402926)))))

(declare-fun e!3967027 () (InoxSet Context!11622))

(assert (=> d!2056315 (= (derivationStepZipperUp!1601 lt!2402926 (h!71906 s!2326)) e!3967027)))

(declare-fun b!6552402 () Bool)

(assert (=> b!6552402 (= e!3967027 e!3967025)))

(declare-fun c!1203634 () Bool)

(assert (=> b!6552402 (= c!1203634 ((_ is Cons!65456) (exprs!6311 lt!2402926)))))

(declare-fun b!6552403 () Bool)

(assert (=> b!6552403 (= e!3967026 (nullable!6420 (h!71904 (exprs!6311 lt!2402926))))))

(declare-fun b!6552404 () Bool)

(assert (=> b!6552404 (= e!3967025 call!569901)))

(declare-fun b!6552405 () Bool)

(assert (=> b!6552405 (= e!3967027 ((_ map or) call!569901 (derivationStepZipperUp!1601 (Context!11623 (t!379222 (exprs!6311 lt!2402926))) (h!71906 s!2326))))))

(assert (= (and d!2056315 res!2688299) b!6552403))

(assert (= (and d!2056315 c!1203635) b!6552405))

(assert (= (and d!2056315 (not c!1203635)) b!6552402))

(assert (= (and b!6552402 c!1203634) b!6552404))

(assert (= (and b!6552402 (not c!1203634)) b!6552401))

(assert (= (or b!6552405 b!6552404) bm!569896))

(declare-fun m!7334792 () Bool)

(assert (=> bm!569896 m!7334792))

(declare-fun m!7334794 () Bool)

(assert (=> b!6552403 m!7334794))

(declare-fun m!7334796 () Bool)

(assert (=> b!6552405 m!7334796))

(assert (=> b!6552102 d!2056315))

(declare-fun c!1203667 () Bool)

(declare-fun call!569922 () List!65580)

(declare-fun call!569925 () (InoxSet Context!11622))

(declare-fun bm!569917 () Bool)

(assert (=> bm!569917 (= call!569925 (derivationStepZipperDown!1675 (ite c!1203667 (regOne!33367 (h!71904 (exprs!6311 (h!71905 zl!343)))) (regOne!33366 (h!71904 (exprs!6311 (h!71905 zl!343))))) (ite c!1203667 lt!2402926 (Context!11623 call!569922)) (h!71906 s!2326)))))

(declare-fun c!1203664 () Bool)

(declare-fun call!569926 () (InoxSet Context!11622))

(declare-fun call!569927 () List!65580)

(declare-fun bm!569918 () Bool)

(declare-fun c!1203665 () Bool)

(assert (=> bm!569918 (= call!569926 (derivationStepZipperDown!1675 (ite c!1203667 (regTwo!33367 (h!71904 (exprs!6311 (h!71905 zl!343)))) (ite c!1203665 (regTwo!33366 (h!71904 (exprs!6311 (h!71905 zl!343)))) (ite c!1203664 (regOne!33366 (h!71904 (exprs!6311 (h!71905 zl!343)))) (reg!16756 (h!71904 (exprs!6311 (h!71905 zl!343))))))) (ite (or c!1203667 c!1203665) lt!2402926 (Context!11623 call!569927)) (h!71906 s!2326)))))

(declare-fun b!6552494 () Bool)

(declare-fun e!3967079 () (InoxSet Context!11622))

(assert (=> b!6552494 (= e!3967079 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056317 () Bool)

(declare-fun c!1203666 () Bool)

(assert (=> d!2056317 (= c!1203666 (and ((_ is ElementMatch!16427) (h!71904 (exprs!6311 (h!71905 zl!343)))) (= (c!1203556 (h!71904 (exprs!6311 (h!71905 zl!343)))) (h!71906 s!2326))))))

(declare-fun e!3967081 () (InoxSet Context!11622))

(assert (=> d!2056317 (= (derivationStepZipperDown!1675 (h!71904 (exprs!6311 (h!71905 zl!343))) lt!2402926 (h!71906 s!2326)) e!3967081)))

(declare-fun bm!569919 () Bool)

(declare-fun call!569923 () (InoxSet Context!11622))

(declare-fun call!569924 () (InoxSet Context!11622))

(assert (=> bm!569919 (= call!569923 call!569924)))

(declare-fun b!6552495 () Bool)

(declare-fun e!3967082 () (InoxSet Context!11622))

(declare-fun e!3967080 () (InoxSet Context!11622))

(assert (=> b!6552495 (= e!3967082 e!3967080)))

(assert (=> b!6552495 (= c!1203664 ((_ is Concat!25272) (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6552496 () Bool)

(assert (=> b!6552496 (= e!3967079 call!569923)))

(declare-fun b!6552497 () Bool)

(declare-fun e!3967075 () Bool)

(assert (=> b!6552497 (= e!3967075 (nullable!6420 (regOne!33366 (h!71904 (exprs!6311 (h!71905 zl!343))))))))

(declare-fun b!6552498 () Bool)

(assert (=> b!6552498 (= e!3967081 (store ((as const (Array Context!11622 Bool)) false) lt!2402926 true))))

(declare-fun b!6552499 () Bool)

(declare-fun e!3967078 () (InoxSet Context!11622))

(assert (=> b!6552499 (= e!3967081 e!3967078)))

(assert (=> b!6552499 (= c!1203667 ((_ is Union!16427) (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6552500 () Bool)

(assert (=> b!6552500 (= e!3967082 ((_ map or) call!569925 call!569924))))

(declare-fun b!6552501 () Bool)

(assert (=> b!6552501 (= c!1203665 e!3967075)))

(declare-fun res!2688332 () Bool)

(assert (=> b!6552501 (=> (not res!2688332) (not e!3967075))))

(assert (=> b!6552501 (= res!2688332 ((_ is Concat!25272) (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(assert (=> b!6552501 (= e!3967078 e!3967082)))

(declare-fun bm!569920 () Bool)

(declare-fun $colon$colon!2268 (List!65580 Regex!16427) List!65580)

(assert (=> bm!569920 (= call!569922 ($colon$colon!2268 (exprs!6311 lt!2402926) (ite (or c!1203665 c!1203664) (regTwo!33366 (h!71904 (exprs!6311 (h!71905 zl!343)))) (h!71904 (exprs!6311 (h!71905 zl!343))))))))

(declare-fun b!6552502 () Bool)

(declare-fun c!1203668 () Bool)

(assert (=> b!6552502 (= c!1203668 ((_ is Star!16427) (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(assert (=> b!6552502 (= e!3967080 e!3967079)))

(declare-fun bm!569921 () Bool)

(assert (=> bm!569921 (= call!569927 call!569922)))

(declare-fun bm!569922 () Bool)

(assert (=> bm!569922 (= call!569924 call!569926)))

(declare-fun b!6552503 () Bool)

(assert (=> b!6552503 (= e!3967080 call!569923)))

(declare-fun b!6552504 () Bool)

(assert (=> b!6552504 (= e!3967078 ((_ map or) call!569925 call!569926))))

(assert (= (and d!2056317 c!1203666) b!6552498))

(assert (= (and d!2056317 (not c!1203666)) b!6552499))

(assert (= (and b!6552499 c!1203667) b!6552504))

(assert (= (and b!6552499 (not c!1203667)) b!6552501))

(assert (= (and b!6552501 res!2688332) b!6552497))

(assert (= (and b!6552501 c!1203665) b!6552500))

(assert (= (and b!6552501 (not c!1203665)) b!6552495))

(assert (= (and b!6552495 c!1203664) b!6552503))

(assert (= (and b!6552495 (not c!1203664)) b!6552502))

(assert (= (and b!6552502 c!1203668) b!6552496))

(assert (= (and b!6552502 (not c!1203668)) b!6552494))

(assert (= (or b!6552503 b!6552496) bm!569921))

(assert (= (or b!6552503 b!6552496) bm!569919))

(assert (= (or b!6552500 bm!569921) bm!569920))

(assert (= (or b!6552500 bm!569919) bm!569922))

(assert (= (or b!6552504 bm!569922) bm!569918))

(assert (= (or b!6552504 b!6552500) bm!569917))

(declare-fun m!7334878 () Bool)

(assert (=> bm!569920 m!7334878))

(declare-fun m!7334880 () Bool)

(assert (=> b!6552498 m!7334880))

(declare-fun m!7334882 () Bool)

(assert (=> b!6552497 m!7334882))

(declare-fun m!7334884 () Bool)

(assert (=> bm!569917 m!7334884))

(declare-fun m!7334886 () Bool)

(assert (=> bm!569918 m!7334886))

(assert (=> b!6552102 d!2056317))

(declare-fun d!2056337 () Bool)

(declare-fun nullableFct!2346 (Regex!16427) Bool)

(assert (=> d!2056337 (= (nullable!6420 (h!71904 (exprs!6311 (h!71905 zl!343)))) (nullableFct!2346 (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun bs!1672548 () Bool)

(assert (= bs!1672548 d!2056337))

(declare-fun m!7334888 () Bool)

(assert (=> bs!1672548 m!7334888))

(assert (=> b!6552102 d!2056337))

(declare-fun bm!569929 () Bool)

(declare-fun call!569934 () (InoxSet Context!11622))

(assert (=> bm!569929 (= call!569934 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 (h!71905 zl!343))) (Context!11623 (t!379222 (exprs!6311 (h!71905 zl!343)))) (h!71906 s!2326)))))

(declare-fun b!6552515 () Bool)

(declare-fun e!3967091 () (InoxSet Context!11622))

(assert (=> b!6552515 (= e!3967091 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056339 () Bool)

(declare-fun c!1203672 () Bool)

(declare-fun e!3967092 () Bool)

(assert (=> d!2056339 (= c!1203672 e!3967092)))

(declare-fun res!2688339 () Bool)

(assert (=> d!2056339 (=> (not res!2688339) (not e!3967092))))

(assert (=> d!2056339 (= res!2688339 ((_ is Cons!65456) (exprs!6311 (h!71905 zl!343))))))

(declare-fun e!3967093 () (InoxSet Context!11622))

(assert (=> d!2056339 (= (derivationStepZipperUp!1601 (h!71905 zl!343) (h!71906 s!2326)) e!3967093)))

(declare-fun b!6552516 () Bool)

(assert (=> b!6552516 (= e!3967093 e!3967091)))

(declare-fun c!1203671 () Bool)

(assert (=> b!6552516 (= c!1203671 ((_ is Cons!65456) (exprs!6311 (h!71905 zl!343))))))

(declare-fun b!6552517 () Bool)

(assert (=> b!6552517 (= e!3967092 (nullable!6420 (h!71904 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6552518 () Bool)

(assert (=> b!6552518 (= e!3967091 call!569934)))

(declare-fun b!6552519 () Bool)

(assert (=> b!6552519 (= e!3967093 ((_ map or) call!569934 (derivationStepZipperUp!1601 (Context!11623 (t!379222 (exprs!6311 (h!71905 zl!343)))) (h!71906 s!2326))))))

(assert (= (and d!2056339 res!2688339) b!6552517))

(assert (= (and d!2056339 c!1203672) b!6552519))

(assert (= (and d!2056339 (not c!1203672)) b!6552516))

(assert (= (and b!6552516 c!1203671) b!6552518))

(assert (= (and b!6552516 (not c!1203671)) b!6552515))

(assert (= (or b!6552519 b!6552518) bm!569929))

(declare-fun m!7334890 () Bool)

(assert (=> bm!569929 m!7334890))

(assert (=> b!6552517 m!7334510))

(declare-fun m!7334892 () Bool)

(assert (=> b!6552519 m!7334892))

(assert (=> b!6552102 d!2056339))

(declare-fun d!2056341 () Bool)

(declare-fun choose!48774 ((InoxSet Context!11622) Int) (InoxSet Context!11622))

(assert (=> d!2056341 (= (flatMap!1932 z!1189 lambda!363999) (choose!48774 z!1189 lambda!363999))))

(declare-fun bs!1672549 () Bool)

(assert (= bs!1672549 d!2056341))

(declare-fun m!7334894 () Bool)

(assert (=> bs!1672549 m!7334894))

(assert (=> b!6552102 d!2056341))

(declare-fun d!2056343 () Bool)

(declare-fun c!1203673 () Bool)

(assert (=> d!2056343 (= c!1203673 (isEmpty!37690 (t!379224 s!2326)))))

(declare-fun e!3967094 () Bool)

(assert (=> d!2056343 (= (matchZipper!2439 lt!2402878 (t!379224 s!2326)) e!3967094)))

(declare-fun b!6552520 () Bool)

(assert (=> b!6552520 (= e!3967094 (nullableZipper!2171 lt!2402878))))

(declare-fun b!6552521 () Bool)

(assert (=> b!6552521 (= e!3967094 (matchZipper!2439 (derivationStepZipper!2393 lt!2402878 (head!13304 (t!379224 s!2326))) (tail!12389 (t!379224 s!2326))))))

(assert (= (and d!2056343 c!1203673) b!6552520))

(assert (= (and d!2056343 (not c!1203673)) b!6552521))

(assert (=> d!2056343 m!7334756))

(declare-fun m!7334896 () Bool)

(assert (=> b!6552520 m!7334896))

(assert (=> b!6552521 m!7334760))

(assert (=> b!6552521 m!7334760))

(declare-fun m!7334898 () Bool)

(assert (=> b!6552521 m!7334898))

(assert (=> b!6552521 m!7334764))

(assert (=> b!6552521 m!7334898))

(assert (=> b!6552521 m!7334764))

(declare-fun m!7334900 () Bool)

(assert (=> b!6552521 m!7334900))

(assert (=> b!6552084 d!2056343))

(declare-fun d!2056345 () Bool)

(assert (=> d!2056345 (= (isEmpty!37686 (t!379223 zl!343)) ((_ is Nil!65457) (t!379223 zl!343)))))

(assert (=> b!6552063 d!2056345))

(declare-fun bm!569933 () Bool)

(declare-fun call!569938 () List!65580)

(declare-fun call!569941 () (InoxSet Context!11622))

(declare-fun c!1203679 () Bool)

(assert (=> bm!569933 (= call!569941 (derivationStepZipperDown!1675 (ite c!1203679 (regOne!33367 (reg!16756 (regOne!33366 r!7292))) (regOne!33366 (reg!16756 (regOne!33366 r!7292)))) (ite c!1203679 lt!2402901 (Context!11623 call!569938)) (h!71906 s!2326)))))

(declare-fun c!1203676 () Bool)

(declare-fun call!569942 () (InoxSet Context!11622))

(declare-fun bm!569934 () Bool)

(declare-fun c!1203677 () Bool)

(declare-fun call!569943 () List!65580)

(assert (=> bm!569934 (= call!569942 (derivationStepZipperDown!1675 (ite c!1203679 (regTwo!33367 (reg!16756 (regOne!33366 r!7292))) (ite c!1203677 (regTwo!33366 (reg!16756 (regOne!33366 r!7292))) (ite c!1203676 (regOne!33366 (reg!16756 (regOne!33366 r!7292))) (reg!16756 (reg!16756 (regOne!33366 r!7292)))))) (ite (or c!1203679 c!1203677) lt!2402901 (Context!11623 call!569943)) (h!71906 s!2326)))))

(declare-fun b!6552531 () Bool)

(declare-fun e!3967104 () (InoxSet Context!11622))

(assert (=> b!6552531 (= e!3967104 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056347 () Bool)

(declare-fun c!1203678 () Bool)

(assert (=> d!2056347 (= c!1203678 (and ((_ is ElementMatch!16427) (reg!16756 (regOne!33366 r!7292))) (= (c!1203556 (reg!16756 (regOne!33366 r!7292))) (h!71906 s!2326))))))

(declare-fun e!3967106 () (InoxSet Context!11622))

(assert (=> d!2056347 (= (derivationStepZipperDown!1675 (reg!16756 (regOne!33366 r!7292)) lt!2402901 (h!71906 s!2326)) e!3967106)))

(declare-fun bm!569935 () Bool)

(declare-fun call!569939 () (InoxSet Context!11622))

(declare-fun call!569940 () (InoxSet Context!11622))

(assert (=> bm!569935 (= call!569939 call!569940)))

(declare-fun b!6552532 () Bool)

(declare-fun e!3967107 () (InoxSet Context!11622))

(declare-fun e!3967105 () (InoxSet Context!11622))

(assert (=> b!6552532 (= e!3967107 e!3967105)))

(assert (=> b!6552532 (= c!1203676 ((_ is Concat!25272) (reg!16756 (regOne!33366 r!7292))))))

(declare-fun b!6552533 () Bool)

(assert (=> b!6552533 (= e!3967104 call!569939)))

(declare-fun b!6552534 () Bool)

(declare-fun e!3967102 () Bool)

(assert (=> b!6552534 (= e!3967102 (nullable!6420 (regOne!33366 (reg!16756 (regOne!33366 r!7292)))))))

(declare-fun b!6552535 () Bool)

(assert (=> b!6552535 (= e!3967106 (store ((as const (Array Context!11622 Bool)) false) lt!2402901 true))))

(declare-fun b!6552536 () Bool)

(declare-fun e!3967103 () (InoxSet Context!11622))

(assert (=> b!6552536 (= e!3967106 e!3967103)))

(assert (=> b!6552536 (= c!1203679 ((_ is Union!16427) (reg!16756 (regOne!33366 r!7292))))))

(declare-fun b!6552537 () Bool)

(assert (=> b!6552537 (= e!3967107 ((_ map or) call!569941 call!569940))))

(declare-fun b!6552538 () Bool)

(assert (=> b!6552538 (= c!1203677 e!3967102)))

(declare-fun res!2688345 () Bool)

(assert (=> b!6552538 (=> (not res!2688345) (not e!3967102))))

(assert (=> b!6552538 (= res!2688345 ((_ is Concat!25272) (reg!16756 (regOne!33366 r!7292))))))

(assert (=> b!6552538 (= e!3967103 e!3967107)))

(declare-fun bm!569936 () Bool)

(assert (=> bm!569936 (= call!569938 ($colon$colon!2268 (exprs!6311 lt!2402901) (ite (or c!1203677 c!1203676) (regTwo!33366 (reg!16756 (regOne!33366 r!7292))) (reg!16756 (regOne!33366 r!7292)))))))

(declare-fun b!6552539 () Bool)

(declare-fun c!1203680 () Bool)

(assert (=> b!6552539 (= c!1203680 ((_ is Star!16427) (reg!16756 (regOne!33366 r!7292))))))

(assert (=> b!6552539 (= e!3967105 e!3967104)))

(declare-fun bm!569937 () Bool)

(assert (=> bm!569937 (= call!569943 call!569938)))

(declare-fun bm!569938 () Bool)

(assert (=> bm!569938 (= call!569940 call!569942)))

(declare-fun b!6552540 () Bool)

(assert (=> b!6552540 (= e!3967105 call!569939)))

(declare-fun b!6552541 () Bool)

(assert (=> b!6552541 (= e!3967103 ((_ map or) call!569941 call!569942))))

(assert (= (and d!2056347 c!1203678) b!6552535))

(assert (= (and d!2056347 (not c!1203678)) b!6552536))

(assert (= (and b!6552536 c!1203679) b!6552541))

(assert (= (and b!6552536 (not c!1203679)) b!6552538))

(assert (= (and b!6552538 res!2688345) b!6552534))

(assert (= (and b!6552538 c!1203677) b!6552537))

(assert (= (and b!6552538 (not c!1203677)) b!6552532))

(assert (= (and b!6552532 c!1203676) b!6552540))

(assert (= (and b!6552532 (not c!1203676)) b!6552539))

(assert (= (and b!6552539 c!1203680) b!6552533))

(assert (= (and b!6552539 (not c!1203680)) b!6552531))

(assert (= (or b!6552540 b!6552533) bm!569937))

(assert (= (or b!6552540 b!6552533) bm!569935))

(assert (= (or b!6552537 bm!569937) bm!569936))

(assert (= (or b!6552537 bm!569935) bm!569938))

(assert (= (or b!6552541 bm!569938) bm!569934))

(assert (= (or b!6552541 b!6552537) bm!569933))

(declare-fun m!7334908 () Bool)

(assert (=> bm!569936 m!7334908))

(assert (=> b!6552535 m!7334456))

(declare-fun m!7334910 () Bool)

(assert (=> b!6552534 m!7334910))

(declare-fun m!7334912 () Bool)

(assert (=> bm!569933 m!7334912))

(declare-fun m!7334914 () Bool)

(assert (=> bm!569934 m!7334914))

(assert (=> b!6552083 d!2056347))

(declare-fun d!2056351 () Bool)

(declare-fun forall!15599 (List!65580 Int) Bool)

(assert (=> d!2056351 (forall!15599 (++!14556 lt!2402916 lt!2402888) lambda!364001)))

(declare-fun lt!2403010 () Unit!159043)

(declare-fun choose!48775 (List!65580 List!65580 Int) Unit!159043)

(assert (=> d!2056351 (= lt!2403010 (choose!48775 lt!2402916 lt!2402888 lambda!364001))))

(assert (=> d!2056351 (forall!15599 lt!2402916 lambda!364001)))

(assert (=> d!2056351 (= (lemmaConcatPreservesForall!400 lt!2402916 lt!2402888 lambda!364001) lt!2403010)))

(declare-fun bs!1672552 () Bool)

(assert (= bs!1672552 d!2056351))

(assert (=> bs!1672552 m!7334378))

(assert (=> bs!1672552 m!7334378))

(declare-fun m!7334918 () Bool)

(assert (=> bs!1672552 m!7334918))

(declare-fun m!7334920 () Bool)

(assert (=> bs!1672552 m!7334920))

(declare-fun m!7334922 () Bool)

(assert (=> bs!1672552 m!7334922))

(assert (=> b!6552065 d!2056351))

(declare-fun d!2056355 () Bool)

(declare-fun choose!48776 ((InoxSet Context!11622) Int) (InoxSet Context!11622))

(assert (=> d!2056355 (= (map!14949 lt!2402910 lambda!364000) (choose!48776 lt!2402910 lambda!364000))))

(declare-fun bs!1672558 () Bool)

(assert (= bs!1672558 d!2056355))

(declare-fun m!7334924 () Bool)

(assert (=> bs!1672558 m!7334924))

(assert (=> b!6552065 d!2056355))

(declare-fun b!6552578 () Bool)

(declare-fun e!3967127 () Bool)

(declare-fun lt!2403015 () List!65580)

(assert (=> b!6552578 (= e!3967127 (or (not (= lt!2402888 Nil!65456)) (= lt!2403015 lt!2402916)))))

(declare-fun b!6552575 () Bool)

(declare-fun e!3967126 () List!65580)

(assert (=> b!6552575 (= e!3967126 lt!2402888)))

(declare-fun d!2056357 () Bool)

(assert (=> d!2056357 e!3967127))

(declare-fun res!2688362 () Bool)

(assert (=> d!2056357 (=> (not res!2688362) (not e!3967127))))

(declare-fun content!12560 (List!65580) (InoxSet Regex!16427))

(assert (=> d!2056357 (= res!2688362 (= (content!12560 lt!2403015) ((_ map or) (content!12560 lt!2402916) (content!12560 lt!2402888))))))

(assert (=> d!2056357 (= lt!2403015 e!3967126)))

(declare-fun c!1203690 () Bool)

(assert (=> d!2056357 (= c!1203690 ((_ is Nil!65456) lt!2402916))))

(assert (=> d!2056357 (= (++!14556 lt!2402916 lt!2402888) lt!2403015)))

(declare-fun b!6552577 () Bool)

(declare-fun res!2688361 () Bool)

(assert (=> b!6552577 (=> (not res!2688361) (not e!3967127))))

(declare-fun size!40502 (List!65580) Int)

(assert (=> b!6552577 (= res!2688361 (= (size!40502 lt!2403015) (+ (size!40502 lt!2402916) (size!40502 lt!2402888))))))

(declare-fun b!6552576 () Bool)

(assert (=> b!6552576 (= e!3967126 (Cons!65456 (h!71904 lt!2402916) (++!14556 (t!379222 lt!2402916) lt!2402888)))))

(assert (= (and d!2056357 c!1203690) b!6552575))

(assert (= (and d!2056357 (not c!1203690)) b!6552576))

(assert (= (and d!2056357 res!2688362) b!6552577))

(assert (= (and b!6552577 res!2688361) b!6552578))

(declare-fun m!7334938 () Bool)

(assert (=> d!2056357 m!7334938))

(declare-fun m!7334940 () Bool)

(assert (=> d!2056357 m!7334940))

(declare-fun m!7334942 () Bool)

(assert (=> d!2056357 m!7334942))

(declare-fun m!7334944 () Bool)

(assert (=> b!6552577 m!7334944))

(declare-fun m!7334946 () Bool)

(assert (=> b!6552577 m!7334946))

(declare-fun m!7334948 () Bool)

(assert (=> b!6552577 m!7334948))

(declare-fun m!7334950 () Bool)

(assert (=> b!6552576 m!7334950))

(assert (=> b!6552065 d!2056357))

(declare-fun bs!1672569 () Bool)

(declare-fun d!2056365 () Bool)

(assert (= bs!1672569 (and d!2056365 b!6552065)))

(declare-fun lambda!364042 () Int)

(assert (=> bs!1672569 (= (= (exprs!6311 lt!2402901) lt!2402888) (= lambda!364042 lambda!364000))))

(assert (=> d!2056365 true))

(assert (=> d!2056365 (= (appendTo!188 lt!2402910 lt!2402901) (map!14949 lt!2402910 lambda!364042))))

(declare-fun bs!1672571 () Bool)

(assert (= bs!1672571 d!2056365))

(declare-fun m!7334956 () Bool)

(assert (=> bs!1672571 m!7334956))

(assert (=> b!6552065 d!2056365))

(declare-fun d!2056371 () Bool)

(declare-fun dynLambda!26026 (Int Context!11622) Context!11622)

(assert (=> d!2056371 (= (map!14949 lt!2402910 lambda!364000) (store ((as const (Array Context!11622 Bool)) false) (dynLambda!26026 lambda!364000 lt!2402875) true))))

(declare-fun lt!2403025 () Unit!159043)

(declare-fun choose!48778 ((InoxSet Context!11622) Context!11622 Int) Unit!159043)

(assert (=> d!2056371 (= lt!2403025 (choose!48778 lt!2402910 lt!2402875 lambda!364000))))

(assert (=> d!2056371 (= lt!2402910 (store ((as const (Array Context!11622 Bool)) false) lt!2402875 true))))

(assert (=> d!2056371 (= (lemmaMapOnSingletonSet!210 lt!2402910 lt!2402875 lambda!364000) lt!2403025)))

(declare-fun b_lambda!247967 () Bool)

(assert (=> (not b_lambda!247967) (not d!2056371)))

(declare-fun bs!1672573 () Bool)

(assert (= bs!1672573 d!2056371))

(assert (=> bs!1672573 m!7334446))

(declare-fun m!7334964 () Bool)

(assert (=> bs!1672573 m!7334964))

(assert (=> bs!1672573 m!7334964))

(declare-fun m!7334966 () Bool)

(assert (=> bs!1672573 m!7334966))

(declare-fun m!7334968 () Bool)

(assert (=> bs!1672573 m!7334968))

(assert (=> bs!1672573 m!7334492))

(assert (=> b!6552065 d!2056371))

(declare-fun d!2056375 () Bool)

(declare-fun lt!2403028 () Regex!16427)

(assert (=> d!2056375 (validRegex!8163 lt!2403028)))

(assert (=> d!2056375 (= lt!2403028 (generalisedUnion!2271 (unfocusZipperList!1848 lt!2402906)))))

(assert (=> d!2056375 (= (unfocusZipper!2169 lt!2402906) lt!2403028)))

(declare-fun bs!1672582 () Bool)

(assert (= bs!1672582 d!2056375))

(declare-fun m!7334970 () Bool)

(assert (=> bs!1672582 m!7334970))

(declare-fun m!7334972 () Bool)

(assert (=> bs!1672582 m!7334972))

(assert (=> bs!1672582 m!7334972))

(declare-fun m!7334974 () Bool)

(assert (=> bs!1672582 m!7334974))

(assert (=> b!6552064 d!2056375))

(declare-fun bs!1672594 () Bool)

(declare-fun b!6552644 () Bool)

(assert (= bs!1672594 (and b!6552644 b!6552070)))

(declare-fun lambda!364049 () Int)

(assert (=> bs!1672594 (not (= lambda!364049 lambda!364003))))

(declare-fun bs!1672595 () Bool)

(assert (= bs!1672595 (and b!6552644 b!6552081)))

(assert (=> bs!1672595 (not (= lambda!364049 lambda!363997))))

(assert (=> bs!1672594 (not (= lambda!364049 lambda!364002))))

(declare-fun bs!1672596 () Bool)

(assert (= bs!1672596 (and b!6552644 d!2056285)))

(assert (=> bs!1672596 (not (= lambda!364049 lambda!364019))))

(assert (=> bs!1672595 (not (= lambda!364049 lambda!363998))))

(assert (=> bs!1672596 (not (= lambda!364049 lambda!364016))))

(declare-fun bs!1672597 () Bool)

(assert (= bs!1672597 (and b!6552644 d!2056275)))

(assert (=> bs!1672597 (not (= lambda!364049 lambda!364009))))

(assert (=> b!6552644 true))

(assert (=> b!6552644 true))

(declare-fun bs!1672598 () Bool)

(declare-fun b!6552645 () Bool)

(assert (= bs!1672598 (and b!6552645 b!6552070)))

(declare-fun lambda!364050 () Int)

(assert (=> bs!1672598 (= (= (regOne!33366 r!7292) lt!2402883) (= lambda!364050 lambda!364003))))

(declare-fun bs!1672599 () Bool)

(assert (= bs!1672599 (and b!6552645 b!6552081)))

(assert (=> bs!1672599 (not (= lambda!364050 lambda!363997))))

(assert (=> bs!1672598 (not (= lambda!364050 lambda!364002))))

(declare-fun bs!1672600 () Bool)

(assert (= bs!1672600 (and b!6552645 b!6552644)))

(assert (=> bs!1672600 (not (= lambda!364050 lambda!364049))))

(declare-fun bs!1672601 () Bool)

(assert (= bs!1672601 (and b!6552645 d!2056285)))

(assert (=> bs!1672601 (= lambda!364050 lambda!364019)))

(assert (=> bs!1672599 (= lambda!364050 lambda!363998)))

(assert (=> bs!1672601 (not (= lambda!364050 lambda!364016))))

(declare-fun bs!1672602 () Bool)

(assert (= bs!1672602 (and b!6552645 d!2056275)))

(assert (=> bs!1672602 (not (= lambda!364050 lambda!364009))))

(assert (=> b!6552645 true))

(assert (=> b!6552645 true))

(declare-fun bm!569949 () Bool)

(declare-fun call!569955 () Bool)

(assert (=> bm!569949 (= call!569955 (isEmpty!37690 s!2326))))

(declare-fun e!3967163 () Bool)

(declare-fun call!569954 () Bool)

(assert (=> b!6552644 (= e!3967163 call!569954)))

(declare-fun e!3967167 () Bool)

(assert (=> b!6552645 (= e!3967167 call!569954)))

(declare-fun b!6552646 () Bool)

(declare-fun e!3967162 () Bool)

(assert (=> b!6552646 (= e!3967162 (= s!2326 (Cons!65458 (c!1203556 r!7292) Nil!65458)))))

(declare-fun b!6552647 () Bool)

(declare-fun e!3967168 () Bool)

(declare-fun e!3967164 () Bool)

(assert (=> b!6552647 (= e!3967168 e!3967164)))

(declare-fun res!2688392 () Bool)

(assert (=> b!6552647 (= res!2688392 (not ((_ is EmptyLang!16427) r!7292)))))

(assert (=> b!6552647 (=> (not res!2688392) (not e!3967164))))

(declare-fun b!6552648 () Bool)

(declare-fun res!2688391 () Bool)

(assert (=> b!6552648 (=> res!2688391 e!3967163)))

(assert (=> b!6552648 (= res!2688391 call!569955)))

(assert (=> b!6552648 (= e!3967167 e!3967163)))

(declare-fun b!6552649 () Bool)

(assert (=> b!6552649 (= e!3967168 call!569955)))

(declare-fun d!2056377 () Bool)

(declare-fun c!1203713 () Bool)

(assert (=> d!2056377 (= c!1203713 ((_ is EmptyExpr!16427) r!7292))))

(assert (=> d!2056377 (= (matchRSpec!3528 r!7292 s!2326) e!3967168)))

(declare-fun b!6552650 () Bool)

(declare-fun c!1203710 () Bool)

(assert (=> b!6552650 (= c!1203710 ((_ is Union!16427) r!7292))))

(declare-fun e!3967165 () Bool)

(assert (=> b!6552650 (= e!3967162 e!3967165)))

(declare-fun b!6552651 () Bool)

(declare-fun c!1203712 () Bool)

(assert (=> b!6552651 (= c!1203712 ((_ is ElementMatch!16427) r!7292))))

(assert (=> b!6552651 (= e!3967164 e!3967162)))

(declare-fun b!6552652 () Bool)

(assert (=> b!6552652 (= e!3967165 e!3967167)))

(declare-fun c!1203711 () Bool)

(assert (=> b!6552652 (= c!1203711 ((_ is Star!16427) r!7292))))

(declare-fun b!6552653 () Bool)

(declare-fun e!3967166 () Bool)

(assert (=> b!6552653 (= e!3967165 e!3967166)))

(declare-fun res!2688390 () Bool)

(assert (=> b!6552653 (= res!2688390 (matchRSpec!3528 (regOne!33367 r!7292) s!2326))))

(assert (=> b!6552653 (=> res!2688390 e!3967166)))

(declare-fun bm!569950 () Bool)

(assert (=> bm!569950 (= call!569954 (Exists!3497 (ite c!1203711 lambda!364049 lambda!364050)))))

(declare-fun b!6552654 () Bool)

(assert (=> b!6552654 (= e!3967166 (matchRSpec!3528 (regTwo!33367 r!7292) s!2326))))

(assert (= (and d!2056377 c!1203713) b!6552649))

(assert (= (and d!2056377 (not c!1203713)) b!6552647))

(assert (= (and b!6552647 res!2688392) b!6552651))

(assert (= (and b!6552651 c!1203712) b!6552646))

(assert (= (and b!6552651 (not c!1203712)) b!6552650))

(assert (= (and b!6552650 c!1203710) b!6552653))

(assert (= (and b!6552650 (not c!1203710)) b!6552652))

(assert (= (and b!6552653 (not res!2688390)) b!6552654))

(assert (= (and b!6552652 c!1203711) b!6552648))

(assert (= (and b!6552652 (not c!1203711)) b!6552645))

(assert (= (and b!6552648 (not res!2688391)) b!6552644))

(assert (= (or b!6552644 b!6552645) bm!569950))

(assert (= (or b!6552649 b!6552648) bm!569949))

(declare-fun m!7335004 () Bool)

(assert (=> bm!569949 m!7335004))

(declare-fun m!7335006 () Bool)

(assert (=> b!6552653 m!7335006))

(declare-fun m!7335008 () Bool)

(assert (=> bm!569950 m!7335008))

(declare-fun m!7335010 () Bool)

(assert (=> b!6552654 m!7335010))

(assert (=> b!6552066 d!2056377))

(declare-fun b!6552710 () Bool)

(declare-fun res!2688425 () Bool)

(declare-fun e!3967199 () Bool)

(assert (=> b!6552710 (=> res!2688425 e!3967199)))

(assert (=> b!6552710 (= res!2688425 (not (isEmpty!37690 (tail!12389 s!2326))))))

(declare-fun b!6552711 () Bool)

(declare-fun res!2688430 () Bool)

(declare-fun e!3967203 () Bool)

(assert (=> b!6552711 (=> res!2688430 e!3967203)))

(declare-fun e!3967204 () Bool)

(assert (=> b!6552711 (= res!2688430 e!3967204)))

(declare-fun res!2688424 () Bool)

(assert (=> b!6552711 (=> (not res!2688424) (not e!3967204))))

(declare-fun lt!2403044 () Bool)

(assert (=> b!6552711 (= res!2688424 lt!2403044)))

(declare-fun b!6552712 () Bool)

(declare-fun res!2688429 () Bool)

(assert (=> b!6552712 (=> (not res!2688429) (not e!3967204))))

(assert (=> b!6552712 (= res!2688429 (isEmpty!37690 (tail!12389 s!2326)))))

(declare-fun b!6552713 () Bool)

(declare-fun e!3967202 () Bool)

(assert (=> b!6552713 (= e!3967202 (not lt!2403044))))

(declare-fun b!6552714 () Bool)

(declare-fun e!3967200 () Bool)

(declare-fun derivativeStep!5111 (Regex!16427 C!33124) Regex!16427)

(assert (=> b!6552714 (= e!3967200 (matchR!8610 (derivativeStep!5111 r!7292 (head!13304 s!2326)) (tail!12389 s!2326)))))

(declare-fun b!6552715 () Bool)

(declare-fun e!3967198 () Bool)

(assert (=> b!6552715 (= e!3967198 e!3967202)))

(declare-fun c!1203726 () Bool)

(assert (=> b!6552715 (= c!1203726 ((_ is EmptyLang!16427) r!7292))))

(declare-fun b!6552716 () Bool)

(declare-fun res!2688428 () Bool)

(assert (=> b!6552716 (=> (not res!2688428) (not e!3967204))))

(declare-fun call!569958 () Bool)

(assert (=> b!6552716 (= res!2688428 (not call!569958))))

(declare-fun b!6552717 () Bool)

(declare-fun res!2688431 () Bool)

(assert (=> b!6552717 (=> res!2688431 e!3967203)))

(assert (=> b!6552717 (= res!2688431 (not ((_ is ElementMatch!16427) r!7292)))))

(assert (=> b!6552717 (= e!3967202 e!3967203)))

(declare-fun b!6552718 () Bool)

(assert (=> b!6552718 (= e!3967198 (= lt!2403044 call!569958))))

(declare-fun d!2056393 () Bool)

(assert (=> d!2056393 e!3967198))

(declare-fun c!1203728 () Bool)

(assert (=> d!2056393 (= c!1203728 ((_ is EmptyExpr!16427) r!7292))))

(assert (=> d!2056393 (= lt!2403044 e!3967200)))

(declare-fun c!1203727 () Bool)

(assert (=> d!2056393 (= c!1203727 (isEmpty!37690 s!2326))))

(assert (=> d!2056393 (validRegex!8163 r!7292)))

(assert (=> d!2056393 (= (matchR!8610 r!7292 s!2326) lt!2403044)))

(declare-fun bm!569953 () Bool)

(assert (=> bm!569953 (= call!569958 (isEmpty!37690 s!2326))))

(declare-fun b!6552719 () Bool)

(assert (=> b!6552719 (= e!3967204 (= (head!13304 s!2326) (c!1203556 r!7292)))))

(declare-fun b!6552720 () Bool)

(declare-fun e!3967201 () Bool)

(assert (=> b!6552720 (= e!3967203 e!3967201)))

(declare-fun res!2688427 () Bool)

(assert (=> b!6552720 (=> (not res!2688427) (not e!3967201))))

(assert (=> b!6552720 (= res!2688427 (not lt!2403044))))

(declare-fun b!6552721 () Bool)

(assert (=> b!6552721 (= e!3967200 (nullable!6420 r!7292))))

(declare-fun b!6552722 () Bool)

(assert (=> b!6552722 (= e!3967201 e!3967199)))

(declare-fun res!2688426 () Bool)

(assert (=> b!6552722 (=> res!2688426 e!3967199)))

(assert (=> b!6552722 (= res!2688426 call!569958)))

(declare-fun b!6552723 () Bool)

(assert (=> b!6552723 (= e!3967199 (not (= (head!13304 s!2326) (c!1203556 r!7292))))))

(assert (= (and d!2056393 c!1203727) b!6552721))

(assert (= (and d!2056393 (not c!1203727)) b!6552714))

(assert (= (and d!2056393 c!1203728) b!6552718))

(assert (= (and d!2056393 (not c!1203728)) b!6552715))

(assert (= (and b!6552715 c!1203726) b!6552713))

(assert (= (and b!6552715 (not c!1203726)) b!6552717))

(assert (= (and b!6552717 (not res!2688431)) b!6552711))

(assert (= (and b!6552711 res!2688424) b!6552716))

(assert (= (and b!6552716 res!2688428) b!6552712))

(assert (= (and b!6552712 res!2688429) b!6552719))

(assert (= (and b!6552711 (not res!2688430)) b!6552720))

(assert (= (and b!6552720 res!2688427) b!6552722))

(assert (= (and b!6552722 (not res!2688426)) b!6552710))

(assert (= (and b!6552710 (not res!2688425)) b!6552723))

(assert (= (or b!6552718 b!6552716 b!6552722) bm!569953))

(declare-fun m!7335032 () Bool)

(assert (=> b!6552710 m!7335032))

(assert (=> b!6552710 m!7335032))

(declare-fun m!7335036 () Bool)

(assert (=> b!6552710 m!7335036))

(assert (=> d!2056393 m!7335004))

(assert (=> d!2056393 m!7334532))

(assert (=> bm!569953 m!7335004))

(declare-fun m!7335040 () Bool)

(assert (=> b!6552719 m!7335040))

(declare-fun m!7335042 () Bool)

(assert (=> b!6552721 m!7335042))

(assert (=> b!6552712 m!7335032))

(assert (=> b!6552712 m!7335032))

(assert (=> b!6552712 m!7335036))

(assert (=> b!6552723 m!7335040))

(assert (=> b!6552714 m!7335040))

(assert (=> b!6552714 m!7335040))

(declare-fun m!7335046 () Bool)

(assert (=> b!6552714 m!7335046))

(assert (=> b!6552714 m!7335032))

(assert (=> b!6552714 m!7335046))

(assert (=> b!6552714 m!7335032))

(declare-fun m!7335048 () Bool)

(assert (=> b!6552714 m!7335048))

(assert (=> b!6552066 d!2056393))

(declare-fun d!2056401 () Bool)

(assert (=> d!2056401 (= (matchR!8610 r!7292 s!2326) (matchRSpec!3528 r!7292 s!2326))))

(declare-fun lt!2403050 () Unit!159043)

(declare-fun choose!48779 (Regex!16427 List!65582) Unit!159043)

(assert (=> d!2056401 (= lt!2403050 (choose!48779 r!7292 s!2326))))

(assert (=> d!2056401 (validRegex!8163 r!7292)))

(assert (=> d!2056401 (= (mainMatchTheorem!3528 r!7292 s!2326) lt!2403050)))

(declare-fun bs!1672604 () Bool)

(assert (= bs!1672604 d!2056401))

(assert (=> bs!1672604 m!7334536))

(assert (=> bs!1672604 m!7334534))

(declare-fun m!7335050 () Bool)

(assert (=> bs!1672604 m!7335050))

(assert (=> bs!1672604 m!7334532))

(assert (=> b!6552066 d!2056401))

(declare-fun b!6552763 () Bool)

(declare-fun e!3967233 () Bool)

(declare-fun call!569966 () Bool)

(assert (=> b!6552763 (= e!3967233 call!569966)))

(declare-fun b!6552764 () Bool)

(declare-fun e!3967236 () Bool)

(declare-fun call!569965 () Bool)

(assert (=> b!6552764 (= e!3967236 call!569965)))

(declare-fun b!6552765 () Bool)

(declare-fun e!3967235 () Bool)

(declare-fun e!3967231 () Bool)

(assert (=> b!6552765 (= e!3967235 e!3967231)))

(declare-fun c!1203739 () Bool)

(assert (=> b!6552765 (= c!1203739 ((_ is Star!16427) lt!2402883))))

(declare-fun b!6552766 () Bool)

(declare-fun e!3967234 () Bool)

(assert (=> b!6552766 (= e!3967234 e!3967233)))

(declare-fun res!2688457 () Bool)

(assert (=> b!6552766 (=> (not res!2688457) (not e!3967233))))

(declare-fun call!569967 () Bool)

(assert (=> b!6552766 (= res!2688457 call!569967)))

(declare-fun b!6552767 () Bool)

(declare-fun e!3967232 () Bool)

(assert (=> b!6552767 (= e!3967231 e!3967232)))

(declare-fun c!1203738 () Bool)

(assert (=> b!6552767 (= c!1203738 ((_ is Union!16427) lt!2402883))))

(declare-fun b!6552768 () Bool)

(declare-fun res!2688456 () Bool)

(assert (=> b!6552768 (=> res!2688456 e!3967234)))

(assert (=> b!6552768 (= res!2688456 (not ((_ is Concat!25272) lt!2402883)))))

(assert (=> b!6552768 (= e!3967232 e!3967234)))

(declare-fun b!6552769 () Bool)

(declare-fun e!3967230 () Bool)

(assert (=> b!6552769 (= e!3967230 call!569966)))

(declare-fun d!2056403 () Bool)

(declare-fun res!2688454 () Bool)

(assert (=> d!2056403 (=> res!2688454 e!3967235)))

(assert (=> d!2056403 (= res!2688454 ((_ is ElementMatch!16427) lt!2402883))))

(assert (=> d!2056403 (= (validRegex!8163 lt!2402883) e!3967235)))

(declare-fun bm!569960 () Bool)

(assert (=> bm!569960 (= call!569965 (validRegex!8163 (ite c!1203739 (reg!16756 lt!2402883) (ite c!1203738 (regOne!33367 lt!2402883) (regOne!33366 lt!2402883)))))))

(declare-fun b!6552770 () Bool)

(assert (=> b!6552770 (= e!3967231 e!3967236)))

(declare-fun res!2688455 () Bool)

(assert (=> b!6552770 (= res!2688455 (not (nullable!6420 (reg!16756 lt!2402883))))))

(assert (=> b!6552770 (=> (not res!2688455) (not e!3967236))))

(declare-fun bm!569961 () Bool)

(assert (=> bm!569961 (= call!569966 (validRegex!8163 (ite c!1203738 (regTwo!33367 lt!2402883) (regTwo!33366 lt!2402883))))))

(declare-fun bm!569962 () Bool)

(assert (=> bm!569962 (= call!569967 call!569965)))

(declare-fun b!6552771 () Bool)

(declare-fun res!2688453 () Bool)

(assert (=> b!6552771 (=> (not res!2688453) (not e!3967230))))

(assert (=> b!6552771 (= res!2688453 call!569967)))

(assert (=> b!6552771 (= e!3967232 e!3967230)))

(assert (= (and d!2056403 (not res!2688454)) b!6552765))

(assert (= (and b!6552765 c!1203739) b!6552770))

(assert (= (and b!6552765 (not c!1203739)) b!6552767))

(assert (= (and b!6552770 res!2688455) b!6552764))

(assert (= (and b!6552767 c!1203738) b!6552771))

(assert (= (and b!6552767 (not c!1203738)) b!6552768))

(assert (= (and b!6552771 res!2688453) b!6552769))

(assert (= (and b!6552768 (not res!2688456)) b!6552766))

(assert (= (and b!6552766 res!2688457) b!6552763))

(assert (= (or b!6552769 b!6552763) bm!569961))

(assert (= (or b!6552771 b!6552766) bm!569962))

(assert (= (or b!6552764 bm!569962) bm!569960))

(declare-fun m!7335090 () Bool)

(assert (=> bm!569960 m!7335090))

(declare-fun m!7335092 () Bool)

(assert (=> b!6552770 m!7335092))

(declare-fun m!7335094 () Bool)

(assert (=> bm!569961 m!7335094))

(assert (=> b!6552088 d!2056403))

(declare-fun bm!569963 () Bool)

(declare-fun call!569968 () (InoxSet Context!11622))

(assert (=> bm!569963 (= call!569968 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 lt!2402875)) (Context!11623 (t!379222 (exprs!6311 lt!2402875))) (h!71906 s!2326)))))

(declare-fun b!6552772 () Bool)

(declare-fun e!3967237 () (InoxSet Context!11622))

(assert (=> b!6552772 (= e!3967237 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056417 () Bool)

(declare-fun c!1203741 () Bool)

(declare-fun e!3967238 () Bool)

(assert (=> d!2056417 (= c!1203741 e!3967238)))

(declare-fun res!2688458 () Bool)

(assert (=> d!2056417 (=> (not res!2688458) (not e!3967238))))

(assert (=> d!2056417 (= res!2688458 ((_ is Cons!65456) (exprs!6311 lt!2402875)))))

(declare-fun e!3967239 () (InoxSet Context!11622))

(assert (=> d!2056417 (= (derivationStepZipperUp!1601 lt!2402875 (h!71906 s!2326)) e!3967239)))

(declare-fun b!6552773 () Bool)

(assert (=> b!6552773 (= e!3967239 e!3967237)))

(declare-fun c!1203740 () Bool)

(assert (=> b!6552773 (= c!1203740 ((_ is Cons!65456) (exprs!6311 lt!2402875)))))

(declare-fun b!6552774 () Bool)

(assert (=> b!6552774 (= e!3967238 (nullable!6420 (h!71904 (exprs!6311 lt!2402875))))))

(declare-fun b!6552775 () Bool)

(assert (=> b!6552775 (= e!3967237 call!569968)))

(declare-fun b!6552776 () Bool)

(assert (=> b!6552776 (= e!3967239 ((_ map or) call!569968 (derivationStepZipperUp!1601 (Context!11623 (t!379222 (exprs!6311 lt!2402875))) (h!71906 s!2326))))))

(assert (= (and d!2056417 res!2688458) b!6552774))

(assert (= (and d!2056417 c!1203741) b!6552776))

(assert (= (and d!2056417 (not c!1203741)) b!6552773))

(assert (= (and b!6552773 c!1203740) b!6552775))

(assert (= (and b!6552773 (not c!1203740)) b!6552772))

(assert (= (or b!6552776 b!6552775) bm!569963))

(declare-fun m!7335096 () Bool)

(assert (=> bm!569963 m!7335096))

(declare-fun m!7335098 () Bool)

(assert (=> b!6552774 m!7335098))

(declare-fun m!7335100 () Bool)

(assert (=> b!6552776 m!7335100))

(assert (=> b!6552068 d!2056417))

(declare-fun d!2056419 () Bool)

(assert (=> d!2056419 (= (flatMap!1932 lt!2402881 lambda!363999) (choose!48774 lt!2402881 lambda!363999))))

(declare-fun bs!1672620 () Bool)

(assert (= bs!1672620 d!2056419))

(declare-fun m!7335102 () Bool)

(assert (=> bs!1672620 m!7335102))

(assert (=> b!6552068 d!2056419))

(declare-fun d!2056421 () Bool)

(assert (=> d!2056421 (= (flatMap!1932 lt!2402881 lambda!363999) (dynLambda!26025 lambda!363999 lt!2402901))))

(declare-fun lt!2403056 () Unit!159043)

(assert (=> d!2056421 (= lt!2403056 (choose!48769 lt!2402881 lt!2402901 lambda!363999))))

(assert (=> d!2056421 (= lt!2402881 (store ((as const (Array Context!11622 Bool)) false) lt!2402901 true))))

(assert (=> d!2056421 (= (lemmaFlatMapOnSingletonSet!1458 lt!2402881 lt!2402901 lambda!363999) lt!2403056)))

(declare-fun b_lambda!247969 () Bool)

(assert (=> (not b_lambda!247969) (not d!2056421)))

(declare-fun bs!1672623 () Bool)

(assert (= bs!1672623 d!2056421))

(assert (=> bs!1672623 m!7334448))

(declare-fun m!7335104 () Bool)

(assert (=> bs!1672623 m!7335104))

(declare-fun m!7335106 () Bool)

(assert (=> bs!1672623 m!7335106))

(assert (=> bs!1672623 m!7334456))

(assert (=> b!6552068 d!2056421))

(declare-fun d!2056423 () Bool)

(assert (=> d!2056423 (= (flatMap!1932 lt!2402910 lambda!363999) (choose!48774 lt!2402910 lambda!363999))))

(declare-fun bs!1672624 () Bool)

(assert (= bs!1672624 d!2056423))

(declare-fun m!7335108 () Bool)

(assert (=> bs!1672624 m!7335108))

(assert (=> b!6552068 d!2056423))

(declare-fun d!2056425 () Bool)

(declare-fun lt!2403057 () Regex!16427)

(assert (=> d!2056425 (validRegex!8163 lt!2403057)))

(assert (=> d!2056425 (= lt!2403057 (generalisedUnion!2271 (unfocusZipperList!1848 lt!2402905)))))

(assert (=> d!2056425 (= (unfocusZipper!2169 lt!2402905) lt!2403057)))

(declare-fun bs!1672626 () Bool)

(assert (= bs!1672626 d!2056425))

(declare-fun m!7335110 () Bool)

(assert (=> bs!1672626 m!7335110))

(declare-fun m!7335112 () Bool)

(assert (=> bs!1672626 m!7335112))

(assert (=> bs!1672626 m!7335112))

(declare-fun m!7335114 () Bool)

(assert (=> bs!1672626 m!7335114))

(assert (=> b!6552068 d!2056425))

(declare-fun bm!569964 () Bool)

(declare-fun call!569969 () (InoxSet Context!11622))

(assert (=> bm!569964 (= call!569969 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 lt!2402901)) (Context!11623 (t!379222 (exprs!6311 lt!2402901))) (h!71906 s!2326)))))

(declare-fun b!6552777 () Bool)

(declare-fun e!3967240 () (InoxSet Context!11622))

(assert (=> b!6552777 (= e!3967240 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056427 () Bool)

(declare-fun c!1203743 () Bool)

(declare-fun e!3967241 () Bool)

(assert (=> d!2056427 (= c!1203743 e!3967241)))

(declare-fun res!2688459 () Bool)

(assert (=> d!2056427 (=> (not res!2688459) (not e!3967241))))

(assert (=> d!2056427 (= res!2688459 ((_ is Cons!65456) (exprs!6311 lt!2402901)))))

(declare-fun e!3967242 () (InoxSet Context!11622))

(assert (=> d!2056427 (= (derivationStepZipperUp!1601 lt!2402901 (h!71906 s!2326)) e!3967242)))

(declare-fun b!6552778 () Bool)

(assert (=> b!6552778 (= e!3967242 e!3967240)))

(declare-fun c!1203742 () Bool)

(assert (=> b!6552778 (= c!1203742 ((_ is Cons!65456) (exprs!6311 lt!2402901)))))

(declare-fun b!6552779 () Bool)

(assert (=> b!6552779 (= e!3967241 (nullable!6420 (h!71904 (exprs!6311 lt!2402901))))))

(declare-fun b!6552780 () Bool)

(assert (=> b!6552780 (= e!3967240 call!569969)))

(declare-fun b!6552781 () Bool)

(assert (=> b!6552781 (= e!3967242 ((_ map or) call!569969 (derivationStepZipperUp!1601 (Context!11623 (t!379222 (exprs!6311 lt!2402901))) (h!71906 s!2326))))))

(assert (= (and d!2056427 res!2688459) b!6552779))

(assert (= (and d!2056427 c!1203743) b!6552781))

(assert (= (and d!2056427 (not c!1203743)) b!6552778))

(assert (= (and b!6552778 c!1203742) b!6552780))

(assert (= (and b!6552778 (not c!1203742)) b!6552777))

(assert (= (or b!6552781 b!6552780) bm!569964))

(declare-fun m!7335116 () Bool)

(assert (=> bm!569964 m!7335116))

(declare-fun m!7335120 () Bool)

(assert (=> b!6552779 m!7335120))

(declare-fun m!7335122 () Bool)

(assert (=> b!6552781 m!7335122))

(assert (=> b!6552068 d!2056427))

(declare-fun d!2056429 () Bool)

(assert (=> d!2056429 (= (flatMap!1932 lt!2402910 lambda!363999) (dynLambda!26025 lambda!363999 lt!2402875))))

(declare-fun lt!2403058 () Unit!159043)

(assert (=> d!2056429 (= lt!2403058 (choose!48769 lt!2402910 lt!2402875 lambda!363999))))

(assert (=> d!2056429 (= lt!2402910 (store ((as const (Array Context!11622 Bool)) false) lt!2402875 true))))

(assert (=> d!2056429 (= (lemmaFlatMapOnSingletonSet!1458 lt!2402910 lt!2402875 lambda!363999) lt!2403058)))

(declare-fun b_lambda!247971 () Bool)

(assert (=> (not b_lambda!247971) (not d!2056429)))

(declare-fun bs!1672629 () Bool)

(assert (= bs!1672629 d!2056429))

(assert (=> bs!1672629 m!7334444))

(declare-fun m!7335126 () Bool)

(assert (=> bs!1672629 m!7335126))

(declare-fun m!7335128 () Bool)

(assert (=> bs!1672629 m!7335128))

(assert (=> bs!1672629 m!7334446))

(assert (=> b!6552068 d!2056429))

(assert (=> b!6552089 d!2056343))

(declare-fun bs!1672639 () Bool)

(declare-fun d!2056433 () Bool)

(assert (= bs!1672639 (and d!2056433 b!6552065)))

(declare-fun lambda!364059 () Int)

(assert (=> bs!1672639 (= lambda!364059 lambda!364001)))

(assert (=> d!2056433 (= (inv!84314 setElem!44718) (forall!15599 (exprs!6311 setElem!44718) lambda!364059))))

(declare-fun bs!1672641 () Bool)

(assert (= bs!1672641 d!2056433))

(declare-fun m!7335130 () Bool)

(assert (=> bs!1672641 m!7335130))

(assert (=> setNonEmpty!44718 d!2056433))

(declare-fun d!2056435 () Bool)

(declare-fun c!1203744 () Bool)

(assert (=> d!2056435 (= c!1203744 (isEmpty!37690 (_2!36709 lt!2402920)))))

(declare-fun e!3967243 () Bool)

(assert (=> d!2056435 (= (matchZipper!2439 lt!2402881 (_2!36709 lt!2402920)) e!3967243)))

(declare-fun b!6552782 () Bool)

(assert (=> b!6552782 (= e!3967243 (nullableZipper!2171 lt!2402881))))

(declare-fun b!6552783 () Bool)

(assert (=> b!6552783 (= e!3967243 (matchZipper!2439 (derivationStepZipper!2393 lt!2402881 (head!13304 (_2!36709 lt!2402920))) (tail!12389 (_2!36709 lt!2402920))))))

(assert (= (and d!2056435 c!1203744) b!6552782))

(assert (= (and d!2056435 (not c!1203744)) b!6552783))

(declare-fun m!7335132 () Bool)

(assert (=> d!2056435 m!7335132))

(declare-fun m!7335134 () Bool)

(assert (=> b!6552782 m!7335134))

(declare-fun m!7335136 () Bool)

(assert (=> b!6552783 m!7335136))

(assert (=> b!6552783 m!7335136))

(declare-fun m!7335138 () Bool)

(assert (=> b!6552783 m!7335138))

(declare-fun m!7335140 () Bool)

(assert (=> b!6552783 m!7335140))

(assert (=> b!6552783 m!7335138))

(assert (=> b!6552783 m!7335140))

(declare-fun m!7335142 () Bool)

(assert (=> b!6552783 m!7335142))

(assert (=> b!6552069 d!2056435))

(declare-fun d!2056437 () Bool)

(declare-fun c!1203745 () Bool)

(assert (=> d!2056437 (= c!1203745 (isEmpty!37690 (_1!36709 lt!2402920)))))

(declare-fun e!3967244 () Bool)

(assert (=> d!2056437 (= (matchZipper!2439 lt!2402910 (_1!36709 lt!2402920)) e!3967244)))

(declare-fun b!6552784 () Bool)

(assert (=> b!6552784 (= e!3967244 (nullableZipper!2171 lt!2402910))))

(declare-fun b!6552785 () Bool)

(assert (=> b!6552785 (= e!3967244 (matchZipper!2439 (derivationStepZipper!2393 lt!2402910 (head!13304 (_1!36709 lt!2402920))) (tail!12389 (_1!36709 lt!2402920))))))

(assert (= (and d!2056437 c!1203745) b!6552784))

(assert (= (and d!2056437 (not c!1203745)) b!6552785))

(declare-fun m!7335144 () Bool)

(assert (=> d!2056437 m!7335144))

(declare-fun m!7335146 () Bool)

(assert (=> b!6552784 m!7335146))

(declare-fun m!7335148 () Bool)

(assert (=> b!6552785 m!7335148))

(assert (=> b!6552785 m!7335148))

(declare-fun m!7335150 () Bool)

(assert (=> b!6552785 m!7335150))

(declare-fun m!7335152 () Bool)

(assert (=> b!6552785 m!7335152))

(assert (=> b!6552785 m!7335150))

(assert (=> b!6552785 m!7335152))

(declare-fun m!7335154 () Bool)

(assert (=> b!6552785 m!7335154))

(assert (=> b!6552090 d!2056437))

(declare-fun d!2056439 () Bool)

(declare-fun c!1203746 () Bool)

(assert (=> d!2056439 (= c!1203746 (isEmpty!37690 s!2326))))

(declare-fun e!3967245 () Bool)

(assert (=> d!2056439 (= (matchZipper!2439 z!1189 s!2326) e!3967245)))

(declare-fun b!6552786 () Bool)

(assert (=> b!6552786 (= e!3967245 (nullableZipper!2171 z!1189))))

(declare-fun b!6552787 () Bool)

(assert (=> b!6552787 (= e!3967245 (matchZipper!2439 (derivationStepZipper!2393 z!1189 (head!13304 s!2326)) (tail!12389 s!2326)))))

(assert (= (and d!2056439 c!1203746) b!6552786))

(assert (= (and d!2056439 (not c!1203746)) b!6552787))

(assert (=> d!2056439 m!7335004))

(declare-fun m!7335156 () Bool)

(assert (=> b!6552786 m!7335156))

(assert (=> b!6552787 m!7335040))

(assert (=> b!6552787 m!7335040))

(declare-fun m!7335158 () Bool)

(assert (=> b!6552787 m!7335158))

(assert (=> b!6552787 m!7335032))

(assert (=> b!6552787 m!7335158))

(assert (=> b!6552787 m!7335032))

(declare-fun m!7335160 () Bool)

(assert (=> b!6552787 m!7335160))

(assert (=> b!6552092 d!2056439))

(declare-fun d!2056441 () Bool)

(declare-fun c!1203747 () Bool)

(assert (=> d!2056441 (= c!1203747 (isEmpty!37690 lt!2402892))))

(declare-fun e!3967246 () Bool)

(assert (=> d!2056441 (= (matchZipper!2439 (store ((as const (Array Context!11622 Bool)) false) (Context!11623 (++!14556 lt!2402916 lt!2402888)) true) lt!2402892) e!3967246)))

(declare-fun b!6552788 () Bool)

(assert (=> b!6552788 (= e!3967246 (nullableZipper!2171 (store ((as const (Array Context!11622 Bool)) false) (Context!11623 (++!14556 lt!2402916 lt!2402888)) true)))))

(declare-fun b!6552789 () Bool)

(assert (=> b!6552789 (= e!3967246 (matchZipper!2439 (derivationStepZipper!2393 (store ((as const (Array Context!11622 Bool)) false) (Context!11623 (++!14556 lt!2402916 lt!2402888)) true) (head!13304 lt!2402892)) (tail!12389 lt!2402892)))))

(assert (= (and d!2056441 c!1203747) b!6552788))

(assert (= (and d!2056441 (not c!1203747)) b!6552789))

(declare-fun m!7335162 () Bool)

(assert (=> d!2056441 m!7335162))

(assert (=> b!6552788 m!7334390))

(declare-fun m!7335164 () Bool)

(assert (=> b!6552788 m!7335164))

(declare-fun m!7335166 () Bool)

(assert (=> b!6552789 m!7335166))

(assert (=> b!6552789 m!7334390))

(assert (=> b!6552789 m!7335166))

(declare-fun m!7335168 () Bool)

(assert (=> b!6552789 m!7335168))

(declare-fun m!7335170 () Bool)

(assert (=> b!6552789 m!7335170))

(assert (=> b!6552789 m!7335168))

(assert (=> b!6552789 m!7335170))

(declare-fun m!7335172 () Bool)

(assert (=> b!6552789 m!7335172))

(assert (=> b!6552070 d!2056441))

(assert (=> b!6552070 d!2056351))

(declare-fun d!2056443 () Bool)

(assert (=> d!2056443 (= (matchR!8610 (Concat!25272 (Concat!25272 (reg!16756 (regOne!33366 r!7292)) lt!2402923) (regTwo!33366 r!7292)) s!2326) (matchR!8610 (Concat!25272 (reg!16756 (regOne!33366 r!7292)) (Concat!25272 lt!2402923 (regTwo!33366 r!7292))) s!2326))))

(declare-fun lt!2403063 () Unit!159043)

(declare-fun choose!48781 (Regex!16427 Regex!16427 Regex!16427 List!65582) Unit!159043)

(assert (=> d!2056443 (= lt!2403063 (choose!48781 (reg!16756 (regOne!33366 r!7292)) lt!2402923 (regTwo!33366 r!7292) s!2326))))

(declare-fun e!3967251 () Bool)

(assert (=> d!2056443 e!3967251))

(declare-fun res!2688464 () Bool)

(assert (=> d!2056443 (=> (not res!2688464) (not e!3967251))))

(assert (=> d!2056443 (= res!2688464 (validRegex!8163 (reg!16756 (regOne!33366 r!7292))))))

(assert (=> d!2056443 (= (lemmaConcatAssociative!124 (reg!16756 (regOne!33366 r!7292)) lt!2402923 (regTwo!33366 r!7292) s!2326) lt!2403063)))

(declare-fun b!6552798 () Bool)

(declare-fun res!2688465 () Bool)

(assert (=> b!6552798 (=> (not res!2688465) (not e!3967251))))

(assert (=> b!6552798 (= res!2688465 (validRegex!8163 lt!2402923))))

(declare-fun b!6552799 () Bool)

(assert (=> b!6552799 (= e!3967251 (validRegex!8163 (regTwo!33366 r!7292)))))

(assert (= (and d!2056443 res!2688464) b!6552798))

(assert (= (and b!6552798 res!2688465) b!6552799))

(declare-fun m!7335200 () Bool)

(assert (=> d!2056443 m!7335200))

(declare-fun m!7335202 () Bool)

(assert (=> d!2056443 m!7335202))

(declare-fun m!7335204 () Bool)

(assert (=> d!2056443 m!7335204))

(declare-fun m!7335206 () Bool)

(assert (=> d!2056443 m!7335206))

(declare-fun m!7335208 () Bool)

(assert (=> b!6552798 m!7335208))

(declare-fun m!7335210 () Bool)

(assert (=> b!6552799 m!7335210))

(assert (=> b!6552070 d!2056443))

(declare-fun b!6552800 () Bool)

(declare-fun res!2688469 () Bool)

(declare-fun e!3967256 () Bool)

(assert (=> b!6552800 (=> (not res!2688469) (not e!3967256))))

(declare-fun lt!2403065 () Option!16318)

(assert (=> b!6552800 (= res!2688469 (matchR!8610 (regTwo!33366 r!7292) (_2!36709 (get!22722 lt!2403065))))))

(declare-fun b!6552801 () Bool)

(declare-fun e!3967255 () Option!16318)

(declare-fun e!3967253 () Option!16318)

(assert (=> b!6552801 (= e!3967255 e!3967253)))

(declare-fun c!1203750 () Bool)

(assert (=> b!6552801 (= c!1203750 ((_ is Nil!65458) s!2326))))

(declare-fun b!6552802 () Bool)

(declare-fun e!3967254 () Bool)

(assert (=> b!6552802 (= e!3967254 (matchR!8610 (regTwo!33366 r!7292) s!2326))))

(declare-fun b!6552803 () Bool)

(declare-fun e!3967252 () Bool)

(assert (=> b!6552803 (= e!3967252 (not (isDefined!13021 lt!2403065)))))

(declare-fun b!6552804 () Bool)

(assert (=> b!6552804 (= e!3967253 None!16317)))

(declare-fun d!2056455 () Bool)

(assert (=> d!2056455 e!3967252))

(declare-fun res!2688468 () Bool)

(assert (=> d!2056455 (=> res!2688468 e!3967252)))

(assert (=> d!2056455 (= res!2688468 e!3967256)))

(declare-fun res!2688467 () Bool)

(assert (=> d!2056455 (=> (not res!2688467) (not e!3967256))))

(assert (=> d!2056455 (= res!2688467 (isDefined!13021 lt!2403065))))

(assert (=> d!2056455 (= lt!2403065 e!3967255)))

(declare-fun c!1203751 () Bool)

(assert (=> d!2056455 (= c!1203751 e!3967254)))

(declare-fun res!2688466 () Bool)

(assert (=> d!2056455 (=> (not res!2688466) (not e!3967254))))

(assert (=> d!2056455 (= res!2688466 (matchR!8610 lt!2402883 Nil!65458))))

(assert (=> d!2056455 (validRegex!8163 lt!2402883)))

(assert (=> d!2056455 (= (findConcatSeparation!2732 lt!2402883 (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326) lt!2403065)))

(declare-fun b!6552805 () Bool)

(declare-fun lt!2403064 () Unit!159043)

(declare-fun lt!2403066 () Unit!159043)

(assert (=> b!6552805 (= lt!2403064 lt!2403066)))

(assert (=> b!6552805 (= (++!14557 (++!14557 Nil!65458 (Cons!65458 (h!71906 s!2326) Nil!65458)) (t!379224 s!2326)) s!2326)))

(assert (=> b!6552805 (= lt!2403066 (lemmaMoveElementToOtherListKeepsConcatEq!2569 Nil!65458 (h!71906 s!2326) (t!379224 s!2326) s!2326))))

(assert (=> b!6552805 (= e!3967253 (findConcatSeparation!2732 lt!2402883 (regTwo!33366 r!7292) (++!14557 Nil!65458 (Cons!65458 (h!71906 s!2326) Nil!65458)) (t!379224 s!2326) s!2326))))

(declare-fun b!6552806 () Bool)

(declare-fun res!2688470 () Bool)

(assert (=> b!6552806 (=> (not res!2688470) (not e!3967256))))

(assert (=> b!6552806 (= res!2688470 (matchR!8610 lt!2402883 (_1!36709 (get!22722 lt!2403065))))))

(declare-fun b!6552807 () Bool)

(assert (=> b!6552807 (= e!3967256 (= (++!14557 (_1!36709 (get!22722 lt!2403065)) (_2!36709 (get!22722 lt!2403065))) s!2326))))

(declare-fun b!6552808 () Bool)

(assert (=> b!6552808 (= e!3967255 (Some!16317 (tuple2!66813 Nil!65458 s!2326)))))

(assert (= (and d!2056455 res!2688466) b!6552802))

(assert (= (and d!2056455 c!1203751) b!6552808))

(assert (= (and d!2056455 (not c!1203751)) b!6552801))

(assert (= (and b!6552801 c!1203750) b!6552804))

(assert (= (and b!6552801 (not c!1203750)) b!6552805))

(assert (= (and d!2056455 res!2688467) b!6552806))

(assert (= (and b!6552806 res!2688470) b!6552800))

(assert (= (and b!6552800 res!2688469) b!6552807))

(assert (= (and d!2056455 (not res!2688468)) b!6552803))

(assert (=> b!6552802 m!7334600))

(declare-fun m!7335212 () Bool)

(assert (=> d!2056455 m!7335212))

(declare-fun m!7335214 () Bool)

(assert (=> d!2056455 m!7335214))

(assert (=> d!2056455 m!7334422))

(assert (=> b!6552803 m!7335212))

(declare-fun m!7335216 () Bool)

(assert (=> b!6552800 m!7335216))

(declare-fun m!7335218 () Bool)

(assert (=> b!6552800 m!7335218))

(assert (=> b!6552805 m!7334612))

(assert (=> b!6552805 m!7334612))

(assert (=> b!6552805 m!7334614))

(assert (=> b!6552805 m!7334616))

(assert (=> b!6552805 m!7334612))

(declare-fun m!7335220 () Bool)

(assert (=> b!6552805 m!7335220))

(assert (=> b!6552807 m!7335216))

(declare-fun m!7335222 () Bool)

(assert (=> b!6552807 m!7335222))

(assert (=> b!6552806 m!7335216))

(declare-fun m!7335224 () Bool)

(assert (=> b!6552806 m!7335224))

(assert (=> b!6552070 d!2056455))

(declare-fun bs!1672646 () Bool)

(declare-fun d!2056457 () Bool)

(assert (= bs!1672646 (and d!2056457 b!6552070)))

(declare-fun lambda!364063 () Int)

(assert (=> bs!1672646 (not (= lambda!364063 lambda!364003))))

(declare-fun bs!1672647 () Bool)

(assert (= bs!1672647 (and d!2056457 b!6552081)))

(assert (=> bs!1672647 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364063 lambda!363997))))

(assert (=> bs!1672646 (= lambda!364063 lambda!364002)))

(declare-fun bs!1672648 () Bool)

(assert (= bs!1672648 (and d!2056457 d!2056285)))

(assert (=> bs!1672648 (not (= lambda!364063 lambda!364019))))

(assert (=> bs!1672647 (not (= lambda!364063 lambda!363998))))

(assert (=> bs!1672648 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364063 lambda!364016))))

(declare-fun bs!1672649 () Bool)

(assert (= bs!1672649 (and d!2056457 d!2056275)))

(assert (=> bs!1672649 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364063 lambda!364009))))

(declare-fun bs!1672650 () Bool)

(assert (= bs!1672650 (and d!2056457 b!6552644)))

(assert (=> bs!1672650 (not (= lambda!364063 lambda!364049))))

(declare-fun bs!1672651 () Bool)

(assert (= bs!1672651 (and d!2056457 b!6552645)))

(assert (=> bs!1672651 (not (= lambda!364063 lambda!364050))))

(assert (=> d!2056457 true))

(assert (=> d!2056457 true))

(assert (=> d!2056457 true))

(assert (=> d!2056457 (= (isDefined!13021 (findConcatSeparation!2732 lt!2402883 (regTwo!33366 r!7292) Nil!65458 s!2326 s!2326)) (Exists!3497 lambda!364063))))

(declare-fun lt!2403069 () Unit!159043)

(assert (=> d!2056457 (= lt!2403069 (choose!48766 lt!2402883 (regTwo!33366 r!7292) s!2326))))

(assert (=> d!2056457 (validRegex!8163 lt!2402883)))

(assert (=> d!2056457 (= (lemmaFindConcatSeparationEquivalentToExists!2496 lt!2402883 (regTwo!33366 r!7292) s!2326) lt!2403069)))

(declare-fun bs!1672652 () Bool)

(assert (= bs!1672652 d!2056457))

(assert (=> bs!1672652 m!7334372))

(declare-fun m!7335226 () Bool)

(assert (=> bs!1672652 m!7335226))

(assert (=> bs!1672652 m!7334372))

(declare-fun m!7335228 () Bool)

(assert (=> bs!1672652 m!7335228))

(assert (=> bs!1672652 m!7334422))

(declare-fun m!7335230 () Bool)

(assert (=> bs!1672652 m!7335230))

(assert (=> b!6552070 d!2056457))

(declare-fun d!2056459 () Bool)

(assert (=> d!2056459 (= (get!22722 lt!2402930) (v!52502 lt!2402930))))

(assert (=> b!6552070 d!2056459))

(declare-fun d!2056461 () Bool)

(assert (=> d!2056461 (= (Exists!3497 lambda!364003) (choose!48765 lambda!364003))))

(declare-fun bs!1672653 () Bool)

(assert (= bs!1672653 d!2056461))

(declare-fun m!7335232 () Bool)

(assert (=> bs!1672653 m!7335232))

(assert (=> b!6552070 d!2056461))

(declare-fun d!2056463 () Bool)

(assert (=> d!2056463 (= (matchR!8610 lt!2402882 s!2326) (matchRSpec!3528 lt!2402882 s!2326))))

(declare-fun lt!2403070 () Unit!159043)

(assert (=> d!2056463 (= lt!2403070 (choose!48779 lt!2402882 s!2326))))

(assert (=> d!2056463 (validRegex!8163 lt!2402882)))

(assert (=> d!2056463 (= (mainMatchTheorem!3528 lt!2402882 s!2326) lt!2403070)))

(declare-fun bs!1672654 () Bool)

(assert (= bs!1672654 d!2056463))

(assert (=> bs!1672654 m!7334388))

(assert (=> bs!1672654 m!7334394))

(declare-fun m!7335234 () Bool)

(assert (=> bs!1672654 m!7335234))

(declare-fun m!7335236 () Bool)

(assert (=> bs!1672654 m!7335236))

(assert (=> b!6552070 d!2056463))

(declare-fun d!2056465 () Bool)

(assert (=> d!2056465 (= (isDefined!13021 lt!2402930) (not (isEmpty!37689 lt!2402930)))))

(declare-fun bs!1672655 () Bool)

(assert (= bs!1672655 d!2056465))

(declare-fun m!7335238 () Bool)

(assert (=> bs!1672655 m!7335238))

(assert (=> b!6552070 d!2056465))

(declare-fun d!2056467 () Bool)

(assert (=> d!2056467 (= (matchR!8610 lt!2402897 (_2!36709 lt!2402920)) (matchZipper!2439 lt!2402881 (_2!36709 lt!2402920)))))

(declare-fun lt!2403076 () Unit!159043)

(declare-fun choose!48782 ((InoxSet Context!11622) List!65581 Regex!16427 List!65582) Unit!159043)

(assert (=> d!2056467 (= lt!2403076 (choose!48782 lt!2402881 lt!2402906 lt!2402897 (_2!36709 lt!2402920)))))

(assert (=> d!2056467 (validRegex!8163 lt!2402897)))

(assert (=> d!2056467 (= (theoremZipperRegexEquiv!863 lt!2402881 lt!2402906 lt!2402897 (_2!36709 lt!2402920)) lt!2403076)))

(declare-fun bs!1672660 () Bool)

(assert (= bs!1672660 d!2056467))

(assert (=> bs!1672660 m!7334410))

(assert (=> bs!1672660 m!7334544))

(declare-fun m!7335260 () Bool)

(assert (=> bs!1672660 m!7335260))

(declare-fun m!7335262 () Bool)

(assert (=> bs!1672660 m!7335262))

(assert (=> b!6552070 d!2056467))

(declare-fun b!6552844 () Bool)

(declare-fun res!2688478 () Bool)

(declare-fun e!3967278 () Bool)

(assert (=> b!6552844 (=> res!2688478 e!3967278)))

(assert (=> b!6552844 (= res!2688478 (not (isEmpty!37690 (tail!12389 (_2!36709 lt!2402920)))))))

(declare-fun b!6552846 () Bool)

(declare-fun res!2688483 () Bool)

(declare-fun e!3967282 () Bool)

(assert (=> b!6552846 (=> res!2688483 e!3967282)))

(declare-fun e!3967283 () Bool)

(assert (=> b!6552846 (= res!2688483 e!3967283)))

(declare-fun res!2688477 () Bool)

(assert (=> b!6552846 (=> (not res!2688477) (not e!3967283))))

(declare-fun lt!2403077 () Bool)

(assert (=> b!6552846 (= res!2688477 lt!2403077)))

(declare-fun b!6552847 () Bool)

(declare-fun res!2688482 () Bool)

(assert (=> b!6552847 (=> (not res!2688482) (not e!3967283))))

(assert (=> b!6552847 (= res!2688482 (isEmpty!37690 (tail!12389 (_2!36709 lt!2402920))))))

(declare-fun b!6552848 () Bool)

(declare-fun e!3967281 () Bool)

(assert (=> b!6552848 (= e!3967281 (not lt!2403077))))

(declare-fun b!6552849 () Bool)

(declare-fun e!3967279 () Bool)

(assert (=> b!6552849 (= e!3967279 (matchR!8610 (derivativeStep!5111 lt!2402897 (head!13304 (_2!36709 lt!2402920))) (tail!12389 (_2!36709 lt!2402920))))))

(declare-fun b!6552850 () Bool)

(declare-fun e!3967277 () Bool)

(assert (=> b!6552850 (= e!3967277 e!3967281)))

(declare-fun c!1203766 () Bool)

(assert (=> b!6552850 (= c!1203766 ((_ is EmptyLang!16427) lt!2402897))))

(declare-fun b!6552851 () Bool)

(declare-fun res!2688481 () Bool)

(assert (=> b!6552851 (=> (not res!2688481) (not e!3967283))))

(declare-fun call!569970 () Bool)

(assert (=> b!6552851 (= res!2688481 (not call!569970))))

(declare-fun b!6552852 () Bool)

(declare-fun res!2688484 () Bool)

(assert (=> b!6552852 (=> res!2688484 e!3967282)))

(assert (=> b!6552852 (= res!2688484 (not ((_ is ElementMatch!16427) lt!2402897)))))

(assert (=> b!6552852 (= e!3967281 e!3967282)))

(declare-fun b!6552853 () Bool)

(assert (=> b!6552853 (= e!3967277 (= lt!2403077 call!569970))))

(declare-fun d!2056471 () Bool)

(assert (=> d!2056471 e!3967277))

(declare-fun c!1203768 () Bool)

(assert (=> d!2056471 (= c!1203768 ((_ is EmptyExpr!16427) lt!2402897))))

(assert (=> d!2056471 (= lt!2403077 e!3967279)))

(declare-fun c!1203767 () Bool)

(assert (=> d!2056471 (= c!1203767 (isEmpty!37690 (_2!36709 lt!2402920)))))

(assert (=> d!2056471 (validRegex!8163 lt!2402897)))

(assert (=> d!2056471 (= (matchR!8610 lt!2402897 (_2!36709 lt!2402920)) lt!2403077)))

(declare-fun bm!569965 () Bool)

(assert (=> bm!569965 (= call!569970 (isEmpty!37690 (_2!36709 lt!2402920)))))

(declare-fun b!6552854 () Bool)

(assert (=> b!6552854 (= e!3967283 (= (head!13304 (_2!36709 lt!2402920)) (c!1203556 lt!2402897)))))

(declare-fun b!6552855 () Bool)

(declare-fun e!3967280 () Bool)

(assert (=> b!6552855 (= e!3967282 e!3967280)))

(declare-fun res!2688480 () Bool)

(assert (=> b!6552855 (=> (not res!2688480) (not e!3967280))))

(assert (=> b!6552855 (= res!2688480 (not lt!2403077))))

(declare-fun b!6552856 () Bool)

(assert (=> b!6552856 (= e!3967279 (nullable!6420 lt!2402897))))

(declare-fun b!6552857 () Bool)

(assert (=> b!6552857 (= e!3967280 e!3967278)))

(declare-fun res!2688479 () Bool)

(assert (=> b!6552857 (=> res!2688479 e!3967278)))

(assert (=> b!6552857 (= res!2688479 call!569970)))

(declare-fun b!6552858 () Bool)

(assert (=> b!6552858 (= e!3967278 (not (= (head!13304 (_2!36709 lt!2402920)) (c!1203556 lt!2402897))))))

(assert (= (and d!2056471 c!1203767) b!6552856))

(assert (= (and d!2056471 (not c!1203767)) b!6552849))

(assert (= (and d!2056471 c!1203768) b!6552853))

(assert (= (and d!2056471 (not c!1203768)) b!6552850))

(assert (= (and b!6552850 c!1203766) b!6552848))

(assert (= (and b!6552850 (not c!1203766)) b!6552852))

(assert (= (and b!6552852 (not res!2688484)) b!6552846))

(assert (= (and b!6552846 res!2688477) b!6552851))

(assert (= (and b!6552851 res!2688481) b!6552847))

(assert (= (and b!6552847 res!2688482) b!6552854))

(assert (= (and b!6552846 (not res!2688483)) b!6552855))

(assert (= (and b!6552855 res!2688480) b!6552857))

(assert (= (and b!6552857 (not res!2688479)) b!6552844))

(assert (= (and b!6552844 (not res!2688478)) b!6552858))

(assert (= (or b!6552853 b!6552851 b!6552857) bm!569965))

(assert (=> b!6552844 m!7335140))

(assert (=> b!6552844 m!7335140))

(declare-fun m!7335268 () Bool)

(assert (=> b!6552844 m!7335268))

(assert (=> d!2056471 m!7335132))

(assert (=> d!2056471 m!7335262))

(assert (=> bm!569965 m!7335132))

(assert (=> b!6552854 m!7335136))

(declare-fun m!7335270 () Bool)

(assert (=> b!6552856 m!7335270))

(assert (=> b!6552847 m!7335140))

(assert (=> b!6552847 m!7335140))

(assert (=> b!6552847 m!7335268))

(assert (=> b!6552858 m!7335136))

(assert (=> b!6552849 m!7335136))

(assert (=> b!6552849 m!7335136))

(declare-fun m!7335272 () Bool)

(assert (=> b!6552849 m!7335272))

(assert (=> b!6552849 m!7335140))

(assert (=> b!6552849 m!7335272))

(assert (=> b!6552849 m!7335140))

(declare-fun m!7335274 () Bool)

(assert (=> b!6552849 m!7335274))

(assert (=> b!6552070 d!2056471))

(declare-fun bs!1672666 () Bool)

(declare-fun d!2056475 () Bool)

(assert (= bs!1672666 (and d!2056475 b!6552065)))

(declare-fun lambda!364072 () Int)

(assert (=> bs!1672666 (= lambda!364072 lambda!364001)))

(declare-fun bs!1672667 () Bool)

(assert (= bs!1672667 (and d!2056475 d!2056433)))

(assert (=> bs!1672667 (= lambda!364072 lambda!364059)))

(assert (=> d!2056475 (matchZipper!2439 (store ((as const (Array Context!11622 Bool)) false) (Context!11623 (++!14556 (exprs!6311 lt!2402875) (exprs!6311 lt!2402901))) true) (++!14557 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(declare-fun lt!2403086 () Unit!159043)

(assert (=> d!2056475 (= lt!2403086 (lemmaConcatPreservesForall!400 (exprs!6311 lt!2402875) (exprs!6311 lt!2402901) lambda!364072))))

(declare-fun lt!2403085 () Unit!159043)

(declare-fun choose!48785 (Context!11622 Context!11622 List!65582 List!65582) Unit!159043)

(assert (=> d!2056475 (= lt!2403085 (choose!48785 lt!2402875 lt!2402901 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(assert (=> d!2056475 (matchZipper!2439 (store ((as const (Array Context!11622 Bool)) false) lt!2402875 true) (_1!36709 lt!2402920))))

(assert (=> d!2056475 (= (lemmaConcatenateContextMatchesConcatOfStrings!208 lt!2402875 lt!2402901 (_1!36709 lt!2402920) (_2!36709 lt!2402920)) lt!2403085)))

(declare-fun bs!1672670 () Bool)

(assert (= bs!1672670 d!2056475))

(assert (=> bs!1672670 m!7334480))

(declare-fun m!7335276 () Bool)

(assert (=> bs!1672670 m!7335276))

(assert (=> bs!1672670 m!7334446))

(declare-fun m!7335278 () Bool)

(assert (=> bs!1672670 m!7335278))

(declare-fun m!7335280 () Bool)

(assert (=> bs!1672670 m!7335280))

(declare-fun m!7335282 () Bool)

(assert (=> bs!1672670 m!7335282))

(assert (=> bs!1672670 m!7334480))

(declare-fun m!7335284 () Bool)

(assert (=> bs!1672670 m!7335284))

(assert (=> bs!1672670 m!7335282))

(assert (=> bs!1672670 m!7334446))

(declare-fun m!7335286 () Bool)

(assert (=> bs!1672670 m!7335286))

(assert (=> b!6552070 d!2056475))

(declare-fun b!6552889 () Bool)

(declare-fun res!2688492 () Bool)

(declare-fun e!3967304 () Bool)

(assert (=> b!6552889 (=> res!2688492 e!3967304)))

(assert (=> b!6552889 (= res!2688492 (not (isEmpty!37690 (tail!12389 s!2326))))))

(declare-fun b!6552890 () Bool)

(declare-fun res!2688497 () Bool)

(declare-fun e!3967308 () Bool)

(assert (=> b!6552890 (=> res!2688497 e!3967308)))

(declare-fun e!3967309 () Bool)

(assert (=> b!6552890 (= res!2688497 e!3967309)))

(declare-fun res!2688491 () Bool)

(assert (=> b!6552890 (=> (not res!2688491) (not e!3967309))))

(declare-fun lt!2403088 () Bool)

(assert (=> b!6552890 (= res!2688491 lt!2403088)))

(declare-fun b!6552891 () Bool)

(declare-fun res!2688496 () Bool)

(assert (=> b!6552891 (=> (not res!2688496) (not e!3967309))))

(assert (=> b!6552891 (= res!2688496 (isEmpty!37690 (tail!12389 s!2326)))))

(declare-fun b!6552892 () Bool)

(declare-fun e!3967307 () Bool)

(assert (=> b!6552892 (= e!3967307 (not lt!2403088))))

(declare-fun b!6552893 () Bool)

(declare-fun e!3967305 () Bool)

(assert (=> b!6552893 (= e!3967305 (matchR!8610 (derivativeStep!5111 lt!2402882 (head!13304 s!2326)) (tail!12389 s!2326)))))

(declare-fun b!6552894 () Bool)

(declare-fun e!3967303 () Bool)

(assert (=> b!6552894 (= e!3967303 e!3967307)))

(declare-fun c!1203782 () Bool)

(assert (=> b!6552894 (= c!1203782 ((_ is EmptyLang!16427) lt!2402882))))

(declare-fun b!6552895 () Bool)

(declare-fun res!2688495 () Bool)

(assert (=> b!6552895 (=> (not res!2688495) (not e!3967309))))

(declare-fun call!569971 () Bool)

(assert (=> b!6552895 (= res!2688495 (not call!569971))))

(declare-fun b!6552896 () Bool)

(declare-fun res!2688498 () Bool)

(assert (=> b!6552896 (=> res!2688498 e!3967308)))

(assert (=> b!6552896 (= res!2688498 (not ((_ is ElementMatch!16427) lt!2402882)))))

(assert (=> b!6552896 (= e!3967307 e!3967308)))

(declare-fun b!6552897 () Bool)

(assert (=> b!6552897 (= e!3967303 (= lt!2403088 call!569971))))

(declare-fun d!2056477 () Bool)

(assert (=> d!2056477 e!3967303))

(declare-fun c!1203784 () Bool)

(assert (=> d!2056477 (= c!1203784 ((_ is EmptyExpr!16427) lt!2402882))))

(assert (=> d!2056477 (= lt!2403088 e!3967305)))

(declare-fun c!1203783 () Bool)

(assert (=> d!2056477 (= c!1203783 (isEmpty!37690 s!2326))))

(assert (=> d!2056477 (validRegex!8163 lt!2402882)))

(assert (=> d!2056477 (= (matchR!8610 lt!2402882 s!2326) lt!2403088)))

(declare-fun bm!569966 () Bool)

(assert (=> bm!569966 (= call!569971 (isEmpty!37690 s!2326))))

(declare-fun b!6552898 () Bool)

(assert (=> b!6552898 (= e!3967309 (= (head!13304 s!2326) (c!1203556 lt!2402882)))))

(declare-fun b!6552899 () Bool)

(declare-fun e!3967306 () Bool)

(assert (=> b!6552899 (= e!3967308 e!3967306)))

(declare-fun res!2688494 () Bool)

(assert (=> b!6552899 (=> (not res!2688494) (not e!3967306))))

(assert (=> b!6552899 (= res!2688494 (not lt!2403088))))

(declare-fun b!6552900 () Bool)

(assert (=> b!6552900 (= e!3967305 (nullable!6420 lt!2402882))))

(declare-fun b!6552901 () Bool)

(assert (=> b!6552901 (= e!3967306 e!3967304)))

(declare-fun res!2688493 () Bool)

(assert (=> b!6552901 (=> res!2688493 e!3967304)))

(assert (=> b!6552901 (= res!2688493 call!569971)))

(declare-fun b!6552902 () Bool)

(assert (=> b!6552902 (= e!3967304 (not (= (head!13304 s!2326) (c!1203556 lt!2402882))))))

(assert (= (and d!2056477 c!1203783) b!6552900))

(assert (= (and d!2056477 (not c!1203783)) b!6552893))

(assert (= (and d!2056477 c!1203784) b!6552897))

(assert (= (and d!2056477 (not c!1203784)) b!6552894))

(assert (= (and b!6552894 c!1203782) b!6552892))

(assert (= (and b!6552894 (not c!1203782)) b!6552896))

(assert (= (and b!6552896 (not res!2688498)) b!6552890))

(assert (= (and b!6552890 res!2688491) b!6552895))

(assert (= (and b!6552895 res!2688495) b!6552891))

(assert (= (and b!6552891 res!2688496) b!6552898))

(assert (= (and b!6552890 (not res!2688497)) b!6552899))

(assert (= (and b!6552899 res!2688494) b!6552901))

(assert (= (and b!6552901 (not res!2688493)) b!6552889))

(assert (= (and b!6552889 (not res!2688492)) b!6552902))

(assert (= (or b!6552897 b!6552895 b!6552901) bm!569966))

(assert (=> b!6552889 m!7335032))

(assert (=> b!6552889 m!7335032))

(assert (=> b!6552889 m!7335036))

(assert (=> d!2056477 m!7335004))

(assert (=> d!2056477 m!7335236))

(assert (=> bm!569966 m!7335004))

(assert (=> b!6552898 m!7335040))

(declare-fun m!7335308 () Bool)

(assert (=> b!6552900 m!7335308))

(assert (=> b!6552891 m!7335032))

(assert (=> b!6552891 m!7335032))

(assert (=> b!6552891 m!7335036))

(assert (=> b!6552902 m!7335040))

(assert (=> b!6552893 m!7335040))

(assert (=> b!6552893 m!7335040))

(declare-fun m!7335314 () Bool)

(assert (=> b!6552893 m!7335314))

(assert (=> b!6552893 m!7335032))

(assert (=> b!6552893 m!7335314))

(assert (=> b!6552893 m!7335032))

(declare-fun m!7335316 () Bool)

(assert (=> b!6552893 m!7335316))

(assert (=> b!6552070 d!2056477))

(declare-fun d!2056483 () Bool)

(assert (=> d!2056483 (= (Exists!3497 lambda!364002) (choose!48765 lambda!364002))))

(declare-fun bs!1672676 () Bool)

(assert (= bs!1672676 d!2056483))

(declare-fun m!7335318 () Bool)

(assert (=> bs!1672676 m!7335318))

(assert (=> b!6552070 d!2056483))

(declare-fun d!2056485 () Bool)

(assert (=> d!2056485 (matchR!8610 (Concat!25272 (reg!16756 (regOne!33366 r!7292)) lt!2402897) (++!14557 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(declare-fun lt!2403092 () Unit!159043)

(declare-fun choose!48786 (Regex!16427 Regex!16427 List!65582 List!65582) Unit!159043)

(assert (=> d!2056485 (= lt!2403092 (choose!48786 (reg!16756 (regOne!33366 r!7292)) lt!2402897 (_1!36709 lt!2402920) (_2!36709 lt!2402920)))))

(declare-fun e!3967313 () Bool)

(assert (=> d!2056485 e!3967313))

(declare-fun res!2688501 () Bool)

(assert (=> d!2056485 (=> (not res!2688501) (not e!3967313))))

(assert (=> d!2056485 (= res!2688501 (validRegex!8163 (reg!16756 (regOne!33366 r!7292))))))

(assert (=> d!2056485 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!348 (reg!16756 (regOne!33366 r!7292)) lt!2402897 (_1!36709 lt!2402920) (_2!36709 lt!2402920)) lt!2403092)))

(declare-fun b!6552907 () Bool)

(assert (=> b!6552907 (= e!3967313 (validRegex!8163 lt!2402897))))

(assert (= (and d!2056485 res!2688501) b!6552907))

(assert (=> d!2056485 m!7334480))

(assert (=> d!2056485 m!7334480))

(declare-fun m!7335326 () Bool)

(assert (=> d!2056485 m!7335326))

(declare-fun m!7335328 () Bool)

(assert (=> d!2056485 m!7335328))

(assert (=> d!2056485 m!7335206))

(assert (=> b!6552907 m!7335262))

(assert (=> b!6552070 d!2056485))

(declare-fun b!6552910 () Bool)

(declare-fun res!2688505 () Bool)

(declare-fun e!3967317 () Bool)

(assert (=> b!6552910 (=> res!2688505 e!3967317)))

(assert (=> b!6552910 (= res!2688505 (not (isEmpty!37690 (tail!12389 lt!2402892))))))

(declare-fun b!6552911 () Bool)

(declare-fun res!2688510 () Bool)

(declare-fun e!3967321 () Bool)

(assert (=> b!6552911 (=> res!2688510 e!3967321)))

(declare-fun e!3967322 () Bool)

(assert (=> b!6552911 (= res!2688510 e!3967322)))

(declare-fun res!2688504 () Bool)

(assert (=> b!6552911 (=> (not res!2688504) (not e!3967322))))

(declare-fun lt!2403095 () Bool)

(assert (=> b!6552911 (= res!2688504 lt!2403095)))

(declare-fun b!6552912 () Bool)

(declare-fun res!2688509 () Bool)

(assert (=> b!6552912 (=> (not res!2688509) (not e!3967322))))

(assert (=> b!6552912 (= res!2688509 (isEmpty!37690 (tail!12389 lt!2402892)))))

(declare-fun b!6552913 () Bool)

(declare-fun e!3967320 () Bool)

(assert (=> b!6552913 (= e!3967320 (not lt!2403095))))

(declare-fun b!6552914 () Bool)

(declare-fun e!3967318 () Bool)

(assert (=> b!6552914 (= e!3967318 (matchR!8610 (derivativeStep!5111 lt!2402885 (head!13304 lt!2402892)) (tail!12389 lt!2402892)))))

(declare-fun b!6552915 () Bool)

(declare-fun e!3967316 () Bool)

(assert (=> b!6552915 (= e!3967316 e!3967320)))

(declare-fun c!1203786 () Bool)

(assert (=> b!6552915 (= c!1203786 ((_ is EmptyLang!16427) lt!2402885))))

(declare-fun b!6552916 () Bool)

(declare-fun res!2688508 () Bool)

(assert (=> b!6552916 (=> (not res!2688508) (not e!3967322))))

(declare-fun call!569972 () Bool)

(assert (=> b!6552916 (= res!2688508 (not call!569972))))

(declare-fun b!6552917 () Bool)

(declare-fun res!2688511 () Bool)

(assert (=> b!6552917 (=> res!2688511 e!3967321)))

(assert (=> b!6552917 (= res!2688511 (not ((_ is ElementMatch!16427) lt!2402885)))))

(assert (=> b!6552917 (= e!3967320 e!3967321)))

(declare-fun b!6552918 () Bool)

(assert (=> b!6552918 (= e!3967316 (= lt!2403095 call!569972))))

(declare-fun d!2056491 () Bool)

(assert (=> d!2056491 e!3967316))

(declare-fun c!1203788 () Bool)

(assert (=> d!2056491 (= c!1203788 ((_ is EmptyExpr!16427) lt!2402885))))

(assert (=> d!2056491 (= lt!2403095 e!3967318)))

(declare-fun c!1203787 () Bool)

(assert (=> d!2056491 (= c!1203787 (isEmpty!37690 lt!2402892))))

(assert (=> d!2056491 (validRegex!8163 lt!2402885)))

(assert (=> d!2056491 (= (matchR!8610 lt!2402885 lt!2402892) lt!2403095)))

(declare-fun bm!569967 () Bool)

(assert (=> bm!569967 (= call!569972 (isEmpty!37690 lt!2402892))))

(declare-fun b!6552919 () Bool)

(assert (=> b!6552919 (= e!3967322 (= (head!13304 lt!2402892) (c!1203556 lt!2402885)))))

(declare-fun b!6552920 () Bool)

(declare-fun e!3967319 () Bool)

(assert (=> b!6552920 (= e!3967321 e!3967319)))

(declare-fun res!2688507 () Bool)

(assert (=> b!6552920 (=> (not res!2688507) (not e!3967319))))

(assert (=> b!6552920 (= res!2688507 (not lt!2403095))))

(declare-fun b!6552921 () Bool)

(assert (=> b!6552921 (= e!3967318 (nullable!6420 lt!2402885))))

(declare-fun b!6552922 () Bool)

(assert (=> b!6552922 (= e!3967319 e!3967317)))

(declare-fun res!2688506 () Bool)

(assert (=> b!6552922 (=> res!2688506 e!3967317)))

(assert (=> b!6552922 (= res!2688506 call!569972)))

(declare-fun b!6552923 () Bool)

(assert (=> b!6552923 (= e!3967317 (not (= (head!13304 lt!2402892) (c!1203556 lt!2402885))))))

(assert (= (and d!2056491 c!1203787) b!6552921))

(assert (= (and d!2056491 (not c!1203787)) b!6552914))

(assert (= (and d!2056491 c!1203788) b!6552918))

(assert (= (and d!2056491 (not c!1203788)) b!6552915))

(assert (= (and b!6552915 c!1203786) b!6552913))

(assert (= (and b!6552915 (not c!1203786)) b!6552917))

(assert (= (and b!6552917 (not res!2688511)) b!6552911))

(assert (= (and b!6552911 res!2688504) b!6552916))

(assert (= (and b!6552916 res!2688508) b!6552912))

(assert (= (and b!6552912 res!2688509) b!6552919))

(assert (= (and b!6552911 (not res!2688510)) b!6552920))

(assert (= (and b!6552920 res!2688507) b!6552922))

(assert (= (and b!6552922 (not res!2688506)) b!6552910))

(assert (= (and b!6552910 (not res!2688505)) b!6552923))

(assert (= (or b!6552918 b!6552916 b!6552922) bm!569967))

(assert (=> b!6552910 m!7335170))

(assert (=> b!6552910 m!7335170))

(declare-fun m!7335330 () Bool)

(assert (=> b!6552910 m!7335330))

(assert (=> d!2056491 m!7335162))

(declare-fun m!7335332 () Bool)

(assert (=> d!2056491 m!7335332))

(assert (=> bm!569967 m!7335162))

(assert (=> b!6552919 m!7335166))

(declare-fun m!7335334 () Bool)

(assert (=> b!6552921 m!7335334))

(assert (=> b!6552912 m!7335170))

(assert (=> b!6552912 m!7335170))

(assert (=> b!6552912 m!7335330))

(assert (=> b!6552923 m!7335166))

(assert (=> b!6552914 m!7335166))

(assert (=> b!6552914 m!7335166))

(declare-fun m!7335338 () Bool)

(assert (=> b!6552914 m!7335338))

(assert (=> b!6552914 m!7335170))

(assert (=> b!6552914 m!7335338))

(assert (=> b!6552914 m!7335170))

(declare-fun m!7335340 () Bool)

(assert (=> b!6552914 m!7335340))

(assert (=> b!6552070 d!2056491))

(declare-fun b!6552927 () Bool)

(declare-fun res!2688514 () Bool)

(declare-fun e!3967326 () Bool)

(assert (=> b!6552927 (=> res!2688514 e!3967326)))

(assert (=> b!6552927 (= res!2688514 (not (isEmpty!37690 (tail!12389 (_1!36709 lt!2402920)))))))

(declare-fun b!6552928 () Bool)

(declare-fun res!2688519 () Bool)

(declare-fun e!3967330 () Bool)

(assert (=> b!6552928 (=> res!2688519 e!3967330)))

(declare-fun e!3967331 () Bool)

(assert (=> b!6552928 (= res!2688519 e!3967331)))

(declare-fun res!2688513 () Bool)

(assert (=> b!6552928 (=> (not res!2688513) (not e!3967331))))

(declare-fun lt!2403097 () Bool)

(assert (=> b!6552928 (= res!2688513 lt!2403097)))

(declare-fun b!6552929 () Bool)

(declare-fun res!2688518 () Bool)

(assert (=> b!6552929 (=> (not res!2688518) (not e!3967331))))

(assert (=> b!6552929 (= res!2688518 (isEmpty!37690 (tail!12389 (_1!36709 lt!2402920))))))

(declare-fun b!6552930 () Bool)

(declare-fun e!3967329 () Bool)

(assert (=> b!6552930 (= e!3967329 (not lt!2403097))))

(declare-fun b!6552931 () Bool)

(declare-fun e!3967327 () Bool)

(assert (=> b!6552931 (= e!3967327 (matchR!8610 (derivativeStep!5111 (reg!16756 (regOne!33366 r!7292)) (head!13304 (_1!36709 lt!2402920))) (tail!12389 (_1!36709 lt!2402920))))))

(declare-fun b!6552932 () Bool)

(declare-fun e!3967325 () Bool)

(assert (=> b!6552932 (= e!3967325 e!3967329)))

(declare-fun c!1203790 () Bool)

(assert (=> b!6552932 (= c!1203790 ((_ is EmptyLang!16427) (reg!16756 (regOne!33366 r!7292))))))

(declare-fun b!6552933 () Bool)

(declare-fun res!2688517 () Bool)

(assert (=> b!6552933 (=> (not res!2688517) (not e!3967331))))

(declare-fun call!569973 () Bool)

(assert (=> b!6552933 (= res!2688517 (not call!569973))))

(declare-fun b!6552934 () Bool)

(declare-fun res!2688520 () Bool)

(assert (=> b!6552934 (=> res!2688520 e!3967330)))

(assert (=> b!6552934 (= res!2688520 (not ((_ is ElementMatch!16427) (reg!16756 (regOne!33366 r!7292)))))))

(assert (=> b!6552934 (= e!3967329 e!3967330)))

(declare-fun b!6552935 () Bool)

(assert (=> b!6552935 (= e!3967325 (= lt!2403097 call!569973))))

(declare-fun d!2056495 () Bool)

(assert (=> d!2056495 e!3967325))

(declare-fun c!1203792 () Bool)

(assert (=> d!2056495 (= c!1203792 ((_ is EmptyExpr!16427) (reg!16756 (regOne!33366 r!7292))))))

(assert (=> d!2056495 (= lt!2403097 e!3967327)))

(declare-fun c!1203791 () Bool)

(assert (=> d!2056495 (= c!1203791 (isEmpty!37690 (_1!36709 lt!2402920)))))

(assert (=> d!2056495 (validRegex!8163 (reg!16756 (regOne!33366 r!7292)))))

(assert (=> d!2056495 (= (matchR!8610 (reg!16756 (regOne!33366 r!7292)) (_1!36709 lt!2402920)) lt!2403097)))

(declare-fun bm!569968 () Bool)

(assert (=> bm!569968 (= call!569973 (isEmpty!37690 (_1!36709 lt!2402920)))))

(declare-fun b!6552936 () Bool)

(assert (=> b!6552936 (= e!3967331 (= (head!13304 (_1!36709 lt!2402920)) (c!1203556 (reg!16756 (regOne!33366 r!7292)))))))

(declare-fun b!6552937 () Bool)

(declare-fun e!3967328 () Bool)

(assert (=> b!6552937 (= e!3967330 e!3967328)))

(declare-fun res!2688516 () Bool)

(assert (=> b!6552937 (=> (not res!2688516) (not e!3967328))))

(assert (=> b!6552937 (= res!2688516 (not lt!2403097))))

(declare-fun b!6552938 () Bool)

(assert (=> b!6552938 (= e!3967327 (nullable!6420 (reg!16756 (regOne!33366 r!7292))))))

(declare-fun b!6552939 () Bool)

(assert (=> b!6552939 (= e!3967328 e!3967326)))

(declare-fun res!2688515 () Bool)

(assert (=> b!6552939 (=> res!2688515 e!3967326)))

(assert (=> b!6552939 (= res!2688515 call!569973)))

(declare-fun b!6552940 () Bool)

(assert (=> b!6552940 (= e!3967326 (not (= (head!13304 (_1!36709 lt!2402920)) (c!1203556 (reg!16756 (regOne!33366 r!7292))))))))

(assert (= (and d!2056495 c!1203791) b!6552938))

(assert (= (and d!2056495 (not c!1203791)) b!6552931))

(assert (= (and d!2056495 c!1203792) b!6552935))

(assert (= (and d!2056495 (not c!1203792)) b!6552932))

(assert (= (and b!6552932 c!1203790) b!6552930))

(assert (= (and b!6552932 (not c!1203790)) b!6552934))

(assert (= (and b!6552934 (not res!2688520)) b!6552928))

(assert (= (and b!6552928 res!2688513) b!6552933))

(assert (= (and b!6552933 res!2688517) b!6552929))

(assert (= (and b!6552929 res!2688518) b!6552936))

(assert (= (and b!6552928 (not res!2688519)) b!6552937))

(assert (= (and b!6552937 res!2688516) b!6552939))

(assert (= (and b!6552939 (not res!2688515)) b!6552927))

(assert (= (and b!6552927 (not res!2688514)) b!6552940))

(assert (= (or b!6552935 b!6552933 b!6552939) bm!569968))

(assert (=> b!6552927 m!7335152))

(assert (=> b!6552927 m!7335152))

(declare-fun m!7335348 () Bool)

(assert (=> b!6552927 m!7335348))

(assert (=> d!2056495 m!7335144))

(assert (=> d!2056495 m!7335206))

(assert (=> bm!569968 m!7335144))

(assert (=> b!6552936 m!7335148))

(declare-fun m!7335350 () Bool)

(assert (=> b!6552938 m!7335350))

(assert (=> b!6552929 m!7335152))

(assert (=> b!6552929 m!7335152))

(assert (=> b!6552929 m!7335348))

(assert (=> b!6552940 m!7335148))

(assert (=> b!6552931 m!7335148))

(assert (=> b!6552931 m!7335148))

(declare-fun m!7335354 () Bool)

(assert (=> b!6552931 m!7335354))

(assert (=> b!6552931 m!7335152))

(assert (=> b!6552931 m!7335354))

(assert (=> b!6552931 m!7335152))

(declare-fun m!7335360 () Bool)

(assert (=> b!6552931 m!7335360))

(assert (=> b!6552070 d!2056495))

(declare-fun d!2056501 () Bool)

(assert (=> d!2056501 (= (matchR!8610 (reg!16756 (regOne!33366 r!7292)) (_1!36709 lt!2402920)) (matchZipper!2439 lt!2402910 (_1!36709 lt!2402920)))))

(declare-fun lt!2403098 () Unit!159043)

(assert (=> d!2056501 (= lt!2403098 (choose!48782 lt!2402910 lt!2402905 (reg!16756 (regOne!33366 r!7292)) (_1!36709 lt!2402920)))))

(assert (=> d!2056501 (validRegex!8163 (reg!16756 (regOne!33366 r!7292)))))

(assert (=> d!2056501 (= (theoremZipperRegexEquiv!863 lt!2402910 lt!2402905 (reg!16756 (regOne!33366 r!7292)) (_1!36709 lt!2402920)) lt!2403098)))

(declare-fun bs!1672678 () Bool)

(assert (= bs!1672678 d!2056501))

(assert (=> bs!1672678 m!7334396))

(assert (=> bs!1672678 m!7334498))

(declare-fun m!7335364 () Bool)

(assert (=> bs!1672678 m!7335364))

(assert (=> bs!1672678 m!7335206))

(assert (=> b!6552070 d!2056501))

(declare-fun b!6552955 () Bool)

(declare-fun res!2688528 () Bool)

(declare-fun e!3967343 () Bool)

(assert (=> b!6552955 (=> res!2688528 e!3967343)))

(assert (=> b!6552955 (= res!2688528 (not (isEmpty!37690 (tail!12389 (_1!36709 (get!22722 lt!2402930))))))))

(declare-fun b!6552956 () Bool)

(declare-fun res!2688533 () Bool)

(declare-fun e!3967347 () Bool)

(assert (=> b!6552956 (=> res!2688533 e!3967347)))

(declare-fun e!3967348 () Bool)

(assert (=> b!6552956 (= res!2688533 e!3967348)))

(declare-fun res!2688527 () Bool)

(assert (=> b!6552956 (=> (not res!2688527) (not e!3967348))))

(declare-fun lt!2403099 () Bool)

(assert (=> b!6552956 (= res!2688527 lt!2403099)))

(declare-fun b!6552957 () Bool)

(declare-fun res!2688532 () Bool)

(assert (=> b!6552957 (=> (not res!2688532) (not e!3967348))))

(assert (=> b!6552957 (= res!2688532 (isEmpty!37690 (tail!12389 (_1!36709 (get!22722 lt!2402930)))))))

(declare-fun b!6552958 () Bool)

(declare-fun e!3967346 () Bool)

(assert (=> b!6552958 (= e!3967346 (not lt!2403099))))

(declare-fun b!6552959 () Bool)

(declare-fun e!3967344 () Bool)

(assert (=> b!6552959 (= e!3967344 (matchR!8610 (derivativeStep!5111 lt!2402883 (head!13304 (_1!36709 (get!22722 lt!2402930)))) (tail!12389 (_1!36709 (get!22722 lt!2402930)))))))

(declare-fun b!6552960 () Bool)

(declare-fun e!3967342 () Bool)

(assert (=> b!6552960 (= e!3967342 e!3967346)))

(declare-fun c!1203797 () Bool)

(assert (=> b!6552960 (= c!1203797 ((_ is EmptyLang!16427) lt!2402883))))

(declare-fun b!6552961 () Bool)

(declare-fun res!2688531 () Bool)

(assert (=> b!6552961 (=> (not res!2688531) (not e!3967348))))

(declare-fun call!569978 () Bool)

(assert (=> b!6552961 (= res!2688531 (not call!569978))))

(declare-fun b!6552962 () Bool)

(declare-fun res!2688534 () Bool)

(assert (=> b!6552962 (=> res!2688534 e!3967347)))

(assert (=> b!6552962 (= res!2688534 (not ((_ is ElementMatch!16427) lt!2402883)))))

(assert (=> b!6552962 (= e!3967346 e!3967347)))

(declare-fun b!6552963 () Bool)

(assert (=> b!6552963 (= e!3967342 (= lt!2403099 call!569978))))

(declare-fun d!2056505 () Bool)

(assert (=> d!2056505 e!3967342))

(declare-fun c!1203799 () Bool)

(assert (=> d!2056505 (= c!1203799 ((_ is EmptyExpr!16427) lt!2402883))))

(assert (=> d!2056505 (= lt!2403099 e!3967344)))

(declare-fun c!1203798 () Bool)

(assert (=> d!2056505 (= c!1203798 (isEmpty!37690 (_1!36709 (get!22722 lt!2402930))))))

(assert (=> d!2056505 (validRegex!8163 lt!2402883)))

(assert (=> d!2056505 (= (matchR!8610 lt!2402883 (_1!36709 (get!22722 lt!2402930))) lt!2403099)))

(declare-fun bm!569973 () Bool)

(assert (=> bm!569973 (= call!569978 (isEmpty!37690 (_1!36709 (get!22722 lt!2402930))))))

(declare-fun b!6552964 () Bool)

(assert (=> b!6552964 (= e!3967348 (= (head!13304 (_1!36709 (get!22722 lt!2402930))) (c!1203556 lt!2402883)))))

(declare-fun b!6552965 () Bool)

(declare-fun e!3967345 () Bool)

(assert (=> b!6552965 (= e!3967347 e!3967345)))

(declare-fun res!2688530 () Bool)

(assert (=> b!6552965 (=> (not res!2688530) (not e!3967345))))

(assert (=> b!6552965 (= res!2688530 (not lt!2403099))))

(declare-fun b!6552966 () Bool)

(assert (=> b!6552966 (= e!3967344 (nullable!6420 lt!2402883))))

(declare-fun b!6552967 () Bool)

(assert (=> b!6552967 (= e!3967345 e!3967343)))

(declare-fun res!2688529 () Bool)

(assert (=> b!6552967 (=> res!2688529 e!3967343)))

(assert (=> b!6552967 (= res!2688529 call!569978)))

(declare-fun b!6552968 () Bool)

(assert (=> b!6552968 (= e!3967343 (not (= (head!13304 (_1!36709 (get!22722 lt!2402930))) (c!1203556 lt!2402883))))))

(assert (= (and d!2056505 c!1203798) b!6552966))

(assert (= (and d!2056505 (not c!1203798)) b!6552959))

(assert (= (and d!2056505 c!1203799) b!6552963))

(assert (= (and d!2056505 (not c!1203799)) b!6552960))

(assert (= (and b!6552960 c!1203797) b!6552958))

(assert (= (and b!6552960 (not c!1203797)) b!6552962))

(assert (= (and b!6552962 (not res!2688534)) b!6552956))

(assert (= (and b!6552956 res!2688527) b!6552961))

(assert (= (and b!6552961 res!2688531) b!6552957))

(assert (= (and b!6552957 res!2688532) b!6552964))

(assert (= (and b!6552956 (not res!2688533)) b!6552965))

(assert (= (and b!6552965 res!2688530) b!6552967))

(assert (= (and b!6552967 (not res!2688529)) b!6552955))

(assert (= (and b!6552955 (not res!2688528)) b!6552968))

(assert (= (or b!6552963 b!6552961 b!6552967) bm!569973))

(declare-fun m!7335376 () Bool)

(assert (=> b!6552955 m!7335376))

(assert (=> b!6552955 m!7335376))

(declare-fun m!7335378 () Bool)

(assert (=> b!6552955 m!7335378))

(declare-fun m!7335380 () Bool)

(assert (=> d!2056505 m!7335380))

(assert (=> d!2056505 m!7334422))

(assert (=> bm!569973 m!7335380))

(declare-fun m!7335382 () Bool)

(assert (=> b!6552964 m!7335382))

(declare-fun m!7335384 () Bool)

(assert (=> b!6552966 m!7335384))

(assert (=> b!6552957 m!7335376))

(assert (=> b!6552957 m!7335376))

(assert (=> b!6552957 m!7335378))

(assert (=> b!6552968 m!7335382))

(assert (=> b!6552959 m!7335382))

(assert (=> b!6552959 m!7335382))

(declare-fun m!7335386 () Bool)

(assert (=> b!6552959 m!7335386))

(assert (=> b!6552959 m!7335376))

(assert (=> b!6552959 m!7335386))

(assert (=> b!6552959 m!7335376))

(declare-fun m!7335388 () Bool)

(assert (=> b!6552959 m!7335388))

(assert (=> b!6552070 d!2056505))

(assert (=> b!6552070 d!2056357))

(declare-fun bs!1672680 () Bool)

(declare-fun b!6552969 () Bool)

(assert (= bs!1672680 (and b!6552969 b!6552070)))

(declare-fun lambda!364076 () Int)

(assert (=> bs!1672680 (not (= lambda!364076 lambda!364003))))

(declare-fun bs!1672681 () Bool)

(assert (= bs!1672681 (and b!6552969 b!6552081)))

(assert (=> bs!1672681 (not (= lambda!364076 lambda!363997))))

(assert (=> bs!1672680 (not (= lambda!364076 lambda!364002))))

(declare-fun bs!1672682 () Bool)

(assert (= bs!1672682 (and b!6552969 d!2056285)))

(assert (=> bs!1672682 (not (= lambda!364076 lambda!364019))))

(assert (=> bs!1672681 (not (= lambda!364076 lambda!363998))))

(assert (=> bs!1672682 (not (= lambda!364076 lambda!364016))))

(declare-fun bs!1672685 () Bool)

(assert (= bs!1672685 (and b!6552969 d!2056275)))

(assert (=> bs!1672685 (not (= lambda!364076 lambda!364009))))

(declare-fun bs!1672687 () Bool)

(assert (= bs!1672687 (and b!6552969 d!2056457)))

(assert (=> bs!1672687 (not (= lambda!364076 lambda!364063))))

(declare-fun bs!1672688 () Bool)

(assert (= bs!1672688 (and b!6552969 b!6552644)))

(assert (=> bs!1672688 (= (and (= (reg!16756 lt!2402882) (reg!16756 r!7292)) (= lt!2402882 r!7292)) (= lambda!364076 lambda!364049))))

(declare-fun bs!1672689 () Bool)

(assert (= bs!1672689 (and b!6552969 b!6552645)))

(assert (=> bs!1672689 (not (= lambda!364076 lambda!364050))))

(assert (=> b!6552969 true))

(assert (=> b!6552969 true))

(declare-fun bs!1672691 () Bool)

(declare-fun b!6552970 () Bool)

(assert (= bs!1672691 (and b!6552970 b!6552070)))

(declare-fun lambda!364078 () Int)

(assert (=> bs!1672691 (= (and (= (regOne!33366 lt!2402882) lt!2402883) (= (regTwo!33366 lt!2402882) (regTwo!33366 r!7292))) (= lambda!364078 lambda!364003))))

(declare-fun bs!1672692 () Bool)

(assert (= bs!1672692 (and b!6552970 b!6552081)))

(assert (=> bs!1672692 (not (= lambda!364078 lambda!363997))))

(declare-fun bs!1672694 () Bool)

(assert (= bs!1672694 (and b!6552970 b!6552969)))

(assert (=> bs!1672694 (not (= lambda!364078 lambda!364076))))

(assert (=> bs!1672691 (not (= lambda!364078 lambda!364002))))

(declare-fun bs!1672696 () Bool)

(assert (= bs!1672696 (and b!6552970 d!2056285)))

(assert (=> bs!1672696 (= (and (= (regOne!33366 lt!2402882) (regOne!33366 r!7292)) (= (regTwo!33366 lt!2402882) (regTwo!33366 r!7292))) (= lambda!364078 lambda!364019))))

(assert (=> bs!1672692 (= (and (= (regOne!33366 lt!2402882) (regOne!33366 r!7292)) (= (regTwo!33366 lt!2402882) (regTwo!33366 r!7292))) (= lambda!364078 lambda!363998))))

(assert (=> bs!1672696 (not (= lambda!364078 lambda!364016))))

(declare-fun bs!1672697 () Bool)

(assert (= bs!1672697 (and b!6552970 d!2056275)))

(assert (=> bs!1672697 (not (= lambda!364078 lambda!364009))))

(declare-fun bs!1672698 () Bool)

(assert (= bs!1672698 (and b!6552970 d!2056457)))

(assert (=> bs!1672698 (not (= lambda!364078 lambda!364063))))

(declare-fun bs!1672699 () Bool)

(assert (= bs!1672699 (and b!6552970 b!6552644)))

(assert (=> bs!1672699 (not (= lambda!364078 lambda!364049))))

(declare-fun bs!1672701 () Bool)

(assert (= bs!1672701 (and b!6552970 b!6552645)))

(assert (=> bs!1672701 (= (and (= (regOne!33366 lt!2402882) (regOne!33366 r!7292)) (= (regTwo!33366 lt!2402882) (regTwo!33366 r!7292))) (= lambda!364078 lambda!364050))))

(assert (=> b!6552970 true))

(assert (=> b!6552970 true))

(declare-fun bm!569974 () Bool)

(declare-fun call!569980 () Bool)

(assert (=> bm!569974 (= call!569980 (isEmpty!37690 s!2326))))

(declare-fun e!3967350 () Bool)

(declare-fun call!569979 () Bool)

(assert (=> b!6552969 (= e!3967350 call!569979)))

(declare-fun e!3967354 () Bool)

(assert (=> b!6552970 (= e!3967354 call!569979)))

(declare-fun b!6552971 () Bool)

(declare-fun e!3967349 () Bool)

(assert (=> b!6552971 (= e!3967349 (= s!2326 (Cons!65458 (c!1203556 lt!2402882) Nil!65458)))))

(declare-fun b!6552972 () Bool)

(declare-fun e!3967355 () Bool)

(declare-fun e!3967351 () Bool)

(assert (=> b!6552972 (= e!3967355 e!3967351)))

(declare-fun res!2688537 () Bool)

(assert (=> b!6552972 (= res!2688537 (not ((_ is EmptyLang!16427) lt!2402882)))))

(assert (=> b!6552972 (=> (not res!2688537) (not e!3967351))))

(declare-fun b!6552973 () Bool)

(declare-fun res!2688536 () Bool)

(assert (=> b!6552973 (=> res!2688536 e!3967350)))

(assert (=> b!6552973 (= res!2688536 call!569980)))

(assert (=> b!6552973 (= e!3967354 e!3967350)))

(declare-fun b!6552974 () Bool)

(assert (=> b!6552974 (= e!3967355 call!569980)))

(declare-fun d!2056511 () Bool)

(declare-fun c!1203803 () Bool)

(assert (=> d!2056511 (= c!1203803 ((_ is EmptyExpr!16427) lt!2402882))))

(assert (=> d!2056511 (= (matchRSpec!3528 lt!2402882 s!2326) e!3967355)))

(declare-fun b!6552975 () Bool)

(declare-fun c!1203800 () Bool)

(assert (=> b!6552975 (= c!1203800 ((_ is Union!16427) lt!2402882))))

(declare-fun e!3967352 () Bool)

(assert (=> b!6552975 (= e!3967349 e!3967352)))

(declare-fun b!6552976 () Bool)

(declare-fun c!1203802 () Bool)

(assert (=> b!6552976 (= c!1203802 ((_ is ElementMatch!16427) lt!2402882))))

(assert (=> b!6552976 (= e!3967351 e!3967349)))

(declare-fun b!6552977 () Bool)

(assert (=> b!6552977 (= e!3967352 e!3967354)))

(declare-fun c!1203801 () Bool)

(assert (=> b!6552977 (= c!1203801 ((_ is Star!16427) lt!2402882))))

(declare-fun b!6552978 () Bool)

(declare-fun e!3967353 () Bool)

(assert (=> b!6552978 (= e!3967352 e!3967353)))

(declare-fun res!2688535 () Bool)

(assert (=> b!6552978 (= res!2688535 (matchRSpec!3528 (regOne!33367 lt!2402882) s!2326))))

(assert (=> b!6552978 (=> res!2688535 e!3967353)))

(declare-fun bm!569975 () Bool)

(assert (=> bm!569975 (= call!569979 (Exists!3497 (ite c!1203801 lambda!364076 lambda!364078)))))

(declare-fun b!6552979 () Bool)

(assert (=> b!6552979 (= e!3967353 (matchRSpec!3528 (regTwo!33367 lt!2402882) s!2326))))

(assert (= (and d!2056511 c!1203803) b!6552974))

(assert (= (and d!2056511 (not c!1203803)) b!6552972))

(assert (= (and b!6552972 res!2688537) b!6552976))

(assert (= (and b!6552976 c!1203802) b!6552971))

(assert (= (and b!6552976 (not c!1203802)) b!6552975))

(assert (= (and b!6552975 c!1203800) b!6552978))

(assert (= (and b!6552975 (not c!1203800)) b!6552977))

(assert (= (and b!6552978 (not res!2688535)) b!6552979))

(assert (= (and b!6552977 c!1203801) b!6552973))

(assert (= (and b!6552977 (not c!1203801)) b!6552970))

(assert (= (and b!6552973 (not res!2688536)) b!6552969))

(assert (= (or b!6552969 b!6552970) bm!569975))

(assert (= (or b!6552974 b!6552973) bm!569974))

(assert (=> bm!569974 m!7335004))

(declare-fun m!7335422 () Bool)

(assert (=> b!6552978 m!7335422))

(declare-fun m!7335424 () Bool)

(assert (=> bm!569975 m!7335424))

(declare-fun m!7335426 () Bool)

(assert (=> b!6552979 m!7335426))

(assert (=> b!6552070 d!2056511))

(declare-fun bs!1672702 () Bool)

(declare-fun d!2056527 () Bool)

(assert (= bs!1672702 (and d!2056527 b!6552070)))

(declare-fun lambda!364079 () Int)

(assert (=> bs!1672702 (not (= lambda!364079 lambda!364003))))

(declare-fun bs!1672703 () Bool)

(assert (= bs!1672703 (and d!2056527 b!6552970)))

(assert (=> bs!1672703 (not (= lambda!364079 lambda!364078))))

(declare-fun bs!1672704 () Bool)

(assert (= bs!1672704 (and d!2056527 b!6552081)))

(assert (=> bs!1672704 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364079 lambda!363997))))

(declare-fun bs!1672705 () Bool)

(assert (= bs!1672705 (and d!2056527 b!6552969)))

(assert (=> bs!1672705 (not (= lambda!364079 lambda!364076))))

(assert (=> bs!1672702 (= lambda!364079 lambda!364002)))

(declare-fun bs!1672706 () Bool)

(assert (= bs!1672706 (and d!2056527 d!2056285)))

(assert (=> bs!1672706 (not (= lambda!364079 lambda!364019))))

(assert (=> bs!1672704 (not (= lambda!364079 lambda!363998))))

(assert (=> bs!1672706 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364079 lambda!364016))))

(declare-fun bs!1672707 () Bool)

(assert (= bs!1672707 (and d!2056527 d!2056275)))

(assert (=> bs!1672707 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364079 lambda!364009))))

(declare-fun bs!1672708 () Bool)

(assert (= bs!1672708 (and d!2056527 d!2056457)))

(assert (=> bs!1672708 (= lambda!364079 lambda!364063)))

(declare-fun bs!1672709 () Bool)

(assert (= bs!1672709 (and d!2056527 b!6552644)))

(assert (=> bs!1672709 (not (= lambda!364079 lambda!364049))))

(declare-fun bs!1672710 () Bool)

(assert (= bs!1672710 (and d!2056527 b!6552645)))

(assert (=> bs!1672710 (not (= lambda!364079 lambda!364050))))

(assert (=> d!2056527 true))

(assert (=> d!2056527 true))

(assert (=> d!2056527 true))

(declare-fun lambda!364080 () Int)

(assert (=> bs!1672702 (= lambda!364080 lambda!364003)))

(assert (=> bs!1672703 (= (and (= lt!2402883 (regOne!33366 lt!2402882)) (= (regTwo!33366 r!7292) (regTwo!33366 lt!2402882))) (= lambda!364080 lambda!364078))))

(assert (=> bs!1672704 (not (= lambda!364080 lambda!363997))))

(assert (=> bs!1672705 (not (= lambda!364080 lambda!364076))))

(assert (=> bs!1672702 (not (= lambda!364080 lambda!364002))))

(assert (=> bs!1672706 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364080 lambda!364019))))

(assert (=> bs!1672704 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364080 lambda!363998))))

(assert (=> bs!1672707 (not (= lambda!364080 lambda!364009))))

(assert (=> bs!1672708 (not (= lambda!364080 lambda!364063))))

(assert (=> bs!1672709 (not (= lambda!364080 lambda!364049))))

(assert (=> bs!1672710 (= (= lt!2402883 (regOne!33366 r!7292)) (= lambda!364080 lambda!364050))))

(assert (=> bs!1672706 (not (= lambda!364080 lambda!364016))))

(declare-fun bs!1672711 () Bool)

(assert (= bs!1672711 d!2056527))

(assert (=> bs!1672711 (not (= lambda!364080 lambda!364079))))

(assert (=> d!2056527 true))

(assert (=> d!2056527 true))

(assert (=> d!2056527 true))

(assert (=> d!2056527 (= (Exists!3497 lambda!364079) (Exists!3497 lambda!364080))))

(declare-fun lt!2403104 () Unit!159043)

(assert (=> d!2056527 (= lt!2403104 (choose!48767 lt!2402883 (regTwo!33366 r!7292) s!2326))))

(assert (=> d!2056527 (validRegex!8163 lt!2402883)))

(assert (=> d!2056527 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2034 lt!2402883 (regTwo!33366 r!7292) s!2326) lt!2403104)))

(declare-fun m!7335432 () Bool)

(assert (=> bs!1672711 m!7335432))

(declare-fun m!7335434 () Bool)

(assert (=> bs!1672711 m!7335434))

(declare-fun m!7335436 () Bool)

(assert (=> bs!1672711 m!7335436))

(assert (=> bs!1672711 m!7334422))

(assert (=> b!6552070 d!2056527))

(declare-fun d!2056529 () Bool)

(declare-fun e!3967387 () Bool)

(assert (=> d!2056529 e!3967387))

(declare-fun res!2688542 () Bool)

(assert (=> d!2056529 (=> (not res!2688542) (not e!3967387))))

(declare-fun lt!2403108 () List!65581)

(declare-fun noDuplicate!2232 (List!65581) Bool)

(assert (=> d!2056529 (= res!2688542 (noDuplicate!2232 lt!2403108))))

(declare-fun choose!48788 ((InoxSet Context!11622)) List!65581)

(assert (=> d!2056529 (= lt!2403108 (choose!48788 z!1189))))

(assert (=> d!2056529 (= (toList!10211 z!1189) lt!2403108)))

(declare-fun b!6553048 () Bool)

(declare-fun content!12563 (List!65581) (InoxSet Context!11622))

(assert (=> b!6553048 (= e!3967387 (= (content!12563 lt!2403108) z!1189))))

(assert (= (and d!2056529 res!2688542) b!6553048))

(declare-fun m!7335442 () Bool)

(assert (=> d!2056529 m!7335442))

(declare-fun m!7335444 () Bool)

(assert (=> d!2056529 m!7335444))

(declare-fun m!7335446 () Bool)

(assert (=> b!6553048 m!7335446))

(assert (=> b!6552091 d!2056529))

(declare-fun d!2056541 () Bool)

(assert (=> d!2056541 (isDefined!13021 (findConcatSeparationZippers!192 lt!2402910 (store ((as const (Array Context!11622 Bool)) false) lt!2402901 true) Nil!65458 s!2326 s!2326))))

(declare-fun lt!2403111 () Unit!159043)

(declare-fun choose!48789 ((InoxSet Context!11622) Context!11622 List!65582) Unit!159043)

(assert (=> d!2056541 (= lt!2403111 (choose!48789 lt!2402910 lt!2402901 s!2326))))

(assert (=> d!2056541 (matchZipper!2439 (appendTo!188 lt!2402910 lt!2402901) s!2326)))

(assert (=> d!2056541 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!192 lt!2402910 lt!2402901 s!2326) lt!2403111)))

(declare-fun bs!1672717 () Bool)

(assert (= bs!1672717 d!2056541))

(assert (=> bs!1672717 m!7334456))

(assert (=> bs!1672717 m!7334490))

(assert (=> bs!1672717 m!7334490))

(declare-fun m!7335448 () Bool)

(assert (=> bs!1672717 m!7335448))

(assert (=> bs!1672717 m!7334456))

(declare-fun m!7335450 () Bool)

(assert (=> bs!1672717 m!7335450))

(declare-fun m!7335452 () Bool)

(assert (=> bs!1672717 m!7335452))

(assert (=> bs!1672717 m!7335450))

(declare-fun m!7335454 () Bool)

(assert (=> bs!1672717 m!7335454))

(assert (=> b!6552072 d!2056541))

(declare-fun d!2056543 () Bool)

(assert (=> d!2056543 (= (get!22722 lt!2402896) (v!52502 lt!2402896))))

(assert (=> b!6552072 d!2056543))

(declare-fun b!6553067 () Bool)

(declare-fun e!3967398 () Bool)

(declare-fun lt!2403120 () Option!16318)

(assert (=> b!6553067 (= e!3967398 (= (++!14557 (_1!36709 (get!22722 lt!2403120)) (_2!36709 (get!22722 lt!2403120))) s!2326))))

(declare-fun d!2056545 () Bool)

(declare-fun e!3967401 () Bool)

(assert (=> d!2056545 e!3967401))

(declare-fun res!2688553 () Bool)

(assert (=> d!2056545 (=> res!2688553 e!3967401)))

(assert (=> d!2056545 (= res!2688553 e!3967398)))

(declare-fun res!2688557 () Bool)

(assert (=> d!2056545 (=> (not res!2688557) (not e!3967398))))

(assert (=> d!2056545 (= res!2688557 (isDefined!13021 lt!2403120))))

(declare-fun e!3967400 () Option!16318)

(assert (=> d!2056545 (= lt!2403120 e!3967400)))

(declare-fun c!1203814 () Bool)

(declare-fun e!3967399 () Bool)

(assert (=> d!2056545 (= c!1203814 e!3967399)))

(declare-fun res!2688555 () Bool)

(assert (=> d!2056545 (=> (not res!2688555) (not e!3967399))))

(assert (=> d!2056545 (= res!2688555 (matchZipper!2439 lt!2402910 Nil!65458))))

(assert (=> d!2056545 (= (++!14557 Nil!65458 s!2326) s!2326)))

(assert (=> d!2056545 (= (findConcatSeparationZippers!192 lt!2402910 lt!2402881 Nil!65458 s!2326 s!2326) lt!2403120)))

(declare-fun b!6553068 () Bool)

(assert (=> b!6553068 (= e!3967401 (not (isDefined!13021 lt!2403120)))))

(declare-fun b!6553069 () Bool)

(declare-fun res!2688556 () Bool)

(assert (=> b!6553069 (=> (not res!2688556) (not e!3967398))))

(assert (=> b!6553069 (= res!2688556 (matchZipper!2439 lt!2402881 (_2!36709 (get!22722 lt!2403120))))))

(declare-fun b!6553070 () Bool)

(declare-fun e!3967402 () Option!16318)

(assert (=> b!6553070 (= e!3967402 None!16317)))

(declare-fun b!6553071 () Bool)

(declare-fun res!2688554 () Bool)

(assert (=> b!6553071 (=> (not res!2688554) (not e!3967398))))

(assert (=> b!6553071 (= res!2688554 (matchZipper!2439 lt!2402910 (_1!36709 (get!22722 lt!2403120))))))

(declare-fun b!6553072 () Bool)

(declare-fun lt!2403119 () Unit!159043)

(declare-fun lt!2403118 () Unit!159043)

(assert (=> b!6553072 (= lt!2403119 lt!2403118)))

(assert (=> b!6553072 (= (++!14557 (++!14557 Nil!65458 (Cons!65458 (h!71906 s!2326) Nil!65458)) (t!379224 s!2326)) s!2326)))

(assert (=> b!6553072 (= lt!2403118 (lemmaMoveElementToOtherListKeepsConcatEq!2569 Nil!65458 (h!71906 s!2326) (t!379224 s!2326) s!2326))))

(assert (=> b!6553072 (= e!3967402 (findConcatSeparationZippers!192 lt!2402910 lt!2402881 (++!14557 Nil!65458 (Cons!65458 (h!71906 s!2326) Nil!65458)) (t!379224 s!2326) s!2326))))

(declare-fun b!6553073 () Bool)

(assert (=> b!6553073 (= e!3967400 e!3967402)))

(declare-fun c!1203815 () Bool)

(assert (=> b!6553073 (= c!1203815 ((_ is Nil!65458) s!2326))))

(declare-fun b!6553074 () Bool)

(assert (=> b!6553074 (= e!3967399 (matchZipper!2439 lt!2402881 s!2326))))

(declare-fun b!6553075 () Bool)

(assert (=> b!6553075 (= e!3967400 (Some!16317 (tuple2!66813 Nil!65458 s!2326)))))

(assert (= (and d!2056545 res!2688555) b!6553074))

(assert (= (and d!2056545 c!1203814) b!6553075))

(assert (= (and d!2056545 (not c!1203814)) b!6553073))

(assert (= (and b!6553073 c!1203815) b!6553070))

(assert (= (and b!6553073 (not c!1203815)) b!6553072))

(assert (= (and d!2056545 res!2688557) b!6553071))

(assert (= (and b!6553071 res!2688554) b!6553069))

(assert (= (and b!6553069 res!2688556) b!6553067))

(assert (= (and d!2056545 (not res!2688553)) b!6553068))

(declare-fun m!7335456 () Bool)

(assert (=> b!6553069 m!7335456))

(declare-fun m!7335458 () Bool)

(assert (=> b!6553069 m!7335458))

(declare-fun m!7335460 () Bool)

(assert (=> d!2056545 m!7335460))

(declare-fun m!7335462 () Bool)

(assert (=> d!2056545 m!7335462))

(declare-fun m!7335464 () Bool)

(assert (=> d!2056545 m!7335464))

(assert (=> b!6553067 m!7335456))

(declare-fun m!7335466 () Bool)

(assert (=> b!6553067 m!7335466))

(declare-fun m!7335468 () Bool)

(assert (=> b!6553074 m!7335468))

(assert (=> b!6553072 m!7334612))

(assert (=> b!6553072 m!7334612))

(assert (=> b!6553072 m!7334614))

(assert (=> b!6553072 m!7334616))

(assert (=> b!6553072 m!7334612))

(declare-fun m!7335470 () Bool)

(assert (=> b!6553072 m!7335470))

(assert (=> b!6553071 m!7335456))

(declare-fun m!7335472 () Bool)

(assert (=> b!6553071 m!7335472))

(assert (=> b!6553068 m!7335460))

(assert (=> b!6552072 d!2056545))

(declare-fun b!6553084 () Bool)

(declare-fun e!3967407 () List!65582)

(assert (=> b!6553084 (= e!3967407 (_2!36709 lt!2402920))))

(declare-fun b!6553087 () Bool)

(declare-fun e!3967408 () Bool)

(declare-fun lt!2403123 () List!65582)

(assert (=> b!6553087 (= e!3967408 (or (not (= (_2!36709 lt!2402920) Nil!65458)) (= lt!2403123 (_1!36709 lt!2402920))))))

(declare-fun b!6553086 () Bool)

(declare-fun res!2688563 () Bool)

(assert (=> b!6553086 (=> (not res!2688563) (not e!3967408))))

(declare-fun size!40504 (List!65582) Int)

(assert (=> b!6553086 (= res!2688563 (= (size!40504 lt!2403123) (+ (size!40504 (_1!36709 lt!2402920)) (size!40504 (_2!36709 lt!2402920)))))))

(declare-fun b!6553085 () Bool)

(assert (=> b!6553085 (= e!3967407 (Cons!65458 (h!71906 (_1!36709 lt!2402920)) (++!14557 (t!379224 (_1!36709 lt!2402920)) (_2!36709 lt!2402920))))))

(declare-fun d!2056547 () Bool)

(assert (=> d!2056547 e!3967408))

(declare-fun res!2688562 () Bool)

(assert (=> d!2056547 (=> (not res!2688562) (not e!3967408))))

(declare-fun content!12564 (List!65582) (InoxSet C!33124))

(assert (=> d!2056547 (= res!2688562 (= (content!12564 lt!2403123) ((_ map or) (content!12564 (_1!36709 lt!2402920)) (content!12564 (_2!36709 lt!2402920)))))))

(assert (=> d!2056547 (= lt!2403123 e!3967407)))

(declare-fun c!1203818 () Bool)

(assert (=> d!2056547 (= c!1203818 ((_ is Nil!65458) (_1!36709 lt!2402920)))))

(assert (=> d!2056547 (= (++!14557 (_1!36709 lt!2402920) (_2!36709 lt!2402920)) lt!2403123)))

(assert (= (and d!2056547 c!1203818) b!6553084))

(assert (= (and d!2056547 (not c!1203818)) b!6553085))

(assert (= (and d!2056547 res!2688562) b!6553086))

(assert (= (and b!6553086 res!2688563) b!6553087))

(declare-fun m!7335474 () Bool)

(assert (=> b!6553086 m!7335474))

(declare-fun m!7335476 () Bool)

(assert (=> b!6553086 m!7335476))

(declare-fun m!7335478 () Bool)

(assert (=> b!6553086 m!7335478))

(declare-fun m!7335480 () Bool)

(assert (=> b!6553085 m!7335480))

(declare-fun m!7335482 () Bool)

(assert (=> d!2056547 m!7335482))

(declare-fun m!7335484 () Bool)

(assert (=> d!2056547 m!7335484))

(declare-fun m!7335486 () Bool)

(assert (=> d!2056547 m!7335486))

(assert (=> b!6552072 d!2056547))

(declare-fun d!2056549 () Bool)

(assert (=> d!2056549 (= (isDefined!13021 lt!2402896) (not (isEmpty!37689 lt!2402896)))))

(declare-fun bs!1672718 () Bool)

(assert (= bs!1672718 d!2056549))

(declare-fun m!7335488 () Bool)

(assert (=> bs!1672718 m!7335488))

(assert (=> b!6552072 d!2056549))

(declare-fun b!6553088 () Bool)

(declare-fun e!3967412 () Bool)

(declare-fun call!569984 () Bool)

(assert (=> b!6553088 (= e!3967412 call!569984)))

(declare-fun b!6553089 () Bool)

(declare-fun e!3967415 () Bool)

(declare-fun call!569983 () Bool)

(assert (=> b!6553089 (= e!3967415 call!569983)))

(declare-fun b!6553090 () Bool)

(declare-fun e!3967414 () Bool)

(declare-fun e!3967410 () Bool)

(assert (=> b!6553090 (= e!3967414 e!3967410)))

(declare-fun c!1203820 () Bool)

(assert (=> b!6553090 (= c!1203820 ((_ is Star!16427) r!7292))))

(declare-fun b!6553091 () Bool)

(declare-fun e!3967413 () Bool)

(assert (=> b!6553091 (= e!3967413 e!3967412)))

(declare-fun res!2688568 () Bool)

(assert (=> b!6553091 (=> (not res!2688568) (not e!3967412))))

(declare-fun call!569985 () Bool)

(assert (=> b!6553091 (= res!2688568 call!569985)))

(declare-fun b!6553092 () Bool)

(declare-fun e!3967411 () Bool)

(assert (=> b!6553092 (= e!3967410 e!3967411)))

(declare-fun c!1203819 () Bool)

(assert (=> b!6553092 (= c!1203819 ((_ is Union!16427) r!7292))))

(declare-fun b!6553093 () Bool)

(declare-fun res!2688567 () Bool)

(assert (=> b!6553093 (=> res!2688567 e!3967413)))

(assert (=> b!6553093 (= res!2688567 (not ((_ is Concat!25272) r!7292)))))

(assert (=> b!6553093 (= e!3967411 e!3967413)))

(declare-fun b!6553094 () Bool)

(declare-fun e!3967409 () Bool)

(assert (=> b!6553094 (= e!3967409 call!569984)))

(declare-fun d!2056551 () Bool)

(declare-fun res!2688565 () Bool)

(assert (=> d!2056551 (=> res!2688565 e!3967414)))

(assert (=> d!2056551 (= res!2688565 ((_ is ElementMatch!16427) r!7292))))

(assert (=> d!2056551 (= (validRegex!8163 r!7292) e!3967414)))

(declare-fun bm!569978 () Bool)

(assert (=> bm!569978 (= call!569983 (validRegex!8163 (ite c!1203820 (reg!16756 r!7292) (ite c!1203819 (regOne!33367 r!7292) (regOne!33366 r!7292)))))))

(declare-fun b!6553095 () Bool)

(assert (=> b!6553095 (= e!3967410 e!3967415)))

(declare-fun res!2688566 () Bool)

(assert (=> b!6553095 (= res!2688566 (not (nullable!6420 (reg!16756 r!7292))))))

(assert (=> b!6553095 (=> (not res!2688566) (not e!3967415))))

(declare-fun bm!569979 () Bool)

(assert (=> bm!569979 (= call!569984 (validRegex!8163 (ite c!1203819 (regTwo!33367 r!7292) (regTwo!33366 r!7292))))))

(declare-fun bm!569980 () Bool)

(assert (=> bm!569980 (= call!569985 call!569983)))

(declare-fun b!6553096 () Bool)

(declare-fun res!2688564 () Bool)

(assert (=> b!6553096 (=> (not res!2688564) (not e!3967409))))

(assert (=> b!6553096 (= res!2688564 call!569985)))

(assert (=> b!6553096 (= e!3967411 e!3967409)))

(assert (= (and d!2056551 (not res!2688565)) b!6553090))

(assert (= (and b!6553090 c!1203820) b!6553095))

(assert (= (and b!6553090 (not c!1203820)) b!6553092))

(assert (= (and b!6553095 res!2688566) b!6553089))

(assert (= (and b!6553092 c!1203819) b!6553096))

(assert (= (and b!6553092 (not c!1203819)) b!6553093))

(assert (= (and b!6553096 res!2688564) b!6553094))

(assert (= (and b!6553093 (not res!2688567)) b!6553091))

(assert (= (and b!6553091 res!2688568) b!6553088))

(assert (= (or b!6553094 b!6553088) bm!569979))

(assert (= (or b!6553096 b!6553091) bm!569980))

(assert (= (or b!6553089 bm!569980) bm!569978))

(declare-fun m!7335490 () Bool)

(assert (=> bm!569978 m!7335490))

(declare-fun m!7335492 () Bool)

(assert (=> b!6553095 m!7335492))

(declare-fun m!7335494 () Bool)

(assert (=> bm!569979 m!7335494))

(assert (=> start!642050 d!2056551))

(declare-fun d!2056553 () Bool)

(declare-fun c!1203821 () Bool)

(assert (=> d!2056553 (= c!1203821 (isEmpty!37690 (t!379224 s!2326)))))

(declare-fun e!3967416 () Bool)

(assert (=> d!2056553 (= (matchZipper!2439 lt!2402886 (t!379224 s!2326)) e!3967416)))

(declare-fun b!6553097 () Bool)

(assert (=> b!6553097 (= e!3967416 (nullableZipper!2171 lt!2402886))))

(declare-fun b!6553098 () Bool)

(assert (=> b!6553098 (= e!3967416 (matchZipper!2439 (derivationStepZipper!2393 lt!2402886 (head!13304 (t!379224 s!2326))) (tail!12389 (t!379224 s!2326))))))

(assert (= (and d!2056553 c!1203821) b!6553097))

(assert (= (and d!2056553 (not c!1203821)) b!6553098))

(assert (=> d!2056553 m!7334756))

(declare-fun m!7335496 () Bool)

(assert (=> b!6553097 m!7335496))

(assert (=> b!6553098 m!7334760))

(assert (=> b!6553098 m!7334760))

(declare-fun m!7335498 () Bool)

(assert (=> b!6553098 m!7335498))

(assert (=> b!6553098 m!7334764))

(assert (=> b!6553098 m!7335498))

(assert (=> b!6553098 m!7334764))

(declare-fun m!7335500 () Bool)

(assert (=> b!6553098 m!7335500))

(assert (=> b!6552095 d!2056553))

(declare-fun d!2056555 () Bool)

(declare-fun c!1203822 () Bool)

(assert (=> d!2056555 (= c!1203822 (isEmpty!37690 s!2326))))

(declare-fun e!3967417 () Bool)

(assert (=> d!2056555 (= (matchZipper!2439 lt!2402894 s!2326) e!3967417)))

(declare-fun b!6553099 () Bool)

(assert (=> b!6553099 (= e!3967417 (nullableZipper!2171 lt!2402894))))

(declare-fun b!6553100 () Bool)

(assert (=> b!6553100 (= e!3967417 (matchZipper!2439 (derivationStepZipper!2393 lt!2402894 (head!13304 s!2326)) (tail!12389 s!2326)))))

(assert (= (and d!2056555 c!1203822) b!6553099))

(assert (= (and d!2056555 (not c!1203822)) b!6553100))

(assert (=> d!2056555 m!7335004))

(declare-fun m!7335502 () Bool)

(assert (=> b!6553099 m!7335502))

(assert (=> b!6553100 m!7335040))

(assert (=> b!6553100 m!7335040))

(declare-fun m!7335504 () Bool)

(assert (=> b!6553100 m!7335504))

(assert (=> b!6553100 m!7335032))

(assert (=> b!6553100 m!7335504))

(assert (=> b!6553100 m!7335032))

(declare-fun m!7335506 () Bool)

(assert (=> b!6553100 m!7335506))

(assert (=> b!6552095 d!2056555))

(declare-fun d!2056557 () Bool)

(declare-fun lt!2403124 () Regex!16427)

(assert (=> d!2056557 (validRegex!8163 lt!2403124)))

(assert (=> d!2056557 (= lt!2403124 (generalisedUnion!2271 (unfocusZipperList!1848 zl!343)))))

(assert (=> d!2056557 (= (unfocusZipper!2169 zl!343) lt!2403124)))

(declare-fun bs!1672719 () Bool)

(assert (= bs!1672719 d!2056557))

(declare-fun m!7335508 () Bool)

(assert (=> bs!1672719 m!7335508))

(assert (=> bs!1672719 m!7334460))

(assert (=> bs!1672719 m!7334460))

(assert (=> bs!1672719 m!7334462))

(assert (=> b!6552074 d!2056557))

(declare-fun bs!1672720 () Bool)

(declare-fun d!2056559 () Bool)

(assert (= bs!1672720 (and d!2056559 b!6552065)))

(declare-fun lambda!364083 () Int)

(assert (=> bs!1672720 (= lambda!364083 lambda!364001)))

(declare-fun bs!1672721 () Bool)

(assert (= bs!1672721 (and d!2056559 d!2056433)))

(assert (=> bs!1672721 (= lambda!364083 lambda!364059)))

(declare-fun bs!1672722 () Bool)

(assert (= bs!1672722 (and d!2056559 d!2056475)))

(assert (=> bs!1672722 (= lambda!364083 lambda!364072)))

(declare-fun b!6553121 () Bool)

(declare-fun e!3967430 () Regex!16427)

(declare-fun e!3967435 () Regex!16427)

(assert (=> b!6553121 (= e!3967430 e!3967435)))

(declare-fun c!1203831 () Bool)

(assert (=> b!6553121 (= c!1203831 ((_ is Cons!65456) (exprs!6311 (h!71905 zl!343))))))

(declare-fun b!6553122 () Bool)

(assert (=> b!6553122 (= e!3967435 EmptyExpr!16427)))

(declare-fun b!6553123 () Bool)

(assert (=> b!6553123 (= e!3967430 (h!71904 (exprs!6311 (h!71905 zl!343))))))

(declare-fun b!6553124 () Bool)

(declare-fun e!3967434 () Bool)

(declare-fun e!3967432 () Bool)

(assert (=> b!6553124 (= e!3967434 e!3967432)))

(declare-fun c!1203834 () Bool)

(assert (=> b!6553124 (= c!1203834 (isEmpty!37685 (exprs!6311 (h!71905 zl!343))))))

(assert (=> d!2056559 e!3967434))

(declare-fun res!2688573 () Bool)

(assert (=> d!2056559 (=> (not res!2688573) (not e!3967434))))

(declare-fun lt!2403127 () Regex!16427)

(assert (=> d!2056559 (= res!2688573 (validRegex!8163 lt!2403127))))

(assert (=> d!2056559 (= lt!2403127 e!3967430)))

(declare-fun c!1203833 () Bool)

(declare-fun e!3967431 () Bool)

(assert (=> d!2056559 (= c!1203833 e!3967431)))

(declare-fun res!2688574 () Bool)

(assert (=> d!2056559 (=> (not res!2688574) (not e!3967431))))

(assert (=> d!2056559 (= res!2688574 ((_ is Cons!65456) (exprs!6311 (h!71905 zl!343))))))

(assert (=> d!2056559 (forall!15599 (exprs!6311 (h!71905 zl!343)) lambda!364083)))

(assert (=> d!2056559 (= (generalisedConcat!2024 (exprs!6311 (h!71905 zl!343))) lt!2403127)))

(declare-fun b!6553125 () Bool)

(declare-fun e!3967433 () Bool)

(assert (=> b!6553125 (= e!3967432 e!3967433)))

(declare-fun c!1203832 () Bool)

(declare-fun tail!12391 (List!65580) List!65580)

(assert (=> b!6553125 (= c!1203832 (isEmpty!37685 (tail!12391 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6553126 () Bool)

(assert (=> b!6553126 (= e!3967431 (isEmpty!37685 (t!379222 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6553127 () Bool)

(declare-fun head!13306 (List!65580) Regex!16427)

(assert (=> b!6553127 (= e!3967433 (= lt!2403127 (head!13306 (exprs!6311 (h!71905 zl!343)))))))

(declare-fun b!6553128 () Bool)

(declare-fun isEmptyExpr!1804 (Regex!16427) Bool)

(assert (=> b!6553128 (= e!3967432 (isEmptyExpr!1804 lt!2403127))))

(declare-fun b!6553129 () Bool)

(assert (=> b!6553129 (= e!3967435 (Concat!25272 (h!71904 (exprs!6311 (h!71905 zl!343))) (generalisedConcat!2024 (t!379222 (exprs!6311 (h!71905 zl!343))))))))

(declare-fun b!6553130 () Bool)

(declare-fun isConcat!1327 (Regex!16427) Bool)

(assert (=> b!6553130 (= e!3967433 (isConcat!1327 lt!2403127))))

(assert (= (and d!2056559 res!2688574) b!6553126))

(assert (= (and d!2056559 c!1203833) b!6553123))

(assert (= (and d!2056559 (not c!1203833)) b!6553121))

(assert (= (and b!6553121 c!1203831) b!6553129))

(assert (= (and b!6553121 (not c!1203831)) b!6553122))

(assert (= (and d!2056559 res!2688573) b!6553124))

(assert (= (and b!6553124 c!1203834) b!6553128))

(assert (= (and b!6553124 (not c!1203834)) b!6553125))

(assert (= (and b!6553125 c!1203832) b!6553127))

(assert (= (and b!6553125 (not c!1203832)) b!6553130))

(declare-fun m!7335510 () Bool)

(assert (=> d!2056559 m!7335510))

(declare-fun m!7335512 () Bool)

(assert (=> d!2056559 m!7335512))

(declare-fun m!7335514 () Bool)

(assert (=> b!6553125 m!7335514))

(assert (=> b!6553125 m!7335514))

(declare-fun m!7335516 () Bool)

(assert (=> b!6553125 m!7335516))

(declare-fun m!7335518 () Bool)

(assert (=> b!6553128 m!7335518))

(declare-fun m!7335520 () Bool)

(assert (=> b!6553129 m!7335520))

(declare-fun m!7335522 () Bool)

(assert (=> b!6553127 m!7335522))

(assert (=> b!6553126 m!7334424))

(declare-fun m!7335524 () Bool)

(assert (=> b!6553124 m!7335524))

(declare-fun m!7335526 () Bool)

(assert (=> b!6553130 m!7335526))

(assert (=> b!6552076 d!2056559))

(declare-fun bs!1672723 () Bool)

(declare-fun d!2056561 () Bool)

(assert (= bs!1672723 (and d!2056561 b!6552065)))

(declare-fun lambda!364086 () Int)

(assert (=> bs!1672723 (= lambda!364086 lambda!364001)))

(declare-fun bs!1672724 () Bool)

(assert (= bs!1672724 (and d!2056561 d!2056433)))

(assert (=> bs!1672724 (= lambda!364086 lambda!364059)))

(declare-fun bs!1672725 () Bool)

(assert (= bs!1672725 (and d!2056561 d!2056475)))

(assert (=> bs!1672725 (= lambda!364086 lambda!364072)))

(declare-fun bs!1672726 () Bool)

(assert (= bs!1672726 (and d!2056561 d!2056559)))

(assert (=> bs!1672726 (= lambda!364086 lambda!364083)))

(declare-fun b!6553151 () Bool)

(declare-fun e!3967448 () Regex!16427)

(assert (=> b!6553151 (= e!3967448 EmptyLang!16427)))

(declare-fun b!6553152 () Bool)

(declare-fun e!3967450 () Bool)

(declare-fun e!3967451 () Bool)

(assert (=> b!6553152 (= e!3967450 e!3967451)))

(declare-fun c!1203846 () Bool)

(assert (=> b!6553152 (= c!1203846 (isEmpty!37685 (unfocusZipperList!1848 zl!343)))))

(declare-fun b!6553153 () Bool)

(declare-fun e!3967449 () Bool)

(assert (=> b!6553153 (= e!3967449 (isEmpty!37685 (t!379222 (unfocusZipperList!1848 zl!343))))))

(declare-fun b!6553154 () Bool)

(assert (=> b!6553154 (= e!3967448 (Union!16427 (h!71904 (unfocusZipperList!1848 zl!343)) (generalisedUnion!2271 (t!379222 (unfocusZipperList!1848 zl!343)))))))

(declare-fun b!6553155 () Bool)

(declare-fun e!3967452 () Bool)

(declare-fun lt!2403130 () Regex!16427)

(declare-fun isUnion!1244 (Regex!16427) Bool)

(assert (=> b!6553155 (= e!3967452 (isUnion!1244 lt!2403130))))

(declare-fun b!6553156 () Bool)

(declare-fun e!3967453 () Regex!16427)

(assert (=> b!6553156 (= e!3967453 e!3967448)))

(declare-fun c!1203844 () Bool)

(assert (=> b!6553156 (= c!1203844 ((_ is Cons!65456) (unfocusZipperList!1848 zl!343)))))

(declare-fun b!6553157 () Bool)

(assert (=> b!6553157 (= e!3967452 (= lt!2403130 (head!13306 (unfocusZipperList!1848 zl!343))))))

(assert (=> d!2056561 e!3967450))

(declare-fun res!2688580 () Bool)

(assert (=> d!2056561 (=> (not res!2688580) (not e!3967450))))

(assert (=> d!2056561 (= res!2688580 (validRegex!8163 lt!2403130))))

(assert (=> d!2056561 (= lt!2403130 e!3967453)))

(declare-fun c!1203845 () Bool)

(assert (=> d!2056561 (= c!1203845 e!3967449)))

(declare-fun res!2688579 () Bool)

(assert (=> d!2056561 (=> (not res!2688579) (not e!3967449))))

(assert (=> d!2056561 (= res!2688579 ((_ is Cons!65456) (unfocusZipperList!1848 zl!343)))))

(assert (=> d!2056561 (forall!15599 (unfocusZipperList!1848 zl!343) lambda!364086)))

(assert (=> d!2056561 (= (generalisedUnion!2271 (unfocusZipperList!1848 zl!343)) lt!2403130)))

(declare-fun b!6553158 () Bool)

(assert (=> b!6553158 (= e!3967453 (h!71904 (unfocusZipperList!1848 zl!343)))))

(declare-fun b!6553159 () Bool)

(declare-fun isEmptyLang!1814 (Regex!16427) Bool)

(assert (=> b!6553159 (= e!3967451 (isEmptyLang!1814 lt!2403130))))

(declare-fun b!6553160 () Bool)

(assert (=> b!6553160 (= e!3967451 e!3967452)))

(declare-fun c!1203843 () Bool)

(assert (=> b!6553160 (= c!1203843 (isEmpty!37685 (tail!12391 (unfocusZipperList!1848 zl!343))))))

(assert (= (and d!2056561 res!2688579) b!6553153))

(assert (= (and d!2056561 c!1203845) b!6553158))

(assert (= (and d!2056561 (not c!1203845)) b!6553156))

(assert (= (and b!6553156 c!1203844) b!6553154))

(assert (= (and b!6553156 (not c!1203844)) b!6553151))

(assert (= (and d!2056561 res!2688580) b!6553152))

(assert (= (and b!6553152 c!1203846) b!6553159))

(assert (= (and b!6553152 (not c!1203846)) b!6553160))

(assert (= (and b!6553160 c!1203843) b!6553157))

(assert (= (and b!6553160 (not c!1203843)) b!6553155))

(assert (=> b!6553157 m!7334460))

(declare-fun m!7335528 () Bool)

(assert (=> b!6553157 m!7335528))

(declare-fun m!7335530 () Bool)

(assert (=> d!2056561 m!7335530))

(assert (=> d!2056561 m!7334460))

(declare-fun m!7335532 () Bool)

(assert (=> d!2056561 m!7335532))

(declare-fun m!7335534 () Bool)

(assert (=> b!6553154 m!7335534))

(declare-fun m!7335536 () Bool)

(assert (=> b!6553155 m!7335536))

(declare-fun m!7335538 () Bool)

(assert (=> b!6553153 m!7335538))

(declare-fun m!7335540 () Bool)

(assert (=> b!6553159 m!7335540))

(assert (=> b!6553160 m!7334460))

(declare-fun m!7335542 () Bool)

(assert (=> b!6553160 m!7335542))

(assert (=> b!6553160 m!7335542))

(declare-fun m!7335544 () Bool)

(assert (=> b!6553160 m!7335544))

(assert (=> b!6553152 m!7334460))

(declare-fun m!7335546 () Bool)

(assert (=> b!6553152 m!7335546))

(assert (=> b!6552075 d!2056561))

(declare-fun bs!1672727 () Bool)

(declare-fun d!2056563 () Bool)

(assert (= bs!1672727 (and d!2056563 d!2056433)))

(declare-fun lambda!364089 () Int)

(assert (=> bs!1672727 (= lambda!364089 lambda!364059)))

(declare-fun bs!1672728 () Bool)

(assert (= bs!1672728 (and d!2056563 d!2056475)))

(assert (=> bs!1672728 (= lambda!364089 lambda!364072)))

(declare-fun bs!1672729 () Bool)

(assert (= bs!1672729 (and d!2056563 b!6552065)))

(assert (=> bs!1672729 (= lambda!364089 lambda!364001)))

(declare-fun bs!1672730 () Bool)

(assert (= bs!1672730 (and d!2056563 d!2056561)))

(assert (=> bs!1672730 (= lambda!364089 lambda!364086)))

(declare-fun bs!1672731 () Bool)

(assert (= bs!1672731 (and d!2056563 d!2056559)))

(assert (=> bs!1672731 (= lambda!364089 lambda!364083)))

(declare-fun lt!2403133 () List!65580)

(assert (=> d!2056563 (forall!15599 lt!2403133 lambda!364089)))

(declare-fun e!3967456 () List!65580)

(assert (=> d!2056563 (= lt!2403133 e!3967456)))

(declare-fun c!1203849 () Bool)

(assert (=> d!2056563 (= c!1203849 ((_ is Cons!65457) zl!343))))

(assert (=> d!2056563 (= (unfocusZipperList!1848 zl!343) lt!2403133)))

(declare-fun b!6553165 () Bool)

(assert (=> b!6553165 (= e!3967456 (Cons!65456 (generalisedConcat!2024 (exprs!6311 (h!71905 zl!343))) (unfocusZipperList!1848 (t!379223 zl!343))))))

(declare-fun b!6553166 () Bool)

(assert (=> b!6553166 (= e!3967456 Nil!65456)))

(assert (= (and d!2056563 c!1203849) b!6553165))

(assert (= (and d!2056563 (not c!1203849)) b!6553166))

(declare-fun m!7335548 () Bool)

(assert (=> d!2056563 m!7335548))

(assert (=> b!6553165 m!7334438))

(declare-fun m!7335550 () Bool)

(assert (=> b!6553165 m!7335550))

(assert (=> b!6552075 d!2056563))

(declare-fun bs!1672732 () Bool)

(declare-fun d!2056565 () Bool)

(assert (= bs!1672732 (and d!2056565 d!2056433)))

(declare-fun lambda!364090 () Int)

(assert (=> bs!1672732 (= lambda!364090 lambda!364059)))

(declare-fun bs!1672733 () Bool)

(assert (= bs!1672733 (and d!2056565 d!2056475)))

(assert (=> bs!1672733 (= lambda!364090 lambda!364072)))

(declare-fun bs!1672734 () Bool)

(assert (= bs!1672734 (and d!2056565 b!6552065)))

(assert (=> bs!1672734 (= lambda!364090 lambda!364001)))

(declare-fun bs!1672735 () Bool)

(assert (= bs!1672735 (and d!2056565 d!2056561)))

(assert (=> bs!1672735 (= lambda!364090 lambda!364086)))

(declare-fun bs!1672736 () Bool)

(assert (= bs!1672736 (and d!2056565 d!2056559)))

(assert (=> bs!1672736 (= lambda!364090 lambda!364083)))

(declare-fun bs!1672737 () Bool)

(assert (= bs!1672737 (and d!2056565 d!2056563)))

(assert (=> bs!1672737 (= lambda!364090 lambda!364089)))

(assert (=> d!2056565 (= (inv!84314 (h!71905 zl!343)) (forall!15599 (exprs!6311 (h!71905 zl!343)) lambda!364090))))

(declare-fun bs!1672738 () Bool)

(assert (= bs!1672738 d!2056565))

(declare-fun m!7335552 () Bool)

(assert (=> bs!1672738 m!7335552))

(assert (=> b!6552077 d!2056565))

(assert (=> b!6552097 d!2056301))

(declare-fun d!2056567 () Bool)

(assert (=> d!2056567 (= (isEmpty!37685 (t!379222 (exprs!6311 (h!71905 zl!343)))) ((_ is Nil!65456) (t!379222 (exprs!6311 (h!71905 zl!343)))))))

(assert (=> b!6552058 d!2056567))

(declare-fun d!2056569 () Bool)

(assert (=> d!2056569 (= (nullable!6420 (regOne!33366 (regOne!33366 r!7292))) (nullableFct!2346 (regOne!33366 (regOne!33366 r!7292))))))

(declare-fun bs!1672739 () Bool)

(assert (= bs!1672739 d!2056569))

(declare-fun m!7335554 () Bool)

(assert (=> bs!1672739 m!7335554))

(assert (=> b!6552078 d!2056569))

(declare-fun bs!1672740 () Bool)

(declare-fun b!6553167 () Bool)

(assert (= bs!1672740 (and b!6553167 b!6552070)))

(declare-fun lambda!364091 () Int)

(assert (=> bs!1672740 (not (= lambda!364091 lambda!364003))))

(declare-fun bs!1672741 () Bool)

(assert (= bs!1672741 (and b!6553167 b!6552970)))

(assert (=> bs!1672741 (not (= lambda!364091 lambda!364078))))

(declare-fun bs!1672742 () Bool)

(assert (= bs!1672742 (and b!6553167 b!6552081)))

(assert (=> bs!1672742 (not (= lambda!364091 lambda!363997))))

(declare-fun bs!1672743 () Bool)

(assert (= bs!1672743 (and b!6553167 d!2056527)))

(assert (=> bs!1672743 (not (= lambda!364091 lambda!364080))))

(declare-fun bs!1672744 () Bool)

(assert (= bs!1672744 (and b!6553167 b!6552969)))

(assert (=> bs!1672744 (= (and (= (reg!16756 lt!2402885) (reg!16756 lt!2402882)) (= lt!2402885 lt!2402882)) (= lambda!364091 lambda!364076))))

(assert (=> bs!1672740 (not (= lambda!364091 lambda!364002))))

(declare-fun bs!1672745 () Bool)

(assert (= bs!1672745 (and b!6553167 d!2056285)))

(assert (=> bs!1672745 (not (= lambda!364091 lambda!364019))))

(assert (=> bs!1672742 (not (= lambda!364091 lambda!363998))))

(declare-fun bs!1672746 () Bool)

(assert (= bs!1672746 (and b!6553167 d!2056275)))

(assert (=> bs!1672746 (not (= lambda!364091 lambda!364009))))

(declare-fun bs!1672747 () Bool)

(assert (= bs!1672747 (and b!6553167 d!2056457)))

(assert (=> bs!1672747 (not (= lambda!364091 lambda!364063))))

(declare-fun bs!1672748 () Bool)

(assert (= bs!1672748 (and b!6553167 b!6552644)))

(assert (=> bs!1672748 (= (and (= (reg!16756 lt!2402885) (reg!16756 r!7292)) (= lt!2402885 r!7292)) (= lambda!364091 lambda!364049))))

(declare-fun bs!1672749 () Bool)

(assert (= bs!1672749 (and b!6553167 b!6552645)))

(assert (=> bs!1672749 (not (= lambda!364091 lambda!364050))))

(assert (=> bs!1672745 (not (= lambda!364091 lambda!364016))))

(assert (=> bs!1672743 (not (= lambda!364091 lambda!364079))))

(assert (=> b!6553167 true))

(assert (=> b!6553167 true))

(declare-fun bs!1672750 () Bool)

(declare-fun b!6553168 () Bool)

(assert (= bs!1672750 (and b!6553168 b!6552070)))

(declare-fun lambda!364092 () Int)

(assert (=> bs!1672750 (= (and (= (regOne!33366 lt!2402885) lt!2402883) (= (regTwo!33366 lt!2402885) (regTwo!33366 r!7292))) (= lambda!364092 lambda!364003))))

(declare-fun bs!1672751 () Bool)

(assert (= bs!1672751 (and b!6553168 b!6552970)))

(assert (=> bs!1672751 (= (and (= (regOne!33366 lt!2402885) (regOne!33366 lt!2402882)) (= (regTwo!33366 lt!2402885) (regTwo!33366 lt!2402882))) (= lambda!364092 lambda!364078))))

(declare-fun bs!1672752 () Bool)

(assert (= bs!1672752 (and b!6553168 b!6553167)))

(assert (=> bs!1672752 (not (= lambda!364092 lambda!364091))))

(declare-fun bs!1672753 () Bool)

(assert (= bs!1672753 (and b!6553168 b!6552081)))

(assert (=> bs!1672753 (not (= lambda!364092 lambda!363997))))

(declare-fun bs!1672754 () Bool)

(assert (= bs!1672754 (and b!6553168 d!2056527)))

(assert (=> bs!1672754 (= (and (= (regOne!33366 lt!2402885) lt!2402883) (= (regTwo!33366 lt!2402885) (regTwo!33366 r!7292))) (= lambda!364092 lambda!364080))))

(declare-fun bs!1672755 () Bool)

(assert (= bs!1672755 (and b!6553168 b!6552969)))

(assert (=> bs!1672755 (not (= lambda!364092 lambda!364076))))

(assert (=> bs!1672750 (not (= lambda!364092 lambda!364002))))

(declare-fun bs!1672756 () Bool)

(assert (= bs!1672756 (and b!6553168 d!2056285)))

(assert (=> bs!1672756 (= (and (= (regOne!33366 lt!2402885) (regOne!33366 r!7292)) (= (regTwo!33366 lt!2402885) (regTwo!33366 r!7292))) (= lambda!364092 lambda!364019))))

(assert (=> bs!1672753 (= (and (= (regOne!33366 lt!2402885) (regOne!33366 r!7292)) (= (regTwo!33366 lt!2402885) (regTwo!33366 r!7292))) (= lambda!364092 lambda!363998))))

(declare-fun bs!1672757 () Bool)

(assert (= bs!1672757 (and b!6553168 d!2056275)))

(assert (=> bs!1672757 (not (= lambda!364092 lambda!364009))))

(declare-fun bs!1672758 () Bool)

(assert (= bs!1672758 (and b!6553168 d!2056457)))

(assert (=> bs!1672758 (not (= lambda!364092 lambda!364063))))

(declare-fun bs!1672759 () Bool)

(assert (= bs!1672759 (and b!6553168 b!6552644)))

(assert (=> bs!1672759 (not (= lambda!364092 lambda!364049))))

(declare-fun bs!1672760 () Bool)

(assert (= bs!1672760 (and b!6553168 b!6552645)))

(assert (=> bs!1672760 (= (and (= (regOne!33366 lt!2402885) (regOne!33366 r!7292)) (= (regTwo!33366 lt!2402885) (regTwo!33366 r!7292))) (= lambda!364092 lambda!364050))))

(assert (=> bs!1672756 (not (= lambda!364092 lambda!364016))))

(assert (=> bs!1672754 (not (= lambda!364092 lambda!364079))))

(assert (=> b!6553168 true))

(assert (=> b!6553168 true))

(declare-fun bm!569981 () Bool)

(declare-fun call!569987 () Bool)

(assert (=> bm!569981 (= call!569987 (isEmpty!37690 s!2326))))

(declare-fun e!3967458 () Bool)

(declare-fun call!569986 () Bool)

(assert (=> b!6553167 (= e!3967458 call!569986)))

(declare-fun e!3967462 () Bool)

(assert (=> b!6553168 (= e!3967462 call!569986)))

(declare-fun b!6553169 () Bool)

(declare-fun e!3967457 () Bool)

(assert (=> b!6553169 (= e!3967457 (= s!2326 (Cons!65458 (c!1203556 lt!2402885) Nil!65458)))))

(declare-fun b!6553170 () Bool)

(declare-fun e!3967463 () Bool)

(declare-fun e!3967459 () Bool)

(assert (=> b!6553170 (= e!3967463 e!3967459)))

(declare-fun res!2688583 () Bool)

(assert (=> b!6553170 (= res!2688583 (not ((_ is EmptyLang!16427) lt!2402885)))))

(assert (=> b!6553170 (=> (not res!2688583) (not e!3967459))))

(declare-fun b!6553171 () Bool)

(declare-fun res!2688582 () Bool)

(assert (=> b!6553171 (=> res!2688582 e!3967458)))

(assert (=> b!6553171 (= res!2688582 call!569987)))

(assert (=> b!6553171 (= e!3967462 e!3967458)))

(declare-fun b!6553172 () Bool)

(assert (=> b!6553172 (= e!3967463 call!569987)))

(declare-fun d!2056571 () Bool)

(declare-fun c!1203853 () Bool)

(assert (=> d!2056571 (= c!1203853 ((_ is EmptyExpr!16427) lt!2402885))))

(assert (=> d!2056571 (= (matchRSpec!3528 lt!2402885 s!2326) e!3967463)))

(declare-fun b!6553173 () Bool)

(declare-fun c!1203850 () Bool)

(assert (=> b!6553173 (= c!1203850 ((_ is Union!16427) lt!2402885))))

(declare-fun e!3967460 () Bool)

(assert (=> b!6553173 (= e!3967457 e!3967460)))

(declare-fun b!6553174 () Bool)

(declare-fun c!1203852 () Bool)

(assert (=> b!6553174 (= c!1203852 ((_ is ElementMatch!16427) lt!2402885))))

(assert (=> b!6553174 (= e!3967459 e!3967457)))

(declare-fun b!6553175 () Bool)

(assert (=> b!6553175 (= e!3967460 e!3967462)))

(declare-fun c!1203851 () Bool)

(assert (=> b!6553175 (= c!1203851 ((_ is Star!16427) lt!2402885))))

(declare-fun b!6553176 () Bool)

(declare-fun e!3967461 () Bool)

(assert (=> b!6553176 (= e!3967460 e!3967461)))

(declare-fun res!2688581 () Bool)

(assert (=> b!6553176 (= res!2688581 (matchRSpec!3528 (regOne!33367 lt!2402885) s!2326))))

(assert (=> b!6553176 (=> res!2688581 e!3967461)))

(declare-fun bm!569982 () Bool)

(assert (=> bm!569982 (= call!569986 (Exists!3497 (ite c!1203851 lambda!364091 lambda!364092)))))

(declare-fun b!6553177 () Bool)

(assert (=> b!6553177 (= e!3967461 (matchRSpec!3528 (regTwo!33367 lt!2402885) s!2326))))

(assert (= (and d!2056571 c!1203853) b!6553172))

(assert (= (and d!2056571 (not c!1203853)) b!6553170))

(assert (= (and b!6553170 res!2688583) b!6553174))

(assert (= (and b!6553174 c!1203852) b!6553169))

(assert (= (and b!6553174 (not c!1203852)) b!6553173))

(assert (= (and b!6553173 c!1203850) b!6553176))

(assert (= (and b!6553173 (not c!1203850)) b!6553175))

(assert (= (and b!6553176 (not res!2688581)) b!6553177))

(assert (= (and b!6553175 c!1203851) b!6553171))

(assert (= (and b!6553175 (not c!1203851)) b!6553168))

(assert (= (and b!6553171 (not res!2688582)) b!6553167))

(assert (= (or b!6553167 b!6553168) bm!569982))

(assert (= (or b!6553172 b!6553171) bm!569981))

(assert (=> bm!569981 m!7335004))

(declare-fun m!7335556 () Bool)

(assert (=> b!6553176 m!7335556))

(declare-fun m!7335558 () Bool)

(assert (=> bm!569982 m!7335558))

(declare-fun m!7335560 () Bool)

(assert (=> b!6553177 m!7335560))

(assert (=> b!6552080 d!2056571))

(declare-fun b!6553178 () Bool)

(declare-fun res!2688585 () Bool)

(declare-fun e!3967465 () Bool)

(assert (=> b!6553178 (=> res!2688585 e!3967465)))

(assert (=> b!6553178 (= res!2688585 (not (isEmpty!37690 (tail!12389 s!2326))))))

(declare-fun b!6553179 () Bool)

(declare-fun res!2688590 () Bool)

(declare-fun e!3967469 () Bool)

(assert (=> b!6553179 (=> res!2688590 e!3967469)))

(declare-fun e!3967470 () Bool)

(assert (=> b!6553179 (= res!2688590 e!3967470)))

(declare-fun res!2688584 () Bool)

(assert (=> b!6553179 (=> (not res!2688584) (not e!3967470))))

(declare-fun lt!2403134 () Bool)

(assert (=> b!6553179 (= res!2688584 lt!2403134)))

(declare-fun b!6553180 () Bool)

(declare-fun res!2688589 () Bool)

(assert (=> b!6553180 (=> (not res!2688589) (not e!3967470))))

(assert (=> b!6553180 (= res!2688589 (isEmpty!37690 (tail!12389 s!2326)))))

(declare-fun b!6553181 () Bool)

(declare-fun e!3967468 () Bool)

(assert (=> b!6553181 (= e!3967468 (not lt!2403134))))

(declare-fun b!6553182 () Bool)

(declare-fun e!3967466 () Bool)

(assert (=> b!6553182 (= e!3967466 (matchR!8610 (derivativeStep!5111 lt!2402885 (head!13304 s!2326)) (tail!12389 s!2326)))))

(declare-fun b!6553183 () Bool)

(declare-fun e!3967464 () Bool)

(assert (=> b!6553183 (= e!3967464 e!3967468)))

(declare-fun c!1203854 () Bool)

(assert (=> b!6553183 (= c!1203854 ((_ is EmptyLang!16427) lt!2402885))))

(declare-fun b!6553184 () Bool)

(declare-fun res!2688588 () Bool)

(assert (=> b!6553184 (=> (not res!2688588) (not e!3967470))))

(declare-fun call!569988 () Bool)

(assert (=> b!6553184 (= res!2688588 (not call!569988))))

(declare-fun b!6553185 () Bool)

(declare-fun res!2688591 () Bool)

(assert (=> b!6553185 (=> res!2688591 e!3967469)))

(assert (=> b!6553185 (= res!2688591 (not ((_ is ElementMatch!16427) lt!2402885)))))

(assert (=> b!6553185 (= e!3967468 e!3967469)))

(declare-fun b!6553186 () Bool)

(assert (=> b!6553186 (= e!3967464 (= lt!2403134 call!569988))))

(declare-fun d!2056573 () Bool)

(assert (=> d!2056573 e!3967464))

(declare-fun c!1203856 () Bool)

(assert (=> d!2056573 (= c!1203856 ((_ is EmptyExpr!16427) lt!2402885))))

(assert (=> d!2056573 (= lt!2403134 e!3967466)))

(declare-fun c!1203855 () Bool)

(assert (=> d!2056573 (= c!1203855 (isEmpty!37690 s!2326))))

(assert (=> d!2056573 (validRegex!8163 lt!2402885)))

(assert (=> d!2056573 (= (matchR!8610 lt!2402885 s!2326) lt!2403134)))

(declare-fun bm!569983 () Bool)

(assert (=> bm!569983 (= call!569988 (isEmpty!37690 s!2326))))

(declare-fun b!6553187 () Bool)

(assert (=> b!6553187 (= e!3967470 (= (head!13304 s!2326) (c!1203556 lt!2402885)))))

(declare-fun b!6553188 () Bool)

(declare-fun e!3967467 () Bool)

(assert (=> b!6553188 (= e!3967469 e!3967467)))

(declare-fun res!2688587 () Bool)

(assert (=> b!6553188 (=> (not res!2688587) (not e!3967467))))

(assert (=> b!6553188 (= res!2688587 (not lt!2403134))))

(declare-fun b!6553189 () Bool)

(assert (=> b!6553189 (= e!3967466 (nullable!6420 lt!2402885))))

(declare-fun b!6553190 () Bool)

(assert (=> b!6553190 (= e!3967467 e!3967465)))

(declare-fun res!2688586 () Bool)

(assert (=> b!6553190 (=> res!2688586 e!3967465)))

(assert (=> b!6553190 (= res!2688586 call!569988)))

(declare-fun b!6553191 () Bool)

(assert (=> b!6553191 (= e!3967465 (not (= (head!13304 s!2326) (c!1203556 lt!2402885))))))

(assert (= (and d!2056573 c!1203855) b!6553189))

(assert (= (and d!2056573 (not c!1203855)) b!6553182))

(assert (= (and d!2056573 c!1203856) b!6553186))

(assert (= (and d!2056573 (not c!1203856)) b!6553183))

(assert (= (and b!6553183 c!1203854) b!6553181))

(assert (= (and b!6553183 (not c!1203854)) b!6553185))

(assert (= (and b!6553185 (not res!2688591)) b!6553179))

(assert (= (and b!6553179 res!2688584) b!6553184))

(assert (= (and b!6553184 res!2688588) b!6553180))

(assert (= (and b!6553180 res!2688589) b!6553187))

(assert (= (and b!6553179 (not res!2688590)) b!6553188))

(assert (= (and b!6553188 res!2688587) b!6553190))

(assert (= (and b!6553190 (not res!2688586)) b!6553178))

(assert (= (and b!6553178 (not res!2688585)) b!6553191))

(assert (= (or b!6553186 b!6553184 b!6553190) bm!569983))

(assert (=> b!6553178 m!7335032))

(assert (=> b!6553178 m!7335032))

(assert (=> b!6553178 m!7335036))

(assert (=> d!2056573 m!7335004))

(assert (=> d!2056573 m!7335332))

(assert (=> bm!569983 m!7335004))

(assert (=> b!6553187 m!7335040))

(assert (=> b!6553189 m!7335334))

(assert (=> b!6553180 m!7335032))

(assert (=> b!6553180 m!7335032))

(assert (=> b!6553180 m!7335036))

(assert (=> b!6553191 m!7335040))

(assert (=> b!6553182 m!7335040))

(assert (=> b!6553182 m!7335040))

(declare-fun m!7335562 () Bool)

(assert (=> b!6553182 m!7335562))

(assert (=> b!6553182 m!7335032))

(assert (=> b!6553182 m!7335562))

(assert (=> b!6553182 m!7335032))

(declare-fun m!7335564 () Bool)

(assert (=> b!6553182 m!7335564))

(assert (=> b!6552080 d!2056573))

(declare-fun d!2056575 () Bool)

(assert (=> d!2056575 (= (matchR!8610 lt!2402885 s!2326) (matchRSpec!3528 lt!2402885 s!2326))))

(declare-fun lt!2403135 () Unit!159043)

(assert (=> d!2056575 (= lt!2403135 (choose!48779 lt!2402885 s!2326))))

(assert (=> d!2056575 (validRegex!8163 lt!2402885)))

(assert (=> d!2056575 (= (mainMatchTheorem!3528 lt!2402885 s!2326) lt!2403135)))

(declare-fun bs!1672761 () Bool)

(assert (= bs!1672761 d!2056575))

(assert (=> bs!1672761 m!7334474))

(assert (=> bs!1672761 m!7334472))

(declare-fun m!7335566 () Bool)

(assert (=> bs!1672761 m!7335566))

(assert (=> bs!1672761 m!7335332))

(assert (=> b!6552080 d!2056575))

(declare-fun d!2056577 () Bool)

(declare-fun lt!2403136 () Regex!16427)

(assert (=> d!2056577 (validRegex!8163 lt!2403136)))

(assert (=> d!2056577 (= lt!2403136 (generalisedUnion!2271 (unfocusZipperList!1848 (Cons!65457 lt!2402912 Nil!65457))))))

(assert (=> d!2056577 (= (unfocusZipper!2169 (Cons!65457 lt!2402912 Nil!65457)) lt!2403136)))

(declare-fun bs!1672762 () Bool)

(assert (= bs!1672762 d!2056577))

(declare-fun m!7335568 () Bool)

(assert (=> bs!1672762 m!7335568))

(declare-fun m!7335570 () Bool)

(assert (=> bs!1672762 m!7335570))

(assert (=> bs!1672762 m!7335570))

(declare-fun m!7335572 () Bool)

(assert (=> bs!1672762 m!7335572))

(assert (=> b!6552100 d!2056577))

(declare-fun d!2056579 () Bool)

(assert (=> d!2056579 (= (flatMap!1932 lt!2402894 lambda!363999) (choose!48774 lt!2402894 lambda!363999))))

(declare-fun bs!1672763 () Bool)

(assert (= bs!1672763 d!2056579))

(declare-fun m!7335574 () Bool)

(assert (=> bs!1672763 m!7335574))

(assert (=> b!6552059 d!2056579))

(declare-fun bm!569984 () Bool)

(declare-fun call!569989 () (InoxSet Context!11622))

(assert (=> bm!569984 (= call!569989 (derivationStepZipperDown!1675 (h!71904 (exprs!6311 lt!2402912)) (Context!11623 (t!379222 (exprs!6311 lt!2402912))) (h!71906 s!2326)))))

(declare-fun b!6553192 () Bool)

(declare-fun e!3967471 () (InoxSet Context!11622))

(assert (=> b!6553192 (= e!3967471 ((as const (Array Context!11622 Bool)) false))))

(declare-fun d!2056581 () Bool)

(declare-fun c!1203858 () Bool)

(declare-fun e!3967472 () Bool)

(assert (=> d!2056581 (= c!1203858 e!3967472)))

(declare-fun res!2688592 () Bool)

(assert (=> d!2056581 (=> (not res!2688592) (not e!3967472))))

(assert (=> d!2056581 (= res!2688592 ((_ is Cons!65456) (exprs!6311 lt!2402912)))))

(declare-fun e!3967473 () (InoxSet Context!11622))

(assert (=> d!2056581 (= (derivationStepZipperUp!1601 lt!2402912 (h!71906 s!2326)) e!3967473)))

(declare-fun b!6553193 () Bool)

(assert (=> b!6553193 (= e!3967473 e!3967471)))

(declare-fun c!1203857 () Bool)

(assert (=> b!6553193 (= c!1203857 ((_ is Cons!65456) (exprs!6311 lt!2402912)))))

(declare-fun b!6553194 () Bool)

(assert (=> b!6553194 (= e!3967472 (nullable!6420 (h!71904 (exprs!6311 lt!2402912))))))

(declare-fun b!6553195 () Bool)

(assert (=> b!6553195 (= e!3967471 call!569989)))

(declare-fun b!6553196 () Bool)

(assert (=> b!6553196 (= e!3967473 ((_ map or) call!569989 (derivationStepZipperUp!1601 (Context!11623 (t!379222 (exprs!6311 lt!2402912))) (h!71906 s!2326))))))

(assert (= (and d!2056581 res!2688592) b!6553194))

(assert (= (and d!2056581 c!1203858) b!6553196))

(assert (= (and d!2056581 (not c!1203858)) b!6553193))

(assert (= (and b!6553193 c!1203857) b!6553195))

(assert (= (and b!6553193 (not c!1203857)) b!6553192))

(assert (= (or b!6553196 b!6553195) bm!569984))

(declare-fun m!7335576 () Bool)

(assert (=> bm!569984 m!7335576))

(declare-fun m!7335578 () Bool)

(assert (=> b!6553194 m!7335578))

(declare-fun m!7335580 () Bool)

(assert (=> b!6553196 m!7335580))

(assert (=> b!6552059 d!2056581))

(declare-fun d!2056583 () Bool)

(assert (=> d!2056583 (= (flatMap!1932 lt!2402894 lambda!363999) (dynLambda!26025 lambda!363999 lt!2402912))))

(declare-fun lt!2403137 () Unit!159043)

(assert (=> d!2056583 (= lt!2403137 (choose!48769 lt!2402894 lt!2402912 lambda!363999))))

(assert (=> d!2056583 (= lt!2402894 (store ((as const (Array Context!11622 Bool)) false) lt!2402912 true))))

(assert (=> d!2056583 (= (lemmaFlatMapOnSingletonSet!1458 lt!2402894 lt!2402912 lambda!363999) lt!2403137)))

(declare-fun b_lambda!247989 () Bool)

(assert (=> (not b_lambda!247989) (not d!2056583)))

(declare-fun bs!1672764 () Bool)

(assert (= bs!1672764 d!2056583))

(assert (=> bs!1672764 m!7334516))

(declare-fun m!7335582 () Bool)

(assert (=> bs!1672764 m!7335582))

(declare-fun m!7335584 () Bool)

(assert (=> bs!1672764 m!7335584))

(assert (=> bs!1672764 m!7334522))

(assert (=> b!6552059 d!2056583))

(declare-fun bs!1672765 () Bool)

(declare-fun d!2056585 () Bool)

(assert (= bs!1672765 (and d!2056585 b!6552102)))

(declare-fun lambda!364095 () Int)

(assert (=> bs!1672765 (= lambda!364095 lambda!363999)))

(assert (=> d!2056585 true))

(assert (=> d!2056585 (= (derivationStepZipper!2393 lt!2402894 (h!71906 s!2326)) (flatMap!1932 lt!2402894 lambda!364095))))

(declare-fun bs!1672766 () Bool)

(assert (= bs!1672766 d!2056585))

(declare-fun m!7335586 () Bool)

(assert (=> bs!1672766 m!7335586))

(assert (=> b!6552059 d!2056585))

(declare-fun b!6553210 () Bool)

(declare-fun e!3967476 () Bool)

(declare-fun tp!1811663 () Bool)

(declare-fun tp!1811664 () Bool)

(assert (=> b!6553210 (= e!3967476 (and tp!1811663 tp!1811664))))

(assert (=> b!6552096 (= tp!1811588 e!3967476)))

(declare-fun b!6553211 () Bool)

(declare-fun tp!1811660 () Bool)

(assert (=> b!6553211 (= e!3967476 tp!1811660)))

(declare-fun b!6553212 () Bool)

(declare-fun tp!1811661 () Bool)

(declare-fun tp!1811662 () Bool)

(assert (=> b!6553212 (= e!3967476 (and tp!1811661 tp!1811662))))

(declare-fun b!6553209 () Bool)

(assert (=> b!6553209 (= e!3967476 tp_is_empty!42107)))

(assert (= (and b!6552096 ((_ is ElementMatch!16427) (reg!16756 r!7292))) b!6553209))

(assert (= (and b!6552096 ((_ is Concat!25272) (reg!16756 r!7292))) b!6553210))

(assert (= (and b!6552096 ((_ is Star!16427) (reg!16756 r!7292))) b!6553211))

(assert (= (and b!6552096 ((_ is Union!16427) (reg!16756 r!7292))) b!6553212))

(declare-fun b!6553217 () Bool)

(declare-fun e!3967479 () Bool)

(declare-fun tp!1811669 () Bool)

(declare-fun tp!1811670 () Bool)

(assert (=> b!6553217 (= e!3967479 (and tp!1811669 tp!1811670))))

(assert (=> b!6552086 (= tp!1811591 e!3967479)))

(assert (= (and b!6552086 ((_ is Cons!65456) (exprs!6311 setElem!44718))) b!6553217))

(declare-fun b!6553225 () Bool)

(declare-fun e!3967485 () Bool)

(declare-fun tp!1811675 () Bool)

(assert (=> b!6553225 (= e!3967485 tp!1811675)))

(declare-fun e!3967484 () Bool)

(declare-fun tp!1811676 () Bool)

(declare-fun b!6553224 () Bool)

(assert (=> b!6553224 (= e!3967484 (and (inv!84314 (h!71905 (t!379223 zl!343))) e!3967485 tp!1811676))))

(assert (=> b!6552077 (= tp!1811589 e!3967484)))

(assert (= b!6553224 b!6553225))

(assert (= (and b!6552077 ((_ is Cons!65457) (t!379223 zl!343))) b!6553224))

(declare-fun m!7335588 () Bool)

(assert (=> b!6553224 m!7335588))

(declare-fun b!6553230 () Bool)

(declare-fun e!3967488 () Bool)

(declare-fun tp!1811679 () Bool)

(assert (=> b!6553230 (= e!3967488 (and tp_is_empty!42107 tp!1811679))))

(assert (=> b!6552087 (= tp!1811583 e!3967488)))

(assert (= (and b!6552087 ((_ is Cons!65458) (t!379224 s!2326))) b!6553230))

(declare-fun b!6553232 () Bool)

(declare-fun e!3967489 () Bool)

(declare-fun tp!1811683 () Bool)

(declare-fun tp!1811684 () Bool)

(assert (=> b!6553232 (= e!3967489 (and tp!1811683 tp!1811684))))

(assert (=> b!6552099 (= tp!1811584 e!3967489)))

(declare-fun b!6553233 () Bool)

(declare-fun tp!1811680 () Bool)

(assert (=> b!6553233 (= e!3967489 tp!1811680)))

(declare-fun b!6553234 () Bool)

(declare-fun tp!1811681 () Bool)

(declare-fun tp!1811682 () Bool)

(assert (=> b!6553234 (= e!3967489 (and tp!1811681 tp!1811682))))

(declare-fun b!6553231 () Bool)

(assert (=> b!6553231 (= e!3967489 tp_is_empty!42107)))

(assert (= (and b!6552099 ((_ is ElementMatch!16427) (regOne!33366 r!7292))) b!6553231))

(assert (= (and b!6552099 ((_ is Concat!25272) (regOne!33366 r!7292))) b!6553232))

(assert (= (and b!6552099 ((_ is Star!16427) (regOne!33366 r!7292))) b!6553233))

(assert (= (and b!6552099 ((_ is Union!16427) (regOne!33366 r!7292))) b!6553234))

(declare-fun b!6553236 () Bool)

(declare-fun e!3967490 () Bool)

(declare-fun tp!1811688 () Bool)

(declare-fun tp!1811689 () Bool)

(assert (=> b!6553236 (= e!3967490 (and tp!1811688 tp!1811689))))

(assert (=> b!6552099 (= tp!1811587 e!3967490)))

(declare-fun b!6553237 () Bool)

(declare-fun tp!1811685 () Bool)

(assert (=> b!6553237 (= e!3967490 tp!1811685)))

(declare-fun b!6553238 () Bool)

(declare-fun tp!1811686 () Bool)

(declare-fun tp!1811687 () Bool)

(assert (=> b!6553238 (= e!3967490 (and tp!1811686 tp!1811687))))

(declare-fun b!6553235 () Bool)

(assert (=> b!6553235 (= e!3967490 tp_is_empty!42107)))

(assert (= (and b!6552099 ((_ is ElementMatch!16427) (regTwo!33366 r!7292))) b!6553235))

(assert (= (and b!6552099 ((_ is Concat!25272) (regTwo!33366 r!7292))) b!6553236))

(assert (= (and b!6552099 ((_ is Star!16427) (regTwo!33366 r!7292))) b!6553237))

(assert (= (and b!6552099 ((_ is Union!16427) (regTwo!33366 r!7292))) b!6553238))

(declare-fun condSetEmpty!44724 () Bool)

(assert (=> setNonEmpty!44718 (= condSetEmpty!44724 (= setRest!44718 ((as const (Array Context!11622 Bool)) false)))))

(declare-fun setRes!44724 () Bool)

(assert (=> setNonEmpty!44718 (= tp!1811586 setRes!44724)))

(declare-fun setIsEmpty!44724 () Bool)

(assert (=> setIsEmpty!44724 setRes!44724))

(declare-fun e!3967493 () Bool)

(declare-fun tp!1811694 () Bool)

(declare-fun setNonEmpty!44724 () Bool)

(declare-fun setElem!44724 () Context!11622)

(assert (=> setNonEmpty!44724 (= setRes!44724 (and tp!1811694 (inv!84314 setElem!44724) e!3967493))))

(declare-fun setRest!44724 () (InoxSet Context!11622))

(assert (=> setNonEmpty!44724 (= setRest!44718 ((_ map or) (store ((as const (Array Context!11622 Bool)) false) setElem!44724 true) setRest!44724))))

(declare-fun b!6553243 () Bool)

(declare-fun tp!1811695 () Bool)

(assert (=> b!6553243 (= e!3967493 tp!1811695)))

(assert (= (and setNonEmpty!44718 condSetEmpty!44724) setIsEmpty!44724))

(assert (= (and setNonEmpty!44718 (not condSetEmpty!44724)) setNonEmpty!44724))

(assert (= setNonEmpty!44724 b!6553243))

(declare-fun m!7335590 () Bool)

(assert (=> setNonEmpty!44724 m!7335590))

(declare-fun b!6553245 () Bool)

(declare-fun e!3967494 () Bool)

(declare-fun tp!1811699 () Bool)

(declare-fun tp!1811700 () Bool)

(assert (=> b!6553245 (= e!3967494 (and tp!1811699 tp!1811700))))

(assert (=> b!6552085 (= tp!1811590 e!3967494)))

(declare-fun b!6553246 () Bool)

(declare-fun tp!1811696 () Bool)

(assert (=> b!6553246 (= e!3967494 tp!1811696)))

(declare-fun b!6553247 () Bool)

(declare-fun tp!1811697 () Bool)

(declare-fun tp!1811698 () Bool)

(assert (=> b!6553247 (= e!3967494 (and tp!1811697 tp!1811698))))

(declare-fun b!6553244 () Bool)

(assert (=> b!6553244 (= e!3967494 tp_is_empty!42107)))

(assert (= (and b!6552085 ((_ is ElementMatch!16427) (regOne!33367 r!7292))) b!6553244))

(assert (= (and b!6552085 ((_ is Concat!25272) (regOne!33367 r!7292))) b!6553245))

(assert (= (and b!6552085 ((_ is Star!16427) (regOne!33367 r!7292))) b!6553246))

(assert (= (and b!6552085 ((_ is Union!16427) (regOne!33367 r!7292))) b!6553247))

(declare-fun b!6553249 () Bool)

(declare-fun e!3967495 () Bool)

(declare-fun tp!1811704 () Bool)

(declare-fun tp!1811705 () Bool)

(assert (=> b!6553249 (= e!3967495 (and tp!1811704 tp!1811705))))

(assert (=> b!6552085 (= tp!1811585 e!3967495)))

(declare-fun b!6553250 () Bool)

(declare-fun tp!1811701 () Bool)

(assert (=> b!6553250 (= e!3967495 tp!1811701)))

(declare-fun b!6553251 () Bool)

(declare-fun tp!1811702 () Bool)

(declare-fun tp!1811703 () Bool)

(assert (=> b!6553251 (= e!3967495 (and tp!1811702 tp!1811703))))

(declare-fun b!6553248 () Bool)

(assert (=> b!6553248 (= e!3967495 tp_is_empty!42107)))

(assert (= (and b!6552085 ((_ is ElementMatch!16427) (regTwo!33367 r!7292))) b!6553248))

(assert (= (and b!6552085 ((_ is Concat!25272) (regTwo!33367 r!7292))) b!6553249))

(assert (= (and b!6552085 ((_ is Star!16427) (regTwo!33367 r!7292))) b!6553250))

(assert (= (and b!6552085 ((_ is Union!16427) (regTwo!33367 r!7292))) b!6553251))

(declare-fun b!6553252 () Bool)

(declare-fun e!3967496 () Bool)

(declare-fun tp!1811706 () Bool)

(declare-fun tp!1811707 () Bool)

(assert (=> b!6553252 (= e!3967496 (and tp!1811706 tp!1811707))))

(assert (=> b!6552079 (= tp!1811582 e!3967496)))

(assert (= (and b!6552079 ((_ is Cons!65456) (exprs!6311 (h!71905 zl!343)))) b!6553252))

(declare-fun b_lambda!247991 () Bool)

(assert (= b_lambda!247967 (or b!6552065 b_lambda!247991)))

(declare-fun bs!1672767 () Bool)

(declare-fun d!2056587 () Bool)

(assert (= bs!1672767 (and d!2056587 b!6552065)))

(declare-fun lt!2403138 () Unit!159043)

(assert (=> bs!1672767 (= lt!2403138 (lemmaConcatPreservesForall!400 (exprs!6311 lt!2402875) lt!2402888 lambda!364001))))

(assert (=> bs!1672767 (= (dynLambda!26026 lambda!364000 lt!2402875) (Context!11623 (++!14556 (exprs!6311 lt!2402875) lt!2402888)))))

(declare-fun m!7335592 () Bool)

(assert (=> bs!1672767 m!7335592))

(declare-fun m!7335594 () Bool)

(assert (=> bs!1672767 m!7335594))

(assert (=> d!2056371 d!2056587))

(declare-fun b_lambda!247993 () Bool)

(assert (= b_lambda!247971 (or b!6552102 b_lambda!247993)))

(declare-fun bs!1672768 () Bool)

(declare-fun d!2056589 () Bool)

(assert (= bs!1672768 (and d!2056589 b!6552102)))

(assert (=> bs!1672768 (= (dynLambda!26025 lambda!363999 lt!2402875) (derivationStepZipperUp!1601 lt!2402875 (h!71906 s!2326)))))

(assert (=> bs!1672768 m!7334454))

(assert (=> d!2056429 d!2056589))

(declare-fun b_lambda!247995 () Bool)

(assert (= b_lambda!247963 (or b!6552102 b_lambda!247995)))

(declare-fun bs!1672769 () Bool)

(declare-fun d!2056591 () Bool)

(assert (= bs!1672769 (and d!2056591 b!6552102)))

(assert (=> bs!1672769 (= (dynLambda!26025 lambda!363999 (h!71905 zl!343)) (derivationStepZipperUp!1601 (h!71905 zl!343) (h!71906 s!2326)))))

(assert (=> bs!1672769 m!7334504))

(assert (=> d!2056309 d!2056591))

(declare-fun b_lambda!247997 () Bool)

(assert (= b_lambda!247969 (or b!6552102 b_lambda!247997)))

(declare-fun bs!1672770 () Bool)

(declare-fun d!2056593 () Bool)

(assert (= bs!1672770 (and d!2056593 b!6552102)))

(assert (=> bs!1672770 (= (dynLambda!26025 lambda!363999 lt!2402901) (derivationStepZipperUp!1601 lt!2402901 (h!71906 s!2326)))))

(assert (=> bs!1672770 m!7334442))

(assert (=> d!2056421 d!2056593))

(declare-fun b_lambda!247999 () Bool)

(assert (= b_lambda!247989 (or b!6552102 b_lambda!247999)))

(declare-fun bs!1672771 () Bool)

(declare-fun d!2056595 () Bool)

(assert (= bs!1672771 (and d!2056595 b!6552102)))

(assert (=> bs!1672771 (= (dynLambda!26025 lambda!363999 lt!2402912) (derivationStepZipperUp!1601 lt!2402912 (h!71906 s!2326)))))

(assert (=> bs!1672771 m!7334520))

(assert (=> d!2056583 d!2056595))

(check-sat (not b!6553128) (not d!2056401) (not d!2056577) (not b!6552654) (not d!2056301) (not d!2056575) (not b!6553224) (not b!6553189) (not d!2056559) (not d!2056569) (not bm!569984) (not d!2056561) (not b!6552521) (not b!6553243) (not d!2056275) (not b!6552723) (not b!6552789) (not b!6553126) (not b!6552195) (not bm!569983) (not b!6553245) (not b!6552919) (not b!6552936) (not bm!569982) (not bm!569936) (not b!6552964) (not b!6553194) (not d!2056547) (not b!6553159) (not d!2056465) (not b!6553069) (not d!2056419) (not b!6552803) (not b!6553176) (not b!6553098) (not b!6552802) (not d!2056341) (not b!6552719) (not d!2056337) (not b!6552907) (not b!6552927) (not bm!569967) (not b!6553249) (not d!2056527) (not b!6552800) (not d!2056433) (not bs!1672767) (not b!6553234) (not b!6553225) (not b!6552978) (not d!2056371) (not b!6553238) (not d!2056463) (not b!6553155) (not b!6552193) (not b!6552898) (not d!2056365) (not b!6552520) (not b!6553217) (not b!6553210) (not d!2056545) (not b!6553068) (not b!6553182) (not b!6553211) (not d!2056583) (not bm!569929) (not d!2056495) (not bm!569968) (not b!6553097) (not b!6553125) (not b!6553165) (not b!6552806) (not d!2056309) (not d!2056553) (not d!2056491) (not d!2056357) (not d!2056269) (not d!2056355) (not b!6552653) (not b!6552858) (not d!2056529) (not b!6553154) (not b!6552577) (not bm!569934) (not b!6552783) (not b!6552914) (not b!6553099) (not b!6552923) (not b!6552714) (not b!6553250) (not d!2056457) (not d!2056477) (not d!2056579) (not d!2056423) (not b!6553153) (not b_lambda!247999) (not d!2056441) (not bm!569966) (not b!6552351) (not b!6552785) (not bs!1672770) (not b!6553095) (not b!6552849) (not b!6553251) (not b!6553236) (not b!6553247) (not d!2056293) (not bm!569973) (not b!6552968) (not b!6552931) (not bm!569917) (not bm!569960) (not b!6552957) (not d!2056273) (not bm!569965) (not b!6552805) (not b!6552779) (not b!6553067) (not d!2056421) (not d!2056285) (not d!2056351) (not b!6552776) (not b!6552192) (not b!6553232) (not b!6553212) (not d!2056563) (not b!6553178) (not b!6552929) (not d!2056439) (not d!2056483) (not bm!569933) (not b!6553196) (not b!6552844) (not b!6552955) (not b!6552398) (not b!6553160) (not b!6552770) (not bm!569949) (not b!6552710) (not d!2056485) (not d!2056541) (not bm!569961) (not b!6553071) (not b!6552405) (not b!6552712) (not b!6553129) (not d!2056501) (not b!6552190) (not d!2056585) (not bs!1672769) (not d!2056505) (not d!2056307) (not d!2056555) (not b!6552798) (not b_lambda!247991) (not bm!569978) (not b!6552893) (not d!2056557) (not b!6552900) (not b!6552497) (not b!6552197) (not d!2056393) (not d!2056455) (not d!2056343) (not bm!569896) (not d!2056565) (not b!6552921) (not b!6553230) (not b!6552340) (not d!2056297) (not b!6552854) (not b_lambda!247995) (not b_lambda!247993) (not b!6553072) (not d!2056461) (not b!6553130) (not b!6553177) (not b!6553100) (not b!6552517) (not bm!569975) (not d!2056549) (not b!6552774) (not setNonEmpty!44724) (not b!6552339) (not b!6552938) (not b!6552910) (not b!6552788) (not b!6553085) (not b!6552403) (not d!2056375) (not b!6552786) (not b!6552787) (not b!6552807) (not b!6552782) (not b!6552902) (not d!2056435) (not d!2056241) (not b!6552966) (not b!6552959) (not b!6552781) (not d!2056429) (not b!6552891) (not bm!569963) (not bm!569953) (not b!6553124) (not b!6552334) (not b!6552799) (not d!2056573) (not b!6552352) (not b!6552847) (not b!6552534) (not bm!569964) (not b!6552856) (not b!6553187) (not b!6553180) (not b!6552721) (not b!6552784) (not b!6553048) (not d!2056467) (not b!6552889) (not b!6552912) (not bm!569920) (not b!6552979) (not b!6552576) (not bm!569950) (not d!2056425) (not d!2056471) (not b!6552196) (not b!6553157) (not bm!569895) (not b!6553252) (not d!2056475) (not bm!569981) (not b!6553237) (not b!6553074) tp_is_empty!42107 (not d!2056437) (not b!6553246) (not bs!1672768) (not b!6553152) (not b!6553086) (not b!6552940) (not bm!569918) (not b!6552400) (not b!6553233) (not b_lambda!247997) (not b!6552519) (not b!6553127) (not bs!1672771) (not b!6553191) (not d!2056443) (not bm!569974) (not bm!569979))
(check-sat)
