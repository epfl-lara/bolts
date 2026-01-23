; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!624212 () Bool)

(assert start!624212)

(declare-fun b!6279527 () Bool)

(assert (=> b!6279527 true))

(assert (=> b!6279527 true))

(declare-fun lambda!344337 () Int)

(declare-fun lambda!344336 () Int)

(assert (=> b!6279527 (not (= lambda!344337 lambda!344336))))

(assert (=> b!6279527 true))

(assert (=> b!6279527 true))

(declare-fun b!6279550 () Bool)

(assert (=> b!6279550 true))

(declare-fun bs!1568610 () Bool)

(declare-fun b!6279543 () Bool)

(assert (= bs!1568610 (and b!6279543 b!6279527)))

(declare-datatypes ((C!32670 0))(
  ( (C!32671 (val!26037 Int)) )
))
(declare-datatypes ((Regex!16200 0))(
  ( (ElementMatch!16200 (c!1138637 C!32670)) (Concat!25045 (regOne!32912 Regex!16200) (regTwo!32912 Regex!16200)) (EmptyExpr!16200) (Star!16200 (reg!16529 Regex!16200)) (EmptyLang!16200) (Union!16200 (regOne!32913 Regex!16200) (regTwo!32913 Regex!16200)) )
))
(declare-fun r!7292 () Regex!16200)

(declare-fun lt!2354114 () Regex!16200)

(declare-fun lambda!344339 () Int)

(assert (=> bs!1568610 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344339 lambda!344336))))

(assert (=> bs!1568610 (not (= lambda!344339 lambda!344337))))

(assert (=> b!6279543 true))

(assert (=> b!6279543 true))

(assert (=> b!6279543 true))

(declare-fun lambda!344340 () Int)

(assert (=> bs!1568610 (not (= lambda!344340 lambda!344336))))

(assert (=> bs!1568610 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344340 lambda!344337))))

(assert (=> b!6279543 (not (= lambda!344340 lambda!344339))))

(assert (=> b!6279543 true))

(assert (=> b!6279543 true))

(assert (=> b!6279543 true))

(declare-fun b!6279516 () Bool)

(declare-datatypes ((Unit!158131 0))(
  ( (Unit!158132) )
))
(declare-fun e!3818862 () Unit!158131)

(declare-fun Unit!158133 () Unit!158131)

(assert (=> b!6279516 (= e!3818862 Unit!158133)))

(declare-datatypes ((List!64899 0))(
  ( (Nil!64775) (Cons!64775 (h!71223 C!32670) (t!378459 List!64899)) )
))
(declare-fun s!2326 () List!64899)

(declare-fun lt!2354123 () Unit!158131)

(declare-datatypes ((List!64900 0))(
  ( (Nil!64776) (Cons!64776 (h!71224 Regex!16200) (t!378460 List!64900)) )
))
(declare-datatypes ((Context!11168 0))(
  ( (Context!11169 (exprs!6084 List!64900)) )
))
(declare-fun lt!2354120 () (Set Context!11168))

(declare-fun lt!2354105 () (Set Context!11168))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1031 ((Set Context!11168) (Set Context!11168) List!64899) Unit!158131)

(assert (=> b!6279516 (= lt!2354123 (lemmaZipperConcatMatchesSameAsBothZippers!1031 lt!2354105 lt!2354120 (t!378459 s!2326)))))

(declare-fun res!2589909 () Bool)

(declare-fun matchZipper!2212 ((Set Context!11168) List!64899) Bool)

(assert (=> b!6279516 (= res!2589909 (matchZipper!2212 lt!2354105 (t!378459 s!2326)))))

(declare-fun e!3818865 () Bool)

(assert (=> b!6279516 (=> res!2589909 e!3818865)))

(assert (=> b!6279516 (= (matchZipper!2212 (set.union lt!2354105 lt!2354120) (t!378459 s!2326)) e!3818865)))

(declare-fun b!6279517 () Bool)

(declare-fun res!2589901 () Bool)

(declare-fun e!3818867 () Bool)

(assert (=> b!6279517 (=> (not res!2589901) (not e!3818867))))

(declare-fun z!1189 () (Set Context!11168))

(declare-datatypes ((List!64901 0))(
  ( (Nil!64777) (Cons!64777 (h!71225 Context!11168) (t!378461 List!64901)) )
))
(declare-fun zl!343 () List!64901)

(declare-fun toList!9984 ((Set Context!11168)) List!64901)

(assert (=> b!6279517 (= res!2589901 (= (toList!9984 z!1189) zl!343))))

(declare-fun b!6279518 () Bool)

(declare-fun e!3818873 () Bool)

(declare-fun tp!1750267 () Bool)

(declare-fun tp!1750260 () Bool)

(assert (=> b!6279518 (= e!3818873 (and tp!1750267 tp!1750260))))

(declare-fun b!6279519 () Bool)

(declare-fun tp!1750262 () Bool)

(declare-fun tp!1750265 () Bool)

(assert (=> b!6279519 (= e!3818873 (and tp!1750262 tp!1750265))))

(declare-fun b!6279520 () Bool)

(declare-fun e!3818877 () Bool)

(declare-fun lt!2354106 () (Set Context!11168))

(assert (=> b!6279520 (= e!3818877 (not (matchZipper!2212 lt!2354106 (t!378459 s!2326))))))

(declare-fun b!6279521 () Bool)

(declare-fun e!3818870 () Bool)

(declare-fun e!3818879 () Bool)

(assert (=> b!6279521 (= e!3818870 e!3818879)))

(declare-fun res!2589902 () Bool)

(assert (=> b!6279521 (=> res!2589902 e!3818879)))

(declare-fun lt!2354115 () (Set Context!11168))

(declare-fun lt!2354091 () (Set Context!11168))

(assert (=> b!6279521 (= res!2589902 (not (= lt!2354115 lt!2354091)))))

(declare-fun lt!2354108 () (Set Context!11168))

(declare-fun lt!2354100 () (Set Context!11168))

(assert (=> b!6279521 (= lt!2354091 (set.union lt!2354108 lt!2354100))))

(declare-fun lt!2354116 () Context!11168)

(declare-fun derivationStepZipperUp!1374 (Context!11168 C!32670) (Set Context!11168))

(assert (=> b!6279521 (= lt!2354100 (derivationStepZipperUp!1374 lt!2354116 (h!71223 s!2326)))))

(declare-fun lt!2354119 () (Set Context!11168))

(declare-fun lambda!344338 () Int)

(declare-fun lt!2354098 () Context!11168)

(declare-fun flatMap!1705 ((Set Context!11168) Int) (Set Context!11168))

(assert (=> b!6279521 (= (flatMap!1705 lt!2354119 lambda!344338) (derivationStepZipperUp!1374 lt!2354098 (h!71223 s!2326)))))

(declare-fun lt!2354111 () Unit!158131)

(declare-fun lemmaFlatMapOnSingletonSet!1231 ((Set Context!11168) Context!11168 Int) Unit!158131)

(assert (=> b!6279521 (= lt!2354111 (lemmaFlatMapOnSingletonSet!1231 lt!2354119 lt!2354098 lambda!344338))))

(declare-fun lt!2354127 () (Set Context!11168))

(assert (=> b!6279521 (= lt!2354127 (derivationStepZipperUp!1374 lt!2354098 (h!71223 s!2326)))))

(declare-fun derivationStepZipper!2166 ((Set Context!11168) C!32670) (Set Context!11168))

(assert (=> b!6279521 (= lt!2354115 (derivationStepZipper!2166 lt!2354119 (h!71223 s!2326)))))

(declare-fun lt!2354112 () (Set Context!11168))

(assert (=> b!6279521 (= lt!2354112 (set.insert lt!2354116 (as set.empty (Set Context!11168))))))

(assert (=> b!6279521 (= lt!2354119 (set.insert lt!2354098 (as set.empty (Set Context!11168))))))

(declare-fun lt!2354107 () List!64900)

(assert (=> b!6279521 (= lt!2354098 (Context!11169 lt!2354107))))

(declare-fun lt!2354109 () List!64900)

(assert (=> b!6279521 (= lt!2354107 (Cons!64776 (regOne!32912 (regOne!32912 r!7292)) lt!2354109))))

(declare-fun b!6279522 () Bool)

(declare-fun e!3818868 () Bool)

(declare-fun tp_is_empty!41653 () Bool)

(declare-fun tp!1750261 () Bool)

(assert (=> b!6279522 (= e!3818868 (and tp_is_empty!41653 tp!1750261))))

(declare-fun setElem!42725 () Context!11168)

(declare-fun e!3818878 () Bool)

(declare-fun setNonEmpty!42725 () Bool)

(declare-fun setRes!42725 () Bool)

(declare-fun tp!1750266 () Bool)

(declare-fun inv!83748 (Context!11168) Bool)

(assert (=> setNonEmpty!42725 (= setRes!42725 (and tp!1750266 (inv!83748 setElem!42725) e!3818878))))

(declare-fun setRest!42725 () (Set Context!11168))

(assert (=> setNonEmpty!42725 (= z!1189 (set.union (set.insert setElem!42725 (as set.empty (Set Context!11168))) setRest!42725))))

(declare-fun b!6279524 () Bool)

(declare-fun tp!1750264 () Bool)

(assert (=> b!6279524 (= e!3818878 tp!1750264)))

(declare-fun b!6279525 () Bool)

(declare-fun res!2589899 () Bool)

(declare-fun e!3818875 () Bool)

(assert (=> b!6279525 (=> res!2589899 e!3818875)))

(assert (=> b!6279525 (= res!2589899 (not (= (exprs!6084 (h!71225 zl!343)) (Cons!64776 (Concat!25045 (regOne!32912 (regOne!32912 r!7292)) (regTwo!32912 (regOne!32912 r!7292))) (t!378460 (exprs!6084 (h!71225 zl!343)))))))))

(declare-fun b!6279526 () Bool)

(declare-fun res!2589904 () Bool)

(declare-fun e!3818863 () Bool)

(assert (=> b!6279526 (=> res!2589904 e!3818863)))

(declare-fun generalisedUnion!2044 (List!64900) Regex!16200)

(declare-fun unfocusZipperList!1621 (List!64901) List!64900)

(assert (=> b!6279526 (= res!2589904 (not (= r!7292 (generalisedUnion!2044 (unfocusZipperList!1621 zl!343)))))))

(declare-fun e!3818861 () Bool)

(assert (=> b!6279527 (= e!3818863 e!3818861)))

(declare-fun res!2589894 () Bool)

(assert (=> b!6279527 (=> res!2589894 e!3818861)))

(declare-fun lt!2354121 () Bool)

(declare-fun lt!2354103 () Bool)

(assert (=> b!6279527 (= res!2589894 (or (not (= lt!2354103 lt!2354121)) (is-Nil!64775 s!2326)))))

(declare-fun Exists!3270 (Int) Bool)

(assert (=> b!6279527 (= (Exists!3270 lambda!344336) (Exists!3270 lambda!344337))))

(declare-fun lt!2354129 () Unit!158131)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1807 (Regex!16200 Regex!16200 List!64899) Unit!158131)

(assert (=> b!6279527 (= lt!2354129 (lemmaExistCutMatchRandMatchRSpecEquivalent!1807 (regOne!32912 r!7292) (regTwo!32912 r!7292) s!2326))))

(assert (=> b!6279527 (= lt!2354121 (Exists!3270 lambda!344336))))

(declare-datatypes ((tuple2!66358 0))(
  ( (tuple2!66359 (_1!36482 List!64899) (_2!36482 List!64899)) )
))
(declare-datatypes ((Option!16091 0))(
  ( (None!16090) (Some!16090 (v!52245 tuple2!66358)) )
))
(declare-fun isDefined!12794 (Option!16091) Bool)

(declare-fun findConcatSeparation!2505 (Regex!16200 Regex!16200 List!64899 List!64899 List!64899) Option!16091)

(assert (=> b!6279527 (= lt!2354121 (isDefined!12794 (findConcatSeparation!2505 (regOne!32912 r!7292) (regTwo!32912 r!7292) Nil!64775 s!2326 s!2326)))))

(declare-fun lt!2354104 () Unit!158131)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2269 (Regex!16200 Regex!16200 List!64899) Unit!158131)

(assert (=> b!6279527 (= lt!2354104 (lemmaFindConcatSeparationEquivalentToExists!2269 (regOne!32912 r!7292) (regTwo!32912 r!7292) s!2326))))

(declare-fun b!6279528 () Bool)

(declare-fun e!3818866 () Bool)

(assert (=> b!6279528 (= e!3818866 e!3818870)))

(declare-fun res!2589915 () Bool)

(assert (=> b!6279528 (=> res!2589915 e!3818870)))

(assert (=> b!6279528 (= res!2589915 e!3818877)))

(declare-fun res!2589891 () Bool)

(assert (=> b!6279528 (=> (not res!2589891) (not e!3818877))))

(declare-fun lt!2354099 () Bool)

(declare-fun lt!2354128 () Bool)

(assert (=> b!6279528 (= res!2589891 (not (= lt!2354099 lt!2354128)))))

(assert (=> b!6279528 (= lt!2354099 (matchZipper!2212 lt!2354105 (t!378459 s!2326)))))

(declare-fun lt!2354122 () (Set Context!11168))

(declare-fun e!3818874 () Bool)

(assert (=> b!6279528 (= (matchZipper!2212 lt!2354122 (t!378459 s!2326)) e!3818874)))

(declare-fun res!2589895 () Bool)

(assert (=> b!6279528 (=> res!2589895 e!3818874)))

(assert (=> b!6279528 (= res!2589895 lt!2354128)))

(assert (=> b!6279528 (= lt!2354128 (matchZipper!2212 lt!2354108 (t!378459 s!2326)))))

(declare-fun lt!2354102 () Unit!158131)

(assert (=> b!6279528 (= lt!2354102 (lemmaZipperConcatMatchesSameAsBothZippers!1031 lt!2354108 lt!2354106 (t!378459 s!2326)))))

(declare-fun e!3818869 () Bool)

(declare-fun tp!1750268 () Bool)

(declare-fun e!3818876 () Bool)

(declare-fun b!6279529 () Bool)

(assert (=> b!6279529 (= e!3818869 (and (inv!83748 (h!71225 zl!343)) e!3818876 tp!1750268))))

(declare-fun b!6279530 () Bool)

(declare-fun res!2589907 () Bool)

(declare-fun e!3818864 () Bool)

(assert (=> b!6279530 (=> res!2589907 e!3818864)))

(declare-fun nullable!6193 (Regex!16200) Bool)

(assert (=> b!6279530 (= res!2589907 (not (nullable!6193 (regOne!32912 (regOne!32912 r!7292)))))))

(declare-fun b!6279531 () Bool)

(declare-fun Unit!158134 () Unit!158131)

(assert (=> b!6279531 (= e!3818862 Unit!158134)))

(declare-fun b!6279532 () Bool)

(assert (=> b!6279532 (= e!3818867 (not e!3818863))))

(declare-fun res!2589898 () Bool)

(assert (=> b!6279532 (=> res!2589898 e!3818863)))

(assert (=> b!6279532 (= res!2589898 (not (is-Cons!64777 zl!343)))))

(declare-fun matchRSpec!3301 (Regex!16200 List!64899) Bool)

(assert (=> b!6279532 (= lt!2354103 (matchRSpec!3301 r!7292 s!2326))))

(declare-fun matchR!8383 (Regex!16200 List!64899) Bool)

(assert (=> b!6279532 (= lt!2354103 (matchR!8383 r!7292 s!2326))))

(declare-fun lt!2354092 () Unit!158131)

(declare-fun mainMatchTheorem!3301 (Regex!16200 List!64899) Unit!158131)

(assert (=> b!6279532 (= lt!2354092 (mainMatchTheorem!3301 r!7292 s!2326))))

(declare-fun b!6279533 () Bool)

(declare-fun res!2589906 () Bool)

(assert (=> b!6279533 (=> res!2589906 e!3818863)))

(assert (=> b!6279533 (= res!2589906 (not (is-Cons!64776 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun b!6279534 () Bool)

(assert (=> b!6279534 (= e!3818873 tp_is_empty!41653)))

(declare-fun b!6279535 () Bool)

(declare-fun e!3818880 () Bool)

(assert (=> b!6279535 (= e!3818880 (matchZipper!2212 lt!2354100 (t!378459 s!2326)))))

(declare-fun b!6279536 () Bool)

(assert (=> b!6279536 (= e!3818874 (matchZipper!2212 lt!2354106 (t!378459 s!2326)))))

(declare-fun b!6279537 () Bool)

(assert (=> b!6279537 (= e!3818879 e!3818875)))

(declare-fun res!2589914 () Bool)

(assert (=> b!6279537 (=> res!2589914 e!3818875)))

(declare-fun e!3818872 () Bool)

(assert (=> b!6279537 (= res!2589914 e!3818872)))

(declare-fun res!2589893 () Bool)

(assert (=> b!6279537 (=> (not res!2589893) (not e!3818872))))

(assert (=> b!6279537 (= res!2589893 (not (= lt!2354099 (matchZipper!2212 lt!2354115 (t!378459 s!2326)))))))

(assert (=> b!6279537 (= (matchZipper!2212 lt!2354091 (t!378459 s!2326)) e!3818880)))

(declare-fun res!2589916 () Bool)

(assert (=> b!6279537 (=> res!2589916 e!3818880)))

(assert (=> b!6279537 (= res!2589916 lt!2354128)))

(declare-fun lt!2354093 () Unit!158131)

(assert (=> b!6279537 (= lt!2354093 (lemmaZipperConcatMatchesSameAsBothZippers!1031 lt!2354108 lt!2354100 (t!378459 s!2326)))))

(assert (=> b!6279537 (= (flatMap!1705 lt!2354112 lambda!344338) (derivationStepZipperUp!1374 lt!2354116 (h!71223 s!2326)))))

(declare-fun lt!2354101 () Unit!158131)

(assert (=> b!6279537 (= lt!2354101 (lemmaFlatMapOnSingletonSet!1231 lt!2354112 lt!2354116 lambda!344338))))

(declare-fun b!6279538 () Bool)

(declare-fun res!2589900 () Bool)

(assert (=> b!6279538 (=> res!2589900 e!3818863)))

(assert (=> b!6279538 (= res!2589900 (or (is-EmptyExpr!16200 r!7292) (is-EmptyLang!16200 r!7292) (is-ElementMatch!16200 r!7292) (is-Union!16200 r!7292) (not (is-Concat!25045 r!7292))))))

(declare-fun b!6279539 () Bool)

(declare-fun e!3818871 () Bool)

(assert (=> b!6279539 (= e!3818875 e!3818871)))

(declare-fun res!2589913 () Bool)

(assert (=> b!6279539 (=> res!2589913 e!3818871)))

(declare-fun lt!2354097 () List!64901)

(declare-fun zipperDepthTotal!353 (List!64901) Int)

(assert (=> b!6279539 (= res!2589913 (>= (zipperDepthTotal!353 lt!2354097) (zipperDepthTotal!353 zl!343)))))

(assert (=> b!6279539 (= lt!2354097 (Cons!64777 lt!2354098 Nil!64777))))

(declare-fun res!2589905 () Bool)

(assert (=> start!624212 (=> (not res!2589905) (not e!3818867))))

(declare-fun validRegex!7936 (Regex!16200) Bool)

(assert (=> start!624212 (= res!2589905 (validRegex!7936 r!7292))))

(assert (=> start!624212 e!3818867))

(assert (=> start!624212 e!3818873))

(declare-fun condSetEmpty!42725 () Bool)

(assert (=> start!624212 (= condSetEmpty!42725 (= z!1189 (as set.empty (Set Context!11168))))))

(assert (=> start!624212 setRes!42725))

(assert (=> start!624212 e!3818869))

(assert (=> start!624212 e!3818868))

(declare-fun b!6279523 () Bool)

(declare-fun res!2589896 () Bool)

(assert (=> b!6279523 (=> (not res!2589896) (not e!3818867))))

(declare-fun unfocusZipper!1942 (List!64901) Regex!16200)

(assert (=> b!6279523 (= res!2589896 (= r!7292 (unfocusZipper!1942 zl!343)))))

(declare-fun b!6279540 () Bool)

(assert (=> b!6279540 (= e!3818872 (not (matchZipper!2212 (derivationStepZipper!2166 lt!2354112 (h!71223 s!2326)) (t!378459 s!2326))))))

(declare-fun b!6279541 () Bool)

(declare-fun res!2589903 () Bool)

(assert (=> b!6279541 (=> res!2589903 e!3818875)))

(declare-fun contextDepthTotal!323 (Context!11168) Int)

(assert (=> b!6279541 (= res!2589903 (>= (contextDepthTotal!323 lt!2354098) (contextDepthTotal!323 (h!71225 zl!343))))))

(declare-fun setIsEmpty!42725 () Bool)

(assert (=> setIsEmpty!42725 setRes!42725))

(declare-fun b!6279542 () Bool)

(declare-fun res!2589892 () Bool)

(assert (=> b!6279542 (=> res!2589892 e!3818863)))

(declare-fun isEmpty!36819 (List!64901) Bool)

(assert (=> b!6279542 (= res!2589892 (not (isEmpty!36819 (t!378461 zl!343))))))

(assert (=> b!6279543 (= e!3818871 (validRegex!7936 lt!2354114))))

(assert (=> b!6279543 (= (Exists!3270 lambda!344339) (Exists!3270 lambda!344340))))

(declare-fun lt!2354130 () Unit!158131)

(assert (=> b!6279543 (= lt!2354130 (lemmaExistCutMatchRandMatchRSpecEquivalent!1807 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 s!2326))))

(assert (=> b!6279543 (= (isDefined!12794 (findConcatSeparation!2505 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 Nil!64775 s!2326 s!2326)) (Exists!3270 lambda!344339))))

(declare-fun lt!2354113 () Unit!158131)

(assert (=> b!6279543 (= lt!2354113 (lemmaFindConcatSeparationEquivalentToExists!2269 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 s!2326))))

(declare-fun lt!2354126 () Bool)

(declare-fun lt!2354096 () Regex!16200)

(assert (=> b!6279543 (= lt!2354126 (matchRSpec!3301 lt!2354096 s!2326))))

(declare-fun lt!2354117 () Unit!158131)

(assert (=> b!6279543 (= lt!2354117 (mainMatchTheorem!3301 lt!2354096 s!2326))))

(assert (=> b!6279543 (= (matchR!8383 lt!2354114 s!2326) (matchZipper!2212 lt!2354112 s!2326))))

(declare-fun lt!2354094 () Unit!158131)

(declare-fun theoremZipperRegexEquiv!770 ((Set Context!11168) List!64901 Regex!16200 List!64899) Unit!158131)

(assert (=> b!6279543 (= lt!2354094 (theoremZipperRegexEquiv!770 lt!2354112 (Cons!64777 lt!2354116 Nil!64777) lt!2354114 s!2326))))

(declare-fun generalisedConcat!1797 (List!64900) Regex!16200)

(assert (=> b!6279543 (= lt!2354114 (generalisedConcat!1797 lt!2354109))))

(assert (=> b!6279543 (= lt!2354126 (matchZipper!2212 lt!2354119 s!2326))))

(assert (=> b!6279543 (= lt!2354126 (matchR!8383 lt!2354096 s!2326))))

(declare-fun lt!2354095 () Unit!158131)

(assert (=> b!6279543 (= lt!2354095 (theoremZipperRegexEquiv!770 lt!2354119 lt!2354097 lt!2354096 s!2326))))

(assert (=> b!6279543 (= lt!2354096 (generalisedConcat!1797 lt!2354107))))

(declare-fun b!6279544 () Bool)

(assert (=> b!6279544 (= e!3818865 (matchZipper!2212 lt!2354120 (t!378459 s!2326)))))

(declare-fun b!6279545 () Bool)

(declare-fun res!2589910 () Bool)

(assert (=> b!6279545 (=> res!2589910 e!3818871)))

(declare-fun zipperDepth!325 (List!64901) Int)

(assert (=> b!6279545 (= res!2589910 (> (zipperDepth!325 lt!2354097) (zipperDepth!325 zl!343)))))

(declare-fun b!6279546 () Bool)

(assert (=> b!6279546 (= e!3818864 e!3818866)))

(declare-fun res!2589897 () Bool)

(assert (=> b!6279546 (=> res!2589897 e!3818866)))

(assert (=> b!6279546 (= res!2589897 (not (= lt!2354105 lt!2354122)))))

(assert (=> b!6279546 (= lt!2354122 (set.union lt!2354108 lt!2354106))))

(declare-fun lt!2354125 () Context!11168)

(declare-fun derivationStepZipperDown!1448 (Regex!16200 Context!11168 C!32670) (Set Context!11168))

(assert (=> b!6279546 (= lt!2354106 (derivationStepZipperDown!1448 (regTwo!32912 (regOne!32912 r!7292)) lt!2354125 (h!71223 s!2326)))))

(assert (=> b!6279546 (= lt!2354108 (derivationStepZipperDown!1448 (regOne!32912 (regOne!32912 r!7292)) lt!2354116 (h!71223 s!2326)))))

(assert (=> b!6279546 (= lt!2354116 (Context!11169 lt!2354109))))

(assert (=> b!6279546 (= lt!2354109 (Cons!64776 (regTwo!32912 (regOne!32912 r!7292)) (t!378460 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun b!6279547 () Bool)

(declare-fun res!2589911 () Bool)

(assert (=> b!6279547 (=> res!2589911 e!3818861)))

(declare-fun isEmpty!36820 (List!64900) Bool)

(assert (=> b!6279547 (= res!2589911 (isEmpty!36820 (t!378460 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun b!6279548 () Bool)

(declare-fun tp!1750259 () Bool)

(assert (=> b!6279548 (= e!3818873 tp!1750259)))

(declare-fun b!6279549 () Bool)

(declare-fun tp!1750263 () Bool)

(assert (=> b!6279549 (= e!3818876 tp!1750263)))

(assert (=> b!6279550 (= e!3818861 e!3818864)))

(declare-fun res!2589908 () Bool)

(assert (=> b!6279550 (=> res!2589908 e!3818864)))

(assert (=> b!6279550 (= res!2589908 (or (and (is-ElementMatch!16200 (regOne!32912 r!7292)) (= (c!1138637 (regOne!32912 r!7292)) (h!71223 s!2326))) (is-Union!16200 (regOne!32912 r!7292)) (not (is-Concat!25045 (regOne!32912 r!7292)))))))

(declare-fun lt!2354110 () Unit!158131)

(assert (=> b!6279550 (= lt!2354110 e!3818862)))

(declare-fun c!1138636 () Bool)

(assert (=> b!6279550 (= c!1138636 (nullable!6193 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(assert (=> b!6279550 (= (flatMap!1705 z!1189 lambda!344338) (derivationStepZipperUp!1374 (h!71225 zl!343) (h!71223 s!2326)))))

(declare-fun lt!2354118 () Unit!158131)

(assert (=> b!6279550 (= lt!2354118 (lemmaFlatMapOnSingletonSet!1231 z!1189 (h!71225 zl!343) lambda!344338))))

(assert (=> b!6279550 (= lt!2354120 (derivationStepZipperUp!1374 lt!2354125 (h!71223 s!2326)))))

(assert (=> b!6279550 (= lt!2354105 (derivationStepZipperDown!1448 (h!71224 (exprs!6084 (h!71225 zl!343))) lt!2354125 (h!71223 s!2326)))))

(assert (=> b!6279550 (= lt!2354125 (Context!11169 (t!378460 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun lt!2354124 () (Set Context!11168))

(assert (=> b!6279550 (= lt!2354124 (derivationStepZipperUp!1374 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343))))) (h!71223 s!2326)))))

(declare-fun b!6279551 () Bool)

(declare-fun res!2589912 () Bool)

(assert (=> b!6279551 (=> res!2589912 e!3818863)))

(assert (=> b!6279551 (= res!2589912 (not (= r!7292 (generalisedConcat!1797 (exprs!6084 (h!71225 zl!343))))))))

(assert (= (and start!624212 res!2589905) b!6279517))

(assert (= (and b!6279517 res!2589901) b!6279523))

(assert (= (and b!6279523 res!2589896) b!6279532))

(assert (= (and b!6279532 (not res!2589898)) b!6279542))

(assert (= (and b!6279542 (not res!2589892)) b!6279551))

(assert (= (and b!6279551 (not res!2589912)) b!6279533))

(assert (= (and b!6279533 (not res!2589906)) b!6279526))

(assert (= (and b!6279526 (not res!2589904)) b!6279538))

(assert (= (and b!6279538 (not res!2589900)) b!6279527))

(assert (= (and b!6279527 (not res!2589894)) b!6279547))

(assert (= (and b!6279547 (not res!2589911)) b!6279550))

(assert (= (and b!6279550 c!1138636) b!6279516))

(assert (= (and b!6279550 (not c!1138636)) b!6279531))

(assert (= (and b!6279516 (not res!2589909)) b!6279544))

(assert (= (and b!6279550 (not res!2589908)) b!6279530))

(assert (= (and b!6279530 (not res!2589907)) b!6279546))

(assert (= (and b!6279546 (not res!2589897)) b!6279528))

(assert (= (and b!6279528 (not res!2589895)) b!6279536))

(assert (= (and b!6279528 res!2589891) b!6279520))

(assert (= (and b!6279528 (not res!2589915)) b!6279521))

(assert (= (and b!6279521 (not res!2589902)) b!6279537))

(assert (= (and b!6279537 (not res!2589916)) b!6279535))

(assert (= (and b!6279537 res!2589893) b!6279540))

(assert (= (and b!6279537 (not res!2589914)) b!6279525))

(assert (= (and b!6279525 (not res!2589899)) b!6279541))

(assert (= (and b!6279541 (not res!2589903)) b!6279539))

(assert (= (and b!6279539 (not res!2589913)) b!6279545))

(assert (= (and b!6279545 (not res!2589910)) b!6279543))

(assert (= (and start!624212 (is-ElementMatch!16200 r!7292)) b!6279534))

(assert (= (and start!624212 (is-Concat!25045 r!7292)) b!6279518))

(assert (= (and start!624212 (is-Star!16200 r!7292)) b!6279548))

(assert (= (and start!624212 (is-Union!16200 r!7292)) b!6279519))

(assert (= (and start!624212 condSetEmpty!42725) setIsEmpty!42725))

(assert (= (and start!624212 (not condSetEmpty!42725)) setNonEmpty!42725))

(assert (= setNonEmpty!42725 b!6279524))

(assert (= b!6279529 b!6279549))

(assert (= (and start!624212 (is-Cons!64777 zl!343)) b!6279529))

(assert (= (and start!624212 (is-Cons!64775 s!2326)) b!6279522))

(declare-fun m!7100540 () Bool)

(assert (=> b!6279532 m!7100540))

(declare-fun m!7100542 () Bool)

(assert (=> b!6279532 m!7100542))

(declare-fun m!7100544 () Bool)

(assert (=> b!6279532 m!7100544))

(declare-fun m!7100546 () Bool)

(assert (=> b!6279523 m!7100546))

(declare-fun m!7100548 () Bool)

(assert (=> b!6279539 m!7100548))

(declare-fun m!7100550 () Bool)

(assert (=> b!6279539 m!7100550))

(declare-fun m!7100552 () Bool)

(assert (=> b!6279543 m!7100552))

(declare-fun m!7100554 () Bool)

(assert (=> b!6279543 m!7100554))

(declare-fun m!7100556 () Bool)

(assert (=> b!6279543 m!7100556))

(declare-fun m!7100558 () Bool)

(assert (=> b!6279543 m!7100558))

(declare-fun m!7100560 () Bool)

(assert (=> b!6279543 m!7100560))

(declare-fun m!7100562 () Bool)

(assert (=> b!6279543 m!7100562))

(declare-fun m!7100564 () Bool)

(assert (=> b!6279543 m!7100564))

(declare-fun m!7100566 () Bool)

(assert (=> b!6279543 m!7100566))

(declare-fun m!7100568 () Bool)

(assert (=> b!6279543 m!7100568))

(declare-fun m!7100570 () Bool)

(assert (=> b!6279543 m!7100570))

(declare-fun m!7100572 () Bool)

(assert (=> b!6279543 m!7100572))

(assert (=> b!6279543 m!7100564))

(declare-fun m!7100574 () Bool)

(assert (=> b!6279543 m!7100574))

(declare-fun m!7100576 () Bool)

(assert (=> b!6279543 m!7100576))

(assert (=> b!6279543 m!7100552))

(declare-fun m!7100578 () Bool)

(assert (=> b!6279543 m!7100578))

(declare-fun m!7100580 () Bool)

(assert (=> b!6279543 m!7100580))

(declare-fun m!7100582 () Bool)

(assert (=> b!6279543 m!7100582))

(declare-fun m!7100584 () Bool)

(assert (=> b!6279543 m!7100584))

(declare-fun m!7100586 () Bool)

(assert (=> b!6279530 m!7100586))

(declare-fun m!7100588 () Bool)

(assert (=> b!6279516 m!7100588))

(declare-fun m!7100590 () Bool)

(assert (=> b!6279516 m!7100590))

(declare-fun m!7100592 () Bool)

(assert (=> b!6279516 m!7100592))

(declare-fun m!7100594 () Bool)

(assert (=> b!6279517 m!7100594))

(declare-fun m!7100596 () Bool)

(assert (=> b!6279550 m!7100596))

(declare-fun m!7100598 () Bool)

(assert (=> b!6279550 m!7100598))

(declare-fun m!7100600 () Bool)

(assert (=> b!6279550 m!7100600))

(declare-fun m!7100602 () Bool)

(assert (=> b!6279550 m!7100602))

(declare-fun m!7100604 () Bool)

(assert (=> b!6279550 m!7100604))

(declare-fun m!7100606 () Bool)

(assert (=> b!6279550 m!7100606))

(declare-fun m!7100608 () Bool)

(assert (=> b!6279550 m!7100608))

(declare-fun m!7100610 () Bool)

(assert (=> b!6279547 m!7100610))

(declare-fun m!7100612 () Bool)

(assert (=> b!6279545 m!7100612))

(declare-fun m!7100614 () Bool)

(assert (=> b!6279545 m!7100614))

(declare-fun m!7100616 () Bool)

(assert (=> b!6279526 m!7100616))

(assert (=> b!6279526 m!7100616))

(declare-fun m!7100618 () Bool)

(assert (=> b!6279526 m!7100618))

(declare-fun m!7100620 () Bool)

(assert (=> b!6279521 m!7100620))

(declare-fun m!7100622 () Bool)

(assert (=> b!6279521 m!7100622))

(declare-fun m!7100624 () Bool)

(assert (=> b!6279521 m!7100624))

(declare-fun m!7100626 () Bool)

(assert (=> b!6279521 m!7100626))

(declare-fun m!7100628 () Bool)

(assert (=> b!6279521 m!7100628))

(declare-fun m!7100630 () Bool)

(assert (=> b!6279521 m!7100630))

(declare-fun m!7100632 () Bool)

(assert (=> b!6279521 m!7100632))

(declare-fun m!7100634 () Bool)

(assert (=> start!624212 m!7100634))

(declare-fun m!7100636 () Bool)

(assert (=> b!6279541 m!7100636))

(declare-fun m!7100638 () Bool)

(assert (=> b!6279541 m!7100638))

(declare-fun m!7100640 () Bool)

(assert (=> setNonEmpty!42725 m!7100640))

(declare-fun m!7100642 () Bool)

(assert (=> b!6279540 m!7100642))

(assert (=> b!6279540 m!7100642))

(declare-fun m!7100644 () Bool)

(assert (=> b!6279540 m!7100644))

(declare-fun m!7100646 () Bool)

(assert (=> b!6279536 m!7100646))

(declare-fun m!7100648 () Bool)

(assert (=> b!6279542 m!7100648))

(declare-fun m!7100650 () Bool)

(assert (=> b!6279551 m!7100650))

(declare-fun m!7100652 () Bool)

(assert (=> b!6279527 m!7100652))

(declare-fun m!7100654 () Bool)

(assert (=> b!6279527 m!7100654))

(declare-fun m!7100656 () Bool)

(assert (=> b!6279527 m!7100656))

(declare-fun m!7100658 () Bool)

(assert (=> b!6279527 m!7100658))

(declare-fun m!7100660 () Bool)

(assert (=> b!6279527 m!7100660))

(assert (=> b!6279527 m!7100656))

(assert (=> b!6279527 m!7100652))

(declare-fun m!7100662 () Bool)

(assert (=> b!6279527 m!7100662))

(assert (=> b!6279520 m!7100646))

(declare-fun m!7100664 () Bool)

(assert (=> b!6279537 m!7100664))

(declare-fun m!7100666 () Bool)

(assert (=> b!6279537 m!7100666))

(assert (=> b!6279537 m!7100628))

(declare-fun m!7100668 () Bool)

(assert (=> b!6279537 m!7100668))

(declare-fun m!7100670 () Bool)

(assert (=> b!6279537 m!7100670))

(declare-fun m!7100672 () Bool)

(assert (=> b!6279537 m!7100672))

(assert (=> b!6279528 m!7100590))

(declare-fun m!7100674 () Bool)

(assert (=> b!6279528 m!7100674))

(declare-fun m!7100676 () Bool)

(assert (=> b!6279528 m!7100676))

(declare-fun m!7100678 () Bool)

(assert (=> b!6279528 m!7100678))

(declare-fun m!7100680 () Bool)

(assert (=> b!6279529 m!7100680))

(declare-fun m!7100682 () Bool)

(assert (=> b!6279546 m!7100682))

(declare-fun m!7100684 () Bool)

(assert (=> b!6279546 m!7100684))

(declare-fun m!7100686 () Bool)

(assert (=> b!6279535 m!7100686))

(declare-fun m!7100688 () Bool)

(assert (=> b!6279544 m!7100688))

(push 1)

(assert (not b!6279536))

(assert (not b!6279544))

(assert (not b!6279518))

(assert (not b!6279549))

(assert (not b!6279550))

(assert (not b!6279539))

(assert (not b!6279529))

(assert (not b!6279546))

(assert (not b!6279551))

(assert (not b!6279521))

(assert tp_is_empty!41653)

(assert (not b!6279524))

(assert (not b!6279532))

(assert (not b!6279519))

(assert (not b!6279522))

(assert (not b!6279537))

(assert (not setNonEmpty!42725))

(assert (not b!6279516))

(assert (not b!6279545))

(assert (not b!6279548))

(assert (not start!624212))

(assert (not b!6279541))

(assert (not b!6279526))

(assert (not b!6279547))

(assert (not b!6279542))

(assert (not b!6279527))

(assert (not b!6279528))

(assert (not b!6279540))

(assert (not b!6279543))

(assert (not b!6279523))

(assert (not b!6279520))

(assert (not b!6279530))

(assert (not b!6279517))

(assert (not b!6279535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1970826 () Bool)

(declare-fun nullableFct!2144 (Regex!16200) Bool)

(assert (=> d!1970826 (= (nullable!6193 (regOne!32912 (regOne!32912 r!7292))) (nullableFct!2144 (regOne!32912 (regOne!32912 r!7292))))))

(declare-fun bs!1568612 () Bool)

(assert (= bs!1568612 d!1970826))

(declare-fun m!7100840 () Bool)

(assert (=> bs!1568612 m!7100840))

(assert (=> b!6279530 d!1970826))

(declare-fun b!6279716 () Bool)

(declare-fun e!3818969 () Bool)

(declare-fun lt!2354253 () Regex!16200)

(declare-fun isEmptyExpr!1606 (Regex!16200) Bool)

(assert (=> b!6279716 (= e!3818969 (isEmptyExpr!1606 lt!2354253))))

(declare-fun b!6279717 () Bool)

(declare-fun e!3818970 () Regex!16200)

(assert (=> b!6279717 (= e!3818970 (Concat!25045 (h!71224 (exprs!6084 (h!71225 zl!343))) (generalisedConcat!1797 (t!378460 (exprs!6084 (h!71225 zl!343))))))))

(declare-fun b!6279718 () Bool)

(declare-fun e!3818967 () Bool)

(assert (=> b!6279718 (= e!3818967 (isEmpty!36820 (t!378460 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun d!1970828 () Bool)

(declare-fun e!3818965 () Bool)

(assert (=> d!1970828 e!3818965))

(declare-fun res!2590024 () Bool)

(assert (=> d!1970828 (=> (not res!2590024) (not e!3818965))))

(assert (=> d!1970828 (= res!2590024 (validRegex!7936 lt!2354253))))

(declare-fun e!3818968 () Regex!16200)

(assert (=> d!1970828 (= lt!2354253 e!3818968)))

(declare-fun c!1138659 () Bool)

(assert (=> d!1970828 (= c!1138659 e!3818967)))

(declare-fun res!2590023 () Bool)

(assert (=> d!1970828 (=> (not res!2590023) (not e!3818967))))

(assert (=> d!1970828 (= res!2590023 (is-Cons!64776 (exprs!6084 (h!71225 zl!343))))))

(declare-fun lambda!344366 () Int)

(declare-fun forall!15337 (List!64900 Int) Bool)

(assert (=> d!1970828 (forall!15337 (exprs!6084 (h!71225 zl!343)) lambda!344366)))

(assert (=> d!1970828 (= (generalisedConcat!1797 (exprs!6084 (h!71225 zl!343))) lt!2354253)))

(declare-fun b!6279719 () Bool)

(assert (=> b!6279719 (= e!3818970 EmptyExpr!16200)))

(declare-fun b!6279720 () Bool)

(declare-fun e!3818966 () Bool)

(assert (=> b!6279720 (= e!3818969 e!3818966)))

(declare-fun c!1138657 () Bool)

(declare-fun tail!11985 (List!64900) List!64900)

(assert (=> b!6279720 (= c!1138657 (isEmpty!36820 (tail!11985 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun b!6279721 () Bool)

(assert (=> b!6279721 (= e!3818965 e!3818969)))

(declare-fun c!1138660 () Bool)

(assert (=> b!6279721 (= c!1138660 (isEmpty!36820 (exprs!6084 (h!71225 zl!343))))))

(declare-fun b!6279722 () Bool)

(declare-fun isConcat!1129 (Regex!16200) Bool)

(assert (=> b!6279722 (= e!3818966 (isConcat!1129 lt!2354253))))

(declare-fun b!6279723 () Bool)

(assert (=> b!6279723 (= e!3818968 (h!71224 (exprs!6084 (h!71225 zl!343))))))

(declare-fun b!6279724 () Bool)

(assert (=> b!6279724 (= e!3818968 e!3818970)))

(declare-fun c!1138658 () Bool)

(assert (=> b!6279724 (= c!1138658 (is-Cons!64776 (exprs!6084 (h!71225 zl!343))))))

(declare-fun b!6279725 () Bool)

(declare-fun head!12900 (List!64900) Regex!16200)

(assert (=> b!6279725 (= e!3818966 (= lt!2354253 (head!12900 (exprs!6084 (h!71225 zl!343)))))))

(assert (= (and d!1970828 res!2590023) b!6279718))

(assert (= (and d!1970828 c!1138659) b!6279723))

(assert (= (and d!1970828 (not c!1138659)) b!6279724))

(assert (= (and b!6279724 c!1138658) b!6279717))

(assert (= (and b!6279724 (not c!1138658)) b!6279719))

(assert (= (and d!1970828 res!2590024) b!6279721))

(assert (= (and b!6279721 c!1138660) b!6279716))

(assert (= (and b!6279721 (not c!1138660)) b!6279720))

(assert (= (and b!6279720 c!1138657) b!6279725))

(assert (= (and b!6279720 (not c!1138657)) b!6279722))

(declare-fun m!7100842 () Bool)

(assert (=> b!6279721 m!7100842))

(declare-fun m!7100844 () Bool)

(assert (=> b!6279720 m!7100844))

(assert (=> b!6279720 m!7100844))

(declare-fun m!7100846 () Bool)

(assert (=> b!6279720 m!7100846))

(declare-fun m!7100848 () Bool)

(assert (=> b!6279717 m!7100848))

(declare-fun m!7100850 () Bool)

(assert (=> d!1970828 m!7100850))

(declare-fun m!7100852 () Bool)

(assert (=> d!1970828 m!7100852))

(assert (=> b!6279718 m!7100610))

(declare-fun m!7100854 () Bool)

(assert (=> b!6279725 m!7100854))

(declare-fun m!7100856 () Bool)

(assert (=> b!6279722 m!7100856))

(declare-fun m!7100858 () Bool)

(assert (=> b!6279716 m!7100858))

(assert (=> b!6279551 d!1970828))

(declare-fun bs!1568613 () Bool)

(declare-fun b!6279765 () Bool)

(assert (= bs!1568613 (and b!6279765 b!6279527)))

(declare-fun lambda!344371 () Int)

(assert (=> bs!1568613 (not (= lambda!344371 lambda!344336))))

(assert (=> bs!1568613 (not (= lambda!344371 lambda!344337))))

(declare-fun bs!1568614 () Bool)

(assert (= bs!1568614 (and b!6279765 b!6279543)))

(assert (=> bs!1568614 (not (= lambda!344371 lambda!344339))))

(assert (=> bs!1568614 (not (= lambda!344371 lambda!344340))))

(assert (=> b!6279765 true))

(assert (=> b!6279765 true))

(declare-fun bs!1568615 () Bool)

(declare-fun b!6279761 () Bool)

(assert (= bs!1568615 (and b!6279761 b!6279543)))

(declare-fun lambda!344372 () Int)

(assert (=> bs!1568615 (not (= lambda!344372 lambda!344339))))

(declare-fun bs!1568616 () Bool)

(assert (= bs!1568616 (and b!6279761 b!6279527)))

(assert (=> bs!1568616 (= lambda!344372 lambda!344337)))

(declare-fun bs!1568617 () Bool)

(assert (= bs!1568617 (and b!6279761 b!6279765)))

(assert (=> bs!1568617 (not (= lambda!344372 lambda!344371))))

(assert (=> bs!1568616 (not (= lambda!344372 lambda!344336))))

(assert (=> bs!1568615 (= (and (= (regOne!32912 r!7292) (regOne!32912 (regOne!32912 r!7292))) (= (regTwo!32912 r!7292) lt!2354114)) (= lambda!344372 lambda!344340))))

(assert (=> b!6279761 true))

(assert (=> b!6279761 true))

(declare-fun b!6279758 () Bool)

(declare-fun e!3818990 () Bool)

(declare-fun e!3818991 () Bool)

(assert (=> b!6279758 (= e!3818990 e!3818991)))

(declare-fun res!2590043 () Bool)

(assert (=> b!6279758 (= res!2590043 (not (is-EmptyLang!16200 r!7292)))))

(assert (=> b!6279758 (=> (not res!2590043) (not e!3818991))))

(declare-fun b!6279759 () Bool)

(declare-fun e!3818995 () Bool)

(assert (=> b!6279759 (= e!3818995 (matchRSpec!3301 (regTwo!32913 r!7292) s!2326))))

(declare-fun b!6279760 () Bool)

(declare-fun c!1138670 () Bool)

(assert (=> b!6279760 (= c!1138670 (is-ElementMatch!16200 r!7292))))

(declare-fun e!3818992 () Bool)

(assert (=> b!6279760 (= e!3818991 e!3818992)))

(declare-fun e!3818989 () Bool)

(declare-fun call!531397 () Bool)

(assert (=> b!6279761 (= e!3818989 call!531397)))

(declare-fun d!1970830 () Bool)

(declare-fun c!1138672 () Bool)

(assert (=> d!1970830 (= c!1138672 (is-EmptyExpr!16200 r!7292))))

(assert (=> d!1970830 (= (matchRSpec!3301 r!7292 s!2326) e!3818990)))

(declare-fun c!1138671 () Bool)

(declare-fun bm!531392 () Bool)

(assert (=> bm!531392 (= call!531397 (Exists!3270 (ite c!1138671 lambda!344371 lambda!344372)))))

(declare-fun bm!531393 () Bool)

(declare-fun call!531398 () Bool)

(declare-fun isEmpty!36823 (List!64899) Bool)

(assert (=> bm!531393 (= call!531398 (isEmpty!36823 s!2326))))

(declare-fun b!6279762 () Bool)

(declare-fun c!1138669 () Bool)

(assert (=> b!6279762 (= c!1138669 (is-Union!16200 r!7292))))

(declare-fun e!3818993 () Bool)

(assert (=> b!6279762 (= e!3818992 e!3818993)))

(declare-fun b!6279763 () Bool)

(assert (=> b!6279763 (= e!3818990 call!531398)))

(declare-fun b!6279764 () Bool)

(assert (=> b!6279764 (= e!3818993 e!3818995)))

(declare-fun res!2590041 () Bool)

(assert (=> b!6279764 (= res!2590041 (matchRSpec!3301 (regOne!32913 r!7292) s!2326))))

(assert (=> b!6279764 (=> res!2590041 e!3818995)))

(declare-fun e!3818994 () Bool)

(assert (=> b!6279765 (= e!3818994 call!531397)))

(declare-fun b!6279766 () Bool)

(assert (=> b!6279766 (= e!3818992 (= s!2326 (Cons!64775 (c!1138637 r!7292) Nil!64775)))))

(declare-fun b!6279767 () Bool)

(assert (=> b!6279767 (= e!3818993 e!3818989)))

(assert (=> b!6279767 (= c!1138671 (is-Star!16200 r!7292))))

(declare-fun b!6279768 () Bool)

(declare-fun res!2590042 () Bool)

(assert (=> b!6279768 (=> res!2590042 e!3818994)))

(assert (=> b!6279768 (= res!2590042 call!531398)))

(assert (=> b!6279768 (= e!3818989 e!3818994)))

(assert (= (and d!1970830 c!1138672) b!6279763))

(assert (= (and d!1970830 (not c!1138672)) b!6279758))

(assert (= (and b!6279758 res!2590043) b!6279760))

(assert (= (and b!6279760 c!1138670) b!6279766))

(assert (= (and b!6279760 (not c!1138670)) b!6279762))

(assert (= (and b!6279762 c!1138669) b!6279764))

(assert (= (and b!6279762 (not c!1138669)) b!6279767))

(assert (= (and b!6279764 (not res!2590041)) b!6279759))

(assert (= (and b!6279767 c!1138671) b!6279768))

(assert (= (and b!6279767 (not c!1138671)) b!6279761))

(assert (= (and b!6279768 (not res!2590042)) b!6279765))

(assert (= (or b!6279765 b!6279761) bm!531392))

(assert (= (or b!6279763 b!6279768) bm!531393))

(declare-fun m!7100860 () Bool)

(assert (=> b!6279759 m!7100860))

(declare-fun m!7100862 () Bool)

(assert (=> bm!531392 m!7100862))

(declare-fun m!7100864 () Bool)

(assert (=> bm!531393 m!7100864))

(declare-fun m!7100866 () Bool)

(assert (=> b!6279764 m!7100866))

(assert (=> b!6279532 d!1970830))

(declare-fun b!6279797 () Bool)

(declare-fun res!2590065 () Bool)

(declare-fun e!3819012 () Bool)

(assert (=> b!6279797 (=> res!2590065 e!3819012)))

(declare-fun tail!11986 (List!64899) List!64899)

(assert (=> b!6279797 (= res!2590065 (not (isEmpty!36823 (tail!11986 s!2326))))))

(declare-fun b!6279798 () Bool)

(declare-fun e!3819013 () Bool)

(declare-fun derivativeStep!4909 (Regex!16200 C!32670) Regex!16200)

(declare-fun head!12901 (List!64899) C!32670)

(assert (=> b!6279798 (= e!3819013 (matchR!8383 (derivativeStep!4909 r!7292 (head!12901 s!2326)) (tail!11986 s!2326)))))

(declare-fun b!6279799 () Bool)

(assert (=> b!6279799 (= e!3819013 (nullable!6193 r!7292))))

(declare-fun b!6279800 () Bool)

(declare-fun e!3819015 () Bool)

(declare-fun e!3819010 () Bool)

(assert (=> b!6279800 (= e!3819015 e!3819010)))

(declare-fun c!1138679 () Bool)

(assert (=> b!6279800 (= c!1138679 (is-EmptyLang!16200 r!7292))))

(declare-fun b!6279801 () Bool)

(declare-fun lt!2354256 () Bool)

(assert (=> b!6279801 (= e!3819010 (not lt!2354256))))

(declare-fun b!6279802 () Bool)

(declare-fun e!3819011 () Bool)

(declare-fun e!3819016 () Bool)

(assert (=> b!6279802 (= e!3819011 e!3819016)))

(declare-fun res!2590061 () Bool)

(assert (=> b!6279802 (=> (not res!2590061) (not e!3819016))))

(assert (=> b!6279802 (= res!2590061 (not lt!2354256))))

(declare-fun b!6279803 () Bool)

(declare-fun e!3819014 () Bool)

(assert (=> b!6279803 (= e!3819014 (= (head!12901 s!2326) (c!1138637 r!7292)))))

(declare-fun b!6279804 () Bool)

(assert (=> b!6279804 (= e!3819012 (not (= (head!12901 s!2326) (c!1138637 r!7292))))))

(declare-fun b!6279805 () Bool)

(assert (=> b!6279805 (= e!3819016 e!3819012)))

(declare-fun res!2590067 () Bool)

(assert (=> b!6279805 (=> res!2590067 e!3819012)))

(declare-fun call!531401 () Bool)

(assert (=> b!6279805 (= res!2590067 call!531401)))

(declare-fun b!6279806 () Bool)

(assert (=> b!6279806 (= e!3819015 (= lt!2354256 call!531401))))

(declare-fun b!6279807 () Bool)

(declare-fun res!2590063 () Bool)

(assert (=> b!6279807 (=> (not res!2590063) (not e!3819014))))

(assert (=> b!6279807 (= res!2590063 (isEmpty!36823 (tail!11986 s!2326)))))

(declare-fun b!6279809 () Bool)

(declare-fun res!2590064 () Bool)

(assert (=> b!6279809 (=> res!2590064 e!3819011)))

(assert (=> b!6279809 (= res!2590064 (not (is-ElementMatch!16200 r!7292)))))

(assert (=> b!6279809 (= e!3819010 e!3819011)))

(declare-fun bm!531396 () Bool)

(assert (=> bm!531396 (= call!531401 (isEmpty!36823 s!2326))))

(declare-fun b!6279810 () Bool)

(declare-fun res!2590060 () Bool)

(assert (=> b!6279810 (=> (not res!2590060) (not e!3819014))))

(assert (=> b!6279810 (= res!2590060 (not call!531401))))

(declare-fun d!1970832 () Bool)

(assert (=> d!1970832 e!3819015))

(declare-fun c!1138680 () Bool)

(assert (=> d!1970832 (= c!1138680 (is-EmptyExpr!16200 r!7292))))

(assert (=> d!1970832 (= lt!2354256 e!3819013)))

(declare-fun c!1138681 () Bool)

(assert (=> d!1970832 (= c!1138681 (isEmpty!36823 s!2326))))

(assert (=> d!1970832 (validRegex!7936 r!7292)))

(assert (=> d!1970832 (= (matchR!8383 r!7292 s!2326) lt!2354256)))

(declare-fun b!6279808 () Bool)

(declare-fun res!2590066 () Bool)

(assert (=> b!6279808 (=> res!2590066 e!3819011)))

(assert (=> b!6279808 (= res!2590066 e!3819014)))

(declare-fun res!2590062 () Bool)

(assert (=> b!6279808 (=> (not res!2590062) (not e!3819014))))

(assert (=> b!6279808 (= res!2590062 lt!2354256)))

(assert (= (and d!1970832 c!1138681) b!6279799))

(assert (= (and d!1970832 (not c!1138681)) b!6279798))

(assert (= (and d!1970832 c!1138680) b!6279806))

(assert (= (and d!1970832 (not c!1138680)) b!6279800))

(assert (= (and b!6279800 c!1138679) b!6279801))

(assert (= (and b!6279800 (not c!1138679)) b!6279809))

(assert (= (and b!6279809 (not res!2590064)) b!6279808))

(assert (= (and b!6279808 res!2590062) b!6279810))

(assert (= (and b!6279810 res!2590060) b!6279807))

(assert (= (and b!6279807 res!2590063) b!6279803))

(assert (= (and b!6279808 (not res!2590066)) b!6279802))

(assert (= (and b!6279802 res!2590061) b!6279805))

(assert (= (and b!6279805 (not res!2590067)) b!6279797))

(assert (= (and b!6279797 (not res!2590065)) b!6279804))

(assert (= (or b!6279806 b!6279805 b!6279810) bm!531396))

(assert (=> bm!531396 m!7100864))

(declare-fun m!7100868 () Bool)

(assert (=> b!6279798 m!7100868))

(assert (=> b!6279798 m!7100868))

(declare-fun m!7100870 () Bool)

(assert (=> b!6279798 m!7100870))

(declare-fun m!7100872 () Bool)

(assert (=> b!6279798 m!7100872))

(assert (=> b!6279798 m!7100870))

(assert (=> b!6279798 m!7100872))

(declare-fun m!7100874 () Bool)

(assert (=> b!6279798 m!7100874))

(assert (=> b!6279804 m!7100868))

(assert (=> b!6279803 m!7100868))

(declare-fun m!7100876 () Bool)

(assert (=> b!6279799 m!7100876))

(assert (=> b!6279797 m!7100872))

(assert (=> b!6279797 m!7100872))

(declare-fun m!7100878 () Bool)

(assert (=> b!6279797 m!7100878))

(assert (=> b!6279807 m!7100872))

(assert (=> b!6279807 m!7100872))

(assert (=> b!6279807 m!7100878))

(assert (=> d!1970832 m!7100864))

(assert (=> d!1970832 m!7100634))

(assert (=> b!6279532 d!1970832))

(declare-fun d!1970834 () Bool)

(assert (=> d!1970834 (= (matchR!8383 r!7292 s!2326) (matchRSpec!3301 r!7292 s!2326))))

(declare-fun lt!2354259 () Unit!158131)

(declare-fun choose!46616 (Regex!16200 List!64899) Unit!158131)

(assert (=> d!1970834 (= lt!2354259 (choose!46616 r!7292 s!2326))))

(assert (=> d!1970834 (validRegex!7936 r!7292)))

(assert (=> d!1970834 (= (mainMatchTheorem!3301 r!7292 s!2326) lt!2354259)))

(declare-fun bs!1568618 () Bool)

(assert (= bs!1568618 d!1970834))

(assert (=> bs!1568618 m!7100542))

(assert (=> bs!1568618 m!7100540))

(declare-fun m!7100880 () Bool)

(assert (=> bs!1568618 m!7100880))

(assert (=> bs!1568618 m!7100634))

(assert (=> b!6279532 d!1970834))

(declare-fun d!1970836 () Bool)

(declare-fun c!1138684 () Bool)

(assert (=> d!1970836 (= c!1138684 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819019 () Bool)

(assert (=> d!1970836 (= (matchZipper!2212 lt!2354100 (t!378459 s!2326)) e!3819019)))

(declare-fun b!6279815 () Bool)

(declare-fun nullableZipper!1970 ((Set Context!11168)) Bool)

(assert (=> b!6279815 (= e!3819019 (nullableZipper!1970 lt!2354100))))

(declare-fun b!6279816 () Bool)

(assert (=> b!6279816 (= e!3819019 (matchZipper!2212 (derivationStepZipper!2166 lt!2354100 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970836 c!1138684) b!6279815))

(assert (= (and d!1970836 (not c!1138684)) b!6279816))

(declare-fun m!7100882 () Bool)

(assert (=> d!1970836 m!7100882))

(declare-fun m!7100884 () Bool)

(assert (=> b!6279815 m!7100884))

(declare-fun m!7100886 () Bool)

(assert (=> b!6279816 m!7100886))

(assert (=> b!6279816 m!7100886))

(declare-fun m!7100888 () Bool)

(assert (=> b!6279816 m!7100888))

(declare-fun m!7100890 () Bool)

(assert (=> b!6279816 m!7100890))

(assert (=> b!6279816 m!7100888))

(assert (=> b!6279816 m!7100890))

(declare-fun m!7100892 () Bool)

(assert (=> b!6279816 m!7100892))

(assert (=> b!6279535 d!1970836))

(declare-fun b!6279823 () Bool)

(assert (=> b!6279823 true))

(declare-fun bs!1568619 () Bool)

(declare-fun b!6279825 () Bool)

(assert (= bs!1568619 (and b!6279825 b!6279823)))

(declare-fun lt!2354268 () Int)

(declare-fun lt!2354270 () Int)

(declare-fun lambda!344380 () Int)

(declare-fun lambda!344381 () Int)

(assert (=> bs!1568619 (= (= lt!2354270 lt!2354268) (= lambda!344381 lambda!344380))))

(assert (=> b!6279825 true))

(declare-fun d!1970838 () Bool)

(declare-fun e!3819024 () Bool)

(assert (=> d!1970838 e!3819024))

(declare-fun res!2590070 () Bool)

(assert (=> d!1970838 (=> (not res!2590070) (not e!3819024))))

(assert (=> d!1970838 (= res!2590070 (>= lt!2354270 0))))

(declare-fun e!3819025 () Int)

(assert (=> d!1970838 (= lt!2354270 e!3819025)))

(declare-fun c!1138693 () Bool)

(assert (=> d!1970838 (= c!1138693 (is-Cons!64777 lt!2354097))))

(assert (=> d!1970838 (= (zipperDepth!325 lt!2354097) lt!2354270)))

(assert (=> b!6279823 (= e!3819025 lt!2354268)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!217 (Context!11168) Int)

(assert (=> b!6279823 (= lt!2354268 (maxBigInt!0 (contextDepth!217 (h!71225 lt!2354097)) (zipperDepth!325 (t!378461 lt!2354097))))))

(declare-fun lambda!344379 () Int)

(declare-fun lt!2354269 () Unit!158131)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!201 (List!64901 Int Int Int) Unit!158131)

(assert (=> b!6279823 (= lt!2354269 (lemmaForallContextDepthBiggerThanTransitive!201 (t!378461 lt!2354097) lt!2354268 (zipperDepth!325 (t!378461 lt!2354097)) lambda!344379))))

(declare-fun forall!15338 (List!64901 Int) Bool)

(assert (=> b!6279823 (forall!15338 (t!378461 lt!2354097) lambda!344380)))

(declare-fun lt!2354271 () Unit!158131)

(assert (=> b!6279823 (= lt!2354271 lt!2354269)))

(declare-fun b!6279824 () Bool)

(assert (=> b!6279824 (= e!3819025 0)))

(assert (=> b!6279825 (= e!3819024 (forall!15338 lt!2354097 lambda!344381))))

(assert (= (and d!1970838 c!1138693) b!6279823))

(assert (= (and d!1970838 (not c!1138693)) b!6279824))

(assert (= (and d!1970838 res!2590070) b!6279825))

(declare-fun m!7100894 () Bool)

(assert (=> b!6279823 m!7100894))

(assert (=> b!6279823 m!7100894))

(declare-fun m!7100896 () Bool)

(assert (=> b!6279823 m!7100896))

(declare-fun m!7100898 () Bool)

(assert (=> b!6279823 m!7100898))

(assert (=> b!6279823 m!7100894))

(declare-fun m!7100900 () Bool)

(assert (=> b!6279823 m!7100900))

(assert (=> b!6279823 m!7100898))

(declare-fun m!7100902 () Bool)

(assert (=> b!6279823 m!7100902))

(declare-fun m!7100904 () Bool)

(assert (=> b!6279825 m!7100904))

(assert (=> b!6279545 d!1970838))

(declare-fun bs!1568620 () Bool)

(declare-fun b!6279828 () Bool)

(assert (= bs!1568620 (and b!6279828 b!6279823)))

(declare-fun lambda!344382 () Int)

(assert (=> bs!1568620 (= lambda!344382 lambda!344379)))

(declare-fun lt!2354272 () Int)

(declare-fun lambda!344383 () Int)

(assert (=> bs!1568620 (= (= lt!2354272 lt!2354268) (= lambda!344383 lambda!344380))))

(declare-fun bs!1568621 () Bool)

(assert (= bs!1568621 (and b!6279828 b!6279825)))

(assert (=> bs!1568621 (= (= lt!2354272 lt!2354270) (= lambda!344383 lambda!344381))))

(assert (=> b!6279828 true))

(declare-fun bs!1568622 () Bool)

(declare-fun b!6279830 () Bool)

(assert (= bs!1568622 (and b!6279830 b!6279823)))

(declare-fun lt!2354274 () Int)

(declare-fun lambda!344384 () Int)

(assert (=> bs!1568622 (= (= lt!2354274 lt!2354268) (= lambda!344384 lambda!344380))))

(declare-fun bs!1568623 () Bool)

(assert (= bs!1568623 (and b!6279830 b!6279825)))

(assert (=> bs!1568623 (= (= lt!2354274 lt!2354270) (= lambda!344384 lambda!344381))))

(declare-fun bs!1568624 () Bool)

(assert (= bs!1568624 (and b!6279830 b!6279828)))

(assert (=> bs!1568624 (= (= lt!2354274 lt!2354272) (= lambda!344384 lambda!344383))))

(assert (=> b!6279830 true))

(declare-fun d!1970840 () Bool)

(declare-fun e!3819026 () Bool)

(assert (=> d!1970840 e!3819026))

(declare-fun res!2590071 () Bool)

(assert (=> d!1970840 (=> (not res!2590071) (not e!3819026))))

(assert (=> d!1970840 (= res!2590071 (>= lt!2354274 0))))

(declare-fun e!3819027 () Int)

(assert (=> d!1970840 (= lt!2354274 e!3819027)))

(declare-fun c!1138694 () Bool)

(assert (=> d!1970840 (= c!1138694 (is-Cons!64777 zl!343))))

(assert (=> d!1970840 (= (zipperDepth!325 zl!343) lt!2354274)))

(assert (=> b!6279828 (= e!3819027 lt!2354272)))

(assert (=> b!6279828 (= lt!2354272 (maxBigInt!0 (contextDepth!217 (h!71225 zl!343)) (zipperDepth!325 (t!378461 zl!343))))))

(declare-fun lt!2354273 () Unit!158131)

(assert (=> b!6279828 (= lt!2354273 (lemmaForallContextDepthBiggerThanTransitive!201 (t!378461 zl!343) lt!2354272 (zipperDepth!325 (t!378461 zl!343)) lambda!344382))))

(assert (=> b!6279828 (forall!15338 (t!378461 zl!343) lambda!344383)))

(declare-fun lt!2354275 () Unit!158131)

(assert (=> b!6279828 (= lt!2354275 lt!2354273)))

(declare-fun b!6279829 () Bool)

(assert (=> b!6279829 (= e!3819027 0)))

(assert (=> b!6279830 (= e!3819026 (forall!15338 zl!343 lambda!344384))))

(assert (= (and d!1970840 c!1138694) b!6279828))

(assert (= (and d!1970840 (not c!1138694)) b!6279829))

(assert (= (and d!1970840 res!2590071) b!6279830))

(declare-fun m!7100906 () Bool)

(assert (=> b!6279828 m!7100906))

(assert (=> b!6279828 m!7100906))

(declare-fun m!7100908 () Bool)

(assert (=> b!6279828 m!7100908))

(declare-fun m!7100910 () Bool)

(assert (=> b!6279828 m!7100910))

(assert (=> b!6279828 m!7100906))

(declare-fun m!7100912 () Bool)

(assert (=> b!6279828 m!7100912))

(assert (=> b!6279828 m!7100910))

(declare-fun m!7100914 () Bool)

(assert (=> b!6279828 m!7100914))

(declare-fun m!7100916 () Bool)

(assert (=> b!6279830 m!7100916))

(assert (=> b!6279545 d!1970840))

(declare-fun bm!531409 () Bool)

(declare-fun call!531417 () (Set Context!11168))

(declare-fun call!531415 () (Set Context!11168))

(assert (=> bm!531409 (= call!531417 call!531415)))

(declare-fun b!6279853 () Bool)

(declare-fun e!3819040 () (Set Context!11168))

(declare-fun call!531418 () (Set Context!11168))

(assert (=> b!6279853 (= e!3819040 (set.union call!531415 call!531418))))

(declare-fun d!1970842 () Bool)

(declare-fun c!1138708 () Bool)

(assert (=> d!1970842 (= c!1138708 (and (is-ElementMatch!16200 (regTwo!32912 (regOne!32912 r!7292))) (= (c!1138637 (regTwo!32912 (regOne!32912 r!7292))) (h!71223 s!2326))))))

(declare-fun e!3819042 () (Set Context!11168))

(assert (=> d!1970842 (= (derivationStepZipperDown!1448 (regTwo!32912 (regOne!32912 r!7292)) lt!2354125 (h!71223 s!2326)) e!3819042)))

(declare-fun bm!531410 () Bool)

(declare-fun call!531414 () (Set Context!11168))

(assert (=> bm!531410 (= call!531414 call!531417)))

(declare-fun bm!531411 () Bool)

(declare-fun c!1138705 () Bool)

(declare-fun call!531416 () List!64900)

(assert (=> bm!531411 (= call!531418 (derivationStepZipperDown!1448 (ite c!1138705 (regTwo!32913 (regTwo!32912 (regOne!32912 r!7292))) (regOne!32912 (regTwo!32912 (regOne!32912 r!7292)))) (ite c!1138705 lt!2354125 (Context!11169 call!531416)) (h!71223 s!2326)))))

(declare-fun b!6279854 () Bool)

(assert (=> b!6279854 (= e!3819042 (set.insert lt!2354125 (as set.empty (Set Context!11168))))))

(declare-fun b!6279855 () Bool)

(declare-fun e!3819044 () (Set Context!11168))

(assert (=> b!6279855 (= e!3819044 call!531414)))

(declare-fun b!6279856 () Bool)

(declare-fun e!3819045 () (Set Context!11168))

(assert (=> b!6279856 (= e!3819045 call!531414)))

(declare-fun b!6279857 () Bool)

(assert (=> b!6279857 (= e!3819042 e!3819040)))

(assert (=> b!6279857 (= c!1138705 (is-Union!16200 (regTwo!32912 (regOne!32912 r!7292))))))

(declare-fun b!6279858 () Bool)

(declare-fun e!3819041 () Bool)

(assert (=> b!6279858 (= e!3819041 (nullable!6193 (regOne!32912 (regTwo!32912 (regOne!32912 r!7292)))))))

(declare-fun c!1138707 () Bool)

(declare-fun bm!531412 () Bool)

(declare-fun c!1138709 () Bool)

(declare-fun $colon$colon!2065 (List!64900 Regex!16200) List!64900)

(assert (=> bm!531412 (= call!531416 ($colon$colon!2065 (exprs!6084 lt!2354125) (ite (or c!1138707 c!1138709) (regTwo!32912 (regTwo!32912 (regOne!32912 r!7292))) (regTwo!32912 (regOne!32912 r!7292)))))))

(declare-fun b!6279859 () Bool)

(declare-fun e!3819043 () (Set Context!11168))

(assert (=> b!6279859 (= e!3819043 e!3819045)))

(assert (=> b!6279859 (= c!1138709 (is-Concat!25045 (regTwo!32912 (regOne!32912 r!7292))))))

(declare-fun bm!531413 () Bool)

(declare-fun call!531419 () List!64900)

(assert (=> bm!531413 (= call!531415 (derivationStepZipperDown!1448 (ite c!1138705 (regOne!32913 (regTwo!32912 (regOne!32912 r!7292))) (ite c!1138707 (regTwo!32912 (regTwo!32912 (regOne!32912 r!7292))) (ite c!1138709 (regOne!32912 (regTwo!32912 (regOne!32912 r!7292))) (reg!16529 (regTwo!32912 (regOne!32912 r!7292)))))) (ite (or c!1138705 c!1138707) lt!2354125 (Context!11169 call!531419)) (h!71223 s!2326)))))

(declare-fun b!6279860 () Bool)

(assert (=> b!6279860 (= c!1138707 e!3819041)))

(declare-fun res!2590074 () Bool)

(assert (=> b!6279860 (=> (not res!2590074) (not e!3819041))))

(assert (=> b!6279860 (= res!2590074 (is-Concat!25045 (regTwo!32912 (regOne!32912 r!7292))))))

(assert (=> b!6279860 (= e!3819040 e!3819043)))

(declare-fun b!6279861 () Bool)

(declare-fun c!1138706 () Bool)

(assert (=> b!6279861 (= c!1138706 (is-Star!16200 (regTwo!32912 (regOne!32912 r!7292))))))

(assert (=> b!6279861 (= e!3819045 e!3819044)))

(declare-fun b!6279862 () Bool)

(assert (=> b!6279862 (= e!3819044 (as set.empty (Set Context!11168)))))

(declare-fun b!6279863 () Bool)

(assert (=> b!6279863 (= e!3819043 (set.union call!531418 call!531417))))

(declare-fun bm!531414 () Bool)

(assert (=> bm!531414 (= call!531419 call!531416)))

(assert (= (and d!1970842 c!1138708) b!6279854))

(assert (= (and d!1970842 (not c!1138708)) b!6279857))

(assert (= (and b!6279857 c!1138705) b!6279853))

(assert (= (and b!6279857 (not c!1138705)) b!6279860))

(assert (= (and b!6279860 res!2590074) b!6279858))

(assert (= (and b!6279860 c!1138707) b!6279863))

(assert (= (and b!6279860 (not c!1138707)) b!6279859))

(assert (= (and b!6279859 c!1138709) b!6279856))

(assert (= (and b!6279859 (not c!1138709)) b!6279861))

(assert (= (and b!6279861 c!1138706) b!6279855))

(assert (= (and b!6279861 (not c!1138706)) b!6279862))

(assert (= (or b!6279856 b!6279855) bm!531414))

(assert (= (or b!6279856 b!6279855) bm!531410))

(assert (= (or b!6279863 bm!531414) bm!531412))

(assert (= (or b!6279863 bm!531410) bm!531409))

(assert (= (or b!6279853 b!6279863) bm!531411))

(assert (= (or b!6279853 bm!531409) bm!531413))

(declare-fun m!7100918 () Bool)

(assert (=> b!6279858 m!7100918))

(declare-fun m!7100920 () Bool)

(assert (=> bm!531413 m!7100920))

(declare-fun m!7100922 () Bool)

(assert (=> bm!531411 m!7100922))

(declare-fun m!7100924 () Bool)

(assert (=> bm!531412 m!7100924))

(declare-fun m!7100926 () Bool)

(assert (=> b!6279854 m!7100926))

(assert (=> b!6279546 d!1970842))

(declare-fun bm!531415 () Bool)

(declare-fun call!531423 () (Set Context!11168))

(declare-fun call!531421 () (Set Context!11168))

(assert (=> bm!531415 (= call!531423 call!531421)))

(declare-fun b!6279864 () Bool)

(declare-fun e!3819046 () (Set Context!11168))

(declare-fun call!531424 () (Set Context!11168))

(assert (=> b!6279864 (= e!3819046 (set.union call!531421 call!531424))))

(declare-fun d!1970844 () Bool)

(declare-fun c!1138713 () Bool)

(assert (=> d!1970844 (= c!1138713 (and (is-ElementMatch!16200 (regOne!32912 (regOne!32912 r!7292))) (= (c!1138637 (regOne!32912 (regOne!32912 r!7292))) (h!71223 s!2326))))))

(declare-fun e!3819048 () (Set Context!11168))

(assert (=> d!1970844 (= (derivationStepZipperDown!1448 (regOne!32912 (regOne!32912 r!7292)) lt!2354116 (h!71223 s!2326)) e!3819048)))

(declare-fun bm!531416 () Bool)

(declare-fun call!531420 () (Set Context!11168))

(assert (=> bm!531416 (= call!531420 call!531423)))

(declare-fun call!531422 () List!64900)

(declare-fun bm!531417 () Bool)

(declare-fun c!1138710 () Bool)

(assert (=> bm!531417 (= call!531424 (derivationStepZipperDown!1448 (ite c!1138710 (regTwo!32913 (regOne!32912 (regOne!32912 r!7292))) (regOne!32912 (regOne!32912 (regOne!32912 r!7292)))) (ite c!1138710 lt!2354116 (Context!11169 call!531422)) (h!71223 s!2326)))))

(declare-fun b!6279865 () Bool)

(assert (=> b!6279865 (= e!3819048 (set.insert lt!2354116 (as set.empty (Set Context!11168))))))

(declare-fun b!6279866 () Bool)

(declare-fun e!3819050 () (Set Context!11168))

(assert (=> b!6279866 (= e!3819050 call!531420)))

(declare-fun b!6279867 () Bool)

(declare-fun e!3819051 () (Set Context!11168))

(assert (=> b!6279867 (= e!3819051 call!531420)))

(declare-fun b!6279868 () Bool)

(assert (=> b!6279868 (= e!3819048 e!3819046)))

(assert (=> b!6279868 (= c!1138710 (is-Union!16200 (regOne!32912 (regOne!32912 r!7292))))))

(declare-fun b!6279869 () Bool)

(declare-fun e!3819047 () Bool)

(assert (=> b!6279869 (= e!3819047 (nullable!6193 (regOne!32912 (regOne!32912 (regOne!32912 r!7292)))))))

(declare-fun c!1138712 () Bool)

(declare-fun bm!531418 () Bool)

(declare-fun c!1138714 () Bool)

(assert (=> bm!531418 (= call!531422 ($colon$colon!2065 (exprs!6084 lt!2354116) (ite (or c!1138712 c!1138714) (regTwo!32912 (regOne!32912 (regOne!32912 r!7292))) (regOne!32912 (regOne!32912 r!7292)))))))

(declare-fun b!6279870 () Bool)

(declare-fun e!3819049 () (Set Context!11168))

(assert (=> b!6279870 (= e!3819049 e!3819051)))

(assert (=> b!6279870 (= c!1138714 (is-Concat!25045 (regOne!32912 (regOne!32912 r!7292))))))

(declare-fun call!531425 () List!64900)

(declare-fun bm!531419 () Bool)

(assert (=> bm!531419 (= call!531421 (derivationStepZipperDown!1448 (ite c!1138710 (regOne!32913 (regOne!32912 (regOne!32912 r!7292))) (ite c!1138712 (regTwo!32912 (regOne!32912 (regOne!32912 r!7292))) (ite c!1138714 (regOne!32912 (regOne!32912 (regOne!32912 r!7292))) (reg!16529 (regOne!32912 (regOne!32912 r!7292)))))) (ite (or c!1138710 c!1138712) lt!2354116 (Context!11169 call!531425)) (h!71223 s!2326)))))

(declare-fun b!6279871 () Bool)

(assert (=> b!6279871 (= c!1138712 e!3819047)))

(declare-fun res!2590075 () Bool)

(assert (=> b!6279871 (=> (not res!2590075) (not e!3819047))))

(assert (=> b!6279871 (= res!2590075 (is-Concat!25045 (regOne!32912 (regOne!32912 r!7292))))))

(assert (=> b!6279871 (= e!3819046 e!3819049)))

(declare-fun b!6279872 () Bool)

(declare-fun c!1138711 () Bool)

(assert (=> b!6279872 (= c!1138711 (is-Star!16200 (regOne!32912 (regOne!32912 r!7292))))))

(assert (=> b!6279872 (= e!3819051 e!3819050)))

(declare-fun b!6279873 () Bool)

(assert (=> b!6279873 (= e!3819050 (as set.empty (Set Context!11168)))))

(declare-fun b!6279874 () Bool)

(assert (=> b!6279874 (= e!3819049 (set.union call!531424 call!531423))))

(declare-fun bm!531420 () Bool)

(assert (=> bm!531420 (= call!531425 call!531422)))

(assert (= (and d!1970844 c!1138713) b!6279865))

(assert (= (and d!1970844 (not c!1138713)) b!6279868))

(assert (= (and b!6279868 c!1138710) b!6279864))

(assert (= (and b!6279868 (not c!1138710)) b!6279871))

(assert (= (and b!6279871 res!2590075) b!6279869))

(assert (= (and b!6279871 c!1138712) b!6279874))

(assert (= (and b!6279871 (not c!1138712)) b!6279870))

(assert (= (and b!6279870 c!1138714) b!6279867))

(assert (= (and b!6279870 (not c!1138714)) b!6279872))

(assert (= (and b!6279872 c!1138711) b!6279866))

(assert (= (and b!6279872 (not c!1138711)) b!6279873))

(assert (= (or b!6279867 b!6279866) bm!531420))

(assert (= (or b!6279867 b!6279866) bm!531416))

(assert (= (or b!6279874 bm!531420) bm!531418))

(assert (= (or b!6279874 bm!531416) bm!531415))

(assert (= (or b!6279864 b!6279874) bm!531417))

(assert (= (or b!6279864 bm!531415) bm!531419))

(declare-fun m!7100928 () Bool)

(assert (=> b!6279869 m!7100928))

(declare-fun m!7100930 () Bool)

(assert (=> bm!531419 m!7100930))

(declare-fun m!7100932 () Bool)

(assert (=> bm!531417 m!7100932))

(declare-fun m!7100934 () Bool)

(assert (=> bm!531418 m!7100934))

(assert (=> b!6279865 m!7100624))

(assert (=> b!6279546 d!1970844))

(declare-fun bs!1568625 () Bool)

(declare-fun d!1970846 () Bool)

(assert (= bs!1568625 (and d!1970846 d!1970828)))

(declare-fun lambda!344387 () Int)

(assert (=> bs!1568625 (= lambda!344387 lambda!344366)))

(declare-fun b!6279895 () Bool)

(declare-fun e!3819066 () Regex!16200)

(assert (=> b!6279895 (= e!3819066 EmptyLang!16200)))

(declare-fun b!6279896 () Bool)

(assert (=> b!6279896 (= e!3819066 (Union!16200 (h!71224 (unfocusZipperList!1621 zl!343)) (generalisedUnion!2044 (t!378460 (unfocusZipperList!1621 zl!343)))))))

(declare-fun e!3819064 () Bool)

(assert (=> d!1970846 e!3819064))

(declare-fun res!2590080 () Bool)

(assert (=> d!1970846 (=> (not res!2590080) (not e!3819064))))

(declare-fun lt!2354278 () Regex!16200)

(assert (=> d!1970846 (= res!2590080 (validRegex!7936 lt!2354278))))

(declare-fun e!3819069 () Regex!16200)

(assert (=> d!1970846 (= lt!2354278 e!3819069)))

(declare-fun c!1138725 () Bool)

(declare-fun e!3819068 () Bool)

(assert (=> d!1970846 (= c!1138725 e!3819068)))

(declare-fun res!2590081 () Bool)

(assert (=> d!1970846 (=> (not res!2590081) (not e!3819068))))

(assert (=> d!1970846 (= res!2590081 (is-Cons!64776 (unfocusZipperList!1621 zl!343)))))

(assert (=> d!1970846 (forall!15337 (unfocusZipperList!1621 zl!343) lambda!344387)))

(assert (=> d!1970846 (= (generalisedUnion!2044 (unfocusZipperList!1621 zl!343)) lt!2354278)))

(declare-fun b!6279897 () Bool)

(declare-fun e!3819067 () Bool)

(declare-fun isEmptyLang!1613 (Regex!16200) Bool)

(assert (=> b!6279897 (= e!3819067 (isEmptyLang!1613 lt!2354278))))

(declare-fun b!6279898 () Bool)

(assert (=> b!6279898 (= e!3819069 e!3819066)))

(declare-fun c!1138726 () Bool)

(assert (=> b!6279898 (= c!1138726 (is-Cons!64776 (unfocusZipperList!1621 zl!343)))))

(declare-fun b!6279899 () Bool)

(assert (=> b!6279899 (= e!3819069 (h!71224 (unfocusZipperList!1621 zl!343)))))

(declare-fun b!6279900 () Bool)

(declare-fun e!3819065 () Bool)

(assert (=> b!6279900 (= e!3819067 e!3819065)))

(declare-fun c!1138724 () Bool)

(assert (=> b!6279900 (= c!1138724 (isEmpty!36820 (tail!11985 (unfocusZipperList!1621 zl!343))))))

(declare-fun b!6279901 () Bool)

(assert (=> b!6279901 (= e!3819068 (isEmpty!36820 (t!378460 (unfocusZipperList!1621 zl!343))))))

(declare-fun b!6279902 () Bool)

(declare-fun isUnion!1043 (Regex!16200) Bool)

(assert (=> b!6279902 (= e!3819065 (isUnion!1043 lt!2354278))))

(declare-fun b!6279903 () Bool)

(assert (=> b!6279903 (= e!3819064 e!3819067)))

(declare-fun c!1138723 () Bool)

(assert (=> b!6279903 (= c!1138723 (isEmpty!36820 (unfocusZipperList!1621 zl!343)))))

(declare-fun b!6279904 () Bool)

(assert (=> b!6279904 (= e!3819065 (= lt!2354278 (head!12900 (unfocusZipperList!1621 zl!343))))))

(assert (= (and d!1970846 res!2590081) b!6279901))

(assert (= (and d!1970846 c!1138725) b!6279899))

(assert (= (and d!1970846 (not c!1138725)) b!6279898))

(assert (= (and b!6279898 c!1138726) b!6279896))

(assert (= (and b!6279898 (not c!1138726)) b!6279895))

(assert (= (and d!1970846 res!2590080) b!6279903))

(assert (= (and b!6279903 c!1138723) b!6279897))

(assert (= (and b!6279903 (not c!1138723)) b!6279900))

(assert (= (and b!6279900 c!1138724) b!6279904))

(assert (= (and b!6279900 (not c!1138724)) b!6279902))

(assert (=> b!6279900 m!7100616))

(declare-fun m!7100936 () Bool)

(assert (=> b!6279900 m!7100936))

(assert (=> b!6279900 m!7100936))

(declare-fun m!7100938 () Bool)

(assert (=> b!6279900 m!7100938))

(declare-fun m!7100940 () Bool)

(assert (=> b!6279896 m!7100940))

(declare-fun m!7100942 () Bool)

(assert (=> b!6279901 m!7100942))

(declare-fun m!7100944 () Bool)

(assert (=> b!6279902 m!7100944))

(declare-fun m!7100946 () Bool)

(assert (=> b!6279897 m!7100946))

(assert (=> b!6279904 m!7100616))

(declare-fun m!7100948 () Bool)

(assert (=> b!6279904 m!7100948))

(declare-fun m!7100950 () Bool)

(assert (=> d!1970846 m!7100950))

(assert (=> d!1970846 m!7100616))

(declare-fun m!7100952 () Bool)

(assert (=> d!1970846 m!7100952))

(assert (=> b!6279903 m!7100616))

(declare-fun m!7100954 () Bool)

(assert (=> b!6279903 m!7100954))

(assert (=> b!6279526 d!1970846))

(declare-fun bs!1568626 () Bool)

(declare-fun d!1970848 () Bool)

(assert (= bs!1568626 (and d!1970848 d!1970828)))

(declare-fun lambda!344390 () Int)

(assert (=> bs!1568626 (= lambda!344390 lambda!344366)))

(declare-fun bs!1568627 () Bool)

(assert (= bs!1568627 (and d!1970848 d!1970846)))

(assert (=> bs!1568627 (= lambda!344390 lambda!344387)))

(declare-fun lt!2354281 () List!64900)

(assert (=> d!1970848 (forall!15337 lt!2354281 lambda!344390)))

(declare-fun e!3819072 () List!64900)

(assert (=> d!1970848 (= lt!2354281 e!3819072)))

(declare-fun c!1138729 () Bool)

(assert (=> d!1970848 (= c!1138729 (is-Cons!64777 zl!343))))

(assert (=> d!1970848 (= (unfocusZipperList!1621 zl!343) lt!2354281)))

(declare-fun b!6279909 () Bool)

(assert (=> b!6279909 (= e!3819072 (Cons!64776 (generalisedConcat!1797 (exprs!6084 (h!71225 zl!343))) (unfocusZipperList!1621 (t!378461 zl!343))))))

(declare-fun b!6279910 () Bool)

(assert (=> b!6279910 (= e!3819072 Nil!64776)))

(assert (= (and d!1970848 c!1138729) b!6279909))

(assert (= (and d!1970848 (not c!1138729)) b!6279910))

(declare-fun m!7100956 () Bool)

(assert (=> d!1970848 m!7100956))

(assert (=> b!6279909 m!7100650))

(declare-fun m!7100958 () Bool)

(assert (=> b!6279909 m!7100958))

(assert (=> b!6279526 d!1970848))

(declare-fun b!6279929 () Bool)

(declare-fun res!2590092 () Bool)

(declare-fun e!3819084 () Bool)

(assert (=> b!6279929 (=> (not res!2590092) (not e!3819084))))

(declare-fun lt!2354288 () Option!16091)

(declare-fun get!22389 (Option!16091) tuple2!66358)

(assert (=> b!6279929 (= res!2590092 (matchR!8383 (regOne!32912 r!7292) (_1!36482 (get!22389 lt!2354288))))))

(declare-fun b!6279930 () Bool)

(declare-fun e!3819085 () Option!16091)

(assert (=> b!6279930 (= e!3819085 (Some!16090 (tuple2!66359 Nil!64775 s!2326)))))

(declare-fun b!6279931 () Bool)

(declare-fun e!3819086 () Option!16091)

(assert (=> b!6279931 (= e!3819086 None!16090)))

(declare-fun b!6279932 () Bool)

(declare-fun ++!14273 (List!64899 List!64899) List!64899)

(assert (=> b!6279932 (= e!3819084 (= (++!14273 (_1!36482 (get!22389 lt!2354288)) (_2!36482 (get!22389 lt!2354288))) s!2326))))

(declare-fun b!6279933 () Bool)

(assert (=> b!6279933 (= e!3819085 e!3819086)))

(declare-fun c!1138735 () Bool)

(assert (=> b!6279933 (= c!1138735 (is-Nil!64775 s!2326))))

(declare-fun b!6279934 () Bool)

(declare-fun res!2590094 () Bool)

(assert (=> b!6279934 (=> (not res!2590094) (not e!3819084))))

(assert (=> b!6279934 (= res!2590094 (matchR!8383 (regTwo!32912 r!7292) (_2!36482 (get!22389 lt!2354288))))))

(declare-fun d!1970850 () Bool)

(declare-fun e!3819083 () Bool)

(assert (=> d!1970850 e!3819083))

(declare-fun res!2590095 () Bool)

(assert (=> d!1970850 (=> res!2590095 e!3819083)))

(assert (=> d!1970850 (= res!2590095 e!3819084)))

(declare-fun res!2590096 () Bool)

(assert (=> d!1970850 (=> (not res!2590096) (not e!3819084))))

(assert (=> d!1970850 (= res!2590096 (isDefined!12794 lt!2354288))))

(assert (=> d!1970850 (= lt!2354288 e!3819085)))

(declare-fun c!1138734 () Bool)

(declare-fun e!3819087 () Bool)

(assert (=> d!1970850 (= c!1138734 e!3819087)))

(declare-fun res!2590093 () Bool)

(assert (=> d!1970850 (=> (not res!2590093) (not e!3819087))))

(assert (=> d!1970850 (= res!2590093 (matchR!8383 (regOne!32912 r!7292) Nil!64775))))

(assert (=> d!1970850 (validRegex!7936 (regOne!32912 r!7292))))

(assert (=> d!1970850 (= (findConcatSeparation!2505 (regOne!32912 r!7292) (regTwo!32912 r!7292) Nil!64775 s!2326 s!2326) lt!2354288)))

(declare-fun b!6279935 () Bool)

(assert (=> b!6279935 (= e!3819087 (matchR!8383 (regTwo!32912 r!7292) s!2326))))

(declare-fun b!6279936 () Bool)

(assert (=> b!6279936 (= e!3819083 (not (isDefined!12794 lt!2354288)))))

(declare-fun b!6279937 () Bool)

(declare-fun lt!2354289 () Unit!158131)

(declare-fun lt!2354290 () Unit!158131)

(assert (=> b!6279937 (= lt!2354289 lt!2354290)))

(assert (=> b!6279937 (= (++!14273 (++!14273 Nil!64775 (Cons!64775 (h!71223 s!2326) Nil!64775)) (t!378459 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2368 (List!64899 C!32670 List!64899 List!64899) Unit!158131)

(assert (=> b!6279937 (= lt!2354290 (lemmaMoveElementToOtherListKeepsConcatEq!2368 Nil!64775 (h!71223 s!2326) (t!378459 s!2326) s!2326))))

(assert (=> b!6279937 (= e!3819086 (findConcatSeparation!2505 (regOne!32912 r!7292) (regTwo!32912 r!7292) (++!14273 Nil!64775 (Cons!64775 (h!71223 s!2326) Nil!64775)) (t!378459 s!2326) s!2326))))

(assert (= (and d!1970850 res!2590093) b!6279935))

(assert (= (and d!1970850 c!1138734) b!6279930))

(assert (= (and d!1970850 (not c!1138734)) b!6279933))

(assert (= (and b!6279933 c!1138735) b!6279931))

(assert (= (and b!6279933 (not c!1138735)) b!6279937))

(assert (= (and d!1970850 res!2590096) b!6279929))

(assert (= (and b!6279929 res!2590092) b!6279934))

(assert (= (and b!6279934 res!2590094) b!6279932))

(assert (= (and d!1970850 (not res!2590095)) b!6279936))

(declare-fun m!7100960 () Bool)

(assert (=> b!6279937 m!7100960))

(assert (=> b!6279937 m!7100960))

(declare-fun m!7100962 () Bool)

(assert (=> b!6279937 m!7100962))

(declare-fun m!7100964 () Bool)

(assert (=> b!6279937 m!7100964))

(assert (=> b!6279937 m!7100960))

(declare-fun m!7100966 () Bool)

(assert (=> b!6279937 m!7100966))

(declare-fun m!7100968 () Bool)

(assert (=> b!6279935 m!7100968))

(declare-fun m!7100970 () Bool)

(assert (=> d!1970850 m!7100970))

(declare-fun m!7100972 () Bool)

(assert (=> d!1970850 m!7100972))

(declare-fun m!7100974 () Bool)

(assert (=> d!1970850 m!7100974))

(assert (=> b!6279936 m!7100970))

(declare-fun m!7100976 () Bool)

(assert (=> b!6279934 m!7100976))

(declare-fun m!7100978 () Bool)

(assert (=> b!6279934 m!7100978))

(assert (=> b!6279932 m!7100976))

(declare-fun m!7100980 () Bool)

(assert (=> b!6279932 m!7100980))

(assert (=> b!6279929 m!7100976))

(declare-fun m!7100982 () Bool)

(assert (=> b!6279929 m!7100982))

(assert (=> b!6279527 d!1970850))

(declare-fun d!1970852 () Bool)

(declare-fun choose!46617 (Int) Bool)

(assert (=> d!1970852 (= (Exists!3270 lambda!344336) (choose!46617 lambda!344336))))

(declare-fun bs!1568628 () Bool)

(assert (= bs!1568628 d!1970852))

(declare-fun m!7100984 () Bool)

(assert (=> bs!1568628 m!7100984))

(assert (=> b!6279527 d!1970852))

(declare-fun d!1970854 () Bool)

(assert (=> d!1970854 (= (Exists!3270 lambda!344337) (choose!46617 lambda!344337))))

(declare-fun bs!1568629 () Bool)

(assert (= bs!1568629 d!1970854))

(declare-fun m!7100986 () Bool)

(assert (=> bs!1568629 m!7100986))

(assert (=> b!6279527 d!1970854))

(declare-fun bs!1568630 () Bool)

(declare-fun d!1970856 () Bool)

(assert (= bs!1568630 (and d!1970856 b!6279543)))

(declare-fun lambda!344393 () Int)

(assert (=> bs!1568630 (= (and (= (regOne!32912 r!7292) (regOne!32912 (regOne!32912 r!7292))) (= (regTwo!32912 r!7292) lt!2354114)) (= lambda!344393 lambda!344339))))

(declare-fun bs!1568631 () Bool)

(assert (= bs!1568631 (and d!1970856 b!6279527)))

(assert (=> bs!1568631 (not (= lambda!344393 lambda!344337))))

(declare-fun bs!1568632 () Bool)

(assert (= bs!1568632 (and d!1970856 b!6279761)))

(assert (=> bs!1568632 (not (= lambda!344393 lambda!344372))))

(declare-fun bs!1568633 () Bool)

(assert (= bs!1568633 (and d!1970856 b!6279765)))

(assert (=> bs!1568633 (not (= lambda!344393 lambda!344371))))

(assert (=> bs!1568631 (= lambda!344393 lambda!344336)))

(assert (=> bs!1568630 (not (= lambda!344393 lambda!344340))))

(assert (=> d!1970856 true))

(assert (=> d!1970856 true))

(assert (=> d!1970856 true))

(assert (=> d!1970856 (= (isDefined!12794 (findConcatSeparation!2505 (regOne!32912 r!7292) (regTwo!32912 r!7292) Nil!64775 s!2326 s!2326)) (Exists!3270 lambda!344393))))

(declare-fun lt!2354293 () Unit!158131)

(declare-fun choose!46618 (Regex!16200 Regex!16200 List!64899) Unit!158131)

(assert (=> d!1970856 (= lt!2354293 (choose!46618 (regOne!32912 r!7292) (regTwo!32912 r!7292) s!2326))))

(assert (=> d!1970856 (validRegex!7936 (regOne!32912 r!7292))))

(assert (=> d!1970856 (= (lemmaFindConcatSeparationEquivalentToExists!2269 (regOne!32912 r!7292) (regTwo!32912 r!7292) s!2326) lt!2354293)))

(declare-fun bs!1568634 () Bool)

(assert (= bs!1568634 d!1970856))

(declare-fun m!7100988 () Bool)

(assert (=> bs!1568634 m!7100988))

(declare-fun m!7100990 () Bool)

(assert (=> bs!1568634 m!7100990))

(assert (=> bs!1568634 m!7100652))

(assert (=> bs!1568634 m!7100654))

(assert (=> bs!1568634 m!7100652))

(assert (=> bs!1568634 m!7100974))

(assert (=> b!6279527 d!1970856))

(declare-fun bs!1568635 () Bool)

(declare-fun d!1970858 () Bool)

(assert (= bs!1568635 (and d!1970858 b!6279543)))

(declare-fun lambda!344398 () Int)

(assert (=> bs!1568635 (= (and (= (regOne!32912 r!7292) (regOne!32912 (regOne!32912 r!7292))) (= (regTwo!32912 r!7292) lt!2354114)) (= lambda!344398 lambda!344339))))

(declare-fun bs!1568636 () Bool)

(assert (= bs!1568636 (and d!1970858 b!6279527)))

(assert (=> bs!1568636 (not (= lambda!344398 lambda!344337))))

(declare-fun bs!1568637 () Bool)

(assert (= bs!1568637 (and d!1970858 b!6279761)))

(assert (=> bs!1568637 (not (= lambda!344398 lambda!344372))))

(declare-fun bs!1568638 () Bool)

(assert (= bs!1568638 (and d!1970858 b!6279765)))

(assert (=> bs!1568638 (not (= lambda!344398 lambda!344371))))

(declare-fun bs!1568639 () Bool)

(assert (= bs!1568639 (and d!1970858 d!1970856)))

(assert (=> bs!1568639 (= lambda!344398 lambda!344393)))

(assert (=> bs!1568636 (= lambda!344398 lambda!344336)))

(assert (=> bs!1568635 (not (= lambda!344398 lambda!344340))))

(assert (=> d!1970858 true))

(assert (=> d!1970858 true))

(assert (=> d!1970858 true))

(declare-fun lambda!344399 () Int)

(assert (=> bs!1568635 (not (= lambda!344399 lambda!344339))))

(assert (=> bs!1568636 (= lambda!344399 lambda!344337)))

(assert (=> bs!1568637 (= lambda!344399 lambda!344372)))

(assert (=> bs!1568638 (not (= lambda!344399 lambda!344371))))

(declare-fun bs!1568640 () Bool)

(assert (= bs!1568640 d!1970858))

(assert (=> bs!1568640 (not (= lambda!344399 lambda!344398))))

(assert (=> bs!1568639 (not (= lambda!344399 lambda!344393))))

(assert (=> bs!1568636 (not (= lambda!344399 lambda!344336))))

(assert (=> bs!1568635 (= (and (= (regOne!32912 r!7292) (regOne!32912 (regOne!32912 r!7292))) (= (regTwo!32912 r!7292) lt!2354114)) (= lambda!344399 lambda!344340))))

(assert (=> d!1970858 true))

(assert (=> d!1970858 true))

(assert (=> d!1970858 true))

(assert (=> d!1970858 (= (Exists!3270 lambda!344398) (Exists!3270 lambda!344399))))

(declare-fun lt!2354296 () Unit!158131)

(declare-fun choose!46619 (Regex!16200 Regex!16200 List!64899) Unit!158131)

(assert (=> d!1970858 (= lt!2354296 (choose!46619 (regOne!32912 r!7292) (regTwo!32912 r!7292) s!2326))))

(assert (=> d!1970858 (validRegex!7936 (regOne!32912 r!7292))))

(assert (=> d!1970858 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1807 (regOne!32912 r!7292) (regTwo!32912 r!7292) s!2326) lt!2354296)))

(declare-fun m!7100992 () Bool)

(assert (=> bs!1568640 m!7100992))

(declare-fun m!7100994 () Bool)

(assert (=> bs!1568640 m!7100994))

(declare-fun m!7100996 () Bool)

(assert (=> bs!1568640 m!7100996))

(assert (=> bs!1568640 m!7100974))

(assert (=> b!6279527 d!1970858))

(declare-fun d!1970860 () Bool)

(declare-fun isEmpty!36824 (Option!16091) Bool)

(assert (=> d!1970860 (= (isDefined!12794 (findConcatSeparation!2505 (regOne!32912 r!7292) (regTwo!32912 r!7292) Nil!64775 s!2326 s!2326)) (not (isEmpty!36824 (findConcatSeparation!2505 (regOne!32912 r!7292) (regTwo!32912 r!7292) Nil!64775 s!2326 s!2326))))))

(declare-fun bs!1568641 () Bool)

(assert (= bs!1568641 d!1970860))

(assert (=> bs!1568641 m!7100652))

(declare-fun m!7100998 () Bool)

(assert (=> bs!1568641 m!7100998))

(assert (=> b!6279527 d!1970860))

(declare-fun d!1970862 () Bool)

(assert (=> d!1970862 (= (isEmpty!36820 (t!378460 (exprs!6084 (h!71225 zl!343)))) (is-Nil!64776 (t!378460 (exprs!6084 (h!71225 zl!343)))))))

(assert (=> b!6279547 d!1970862))

(declare-fun d!1970864 () Bool)

(declare-fun c!1138736 () Bool)

(assert (=> d!1970864 (= c!1138736 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819094 () Bool)

(assert (=> d!1970864 (= (matchZipper!2212 lt!2354105 (t!378459 s!2326)) e!3819094)))

(declare-fun b!6279950 () Bool)

(assert (=> b!6279950 (= e!3819094 (nullableZipper!1970 lt!2354105))))

(declare-fun b!6279951 () Bool)

(assert (=> b!6279951 (= e!3819094 (matchZipper!2212 (derivationStepZipper!2166 lt!2354105 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970864 c!1138736) b!6279950))

(assert (= (and d!1970864 (not c!1138736)) b!6279951))

(assert (=> d!1970864 m!7100882))

(declare-fun m!7101000 () Bool)

(assert (=> b!6279950 m!7101000))

(assert (=> b!6279951 m!7100886))

(assert (=> b!6279951 m!7100886))

(declare-fun m!7101002 () Bool)

(assert (=> b!6279951 m!7101002))

(assert (=> b!6279951 m!7100890))

(assert (=> b!6279951 m!7101002))

(assert (=> b!6279951 m!7100890))

(declare-fun m!7101004 () Bool)

(assert (=> b!6279951 m!7101004))

(assert (=> b!6279528 d!1970864))

(declare-fun d!1970866 () Bool)

(declare-fun c!1138737 () Bool)

(assert (=> d!1970866 (= c!1138737 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819095 () Bool)

(assert (=> d!1970866 (= (matchZipper!2212 lt!2354122 (t!378459 s!2326)) e!3819095)))

(declare-fun b!6279952 () Bool)

(assert (=> b!6279952 (= e!3819095 (nullableZipper!1970 lt!2354122))))

(declare-fun b!6279953 () Bool)

(assert (=> b!6279953 (= e!3819095 (matchZipper!2212 (derivationStepZipper!2166 lt!2354122 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970866 c!1138737) b!6279952))

(assert (= (and d!1970866 (not c!1138737)) b!6279953))

(assert (=> d!1970866 m!7100882))

(declare-fun m!7101006 () Bool)

(assert (=> b!6279952 m!7101006))

(assert (=> b!6279953 m!7100886))

(assert (=> b!6279953 m!7100886))

(declare-fun m!7101008 () Bool)

(assert (=> b!6279953 m!7101008))

(assert (=> b!6279953 m!7100890))

(assert (=> b!6279953 m!7101008))

(assert (=> b!6279953 m!7100890))

(declare-fun m!7101010 () Bool)

(assert (=> b!6279953 m!7101010))

(assert (=> b!6279528 d!1970866))

(declare-fun d!1970868 () Bool)

(declare-fun c!1138738 () Bool)

(assert (=> d!1970868 (= c!1138738 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819096 () Bool)

(assert (=> d!1970868 (= (matchZipper!2212 lt!2354108 (t!378459 s!2326)) e!3819096)))

(declare-fun b!6279954 () Bool)

(assert (=> b!6279954 (= e!3819096 (nullableZipper!1970 lt!2354108))))

(declare-fun b!6279955 () Bool)

(assert (=> b!6279955 (= e!3819096 (matchZipper!2212 (derivationStepZipper!2166 lt!2354108 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970868 c!1138738) b!6279954))

(assert (= (and d!1970868 (not c!1138738)) b!6279955))

(assert (=> d!1970868 m!7100882))

(declare-fun m!7101012 () Bool)

(assert (=> b!6279954 m!7101012))

(assert (=> b!6279955 m!7100886))

(assert (=> b!6279955 m!7100886))

(declare-fun m!7101014 () Bool)

(assert (=> b!6279955 m!7101014))

(assert (=> b!6279955 m!7100890))

(assert (=> b!6279955 m!7101014))

(assert (=> b!6279955 m!7100890))

(declare-fun m!7101016 () Bool)

(assert (=> b!6279955 m!7101016))

(assert (=> b!6279528 d!1970868))

(declare-fun e!3819099 () Bool)

(declare-fun d!1970870 () Bool)

(assert (=> d!1970870 (= (matchZipper!2212 (set.union lt!2354108 lt!2354106) (t!378459 s!2326)) e!3819099)))

(declare-fun res!2590111 () Bool)

(assert (=> d!1970870 (=> res!2590111 e!3819099)))

(assert (=> d!1970870 (= res!2590111 (matchZipper!2212 lt!2354108 (t!378459 s!2326)))))

(declare-fun lt!2354299 () Unit!158131)

(declare-fun choose!46620 ((Set Context!11168) (Set Context!11168) List!64899) Unit!158131)

(assert (=> d!1970870 (= lt!2354299 (choose!46620 lt!2354108 lt!2354106 (t!378459 s!2326)))))

(assert (=> d!1970870 (= (lemmaZipperConcatMatchesSameAsBothZippers!1031 lt!2354108 lt!2354106 (t!378459 s!2326)) lt!2354299)))

(declare-fun b!6279958 () Bool)

(assert (=> b!6279958 (= e!3819099 (matchZipper!2212 lt!2354106 (t!378459 s!2326)))))

(assert (= (and d!1970870 (not res!2590111)) b!6279958))

(declare-fun m!7101018 () Bool)

(assert (=> d!1970870 m!7101018))

(assert (=> d!1970870 m!7100676))

(declare-fun m!7101020 () Bool)

(assert (=> d!1970870 m!7101020))

(assert (=> b!6279958 m!7100646))

(assert (=> b!6279528 d!1970870))

(declare-fun bs!1568642 () Bool)

(declare-fun d!1970872 () Bool)

(assert (= bs!1568642 (and d!1970872 d!1970828)))

(declare-fun lambda!344402 () Int)

(assert (=> bs!1568642 (= lambda!344402 lambda!344366)))

(declare-fun bs!1568643 () Bool)

(assert (= bs!1568643 (and d!1970872 d!1970846)))

(assert (=> bs!1568643 (= lambda!344402 lambda!344387)))

(declare-fun bs!1568644 () Bool)

(assert (= bs!1568644 (and d!1970872 d!1970848)))

(assert (=> bs!1568644 (= lambda!344402 lambda!344390)))

(assert (=> d!1970872 (= (inv!83748 (h!71225 zl!343)) (forall!15337 (exprs!6084 (h!71225 zl!343)) lambda!344402))))

(declare-fun bs!1568645 () Bool)

(assert (= bs!1568645 d!1970872))

(declare-fun m!7101022 () Bool)

(assert (=> bs!1568645 m!7101022))

(assert (=> b!6279529 d!1970872))

(declare-fun b!6279969 () Bool)

(declare-fun e!3819108 () (Set Context!11168))

(declare-fun call!531428 () (Set Context!11168))

(assert (=> b!6279969 (= e!3819108 call!531428)))

(declare-fun d!1970874 () Bool)

(declare-fun c!1138743 () Bool)

(declare-fun e!3819106 () Bool)

(assert (=> d!1970874 (= c!1138743 e!3819106)))

(declare-fun res!2590114 () Bool)

(assert (=> d!1970874 (=> (not res!2590114) (not e!3819106))))

(assert (=> d!1970874 (= res!2590114 (is-Cons!64776 (exprs!6084 lt!2354125)))))

(declare-fun e!3819107 () (Set Context!11168))

(assert (=> d!1970874 (= (derivationStepZipperUp!1374 lt!2354125 (h!71223 s!2326)) e!3819107)))

(declare-fun b!6279970 () Bool)

(assert (=> b!6279970 (= e!3819107 (set.union call!531428 (derivationStepZipperUp!1374 (Context!11169 (t!378460 (exprs!6084 lt!2354125))) (h!71223 s!2326))))))

(declare-fun b!6279971 () Bool)

(assert (=> b!6279971 (= e!3819107 e!3819108)))

(declare-fun c!1138744 () Bool)

(assert (=> b!6279971 (= c!1138744 (is-Cons!64776 (exprs!6084 lt!2354125)))))

(declare-fun b!6279972 () Bool)

(assert (=> b!6279972 (= e!3819108 (as set.empty (Set Context!11168)))))

(declare-fun b!6279973 () Bool)

(assert (=> b!6279973 (= e!3819106 (nullable!6193 (h!71224 (exprs!6084 lt!2354125))))))

(declare-fun bm!531423 () Bool)

(assert (=> bm!531423 (= call!531428 (derivationStepZipperDown!1448 (h!71224 (exprs!6084 lt!2354125)) (Context!11169 (t!378460 (exprs!6084 lt!2354125))) (h!71223 s!2326)))))

(assert (= (and d!1970874 res!2590114) b!6279973))

(assert (= (and d!1970874 c!1138743) b!6279970))

(assert (= (and d!1970874 (not c!1138743)) b!6279971))

(assert (= (and b!6279971 c!1138744) b!6279969))

(assert (= (and b!6279971 (not c!1138744)) b!6279972))

(assert (= (or b!6279970 b!6279969) bm!531423))

(declare-fun m!7101024 () Bool)

(assert (=> b!6279970 m!7101024))

(declare-fun m!7101026 () Bool)

(assert (=> b!6279973 m!7101026))

(declare-fun m!7101028 () Bool)

(assert (=> bm!531423 m!7101028))

(assert (=> b!6279550 d!1970874))

(declare-fun bm!531424 () Bool)

(declare-fun call!531432 () (Set Context!11168))

(declare-fun call!531430 () (Set Context!11168))

(assert (=> bm!531424 (= call!531432 call!531430)))

(declare-fun b!6279974 () Bool)

(declare-fun e!3819109 () (Set Context!11168))

(declare-fun call!531433 () (Set Context!11168))

(assert (=> b!6279974 (= e!3819109 (set.union call!531430 call!531433))))

(declare-fun d!1970878 () Bool)

(declare-fun c!1138748 () Bool)

(assert (=> d!1970878 (= c!1138748 (and (is-ElementMatch!16200 (h!71224 (exprs!6084 (h!71225 zl!343)))) (= (c!1138637 (h!71224 (exprs!6084 (h!71225 zl!343)))) (h!71223 s!2326))))))

(declare-fun e!3819111 () (Set Context!11168))

(assert (=> d!1970878 (= (derivationStepZipperDown!1448 (h!71224 (exprs!6084 (h!71225 zl!343))) lt!2354125 (h!71223 s!2326)) e!3819111)))

(declare-fun bm!531425 () Bool)

(declare-fun call!531429 () (Set Context!11168))

(assert (=> bm!531425 (= call!531429 call!531432)))

(declare-fun c!1138745 () Bool)

(declare-fun call!531431 () List!64900)

(declare-fun bm!531426 () Bool)

(assert (=> bm!531426 (= call!531433 (derivationStepZipperDown!1448 (ite c!1138745 (regTwo!32913 (h!71224 (exprs!6084 (h!71225 zl!343)))) (regOne!32912 (h!71224 (exprs!6084 (h!71225 zl!343))))) (ite c!1138745 lt!2354125 (Context!11169 call!531431)) (h!71223 s!2326)))))

(declare-fun b!6279975 () Bool)

(assert (=> b!6279975 (= e!3819111 (set.insert lt!2354125 (as set.empty (Set Context!11168))))))

(declare-fun b!6279976 () Bool)

(declare-fun e!3819113 () (Set Context!11168))

(assert (=> b!6279976 (= e!3819113 call!531429)))

(declare-fun b!6279977 () Bool)

(declare-fun e!3819114 () (Set Context!11168))

(assert (=> b!6279977 (= e!3819114 call!531429)))

(declare-fun b!6279978 () Bool)

(assert (=> b!6279978 (= e!3819111 e!3819109)))

(assert (=> b!6279978 (= c!1138745 (is-Union!16200 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun b!6279979 () Bool)

(declare-fun e!3819110 () Bool)

(assert (=> b!6279979 (= e!3819110 (nullable!6193 (regOne!32912 (h!71224 (exprs!6084 (h!71225 zl!343))))))))

(declare-fun c!1138747 () Bool)

(declare-fun c!1138749 () Bool)

(declare-fun bm!531427 () Bool)

(assert (=> bm!531427 (= call!531431 ($colon$colon!2065 (exprs!6084 lt!2354125) (ite (or c!1138747 c!1138749) (regTwo!32912 (h!71224 (exprs!6084 (h!71225 zl!343)))) (h!71224 (exprs!6084 (h!71225 zl!343))))))))

(declare-fun b!6279980 () Bool)

(declare-fun e!3819112 () (Set Context!11168))

(assert (=> b!6279980 (= e!3819112 e!3819114)))

(assert (=> b!6279980 (= c!1138749 (is-Concat!25045 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun bm!531428 () Bool)

(declare-fun call!531434 () List!64900)

(assert (=> bm!531428 (= call!531430 (derivationStepZipperDown!1448 (ite c!1138745 (regOne!32913 (h!71224 (exprs!6084 (h!71225 zl!343)))) (ite c!1138747 (regTwo!32912 (h!71224 (exprs!6084 (h!71225 zl!343)))) (ite c!1138749 (regOne!32912 (h!71224 (exprs!6084 (h!71225 zl!343)))) (reg!16529 (h!71224 (exprs!6084 (h!71225 zl!343))))))) (ite (or c!1138745 c!1138747) lt!2354125 (Context!11169 call!531434)) (h!71223 s!2326)))))

(declare-fun b!6279981 () Bool)

(assert (=> b!6279981 (= c!1138747 e!3819110)))

(declare-fun res!2590115 () Bool)

(assert (=> b!6279981 (=> (not res!2590115) (not e!3819110))))

(assert (=> b!6279981 (= res!2590115 (is-Concat!25045 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(assert (=> b!6279981 (= e!3819109 e!3819112)))

(declare-fun b!6279982 () Bool)

(declare-fun c!1138746 () Bool)

(assert (=> b!6279982 (= c!1138746 (is-Star!16200 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(assert (=> b!6279982 (= e!3819114 e!3819113)))

(declare-fun b!6279983 () Bool)

(assert (=> b!6279983 (= e!3819113 (as set.empty (Set Context!11168)))))

(declare-fun b!6279984 () Bool)

(assert (=> b!6279984 (= e!3819112 (set.union call!531433 call!531432))))

(declare-fun bm!531429 () Bool)

(assert (=> bm!531429 (= call!531434 call!531431)))

(assert (= (and d!1970878 c!1138748) b!6279975))

(assert (= (and d!1970878 (not c!1138748)) b!6279978))

(assert (= (and b!6279978 c!1138745) b!6279974))

(assert (= (and b!6279978 (not c!1138745)) b!6279981))

(assert (= (and b!6279981 res!2590115) b!6279979))

(assert (= (and b!6279981 c!1138747) b!6279984))

(assert (= (and b!6279981 (not c!1138747)) b!6279980))

(assert (= (and b!6279980 c!1138749) b!6279977))

(assert (= (and b!6279980 (not c!1138749)) b!6279982))

(assert (= (and b!6279982 c!1138746) b!6279976))

(assert (= (and b!6279982 (not c!1138746)) b!6279983))

(assert (= (or b!6279977 b!6279976) bm!531429))

(assert (= (or b!6279977 b!6279976) bm!531425))

(assert (= (or b!6279984 bm!531429) bm!531427))

(assert (= (or b!6279984 bm!531425) bm!531424))

(assert (= (or b!6279974 b!6279984) bm!531426))

(assert (= (or b!6279974 bm!531424) bm!531428))

(declare-fun m!7101030 () Bool)

(assert (=> b!6279979 m!7101030))

(declare-fun m!7101032 () Bool)

(assert (=> bm!531428 m!7101032))

(declare-fun m!7101034 () Bool)

(assert (=> bm!531426 m!7101034))

(declare-fun m!7101036 () Bool)

(assert (=> bm!531427 m!7101036))

(assert (=> b!6279975 m!7100926))

(assert (=> b!6279550 d!1970878))

(declare-fun d!1970880 () Bool)

(declare-fun dynLambda!25626 (Int Context!11168) (Set Context!11168))

(assert (=> d!1970880 (= (flatMap!1705 z!1189 lambda!344338) (dynLambda!25626 lambda!344338 (h!71225 zl!343)))))

(declare-fun lt!2354302 () Unit!158131)

(declare-fun choose!46621 ((Set Context!11168) Context!11168 Int) Unit!158131)

(assert (=> d!1970880 (= lt!2354302 (choose!46621 z!1189 (h!71225 zl!343) lambda!344338))))

(assert (=> d!1970880 (= z!1189 (set.insert (h!71225 zl!343) (as set.empty (Set Context!11168))))))

(assert (=> d!1970880 (= (lemmaFlatMapOnSingletonSet!1231 z!1189 (h!71225 zl!343) lambda!344338) lt!2354302)))

(declare-fun b_lambda!239077 () Bool)

(assert (=> (not b_lambda!239077) (not d!1970880)))

(declare-fun bs!1568646 () Bool)

(assert (= bs!1568646 d!1970880))

(assert (=> bs!1568646 m!7100600))

(declare-fun m!7101038 () Bool)

(assert (=> bs!1568646 m!7101038))

(declare-fun m!7101040 () Bool)

(assert (=> bs!1568646 m!7101040))

(declare-fun m!7101042 () Bool)

(assert (=> bs!1568646 m!7101042))

(assert (=> b!6279550 d!1970880))

(declare-fun d!1970882 () Bool)

(assert (=> d!1970882 (= (nullable!6193 (h!71224 (exprs!6084 (h!71225 zl!343)))) (nullableFct!2144 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun bs!1568647 () Bool)

(assert (= bs!1568647 d!1970882))

(declare-fun m!7101044 () Bool)

(assert (=> bs!1568647 m!7101044))

(assert (=> b!6279550 d!1970882))

(declare-fun b!6279985 () Bool)

(declare-fun e!3819117 () (Set Context!11168))

(declare-fun call!531435 () (Set Context!11168))

(assert (=> b!6279985 (= e!3819117 call!531435)))

(declare-fun d!1970884 () Bool)

(declare-fun c!1138750 () Bool)

(declare-fun e!3819115 () Bool)

(assert (=> d!1970884 (= c!1138750 e!3819115)))

(declare-fun res!2590116 () Bool)

(assert (=> d!1970884 (=> (not res!2590116) (not e!3819115))))

(assert (=> d!1970884 (= res!2590116 (is-Cons!64776 (exprs!6084 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343))))))))))

(declare-fun e!3819116 () (Set Context!11168))

(assert (=> d!1970884 (= (derivationStepZipperUp!1374 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343))))) (h!71223 s!2326)) e!3819116)))

(declare-fun b!6279986 () Bool)

(assert (=> b!6279986 (= e!3819116 (set.union call!531435 (derivationStepZipperUp!1374 (Context!11169 (t!378460 (exprs!6084 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343)))))))) (h!71223 s!2326))))))

(declare-fun b!6279987 () Bool)

(assert (=> b!6279987 (= e!3819116 e!3819117)))

(declare-fun c!1138751 () Bool)

(assert (=> b!6279987 (= c!1138751 (is-Cons!64776 (exprs!6084 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343))))))))))

(declare-fun b!6279988 () Bool)

(assert (=> b!6279988 (= e!3819117 (as set.empty (Set Context!11168)))))

(declare-fun b!6279989 () Bool)

(assert (=> b!6279989 (= e!3819115 (nullable!6193 (h!71224 (exprs!6084 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343)))))))))))

(declare-fun bm!531430 () Bool)

(assert (=> bm!531430 (= call!531435 (derivationStepZipperDown!1448 (h!71224 (exprs!6084 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343))))))) (Context!11169 (t!378460 (exprs!6084 (Context!11169 (Cons!64776 (h!71224 (exprs!6084 (h!71225 zl!343))) (t!378460 (exprs!6084 (h!71225 zl!343)))))))) (h!71223 s!2326)))))

(assert (= (and d!1970884 res!2590116) b!6279989))

(assert (= (and d!1970884 c!1138750) b!6279986))

(assert (= (and d!1970884 (not c!1138750)) b!6279987))

(assert (= (and b!6279987 c!1138751) b!6279985))

(assert (= (and b!6279987 (not c!1138751)) b!6279988))

(assert (= (or b!6279986 b!6279985) bm!531430))

(declare-fun m!7101046 () Bool)

(assert (=> b!6279986 m!7101046))

(declare-fun m!7101048 () Bool)

(assert (=> b!6279989 m!7101048))

(declare-fun m!7101050 () Bool)

(assert (=> bm!531430 m!7101050))

(assert (=> b!6279550 d!1970884))

(declare-fun d!1970886 () Bool)

(declare-fun choose!46622 ((Set Context!11168) Int) (Set Context!11168))

(assert (=> d!1970886 (= (flatMap!1705 z!1189 lambda!344338) (choose!46622 z!1189 lambda!344338))))

(declare-fun bs!1568648 () Bool)

(assert (= bs!1568648 d!1970886))

(declare-fun m!7101052 () Bool)

(assert (=> bs!1568648 m!7101052))

(assert (=> b!6279550 d!1970886))

(declare-fun b!6279990 () Bool)

(declare-fun e!3819120 () (Set Context!11168))

(declare-fun call!531436 () (Set Context!11168))

(assert (=> b!6279990 (= e!3819120 call!531436)))

(declare-fun d!1970888 () Bool)

(declare-fun c!1138752 () Bool)

(declare-fun e!3819118 () Bool)

(assert (=> d!1970888 (= c!1138752 e!3819118)))

(declare-fun res!2590117 () Bool)

(assert (=> d!1970888 (=> (not res!2590117) (not e!3819118))))

(assert (=> d!1970888 (= res!2590117 (is-Cons!64776 (exprs!6084 (h!71225 zl!343))))))

(declare-fun e!3819119 () (Set Context!11168))

(assert (=> d!1970888 (= (derivationStepZipperUp!1374 (h!71225 zl!343) (h!71223 s!2326)) e!3819119)))

(declare-fun b!6279991 () Bool)

(assert (=> b!6279991 (= e!3819119 (set.union call!531436 (derivationStepZipperUp!1374 (Context!11169 (t!378460 (exprs!6084 (h!71225 zl!343)))) (h!71223 s!2326))))))

(declare-fun b!6279992 () Bool)

(assert (=> b!6279992 (= e!3819119 e!3819120)))

(declare-fun c!1138753 () Bool)

(assert (=> b!6279992 (= c!1138753 (is-Cons!64776 (exprs!6084 (h!71225 zl!343))))))

(declare-fun b!6279993 () Bool)

(assert (=> b!6279993 (= e!3819120 (as set.empty (Set Context!11168)))))

(declare-fun b!6279994 () Bool)

(assert (=> b!6279994 (= e!3819118 (nullable!6193 (h!71224 (exprs!6084 (h!71225 zl!343)))))))

(declare-fun bm!531431 () Bool)

(assert (=> bm!531431 (= call!531436 (derivationStepZipperDown!1448 (h!71224 (exprs!6084 (h!71225 zl!343))) (Context!11169 (t!378460 (exprs!6084 (h!71225 zl!343)))) (h!71223 s!2326)))))

(assert (= (and d!1970888 res!2590117) b!6279994))

(assert (= (and d!1970888 c!1138752) b!6279991))

(assert (= (and d!1970888 (not c!1138752)) b!6279992))

(assert (= (and b!6279992 c!1138753) b!6279990))

(assert (= (and b!6279992 (not c!1138753)) b!6279993))

(assert (= (or b!6279991 b!6279990) bm!531431))

(declare-fun m!7101054 () Bool)

(assert (=> b!6279991 m!7101054))

(assert (=> b!6279994 m!7100608))

(declare-fun m!7101056 () Bool)

(assert (=> bm!531431 m!7101056))

(assert (=> b!6279550 d!1970888))

(declare-fun d!1970890 () Bool)

(declare-fun lt!2354308 () Int)

(assert (=> d!1970890 (>= lt!2354308 0)))

(declare-fun e!3819126 () Int)

(assert (=> d!1970890 (= lt!2354308 e!3819126)))

(declare-fun c!1138757 () Bool)

(assert (=> d!1970890 (= c!1138757 (is-Cons!64776 (exprs!6084 lt!2354098)))))

(assert (=> d!1970890 (= (contextDepthTotal!323 lt!2354098) lt!2354308)))

(declare-fun b!6280002 () Bool)

(declare-fun regexDepthTotal!175 (Regex!16200) Int)

(assert (=> b!6280002 (= e!3819126 (+ (regexDepthTotal!175 (h!71224 (exprs!6084 lt!2354098))) (contextDepthTotal!323 (Context!11169 (t!378460 (exprs!6084 lt!2354098))))))))

(declare-fun b!6280003 () Bool)

(assert (=> b!6280003 (= e!3819126 1)))

(assert (= (and d!1970890 c!1138757) b!6280002))

(assert (= (and d!1970890 (not c!1138757)) b!6280003))

(declare-fun m!7101060 () Bool)

(assert (=> b!6280002 m!7101060))

(declare-fun m!7101062 () Bool)

(assert (=> b!6280002 m!7101062))

(assert (=> b!6279541 d!1970890))

(declare-fun d!1970894 () Bool)

(declare-fun lt!2354309 () Int)

(assert (=> d!1970894 (>= lt!2354309 0)))

(declare-fun e!3819127 () Int)

(assert (=> d!1970894 (= lt!2354309 e!3819127)))

(declare-fun c!1138758 () Bool)

(assert (=> d!1970894 (= c!1138758 (is-Cons!64776 (exprs!6084 (h!71225 zl!343))))))

(assert (=> d!1970894 (= (contextDepthTotal!323 (h!71225 zl!343)) lt!2354309)))

(declare-fun b!6280004 () Bool)

(assert (=> b!6280004 (= e!3819127 (+ (regexDepthTotal!175 (h!71224 (exprs!6084 (h!71225 zl!343)))) (contextDepthTotal!323 (Context!11169 (t!378460 (exprs!6084 (h!71225 zl!343)))))))))

(declare-fun b!6280005 () Bool)

(assert (=> b!6280005 (= e!3819127 1)))

(assert (= (and d!1970894 c!1138758) b!6280004))

(assert (= (and d!1970894 (not c!1138758)) b!6280005))

(declare-fun m!7101064 () Bool)

(assert (=> b!6280004 m!7101064))

(declare-fun m!7101066 () Bool)

(assert (=> b!6280004 m!7101066))

(assert (=> b!6279541 d!1970894))

(declare-fun b!6280006 () Bool)

(declare-fun e!3819130 () (Set Context!11168))

(declare-fun call!531437 () (Set Context!11168))

(assert (=> b!6280006 (= e!3819130 call!531437)))

(declare-fun d!1970896 () Bool)

(declare-fun c!1138759 () Bool)

(declare-fun e!3819128 () Bool)

(assert (=> d!1970896 (= c!1138759 e!3819128)))

(declare-fun res!2590121 () Bool)

(assert (=> d!1970896 (=> (not res!2590121) (not e!3819128))))

(assert (=> d!1970896 (= res!2590121 (is-Cons!64776 (exprs!6084 lt!2354116)))))

(declare-fun e!3819129 () (Set Context!11168))

(assert (=> d!1970896 (= (derivationStepZipperUp!1374 lt!2354116 (h!71223 s!2326)) e!3819129)))

(declare-fun b!6280007 () Bool)

(assert (=> b!6280007 (= e!3819129 (set.union call!531437 (derivationStepZipperUp!1374 (Context!11169 (t!378460 (exprs!6084 lt!2354116))) (h!71223 s!2326))))))

(declare-fun b!6280008 () Bool)

(assert (=> b!6280008 (= e!3819129 e!3819130)))

(declare-fun c!1138760 () Bool)

(assert (=> b!6280008 (= c!1138760 (is-Cons!64776 (exprs!6084 lt!2354116)))))

(declare-fun b!6280009 () Bool)

(assert (=> b!6280009 (= e!3819130 (as set.empty (Set Context!11168)))))

(declare-fun b!6280010 () Bool)

(assert (=> b!6280010 (= e!3819128 (nullable!6193 (h!71224 (exprs!6084 lt!2354116))))))

(declare-fun bm!531432 () Bool)

(assert (=> bm!531432 (= call!531437 (derivationStepZipperDown!1448 (h!71224 (exprs!6084 lt!2354116)) (Context!11169 (t!378460 (exprs!6084 lt!2354116))) (h!71223 s!2326)))))

(assert (= (and d!1970896 res!2590121) b!6280010))

(assert (= (and d!1970896 c!1138759) b!6280007))

(assert (= (and d!1970896 (not c!1138759)) b!6280008))

(assert (= (and b!6280008 c!1138760) b!6280006))

(assert (= (and b!6280008 (not c!1138760)) b!6280009))

(assert (= (or b!6280007 b!6280006) bm!531432))

(declare-fun m!7101068 () Bool)

(assert (=> b!6280007 m!7101068))

(declare-fun m!7101070 () Bool)

(assert (=> b!6280010 m!7101070))

(declare-fun m!7101072 () Bool)

(assert (=> bm!531432 m!7101072))

(assert (=> b!6279521 d!1970896))

(declare-fun b!6280011 () Bool)

(declare-fun e!3819133 () (Set Context!11168))

(declare-fun call!531438 () (Set Context!11168))

(assert (=> b!6280011 (= e!3819133 call!531438)))

(declare-fun d!1970898 () Bool)

(declare-fun c!1138761 () Bool)

(declare-fun e!3819131 () Bool)

(assert (=> d!1970898 (= c!1138761 e!3819131)))

(declare-fun res!2590122 () Bool)

(assert (=> d!1970898 (=> (not res!2590122) (not e!3819131))))

(assert (=> d!1970898 (= res!2590122 (is-Cons!64776 (exprs!6084 lt!2354098)))))

(declare-fun e!3819132 () (Set Context!11168))

(assert (=> d!1970898 (= (derivationStepZipperUp!1374 lt!2354098 (h!71223 s!2326)) e!3819132)))

(declare-fun b!6280012 () Bool)

(assert (=> b!6280012 (= e!3819132 (set.union call!531438 (derivationStepZipperUp!1374 (Context!11169 (t!378460 (exprs!6084 lt!2354098))) (h!71223 s!2326))))))

(declare-fun b!6280013 () Bool)

(assert (=> b!6280013 (= e!3819132 e!3819133)))

(declare-fun c!1138762 () Bool)

(assert (=> b!6280013 (= c!1138762 (is-Cons!64776 (exprs!6084 lt!2354098)))))

(declare-fun b!6280014 () Bool)

(assert (=> b!6280014 (= e!3819133 (as set.empty (Set Context!11168)))))

(declare-fun b!6280015 () Bool)

(assert (=> b!6280015 (= e!3819131 (nullable!6193 (h!71224 (exprs!6084 lt!2354098))))))

(declare-fun bm!531433 () Bool)

(assert (=> bm!531433 (= call!531438 (derivationStepZipperDown!1448 (h!71224 (exprs!6084 lt!2354098)) (Context!11169 (t!378460 (exprs!6084 lt!2354098))) (h!71223 s!2326)))))

(assert (= (and d!1970898 res!2590122) b!6280015))

(assert (= (and d!1970898 c!1138761) b!6280012))

(assert (= (and d!1970898 (not c!1138761)) b!6280013))

(assert (= (and b!6280013 c!1138762) b!6280011))

(assert (= (and b!6280013 (not c!1138762)) b!6280014))

(assert (= (or b!6280012 b!6280011) bm!531433))

(declare-fun m!7101074 () Bool)

(assert (=> b!6280012 m!7101074))

(declare-fun m!7101076 () Bool)

(assert (=> b!6280015 m!7101076))

(declare-fun m!7101078 () Bool)

(assert (=> bm!531433 m!7101078))

(assert (=> b!6279521 d!1970898))

(declare-fun d!1970900 () Bool)

(assert (=> d!1970900 (= (flatMap!1705 lt!2354119 lambda!344338) (dynLambda!25626 lambda!344338 lt!2354098))))

(declare-fun lt!2354310 () Unit!158131)

(assert (=> d!1970900 (= lt!2354310 (choose!46621 lt!2354119 lt!2354098 lambda!344338))))

(assert (=> d!1970900 (= lt!2354119 (set.insert lt!2354098 (as set.empty (Set Context!11168))))))

(assert (=> d!1970900 (= (lemmaFlatMapOnSingletonSet!1231 lt!2354119 lt!2354098 lambda!344338) lt!2354310)))

(declare-fun b_lambda!239079 () Bool)

(assert (=> (not b_lambda!239079) (not d!1970900)))

(declare-fun bs!1568649 () Bool)

(assert (= bs!1568649 d!1970900))

(assert (=> bs!1568649 m!7100620))

(declare-fun m!7101080 () Bool)

(assert (=> bs!1568649 m!7101080))

(declare-fun m!7101082 () Bool)

(assert (=> bs!1568649 m!7101082))

(assert (=> bs!1568649 m!7100632))

(assert (=> b!6279521 d!1970900))

(declare-fun d!1970902 () Bool)

(assert (=> d!1970902 (= (flatMap!1705 lt!2354119 lambda!344338) (choose!46622 lt!2354119 lambda!344338))))

(declare-fun bs!1568650 () Bool)

(assert (= bs!1568650 d!1970902))

(declare-fun m!7101084 () Bool)

(assert (=> bs!1568650 m!7101084))

(assert (=> b!6279521 d!1970902))

(declare-fun bs!1568651 () Bool)

(declare-fun d!1970904 () Bool)

(assert (= bs!1568651 (and d!1970904 b!6279550)))

(declare-fun lambda!344405 () Int)

(assert (=> bs!1568651 (= lambda!344405 lambda!344338)))

(assert (=> d!1970904 true))

(assert (=> d!1970904 (= (derivationStepZipper!2166 lt!2354119 (h!71223 s!2326)) (flatMap!1705 lt!2354119 lambda!344405))))

(declare-fun bs!1568652 () Bool)

(assert (= bs!1568652 d!1970904))

(declare-fun m!7101086 () Bool)

(assert (=> bs!1568652 m!7101086))

(assert (=> b!6279521 d!1970904))

(declare-fun d!1970906 () Bool)

(assert (=> d!1970906 (= (isEmpty!36819 (t!378461 zl!343)) (is-Nil!64777 (t!378461 zl!343)))))

(assert (=> b!6279542 d!1970906))

(declare-fun bs!1568653 () Bool)

(declare-fun d!1970908 () Bool)

(assert (= bs!1568653 (and d!1970908 d!1970828)))

(declare-fun lambda!344406 () Int)

(assert (=> bs!1568653 (= lambda!344406 lambda!344366)))

(declare-fun bs!1568654 () Bool)

(assert (= bs!1568654 (and d!1970908 d!1970846)))

(assert (=> bs!1568654 (= lambda!344406 lambda!344387)))

(declare-fun bs!1568655 () Bool)

(assert (= bs!1568655 (and d!1970908 d!1970848)))

(assert (=> bs!1568655 (= lambda!344406 lambda!344390)))

(declare-fun bs!1568656 () Bool)

(assert (= bs!1568656 (and d!1970908 d!1970872)))

(assert (=> bs!1568656 (= lambda!344406 lambda!344402)))

(assert (=> d!1970908 (= (inv!83748 setElem!42725) (forall!15337 (exprs!6084 setElem!42725) lambda!344406))))

(declare-fun bs!1568657 () Bool)

(assert (= bs!1568657 d!1970908))

(declare-fun m!7101088 () Bool)

(assert (=> bs!1568657 m!7101088))

(assert (=> setNonEmpty!42725 d!1970908))

(declare-fun d!1970910 () Bool)

(declare-fun lt!2354313 () Regex!16200)

(assert (=> d!1970910 (validRegex!7936 lt!2354313)))

(assert (=> d!1970910 (= lt!2354313 (generalisedUnion!2044 (unfocusZipperList!1621 zl!343)))))

(assert (=> d!1970910 (= (unfocusZipper!1942 zl!343) lt!2354313)))

(declare-fun bs!1568658 () Bool)

(assert (= bs!1568658 d!1970910))

(declare-fun m!7101090 () Bool)

(assert (=> bs!1568658 m!7101090))

(assert (=> bs!1568658 m!7100616))

(assert (=> bs!1568658 m!7100616))

(assert (=> bs!1568658 m!7100618))

(assert (=> b!6279523 d!1970910))

(declare-fun bs!1568659 () Bool)

(declare-fun d!1970912 () Bool)

(assert (= bs!1568659 (and d!1970912 d!1970848)))

(declare-fun lambda!344407 () Int)

(assert (=> bs!1568659 (= lambda!344407 lambda!344390)))

(declare-fun bs!1568660 () Bool)

(assert (= bs!1568660 (and d!1970912 d!1970846)))

(assert (=> bs!1568660 (= lambda!344407 lambda!344387)))

(declare-fun bs!1568661 () Bool)

(assert (= bs!1568661 (and d!1970912 d!1970872)))

(assert (=> bs!1568661 (= lambda!344407 lambda!344402)))

(declare-fun bs!1568662 () Bool)

(assert (= bs!1568662 (and d!1970912 d!1970828)))

(assert (=> bs!1568662 (= lambda!344407 lambda!344366)))

(declare-fun bs!1568663 () Bool)

(assert (= bs!1568663 (and d!1970912 d!1970908)))

(assert (=> bs!1568663 (= lambda!344407 lambda!344406)))

(declare-fun b!6280022 () Bool)

(declare-fun e!3819140 () Bool)

(declare-fun lt!2354314 () Regex!16200)

(assert (=> b!6280022 (= e!3819140 (isEmptyExpr!1606 lt!2354314))))

(declare-fun b!6280023 () Bool)

(declare-fun e!3819141 () Regex!16200)

(assert (=> b!6280023 (= e!3819141 (Concat!25045 (h!71224 lt!2354109) (generalisedConcat!1797 (t!378460 lt!2354109))))))

(declare-fun b!6280024 () Bool)

(declare-fun e!3819138 () Bool)

(assert (=> b!6280024 (= e!3819138 (isEmpty!36820 (t!378460 lt!2354109)))))

(declare-fun e!3819136 () Bool)

(assert (=> d!1970912 e!3819136))

(declare-fun res!2590124 () Bool)

(assert (=> d!1970912 (=> (not res!2590124) (not e!3819136))))

(assert (=> d!1970912 (= res!2590124 (validRegex!7936 lt!2354314))))

(declare-fun e!3819139 () Regex!16200)

(assert (=> d!1970912 (= lt!2354314 e!3819139)))

(declare-fun c!1138769 () Bool)

(assert (=> d!1970912 (= c!1138769 e!3819138)))

(declare-fun res!2590123 () Bool)

(assert (=> d!1970912 (=> (not res!2590123) (not e!3819138))))

(assert (=> d!1970912 (= res!2590123 (is-Cons!64776 lt!2354109))))

(assert (=> d!1970912 (forall!15337 lt!2354109 lambda!344407)))

(assert (=> d!1970912 (= (generalisedConcat!1797 lt!2354109) lt!2354314)))

(declare-fun b!6280025 () Bool)

(assert (=> b!6280025 (= e!3819141 EmptyExpr!16200)))

(declare-fun b!6280026 () Bool)

(declare-fun e!3819137 () Bool)

(assert (=> b!6280026 (= e!3819140 e!3819137)))

(declare-fun c!1138767 () Bool)

(assert (=> b!6280026 (= c!1138767 (isEmpty!36820 (tail!11985 lt!2354109)))))

(declare-fun b!6280027 () Bool)

(assert (=> b!6280027 (= e!3819136 e!3819140)))

(declare-fun c!1138770 () Bool)

(assert (=> b!6280027 (= c!1138770 (isEmpty!36820 lt!2354109))))

(declare-fun b!6280028 () Bool)

(assert (=> b!6280028 (= e!3819137 (isConcat!1129 lt!2354314))))

(declare-fun b!6280029 () Bool)

(assert (=> b!6280029 (= e!3819139 (h!71224 lt!2354109))))

(declare-fun b!6280030 () Bool)

(assert (=> b!6280030 (= e!3819139 e!3819141)))

(declare-fun c!1138768 () Bool)

(assert (=> b!6280030 (= c!1138768 (is-Cons!64776 lt!2354109))))

(declare-fun b!6280031 () Bool)

(assert (=> b!6280031 (= e!3819137 (= lt!2354314 (head!12900 lt!2354109)))))

(assert (= (and d!1970912 res!2590123) b!6280024))

(assert (= (and d!1970912 c!1138769) b!6280029))

(assert (= (and d!1970912 (not c!1138769)) b!6280030))

(assert (= (and b!6280030 c!1138768) b!6280023))

(assert (= (and b!6280030 (not c!1138768)) b!6280025))

(assert (= (and d!1970912 res!2590124) b!6280027))

(assert (= (and b!6280027 c!1138770) b!6280022))

(assert (= (and b!6280027 (not c!1138770)) b!6280026))

(assert (= (and b!6280026 c!1138767) b!6280031))

(assert (= (and b!6280026 (not c!1138767)) b!6280028))

(declare-fun m!7101094 () Bool)

(assert (=> b!6280027 m!7101094))

(declare-fun m!7101096 () Bool)

(assert (=> b!6280026 m!7101096))

(assert (=> b!6280026 m!7101096))

(declare-fun m!7101100 () Bool)

(assert (=> b!6280026 m!7101100))

(declare-fun m!7101102 () Bool)

(assert (=> b!6280023 m!7101102))

(declare-fun m!7101106 () Bool)

(assert (=> d!1970912 m!7101106))

(declare-fun m!7101108 () Bool)

(assert (=> d!1970912 m!7101108))

(declare-fun m!7101110 () Bool)

(assert (=> b!6280024 m!7101110))

(declare-fun m!7101114 () Bool)

(assert (=> b!6280031 m!7101114))

(declare-fun m!7101116 () Bool)

(assert (=> b!6280028 m!7101116))

(declare-fun m!7101119 () Bool)

(assert (=> b!6280022 m!7101119))

(assert (=> b!6279543 d!1970912))

(declare-fun bs!1568664 () Bool)

(declare-fun d!1970914 () Bool)

(assert (= bs!1568664 (and d!1970914 d!1970848)))

(declare-fun lambda!344408 () Int)

(assert (=> bs!1568664 (= lambda!344408 lambda!344390)))

(declare-fun bs!1568665 () Bool)

(assert (= bs!1568665 (and d!1970914 d!1970846)))

(assert (=> bs!1568665 (= lambda!344408 lambda!344387)))

(declare-fun bs!1568666 () Bool)

(assert (= bs!1568666 (and d!1970914 d!1970872)))

(assert (=> bs!1568666 (= lambda!344408 lambda!344402)))

(declare-fun bs!1568667 () Bool)

(assert (= bs!1568667 (and d!1970914 d!1970828)))

(assert (=> bs!1568667 (= lambda!344408 lambda!344366)))

(declare-fun bs!1568668 () Bool)

(assert (= bs!1568668 (and d!1970914 d!1970908)))

(assert (=> bs!1568668 (= lambda!344408 lambda!344406)))

(declare-fun bs!1568669 () Bool)

(assert (= bs!1568669 (and d!1970914 d!1970912)))

(assert (=> bs!1568669 (= lambda!344408 lambda!344407)))

(declare-fun b!6280034 () Bool)

(declare-fun e!3819147 () Bool)

(declare-fun lt!2354315 () Regex!16200)

(assert (=> b!6280034 (= e!3819147 (isEmptyExpr!1606 lt!2354315))))

(declare-fun b!6280035 () Bool)

(declare-fun e!3819148 () Regex!16200)

(assert (=> b!6280035 (= e!3819148 (Concat!25045 (h!71224 lt!2354107) (generalisedConcat!1797 (t!378460 lt!2354107))))))

(declare-fun b!6280036 () Bool)

(declare-fun e!3819145 () Bool)

(assert (=> b!6280036 (= e!3819145 (isEmpty!36820 (t!378460 lt!2354107)))))

(declare-fun e!3819143 () Bool)

(assert (=> d!1970914 e!3819143))

(declare-fun res!2590126 () Bool)

(assert (=> d!1970914 (=> (not res!2590126) (not e!3819143))))

(assert (=> d!1970914 (= res!2590126 (validRegex!7936 lt!2354315))))

(declare-fun e!3819146 () Regex!16200)

(assert (=> d!1970914 (= lt!2354315 e!3819146)))

(declare-fun c!1138774 () Bool)

(assert (=> d!1970914 (= c!1138774 e!3819145)))

(declare-fun res!2590125 () Bool)

(assert (=> d!1970914 (=> (not res!2590125) (not e!3819145))))

(assert (=> d!1970914 (= res!2590125 (is-Cons!64776 lt!2354107))))

(assert (=> d!1970914 (forall!15337 lt!2354107 lambda!344408)))

(assert (=> d!1970914 (= (generalisedConcat!1797 lt!2354107) lt!2354315)))

(declare-fun b!6280037 () Bool)

(assert (=> b!6280037 (= e!3819148 EmptyExpr!16200)))

(declare-fun b!6280038 () Bool)

(declare-fun e!3819144 () Bool)

(assert (=> b!6280038 (= e!3819147 e!3819144)))

(declare-fun c!1138772 () Bool)

(assert (=> b!6280038 (= c!1138772 (isEmpty!36820 (tail!11985 lt!2354107)))))

(declare-fun b!6280039 () Bool)

(assert (=> b!6280039 (= e!3819143 e!3819147)))

(declare-fun c!1138775 () Bool)

(assert (=> b!6280039 (= c!1138775 (isEmpty!36820 lt!2354107))))

(declare-fun b!6280040 () Bool)

(assert (=> b!6280040 (= e!3819144 (isConcat!1129 lt!2354315))))

(declare-fun b!6280041 () Bool)

(assert (=> b!6280041 (= e!3819146 (h!71224 lt!2354107))))

(declare-fun b!6280042 () Bool)

(assert (=> b!6280042 (= e!3819146 e!3819148)))

(declare-fun c!1138773 () Bool)

(assert (=> b!6280042 (= c!1138773 (is-Cons!64776 lt!2354107))))

(declare-fun b!6280043 () Bool)

(assert (=> b!6280043 (= e!3819144 (= lt!2354315 (head!12900 lt!2354107)))))

(assert (= (and d!1970914 res!2590125) b!6280036))

(assert (= (and d!1970914 c!1138774) b!6280041))

(assert (= (and d!1970914 (not c!1138774)) b!6280042))

(assert (= (and b!6280042 c!1138773) b!6280035))

(assert (= (and b!6280042 (not c!1138773)) b!6280037))

(assert (= (and d!1970914 res!2590126) b!6280039))

(assert (= (and b!6280039 c!1138775) b!6280034))

(assert (= (and b!6280039 (not c!1138775)) b!6280038))

(assert (= (and b!6280038 c!1138772) b!6280043))

(assert (= (and b!6280038 (not c!1138772)) b!6280040))

(declare-fun m!7101130 () Bool)

(assert (=> b!6280039 m!7101130))

(declare-fun m!7101132 () Bool)

(assert (=> b!6280038 m!7101132))

(assert (=> b!6280038 m!7101132))

(declare-fun m!7101134 () Bool)

(assert (=> b!6280038 m!7101134))

(declare-fun m!7101136 () Bool)

(assert (=> b!6280035 m!7101136))

(declare-fun m!7101138 () Bool)

(assert (=> d!1970914 m!7101138))

(declare-fun m!7101140 () Bool)

(assert (=> d!1970914 m!7101140))

(declare-fun m!7101142 () Bool)

(assert (=> b!6280036 m!7101142))

(declare-fun m!7101144 () Bool)

(assert (=> b!6280043 m!7101144))

(declare-fun m!7101146 () Bool)

(assert (=> b!6280040 m!7101146))

(declare-fun m!7101148 () Bool)

(assert (=> b!6280034 m!7101148))

(assert (=> b!6279543 d!1970914))

(declare-fun d!1970920 () Bool)

(assert (=> d!1970920 (= (Exists!3270 lambda!344340) (choose!46617 lambda!344340))))

(declare-fun bs!1568670 () Bool)

(assert (= bs!1568670 d!1970920))

(declare-fun m!7101150 () Bool)

(assert (=> bs!1568670 m!7101150))

(assert (=> b!6279543 d!1970920))

(declare-fun b!6280046 () Bool)

(declare-fun res!2590127 () Bool)

(declare-fun e!3819151 () Bool)

(assert (=> b!6280046 (=> (not res!2590127) (not e!3819151))))

(declare-fun lt!2354316 () Option!16091)

(assert (=> b!6280046 (= res!2590127 (matchR!8383 (regOne!32912 (regOne!32912 r!7292)) (_1!36482 (get!22389 lt!2354316))))))

(declare-fun b!6280047 () Bool)

(declare-fun e!3819152 () Option!16091)

(assert (=> b!6280047 (= e!3819152 (Some!16090 (tuple2!66359 Nil!64775 s!2326)))))

(declare-fun b!6280048 () Bool)

(declare-fun e!3819153 () Option!16091)

(assert (=> b!6280048 (= e!3819153 None!16090)))

(declare-fun b!6280049 () Bool)

(assert (=> b!6280049 (= e!3819151 (= (++!14273 (_1!36482 (get!22389 lt!2354316)) (_2!36482 (get!22389 lt!2354316))) s!2326))))

(declare-fun b!6280050 () Bool)

(assert (=> b!6280050 (= e!3819152 e!3819153)))

(declare-fun c!1138778 () Bool)

(assert (=> b!6280050 (= c!1138778 (is-Nil!64775 s!2326))))

(declare-fun b!6280051 () Bool)

(declare-fun res!2590129 () Bool)

(assert (=> b!6280051 (=> (not res!2590129) (not e!3819151))))

(assert (=> b!6280051 (= res!2590129 (matchR!8383 lt!2354114 (_2!36482 (get!22389 lt!2354316))))))

(declare-fun d!1970922 () Bool)

(declare-fun e!3819150 () Bool)

(assert (=> d!1970922 e!3819150))

(declare-fun res!2590130 () Bool)

(assert (=> d!1970922 (=> res!2590130 e!3819150)))

(assert (=> d!1970922 (= res!2590130 e!3819151)))

(declare-fun res!2590131 () Bool)

(assert (=> d!1970922 (=> (not res!2590131) (not e!3819151))))

(assert (=> d!1970922 (= res!2590131 (isDefined!12794 lt!2354316))))

(assert (=> d!1970922 (= lt!2354316 e!3819152)))

(declare-fun c!1138777 () Bool)

(declare-fun e!3819154 () Bool)

(assert (=> d!1970922 (= c!1138777 e!3819154)))

(declare-fun res!2590128 () Bool)

(assert (=> d!1970922 (=> (not res!2590128) (not e!3819154))))

(assert (=> d!1970922 (= res!2590128 (matchR!8383 (regOne!32912 (regOne!32912 r!7292)) Nil!64775))))

(assert (=> d!1970922 (validRegex!7936 (regOne!32912 (regOne!32912 r!7292)))))

(assert (=> d!1970922 (= (findConcatSeparation!2505 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 Nil!64775 s!2326 s!2326) lt!2354316)))

(declare-fun b!6280052 () Bool)

(assert (=> b!6280052 (= e!3819154 (matchR!8383 lt!2354114 s!2326))))

(declare-fun b!6280053 () Bool)

(assert (=> b!6280053 (= e!3819150 (not (isDefined!12794 lt!2354316)))))

(declare-fun b!6280054 () Bool)

(declare-fun lt!2354317 () Unit!158131)

(declare-fun lt!2354318 () Unit!158131)

(assert (=> b!6280054 (= lt!2354317 lt!2354318)))

(assert (=> b!6280054 (= (++!14273 (++!14273 Nil!64775 (Cons!64775 (h!71223 s!2326) Nil!64775)) (t!378459 s!2326)) s!2326)))

(assert (=> b!6280054 (= lt!2354318 (lemmaMoveElementToOtherListKeepsConcatEq!2368 Nil!64775 (h!71223 s!2326) (t!378459 s!2326) s!2326))))

(assert (=> b!6280054 (= e!3819153 (findConcatSeparation!2505 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 (++!14273 Nil!64775 (Cons!64775 (h!71223 s!2326) Nil!64775)) (t!378459 s!2326) s!2326))))

(assert (= (and d!1970922 res!2590128) b!6280052))

(assert (= (and d!1970922 c!1138777) b!6280047))

(assert (= (and d!1970922 (not c!1138777)) b!6280050))

(assert (= (and b!6280050 c!1138778) b!6280048))

(assert (= (and b!6280050 (not c!1138778)) b!6280054))

(assert (= (and d!1970922 res!2590131) b!6280046))

(assert (= (and b!6280046 res!2590127) b!6280051))

(assert (= (and b!6280051 res!2590129) b!6280049))

(assert (= (and d!1970922 (not res!2590130)) b!6280053))

(assert (=> b!6280054 m!7100960))

(assert (=> b!6280054 m!7100960))

(assert (=> b!6280054 m!7100962))

(assert (=> b!6280054 m!7100964))

(assert (=> b!6280054 m!7100960))

(declare-fun m!7101152 () Bool)

(assert (=> b!6280054 m!7101152))

(assert (=> b!6280052 m!7100576))

(declare-fun m!7101154 () Bool)

(assert (=> d!1970922 m!7101154))

(declare-fun m!7101156 () Bool)

(assert (=> d!1970922 m!7101156))

(declare-fun m!7101158 () Bool)

(assert (=> d!1970922 m!7101158))

(assert (=> b!6280053 m!7101154))

(declare-fun m!7101160 () Bool)

(assert (=> b!6280051 m!7101160))

(declare-fun m!7101162 () Bool)

(assert (=> b!6280051 m!7101162))

(assert (=> b!6280049 m!7101160))

(declare-fun m!7101164 () Bool)

(assert (=> b!6280049 m!7101164))

(assert (=> b!6280046 m!7101160))

(declare-fun m!7101166 () Bool)

(assert (=> b!6280046 m!7101166))

(assert (=> b!6279543 d!1970922))

(declare-fun bs!1568671 () Bool)

(declare-fun d!1970924 () Bool)

(assert (= bs!1568671 (and d!1970924 b!6279543)))

(declare-fun lambda!344411 () Int)

(assert (=> bs!1568671 (= lambda!344411 lambda!344339)))

(declare-fun bs!1568672 () Bool)

(assert (= bs!1568672 (and d!1970924 b!6279527)))

(assert (=> bs!1568672 (not (= lambda!344411 lambda!344337))))

(declare-fun bs!1568673 () Bool)

(assert (= bs!1568673 (and d!1970924 b!6279761)))

(assert (=> bs!1568673 (not (= lambda!344411 lambda!344372))))

(declare-fun bs!1568674 () Bool)

(assert (= bs!1568674 (and d!1970924 b!6279765)))

(assert (=> bs!1568674 (not (= lambda!344411 lambda!344371))))

(declare-fun bs!1568675 () Bool)

(assert (= bs!1568675 (and d!1970924 d!1970858)))

(assert (=> bs!1568675 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344411 lambda!344398))))

(assert (=> bs!1568675 (not (= lambda!344411 lambda!344399))))

(declare-fun bs!1568676 () Bool)

(assert (= bs!1568676 (and d!1970924 d!1970856)))

(assert (=> bs!1568676 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344411 lambda!344393))))

(assert (=> bs!1568672 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344411 lambda!344336))))

(assert (=> bs!1568671 (not (= lambda!344411 lambda!344340))))

(assert (=> d!1970924 true))

(assert (=> d!1970924 true))

(assert (=> d!1970924 true))

(declare-fun lambda!344413 () Int)

(assert (=> bs!1568671 (not (= lambda!344413 lambda!344339))))

(assert (=> bs!1568672 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344413 lambda!344337))))

(assert (=> bs!1568673 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344413 lambda!344372))))

(assert (=> bs!1568674 (not (= lambda!344413 lambda!344371))))

(assert (=> bs!1568675 (not (= lambda!344413 lambda!344398))))

(assert (=> bs!1568675 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344413 lambda!344399))))

(declare-fun bs!1568678 () Bool)

(assert (= bs!1568678 d!1970924))

(assert (=> bs!1568678 (not (= lambda!344413 lambda!344411))))

(assert (=> bs!1568676 (not (= lambda!344413 lambda!344393))))

(assert (=> bs!1568672 (not (= lambda!344413 lambda!344336))))

(assert (=> bs!1568671 (= lambda!344413 lambda!344340)))

(assert (=> d!1970924 true))

(assert (=> d!1970924 true))

(assert (=> d!1970924 true))

(assert (=> d!1970924 (= (Exists!3270 lambda!344411) (Exists!3270 lambda!344413))))

(declare-fun lt!2354319 () Unit!158131)

(assert (=> d!1970924 (= lt!2354319 (choose!46619 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 s!2326))))

(assert (=> d!1970924 (validRegex!7936 (regOne!32912 (regOne!32912 r!7292)))))

(assert (=> d!1970924 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1807 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 s!2326) lt!2354319)))

(declare-fun m!7101170 () Bool)

(assert (=> bs!1568678 m!7101170))

(declare-fun m!7101172 () Bool)

(assert (=> bs!1568678 m!7101172))

(declare-fun m!7101174 () Bool)

(assert (=> bs!1568678 m!7101174))

(assert (=> bs!1568678 m!7101158))

(assert (=> b!6279543 d!1970924))

(declare-fun d!1970928 () Bool)

(assert (=> d!1970928 (= (isDefined!12794 (findConcatSeparation!2505 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 Nil!64775 s!2326 s!2326)) (not (isEmpty!36824 (findConcatSeparation!2505 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 Nil!64775 s!2326 s!2326))))))

(declare-fun bs!1568679 () Bool)

(assert (= bs!1568679 d!1970928))

(assert (=> bs!1568679 m!7100552))

(declare-fun m!7101176 () Bool)

(assert (=> bs!1568679 m!7101176))

(assert (=> b!6279543 d!1970928))

(declare-fun d!1970930 () Bool)

(assert (=> d!1970930 (= (matchR!8383 lt!2354114 s!2326) (matchZipper!2212 lt!2354112 s!2326))))

(declare-fun lt!2354324 () Unit!158131)

(declare-fun choose!46623 ((Set Context!11168) List!64901 Regex!16200 List!64899) Unit!158131)

(assert (=> d!1970930 (= lt!2354324 (choose!46623 lt!2354112 (Cons!64777 lt!2354116 Nil!64777) lt!2354114 s!2326))))

(assert (=> d!1970930 (validRegex!7936 lt!2354114)))

(assert (=> d!1970930 (= (theoremZipperRegexEquiv!770 lt!2354112 (Cons!64777 lt!2354116 Nil!64777) lt!2354114 s!2326) lt!2354324)))

(declare-fun bs!1568680 () Bool)

(assert (= bs!1568680 d!1970930))

(assert (=> bs!1568680 m!7100576))

(assert (=> bs!1568680 m!7100556))

(declare-fun m!7101178 () Bool)

(assert (=> bs!1568680 m!7101178))

(assert (=> bs!1568680 m!7100582))

(assert (=> b!6279543 d!1970930))

(declare-fun d!1970932 () Bool)

(assert (=> d!1970932 (= (Exists!3270 lambda!344339) (choose!46617 lambda!344339))))

(declare-fun bs!1568681 () Bool)

(assert (= bs!1568681 d!1970932))

(declare-fun m!7101180 () Bool)

(assert (=> bs!1568681 m!7101180))

(assert (=> b!6279543 d!1970932))

(declare-fun b!6280059 () Bool)

(declare-fun res!2590137 () Bool)

(declare-fun e!3819159 () Bool)

(assert (=> b!6280059 (=> res!2590137 e!3819159)))

(assert (=> b!6280059 (= res!2590137 (not (isEmpty!36823 (tail!11986 s!2326))))))

(declare-fun b!6280060 () Bool)

(declare-fun e!3819160 () Bool)

(assert (=> b!6280060 (= e!3819160 (matchR!8383 (derivativeStep!4909 lt!2354114 (head!12901 s!2326)) (tail!11986 s!2326)))))

(declare-fun b!6280061 () Bool)

(assert (=> b!6280061 (= e!3819160 (nullable!6193 lt!2354114))))

(declare-fun b!6280062 () Bool)

(declare-fun e!3819162 () Bool)

(declare-fun e!3819157 () Bool)

(assert (=> b!6280062 (= e!3819162 e!3819157)))

(declare-fun c!1138782 () Bool)

(assert (=> b!6280062 (= c!1138782 (is-EmptyLang!16200 lt!2354114))))

(declare-fun b!6280063 () Bool)

(declare-fun lt!2354325 () Bool)

(assert (=> b!6280063 (= e!3819157 (not lt!2354325))))

(declare-fun b!6280064 () Bool)

(declare-fun e!3819158 () Bool)

(declare-fun e!3819163 () Bool)

(assert (=> b!6280064 (= e!3819158 e!3819163)))

(declare-fun res!2590133 () Bool)

(assert (=> b!6280064 (=> (not res!2590133) (not e!3819163))))

(assert (=> b!6280064 (= res!2590133 (not lt!2354325))))

(declare-fun b!6280065 () Bool)

(declare-fun e!3819161 () Bool)

(assert (=> b!6280065 (= e!3819161 (= (head!12901 s!2326) (c!1138637 lt!2354114)))))

(declare-fun b!6280066 () Bool)

(assert (=> b!6280066 (= e!3819159 (not (= (head!12901 s!2326) (c!1138637 lt!2354114))))))

(declare-fun b!6280067 () Bool)

(assert (=> b!6280067 (= e!3819163 e!3819159)))

(declare-fun res!2590139 () Bool)

(assert (=> b!6280067 (=> res!2590139 e!3819159)))

(declare-fun call!531439 () Bool)

(assert (=> b!6280067 (= res!2590139 call!531439)))

(declare-fun b!6280068 () Bool)

(assert (=> b!6280068 (= e!3819162 (= lt!2354325 call!531439))))

(declare-fun b!6280069 () Bool)

(declare-fun res!2590135 () Bool)

(assert (=> b!6280069 (=> (not res!2590135) (not e!3819161))))

(assert (=> b!6280069 (= res!2590135 (isEmpty!36823 (tail!11986 s!2326)))))

(declare-fun b!6280071 () Bool)

(declare-fun res!2590136 () Bool)

(assert (=> b!6280071 (=> res!2590136 e!3819158)))

(assert (=> b!6280071 (= res!2590136 (not (is-ElementMatch!16200 lt!2354114)))))

(assert (=> b!6280071 (= e!3819157 e!3819158)))

(declare-fun bm!531434 () Bool)

(assert (=> bm!531434 (= call!531439 (isEmpty!36823 s!2326))))

(declare-fun b!6280072 () Bool)

(declare-fun res!2590132 () Bool)

(assert (=> b!6280072 (=> (not res!2590132) (not e!3819161))))

(assert (=> b!6280072 (= res!2590132 (not call!531439))))

(declare-fun d!1970934 () Bool)

(assert (=> d!1970934 e!3819162))

(declare-fun c!1138783 () Bool)

(assert (=> d!1970934 (= c!1138783 (is-EmptyExpr!16200 lt!2354114))))

(assert (=> d!1970934 (= lt!2354325 e!3819160)))

(declare-fun c!1138784 () Bool)

(assert (=> d!1970934 (= c!1138784 (isEmpty!36823 s!2326))))

(assert (=> d!1970934 (validRegex!7936 lt!2354114)))

(assert (=> d!1970934 (= (matchR!8383 lt!2354114 s!2326) lt!2354325)))

(declare-fun b!6280070 () Bool)

(declare-fun res!2590138 () Bool)

(assert (=> b!6280070 (=> res!2590138 e!3819158)))

(assert (=> b!6280070 (= res!2590138 e!3819161)))

(declare-fun res!2590134 () Bool)

(assert (=> b!6280070 (=> (not res!2590134) (not e!3819161))))

(assert (=> b!6280070 (= res!2590134 lt!2354325)))

(assert (= (and d!1970934 c!1138784) b!6280061))

(assert (= (and d!1970934 (not c!1138784)) b!6280060))

(assert (= (and d!1970934 c!1138783) b!6280068))

(assert (= (and d!1970934 (not c!1138783)) b!6280062))

(assert (= (and b!6280062 c!1138782) b!6280063))

(assert (= (and b!6280062 (not c!1138782)) b!6280071))

(assert (= (and b!6280071 (not res!2590136)) b!6280070))

(assert (= (and b!6280070 res!2590134) b!6280072))

(assert (= (and b!6280072 res!2590132) b!6280069))

(assert (= (and b!6280069 res!2590135) b!6280065))

(assert (= (and b!6280070 (not res!2590138)) b!6280064))

(assert (= (and b!6280064 res!2590133) b!6280067))

(assert (= (and b!6280067 (not res!2590139)) b!6280059))

(assert (= (and b!6280059 (not res!2590137)) b!6280066))

(assert (= (or b!6280068 b!6280067 b!6280072) bm!531434))

(assert (=> bm!531434 m!7100864))

(assert (=> b!6280060 m!7100868))

(assert (=> b!6280060 m!7100868))

(declare-fun m!7101182 () Bool)

(assert (=> b!6280060 m!7101182))

(assert (=> b!6280060 m!7100872))

(assert (=> b!6280060 m!7101182))

(assert (=> b!6280060 m!7100872))

(declare-fun m!7101184 () Bool)

(assert (=> b!6280060 m!7101184))

(assert (=> b!6280066 m!7100868))

(assert (=> b!6280065 m!7100868))

(declare-fun m!7101186 () Bool)

(assert (=> b!6280061 m!7101186))

(assert (=> b!6280059 m!7100872))

(assert (=> b!6280059 m!7100872))

(assert (=> b!6280059 m!7100878))

(assert (=> b!6280069 m!7100872))

(assert (=> b!6280069 m!7100872))

(assert (=> b!6280069 m!7100878))

(assert (=> d!1970934 m!7100864))

(assert (=> d!1970934 m!7100582))

(assert (=> b!6279543 d!1970934))

(declare-fun d!1970936 () Bool)

(declare-fun c!1138786 () Bool)

(assert (=> d!1970936 (= c!1138786 (isEmpty!36823 s!2326))))

(declare-fun e!3819165 () Bool)

(assert (=> d!1970936 (= (matchZipper!2212 lt!2354112 s!2326) e!3819165)))

(declare-fun b!6280075 () Bool)

(assert (=> b!6280075 (= e!3819165 (nullableZipper!1970 lt!2354112))))

(declare-fun b!6280076 () Bool)

(assert (=> b!6280076 (= e!3819165 (matchZipper!2212 (derivationStepZipper!2166 lt!2354112 (head!12901 s!2326)) (tail!11986 s!2326)))))

(assert (= (and d!1970936 c!1138786) b!6280075))

(assert (= (and d!1970936 (not c!1138786)) b!6280076))

(assert (=> d!1970936 m!7100864))

(declare-fun m!7101188 () Bool)

(assert (=> b!6280075 m!7101188))

(assert (=> b!6280076 m!7100868))

(assert (=> b!6280076 m!7100868))

(declare-fun m!7101192 () Bool)

(assert (=> b!6280076 m!7101192))

(assert (=> b!6280076 m!7100872))

(assert (=> b!6280076 m!7101192))

(assert (=> b!6280076 m!7100872))

(declare-fun m!7101196 () Bool)

(assert (=> b!6280076 m!7101196))

(assert (=> b!6279543 d!1970936))

(declare-fun b!6280077 () Bool)

(declare-fun res!2590145 () Bool)

(declare-fun e!3819168 () Bool)

(assert (=> b!6280077 (=> res!2590145 e!3819168)))

(assert (=> b!6280077 (= res!2590145 (not (isEmpty!36823 (tail!11986 s!2326))))))

(declare-fun b!6280078 () Bool)

(declare-fun e!3819169 () Bool)

(assert (=> b!6280078 (= e!3819169 (matchR!8383 (derivativeStep!4909 lt!2354096 (head!12901 s!2326)) (tail!11986 s!2326)))))

(declare-fun b!6280079 () Bool)

(assert (=> b!6280079 (= e!3819169 (nullable!6193 lt!2354096))))

(declare-fun b!6280080 () Bool)

(declare-fun e!3819171 () Bool)

(declare-fun e!3819166 () Bool)

(assert (=> b!6280080 (= e!3819171 e!3819166)))

(declare-fun c!1138787 () Bool)

(assert (=> b!6280080 (= c!1138787 (is-EmptyLang!16200 lt!2354096))))

(declare-fun b!6280081 () Bool)

(declare-fun lt!2354327 () Bool)

(assert (=> b!6280081 (= e!3819166 (not lt!2354327))))

(declare-fun b!6280082 () Bool)

(declare-fun e!3819167 () Bool)

(declare-fun e!3819172 () Bool)

(assert (=> b!6280082 (= e!3819167 e!3819172)))

(declare-fun res!2590141 () Bool)

(assert (=> b!6280082 (=> (not res!2590141) (not e!3819172))))

(assert (=> b!6280082 (= res!2590141 (not lt!2354327))))

(declare-fun b!6280083 () Bool)

(declare-fun e!3819170 () Bool)

(assert (=> b!6280083 (= e!3819170 (= (head!12901 s!2326) (c!1138637 lt!2354096)))))

(declare-fun b!6280084 () Bool)

(assert (=> b!6280084 (= e!3819168 (not (= (head!12901 s!2326) (c!1138637 lt!2354096))))))

(declare-fun b!6280085 () Bool)

(assert (=> b!6280085 (= e!3819172 e!3819168)))

(declare-fun res!2590147 () Bool)

(assert (=> b!6280085 (=> res!2590147 e!3819168)))

(declare-fun call!531440 () Bool)

(assert (=> b!6280085 (= res!2590147 call!531440)))

(declare-fun b!6280086 () Bool)

(assert (=> b!6280086 (= e!3819171 (= lt!2354327 call!531440))))

(declare-fun b!6280087 () Bool)

(declare-fun res!2590143 () Bool)

(assert (=> b!6280087 (=> (not res!2590143) (not e!3819170))))

(assert (=> b!6280087 (= res!2590143 (isEmpty!36823 (tail!11986 s!2326)))))

(declare-fun b!6280089 () Bool)

(declare-fun res!2590144 () Bool)

(assert (=> b!6280089 (=> res!2590144 e!3819167)))

(assert (=> b!6280089 (= res!2590144 (not (is-ElementMatch!16200 lt!2354096)))))

(assert (=> b!6280089 (= e!3819166 e!3819167)))

(declare-fun bm!531435 () Bool)

(assert (=> bm!531435 (= call!531440 (isEmpty!36823 s!2326))))

(declare-fun b!6280090 () Bool)

(declare-fun res!2590140 () Bool)

(assert (=> b!6280090 (=> (not res!2590140) (not e!3819170))))

(assert (=> b!6280090 (= res!2590140 (not call!531440))))

(declare-fun d!1970938 () Bool)

(assert (=> d!1970938 e!3819171))

(declare-fun c!1138788 () Bool)

(assert (=> d!1970938 (= c!1138788 (is-EmptyExpr!16200 lt!2354096))))

(assert (=> d!1970938 (= lt!2354327 e!3819169)))

(declare-fun c!1138789 () Bool)

(assert (=> d!1970938 (= c!1138789 (isEmpty!36823 s!2326))))

(assert (=> d!1970938 (validRegex!7936 lt!2354096)))

(assert (=> d!1970938 (= (matchR!8383 lt!2354096 s!2326) lt!2354327)))

(declare-fun b!6280088 () Bool)

(declare-fun res!2590146 () Bool)

(assert (=> b!6280088 (=> res!2590146 e!3819167)))

(assert (=> b!6280088 (= res!2590146 e!3819170)))

(declare-fun res!2590142 () Bool)

(assert (=> b!6280088 (=> (not res!2590142) (not e!3819170))))

(assert (=> b!6280088 (= res!2590142 lt!2354327)))

(assert (= (and d!1970938 c!1138789) b!6280079))

(assert (= (and d!1970938 (not c!1138789)) b!6280078))

(assert (= (and d!1970938 c!1138788) b!6280086))

(assert (= (and d!1970938 (not c!1138788)) b!6280080))

(assert (= (and b!6280080 c!1138787) b!6280081))

(assert (= (and b!6280080 (not c!1138787)) b!6280089))

(assert (= (and b!6280089 (not res!2590144)) b!6280088))

(assert (= (and b!6280088 res!2590142) b!6280090))

(assert (= (and b!6280090 res!2590140) b!6280087))

(assert (= (and b!6280087 res!2590143) b!6280083))

(assert (= (and b!6280088 (not res!2590146)) b!6280082))

(assert (= (and b!6280082 res!2590141) b!6280085))

(assert (= (and b!6280085 (not res!2590147)) b!6280077))

(assert (= (and b!6280077 (not res!2590145)) b!6280084))

(assert (= (or b!6280086 b!6280085 b!6280090) bm!531435))

(assert (=> bm!531435 m!7100864))

(assert (=> b!6280078 m!7100868))

(assert (=> b!6280078 m!7100868))

(declare-fun m!7101202 () Bool)

(assert (=> b!6280078 m!7101202))

(assert (=> b!6280078 m!7100872))

(assert (=> b!6280078 m!7101202))

(assert (=> b!6280078 m!7100872))

(declare-fun m!7101204 () Bool)

(assert (=> b!6280078 m!7101204))

(assert (=> b!6280084 m!7100868))

(assert (=> b!6280083 m!7100868))

(declare-fun m!7101206 () Bool)

(assert (=> b!6280079 m!7101206))

(assert (=> b!6280077 m!7100872))

(assert (=> b!6280077 m!7100872))

(assert (=> b!6280077 m!7100878))

(assert (=> b!6280087 m!7100872))

(assert (=> b!6280087 m!7100872))

(assert (=> b!6280087 m!7100878))

(assert (=> d!1970938 m!7100864))

(declare-fun m!7101208 () Bool)

(assert (=> d!1970938 m!7101208))

(assert (=> b!6279543 d!1970938))

(declare-fun bs!1568682 () Bool)

(declare-fun d!1970944 () Bool)

(assert (= bs!1568682 (and d!1970944 d!1970924)))

(declare-fun lambda!344414 () Int)

(assert (=> bs!1568682 (not (= lambda!344414 lambda!344413))))

(declare-fun bs!1568683 () Bool)

(assert (= bs!1568683 (and d!1970944 b!6279543)))

(assert (=> bs!1568683 (= lambda!344414 lambda!344339)))

(declare-fun bs!1568684 () Bool)

(assert (= bs!1568684 (and d!1970944 b!6279527)))

(assert (=> bs!1568684 (not (= lambda!344414 lambda!344337))))

(declare-fun bs!1568685 () Bool)

(assert (= bs!1568685 (and d!1970944 b!6279761)))

(assert (=> bs!1568685 (not (= lambda!344414 lambda!344372))))

(declare-fun bs!1568686 () Bool)

(assert (= bs!1568686 (and d!1970944 b!6279765)))

(assert (=> bs!1568686 (not (= lambda!344414 lambda!344371))))

(declare-fun bs!1568687 () Bool)

(assert (= bs!1568687 (and d!1970944 d!1970858)))

(assert (=> bs!1568687 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344414 lambda!344398))))

(assert (=> bs!1568687 (not (= lambda!344414 lambda!344399))))

(assert (=> bs!1568682 (= lambda!344414 lambda!344411)))

(declare-fun bs!1568688 () Bool)

(assert (= bs!1568688 (and d!1970944 d!1970856)))

(assert (=> bs!1568688 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344414 lambda!344393))))

(assert (=> bs!1568684 (= (and (= (regOne!32912 (regOne!32912 r!7292)) (regOne!32912 r!7292)) (= lt!2354114 (regTwo!32912 r!7292))) (= lambda!344414 lambda!344336))))

(assert (=> bs!1568683 (not (= lambda!344414 lambda!344340))))

(assert (=> d!1970944 true))

(assert (=> d!1970944 true))

(assert (=> d!1970944 true))

(assert (=> d!1970944 (= (isDefined!12794 (findConcatSeparation!2505 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 Nil!64775 s!2326 s!2326)) (Exists!3270 lambda!344414))))

(declare-fun lt!2354329 () Unit!158131)

(assert (=> d!1970944 (= lt!2354329 (choose!46618 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 s!2326))))

(assert (=> d!1970944 (validRegex!7936 (regOne!32912 (regOne!32912 r!7292)))))

(assert (=> d!1970944 (= (lemmaFindConcatSeparationEquivalentToExists!2269 (regOne!32912 (regOne!32912 r!7292)) lt!2354114 s!2326) lt!2354329)))

(declare-fun bs!1568689 () Bool)

(assert (= bs!1568689 d!1970944))

(declare-fun m!7101216 () Bool)

(assert (=> bs!1568689 m!7101216))

(declare-fun m!7101218 () Bool)

(assert (=> bs!1568689 m!7101218))

(assert (=> bs!1568689 m!7100552))

(assert (=> bs!1568689 m!7100554))

(assert (=> bs!1568689 m!7100552))

(assert (=> bs!1568689 m!7101158))

(assert (=> b!6279543 d!1970944))

(declare-fun bs!1568690 () Bool)

(declare-fun b!6280102 () Bool)

(assert (= bs!1568690 (and b!6280102 d!1970924)))

(declare-fun lambda!344415 () Int)

(assert (=> bs!1568690 (not (= lambda!344415 lambda!344413))))

(declare-fun bs!1568691 () Bool)

(assert (= bs!1568691 (and b!6280102 b!6279527)))

(assert (=> bs!1568691 (not (= lambda!344415 lambda!344337))))

(declare-fun bs!1568692 () Bool)

(assert (= bs!1568692 (and b!6280102 b!6279761)))

(assert (=> bs!1568692 (not (= lambda!344415 lambda!344372))))

(declare-fun bs!1568693 () Bool)

(assert (= bs!1568693 (and b!6280102 b!6279765)))

(assert (=> bs!1568693 (= (and (= (reg!16529 lt!2354096) (reg!16529 r!7292)) (= lt!2354096 r!7292)) (= lambda!344415 lambda!344371))))

(declare-fun bs!1568694 () Bool)

(assert (= bs!1568694 (and b!6280102 d!1970858)))

(assert (=> bs!1568694 (not (= lambda!344415 lambda!344398))))

(assert (=> bs!1568694 (not (= lambda!344415 lambda!344399))))

(assert (=> bs!1568690 (not (= lambda!344415 lambda!344411))))

(declare-fun bs!1568695 () Bool)

(assert (= bs!1568695 (and b!6280102 d!1970856)))

(assert (=> bs!1568695 (not (= lambda!344415 lambda!344393))))

(declare-fun bs!1568696 () Bool)

(assert (= bs!1568696 (and b!6280102 b!6279543)))

(assert (=> bs!1568696 (not (= lambda!344415 lambda!344339))))

(declare-fun bs!1568697 () Bool)

(assert (= bs!1568697 (and b!6280102 d!1970944)))

(assert (=> bs!1568697 (not (= lambda!344415 lambda!344414))))

(assert (=> bs!1568691 (not (= lambda!344415 lambda!344336))))

(assert (=> bs!1568696 (not (= lambda!344415 lambda!344340))))

(assert (=> b!6280102 true))

(assert (=> b!6280102 true))

(declare-fun bs!1568698 () Bool)

(declare-fun b!6280098 () Bool)

(assert (= bs!1568698 (and b!6280098 d!1970924)))

(declare-fun lambda!344416 () Int)

(assert (=> bs!1568698 (= (and (= (regOne!32912 lt!2354096) (regOne!32912 (regOne!32912 r!7292))) (= (regTwo!32912 lt!2354096) lt!2354114)) (= lambda!344416 lambda!344413))))

(declare-fun bs!1568699 () Bool)

(assert (= bs!1568699 (and b!6280098 b!6280102)))

(assert (=> bs!1568699 (not (= lambda!344416 lambda!344415))))

(declare-fun bs!1568700 () Bool)

(assert (= bs!1568700 (and b!6280098 b!6279527)))

(assert (=> bs!1568700 (= (and (= (regOne!32912 lt!2354096) (regOne!32912 r!7292)) (= (regTwo!32912 lt!2354096) (regTwo!32912 r!7292))) (= lambda!344416 lambda!344337))))

(declare-fun bs!1568701 () Bool)

(assert (= bs!1568701 (and b!6280098 b!6279761)))

(assert (=> bs!1568701 (= (and (= (regOne!32912 lt!2354096) (regOne!32912 r!7292)) (= (regTwo!32912 lt!2354096) (regTwo!32912 r!7292))) (= lambda!344416 lambda!344372))))

(declare-fun bs!1568702 () Bool)

(assert (= bs!1568702 (and b!6280098 b!6279765)))

(assert (=> bs!1568702 (not (= lambda!344416 lambda!344371))))

(declare-fun bs!1568703 () Bool)

(assert (= bs!1568703 (and b!6280098 d!1970858)))

(assert (=> bs!1568703 (not (= lambda!344416 lambda!344398))))

(assert (=> bs!1568703 (= (and (= (regOne!32912 lt!2354096) (regOne!32912 r!7292)) (= (regTwo!32912 lt!2354096) (regTwo!32912 r!7292))) (= lambda!344416 lambda!344399))))

(assert (=> bs!1568698 (not (= lambda!344416 lambda!344411))))

(declare-fun bs!1568704 () Bool)

(assert (= bs!1568704 (and b!6280098 d!1970856)))

(assert (=> bs!1568704 (not (= lambda!344416 lambda!344393))))

(declare-fun bs!1568705 () Bool)

(assert (= bs!1568705 (and b!6280098 b!6279543)))

(assert (=> bs!1568705 (not (= lambda!344416 lambda!344339))))

(declare-fun bs!1568706 () Bool)

(assert (= bs!1568706 (and b!6280098 d!1970944)))

(assert (=> bs!1568706 (not (= lambda!344416 lambda!344414))))

(assert (=> bs!1568700 (not (= lambda!344416 lambda!344336))))

(assert (=> bs!1568705 (= (and (= (regOne!32912 lt!2354096) (regOne!32912 (regOne!32912 r!7292))) (= (regTwo!32912 lt!2354096) lt!2354114)) (= lambda!344416 lambda!344340))))

(assert (=> b!6280098 true))

(assert (=> b!6280098 true))

(declare-fun b!6280095 () Bool)

(declare-fun e!3819176 () Bool)

(declare-fun e!3819177 () Bool)

(assert (=> b!6280095 (= e!3819176 e!3819177)))

(declare-fun res!2590150 () Bool)

(assert (=> b!6280095 (= res!2590150 (not (is-EmptyLang!16200 lt!2354096)))))

(assert (=> b!6280095 (=> (not res!2590150) (not e!3819177))))

(declare-fun b!6280096 () Bool)

(declare-fun e!3819181 () Bool)

(assert (=> b!6280096 (= e!3819181 (matchRSpec!3301 (regTwo!32913 lt!2354096) s!2326))))

(declare-fun b!6280097 () Bool)

(declare-fun c!1138793 () Bool)

(assert (=> b!6280097 (= c!1138793 (is-ElementMatch!16200 lt!2354096))))

(declare-fun e!3819178 () Bool)

(assert (=> b!6280097 (= e!3819177 e!3819178)))

(declare-fun e!3819175 () Bool)

(declare-fun call!531441 () Bool)

(assert (=> b!6280098 (= e!3819175 call!531441)))

(declare-fun d!1970950 () Bool)

(declare-fun c!1138795 () Bool)

(assert (=> d!1970950 (= c!1138795 (is-EmptyExpr!16200 lt!2354096))))

(assert (=> d!1970950 (= (matchRSpec!3301 lt!2354096 s!2326) e!3819176)))

(declare-fun c!1138794 () Bool)

(declare-fun bm!531436 () Bool)

(assert (=> bm!531436 (= call!531441 (Exists!3270 (ite c!1138794 lambda!344415 lambda!344416)))))

(declare-fun bm!531437 () Bool)

(declare-fun call!531442 () Bool)

(assert (=> bm!531437 (= call!531442 (isEmpty!36823 s!2326))))

(declare-fun b!6280099 () Bool)

(declare-fun c!1138792 () Bool)

(assert (=> b!6280099 (= c!1138792 (is-Union!16200 lt!2354096))))

(declare-fun e!3819179 () Bool)

(assert (=> b!6280099 (= e!3819178 e!3819179)))

(declare-fun b!6280100 () Bool)

(assert (=> b!6280100 (= e!3819176 call!531442)))

(declare-fun b!6280101 () Bool)

(assert (=> b!6280101 (= e!3819179 e!3819181)))

(declare-fun res!2590148 () Bool)

(assert (=> b!6280101 (= res!2590148 (matchRSpec!3301 (regOne!32913 lt!2354096) s!2326))))

(assert (=> b!6280101 (=> res!2590148 e!3819181)))

(declare-fun e!3819180 () Bool)

(assert (=> b!6280102 (= e!3819180 call!531441)))

(declare-fun b!6280103 () Bool)

(assert (=> b!6280103 (= e!3819178 (= s!2326 (Cons!64775 (c!1138637 lt!2354096) Nil!64775)))))

(declare-fun b!6280104 () Bool)

(assert (=> b!6280104 (= e!3819179 e!3819175)))

(assert (=> b!6280104 (= c!1138794 (is-Star!16200 lt!2354096))))

(declare-fun b!6280105 () Bool)

(declare-fun res!2590149 () Bool)

(assert (=> b!6280105 (=> res!2590149 e!3819180)))

(assert (=> b!6280105 (= res!2590149 call!531442)))

(assert (=> b!6280105 (= e!3819175 e!3819180)))

(assert (= (and d!1970950 c!1138795) b!6280100))

(assert (= (and d!1970950 (not c!1138795)) b!6280095))

(assert (= (and b!6280095 res!2590150) b!6280097))

(assert (= (and b!6280097 c!1138793) b!6280103))

(assert (= (and b!6280097 (not c!1138793)) b!6280099))

(assert (= (and b!6280099 c!1138792) b!6280101))

(assert (= (and b!6280099 (not c!1138792)) b!6280104))

(assert (= (and b!6280101 (not res!2590148)) b!6280096))

(assert (= (and b!6280104 c!1138794) b!6280105))

(assert (= (and b!6280104 (not c!1138794)) b!6280098))

(assert (= (and b!6280105 (not res!2590149)) b!6280102))

(assert (= (or b!6280102 b!6280098) bm!531436))

(assert (= (or b!6280100 b!6280105) bm!531437))

(declare-fun m!7101220 () Bool)

(assert (=> b!6280096 m!7101220))

(declare-fun m!7101222 () Bool)

(assert (=> bm!531436 m!7101222))

(assert (=> bm!531437 m!7100864))

(declare-fun m!7101224 () Bool)

(assert (=> b!6280101 m!7101224))

(assert (=> b!6279543 d!1970950))

(declare-fun d!1970952 () Bool)

(assert (=> d!1970952 (= (matchR!8383 lt!2354096 s!2326) (matchRSpec!3301 lt!2354096 s!2326))))

(declare-fun lt!2354330 () Unit!158131)

(assert (=> d!1970952 (= lt!2354330 (choose!46616 lt!2354096 s!2326))))

(assert (=> d!1970952 (validRegex!7936 lt!2354096)))

(assert (=> d!1970952 (= (mainMatchTheorem!3301 lt!2354096 s!2326) lt!2354330)))

(declare-fun bs!1568707 () Bool)

(assert (= bs!1568707 d!1970952))

(assert (=> bs!1568707 m!7100584))

(assert (=> bs!1568707 m!7100572))

(declare-fun m!7101226 () Bool)

(assert (=> bs!1568707 m!7101226))

(assert (=> bs!1568707 m!7101208))

(assert (=> b!6279543 d!1970952))

(declare-fun b!6280139 () Bool)

(declare-fun e!3819206 () Bool)

(declare-fun call!531452 () Bool)

(assert (=> b!6280139 (= e!3819206 call!531452)))

(declare-fun b!6280140 () Bool)

(declare-fun res!2590167 () Bool)

(declare-fun e!3819211 () Bool)

(assert (=> b!6280140 (=> res!2590167 e!3819211)))

(assert (=> b!6280140 (= res!2590167 (not (is-Concat!25045 lt!2354114)))))

(declare-fun e!3819208 () Bool)

(assert (=> b!6280140 (= e!3819208 e!3819211)))

(declare-fun b!6280141 () Bool)

(declare-fun e!3819209 () Bool)

(declare-fun e!3819210 () Bool)

(assert (=> b!6280141 (= e!3819209 e!3819210)))

(declare-fun c!1138806 () Bool)

(assert (=> b!6280141 (= c!1138806 (is-Star!16200 lt!2354114))))

(declare-fun b!6280142 () Bool)

(declare-fun e!3819207 () Bool)

(assert (=> b!6280142 (= e!3819211 e!3819207)))

(declare-fun res!2590166 () Bool)

(assert (=> b!6280142 (=> (not res!2590166) (not e!3819207))))

(declare-fun call!531453 () Bool)

(assert (=> b!6280142 (= res!2590166 call!531453)))

(declare-fun d!1970954 () Bool)

(declare-fun res!2590168 () Bool)

(assert (=> d!1970954 (=> res!2590168 e!3819209)))

(assert (=> d!1970954 (= res!2590168 (is-ElementMatch!16200 lt!2354114))))

(assert (=> d!1970954 (= (validRegex!7936 lt!2354114) e!3819209)))

(declare-fun b!6280143 () Bool)

(assert (=> b!6280143 (= e!3819210 e!3819208)))

(declare-fun c!1138807 () Bool)

(assert (=> b!6280143 (= c!1138807 (is-Union!16200 lt!2354114))))

(declare-fun b!6280144 () Bool)

(declare-fun res!2590164 () Bool)

(declare-fun e!3819205 () Bool)

(assert (=> b!6280144 (=> (not res!2590164) (not e!3819205))))

(assert (=> b!6280144 (= res!2590164 call!531453)))

(assert (=> b!6280144 (= e!3819208 e!3819205)))

(declare-fun b!6280145 () Bool)

(declare-fun call!531454 () Bool)

(assert (=> b!6280145 (= e!3819207 call!531454)))

(declare-fun bm!531447 () Bool)

(assert (=> bm!531447 (= call!531454 call!531452)))

(declare-fun b!6280146 () Bool)

(assert (=> b!6280146 (= e!3819210 e!3819206)))

(declare-fun res!2590165 () Bool)

(assert (=> b!6280146 (= res!2590165 (not (nullable!6193 (reg!16529 lt!2354114))))))

(assert (=> b!6280146 (=> (not res!2590165) (not e!3819206))))

(declare-fun bm!531448 () Bool)

(assert (=> bm!531448 (= call!531452 (validRegex!7936 (ite c!1138806 (reg!16529 lt!2354114) (ite c!1138807 (regTwo!32913 lt!2354114) (regTwo!32912 lt!2354114)))))))

(declare-fun b!6280147 () Bool)

(assert (=> b!6280147 (= e!3819205 call!531454)))

(declare-fun bm!531449 () Bool)

(assert (=> bm!531449 (= call!531453 (validRegex!7936 (ite c!1138807 (regOne!32913 lt!2354114) (regOne!32912 lt!2354114))))))

(assert (= (and d!1970954 (not res!2590168)) b!6280141))

(assert (= (and b!6280141 c!1138806) b!6280146))

(assert (= (and b!6280141 (not c!1138806)) b!6280143))

(assert (= (and b!6280146 res!2590165) b!6280139))

(assert (= (and b!6280143 c!1138807) b!6280144))

(assert (= (and b!6280143 (not c!1138807)) b!6280140))

(assert (= (and b!6280144 res!2590164) b!6280147))

(assert (= (and b!6280140 (not res!2590167)) b!6280142))

(assert (= (and b!6280142 res!2590166) b!6280145))

(assert (= (or b!6280147 b!6280145) bm!531447))

(assert (= (or b!6280144 b!6280142) bm!531449))

(assert (= (or b!6280139 bm!531447) bm!531448))

(declare-fun m!7101238 () Bool)

(assert (=> b!6280146 m!7101238))

(declare-fun m!7101240 () Bool)

(assert (=> bm!531448 m!7101240))

(declare-fun m!7101244 () Bool)

(assert (=> bm!531449 m!7101244))

(assert (=> b!6279543 d!1970954))

(declare-fun d!1970958 () Bool)

(assert (=> d!1970958 (= (matchR!8383 lt!2354096 s!2326) (matchZipper!2212 lt!2354119 s!2326))))

(declare-fun lt!2354331 () Unit!158131)

(assert (=> d!1970958 (= lt!2354331 (choose!46623 lt!2354119 lt!2354097 lt!2354096 s!2326))))

(assert (=> d!1970958 (validRegex!7936 lt!2354096)))

(assert (=> d!1970958 (= (theoremZipperRegexEquiv!770 lt!2354119 lt!2354097 lt!2354096 s!2326) lt!2354331)))

(declare-fun bs!1568708 () Bool)

(assert (= bs!1568708 d!1970958))

(assert (=> bs!1568708 m!7100584))

(assert (=> bs!1568708 m!7100560))

(declare-fun m!7101246 () Bool)

(assert (=> bs!1568708 m!7101246))

(assert (=> bs!1568708 m!7101208))

(assert (=> b!6279543 d!1970958))

(declare-fun d!1970962 () Bool)

(declare-fun c!1138809 () Bool)

(assert (=> d!1970962 (= c!1138809 (isEmpty!36823 s!2326))))

(declare-fun e!3819213 () Bool)

(assert (=> d!1970962 (= (matchZipper!2212 lt!2354119 s!2326) e!3819213)))

(declare-fun b!6280150 () Bool)

(assert (=> b!6280150 (= e!3819213 (nullableZipper!1970 lt!2354119))))

(declare-fun b!6280151 () Bool)

(assert (=> b!6280151 (= e!3819213 (matchZipper!2212 (derivationStepZipper!2166 lt!2354119 (head!12901 s!2326)) (tail!11986 s!2326)))))

(assert (= (and d!1970962 c!1138809) b!6280150))

(assert (= (and d!1970962 (not c!1138809)) b!6280151))

(assert (=> d!1970962 m!7100864))

(declare-fun m!7101248 () Bool)

(assert (=> b!6280150 m!7101248))

(assert (=> b!6280151 m!7100868))

(assert (=> b!6280151 m!7100868))

(declare-fun m!7101250 () Bool)

(assert (=> b!6280151 m!7101250))

(assert (=> b!6280151 m!7100872))

(assert (=> b!6280151 m!7101250))

(assert (=> b!6280151 m!7100872))

(declare-fun m!7101252 () Bool)

(assert (=> b!6280151 m!7101252))

(assert (=> b!6279543 d!1970962))

(declare-fun d!1970964 () Bool)

(declare-fun c!1138810 () Bool)

(assert (=> d!1970964 (= c!1138810 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819214 () Bool)

(assert (=> d!1970964 (= (matchZipper!2212 lt!2354120 (t!378459 s!2326)) e!3819214)))

(declare-fun b!6280152 () Bool)

(assert (=> b!6280152 (= e!3819214 (nullableZipper!1970 lt!2354120))))

(declare-fun b!6280153 () Bool)

(assert (=> b!6280153 (= e!3819214 (matchZipper!2212 (derivationStepZipper!2166 lt!2354120 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970964 c!1138810) b!6280152))

(assert (= (and d!1970964 (not c!1138810)) b!6280153))

(assert (=> d!1970964 m!7100882))

(declare-fun m!7101254 () Bool)

(assert (=> b!6280152 m!7101254))

(assert (=> b!6280153 m!7100886))

(assert (=> b!6280153 m!7100886))

(declare-fun m!7101256 () Bool)

(assert (=> b!6280153 m!7101256))

(assert (=> b!6280153 m!7100890))

(assert (=> b!6280153 m!7101256))

(assert (=> b!6280153 m!7100890))

(declare-fun m!7101258 () Bool)

(assert (=> b!6280153 m!7101258))

(assert (=> b!6279544 d!1970964))

(declare-fun e!3819215 () Bool)

(declare-fun d!1970966 () Bool)

(assert (=> d!1970966 (= (matchZipper!2212 (set.union lt!2354105 lt!2354120) (t!378459 s!2326)) e!3819215)))

(declare-fun res!2590169 () Bool)

(assert (=> d!1970966 (=> res!2590169 e!3819215)))

(assert (=> d!1970966 (= res!2590169 (matchZipper!2212 lt!2354105 (t!378459 s!2326)))))

(declare-fun lt!2354332 () Unit!158131)

(assert (=> d!1970966 (= lt!2354332 (choose!46620 lt!2354105 lt!2354120 (t!378459 s!2326)))))

(assert (=> d!1970966 (= (lemmaZipperConcatMatchesSameAsBothZippers!1031 lt!2354105 lt!2354120 (t!378459 s!2326)) lt!2354332)))

(declare-fun b!6280154 () Bool)

(assert (=> b!6280154 (= e!3819215 (matchZipper!2212 lt!2354120 (t!378459 s!2326)))))

(assert (= (and d!1970966 (not res!2590169)) b!6280154))

(assert (=> d!1970966 m!7100592))

(assert (=> d!1970966 m!7100590))

(declare-fun m!7101262 () Bool)

(assert (=> d!1970966 m!7101262))

(assert (=> b!6280154 m!7100688))

(assert (=> b!6279516 d!1970966))

(assert (=> b!6279516 d!1970864))

(declare-fun d!1970970 () Bool)

(declare-fun c!1138811 () Bool)

(assert (=> d!1970970 (= c!1138811 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819216 () Bool)

(assert (=> d!1970970 (= (matchZipper!2212 (set.union lt!2354105 lt!2354120) (t!378459 s!2326)) e!3819216)))

(declare-fun b!6280155 () Bool)

(assert (=> b!6280155 (= e!3819216 (nullableZipper!1970 (set.union lt!2354105 lt!2354120)))))

(declare-fun b!6280156 () Bool)

(assert (=> b!6280156 (= e!3819216 (matchZipper!2212 (derivationStepZipper!2166 (set.union lt!2354105 lt!2354120) (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970970 c!1138811) b!6280155))

(assert (= (and d!1970970 (not c!1138811)) b!6280156))

(assert (=> d!1970970 m!7100882))

(declare-fun m!7101264 () Bool)

(assert (=> b!6280155 m!7101264))

(assert (=> b!6280156 m!7100886))

(assert (=> b!6280156 m!7100886))

(declare-fun m!7101266 () Bool)

(assert (=> b!6280156 m!7101266))

(assert (=> b!6280156 m!7100890))

(assert (=> b!6280156 m!7101266))

(assert (=> b!6280156 m!7100890))

(declare-fun m!7101268 () Bool)

(assert (=> b!6280156 m!7101268))

(assert (=> b!6279516 d!1970970))

(declare-fun d!1970972 () Bool)

(declare-fun c!1138812 () Bool)

(assert (=> d!1970972 (= c!1138812 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819217 () Bool)

(assert (=> d!1970972 (= (matchZipper!2212 lt!2354106 (t!378459 s!2326)) e!3819217)))

(declare-fun b!6280157 () Bool)

(assert (=> b!6280157 (= e!3819217 (nullableZipper!1970 lt!2354106))))

(declare-fun b!6280158 () Bool)

(assert (=> b!6280158 (= e!3819217 (matchZipper!2212 (derivationStepZipper!2166 lt!2354106 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970972 c!1138812) b!6280157))

(assert (= (and d!1970972 (not c!1138812)) b!6280158))

(assert (=> d!1970972 m!7100882))

(declare-fun m!7101270 () Bool)

(assert (=> b!6280157 m!7101270))

(assert (=> b!6280158 m!7100886))

(assert (=> b!6280158 m!7100886))

(declare-fun m!7101272 () Bool)

(assert (=> b!6280158 m!7101272))

(assert (=> b!6280158 m!7100890))

(assert (=> b!6280158 m!7101272))

(assert (=> b!6280158 m!7100890))

(declare-fun m!7101274 () Bool)

(assert (=> b!6280158 m!7101274))

(assert (=> b!6279536 d!1970972))

(declare-fun e!3819218 () Bool)

(declare-fun d!1970974 () Bool)

(assert (=> d!1970974 (= (matchZipper!2212 (set.union lt!2354108 lt!2354100) (t!378459 s!2326)) e!3819218)))

(declare-fun res!2590170 () Bool)

(assert (=> d!1970974 (=> res!2590170 e!3819218)))

(assert (=> d!1970974 (= res!2590170 (matchZipper!2212 lt!2354108 (t!378459 s!2326)))))

(declare-fun lt!2354333 () Unit!158131)

(assert (=> d!1970974 (= lt!2354333 (choose!46620 lt!2354108 lt!2354100 (t!378459 s!2326)))))

(assert (=> d!1970974 (= (lemmaZipperConcatMatchesSameAsBothZippers!1031 lt!2354108 lt!2354100 (t!378459 s!2326)) lt!2354333)))

(declare-fun b!6280159 () Bool)

(assert (=> b!6280159 (= e!3819218 (matchZipper!2212 lt!2354100 (t!378459 s!2326)))))

(assert (= (and d!1970974 (not res!2590170)) b!6280159))

(declare-fun m!7101276 () Bool)

(assert (=> d!1970974 m!7101276))

(assert (=> d!1970974 m!7100676))

(declare-fun m!7101278 () Bool)

(assert (=> d!1970974 m!7101278))

(assert (=> b!6280159 m!7100686))

(assert (=> b!6279537 d!1970974))

(assert (=> b!6279537 d!1970896))

(declare-fun d!1970976 () Bool)

(assert (=> d!1970976 (= (flatMap!1705 lt!2354112 lambda!344338) (dynLambda!25626 lambda!344338 lt!2354116))))

(declare-fun lt!2354334 () Unit!158131)

(assert (=> d!1970976 (= lt!2354334 (choose!46621 lt!2354112 lt!2354116 lambda!344338))))

(assert (=> d!1970976 (= lt!2354112 (set.insert lt!2354116 (as set.empty (Set Context!11168))))))

(assert (=> d!1970976 (= (lemmaFlatMapOnSingletonSet!1231 lt!2354112 lt!2354116 lambda!344338) lt!2354334)))

(declare-fun b_lambda!239081 () Bool)

(assert (=> (not b_lambda!239081) (not d!1970976)))

(declare-fun bs!1568710 () Bool)

(assert (= bs!1568710 d!1970976))

(assert (=> bs!1568710 m!7100664))

(declare-fun m!7101280 () Bool)

(assert (=> bs!1568710 m!7101280))

(declare-fun m!7101282 () Bool)

(assert (=> bs!1568710 m!7101282))

(assert (=> bs!1568710 m!7100624))

(assert (=> b!6279537 d!1970976))

(declare-fun d!1970978 () Bool)

(declare-fun c!1138813 () Bool)

(assert (=> d!1970978 (= c!1138813 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819219 () Bool)

(assert (=> d!1970978 (= (matchZipper!2212 lt!2354091 (t!378459 s!2326)) e!3819219)))

(declare-fun b!6280160 () Bool)

(assert (=> b!6280160 (= e!3819219 (nullableZipper!1970 lt!2354091))))

(declare-fun b!6280161 () Bool)

(assert (=> b!6280161 (= e!3819219 (matchZipper!2212 (derivationStepZipper!2166 lt!2354091 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970978 c!1138813) b!6280160))

(assert (= (and d!1970978 (not c!1138813)) b!6280161))

(assert (=> d!1970978 m!7100882))

(declare-fun m!7101284 () Bool)

(assert (=> b!6280160 m!7101284))

(assert (=> b!6280161 m!7100886))

(assert (=> b!6280161 m!7100886))

(declare-fun m!7101286 () Bool)

(assert (=> b!6280161 m!7101286))

(assert (=> b!6280161 m!7100890))

(assert (=> b!6280161 m!7101286))

(assert (=> b!6280161 m!7100890))

(declare-fun m!7101288 () Bool)

(assert (=> b!6280161 m!7101288))

(assert (=> b!6279537 d!1970978))

(declare-fun d!1970980 () Bool)

(declare-fun c!1138814 () Bool)

(assert (=> d!1970980 (= c!1138814 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819220 () Bool)

(assert (=> d!1970980 (= (matchZipper!2212 lt!2354115 (t!378459 s!2326)) e!3819220)))

(declare-fun b!6280162 () Bool)

(assert (=> b!6280162 (= e!3819220 (nullableZipper!1970 lt!2354115))))

(declare-fun b!6280163 () Bool)

(assert (=> b!6280163 (= e!3819220 (matchZipper!2212 (derivationStepZipper!2166 lt!2354115 (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1970980 c!1138814) b!6280162))

(assert (= (and d!1970980 (not c!1138814)) b!6280163))

(assert (=> d!1970980 m!7100882))

(declare-fun m!7101290 () Bool)

(assert (=> b!6280162 m!7101290))

(assert (=> b!6280163 m!7100886))

(assert (=> b!6280163 m!7100886))

(declare-fun m!7101292 () Bool)

(assert (=> b!6280163 m!7101292))

(assert (=> b!6280163 m!7100890))

(assert (=> b!6280163 m!7101292))

(assert (=> b!6280163 m!7100890))

(declare-fun m!7101294 () Bool)

(assert (=> b!6280163 m!7101294))

(assert (=> b!6279537 d!1970980))

(declare-fun d!1970982 () Bool)

(assert (=> d!1970982 (= (flatMap!1705 lt!2354112 lambda!344338) (choose!46622 lt!2354112 lambda!344338))))

(declare-fun bs!1568711 () Bool)

(assert (= bs!1568711 d!1970982))

(declare-fun m!7101296 () Bool)

(assert (=> bs!1568711 m!7101296))

(assert (=> b!6279537 d!1970982))

(declare-fun d!1970984 () Bool)

(declare-fun e!3819223 () Bool)

(assert (=> d!1970984 e!3819223))

(declare-fun res!2590173 () Bool)

(assert (=> d!1970984 (=> (not res!2590173) (not e!3819223))))

(declare-fun lt!2354340 () List!64901)

(declare-fun noDuplicate!2034 (List!64901) Bool)

(assert (=> d!1970984 (= res!2590173 (noDuplicate!2034 lt!2354340))))

(declare-fun choose!46627 ((Set Context!11168)) List!64901)

(assert (=> d!1970984 (= lt!2354340 (choose!46627 z!1189))))

(assert (=> d!1970984 (= (toList!9984 z!1189) lt!2354340)))

(declare-fun b!6280166 () Bool)

(declare-fun content!12175 (List!64901) (Set Context!11168))

(assert (=> b!6280166 (= e!3819223 (= (content!12175 lt!2354340) z!1189))))

(assert (= (and d!1970984 res!2590173) b!6280166))

(declare-fun m!7101298 () Bool)

(assert (=> d!1970984 m!7101298))

(declare-fun m!7101300 () Bool)

(assert (=> d!1970984 m!7101300))

(declare-fun m!7101303 () Bool)

(assert (=> b!6280166 m!7101303))

(assert (=> b!6279517 d!1970984))

(declare-fun d!1970986 () Bool)

(declare-fun lt!2354344 () Int)

(assert (=> d!1970986 (>= lt!2354344 0)))

(declare-fun e!3819229 () Int)

(assert (=> d!1970986 (= lt!2354344 e!3819229)))

(declare-fun c!1138819 () Bool)

(assert (=> d!1970986 (= c!1138819 (is-Cons!64777 lt!2354097))))

(assert (=> d!1970986 (= (zipperDepthTotal!353 lt!2354097) lt!2354344)))

(declare-fun b!6280176 () Bool)

(assert (=> b!6280176 (= e!3819229 (+ (contextDepthTotal!323 (h!71225 lt!2354097)) (zipperDepthTotal!353 (t!378461 lt!2354097))))))

(declare-fun b!6280177 () Bool)

(assert (=> b!6280177 (= e!3819229 0)))

(assert (= (and d!1970986 c!1138819) b!6280176))

(assert (= (and d!1970986 (not c!1138819)) b!6280177))

(declare-fun m!7101324 () Bool)

(assert (=> b!6280176 m!7101324))

(declare-fun m!7101326 () Bool)

(assert (=> b!6280176 m!7101326))

(assert (=> b!6279539 d!1970986))

(declare-fun d!1970996 () Bool)

(declare-fun lt!2354345 () Int)

(assert (=> d!1970996 (>= lt!2354345 0)))

(declare-fun e!3819233 () Int)

(assert (=> d!1970996 (= lt!2354345 e!3819233)))

(declare-fun c!1138822 () Bool)

(assert (=> d!1970996 (= c!1138822 (is-Cons!64777 zl!343))))

(assert (=> d!1970996 (= (zipperDepthTotal!353 zl!343) lt!2354345)))

(declare-fun b!6280183 () Bool)

(assert (=> b!6280183 (= e!3819233 (+ (contextDepthTotal!323 (h!71225 zl!343)) (zipperDepthTotal!353 (t!378461 zl!343))))))

(declare-fun b!6280184 () Bool)

(assert (=> b!6280184 (= e!3819233 0)))

(assert (= (and d!1970996 c!1138822) b!6280183))

(assert (= (and d!1970996 (not c!1138822)) b!6280184))

(assert (=> b!6280183 m!7100638))

(declare-fun m!7101328 () Bool)

(assert (=> b!6280183 m!7101328))

(assert (=> b!6279539 d!1970996))

(declare-fun b!6280185 () Bool)

(declare-fun e!3819235 () Bool)

(declare-fun call!531456 () Bool)

(assert (=> b!6280185 (= e!3819235 call!531456)))

(declare-fun b!6280186 () Bool)

(declare-fun res!2590179 () Bool)

(declare-fun e!3819240 () Bool)

(assert (=> b!6280186 (=> res!2590179 e!3819240)))

(assert (=> b!6280186 (= res!2590179 (not (is-Concat!25045 r!7292)))))

(declare-fun e!3819237 () Bool)

(assert (=> b!6280186 (= e!3819237 e!3819240)))

(declare-fun b!6280187 () Bool)

(declare-fun e!3819238 () Bool)

(declare-fun e!3819239 () Bool)

(assert (=> b!6280187 (= e!3819238 e!3819239)))

(declare-fun c!1138823 () Bool)

(assert (=> b!6280187 (= c!1138823 (is-Star!16200 r!7292))))

(declare-fun b!6280188 () Bool)

(declare-fun e!3819236 () Bool)

(assert (=> b!6280188 (= e!3819240 e!3819236)))

(declare-fun res!2590178 () Bool)

(assert (=> b!6280188 (=> (not res!2590178) (not e!3819236))))

(declare-fun call!531457 () Bool)

(assert (=> b!6280188 (= res!2590178 call!531457)))

(declare-fun d!1970998 () Bool)

(declare-fun res!2590180 () Bool)

(assert (=> d!1970998 (=> res!2590180 e!3819238)))

(assert (=> d!1970998 (= res!2590180 (is-ElementMatch!16200 r!7292))))

(assert (=> d!1970998 (= (validRegex!7936 r!7292) e!3819238)))

(declare-fun b!6280189 () Bool)

(assert (=> b!6280189 (= e!3819239 e!3819237)))

(declare-fun c!1138824 () Bool)

(assert (=> b!6280189 (= c!1138824 (is-Union!16200 r!7292))))

(declare-fun b!6280190 () Bool)

(declare-fun res!2590176 () Bool)

(declare-fun e!3819234 () Bool)

(assert (=> b!6280190 (=> (not res!2590176) (not e!3819234))))

(assert (=> b!6280190 (= res!2590176 call!531457)))

(assert (=> b!6280190 (= e!3819237 e!3819234)))

(declare-fun b!6280191 () Bool)

(declare-fun call!531458 () Bool)

(assert (=> b!6280191 (= e!3819236 call!531458)))

(declare-fun bm!531451 () Bool)

(assert (=> bm!531451 (= call!531458 call!531456)))

(declare-fun b!6280192 () Bool)

(assert (=> b!6280192 (= e!3819239 e!3819235)))

(declare-fun res!2590177 () Bool)

(assert (=> b!6280192 (= res!2590177 (not (nullable!6193 (reg!16529 r!7292))))))

(assert (=> b!6280192 (=> (not res!2590177) (not e!3819235))))

(declare-fun bm!531452 () Bool)

(assert (=> bm!531452 (= call!531456 (validRegex!7936 (ite c!1138823 (reg!16529 r!7292) (ite c!1138824 (regTwo!32913 r!7292) (regTwo!32912 r!7292)))))))

(declare-fun b!6280193 () Bool)

(assert (=> b!6280193 (= e!3819234 call!531458)))

(declare-fun bm!531453 () Bool)

(assert (=> bm!531453 (= call!531457 (validRegex!7936 (ite c!1138824 (regOne!32913 r!7292) (regOne!32912 r!7292))))))

(assert (= (and d!1970998 (not res!2590180)) b!6280187))

(assert (= (and b!6280187 c!1138823) b!6280192))

(assert (= (and b!6280187 (not c!1138823)) b!6280189))

(assert (= (and b!6280192 res!2590177) b!6280185))

(assert (= (and b!6280189 c!1138824) b!6280190))

(assert (= (and b!6280189 (not c!1138824)) b!6280186))

(assert (= (and b!6280190 res!2590176) b!6280193))

(assert (= (and b!6280186 (not res!2590179)) b!6280188))

(assert (= (and b!6280188 res!2590178) b!6280191))

(assert (= (or b!6280193 b!6280191) bm!531451))

(assert (= (or b!6280190 b!6280188) bm!531453))

(assert (= (or b!6280185 bm!531451) bm!531452))

(declare-fun m!7101334 () Bool)

(assert (=> b!6280192 m!7101334))

(declare-fun m!7101338 () Bool)

(assert (=> bm!531452 m!7101338))

(declare-fun m!7101340 () Bool)

(assert (=> bm!531453 m!7101340))

(assert (=> start!624212 d!1970998))

(assert (=> b!6279520 d!1970972))

(declare-fun d!1971002 () Bool)

(declare-fun c!1138825 () Bool)

(assert (=> d!1971002 (= c!1138825 (isEmpty!36823 (t!378459 s!2326)))))

(declare-fun e!3819241 () Bool)

(assert (=> d!1971002 (= (matchZipper!2212 (derivationStepZipper!2166 lt!2354112 (h!71223 s!2326)) (t!378459 s!2326)) e!3819241)))

(declare-fun b!6280194 () Bool)

(assert (=> b!6280194 (= e!3819241 (nullableZipper!1970 (derivationStepZipper!2166 lt!2354112 (h!71223 s!2326))))))

(declare-fun b!6280195 () Bool)

(assert (=> b!6280195 (= e!3819241 (matchZipper!2212 (derivationStepZipper!2166 (derivationStepZipper!2166 lt!2354112 (h!71223 s!2326)) (head!12901 (t!378459 s!2326))) (tail!11986 (t!378459 s!2326))))))

(assert (= (and d!1971002 c!1138825) b!6280194))

(assert (= (and d!1971002 (not c!1138825)) b!6280195))

(assert (=> d!1971002 m!7100882))

(assert (=> b!6280194 m!7100642))

(declare-fun m!7101342 () Bool)

(assert (=> b!6280194 m!7101342))

(assert (=> b!6280195 m!7100886))

(assert (=> b!6280195 m!7100642))

(assert (=> b!6280195 m!7100886))

(declare-fun m!7101344 () Bool)

(assert (=> b!6280195 m!7101344))

(assert (=> b!6280195 m!7100890))

(assert (=> b!6280195 m!7101344))

(assert (=> b!6280195 m!7100890))

(declare-fun m!7101348 () Bool)

(assert (=> b!6280195 m!7101348))

(assert (=> b!6279540 d!1971002))

(declare-fun bs!1568714 () Bool)

(declare-fun d!1971004 () Bool)

(assert (= bs!1568714 (and d!1971004 b!6279550)))

(declare-fun lambda!344417 () Int)

(assert (=> bs!1568714 (= lambda!344417 lambda!344338)))

(declare-fun bs!1568716 () Bool)

(assert (= bs!1568716 (and d!1971004 d!1970904)))

(assert (=> bs!1568716 (= lambda!344417 lambda!344405)))

(assert (=> d!1971004 true))

(assert (=> d!1971004 (= (derivationStepZipper!2166 lt!2354112 (h!71223 s!2326)) (flatMap!1705 lt!2354112 lambda!344417))))

(declare-fun bs!1568717 () Bool)

(assert (= bs!1568717 d!1971004))

(declare-fun m!7101354 () Bool)

(assert (=> bs!1568717 m!7101354))

(assert (=> b!6279540 d!1971004))

(declare-fun b!6280200 () Bool)

(declare-fun e!3819244 () Bool)

(declare-fun tp!1750301 () Bool)

(assert (=> b!6280200 (= e!3819244 (and tp_is_empty!41653 tp!1750301))))

(assert (=> b!6279522 (= tp!1750261 e!3819244)))

(assert (= (and b!6279522 (is-Cons!64775 (t!378459 s!2326))) b!6280200))

(declare-fun b!6280213 () Bool)

(declare-fun e!3819247 () Bool)

(declare-fun tp!1750316 () Bool)

(assert (=> b!6280213 (= e!3819247 tp!1750316)))

(declare-fun b!6280214 () Bool)

(declare-fun tp!1750313 () Bool)

(declare-fun tp!1750314 () Bool)

(assert (=> b!6280214 (= e!3819247 (and tp!1750313 tp!1750314))))

(declare-fun b!6280212 () Bool)

(declare-fun tp!1750315 () Bool)

(declare-fun tp!1750312 () Bool)

(assert (=> b!6280212 (= e!3819247 (and tp!1750315 tp!1750312))))

(assert (=> b!6279548 (= tp!1750259 e!3819247)))

(declare-fun b!6280211 () Bool)

(assert (=> b!6280211 (= e!3819247 tp_is_empty!41653)))

(assert (= (and b!6279548 (is-ElementMatch!16200 (reg!16529 r!7292))) b!6280211))

(assert (= (and b!6279548 (is-Concat!25045 (reg!16529 r!7292))) b!6280212))

(assert (= (and b!6279548 (is-Star!16200 (reg!16529 r!7292))) b!6280213))

(assert (= (and b!6279548 (is-Union!16200 (reg!16529 r!7292))) b!6280214))

(declare-fun b!6280217 () Bool)

(declare-fun e!3819248 () Bool)

(declare-fun tp!1750321 () Bool)

(assert (=> b!6280217 (= e!3819248 tp!1750321)))

(declare-fun b!6280218 () Bool)

(declare-fun tp!1750318 () Bool)

(declare-fun tp!1750319 () Bool)

(assert (=> b!6280218 (= e!3819248 (and tp!1750318 tp!1750319))))

(declare-fun b!6280216 () Bool)

(declare-fun tp!1750320 () Bool)

(declare-fun tp!1750317 () Bool)

(assert (=> b!6280216 (= e!3819248 (and tp!1750320 tp!1750317))))

(assert (=> b!6279518 (= tp!1750267 e!3819248)))

(declare-fun b!6280215 () Bool)

(assert (=> b!6280215 (= e!3819248 tp_is_empty!41653)))

(assert (= (and b!6279518 (is-ElementMatch!16200 (regOne!32912 r!7292))) b!6280215))

(assert (= (and b!6279518 (is-Concat!25045 (regOne!32912 r!7292))) b!6280216))

(assert (= (and b!6279518 (is-Star!16200 (regOne!32912 r!7292))) b!6280217))

(assert (= (and b!6279518 (is-Union!16200 (regOne!32912 r!7292))) b!6280218))

(declare-fun b!6280221 () Bool)

(declare-fun e!3819249 () Bool)

(declare-fun tp!1750326 () Bool)

(assert (=> b!6280221 (= e!3819249 tp!1750326)))

(declare-fun b!6280222 () Bool)

(declare-fun tp!1750323 () Bool)

(declare-fun tp!1750324 () Bool)

(assert (=> b!6280222 (= e!3819249 (and tp!1750323 tp!1750324))))

(declare-fun b!6280220 () Bool)

(declare-fun tp!1750325 () Bool)

(declare-fun tp!1750322 () Bool)

(assert (=> b!6280220 (= e!3819249 (and tp!1750325 tp!1750322))))

(assert (=> b!6279518 (= tp!1750260 e!3819249)))

(declare-fun b!6280219 () Bool)

(assert (=> b!6280219 (= e!3819249 tp_is_empty!41653)))

(assert (= (and b!6279518 (is-ElementMatch!16200 (regTwo!32912 r!7292))) b!6280219))

(assert (= (and b!6279518 (is-Concat!25045 (regTwo!32912 r!7292))) b!6280220))

(assert (= (and b!6279518 (is-Star!16200 (regTwo!32912 r!7292))) b!6280221))

(assert (= (and b!6279518 (is-Union!16200 (regTwo!32912 r!7292))) b!6280222))

(declare-fun condSetEmpty!42731 () Bool)

(assert (=> setNonEmpty!42725 (= condSetEmpty!42731 (= setRest!42725 (as set.empty (Set Context!11168))))))

(declare-fun setRes!42731 () Bool)

(assert (=> setNonEmpty!42725 (= tp!1750266 setRes!42731)))

(declare-fun setIsEmpty!42731 () Bool)

(assert (=> setIsEmpty!42731 setRes!42731))

(declare-fun tp!1750331 () Bool)

(declare-fun setNonEmpty!42731 () Bool)

(declare-fun setElem!42731 () Context!11168)

(declare-fun e!3819252 () Bool)

(assert (=> setNonEmpty!42731 (= setRes!42731 (and tp!1750331 (inv!83748 setElem!42731) e!3819252))))

(declare-fun setRest!42731 () (Set Context!11168))

(assert (=> setNonEmpty!42731 (= setRest!42725 (set.union (set.insert setElem!42731 (as set.empty (Set Context!11168))) setRest!42731))))

(declare-fun b!6280227 () Bool)

(declare-fun tp!1750332 () Bool)

(assert (=> b!6280227 (= e!3819252 tp!1750332)))

(assert (= (and setNonEmpty!42725 condSetEmpty!42731) setIsEmpty!42731))

(assert (= (and setNonEmpty!42725 (not condSetEmpty!42731)) setNonEmpty!42731))

(assert (= setNonEmpty!42731 b!6280227))

(declare-fun m!7101356 () Bool)

(assert (=> setNonEmpty!42731 m!7101356))

(declare-fun b!6280239 () Bool)

(declare-fun e!3819259 () Bool)

(declare-fun tp!1750337 () Bool)

(assert (=> b!6280239 (= e!3819259 tp!1750337)))

(declare-fun tp!1750338 () Bool)

(declare-fun e!3819258 () Bool)

(declare-fun b!6280238 () Bool)

(assert (=> b!6280238 (= e!3819258 (and (inv!83748 (h!71225 (t!378461 zl!343))) e!3819259 tp!1750338))))

(assert (=> b!6279529 (= tp!1750268 e!3819258)))

(assert (= b!6280238 b!6280239))

(assert (= (and b!6279529 (is-Cons!64777 (t!378461 zl!343))) b!6280238))

(declare-fun m!7101360 () Bool)

(assert (=> b!6280238 m!7101360))

(declare-fun b!6280244 () Bool)

(declare-fun e!3819262 () Bool)

(declare-fun tp!1750343 () Bool)

(declare-fun tp!1750344 () Bool)

(assert (=> b!6280244 (= e!3819262 (and tp!1750343 tp!1750344))))

(assert (=> b!6279549 (= tp!1750263 e!3819262)))

(assert (= (and b!6279549 (is-Cons!64776 (exprs!6084 (h!71225 zl!343)))) b!6280244))

(declare-fun b!6280247 () Bool)

(declare-fun e!3819263 () Bool)

(declare-fun tp!1750349 () Bool)

(assert (=> b!6280247 (= e!3819263 tp!1750349)))

(declare-fun b!6280248 () Bool)

(declare-fun tp!1750346 () Bool)

(declare-fun tp!1750347 () Bool)

(assert (=> b!6280248 (= e!3819263 (and tp!1750346 tp!1750347))))

(declare-fun b!6280246 () Bool)

(declare-fun tp!1750348 () Bool)

(declare-fun tp!1750345 () Bool)

(assert (=> b!6280246 (= e!3819263 (and tp!1750348 tp!1750345))))

(assert (=> b!6279519 (= tp!1750262 e!3819263)))

(declare-fun b!6280245 () Bool)

(assert (=> b!6280245 (= e!3819263 tp_is_empty!41653)))

(assert (= (and b!6279519 (is-ElementMatch!16200 (regOne!32913 r!7292))) b!6280245))

(assert (= (and b!6279519 (is-Concat!25045 (regOne!32913 r!7292))) b!6280246))

(assert (= (and b!6279519 (is-Star!16200 (regOne!32913 r!7292))) b!6280247))

(assert (= (and b!6279519 (is-Union!16200 (regOne!32913 r!7292))) b!6280248))

(declare-fun b!6280251 () Bool)

(declare-fun e!3819264 () Bool)

(declare-fun tp!1750354 () Bool)

(assert (=> b!6280251 (= e!3819264 tp!1750354)))

(declare-fun b!6280252 () Bool)

(declare-fun tp!1750351 () Bool)

(declare-fun tp!1750352 () Bool)

(assert (=> b!6280252 (= e!3819264 (and tp!1750351 tp!1750352))))

(declare-fun b!6280250 () Bool)

(declare-fun tp!1750353 () Bool)

(declare-fun tp!1750350 () Bool)

(assert (=> b!6280250 (= e!3819264 (and tp!1750353 tp!1750350))))

(assert (=> b!6279519 (= tp!1750265 e!3819264)))

(declare-fun b!6280249 () Bool)

(assert (=> b!6280249 (= e!3819264 tp_is_empty!41653)))

(assert (= (and b!6279519 (is-ElementMatch!16200 (regTwo!32913 r!7292))) b!6280249))

(assert (= (and b!6279519 (is-Concat!25045 (regTwo!32913 r!7292))) b!6280250))

(assert (= (and b!6279519 (is-Star!16200 (regTwo!32913 r!7292))) b!6280251))

(assert (= (and b!6279519 (is-Union!16200 (regTwo!32913 r!7292))) b!6280252))

(declare-fun b!6280253 () Bool)

(declare-fun e!3819265 () Bool)

(declare-fun tp!1750355 () Bool)

(declare-fun tp!1750356 () Bool)

(assert (=> b!6280253 (= e!3819265 (and tp!1750355 tp!1750356))))

(assert (=> b!6279524 (= tp!1750264 e!3819265)))

(assert (= (and b!6279524 (is-Cons!64776 (exprs!6084 setElem!42725))) b!6280253))

(declare-fun b_lambda!239087 () Bool)

(assert (= b_lambda!239081 (or b!6279550 b_lambda!239087)))

(declare-fun bs!1568720 () Bool)

(declare-fun d!1971014 () Bool)

(assert (= bs!1568720 (and d!1971014 b!6279550)))

(assert (=> bs!1568720 (= (dynLambda!25626 lambda!344338 lt!2354116) (derivationStepZipperUp!1374 lt!2354116 (h!71223 s!2326)))))

(assert (=> bs!1568720 m!7100628))

(assert (=> d!1970976 d!1971014))

(declare-fun b_lambda!239089 () Bool)

(assert (= b_lambda!239079 (or b!6279550 b_lambda!239089)))

(declare-fun bs!1568721 () Bool)

(declare-fun d!1971016 () Bool)

(assert (= bs!1568721 (and d!1971016 b!6279550)))

(assert (=> bs!1568721 (= (dynLambda!25626 lambda!344338 lt!2354098) (derivationStepZipperUp!1374 lt!2354098 (h!71223 s!2326)))))

(assert (=> bs!1568721 m!7100626))

(assert (=> d!1970900 d!1971016))

(declare-fun b_lambda!239091 () Bool)

(assert (= b_lambda!239077 (or b!6279550 b_lambda!239091)))

(declare-fun bs!1568722 () Bool)

(declare-fun d!1971018 () Bool)

(assert (= bs!1568722 (and d!1971018 b!6279550)))

(assert (=> bs!1568722 (= (dynLambda!25626 lambda!344338 (h!71225 zl!343)) (derivationStepZipperUp!1374 (h!71225 zl!343) (h!71223 s!2326)))))

(assert (=> bs!1568722 m!7100604))

(assert (=> d!1970880 d!1971018))

(push 1)

(assert (not d!1970976))

(assert (not b!6279828))

(assert (not d!1970912))

(assert (not b!6279979))

(assert (not bm!531412))

(assert (not b!6279986))

(assert (not b!6280007))

(assert (not b_lambda!239091))

(assert (not b!6280214))

(assert (not b!6280195))

(assert (not b!6280227))

(assert tp_is_empty!41653)

(assert (not d!1971004))

(assert (not b!6279936))

(assert (not b!6279951))

(assert (not d!1970964))

(assert (not bm!531453))

(assert (not bm!531436))

(assert (not b!6280159))

(assert (not b!6280031))

(assert (not b!6280220))

(assert (not b!6279823))

(assert (not b_lambda!239089))

(assert (not b!6279759))

(assert (not bm!531427))

(assert (not d!1970972))

(assert (not b!6279991))

(assert (not d!1970966))

(assert (not b!6280051))

(assert (not b!6280246))

(assert (not d!1970982))

(assert (not b!6280079))

(assert (not d!1970866))

(assert (not b!6280155))

(assert (not d!1970856))

(assert (not b!6279803))

(assert (not d!1970934))

(assert (not d!1970826))

(assert (not b!6280213))

(assert (not bm!531437))

(assert (not d!1970834))

(assert (not b!6279896))

(assert (not b!6280028))

(assert (not b!6280151))

(assert (not b!6280161))

(assert (not bm!531430))

(assert (not d!1970870))

(assert (not b!6279858))

(assert (not b!6279725))

(assert (not b!6279958))

(assert (not b!6279901))

(assert (not d!1970904))

(assert (not d!1970920))

(assert (not b!6279869))

(assert (not bm!531431))

(assert (not b!6280221))

(assert (not b!6280212))

(assert (not bm!531418))

(assert (not b!6280192))

(assert (not bm!531413))

(assert (not b!6280075))

(assert (not b!6280061))

(assert (not d!1970970))

(assert (not d!1970872))

(assert (not b!6280157))

(assert (not b!6280096))

(assert (not b!6280150))

(assert (not b!6279955))

(assert (not b!6280160))

(assert (not b!6280250))

(assert (not b!6280049))

(assert (not b!6280101))

(assert (not b!6279897))

(assert (not bm!531426))

(assert (not bm!531434))

(assert (not bm!531393))

(assert (not d!1970832))

(assert (not b!6279953))

(assert (not b!6280248))

(assert (not d!1970924))

(assert (not b!6280039))

(assert (not b!6280076))

(assert (not b!6280217))

(assert (not b!6280176))

(assert (not b!6279721))

(assert (not b!6279909))

(assert (not bs!1568721))

(assert (not b!6280069))

(assert (not b!6279804))

(assert (not b!6280084))

(assert (not b!6279903))

(assert (not b!6279929))

(assert (not d!1970944))

(assert (not d!1970854))

(assert (not b!6280152))

(assert (not b!6280166))

(assert (not b!6280162))

(assert (not b!6280065))

(assert (not b!6280036))

(assert (not b!6280253))

(assert (not b!6279932))

(assert (not b!6279952))

(assert (not bm!531428))

(assert (not d!1971002))

(assert (not b!6279764))

(assert (not b!6280158))

(assert (not b!6279825))

(assert (not b!6279900))

(assert (not b!6280010))

(assert (not b!6279807))

(assert (not b!6280040))

(assert (not b!6280252))

(assert (not d!1970860))

(assert (not d!1970836))

(assert (not b!6279935))

(assert (not b!6279934))

(assert (not d!1970846))

(assert (not bm!531433))

(assert (not b!6280163))

(assert (not d!1970850))

(assert (not b!6279970))

(assert (not b!6279798))

(assert (not bm!531396))

(assert (not b!6280087))

(assert (not d!1970928))

(assert (not b!6280054))

(assert (not d!1970868))

(assert (not b!6280222))

(assert (not b!6280238))

(assert (not d!1970908))

(assert (not b!6279720))

(assert (not b!6280022))

(assert (not b!6280146))

(assert (not d!1970936))

(assert (not d!1970900))

(assert (not b!6280153))

(assert (not b!6280154))

(assert (not bm!531417))

(assert (not d!1970848))

(assert (not b!6279716))

(assert (not b!6279950))

(assert (not bm!531435))

(assert (not b!6279799))

(assert (not d!1970828))

(assert (not b!6279904))

(assert (not b!6280066))

(assert (not bm!531448))

(assert (not b!6279815))

(assert (not d!1970858))

(assert (not d!1970910))

(assert (not b!6279717))

(assert (not b!6280043))

(assert (not b!6280247))

(assert (not b!6279994))

(assert (not b!6280251))

(assert (not b!6279718))

(assert (not bm!531452))

(assert (not b!6279989))

(assert (not b!6280012))

(assert (not b!6280038))

(assert (not b_lambda!239087))

(assert (not b!6280239))

(assert (not d!1970932))

(assert (not bs!1568722))

(assert (not b!6279954))

(assert (not b!6280244))

(assert (not d!1970978))

(assert (not d!1970962))

(assert (not bm!531432))

(assert (not b!6280004))

(assert (not b!6280024))

(assert (not b!6279902))

(assert (not b!6279973))

(assert (not bm!531392))

(assert (not b!6280053))

(assert (not d!1970852))

(assert (not d!1970886))

(assert (not bm!531423))

(assert (not d!1970914))

(assert (not d!1970864))

(assert (not b!6280052))

(assert (not b!6280023))

(assert (not b!6280034))

(assert (not b!6279830))

(assert (not d!1970902))

(assert (not b!6280156))

(assert (not d!1970882))

(assert (not b!6279937))

(assert (not b!6280077))

(assert (not b!6280060))

(assert (not d!1970880))

(assert (not b!6280216))

(assert (not b!6279816))

(assert (not d!1970980))

(assert (not b!6280035))

(assert (not b!6280002))

(assert (not b!6280083))

(assert (not bm!531449))

(assert (not b!6280059))

(assert (not bm!531411))

(assert (not b!6280046))

(assert (not d!1970958))

(assert (not b!6280194))

(assert (not d!1970984))

(assert (not b!6279797))

(assert (not b!6280026))

(assert (not d!1970952))

(assert (not d!1970974))

(assert (not b!6280015))

(assert (not b!6280218))

(assert (not b!6280200))

(assert (not b!6280027))

(assert (not b!6280078))

(assert (not bm!531419))

(assert (not d!1970938))

(assert (not setNonEmpty!42731))

(assert (not d!1970930))

(assert (not b!6280183))

(assert (not d!1970922))

(assert (not bs!1568720))

(assert (not b!6279722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

