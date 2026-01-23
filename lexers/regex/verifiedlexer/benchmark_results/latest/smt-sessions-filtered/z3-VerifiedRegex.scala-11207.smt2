; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585772 () Bool)

(assert start!585772)

(declare-fun b!5673680 () Bool)

(assert (=> b!5673680 true))

(assert (=> b!5673680 true))

(declare-fun lambda!305460 () Int)

(declare-fun lambda!305459 () Int)

(assert (=> b!5673680 (not (= lambda!305460 lambda!305459))))

(assert (=> b!5673680 true))

(assert (=> b!5673680 true))

(declare-fun b!5673694 () Bool)

(assert (=> b!5673694 true))

(declare-fun bs!1322828 () Bool)

(declare-fun b!5673689 () Bool)

(assert (= bs!1322828 (and b!5673689 b!5673680)))

(declare-datatypes ((C!31592 0))(
  ( (C!31593 (val!25498 Int)) )
))
(declare-datatypes ((Regex!15661 0))(
  ( (ElementMatch!15661 (c!998053 C!31592)) (Concat!24506 (regOne!31834 Regex!15661) (regTwo!31834 Regex!15661)) (EmptyExpr!15661) (Star!15661 (reg!15990 Regex!15661)) (EmptyLang!15661) (Union!15661 (regOne!31835 Regex!15661) (regTwo!31835 Regex!15661)) )
))
(declare-fun r!7292 () Regex!15661)

(declare-fun lambda!305462 () Int)

(declare-fun lt!2268883 () Regex!15661)

(assert (=> bs!1322828 (= (and (= (regOne!31834 (regOne!31834 r!7292)) (regOne!31834 r!7292)) (= lt!2268883 (regTwo!31834 r!7292))) (= lambda!305462 lambda!305459))))

(assert (=> bs!1322828 (not (= lambda!305462 lambda!305460))))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(declare-fun lambda!305463 () Int)

(assert (=> bs!1322828 (not (= lambda!305463 lambda!305459))))

(assert (=> bs!1322828 (= (and (= (regOne!31834 (regOne!31834 r!7292)) (regOne!31834 r!7292)) (= lt!2268883 (regTwo!31834 r!7292))) (= lambda!305463 lambda!305460))))

(assert (=> b!5673689 (not (= lambda!305463 lambda!305462))))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(declare-fun lt!2268891 () Regex!15661)

(declare-fun lambda!305464 () Int)

(assert (=> bs!1322828 (= (and (= (regTwo!31834 (regOne!31834 r!7292)) (regOne!31834 r!7292)) (= lt!2268891 (regTwo!31834 r!7292))) (= lambda!305464 lambda!305459))))

(assert (=> bs!1322828 (not (= lambda!305464 lambda!305460))))

(assert (=> b!5673689 (= (and (= (regTwo!31834 (regOne!31834 r!7292)) (regOne!31834 (regOne!31834 r!7292))) (= lt!2268891 lt!2268883)) (= lambda!305464 lambda!305462))))

(assert (=> b!5673689 (not (= lambda!305464 lambda!305463))))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(declare-fun lambda!305465 () Int)

(assert (=> b!5673689 (not (= lambda!305465 lambda!305464))))

(assert (=> b!5673689 (not (= lambda!305465 lambda!305462))))

(assert (=> bs!1322828 (not (= lambda!305465 lambda!305459))))

(assert (=> b!5673689 (= (and (= (regTwo!31834 (regOne!31834 r!7292)) (regOne!31834 (regOne!31834 r!7292))) (= lt!2268891 lt!2268883)) (= lambda!305465 lambda!305463))))

(assert (=> bs!1322828 (= (and (= (regTwo!31834 (regOne!31834 r!7292)) (regOne!31834 r!7292)) (= lt!2268891 (regTwo!31834 r!7292))) (= lambda!305465 lambda!305460))))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(assert (=> b!5673689 true))

(declare-fun b!5673677 () Bool)

(declare-fun res!2397596 () Bool)

(declare-fun e!3492506 () Bool)

(assert (=> b!5673677 (=> res!2397596 e!3492506)))

(get-info :version)

(assert (=> b!5673677 (= res!2397596 (not ((_ is Concat!24506) (regOne!31834 r!7292))))))

(declare-fun b!5673678 () Bool)

(declare-fun e!3492499 () Bool)

(declare-fun tp!1573635 () Bool)

(assert (=> b!5673678 (= e!3492499 tp!1573635)))

(declare-fun b!5673679 () Bool)

(declare-fun res!2397608 () Bool)

(declare-fun e!3492505 () Bool)

(assert (=> b!5673679 (=> res!2397608 e!3492505)))

(declare-datatypes ((List!63282 0))(
  ( (Nil!63158) (Cons!63158 (h!69606 Regex!15661) (t!376590 List!63282)) )
))
(declare-datatypes ((Context!10090 0))(
  ( (Context!10091 (exprs!5545 List!63282)) )
))
(declare-datatypes ((List!63283 0))(
  ( (Nil!63159) (Cons!63159 (h!69607 Context!10090) (t!376591 List!63283)) )
))
(declare-fun zl!343 () List!63283)

(declare-fun generalisedUnion!1524 (List!63282) Regex!15661)

(declare-fun unfocusZipperList!1089 (List!63283) List!63282)

(assert (=> b!5673679 (= res!2397608 (not (= r!7292 (generalisedUnion!1524 (unfocusZipperList!1089 zl!343)))))))

(declare-fun e!3492504 () Bool)

(assert (=> b!5673680 (= e!3492505 e!3492504)))

(declare-fun res!2397602 () Bool)

(assert (=> b!5673680 (=> res!2397602 e!3492504)))

(declare-fun lt!2268892 () Bool)

(declare-fun lt!2268905 () Bool)

(declare-datatypes ((List!63284 0))(
  ( (Nil!63160) (Cons!63160 (h!69608 C!31592) (t!376592 List!63284)) )
))
(declare-fun s!2326 () List!63284)

(assert (=> b!5673680 (= res!2397602 (or (not (= lt!2268905 lt!2268892)) ((_ is Nil!63160) s!2326)))))

(declare-fun Exists!2761 (Int) Bool)

(assert (=> b!5673680 (= (Exists!2761 lambda!305459) (Exists!2761 lambda!305460))))

(declare-datatypes ((Unit!156176 0))(
  ( (Unit!156177) )
))
(declare-fun lt!2268900 () Unit!156176)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1390 (Regex!15661 Regex!15661 List!63284) Unit!156176)

(assert (=> b!5673680 (= lt!2268900 (lemmaExistCutMatchRandMatchRSpecEquivalent!1390 (regOne!31834 r!7292) (regTwo!31834 r!7292) s!2326))))

(assert (=> b!5673680 (= lt!2268892 (Exists!2761 lambda!305459))))

(declare-datatypes ((tuple2!65516 0))(
  ( (tuple2!65517 (_1!36061 List!63284) (_2!36061 List!63284)) )
))
(declare-datatypes ((Option!15670 0))(
  ( (None!15669) (Some!15669 (v!51718 tuple2!65516)) )
))
(declare-fun isDefined!12373 (Option!15670) Bool)

(declare-fun findConcatSeparation!2084 (Regex!15661 Regex!15661 List!63284 List!63284 List!63284) Option!15670)

(assert (=> b!5673680 (= lt!2268892 (isDefined!12373 (findConcatSeparation!2084 (regOne!31834 r!7292) (regTwo!31834 r!7292) Nil!63160 s!2326 s!2326)))))

(declare-fun lt!2268885 () Unit!156176)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1848 (Regex!15661 Regex!15661 List!63284) Unit!156176)

(assert (=> b!5673680 (= lt!2268885 (lemmaFindConcatSeparationEquivalentToExists!1848 (regOne!31834 r!7292) (regTwo!31834 r!7292) s!2326))))

(declare-fun b!5673681 () Bool)

(declare-fun res!2397594 () Bool)

(assert (=> b!5673681 (=> res!2397594 e!3492504)))

(declare-fun isEmpty!35009 (List!63282) Bool)

(assert (=> b!5673681 (= res!2397594 (isEmpty!35009 (t!376590 (exprs!5545 (h!69607 zl!343)))))))

(declare-fun b!5673682 () Bool)

(declare-fun res!2397589 () Bool)

(declare-fun e!3492501 () Bool)

(assert (=> b!5673682 (=> res!2397589 e!3492501)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2268887 () (InoxSet Context!10090))

(declare-fun lt!2268888 () Bool)

(declare-fun matchZipper!1799 ((InoxSet Context!10090) List!63284) Bool)

(assert (=> b!5673682 (= res!2397589 (not (= lt!2268888 (matchZipper!1799 lt!2268887 (t!376592 s!2326)))))))

(declare-fun setNonEmpty!37923 () Bool)

(declare-fun setRes!37923 () Bool)

(declare-fun setElem!37923 () Context!10090)

(declare-fun tp!1573637 () Bool)

(declare-fun inv!82399 (Context!10090) Bool)

(assert (=> setNonEmpty!37923 (= setRes!37923 (and tp!1573637 (inv!82399 setElem!37923) e!3492499))))

(declare-fun z!1189 () (InoxSet Context!10090))

(declare-fun setRest!37923 () (InoxSet Context!10090))

(assert (=> setNonEmpty!37923 (= z!1189 ((_ map or) (store ((as const (Array Context!10090 Bool)) false) setElem!37923 true) setRest!37923))))

(declare-fun b!5673683 () Bool)

(declare-fun res!2397593 () Bool)

(declare-fun e!3492495 () Bool)

(assert (=> b!5673683 (=> (not res!2397593) (not e!3492495))))

(declare-fun toList!9445 ((InoxSet Context!10090)) List!63283)

(assert (=> b!5673683 (= res!2397593 (= (toList!9445 z!1189) zl!343))))

(declare-fun b!5673684 () Bool)

(declare-fun e!3492490 () Bool)

(assert (=> b!5673684 (= e!3492506 e!3492490)))

(declare-fun res!2397604 () Bool)

(assert (=> b!5673684 (=> res!2397604 e!3492490)))

(declare-fun lt!2268904 () (InoxSet Context!10090))

(declare-fun lt!2268884 () (InoxSet Context!10090))

(assert (=> b!5673684 (= res!2397604 (not (= lt!2268904 lt!2268884)))))

(declare-fun lt!2268874 () List!63282)

(declare-fun derivationStepZipperDown!1003 (Regex!15661 Context!10090 C!31592) (InoxSet Context!10090))

(assert (=> b!5673684 (= lt!2268884 (derivationStepZipperDown!1003 (regOne!31834 (regOne!31834 r!7292)) (Context!10091 lt!2268874) (h!69608 s!2326)))))

(assert (=> b!5673684 (= lt!2268874 (Cons!63158 (regTwo!31834 (regOne!31834 r!7292)) (t!376590 (exprs!5545 (h!69607 zl!343)))))))

(declare-fun b!5673685 () Bool)

(declare-fun res!2397607 () Bool)

(assert (=> b!5673685 (=> res!2397607 e!3492501)))

(declare-fun lt!2268880 () Context!10090)

(declare-fun contextDepthTotal!236 (Context!10090) Int)

(assert (=> b!5673685 (= res!2397607 (>= (contextDepthTotal!236 lt!2268880) (contextDepthTotal!236 (h!69607 zl!343))))))

(declare-fun res!2397612 () Bool)

(assert (=> start!585772 (=> (not res!2397612) (not e!3492495))))

(declare-fun validRegex!7397 (Regex!15661) Bool)

(assert (=> start!585772 (= res!2397612 (validRegex!7397 r!7292))))

(assert (=> start!585772 e!3492495))

(declare-fun e!3492497 () Bool)

(assert (=> start!585772 e!3492497))

(declare-fun condSetEmpty!37923 () Bool)

(assert (=> start!585772 (= condSetEmpty!37923 (= z!1189 ((as const (Array Context!10090 Bool)) false)))))

(assert (=> start!585772 setRes!37923))

(declare-fun e!3492491 () Bool)

(assert (=> start!585772 e!3492491))

(declare-fun e!3492494 () Bool)

(assert (=> start!585772 e!3492494))

(declare-fun b!5673686 () Bool)

(declare-fun tp!1573632 () Bool)

(declare-fun tp!1573638 () Bool)

(assert (=> b!5673686 (= e!3492497 (and tp!1573632 tp!1573638))))

(declare-fun b!5673687 () Bool)

(declare-fun e!3492493 () Bool)

(declare-fun lt!2268898 () (InoxSet Context!10090))

(assert (=> b!5673687 (= e!3492493 (matchZipper!1799 lt!2268898 (t!376592 s!2326)))))

(declare-fun b!5673688 () Bool)

(declare-fun res!2397597 () Bool)

(assert (=> b!5673688 (=> res!2397597 e!3492505)))

(assert (=> b!5673688 (= res!2397597 (or ((_ is EmptyExpr!15661) r!7292) ((_ is EmptyLang!15661) r!7292) ((_ is ElementMatch!15661) r!7292) ((_ is Union!15661) r!7292) (not ((_ is Concat!24506) r!7292))))))

(declare-fun e!3492492 () Bool)

(declare-fun e!3492500 () Bool)

(assert (=> b!5673689 (= e!3492492 e!3492500)))

(declare-fun res!2397609 () Bool)

(assert (=> b!5673689 (=> res!2397609 e!3492500)))

(declare-fun lt!2268876 () Bool)

(declare-fun lt!2268872 () Bool)

(declare-fun lt!2268873 () Bool)

(assert (=> b!5673689 (= res!2397609 (or (not (= lt!2268873 lt!2268872)) (not (= lt!2268873 lt!2268876))))))

(assert (=> b!5673689 (= lt!2268873 (matchZipper!1799 z!1189 s!2326))))

(assert (=> b!5673689 (= (Exists!2761 lambda!305464) (Exists!2761 lambda!305465))))

(declare-fun lt!2268899 () Unit!156176)

(assert (=> b!5673689 (= lt!2268899 (lemmaExistCutMatchRandMatchRSpecEquivalent!1390 (regTwo!31834 (regOne!31834 r!7292)) lt!2268891 s!2326))))

(assert (=> b!5673689 (= (isDefined!12373 (findConcatSeparation!2084 (regTwo!31834 (regOne!31834 r!7292)) lt!2268891 Nil!63160 s!2326 s!2326)) (Exists!2761 lambda!305464))))

(declare-fun lt!2268882 () Unit!156176)

(assert (=> b!5673689 (= lt!2268882 (lemmaFindConcatSeparationEquivalentToExists!1848 (regTwo!31834 (regOne!31834 r!7292)) lt!2268891 s!2326))))

(declare-fun generalisedConcat!1276 (List!63282) Regex!15661)

(assert (=> b!5673689 (= lt!2268891 (generalisedConcat!1276 (t!376590 (exprs!5545 (h!69607 zl!343)))))))

(declare-fun matchR!7846 (Regex!15661 List!63284) Bool)

(declare-fun matchRSpec!2764 (Regex!15661 List!63284) Bool)

(assert (=> b!5673689 (= (matchR!7846 lt!2268883 s!2326) (matchRSpec!2764 lt!2268883 s!2326))))

(declare-fun lt!2268875 () Unit!156176)

(declare-fun mainMatchTheorem!2764 (Regex!15661 List!63284) Unit!156176)

(assert (=> b!5673689 (= lt!2268875 (mainMatchTheorem!2764 lt!2268883 s!2326))))

(assert (=> b!5673689 (= (Exists!2761 lambda!305462) (Exists!2761 lambda!305463))))

(declare-fun lt!2268906 () Unit!156176)

(assert (=> b!5673689 (= lt!2268906 (lemmaExistCutMatchRandMatchRSpecEquivalent!1390 (regOne!31834 (regOne!31834 r!7292)) lt!2268883 s!2326))))

(assert (=> b!5673689 (= (isDefined!12373 (findConcatSeparation!2084 (regOne!31834 (regOne!31834 r!7292)) lt!2268883 Nil!63160 s!2326 s!2326)) (Exists!2761 lambda!305462))))

(declare-fun lt!2268878 () Unit!156176)

(assert (=> b!5673689 (= lt!2268878 (lemmaFindConcatSeparationEquivalentToExists!1848 (regOne!31834 (regOne!31834 r!7292)) lt!2268883 s!2326))))

(assert (=> b!5673689 (= lt!2268883 (generalisedConcat!1276 lt!2268874))))

(declare-fun lt!2268894 () Regex!15661)

(assert (=> b!5673689 (= lt!2268876 (matchRSpec!2764 lt!2268894 s!2326))))

(declare-fun lt!2268881 () Unit!156176)

(assert (=> b!5673689 (= lt!2268881 (mainMatchTheorem!2764 lt!2268894 s!2326))))

(assert (=> b!5673689 (= lt!2268876 lt!2268872)))

(declare-fun lt!2268893 () (InoxSet Context!10090))

(assert (=> b!5673689 (= lt!2268872 (matchZipper!1799 lt!2268893 s!2326))))

(assert (=> b!5673689 (= lt!2268876 (matchR!7846 lt!2268894 s!2326))))

(declare-fun lt!2268877 () Unit!156176)

(declare-fun lt!2268895 () List!63283)

(declare-fun theoremZipperRegexEquiv!641 ((InoxSet Context!10090) List!63283 Regex!15661 List!63284) Unit!156176)

(assert (=> b!5673689 (= lt!2268877 (theoremZipperRegexEquiv!641 lt!2268893 lt!2268895 lt!2268894 s!2326))))

(declare-fun lt!2268902 () List!63282)

(assert (=> b!5673689 (= lt!2268894 (generalisedConcat!1276 lt!2268902))))

(declare-fun b!5673690 () Bool)

(declare-fun res!2397590 () Bool)

(assert (=> b!5673690 (=> res!2397590 e!3492505)))

(declare-fun isEmpty!35010 (List!63283) Bool)

(assert (=> b!5673690 (= res!2397590 (not (isEmpty!35010 (t!376591 zl!343))))))

(declare-fun b!5673691 () Bool)

(declare-fun e!3492502 () Bool)

(assert (=> b!5673691 (= e!3492502 e!3492501)))

(declare-fun res!2397610 () Bool)

(assert (=> b!5673691 (=> res!2397610 e!3492501)))

(assert (=> b!5673691 (= res!2397610 (not (= lt!2268887 lt!2268884)))))

(declare-fun lambda!305461 () Int)

(declare-fun flatMap!1274 ((InoxSet Context!10090) Int) (InoxSet Context!10090))

(declare-fun derivationStepZipperUp!929 (Context!10090 C!31592) (InoxSet Context!10090))

(assert (=> b!5673691 (= (flatMap!1274 lt!2268893 lambda!305461) (derivationStepZipperUp!929 lt!2268880 (h!69608 s!2326)))))

(declare-fun lt!2268889 () Unit!156176)

(declare-fun lemmaFlatMapOnSingletonSet!806 ((InoxSet Context!10090) Context!10090 Int) Unit!156176)

(assert (=> b!5673691 (= lt!2268889 (lemmaFlatMapOnSingletonSet!806 lt!2268893 lt!2268880 lambda!305461))))

(declare-fun lt!2268897 () (InoxSet Context!10090))

(assert (=> b!5673691 (= lt!2268897 (derivationStepZipperUp!929 lt!2268880 (h!69608 s!2326)))))

(declare-fun derivationStepZipper!1746 ((InoxSet Context!10090) C!31592) (InoxSet Context!10090))

(assert (=> b!5673691 (= lt!2268887 (derivationStepZipper!1746 lt!2268893 (h!69608 s!2326)))))

(assert (=> b!5673691 (= lt!2268893 (store ((as const (Array Context!10090 Bool)) false) lt!2268880 true))))

(assert (=> b!5673691 (= lt!2268880 (Context!10091 lt!2268902))))

(assert (=> b!5673691 (= lt!2268902 (Cons!63158 (regOne!31834 (regOne!31834 r!7292)) lt!2268874))))

(declare-fun b!5673692 () Bool)

(declare-fun tp!1573630 () Bool)

(assert (=> b!5673692 (= e!3492497 tp!1573630)))

(declare-fun b!5673693 () Bool)

(declare-fun e!3492496 () Bool)

(declare-fun nullable!5693 (Regex!15661) Bool)

(assert (=> b!5673693 (= e!3492496 (nullable!5693 (regOne!31834 (regOne!31834 r!7292))))))

(assert (=> b!5673694 (= e!3492504 e!3492506)))

(declare-fun res!2397599 () Bool)

(assert (=> b!5673694 (=> res!2397599 e!3492506)))

(assert (=> b!5673694 (= res!2397599 (or (and ((_ is ElementMatch!15661) (regOne!31834 r!7292)) (= (c!998053 (regOne!31834 r!7292)) (h!69608 s!2326))) ((_ is Union!15661) (regOne!31834 r!7292))))))

(declare-fun lt!2268896 () Unit!156176)

(declare-fun e!3492498 () Unit!156176)

(assert (=> b!5673694 (= lt!2268896 e!3492498)))

(declare-fun c!998052 () Bool)

(assert (=> b!5673694 (= c!998052 (nullable!5693 (h!69606 (exprs!5545 (h!69607 zl!343)))))))

(assert (=> b!5673694 (= (flatMap!1274 z!1189 lambda!305461) (derivationStepZipperUp!929 (h!69607 zl!343) (h!69608 s!2326)))))

(declare-fun lt!2268890 () Unit!156176)

(assert (=> b!5673694 (= lt!2268890 (lemmaFlatMapOnSingletonSet!806 z!1189 (h!69607 zl!343) lambda!305461))))

(declare-fun lt!2268879 () Context!10090)

(assert (=> b!5673694 (= lt!2268898 (derivationStepZipperUp!929 lt!2268879 (h!69608 s!2326)))))

(assert (=> b!5673694 (= lt!2268904 (derivationStepZipperDown!1003 (h!69606 (exprs!5545 (h!69607 zl!343))) lt!2268879 (h!69608 s!2326)))))

(assert (=> b!5673694 (= lt!2268879 (Context!10091 (t!376590 (exprs!5545 (h!69607 zl!343)))))))

(declare-fun lt!2268901 () (InoxSet Context!10090))

(assert (=> b!5673694 (= lt!2268901 (derivationStepZipperUp!929 (Context!10091 (Cons!63158 (h!69606 (exprs!5545 (h!69607 zl!343))) (t!376590 (exprs!5545 (h!69607 zl!343))))) (h!69608 s!2326)))))

(declare-fun b!5673695 () Bool)

(declare-fun tp_is_empty!40575 () Bool)

(declare-fun tp!1573636 () Bool)

(assert (=> b!5673695 (= e!3492494 (and tp_is_empty!40575 tp!1573636))))

(declare-fun b!5673696 () Bool)

(declare-fun res!2397606 () Bool)

(assert (=> b!5673696 (=> res!2397606 e!3492501)))

(assert (=> b!5673696 (= res!2397606 (not (= (exprs!5545 (h!69607 zl!343)) (Cons!63158 (Concat!24506 (regOne!31834 (regOne!31834 r!7292)) (regTwo!31834 (regOne!31834 r!7292))) (t!376590 (exprs!5545 (h!69607 zl!343)))))))))

(declare-fun b!5673697 () Bool)

(declare-fun Unit!156178 () Unit!156176)

(assert (=> b!5673697 (= e!3492498 Unit!156178)))

(declare-fun b!5673698 () Bool)

(declare-fun res!2397595 () Bool)

(assert (=> b!5673698 (=> res!2397595 e!3492505)))

(assert (=> b!5673698 (= res!2397595 (not ((_ is Cons!63158) (exprs!5545 (h!69607 zl!343)))))))

(declare-fun b!5673699 () Bool)

(assert (=> b!5673699 (= e!3492490 e!3492502)))

(declare-fun res!2397611 () Bool)

(assert (=> b!5673699 (=> res!2397611 e!3492502)))

(assert (=> b!5673699 (= res!2397611 (not (= lt!2268888 (matchZipper!1799 lt!2268884 (t!376592 s!2326)))))))

(assert (=> b!5673699 (= lt!2268888 (matchZipper!1799 lt!2268904 (t!376592 s!2326)))))

(declare-fun b!5673700 () Bool)

(declare-fun tp!1573633 () Bool)

(declare-fun tp!1573634 () Bool)

(assert (=> b!5673700 (= e!3492497 (and tp!1573633 tp!1573634))))

(declare-fun b!5673701 () Bool)

(declare-fun res!2397600 () Bool)

(assert (=> b!5673701 (=> res!2397600 e!3492506)))

(assert (=> b!5673701 (= res!2397600 e!3492496)))

(declare-fun res!2397598 () Bool)

(assert (=> b!5673701 (=> (not res!2397598) (not e!3492496))))

(assert (=> b!5673701 (= res!2397598 ((_ is Concat!24506) (regOne!31834 r!7292)))))

(declare-fun b!5673702 () Bool)

(declare-fun e!3492503 () Bool)

(declare-fun tp!1573631 () Bool)

(assert (=> b!5673702 (= e!3492503 tp!1573631)))

(declare-fun b!5673703 () Bool)

(declare-fun res!2397605 () Bool)

(assert (=> b!5673703 (=> res!2397605 e!3492492)))

(declare-fun zipperDepth!224 (List!63283) Int)

(assert (=> b!5673703 (= res!2397605 (> (zipperDepth!224 lt!2268895) (zipperDepth!224 zl!343)))))

(declare-fun b!5673704 () Bool)

(declare-fun res!2397592 () Bool)

(assert (=> b!5673704 (=> (not res!2397592) (not e!3492495))))

(declare-fun unfocusZipper!1403 (List!63283) Regex!15661)

(assert (=> b!5673704 (= res!2397592 (= r!7292 (unfocusZipper!1403 zl!343)))))

(declare-fun b!5673705 () Bool)

(declare-fun res!2397613 () Bool)

(assert (=> b!5673705 (=> res!2397613 e!3492505)))

(assert (=> b!5673705 (= res!2397613 (not (= r!7292 (generalisedConcat!1276 (exprs!5545 (h!69607 zl!343))))))))

(declare-fun setIsEmpty!37923 () Bool)

(assert (=> setIsEmpty!37923 setRes!37923))

(declare-fun b!5673706 () Bool)

(assert (=> b!5673706 (= e!3492495 (not e!3492505))))

(declare-fun res!2397591 () Bool)

(assert (=> b!5673706 (=> res!2397591 e!3492505)))

(assert (=> b!5673706 (= res!2397591 (not ((_ is Cons!63159) zl!343)))))

(assert (=> b!5673706 (= lt!2268905 (matchRSpec!2764 r!7292 s!2326))))

(assert (=> b!5673706 (= lt!2268905 (matchR!7846 r!7292 s!2326))))

(declare-fun lt!2268903 () Unit!156176)

(assert (=> b!5673706 (= lt!2268903 (mainMatchTheorem!2764 r!7292 s!2326))))

(declare-fun b!5673707 () Bool)

(assert (=> b!5673707 (= e!3492497 tp_is_empty!40575)))

(declare-fun b!5673708 () Bool)

(assert (=> b!5673708 (= e!3492501 e!3492492)))

(declare-fun res!2397601 () Bool)

(assert (=> b!5673708 (=> res!2397601 e!3492492)))

(declare-fun zipperDepthTotal!258 (List!63283) Int)

(assert (=> b!5673708 (= res!2397601 (>= (zipperDepthTotal!258 lt!2268895) (zipperDepthTotal!258 zl!343)))))

(assert (=> b!5673708 (= lt!2268895 (Cons!63159 lt!2268880 Nil!63159))))

(declare-fun b!5673709 () Bool)

(assert (=> b!5673709 (= e!3492500 (= lt!2268905 (matchR!7846 (Concat!24506 (regOne!31834 r!7292) (regTwo!31834 r!7292)) s!2326)))))

(declare-fun b!5673710 () Bool)

(declare-fun Unit!156179 () Unit!156176)

(assert (=> b!5673710 (= e!3492498 Unit!156179)))

(declare-fun lt!2268886 () Unit!156176)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!686 ((InoxSet Context!10090) (InoxSet Context!10090) List!63284) Unit!156176)

(assert (=> b!5673710 (= lt!2268886 (lemmaZipperConcatMatchesSameAsBothZippers!686 lt!2268904 lt!2268898 (t!376592 s!2326)))))

(declare-fun res!2397603 () Bool)

(assert (=> b!5673710 (= res!2397603 (matchZipper!1799 lt!2268904 (t!376592 s!2326)))))

(assert (=> b!5673710 (=> res!2397603 e!3492493)))

(assert (=> b!5673710 (= (matchZipper!1799 ((_ map or) lt!2268904 lt!2268898) (t!376592 s!2326)) e!3492493)))

(declare-fun b!5673711 () Bool)

(declare-fun tp!1573629 () Bool)

(assert (=> b!5673711 (= e!3492491 (and (inv!82399 (h!69607 zl!343)) e!3492503 tp!1573629))))

(assert (= (and start!585772 res!2397612) b!5673683))

(assert (= (and b!5673683 res!2397593) b!5673704))

(assert (= (and b!5673704 res!2397592) b!5673706))

(assert (= (and b!5673706 (not res!2397591)) b!5673690))

(assert (= (and b!5673690 (not res!2397590)) b!5673705))

(assert (= (and b!5673705 (not res!2397613)) b!5673698))

(assert (= (and b!5673698 (not res!2397595)) b!5673679))

(assert (= (and b!5673679 (not res!2397608)) b!5673688))

(assert (= (and b!5673688 (not res!2397597)) b!5673680))

(assert (= (and b!5673680 (not res!2397602)) b!5673681))

(assert (= (and b!5673681 (not res!2397594)) b!5673694))

(assert (= (and b!5673694 c!998052) b!5673710))

(assert (= (and b!5673694 (not c!998052)) b!5673697))

(assert (= (and b!5673710 (not res!2397603)) b!5673687))

(assert (= (and b!5673694 (not res!2397599)) b!5673701))

(assert (= (and b!5673701 res!2397598) b!5673693))

(assert (= (and b!5673701 (not res!2397600)) b!5673677))

(assert (= (and b!5673677 (not res!2397596)) b!5673684))

(assert (= (and b!5673684 (not res!2397604)) b!5673699))

(assert (= (and b!5673699 (not res!2397611)) b!5673691))

(assert (= (and b!5673691 (not res!2397610)) b!5673682))

(assert (= (and b!5673682 (not res!2397589)) b!5673696))

(assert (= (and b!5673696 (not res!2397606)) b!5673685))

(assert (= (and b!5673685 (not res!2397607)) b!5673708))

(assert (= (and b!5673708 (not res!2397601)) b!5673703))

(assert (= (and b!5673703 (not res!2397605)) b!5673689))

(assert (= (and b!5673689 (not res!2397609)) b!5673709))

(assert (= (and start!585772 ((_ is ElementMatch!15661) r!7292)) b!5673707))

(assert (= (and start!585772 ((_ is Concat!24506) r!7292)) b!5673686))

(assert (= (and start!585772 ((_ is Star!15661) r!7292)) b!5673692))

(assert (= (and start!585772 ((_ is Union!15661) r!7292)) b!5673700))

(assert (= (and start!585772 condSetEmpty!37923) setIsEmpty!37923))

(assert (= (and start!585772 (not condSetEmpty!37923)) setNonEmpty!37923))

(assert (= setNonEmpty!37923 b!5673678))

(assert (= b!5673711 b!5673702))

(assert (= (and start!585772 ((_ is Cons!63159) zl!343)) b!5673711))

(assert (= (and start!585772 ((_ is Cons!63160) s!2326)) b!5673695))

(declare-fun m!6634670 () Bool)

(assert (=> b!5673710 m!6634670))

(declare-fun m!6634672 () Bool)

(assert (=> b!5673710 m!6634672))

(declare-fun m!6634674 () Bool)

(assert (=> b!5673710 m!6634674))

(declare-fun m!6634676 () Bool)

(assert (=> b!5673709 m!6634676))

(declare-fun m!6634678 () Bool)

(assert (=> b!5673706 m!6634678))

(declare-fun m!6634680 () Bool)

(assert (=> b!5673706 m!6634680))

(declare-fun m!6634682 () Bool)

(assert (=> b!5673706 m!6634682))

(declare-fun m!6634684 () Bool)

(assert (=> b!5673711 m!6634684))

(declare-fun m!6634686 () Bool)

(assert (=> start!585772 m!6634686))

(declare-fun m!6634688 () Bool)

(assert (=> b!5673694 m!6634688))

(declare-fun m!6634690 () Bool)

(assert (=> b!5673694 m!6634690))

(declare-fun m!6634692 () Bool)

(assert (=> b!5673694 m!6634692))

(declare-fun m!6634694 () Bool)

(assert (=> b!5673694 m!6634694))

(declare-fun m!6634696 () Bool)

(assert (=> b!5673694 m!6634696))

(declare-fun m!6634698 () Bool)

(assert (=> b!5673694 m!6634698))

(declare-fun m!6634700 () Bool)

(assert (=> b!5673694 m!6634700))

(declare-fun m!6634702 () Bool)

(assert (=> b!5673703 m!6634702))

(declare-fun m!6634704 () Bool)

(assert (=> b!5673703 m!6634704))

(declare-fun m!6634706 () Bool)

(assert (=> b!5673687 m!6634706))

(declare-fun m!6634708 () Bool)

(assert (=> b!5673683 m!6634708))

(declare-fun m!6634710 () Bool)

(assert (=> b!5673708 m!6634710))

(declare-fun m!6634712 () Bool)

(assert (=> b!5673708 m!6634712))

(declare-fun m!6634714 () Bool)

(assert (=> b!5673691 m!6634714))

(declare-fun m!6634716 () Bool)

(assert (=> b!5673691 m!6634716))

(declare-fun m!6634718 () Bool)

(assert (=> b!5673691 m!6634718))

(declare-fun m!6634720 () Bool)

(assert (=> b!5673691 m!6634720))

(declare-fun m!6634722 () Bool)

(assert (=> b!5673691 m!6634722))

(declare-fun m!6634724 () Bool)

(assert (=> b!5673681 m!6634724))

(declare-fun m!6634726 () Bool)

(assert (=> b!5673685 m!6634726))

(declare-fun m!6634728 () Bool)

(assert (=> b!5673685 m!6634728))

(declare-fun m!6634730 () Bool)

(assert (=> b!5673682 m!6634730))

(declare-fun m!6634732 () Bool)

(assert (=> b!5673689 m!6634732))

(declare-fun m!6634734 () Bool)

(assert (=> b!5673689 m!6634734))

(declare-fun m!6634736 () Bool)

(assert (=> b!5673689 m!6634736))

(declare-fun m!6634738 () Bool)

(assert (=> b!5673689 m!6634738))

(declare-fun m!6634740 () Bool)

(assert (=> b!5673689 m!6634740))

(declare-fun m!6634742 () Bool)

(assert (=> b!5673689 m!6634742))

(assert (=> b!5673689 m!6634738))

(declare-fun m!6634744 () Bool)

(assert (=> b!5673689 m!6634744))

(declare-fun m!6634746 () Bool)

(assert (=> b!5673689 m!6634746))

(declare-fun m!6634748 () Bool)

(assert (=> b!5673689 m!6634748))

(declare-fun m!6634750 () Bool)

(assert (=> b!5673689 m!6634750))

(declare-fun m!6634752 () Bool)

(assert (=> b!5673689 m!6634752))

(declare-fun m!6634754 () Bool)

(assert (=> b!5673689 m!6634754))

(declare-fun m!6634756 () Bool)

(assert (=> b!5673689 m!6634756))

(assert (=> b!5673689 m!6634734))

(declare-fun m!6634758 () Bool)

(assert (=> b!5673689 m!6634758))

(declare-fun m!6634760 () Bool)

(assert (=> b!5673689 m!6634760))

(declare-fun m!6634762 () Bool)

(assert (=> b!5673689 m!6634762))

(declare-fun m!6634764 () Bool)

(assert (=> b!5673689 m!6634764))

(declare-fun m!6634766 () Bool)

(assert (=> b!5673689 m!6634766))

(declare-fun m!6634768 () Bool)

(assert (=> b!5673689 m!6634768))

(assert (=> b!5673689 m!6634742))

(declare-fun m!6634770 () Bool)

(assert (=> b!5673689 m!6634770))

(declare-fun m!6634772 () Bool)

(assert (=> b!5673689 m!6634772))

(assert (=> b!5673689 m!6634754))

(declare-fun m!6634774 () Bool)

(assert (=> b!5673689 m!6634774))

(declare-fun m!6634776 () Bool)

(assert (=> b!5673689 m!6634776))

(declare-fun m!6634778 () Bool)

(assert (=> b!5673689 m!6634778))

(declare-fun m!6634780 () Bool)

(assert (=> b!5673699 m!6634780))

(assert (=> b!5673699 m!6634672))

(declare-fun m!6634782 () Bool)

(assert (=> b!5673705 m!6634782))

(declare-fun m!6634784 () Bool)

(assert (=> b!5673684 m!6634784))

(declare-fun m!6634786 () Bool)

(assert (=> b!5673680 m!6634786))

(declare-fun m!6634788 () Bool)

(assert (=> b!5673680 m!6634788))

(declare-fun m!6634790 () Bool)

(assert (=> b!5673680 m!6634790))

(declare-fun m!6634792 () Bool)

(assert (=> b!5673680 m!6634792))

(assert (=> b!5673680 m!6634790))

(assert (=> b!5673680 m!6634786))

(declare-fun m!6634794 () Bool)

(assert (=> b!5673680 m!6634794))

(declare-fun m!6634796 () Bool)

(assert (=> b!5673680 m!6634796))

(declare-fun m!6634798 () Bool)

(assert (=> b!5673704 m!6634798))

(declare-fun m!6634800 () Bool)

(assert (=> b!5673693 m!6634800))

(declare-fun m!6634802 () Bool)

(assert (=> setNonEmpty!37923 m!6634802))

(declare-fun m!6634804 () Bool)

(assert (=> b!5673679 m!6634804))

(assert (=> b!5673679 m!6634804))

(declare-fun m!6634806 () Bool)

(assert (=> b!5673679 m!6634806))

(declare-fun m!6634808 () Bool)

(assert (=> b!5673690 m!6634808))

(check-sat (not b!5673699) (not b!5673692) (not b!5673683) (not b!5673695) (not b!5673694) (not start!585772) (not b!5673681) (not b!5673702) (not b!5673678) (not b!5673691) (not b!5673700) (not b!5673704) tp_is_empty!40575 (not b!5673710) (not b!5673686) (not b!5673690) (not b!5673705) (not b!5673703) (not b!5673711) (not b!5673687) (not b!5673679) (not b!5673708) (not b!5673684) (not setNonEmpty!37923) (not b!5673706) (not b!5673685) (not b!5673689) (not b!5673709) (not b!5673680) (not b!5673693) (not b!5673682))
(check-sat)
