; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585776 () Bool)

(assert start!585776)

(declare-fun b!5673994 () Bool)

(assert (=> b!5673994 true))

(assert (=> b!5673994 true))

(declare-fun lambda!305518 () Int)

(declare-fun lambda!305517 () Int)

(assert (=> b!5673994 (not (= lambda!305518 lambda!305517))))

(assert (=> b!5673994 true))

(assert (=> b!5673994 true))

(declare-fun b!5674000 () Bool)

(assert (=> b!5674000 true))

(declare-fun bs!1322832 () Bool)

(declare-fun b!5673988 () Bool)

(assert (= bs!1322832 (and b!5673988 b!5673994)))

(declare-datatypes ((C!31596 0))(
  ( (C!31597 (val!25500 Int)) )
))
(declare-datatypes ((Regex!15663 0))(
  ( (ElementMatch!15663 (c!998071 C!31596)) (Concat!24508 (regOne!31838 Regex!15663) (regTwo!31838 Regex!15663)) (EmptyExpr!15663) (Star!15663 (reg!15992 Regex!15663)) (EmptyLang!15663) (Union!15663 (regOne!31839 Regex!15663) (regTwo!31839 Regex!15663)) )
))
(declare-fun lt!2269094 () Regex!15663)

(declare-fun r!7292 () Regex!15663)

(declare-fun lambda!305520 () Int)

(assert (=> bs!1322832 (= (and (= (regOne!31838 (regOne!31838 r!7292)) (regOne!31838 r!7292)) (= lt!2269094 (regTwo!31838 r!7292))) (= lambda!305520 lambda!305517))))

(assert (=> bs!1322832 (not (= lambda!305520 lambda!305518))))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(declare-fun lambda!305521 () Int)

(assert (=> bs!1322832 (not (= lambda!305521 lambda!305517))))

(assert (=> bs!1322832 (= (and (= (regOne!31838 (regOne!31838 r!7292)) (regOne!31838 r!7292)) (= lt!2269094 (regTwo!31838 r!7292))) (= lambda!305521 lambda!305518))))

(assert (=> b!5673988 (not (= lambda!305521 lambda!305520))))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(declare-fun lt!2269107 () Regex!15663)

(declare-fun lambda!305522 () Int)

(assert (=> bs!1322832 (= (and (= (regTwo!31838 (regOne!31838 r!7292)) (regOne!31838 r!7292)) (= lt!2269107 (regTwo!31838 r!7292))) (= lambda!305522 lambda!305517))))

(assert (=> bs!1322832 (not (= lambda!305522 lambda!305518))))

(assert (=> b!5673988 (= (and (= (regTwo!31838 (regOne!31838 r!7292)) (regOne!31838 (regOne!31838 r!7292))) (= lt!2269107 lt!2269094)) (= lambda!305522 lambda!305520))))

(assert (=> b!5673988 (not (= lambda!305522 lambda!305521))))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(declare-fun lambda!305523 () Int)

(assert (=> bs!1322832 (= (and (= (regTwo!31838 (regOne!31838 r!7292)) (regOne!31838 r!7292)) (= lt!2269107 (regTwo!31838 r!7292))) (= lambda!305523 lambda!305518))))

(assert (=> b!5673988 (not (= lambda!305523 lambda!305520))))

(assert (=> b!5673988 (not (= lambda!305523 lambda!305522))))

(assert (=> b!5673988 (= (and (= (regTwo!31838 (regOne!31838 r!7292)) (regOne!31838 (regOne!31838 r!7292))) (= lt!2269107 lt!2269094)) (= lambda!305523 lambda!305521))))

(assert (=> bs!1322832 (not (= lambda!305523 lambda!305517))))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(assert (=> b!5673988 true))

(declare-fun res!2397829 () Bool)

(declare-fun e!3492640 () Bool)

(assert (=> start!585776 (=> (not res!2397829) (not e!3492640))))

(declare-fun validRegex!7399 (Regex!15663) Bool)

(assert (=> start!585776 (= res!2397829 (validRegex!7399 r!7292))))

(assert (=> start!585776 e!3492640))

(declare-fun e!3492644 () Bool)

(assert (=> start!585776 e!3492644))

(declare-fun condSetEmpty!37929 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63288 0))(
  ( (Nil!63164) (Cons!63164 (h!69612 Regex!15663) (t!376596 List!63288)) )
))
(declare-datatypes ((Context!10094 0))(
  ( (Context!10095 (exprs!5547 List!63288)) )
))
(declare-fun z!1189 () (InoxSet Context!10094))

(assert (=> start!585776 (= condSetEmpty!37929 (= z!1189 ((as const (Array Context!10094 Bool)) false)))))

(declare-fun setRes!37929 () Bool)

(assert (=> start!585776 setRes!37929))

(declare-fun e!3492633 () Bool)

(assert (=> start!585776 e!3492633))

(declare-fun e!3492649 () Bool)

(assert (=> start!585776 e!3492649))

(declare-fun b!5673976 () Bool)

(declare-datatypes ((Unit!156184 0))(
  ( (Unit!156185) )
))
(declare-fun e!3492645 () Unit!156184)

(declare-fun Unit!156186 () Unit!156184)

(assert (=> b!5673976 (= e!3492645 Unit!156186)))

(declare-datatypes ((List!63289 0))(
  ( (Nil!63165) (Cons!63165 (h!69613 C!31596) (t!376597 List!63289)) )
))
(declare-fun s!2326 () List!63289)

(declare-fun lt!2269115 () (InoxSet Context!10094))

(declare-fun lt!2269113 () Unit!156184)

(declare-fun lt!2269108 () (InoxSet Context!10094))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!688 ((InoxSet Context!10094) (InoxSet Context!10094) List!63289) Unit!156184)

(assert (=> b!5673976 (= lt!2269113 (lemmaZipperConcatMatchesSameAsBothZippers!688 lt!2269115 lt!2269108 (t!376597 s!2326)))))

(declare-fun res!2397824 () Bool)

(declare-fun matchZipper!1801 ((InoxSet Context!10094) List!63289) Bool)

(assert (=> b!5673976 (= res!2397824 (matchZipper!1801 lt!2269115 (t!376597 s!2326)))))

(declare-fun e!3492647 () Bool)

(assert (=> b!5673976 (=> res!2397824 e!3492647)))

(assert (=> b!5673976 (= (matchZipper!1801 ((_ map or) lt!2269115 lt!2269108) (t!376597 s!2326)) e!3492647)))

(declare-fun b!5673977 () Bool)

(declare-datatypes ((List!63290 0))(
  ( (Nil!63166) (Cons!63166 (h!69614 Context!10094) (t!376598 List!63290)) )
))
(declare-fun zl!343 () List!63290)

(declare-fun e!3492639 () Bool)

(declare-fun tp!1573693 () Bool)

(declare-fun inv!82404 (Context!10094) Bool)

(assert (=> b!5673977 (= e!3492633 (and (inv!82404 (h!69614 zl!343)) e!3492639 tp!1573693))))

(declare-fun b!5673978 () Bool)

(declare-fun res!2397833 () Bool)

(declare-fun e!3492648 () Bool)

(assert (=> b!5673978 (=> res!2397833 e!3492648)))

(declare-fun isEmpty!35013 (List!63290) Bool)

(assert (=> b!5673978 (= res!2397833 (not (isEmpty!35013 (t!376598 zl!343))))))

(declare-fun b!5673979 () Bool)

(declare-fun res!2397836 () Bool)

(declare-fun e!3492646 () Bool)

(assert (=> b!5673979 (=> res!2397836 e!3492646)))

(declare-fun e!3492642 () Bool)

(assert (=> b!5673979 (= res!2397836 e!3492642)))

(declare-fun res!2397841 () Bool)

(assert (=> b!5673979 (=> (not res!2397841) (not e!3492642))))

(get-info :version)

(assert (=> b!5673979 (= res!2397841 ((_ is Concat!24508) (regOne!31838 r!7292)))))

(declare-fun b!5673980 () Bool)

(declare-fun tp!1573698 () Bool)

(assert (=> b!5673980 (= e!3492639 tp!1573698)))

(declare-fun b!5673981 () Bool)

(declare-fun e!3492643 () Bool)

(declare-fun e!3492634 () Bool)

(assert (=> b!5673981 (= e!3492643 e!3492634)))

(declare-fun res!2397820 () Bool)

(assert (=> b!5673981 (=> res!2397820 e!3492634)))

(declare-fun lt!2269093 () List!63290)

(declare-fun zipperDepthTotal!260 (List!63290) Int)

(assert (=> b!5673981 (= res!2397820 (>= (zipperDepthTotal!260 lt!2269093) (zipperDepthTotal!260 zl!343)))))

(declare-fun lt!2269099 () Context!10094)

(assert (=> b!5673981 (= lt!2269093 (Cons!63166 lt!2269099 Nil!63166))))

(declare-fun b!5673982 () Bool)

(declare-fun res!2397816 () Bool)

(assert (=> b!5673982 (=> res!2397816 e!3492643)))

(declare-fun contextDepthTotal!238 (Context!10094) Int)

(assert (=> b!5673982 (= res!2397816 (>= (contextDepthTotal!238 lt!2269099) (contextDepthTotal!238 (h!69614 zl!343))))))

(declare-fun b!5673983 () Bool)

(declare-fun tp_is_empty!40579 () Bool)

(declare-fun tp!1573694 () Bool)

(assert (=> b!5673983 (= e!3492649 (and tp_is_empty!40579 tp!1573694))))

(declare-fun b!5673984 () Bool)

(declare-fun res!2397831 () Bool)

(assert (=> b!5673984 (=> res!2397831 e!3492648)))

(assert (=> b!5673984 (= res!2397831 (not ((_ is Cons!63164) (exprs!5547 (h!69614 zl!343)))))))

(declare-fun b!5673985 () Bool)

(declare-fun res!2397825 () Bool)

(assert (=> b!5673985 (=> (not res!2397825) (not e!3492640))))

(declare-fun unfocusZipper!1405 (List!63290) Regex!15663)

(assert (=> b!5673985 (= res!2397825 (= r!7292 (unfocusZipper!1405 zl!343)))))

(declare-fun b!5673986 () Bool)

(declare-fun res!2397817 () Bool)

(declare-fun e!3492637 () Bool)

(assert (=> b!5673986 (=> res!2397817 e!3492637)))

(declare-fun lt!2269106 () Bool)

(declare-fun lt!2269103 () (InoxSet Context!10094))

(assert (=> b!5673986 (= res!2397817 (not (= lt!2269106 (matchZipper!1801 lt!2269103 (t!376597 s!2326)))))))

(declare-fun b!5673987 () Bool)

(declare-fun res!2397819 () Bool)

(assert (=> b!5673987 (=> res!2397819 e!3492634)))

(declare-fun zipperDepth!226 (List!63290) Int)

(assert (=> b!5673987 (= res!2397819 (> (zipperDepth!226 lt!2269093) (zipperDepth!226 zl!343)))))

(declare-fun e!3492641 () Bool)

(assert (=> b!5673988 (= e!3492634 e!3492641)))

(declare-fun res!2397835 () Bool)

(assert (=> b!5673988 (=> res!2397835 e!3492641)))

(declare-fun lt!2269089 () Bool)

(declare-fun lt!2269104 () Bool)

(declare-fun lt!2269090 () Bool)

(assert (=> b!5673988 (= res!2397835 (or (not (= lt!2269090 lt!2269104)) (not (= lt!2269090 lt!2269089))))))

(assert (=> b!5673988 (= lt!2269090 (matchZipper!1801 z!1189 s!2326))))

(declare-fun Exists!2763 (Int) Bool)

(assert (=> b!5673988 (= (Exists!2763 lambda!305522) (Exists!2763 lambda!305523))))

(declare-fun lt!2269109 () Unit!156184)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1392 (Regex!15663 Regex!15663 List!63289) Unit!156184)

(assert (=> b!5673988 (= lt!2269109 (lemmaExistCutMatchRandMatchRSpecEquivalent!1392 (regTwo!31838 (regOne!31838 r!7292)) lt!2269107 s!2326))))

(declare-datatypes ((tuple2!65520 0))(
  ( (tuple2!65521 (_1!36063 List!63289) (_2!36063 List!63289)) )
))
(declare-datatypes ((Option!15672 0))(
  ( (None!15671) (Some!15671 (v!51720 tuple2!65520)) )
))
(declare-fun isDefined!12375 (Option!15672) Bool)

(declare-fun findConcatSeparation!2086 (Regex!15663 Regex!15663 List!63289 List!63289 List!63289) Option!15672)

(assert (=> b!5673988 (= (isDefined!12375 (findConcatSeparation!2086 (regTwo!31838 (regOne!31838 r!7292)) lt!2269107 Nil!63165 s!2326 s!2326)) (Exists!2763 lambda!305522))))

(declare-fun lt!2269117 () Unit!156184)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1850 (Regex!15663 Regex!15663 List!63289) Unit!156184)

(assert (=> b!5673988 (= lt!2269117 (lemmaFindConcatSeparationEquivalentToExists!1850 (regTwo!31838 (regOne!31838 r!7292)) lt!2269107 s!2326))))

(declare-fun generalisedConcat!1278 (List!63288) Regex!15663)

(assert (=> b!5673988 (= lt!2269107 (generalisedConcat!1278 (t!376596 (exprs!5547 (h!69614 zl!343)))))))

(declare-fun matchR!7848 (Regex!15663 List!63289) Bool)

(declare-fun matchRSpec!2766 (Regex!15663 List!63289) Bool)

(assert (=> b!5673988 (= (matchR!7848 lt!2269094 s!2326) (matchRSpec!2766 lt!2269094 s!2326))))

(declare-fun lt!2269121 () Unit!156184)

(declare-fun mainMatchTheorem!2766 (Regex!15663 List!63289) Unit!156184)

(assert (=> b!5673988 (= lt!2269121 (mainMatchTheorem!2766 lt!2269094 s!2326))))

(assert (=> b!5673988 (= (Exists!2763 lambda!305520) (Exists!2763 lambda!305521))))

(declare-fun lt!2269122 () Unit!156184)

(assert (=> b!5673988 (= lt!2269122 (lemmaExistCutMatchRandMatchRSpecEquivalent!1392 (regOne!31838 (regOne!31838 r!7292)) lt!2269094 s!2326))))

(assert (=> b!5673988 (= (isDefined!12375 (findConcatSeparation!2086 (regOne!31838 (regOne!31838 r!7292)) lt!2269094 Nil!63165 s!2326 s!2326)) (Exists!2763 lambda!305520))))

(declare-fun lt!2269096 () Unit!156184)

(assert (=> b!5673988 (= lt!2269096 (lemmaFindConcatSeparationEquivalentToExists!1850 (regOne!31838 (regOne!31838 r!7292)) lt!2269094 s!2326))))

(declare-fun lt!2269119 () List!63288)

(assert (=> b!5673988 (= lt!2269094 (generalisedConcat!1278 lt!2269119))))

(declare-fun lt!2269091 () Regex!15663)

(assert (=> b!5673988 (= lt!2269089 (matchRSpec!2766 lt!2269091 s!2326))))

(declare-fun lt!2269118 () Unit!156184)

(assert (=> b!5673988 (= lt!2269118 (mainMatchTheorem!2766 lt!2269091 s!2326))))

(assert (=> b!5673988 (= lt!2269089 lt!2269104)))

(declare-fun lt!2269105 () (InoxSet Context!10094))

(assert (=> b!5673988 (= lt!2269104 (matchZipper!1801 lt!2269105 s!2326))))

(assert (=> b!5673988 (= lt!2269089 (matchR!7848 lt!2269091 s!2326))))

(declare-fun lt!2269114 () Unit!156184)

(declare-fun theoremZipperRegexEquiv!643 ((InoxSet Context!10094) List!63290 Regex!15663 List!63289) Unit!156184)

(assert (=> b!5673988 (= lt!2269114 (theoremZipperRegexEquiv!643 lt!2269105 lt!2269093 lt!2269091 s!2326))))

(declare-fun lt!2269110 () List!63288)

(assert (=> b!5673988 (= lt!2269091 (generalisedConcat!1278 lt!2269110))))

(declare-fun b!5673989 () Bool)

(declare-fun Unit!156187 () Unit!156184)

(assert (=> b!5673989 (= e!3492645 Unit!156187)))

(declare-fun b!5673990 () Bool)

(declare-fun e!3492638 () Bool)

(declare-fun tp!1573690 () Bool)

(assert (=> b!5673990 (= e!3492638 tp!1573690)))

(declare-fun b!5673991 () Bool)

(declare-fun tp!1573692 () Bool)

(assert (=> b!5673991 (= e!3492644 tp!1573692)))

(declare-fun b!5673992 () Bool)

(declare-fun res!2397838 () Bool)

(declare-fun e!3492650 () Bool)

(assert (=> b!5673992 (=> res!2397838 e!3492650)))

(declare-fun isEmpty!35014 (List!63288) Bool)

(assert (=> b!5673992 (= res!2397838 (isEmpty!35014 (t!376596 (exprs!5547 (h!69614 zl!343)))))))

(declare-fun b!5673993 () Bool)

(assert (=> b!5673993 (= e!3492637 e!3492643)))

(declare-fun res!2397834 () Bool)

(assert (=> b!5673993 (=> res!2397834 e!3492643)))

(declare-fun lt!2269100 () Regex!15663)

(assert (=> b!5673993 (= res!2397834 (not (= (exprs!5547 (h!69614 zl!343)) (Cons!63164 lt!2269100 (t!376596 (exprs!5547 (h!69614 zl!343)))))))))

(assert (=> b!5673993 (= lt!2269100 (Concat!24508 (regOne!31838 (regOne!31838 r!7292)) (regTwo!31838 (regOne!31838 r!7292))))))

(assert (=> b!5673994 (= e!3492648 e!3492650)))

(declare-fun res!2397821 () Bool)

(assert (=> b!5673994 (=> res!2397821 e!3492650)))

(declare-fun lt!2269095 () Bool)

(declare-fun lt!2269111 () Bool)

(assert (=> b!5673994 (= res!2397821 (or (not (= lt!2269095 lt!2269111)) ((_ is Nil!63165) s!2326)))))

(assert (=> b!5673994 (= (Exists!2763 lambda!305517) (Exists!2763 lambda!305518))))

(declare-fun lt!2269101 () Unit!156184)

(assert (=> b!5673994 (= lt!2269101 (lemmaExistCutMatchRandMatchRSpecEquivalent!1392 (regOne!31838 r!7292) (regTwo!31838 r!7292) s!2326))))

(assert (=> b!5673994 (= lt!2269111 (Exists!2763 lambda!305517))))

(assert (=> b!5673994 (= lt!2269111 (isDefined!12375 (findConcatSeparation!2086 (regOne!31838 r!7292) (regTwo!31838 r!7292) Nil!63165 s!2326 s!2326)))))

(declare-fun lt!2269088 () Unit!156184)

(assert (=> b!5673994 (= lt!2269088 (lemmaFindConcatSeparationEquivalentToExists!1850 (regOne!31838 r!7292) (regTwo!31838 r!7292) s!2326))))

(declare-fun b!5673995 () Bool)

(declare-fun e!3492636 () Bool)

(declare-fun e!3492635 () Bool)

(assert (=> b!5673995 (= e!3492636 e!3492635)))

(declare-fun res!2397826 () Bool)

(assert (=> b!5673995 (=> res!2397826 e!3492635)))

(declare-fun lt!2269116 () (InoxSet Context!10094))

(assert (=> b!5673995 (= res!2397826 (not (= lt!2269106 (matchZipper!1801 lt!2269116 (t!376597 s!2326)))))))

(assert (=> b!5673995 (= lt!2269106 (matchZipper!1801 lt!2269115 (t!376597 s!2326)))))

(declare-fun b!5673996 () Bool)

(assert (=> b!5673996 (= e!3492641 (= lt!2269095 (matchR!7848 (Concat!24508 lt!2269100 (regTwo!31838 r!7292)) s!2326)))))

(declare-fun b!5673997 () Bool)

(declare-fun res!2397830 () Bool)

(assert (=> b!5673997 (=> res!2397830 e!3492648)))

(declare-fun generalisedUnion!1526 (List!63288) Regex!15663)

(declare-fun unfocusZipperList!1091 (List!63290) List!63288)

(assert (=> b!5673997 (= res!2397830 (not (= r!7292 (generalisedUnion!1526 (unfocusZipperList!1091 zl!343)))))))

(declare-fun b!5673998 () Bool)

(assert (=> b!5673998 (= e!3492647 (matchZipper!1801 lt!2269108 (t!376597 s!2326)))))

(declare-fun b!5673999 () Bool)

(declare-fun nullable!5695 (Regex!15663) Bool)

(assert (=> b!5673999 (= e!3492642 (nullable!5695 (regOne!31838 (regOne!31838 r!7292))))))

(assert (=> b!5674000 (= e!3492650 e!3492646)))

(declare-fun res!2397840 () Bool)

(assert (=> b!5674000 (=> res!2397840 e!3492646)))

(assert (=> b!5674000 (= res!2397840 (or (and ((_ is ElementMatch!15663) (regOne!31838 r!7292)) (= (c!998071 (regOne!31838 r!7292)) (h!69613 s!2326))) ((_ is Union!15663) (regOne!31838 r!7292))))))

(declare-fun lt!2269097 () Unit!156184)

(assert (=> b!5674000 (= lt!2269097 e!3492645)))

(declare-fun c!998070 () Bool)

(assert (=> b!5674000 (= c!998070 (nullable!5695 (h!69612 (exprs!5547 (h!69614 zl!343)))))))

(declare-fun lambda!305519 () Int)

(declare-fun flatMap!1276 ((InoxSet Context!10094) Int) (InoxSet Context!10094))

(declare-fun derivationStepZipperUp!931 (Context!10094 C!31596) (InoxSet Context!10094))

(assert (=> b!5674000 (= (flatMap!1276 z!1189 lambda!305519) (derivationStepZipperUp!931 (h!69614 zl!343) (h!69613 s!2326)))))

(declare-fun lt!2269120 () Unit!156184)

(declare-fun lemmaFlatMapOnSingletonSet!808 ((InoxSet Context!10094) Context!10094 Int) Unit!156184)

(assert (=> b!5674000 (= lt!2269120 (lemmaFlatMapOnSingletonSet!808 z!1189 (h!69614 zl!343) lambda!305519))))

(declare-fun lt!2269098 () Context!10094)

(assert (=> b!5674000 (= lt!2269108 (derivationStepZipperUp!931 lt!2269098 (h!69613 s!2326)))))

(declare-fun derivationStepZipperDown!1005 (Regex!15663 Context!10094 C!31596) (InoxSet Context!10094))

(assert (=> b!5674000 (= lt!2269115 (derivationStepZipperDown!1005 (h!69612 (exprs!5547 (h!69614 zl!343))) lt!2269098 (h!69613 s!2326)))))

(assert (=> b!5674000 (= lt!2269098 (Context!10095 (t!376596 (exprs!5547 (h!69614 zl!343)))))))

(declare-fun lt!2269112 () (InoxSet Context!10094))

(assert (=> b!5674000 (= lt!2269112 (derivationStepZipperUp!931 (Context!10095 (Cons!63164 (h!69612 (exprs!5547 (h!69614 zl!343))) (t!376596 (exprs!5547 (h!69614 zl!343))))) (h!69613 s!2326)))))

(declare-fun b!5674001 () Bool)

(assert (=> b!5674001 (= e!3492635 e!3492637)))

(declare-fun res!2397822 () Bool)

(assert (=> b!5674001 (=> res!2397822 e!3492637)))

(assert (=> b!5674001 (= res!2397822 (not (= lt!2269103 lt!2269116)))))

(assert (=> b!5674001 (= (flatMap!1276 lt!2269105 lambda!305519) (derivationStepZipperUp!931 lt!2269099 (h!69613 s!2326)))))

(declare-fun lt!2269092 () Unit!156184)

(assert (=> b!5674001 (= lt!2269092 (lemmaFlatMapOnSingletonSet!808 lt!2269105 lt!2269099 lambda!305519))))

(declare-fun lt!2269102 () (InoxSet Context!10094))

(assert (=> b!5674001 (= lt!2269102 (derivationStepZipperUp!931 lt!2269099 (h!69613 s!2326)))))

(declare-fun derivationStepZipper!1748 ((InoxSet Context!10094) C!31596) (InoxSet Context!10094))

(assert (=> b!5674001 (= lt!2269103 (derivationStepZipper!1748 lt!2269105 (h!69613 s!2326)))))

(assert (=> b!5674001 (= lt!2269105 (store ((as const (Array Context!10094 Bool)) false) lt!2269099 true))))

(assert (=> b!5674001 (= lt!2269099 (Context!10095 lt!2269110))))

(assert (=> b!5674001 (= lt!2269110 (Cons!63164 (regOne!31838 (regOne!31838 r!7292)) lt!2269119))))

(declare-fun b!5674002 () Bool)

(declare-fun res!2397839 () Bool)

(assert (=> b!5674002 (=> res!2397839 e!3492641)))

(assert (=> b!5674002 (= res!2397839 (not (= lt!2269095 (matchR!7848 (Concat!24508 (regOne!31838 r!7292) (regTwo!31838 r!7292)) s!2326))))))

(declare-fun b!5674003 () Bool)

(assert (=> b!5674003 (= e!3492644 tp_is_empty!40579)))

(declare-fun b!5674004 () Bool)

(declare-fun res!2397823 () Bool)

(assert (=> b!5674004 (=> res!2397823 e!3492646)))

(assert (=> b!5674004 (= res!2397823 (not ((_ is Concat!24508) (regOne!31838 r!7292))))))

(declare-fun b!5674005 () Bool)

(declare-fun res!2397837 () Bool)

(assert (=> b!5674005 (=> res!2397837 e!3492648)))

(assert (=> b!5674005 (= res!2397837 (not (= r!7292 (generalisedConcat!1278 (exprs!5547 (h!69614 zl!343))))))))

(declare-fun b!5674006 () Bool)

(declare-fun tp!1573689 () Bool)

(declare-fun tp!1573695 () Bool)

(assert (=> b!5674006 (= e!3492644 (and tp!1573689 tp!1573695))))

(declare-fun b!5674007 () Bool)

(declare-fun tp!1573691 () Bool)

(declare-fun tp!1573696 () Bool)

(assert (=> b!5674007 (= e!3492644 (and tp!1573691 tp!1573696))))

(declare-fun b!5674008 () Bool)

(declare-fun res!2397828 () Bool)

(assert (=> b!5674008 (=> (not res!2397828) (not e!3492640))))

(declare-fun toList!9447 ((InoxSet Context!10094)) List!63290)

(assert (=> b!5674008 (= res!2397828 (= (toList!9447 z!1189) zl!343))))

(declare-fun setElem!37929 () Context!10094)

(declare-fun tp!1573697 () Bool)

(declare-fun setNonEmpty!37929 () Bool)

(assert (=> setNonEmpty!37929 (= setRes!37929 (and tp!1573697 (inv!82404 setElem!37929) e!3492638))))

(declare-fun setRest!37929 () (InoxSet Context!10094))

(assert (=> setNonEmpty!37929 (= z!1189 ((_ map or) (store ((as const (Array Context!10094 Bool)) false) setElem!37929 true) setRest!37929))))

(declare-fun b!5674009 () Bool)

(declare-fun res!2397827 () Bool)

(assert (=> b!5674009 (=> res!2397827 e!3492648)))

(assert (=> b!5674009 (= res!2397827 (or ((_ is EmptyExpr!15663) r!7292) ((_ is EmptyLang!15663) r!7292) ((_ is ElementMatch!15663) r!7292) ((_ is Union!15663) r!7292) (not ((_ is Concat!24508) r!7292))))))

(declare-fun b!5674010 () Bool)

(assert (=> b!5674010 (= e!3492646 e!3492636)))

(declare-fun res!2397832 () Bool)

(assert (=> b!5674010 (=> res!2397832 e!3492636)))

(assert (=> b!5674010 (= res!2397832 (not (= lt!2269115 lt!2269116)))))

(assert (=> b!5674010 (= lt!2269116 (derivationStepZipperDown!1005 (regOne!31838 (regOne!31838 r!7292)) (Context!10095 lt!2269119) (h!69613 s!2326)))))

(assert (=> b!5674010 (= lt!2269119 (Cons!63164 (regTwo!31838 (regOne!31838 r!7292)) (t!376596 (exprs!5547 (h!69614 zl!343)))))))

(declare-fun setIsEmpty!37929 () Bool)

(assert (=> setIsEmpty!37929 setRes!37929))

(declare-fun b!5674011 () Bool)

(assert (=> b!5674011 (= e!3492640 (not e!3492648))))

(declare-fun res!2397818 () Bool)

(assert (=> b!5674011 (=> res!2397818 e!3492648)))

(assert (=> b!5674011 (= res!2397818 (not ((_ is Cons!63166) zl!343)))))

(assert (=> b!5674011 (= lt!2269095 (matchRSpec!2766 r!7292 s!2326))))

(assert (=> b!5674011 (= lt!2269095 (matchR!7848 r!7292 s!2326))))

(declare-fun lt!2269087 () Unit!156184)

(assert (=> b!5674011 (= lt!2269087 (mainMatchTheorem!2766 r!7292 s!2326))))

(assert (= (and start!585776 res!2397829) b!5674008))

(assert (= (and b!5674008 res!2397828) b!5673985))

(assert (= (and b!5673985 res!2397825) b!5674011))

(assert (= (and b!5674011 (not res!2397818)) b!5673978))

(assert (= (and b!5673978 (not res!2397833)) b!5674005))

(assert (= (and b!5674005 (not res!2397837)) b!5673984))

(assert (= (and b!5673984 (not res!2397831)) b!5673997))

(assert (= (and b!5673997 (not res!2397830)) b!5674009))

(assert (= (and b!5674009 (not res!2397827)) b!5673994))

(assert (= (and b!5673994 (not res!2397821)) b!5673992))

(assert (= (and b!5673992 (not res!2397838)) b!5674000))

(assert (= (and b!5674000 c!998070) b!5673976))

(assert (= (and b!5674000 (not c!998070)) b!5673989))

(assert (= (and b!5673976 (not res!2397824)) b!5673998))

(assert (= (and b!5674000 (not res!2397840)) b!5673979))

(assert (= (and b!5673979 res!2397841) b!5673999))

(assert (= (and b!5673979 (not res!2397836)) b!5674004))

(assert (= (and b!5674004 (not res!2397823)) b!5674010))

(assert (= (and b!5674010 (not res!2397832)) b!5673995))

(assert (= (and b!5673995 (not res!2397826)) b!5674001))

(assert (= (and b!5674001 (not res!2397822)) b!5673986))

(assert (= (and b!5673986 (not res!2397817)) b!5673993))

(assert (= (and b!5673993 (not res!2397834)) b!5673982))

(assert (= (and b!5673982 (not res!2397816)) b!5673981))

(assert (= (and b!5673981 (not res!2397820)) b!5673987))

(assert (= (and b!5673987 (not res!2397819)) b!5673988))

(assert (= (and b!5673988 (not res!2397835)) b!5674002))

(assert (= (and b!5674002 (not res!2397839)) b!5673996))

(assert (= (and start!585776 ((_ is ElementMatch!15663) r!7292)) b!5674003))

(assert (= (and start!585776 ((_ is Concat!24508) r!7292)) b!5674006))

(assert (= (and start!585776 ((_ is Star!15663) r!7292)) b!5673991))

(assert (= (and start!585776 ((_ is Union!15663) r!7292)) b!5674007))

(assert (= (and start!585776 condSetEmpty!37929) setIsEmpty!37929))

(assert (= (and start!585776 (not condSetEmpty!37929)) setNonEmpty!37929))

(assert (= setNonEmpty!37929 b!5673990))

(assert (= b!5673977 b!5673980))

(assert (= (and start!585776 ((_ is Cons!63166) zl!343)) b!5673977))

(assert (= (and start!585776 ((_ is Cons!63165) s!2326)) b!5673983))

(declare-fun m!6634952 () Bool)

(assert (=> b!5673999 m!6634952))

(declare-fun m!6634954 () Bool)

(assert (=> b!5673988 m!6634954))

(declare-fun m!6634956 () Bool)

(assert (=> b!5673988 m!6634956))

(declare-fun m!6634958 () Bool)

(assert (=> b!5673988 m!6634958))

(declare-fun m!6634960 () Bool)

(assert (=> b!5673988 m!6634960))

(declare-fun m!6634962 () Bool)

(assert (=> b!5673988 m!6634962))

(declare-fun m!6634964 () Bool)

(assert (=> b!5673988 m!6634964))

(declare-fun m!6634966 () Bool)

(assert (=> b!5673988 m!6634966))

(declare-fun m!6634968 () Bool)

(assert (=> b!5673988 m!6634968))

(declare-fun m!6634970 () Bool)

(assert (=> b!5673988 m!6634970))

(declare-fun m!6634972 () Bool)

(assert (=> b!5673988 m!6634972))

(declare-fun m!6634974 () Bool)

(assert (=> b!5673988 m!6634974))

(declare-fun m!6634976 () Bool)

(assert (=> b!5673988 m!6634976))

(declare-fun m!6634978 () Bool)

(assert (=> b!5673988 m!6634978))

(assert (=> b!5673988 m!6634970))

(declare-fun m!6634980 () Bool)

(assert (=> b!5673988 m!6634980))

(declare-fun m!6634982 () Bool)

(assert (=> b!5673988 m!6634982))

(declare-fun m!6634984 () Bool)

(assert (=> b!5673988 m!6634984))

(declare-fun m!6634986 () Bool)

(assert (=> b!5673988 m!6634986))

(declare-fun m!6634988 () Bool)

(assert (=> b!5673988 m!6634988))

(declare-fun m!6634990 () Bool)

(assert (=> b!5673988 m!6634990))

(declare-fun m!6634992 () Bool)

(assert (=> b!5673988 m!6634992))

(assert (=> b!5673988 m!6634964))

(declare-fun m!6634994 () Bool)

(assert (=> b!5673988 m!6634994))

(declare-fun m!6634996 () Bool)

(assert (=> b!5673988 m!6634996))

(assert (=> b!5673988 m!6634986))

(declare-fun m!6634998 () Bool)

(assert (=> b!5673988 m!6634998))

(assert (=> b!5673988 m!6634978))

(declare-fun m!6635000 () Bool)

(assert (=> b!5673988 m!6635000))

(declare-fun m!6635002 () Bool)

(assert (=> b!5673985 m!6635002))

(declare-fun m!6635004 () Bool)

(assert (=> b!5673978 m!6635004))

(declare-fun m!6635006 () Bool)

(assert (=> b!5674011 m!6635006))

(declare-fun m!6635008 () Bool)

(assert (=> b!5674011 m!6635008))

(declare-fun m!6635010 () Bool)

(assert (=> b!5674011 m!6635010))

(declare-fun m!6635012 () Bool)

(assert (=> b!5674008 m!6635012))

(declare-fun m!6635014 () Bool)

(assert (=> b!5674010 m!6635014))

(declare-fun m!6635016 () Bool)

(assert (=> b!5674002 m!6635016))

(declare-fun m!6635018 () Bool)

(assert (=> b!5673997 m!6635018))

(assert (=> b!5673997 m!6635018))

(declare-fun m!6635020 () Bool)

(assert (=> b!5673997 m!6635020))

(declare-fun m!6635022 () Bool)

(assert (=> b!5673995 m!6635022))

(declare-fun m!6635024 () Bool)

(assert (=> b!5673995 m!6635024))

(declare-fun m!6635026 () Bool)

(assert (=> b!5673996 m!6635026))

(declare-fun m!6635028 () Bool)

(assert (=> b!5673982 m!6635028))

(declare-fun m!6635030 () Bool)

(assert (=> b!5673982 m!6635030))

(declare-fun m!6635032 () Bool)

(assert (=> start!585776 m!6635032))

(declare-fun m!6635034 () Bool)

(assert (=> b!5673992 m!6635034))

(declare-fun m!6635036 () Bool)

(assert (=> b!5673981 m!6635036))

(declare-fun m!6635038 () Bool)

(assert (=> b!5673981 m!6635038))

(declare-fun m!6635040 () Bool)

(assert (=> b!5673987 m!6635040))

(declare-fun m!6635042 () Bool)

(assert (=> b!5673987 m!6635042))

(declare-fun m!6635044 () Bool)

(assert (=> b!5673986 m!6635044))

(declare-fun m!6635046 () Bool)

(assert (=> b!5674005 m!6635046))

(declare-fun m!6635048 () Bool)

(assert (=> b!5673976 m!6635048))

(assert (=> b!5673976 m!6635024))

(declare-fun m!6635050 () Bool)

(assert (=> b!5673976 m!6635050))

(declare-fun m!6635052 () Bool)

(assert (=> b!5674000 m!6635052))

(declare-fun m!6635054 () Bool)

(assert (=> b!5674000 m!6635054))

(declare-fun m!6635056 () Bool)

(assert (=> b!5674000 m!6635056))

(declare-fun m!6635058 () Bool)

(assert (=> b!5674000 m!6635058))

(declare-fun m!6635060 () Bool)

(assert (=> b!5674000 m!6635060))

(declare-fun m!6635062 () Bool)

(assert (=> b!5674000 m!6635062))

(declare-fun m!6635064 () Bool)

(assert (=> b!5674000 m!6635064))

(declare-fun m!6635066 () Bool)

(assert (=> b!5673994 m!6635066))

(declare-fun m!6635068 () Bool)

(assert (=> b!5673994 m!6635068))

(declare-fun m!6635070 () Bool)

(assert (=> b!5673994 m!6635070))

(declare-fun m!6635072 () Bool)

(assert (=> b!5673994 m!6635072))

(assert (=> b!5673994 m!6635068))

(declare-fun m!6635074 () Bool)

(assert (=> b!5673994 m!6635074))

(declare-fun m!6635076 () Bool)

(assert (=> b!5673994 m!6635076))

(assert (=> b!5673994 m!6635066))

(declare-fun m!6635078 () Bool)

(assert (=> b!5673977 m!6635078))

(declare-fun m!6635080 () Bool)

(assert (=> setNonEmpty!37929 m!6635080))

(declare-fun m!6635082 () Bool)

(assert (=> b!5674001 m!6635082))

(declare-fun m!6635084 () Bool)

(assert (=> b!5674001 m!6635084))

(declare-fun m!6635086 () Bool)

(assert (=> b!5674001 m!6635086))

(declare-fun m!6635088 () Bool)

(assert (=> b!5674001 m!6635088))

(declare-fun m!6635090 () Bool)

(assert (=> b!5674001 m!6635090))

(declare-fun m!6635092 () Bool)

(assert (=> b!5673998 m!6635092))

(check-sat (not b!5674006) (not b!5674007) (not b!5674008) (not b!5673978) (not b!5674010) (not b!5673996) (not b!5673981) (not b!5673999) (not b!5673982) (not b!5673995) (not b!5673983) (not setNonEmpty!37929) (not b!5673988) (not b!5674001) (not b!5673986) (not b!5674011) (not b!5673990) (not b!5674000) (not b!5673985) (not b!5673987) (not b!5673998) (not b!5673980) (not b!5673994) (not start!585776) (not b!5674002) (not b!5674005) (not b!5673997) (not b!5673977) tp_is_empty!40579 (not b!5673992) (not b!5673976) (not b!5673991))
(check-sat)
