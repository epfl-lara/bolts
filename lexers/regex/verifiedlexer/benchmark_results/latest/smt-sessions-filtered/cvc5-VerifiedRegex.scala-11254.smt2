; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!590718 () Bool)

(assert start!590718)

(declare-fun b!5741327 () Bool)

(assert (=> b!5741327 true))

(assert (=> b!5741327 true))

(declare-fun lambda!311477 () Int)

(declare-fun lambda!311476 () Int)

(assert (=> b!5741327 (not (= lambda!311477 lambda!311476))))

(assert (=> b!5741327 true))

(assert (=> b!5741327 true))

(declare-fun b!5741326 () Bool)

(assert (=> b!5741326 true))

(declare-fun b!5741290 () Bool)

(declare-fun res!2425072 () Bool)

(declare-fun e!3529100 () Bool)

(assert (=> b!5741290 (=> res!2425072 e!3529100)))

(declare-datatypes ((C!31778 0))(
  ( (C!31779 (val!25591 Int)) )
))
(declare-datatypes ((Regex!15754 0))(
  ( (ElementMatch!15754 (c!1013308 C!31778)) (Concat!24599 (regOne!32020 Regex!15754) (regTwo!32020 Regex!15754)) (EmptyExpr!15754) (Star!15754 (reg!16083 Regex!15754)) (EmptyLang!15754) (Union!15754 (regOne!32021 Regex!15754) (regTwo!32021 Regex!15754)) )
))
(declare-fun r!7292 () Regex!15754)

(assert (=> b!5741290 (= res!2425072 (or (is-EmptyExpr!15754 r!7292) (is-EmptyLang!15754 r!7292) (is-ElementMatch!15754 r!7292) (is-Union!15754 r!7292) (not (is-Concat!24599 r!7292))))))

(declare-fun b!5741291 () Bool)

(declare-fun res!2425084 () Bool)

(declare-fun e!3529101 () Bool)

(assert (=> b!5741291 (=> res!2425084 e!3529101)))

(declare-datatypes ((List!63561 0))(
  ( (Nil!63437) (Cons!63437 (h!69885 Regex!15754) (t!376889 List!63561)) )
))
(declare-datatypes ((Context!10276 0))(
  ( (Context!10277 (exprs!5638 List!63561)) )
))
(declare-fun lt!2285850 () Context!10276)

(declare-fun lt!2285840 () Regex!15754)

(declare-datatypes ((List!63562 0))(
  ( (Nil!63438) (Cons!63438 (h!69886 Context!10276) (t!376890 List!63562)) )
))
(declare-fun unfocusZipper!1496 (List!63562) Regex!15754)

(assert (=> b!5741291 (= res!2425084 (not (= (unfocusZipper!1496 (Cons!63438 lt!2285850 Nil!63438)) lt!2285840)))))

(declare-fun b!5741292 () Bool)

(declare-fun res!2425090 () Bool)

(assert (=> b!5741292 (=> res!2425090 e!3529100)))

(declare-fun zl!343 () List!63562)

(declare-fun generalisedUnion!1617 (List!63561) Regex!15754)

(declare-fun unfocusZipperList!1182 (List!63562) List!63561)

(assert (=> b!5741292 (= res!2425090 (not (= r!7292 (generalisedUnion!1617 (unfocusZipperList!1182 zl!343)))))))

(declare-fun setIsEmpty!38542 () Bool)

(declare-fun setRes!38542 () Bool)

(assert (=> setIsEmpty!38542 setRes!38542))

(declare-fun b!5741293 () Bool)

(declare-fun e!3529108 () Bool)

(declare-fun e!3529110 () Bool)

(assert (=> b!5741293 (= e!3529108 e!3529110)))

(declare-fun res!2425077 () Bool)

(assert (=> b!5741293 (=> res!2425077 e!3529110)))

(declare-datatypes ((List!63563 0))(
  ( (Nil!63439) (Cons!63439 (h!69887 C!31778) (t!376891 List!63563)) )
))
(declare-fun s!2326 () List!63563)

(declare-fun lt!2285828 () (Set Context!10276))

(declare-fun lt!2285833 () (Set Context!10276))

(declare-fun derivationStepZipper!1837 ((Set Context!10276) C!31778) (Set Context!10276))

(assert (=> b!5741293 (= res!2425077 (not (= lt!2285828 (derivationStepZipper!1837 lt!2285833 (h!69887 s!2326)))))))

(declare-fun lambda!311478 () Int)

(declare-fun lt!2285854 () Context!10276)

(declare-fun flatMap!1367 ((Set Context!10276) Int) (Set Context!10276))

(declare-fun derivationStepZipperUp!1022 (Context!10276 C!31778) (Set Context!10276))

(assert (=> b!5741293 (= (flatMap!1367 lt!2285833 lambda!311478) (derivationStepZipperUp!1022 lt!2285854 (h!69887 s!2326)))))

(declare-datatypes ((Unit!156548 0))(
  ( (Unit!156549) )
))
(declare-fun lt!2285827 () Unit!156548)

(declare-fun lemmaFlatMapOnSingletonSet!899 ((Set Context!10276) Context!10276 Int) Unit!156548)

(assert (=> b!5741293 (= lt!2285827 (lemmaFlatMapOnSingletonSet!899 lt!2285833 lt!2285854 lambda!311478))))

(assert (=> b!5741293 (= lt!2285833 (set.insert lt!2285854 (as set.empty (Set Context!10276))))))

(declare-fun res!2425102 () Bool)

(declare-fun e!3529102 () Bool)

(assert (=> start!590718 (=> (not res!2425102) (not e!3529102))))

(declare-fun validRegex!7490 (Regex!15754) Bool)

(assert (=> start!590718 (= res!2425102 (validRegex!7490 r!7292))))

(assert (=> start!590718 e!3529102))

(declare-fun e!3529118 () Bool)

(assert (=> start!590718 e!3529118))

(declare-fun condSetEmpty!38542 () Bool)

(declare-fun z!1189 () (Set Context!10276))

(assert (=> start!590718 (= condSetEmpty!38542 (= z!1189 (as set.empty (Set Context!10276))))))

(assert (=> start!590718 setRes!38542))

(declare-fun e!3529116 () Bool)

(assert (=> start!590718 e!3529116))

(declare-fun e!3529099 () Bool)

(assert (=> start!590718 e!3529099))

(declare-fun b!5741294 () Bool)

(declare-fun res!2425078 () Bool)

(declare-fun e!3529113 () Bool)

(assert (=> b!5741294 (=> res!2425078 e!3529113)))

(declare-fun e!3529115 () Bool)

(assert (=> b!5741294 (= res!2425078 e!3529115)))

(declare-fun res!2425081 () Bool)

(assert (=> b!5741294 (=> (not res!2425081) (not e!3529115))))

(assert (=> b!5741294 (= res!2425081 (is-Concat!24599 (regOne!32020 r!7292)))))

(declare-fun b!5741295 () Bool)

(declare-fun tp!1587492 () Bool)

(declare-fun tp!1587483 () Bool)

(assert (=> b!5741295 (= e!3529118 (and tp!1587492 tp!1587483))))

(declare-fun b!5741296 () Bool)

(declare-fun e!3529104 () Unit!156548)

(declare-fun Unit!156550 () Unit!156548)

(assert (=> b!5741296 (= e!3529104 Unit!156550)))

(declare-fun b!5741297 () Bool)

(declare-fun e!3529107 () Bool)

(assert (=> b!5741297 (= e!3529113 e!3529107)))

(declare-fun res!2425073 () Bool)

(assert (=> b!5741297 (=> res!2425073 e!3529107)))

(declare-fun lt!2285838 () (Set Context!10276))

(declare-fun lt!2285856 () (Set Context!10276))

(assert (=> b!5741297 (= res!2425073 (not (= lt!2285838 lt!2285856)))))

(declare-fun derivationStepZipperDown!1096 (Regex!15754 Context!10276 C!31778) (Set Context!10276))

(assert (=> b!5741297 (= lt!2285856 (derivationStepZipperDown!1096 (reg!16083 (regOne!32020 r!7292)) lt!2285850 (h!69887 s!2326)))))

(declare-fun lt!2285829 () List!63561)

(assert (=> b!5741297 (= lt!2285850 (Context!10277 lt!2285829))))

(declare-fun lt!2285841 () Regex!15754)

(assert (=> b!5741297 (= lt!2285829 (Cons!63437 lt!2285841 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> b!5741297 (= lt!2285841 (Star!15754 (reg!16083 (regOne!32020 r!7292))))))

(declare-fun e!3529109 () Bool)

(declare-fun tp!1587489 () Bool)

(declare-fun b!5741298 () Bool)

(declare-fun inv!82633 (Context!10276) Bool)

(assert (=> b!5741298 (= e!3529116 (and (inv!82633 (h!69886 zl!343)) e!3529109 tp!1587489))))

(declare-fun b!5741299 () Bool)

(declare-fun e!3529119 () Bool)

(assert (=> b!5741299 (= e!3529119 (not e!3529100))))

(declare-fun res!2425091 () Bool)

(assert (=> b!5741299 (=> res!2425091 e!3529100)))

(assert (=> b!5741299 (= res!2425091 (not (is-Cons!63438 zl!343)))))

(declare-fun lt!2285837 () Bool)

(declare-fun matchRSpec!2857 (Regex!15754 List!63563) Bool)

(assert (=> b!5741299 (= lt!2285837 (matchRSpec!2857 r!7292 s!2326))))

(declare-fun matchR!7939 (Regex!15754 List!63563) Bool)

(assert (=> b!5741299 (= lt!2285837 (matchR!7939 r!7292 s!2326))))

(declare-fun lt!2285853 () Unit!156548)

(declare-fun mainMatchTheorem!2857 (Regex!15754 List!63563) Unit!156548)

(assert (=> b!5741299 (= lt!2285853 (mainMatchTheorem!2857 r!7292 s!2326))))

(declare-fun b!5741300 () Bool)

(declare-fun e!3529111 () Bool)

(declare-fun e!3529120 () Bool)

(assert (=> b!5741300 (= e!3529111 e!3529120)))

(declare-fun res!2425096 () Bool)

(assert (=> b!5741300 (=> res!2425096 e!3529120)))

(assert (=> b!5741300 (= res!2425096 (not (= r!7292 lt!2285840)))))

(assert (=> b!5741300 (= lt!2285840 (Concat!24599 lt!2285841 (regTwo!32020 r!7292)))))

(declare-fun b!5741301 () Bool)

(declare-fun res!2425074 () Bool)

(assert (=> b!5741301 (=> (not res!2425074) (not e!3529102))))

(declare-fun toList!9538 ((Set Context!10276)) List!63562)

(assert (=> b!5741301 (= res!2425074 (= (toList!9538 z!1189) zl!343))))

(declare-fun b!5741302 () Bool)

(declare-fun e!3529105 () Bool)

(declare-fun matchZipper!1892 ((Set Context!10276) List!63563) Bool)

(assert (=> b!5741302 (= e!3529105 (not (matchZipper!1892 lt!2285828 (t!376891 s!2326))))))

(declare-fun b!5741303 () Bool)

(declare-fun res!2425087 () Bool)

(declare-fun e!3529117 () Bool)

(assert (=> b!5741303 (=> res!2425087 e!3529117)))

(declare-fun lt!2285844 () Bool)

(assert (=> b!5741303 (= res!2425087 (not lt!2285844))))

(declare-fun b!5741304 () Bool)

(declare-fun tp_is_empty!40761 () Bool)

(declare-fun tp!1587484 () Bool)

(assert (=> b!5741304 (= e!3529099 (and tp_is_empty!40761 tp!1587484))))

(declare-fun b!5741305 () Bool)

(declare-fun nullable!5786 (Regex!15754) Bool)

(assert (=> b!5741305 (= e!3529115 (nullable!5786 (regOne!32020 (regOne!32020 r!7292))))))

(declare-fun b!5741306 () Bool)

(declare-fun e!3529114 () Bool)

(assert (=> b!5741306 (= e!3529114 e!3529101)))

(declare-fun res!2425079 () Bool)

(assert (=> b!5741306 (=> res!2425079 e!3529101)))

(declare-fun lt!2285860 () Context!10276)

(assert (=> b!5741306 (= res!2425079 (not (= (unfocusZipper!1496 (Cons!63438 lt!2285860 Nil!63438)) (reg!16083 (regOne!32020 r!7292)))))))

(declare-fun lt!2285849 () (Set Context!10276))

(assert (=> b!5741306 (= (flatMap!1367 lt!2285849 lambda!311478) (derivationStepZipperUp!1022 lt!2285850 (h!69887 s!2326)))))

(declare-fun lt!2285839 () Unit!156548)

(assert (=> b!5741306 (= lt!2285839 (lemmaFlatMapOnSingletonSet!899 lt!2285849 lt!2285850 lambda!311478))))

(declare-fun lt!2285842 () (Set Context!10276))

(assert (=> b!5741306 (= (flatMap!1367 lt!2285842 lambda!311478) (derivationStepZipperUp!1022 lt!2285860 (h!69887 s!2326)))))

(declare-fun lt!2285831 () Unit!156548)

(assert (=> b!5741306 (= lt!2285831 (lemmaFlatMapOnSingletonSet!899 lt!2285842 lt!2285860 lambda!311478))))

(declare-fun lt!2285858 () (Set Context!10276))

(assert (=> b!5741306 (= lt!2285858 (derivationStepZipperUp!1022 lt!2285850 (h!69887 s!2326)))))

(declare-fun lt!2285836 () (Set Context!10276))

(assert (=> b!5741306 (= lt!2285836 (derivationStepZipperUp!1022 lt!2285860 (h!69887 s!2326)))))

(assert (=> b!5741306 (= lt!2285849 (set.insert lt!2285850 (as set.empty (Set Context!10276))))))

(assert (=> b!5741306 (= lt!2285842 (set.insert lt!2285860 (as set.empty (Set Context!10276))))))

(assert (=> b!5741306 (= lt!2285860 (Context!10277 (Cons!63437 (reg!16083 (regOne!32020 r!7292)) Nil!63437)))))

(declare-fun b!5741307 () Bool)

(assert (=> b!5741307 (= e!3529118 tp_is_empty!40761)))

(declare-fun b!5741308 () Bool)

(declare-fun tp!1587485 () Bool)

(declare-fun tp!1587488 () Bool)

(assert (=> b!5741308 (= e!3529118 (and tp!1587485 tp!1587488))))

(declare-fun b!5741309 () Bool)

(assert (=> b!5741309 (= e!3529102 e!3529119)))

(declare-fun res!2425089 () Bool)

(assert (=> b!5741309 (=> (not res!2425089) (not e!3529119))))

(declare-fun lt!2285834 () Regex!15754)

(assert (=> b!5741309 (= res!2425089 (= r!7292 lt!2285834))))

(assert (=> b!5741309 (= lt!2285834 (unfocusZipper!1496 zl!343))))

(declare-fun b!5741310 () Bool)

(declare-fun res!2425086 () Bool)

(declare-fun e!3529106 () Bool)

(assert (=> b!5741310 (=> res!2425086 e!3529106)))

(declare-fun isEmpty!35319 (List!63561) Bool)

(assert (=> b!5741310 (= res!2425086 (isEmpty!35319 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741311 () Bool)

(declare-fun Unit!156551 () Unit!156548)

(assert (=> b!5741311 (= e!3529104 Unit!156551)))

(declare-fun lt!2285835 () Unit!156548)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!779 ((Set Context!10276) (Set Context!10276) List!63563) Unit!156548)

(assert (=> b!5741311 (= lt!2285835 (lemmaZipperConcatMatchesSameAsBothZippers!779 lt!2285838 lt!2285828 (t!376891 s!2326)))))

(declare-fun res!2425095 () Bool)

(assert (=> b!5741311 (= res!2425095 (matchZipper!1892 lt!2285838 (t!376891 s!2326)))))

(declare-fun e!3529112 () Bool)

(assert (=> b!5741311 (=> res!2425095 e!3529112)))

(assert (=> b!5741311 (= (matchZipper!1892 (set.union lt!2285838 lt!2285828) (t!376891 s!2326)) e!3529112)))

(declare-fun b!5741312 () Bool)

(assert (=> b!5741312 (= e!3529112 (matchZipper!1892 lt!2285828 (t!376891 s!2326)))))

(declare-fun b!5741313 () Bool)

(declare-fun res!2425083 () Bool)

(assert (=> b!5741313 (=> res!2425083 e!3529100)))

(declare-fun generalisedConcat!1369 (List!63561) Regex!15754)

(assert (=> b!5741313 (= res!2425083 (not (= r!7292 (generalisedConcat!1369 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741314 () Bool)

(declare-fun res!2425098 () Bool)

(assert (=> b!5741314 (=> res!2425098 e!3529108)))

(declare-fun lt!2285852 () Bool)

(assert (=> b!5741314 (= res!2425098 lt!2285852)))

(declare-fun b!5741315 () Bool)

(declare-fun regexDepth!231 (Regex!15754) Int)

(assert (=> b!5741315 (= e!3529110 (>= (regexDepth!231 r!7292) (regexDepth!231 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343)))))))))

(declare-fun b!5741316 () Bool)

(declare-fun res!2425082 () Bool)

(assert (=> b!5741316 (=> res!2425082 e!3529111)))

(assert (=> b!5741316 (= res!2425082 (not (= lt!2285834 r!7292)))))

(declare-fun b!5741317 () Bool)

(declare-fun res!2425099 () Bool)

(assert (=> b!5741317 (=> res!2425099 e!3529117)))

(assert (=> b!5741317 (= res!2425099 (not (matchZipper!1892 z!1189 s!2326)))))

(declare-fun setElem!38542 () Context!10276)

(declare-fun e!3529103 () Bool)

(declare-fun setNonEmpty!38542 () Bool)

(declare-fun tp!1587491 () Bool)

(assert (=> setNonEmpty!38542 (= setRes!38542 (and tp!1587491 (inv!82633 setElem!38542) e!3529103))))

(declare-fun setRest!38542 () (Set Context!10276))

(assert (=> setNonEmpty!38542 (= z!1189 (set.union (set.insert setElem!38542 (as set.empty (Set Context!10276))) setRest!38542))))

(declare-fun b!5741318 () Bool)

(declare-fun res!2425075 () Bool)

(assert (=> b!5741318 (=> res!2425075 e!3529111)))

(declare-fun lt!2285845 () (Set Context!10276))

(declare-fun lt!2285851 () (Set Context!10276))

(assert (=> b!5741318 (= res!2425075 (not (= (matchZipper!1892 lt!2285845 s!2326) (matchZipper!1892 lt!2285851 (t!376891 s!2326)))))))

(declare-fun b!5741319 () Bool)

(declare-fun tp!1587486 () Bool)

(assert (=> b!5741319 (= e!3529103 tp!1587486)))

(declare-fun b!5741320 () Bool)

(assert (=> b!5741320 (= e!3529107 e!3529111)))

(declare-fun res!2425088 () Bool)

(assert (=> b!5741320 (=> res!2425088 e!3529111)))

(assert (=> b!5741320 (= res!2425088 (not (= lt!2285851 lt!2285856)))))

(declare-fun lt!2285859 () Context!10276)

(assert (=> b!5741320 (= (flatMap!1367 lt!2285845 lambda!311478) (derivationStepZipperUp!1022 lt!2285859 (h!69887 s!2326)))))

(declare-fun lt!2285848 () Unit!156548)

(assert (=> b!5741320 (= lt!2285848 (lemmaFlatMapOnSingletonSet!899 lt!2285845 lt!2285859 lambda!311478))))

(declare-fun lt!2285843 () (Set Context!10276))

(assert (=> b!5741320 (= lt!2285843 (derivationStepZipperUp!1022 lt!2285859 (h!69887 s!2326)))))

(assert (=> b!5741320 (= lt!2285851 (derivationStepZipper!1837 lt!2285845 (h!69887 s!2326)))))

(assert (=> b!5741320 (= lt!2285845 (set.insert lt!2285859 (as set.empty (Set Context!10276))))))

(assert (=> b!5741320 (= lt!2285859 (Context!10277 (Cons!63437 (reg!16083 (regOne!32020 r!7292)) lt!2285829)))))

(declare-fun b!5741321 () Bool)

(declare-fun res!2425094 () Bool)

(assert (=> b!5741321 (=> res!2425094 e!3529100)))

(declare-fun isEmpty!35320 (List!63562) Bool)

(assert (=> b!5741321 (= res!2425094 (not (isEmpty!35320 (t!376890 zl!343))))))

(declare-fun b!5741322 () Bool)

(assert (=> b!5741322 (= e!3529120 e!3529114)))

(declare-fun res!2425101 () Bool)

(assert (=> b!5741322 (=> res!2425101 e!3529114)))

(declare-fun lt!2285846 () Regex!15754)

(assert (=> b!5741322 (= res!2425101 (not (= (unfocusZipper!1496 (Cons!63438 lt!2285859 Nil!63438)) lt!2285846)))))

(assert (=> b!5741322 (= lt!2285846 (Concat!24599 (reg!16083 (regOne!32020 r!7292)) lt!2285840))))

(declare-fun b!5741323 () Bool)

(declare-fun res!2425080 () Bool)

(assert (=> b!5741323 (=> res!2425080 e!3529100)))

(assert (=> b!5741323 (= res!2425080 (not (is-Cons!63437 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741324 () Bool)

(declare-fun tp!1587487 () Bool)

(assert (=> b!5741324 (= e!3529118 tp!1587487)))

(declare-fun b!5741325 () Bool)

(assert (=> b!5741325 (= e!3529117 e!3529108)))

(declare-fun res!2425092 () Bool)

(assert (=> b!5741325 (=> res!2425092 e!3529108)))

(assert (=> b!5741325 (= res!2425092 e!3529105)))

(declare-fun res!2425103 () Bool)

(assert (=> b!5741325 (=> (not res!2425103) (not e!3529105))))

(assert (=> b!5741325 (= res!2425103 (not lt!2285852))))

(assert (=> b!5741325 (= lt!2285852 (matchZipper!1892 lt!2285838 (t!376891 s!2326)))))

(assert (=> b!5741326 (= e!3529106 e!3529113)))

(declare-fun res!2425097 () Bool)

(assert (=> b!5741326 (=> res!2425097 e!3529113)))

(assert (=> b!5741326 (= res!2425097 (or (and (is-ElementMatch!15754 (regOne!32020 r!7292)) (= (c!1013308 (regOne!32020 r!7292)) (h!69887 s!2326))) (is-Union!15754 (regOne!32020 r!7292))))))

(declare-fun lt!2285830 () Unit!156548)

(assert (=> b!5741326 (= lt!2285830 e!3529104)))

(declare-fun c!1013307 () Bool)

(assert (=> b!5741326 (= c!1013307 lt!2285844)))

(assert (=> b!5741326 (= lt!2285844 (nullable!5786 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> b!5741326 (= (flatMap!1367 z!1189 lambda!311478) (derivationStepZipperUp!1022 (h!69886 zl!343) (h!69887 s!2326)))))

(declare-fun lt!2285862 () Unit!156548)

(assert (=> b!5741326 (= lt!2285862 (lemmaFlatMapOnSingletonSet!899 z!1189 (h!69886 zl!343) lambda!311478))))

(assert (=> b!5741326 (= lt!2285828 (derivationStepZipperUp!1022 lt!2285854 (h!69887 s!2326)))))

(assert (=> b!5741326 (= lt!2285838 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 (h!69886 zl!343))) lt!2285854 (h!69887 s!2326)))))

(assert (=> b!5741326 (= lt!2285854 (Context!10277 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun lt!2285847 () (Set Context!10276))

(assert (=> b!5741326 (= lt!2285847 (derivationStepZipperUp!1022 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343))))) (h!69887 s!2326)))))

(assert (=> b!5741327 (= e!3529100 e!3529106)))

(declare-fun res!2425076 () Bool)

(assert (=> b!5741327 (=> res!2425076 e!3529106)))

(declare-fun lt!2285861 () Bool)

(assert (=> b!5741327 (= res!2425076 (or (not (= lt!2285837 lt!2285861)) (is-Nil!63439 s!2326)))))

(declare-fun Exists!2854 (Int) Bool)

(assert (=> b!5741327 (= (Exists!2854 lambda!311476) (Exists!2854 lambda!311477))))

(declare-fun lt!2285855 () Unit!156548)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1483 (Regex!15754 Regex!15754 List!63563) Unit!156548)

(assert (=> b!5741327 (= lt!2285855 (lemmaExistCutMatchRandMatchRSpecEquivalent!1483 (regOne!32020 r!7292) (regTwo!32020 r!7292) s!2326))))

(assert (=> b!5741327 (= lt!2285861 (Exists!2854 lambda!311476))))

(declare-datatypes ((tuple2!65702 0))(
  ( (tuple2!65703 (_1!36154 List!63563) (_2!36154 List!63563)) )
))
(declare-datatypes ((Option!15763 0))(
  ( (None!15762) (Some!15762 (v!51817 tuple2!65702)) )
))
(declare-fun isDefined!12466 (Option!15763) Bool)

(declare-fun findConcatSeparation!2177 (Regex!15754 Regex!15754 List!63563 List!63563 List!63563) Option!15763)

(assert (=> b!5741327 (= lt!2285861 (isDefined!12466 (findConcatSeparation!2177 (regOne!32020 r!7292) (regTwo!32020 r!7292) Nil!63439 s!2326 s!2326)))))

(declare-fun lt!2285857 () Unit!156548)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1941 (Regex!15754 Regex!15754 List!63563) Unit!156548)

(assert (=> b!5741327 (= lt!2285857 (lemmaFindConcatSeparationEquivalentToExists!1941 (regOne!32020 r!7292) (regTwo!32020 r!7292) s!2326))))

(declare-fun b!5741328 () Bool)

(declare-fun tp!1587490 () Bool)

(assert (=> b!5741328 (= e!3529109 tp!1587490)))

(declare-fun b!5741329 () Bool)

(assert (=> b!5741329 (= e!3529101 e!3529117)))

(declare-fun res!2425085 () Bool)

(assert (=> b!5741329 (=> res!2425085 e!3529117)))

(assert (=> b!5741329 (= res!2425085 lt!2285837)))

(assert (=> b!5741329 (= (matchR!7939 lt!2285846 s!2326) (matchRSpec!2857 lt!2285846 s!2326))))

(declare-fun lt!2285832 () Unit!156548)

(assert (=> b!5741329 (= lt!2285832 (mainMatchTheorem!2857 lt!2285846 s!2326))))

(declare-fun b!5741330 () Bool)

(declare-fun res!2425100 () Bool)

(assert (=> b!5741330 (=> res!2425100 e!3529108)))

(assert (=> b!5741330 (= res!2425100 (not (matchZipper!1892 lt!2285828 (t!376891 s!2326))))))

(declare-fun b!5741331 () Bool)

(declare-fun res!2425093 () Bool)

(assert (=> b!5741331 (=> res!2425093 e!3529113)))

(assert (=> b!5741331 (= res!2425093 (or (is-Concat!24599 (regOne!32020 r!7292)) (not (is-Star!15754 (regOne!32020 r!7292)))))))

(assert (= (and start!590718 res!2425102) b!5741301))

(assert (= (and b!5741301 res!2425074) b!5741309))

(assert (= (and b!5741309 res!2425089) b!5741299))

(assert (= (and b!5741299 (not res!2425091)) b!5741321))

(assert (= (and b!5741321 (not res!2425094)) b!5741313))

(assert (= (and b!5741313 (not res!2425083)) b!5741323))

(assert (= (and b!5741323 (not res!2425080)) b!5741292))

(assert (= (and b!5741292 (not res!2425090)) b!5741290))

(assert (= (and b!5741290 (not res!2425072)) b!5741327))

(assert (= (and b!5741327 (not res!2425076)) b!5741310))

(assert (= (and b!5741310 (not res!2425086)) b!5741326))

(assert (= (and b!5741326 c!1013307) b!5741311))

(assert (= (and b!5741326 (not c!1013307)) b!5741296))

(assert (= (and b!5741311 (not res!2425095)) b!5741312))

(assert (= (and b!5741326 (not res!2425097)) b!5741294))

(assert (= (and b!5741294 res!2425081) b!5741305))

(assert (= (and b!5741294 (not res!2425078)) b!5741331))

(assert (= (and b!5741331 (not res!2425093)) b!5741297))

(assert (= (and b!5741297 (not res!2425073)) b!5741320))

(assert (= (and b!5741320 (not res!2425088)) b!5741318))

(assert (= (and b!5741318 (not res!2425075)) b!5741316))

(assert (= (and b!5741316 (not res!2425082)) b!5741300))

(assert (= (and b!5741300 (not res!2425096)) b!5741322))

(assert (= (and b!5741322 (not res!2425101)) b!5741306))

(assert (= (and b!5741306 (not res!2425079)) b!5741291))

(assert (= (and b!5741291 (not res!2425084)) b!5741329))

(assert (= (and b!5741329 (not res!2425085)) b!5741317))

(assert (= (and b!5741317 (not res!2425099)) b!5741303))

(assert (= (and b!5741303 (not res!2425087)) b!5741325))

(assert (= (and b!5741325 res!2425103) b!5741302))

(assert (= (and b!5741325 (not res!2425092)) b!5741314))

(assert (= (and b!5741314 (not res!2425098)) b!5741330))

(assert (= (and b!5741330 (not res!2425100)) b!5741293))

(assert (= (and b!5741293 (not res!2425077)) b!5741315))

(assert (= (and start!590718 (is-ElementMatch!15754 r!7292)) b!5741307))

(assert (= (and start!590718 (is-Concat!24599 r!7292)) b!5741308))

(assert (= (and start!590718 (is-Star!15754 r!7292)) b!5741324))

(assert (= (and start!590718 (is-Union!15754 r!7292)) b!5741295))

(assert (= (and start!590718 condSetEmpty!38542) setIsEmpty!38542))

(assert (= (and start!590718 (not condSetEmpty!38542)) setNonEmpty!38542))

(assert (= setNonEmpty!38542 b!5741319))

(assert (= b!5741298 b!5741328))

(assert (= (and start!590718 (is-Cons!63438 zl!343)) b!5741298))

(assert (= (and start!590718 (is-Cons!63439 s!2326)) b!5741304))

(declare-fun m!6693138 () Bool)

(assert (=> b!5741292 m!6693138))

(assert (=> b!5741292 m!6693138))

(declare-fun m!6693140 () Bool)

(assert (=> b!5741292 m!6693140))

(declare-fun m!6693142 () Bool)

(assert (=> b!5741312 m!6693142))

(declare-fun m!6693144 () Bool)

(assert (=> b!5741322 m!6693144))

(declare-fun m!6693146 () Bool)

(assert (=> b!5741311 m!6693146))

(declare-fun m!6693148 () Bool)

(assert (=> b!5741311 m!6693148))

(declare-fun m!6693150 () Bool)

(assert (=> b!5741311 m!6693150))

(declare-fun m!6693152 () Bool)

(assert (=> b!5741315 m!6693152))

(declare-fun m!6693154 () Bool)

(assert (=> b!5741315 m!6693154))

(assert (=> b!5741315 m!6693154))

(declare-fun m!6693156 () Bool)

(assert (=> b!5741315 m!6693156))

(declare-fun m!6693158 () Bool)

(assert (=> b!5741329 m!6693158))

(declare-fun m!6693160 () Bool)

(assert (=> b!5741329 m!6693160))

(declare-fun m!6693162 () Bool)

(assert (=> b!5741329 m!6693162))

(declare-fun m!6693164 () Bool)

(assert (=> setNonEmpty!38542 m!6693164))

(declare-fun m!6693166 () Bool)

(assert (=> b!5741306 m!6693166))

(declare-fun m!6693168 () Bool)

(assert (=> b!5741306 m!6693168))

(declare-fun m!6693170 () Bool)

(assert (=> b!5741306 m!6693170))

(declare-fun m!6693172 () Bool)

(assert (=> b!5741306 m!6693172))

(declare-fun m!6693174 () Bool)

(assert (=> b!5741306 m!6693174))

(declare-fun m!6693176 () Bool)

(assert (=> b!5741306 m!6693176))

(declare-fun m!6693178 () Bool)

(assert (=> b!5741306 m!6693178))

(declare-fun m!6693180 () Bool)

(assert (=> b!5741306 m!6693180))

(declare-fun m!6693182 () Bool)

(assert (=> b!5741306 m!6693182))

(declare-fun m!6693184 () Bool)

(assert (=> b!5741326 m!6693184))

(declare-fun m!6693186 () Bool)

(assert (=> b!5741326 m!6693186))

(declare-fun m!6693188 () Bool)

(assert (=> b!5741326 m!6693188))

(declare-fun m!6693190 () Bool)

(assert (=> b!5741326 m!6693190))

(declare-fun m!6693192 () Bool)

(assert (=> b!5741326 m!6693192))

(declare-fun m!6693194 () Bool)

(assert (=> b!5741326 m!6693194))

(declare-fun m!6693196 () Bool)

(assert (=> b!5741326 m!6693196))

(declare-fun m!6693198 () Bool)

(assert (=> b!5741317 m!6693198))

(assert (=> b!5741330 m!6693142))

(declare-fun m!6693200 () Bool)

(assert (=> b!5741301 m!6693200))

(assert (=> b!5741302 m!6693142))

(assert (=> b!5741325 m!6693148))

(declare-fun m!6693202 () Bool)

(assert (=> b!5741299 m!6693202))

(declare-fun m!6693204 () Bool)

(assert (=> b!5741299 m!6693204))

(declare-fun m!6693206 () Bool)

(assert (=> b!5741299 m!6693206))

(declare-fun m!6693208 () Bool)

(assert (=> b!5741321 m!6693208))

(declare-fun m!6693210 () Bool)

(assert (=> b!5741297 m!6693210))

(declare-fun m!6693212 () Bool)

(assert (=> b!5741327 m!6693212))

(declare-fun m!6693214 () Bool)

(assert (=> b!5741327 m!6693214))

(declare-fun m!6693216 () Bool)

(assert (=> b!5741327 m!6693216))

(declare-fun m!6693218 () Bool)

(assert (=> b!5741327 m!6693218))

(assert (=> b!5741327 m!6693212))

(declare-fun m!6693220 () Bool)

(assert (=> b!5741327 m!6693220))

(assert (=> b!5741327 m!6693216))

(declare-fun m!6693222 () Bool)

(assert (=> b!5741327 m!6693222))

(declare-fun m!6693224 () Bool)

(assert (=> start!590718 m!6693224))

(declare-fun m!6693226 () Bool)

(assert (=> b!5741298 m!6693226))

(declare-fun m!6693228 () Bool)

(assert (=> b!5741291 m!6693228))

(declare-fun m!6693230 () Bool)

(assert (=> b!5741310 m!6693230))

(declare-fun m!6693232 () Bool)

(assert (=> b!5741313 m!6693232))

(declare-fun m!6693234 () Bool)

(assert (=> b!5741309 m!6693234))

(declare-fun m!6693236 () Bool)

(assert (=> b!5741318 m!6693236))

(declare-fun m!6693238 () Bool)

(assert (=> b!5741318 m!6693238))

(declare-fun m!6693240 () Bool)

(assert (=> b!5741320 m!6693240))

(declare-fun m!6693242 () Bool)

(assert (=> b!5741320 m!6693242))

(declare-fun m!6693244 () Bool)

(assert (=> b!5741320 m!6693244))

(declare-fun m!6693246 () Bool)

(assert (=> b!5741320 m!6693246))

(declare-fun m!6693248 () Bool)

(assert (=> b!5741320 m!6693248))

(declare-fun m!6693250 () Bool)

(assert (=> b!5741305 m!6693250))

(declare-fun m!6693252 () Bool)

(assert (=> b!5741293 m!6693252))

(assert (=> b!5741293 m!6693190))

(declare-fun m!6693254 () Bool)

(assert (=> b!5741293 m!6693254))

(declare-fun m!6693256 () Bool)

(assert (=> b!5741293 m!6693256))

(declare-fun m!6693258 () Bool)

(assert (=> b!5741293 m!6693258))

(push 1)

(assert (not b!5741328))

(assert (not b!5741297))

(assert (not b!5741311))

(assert (not b!5741302))

(assert (not b!5741321))

(assert (not b!5741322))

(assert (not b!5741310))

(assert (not b!5741319))

(assert (not b!5741330))

(assert (not b!5741305))

(assert (not b!5741292))

(assert (not setNonEmpty!38542))

(assert (not b!5741325))

(assert (not b!5741309))

(assert (not b!5741308))

(assert (not b!5741315))

(assert (not start!590718))

(assert tp_is_empty!40761)

(assert (not b!5741299))

(assert (not b!5741324))

(assert (not b!5741320))

(assert (not b!5741304))

(assert (not b!5741327))

(assert (not b!5741293))

(assert (not b!5741317))

(assert (not b!5741312))

(assert (not b!5741306))

(assert (not b!5741301))

(assert (not b!5741329))

(assert (not b!5741313))

(assert (not b!5741291))

(assert (not b!5741298))

(assert (not b!5741318))

(assert (not b!5741326))

(assert (not b!5741295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5741500 () Bool)

(declare-fun e!3529210 () Bool)

(declare-fun call!438871 () Bool)

(assert (=> b!5741500 (= e!3529210 call!438871)))

(declare-fun b!5741501 () Bool)

(declare-fun res!2425226 () Bool)

(declare-fun e!3529207 () Bool)

(assert (=> b!5741501 (=> res!2425226 e!3529207)))

(assert (=> b!5741501 (= res!2425226 (not (is-Concat!24599 r!7292)))))

(declare-fun e!3529209 () Bool)

(assert (=> b!5741501 (= e!3529209 e!3529207)))

(declare-fun b!5741502 () Bool)

(declare-fun e!3529213 () Bool)

(declare-fun call!438872 () Bool)

(assert (=> b!5741502 (= e!3529213 call!438872)))

(declare-fun b!5741503 () Bool)

(declare-fun e!3529211 () Bool)

(assert (=> b!5741503 (= e!3529211 e!3529209)))

(declare-fun c!1013328 () Bool)

(assert (=> b!5741503 (= c!1013328 (is-Union!15754 r!7292))))

(declare-fun d!1809529 () Bool)

(declare-fun res!2425223 () Bool)

(declare-fun e!3529208 () Bool)

(assert (=> d!1809529 (=> res!2425223 e!3529208)))

(assert (=> d!1809529 (= res!2425223 (is-ElementMatch!15754 r!7292))))

(assert (=> d!1809529 (= (validRegex!7490 r!7292) e!3529208)))

(declare-fun b!5741504 () Bool)

(assert (=> b!5741504 (= e!3529207 e!3529213)))

(declare-fun res!2425222 () Bool)

(assert (=> b!5741504 (=> (not res!2425222) (not e!3529213))))

(declare-fun call!438873 () Bool)

(assert (=> b!5741504 (= res!2425222 call!438873)))

(declare-fun bm!438866 () Bool)

(assert (=> bm!438866 (= call!438872 call!438871)))

(declare-fun b!5741505 () Bool)

(assert (=> b!5741505 (= e!3529208 e!3529211)))

(declare-fun c!1013329 () Bool)

(assert (=> b!5741505 (= c!1013329 (is-Star!15754 r!7292))))

(declare-fun b!5741506 () Bool)

(declare-fun res!2425225 () Bool)

(declare-fun e!3529212 () Bool)

(assert (=> b!5741506 (=> (not res!2425225) (not e!3529212))))

(assert (=> b!5741506 (= res!2425225 call!438873)))

(assert (=> b!5741506 (= e!3529209 e!3529212)))

(declare-fun b!5741507 () Bool)

(assert (=> b!5741507 (= e!3529212 call!438872)))

(declare-fun bm!438867 () Bool)

(assert (=> bm!438867 (= call!438871 (validRegex!7490 (ite c!1013329 (reg!16083 r!7292) (ite c!1013328 (regTwo!32021 r!7292) (regTwo!32020 r!7292)))))))

(declare-fun b!5741508 () Bool)

(assert (=> b!5741508 (= e!3529211 e!3529210)))

(declare-fun res!2425224 () Bool)

(assert (=> b!5741508 (= res!2425224 (not (nullable!5786 (reg!16083 r!7292))))))

(assert (=> b!5741508 (=> (not res!2425224) (not e!3529210))))

(declare-fun bm!438868 () Bool)

(assert (=> bm!438868 (= call!438873 (validRegex!7490 (ite c!1013328 (regOne!32021 r!7292) (regOne!32020 r!7292))))))

(assert (= (and d!1809529 (not res!2425223)) b!5741505))

(assert (= (and b!5741505 c!1013329) b!5741508))

(assert (= (and b!5741505 (not c!1013329)) b!5741503))

(assert (= (and b!5741508 res!2425224) b!5741500))

(assert (= (and b!5741503 c!1013328) b!5741506))

(assert (= (and b!5741503 (not c!1013328)) b!5741501))

(assert (= (and b!5741506 res!2425225) b!5741507))

(assert (= (and b!5741501 (not res!2425226)) b!5741504))

(assert (= (and b!5741504 res!2425222) b!5741502))

(assert (= (or b!5741507 b!5741502) bm!438866))

(assert (= (or b!5741506 b!5741504) bm!438868))

(assert (= (or b!5741500 bm!438866) bm!438867))

(declare-fun m!6693382 () Bool)

(assert (=> bm!438867 m!6693382))

(declare-fun m!6693384 () Bool)

(assert (=> b!5741508 m!6693384))

(declare-fun m!6693386 () Bool)

(assert (=> bm!438868 m!6693386))

(assert (=> start!590718 d!1809529))

(declare-fun d!1809531 () Bool)

(assert (=> d!1809531 (= (isEmpty!35319 (t!376889 (exprs!5638 (h!69886 zl!343)))) (is-Nil!63437 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> b!5741310 d!1809531))

(declare-fun d!1809533 () Bool)

(declare-fun c!1013332 () Bool)

(declare-fun isEmpty!35323 (List!63563) Bool)

(assert (=> d!1809533 (= c!1013332 (isEmpty!35323 (t!376891 s!2326)))))

(declare-fun e!3529216 () Bool)

(assert (=> d!1809533 (= (matchZipper!1892 lt!2285828 (t!376891 s!2326)) e!3529216)))

(declare-fun b!5741513 () Bool)

(declare-fun nullableZipper!1687 ((Set Context!10276)) Bool)

(assert (=> b!5741513 (= e!3529216 (nullableZipper!1687 lt!2285828))))

(declare-fun b!5741514 () Bool)

(declare-fun head!12156 (List!63563) C!31778)

(declare-fun tail!11251 (List!63563) List!63563)

(assert (=> b!5741514 (= e!3529216 (matchZipper!1892 (derivationStepZipper!1837 lt!2285828 (head!12156 (t!376891 s!2326))) (tail!11251 (t!376891 s!2326))))))

(assert (= (and d!1809533 c!1013332) b!5741513))

(assert (= (and d!1809533 (not c!1013332)) b!5741514))

(declare-fun m!6693388 () Bool)

(assert (=> d!1809533 m!6693388))

(declare-fun m!6693390 () Bool)

(assert (=> b!5741513 m!6693390))

(declare-fun m!6693392 () Bool)

(assert (=> b!5741514 m!6693392))

(assert (=> b!5741514 m!6693392))

(declare-fun m!6693394 () Bool)

(assert (=> b!5741514 m!6693394))

(declare-fun m!6693396 () Bool)

(assert (=> b!5741514 m!6693396))

(assert (=> b!5741514 m!6693394))

(assert (=> b!5741514 m!6693396))

(declare-fun m!6693398 () Bool)

(assert (=> b!5741514 m!6693398))

(assert (=> b!5741330 d!1809533))

(assert (=> b!5741312 d!1809533))

(declare-fun d!1809535 () Bool)

(declare-fun lt!2285973 () Regex!15754)

(assert (=> d!1809535 (validRegex!7490 lt!2285973)))

(assert (=> d!1809535 (= lt!2285973 (generalisedUnion!1617 (unfocusZipperList!1182 (Cons!63438 lt!2285850 Nil!63438))))))

(assert (=> d!1809535 (= (unfocusZipper!1496 (Cons!63438 lt!2285850 Nil!63438)) lt!2285973)))

(declare-fun bs!1341803 () Bool)

(assert (= bs!1341803 d!1809535))

(declare-fun m!6693400 () Bool)

(assert (=> bs!1341803 m!6693400))

(declare-fun m!6693402 () Bool)

(assert (=> bs!1341803 m!6693402))

(assert (=> bs!1341803 m!6693402))

(declare-fun m!6693404 () Bool)

(assert (=> bs!1341803 m!6693404))

(assert (=> b!5741291 d!1809535))

(declare-fun e!3529219 () Bool)

(declare-fun d!1809537 () Bool)

(assert (=> d!1809537 (= (matchZipper!1892 (set.union lt!2285838 lt!2285828) (t!376891 s!2326)) e!3529219)))

(declare-fun res!2425229 () Bool)

(assert (=> d!1809537 (=> res!2425229 e!3529219)))

(assert (=> d!1809537 (= res!2425229 (matchZipper!1892 lt!2285838 (t!376891 s!2326)))))

(declare-fun lt!2285976 () Unit!156548)

(declare-fun choose!43558 ((Set Context!10276) (Set Context!10276) List!63563) Unit!156548)

(assert (=> d!1809537 (= lt!2285976 (choose!43558 lt!2285838 lt!2285828 (t!376891 s!2326)))))

(assert (=> d!1809537 (= (lemmaZipperConcatMatchesSameAsBothZippers!779 lt!2285838 lt!2285828 (t!376891 s!2326)) lt!2285976)))

(declare-fun b!5741517 () Bool)

(assert (=> b!5741517 (= e!3529219 (matchZipper!1892 lt!2285828 (t!376891 s!2326)))))

(assert (= (and d!1809537 (not res!2425229)) b!5741517))

(assert (=> d!1809537 m!6693150))

(assert (=> d!1809537 m!6693148))

(declare-fun m!6693406 () Bool)

(assert (=> d!1809537 m!6693406))

(assert (=> b!5741517 m!6693142))

(assert (=> b!5741311 d!1809537))

(declare-fun d!1809539 () Bool)

(declare-fun c!1013333 () Bool)

(assert (=> d!1809539 (= c!1013333 (isEmpty!35323 (t!376891 s!2326)))))

(declare-fun e!3529220 () Bool)

(assert (=> d!1809539 (= (matchZipper!1892 lt!2285838 (t!376891 s!2326)) e!3529220)))

(declare-fun b!5741518 () Bool)

(assert (=> b!5741518 (= e!3529220 (nullableZipper!1687 lt!2285838))))

(declare-fun b!5741519 () Bool)

(assert (=> b!5741519 (= e!3529220 (matchZipper!1892 (derivationStepZipper!1837 lt!2285838 (head!12156 (t!376891 s!2326))) (tail!11251 (t!376891 s!2326))))))

(assert (= (and d!1809539 c!1013333) b!5741518))

(assert (= (and d!1809539 (not c!1013333)) b!5741519))

(assert (=> d!1809539 m!6693388))

(declare-fun m!6693408 () Bool)

(assert (=> b!5741518 m!6693408))

(assert (=> b!5741519 m!6693392))

(assert (=> b!5741519 m!6693392))

(declare-fun m!6693410 () Bool)

(assert (=> b!5741519 m!6693410))

(assert (=> b!5741519 m!6693396))

(assert (=> b!5741519 m!6693410))

(assert (=> b!5741519 m!6693396))

(declare-fun m!6693412 () Bool)

(assert (=> b!5741519 m!6693412))

(assert (=> b!5741311 d!1809539))

(declare-fun d!1809541 () Bool)

(declare-fun c!1013334 () Bool)

(assert (=> d!1809541 (= c!1013334 (isEmpty!35323 (t!376891 s!2326)))))

(declare-fun e!3529221 () Bool)

(assert (=> d!1809541 (= (matchZipper!1892 (set.union lt!2285838 lt!2285828) (t!376891 s!2326)) e!3529221)))

(declare-fun b!5741520 () Bool)

(assert (=> b!5741520 (= e!3529221 (nullableZipper!1687 (set.union lt!2285838 lt!2285828)))))

(declare-fun b!5741521 () Bool)

(assert (=> b!5741521 (= e!3529221 (matchZipper!1892 (derivationStepZipper!1837 (set.union lt!2285838 lt!2285828) (head!12156 (t!376891 s!2326))) (tail!11251 (t!376891 s!2326))))))

(assert (= (and d!1809541 c!1013334) b!5741520))

(assert (= (and d!1809541 (not c!1013334)) b!5741521))

(assert (=> d!1809541 m!6693388))

(declare-fun m!6693414 () Bool)

(assert (=> b!5741520 m!6693414))

(assert (=> b!5741521 m!6693392))

(assert (=> b!5741521 m!6693392))

(declare-fun m!6693416 () Bool)

(assert (=> b!5741521 m!6693416))

(assert (=> b!5741521 m!6693396))

(assert (=> b!5741521 m!6693416))

(assert (=> b!5741521 m!6693396))

(declare-fun m!6693418 () Bool)

(assert (=> b!5741521 m!6693418))

(assert (=> b!5741311 d!1809541))

(declare-fun d!1809543 () Bool)

(declare-fun lt!2285977 () Regex!15754)

(assert (=> d!1809543 (validRegex!7490 lt!2285977)))

(assert (=> d!1809543 (= lt!2285977 (generalisedUnion!1617 (unfocusZipperList!1182 zl!343)))))

(assert (=> d!1809543 (= (unfocusZipper!1496 zl!343) lt!2285977)))

(declare-fun bs!1341804 () Bool)

(assert (= bs!1341804 d!1809543))

(declare-fun m!6693420 () Bool)

(assert (=> bs!1341804 m!6693420))

(assert (=> bs!1341804 m!6693138))

(assert (=> bs!1341804 m!6693138))

(assert (=> bs!1341804 m!6693140))

(assert (=> b!5741309 d!1809543))

(declare-fun b!5741550 () Bool)

(declare-fun res!2425250 () Bool)

(declare-fun e!3529242 () Bool)

(assert (=> b!5741550 (=> (not res!2425250) (not e!3529242))))

(assert (=> b!5741550 (= res!2425250 (isEmpty!35323 (tail!11251 s!2326)))))

(declare-fun b!5741551 () Bool)

(declare-fun res!2425252 () Bool)

(assert (=> b!5741551 (=> (not res!2425252) (not e!3529242))))

(declare-fun call!438876 () Bool)

(assert (=> b!5741551 (= res!2425252 (not call!438876))))

(declare-fun b!5741552 () Bool)

(declare-fun e!3529239 () Bool)

(declare-fun lt!2285980 () Bool)

(assert (=> b!5741552 (= e!3529239 (not lt!2285980))))

(declare-fun b!5741553 () Bool)

(declare-fun e!3529240 () Bool)

(assert (=> b!5741553 (= e!3529240 (= lt!2285980 call!438876))))

(declare-fun b!5741554 () Bool)

(assert (=> b!5741554 (= e!3529242 (= (head!12156 s!2326) (c!1013308 lt!2285846)))))

(declare-fun b!5741555 () Bool)

(assert (=> b!5741555 (= e!3529240 e!3529239)))

(declare-fun c!1013342 () Bool)

(assert (=> b!5741555 (= c!1013342 (is-EmptyLang!15754 lt!2285846))))

(declare-fun b!5741556 () Bool)

(declare-fun res!2425246 () Bool)

(declare-fun e!3529237 () Bool)

(assert (=> b!5741556 (=> res!2425246 e!3529237)))

(assert (=> b!5741556 (= res!2425246 e!3529242)))

(declare-fun res!2425247 () Bool)

(assert (=> b!5741556 (=> (not res!2425247) (not e!3529242))))

(assert (=> b!5741556 (= res!2425247 lt!2285980)))

(declare-fun bm!438871 () Bool)

(assert (=> bm!438871 (= call!438876 (isEmpty!35323 s!2326))))

(declare-fun d!1809545 () Bool)

(assert (=> d!1809545 e!3529240))

(declare-fun c!1013341 () Bool)

(assert (=> d!1809545 (= c!1013341 (is-EmptyExpr!15754 lt!2285846))))

(declare-fun e!3529236 () Bool)

(assert (=> d!1809545 (= lt!2285980 e!3529236)))

(declare-fun c!1013343 () Bool)

(assert (=> d!1809545 (= c!1013343 (isEmpty!35323 s!2326))))

(assert (=> d!1809545 (validRegex!7490 lt!2285846)))

(assert (=> d!1809545 (= (matchR!7939 lt!2285846 s!2326) lt!2285980)))

(declare-fun b!5741557 () Bool)

(declare-fun res!2425251 () Bool)

(assert (=> b!5741557 (=> res!2425251 e!3529237)))

(assert (=> b!5741557 (= res!2425251 (not (is-ElementMatch!15754 lt!2285846)))))

(assert (=> b!5741557 (= e!3529239 e!3529237)))

(declare-fun b!5741558 () Bool)

(declare-fun e!3529241 () Bool)

(declare-fun e!3529238 () Bool)

(assert (=> b!5741558 (= e!3529241 e!3529238)))

(declare-fun res!2425253 () Bool)

(assert (=> b!5741558 (=> res!2425253 e!3529238)))

(assert (=> b!5741558 (= res!2425253 call!438876)))

(declare-fun b!5741559 () Bool)

(assert (=> b!5741559 (= e!3529237 e!3529241)))

(declare-fun res!2425248 () Bool)

(assert (=> b!5741559 (=> (not res!2425248) (not e!3529241))))

(assert (=> b!5741559 (= res!2425248 (not lt!2285980))))

(declare-fun b!5741560 () Bool)

(assert (=> b!5741560 (= e!3529236 (nullable!5786 lt!2285846))))

(declare-fun b!5741561 () Bool)

(assert (=> b!5741561 (= e!3529238 (not (= (head!12156 s!2326) (c!1013308 lt!2285846))))))

(declare-fun b!5741562 () Bool)

(declare-fun derivativeStep!4541 (Regex!15754 C!31778) Regex!15754)

(assert (=> b!5741562 (= e!3529236 (matchR!7939 (derivativeStep!4541 lt!2285846 (head!12156 s!2326)) (tail!11251 s!2326)))))

(declare-fun b!5741563 () Bool)

(declare-fun res!2425249 () Bool)

(assert (=> b!5741563 (=> res!2425249 e!3529238)))

(assert (=> b!5741563 (= res!2425249 (not (isEmpty!35323 (tail!11251 s!2326))))))

(assert (= (and d!1809545 c!1013343) b!5741560))

(assert (= (and d!1809545 (not c!1013343)) b!5741562))

(assert (= (and d!1809545 c!1013341) b!5741553))

(assert (= (and d!1809545 (not c!1013341)) b!5741555))

(assert (= (and b!5741555 c!1013342) b!5741552))

(assert (= (and b!5741555 (not c!1013342)) b!5741557))

(assert (= (and b!5741557 (not res!2425251)) b!5741556))

(assert (= (and b!5741556 res!2425247) b!5741551))

(assert (= (and b!5741551 res!2425252) b!5741550))

(assert (= (and b!5741550 res!2425250) b!5741554))

(assert (= (and b!5741556 (not res!2425246)) b!5741559))

(assert (= (and b!5741559 res!2425248) b!5741558))

(assert (= (and b!5741558 (not res!2425253)) b!5741563))

(assert (= (and b!5741563 (not res!2425249)) b!5741561))

(assert (= (or b!5741553 b!5741551 b!5741558) bm!438871))

(declare-fun m!6693422 () Bool)

(assert (=> b!5741560 m!6693422))

(declare-fun m!6693424 () Bool)

(assert (=> b!5741554 m!6693424))

(assert (=> b!5741561 m!6693424))

(declare-fun m!6693426 () Bool)

(assert (=> bm!438871 m!6693426))

(declare-fun m!6693428 () Bool)

(assert (=> b!5741550 m!6693428))

(assert (=> b!5741550 m!6693428))

(declare-fun m!6693430 () Bool)

(assert (=> b!5741550 m!6693430))

(assert (=> d!1809545 m!6693426))

(declare-fun m!6693432 () Bool)

(assert (=> d!1809545 m!6693432))

(assert (=> b!5741562 m!6693424))

(assert (=> b!5741562 m!6693424))

(declare-fun m!6693434 () Bool)

(assert (=> b!5741562 m!6693434))

(assert (=> b!5741562 m!6693428))

(assert (=> b!5741562 m!6693434))

(assert (=> b!5741562 m!6693428))

(declare-fun m!6693436 () Bool)

(assert (=> b!5741562 m!6693436))

(assert (=> b!5741563 m!6693428))

(assert (=> b!5741563 m!6693428))

(assert (=> b!5741563 m!6693430))

(assert (=> b!5741329 d!1809545))

(declare-fun bs!1341805 () Bool)

(declare-fun b!5741605 () Bool)

(assert (= bs!1341805 (and b!5741605 b!5741327)))

(declare-fun lambda!311502 () Int)

(assert (=> bs!1341805 (not (= lambda!311502 lambda!311476))))

(assert (=> bs!1341805 (not (= lambda!311502 lambda!311477))))

(assert (=> b!5741605 true))

(assert (=> b!5741605 true))

(declare-fun bs!1341806 () Bool)

(declare-fun b!5741601 () Bool)

(assert (= bs!1341806 (and b!5741601 b!5741327)))

(declare-fun lambda!311503 () Int)

(assert (=> bs!1341806 (not (= lambda!311503 lambda!311476))))

(assert (=> bs!1341806 (= (and (= (regOne!32020 lt!2285846) (regOne!32020 r!7292)) (= (regTwo!32020 lt!2285846) (regTwo!32020 r!7292))) (= lambda!311503 lambda!311477))))

(declare-fun bs!1341807 () Bool)

(assert (= bs!1341807 (and b!5741601 b!5741605)))

(assert (=> bs!1341807 (not (= lambda!311503 lambda!311502))))

(assert (=> b!5741601 true))

(assert (=> b!5741601 true))

(declare-fun b!5741596 () Bool)

(declare-fun e!3529262 () Bool)

(declare-fun e!3529267 () Bool)

(assert (=> b!5741596 (= e!3529262 e!3529267)))

(declare-fun res!2425272 () Bool)

(assert (=> b!5741596 (= res!2425272 (not (is-EmptyLang!15754 lt!2285846)))))

(assert (=> b!5741596 (=> (not res!2425272) (not e!3529267))))

(declare-fun bm!438876 () Bool)

(declare-fun call!438881 () Bool)

(assert (=> bm!438876 (= call!438881 (isEmpty!35323 s!2326))))

(declare-fun b!5741597 () Bool)

(assert (=> b!5741597 (= e!3529262 call!438881)))

(declare-fun b!5741598 () Bool)

(declare-fun e!3529263 () Bool)

(assert (=> b!5741598 (= e!3529263 (matchRSpec!2857 (regTwo!32021 lt!2285846) s!2326))))

(declare-fun b!5741599 () Bool)

(declare-fun c!1013355 () Bool)

(assert (=> b!5741599 (= c!1013355 (is-ElementMatch!15754 lt!2285846))))

(declare-fun e!3529265 () Bool)

(assert (=> b!5741599 (= e!3529267 e!3529265)))

(declare-fun d!1809547 () Bool)

(declare-fun c!1013353 () Bool)

(assert (=> d!1809547 (= c!1013353 (is-EmptyExpr!15754 lt!2285846))))

(assert (=> d!1809547 (= (matchRSpec!2857 lt!2285846 s!2326) e!3529262)))

(declare-fun b!5741600 () Bool)

(declare-fun res!2425270 () Bool)

(declare-fun e!3529264 () Bool)

(assert (=> b!5741600 (=> res!2425270 e!3529264)))

(assert (=> b!5741600 (= res!2425270 call!438881)))

(declare-fun e!3529266 () Bool)

(assert (=> b!5741600 (= e!3529266 e!3529264)))

(declare-fun call!438882 () Bool)

(assert (=> b!5741601 (= e!3529266 call!438882)))

(declare-fun b!5741602 () Bool)

(declare-fun c!1013354 () Bool)

(assert (=> b!5741602 (= c!1013354 (is-Union!15754 lt!2285846))))

(declare-fun e!3529261 () Bool)

(assert (=> b!5741602 (= e!3529265 e!3529261)))

(declare-fun b!5741603 () Bool)

(assert (=> b!5741603 (= e!3529261 e!3529263)))

(declare-fun res!2425271 () Bool)

(assert (=> b!5741603 (= res!2425271 (matchRSpec!2857 (regOne!32021 lt!2285846) s!2326))))

(assert (=> b!5741603 (=> res!2425271 e!3529263)))

(declare-fun b!5741604 () Bool)

(assert (=> b!5741604 (= e!3529261 e!3529266)))

(declare-fun c!1013352 () Bool)

(assert (=> b!5741604 (= c!1013352 (is-Star!15754 lt!2285846))))

(declare-fun bm!438877 () Bool)

(assert (=> bm!438877 (= call!438882 (Exists!2854 (ite c!1013352 lambda!311502 lambda!311503)))))

(assert (=> b!5741605 (= e!3529264 call!438882)))

(declare-fun b!5741606 () Bool)

(assert (=> b!5741606 (= e!3529265 (= s!2326 (Cons!63439 (c!1013308 lt!2285846) Nil!63439)))))

(assert (= (and d!1809547 c!1013353) b!5741597))

(assert (= (and d!1809547 (not c!1013353)) b!5741596))

(assert (= (and b!5741596 res!2425272) b!5741599))

(assert (= (and b!5741599 c!1013355) b!5741606))

(assert (= (and b!5741599 (not c!1013355)) b!5741602))

(assert (= (and b!5741602 c!1013354) b!5741603))

(assert (= (and b!5741602 (not c!1013354)) b!5741604))

(assert (= (and b!5741603 (not res!2425271)) b!5741598))

(assert (= (and b!5741604 c!1013352) b!5741600))

(assert (= (and b!5741604 (not c!1013352)) b!5741601))

(assert (= (and b!5741600 (not res!2425270)) b!5741605))

(assert (= (or b!5741605 b!5741601) bm!438877))

(assert (= (or b!5741597 b!5741600) bm!438876))

(assert (=> bm!438876 m!6693426))

(declare-fun m!6693438 () Bool)

(assert (=> b!5741598 m!6693438))

(declare-fun m!6693440 () Bool)

(assert (=> b!5741603 m!6693440))

(declare-fun m!6693442 () Bool)

(assert (=> bm!438877 m!6693442))

(assert (=> b!5741329 d!1809547))

(declare-fun d!1809549 () Bool)

(assert (=> d!1809549 (= (matchR!7939 lt!2285846 s!2326) (matchRSpec!2857 lt!2285846 s!2326))))

(declare-fun lt!2285983 () Unit!156548)

(declare-fun choose!43559 (Regex!15754 List!63563) Unit!156548)

(assert (=> d!1809549 (= lt!2285983 (choose!43559 lt!2285846 s!2326))))

(assert (=> d!1809549 (validRegex!7490 lt!2285846)))

(assert (=> d!1809549 (= (mainMatchTheorem!2857 lt!2285846 s!2326) lt!2285983)))

(declare-fun bs!1341808 () Bool)

(assert (= bs!1341808 d!1809549))

(assert (=> bs!1341808 m!6693158))

(assert (=> bs!1341808 m!6693160))

(declare-fun m!6693444 () Bool)

(assert (=> bs!1341808 m!6693444))

(assert (=> bs!1341808 m!6693432))

(assert (=> b!5741329 d!1809549))

(declare-fun d!1809551 () Bool)

(declare-fun nullableFct!1833 (Regex!15754) Bool)

(assert (=> d!1809551 (= (nullable!5786 (regOne!32020 (regOne!32020 r!7292))) (nullableFct!1833 (regOne!32020 (regOne!32020 r!7292))))))

(declare-fun bs!1341809 () Bool)

(assert (= bs!1341809 d!1809551))

(declare-fun m!6693446 () Bool)

(assert (=> bs!1341809 m!6693446))

(assert (=> b!5741305 d!1809551))

(assert (=> b!5741325 d!1809539))

(declare-fun b!5741625 () Bool)

(declare-fun e!3529280 () Option!15763)

(assert (=> b!5741625 (= e!3529280 None!15762)))

(declare-fun b!5741626 () Bool)

(declare-fun res!2425286 () Bool)

(declare-fun e!3529279 () Bool)

(assert (=> b!5741626 (=> (not res!2425286) (not e!3529279))))

(declare-fun lt!2285992 () Option!15763)

(declare-fun get!21885 (Option!15763) tuple2!65702)

(assert (=> b!5741626 (= res!2425286 (matchR!7939 (regOne!32020 r!7292) (_1!36154 (get!21885 lt!2285992))))))

(declare-fun b!5741627 () Bool)

(declare-fun e!3529278 () Option!15763)

(assert (=> b!5741627 (= e!3529278 e!3529280)))

(declare-fun c!1013361 () Bool)

(assert (=> b!5741627 (= c!1013361 (is-Nil!63439 s!2326))))

(declare-fun b!5741628 () Bool)

(declare-fun ++!13974 (List!63563 List!63563) List!63563)

(assert (=> b!5741628 (= e!3529279 (= (++!13974 (_1!36154 (get!21885 lt!2285992)) (_2!36154 (get!21885 lt!2285992))) s!2326))))

(declare-fun b!5741629 () Bool)

(declare-fun res!2425285 () Bool)

(assert (=> b!5741629 (=> (not res!2425285) (not e!3529279))))

(assert (=> b!5741629 (= res!2425285 (matchR!7939 (regTwo!32020 r!7292) (_2!36154 (get!21885 lt!2285992))))))

(declare-fun b!5741630 () Bool)

(assert (=> b!5741630 (= e!3529278 (Some!15762 (tuple2!65703 Nil!63439 s!2326)))))

(declare-fun b!5741631 () Bool)

(declare-fun e!3529282 () Bool)

(assert (=> b!5741631 (= e!3529282 (matchR!7939 (regTwo!32020 r!7292) s!2326))))

(declare-fun b!5741632 () Bool)

(declare-fun lt!2285991 () Unit!156548)

(declare-fun lt!2285990 () Unit!156548)

(assert (=> b!5741632 (= lt!2285991 lt!2285990)))

(assert (=> b!5741632 (= (++!13974 (++!13974 Nil!63439 (Cons!63439 (h!69887 s!2326) Nil!63439)) (t!376891 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2091 (List!63563 C!31778 List!63563 List!63563) Unit!156548)

(assert (=> b!5741632 (= lt!2285990 (lemmaMoveElementToOtherListKeepsConcatEq!2091 Nil!63439 (h!69887 s!2326) (t!376891 s!2326) s!2326))))

(assert (=> b!5741632 (= e!3529280 (findConcatSeparation!2177 (regOne!32020 r!7292) (regTwo!32020 r!7292) (++!13974 Nil!63439 (Cons!63439 (h!69887 s!2326) Nil!63439)) (t!376891 s!2326) s!2326))))

(declare-fun d!1809553 () Bool)

(declare-fun e!3529281 () Bool)

(assert (=> d!1809553 e!3529281))

(declare-fun res!2425284 () Bool)

(assert (=> d!1809553 (=> res!2425284 e!3529281)))

(assert (=> d!1809553 (= res!2425284 e!3529279)))

(declare-fun res!2425287 () Bool)

(assert (=> d!1809553 (=> (not res!2425287) (not e!3529279))))

(assert (=> d!1809553 (= res!2425287 (isDefined!12466 lt!2285992))))

(assert (=> d!1809553 (= lt!2285992 e!3529278)))

(declare-fun c!1013360 () Bool)

(assert (=> d!1809553 (= c!1013360 e!3529282)))

(declare-fun res!2425283 () Bool)

(assert (=> d!1809553 (=> (not res!2425283) (not e!3529282))))

(assert (=> d!1809553 (= res!2425283 (matchR!7939 (regOne!32020 r!7292) Nil!63439))))

(assert (=> d!1809553 (validRegex!7490 (regOne!32020 r!7292))))

(assert (=> d!1809553 (= (findConcatSeparation!2177 (regOne!32020 r!7292) (regTwo!32020 r!7292) Nil!63439 s!2326 s!2326) lt!2285992)))

(declare-fun b!5741633 () Bool)

(assert (=> b!5741633 (= e!3529281 (not (isDefined!12466 lt!2285992)))))

(assert (= (and d!1809553 res!2425283) b!5741631))

(assert (= (and d!1809553 c!1013360) b!5741630))

(assert (= (and d!1809553 (not c!1013360)) b!5741627))

(assert (= (and b!5741627 c!1013361) b!5741625))

(assert (= (and b!5741627 (not c!1013361)) b!5741632))

(assert (= (and d!1809553 res!2425287) b!5741626))

(assert (= (and b!5741626 res!2425286) b!5741629))

(assert (= (and b!5741629 res!2425285) b!5741628))

(assert (= (and d!1809553 (not res!2425284)) b!5741633))

(declare-fun m!6693448 () Bool)

(assert (=> d!1809553 m!6693448))

(declare-fun m!6693450 () Bool)

(assert (=> d!1809553 m!6693450))

(declare-fun m!6693452 () Bool)

(assert (=> d!1809553 m!6693452))

(declare-fun m!6693454 () Bool)

(assert (=> b!5741626 m!6693454))

(declare-fun m!6693456 () Bool)

(assert (=> b!5741626 m!6693456))

(declare-fun m!6693458 () Bool)

(assert (=> b!5741631 m!6693458))

(declare-fun m!6693460 () Bool)

(assert (=> b!5741632 m!6693460))

(assert (=> b!5741632 m!6693460))

(declare-fun m!6693462 () Bool)

(assert (=> b!5741632 m!6693462))

(declare-fun m!6693464 () Bool)

(assert (=> b!5741632 m!6693464))

(assert (=> b!5741632 m!6693460))

(declare-fun m!6693466 () Bool)

(assert (=> b!5741632 m!6693466))

(assert (=> b!5741628 m!6693454))

(declare-fun m!6693468 () Bool)

(assert (=> b!5741628 m!6693468))

(assert (=> b!5741633 m!6693448))

(assert (=> b!5741629 m!6693454))

(declare-fun m!6693470 () Bool)

(assert (=> b!5741629 m!6693470))

(assert (=> b!5741327 d!1809553))

(declare-fun d!1809555 () Bool)

(declare-fun choose!43560 (Int) Bool)

(assert (=> d!1809555 (= (Exists!2854 lambda!311477) (choose!43560 lambda!311477))))

(declare-fun bs!1341810 () Bool)

(assert (= bs!1341810 d!1809555))

(declare-fun m!6693472 () Bool)

(assert (=> bs!1341810 m!6693472))

(assert (=> b!5741327 d!1809555))

(declare-fun d!1809557 () Bool)

(assert (=> d!1809557 (= (Exists!2854 lambda!311476) (choose!43560 lambda!311476))))

(declare-fun bs!1341811 () Bool)

(assert (= bs!1341811 d!1809557))

(declare-fun m!6693474 () Bool)

(assert (=> bs!1341811 m!6693474))

(assert (=> b!5741327 d!1809557))

(declare-fun bs!1341812 () Bool)

(declare-fun d!1809559 () Bool)

(assert (= bs!1341812 (and d!1809559 b!5741327)))

(declare-fun lambda!311506 () Int)

(assert (=> bs!1341812 (= lambda!311506 lambda!311476)))

(assert (=> bs!1341812 (not (= lambda!311506 lambda!311477))))

(declare-fun bs!1341813 () Bool)

(assert (= bs!1341813 (and d!1809559 b!5741605)))

(assert (=> bs!1341813 (not (= lambda!311506 lambda!311502))))

(declare-fun bs!1341814 () Bool)

(assert (= bs!1341814 (and d!1809559 b!5741601)))

(assert (=> bs!1341814 (not (= lambda!311506 lambda!311503))))

(assert (=> d!1809559 true))

(assert (=> d!1809559 true))

(assert (=> d!1809559 true))

(assert (=> d!1809559 (= (isDefined!12466 (findConcatSeparation!2177 (regOne!32020 r!7292) (regTwo!32020 r!7292) Nil!63439 s!2326 s!2326)) (Exists!2854 lambda!311506))))

(declare-fun lt!2285995 () Unit!156548)

(declare-fun choose!43561 (Regex!15754 Regex!15754 List!63563) Unit!156548)

(assert (=> d!1809559 (= lt!2285995 (choose!43561 (regOne!32020 r!7292) (regTwo!32020 r!7292) s!2326))))

(assert (=> d!1809559 (validRegex!7490 (regOne!32020 r!7292))))

(assert (=> d!1809559 (= (lemmaFindConcatSeparationEquivalentToExists!1941 (regOne!32020 r!7292) (regTwo!32020 r!7292) s!2326) lt!2285995)))

(declare-fun bs!1341815 () Bool)

(assert (= bs!1341815 d!1809559))

(declare-fun m!6693476 () Bool)

(assert (=> bs!1341815 m!6693476))

(assert (=> bs!1341815 m!6693216))

(assert (=> bs!1341815 m!6693218))

(declare-fun m!6693478 () Bool)

(assert (=> bs!1341815 m!6693478))

(assert (=> bs!1341815 m!6693452))

(assert (=> bs!1341815 m!6693216))

(assert (=> b!5741327 d!1809559))

(declare-fun bs!1341816 () Bool)

(declare-fun d!1809561 () Bool)

(assert (= bs!1341816 (and d!1809561 b!5741327)))

(declare-fun lambda!311511 () Int)

(assert (=> bs!1341816 (= lambda!311511 lambda!311476)))

(declare-fun bs!1341817 () Bool)

(assert (= bs!1341817 (and d!1809561 d!1809559)))

(assert (=> bs!1341817 (= lambda!311511 lambda!311506)))

(declare-fun bs!1341818 () Bool)

(assert (= bs!1341818 (and d!1809561 b!5741601)))

(assert (=> bs!1341818 (not (= lambda!311511 lambda!311503))))

(declare-fun bs!1341819 () Bool)

(assert (= bs!1341819 (and d!1809561 b!5741605)))

(assert (=> bs!1341819 (not (= lambda!311511 lambda!311502))))

(assert (=> bs!1341816 (not (= lambda!311511 lambda!311477))))

(assert (=> d!1809561 true))

(assert (=> d!1809561 true))

(assert (=> d!1809561 true))

(declare-fun lambda!311512 () Int)

(assert (=> bs!1341816 (not (= lambda!311512 lambda!311476))))

(assert (=> bs!1341817 (not (= lambda!311512 lambda!311506))))

(assert (=> bs!1341818 (= (and (= (regOne!32020 r!7292) (regOne!32020 lt!2285846)) (= (regTwo!32020 r!7292) (regTwo!32020 lt!2285846))) (= lambda!311512 lambda!311503))))

(assert (=> bs!1341819 (not (= lambda!311512 lambda!311502))))

(declare-fun bs!1341820 () Bool)

(assert (= bs!1341820 d!1809561))

(assert (=> bs!1341820 (not (= lambda!311512 lambda!311511))))

(assert (=> bs!1341816 (= lambda!311512 lambda!311477)))

(assert (=> d!1809561 true))

(assert (=> d!1809561 true))

(assert (=> d!1809561 true))

(assert (=> d!1809561 (= (Exists!2854 lambda!311511) (Exists!2854 lambda!311512))))

(declare-fun lt!2285998 () Unit!156548)

(declare-fun choose!43562 (Regex!15754 Regex!15754 List!63563) Unit!156548)

(assert (=> d!1809561 (= lt!2285998 (choose!43562 (regOne!32020 r!7292) (regTwo!32020 r!7292) s!2326))))

(assert (=> d!1809561 (validRegex!7490 (regOne!32020 r!7292))))

(assert (=> d!1809561 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1483 (regOne!32020 r!7292) (regTwo!32020 r!7292) s!2326) lt!2285998)))

(declare-fun m!6693480 () Bool)

(assert (=> bs!1341820 m!6693480))

(declare-fun m!6693482 () Bool)

(assert (=> bs!1341820 m!6693482))

(declare-fun m!6693484 () Bool)

(assert (=> bs!1341820 m!6693484))

(assert (=> bs!1341820 m!6693452))

(assert (=> b!5741327 d!1809561))

(declare-fun d!1809565 () Bool)

(declare-fun isEmpty!35324 (Option!15763) Bool)

(assert (=> d!1809565 (= (isDefined!12466 (findConcatSeparation!2177 (regOne!32020 r!7292) (regTwo!32020 r!7292) Nil!63439 s!2326 s!2326)) (not (isEmpty!35324 (findConcatSeparation!2177 (regOne!32020 r!7292) (regTwo!32020 r!7292) Nil!63439 s!2326 s!2326))))))

(declare-fun bs!1341821 () Bool)

(assert (= bs!1341821 d!1809565))

(assert (=> bs!1341821 m!6693216))

(declare-fun m!6693486 () Bool)

(assert (=> bs!1341821 m!6693486))

(assert (=> b!5741327 d!1809565))

(declare-fun b!5741656 () Bool)

(declare-fun e!3529296 () (Set Context!10276))

(declare-fun call!438885 () (Set Context!10276))

(assert (=> b!5741656 (= e!3529296 (set.union call!438885 (derivationStepZipperUp!1022 (Context!10277 (t!376889 (exprs!5638 lt!2285860))) (h!69887 s!2326))))))

(declare-fun d!1809567 () Bool)

(declare-fun c!1013367 () Bool)

(declare-fun e!3529295 () Bool)

(assert (=> d!1809567 (= c!1013367 e!3529295)))

(declare-fun res!2425302 () Bool)

(assert (=> d!1809567 (=> (not res!2425302) (not e!3529295))))

(assert (=> d!1809567 (= res!2425302 (is-Cons!63437 (exprs!5638 lt!2285860)))))

(assert (=> d!1809567 (= (derivationStepZipperUp!1022 lt!2285860 (h!69887 s!2326)) e!3529296)))

(declare-fun bm!438880 () Bool)

(assert (=> bm!438880 (= call!438885 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 lt!2285860)) (Context!10277 (t!376889 (exprs!5638 lt!2285860))) (h!69887 s!2326)))))

(declare-fun b!5741657 () Bool)

(declare-fun e!3529297 () (Set Context!10276))

(assert (=> b!5741657 (= e!3529297 call!438885)))

(declare-fun b!5741658 () Bool)

(assert (=> b!5741658 (= e!3529297 (as set.empty (Set Context!10276)))))

(declare-fun b!5741659 () Bool)

(assert (=> b!5741659 (= e!3529295 (nullable!5786 (h!69885 (exprs!5638 lt!2285860))))))

(declare-fun b!5741660 () Bool)

(assert (=> b!5741660 (= e!3529296 e!3529297)))

(declare-fun c!1013366 () Bool)

(assert (=> b!5741660 (= c!1013366 (is-Cons!63437 (exprs!5638 lt!2285860)))))

(assert (= (and d!1809567 res!2425302) b!5741659))

(assert (= (and d!1809567 c!1013367) b!5741656))

(assert (= (and d!1809567 (not c!1013367)) b!5741660))

(assert (= (and b!5741660 c!1013366) b!5741657))

(assert (= (and b!5741660 (not c!1013366)) b!5741658))

(assert (= (or b!5741656 b!5741657) bm!438880))

(declare-fun m!6693488 () Bool)

(assert (=> b!5741656 m!6693488))

(declare-fun m!6693490 () Bool)

(assert (=> bm!438880 m!6693490))

(declare-fun m!6693492 () Bool)

(assert (=> b!5741659 m!6693492))

(assert (=> b!5741306 d!1809567))

(declare-fun d!1809569 () Bool)

(declare-fun dynLambda!24823 (Int Context!10276) (Set Context!10276))

(assert (=> d!1809569 (= (flatMap!1367 lt!2285842 lambda!311478) (dynLambda!24823 lambda!311478 lt!2285860))))

(declare-fun lt!2286001 () Unit!156548)

(declare-fun choose!43563 ((Set Context!10276) Context!10276 Int) Unit!156548)

(assert (=> d!1809569 (= lt!2286001 (choose!43563 lt!2285842 lt!2285860 lambda!311478))))

(assert (=> d!1809569 (= lt!2285842 (set.insert lt!2285860 (as set.empty (Set Context!10276))))))

(assert (=> d!1809569 (= (lemmaFlatMapOnSingletonSet!899 lt!2285842 lt!2285860 lambda!311478) lt!2286001)))

(declare-fun b_lambda!216767 () Bool)

(assert (=> (not b_lambda!216767) (not d!1809569)))

(declare-fun bs!1341822 () Bool)

(assert (= bs!1341822 d!1809569))

(assert (=> bs!1341822 m!6693168))

(declare-fun m!6693494 () Bool)

(assert (=> bs!1341822 m!6693494))

(declare-fun m!6693496 () Bool)

(assert (=> bs!1341822 m!6693496))

(assert (=> bs!1341822 m!6693174))

(assert (=> b!5741306 d!1809569))

(declare-fun d!1809571 () Bool)

(declare-fun choose!43564 ((Set Context!10276) Int) (Set Context!10276))

(assert (=> d!1809571 (= (flatMap!1367 lt!2285849 lambda!311478) (choose!43564 lt!2285849 lambda!311478))))

(declare-fun bs!1341823 () Bool)

(assert (= bs!1341823 d!1809571))

(declare-fun m!6693498 () Bool)

(assert (=> bs!1341823 m!6693498))

(assert (=> b!5741306 d!1809571))

(declare-fun d!1809573 () Bool)

(assert (=> d!1809573 (= (flatMap!1367 lt!2285842 lambda!311478) (choose!43564 lt!2285842 lambda!311478))))

(declare-fun bs!1341824 () Bool)

(assert (= bs!1341824 d!1809573))

(declare-fun m!6693500 () Bool)

(assert (=> bs!1341824 m!6693500))

(assert (=> b!5741306 d!1809573))

(declare-fun d!1809575 () Bool)

(assert (=> d!1809575 (= (flatMap!1367 lt!2285849 lambda!311478) (dynLambda!24823 lambda!311478 lt!2285850))))

(declare-fun lt!2286002 () Unit!156548)

(assert (=> d!1809575 (= lt!2286002 (choose!43563 lt!2285849 lt!2285850 lambda!311478))))

(assert (=> d!1809575 (= lt!2285849 (set.insert lt!2285850 (as set.empty (Set Context!10276))))))

(assert (=> d!1809575 (= (lemmaFlatMapOnSingletonSet!899 lt!2285849 lt!2285850 lambda!311478) lt!2286002)))

(declare-fun b_lambda!216769 () Bool)

(assert (=> (not b_lambda!216769) (not d!1809575)))

(declare-fun bs!1341825 () Bool)

(assert (= bs!1341825 d!1809575))

(assert (=> bs!1341825 m!6693170))

(declare-fun m!6693502 () Bool)

(assert (=> bs!1341825 m!6693502))

(declare-fun m!6693504 () Bool)

(assert (=> bs!1341825 m!6693504))

(assert (=> bs!1341825 m!6693182))

(assert (=> b!5741306 d!1809575))

(declare-fun call!438886 () (Set Context!10276))

(declare-fun b!5741663 () Bool)

(declare-fun e!3529299 () (Set Context!10276))

(assert (=> b!5741663 (= e!3529299 (set.union call!438886 (derivationStepZipperUp!1022 (Context!10277 (t!376889 (exprs!5638 lt!2285850))) (h!69887 s!2326))))))

(declare-fun d!1809577 () Bool)

(declare-fun c!1013369 () Bool)

(declare-fun e!3529298 () Bool)

(assert (=> d!1809577 (= c!1013369 e!3529298)))

(declare-fun res!2425303 () Bool)

(assert (=> d!1809577 (=> (not res!2425303) (not e!3529298))))

(assert (=> d!1809577 (= res!2425303 (is-Cons!63437 (exprs!5638 lt!2285850)))))

(assert (=> d!1809577 (= (derivationStepZipperUp!1022 lt!2285850 (h!69887 s!2326)) e!3529299)))

(declare-fun bm!438881 () Bool)

(assert (=> bm!438881 (= call!438886 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 lt!2285850)) (Context!10277 (t!376889 (exprs!5638 lt!2285850))) (h!69887 s!2326)))))

(declare-fun b!5741664 () Bool)

(declare-fun e!3529300 () (Set Context!10276))

(assert (=> b!5741664 (= e!3529300 call!438886)))

(declare-fun b!5741665 () Bool)

(assert (=> b!5741665 (= e!3529300 (as set.empty (Set Context!10276)))))

(declare-fun b!5741666 () Bool)

(assert (=> b!5741666 (= e!3529298 (nullable!5786 (h!69885 (exprs!5638 lt!2285850))))))

(declare-fun b!5741667 () Bool)

(assert (=> b!5741667 (= e!3529299 e!3529300)))

(declare-fun c!1013368 () Bool)

(assert (=> b!5741667 (= c!1013368 (is-Cons!63437 (exprs!5638 lt!2285850)))))

(assert (= (and d!1809577 res!2425303) b!5741666))

(assert (= (and d!1809577 c!1013369) b!5741663))

(assert (= (and d!1809577 (not c!1013369)) b!5741667))

(assert (= (and b!5741667 c!1013368) b!5741664))

(assert (= (and b!5741667 (not c!1013368)) b!5741665))

(assert (= (or b!5741663 b!5741664) bm!438881))

(declare-fun m!6693506 () Bool)

(assert (=> b!5741663 m!6693506))

(declare-fun m!6693508 () Bool)

(assert (=> bm!438881 m!6693508))

(declare-fun m!6693510 () Bool)

(assert (=> b!5741666 m!6693510))

(assert (=> b!5741306 d!1809577))

(declare-fun d!1809579 () Bool)

(declare-fun lt!2286005 () Regex!15754)

(assert (=> d!1809579 (validRegex!7490 lt!2286005)))

(assert (=> d!1809579 (= lt!2286005 (generalisedUnion!1617 (unfocusZipperList!1182 (Cons!63438 lt!2285860 Nil!63438))))))

(assert (=> d!1809579 (= (unfocusZipper!1496 (Cons!63438 lt!2285860 Nil!63438)) lt!2286005)))

(declare-fun bs!1341826 () Bool)

(assert (= bs!1341826 d!1809579))

(declare-fun m!6693512 () Bool)

(assert (=> bs!1341826 m!6693512))

(declare-fun m!6693514 () Bool)

(assert (=> bs!1341826 m!6693514))

(assert (=> bs!1341826 m!6693514))

(declare-fun m!6693516 () Bool)

(assert (=> bs!1341826 m!6693516))

(assert (=> b!5741306 d!1809579))

(declare-fun call!438887 () (Set Context!10276))

(declare-fun b!5741676 () Bool)

(declare-fun e!3529308 () (Set Context!10276))

(assert (=> b!5741676 (= e!3529308 (set.union call!438887 (derivationStepZipperUp!1022 (Context!10277 (t!376889 (exprs!5638 lt!2285854))) (h!69887 s!2326))))))

(declare-fun d!1809581 () Bool)

(declare-fun c!1013375 () Bool)

(declare-fun e!3529307 () Bool)

(assert (=> d!1809581 (= c!1013375 e!3529307)))

(declare-fun res!2425306 () Bool)

(assert (=> d!1809581 (=> (not res!2425306) (not e!3529307))))

(assert (=> d!1809581 (= res!2425306 (is-Cons!63437 (exprs!5638 lt!2285854)))))

(assert (=> d!1809581 (= (derivationStepZipperUp!1022 lt!2285854 (h!69887 s!2326)) e!3529308)))

(declare-fun bm!438882 () Bool)

(assert (=> bm!438882 (= call!438887 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 lt!2285854)) (Context!10277 (t!376889 (exprs!5638 lt!2285854))) (h!69887 s!2326)))))

(declare-fun b!5741677 () Bool)

(declare-fun e!3529309 () (Set Context!10276))

(assert (=> b!5741677 (= e!3529309 call!438887)))

(declare-fun b!5741678 () Bool)

(assert (=> b!5741678 (= e!3529309 (as set.empty (Set Context!10276)))))

(declare-fun b!5741679 () Bool)

(assert (=> b!5741679 (= e!3529307 (nullable!5786 (h!69885 (exprs!5638 lt!2285854))))))

(declare-fun b!5741680 () Bool)

(assert (=> b!5741680 (= e!3529308 e!3529309)))

(declare-fun c!1013374 () Bool)

(assert (=> b!5741680 (= c!1013374 (is-Cons!63437 (exprs!5638 lt!2285854)))))

(assert (= (and d!1809581 res!2425306) b!5741679))

(assert (= (and d!1809581 c!1013375) b!5741676))

(assert (= (and d!1809581 (not c!1013375)) b!5741680))

(assert (= (and b!5741680 c!1013374) b!5741677))

(assert (= (and b!5741680 (not c!1013374)) b!5741678))

(assert (= (or b!5741676 b!5741677) bm!438882))

(declare-fun m!6693518 () Bool)

(assert (=> b!5741676 m!6693518))

(declare-fun m!6693520 () Bool)

(assert (=> bm!438882 m!6693520))

(declare-fun m!6693522 () Bool)

(assert (=> b!5741679 m!6693522))

(assert (=> b!5741326 d!1809581))

(declare-fun call!438888 () (Set Context!10276))

(declare-fun e!3529311 () (Set Context!10276))

(declare-fun b!5741681 () Bool)

(assert (=> b!5741681 (= e!3529311 (set.union call!438888 (derivationStepZipperUp!1022 (Context!10277 (t!376889 (exprs!5638 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343)))))))) (h!69887 s!2326))))))

(declare-fun d!1809583 () Bool)

(declare-fun c!1013377 () Bool)

(declare-fun e!3529310 () Bool)

(assert (=> d!1809583 (= c!1013377 e!3529310)))

(declare-fun res!2425307 () Bool)

(assert (=> d!1809583 (=> (not res!2425307) (not e!3529310))))

(assert (=> d!1809583 (= res!2425307 (is-Cons!63437 (exprs!5638 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343))))))))))

(assert (=> d!1809583 (= (derivationStepZipperUp!1022 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343))))) (h!69887 s!2326)) e!3529311)))

(declare-fun bm!438883 () Bool)

(assert (=> bm!438883 (= call!438888 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343))))))) (Context!10277 (t!376889 (exprs!5638 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343)))))))) (h!69887 s!2326)))))

(declare-fun b!5741682 () Bool)

(declare-fun e!3529312 () (Set Context!10276))

(assert (=> b!5741682 (= e!3529312 call!438888)))

(declare-fun b!5741683 () Bool)

(assert (=> b!5741683 (= e!3529312 (as set.empty (Set Context!10276)))))

(declare-fun b!5741684 () Bool)

(assert (=> b!5741684 (= e!3529310 (nullable!5786 (h!69885 (exprs!5638 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343)))))))))))

(declare-fun b!5741685 () Bool)

(assert (=> b!5741685 (= e!3529311 e!3529312)))

(declare-fun c!1013376 () Bool)

(assert (=> b!5741685 (= c!1013376 (is-Cons!63437 (exprs!5638 (Context!10277 (Cons!63437 (h!69885 (exprs!5638 (h!69886 zl!343))) (t!376889 (exprs!5638 (h!69886 zl!343))))))))))

(assert (= (and d!1809583 res!2425307) b!5741684))

(assert (= (and d!1809583 c!1013377) b!5741681))

(assert (= (and d!1809583 (not c!1013377)) b!5741685))

(assert (= (and b!5741685 c!1013376) b!5741682))

(assert (= (and b!5741685 (not c!1013376)) b!5741683))

(assert (= (or b!5741681 b!5741682) bm!438883))

(declare-fun m!6693524 () Bool)

(assert (=> b!5741681 m!6693524))

(declare-fun m!6693526 () Bool)

(assert (=> bm!438883 m!6693526))

(declare-fun m!6693528 () Bool)

(assert (=> b!5741684 m!6693528))

(assert (=> b!5741326 d!1809583))

(declare-fun call!438889 () (Set Context!10276))

(declare-fun e!3529318 () (Set Context!10276))

(declare-fun b!5741692 () Bool)

(assert (=> b!5741692 (= e!3529318 (set.union call!438889 (derivationStepZipperUp!1022 (Context!10277 (t!376889 (exprs!5638 (h!69886 zl!343)))) (h!69887 s!2326))))))

(declare-fun d!1809585 () Bool)

(declare-fun c!1013381 () Bool)

(declare-fun e!3529317 () Bool)

(assert (=> d!1809585 (= c!1013381 e!3529317)))

(declare-fun res!2425310 () Bool)

(assert (=> d!1809585 (=> (not res!2425310) (not e!3529317))))

(assert (=> d!1809585 (= res!2425310 (is-Cons!63437 (exprs!5638 (h!69886 zl!343))))))

(assert (=> d!1809585 (= (derivationStepZipperUp!1022 (h!69886 zl!343) (h!69887 s!2326)) e!3529318)))

(declare-fun bm!438884 () Bool)

(assert (=> bm!438884 (= call!438889 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 (h!69886 zl!343))) (Context!10277 (t!376889 (exprs!5638 (h!69886 zl!343)))) (h!69887 s!2326)))))

(declare-fun b!5741693 () Bool)

(declare-fun e!3529319 () (Set Context!10276))

(assert (=> b!5741693 (= e!3529319 call!438889)))

(declare-fun b!5741694 () Bool)

(assert (=> b!5741694 (= e!3529319 (as set.empty (Set Context!10276)))))

(declare-fun b!5741695 () Bool)

(assert (=> b!5741695 (= e!3529317 (nullable!5786 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741696 () Bool)

(assert (=> b!5741696 (= e!3529318 e!3529319)))

(declare-fun c!1013380 () Bool)

(assert (=> b!5741696 (= c!1013380 (is-Cons!63437 (exprs!5638 (h!69886 zl!343))))))

(assert (= (and d!1809585 res!2425310) b!5741695))

(assert (= (and d!1809585 c!1013381) b!5741692))

(assert (= (and d!1809585 (not c!1013381)) b!5741696))

(assert (= (and b!5741696 c!1013380) b!5741693))

(assert (= (and b!5741696 (not c!1013380)) b!5741694))

(assert (= (or b!5741692 b!5741693) bm!438884))

(declare-fun m!6693530 () Bool)

(assert (=> b!5741692 m!6693530))

(declare-fun m!6693532 () Bool)

(assert (=> bm!438884 m!6693532))

(assert (=> b!5741695 m!6693192))

(assert (=> b!5741326 d!1809585))

(declare-fun b!5741733 () Bool)

(declare-fun e!3529340 () (Set Context!10276))

(assert (=> b!5741733 (= e!3529340 (as set.empty (Set Context!10276)))))

(declare-fun b!5741734 () Bool)

(declare-fun e!3529342 () (Set Context!10276))

(declare-fun call!438904 () (Set Context!10276))

(declare-fun call!438903 () (Set Context!10276))

(assert (=> b!5741734 (= e!3529342 (set.union call!438904 call!438903))))

(declare-fun b!5741735 () Bool)

(declare-fun call!438907 () (Set Context!10276))

(assert (=> b!5741735 (= e!3529340 call!438907)))

(declare-fun b!5741736 () Bool)

(declare-fun e!3529345 () (Set Context!10276))

(assert (=> b!5741736 (= e!3529342 e!3529345)))

(declare-fun c!1013401 () Bool)

(assert (=> b!5741736 (= c!1013401 (is-Concat!24599 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741738 () Bool)

(assert (=> b!5741738 (= e!3529345 call!438907)))

(declare-fun b!5741739 () Bool)

(declare-fun e!3529341 () (Set Context!10276))

(assert (=> b!5741739 (= e!3529341 (set.insert lt!2285854 (as set.empty (Set Context!10276))))))

(declare-fun b!5741740 () Bool)

(declare-fun e!3529343 () Bool)

(assert (=> b!5741740 (= e!3529343 (nullable!5786 (regOne!32020 (h!69885 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun bm!438897 () Bool)

(declare-fun call!438902 () List!63561)

(declare-fun call!438906 () List!63561)

(assert (=> bm!438897 (= call!438902 call!438906)))

(declare-fun b!5741741 () Bool)

(declare-fun e!3529344 () (Set Context!10276))

(assert (=> b!5741741 (= e!3529341 e!3529344)))

(declare-fun c!1013400 () Bool)

(assert (=> b!5741741 (= c!1013400 (is-Union!15754 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun c!1013398 () Bool)

(declare-fun bm!438898 () Bool)

(declare-fun call!438905 () (Set Context!10276))

(assert (=> bm!438898 (= call!438905 (derivationStepZipperDown!1096 (ite c!1013400 (regTwo!32021 (h!69885 (exprs!5638 (h!69886 zl!343)))) (ite c!1013398 (regTwo!32020 (h!69885 (exprs!5638 (h!69886 zl!343)))) (ite c!1013401 (regOne!32020 (h!69885 (exprs!5638 (h!69886 zl!343)))) (reg!16083 (h!69885 (exprs!5638 (h!69886 zl!343))))))) (ite (or c!1013400 c!1013398) lt!2285854 (Context!10277 call!438902)) (h!69887 s!2326)))))

(declare-fun b!5741742 () Bool)

(assert (=> b!5741742 (= c!1013398 e!3529343)))

(declare-fun res!2425315 () Bool)

(assert (=> b!5741742 (=> (not res!2425315) (not e!3529343))))

(assert (=> b!5741742 (= res!2425315 (is-Concat!24599 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> b!5741742 (= e!3529344 e!3529342)))

(declare-fun bm!438899 () Bool)

(declare-fun $colon$colon!1755 (List!63561 Regex!15754) List!63561)

(assert (=> bm!438899 (= call!438906 ($colon$colon!1755 (exprs!5638 lt!2285854) (ite (or c!1013398 c!1013401) (regTwo!32020 (h!69885 (exprs!5638 (h!69886 zl!343)))) (h!69885 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun bm!438900 () Bool)

(assert (=> bm!438900 (= call!438907 call!438903)))

(declare-fun b!5741743 () Bool)

(declare-fun c!1013402 () Bool)

(assert (=> b!5741743 (= c!1013402 (is-Star!15754 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> b!5741743 (= e!3529345 e!3529340)))

(declare-fun bm!438901 () Bool)

(assert (=> bm!438901 (= call!438904 (derivationStepZipperDown!1096 (ite c!1013400 (regOne!32021 (h!69885 (exprs!5638 (h!69886 zl!343)))) (regOne!32020 (h!69885 (exprs!5638 (h!69886 zl!343))))) (ite c!1013400 lt!2285854 (Context!10277 call!438906)) (h!69887 s!2326)))))

(declare-fun bm!438902 () Bool)

(assert (=> bm!438902 (= call!438903 call!438905)))

(declare-fun d!1809587 () Bool)

(declare-fun c!1013399 () Bool)

(assert (=> d!1809587 (= c!1013399 (and (is-ElementMatch!15754 (h!69885 (exprs!5638 (h!69886 zl!343)))) (= (c!1013308 (h!69885 (exprs!5638 (h!69886 zl!343)))) (h!69887 s!2326))))))

(assert (=> d!1809587 (= (derivationStepZipperDown!1096 (h!69885 (exprs!5638 (h!69886 zl!343))) lt!2285854 (h!69887 s!2326)) e!3529341)))

(declare-fun b!5741737 () Bool)

(assert (=> b!5741737 (= e!3529344 (set.union call!438904 call!438905))))

(assert (= (and d!1809587 c!1013399) b!5741739))

(assert (= (and d!1809587 (not c!1013399)) b!5741741))

(assert (= (and b!5741741 c!1013400) b!5741737))

(assert (= (and b!5741741 (not c!1013400)) b!5741742))

(assert (= (and b!5741742 res!2425315) b!5741740))

(assert (= (and b!5741742 c!1013398) b!5741734))

(assert (= (and b!5741742 (not c!1013398)) b!5741736))

(assert (= (and b!5741736 c!1013401) b!5741738))

(assert (= (and b!5741736 (not c!1013401)) b!5741743))

(assert (= (and b!5741743 c!1013402) b!5741735))

(assert (= (and b!5741743 (not c!1013402)) b!5741733))

(assert (= (or b!5741738 b!5741735) bm!438897))

(assert (= (or b!5741738 b!5741735) bm!438900))

(assert (= (or b!5741734 bm!438897) bm!438899))

(assert (= (or b!5741734 bm!438900) bm!438902))

(assert (= (or b!5741737 bm!438902) bm!438898))

(assert (= (or b!5741737 b!5741734) bm!438901))

(declare-fun m!6693550 () Bool)

(assert (=> bm!438899 m!6693550))

(declare-fun m!6693552 () Bool)

(assert (=> b!5741740 m!6693552))

(declare-fun m!6693554 () Bool)

(assert (=> bm!438901 m!6693554))

(declare-fun m!6693556 () Bool)

(assert (=> bm!438898 m!6693556))

(assert (=> b!5741739 m!6693258))

(assert (=> b!5741326 d!1809587))

(declare-fun d!1809591 () Bool)

(assert (=> d!1809591 (= (nullable!5786 (h!69885 (exprs!5638 (h!69886 zl!343)))) (nullableFct!1833 (h!69885 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun bs!1341827 () Bool)

(assert (= bs!1341827 d!1809591))

(declare-fun m!6693558 () Bool)

(assert (=> bs!1341827 m!6693558))

(assert (=> b!5741326 d!1809591))

(declare-fun d!1809593 () Bool)

(assert (=> d!1809593 (= (flatMap!1367 z!1189 lambda!311478) (dynLambda!24823 lambda!311478 (h!69886 zl!343)))))

(declare-fun lt!2286007 () Unit!156548)

(assert (=> d!1809593 (= lt!2286007 (choose!43563 z!1189 (h!69886 zl!343) lambda!311478))))

(assert (=> d!1809593 (= z!1189 (set.insert (h!69886 zl!343) (as set.empty (Set Context!10276))))))

(assert (=> d!1809593 (= (lemmaFlatMapOnSingletonSet!899 z!1189 (h!69886 zl!343) lambda!311478) lt!2286007)))

(declare-fun b_lambda!216771 () Bool)

(assert (=> (not b_lambda!216771) (not d!1809593)))

(declare-fun bs!1341828 () Bool)

(assert (= bs!1341828 d!1809593))

(assert (=> bs!1341828 m!6693188))

(declare-fun m!6693560 () Bool)

(assert (=> bs!1341828 m!6693560))

(declare-fun m!6693562 () Bool)

(assert (=> bs!1341828 m!6693562))

(declare-fun m!6693564 () Bool)

(assert (=> bs!1341828 m!6693564))

(assert (=> b!5741326 d!1809593))

(declare-fun d!1809595 () Bool)

(assert (=> d!1809595 (= (flatMap!1367 z!1189 lambda!311478) (choose!43564 z!1189 lambda!311478))))

(declare-fun bs!1341829 () Bool)

(assert (= bs!1341829 d!1809595))

(declare-fun m!6693566 () Bool)

(assert (=> bs!1341829 m!6693566))

(assert (=> b!5741326 d!1809595))

(assert (=> b!5741302 d!1809533))

(declare-fun d!1809597 () Bool)

(declare-fun lt!2286008 () Regex!15754)

(assert (=> d!1809597 (validRegex!7490 lt!2286008)))

(assert (=> d!1809597 (= lt!2286008 (generalisedUnion!1617 (unfocusZipperList!1182 (Cons!63438 lt!2285859 Nil!63438))))))

(assert (=> d!1809597 (= (unfocusZipper!1496 (Cons!63438 lt!2285859 Nil!63438)) lt!2286008)))

(declare-fun bs!1341830 () Bool)

(assert (= bs!1341830 d!1809597))

(declare-fun m!6693568 () Bool)

(assert (=> bs!1341830 m!6693568))

(declare-fun m!6693570 () Bool)

(assert (=> bs!1341830 m!6693570))

(assert (=> bs!1341830 m!6693570))

(declare-fun m!6693572 () Bool)

(assert (=> bs!1341830 m!6693572))

(assert (=> b!5741322 d!1809597))

(declare-fun d!1809599 () Bool)

(assert (=> d!1809599 (= (flatMap!1367 lt!2285845 lambda!311478) (choose!43564 lt!2285845 lambda!311478))))

(declare-fun bs!1341831 () Bool)

(assert (= bs!1341831 d!1809599))

(declare-fun m!6693574 () Bool)

(assert (=> bs!1341831 m!6693574))

(assert (=> b!5741320 d!1809599))

(declare-fun call!438908 () (Set Context!10276))

(declare-fun b!5741744 () Bool)

(declare-fun e!3529347 () (Set Context!10276))

(assert (=> b!5741744 (= e!3529347 (set.union call!438908 (derivationStepZipperUp!1022 (Context!10277 (t!376889 (exprs!5638 lt!2285859))) (h!69887 s!2326))))))

(declare-fun d!1809601 () Bool)

(declare-fun c!1013404 () Bool)

(declare-fun e!3529346 () Bool)

(assert (=> d!1809601 (= c!1013404 e!3529346)))

(declare-fun res!2425316 () Bool)

(assert (=> d!1809601 (=> (not res!2425316) (not e!3529346))))

(assert (=> d!1809601 (= res!2425316 (is-Cons!63437 (exprs!5638 lt!2285859)))))

(assert (=> d!1809601 (= (derivationStepZipperUp!1022 lt!2285859 (h!69887 s!2326)) e!3529347)))

(declare-fun bm!438903 () Bool)

(assert (=> bm!438903 (= call!438908 (derivationStepZipperDown!1096 (h!69885 (exprs!5638 lt!2285859)) (Context!10277 (t!376889 (exprs!5638 lt!2285859))) (h!69887 s!2326)))))

(declare-fun b!5741745 () Bool)

(declare-fun e!3529348 () (Set Context!10276))

(assert (=> b!5741745 (= e!3529348 call!438908)))

(declare-fun b!5741746 () Bool)

(assert (=> b!5741746 (= e!3529348 (as set.empty (Set Context!10276)))))

(declare-fun b!5741747 () Bool)

(assert (=> b!5741747 (= e!3529346 (nullable!5786 (h!69885 (exprs!5638 lt!2285859))))))

(declare-fun b!5741748 () Bool)

(assert (=> b!5741748 (= e!3529347 e!3529348)))

(declare-fun c!1013403 () Bool)

(assert (=> b!5741748 (= c!1013403 (is-Cons!63437 (exprs!5638 lt!2285859)))))

(assert (= (and d!1809601 res!2425316) b!5741747))

(assert (= (and d!1809601 c!1013404) b!5741744))

(assert (= (and d!1809601 (not c!1013404)) b!5741748))

(assert (= (and b!5741748 c!1013403) b!5741745))

(assert (= (and b!5741748 (not c!1013403)) b!5741746))

(assert (= (or b!5741744 b!5741745) bm!438903))

(declare-fun m!6693576 () Bool)

(assert (=> b!5741744 m!6693576))

(declare-fun m!6693578 () Bool)

(assert (=> bm!438903 m!6693578))

(declare-fun m!6693580 () Bool)

(assert (=> b!5741747 m!6693580))

(assert (=> b!5741320 d!1809601))

(declare-fun d!1809603 () Bool)

(assert (=> d!1809603 (= (flatMap!1367 lt!2285845 lambda!311478) (dynLambda!24823 lambda!311478 lt!2285859))))

(declare-fun lt!2286009 () Unit!156548)

(assert (=> d!1809603 (= lt!2286009 (choose!43563 lt!2285845 lt!2285859 lambda!311478))))

(assert (=> d!1809603 (= lt!2285845 (set.insert lt!2285859 (as set.empty (Set Context!10276))))))

(assert (=> d!1809603 (= (lemmaFlatMapOnSingletonSet!899 lt!2285845 lt!2285859 lambda!311478) lt!2286009)))

(declare-fun b_lambda!216773 () Bool)

(assert (=> (not b_lambda!216773) (not d!1809603)))

(declare-fun bs!1341832 () Bool)

(assert (= bs!1341832 d!1809603))

(assert (=> bs!1341832 m!6693248))

(declare-fun m!6693582 () Bool)

(assert (=> bs!1341832 m!6693582))

(declare-fun m!6693584 () Bool)

(assert (=> bs!1341832 m!6693584))

(assert (=> bs!1341832 m!6693246))

(assert (=> b!5741320 d!1809603))

(declare-fun bs!1341833 () Bool)

(declare-fun d!1809605 () Bool)

(assert (= bs!1341833 (and d!1809605 b!5741326)))

(declare-fun lambda!311518 () Int)

(assert (=> bs!1341833 (= lambda!311518 lambda!311478)))

(assert (=> d!1809605 true))

(assert (=> d!1809605 (= (derivationStepZipper!1837 lt!2285845 (h!69887 s!2326)) (flatMap!1367 lt!2285845 lambda!311518))))

(declare-fun bs!1341834 () Bool)

(assert (= bs!1341834 d!1809605))

(declare-fun m!6693586 () Bool)

(assert (=> bs!1341834 m!6693586))

(assert (=> b!5741320 d!1809605))

(declare-fun bs!1341835 () Bool)

(declare-fun b!5741762 () Bool)

(assert (= bs!1341835 (and b!5741762 b!5741327)))

(declare-fun lambda!311519 () Int)

(assert (=> bs!1341835 (not (= lambda!311519 lambda!311476))))

(declare-fun bs!1341836 () Bool)

(assert (= bs!1341836 (and b!5741762 d!1809559)))

(assert (=> bs!1341836 (not (= lambda!311519 lambda!311506))))

(declare-fun bs!1341837 () Bool)

(assert (= bs!1341837 (and b!5741762 b!5741601)))

(assert (=> bs!1341837 (not (= lambda!311519 lambda!311503))))

(declare-fun bs!1341838 () Bool)

(assert (= bs!1341838 (and b!5741762 b!5741605)))

(assert (=> bs!1341838 (= (and (= (reg!16083 r!7292) (reg!16083 lt!2285846)) (= r!7292 lt!2285846)) (= lambda!311519 lambda!311502))))

(declare-fun bs!1341839 () Bool)

(assert (= bs!1341839 (and b!5741762 d!1809561)))

(assert (=> bs!1341839 (not (= lambda!311519 lambda!311512))))

(assert (=> bs!1341839 (not (= lambda!311519 lambda!311511))))

(assert (=> bs!1341835 (not (= lambda!311519 lambda!311477))))

(assert (=> b!5741762 true))

(assert (=> b!5741762 true))

(declare-fun bs!1341840 () Bool)

(declare-fun b!5741758 () Bool)

(assert (= bs!1341840 (and b!5741758 b!5741327)))

(declare-fun lambda!311520 () Int)

(assert (=> bs!1341840 (not (= lambda!311520 lambda!311476))))

(declare-fun bs!1341841 () Bool)

(assert (= bs!1341841 (and b!5741758 d!1809559)))

(assert (=> bs!1341841 (not (= lambda!311520 lambda!311506))))

(declare-fun bs!1341842 () Bool)

(assert (= bs!1341842 (and b!5741758 b!5741762)))

(assert (=> bs!1341842 (not (= lambda!311520 lambda!311519))))

(declare-fun bs!1341843 () Bool)

(assert (= bs!1341843 (and b!5741758 b!5741601)))

(assert (=> bs!1341843 (= (and (= (regOne!32020 r!7292) (regOne!32020 lt!2285846)) (= (regTwo!32020 r!7292) (regTwo!32020 lt!2285846))) (= lambda!311520 lambda!311503))))

(declare-fun bs!1341844 () Bool)

(assert (= bs!1341844 (and b!5741758 b!5741605)))

(assert (=> bs!1341844 (not (= lambda!311520 lambda!311502))))

(declare-fun bs!1341845 () Bool)

(assert (= bs!1341845 (and b!5741758 d!1809561)))

(assert (=> bs!1341845 (= lambda!311520 lambda!311512)))

(assert (=> bs!1341845 (not (= lambda!311520 lambda!311511))))

(assert (=> bs!1341840 (= lambda!311520 lambda!311477)))

(assert (=> b!5741758 true))

(assert (=> b!5741758 true))

(declare-fun b!5741753 () Bool)

(declare-fun e!3529352 () Bool)

(declare-fun e!3529357 () Bool)

(assert (=> b!5741753 (= e!3529352 e!3529357)))

(declare-fun res!2425321 () Bool)

(assert (=> b!5741753 (= res!2425321 (not (is-EmptyLang!15754 r!7292)))))

(assert (=> b!5741753 (=> (not res!2425321) (not e!3529357))))

(declare-fun bm!438904 () Bool)

(declare-fun call!438909 () Bool)

(assert (=> bm!438904 (= call!438909 (isEmpty!35323 s!2326))))

(declare-fun b!5741754 () Bool)

(assert (=> b!5741754 (= e!3529352 call!438909)))

(declare-fun b!5741755 () Bool)

(declare-fun e!3529353 () Bool)

(assert (=> b!5741755 (= e!3529353 (matchRSpec!2857 (regTwo!32021 r!7292) s!2326))))

(declare-fun b!5741756 () Bool)

(declare-fun c!1013410 () Bool)

(assert (=> b!5741756 (= c!1013410 (is-ElementMatch!15754 r!7292))))

(declare-fun e!3529355 () Bool)

(assert (=> b!5741756 (= e!3529357 e!3529355)))

(declare-fun d!1809607 () Bool)

(declare-fun c!1013408 () Bool)

(assert (=> d!1809607 (= c!1013408 (is-EmptyExpr!15754 r!7292))))

(assert (=> d!1809607 (= (matchRSpec!2857 r!7292 s!2326) e!3529352)))

(declare-fun b!5741757 () Bool)

(declare-fun res!2425319 () Bool)

(declare-fun e!3529354 () Bool)

(assert (=> b!5741757 (=> res!2425319 e!3529354)))

(assert (=> b!5741757 (= res!2425319 call!438909)))

(declare-fun e!3529356 () Bool)

(assert (=> b!5741757 (= e!3529356 e!3529354)))

(declare-fun call!438910 () Bool)

(assert (=> b!5741758 (= e!3529356 call!438910)))

(declare-fun b!5741759 () Bool)

(declare-fun c!1013409 () Bool)

(assert (=> b!5741759 (= c!1013409 (is-Union!15754 r!7292))))

(declare-fun e!3529351 () Bool)

(assert (=> b!5741759 (= e!3529355 e!3529351)))

(declare-fun b!5741760 () Bool)

(assert (=> b!5741760 (= e!3529351 e!3529353)))

(declare-fun res!2425320 () Bool)

(assert (=> b!5741760 (= res!2425320 (matchRSpec!2857 (regOne!32021 r!7292) s!2326))))

(assert (=> b!5741760 (=> res!2425320 e!3529353)))

(declare-fun b!5741761 () Bool)

(assert (=> b!5741761 (= e!3529351 e!3529356)))

(declare-fun c!1013407 () Bool)

(assert (=> b!5741761 (= c!1013407 (is-Star!15754 r!7292))))

(declare-fun bm!438905 () Bool)

(assert (=> bm!438905 (= call!438910 (Exists!2854 (ite c!1013407 lambda!311519 lambda!311520)))))

(assert (=> b!5741762 (= e!3529354 call!438910)))

(declare-fun b!5741763 () Bool)

(assert (=> b!5741763 (= e!3529355 (= s!2326 (Cons!63439 (c!1013308 r!7292) Nil!63439)))))

(assert (= (and d!1809607 c!1013408) b!5741754))

(assert (= (and d!1809607 (not c!1013408)) b!5741753))

(assert (= (and b!5741753 res!2425321) b!5741756))

(assert (= (and b!5741756 c!1013410) b!5741763))

(assert (= (and b!5741756 (not c!1013410)) b!5741759))

(assert (= (and b!5741759 c!1013409) b!5741760))

(assert (= (and b!5741759 (not c!1013409)) b!5741761))

(assert (= (and b!5741760 (not res!2425320)) b!5741755))

(assert (= (and b!5741761 c!1013407) b!5741757))

(assert (= (and b!5741761 (not c!1013407)) b!5741758))

(assert (= (and b!5741757 (not res!2425319)) b!5741762))

(assert (= (or b!5741762 b!5741758) bm!438905))

(assert (= (or b!5741754 b!5741757) bm!438904))

(assert (=> bm!438904 m!6693426))

(declare-fun m!6693590 () Bool)

(assert (=> b!5741755 m!6693590))

(declare-fun m!6693592 () Bool)

(assert (=> b!5741760 m!6693592))

(declare-fun m!6693594 () Bool)

(assert (=> bm!438905 m!6693594))

(assert (=> b!5741299 d!1809607))

(declare-fun b!5741765 () Bool)

(declare-fun res!2425327 () Bool)

(declare-fun e!3529365 () Bool)

(assert (=> b!5741765 (=> (not res!2425327) (not e!3529365))))

(assert (=> b!5741765 (= res!2425327 (isEmpty!35323 (tail!11251 s!2326)))))

(declare-fun b!5741766 () Bool)

(declare-fun res!2425329 () Bool)

(assert (=> b!5741766 (=> (not res!2425329) (not e!3529365))))

(declare-fun call!438911 () Bool)

(assert (=> b!5741766 (= res!2425329 (not call!438911))))

(declare-fun b!5741767 () Bool)

(declare-fun e!3529362 () Bool)

(declare-fun lt!2286013 () Bool)

(assert (=> b!5741767 (= e!3529362 (not lt!2286013))))

(declare-fun b!5741768 () Bool)

(declare-fun e!3529363 () Bool)

(assert (=> b!5741768 (= e!3529363 (= lt!2286013 call!438911))))

(declare-fun b!5741769 () Bool)

(assert (=> b!5741769 (= e!3529365 (= (head!12156 s!2326) (c!1013308 r!7292)))))

(declare-fun b!5741770 () Bool)

(assert (=> b!5741770 (= e!3529363 e!3529362)))

(declare-fun c!1013412 () Bool)

(assert (=> b!5741770 (= c!1013412 (is-EmptyLang!15754 r!7292))))

(declare-fun b!5741771 () Bool)

(declare-fun res!2425323 () Bool)

(declare-fun e!3529360 () Bool)

(assert (=> b!5741771 (=> res!2425323 e!3529360)))

(assert (=> b!5741771 (= res!2425323 e!3529365)))

(declare-fun res!2425324 () Bool)

(assert (=> b!5741771 (=> (not res!2425324) (not e!3529365))))

(assert (=> b!5741771 (= res!2425324 lt!2286013)))

(declare-fun bm!438906 () Bool)

(assert (=> bm!438906 (= call!438911 (isEmpty!35323 s!2326))))

(declare-fun d!1809611 () Bool)

(assert (=> d!1809611 e!3529363))

(declare-fun c!1013411 () Bool)

(assert (=> d!1809611 (= c!1013411 (is-EmptyExpr!15754 r!7292))))

(declare-fun e!3529359 () Bool)

(assert (=> d!1809611 (= lt!2286013 e!3529359)))

(declare-fun c!1013413 () Bool)

(assert (=> d!1809611 (= c!1013413 (isEmpty!35323 s!2326))))

(assert (=> d!1809611 (validRegex!7490 r!7292)))

(assert (=> d!1809611 (= (matchR!7939 r!7292 s!2326) lt!2286013)))

(declare-fun b!5741772 () Bool)

(declare-fun res!2425328 () Bool)

(assert (=> b!5741772 (=> res!2425328 e!3529360)))

(assert (=> b!5741772 (= res!2425328 (not (is-ElementMatch!15754 r!7292)))))

(assert (=> b!5741772 (= e!3529362 e!3529360)))

(declare-fun b!5741773 () Bool)

(declare-fun e!3529364 () Bool)

(declare-fun e!3529361 () Bool)

(assert (=> b!5741773 (= e!3529364 e!3529361)))

(declare-fun res!2425330 () Bool)

(assert (=> b!5741773 (=> res!2425330 e!3529361)))

(assert (=> b!5741773 (= res!2425330 call!438911)))

(declare-fun b!5741774 () Bool)

(assert (=> b!5741774 (= e!3529360 e!3529364)))

(declare-fun res!2425325 () Bool)

(assert (=> b!5741774 (=> (not res!2425325) (not e!3529364))))

(assert (=> b!5741774 (= res!2425325 (not lt!2286013))))

(declare-fun b!5741775 () Bool)

(assert (=> b!5741775 (= e!3529359 (nullable!5786 r!7292))))

(declare-fun b!5741776 () Bool)

(assert (=> b!5741776 (= e!3529361 (not (= (head!12156 s!2326) (c!1013308 r!7292))))))

(declare-fun b!5741777 () Bool)

(assert (=> b!5741777 (= e!3529359 (matchR!7939 (derivativeStep!4541 r!7292 (head!12156 s!2326)) (tail!11251 s!2326)))))

(declare-fun b!5741778 () Bool)

(declare-fun res!2425326 () Bool)

(assert (=> b!5741778 (=> res!2425326 e!3529361)))

(assert (=> b!5741778 (= res!2425326 (not (isEmpty!35323 (tail!11251 s!2326))))))

(assert (= (and d!1809611 c!1013413) b!5741775))

(assert (= (and d!1809611 (not c!1013413)) b!5741777))

(assert (= (and d!1809611 c!1013411) b!5741768))

(assert (= (and d!1809611 (not c!1013411)) b!5741770))

(assert (= (and b!5741770 c!1013412) b!5741767))

(assert (= (and b!5741770 (not c!1013412)) b!5741772))

(assert (= (and b!5741772 (not res!2425328)) b!5741771))

(assert (= (and b!5741771 res!2425324) b!5741766))

(assert (= (and b!5741766 res!2425329) b!5741765))

(assert (= (and b!5741765 res!2425327) b!5741769))

(assert (= (and b!5741771 (not res!2425323)) b!5741774))

(assert (= (and b!5741774 res!2425325) b!5741773))

(assert (= (and b!5741773 (not res!2425330)) b!5741778))

(assert (= (and b!5741778 (not res!2425326)) b!5741776))

(assert (= (or b!5741768 b!5741766 b!5741773) bm!438906))

(declare-fun m!6693596 () Bool)

(assert (=> b!5741775 m!6693596))

(assert (=> b!5741769 m!6693424))

(assert (=> b!5741776 m!6693424))

(assert (=> bm!438906 m!6693426))

(assert (=> b!5741765 m!6693428))

(assert (=> b!5741765 m!6693428))

(assert (=> b!5741765 m!6693430))

(assert (=> d!1809611 m!6693426))

(assert (=> d!1809611 m!6693224))

(assert (=> b!5741777 m!6693424))

(assert (=> b!5741777 m!6693424))

(declare-fun m!6693598 () Bool)

(assert (=> b!5741777 m!6693598))

(assert (=> b!5741777 m!6693428))

(assert (=> b!5741777 m!6693598))

(assert (=> b!5741777 m!6693428))

(declare-fun m!6693600 () Bool)

(assert (=> b!5741777 m!6693600))

(assert (=> b!5741778 m!6693428))

(assert (=> b!5741778 m!6693428))

(assert (=> b!5741778 m!6693430))

(assert (=> b!5741299 d!1809611))

(declare-fun d!1809613 () Bool)

(assert (=> d!1809613 (= (matchR!7939 r!7292 s!2326) (matchRSpec!2857 r!7292 s!2326))))

(declare-fun lt!2286014 () Unit!156548)

(assert (=> d!1809613 (= lt!2286014 (choose!43559 r!7292 s!2326))))

(assert (=> d!1809613 (validRegex!7490 r!7292)))

(assert (=> d!1809613 (= (mainMatchTheorem!2857 r!7292 s!2326) lt!2286014)))

(declare-fun bs!1341846 () Bool)

(assert (= bs!1341846 d!1809613))

(assert (=> bs!1341846 m!6693204))

(assert (=> bs!1341846 m!6693202))

(declare-fun m!6693602 () Bool)

(assert (=> bs!1341846 m!6693602))

(assert (=> bs!1341846 m!6693224))

(assert (=> b!5741299 d!1809613))

(declare-fun d!1809615 () Bool)

(declare-fun e!3529368 () Bool)

(assert (=> d!1809615 e!3529368))

(declare-fun res!2425333 () Bool)

(assert (=> d!1809615 (=> (not res!2425333) (not e!3529368))))

(declare-fun lt!2286017 () List!63562)

(declare-fun noDuplicate!1667 (List!63562) Bool)

(assert (=> d!1809615 (= res!2425333 (noDuplicate!1667 lt!2286017))))

(declare-fun choose!43565 ((Set Context!10276)) List!63562)

(assert (=> d!1809615 (= lt!2286017 (choose!43565 z!1189))))

(assert (=> d!1809615 (= (toList!9538 z!1189) lt!2286017)))

(declare-fun b!5741781 () Bool)

(declare-fun content!11566 (List!63562) (Set Context!10276))

(assert (=> b!5741781 (= e!3529368 (= (content!11566 lt!2286017) z!1189))))

(assert (= (and d!1809615 res!2425333) b!5741781))

(declare-fun m!6693604 () Bool)

(assert (=> d!1809615 m!6693604))

(declare-fun m!6693606 () Bool)

(assert (=> d!1809615 m!6693606))

(declare-fun m!6693608 () Bool)

(assert (=> b!5741781 m!6693608))

(assert (=> b!5741301 d!1809615))

(declare-fun d!1809617 () Bool)

(assert (=> d!1809617 (= (isEmpty!35320 (t!376890 zl!343)) (is-Nil!63438 (t!376890 zl!343)))))

(assert (=> b!5741321 d!1809617))

(declare-fun b!5741782 () Bool)

(declare-fun e!3529369 () (Set Context!10276))

(assert (=> b!5741782 (= e!3529369 (as set.empty (Set Context!10276)))))

(declare-fun b!5741783 () Bool)

(declare-fun e!3529371 () (Set Context!10276))

(declare-fun call!438914 () (Set Context!10276))

(declare-fun call!438913 () (Set Context!10276))

(assert (=> b!5741783 (= e!3529371 (set.union call!438914 call!438913))))

(declare-fun b!5741784 () Bool)

(declare-fun call!438917 () (Set Context!10276))

(assert (=> b!5741784 (= e!3529369 call!438917)))

(declare-fun b!5741785 () Bool)

(declare-fun e!3529374 () (Set Context!10276))

(assert (=> b!5741785 (= e!3529371 e!3529374)))

(declare-fun c!1013417 () Bool)

(assert (=> b!5741785 (= c!1013417 (is-Concat!24599 (reg!16083 (regOne!32020 r!7292))))))

(declare-fun b!5741787 () Bool)

(assert (=> b!5741787 (= e!3529374 call!438917)))

(declare-fun b!5741788 () Bool)

(declare-fun e!3529370 () (Set Context!10276))

(assert (=> b!5741788 (= e!3529370 (set.insert lt!2285850 (as set.empty (Set Context!10276))))))

(declare-fun b!5741789 () Bool)

(declare-fun e!3529372 () Bool)

(assert (=> b!5741789 (= e!3529372 (nullable!5786 (regOne!32020 (reg!16083 (regOne!32020 r!7292)))))))

(declare-fun bm!438907 () Bool)

(declare-fun call!438912 () List!63561)

(declare-fun call!438916 () List!63561)

(assert (=> bm!438907 (= call!438912 call!438916)))

(declare-fun b!5741790 () Bool)

(declare-fun e!3529373 () (Set Context!10276))

(assert (=> b!5741790 (= e!3529370 e!3529373)))

(declare-fun c!1013416 () Bool)

(assert (=> b!5741790 (= c!1013416 (is-Union!15754 (reg!16083 (regOne!32020 r!7292))))))

(declare-fun c!1013414 () Bool)

(declare-fun bm!438908 () Bool)

(declare-fun call!438915 () (Set Context!10276))

(assert (=> bm!438908 (= call!438915 (derivationStepZipperDown!1096 (ite c!1013416 (regTwo!32021 (reg!16083 (regOne!32020 r!7292))) (ite c!1013414 (regTwo!32020 (reg!16083 (regOne!32020 r!7292))) (ite c!1013417 (regOne!32020 (reg!16083 (regOne!32020 r!7292))) (reg!16083 (reg!16083 (regOne!32020 r!7292)))))) (ite (or c!1013416 c!1013414) lt!2285850 (Context!10277 call!438912)) (h!69887 s!2326)))))

(declare-fun b!5741791 () Bool)

(assert (=> b!5741791 (= c!1013414 e!3529372)))

(declare-fun res!2425334 () Bool)

(assert (=> b!5741791 (=> (not res!2425334) (not e!3529372))))

(assert (=> b!5741791 (= res!2425334 (is-Concat!24599 (reg!16083 (regOne!32020 r!7292))))))

(assert (=> b!5741791 (= e!3529373 e!3529371)))

(declare-fun bm!438909 () Bool)

(assert (=> bm!438909 (= call!438916 ($colon$colon!1755 (exprs!5638 lt!2285850) (ite (or c!1013414 c!1013417) (regTwo!32020 (reg!16083 (regOne!32020 r!7292))) (reg!16083 (regOne!32020 r!7292)))))))

(declare-fun bm!438910 () Bool)

(assert (=> bm!438910 (= call!438917 call!438913)))

(declare-fun b!5741792 () Bool)

(declare-fun c!1013418 () Bool)

(assert (=> b!5741792 (= c!1013418 (is-Star!15754 (reg!16083 (regOne!32020 r!7292))))))

(assert (=> b!5741792 (= e!3529374 e!3529369)))

(declare-fun bm!438911 () Bool)

(assert (=> bm!438911 (= call!438914 (derivationStepZipperDown!1096 (ite c!1013416 (regOne!32021 (reg!16083 (regOne!32020 r!7292))) (regOne!32020 (reg!16083 (regOne!32020 r!7292)))) (ite c!1013416 lt!2285850 (Context!10277 call!438916)) (h!69887 s!2326)))))

(declare-fun bm!438912 () Bool)

(assert (=> bm!438912 (= call!438913 call!438915)))

(declare-fun d!1809619 () Bool)

(declare-fun c!1013415 () Bool)

(assert (=> d!1809619 (= c!1013415 (and (is-ElementMatch!15754 (reg!16083 (regOne!32020 r!7292))) (= (c!1013308 (reg!16083 (regOne!32020 r!7292))) (h!69887 s!2326))))))

(assert (=> d!1809619 (= (derivationStepZipperDown!1096 (reg!16083 (regOne!32020 r!7292)) lt!2285850 (h!69887 s!2326)) e!3529370)))

(declare-fun b!5741786 () Bool)

(assert (=> b!5741786 (= e!3529373 (set.union call!438914 call!438915))))

(assert (= (and d!1809619 c!1013415) b!5741788))

(assert (= (and d!1809619 (not c!1013415)) b!5741790))

(assert (= (and b!5741790 c!1013416) b!5741786))

(assert (= (and b!5741790 (not c!1013416)) b!5741791))

(assert (= (and b!5741791 res!2425334) b!5741789))

(assert (= (and b!5741791 c!1013414) b!5741783))

(assert (= (and b!5741791 (not c!1013414)) b!5741785))

(assert (= (and b!5741785 c!1013417) b!5741787))

(assert (= (and b!5741785 (not c!1013417)) b!5741792))

(assert (= (and b!5741792 c!1013418) b!5741784))

(assert (= (and b!5741792 (not c!1013418)) b!5741782))

(assert (= (or b!5741787 b!5741784) bm!438907))

(assert (= (or b!5741787 b!5741784) bm!438910))

(assert (= (or b!5741783 bm!438907) bm!438909))

(assert (= (or b!5741783 bm!438910) bm!438912))

(assert (= (or b!5741786 bm!438912) bm!438908))

(assert (= (or b!5741786 b!5741783) bm!438911))

(declare-fun m!6693610 () Bool)

(assert (=> bm!438909 m!6693610))

(declare-fun m!6693612 () Bool)

(assert (=> b!5741789 m!6693612))

(declare-fun m!6693614 () Bool)

(assert (=> bm!438911 m!6693614))

(declare-fun m!6693616 () Bool)

(assert (=> bm!438908 m!6693616))

(assert (=> b!5741788 m!6693182))

(assert (=> b!5741297 d!1809619))

(declare-fun d!1809621 () Bool)

(declare-fun lambda!311523 () Int)

(declare-fun forall!14873 (List!63561 Int) Bool)

(assert (=> d!1809621 (= (inv!82633 setElem!38542) (forall!14873 (exprs!5638 setElem!38542) lambda!311523))))

(declare-fun bs!1341847 () Bool)

(assert (= bs!1341847 d!1809621))

(declare-fun m!6693618 () Bool)

(assert (=> bs!1341847 m!6693618))

(assert (=> setNonEmpty!38542 d!1809621))

(declare-fun bs!1341848 () Bool)

(declare-fun d!1809623 () Bool)

(assert (= bs!1341848 (and d!1809623 d!1809621)))

(declare-fun lambda!311524 () Int)

(assert (=> bs!1341848 (= lambda!311524 lambda!311523)))

(assert (=> d!1809623 (= (inv!82633 (h!69886 zl!343)) (forall!14873 (exprs!5638 (h!69886 zl!343)) lambda!311524))))

(declare-fun bs!1341849 () Bool)

(assert (= bs!1341849 d!1809623))

(declare-fun m!6693630 () Bool)

(assert (=> bs!1341849 m!6693630))

(assert (=> b!5741298 d!1809623))

(declare-fun d!1809625 () Bool)

(declare-fun c!1013422 () Bool)

(assert (=> d!1809625 (= c!1013422 (isEmpty!35323 s!2326))))

(declare-fun e!3529378 () Bool)

(assert (=> d!1809625 (= (matchZipper!1892 lt!2285845 s!2326) e!3529378)))

(declare-fun b!5741799 () Bool)

(assert (=> b!5741799 (= e!3529378 (nullableZipper!1687 lt!2285845))))

(declare-fun b!5741800 () Bool)

(assert (=> b!5741800 (= e!3529378 (matchZipper!1892 (derivationStepZipper!1837 lt!2285845 (head!12156 s!2326)) (tail!11251 s!2326)))))

(assert (= (and d!1809625 c!1013422) b!5741799))

(assert (= (and d!1809625 (not c!1013422)) b!5741800))

(assert (=> d!1809625 m!6693426))

(declare-fun m!6693634 () Bool)

(assert (=> b!5741799 m!6693634))

(assert (=> b!5741800 m!6693424))

(assert (=> b!5741800 m!6693424))

(declare-fun m!6693636 () Bool)

(assert (=> b!5741800 m!6693636))

(assert (=> b!5741800 m!6693428))

(assert (=> b!5741800 m!6693636))

(assert (=> b!5741800 m!6693428))

(declare-fun m!6693638 () Bool)

(assert (=> b!5741800 m!6693638))

(assert (=> b!5741318 d!1809625))

(declare-fun d!1809629 () Bool)

(declare-fun c!1013424 () Bool)

(assert (=> d!1809629 (= c!1013424 (isEmpty!35323 (t!376891 s!2326)))))

(declare-fun e!3529380 () Bool)

(assert (=> d!1809629 (= (matchZipper!1892 lt!2285851 (t!376891 s!2326)) e!3529380)))

(declare-fun b!5741803 () Bool)

(assert (=> b!5741803 (= e!3529380 (nullableZipper!1687 lt!2285851))))

(declare-fun b!5741804 () Bool)

(assert (=> b!5741804 (= e!3529380 (matchZipper!1892 (derivationStepZipper!1837 lt!2285851 (head!12156 (t!376891 s!2326))) (tail!11251 (t!376891 s!2326))))))

(assert (= (and d!1809629 c!1013424) b!5741803))

(assert (= (and d!1809629 (not c!1013424)) b!5741804))

(assert (=> d!1809629 m!6693388))

(declare-fun m!6693640 () Bool)

(assert (=> b!5741803 m!6693640))

(assert (=> b!5741804 m!6693392))

(assert (=> b!5741804 m!6693392))

(declare-fun m!6693642 () Bool)

(assert (=> b!5741804 m!6693642))

(assert (=> b!5741804 m!6693396))

(assert (=> b!5741804 m!6693642))

(assert (=> b!5741804 m!6693396))

(declare-fun m!6693646 () Bool)

(assert (=> b!5741804 m!6693646))

(assert (=> b!5741318 d!1809629))

(declare-fun bm!438927 () Bool)

(declare-fun call!438935 () Int)

(declare-fun call!438933 () Int)

(assert (=> bm!438927 (= call!438935 call!438933)))

(declare-fun call!438938 () Int)

(declare-fun c!1013444 () Bool)

(declare-fun c!1013442 () Bool)

(declare-fun bm!438928 () Bool)

(assert (=> bm!438928 (= call!438938 (regexDepth!231 (ite c!1013442 (regOne!32021 r!7292) (ite c!1013444 (regOne!32020 r!7292) (reg!16083 r!7292)))))))

(declare-fun d!1809631 () Bool)

(declare-fun e!3529406 () Bool)

(assert (=> d!1809631 e!3529406))

(declare-fun res!2425341 () Bool)

(assert (=> d!1809631 (=> (not res!2425341) (not e!3529406))))

(declare-fun lt!2286023 () Int)

(assert (=> d!1809631 (= res!2425341 (> lt!2286023 0))))

(declare-fun e!3529403 () Int)

(assert (=> d!1809631 (= lt!2286023 e!3529403)))

(declare-fun c!1013441 () Bool)

(assert (=> d!1809631 (= c!1013441 (is-ElementMatch!15754 r!7292))))

(assert (=> d!1809631 (= (regexDepth!231 r!7292) lt!2286023)))

(declare-fun bm!438929 () Bool)

(declare-fun call!438934 () Int)

(assert (=> bm!438929 (= call!438934 (regexDepth!231 (ite c!1013442 (regTwo!32021 r!7292) (regTwo!32020 r!7292))))))

(declare-fun b!5741839 () Bool)

(declare-fun e!3529408 () Bool)

(assert (=> b!5741839 (= e!3529408 (> lt!2286023 call!438934))))

(declare-fun b!5741840 () Bool)

(declare-fun e!3529402 () Bool)

(assert (=> b!5741840 (= e!3529402 (> lt!2286023 call!438934))))

(declare-fun b!5741841 () Bool)

(declare-fun e!3529410 () Bool)

(assert (=> b!5741841 (= e!3529410 e!3529402)))

(declare-fun res!2425343 () Bool)

(assert (=> b!5741841 (= res!2425343 (> lt!2286023 call!438938))))

(assert (=> b!5741841 (=> (not res!2425343) (not e!3529402))))

(declare-fun b!5741842 () Bool)

(declare-fun e!3529401 () Int)

(assert (=> b!5741842 (= e!3529403 e!3529401)))

(declare-fun c!1013443 () Bool)

(assert (=> b!5741842 (= c!1013443 (is-Star!15754 r!7292))))

(declare-fun call!438937 () Int)

(declare-fun c!1013439 () Bool)

(declare-fun call!438932 () Int)

(declare-fun bm!438930 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!438930 (= call!438937 (maxBigInt!0 (ite c!1013439 call!438932 call!438935) (ite c!1013439 call!438935 call!438932)))))

(declare-fun b!5741843 () Bool)

(assert (=> b!5741843 (= c!1013439 (is-Union!15754 r!7292))))

(declare-fun e!3529409 () Int)

(assert (=> b!5741843 (= e!3529401 e!3529409)))

(declare-fun b!5741844 () Bool)

(declare-fun e!3529404 () Int)

(assert (=> b!5741844 (= e!3529409 e!3529404)))

(declare-fun c!1013445 () Bool)

(assert (=> b!5741844 (= c!1013445 (is-Concat!24599 r!7292))))

(declare-fun b!5741845 () Bool)

(declare-fun c!1013440 () Bool)

(assert (=> b!5741845 (= c!1013440 (is-Star!15754 r!7292))))

(declare-fun e!3529405 () Bool)

(declare-fun e!3529407 () Bool)

(assert (=> b!5741845 (= e!3529405 e!3529407)))

(declare-fun b!5741846 () Bool)

(assert (=> b!5741846 (= e!3529406 e!3529410)))

(assert (=> b!5741846 (= c!1013442 (is-Union!15754 r!7292))))

(declare-fun b!5741847 () Bool)

(assert (=> b!5741847 (= e!3529409 (+ 1 call!438937))))

(declare-fun bm!438931 () Bool)

(declare-fun call!438936 () Int)

(assert (=> bm!438931 (= call!438936 call!438938)))

(declare-fun b!5741848 () Bool)

(assert (=> b!5741848 (= e!3529401 (+ 1 call!438933))))

(declare-fun b!5741849 () Bool)

(assert (=> b!5741849 (= e!3529404 1)))

(declare-fun bm!438932 () Bool)

(assert (=> bm!438932 (= call!438933 (regexDepth!231 (ite c!1013443 (reg!16083 r!7292) (ite c!1013439 (regTwo!32021 r!7292) (regOne!32020 r!7292)))))))

(declare-fun b!5741850 () Bool)

(assert (=> b!5741850 (= e!3529407 (> lt!2286023 call!438936))))

(declare-fun b!5741851 () Bool)

(assert (=> b!5741851 (= e!3529404 (+ 1 call!438937))))

(declare-fun bm!438933 () Bool)

(assert (=> bm!438933 (= call!438932 (regexDepth!231 (ite c!1013439 (regOne!32021 r!7292) (regTwo!32020 r!7292))))))

(declare-fun b!5741852 () Bool)

(declare-fun res!2425342 () Bool)

(assert (=> b!5741852 (=> (not res!2425342) (not e!3529408))))

(assert (=> b!5741852 (= res!2425342 (> lt!2286023 call!438936))))

(assert (=> b!5741852 (= e!3529405 e!3529408)))

(declare-fun b!5741853 () Bool)

(assert (=> b!5741853 (= e!3529403 1)))

(declare-fun b!5741854 () Bool)

(assert (=> b!5741854 (= e!3529410 e!3529405)))

(assert (=> b!5741854 (= c!1013444 (is-Concat!24599 r!7292))))

(declare-fun b!5741855 () Bool)

(assert (=> b!5741855 (= e!3529407 (= lt!2286023 1))))

(assert (= (and d!1809631 c!1013441) b!5741853))

(assert (= (and d!1809631 (not c!1013441)) b!5741842))

(assert (= (and b!5741842 c!1013443) b!5741848))

(assert (= (and b!5741842 (not c!1013443)) b!5741843))

(assert (= (and b!5741843 c!1013439) b!5741847))

(assert (= (and b!5741843 (not c!1013439)) b!5741844))

(assert (= (and b!5741844 c!1013445) b!5741851))

(assert (= (and b!5741844 (not c!1013445)) b!5741849))

(assert (= (or b!5741847 b!5741851) bm!438927))

(assert (= (or b!5741847 b!5741851) bm!438933))

(assert (= (or b!5741847 b!5741851) bm!438930))

(assert (= (or b!5741848 bm!438927) bm!438932))

(assert (= (and d!1809631 res!2425341) b!5741846))

(assert (= (and b!5741846 c!1013442) b!5741841))

(assert (= (and b!5741846 (not c!1013442)) b!5741854))

(assert (= (and b!5741841 res!2425343) b!5741840))

(assert (= (and b!5741854 c!1013444) b!5741852))

(assert (= (and b!5741854 (not c!1013444)) b!5741845))

(assert (= (and b!5741852 res!2425342) b!5741839))

(assert (= (and b!5741845 c!1013440) b!5741850))

(assert (= (and b!5741845 (not c!1013440)) b!5741855))

(assert (= (or b!5741852 b!5741850) bm!438931))

(assert (= (or b!5741840 b!5741839) bm!438929))

(assert (= (or b!5741841 bm!438931) bm!438928))

(declare-fun m!6693658 () Bool)

(assert (=> bm!438929 m!6693658))

(declare-fun m!6693660 () Bool)

(assert (=> bm!438930 m!6693660))

(declare-fun m!6693662 () Bool)

(assert (=> bm!438933 m!6693662))

(declare-fun m!6693664 () Bool)

(assert (=> bm!438932 m!6693664))

(declare-fun m!6693666 () Bool)

(assert (=> bm!438928 m!6693666))

(assert (=> b!5741315 d!1809631))

(declare-fun bm!438934 () Bool)

(declare-fun call!438942 () Int)

(declare-fun call!438940 () Int)

(assert (=> bm!438934 (= call!438942 call!438940)))

(declare-fun c!1013451 () Bool)

(declare-fun bm!438935 () Bool)

(declare-fun call!438945 () Int)

(declare-fun c!1013449 () Bool)

(assert (=> bm!438935 (= call!438945 (regexDepth!231 (ite c!1013449 (regOne!32021 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) (ite c!1013451 (regOne!32020 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) (reg!16083 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343)))))))))))

(declare-fun d!1809643 () Bool)

(declare-fun e!3529416 () Bool)

(assert (=> d!1809643 e!3529416))

(declare-fun res!2425344 () Bool)

(assert (=> d!1809643 (=> (not res!2425344) (not e!3529416))))

(declare-fun lt!2286024 () Int)

(assert (=> d!1809643 (= res!2425344 (> lt!2286024 0))))

(declare-fun e!3529413 () Int)

(assert (=> d!1809643 (= lt!2286024 e!3529413)))

(declare-fun c!1013448 () Bool)

(assert (=> d!1809643 (= c!1013448 (is-ElementMatch!15754 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(assert (=> d!1809643 (= (regexDepth!231 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) lt!2286024)))

(declare-fun bm!438936 () Bool)

(declare-fun call!438941 () Int)

(assert (=> bm!438936 (= call!438941 (regexDepth!231 (ite c!1013449 (regTwo!32021 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) (regTwo!32020 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))))

(declare-fun b!5741856 () Bool)

(declare-fun e!3529418 () Bool)

(assert (=> b!5741856 (= e!3529418 (> lt!2286024 call!438941))))

(declare-fun b!5741857 () Bool)

(declare-fun e!3529412 () Bool)

(assert (=> b!5741857 (= e!3529412 (> lt!2286024 call!438941))))

(declare-fun b!5741858 () Bool)

(declare-fun e!3529420 () Bool)

(assert (=> b!5741858 (= e!3529420 e!3529412)))

(declare-fun res!2425346 () Bool)

(assert (=> b!5741858 (= res!2425346 (> lt!2286024 call!438945))))

(assert (=> b!5741858 (=> (not res!2425346) (not e!3529412))))

(declare-fun b!5741859 () Bool)

(declare-fun e!3529411 () Int)

(assert (=> b!5741859 (= e!3529413 e!3529411)))

(declare-fun c!1013450 () Bool)

(assert (=> b!5741859 (= c!1013450 (is-Star!15754 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun c!1013446 () Bool)

(declare-fun call!438939 () Int)

(declare-fun bm!438937 () Bool)

(declare-fun call!438944 () Int)

(assert (=> bm!438937 (= call!438944 (maxBigInt!0 (ite c!1013446 call!438939 call!438942) (ite c!1013446 call!438942 call!438939)))))

(declare-fun b!5741860 () Bool)

(assert (=> b!5741860 (= c!1013446 (is-Union!15754 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun e!3529419 () Int)

(assert (=> b!5741860 (= e!3529411 e!3529419)))

(declare-fun b!5741861 () Bool)

(declare-fun e!3529414 () Int)

(assert (=> b!5741861 (= e!3529419 e!3529414)))

(declare-fun c!1013452 () Bool)

(assert (=> b!5741861 (= c!1013452 (is-Concat!24599 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741862 () Bool)

(declare-fun c!1013447 () Bool)

(assert (=> b!5741862 (= c!1013447 (is-Star!15754 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun e!3529415 () Bool)

(declare-fun e!3529417 () Bool)

(assert (=> b!5741862 (= e!3529415 e!3529417)))

(declare-fun b!5741863 () Bool)

(assert (=> b!5741863 (= e!3529416 e!3529420)))

(assert (=> b!5741863 (= c!1013449 (is-Union!15754 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741864 () Bool)

(assert (=> b!5741864 (= e!3529419 (+ 1 call!438944))))

(declare-fun bm!438938 () Bool)

(declare-fun call!438943 () Int)

(assert (=> bm!438938 (= call!438943 call!438945)))

(declare-fun b!5741865 () Bool)

(assert (=> b!5741865 (= e!3529411 (+ 1 call!438940))))

(declare-fun b!5741866 () Bool)

(assert (=> b!5741866 (= e!3529414 1)))

(declare-fun bm!438939 () Bool)

(assert (=> bm!438939 (= call!438940 (regexDepth!231 (ite c!1013450 (reg!16083 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) (ite c!1013446 (regTwo!32021 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) (regOne!32020 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343)))))))))))

(declare-fun b!5741867 () Bool)

(assert (=> b!5741867 (= e!3529417 (> lt!2286024 call!438943))))

(declare-fun b!5741868 () Bool)

(assert (=> b!5741868 (= e!3529414 (+ 1 call!438944))))

(declare-fun bm!438940 () Bool)

(assert (=> bm!438940 (= call!438939 (regexDepth!231 (ite c!1013446 (regOne!32021 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))) (regTwo!32020 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))))

(declare-fun b!5741869 () Bool)

(declare-fun res!2425345 () Bool)

(assert (=> b!5741869 (=> (not res!2425345) (not e!3529418))))

(assert (=> b!5741869 (= res!2425345 (> lt!2286024 call!438943))))

(assert (=> b!5741869 (= e!3529415 e!3529418)))

(declare-fun b!5741870 () Bool)

(assert (=> b!5741870 (= e!3529413 1)))

(declare-fun b!5741871 () Bool)

(assert (=> b!5741871 (= e!3529420 e!3529415)))

(assert (=> b!5741871 (= c!1013451 (is-Concat!24599 (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741872 () Bool)

(assert (=> b!5741872 (= e!3529417 (= lt!2286024 1))))

(assert (= (and d!1809643 c!1013448) b!5741870))

(assert (= (and d!1809643 (not c!1013448)) b!5741859))

(assert (= (and b!5741859 c!1013450) b!5741865))

(assert (= (and b!5741859 (not c!1013450)) b!5741860))

(assert (= (and b!5741860 c!1013446) b!5741864))

(assert (= (and b!5741860 (not c!1013446)) b!5741861))

(assert (= (and b!5741861 c!1013452) b!5741868))

(assert (= (and b!5741861 (not c!1013452)) b!5741866))

(assert (= (or b!5741864 b!5741868) bm!438934))

(assert (= (or b!5741864 b!5741868) bm!438940))

(assert (= (or b!5741864 b!5741868) bm!438937))

(assert (= (or b!5741865 bm!438934) bm!438939))

(assert (= (and d!1809643 res!2425344) b!5741863))

(assert (= (and b!5741863 c!1013449) b!5741858))

(assert (= (and b!5741863 (not c!1013449)) b!5741871))

(assert (= (and b!5741858 res!2425346) b!5741857))

(assert (= (and b!5741871 c!1013451) b!5741869))

(assert (= (and b!5741871 (not c!1013451)) b!5741862))

(assert (= (and b!5741869 res!2425345) b!5741856))

(assert (= (and b!5741862 c!1013447) b!5741867))

(assert (= (and b!5741862 (not c!1013447)) b!5741872))

(assert (= (or b!5741869 b!5741867) bm!438938))

(assert (= (or b!5741857 b!5741856) bm!438936))

(assert (= (or b!5741858 bm!438938) bm!438935))

(declare-fun m!6693668 () Bool)

(assert (=> bm!438936 m!6693668))

(declare-fun m!6693670 () Bool)

(assert (=> bm!438937 m!6693670))

(declare-fun m!6693672 () Bool)

(assert (=> bm!438940 m!6693672))

(declare-fun m!6693674 () Bool)

(assert (=> bm!438939 m!6693674))

(declare-fun m!6693676 () Bool)

(assert (=> bm!438935 m!6693676))

(assert (=> b!5741315 d!1809643))

(declare-fun bs!1341854 () Bool)

(declare-fun d!1809645 () Bool)

(assert (= bs!1341854 (and d!1809645 d!1809621)))

(declare-fun lambda!311530 () Int)

(assert (=> bs!1341854 (= lambda!311530 lambda!311523)))

(declare-fun bs!1341855 () Bool)

(assert (= bs!1341855 (and d!1809645 d!1809623)))

(assert (=> bs!1341855 (= lambda!311530 lambda!311524)))

(declare-fun b!5741893 () Bool)

(declare-fun e!3529436 () Bool)

(declare-fun lt!2286027 () Regex!15754)

(declare-fun head!12157 (List!63561) Regex!15754)

(assert (=> b!5741893 (= e!3529436 (= lt!2286027 (head!12157 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741894 () Bool)

(declare-fun e!3529438 () Regex!15754)

(declare-fun e!3529434 () Regex!15754)

(assert (=> b!5741894 (= e!3529438 e!3529434)))

(declare-fun c!1013464 () Bool)

(assert (=> b!5741894 (= c!1013464 (is-Cons!63437 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741895 () Bool)

(declare-fun e!3529435 () Bool)

(declare-fun e!3529437 () Bool)

(assert (=> b!5741895 (= e!3529435 e!3529437)))

(declare-fun c!1013461 () Bool)

(assert (=> b!5741895 (= c!1013461 (isEmpty!35319 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> d!1809645 e!3529435))

(declare-fun res!2425352 () Bool)

(assert (=> d!1809645 (=> (not res!2425352) (not e!3529435))))

(assert (=> d!1809645 (= res!2425352 (validRegex!7490 lt!2286027))))

(assert (=> d!1809645 (= lt!2286027 e!3529438)))

(declare-fun c!1013463 () Bool)

(declare-fun e!3529433 () Bool)

(assert (=> d!1809645 (= c!1013463 e!3529433)))

(declare-fun res!2425351 () Bool)

(assert (=> d!1809645 (=> (not res!2425351) (not e!3529433))))

(assert (=> d!1809645 (= res!2425351 (is-Cons!63437 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(assert (=> d!1809645 (forall!14873 (t!376889 (exprs!5638 (h!69886 zl!343))) lambda!311530)))

(assert (=> d!1809645 (= (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343)))) lt!2286027)))

(declare-fun b!5741896 () Bool)

(assert (=> b!5741896 (= e!3529434 EmptyExpr!15754)))

(declare-fun b!5741897 () Bool)

(declare-fun isConcat!770 (Regex!15754) Bool)

(assert (=> b!5741897 (= e!3529436 (isConcat!770 lt!2286027))))

(declare-fun b!5741898 () Bool)

(assert (=> b!5741898 (= e!3529437 e!3529436)))

(declare-fun c!1013462 () Bool)

(declare-fun tail!11253 (List!63561) List!63561)

(assert (=> b!5741898 (= c!1013462 (isEmpty!35319 (tail!11253 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741899 () Bool)

(assert (=> b!5741899 (= e!3529438 (h!69885 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741900 () Bool)

(assert (=> b!5741900 (= e!3529433 (isEmpty!35319 (t!376889 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(declare-fun b!5741901 () Bool)

(declare-fun isEmptyExpr!1247 (Regex!15754) Bool)

(assert (=> b!5741901 (= e!3529437 (isEmptyExpr!1247 lt!2286027))))

(declare-fun b!5741902 () Bool)

(assert (=> b!5741902 (= e!3529434 (Concat!24599 (h!69885 (t!376889 (exprs!5638 (h!69886 zl!343)))) (generalisedConcat!1369 (t!376889 (t!376889 (exprs!5638 (h!69886 zl!343)))))))))

(assert (= (and d!1809645 res!2425351) b!5741900))

(assert (= (and d!1809645 c!1013463) b!5741899))

(assert (= (and d!1809645 (not c!1013463)) b!5741894))

(assert (= (and b!5741894 c!1013464) b!5741902))

(assert (= (and b!5741894 (not c!1013464)) b!5741896))

(assert (= (and d!1809645 res!2425352) b!5741895))

(assert (= (and b!5741895 c!1013461) b!5741901))

(assert (= (and b!5741895 (not c!1013461)) b!5741898))

(assert (= (and b!5741898 c!1013462) b!5741893))

(assert (= (and b!5741898 (not c!1013462)) b!5741897))

(declare-fun m!6693678 () Bool)

(assert (=> d!1809645 m!6693678))

(declare-fun m!6693680 () Bool)

(assert (=> d!1809645 m!6693680))

(declare-fun m!6693682 () Bool)

(assert (=> b!5741902 m!6693682))

(declare-fun m!6693684 () Bool)

(assert (=> b!5741900 m!6693684))

(declare-fun m!6693686 () Bool)

(assert (=> b!5741901 m!6693686))

(assert (=> b!5741895 m!6693230))

(declare-fun m!6693688 () Bool)

(assert (=> b!5741898 m!6693688))

(assert (=> b!5741898 m!6693688))

(declare-fun m!6693690 () Bool)

(assert (=> b!5741898 m!6693690))

(declare-fun m!6693692 () Bool)

(assert (=> b!5741897 m!6693692))

(declare-fun m!6693694 () Bool)

(assert (=> b!5741893 m!6693694))

(assert (=> b!5741315 d!1809645))

(declare-fun d!1809647 () Bool)

(declare-fun c!1013465 () Bool)

(assert (=> d!1809647 (= c!1013465 (isEmpty!35323 s!2326))))

(declare-fun e!3529439 () Bool)

(assert (=> d!1809647 (= (matchZipper!1892 z!1189 s!2326) e!3529439)))

(declare-fun b!5741903 () Bool)

(assert (=> b!5741903 (= e!3529439 (nullableZipper!1687 z!1189))))

(declare-fun b!5741904 () Bool)

(assert (=> b!5741904 (= e!3529439 (matchZipper!1892 (derivationStepZipper!1837 z!1189 (head!12156 s!2326)) (tail!11251 s!2326)))))

(assert (= (and d!1809647 c!1013465) b!5741903))

(assert (= (and d!1809647 (not c!1013465)) b!5741904))

(assert (=> d!1809647 m!6693426))

(declare-fun m!6693696 () Bool)

(assert (=> b!5741903 m!6693696))

(assert (=> b!5741904 m!6693424))

(assert (=> b!5741904 m!6693424))

(declare-fun m!6693698 () Bool)

(assert (=> b!5741904 m!6693698))

(assert (=> b!5741904 m!6693428))

(assert (=> b!5741904 m!6693698))

(assert (=> b!5741904 m!6693428))

(declare-fun m!6693700 () Bool)

(assert (=> b!5741904 m!6693700))

(assert (=> b!5741317 d!1809647))

(declare-fun bs!1341856 () Bool)

(declare-fun d!1809649 () Bool)

(assert (= bs!1341856 (and d!1809649 d!1809621)))

(declare-fun lambda!311531 () Int)

(assert (=> bs!1341856 (= lambda!311531 lambda!311523)))

(declare-fun bs!1341857 () Bool)

(assert (= bs!1341857 (and d!1809649 d!1809623)))

(assert (=> bs!1341857 (= lambda!311531 lambda!311524)))

(declare-fun bs!1341858 () Bool)

(assert (= bs!1341858 (and d!1809649 d!1809645)))

(assert (=> bs!1341858 (= lambda!311531 lambda!311530)))

(declare-fun b!5741905 () Bool)

(declare-fun e!3529443 () Bool)

(declare-fun lt!2286028 () Regex!15754)

(assert (=> b!5741905 (= e!3529443 (= lt!2286028 (head!12157 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741906 () Bool)

(declare-fun e!3529445 () Regex!15754)

(declare-fun e!3529441 () Regex!15754)

(assert (=> b!5741906 (= e!3529445 e!3529441)))

(declare-fun c!1013469 () Bool)

(assert (=> b!5741906 (= c!1013469 (is-Cons!63437 (exprs!5638 (h!69886 zl!343))))))

(declare-fun b!5741907 () Bool)

(declare-fun e!3529442 () Bool)

(declare-fun e!3529444 () Bool)

(assert (=> b!5741907 (= e!3529442 e!3529444)))

(declare-fun c!1013466 () Bool)

(assert (=> b!5741907 (= c!1013466 (isEmpty!35319 (exprs!5638 (h!69886 zl!343))))))

(assert (=> d!1809649 e!3529442))

(declare-fun res!2425354 () Bool)

(assert (=> d!1809649 (=> (not res!2425354) (not e!3529442))))

(assert (=> d!1809649 (= res!2425354 (validRegex!7490 lt!2286028))))

(assert (=> d!1809649 (= lt!2286028 e!3529445)))

(declare-fun c!1013468 () Bool)

(declare-fun e!3529440 () Bool)

(assert (=> d!1809649 (= c!1013468 e!3529440)))

(declare-fun res!2425353 () Bool)

(assert (=> d!1809649 (=> (not res!2425353) (not e!3529440))))

(assert (=> d!1809649 (= res!2425353 (is-Cons!63437 (exprs!5638 (h!69886 zl!343))))))

(assert (=> d!1809649 (forall!14873 (exprs!5638 (h!69886 zl!343)) lambda!311531)))

(assert (=> d!1809649 (= (generalisedConcat!1369 (exprs!5638 (h!69886 zl!343))) lt!2286028)))

(declare-fun b!5741908 () Bool)

(assert (=> b!5741908 (= e!3529441 EmptyExpr!15754)))

(declare-fun b!5741909 () Bool)

(assert (=> b!5741909 (= e!3529443 (isConcat!770 lt!2286028))))

(declare-fun b!5741910 () Bool)

(assert (=> b!5741910 (= e!3529444 e!3529443)))

(declare-fun c!1013467 () Bool)

(assert (=> b!5741910 (= c!1013467 (isEmpty!35319 (tail!11253 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741911 () Bool)

(assert (=> b!5741911 (= e!3529445 (h!69885 (exprs!5638 (h!69886 zl!343))))))

(declare-fun b!5741912 () Bool)

(assert (=> b!5741912 (= e!3529440 (isEmpty!35319 (t!376889 (exprs!5638 (h!69886 zl!343)))))))

(declare-fun b!5741913 () Bool)

(assert (=> b!5741913 (= e!3529444 (isEmptyExpr!1247 lt!2286028))))

(declare-fun b!5741914 () Bool)

(assert (=> b!5741914 (= e!3529441 (Concat!24599 (h!69885 (exprs!5638 (h!69886 zl!343))) (generalisedConcat!1369 (t!376889 (exprs!5638 (h!69886 zl!343))))))))

(assert (= (and d!1809649 res!2425353) b!5741912))

(assert (= (and d!1809649 c!1013468) b!5741911))

(assert (= (and d!1809649 (not c!1013468)) b!5741906))

(assert (= (and b!5741906 c!1013469) b!5741914))

(assert (= (and b!5741906 (not c!1013469)) b!5741908))

(assert (= (and d!1809649 res!2425354) b!5741907))

(assert (= (and b!5741907 c!1013466) b!5741913))

(assert (= (and b!5741907 (not c!1013466)) b!5741910))

(assert (= (and b!5741910 c!1013467) b!5741905))

(assert (= (and b!5741910 (not c!1013467)) b!5741909))

(declare-fun m!6693702 () Bool)

(assert (=> d!1809649 m!6693702))

(declare-fun m!6693704 () Bool)

(assert (=> d!1809649 m!6693704))

(assert (=> b!5741914 m!6693154))

(assert (=> b!5741912 m!6693230))

(declare-fun m!6693706 () Bool)

(assert (=> b!5741913 m!6693706))

(declare-fun m!6693708 () Bool)

(assert (=> b!5741907 m!6693708))

(declare-fun m!6693710 () Bool)

(assert (=> b!5741910 m!6693710))

(assert (=> b!5741910 m!6693710))

(declare-fun m!6693712 () Bool)

(assert (=> b!5741910 m!6693712))

(declare-fun m!6693714 () Bool)

(assert (=> b!5741909 m!6693714))

(declare-fun m!6693716 () Bool)

(assert (=> b!5741905 m!6693716))

(assert (=> b!5741313 d!1809649))

(declare-fun bs!1341859 () Bool)

(declare-fun d!1809651 () Bool)

(assert (= bs!1341859 (and d!1809651 d!1809621)))

(declare-fun lambda!311534 () Int)

(assert (=> bs!1341859 (= lambda!311534 lambda!311523)))

(declare-fun bs!1341860 () Bool)

(assert (= bs!1341860 (and d!1809651 d!1809623)))

(assert (=> bs!1341860 (= lambda!311534 lambda!311524)))

(declare-fun bs!1341861 () Bool)

(assert (= bs!1341861 (and d!1809651 d!1809645)))

(assert (=> bs!1341861 (= lambda!311534 lambda!311530)))

(declare-fun bs!1341862 () Bool)

(assert (= bs!1341862 (and d!1809651 d!1809649)))

(assert (=> bs!1341862 (= lambda!311534 lambda!311531)))

(declare-fun b!5741945 () Bool)

(declare-fun e!3529465 () Bool)

(declare-fun lt!2286037 () Regex!15754)

(declare-fun isUnion!686 (Regex!15754) Bool)

(assert (=> b!5741945 (= e!3529465 (isUnion!686 lt!2286037))))

(declare-fun b!5741946 () Bool)

(declare-fun e!3529466 () Bool)

(assert (=> b!5741946 (= e!3529466 (isEmpty!35319 (t!376889 (unfocusZipperList!1182 zl!343))))))

(declare-fun e!3529467 () Bool)

(assert (=> d!1809651 e!3529467))

(declare-fun res!2425362 () Bool)

(assert (=> d!1809651 (=> (not res!2425362) (not e!3529467))))

(assert (=> d!1809651 (= res!2425362 (validRegex!7490 lt!2286037))))

(declare-fun e!3529464 () Regex!15754)

(assert (=> d!1809651 (= lt!2286037 e!3529464)))

(declare-fun c!1013482 () Bool)

(assert (=> d!1809651 (= c!1013482 e!3529466)))

(declare-fun res!2425361 () Bool)

(assert (=> d!1809651 (=> (not res!2425361) (not e!3529466))))

(assert (=> d!1809651 (= res!2425361 (is-Cons!63437 (unfocusZipperList!1182 zl!343)))))

(assert (=> d!1809651 (forall!14873 (unfocusZipperList!1182 zl!343) lambda!311534)))

(assert (=> d!1809651 (= (generalisedUnion!1617 (unfocusZipperList!1182 zl!343)) lt!2286037)))

(declare-fun b!5741947 () Bool)

(declare-fun e!3529469 () Bool)

(assert (=> b!5741947 (= e!3529469 e!3529465)))

(declare-fun c!1013485 () Bool)

(assert (=> b!5741947 (= c!1013485 (isEmpty!35319 (tail!11253 (unfocusZipperList!1182 zl!343))))))

(declare-fun b!5741948 () Bool)

(assert (=> b!5741948 (= e!3529464 (h!69885 (unfocusZipperList!1182 zl!343)))))

(declare-fun b!5741949 () Bool)

(declare-fun e!3529468 () Regex!15754)

(assert (=> b!5741949 (= e!3529464 e!3529468)))

(declare-fun c!1013484 () Bool)

(assert (=> b!5741949 (= c!1013484 (is-Cons!63437 (unfocusZipperList!1182 zl!343)))))

(declare-fun b!5741950 () Bool)

(assert (=> b!5741950 (= e!3529468 (Union!15754 (h!69885 (unfocusZipperList!1182 zl!343)) (generalisedUnion!1617 (t!376889 (unfocusZipperList!1182 zl!343)))))))

(declare-fun b!5741951 () Bool)

(assert (=> b!5741951 (= e!3529467 e!3529469)))

(declare-fun c!1013483 () Bool)

(assert (=> b!5741951 (= c!1013483 (isEmpty!35319 (unfocusZipperList!1182 zl!343)))))

(declare-fun b!5741952 () Bool)

(assert (=> b!5741952 (= e!3529465 (= lt!2286037 (head!12157 (unfocusZipperList!1182 zl!343))))))

(declare-fun b!5741953 () Bool)

(assert (=> b!5741953 (= e!3529468 EmptyLang!15754)))

(declare-fun b!5741954 () Bool)

(declare-fun isEmptyLang!1256 (Regex!15754) Bool)

(assert (=> b!5741954 (= e!3529469 (isEmptyLang!1256 lt!2286037))))

(assert (= (and d!1809651 res!2425361) b!5741946))

(assert (= (and d!1809651 c!1013482) b!5741948))

(assert (= (and d!1809651 (not c!1013482)) b!5741949))

(assert (= (and b!5741949 c!1013484) b!5741950))

(assert (= (and b!5741949 (not c!1013484)) b!5741953))

(assert (= (and d!1809651 res!2425362) b!5741951))

(assert (= (and b!5741951 c!1013483) b!5741954))

(assert (= (and b!5741951 (not c!1013483)) b!5741947))

(assert (= (and b!5741947 c!1013485) b!5741952))

(assert (= (and b!5741947 (not c!1013485)) b!5741945))

(declare-fun m!6693718 () Bool)

(assert (=> d!1809651 m!6693718))

(assert (=> d!1809651 m!6693138))

(declare-fun m!6693720 () Bool)

(assert (=> d!1809651 m!6693720))

(declare-fun m!6693722 () Bool)

(assert (=> b!5741950 m!6693722))

(assert (=> b!5741947 m!6693138))

(declare-fun m!6693724 () Bool)

(assert (=> b!5741947 m!6693724))

(assert (=> b!5741947 m!6693724))

(declare-fun m!6693726 () Bool)

(assert (=> b!5741947 m!6693726))

(declare-fun m!6693728 () Bool)

(assert (=> b!5741954 m!6693728))

(declare-fun m!6693730 () Bool)

(assert (=> b!5741946 m!6693730))

(assert (=> b!5741952 m!6693138))

(declare-fun m!6693732 () Bool)

(assert (=> b!5741952 m!6693732))

(assert (=> b!5741951 m!6693138))

(declare-fun m!6693734 () Bool)

(assert (=> b!5741951 m!6693734))

(declare-fun m!6693736 () Bool)

(assert (=> b!5741945 m!6693736))

(assert (=> b!5741292 d!1809651))

(declare-fun bs!1341863 () Bool)

(declare-fun d!1809653 () Bool)

(assert (= bs!1341863 (and d!1809653 d!1809651)))

(declare-fun lambda!311537 () Int)

(assert (=> bs!1341863 (= lambda!311537 lambda!311534)))

(declare-fun bs!1341864 () Bool)

(assert (= bs!1341864 (and d!1809653 d!1809649)))

(assert (=> bs!1341864 (= lambda!311537 lambda!311531)))

(declare-fun bs!1341865 () Bool)

(assert (= bs!1341865 (and d!1809653 d!1809621)))

(assert (=> bs!1341865 (= lambda!311537 lambda!311523)))

(declare-fun bs!1341866 () Bool)

(assert (= bs!1341866 (and d!1809653 d!1809623)))

(assert (=> bs!1341866 (= lambda!311537 lambda!311524)))

(declare-fun bs!1341867 () Bool)

(assert (= bs!1341867 (and d!1809653 d!1809645)))

(assert (=> bs!1341867 (= lambda!311537 lambda!311530)))

(declare-fun lt!2286040 () List!63561)

(assert (=> d!1809653 (forall!14873 lt!2286040 lambda!311537)))

(declare-fun e!3529476 () List!63561)

(assert (=> d!1809653 (= lt!2286040 e!3529476)))

(declare-fun c!1013488 () Bool)

(assert (=> d!1809653 (= c!1013488 (is-Cons!63438 zl!343))))

(assert (=> d!1809653 (= (unfocusZipperList!1182 zl!343) lt!2286040)))

(declare-fun b!5741967 () Bool)

(assert (=> b!5741967 (= e!3529476 (Cons!63437 (generalisedConcat!1369 (exprs!5638 (h!69886 zl!343))) (unfocusZipperList!1182 (t!376890 zl!343))))))

(declare-fun b!5741968 () Bool)

(assert (=> b!5741968 (= e!3529476 Nil!63437)))

(assert (= (and d!1809653 c!1013488) b!5741967))

(assert (= (and d!1809653 (not c!1013488)) b!5741968))

(declare-fun m!6693738 () Bool)

(assert (=> d!1809653 m!6693738))

(assert (=> b!5741967 m!6693232))

(declare-fun m!6693740 () Bool)

(assert (=> b!5741967 m!6693740))

(assert (=> b!5741292 d!1809653))

(declare-fun bs!1341868 () Bool)

(declare-fun d!1809655 () Bool)

(assert (= bs!1341868 (and d!1809655 b!5741326)))

(declare-fun lambda!311538 () Int)

(assert (=> bs!1341868 (= lambda!311538 lambda!311478)))

(declare-fun bs!1341869 () Bool)

(assert (= bs!1341869 (and d!1809655 d!1809605)))

(assert (=> bs!1341869 (= lambda!311538 lambda!311518)))

(assert (=> d!1809655 true))

(assert (=> d!1809655 (= (derivationStepZipper!1837 lt!2285833 (h!69887 s!2326)) (flatMap!1367 lt!2285833 lambda!311538))))

(declare-fun bs!1341870 () Bool)

(assert (= bs!1341870 d!1809655))

(declare-fun m!6693742 () Bool)

(assert (=> bs!1341870 m!6693742))

(assert (=> b!5741293 d!1809655))

(declare-fun d!1809657 () Bool)

(assert (=> d!1809657 (= (flatMap!1367 lt!2285833 lambda!311478) (choose!43564 lt!2285833 lambda!311478))))

(declare-fun bs!1341871 () Bool)

(assert (= bs!1341871 d!1809657))

(declare-fun m!6693744 () Bool)

(assert (=> bs!1341871 m!6693744))

(assert (=> b!5741293 d!1809657))

(assert (=> b!5741293 d!1809581))

(declare-fun d!1809659 () Bool)

(assert (=> d!1809659 (= (flatMap!1367 lt!2285833 lambda!311478) (dynLambda!24823 lambda!311478 lt!2285854))))

(declare-fun lt!2286041 () Unit!156548)

(assert (=> d!1809659 (= lt!2286041 (choose!43563 lt!2285833 lt!2285854 lambda!311478))))

(assert (=> d!1809659 (= lt!2285833 (set.insert lt!2285854 (as set.empty (Set Context!10276))))))

(assert (=> d!1809659 (= (lemmaFlatMapOnSingletonSet!899 lt!2285833 lt!2285854 lambda!311478) lt!2286041)))

(declare-fun b_lambda!216775 () Bool)

(assert (=> (not b_lambda!216775) (not d!1809659)))

(declare-fun bs!1341872 () Bool)

(assert (= bs!1341872 d!1809659))

(assert (=> bs!1341872 m!6693254))

(declare-fun m!6693746 () Bool)

(assert (=> bs!1341872 m!6693746))

(declare-fun m!6693748 () Bool)

(assert (=> bs!1341872 m!6693748))

(assert (=> bs!1341872 m!6693258))

(assert (=> b!5741293 d!1809659))

(declare-fun e!3529479 () Bool)

(assert (=> b!5741295 (= tp!1587492 e!3529479)))

(declare-fun b!5741979 () Bool)

(assert (=> b!5741979 (= e!3529479 tp_is_empty!40761)))

(declare-fun b!5741981 () Bool)

(declare-fun tp!1587536 () Bool)

(assert (=> b!5741981 (= e!3529479 tp!1587536)))

(declare-fun b!5741980 () Bool)

(declare-fun tp!1587537 () Bool)

(declare-fun tp!1587535 () Bool)

(assert (=> b!5741980 (= e!3529479 (and tp!1587537 tp!1587535))))

(declare-fun b!5741982 () Bool)

(declare-fun tp!1587534 () Bool)

(declare-fun tp!1587533 () Bool)

(assert (=> b!5741982 (= e!3529479 (and tp!1587534 tp!1587533))))

(assert (= (and b!5741295 (is-ElementMatch!15754 (regOne!32021 r!7292))) b!5741979))

(assert (= (and b!5741295 (is-Concat!24599 (regOne!32021 r!7292))) b!5741980))

(assert (= (and b!5741295 (is-Star!15754 (regOne!32021 r!7292))) b!5741981))

(assert (= (and b!5741295 (is-Union!15754 (regOne!32021 r!7292))) b!5741982))

(declare-fun e!3529480 () Bool)

(assert (=> b!5741295 (= tp!1587483 e!3529480)))

(declare-fun b!5741983 () Bool)

(assert (=> b!5741983 (= e!3529480 tp_is_empty!40761)))

(declare-fun b!5741985 () Bool)

(declare-fun tp!1587541 () Bool)

(assert (=> b!5741985 (= e!3529480 tp!1587541)))

(declare-fun b!5741984 () Bool)

(declare-fun tp!1587542 () Bool)

(declare-fun tp!1587540 () Bool)

(assert (=> b!5741984 (= e!3529480 (and tp!1587542 tp!1587540))))

(declare-fun b!5741986 () Bool)

(declare-fun tp!1587539 () Bool)

(declare-fun tp!1587538 () Bool)

(assert (=> b!5741986 (= e!3529480 (and tp!1587539 tp!1587538))))

(assert (= (and b!5741295 (is-ElementMatch!15754 (regTwo!32021 r!7292))) b!5741983))

(assert (= (and b!5741295 (is-Concat!24599 (regTwo!32021 r!7292))) b!5741984))

(assert (= (and b!5741295 (is-Star!15754 (regTwo!32021 r!7292))) b!5741985))

(assert (= (and b!5741295 (is-Union!15754 (regTwo!32021 r!7292))) b!5741986))

(declare-fun e!3529481 () Bool)

(assert (=> b!5741308 (= tp!1587485 e!3529481)))

(declare-fun b!5741987 () Bool)

(assert (=> b!5741987 (= e!3529481 tp_is_empty!40761)))

(declare-fun b!5741989 () Bool)

(declare-fun tp!1587546 () Bool)

(assert (=> b!5741989 (= e!3529481 tp!1587546)))

(declare-fun b!5741988 () Bool)

(declare-fun tp!1587547 () Bool)

(declare-fun tp!1587545 () Bool)

(assert (=> b!5741988 (= e!3529481 (and tp!1587547 tp!1587545))))

(declare-fun b!5741990 () Bool)

(declare-fun tp!1587544 () Bool)

(declare-fun tp!1587543 () Bool)

(assert (=> b!5741990 (= e!3529481 (and tp!1587544 tp!1587543))))

(assert (= (and b!5741308 (is-ElementMatch!15754 (regOne!32020 r!7292))) b!5741987))

(assert (= (and b!5741308 (is-Concat!24599 (regOne!32020 r!7292))) b!5741988))

(assert (= (and b!5741308 (is-Star!15754 (regOne!32020 r!7292))) b!5741989))

(assert (= (and b!5741308 (is-Union!15754 (regOne!32020 r!7292))) b!5741990))

(declare-fun e!3529482 () Bool)

(assert (=> b!5741308 (= tp!1587488 e!3529482)))

(declare-fun b!5741991 () Bool)

(assert (=> b!5741991 (= e!3529482 tp_is_empty!40761)))

(declare-fun b!5741993 () Bool)

(declare-fun tp!1587551 () Bool)

(assert (=> b!5741993 (= e!3529482 tp!1587551)))

(declare-fun b!5741992 () Bool)

(declare-fun tp!1587552 () Bool)

(declare-fun tp!1587550 () Bool)

(assert (=> b!5741992 (= e!3529482 (and tp!1587552 tp!1587550))))

(declare-fun b!5741994 () Bool)

(declare-fun tp!1587549 () Bool)

(declare-fun tp!1587548 () Bool)

(assert (=> b!5741994 (= e!3529482 (and tp!1587549 tp!1587548))))

(assert (= (and b!5741308 (is-ElementMatch!15754 (regTwo!32020 r!7292))) b!5741991))

(assert (= (and b!5741308 (is-Concat!24599 (regTwo!32020 r!7292))) b!5741992))

(assert (= (and b!5741308 (is-Star!15754 (regTwo!32020 r!7292))) b!5741993))

(assert (= (and b!5741308 (is-Union!15754 (regTwo!32020 r!7292))) b!5741994))

(declare-fun b!5741999 () Bool)

(declare-fun e!3529485 () Bool)

(declare-fun tp!1587557 () Bool)

(declare-fun tp!1587558 () Bool)

(assert (=> b!5741999 (= e!3529485 (and tp!1587557 tp!1587558))))

(assert (=> b!5741328 (= tp!1587490 e!3529485)))

(assert (= (and b!5741328 (is-Cons!63437 (exprs!5638 (h!69886 zl!343)))) b!5741999))

(declare-fun condSetEmpty!38548 () Bool)

(assert (=> setNonEmpty!38542 (= condSetEmpty!38548 (= setRest!38542 (as set.empty (Set Context!10276))))))

(declare-fun setRes!38548 () Bool)

(assert (=> setNonEmpty!38542 (= tp!1587491 setRes!38548)))

(declare-fun setIsEmpty!38548 () Bool)

(assert (=> setIsEmpty!38548 setRes!38548))

(declare-fun e!3529488 () Bool)

(declare-fun setElem!38548 () Context!10276)

(declare-fun setNonEmpty!38548 () Bool)

(declare-fun tp!1587564 () Bool)

(assert (=> setNonEmpty!38548 (= setRes!38548 (and tp!1587564 (inv!82633 setElem!38548) e!3529488))))

(declare-fun setRest!38548 () (Set Context!10276))

(assert (=> setNonEmpty!38548 (= setRest!38542 (set.union (set.insert setElem!38548 (as set.empty (Set Context!10276))) setRest!38548))))

(declare-fun b!5742004 () Bool)

(declare-fun tp!1587563 () Bool)

(assert (=> b!5742004 (= e!3529488 tp!1587563)))

(assert (= (and setNonEmpty!38542 condSetEmpty!38548) setIsEmpty!38548))

(assert (= (and setNonEmpty!38542 (not condSetEmpty!38548)) setNonEmpty!38548))

(assert (= setNonEmpty!38548 b!5742004))

(declare-fun m!6693750 () Bool)

(assert (=> setNonEmpty!38548 m!6693750))

(declare-fun b!5742018 () Bool)

(declare-fun e!3529496 () Bool)

(declare-fun tp!1587567 () Bool)

(assert (=> b!5742018 (= e!3529496 (and tp_is_empty!40761 tp!1587567))))

(assert (=> b!5741304 (= tp!1587484 e!3529496)))

(assert (= (and b!5741304 (is-Cons!63439 (t!376891 s!2326))) b!5742018))

(declare-fun b!5742019 () Bool)

(declare-fun e!3529497 () Bool)

(declare-fun tp!1587568 () Bool)

(declare-fun tp!1587569 () Bool)

(assert (=> b!5742019 (= e!3529497 (and tp!1587568 tp!1587569))))

(assert (=> b!5741319 (= tp!1587486 e!3529497)))

(assert (= (and b!5741319 (is-Cons!63437 (exprs!5638 setElem!38542))) b!5742019))

(declare-fun e!3529498 () Bool)

(assert (=> b!5741324 (= tp!1587487 e!3529498)))

(declare-fun b!5742020 () Bool)

(assert (=> b!5742020 (= e!3529498 tp_is_empty!40761)))

(declare-fun b!5742022 () Bool)

(declare-fun tp!1587573 () Bool)

(assert (=> b!5742022 (= e!3529498 tp!1587573)))

(declare-fun b!5742021 () Bool)

(declare-fun tp!1587574 () Bool)

(declare-fun tp!1587572 () Bool)

(assert (=> b!5742021 (= e!3529498 (and tp!1587574 tp!1587572))))

(declare-fun b!5742023 () Bool)

(declare-fun tp!1587571 () Bool)

(declare-fun tp!1587570 () Bool)

(assert (=> b!5742023 (= e!3529498 (and tp!1587571 tp!1587570))))

(assert (= (and b!5741324 (is-ElementMatch!15754 (reg!16083 r!7292))) b!5742020))

(assert (= (and b!5741324 (is-Concat!24599 (reg!16083 r!7292))) b!5742021))

(assert (= (and b!5741324 (is-Star!15754 (reg!16083 r!7292))) b!5742022))

(assert (= (and b!5741324 (is-Union!15754 (reg!16083 r!7292))) b!5742023))

(declare-fun b!5742031 () Bool)

(declare-fun e!3529504 () Bool)

(declare-fun tp!1587579 () Bool)

(assert (=> b!5742031 (= e!3529504 tp!1587579)))

(declare-fun tp!1587580 () Bool)

(declare-fun b!5742030 () Bool)

(declare-fun e!3529503 () Bool)

(assert (=> b!5742030 (= e!3529503 (and (inv!82633 (h!69886 (t!376890 zl!343))) e!3529504 tp!1587580))))

(assert (=> b!5741298 (= tp!1587489 e!3529503)))

(assert (= b!5742030 b!5742031))

(assert (= (and b!5741298 (is-Cons!63438 (t!376890 zl!343))) b!5742030))

(declare-fun m!6693752 () Bool)

(assert (=> b!5742030 m!6693752))

(declare-fun b_lambda!216777 () Bool)

(assert (= b_lambda!216769 (or b!5741326 b_lambda!216777)))

(declare-fun bs!1341873 () Bool)

(declare-fun d!1809661 () Bool)

(assert (= bs!1341873 (and d!1809661 b!5741326)))

(assert (=> bs!1341873 (= (dynLambda!24823 lambda!311478 lt!2285850) (derivationStepZipperUp!1022 lt!2285850 (h!69887 s!2326)))))

(assert (=> bs!1341873 m!6693172))

(assert (=> d!1809575 d!1809661))

(declare-fun b_lambda!216779 () Bool)

(assert (= b_lambda!216773 (or b!5741326 b_lambda!216779)))

(declare-fun bs!1341874 () Bool)

(declare-fun d!1809663 () Bool)

(assert (= bs!1341874 (and d!1809663 b!5741326)))

(assert (=> bs!1341874 (= (dynLambda!24823 lambda!311478 lt!2285859) (derivationStepZipperUp!1022 lt!2285859 (h!69887 s!2326)))))

(assert (=> bs!1341874 m!6693244))

(assert (=> d!1809603 d!1809663))

(declare-fun b_lambda!216781 () Bool)

(assert (= b_lambda!216767 (or b!5741326 b_lambda!216781)))

(declare-fun bs!1341875 () Bool)

(declare-fun d!1809665 () Bool)

(assert (= bs!1341875 (and d!1809665 b!5741326)))

(assert (=> bs!1341875 (= (dynLambda!24823 lambda!311478 lt!2285860) (derivationStepZipperUp!1022 lt!2285860 (h!69887 s!2326)))))

(assert (=> bs!1341875 m!6693176))

(assert (=> d!1809569 d!1809665))

(declare-fun b_lambda!216783 () Bool)

(assert (= b_lambda!216775 (or b!5741326 b_lambda!216783)))

(declare-fun bs!1341876 () Bool)

(declare-fun d!1809667 () Bool)

(assert (= bs!1341876 (and d!1809667 b!5741326)))

(assert (=> bs!1341876 (= (dynLambda!24823 lambda!311478 lt!2285854) (derivationStepZipperUp!1022 lt!2285854 (h!69887 s!2326)))))

(assert (=> bs!1341876 m!6693190))

(assert (=> d!1809659 d!1809667))

(declare-fun b_lambda!216785 () Bool)

(assert (= b_lambda!216771 (or b!5741326 b_lambda!216785)))

(declare-fun bs!1341877 () Bool)

(declare-fun d!1809669 () Bool)

(assert (= bs!1341877 (and d!1809669 b!5741326)))

(assert (=> bs!1341877 (= (dynLambda!24823 lambda!311478 (h!69886 zl!343)) (derivationStepZipperUp!1022 (h!69886 zl!343) (h!69887 s!2326)))))

(assert (=> bs!1341877 m!6693186))

(assert (=> d!1809593 d!1809669))

(push 1)

(assert (not d!1809625))

(assert (not b!5742022))

(assert (not b!5741781))

(assert (not b!5742019))

(assert (not b!5741521))

(assert (not b!5741789))

(assert (not d!1809615))

(assert (not d!1809623))

(assert (not b!5741993))

(assert (not b!5741980))

(assert (not bm!438906))

(assert (not bm!438928))

(assert (not bm!438899))

(assert (not d!1809537))

(assert (not d!1809565))

(assert (not d!1809621))

(assert (not b!5741901))

(assert (not b!5741628))

(assert (not b!5741986))

(assert (not d!1809573))

(assert (not d!1809571))

(assert (not bm!438904))

(assert (not d!1809591))

(assert (not d!1809647))

(assert (not b!5742004))

(assert (not d!1809645))

(assert (not bm!438939))

(assert (not bm!438903))

(assert (not b_lambda!216777))

(assert (not b!5741514))

(assert (not d!1809653))

(assert (not d!1809555))

(assert (not b!5741561))

(assert (not d!1809659))

(assert (not b!5741909))

(assert (not b!5742023))

(assert (not bm!438932))

(assert tp_is_empty!40761)

(assert (not b!5741981))

(assert (not b!5741910))

(assert (not bm!438935))

(assert (not b!5741800))

(assert (not b!5741684))

(assert (not b_lambda!216779))

(assert (not bs!1341874))

(assert (not b!5741989))

(assert (not b!5741517))

(assert (not b!5741562))

(assert (not b!5742021))

(assert (not d!1809535))

(assert (not b!5742030))

(assert (not d!1809657))

(assert (not b!5741518))

(assert (not d!1809557))

(assert (not b!5741904))

(assert (not bs!1341877))

(assert (not d!1809597))

(assert (not d!1809651))

(assert (not bs!1341873))

(assert (not d!1809541))

(assert (not b!5741951))

(assert (not b!5741985))

(assert (not b!5741632))

(assert (not bm!438882))

(assert (not d!1809579))

(assert (not b!5741666))

(assert (not b!5741946))

(assert (not d!1809549))

(assert (not bm!438937))

(assert (not bm!438905))

(assert (not d!1809539))

(assert (not bm!438933))

(assert (not b!5741952))

(assert (not b_lambda!216781))

(assert (not d!1809593))

(assert (not b!5741692))

(assert (not bm!438871))

(assert (not b!5741954))

(assert (not b!5741982))

(assert (not bm!438876))

(assert (not b!5741776))

(assert (not b!5741988))

(assert (not b!5741676))

(assert (not d!1809611))

(assert (not b!5741895))

(assert (not bs!1341876))

(assert (not b!5741656))

(assert (not b!5741799))

(assert (not d!1809595))

(assert (not b!5741560))

(assert (not b!5741769))

(assert (not b!5741778))

(assert (not b!5741695))

(assert (not d!1809553))

(assert (not b!5741912))

(assert (not b!5741990))

(assert (not b!5741902))

(assert (not b!5742031))

(assert (not b!5741907))

(assert (not bs!1341875))

(assert (not b!5741897))

(assert (not b!5741893))

(assert (not b!5741740))

(assert (not bm!438901))

(assert (not b!5741508))

(assert (not d!1809543))

(assert (not d!1809569))

(assert (not b!5741631))

(assert (not d!1809629))

(assert (not b!5741679))

(assert (not b!5741804))

(assert (not d!1809605))

(assert (not bm!438898))

(assert (not d!1809655))

(assert (not b_lambda!216783))

(assert (not b!5741945))

(assert (not b!5741900))

(assert (not b!5741992))

(assert (not bm!438867))

(assert (not bm!438940))

(assert (not b!5741603))

(assert (not d!1809559))

(assert (not b!5741994))

(assert (not b!5741513))

(assert (not b!5741663))

(assert (not b!5741760))

(assert (not b!5741898))

(assert (not bm!438868))

(assert (not b!5741765))

(assert (not d!1809599))

(assert (not d!1809649))

(assert (not bm!438908))

(assert (not b!5741947))

(assert (not b!5741777))

(assert (not b!5741519))

(assert (not bm!438929))

(assert (not d!1809545))

(assert (not bm!438884))

(assert (not d!1809613))

(assert (not b!5741598))

(assert (not b!5741747))

(assert (not setNonEmpty!38548))

(assert (not bm!438936))

(assert (not b!5741967))

(assert (not b!5741563))

(assert (not bm!438883))

(assert (not b!5741950))

(assert (not b!5741633))

(assert (not bm!438911))

(assert (not b_lambda!216785))

(assert (not b!5742018))

(assert (not b!5741550))

(assert (not b!5741999))

(assert (not b!5741626))

(assert (not b!5741913))

(assert (not b!5741755))

(assert (not d!1809533))

(assert (not bm!438909))

(assert (not bm!438877))

(assert (not bm!438880))

(assert (not d!1809575))

(assert (not b!5741629))

(assert (not d!1809561))

(assert (not d!1809603))

(assert (not b!5741914))

(assert (not b!5741520))

(assert (not b!5741903))

(assert (not bm!438930))

(assert (not b!5741554))

(assert (not b!5741659))

(assert (not b!5741775))

(assert (not b!5741984))

(assert (not b!5741803))

(assert (not d!1809551))

(assert (not b!5741905))

(assert (not bm!438881))

(assert (not b!5741744))

(assert (not b!5741681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

