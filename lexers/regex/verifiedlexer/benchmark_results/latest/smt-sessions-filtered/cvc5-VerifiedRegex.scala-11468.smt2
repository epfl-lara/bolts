; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!622552 () Bool)

(assert start!622552)

(declare-fun b!6258046 () Bool)

(assert (=> b!6258046 true))

(assert (=> b!6258046 true))

(declare-fun lambda!342543 () Int)

(declare-fun lambda!342542 () Int)

(assert (=> b!6258046 (not (= lambda!342543 lambda!342542))))

(assert (=> b!6258046 true))

(assert (=> b!6258046 true))

(declare-fun b!6258047 () Bool)

(assert (=> b!6258047 true))

(declare-fun b!6258024 () Bool)

(declare-fun e!3806890 () Bool)

(declare-fun tp!1745882 () Bool)

(declare-fun tp!1745880 () Bool)

(assert (=> b!6258024 (= e!3806890 (and tp!1745882 tp!1745880))))

(declare-fun b!6258025 () Bool)

(declare-fun res!2582597 () Bool)

(declare-fun e!3806884 () Bool)

(assert (=> b!6258025 (=> res!2582597 e!3806884)))

(declare-datatypes ((C!32634 0))(
  ( (C!32635 (val!26019 Int)) )
))
(declare-datatypes ((Regex!16182 0))(
  ( (ElementMatch!16182 (c!1133053 C!32634)) (Concat!25027 (regOne!32876 Regex!16182) (regTwo!32876 Regex!16182)) (EmptyExpr!16182) (Star!16182 (reg!16511 Regex!16182)) (EmptyLang!16182) (Union!16182 (regOne!32877 Regex!16182) (regTwo!32877 Regex!16182)) )
))
(declare-fun r!7292 () Regex!16182)

(declare-datatypes ((List!64845 0))(
  ( (Nil!64721) (Cons!64721 (h!71169 Regex!16182) (t!378397 List!64845)) )
))
(declare-datatypes ((Context!11132 0))(
  ( (Context!11133 (exprs!6066 List!64845)) )
))
(declare-datatypes ((List!64846 0))(
  ( (Nil!64722) (Cons!64722 (h!71170 Context!11132) (t!378398 List!64846)) )
))
(declare-fun zl!343 () List!64846)

(declare-fun generalisedConcat!1779 (List!64845) Regex!16182)

(assert (=> b!6258025 (= res!2582597 (not (= r!7292 (generalisedConcat!1779 (exprs!6066 (h!71170 zl!343))))))))

(declare-fun b!6258026 () Bool)

(declare-fun res!2582590 () Bool)

(declare-fun e!3806896 () Bool)

(assert (=> b!6258026 (=> res!2582590 e!3806896)))

(declare-fun lt!2349933 () Context!11132)

(declare-fun contextDepthTotal!305 (Context!11132) Int)

(assert (=> b!6258026 (= res!2582590 (>= (contextDepthTotal!305 lt!2349933) (contextDepthTotal!305 (h!71170 zl!343))))))

(declare-fun b!6258027 () Bool)

(declare-fun res!2582595 () Bool)

(declare-fun e!3806888 () Bool)

(assert (=> b!6258027 (=> res!2582595 e!3806888)))

(declare-fun isEmpty!36748 (List!64845) Bool)

(assert (=> b!6258027 (= res!2582595 (isEmpty!36748 (t!378397 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun b!6258028 () Bool)

(declare-fun res!2582602 () Bool)

(assert (=> b!6258028 (=> res!2582602 e!3806884)))

(declare-fun generalisedUnion!2026 (List!64845) Regex!16182)

(declare-fun unfocusZipperList!1603 (List!64846) List!64845)

(assert (=> b!6258028 (= res!2582602 (not (= r!7292 (generalisedUnion!2026 (unfocusZipperList!1603 zl!343)))))))

(declare-fun b!6258029 () Bool)

(declare-fun e!3806878 () Bool)

(declare-fun lt!2349916 () List!64845)

(declare-fun validRegex!7918 (Regex!16182) Bool)

(assert (=> b!6258029 (= e!3806878 (validRegex!7918 (generalisedConcat!1779 lt!2349916)))))

(declare-fun lt!2349925 () Regex!16182)

(declare-datatypes ((List!64847 0))(
  ( (Nil!64723) (Cons!64723 (h!71171 C!32634) (t!378399 List!64847)) )
))
(declare-fun s!2326 () List!64847)

(declare-fun lt!2349935 () (Set Context!11132))

(declare-fun matchR!8365 (Regex!16182 List!64847) Bool)

(declare-fun matchZipper!2194 ((Set Context!11132) List!64847) Bool)

(assert (=> b!6258029 (= (matchR!8365 lt!2349925 s!2326) (matchZipper!2194 lt!2349935 s!2326))))

(declare-fun lt!2349930 () List!64846)

(declare-datatypes ((Unit!158059 0))(
  ( (Unit!158060) )
))
(declare-fun lt!2349921 () Unit!158059)

(declare-fun theoremZipperRegexEquiv!752 ((Set Context!11132) List!64846 Regex!16182 List!64847) Unit!158059)

(assert (=> b!6258029 (= lt!2349921 (theoremZipperRegexEquiv!752 lt!2349935 lt!2349930 lt!2349925 s!2326))))

(declare-fun lt!2349907 () List!64845)

(assert (=> b!6258029 (= lt!2349925 (generalisedConcat!1779 lt!2349907))))

(declare-fun b!6258030 () Bool)

(declare-fun res!2582593 () Bool)

(assert (=> b!6258030 (=> res!2582593 e!3806878)))

(declare-fun zipperDepth!307 (List!64846) Int)

(assert (=> b!6258030 (= res!2582593 (> (zipperDepth!307 lt!2349930) (zipperDepth!307 zl!343)))))

(declare-fun b!6258031 () Bool)

(declare-fun e!3806895 () Bool)

(declare-fun e!3806880 () Bool)

(assert (=> b!6258031 (= e!3806895 e!3806880)))

(declare-fun res!2582591 () Bool)

(assert (=> b!6258031 (=> res!2582591 e!3806880)))

(declare-fun e!3806881 () Bool)

(assert (=> b!6258031 (= res!2582591 e!3806881)))

(declare-fun res!2582580 () Bool)

(assert (=> b!6258031 (=> (not res!2582580) (not e!3806881))))

(declare-fun lt!2349929 () Bool)

(declare-fun lt!2349903 () Bool)

(assert (=> b!6258031 (= res!2582580 (not (= lt!2349929 lt!2349903)))))

(declare-fun lt!2349910 () (Set Context!11132))

(assert (=> b!6258031 (= lt!2349929 (matchZipper!2194 lt!2349910 (t!378399 s!2326)))))

(declare-fun lt!2349909 () (Set Context!11132))

(declare-fun e!3806893 () Bool)

(assert (=> b!6258031 (= (matchZipper!2194 lt!2349909 (t!378399 s!2326)) e!3806893)))

(declare-fun res!2582596 () Bool)

(assert (=> b!6258031 (=> res!2582596 e!3806893)))

(assert (=> b!6258031 (= res!2582596 lt!2349903)))

(declare-fun lt!2349920 () (Set Context!11132))

(assert (=> b!6258031 (= lt!2349903 (matchZipper!2194 lt!2349920 (t!378399 s!2326)))))

(declare-fun lt!2349928 () Unit!158059)

(declare-fun lt!2349923 () (Set Context!11132))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1013 ((Set Context!11132) (Set Context!11132) List!64847) Unit!158059)

(assert (=> b!6258031 (= lt!2349928 (lemmaZipperConcatMatchesSameAsBothZippers!1013 lt!2349920 lt!2349923 (t!378399 s!2326)))))

(declare-fun b!6258032 () Bool)

(assert (=> b!6258032 (= e!3806893 (matchZipper!2194 lt!2349923 (t!378399 s!2326)))))

(declare-fun b!6258033 () Bool)

(declare-fun res!2582587 () Bool)

(declare-fun e!3806877 () Bool)

(assert (=> b!6258033 (=> (not res!2582587) (not e!3806877))))

(declare-fun unfocusZipper!1924 (List!64846) Regex!16182)

(assert (=> b!6258033 (= res!2582587 (= r!7292 (unfocusZipper!1924 zl!343)))))

(declare-fun b!6258034 () Bool)

(declare-fun res!2582599 () Bool)

(assert (=> b!6258034 (=> (not res!2582599) (not e!3806877))))

(declare-fun z!1189 () (Set Context!11132))

(declare-fun toList!9966 ((Set Context!11132)) List!64846)

(assert (=> b!6258034 (= res!2582599 (= (toList!9966 z!1189) zl!343))))

(declare-fun b!6258035 () Bool)

(declare-fun res!2582598 () Bool)

(assert (=> b!6258035 (=> res!2582598 e!3806884)))

(assert (=> b!6258035 (= res!2582598 (not (is-Cons!64721 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun b!6258036 () Bool)

(declare-fun e!3806885 () Unit!158059)

(declare-fun Unit!158061 () Unit!158059)

(assert (=> b!6258036 (= e!3806885 Unit!158061)))

(declare-fun lt!2349906 () (Set Context!11132))

(declare-fun lt!2349908 () Unit!158059)

(assert (=> b!6258036 (= lt!2349908 (lemmaZipperConcatMatchesSameAsBothZippers!1013 lt!2349910 lt!2349906 (t!378399 s!2326)))))

(declare-fun res!2582594 () Bool)

(assert (=> b!6258036 (= res!2582594 (matchZipper!2194 lt!2349910 (t!378399 s!2326)))))

(declare-fun e!3806889 () Bool)

(assert (=> b!6258036 (=> res!2582594 e!3806889)))

(assert (=> b!6258036 (= (matchZipper!2194 (set.union lt!2349910 lt!2349906) (t!378399 s!2326)) e!3806889)))

(declare-fun b!6258037 () Bool)

(declare-fun tp!1745883 () Bool)

(assert (=> b!6258037 (= e!3806890 tp!1745883)))

(declare-fun b!6258038 () Bool)

(declare-fun res!2582579 () Bool)

(assert (=> b!6258038 (=> res!2582579 e!3806896)))

(assert (=> b!6258038 (= res!2582579 (not (= (exprs!6066 (h!71170 zl!343)) (Cons!64721 (Concat!25027 (regOne!32876 (regOne!32876 r!7292)) (regTwo!32876 (regOne!32876 r!7292))) (t!378397 (exprs!6066 (h!71170 zl!343)))))))))

(declare-fun b!6258039 () Bool)

(declare-fun tp!1745886 () Bool)

(declare-fun tp!1745879 () Bool)

(assert (=> b!6258039 (= e!3806890 (and tp!1745886 tp!1745879))))

(declare-fun b!6258040 () Bool)

(declare-fun e!3806892 () Bool)

(assert (=> b!6258040 (= e!3806892 e!3806895)))

(declare-fun res!2582582 () Bool)

(assert (=> b!6258040 (=> res!2582582 e!3806895)))

(assert (=> b!6258040 (= res!2582582 (not (= lt!2349910 lt!2349909)))))

(assert (=> b!6258040 (= lt!2349909 (set.union lt!2349920 lt!2349923))))

(declare-fun lt!2349913 () Context!11132)

(declare-fun derivationStepZipperDown!1430 (Regex!16182 Context!11132 C!32634) (Set Context!11132))

(assert (=> b!6258040 (= lt!2349923 (derivationStepZipperDown!1430 (regTwo!32876 (regOne!32876 r!7292)) lt!2349913 (h!71171 s!2326)))))

(declare-fun lt!2349932 () Context!11132)

(assert (=> b!6258040 (= lt!2349920 (derivationStepZipperDown!1430 (regOne!32876 (regOne!32876 r!7292)) lt!2349932 (h!71171 s!2326)))))

(assert (=> b!6258040 (= lt!2349932 (Context!11133 lt!2349916))))

(assert (=> b!6258040 (= lt!2349916 (Cons!64721 (regTwo!32876 (regOne!32876 r!7292)) (t!378397 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun b!6258041 () Bool)

(declare-fun e!3806879 () Bool)

(declare-fun tp!1745885 () Bool)

(assert (=> b!6258041 (= e!3806879 tp!1745885)))

(declare-fun b!6258042 () Bool)

(declare-fun e!3806887 () Bool)

(declare-fun lt!2349914 () (Set Context!11132))

(assert (=> b!6258042 (= e!3806887 (matchZipper!2194 lt!2349914 (t!378399 s!2326)))))

(declare-fun b!6258043 () Bool)

(assert (=> b!6258043 (= e!3806877 (not e!3806884))))

(declare-fun res!2582592 () Bool)

(assert (=> b!6258043 (=> res!2582592 e!3806884)))

(assert (=> b!6258043 (= res!2582592 (not (is-Cons!64722 zl!343)))))

(declare-fun lt!2349922 () Bool)

(declare-fun matchRSpec!3283 (Regex!16182 List!64847) Bool)

(assert (=> b!6258043 (= lt!2349922 (matchRSpec!3283 r!7292 s!2326))))

(assert (=> b!6258043 (= lt!2349922 (matchR!8365 r!7292 s!2326))))

(declare-fun lt!2349926 () Unit!158059)

(declare-fun mainMatchTheorem!3283 (Regex!16182 List!64847) Unit!158059)

(assert (=> b!6258043 (= lt!2349926 (mainMatchTheorem!3283 r!7292 s!2326))))

(declare-fun b!6258044 () Bool)

(assert (=> b!6258044 (= e!3806889 (matchZipper!2194 lt!2349906 (t!378399 s!2326)))))

(declare-fun b!6258045 () Bool)

(declare-fun res!2582600 () Bool)

(assert (=> b!6258045 (=> res!2582600 e!3806884)))

(assert (=> b!6258045 (= res!2582600 (or (is-EmptyExpr!16182 r!7292) (is-EmptyLang!16182 r!7292) (is-ElementMatch!16182 r!7292) (is-Union!16182 r!7292) (not (is-Concat!25027 r!7292))))))

(assert (=> b!6258046 (= e!3806884 e!3806888)))

(declare-fun res!2582588 () Bool)

(assert (=> b!6258046 (=> res!2582588 e!3806888)))

(declare-fun lt!2349905 () Bool)

(assert (=> b!6258046 (= res!2582588 (or (not (= lt!2349922 lt!2349905)) (is-Nil!64723 s!2326)))))

(declare-fun Exists!3252 (Int) Bool)

(assert (=> b!6258046 (= (Exists!3252 lambda!342542) (Exists!3252 lambda!342543))))

(declare-fun lt!2349917 () Unit!158059)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1789 (Regex!16182 Regex!16182 List!64847) Unit!158059)

(assert (=> b!6258046 (= lt!2349917 (lemmaExistCutMatchRandMatchRSpecEquivalent!1789 (regOne!32876 r!7292) (regTwo!32876 r!7292) s!2326))))

(assert (=> b!6258046 (= lt!2349905 (Exists!3252 lambda!342542))))

(declare-datatypes ((tuple2!66322 0))(
  ( (tuple2!66323 (_1!36464 List!64847) (_2!36464 List!64847)) )
))
(declare-datatypes ((Option!16073 0))(
  ( (None!16072) (Some!16072 (v!52225 tuple2!66322)) )
))
(declare-fun isDefined!12776 (Option!16073) Bool)

(declare-fun findConcatSeparation!2487 (Regex!16182 Regex!16182 List!64847 List!64847 List!64847) Option!16073)

(assert (=> b!6258046 (= lt!2349905 (isDefined!12776 (findConcatSeparation!2487 (regOne!32876 r!7292) (regTwo!32876 r!7292) Nil!64723 s!2326 s!2326)))))

(declare-fun lt!2349904 () Unit!158059)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2251 (Regex!16182 Regex!16182 List!64847) Unit!158059)

(assert (=> b!6258046 (= lt!2349904 (lemmaFindConcatSeparationEquivalentToExists!2251 (regOne!32876 r!7292) (regTwo!32876 r!7292) s!2326))))

(assert (=> b!6258047 (= e!3806888 e!3806892)))

(declare-fun res!2582581 () Bool)

(assert (=> b!6258047 (=> res!2582581 e!3806892)))

(assert (=> b!6258047 (= res!2582581 (or (and (is-ElementMatch!16182 (regOne!32876 r!7292)) (= (c!1133053 (regOne!32876 r!7292)) (h!71171 s!2326))) (is-Union!16182 (regOne!32876 r!7292)) (not (is-Concat!25027 (regOne!32876 r!7292)))))))

(declare-fun lt!2349931 () Unit!158059)

(assert (=> b!6258047 (= lt!2349931 e!3806885)))

(declare-fun c!1133052 () Bool)

(declare-fun nullable!6175 (Regex!16182) Bool)

(assert (=> b!6258047 (= c!1133052 (nullable!6175 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun lambda!342544 () Int)

(declare-fun flatMap!1687 ((Set Context!11132) Int) (Set Context!11132))

(declare-fun derivationStepZipperUp!1356 (Context!11132 C!32634) (Set Context!11132))

(assert (=> b!6258047 (= (flatMap!1687 z!1189 lambda!342544) (derivationStepZipperUp!1356 (h!71170 zl!343) (h!71171 s!2326)))))

(declare-fun lt!2349915 () Unit!158059)

(declare-fun lemmaFlatMapOnSingletonSet!1213 ((Set Context!11132) Context!11132 Int) Unit!158059)

(assert (=> b!6258047 (= lt!2349915 (lemmaFlatMapOnSingletonSet!1213 z!1189 (h!71170 zl!343) lambda!342544))))

(assert (=> b!6258047 (= lt!2349906 (derivationStepZipperUp!1356 lt!2349913 (h!71171 s!2326)))))

(assert (=> b!6258047 (= lt!2349910 (derivationStepZipperDown!1430 (h!71169 (exprs!6066 (h!71170 zl!343))) lt!2349913 (h!71171 s!2326)))))

(assert (=> b!6258047 (= lt!2349913 (Context!11133 (t!378397 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun lt!2349918 () (Set Context!11132))

(assert (=> b!6258047 (= lt!2349918 (derivationStepZipperUp!1356 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343))))) (h!71171 s!2326)))))

(declare-fun b!6258048 () Bool)

(declare-fun Unit!158062 () Unit!158059)

(assert (=> b!6258048 (= e!3806885 Unit!158062)))

(declare-fun b!6258049 () Bool)

(declare-fun e!3806882 () Bool)

(declare-fun tp_is_empty!41617 () Bool)

(declare-fun tp!1745887 () Bool)

(assert (=> b!6258049 (= e!3806882 (and tp_is_empty!41617 tp!1745887))))

(declare-fun e!3806886 () Bool)

(declare-fun setNonEmpty!42557 () Bool)

(declare-fun setElem!42557 () Context!11132)

(declare-fun tp!1745888 () Bool)

(declare-fun setRes!42557 () Bool)

(declare-fun inv!83703 (Context!11132) Bool)

(assert (=> setNonEmpty!42557 (= setRes!42557 (and tp!1745888 (inv!83703 setElem!42557) e!3806886))))

(declare-fun setRest!42557 () (Set Context!11132))

(assert (=> setNonEmpty!42557 (= z!1189 (set.union (set.insert setElem!42557 (as set.empty (Set Context!11132))) setRest!42557))))

(declare-fun tp!1745881 () Bool)

(declare-fun b!6258050 () Bool)

(declare-fun e!3806883 () Bool)

(assert (=> b!6258050 (= e!3806883 (and (inv!83703 (h!71170 zl!343)) e!3806879 tp!1745881))))

(declare-fun b!6258051 () Bool)

(declare-fun res!2582578 () Bool)

(assert (=> b!6258051 (=> res!2582578 e!3806892)))

(assert (=> b!6258051 (= res!2582578 (not (nullable!6175 (regOne!32876 (regOne!32876 r!7292)))))))

(declare-fun b!6258052 () Bool)

(declare-fun res!2582585 () Bool)

(assert (=> b!6258052 (=> res!2582585 e!3806884)))

(declare-fun isEmpty!36749 (List!64846) Bool)

(assert (=> b!6258052 (= res!2582585 (not (isEmpty!36749 (t!378398 zl!343))))))

(declare-fun res!2582601 () Bool)

(assert (=> start!622552 (=> (not res!2582601) (not e!3806877))))

(assert (=> start!622552 (= res!2582601 (validRegex!7918 r!7292))))

(assert (=> start!622552 e!3806877))

(assert (=> start!622552 e!3806890))

(declare-fun condSetEmpty!42557 () Bool)

(assert (=> start!622552 (= condSetEmpty!42557 (= z!1189 (as set.empty (Set Context!11132))))))

(assert (=> start!622552 setRes!42557))

(assert (=> start!622552 e!3806883))

(assert (=> start!622552 e!3806882))

(declare-fun b!6258053 () Bool)

(assert (=> b!6258053 (= e!3806896 e!3806878)))

(declare-fun res!2582577 () Bool)

(assert (=> b!6258053 (=> res!2582577 e!3806878)))

(declare-fun zipperDepthTotal!335 (List!64846) Int)

(assert (=> b!6258053 (= res!2582577 (>= (zipperDepthTotal!335 lt!2349930) (zipperDepthTotal!335 zl!343)))))

(assert (=> b!6258053 (= lt!2349930 (Cons!64722 lt!2349933 Nil!64722))))

(declare-fun b!6258054 () Bool)

(declare-fun e!3806894 () Bool)

(declare-fun lt!2349919 () (Set Context!11132))

(declare-fun derivationStepZipper!2148 ((Set Context!11132) C!32634) (Set Context!11132))

(assert (=> b!6258054 (= e!3806894 (not (matchZipper!2194 (derivationStepZipper!2148 lt!2349919 (h!71171 s!2326)) (t!378399 s!2326))))))

(declare-fun setIsEmpty!42557 () Bool)

(assert (=> setIsEmpty!42557 setRes!42557))

(declare-fun b!6258055 () Bool)

(declare-fun tp!1745884 () Bool)

(assert (=> b!6258055 (= e!3806886 tp!1745884)))

(declare-fun b!6258056 () Bool)

(assert (=> b!6258056 (= e!3806881 (not (matchZipper!2194 lt!2349923 (t!378399 s!2326))))))

(declare-fun b!6258057 () Bool)

(declare-fun e!3806891 () Bool)

(assert (=> b!6258057 (= e!3806891 e!3806896)))

(declare-fun res!2582584 () Bool)

(assert (=> b!6258057 (=> res!2582584 e!3806896)))

(assert (=> b!6258057 (= res!2582584 e!3806894)))

(declare-fun res!2582586 () Bool)

(assert (=> b!6258057 (=> (not res!2582586) (not e!3806894))))

(declare-fun lt!2349911 () (Set Context!11132))

(assert (=> b!6258057 (= res!2582586 (not (= lt!2349929 (matchZipper!2194 lt!2349911 (t!378399 s!2326)))))))

(declare-fun lt!2349934 () (Set Context!11132))

(assert (=> b!6258057 (= (matchZipper!2194 lt!2349934 (t!378399 s!2326)) e!3806887)))

(declare-fun res!2582589 () Bool)

(assert (=> b!6258057 (=> res!2582589 e!3806887)))

(assert (=> b!6258057 (= res!2582589 lt!2349903)))

(declare-fun lt!2349912 () Unit!158059)

(assert (=> b!6258057 (= lt!2349912 (lemmaZipperConcatMatchesSameAsBothZippers!1013 lt!2349920 lt!2349914 (t!378399 s!2326)))))

(assert (=> b!6258057 (= (flatMap!1687 lt!2349919 lambda!342544) (derivationStepZipperUp!1356 lt!2349932 (h!71171 s!2326)))))

(declare-fun lt!2349924 () Unit!158059)

(assert (=> b!6258057 (= lt!2349924 (lemmaFlatMapOnSingletonSet!1213 lt!2349919 lt!2349932 lambda!342544))))

(declare-fun b!6258058 () Bool)

(assert (=> b!6258058 (= e!3806880 e!3806891)))

(declare-fun res!2582583 () Bool)

(assert (=> b!6258058 (=> res!2582583 e!3806891)))

(assert (=> b!6258058 (= res!2582583 (not (= lt!2349911 lt!2349934)))))

(assert (=> b!6258058 (= lt!2349934 (set.union lt!2349920 lt!2349914))))

(assert (=> b!6258058 (= lt!2349914 (derivationStepZipperUp!1356 lt!2349932 (h!71171 s!2326)))))

(assert (=> b!6258058 (= (flatMap!1687 lt!2349935 lambda!342544) (derivationStepZipperUp!1356 lt!2349933 (h!71171 s!2326)))))

(declare-fun lt!2349936 () Unit!158059)

(assert (=> b!6258058 (= lt!2349936 (lemmaFlatMapOnSingletonSet!1213 lt!2349935 lt!2349933 lambda!342544))))

(declare-fun lt!2349927 () (Set Context!11132))

(assert (=> b!6258058 (= lt!2349927 (derivationStepZipperUp!1356 lt!2349933 (h!71171 s!2326)))))

(assert (=> b!6258058 (= lt!2349911 (derivationStepZipper!2148 lt!2349935 (h!71171 s!2326)))))

(assert (=> b!6258058 (= lt!2349919 (set.insert lt!2349932 (as set.empty (Set Context!11132))))))

(assert (=> b!6258058 (= lt!2349935 (set.insert lt!2349933 (as set.empty (Set Context!11132))))))

(assert (=> b!6258058 (= lt!2349933 (Context!11133 lt!2349907))))

(assert (=> b!6258058 (= lt!2349907 (Cons!64721 (regOne!32876 (regOne!32876 r!7292)) lt!2349916))))

(declare-fun b!6258059 () Bool)

(assert (=> b!6258059 (= e!3806890 tp_is_empty!41617)))

(assert (= (and start!622552 res!2582601) b!6258034))

(assert (= (and b!6258034 res!2582599) b!6258033))

(assert (= (and b!6258033 res!2582587) b!6258043))

(assert (= (and b!6258043 (not res!2582592)) b!6258052))

(assert (= (and b!6258052 (not res!2582585)) b!6258025))

(assert (= (and b!6258025 (not res!2582597)) b!6258035))

(assert (= (and b!6258035 (not res!2582598)) b!6258028))

(assert (= (and b!6258028 (not res!2582602)) b!6258045))

(assert (= (and b!6258045 (not res!2582600)) b!6258046))

(assert (= (and b!6258046 (not res!2582588)) b!6258027))

(assert (= (and b!6258027 (not res!2582595)) b!6258047))

(assert (= (and b!6258047 c!1133052) b!6258036))

(assert (= (and b!6258047 (not c!1133052)) b!6258048))

(assert (= (and b!6258036 (not res!2582594)) b!6258044))

(assert (= (and b!6258047 (not res!2582581)) b!6258051))

(assert (= (and b!6258051 (not res!2582578)) b!6258040))

(assert (= (and b!6258040 (not res!2582582)) b!6258031))

(assert (= (and b!6258031 (not res!2582596)) b!6258032))

(assert (= (and b!6258031 res!2582580) b!6258056))

(assert (= (and b!6258031 (not res!2582591)) b!6258058))

(assert (= (and b!6258058 (not res!2582583)) b!6258057))

(assert (= (and b!6258057 (not res!2582589)) b!6258042))

(assert (= (and b!6258057 res!2582586) b!6258054))

(assert (= (and b!6258057 (not res!2582584)) b!6258038))

(assert (= (and b!6258038 (not res!2582579)) b!6258026))

(assert (= (and b!6258026 (not res!2582590)) b!6258053))

(assert (= (and b!6258053 (not res!2582577)) b!6258030))

(assert (= (and b!6258030 (not res!2582593)) b!6258029))

(assert (= (and start!622552 (is-ElementMatch!16182 r!7292)) b!6258059))

(assert (= (and start!622552 (is-Concat!25027 r!7292)) b!6258039))

(assert (= (and start!622552 (is-Star!16182 r!7292)) b!6258037))

(assert (= (and start!622552 (is-Union!16182 r!7292)) b!6258024))

(assert (= (and start!622552 condSetEmpty!42557) setIsEmpty!42557))

(assert (= (and start!622552 (not condSetEmpty!42557)) setNonEmpty!42557))

(assert (= setNonEmpty!42557 b!6258055))

(assert (= b!6258050 b!6258041))

(assert (= (and start!622552 (is-Cons!64722 zl!343)) b!6258050))

(assert (= (and start!622552 (is-Cons!64723 s!2326)) b!6258049))

(declare-fun m!7080768 () Bool)

(assert (=> b!6258032 m!7080768))

(declare-fun m!7080770 () Bool)

(assert (=> b!6258031 m!7080770))

(declare-fun m!7080772 () Bool)

(assert (=> b!6258031 m!7080772))

(declare-fun m!7080774 () Bool)

(assert (=> b!6258031 m!7080774))

(declare-fun m!7080776 () Bool)

(assert (=> b!6258031 m!7080776))

(declare-fun m!7080778 () Bool)

(assert (=> b!6258033 m!7080778))

(declare-fun m!7080780 () Bool)

(assert (=> b!6258058 m!7080780))

(declare-fun m!7080782 () Bool)

(assert (=> b!6258058 m!7080782))

(declare-fun m!7080784 () Bool)

(assert (=> b!6258058 m!7080784))

(declare-fun m!7080786 () Bool)

(assert (=> b!6258058 m!7080786))

(declare-fun m!7080788 () Bool)

(assert (=> b!6258058 m!7080788))

(declare-fun m!7080790 () Bool)

(assert (=> b!6258058 m!7080790))

(declare-fun m!7080792 () Bool)

(assert (=> b!6258058 m!7080792))

(declare-fun m!7080794 () Bool)

(assert (=> b!6258026 m!7080794))

(declare-fun m!7080796 () Bool)

(assert (=> b!6258026 m!7080796))

(declare-fun m!7080798 () Bool)

(assert (=> b!6258052 m!7080798))

(declare-fun m!7080800 () Bool)

(assert (=> b!6258029 m!7080800))

(declare-fun m!7080802 () Bool)

(assert (=> b!6258029 m!7080802))

(declare-fun m!7080804 () Bool)

(assert (=> b!6258029 m!7080804))

(declare-fun m!7080806 () Bool)

(assert (=> b!6258029 m!7080806))

(assert (=> b!6258029 m!7080800))

(declare-fun m!7080808 () Bool)

(assert (=> b!6258029 m!7080808))

(declare-fun m!7080810 () Bool)

(assert (=> b!6258029 m!7080810))

(declare-fun m!7080812 () Bool)

(assert (=> b!6258042 m!7080812))

(declare-fun m!7080814 () Bool)

(assert (=> b!6258047 m!7080814))

(declare-fun m!7080816 () Bool)

(assert (=> b!6258047 m!7080816))

(declare-fun m!7080818 () Bool)

(assert (=> b!6258047 m!7080818))

(declare-fun m!7080820 () Bool)

(assert (=> b!6258047 m!7080820))

(declare-fun m!7080822 () Bool)

(assert (=> b!6258047 m!7080822))

(declare-fun m!7080824 () Bool)

(assert (=> b!6258047 m!7080824))

(declare-fun m!7080826 () Bool)

(assert (=> b!6258047 m!7080826))

(declare-fun m!7080828 () Bool)

(assert (=> setNonEmpty!42557 m!7080828))

(declare-fun m!7080830 () Bool)

(assert (=> b!6258027 m!7080830))

(declare-fun m!7080832 () Bool)

(assert (=> start!622552 m!7080832))

(declare-fun m!7080834 () Bool)

(assert (=> b!6258043 m!7080834))

(declare-fun m!7080836 () Bool)

(assert (=> b!6258043 m!7080836))

(declare-fun m!7080838 () Bool)

(assert (=> b!6258043 m!7080838))

(declare-fun m!7080840 () Bool)

(assert (=> b!6258034 m!7080840))

(declare-fun m!7080842 () Bool)

(assert (=> b!6258028 m!7080842))

(assert (=> b!6258028 m!7080842))

(declare-fun m!7080844 () Bool)

(assert (=> b!6258028 m!7080844))

(declare-fun m!7080846 () Bool)

(assert (=> b!6258057 m!7080846))

(declare-fun m!7080848 () Bool)

(assert (=> b!6258057 m!7080848))

(declare-fun m!7080850 () Bool)

(assert (=> b!6258057 m!7080850))

(declare-fun m!7080852 () Bool)

(assert (=> b!6258057 m!7080852))

(assert (=> b!6258057 m!7080784))

(declare-fun m!7080854 () Bool)

(assert (=> b!6258057 m!7080854))

(declare-fun m!7080856 () Bool)

(assert (=> b!6258051 m!7080856))

(declare-fun m!7080858 () Bool)

(assert (=> b!6258036 m!7080858))

(assert (=> b!6258036 m!7080770))

(declare-fun m!7080860 () Bool)

(assert (=> b!6258036 m!7080860))

(assert (=> b!6258056 m!7080768))

(declare-fun m!7080862 () Bool)

(assert (=> b!6258046 m!7080862))

(declare-fun m!7080864 () Bool)

(assert (=> b!6258046 m!7080864))

(declare-fun m!7080866 () Bool)

(assert (=> b!6258046 m!7080866))

(declare-fun m!7080868 () Bool)

(assert (=> b!6258046 m!7080868))

(assert (=> b!6258046 m!7080868))

(declare-fun m!7080870 () Bool)

(assert (=> b!6258046 m!7080870))

(assert (=> b!6258046 m!7080862))

(declare-fun m!7080872 () Bool)

(assert (=> b!6258046 m!7080872))

(declare-fun m!7080874 () Bool)

(assert (=> b!6258044 m!7080874))

(declare-fun m!7080876 () Bool)

(assert (=> b!6258054 m!7080876))

(assert (=> b!6258054 m!7080876))

(declare-fun m!7080878 () Bool)

(assert (=> b!6258054 m!7080878))

(declare-fun m!7080880 () Bool)

(assert (=> b!6258030 m!7080880))

(declare-fun m!7080882 () Bool)

(assert (=> b!6258030 m!7080882))

(declare-fun m!7080884 () Bool)

(assert (=> b!6258040 m!7080884))

(declare-fun m!7080886 () Bool)

(assert (=> b!6258040 m!7080886))

(declare-fun m!7080888 () Bool)

(assert (=> b!6258053 m!7080888))

(declare-fun m!7080890 () Bool)

(assert (=> b!6258053 m!7080890))

(declare-fun m!7080892 () Bool)

(assert (=> b!6258025 m!7080892))

(declare-fun m!7080894 () Bool)

(assert (=> b!6258050 m!7080894))

(push 1)

(assert (not b!6258033))

(assert (not b!6258052))

(assert (not b!6258047))

(assert (not start!622552))

(assert (not b!6258046))

(assert (not b!6258041))

(assert (not b!6258049))

(assert (not b!6258058))

(assert (not b!6258055))

(assert (not b!6258030))

(assert (not b!6258057))

(assert (not b!6258026))

(assert (not b!6258043))

(assert (not b!6258051))

(assert (not b!6258028))

(assert (not b!6258037))

(assert (not b!6258027))

(assert (not b!6258034))

(assert (not b!6258042))

(assert (not b!6258036))

(assert (not b!6258025))

(assert (not b!6258053))

(assert (not b!6258031))

(assert tp_is_empty!41617)

(assert (not b!6258050))

(assert (not b!6258039))

(assert (not b!6258054))

(assert (not b!6258032))

(assert (not b!6258040))

(assert (not setNonEmpty!42557))

(assert (not b!6258044))

(assert (not b!6258029))

(assert (not b!6258056))

(assert (not b!6258024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6258202 () Bool)

(declare-fun e!3806970 () (Set Context!11132))

(assert (=> b!6258202 (= e!3806970 (as set.empty (Set Context!11132)))))

(declare-fun call!528255 () (Set Context!11132))

(declare-fun b!6258203 () Bool)

(declare-fun e!3806971 () (Set Context!11132))

(assert (=> b!6258203 (= e!3806971 (set.union call!528255 (derivationStepZipperUp!1356 (Context!11133 (t!378397 (exprs!6066 lt!2349913))) (h!71171 s!2326))))))

(declare-fun bm!528250 () Bool)

(assert (=> bm!528250 (= call!528255 (derivationStepZipperDown!1430 (h!71169 (exprs!6066 lt!2349913)) (Context!11133 (t!378397 (exprs!6066 lt!2349913))) (h!71171 s!2326)))))

(declare-fun b!6258204 () Bool)

(assert (=> b!6258204 (= e!3806970 call!528255)))

(declare-fun b!6258205 () Bool)

(assert (=> b!6258205 (= e!3806971 e!3806970)))

(declare-fun c!1133069 () Bool)

(assert (=> b!6258205 (= c!1133069 (is-Cons!64721 (exprs!6066 lt!2349913)))))

(declare-fun b!6258206 () Bool)

(declare-fun e!3806969 () Bool)

(assert (=> b!6258206 (= e!3806969 (nullable!6175 (h!71169 (exprs!6066 lt!2349913))))))

(declare-fun d!1963405 () Bool)

(declare-fun c!1133070 () Bool)

(assert (=> d!1963405 (= c!1133070 e!3806969)))

(declare-fun res!2582695 () Bool)

(assert (=> d!1963405 (=> (not res!2582695) (not e!3806969))))

(assert (=> d!1963405 (= res!2582695 (is-Cons!64721 (exprs!6066 lt!2349913)))))

(assert (=> d!1963405 (= (derivationStepZipperUp!1356 lt!2349913 (h!71171 s!2326)) e!3806971)))

(assert (= (and d!1963405 res!2582695) b!6258206))

(assert (= (and d!1963405 c!1133070) b!6258203))

(assert (= (and d!1963405 (not c!1133070)) b!6258205))

(assert (= (and b!6258205 c!1133069) b!6258204))

(assert (= (and b!6258205 (not c!1133069)) b!6258202))

(assert (= (or b!6258203 b!6258204) bm!528250))

(declare-fun m!7081024 () Bool)

(assert (=> b!6258203 m!7081024))

(declare-fun m!7081026 () Bool)

(assert (=> bm!528250 m!7081026))

(declare-fun m!7081028 () Bool)

(assert (=> b!6258206 m!7081028))

(assert (=> b!6258047 d!1963405))

(declare-fun d!1963407 () Bool)

(declare-fun choose!46438 ((Set Context!11132) Int) (Set Context!11132))

(assert (=> d!1963407 (= (flatMap!1687 z!1189 lambda!342544) (choose!46438 z!1189 lambda!342544))))

(declare-fun bs!1558998 () Bool)

(assert (= bs!1558998 d!1963407))

(declare-fun m!7081030 () Bool)

(assert (=> bs!1558998 m!7081030))

(assert (=> b!6258047 d!1963407))

(declare-fun d!1963409 () Bool)

(declare-fun nullableFct!2127 (Regex!16182) Bool)

(assert (=> d!1963409 (= (nullable!6175 (h!71169 (exprs!6066 (h!71170 zl!343)))) (nullableFct!2127 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun bs!1558999 () Bool)

(assert (= bs!1558999 d!1963409))

(declare-fun m!7081032 () Bool)

(assert (=> bs!1558999 m!7081032))

(assert (=> b!6258047 d!1963409))

(declare-fun b!6258207 () Bool)

(declare-fun e!3806973 () (Set Context!11132))

(assert (=> b!6258207 (= e!3806973 (as set.empty (Set Context!11132)))))

(declare-fun b!6258208 () Bool)

(declare-fun call!528256 () (Set Context!11132))

(declare-fun e!3806974 () (Set Context!11132))

(assert (=> b!6258208 (= e!3806974 (set.union call!528256 (derivationStepZipperUp!1356 (Context!11133 (t!378397 (exprs!6066 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343)))))))) (h!71171 s!2326))))))

(declare-fun bm!528251 () Bool)

(assert (=> bm!528251 (= call!528256 (derivationStepZipperDown!1430 (h!71169 (exprs!6066 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343))))))) (Context!11133 (t!378397 (exprs!6066 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343)))))))) (h!71171 s!2326)))))

(declare-fun b!6258209 () Bool)

(assert (=> b!6258209 (= e!3806973 call!528256)))

(declare-fun b!6258210 () Bool)

(assert (=> b!6258210 (= e!3806974 e!3806973)))

(declare-fun c!1133071 () Bool)

(assert (=> b!6258210 (= c!1133071 (is-Cons!64721 (exprs!6066 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343))))))))))

(declare-fun b!6258211 () Bool)

(declare-fun e!3806972 () Bool)

(assert (=> b!6258211 (= e!3806972 (nullable!6175 (h!71169 (exprs!6066 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343)))))))))))

(declare-fun d!1963411 () Bool)

(declare-fun c!1133072 () Bool)

(assert (=> d!1963411 (= c!1133072 e!3806972)))

(declare-fun res!2582696 () Bool)

(assert (=> d!1963411 (=> (not res!2582696) (not e!3806972))))

(assert (=> d!1963411 (= res!2582696 (is-Cons!64721 (exprs!6066 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343))))))))))

(assert (=> d!1963411 (= (derivationStepZipperUp!1356 (Context!11133 (Cons!64721 (h!71169 (exprs!6066 (h!71170 zl!343))) (t!378397 (exprs!6066 (h!71170 zl!343))))) (h!71171 s!2326)) e!3806974)))

(assert (= (and d!1963411 res!2582696) b!6258211))

(assert (= (and d!1963411 c!1133072) b!6258208))

(assert (= (and d!1963411 (not c!1133072)) b!6258210))

(assert (= (and b!6258210 c!1133071) b!6258209))

(assert (= (and b!6258210 (not c!1133071)) b!6258207))

(assert (= (or b!6258208 b!6258209) bm!528251))

(declare-fun m!7081034 () Bool)

(assert (=> b!6258208 m!7081034))

(declare-fun m!7081036 () Bool)

(assert (=> bm!528251 m!7081036))

(declare-fun m!7081038 () Bool)

(assert (=> b!6258211 m!7081038))

(assert (=> b!6258047 d!1963411))

(declare-fun d!1963413 () Bool)

(declare-fun dynLambda!25575 (Int Context!11132) (Set Context!11132))

(assert (=> d!1963413 (= (flatMap!1687 z!1189 lambda!342544) (dynLambda!25575 lambda!342544 (h!71170 zl!343)))))

(declare-fun lt!2350041 () Unit!158059)

(declare-fun choose!46439 ((Set Context!11132) Context!11132 Int) Unit!158059)

(assert (=> d!1963413 (= lt!2350041 (choose!46439 z!1189 (h!71170 zl!343) lambda!342544))))

(assert (=> d!1963413 (= z!1189 (set.insert (h!71170 zl!343) (as set.empty (Set Context!11132))))))

(assert (=> d!1963413 (= (lemmaFlatMapOnSingletonSet!1213 z!1189 (h!71170 zl!343) lambda!342544) lt!2350041)))

(declare-fun b_lambda!238181 () Bool)

(assert (=> (not b_lambda!238181) (not d!1963413)))

(declare-fun bs!1559000 () Bool)

(assert (= bs!1559000 d!1963413))

(assert (=> bs!1559000 m!7080816))

(declare-fun m!7081040 () Bool)

(assert (=> bs!1559000 m!7081040))

(declare-fun m!7081042 () Bool)

(assert (=> bs!1559000 m!7081042))

(declare-fun m!7081044 () Bool)

(assert (=> bs!1559000 m!7081044))

(assert (=> b!6258047 d!1963413))

(declare-fun b!6258234 () Bool)

(declare-fun e!3806990 () (Set Context!11132))

(declare-fun e!3806989 () (Set Context!11132))

(assert (=> b!6258234 (= e!3806990 e!3806989)))

(declare-fun c!1133087 () Bool)

(assert (=> b!6258234 (= c!1133087 (is-Concat!25027 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun c!1133084 () Bool)

(declare-fun bm!528264 () Bool)

(declare-fun c!1133086 () Bool)

(declare-fun call!528272 () (Set Context!11132))

(declare-fun call!528270 () List!64845)

(assert (=> bm!528264 (= call!528272 (derivationStepZipperDown!1430 (ite c!1133084 (regTwo!32877 (h!71169 (exprs!6066 (h!71170 zl!343)))) (ite c!1133086 (regTwo!32876 (h!71169 (exprs!6066 (h!71170 zl!343)))) (ite c!1133087 (regOne!32876 (h!71169 (exprs!6066 (h!71170 zl!343)))) (reg!16511 (h!71169 (exprs!6066 (h!71170 zl!343))))))) (ite (or c!1133084 c!1133086) lt!2349913 (Context!11133 call!528270)) (h!71171 s!2326)))))

(declare-fun bm!528265 () Bool)

(declare-fun call!528273 () (Set Context!11132))

(declare-fun call!528271 () (Set Context!11132))

(assert (=> bm!528265 (= call!528273 call!528271)))

(declare-fun bm!528266 () Bool)

(declare-fun call!528274 () (Set Context!11132))

(declare-fun call!528269 () List!64845)

(assert (=> bm!528266 (= call!528274 (derivationStepZipperDown!1430 (ite c!1133084 (regOne!32877 (h!71169 (exprs!6066 (h!71170 zl!343)))) (regOne!32876 (h!71169 (exprs!6066 (h!71170 zl!343))))) (ite c!1133084 lt!2349913 (Context!11133 call!528269)) (h!71171 s!2326)))))

(declare-fun bm!528267 () Bool)

(declare-fun $colon$colon!2047 (List!64845 Regex!16182) List!64845)

(assert (=> bm!528267 (= call!528269 ($colon$colon!2047 (exprs!6066 lt!2349913) (ite (or c!1133086 c!1133087) (regTwo!32876 (h!71169 (exprs!6066 (h!71170 zl!343)))) (h!71169 (exprs!6066 (h!71170 zl!343))))))))

(declare-fun bm!528268 () Bool)

(assert (=> bm!528268 (= call!528270 call!528269)))

(declare-fun b!6258235 () Bool)

(declare-fun e!3806991 () (Set Context!11132))

(assert (=> b!6258235 (= e!3806991 (as set.empty (Set Context!11132)))))

(declare-fun b!6258236 () Bool)

(declare-fun e!3806987 () Bool)

(assert (=> b!6258236 (= e!3806987 (nullable!6175 (regOne!32876 (h!71169 (exprs!6066 (h!71170 zl!343))))))))

(declare-fun b!6258237 () Bool)

(assert (=> b!6258237 (= c!1133086 e!3806987)))

(declare-fun res!2582699 () Bool)

(assert (=> b!6258237 (=> (not res!2582699) (not e!3806987))))

(assert (=> b!6258237 (= res!2582699 (is-Concat!25027 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun e!3806988 () (Set Context!11132))

(assert (=> b!6258237 (= e!3806988 e!3806990)))

(declare-fun b!6258238 () Bool)

(assert (=> b!6258238 (= e!3806989 call!528273)))

(declare-fun b!6258239 () Bool)

(assert (=> b!6258239 (= e!3806991 call!528273)))

(declare-fun b!6258240 () Bool)

(declare-fun e!3806992 () (Set Context!11132))

(assert (=> b!6258240 (= e!3806992 (set.insert lt!2349913 (as set.empty (Set Context!11132))))))

(declare-fun b!6258241 () Bool)

(declare-fun c!1133083 () Bool)

(assert (=> b!6258241 (= c!1133083 (is-Star!16182 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(assert (=> b!6258241 (= e!3806989 e!3806991)))

(declare-fun b!6258242 () Bool)

(assert (=> b!6258242 (= e!3806988 (set.union call!528274 call!528272))))

(declare-fun b!6258244 () Bool)

(assert (=> b!6258244 (= e!3806990 (set.union call!528274 call!528271))))

(declare-fun bm!528269 () Bool)

(assert (=> bm!528269 (= call!528271 call!528272)))

(declare-fun d!1963415 () Bool)

(declare-fun c!1133085 () Bool)

(assert (=> d!1963415 (= c!1133085 (and (is-ElementMatch!16182 (h!71169 (exprs!6066 (h!71170 zl!343)))) (= (c!1133053 (h!71169 (exprs!6066 (h!71170 zl!343)))) (h!71171 s!2326))))))

(assert (=> d!1963415 (= (derivationStepZipperDown!1430 (h!71169 (exprs!6066 (h!71170 zl!343))) lt!2349913 (h!71171 s!2326)) e!3806992)))

(declare-fun b!6258243 () Bool)

(assert (=> b!6258243 (= e!3806992 e!3806988)))

(assert (=> b!6258243 (= c!1133084 (is-Union!16182 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(assert (= (and d!1963415 c!1133085) b!6258240))

(assert (= (and d!1963415 (not c!1133085)) b!6258243))

(assert (= (and b!6258243 c!1133084) b!6258242))

(assert (= (and b!6258243 (not c!1133084)) b!6258237))

(assert (= (and b!6258237 res!2582699) b!6258236))

(assert (= (and b!6258237 c!1133086) b!6258244))

(assert (= (and b!6258237 (not c!1133086)) b!6258234))

(assert (= (and b!6258234 c!1133087) b!6258238))

(assert (= (and b!6258234 (not c!1133087)) b!6258241))

(assert (= (and b!6258241 c!1133083) b!6258239))

(assert (= (and b!6258241 (not c!1133083)) b!6258235))

(assert (= (or b!6258238 b!6258239) bm!528268))

(assert (= (or b!6258238 b!6258239) bm!528265))

(assert (= (or b!6258244 bm!528268) bm!528267))

(assert (= (or b!6258244 bm!528265) bm!528269))

(assert (= (or b!6258242 bm!528269) bm!528264))

(assert (= (or b!6258242 b!6258244) bm!528266))

(declare-fun m!7081046 () Bool)

(assert (=> b!6258236 m!7081046))

(declare-fun m!7081048 () Bool)

(assert (=> bm!528266 m!7081048))

(declare-fun m!7081050 () Bool)

(assert (=> b!6258240 m!7081050))

(declare-fun m!7081052 () Bool)

(assert (=> bm!528264 m!7081052))

(declare-fun m!7081054 () Bool)

(assert (=> bm!528267 m!7081054))

(assert (=> b!6258047 d!1963415))

(declare-fun b!6258245 () Bool)

(declare-fun e!3806994 () (Set Context!11132))

(assert (=> b!6258245 (= e!3806994 (as set.empty (Set Context!11132)))))

(declare-fun e!3806995 () (Set Context!11132))

(declare-fun call!528275 () (Set Context!11132))

(declare-fun b!6258246 () Bool)

(assert (=> b!6258246 (= e!3806995 (set.union call!528275 (derivationStepZipperUp!1356 (Context!11133 (t!378397 (exprs!6066 (h!71170 zl!343)))) (h!71171 s!2326))))))

(declare-fun bm!528270 () Bool)

(assert (=> bm!528270 (= call!528275 (derivationStepZipperDown!1430 (h!71169 (exprs!6066 (h!71170 zl!343))) (Context!11133 (t!378397 (exprs!6066 (h!71170 zl!343)))) (h!71171 s!2326)))))

(declare-fun b!6258247 () Bool)

(assert (=> b!6258247 (= e!3806994 call!528275)))

(declare-fun b!6258248 () Bool)

(assert (=> b!6258248 (= e!3806995 e!3806994)))

(declare-fun c!1133088 () Bool)

(assert (=> b!6258248 (= c!1133088 (is-Cons!64721 (exprs!6066 (h!71170 zl!343))))))

(declare-fun b!6258249 () Bool)

(declare-fun e!3806993 () Bool)

(assert (=> b!6258249 (= e!3806993 (nullable!6175 (h!71169 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun d!1963417 () Bool)

(declare-fun c!1133089 () Bool)

(assert (=> d!1963417 (= c!1133089 e!3806993)))

(declare-fun res!2582700 () Bool)

(assert (=> d!1963417 (=> (not res!2582700) (not e!3806993))))

(assert (=> d!1963417 (= res!2582700 (is-Cons!64721 (exprs!6066 (h!71170 zl!343))))))

(assert (=> d!1963417 (= (derivationStepZipperUp!1356 (h!71170 zl!343) (h!71171 s!2326)) e!3806995)))

(assert (= (and d!1963417 res!2582700) b!6258249))

(assert (= (and d!1963417 c!1133089) b!6258246))

(assert (= (and d!1963417 (not c!1133089)) b!6258248))

(assert (= (and b!6258248 c!1133088) b!6258247))

(assert (= (and b!6258248 (not c!1133088)) b!6258245))

(assert (= (or b!6258246 b!6258247) bm!528270))

(declare-fun m!7081056 () Bool)

(assert (=> b!6258246 m!7081056))

(declare-fun m!7081058 () Bool)

(assert (=> bm!528270 m!7081058))

(assert (=> b!6258249 m!7080824))

(assert (=> b!6258047 d!1963417))

(declare-fun d!1963419 () Bool)

(declare-fun lt!2350044 () Int)

(assert (=> d!1963419 (>= lt!2350044 0)))

(declare-fun e!3806998 () Int)

(assert (=> d!1963419 (= lt!2350044 e!3806998)))

(declare-fun c!1133093 () Bool)

(assert (=> d!1963419 (= c!1133093 (is-Cons!64721 (exprs!6066 lt!2349933)))))

(assert (=> d!1963419 (= (contextDepthTotal!305 lt!2349933) lt!2350044)))

(declare-fun b!6258254 () Bool)

(declare-fun regexDepthTotal!158 (Regex!16182) Int)

(assert (=> b!6258254 (= e!3806998 (+ (regexDepthTotal!158 (h!71169 (exprs!6066 lt!2349933))) (contextDepthTotal!305 (Context!11133 (t!378397 (exprs!6066 lt!2349933))))))))

(declare-fun b!6258255 () Bool)

(assert (=> b!6258255 (= e!3806998 1)))

(assert (= (and d!1963419 c!1133093) b!6258254))

(assert (= (and d!1963419 (not c!1133093)) b!6258255))

(declare-fun m!7081060 () Bool)

(assert (=> b!6258254 m!7081060))

(declare-fun m!7081062 () Bool)

(assert (=> b!6258254 m!7081062))

(assert (=> b!6258026 d!1963419))

(declare-fun d!1963421 () Bool)

(declare-fun lt!2350045 () Int)

(assert (=> d!1963421 (>= lt!2350045 0)))

(declare-fun e!3806999 () Int)

(assert (=> d!1963421 (= lt!2350045 e!3806999)))

(declare-fun c!1133094 () Bool)

(assert (=> d!1963421 (= c!1133094 (is-Cons!64721 (exprs!6066 (h!71170 zl!343))))))

(assert (=> d!1963421 (= (contextDepthTotal!305 (h!71170 zl!343)) lt!2350045)))

(declare-fun b!6258256 () Bool)

(assert (=> b!6258256 (= e!3806999 (+ (regexDepthTotal!158 (h!71169 (exprs!6066 (h!71170 zl!343)))) (contextDepthTotal!305 (Context!11133 (t!378397 (exprs!6066 (h!71170 zl!343)))))))))

(declare-fun b!6258257 () Bool)

(assert (=> b!6258257 (= e!3806999 1)))

(assert (= (and d!1963421 c!1133094) b!6258256))

(assert (= (and d!1963421 (not c!1133094)) b!6258257))

(declare-fun m!7081064 () Bool)

(assert (=> b!6258256 m!7081064))

(declare-fun m!7081066 () Bool)

(assert (=> b!6258256 m!7081066))

(assert (=> b!6258026 d!1963421))

(declare-fun d!1963423 () Bool)

(assert (=> d!1963423 (= (isEmpty!36748 (t!378397 (exprs!6066 (h!71170 zl!343)))) (is-Nil!64721 (t!378397 (exprs!6066 (h!71170 zl!343)))))))

(assert (=> b!6258027 d!1963423))

(declare-fun d!1963425 () Bool)

(declare-fun c!1133097 () Bool)

(declare-fun isEmpty!36752 (List!64847) Bool)

(assert (=> d!1963425 (= c!1133097 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807002 () Bool)

(assert (=> d!1963425 (= (matchZipper!2194 lt!2349906 (t!378399 s!2326)) e!3807002)))

(declare-fun b!6258262 () Bool)

(declare-fun nullableZipper!1952 ((Set Context!11132)) Bool)

(assert (=> b!6258262 (= e!3807002 (nullableZipper!1952 lt!2349906))))

(declare-fun b!6258263 () Bool)

(declare-fun head!12864 (List!64847) C!32634)

(declare-fun tail!11949 (List!64847) List!64847)

(assert (=> b!6258263 (= e!3807002 (matchZipper!2194 (derivationStepZipper!2148 lt!2349906 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963425 c!1133097) b!6258262))

(assert (= (and d!1963425 (not c!1133097)) b!6258263))

(declare-fun m!7081068 () Bool)

(assert (=> d!1963425 m!7081068))

(declare-fun m!7081070 () Bool)

(assert (=> b!6258262 m!7081070))

(declare-fun m!7081072 () Bool)

(assert (=> b!6258263 m!7081072))

(assert (=> b!6258263 m!7081072))

(declare-fun m!7081074 () Bool)

(assert (=> b!6258263 m!7081074))

(declare-fun m!7081076 () Bool)

(assert (=> b!6258263 m!7081076))

(assert (=> b!6258263 m!7081074))

(assert (=> b!6258263 m!7081076))

(declare-fun m!7081078 () Bool)

(assert (=> b!6258263 m!7081078))

(assert (=> b!6258044 d!1963425))

(declare-fun b!6258284 () Bool)

(declare-fun e!3807020 () Regex!16182)

(assert (=> b!6258284 (= e!3807020 (h!71169 (exprs!6066 (h!71170 zl!343))))))

(declare-fun b!6258285 () Bool)

(declare-fun e!3807018 () Bool)

(declare-fun lt!2350048 () Regex!16182)

(declare-fun isEmptyExpr!1588 (Regex!16182) Bool)

(assert (=> b!6258285 (= e!3807018 (isEmptyExpr!1588 lt!2350048))))

(declare-fun b!6258286 () Bool)

(declare-fun e!3807016 () Regex!16182)

(assert (=> b!6258286 (= e!3807016 (Concat!25027 (h!71169 (exprs!6066 (h!71170 zl!343))) (generalisedConcat!1779 (t!378397 (exprs!6066 (h!71170 zl!343))))))))

(declare-fun b!6258287 () Bool)

(assert (=> b!6258287 (= e!3807016 EmptyExpr!16182)))

(declare-fun b!6258288 () Bool)

(declare-fun e!3807019 () Bool)

(assert (=> b!6258288 (= e!3807018 e!3807019)))

(declare-fun c!1133106 () Bool)

(declare-fun tail!11950 (List!64845) List!64845)

(assert (=> b!6258288 (= c!1133106 (isEmpty!36748 (tail!11950 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun b!6258289 () Bool)

(declare-fun e!3807015 () Bool)

(assert (=> b!6258289 (= e!3807015 e!3807018)))

(declare-fun c!1133109 () Bool)

(assert (=> b!6258289 (= c!1133109 (isEmpty!36748 (exprs!6066 (h!71170 zl!343))))))

(declare-fun b!6258290 () Bool)

(assert (=> b!6258290 (= e!3807020 e!3807016)))

(declare-fun c!1133107 () Bool)

(assert (=> b!6258290 (= c!1133107 (is-Cons!64721 (exprs!6066 (h!71170 zl!343))))))

(declare-fun b!6258291 () Bool)

(declare-fun isConcat!1111 (Regex!16182) Bool)

(assert (=> b!6258291 (= e!3807019 (isConcat!1111 lt!2350048))))

(declare-fun d!1963427 () Bool)

(assert (=> d!1963427 e!3807015))

(declare-fun res!2582706 () Bool)

(assert (=> d!1963427 (=> (not res!2582706) (not e!3807015))))

(assert (=> d!1963427 (= res!2582706 (validRegex!7918 lt!2350048))))

(assert (=> d!1963427 (= lt!2350048 e!3807020)))

(declare-fun c!1133108 () Bool)

(declare-fun e!3807017 () Bool)

(assert (=> d!1963427 (= c!1133108 e!3807017)))

(declare-fun res!2582705 () Bool)

(assert (=> d!1963427 (=> (not res!2582705) (not e!3807017))))

(assert (=> d!1963427 (= res!2582705 (is-Cons!64721 (exprs!6066 (h!71170 zl!343))))))

(declare-fun lambda!342562 () Int)

(declare-fun forall!15302 (List!64845 Int) Bool)

(assert (=> d!1963427 (forall!15302 (exprs!6066 (h!71170 zl!343)) lambda!342562)))

(assert (=> d!1963427 (= (generalisedConcat!1779 (exprs!6066 (h!71170 zl!343))) lt!2350048)))

(declare-fun b!6258292 () Bool)

(declare-fun head!12865 (List!64845) Regex!16182)

(assert (=> b!6258292 (= e!3807019 (= lt!2350048 (head!12865 (exprs!6066 (h!71170 zl!343)))))))

(declare-fun b!6258293 () Bool)

(assert (=> b!6258293 (= e!3807017 (isEmpty!36748 (t!378397 (exprs!6066 (h!71170 zl!343)))))))

(assert (= (and d!1963427 res!2582705) b!6258293))

(assert (= (and d!1963427 c!1133108) b!6258284))

(assert (= (and d!1963427 (not c!1133108)) b!6258290))

(assert (= (and b!6258290 c!1133107) b!6258286))

(assert (= (and b!6258290 (not c!1133107)) b!6258287))

(assert (= (and d!1963427 res!2582706) b!6258289))

(assert (= (and b!6258289 c!1133109) b!6258285))

(assert (= (and b!6258289 (not c!1133109)) b!6258288))

(assert (= (and b!6258288 c!1133106) b!6258292))

(assert (= (and b!6258288 (not c!1133106)) b!6258291))

(declare-fun m!7081080 () Bool)

(assert (=> d!1963427 m!7081080))

(declare-fun m!7081082 () Bool)

(assert (=> d!1963427 m!7081082))

(declare-fun m!7081084 () Bool)

(assert (=> b!6258292 m!7081084))

(declare-fun m!7081086 () Bool)

(assert (=> b!6258288 m!7081086))

(assert (=> b!6258288 m!7081086))

(declare-fun m!7081088 () Bool)

(assert (=> b!6258288 m!7081088))

(declare-fun m!7081090 () Bool)

(assert (=> b!6258289 m!7081090))

(declare-fun m!7081092 () Bool)

(assert (=> b!6258285 m!7081092))

(declare-fun m!7081094 () Bool)

(assert (=> b!6258286 m!7081094))

(assert (=> b!6258293 m!7080830))

(declare-fun m!7081096 () Bool)

(assert (=> b!6258291 m!7081096))

(assert (=> b!6258025 d!1963427))

(declare-fun b!6258312 () Bool)

(declare-fun res!2582719 () Bool)

(declare-fun e!3807031 () Bool)

(assert (=> b!6258312 (=> (not res!2582719) (not e!3807031))))

(declare-fun lt!2350057 () Option!16073)

(declare-fun get!22363 (Option!16073) tuple2!66322)

(assert (=> b!6258312 (= res!2582719 (matchR!8365 (regOne!32876 r!7292) (_1!36464 (get!22363 lt!2350057))))))

(declare-fun b!6258313 () Bool)

(declare-fun e!3807035 () Bool)

(assert (=> b!6258313 (= e!3807035 (not (isDefined!12776 lt!2350057)))))

(declare-fun d!1963429 () Bool)

(assert (=> d!1963429 e!3807035))

(declare-fun res!2582718 () Bool)

(assert (=> d!1963429 (=> res!2582718 e!3807035)))

(assert (=> d!1963429 (= res!2582718 e!3807031)))

(declare-fun res!2582717 () Bool)

(assert (=> d!1963429 (=> (not res!2582717) (not e!3807031))))

(assert (=> d!1963429 (= res!2582717 (isDefined!12776 lt!2350057))))

(declare-fun e!3807034 () Option!16073)

(assert (=> d!1963429 (= lt!2350057 e!3807034)))

(declare-fun c!1133115 () Bool)

(declare-fun e!3807033 () Bool)

(assert (=> d!1963429 (= c!1133115 e!3807033)))

(declare-fun res!2582720 () Bool)

(assert (=> d!1963429 (=> (not res!2582720) (not e!3807033))))

(assert (=> d!1963429 (= res!2582720 (matchR!8365 (regOne!32876 r!7292) Nil!64723))))

(assert (=> d!1963429 (validRegex!7918 (regOne!32876 r!7292))))

(assert (=> d!1963429 (= (findConcatSeparation!2487 (regOne!32876 r!7292) (regTwo!32876 r!7292) Nil!64723 s!2326 s!2326) lt!2350057)))

(declare-fun b!6258314 () Bool)

(assert (=> b!6258314 (= e!3807033 (matchR!8365 (regTwo!32876 r!7292) s!2326))))

(declare-fun b!6258315 () Bool)

(declare-fun res!2582721 () Bool)

(assert (=> b!6258315 (=> (not res!2582721) (not e!3807031))))

(assert (=> b!6258315 (= res!2582721 (matchR!8365 (regTwo!32876 r!7292) (_2!36464 (get!22363 lt!2350057))))))

(declare-fun b!6258316 () Bool)

(declare-fun lt!2350056 () Unit!158059)

(declare-fun lt!2350055 () Unit!158059)

(assert (=> b!6258316 (= lt!2350056 lt!2350055)))

(declare-fun ++!14256 (List!64847 List!64847) List!64847)

(assert (=> b!6258316 (= (++!14256 (++!14256 Nil!64723 (Cons!64723 (h!71171 s!2326) Nil!64723)) (t!378399 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2351 (List!64847 C!32634 List!64847 List!64847) Unit!158059)

(assert (=> b!6258316 (= lt!2350055 (lemmaMoveElementToOtherListKeepsConcatEq!2351 Nil!64723 (h!71171 s!2326) (t!378399 s!2326) s!2326))))

(declare-fun e!3807032 () Option!16073)

(assert (=> b!6258316 (= e!3807032 (findConcatSeparation!2487 (regOne!32876 r!7292) (regTwo!32876 r!7292) (++!14256 Nil!64723 (Cons!64723 (h!71171 s!2326) Nil!64723)) (t!378399 s!2326) s!2326))))

(declare-fun b!6258317 () Bool)

(assert (=> b!6258317 (= e!3807032 None!16072)))

(declare-fun b!6258318 () Bool)

(assert (=> b!6258318 (= e!3807034 (Some!16072 (tuple2!66323 Nil!64723 s!2326)))))

(declare-fun b!6258319 () Bool)

(assert (=> b!6258319 (= e!3807031 (= (++!14256 (_1!36464 (get!22363 lt!2350057)) (_2!36464 (get!22363 lt!2350057))) s!2326))))

(declare-fun b!6258320 () Bool)

(assert (=> b!6258320 (= e!3807034 e!3807032)))

(declare-fun c!1133114 () Bool)

(assert (=> b!6258320 (= c!1133114 (is-Nil!64723 s!2326))))

(assert (= (and d!1963429 res!2582720) b!6258314))

(assert (= (and d!1963429 c!1133115) b!6258318))

(assert (= (and d!1963429 (not c!1133115)) b!6258320))

(assert (= (and b!6258320 c!1133114) b!6258317))

(assert (= (and b!6258320 (not c!1133114)) b!6258316))

(assert (= (and d!1963429 res!2582717) b!6258312))

(assert (= (and b!6258312 res!2582719) b!6258315))

(assert (= (and b!6258315 res!2582721) b!6258319))

(assert (= (and d!1963429 (not res!2582718)) b!6258313))

(declare-fun m!7081098 () Bool)

(assert (=> b!6258316 m!7081098))

(assert (=> b!6258316 m!7081098))

(declare-fun m!7081100 () Bool)

(assert (=> b!6258316 m!7081100))

(declare-fun m!7081102 () Bool)

(assert (=> b!6258316 m!7081102))

(assert (=> b!6258316 m!7081098))

(declare-fun m!7081104 () Bool)

(assert (=> b!6258316 m!7081104))

(declare-fun m!7081106 () Bool)

(assert (=> b!6258314 m!7081106))

(declare-fun m!7081108 () Bool)

(assert (=> d!1963429 m!7081108))

(declare-fun m!7081110 () Bool)

(assert (=> d!1963429 m!7081110))

(declare-fun m!7081112 () Bool)

(assert (=> d!1963429 m!7081112))

(declare-fun m!7081114 () Bool)

(assert (=> b!6258319 m!7081114))

(declare-fun m!7081116 () Bool)

(assert (=> b!6258319 m!7081116))

(assert (=> b!6258312 m!7081114))

(declare-fun m!7081118 () Bool)

(assert (=> b!6258312 m!7081118))

(assert (=> b!6258315 m!7081114))

(declare-fun m!7081120 () Bool)

(assert (=> b!6258315 m!7081120))

(assert (=> b!6258313 m!7081108))

(assert (=> b!6258046 d!1963429))

(declare-fun d!1963431 () Bool)

(declare-fun choose!46440 (Int) Bool)

(assert (=> d!1963431 (= (Exists!3252 lambda!342543) (choose!46440 lambda!342543))))

(declare-fun bs!1559001 () Bool)

(assert (= bs!1559001 d!1963431))

(declare-fun m!7081122 () Bool)

(assert (=> bs!1559001 m!7081122))

(assert (=> b!6258046 d!1963431))

(declare-fun d!1963433 () Bool)

(assert (=> d!1963433 (= (Exists!3252 lambda!342542) (choose!46440 lambda!342542))))

(declare-fun bs!1559002 () Bool)

(assert (= bs!1559002 d!1963433))

(declare-fun m!7081124 () Bool)

(assert (=> bs!1559002 m!7081124))

(assert (=> b!6258046 d!1963433))

(declare-fun bs!1559003 () Bool)

(declare-fun d!1963435 () Bool)

(assert (= bs!1559003 (and d!1963435 b!6258046)))

(declare-fun lambda!342565 () Int)

(assert (=> bs!1559003 (= lambda!342565 lambda!342542)))

(assert (=> bs!1559003 (not (= lambda!342565 lambda!342543))))

(assert (=> d!1963435 true))

(assert (=> d!1963435 true))

(assert (=> d!1963435 true))

(assert (=> d!1963435 (= (isDefined!12776 (findConcatSeparation!2487 (regOne!32876 r!7292) (regTwo!32876 r!7292) Nil!64723 s!2326 s!2326)) (Exists!3252 lambda!342565))))

(declare-fun lt!2350060 () Unit!158059)

(declare-fun choose!46441 (Regex!16182 Regex!16182 List!64847) Unit!158059)

(assert (=> d!1963435 (= lt!2350060 (choose!46441 (regOne!32876 r!7292) (regTwo!32876 r!7292) s!2326))))

(assert (=> d!1963435 (validRegex!7918 (regOne!32876 r!7292))))

(assert (=> d!1963435 (= (lemmaFindConcatSeparationEquivalentToExists!2251 (regOne!32876 r!7292) (regTwo!32876 r!7292) s!2326) lt!2350060)))

(declare-fun bs!1559004 () Bool)

(assert (= bs!1559004 d!1963435))

(assert (=> bs!1559004 m!7081112))

(assert (=> bs!1559004 m!7080862))

(declare-fun m!7081126 () Bool)

(assert (=> bs!1559004 m!7081126))

(declare-fun m!7081128 () Bool)

(assert (=> bs!1559004 m!7081128))

(assert (=> bs!1559004 m!7080862))

(assert (=> bs!1559004 m!7080864))

(assert (=> b!6258046 d!1963435))

(declare-fun bs!1559005 () Bool)

(declare-fun d!1963437 () Bool)

(assert (= bs!1559005 (and d!1963437 b!6258046)))

(declare-fun lambda!342570 () Int)

(assert (=> bs!1559005 (= lambda!342570 lambda!342542)))

(assert (=> bs!1559005 (not (= lambda!342570 lambda!342543))))

(declare-fun bs!1559006 () Bool)

(assert (= bs!1559006 (and d!1963437 d!1963435)))

(assert (=> bs!1559006 (= lambda!342570 lambda!342565)))

(assert (=> d!1963437 true))

(assert (=> d!1963437 true))

(assert (=> d!1963437 true))

(declare-fun lambda!342571 () Int)

(assert (=> bs!1559005 (not (= lambda!342571 lambda!342542))))

(assert (=> bs!1559005 (= lambda!342571 lambda!342543)))

(assert (=> bs!1559006 (not (= lambda!342571 lambda!342565))))

(declare-fun bs!1559007 () Bool)

(assert (= bs!1559007 d!1963437))

(assert (=> bs!1559007 (not (= lambda!342571 lambda!342570))))

(assert (=> d!1963437 true))

(assert (=> d!1963437 true))

(assert (=> d!1963437 true))

(assert (=> d!1963437 (= (Exists!3252 lambda!342570) (Exists!3252 lambda!342571))))

(declare-fun lt!2350063 () Unit!158059)

(declare-fun choose!46442 (Regex!16182 Regex!16182 List!64847) Unit!158059)

(assert (=> d!1963437 (= lt!2350063 (choose!46442 (regOne!32876 r!7292) (regTwo!32876 r!7292) s!2326))))

(assert (=> d!1963437 (validRegex!7918 (regOne!32876 r!7292))))

(assert (=> d!1963437 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1789 (regOne!32876 r!7292) (regTwo!32876 r!7292) s!2326) lt!2350063)))

(declare-fun m!7081130 () Bool)

(assert (=> bs!1559007 m!7081130))

(declare-fun m!7081132 () Bool)

(assert (=> bs!1559007 m!7081132))

(declare-fun m!7081134 () Bool)

(assert (=> bs!1559007 m!7081134))

(assert (=> bs!1559007 m!7081112))

(assert (=> b!6258046 d!1963437))

(declare-fun d!1963439 () Bool)

(declare-fun isEmpty!36753 (Option!16073) Bool)

(assert (=> d!1963439 (= (isDefined!12776 (findConcatSeparation!2487 (regOne!32876 r!7292) (regTwo!32876 r!7292) Nil!64723 s!2326 s!2326)) (not (isEmpty!36753 (findConcatSeparation!2487 (regOne!32876 r!7292) (regTwo!32876 r!7292) Nil!64723 s!2326 s!2326))))))

(declare-fun bs!1559008 () Bool)

(assert (= bs!1559008 d!1963439))

(assert (=> bs!1559008 m!7080862))

(declare-fun m!7081136 () Bool)

(assert (=> bs!1559008 m!7081136))

(assert (=> b!6258046 d!1963439))

(declare-fun d!1963441 () Bool)

(declare-fun c!1133116 () Bool)

(assert (=> d!1963441 (= c!1133116 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807042 () Bool)

(assert (=> d!1963441 (= (matchZipper!2194 lt!2349914 (t!378399 s!2326)) e!3807042)))

(declare-fun b!6258333 () Bool)

(assert (=> b!6258333 (= e!3807042 (nullableZipper!1952 lt!2349914))))

(declare-fun b!6258334 () Bool)

(assert (=> b!6258334 (= e!3807042 (matchZipper!2194 (derivationStepZipper!2148 lt!2349914 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963441 c!1133116) b!6258333))

(assert (= (and d!1963441 (not c!1133116)) b!6258334))

(assert (=> d!1963441 m!7081068))

(declare-fun m!7081138 () Bool)

(assert (=> b!6258333 m!7081138))

(assert (=> b!6258334 m!7081072))

(assert (=> b!6258334 m!7081072))

(declare-fun m!7081140 () Bool)

(assert (=> b!6258334 m!7081140))

(assert (=> b!6258334 m!7081076))

(assert (=> b!6258334 m!7081140))

(assert (=> b!6258334 m!7081076))

(declare-fun m!7081142 () Bool)

(assert (=> b!6258334 m!7081142))

(assert (=> b!6258042 d!1963441))

(declare-fun bs!1559009 () Bool)

(declare-fun b!6258374 () Bool)

(assert (= bs!1559009 (and b!6258374 d!1963437)))

(declare-fun lambda!342576 () Int)

(assert (=> bs!1559009 (not (= lambda!342576 lambda!342570))))

(declare-fun bs!1559010 () Bool)

(assert (= bs!1559010 (and b!6258374 b!6258046)))

(assert (=> bs!1559010 (not (= lambda!342576 lambda!342542))))

(assert (=> bs!1559010 (not (= lambda!342576 lambda!342543))))

(declare-fun bs!1559011 () Bool)

(assert (= bs!1559011 (and b!6258374 d!1963435)))

(assert (=> bs!1559011 (not (= lambda!342576 lambda!342565))))

(assert (=> bs!1559009 (not (= lambda!342576 lambda!342571))))

(assert (=> b!6258374 true))

(assert (=> b!6258374 true))

(declare-fun bs!1559012 () Bool)

(declare-fun b!6258371 () Bool)

(assert (= bs!1559012 (and b!6258371 d!1963437)))

(declare-fun lambda!342577 () Int)

(assert (=> bs!1559012 (not (= lambda!342577 lambda!342570))))

(declare-fun bs!1559013 () Bool)

(assert (= bs!1559013 (and b!6258371 b!6258374)))

(assert (=> bs!1559013 (not (= lambda!342577 lambda!342576))))

(declare-fun bs!1559014 () Bool)

(assert (= bs!1559014 (and b!6258371 b!6258046)))

(assert (=> bs!1559014 (not (= lambda!342577 lambda!342542))))

(assert (=> bs!1559014 (= lambda!342577 lambda!342543)))

(declare-fun bs!1559015 () Bool)

(assert (= bs!1559015 (and b!6258371 d!1963435)))

(assert (=> bs!1559015 (not (= lambda!342577 lambda!342565))))

(assert (=> bs!1559012 (= lambda!342577 lambda!342571)))

(assert (=> b!6258371 true))

(assert (=> b!6258371 true))

(declare-fun bm!528275 () Bool)

(declare-fun c!1133128 () Bool)

(declare-fun call!528281 () Bool)

(assert (=> bm!528275 (= call!528281 (Exists!3252 (ite c!1133128 lambda!342576 lambda!342577)))))

(declare-fun b!6258367 () Bool)

(declare-fun c!1133127 () Bool)

(assert (=> b!6258367 (= c!1133127 (is-Union!16182 r!7292))))

(declare-fun e!3807066 () Bool)

(declare-fun e!3807064 () Bool)

(assert (=> b!6258367 (= e!3807066 e!3807064)))

(declare-fun b!6258368 () Bool)

(declare-fun e!3807061 () Bool)

(assert (=> b!6258368 (= e!3807061 (matchRSpec!3283 (regTwo!32877 r!7292) s!2326))))

(declare-fun b!6258369 () Bool)

(declare-fun e!3807062 () Bool)

(declare-fun call!528280 () Bool)

(assert (=> b!6258369 (= e!3807062 call!528280)))

(declare-fun b!6258370 () Bool)

(assert (=> b!6258370 (= e!3807064 e!3807061)))

(declare-fun res!2582751 () Bool)

(assert (=> b!6258370 (= res!2582751 (matchRSpec!3283 (regOne!32877 r!7292) s!2326))))

(assert (=> b!6258370 (=> res!2582751 e!3807061)))

(declare-fun e!3807065 () Bool)

(assert (=> b!6258371 (= e!3807065 call!528281)))

(declare-fun b!6258372 () Bool)

(declare-fun c!1133126 () Bool)

(assert (=> b!6258372 (= c!1133126 (is-ElementMatch!16182 r!7292))))

(declare-fun e!3807067 () Bool)

(assert (=> b!6258372 (= e!3807067 e!3807066)))

(declare-fun b!6258373 () Bool)

(declare-fun res!2582750 () Bool)

(declare-fun e!3807063 () Bool)

(assert (=> b!6258373 (=> res!2582750 e!3807063)))

(assert (=> b!6258373 (= res!2582750 call!528280)))

(assert (=> b!6258373 (= e!3807065 e!3807063)))

(assert (=> b!6258374 (= e!3807063 call!528281)))

(declare-fun b!6258375 () Bool)

(assert (=> b!6258375 (= e!3807064 e!3807065)))

(assert (=> b!6258375 (= c!1133128 (is-Star!16182 r!7292))))

(declare-fun d!1963443 () Bool)

(declare-fun c!1133125 () Bool)

(assert (=> d!1963443 (= c!1133125 (is-EmptyExpr!16182 r!7292))))

(assert (=> d!1963443 (= (matchRSpec!3283 r!7292 s!2326) e!3807062)))

(declare-fun bm!528276 () Bool)

(assert (=> bm!528276 (= call!528280 (isEmpty!36752 s!2326))))

(declare-fun b!6258376 () Bool)

(assert (=> b!6258376 (= e!3807062 e!3807067)))

(declare-fun res!2582752 () Bool)

(assert (=> b!6258376 (= res!2582752 (not (is-EmptyLang!16182 r!7292)))))

(assert (=> b!6258376 (=> (not res!2582752) (not e!3807067))))

(declare-fun b!6258377 () Bool)

(assert (=> b!6258377 (= e!3807066 (= s!2326 (Cons!64723 (c!1133053 r!7292) Nil!64723)))))

(assert (= (and d!1963443 c!1133125) b!6258369))

(assert (= (and d!1963443 (not c!1133125)) b!6258376))

(assert (= (and b!6258376 res!2582752) b!6258372))

(assert (= (and b!6258372 c!1133126) b!6258377))

(assert (= (and b!6258372 (not c!1133126)) b!6258367))

(assert (= (and b!6258367 c!1133127) b!6258370))

(assert (= (and b!6258367 (not c!1133127)) b!6258375))

(assert (= (and b!6258370 (not res!2582751)) b!6258368))

(assert (= (and b!6258375 c!1133128) b!6258373))

(assert (= (and b!6258375 (not c!1133128)) b!6258371))

(assert (= (and b!6258373 (not res!2582750)) b!6258374))

(assert (= (or b!6258374 b!6258371) bm!528275))

(assert (= (or b!6258369 b!6258373) bm!528276))

(declare-fun m!7081144 () Bool)

(assert (=> bm!528275 m!7081144))

(declare-fun m!7081146 () Bool)

(assert (=> b!6258368 m!7081146))

(declare-fun m!7081148 () Bool)

(assert (=> b!6258370 m!7081148))

(declare-fun m!7081150 () Bool)

(assert (=> bm!528276 m!7081150))

(assert (=> b!6258043 d!1963443))

(declare-fun b!6258406 () Bool)

(declare-fun e!3807082 () Bool)

(assert (=> b!6258406 (= e!3807082 (not (= (head!12864 s!2326) (c!1133053 r!7292))))))

(declare-fun b!6258408 () Bool)

(declare-fun e!3807086 () Bool)

(declare-fun e!3807083 () Bool)

(assert (=> b!6258408 (= e!3807086 e!3807083)))

(declare-fun c!1133135 () Bool)

(assert (=> b!6258408 (= c!1133135 (is-EmptyLang!16182 r!7292))))

(declare-fun b!6258409 () Bool)

(declare-fun e!3807085 () Bool)

(declare-fun derivativeStep!4891 (Regex!16182 C!32634) Regex!16182)

(assert (=> b!6258409 (= e!3807085 (matchR!8365 (derivativeStep!4891 r!7292 (head!12864 s!2326)) (tail!11949 s!2326)))))

(declare-fun b!6258410 () Bool)

(declare-fun res!2582771 () Bool)

(declare-fun e!3807084 () Bool)

(assert (=> b!6258410 (=> (not res!2582771) (not e!3807084))))

(declare-fun call!528284 () Bool)

(assert (=> b!6258410 (= res!2582771 (not call!528284))))

(declare-fun b!6258411 () Bool)

(declare-fun lt!2350066 () Bool)

(assert (=> b!6258411 (= e!3807083 (not lt!2350066))))

(declare-fun b!6258412 () Bool)

(assert (=> b!6258412 (= e!3807085 (nullable!6175 r!7292))))

(declare-fun bm!528279 () Bool)

(assert (=> bm!528279 (= call!528284 (isEmpty!36752 s!2326))))

(declare-fun b!6258413 () Bool)

(assert (=> b!6258413 (= e!3807086 (= lt!2350066 call!528284))))

(declare-fun b!6258407 () Bool)

(declare-fun res!2582770 () Bool)

(assert (=> b!6258407 (=> (not res!2582770) (not e!3807084))))

(assert (=> b!6258407 (= res!2582770 (isEmpty!36752 (tail!11949 s!2326)))))

(declare-fun d!1963445 () Bool)

(assert (=> d!1963445 e!3807086))

(declare-fun c!1133137 () Bool)

(assert (=> d!1963445 (= c!1133137 (is-EmptyExpr!16182 r!7292))))

(assert (=> d!1963445 (= lt!2350066 e!3807085)))

(declare-fun c!1133136 () Bool)

(assert (=> d!1963445 (= c!1133136 (isEmpty!36752 s!2326))))

(assert (=> d!1963445 (validRegex!7918 r!7292)))

(assert (=> d!1963445 (= (matchR!8365 r!7292 s!2326) lt!2350066)))

(declare-fun b!6258414 () Bool)

(declare-fun res!2582775 () Bool)

(declare-fun e!3807087 () Bool)

(assert (=> b!6258414 (=> res!2582775 e!3807087)))

(assert (=> b!6258414 (= res!2582775 (not (is-ElementMatch!16182 r!7292)))))

(assert (=> b!6258414 (= e!3807083 e!3807087)))

(declare-fun b!6258415 () Bool)

(declare-fun e!3807088 () Bool)

(assert (=> b!6258415 (= e!3807087 e!3807088)))

(declare-fun res!2582769 () Bool)

(assert (=> b!6258415 (=> (not res!2582769) (not e!3807088))))

(assert (=> b!6258415 (= res!2582769 (not lt!2350066))))

(declare-fun b!6258416 () Bool)

(declare-fun res!2582774 () Bool)

(assert (=> b!6258416 (=> res!2582774 e!3807087)))

(assert (=> b!6258416 (= res!2582774 e!3807084)))

(declare-fun res!2582772 () Bool)

(assert (=> b!6258416 (=> (not res!2582772) (not e!3807084))))

(assert (=> b!6258416 (= res!2582772 lt!2350066)))

(declare-fun b!6258417 () Bool)

(assert (=> b!6258417 (= e!3807084 (= (head!12864 s!2326) (c!1133053 r!7292)))))

(declare-fun b!6258418 () Bool)

(assert (=> b!6258418 (= e!3807088 e!3807082)))

(declare-fun res!2582776 () Bool)

(assert (=> b!6258418 (=> res!2582776 e!3807082)))

(assert (=> b!6258418 (= res!2582776 call!528284)))

(declare-fun b!6258419 () Bool)

(declare-fun res!2582773 () Bool)

(assert (=> b!6258419 (=> res!2582773 e!3807082)))

(assert (=> b!6258419 (= res!2582773 (not (isEmpty!36752 (tail!11949 s!2326))))))

(assert (= (and d!1963445 c!1133136) b!6258412))

(assert (= (and d!1963445 (not c!1133136)) b!6258409))

(assert (= (and d!1963445 c!1133137) b!6258413))

(assert (= (and d!1963445 (not c!1133137)) b!6258408))

(assert (= (and b!6258408 c!1133135) b!6258411))

(assert (= (and b!6258408 (not c!1133135)) b!6258414))

(assert (= (and b!6258414 (not res!2582775)) b!6258416))

(assert (= (and b!6258416 res!2582772) b!6258410))

(assert (= (and b!6258410 res!2582771) b!6258407))

(assert (= (and b!6258407 res!2582770) b!6258417))

(assert (= (and b!6258416 (not res!2582774)) b!6258415))

(assert (= (and b!6258415 res!2582769) b!6258418))

(assert (= (and b!6258418 (not res!2582776)) b!6258419))

(assert (= (and b!6258419 (not res!2582773)) b!6258406))

(assert (= (or b!6258413 b!6258410 b!6258418) bm!528279))

(declare-fun m!7081152 () Bool)

(assert (=> b!6258406 m!7081152))

(declare-fun m!7081154 () Bool)

(assert (=> b!6258419 m!7081154))

(assert (=> b!6258419 m!7081154))

(declare-fun m!7081156 () Bool)

(assert (=> b!6258419 m!7081156))

(declare-fun m!7081158 () Bool)

(assert (=> b!6258412 m!7081158))

(assert (=> d!1963445 m!7081150))

(assert (=> d!1963445 m!7080832))

(assert (=> b!6258409 m!7081152))

(assert (=> b!6258409 m!7081152))

(declare-fun m!7081160 () Bool)

(assert (=> b!6258409 m!7081160))

(assert (=> b!6258409 m!7081154))

(assert (=> b!6258409 m!7081160))

(assert (=> b!6258409 m!7081154))

(declare-fun m!7081162 () Bool)

(assert (=> b!6258409 m!7081162))

(assert (=> bm!528279 m!7081150))

(assert (=> b!6258407 m!7081154))

(assert (=> b!6258407 m!7081154))

(assert (=> b!6258407 m!7081156))

(assert (=> b!6258417 m!7081152))

(assert (=> b!6258043 d!1963445))

(declare-fun d!1963447 () Bool)

(assert (=> d!1963447 (= (matchR!8365 r!7292 s!2326) (matchRSpec!3283 r!7292 s!2326))))

(declare-fun lt!2350069 () Unit!158059)

(declare-fun choose!46443 (Regex!16182 List!64847) Unit!158059)

(assert (=> d!1963447 (= lt!2350069 (choose!46443 r!7292 s!2326))))

(assert (=> d!1963447 (validRegex!7918 r!7292)))

(assert (=> d!1963447 (= (mainMatchTheorem!3283 r!7292 s!2326) lt!2350069)))

(declare-fun bs!1559016 () Bool)

(assert (= bs!1559016 d!1963447))

(assert (=> bs!1559016 m!7080836))

(assert (=> bs!1559016 m!7080834))

(declare-fun m!7081164 () Bool)

(assert (=> bs!1559016 m!7081164))

(assert (=> bs!1559016 m!7080832))

(assert (=> b!6258043 d!1963447))

(declare-fun bs!1559017 () Bool)

(declare-fun d!1963449 () Bool)

(assert (= bs!1559017 (and d!1963449 b!6258047)))

(declare-fun lambda!342580 () Int)

(assert (=> bs!1559017 (= lambda!342580 lambda!342544)))

(assert (=> d!1963449 true))

(assert (=> d!1963449 (= (derivationStepZipper!2148 lt!2349935 (h!71171 s!2326)) (flatMap!1687 lt!2349935 lambda!342580))))

(declare-fun bs!1559018 () Bool)

(assert (= bs!1559018 d!1963449))

(declare-fun m!7081166 () Bool)

(assert (=> bs!1559018 m!7081166))

(assert (=> b!6258058 d!1963449))

(declare-fun d!1963451 () Bool)

(assert (=> d!1963451 (= (flatMap!1687 lt!2349935 lambda!342544) (choose!46438 lt!2349935 lambda!342544))))

(declare-fun bs!1559019 () Bool)

(assert (= bs!1559019 d!1963451))

(declare-fun m!7081168 () Bool)

(assert (=> bs!1559019 m!7081168))

(assert (=> b!6258058 d!1963451))

(declare-fun b!6258422 () Bool)

(declare-fun e!3807090 () (Set Context!11132))

(assert (=> b!6258422 (= e!3807090 (as set.empty (Set Context!11132)))))

(declare-fun e!3807091 () (Set Context!11132))

(declare-fun call!528285 () (Set Context!11132))

(declare-fun b!6258423 () Bool)

(assert (=> b!6258423 (= e!3807091 (set.union call!528285 (derivationStepZipperUp!1356 (Context!11133 (t!378397 (exprs!6066 lt!2349932))) (h!71171 s!2326))))))

(declare-fun bm!528280 () Bool)

(assert (=> bm!528280 (= call!528285 (derivationStepZipperDown!1430 (h!71169 (exprs!6066 lt!2349932)) (Context!11133 (t!378397 (exprs!6066 lt!2349932))) (h!71171 s!2326)))))

(declare-fun b!6258424 () Bool)

(assert (=> b!6258424 (= e!3807090 call!528285)))

(declare-fun b!6258425 () Bool)

(assert (=> b!6258425 (= e!3807091 e!3807090)))

(declare-fun c!1133140 () Bool)

(assert (=> b!6258425 (= c!1133140 (is-Cons!64721 (exprs!6066 lt!2349932)))))

(declare-fun b!6258426 () Bool)

(declare-fun e!3807089 () Bool)

(assert (=> b!6258426 (= e!3807089 (nullable!6175 (h!71169 (exprs!6066 lt!2349932))))))

(declare-fun d!1963453 () Bool)

(declare-fun c!1133141 () Bool)

(assert (=> d!1963453 (= c!1133141 e!3807089)))

(declare-fun res!2582777 () Bool)

(assert (=> d!1963453 (=> (not res!2582777) (not e!3807089))))

(assert (=> d!1963453 (= res!2582777 (is-Cons!64721 (exprs!6066 lt!2349932)))))

(assert (=> d!1963453 (= (derivationStepZipperUp!1356 lt!2349932 (h!71171 s!2326)) e!3807091)))

(assert (= (and d!1963453 res!2582777) b!6258426))

(assert (= (and d!1963453 c!1133141) b!6258423))

(assert (= (and d!1963453 (not c!1133141)) b!6258425))

(assert (= (and b!6258425 c!1133140) b!6258424))

(assert (= (and b!6258425 (not c!1133140)) b!6258422))

(assert (= (or b!6258423 b!6258424) bm!528280))

(declare-fun m!7081170 () Bool)

(assert (=> b!6258423 m!7081170))

(declare-fun m!7081172 () Bool)

(assert (=> bm!528280 m!7081172))

(declare-fun m!7081174 () Bool)

(assert (=> b!6258426 m!7081174))

(assert (=> b!6258058 d!1963453))

(declare-fun b!6258427 () Bool)

(declare-fun e!3807093 () (Set Context!11132))

(assert (=> b!6258427 (= e!3807093 (as set.empty (Set Context!11132)))))

(declare-fun call!528286 () (Set Context!11132))

(declare-fun b!6258428 () Bool)

(declare-fun e!3807094 () (Set Context!11132))

(assert (=> b!6258428 (= e!3807094 (set.union call!528286 (derivationStepZipperUp!1356 (Context!11133 (t!378397 (exprs!6066 lt!2349933))) (h!71171 s!2326))))))

(declare-fun bm!528281 () Bool)

(assert (=> bm!528281 (= call!528286 (derivationStepZipperDown!1430 (h!71169 (exprs!6066 lt!2349933)) (Context!11133 (t!378397 (exprs!6066 lt!2349933))) (h!71171 s!2326)))))

(declare-fun b!6258429 () Bool)

(assert (=> b!6258429 (= e!3807093 call!528286)))

(declare-fun b!6258430 () Bool)

(assert (=> b!6258430 (= e!3807094 e!3807093)))

(declare-fun c!1133142 () Bool)

(assert (=> b!6258430 (= c!1133142 (is-Cons!64721 (exprs!6066 lt!2349933)))))

(declare-fun b!6258431 () Bool)

(declare-fun e!3807092 () Bool)

(assert (=> b!6258431 (= e!3807092 (nullable!6175 (h!71169 (exprs!6066 lt!2349933))))))

(declare-fun d!1963455 () Bool)

(declare-fun c!1133143 () Bool)

(assert (=> d!1963455 (= c!1133143 e!3807092)))

(declare-fun res!2582778 () Bool)

(assert (=> d!1963455 (=> (not res!2582778) (not e!3807092))))

(assert (=> d!1963455 (= res!2582778 (is-Cons!64721 (exprs!6066 lt!2349933)))))

(assert (=> d!1963455 (= (derivationStepZipperUp!1356 lt!2349933 (h!71171 s!2326)) e!3807094)))

(assert (= (and d!1963455 res!2582778) b!6258431))

(assert (= (and d!1963455 c!1133143) b!6258428))

(assert (= (and d!1963455 (not c!1133143)) b!6258430))

(assert (= (and b!6258430 c!1133142) b!6258429))

(assert (= (and b!6258430 (not c!1133142)) b!6258427))

(assert (= (or b!6258428 b!6258429) bm!528281))

(declare-fun m!7081176 () Bool)

(assert (=> b!6258428 m!7081176))

(declare-fun m!7081178 () Bool)

(assert (=> bm!528281 m!7081178))

(declare-fun m!7081180 () Bool)

(assert (=> b!6258431 m!7081180))

(assert (=> b!6258058 d!1963455))

(declare-fun d!1963457 () Bool)

(assert (=> d!1963457 (= (flatMap!1687 lt!2349935 lambda!342544) (dynLambda!25575 lambda!342544 lt!2349933))))

(declare-fun lt!2350070 () Unit!158059)

(assert (=> d!1963457 (= lt!2350070 (choose!46439 lt!2349935 lt!2349933 lambda!342544))))

(assert (=> d!1963457 (= lt!2349935 (set.insert lt!2349933 (as set.empty (Set Context!11132))))))

(assert (=> d!1963457 (= (lemmaFlatMapOnSingletonSet!1213 lt!2349935 lt!2349933 lambda!342544) lt!2350070)))

(declare-fun b_lambda!238183 () Bool)

(assert (=> (not b_lambda!238183) (not d!1963457)))

(declare-fun bs!1559020 () Bool)

(assert (= bs!1559020 d!1963457))

(assert (=> bs!1559020 m!7080786))

(declare-fun m!7081182 () Bool)

(assert (=> bs!1559020 m!7081182))

(declare-fun m!7081184 () Bool)

(assert (=> bs!1559020 m!7081184))

(assert (=> bs!1559020 m!7080790))

(assert (=> b!6258058 d!1963457))

(declare-fun b!6258432 () Bool)

(declare-fun e!3807098 () (Set Context!11132))

(declare-fun e!3807097 () (Set Context!11132))

(assert (=> b!6258432 (= e!3807098 e!3807097)))

(declare-fun c!1133148 () Bool)

(assert (=> b!6258432 (= c!1133148 (is-Concat!25027 (regTwo!32876 (regOne!32876 r!7292))))))

(declare-fun c!1133147 () Bool)

(declare-fun c!1133145 () Bool)

(declare-fun call!528288 () List!64845)

(declare-fun call!528290 () (Set Context!11132))

(declare-fun bm!528282 () Bool)

(assert (=> bm!528282 (= call!528290 (derivationStepZipperDown!1430 (ite c!1133145 (regTwo!32877 (regTwo!32876 (regOne!32876 r!7292))) (ite c!1133147 (regTwo!32876 (regTwo!32876 (regOne!32876 r!7292))) (ite c!1133148 (regOne!32876 (regTwo!32876 (regOne!32876 r!7292))) (reg!16511 (regTwo!32876 (regOne!32876 r!7292)))))) (ite (or c!1133145 c!1133147) lt!2349913 (Context!11133 call!528288)) (h!71171 s!2326)))))

(declare-fun bm!528283 () Bool)

(declare-fun call!528291 () (Set Context!11132))

(declare-fun call!528289 () (Set Context!11132))

(assert (=> bm!528283 (= call!528291 call!528289)))

(declare-fun bm!528284 () Bool)

(declare-fun call!528287 () List!64845)

(declare-fun call!528292 () (Set Context!11132))

(assert (=> bm!528284 (= call!528292 (derivationStepZipperDown!1430 (ite c!1133145 (regOne!32877 (regTwo!32876 (regOne!32876 r!7292))) (regOne!32876 (regTwo!32876 (regOne!32876 r!7292)))) (ite c!1133145 lt!2349913 (Context!11133 call!528287)) (h!71171 s!2326)))))

(declare-fun bm!528285 () Bool)

(assert (=> bm!528285 (= call!528287 ($colon$colon!2047 (exprs!6066 lt!2349913) (ite (or c!1133147 c!1133148) (regTwo!32876 (regTwo!32876 (regOne!32876 r!7292))) (regTwo!32876 (regOne!32876 r!7292)))))))

(declare-fun bm!528286 () Bool)

(assert (=> bm!528286 (= call!528288 call!528287)))

(declare-fun b!6258433 () Bool)

(declare-fun e!3807099 () (Set Context!11132))

(assert (=> b!6258433 (= e!3807099 (as set.empty (Set Context!11132)))))

(declare-fun b!6258434 () Bool)

(declare-fun e!3807095 () Bool)

(assert (=> b!6258434 (= e!3807095 (nullable!6175 (regOne!32876 (regTwo!32876 (regOne!32876 r!7292)))))))

(declare-fun b!6258435 () Bool)

(assert (=> b!6258435 (= c!1133147 e!3807095)))

(declare-fun res!2582779 () Bool)

(assert (=> b!6258435 (=> (not res!2582779) (not e!3807095))))

(assert (=> b!6258435 (= res!2582779 (is-Concat!25027 (regTwo!32876 (regOne!32876 r!7292))))))

(declare-fun e!3807096 () (Set Context!11132))

(assert (=> b!6258435 (= e!3807096 e!3807098)))

(declare-fun b!6258436 () Bool)

(assert (=> b!6258436 (= e!3807097 call!528291)))

(declare-fun b!6258437 () Bool)

(assert (=> b!6258437 (= e!3807099 call!528291)))

(declare-fun b!6258438 () Bool)

(declare-fun e!3807100 () (Set Context!11132))

(assert (=> b!6258438 (= e!3807100 (set.insert lt!2349913 (as set.empty (Set Context!11132))))))

(declare-fun b!6258439 () Bool)

(declare-fun c!1133144 () Bool)

(assert (=> b!6258439 (= c!1133144 (is-Star!16182 (regTwo!32876 (regOne!32876 r!7292))))))

(assert (=> b!6258439 (= e!3807097 e!3807099)))

(declare-fun b!6258440 () Bool)

(assert (=> b!6258440 (= e!3807096 (set.union call!528292 call!528290))))

(declare-fun b!6258442 () Bool)

(assert (=> b!6258442 (= e!3807098 (set.union call!528292 call!528289))))

(declare-fun bm!528287 () Bool)

(assert (=> bm!528287 (= call!528289 call!528290)))

(declare-fun d!1963459 () Bool)

(declare-fun c!1133146 () Bool)

(assert (=> d!1963459 (= c!1133146 (and (is-ElementMatch!16182 (regTwo!32876 (regOne!32876 r!7292))) (= (c!1133053 (regTwo!32876 (regOne!32876 r!7292))) (h!71171 s!2326))))))

(assert (=> d!1963459 (= (derivationStepZipperDown!1430 (regTwo!32876 (regOne!32876 r!7292)) lt!2349913 (h!71171 s!2326)) e!3807100)))

(declare-fun b!6258441 () Bool)

(assert (=> b!6258441 (= e!3807100 e!3807096)))

(assert (=> b!6258441 (= c!1133145 (is-Union!16182 (regTwo!32876 (regOne!32876 r!7292))))))

(assert (= (and d!1963459 c!1133146) b!6258438))

(assert (= (and d!1963459 (not c!1133146)) b!6258441))

(assert (= (and b!6258441 c!1133145) b!6258440))

(assert (= (and b!6258441 (not c!1133145)) b!6258435))

(assert (= (and b!6258435 res!2582779) b!6258434))

(assert (= (and b!6258435 c!1133147) b!6258442))

(assert (= (and b!6258435 (not c!1133147)) b!6258432))

(assert (= (and b!6258432 c!1133148) b!6258436))

(assert (= (and b!6258432 (not c!1133148)) b!6258439))

(assert (= (and b!6258439 c!1133144) b!6258437))

(assert (= (and b!6258439 (not c!1133144)) b!6258433))

(assert (= (or b!6258436 b!6258437) bm!528286))

(assert (= (or b!6258436 b!6258437) bm!528283))

(assert (= (or b!6258442 bm!528286) bm!528285))

(assert (= (or b!6258442 bm!528283) bm!528287))

(assert (= (or b!6258440 bm!528287) bm!528282))

(assert (= (or b!6258440 b!6258442) bm!528284))

(declare-fun m!7081186 () Bool)

(assert (=> b!6258434 m!7081186))

(declare-fun m!7081188 () Bool)

(assert (=> bm!528284 m!7081188))

(assert (=> b!6258438 m!7081050))

(declare-fun m!7081190 () Bool)

(assert (=> bm!528282 m!7081190))

(declare-fun m!7081192 () Bool)

(assert (=> bm!528285 m!7081192))

(assert (=> b!6258040 d!1963459))

(declare-fun b!6258443 () Bool)

(declare-fun e!3807104 () (Set Context!11132))

(declare-fun e!3807103 () (Set Context!11132))

(assert (=> b!6258443 (= e!3807104 e!3807103)))

(declare-fun c!1133153 () Bool)

(assert (=> b!6258443 (= c!1133153 (is-Concat!25027 (regOne!32876 (regOne!32876 r!7292))))))

(declare-fun c!1133150 () Bool)

(declare-fun call!528294 () List!64845)

(declare-fun call!528296 () (Set Context!11132))

(declare-fun bm!528288 () Bool)

(declare-fun c!1133152 () Bool)

(assert (=> bm!528288 (= call!528296 (derivationStepZipperDown!1430 (ite c!1133150 (regTwo!32877 (regOne!32876 (regOne!32876 r!7292))) (ite c!1133152 (regTwo!32876 (regOne!32876 (regOne!32876 r!7292))) (ite c!1133153 (regOne!32876 (regOne!32876 (regOne!32876 r!7292))) (reg!16511 (regOne!32876 (regOne!32876 r!7292)))))) (ite (or c!1133150 c!1133152) lt!2349932 (Context!11133 call!528294)) (h!71171 s!2326)))))

(declare-fun bm!528289 () Bool)

(declare-fun call!528297 () (Set Context!11132))

(declare-fun call!528295 () (Set Context!11132))

(assert (=> bm!528289 (= call!528297 call!528295)))

(declare-fun call!528293 () List!64845)

(declare-fun bm!528290 () Bool)

(declare-fun call!528298 () (Set Context!11132))

(assert (=> bm!528290 (= call!528298 (derivationStepZipperDown!1430 (ite c!1133150 (regOne!32877 (regOne!32876 (regOne!32876 r!7292))) (regOne!32876 (regOne!32876 (regOne!32876 r!7292)))) (ite c!1133150 lt!2349932 (Context!11133 call!528293)) (h!71171 s!2326)))))

(declare-fun bm!528291 () Bool)

(assert (=> bm!528291 (= call!528293 ($colon$colon!2047 (exprs!6066 lt!2349932) (ite (or c!1133152 c!1133153) (regTwo!32876 (regOne!32876 (regOne!32876 r!7292))) (regOne!32876 (regOne!32876 r!7292)))))))

(declare-fun bm!528292 () Bool)

(assert (=> bm!528292 (= call!528294 call!528293)))

(declare-fun b!6258444 () Bool)

(declare-fun e!3807105 () (Set Context!11132))

(assert (=> b!6258444 (= e!3807105 (as set.empty (Set Context!11132)))))

(declare-fun b!6258445 () Bool)

(declare-fun e!3807101 () Bool)

(assert (=> b!6258445 (= e!3807101 (nullable!6175 (regOne!32876 (regOne!32876 (regOne!32876 r!7292)))))))

(declare-fun b!6258446 () Bool)

(assert (=> b!6258446 (= c!1133152 e!3807101)))

(declare-fun res!2582780 () Bool)

(assert (=> b!6258446 (=> (not res!2582780) (not e!3807101))))

(assert (=> b!6258446 (= res!2582780 (is-Concat!25027 (regOne!32876 (regOne!32876 r!7292))))))

(declare-fun e!3807102 () (Set Context!11132))

(assert (=> b!6258446 (= e!3807102 e!3807104)))

(declare-fun b!6258447 () Bool)

(assert (=> b!6258447 (= e!3807103 call!528297)))

(declare-fun b!6258448 () Bool)

(assert (=> b!6258448 (= e!3807105 call!528297)))

(declare-fun b!6258449 () Bool)

(declare-fun e!3807106 () (Set Context!11132))

(assert (=> b!6258449 (= e!3807106 (set.insert lt!2349932 (as set.empty (Set Context!11132))))))

(declare-fun b!6258450 () Bool)

(declare-fun c!1133149 () Bool)

(assert (=> b!6258450 (= c!1133149 (is-Star!16182 (regOne!32876 (regOne!32876 r!7292))))))

(assert (=> b!6258450 (= e!3807103 e!3807105)))

(declare-fun b!6258451 () Bool)

(assert (=> b!6258451 (= e!3807102 (set.union call!528298 call!528296))))

(declare-fun b!6258453 () Bool)

(assert (=> b!6258453 (= e!3807104 (set.union call!528298 call!528295))))

(declare-fun bm!528293 () Bool)

(assert (=> bm!528293 (= call!528295 call!528296)))

(declare-fun d!1963461 () Bool)

(declare-fun c!1133151 () Bool)

(assert (=> d!1963461 (= c!1133151 (and (is-ElementMatch!16182 (regOne!32876 (regOne!32876 r!7292))) (= (c!1133053 (regOne!32876 (regOne!32876 r!7292))) (h!71171 s!2326))))))

(assert (=> d!1963461 (= (derivationStepZipperDown!1430 (regOne!32876 (regOne!32876 r!7292)) lt!2349932 (h!71171 s!2326)) e!3807106)))

(declare-fun b!6258452 () Bool)

(assert (=> b!6258452 (= e!3807106 e!3807102)))

(assert (=> b!6258452 (= c!1133150 (is-Union!16182 (regOne!32876 (regOne!32876 r!7292))))))

(assert (= (and d!1963461 c!1133151) b!6258449))

(assert (= (and d!1963461 (not c!1133151)) b!6258452))

(assert (= (and b!6258452 c!1133150) b!6258451))

(assert (= (and b!6258452 (not c!1133150)) b!6258446))

(assert (= (and b!6258446 res!2582780) b!6258445))

(assert (= (and b!6258446 c!1133152) b!6258453))

(assert (= (and b!6258446 (not c!1133152)) b!6258443))

(assert (= (and b!6258443 c!1133153) b!6258447))

(assert (= (and b!6258443 (not c!1133153)) b!6258450))

(assert (= (and b!6258450 c!1133149) b!6258448))

(assert (= (and b!6258450 (not c!1133149)) b!6258444))

(assert (= (or b!6258447 b!6258448) bm!528292))

(assert (= (or b!6258447 b!6258448) bm!528289))

(assert (= (or b!6258453 bm!528292) bm!528291))

(assert (= (or b!6258453 bm!528289) bm!528293))

(assert (= (or b!6258451 bm!528293) bm!528288))

(assert (= (or b!6258451 b!6258453) bm!528290))

(declare-fun m!7081194 () Bool)

(assert (=> b!6258445 m!7081194))

(declare-fun m!7081196 () Bool)

(assert (=> bm!528290 m!7081196))

(assert (=> b!6258449 m!7080782))

(declare-fun m!7081198 () Bool)

(assert (=> bm!528288 m!7081198))

(declare-fun m!7081200 () Bool)

(assert (=> bm!528291 m!7081200))

(assert (=> b!6258040 d!1963461))

(declare-fun d!1963463 () Bool)

(declare-fun e!3807109 () Bool)

(assert (=> d!1963463 (= (matchZipper!2194 (set.union lt!2349910 lt!2349906) (t!378399 s!2326)) e!3807109)))

(declare-fun res!2582783 () Bool)

(assert (=> d!1963463 (=> res!2582783 e!3807109)))

(assert (=> d!1963463 (= res!2582783 (matchZipper!2194 lt!2349910 (t!378399 s!2326)))))

(declare-fun lt!2350073 () Unit!158059)

(declare-fun choose!46444 ((Set Context!11132) (Set Context!11132) List!64847) Unit!158059)

(assert (=> d!1963463 (= lt!2350073 (choose!46444 lt!2349910 lt!2349906 (t!378399 s!2326)))))

(assert (=> d!1963463 (= (lemmaZipperConcatMatchesSameAsBothZippers!1013 lt!2349910 lt!2349906 (t!378399 s!2326)) lt!2350073)))

(declare-fun b!6258456 () Bool)

(assert (=> b!6258456 (= e!3807109 (matchZipper!2194 lt!2349906 (t!378399 s!2326)))))

(assert (= (and d!1963463 (not res!2582783)) b!6258456))

(assert (=> d!1963463 m!7080860))

(assert (=> d!1963463 m!7080770))

(declare-fun m!7081202 () Bool)

(assert (=> d!1963463 m!7081202))

(assert (=> b!6258456 m!7080874))

(assert (=> b!6258036 d!1963463))

(declare-fun d!1963465 () Bool)

(declare-fun c!1133154 () Bool)

(assert (=> d!1963465 (= c!1133154 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807110 () Bool)

(assert (=> d!1963465 (= (matchZipper!2194 lt!2349910 (t!378399 s!2326)) e!3807110)))

(declare-fun b!6258457 () Bool)

(assert (=> b!6258457 (= e!3807110 (nullableZipper!1952 lt!2349910))))

(declare-fun b!6258458 () Bool)

(assert (=> b!6258458 (= e!3807110 (matchZipper!2194 (derivationStepZipper!2148 lt!2349910 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963465 c!1133154) b!6258457))

(assert (= (and d!1963465 (not c!1133154)) b!6258458))

(assert (=> d!1963465 m!7081068))

(declare-fun m!7081204 () Bool)

(assert (=> b!6258457 m!7081204))

(assert (=> b!6258458 m!7081072))

(assert (=> b!6258458 m!7081072))

(declare-fun m!7081206 () Bool)

(assert (=> b!6258458 m!7081206))

(assert (=> b!6258458 m!7081076))

(assert (=> b!6258458 m!7081206))

(assert (=> b!6258458 m!7081076))

(declare-fun m!7081208 () Bool)

(assert (=> b!6258458 m!7081208))

(assert (=> b!6258036 d!1963465))

(declare-fun d!1963467 () Bool)

(declare-fun c!1133155 () Bool)

(assert (=> d!1963467 (= c!1133155 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807111 () Bool)

(assert (=> d!1963467 (= (matchZipper!2194 (set.union lt!2349910 lt!2349906) (t!378399 s!2326)) e!3807111)))

(declare-fun b!6258459 () Bool)

(assert (=> b!6258459 (= e!3807111 (nullableZipper!1952 (set.union lt!2349910 lt!2349906)))))

(declare-fun b!6258460 () Bool)

(assert (=> b!6258460 (= e!3807111 (matchZipper!2194 (derivationStepZipper!2148 (set.union lt!2349910 lt!2349906) (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963467 c!1133155) b!6258459))

(assert (= (and d!1963467 (not c!1133155)) b!6258460))

(assert (=> d!1963467 m!7081068))

(declare-fun m!7081210 () Bool)

(assert (=> b!6258459 m!7081210))

(assert (=> b!6258460 m!7081072))

(assert (=> b!6258460 m!7081072))

(declare-fun m!7081212 () Bool)

(assert (=> b!6258460 m!7081212))

(assert (=> b!6258460 m!7081076))

(assert (=> b!6258460 m!7081212))

(assert (=> b!6258460 m!7081076))

(declare-fun m!7081214 () Bool)

(assert (=> b!6258460 m!7081214))

(assert (=> b!6258036 d!1963467))

(declare-fun d!1963469 () Bool)

(declare-fun c!1133156 () Bool)

(assert (=> d!1963469 (= c!1133156 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807112 () Bool)

(assert (=> d!1963469 (= (matchZipper!2194 lt!2349923 (t!378399 s!2326)) e!3807112)))

(declare-fun b!6258461 () Bool)

(assert (=> b!6258461 (= e!3807112 (nullableZipper!1952 lt!2349923))))

(declare-fun b!6258462 () Bool)

(assert (=> b!6258462 (= e!3807112 (matchZipper!2194 (derivationStepZipper!2148 lt!2349923 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963469 c!1133156) b!6258461))

(assert (= (and d!1963469 (not c!1133156)) b!6258462))

(assert (=> d!1963469 m!7081068))

(declare-fun m!7081216 () Bool)

(assert (=> b!6258461 m!7081216))

(assert (=> b!6258462 m!7081072))

(assert (=> b!6258462 m!7081072))

(declare-fun m!7081218 () Bool)

(assert (=> b!6258462 m!7081218))

(assert (=> b!6258462 m!7081076))

(assert (=> b!6258462 m!7081218))

(assert (=> b!6258462 m!7081076))

(declare-fun m!7081220 () Bool)

(assert (=> b!6258462 m!7081220))

(assert (=> b!6258056 d!1963469))

(declare-fun d!1963471 () Bool)

(declare-fun e!3807113 () Bool)

(assert (=> d!1963471 (= (matchZipper!2194 (set.union lt!2349920 lt!2349914) (t!378399 s!2326)) e!3807113)))

(declare-fun res!2582784 () Bool)

(assert (=> d!1963471 (=> res!2582784 e!3807113)))

(assert (=> d!1963471 (= res!2582784 (matchZipper!2194 lt!2349920 (t!378399 s!2326)))))

(declare-fun lt!2350074 () Unit!158059)

(assert (=> d!1963471 (= lt!2350074 (choose!46444 lt!2349920 lt!2349914 (t!378399 s!2326)))))

(assert (=> d!1963471 (= (lemmaZipperConcatMatchesSameAsBothZippers!1013 lt!2349920 lt!2349914 (t!378399 s!2326)) lt!2350074)))

(declare-fun b!6258463 () Bool)

(assert (=> b!6258463 (= e!3807113 (matchZipper!2194 lt!2349914 (t!378399 s!2326)))))

(assert (= (and d!1963471 (not res!2582784)) b!6258463))

(declare-fun m!7081222 () Bool)

(assert (=> d!1963471 m!7081222))

(assert (=> d!1963471 m!7080774))

(declare-fun m!7081224 () Bool)

(assert (=> d!1963471 m!7081224))

(assert (=> b!6258463 m!7080812))

(assert (=> b!6258057 d!1963471))

(assert (=> b!6258057 d!1963453))

(declare-fun d!1963473 () Bool)

(declare-fun c!1133157 () Bool)

(assert (=> d!1963473 (= c!1133157 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807114 () Bool)

(assert (=> d!1963473 (= (matchZipper!2194 lt!2349934 (t!378399 s!2326)) e!3807114)))

(declare-fun b!6258464 () Bool)

(assert (=> b!6258464 (= e!3807114 (nullableZipper!1952 lt!2349934))))

(declare-fun b!6258465 () Bool)

(assert (=> b!6258465 (= e!3807114 (matchZipper!2194 (derivationStepZipper!2148 lt!2349934 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963473 c!1133157) b!6258464))

(assert (= (and d!1963473 (not c!1133157)) b!6258465))

(assert (=> d!1963473 m!7081068))

(declare-fun m!7081226 () Bool)

(assert (=> b!6258464 m!7081226))

(assert (=> b!6258465 m!7081072))

(assert (=> b!6258465 m!7081072))

(declare-fun m!7081228 () Bool)

(assert (=> b!6258465 m!7081228))

(assert (=> b!6258465 m!7081076))

(assert (=> b!6258465 m!7081228))

(assert (=> b!6258465 m!7081076))

(declare-fun m!7081230 () Bool)

(assert (=> b!6258465 m!7081230))

(assert (=> b!6258057 d!1963473))

(declare-fun d!1963475 () Bool)

(declare-fun c!1133158 () Bool)

(assert (=> d!1963475 (= c!1133158 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807115 () Bool)

(assert (=> d!1963475 (= (matchZipper!2194 lt!2349911 (t!378399 s!2326)) e!3807115)))

(declare-fun b!6258466 () Bool)

(assert (=> b!6258466 (= e!3807115 (nullableZipper!1952 lt!2349911))))

(declare-fun b!6258467 () Bool)

(assert (=> b!6258467 (= e!3807115 (matchZipper!2194 (derivationStepZipper!2148 lt!2349911 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963475 c!1133158) b!6258466))

(assert (= (and d!1963475 (not c!1133158)) b!6258467))

(assert (=> d!1963475 m!7081068))

(declare-fun m!7081232 () Bool)

(assert (=> b!6258466 m!7081232))

(assert (=> b!6258467 m!7081072))

(assert (=> b!6258467 m!7081072))

(declare-fun m!7081234 () Bool)

(assert (=> b!6258467 m!7081234))

(assert (=> b!6258467 m!7081076))

(assert (=> b!6258467 m!7081234))

(assert (=> b!6258467 m!7081076))

(declare-fun m!7081236 () Bool)

(assert (=> b!6258467 m!7081236))

(assert (=> b!6258057 d!1963475))

(declare-fun d!1963477 () Bool)

(assert (=> d!1963477 (= (flatMap!1687 lt!2349919 lambda!342544) (choose!46438 lt!2349919 lambda!342544))))

(declare-fun bs!1559021 () Bool)

(assert (= bs!1559021 d!1963477))

(declare-fun m!7081238 () Bool)

(assert (=> bs!1559021 m!7081238))

(assert (=> b!6258057 d!1963477))

(declare-fun d!1963479 () Bool)

(assert (=> d!1963479 (= (flatMap!1687 lt!2349919 lambda!342544) (dynLambda!25575 lambda!342544 lt!2349932))))

(declare-fun lt!2350075 () Unit!158059)

(assert (=> d!1963479 (= lt!2350075 (choose!46439 lt!2349919 lt!2349932 lambda!342544))))

(assert (=> d!1963479 (= lt!2349919 (set.insert lt!2349932 (as set.empty (Set Context!11132))))))

(assert (=> d!1963479 (= (lemmaFlatMapOnSingletonSet!1213 lt!2349919 lt!2349932 lambda!342544) lt!2350075)))

(declare-fun b_lambda!238185 () Bool)

(assert (=> (not b_lambda!238185) (not d!1963479)))

(declare-fun bs!1559022 () Bool)

(assert (= bs!1559022 d!1963479))

(assert (=> bs!1559022 m!7080846))

(declare-fun m!7081240 () Bool)

(assert (=> bs!1559022 m!7081240))

(declare-fun m!7081242 () Bool)

(assert (=> bs!1559022 m!7081242))

(assert (=> bs!1559022 m!7080782))

(assert (=> b!6258057 d!1963479))

(declare-fun d!1963481 () Bool)

(declare-fun c!1133159 () Bool)

(assert (=> d!1963481 (= c!1133159 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807116 () Bool)

(assert (=> d!1963481 (= (matchZipper!2194 (derivationStepZipper!2148 lt!2349919 (h!71171 s!2326)) (t!378399 s!2326)) e!3807116)))

(declare-fun b!6258468 () Bool)

(assert (=> b!6258468 (= e!3807116 (nullableZipper!1952 (derivationStepZipper!2148 lt!2349919 (h!71171 s!2326))))))

(declare-fun b!6258469 () Bool)

(assert (=> b!6258469 (= e!3807116 (matchZipper!2194 (derivationStepZipper!2148 (derivationStepZipper!2148 lt!2349919 (h!71171 s!2326)) (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963481 c!1133159) b!6258468))

(assert (= (and d!1963481 (not c!1133159)) b!6258469))

(assert (=> d!1963481 m!7081068))

(assert (=> b!6258468 m!7080876))

(declare-fun m!7081244 () Bool)

(assert (=> b!6258468 m!7081244))

(assert (=> b!6258469 m!7081072))

(assert (=> b!6258469 m!7080876))

(assert (=> b!6258469 m!7081072))

(declare-fun m!7081246 () Bool)

(assert (=> b!6258469 m!7081246))

(assert (=> b!6258469 m!7081076))

(assert (=> b!6258469 m!7081246))

(assert (=> b!6258469 m!7081076))

(declare-fun m!7081248 () Bool)

(assert (=> b!6258469 m!7081248))

(assert (=> b!6258054 d!1963481))

(declare-fun bs!1559023 () Bool)

(declare-fun d!1963483 () Bool)

(assert (= bs!1559023 (and d!1963483 b!6258047)))

(declare-fun lambda!342581 () Int)

(assert (=> bs!1559023 (= lambda!342581 lambda!342544)))

(declare-fun bs!1559024 () Bool)

(assert (= bs!1559024 (and d!1963483 d!1963449)))

(assert (=> bs!1559024 (= lambda!342581 lambda!342580)))

(assert (=> d!1963483 true))

(assert (=> d!1963483 (= (derivationStepZipper!2148 lt!2349919 (h!71171 s!2326)) (flatMap!1687 lt!2349919 lambda!342581))))

(declare-fun bs!1559025 () Bool)

(assert (= bs!1559025 d!1963483))

(declare-fun m!7081250 () Bool)

(assert (=> bs!1559025 m!7081250))

(assert (=> b!6258054 d!1963483))

(declare-fun d!1963485 () Bool)

(declare-fun e!3807119 () Bool)

(assert (=> d!1963485 e!3807119))

(declare-fun res!2582787 () Bool)

(assert (=> d!1963485 (=> (not res!2582787) (not e!3807119))))

(declare-fun lt!2350078 () List!64846)

(declare-fun noDuplicate!2016 (List!64846) Bool)

(assert (=> d!1963485 (= res!2582787 (noDuplicate!2016 lt!2350078))))

(declare-fun choose!46445 ((Set Context!11132)) List!64846)

(assert (=> d!1963485 (= lt!2350078 (choose!46445 z!1189))))

(assert (=> d!1963485 (= (toList!9966 z!1189) lt!2350078)))

(declare-fun b!6258472 () Bool)

(declare-fun content!12149 (List!64846) (Set Context!11132))

(assert (=> b!6258472 (= e!3807119 (= (content!12149 lt!2350078) z!1189))))

(assert (= (and d!1963485 res!2582787) b!6258472))

(declare-fun m!7081252 () Bool)

(assert (=> d!1963485 m!7081252))

(declare-fun m!7081254 () Bool)

(assert (=> d!1963485 m!7081254))

(declare-fun m!7081256 () Bool)

(assert (=> b!6258472 m!7081256))

(assert (=> b!6258034 d!1963485))

(assert (=> b!6258031 d!1963465))

(declare-fun d!1963487 () Bool)

(declare-fun c!1133160 () Bool)

(assert (=> d!1963487 (= c!1133160 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807120 () Bool)

(assert (=> d!1963487 (= (matchZipper!2194 lt!2349909 (t!378399 s!2326)) e!3807120)))

(declare-fun b!6258473 () Bool)

(assert (=> b!6258473 (= e!3807120 (nullableZipper!1952 lt!2349909))))

(declare-fun b!6258474 () Bool)

(assert (=> b!6258474 (= e!3807120 (matchZipper!2194 (derivationStepZipper!2148 lt!2349909 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963487 c!1133160) b!6258473))

(assert (= (and d!1963487 (not c!1133160)) b!6258474))

(assert (=> d!1963487 m!7081068))

(declare-fun m!7081258 () Bool)

(assert (=> b!6258473 m!7081258))

(assert (=> b!6258474 m!7081072))

(assert (=> b!6258474 m!7081072))

(declare-fun m!7081260 () Bool)

(assert (=> b!6258474 m!7081260))

(assert (=> b!6258474 m!7081076))

(assert (=> b!6258474 m!7081260))

(assert (=> b!6258474 m!7081076))

(declare-fun m!7081262 () Bool)

(assert (=> b!6258474 m!7081262))

(assert (=> b!6258031 d!1963487))

(declare-fun d!1963489 () Bool)

(declare-fun c!1133161 () Bool)

(assert (=> d!1963489 (= c!1133161 (isEmpty!36752 (t!378399 s!2326)))))

(declare-fun e!3807121 () Bool)

(assert (=> d!1963489 (= (matchZipper!2194 lt!2349920 (t!378399 s!2326)) e!3807121)))

(declare-fun b!6258475 () Bool)

(assert (=> b!6258475 (= e!3807121 (nullableZipper!1952 lt!2349920))))

(declare-fun b!6258476 () Bool)

(assert (=> b!6258476 (= e!3807121 (matchZipper!2194 (derivationStepZipper!2148 lt!2349920 (head!12864 (t!378399 s!2326))) (tail!11949 (t!378399 s!2326))))))

(assert (= (and d!1963489 c!1133161) b!6258475))

(assert (= (and d!1963489 (not c!1133161)) b!6258476))

(assert (=> d!1963489 m!7081068))

(declare-fun m!7081264 () Bool)

(assert (=> b!6258475 m!7081264))

(assert (=> b!6258476 m!7081072))

(assert (=> b!6258476 m!7081072))

(declare-fun m!7081266 () Bool)

(assert (=> b!6258476 m!7081266))

(assert (=> b!6258476 m!7081076))

(assert (=> b!6258476 m!7081266))

(assert (=> b!6258476 m!7081076))

(declare-fun m!7081268 () Bool)

(assert (=> b!6258476 m!7081268))

(assert (=> b!6258031 d!1963489))

(declare-fun e!3807122 () Bool)

(declare-fun d!1963491 () Bool)

(assert (=> d!1963491 (= (matchZipper!2194 (set.union lt!2349920 lt!2349923) (t!378399 s!2326)) e!3807122)))

(declare-fun res!2582788 () Bool)

(assert (=> d!1963491 (=> res!2582788 e!3807122)))

(assert (=> d!1963491 (= res!2582788 (matchZipper!2194 lt!2349920 (t!378399 s!2326)))))

(declare-fun lt!2350079 () Unit!158059)

(assert (=> d!1963491 (= lt!2350079 (choose!46444 lt!2349920 lt!2349923 (t!378399 s!2326)))))

(assert (=> d!1963491 (= (lemmaZipperConcatMatchesSameAsBothZippers!1013 lt!2349920 lt!2349923 (t!378399 s!2326)) lt!2350079)))

(declare-fun b!6258477 () Bool)

(assert (=> b!6258477 (= e!3807122 (matchZipper!2194 lt!2349923 (t!378399 s!2326)))))

(assert (= (and d!1963491 (not res!2582788)) b!6258477))

(declare-fun m!7081270 () Bool)

(assert (=> d!1963491 m!7081270))

(assert (=> d!1963491 m!7080774))

(declare-fun m!7081272 () Bool)

(assert (=> d!1963491 m!7081272))

(assert (=> b!6258477 m!7080768))

(assert (=> b!6258031 d!1963491))

(declare-fun d!1963493 () Bool)

(assert (=> d!1963493 (= (nullable!6175 (regOne!32876 (regOne!32876 r!7292))) (nullableFct!2127 (regOne!32876 (regOne!32876 r!7292))))))

(declare-fun bs!1559026 () Bool)

(assert (= bs!1559026 d!1963493))

(declare-fun m!7081274 () Bool)

(assert (=> bs!1559026 m!7081274))

(assert (=> b!6258051 d!1963493))

(declare-fun d!1963495 () Bool)

(assert (=> d!1963495 (= (isEmpty!36749 (t!378398 zl!343)) (is-Nil!64722 (t!378398 zl!343)))))

(assert (=> b!6258052 d!1963495))

(declare-fun b!6258496 () Bool)

(declare-fun e!3807142 () Bool)

(declare-fun e!3807139 () Bool)

(assert (=> b!6258496 (= e!3807142 e!3807139)))

(declare-fun res!2582802 () Bool)

(assert (=> b!6258496 (=> (not res!2582802) (not e!3807139))))

(declare-fun call!528307 () Bool)

(assert (=> b!6258496 (= res!2582802 call!528307)))

(declare-fun b!6258497 () Bool)

(declare-fun e!3807143 () Bool)

(declare-fun call!528305 () Bool)

(assert (=> b!6258497 (= e!3807143 call!528305)))

(declare-fun bm!528300 () Bool)

(declare-fun call!528306 () Bool)

(assert (=> bm!528300 (= call!528305 call!528306)))

(declare-fun b!6258498 () Bool)

(declare-fun e!3807137 () Bool)

(declare-fun e!3807141 () Bool)

(assert (=> b!6258498 (= e!3807137 e!3807141)))

(declare-fun res!2582801 () Bool)

(assert (=> b!6258498 (= res!2582801 (not (nullable!6175 (reg!16511 r!7292))))))

(assert (=> b!6258498 (=> (not res!2582801) (not e!3807141))))

(declare-fun b!6258499 () Bool)

(declare-fun e!3807140 () Bool)

(assert (=> b!6258499 (= e!3807140 e!3807137)))

(declare-fun c!1133166 () Bool)

(assert (=> b!6258499 (= c!1133166 (is-Star!16182 r!7292))))

(declare-fun d!1963497 () Bool)

(declare-fun res!2582803 () Bool)

(assert (=> d!1963497 (=> res!2582803 e!3807140)))

(assert (=> d!1963497 (= res!2582803 (is-ElementMatch!16182 r!7292))))

(assert (=> d!1963497 (= (validRegex!7918 r!7292) e!3807140)))

(declare-fun b!6258500 () Bool)

(assert (=> b!6258500 (= e!3807141 call!528306)))

(declare-fun b!6258501 () Bool)

(declare-fun res!2582800 () Bool)

(assert (=> b!6258501 (=> res!2582800 e!3807142)))

(assert (=> b!6258501 (= res!2582800 (not (is-Concat!25027 r!7292)))))

(declare-fun e!3807138 () Bool)

(assert (=> b!6258501 (= e!3807138 e!3807142)))

(declare-fun b!6258502 () Bool)

(declare-fun res!2582799 () Bool)

(assert (=> b!6258502 (=> (not res!2582799) (not e!3807143))))

(assert (=> b!6258502 (= res!2582799 call!528307)))

(assert (=> b!6258502 (= e!3807138 e!3807143)))

(declare-fun bm!528301 () Bool)

(declare-fun c!1133167 () Bool)

(assert (=> bm!528301 (= call!528306 (validRegex!7918 (ite c!1133166 (reg!16511 r!7292) (ite c!1133167 (regTwo!32877 r!7292) (regTwo!32876 r!7292)))))))

(declare-fun bm!528302 () Bool)

(assert (=> bm!528302 (= call!528307 (validRegex!7918 (ite c!1133167 (regOne!32877 r!7292) (regOne!32876 r!7292))))))

(declare-fun b!6258503 () Bool)

(assert (=> b!6258503 (= e!3807139 call!528305)))

(declare-fun b!6258504 () Bool)

(assert (=> b!6258504 (= e!3807137 e!3807138)))

(assert (=> b!6258504 (= c!1133167 (is-Union!16182 r!7292))))

(assert (= (and d!1963497 (not res!2582803)) b!6258499))

(assert (= (and b!6258499 c!1133166) b!6258498))

(assert (= (and b!6258499 (not c!1133166)) b!6258504))

(assert (= (and b!6258498 res!2582801) b!6258500))

(assert (= (and b!6258504 c!1133167) b!6258502))

(assert (= (and b!6258504 (not c!1133167)) b!6258501))

(assert (= (and b!6258502 res!2582799) b!6258497))

(assert (= (and b!6258501 (not res!2582800)) b!6258496))

(assert (= (and b!6258496 res!2582802) b!6258503))

(assert (= (or b!6258497 b!6258503) bm!528300))

(assert (= (or b!6258502 b!6258496) bm!528302))

(assert (= (or b!6258500 bm!528300) bm!528301))

(declare-fun m!7081276 () Bool)

(assert (=> b!6258498 m!7081276))

(declare-fun m!7081278 () Bool)

(assert (=> bm!528301 m!7081278))

(declare-fun m!7081280 () Bool)

(assert (=> bm!528302 m!7081280))

(assert (=> start!622552 d!1963497))

(assert (=> b!6258032 d!1963469))

(declare-fun d!1963499 () Bool)

(declare-fun lt!2350082 () Regex!16182)

(assert (=> d!1963499 (validRegex!7918 lt!2350082)))

(assert (=> d!1963499 (= lt!2350082 (generalisedUnion!2026 (unfocusZipperList!1603 zl!343)))))

(assert (=> d!1963499 (= (unfocusZipper!1924 zl!343) lt!2350082)))

(declare-fun bs!1559027 () Bool)

(assert (= bs!1559027 d!1963499))

(declare-fun m!7081282 () Bool)

(assert (=> bs!1559027 m!7081282))

(assert (=> bs!1559027 m!7080842))

(assert (=> bs!1559027 m!7080842))

(assert (=> bs!1559027 m!7080844))

(assert (=> b!6258033 d!1963499))

(declare-fun d!1963501 () Bool)

(declare-fun lt!2350085 () Int)

(assert (=> d!1963501 (>= lt!2350085 0)))

(declare-fun e!3807146 () Int)

(assert (=> d!1963501 (= lt!2350085 e!3807146)))

(declare-fun c!1133170 () Bool)

(assert (=> d!1963501 (= c!1133170 (is-Cons!64722 lt!2349930))))

(assert (=> d!1963501 (= (zipperDepthTotal!335 lt!2349930) lt!2350085)))

(declare-fun b!6258509 () Bool)

(assert (=> b!6258509 (= e!3807146 (+ (contextDepthTotal!305 (h!71170 lt!2349930)) (zipperDepthTotal!335 (t!378398 lt!2349930))))))

(declare-fun b!6258510 () Bool)

(assert (=> b!6258510 (= e!3807146 0)))

(assert (= (and d!1963501 c!1133170) b!6258509))

(assert (= (and d!1963501 (not c!1133170)) b!6258510))

(declare-fun m!7081284 () Bool)

(assert (=> b!6258509 m!7081284))

(declare-fun m!7081286 () Bool)

(assert (=> b!6258509 m!7081286))

(assert (=> b!6258053 d!1963501))

(declare-fun d!1963503 () Bool)

(declare-fun lt!2350086 () Int)

(assert (=> d!1963503 (>= lt!2350086 0)))

(declare-fun e!3807147 () Int)

(assert (=> d!1963503 (= lt!2350086 e!3807147)))

(declare-fun c!1133171 () Bool)

(assert (=> d!1963503 (= c!1133171 (is-Cons!64722 zl!343))))

(assert (=> d!1963503 (= (zipperDepthTotal!335 zl!343) lt!2350086)))

(declare-fun b!6258511 () Bool)

(assert (=> b!6258511 (= e!3807147 (+ (contextDepthTotal!305 (h!71170 zl!343)) (zipperDepthTotal!335 (t!378398 zl!343))))))

(declare-fun b!6258512 () Bool)

(assert (=> b!6258512 (= e!3807147 0)))

(assert (= (and d!1963503 c!1133171) b!6258511))

(assert (= (and d!1963503 (not c!1133171)) b!6258512))

(assert (=> b!6258511 m!7080796))

(declare-fun m!7081288 () Bool)

(assert (=> b!6258511 m!7081288))

(assert (=> b!6258053 d!1963503))

(declare-fun bs!1559028 () Bool)

(declare-fun d!1963505 () Bool)

(assert (= bs!1559028 (and d!1963505 d!1963427)))

(declare-fun lambda!342584 () Int)

(assert (=> bs!1559028 (= lambda!342584 lambda!342562)))

(declare-fun b!6258533 () Bool)

(declare-fun e!3807161 () Bool)

(declare-fun lt!2350089 () Regex!16182)

(assert (=> b!6258533 (= e!3807161 (= lt!2350089 (head!12865 (unfocusZipperList!1603 zl!343))))))

(declare-fun b!6258534 () Bool)

(declare-fun e!3807160 () Bool)

(assert (=> b!6258534 (= e!3807160 e!3807161)))

(declare-fun c!1133181 () Bool)

(assert (=> b!6258534 (= c!1133181 (isEmpty!36748 (tail!11950 (unfocusZipperList!1603 zl!343))))))

(declare-fun b!6258535 () Bool)

(declare-fun e!3807162 () Regex!16182)

(assert (=> b!6258535 (= e!3807162 (Union!16182 (h!71169 (unfocusZipperList!1603 zl!343)) (generalisedUnion!2026 (t!378397 (unfocusZipperList!1603 zl!343)))))))

(declare-fun e!3807164 () Bool)

(assert (=> d!1963505 e!3807164))

(declare-fun res!2582808 () Bool)

(assert (=> d!1963505 (=> (not res!2582808) (not e!3807164))))

(assert (=> d!1963505 (= res!2582808 (validRegex!7918 lt!2350089))))

(declare-fun e!3807165 () Regex!16182)

(assert (=> d!1963505 (= lt!2350089 e!3807165)))

(declare-fun c!1133182 () Bool)

(declare-fun e!3807163 () Bool)

(assert (=> d!1963505 (= c!1133182 e!3807163)))

(declare-fun res!2582809 () Bool)

(assert (=> d!1963505 (=> (not res!2582809) (not e!3807163))))

(assert (=> d!1963505 (= res!2582809 (is-Cons!64721 (unfocusZipperList!1603 zl!343)))))

(assert (=> d!1963505 (forall!15302 (unfocusZipperList!1603 zl!343) lambda!342584)))

(assert (=> d!1963505 (= (generalisedUnion!2026 (unfocusZipperList!1603 zl!343)) lt!2350089)))

(declare-fun b!6258536 () Bool)

(assert (=> b!6258536 (= e!3807164 e!3807160)))

(declare-fun c!1133183 () Bool)

(assert (=> b!6258536 (= c!1133183 (isEmpty!36748 (unfocusZipperList!1603 zl!343)))))

(declare-fun b!6258537 () Bool)

(assert (=> b!6258537 (= e!3807162 EmptyLang!16182)))

(declare-fun b!6258538 () Bool)

(declare-fun isUnion!1027 (Regex!16182) Bool)

(assert (=> b!6258538 (= e!3807161 (isUnion!1027 lt!2350089))))

(declare-fun b!6258539 () Bool)

(assert (=> b!6258539 (= e!3807163 (isEmpty!36748 (t!378397 (unfocusZipperList!1603 zl!343))))))

(declare-fun b!6258540 () Bool)

(assert (=> b!6258540 (= e!3807165 e!3807162)))

(declare-fun c!1133180 () Bool)

(assert (=> b!6258540 (= c!1133180 (is-Cons!64721 (unfocusZipperList!1603 zl!343)))))

(declare-fun b!6258541 () Bool)

(assert (=> b!6258541 (= e!3807165 (h!71169 (unfocusZipperList!1603 zl!343)))))

(declare-fun b!6258542 () Bool)

(declare-fun isEmptyLang!1597 (Regex!16182) Bool)

(assert (=> b!6258542 (= e!3807160 (isEmptyLang!1597 lt!2350089))))

(assert (= (and d!1963505 res!2582809) b!6258539))

(assert (= (and d!1963505 c!1133182) b!6258541))

(assert (= (and d!1963505 (not c!1133182)) b!6258540))

(assert (= (and b!6258540 c!1133180) b!6258535))

(assert (= (and b!6258540 (not c!1133180)) b!6258537))

(assert (= (and d!1963505 res!2582808) b!6258536))

(assert (= (and b!6258536 c!1133183) b!6258542))

(assert (= (and b!6258536 (not c!1133183)) b!6258534))

(assert (= (and b!6258534 c!1133181) b!6258533))

(assert (= (and b!6258534 (not c!1133181)) b!6258538))

(assert (=> b!6258533 m!7080842))

(declare-fun m!7081290 () Bool)

(assert (=> b!6258533 m!7081290))

(declare-fun m!7081292 () Bool)

(assert (=> b!6258538 m!7081292))

(assert (=> b!6258536 m!7080842))

(declare-fun m!7081294 () Bool)

(assert (=> b!6258536 m!7081294))

(assert (=> b!6258534 m!7080842))

(declare-fun m!7081296 () Bool)

(assert (=> b!6258534 m!7081296))

(assert (=> b!6258534 m!7081296))

(declare-fun m!7081298 () Bool)

(assert (=> b!6258534 m!7081298))

(declare-fun m!7081300 () Bool)

(assert (=> d!1963505 m!7081300))

(assert (=> d!1963505 m!7080842))

(declare-fun m!7081302 () Bool)

(assert (=> d!1963505 m!7081302))

(declare-fun m!7081304 () Bool)

(assert (=> b!6258539 m!7081304))

(declare-fun m!7081306 () Bool)

(assert (=> b!6258535 m!7081306))

(declare-fun m!7081308 () Bool)

(assert (=> b!6258542 m!7081308))

(assert (=> b!6258028 d!1963505))

(declare-fun bs!1559029 () Bool)

(declare-fun d!1963507 () Bool)

(assert (= bs!1559029 (and d!1963507 d!1963427)))

(declare-fun lambda!342587 () Int)

(assert (=> bs!1559029 (= lambda!342587 lambda!342562)))

(declare-fun bs!1559030 () Bool)

(assert (= bs!1559030 (and d!1963507 d!1963505)))

(assert (=> bs!1559030 (= lambda!342587 lambda!342584)))

(declare-fun lt!2350092 () List!64845)

(assert (=> d!1963507 (forall!15302 lt!2350092 lambda!342587)))

(declare-fun e!3807168 () List!64845)

(assert (=> d!1963507 (= lt!2350092 e!3807168)))

(declare-fun c!1133186 () Bool)

(assert (=> d!1963507 (= c!1133186 (is-Cons!64722 zl!343))))

(assert (=> d!1963507 (= (unfocusZipperList!1603 zl!343) lt!2350092)))

(declare-fun b!6258547 () Bool)

(assert (=> b!6258547 (= e!3807168 (Cons!64721 (generalisedConcat!1779 (exprs!6066 (h!71170 zl!343))) (unfocusZipperList!1603 (t!378398 zl!343))))))

(declare-fun b!6258548 () Bool)

(assert (=> b!6258548 (= e!3807168 Nil!64721)))

(assert (= (and d!1963507 c!1133186) b!6258547))

(assert (= (and d!1963507 (not c!1133186)) b!6258548))

(declare-fun m!7081310 () Bool)

(assert (=> d!1963507 m!7081310))

(assert (=> b!6258547 m!7080892))

(declare-fun m!7081312 () Bool)

(assert (=> b!6258547 m!7081312))

(assert (=> b!6258028 d!1963507))

(declare-fun d!1963509 () Bool)

(assert (=> d!1963509 (= (matchR!8365 lt!2349925 s!2326) (matchZipper!2194 lt!2349935 s!2326))))

(declare-fun lt!2350095 () Unit!158059)

(declare-fun choose!46446 ((Set Context!11132) List!64846 Regex!16182 List!64847) Unit!158059)

(assert (=> d!1963509 (= lt!2350095 (choose!46446 lt!2349935 lt!2349930 lt!2349925 s!2326))))

(assert (=> d!1963509 (validRegex!7918 lt!2349925)))

(assert (=> d!1963509 (= (theoremZipperRegexEquiv!752 lt!2349935 lt!2349930 lt!2349925 s!2326) lt!2350095)))

(declare-fun bs!1559031 () Bool)

(assert (= bs!1559031 d!1963509))

(assert (=> bs!1559031 m!7080810))

(assert (=> bs!1559031 m!7080806))

(declare-fun m!7081314 () Bool)

(assert (=> bs!1559031 m!7081314))

(declare-fun m!7081316 () Bool)

(assert (=> bs!1559031 m!7081316))

(assert (=> b!6258029 d!1963509))

(declare-fun b!6258549 () Bool)

(declare-fun e!3807174 () Bool)

(declare-fun e!3807171 () Bool)

(assert (=> b!6258549 (= e!3807174 e!3807171)))

(declare-fun res!2582813 () Bool)

(assert (=> b!6258549 (=> (not res!2582813) (not e!3807171))))

(declare-fun call!528310 () Bool)

(assert (=> b!6258549 (= res!2582813 call!528310)))

(declare-fun b!6258550 () Bool)

(declare-fun e!3807175 () Bool)

(declare-fun call!528308 () Bool)

(assert (=> b!6258550 (= e!3807175 call!528308)))

(declare-fun bm!528303 () Bool)

(declare-fun call!528309 () Bool)

(assert (=> bm!528303 (= call!528308 call!528309)))

(declare-fun b!6258551 () Bool)

(declare-fun e!3807169 () Bool)

(declare-fun e!3807173 () Bool)

(assert (=> b!6258551 (= e!3807169 e!3807173)))

(declare-fun res!2582812 () Bool)

(assert (=> b!6258551 (= res!2582812 (not (nullable!6175 (reg!16511 (generalisedConcat!1779 lt!2349916)))))))

(assert (=> b!6258551 (=> (not res!2582812) (not e!3807173))))

(declare-fun b!6258552 () Bool)

(declare-fun e!3807172 () Bool)

(assert (=> b!6258552 (= e!3807172 e!3807169)))

(declare-fun c!1133187 () Bool)

(assert (=> b!6258552 (= c!1133187 (is-Star!16182 (generalisedConcat!1779 lt!2349916)))))

(declare-fun d!1963511 () Bool)

(declare-fun res!2582814 () Bool)

(assert (=> d!1963511 (=> res!2582814 e!3807172)))

(assert (=> d!1963511 (= res!2582814 (is-ElementMatch!16182 (generalisedConcat!1779 lt!2349916)))))

(assert (=> d!1963511 (= (validRegex!7918 (generalisedConcat!1779 lt!2349916)) e!3807172)))

(declare-fun b!6258553 () Bool)

(assert (=> b!6258553 (= e!3807173 call!528309)))

(declare-fun b!6258554 () Bool)

(declare-fun res!2582811 () Bool)

(assert (=> b!6258554 (=> res!2582811 e!3807174)))

(assert (=> b!6258554 (= res!2582811 (not (is-Concat!25027 (generalisedConcat!1779 lt!2349916))))))

(declare-fun e!3807170 () Bool)

(assert (=> b!6258554 (= e!3807170 e!3807174)))

(declare-fun b!6258555 () Bool)

(declare-fun res!2582810 () Bool)

(assert (=> b!6258555 (=> (not res!2582810) (not e!3807175))))

(assert (=> b!6258555 (= res!2582810 call!528310)))

(assert (=> b!6258555 (= e!3807170 e!3807175)))

(declare-fun bm!528304 () Bool)

(declare-fun c!1133188 () Bool)

(assert (=> bm!528304 (= call!528309 (validRegex!7918 (ite c!1133187 (reg!16511 (generalisedConcat!1779 lt!2349916)) (ite c!1133188 (regTwo!32877 (generalisedConcat!1779 lt!2349916)) (regTwo!32876 (generalisedConcat!1779 lt!2349916))))))))

(declare-fun bm!528305 () Bool)

(assert (=> bm!528305 (= call!528310 (validRegex!7918 (ite c!1133188 (regOne!32877 (generalisedConcat!1779 lt!2349916)) (regOne!32876 (generalisedConcat!1779 lt!2349916)))))))

(declare-fun b!6258556 () Bool)

(assert (=> b!6258556 (= e!3807171 call!528308)))

(declare-fun b!6258557 () Bool)

(assert (=> b!6258557 (= e!3807169 e!3807170)))

(assert (=> b!6258557 (= c!1133188 (is-Union!16182 (generalisedConcat!1779 lt!2349916)))))

(assert (= (and d!1963511 (not res!2582814)) b!6258552))

(assert (= (and b!6258552 c!1133187) b!6258551))

(assert (= (and b!6258552 (not c!1133187)) b!6258557))

(assert (= (and b!6258551 res!2582812) b!6258553))

(assert (= (and b!6258557 c!1133188) b!6258555))

(assert (= (and b!6258557 (not c!1133188)) b!6258554))

(assert (= (and b!6258555 res!2582810) b!6258550))

(assert (= (and b!6258554 (not res!2582811)) b!6258549))

(assert (= (and b!6258549 res!2582813) b!6258556))

(assert (= (or b!6258550 b!6258556) bm!528303))

(assert (= (or b!6258555 b!6258549) bm!528305))

(assert (= (or b!6258553 bm!528303) bm!528304))

(declare-fun m!7081318 () Bool)

(assert (=> b!6258551 m!7081318))

(declare-fun m!7081320 () Bool)

(assert (=> bm!528304 m!7081320))

(declare-fun m!7081322 () Bool)

(assert (=> bm!528305 m!7081322))

(assert (=> b!6258029 d!1963511))

(declare-fun d!1963513 () Bool)

(declare-fun c!1133189 () Bool)

(assert (=> d!1963513 (= c!1133189 (isEmpty!36752 s!2326))))

(declare-fun e!3807176 () Bool)

(assert (=> d!1963513 (= (matchZipper!2194 lt!2349935 s!2326) e!3807176)))

(declare-fun b!6258558 () Bool)

(assert (=> b!6258558 (= e!3807176 (nullableZipper!1952 lt!2349935))))

(declare-fun b!6258559 () Bool)

(assert (=> b!6258559 (= e!3807176 (matchZipper!2194 (derivationStepZipper!2148 lt!2349935 (head!12864 s!2326)) (tail!11949 s!2326)))))

(assert (= (and d!1963513 c!1133189) b!6258558))

(assert (= (and d!1963513 (not c!1133189)) b!6258559))

(assert (=> d!1963513 m!7081150))

(declare-fun m!7081324 () Bool)

(assert (=> b!6258558 m!7081324))

(assert (=> b!6258559 m!7081152))

(assert (=> b!6258559 m!7081152))

(declare-fun m!7081326 () Bool)

(assert (=> b!6258559 m!7081326))

(assert (=> b!6258559 m!7081154))

(assert (=> b!6258559 m!7081326))

(assert (=> b!6258559 m!7081154))

(declare-fun m!7081328 () Bool)

(assert (=> b!6258559 m!7081328))

(assert (=> b!6258029 d!1963513))

(declare-fun bs!1559032 () Bool)

(declare-fun d!1963515 () Bool)

(assert (= bs!1559032 (and d!1963515 d!1963427)))

(declare-fun lambda!342588 () Int)

(assert (=> bs!1559032 (= lambda!342588 lambda!342562)))

(declare-fun bs!1559033 () Bool)

(assert (= bs!1559033 (and d!1963515 d!1963505)))

(assert (=> bs!1559033 (= lambda!342588 lambda!342584)))

(declare-fun bs!1559034 () Bool)

(assert (= bs!1559034 (and d!1963515 d!1963507)))

(assert (=> bs!1559034 (= lambda!342588 lambda!342587)))

(declare-fun b!6258560 () Bool)

(declare-fun e!3807182 () Regex!16182)

(assert (=> b!6258560 (= e!3807182 (h!71169 lt!2349907))))

(declare-fun b!6258561 () Bool)

(declare-fun e!3807180 () Bool)

(declare-fun lt!2350096 () Regex!16182)

(assert (=> b!6258561 (= e!3807180 (isEmptyExpr!1588 lt!2350096))))

(declare-fun b!6258562 () Bool)

(declare-fun e!3807178 () Regex!16182)

(assert (=> b!6258562 (= e!3807178 (Concat!25027 (h!71169 lt!2349907) (generalisedConcat!1779 (t!378397 lt!2349907))))))

(declare-fun b!6258563 () Bool)

(assert (=> b!6258563 (= e!3807178 EmptyExpr!16182)))

(declare-fun b!6258564 () Bool)

(declare-fun e!3807181 () Bool)

(assert (=> b!6258564 (= e!3807180 e!3807181)))

(declare-fun c!1133190 () Bool)

(assert (=> b!6258564 (= c!1133190 (isEmpty!36748 (tail!11950 lt!2349907)))))

(declare-fun b!6258565 () Bool)

(declare-fun e!3807177 () Bool)

(assert (=> b!6258565 (= e!3807177 e!3807180)))

(declare-fun c!1133193 () Bool)

(assert (=> b!6258565 (= c!1133193 (isEmpty!36748 lt!2349907))))

(declare-fun b!6258566 () Bool)

(assert (=> b!6258566 (= e!3807182 e!3807178)))

(declare-fun c!1133191 () Bool)

(assert (=> b!6258566 (= c!1133191 (is-Cons!64721 lt!2349907))))

(declare-fun b!6258567 () Bool)

(assert (=> b!6258567 (= e!3807181 (isConcat!1111 lt!2350096))))

(assert (=> d!1963515 e!3807177))

(declare-fun res!2582816 () Bool)

(assert (=> d!1963515 (=> (not res!2582816) (not e!3807177))))

(assert (=> d!1963515 (= res!2582816 (validRegex!7918 lt!2350096))))

(assert (=> d!1963515 (= lt!2350096 e!3807182)))

(declare-fun c!1133192 () Bool)

(declare-fun e!3807179 () Bool)

(assert (=> d!1963515 (= c!1133192 e!3807179)))

(declare-fun res!2582815 () Bool)

(assert (=> d!1963515 (=> (not res!2582815) (not e!3807179))))

(assert (=> d!1963515 (= res!2582815 (is-Cons!64721 lt!2349907))))

(assert (=> d!1963515 (forall!15302 lt!2349907 lambda!342588)))

(assert (=> d!1963515 (= (generalisedConcat!1779 lt!2349907) lt!2350096)))

(declare-fun b!6258568 () Bool)

(assert (=> b!6258568 (= e!3807181 (= lt!2350096 (head!12865 lt!2349907)))))

(declare-fun b!6258569 () Bool)

(assert (=> b!6258569 (= e!3807179 (isEmpty!36748 (t!378397 lt!2349907)))))

(assert (= (and d!1963515 res!2582815) b!6258569))

(assert (= (and d!1963515 c!1133192) b!6258560))

(assert (= (and d!1963515 (not c!1133192)) b!6258566))

(assert (= (and b!6258566 c!1133191) b!6258562))

(assert (= (and b!6258566 (not c!1133191)) b!6258563))

(assert (= (and d!1963515 res!2582816) b!6258565))

(assert (= (and b!6258565 c!1133193) b!6258561))

(assert (= (and b!6258565 (not c!1133193)) b!6258564))

(assert (= (and b!6258564 c!1133190) b!6258568))

(assert (= (and b!6258564 (not c!1133190)) b!6258567))

(declare-fun m!7081330 () Bool)

(assert (=> d!1963515 m!7081330))

(declare-fun m!7081332 () Bool)

(assert (=> d!1963515 m!7081332))

(declare-fun m!7081334 () Bool)

(assert (=> b!6258568 m!7081334))

(declare-fun m!7081336 () Bool)

(assert (=> b!6258564 m!7081336))

(assert (=> b!6258564 m!7081336))

(declare-fun m!7081338 () Bool)

(assert (=> b!6258564 m!7081338))

(declare-fun m!7081340 () Bool)

(assert (=> b!6258565 m!7081340))

(declare-fun m!7081342 () Bool)

(assert (=> b!6258561 m!7081342))

(declare-fun m!7081344 () Bool)

(assert (=> b!6258562 m!7081344))

(declare-fun m!7081346 () Bool)

(assert (=> b!6258569 m!7081346))

(declare-fun m!7081348 () Bool)

(assert (=> b!6258567 m!7081348))

(assert (=> b!6258029 d!1963515))

(declare-fun b!6258570 () Bool)

(declare-fun e!3807183 () Bool)

(assert (=> b!6258570 (= e!3807183 (not (= (head!12864 s!2326) (c!1133053 lt!2349925))))))

(declare-fun b!6258572 () Bool)

(declare-fun e!3807187 () Bool)

(declare-fun e!3807184 () Bool)

(assert (=> b!6258572 (= e!3807187 e!3807184)))

(declare-fun c!1133194 () Bool)

(assert (=> b!6258572 (= c!1133194 (is-EmptyLang!16182 lt!2349925))))

(declare-fun b!6258573 () Bool)

(declare-fun e!3807186 () Bool)

(assert (=> b!6258573 (= e!3807186 (matchR!8365 (derivativeStep!4891 lt!2349925 (head!12864 s!2326)) (tail!11949 s!2326)))))

(declare-fun b!6258574 () Bool)

(declare-fun res!2582819 () Bool)

(declare-fun e!3807185 () Bool)

(assert (=> b!6258574 (=> (not res!2582819) (not e!3807185))))

(declare-fun call!528311 () Bool)

(assert (=> b!6258574 (= res!2582819 (not call!528311))))

(declare-fun b!6258575 () Bool)

(declare-fun lt!2350097 () Bool)

(assert (=> b!6258575 (= e!3807184 (not lt!2350097))))

(declare-fun b!6258576 () Bool)

(assert (=> b!6258576 (= e!3807186 (nullable!6175 lt!2349925))))

(declare-fun bm!528306 () Bool)

(assert (=> bm!528306 (= call!528311 (isEmpty!36752 s!2326))))

(declare-fun b!6258577 () Bool)

(assert (=> b!6258577 (= e!3807187 (= lt!2350097 call!528311))))

(declare-fun b!6258571 () Bool)

(declare-fun res!2582818 () Bool)

(assert (=> b!6258571 (=> (not res!2582818) (not e!3807185))))

(assert (=> b!6258571 (= res!2582818 (isEmpty!36752 (tail!11949 s!2326)))))

(declare-fun d!1963517 () Bool)

(assert (=> d!1963517 e!3807187))

(declare-fun c!1133196 () Bool)

(assert (=> d!1963517 (= c!1133196 (is-EmptyExpr!16182 lt!2349925))))

(assert (=> d!1963517 (= lt!2350097 e!3807186)))

(declare-fun c!1133195 () Bool)

(assert (=> d!1963517 (= c!1133195 (isEmpty!36752 s!2326))))

(assert (=> d!1963517 (validRegex!7918 lt!2349925)))

(assert (=> d!1963517 (= (matchR!8365 lt!2349925 s!2326) lt!2350097)))

(declare-fun b!6258578 () Bool)

(declare-fun res!2582823 () Bool)

(declare-fun e!3807188 () Bool)

(assert (=> b!6258578 (=> res!2582823 e!3807188)))

(assert (=> b!6258578 (= res!2582823 (not (is-ElementMatch!16182 lt!2349925)))))

(assert (=> b!6258578 (= e!3807184 e!3807188)))

(declare-fun b!6258579 () Bool)

(declare-fun e!3807189 () Bool)

(assert (=> b!6258579 (= e!3807188 e!3807189)))

(declare-fun res!2582817 () Bool)

(assert (=> b!6258579 (=> (not res!2582817) (not e!3807189))))

(assert (=> b!6258579 (= res!2582817 (not lt!2350097))))

(declare-fun b!6258580 () Bool)

(declare-fun res!2582822 () Bool)

(assert (=> b!6258580 (=> res!2582822 e!3807188)))

(assert (=> b!6258580 (= res!2582822 e!3807185)))

(declare-fun res!2582820 () Bool)

(assert (=> b!6258580 (=> (not res!2582820) (not e!3807185))))

(assert (=> b!6258580 (= res!2582820 lt!2350097)))

(declare-fun b!6258581 () Bool)

(assert (=> b!6258581 (= e!3807185 (= (head!12864 s!2326) (c!1133053 lt!2349925)))))

(declare-fun b!6258582 () Bool)

(assert (=> b!6258582 (= e!3807189 e!3807183)))

(declare-fun res!2582824 () Bool)

(assert (=> b!6258582 (=> res!2582824 e!3807183)))

(assert (=> b!6258582 (= res!2582824 call!528311)))

(declare-fun b!6258583 () Bool)

(declare-fun res!2582821 () Bool)

(assert (=> b!6258583 (=> res!2582821 e!3807183)))

(assert (=> b!6258583 (= res!2582821 (not (isEmpty!36752 (tail!11949 s!2326))))))

(assert (= (and d!1963517 c!1133195) b!6258576))

(assert (= (and d!1963517 (not c!1133195)) b!6258573))

(assert (= (and d!1963517 c!1133196) b!6258577))

(assert (= (and d!1963517 (not c!1133196)) b!6258572))

(assert (= (and b!6258572 c!1133194) b!6258575))

(assert (= (and b!6258572 (not c!1133194)) b!6258578))

(assert (= (and b!6258578 (not res!2582823)) b!6258580))

(assert (= (and b!6258580 res!2582820) b!6258574))

(assert (= (and b!6258574 res!2582819) b!6258571))

(assert (= (and b!6258571 res!2582818) b!6258581))

(assert (= (and b!6258580 (not res!2582822)) b!6258579))

(assert (= (and b!6258579 res!2582817) b!6258582))

(assert (= (and b!6258582 (not res!2582824)) b!6258583))

(assert (= (and b!6258583 (not res!2582821)) b!6258570))

(assert (= (or b!6258577 b!6258574 b!6258582) bm!528306))

(assert (=> b!6258570 m!7081152))

(assert (=> b!6258583 m!7081154))

(assert (=> b!6258583 m!7081154))

(assert (=> b!6258583 m!7081156))

(declare-fun m!7081350 () Bool)

(assert (=> b!6258576 m!7081350))

(assert (=> d!1963517 m!7081150))

(assert (=> d!1963517 m!7081316))

(assert (=> b!6258573 m!7081152))

(assert (=> b!6258573 m!7081152))

(declare-fun m!7081352 () Bool)

(assert (=> b!6258573 m!7081352))

(assert (=> b!6258573 m!7081154))

(assert (=> b!6258573 m!7081352))

(assert (=> b!6258573 m!7081154))

(declare-fun m!7081354 () Bool)

(assert (=> b!6258573 m!7081354))

(assert (=> bm!528306 m!7081150))

(assert (=> b!6258571 m!7081154))

(assert (=> b!6258571 m!7081154))

(assert (=> b!6258571 m!7081156))

(assert (=> b!6258581 m!7081152))

(assert (=> b!6258029 d!1963517))

(declare-fun bs!1559035 () Bool)

(declare-fun d!1963519 () Bool)

(assert (= bs!1559035 (and d!1963519 d!1963427)))

(declare-fun lambda!342589 () Int)

(assert (=> bs!1559035 (= lambda!342589 lambda!342562)))

(declare-fun bs!1559036 () Bool)

(assert (= bs!1559036 (and d!1963519 d!1963505)))

(assert (=> bs!1559036 (= lambda!342589 lambda!342584)))

(declare-fun bs!1559037 () Bool)

(assert (= bs!1559037 (and d!1963519 d!1963507)))

(assert (=> bs!1559037 (= lambda!342589 lambda!342587)))

(declare-fun bs!1559038 () Bool)

(assert (= bs!1559038 (and d!1963519 d!1963515)))

(assert (=> bs!1559038 (= lambda!342589 lambda!342588)))

(declare-fun b!6258584 () Bool)

(declare-fun e!3807195 () Regex!16182)

(assert (=> b!6258584 (= e!3807195 (h!71169 lt!2349916))))

(declare-fun b!6258585 () Bool)

(declare-fun e!3807193 () Bool)

(declare-fun lt!2350098 () Regex!16182)

(assert (=> b!6258585 (= e!3807193 (isEmptyExpr!1588 lt!2350098))))

(declare-fun b!6258586 () Bool)

(declare-fun e!3807191 () Regex!16182)

(assert (=> b!6258586 (= e!3807191 (Concat!25027 (h!71169 lt!2349916) (generalisedConcat!1779 (t!378397 lt!2349916))))))

(declare-fun b!6258587 () Bool)

(assert (=> b!6258587 (= e!3807191 EmptyExpr!16182)))

(declare-fun b!6258588 () Bool)

(declare-fun e!3807194 () Bool)

(assert (=> b!6258588 (= e!3807193 e!3807194)))

(declare-fun c!1133197 () Bool)

(assert (=> b!6258588 (= c!1133197 (isEmpty!36748 (tail!11950 lt!2349916)))))

(declare-fun b!6258589 () Bool)

(declare-fun e!3807190 () Bool)

(assert (=> b!6258589 (= e!3807190 e!3807193)))

(declare-fun c!1133200 () Bool)

(assert (=> b!6258589 (= c!1133200 (isEmpty!36748 lt!2349916))))

(declare-fun b!6258590 () Bool)

(assert (=> b!6258590 (= e!3807195 e!3807191)))

(declare-fun c!1133198 () Bool)

(assert (=> b!6258590 (= c!1133198 (is-Cons!64721 lt!2349916))))

(declare-fun b!6258591 () Bool)

(assert (=> b!6258591 (= e!3807194 (isConcat!1111 lt!2350098))))

(assert (=> d!1963519 e!3807190))

(declare-fun res!2582826 () Bool)

(assert (=> d!1963519 (=> (not res!2582826) (not e!3807190))))

(assert (=> d!1963519 (= res!2582826 (validRegex!7918 lt!2350098))))

(assert (=> d!1963519 (= lt!2350098 e!3807195)))

(declare-fun c!1133199 () Bool)

(declare-fun e!3807192 () Bool)

(assert (=> d!1963519 (= c!1133199 e!3807192)))

(declare-fun res!2582825 () Bool)

(assert (=> d!1963519 (=> (not res!2582825) (not e!3807192))))

(assert (=> d!1963519 (= res!2582825 (is-Cons!64721 lt!2349916))))

(assert (=> d!1963519 (forall!15302 lt!2349916 lambda!342589)))

(assert (=> d!1963519 (= (generalisedConcat!1779 lt!2349916) lt!2350098)))

(declare-fun b!6258592 () Bool)

(assert (=> b!6258592 (= e!3807194 (= lt!2350098 (head!12865 lt!2349916)))))

(declare-fun b!6258593 () Bool)

(assert (=> b!6258593 (= e!3807192 (isEmpty!36748 (t!378397 lt!2349916)))))

(assert (= (and d!1963519 res!2582825) b!6258593))

(assert (= (and d!1963519 c!1133199) b!6258584))

(assert (= (and d!1963519 (not c!1133199)) b!6258590))

(assert (= (and b!6258590 c!1133198) b!6258586))

(assert (= (and b!6258590 (not c!1133198)) b!6258587))

(assert (= (and d!1963519 res!2582826) b!6258589))

(assert (= (and b!6258589 c!1133200) b!6258585))

(assert (= (and b!6258589 (not c!1133200)) b!6258588))

(assert (= (and b!6258588 c!1133197) b!6258592))

(assert (= (and b!6258588 (not c!1133197)) b!6258591))

(declare-fun m!7081356 () Bool)

(assert (=> d!1963519 m!7081356))

(declare-fun m!7081358 () Bool)

(assert (=> d!1963519 m!7081358))

(declare-fun m!7081360 () Bool)

(assert (=> b!6258592 m!7081360))

(declare-fun m!7081362 () Bool)

(assert (=> b!6258588 m!7081362))

(assert (=> b!6258588 m!7081362))

(declare-fun m!7081364 () Bool)

(assert (=> b!6258588 m!7081364))

(declare-fun m!7081366 () Bool)

(assert (=> b!6258589 m!7081366))

(declare-fun m!7081368 () Bool)

(assert (=> b!6258585 m!7081368))

(declare-fun m!7081370 () Bool)

(assert (=> b!6258586 m!7081370))

(declare-fun m!7081372 () Bool)

(assert (=> b!6258593 m!7081372))

(declare-fun m!7081374 () Bool)

(assert (=> b!6258591 m!7081374))

(assert (=> b!6258029 d!1963519))

(declare-fun bs!1559039 () Bool)

(declare-fun d!1963521 () Bool)

(assert (= bs!1559039 (and d!1963521 d!1963515)))

(declare-fun lambda!342592 () Int)

(assert (=> bs!1559039 (= lambda!342592 lambda!342588)))

(declare-fun bs!1559040 () Bool)

(assert (= bs!1559040 (and d!1963521 d!1963519)))

(assert (=> bs!1559040 (= lambda!342592 lambda!342589)))

(declare-fun bs!1559041 () Bool)

(assert (= bs!1559041 (and d!1963521 d!1963507)))

(assert (=> bs!1559041 (= lambda!342592 lambda!342587)))

(declare-fun bs!1559042 () Bool)

(assert (= bs!1559042 (and d!1963521 d!1963505)))

(assert (=> bs!1559042 (= lambda!342592 lambda!342584)))

(declare-fun bs!1559043 () Bool)

(assert (= bs!1559043 (and d!1963521 d!1963427)))

(assert (=> bs!1559043 (= lambda!342592 lambda!342562)))

(assert (=> d!1963521 (= (inv!83703 setElem!42557) (forall!15302 (exprs!6066 setElem!42557) lambda!342592))))

(declare-fun bs!1559044 () Bool)

(assert (= bs!1559044 d!1963521))

(declare-fun m!7081376 () Bool)

(assert (=> bs!1559044 m!7081376))

(assert (=> setNonEmpty!42557 d!1963521))

(declare-fun bs!1559045 () Bool)

(declare-fun d!1963523 () Bool)

(assert (= bs!1559045 (and d!1963523 d!1963515)))

(declare-fun lambda!342593 () Int)

(assert (=> bs!1559045 (= lambda!342593 lambda!342588)))

(declare-fun bs!1559046 () Bool)

(assert (= bs!1559046 (and d!1963523 d!1963521)))

(assert (=> bs!1559046 (= lambda!342593 lambda!342592)))

(declare-fun bs!1559047 () Bool)

(assert (= bs!1559047 (and d!1963523 d!1963519)))

(assert (=> bs!1559047 (= lambda!342593 lambda!342589)))

(declare-fun bs!1559048 () Bool)

(assert (= bs!1559048 (and d!1963523 d!1963507)))

(assert (=> bs!1559048 (= lambda!342593 lambda!342587)))

(declare-fun bs!1559049 () Bool)

(assert (= bs!1559049 (and d!1963523 d!1963505)))

(assert (=> bs!1559049 (= lambda!342593 lambda!342584)))

(declare-fun bs!1559050 () Bool)

(assert (= bs!1559050 (and d!1963523 d!1963427)))

(assert (=> bs!1559050 (= lambda!342593 lambda!342562)))

(assert (=> d!1963523 (= (inv!83703 (h!71170 zl!343)) (forall!15302 (exprs!6066 (h!71170 zl!343)) lambda!342593))))

(declare-fun bs!1559051 () Bool)

(assert (= bs!1559051 d!1963523))

(declare-fun m!7081378 () Bool)

(assert (=> bs!1559051 m!7081378))

(assert (=> b!6258050 d!1963523))

(declare-fun b!6258600 () Bool)

(assert (=> b!6258600 true))

(declare-fun bs!1559052 () Bool)

(declare-fun b!6258602 () Bool)

(assert (= bs!1559052 (and b!6258602 b!6258600)))

(declare-fun lambda!342602 () Int)

(declare-fun lt!2350108 () Int)

(declare-fun lambda!342601 () Int)

(declare-fun lt!2350110 () Int)

(assert (=> bs!1559052 (= (= lt!2350108 lt!2350110) (= lambda!342602 lambda!342601))))

(assert (=> b!6258602 true))

(declare-fun d!1963525 () Bool)

(declare-fun e!3807201 () Bool)

(assert (=> d!1963525 e!3807201))

(declare-fun res!2582829 () Bool)

(assert (=> d!1963525 (=> (not res!2582829) (not e!3807201))))

(assert (=> d!1963525 (= res!2582829 (>= lt!2350108 0))))

(declare-fun e!3807200 () Int)

(assert (=> d!1963525 (= lt!2350108 e!3807200)))

(declare-fun c!1133209 () Bool)

(assert (=> d!1963525 (= c!1133209 (is-Cons!64722 lt!2349930))))

(assert (=> d!1963525 (= (zipperDepth!307 lt!2349930) lt!2350108)))

(assert (=> b!6258600 (= e!3807200 lt!2350110)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!200 (Context!11132) Int)

(assert (=> b!6258600 (= lt!2350110 (maxBigInt!0 (contextDepth!200 (h!71170 lt!2349930)) (zipperDepth!307 (t!378398 lt!2349930))))))

(declare-fun lambda!342600 () Int)

(declare-fun lt!2350109 () Unit!158059)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!184 (List!64846 Int Int Int) Unit!158059)

(assert (=> b!6258600 (= lt!2350109 (lemmaForallContextDepthBiggerThanTransitive!184 (t!378398 lt!2349930) lt!2350110 (zipperDepth!307 (t!378398 lt!2349930)) lambda!342600))))

(declare-fun forall!15303 (List!64846 Int) Bool)

(assert (=> b!6258600 (forall!15303 (t!378398 lt!2349930) lambda!342601)))

(declare-fun lt!2350107 () Unit!158059)

(assert (=> b!6258600 (= lt!2350107 lt!2350109)))

(declare-fun b!6258601 () Bool)

(assert (=> b!6258601 (= e!3807200 0)))

(assert (=> b!6258602 (= e!3807201 (forall!15303 lt!2349930 lambda!342602))))

(assert (= (and d!1963525 c!1133209) b!6258600))

(assert (= (and d!1963525 (not c!1133209)) b!6258601))

(assert (= (and d!1963525 res!2582829) b!6258602))

(declare-fun m!7081380 () Bool)

(assert (=> b!6258600 m!7081380))

(declare-fun m!7081382 () Bool)

(assert (=> b!6258600 m!7081382))

(declare-fun m!7081384 () Bool)

(assert (=> b!6258600 m!7081384))

(declare-fun m!7081386 () Bool)

(assert (=> b!6258600 m!7081386))

(assert (=> b!6258600 m!7081384))

(assert (=> b!6258600 m!7081384))

(declare-fun m!7081388 () Bool)

(assert (=> b!6258600 m!7081388))

(assert (=> b!6258600 m!7081382))

(declare-fun m!7081390 () Bool)

(assert (=> b!6258602 m!7081390))

(assert (=> b!6258030 d!1963525))

(declare-fun bs!1559053 () Bool)

(declare-fun b!6258605 () Bool)

(assert (= bs!1559053 (and b!6258605 b!6258600)))

(declare-fun lambda!342603 () Int)

(assert (=> bs!1559053 (= lambda!342603 lambda!342600)))

(declare-fun lt!2350114 () Int)

(declare-fun lambda!342604 () Int)

(assert (=> bs!1559053 (= (= lt!2350114 lt!2350110) (= lambda!342604 lambda!342601))))

(declare-fun bs!1559054 () Bool)

(assert (= bs!1559054 (and b!6258605 b!6258602)))

(assert (=> bs!1559054 (= (= lt!2350114 lt!2350108) (= lambda!342604 lambda!342602))))

(assert (=> b!6258605 true))

(declare-fun bs!1559055 () Bool)

(declare-fun b!6258607 () Bool)

(assert (= bs!1559055 (and b!6258607 b!6258600)))

(declare-fun lt!2350112 () Int)

(declare-fun lambda!342605 () Int)

(assert (=> bs!1559055 (= (= lt!2350112 lt!2350110) (= lambda!342605 lambda!342601))))

(declare-fun bs!1559056 () Bool)

(assert (= bs!1559056 (and b!6258607 b!6258602)))

(assert (=> bs!1559056 (= (= lt!2350112 lt!2350108) (= lambda!342605 lambda!342602))))

(declare-fun bs!1559057 () Bool)

(assert (= bs!1559057 (and b!6258607 b!6258605)))

(assert (=> bs!1559057 (= (= lt!2350112 lt!2350114) (= lambda!342605 lambda!342604))))

(assert (=> b!6258607 true))

(declare-fun d!1963527 () Bool)

(declare-fun e!3807203 () Bool)

(assert (=> d!1963527 e!3807203))

(declare-fun res!2582830 () Bool)

(assert (=> d!1963527 (=> (not res!2582830) (not e!3807203))))

(assert (=> d!1963527 (= res!2582830 (>= lt!2350112 0))))

(declare-fun e!3807202 () Int)

(assert (=> d!1963527 (= lt!2350112 e!3807202)))

(declare-fun c!1133210 () Bool)

(assert (=> d!1963527 (= c!1133210 (is-Cons!64722 zl!343))))

(assert (=> d!1963527 (= (zipperDepth!307 zl!343) lt!2350112)))

(assert (=> b!6258605 (= e!3807202 lt!2350114)))

(assert (=> b!6258605 (= lt!2350114 (maxBigInt!0 (contextDepth!200 (h!71170 zl!343)) (zipperDepth!307 (t!378398 zl!343))))))

(declare-fun lt!2350113 () Unit!158059)

(assert (=> b!6258605 (= lt!2350113 (lemmaForallContextDepthBiggerThanTransitive!184 (t!378398 zl!343) lt!2350114 (zipperDepth!307 (t!378398 zl!343)) lambda!342603))))

(assert (=> b!6258605 (forall!15303 (t!378398 zl!343) lambda!342604)))

(declare-fun lt!2350111 () Unit!158059)

(assert (=> b!6258605 (= lt!2350111 lt!2350113)))

(declare-fun b!6258606 () Bool)

(assert (=> b!6258606 (= e!3807202 0)))

(assert (=> b!6258607 (= e!3807203 (forall!15303 zl!343 lambda!342605))))

(assert (= (and d!1963527 c!1133210) b!6258605))

(assert (= (and d!1963527 (not c!1133210)) b!6258606))

(assert (= (and d!1963527 res!2582830) b!6258607))

(declare-fun m!7081392 () Bool)

(assert (=> b!6258605 m!7081392))

(declare-fun m!7081394 () Bool)

(assert (=> b!6258605 m!7081394))

(declare-fun m!7081396 () Bool)

(assert (=> b!6258605 m!7081396))

(declare-fun m!7081398 () Bool)

(assert (=> b!6258605 m!7081398))

(assert (=> b!6258605 m!7081396))

(assert (=> b!6258605 m!7081396))

(declare-fun m!7081400 () Bool)

(assert (=> b!6258605 m!7081400))

(assert (=> b!6258605 m!7081394))

(declare-fun m!7081402 () Bool)

(assert (=> b!6258607 m!7081402))

(assert (=> b!6258030 d!1963527))

(declare-fun b!6258620 () Bool)

(declare-fun e!3807206 () Bool)

(declare-fun tp!1745932 () Bool)

(assert (=> b!6258620 (= e!3807206 tp!1745932)))

(declare-fun b!6258618 () Bool)

(assert (=> b!6258618 (= e!3807206 tp_is_empty!41617)))

(assert (=> b!6258037 (= tp!1745883 e!3807206)))

(declare-fun b!6258621 () Bool)

(declare-fun tp!1745931 () Bool)

(declare-fun tp!1745933 () Bool)

(assert (=> b!6258621 (= e!3807206 (and tp!1745931 tp!1745933))))

(declare-fun b!6258619 () Bool)

(declare-fun tp!1745930 () Bool)

(declare-fun tp!1745929 () Bool)

(assert (=> b!6258619 (= e!3807206 (and tp!1745930 tp!1745929))))

(assert (= (and b!6258037 (is-ElementMatch!16182 (reg!16511 r!7292))) b!6258618))

(assert (= (and b!6258037 (is-Concat!25027 (reg!16511 r!7292))) b!6258619))

(assert (= (and b!6258037 (is-Star!16182 (reg!16511 r!7292))) b!6258620))

(assert (= (and b!6258037 (is-Union!16182 (reg!16511 r!7292))) b!6258621))

(declare-fun b!6258626 () Bool)

(declare-fun e!3807209 () Bool)

(declare-fun tp!1745936 () Bool)

(assert (=> b!6258626 (= e!3807209 (and tp_is_empty!41617 tp!1745936))))

(assert (=> b!6258049 (= tp!1745887 e!3807209)))

(assert (= (and b!6258049 (is-Cons!64723 (t!378399 s!2326))) b!6258626))

(declare-fun b!6258629 () Bool)

(declare-fun e!3807210 () Bool)

(declare-fun tp!1745940 () Bool)

(assert (=> b!6258629 (= e!3807210 tp!1745940)))

(declare-fun b!6258627 () Bool)

(assert (=> b!6258627 (= e!3807210 tp_is_empty!41617)))

(assert (=> b!6258039 (= tp!1745886 e!3807210)))

(declare-fun b!6258630 () Bool)

(declare-fun tp!1745939 () Bool)

(declare-fun tp!1745941 () Bool)

(assert (=> b!6258630 (= e!3807210 (and tp!1745939 tp!1745941))))

(declare-fun b!6258628 () Bool)

(declare-fun tp!1745938 () Bool)

(declare-fun tp!1745937 () Bool)

(assert (=> b!6258628 (= e!3807210 (and tp!1745938 tp!1745937))))

(assert (= (and b!6258039 (is-ElementMatch!16182 (regOne!32876 r!7292))) b!6258627))

(assert (= (and b!6258039 (is-Concat!25027 (regOne!32876 r!7292))) b!6258628))

(assert (= (and b!6258039 (is-Star!16182 (regOne!32876 r!7292))) b!6258629))

(assert (= (and b!6258039 (is-Union!16182 (regOne!32876 r!7292))) b!6258630))

(declare-fun b!6258633 () Bool)

(declare-fun e!3807211 () Bool)

(declare-fun tp!1745945 () Bool)

(assert (=> b!6258633 (= e!3807211 tp!1745945)))

(declare-fun b!6258631 () Bool)

(assert (=> b!6258631 (= e!3807211 tp_is_empty!41617)))

(assert (=> b!6258039 (= tp!1745879 e!3807211)))

(declare-fun b!6258634 () Bool)

(declare-fun tp!1745944 () Bool)

(declare-fun tp!1745946 () Bool)

(assert (=> b!6258634 (= e!3807211 (and tp!1745944 tp!1745946))))

(declare-fun b!6258632 () Bool)

(declare-fun tp!1745943 () Bool)

(declare-fun tp!1745942 () Bool)

(assert (=> b!6258632 (= e!3807211 (and tp!1745943 tp!1745942))))

(assert (= (and b!6258039 (is-ElementMatch!16182 (regTwo!32876 r!7292))) b!6258631))

(assert (= (and b!6258039 (is-Concat!25027 (regTwo!32876 r!7292))) b!6258632))

(assert (= (and b!6258039 (is-Star!16182 (regTwo!32876 r!7292))) b!6258633))

(assert (= (and b!6258039 (is-Union!16182 (regTwo!32876 r!7292))) b!6258634))

(declare-fun condSetEmpty!42563 () Bool)

(assert (=> setNonEmpty!42557 (= condSetEmpty!42563 (= setRest!42557 (as set.empty (Set Context!11132))))))

(declare-fun setRes!42563 () Bool)

(assert (=> setNonEmpty!42557 (= tp!1745888 setRes!42563)))

(declare-fun setIsEmpty!42563 () Bool)

(assert (=> setIsEmpty!42563 setRes!42563))

(declare-fun setElem!42563 () Context!11132)

(declare-fun tp!1745951 () Bool)

(declare-fun setNonEmpty!42563 () Bool)

(declare-fun e!3807214 () Bool)

(assert (=> setNonEmpty!42563 (= setRes!42563 (and tp!1745951 (inv!83703 setElem!42563) e!3807214))))

(declare-fun setRest!42563 () (Set Context!11132))

(assert (=> setNonEmpty!42563 (= setRest!42557 (set.union (set.insert setElem!42563 (as set.empty (Set Context!11132))) setRest!42563))))

(declare-fun b!6258639 () Bool)

(declare-fun tp!1745952 () Bool)

(assert (=> b!6258639 (= e!3807214 tp!1745952)))

(assert (= (and setNonEmpty!42557 condSetEmpty!42563) setIsEmpty!42563))

(assert (= (and setNonEmpty!42557 (not condSetEmpty!42563)) setNonEmpty!42563))

(assert (= setNonEmpty!42563 b!6258639))

(declare-fun m!7081404 () Bool)

(assert (=> setNonEmpty!42563 m!7081404))

(declare-fun b!6258647 () Bool)

(declare-fun e!3807220 () Bool)

(declare-fun tp!1745957 () Bool)

(assert (=> b!6258647 (= e!3807220 tp!1745957)))

(declare-fun b!6258646 () Bool)

(declare-fun tp!1745958 () Bool)

(declare-fun e!3807219 () Bool)

(assert (=> b!6258646 (= e!3807219 (and (inv!83703 (h!71170 (t!378398 zl!343))) e!3807220 tp!1745958))))

(assert (=> b!6258050 (= tp!1745881 e!3807219)))

(assert (= b!6258646 b!6258647))

(assert (= (and b!6258050 (is-Cons!64722 (t!378398 zl!343))) b!6258646))

(declare-fun m!7081406 () Bool)

(assert (=> b!6258646 m!7081406))

(declare-fun b!6258650 () Bool)

(declare-fun e!3807221 () Bool)

(declare-fun tp!1745962 () Bool)

(assert (=> b!6258650 (= e!3807221 tp!1745962)))

(declare-fun b!6258648 () Bool)

(assert (=> b!6258648 (= e!3807221 tp_is_empty!41617)))

(assert (=> b!6258024 (= tp!1745882 e!3807221)))

(declare-fun b!6258651 () Bool)

(declare-fun tp!1745961 () Bool)

(declare-fun tp!1745963 () Bool)

(assert (=> b!6258651 (= e!3807221 (and tp!1745961 tp!1745963))))

(declare-fun b!6258649 () Bool)

(declare-fun tp!1745960 () Bool)

(declare-fun tp!1745959 () Bool)

(assert (=> b!6258649 (= e!3807221 (and tp!1745960 tp!1745959))))

(assert (= (and b!6258024 (is-ElementMatch!16182 (regOne!32877 r!7292))) b!6258648))

(assert (= (and b!6258024 (is-Concat!25027 (regOne!32877 r!7292))) b!6258649))

(assert (= (and b!6258024 (is-Star!16182 (regOne!32877 r!7292))) b!6258650))

(assert (= (and b!6258024 (is-Union!16182 (regOne!32877 r!7292))) b!6258651))

(declare-fun b!6258654 () Bool)

(declare-fun e!3807222 () Bool)

(declare-fun tp!1745967 () Bool)

(assert (=> b!6258654 (= e!3807222 tp!1745967)))

(declare-fun b!6258652 () Bool)

(assert (=> b!6258652 (= e!3807222 tp_is_empty!41617)))

(assert (=> b!6258024 (= tp!1745880 e!3807222)))

(declare-fun b!6258655 () Bool)

(declare-fun tp!1745966 () Bool)

(declare-fun tp!1745968 () Bool)

(assert (=> b!6258655 (= e!3807222 (and tp!1745966 tp!1745968))))

(declare-fun b!6258653 () Bool)

(declare-fun tp!1745965 () Bool)

(declare-fun tp!1745964 () Bool)

(assert (=> b!6258653 (= e!3807222 (and tp!1745965 tp!1745964))))

(assert (= (and b!6258024 (is-ElementMatch!16182 (regTwo!32877 r!7292))) b!6258652))

(assert (= (and b!6258024 (is-Concat!25027 (regTwo!32877 r!7292))) b!6258653))

(assert (= (and b!6258024 (is-Star!16182 (regTwo!32877 r!7292))) b!6258654))

(assert (= (and b!6258024 (is-Union!16182 (regTwo!32877 r!7292))) b!6258655))

(declare-fun b!6258660 () Bool)

(declare-fun e!3807225 () Bool)

(declare-fun tp!1745973 () Bool)

(declare-fun tp!1745974 () Bool)

(assert (=> b!6258660 (= e!3807225 (and tp!1745973 tp!1745974))))

(assert (=> b!6258055 (= tp!1745884 e!3807225)))

(assert (= (and b!6258055 (is-Cons!64721 (exprs!6066 setElem!42557))) b!6258660))

(declare-fun b!6258661 () Bool)

(declare-fun e!3807226 () Bool)

(declare-fun tp!1745975 () Bool)

(declare-fun tp!1745976 () Bool)

(assert (=> b!6258661 (= e!3807226 (and tp!1745975 tp!1745976))))

(assert (=> b!6258041 (= tp!1745885 e!3807226)))

(assert (= (and b!6258041 (is-Cons!64721 (exprs!6066 (h!71170 zl!343)))) b!6258661))

(declare-fun b_lambda!238187 () Bool)

(assert (= b_lambda!238183 (or b!6258047 b_lambda!238187)))

(declare-fun bs!1559058 () Bool)

(declare-fun d!1963529 () Bool)

(assert (= bs!1559058 (and d!1963529 b!6258047)))

(assert (=> bs!1559058 (= (dynLambda!25575 lambda!342544 lt!2349933) (derivationStepZipperUp!1356 lt!2349933 (h!71171 s!2326)))))

(assert (=> bs!1559058 m!7080780))

(assert (=> d!1963457 d!1963529))

(declare-fun b_lambda!238189 () Bool)

(assert (= b_lambda!238181 (or b!6258047 b_lambda!238189)))

(declare-fun bs!1559059 () Bool)

(declare-fun d!1963531 () Bool)

(assert (= bs!1559059 (and d!1963531 b!6258047)))

(assert (=> bs!1559059 (= (dynLambda!25575 lambda!342544 (h!71170 zl!343)) (derivationStepZipperUp!1356 (h!71170 zl!343) (h!71171 s!2326)))))

(assert (=> bs!1559059 m!7080818))

(assert (=> d!1963413 d!1963531))

(declare-fun b_lambda!238191 () Bool)

(assert (= b_lambda!238185 (or b!6258047 b_lambda!238191)))

(declare-fun bs!1559060 () Bool)

(declare-fun d!1963533 () Bool)

(assert (= bs!1559060 (and d!1963533 b!6258047)))

(assert (=> bs!1559060 (= (dynLambda!25575 lambda!342544 lt!2349932) (derivationStepZipperUp!1356 lt!2349932 (h!71171 s!2326)))))

(assert (=> bs!1559060 m!7080784))

(assert (=> d!1963479 d!1963533))

(push 1)

(assert (not d!1963513))

(assert (not b!6258628))

(assert (not b!6258654))

(assert (not bm!528306))

(assert (not d!1963413))

(assert (not b!6258246))

(assert (not b!6258477))

(assert (not b!6258417))

(assert (not d!1963493))

(assert (not b!6258286))

(assert (not d!1963437))

(assert (not b!6258459))

(assert (not b!6258456))

(assert (not d!1963451))

(assert (not d!1963489))

(assert (not d!1963523))

(assert (not b!6258576))

(assert (not d!1963517))

(assert (not b!6258312))

(assert (not b!6258292))

(assert (not bm!528250))

(assert (not b!6258634))

(assert (not d!1963449))

(assert (not b!6258460))

(assert (not b!6258592))

(assert (not d!1963509))

(assert (not b!6258498))

(assert (not b!6258412))

(assert (not b!6258285))

(assert (not b!6258630))

(assert (not d!1963469))

(assert (not d!1963463))

(assert (not b!6258509))

(assert (not d!1963445))

(assert (not bm!528284))

(assert (not b!6258468))

(assert (not b!6258473))

(assert (not b!6258602))

(assert (not b!6258570))

(assert (not b!6258463))

(assert (not bm!528275))

(assert (not bm!528304))

(assert (not b!6258370))

(assert (not bs!1559058))

(assert (not b!6258653))

(assert (not b!6258655))

(assert (not b!6258434))

(assert (not b!6258626))

(assert (not bm!528267))

(assert (not b!6258605))

(assert (not b!6258535))

(assert (not b!6258629))

(assert (not b!6258423))

(assert (not b!6258581))

(assert (not d!1963433))

(assert (not b!6258475))

(assert (not b!6258533))

(assert (not b!6258585))

(assert (not b!6258568))

(assert (not b!6258558))

(assert (not b!6258542))

(assert (not b!6258632))

(assert (not b!6258464))

(assert (not b!6258476))

(assert (not b!6258564))

(assert (not b!6258561))

(assert (not b!6258334))

(assert (not b!6258647))

(assert (not bs!1559060))

(assert (not b!6258551))

(assert (not b!6258291))

(assert (not b!6258661))

(assert (not d!1963429))

(assert (not bm!528280))

(assert (not b!6258431))

(assert (not b!6258461))

(assert (not b!6258236))

(assert (not b!6258316))

(assert (not b!6258469))

(assert (not b_lambda!238191))

(assert (not b!6258539))

(assert (not bm!528302))

(assert (not b!6258651))

(assert (not b!6258211))

(assert (not d!1963407))

(assert (not b!6258314))

(assert (not b!6258315))

(assert (not bm!528276))

(assert (not bm!528279))

(assert (not bm!528270))

(assert (not d!1963479))

(assert (not b!6258573))

(assert (not b!6258567))

(assert (not b!6258639))

(assert (not d!1963457))

(assert (not b!6258407))

(assert (not b!6258600))

(assert (not b!6258254))

(assert (not d!1963521))

(assert (not b!6258208))

(assert (not d!1963491))

(assert (not d!1963473))

(assert (not b!6258457))

(assert (not b!6258426))

(assert (not b!6258313))

(assert (not b!6258547))

(assert (not d!1963477))

(assert (not b!6258289))

(assert (not d!1963499))

(assert (not d!1963427))

(assert (not d!1963441))

(assert (not b_lambda!238189))

(assert (not setNonEmpty!42563))

(assert (not b!6258263))

(assert (not d!1963425))

(assert (not b!6258406))

(assert (not bm!528282))

(assert (not bm!528301))

(assert (not b!6258607))

(assert (not b!6258588))

(assert (not d!1963435))

(assert (not b!6258569))

(assert (not d!1963467))

(assert (not b!6258462))

(assert (not b!6258534))

(assert (not b!6258319))

(assert (not b!6258467))

(assert (not b!6258660))

(assert (not bm!528251))

(assert (not d!1963409))

(assert tp_is_empty!41617)

(assert (not b!6258203))

(assert (not b!6258646))

(assert (not b!6258293))

(assert (not b!6258466))

(assert (not b!6258650))

(assert (not b!6258591))

(assert (not b!6258586))

(assert (not bm!528290))

(assert (not b!6258571))

(assert (not b!6258565))

(assert (not b!6258474))

(assert (not b!6258649))

(assert (not d!1963431))

(assert (not d!1963465))

(assert (not bm!528281))

(assert (not d!1963483))

(assert (not d!1963475))

(assert (not d!1963487))

(assert (not d!1963471))

(assert (not d!1963447))

(assert (not b!6258472))

(assert (not b!6258619))

(assert (not b!6258589))

(assert (not b!6258458))

(assert (not b!6258419))

(assert (not b!6258445))

(assert (not d!1963515))

(assert (not d!1963519))

(assert (not d!1963507))

(assert (not bm!528285))

(assert (not b!6258428))

(assert (not b!6258465))

(assert (not b!6258409))

(assert (not b!6258288))

(assert (not d!1963505))

(assert (not b!6258368))

(assert (not b!6258621))

(assert (not b!6258633))

(assert (not b!6258262))

(assert (not b!6258559))

(assert (not b!6258536))

(assert (not b!6258562))

(assert (not b!6258206))

(assert (not bm!528305))

(assert (not b!6258593))

(assert (not b!6258620))

(assert (not b!6258583))

(assert (not d!1963485))

(assert (not b!6258256))

(assert (not b!6258538))

(assert (not bm!528264))

(assert (not b!6258511))

(assert (not b!6258249))

(assert (not d!1963439))

(assert (not b_lambda!238187))

(assert (not bs!1559059))

(assert (not bm!528266))

(assert (not bm!528291))

(assert (not bm!528288))

(assert (not b!6258333))

(assert (not d!1963481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

