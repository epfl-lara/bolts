; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!617140 () Bool)

(assert start!617140)

(declare-fun b!6187007 () Bool)

(assert (=> b!6187007 true))

(assert (=> b!6187007 true))

(declare-fun lambda!337785 () Int)

(declare-fun lambda!337784 () Int)

(assert (=> b!6187007 (not (= lambda!337785 lambda!337784))))

(assert (=> b!6187007 true))

(assert (=> b!6187007 true))

(declare-fun b!6187015 () Bool)

(assert (=> b!6187015 true))

(declare-fun b!6186985 () Bool)

(declare-fun res!2559699 () Bool)

(declare-fun e!3768098 () Bool)

(assert (=> b!6186985 (=> res!2559699 e!3768098)))

(declare-datatypes ((C!32518 0))(
  ( (C!32519 (val!25961 Int)) )
))
(declare-datatypes ((Regex!16124 0))(
  ( (ElementMatch!16124 (c!1115927 C!32518)) (Concat!24969 (regOne!32760 Regex!16124) (regTwo!32760 Regex!16124)) (EmptyExpr!16124) (Star!16124 (reg!16453 Regex!16124)) (EmptyLang!16124) (Union!16124 (regOne!32761 Regex!16124) (regTwo!32761 Regex!16124)) )
))
(declare-fun r!7292 () Regex!16124)

(declare-datatypes ((List!64671 0))(
  ( (Nil!64547) (Cons!64547 (h!70995 Regex!16124) (t!378181 List!64671)) )
))
(declare-datatypes ((Context!11016 0))(
  ( (Context!11017 (exprs!6008 List!64671)) )
))
(declare-datatypes ((List!64672 0))(
  ( (Nil!64548) (Cons!64548 (h!70996 Context!11016) (t!378182 List!64672)) )
))
(declare-fun zl!343 () List!64672)

(declare-fun generalisedUnion!1968 (List!64671) Regex!16124)

(declare-fun unfocusZipperList!1545 (List!64672) List!64671)

(assert (=> b!6186985 (= res!2559699 (not (= r!7292 (generalisedUnion!1968 (unfocusZipperList!1545 zl!343)))))))

(declare-fun b!6186986 () Bool)

(declare-fun e!3768105 () Bool)

(declare-fun lt!2339825 () (Set Context!11016))

(declare-datatypes ((List!64673 0))(
  ( (Nil!64549) (Cons!64549 (h!70997 C!32518) (t!378183 List!64673)) )
))
(declare-fun s!2326 () List!64673)

(declare-fun matchZipper!2136 ((Set Context!11016) List!64673) Bool)

(assert (=> b!6186986 (= e!3768105 (matchZipper!2136 lt!2339825 (t!378183 s!2326)))))

(declare-fun b!6186988 () Bool)

(declare-fun res!2559681 () Bool)

(assert (=> b!6186988 (=> res!2559681 e!3768098)))

(assert (=> b!6186988 (= res!2559681 (or (is-EmptyExpr!16124 r!7292) (is-EmptyLang!16124 r!7292) (is-ElementMatch!16124 r!7292) (is-Union!16124 r!7292) (not (is-Concat!24969 r!7292))))))

(declare-fun b!6186989 () Bool)

(declare-fun res!2559702 () Bool)

(assert (=> b!6186989 (=> res!2559702 e!3768098)))

(declare-fun isEmpty!36529 (List!64672) Bool)

(assert (=> b!6186989 (= res!2559702 (not (isEmpty!36529 (t!378182 zl!343))))))

(declare-fun b!6186990 () Bool)

(declare-fun e!3768090 () Bool)

(declare-fun tp_is_empty!41501 () Bool)

(assert (=> b!6186990 (= e!3768090 tp_is_empty!41501)))

(declare-fun b!6186991 () Bool)

(declare-fun e!3768100 () Bool)

(assert (=> b!6186991 (= e!3768100 (matchZipper!2136 lt!2339825 (t!378183 s!2326)))))

(declare-fun b!6186992 () Bool)

(declare-fun e!3768101 () Bool)

(declare-fun e!3768092 () Bool)

(assert (=> b!6186992 (= e!3768101 e!3768092)))

(declare-fun res!2559703 () Bool)

(assert (=> b!6186992 (=> res!2559703 e!3768092)))

(declare-fun lt!2339823 () (Set Context!11016))

(declare-fun lt!2339807 () (Set Context!11016))

(assert (=> b!6186992 (= res!2559703 (not (= lt!2339823 lt!2339807)))))

(declare-fun lt!2339816 () (Set Context!11016))

(declare-fun lt!2339794 () (Set Context!11016))

(assert (=> b!6186992 (= lt!2339807 (set.union lt!2339816 lt!2339794))))

(declare-fun lt!2339795 () Context!11016)

(declare-fun derivationStepZipperDown!1372 (Regex!16124 Context!11016 C!32518) (Set Context!11016))

(assert (=> b!6186992 (= lt!2339794 (derivationStepZipperDown!1372 (regTwo!32761 (regOne!32760 r!7292)) lt!2339795 (h!70997 s!2326)))))

(assert (=> b!6186992 (= lt!2339816 (derivationStepZipperDown!1372 (regOne!32761 (regOne!32760 r!7292)) lt!2339795 (h!70997 s!2326)))))

(declare-fun b!6186993 () Bool)

(declare-fun e!3768094 () Bool)

(assert (=> b!6186993 (= e!3768094 (not (matchZipper!2136 lt!2339794 (t!378183 s!2326))))))

(declare-fun tp!1727005 () Bool)

(declare-fun setElem!41959 () Context!11016)

(declare-fun e!3768089 () Bool)

(declare-fun setNonEmpty!41959 () Bool)

(declare-fun setRes!41959 () Bool)

(declare-fun inv!83558 (Context!11016) Bool)

(assert (=> setNonEmpty!41959 (= setRes!41959 (and tp!1727005 (inv!83558 setElem!41959) e!3768089))))

(declare-fun z!1189 () (Set Context!11016))

(declare-fun setRest!41959 () (Set Context!11016))

(assert (=> setNonEmpty!41959 (= z!1189 (set.union (set.insert setElem!41959 (as set.empty (Set Context!11016))) setRest!41959))))

(declare-fun b!6186994 () Bool)

(declare-fun e!3768087 () Bool)

(declare-fun e!3768104 () Bool)

(assert (=> b!6186994 (= e!3768087 e!3768104)))

(declare-fun res!2559697 () Bool)

(assert (=> b!6186994 (=> res!2559697 e!3768104)))

(declare-fun lt!2339810 () List!64672)

(declare-fun lt!2339817 () Int)

(declare-fun zipperDepthTotal!307 (List!64672) Int)

(assert (=> b!6186994 (= res!2559697 (>= (zipperDepthTotal!307 lt!2339810) lt!2339817))))

(declare-fun lt!2339792 () Context!11016)

(assert (=> b!6186994 (= lt!2339810 (Cons!64548 lt!2339792 Nil!64548))))

(declare-fun b!6186995 () Bool)

(declare-fun e!3768091 () Bool)

(assert (=> b!6186995 (= e!3768091 (not e!3768098))))

(declare-fun res!2559693 () Bool)

(assert (=> b!6186995 (=> res!2559693 e!3768098)))

(assert (=> b!6186995 (= res!2559693 (not (is-Cons!64548 zl!343)))))

(declare-fun lt!2339790 () Bool)

(declare-fun matchRSpec!3225 (Regex!16124 List!64673) Bool)

(assert (=> b!6186995 (= lt!2339790 (matchRSpec!3225 r!7292 s!2326))))

(declare-fun matchR!8307 (Regex!16124 List!64673) Bool)

(assert (=> b!6186995 (= lt!2339790 (matchR!8307 r!7292 s!2326))))

(declare-datatypes ((Unit!157771 0))(
  ( (Unit!157772) )
))
(declare-fun lt!2339801 () Unit!157771)

(declare-fun mainMatchTheorem!3225 (Regex!16124 List!64673) Unit!157771)

(assert (=> b!6186995 (= lt!2339801 (mainMatchTheorem!3225 r!7292 s!2326))))

(declare-fun b!6186996 () Bool)

(declare-fun e!3768095 () Bool)

(declare-fun tp!1727002 () Bool)

(assert (=> b!6186996 (= e!3768095 tp!1727002)))

(declare-fun b!6186997 () Bool)

(declare-fun e!3768086 () Unit!157771)

(declare-fun Unit!157773 () Unit!157771)

(assert (=> b!6186997 (= e!3768086 Unit!157773)))

(declare-fun b!6186998 () Bool)

(declare-fun e!3768099 () Bool)

(assert (=> b!6186998 (= e!3768092 e!3768099)))

(declare-fun res!2559694 () Bool)

(assert (=> b!6186998 (=> res!2559694 e!3768099)))

(assert (=> b!6186998 (= res!2559694 e!3768094)))

(declare-fun res!2559695 () Bool)

(assert (=> b!6186998 (=> (not res!2559695) (not e!3768094))))

(declare-fun lt!2339800 () Bool)

(assert (=> b!6186998 (= res!2559695 (not (= (matchZipper!2136 lt!2339823 (t!378183 s!2326)) lt!2339800)))))

(declare-fun e!3768096 () Bool)

(assert (=> b!6186998 (= (matchZipper!2136 lt!2339807 (t!378183 s!2326)) e!3768096)))

(declare-fun res!2559687 () Bool)

(assert (=> b!6186998 (=> res!2559687 e!3768096)))

(assert (=> b!6186998 (= res!2559687 lt!2339800)))

(assert (=> b!6186998 (= lt!2339800 (matchZipper!2136 lt!2339816 (t!378183 s!2326)))))

(declare-fun lt!2339808 () Unit!157771)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!955 ((Set Context!11016) (Set Context!11016) List!64673) Unit!157771)

(assert (=> b!6186998 (= lt!2339808 (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339816 lt!2339794 (t!378183 s!2326)))))

(declare-fun e!3768097 () Bool)

(declare-fun tp!1727003 () Bool)

(declare-fun b!6186999 () Bool)

(assert (=> b!6186999 (= e!3768097 (and (inv!83558 (h!70996 zl!343)) e!3768095 tp!1727003))))

(declare-fun b!6187000 () Bool)

(declare-fun res!2559689 () Bool)

(declare-fun e!3768108 () Bool)

(assert (=> b!6187000 (=> (not res!2559689) (not e!3768108))))

(declare-fun toList!9908 ((Set Context!11016)) List!64672)

(assert (=> b!6187000 (= res!2559689 (= (toList!9908 z!1189) zl!343))))

(declare-fun b!6187001 () Bool)

(declare-fun e!3768109 () Bool)

(declare-fun lt!2339799 () (Set Context!11016))

(assert (=> b!6187001 (= e!3768109 (matchZipper!2136 lt!2339799 s!2326))))

(declare-fun b!6186987 () Bool)

(declare-fun res!2559682 () Bool)

(assert (=> b!6186987 (=> res!2559682 e!3768098)))

(assert (=> b!6186987 (= res!2559682 (not (is-Cons!64547 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun res!2559696 () Bool)

(assert (=> start!617140 (=> (not res!2559696) (not e!3768108))))

(declare-fun validRegex!7860 (Regex!16124) Bool)

(assert (=> start!617140 (= res!2559696 (validRegex!7860 r!7292))))

(assert (=> start!617140 e!3768108))

(assert (=> start!617140 e!3768090))

(declare-fun condSetEmpty!41959 () Bool)

(assert (=> start!617140 (= condSetEmpty!41959 (= z!1189 (as set.empty (Set Context!11016))))))

(assert (=> start!617140 setRes!41959))

(assert (=> start!617140 e!3768097))

(declare-fun e!3768106 () Bool)

(assert (=> start!617140 e!3768106))

(declare-fun b!6187002 () Bool)

(declare-fun tp!1727007 () Bool)

(assert (=> b!6187002 (= e!3768089 tp!1727007)))

(declare-fun b!6187003 () Bool)

(declare-fun tp!1727006 () Bool)

(declare-fun tp!1727004 () Bool)

(assert (=> b!6187003 (= e!3768090 (and tp!1727006 tp!1727004))))

(declare-fun b!6187004 () Bool)

(declare-fun e!3768093 () Bool)

(assert (=> b!6187004 (= e!3768093 (matchZipper!2136 lt!2339825 (t!378183 s!2326)))))

(declare-fun b!6187005 () Bool)

(declare-fun e!3768107 () Unit!157771)

(declare-fun Unit!157774 () Unit!157771)

(assert (=> b!6187005 (= e!3768107 Unit!157774)))

(declare-fun lt!2339789 () Unit!157771)

(assert (=> b!6187005 (= lt!2339789 (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339816 lt!2339825 (t!378183 s!2326)))))

(declare-fun res!2559700 () Bool)

(assert (=> b!6187005 (= res!2559700 lt!2339800)))

(assert (=> b!6187005 (=> res!2559700 e!3768093)))

(assert (=> b!6187005 (= (matchZipper!2136 (set.union lt!2339816 lt!2339825) (t!378183 s!2326)) e!3768093)))

(declare-fun b!6187006 () Bool)

(declare-fun Unit!157775 () Unit!157771)

(assert (=> b!6187006 (= e!3768107 Unit!157775)))

(declare-fun e!3768103 () Bool)

(assert (=> b!6187007 (= e!3768098 e!3768103)))

(declare-fun res!2559680 () Bool)

(assert (=> b!6187007 (=> res!2559680 e!3768103)))

(declare-fun lt!2339804 () Bool)

(assert (=> b!6187007 (= res!2559680 (or (not (= lt!2339790 lt!2339804)) (is-Nil!64549 s!2326)))))

(declare-fun Exists!3194 (Int) Bool)

(assert (=> b!6187007 (= (Exists!3194 lambda!337784) (Exists!3194 lambda!337785))))

(declare-fun lt!2339814 () Unit!157771)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1731 (Regex!16124 Regex!16124 List!64673) Unit!157771)

(assert (=> b!6187007 (= lt!2339814 (lemmaExistCutMatchRandMatchRSpecEquivalent!1731 (regOne!32760 r!7292) (regTwo!32760 r!7292) s!2326))))

(assert (=> b!6187007 (= lt!2339804 (Exists!3194 lambda!337784))))

(declare-datatypes ((tuple2!66206 0))(
  ( (tuple2!66207 (_1!36406 List!64673) (_2!36406 List!64673)) )
))
(declare-datatypes ((Option!16015 0))(
  ( (None!16014) (Some!16014 (v!52157 tuple2!66206)) )
))
(declare-fun isDefined!12718 (Option!16015) Bool)

(declare-fun findConcatSeparation!2429 (Regex!16124 Regex!16124 List!64673 List!64673 List!64673) Option!16015)

(assert (=> b!6187007 (= lt!2339804 (isDefined!12718 (findConcatSeparation!2429 (regOne!32760 r!7292) (regTwo!32760 r!7292) Nil!64549 s!2326 s!2326)))))

(declare-fun lt!2339787 () Unit!157771)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2193 (Regex!16124 Regex!16124 List!64673) Unit!157771)

(assert (=> b!6187007 (= lt!2339787 (lemmaFindConcatSeparationEquivalentToExists!2193 (regOne!32760 r!7292) (regTwo!32760 r!7292) s!2326))))

(declare-fun b!6187008 () Bool)

(assert (=> b!6187008 (= e!3768096 (matchZipper!2136 lt!2339794 (t!378183 s!2326)))))

(declare-fun b!6187009 () Bool)

(declare-fun Unit!157776 () Unit!157771)

(assert (=> b!6187009 (= e!3768086 Unit!157776)))

(declare-fun lt!2339818 () Unit!157771)

(assert (=> b!6187009 (= lt!2339818 (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339823 lt!2339825 (t!378183 s!2326)))))

(declare-fun res!2559692 () Bool)

(assert (=> b!6187009 (= res!2559692 (matchZipper!2136 lt!2339823 (t!378183 s!2326)))))

(assert (=> b!6187009 (=> res!2559692 e!3768105)))

(assert (=> b!6187009 (= (matchZipper!2136 (set.union lt!2339823 lt!2339825) (t!378183 s!2326)) e!3768105)))

(declare-fun b!6187010 () Bool)

(declare-fun lt!2339821 () Regex!16124)

(assert (=> b!6187010 (= e!3768104 (validRegex!7860 lt!2339821))))

(declare-fun lt!2339788 () Regex!16124)

(assert (=> b!6187010 (= (matchR!8307 lt!2339788 s!2326) (matchZipper!2136 lt!2339799 s!2326))))

(declare-fun lt!2339798 () Unit!157771)

(declare-fun theoremZipperRegexEquiv!736 ((Set Context!11016) List!64672 Regex!16124 List!64673) Unit!157771)

(assert (=> b!6187010 (= lt!2339798 (theoremZipperRegexEquiv!736 lt!2339799 lt!2339810 lt!2339788 s!2326))))

(declare-fun lt!2339819 () List!64671)

(declare-fun generalisedConcat!1721 (List!64671) Regex!16124)

(assert (=> b!6187010 (= lt!2339788 (generalisedConcat!1721 lt!2339819))))

(declare-fun lt!2339812 () Bool)

(assert (=> b!6187010 (= (matchR!8307 lt!2339821 s!2326) lt!2339812)))

(declare-fun lt!2339824 () (Set Context!11016))

(declare-fun lt!2339822 () List!64672)

(declare-fun lt!2339813 () Unit!157771)

(assert (=> b!6187010 (= lt!2339813 (theoremZipperRegexEquiv!736 lt!2339824 lt!2339822 lt!2339821 s!2326))))

(declare-fun lt!2339791 () List!64671)

(assert (=> b!6187010 (= lt!2339821 (generalisedConcat!1721 lt!2339791))))

(declare-fun b!6187011 () Bool)

(declare-fun e!3768102 () Unit!157771)

(declare-fun Unit!157777 () Unit!157771)

(assert (=> b!6187011 (= e!3768102 Unit!157777)))

(declare-fun b!6187012 () Bool)

(declare-fun e!3768088 () Bool)

(assert (=> b!6187012 (= e!3768099 e!3768088)))

(declare-fun res!2559690 () Bool)

(assert (=> b!6187012 (=> res!2559690 e!3768088)))

(assert (=> b!6187012 (= res!2559690 (not (= (matchZipper!2136 z!1189 s!2326) e!3768109)))))

(declare-fun res!2559684 () Bool)

(assert (=> b!6187012 (=> res!2559684 e!3768109)))

(assert (=> b!6187012 (= res!2559684 lt!2339812)))

(assert (=> b!6187012 (= lt!2339812 (matchZipper!2136 lt!2339824 s!2326))))

(declare-fun lt!2339803 () Unit!157771)

(assert (=> b!6187012 (= lt!2339803 e!3768102)))

(declare-fun c!1115924 () Bool)

(declare-fun nullable!6117 (Regex!16124) Bool)

(assert (=> b!6187012 (= c!1115924 (nullable!6117 (regTwo!32761 (regOne!32760 r!7292))))))

(declare-fun lambda!337786 () Int)

(declare-fun flatMap!1629 ((Set Context!11016) Int) (Set Context!11016))

(declare-fun derivationStepZipperUp!1298 (Context!11016 C!32518) (Set Context!11016))

(assert (=> b!6187012 (= (flatMap!1629 lt!2339799 lambda!337786) (derivationStepZipperUp!1298 lt!2339792 (h!70997 s!2326)))))

(declare-fun lt!2339786 () Unit!157771)

(declare-fun lemmaFlatMapOnSingletonSet!1155 ((Set Context!11016) Context!11016 Int) Unit!157771)

(assert (=> b!6187012 (= lt!2339786 (lemmaFlatMapOnSingletonSet!1155 lt!2339799 lt!2339792 lambda!337786))))

(declare-fun lt!2339811 () (Set Context!11016))

(assert (=> b!6187012 (= lt!2339811 (derivationStepZipperUp!1298 lt!2339792 (h!70997 s!2326)))))

(declare-fun lt!2339805 () Unit!157771)

(assert (=> b!6187012 (= lt!2339805 e!3768107)))

(declare-fun c!1115925 () Bool)

(assert (=> b!6187012 (= c!1115925 (nullable!6117 (regOne!32761 (regOne!32760 r!7292))))))

(declare-fun lt!2339802 () Context!11016)

(assert (=> b!6187012 (= (flatMap!1629 lt!2339824 lambda!337786) (derivationStepZipperUp!1298 lt!2339802 (h!70997 s!2326)))))

(declare-fun lt!2339809 () Unit!157771)

(assert (=> b!6187012 (= lt!2339809 (lemmaFlatMapOnSingletonSet!1155 lt!2339824 lt!2339802 lambda!337786))))

(declare-fun lt!2339806 () (Set Context!11016))

(assert (=> b!6187012 (= lt!2339806 (derivationStepZipperUp!1298 lt!2339802 (h!70997 s!2326)))))

(assert (=> b!6187012 (= lt!2339799 (set.insert lt!2339792 (as set.empty (Set Context!11016))))))

(assert (=> b!6187012 (= lt!2339792 (Context!11017 lt!2339819))))

(assert (=> b!6187012 (= lt!2339819 (Cons!64547 (regTwo!32761 (regOne!32760 r!7292)) (t!378181 (exprs!6008 (h!70996 zl!343)))))))

(assert (=> b!6187012 (= lt!2339824 (set.insert lt!2339802 (as set.empty (Set Context!11016))))))

(assert (=> b!6187012 (= lt!2339802 (Context!11017 lt!2339791))))

(assert (=> b!6187012 (= lt!2339791 (Cons!64547 (regOne!32761 (regOne!32760 r!7292)) (t!378181 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun setIsEmpty!41959 () Bool)

(assert (=> setIsEmpty!41959 setRes!41959))

(declare-fun b!6187013 () Bool)

(declare-fun res!2559686 () Bool)

(assert (=> b!6187013 (=> res!2559686 e!3768103)))

(declare-fun isEmpty!36530 (List!64671) Bool)

(assert (=> b!6187013 (= res!2559686 (isEmpty!36530 (t!378181 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun b!6187014 () Bool)

(declare-fun tp!1727008 () Bool)

(declare-fun tp!1727001 () Bool)

(assert (=> b!6187014 (= e!3768090 (and tp!1727008 tp!1727001))))

(assert (=> b!6187015 (= e!3768103 e!3768101)))

(declare-fun res!2559701 () Bool)

(assert (=> b!6187015 (=> res!2559701 e!3768101)))

(assert (=> b!6187015 (= res!2559701 (or (and (is-ElementMatch!16124 (regOne!32760 r!7292)) (= (c!1115927 (regOne!32760 r!7292)) (h!70997 s!2326))) (not (is-Union!16124 (regOne!32760 r!7292)))))))

(declare-fun lt!2339815 () Unit!157771)

(assert (=> b!6187015 (= lt!2339815 e!3768086)))

(declare-fun c!1115926 () Bool)

(assert (=> b!6187015 (= c!1115926 (nullable!6117 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(assert (=> b!6187015 (= (flatMap!1629 z!1189 lambda!337786) (derivationStepZipperUp!1298 (h!70996 zl!343) (h!70997 s!2326)))))

(declare-fun lt!2339796 () Unit!157771)

(assert (=> b!6187015 (= lt!2339796 (lemmaFlatMapOnSingletonSet!1155 z!1189 (h!70996 zl!343) lambda!337786))))

(assert (=> b!6187015 (= lt!2339825 (derivationStepZipperUp!1298 lt!2339795 (h!70997 s!2326)))))

(assert (=> b!6187015 (= lt!2339823 (derivationStepZipperDown!1372 (h!70995 (exprs!6008 (h!70996 zl!343))) lt!2339795 (h!70997 s!2326)))))

(assert (=> b!6187015 (= lt!2339795 (Context!11017 (t!378181 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun lt!2339820 () (Set Context!11016))

(assert (=> b!6187015 (= lt!2339820 (derivationStepZipperUp!1298 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343))))) (h!70997 s!2326)))))

(declare-fun b!6187016 () Bool)

(assert (=> b!6187016 (= e!3768088 e!3768087)))

(declare-fun res!2559688 () Bool)

(assert (=> b!6187016 (=> res!2559688 e!3768087)))

(declare-fun lt!2339797 () Int)

(assert (=> b!6187016 (= res!2559688 (>= lt!2339797 lt!2339817))))

(assert (=> b!6187016 (= lt!2339817 (zipperDepthTotal!307 zl!343))))

(assert (=> b!6187016 (= lt!2339797 (zipperDepthTotal!307 lt!2339822))))

(assert (=> b!6187016 (= lt!2339822 (Cons!64548 lt!2339802 Nil!64548))))

(declare-fun b!6187017 () Bool)

(declare-fun tp!1727000 () Bool)

(assert (=> b!6187017 (= e!3768106 (and tp_is_empty!41501 tp!1727000))))

(declare-fun b!6187018 () Bool)

(declare-fun res!2559698 () Bool)

(assert (=> b!6187018 (=> res!2559698 e!3768098)))

(assert (=> b!6187018 (= res!2559698 (not (= r!7292 (generalisedConcat!1721 (exprs!6008 (h!70996 zl!343))))))))

(declare-fun b!6187019 () Bool)

(declare-fun res!2559685 () Bool)

(assert (=> b!6187019 (=> res!2559685 e!3768088)))

(declare-fun lt!2339785 () Regex!16124)

(assert (=> b!6187019 (= res!2559685 (or (not (= lt!2339785 r!7292)) (not (= (exprs!6008 (h!70996 zl!343)) (Cons!64547 (regOne!32760 r!7292) (t!378181 (exprs!6008 (h!70996 zl!343))))))))))

(declare-fun b!6187020 () Bool)

(declare-fun Unit!157778 () Unit!157771)

(assert (=> b!6187020 (= e!3768102 Unit!157778)))

(declare-fun lt!2339793 () Unit!157771)

(assert (=> b!6187020 (= lt!2339793 (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339794 lt!2339825 (t!378183 s!2326)))))

(declare-fun res!2559683 () Bool)

(assert (=> b!6187020 (= res!2559683 (matchZipper!2136 lt!2339794 (t!378183 s!2326)))))

(assert (=> b!6187020 (=> res!2559683 e!3768100)))

(assert (=> b!6187020 (= (matchZipper!2136 (set.union lt!2339794 lt!2339825) (t!378183 s!2326)) e!3768100)))

(declare-fun b!6187021 () Bool)

(declare-fun tp!1726999 () Bool)

(assert (=> b!6187021 (= e!3768090 tp!1726999)))

(declare-fun b!6187022 () Bool)

(assert (=> b!6187022 (= e!3768108 e!3768091)))

(declare-fun res!2559691 () Bool)

(assert (=> b!6187022 (=> (not res!2559691) (not e!3768091))))

(assert (=> b!6187022 (= res!2559691 (= r!7292 lt!2339785))))

(declare-fun unfocusZipper!1866 (List!64672) Regex!16124)

(assert (=> b!6187022 (= lt!2339785 (unfocusZipper!1866 zl!343))))

(assert (= (and start!617140 res!2559696) b!6187000))

(assert (= (and b!6187000 res!2559689) b!6187022))

(assert (= (and b!6187022 res!2559691) b!6186995))

(assert (= (and b!6186995 (not res!2559693)) b!6186989))

(assert (= (and b!6186989 (not res!2559702)) b!6187018))

(assert (= (and b!6187018 (not res!2559698)) b!6186987))

(assert (= (and b!6186987 (not res!2559682)) b!6186985))

(assert (= (and b!6186985 (not res!2559699)) b!6186988))

(assert (= (and b!6186988 (not res!2559681)) b!6187007))

(assert (= (and b!6187007 (not res!2559680)) b!6187013))

(assert (= (and b!6187013 (not res!2559686)) b!6187015))

(assert (= (and b!6187015 c!1115926) b!6187009))

(assert (= (and b!6187015 (not c!1115926)) b!6186997))

(assert (= (and b!6187009 (not res!2559692)) b!6186986))

(assert (= (and b!6187015 (not res!2559701)) b!6186992))

(assert (= (and b!6186992 (not res!2559703)) b!6186998))

(assert (= (and b!6186998 (not res!2559687)) b!6187008))

(assert (= (and b!6186998 res!2559695) b!6186993))

(assert (= (and b!6186998 (not res!2559694)) b!6187012))

(assert (= (and b!6187012 c!1115925) b!6187005))

(assert (= (and b!6187012 (not c!1115925)) b!6187006))

(assert (= (and b!6187005 (not res!2559700)) b!6187004))

(assert (= (and b!6187012 c!1115924) b!6187020))

(assert (= (and b!6187012 (not c!1115924)) b!6187011))

(assert (= (and b!6187020 (not res!2559683)) b!6186991))

(assert (= (and b!6187012 (not res!2559684)) b!6187001))

(assert (= (and b!6187012 (not res!2559690)) b!6187019))

(assert (= (and b!6187019 (not res!2559685)) b!6187016))

(assert (= (and b!6187016 (not res!2559688)) b!6186994))

(assert (= (and b!6186994 (not res!2559697)) b!6187010))

(assert (= (and start!617140 (is-ElementMatch!16124 r!7292)) b!6186990))

(assert (= (and start!617140 (is-Concat!24969 r!7292)) b!6187003))

(assert (= (and start!617140 (is-Star!16124 r!7292)) b!6187021))

(assert (= (and start!617140 (is-Union!16124 r!7292)) b!6187014))

(assert (= (and start!617140 condSetEmpty!41959) setIsEmpty!41959))

(assert (= (and start!617140 (not condSetEmpty!41959)) setNonEmpty!41959))

(assert (= setNonEmpty!41959 b!6187002))

(assert (= b!6186999 b!6186996))

(assert (= (and start!617140 (is-Cons!64548 zl!343)) b!6186999))

(assert (= (and start!617140 (is-Cons!64549 s!2326)) b!6187017))

(declare-fun m!7021718 () Bool)

(assert (=> b!6187004 m!7021718))

(declare-fun m!7021720 () Bool)

(assert (=> b!6187008 m!7021720))

(declare-fun m!7021722 () Bool)

(assert (=> b!6187010 m!7021722))

(declare-fun m!7021724 () Bool)

(assert (=> b!6187010 m!7021724))

(declare-fun m!7021726 () Bool)

(assert (=> b!6187010 m!7021726))

(declare-fun m!7021728 () Bool)

(assert (=> b!6187010 m!7021728))

(declare-fun m!7021730 () Bool)

(assert (=> b!6187010 m!7021730))

(declare-fun m!7021732 () Bool)

(assert (=> b!6187010 m!7021732))

(declare-fun m!7021734 () Bool)

(assert (=> b!6187010 m!7021734))

(declare-fun m!7021736 () Bool)

(assert (=> b!6187010 m!7021736))

(declare-fun m!7021738 () Bool)

(assert (=> b!6186985 m!7021738))

(assert (=> b!6186985 m!7021738))

(declare-fun m!7021740 () Bool)

(assert (=> b!6186985 m!7021740))

(declare-fun m!7021742 () Bool)

(assert (=> b!6187016 m!7021742))

(declare-fun m!7021744 () Bool)

(assert (=> b!6187016 m!7021744))

(declare-fun m!7021746 () Bool)

(assert (=> b!6187012 m!7021746))

(declare-fun m!7021748 () Bool)

(assert (=> b!6187012 m!7021748))

(declare-fun m!7021750 () Bool)

(assert (=> b!6187012 m!7021750))

(declare-fun m!7021752 () Bool)

(assert (=> b!6187012 m!7021752))

(declare-fun m!7021754 () Bool)

(assert (=> b!6187012 m!7021754))

(declare-fun m!7021756 () Bool)

(assert (=> b!6187012 m!7021756))

(declare-fun m!7021758 () Bool)

(assert (=> b!6187012 m!7021758))

(declare-fun m!7021760 () Bool)

(assert (=> b!6187012 m!7021760))

(declare-fun m!7021762 () Bool)

(assert (=> b!6187012 m!7021762))

(declare-fun m!7021764 () Bool)

(assert (=> b!6187012 m!7021764))

(declare-fun m!7021766 () Bool)

(assert (=> b!6187012 m!7021766))

(declare-fun m!7021768 () Bool)

(assert (=> b!6187012 m!7021768))

(declare-fun m!7021770 () Bool)

(assert (=> start!617140 m!7021770))

(assert (=> b!6186991 m!7021718))

(declare-fun m!7021772 () Bool)

(assert (=> b!6187013 m!7021772))

(assert (=> b!6187001 m!7021726))

(declare-fun m!7021774 () Bool)

(assert (=> b!6186995 m!7021774))

(declare-fun m!7021776 () Bool)

(assert (=> b!6186995 m!7021776))

(declare-fun m!7021778 () Bool)

(assert (=> b!6186995 m!7021778))

(declare-fun m!7021780 () Bool)

(assert (=> setNonEmpty!41959 m!7021780))

(declare-fun m!7021782 () Bool)

(assert (=> b!6187009 m!7021782))

(declare-fun m!7021784 () Bool)

(assert (=> b!6187009 m!7021784))

(declare-fun m!7021786 () Bool)

(assert (=> b!6187009 m!7021786))

(declare-fun m!7021788 () Bool)

(assert (=> b!6186992 m!7021788))

(declare-fun m!7021790 () Bool)

(assert (=> b!6186992 m!7021790))

(declare-fun m!7021792 () Bool)

(assert (=> b!6187005 m!7021792))

(declare-fun m!7021794 () Bool)

(assert (=> b!6187005 m!7021794))

(declare-fun m!7021796 () Bool)

(assert (=> b!6187018 m!7021796))

(declare-fun m!7021798 () Bool)

(assert (=> b!6187007 m!7021798))

(declare-fun m!7021800 () Bool)

(assert (=> b!6187007 m!7021800))

(declare-fun m!7021802 () Bool)

(assert (=> b!6187007 m!7021802))

(declare-fun m!7021804 () Bool)

(assert (=> b!6187007 m!7021804))

(assert (=> b!6187007 m!7021800))

(declare-fun m!7021806 () Bool)

(assert (=> b!6187007 m!7021806))

(assert (=> b!6187007 m!7021802))

(declare-fun m!7021808 () Bool)

(assert (=> b!6187007 m!7021808))

(declare-fun m!7021810 () Bool)

(assert (=> b!6187015 m!7021810))

(declare-fun m!7021812 () Bool)

(assert (=> b!6187015 m!7021812))

(declare-fun m!7021814 () Bool)

(assert (=> b!6187015 m!7021814))

(declare-fun m!7021816 () Bool)

(assert (=> b!6187015 m!7021816))

(declare-fun m!7021818 () Bool)

(assert (=> b!6187015 m!7021818))

(declare-fun m!7021820 () Bool)

(assert (=> b!6187015 m!7021820))

(declare-fun m!7021822 () Bool)

(assert (=> b!6187015 m!7021822))

(assert (=> b!6186986 m!7021718))

(declare-fun m!7021824 () Bool)

(assert (=> b!6186994 m!7021824))

(declare-fun m!7021826 () Bool)

(assert (=> b!6187022 m!7021826))

(assert (=> b!6186993 m!7021720))

(declare-fun m!7021828 () Bool)

(assert (=> b!6186989 m!7021828))

(declare-fun m!7021830 () Bool)

(assert (=> b!6187000 m!7021830))

(declare-fun m!7021832 () Bool)

(assert (=> b!6186999 m!7021832))

(declare-fun m!7021834 () Bool)

(assert (=> b!6187020 m!7021834))

(assert (=> b!6187020 m!7021720))

(declare-fun m!7021836 () Bool)

(assert (=> b!6187020 m!7021836))

(assert (=> b!6186998 m!7021784))

(declare-fun m!7021838 () Bool)

(assert (=> b!6186998 m!7021838))

(declare-fun m!7021840 () Bool)

(assert (=> b!6186998 m!7021840))

(declare-fun m!7021842 () Bool)

(assert (=> b!6186998 m!7021842))

(push 1)

(assert (not b!6186996))

(assert (not b!6186995))

(assert tp_is_empty!41501)

(assert (not b!6186991))

(assert (not b!6187008))

(assert (not b!6186998))

(assert (not start!617140))

(assert (not b!6187017))

(assert (not b!6187010))

(assert (not b!6187005))

(assert (not b!6187000))

(assert (not b!6187002))

(assert (not b!6187001))

(assert (not b!6187022))

(assert (not b!6187021))

(assert (not b!6187004))

(assert (not b!6187009))

(assert (not b!6186985))

(assert (not b!6187020))

(assert (not b!6187015))

(assert (not setNonEmpty!41959))

(assert (not b!6187016))

(assert (not b!6186999))

(assert (not b!6186994))

(assert (not b!6186992))

(assert (not b!6187014))

(assert (not b!6186986))

(assert (not b!6187018))

(assert (not b!6187013))

(assert (not b!6187007))

(assert (not b!6186993))

(assert (not b!6187003))

(assert (not b!6187012))

(assert (not b!6186989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1939814 () Bool)

(declare-fun nullableFct!2076 (Regex!16124) Bool)

(assert (=> d!1939814 (= (nullable!6117 (regTwo!32761 (regOne!32760 r!7292))) (nullableFct!2076 (regTwo!32761 (regOne!32760 r!7292))))))

(declare-fun bs!1535082 () Bool)

(assert (= bs!1535082 d!1939814))

(declare-fun m!7021970 () Bool)

(assert (=> bs!1535082 m!7021970))

(assert (=> b!6187012 d!1939814))

(declare-fun b!6187171 () Bool)

(declare-fun e!3768196 () (Set Context!11016))

(declare-fun e!3768194 () (Set Context!11016))

(assert (=> b!6187171 (= e!3768196 e!3768194)))

(declare-fun c!1115950 () Bool)

(assert (=> b!6187171 (= c!1115950 (is-Cons!64547 (exprs!6008 lt!2339802)))))

(declare-fun b!6187172 () Bool)

(assert (=> b!6187172 (= e!3768194 (as set.empty (Set Context!11016)))))

(declare-fun b!6187173 () Bool)

(declare-fun call!517189 () (Set Context!11016))

(assert (=> b!6187173 (= e!3768194 call!517189)))

(declare-fun b!6187174 () Bool)

(assert (=> b!6187174 (= e!3768196 (set.union call!517189 (derivationStepZipperUp!1298 (Context!11017 (t!378181 (exprs!6008 lt!2339802))) (h!70997 s!2326))))))

(declare-fun d!1939816 () Bool)

(declare-fun c!1115949 () Bool)

(declare-fun e!3768195 () Bool)

(assert (=> d!1939816 (= c!1115949 e!3768195)))

(declare-fun res!2559790 () Bool)

(assert (=> d!1939816 (=> (not res!2559790) (not e!3768195))))

(assert (=> d!1939816 (= res!2559790 (is-Cons!64547 (exprs!6008 lt!2339802)))))

(assert (=> d!1939816 (= (derivationStepZipperUp!1298 lt!2339802 (h!70997 s!2326)) e!3768196)))

(declare-fun b!6187175 () Bool)

(assert (=> b!6187175 (= e!3768195 (nullable!6117 (h!70995 (exprs!6008 lt!2339802))))))

(declare-fun bm!517184 () Bool)

(assert (=> bm!517184 (= call!517189 (derivationStepZipperDown!1372 (h!70995 (exprs!6008 lt!2339802)) (Context!11017 (t!378181 (exprs!6008 lt!2339802))) (h!70997 s!2326)))))

(assert (= (and d!1939816 res!2559790) b!6187175))

(assert (= (and d!1939816 c!1115949) b!6187174))

(assert (= (and d!1939816 (not c!1115949)) b!6187171))

(assert (= (and b!6187171 c!1115950) b!6187173))

(assert (= (and b!6187171 (not c!1115950)) b!6187172))

(assert (= (or b!6187174 b!6187173) bm!517184))

(declare-fun m!7021972 () Bool)

(assert (=> b!6187174 m!7021972))

(declare-fun m!7021974 () Bool)

(assert (=> b!6187175 m!7021974))

(declare-fun m!7021976 () Bool)

(assert (=> bm!517184 m!7021976))

(assert (=> b!6187012 d!1939816))

(declare-fun d!1939818 () Bool)

(declare-fun dynLambda!25455 (Int Context!11016) (Set Context!11016))

(assert (=> d!1939818 (= (flatMap!1629 lt!2339799 lambda!337786) (dynLambda!25455 lambda!337786 lt!2339792))))

(declare-fun lt!2339951 () Unit!157771)

(declare-fun choose!45953 ((Set Context!11016) Context!11016 Int) Unit!157771)

(assert (=> d!1939818 (= lt!2339951 (choose!45953 lt!2339799 lt!2339792 lambda!337786))))

(assert (=> d!1939818 (= lt!2339799 (set.insert lt!2339792 (as set.empty (Set Context!11016))))))

(assert (=> d!1939818 (= (lemmaFlatMapOnSingletonSet!1155 lt!2339799 lt!2339792 lambda!337786) lt!2339951)))

(declare-fun b_lambda!235445 () Bool)

(assert (=> (not b_lambda!235445) (not d!1939818)))

(declare-fun bs!1535083 () Bool)

(assert (= bs!1535083 d!1939818))

(assert (=> bs!1535083 m!7021758))

(declare-fun m!7021978 () Bool)

(assert (=> bs!1535083 m!7021978))

(declare-fun m!7021980 () Bool)

(assert (=> bs!1535083 m!7021980))

(assert (=> bs!1535083 m!7021756))

(assert (=> b!6187012 d!1939818))

(declare-fun d!1939820 () Bool)

(declare-fun choose!45954 ((Set Context!11016) Int) (Set Context!11016))

(assert (=> d!1939820 (= (flatMap!1629 lt!2339799 lambda!337786) (choose!45954 lt!2339799 lambda!337786))))

(declare-fun bs!1535084 () Bool)

(assert (= bs!1535084 d!1939820))

(declare-fun m!7021982 () Bool)

(assert (=> bs!1535084 m!7021982))

(assert (=> b!6187012 d!1939820))

(declare-fun d!1939822 () Bool)

(assert (=> d!1939822 (= (flatMap!1629 lt!2339824 lambda!337786) (choose!45954 lt!2339824 lambda!337786))))

(declare-fun bs!1535085 () Bool)

(assert (= bs!1535085 d!1939822))

(declare-fun m!7021984 () Bool)

(assert (=> bs!1535085 m!7021984))

(assert (=> b!6187012 d!1939822))

(declare-fun d!1939824 () Bool)

(assert (=> d!1939824 (= (nullable!6117 (regOne!32761 (regOne!32760 r!7292))) (nullableFct!2076 (regOne!32761 (regOne!32760 r!7292))))))

(declare-fun bs!1535086 () Bool)

(assert (= bs!1535086 d!1939824))

(declare-fun m!7021986 () Bool)

(assert (=> bs!1535086 m!7021986))

(assert (=> b!6187012 d!1939824))

(declare-fun d!1939826 () Bool)

(assert (=> d!1939826 (= (flatMap!1629 lt!2339824 lambda!337786) (dynLambda!25455 lambda!337786 lt!2339802))))

(declare-fun lt!2339952 () Unit!157771)

(assert (=> d!1939826 (= lt!2339952 (choose!45953 lt!2339824 lt!2339802 lambda!337786))))

(assert (=> d!1939826 (= lt!2339824 (set.insert lt!2339802 (as set.empty (Set Context!11016))))))

(assert (=> d!1939826 (= (lemmaFlatMapOnSingletonSet!1155 lt!2339824 lt!2339802 lambda!337786) lt!2339952)))

(declare-fun b_lambda!235447 () Bool)

(assert (=> (not b_lambda!235447) (not d!1939826)))

(declare-fun bs!1535087 () Bool)

(assert (= bs!1535087 d!1939826))

(assert (=> bs!1535087 m!7021766))

(declare-fun m!7021988 () Bool)

(assert (=> bs!1535087 m!7021988))

(declare-fun m!7021990 () Bool)

(assert (=> bs!1535087 m!7021990))

(assert (=> bs!1535087 m!7021748))

(assert (=> b!6187012 d!1939826))

(declare-fun d!1939828 () Bool)

(declare-fun c!1115953 () Bool)

(declare-fun isEmpty!36533 (List!64673) Bool)

(assert (=> d!1939828 (= c!1115953 (isEmpty!36533 s!2326))))

(declare-fun e!3768199 () Bool)

(assert (=> d!1939828 (= (matchZipper!2136 z!1189 s!2326) e!3768199)))

(declare-fun b!6187180 () Bool)

(declare-fun nullableZipper!1901 ((Set Context!11016)) Bool)

(assert (=> b!6187180 (= e!3768199 (nullableZipper!1901 z!1189))))

(declare-fun b!6187181 () Bool)

(declare-fun derivationStepZipper!2093 ((Set Context!11016) C!32518) (Set Context!11016))

(declare-fun head!12761 (List!64673) C!32518)

(declare-fun tail!11846 (List!64673) List!64673)

(assert (=> b!6187181 (= e!3768199 (matchZipper!2136 (derivationStepZipper!2093 z!1189 (head!12761 s!2326)) (tail!11846 s!2326)))))

(assert (= (and d!1939828 c!1115953) b!6187180))

(assert (= (and d!1939828 (not c!1115953)) b!6187181))

(declare-fun m!7021992 () Bool)

(assert (=> d!1939828 m!7021992))

(declare-fun m!7021994 () Bool)

(assert (=> b!6187180 m!7021994))

(declare-fun m!7021996 () Bool)

(assert (=> b!6187181 m!7021996))

(assert (=> b!6187181 m!7021996))

(declare-fun m!7021998 () Bool)

(assert (=> b!6187181 m!7021998))

(declare-fun m!7022000 () Bool)

(assert (=> b!6187181 m!7022000))

(assert (=> b!6187181 m!7021998))

(assert (=> b!6187181 m!7022000))

(declare-fun m!7022002 () Bool)

(assert (=> b!6187181 m!7022002))

(assert (=> b!6187012 d!1939828))

(declare-fun b!6187182 () Bool)

(declare-fun e!3768202 () (Set Context!11016))

(declare-fun e!3768200 () (Set Context!11016))

(assert (=> b!6187182 (= e!3768202 e!3768200)))

(declare-fun c!1115955 () Bool)

(assert (=> b!6187182 (= c!1115955 (is-Cons!64547 (exprs!6008 lt!2339792)))))

(declare-fun b!6187183 () Bool)

(assert (=> b!6187183 (= e!3768200 (as set.empty (Set Context!11016)))))

(declare-fun b!6187184 () Bool)

(declare-fun call!517190 () (Set Context!11016))

(assert (=> b!6187184 (= e!3768200 call!517190)))

(declare-fun b!6187185 () Bool)

(assert (=> b!6187185 (= e!3768202 (set.union call!517190 (derivationStepZipperUp!1298 (Context!11017 (t!378181 (exprs!6008 lt!2339792))) (h!70997 s!2326))))))

(declare-fun d!1939830 () Bool)

(declare-fun c!1115954 () Bool)

(declare-fun e!3768201 () Bool)

(assert (=> d!1939830 (= c!1115954 e!3768201)))

(declare-fun res!2559791 () Bool)

(assert (=> d!1939830 (=> (not res!2559791) (not e!3768201))))

(assert (=> d!1939830 (= res!2559791 (is-Cons!64547 (exprs!6008 lt!2339792)))))

(assert (=> d!1939830 (= (derivationStepZipperUp!1298 lt!2339792 (h!70997 s!2326)) e!3768202)))

(declare-fun b!6187186 () Bool)

(assert (=> b!6187186 (= e!3768201 (nullable!6117 (h!70995 (exprs!6008 lt!2339792))))))

(declare-fun bm!517185 () Bool)

(assert (=> bm!517185 (= call!517190 (derivationStepZipperDown!1372 (h!70995 (exprs!6008 lt!2339792)) (Context!11017 (t!378181 (exprs!6008 lt!2339792))) (h!70997 s!2326)))))

(assert (= (and d!1939830 res!2559791) b!6187186))

(assert (= (and d!1939830 c!1115954) b!6187185))

(assert (= (and d!1939830 (not c!1115954)) b!6187182))

(assert (= (and b!6187182 c!1115955) b!6187184))

(assert (= (and b!6187182 (not c!1115955)) b!6187183))

(assert (= (or b!6187185 b!6187184) bm!517185))

(declare-fun m!7022004 () Bool)

(assert (=> b!6187185 m!7022004))

(declare-fun m!7022006 () Bool)

(assert (=> b!6187186 m!7022006))

(declare-fun m!7022008 () Bool)

(assert (=> bm!517185 m!7022008))

(assert (=> b!6187012 d!1939830))

(declare-fun d!1939832 () Bool)

(declare-fun c!1115956 () Bool)

(assert (=> d!1939832 (= c!1115956 (isEmpty!36533 s!2326))))

(declare-fun e!3768203 () Bool)

(assert (=> d!1939832 (= (matchZipper!2136 lt!2339824 s!2326) e!3768203)))

(declare-fun b!6187187 () Bool)

(assert (=> b!6187187 (= e!3768203 (nullableZipper!1901 lt!2339824))))

(declare-fun b!6187188 () Bool)

(assert (=> b!6187188 (= e!3768203 (matchZipper!2136 (derivationStepZipper!2093 lt!2339824 (head!12761 s!2326)) (tail!11846 s!2326)))))

(assert (= (and d!1939832 c!1115956) b!6187187))

(assert (= (and d!1939832 (not c!1115956)) b!6187188))

(assert (=> d!1939832 m!7021992))

(declare-fun m!7022010 () Bool)

(assert (=> b!6187187 m!7022010))

(assert (=> b!6187188 m!7021996))

(assert (=> b!6187188 m!7021996))

(declare-fun m!7022012 () Bool)

(assert (=> b!6187188 m!7022012))

(assert (=> b!6187188 m!7022000))

(assert (=> b!6187188 m!7022012))

(assert (=> b!6187188 m!7022000))

(declare-fun m!7022014 () Bool)

(assert (=> b!6187188 m!7022014))

(assert (=> b!6187012 d!1939832))

(declare-fun d!1939834 () Bool)

(declare-fun c!1115957 () Bool)

(assert (=> d!1939834 (= c!1115957 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768204 () Bool)

(assert (=> d!1939834 (= (matchZipper!2136 lt!2339825 (t!378183 s!2326)) e!3768204)))

(declare-fun b!6187189 () Bool)

(assert (=> b!6187189 (= e!3768204 (nullableZipper!1901 lt!2339825))))

(declare-fun b!6187190 () Bool)

(assert (=> b!6187190 (= e!3768204 (matchZipper!2136 (derivationStepZipper!2093 lt!2339825 (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939834 c!1115957) b!6187189))

(assert (= (and d!1939834 (not c!1115957)) b!6187190))

(declare-fun m!7022016 () Bool)

(assert (=> d!1939834 m!7022016))

(declare-fun m!7022018 () Bool)

(assert (=> b!6187189 m!7022018))

(declare-fun m!7022020 () Bool)

(assert (=> b!6187190 m!7022020))

(assert (=> b!6187190 m!7022020))

(declare-fun m!7022022 () Bool)

(assert (=> b!6187190 m!7022022))

(declare-fun m!7022024 () Bool)

(assert (=> b!6187190 m!7022024))

(assert (=> b!6187190 m!7022022))

(assert (=> b!6187190 m!7022024))

(declare-fun m!7022026 () Bool)

(assert (=> b!6187190 m!7022026))

(assert (=> b!6186991 d!1939834))

(declare-fun b!6187219 () Bool)

(declare-fun e!3768220 () Bool)

(declare-fun lt!2339955 () Bool)

(declare-fun call!517193 () Bool)

(assert (=> b!6187219 (= e!3768220 (= lt!2339955 call!517193))))

(declare-fun b!6187220 () Bool)

(declare-fun res!2559815 () Bool)

(declare-fun e!3768225 () Bool)

(assert (=> b!6187220 (=> res!2559815 e!3768225)))

(assert (=> b!6187220 (= res!2559815 (not (is-ElementMatch!16124 lt!2339788)))))

(declare-fun e!3768222 () Bool)

(assert (=> b!6187220 (= e!3768222 e!3768225)))

(declare-fun b!6187221 () Bool)

(declare-fun e!3768221 () Bool)

(assert (=> b!6187221 (= e!3768221 (not (= (head!12761 s!2326) (c!1115927 lt!2339788))))))

(declare-fun b!6187222 () Bool)

(assert (=> b!6187222 (= e!3768220 e!3768222)))

(declare-fun c!1115964 () Bool)

(assert (=> b!6187222 (= c!1115964 (is-EmptyLang!16124 lt!2339788))))

(declare-fun b!6187223 () Bool)

(declare-fun e!3768223 () Bool)

(assert (=> b!6187223 (= e!3768225 e!3768223)))

(declare-fun res!2559813 () Bool)

(assert (=> b!6187223 (=> (not res!2559813) (not e!3768223))))

(assert (=> b!6187223 (= res!2559813 (not lt!2339955))))

(declare-fun b!6187224 () Bool)

(assert (=> b!6187224 (= e!3768223 e!3768221)))

(declare-fun res!2559810 () Bool)

(assert (=> b!6187224 (=> res!2559810 e!3768221)))

(assert (=> b!6187224 (= res!2559810 call!517193)))

(declare-fun b!6187225 () Bool)

(declare-fun res!2559808 () Bool)

(assert (=> b!6187225 (=> res!2559808 e!3768225)))

(declare-fun e!3768224 () Bool)

(assert (=> b!6187225 (= res!2559808 e!3768224)))

(declare-fun res!2559812 () Bool)

(assert (=> b!6187225 (=> (not res!2559812) (not e!3768224))))

(assert (=> b!6187225 (= res!2559812 lt!2339955)))

(declare-fun b!6187226 () Bool)

(assert (=> b!6187226 (= e!3768224 (= (head!12761 s!2326) (c!1115927 lt!2339788)))))

(declare-fun b!6187227 () Bool)

(assert (=> b!6187227 (= e!3768222 (not lt!2339955))))

(declare-fun bm!517188 () Bool)

(assert (=> bm!517188 (= call!517193 (isEmpty!36533 s!2326))))

(declare-fun b!6187228 () Bool)

(declare-fun res!2559811 () Bool)

(assert (=> b!6187228 (=> res!2559811 e!3768221)))

(assert (=> b!6187228 (= res!2559811 (not (isEmpty!36533 (tail!11846 s!2326))))))

(declare-fun b!6187230 () Bool)

(declare-fun e!3768219 () Bool)

(assert (=> b!6187230 (= e!3768219 (nullable!6117 lt!2339788))))

(declare-fun b!6187231 () Bool)

(declare-fun res!2559809 () Bool)

(assert (=> b!6187231 (=> (not res!2559809) (not e!3768224))))

(assert (=> b!6187231 (= res!2559809 (isEmpty!36533 (tail!11846 s!2326)))))

(declare-fun b!6187232 () Bool)

(declare-fun derivativeStep!4839 (Regex!16124 C!32518) Regex!16124)

(assert (=> b!6187232 (= e!3768219 (matchR!8307 (derivativeStep!4839 lt!2339788 (head!12761 s!2326)) (tail!11846 s!2326)))))

(declare-fun d!1939836 () Bool)

(assert (=> d!1939836 e!3768220))

(declare-fun c!1115965 () Bool)

(assert (=> d!1939836 (= c!1115965 (is-EmptyExpr!16124 lt!2339788))))

(assert (=> d!1939836 (= lt!2339955 e!3768219)))

(declare-fun c!1115966 () Bool)

(assert (=> d!1939836 (= c!1115966 (isEmpty!36533 s!2326))))

(assert (=> d!1939836 (validRegex!7860 lt!2339788)))

(assert (=> d!1939836 (= (matchR!8307 lt!2339788 s!2326) lt!2339955)))

(declare-fun b!6187229 () Bool)

(declare-fun res!2559814 () Bool)

(assert (=> b!6187229 (=> (not res!2559814) (not e!3768224))))

(assert (=> b!6187229 (= res!2559814 (not call!517193))))

(assert (= (and d!1939836 c!1115966) b!6187230))

(assert (= (and d!1939836 (not c!1115966)) b!6187232))

(assert (= (and d!1939836 c!1115965) b!6187219))

(assert (= (and d!1939836 (not c!1115965)) b!6187222))

(assert (= (and b!6187222 c!1115964) b!6187227))

(assert (= (and b!6187222 (not c!1115964)) b!6187220))

(assert (= (and b!6187220 (not res!2559815)) b!6187225))

(assert (= (and b!6187225 res!2559812) b!6187229))

(assert (= (and b!6187229 res!2559814) b!6187231))

(assert (= (and b!6187231 res!2559809) b!6187226))

(assert (= (and b!6187225 (not res!2559808)) b!6187223))

(assert (= (and b!6187223 res!2559813) b!6187224))

(assert (= (and b!6187224 (not res!2559810)) b!6187228))

(assert (= (and b!6187228 (not res!2559811)) b!6187221))

(assert (= (or b!6187219 b!6187224 b!6187229) bm!517188))

(assert (=> bm!517188 m!7021992))

(assert (=> d!1939836 m!7021992))

(declare-fun m!7022028 () Bool)

(assert (=> d!1939836 m!7022028))

(assert (=> b!6187228 m!7022000))

(assert (=> b!6187228 m!7022000))

(declare-fun m!7022030 () Bool)

(assert (=> b!6187228 m!7022030))

(assert (=> b!6187226 m!7021996))

(assert (=> b!6187231 m!7022000))

(assert (=> b!6187231 m!7022000))

(assert (=> b!6187231 m!7022030))

(assert (=> b!6187221 m!7021996))

(assert (=> b!6187232 m!7021996))

(assert (=> b!6187232 m!7021996))

(declare-fun m!7022032 () Bool)

(assert (=> b!6187232 m!7022032))

(assert (=> b!6187232 m!7022000))

(assert (=> b!6187232 m!7022032))

(assert (=> b!6187232 m!7022000))

(declare-fun m!7022034 () Bool)

(assert (=> b!6187232 m!7022034))

(declare-fun m!7022036 () Bool)

(assert (=> b!6187230 m!7022036))

(assert (=> b!6187010 d!1939836))

(declare-fun d!1939838 () Bool)

(assert (=> d!1939838 (= (matchR!8307 lt!2339821 s!2326) (matchZipper!2136 lt!2339824 s!2326))))

(declare-fun lt!2339958 () Unit!157771)

(declare-fun choose!45955 ((Set Context!11016) List!64672 Regex!16124 List!64673) Unit!157771)

(assert (=> d!1939838 (= lt!2339958 (choose!45955 lt!2339824 lt!2339822 lt!2339821 s!2326))))

(assert (=> d!1939838 (validRegex!7860 lt!2339821)))

(assert (=> d!1939838 (= (theoremZipperRegexEquiv!736 lt!2339824 lt!2339822 lt!2339821 s!2326) lt!2339958)))

(declare-fun bs!1535088 () Bool)

(assert (= bs!1535088 d!1939838))

(assert (=> bs!1535088 m!7021730))

(assert (=> bs!1535088 m!7021754))

(declare-fun m!7022038 () Bool)

(assert (=> bs!1535088 m!7022038))

(assert (=> bs!1535088 m!7021734))

(assert (=> b!6187010 d!1939838))

(declare-fun d!1939840 () Bool)

(declare-fun c!1115967 () Bool)

(assert (=> d!1939840 (= c!1115967 (isEmpty!36533 s!2326))))

(declare-fun e!3768226 () Bool)

(assert (=> d!1939840 (= (matchZipper!2136 lt!2339799 s!2326) e!3768226)))

(declare-fun b!6187233 () Bool)

(assert (=> b!6187233 (= e!3768226 (nullableZipper!1901 lt!2339799))))

(declare-fun b!6187234 () Bool)

(assert (=> b!6187234 (= e!3768226 (matchZipper!2136 (derivationStepZipper!2093 lt!2339799 (head!12761 s!2326)) (tail!11846 s!2326)))))

(assert (= (and d!1939840 c!1115967) b!6187233))

(assert (= (and d!1939840 (not c!1115967)) b!6187234))

(assert (=> d!1939840 m!7021992))

(declare-fun m!7022040 () Bool)

(assert (=> b!6187233 m!7022040))

(assert (=> b!6187234 m!7021996))

(assert (=> b!6187234 m!7021996))

(declare-fun m!7022042 () Bool)

(assert (=> b!6187234 m!7022042))

(assert (=> b!6187234 m!7022000))

(assert (=> b!6187234 m!7022042))

(assert (=> b!6187234 m!7022000))

(declare-fun m!7022044 () Bool)

(assert (=> b!6187234 m!7022044))

(assert (=> b!6187010 d!1939840))

(declare-fun bm!517195 () Bool)

(declare-fun call!517201 () Bool)

(declare-fun c!1115973 () Bool)

(assert (=> bm!517195 (= call!517201 (validRegex!7860 (ite c!1115973 (regTwo!32761 lt!2339821) (regTwo!32760 lt!2339821))))))

(declare-fun b!6187253 () Bool)

(declare-fun res!2559826 () Bool)

(declare-fun e!3768242 () Bool)

(assert (=> b!6187253 (=> res!2559826 e!3768242)))

(assert (=> b!6187253 (= res!2559826 (not (is-Concat!24969 lt!2339821)))))

(declare-fun e!3768241 () Bool)

(assert (=> b!6187253 (= e!3768241 e!3768242)))

(declare-fun bm!517196 () Bool)

(declare-fun call!517202 () Bool)

(declare-fun call!517200 () Bool)

(assert (=> bm!517196 (= call!517202 call!517200)))

(declare-fun b!6187254 () Bool)

(declare-fun e!3768243 () Bool)

(declare-fun e!3768245 () Bool)

(assert (=> b!6187254 (= e!3768243 e!3768245)))

(declare-fun c!1115972 () Bool)

(assert (=> b!6187254 (= c!1115972 (is-Star!16124 lt!2339821))))

(declare-fun b!6187255 () Bool)

(declare-fun e!3768247 () Bool)

(assert (=> b!6187255 (= e!3768245 e!3768247)))

(declare-fun res!2559830 () Bool)

(assert (=> b!6187255 (= res!2559830 (not (nullable!6117 (reg!16453 lt!2339821))))))

(assert (=> b!6187255 (=> (not res!2559830) (not e!3768247))))

(declare-fun b!6187257 () Bool)

(declare-fun e!3768244 () Bool)

(assert (=> b!6187257 (= e!3768244 call!517201)))

(declare-fun bm!517197 () Bool)

(assert (=> bm!517197 (= call!517200 (validRegex!7860 (ite c!1115972 (reg!16453 lt!2339821) (ite c!1115973 (regOne!32761 lt!2339821) (regOne!32760 lt!2339821)))))))

(declare-fun b!6187258 () Bool)

(assert (=> b!6187258 (= e!3768247 call!517200)))

(declare-fun b!6187259 () Bool)

(assert (=> b!6187259 (= e!3768245 e!3768241)))

(assert (=> b!6187259 (= c!1115973 (is-Union!16124 lt!2339821))))

(declare-fun b!6187260 () Bool)

(assert (=> b!6187260 (= e!3768242 e!3768244)))

(declare-fun res!2559829 () Bool)

(assert (=> b!6187260 (=> (not res!2559829) (not e!3768244))))

(assert (=> b!6187260 (= res!2559829 call!517202)))

(declare-fun b!6187261 () Bool)

(declare-fun res!2559828 () Bool)

(declare-fun e!3768246 () Bool)

(assert (=> b!6187261 (=> (not res!2559828) (not e!3768246))))

(assert (=> b!6187261 (= res!2559828 call!517202)))

(assert (=> b!6187261 (= e!3768241 e!3768246)))

(declare-fun b!6187256 () Bool)

(assert (=> b!6187256 (= e!3768246 call!517201)))

(declare-fun d!1939842 () Bool)

(declare-fun res!2559827 () Bool)

(assert (=> d!1939842 (=> res!2559827 e!3768243)))

(assert (=> d!1939842 (= res!2559827 (is-ElementMatch!16124 lt!2339821))))

(assert (=> d!1939842 (= (validRegex!7860 lt!2339821) e!3768243)))

(assert (= (and d!1939842 (not res!2559827)) b!6187254))

(assert (= (and b!6187254 c!1115972) b!6187255))

(assert (= (and b!6187254 (not c!1115972)) b!6187259))

(assert (= (and b!6187255 res!2559830) b!6187258))

(assert (= (and b!6187259 c!1115973) b!6187261))

(assert (= (and b!6187259 (not c!1115973)) b!6187253))

(assert (= (and b!6187261 res!2559828) b!6187256))

(assert (= (and b!6187253 (not res!2559826)) b!6187260))

(assert (= (and b!6187260 res!2559829) b!6187257))

(assert (= (or b!6187256 b!6187257) bm!517195))

(assert (= (or b!6187261 b!6187260) bm!517196))

(assert (= (or b!6187258 bm!517196) bm!517197))

(declare-fun m!7022046 () Bool)

(assert (=> bm!517195 m!7022046))

(declare-fun m!7022048 () Bool)

(assert (=> b!6187255 m!7022048))

(declare-fun m!7022050 () Bool)

(assert (=> bm!517197 m!7022050))

(assert (=> b!6187010 d!1939842))

(declare-fun b!6187282 () Bool)

(declare-fun e!3768263 () Bool)

(declare-fun lt!2339961 () Regex!16124)

(declare-fun isEmptyExpr!1537 (Regex!16124) Bool)

(assert (=> b!6187282 (= e!3768263 (isEmptyExpr!1537 lt!2339961))))

(declare-fun d!1939844 () Bool)

(declare-fun e!3768261 () Bool)

(assert (=> d!1939844 e!3768261))

(declare-fun res!2559835 () Bool)

(assert (=> d!1939844 (=> (not res!2559835) (not e!3768261))))

(assert (=> d!1939844 (= res!2559835 (validRegex!7860 lt!2339961))))

(declare-fun e!3768260 () Regex!16124)

(assert (=> d!1939844 (= lt!2339961 e!3768260)))

(declare-fun c!1115985 () Bool)

(declare-fun e!3768264 () Bool)

(assert (=> d!1939844 (= c!1115985 e!3768264)))

(declare-fun res!2559836 () Bool)

(assert (=> d!1939844 (=> (not res!2559836) (not e!3768264))))

(assert (=> d!1939844 (= res!2559836 (is-Cons!64547 lt!2339791))))

(declare-fun lambda!337804 () Int)

(declare-fun forall!15241 (List!64671 Int) Bool)

(assert (=> d!1939844 (forall!15241 lt!2339791 lambda!337804)))

(assert (=> d!1939844 (= (generalisedConcat!1721 lt!2339791) lt!2339961)))

(declare-fun b!6187283 () Bool)

(assert (=> b!6187283 (= e!3768260 (h!70995 lt!2339791))))

(declare-fun b!6187284 () Bool)

(assert (=> b!6187284 (= e!3768261 e!3768263)))

(declare-fun c!1115983 () Bool)

(assert (=> b!6187284 (= c!1115983 (isEmpty!36530 lt!2339791))))

(declare-fun b!6187285 () Bool)

(assert (=> b!6187285 (= e!3768264 (isEmpty!36530 (t!378181 lt!2339791)))))

(declare-fun b!6187286 () Bool)

(declare-fun e!3768262 () Regex!16124)

(assert (=> b!6187286 (= e!3768262 EmptyExpr!16124)))

(declare-fun b!6187287 () Bool)

(declare-fun e!3768265 () Bool)

(declare-fun head!12762 (List!64671) Regex!16124)

(assert (=> b!6187287 (= e!3768265 (= lt!2339961 (head!12762 lt!2339791)))))

(declare-fun b!6187288 () Bool)

(assert (=> b!6187288 (= e!3768260 e!3768262)))

(declare-fun c!1115982 () Bool)

(assert (=> b!6187288 (= c!1115982 (is-Cons!64547 lt!2339791))))

(declare-fun b!6187289 () Bool)

(assert (=> b!6187289 (= e!3768262 (Concat!24969 (h!70995 lt!2339791) (generalisedConcat!1721 (t!378181 lt!2339791))))))

(declare-fun b!6187290 () Bool)

(assert (=> b!6187290 (= e!3768263 e!3768265)))

(declare-fun c!1115984 () Bool)

(declare-fun tail!11847 (List!64671) List!64671)

(assert (=> b!6187290 (= c!1115984 (isEmpty!36530 (tail!11847 lt!2339791)))))

(declare-fun b!6187291 () Bool)

(declare-fun isConcat!1060 (Regex!16124) Bool)

(assert (=> b!6187291 (= e!3768265 (isConcat!1060 lt!2339961))))

(assert (= (and d!1939844 res!2559836) b!6187285))

(assert (= (and d!1939844 c!1115985) b!6187283))

(assert (= (and d!1939844 (not c!1115985)) b!6187288))

(assert (= (and b!6187288 c!1115982) b!6187289))

(assert (= (and b!6187288 (not c!1115982)) b!6187286))

(assert (= (and d!1939844 res!2559835) b!6187284))

(assert (= (and b!6187284 c!1115983) b!6187282))

(assert (= (and b!6187284 (not c!1115983)) b!6187290))

(assert (= (and b!6187290 c!1115984) b!6187287))

(assert (= (and b!6187290 (not c!1115984)) b!6187291))

(declare-fun m!7022052 () Bool)

(assert (=> b!6187289 m!7022052))

(declare-fun m!7022054 () Bool)

(assert (=> b!6187284 m!7022054))

(declare-fun m!7022056 () Bool)

(assert (=> b!6187290 m!7022056))

(assert (=> b!6187290 m!7022056))

(declare-fun m!7022058 () Bool)

(assert (=> b!6187290 m!7022058))

(declare-fun m!7022060 () Bool)

(assert (=> b!6187282 m!7022060))

(declare-fun m!7022062 () Bool)

(assert (=> d!1939844 m!7022062))

(declare-fun m!7022064 () Bool)

(assert (=> d!1939844 m!7022064))

(declare-fun m!7022066 () Bool)

(assert (=> b!6187291 m!7022066))

(declare-fun m!7022068 () Bool)

(assert (=> b!6187285 m!7022068))

(declare-fun m!7022070 () Bool)

(assert (=> b!6187287 m!7022070))

(assert (=> b!6187010 d!1939844))

(declare-fun b!6187292 () Bool)

(declare-fun e!3768267 () Bool)

(declare-fun lt!2339962 () Bool)

(declare-fun call!517203 () Bool)

(assert (=> b!6187292 (= e!3768267 (= lt!2339962 call!517203))))

(declare-fun b!6187293 () Bool)

(declare-fun res!2559844 () Bool)

(declare-fun e!3768272 () Bool)

(assert (=> b!6187293 (=> res!2559844 e!3768272)))

(assert (=> b!6187293 (= res!2559844 (not (is-ElementMatch!16124 lt!2339821)))))

(declare-fun e!3768269 () Bool)

(assert (=> b!6187293 (= e!3768269 e!3768272)))

(declare-fun b!6187294 () Bool)

(declare-fun e!3768268 () Bool)

(assert (=> b!6187294 (= e!3768268 (not (= (head!12761 s!2326) (c!1115927 lt!2339821))))))

(declare-fun b!6187295 () Bool)

(assert (=> b!6187295 (= e!3768267 e!3768269)))

(declare-fun c!1115986 () Bool)

(assert (=> b!6187295 (= c!1115986 (is-EmptyLang!16124 lt!2339821))))

(declare-fun b!6187296 () Bool)

(declare-fun e!3768270 () Bool)

(assert (=> b!6187296 (= e!3768272 e!3768270)))

(declare-fun res!2559842 () Bool)

(assert (=> b!6187296 (=> (not res!2559842) (not e!3768270))))

(assert (=> b!6187296 (= res!2559842 (not lt!2339962))))

(declare-fun b!6187297 () Bool)

(assert (=> b!6187297 (= e!3768270 e!3768268)))

(declare-fun res!2559839 () Bool)

(assert (=> b!6187297 (=> res!2559839 e!3768268)))

(assert (=> b!6187297 (= res!2559839 call!517203)))

(declare-fun b!6187298 () Bool)

(declare-fun res!2559837 () Bool)

(assert (=> b!6187298 (=> res!2559837 e!3768272)))

(declare-fun e!3768271 () Bool)

(assert (=> b!6187298 (= res!2559837 e!3768271)))

(declare-fun res!2559841 () Bool)

(assert (=> b!6187298 (=> (not res!2559841) (not e!3768271))))

(assert (=> b!6187298 (= res!2559841 lt!2339962)))

(declare-fun b!6187299 () Bool)

(assert (=> b!6187299 (= e!3768271 (= (head!12761 s!2326) (c!1115927 lt!2339821)))))

(declare-fun b!6187300 () Bool)

(assert (=> b!6187300 (= e!3768269 (not lt!2339962))))

(declare-fun bm!517198 () Bool)

(assert (=> bm!517198 (= call!517203 (isEmpty!36533 s!2326))))

(declare-fun b!6187301 () Bool)

(declare-fun res!2559840 () Bool)

(assert (=> b!6187301 (=> res!2559840 e!3768268)))

(assert (=> b!6187301 (= res!2559840 (not (isEmpty!36533 (tail!11846 s!2326))))))

(declare-fun b!6187303 () Bool)

(declare-fun e!3768266 () Bool)

(assert (=> b!6187303 (= e!3768266 (nullable!6117 lt!2339821))))

(declare-fun b!6187304 () Bool)

(declare-fun res!2559838 () Bool)

(assert (=> b!6187304 (=> (not res!2559838) (not e!3768271))))

(assert (=> b!6187304 (= res!2559838 (isEmpty!36533 (tail!11846 s!2326)))))

(declare-fun b!6187305 () Bool)

(assert (=> b!6187305 (= e!3768266 (matchR!8307 (derivativeStep!4839 lt!2339821 (head!12761 s!2326)) (tail!11846 s!2326)))))

(declare-fun d!1939846 () Bool)

(assert (=> d!1939846 e!3768267))

(declare-fun c!1115987 () Bool)

(assert (=> d!1939846 (= c!1115987 (is-EmptyExpr!16124 lt!2339821))))

(assert (=> d!1939846 (= lt!2339962 e!3768266)))

(declare-fun c!1115988 () Bool)

(assert (=> d!1939846 (= c!1115988 (isEmpty!36533 s!2326))))

(assert (=> d!1939846 (validRegex!7860 lt!2339821)))

(assert (=> d!1939846 (= (matchR!8307 lt!2339821 s!2326) lt!2339962)))

(declare-fun b!6187302 () Bool)

(declare-fun res!2559843 () Bool)

(assert (=> b!6187302 (=> (not res!2559843) (not e!3768271))))

(assert (=> b!6187302 (= res!2559843 (not call!517203))))

(assert (= (and d!1939846 c!1115988) b!6187303))

(assert (= (and d!1939846 (not c!1115988)) b!6187305))

(assert (= (and d!1939846 c!1115987) b!6187292))

(assert (= (and d!1939846 (not c!1115987)) b!6187295))

(assert (= (and b!6187295 c!1115986) b!6187300))

(assert (= (and b!6187295 (not c!1115986)) b!6187293))

(assert (= (and b!6187293 (not res!2559844)) b!6187298))

(assert (= (and b!6187298 res!2559841) b!6187302))

(assert (= (and b!6187302 res!2559843) b!6187304))

(assert (= (and b!6187304 res!2559838) b!6187299))

(assert (= (and b!6187298 (not res!2559837)) b!6187296))

(assert (= (and b!6187296 res!2559842) b!6187297))

(assert (= (and b!6187297 (not res!2559839)) b!6187301))

(assert (= (and b!6187301 (not res!2559840)) b!6187294))

(assert (= (or b!6187292 b!6187297 b!6187302) bm!517198))

(assert (=> bm!517198 m!7021992))

(assert (=> d!1939846 m!7021992))

(assert (=> d!1939846 m!7021734))

(assert (=> b!6187301 m!7022000))

(assert (=> b!6187301 m!7022000))

(assert (=> b!6187301 m!7022030))

(assert (=> b!6187299 m!7021996))

(assert (=> b!6187304 m!7022000))

(assert (=> b!6187304 m!7022000))

(assert (=> b!6187304 m!7022030))

(assert (=> b!6187294 m!7021996))

(assert (=> b!6187305 m!7021996))

(assert (=> b!6187305 m!7021996))

(declare-fun m!7022072 () Bool)

(assert (=> b!6187305 m!7022072))

(assert (=> b!6187305 m!7022000))

(assert (=> b!6187305 m!7022072))

(assert (=> b!6187305 m!7022000))

(declare-fun m!7022074 () Bool)

(assert (=> b!6187305 m!7022074))

(declare-fun m!7022076 () Bool)

(assert (=> b!6187303 m!7022076))

(assert (=> b!6187010 d!1939846))

(declare-fun d!1939848 () Bool)

(assert (=> d!1939848 (= (matchR!8307 lt!2339788 s!2326) (matchZipper!2136 lt!2339799 s!2326))))

(declare-fun lt!2339963 () Unit!157771)

(assert (=> d!1939848 (= lt!2339963 (choose!45955 lt!2339799 lt!2339810 lt!2339788 s!2326))))

(assert (=> d!1939848 (validRegex!7860 lt!2339788)))

(assert (=> d!1939848 (= (theoremZipperRegexEquiv!736 lt!2339799 lt!2339810 lt!2339788 s!2326) lt!2339963)))

(declare-fun bs!1535089 () Bool)

(assert (= bs!1535089 d!1939848))

(assert (=> bs!1535089 m!7021724))

(assert (=> bs!1535089 m!7021726))

(declare-fun m!7022078 () Bool)

(assert (=> bs!1535089 m!7022078))

(assert (=> bs!1535089 m!7022028))

(assert (=> b!6187010 d!1939848))

(declare-fun bs!1535090 () Bool)

(declare-fun d!1939850 () Bool)

(assert (= bs!1535090 (and d!1939850 d!1939844)))

(declare-fun lambda!337805 () Int)

(assert (=> bs!1535090 (= lambda!337805 lambda!337804)))

(declare-fun b!6187306 () Bool)

(declare-fun e!3768276 () Bool)

(declare-fun lt!2339964 () Regex!16124)

(assert (=> b!6187306 (= e!3768276 (isEmptyExpr!1537 lt!2339964))))

(declare-fun e!3768274 () Bool)

(assert (=> d!1939850 e!3768274))

(declare-fun res!2559845 () Bool)

(assert (=> d!1939850 (=> (not res!2559845) (not e!3768274))))

(assert (=> d!1939850 (= res!2559845 (validRegex!7860 lt!2339964))))

(declare-fun e!3768273 () Regex!16124)

(assert (=> d!1939850 (= lt!2339964 e!3768273)))

(declare-fun c!1115992 () Bool)

(declare-fun e!3768277 () Bool)

(assert (=> d!1939850 (= c!1115992 e!3768277)))

(declare-fun res!2559846 () Bool)

(assert (=> d!1939850 (=> (not res!2559846) (not e!3768277))))

(assert (=> d!1939850 (= res!2559846 (is-Cons!64547 lt!2339819))))

(assert (=> d!1939850 (forall!15241 lt!2339819 lambda!337805)))

(assert (=> d!1939850 (= (generalisedConcat!1721 lt!2339819) lt!2339964)))

(declare-fun b!6187307 () Bool)

(assert (=> b!6187307 (= e!3768273 (h!70995 lt!2339819))))

(declare-fun b!6187308 () Bool)

(assert (=> b!6187308 (= e!3768274 e!3768276)))

(declare-fun c!1115990 () Bool)

(assert (=> b!6187308 (= c!1115990 (isEmpty!36530 lt!2339819))))

(declare-fun b!6187309 () Bool)

(assert (=> b!6187309 (= e!3768277 (isEmpty!36530 (t!378181 lt!2339819)))))

(declare-fun b!6187310 () Bool)

(declare-fun e!3768275 () Regex!16124)

(assert (=> b!6187310 (= e!3768275 EmptyExpr!16124)))

(declare-fun b!6187311 () Bool)

(declare-fun e!3768278 () Bool)

(assert (=> b!6187311 (= e!3768278 (= lt!2339964 (head!12762 lt!2339819)))))

(declare-fun b!6187312 () Bool)

(assert (=> b!6187312 (= e!3768273 e!3768275)))

(declare-fun c!1115989 () Bool)

(assert (=> b!6187312 (= c!1115989 (is-Cons!64547 lt!2339819))))

(declare-fun b!6187313 () Bool)

(assert (=> b!6187313 (= e!3768275 (Concat!24969 (h!70995 lt!2339819) (generalisedConcat!1721 (t!378181 lt!2339819))))))

(declare-fun b!6187314 () Bool)

(assert (=> b!6187314 (= e!3768276 e!3768278)))

(declare-fun c!1115991 () Bool)

(assert (=> b!6187314 (= c!1115991 (isEmpty!36530 (tail!11847 lt!2339819)))))

(declare-fun b!6187315 () Bool)

(assert (=> b!6187315 (= e!3768278 (isConcat!1060 lt!2339964))))

(assert (= (and d!1939850 res!2559846) b!6187309))

(assert (= (and d!1939850 c!1115992) b!6187307))

(assert (= (and d!1939850 (not c!1115992)) b!6187312))

(assert (= (and b!6187312 c!1115989) b!6187313))

(assert (= (and b!6187312 (not c!1115989)) b!6187310))

(assert (= (and d!1939850 res!2559845) b!6187308))

(assert (= (and b!6187308 c!1115990) b!6187306))

(assert (= (and b!6187308 (not c!1115990)) b!6187314))

(assert (= (and b!6187314 c!1115991) b!6187311))

(assert (= (and b!6187314 (not c!1115991)) b!6187315))

(declare-fun m!7022080 () Bool)

(assert (=> b!6187313 m!7022080))

(declare-fun m!7022082 () Bool)

(assert (=> b!6187308 m!7022082))

(declare-fun m!7022084 () Bool)

(assert (=> b!6187314 m!7022084))

(assert (=> b!6187314 m!7022084))

(declare-fun m!7022086 () Bool)

(assert (=> b!6187314 m!7022086))

(declare-fun m!7022088 () Bool)

(assert (=> b!6187306 m!7022088))

(declare-fun m!7022090 () Bool)

(assert (=> d!1939850 m!7022090))

(declare-fun m!7022092 () Bool)

(assert (=> d!1939850 m!7022092))

(declare-fun m!7022094 () Bool)

(assert (=> b!6187315 m!7022094))

(declare-fun m!7022096 () Bool)

(assert (=> b!6187309 m!7022096))

(declare-fun m!7022098 () Bool)

(assert (=> b!6187311 m!7022098))

(assert (=> b!6187010 d!1939850))

(declare-fun d!1939852 () Bool)

(assert (=> d!1939852 (= (isEmpty!36529 (t!378182 zl!343)) (is-Nil!64548 (t!378182 zl!343)))))

(assert (=> b!6186989 d!1939852))

(declare-fun d!1939854 () Bool)

(declare-fun e!3768281 () Bool)

(assert (=> d!1939854 (= (matchZipper!2136 (set.union lt!2339823 lt!2339825) (t!378183 s!2326)) e!3768281)))

(declare-fun res!2559849 () Bool)

(assert (=> d!1939854 (=> res!2559849 e!3768281)))

(assert (=> d!1939854 (= res!2559849 (matchZipper!2136 lt!2339823 (t!378183 s!2326)))))

(declare-fun lt!2339967 () Unit!157771)

(declare-fun choose!45956 ((Set Context!11016) (Set Context!11016) List!64673) Unit!157771)

(assert (=> d!1939854 (= lt!2339967 (choose!45956 lt!2339823 lt!2339825 (t!378183 s!2326)))))

(assert (=> d!1939854 (= (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339823 lt!2339825 (t!378183 s!2326)) lt!2339967)))

(declare-fun b!6187318 () Bool)

(assert (=> b!6187318 (= e!3768281 (matchZipper!2136 lt!2339825 (t!378183 s!2326)))))

(assert (= (and d!1939854 (not res!2559849)) b!6187318))

(assert (=> d!1939854 m!7021786))

(assert (=> d!1939854 m!7021784))

(declare-fun m!7022100 () Bool)

(assert (=> d!1939854 m!7022100))

(assert (=> b!6187318 m!7021718))

(assert (=> b!6187009 d!1939854))

(declare-fun d!1939856 () Bool)

(declare-fun c!1115993 () Bool)

(assert (=> d!1939856 (= c!1115993 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768282 () Bool)

(assert (=> d!1939856 (= (matchZipper!2136 lt!2339823 (t!378183 s!2326)) e!3768282)))

(declare-fun b!6187319 () Bool)

(assert (=> b!6187319 (= e!3768282 (nullableZipper!1901 lt!2339823))))

(declare-fun b!6187320 () Bool)

(assert (=> b!6187320 (= e!3768282 (matchZipper!2136 (derivationStepZipper!2093 lt!2339823 (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939856 c!1115993) b!6187319))

(assert (= (and d!1939856 (not c!1115993)) b!6187320))

(assert (=> d!1939856 m!7022016))

(declare-fun m!7022102 () Bool)

(assert (=> b!6187319 m!7022102))

(assert (=> b!6187320 m!7022020))

(assert (=> b!6187320 m!7022020))

(declare-fun m!7022104 () Bool)

(assert (=> b!6187320 m!7022104))

(assert (=> b!6187320 m!7022024))

(assert (=> b!6187320 m!7022104))

(assert (=> b!6187320 m!7022024))

(declare-fun m!7022106 () Bool)

(assert (=> b!6187320 m!7022106))

(assert (=> b!6187009 d!1939856))

(declare-fun d!1939858 () Bool)

(declare-fun c!1115994 () Bool)

(assert (=> d!1939858 (= c!1115994 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768283 () Bool)

(assert (=> d!1939858 (= (matchZipper!2136 (set.union lt!2339823 lt!2339825) (t!378183 s!2326)) e!3768283)))

(declare-fun b!6187321 () Bool)

(assert (=> b!6187321 (= e!3768283 (nullableZipper!1901 (set.union lt!2339823 lt!2339825)))))

(declare-fun b!6187322 () Bool)

(assert (=> b!6187322 (= e!3768283 (matchZipper!2136 (derivationStepZipper!2093 (set.union lt!2339823 lt!2339825) (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939858 c!1115994) b!6187321))

(assert (= (and d!1939858 (not c!1115994)) b!6187322))

(assert (=> d!1939858 m!7022016))

(declare-fun m!7022108 () Bool)

(assert (=> b!6187321 m!7022108))

(assert (=> b!6187322 m!7022020))

(assert (=> b!6187322 m!7022020))

(declare-fun m!7022110 () Bool)

(assert (=> b!6187322 m!7022110))

(assert (=> b!6187322 m!7022024))

(assert (=> b!6187322 m!7022110))

(assert (=> b!6187322 m!7022024))

(declare-fun m!7022112 () Bool)

(assert (=> b!6187322 m!7022112))

(assert (=> b!6187009 d!1939858))

(declare-fun d!1939860 () Bool)

(declare-fun c!1115995 () Bool)

(assert (=> d!1939860 (= c!1115995 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768284 () Bool)

(assert (=> d!1939860 (= (matchZipper!2136 lt!2339794 (t!378183 s!2326)) e!3768284)))

(declare-fun b!6187323 () Bool)

(assert (=> b!6187323 (= e!3768284 (nullableZipper!1901 lt!2339794))))

(declare-fun b!6187324 () Bool)

(assert (=> b!6187324 (= e!3768284 (matchZipper!2136 (derivationStepZipper!2093 lt!2339794 (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939860 c!1115995) b!6187323))

(assert (= (and d!1939860 (not c!1115995)) b!6187324))

(assert (=> d!1939860 m!7022016))

(declare-fun m!7022114 () Bool)

(assert (=> b!6187323 m!7022114))

(assert (=> b!6187324 m!7022020))

(assert (=> b!6187324 m!7022020))

(declare-fun m!7022116 () Bool)

(assert (=> b!6187324 m!7022116))

(assert (=> b!6187324 m!7022024))

(assert (=> b!6187324 m!7022116))

(assert (=> b!6187324 m!7022024))

(declare-fun m!7022118 () Bool)

(assert (=> b!6187324 m!7022118))

(assert (=> b!6187008 d!1939860))

(declare-fun b!6187343 () Bool)

(declare-fun e!3768296 () Bool)

(declare-fun lt!2339974 () Option!16015)

(declare-fun ++!14205 (List!64673 List!64673) List!64673)

(declare-fun get!22283 (Option!16015) tuple2!66206)

(assert (=> b!6187343 (= e!3768296 (= (++!14205 (_1!36406 (get!22283 lt!2339974)) (_2!36406 (get!22283 lt!2339974))) s!2326))))

(declare-fun b!6187344 () Bool)

(declare-fun e!3768297 () Option!16015)

(assert (=> b!6187344 (= e!3768297 (Some!16014 (tuple2!66207 Nil!64549 s!2326)))))

(declare-fun b!6187345 () Bool)

(declare-fun e!3768298 () Option!16015)

(assert (=> b!6187345 (= e!3768297 e!3768298)))

(declare-fun c!1116000 () Bool)

(assert (=> b!6187345 (= c!1116000 (is-Nil!64549 s!2326))))

(declare-fun b!6187346 () Bool)

(declare-fun res!2559860 () Bool)

(assert (=> b!6187346 (=> (not res!2559860) (not e!3768296))))

(assert (=> b!6187346 (= res!2559860 (matchR!8307 (regTwo!32760 r!7292) (_2!36406 (get!22283 lt!2339974))))))

(declare-fun b!6187348 () Bool)

(assert (=> b!6187348 (= e!3768298 None!16014)))

(declare-fun b!6187349 () Bool)

(declare-fun e!3768295 () Bool)

(assert (=> b!6187349 (= e!3768295 (matchR!8307 (regTwo!32760 r!7292) s!2326))))

(declare-fun b!6187350 () Bool)

(declare-fun lt!2339975 () Unit!157771)

(declare-fun lt!2339976 () Unit!157771)

(assert (=> b!6187350 (= lt!2339975 lt!2339976)))

(assert (=> b!6187350 (= (++!14205 (++!14205 Nil!64549 (Cons!64549 (h!70997 s!2326) Nil!64549)) (t!378183 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2300 (List!64673 C!32518 List!64673 List!64673) Unit!157771)

(assert (=> b!6187350 (= lt!2339976 (lemmaMoveElementToOtherListKeepsConcatEq!2300 Nil!64549 (h!70997 s!2326) (t!378183 s!2326) s!2326))))

(assert (=> b!6187350 (= e!3768298 (findConcatSeparation!2429 (regOne!32760 r!7292) (regTwo!32760 r!7292) (++!14205 Nil!64549 (Cons!64549 (h!70997 s!2326) Nil!64549)) (t!378183 s!2326) s!2326))))

(declare-fun b!6187351 () Bool)

(declare-fun e!3768299 () Bool)

(assert (=> b!6187351 (= e!3768299 (not (isDefined!12718 lt!2339974)))))

(declare-fun b!6187347 () Bool)

(declare-fun res!2559863 () Bool)

(assert (=> b!6187347 (=> (not res!2559863) (not e!3768296))))

(assert (=> b!6187347 (= res!2559863 (matchR!8307 (regOne!32760 r!7292) (_1!36406 (get!22283 lt!2339974))))))

(declare-fun d!1939862 () Bool)

(assert (=> d!1939862 e!3768299))

(declare-fun res!2559862 () Bool)

(assert (=> d!1939862 (=> res!2559862 e!3768299)))

(assert (=> d!1939862 (= res!2559862 e!3768296)))

(declare-fun res!2559864 () Bool)

(assert (=> d!1939862 (=> (not res!2559864) (not e!3768296))))

(assert (=> d!1939862 (= res!2559864 (isDefined!12718 lt!2339974))))

(assert (=> d!1939862 (= lt!2339974 e!3768297)))

(declare-fun c!1116001 () Bool)

(assert (=> d!1939862 (= c!1116001 e!3768295)))

(declare-fun res!2559861 () Bool)

(assert (=> d!1939862 (=> (not res!2559861) (not e!3768295))))

(assert (=> d!1939862 (= res!2559861 (matchR!8307 (regOne!32760 r!7292) Nil!64549))))

(assert (=> d!1939862 (validRegex!7860 (regOne!32760 r!7292))))

(assert (=> d!1939862 (= (findConcatSeparation!2429 (regOne!32760 r!7292) (regTwo!32760 r!7292) Nil!64549 s!2326 s!2326) lt!2339974)))

(assert (= (and d!1939862 res!2559861) b!6187349))

(assert (= (and d!1939862 c!1116001) b!6187344))

(assert (= (and d!1939862 (not c!1116001)) b!6187345))

(assert (= (and b!6187345 c!1116000) b!6187348))

(assert (= (and b!6187345 (not c!1116000)) b!6187350))

(assert (= (and d!1939862 res!2559864) b!6187347))

(assert (= (and b!6187347 res!2559863) b!6187346))

(assert (= (and b!6187346 res!2559860) b!6187343))

(assert (= (and d!1939862 (not res!2559862)) b!6187351))

(declare-fun m!7022120 () Bool)

(assert (=> b!6187349 m!7022120))

(declare-fun m!7022122 () Bool)

(assert (=> b!6187347 m!7022122))

(declare-fun m!7022124 () Bool)

(assert (=> b!6187347 m!7022124))

(declare-fun m!7022126 () Bool)

(assert (=> b!6187350 m!7022126))

(assert (=> b!6187350 m!7022126))

(declare-fun m!7022128 () Bool)

(assert (=> b!6187350 m!7022128))

(declare-fun m!7022130 () Bool)

(assert (=> b!6187350 m!7022130))

(assert (=> b!6187350 m!7022126))

(declare-fun m!7022132 () Bool)

(assert (=> b!6187350 m!7022132))

(declare-fun m!7022134 () Bool)

(assert (=> d!1939862 m!7022134))

(declare-fun m!7022136 () Bool)

(assert (=> d!1939862 m!7022136))

(declare-fun m!7022138 () Bool)

(assert (=> d!1939862 m!7022138))

(assert (=> b!6187343 m!7022122))

(declare-fun m!7022140 () Bool)

(assert (=> b!6187343 m!7022140))

(assert (=> b!6187351 m!7022134))

(assert (=> b!6187346 m!7022122))

(declare-fun m!7022142 () Bool)

(assert (=> b!6187346 m!7022142))

(assert (=> b!6187007 d!1939862))

(declare-fun d!1939864 () Bool)

(declare-fun choose!45957 (Int) Bool)

(assert (=> d!1939864 (= (Exists!3194 lambda!337784) (choose!45957 lambda!337784))))

(declare-fun bs!1535091 () Bool)

(assert (= bs!1535091 d!1939864))

(declare-fun m!7022144 () Bool)

(assert (=> bs!1535091 m!7022144))

(assert (=> b!6187007 d!1939864))

(declare-fun bs!1535092 () Bool)

(declare-fun d!1939866 () Bool)

(assert (= bs!1535092 (and d!1939866 b!6187007)))

(declare-fun lambda!337808 () Int)

(assert (=> bs!1535092 (= lambda!337808 lambda!337784)))

(assert (=> bs!1535092 (not (= lambda!337808 lambda!337785))))

(assert (=> d!1939866 true))

(assert (=> d!1939866 true))

(assert (=> d!1939866 true))

(assert (=> d!1939866 (= (isDefined!12718 (findConcatSeparation!2429 (regOne!32760 r!7292) (regTwo!32760 r!7292) Nil!64549 s!2326 s!2326)) (Exists!3194 lambda!337808))))

(declare-fun lt!2339979 () Unit!157771)

(declare-fun choose!45958 (Regex!16124 Regex!16124 List!64673) Unit!157771)

(assert (=> d!1939866 (= lt!2339979 (choose!45958 (regOne!32760 r!7292) (regTwo!32760 r!7292) s!2326))))

(assert (=> d!1939866 (validRegex!7860 (regOne!32760 r!7292))))

(assert (=> d!1939866 (= (lemmaFindConcatSeparationEquivalentToExists!2193 (regOne!32760 r!7292) (regTwo!32760 r!7292) s!2326) lt!2339979)))

(declare-fun bs!1535093 () Bool)

(assert (= bs!1535093 d!1939866))

(assert (=> bs!1535093 m!7021802))

(assert (=> bs!1535093 m!7021802))

(assert (=> bs!1535093 m!7021804))

(declare-fun m!7022146 () Bool)

(assert (=> bs!1535093 m!7022146))

(assert (=> bs!1535093 m!7022138))

(declare-fun m!7022148 () Bool)

(assert (=> bs!1535093 m!7022148))

(assert (=> b!6187007 d!1939866))

(declare-fun d!1939868 () Bool)

(assert (=> d!1939868 (= (Exists!3194 lambda!337785) (choose!45957 lambda!337785))))

(declare-fun bs!1535094 () Bool)

(assert (= bs!1535094 d!1939868))

(declare-fun m!7022150 () Bool)

(assert (=> bs!1535094 m!7022150))

(assert (=> b!6187007 d!1939868))

(declare-fun bs!1535095 () Bool)

(declare-fun d!1939870 () Bool)

(assert (= bs!1535095 (and d!1939870 b!6187007)))

(declare-fun lambda!337813 () Int)

(assert (=> bs!1535095 (= lambda!337813 lambda!337784)))

(assert (=> bs!1535095 (not (= lambda!337813 lambda!337785))))

(declare-fun bs!1535096 () Bool)

(assert (= bs!1535096 (and d!1939870 d!1939866)))

(assert (=> bs!1535096 (= lambda!337813 lambda!337808)))

(assert (=> d!1939870 true))

(assert (=> d!1939870 true))

(assert (=> d!1939870 true))

(declare-fun lambda!337814 () Int)

(assert (=> bs!1535095 (not (= lambda!337814 lambda!337784))))

(assert (=> bs!1535095 (= lambda!337814 lambda!337785)))

(assert (=> bs!1535096 (not (= lambda!337814 lambda!337808))))

(declare-fun bs!1535097 () Bool)

(assert (= bs!1535097 d!1939870))

(assert (=> bs!1535097 (not (= lambda!337814 lambda!337813))))

(assert (=> d!1939870 true))

(assert (=> d!1939870 true))

(assert (=> d!1939870 true))

(assert (=> d!1939870 (= (Exists!3194 lambda!337813) (Exists!3194 lambda!337814))))

(declare-fun lt!2339982 () Unit!157771)

(declare-fun choose!45959 (Regex!16124 Regex!16124 List!64673) Unit!157771)

(assert (=> d!1939870 (= lt!2339982 (choose!45959 (regOne!32760 r!7292) (regTwo!32760 r!7292) s!2326))))

(assert (=> d!1939870 (validRegex!7860 (regOne!32760 r!7292))))

(assert (=> d!1939870 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1731 (regOne!32760 r!7292) (regTwo!32760 r!7292) s!2326) lt!2339982)))

(declare-fun m!7022152 () Bool)

(assert (=> bs!1535097 m!7022152))

(declare-fun m!7022154 () Bool)

(assert (=> bs!1535097 m!7022154))

(declare-fun m!7022156 () Bool)

(assert (=> bs!1535097 m!7022156))

(assert (=> bs!1535097 m!7022138))

(assert (=> b!6187007 d!1939870))

(declare-fun d!1939872 () Bool)

(declare-fun isEmpty!36534 (Option!16015) Bool)

(assert (=> d!1939872 (= (isDefined!12718 (findConcatSeparation!2429 (regOne!32760 r!7292) (regTwo!32760 r!7292) Nil!64549 s!2326 s!2326)) (not (isEmpty!36534 (findConcatSeparation!2429 (regOne!32760 r!7292) (regTwo!32760 r!7292) Nil!64549 s!2326 s!2326))))))

(declare-fun bs!1535098 () Bool)

(assert (= bs!1535098 d!1939872))

(assert (=> bs!1535098 m!7021802))

(declare-fun m!7022158 () Bool)

(assert (=> bs!1535098 m!7022158))

(assert (=> b!6187007 d!1939872))

(assert (=> b!6186986 d!1939834))

(declare-fun bs!1535099 () Bool)

(declare-fun d!1939874 () Bool)

(assert (= bs!1535099 (and d!1939874 d!1939844)))

(declare-fun lambda!337817 () Int)

(assert (=> bs!1535099 (= lambda!337817 lambda!337804)))

(declare-fun bs!1535100 () Bool)

(assert (= bs!1535100 (and d!1939874 d!1939850)))

(assert (=> bs!1535100 (= lambda!337817 lambda!337805)))

(declare-fun b!6187384 () Bool)

(declare-fun e!3768322 () Regex!16124)

(assert (=> b!6187384 (= e!3768322 EmptyLang!16124)))

(declare-fun b!6187385 () Bool)

(declare-fun e!3768323 () Bool)

(declare-fun lt!2339985 () Regex!16124)

(declare-fun isUnion!976 (Regex!16124) Bool)

(assert (=> b!6187385 (= e!3768323 (isUnion!976 lt!2339985))))

(declare-fun b!6187386 () Bool)

(assert (=> b!6187386 (= e!3768322 (Union!16124 (h!70995 (unfocusZipperList!1545 zl!343)) (generalisedUnion!1968 (t!378181 (unfocusZipperList!1545 zl!343)))))))

(declare-fun b!6187387 () Bool)

(declare-fun e!3768319 () Bool)

(declare-fun isEmptyLang!1546 (Regex!16124) Bool)

(assert (=> b!6187387 (= e!3768319 (isEmptyLang!1546 lt!2339985))))

(declare-fun b!6187388 () Bool)

(assert (=> b!6187388 (= e!3768319 e!3768323)))

(declare-fun c!1116010 () Bool)

(assert (=> b!6187388 (= c!1116010 (isEmpty!36530 (tail!11847 (unfocusZipperList!1545 zl!343))))))

(declare-fun b!6187389 () Bool)

(declare-fun e!3768320 () Bool)

(assert (=> b!6187389 (= e!3768320 (isEmpty!36530 (t!378181 (unfocusZipperList!1545 zl!343))))))

(declare-fun e!3768321 () Bool)

(assert (=> d!1939874 e!3768321))

(declare-fun res!2559882 () Bool)

(assert (=> d!1939874 (=> (not res!2559882) (not e!3768321))))

(assert (=> d!1939874 (= res!2559882 (validRegex!7860 lt!2339985))))

(declare-fun e!3768318 () Regex!16124)

(assert (=> d!1939874 (= lt!2339985 e!3768318)))

(declare-fun c!1116012 () Bool)

(assert (=> d!1939874 (= c!1116012 e!3768320)))

(declare-fun res!2559881 () Bool)

(assert (=> d!1939874 (=> (not res!2559881) (not e!3768320))))

(assert (=> d!1939874 (= res!2559881 (is-Cons!64547 (unfocusZipperList!1545 zl!343)))))

(assert (=> d!1939874 (forall!15241 (unfocusZipperList!1545 zl!343) lambda!337817)))

(assert (=> d!1939874 (= (generalisedUnion!1968 (unfocusZipperList!1545 zl!343)) lt!2339985)))

(declare-fun b!6187390 () Bool)

(assert (=> b!6187390 (= e!3768318 (h!70995 (unfocusZipperList!1545 zl!343)))))

(declare-fun b!6187391 () Bool)

(assert (=> b!6187391 (= e!3768321 e!3768319)))

(declare-fun c!1116013 () Bool)

(assert (=> b!6187391 (= c!1116013 (isEmpty!36530 (unfocusZipperList!1545 zl!343)))))

(declare-fun b!6187392 () Bool)

(assert (=> b!6187392 (= e!3768323 (= lt!2339985 (head!12762 (unfocusZipperList!1545 zl!343))))))

(declare-fun b!6187393 () Bool)

(assert (=> b!6187393 (= e!3768318 e!3768322)))

(declare-fun c!1116011 () Bool)

(assert (=> b!6187393 (= c!1116011 (is-Cons!64547 (unfocusZipperList!1545 zl!343)))))

(assert (= (and d!1939874 res!2559881) b!6187389))

(assert (= (and d!1939874 c!1116012) b!6187390))

(assert (= (and d!1939874 (not c!1116012)) b!6187393))

(assert (= (and b!6187393 c!1116011) b!6187386))

(assert (= (and b!6187393 (not c!1116011)) b!6187384))

(assert (= (and d!1939874 res!2559882) b!6187391))

(assert (= (and b!6187391 c!1116013) b!6187387))

(assert (= (and b!6187391 (not c!1116013)) b!6187388))

(assert (= (and b!6187388 c!1116010) b!6187392))

(assert (= (and b!6187388 (not c!1116010)) b!6187385))

(assert (=> b!6187391 m!7021738))

(declare-fun m!7022160 () Bool)

(assert (=> b!6187391 m!7022160))

(declare-fun m!7022162 () Bool)

(assert (=> b!6187385 m!7022162))

(declare-fun m!7022164 () Bool)

(assert (=> b!6187387 m!7022164))

(declare-fun m!7022166 () Bool)

(assert (=> d!1939874 m!7022166))

(assert (=> d!1939874 m!7021738))

(declare-fun m!7022168 () Bool)

(assert (=> d!1939874 m!7022168))

(assert (=> b!6187388 m!7021738))

(declare-fun m!7022170 () Bool)

(assert (=> b!6187388 m!7022170))

(assert (=> b!6187388 m!7022170))

(declare-fun m!7022172 () Bool)

(assert (=> b!6187388 m!7022172))

(assert (=> b!6187392 m!7021738))

(declare-fun m!7022174 () Bool)

(assert (=> b!6187392 m!7022174))

(declare-fun m!7022176 () Bool)

(assert (=> b!6187386 m!7022176))

(declare-fun m!7022178 () Bool)

(assert (=> b!6187389 m!7022178))

(assert (=> b!6186985 d!1939874))

(declare-fun bs!1535101 () Bool)

(declare-fun d!1939876 () Bool)

(assert (= bs!1535101 (and d!1939876 d!1939844)))

(declare-fun lambda!337820 () Int)

(assert (=> bs!1535101 (= lambda!337820 lambda!337804)))

(declare-fun bs!1535102 () Bool)

(assert (= bs!1535102 (and d!1939876 d!1939850)))

(assert (=> bs!1535102 (= lambda!337820 lambda!337805)))

(declare-fun bs!1535103 () Bool)

(assert (= bs!1535103 (and d!1939876 d!1939874)))

(assert (=> bs!1535103 (= lambda!337820 lambda!337817)))

(declare-fun lt!2339988 () List!64671)

(assert (=> d!1939876 (forall!15241 lt!2339988 lambda!337820)))

(declare-fun e!3768326 () List!64671)

(assert (=> d!1939876 (= lt!2339988 e!3768326)))

(declare-fun c!1116016 () Bool)

(assert (=> d!1939876 (= c!1116016 (is-Cons!64548 zl!343))))

(assert (=> d!1939876 (= (unfocusZipperList!1545 zl!343) lt!2339988)))

(declare-fun b!6187398 () Bool)

(assert (=> b!6187398 (= e!3768326 (Cons!64547 (generalisedConcat!1721 (exprs!6008 (h!70996 zl!343))) (unfocusZipperList!1545 (t!378182 zl!343))))))

(declare-fun b!6187399 () Bool)

(assert (=> b!6187399 (= e!3768326 Nil!64547)))

(assert (= (and d!1939876 c!1116016) b!6187398))

(assert (= (and d!1939876 (not c!1116016)) b!6187399))

(declare-fun m!7022180 () Bool)

(assert (=> d!1939876 m!7022180))

(assert (=> b!6187398 m!7021796))

(declare-fun m!7022182 () Bool)

(assert (=> b!6187398 m!7022182))

(assert (=> b!6186985 d!1939876))

(declare-fun d!1939878 () Bool)

(declare-fun e!3768327 () Bool)

(assert (=> d!1939878 (= (matchZipper!2136 (set.union lt!2339816 lt!2339825) (t!378183 s!2326)) e!3768327)))

(declare-fun res!2559883 () Bool)

(assert (=> d!1939878 (=> res!2559883 e!3768327)))

(assert (=> d!1939878 (= res!2559883 (matchZipper!2136 lt!2339816 (t!378183 s!2326)))))

(declare-fun lt!2339989 () Unit!157771)

(assert (=> d!1939878 (= lt!2339989 (choose!45956 lt!2339816 lt!2339825 (t!378183 s!2326)))))

(assert (=> d!1939878 (= (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339816 lt!2339825 (t!378183 s!2326)) lt!2339989)))

(declare-fun b!6187400 () Bool)

(assert (=> b!6187400 (= e!3768327 (matchZipper!2136 lt!2339825 (t!378183 s!2326)))))

(assert (= (and d!1939878 (not res!2559883)) b!6187400))

(assert (=> d!1939878 m!7021794))

(assert (=> d!1939878 m!7021840))

(declare-fun m!7022184 () Bool)

(assert (=> d!1939878 m!7022184))

(assert (=> b!6187400 m!7021718))

(assert (=> b!6187005 d!1939878))

(declare-fun d!1939880 () Bool)

(declare-fun c!1116017 () Bool)

(assert (=> d!1939880 (= c!1116017 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768328 () Bool)

(assert (=> d!1939880 (= (matchZipper!2136 (set.union lt!2339816 lt!2339825) (t!378183 s!2326)) e!3768328)))

(declare-fun b!6187401 () Bool)

(assert (=> b!6187401 (= e!3768328 (nullableZipper!1901 (set.union lt!2339816 lt!2339825)))))

(declare-fun b!6187402 () Bool)

(assert (=> b!6187402 (= e!3768328 (matchZipper!2136 (derivationStepZipper!2093 (set.union lt!2339816 lt!2339825) (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939880 c!1116017) b!6187401))

(assert (= (and d!1939880 (not c!1116017)) b!6187402))

(assert (=> d!1939880 m!7022016))

(declare-fun m!7022186 () Bool)

(assert (=> b!6187401 m!7022186))

(assert (=> b!6187402 m!7022020))

(assert (=> b!6187402 m!7022020))

(declare-fun m!7022188 () Bool)

(assert (=> b!6187402 m!7022188))

(assert (=> b!6187402 m!7022024))

(assert (=> b!6187402 m!7022188))

(assert (=> b!6187402 m!7022024))

(declare-fun m!7022190 () Bool)

(assert (=> b!6187402 m!7022190))

(assert (=> b!6187005 d!1939880))

(declare-fun bm!517199 () Bool)

(declare-fun call!517205 () Bool)

(declare-fun c!1116019 () Bool)

(assert (=> bm!517199 (= call!517205 (validRegex!7860 (ite c!1116019 (regTwo!32761 r!7292) (regTwo!32760 r!7292))))))

(declare-fun b!6187403 () Bool)

(declare-fun res!2559884 () Bool)

(declare-fun e!3768330 () Bool)

(assert (=> b!6187403 (=> res!2559884 e!3768330)))

(assert (=> b!6187403 (= res!2559884 (not (is-Concat!24969 r!7292)))))

(declare-fun e!3768329 () Bool)

(assert (=> b!6187403 (= e!3768329 e!3768330)))

(declare-fun bm!517200 () Bool)

(declare-fun call!517206 () Bool)

(declare-fun call!517204 () Bool)

(assert (=> bm!517200 (= call!517206 call!517204)))

(declare-fun b!6187404 () Bool)

(declare-fun e!3768331 () Bool)

(declare-fun e!3768333 () Bool)

(assert (=> b!6187404 (= e!3768331 e!3768333)))

(declare-fun c!1116018 () Bool)

(assert (=> b!6187404 (= c!1116018 (is-Star!16124 r!7292))))

(declare-fun b!6187405 () Bool)

(declare-fun e!3768335 () Bool)

(assert (=> b!6187405 (= e!3768333 e!3768335)))

(declare-fun res!2559888 () Bool)

(assert (=> b!6187405 (= res!2559888 (not (nullable!6117 (reg!16453 r!7292))))))

(assert (=> b!6187405 (=> (not res!2559888) (not e!3768335))))

(declare-fun b!6187407 () Bool)

(declare-fun e!3768332 () Bool)

(assert (=> b!6187407 (= e!3768332 call!517205)))

(declare-fun bm!517201 () Bool)

(assert (=> bm!517201 (= call!517204 (validRegex!7860 (ite c!1116018 (reg!16453 r!7292) (ite c!1116019 (regOne!32761 r!7292) (regOne!32760 r!7292)))))))

(declare-fun b!6187408 () Bool)

(assert (=> b!6187408 (= e!3768335 call!517204)))

(declare-fun b!6187409 () Bool)

(assert (=> b!6187409 (= e!3768333 e!3768329)))

(assert (=> b!6187409 (= c!1116019 (is-Union!16124 r!7292))))

(declare-fun b!6187410 () Bool)

(assert (=> b!6187410 (= e!3768330 e!3768332)))

(declare-fun res!2559887 () Bool)

(assert (=> b!6187410 (=> (not res!2559887) (not e!3768332))))

(assert (=> b!6187410 (= res!2559887 call!517206)))

(declare-fun b!6187411 () Bool)

(declare-fun res!2559886 () Bool)

(declare-fun e!3768334 () Bool)

(assert (=> b!6187411 (=> (not res!2559886) (not e!3768334))))

(assert (=> b!6187411 (= res!2559886 call!517206)))

(assert (=> b!6187411 (= e!3768329 e!3768334)))

(declare-fun b!6187406 () Bool)

(assert (=> b!6187406 (= e!3768334 call!517205)))

(declare-fun d!1939882 () Bool)

(declare-fun res!2559885 () Bool)

(assert (=> d!1939882 (=> res!2559885 e!3768331)))

(assert (=> d!1939882 (= res!2559885 (is-ElementMatch!16124 r!7292))))

(assert (=> d!1939882 (= (validRegex!7860 r!7292) e!3768331)))

(assert (= (and d!1939882 (not res!2559885)) b!6187404))

(assert (= (and b!6187404 c!1116018) b!6187405))

(assert (= (and b!6187404 (not c!1116018)) b!6187409))

(assert (= (and b!6187405 res!2559888) b!6187408))

(assert (= (and b!6187409 c!1116019) b!6187411))

(assert (= (and b!6187409 (not c!1116019)) b!6187403))

(assert (= (and b!6187411 res!2559886) b!6187406))

(assert (= (and b!6187403 (not res!2559884)) b!6187410))

(assert (= (and b!6187410 res!2559887) b!6187407))

(assert (= (or b!6187406 b!6187407) bm!517199))

(assert (= (or b!6187411 b!6187410) bm!517200))

(assert (= (or b!6187408 bm!517200) bm!517201))

(declare-fun m!7022192 () Bool)

(assert (=> bm!517199 m!7022192))

(declare-fun m!7022194 () Bool)

(assert (=> b!6187405 m!7022194))

(declare-fun m!7022196 () Bool)

(assert (=> bm!517201 m!7022196))

(assert (=> start!617140 d!1939882))

(assert (=> b!6187004 d!1939834))

(declare-fun d!1939884 () Bool)

(declare-fun lt!2339992 () Regex!16124)

(assert (=> d!1939884 (validRegex!7860 lt!2339992)))

(assert (=> d!1939884 (= lt!2339992 (generalisedUnion!1968 (unfocusZipperList!1545 zl!343)))))

(assert (=> d!1939884 (= (unfocusZipper!1866 zl!343) lt!2339992)))

(declare-fun bs!1535104 () Bool)

(assert (= bs!1535104 d!1939884))

(declare-fun m!7022198 () Bool)

(assert (=> bs!1535104 m!7022198))

(assert (=> bs!1535104 m!7021738))

(assert (=> bs!1535104 m!7021738))

(assert (=> bs!1535104 m!7021740))

(assert (=> b!6187022 d!1939884))

(assert (=> b!6187001 d!1939840))

(declare-fun d!1939886 () Bool)

(declare-fun e!3768338 () Bool)

(assert (=> d!1939886 e!3768338))

(declare-fun res!2559891 () Bool)

(assert (=> d!1939886 (=> (not res!2559891) (not e!3768338))))

(declare-fun lt!2339995 () List!64672)

(declare-fun noDuplicate!1965 (List!64672) Bool)

(assert (=> d!1939886 (= res!2559891 (noDuplicate!1965 lt!2339995))))

(declare-fun choose!45960 ((Set Context!11016)) List!64672)

(assert (=> d!1939886 (= lt!2339995 (choose!45960 z!1189))))

(assert (=> d!1939886 (= (toList!9908 z!1189) lt!2339995)))

(declare-fun b!6187414 () Bool)

(declare-fun content!12056 (List!64672) (Set Context!11016))

(assert (=> b!6187414 (= e!3768338 (= (content!12056 lt!2339995) z!1189))))

(assert (= (and d!1939886 res!2559891) b!6187414))

(declare-fun m!7022200 () Bool)

(assert (=> d!1939886 m!7022200))

(declare-fun m!7022202 () Bool)

(assert (=> d!1939886 m!7022202))

(declare-fun m!7022204 () Bool)

(assert (=> b!6187414 m!7022204))

(assert (=> b!6187000 d!1939886))

(declare-fun e!3768339 () Bool)

(declare-fun d!1939888 () Bool)

(assert (=> d!1939888 (= (matchZipper!2136 (set.union lt!2339794 lt!2339825) (t!378183 s!2326)) e!3768339)))

(declare-fun res!2559892 () Bool)

(assert (=> d!1939888 (=> res!2559892 e!3768339)))

(assert (=> d!1939888 (= res!2559892 (matchZipper!2136 lt!2339794 (t!378183 s!2326)))))

(declare-fun lt!2339996 () Unit!157771)

(assert (=> d!1939888 (= lt!2339996 (choose!45956 lt!2339794 lt!2339825 (t!378183 s!2326)))))

(assert (=> d!1939888 (= (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339794 lt!2339825 (t!378183 s!2326)) lt!2339996)))

(declare-fun b!6187415 () Bool)

(assert (=> b!6187415 (= e!3768339 (matchZipper!2136 lt!2339825 (t!378183 s!2326)))))

(assert (= (and d!1939888 (not res!2559892)) b!6187415))

(assert (=> d!1939888 m!7021836))

(assert (=> d!1939888 m!7021720))

(declare-fun m!7022206 () Bool)

(assert (=> d!1939888 m!7022206))

(assert (=> b!6187415 m!7021718))

(assert (=> b!6187020 d!1939888))

(assert (=> b!6187020 d!1939860))

(declare-fun d!1939890 () Bool)

(declare-fun c!1116020 () Bool)

(assert (=> d!1939890 (= c!1116020 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768340 () Bool)

(assert (=> d!1939890 (= (matchZipper!2136 (set.union lt!2339794 lt!2339825) (t!378183 s!2326)) e!3768340)))

(declare-fun b!6187416 () Bool)

(assert (=> b!6187416 (= e!3768340 (nullableZipper!1901 (set.union lt!2339794 lt!2339825)))))

(declare-fun b!6187417 () Bool)

(assert (=> b!6187417 (= e!3768340 (matchZipper!2136 (derivationStepZipper!2093 (set.union lt!2339794 lt!2339825) (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939890 c!1116020) b!6187416))

(assert (= (and d!1939890 (not c!1116020)) b!6187417))

(assert (=> d!1939890 m!7022016))

(declare-fun m!7022208 () Bool)

(assert (=> b!6187416 m!7022208))

(assert (=> b!6187417 m!7022020))

(assert (=> b!6187417 m!7022020))

(declare-fun m!7022210 () Bool)

(assert (=> b!6187417 m!7022210))

(assert (=> b!6187417 m!7022024))

(assert (=> b!6187417 m!7022210))

(assert (=> b!6187417 m!7022024))

(declare-fun m!7022212 () Bool)

(assert (=> b!6187417 m!7022212))

(assert (=> b!6187020 d!1939890))

(declare-fun bs!1535105 () Bool)

(declare-fun d!1939892 () Bool)

(assert (= bs!1535105 (and d!1939892 d!1939844)))

(declare-fun lambda!337823 () Int)

(assert (=> bs!1535105 (= lambda!337823 lambda!337804)))

(declare-fun bs!1535106 () Bool)

(assert (= bs!1535106 (and d!1939892 d!1939850)))

(assert (=> bs!1535106 (= lambda!337823 lambda!337805)))

(declare-fun bs!1535107 () Bool)

(assert (= bs!1535107 (and d!1939892 d!1939874)))

(assert (=> bs!1535107 (= lambda!337823 lambda!337817)))

(declare-fun bs!1535108 () Bool)

(assert (= bs!1535108 (and d!1939892 d!1939876)))

(assert (=> bs!1535108 (= lambda!337823 lambda!337820)))

(assert (=> d!1939892 (= (inv!83558 (h!70996 zl!343)) (forall!15241 (exprs!6008 (h!70996 zl!343)) lambda!337823))))

(declare-fun bs!1535109 () Bool)

(assert (= bs!1535109 d!1939892))

(declare-fun m!7022214 () Bool)

(assert (=> bs!1535109 m!7022214))

(assert (=> b!6186999 d!1939892))

(assert (=> b!6186998 d!1939856))

(declare-fun d!1939894 () Bool)

(declare-fun c!1116021 () Bool)

(assert (=> d!1939894 (= c!1116021 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768341 () Bool)

(assert (=> d!1939894 (= (matchZipper!2136 lt!2339807 (t!378183 s!2326)) e!3768341)))

(declare-fun b!6187418 () Bool)

(assert (=> b!6187418 (= e!3768341 (nullableZipper!1901 lt!2339807))))

(declare-fun b!6187419 () Bool)

(assert (=> b!6187419 (= e!3768341 (matchZipper!2136 (derivationStepZipper!2093 lt!2339807 (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939894 c!1116021) b!6187418))

(assert (= (and d!1939894 (not c!1116021)) b!6187419))

(assert (=> d!1939894 m!7022016))

(declare-fun m!7022216 () Bool)

(assert (=> b!6187418 m!7022216))

(assert (=> b!6187419 m!7022020))

(assert (=> b!6187419 m!7022020))

(declare-fun m!7022218 () Bool)

(assert (=> b!6187419 m!7022218))

(assert (=> b!6187419 m!7022024))

(assert (=> b!6187419 m!7022218))

(assert (=> b!6187419 m!7022024))

(declare-fun m!7022220 () Bool)

(assert (=> b!6187419 m!7022220))

(assert (=> b!6186998 d!1939894))

(declare-fun d!1939896 () Bool)

(declare-fun c!1116022 () Bool)

(assert (=> d!1939896 (= c!1116022 (isEmpty!36533 (t!378183 s!2326)))))

(declare-fun e!3768342 () Bool)

(assert (=> d!1939896 (= (matchZipper!2136 lt!2339816 (t!378183 s!2326)) e!3768342)))

(declare-fun b!6187420 () Bool)

(assert (=> b!6187420 (= e!3768342 (nullableZipper!1901 lt!2339816))))

(declare-fun b!6187421 () Bool)

(assert (=> b!6187421 (= e!3768342 (matchZipper!2136 (derivationStepZipper!2093 lt!2339816 (head!12761 (t!378183 s!2326))) (tail!11846 (t!378183 s!2326))))))

(assert (= (and d!1939896 c!1116022) b!6187420))

(assert (= (and d!1939896 (not c!1116022)) b!6187421))

(assert (=> d!1939896 m!7022016))

(declare-fun m!7022222 () Bool)

(assert (=> b!6187420 m!7022222))

(assert (=> b!6187421 m!7022020))

(assert (=> b!6187421 m!7022020))

(declare-fun m!7022224 () Bool)

(assert (=> b!6187421 m!7022224))

(assert (=> b!6187421 m!7022024))

(assert (=> b!6187421 m!7022224))

(assert (=> b!6187421 m!7022024))

(declare-fun m!7022226 () Bool)

(assert (=> b!6187421 m!7022226))

(assert (=> b!6186998 d!1939896))

(declare-fun e!3768343 () Bool)

(declare-fun d!1939898 () Bool)

(assert (=> d!1939898 (= (matchZipper!2136 (set.union lt!2339816 lt!2339794) (t!378183 s!2326)) e!3768343)))

(declare-fun res!2559893 () Bool)

(assert (=> d!1939898 (=> res!2559893 e!3768343)))

(assert (=> d!1939898 (= res!2559893 (matchZipper!2136 lt!2339816 (t!378183 s!2326)))))

(declare-fun lt!2339997 () Unit!157771)

(assert (=> d!1939898 (= lt!2339997 (choose!45956 lt!2339816 lt!2339794 (t!378183 s!2326)))))

(assert (=> d!1939898 (= (lemmaZipperConcatMatchesSameAsBothZippers!955 lt!2339816 lt!2339794 (t!378183 s!2326)) lt!2339997)))

(declare-fun b!6187422 () Bool)

(assert (=> b!6187422 (= e!3768343 (matchZipper!2136 lt!2339794 (t!378183 s!2326)))))

(assert (= (and d!1939898 (not res!2559893)) b!6187422))

(declare-fun m!7022228 () Bool)

(assert (=> d!1939898 m!7022228))

(assert (=> d!1939898 m!7021840))

(declare-fun m!7022230 () Bool)

(assert (=> d!1939898 m!7022230))

(assert (=> b!6187422 m!7021720))

(assert (=> b!6186998 d!1939898))

(declare-fun bs!1535110 () Bool)

(declare-fun d!1939900 () Bool)

(assert (= bs!1535110 (and d!1939900 d!1939850)))

(declare-fun lambda!337824 () Int)

(assert (=> bs!1535110 (= lambda!337824 lambda!337805)))

(declare-fun bs!1535111 () Bool)

(assert (= bs!1535111 (and d!1939900 d!1939876)))

(assert (=> bs!1535111 (= lambda!337824 lambda!337820)))

(declare-fun bs!1535112 () Bool)

(assert (= bs!1535112 (and d!1939900 d!1939874)))

(assert (=> bs!1535112 (= lambda!337824 lambda!337817)))

(declare-fun bs!1535113 () Bool)

(assert (= bs!1535113 (and d!1939900 d!1939892)))

(assert (=> bs!1535113 (= lambda!337824 lambda!337823)))

(declare-fun bs!1535114 () Bool)

(assert (= bs!1535114 (and d!1939900 d!1939844)))

(assert (=> bs!1535114 (= lambda!337824 lambda!337804)))

(declare-fun b!6187423 () Bool)

(declare-fun e!3768347 () Bool)

(declare-fun lt!2339998 () Regex!16124)

(assert (=> b!6187423 (= e!3768347 (isEmptyExpr!1537 lt!2339998))))

(declare-fun e!3768345 () Bool)

(assert (=> d!1939900 e!3768345))

(declare-fun res!2559894 () Bool)

(assert (=> d!1939900 (=> (not res!2559894) (not e!3768345))))

(assert (=> d!1939900 (= res!2559894 (validRegex!7860 lt!2339998))))

(declare-fun e!3768344 () Regex!16124)

(assert (=> d!1939900 (= lt!2339998 e!3768344)))

(declare-fun c!1116026 () Bool)

(declare-fun e!3768348 () Bool)

(assert (=> d!1939900 (= c!1116026 e!3768348)))

(declare-fun res!2559895 () Bool)

(assert (=> d!1939900 (=> (not res!2559895) (not e!3768348))))

(assert (=> d!1939900 (= res!2559895 (is-Cons!64547 (exprs!6008 (h!70996 zl!343))))))

(assert (=> d!1939900 (forall!15241 (exprs!6008 (h!70996 zl!343)) lambda!337824)))

(assert (=> d!1939900 (= (generalisedConcat!1721 (exprs!6008 (h!70996 zl!343))) lt!2339998)))

(declare-fun b!6187424 () Bool)

(assert (=> b!6187424 (= e!3768344 (h!70995 (exprs!6008 (h!70996 zl!343))))))

(declare-fun b!6187425 () Bool)

(assert (=> b!6187425 (= e!3768345 e!3768347)))

(declare-fun c!1116024 () Bool)

(assert (=> b!6187425 (= c!1116024 (isEmpty!36530 (exprs!6008 (h!70996 zl!343))))))

(declare-fun b!6187426 () Bool)

(assert (=> b!6187426 (= e!3768348 (isEmpty!36530 (t!378181 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun b!6187427 () Bool)

(declare-fun e!3768346 () Regex!16124)

(assert (=> b!6187427 (= e!3768346 EmptyExpr!16124)))

(declare-fun b!6187428 () Bool)

(declare-fun e!3768349 () Bool)

(assert (=> b!6187428 (= e!3768349 (= lt!2339998 (head!12762 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun b!6187429 () Bool)

(assert (=> b!6187429 (= e!3768344 e!3768346)))

(declare-fun c!1116023 () Bool)

(assert (=> b!6187429 (= c!1116023 (is-Cons!64547 (exprs!6008 (h!70996 zl!343))))))

(declare-fun b!6187430 () Bool)

(assert (=> b!6187430 (= e!3768346 (Concat!24969 (h!70995 (exprs!6008 (h!70996 zl!343))) (generalisedConcat!1721 (t!378181 (exprs!6008 (h!70996 zl!343))))))))

(declare-fun b!6187431 () Bool)

(assert (=> b!6187431 (= e!3768347 e!3768349)))

(declare-fun c!1116025 () Bool)

(assert (=> b!6187431 (= c!1116025 (isEmpty!36530 (tail!11847 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun b!6187432 () Bool)

(assert (=> b!6187432 (= e!3768349 (isConcat!1060 lt!2339998))))

(assert (= (and d!1939900 res!2559895) b!6187426))

(assert (= (and d!1939900 c!1116026) b!6187424))

(assert (= (and d!1939900 (not c!1116026)) b!6187429))

(assert (= (and b!6187429 c!1116023) b!6187430))

(assert (= (and b!6187429 (not c!1116023)) b!6187427))

(assert (= (and d!1939900 res!2559894) b!6187425))

(assert (= (and b!6187425 c!1116024) b!6187423))

(assert (= (and b!6187425 (not c!1116024)) b!6187431))

(assert (= (and b!6187431 c!1116025) b!6187428))

(assert (= (and b!6187431 (not c!1116025)) b!6187432))

(declare-fun m!7022232 () Bool)

(assert (=> b!6187430 m!7022232))

(declare-fun m!7022234 () Bool)

(assert (=> b!6187425 m!7022234))

(declare-fun m!7022236 () Bool)

(assert (=> b!6187431 m!7022236))

(assert (=> b!6187431 m!7022236))

(declare-fun m!7022238 () Bool)

(assert (=> b!6187431 m!7022238))

(declare-fun m!7022240 () Bool)

(assert (=> b!6187423 m!7022240))

(declare-fun m!7022242 () Bool)

(assert (=> d!1939900 m!7022242))

(declare-fun m!7022244 () Bool)

(assert (=> d!1939900 m!7022244))

(declare-fun m!7022246 () Bool)

(assert (=> b!6187432 m!7022246))

(assert (=> b!6187426 m!7021772))

(declare-fun m!7022248 () Bool)

(assert (=> b!6187428 m!7022248))

(assert (=> b!6187018 d!1939900))

(declare-fun d!1939902 () Bool)

(declare-fun lt!2340001 () Int)

(assert (=> d!1939902 (>= lt!2340001 0)))

(declare-fun e!3768352 () Int)

(assert (=> d!1939902 (= lt!2340001 e!3768352)))

(declare-fun c!1116029 () Bool)

(assert (=> d!1939902 (= c!1116029 (is-Cons!64548 zl!343))))

(assert (=> d!1939902 (= (zipperDepthTotal!307 zl!343) lt!2340001)))

(declare-fun b!6187437 () Bool)

(declare-fun contextDepthTotal!278 (Context!11016) Int)

(assert (=> b!6187437 (= e!3768352 (+ (contextDepthTotal!278 (h!70996 zl!343)) (zipperDepthTotal!307 (t!378182 zl!343))))))

(declare-fun b!6187438 () Bool)

(assert (=> b!6187438 (= e!3768352 0)))

(assert (= (and d!1939902 c!1116029) b!6187437))

(assert (= (and d!1939902 (not c!1116029)) b!6187438))

(declare-fun m!7022250 () Bool)

(assert (=> b!6187437 m!7022250))

(declare-fun m!7022252 () Bool)

(assert (=> b!6187437 m!7022252))

(assert (=> b!6187016 d!1939902))

(declare-fun d!1939904 () Bool)

(declare-fun lt!2340002 () Int)

(assert (=> d!1939904 (>= lt!2340002 0)))

(declare-fun e!3768353 () Int)

(assert (=> d!1939904 (= lt!2340002 e!3768353)))

(declare-fun c!1116030 () Bool)

(assert (=> d!1939904 (= c!1116030 (is-Cons!64548 lt!2339822))))

(assert (=> d!1939904 (= (zipperDepthTotal!307 lt!2339822) lt!2340002)))

(declare-fun b!6187439 () Bool)

(assert (=> b!6187439 (= e!3768353 (+ (contextDepthTotal!278 (h!70996 lt!2339822)) (zipperDepthTotal!307 (t!378182 lt!2339822))))))

(declare-fun b!6187440 () Bool)

(assert (=> b!6187440 (= e!3768353 0)))

(assert (= (and d!1939904 c!1116030) b!6187439))

(assert (= (and d!1939904 (not c!1116030)) b!6187440))

(declare-fun m!7022254 () Bool)

(assert (=> b!6187439 m!7022254))

(declare-fun m!7022256 () Bool)

(assert (=> b!6187439 m!7022256))

(assert (=> b!6187016 d!1939904))

(declare-fun bs!1535115 () Bool)

(declare-fun b!6187474 () Bool)

(assert (= bs!1535115 (and b!6187474 b!6187007)))

(declare-fun lambda!337829 () Int)

(assert (=> bs!1535115 (not (= lambda!337829 lambda!337784))))

(assert (=> bs!1535115 (not (= lambda!337829 lambda!337785))))

(declare-fun bs!1535116 () Bool)

(assert (= bs!1535116 (and b!6187474 d!1939870)))

(assert (=> bs!1535116 (not (= lambda!337829 lambda!337814))))

(assert (=> bs!1535116 (not (= lambda!337829 lambda!337813))))

(declare-fun bs!1535117 () Bool)

(assert (= bs!1535117 (and b!6187474 d!1939866)))

(assert (=> bs!1535117 (not (= lambda!337829 lambda!337808))))

(assert (=> b!6187474 true))

(assert (=> b!6187474 true))

(declare-fun bs!1535118 () Bool)

(declare-fun b!6187476 () Bool)

(assert (= bs!1535118 (and b!6187476 b!6187007)))

(declare-fun lambda!337830 () Int)

(assert (=> bs!1535118 (not (= lambda!337830 lambda!337784))))

(assert (=> bs!1535118 (= lambda!337830 lambda!337785)))

(declare-fun bs!1535119 () Bool)

(assert (= bs!1535119 (and b!6187476 d!1939870)))

(assert (=> bs!1535119 (= lambda!337830 lambda!337814)))

(declare-fun bs!1535120 () Bool)

(assert (= bs!1535120 (and b!6187476 b!6187474)))

(assert (=> bs!1535120 (not (= lambda!337830 lambda!337829))))

(assert (=> bs!1535119 (not (= lambda!337830 lambda!337813))))

(declare-fun bs!1535121 () Bool)

(assert (= bs!1535121 (and b!6187476 d!1939866)))

(assert (=> bs!1535121 (not (= lambda!337830 lambda!337808))))

(assert (=> b!6187476 true))

(assert (=> b!6187476 true))

(declare-fun bm!517206 () Bool)

(declare-fun call!517211 () Bool)

(assert (=> bm!517206 (= call!517211 (isEmpty!36533 s!2326))))

(declare-fun b!6187473 () Bool)

(declare-fun e!3768373 () Bool)

(declare-fun e!3768376 () Bool)

(assert (=> b!6187473 (= e!3768373 e!3768376)))

(declare-fun res!2559913 () Bool)

(assert (=> b!6187473 (= res!2559913 (matchRSpec!3225 (regOne!32761 r!7292) s!2326))))

(assert (=> b!6187473 (=> res!2559913 e!3768376)))

(declare-fun e!3768375 () Bool)

(declare-fun call!517212 () Bool)

(assert (=> b!6187474 (= e!3768375 call!517212)))

(declare-fun b!6187475 () Bool)

(declare-fun c!1116042 () Bool)

(assert (=> b!6187475 (= c!1116042 (is-Union!16124 r!7292))))

(declare-fun e!3768372 () Bool)

(assert (=> b!6187475 (= e!3768372 e!3768373)))

(declare-fun c!1116040 () Bool)

(declare-fun bm!517207 () Bool)

(assert (=> bm!517207 (= call!517212 (Exists!3194 (ite c!1116040 lambda!337829 lambda!337830)))))

(declare-fun d!1939906 () Bool)

(declare-fun c!1116039 () Bool)

(assert (=> d!1939906 (= c!1116039 (is-EmptyExpr!16124 r!7292))))

(declare-fun e!3768378 () Bool)

(assert (=> d!1939906 (= (matchRSpec!3225 r!7292 s!2326) e!3768378)))

(declare-fun e!3768374 () Bool)

(assert (=> b!6187476 (= e!3768374 call!517212)))

(declare-fun b!6187477 () Bool)

(declare-fun res!2559912 () Bool)

(assert (=> b!6187477 (=> res!2559912 e!3768375)))

(assert (=> b!6187477 (= res!2559912 call!517211)))

(assert (=> b!6187477 (= e!3768374 e!3768375)))

(declare-fun b!6187478 () Bool)

(declare-fun e!3768377 () Bool)

(assert (=> b!6187478 (= e!3768378 e!3768377)))

(declare-fun res!2559914 () Bool)

(assert (=> b!6187478 (= res!2559914 (not (is-EmptyLang!16124 r!7292)))))

(assert (=> b!6187478 (=> (not res!2559914) (not e!3768377))))

(declare-fun b!6187479 () Bool)

(declare-fun c!1116041 () Bool)

(assert (=> b!6187479 (= c!1116041 (is-ElementMatch!16124 r!7292))))

(assert (=> b!6187479 (= e!3768377 e!3768372)))

(declare-fun b!6187480 () Bool)

(assert (=> b!6187480 (= e!3768376 (matchRSpec!3225 (regTwo!32761 r!7292) s!2326))))

(declare-fun b!6187481 () Bool)

(assert (=> b!6187481 (= e!3768372 (= s!2326 (Cons!64549 (c!1115927 r!7292) Nil!64549)))))

(declare-fun b!6187482 () Bool)

(assert (=> b!6187482 (= e!3768378 call!517211)))

(declare-fun b!6187483 () Bool)

(assert (=> b!6187483 (= e!3768373 e!3768374)))

(assert (=> b!6187483 (= c!1116040 (is-Star!16124 r!7292))))

(assert (= (and d!1939906 c!1116039) b!6187482))

(assert (= (and d!1939906 (not c!1116039)) b!6187478))

(assert (= (and b!6187478 res!2559914) b!6187479))

(assert (= (and b!6187479 c!1116041) b!6187481))

(assert (= (and b!6187479 (not c!1116041)) b!6187475))

(assert (= (and b!6187475 c!1116042) b!6187473))

(assert (= (and b!6187475 (not c!1116042)) b!6187483))

(assert (= (and b!6187473 (not res!2559913)) b!6187480))

(assert (= (and b!6187483 c!1116040) b!6187477))

(assert (= (and b!6187483 (not c!1116040)) b!6187476))

(assert (= (and b!6187477 (not res!2559912)) b!6187474))

(assert (= (or b!6187474 b!6187476) bm!517207))

(assert (= (or b!6187482 b!6187477) bm!517206))

(assert (=> bm!517206 m!7021992))

(declare-fun m!7022258 () Bool)

(assert (=> b!6187473 m!7022258))

(declare-fun m!7022260 () Bool)

(assert (=> bm!517207 m!7022260))

(declare-fun m!7022262 () Bool)

(assert (=> b!6187480 m!7022262))

(assert (=> b!6186995 d!1939906))

(declare-fun b!6187484 () Bool)

(declare-fun e!3768380 () Bool)

(declare-fun lt!2340003 () Bool)

(declare-fun call!517213 () Bool)

(assert (=> b!6187484 (= e!3768380 (= lt!2340003 call!517213))))

(declare-fun b!6187485 () Bool)

(declare-fun res!2559922 () Bool)

(declare-fun e!3768385 () Bool)

(assert (=> b!6187485 (=> res!2559922 e!3768385)))

(assert (=> b!6187485 (= res!2559922 (not (is-ElementMatch!16124 r!7292)))))

(declare-fun e!3768382 () Bool)

(assert (=> b!6187485 (= e!3768382 e!3768385)))

(declare-fun b!6187486 () Bool)

(declare-fun e!3768381 () Bool)

(assert (=> b!6187486 (= e!3768381 (not (= (head!12761 s!2326) (c!1115927 r!7292))))))

(declare-fun b!6187487 () Bool)

(assert (=> b!6187487 (= e!3768380 e!3768382)))

(declare-fun c!1116043 () Bool)

(assert (=> b!6187487 (= c!1116043 (is-EmptyLang!16124 r!7292))))

(declare-fun b!6187488 () Bool)

(declare-fun e!3768383 () Bool)

(assert (=> b!6187488 (= e!3768385 e!3768383)))

(declare-fun res!2559920 () Bool)

(assert (=> b!6187488 (=> (not res!2559920) (not e!3768383))))

(assert (=> b!6187488 (= res!2559920 (not lt!2340003))))

(declare-fun b!6187489 () Bool)

(assert (=> b!6187489 (= e!3768383 e!3768381)))

(declare-fun res!2559917 () Bool)

(assert (=> b!6187489 (=> res!2559917 e!3768381)))

(assert (=> b!6187489 (= res!2559917 call!517213)))

(declare-fun b!6187490 () Bool)

(declare-fun res!2559915 () Bool)

(assert (=> b!6187490 (=> res!2559915 e!3768385)))

(declare-fun e!3768384 () Bool)

(assert (=> b!6187490 (= res!2559915 e!3768384)))

(declare-fun res!2559919 () Bool)

(assert (=> b!6187490 (=> (not res!2559919) (not e!3768384))))

(assert (=> b!6187490 (= res!2559919 lt!2340003)))

(declare-fun b!6187491 () Bool)

(assert (=> b!6187491 (= e!3768384 (= (head!12761 s!2326) (c!1115927 r!7292)))))

(declare-fun b!6187492 () Bool)

(assert (=> b!6187492 (= e!3768382 (not lt!2340003))))

(declare-fun bm!517208 () Bool)

(assert (=> bm!517208 (= call!517213 (isEmpty!36533 s!2326))))

(declare-fun b!6187493 () Bool)

(declare-fun res!2559918 () Bool)

(assert (=> b!6187493 (=> res!2559918 e!3768381)))

(assert (=> b!6187493 (= res!2559918 (not (isEmpty!36533 (tail!11846 s!2326))))))

(declare-fun b!6187495 () Bool)

(declare-fun e!3768379 () Bool)

(assert (=> b!6187495 (= e!3768379 (nullable!6117 r!7292))))

(declare-fun b!6187496 () Bool)

(declare-fun res!2559916 () Bool)

(assert (=> b!6187496 (=> (not res!2559916) (not e!3768384))))

(assert (=> b!6187496 (= res!2559916 (isEmpty!36533 (tail!11846 s!2326)))))

(declare-fun b!6187497 () Bool)

(assert (=> b!6187497 (= e!3768379 (matchR!8307 (derivativeStep!4839 r!7292 (head!12761 s!2326)) (tail!11846 s!2326)))))

(declare-fun d!1939908 () Bool)

(assert (=> d!1939908 e!3768380))

(declare-fun c!1116044 () Bool)

(assert (=> d!1939908 (= c!1116044 (is-EmptyExpr!16124 r!7292))))

(assert (=> d!1939908 (= lt!2340003 e!3768379)))

(declare-fun c!1116045 () Bool)

(assert (=> d!1939908 (= c!1116045 (isEmpty!36533 s!2326))))

(assert (=> d!1939908 (validRegex!7860 r!7292)))

(assert (=> d!1939908 (= (matchR!8307 r!7292 s!2326) lt!2340003)))

(declare-fun b!6187494 () Bool)

(declare-fun res!2559921 () Bool)

(assert (=> b!6187494 (=> (not res!2559921) (not e!3768384))))

(assert (=> b!6187494 (= res!2559921 (not call!517213))))

(assert (= (and d!1939908 c!1116045) b!6187495))

(assert (= (and d!1939908 (not c!1116045)) b!6187497))

(assert (= (and d!1939908 c!1116044) b!6187484))

(assert (= (and d!1939908 (not c!1116044)) b!6187487))

(assert (= (and b!6187487 c!1116043) b!6187492))

(assert (= (and b!6187487 (not c!1116043)) b!6187485))

(assert (= (and b!6187485 (not res!2559922)) b!6187490))

(assert (= (and b!6187490 res!2559919) b!6187494))

(assert (= (and b!6187494 res!2559921) b!6187496))

(assert (= (and b!6187496 res!2559916) b!6187491))

(assert (= (and b!6187490 (not res!2559915)) b!6187488))

(assert (= (and b!6187488 res!2559920) b!6187489))

(assert (= (and b!6187489 (not res!2559917)) b!6187493))

(assert (= (and b!6187493 (not res!2559918)) b!6187486))

(assert (= (or b!6187484 b!6187489 b!6187494) bm!517208))

(assert (=> bm!517208 m!7021992))

(assert (=> d!1939908 m!7021992))

(assert (=> d!1939908 m!7021770))

(assert (=> b!6187493 m!7022000))

(assert (=> b!6187493 m!7022000))

(assert (=> b!6187493 m!7022030))

(assert (=> b!6187491 m!7021996))

(assert (=> b!6187496 m!7022000))

(assert (=> b!6187496 m!7022000))

(assert (=> b!6187496 m!7022030))

(assert (=> b!6187486 m!7021996))

(assert (=> b!6187497 m!7021996))

(assert (=> b!6187497 m!7021996))

(declare-fun m!7022264 () Bool)

(assert (=> b!6187497 m!7022264))

(assert (=> b!6187497 m!7022000))

(assert (=> b!6187497 m!7022264))

(assert (=> b!6187497 m!7022000))

(declare-fun m!7022266 () Bool)

(assert (=> b!6187497 m!7022266))

(declare-fun m!7022268 () Bool)

(assert (=> b!6187495 m!7022268))

(assert (=> b!6186995 d!1939908))

(declare-fun d!1939910 () Bool)

(assert (=> d!1939910 (= (matchR!8307 r!7292 s!2326) (matchRSpec!3225 r!7292 s!2326))))

(declare-fun lt!2340006 () Unit!157771)

(declare-fun choose!45961 (Regex!16124 List!64673) Unit!157771)

(assert (=> d!1939910 (= lt!2340006 (choose!45961 r!7292 s!2326))))

(assert (=> d!1939910 (validRegex!7860 r!7292)))

(assert (=> d!1939910 (= (mainMatchTheorem!3225 r!7292 s!2326) lt!2340006)))

(declare-fun bs!1535122 () Bool)

(assert (= bs!1535122 d!1939910))

(assert (=> bs!1535122 m!7021776))

(assert (=> bs!1535122 m!7021774))

(declare-fun m!7022270 () Bool)

(assert (=> bs!1535122 m!7022270))

(assert (=> bs!1535122 m!7021770))

(assert (=> b!6186995 d!1939910))

(declare-fun d!1939912 () Bool)

(assert (=> d!1939912 (= (flatMap!1629 z!1189 lambda!337786) (choose!45954 z!1189 lambda!337786))))

(declare-fun bs!1535123 () Bool)

(assert (= bs!1535123 d!1939912))

(declare-fun m!7022272 () Bool)

(assert (=> bs!1535123 m!7022272))

(assert (=> b!6187015 d!1939912))

(declare-fun bm!517221 () Bool)

(declare-fun call!517230 () (Set Context!11016))

(declare-fun call!517227 () (Set Context!11016))

(assert (=> bm!517221 (= call!517230 call!517227)))

(declare-fun b!6187520 () Bool)

(declare-fun c!1116060 () Bool)

(assert (=> b!6187520 (= c!1116060 (is-Star!16124 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun e!3768400 () (Set Context!11016))

(declare-fun e!3768401 () (Set Context!11016))

(assert (=> b!6187520 (= e!3768400 e!3768401)))

(declare-fun b!6187521 () Bool)

(assert (=> b!6187521 (= e!3768400 call!517230)))

(declare-fun b!6187522 () Bool)

(declare-fun e!3768399 () (Set Context!11016))

(declare-fun call!517228 () (Set Context!11016))

(declare-fun call!517231 () (Set Context!11016))

(assert (=> b!6187522 (= e!3768399 (set.union call!517228 call!517231))))

(declare-fun d!1939914 () Bool)

(declare-fun c!1116056 () Bool)

(assert (=> d!1939914 (= c!1116056 (and (is-ElementMatch!16124 (h!70995 (exprs!6008 (h!70996 zl!343)))) (= (c!1115927 (h!70995 (exprs!6008 (h!70996 zl!343)))) (h!70997 s!2326))))))

(declare-fun e!3768403 () (Set Context!11016))

(assert (=> d!1939914 (= (derivationStepZipperDown!1372 (h!70995 (exprs!6008 (h!70996 zl!343))) lt!2339795 (h!70997 s!2326)) e!3768403)))

(declare-fun b!6187523 () Bool)

(assert (=> b!6187523 (= e!3768403 e!3768399)))

(declare-fun c!1116059 () Bool)

(assert (=> b!6187523 (= c!1116059 (is-Union!16124 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun b!6187524 () Bool)

(declare-fun e!3768398 () (Set Context!11016))

(assert (=> b!6187524 (= e!3768398 e!3768400)))

(declare-fun c!1116058 () Bool)

(assert (=> b!6187524 (= c!1116058 (is-Concat!24969 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun b!6187525 () Bool)

(assert (=> b!6187525 (= e!3768398 (set.union call!517228 call!517227))))

(declare-fun b!6187526 () Bool)

(assert (=> b!6187526 (= e!3768403 (set.insert lt!2339795 (as set.empty (Set Context!11016))))))

(declare-fun bm!517222 () Bool)

(declare-fun c!1116057 () Bool)

(declare-fun call!517226 () List!64671)

(assert (=> bm!517222 (= call!517231 (derivationStepZipperDown!1372 (ite c!1116059 (regTwo!32761 (h!70995 (exprs!6008 (h!70996 zl!343)))) (ite c!1116057 (regTwo!32760 (h!70995 (exprs!6008 (h!70996 zl!343)))) (ite c!1116058 (regOne!32760 (h!70995 (exprs!6008 (h!70996 zl!343)))) (reg!16453 (h!70995 (exprs!6008 (h!70996 zl!343))))))) (ite (or c!1116059 c!1116057) lt!2339795 (Context!11017 call!517226)) (h!70997 s!2326)))))

(declare-fun b!6187527 () Bool)

(assert (=> b!6187527 (= e!3768401 (as set.empty (Set Context!11016)))))

(declare-fun bm!517223 () Bool)

(declare-fun call!517229 () List!64671)

(assert (=> bm!517223 (= call!517226 call!517229)))

(declare-fun bm!517224 () Bool)

(declare-fun $colon$colon!1996 (List!64671 Regex!16124) List!64671)

(assert (=> bm!517224 (= call!517229 ($colon$colon!1996 (exprs!6008 lt!2339795) (ite (or c!1116057 c!1116058) (regTwo!32760 (h!70995 (exprs!6008 (h!70996 zl!343)))) (h!70995 (exprs!6008 (h!70996 zl!343))))))))

(declare-fun bm!517225 () Bool)

(assert (=> bm!517225 (= call!517227 call!517231)))

(declare-fun b!6187528 () Bool)

(declare-fun e!3768402 () Bool)

(assert (=> b!6187528 (= e!3768402 (nullable!6117 (regOne!32760 (h!70995 (exprs!6008 (h!70996 zl!343))))))))

(declare-fun b!6187529 () Bool)

(assert (=> b!6187529 (= e!3768401 call!517230)))

(declare-fun b!6187530 () Bool)

(assert (=> b!6187530 (= c!1116057 e!3768402)))

(declare-fun res!2559925 () Bool)

(assert (=> b!6187530 (=> (not res!2559925) (not e!3768402))))

(assert (=> b!6187530 (= res!2559925 (is-Concat!24969 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(assert (=> b!6187530 (= e!3768399 e!3768398)))

(declare-fun bm!517226 () Bool)

(assert (=> bm!517226 (= call!517228 (derivationStepZipperDown!1372 (ite c!1116059 (regOne!32761 (h!70995 (exprs!6008 (h!70996 zl!343)))) (regOne!32760 (h!70995 (exprs!6008 (h!70996 zl!343))))) (ite c!1116059 lt!2339795 (Context!11017 call!517229)) (h!70997 s!2326)))))

(assert (= (and d!1939914 c!1116056) b!6187526))

(assert (= (and d!1939914 (not c!1116056)) b!6187523))

(assert (= (and b!6187523 c!1116059) b!6187522))

(assert (= (and b!6187523 (not c!1116059)) b!6187530))

(assert (= (and b!6187530 res!2559925) b!6187528))

(assert (= (and b!6187530 c!1116057) b!6187525))

(assert (= (and b!6187530 (not c!1116057)) b!6187524))

(assert (= (and b!6187524 c!1116058) b!6187521))

(assert (= (and b!6187524 (not c!1116058)) b!6187520))

(assert (= (and b!6187520 c!1116060) b!6187529))

(assert (= (and b!6187520 (not c!1116060)) b!6187527))

(assert (= (or b!6187521 b!6187529) bm!517223))

(assert (= (or b!6187521 b!6187529) bm!517221))

(assert (= (or b!6187525 bm!517223) bm!517224))

(assert (= (or b!6187525 bm!517221) bm!517225))

(assert (= (or b!6187522 bm!517225) bm!517222))

(assert (= (or b!6187522 b!6187525) bm!517226))

(declare-fun m!7022274 () Bool)

(assert (=> b!6187526 m!7022274))

(declare-fun m!7022276 () Bool)

(assert (=> bm!517222 m!7022276))

(declare-fun m!7022278 () Bool)

(assert (=> bm!517226 m!7022278))

(declare-fun m!7022280 () Bool)

(assert (=> bm!517224 m!7022280))

(declare-fun m!7022282 () Bool)

(assert (=> b!6187528 m!7022282))

(assert (=> b!6187015 d!1939914))

(declare-fun d!1939916 () Bool)

(assert (=> d!1939916 (= (nullable!6117 (h!70995 (exprs!6008 (h!70996 zl!343)))) (nullableFct!2076 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun bs!1535124 () Bool)

(assert (= bs!1535124 d!1939916))

(declare-fun m!7022284 () Bool)

(assert (=> bs!1535124 m!7022284))

(assert (=> b!6187015 d!1939916))

(declare-fun b!6187531 () Bool)

(declare-fun e!3768406 () (Set Context!11016))

(declare-fun e!3768404 () (Set Context!11016))

(assert (=> b!6187531 (= e!3768406 e!3768404)))

(declare-fun c!1116062 () Bool)

(assert (=> b!6187531 (= c!1116062 (is-Cons!64547 (exprs!6008 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343))))))))))

(declare-fun b!6187532 () Bool)

(assert (=> b!6187532 (= e!3768404 (as set.empty (Set Context!11016)))))

(declare-fun b!6187533 () Bool)

(declare-fun call!517232 () (Set Context!11016))

(assert (=> b!6187533 (= e!3768404 call!517232)))

(declare-fun b!6187534 () Bool)

(assert (=> b!6187534 (= e!3768406 (set.union call!517232 (derivationStepZipperUp!1298 (Context!11017 (t!378181 (exprs!6008 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343)))))))) (h!70997 s!2326))))))

(declare-fun d!1939918 () Bool)

(declare-fun c!1116061 () Bool)

(declare-fun e!3768405 () Bool)

(assert (=> d!1939918 (= c!1116061 e!3768405)))

(declare-fun res!2559926 () Bool)

(assert (=> d!1939918 (=> (not res!2559926) (not e!3768405))))

(assert (=> d!1939918 (= res!2559926 (is-Cons!64547 (exprs!6008 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343))))))))))

(assert (=> d!1939918 (= (derivationStepZipperUp!1298 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343))))) (h!70997 s!2326)) e!3768406)))

(declare-fun b!6187535 () Bool)

(assert (=> b!6187535 (= e!3768405 (nullable!6117 (h!70995 (exprs!6008 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343)))))))))))

(declare-fun bm!517227 () Bool)

(assert (=> bm!517227 (= call!517232 (derivationStepZipperDown!1372 (h!70995 (exprs!6008 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343))))))) (Context!11017 (t!378181 (exprs!6008 (Context!11017 (Cons!64547 (h!70995 (exprs!6008 (h!70996 zl!343))) (t!378181 (exprs!6008 (h!70996 zl!343)))))))) (h!70997 s!2326)))))

(assert (= (and d!1939918 res!2559926) b!6187535))

(assert (= (and d!1939918 c!1116061) b!6187534))

(assert (= (and d!1939918 (not c!1116061)) b!6187531))

(assert (= (and b!6187531 c!1116062) b!6187533))

(assert (= (and b!6187531 (not c!1116062)) b!6187532))

(assert (= (or b!6187534 b!6187533) bm!517227))

(declare-fun m!7022286 () Bool)

(assert (=> b!6187534 m!7022286))

(declare-fun m!7022288 () Bool)

(assert (=> b!6187535 m!7022288))

(declare-fun m!7022290 () Bool)

(assert (=> bm!517227 m!7022290))

(assert (=> b!6187015 d!1939918))

(declare-fun b!6187536 () Bool)

(declare-fun e!3768409 () (Set Context!11016))

(declare-fun e!3768407 () (Set Context!11016))

(assert (=> b!6187536 (= e!3768409 e!3768407)))

(declare-fun c!1116064 () Bool)

(assert (=> b!6187536 (= c!1116064 (is-Cons!64547 (exprs!6008 lt!2339795)))))

(declare-fun b!6187537 () Bool)

(assert (=> b!6187537 (= e!3768407 (as set.empty (Set Context!11016)))))

(declare-fun b!6187538 () Bool)

(declare-fun call!517233 () (Set Context!11016))

(assert (=> b!6187538 (= e!3768407 call!517233)))

(declare-fun b!6187539 () Bool)

(assert (=> b!6187539 (= e!3768409 (set.union call!517233 (derivationStepZipperUp!1298 (Context!11017 (t!378181 (exprs!6008 lt!2339795))) (h!70997 s!2326))))))

(declare-fun d!1939920 () Bool)

(declare-fun c!1116063 () Bool)

(declare-fun e!3768408 () Bool)

(assert (=> d!1939920 (= c!1116063 e!3768408)))

(declare-fun res!2559927 () Bool)

(assert (=> d!1939920 (=> (not res!2559927) (not e!3768408))))

(assert (=> d!1939920 (= res!2559927 (is-Cons!64547 (exprs!6008 lt!2339795)))))

(assert (=> d!1939920 (= (derivationStepZipperUp!1298 lt!2339795 (h!70997 s!2326)) e!3768409)))

(declare-fun b!6187540 () Bool)

(assert (=> b!6187540 (= e!3768408 (nullable!6117 (h!70995 (exprs!6008 lt!2339795))))))

(declare-fun bm!517228 () Bool)

(assert (=> bm!517228 (= call!517233 (derivationStepZipperDown!1372 (h!70995 (exprs!6008 lt!2339795)) (Context!11017 (t!378181 (exprs!6008 lt!2339795))) (h!70997 s!2326)))))

(assert (= (and d!1939920 res!2559927) b!6187540))

(assert (= (and d!1939920 c!1116063) b!6187539))

(assert (= (and d!1939920 (not c!1116063)) b!6187536))

(assert (= (and b!6187536 c!1116064) b!6187538))

(assert (= (and b!6187536 (not c!1116064)) b!6187537))

(assert (= (or b!6187539 b!6187538) bm!517228))

(declare-fun m!7022292 () Bool)

(assert (=> b!6187539 m!7022292))

(declare-fun m!7022294 () Bool)

(assert (=> b!6187540 m!7022294))

(declare-fun m!7022296 () Bool)

(assert (=> bm!517228 m!7022296))

(assert (=> b!6187015 d!1939920))

(declare-fun b!6187541 () Bool)

(declare-fun e!3768412 () (Set Context!11016))

(declare-fun e!3768410 () (Set Context!11016))

(assert (=> b!6187541 (= e!3768412 e!3768410)))

(declare-fun c!1116066 () Bool)

(assert (=> b!6187541 (= c!1116066 (is-Cons!64547 (exprs!6008 (h!70996 zl!343))))))

(declare-fun b!6187542 () Bool)

(assert (=> b!6187542 (= e!3768410 (as set.empty (Set Context!11016)))))

(declare-fun b!6187543 () Bool)

(declare-fun call!517234 () (Set Context!11016))

(assert (=> b!6187543 (= e!3768410 call!517234)))

(declare-fun b!6187544 () Bool)

(assert (=> b!6187544 (= e!3768412 (set.union call!517234 (derivationStepZipperUp!1298 (Context!11017 (t!378181 (exprs!6008 (h!70996 zl!343)))) (h!70997 s!2326))))))

(declare-fun d!1939922 () Bool)

(declare-fun c!1116065 () Bool)

(declare-fun e!3768411 () Bool)

(assert (=> d!1939922 (= c!1116065 e!3768411)))

(declare-fun res!2559928 () Bool)

(assert (=> d!1939922 (=> (not res!2559928) (not e!3768411))))

(assert (=> d!1939922 (= res!2559928 (is-Cons!64547 (exprs!6008 (h!70996 zl!343))))))

(assert (=> d!1939922 (= (derivationStepZipperUp!1298 (h!70996 zl!343) (h!70997 s!2326)) e!3768412)))

(declare-fun b!6187545 () Bool)

(assert (=> b!6187545 (= e!3768411 (nullable!6117 (h!70995 (exprs!6008 (h!70996 zl!343)))))))

(declare-fun bm!517229 () Bool)

(assert (=> bm!517229 (= call!517234 (derivationStepZipperDown!1372 (h!70995 (exprs!6008 (h!70996 zl!343))) (Context!11017 (t!378181 (exprs!6008 (h!70996 zl!343)))) (h!70997 s!2326)))))

(assert (= (and d!1939922 res!2559928) b!6187545))

(assert (= (and d!1939922 c!1116065) b!6187544))

(assert (= (and d!1939922 (not c!1116065)) b!6187541))

(assert (= (and b!6187541 c!1116066) b!6187543))

(assert (= (and b!6187541 (not c!1116066)) b!6187542))

(assert (= (or b!6187544 b!6187543) bm!517229))

(declare-fun m!7022298 () Bool)

(assert (=> b!6187544 m!7022298))

(assert (=> b!6187545 m!7021814))

(declare-fun m!7022300 () Bool)

(assert (=> bm!517229 m!7022300))

(assert (=> b!6187015 d!1939922))

(declare-fun d!1939924 () Bool)

(assert (=> d!1939924 (= (flatMap!1629 z!1189 lambda!337786) (dynLambda!25455 lambda!337786 (h!70996 zl!343)))))

(declare-fun lt!2340007 () Unit!157771)

(assert (=> d!1939924 (= lt!2340007 (choose!45953 z!1189 (h!70996 zl!343) lambda!337786))))

(assert (=> d!1939924 (= z!1189 (set.insert (h!70996 zl!343) (as set.empty (Set Context!11016))))))

(assert (=> d!1939924 (= (lemmaFlatMapOnSingletonSet!1155 z!1189 (h!70996 zl!343) lambda!337786) lt!2340007)))

(declare-fun b_lambda!235449 () Bool)

(assert (=> (not b_lambda!235449) (not d!1939924)))

(declare-fun bs!1535125 () Bool)

(assert (= bs!1535125 d!1939924))

(assert (=> bs!1535125 m!7021818))

(declare-fun m!7022302 () Bool)

(assert (=> bs!1535125 m!7022302))

(declare-fun m!7022304 () Bool)

(assert (=> bs!1535125 m!7022304))

(declare-fun m!7022306 () Bool)

(assert (=> bs!1535125 m!7022306))

(assert (=> b!6187015 d!1939924))

(declare-fun d!1939926 () Bool)

(declare-fun lt!2340008 () Int)

(assert (=> d!1939926 (>= lt!2340008 0)))

(declare-fun e!3768413 () Int)

(assert (=> d!1939926 (= lt!2340008 e!3768413)))

(declare-fun c!1116067 () Bool)

(assert (=> d!1939926 (= c!1116067 (is-Cons!64548 lt!2339810))))

(assert (=> d!1939926 (= (zipperDepthTotal!307 lt!2339810) lt!2340008)))

(declare-fun b!6187546 () Bool)

(assert (=> b!6187546 (= e!3768413 (+ (contextDepthTotal!278 (h!70996 lt!2339810)) (zipperDepthTotal!307 (t!378182 lt!2339810))))))

(declare-fun b!6187547 () Bool)

(assert (=> b!6187547 (= e!3768413 0)))

(assert (= (and d!1939926 c!1116067) b!6187546))

(assert (= (and d!1939926 (not c!1116067)) b!6187547))

(declare-fun m!7022308 () Bool)

(assert (=> b!6187546 m!7022308))

(declare-fun m!7022310 () Bool)

(assert (=> b!6187546 m!7022310))

(assert (=> b!6186994 d!1939926))

(declare-fun bs!1535126 () Bool)

(declare-fun d!1939928 () Bool)

(assert (= bs!1535126 (and d!1939928 d!1939876)))

(declare-fun lambda!337831 () Int)

(assert (=> bs!1535126 (= lambda!337831 lambda!337820)))

(declare-fun bs!1535127 () Bool)

(assert (= bs!1535127 (and d!1939928 d!1939874)))

(assert (=> bs!1535127 (= lambda!337831 lambda!337817)))

(declare-fun bs!1535128 () Bool)

(assert (= bs!1535128 (and d!1939928 d!1939900)))

(assert (=> bs!1535128 (= lambda!337831 lambda!337824)))

(declare-fun bs!1535129 () Bool)

(assert (= bs!1535129 (and d!1939928 d!1939850)))

(assert (=> bs!1535129 (= lambda!337831 lambda!337805)))

(declare-fun bs!1535130 () Bool)

(assert (= bs!1535130 (and d!1939928 d!1939892)))

(assert (=> bs!1535130 (= lambda!337831 lambda!337823)))

(declare-fun bs!1535131 () Bool)

(assert (= bs!1535131 (and d!1939928 d!1939844)))

(assert (=> bs!1535131 (= lambda!337831 lambda!337804)))

(assert (=> d!1939928 (= (inv!83558 setElem!41959) (forall!15241 (exprs!6008 setElem!41959) lambda!337831))))

(declare-fun bs!1535132 () Bool)

(assert (= bs!1535132 d!1939928))

(declare-fun m!7022312 () Bool)

(assert (=> bs!1535132 m!7022312))

(assert (=> setNonEmpty!41959 d!1939928))

(declare-fun d!1939930 () Bool)

(assert (=> d!1939930 (= (isEmpty!36530 (t!378181 (exprs!6008 (h!70996 zl!343)))) (is-Nil!64547 (t!378181 (exprs!6008 (h!70996 zl!343)))))))

(assert (=> b!6187013 d!1939930))

(assert (=> b!6186993 d!1939860))

(declare-fun bm!517230 () Bool)

(declare-fun call!517239 () (Set Context!11016))

(declare-fun call!517236 () (Set Context!11016))

(assert (=> bm!517230 (= call!517239 call!517236)))

(declare-fun b!6187548 () Bool)

(declare-fun c!1116072 () Bool)

(assert (=> b!6187548 (= c!1116072 (is-Star!16124 (regTwo!32761 (regOne!32760 r!7292))))))

(declare-fun e!3768416 () (Set Context!11016))

(declare-fun e!3768417 () (Set Context!11016))

(assert (=> b!6187548 (= e!3768416 e!3768417)))

(declare-fun b!6187549 () Bool)

(assert (=> b!6187549 (= e!3768416 call!517239)))

(declare-fun b!6187550 () Bool)

(declare-fun e!3768415 () (Set Context!11016))

(declare-fun call!517237 () (Set Context!11016))

(declare-fun call!517240 () (Set Context!11016))

(assert (=> b!6187550 (= e!3768415 (set.union call!517237 call!517240))))

(declare-fun d!1939932 () Bool)

(declare-fun c!1116068 () Bool)

(assert (=> d!1939932 (= c!1116068 (and (is-ElementMatch!16124 (regTwo!32761 (regOne!32760 r!7292))) (= (c!1115927 (regTwo!32761 (regOne!32760 r!7292))) (h!70997 s!2326))))))

(declare-fun e!3768419 () (Set Context!11016))

(assert (=> d!1939932 (= (derivationStepZipperDown!1372 (regTwo!32761 (regOne!32760 r!7292)) lt!2339795 (h!70997 s!2326)) e!3768419)))

(declare-fun b!6187551 () Bool)

(assert (=> b!6187551 (= e!3768419 e!3768415)))

(declare-fun c!1116071 () Bool)

(assert (=> b!6187551 (= c!1116071 (is-Union!16124 (regTwo!32761 (regOne!32760 r!7292))))))

(declare-fun b!6187552 () Bool)

(declare-fun e!3768414 () (Set Context!11016))

(assert (=> b!6187552 (= e!3768414 e!3768416)))

(declare-fun c!1116070 () Bool)

(assert (=> b!6187552 (= c!1116070 (is-Concat!24969 (regTwo!32761 (regOne!32760 r!7292))))))

(declare-fun b!6187553 () Bool)

(assert (=> b!6187553 (= e!3768414 (set.union call!517237 call!517236))))

(declare-fun b!6187554 () Bool)

(assert (=> b!6187554 (= e!3768419 (set.insert lt!2339795 (as set.empty (Set Context!11016))))))

(declare-fun call!517235 () List!64671)

(declare-fun c!1116069 () Bool)

(declare-fun bm!517231 () Bool)

(assert (=> bm!517231 (= call!517240 (derivationStepZipperDown!1372 (ite c!1116071 (regTwo!32761 (regTwo!32761 (regOne!32760 r!7292))) (ite c!1116069 (regTwo!32760 (regTwo!32761 (regOne!32760 r!7292))) (ite c!1116070 (regOne!32760 (regTwo!32761 (regOne!32760 r!7292))) (reg!16453 (regTwo!32761 (regOne!32760 r!7292)))))) (ite (or c!1116071 c!1116069) lt!2339795 (Context!11017 call!517235)) (h!70997 s!2326)))))

(declare-fun b!6187555 () Bool)

(assert (=> b!6187555 (= e!3768417 (as set.empty (Set Context!11016)))))

(declare-fun bm!517232 () Bool)

(declare-fun call!517238 () List!64671)

(assert (=> bm!517232 (= call!517235 call!517238)))

(declare-fun bm!517233 () Bool)

(assert (=> bm!517233 (= call!517238 ($colon$colon!1996 (exprs!6008 lt!2339795) (ite (or c!1116069 c!1116070) (regTwo!32760 (regTwo!32761 (regOne!32760 r!7292))) (regTwo!32761 (regOne!32760 r!7292)))))))

(declare-fun bm!517234 () Bool)

(assert (=> bm!517234 (= call!517236 call!517240)))

(declare-fun b!6187556 () Bool)

(declare-fun e!3768418 () Bool)

(assert (=> b!6187556 (= e!3768418 (nullable!6117 (regOne!32760 (regTwo!32761 (regOne!32760 r!7292)))))))

(declare-fun b!6187557 () Bool)

(assert (=> b!6187557 (= e!3768417 call!517239)))

(declare-fun b!6187558 () Bool)

(assert (=> b!6187558 (= c!1116069 e!3768418)))

(declare-fun res!2559929 () Bool)

(assert (=> b!6187558 (=> (not res!2559929) (not e!3768418))))

(assert (=> b!6187558 (= res!2559929 (is-Concat!24969 (regTwo!32761 (regOne!32760 r!7292))))))

(assert (=> b!6187558 (= e!3768415 e!3768414)))

(declare-fun bm!517235 () Bool)

(assert (=> bm!517235 (= call!517237 (derivationStepZipperDown!1372 (ite c!1116071 (regOne!32761 (regTwo!32761 (regOne!32760 r!7292))) (regOne!32760 (regTwo!32761 (regOne!32760 r!7292)))) (ite c!1116071 lt!2339795 (Context!11017 call!517238)) (h!70997 s!2326)))))

(assert (= (and d!1939932 c!1116068) b!6187554))

(assert (= (and d!1939932 (not c!1116068)) b!6187551))

(assert (= (and b!6187551 c!1116071) b!6187550))

(assert (= (and b!6187551 (not c!1116071)) b!6187558))

(assert (= (and b!6187558 res!2559929) b!6187556))

(assert (= (and b!6187558 c!1116069) b!6187553))

(assert (= (and b!6187558 (not c!1116069)) b!6187552))

(assert (= (and b!6187552 c!1116070) b!6187549))

(assert (= (and b!6187552 (not c!1116070)) b!6187548))

(assert (= (and b!6187548 c!1116072) b!6187557))

(assert (= (and b!6187548 (not c!1116072)) b!6187555))

(assert (= (or b!6187549 b!6187557) bm!517232))

(assert (= (or b!6187549 b!6187557) bm!517230))

(assert (= (or b!6187553 bm!517232) bm!517233))

(assert (= (or b!6187553 bm!517230) bm!517234))

(assert (= (or b!6187550 bm!517234) bm!517231))

(assert (= (or b!6187550 b!6187553) bm!517235))

(assert (=> b!6187554 m!7022274))

(declare-fun m!7022314 () Bool)

(assert (=> bm!517231 m!7022314))

(declare-fun m!7022316 () Bool)

(assert (=> bm!517235 m!7022316))

(declare-fun m!7022318 () Bool)

(assert (=> bm!517233 m!7022318))

(declare-fun m!7022320 () Bool)

(assert (=> b!6187556 m!7022320))

(assert (=> b!6186992 d!1939932))

(declare-fun bm!517236 () Bool)

(declare-fun call!517245 () (Set Context!11016))

(declare-fun call!517242 () (Set Context!11016))

(assert (=> bm!517236 (= call!517245 call!517242)))

(declare-fun b!6187559 () Bool)

(declare-fun c!1116077 () Bool)

(assert (=> b!6187559 (= c!1116077 (is-Star!16124 (regOne!32761 (regOne!32760 r!7292))))))

(declare-fun e!3768422 () (Set Context!11016))

(declare-fun e!3768423 () (Set Context!11016))

(assert (=> b!6187559 (= e!3768422 e!3768423)))

(declare-fun b!6187560 () Bool)

(assert (=> b!6187560 (= e!3768422 call!517245)))

(declare-fun b!6187561 () Bool)

(declare-fun e!3768421 () (Set Context!11016))

(declare-fun call!517243 () (Set Context!11016))

(declare-fun call!517246 () (Set Context!11016))

(assert (=> b!6187561 (= e!3768421 (set.union call!517243 call!517246))))

(declare-fun d!1939934 () Bool)

(declare-fun c!1116073 () Bool)

(assert (=> d!1939934 (= c!1116073 (and (is-ElementMatch!16124 (regOne!32761 (regOne!32760 r!7292))) (= (c!1115927 (regOne!32761 (regOne!32760 r!7292))) (h!70997 s!2326))))))

(declare-fun e!3768425 () (Set Context!11016))

(assert (=> d!1939934 (= (derivationStepZipperDown!1372 (regOne!32761 (regOne!32760 r!7292)) lt!2339795 (h!70997 s!2326)) e!3768425)))

(declare-fun b!6187562 () Bool)

(assert (=> b!6187562 (= e!3768425 e!3768421)))

(declare-fun c!1116076 () Bool)

(assert (=> b!6187562 (= c!1116076 (is-Union!16124 (regOne!32761 (regOne!32760 r!7292))))))

(declare-fun b!6187563 () Bool)

(declare-fun e!3768420 () (Set Context!11016))

(assert (=> b!6187563 (= e!3768420 e!3768422)))

(declare-fun c!1116075 () Bool)

(assert (=> b!6187563 (= c!1116075 (is-Concat!24969 (regOne!32761 (regOne!32760 r!7292))))))

(declare-fun b!6187564 () Bool)

(assert (=> b!6187564 (= e!3768420 (set.union call!517243 call!517242))))

(declare-fun b!6187565 () Bool)

(assert (=> b!6187565 (= e!3768425 (set.insert lt!2339795 (as set.empty (Set Context!11016))))))

(declare-fun c!1116074 () Bool)

(declare-fun bm!517237 () Bool)

(declare-fun call!517241 () List!64671)

(assert (=> bm!517237 (= call!517246 (derivationStepZipperDown!1372 (ite c!1116076 (regTwo!32761 (regOne!32761 (regOne!32760 r!7292))) (ite c!1116074 (regTwo!32760 (regOne!32761 (regOne!32760 r!7292))) (ite c!1116075 (regOne!32760 (regOne!32761 (regOne!32760 r!7292))) (reg!16453 (regOne!32761 (regOne!32760 r!7292)))))) (ite (or c!1116076 c!1116074) lt!2339795 (Context!11017 call!517241)) (h!70997 s!2326)))))

(declare-fun b!6187566 () Bool)

(assert (=> b!6187566 (= e!3768423 (as set.empty (Set Context!11016)))))

(declare-fun bm!517238 () Bool)

(declare-fun call!517244 () List!64671)

(assert (=> bm!517238 (= call!517241 call!517244)))

(declare-fun bm!517239 () Bool)

(assert (=> bm!517239 (= call!517244 ($colon$colon!1996 (exprs!6008 lt!2339795) (ite (or c!1116074 c!1116075) (regTwo!32760 (regOne!32761 (regOne!32760 r!7292))) (regOne!32761 (regOne!32760 r!7292)))))))

(declare-fun bm!517240 () Bool)

(assert (=> bm!517240 (= call!517242 call!517246)))

(declare-fun b!6187567 () Bool)

(declare-fun e!3768424 () Bool)

(assert (=> b!6187567 (= e!3768424 (nullable!6117 (regOne!32760 (regOne!32761 (regOne!32760 r!7292)))))))

(declare-fun b!6187568 () Bool)

(assert (=> b!6187568 (= e!3768423 call!517245)))

(declare-fun b!6187569 () Bool)

(assert (=> b!6187569 (= c!1116074 e!3768424)))

(declare-fun res!2559930 () Bool)

(assert (=> b!6187569 (=> (not res!2559930) (not e!3768424))))

(assert (=> b!6187569 (= res!2559930 (is-Concat!24969 (regOne!32761 (regOne!32760 r!7292))))))

(assert (=> b!6187569 (= e!3768421 e!3768420)))

(declare-fun bm!517241 () Bool)

(assert (=> bm!517241 (= call!517243 (derivationStepZipperDown!1372 (ite c!1116076 (regOne!32761 (regOne!32761 (regOne!32760 r!7292))) (regOne!32760 (regOne!32761 (regOne!32760 r!7292)))) (ite c!1116076 lt!2339795 (Context!11017 call!517244)) (h!70997 s!2326)))))

(assert (= (and d!1939934 c!1116073) b!6187565))

(assert (= (and d!1939934 (not c!1116073)) b!6187562))

(assert (= (and b!6187562 c!1116076) b!6187561))

(assert (= (and b!6187562 (not c!1116076)) b!6187569))

(assert (= (and b!6187569 res!2559930) b!6187567))

(assert (= (and b!6187569 c!1116074) b!6187564))

(assert (= (and b!6187569 (not c!1116074)) b!6187563))

(assert (= (and b!6187563 c!1116075) b!6187560))

(assert (= (and b!6187563 (not c!1116075)) b!6187559))

(assert (= (and b!6187559 c!1116077) b!6187568))

(assert (= (and b!6187559 (not c!1116077)) b!6187566))

(assert (= (or b!6187560 b!6187568) bm!517238))

(assert (= (or b!6187560 b!6187568) bm!517236))

(assert (= (or b!6187564 bm!517238) bm!517239))

(assert (= (or b!6187564 bm!517236) bm!517240))

(assert (= (or b!6187561 bm!517240) bm!517237))

(assert (= (or b!6187561 b!6187564) bm!517241))

(assert (=> b!6187565 m!7022274))

(declare-fun m!7022322 () Bool)

(assert (=> bm!517237 m!7022322))

(declare-fun m!7022324 () Bool)

(assert (=> bm!517241 m!7022324))

(declare-fun m!7022326 () Bool)

(assert (=> bm!517239 m!7022326))

(declare-fun m!7022328 () Bool)

(assert (=> b!6187567 m!7022328))

(assert (=> b!6186992 d!1939934))

(declare-fun b!6187574 () Bool)

(declare-fun e!3768428 () Bool)

(declare-fun tp!1727043 () Bool)

(declare-fun tp!1727044 () Bool)

(assert (=> b!6187574 (= e!3768428 (and tp!1727043 tp!1727044))))

(assert (=> b!6186996 (= tp!1727002 e!3768428)))

(assert (= (and b!6186996 (is-Cons!64547 (exprs!6008 (h!70996 zl!343)))) b!6187574))

(declare-fun e!3768431 () Bool)

(assert (=> b!6187021 (= tp!1726999 e!3768431)))

(declare-fun b!6187586 () Bool)

(declare-fun tp!1727056 () Bool)

(declare-fun tp!1727055 () Bool)

(assert (=> b!6187586 (= e!3768431 (and tp!1727056 tp!1727055))))

(declare-fun b!6187588 () Bool)

(declare-fun tp!1727058 () Bool)

(declare-fun tp!1727057 () Bool)

(assert (=> b!6187588 (= e!3768431 (and tp!1727058 tp!1727057))))

(declare-fun b!6187587 () Bool)

(declare-fun tp!1727059 () Bool)

(assert (=> b!6187587 (= e!3768431 tp!1727059)))

(declare-fun b!6187585 () Bool)

(assert (=> b!6187585 (= e!3768431 tp_is_empty!41501)))

(assert (= (and b!6187021 (is-ElementMatch!16124 (reg!16453 r!7292))) b!6187585))

(assert (= (and b!6187021 (is-Concat!24969 (reg!16453 r!7292))) b!6187586))

(assert (= (and b!6187021 (is-Star!16124 (reg!16453 r!7292))) b!6187587))

(assert (= (and b!6187021 (is-Union!16124 (reg!16453 r!7292))) b!6187588))

(declare-fun b!6187596 () Bool)

(declare-fun e!3768437 () Bool)

(declare-fun tp!1727064 () Bool)

(assert (=> b!6187596 (= e!3768437 tp!1727064)))

(declare-fun b!6187595 () Bool)

(declare-fun e!3768436 () Bool)

(declare-fun tp!1727065 () Bool)

(assert (=> b!6187595 (= e!3768436 (and (inv!83558 (h!70996 (t!378182 zl!343))) e!3768437 tp!1727065))))

(assert (=> b!6186999 (= tp!1727003 e!3768436)))

(assert (= b!6187595 b!6187596))

(assert (= (and b!6186999 (is-Cons!64548 (t!378182 zl!343))) b!6187595))

(declare-fun m!7022330 () Bool)

(assert (=> b!6187595 m!7022330))

(declare-fun e!3768438 () Bool)

(assert (=> b!6187014 (= tp!1727008 e!3768438)))

(declare-fun b!6187598 () Bool)

(declare-fun tp!1727067 () Bool)

(declare-fun tp!1727066 () Bool)

(assert (=> b!6187598 (= e!3768438 (and tp!1727067 tp!1727066))))

(declare-fun b!6187600 () Bool)

(declare-fun tp!1727069 () Bool)

(declare-fun tp!1727068 () Bool)

(assert (=> b!6187600 (= e!3768438 (and tp!1727069 tp!1727068))))

(declare-fun b!6187599 () Bool)

(declare-fun tp!1727070 () Bool)

(assert (=> b!6187599 (= e!3768438 tp!1727070)))

(declare-fun b!6187597 () Bool)

(assert (=> b!6187597 (= e!3768438 tp_is_empty!41501)))

(assert (= (and b!6187014 (is-ElementMatch!16124 (regOne!32761 r!7292))) b!6187597))

(assert (= (and b!6187014 (is-Concat!24969 (regOne!32761 r!7292))) b!6187598))

(assert (= (and b!6187014 (is-Star!16124 (regOne!32761 r!7292))) b!6187599))

(assert (= (and b!6187014 (is-Union!16124 (regOne!32761 r!7292))) b!6187600))

(declare-fun e!3768439 () Bool)

(assert (=> b!6187014 (= tp!1727001 e!3768439)))

(declare-fun b!6187602 () Bool)

(declare-fun tp!1727072 () Bool)

(declare-fun tp!1727071 () Bool)

(assert (=> b!6187602 (= e!3768439 (and tp!1727072 tp!1727071))))

(declare-fun b!6187604 () Bool)

(declare-fun tp!1727074 () Bool)

(declare-fun tp!1727073 () Bool)

(assert (=> b!6187604 (= e!3768439 (and tp!1727074 tp!1727073))))

(declare-fun b!6187603 () Bool)

(declare-fun tp!1727075 () Bool)

(assert (=> b!6187603 (= e!3768439 tp!1727075)))

(declare-fun b!6187601 () Bool)

(assert (=> b!6187601 (= e!3768439 tp_is_empty!41501)))

(assert (= (and b!6187014 (is-ElementMatch!16124 (regTwo!32761 r!7292))) b!6187601))

(assert (= (and b!6187014 (is-Concat!24969 (regTwo!32761 r!7292))) b!6187602))

(assert (= (and b!6187014 (is-Star!16124 (regTwo!32761 r!7292))) b!6187603))

(assert (= (and b!6187014 (is-Union!16124 (regTwo!32761 r!7292))) b!6187604))

(declare-fun condSetEmpty!41965 () Bool)

(assert (=> setNonEmpty!41959 (= condSetEmpty!41965 (= setRest!41959 (as set.empty (Set Context!11016))))))

(declare-fun setRes!41965 () Bool)

(assert (=> setNonEmpty!41959 (= tp!1727005 setRes!41965)))

(declare-fun setIsEmpty!41965 () Bool)

(assert (=> setIsEmpty!41965 setRes!41965))

(declare-fun tp!1727080 () Bool)

(declare-fun setNonEmpty!41965 () Bool)

(declare-fun e!3768442 () Bool)

(declare-fun setElem!41965 () Context!11016)

(assert (=> setNonEmpty!41965 (= setRes!41965 (and tp!1727080 (inv!83558 setElem!41965) e!3768442))))

(declare-fun setRest!41965 () (Set Context!11016))

(assert (=> setNonEmpty!41965 (= setRest!41959 (set.union (set.insert setElem!41965 (as set.empty (Set Context!11016))) setRest!41965))))

(declare-fun b!6187609 () Bool)

(declare-fun tp!1727081 () Bool)

(assert (=> b!6187609 (= e!3768442 tp!1727081)))

(assert (= (and setNonEmpty!41959 condSetEmpty!41965) setIsEmpty!41965))

(assert (= (and setNonEmpty!41959 (not condSetEmpty!41965)) setNonEmpty!41965))

(assert (= setNonEmpty!41965 b!6187609))

(declare-fun m!7022332 () Bool)

(assert (=> setNonEmpty!41965 m!7022332))

(declare-fun e!3768443 () Bool)

(assert (=> b!6187003 (= tp!1727006 e!3768443)))

(declare-fun b!6187611 () Bool)

(declare-fun tp!1727083 () Bool)

(declare-fun tp!1727082 () Bool)

(assert (=> b!6187611 (= e!3768443 (and tp!1727083 tp!1727082))))

(declare-fun b!6187613 () Bool)

(declare-fun tp!1727085 () Bool)

(declare-fun tp!1727084 () Bool)

(assert (=> b!6187613 (= e!3768443 (and tp!1727085 tp!1727084))))

(declare-fun b!6187612 () Bool)

(declare-fun tp!1727086 () Bool)

(assert (=> b!6187612 (= e!3768443 tp!1727086)))

(declare-fun b!6187610 () Bool)

(assert (=> b!6187610 (= e!3768443 tp_is_empty!41501)))

(assert (= (and b!6187003 (is-ElementMatch!16124 (regOne!32760 r!7292))) b!6187610))

(assert (= (and b!6187003 (is-Concat!24969 (regOne!32760 r!7292))) b!6187611))

(assert (= (and b!6187003 (is-Star!16124 (regOne!32760 r!7292))) b!6187612))

(assert (= (and b!6187003 (is-Union!16124 (regOne!32760 r!7292))) b!6187613))

(declare-fun e!3768444 () Bool)

(assert (=> b!6187003 (= tp!1727004 e!3768444)))

(declare-fun b!6187615 () Bool)

(declare-fun tp!1727088 () Bool)

(declare-fun tp!1727087 () Bool)

(assert (=> b!6187615 (= e!3768444 (and tp!1727088 tp!1727087))))

(declare-fun b!6187617 () Bool)

(declare-fun tp!1727090 () Bool)

(declare-fun tp!1727089 () Bool)

(assert (=> b!6187617 (= e!3768444 (and tp!1727090 tp!1727089))))

(declare-fun b!6187616 () Bool)

(declare-fun tp!1727091 () Bool)

(assert (=> b!6187616 (= e!3768444 tp!1727091)))

(declare-fun b!6187614 () Bool)

(assert (=> b!6187614 (= e!3768444 tp_is_empty!41501)))

(assert (= (and b!6187003 (is-ElementMatch!16124 (regTwo!32760 r!7292))) b!6187614))

(assert (= (and b!6187003 (is-Concat!24969 (regTwo!32760 r!7292))) b!6187615))

(assert (= (and b!6187003 (is-Star!16124 (regTwo!32760 r!7292))) b!6187616))

(assert (= (and b!6187003 (is-Union!16124 (regTwo!32760 r!7292))) b!6187617))

(declare-fun b!6187622 () Bool)

(declare-fun e!3768447 () Bool)

(declare-fun tp!1727094 () Bool)

(assert (=> b!6187622 (= e!3768447 (and tp_is_empty!41501 tp!1727094))))

(assert (=> b!6187017 (= tp!1727000 e!3768447)))

(assert (= (and b!6187017 (is-Cons!64549 (t!378183 s!2326))) b!6187622))

(declare-fun b!6187623 () Bool)

(declare-fun e!3768448 () Bool)

(declare-fun tp!1727095 () Bool)

(declare-fun tp!1727096 () Bool)

(assert (=> b!6187623 (= e!3768448 (and tp!1727095 tp!1727096))))

(assert (=> b!6187002 (= tp!1727007 e!3768448)))

(assert (= (and b!6187002 (is-Cons!64547 (exprs!6008 setElem!41959))) b!6187623))

(declare-fun b_lambda!235451 () Bool)

(assert (= b_lambda!235449 (or b!6187015 b_lambda!235451)))

(declare-fun bs!1535133 () Bool)

(declare-fun d!1939936 () Bool)

(assert (= bs!1535133 (and d!1939936 b!6187015)))

(assert (=> bs!1535133 (= (dynLambda!25455 lambda!337786 (h!70996 zl!343)) (derivationStepZipperUp!1298 (h!70996 zl!343) (h!70997 s!2326)))))

(assert (=> bs!1535133 m!7021822))

(assert (=> d!1939924 d!1939936))

(declare-fun b_lambda!235453 () Bool)

(assert (= b_lambda!235447 (or b!6187015 b_lambda!235453)))

(declare-fun bs!1535134 () Bool)

(declare-fun d!1939938 () Bool)

(assert (= bs!1535134 (and d!1939938 b!6187015)))

(assert (=> bs!1535134 (= (dynLambda!25455 lambda!337786 lt!2339802) (derivationStepZipperUp!1298 lt!2339802 (h!70997 s!2326)))))

(assert (=> bs!1535134 m!7021750))

(assert (=> d!1939826 d!1939938))

(declare-fun b_lambda!235455 () Bool)

(assert (= b_lambda!235445 (or b!6187015 b_lambda!235455)))

(declare-fun bs!1535135 () Bool)

(declare-fun d!1939940 () Bool)

(assert (= bs!1535135 (and d!1939940 b!6187015)))

(assert (=> bs!1535135 (= (dynLambda!25455 lambda!337786 lt!2339792) (derivationStepZipperUp!1298 lt!2339792 (h!70997 s!2326)))))

(assert (=> bs!1535135 m!7021768))

(assert (=> d!1939818 d!1939940))

(push 1)

(assert (not bm!517235))

(assert (not bm!517201))

(assert (not bm!517233))

(assert (not d!1939872))

(assert (not b!6187228))

(assert (not b!6187400))

(assert (not b!6187602))

(assert (not d!1939814))

(assert (not b!6187343))

(assert (not b!6187402))

(assert (not b!6187491))

(assert (not bm!517185))

(assert (not b!6187493))

(assert (not d!1939874))

(assert (not d!1939878))

(assert (not b!6187350))

(assert (not b!6187420))

(assert (not b!6187321))

(assert (not b!6187320))

(assert (not b!6187284))

(assert (not b!6187315))

(assert (not d!1939900))

(assert (not b!6187290))

(assert (not bm!517184))

(assert (not d!1939880))

(assert (not setNonEmpty!41965))

(assert (not b!6187556))

(assert (not b!6187473))

(assert (not d!1939838))

(assert (not d!1939910))

(assert (not bm!517226))

(assert (not b!6187287))

(assert (not b!6187544))

(assert (not b!6187603))

(assert (not d!1939866))

(assert (not d!1939832))

(assert (not b!6187391))

(assert (not b_lambda!235455))

(assert (not b!6187301))

(assert (not b!6187232))

(assert (not b!6187604))

(assert (not b!6187495))

(assert tp_is_empty!41501)

(assert (not b!6187185))

(assert (not b!6187305))

(assert (not b!6187289))

(assert (not b!6187615))

(assert (not d!1939850))

(assert (not b!6187291))

(assert (not d!1939898))

(assert (not b!6187587))

(assert (not b!6187398))

(assert (not d!1939928))

(assert (not b!6187318))

(assert (not b!6187480))

(assert (not b!6187389))

(assert (not d!1939870))

(assert (not d!1939876))

(assert (not d!1939826))

(assert (not b!6187414))

(assert (not b!6187596))

(assert (not d!1939886))

(assert (not b!6187392))

(assert (not d!1939854))

(assert (not b!6187187))

(assert (not b!6187539))

(assert (not b!6187401))

(assert (not b!6187567))

(assert (not bm!517208))

(assert (not b!6187586))

(assert (not b!6187415))

(assert (not d!1939908))

(assert (not bm!517197))

(assert (not bm!517222))

(assert (not b!6187324))

(assert (not bm!517199))

(assert (not d!1939856))

(assert (not b!6187175))

(assert (not b!6187613))

(assert (not b!6187304))

(assert (not d!1939896))

(assert (not b!6187417))

(assert (not b_lambda!235451))

(assert (not bm!517195))

(assert (not bm!517237))

(assert (not d!1939818))

(assert (not b!6187282))

(assert (not bm!517228))

(assert (not bm!517206))

(assert (not bm!517239))

(assert (not bm!517224))

(assert (not b!6187600))

(assert (not b!6187226))

(assert (not d!1939836))

(assert (not bm!517229))

(assert (not d!1939888))

(assert (not b!6187423))

(assert (not b!6187190))

(assert (not b!6187528))

(assert (not b!6187306))

(assert (not d!1939924))

(assert (not b!6187323))

(assert (not b!6187422))

(assert (not d!1939868))

(assert (not b!6187437))

(assert (not bs!1535135))

(assert (not b!6187421))

(assert (not b!6187294))

(assert (not d!1939822))

(assert (not bs!1535134))

(assert (not b!6187303))

(assert (not b!6187181))

(assert (not b!6187595))

(assert (not b!6187319))

(assert (not b!6187311))

(assert (not d!1939848))

(assert (not b!6187439))

(assert (not d!1939844))

(assert (not bm!517227))

(assert (not d!1939892))

(assert (not b!6187308))

(assert (not b!6187611))

(assert (not b!6187534))

(assert (not b!6187188))

(assert (not b!6187309))

(assert (not b!6187221))

(assert (not b!6187612))

(assert (not d!1939862))

(assert (not b!6187497))

(assert (not b!6187496))

(assert (not b!6187622))

(assert (not d!1939846))

(assert (not b!6187419))

(assert (not d!1939860))

(assert (not d!1939894))

(assert (not b!6187388))

(assert (not b!6187180))

(assert (not b!6187231))

(assert (not b!6187609))

(assert (not d!1939824))

(assert (not b!6187546))

(assert (not b!6187346))

(assert (not b!6187588))

(assert (not b!6187545))

(assert (not b!6187574))

(assert (not bs!1535133))

(assert (not d!1939828))

(assert (not b!6187385))

(assert (not b!6187599))

(assert (not b!6187598))

(assert (not b!6187425))

(assert (not b!6187617))

(assert (not b!6187486))

(assert (not b!6187386))

(assert (not d!1939820))

(assert (not d!1939884))

(assert (not bm!517207))

(assert (not bm!517188))

(assert (not b!6187299))

(assert (not d!1939834))

(assert (not b!6187347))

(assert (not bm!517241))

(assert (not b!6187540))

(assert (not b!6187322))

(assert (not b!6187426))

(assert (not d!1939916))

(assert (not bm!517231))

(assert (not b!6187416))

(assert (not b!6187230))

(assert (not b!6187186))

(assert (not b!6187623))

(assert (not b!6187432))

(assert (not b!6187418))

(assert (not b!6187234))

(assert (not b!6187535))

(assert (not b_lambda!235453))

(assert (not d!1939912))

(assert (not b!6187314))

(assert (not b!6187255))

(assert (not b!6187616))

(assert (not b!6187405))

(assert (not b!6187387))

(assert (not b!6187351))

(assert (not b!6187349))

(assert (not b!6187313))

(assert (not b!6187233))

(assert (not d!1939864))

(assert (not b!6187189))

(assert (not b!6187430))

(assert (not d!1939858))

(assert (not d!1939840))

(assert (not b!6187174))

(assert (not b!6187431))

(assert (not bm!517198))

(assert (not d!1939890))

(assert (not b!6187285))

(assert (not b!6187428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

