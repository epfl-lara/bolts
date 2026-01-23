; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!643458 () Bool)

(assert start!643458)

(declare-fun b!6566938 () Bool)

(assert (=> b!6566938 true))

(assert (=> b!6566938 true))

(declare-fun lambda!365579 () Int)

(declare-fun lambda!365578 () Int)

(assert (=> b!6566938 (not (= lambda!365579 lambda!365578))))

(assert (=> b!6566938 true))

(assert (=> b!6566938 true))

(declare-fun b!6566939 () Bool)

(assert (=> b!6566939 true))

(declare-fun b!6566961 () Bool)

(assert (=> b!6566961 true))

(declare-fun bs!1677353 () Bool)

(declare-fun b!6566944 () Bool)

(assert (= bs!1677353 (and b!6566944 b!6566938)))

(declare-datatypes ((C!33156 0))(
  ( (C!33157 (val!26280 Int)) )
))
(declare-datatypes ((Regex!16443 0))(
  ( (ElementMatch!16443 (c!1206990 C!33156)) (Concat!25288 (regOne!33398 Regex!16443) (regTwo!33398 Regex!16443)) (EmptyExpr!16443) (Star!16443 (reg!16772 Regex!16443)) (EmptyLang!16443) (Union!16443 (regOne!33399 Regex!16443) (regTwo!33399 Regex!16443)) )
))
(declare-fun r!7292 () Regex!16443)

(declare-fun lt!2407774 () Regex!16443)

(declare-fun lambda!365583 () Int)

(assert (=> bs!1677353 (= (= lt!2407774 (regOne!33398 r!7292)) (= lambda!365583 lambda!365578))))

(assert (=> bs!1677353 (not (= lambda!365583 lambda!365579))))

(assert (=> b!6566944 true))

(assert (=> b!6566944 true))

(assert (=> b!6566944 true))

(declare-fun lambda!365584 () Int)

(assert (=> bs!1677353 (not (= lambda!365584 lambda!365578))))

(assert (=> bs!1677353 (= (= lt!2407774 (regOne!33398 r!7292)) (= lambda!365584 lambda!365579))))

(assert (=> b!6566944 (not (= lambda!365584 lambda!365583))))

(assert (=> b!6566944 true))

(assert (=> b!6566944 true))

(assert (=> b!6566944 true))

(declare-fun bs!1677354 () Bool)

(declare-fun b!6566942 () Bool)

(assert (= bs!1677354 (and b!6566942 b!6566938)))

(declare-fun lt!2407775 () Regex!16443)

(declare-datatypes ((List!65628 0))(
  ( (Nil!65504) (Cons!65504 (h!71952 C!33156) (t!379272 List!65628)) )
))
(declare-fun s!2326 () List!65628)

(declare-fun lambda!365585 () Int)

(declare-datatypes ((tuple2!66844 0))(
  ( (tuple2!66845 (_1!36725 List!65628) (_2!36725 List!65628)) )
))
(declare-fun lt!2407811 () tuple2!66844)

(assert (=> bs!1677354 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365585 lambda!365578))))

(assert (=> bs!1677354 (not (= lambda!365585 lambda!365579))))

(declare-fun bs!1677355 () Bool)

(assert (= bs!1677355 (and b!6566942 b!6566944)))

(assert (=> bs!1677355 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365585 lambda!365583))))

(assert (=> bs!1677355 (not (= lambda!365585 lambda!365584))))

(assert (=> b!6566942 true))

(assert (=> b!6566942 true))

(assert (=> b!6566942 true))

(declare-fun lambda!365586 () Int)

(assert (=> bs!1677354 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365586 lambda!365579))))

(assert (=> b!6566942 (not (= lambda!365586 lambda!365585))))

(assert (=> bs!1677355 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365586 lambda!365584))))

(assert (=> bs!1677355 (not (= lambda!365586 lambda!365583))))

(assert (=> bs!1677354 (not (= lambda!365586 lambda!365578))))

(assert (=> b!6566942 true))

(assert (=> b!6566942 true))

(assert (=> b!6566942 true))

(declare-fun lambda!365587 () Int)

(assert (=> bs!1677354 (not (= lambda!365587 lambda!365579))))

(assert (=> b!6566942 (not (= lambda!365587 lambda!365586))))

(assert (=> b!6566942 (not (= lambda!365587 lambda!365585))))

(assert (=> bs!1677355 (not (= lambda!365587 lambda!365584))))

(assert (=> bs!1677355 (not (= lambda!365587 lambda!365583))))

(assert (=> bs!1677354 (not (= lambda!365587 lambda!365578))))

(assert (=> b!6566942 true))

(assert (=> b!6566942 true))

(assert (=> b!6566942 true))

(declare-fun b!6566937 () Bool)

(declare-datatypes ((Unit!159107 0))(
  ( (Unit!159108) )
))
(declare-fun e!3975119 () Unit!159107)

(declare-fun Unit!159109 () Unit!159107)

(assert (=> b!6566937 (= e!3975119 Unit!159109)))

(declare-fun lt!2407829 () Unit!159107)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65629 0))(
  ( (Nil!65505) (Cons!65505 (h!71953 Regex!16443) (t!379273 List!65629)) )
))
(declare-datatypes ((Context!11654 0))(
  ( (Context!11655 (exprs!6327 List!65629)) )
))
(declare-fun lt!2407806 () (InoxSet Context!11654))

(declare-fun lt!2407819 () (InoxSet Context!11654))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1274 ((InoxSet Context!11654) (InoxSet Context!11654) List!65628) Unit!159107)

(assert (=> b!6566937 (= lt!2407829 (lemmaZipperConcatMatchesSameAsBothZippers!1274 lt!2407806 lt!2407819 (t!379272 s!2326)))))

(declare-fun res!2694957 () Bool)

(declare-fun matchZipper!2455 ((InoxSet Context!11654) List!65628) Bool)

(assert (=> b!6566937 (= res!2694957 (matchZipper!2455 lt!2407806 (t!379272 s!2326)))))

(declare-fun e!3975097 () Bool)

(assert (=> b!6566937 (=> res!2694957 e!3975097)))

(assert (=> b!6566937 (= (matchZipper!2455 ((_ map or) lt!2407806 lt!2407819) (t!379272 s!2326)) e!3975097)))

(declare-fun e!3975106 () Bool)

(declare-fun e!3975093 () Bool)

(assert (=> b!6566938 (= e!3975106 e!3975093)))

(declare-fun res!2694966 () Bool)

(assert (=> b!6566938 (=> res!2694966 e!3975093)))

(declare-fun lt!2407799 () Bool)

(declare-fun lt!2407782 () Bool)

(get-info :version)

(assert (=> b!6566938 (= res!2694966 (or (not (= lt!2407782 lt!2407799)) ((_ is Nil!65504) s!2326)))))

(declare-fun Exists!3513 (Int) Bool)

(assert (=> b!6566938 (= (Exists!3513 lambda!365578) (Exists!3513 lambda!365579))))

(declare-fun lt!2407769 () Unit!159107)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2050 (Regex!16443 Regex!16443 List!65628) Unit!159107)

(assert (=> b!6566938 (= lt!2407769 (lemmaExistCutMatchRandMatchRSpecEquivalent!2050 (regOne!33398 r!7292) (regTwo!33398 r!7292) s!2326))))

(assert (=> b!6566938 (= lt!2407799 (Exists!3513 lambda!365578))))

(declare-datatypes ((Option!16334 0))(
  ( (None!16333) (Some!16333 (v!52518 tuple2!66844)) )
))
(declare-fun isDefined!13037 (Option!16334) Bool)

(declare-fun findConcatSeparation!2748 (Regex!16443 Regex!16443 List!65628 List!65628 List!65628) Option!16334)

(assert (=> b!6566938 (= lt!2407799 (isDefined!13037 (findConcatSeparation!2748 (regOne!33398 r!7292) (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326)))))

(declare-fun lt!2407827 () Unit!159107)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2512 (Regex!16443 Regex!16443 List!65628) Unit!159107)

(assert (=> b!6566938 (= lt!2407827 (lemmaFindConcatSeparationEquivalentToExists!2512 (regOne!33398 r!7292) (regTwo!33398 r!7292) s!2326))))

(declare-fun e!3975091 () Bool)

(assert (=> b!6566939 (= e!3975093 e!3975091)))

(declare-fun res!2694958 () Bool)

(assert (=> b!6566939 (=> res!2694958 e!3975091)))

(assert (=> b!6566939 (= res!2694958 (or (and ((_ is ElementMatch!16443) (regOne!33398 r!7292)) (= (c!1206990 (regOne!33398 r!7292)) (h!71952 s!2326))) ((_ is Union!16443) (regOne!33398 r!7292))))))

(declare-fun lt!2407826 () Unit!159107)

(assert (=> b!6566939 (= lt!2407826 e!3975119)))

(declare-fun c!1206989 () Bool)

(declare-fun lt!2407821 () Bool)

(assert (=> b!6566939 (= c!1206989 lt!2407821)))

(declare-datatypes ((List!65630 0))(
  ( (Nil!65506) (Cons!65506 (h!71954 Context!11654) (t!379274 List!65630)) )
))
(declare-fun zl!343 () List!65630)

(declare-fun nullable!6436 (Regex!16443) Bool)

(assert (=> b!6566939 (= lt!2407821 (nullable!6436 (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11654))

(declare-fun lambda!365580 () Int)

(declare-fun flatMap!1948 ((InoxSet Context!11654) Int) (InoxSet Context!11654))

(declare-fun derivationStepZipperUp!1617 (Context!11654 C!33156) (InoxSet Context!11654))

(assert (=> b!6566939 (= (flatMap!1948 z!1189 lambda!365580) (derivationStepZipperUp!1617 (h!71954 zl!343) (h!71952 s!2326)))))

(declare-fun lt!2407773 () Unit!159107)

(declare-fun lemmaFlatMapOnSingletonSet!1474 ((InoxSet Context!11654) Context!11654 Int) Unit!159107)

(assert (=> b!6566939 (= lt!2407773 (lemmaFlatMapOnSingletonSet!1474 z!1189 (h!71954 zl!343) lambda!365580))))

(declare-fun lt!2407830 () Context!11654)

(assert (=> b!6566939 (= lt!2407819 (derivationStepZipperUp!1617 lt!2407830 (h!71952 s!2326)))))

(declare-fun derivationStepZipperDown!1691 (Regex!16443 Context!11654 C!33156) (InoxSet Context!11654))

(assert (=> b!6566939 (= lt!2407806 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 (h!71954 zl!343))) lt!2407830 (h!71952 s!2326)))))

(assert (=> b!6566939 (= lt!2407830 (Context!11655 (t!379273 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun lt!2407777 () (InoxSet Context!11654))

(assert (=> b!6566939 (= lt!2407777 (derivationStepZipperUp!1617 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343))))) (h!71952 s!2326)))))

(declare-fun b!6566940 () Bool)

(declare-fun res!2694990 () Bool)

(assert (=> b!6566940 (=> res!2694990 e!3975106)))

(declare-fun generalisedUnion!2287 (List!65629) Regex!16443)

(declare-fun unfocusZipperList!1864 (List!65630) List!65629)

(assert (=> b!6566940 (= res!2694990 (not (= r!7292 (generalisedUnion!2287 (unfocusZipperList!1864 zl!343)))))))

(declare-fun setIsEmpty!44834 () Bool)

(declare-fun setRes!44834 () Bool)

(assert (=> setIsEmpty!44834 setRes!44834))

(declare-fun b!6566941 () Bool)

(declare-fun e!3975092 () Bool)

(declare-fun tp!1813336 () Bool)

(declare-fun tp!1813343 () Bool)

(assert (=> b!6566941 (= e!3975092 (and tp!1813336 tp!1813343))))

(declare-fun e!3975114 () Bool)

(declare-fun e!3975107 () Bool)

(assert (=> b!6566942 (= e!3975114 e!3975107)))

(declare-fun res!2694981 () Bool)

(assert (=> b!6566942 (=> res!2694981 e!3975107)))

(declare-fun lt!2407778 () tuple2!66844)

(declare-fun matchR!8626 (Regex!16443 List!65628) Bool)

(assert (=> b!6566942 (= res!2694981 (not (matchR!8626 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407778))))))

(declare-fun lt!2407810 () List!65628)

(declare-fun ++!14588 (List!65628 List!65628) List!65628)

(assert (=> b!6566942 (= (++!14588 lt!2407810 (_2!36725 lt!2407811)) (++!14588 (_1!36725 lt!2407778) (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811))))))

(assert (=> b!6566942 (= lt!2407810 (++!14588 (_1!36725 lt!2407778) (_2!36725 lt!2407778)))))

(declare-fun lt!2407818 () Unit!159107)

(declare-fun lemmaConcatAssociativity!2946 (List!65628 List!65628 List!65628) Unit!159107)

(assert (=> b!6566942 (= lt!2407818 (lemmaConcatAssociativity!2946 (_1!36725 lt!2407778) (_2!36725 lt!2407778) (_2!36725 lt!2407811)))))

(declare-fun lt!2407795 () Option!16334)

(declare-fun get!22746 (Option!16334) tuple2!66844)

(assert (=> b!6566942 (= lt!2407778 (get!22746 lt!2407795))))

(assert (=> b!6566942 (= (Exists!3513 lambda!365585) (Exists!3513 lambda!365587))))

(declare-fun lt!2407834 () Unit!159107)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!666 (Regex!16443 List!65628) Unit!159107)

(assert (=> b!6566942 (= lt!2407834 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!666 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407811)))))

(assert (=> b!6566942 (= (Exists!3513 lambda!365585) (Exists!3513 lambda!365586))))

(declare-fun lt!2407807 () Unit!159107)

(assert (=> b!6566942 (= lt!2407807 (lemmaExistCutMatchRandMatchRSpecEquivalent!2050 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (_1!36725 lt!2407811)))))

(assert (=> b!6566942 (= (isDefined!13037 lt!2407795) (Exists!3513 lambda!365585))))

(assert (=> b!6566942 (= lt!2407795 (findConcatSeparation!2748 (reg!16772 (regOne!33398 r!7292)) lt!2407775 Nil!65504 (_1!36725 lt!2407811) (_1!36725 lt!2407811)))))

(declare-fun lt!2407786 () Unit!159107)

(assert (=> b!6566942 (= lt!2407786 (lemmaFindConcatSeparationEquivalentToExists!2512 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (_1!36725 lt!2407811)))))

(declare-fun matchRSpec!3544 (Regex!16443 List!65628) Bool)

(assert (=> b!6566942 (matchRSpec!3544 lt!2407774 (_1!36725 lt!2407811))))

(declare-fun lt!2407793 () Unit!159107)

(declare-fun mainMatchTheorem!3544 (Regex!16443 List!65628) Unit!159107)

(assert (=> b!6566942 (= lt!2407793 (mainMatchTheorem!3544 lt!2407774 (_1!36725 lt!2407811)))))

(declare-fun b!6566943 () Bool)

(declare-fun e!3975103 () Bool)

(declare-fun tp!1813337 () Bool)

(assert (=> b!6566943 (= e!3975103 tp!1813337)))

(declare-fun e!3975095 () Bool)

(assert (=> b!6566944 (= e!3975095 e!3975114)))

(declare-fun res!2694975 () Bool)

(assert (=> b!6566944 (=> res!2694975 e!3975114)))

(assert (=> b!6566944 (= res!2694975 (not (matchR!8626 lt!2407774 (_1!36725 lt!2407811))))))

(declare-fun lt!2407780 () Option!16334)

(assert (=> b!6566944 (= lt!2407811 (get!22746 lt!2407780))))

(assert (=> b!6566944 (= (Exists!3513 lambda!365583) (Exists!3513 lambda!365584))))

(declare-fun lt!2407817 () Unit!159107)

(assert (=> b!6566944 (= lt!2407817 (lemmaExistCutMatchRandMatchRSpecEquivalent!2050 lt!2407774 (regTwo!33398 r!7292) s!2326))))

(assert (=> b!6566944 (= (isDefined!13037 lt!2407780) (Exists!3513 lambda!365583))))

(assert (=> b!6566944 (= lt!2407780 (findConcatSeparation!2748 lt!2407774 (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326))))

(declare-fun lt!2407804 () Unit!159107)

(assert (=> b!6566944 (= lt!2407804 (lemmaFindConcatSeparationEquivalentToExists!2512 lt!2407774 (regTwo!33398 r!7292) s!2326))))

(declare-fun lt!2407779 () Regex!16443)

(assert (=> b!6566944 (matchRSpec!3544 lt!2407779 s!2326)))

(declare-fun lt!2407770 () Unit!159107)

(assert (=> b!6566944 (= lt!2407770 (mainMatchTheorem!3544 lt!2407779 s!2326))))

(assert (=> b!6566944 (matchR!8626 lt!2407779 s!2326)))

(assert (=> b!6566944 (= lt!2407779 (Concat!25288 lt!2407774 (regTwo!33398 r!7292)))))

(assert (=> b!6566944 (= lt!2407774 (Concat!25288 (reg!16772 (regOne!33398 r!7292)) lt!2407775))))

(declare-fun lt!2407808 () Unit!159107)

(declare-fun lemmaConcatAssociative!140 (Regex!16443 Regex!16443 Regex!16443 List!65628) Unit!159107)

(assert (=> b!6566944 (= lt!2407808 (lemmaConcatAssociative!140 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (regTwo!33398 r!7292) s!2326))))

(declare-fun e!3975094 () Bool)

(assert (=> b!6566944 e!3975094))

(declare-fun res!2694994 () Bool)

(assert (=> b!6566944 (=> (not res!2694994) (not e!3975094))))

(declare-fun lt!2407832 () Regex!16443)

(declare-fun lt!2407788 () List!65628)

(assert (=> b!6566944 (= res!2694994 (matchR!8626 lt!2407832 lt!2407788))))

(declare-fun lt!2407796 () Unit!159107)

(declare-fun lt!2407789 () Regex!16443)

(declare-fun lt!2407814 () tuple2!66844)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!364 (Regex!16443 Regex!16443 List!65628 List!65628) Unit!159107)

(assert (=> b!6566944 (= lt!2407796 (lemmaTwoRegexMatchThenConcatMatchesConcatString!364 (reg!16772 (regOne!33398 r!7292)) lt!2407789 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(assert (=> b!6566944 (matchR!8626 lt!2407789 (_2!36725 lt!2407814))))

(declare-fun lt!2407785 () (InoxSet Context!11654))

(declare-fun lt!2407792 () Unit!159107)

(declare-fun lt!2407813 () List!65630)

(declare-fun theoremZipperRegexEquiv!879 ((InoxSet Context!11654) List!65630 Regex!16443 List!65628) Unit!159107)

(assert (=> b!6566944 (= lt!2407792 (theoremZipperRegexEquiv!879 lt!2407785 lt!2407813 lt!2407789 (_2!36725 lt!2407814)))))

(assert (=> b!6566944 (matchR!8626 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407814))))

(declare-fun lt!2407823 () (InoxSet Context!11654))

(declare-fun lt!2407831 () List!65630)

(declare-fun lt!2407772 () Unit!159107)

(assert (=> b!6566944 (= lt!2407772 (theoremZipperRegexEquiv!879 lt!2407823 lt!2407831 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407814)))))

(declare-fun lt!2407797 () List!65629)

(declare-fun lt!2407825 () List!65629)

(declare-fun ++!14589 (List!65629 List!65629) List!65629)

(assert (=> b!6566944 (matchZipper!2455 (store ((as const (Array Context!11654 Bool)) false) (Context!11655 (++!14589 lt!2407797 lt!2407825)) true) lt!2407788)))

(declare-fun lt!2407824 () Unit!159107)

(declare-fun lambda!365582 () Int)

(declare-fun lemmaConcatPreservesForall!416 (List!65629 List!65629 Int) Unit!159107)

(assert (=> b!6566944 (= lt!2407824 (lemmaConcatPreservesForall!416 lt!2407797 lt!2407825 lambda!365582))))

(declare-fun lt!2407801 () Context!11654)

(declare-fun lt!2407822 () Unit!159107)

(declare-fun lt!2407776 () Context!11654)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!224 (Context!11654 Context!11654 List!65628 List!65628) Unit!159107)

(assert (=> b!6566944 (= lt!2407822 (lemmaConcatenateContextMatchesConcatOfStrings!224 lt!2407801 lt!2407776 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(declare-fun b!6566945 () Bool)

(declare-fun tp!1813334 () Bool)

(declare-fun tp!1813339 () Bool)

(assert (=> b!6566945 (= e!3975092 (and tp!1813334 tp!1813339))))

(declare-fun b!6566946 () Bool)

(declare-fun res!2694992 () Bool)

(assert (=> b!6566946 (=> res!2694992 e!3975091)))

(declare-fun e!3975099 () Bool)

(assert (=> b!6566946 (= res!2694992 e!3975099)))

(declare-fun res!2694977 () Bool)

(assert (=> b!6566946 (=> (not res!2694977) (not e!3975099))))

(assert (=> b!6566946 (= res!2694977 ((_ is Concat!25288) (regOne!33398 r!7292)))))

(declare-fun b!6566947 () Bool)

(declare-fun res!2694959 () Bool)

(assert (=> b!6566947 (=> res!2694959 e!3975106)))

(assert (=> b!6566947 (= res!2694959 (not ((_ is Cons!65505) (exprs!6327 (h!71954 zl!343)))))))

(declare-fun b!6566948 () Bool)

(declare-fun e!3975118 () Bool)

(declare-fun e!3975109 () Bool)

(assert (=> b!6566948 (= e!3975118 e!3975109)))

(declare-fun res!2694961 () Bool)

(assert (=> b!6566948 (=> res!2694961 e!3975109)))

(declare-fun unfocusZipper!2185 (List!65630) Regex!16443)

(assert (=> b!6566948 (= res!2694961 (not (= (unfocusZipper!2185 lt!2407831) (reg!16772 (regOne!33398 r!7292)))))))

(assert (=> b!6566948 (= lt!2407831 (Cons!65506 lt!2407801 Nil!65506))))

(assert (=> b!6566948 (= (flatMap!1948 lt!2407785 lambda!365580) (derivationStepZipperUp!1617 lt!2407776 (h!71952 s!2326)))))

(declare-fun lt!2407781 () Unit!159107)

(assert (=> b!6566948 (= lt!2407781 (lemmaFlatMapOnSingletonSet!1474 lt!2407785 lt!2407776 lambda!365580))))

(assert (=> b!6566948 (= (flatMap!1948 lt!2407823 lambda!365580) (derivationStepZipperUp!1617 lt!2407801 (h!71952 s!2326)))))

(declare-fun lt!2407815 () Unit!159107)

(assert (=> b!6566948 (= lt!2407815 (lemmaFlatMapOnSingletonSet!1474 lt!2407823 lt!2407801 lambda!365580))))

(declare-fun lt!2407790 () (InoxSet Context!11654))

(assert (=> b!6566948 (= lt!2407790 (derivationStepZipperUp!1617 lt!2407776 (h!71952 s!2326)))))

(declare-fun lt!2407833 () (InoxSet Context!11654))

(assert (=> b!6566948 (= lt!2407833 (derivationStepZipperUp!1617 lt!2407801 (h!71952 s!2326)))))

(assert (=> b!6566948 (= lt!2407785 (store ((as const (Array Context!11654 Bool)) false) lt!2407776 true))))

(assert (=> b!6566948 (= lt!2407823 (store ((as const (Array Context!11654 Bool)) false) lt!2407801 true))))

(assert (=> b!6566948 (= lt!2407801 (Context!11655 lt!2407797))))

(assert (=> b!6566948 (= lt!2407797 (Cons!65505 (reg!16772 (regOne!33398 r!7292)) Nil!65505))))

(declare-fun b!6566949 () Bool)

(declare-fun res!2694993 () Bool)

(assert (=> b!6566949 (=> res!2694993 e!3975095)))

(assert (=> b!6566949 (= res!2694993 (not (matchZipper!2455 lt!2407785 (_2!36725 lt!2407814))))))

(declare-fun b!6566950 () Bool)

(declare-fun e!3975120 () Bool)

(declare-fun e!3975101 () Bool)

(assert (=> b!6566950 (= e!3975120 e!3975101)))

(declare-fun res!2694971 () Bool)

(assert (=> b!6566950 (=> res!2694971 e!3975101)))

(assert (=> b!6566950 (= res!2694971 (not (= r!7292 lt!2407789)))))

(assert (=> b!6566950 (= lt!2407789 (Concat!25288 lt!2407775 (regTwo!33398 r!7292)))))

(declare-fun b!6566951 () Bool)

(assert (=> b!6566951 (= e!3975099 (nullable!6436 (regOne!33398 (regOne!33398 r!7292))))))

(declare-fun b!6566952 () Bool)

(declare-fun e!3975113 () Bool)

(assert (=> b!6566952 (= e!3975113 e!3975120)))

(declare-fun res!2694962 () Bool)

(assert (=> b!6566952 (=> res!2694962 e!3975120)))

(declare-fun lt!2407800 () Bool)

(declare-fun lt!2407812 () (InoxSet Context!11654))

(assert (=> b!6566952 (= res!2694962 (not (= lt!2407800 (matchZipper!2455 lt!2407812 (t!379272 s!2326)))))))

(declare-fun lt!2407803 () (InoxSet Context!11654))

(assert (=> b!6566952 (= lt!2407800 (matchZipper!2455 lt!2407803 s!2326))))

(declare-fun setElem!44834 () Context!11654)

(declare-fun e!3975110 () Bool)

(declare-fun setNonEmpty!44834 () Bool)

(declare-fun tp!1813335 () Bool)

(declare-fun inv!84354 (Context!11654) Bool)

(assert (=> setNonEmpty!44834 (= setRes!44834 (and tp!1813335 (inv!84354 setElem!44834) e!3975110))))

(declare-fun setRest!44834 () (InoxSet Context!11654))

(assert (=> setNonEmpty!44834 (= z!1189 ((_ map or) (store ((as const (Array Context!11654 Bool)) false) setElem!44834 true) setRest!44834))))

(declare-fun b!6566953 () Bool)

(declare-fun res!2694996 () Bool)

(declare-fun e!3975104 () Bool)

(assert (=> b!6566953 (=> res!2694996 e!3975104)))

(assert (=> b!6566953 (= res!2694996 (not lt!2407821))))

(declare-fun res!2694986 () Bool)

(declare-fun e!3975116 () Bool)

(assert (=> start!643458 (=> (not res!2694986) (not e!3975116))))

(declare-fun validRegex!8179 (Regex!16443) Bool)

(assert (=> start!643458 (= res!2694986 (validRegex!8179 r!7292))))

(assert (=> start!643458 e!3975116))

(assert (=> start!643458 e!3975092))

(declare-fun condSetEmpty!44834 () Bool)

(assert (=> start!643458 (= condSetEmpty!44834 (= z!1189 ((as const (Array Context!11654 Bool)) false)))))

(assert (=> start!643458 setRes!44834))

(declare-fun e!3975098 () Bool)

(assert (=> start!643458 e!3975098))

(declare-fun e!3975108 () Bool)

(assert (=> start!643458 e!3975108))

(declare-fun b!6566954 () Bool)

(declare-fun tp_is_empty!42139 () Bool)

(assert (=> b!6566954 (= e!3975092 tp_is_empty!42139)))

(declare-fun b!6566955 () Bool)

(declare-fun res!2694984 () Bool)

(assert (=> b!6566955 (=> res!2694984 e!3975106)))

(assert (=> b!6566955 (= res!2694984 (or ((_ is EmptyExpr!16443) r!7292) ((_ is EmptyLang!16443) r!7292) ((_ is ElementMatch!16443) r!7292) ((_ is Union!16443) r!7292) (not ((_ is Concat!25288) r!7292))))))

(declare-fun b!6566956 () Bool)

(assert (=> b!6566956 (= e!3975101 e!3975118)))

(declare-fun res!2694963 () Bool)

(assert (=> b!6566956 (=> res!2694963 e!3975118)))

(declare-fun lt!2407816 () Context!11654)

(assert (=> b!6566956 (= res!2694963 (not (= (unfocusZipper!2185 (Cons!65506 lt!2407816 Nil!65506)) lt!2407832)))))

(assert (=> b!6566956 (= lt!2407832 (Concat!25288 (reg!16772 (regOne!33398 r!7292)) lt!2407789))))

(declare-fun b!6566957 () Bool)

(declare-fun e!3975117 () Bool)

(assert (=> b!6566957 (= e!3975116 e!3975117)))

(declare-fun res!2694964 () Bool)

(assert (=> b!6566957 (=> (not res!2694964) (not e!3975117))))

(declare-fun lt!2407805 () Regex!16443)

(assert (=> b!6566957 (= res!2694964 (= r!7292 lt!2407805))))

(assert (=> b!6566957 (= lt!2407805 (unfocusZipper!2185 zl!343))))

(declare-fun b!6566958 () Bool)

(declare-fun e!3975105 () Bool)

(assert (=> b!6566958 (= e!3975109 e!3975105)))

(declare-fun res!2694973 () Bool)

(assert (=> b!6566958 (=> res!2694973 e!3975105)))

(assert (=> b!6566958 (= res!2694973 (not (= (unfocusZipper!2185 lt!2407813) lt!2407789)))))

(assert (=> b!6566958 (= lt!2407813 (Cons!65506 lt!2407776 Nil!65506))))

(declare-fun b!6566959 () Bool)

(declare-fun e!3975100 () Bool)

(assert (=> b!6566959 (= e!3975100 e!3975113)))

(declare-fun res!2694987 () Bool)

(assert (=> b!6566959 (=> res!2694987 e!3975113)))

(declare-fun lt!2407828 () (InoxSet Context!11654))

(assert (=> b!6566959 (= res!2694987 (not (= lt!2407812 lt!2407828)))))

(assert (=> b!6566959 (= (flatMap!1948 lt!2407803 lambda!365580) (derivationStepZipperUp!1617 lt!2407816 (h!71952 s!2326)))))

(declare-fun lt!2407798 () Unit!159107)

(assert (=> b!6566959 (= lt!2407798 (lemmaFlatMapOnSingletonSet!1474 lt!2407803 lt!2407816 lambda!365580))))

(declare-fun lt!2407784 () (InoxSet Context!11654))

(assert (=> b!6566959 (= lt!2407784 (derivationStepZipperUp!1617 lt!2407816 (h!71952 s!2326)))))

(declare-fun derivationStepZipper!2409 ((InoxSet Context!11654) C!33156) (InoxSet Context!11654))

(assert (=> b!6566959 (= lt!2407812 (derivationStepZipper!2409 lt!2407803 (h!71952 s!2326)))))

(assert (=> b!6566959 (= lt!2407803 (store ((as const (Array Context!11654 Bool)) false) lt!2407816 true))))

(assert (=> b!6566959 (= lt!2407816 (Context!11655 (Cons!65505 (reg!16772 (regOne!33398 r!7292)) lt!2407825)))))

(declare-fun b!6566960 () Bool)

(declare-fun tp!1813341 () Bool)

(assert (=> b!6566960 (= e!3975092 tp!1813341)))

(declare-fun e!3975115 () Bool)

(declare-fun e!3975102 () Bool)

(assert (=> b!6566961 (= e!3975115 e!3975102)))

(declare-fun res!2694988 () Bool)

(assert (=> b!6566961 (=> res!2694988 e!3975102)))

(declare-fun appendTo!204 ((InoxSet Context!11654) Context!11654) (InoxSet Context!11654))

(assert (=> b!6566961 (= res!2694988 (not (= (appendTo!204 lt!2407823 lt!2407776) lt!2407803)))))

(declare-fun lambda!365581 () Int)

(declare-fun map!14973 ((InoxSet Context!11654) Int) (InoxSet Context!11654))

(assert (=> b!6566961 (= (map!14973 lt!2407823 lambda!365581) (store ((as const (Array Context!11654 Bool)) false) (Context!11655 (++!14589 lt!2407797 lt!2407825)) true))))

(declare-fun lt!2407783 () Unit!159107)

(assert (=> b!6566961 (= lt!2407783 (lemmaConcatPreservesForall!416 lt!2407797 lt!2407825 lambda!365582))))

(declare-fun lt!2407809 () Unit!159107)

(declare-fun lemmaMapOnSingletonSet!226 ((InoxSet Context!11654) Context!11654 Int) Unit!159107)

(assert (=> b!6566961 (= lt!2407809 (lemmaMapOnSingletonSet!226 lt!2407823 lt!2407801 lambda!365581))))

(declare-fun b!6566962 () Bool)

(declare-fun e!3975111 () Bool)

(assert (=> b!6566962 (= e!3975111 (validRegex!8179 (regTwo!33398 r!7292)))))

(declare-fun b!6566963 () Bool)

(declare-fun res!2694978 () Bool)

(assert (=> b!6566963 (=> res!2694978 e!3975120)))

(assert (=> b!6566963 (= res!2694978 (not (= lt!2407805 r!7292)))))

(declare-fun b!6566964 () Bool)

(declare-fun res!2694960 () Bool)

(assert (=> b!6566964 (=> res!2694960 e!3975106)))

(declare-fun generalisedConcat!2040 (List!65629) Regex!16443)

(assert (=> b!6566964 (= res!2694960 (not (= r!7292 (generalisedConcat!2040 (exprs!6327 (h!71954 zl!343))))))))

(declare-fun b!6566965 () Bool)

(declare-fun tp!1813338 () Bool)

(assert (=> b!6566965 (= e!3975110 tp!1813338)))

(declare-fun b!6566966 () Bool)

(declare-fun res!2694983 () Bool)

(assert (=> b!6566966 (=> res!2694983 e!3975104)))

(assert (=> b!6566966 (= res!2694983 (not (matchZipper!2455 z!1189 s!2326)))))

(declare-fun b!6566967 () Bool)

(declare-fun Unit!159110 () Unit!159107)

(assert (=> b!6566967 (= e!3975119 Unit!159110)))

(declare-fun b!6566968 () Bool)

(assert (=> b!6566968 (= e!3975102 e!3975095)))

(declare-fun res!2694967 () Bool)

(assert (=> b!6566968 (=> res!2694967 e!3975095)))

(assert (=> b!6566968 (= res!2694967 (not (= s!2326 lt!2407788)))))

(assert (=> b!6566968 (= lt!2407788 (++!14588 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(declare-fun lt!2407791 () Option!16334)

(assert (=> b!6566968 (= lt!2407814 (get!22746 lt!2407791))))

(assert (=> b!6566968 (isDefined!13037 lt!2407791)))

(declare-fun findConcatSeparationZippers!208 ((InoxSet Context!11654) (InoxSet Context!11654) List!65628 List!65628 List!65628) Option!16334)

(assert (=> b!6566968 (= lt!2407791 (findConcatSeparationZippers!208 lt!2407823 lt!2407785 Nil!65504 s!2326 s!2326))))

(declare-fun lt!2407787 () Unit!159107)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!208 ((InoxSet Context!11654) Context!11654 List!65628) Unit!159107)

(assert (=> b!6566968 (= lt!2407787 (lemmaConcatZipperMatchesStringThenFindConcatDefined!208 lt!2407823 lt!2407776 s!2326))))

(declare-fun b!6566969 () Bool)

(assert (=> b!6566969 (= e!3975105 e!3975104)))

(declare-fun res!2694976 () Bool)

(assert (=> b!6566969 (=> res!2694976 e!3975104)))

(assert (=> b!6566969 (= res!2694976 lt!2407782)))

(declare-fun lt!2407768 () Bool)

(assert (=> b!6566969 (= lt!2407768 (matchRSpec!3544 lt!2407832 s!2326))))

(assert (=> b!6566969 (= lt!2407768 (matchR!8626 lt!2407832 s!2326))))

(declare-fun lt!2407771 () Unit!159107)

(assert (=> b!6566969 (= lt!2407771 (mainMatchTheorem!3544 lt!2407832 s!2326))))

(declare-fun b!6566970 () Bool)

(declare-fun res!2694972 () Bool)

(assert (=> b!6566970 (=> res!2694972 e!3975091)))

(assert (=> b!6566970 (= res!2694972 (or ((_ is Concat!25288) (regOne!33398 r!7292)) (not ((_ is Star!16443) (regOne!33398 r!7292)))))))

(declare-fun b!6566971 () Bool)

(declare-fun res!2694979 () Bool)

(assert (=> b!6566971 (=> res!2694979 e!3975093)))

(declare-fun isEmpty!37749 (List!65629) Bool)

(assert (=> b!6566971 (= res!2694979 (isEmpty!37749 (t!379273 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun b!6566972 () Bool)

(declare-fun res!2694991 () Bool)

(assert (=> b!6566972 (=> res!2694991 e!3975095)))

(assert (=> b!6566972 (= res!2694991 (not (matchZipper!2455 lt!2407823 (_1!36725 lt!2407814))))))

(declare-fun b!6566973 () Bool)

(declare-fun res!2694968 () Bool)

(assert (=> b!6566973 (=> (not res!2694968) (not e!3975116))))

(declare-fun toList!10227 ((InoxSet Context!11654)) List!65630)

(assert (=> b!6566973 (= res!2694968 (= (toList!10227 z!1189) zl!343))))

(declare-fun b!6566974 () Bool)

(assert (=> b!6566974 (= e!3975091 e!3975100)))

(declare-fun res!2694982 () Bool)

(assert (=> b!6566974 (=> res!2694982 e!3975100)))

(assert (=> b!6566974 (= res!2694982 (not (= lt!2407806 lt!2407828)))))

(assert (=> b!6566974 (= lt!2407828 (derivationStepZipperDown!1691 (reg!16772 (regOne!33398 r!7292)) lt!2407776 (h!71952 s!2326)))))

(assert (=> b!6566974 (= lt!2407776 (Context!11655 lt!2407825))))

(assert (=> b!6566974 (= lt!2407825 (Cons!65505 lt!2407775 (t!379273 (exprs!6327 (h!71954 zl!343)))))))

(assert (=> b!6566974 (= lt!2407775 (Star!16443 (reg!16772 (regOne!33398 r!7292))))))

(declare-fun b!6566975 () Bool)

(declare-fun tp!1813340 () Bool)

(assert (=> b!6566975 (= e!3975108 (and tp_is_empty!42139 tp!1813340))))

(declare-fun b!6566976 () Bool)

(declare-fun e!3975112 () Bool)

(assert (=> b!6566976 (= e!3975112 (not (matchZipper!2455 lt!2407819 (t!379272 s!2326))))))

(declare-fun b!6566977 () Bool)

(declare-fun res!2694974 () Bool)

(assert (=> b!6566977 (=> res!2694974 e!3975115)))

(declare-fun lt!2407794 () Bool)

(assert (=> b!6566977 (= res!2694974 (or (not lt!2407794) (not lt!2407800)))))

(declare-fun b!6566978 () Bool)

(assert (=> b!6566978 (= e!3975104 e!3975115)))

(declare-fun res!2694969 () Bool)

(assert (=> b!6566978 (=> res!2694969 e!3975115)))

(assert (=> b!6566978 (= res!2694969 e!3975112)))

(declare-fun res!2694965 () Bool)

(assert (=> b!6566978 (=> (not res!2694965) (not e!3975112))))

(assert (=> b!6566978 (= res!2694965 (not lt!2407794))))

(assert (=> b!6566978 (= lt!2407794 (matchZipper!2455 lt!2407806 (t!379272 s!2326)))))

(declare-fun b!6566979 () Bool)

(assert (=> b!6566979 (= e!3975097 (matchZipper!2455 lt!2407819 (t!379272 s!2326)))))

(declare-fun b!6566980 () Bool)

(declare-fun e!3975096 () Bool)

(assert (=> b!6566980 (= e!3975107 e!3975096)))

(declare-fun res!2694995 () Bool)

(assert (=> b!6566980 (=> res!2694995 e!3975096)))

(assert (=> b!6566980 (= res!2694995 (not (matchR!8626 (regTwo!33398 r!7292) (_2!36725 lt!2407811))))))

(assert (=> b!6566980 (matchR!8626 lt!2407775 lt!2407810)))

(declare-fun lt!2407820 () Unit!159107)

(declare-fun lemmaStarApp!150 (Regex!16443 List!65628 List!65628) Unit!159107)

(assert (=> b!6566980 (= lt!2407820 (lemmaStarApp!150 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407778) (_2!36725 lt!2407778)))))

(declare-fun b!6566981 () Bool)

(declare-fun tp!1813342 () Bool)

(assert (=> b!6566981 (= e!3975098 (and (inv!84354 (h!71954 zl!343)) e!3975103 tp!1813342))))

(declare-fun b!6566982 () Bool)

(assert (=> b!6566982 (= e!3975094 lt!2407768)))

(declare-fun b!6566983 () Bool)

(assert (=> b!6566983 (= e!3975117 (not e!3975106))))

(declare-fun res!2694970 () Bool)

(assert (=> b!6566983 (=> res!2694970 e!3975106)))

(assert (=> b!6566983 (= res!2694970 (not ((_ is Cons!65506) zl!343)))))

(assert (=> b!6566983 (= lt!2407782 (matchRSpec!3544 r!7292 s!2326))))

(assert (=> b!6566983 (= lt!2407782 (matchR!8626 r!7292 s!2326))))

(declare-fun lt!2407802 () Unit!159107)

(assert (=> b!6566983 (= lt!2407802 (mainMatchTheorem!3544 r!7292 s!2326))))

(declare-fun b!6566984 () Bool)

(declare-fun res!2694989 () Bool)

(assert (=> b!6566984 (=> res!2694989 e!3975107)))

(assert (=> b!6566984 (= res!2694989 (not (matchR!8626 lt!2407775 (_2!36725 lt!2407778))))))

(declare-fun b!6566985 () Bool)

(assert (=> b!6566985 (= e!3975096 e!3975111)))

(declare-fun res!2694985 () Bool)

(assert (=> b!6566985 (=> (not res!2694985) (not e!3975111))))

(assert (=> b!6566985 (= res!2694985 (validRegex!8179 lt!2407775))))

(declare-fun b!6566986 () Bool)

(declare-fun res!2694980 () Bool)

(assert (=> b!6566986 (=> res!2694980 e!3975106)))

(declare-fun isEmpty!37750 (List!65630) Bool)

(assert (=> b!6566986 (= res!2694980 (not (isEmpty!37750 (t!379274 zl!343))))))

(assert (= (and start!643458 res!2694986) b!6566973))

(assert (= (and b!6566973 res!2694968) b!6566957))

(assert (= (and b!6566957 res!2694964) b!6566983))

(assert (= (and b!6566983 (not res!2694970)) b!6566986))

(assert (= (and b!6566986 (not res!2694980)) b!6566964))

(assert (= (and b!6566964 (not res!2694960)) b!6566947))

(assert (= (and b!6566947 (not res!2694959)) b!6566940))

(assert (= (and b!6566940 (not res!2694990)) b!6566955))

(assert (= (and b!6566955 (not res!2694984)) b!6566938))

(assert (= (and b!6566938 (not res!2694966)) b!6566971))

(assert (= (and b!6566971 (not res!2694979)) b!6566939))

(assert (= (and b!6566939 c!1206989) b!6566937))

(assert (= (and b!6566939 (not c!1206989)) b!6566967))

(assert (= (and b!6566937 (not res!2694957)) b!6566979))

(assert (= (and b!6566939 (not res!2694958)) b!6566946))

(assert (= (and b!6566946 res!2694977) b!6566951))

(assert (= (and b!6566946 (not res!2694992)) b!6566970))

(assert (= (and b!6566970 (not res!2694972)) b!6566974))

(assert (= (and b!6566974 (not res!2694982)) b!6566959))

(assert (= (and b!6566959 (not res!2694987)) b!6566952))

(assert (= (and b!6566952 (not res!2694962)) b!6566963))

(assert (= (and b!6566963 (not res!2694978)) b!6566950))

(assert (= (and b!6566950 (not res!2694971)) b!6566956))

(assert (= (and b!6566956 (not res!2694963)) b!6566948))

(assert (= (and b!6566948 (not res!2694961)) b!6566958))

(assert (= (and b!6566958 (not res!2694973)) b!6566969))

(assert (= (and b!6566969 (not res!2694976)) b!6566966))

(assert (= (and b!6566966 (not res!2694983)) b!6566953))

(assert (= (and b!6566953 (not res!2694996)) b!6566978))

(assert (= (and b!6566978 res!2694965) b!6566976))

(assert (= (and b!6566978 (not res!2694969)) b!6566977))

(assert (= (and b!6566977 (not res!2694974)) b!6566961))

(assert (= (and b!6566961 (not res!2694988)) b!6566968))

(assert (= (and b!6566968 (not res!2694967)) b!6566972))

(assert (= (and b!6566972 (not res!2694991)) b!6566949))

(assert (= (and b!6566949 (not res!2694993)) b!6566944))

(assert (= (and b!6566944 res!2694994) b!6566982))

(assert (= (and b!6566944 (not res!2694975)) b!6566942))

(assert (= (and b!6566942 (not res!2694981)) b!6566984))

(assert (= (and b!6566984 (not res!2694989)) b!6566980))

(assert (= (and b!6566980 (not res!2694995)) b!6566985))

(assert (= (and b!6566985 res!2694985) b!6566962))

(assert (= (and start!643458 ((_ is ElementMatch!16443) r!7292)) b!6566954))

(assert (= (and start!643458 ((_ is Concat!25288) r!7292)) b!6566941))

(assert (= (and start!643458 ((_ is Star!16443) r!7292)) b!6566960))

(assert (= (and start!643458 ((_ is Union!16443) r!7292)) b!6566945))

(assert (= (and start!643458 condSetEmpty!44834) setIsEmpty!44834))

(assert (= (and start!643458 (not condSetEmpty!44834)) setNonEmpty!44834))

(assert (= setNonEmpty!44834 b!6566965))

(assert (= b!6566981 b!6566943))

(assert (= (and start!643458 ((_ is Cons!65506) zl!343)) b!6566981))

(assert (= (and start!643458 ((_ is Cons!65504) s!2326)) b!6566975))

(declare-fun m!7349040 () Bool)

(assert (=> b!6566971 m!7349040))

(declare-fun m!7349042 () Bool)

(assert (=> b!6566980 m!7349042))

(declare-fun m!7349044 () Bool)

(assert (=> b!6566980 m!7349044))

(declare-fun m!7349046 () Bool)

(assert (=> b!6566980 m!7349046))

(declare-fun m!7349048 () Bool)

(assert (=> b!6566973 m!7349048))

(declare-fun m!7349050 () Bool)

(assert (=> b!6566957 m!7349050))

(declare-fun m!7349052 () Bool)

(assert (=> b!6566942 m!7349052))

(declare-fun m!7349054 () Bool)

(assert (=> b!6566942 m!7349054))

(declare-fun m!7349056 () Bool)

(assert (=> b!6566942 m!7349056))

(declare-fun m!7349058 () Bool)

(assert (=> b!6566942 m!7349058))

(assert (=> b!6566942 m!7349052))

(declare-fun m!7349060 () Bool)

(assert (=> b!6566942 m!7349060))

(declare-fun m!7349062 () Bool)

(assert (=> b!6566942 m!7349062))

(declare-fun m!7349064 () Bool)

(assert (=> b!6566942 m!7349064))

(assert (=> b!6566942 m!7349064))

(declare-fun m!7349066 () Bool)

(assert (=> b!6566942 m!7349066))

(declare-fun m!7349068 () Bool)

(assert (=> b!6566942 m!7349068))

(declare-fun m!7349070 () Bool)

(assert (=> b!6566942 m!7349070))

(declare-fun m!7349072 () Bool)

(assert (=> b!6566942 m!7349072))

(assert (=> b!6566942 m!7349064))

(declare-fun m!7349074 () Bool)

(assert (=> b!6566942 m!7349074))

(declare-fun m!7349076 () Bool)

(assert (=> b!6566942 m!7349076))

(declare-fun m!7349078 () Bool)

(assert (=> b!6566942 m!7349078))

(declare-fun m!7349080 () Bool)

(assert (=> b!6566942 m!7349080))

(declare-fun m!7349082 () Bool)

(assert (=> b!6566942 m!7349082))

(declare-fun m!7349084 () Bool)

(assert (=> b!6566942 m!7349084))

(declare-fun m!7349086 () Bool)

(assert (=> b!6566964 m!7349086))

(declare-fun m!7349088 () Bool)

(assert (=> b!6566959 m!7349088))

(declare-fun m!7349090 () Bool)

(assert (=> b!6566959 m!7349090))

(declare-fun m!7349092 () Bool)

(assert (=> b!6566959 m!7349092))

(declare-fun m!7349094 () Bool)

(assert (=> b!6566959 m!7349094))

(declare-fun m!7349096 () Bool)

(assert (=> b!6566959 m!7349096))

(declare-fun m!7349098 () Bool)

(assert (=> b!6566952 m!7349098))

(declare-fun m!7349100 () Bool)

(assert (=> b!6566952 m!7349100))

(declare-fun m!7349102 () Bool)

(assert (=> b!6566944 m!7349102))

(declare-fun m!7349104 () Bool)

(assert (=> b!6566944 m!7349104))

(declare-fun m!7349106 () Bool)

(assert (=> b!6566944 m!7349106))

(declare-fun m!7349108 () Bool)

(assert (=> b!6566944 m!7349108))

(declare-fun m!7349110 () Bool)

(assert (=> b!6566944 m!7349110))

(declare-fun m!7349112 () Bool)

(assert (=> b!6566944 m!7349112))

(declare-fun m!7349114 () Bool)

(assert (=> b!6566944 m!7349114))

(declare-fun m!7349116 () Bool)

(assert (=> b!6566944 m!7349116))

(declare-fun m!7349118 () Bool)

(assert (=> b!6566944 m!7349118))

(declare-fun m!7349120 () Bool)

(assert (=> b!6566944 m!7349120))

(declare-fun m!7349122 () Bool)

(assert (=> b!6566944 m!7349122))

(declare-fun m!7349124 () Bool)

(assert (=> b!6566944 m!7349124))

(assert (=> b!6566944 m!7349114))

(declare-fun m!7349126 () Bool)

(assert (=> b!6566944 m!7349126))

(declare-fun m!7349128 () Bool)

(assert (=> b!6566944 m!7349128))

(declare-fun m!7349130 () Bool)

(assert (=> b!6566944 m!7349130))

(assert (=> b!6566944 m!7349108))

(declare-fun m!7349132 () Bool)

(assert (=> b!6566944 m!7349132))

(declare-fun m!7349134 () Bool)

(assert (=> b!6566944 m!7349134))

(declare-fun m!7349136 () Bool)

(assert (=> b!6566944 m!7349136))

(declare-fun m!7349138 () Bool)

(assert (=> b!6566944 m!7349138))

(declare-fun m!7349140 () Bool)

(assert (=> b!6566944 m!7349140))

(declare-fun m!7349142 () Bool)

(assert (=> b!6566944 m!7349142))

(declare-fun m!7349144 () Bool)

(assert (=> b!6566944 m!7349144))

(declare-fun m!7349146 () Bool)

(assert (=> b!6566944 m!7349146))

(declare-fun m!7349148 () Bool)

(assert (=> b!6566962 m!7349148))

(declare-fun m!7349150 () Bool)

(assert (=> b!6566983 m!7349150))

(declare-fun m!7349152 () Bool)

(assert (=> b!6566983 m!7349152))

(declare-fun m!7349154 () Bool)

(assert (=> b!6566983 m!7349154))

(declare-fun m!7349156 () Bool)

(assert (=> b!6566938 m!7349156))

(declare-fun m!7349158 () Bool)

(assert (=> b!6566938 m!7349158))

(declare-fun m!7349160 () Bool)

(assert (=> b!6566938 m!7349160))

(declare-fun m!7349162 () Bool)

(assert (=> b!6566938 m!7349162))

(assert (=> b!6566938 m!7349156))

(declare-fun m!7349164 () Bool)

(assert (=> b!6566938 m!7349164))

(assert (=> b!6566938 m!7349160))

(declare-fun m!7349166 () Bool)

(assert (=> b!6566938 m!7349166))

(declare-fun m!7349168 () Bool)

(assert (=> start!643458 m!7349168))

(declare-fun m!7349170 () Bool)

(assert (=> b!6566949 m!7349170))

(declare-fun m!7349172 () Bool)

(assert (=> b!6566940 m!7349172))

(assert (=> b!6566940 m!7349172))

(declare-fun m!7349174 () Bool)

(assert (=> b!6566940 m!7349174))

(declare-fun m!7349176 () Bool)

(assert (=> b!6566948 m!7349176))

(declare-fun m!7349178 () Bool)

(assert (=> b!6566948 m!7349178))

(declare-fun m!7349180 () Bool)

(assert (=> b!6566948 m!7349180))

(declare-fun m!7349182 () Bool)

(assert (=> b!6566948 m!7349182))

(declare-fun m!7349184 () Bool)

(assert (=> b!6566948 m!7349184))

(declare-fun m!7349186 () Bool)

(assert (=> b!6566948 m!7349186))

(declare-fun m!7349188 () Bool)

(assert (=> b!6566948 m!7349188))

(declare-fun m!7349190 () Bool)

(assert (=> b!6566948 m!7349190))

(declare-fun m!7349192 () Bool)

(assert (=> b!6566948 m!7349192))

(declare-fun m!7349194 () Bool)

(assert (=> b!6566958 m!7349194))

(declare-fun m!7349196 () Bool)

(assert (=> b!6566969 m!7349196))

(declare-fun m!7349198 () Bool)

(assert (=> b!6566969 m!7349198))

(declare-fun m!7349200 () Bool)

(assert (=> b!6566969 m!7349200))

(declare-fun m!7349202 () Bool)

(assert (=> setNonEmpty!44834 m!7349202))

(declare-fun m!7349204 () Bool)

(assert (=> b!6566986 m!7349204))

(declare-fun m!7349206 () Bool)

(assert (=> b!6566956 m!7349206))

(declare-fun m!7349208 () Bool)

(assert (=> b!6566966 m!7349208))

(declare-fun m!7349210 () Bool)

(assert (=> b!6566951 m!7349210))

(declare-fun m!7349212 () Bool)

(assert (=> b!6566981 m!7349212))

(assert (=> b!6566961 m!7349124))

(declare-fun m!7349214 () Bool)

(assert (=> b!6566961 m!7349214))

(assert (=> b!6566961 m!7349108))

(declare-fun m!7349216 () Bool)

(assert (=> b!6566961 m!7349216))

(assert (=> b!6566961 m!7349140))

(declare-fun m!7349218 () Bool)

(assert (=> b!6566961 m!7349218))

(declare-fun m!7349220 () Bool)

(assert (=> b!6566985 m!7349220))

(declare-fun m!7349222 () Bool)

(assert (=> b!6566974 m!7349222))

(declare-fun m!7349224 () Bool)

(assert (=> b!6566979 m!7349224))

(declare-fun m!7349226 () Bool)

(assert (=> b!6566939 m!7349226))

(declare-fun m!7349228 () Bool)

(assert (=> b!6566939 m!7349228))

(declare-fun m!7349230 () Bool)

(assert (=> b!6566939 m!7349230))

(declare-fun m!7349232 () Bool)

(assert (=> b!6566939 m!7349232))

(declare-fun m!7349234 () Bool)

(assert (=> b!6566939 m!7349234))

(declare-fun m!7349236 () Bool)

(assert (=> b!6566939 m!7349236))

(declare-fun m!7349238 () Bool)

(assert (=> b!6566939 m!7349238))

(assert (=> b!6566976 m!7349224))

(declare-fun m!7349240 () Bool)

(assert (=> b!6566984 m!7349240))

(declare-fun m!7349242 () Bool)

(assert (=> b!6566937 m!7349242))

(declare-fun m!7349244 () Bool)

(assert (=> b!6566937 m!7349244))

(declare-fun m!7349246 () Bool)

(assert (=> b!6566937 m!7349246))

(assert (=> b!6566978 m!7349244))

(declare-fun m!7349248 () Bool)

(assert (=> b!6566972 m!7349248))

(declare-fun m!7349250 () Bool)

(assert (=> b!6566968 m!7349250))

(declare-fun m!7349252 () Bool)

(assert (=> b!6566968 m!7349252))

(declare-fun m!7349254 () Bool)

(assert (=> b!6566968 m!7349254))

(declare-fun m!7349256 () Bool)

(assert (=> b!6566968 m!7349256))

(declare-fun m!7349258 () Bool)

(assert (=> b!6566968 m!7349258))

(check-sat (not b!6566985) (not b!6566969) (not b!6566978) (not b!6566958) (not b!6566949) (not b!6566940) (not b!6566986) (not b!6566944) (not b!6566984) (not b!6566945) (not b!6566962) (not b!6566965) (not b!6566981) (not b!6566939) (not b!6566943) (not b!6566971) (not b!6566974) (not b!6566942) (not b!6566973) (not b!6566964) (not b!6566975) (not b!6566941) (not b!6566960) (not b!6566938) (not b!6566951) (not b!6566979) (not b!6566983) (not b!6566948) (not b!6566937) (not b!6566968) (not b!6566961) (not start!643458) (not b!6566966) (not b!6566956) tp_is_empty!42139 (not b!6566980) (not b!6566972) (not b!6566952) (not b!6566957) (not b!6566976) (not b!6566959) (not setNonEmpty!44834))
(check-sat)
(get-model)

(declare-fun d!2060495 () Bool)

(declare-fun c!1207077 () Bool)

(declare-fun isEmpty!37753 (List!65628) Bool)

(assert (=> d!2060495 (= c!1207077 (isEmpty!37753 (_2!36725 lt!2407814)))))

(declare-fun e!3975287 () Bool)

(assert (=> d!2060495 (= (matchZipper!2455 lt!2407785 (_2!36725 lt!2407814)) e!3975287)))

(declare-fun b!6567291 () Bool)

(declare-fun nullableZipper!2188 ((InoxSet Context!11654)) Bool)

(assert (=> b!6567291 (= e!3975287 (nullableZipper!2188 lt!2407785))))

(declare-fun b!6567292 () Bool)

(declare-fun head!13337 (List!65628) C!33156)

(declare-fun tail!12422 (List!65628) List!65628)

(assert (=> b!6567292 (= e!3975287 (matchZipper!2455 (derivationStepZipper!2409 lt!2407785 (head!13337 (_2!36725 lt!2407814))) (tail!12422 (_2!36725 lt!2407814))))))

(assert (= (and d!2060495 c!1207077) b!6567291))

(assert (= (and d!2060495 (not c!1207077)) b!6567292))

(declare-fun m!7349458 () Bool)

(assert (=> d!2060495 m!7349458))

(declare-fun m!7349460 () Bool)

(assert (=> b!6567291 m!7349460))

(declare-fun m!7349462 () Bool)

(assert (=> b!6567292 m!7349462))

(assert (=> b!6567292 m!7349462))

(declare-fun m!7349464 () Bool)

(assert (=> b!6567292 m!7349464))

(declare-fun m!7349466 () Bool)

(assert (=> b!6567292 m!7349466))

(assert (=> b!6567292 m!7349464))

(assert (=> b!6567292 m!7349466))

(declare-fun m!7349468 () Bool)

(assert (=> b!6567292 m!7349468))

(assert (=> b!6566949 d!2060495))

(declare-fun d!2060501 () Bool)

(assert (=> d!2060501 (= (isEmpty!37749 (t!379273 (exprs!6327 (h!71954 zl!343)))) ((_ is Nil!65505) (t!379273 (exprs!6327 (h!71954 zl!343)))))))

(assert (=> b!6566971 d!2060501))

(declare-fun d!2060507 () Bool)

(declare-fun nullableFct!2362 (Regex!16443) Bool)

(assert (=> d!2060507 (= (nullable!6436 (regOne!33398 (regOne!33398 r!7292))) (nullableFct!2362 (regOne!33398 (regOne!33398 r!7292))))))

(declare-fun bs!1677397 () Bool)

(assert (= bs!1677397 d!2060507))

(declare-fun m!7349496 () Bool)

(assert (=> bs!1677397 m!7349496))

(assert (=> b!6566951 d!2060507))

(declare-fun d!2060511 () Bool)

(declare-fun choose!49029 ((InoxSet Context!11654) Int) (InoxSet Context!11654))

(assert (=> d!2060511 (= (flatMap!1948 lt!2407785 lambda!365580) (choose!49029 lt!2407785 lambda!365580))))

(declare-fun bs!1677398 () Bool)

(assert (= bs!1677398 d!2060511))

(declare-fun m!7349512 () Bool)

(assert (=> bs!1677398 m!7349512))

(assert (=> b!6566948 d!2060511))

(declare-fun d!2060515 () Bool)

(assert (=> d!2060515 (= (flatMap!1948 lt!2407823 lambda!365580) (choose!49029 lt!2407823 lambda!365580))))

(declare-fun bs!1677399 () Bool)

(assert (= bs!1677399 d!2060515))

(declare-fun m!7349514 () Bool)

(assert (=> bs!1677399 m!7349514))

(assert (=> b!6566948 d!2060515))

(declare-fun b!6567337 () Bool)

(declare-fun e!3975312 () (InoxSet Context!11654))

(declare-fun e!3975313 () (InoxSet Context!11654))

(assert (=> b!6567337 (= e!3975312 e!3975313)))

(declare-fun c!1207094 () Bool)

(assert (=> b!6567337 (= c!1207094 ((_ is Cons!65505) (exprs!6327 lt!2407801)))))

(declare-fun bm!571361 () Bool)

(declare-fun call!571366 () (InoxSet Context!11654))

(assert (=> bm!571361 (= call!571366 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 lt!2407801)) (Context!11655 (t!379273 (exprs!6327 lt!2407801))) (h!71952 s!2326)))))

(declare-fun b!6567338 () Bool)

(assert (=> b!6567338 (= e!3975313 call!571366)))

(declare-fun b!6567339 () Bool)

(assert (=> b!6567339 (= e!3975313 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6567341 () Bool)

(declare-fun e!3975311 () Bool)

(assert (=> b!6567341 (= e!3975311 (nullable!6436 (h!71953 (exprs!6327 lt!2407801))))))

(declare-fun d!2060517 () Bool)

(declare-fun c!1207093 () Bool)

(assert (=> d!2060517 (= c!1207093 e!3975311)))

(declare-fun res!2695135 () Bool)

(assert (=> d!2060517 (=> (not res!2695135) (not e!3975311))))

(assert (=> d!2060517 (= res!2695135 ((_ is Cons!65505) (exprs!6327 lt!2407801)))))

(assert (=> d!2060517 (= (derivationStepZipperUp!1617 lt!2407801 (h!71952 s!2326)) e!3975312)))

(declare-fun b!6567340 () Bool)

(assert (=> b!6567340 (= e!3975312 ((_ map or) call!571366 (derivationStepZipperUp!1617 (Context!11655 (t!379273 (exprs!6327 lt!2407801))) (h!71952 s!2326))))))

(assert (= (and d!2060517 res!2695135) b!6567341))

(assert (= (and d!2060517 c!1207093) b!6567340))

(assert (= (and d!2060517 (not c!1207093)) b!6567337))

(assert (= (and b!6567337 c!1207094) b!6567338))

(assert (= (and b!6567337 (not c!1207094)) b!6567339))

(assert (= (or b!6567340 b!6567338) bm!571361))

(declare-fun m!7349554 () Bool)

(assert (=> bm!571361 m!7349554))

(declare-fun m!7349556 () Bool)

(assert (=> b!6567341 m!7349556))

(declare-fun m!7349560 () Bool)

(assert (=> b!6567340 m!7349560))

(assert (=> b!6566948 d!2060517))

(declare-fun d!2060529 () Bool)

(declare-fun dynLambda!26059 (Int Context!11654) (InoxSet Context!11654))

(assert (=> d!2060529 (= (flatMap!1948 lt!2407785 lambda!365580) (dynLambda!26059 lambda!365580 lt!2407776))))

(declare-fun lt!2407887 () Unit!159107)

(declare-fun choose!49030 ((InoxSet Context!11654) Context!11654 Int) Unit!159107)

(assert (=> d!2060529 (= lt!2407887 (choose!49030 lt!2407785 lt!2407776 lambda!365580))))

(assert (=> d!2060529 (= lt!2407785 (store ((as const (Array Context!11654 Bool)) false) lt!2407776 true))))

(assert (=> d!2060529 (= (lemmaFlatMapOnSingletonSet!1474 lt!2407785 lt!2407776 lambda!365580) lt!2407887)))

(declare-fun b_lambda!248379 () Bool)

(assert (=> (not b_lambda!248379) (not d!2060529)))

(declare-fun bs!1677406 () Bool)

(assert (= bs!1677406 d!2060529))

(assert (=> bs!1677406 m!7349182))

(declare-fun m!7349574 () Bool)

(assert (=> bs!1677406 m!7349574))

(declare-fun m!7349576 () Bool)

(assert (=> bs!1677406 m!7349576))

(assert (=> bs!1677406 m!7349192))

(assert (=> b!6566948 d!2060529))

(declare-fun d!2060533 () Bool)

(declare-fun lt!2407896 () Regex!16443)

(assert (=> d!2060533 (validRegex!8179 lt!2407896)))

(assert (=> d!2060533 (= lt!2407896 (generalisedUnion!2287 (unfocusZipperList!1864 lt!2407831)))))

(assert (=> d!2060533 (= (unfocusZipper!2185 lt!2407831) lt!2407896)))

(declare-fun bs!1677409 () Bool)

(assert (= bs!1677409 d!2060533))

(declare-fun m!7349604 () Bool)

(assert (=> bs!1677409 m!7349604))

(declare-fun m!7349606 () Bool)

(assert (=> bs!1677409 m!7349606))

(assert (=> bs!1677409 m!7349606))

(declare-fun m!7349608 () Bool)

(assert (=> bs!1677409 m!7349608))

(assert (=> b!6566948 d!2060533))

(declare-fun d!2060543 () Bool)

(assert (=> d!2060543 (= (flatMap!1948 lt!2407823 lambda!365580) (dynLambda!26059 lambda!365580 lt!2407801))))

(declare-fun lt!2407897 () Unit!159107)

(assert (=> d!2060543 (= lt!2407897 (choose!49030 lt!2407823 lt!2407801 lambda!365580))))

(assert (=> d!2060543 (= lt!2407823 (store ((as const (Array Context!11654 Bool)) false) lt!2407801 true))))

(assert (=> d!2060543 (= (lemmaFlatMapOnSingletonSet!1474 lt!2407823 lt!2407801 lambda!365580) lt!2407897)))

(declare-fun b_lambda!248381 () Bool)

(assert (=> (not b_lambda!248381) (not d!2060543)))

(declare-fun bs!1677412 () Bool)

(assert (= bs!1677412 d!2060543))

(assert (=> bs!1677412 m!7349186))

(declare-fun m!7349610 () Bool)

(assert (=> bs!1677412 m!7349610))

(declare-fun m!7349612 () Bool)

(assert (=> bs!1677412 m!7349612))

(assert (=> bs!1677412 m!7349190))

(assert (=> b!6566948 d!2060543))

(declare-fun b!6567374 () Bool)

(declare-fun e!3975331 () (InoxSet Context!11654))

(declare-fun e!3975332 () (InoxSet Context!11654))

(assert (=> b!6567374 (= e!3975331 e!3975332)))

(declare-fun c!1207103 () Bool)

(assert (=> b!6567374 (= c!1207103 ((_ is Cons!65505) (exprs!6327 lt!2407776)))))

(declare-fun bm!571364 () Bool)

(declare-fun call!571369 () (InoxSet Context!11654))

(assert (=> bm!571364 (= call!571369 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 lt!2407776)) (Context!11655 (t!379273 (exprs!6327 lt!2407776))) (h!71952 s!2326)))))

(declare-fun b!6567375 () Bool)

(assert (=> b!6567375 (= e!3975332 call!571369)))

(declare-fun b!6567376 () Bool)

(assert (=> b!6567376 (= e!3975332 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6567378 () Bool)

(declare-fun e!3975330 () Bool)

(assert (=> b!6567378 (= e!3975330 (nullable!6436 (h!71953 (exprs!6327 lt!2407776))))))

(declare-fun d!2060545 () Bool)

(declare-fun c!1207102 () Bool)

(assert (=> d!2060545 (= c!1207102 e!3975330)))

(declare-fun res!2695154 () Bool)

(assert (=> d!2060545 (=> (not res!2695154) (not e!3975330))))

(assert (=> d!2060545 (= res!2695154 ((_ is Cons!65505) (exprs!6327 lt!2407776)))))

(assert (=> d!2060545 (= (derivationStepZipperUp!1617 lt!2407776 (h!71952 s!2326)) e!3975331)))

(declare-fun b!6567377 () Bool)

(assert (=> b!6567377 (= e!3975331 ((_ map or) call!571369 (derivationStepZipperUp!1617 (Context!11655 (t!379273 (exprs!6327 lt!2407776))) (h!71952 s!2326))))))

(assert (= (and d!2060545 res!2695154) b!6567378))

(assert (= (and d!2060545 c!1207102) b!6567377))

(assert (= (and d!2060545 (not c!1207102)) b!6567374))

(assert (= (and b!6567374 c!1207103) b!6567375))

(assert (= (and b!6567374 (not c!1207103)) b!6567376))

(assert (= (or b!6567377 b!6567375) bm!571364))

(declare-fun m!7349614 () Bool)

(assert (=> bm!571364 m!7349614))

(declare-fun m!7349616 () Bool)

(assert (=> b!6567378 m!7349616))

(declare-fun m!7349618 () Bool)

(assert (=> b!6567377 m!7349618))

(assert (=> b!6566948 d!2060545))

(declare-fun d!2060547 () Bool)

(declare-fun isEmpty!37754 (Option!16334) Bool)

(assert (=> d!2060547 (= (isDefined!13037 lt!2407791) (not (isEmpty!37754 lt!2407791)))))

(declare-fun bs!1677419 () Bool)

(assert (= bs!1677419 d!2060547))

(declare-fun m!7349620 () Bool)

(assert (=> bs!1677419 m!7349620))

(assert (=> b!6566968 d!2060547))

(declare-fun d!2060549 () Bool)

(assert (=> d!2060549 (isDefined!13037 (findConcatSeparationZippers!208 lt!2407823 (store ((as const (Array Context!11654 Bool)) false) lt!2407776 true) Nil!65504 s!2326 s!2326))))

(declare-fun lt!2407907 () Unit!159107)

(declare-fun choose!49032 ((InoxSet Context!11654) Context!11654 List!65628) Unit!159107)

(assert (=> d!2060549 (= lt!2407907 (choose!49032 lt!2407823 lt!2407776 s!2326))))

(assert (=> d!2060549 (matchZipper!2455 (appendTo!204 lt!2407823 lt!2407776) s!2326)))

(assert (=> d!2060549 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!208 lt!2407823 lt!2407776 s!2326) lt!2407907)))

(declare-fun bs!1677426 () Bool)

(assert (= bs!1677426 d!2060549))

(declare-fun m!7349634 () Bool)

(assert (=> bs!1677426 m!7349634))

(declare-fun m!7349636 () Bool)

(assert (=> bs!1677426 m!7349636))

(declare-fun m!7349638 () Bool)

(assert (=> bs!1677426 m!7349638))

(assert (=> bs!1677426 m!7349214))

(declare-fun m!7349640 () Bool)

(assert (=> bs!1677426 m!7349640))

(assert (=> bs!1677426 m!7349192))

(assert (=> bs!1677426 m!7349214))

(assert (=> bs!1677426 m!7349192))

(assert (=> bs!1677426 m!7349634))

(assert (=> b!6566968 d!2060549))

(declare-fun d!2060555 () Bool)

(assert (=> d!2060555 (= (get!22746 lt!2407791) (v!52518 lt!2407791))))

(assert (=> b!6566968 d!2060555))

(declare-fun b!6567405 () Bool)

(declare-fun e!3975348 () List!65628)

(assert (=> b!6567405 (= e!3975348 (Cons!65504 (h!71952 (_1!36725 lt!2407814)) (++!14588 (t!379272 (_1!36725 lt!2407814)) (_2!36725 lt!2407814))))))

(declare-fun d!2060559 () Bool)

(declare-fun e!3975347 () Bool)

(assert (=> d!2060559 e!3975347))

(declare-fun res!2695171 () Bool)

(assert (=> d!2060559 (=> (not res!2695171) (not e!3975347))))

(declare-fun lt!2407919 () List!65628)

(declare-fun content!12609 (List!65628) (InoxSet C!33156))

(assert (=> d!2060559 (= res!2695171 (= (content!12609 lt!2407919) ((_ map or) (content!12609 (_1!36725 lt!2407814)) (content!12609 (_2!36725 lt!2407814)))))))

(assert (=> d!2060559 (= lt!2407919 e!3975348)))

(declare-fun c!1207109 () Bool)

(assert (=> d!2060559 (= c!1207109 ((_ is Nil!65504) (_1!36725 lt!2407814)))))

(assert (=> d!2060559 (= (++!14588 (_1!36725 lt!2407814) (_2!36725 lt!2407814)) lt!2407919)))

(declare-fun b!6567404 () Bool)

(assert (=> b!6567404 (= e!3975348 (_2!36725 lt!2407814))))

(declare-fun b!6567407 () Bool)

(assert (=> b!6567407 (= e!3975347 (or (not (= (_2!36725 lt!2407814) Nil!65504)) (= lt!2407919 (_1!36725 lt!2407814))))))

(declare-fun b!6567406 () Bool)

(declare-fun res!2695170 () Bool)

(assert (=> b!6567406 (=> (not res!2695170) (not e!3975347))))

(declare-fun size!40535 (List!65628) Int)

(assert (=> b!6567406 (= res!2695170 (= (size!40535 lt!2407919) (+ (size!40535 (_1!36725 lt!2407814)) (size!40535 (_2!36725 lt!2407814)))))))

(assert (= (and d!2060559 c!1207109) b!6567404))

(assert (= (and d!2060559 (not c!1207109)) b!6567405))

(assert (= (and d!2060559 res!2695171) b!6567406))

(assert (= (and b!6567406 res!2695170) b!6567407))

(declare-fun m!7349672 () Bool)

(assert (=> b!6567405 m!7349672))

(declare-fun m!7349674 () Bool)

(assert (=> d!2060559 m!7349674))

(declare-fun m!7349676 () Bool)

(assert (=> d!2060559 m!7349676))

(declare-fun m!7349678 () Bool)

(assert (=> d!2060559 m!7349678))

(declare-fun m!7349680 () Bool)

(assert (=> b!6567406 m!7349680))

(declare-fun m!7349682 () Bool)

(assert (=> b!6567406 m!7349682))

(declare-fun m!7349684 () Bool)

(assert (=> b!6567406 m!7349684))

(assert (=> b!6566968 d!2060559))

(declare-fun d!2060573 () Bool)

(declare-fun e!3975404 () Bool)

(assert (=> d!2060573 e!3975404))

(declare-fun res!2695219 () Bool)

(assert (=> d!2060573 (=> res!2695219 e!3975404)))

(declare-fun e!3975400 () Bool)

(assert (=> d!2060573 (= res!2695219 e!3975400)))

(declare-fun res!2695220 () Bool)

(assert (=> d!2060573 (=> (not res!2695220) (not e!3975400))))

(declare-fun lt!2407935 () Option!16334)

(assert (=> d!2060573 (= res!2695220 (isDefined!13037 lt!2407935))))

(declare-fun e!3975401 () Option!16334)

(assert (=> d!2060573 (= lt!2407935 e!3975401)))

(declare-fun c!1207135 () Bool)

(declare-fun e!3975402 () Bool)

(assert (=> d!2060573 (= c!1207135 e!3975402)))

(declare-fun res!2695222 () Bool)

(assert (=> d!2060573 (=> (not res!2695222) (not e!3975402))))

(assert (=> d!2060573 (= res!2695222 (matchZipper!2455 lt!2407823 Nil!65504))))

(assert (=> d!2060573 (= (++!14588 Nil!65504 s!2326) s!2326)))

(assert (=> d!2060573 (= (findConcatSeparationZippers!208 lt!2407823 lt!2407785 Nil!65504 s!2326 s!2326) lt!2407935)))

(declare-fun b!6567498 () Bool)

(declare-fun lt!2407937 () Unit!159107)

(declare-fun lt!2407936 () Unit!159107)

(assert (=> b!6567498 (= lt!2407937 lt!2407936)))

(assert (=> b!6567498 (= (++!14588 (++!14588 Nil!65504 (Cons!65504 (h!71952 s!2326) Nil!65504)) (t!379272 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2586 (List!65628 C!33156 List!65628 List!65628) Unit!159107)

(assert (=> b!6567498 (= lt!2407936 (lemmaMoveElementToOtherListKeepsConcatEq!2586 Nil!65504 (h!71952 s!2326) (t!379272 s!2326) s!2326))))

(declare-fun e!3975403 () Option!16334)

(assert (=> b!6567498 (= e!3975403 (findConcatSeparationZippers!208 lt!2407823 lt!2407785 (++!14588 Nil!65504 (Cons!65504 (h!71952 s!2326) Nil!65504)) (t!379272 s!2326) s!2326))))

(declare-fun b!6567499 () Bool)

(assert (=> b!6567499 (= e!3975402 (matchZipper!2455 lt!2407785 s!2326))))

(declare-fun b!6567500 () Bool)

(declare-fun res!2695221 () Bool)

(assert (=> b!6567500 (=> (not res!2695221) (not e!3975400))))

(assert (=> b!6567500 (= res!2695221 (matchZipper!2455 lt!2407785 (_2!36725 (get!22746 lt!2407935))))))

(declare-fun b!6567501 () Bool)

(assert (=> b!6567501 (= e!3975403 None!16333)))

(declare-fun b!6567502 () Bool)

(assert (=> b!6567502 (= e!3975400 (= (++!14588 (_1!36725 (get!22746 lt!2407935)) (_2!36725 (get!22746 lt!2407935))) s!2326))))

(declare-fun b!6567503 () Bool)

(assert (=> b!6567503 (= e!3975401 e!3975403)))

(declare-fun c!1207134 () Bool)

(assert (=> b!6567503 (= c!1207134 ((_ is Nil!65504) s!2326))))

(declare-fun b!6567504 () Bool)

(assert (=> b!6567504 (= e!3975404 (not (isDefined!13037 lt!2407935)))))

(declare-fun b!6567505 () Bool)

(assert (=> b!6567505 (= e!3975401 (Some!16333 (tuple2!66845 Nil!65504 s!2326)))))

(declare-fun b!6567506 () Bool)

(declare-fun res!2695218 () Bool)

(assert (=> b!6567506 (=> (not res!2695218) (not e!3975400))))

(assert (=> b!6567506 (= res!2695218 (matchZipper!2455 lt!2407823 (_1!36725 (get!22746 lt!2407935))))))

(assert (= (and d!2060573 res!2695222) b!6567499))

(assert (= (and d!2060573 c!1207135) b!6567505))

(assert (= (and d!2060573 (not c!1207135)) b!6567503))

(assert (= (and b!6567503 c!1207134) b!6567501))

(assert (= (and b!6567503 (not c!1207134)) b!6567498))

(assert (= (and d!2060573 res!2695220) b!6567506))

(assert (= (and b!6567506 res!2695218) b!6567500))

(assert (= (and b!6567500 res!2695221) b!6567502))

(assert (= (and d!2060573 (not res!2695219)) b!6567504))

(declare-fun m!7349784 () Bool)

(assert (=> b!6567504 m!7349784))

(declare-fun m!7349786 () Bool)

(assert (=> b!6567502 m!7349786))

(declare-fun m!7349788 () Bool)

(assert (=> b!6567502 m!7349788))

(declare-fun m!7349790 () Bool)

(assert (=> b!6567498 m!7349790))

(assert (=> b!6567498 m!7349790))

(declare-fun m!7349792 () Bool)

(assert (=> b!6567498 m!7349792))

(declare-fun m!7349794 () Bool)

(assert (=> b!6567498 m!7349794))

(assert (=> b!6567498 m!7349790))

(declare-fun m!7349796 () Bool)

(assert (=> b!6567498 m!7349796))

(assert (=> d!2060573 m!7349784))

(declare-fun m!7349798 () Bool)

(assert (=> d!2060573 m!7349798))

(declare-fun m!7349800 () Bool)

(assert (=> d!2060573 m!7349800))

(declare-fun m!7349802 () Bool)

(assert (=> b!6567499 m!7349802))

(assert (=> b!6567500 m!7349786))

(declare-fun m!7349804 () Bool)

(assert (=> b!6567500 m!7349804))

(assert (=> b!6567506 m!7349786))

(declare-fun m!7349806 () Bool)

(assert (=> b!6567506 m!7349806))

(assert (=> b!6566968 d!2060573))

(declare-fun bs!1677512 () Bool)

(declare-fun b!6567608 () Bool)

(assert (= bs!1677512 (and b!6567608 b!6566938)))

(declare-fun lambda!365637 () Int)

(assert (=> bs!1677512 (not (= lambda!365637 lambda!365579))))

(declare-fun bs!1677514 () Bool)

(assert (= bs!1677514 (and b!6567608 b!6566942)))

(assert (=> bs!1677514 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (reg!16772 lt!2407832) (reg!16772 (regOne!33398 r!7292))) (= lt!2407832 lt!2407775)) (= lambda!365637 lambda!365587))))

(assert (=> bs!1677514 (not (= lambda!365637 lambda!365586))))

(assert (=> bs!1677514 (not (= lambda!365637 lambda!365585))))

(declare-fun bs!1677515 () Bool)

(assert (= bs!1677515 (and b!6567608 b!6566944)))

(assert (=> bs!1677515 (not (= lambda!365637 lambda!365584))))

(assert (=> bs!1677515 (not (= lambda!365637 lambda!365583))))

(assert (=> bs!1677512 (not (= lambda!365637 lambda!365578))))

(assert (=> b!6567608 true))

(assert (=> b!6567608 true))

(declare-fun bs!1677519 () Bool)

(declare-fun b!6567605 () Bool)

(assert (= bs!1677519 (and b!6567605 b!6566938)))

(declare-fun lambda!365639 () Int)

(assert (=> bs!1677519 (= (and (= (regOne!33398 lt!2407832) (regOne!33398 r!7292)) (= (regTwo!33398 lt!2407832) (regTwo!33398 r!7292))) (= lambda!365639 lambda!365579))))

(declare-fun bs!1677521 () Bool)

(assert (= bs!1677521 (and b!6567605 b!6566942)))

(assert (=> bs!1677521 (not (= lambda!365639 lambda!365587))))

(assert (=> bs!1677521 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 lt!2407832) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 lt!2407832) lt!2407775)) (= lambda!365639 lambda!365586))))

(assert (=> bs!1677521 (not (= lambda!365639 lambda!365585))))

(declare-fun bs!1677525 () Bool)

(assert (= bs!1677525 (and b!6567605 b!6566944)))

(assert (=> bs!1677525 (= (and (= (regOne!33398 lt!2407832) lt!2407774) (= (regTwo!33398 lt!2407832) (regTwo!33398 r!7292))) (= lambda!365639 lambda!365584))))

(declare-fun bs!1677527 () Bool)

(assert (= bs!1677527 (and b!6567605 b!6567608)))

(assert (=> bs!1677527 (not (= lambda!365639 lambda!365637))))

(assert (=> bs!1677525 (not (= lambda!365639 lambda!365583))))

(assert (=> bs!1677519 (not (= lambda!365639 lambda!365578))))

(assert (=> b!6567605 true))

(assert (=> b!6567605 true))

(declare-fun e!3975461 () Bool)

(declare-fun call!571391 () Bool)

(assert (=> b!6567605 (= e!3975461 call!571391)))

(declare-fun b!6567606 () Bool)

(declare-fun e!3975459 () Bool)

(declare-fun call!571390 () Bool)

(assert (=> b!6567606 (= e!3975459 call!571390)))

(declare-fun b!6567607 () Bool)

(declare-fun res!2695270 () Bool)

(declare-fun e!3975458 () Bool)

(assert (=> b!6567607 (=> res!2695270 e!3975458)))

(assert (=> b!6567607 (= res!2695270 call!571390)))

(assert (=> b!6567607 (= e!3975461 e!3975458)))

(declare-fun bm!571385 () Bool)

(assert (=> bm!571385 (= call!571390 (isEmpty!37753 s!2326))))

(assert (=> b!6567608 (= e!3975458 call!571391)))

(declare-fun b!6567609 () Bool)

(declare-fun e!3975464 () Bool)

(assert (=> b!6567609 (= e!3975464 (= s!2326 (Cons!65504 (c!1206990 lt!2407832) Nil!65504)))))

(declare-fun b!6567610 () Bool)

(declare-fun c!1207162 () Bool)

(assert (=> b!6567610 (= c!1207162 ((_ is Union!16443) lt!2407832))))

(declare-fun e!3975463 () Bool)

(assert (=> b!6567610 (= e!3975464 e!3975463)))

(declare-fun d!2060603 () Bool)

(declare-fun c!1207163 () Bool)

(assert (=> d!2060603 (= c!1207163 ((_ is EmptyExpr!16443) lt!2407832))))

(assert (=> d!2060603 (= (matchRSpec!3544 lt!2407832 s!2326) e!3975459)))

(declare-fun b!6567611 () Bool)

(assert (=> b!6567611 (= e!3975463 e!3975461)))

(declare-fun c!1207164 () Bool)

(assert (=> b!6567611 (= c!1207164 ((_ is Star!16443) lt!2407832))))

(declare-fun bm!571386 () Bool)

(assert (=> bm!571386 (= call!571391 (Exists!3513 (ite c!1207164 lambda!365637 lambda!365639)))))

(declare-fun b!6567612 () Bool)

(declare-fun e!3975462 () Bool)

(assert (=> b!6567612 (= e!3975462 (matchRSpec!3544 (regTwo!33399 lt!2407832) s!2326))))

(declare-fun b!6567613 () Bool)

(declare-fun e!3975460 () Bool)

(assert (=> b!6567613 (= e!3975459 e!3975460)))

(declare-fun res!2695271 () Bool)

(assert (=> b!6567613 (= res!2695271 (not ((_ is EmptyLang!16443) lt!2407832)))))

(assert (=> b!6567613 (=> (not res!2695271) (not e!3975460))))

(declare-fun b!6567614 () Bool)

(assert (=> b!6567614 (= e!3975463 e!3975462)))

(declare-fun res!2695269 () Bool)

(assert (=> b!6567614 (= res!2695269 (matchRSpec!3544 (regOne!33399 lt!2407832) s!2326))))

(assert (=> b!6567614 (=> res!2695269 e!3975462)))

(declare-fun b!6567615 () Bool)

(declare-fun c!1207161 () Bool)

(assert (=> b!6567615 (= c!1207161 ((_ is ElementMatch!16443) lt!2407832))))

(assert (=> b!6567615 (= e!3975460 e!3975464)))

(assert (= (and d!2060603 c!1207163) b!6567606))

(assert (= (and d!2060603 (not c!1207163)) b!6567613))

(assert (= (and b!6567613 res!2695271) b!6567615))

(assert (= (and b!6567615 c!1207161) b!6567609))

(assert (= (and b!6567615 (not c!1207161)) b!6567610))

(assert (= (and b!6567610 c!1207162) b!6567614))

(assert (= (and b!6567610 (not c!1207162)) b!6567611))

(assert (= (and b!6567614 (not res!2695269)) b!6567612))

(assert (= (and b!6567611 c!1207164) b!6567607))

(assert (= (and b!6567611 (not c!1207164)) b!6567605))

(assert (= (and b!6567607 (not res!2695270)) b!6567608))

(assert (= (or b!6567608 b!6567605) bm!571386))

(assert (= (or b!6567606 b!6567607) bm!571385))

(declare-fun m!7349854 () Bool)

(assert (=> bm!571385 m!7349854))

(declare-fun m!7349856 () Bool)

(assert (=> bm!571386 m!7349856))

(declare-fun m!7349858 () Bool)

(assert (=> b!6567612 m!7349858))

(declare-fun m!7349860 () Bool)

(assert (=> b!6567614 m!7349860))

(assert (=> b!6566969 d!2060603))

(declare-fun b!6567662 () Bool)

(declare-fun e!3975492 () Bool)

(declare-fun lt!2407949 () Bool)

(assert (=> b!6567662 (= e!3975492 (not lt!2407949))))

(declare-fun b!6567663 () Bool)

(declare-fun res!2695303 () Bool)

(declare-fun e!3975490 () Bool)

(assert (=> b!6567663 (=> (not res!2695303) (not e!3975490))))

(declare-fun call!571395 () Bool)

(assert (=> b!6567663 (= res!2695303 (not call!571395))))

(declare-fun b!6567664 () Bool)

(declare-fun e!3975493 () Bool)

(assert (=> b!6567664 (= e!3975493 (= lt!2407949 call!571395))))

(declare-fun b!6567665 () Bool)

(declare-fun e!3975488 () Bool)

(assert (=> b!6567665 (= e!3975488 (nullable!6436 lt!2407832))))

(declare-fun d!2060619 () Bool)

(assert (=> d!2060619 e!3975493))

(declare-fun c!1207178 () Bool)

(assert (=> d!2060619 (= c!1207178 ((_ is EmptyExpr!16443) lt!2407832))))

(assert (=> d!2060619 (= lt!2407949 e!3975488)))

(declare-fun c!1207177 () Bool)

(assert (=> d!2060619 (= c!1207177 (isEmpty!37753 s!2326))))

(assert (=> d!2060619 (validRegex!8179 lt!2407832)))

(assert (=> d!2060619 (= (matchR!8626 lt!2407832 s!2326) lt!2407949)))

(declare-fun b!6567666 () Bool)

(declare-fun res!2695300 () Bool)

(declare-fun e!3975491 () Bool)

(assert (=> b!6567666 (=> res!2695300 e!3975491)))

(assert (=> b!6567666 (= res!2695300 (not (isEmpty!37753 (tail!12422 s!2326))))))

(declare-fun b!6567667 () Bool)

(assert (=> b!6567667 (= e!3975493 e!3975492)))

(declare-fun c!1207176 () Bool)

(assert (=> b!6567667 (= c!1207176 ((_ is EmptyLang!16443) lt!2407832))))

(declare-fun b!6567668 () Bool)

(declare-fun res!2695298 () Bool)

(declare-fun e!3975494 () Bool)

(assert (=> b!6567668 (=> res!2695298 e!3975494)))

(assert (=> b!6567668 (= res!2695298 (not ((_ is ElementMatch!16443) lt!2407832)))))

(assert (=> b!6567668 (= e!3975492 e!3975494)))

(declare-fun b!6567669 () Bool)

(assert (=> b!6567669 (= e!3975491 (not (= (head!13337 s!2326) (c!1206990 lt!2407832))))))

(declare-fun b!6567670 () Bool)

(declare-fun derivativeStep!5127 (Regex!16443 C!33156) Regex!16443)

(assert (=> b!6567670 (= e!3975488 (matchR!8626 (derivativeStep!5127 lt!2407832 (head!13337 s!2326)) (tail!12422 s!2326)))))

(declare-fun b!6567671 () Bool)

(declare-fun res!2695299 () Bool)

(assert (=> b!6567671 (=> (not res!2695299) (not e!3975490))))

(assert (=> b!6567671 (= res!2695299 (isEmpty!37753 (tail!12422 s!2326)))))

(declare-fun b!6567672 () Bool)

(declare-fun e!3975489 () Bool)

(assert (=> b!6567672 (= e!3975489 e!3975491)))

(declare-fun res!2695301 () Bool)

(assert (=> b!6567672 (=> res!2695301 e!3975491)))

(assert (=> b!6567672 (= res!2695301 call!571395)))

(declare-fun b!6567673 () Bool)

(declare-fun res!2695297 () Bool)

(assert (=> b!6567673 (=> res!2695297 e!3975494)))

(assert (=> b!6567673 (= res!2695297 e!3975490)))

(declare-fun res!2695296 () Bool)

(assert (=> b!6567673 (=> (not res!2695296) (not e!3975490))))

(assert (=> b!6567673 (= res!2695296 lt!2407949)))

(declare-fun bm!571390 () Bool)

(assert (=> bm!571390 (= call!571395 (isEmpty!37753 s!2326))))

(declare-fun b!6567674 () Bool)

(assert (=> b!6567674 (= e!3975494 e!3975489)))

(declare-fun res!2695302 () Bool)

(assert (=> b!6567674 (=> (not res!2695302) (not e!3975489))))

(assert (=> b!6567674 (= res!2695302 (not lt!2407949))))

(declare-fun b!6567675 () Bool)

(assert (=> b!6567675 (= e!3975490 (= (head!13337 s!2326) (c!1206990 lt!2407832)))))

(assert (= (and d!2060619 c!1207177) b!6567665))

(assert (= (and d!2060619 (not c!1207177)) b!6567670))

(assert (= (and d!2060619 c!1207178) b!6567664))

(assert (= (and d!2060619 (not c!1207178)) b!6567667))

(assert (= (and b!6567667 c!1207176) b!6567662))

(assert (= (and b!6567667 (not c!1207176)) b!6567668))

(assert (= (and b!6567668 (not res!2695298)) b!6567673))

(assert (= (and b!6567673 res!2695296) b!6567663))

(assert (= (and b!6567663 res!2695303) b!6567671))

(assert (= (and b!6567671 res!2695299) b!6567675))

(assert (= (and b!6567673 (not res!2695297)) b!6567674))

(assert (= (and b!6567674 res!2695302) b!6567672))

(assert (= (and b!6567672 (not res!2695301)) b!6567666))

(assert (= (and b!6567666 (not res!2695300)) b!6567669))

(assert (= (or b!6567664 b!6567663 b!6567672) bm!571390))

(declare-fun m!7349888 () Bool)

(assert (=> b!6567670 m!7349888))

(assert (=> b!6567670 m!7349888))

(declare-fun m!7349890 () Bool)

(assert (=> b!6567670 m!7349890))

(declare-fun m!7349892 () Bool)

(assert (=> b!6567670 m!7349892))

(assert (=> b!6567670 m!7349890))

(assert (=> b!6567670 m!7349892))

(declare-fun m!7349894 () Bool)

(assert (=> b!6567670 m!7349894))

(assert (=> bm!571390 m!7349854))

(assert (=> b!6567669 m!7349888))

(assert (=> b!6567666 m!7349892))

(assert (=> b!6567666 m!7349892))

(declare-fun m!7349896 () Bool)

(assert (=> b!6567666 m!7349896))

(assert (=> b!6567675 m!7349888))

(declare-fun m!7349898 () Bool)

(assert (=> b!6567665 m!7349898))

(assert (=> d!2060619 m!7349854))

(declare-fun m!7349900 () Bool)

(assert (=> d!2060619 m!7349900))

(assert (=> b!6567671 m!7349892))

(assert (=> b!6567671 m!7349892))

(assert (=> b!6567671 m!7349896))

(assert (=> b!6566969 d!2060619))

(declare-fun d!2060635 () Bool)

(assert (=> d!2060635 (= (matchR!8626 lt!2407832 s!2326) (matchRSpec!3544 lt!2407832 s!2326))))

(declare-fun lt!2407952 () Unit!159107)

(declare-fun choose!49036 (Regex!16443 List!65628) Unit!159107)

(assert (=> d!2060635 (= lt!2407952 (choose!49036 lt!2407832 s!2326))))

(assert (=> d!2060635 (validRegex!8179 lt!2407832)))

(assert (=> d!2060635 (= (mainMatchTheorem!3544 lt!2407832 s!2326) lt!2407952)))

(declare-fun bs!1677537 () Bool)

(assert (= bs!1677537 d!2060635))

(assert (=> bs!1677537 m!7349198))

(assert (=> bs!1677537 m!7349196))

(declare-fun m!7349902 () Bool)

(assert (=> bs!1677537 m!7349902))

(assert (=> bs!1677537 m!7349900))

(assert (=> b!6566969 d!2060635))

(declare-fun d!2060637 () Bool)

(assert (=> d!2060637 (= (matchR!8626 lt!2407779 s!2326) (matchRSpec!3544 lt!2407779 s!2326))))

(declare-fun lt!2407953 () Unit!159107)

(assert (=> d!2060637 (= lt!2407953 (choose!49036 lt!2407779 s!2326))))

(assert (=> d!2060637 (validRegex!8179 lt!2407779)))

(assert (=> d!2060637 (= (mainMatchTheorem!3544 lt!2407779 s!2326) lt!2407953)))

(declare-fun bs!1677538 () Bool)

(assert (= bs!1677538 d!2060637))

(assert (=> bs!1677538 m!7349106))

(assert (=> bs!1677538 m!7349126))

(declare-fun m!7349904 () Bool)

(assert (=> bs!1677538 m!7349904))

(declare-fun m!7349906 () Bool)

(assert (=> bs!1677538 m!7349906))

(assert (=> b!6566944 d!2060637))

(declare-fun d!2060639 () Bool)

(declare-fun choose!49037 (Int) Bool)

(assert (=> d!2060639 (= (Exists!3513 lambda!365583) (choose!49037 lambda!365583))))

(declare-fun bs!1677539 () Bool)

(assert (= bs!1677539 d!2060639))

(declare-fun m!7349908 () Bool)

(assert (=> bs!1677539 m!7349908))

(assert (=> b!6566944 d!2060639))

(declare-fun b!6567686 () Bool)

(declare-fun e!3975505 () Bool)

(declare-fun lt!2407960 () Bool)

(assert (=> b!6567686 (= e!3975505 (not lt!2407960))))

(declare-fun b!6567687 () Bool)

(declare-fun res!2695313 () Bool)

(declare-fun e!3975503 () Bool)

(assert (=> b!6567687 (=> (not res!2695313) (not e!3975503))))

(declare-fun call!571396 () Bool)

(assert (=> b!6567687 (= res!2695313 (not call!571396))))

(declare-fun b!6567688 () Bool)

(declare-fun e!3975506 () Bool)

(assert (=> b!6567688 (= e!3975506 (= lt!2407960 call!571396))))

(declare-fun b!6567689 () Bool)

(declare-fun e!3975501 () Bool)

(assert (=> b!6567689 (= e!3975501 (nullable!6436 lt!2407774))))

(declare-fun d!2060641 () Bool)

(assert (=> d!2060641 e!3975506))

(declare-fun c!1207185 () Bool)

(assert (=> d!2060641 (= c!1207185 ((_ is EmptyExpr!16443) lt!2407774))))

(assert (=> d!2060641 (= lt!2407960 e!3975501)))

(declare-fun c!1207184 () Bool)

(assert (=> d!2060641 (= c!1207184 (isEmpty!37753 (_1!36725 lt!2407811)))))

(assert (=> d!2060641 (validRegex!8179 lt!2407774)))

(assert (=> d!2060641 (= (matchR!8626 lt!2407774 (_1!36725 lt!2407811)) lt!2407960)))

(declare-fun b!6567690 () Bool)

(declare-fun res!2695310 () Bool)

(declare-fun e!3975504 () Bool)

(assert (=> b!6567690 (=> res!2695310 e!3975504)))

(assert (=> b!6567690 (= res!2695310 (not (isEmpty!37753 (tail!12422 (_1!36725 lt!2407811)))))))

(declare-fun b!6567691 () Bool)

(assert (=> b!6567691 (= e!3975506 e!3975505)))

(declare-fun c!1207183 () Bool)

(assert (=> b!6567691 (= c!1207183 ((_ is EmptyLang!16443) lt!2407774))))

(declare-fun b!6567692 () Bool)

(declare-fun res!2695308 () Bool)

(declare-fun e!3975507 () Bool)

(assert (=> b!6567692 (=> res!2695308 e!3975507)))

(assert (=> b!6567692 (= res!2695308 (not ((_ is ElementMatch!16443) lt!2407774)))))

(assert (=> b!6567692 (= e!3975505 e!3975507)))

(declare-fun b!6567693 () Bool)

(assert (=> b!6567693 (= e!3975504 (not (= (head!13337 (_1!36725 lt!2407811)) (c!1206990 lt!2407774))))))

(declare-fun b!6567694 () Bool)

(assert (=> b!6567694 (= e!3975501 (matchR!8626 (derivativeStep!5127 lt!2407774 (head!13337 (_1!36725 lt!2407811))) (tail!12422 (_1!36725 lt!2407811))))))

(declare-fun b!6567695 () Bool)

(declare-fun res!2695309 () Bool)

(assert (=> b!6567695 (=> (not res!2695309) (not e!3975503))))

(assert (=> b!6567695 (= res!2695309 (isEmpty!37753 (tail!12422 (_1!36725 lt!2407811))))))

(declare-fun b!6567696 () Bool)

(declare-fun e!3975502 () Bool)

(assert (=> b!6567696 (= e!3975502 e!3975504)))

(declare-fun res!2695311 () Bool)

(assert (=> b!6567696 (=> res!2695311 e!3975504)))

(assert (=> b!6567696 (= res!2695311 call!571396)))

(declare-fun b!6567697 () Bool)

(declare-fun res!2695307 () Bool)

(assert (=> b!6567697 (=> res!2695307 e!3975507)))

(assert (=> b!6567697 (= res!2695307 e!3975503)))

(declare-fun res!2695306 () Bool)

(assert (=> b!6567697 (=> (not res!2695306) (not e!3975503))))

(assert (=> b!6567697 (= res!2695306 lt!2407960)))

(declare-fun bm!571391 () Bool)

(assert (=> bm!571391 (= call!571396 (isEmpty!37753 (_1!36725 lt!2407811)))))

(declare-fun b!6567698 () Bool)

(assert (=> b!6567698 (= e!3975507 e!3975502)))

(declare-fun res!2695312 () Bool)

(assert (=> b!6567698 (=> (not res!2695312) (not e!3975502))))

(assert (=> b!6567698 (= res!2695312 (not lt!2407960))))

(declare-fun b!6567699 () Bool)

(assert (=> b!6567699 (= e!3975503 (= (head!13337 (_1!36725 lt!2407811)) (c!1206990 lt!2407774)))))

(assert (= (and d!2060641 c!1207184) b!6567689))

(assert (= (and d!2060641 (not c!1207184)) b!6567694))

(assert (= (and d!2060641 c!1207185) b!6567688))

(assert (= (and d!2060641 (not c!1207185)) b!6567691))

(assert (= (and b!6567691 c!1207183) b!6567686))

(assert (= (and b!6567691 (not c!1207183)) b!6567692))

(assert (= (and b!6567692 (not res!2695308)) b!6567697))

(assert (= (and b!6567697 res!2695306) b!6567687))

(assert (= (and b!6567687 res!2695313) b!6567695))

(assert (= (and b!6567695 res!2695309) b!6567699))

(assert (= (and b!6567697 (not res!2695307)) b!6567698))

(assert (= (and b!6567698 res!2695312) b!6567696))

(assert (= (and b!6567696 (not res!2695311)) b!6567690))

(assert (= (and b!6567690 (not res!2695310)) b!6567693))

(assert (= (or b!6567688 b!6567687 b!6567696) bm!571391))

(declare-fun m!7349910 () Bool)

(assert (=> b!6567694 m!7349910))

(assert (=> b!6567694 m!7349910))

(declare-fun m!7349912 () Bool)

(assert (=> b!6567694 m!7349912))

(declare-fun m!7349914 () Bool)

(assert (=> b!6567694 m!7349914))

(assert (=> b!6567694 m!7349912))

(assert (=> b!6567694 m!7349914))

(declare-fun m!7349916 () Bool)

(assert (=> b!6567694 m!7349916))

(declare-fun m!7349918 () Bool)

(assert (=> bm!571391 m!7349918))

(assert (=> b!6567693 m!7349910))

(assert (=> b!6567690 m!7349914))

(assert (=> b!6567690 m!7349914))

(declare-fun m!7349920 () Bool)

(assert (=> b!6567690 m!7349920))

(assert (=> b!6567699 m!7349910))

(declare-fun m!7349922 () Bool)

(assert (=> b!6567689 m!7349922))

(assert (=> d!2060641 m!7349918))

(declare-fun m!7349924 () Bool)

(assert (=> d!2060641 m!7349924))

(assert (=> b!6567695 m!7349914))

(assert (=> b!6567695 m!7349914))

(assert (=> b!6567695 m!7349920))

(assert (=> b!6566944 d!2060641))

(declare-fun b!6567725 () Bool)

(declare-fun e!3975522 () List!65629)

(assert (=> b!6567725 (= e!3975522 lt!2407825)))

(declare-fun b!6567728 () Bool)

(declare-fun e!3975521 () Bool)

(declare-fun lt!2407966 () List!65629)

(assert (=> b!6567728 (= e!3975521 (or (not (= lt!2407825 Nil!65505)) (= lt!2407966 lt!2407797)))))

(declare-fun d!2060643 () Bool)

(assert (=> d!2060643 e!3975521))

(declare-fun res!2695331 () Bool)

(assert (=> d!2060643 (=> (not res!2695331) (not e!3975521))))

(declare-fun content!12610 (List!65629) (InoxSet Regex!16443))

(assert (=> d!2060643 (= res!2695331 (= (content!12610 lt!2407966) ((_ map or) (content!12610 lt!2407797) (content!12610 lt!2407825))))))

(assert (=> d!2060643 (= lt!2407966 e!3975522)))

(declare-fun c!1207190 () Bool)

(assert (=> d!2060643 (= c!1207190 ((_ is Nil!65505) lt!2407797))))

(assert (=> d!2060643 (= (++!14589 lt!2407797 lt!2407825) lt!2407966)))

(declare-fun b!6567726 () Bool)

(assert (=> b!6567726 (= e!3975522 (Cons!65505 (h!71953 lt!2407797) (++!14589 (t!379273 lt!2407797) lt!2407825)))))

(declare-fun b!6567727 () Bool)

(declare-fun res!2695332 () Bool)

(assert (=> b!6567727 (=> (not res!2695332) (not e!3975521))))

(declare-fun size!40536 (List!65629) Int)

(assert (=> b!6567727 (= res!2695332 (= (size!40536 lt!2407966) (+ (size!40536 lt!2407797) (size!40536 lt!2407825))))))

(assert (= (and d!2060643 c!1207190) b!6567725))

(assert (= (and d!2060643 (not c!1207190)) b!6567726))

(assert (= (and d!2060643 res!2695331) b!6567727))

(assert (= (and b!6567727 res!2695332) b!6567728))

(declare-fun m!7349944 () Bool)

(assert (=> d!2060643 m!7349944))

(declare-fun m!7349946 () Bool)

(assert (=> d!2060643 m!7349946))

(declare-fun m!7349948 () Bool)

(assert (=> d!2060643 m!7349948))

(declare-fun m!7349950 () Bool)

(assert (=> b!6567726 m!7349950))

(declare-fun m!7349952 () Bool)

(assert (=> b!6567727 m!7349952))

(declare-fun m!7349954 () Bool)

(assert (=> b!6567727 m!7349954))

(declare-fun m!7349956 () Bool)

(assert (=> b!6567727 m!7349956))

(assert (=> b!6566944 d!2060643))

(declare-fun bs!1677547 () Bool)

(declare-fun d!2060647 () Bool)

(assert (= bs!1677547 (and d!2060647 b!6566938)))

(declare-fun lambda!365644 () Int)

(assert (=> bs!1677547 (not (= lambda!365644 lambda!365579))))

(declare-fun bs!1677548 () Bool)

(assert (= bs!1677548 (and d!2060647 b!6566942)))

(assert (=> bs!1677548 (not (= lambda!365644 lambda!365587))))

(assert (=> bs!1677548 (not (= lambda!365644 lambda!365586))))

(assert (=> bs!1677548 (= (and (= s!2326 (_1!36725 lt!2407811)) (= lt!2407774 (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365644 lambda!365585))))

(declare-fun bs!1677549 () Bool)

(assert (= bs!1677549 (and d!2060647 b!6566944)))

(assert (=> bs!1677549 (not (= lambda!365644 lambda!365584))))

(declare-fun bs!1677550 () Bool)

(assert (= bs!1677550 (and d!2060647 b!6567608)))

(assert (=> bs!1677550 (not (= lambda!365644 lambda!365637))))

(assert (=> bs!1677549 (= lambda!365644 lambda!365583)))

(assert (=> bs!1677547 (= (= lt!2407774 (regOne!33398 r!7292)) (= lambda!365644 lambda!365578))))

(declare-fun bs!1677551 () Bool)

(assert (= bs!1677551 (and d!2060647 b!6567605)))

(assert (=> bs!1677551 (not (= lambda!365644 lambda!365639))))

(assert (=> d!2060647 true))

(assert (=> d!2060647 true))

(assert (=> d!2060647 true))

(declare-fun lambda!365645 () Int)

(assert (=> bs!1677547 (= (= lt!2407774 (regOne!33398 r!7292)) (= lambda!365645 lambda!365579))))

(assert (=> bs!1677548 (not (= lambda!365645 lambda!365587))))

(assert (=> bs!1677548 (= (and (= s!2326 (_1!36725 lt!2407811)) (= lt!2407774 (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365645 lambda!365586))))

(assert (=> bs!1677548 (not (= lambda!365645 lambda!365585))))

(assert (=> bs!1677549 (= lambda!365645 lambda!365584)))

(assert (=> bs!1677550 (not (= lambda!365645 lambda!365637))))

(assert (=> bs!1677549 (not (= lambda!365645 lambda!365583))))

(declare-fun bs!1677552 () Bool)

(assert (= bs!1677552 d!2060647))

(assert (=> bs!1677552 (not (= lambda!365645 lambda!365644))))

(assert (=> bs!1677547 (not (= lambda!365645 lambda!365578))))

(assert (=> bs!1677551 (= (and (= lt!2407774 (regOne!33398 lt!2407832)) (= (regTwo!33398 r!7292) (regTwo!33398 lt!2407832))) (= lambda!365645 lambda!365639))))

(assert (=> d!2060647 true))

(assert (=> d!2060647 true))

(assert (=> d!2060647 true))

(assert (=> d!2060647 (= (Exists!3513 lambda!365644) (Exists!3513 lambda!365645))))

(declare-fun lt!2407976 () Unit!159107)

(declare-fun choose!49038 (Regex!16443 Regex!16443 List!65628) Unit!159107)

(assert (=> d!2060647 (= lt!2407976 (choose!49038 lt!2407774 (regTwo!33398 r!7292) s!2326))))

(assert (=> d!2060647 (validRegex!8179 lt!2407774)))

(assert (=> d!2060647 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2050 lt!2407774 (regTwo!33398 r!7292) s!2326) lt!2407976)))

(declare-fun m!7350012 () Bool)

(assert (=> bs!1677552 m!7350012))

(declare-fun m!7350014 () Bool)

(assert (=> bs!1677552 m!7350014))

(declare-fun m!7350016 () Bool)

(assert (=> bs!1677552 m!7350016))

(assert (=> bs!1677552 m!7349924))

(assert (=> b!6566944 d!2060647))

(declare-fun d!2060669 () Bool)

(assert (=> d!2060669 (= (get!22746 lt!2407780) (v!52518 lt!2407780))))

(assert (=> b!6566944 d!2060669))

(declare-fun d!2060671 () Bool)

(assert (=> d!2060671 (= (matchR!8626 (Concat!25288 (Concat!25288 (reg!16772 (regOne!33398 r!7292)) lt!2407775) (regTwo!33398 r!7292)) s!2326) (matchR!8626 (Concat!25288 (reg!16772 (regOne!33398 r!7292)) (Concat!25288 lt!2407775 (regTwo!33398 r!7292))) s!2326))))

(declare-fun lt!2407982 () Unit!159107)

(declare-fun choose!49039 (Regex!16443 Regex!16443 Regex!16443 List!65628) Unit!159107)

(assert (=> d!2060671 (= lt!2407982 (choose!49039 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (regTwo!33398 r!7292) s!2326))))

(declare-fun e!3975555 () Bool)

(assert (=> d!2060671 e!3975555))

(declare-fun res!2695355 () Bool)

(assert (=> d!2060671 (=> (not res!2695355) (not e!3975555))))

(assert (=> d!2060671 (= res!2695355 (validRegex!8179 (reg!16772 (regOne!33398 r!7292))))))

(assert (=> d!2060671 (= (lemmaConcatAssociative!140 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (regTwo!33398 r!7292) s!2326) lt!2407982)))

(declare-fun b!6567785 () Bool)

(declare-fun res!2695356 () Bool)

(assert (=> b!6567785 (=> (not res!2695356) (not e!3975555))))

(assert (=> b!6567785 (= res!2695356 (validRegex!8179 lt!2407775))))

(declare-fun b!6567786 () Bool)

(assert (=> b!6567786 (= e!3975555 (validRegex!8179 (regTwo!33398 r!7292)))))

(assert (= (and d!2060671 res!2695355) b!6567785))

(assert (= (and b!6567785 res!2695356) b!6567786))

(declare-fun m!7350018 () Bool)

(assert (=> d!2060671 m!7350018))

(declare-fun m!7350020 () Bool)

(assert (=> d!2060671 m!7350020))

(declare-fun m!7350022 () Bool)

(assert (=> d!2060671 m!7350022))

(declare-fun m!7350024 () Bool)

(assert (=> d!2060671 m!7350024))

(assert (=> b!6567785 m!7349220))

(assert (=> b!6567786 m!7349148))

(assert (=> b!6566944 d!2060671))

(declare-fun d!2060673 () Bool)

(declare-fun forall!15615 (List!65629 Int) Bool)

(assert (=> d!2060673 (forall!15615 (++!14589 lt!2407797 lt!2407825) lambda!365582)))

(declare-fun lt!2407986 () Unit!159107)

(declare-fun choose!49040 (List!65629 List!65629 Int) Unit!159107)

(assert (=> d!2060673 (= lt!2407986 (choose!49040 lt!2407797 lt!2407825 lambda!365582))))

(assert (=> d!2060673 (forall!15615 lt!2407797 lambda!365582)))

(assert (=> d!2060673 (= (lemmaConcatPreservesForall!416 lt!2407797 lt!2407825 lambda!365582) lt!2407986)))

(declare-fun bs!1677560 () Bool)

(assert (= bs!1677560 d!2060673))

(assert (=> bs!1677560 m!7349124))

(assert (=> bs!1677560 m!7349124))

(declare-fun m!7350046 () Bool)

(assert (=> bs!1677560 m!7350046))

(declare-fun m!7350048 () Bool)

(assert (=> bs!1677560 m!7350048))

(declare-fun m!7350050 () Bool)

(assert (=> bs!1677560 m!7350050))

(assert (=> b!6566944 d!2060673))

(declare-fun d!2060679 () Bool)

(assert (=> d!2060679 (= (Exists!3513 lambda!365584) (choose!49037 lambda!365584))))

(declare-fun bs!1677561 () Bool)

(assert (= bs!1677561 d!2060679))

(declare-fun m!7350052 () Bool)

(assert (=> bs!1677561 m!7350052))

(assert (=> b!6566944 d!2060679))

(declare-fun d!2060681 () Bool)

(declare-fun c!1207208 () Bool)

(assert (=> d!2060681 (= c!1207208 (isEmpty!37753 lt!2407788))))

(declare-fun e!3975556 () Bool)

(assert (=> d!2060681 (= (matchZipper!2455 (store ((as const (Array Context!11654 Bool)) false) (Context!11655 (++!14589 lt!2407797 lt!2407825)) true) lt!2407788) e!3975556)))

(declare-fun b!6567787 () Bool)

(assert (=> b!6567787 (= e!3975556 (nullableZipper!2188 (store ((as const (Array Context!11654 Bool)) false) (Context!11655 (++!14589 lt!2407797 lt!2407825)) true)))))

(declare-fun b!6567788 () Bool)

(assert (=> b!6567788 (= e!3975556 (matchZipper!2455 (derivationStepZipper!2409 (store ((as const (Array Context!11654 Bool)) false) (Context!11655 (++!14589 lt!2407797 lt!2407825)) true) (head!13337 lt!2407788)) (tail!12422 lt!2407788)))))

(assert (= (and d!2060681 c!1207208) b!6567787))

(assert (= (and d!2060681 (not c!1207208)) b!6567788))

(declare-fun m!7350054 () Bool)

(assert (=> d!2060681 m!7350054))

(assert (=> b!6567787 m!7349108))

(declare-fun m!7350056 () Bool)

(assert (=> b!6567787 m!7350056))

(declare-fun m!7350058 () Bool)

(assert (=> b!6567788 m!7350058))

(assert (=> b!6567788 m!7349108))

(assert (=> b!6567788 m!7350058))

(declare-fun m!7350060 () Bool)

(assert (=> b!6567788 m!7350060))

(declare-fun m!7350062 () Bool)

(assert (=> b!6567788 m!7350062))

(assert (=> b!6567788 m!7350060))

(assert (=> b!6567788 m!7350062))

(declare-fun m!7350064 () Bool)

(assert (=> b!6567788 m!7350064))

(assert (=> b!6566944 d!2060681))

(declare-fun d!2060683 () Bool)

(assert (=> d!2060683 (= (isDefined!13037 lt!2407780) (not (isEmpty!37754 lt!2407780)))))

(declare-fun bs!1677562 () Bool)

(assert (= bs!1677562 d!2060683))

(declare-fun m!7350066 () Bool)

(assert (=> bs!1677562 m!7350066))

(assert (=> b!6566944 d!2060683))

(declare-fun d!2060685 () Bool)

(assert (=> d!2060685 (= (matchR!8626 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407814)) (matchZipper!2455 lt!2407823 (_1!36725 lt!2407814)))))

(declare-fun lt!2407994 () Unit!159107)

(declare-fun choose!49041 ((InoxSet Context!11654) List!65630 Regex!16443 List!65628) Unit!159107)

(assert (=> d!2060685 (= lt!2407994 (choose!49041 lt!2407823 lt!2407831 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407814)))))

(assert (=> d!2060685 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060685 (= (theoremZipperRegexEquiv!879 lt!2407823 lt!2407831 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407814)) lt!2407994)))

(declare-fun bs!1677563 () Bool)

(assert (= bs!1677563 d!2060685))

(assert (=> bs!1677563 m!7349102))

(assert (=> bs!1677563 m!7349248))

(declare-fun m!7350076 () Bool)

(assert (=> bs!1677563 m!7350076))

(assert (=> bs!1677563 m!7350024))

(assert (=> b!6566944 d!2060685))

(declare-fun b!6567794 () Bool)

(declare-fun e!3975565 () Bool)

(declare-fun lt!2407995 () Bool)

(assert (=> b!6567794 (= e!3975565 (not lt!2407995))))

(declare-fun b!6567795 () Bool)

(declare-fun res!2695367 () Bool)

(declare-fun e!3975563 () Bool)

(assert (=> b!6567795 (=> (not res!2695367) (not e!3975563))))

(declare-fun call!571399 () Bool)

(assert (=> b!6567795 (= res!2695367 (not call!571399))))

(declare-fun b!6567796 () Bool)

(declare-fun e!3975566 () Bool)

(assert (=> b!6567796 (= e!3975566 (= lt!2407995 call!571399))))

(declare-fun b!6567797 () Bool)

(declare-fun e!3975561 () Bool)

(assert (=> b!6567797 (= e!3975561 (nullable!6436 lt!2407789))))

(declare-fun d!2060691 () Bool)

(assert (=> d!2060691 e!3975566))

(declare-fun c!1207213 () Bool)

(assert (=> d!2060691 (= c!1207213 ((_ is EmptyExpr!16443) lt!2407789))))

(assert (=> d!2060691 (= lt!2407995 e!3975561)))

(declare-fun c!1207212 () Bool)

(assert (=> d!2060691 (= c!1207212 (isEmpty!37753 (_2!36725 lt!2407814)))))

(assert (=> d!2060691 (validRegex!8179 lt!2407789)))

(assert (=> d!2060691 (= (matchR!8626 lt!2407789 (_2!36725 lt!2407814)) lt!2407995)))

(declare-fun b!6567798 () Bool)

(declare-fun res!2695364 () Bool)

(declare-fun e!3975564 () Bool)

(assert (=> b!6567798 (=> res!2695364 e!3975564)))

(assert (=> b!6567798 (= res!2695364 (not (isEmpty!37753 (tail!12422 (_2!36725 lt!2407814)))))))

(declare-fun b!6567799 () Bool)

(assert (=> b!6567799 (= e!3975566 e!3975565)))

(declare-fun c!1207211 () Bool)

(assert (=> b!6567799 (= c!1207211 ((_ is EmptyLang!16443) lt!2407789))))

(declare-fun b!6567800 () Bool)

(declare-fun res!2695362 () Bool)

(declare-fun e!3975567 () Bool)

(assert (=> b!6567800 (=> res!2695362 e!3975567)))

(assert (=> b!6567800 (= res!2695362 (not ((_ is ElementMatch!16443) lt!2407789)))))

(assert (=> b!6567800 (= e!3975565 e!3975567)))

(declare-fun b!6567801 () Bool)

(assert (=> b!6567801 (= e!3975564 (not (= (head!13337 (_2!36725 lt!2407814)) (c!1206990 lt!2407789))))))

(declare-fun b!6567802 () Bool)

(assert (=> b!6567802 (= e!3975561 (matchR!8626 (derivativeStep!5127 lt!2407789 (head!13337 (_2!36725 lt!2407814))) (tail!12422 (_2!36725 lt!2407814))))))

(declare-fun b!6567803 () Bool)

(declare-fun res!2695363 () Bool)

(assert (=> b!6567803 (=> (not res!2695363) (not e!3975563))))

(assert (=> b!6567803 (= res!2695363 (isEmpty!37753 (tail!12422 (_2!36725 lt!2407814))))))

(declare-fun b!6567804 () Bool)

(declare-fun e!3975562 () Bool)

(assert (=> b!6567804 (= e!3975562 e!3975564)))

(declare-fun res!2695365 () Bool)

(assert (=> b!6567804 (=> res!2695365 e!3975564)))

(assert (=> b!6567804 (= res!2695365 call!571399)))

(declare-fun b!6567805 () Bool)

(declare-fun res!2695361 () Bool)

(assert (=> b!6567805 (=> res!2695361 e!3975567)))

(assert (=> b!6567805 (= res!2695361 e!3975563)))

(declare-fun res!2695360 () Bool)

(assert (=> b!6567805 (=> (not res!2695360) (not e!3975563))))

(assert (=> b!6567805 (= res!2695360 lt!2407995)))

(declare-fun bm!571394 () Bool)

(assert (=> bm!571394 (= call!571399 (isEmpty!37753 (_2!36725 lt!2407814)))))

(declare-fun b!6567806 () Bool)

(assert (=> b!6567806 (= e!3975567 e!3975562)))

(declare-fun res!2695366 () Bool)

(assert (=> b!6567806 (=> (not res!2695366) (not e!3975562))))

(assert (=> b!6567806 (= res!2695366 (not lt!2407995))))

(declare-fun b!6567807 () Bool)

(assert (=> b!6567807 (= e!3975563 (= (head!13337 (_2!36725 lt!2407814)) (c!1206990 lt!2407789)))))

(assert (= (and d!2060691 c!1207212) b!6567797))

(assert (= (and d!2060691 (not c!1207212)) b!6567802))

(assert (= (and d!2060691 c!1207213) b!6567796))

(assert (= (and d!2060691 (not c!1207213)) b!6567799))

(assert (= (and b!6567799 c!1207211) b!6567794))

(assert (= (and b!6567799 (not c!1207211)) b!6567800))

(assert (= (and b!6567800 (not res!2695362)) b!6567805))

(assert (= (and b!6567805 res!2695360) b!6567795))

(assert (= (and b!6567795 res!2695367) b!6567803))

(assert (= (and b!6567803 res!2695363) b!6567807))

(assert (= (and b!6567805 (not res!2695361)) b!6567806))

(assert (= (and b!6567806 res!2695366) b!6567804))

(assert (= (and b!6567804 (not res!2695365)) b!6567798))

(assert (= (and b!6567798 (not res!2695364)) b!6567801))

(assert (= (or b!6567796 b!6567795 b!6567804) bm!571394))

(assert (=> b!6567802 m!7349462))

(assert (=> b!6567802 m!7349462))

(declare-fun m!7350078 () Bool)

(assert (=> b!6567802 m!7350078))

(assert (=> b!6567802 m!7349466))

(assert (=> b!6567802 m!7350078))

(assert (=> b!6567802 m!7349466))

(declare-fun m!7350080 () Bool)

(assert (=> b!6567802 m!7350080))

(assert (=> bm!571394 m!7349458))

(assert (=> b!6567801 m!7349462))

(assert (=> b!6567798 m!7349466))

(assert (=> b!6567798 m!7349466))

(declare-fun m!7350082 () Bool)

(assert (=> b!6567798 m!7350082))

(assert (=> b!6567807 m!7349462))

(declare-fun m!7350086 () Bool)

(assert (=> b!6567797 m!7350086))

(assert (=> d!2060691 m!7349458))

(declare-fun m!7350088 () Bool)

(assert (=> d!2060691 m!7350088))

(assert (=> b!6567803 m!7349466))

(assert (=> b!6567803 m!7349466))

(assert (=> b!6567803 m!7350082))

(assert (=> b!6566944 d!2060691))

(declare-fun bs!1677573 () Bool)

(declare-fun d!2060695 () Bool)

(assert (= bs!1677573 (and d!2060695 b!6566961)))

(declare-fun lambda!365657 () Int)

(assert (=> bs!1677573 (= lambda!365657 lambda!365582)))

(assert (=> d!2060695 (matchZipper!2455 (store ((as const (Array Context!11654 Bool)) false) (Context!11655 (++!14589 (exprs!6327 lt!2407801) (exprs!6327 lt!2407776))) true) (++!14588 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(declare-fun lt!2408008 () Unit!159107)

(assert (=> d!2060695 (= lt!2408008 (lemmaConcatPreservesForall!416 (exprs!6327 lt!2407801) (exprs!6327 lt!2407776) lambda!365657))))

(declare-fun lt!2408007 () Unit!159107)

(declare-fun choose!49042 (Context!11654 Context!11654 List!65628 List!65628) Unit!159107)

(assert (=> d!2060695 (= lt!2408007 (choose!49042 lt!2407801 lt!2407776 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(assert (=> d!2060695 (matchZipper!2455 (store ((as const (Array Context!11654 Bool)) false) lt!2407801 true) (_1!36725 lt!2407814))))

(assert (=> d!2060695 (= (lemmaConcatenateContextMatchesConcatOfStrings!224 lt!2407801 lt!2407776 (_1!36725 lt!2407814) (_2!36725 lt!2407814)) lt!2408007)))

(declare-fun bs!1677578 () Bool)

(assert (= bs!1677578 d!2060695))

(declare-fun m!7350124 () Bool)

(assert (=> bs!1677578 m!7350124))

(assert (=> bs!1677578 m!7349190))

(declare-fun m!7350126 () Bool)

(assert (=> bs!1677578 m!7350126))

(assert (=> bs!1677578 m!7349254))

(declare-fun m!7350128 () Bool)

(assert (=> bs!1677578 m!7350128))

(declare-fun m!7350130 () Bool)

(assert (=> bs!1677578 m!7350130))

(declare-fun m!7350132 () Bool)

(assert (=> bs!1677578 m!7350132))

(assert (=> bs!1677578 m!7349254))

(declare-fun m!7350134 () Bool)

(assert (=> bs!1677578 m!7350134))

(assert (=> bs!1677578 m!7349190))

(assert (=> bs!1677578 m!7350132))

(assert (=> b!6566944 d!2060695))

(declare-fun bs!1677607 () Bool)

(declare-fun d!2060709 () Bool)

(assert (= bs!1677607 (and d!2060709 b!6566938)))

(declare-fun lambda!365662 () Int)

(assert (=> bs!1677607 (not (= lambda!365662 lambda!365579))))

(declare-fun bs!1677608 () Bool)

(assert (= bs!1677608 (and d!2060709 b!6566942)))

(assert (=> bs!1677608 (not (= lambda!365662 lambda!365587))))

(assert (=> bs!1677608 (not (= lambda!365662 lambda!365586))))

(assert (=> bs!1677608 (= (and (= s!2326 (_1!36725 lt!2407811)) (= lt!2407774 (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365662 lambda!365585))))

(declare-fun bs!1677610 () Bool)

(assert (= bs!1677610 (and d!2060709 b!6566944)))

(assert (=> bs!1677610 (not (= lambda!365662 lambda!365584))))

(declare-fun bs!1677611 () Bool)

(assert (= bs!1677611 (and d!2060709 b!6567608)))

(assert (=> bs!1677611 (not (= lambda!365662 lambda!365637))))

(assert (=> bs!1677610 (= lambda!365662 lambda!365583)))

(declare-fun bs!1677612 () Bool)

(assert (= bs!1677612 (and d!2060709 d!2060647)))

(assert (=> bs!1677612 (= lambda!365662 lambda!365644)))

(assert (=> bs!1677607 (= (= lt!2407774 (regOne!33398 r!7292)) (= lambda!365662 lambda!365578))))

(assert (=> bs!1677612 (not (= lambda!365662 lambda!365645))))

(declare-fun bs!1677613 () Bool)

(assert (= bs!1677613 (and d!2060709 b!6567605)))

(assert (=> bs!1677613 (not (= lambda!365662 lambda!365639))))

(assert (=> d!2060709 true))

(assert (=> d!2060709 true))

(assert (=> d!2060709 true))

(assert (=> d!2060709 (= (isDefined!13037 (findConcatSeparation!2748 lt!2407774 (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326)) (Exists!3513 lambda!365662))))

(declare-fun lt!2408012 () Unit!159107)

(declare-fun choose!49043 (Regex!16443 Regex!16443 List!65628) Unit!159107)

(assert (=> d!2060709 (= lt!2408012 (choose!49043 lt!2407774 (regTwo!33398 r!7292) s!2326))))

(assert (=> d!2060709 (validRegex!8179 lt!2407774)))

(assert (=> d!2060709 (= (lemmaFindConcatSeparationEquivalentToExists!2512 lt!2407774 (regTwo!33398 r!7292) s!2326) lt!2408012)))

(declare-fun bs!1677614 () Bool)

(assert (= bs!1677614 d!2060709))

(assert (=> bs!1677614 m!7349122))

(declare-fun m!7350148 () Bool)

(assert (=> bs!1677614 m!7350148))

(assert (=> bs!1677614 m!7349122))

(declare-fun m!7350150 () Bool)

(assert (=> bs!1677614 m!7350150))

(assert (=> bs!1677614 m!7349924))

(declare-fun m!7350152 () Bool)

(assert (=> bs!1677614 m!7350152))

(assert (=> b!6566944 d!2060709))

(declare-fun b!6567834 () Bool)

(declare-fun e!3975588 () Bool)

(declare-fun lt!2408015 () Bool)

(assert (=> b!6567834 (= e!3975588 (not lt!2408015))))

(declare-fun b!6567835 () Bool)

(declare-fun res!2695391 () Bool)

(declare-fun e!3975586 () Bool)

(assert (=> b!6567835 (=> (not res!2695391) (not e!3975586))))

(declare-fun call!571403 () Bool)

(assert (=> b!6567835 (= res!2695391 (not call!571403))))

(declare-fun b!6567836 () Bool)

(declare-fun e!3975589 () Bool)

(assert (=> b!6567836 (= e!3975589 (= lt!2408015 call!571403))))

(declare-fun b!6567837 () Bool)

(declare-fun e!3975584 () Bool)

(assert (=> b!6567837 (= e!3975584 (nullable!6436 (reg!16772 (regOne!33398 r!7292))))))

(declare-fun d!2060717 () Bool)

(assert (=> d!2060717 e!3975589))

(declare-fun c!1207220 () Bool)

(assert (=> d!2060717 (= c!1207220 ((_ is EmptyExpr!16443) (reg!16772 (regOne!33398 r!7292))))))

(assert (=> d!2060717 (= lt!2408015 e!3975584)))

(declare-fun c!1207219 () Bool)

(assert (=> d!2060717 (= c!1207219 (isEmpty!37753 (_1!36725 lt!2407814)))))

(assert (=> d!2060717 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060717 (= (matchR!8626 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407814)) lt!2408015)))

(declare-fun b!6567838 () Bool)

(declare-fun res!2695388 () Bool)

(declare-fun e!3975587 () Bool)

(assert (=> b!6567838 (=> res!2695388 e!3975587)))

(assert (=> b!6567838 (= res!2695388 (not (isEmpty!37753 (tail!12422 (_1!36725 lt!2407814)))))))

(declare-fun b!6567839 () Bool)

(assert (=> b!6567839 (= e!3975589 e!3975588)))

(declare-fun c!1207218 () Bool)

(assert (=> b!6567839 (= c!1207218 ((_ is EmptyLang!16443) (reg!16772 (regOne!33398 r!7292))))))

(declare-fun b!6567840 () Bool)

(declare-fun res!2695386 () Bool)

(declare-fun e!3975590 () Bool)

(assert (=> b!6567840 (=> res!2695386 e!3975590)))

(assert (=> b!6567840 (= res!2695386 (not ((_ is ElementMatch!16443) (reg!16772 (regOne!33398 r!7292)))))))

(assert (=> b!6567840 (= e!3975588 e!3975590)))

(declare-fun b!6567841 () Bool)

(assert (=> b!6567841 (= e!3975587 (not (= (head!13337 (_1!36725 lt!2407814)) (c!1206990 (reg!16772 (regOne!33398 r!7292))))))))

(declare-fun b!6567842 () Bool)

(assert (=> b!6567842 (= e!3975584 (matchR!8626 (derivativeStep!5127 (reg!16772 (regOne!33398 r!7292)) (head!13337 (_1!36725 lt!2407814))) (tail!12422 (_1!36725 lt!2407814))))))

(declare-fun b!6567843 () Bool)

(declare-fun res!2695387 () Bool)

(assert (=> b!6567843 (=> (not res!2695387) (not e!3975586))))

(assert (=> b!6567843 (= res!2695387 (isEmpty!37753 (tail!12422 (_1!36725 lt!2407814))))))

(declare-fun b!6567844 () Bool)

(declare-fun e!3975585 () Bool)

(assert (=> b!6567844 (= e!3975585 e!3975587)))

(declare-fun res!2695389 () Bool)

(assert (=> b!6567844 (=> res!2695389 e!3975587)))

(assert (=> b!6567844 (= res!2695389 call!571403)))

(declare-fun b!6567845 () Bool)

(declare-fun res!2695385 () Bool)

(assert (=> b!6567845 (=> res!2695385 e!3975590)))

(assert (=> b!6567845 (= res!2695385 e!3975586)))

(declare-fun res!2695384 () Bool)

(assert (=> b!6567845 (=> (not res!2695384) (not e!3975586))))

(assert (=> b!6567845 (= res!2695384 lt!2408015)))

(declare-fun bm!571398 () Bool)

(assert (=> bm!571398 (= call!571403 (isEmpty!37753 (_1!36725 lt!2407814)))))

(declare-fun b!6567846 () Bool)

(assert (=> b!6567846 (= e!3975590 e!3975585)))

(declare-fun res!2695390 () Bool)

(assert (=> b!6567846 (=> (not res!2695390) (not e!3975585))))

(assert (=> b!6567846 (= res!2695390 (not lt!2408015))))

(declare-fun b!6567847 () Bool)

(assert (=> b!6567847 (= e!3975586 (= (head!13337 (_1!36725 lt!2407814)) (c!1206990 (reg!16772 (regOne!33398 r!7292)))))))

(assert (= (and d!2060717 c!1207219) b!6567837))

(assert (= (and d!2060717 (not c!1207219)) b!6567842))

(assert (= (and d!2060717 c!1207220) b!6567836))

(assert (= (and d!2060717 (not c!1207220)) b!6567839))

(assert (= (and b!6567839 c!1207218) b!6567834))

(assert (= (and b!6567839 (not c!1207218)) b!6567840))

(assert (= (and b!6567840 (not res!2695386)) b!6567845))

(assert (= (and b!6567845 res!2695384) b!6567835))

(assert (= (and b!6567835 res!2695391) b!6567843))

(assert (= (and b!6567843 res!2695387) b!6567847))

(assert (= (and b!6567845 (not res!2695385)) b!6567846))

(assert (= (and b!6567846 res!2695390) b!6567844))

(assert (= (and b!6567844 (not res!2695389)) b!6567838))

(assert (= (and b!6567838 (not res!2695388)) b!6567841))

(assert (= (or b!6567836 b!6567835 b!6567844) bm!571398))

(declare-fun m!7350160 () Bool)

(assert (=> b!6567842 m!7350160))

(assert (=> b!6567842 m!7350160))

(declare-fun m!7350162 () Bool)

(assert (=> b!6567842 m!7350162))

(declare-fun m!7350164 () Bool)

(assert (=> b!6567842 m!7350164))

(assert (=> b!6567842 m!7350162))

(assert (=> b!6567842 m!7350164))

(declare-fun m!7350166 () Bool)

(assert (=> b!6567842 m!7350166))

(declare-fun m!7350168 () Bool)

(assert (=> bm!571398 m!7350168))

(assert (=> b!6567841 m!7350160))

(assert (=> b!6567838 m!7350164))

(assert (=> b!6567838 m!7350164))

(declare-fun m!7350170 () Bool)

(assert (=> b!6567838 m!7350170))

(assert (=> b!6567847 m!7350160))

(declare-fun m!7350172 () Bool)

(assert (=> b!6567837 m!7350172))

(assert (=> d!2060717 m!7350168))

(assert (=> d!2060717 m!7350024))

(assert (=> b!6567843 m!7350164))

(assert (=> b!6567843 m!7350164))

(assert (=> b!6567843 m!7350170))

(assert (=> b!6566944 d!2060717))

(declare-fun b!6567849 () Bool)

(declare-fun e!3975596 () Bool)

(declare-fun lt!2408017 () Bool)

(assert (=> b!6567849 (= e!3975596 (not lt!2408017))))

(declare-fun b!6567850 () Bool)

(declare-fun res!2695400 () Bool)

(declare-fun e!3975594 () Bool)

(assert (=> b!6567850 (=> (not res!2695400) (not e!3975594))))

(declare-fun call!571404 () Bool)

(assert (=> b!6567850 (= res!2695400 (not call!571404))))

(declare-fun b!6567851 () Bool)

(declare-fun e!3975597 () Bool)

(assert (=> b!6567851 (= e!3975597 (= lt!2408017 call!571404))))

(declare-fun b!6567852 () Bool)

(declare-fun e!3975592 () Bool)

(assert (=> b!6567852 (= e!3975592 (nullable!6436 lt!2407779))))

(declare-fun d!2060721 () Bool)

(assert (=> d!2060721 e!3975597))

(declare-fun c!1207223 () Bool)

(assert (=> d!2060721 (= c!1207223 ((_ is EmptyExpr!16443) lt!2407779))))

(assert (=> d!2060721 (= lt!2408017 e!3975592)))

(declare-fun c!1207222 () Bool)

(assert (=> d!2060721 (= c!1207222 (isEmpty!37753 s!2326))))

(assert (=> d!2060721 (validRegex!8179 lt!2407779)))

(assert (=> d!2060721 (= (matchR!8626 lt!2407779 s!2326) lt!2408017)))

(declare-fun b!6567853 () Bool)

(declare-fun res!2695397 () Bool)

(declare-fun e!3975595 () Bool)

(assert (=> b!6567853 (=> res!2695397 e!3975595)))

(assert (=> b!6567853 (= res!2695397 (not (isEmpty!37753 (tail!12422 s!2326))))))

(declare-fun b!6567854 () Bool)

(assert (=> b!6567854 (= e!3975597 e!3975596)))

(declare-fun c!1207221 () Bool)

(assert (=> b!6567854 (= c!1207221 ((_ is EmptyLang!16443) lt!2407779))))

(declare-fun b!6567855 () Bool)

(declare-fun res!2695395 () Bool)

(declare-fun e!3975598 () Bool)

(assert (=> b!6567855 (=> res!2695395 e!3975598)))

(assert (=> b!6567855 (= res!2695395 (not ((_ is ElementMatch!16443) lt!2407779)))))

(assert (=> b!6567855 (= e!3975596 e!3975598)))

(declare-fun b!6567856 () Bool)

(assert (=> b!6567856 (= e!3975595 (not (= (head!13337 s!2326) (c!1206990 lt!2407779))))))

(declare-fun b!6567857 () Bool)

(assert (=> b!6567857 (= e!3975592 (matchR!8626 (derivativeStep!5127 lt!2407779 (head!13337 s!2326)) (tail!12422 s!2326)))))

(declare-fun b!6567858 () Bool)

(declare-fun res!2695396 () Bool)

(assert (=> b!6567858 (=> (not res!2695396) (not e!3975594))))

(assert (=> b!6567858 (= res!2695396 (isEmpty!37753 (tail!12422 s!2326)))))

(declare-fun b!6567859 () Bool)

(declare-fun e!3975593 () Bool)

(assert (=> b!6567859 (= e!3975593 e!3975595)))

(declare-fun res!2695398 () Bool)

(assert (=> b!6567859 (=> res!2695398 e!3975595)))

(assert (=> b!6567859 (= res!2695398 call!571404)))

(declare-fun b!6567860 () Bool)

(declare-fun res!2695394 () Bool)

(assert (=> b!6567860 (=> res!2695394 e!3975598)))

(assert (=> b!6567860 (= res!2695394 e!3975594)))

(declare-fun res!2695393 () Bool)

(assert (=> b!6567860 (=> (not res!2695393) (not e!3975594))))

(assert (=> b!6567860 (= res!2695393 lt!2408017)))

(declare-fun bm!571399 () Bool)

(assert (=> bm!571399 (= call!571404 (isEmpty!37753 s!2326))))

(declare-fun b!6567861 () Bool)

(assert (=> b!6567861 (= e!3975598 e!3975593)))

(declare-fun res!2695399 () Bool)

(assert (=> b!6567861 (=> (not res!2695399) (not e!3975593))))

(assert (=> b!6567861 (= res!2695399 (not lt!2408017))))

(declare-fun b!6567862 () Bool)

(assert (=> b!6567862 (= e!3975594 (= (head!13337 s!2326) (c!1206990 lt!2407779)))))

(assert (= (and d!2060721 c!1207222) b!6567852))

(assert (= (and d!2060721 (not c!1207222)) b!6567857))

(assert (= (and d!2060721 c!1207223) b!6567851))

(assert (= (and d!2060721 (not c!1207223)) b!6567854))

(assert (= (and b!6567854 c!1207221) b!6567849))

(assert (= (and b!6567854 (not c!1207221)) b!6567855))

(assert (= (and b!6567855 (not res!2695395)) b!6567860))

(assert (= (and b!6567860 res!2695393) b!6567850))

(assert (= (and b!6567850 res!2695400) b!6567858))

(assert (= (and b!6567858 res!2695396) b!6567862))

(assert (= (and b!6567860 (not res!2695394)) b!6567861))

(assert (= (and b!6567861 res!2695399) b!6567859))

(assert (= (and b!6567859 (not res!2695398)) b!6567853))

(assert (= (and b!6567853 (not res!2695397)) b!6567856))

(assert (= (or b!6567851 b!6567850 b!6567859) bm!571399))

(assert (=> b!6567857 m!7349888))

(assert (=> b!6567857 m!7349888))

(declare-fun m!7350174 () Bool)

(assert (=> b!6567857 m!7350174))

(assert (=> b!6567857 m!7349892))

(assert (=> b!6567857 m!7350174))

(assert (=> b!6567857 m!7349892))

(declare-fun m!7350176 () Bool)

(assert (=> b!6567857 m!7350176))

(assert (=> bm!571399 m!7349854))

(assert (=> b!6567856 m!7349888))

(assert (=> b!6567853 m!7349892))

(assert (=> b!6567853 m!7349892))

(assert (=> b!6567853 m!7349896))

(assert (=> b!6567862 m!7349888))

(declare-fun m!7350178 () Bool)

(assert (=> b!6567852 m!7350178))

(assert (=> d!2060721 m!7349854))

(assert (=> d!2060721 m!7349906))

(assert (=> b!6567858 m!7349892))

(assert (=> b!6567858 m!7349892))

(assert (=> b!6567858 m!7349896))

(assert (=> b!6566944 d!2060721))

(declare-fun b!6567935 () Bool)

(declare-fun res!2695413 () Bool)

(declare-fun e!3975633 () Bool)

(assert (=> b!6567935 (=> (not res!2695413) (not e!3975633))))

(declare-fun lt!2408026 () Option!16334)

(assert (=> b!6567935 (= res!2695413 (matchR!8626 lt!2407774 (_1!36725 (get!22746 lt!2408026))))))

(declare-fun b!6567937 () Bool)

(declare-fun e!3975636 () Option!16334)

(assert (=> b!6567937 (= e!3975636 (Some!16333 (tuple2!66845 Nil!65504 s!2326)))))

(declare-fun b!6567938 () Bool)

(declare-fun e!3975632 () Bool)

(assert (=> b!6567938 (= e!3975632 (not (isDefined!13037 lt!2408026)))))

(declare-fun b!6567939 () Bool)

(declare-fun e!3975635 () Option!16334)

(assert (=> b!6567939 (= e!3975636 e!3975635)))

(declare-fun c!1207229 () Bool)

(assert (=> b!6567939 (= c!1207229 ((_ is Nil!65504) s!2326))))

(declare-fun b!6567936 () Bool)

(declare-fun lt!2408027 () Unit!159107)

(declare-fun lt!2408025 () Unit!159107)

(assert (=> b!6567936 (= lt!2408027 lt!2408025)))

(assert (=> b!6567936 (= (++!14588 (++!14588 Nil!65504 (Cons!65504 (h!71952 s!2326) Nil!65504)) (t!379272 s!2326)) s!2326)))

(assert (=> b!6567936 (= lt!2408025 (lemmaMoveElementToOtherListKeepsConcatEq!2586 Nil!65504 (h!71952 s!2326) (t!379272 s!2326) s!2326))))

(assert (=> b!6567936 (= e!3975635 (findConcatSeparation!2748 lt!2407774 (regTwo!33398 r!7292) (++!14588 Nil!65504 (Cons!65504 (h!71952 s!2326) Nil!65504)) (t!379272 s!2326) s!2326))))

(declare-fun d!2060723 () Bool)

(assert (=> d!2060723 e!3975632))

(declare-fun res!2695412 () Bool)

(assert (=> d!2060723 (=> res!2695412 e!3975632)))

(assert (=> d!2060723 (= res!2695412 e!3975633)))

(declare-fun res!2695411 () Bool)

(assert (=> d!2060723 (=> (not res!2695411) (not e!3975633))))

(assert (=> d!2060723 (= res!2695411 (isDefined!13037 lt!2408026))))

(assert (=> d!2060723 (= lt!2408026 e!3975636)))

(declare-fun c!1207228 () Bool)

(declare-fun e!3975634 () Bool)

(assert (=> d!2060723 (= c!1207228 e!3975634)))

(declare-fun res!2695415 () Bool)

(assert (=> d!2060723 (=> (not res!2695415) (not e!3975634))))

(assert (=> d!2060723 (= res!2695415 (matchR!8626 lt!2407774 Nil!65504))))

(assert (=> d!2060723 (validRegex!8179 lt!2407774)))

(assert (=> d!2060723 (= (findConcatSeparation!2748 lt!2407774 (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326) lt!2408026)))

(declare-fun b!6567940 () Bool)

(declare-fun res!2695414 () Bool)

(assert (=> b!6567940 (=> (not res!2695414) (not e!3975633))))

(assert (=> b!6567940 (= res!2695414 (matchR!8626 (regTwo!33398 r!7292) (_2!36725 (get!22746 lt!2408026))))))

(declare-fun b!6567941 () Bool)

(assert (=> b!6567941 (= e!3975634 (matchR!8626 (regTwo!33398 r!7292) s!2326))))

(declare-fun b!6567942 () Bool)

(assert (=> b!6567942 (= e!3975633 (= (++!14588 (_1!36725 (get!22746 lt!2408026)) (_2!36725 (get!22746 lt!2408026))) s!2326))))

(declare-fun b!6567943 () Bool)

(assert (=> b!6567943 (= e!3975635 None!16333)))

(assert (= (and d!2060723 res!2695415) b!6567941))

(assert (= (and d!2060723 c!1207228) b!6567937))

(assert (= (and d!2060723 (not c!1207228)) b!6567939))

(assert (= (and b!6567939 c!1207229) b!6567943))

(assert (= (and b!6567939 (not c!1207229)) b!6567936))

(assert (= (and d!2060723 res!2695411) b!6567935))

(assert (= (and b!6567935 res!2695413) b!6567940))

(assert (= (and b!6567940 res!2695414) b!6567942))

(assert (= (and d!2060723 (not res!2695412)) b!6567938))

(assert (=> b!6567936 m!7349790))

(assert (=> b!6567936 m!7349790))

(assert (=> b!6567936 m!7349792))

(assert (=> b!6567936 m!7349794))

(assert (=> b!6567936 m!7349790))

(declare-fun m!7350188 () Bool)

(assert (=> b!6567936 m!7350188))

(declare-fun m!7350190 () Bool)

(assert (=> d!2060723 m!7350190))

(declare-fun m!7350192 () Bool)

(assert (=> d!2060723 m!7350192))

(assert (=> d!2060723 m!7349924))

(declare-fun m!7350194 () Bool)

(assert (=> b!6567940 m!7350194))

(declare-fun m!7350196 () Bool)

(assert (=> b!6567940 m!7350196))

(assert (=> b!6567935 m!7350194))

(declare-fun m!7350198 () Bool)

(assert (=> b!6567935 m!7350198))

(assert (=> b!6567942 m!7350194))

(declare-fun m!7350200 () Bool)

(assert (=> b!6567942 m!7350200))

(declare-fun m!7350202 () Bool)

(assert (=> b!6567941 m!7350202))

(assert (=> b!6567938 m!7350190))

(assert (=> b!6566944 d!2060723))

(declare-fun d!2060735 () Bool)

(assert (=> d!2060735 (= (matchR!8626 lt!2407789 (_2!36725 lt!2407814)) (matchZipper!2455 lt!2407785 (_2!36725 lt!2407814)))))

(declare-fun lt!2408028 () Unit!159107)

(assert (=> d!2060735 (= lt!2408028 (choose!49041 lt!2407785 lt!2407813 lt!2407789 (_2!36725 lt!2407814)))))

(assert (=> d!2060735 (validRegex!8179 lt!2407789)))

(assert (=> d!2060735 (= (theoremZipperRegexEquiv!879 lt!2407785 lt!2407813 lt!2407789 (_2!36725 lt!2407814)) lt!2408028)))

(declare-fun bs!1677620 () Bool)

(assert (= bs!1677620 d!2060735))

(assert (=> bs!1677620 m!7349118))

(assert (=> bs!1677620 m!7349170))

(declare-fun m!7350204 () Bool)

(assert (=> bs!1677620 m!7350204))

(assert (=> bs!1677620 m!7350088))

(assert (=> b!6566944 d!2060735))

(declare-fun bs!1677621 () Bool)

(declare-fun b!6567947 () Bool)

(assert (= bs!1677621 (and b!6567947 b!6566938)))

(declare-fun lambda!365663 () Int)

(assert (=> bs!1677621 (not (= lambda!365663 lambda!365579))))

(declare-fun bs!1677622 () Bool)

(assert (= bs!1677622 (and b!6567947 b!6566942)))

(assert (=> bs!1677622 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (reg!16772 lt!2407779) (reg!16772 (regOne!33398 r!7292))) (= lt!2407779 lt!2407775)) (= lambda!365663 lambda!365587))))

(assert (=> bs!1677622 (not (= lambda!365663 lambda!365586))))

(declare-fun bs!1677623 () Bool)

(assert (= bs!1677623 (and b!6567947 d!2060709)))

(assert (=> bs!1677623 (not (= lambda!365663 lambda!365662))))

(assert (=> bs!1677622 (not (= lambda!365663 lambda!365585))))

(declare-fun bs!1677624 () Bool)

(assert (= bs!1677624 (and b!6567947 b!6566944)))

(assert (=> bs!1677624 (not (= lambda!365663 lambda!365584))))

(declare-fun bs!1677625 () Bool)

(assert (= bs!1677625 (and b!6567947 b!6567608)))

(assert (=> bs!1677625 (= (and (= (reg!16772 lt!2407779) (reg!16772 lt!2407832)) (= lt!2407779 lt!2407832)) (= lambda!365663 lambda!365637))))

(assert (=> bs!1677624 (not (= lambda!365663 lambda!365583))))

(declare-fun bs!1677626 () Bool)

(assert (= bs!1677626 (and b!6567947 d!2060647)))

(assert (=> bs!1677626 (not (= lambda!365663 lambda!365644))))

(assert (=> bs!1677621 (not (= lambda!365663 lambda!365578))))

(assert (=> bs!1677626 (not (= lambda!365663 lambda!365645))))

(declare-fun bs!1677627 () Bool)

(assert (= bs!1677627 (and b!6567947 b!6567605)))

(assert (=> bs!1677627 (not (= lambda!365663 lambda!365639))))

(assert (=> b!6567947 true))

(assert (=> b!6567947 true))

(declare-fun bs!1677628 () Bool)

(declare-fun b!6567944 () Bool)

(assert (= bs!1677628 (and b!6567944 b!6566938)))

(declare-fun lambda!365664 () Int)

(assert (=> bs!1677628 (= (and (= (regOne!33398 lt!2407779) (regOne!33398 r!7292)) (= (regTwo!33398 lt!2407779) (regTwo!33398 r!7292))) (= lambda!365664 lambda!365579))))

(declare-fun bs!1677629 () Bool)

(assert (= bs!1677629 (and b!6567944 b!6567947)))

(assert (=> bs!1677629 (not (= lambda!365664 lambda!365663))))

(declare-fun bs!1677630 () Bool)

(assert (= bs!1677630 (and b!6567944 b!6566942)))

(assert (=> bs!1677630 (not (= lambda!365664 lambda!365587))))

(assert (=> bs!1677630 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 lt!2407779) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 lt!2407779) lt!2407775)) (= lambda!365664 lambda!365586))))

(declare-fun bs!1677631 () Bool)

(assert (= bs!1677631 (and b!6567944 d!2060709)))

(assert (=> bs!1677631 (not (= lambda!365664 lambda!365662))))

(assert (=> bs!1677630 (not (= lambda!365664 lambda!365585))))

(declare-fun bs!1677632 () Bool)

(assert (= bs!1677632 (and b!6567944 b!6566944)))

(assert (=> bs!1677632 (= (and (= (regOne!33398 lt!2407779) lt!2407774) (= (regTwo!33398 lt!2407779) (regTwo!33398 r!7292))) (= lambda!365664 lambda!365584))))

(declare-fun bs!1677633 () Bool)

(assert (= bs!1677633 (and b!6567944 b!6567608)))

(assert (=> bs!1677633 (not (= lambda!365664 lambda!365637))))

(assert (=> bs!1677632 (not (= lambda!365664 lambda!365583))))

(declare-fun bs!1677634 () Bool)

(assert (= bs!1677634 (and b!6567944 d!2060647)))

(assert (=> bs!1677634 (not (= lambda!365664 lambda!365644))))

(assert (=> bs!1677628 (not (= lambda!365664 lambda!365578))))

(assert (=> bs!1677634 (= (and (= (regOne!33398 lt!2407779) lt!2407774) (= (regTwo!33398 lt!2407779) (regTwo!33398 r!7292))) (= lambda!365664 lambda!365645))))

(declare-fun bs!1677635 () Bool)

(assert (= bs!1677635 (and b!6567944 b!6567605)))

(assert (=> bs!1677635 (= (and (= (regOne!33398 lt!2407779) (regOne!33398 lt!2407832)) (= (regTwo!33398 lt!2407779) (regTwo!33398 lt!2407832))) (= lambda!365664 lambda!365639))))

(assert (=> b!6567944 true))

(assert (=> b!6567944 true))

(declare-fun e!3975640 () Bool)

(declare-fun call!571406 () Bool)

(assert (=> b!6567944 (= e!3975640 call!571406)))

(declare-fun b!6567945 () Bool)

(declare-fun e!3975638 () Bool)

(declare-fun call!571405 () Bool)

(assert (=> b!6567945 (= e!3975638 call!571405)))

(declare-fun b!6567946 () Bool)

(declare-fun res!2695417 () Bool)

(declare-fun e!3975637 () Bool)

(assert (=> b!6567946 (=> res!2695417 e!3975637)))

(assert (=> b!6567946 (= res!2695417 call!571405)))

(assert (=> b!6567946 (= e!3975640 e!3975637)))

(declare-fun bm!571400 () Bool)

(assert (=> bm!571400 (= call!571405 (isEmpty!37753 s!2326))))

(assert (=> b!6567947 (= e!3975637 call!571406)))

(declare-fun b!6567948 () Bool)

(declare-fun e!3975643 () Bool)

(assert (=> b!6567948 (= e!3975643 (= s!2326 (Cons!65504 (c!1206990 lt!2407779) Nil!65504)))))

(declare-fun b!6567949 () Bool)

(declare-fun c!1207231 () Bool)

(assert (=> b!6567949 (= c!1207231 ((_ is Union!16443) lt!2407779))))

(declare-fun e!3975642 () Bool)

(assert (=> b!6567949 (= e!3975643 e!3975642)))

(declare-fun d!2060737 () Bool)

(declare-fun c!1207232 () Bool)

(assert (=> d!2060737 (= c!1207232 ((_ is EmptyExpr!16443) lt!2407779))))

(assert (=> d!2060737 (= (matchRSpec!3544 lt!2407779 s!2326) e!3975638)))

(declare-fun b!6567950 () Bool)

(assert (=> b!6567950 (= e!3975642 e!3975640)))

(declare-fun c!1207233 () Bool)

(assert (=> b!6567950 (= c!1207233 ((_ is Star!16443) lt!2407779))))

(declare-fun bm!571401 () Bool)

(assert (=> bm!571401 (= call!571406 (Exists!3513 (ite c!1207233 lambda!365663 lambda!365664)))))

(declare-fun b!6567951 () Bool)

(declare-fun e!3975641 () Bool)

(assert (=> b!6567951 (= e!3975641 (matchRSpec!3544 (regTwo!33399 lt!2407779) s!2326))))

(declare-fun b!6567952 () Bool)

(declare-fun e!3975639 () Bool)

(assert (=> b!6567952 (= e!3975638 e!3975639)))

(declare-fun res!2695418 () Bool)

(assert (=> b!6567952 (= res!2695418 (not ((_ is EmptyLang!16443) lt!2407779)))))

(assert (=> b!6567952 (=> (not res!2695418) (not e!3975639))))

(declare-fun b!6567953 () Bool)

(assert (=> b!6567953 (= e!3975642 e!3975641)))

(declare-fun res!2695416 () Bool)

(assert (=> b!6567953 (= res!2695416 (matchRSpec!3544 (regOne!33399 lt!2407779) s!2326))))

(assert (=> b!6567953 (=> res!2695416 e!3975641)))

(declare-fun b!6567954 () Bool)

(declare-fun c!1207230 () Bool)

(assert (=> b!6567954 (= c!1207230 ((_ is ElementMatch!16443) lt!2407779))))

(assert (=> b!6567954 (= e!3975639 e!3975643)))

(assert (= (and d!2060737 c!1207232) b!6567945))

(assert (= (and d!2060737 (not c!1207232)) b!6567952))

(assert (= (and b!6567952 res!2695418) b!6567954))

(assert (= (and b!6567954 c!1207230) b!6567948))

(assert (= (and b!6567954 (not c!1207230)) b!6567949))

(assert (= (and b!6567949 c!1207231) b!6567953))

(assert (= (and b!6567949 (not c!1207231)) b!6567950))

(assert (= (and b!6567953 (not res!2695416)) b!6567951))

(assert (= (and b!6567950 c!1207233) b!6567946))

(assert (= (and b!6567950 (not c!1207233)) b!6567944))

(assert (= (and b!6567946 (not res!2695417)) b!6567947))

(assert (= (or b!6567947 b!6567944) bm!571401))

(assert (= (or b!6567945 b!6567946) bm!571400))

(assert (=> bm!571400 m!7349854))

(declare-fun m!7350206 () Bool)

(assert (=> bm!571401 m!7350206))

(declare-fun m!7350208 () Bool)

(assert (=> b!6567951 m!7350208))

(declare-fun m!7350210 () Bool)

(assert (=> b!6567953 m!7350210))

(assert (=> b!6566944 d!2060737))

(declare-fun d!2060739 () Bool)

(assert (=> d!2060739 (matchR!8626 (Concat!25288 (reg!16772 (regOne!33398 r!7292)) lt!2407789) (++!14588 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(declare-fun lt!2408031 () Unit!159107)

(declare-fun choose!49045 (Regex!16443 Regex!16443 List!65628 List!65628) Unit!159107)

(assert (=> d!2060739 (= lt!2408031 (choose!49045 (reg!16772 (regOne!33398 r!7292)) lt!2407789 (_1!36725 lt!2407814) (_2!36725 lt!2407814)))))

(declare-fun e!3975646 () Bool)

(assert (=> d!2060739 e!3975646))

(declare-fun res!2695421 () Bool)

(assert (=> d!2060739 (=> (not res!2695421) (not e!3975646))))

(assert (=> d!2060739 (= res!2695421 (validRegex!8179 (reg!16772 (regOne!33398 r!7292))))))

(assert (=> d!2060739 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!364 (reg!16772 (regOne!33398 r!7292)) lt!2407789 (_1!36725 lt!2407814) (_2!36725 lt!2407814)) lt!2408031)))

(declare-fun b!6567957 () Bool)

(assert (=> b!6567957 (= e!3975646 (validRegex!8179 lt!2407789))))

(assert (= (and d!2060739 res!2695421) b!6567957))

(assert (=> d!2060739 m!7349254))

(assert (=> d!2060739 m!7349254))

(declare-fun m!7350212 () Bool)

(assert (=> d!2060739 m!7350212))

(declare-fun m!7350214 () Bool)

(assert (=> d!2060739 m!7350214))

(assert (=> d!2060739 m!7350024))

(assert (=> b!6567957 m!7350088))

(assert (=> b!6566944 d!2060739))

(declare-fun b!6567958 () Bool)

(declare-fun e!3975651 () Bool)

(declare-fun lt!2408032 () Bool)

(assert (=> b!6567958 (= e!3975651 (not lt!2408032))))

(declare-fun b!6567959 () Bool)

(declare-fun res!2695429 () Bool)

(declare-fun e!3975649 () Bool)

(assert (=> b!6567959 (=> (not res!2695429) (not e!3975649))))

(declare-fun call!571407 () Bool)

(assert (=> b!6567959 (= res!2695429 (not call!571407))))

(declare-fun b!6567960 () Bool)

(declare-fun e!3975652 () Bool)

(assert (=> b!6567960 (= e!3975652 (= lt!2408032 call!571407))))

(declare-fun b!6567961 () Bool)

(declare-fun e!3975647 () Bool)

(assert (=> b!6567961 (= e!3975647 (nullable!6436 lt!2407832))))

(declare-fun d!2060741 () Bool)

(assert (=> d!2060741 e!3975652))

(declare-fun c!1207236 () Bool)

(assert (=> d!2060741 (= c!1207236 ((_ is EmptyExpr!16443) lt!2407832))))

(assert (=> d!2060741 (= lt!2408032 e!3975647)))

(declare-fun c!1207235 () Bool)

(assert (=> d!2060741 (= c!1207235 (isEmpty!37753 lt!2407788))))

(assert (=> d!2060741 (validRegex!8179 lt!2407832)))

(assert (=> d!2060741 (= (matchR!8626 lt!2407832 lt!2407788) lt!2408032)))

(declare-fun b!6567962 () Bool)

(declare-fun res!2695426 () Bool)

(declare-fun e!3975650 () Bool)

(assert (=> b!6567962 (=> res!2695426 e!3975650)))

(assert (=> b!6567962 (= res!2695426 (not (isEmpty!37753 (tail!12422 lt!2407788))))))

(declare-fun b!6567963 () Bool)

(assert (=> b!6567963 (= e!3975652 e!3975651)))

(declare-fun c!1207234 () Bool)

(assert (=> b!6567963 (= c!1207234 ((_ is EmptyLang!16443) lt!2407832))))

(declare-fun b!6567964 () Bool)

(declare-fun res!2695424 () Bool)

(declare-fun e!3975653 () Bool)

(assert (=> b!6567964 (=> res!2695424 e!3975653)))

(assert (=> b!6567964 (= res!2695424 (not ((_ is ElementMatch!16443) lt!2407832)))))

(assert (=> b!6567964 (= e!3975651 e!3975653)))

(declare-fun b!6567965 () Bool)

(assert (=> b!6567965 (= e!3975650 (not (= (head!13337 lt!2407788) (c!1206990 lt!2407832))))))

(declare-fun b!6567966 () Bool)

(assert (=> b!6567966 (= e!3975647 (matchR!8626 (derivativeStep!5127 lt!2407832 (head!13337 lt!2407788)) (tail!12422 lt!2407788)))))

(declare-fun b!6567967 () Bool)

(declare-fun res!2695425 () Bool)

(assert (=> b!6567967 (=> (not res!2695425) (not e!3975649))))

(assert (=> b!6567967 (= res!2695425 (isEmpty!37753 (tail!12422 lt!2407788)))))

(declare-fun b!6567968 () Bool)

(declare-fun e!3975648 () Bool)

(assert (=> b!6567968 (= e!3975648 e!3975650)))

(declare-fun res!2695427 () Bool)

(assert (=> b!6567968 (=> res!2695427 e!3975650)))

(assert (=> b!6567968 (= res!2695427 call!571407)))

(declare-fun b!6567969 () Bool)

(declare-fun res!2695423 () Bool)

(assert (=> b!6567969 (=> res!2695423 e!3975653)))

(assert (=> b!6567969 (= res!2695423 e!3975649)))

(declare-fun res!2695422 () Bool)

(assert (=> b!6567969 (=> (not res!2695422) (not e!3975649))))

(assert (=> b!6567969 (= res!2695422 lt!2408032)))

(declare-fun bm!571402 () Bool)

(assert (=> bm!571402 (= call!571407 (isEmpty!37753 lt!2407788))))

(declare-fun b!6567970 () Bool)

(assert (=> b!6567970 (= e!3975653 e!3975648)))

(declare-fun res!2695428 () Bool)

(assert (=> b!6567970 (=> (not res!2695428) (not e!3975648))))

(assert (=> b!6567970 (= res!2695428 (not lt!2408032))))

(declare-fun b!6567971 () Bool)

(assert (=> b!6567971 (= e!3975649 (= (head!13337 lt!2407788) (c!1206990 lt!2407832)))))

(assert (= (and d!2060741 c!1207235) b!6567961))

(assert (= (and d!2060741 (not c!1207235)) b!6567966))

(assert (= (and d!2060741 c!1207236) b!6567960))

(assert (= (and d!2060741 (not c!1207236)) b!6567963))

(assert (= (and b!6567963 c!1207234) b!6567958))

(assert (= (and b!6567963 (not c!1207234)) b!6567964))

(assert (= (and b!6567964 (not res!2695424)) b!6567969))

(assert (= (and b!6567969 res!2695422) b!6567959))

(assert (= (and b!6567959 res!2695429) b!6567967))

(assert (= (and b!6567967 res!2695425) b!6567971))

(assert (= (and b!6567969 (not res!2695423)) b!6567970))

(assert (= (and b!6567970 res!2695428) b!6567968))

(assert (= (and b!6567968 (not res!2695427)) b!6567962))

(assert (= (and b!6567962 (not res!2695426)) b!6567965))

(assert (= (or b!6567960 b!6567959 b!6567968) bm!571402))

(assert (=> b!6567966 m!7350058))

(assert (=> b!6567966 m!7350058))

(declare-fun m!7350216 () Bool)

(assert (=> b!6567966 m!7350216))

(assert (=> b!6567966 m!7350062))

(assert (=> b!6567966 m!7350216))

(assert (=> b!6567966 m!7350062))

(declare-fun m!7350218 () Bool)

(assert (=> b!6567966 m!7350218))

(assert (=> bm!571402 m!7350054))

(assert (=> b!6567965 m!7350058))

(assert (=> b!6567962 m!7350062))

(assert (=> b!6567962 m!7350062))

(declare-fun m!7350220 () Bool)

(assert (=> b!6567962 m!7350220))

(assert (=> b!6567971 m!7350058))

(assert (=> b!6567961 m!7349898))

(assert (=> d!2060741 m!7350054))

(assert (=> d!2060741 m!7349900))

(assert (=> b!6567967 m!7350062))

(assert (=> b!6567967 m!7350062))

(assert (=> b!6567967 m!7350220))

(assert (=> b!6566944 d!2060741))

(declare-fun bs!1677636 () Bool)

(declare-fun d!2060743 () Bool)

(assert (= bs!1677636 (and d!2060743 b!6566961)))

(declare-fun lambda!365667 () Int)

(assert (=> bs!1677636 (= lambda!365667 lambda!365582)))

(declare-fun bs!1677637 () Bool)

(assert (= bs!1677637 (and d!2060743 d!2060695)))

(assert (=> bs!1677637 (= lambda!365667 lambda!365657)))

(declare-fun b!6567992 () Bool)

(declare-fun e!3975667 () Regex!16443)

(assert (=> b!6567992 (= e!3975667 EmptyExpr!16443)))

(declare-fun b!6567993 () Bool)

(declare-fun e!3975671 () Regex!16443)

(assert (=> b!6567993 (= e!3975671 (h!71953 (exprs!6327 (h!71954 zl!343))))))

(declare-fun b!6567994 () Bool)

(declare-fun e!3975666 () Bool)

(declare-fun e!3975670 () Bool)

(assert (=> b!6567994 (= e!3975666 e!3975670)))

(declare-fun c!1207248 () Bool)

(assert (=> b!6567994 (= c!1207248 (isEmpty!37749 (exprs!6327 (h!71954 zl!343))))))

(assert (=> d!2060743 e!3975666))

(declare-fun res!2695434 () Bool)

(assert (=> d!2060743 (=> (not res!2695434) (not e!3975666))))

(declare-fun lt!2408035 () Regex!16443)

(assert (=> d!2060743 (= res!2695434 (validRegex!8179 lt!2408035))))

(assert (=> d!2060743 (= lt!2408035 e!3975671)))

(declare-fun c!1207247 () Bool)

(declare-fun e!3975668 () Bool)

(assert (=> d!2060743 (= c!1207247 e!3975668)))

(declare-fun res!2695435 () Bool)

(assert (=> d!2060743 (=> (not res!2695435) (not e!3975668))))

(assert (=> d!2060743 (= res!2695435 ((_ is Cons!65505) (exprs!6327 (h!71954 zl!343))))))

(assert (=> d!2060743 (forall!15615 (exprs!6327 (h!71954 zl!343)) lambda!365667)))

(assert (=> d!2060743 (= (generalisedConcat!2040 (exprs!6327 (h!71954 zl!343))) lt!2408035)))

(declare-fun b!6567995 () Bool)

(assert (=> b!6567995 (= e!3975668 (isEmpty!37749 (t!379273 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun b!6567996 () Bool)

(declare-fun e!3975669 () Bool)

(assert (=> b!6567996 (= e!3975670 e!3975669)))

(declare-fun c!1207245 () Bool)

(declare-fun tail!12423 (List!65629) List!65629)

(assert (=> b!6567996 (= c!1207245 (isEmpty!37749 (tail!12423 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun b!6567997 () Bool)

(declare-fun head!13338 (List!65629) Regex!16443)

(assert (=> b!6567997 (= e!3975669 (= lt!2408035 (head!13338 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun b!6567998 () Bool)

(declare-fun isConcat!1343 (Regex!16443) Bool)

(assert (=> b!6567998 (= e!3975669 (isConcat!1343 lt!2408035))))

(declare-fun b!6567999 () Bool)

(declare-fun isEmptyExpr!1820 (Regex!16443) Bool)

(assert (=> b!6567999 (= e!3975670 (isEmptyExpr!1820 lt!2408035))))

(declare-fun b!6568000 () Bool)

(assert (=> b!6568000 (= e!3975671 e!3975667)))

(declare-fun c!1207246 () Bool)

(assert (=> b!6568000 (= c!1207246 ((_ is Cons!65505) (exprs!6327 (h!71954 zl!343))))))

(declare-fun b!6568001 () Bool)

(assert (=> b!6568001 (= e!3975667 (Concat!25288 (h!71953 (exprs!6327 (h!71954 zl!343))) (generalisedConcat!2040 (t!379273 (exprs!6327 (h!71954 zl!343))))))))

(assert (= (and d!2060743 res!2695435) b!6567995))

(assert (= (and d!2060743 c!1207247) b!6567993))

(assert (= (and d!2060743 (not c!1207247)) b!6568000))

(assert (= (and b!6568000 c!1207246) b!6568001))

(assert (= (and b!6568000 (not c!1207246)) b!6567992))

(assert (= (and d!2060743 res!2695434) b!6567994))

(assert (= (and b!6567994 c!1207248) b!6567999))

(assert (= (and b!6567994 (not c!1207248)) b!6567996))

(assert (= (and b!6567996 c!1207245) b!6567997))

(assert (= (and b!6567996 (not c!1207245)) b!6567998))

(declare-fun m!7350222 () Bool)

(assert (=> b!6567994 m!7350222))

(declare-fun m!7350224 () Bool)

(assert (=> b!6567999 m!7350224))

(declare-fun m!7350226 () Bool)

(assert (=> b!6567997 m!7350226))

(declare-fun m!7350228 () Bool)

(assert (=> b!6567998 m!7350228))

(assert (=> b!6567995 m!7349040))

(declare-fun m!7350230 () Bool)

(assert (=> d!2060743 m!7350230))

(declare-fun m!7350232 () Bool)

(assert (=> d!2060743 m!7350232))

(declare-fun m!7350234 () Bool)

(assert (=> b!6567996 m!7350234))

(assert (=> b!6567996 m!7350234))

(declare-fun m!7350236 () Bool)

(assert (=> b!6567996 m!7350236))

(declare-fun m!7350238 () Bool)

(assert (=> b!6568001 m!7350238))

(assert (=> b!6566964 d!2060743))

(declare-fun d!2060745 () Bool)

(assert (=> d!2060745 (= (isEmpty!37750 (t!379274 zl!343)) ((_ is Nil!65506) (t!379274 zl!343)))))

(assert (=> b!6566986 d!2060745))

(declare-fun d!2060747 () Bool)

(declare-fun c!1207249 () Bool)

(assert (=> d!2060747 (= c!1207249 (isEmpty!37753 s!2326))))

(declare-fun e!3975672 () Bool)

(assert (=> d!2060747 (= (matchZipper!2455 z!1189 s!2326) e!3975672)))

(declare-fun b!6568002 () Bool)

(assert (=> b!6568002 (= e!3975672 (nullableZipper!2188 z!1189))))

(declare-fun b!6568003 () Bool)

(assert (=> b!6568003 (= e!3975672 (matchZipper!2455 (derivationStepZipper!2409 z!1189 (head!13337 s!2326)) (tail!12422 s!2326)))))

(assert (= (and d!2060747 c!1207249) b!6568002))

(assert (= (and d!2060747 (not c!1207249)) b!6568003))

(assert (=> d!2060747 m!7349854))

(declare-fun m!7350240 () Bool)

(assert (=> b!6568002 m!7350240))

(assert (=> b!6568003 m!7349888))

(assert (=> b!6568003 m!7349888))

(declare-fun m!7350242 () Bool)

(assert (=> b!6568003 m!7350242))

(assert (=> b!6568003 m!7349892))

(assert (=> b!6568003 m!7350242))

(assert (=> b!6568003 m!7349892))

(declare-fun m!7350244 () Bool)

(assert (=> b!6568003 m!7350244))

(assert (=> b!6566966 d!2060747))

(declare-fun bs!1677638 () Bool)

(declare-fun b!6568007 () Bool)

(assert (= bs!1677638 (and b!6568007 b!6567944)))

(declare-fun lambda!365668 () Int)

(assert (=> bs!1677638 (not (= lambda!365668 lambda!365664))))

(declare-fun bs!1677639 () Bool)

(assert (= bs!1677639 (and b!6568007 b!6566938)))

(assert (=> bs!1677639 (not (= lambda!365668 lambda!365579))))

(declare-fun bs!1677640 () Bool)

(assert (= bs!1677640 (and b!6568007 b!6567947)))

(assert (=> bs!1677640 (= (and (= (reg!16772 r!7292) (reg!16772 lt!2407779)) (= r!7292 lt!2407779)) (= lambda!365668 lambda!365663))))

(declare-fun bs!1677641 () Bool)

(assert (= bs!1677641 (and b!6568007 b!6566942)))

(assert (=> bs!1677641 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (reg!16772 r!7292) (reg!16772 (regOne!33398 r!7292))) (= r!7292 lt!2407775)) (= lambda!365668 lambda!365587))))

(assert (=> bs!1677641 (not (= lambda!365668 lambda!365586))))

(declare-fun bs!1677642 () Bool)

(assert (= bs!1677642 (and b!6568007 d!2060709)))

(assert (=> bs!1677642 (not (= lambda!365668 lambda!365662))))

(assert (=> bs!1677641 (not (= lambda!365668 lambda!365585))))

(declare-fun bs!1677643 () Bool)

(assert (= bs!1677643 (and b!6568007 b!6566944)))

(assert (=> bs!1677643 (not (= lambda!365668 lambda!365584))))

(declare-fun bs!1677644 () Bool)

(assert (= bs!1677644 (and b!6568007 b!6567608)))

(assert (=> bs!1677644 (= (and (= (reg!16772 r!7292) (reg!16772 lt!2407832)) (= r!7292 lt!2407832)) (= lambda!365668 lambda!365637))))

(assert (=> bs!1677643 (not (= lambda!365668 lambda!365583))))

(declare-fun bs!1677645 () Bool)

(assert (= bs!1677645 (and b!6568007 d!2060647)))

(assert (=> bs!1677645 (not (= lambda!365668 lambda!365644))))

(assert (=> bs!1677639 (not (= lambda!365668 lambda!365578))))

(assert (=> bs!1677645 (not (= lambda!365668 lambda!365645))))

(declare-fun bs!1677646 () Bool)

(assert (= bs!1677646 (and b!6568007 b!6567605)))

(assert (=> bs!1677646 (not (= lambda!365668 lambda!365639))))

(assert (=> b!6568007 true))

(assert (=> b!6568007 true))

(declare-fun bs!1677647 () Bool)

(declare-fun b!6568004 () Bool)

(assert (= bs!1677647 (and b!6568004 b!6567944)))

(declare-fun lambda!365669 () Int)

(assert (=> bs!1677647 (= (and (= (regOne!33398 r!7292) (regOne!33398 lt!2407779)) (= (regTwo!33398 r!7292) (regTwo!33398 lt!2407779))) (= lambda!365669 lambda!365664))))

(declare-fun bs!1677648 () Bool)

(assert (= bs!1677648 (and b!6568004 b!6566938)))

(assert (=> bs!1677648 (= lambda!365669 lambda!365579)))

(declare-fun bs!1677649 () Bool)

(assert (= bs!1677649 (and b!6568004 b!6566942)))

(assert (=> bs!1677649 (not (= lambda!365669 lambda!365587))))

(assert (=> bs!1677649 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365669 lambda!365586))))

(declare-fun bs!1677650 () Bool)

(assert (= bs!1677650 (and b!6568004 d!2060709)))

(assert (=> bs!1677650 (not (= lambda!365669 lambda!365662))))

(assert (=> bs!1677649 (not (= lambda!365669 lambda!365585))))

(declare-fun bs!1677651 () Bool)

(assert (= bs!1677651 (and b!6568004 b!6566944)))

(assert (=> bs!1677651 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365669 lambda!365584))))

(declare-fun bs!1677652 () Bool)

(assert (= bs!1677652 (and b!6568004 b!6567608)))

(assert (=> bs!1677652 (not (= lambda!365669 lambda!365637))))

(assert (=> bs!1677651 (not (= lambda!365669 lambda!365583))))

(declare-fun bs!1677653 () Bool)

(assert (= bs!1677653 (and b!6568004 d!2060647)))

(assert (=> bs!1677653 (not (= lambda!365669 lambda!365644))))

(assert (=> bs!1677648 (not (= lambda!365669 lambda!365578))))

(assert (=> bs!1677653 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365669 lambda!365645))))

(declare-fun bs!1677654 () Bool)

(assert (= bs!1677654 (and b!6568004 b!6567605)))

(assert (=> bs!1677654 (= (and (= (regOne!33398 r!7292) (regOne!33398 lt!2407832)) (= (regTwo!33398 r!7292) (regTwo!33398 lt!2407832))) (= lambda!365669 lambda!365639))))

(declare-fun bs!1677655 () Bool)

(assert (= bs!1677655 (and b!6568004 b!6568007)))

(assert (=> bs!1677655 (not (= lambda!365669 lambda!365668))))

(declare-fun bs!1677656 () Bool)

(assert (= bs!1677656 (and b!6568004 b!6567947)))

(assert (=> bs!1677656 (not (= lambda!365669 lambda!365663))))

(assert (=> b!6568004 true))

(assert (=> b!6568004 true))

(declare-fun e!3975676 () Bool)

(declare-fun call!571409 () Bool)

(assert (=> b!6568004 (= e!3975676 call!571409)))

(declare-fun b!6568005 () Bool)

(declare-fun e!3975674 () Bool)

(declare-fun call!571408 () Bool)

(assert (=> b!6568005 (= e!3975674 call!571408)))

(declare-fun b!6568006 () Bool)

(declare-fun res!2695437 () Bool)

(declare-fun e!3975673 () Bool)

(assert (=> b!6568006 (=> res!2695437 e!3975673)))

(assert (=> b!6568006 (= res!2695437 call!571408)))

(assert (=> b!6568006 (= e!3975676 e!3975673)))

(declare-fun bm!571403 () Bool)

(assert (=> bm!571403 (= call!571408 (isEmpty!37753 s!2326))))

(assert (=> b!6568007 (= e!3975673 call!571409)))

(declare-fun b!6568008 () Bool)

(declare-fun e!3975679 () Bool)

(assert (=> b!6568008 (= e!3975679 (= s!2326 (Cons!65504 (c!1206990 r!7292) Nil!65504)))))

(declare-fun b!6568009 () Bool)

(declare-fun c!1207251 () Bool)

(assert (=> b!6568009 (= c!1207251 ((_ is Union!16443) r!7292))))

(declare-fun e!3975678 () Bool)

(assert (=> b!6568009 (= e!3975679 e!3975678)))

(declare-fun d!2060749 () Bool)

(declare-fun c!1207252 () Bool)

(assert (=> d!2060749 (= c!1207252 ((_ is EmptyExpr!16443) r!7292))))

(assert (=> d!2060749 (= (matchRSpec!3544 r!7292 s!2326) e!3975674)))

(declare-fun b!6568010 () Bool)

(assert (=> b!6568010 (= e!3975678 e!3975676)))

(declare-fun c!1207253 () Bool)

(assert (=> b!6568010 (= c!1207253 ((_ is Star!16443) r!7292))))

(declare-fun bm!571404 () Bool)

(assert (=> bm!571404 (= call!571409 (Exists!3513 (ite c!1207253 lambda!365668 lambda!365669)))))

(declare-fun b!6568011 () Bool)

(declare-fun e!3975677 () Bool)

(assert (=> b!6568011 (= e!3975677 (matchRSpec!3544 (regTwo!33399 r!7292) s!2326))))

(declare-fun b!6568012 () Bool)

(declare-fun e!3975675 () Bool)

(assert (=> b!6568012 (= e!3975674 e!3975675)))

(declare-fun res!2695438 () Bool)

(assert (=> b!6568012 (= res!2695438 (not ((_ is EmptyLang!16443) r!7292)))))

(assert (=> b!6568012 (=> (not res!2695438) (not e!3975675))))

(declare-fun b!6568013 () Bool)

(assert (=> b!6568013 (= e!3975678 e!3975677)))

(declare-fun res!2695436 () Bool)

(assert (=> b!6568013 (= res!2695436 (matchRSpec!3544 (regOne!33399 r!7292) s!2326))))

(assert (=> b!6568013 (=> res!2695436 e!3975677)))

(declare-fun b!6568014 () Bool)

(declare-fun c!1207250 () Bool)

(assert (=> b!6568014 (= c!1207250 ((_ is ElementMatch!16443) r!7292))))

(assert (=> b!6568014 (= e!3975675 e!3975679)))

(assert (= (and d!2060749 c!1207252) b!6568005))

(assert (= (and d!2060749 (not c!1207252)) b!6568012))

(assert (= (and b!6568012 res!2695438) b!6568014))

(assert (= (and b!6568014 c!1207250) b!6568008))

(assert (= (and b!6568014 (not c!1207250)) b!6568009))

(assert (= (and b!6568009 c!1207251) b!6568013))

(assert (= (and b!6568009 (not c!1207251)) b!6568010))

(assert (= (and b!6568013 (not res!2695436)) b!6568011))

(assert (= (and b!6568010 c!1207253) b!6568006))

(assert (= (and b!6568010 (not c!1207253)) b!6568004))

(assert (= (and b!6568006 (not res!2695437)) b!6568007))

(assert (= (or b!6568007 b!6568004) bm!571404))

(assert (= (or b!6568005 b!6568006) bm!571403))

(assert (=> bm!571403 m!7349854))

(declare-fun m!7350246 () Bool)

(assert (=> bm!571404 m!7350246))

(declare-fun m!7350248 () Bool)

(assert (=> b!6568011 m!7350248))

(declare-fun m!7350250 () Bool)

(assert (=> b!6568013 m!7350250))

(assert (=> b!6566983 d!2060749))

(declare-fun b!6568015 () Bool)

(declare-fun e!3975684 () Bool)

(declare-fun lt!2408036 () Bool)

(assert (=> b!6568015 (= e!3975684 (not lt!2408036))))

(declare-fun b!6568016 () Bool)

(declare-fun res!2695446 () Bool)

(declare-fun e!3975682 () Bool)

(assert (=> b!6568016 (=> (not res!2695446) (not e!3975682))))

(declare-fun call!571410 () Bool)

(assert (=> b!6568016 (= res!2695446 (not call!571410))))

(declare-fun b!6568017 () Bool)

(declare-fun e!3975685 () Bool)

(assert (=> b!6568017 (= e!3975685 (= lt!2408036 call!571410))))

(declare-fun b!6568018 () Bool)

(declare-fun e!3975680 () Bool)

(assert (=> b!6568018 (= e!3975680 (nullable!6436 r!7292))))

(declare-fun d!2060751 () Bool)

(assert (=> d!2060751 e!3975685))

(declare-fun c!1207256 () Bool)

(assert (=> d!2060751 (= c!1207256 ((_ is EmptyExpr!16443) r!7292))))

(assert (=> d!2060751 (= lt!2408036 e!3975680)))

(declare-fun c!1207255 () Bool)

(assert (=> d!2060751 (= c!1207255 (isEmpty!37753 s!2326))))

(assert (=> d!2060751 (validRegex!8179 r!7292)))

(assert (=> d!2060751 (= (matchR!8626 r!7292 s!2326) lt!2408036)))

(declare-fun b!6568019 () Bool)

(declare-fun res!2695443 () Bool)

(declare-fun e!3975683 () Bool)

(assert (=> b!6568019 (=> res!2695443 e!3975683)))

(assert (=> b!6568019 (= res!2695443 (not (isEmpty!37753 (tail!12422 s!2326))))))

(declare-fun b!6568020 () Bool)

(assert (=> b!6568020 (= e!3975685 e!3975684)))

(declare-fun c!1207254 () Bool)

(assert (=> b!6568020 (= c!1207254 ((_ is EmptyLang!16443) r!7292))))

(declare-fun b!6568021 () Bool)

(declare-fun res!2695441 () Bool)

(declare-fun e!3975686 () Bool)

(assert (=> b!6568021 (=> res!2695441 e!3975686)))

(assert (=> b!6568021 (= res!2695441 (not ((_ is ElementMatch!16443) r!7292)))))

(assert (=> b!6568021 (= e!3975684 e!3975686)))

(declare-fun b!6568022 () Bool)

(assert (=> b!6568022 (= e!3975683 (not (= (head!13337 s!2326) (c!1206990 r!7292))))))

(declare-fun b!6568023 () Bool)

(assert (=> b!6568023 (= e!3975680 (matchR!8626 (derivativeStep!5127 r!7292 (head!13337 s!2326)) (tail!12422 s!2326)))))

(declare-fun b!6568024 () Bool)

(declare-fun res!2695442 () Bool)

(assert (=> b!6568024 (=> (not res!2695442) (not e!3975682))))

(assert (=> b!6568024 (= res!2695442 (isEmpty!37753 (tail!12422 s!2326)))))

(declare-fun b!6568025 () Bool)

(declare-fun e!3975681 () Bool)

(assert (=> b!6568025 (= e!3975681 e!3975683)))

(declare-fun res!2695444 () Bool)

(assert (=> b!6568025 (=> res!2695444 e!3975683)))

(assert (=> b!6568025 (= res!2695444 call!571410)))

(declare-fun b!6568026 () Bool)

(declare-fun res!2695440 () Bool)

(assert (=> b!6568026 (=> res!2695440 e!3975686)))

(assert (=> b!6568026 (= res!2695440 e!3975682)))

(declare-fun res!2695439 () Bool)

(assert (=> b!6568026 (=> (not res!2695439) (not e!3975682))))

(assert (=> b!6568026 (= res!2695439 lt!2408036)))

(declare-fun bm!571405 () Bool)

(assert (=> bm!571405 (= call!571410 (isEmpty!37753 s!2326))))

(declare-fun b!6568027 () Bool)

(assert (=> b!6568027 (= e!3975686 e!3975681)))

(declare-fun res!2695445 () Bool)

(assert (=> b!6568027 (=> (not res!2695445) (not e!3975681))))

(assert (=> b!6568027 (= res!2695445 (not lt!2408036))))

(declare-fun b!6568028 () Bool)

(assert (=> b!6568028 (= e!3975682 (= (head!13337 s!2326) (c!1206990 r!7292)))))

(assert (= (and d!2060751 c!1207255) b!6568018))

(assert (= (and d!2060751 (not c!1207255)) b!6568023))

(assert (= (and d!2060751 c!1207256) b!6568017))

(assert (= (and d!2060751 (not c!1207256)) b!6568020))

(assert (= (and b!6568020 c!1207254) b!6568015))

(assert (= (and b!6568020 (not c!1207254)) b!6568021))

(assert (= (and b!6568021 (not res!2695441)) b!6568026))

(assert (= (and b!6568026 res!2695439) b!6568016))

(assert (= (and b!6568016 res!2695446) b!6568024))

(assert (= (and b!6568024 res!2695442) b!6568028))

(assert (= (and b!6568026 (not res!2695440)) b!6568027))

(assert (= (and b!6568027 res!2695445) b!6568025))

(assert (= (and b!6568025 (not res!2695444)) b!6568019))

(assert (= (and b!6568019 (not res!2695443)) b!6568022))

(assert (= (or b!6568017 b!6568016 b!6568025) bm!571405))

(assert (=> b!6568023 m!7349888))

(assert (=> b!6568023 m!7349888))

(declare-fun m!7350252 () Bool)

(assert (=> b!6568023 m!7350252))

(assert (=> b!6568023 m!7349892))

(assert (=> b!6568023 m!7350252))

(assert (=> b!6568023 m!7349892))

(declare-fun m!7350254 () Bool)

(assert (=> b!6568023 m!7350254))

(assert (=> bm!571405 m!7349854))

(assert (=> b!6568022 m!7349888))

(assert (=> b!6568019 m!7349892))

(assert (=> b!6568019 m!7349892))

(assert (=> b!6568019 m!7349896))

(assert (=> b!6568028 m!7349888))

(declare-fun m!7350256 () Bool)

(assert (=> b!6568018 m!7350256))

(assert (=> d!2060751 m!7349854))

(assert (=> d!2060751 m!7349168))

(assert (=> b!6568024 m!7349892))

(assert (=> b!6568024 m!7349892))

(assert (=> b!6568024 m!7349896))

(assert (=> b!6566983 d!2060751))

(declare-fun d!2060753 () Bool)

(assert (=> d!2060753 (= (matchR!8626 r!7292 s!2326) (matchRSpec!3544 r!7292 s!2326))))

(declare-fun lt!2408037 () Unit!159107)

(assert (=> d!2060753 (= lt!2408037 (choose!49036 r!7292 s!2326))))

(assert (=> d!2060753 (validRegex!8179 r!7292)))

(assert (=> d!2060753 (= (mainMatchTheorem!3544 r!7292 s!2326) lt!2408037)))

(declare-fun bs!1677657 () Bool)

(assert (= bs!1677657 d!2060753))

(assert (=> bs!1677657 m!7349152))

(assert (=> bs!1677657 m!7349150))

(declare-fun m!7350258 () Bool)

(assert (=> bs!1677657 m!7350258))

(assert (=> bs!1677657 m!7349168))

(assert (=> b!6566983 d!2060753))

(declare-fun d!2060755 () Bool)

(assert (=> d!2060755 (= (Exists!3513 lambda!365586) (choose!49037 lambda!365586))))

(declare-fun bs!1677658 () Bool)

(assert (= bs!1677658 d!2060755))

(declare-fun m!7350260 () Bool)

(assert (=> bs!1677658 m!7350260))

(assert (=> b!6566942 d!2060755))

(declare-fun b!6568029 () Bool)

(declare-fun res!2695449 () Bool)

(declare-fun e!3975688 () Bool)

(assert (=> b!6568029 (=> (not res!2695449) (not e!3975688))))

(declare-fun lt!2408039 () Option!16334)

(assert (=> b!6568029 (= res!2695449 (matchR!8626 (reg!16772 (regOne!33398 r!7292)) (_1!36725 (get!22746 lt!2408039))))))

(declare-fun b!6568031 () Bool)

(declare-fun e!3975691 () Option!16334)

(assert (=> b!6568031 (= e!3975691 (Some!16333 (tuple2!66845 Nil!65504 (_1!36725 lt!2407811))))))

(declare-fun b!6568032 () Bool)

(declare-fun e!3975687 () Bool)

(assert (=> b!6568032 (= e!3975687 (not (isDefined!13037 lt!2408039)))))

(declare-fun b!6568033 () Bool)

(declare-fun e!3975690 () Option!16334)

(assert (=> b!6568033 (= e!3975691 e!3975690)))

(declare-fun c!1207258 () Bool)

(assert (=> b!6568033 (= c!1207258 ((_ is Nil!65504) (_1!36725 lt!2407811)))))

(declare-fun b!6568030 () Bool)

(declare-fun lt!2408040 () Unit!159107)

(declare-fun lt!2408038 () Unit!159107)

(assert (=> b!6568030 (= lt!2408040 lt!2408038)))

(assert (=> b!6568030 (= (++!14588 (++!14588 Nil!65504 (Cons!65504 (h!71952 (_1!36725 lt!2407811)) Nil!65504)) (t!379272 (_1!36725 lt!2407811))) (_1!36725 lt!2407811))))

(assert (=> b!6568030 (= lt!2408038 (lemmaMoveElementToOtherListKeepsConcatEq!2586 Nil!65504 (h!71952 (_1!36725 lt!2407811)) (t!379272 (_1!36725 lt!2407811)) (_1!36725 lt!2407811)))))

(assert (=> b!6568030 (= e!3975690 (findConcatSeparation!2748 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (++!14588 Nil!65504 (Cons!65504 (h!71952 (_1!36725 lt!2407811)) Nil!65504)) (t!379272 (_1!36725 lt!2407811)) (_1!36725 lt!2407811)))))

(declare-fun d!2060757 () Bool)

(assert (=> d!2060757 e!3975687))

(declare-fun res!2695448 () Bool)

(assert (=> d!2060757 (=> res!2695448 e!3975687)))

(assert (=> d!2060757 (= res!2695448 e!3975688)))

(declare-fun res!2695447 () Bool)

(assert (=> d!2060757 (=> (not res!2695447) (not e!3975688))))

(assert (=> d!2060757 (= res!2695447 (isDefined!13037 lt!2408039))))

(assert (=> d!2060757 (= lt!2408039 e!3975691)))

(declare-fun c!1207257 () Bool)

(declare-fun e!3975689 () Bool)

(assert (=> d!2060757 (= c!1207257 e!3975689)))

(declare-fun res!2695451 () Bool)

(assert (=> d!2060757 (=> (not res!2695451) (not e!3975689))))

(assert (=> d!2060757 (= res!2695451 (matchR!8626 (reg!16772 (regOne!33398 r!7292)) Nil!65504))))

(assert (=> d!2060757 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060757 (= (findConcatSeparation!2748 (reg!16772 (regOne!33398 r!7292)) lt!2407775 Nil!65504 (_1!36725 lt!2407811) (_1!36725 lt!2407811)) lt!2408039)))

(declare-fun b!6568034 () Bool)

(declare-fun res!2695450 () Bool)

(assert (=> b!6568034 (=> (not res!2695450) (not e!3975688))))

(assert (=> b!6568034 (= res!2695450 (matchR!8626 lt!2407775 (_2!36725 (get!22746 lt!2408039))))))

(declare-fun b!6568035 () Bool)

(assert (=> b!6568035 (= e!3975689 (matchR!8626 lt!2407775 (_1!36725 lt!2407811)))))

(declare-fun b!6568036 () Bool)

(assert (=> b!6568036 (= e!3975688 (= (++!14588 (_1!36725 (get!22746 lt!2408039)) (_2!36725 (get!22746 lt!2408039))) (_1!36725 lt!2407811)))))

(declare-fun b!6568037 () Bool)

(assert (=> b!6568037 (= e!3975690 None!16333)))

(assert (= (and d!2060757 res!2695451) b!6568035))

(assert (= (and d!2060757 c!1207257) b!6568031))

(assert (= (and d!2060757 (not c!1207257)) b!6568033))

(assert (= (and b!6568033 c!1207258) b!6568037))

(assert (= (and b!6568033 (not c!1207258)) b!6568030))

(assert (= (and d!2060757 res!2695447) b!6568029))

(assert (= (and b!6568029 res!2695449) b!6568034))

(assert (= (and b!6568034 res!2695450) b!6568036))

(assert (= (and d!2060757 (not res!2695448)) b!6568032))

(declare-fun m!7350262 () Bool)

(assert (=> b!6568030 m!7350262))

(assert (=> b!6568030 m!7350262))

(declare-fun m!7350264 () Bool)

(assert (=> b!6568030 m!7350264))

(declare-fun m!7350266 () Bool)

(assert (=> b!6568030 m!7350266))

(assert (=> b!6568030 m!7350262))

(declare-fun m!7350268 () Bool)

(assert (=> b!6568030 m!7350268))

(declare-fun m!7350270 () Bool)

(assert (=> d!2060757 m!7350270))

(declare-fun m!7350272 () Bool)

(assert (=> d!2060757 m!7350272))

(assert (=> d!2060757 m!7350024))

(declare-fun m!7350274 () Bool)

(assert (=> b!6568034 m!7350274))

(declare-fun m!7350276 () Bool)

(assert (=> b!6568034 m!7350276))

(assert (=> b!6568029 m!7350274))

(declare-fun m!7350278 () Bool)

(assert (=> b!6568029 m!7350278))

(assert (=> b!6568036 m!7350274))

(declare-fun m!7350280 () Bool)

(assert (=> b!6568036 m!7350280))

(declare-fun m!7350282 () Bool)

(assert (=> b!6568035 m!7350282))

(assert (=> b!6568032 m!7350270))

(assert (=> b!6566942 d!2060757))

(declare-fun d!2060759 () Bool)

(assert (=> d!2060759 (= (Exists!3513 lambda!365585) (choose!49037 lambda!365585))))

(declare-fun bs!1677659 () Bool)

(assert (= bs!1677659 d!2060759))

(declare-fun m!7350284 () Bool)

(assert (=> bs!1677659 m!7350284))

(assert (=> b!6566942 d!2060759))

(declare-fun bs!1677660 () Bool)

(declare-fun d!2060761 () Bool)

(assert (= bs!1677660 (and d!2060761 b!6567944)))

(declare-fun lambda!365674 () Int)

(assert (=> bs!1677660 (not (= lambda!365674 lambda!365664))))

(declare-fun bs!1677661 () Bool)

(assert (= bs!1677661 (and d!2060761 b!6568004)))

(assert (=> bs!1677661 (not (= lambda!365674 lambda!365669))))

(declare-fun bs!1677662 () Bool)

(assert (= bs!1677662 (and d!2060761 b!6566938)))

(assert (=> bs!1677662 (not (= lambda!365674 lambda!365579))))

(declare-fun bs!1677663 () Bool)

(assert (= bs!1677663 (and d!2060761 b!6566942)))

(assert (=> bs!1677663 (not (= lambda!365674 lambda!365587))))

(assert (=> bs!1677663 (not (= lambda!365674 lambda!365586))))

(declare-fun bs!1677664 () Bool)

(assert (= bs!1677664 (and d!2060761 d!2060709)))

(assert (=> bs!1677664 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) (regTwo!33398 r!7292))) (= lambda!365674 lambda!365662))))

(assert (=> bs!1677663 (= (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) lt!2407775) (= lambda!365674 lambda!365585))))

(declare-fun bs!1677665 () Bool)

(assert (= bs!1677665 (and d!2060761 b!6566944)))

(assert (=> bs!1677665 (not (= lambda!365674 lambda!365584))))

(declare-fun bs!1677666 () Bool)

(assert (= bs!1677666 (and d!2060761 b!6567608)))

(assert (=> bs!1677666 (not (= lambda!365674 lambda!365637))))

(assert (=> bs!1677665 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) (regTwo!33398 r!7292))) (= lambda!365674 lambda!365583))))

(declare-fun bs!1677667 () Bool)

(assert (= bs!1677667 (and d!2060761 d!2060647)))

(assert (=> bs!1677667 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) (regTwo!33398 r!7292))) (= lambda!365674 lambda!365644))))

(assert (=> bs!1677662 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) (regTwo!33398 r!7292))) (= lambda!365674 lambda!365578))))

(assert (=> bs!1677667 (not (= lambda!365674 lambda!365645))))

(declare-fun bs!1677668 () Bool)

(assert (= bs!1677668 (and d!2060761 b!6567605)))

(assert (=> bs!1677668 (not (= lambda!365674 lambda!365639))))

(declare-fun bs!1677669 () Bool)

(assert (= bs!1677669 (and d!2060761 b!6568007)))

(assert (=> bs!1677669 (not (= lambda!365674 lambda!365668))))

(declare-fun bs!1677670 () Bool)

(assert (= bs!1677670 (and d!2060761 b!6567947)))

(assert (=> bs!1677670 (not (= lambda!365674 lambda!365663))))

(assert (=> d!2060761 true))

(assert (=> d!2060761 true))

(declare-fun lambda!365675 () Int)

(assert (=> bs!1677660 (not (= lambda!365675 lambda!365664))))

(assert (=> bs!1677661 (not (= lambda!365675 lambda!365669))))

(assert (=> bs!1677662 (not (= lambda!365675 lambda!365579))))

(assert (=> bs!1677663 (= (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) lt!2407775) (= lambda!365675 lambda!365587))))

(assert (=> bs!1677663 (not (= lambda!365675 lambda!365586))))

(assert (=> bs!1677664 (not (= lambda!365675 lambda!365662))))

(assert (=> bs!1677663 (not (= lambda!365675 lambda!365585))))

(declare-fun bs!1677671 () Bool)

(assert (= bs!1677671 d!2060761))

(assert (=> bs!1677671 (not (= lambda!365675 lambda!365674))))

(assert (=> bs!1677665 (not (= lambda!365675 lambda!365584))))

(assert (=> bs!1677666 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (reg!16772 lt!2407832)) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) lt!2407832)) (= lambda!365675 lambda!365637))))

(assert (=> bs!1677665 (not (= lambda!365675 lambda!365583))))

(assert (=> bs!1677667 (not (= lambda!365675 lambda!365644))))

(assert (=> bs!1677662 (not (= lambda!365675 lambda!365578))))

(assert (=> bs!1677667 (not (= lambda!365675 lambda!365645))))

(assert (=> bs!1677668 (not (= lambda!365675 lambda!365639))))

(assert (=> bs!1677669 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (reg!16772 r!7292)) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) r!7292)) (= lambda!365675 lambda!365668))))

(assert (=> bs!1677670 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (reg!16772 lt!2407779)) (= (Star!16443 (reg!16772 (regOne!33398 r!7292))) lt!2407779)) (= lambda!365675 lambda!365663))))

(assert (=> d!2060761 true))

(assert (=> d!2060761 true))

(assert (=> d!2060761 (= (Exists!3513 lambda!365674) (Exists!3513 lambda!365675))))

(declare-fun lt!2408043 () Unit!159107)

(declare-fun choose!49047 (Regex!16443 List!65628) Unit!159107)

(assert (=> d!2060761 (= lt!2408043 (choose!49047 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407811)))))

(assert (=> d!2060761 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060761 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!666 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407811)) lt!2408043)))

(declare-fun m!7350286 () Bool)

(assert (=> bs!1677671 m!7350286))

(declare-fun m!7350288 () Bool)

(assert (=> bs!1677671 m!7350288))

(declare-fun m!7350290 () Bool)

(assert (=> bs!1677671 m!7350290))

(assert (=> bs!1677671 m!7350024))

(assert (=> b!6566942 d!2060761))

(declare-fun b!6568049 () Bool)

(declare-fun e!3975697 () List!65628)

(assert (=> b!6568049 (= e!3975697 (Cons!65504 (h!71952 (_2!36725 lt!2407778)) (++!14588 (t!379272 (_2!36725 lt!2407778)) (_2!36725 lt!2407811))))))

(declare-fun d!2060763 () Bool)

(declare-fun e!3975696 () Bool)

(assert (=> d!2060763 e!3975696))

(declare-fun res!2695463 () Bool)

(assert (=> d!2060763 (=> (not res!2695463) (not e!3975696))))

(declare-fun lt!2408044 () List!65628)

(assert (=> d!2060763 (= res!2695463 (= (content!12609 lt!2408044) ((_ map or) (content!12609 (_2!36725 lt!2407778)) (content!12609 (_2!36725 lt!2407811)))))))

(assert (=> d!2060763 (= lt!2408044 e!3975697)))

(declare-fun c!1207259 () Bool)

(assert (=> d!2060763 (= c!1207259 ((_ is Nil!65504) (_2!36725 lt!2407778)))))

(assert (=> d!2060763 (= (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811)) lt!2408044)))

(declare-fun b!6568048 () Bool)

(assert (=> b!6568048 (= e!3975697 (_2!36725 lt!2407811))))

(declare-fun b!6568051 () Bool)

(assert (=> b!6568051 (= e!3975696 (or (not (= (_2!36725 lt!2407811) Nil!65504)) (= lt!2408044 (_2!36725 lt!2407778))))))

(declare-fun b!6568050 () Bool)

(declare-fun res!2695462 () Bool)

(assert (=> b!6568050 (=> (not res!2695462) (not e!3975696))))

(assert (=> b!6568050 (= res!2695462 (= (size!40535 lt!2408044) (+ (size!40535 (_2!36725 lt!2407778)) (size!40535 (_2!36725 lt!2407811)))))))

(assert (= (and d!2060763 c!1207259) b!6568048))

(assert (= (and d!2060763 (not c!1207259)) b!6568049))

(assert (= (and d!2060763 res!2695463) b!6568050))

(assert (= (and b!6568050 res!2695462) b!6568051))

(declare-fun m!7350292 () Bool)

(assert (=> b!6568049 m!7350292))

(declare-fun m!7350294 () Bool)

(assert (=> d!2060763 m!7350294))

(declare-fun m!7350296 () Bool)

(assert (=> d!2060763 m!7350296))

(declare-fun m!7350298 () Bool)

(assert (=> d!2060763 m!7350298))

(declare-fun m!7350300 () Bool)

(assert (=> b!6568050 m!7350300))

(declare-fun m!7350302 () Bool)

(assert (=> b!6568050 m!7350302))

(declare-fun m!7350304 () Bool)

(assert (=> b!6568050 m!7350304))

(assert (=> b!6566942 d!2060763))

(declare-fun bs!1677672 () Bool)

(declare-fun b!6568055 () Bool)

(assert (= bs!1677672 (and b!6568055 b!6567944)))

(declare-fun lambda!365676 () Int)

(assert (=> bs!1677672 (not (= lambda!365676 lambda!365664))))

(declare-fun bs!1677673 () Bool)

(assert (= bs!1677673 (and b!6568055 b!6568004)))

(assert (=> bs!1677673 (not (= lambda!365676 lambda!365669))))

(declare-fun bs!1677674 () Bool)

(assert (= bs!1677674 (and b!6568055 b!6566938)))

(assert (=> bs!1677674 (not (= lambda!365676 lambda!365579))))

(declare-fun bs!1677675 () Bool)

(assert (= bs!1677675 (and b!6568055 b!6566942)))

(assert (=> bs!1677675 (= (and (= (reg!16772 lt!2407774) (reg!16772 (regOne!33398 r!7292))) (= lt!2407774 lt!2407775)) (= lambda!365676 lambda!365587))))

(assert (=> bs!1677675 (not (= lambda!365676 lambda!365586))))

(declare-fun bs!1677676 () Bool)

(assert (= bs!1677676 (and b!6568055 d!2060709)))

(assert (=> bs!1677676 (not (= lambda!365676 lambda!365662))))

(declare-fun bs!1677677 () Bool)

(assert (= bs!1677677 (and b!6568055 d!2060761)))

(assert (=> bs!1677677 (not (= lambda!365676 lambda!365674))))

(declare-fun bs!1677678 () Bool)

(assert (= bs!1677678 (and b!6568055 b!6566944)))

(assert (=> bs!1677678 (not (= lambda!365676 lambda!365584))))

(declare-fun bs!1677679 () Bool)

(assert (= bs!1677679 (and b!6568055 b!6567608)))

(assert (=> bs!1677679 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 lt!2407774) (reg!16772 lt!2407832)) (= lt!2407774 lt!2407832)) (= lambda!365676 lambda!365637))))

(assert (=> bs!1677678 (not (= lambda!365676 lambda!365583))))

(declare-fun bs!1677680 () Bool)

(assert (= bs!1677680 (and b!6568055 d!2060647)))

(assert (=> bs!1677680 (not (= lambda!365676 lambda!365644))))

(assert (=> bs!1677674 (not (= lambda!365676 lambda!365578))))

(assert (=> bs!1677680 (not (= lambda!365676 lambda!365645))))

(declare-fun bs!1677681 () Bool)

(assert (= bs!1677681 (and b!6568055 b!6567605)))

(assert (=> bs!1677681 (not (= lambda!365676 lambda!365639))))

(declare-fun bs!1677682 () Bool)

(assert (= bs!1677682 (and b!6568055 b!6568007)))

(assert (=> bs!1677682 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 lt!2407774) (reg!16772 r!7292)) (= lt!2407774 r!7292)) (= lambda!365676 lambda!365668))))

(declare-fun bs!1677683 () Bool)

(assert (= bs!1677683 (and b!6568055 b!6567947)))

(assert (=> bs!1677683 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 lt!2407774) (reg!16772 lt!2407779)) (= lt!2407774 lt!2407779)) (= lambda!365676 lambda!365663))))

(assert (=> bs!1677677 (= (and (= (reg!16772 lt!2407774) (reg!16772 (regOne!33398 r!7292))) (= lt!2407774 (Star!16443 (reg!16772 (regOne!33398 r!7292))))) (= lambda!365676 lambda!365675))))

(assert (=> bs!1677675 (not (= lambda!365676 lambda!365585))))

(assert (=> b!6568055 true))

(assert (=> b!6568055 true))

(declare-fun bs!1677684 () Bool)

(declare-fun b!6568052 () Bool)

(assert (= bs!1677684 (and b!6568052 b!6567944)))

(declare-fun lambda!365677 () Int)

(assert (=> bs!1677684 (= (and (= (_1!36725 lt!2407811) s!2326) (= (regOne!33398 lt!2407774) (regOne!33398 lt!2407779)) (= (regTwo!33398 lt!2407774) (regTwo!33398 lt!2407779))) (= lambda!365677 lambda!365664))))

(declare-fun bs!1677685 () Bool)

(assert (= bs!1677685 (and b!6568052 b!6568055)))

(assert (=> bs!1677685 (not (= lambda!365677 lambda!365676))))

(declare-fun bs!1677686 () Bool)

(assert (= bs!1677686 (and b!6568052 b!6568004)))

(assert (=> bs!1677686 (= (and (= (_1!36725 lt!2407811) s!2326) (= (regOne!33398 lt!2407774) (regOne!33398 r!7292)) (= (regTwo!33398 lt!2407774) (regTwo!33398 r!7292))) (= lambda!365677 lambda!365669))))

(declare-fun bs!1677687 () Bool)

(assert (= bs!1677687 (and b!6568052 b!6566938)))

(assert (=> bs!1677687 (= (and (= (_1!36725 lt!2407811) s!2326) (= (regOne!33398 lt!2407774) (regOne!33398 r!7292)) (= (regTwo!33398 lt!2407774) (regTwo!33398 r!7292))) (= lambda!365677 lambda!365579))))

(declare-fun bs!1677688 () Bool)

(assert (= bs!1677688 (and b!6568052 b!6566942)))

(assert (=> bs!1677688 (not (= lambda!365677 lambda!365587))))

(assert (=> bs!1677688 (= (and (= (regOne!33398 lt!2407774) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 lt!2407774) lt!2407775)) (= lambda!365677 lambda!365586))))

(declare-fun bs!1677689 () Bool)

(assert (= bs!1677689 (and b!6568052 d!2060709)))

(assert (=> bs!1677689 (not (= lambda!365677 lambda!365662))))

(declare-fun bs!1677690 () Bool)

(assert (= bs!1677690 (and b!6568052 d!2060761)))

(assert (=> bs!1677690 (not (= lambda!365677 lambda!365674))))

(declare-fun bs!1677691 () Bool)

(assert (= bs!1677691 (and b!6568052 b!6566944)))

(assert (=> bs!1677691 (= (and (= (_1!36725 lt!2407811) s!2326) (= (regOne!33398 lt!2407774) lt!2407774) (= (regTwo!33398 lt!2407774) (regTwo!33398 r!7292))) (= lambda!365677 lambda!365584))))

(declare-fun bs!1677692 () Bool)

(assert (= bs!1677692 (and b!6568052 b!6567608)))

(assert (=> bs!1677692 (not (= lambda!365677 lambda!365637))))

(assert (=> bs!1677691 (not (= lambda!365677 lambda!365583))))

(declare-fun bs!1677693 () Bool)

(assert (= bs!1677693 (and b!6568052 d!2060647)))

(assert (=> bs!1677693 (not (= lambda!365677 lambda!365644))))

(assert (=> bs!1677687 (not (= lambda!365677 lambda!365578))))

(assert (=> bs!1677693 (= (and (= (_1!36725 lt!2407811) s!2326) (= (regOne!33398 lt!2407774) lt!2407774) (= (regTwo!33398 lt!2407774) (regTwo!33398 r!7292))) (= lambda!365677 lambda!365645))))

(declare-fun bs!1677694 () Bool)

(assert (= bs!1677694 (and b!6568052 b!6567605)))

(assert (=> bs!1677694 (= (and (= (_1!36725 lt!2407811) s!2326) (= (regOne!33398 lt!2407774) (regOne!33398 lt!2407832)) (= (regTwo!33398 lt!2407774) (regTwo!33398 lt!2407832))) (= lambda!365677 lambda!365639))))

(declare-fun bs!1677695 () Bool)

(assert (= bs!1677695 (and b!6568052 b!6568007)))

(assert (=> bs!1677695 (not (= lambda!365677 lambda!365668))))

(declare-fun bs!1677696 () Bool)

(assert (= bs!1677696 (and b!6568052 b!6567947)))

(assert (=> bs!1677696 (not (= lambda!365677 lambda!365663))))

(assert (=> bs!1677690 (not (= lambda!365677 lambda!365675))))

(assert (=> bs!1677688 (not (= lambda!365677 lambda!365585))))

(assert (=> b!6568052 true))

(assert (=> b!6568052 true))

(declare-fun e!3975701 () Bool)

(declare-fun call!571412 () Bool)

(assert (=> b!6568052 (= e!3975701 call!571412)))

(declare-fun b!6568053 () Bool)

(declare-fun e!3975699 () Bool)

(declare-fun call!571411 () Bool)

(assert (=> b!6568053 (= e!3975699 call!571411)))

(declare-fun b!6568054 () Bool)

(declare-fun res!2695465 () Bool)

(declare-fun e!3975698 () Bool)

(assert (=> b!6568054 (=> res!2695465 e!3975698)))

(assert (=> b!6568054 (= res!2695465 call!571411)))

(assert (=> b!6568054 (= e!3975701 e!3975698)))

(declare-fun bm!571406 () Bool)

(assert (=> bm!571406 (= call!571411 (isEmpty!37753 (_1!36725 lt!2407811)))))

(assert (=> b!6568055 (= e!3975698 call!571412)))

(declare-fun b!6568056 () Bool)

(declare-fun e!3975704 () Bool)

(assert (=> b!6568056 (= e!3975704 (= (_1!36725 lt!2407811) (Cons!65504 (c!1206990 lt!2407774) Nil!65504)))))

(declare-fun b!6568057 () Bool)

(declare-fun c!1207261 () Bool)

(assert (=> b!6568057 (= c!1207261 ((_ is Union!16443) lt!2407774))))

(declare-fun e!3975703 () Bool)

(assert (=> b!6568057 (= e!3975704 e!3975703)))

(declare-fun d!2060765 () Bool)

(declare-fun c!1207262 () Bool)

(assert (=> d!2060765 (= c!1207262 ((_ is EmptyExpr!16443) lt!2407774))))

(assert (=> d!2060765 (= (matchRSpec!3544 lt!2407774 (_1!36725 lt!2407811)) e!3975699)))

(declare-fun b!6568058 () Bool)

(assert (=> b!6568058 (= e!3975703 e!3975701)))

(declare-fun c!1207263 () Bool)

(assert (=> b!6568058 (= c!1207263 ((_ is Star!16443) lt!2407774))))

(declare-fun bm!571407 () Bool)

(assert (=> bm!571407 (= call!571412 (Exists!3513 (ite c!1207263 lambda!365676 lambda!365677)))))

(declare-fun b!6568059 () Bool)

(declare-fun e!3975702 () Bool)

(assert (=> b!6568059 (= e!3975702 (matchRSpec!3544 (regTwo!33399 lt!2407774) (_1!36725 lt!2407811)))))

(declare-fun b!6568060 () Bool)

(declare-fun e!3975700 () Bool)

(assert (=> b!6568060 (= e!3975699 e!3975700)))

(declare-fun res!2695466 () Bool)

(assert (=> b!6568060 (= res!2695466 (not ((_ is EmptyLang!16443) lt!2407774)))))

(assert (=> b!6568060 (=> (not res!2695466) (not e!3975700))))

(declare-fun b!6568061 () Bool)

(assert (=> b!6568061 (= e!3975703 e!3975702)))

(declare-fun res!2695464 () Bool)

(assert (=> b!6568061 (= res!2695464 (matchRSpec!3544 (regOne!33399 lt!2407774) (_1!36725 lt!2407811)))))

(assert (=> b!6568061 (=> res!2695464 e!3975702)))

(declare-fun b!6568062 () Bool)

(declare-fun c!1207260 () Bool)

(assert (=> b!6568062 (= c!1207260 ((_ is ElementMatch!16443) lt!2407774))))

(assert (=> b!6568062 (= e!3975700 e!3975704)))

(assert (= (and d!2060765 c!1207262) b!6568053))

(assert (= (and d!2060765 (not c!1207262)) b!6568060))

(assert (= (and b!6568060 res!2695466) b!6568062))

(assert (= (and b!6568062 c!1207260) b!6568056))

(assert (= (and b!6568062 (not c!1207260)) b!6568057))

(assert (= (and b!6568057 c!1207261) b!6568061))

(assert (= (and b!6568057 (not c!1207261)) b!6568058))

(assert (= (and b!6568061 (not res!2695464)) b!6568059))

(assert (= (and b!6568058 c!1207263) b!6568054))

(assert (= (and b!6568058 (not c!1207263)) b!6568052))

(assert (= (and b!6568054 (not res!2695465)) b!6568055))

(assert (= (or b!6568055 b!6568052) bm!571407))

(assert (= (or b!6568053 b!6568054) bm!571406))

(assert (=> bm!571406 m!7349918))

(declare-fun m!7350306 () Bool)

(assert (=> bm!571407 m!7350306))

(declare-fun m!7350308 () Bool)

(assert (=> b!6568059 m!7350308))

(declare-fun m!7350310 () Bool)

(assert (=> b!6568061 m!7350310))

(assert (=> b!6566942 d!2060765))

(declare-fun b!6568064 () Bool)

(declare-fun e!3975706 () List!65628)

(assert (=> b!6568064 (= e!3975706 (Cons!65504 (h!71952 (_1!36725 lt!2407778)) (++!14588 (t!379272 (_1!36725 lt!2407778)) (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811)))))))

(declare-fun d!2060767 () Bool)

(declare-fun e!3975705 () Bool)

(assert (=> d!2060767 e!3975705))

(declare-fun res!2695468 () Bool)

(assert (=> d!2060767 (=> (not res!2695468) (not e!3975705))))

(declare-fun lt!2408045 () List!65628)

(assert (=> d!2060767 (= res!2695468 (= (content!12609 lt!2408045) ((_ map or) (content!12609 (_1!36725 lt!2407778)) (content!12609 (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811))))))))

(assert (=> d!2060767 (= lt!2408045 e!3975706)))

(declare-fun c!1207264 () Bool)

(assert (=> d!2060767 (= c!1207264 ((_ is Nil!65504) (_1!36725 lt!2407778)))))

(assert (=> d!2060767 (= (++!14588 (_1!36725 lt!2407778) (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811))) lt!2408045)))

(declare-fun b!6568063 () Bool)

(assert (=> b!6568063 (= e!3975706 (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811)))))

(declare-fun b!6568066 () Bool)

(assert (=> b!6568066 (= e!3975705 (or (not (= (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811)) Nil!65504)) (= lt!2408045 (_1!36725 lt!2407778))))))

(declare-fun b!6568065 () Bool)

(declare-fun res!2695467 () Bool)

(assert (=> b!6568065 (=> (not res!2695467) (not e!3975705))))

(assert (=> b!6568065 (= res!2695467 (= (size!40535 lt!2408045) (+ (size!40535 (_1!36725 lt!2407778)) (size!40535 (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811))))))))

(assert (= (and d!2060767 c!1207264) b!6568063))

(assert (= (and d!2060767 (not c!1207264)) b!6568064))

(assert (= (and d!2060767 res!2695468) b!6568065))

(assert (= (and b!6568065 res!2695467) b!6568066))

(assert (=> b!6568064 m!7349052))

(declare-fun m!7350312 () Bool)

(assert (=> b!6568064 m!7350312))

(declare-fun m!7350314 () Bool)

(assert (=> d!2060767 m!7350314))

(declare-fun m!7350316 () Bool)

(assert (=> d!2060767 m!7350316))

(assert (=> d!2060767 m!7349052))

(declare-fun m!7350318 () Bool)

(assert (=> d!2060767 m!7350318))

(declare-fun m!7350320 () Bool)

(assert (=> b!6568065 m!7350320))

(declare-fun m!7350322 () Bool)

(assert (=> b!6568065 m!7350322))

(assert (=> b!6568065 m!7349052))

(declare-fun m!7350324 () Bool)

(assert (=> b!6568065 m!7350324))

(assert (=> b!6566942 d!2060767))

(declare-fun b!6568068 () Bool)

(declare-fun e!3975708 () List!65628)

(assert (=> b!6568068 (= e!3975708 (Cons!65504 (h!71952 lt!2407810) (++!14588 (t!379272 lt!2407810) (_2!36725 lt!2407811))))))

(declare-fun d!2060769 () Bool)

(declare-fun e!3975707 () Bool)

(assert (=> d!2060769 e!3975707))

(declare-fun res!2695470 () Bool)

(assert (=> d!2060769 (=> (not res!2695470) (not e!3975707))))

(declare-fun lt!2408046 () List!65628)

(assert (=> d!2060769 (= res!2695470 (= (content!12609 lt!2408046) ((_ map or) (content!12609 lt!2407810) (content!12609 (_2!36725 lt!2407811)))))))

(assert (=> d!2060769 (= lt!2408046 e!3975708)))

(declare-fun c!1207265 () Bool)

(assert (=> d!2060769 (= c!1207265 ((_ is Nil!65504) lt!2407810))))

(assert (=> d!2060769 (= (++!14588 lt!2407810 (_2!36725 lt!2407811)) lt!2408046)))

(declare-fun b!6568067 () Bool)

(assert (=> b!6568067 (= e!3975708 (_2!36725 lt!2407811))))

(declare-fun b!6568070 () Bool)

(assert (=> b!6568070 (= e!3975707 (or (not (= (_2!36725 lt!2407811) Nil!65504)) (= lt!2408046 lt!2407810)))))

(declare-fun b!6568069 () Bool)

(declare-fun res!2695469 () Bool)

(assert (=> b!6568069 (=> (not res!2695469) (not e!3975707))))

(assert (=> b!6568069 (= res!2695469 (= (size!40535 lt!2408046) (+ (size!40535 lt!2407810) (size!40535 (_2!36725 lt!2407811)))))))

(assert (= (and d!2060769 c!1207265) b!6568067))

(assert (= (and d!2060769 (not c!1207265)) b!6568068))

(assert (= (and d!2060769 res!2695470) b!6568069))

(assert (= (and b!6568069 res!2695469) b!6568070))

(declare-fun m!7350326 () Bool)

(assert (=> b!6568068 m!7350326))

(declare-fun m!7350328 () Bool)

(assert (=> d!2060769 m!7350328))

(declare-fun m!7350330 () Bool)

(assert (=> d!2060769 m!7350330))

(assert (=> d!2060769 m!7350298))

(declare-fun m!7350332 () Bool)

(assert (=> b!6568069 m!7350332))

(declare-fun m!7350334 () Bool)

(assert (=> b!6568069 m!7350334))

(assert (=> b!6568069 m!7350304))

(assert (=> b!6566942 d!2060769))

(declare-fun bs!1677697 () Bool)

(declare-fun d!2060771 () Bool)

(assert (= bs!1677697 (and d!2060771 b!6567944)))

(declare-fun lambda!365678 () Int)

(assert (=> bs!1677697 (not (= lambda!365678 lambda!365664))))

(declare-fun bs!1677698 () Bool)

(assert (= bs!1677698 (and d!2060771 b!6568055)))

(assert (=> bs!1677698 (not (= lambda!365678 lambda!365676))))

(declare-fun bs!1677699 () Bool)

(assert (= bs!1677699 (and d!2060771 b!6568004)))

(assert (=> bs!1677699 (not (= lambda!365678 lambda!365669))))

(declare-fun bs!1677700 () Bool)

(assert (= bs!1677700 (and d!2060771 b!6566938)))

(assert (=> bs!1677700 (not (= lambda!365678 lambda!365579))))

(declare-fun bs!1677701 () Bool)

(assert (= bs!1677701 (and d!2060771 b!6566942)))

(assert (=> bs!1677701 (not (= lambda!365678 lambda!365587))))

(assert (=> bs!1677701 (not (= lambda!365678 lambda!365586))))

(declare-fun bs!1677702 () Bool)

(assert (= bs!1677702 (and d!2060771 d!2060709)))

(assert (=> bs!1677702 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365678 lambda!365662))))

(declare-fun bs!1677703 () Bool)

(assert (= bs!1677703 (and d!2060771 d!2060761)))

(assert (=> bs!1677703 (= (= lt!2407775 (Star!16443 (reg!16772 (regOne!33398 r!7292)))) (= lambda!365678 lambda!365674))))

(declare-fun bs!1677704 () Bool)

(assert (= bs!1677704 (and d!2060771 b!6566944)))

(assert (=> bs!1677704 (not (= lambda!365678 lambda!365584))))

(declare-fun bs!1677705 () Bool)

(assert (= bs!1677705 (and d!2060771 b!6567608)))

(assert (=> bs!1677705 (not (= lambda!365678 lambda!365637))))

(assert (=> bs!1677704 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365678 lambda!365583))))

(declare-fun bs!1677706 () Bool)

(assert (= bs!1677706 (and d!2060771 d!2060647)))

(assert (=> bs!1677706 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365678 lambda!365644))))

(assert (=> bs!1677700 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365678 lambda!365578))))

(assert (=> bs!1677706 (not (= lambda!365678 lambda!365645))))

(declare-fun bs!1677707 () Bool)

(assert (= bs!1677707 (and d!2060771 b!6567605)))

(assert (=> bs!1677707 (not (= lambda!365678 lambda!365639))))

(declare-fun bs!1677708 () Bool)

(assert (= bs!1677708 (and d!2060771 b!6568007)))

(assert (=> bs!1677708 (not (= lambda!365678 lambda!365668))))

(declare-fun bs!1677709 () Bool)

(assert (= bs!1677709 (and d!2060771 b!6567947)))

(assert (=> bs!1677709 (not (= lambda!365678 lambda!365663))))

(declare-fun bs!1677710 () Bool)

(assert (= bs!1677710 (and d!2060771 b!6568052)))

(assert (=> bs!1677710 (not (= lambda!365678 lambda!365677))))

(assert (=> bs!1677703 (not (= lambda!365678 lambda!365675))))

(assert (=> bs!1677701 (= lambda!365678 lambda!365585)))

(assert (=> d!2060771 true))

(assert (=> d!2060771 true))

(assert (=> d!2060771 true))

(assert (=> d!2060771 (= (isDefined!13037 (findConcatSeparation!2748 (reg!16772 (regOne!33398 r!7292)) lt!2407775 Nil!65504 (_1!36725 lt!2407811) (_1!36725 lt!2407811))) (Exists!3513 lambda!365678))))

(declare-fun lt!2408047 () Unit!159107)

(assert (=> d!2060771 (= lt!2408047 (choose!49043 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (_1!36725 lt!2407811)))))

(assert (=> d!2060771 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060771 (= (lemmaFindConcatSeparationEquivalentToExists!2512 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (_1!36725 lt!2407811)) lt!2408047)))

(declare-fun bs!1677711 () Bool)

(assert (= bs!1677711 d!2060771))

(assert (=> bs!1677711 m!7349082))

(declare-fun m!7350336 () Bool)

(assert (=> bs!1677711 m!7350336))

(assert (=> bs!1677711 m!7349082))

(declare-fun m!7350338 () Bool)

(assert (=> bs!1677711 m!7350338))

(assert (=> bs!1677711 m!7350024))

(declare-fun m!7350340 () Bool)

(assert (=> bs!1677711 m!7350340))

(assert (=> b!6566942 d!2060771))

(declare-fun b!6568072 () Bool)

(declare-fun e!3975710 () List!65628)

(assert (=> b!6568072 (= e!3975710 (Cons!65504 (h!71952 (_1!36725 lt!2407778)) (++!14588 (t!379272 (_1!36725 lt!2407778)) (_2!36725 lt!2407778))))))

(declare-fun d!2060773 () Bool)

(declare-fun e!3975709 () Bool)

(assert (=> d!2060773 e!3975709))

(declare-fun res!2695472 () Bool)

(assert (=> d!2060773 (=> (not res!2695472) (not e!3975709))))

(declare-fun lt!2408048 () List!65628)

(assert (=> d!2060773 (= res!2695472 (= (content!12609 lt!2408048) ((_ map or) (content!12609 (_1!36725 lt!2407778)) (content!12609 (_2!36725 lt!2407778)))))))

(assert (=> d!2060773 (= lt!2408048 e!3975710)))

(declare-fun c!1207266 () Bool)

(assert (=> d!2060773 (= c!1207266 ((_ is Nil!65504) (_1!36725 lt!2407778)))))

(assert (=> d!2060773 (= (++!14588 (_1!36725 lt!2407778) (_2!36725 lt!2407778)) lt!2408048)))

(declare-fun b!6568071 () Bool)

(assert (=> b!6568071 (= e!3975710 (_2!36725 lt!2407778))))

(declare-fun b!6568074 () Bool)

(assert (=> b!6568074 (= e!3975709 (or (not (= (_2!36725 lt!2407778) Nil!65504)) (= lt!2408048 (_1!36725 lt!2407778))))))

(declare-fun b!6568073 () Bool)

(declare-fun res!2695471 () Bool)

(assert (=> b!6568073 (=> (not res!2695471) (not e!3975709))))

(assert (=> b!6568073 (= res!2695471 (= (size!40535 lt!2408048) (+ (size!40535 (_1!36725 lt!2407778)) (size!40535 (_2!36725 lt!2407778)))))))

(assert (= (and d!2060773 c!1207266) b!6568071))

(assert (= (and d!2060773 (not c!1207266)) b!6568072))

(assert (= (and d!2060773 res!2695472) b!6568073))

(assert (= (and b!6568073 res!2695471) b!6568074))

(declare-fun m!7350342 () Bool)

(assert (=> b!6568072 m!7350342))

(declare-fun m!7350344 () Bool)

(assert (=> d!2060773 m!7350344))

(assert (=> d!2060773 m!7350316))

(assert (=> d!2060773 m!7350296))

(declare-fun m!7350346 () Bool)

(assert (=> b!6568073 m!7350346))

(assert (=> b!6568073 m!7350322))

(assert (=> b!6568073 m!7350302))

(assert (=> b!6566942 d!2060773))

(declare-fun d!2060775 () Bool)

(assert (=> d!2060775 (= (++!14588 (++!14588 (_1!36725 lt!2407778) (_2!36725 lt!2407778)) (_2!36725 lt!2407811)) (++!14588 (_1!36725 lt!2407778) (++!14588 (_2!36725 lt!2407778) (_2!36725 lt!2407811))))))

(declare-fun lt!2408051 () Unit!159107)

(declare-fun choose!49049 (List!65628 List!65628 List!65628) Unit!159107)

(assert (=> d!2060775 (= lt!2408051 (choose!49049 (_1!36725 lt!2407778) (_2!36725 lt!2407778) (_2!36725 lt!2407811)))))

(assert (=> d!2060775 (= (lemmaConcatAssociativity!2946 (_1!36725 lt!2407778) (_2!36725 lt!2407778) (_2!36725 lt!2407811)) lt!2408051)))

(declare-fun bs!1677712 () Bool)

(assert (= bs!1677712 d!2060775))

(assert (=> bs!1677712 m!7349062))

(declare-fun m!7350348 () Bool)

(assert (=> bs!1677712 m!7350348))

(assert (=> bs!1677712 m!7349052))

(assert (=> bs!1677712 m!7349062))

(declare-fun m!7350350 () Bool)

(assert (=> bs!1677712 m!7350350))

(assert (=> bs!1677712 m!7349052))

(assert (=> bs!1677712 m!7349054))

(assert (=> b!6566942 d!2060775))

(declare-fun d!2060777 () Bool)

(assert (=> d!2060777 (= (isDefined!13037 lt!2407795) (not (isEmpty!37754 lt!2407795)))))

(declare-fun bs!1677713 () Bool)

(assert (= bs!1677713 d!2060777))

(declare-fun m!7350352 () Bool)

(assert (=> bs!1677713 m!7350352))

(assert (=> b!6566942 d!2060777))

(declare-fun d!2060779 () Bool)

(assert (=> d!2060779 (= (get!22746 lt!2407795) (v!52518 lt!2407795))))

(assert (=> b!6566942 d!2060779))

(declare-fun d!2060781 () Bool)

(assert (=> d!2060781 (= (matchR!8626 lt!2407774 (_1!36725 lt!2407811)) (matchRSpec!3544 lt!2407774 (_1!36725 lt!2407811)))))

(declare-fun lt!2408052 () Unit!159107)

(assert (=> d!2060781 (= lt!2408052 (choose!49036 lt!2407774 (_1!36725 lt!2407811)))))

(assert (=> d!2060781 (validRegex!8179 lt!2407774)))

(assert (=> d!2060781 (= (mainMatchTheorem!3544 lt!2407774 (_1!36725 lt!2407811)) lt!2408052)))

(declare-fun bs!1677714 () Bool)

(assert (= bs!1677714 d!2060781))

(assert (=> bs!1677714 m!7349128))

(assert (=> bs!1677714 m!7349060))

(declare-fun m!7350354 () Bool)

(assert (=> bs!1677714 m!7350354))

(assert (=> bs!1677714 m!7349924))

(assert (=> b!6566942 d!2060781))

(declare-fun b!6568075 () Bool)

(declare-fun e!3975715 () Bool)

(declare-fun lt!2408053 () Bool)

(assert (=> b!6568075 (= e!3975715 (not lt!2408053))))

(declare-fun b!6568076 () Bool)

(declare-fun res!2695480 () Bool)

(declare-fun e!3975713 () Bool)

(assert (=> b!6568076 (=> (not res!2695480) (not e!3975713))))

(declare-fun call!571413 () Bool)

(assert (=> b!6568076 (= res!2695480 (not call!571413))))

(declare-fun b!6568077 () Bool)

(declare-fun e!3975716 () Bool)

(assert (=> b!6568077 (= e!3975716 (= lt!2408053 call!571413))))

(declare-fun b!6568078 () Bool)

(declare-fun e!3975711 () Bool)

(assert (=> b!6568078 (= e!3975711 (nullable!6436 (reg!16772 (regOne!33398 r!7292))))))

(declare-fun d!2060783 () Bool)

(assert (=> d!2060783 e!3975716))

(declare-fun c!1207269 () Bool)

(assert (=> d!2060783 (= c!1207269 ((_ is EmptyExpr!16443) (reg!16772 (regOne!33398 r!7292))))))

(assert (=> d!2060783 (= lt!2408053 e!3975711)))

(declare-fun c!1207268 () Bool)

(assert (=> d!2060783 (= c!1207268 (isEmpty!37753 (_1!36725 lt!2407778)))))

(assert (=> d!2060783 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060783 (= (matchR!8626 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407778)) lt!2408053)))

(declare-fun b!6568079 () Bool)

(declare-fun res!2695477 () Bool)

(declare-fun e!3975714 () Bool)

(assert (=> b!6568079 (=> res!2695477 e!3975714)))

(assert (=> b!6568079 (= res!2695477 (not (isEmpty!37753 (tail!12422 (_1!36725 lt!2407778)))))))

(declare-fun b!6568080 () Bool)

(assert (=> b!6568080 (= e!3975716 e!3975715)))

(declare-fun c!1207267 () Bool)

(assert (=> b!6568080 (= c!1207267 ((_ is EmptyLang!16443) (reg!16772 (regOne!33398 r!7292))))))

(declare-fun b!6568081 () Bool)

(declare-fun res!2695475 () Bool)

(declare-fun e!3975717 () Bool)

(assert (=> b!6568081 (=> res!2695475 e!3975717)))

(assert (=> b!6568081 (= res!2695475 (not ((_ is ElementMatch!16443) (reg!16772 (regOne!33398 r!7292)))))))

(assert (=> b!6568081 (= e!3975715 e!3975717)))

(declare-fun b!6568082 () Bool)

(assert (=> b!6568082 (= e!3975714 (not (= (head!13337 (_1!36725 lt!2407778)) (c!1206990 (reg!16772 (regOne!33398 r!7292))))))))

(declare-fun b!6568083 () Bool)

(assert (=> b!6568083 (= e!3975711 (matchR!8626 (derivativeStep!5127 (reg!16772 (regOne!33398 r!7292)) (head!13337 (_1!36725 lt!2407778))) (tail!12422 (_1!36725 lt!2407778))))))

(declare-fun b!6568084 () Bool)

(declare-fun res!2695476 () Bool)

(assert (=> b!6568084 (=> (not res!2695476) (not e!3975713))))

(assert (=> b!6568084 (= res!2695476 (isEmpty!37753 (tail!12422 (_1!36725 lt!2407778))))))

(declare-fun b!6568085 () Bool)

(declare-fun e!3975712 () Bool)

(assert (=> b!6568085 (= e!3975712 e!3975714)))

(declare-fun res!2695478 () Bool)

(assert (=> b!6568085 (=> res!2695478 e!3975714)))

(assert (=> b!6568085 (= res!2695478 call!571413)))

(declare-fun b!6568086 () Bool)

(declare-fun res!2695474 () Bool)

(assert (=> b!6568086 (=> res!2695474 e!3975717)))

(assert (=> b!6568086 (= res!2695474 e!3975713)))

(declare-fun res!2695473 () Bool)

(assert (=> b!6568086 (=> (not res!2695473) (not e!3975713))))

(assert (=> b!6568086 (= res!2695473 lt!2408053)))

(declare-fun bm!571408 () Bool)

(assert (=> bm!571408 (= call!571413 (isEmpty!37753 (_1!36725 lt!2407778)))))

(declare-fun b!6568087 () Bool)

(assert (=> b!6568087 (= e!3975717 e!3975712)))

(declare-fun res!2695479 () Bool)

(assert (=> b!6568087 (=> (not res!2695479) (not e!3975712))))

(assert (=> b!6568087 (= res!2695479 (not lt!2408053))))

(declare-fun b!6568088 () Bool)

(assert (=> b!6568088 (= e!3975713 (= (head!13337 (_1!36725 lt!2407778)) (c!1206990 (reg!16772 (regOne!33398 r!7292)))))))

(assert (= (and d!2060783 c!1207268) b!6568078))

(assert (= (and d!2060783 (not c!1207268)) b!6568083))

(assert (= (and d!2060783 c!1207269) b!6568077))

(assert (= (and d!2060783 (not c!1207269)) b!6568080))

(assert (= (and b!6568080 c!1207267) b!6568075))

(assert (= (and b!6568080 (not c!1207267)) b!6568081))

(assert (= (and b!6568081 (not res!2695475)) b!6568086))

(assert (= (and b!6568086 res!2695473) b!6568076))

(assert (= (and b!6568076 res!2695480) b!6568084))

(assert (= (and b!6568084 res!2695476) b!6568088))

(assert (= (and b!6568086 (not res!2695474)) b!6568087))

(assert (= (and b!6568087 res!2695479) b!6568085))

(assert (= (and b!6568085 (not res!2695478)) b!6568079))

(assert (= (and b!6568079 (not res!2695477)) b!6568082))

(assert (= (or b!6568077 b!6568076 b!6568085) bm!571408))

(declare-fun m!7350356 () Bool)

(assert (=> b!6568083 m!7350356))

(assert (=> b!6568083 m!7350356))

(declare-fun m!7350358 () Bool)

(assert (=> b!6568083 m!7350358))

(declare-fun m!7350360 () Bool)

(assert (=> b!6568083 m!7350360))

(assert (=> b!6568083 m!7350358))

(assert (=> b!6568083 m!7350360))

(declare-fun m!7350362 () Bool)

(assert (=> b!6568083 m!7350362))

(declare-fun m!7350364 () Bool)

(assert (=> bm!571408 m!7350364))

(assert (=> b!6568082 m!7350356))

(assert (=> b!6568079 m!7350360))

(assert (=> b!6568079 m!7350360))

(declare-fun m!7350366 () Bool)

(assert (=> b!6568079 m!7350366))

(assert (=> b!6568088 m!7350356))

(assert (=> b!6568078 m!7350172))

(assert (=> d!2060783 m!7350364))

(assert (=> d!2060783 m!7350024))

(assert (=> b!6568084 m!7350360))

(assert (=> b!6568084 m!7350360))

(assert (=> b!6568084 m!7350366))

(assert (=> b!6566942 d!2060783))

(declare-fun bs!1677715 () Bool)

(declare-fun d!2060785 () Bool)

(assert (= bs!1677715 (and d!2060785 b!6567944)))

(declare-fun lambda!365679 () Int)

(assert (=> bs!1677715 (not (= lambda!365679 lambda!365664))))

(declare-fun bs!1677716 () Bool)

(assert (= bs!1677716 (and d!2060785 b!6568055)))

(assert (=> bs!1677716 (not (= lambda!365679 lambda!365676))))

(declare-fun bs!1677717 () Bool)

(assert (= bs!1677717 (and d!2060785 b!6568004)))

(assert (=> bs!1677717 (not (= lambda!365679 lambda!365669))))

(declare-fun bs!1677718 () Bool)

(assert (= bs!1677718 (and d!2060785 b!6566938)))

(assert (=> bs!1677718 (not (= lambda!365679 lambda!365579))))

(declare-fun bs!1677719 () Bool)

(assert (= bs!1677719 (and d!2060785 b!6566942)))

(assert (=> bs!1677719 (not (= lambda!365679 lambda!365587))))

(assert (=> bs!1677719 (not (= lambda!365679 lambda!365586))))

(declare-fun bs!1677720 () Bool)

(assert (= bs!1677720 (and d!2060785 d!2060709)))

(assert (=> bs!1677720 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365679 lambda!365662))))

(declare-fun bs!1677721 () Bool)

(assert (= bs!1677721 (and d!2060785 d!2060761)))

(assert (=> bs!1677721 (= (= lt!2407775 (Star!16443 (reg!16772 (regOne!33398 r!7292)))) (= lambda!365679 lambda!365674))))

(declare-fun bs!1677722 () Bool)

(assert (= bs!1677722 (and d!2060785 b!6566944)))

(assert (=> bs!1677722 (not (= lambda!365679 lambda!365584))))

(declare-fun bs!1677723 () Bool)

(assert (= bs!1677723 (and d!2060785 b!6567608)))

(assert (=> bs!1677723 (not (= lambda!365679 lambda!365637))))

(assert (=> bs!1677722 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365679 lambda!365583))))

(declare-fun bs!1677724 () Bool)

(assert (= bs!1677724 (and d!2060785 d!2060647)))

(assert (=> bs!1677724 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365679 lambda!365644))))

(assert (=> bs!1677724 (not (= lambda!365679 lambda!365645))))

(declare-fun bs!1677725 () Bool)

(assert (= bs!1677725 (and d!2060785 b!6567605)))

(assert (=> bs!1677725 (not (= lambda!365679 lambda!365639))))

(declare-fun bs!1677726 () Bool)

(assert (= bs!1677726 (and d!2060785 b!6568007)))

(assert (=> bs!1677726 (not (= lambda!365679 lambda!365668))))

(declare-fun bs!1677727 () Bool)

(assert (= bs!1677727 (and d!2060785 b!6567947)))

(assert (=> bs!1677727 (not (= lambda!365679 lambda!365663))))

(declare-fun bs!1677728 () Bool)

(assert (= bs!1677728 (and d!2060785 b!6568052)))

(assert (=> bs!1677728 (not (= lambda!365679 lambda!365677))))

(assert (=> bs!1677721 (not (= lambda!365679 lambda!365675))))

(assert (=> bs!1677719 (= lambda!365679 lambda!365585)))

(declare-fun bs!1677729 () Bool)

(assert (= bs!1677729 (and d!2060785 d!2060771)))

(assert (=> bs!1677729 (= lambda!365679 lambda!365678)))

(assert (=> bs!1677718 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365679 lambda!365578))))

(assert (=> d!2060785 true))

(assert (=> d!2060785 true))

(assert (=> d!2060785 true))

(declare-fun lambda!365680 () Int)

(assert (=> bs!1677715 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 lt!2407779)) (= lt!2407775 (regTwo!33398 lt!2407779))) (= lambda!365680 lambda!365664))))

(assert (=> bs!1677716 (not (= lambda!365680 lambda!365676))))

(assert (=> bs!1677717 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365680 lambda!365669))))

(assert (=> bs!1677718 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 r!7292)) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365680 lambda!365579))))

(assert (=> bs!1677719 (not (= lambda!365680 lambda!365587))))

(assert (=> bs!1677719 (= lambda!365680 lambda!365586)))

(assert (=> bs!1677720 (not (= lambda!365680 lambda!365662))))

(assert (=> bs!1677721 (not (= lambda!365680 lambda!365674))))

(assert (=> bs!1677722 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365680 lambda!365584))))

(assert (=> bs!1677723 (not (= lambda!365680 lambda!365637))))

(declare-fun bs!1677730 () Bool)

(assert (= bs!1677730 d!2060785))

(assert (=> bs!1677730 (not (= lambda!365680 lambda!365679))))

(assert (=> bs!1677722 (not (= lambda!365680 lambda!365583))))

(assert (=> bs!1677724 (not (= lambda!365680 lambda!365644))))

(assert (=> bs!1677724 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) lt!2407774) (= lt!2407775 (regTwo!33398 r!7292))) (= lambda!365680 lambda!365645))))

(assert (=> bs!1677725 (= (and (= (_1!36725 lt!2407811) s!2326) (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 lt!2407832)) (= lt!2407775 (regTwo!33398 lt!2407832))) (= lambda!365680 lambda!365639))))

(assert (=> bs!1677726 (not (= lambda!365680 lambda!365668))))

(assert (=> bs!1677727 (not (= lambda!365680 lambda!365663))))

(assert (=> bs!1677728 (= (and (= (reg!16772 (regOne!33398 r!7292)) (regOne!33398 lt!2407774)) (= lt!2407775 (regTwo!33398 lt!2407774))) (= lambda!365680 lambda!365677))))

(assert (=> bs!1677721 (not (= lambda!365680 lambda!365675))))

(assert (=> bs!1677719 (not (= lambda!365680 lambda!365585))))

(assert (=> bs!1677729 (not (= lambda!365680 lambda!365678))))

(assert (=> bs!1677718 (not (= lambda!365680 lambda!365578))))

(assert (=> d!2060785 true))

(assert (=> d!2060785 true))

(assert (=> d!2060785 true))

(assert (=> d!2060785 (= (Exists!3513 lambda!365679) (Exists!3513 lambda!365680))))

(declare-fun lt!2408054 () Unit!159107)

(assert (=> d!2060785 (= lt!2408054 (choose!49038 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (_1!36725 lt!2407811)))))

(assert (=> d!2060785 (validRegex!8179 (reg!16772 (regOne!33398 r!7292)))))

(assert (=> d!2060785 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2050 (reg!16772 (regOne!33398 r!7292)) lt!2407775 (_1!36725 lt!2407811)) lt!2408054)))

(declare-fun m!7350368 () Bool)

(assert (=> bs!1677730 m!7350368))

(declare-fun m!7350370 () Bool)

(assert (=> bs!1677730 m!7350370))

(declare-fun m!7350372 () Bool)

(assert (=> bs!1677730 m!7350372))

(assert (=> bs!1677730 m!7350024))

(assert (=> b!6566942 d!2060785))

(declare-fun d!2060787 () Bool)

(assert (=> d!2060787 (= (Exists!3513 lambda!365587) (choose!49037 lambda!365587))))

(declare-fun bs!1677731 () Bool)

(assert (= bs!1677731 d!2060787))

(declare-fun m!7350374 () Bool)

(assert (=> bs!1677731 m!7350374))

(assert (=> b!6566942 d!2060787))

(declare-fun b!6568107 () Bool)

(declare-fun e!3975735 () Bool)

(declare-fun e!3975738 () Bool)

(assert (=> b!6568107 (= e!3975735 e!3975738)))

(declare-fun res!2695493 () Bool)

(assert (=> b!6568107 (=> (not res!2695493) (not e!3975738))))

(declare-fun call!571421 () Bool)

(assert (=> b!6568107 (= res!2695493 call!571421)))

(declare-fun b!6568108 () Bool)

(declare-fun res!2695494 () Bool)

(declare-fun e!3975734 () Bool)

(assert (=> b!6568108 (=> (not res!2695494) (not e!3975734))))

(assert (=> b!6568108 (= res!2695494 call!571421)))

(declare-fun e!3975733 () Bool)

(assert (=> b!6568108 (= e!3975733 e!3975734)))

(declare-fun b!6568109 () Bool)

(declare-fun e!3975736 () Bool)

(declare-fun e!3975737 () Bool)

(assert (=> b!6568109 (= e!3975736 e!3975737)))

(declare-fun c!1207275 () Bool)

(assert (=> b!6568109 (= c!1207275 ((_ is Star!16443) (regTwo!33398 r!7292)))))

(declare-fun b!6568110 () Bool)

(declare-fun res!2695495 () Bool)

(assert (=> b!6568110 (=> res!2695495 e!3975735)))

(assert (=> b!6568110 (= res!2695495 (not ((_ is Concat!25288) (regTwo!33398 r!7292))))))

(assert (=> b!6568110 (= e!3975733 e!3975735)))

(declare-fun b!6568111 () Bool)

(declare-fun e!3975732 () Bool)

(declare-fun call!571420 () Bool)

(assert (=> b!6568111 (= e!3975732 call!571420)))

(declare-fun b!6568112 () Bool)

(assert (=> b!6568112 (= e!3975737 e!3975733)))

(declare-fun c!1207274 () Bool)

(assert (=> b!6568112 (= c!1207274 ((_ is Union!16443) (regTwo!33398 r!7292)))))

(declare-fun d!2060789 () Bool)

(declare-fun res!2695492 () Bool)

(assert (=> d!2060789 (=> res!2695492 e!3975736)))

(assert (=> d!2060789 (= res!2695492 ((_ is ElementMatch!16443) (regTwo!33398 r!7292)))))

(assert (=> d!2060789 (= (validRegex!8179 (regTwo!33398 r!7292)) e!3975736)))

(declare-fun b!6568113 () Bool)

(declare-fun call!571422 () Bool)

(assert (=> b!6568113 (= e!3975738 call!571422)))

(declare-fun bm!571415 () Bool)

(assert (=> bm!571415 (= call!571420 (validRegex!8179 (ite c!1207275 (reg!16772 (regTwo!33398 r!7292)) (ite c!1207274 (regTwo!33399 (regTwo!33398 r!7292)) (regTwo!33398 (regTwo!33398 r!7292))))))))

(declare-fun bm!571416 () Bool)

(assert (=> bm!571416 (= call!571421 (validRegex!8179 (ite c!1207274 (regOne!33399 (regTwo!33398 r!7292)) (regOne!33398 (regTwo!33398 r!7292)))))))

(declare-fun b!6568114 () Bool)

(assert (=> b!6568114 (= e!3975734 call!571422)))

(declare-fun b!6568115 () Bool)

(assert (=> b!6568115 (= e!3975737 e!3975732)))

(declare-fun res!2695491 () Bool)

(assert (=> b!6568115 (= res!2695491 (not (nullable!6436 (reg!16772 (regTwo!33398 r!7292)))))))

(assert (=> b!6568115 (=> (not res!2695491) (not e!3975732))))

(declare-fun bm!571417 () Bool)

(assert (=> bm!571417 (= call!571422 call!571420)))

(assert (= (and d!2060789 (not res!2695492)) b!6568109))

(assert (= (and b!6568109 c!1207275) b!6568115))

(assert (= (and b!6568109 (not c!1207275)) b!6568112))

(assert (= (and b!6568115 res!2695491) b!6568111))

(assert (= (and b!6568112 c!1207274) b!6568108))

(assert (= (and b!6568112 (not c!1207274)) b!6568110))

(assert (= (and b!6568108 res!2695494) b!6568114))

(assert (= (and b!6568110 (not res!2695495)) b!6568107))

(assert (= (and b!6568107 res!2695493) b!6568113))

(assert (= (or b!6568114 b!6568113) bm!571417))

(assert (= (or b!6568108 b!6568107) bm!571416))

(assert (= (or b!6568111 bm!571417) bm!571415))

(declare-fun m!7350376 () Bool)

(assert (=> bm!571415 m!7350376))

(declare-fun m!7350378 () Bool)

(assert (=> bm!571416 m!7350378))

(declare-fun m!7350380 () Bool)

(assert (=> b!6568115 m!7350380))

(assert (=> b!6566962 d!2060789))

(declare-fun b!6568116 () Bool)

(declare-fun e!3975743 () Bool)

(declare-fun lt!2408055 () Bool)

(assert (=> b!6568116 (= e!3975743 (not lt!2408055))))

(declare-fun b!6568117 () Bool)

(declare-fun res!2695503 () Bool)

(declare-fun e!3975741 () Bool)

(assert (=> b!6568117 (=> (not res!2695503) (not e!3975741))))

(declare-fun call!571423 () Bool)

(assert (=> b!6568117 (= res!2695503 (not call!571423))))

(declare-fun b!6568118 () Bool)

(declare-fun e!3975744 () Bool)

(assert (=> b!6568118 (= e!3975744 (= lt!2408055 call!571423))))

(declare-fun b!6568119 () Bool)

(declare-fun e!3975739 () Bool)

(assert (=> b!6568119 (= e!3975739 (nullable!6436 lt!2407775))))

(declare-fun d!2060791 () Bool)

(assert (=> d!2060791 e!3975744))

(declare-fun c!1207278 () Bool)

(assert (=> d!2060791 (= c!1207278 ((_ is EmptyExpr!16443) lt!2407775))))

(assert (=> d!2060791 (= lt!2408055 e!3975739)))

(declare-fun c!1207277 () Bool)

(assert (=> d!2060791 (= c!1207277 (isEmpty!37753 (_2!36725 lt!2407778)))))

(assert (=> d!2060791 (validRegex!8179 lt!2407775)))

(assert (=> d!2060791 (= (matchR!8626 lt!2407775 (_2!36725 lt!2407778)) lt!2408055)))

(declare-fun b!6568120 () Bool)

(declare-fun res!2695500 () Bool)

(declare-fun e!3975742 () Bool)

(assert (=> b!6568120 (=> res!2695500 e!3975742)))

(assert (=> b!6568120 (= res!2695500 (not (isEmpty!37753 (tail!12422 (_2!36725 lt!2407778)))))))

(declare-fun b!6568121 () Bool)

(assert (=> b!6568121 (= e!3975744 e!3975743)))

(declare-fun c!1207276 () Bool)

(assert (=> b!6568121 (= c!1207276 ((_ is EmptyLang!16443) lt!2407775))))

(declare-fun b!6568122 () Bool)

(declare-fun res!2695498 () Bool)

(declare-fun e!3975745 () Bool)

(assert (=> b!6568122 (=> res!2695498 e!3975745)))

(assert (=> b!6568122 (= res!2695498 (not ((_ is ElementMatch!16443) lt!2407775)))))

(assert (=> b!6568122 (= e!3975743 e!3975745)))

(declare-fun b!6568123 () Bool)

(assert (=> b!6568123 (= e!3975742 (not (= (head!13337 (_2!36725 lt!2407778)) (c!1206990 lt!2407775))))))

(declare-fun b!6568124 () Bool)

(assert (=> b!6568124 (= e!3975739 (matchR!8626 (derivativeStep!5127 lt!2407775 (head!13337 (_2!36725 lt!2407778))) (tail!12422 (_2!36725 lt!2407778))))))

(declare-fun b!6568125 () Bool)

(declare-fun res!2695499 () Bool)

(assert (=> b!6568125 (=> (not res!2695499) (not e!3975741))))

(assert (=> b!6568125 (= res!2695499 (isEmpty!37753 (tail!12422 (_2!36725 lt!2407778))))))

(declare-fun b!6568126 () Bool)

(declare-fun e!3975740 () Bool)

(assert (=> b!6568126 (= e!3975740 e!3975742)))

(declare-fun res!2695501 () Bool)

(assert (=> b!6568126 (=> res!2695501 e!3975742)))

(assert (=> b!6568126 (= res!2695501 call!571423)))

(declare-fun b!6568127 () Bool)

(declare-fun res!2695497 () Bool)

(assert (=> b!6568127 (=> res!2695497 e!3975745)))

(assert (=> b!6568127 (= res!2695497 e!3975741)))

(declare-fun res!2695496 () Bool)

(assert (=> b!6568127 (=> (not res!2695496) (not e!3975741))))

(assert (=> b!6568127 (= res!2695496 lt!2408055)))

(declare-fun bm!571418 () Bool)

(assert (=> bm!571418 (= call!571423 (isEmpty!37753 (_2!36725 lt!2407778)))))

(declare-fun b!6568128 () Bool)

(assert (=> b!6568128 (= e!3975745 e!3975740)))

(declare-fun res!2695502 () Bool)

(assert (=> b!6568128 (=> (not res!2695502) (not e!3975740))))

(assert (=> b!6568128 (= res!2695502 (not lt!2408055))))

(declare-fun b!6568129 () Bool)

(assert (=> b!6568129 (= e!3975741 (= (head!13337 (_2!36725 lt!2407778)) (c!1206990 lt!2407775)))))

(assert (= (and d!2060791 c!1207277) b!6568119))

(assert (= (and d!2060791 (not c!1207277)) b!6568124))

(assert (= (and d!2060791 c!1207278) b!6568118))

(assert (= (and d!2060791 (not c!1207278)) b!6568121))

(assert (= (and b!6568121 c!1207276) b!6568116))

(assert (= (and b!6568121 (not c!1207276)) b!6568122))

(assert (= (and b!6568122 (not res!2695498)) b!6568127))

(assert (= (and b!6568127 res!2695496) b!6568117))

(assert (= (and b!6568117 res!2695503) b!6568125))

(assert (= (and b!6568125 res!2695499) b!6568129))

(assert (= (and b!6568127 (not res!2695497)) b!6568128))

(assert (= (and b!6568128 res!2695502) b!6568126))

(assert (= (and b!6568126 (not res!2695501)) b!6568120))

(assert (= (and b!6568120 (not res!2695500)) b!6568123))

(assert (= (or b!6568118 b!6568117 b!6568126) bm!571418))

(declare-fun m!7350382 () Bool)

(assert (=> b!6568124 m!7350382))

(assert (=> b!6568124 m!7350382))

(declare-fun m!7350384 () Bool)

(assert (=> b!6568124 m!7350384))

(declare-fun m!7350386 () Bool)

(assert (=> b!6568124 m!7350386))

(assert (=> b!6568124 m!7350384))

(assert (=> b!6568124 m!7350386))

(declare-fun m!7350388 () Bool)

(assert (=> b!6568124 m!7350388))

(declare-fun m!7350390 () Bool)

(assert (=> bm!571418 m!7350390))

(assert (=> b!6568123 m!7350382))

(assert (=> b!6568120 m!7350386))

(assert (=> b!6568120 m!7350386))

(declare-fun m!7350392 () Bool)

(assert (=> b!6568120 m!7350392))

(assert (=> b!6568129 m!7350382))

(declare-fun m!7350394 () Bool)

(assert (=> b!6568119 m!7350394))

(assert (=> d!2060791 m!7350390))

(assert (=> d!2060791 m!7349220))

(assert (=> b!6568125 m!7350386))

(assert (=> b!6568125 m!7350386))

(assert (=> b!6568125 m!7350392))

(assert (=> b!6566984 d!2060791))

(declare-fun b!6568130 () Bool)

(declare-fun e!3975749 () Bool)

(declare-fun e!3975752 () Bool)

(assert (=> b!6568130 (= e!3975749 e!3975752)))

(declare-fun res!2695506 () Bool)

(assert (=> b!6568130 (=> (not res!2695506) (not e!3975752))))

(declare-fun call!571425 () Bool)

(assert (=> b!6568130 (= res!2695506 call!571425)))

(declare-fun b!6568131 () Bool)

(declare-fun res!2695507 () Bool)

(declare-fun e!3975748 () Bool)

(assert (=> b!6568131 (=> (not res!2695507) (not e!3975748))))

(assert (=> b!6568131 (= res!2695507 call!571425)))

(declare-fun e!3975747 () Bool)

(assert (=> b!6568131 (= e!3975747 e!3975748)))

(declare-fun b!6568132 () Bool)

(declare-fun e!3975750 () Bool)

(declare-fun e!3975751 () Bool)

(assert (=> b!6568132 (= e!3975750 e!3975751)))

(declare-fun c!1207280 () Bool)

(assert (=> b!6568132 (= c!1207280 ((_ is Star!16443) lt!2407775))))

(declare-fun b!6568133 () Bool)

(declare-fun res!2695508 () Bool)

(assert (=> b!6568133 (=> res!2695508 e!3975749)))

(assert (=> b!6568133 (= res!2695508 (not ((_ is Concat!25288) lt!2407775)))))

(assert (=> b!6568133 (= e!3975747 e!3975749)))

(declare-fun b!6568134 () Bool)

(declare-fun e!3975746 () Bool)

(declare-fun call!571424 () Bool)

(assert (=> b!6568134 (= e!3975746 call!571424)))

(declare-fun b!6568135 () Bool)

(assert (=> b!6568135 (= e!3975751 e!3975747)))

(declare-fun c!1207279 () Bool)

(assert (=> b!6568135 (= c!1207279 ((_ is Union!16443) lt!2407775))))

(declare-fun d!2060793 () Bool)

(declare-fun res!2695505 () Bool)

(assert (=> d!2060793 (=> res!2695505 e!3975750)))

(assert (=> d!2060793 (= res!2695505 ((_ is ElementMatch!16443) lt!2407775))))

(assert (=> d!2060793 (= (validRegex!8179 lt!2407775) e!3975750)))

(declare-fun b!6568136 () Bool)

(declare-fun call!571426 () Bool)

(assert (=> b!6568136 (= e!3975752 call!571426)))

(declare-fun bm!571419 () Bool)

(assert (=> bm!571419 (= call!571424 (validRegex!8179 (ite c!1207280 (reg!16772 lt!2407775) (ite c!1207279 (regTwo!33399 lt!2407775) (regTwo!33398 lt!2407775)))))))

(declare-fun bm!571420 () Bool)

(assert (=> bm!571420 (= call!571425 (validRegex!8179 (ite c!1207279 (regOne!33399 lt!2407775) (regOne!33398 lt!2407775))))))

(declare-fun b!6568137 () Bool)

(assert (=> b!6568137 (= e!3975748 call!571426)))

(declare-fun b!6568138 () Bool)

(assert (=> b!6568138 (= e!3975751 e!3975746)))

(declare-fun res!2695504 () Bool)

(assert (=> b!6568138 (= res!2695504 (not (nullable!6436 (reg!16772 lt!2407775))))))

(assert (=> b!6568138 (=> (not res!2695504) (not e!3975746))))

(declare-fun bm!571421 () Bool)

(assert (=> bm!571421 (= call!571426 call!571424)))

(assert (= (and d!2060793 (not res!2695505)) b!6568132))

(assert (= (and b!6568132 c!1207280) b!6568138))

(assert (= (and b!6568132 (not c!1207280)) b!6568135))

(assert (= (and b!6568138 res!2695504) b!6568134))

(assert (= (and b!6568135 c!1207279) b!6568131))

(assert (= (and b!6568135 (not c!1207279)) b!6568133))

(assert (= (and b!6568131 res!2695507) b!6568137))

(assert (= (and b!6568133 (not res!2695508)) b!6568130))

(assert (= (and b!6568130 res!2695506) b!6568136))

(assert (= (or b!6568137 b!6568136) bm!571421))

(assert (= (or b!6568131 b!6568130) bm!571420))

(assert (= (or b!6568134 bm!571421) bm!571419))

(declare-fun m!7350396 () Bool)

(assert (=> bm!571419 m!7350396))

(declare-fun m!7350398 () Bool)

(assert (=> bm!571420 m!7350398))

(declare-fun m!7350400 () Bool)

(assert (=> b!6568138 m!7350400))

(assert (=> b!6566985 d!2060793))

(declare-fun d!2060795 () Bool)

(assert (=> d!2060795 (= (flatMap!1948 lt!2407803 lambda!365580) (choose!49029 lt!2407803 lambda!365580))))

(declare-fun bs!1677732 () Bool)

(assert (= bs!1677732 d!2060795))

(declare-fun m!7350402 () Bool)

(assert (=> bs!1677732 m!7350402))

(assert (=> b!6566959 d!2060795))

(declare-fun b!6568139 () Bool)

(declare-fun e!3975754 () (InoxSet Context!11654))

(declare-fun e!3975755 () (InoxSet Context!11654))

(assert (=> b!6568139 (= e!3975754 e!3975755)))

(declare-fun c!1207282 () Bool)

(assert (=> b!6568139 (= c!1207282 ((_ is Cons!65505) (exprs!6327 lt!2407816)))))

(declare-fun bm!571422 () Bool)

(declare-fun call!571427 () (InoxSet Context!11654))

(assert (=> bm!571422 (= call!571427 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 lt!2407816)) (Context!11655 (t!379273 (exprs!6327 lt!2407816))) (h!71952 s!2326)))))

(declare-fun b!6568140 () Bool)

(assert (=> b!6568140 (= e!3975755 call!571427)))

(declare-fun b!6568141 () Bool)

(assert (=> b!6568141 (= e!3975755 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6568143 () Bool)

(declare-fun e!3975753 () Bool)

(assert (=> b!6568143 (= e!3975753 (nullable!6436 (h!71953 (exprs!6327 lt!2407816))))))

(declare-fun d!2060797 () Bool)

(declare-fun c!1207281 () Bool)

(assert (=> d!2060797 (= c!1207281 e!3975753)))

(declare-fun res!2695509 () Bool)

(assert (=> d!2060797 (=> (not res!2695509) (not e!3975753))))

(assert (=> d!2060797 (= res!2695509 ((_ is Cons!65505) (exprs!6327 lt!2407816)))))

(assert (=> d!2060797 (= (derivationStepZipperUp!1617 lt!2407816 (h!71952 s!2326)) e!3975754)))

(declare-fun b!6568142 () Bool)

(assert (=> b!6568142 (= e!3975754 ((_ map or) call!571427 (derivationStepZipperUp!1617 (Context!11655 (t!379273 (exprs!6327 lt!2407816))) (h!71952 s!2326))))))

(assert (= (and d!2060797 res!2695509) b!6568143))

(assert (= (and d!2060797 c!1207281) b!6568142))

(assert (= (and d!2060797 (not c!1207281)) b!6568139))

(assert (= (and b!6568139 c!1207282) b!6568140))

(assert (= (and b!6568139 (not c!1207282)) b!6568141))

(assert (= (or b!6568142 b!6568140) bm!571422))

(declare-fun m!7350404 () Bool)

(assert (=> bm!571422 m!7350404))

(declare-fun m!7350406 () Bool)

(assert (=> b!6568143 m!7350406))

(declare-fun m!7350408 () Bool)

(assert (=> b!6568142 m!7350408))

(assert (=> b!6566959 d!2060797))

(declare-fun d!2060799 () Bool)

(assert (=> d!2060799 (= (flatMap!1948 lt!2407803 lambda!365580) (dynLambda!26059 lambda!365580 lt!2407816))))

(declare-fun lt!2408056 () Unit!159107)

(assert (=> d!2060799 (= lt!2408056 (choose!49030 lt!2407803 lt!2407816 lambda!365580))))

(assert (=> d!2060799 (= lt!2407803 (store ((as const (Array Context!11654 Bool)) false) lt!2407816 true))))

(assert (=> d!2060799 (= (lemmaFlatMapOnSingletonSet!1474 lt!2407803 lt!2407816 lambda!365580) lt!2408056)))

(declare-fun b_lambda!248401 () Bool)

(assert (=> (not b_lambda!248401) (not d!2060799)))

(declare-fun bs!1677733 () Bool)

(assert (= bs!1677733 d!2060799))

(assert (=> bs!1677733 m!7349094))

(declare-fun m!7350410 () Bool)

(assert (=> bs!1677733 m!7350410))

(declare-fun m!7350412 () Bool)

(assert (=> bs!1677733 m!7350412))

(assert (=> bs!1677733 m!7349092))

(assert (=> b!6566959 d!2060799))

(declare-fun bs!1677734 () Bool)

(declare-fun d!2060801 () Bool)

(assert (= bs!1677734 (and d!2060801 b!6566939)))

(declare-fun lambda!365683 () Int)

(assert (=> bs!1677734 (= lambda!365683 lambda!365580)))

(assert (=> d!2060801 true))

(assert (=> d!2060801 (= (derivationStepZipper!2409 lt!2407803 (h!71952 s!2326)) (flatMap!1948 lt!2407803 lambda!365683))))

(declare-fun bs!1677735 () Bool)

(assert (= bs!1677735 d!2060801))

(declare-fun m!7350414 () Bool)

(assert (=> bs!1677735 m!7350414))

(assert (=> b!6566959 d!2060801))

(declare-fun b!6568146 () Bool)

(declare-fun e!3975760 () Bool)

(declare-fun lt!2408057 () Bool)

(assert (=> b!6568146 (= e!3975760 (not lt!2408057))))

(declare-fun b!6568147 () Bool)

(declare-fun res!2695517 () Bool)

(declare-fun e!3975758 () Bool)

(assert (=> b!6568147 (=> (not res!2695517) (not e!3975758))))

(declare-fun call!571428 () Bool)

(assert (=> b!6568147 (= res!2695517 (not call!571428))))

(declare-fun b!6568148 () Bool)

(declare-fun e!3975761 () Bool)

(assert (=> b!6568148 (= e!3975761 (= lt!2408057 call!571428))))

(declare-fun b!6568149 () Bool)

(declare-fun e!3975756 () Bool)

(assert (=> b!6568149 (= e!3975756 (nullable!6436 (regTwo!33398 r!7292)))))

(declare-fun d!2060803 () Bool)

(assert (=> d!2060803 e!3975761))

(declare-fun c!1207287 () Bool)

(assert (=> d!2060803 (= c!1207287 ((_ is EmptyExpr!16443) (regTwo!33398 r!7292)))))

(assert (=> d!2060803 (= lt!2408057 e!3975756)))

(declare-fun c!1207286 () Bool)

(assert (=> d!2060803 (= c!1207286 (isEmpty!37753 (_2!36725 lt!2407811)))))

(assert (=> d!2060803 (validRegex!8179 (regTwo!33398 r!7292))))

(assert (=> d!2060803 (= (matchR!8626 (regTwo!33398 r!7292) (_2!36725 lt!2407811)) lt!2408057)))

(declare-fun b!6568150 () Bool)

(declare-fun res!2695514 () Bool)

(declare-fun e!3975759 () Bool)

(assert (=> b!6568150 (=> res!2695514 e!3975759)))

(assert (=> b!6568150 (= res!2695514 (not (isEmpty!37753 (tail!12422 (_2!36725 lt!2407811)))))))

(declare-fun b!6568151 () Bool)

(assert (=> b!6568151 (= e!3975761 e!3975760)))

(declare-fun c!1207285 () Bool)

(assert (=> b!6568151 (= c!1207285 ((_ is EmptyLang!16443) (regTwo!33398 r!7292)))))

(declare-fun b!6568152 () Bool)

(declare-fun res!2695512 () Bool)

(declare-fun e!3975762 () Bool)

(assert (=> b!6568152 (=> res!2695512 e!3975762)))

(assert (=> b!6568152 (= res!2695512 (not ((_ is ElementMatch!16443) (regTwo!33398 r!7292))))))

(assert (=> b!6568152 (= e!3975760 e!3975762)))

(declare-fun b!6568153 () Bool)

(assert (=> b!6568153 (= e!3975759 (not (= (head!13337 (_2!36725 lt!2407811)) (c!1206990 (regTwo!33398 r!7292)))))))

(declare-fun b!6568154 () Bool)

(assert (=> b!6568154 (= e!3975756 (matchR!8626 (derivativeStep!5127 (regTwo!33398 r!7292) (head!13337 (_2!36725 lt!2407811))) (tail!12422 (_2!36725 lt!2407811))))))

(declare-fun b!6568155 () Bool)

(declare-fun res!2695513 () Bool)

(assert (=> b!6568155 (=> (not res!2695513) (not e!3975758))))

(assert (=> b!6568155 (= res!2695513 (isEmpty!37753 (tail!12422 (_2!36725 lt!2407811))))))

(declare-fun b!6568156 () Bool)

(declare-fun e!3975757 () Bool)

(assert (=> b!6568156 (= e!3975757 e!3975759)))

(declare-fun res!2695515 () Bool)

(assert (=> b!6568156 (=> res!2695515 e!3975759)))

(assert (=> b!6568156 (= res!2695515 call!571428)))

(declare-fun b!6568157 () Bool)

(declare-fun res!2695511 () Bool)

(assert (=> b!6568157 (=> res!2695511 e!3975762)))

(assert (=> b!6568157 (= res!2695511 e!3975758)))

(declare-fun res!2695510 () Bool)

(assert (=> b!6568157 (=> (not res!2695510) (not e!3975758))))

(assert (=> b!6568157 (= res!2695510 lt!2408057)))

(declare-fun bm!571423 () Bool)

(assert (=> bm!571423 (= call!571428 (isEmpty!37753 (_2!36725 lt!2407811)))))

(declare-fun b!6568158 () Bool)

(assert (=> b!6568158 (= e!3975762 e!3975757)))

(declare-fun res!2695516 () Bool)

(assert (=> b!6568158 (=> (not res!2695516) (not e!3975757))))

(assert (=> b!6568158 (= res!2695516 (not lt!2408057))))

(declare-fun b!6568159 () Bool)

(assert (=> b!6568159 (= e!3975758 (= (head!13337 (_2!36725 lt!2407811)) (c!1206990 (regTwo!33398 r!7292))))))

(assert (= (and d!2060803 c!1207286) b!6568149))

(assert (= (and d!2060803 (not c!1207286)) b!6568154))

(assert (= (and d!2060803 c!1207287) b!6568148))

(assert (= (and d!2060803 (not c!1207287)) b!6568151))

(assert (= (and b!6568151 c!1207285) b!6568146))

(assert (= (and b!6568151 (not c!1207285)) b!6568152))

(assert (= (and b!6568152 (not res!2695512)) b!6568157))

(assert (= (and b!6568157 res!2695510) b!6568147))

(assert (= (and b!6568147 res!2695517) b!6568155))

(assert (= (and b!6568155 res!2695513) b!6568159))

(assert (= (and b!6568157 (not res!2695511)) b!6568158))

(assert (= (and b!6568158 res!2695516) b!6568156))

(assert (= (and b!6568156 (not res!2695515)) b!6568150))

(assert (= (and b!6568150 (not res!2695514)) b!6568153))

(assert (= (or b!6568148 b!6568147 b!6568156) bm!571423))

(declare-fun m!7350416 () Bool)

(assert (=> b!6568154 m!7350416))

(assert (=> b!6568154 m!7350416))

(declare-fun m!7350418 () Bool)

(assert (=> b!6568154 m!7350418))

(declare-fun m!7350420 () Bool)

(assert (=> b!6568154 m!7350420))

(assert (=> b!6568154 m!7350418))

(assert (=> b!6568154 m!7350420))

(declare-fun m!7350422 () Bool)

(assert (=> b!6568154 m!7350422))

(declare-fun m!7350424 () Bool)

(assert (=> bm!571423 m!7350424))

(assert (=> b!6568153 m!7350416))

(assert (=> b!6568150 m!7350420))

(assert (=> b!6568150 m!7350420))

(declare-fun m!7350426 () Bool)

(assert (=> b!6568150 m!7350426))

(assert (=> b!6568159 m!7350416))

(declare-fun m!7350428 () Bool)

(assert (=> b!6568149 m!7350428))

(assert (=> d!2060803 m!7350424))

(assert (=> d!2060803 m!7349148))

(assert (=> b!6568155 m!7350420))

(assert (=> b!6568155 m!7350420))

(assert (=> b!6568155 m!7350426))

(assert (=> b!6566980 d!2060803))

(declare-fun b!6568160 () Bool)

(declare-fun e!3975767 () Bool)

(declare-fun lt!2408058 () Bool)

(assert (=> b!6568160 (= e!3975767 (not lt!2408058))))

(declare-fun b!6568161 () Bool)

(declare-fun res!2695525 () Bool)

(declare-fun e!3975765 () Bool)

(assert (=> b!6568161 (=> (not res!2695525) (not e!3975765))))

(declare-fun call!571429 () Bool)

(assert (=> b!6568161 (= res!2695525 (not call!571429))))

(declare-fun b!6568162 () Bool)

(declare-fun e!3975768 () Bool)

(assert (=> b!6568162 (= e!3975768 (= lt!2408058 call!571429))))

(declare-fun b!6568163 () Bool)

(declare-fun e!3975763 () Bool)

(assert (=> b!6568163 (= e!3975763 (nullable!6436 lt!2407775))))

(declare-fun d!2060805 () Bool)

(assert (=> d!2060805 e!3975768))

(declare-fun c!1207290 () Bool)

(assert (=> d!2060805 (= c!1207290 ((_ is EmptyExpr!16443) lt!2407775))))

(assert (=> d!2060805 (= lt!2408058 e!3975763)))

(declare-fun c!1207289 () Bool)

(assert (=> d!2060805 (= c!1207289 (isEmpty!37753 lt!2407810))))

(assert (=> d!2060805 (validRegex!8179 lt!2407775)))

(assert (=> d!2060805 (= (matchR!8626 lt!2407775 lt!2407810) lt!2408058)))

(declare-fun b!6568164 () Bool)

(declare-fun res!2695522 () Bool)

(declare-fun e!3975766 () Bool)

(assert (=> b!6568164 (=> res!2695522 e!3975766)))

(assert (=> b!6568164 (= res!2695522 (not (isEmpty!37753 (tail!12422 lt!2407810))))))

(declare-fun b!6568165 () Bool)

(assert (=> b!6568165 (= e!3975768 e!3975767)))

(declare-fun c!1207288 () Bool)

(assert (=> b!6568165 (= c!1207288 ((_ is EmptyLang!16443) lt!2407775))))

(declare-fun b!6568166 () Bool)

(declare-fun res!2695520 () Bool)

(declare-fun e!3975769 () Bool)

(assert (=> b!6568166 (=> res!2695520 e!3975769)))

(assert (=> b!6568166 (= res!2695520 (not ((_ is ElementMatch!16443) lt!2407775)))))

(assert (=> b!6568166 (= e!3975767 e!3975769)))

(declare-fun b!6568167 () Bool)

(assert (=> b!6568167 (= e!3975766 (not (= (head!13337 lt!2407810) (c!1206990 lt!2407775))))))

(declare-fun b!6568168 () Bool)

(assert (=> b!6568168 (= e!3975763 (matchR!8626 (derivativeStep!5127 lt!2407775 (head!13337 lt!2407810)) (tail!12422 lt!2407810)))))

(declare-fun b!6568169 () Bool)

(declare-fun res!2695521 () Bool)

(assert (=> b!6568169 (=> (not res!2695521) (not e!3975765))))

(assert (=> b!6568169 (= res!2695521 (isEmpty!37753 (tail!12422 lt!2407810)))))

(declare-fun b!6568170 () Bool)

(declare-fun e!3975764 () Bool)

(assert (=> b!6568170 (= e!3975764 e!3975766)))

(declare-fun res!2695523 () Bool)

(assert (=> b!6568170 (=> res!2695523 e!3975766)))

(assert (=> b!6568170 (= res!2695523 call!571429)))

(declare-fun b!6568171 () Bool)

(declare-fun res!2695519 () Bool)

(assert (=> b!6568171 (=> res!2695519 e!3975769)))

(assert (=> b!6568171 (= res!2695519 e!3975765)))

(declare-fun res!2695518 () Bool)

(assert (=> b!6568171 (=> (not res!2695518) (not e!3975765))))

(assert (=> b!6568171 (= res!2695518 lt!2408058)))

(declare-fun bm!571424 () Bool)

(assert (=> bm!571424 (= call!571429 (isEmpty!37753 lt!2407810))))

(declare-fun b!6568172 () Bool)

(assert (=> b!6568172 (= e!3975769 e!3975764)))

(declare-fun res!2695524 () Bool)

(assert (=> b!6568172 (=> (not res!2695524) (not e!3975764))))

(assert (=> b!6568172 (= res!2695524 (not lt!2408058))))

(declare-fun b!6568173 () Bool)

(assert (=> b!6568173 (= e!3975765 (= (head!13337 lt!2407810) (c!1206990 lt!2407775)))))

(assert (= (and d!2060805 c!1207289) b!6568163))

(assert (= (and d!2060805 (not c!1207289)) b!6568168))

(assert (= (and d!2060805 c!1207290) b!6568162))

(assert (= (and d!2060805 (not c!1207290)) b!6568165))

(assert (= (and b!6568165 c!1207288) b!6568160))

(assert (= (and b!6568165 (not c!1207288)) b!6568166))

(assert (= (and b!6568166 (not res!2695520)) b!6568171))

(assert (= (and b!6568171 res!2695518) b!6568161))

(assert (= (and b!6568161 res!2695525) b!6568169))

(assert (= (and b!6568169 res!2695521) b!6568173))

(assert (= (and b!6568171 (not res!2695519)) b!6568172))

(assert (= (and b!6568172 res!2695524) b!6568170))

(assert (= (and b!6568170 (not res!2695523)) b!6568164))

(assert (= (and b!6568164 (not res!2695522)) b!6568167))

(assert (= (or b!6568162 b!6568161 b!6568170) bm!571424))

(declare-fun m!7350430 () Bool)

(assert (=> b!6568168 m!7350430))

(assert (=> b!6568168 m!7350430))

(declare-fun m!7350432 () Bool)

(assert (=> b!6568168 m!7350432))

(declare-fun m!7350434 () Bool)

(assert (=> b!6568168 m!7350434))

(assert (=> b!6568168 m!7350432))

(assert (=> b!6568168 m!7350434))

(declare-fun m!7350436 () Bool)

(assert (=> b!6568168 m!7350436))

(declare-fun m!7350438 () Bool)

(assert (=> bm!571424 m!7350438))

(assert (=> b!6568167 m!7350430))

(assert (=> b!6568164 m!7350434))

(assert (=> b!6568164 m!7350434))

(declare-fun m!7350440 () Bool)

(assert (=> b!6568164 m!7350440))

(assert (=> b!6568173 m!7350430))

(assert (=> b!6568163 m!7350394))

(assert (=> d!2060805 m!7350438))

(assert (=> d!2060805 m!7349220))

(assert (=> b!6568169 m!7350434))

(assert (=> b!6568169 m!7350434))

(assert (=> b!6568169 m!7350440))

(assert (=> b!6566980 d!2060805))

(declare-fun d!2060807 () Bool)

(assert (=> d!2060807 (matchR!8626 (Star!16443 (reg!16772 (regOne!33398 r!7292))) (++!14588 (_1!36725 lt!2407778) (_2!36725 lt!2407778)))))

(declare-fun lt!2408061 () Unit!159107)

(declare-fun choose!49054 (Regex!16443 List!65628 List!65628) Unit!159107)

(assert (=> d!2060807 (= lt!2408061 (choose!49054 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407778) (_2!36725 lt!2407778)))))

(assert (=> d!2060807 (validRegex!8179 (Star!16443 (reg!16772 (regOne!33398 r!7292))))))

(assert (=> d!2060807 (= (lemmaStarApp!150 (reg!16772 (regOne!33398 r!7292)) (_1!36725 lt!2407778) (_2!36725 lt!2407778)) lt!2408061)))

(declare-fun bs!1677736 () Bool)

(assert (= bs!1677736 d!2060807))

(assert (=> bs!1677736 m!7349062))

(assert (=> bs!1677736 m!7349062))

(declare-fun m!7350442 () Bool)

(assert (=> bs!1677736 m!7350442))

(declare-fun m!7350444 () Bool)

(assert (=> bs!1677736 m!7350444))

(declare-fun m!7350446 () Bool)

(assert (=> bs!1677736 m!7350446))

(assert (=> b!6566980 d!2060807))

(declare-fun bs!1677737 () Bool)

(declare-fun d!2060809 () Bool)

(assert (= bs!1677737 (and d!2060809 b!6566961)))

(declare-fun lambda!365686 () Int)

(assert (=> bs!1677737 (= lambda!365686 lambda!365582)))

(declare-fun bs!1677738 () Bool)

(assert (= bs!1677738 (and d!2060809 d!2060695)))

(assert (=> bs!1677738 (= lambda!365686 lambda!365657)))

(declare-fun bs!1677739 () Bool)

(assert (= bs!1677739 (and d!2060809 d!2060743)))

(assert (=> bs!1677739 (= lambda!365686 lambda!365667)))

(assert (=> d!2060809 (= (inv!84354 (h!71954 zl!343)) (forall!15615 (exprs!6327 (h!71954 zl!343)) lambda!365686))))

(declare-fun bs!1677740 () Bool)

(assert (= bs!1677740 d!2060809))

(declare-fun m!7350448 () Bool)

(assert (=> bs!1677740 m!7350448))

(assert (=> b!6566981 d!2060809))

(declare-fun bs!1677741 () Bool)

(declare-fun d!2060811 () Bool)

(assert (= bs!1677741 (and d!2060811 b!6566961)))

(declare-fun lambda!365689 () Int)

(assert (=> bs!1677741 (= lambda!365689 lambda!365582)))

(declare-fun bs!1677742 () Bool)

(assert (= bs!1677742 (and d!2060811 d!2060695)))

(assert (=> bs!1677742 (= lambda!365689 lambda!365657)))

(declare-fun bs!1677743 () Bool)

(assert (= bs!1677743 (and d!2060811 d!2060743)))

(assert (=> bs!1677743 (= lambda!365689 lambda!365667)))

(declare-fun bs!1677744 () Bool)

(assert (= bs!1677744 (and d!2060811 d!2060809)))

(assert (=> bs!1677744 (= lambda!365689 lambda!365686)))

(declare-fun e!3975787 () Bool)

(assert (=> d!2060811 e!3975787))

(declare-fun res!2695530 () Bool)

(assert (=> d!2060811 (=> (not res!2695530) (not e!3975787))))

(declare-fun lt!2408064 () Regex!16443)

(assert (=> d!2060811 (= res!2695530 (validRegex!8179 lt!2408064))))

(declare-fun e!3975786 () Regex!16443)

(assert (=> d!2060811 (= lt!2408064 e!3975786)))

(declare-fun c!1207299 () Bool)

(declare-fun e!3975782 () Bool)

(assert (=> d!2060811 (= c!1207299 e!3975782)))

(declare-fun res!2695531 () Bool)

(assert (=> d!2060811 (=> (not res!2695531) (not e!3975782))))

(assert (=> d!2060811 (= res!2695531 ((_ is Cons!65505) (unfocusZipperList!1864 zl!343)))))

(assert (=> d!2060811 (forall!15615 (unfocusZipperList!1864 zl!343) lambda!365689)))

(assert (=> d!2060811 (= (generalisedUnion!2287 (unfocusZipperList!1864 zl!343)) lt!2408064)))

(declare-fun b!6568194 () Bool)

(assert (=> b!6568194 (= e!3975786 (h!71953 (unfocusZipperList!1864 zl!343)))))

(declare-fun b!6568195 () Bool)

(declare-fun e!3975783 () Bool)

(declare-fun isEmptyLang!1830 (Regex!16443) Bool)

(assert (=> b!6568195 (= e!3975783 (isEmptyLang!1830 lt!2408064))))

(declare-fun b!6568196 () Bool)

(declare-fun e!3975785 () Regex!16443)

(assert (=> b!6568196 (= e!3975786 e!3975785)))

(declare-fun c!1207300 () Bool)

(assert (=> b!6568196 (= c!1207300 ((_ is Cons!65505) (unfocusZipperList!1864 zl!343)))))

(declare-fun b!6568197 () Bool)

(assert (=> b!6568197 (= e!3975785 EmptyLang!16443)))

(declare-fun b!6568198 () Bool)

(declare-fun e!3975784 () Bool)

(assert (=> b!6568198 (= e!3975783 e!3975784)))

(declare-fun c!1207301 () Bool)

(assert (=> b!6568198 (= c!1207301 (isEmpty!37749 (tail!12423 (unfocusZipperList!1864 zl!343))))))

(declare-fun b!6568199 () Bool)

(declare-fun isUnion!1260 (Regex!16443) Bool)

(assert (=> b!6568199 (= e!3975784 (isUnion!1260 lt!2408064))))

(declare-fun b!6568200 () Bool)

(assert (=> b!6568200 (= e!3975784 (= lt!2408064 (head!13338 (unfocusZipperList!1864 zl!343))))))

(declare-fun b!6568201 () Bool)

(assert (=> b!6568201 (= e!3975787 e!3975783)))

(declare-fun c!1207302 () Bool)

(assert (=> b!6568201 (= c!1207302 (isEmpty!37749 (unfocusZipperList!1864 zl!343)))))

(declare-fun b!6568202 () Bool)

(assert (=> b!6568202 (= e!3975785 (Union!16443 (h!71953 (unfocusZipperList!1864 zl!343)) (generalisedUnion!2287 (t!379273 (unfocusZipperList!1864 zl!343)))))))

(declare-fun b!6568203 () Bool)

(assert (=> b!6568203 (= e!3975782 (isEmpty!37749 (t!379273 (unfocusZipperList!1864 zl!343))))))

(assert (= (and d!2060811 res!2695531) b!6568203))

(assert (= (and d!2060811 c!1207299) b!6568194))

(assert (= (and d!2060811 (not c!1207299)) b!6568196))

(assert (= (and b!6568196 c!1207300) b!6568202))

(assert (= (and b!6568196 (not c!1207300)) b!6568197))

(assert (= (and d!2060811 res!2695530) b!6568201))

(assert (= (and b!6568201 c!1207302) b!6568195))

(assert (= (and b!6568201 (not c!1207302)) b!6568198))

(assert (= (and b!6568198 c!1207301) b!6568200))

(assert (= (and b!6568198 (not c!1207301)) b!6568199))

(declare-fun m!7350450 () Bool)

(assert (=> b!6568202 m!7350450))

(assert (=> b!6568198 m!7349172))

(declare-fun m!7350452 () Bool)

(assert (=> b!6568198 m!7350452))

(assert (=> b!6568198 m!7350452))

(declare-fun m!7350454 () Bool)

(assert (=> b!6568198 m!7350454))

(declare-fun m!7350456 () Bool)

(assert (=> b!6568203 m!7350456))

(declare-fun m!7350458 () Bool)

(assert (=> d!2060811 m!7350458))

(assert (=> d!2060811 m!7349172))

(declare-fun m!7350460 () Bool)

(assert (=> d!2060811 m!7350460))

(declare-fun m!7350462 () Bool)

(assert (=> b!6568195 m!7350462))

(assert (=> b!6568201 m!7349172))

(declare-fun m!7350464 () Bool)

(assert (=> b!6568201 m!7350464))

(declare-fun m!7350466 () Bool)

(assert (=> b!6568199 m!7350466))

(assert (=> b!6568200 m!7349172))

(declare-fun m!7350468 () Bool)

(assert (=> b!6568200 m!7350468))

(assert (=> b!6566940 d!2060811))

(declare-fun bs!1677745 () Bool)

(declare-fun d!2060813 () Bool)

(assert (= bs!1677745 (and d!2060813 d!2060743)))

(declare-fun lambda!365692 () Int)

(assert (=> bs!1677745 (= lambda!365692 lambda!365667)))

(declare-fun bs!1677746 () Bool)

(assert (= bs!1677746 (and d!2060813 d!2060695)))

(assert (=> bs!1677746 (= lambda!365692 lambda!365657)))

(declare-fun bs!1677747 () Bool)

(assert (= bs!1677747 (and d!2060813 d!2060811)))

(assert (=> bs!1677747 (= lambda!365692 lambda!365689)))

(declare-fun bs!1677748 () Bool)

(assert (= bs!1677748 (and d!2060813 b!6566961)))

(assert (=> bs!1677748 (= lambda!365692 lambda!365582)))

(declare-fun bs!1677749 () Bool)

(assert (= bs!1677749 (and d!2060813 d!2060809)))

(assert (=> bs!1677749 (= lambda!365692 lambda!365686)))

(declare-fun lt!2408067 () List!65629)

(assert (=> d!2060813 (forall!15615 lt!2408067 lambda!365692)))

(declare-fun e!3975790 () List!65629)

(assert (=> d!2060813 (= lt!2408067 e!3975790)))

(declare-fun c!1207305 () Bool)

(assert (=> d!2060813 (= c!1207305 ((_ is Cons!65506) zl!343))))

(assert (=> d!2060813 (= (unfocusZipperList!1864 zl!343) lt!2408067)))

(declare-fun b!6568208 () Bool)

(assert (=> b!6568208 (= e!3975790 (Cons!65505 (generalisedConcat!2040 (exprs!6327 (h!71954 zl!343))) (unfocusZipperList!1864 (t!379274 zl!343))))))

(declare-fun b!6568209 () Bool)

(assert (=> b!6568209 (= e!3975790 Nil!65505)))

(assert (= (and d!2060813 c!1207305) b!6568208))

(assert (= (and d!2060813 (not c!1207305)) b!6568209))

(declare-fun m!7350470 () Bool)

(assert (=> d!2060813 m!7350470))

(assert (=> b!6568208 m!7349086))

(declare-fun m!7350472 () Bool)

(assert (=> b!6568208 m!7350472))

(assert (=> b!6566940 d!2060813))

(declare-fun bs!1677750 () Bool)

(declare-fun d!2060815 () Bool)

(assert (= bs!1677750 (and d!2060815 b!6566961)))

(declare-fun lambda!365697 () Int)

(assert (=> bs!1677750 (= (= (exprs!6327 lt!2407776) lt!2407825) (= lambda!365697 lambda!365581))))

(assert (=> d!2060815 true))

(assert (=> d!2060815 (= (appendTo!204 lt!2407823 lt!2407776) (map!14973 lt!2407823 lambda!365697))))

(declare-fun bs!1677751 () Bool)

(assert (= bs!1677751 d!2060815))

(declare-fun m!7350474 () Bool)

(assert (=> bs!1677751 m!7350474))

(assert (=> b!6566961 d!2060815))

(declare-fun d!2060817 () Bool)

(declare-fun choose!49055 ((InoxSet Context!11654) Int) (InoxSet Context!11654))

(assert (=> d!2060817 (= (map!14973 lt!2407823 lambda!365581) (choose!49055 lt!2407823 lambda!365581))))

(declare-fun bs!1677752 () Bool)

(assert (= bs!1677752 d!2060817))

(declare-fun m!7350476 () Bool)

(assert (=> bs!1677752 m!7350476))

(assert (=> b!6566961 d!2060817))

(declare-fun d!2060819 () Bool)

(declare-fun dynLambda!26061 (Int Context!11654) Context!11654)

(assert (=> d!2060819 (= (map!14973 lt!2407823 lambda!365581) (store ((as const (Array Context!11654 Bool)) false) (dynLambda!26061 lambda!365581 lt!2407801) true))))

(declare-fun lt!2408072 () Unit!159107)

(declare-fun choose!49056 ((InoxSet Context!11654) Context!11654 Int) Unit!159107)

(assert (=> d!2060819 (= lt!2408072 (choose!49056 lt!2407823 lt!2407801 lambda!365581))))

(assert (=> d!2060819 (= lt!2407823 (store ((as const (Array Context!11654 Bool)) false) lt!2407801 true))))

(assert (=> d!2060819 (= (lemmaMapOnSingletonSet!226 lt!2407823 lt!2407801 lambda!365581) lt!2408072)))

(declare-fun b_lambda!248403 () Bool)

(assert (=> (not b_lambda!248403) (not d!2060819)))

(declare-fun bs!1677753 () Bool)

(assert (= bs!1677753 d!2060819))

(assert (=> bs!1677753 m!7349216))

(declare-fun m!7350478 () Bool)

(assert (=> bs!1677753 m!7350478))

(declare-fun m!7350480 () Bool)

(assert (=> bs!1677753 m!7350480))

(assert (=> bs!1677753 m!7349190))

(assert (=> bs!1677753 m!7350480))

(declare-fun m!7350482 () Bool)

(assert (=> bs!1677753 m!7350482))

(assert (=> b!6566961 d!2060819))

(assert (=> b!6566961 d!2060643))

(assert (=> b!6566961 d!2060673))

(declare-fun d!2060821 () Bool)

(declare-fun e!3975793 () Bool)

(assert (=> d!2060821 (= (matchZipper!2455 ((_ map or) lt!2407806 lt!2407819) (t!379272 s!2326)) e!3975793)))

(declare-fun res!2695534 () Bool)

(assert (=> d!2060821 (=> res!2695534 e!3975793)))

(assert (=> d!2060821 (= res!2695534 (matchZipper!2455 lt!2407806 (t!379272 s!2326)))))

(declare-fun lt!2408075 () Unit!159107)

(declare-fun choose!49057 ((InoxSet Context!11654) (InoxSet Context!11654) List!65628) Unit!159107)

(assert (=> d!2060821 (= lt!2408075 (choose!49057 lt!2407806 lt!2407819 (t!379272 s!2326)))))

(assert (=> d!2060821 (= (lemmaZipperConcatMatchesSameAsBothZippers!1274 lt!2407806 lt!2407819 (t!379272 s!2326)) lt!2408075)))

(declare-fun b!6568214 () Bool)

(assert (=> b!6568214 (= e!3975793 (matchZipper!2455 lt!2407819 (t!379272 s!2326)))))

(assert (= (and d!2060821 (not res!2695534)) b!6568214))

(assert (=> d!2060821 m!7349246))

(assert (=> d!2060821 m!7349244))

(declare-fun m!7350484 () Bool)

(assert (=> d!2060821 m!7350484))

(assert (=> b!6568214 m!7349224))

(assert (=> b!6566937 d!2060821))

(declare-fun d!2060823 () Bool)

(declare-fun c!1207307 () Bool)

(assert (=> d!2060823 (= c!1207307 (isEmpty!37753 (t!379272 s!2326)))))

(declare-fun e!3975794 () Bool)

(assert (=> d!2060823 (= (matchZipper!2455 lt!2407806 (t!379272 s!2326)) e!3975794)))

(declare-fun b!6568215 () Bool)

(assert (=> b!6568215 (= e!3975794 (nullableZipper!2188 lt!2407806))))

(declare-fun b!6568216 () Bool)

(assert (=> b!6568216 (= e!3975794 (matchZipper!2455 (derivationStepZipper!2409 lt!2407806 (head!13337 (t!379272 s!2326))) (tail!12422 (t!379272 s!2326))))))

(assert (= (and d!2060823 c!1207307) b!6568215))

(assert (= (and d!2060823 (not c!1207307)) b!6568216))

(declare-fun m!7350486 () Bool)

(assert (=> d!2060823 m!7350486))

(declare-fun m!7350488 () Bool)

(assert (=> b!6568215 m!7350488))

(declare-fun m!7350490 () Bool)

(assert (=> b!6568216 m!7350490))

(assert (=> b!6568216 m!7350490))

(declare-fun m!7350492 () Bool)

(assert (=> b!6568216 m!7350492))

(declare-fun m!7350494 () Bool)

(assert (=> b!6568216 m!7350494))

(assert (=> b!6568216 m!7350492))

(assert (=> b!6568216 m!7350494))

(declare-fun m!7350496 () Bool)

(assert (=> b!6568216 m!7350496))

(assert (=> b!6566937 d!2060823))

(declare-fun d!2060825 () Bool)

(declare-fun c!1207308 () Bool)

(assert (=> d!2060825 (= c!1207308 (isEmpty!37753 (t!379272 s!2326)))))

(declare-fun e!3975795 () Bool)

(assert (=> d!2060825 (= (matchZipper!2455 ((_ map or) lt!2407806 lt!2407819) (t!379272 s!2326)) e!3975795)))

(declare-fun b!6568217 () Bool)

(assert (=> b!6568217 (= e!3975795 (nullableZipper!2188 ((_ map or) lt!2407806 lt!2407819)))))

(declare-fun b!6568218 () Bool)

(assert (=> b!6568218 (= e!3975795 (matchZipper!2455 (derivationStepZipper!2409 ((_ map or) lt!2407806 lt!2407819) (head!13337 (t!379272 s!2326))) (tail!12422 (t!379272 s!2326))))))

(assert (= (and d!2060825 c!1207308) b!6568217))

(assert (= (and d!2060825 (not c!1207308)) b!6568218))

(assert (=> d!2060825 m!7350486))

(declare-fun m!7350498 () Bool)

(assert (=> b!6568217 m!7350498))

(assert (=> b!6568218 m!7350490))

(assert (=> b!6568218 m!7350490))

(declare-fun m!7350500 () Bool)

(assert (=> b!6568218 m!7350500))

(assert (=> b!6568218 m!7350494))

(assert (=> b!6568218 m!7350500))

(assert (=> b!6568218 m!7350494))

(declare-fun m!7350502 () Bool)

(assert (=> b!6568218 m!7350502))

(assert (=> b!6566937 d!2060825))

(declare-fun d!2060827 () Bool)

(declare-fun lt!2408076 () Regex!16443)

(assert (=> d!2060827 (validRegex!8179 lt!2408076)))

(assert (=> d!2060827 (= lt!2408076 (generalisedUnion!2287 (unfocusZipperList!1864 (Cons!65506 lt!2407816 Nil!65506))))))

(assert (=> d!2060827 (= (unfocusZipper!2185 (Cons!65506 lt!2407816 Nil!65506)) lt!2408076)))

(declare-fun bs!1677754 () Bool)

(assert (= bs!1677754 d!2060827))

(declare-fun m!7350504 () Bool)

(assert (=> bs!1677754 m!7350504))

(declare-fun m!7350506 () Bool)

(assert (=> bs!1677754 m!7350506))

(assert (=> bs!1677754 m!7350506))

(declare-fun m!7350508 () Bool)

(assert (=> bs!1677754 m!7350508))

(assert (=> b!6566956 d!2060827))

(declare-fun d!2060829 () Bool)

(declare-fun lt!2408077 () Regex!16443)

(assert (=> d!2060829 (validRegex!8179 lt!2408077)))

(assert (=> d!2060829 (= lt!2408077 (generalisedUnion!2287 (unfocusZipperList!1864 zl!343)))))

(assert (=> d!2060829 (= (unfocusZipper!2185 zl!343) lt!2408077)))

(declare-fun bs!1677755 () Bool)

(assert (= bs!1677755 d!2060829))

(declare-fun m!7350510 () Bool)

(assert (=> bs!1677755 m!7350510))

(assert (=> bs!1677755 m!7349172))

(assert (=> bs!1677755 m!7349172))

(assert (=> bs!1677755 m!7349174))

(assert (=> b!6566957 d!2060829))

(assert (=> b!6566978 d!2060823))

(declare-fun d!2060831 () Bool)

(declare-fun c!1207309 () Bool)

(assert (=> d!2060831 (= c!1207309 (isEmpty!37753 (t!379272 s!2326)))))

(declare-fun e!3975796 () Bool)

(assert (=> d!2060831 (= (matchZipper!2455 lt!2407819 (t!379272 s!2326)) e!3975796)))

(declare-fun b!6568219 () Bool)

(assert (=> b!6568219 (= e!3975796 (nullableZipper!2188 lt!2407819))))

(declare-fun b!6568220 () Bool)

(assert (=> b!6568220 (= e!3975796 (matchZipper!2455 (derivationStepZipper!2409 lt!2407819 (head!13337 (t!379272 s!2326))) (tail!12422 (t!379272 s!2326))))))

(assert (= (and d!2060831 c!1207309) b!6568219))

(assert (= (and d!2060831 (not c!1207309)) b!6568220))

(assert (=> d!2060831 m!7350486))

(declare-fun m!7350512 () Bool)

(assert (=> b!6568219 m!7350512))

(assert (=> b!6568220 m!7350490))

(assert (=> b!6568220 m!7350490))

(declare-fun m!7350514 () Bool)

(assert (=> b!6568220 m!7350514))

(assert (=> b!6568220 m!7350494))

(assert (=> b!6568220 m!7350514))

(assert (=> b!6568220 m!7350494))

(declare-fun m!7350516 () Bool)

(assert (=> b!6568220 m!7350516))

(assert (=> b!6566979 d!2060831))

(declare-fun b!6568221 () Bool)

(declare-fun res!2695537 () Bool)

(declare-fun e!3975798 () Bool)

(assert (=> b!6568221 (=> (not res!2695537) (not e!3975798))))

(declare-fun lt!2408079 () Option!16334)

(assert (=> b!6568221 (= res!2695537 (matchR!8626 (regOne!33398 r!7292) (_1!36725 (get!22746 lt!2408079))))))

(declare-fun b!6568223 () Bool)

(declare-fun e!3975801 () Option!16334)

(assert (=> b!6568223 (= e!3975801 (Some!16333 (tuple2!66845 Nil!65504 s!2326)))))

(declare-fun b!6568224 () Bool)

(declare-fun e!3975797 () Bool)

(assert (=> b!6568224 (= e!3975797 (not (isDefined!13037 lt!2408079)))))

(declare-fun b!6568225 () Bool)

(declare-fun e!3975800 () Option!16334)

(assert (=> b!6568225 (= e!3975801 e!3975800)))

(declare-fun c!1207311 () Bool)

(assert (=> b!6568225 (= c!1207311 ((_ is Nil!65504) s!2326))))

(declare-fun b!6568222 () Bool)

(declare-fun lt!2408080 () Unit!159107)

(declare-fun lt!2408078 () Unit!159107)

(assert (=> b!6568222 (= lt!2408080 lt!2408078)))

(assert (=> b!6568222 (= (++!14588 (++!14588 Nil!65504 (Cons!65504 (h!71952 s!2326) Nil!65504)) (t!379272 s!2326)) s!2326)))

(assert (=> b!6568222 (= lt!2408078 (lemmaMoveElementToOtherListKeepsConcatEq!2586 Nil!65504 (h!71952 s!2326) (t!379272 s!2326) s!2326))))

(assert (=> b!6568222 (= e!3975800 (findConcatSeparation!2748 (regOne!33398 r!7292) (regTwo!33398 r!7292) (++!14588 Nil!65504 (Cons!65504 (h!71952 s!2326) Nil!65504)) (t!379272 s!2326) s!2326))))

(declare-fun d!2060833 () Bool)

(assert (=> d!2060833 e!3975797))

(declare-fun res!2695536 () Bool)

(assert (=> d!2060833 (=> res!2695536 e!3975797)))

(assert (=> d!2060833 (= res!2695536 e!3975798)))

(declare-fun res!2695535 () Bool)

(assert (=> d!2060833 (=> (not res!2695535) (not e!3975798))))

(assert (=> d!2060833 (= res!2695535 (isDefined!13037 lt!2408079))))

(assert (=> d!2060833 (= lt!2408079 e!3975801)))

(declare-fun c!1207310 () Bool)

(declare-fun e!3975799 () Bool)

(assert (=> d!2060833 (= c!1207310 e!3975799)))

(declare-fun res!2695539 () Bool)

(assert (=> d!2060833 (=> (not res!2695539) (not e!3975799))))

(assert (=> d!2060833 (= res!2695539 (matchR!8626 (regOne!33398 r!7292) Nil!65504))))

(assert (=> d!2060833 (validRegex!8179 (regOne!33398 r!7292))))

(assert (=> d!2060833 (= (findConcatSeparation!2748 (regOne!33398 r!7292) (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326) lt!2408079)))

(declare-fun b!6568226 () Bool)

(declare-fun res!2695538 () Bool)

(assert (=> b!6568226 (=> (not res!2695538) (not e!3975798))))

(assert (=> b!6568226 (= res!2695538 (matchR!8626 (regTwo!33398 r!7292) (_2!36725 (get!22746 lt!2408079))))))

(declare-fun b!6568227 () Bool)

(assert (=> b!6568227 (= e!3975799 (matchR!8626 (regTwo!33398 r!7292) s!2326))))

(declare-fun b!6568228 () Bool)

(assert (=> b!6568228 (= e!3975798 (= (++!14588 (_1!36725 (get!22746 lt!2408079)) (_2!36725 (get!22746 lt!2408079))) s!2326))))

(declare-fun b!6568229 () Bool)

(assert (=> b!6568229 (= e!3975800 None!16333)))

(assert (= (and d!2060833 res!2695539) b!6568227))

(assert (= (and d!2060833 c!1207310) b!6568223))

(assert (= (and d!2060833 (not c!1207310)) b!6568225))

(assert (= (and b!6568225 c!1207311) b!6568229))

(assert (= (and b!6568225 (not c!1207311)) b!6568222))

(assert (= (and d!2060833 res!2695535) b!6568221))

(assert (= (and b!6568221 res!2695537) b!6568226))

(assert (= (and b!6568226 res!2695538) b!6568228))

(assert (= (and d!2060833 (not res!2695536)) b!6568224))

(assert (=> b!6568222 m!7349790))

(assert (=> b!6568222 m!7349790))

(assert (=> b!6568222 m!7349792))

(assert (=> b!6568222 m!7349794))

(assert (=> b!6568222 m!7349790))

(declare-fun m!7350518 () Bool)

(assert (=> b!6568222 m!7350518))

(declare-fun m!7350520 () Bool)

(assert (=> d!2060833 m!7350520))

(declare-fun m!7350522 () Bool)

(assert (=> d!2060833 m!7350522))

(declare-fun m!7350524 () Bool)

(assert (=> d!2060833 m!7350524))

(declare-fun m!7350526 () Bool)

(assert (=> b!6568226 m!7350526))

(declare-fun m!7350528 () Bool)

(assert (=> b!6568226 m!7350528))

(assert (=> b!6568221 m!7350526))

(declare-fun m!7350530 () Bool)

(assert (=> b!6568221 m!7350530))

(assert (=> b!6568228 m!7350526))

(declare-fun m!7350532 () Bool)

(assert (=> b!6568228 m!7350532))

(assert (=> b!6568227 m!7350202))

(assert (=> b!6568224 m!7350520))

(assert (=> b!6566938 d!2060833))

(declare-fun d!2060835 () Bool)

(assert (=> d!2060835 (= (Exists!3513 lambda!365579) (choose!49037 lambda!365579))))

(declare-fun bs!1677756 () Bool)

(assert (= bs!1677756 d!2060835))

(declare-fun m!7350534 () Bool)

(assert (=> bs!1677756 m!7350534))

(assert (=> b!6566938 d!2060835))

(declare-fun d!2060837 () Bool)

(assert (=> d!2060837 (= (Exists!3513 lambda!365578) (choose!49037 lambda!365578))))

(declare-fun bs!1677757 () Bool)

(assert (= bs!1677757 d!2060837))

(declare-fun m!7350536 () Bool)

(assert (=> bs!1677757 m!7350536))

(assert (=> b!6566938 d!2060837))

(declare-fun bs!1677758 () Bool)

(declare-fun d!2060839 () Bool)

(assert (= bs!1677758 (and d!2060839 b!6567944)))

(declare-fun lambda!365698 () Int)

(assert (=> bs!1677758 (not (= lambda!365698 lambda!365664))))

(declare-fun bs!1677759 () Bool)

(assert (= bs!1677759 (and d!2060839 b!6568055)))

(assert (=> bs!1677759 (not (= lambda!365698 lambda!365676))))

(declare-fun bs!1677760 () Bool)

(assert (= bs!1677760 (and d!2060839 b!6568004)))

(assert (=> bs!1677760 (not (= lambda!365698 lambda!365669))))

(declare-fun bs!1677761 () Bool)

(assert (= bs!1677761 (and d!2060839 b!6566938)))

(assert (=> bs!1677761 (not (= lambda!365698 lambda!365579))))

(declare-fun bs!1677762 () Bool)

(assert (= bs!1677762 (and d!2060839 b!6566942)))

(assert (=> bs!1677762 (not (= lambda!365698 lambda!365587))))

(assert (=> bs!1677762 (not (= lambda!365698 lambda!365586))))

(declare-fun bs!1677763 () Bool)

(assert (= bs!1677763 (and d!2060839 d!2060709)))

(assert (=> bs!1677763 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365698 lambda!365662))))

(declare-fun bs!1677764 () Bool)

(assert (= bs!1677764 (and d!2060839 d!2060761)))

(assert (=> bs!1677764 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) (Star!16443 (reg!16772 (regOne!33398 r!7292))))) (= lambda!365698 lambda!365674))))

(declare-fun bs!1677765 () Bool)

(assert (= bs!1677765 (and d!2060839 b!6566944)))

(assert (=> bs!1677765 (not (= lambda!365698 lambda!365584))))

(declare-fun bs!1677766 () Bool)

(assert (= bs!1677766 (and d!2060839 d!2060785)))

(assert (=> bs!1677766 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365698 lambda!365679))))

(assert (=> bs!1677765 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365698 lambda!365583))))

(declare-fun bs!1677767 () Bool)

(assert (= bs!1677767 (and d!2060839 d!2060647)))

(assert (=> bs!1677767 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365698 lambda!365644))))

(assert (=> bs!1677767 (not (= lambda!365698 lambda!365645))))

(declare-fun bs!1677768 () Bool)

(assert (= bs!1677768 (and d!2060839 b!6567605)))

(assert (=> bs!1677768 (not (= lambda!365698 lambda!365639))))

(declare-fun bs!1677769 () Bool)

(assert (= bs!1677769 (and d!2060839 b!6568007)))

(assert (=> bs!1677769 (not (= lambda!365698 lambda!365668))))

(declare-fun bs!1677770 () Bool)

(assert (= bs!1677770 (and d!2060839 b!6567947)))

(assert (=> bs!1677770 (not (= lambda!365698 lambda!365663))))

(declare-fun bs!1677771 () Bool)

(assert (= bs!1677771 (and d!2060839 b!6568052)))

(assert (=> bs!1677771 (not (= lambda!365698 lambda!365677))))

(assert (=> bs!1677764 (not (= lambda!365698 lambda!365675))))

(assert (=> bs!1677762 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365698 lambda!365585))))

(declare-fun bs!1677772 () Bool)

(assert (= bs!1677772 (and d!2060839 b!6567608)))

(assert (=> bs!1677772 (not (= lambda!365698 lambda!365637))))

(assert (=> bs!1677766 (not (= lambda!365698 lambda!365680))))

(declare-fun bs!1677773 () Bool)

(assert (= bs!1677773 (and d!2060839 d!2060771)))

(assert (=> bs!1677773 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365698 lambda!365678))))

(assert (=> bs!1677761 (= lambda!365698 lambda!365578)))

(assert (=> d!2060839 true))

(assert (=> d!2060839 true))

(assert (=> d!2060839 true))

(assert (=> d!2060839 (= (isDefined!13037 (findConcatSeparation!2748 (regOne!33398 r!7292) (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326)) (Exists!3513 lambda!365698))))

(declare-fun lt!2408081 () Unit!159107)

(assert (=> d!2060839 (= lt!2408081 (choose!49043 (regOne!33398 r!7292) (regTwo!33398 r!7292) s!2326))))

(assert (=> d!2060839 (validRegex!8179 (regOne!33398 r!7292))))

(assert (=> d!2060839 (= (lemmaFindConcatSeparationEquivalentToExists!2512 (regOne!33398 r!7292) (regTwo!33398 r!7292) s!2326) lt!2408081)))

(declare-fun bs!1677774 () Bool)

(assert (= bs!1677774 d!2060839))

(assert (=> bs!1677774 m!7349160))

(declare-fun m!7350538 () Bool)

(assert (=> bs!1677774 m!7350538))

(assert (=> bs!1677774 m!7349160))

(assert (=> bs!1677774 m!7349162))

(assert (=> bs!1677774 m!7350524))

(declare-fun m!7350540 () Bool)

(assert (=> bs!1677774 m!7350540))

(assert (=> b!6566938 d!2060839))

(declare-fun bs!1677775 () Bool)

(declare-fun d!2060841 () Bool)

(assert (= bs!1677775 (and d!2060841 b!6567944)))

(declare-fun lambda!365699 () Int)

(assert (=> bs!1677775 (not (= lambda!365699 lambda!365664))))

(declare-fun bs!1677776 () Bool)

(assert (= bs!1677776 (and d!2060841 b!6568055)))

(assert (=> bs!1677776 (not (= lambda!365699 lambda!365676))))

(declare-fun bs!1677777 () Bool)

(assert (= bs!1677777 (and d!2060841 b!6568004)))

(assert (=> bs!1677777 (not (= lambda!365699 lambda!365669))))

(declare-fun bs!1677778 () Bool)

(assert (= bs!1677778 (and d!2060841 b!6566938)))

(assert (=> bs!1677778 (not (= lambda!365699 lambda!365579))))

(declare-fun bs!1677779 () Bool)

(assert (= bs!1677779 (and d!2060841 b!6566942)))

(assert (=> bs!1677779 (not (= lambda!365699 lambda!365587))))

(assert (=> bs!1677779 (not (= lambda!365699 lambda!365586))))

(declare-fun bs!1677780 () Bool)

(assert (= bs!1677780 (and d!2060841 d!2060709)))

(assert (=> bs!1677780 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365699 lambda!365662))))

(declare-fun bs!1677781 () Bool)

(assert (= bs!1677781 (and d!2060841 d!2060761)))

(assert (=> bs!1677781 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) (Star!16443 (reg!16772 (regOne!33398 r!7292))))) (= lambda!365699 lambda!365674))))

(declare-fun bs!1677782 () Bool)

(assert (= bs!1677782 (and d!2060841 b!6566944)))

(assert (=> bs!1677782 (not (= lambda!365699 lambda!365584))))

(declare-fun bs!1677783 () Bool)

(assert (= bs!1677783 (and d!2060841 d!2060785)))

(assert (=> bs!1677783 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365699 lambda!365679))))

(assert (=> bs!1677782 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365699 lambda!365583))))

(declare-fun bs!1677784 () Bool)

(assert (= bs!1677784 (and d!2060841 d!2060647)))

(assert (=> bs!1677784 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365699 lambda!365644))))

(assert (=> bs!1677784 (not (= lambda!365699 lambda!365645))))

(declare-fun bs!1677785 () Bool)

(assert (= bs!1677785 (and d!2060841 b!6568007)))

(assert (=> bs!1677785 (not (= lambda!365699 lambda!365668))))

(declare-fun bs!1677786 () Bool)

(assert (= bs!1677786 (and d!2060841 b!6567947)))

(assert (=> bs!1677786 (not (= lambda!365699 lambda!365663))))

(declare-fun bs!1677787 () Bool)

(assert (= bs!1677787 (and d!2060841 b!6568052)))

(assert (=> bs!1677787 (not (= lambda!365699 lambda!365677))))

(assert (=> bs!1677781 (not (= lambda!365699 lambda!365675))))

(assert (=> bs!1677779 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365699 lambda!365585))))

(declare-fun bs!1677788 () Bool)

(assert (= bs!1677788 (and d!2060841 b!6567608)))

(assert (=> bs!1677788 (not (= lambda!365699 lambda!365637))))

(assert (=> bs!1677783 (not (= lambda!365699 lambda!365680))))

(declare-fun bs!1677789 () Bool)

(assert (= bs!1677789 (and d!2060841 d!2060771)))

(assert (=> bs!1677789 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365699 lambda!365678))))

(assert (=> bs!1677778 (= lambda!365699 lambda!365578)))

(declare-fun bs!1677790 () Bool)

(assert (= bs!1677790 (and d!2060841 b!6567605)))

(assert (=> bs!1677790 (not (= lambda!365699 lambda!365639))))

(declare-fun bs!1677791 () Bool)

(assert (= bs!1677791 (and d!2060841 d!2060839)))

(assert (=> bs!1677791 (= lambda!365699 lambda!365698)))

(assert (=> d!2060841 true))

(assert (=> d!2060841 true))

(assert (=> d!2060841 true))

(declare-fun lambda!365700 () Int)

(assert (=> bs!1677775 (= (and (= (regOne!33398 r!7292) (regOne!33398 lt!2407779)) (= (regTwo!33398 r!7292) (regTwo!33398 lt!2407779))) (= lambda!365700 lambda!365664))))

(assert (=> bs!1677776 (not (= lambda!365700 lambda!365676))))

(assert (=> bs!1677777 (= lambda!365700 lambda!365669)))

(assert (=> bs!1677778 (= lambda!365700 lambda!365579)))

(assert (=> bs!1677779 (not (= lambda!365700 lambda!365587))))

(assert (=> bs!1677779 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365700 lambda!365586))))

(assert (=> bs!1677780 (not (= lambda!365700 lambda!365662))))

(assert (=> bs!1677781 (not (= lambda!365700 lambda!365674))))

(assert (=> bs!1677782 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365700 lambda!365584))))

(declare-fun bs!1677792 () Bool)

(assert (= bs!1677792 d!2060841))

(assert (=> bs!1677792 (not (= lambda!365700 lambda!365699))))

(assert (=> bs!1677783 (not (= lambda!365700 lambda!365679))))

(assert (=> bs!1677782 (not (= lambda!365700 lambda!365583))))

(assert (=> bs!1677784 (not (= lambda!365700 lambda!365644))))

(assert (=> bs!1677784 (= (= (regOne!33398 r!7292) lt!2407774) (= lambda!365700 lambda!365645))))

(assert (=> bs!1677785 (not (= lambda!365700 lambda!365668))))

(assert (=> bs!1677786 (not (= lambda!365700 lambda!365663))))

(assert (=> bs!1677787 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (regOne!33398 lt!2407774)) (= (regTwo!33398 r!7292) (regTwo!33398 lt!2407774))) (= lambda!365700 lambda!365677))))

(assert (=> bs!1677781 (not (= lambda!365700 lambda!365675))))

(assert (=> bs!1677779 (not (= lambda!365700 lambda!365585))))

(assert (=> bs!1677788 (not (= lambda!365700 lambda!365637))))

(assert (=> bs!1677783 (= (and (= s!2326 (_1!36725 lt!2407811)) (= (regOne!33398 r!7292) (reg!16772 (regOne!33398 r!7292))) (= (regTwo!33398 r!7292) lt!2407775)) (= lambda!365700 lambda!365680))))

(assert (=> bs!1677789 (not (= lambda!365700 lambda!365678))))

(assert (=> bs!1677778 (not (= lambda!365700 lambda!365578))))

(assert (=> bs!1677790 (= (and (= (regOne!33398 r!7292) (regOne!33398 lt!2407832)) (= (regTwo!33398 r!7292) (regTwo!33398 lt!2407832))) (= lambda!365700 lambda!365639))))

(assert (=> bs!1677791 (not (= lambda!365700 lambda!365698))))

(assert (=> d!2060841 true))

(assert (=> d!2060841 true))

(assert (=> d!2060841 true))

(assert (=> d!2060841 (= (Exists!3513 lambda!365699) (Exists!3513 lambda!365700))))

(declare-fun lt!2408082 () Unit!159107)

(assert (=> d!2060841 (= lt!2408082 (choose!49038 (regOne!33398 r!7292) (regTwo!33398 r!7292) s!2326))))

(assert (=> d!2060841 (validRegex!8179 (regOne!33398 r!7292))))

(assert (=> d!2060841 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2050 (regOne!33398 r!7292) (regTwo!33398 r!7292) s!2326) lt!2408082)))

(declare-fun m!7350542 () Bool)

(assert (=> bs!1677792 m!7350542))

(declare-fun m!7350544 () Bool)

(assert (=> bs!1677792 m!7350544))

(declare-fun m!7350546 () Bool)

(assert (=> bs!1677792 m!7350546))

(assert (=> bs!1677792 m!7350524))

(assert (=> b!6566938 d!2060841))

(declare-fun d!2060843 () Bool)

(assert (=> d!2060843 (= (isDefined!13037 (findConcatSeparation!2748 (regOne!33398 r!7292) (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326)) (not (isEmpty!37754 (findConcatSeparation!2748 (regOne!33398 r!7292) (regTwo!33398 r!7292) Nil!65504 s!2326 s!2326))))))

(declare-fun bs!1677793 () Bool)

(assert (= bs!1677793 d!2060843))

(assert (=> bs!1677793 m!7349160))

(declare-fun m!7350548 () Bool)

(assert (=> bs!1677793 m!7350548))

(assert (=> b!6566938 d!2060843))

(declare-fun d!2060845 () Bool)

(assert (=> d!2060845 (= (nullable!6436 (h!71953 (exprs!6327 (h!71954 zl!343)))) (nullableFct!2362 (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun bs!1677794 () Bool)

(assert (= bs!1677794 d!2060845))

(declare-fun m!7350550 () Bool)

(assert (=> bs!1677794 m!7350550))

(assert (=> b!6566939 d!2060845))

(declare-fun b!6568230 () Bool)

(declare-fun e!3975803 () (InoxSet Context!11654))

(declare-fun e!3975804 () (InoxSet Context!11654))

(assert (=> b!6568230 (= e!3975803 e!3975804)))

(declare-fun c!1207313 () Bool)

(assert (=> b!6568230 (= c!1207313 ((_ is Cons!65505) (exprs!6327 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343))))))))))

(declare-fun bm!571425 () Bool)

(declare-fun call!571430 () (InoxSet Context!11654))

(assert (=> bm!571425 (= call!571430 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343))))))) (Context!11655 (t!379273 (exprs!6327 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343)))))))) (h!71952 s!2326)))))

(declare-fun b!6568231 () Bool)

(assert (=> b!6568231 (= e!3975804 call!571430)))

(declare-fun b!6568232 () Bool)

(assert (=> b!6568232 (= e!3975804 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6568234 () Bool)

(declare-fun e!3975802 () Bool)

(assert (=> b!6568234 (= e!3975802 (nullable!6436 (h!71953 (exprs!6327 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343)))))))))))

(declare-fun d!2060847 () Bool)

(declare-fun c!1207312 () Bool)

(assert (=> d!2060847 (= c!1207312 e!3975802)))

(declare-fun res!2695540 () Bool)

(assert (=> d!2060847 (=> (not res!2695540) (not e!3975802))))

(assert (=> d!2060847 (= res!2695540 ((_ is Cons!65505) (exprs!6327 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343))))))))))

(assert (=> d!2060847 (= (derivationStepZipperUp!1617 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343))))) (h!71952 s!2326)) e!3975803)))

(declare-fun b!6568233 () Bool)

(assert (=> b!6568233 (= e!3975803 ((_ map or) call!571430 (derivationStepZipperUp!1617 (Context!11655 (t!379273 (exprs!6327 (Context!11655 (Cons!65505 (h!71953 (exprs!6327 (h!71954 zl!343))) (t!379273 (exprs!6327 (h!71954 zl!343)))))))) (h!71952 s!2326))))))

(assert (= (and d!2060847 res!2695540) b!6568234))

(assert (= (and d!2060847 c!1207312) b!6568233))

(assert (= (and d!2060847 (not c!1207312)) b!6568230))

(assert (= (and b!6568230 c!1207313) b!6568231))

(assert (= (and b!6568230 (not c!1207313)) b!6568232))

(assert (= (or b!6568233 b!6568231) bm!571425))

(declare-fun m!7350552 () Bool)

(assert (=> bm!571425 m!7350552))

(declare-fun m!7350554 () Bool)

(assert (=> b!6568234 m!7350554))

(declare-fun m!7350556 () Bool)

(assert (=> b!6568233 m!7350556))

(assert (=> b!6566939 d!2060847))

(declare-fun b!6568235 () Bool)

(declare-fun e!3975806 () (InoxSet Context!11654))

(declare-fun e!3975807 () (InoxSet Context!11654))

(assert (=> b!6568235 (= e!3975806 e!3975807)))

(declare-fun c!1207315 () Bool)

(assert (=> b!6568235 (= c!1207315 ((_ is Cons!65505) (exprs!6327 lt!2407830)))))

(declare-fun bm!571426 () Bool)

(declare-fun call!571431 () (InoxSet Context!11654))

(assert (=> bm!571426 (= call!571431 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 lt!2407830)) (Context!11655 (t!379273 (exprs!6327 lt!2407830))) (h!71952 s!2326)))))

(declare-fun b!6568236 () Bool)

(assert (=> b!6568236 (= e!3975807 call!571431)))

(declare-fun b!6568237 () Bool)

(assert (=> b!6568237 (= e!3975807 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6568239 () Bool)

(declare-fun e!3975805 () Bool)

(assert (=> b!6568239 (= e!3975805 (nullable!6436 (h!71953 (exprs!6327 lt!2407830))))))

(declare-fun d!2060849 () Bool)

(declare-fun c!1207314 () Bool)

(assert (=> d!2060849 (= c!1207314 e!3975805)))

(declare-fun res!2695541 () Bool)

(assert (=> d!2060849 (=> (not res!2695541) (not e!3975805))))

(assert (=> d!2060849 (= res!2695541 ((_ is Cons!65505) (exprs!6327 lt!2407830)))))

(assert (=> d!2060849 (= (derivationStepZipperUp!1617 lt!2407830 (h!71952 s!2326)) e!3975806)))

(declare-fun b!6568238 () Bool)

(assert (=> b!6568238 (= e!3975806 ((_ map or) call!571431 (derivationStepZipperUp!1617 (Context!11655 (t!379273 (exprs!6327 lt!2407830))) (h!71952 s!2326))))))

(assert (= (and d!2060849 res!2695541) b!6568239))

(assert (= (and d!2060849 c!1207314) b!6568238))

(assert (= (and d!2060849 (not c!1207314)) b!6568235))

(assert (= (and b!6568235 c!1207315) b!6568236))

(assert (= (and b!6568235 (not c!1207315)) b!6568237))

(assert (= (or b!6568238 b!6568236) bm!571426))

(declare-fun m!7350558 () Bool)

(assert (=> bm!571426 m!7350558))

(declare-fun m!7350560 () Bool)

(assert (=> b!6568239 m!7350560))

(declare-fun m!7350562 () Bool)

(assert (=> b!6568238 m!7350562))

(assert (=> b!6566939 d!2060849))

(declare-fun b!6568240 () Bool)

(declare-fun e!3975809 () (InoxSet Context!11654))

(declare-fun e!3975810 () (InoxSet Context!11654))

(assert (=> b!6568240 (= e!3975809 e!3975810)))

(declare-fun c!1207317 () Bool)

(assert (=> b!6568240 (= c!1207317 ((_ is Cons!65505) (exprs!6327 (h!71954 zl!343))))))

(declare-fun bm!571427 () Bool)

(declare-fun call!571432 () (InoxSet Context!11654))

(assert (=> bm!571427 (= call!571432 (derivationStepZipperDown!1691 (h!71953 (exprs!6327 (h!71954 zl!343))) (Context!11655 (t!379273 (exprs!6327 (h!71954 zl!343)))) (h!71952 s!2326)))))

(declare-fun b!6568241 () Bool)

(assert (=> b!6568241 (= e!3975810 call!571432)))

(declare-fun b!6568242 () Bool)

(assert (=> b!6568242 (= e!3975810 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6568244 () Bool)

(declare-fun e!3975808 () Bool)

(assert (=> b!6568244 (= e!3975808 (nullable!6436 (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun d!2060851 () Bool)

(declare-fun c!1207316 () Bool)

(assert (=> d!2060851 (= c!1207316 e!3975808)))

(declare-fun res!2695542 () Bool)

(assert (=> d!2060851 (=> (not res!2695542) (not e!3975808))))

(assert (=> d!2060851 (= res!2695542 ((_ is Cons!65505) (exprs!6327 (h!71954 zl!343))))))

(assert (=> d!2060851 (= (derivationStepZipperUp!1617 (h!71954 zl!343) (h!71952 s!2326)) e!3975809)))

(declare-fun b!6568243 () Bool)

(assert (=> b!6568243 (= e!3975809 ((_ map or) call!571432 (derivationStepZipperUp!1617 (Context!11655 (t!379273 (exprs!6327 (h!71954 zl!343)))) (h!71952 s!2326))))))

(assert (= (and d!2060851 res!2695542) b!6568244))

(assert (= (and d!2060851 c!1207316) b!6568243))

(assert (= (and d!2060851 (not c!1207316)) b!6568240))

(assert (= (and b!6568240 c!1207317) b!6568241))

(assert (= (and b!6568240 (not c!1207317)) b!6568242))

(assert (= (or b!6568243 b!6568241) bm!571427))

(declare-fun m!7350564 () Bool)

(assert (=> bm!571427 m!7350564))

(assert (=> b!6568244 m!7349234))

(declare-fun m!7350566 () Bool)

(assert (=> b!6568243 m!7350566))

(assert (=> b!6566939 d!2060851))

(declare-fun d!2060853 () Bool)

(assert (=> d!2060853 (= (flatMap!1948 z!1189 lambda!365580) (dynLambda!26059 lambda!365580 (h!71954 zl!343)))))

(declare-fun lt!2408083 () Unit!159107)

(assert (=> d!2060853 (= lt!2408083 (choose!49030 z!1189 (h!71954 zl!343) lambda!365580))))

(assert (=> d!2060853 (= z!1189 (store ((as const (Array Context!11654 Bool)) false) (h!71954 zl!343) true))))

(assert (=> d!2060853 (= (lemmaFlatMapOnSingletonSet!1474 z!1189 (h!71954 zl!343) lambda!365580) lt!2408083)))

(declare-fun b_lambda!248405 () Bool)

(assert (=> (not b_lambda!248405) (not d!2060853)))

(declare-fun bs!1677795 () Bool)

(assert (= bs!1677795 d!2060853))

(assert (=> bs!1677795 m!7349238))

(declare-fun m!7350568 () Bool)

(assert (=> bs!1677795 m!7350568))

(declare-fun m!7350570 () Bool)

(assert (=> bs!1677795 m!7350570))

(declare-fun m!7350572 () Bool)

(assert (=> bs!1677795 m!7350572))

(assert (=> b!6566939 d!2060853))

(declare-fun d!2060855 () Bool)

(assert (=> d!2060855 (= (flatMap!1948 z!1189 lambda!365580) (choose!49029 z!1189 lambda!365580))))

(declare-fun bs!1677796 () Bool)

(assert (= bs!1677796 d!2060855))

(declare-fun m!7350574 () Bool)

(assert (=> bs!1677796 m!7350574))

(assert (=> b!6566939 d!2060855))

(declare-fun call!571447 () (InoxSet Context!11654))

(declare-fun call!571446 () List!65629)

(declare-fun bm!571440 () Bool)

(declare-fun c!1207332 () Bool)

(assert (=> bm!571440 (= call!571447 (derivationStepZipperDown!1691 (ite c!1207332 (regTwo!33399 (h!71953 (exprs!6327 (h!71954 zl!343)))) (regOne!33398 (h!71953 (exprs!6327 (h!71954 zl!343))))) (ite c!1207332 lt!2407830 (Context!11655 call!571446)) (h!71952 s!2326)))))

(declare-fun bm!571441 () Bool)

(declare-fun call!571448 () (InoxSet Context!11654))

(declare-fun call!571449 () List!65629)

(declare-fun c!1207328 () Bool)

(declare-fun c!1207330 () Bool)

(assert (=> bm!571441 (= call!571448 (derivationStepZipperDown!1691 (ite c!1207332 (regOne!33399 (h!71953 (exprs!6327 (h!71954 zl!343)))) (ite c!1207330 (regTwo!33398 (h!71953 (exprs!6327 (h!71954 zl!343)))) (ite c!1207328 (regOne!33398 (h!71953 (exprs!6327 (h!71954 zl!343)))) (reg!16772 (h!71953 (exprs!6327 (h!71954 zl!343))))))) (ite (or c!1207332 c!1207330) lt!2407830 (Context!11655 call!571449)) (h!71952 s!2326)))))

(declare-fun b!6568267 () Bool)

(declare-fun e!3975828 () (InoxSet Context!11654))

(assert (=> b!6568267 (= e!3975828 (store ((as const (Array Context!11654 Bool)) false) lt!2407830 true))))

(declare-fun b!6568268 () Bool)

(declare-fun e!3975825 () (InoxSet Context!11654))

(declare-fun e!3975826 () (InoxSet Context!11654))

(assert (=> b!6568268 (= e!3975825 e!3975826)))

(assert (=> b!6568268 (= c!1207328 ((_ is Concat!25288) (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun bm!571442 () Bool)

(assert (=> bm!571442 (= call!571449 call!571446)))

(declare-fun b!6568270 () Bool)

(declare-fun e!3975824 () (InoxSet Context!11654))

(assert (=> b!6568270 (= e!3975824 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6568271 () Bool)

(declare-fun c!1207329 () Bool)

(assert (=> b!6568271 (= c!1207329 ((_ is Star!16443) (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(assert (=> b!6568271 (= e!3975826 e!3975824)))

(declare-fun b!6568272 () Bool)

(declare-fun e!3975827 () Bool)

(assert (=> b!6568272 (= c!1207330 e!3975827)))

(declare-fun res!2695545 () Bool)

(assert (=> b!6568272 (=> (not res!2695545) (not e!3975827))))

(assert (=> b!6568272 (= res!2695545 ((_ is Concat!25288) (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(declare-fun e!3975823 () (InoxSet Context!11654))

(assert (=> b!6568272 (= e!3975823 e!3975825)))

(declare-fun b!6568273 () Bool)

(declare-fun call!571445 () (InoxSet Context!11654))

(assert (=> b!6568273 (= e!3975826 call!571445)))

(declare-fun bm!571443 () Bool)

(declare-fun call!571450 () (InoxSet Context!11654))

(assert (=> bm!571443 (= call!571445 call!571450)))

(declare-fun bm!571444 () Bool)

(declare-fun $colon$colon!2284 (List!65629 Regex!16443) List!65629)

(assert (=> bm!571444 (= call!571446 ($colon$colon!2284 (exprs!6327 lt!2407830) (ite (or c!1207330 c!1207328) (regTwo!33398 (h!71953 (exprs!6327 (h!71954 zl!343)))) (h!71953 (exprs!6327 (h!71954 zl!343))))))))

(declare-fun b!6568274 () Bool)

(assert (=> b!6568274 (= e!3975823 ((_ map or) call!571448 call!571447))))

(declare-fun b!6568275 () Bool)

(assert (=> b!6568275 (= e!3975825 ((_ map or) call!571447 call!571450))))

(declare-fun bm!571445 () Bool)

(assert (=> bm!571445 (= call!571450 call!571448)))

(declare-fun b!6568276 () Bool)

(assert (=> b!6568276 (= e!3975824 call!571445)))

(declare-fun b!6568277 () Bool)

(assert (=> b!6568277 (= e!3975827 (nullable!6436 (regOne!33398 (h!71953 (exprs!6327 (h!71954 zl!343))))))))

(declare-fun d!2060857 () Bool)

(declare-fun c!1207331 () Bool)

(assert (=> d!2060857 (= c!1207331 (and ((_ is ElementMatch!16443) (h!71953 (exprs!6327 (h!71954 zl!343)))) (= (c!1206990 (h!71953 (exprs!6327 (h!71954 zl!343)))) (h!71952 s!2326))))))

(assert (=> d!2060857 (= (derivationStepZipperDown!1691 (h!71953 (exprs!6327 (h!71954 zl!343))) lt!2407830 (h!71952 s!2326)) e!3975828)))

(declare-fun b!6568269 () Bool)

(assert (=> b!6568269 (= e!3975828 e!3975823)))

(assert (=> b!6568269 (= c!1207332 ((_ is Union!16443) (h!71953 (exprs!6327 (h!71954 zl!343)))))))

(assert (= (and d!2060857 c!1207331) b!6568267))

(assert (= (and d!2060857 (not c!1207331)) b!6568269))

(assert (= (and b!6568269 c!1207332) b!6568274))

(assert (= (and b!6568269 (not c!1207332)) b!6568272))

(assert (= (and b!6568272 res!2695545) b!6568277))

(assert (= (and b!6568272 c!1207330) b!6568275))

(assert (= (and b!6568272 (not c!1207330)) b!6568268))

(assert (= (and b!6568268 c!1207328) b!6568273))

(assert (= (and b!6568268 (not c!1207328)) b!6568271))

(assert (= (and b!6568271 c!1207329) b!6568276))

(assert (= (and b!6568271 (not c!1207329)) b!6568270))

(assert (= (or b!6568273 b!6568276) bm!571442))

(assert (= (or b!6568273 b!6568276) bm!571443))

(assert (= (or b!6568275 bm!571442) bm!571444))

(assert (= (or b!6568275 bm!571443) bm!571445))

(assert (= (or b!6568274 b!6568275) bm!571440))

(assert (= (or b!6568274 bm!571445) bm!571441))

(declare-fun m!7350576 () Bool)

(assert (=> b!6568267 m!7350576))

(declare-fun m!7350578 () Bool)

(assert (=> bm!571444 m!7350578))

(declare-fun m!7350580 () Bool)

(assert (=> b!6568277 m!7350580))

(declare-fun m!7350582 () Bool)

(assert (=> bm!571441 m!7350582))

(declare-fun m!7350584 () Bool)

(assert (=> bm!571440 m!7350584))

(assert (=> b!6566939 d!2060857))

(declare-fun d!2060859 () Bool)

(declare-fun lt!2408084 () Regex!16443)

(assert (=> d!2060859 (validRegex!8179 lt!2408084)))

(assert (=> d!2060859 (= lt!2408084 (generalisedUnion!2287 (unfocusZipperList!1864 lt!2407813)))))

(assert (=> d!2060859 (= (unfocusZipper!2185 lt!2407813) lt!2408084)))

(declare-fun bs!1677797 () Bool)

(assert (= bs!1677797 d!2060859))

(declare-fun m!7350586 () Bool)

(assert (=> bs!1677797 m!7350586))

(declare-fun m!7350588 () Bool)

(assert (=> bs!1677797 m!7350588))

(assert (=> bs!1677797 m!7350588))

(declare-fun m!7350590 () Bool)

(assert (=> bs!1677797 m!7350590))

(assert (=> b!6566958 d!2060859))

(declare-fun b!6568278 () Bool)

(declare-fun e!3975832 () Bool)

(declare-fun e!3975835 () Bool)

(assert (=> b!6568278 (= e!3975832 e!3975835)))

(declare-fun res!2695548 () Bool)

(assert (=> b!6568278 (=> (not res!2695548) (not e!3975835))))

(declare-fun call!571452 () Bool)

(assert (=> b!6568278 (= res!2695548 call!571452)))

(declare-fun b!6568279 () Bool)

(declare-fun res!2695549 () Bool)

(declare-fun e!3975831 () Bool)

(assert (=> b!6568279 (=> (not res!2695549) (not e!3975831))))

(assert (=> b!6568279 (= res!2695549 call!571452)))

(declare-fun e!3975830 () Bool)

(assert (=> b!6568279 (= e!3975830 e!3975831)))

(declare-fun b!6568280 () Bool)

(declare-fun e!3975833 () Bool)

(declare-fun e!3975834 () Bool)

(assert (=> b!6568280 (= e!3975833 e!3975834)))

(declare-fun c!1207334 () Bool)

(assert (=> b!6568280 (= c!1207334 ((_ is Star!16443) r!7292))))

(declare-fun b!6568281 () Bool)

(declare-fun res!2695550 () Bool)

(assert (=> b!6568281 (=> res!2695550 e!3975832)))

(assert (=> b!6568281 (= res!2695550 (not ((_ is Concat!25288) r!7292)))))

(assert (=> b!6568281 (= e!3975830 e!3975832)))

(declare-fun b!6568282 () Bool)

(declare-fun e!3975829 () Bool)

(declare-fun call!571451 () Bool)

(assert (=> b!6568282 (= e!3975829 call!571451)))

(declare-fun b!6568283 () Bool)

(assert (=> b!6568283 (= e!3975834 e!3975830)))

(declare-fun c!1207333 () Bool)

(assert (=> b!6568283 (= c!1207333 ((_ is Union!16443) r!7292))))

(declare-fun d!2060861 () Bool)

(declare-fun res!2695547 () Bool)

(assert (=> d!2060861 (=> res!2695547 e!3975833)))

(assert (=> d!2060861 (= res!2695547 ((_ is ElementMatch!16443) r!7292))))

(assert (=> d!2060861 (= (validRegex!8179 r!7292) e!3975833)))

(declare-fun b!6568284 () Bool)

(declare-fun call!571453 () Bool)

(assert (=> b!6568284 (= e!3975835 call!571453)))

(declare-fun bm!571446 () Bool)

(assert (=> bm!571446 (= call!571451 (validRegex!8179 (ite c!1207334 (reg!16772 r!7292) (ite c!1207333 (regTwo!33399 r!7292) (regTwo!33398 r!7292)))))))

(declare-fun bm!571447 () Bool)

(assert (=> bm!571447 (= call!571452 (validRegex!8179 (ite c!1207333 (regOne!33399 r!7292) (regOne!33398 r!7292))))))

(declare-fun b!6568285 () Bool)

(assert (=> b!6568285 (= e!3975831 call!571453)))

(declare-fun b!6568286 () Bool)

(assert (=> b!6568286 (= e!3975834 e!3975829)))

(declare-fun res!2695546 () Bool)

(assert (=> b!6568286 (= res!2695546 (not (nullable!6436 (reg!16772 r!7292))))))

(assert (=> b!6568286 (=> (not res!2695546) (not e!3975829))))

(declare-fun bm!571448 () Bool)

(assert (=> bm!571448 (= call!571453 call!571451)))

(assert (= (and d!2060861 (not res!2695547)) b!6568280))

(assert (= (and b!6568280 c!1207334) b!6568286))

(assert (= (and b!6568280 (not c!1207334)) b!6568283))

(assert (= (and b!6568286 res!2695546) b!6568282))

(assert (= (and b!6568283 c!1207333) b!6568279))

(assert (= (and b!6568283 (not c!1207333)) b!6568281))

(assert (= (and b!6568279 res!2695549) b!6568285))

(assert (= (and b!6568281 (not res!2695550)) b!6568278))

(assert (= (and b!6568278 res!2695548) b!6568284))

(assert (= (or b!6568285 b!6568284) bm!571448))

(assert (= (or b!6568279 b!6568278) bm!571447))

(assert (= (or b!6568282 bm!571448) bm!571446))

(declare-fun m!7350592 () Bool)

(assert (=> bm!571446 m!7350592))

(declare-fun m!7350594 () Bool)

(assert (=> bm!571447 m!7350594))

(declare-fun m!7350596 () Bool)

(assert (=> b!6568286 m!7350596))

(assert (=> start!643458 d!2060861))

(assert (=> b!6566976 d!2060831))

(declare-fun d!2060863 () Bool)

(declare-fun c!1207335 () Bool)

(assert (=> d!2060863 (= c!1207335 (isEmpty!37753 (t!379272 s!2326)))))

(declare-fun e!3975836 () Bool)

(assert (=> d!2060863 (= (matchZipper!2455 lt!2407812 (t!379272 s!2326)) e!3975836)))

(declare-fun b!6568287 () Bool)

(assert (=> b!6568287 (= e!3975836 (nullableZipper!2188 lt!2407812))))

(declare-fun b!6568288 () Bool)

(assert (=> b!6568288 (= e!3975836 (matchZipper!2455 (derivationStepZipper!2409 lt!2407812 (head!13337 (t!379272 s!2326))) (tail!12422 (t!379272 s!2326))))))

(assert (= (and d!2060863 c!1207335) b!6568287))

(assert (= (and d!2060863 (not c!1207335)) b!6568288))

(assert (=> d!2060863 m!7350486))

(declare-fun m!7350598 () Bool)

(assert (=> b!6568287 m!7350598))

(assert (=> b!6568288 m!7350490))

(assert (=> b!6568288 m!7350490))

(declare-fun m!7350600 () Bool)

(assert (=> b!6568288 m!7350600))

(assert (=> b!6568288 m!7350494))

(assert (=> b!6568288 m!7350600))

(assert (=> b!6568288 m!7350494))

(declare-fun m!7350602 () Bool)

(assert (=> b!6568288 m!7350602))

(assert (=> b!6566952 d!2060863))

(declare-fun d!2060865 () Bool)

(declare-fun c!1207336 () Bool)

(assert (=> d!2060865 (= c!1207336 (isEmpty!37753 s!2326))))

(declare-fun e!3975837 () Bool)

(assert (=> d!2060865 (= (matchZipper!2455 lt!2407803 s!2326) e!3975837)))

(declare-fun b!6568289 () Bool)

(assert (=> b!6568289 (= e!3975837 (nullableZipper!2188 lt!2407803))))

(declare-fun b!6568290 () Bool)

(assert (=> b!6568290 (= e!3975837 (matchZipper!2455 (derivationStepZipper!2409 lt!2407803 (head!13337 s!2326)) (tail!12422 s!2326)))))

(assert (= (and d!2060865 c!1207336) b!6568289))

(assert (= (and d!2060865 (not c!1207336)) b!6568290))

(assert (=> d!2060865 m!7349854))

(declare-fun m!7350604 () Bool)

(assert (=> b!6568289 m!7350604))

(assert (=> b!6568290 m!7349888))

(assert (=> b!6568290 m!7349888))

(declare-fun m!7350606 () Bool)

(assert (=> b!6568290 m!7350606))

(assert (=> b!6568290 m!7349892))

(assert (=> b!6568290 m!7350606))

(assert (=> b!6568290 m!7349892))

(declare-fun m!7350608 () Bool)

(assert (=> b!6568290 m!7350608))

(assert (=> b!6566952 d!2060865))

(declare-fun d!2060867 () Bool)

(declare-fun c!1207337 () Bool)

(assert (=> d!2060867 (= c!1207337 (isEmpty!37753 (_1!36725 lt!2407814)))))

(declare-fun e!3975838 () Bool)

(assert (=> d!2060867 (= (matchZipper!2455 lt!2407823 (_1!36725 lt!2407814)) e!3975838)))

(declare-fun b!6568291 () Bool)

(assert (=> b!6568291 (= e!3975838 (nullableZipper!2188 lt!2407823))))

(declare-fun b!6568292 () Bool)

(assert (=> b!6568292 (= e!3975838 (matchZipper!2455 (derivationStepZipper!2409 lt!2407823 (head!13337 (_1!36725 lt!2407814))) (tail!12422 (_1!36725 lt!2407814))))))

(assert (= (and d!2060867 c!1207337) b!6568291))

(assert (= (and d!2060867 (not c!1207337)) b!6568292))

(assert (=> d!2060867 m!7350168))

(declare-fun m!7350610 () Bool)

(assert (=> b!6568291 m!7350610))

(assert (=> b!6568292 m!7350160))

(assert (=> b!6568292 m!7350160))

(declare-fun m!7350612 () Bool)

(assert (=> b!6568292 m!7350612))

(assert (=> b!6568292 m!7350164))

(assert (=> b!6568292 m!7350612))

(assert (=> b!6568292 m!7350164))

(declare-fun m!7350614 () Bool)

(assert (=> b!6568292 m!7350614))

(assert (=> b!6566972 d!2060867))

(declare-fun d!2060869 () Bool)

(declare-fun e!3975841 () Bool)

(assert (=> d!2060869 e!3975841))

(declare-fun res!2695553 () Bool)

(assert (=> d!2060869 (=> (not res!2695553) (not e!3975841))))

(declare-fun lt!2408087 () List!65630)

(declare-fun noDuplicate!2248 (List!65630) Bool)

(assert (=> d!2060869 (= res!2695553 (noDuplicate!2248 lt!2408087))))

(declare-fun choose!49058 ((InoxSet Context!11654)) List!65630)

(assert (=> d!2060869 (= lt!2408087 (choose!49058 z!1189))))

(assert (=> d!2060869 (= (toList!10227 z!1189) lt!2408087)))

(declare-fun b!6568295 () Bool)

(declare-fun content!12612 (List!65630) (InoxSet Context!11654))

(assert (=> b!6568295 (= e!3975841 (= (content!12612 lt!2408087) z!1189))))

(assert (= (and d!2060869 res!2695553) b!6568295))

(declare-fun m!7350616 () Bool)

(assert (=> d!2060869 m!7350616))

(declare-fun m!7350618 () Bool)

(assert (=> d!2060869 m!7350618))

(declare-fun m!7350620 () Bool)

(assert (=> b!6568295 m!7350620))

(assert (=> b!6566973 d!2060869))

(declare-fun bs!1677798 () Bool)

(declare-fun d!2060871 () Bool)

(assert (= bs!1677798 (and d!2060871 d!2060695)))

(declare-fun lambda!365701 () Int)

(assert (=> bs!1677798 (= lambda!365701 lambda!365657)))

(declare-fun bs!1677799 () Bool)

(assert (= bs!1677799 (and d!2060871 d!2060811)))

(assert (=> bs!1677799 (= lambda!365701 lambda!365689)))

(declare-fun bs!1677800 () Bool)

(assert (= bs!1677800 (and d!2060871 b!6566961)))

(assert (=> bs!1677800 (= lambda!365701 lambda!365582)))

(declare-fun bs!1677801 () Bool)

(assert (= bs!1677801 (and d!2060871 d!2060809)))

(assert (=> bs!1677801 (= lambda!365701 lambda!365686)))

(declare-fun bs!1677802 () Bool)

(assert (= bs!1677802 (and d!2060871 d!2060743)))

(assert (=> bs!1677802 (= lambda!365701 lambda!365667)))

(declare-fun bs!1677803 () Bool)

(assert (= bs!1677803 (and d!2060871 d!2060813)))

(assert (=> bs!1677803 (= lambda!365701 lambda!365692)))

(assert (=> d!2060871 (= (inv!84354 setElem!44834) (forall!15615 (exprs!6327 setElem!44834) lambda!365701))))

(declare-fun bs!1677804 () Bool)

(assert (= bs!1677804 d!2060871))

(declare-fun m!7350622 () Bool)

(assert (=> bs!1677804 m!7350622))

(assert (=> setNonEmpty!44834 d!2060871))

(declare-fun bm!571449 () Bool)

(declare-fun call!571456 () (InoxSet Context!11654))

(declare-fun call!571455 () List!65629)

(declare-fun c!1207342 () Bool)

(assert (=> bm!571449 (= call!571456 (derivationStepZipperDown!1691 (ite c!1207342 (regTwo!33399 (reg!16772 (regOne!33398 r!7292))) (regOne!33398 (reg!16772 (regOne!33398 r!7292)))) (ite c!1207342 lt!2407776 (Context!11655 call!571455)) (h!71952 s!2326)))))

(declare-fun bm!571450 () Bool)

(declare-fun call!571457 () (InoxSet Context!11654))

(declare-fun c!1207338 () Bool)

(declare-fun c!1207340 () Bool)

(declare-fun call!571458 () List!65629)

(assert (=> bm!571450 (= call!571457 (derivationStepZipperDown!1691 (ite c!1207342 (regOne!33399 (reg!16772 (regOne!33398 r!7292))) (ite c!1207340 (regTwo!33398 (reg!16772 (regOne!33398 r!7292))) (ite c!1207338 (regOne!33398 (reg!16772 (regOne!33398 r!7292))) (reg!16772 (reg!16772 (regOne!33398 r!7292)))))) (ite (or c!1207342 c!1207340) lt!2407776 (Context!11655 call!571458)) (h!71952 s!2326)))))

(declare-fun b!6568296 () Bool)

(declare-fun e!3975847 () (InoxSet Context!11654))

(assert (=> b!6568296 (= e!3975847 (store ((as const (Array Context!11654 Bool)) false) lt!2407776 true))))

(declare-fun b!6568297 () Bool)

(declare-fun e!3975844 () (InoxSet Context!11654))

(declare-fun e!3975845 () (InoxSet Context!11654))

(assert (=> b!6568297 (= e!3975844 e!3975845)))

(assert (=> b!6568297 (= c!1207338 ((_ is Concat!25288) (reg!16772 (regOne!33398 r!7292))))))

(declare-fun bm!571451 () Bool)

(assert (=> bm!571451 (= call!571458 call!571455)))

(declare-fun b!6568299 () Bool)

(declare-fun e!3975843 () (InoxSet Context!11654))

(assert (=> b!6568299 (= e!3975843 ((as const (Array Context!11654 Bool)) false))))

(declare-fun b!6568300 () Bool)

(declare-fun c!1207339 () Bool)

(assert (=> b!6568300 (= c!1207339 ((_ is Star!16443) (reg!16772 (regOne!33398 r!7292))))))

(assert (=> b!6568300 (= e!3975845 e!3975843)))

(declare-fun b!6568301 () Bool)

(declare-fun e!3975846 () Bool)

(assert (=> b!6568301 (= c!1207340 e!3975846)))

(declare-fun res!2695554 () Bool)

(assert (=> b!6568301 (=> (not res!2695554) (not e!3975846))))

(assert (=> b!6568301 (= res!2695554 ((_ is Concat!25288) (reg!16772 (regOne!33398 r!7292))))))

(declare-fun e!3975842 () (InoxSet Context!11654))

(assert (=> b!6568301 (= e!3975842 e!3975844)))

(declare-fun b!6568302 () Bool)

(declare-fun call!571454 () (InoxSet Context!11654))

(assert (=> b!6568302 (= e!3975845 call!571454)))

(declare-fun bm!571452 () Bool)

(declare-fun call!571459 () (InoxSet Context!11654))

(assert (=> bm!571452 (= call!571454 call!571459)))

(declare-fun bm!571453 () Bool)

(assert (=> bm!571453 (= call!571455 ($colon$colon!2284 (exprs!6327 lt!2407776) (ite (or c!1207340 c!1207338) (regTwo!33398 (reg!16772 (regOne!33398 r!7292))) (reg!16772 (regOne!33398 r!7292)))))))

(declare-fun b!6568303 () Bool)

(assert (=> b!6568303 (= e!3975842 ((_ map or) call!571457 call!571456))))

(declare-fun b!6568304 () Bool)

(assert (=> b!6568304 (= e!3975844 ((_ map or) call!571456 call!571459))))

(declare-fun bm!571454 () Bool)

(assert (=> bm!571454 (= call!571459 call!571457)))

(declare-fun b!6568305 () Bool)

(assert (=> b!6568305 (= e!3975843 call!571454)))

(declare-fun b!6568306 () Bool)

(assert (=> b!6568306 (= e!3975846 (nullable!6436 (regOne!33398 (reg!16772 (regOne!33398 r!7292)))))))

(declare-fun d!2060873 () Bool)

(declare-fun c!1207341 () Bool)

(assert (=> d!2060873 (= c!1207341 (and ((_ is ElementMatch!16443) (reg!16772 (regOne!33398 r!7292))) (= (c!1206990 (reg!16772 (regOne!33398 r!7292))) (h!71952 s!2326))))))

(assert (=> d!2060873 (= (derivationStepZipperDown!1691 (reg!16772 (regOne!33398 r!7292)) lt!2407776 (h!71952 s!2326)) e!3975847)))

(declare-fun b!6568298 () Bool)

(assert (=> b!6568298 (= e!3975847 e!3975842)))

(assert (=> b!6568298 (= c!1207342 ((_ is Union!16443) (reg!16772 (regOne!33398 r!7292))))))

(assert (= (and d!2060873 c!1207341) b!6568296))

(assert (= (and d!2060873 (not c!1207341)) b!6568298))

(assert (= (and b!6568298 c!1207342) b!6568303))

(assert (= (and b!6568298 (not c!1207342)) b!6568301))

(assert (= (and b!6568301 res!2695554) b!6568306))

(assert (= (and b!6568301 c!1207340) b!6568304))

(assert (= (and b!6568301 (not c!1207340)) b!6568297))

(assert (= (and b!6568297 c!1207338) b!6568302))

(assert (= (and b!6568297 (not c!1207338)) b!6568300))

(assert (= (and b!6568300 c!1207339) b!6568305))

(assert (= (and b!6568300 (not c!1207339)) b!6568299))

(assert (= (or b!6568302 b!6568305) bm!571451))

(assert (= (or b!6568302 b!6568305) bm!571452))

(assert (= (or b!6568304 bm!571451) bm!571453))

(assert (= (or b!6568304 bm!571452) bm!571454))

(assert (= (or b!6568303 b!6568304) bm!571449))

(assert (= (or b!6568303 bm!571454) bm!571450))

(assert (=> b!6568296 m!7349192))

(declare-fun m!7350624 () Bool)

(assert (=> bm!571453 m!7350624))

(declare-fun m!7350626 () Bool)

(assert (=> b!6568306 m!7350626))

(declare-fun m!7350628 () Bool)

(assert (=> bm!571450 m!7350628))

(declare-fun m!7350630 () Bool)

(assert (=> bm!571449 m!7350630))

(assert (=> b!6566974 d!2060873))

(declare-fun b!6568311 () Bool)

(declare-fun e!3975850 () Bool)

(declare-fun tp!1813404 () Bool)

(assert (=> b!6568311 (= e!3975850 (and tp_is_empty!42139 tp!1813404))))

(assert (=> b!6566975 (= tp!1813340 e!3975850)))

(assert (= (and b!6566975 ((_ is Cons!65504) (t!379272 s!2326))) b!6568311))

(declare-fun b!6568319 () Bool)

(declare-fun e!3975856 () Bool)

(declare-fun tp!1813409 () Bool)

(assert (=> b!6568319 (= e!3975856 tp!1813409)))

(declare-fun tp!1813410 () Bool)

(declare-fun e!3975855 () Bool)

(declare-fun b!6568318 () Bool)

(assert (=> b!6568318 (= e!3975855 (and (inv!84354 (h!71954 (t!379274 zl!343))) e!3975856 tp!1813410))))

(assert (=> b!6566981 (= tp!1813342 e!3975855)))

(assert (= b!6568318 b!6568319))

(assert (= (and b!6566981 ((_ is Cons!65506) (t!379274 zl!343))) b!6568318))

(declare-fun m!7350632 () Bool)

(assert (=> b!6568318 m!7350632))

(declare-fun b!6568324 () Bool)

(declare-fun e!3975859 () Bool)

(declare-fun tp!1813415 () Bool)

(declare-fun tp!1813416 () Bool)

(assert (=> b!6568324 (= e!3975859 (and tp!1813415 tp!1813416))))

(assert (=> b!6566965 (= tp!1813338 e!3975859)))

(assert (= (and b!6566965 ((_ is Cons!65505) (exprs!6327 setElem!44834))) b!6568324))

(declare-fun b!6568336 () Bool)

(declare-fun e!3975862 () Bool)

(declare-fun tp!1813431 () Bool)

(declare-fun tp!1813430 () Bool)

(assert (=> b!6568336 (= e!3975862 (and tp!1813431 tp!1813430))))

(declare-fun b!6568337 () Bool)

(declare-fun tp!1813427 () Bool)

(assert (=> b!6568337 (= e!3975862 tp!1813427)))

(declare-fun b!6568338 () Bool)

(declare-fun tp!1813428 () Bool)

(declare-fun tp!1813429 () Bool)

(assert (=> b!6568338 (= e!3975862 (and tp!1813428 tp!1813429))))

(declare-fun b!6568335 () Bool)

(assert (=> b!6568335 (= e!3975862 tp_is_empty!42139)))

(assert (=> b!6566960 (= tp!1813341 e!3975862)))

(assert (= (and b!6566960 ((_ is ElementMatch!16443) (reg!16772 r!7292))) b!6568335))

(assert (= (and b!6566960 ((_ is Concat!25288) (reg!16772 r!7292))) b!6568336))

(assert (= (and b!6566960 ((_ is Star!16443) (reg!16772 r!7292))) b!6568337))

(assert (= (and b!6566960 ((_ is Union!16443) (reg!16772 r!7292))) b!6568338))

(declare-fun b!6568340 () Bool)

(declare-fun e!3975863 () Bool)

(declare-fun tp!1813436 () Bool)

(declare-fun tp!1813435 () Bool)

(assert (=> b!6568340 (= e!3975863 (and tp!1813436 tp!1813435))))

(declare-fun b!6568341 () Bool)

(declare-fun tp!1813432 () Bool)

(assert (=> b!6568341 (= e!3975863 tp!1813432)))

(declare-fun b!6568342 () Bool)

(declare-fun tp!1813433 () Bool)

(declare-fun tp!1813434 () Bool)

(assert (=> b!6568342 (= e!3975863 (and tp!1813433 tp!1813434))))

(declare-fun b!6568339 () Bool)

(assert (=> b!6568339 (= e!3975863 tp_is_empty!42139)))

(assert (=> b!6566945 (= tp!1813334 e!3975863)))

(assert (= (and b!6566945 ((_ is ElementMatch!16443) (regOne!33399 r!7292))) b!6568339))

(assert (= (and b!6566945 ((_ is Concat!25288) (regOne!33399 r!7292))) b!6568340))

(assert (= (and b!6566945 ((_ is Star!16443) (regOne!33399 r!7292))) b!6568341))

(assert (= (and b!6566945 ((_ is Union!16443) (regOne!33399 r!7292))) b!6568342))

(declare-fun b!6568344 () Bool)

(declare-fun e!3975864 () Bool)

(declare-fun tp!1813441 () Bool)

(declare-fun tp!1813440 () Bool)

(assert (=> b!6568344 (= e!3975864 (and tp!1813441 tp!1813440))))

(declare-fun b!6568345 () Bool)

(declare-fun tp!1813437 () Bool)

(assert (=> b!6568345 (= e!3975864 tp!1813437)))

(declare-fun b!6568346 () Bool)

(declare-fun tp!1813438 () Bool)

(declare-fun tp!1813439 () Bool)

(assert (=> b!6568346 (= e!3975864 (and tp!1813438 tp!1813439))))

(declare-fun b!6568343 () Bool)

(assert (=> b!6568343 (= e!3975864 tp_is_empty!42139)))

(assert (=> b!6566945 (= tp!1813339 e!3975864)))

(assert (= (and b!6566945 ((_ is ElementMatch!16443) (regTwo!33399 r!7292))) b!6568343))

(assert (= (and b!6566945 ((_ is Concat!25288) (regTwo!33399 r!7292))) b!6568344))

(assert (= (and b!6566945 ((_ is Star!16443) (regTwo!33399 r!7292))) b!6568345))

(assert (= (and b!6566945 ((_ is Union!16443) (regTwo!33399 r!7292))) b!6568346))

(declare-fun b!6568348 () Bool)

(declare-fun e!3975865 () Bool)

(declare-fun tp!1813446 () Bool)

(declare-fun tp!1813445 () Bool)

(assert (=> b!6568348 (= e!3975865 (and tp!1813446 tp!1813445))))

(declare-fun b!6568349 () Bool)

(declare-fun tp!1813442 () Bool)

(assert (=> b!6568349 (= e!3975865 tp!1813442)))

(declare-fun b!6568350 () Bool)

(declare-fun tp!1813443 () Bool)

(declare-fun tp!1813444 () Bool)

(assert (=> b!6568350 (= e!3975865 (and tp!1813443 tp!1813444))))

(declare-fun b!6568347 () Bool)

(assert (=> b!6568347 (= e!3975865 tp_is_empty!42139)))

(assert (=> b!6566941 (= tp!1813336 e!3975865)))

(assert (= (and b!6566941 ((_ is ElementMatch!16443) (regOne!33398 r!7292))) b!6568347))

(assert (= (and b!6566941 ((_ is Concat!25288) (regOne!33398 r!7292))) b!6568348))

(assert (= (and b!6566941 ((_ is Star!16443) (regOne!33398 r!7292))) b!6568349))

(assert (= (and b!6566941 ((_ is Union!16443) (regOne!33398 r!7292))) b!6568350))

(declare-fun b!6568352 () Bool)

(declare-fun e!3975866 () Bool)

(declare-fun tp!1813451 () Bool)

(declare-fun tp!1813450 () Bool)

(assert (=> b!6568352 (= e!3975866 (and tp!1813451 tp!1813450))))

(declare-fun b!6568353 () Bool)

(declare-fun tp!1813447 () Bool)

(assert (=> b!6568353 (= e!3975866 tp!1813447)))

(declare-fun b!6568354 () Bool)

(declare-fun tp!1813448 () Bool)

(declare-fun tp!1813449 () Bool)

(assert (=> b!6568354 (= e!3975866 (and tp!1813448 tp!1813449))))

(declare-fun b!6568351 () Bool)

(assert (=> b!6568351 (= e!3975866 tp_is_empty!42139)))

(assert (=> b!6566941 (= tp!1813343 e!3975866)))

(assert (= (and b!6566941 ((_ is ElementMatch!16443) (regTwo!33398 r!7292))) b!6568351))

(assert (= (and b!6566941 ((_ is Concat!25288) (regTwo!33398 r!7292))) b!6568352))

(assert (= (and b!6566941 ((_ is Star!16443) (regTwo!33398 r!7292))) b!6568353))

(assert (= (and b!6566941 ((_ is Union!16443) (regTwo!33398 r!7292))) b!6568354))

(declare-fun condSetEmpty!44840 () Bool)

(assert (=> setNonEmpty!44834 (= condSetEmpty!44840 (= setRest!44834 ((as const (Array Context!11654 Bool)) false)))))

(declare-fun setRes!44840 () Bool)

(assert (=> setNonEmpty!44834 (= tp!1813335 setRes!44840)))

(declare-fun setIsEmpty!44840 () Bool)

(assert (=> setIsEmpty!44840 setRes!44840))

(declare-fun setElem!44840 () Context!11654)

(declare-fun tp!1813456 () Bool)

(declare-fun setNonEmpty!44840 () Bool)

(declare-fun e!3975869 () Bool)

(assert (=> setNonEmpty!44840 (= setRes!44840 (and tp!1813456 (inv!84354 setElem!44840) e!3975869))))

(declare-fun setRest!44840 () (InoxSet Context!11654))

(assert (=> setNonEmpty!44840 (= setRest!44834 ((_ map or) (store ((as const (Array Context!11654 Bool)) false) setElem!44840 true) setRest!44840))))

(declare-fun b!6568359 () Bool)

(declare-fun tp!1813457 () Bool)

(assert (=> b!6568359 (= e!3975869 tp!1813457)))

(assert (= (and setNonEmpty!44834 condSetEmpty!44840) setIsEmpty!44840))

(assert (= (and setNonEmpty!44834 (not condSetEmpty!44840)) setNonEmpty!44840))

(assert (= setNonEmpty!44840 b!6568359))

(declare-fun m!7350634 () Bool)

(assert (=> setNonEmpty!44840 m!7350634))

(declare-fun b!6568360 () Bool)

(declare-fun e!3975870 () Bool)

(declare-fun tp!1813458 () Bool)

(declare-fun tp!1813459 () Bool)

(assert (=> b!6568360 (= e!3975870 (and tp!1813458 tp!1813459))))

(assert (=> b!6566943 (= tp!1813337 e!3975870)))

(assert (= (and b!6566943 ((_ is Cons!65505) (exprs!6327 (h!71954 zl!343)))) b!6568360))

(declare-fun b_lambda!248407 () Bool)

(assert (= b_lambda!248379 (or b!6566939 b_lambda!248407)))

(declare-fun bs!1677805 () Bool)

(declare-fun d!2060875 () Bool)

(assert (= bs!1677805 (and d!2060875 b!6566939)))

(assert (=> bs!1677805 (= (dynLambda!26059 lambda!365580 lt!2407776) (derivationStepZipperUp!1617 lt!2407776 (h!71952 s!2326)))))

(assert (=> bs!1677805 m!7349184))

(assert (=> d!2060529 d!2060875))

(declare-fun b_lambda!248409 () Bool)

(assert (= b_lambda!248403 (or b!6566961 b_lambda!248409)))

(declare-fun bs!1677806 () Bool)

(declare-fun d!2060877 () Bool)

(assert (= bs!1677806 (and d!2060877 b!6566961)))

(declare-fun lt!2408088 () Unit!159107)

(assert (=> bs!1677806 (= lt!2408088 (lemmaConcatPreservesForall!416 (exprs!6327 lt!2407801) lt!2407825 lambda!365582))))

(assert (=> bs!1677806 (= (dynLambda!26061 lambda!365581 lt!2407801) (Context!11655 (++!14589 (exprs!6327 lt!2407801) lt!2407825)))))

(declare-fun m!7350636 () Bool)

(assert (=> bs!1677806 m!7350636))

(declare-fun m!7350638 () Bool)

(assert (=> bs!1677806 m!7350638))

(assert (=> d!2060819 d!2060877))

(declare-fun b_lambda!248411 () Bool)

(assert (= b_lambda!248401 (or b!6566939 b_lambda!248411)))

(declare-fun bs!1677807 () Bool)

(declare-fun d!2060879 () Bool)

(assert (= bs!1677807 (and d!2060879 b!6566939)))

(assert (=> bs!1677807 (= (dynLambda!26059 lambda!365580 lt!2407816) (derivationStepZipperUp!1617 lt!2407816 (h!71952 s!2326)))))

(assert (=> bs!1677807 m!7349090))

(assert (=> d!2060799 d!2060879))

(declare-fun b_lambda!248413 () Bool)

(assert (= b_lambda!248381 (or b!6566939 b_lambda!248413)))

(declare-fun bs!1677808 () Bool)

(declare-fun d!2060881 () Bool)

(assert (= bs!1677808 (and d!2060881 b!6566939)))

(assert (=> bs!1677808 (= (dynLambda!26059 lambda!365580 lt!2407801) (derivationStepZipperUp!1617 lt!2407801 (h!71952 s!2326)))))

(assert (=> bs!1677808 m!7349178))

(assert (=> d!2060543 d!2060881))

(declare-fun b_lambda!248415 () Bool)

(assert (= b_lambda!248405 (or b!6566939 b_lambda!248415)))

(declare-fun bs!1677809 () Bool)

(declare-fun d!2060883 () Bool)

(assert (= bs!1677809 (and d!2060883 b!6566939)))

(assert (=> bs!1677809 (= (dynLambda!26059 lambda!365580 (h!71954 zl!343)) (derivationStepZipperUp!1617 (h!71954 zl!343) (h!71952 s!2326)))))

(assert (=> bs!1677809 m!7349228))

(assert (=> d!2060853 d!2060883))

(check-sat (not b!6567802) (not d!2060757) (not b!6567996) (not d!2060767) (not b!6567971) (not b!6567500) (not d!2060761) (not b!6568311) (not d!2060743) (not b!6568290) (not b!6567787) (not bs!1677806) (not b!6568115) (not b!6567967) (not d!2060807) (not d!2060639) (not d!2060771) (not b!6568035) (not b!6567841) (not b!6567377) (not d!2060795) (not bm!571406) (not bm!571400) (not b!6567999) (not b!6567797) (not d!2060679) (not b!6567857) (not b!6567689) (not bm!571424) (not b!6567612) (not b!6567862) (not b_lambda!248411) (not b!6567942) (not bm!571385) (not d!2060819) (not b!6567669) (not b!6568227) (not bm!571408) (not b!6568169) (not b!6568199) (not b!6568295) (not b!6568084) (not b!6567378) (not b!6568155) (not b!6567961) (not b!6568289) (not b_lambda!248413) (not b!6568167) (not b!6568159) (not d!2060775) (not bs!1677808) (not b!6568306) (not bm!571449) (not d!2060755) (not b!6567666) (not b!6567405) (not d!2060683) (not d!2060533) (not b!6568198) (not bm!571446) (not d!2060739) (not d!2060753) (not b!6568049) (not b!6567614) (not b!6568360) (not b!6567726) (not b!6568337) (not b!6568023) (not b!6567994) (not d!2060783) (not d!2060859) (not b!6568346) (not b!6568349) (not b!6568345) (not b!6567957) (not b!6567965) (not b!6568022) (not b!6568336) (not bm!571405) (not d!2060815) (not b!6568226) (not d!2060871) (not d!2060811) (not b!6568354) (not bm!571450) (not d!2060867) (not b!6568030) (not d!2060803) (not b!6567853) (not b!6567694) (not b!6568195) (not b!6568340) (not b!6568218) (not d!2060647) (not b_lambda!248415) (not b!6568344) (not b!6568088) (not d!2060635) (not b!6568319) (not bm!571391) (not b!6568239) (not bm!571407) (not bm!571427) (not b!6567502) (not b!6568342) (not b!6568032) (not b!6568216) (not b!6568003) (not bm!571394) (not d!2060821) (not b!6567504) (not b!6567788) (not b!6567953) (not d!2060671) (not bm!571415) (not d!2060515) (not d!2060825) (not d!2060781) (not b!6567966) (not b!6567671) (not b!6568078) (not d!2060869) (not d!2060681) (not b!6568073) (not d!2060723) (not b!6568163) (not b!6567341) (not b!6568217) (not b!6567340) (not b!6568352) (not d!2060735) (not b!6568028) (not b!6568129) (not b!6568082) (not b!6568029) (not bm!571399) (not b!6568069) (not b!6568061) (not b!6567670) (not bm!571403) (not b!6567940) (not d!2060549) (not bm!571386) (not b!6568350) (not b_lambda!248409) (not bm!571404) (not b!6568064) (not d!2060827) (not b!6567837) (not d!2060685) (not d!2060641) (not b!6568341) (not b!6568215) (not d!2060709) (not b!6568219) (not b!6568291) (not b!6567675) (not d!2060823) (not b!6567995) (not d!2060543) (not b!6568288) (not d!2060843) (not d!2060759) (not b!6568072) (not bm!571422) (not b!6567727) (not d!2060787) (not d!2060673) (not bm!571361) (not d!2060777) (not b!6567786) (not bm!571444) (not b!6567406) (not d!2060791) (not d!2060817) (not d!2060801) (not b!6567998) (not b!6568142) (not b!6568222) (not b!6568287) (not b!6568324) (not d!2060831) (not bm!571447) (not bs!1677805) (not b!6568238) (not d!2060643) (not d!2060751) (not bm!571423) (not d!2060507) (not b!6568036) (not b!6568243) (not d!2060785) (not b!6567693) (not b!6567838) (not b!6568149) (not b!6567665) (not b!6567498) (not d!2060747) (not b!6568173) (not b!6567291) (not b!6568318) (not d!2060799) (not bs!1677809) (not b!6568150) (not bm!571416) (not b!6568224) (not bm!571402) (not b!6567842) (not b!6567699) (not d!2060829) (not b!6567951) (not b!6567856) (not b!6567499) (not d!2060837) (not bm!571390) (not b!6568200) (not b!6568034) (not b!6568119) (not b!6568059) (not bm!571364) (not b!6568221) (not b_lambda!248407) (not b!6568338) (not b!6568143) (not b!6568154) (not b!6567847) (not bm!571418) (not b!6567941) (not d!2060619) (not d!2060773) (not b!6567807) (not b!6568079) (not b!6568153) (not b!6568348) (not b!6568001) (not bs!1677807) (not d!2060769) (not d!2060559) (not b!6568123) (not d!2060833) (not b!6567785) (not b!6568202) (not b!6567506) (not b!6568233) (not b!6568292) (not setNonEmpty!44840) (not b!6568002) (not d!2060855) (not b!6568164) (not b!6567803) (not b!6567801) (not bm!571441) (not b!6567858) (not d!2060809) tp_is_empty!42139 (not b!6568065) (not d!2060763) (not bm!571419) (not b!6567935) (not b!6568083) (not b!6568068) (not b!6568011) (not d!2060835) (not b!6567962) (not b!6568201) (not bm!571440) (not b!6568019) (not b!6568203) (not d!2060841) (not b!6567843) (not d!2060547) (not bm!571420) (not b!6568228) (not b!6568353) (not d!2060863) (not b!6568120) (not d!2060845) (not b!6568359) (not d!2060695) (not b!6567695) (not d!2060495) (not b!6567292) (not b!6567798) (not d!2060691) (not bm!571401) (not b!6568277) (not b!6568234) (not d!2060573) (not b!6568244) (not bm!571453) (not b!6567936) (not b!6568018) (not b!6567938) (not b!6567690) (not b!6568214) (not b!6568050) (not b!6567852) (not b!6568220) (not b!6568286) (not b!6568208) (not d!2060637) (not d!2060741) (not d!2060839) (not b!6568125) (not d!2060529) (not d!2060511) (not bm!571398) (not b!6568013) (not d!2060805) (not bm!571426) (not b!6568138) (not d!2060813) (not b!6568168) (not d!2060853) (not b!6568124) (not b!6568024) (not b!6567997) (not bm!571425) (not d!2060717) (not d!2060721) (not d!2060865))
(check-sat)
