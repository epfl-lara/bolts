; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!631776 () Bool)

(assert start!631776)

(declare-fun b!6376980 () Bool)

(assert (=> b!6376980 true))

(assert (=> b!6376980 true))

(declare-fun lambda!351595 () Int)

(declare-fun lambda!351594 () Int)

(assert (=> b!6376980 (not (= lambda!351595 lambda!351594))))

(assert (=> b!6376980 true))

(assert (=> b!6376980 true))

(declare-fun b!6376986 () Bool)

(assert (=> b!6376986 true))

(declare-fun b!6376962 () Bool)

(declare-fun res!2623111 () Bool)

(declare-fun e!3871295 () Bool)

(assert (=> b!6376962 (=> (not res!2623111) (not e!3871295))))

(declare-datatypes ((C!32846 0))(
  ( (C!32847 (val!26125 Int)) )
))
(declare-datatypes ((Regex!16288 0))(
  ( (ElementMatch!16288 (c!1161661 C!32846)) (Concat!25133 (regOne!33088 Regex!16288) (regTwo!33088 Regex!16288)) (EmptyExpr!16288) (Star!16288 (reg!16617 Regex!16288)) (EmptyLang!16288) (Union!16288 (regOne!33089 Regex!16288) (regTwo!33089 Regex!16288)) )
))
(declare-datatypes ((List!65163 0))(
  ( (Nil!65039) (Cons!65039 (h!71487 Regex!16288) (t!378767 List!65163)) )
))
(declare-datatypes ((Context!11344 0))(
  ( (Context!11345 (exprs!6172 List!65163)) )
))
(declare-fun z!1189 () (Set Context!11344))

(declare-datatypes ((List!65164 0))(
  ( (Nil!65040) (Cons!65040 (h!71488 Context!11344) (t!378768 List!65164)) )
))
(declare-fun zl!343 () List!65164)

(declare-fun toList!10072 ((Set Context!11344)) List!65164)

(assert (=> b!6376962 (= res!2623111 (= (toList!10072 z!1189) zl!343))))

(declare-fun e!3871291 () Bool)

(declare-fun b!6376963 () Bool)

(declare-fun e!3871304 () Bool)

(declare-fun tp!1775053 () Bool)

(declare-fun inv!83968 (Context!11344) Bool)

(assert (=> b!6376963 (= e!3871304 (and (inv!83968 (h!71488 zl!343)) e!3871291 tp!1775053))))

(declare-fun b!6376964 () Bool)

(declare-fun e!3871299 () Bool)

(declare-fun tp_is_empty!41829 () Bool)

(declare-fun tp!1775047 () Bool)

(assert (=> b!6376964 (= e!3871299 (and tp_is_empty!41829 tp!1775047))))

(declare-fun b!6376966 () Bool)

(declare-fun e!3871297 () Bool)

(declare-fun tp!1775048 () Bool)

(declare-fun tp!1775054 () Bool)

(assert (=> b!6376966 (= e!3871297 (and tp!1775048 tp!1775054))))

(declare-fun b!6376967 () Bool)

(declare-fun e!3871300 () Bool)

(declare-fun e!3871305 () Bool)

(assert (=> b!6376967 (= e!3871300 e!3871305)))

(declare-fun res!2623118 () Bool)

(assert (=> b!6376967 (=> res!2623118 e!3871305)))

(declare-fun lt!2369255 () (Set Context!11344))

(declare-fun lt!2369267 () (Set Context!11344))

(assert (=> b!6376967 (= res!2623118 (not (= lt!2369255 lt!2369267)))))

(declare-fun lambda!351596 () Int)

(declare-datatypes ((List!65165 0))(
  ( (Nil!65041) (Cons!65041 (h!71489 C!32846) (t!378769 List!65165)) )
))
(declare-fun s!2326 () List!65165)

(declare-fun lt!2369260 () Context!11344)

(declare-fun lt!2369275 () (Set Context!11344))

(declare-fun flatMap!1793 ((Set Context!11344) Int) (Set Context!11344))

(declare-fun derivationStepZipperUp!1462 (Context!11344 C!32846) (Set Context!11344))

(assert (=> b!6376967 (= (flatMap!1793 lt!2369275 lambda!351596) (derivationStepZipperUp!1462 lt!2369260 (h!71489 s!2326)))))

(declare-datatypes ((Unit!158483 0))(
  ( (Unit!158484) )
))
(declare-fun lt!2369261 () Unit!158483)

(declare-fun lemmaFlatMapOnSingletonSet!1319 ((Set Context!11344) Context!11344 Int) Unit!158483)

(assert (=> b!6376967 (= lt!2369261 (lemmaFlatMapOnSingletonSet!1319 lt!2369275 lt!2369260 lambda!351596))))

(declare-fun lt!2369256 () (Set Context!11344))

(assert (=> b!6376967 (= lt!2369256 (derivationStepZipperUp!1462 lt!2369260 (h!71489 s!2326)))))

(declare-fun derivationStepZipper!2254 ((Set Context!11344) C!32846) (Set Context!11344))

(assert (=> b!6376967 (= lt!2369255 (derivationStepZipper!2254 lt!2369275 (h!71489 s!2326)))))

(assert (=> b!6376967 (= lt!2369275 (set.insert lt!2369260 (as set.empty (Set Context!11344))))))

(declare-fun r!7292 () Regex!16288)

(declare-fun lt!2369265 () List!65163)

(assert (=> b!6376967 (= lt!2369260 (Context!11345 (Cons!65039 (reg!16617 (regOne!33088 r!7292)) lt!2369265)))))

(declare-fun b!6376968 () Bool)

(declare-fun e!3871294 () Bool)

(declare-fun lt!2369262 () Context!11344)

(assert (=> b!6376968 (= e!3871294 (inv!83968 lt!2369262))))

(declare-fun b!6376969 () Bool)

(declare-fun e!3871292 () Bool)

(assert (=> b!6376969 (= e!3871305 e!3871292)))

(declare-fun res!2623114 () Bool)

(assert (=> b!6376969 (=> res!2623114 e!3871292)))

(declare-fun lt!2369269 () Regex!16288)

(assert (=> b!6376969 (= res!2623114 (not (= r!7292 lt!2369269)))))

(declare-fun lt!2369264 () Regex!16288)

(assert (=> b!6376969 (= lt!2369269 (Concat!25133 lt!2369264 (regTwo!33088 r!7292)))))

(declare-fun b!6376970 () Bool)

(declare-fun e!3871296 () Bool)

(assert (=> b!6376970 (= e!3871296 e!3871300)))

(declare-fun res!2623112 () Bool)

(assert (=> b!6376970 (=> res!2623112 e!3871300)))

(declare-fun lt!2369253 () (Set Context!11344))

(assert (=> b!6376970 (= res!2623112 (not (= lt!2369253 lt!2369267)))))

(declare-fun derivationStepZipperDown!1536 (Regex!16288 Context!11344 C!32846) (Set Context!11344))

(assert (=> b!6376970 (= lt!2369267 (derivationStepZipperDown!1536 (reg!16617 (regOne!33088 r!7292)) lt!2369262 (h!71489 s!2326)))))

(assert (=> b!6376970 (= lt!2369262 (Context!11345 lt!2369265))))

(assert (=> b!6376970 (= lt!2369265 (Cons!65039 lt!2369264 (t!378767 (exprs!6172 (h!71488 zl!343)))))))

(assert (=> b!6376970 (= lt!2369264 (Star!16288 (reg!16617 (regOne!33088 r!7292))))))

(declare-fun b!6376971 () Bool)

(declare-fun e!3871290 () Bool)

(assert (=> b!6376971 (= e!3871295 e!3871290)))

(declare-fun res!2623110 () Bool)

(assert (=> b!6376971 (=> (not res!2623110) (not e!3871290))))

(declare-fun lt!2369259 () Regex!16288)

(assert (=> b!6376971 (= res!2623110 (= r!7292 lt!2369259))))

(declare-fun unfocusZipper!2030 (List!65164) Regex!16288)

(assert (=> b!6376971 (= lt!2369259 (unfocusZipper!2030 zl!343))))

(declare-fun b!6376972 () Bool)

(declare-fun res!2623116 () Bool)

(assert (=> b!6376972 (=> res!2623116 e!3871292)))

(assert (=> b!6376972 (= res!2623116 (not (= (unfocusZipper!2030 (Cons!65040 lt!2369260 Nil!65040)) (Concat!25133 (reg!16617 (regOne!33088 r!7292)) lt!2369269))))))

(declare-fun b!6376973 () Bool)

(declare-fun res!2623104 () Bool)

(declare-fun e!3871301 () Bool)

(assert (=> b!6376973 (=> res!2623104 e!3871301)))

(assert (=> b!6376973 (= res!2623104 (or (is-EmptyExpr!16288 r!7292) (is-EmptyLang!16288 r!7292) (is-ElementMatch!16288 r!7292) (is-Union!16288 r!7292) (not (is-Concat!25133 r!7292))))))

(declare-fun b!6376974 () Bool)

(declare-fun tp!1775056 () Bool)

(assert (=> b!6376974 (= e!3871297 tp!1775056)))

(declare-fun setIsEmpty!43505 () Bool)

(declare-fun setRes!43505 () Bool)

(assert (=> setIsEmpty!43505 setRes!43505))

(declare-fun b!6376975 () Bool)

(declare-fun res!2623115 () Bool)

(declare-fun e!3871302 () Bool)

(assert (=> b!6376975 (=> res!2623115 e!3871302)))

(declare-fun isEmpty!37163 (List!65163) Bool)

(assert (=> b!6376975 (= res!2623115 (isEmpty!37163 (t!378767 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6376976 () Bool)

(declare-fun e!3871293 () Bool)

(declare-fun lt!2369274 () (Set Context!11344))

(declare-fun matchZipper!2300 ((Set Context!11344) List!65165) Bool)

(assert (=> b!6376976 (= e!3871293 (matchZipper!2300 lt!2369274 (t!378769 s!2326)))))

(declare-fun b!6376977 () Bool)

(declare-fun e!3871289 () Unit!158483)

(declare-fun Unit!158485 () Unit!158483)

(assert (=> b!6376977 (= e!3871289 Unit!158485)))

(declare-fun lt!2369254 () Unit!158483)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1119 ((Set Context!11344) (Set Context!11344) List!65165) Unit!158483)

(assert (=> b!6376977 (= lt!2369254 (lemmaZipperConcatMatchesSameAsBothZippers!1119 lt!2369253 lt!2369274 (t!378769 s!2326)))))

(declare-fun res!2623098 () Bool)

(assert (=> b!6376977 (= res!2623098 (matchZipper!2300 lt!2369253 (t!378769 s!2326)))))

(assert (=> b!6376977 (=> res!2623098 e!3871293)))

(assert (=> b!6376977 (= (matchZipper!2300 (set.union lt!2369253 lt!2369274) (t!378769 s!2326)) e!3871293)))

(declare-fun b!6376978 () Bool)

(declare-fun res!2623119 () Bool)

(assert (=> b!6376978 (=> res!2623119 e!3871301)))

(assert (=> b!6376978 (= res!2623119 (not (is-Cons!65039 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6376979 () Bool)

(assert (=> b!6376979 (= e!3871290 (not e!3871301))))

(declare-fun res!2623106 () Bool)

(assert (=> b!6376979 (=> res!2623106 e!3871301)))

(assert (=> b!6376979 (= res!2623106 (not (is-Cons!65040 zl!343)))))

(declare-fun lt!2369257 () Bool)

(declare-fun matchRSpec!3389 (Regex!16288 List!65165) Bool)

(assert (=> b!6376979 (= lt!2369257 (matchRSpec!3389 r!7292 s!2326))))

(declare-fun matchR!8471 (Regex!16288 List!65165) Bool)

(assert (=> b!6376979 (= lt!2369257 (matchR!8471 r!7292 s!2326))))

(declare-fun lt!2369250 () Unit!158483)

(declare-fun mainMatchTheorem!3389 (Regex!16288 List!65165) Unit!158483)

(assert (=> b!6376979 (= lt!2369250 (mainMatchTheorem!3389 r!7292 s!2326))))

(declare-fun b!6376965 () Bool)

(declare-fun res!2623099 () Bool)

(assert (=> b!6376965 (=> res!2623099 e!3871296)))

(assert (=> b!6376965 (= res!2623099 (or (is-Concat!25133 (regOne!33088 r!7292)) (not (is-Star!16288 (regOne!33088 r!7292)))))))

(declare-fun res!2623117 () Bool)

(assert (=> start!631776 (=> (not res!2623117) (not e!3871295))))

(declare-fun validRegex!8024 (Regex!16288) Bool)

(assert (=> start!631776 (= res!2623117 (validRegex!8024 r!7292))))

(assert (=> start!631776 e!3871295))

(assert (=> start!631776 e!3871297))

(declare-fun condSetEmpty!43505 () Bool)

(assert (=> start!631776 (= condSetEmpty!43505 (= z!1189 (as set.empty (Set Context!11344))))))

(assert (=> start!631776 setRes!43505))

(assert (=> start!631776 e!3871304))

(assert (=> start!631776 e!3871299))

(assert (=> b!6376980 (= e!3871301 e!3871302)))

(declare-fun res!2623101 () Bool)

(assert (=> b!6376980 (=> res!2623101 e!3871302)))

(declare-fun lt!2369273 () Bool)

(assert (=> b!6376980 (= res!2623101 (or (not (= lt!2369257 lt!2369273)) (is-Nil!65041 s!2326)))))

(declare-fun Exists!3358 (Int) Bool)

(assert (=> b!6376980 (= (Exists!3358 lambda!351594) (Exists!3358 lambda!351595))))

(declare-fun lt!2369263 () Unit!158483)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1895 (Regex!16288 Regex!16288 List!65165) Unit!158483)

(assert (=> b!6376980 (= lt!2369263 (lemmaExistCutMatchRandMatchRSpecEquivalent!1895 (regOne!33088 r!7292) (regTwo!33088 r!7292) s!2326))))

(assert (=> b!6376980 (= lt!2369273 (Exists!3358 lambda!351594))))

(declare-datatypes ((tuple2!66534 0))(
  ( (tuple2!66535 (_1!36570 List!65165) (_2!36570 List!65165)) )
))
(declare-datatypes ((Option!16179 0))(
  ( (None!16178) (Some!16178 (v!52347 tuple2!66534)) )
))
(declare-fun isDefined!12882 (Option!16179) Bool)

(declare-fun findConcatSeparation!2593 (Regex!16288 Regex!16288 List!65165 List!65165 List!65165) Option!16179)

(assert (=> b!6376980 (= lt!2369273 (isDefined!12882 (findConcatSeparation!2593 (regOne!33088 r!7292) (regTwo!33088 r!7292) Nil!65041 s!2326 s!2326)))))

(declare-fun lt!2369252 () Unit!158483)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2357 (Regex!16288 Regex!16288 List!65165) Unit!158483)

(assert (=> b!6376980 (= lt!2369252 (lemmaFindConcatSeparationEquivalentToExists!2357 (regOne!33088 r!7292) (regTwo!33088 r!7292) s!2326))))

(declare-fun b!6376981 () Bool)

(declare-fun Unit!158486 () Unit!158483)

(assert (=> b!6376981 (= e!3871289 Unit!158486)))

(declare-fun b!6376982 () Bool)

(assert (=> b!6376982 (= e!3871292 e!3871294)))

(declare-fun res!2623100 () Bool)

(assert (=> b!6376982 (=> res!2623100 e!3871294)))

(declare-fun lt!2369249 () Context!11344)

(assert (=> b!6376982 (= res!2623100 (not (= (unfocusZipper!2030 (Cons!65040 lt!2369249 Nil!65040)) (reg!16617 (regOne!33088 r!7292)))))))

(declare-fun lt!2369268 () (Set Context!11344))

(assert (=> b!6376982 (= (flatMap!1793 lt!2369268 lambda!351596) (derivationStepZipperUp!1462 lt!2369262 (h!71489 s!2326)))))

(declare-fun lt!2369251 () Unit!158483)

(assert (=> b!6376982 (= lt!2369251 (lemmaFlatMapOnSingletonSet!1319 lt!2369268 lt!2369262 lambda!351596))))

(declare-fun lt!2369270 () (Set Context!11344))

(assert (=> b!6376982 (= (flatMap!1793 lt!2369270 lambda!351596) (derivationStepZipperUp!1462 lt!2369249 (h!71489 s!2326)))))

(declare-fun lt!2369266 () Unit!158483)

(assert (=> b!6376982 (= lt!2369266 (lemmaFlatMapOnSingletonSet!1319 lt!2369270 lt!2369249 lambda!351596))))

(declare-fun lt!2369272 () (Set Context!11344))

(assert (=> b!6376982 (= lt!2369272 (derivationStepZipperUp!1462 lt!2369262 (h!71489 s!2326)))))

(declare-fun lt!2369276 () (Set Context!11344))

(assert (=> b!6376982 (= lt!2369276 (derivationStepZipperUp!1462 lt!2369249 (h!71489 s!2326)))))

(assert (=> b!6376982 (= lt!2369268 (set.insert lt!2369262 (as set.empty (Set Context!11344))))))

(assert (=> b!6376982 (= lt!2369270 (set.insert lt!2369249 (as set.empty (Set Context!11344))))))

(assert (=> b!6376982 (= lt!2369249 (Context!11345 (Cons!65039 (reg!16617 (regOne!33088 r!7292)) Nil!65039)))))

(declare-fun b!6376983 () Bool)

(declare-fun res!2623105 () Bool)

(assert (=> b!6376983 (=> res!2623105 e!3871305)))

(assert (=> b!6376983 (= res!2623105 (not (= (matchZipper!2300 lt!2369275 s!2326) (matchZipper!2300 lt!2369255 (t!378769 s!2326)))))))

(declare-fun b!6376984 () Bool)

(declare-fun res!2623107 () Bool)

(assert (=> b!6376984 (=> res!2623107 e!3871301)))

(declare-fun generalisedUnion!2132 (List!65163) Regex!16288)

(declare-fun unfocusZipperList!1709 (List!65164) List!65163)

(assert (=> b!6376984 (= res!2623107 (not (= r!7292 (generalisedUnion!2132 (unfocusZipperList!1709 zl!343)))))))

(declare-fun b!6376985 () Bool)

(assert (=> b!6376985 (= e!3871297 tp_is_empty!41829)))

(declare-fun setNonEmpty!43505 () Bool)

(declare-fun tp!1775052 () Bool)

(declare-fun e!3871298 () Bool)

(declare-fun setElem!43505 () Context!11344)

(assert (=> setNonEmpty!43505 (= setRes!43505 (and tp!1775052 (inv!83968 setElem!43505) e!3871298))))

(declare-fun setRest!43505 () (Set Context!11344))

(assert (=> setNonEmpty!43505 (= z!1189 (set.union (set.insert setElem!43505 (as set.empty (Set Context!11344))) setRest!43505))))

(assert (=> b!6376986 (= e!3871302 e!3871296)))

(declare-fun res!2623103 () Bool)

(assert (=> b!6376986 (=> res!2623103 e!3871296)))

(assert (=> b!6376986 (= res!2623103 (or (and (is-ElementMatch!16288 (regOne!33088 r!7292)) (= (c!1161661 (regOne!33088 r!7292)) (h!71489 s!2326))) (is-Union!16288 (regOne!33088 r!7292))))))

(declare-fun lt!2369258 () Unit!158483)

(assert (=> b!6376986 (= lt!2369258 e!3871289)))

(declare-fun c!1161660 () Bool)

(declare-fun nullable!6281 (Regex!16288) Bool)

(assert (=> b!6376986 (= c!1161660 (nullable!6281 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(assert (=> b!6376986 (= (flatMap!1793 z!1189 lambda!351596) (derivationStepZipperUp!1462 (h!71488 zl!343) (h!71489 s!2326)))))

(declare-fun lt!2369271 () Unit!158483)

(assert (=> b!6376986 (= lt!2369271 (lemmaFlatMapOnSingletonSet!1319 z!1189 (h!71488 zl!343) lambda!351596))))

(declare-fun lt!2369277 () Context!11344)

(assert (=> b!6376986 (= lt!2369274 (derivationStepZipperUp!1462 lt!2369277 (h!71489 s!2326)))))

(assert (=> b!6376986 (= lt!2369253 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 (h!71488 zl!343))) lt!2369277 (h!71489 s!2326)))))

(assert (=> b!6376986 (= lt!2369277 (Context!11345 (t!378767 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun lt!2369278 () (Set Context!11344))

(assert (=> b!6376986 (= lt!2369278 (derivationStepZipperUp!1462 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343))))) (h!71489 s!2326)))))

(declare-fun b!6376987 () Bool)

(declare-fun e!3871303 () Bool)

(assert (=> b!6376987 (= e!3871303 (nullable!6281 (regOne!33088 (regOne!33088 r!7292))))))

(declare-fun b!6376988 () Bool)

(declare-fun tp!1775050 () Bool)

(assert (=> b!6376988 (= e!3871298 tp!1775050)))

(declare-fun b!6376989 () Bool)

(declare-fun res!2623109 () Bool)

(assert (=> b!6376989 (=> res!2623109 e!3871301)))

(declare-fun isEmpty!37164 (List!65164) Bool)

(assert (=> b!6376989 (= res!2623109 (not (isEmpty!37164 (t!378768 zl!343))))))

(declare-fun b!6376990 () Bool)

(declare-fun tp!1775049 () Bool)

(assert (=> b!6376990 (= e!3871291 tp!1775049)))

(declare-fun b!6376991 () Bool)

(declare-fun tp!1775051 () Bool)

(declare-fun tp!1775055 () Bool)

(assert (=> b!6376991 (= e!3871297 (and tp!1775051 tp!1775055))))

(declare-fun b!6376992 () Bool)

(declare-fun res!2623097 () Bool)

(assert (=> b!6376992 (=> res!2623097 e!3871296)))

(assert (=> b!6376992 (= res!2623097 e!3871303)))

(declare-fun res!2623102 () Bool)

(assert (=> b!6376992 (=> (not res!2623102) (not e!3871303))))

(assert (=> b!6376992 (= res!2623102 (is-Concat!25133 (regOne!33088 r!7292)))))

(declare-fun b!6376993 () Bool)

(declare-fun res!2623108 () Bool)

(assert (=> b!6376993 (=> res!2623108 e!3871305)))

(assert (=> b!6376993 (= res!2623108 (not (= lt!2369259 r!7292)))))

(declare-fun b!6376994 () Bool)

(declare-fun res!2623113 () Bool)

(assert (=> b!6376994 (=> res!2623113 e!3871301)))

(declare-fun generalisedConcat!1885 (List!65163) Regex!16288)

(assert (=> b!6376994 (= res!2623113 (not (= r!7292 (generalisedConcat!1885 (exprs!6172 (h!71488 zl!343))))))))

(assert (= (and start!631776 res!2623117) b!6376962))

(assert (= (and b!6376962 res!2623111) b!6376971))

(assert (= (and b!6376971 res!2623110) b!6376979))

(assert (= (and b!6376979 (not res!2623106)) b!6376989))

(assert (= (and b!6376989 (not res!2623109)) b!6376994))

(assert (= (and b!6376994 (not res!2623113)) b!6376978))

(assert (= (and b!6376978 (not res!2623119)) b!6376984))

(assert (= (and b!6376984 (not res!2623107)) b!6376973))

(assert (= (and b!6376973 (not res!2623104)) b!6376980))

(assert (= (and b!6376980 (not res!2623101)) b!6376975))

(assert (= (and b!6376975 (not res!2623115)) b!6376986))

(assert (= (and b!6376986 c!1161660) b!6376977))

(assert (= (and b!6376986 (not c!1161660)) b!6376981))

(assert (= (and b!6376977 (not res!2623098)) b!6376976))

(assert (= (and b!6376986 (not res!2623103)) b!6376992))

(assert (= (and b!6376992 res!2623102) b!6376987))

(assert (= (and b!6376992 (not res!2623097)) b!6376965))

(assert (= (and b!6376965 (not res!2623099)) b!6376970))

(assert (= (and b!6376970 (not res!2623112)) b!6376967))

(assert (= (and b!6376967 (not res!2623118)) b!6376983))

(assert (= (and b!6376983 (not res!2623105)) b!6376993))

(assert (= (and b!6376993 (not res!2623108)) b!6376969))

(assert (= (and b!6376969 (not res!2623114)) b!6376972))

(assert (= (and b!6376972 (not res!2623116)) b!6376982))

(assert (= (and b!6376982 (not res!2623100)) b!6376968))

(assert (= (and start!631776 (is-ElementMatch!16288 r!7292)) b!6376985))

(assert (= (and start!631776 (is-Concat!25133 r!7292)) b!6376966))

(assert (= (and start!631776 (is-Star!16288 r!7292)) b!6376974))

(assert (= (and start!631776 (is-Union!16288 r!7292)) b!6376991))

(assert (= (and start!631776 condSetEmpty!43505) setIsEmpty!43505))

(assert (= (and start!631776 (not condSetEmpty!43505)) setNonEmpty!43505))

(assert (= setNonEmpty!43505 b!6376988))

(assert (= b!6376963 b!6376990))

(assert (= (and start!631776 (is-Cons!65040 zl!343)) b!6376963))

(assert (= (and start!631776 (is-Cons!65041 s!2326)) b!6376964))

(declare-fun m!7178404 () Bool)

(assert (=> b!6376970 m!7178404))

(declare-fun m!7178406 () Bool)

(assert (=> b!6376987 m!7178406))

(declare-fun m!7178408 () Bool)

(assert (=> b!6376977 m!7178408))

(declare-fun m!7178410 () Bool)

(assert (=> b!6376977 m!7178410))

(declare-fun m!7178412 () Bool)

(assert (=> b!6376977 m!7178412))

(declare-fun m!7178414 () Bool)

(assert (=> setNonEmpty!43505 m!7178414))

(declare-fun m!7178416 () Bool)

(assert (=> b!6376963 m!7178416))

(declare-fun m!7178418 () Bool)

(assert (=> b!6376972 m!7178418))

(declare-fun m!7178420 () Bool)

(assert (=> start!631776 m!7178420))

(declare-fun m!7178422 () Bool)

(assert (=> b!6376971 m!7178422))

(declare-fun m!7178424 () Bool)

(assert (=> b!6376962 m!7178424))

(declare-fun m!7178426 () Bool)

(assert (=> b!6376989 m!7178426))

(declare-fun m!7178428 () Bool)

(assert (=> b!6376967 m!7178428))

(declare-fun m!7178430 () Bool)

(assert (=> b!6376967 m!7178430))

(declare-fun m!7178432 () Bool)

(assert (=> b!6376967 m!7178432))

(declare-fun m!7178434 () Bool)

(assert (=> b!6376967 m!7178434))

(declare-fun m!7178436 () Bool)

(assert (=> b!6376967 m!7178436))

(declare-fun m!7178438 () Bool)

(assert (=> b!6376986 m!7178438))

(declare-fun m!7178440 () Bool)

(assert (=> b!6376986 m!7178440))

(declare-fun m!7178442 () Bool)

(assert (=> b!6376986 m!7178442))

(declare-fun m!7178444 () Bool)

(assert (=> b!6376986 m!7178444))

(declare-fun m!7178446 () Bool)

(assert (=> b!6376986 m!7178446))

(declare-fun m!7178448 () Bool)

(assert (=> b!6376986 m!7178448))

(declare-fun m!7178450 () Bool)

(assert (=> b!6376986 m!7178450))

(declare-fun m!7178452 () Bool)

(assert (=> b!6376983 m!7178452))

(declare-fun m!7178454 () Bool)

(assert (=> b!6376983 m!7178454))

(declare-fun m!7178456 () Bool)

(assert (=> b!6376980 m!7178456))

(declare-fun m!7178458 () Bool)

(assert (=> b!6376980 m!7178458))

(declare-fun m!7178460 () Bool)

(assert (=> b!6376980 m!7178460))

(declare-fun m!7178462 () Bool)

(assert (=> b!6376980 m!7178462))

(assert (=> b!6376980 m!7178458))

(declare-fun m!7178464 () Bool)

(assert (=> b!6376980 m!7178464))

(assert (=> b!6376980 m!7178462))

(declare-fun m!7178466 () Bool)

(assert (=> b!6376980 m!7178466))

(declare-fun m!7178468 () Bool)

(assert (=> b!6376984 m!7178468))

(assert (=> b!6376984 m!7178468))

(declare-fun m!7178470 () Bool)

(assert (=> b!6376984 m!7178470))

(declare-fun m!7178472 () Bool)

(assert (=> b!6376976 m!7178472))

(declare-fun m!7178474 () Bool)

(assert (=> b!6376979 m!7178474))

(declare-fun m!7178476 () Bool)

(assert (=> b!6376979 m!7178476))

(declare-fun m!7178478 () Bool)

(assert (=> b!6376979 m!7178478))

(declare-fun m!7178480 () Bool)

(assert (=> b!6376975 m!7178480))

(declare-fun m!7178482 () Bool)

(assert (=> b!6376994 m!7178482))

(declare-fun m!7178484 () Bool)

(assert (=> b!6376982 m!7178484))

(declare-fun m!7178486 () Bool)

(assert (=> b!6376982 m!7178486))

(declare-fun m!7178488 () Bool)

(assert (=> b!6376982 m!7178488))

(declare-fun m!7178490 () Bool)

(assert (=> b!6376982 m!7178490))

(declare-fun m!7178492 () Bool)

(assert (=> b!6376982 m!7178492))

(declare-fun m!7178494 () Bool)

(assert (=> b!6376982 m!7178494))

(declare-fun m!7178496 () Bool)

(assert (=> b!6376982 m!7178496))

(declare-fun m!7178498 () Bool)

(assert (=> b!6376982 m!7178498))

(declare-fun m!7178500 () Bool)

(assert (=> b!6376982 m!7178500))

(declare-fun m!7178502 () Bool)

(assert (=> b!6376968 m!7178502))

(push 1)

(assert (not b!6376986))

(assert (not b!6376989))

(assert (not b!6376974))

(assert (not b!6376987))

(assert (not b!6376980))

(assert (not b!6376994))

(assert (not b!6376975))

(assert (not b!6376964))

(assert (not b!6376967))

(assert (not b!6376966))

(assert (not b!6376982))

(assert (not b!6376984))

(assert (not b!6376976))

(assert (not b!6376972))

(assert (not b!6376977))

(assert (not b!6376979))

(assert (not b!6376990))

(assert (not setNonEmpty!43505))

(assert (not start!631776))

(assert (not b!6376988))

(assert (not b!6376963))

(assert (not b!6376968))

(assert (not b!6376971))

(assert tp_is_empty!41829)

(assert (not b!6376983))

(assert (not b!6376970))

(assert (not b!6376991))

(assert (not b!6376962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1999874 () Bool)

(declare-fun res!2623211 () Bool)

(declare-fun e!3871380 () Bool)

(assert (=> d!1999874 (=> res!2623211 e!3871380)))

(assert (=> d!1999874 (= res!2623211 (is-ElementMatch!16288 r!7292))))

(assert (=> d!1999874 (= (validRegex!8024 r!7292) e!3871380)))

(declare-fun bm!544854 () Bool)

(declare-fun c!1161679 () Bool)

(declare-fun c!1161680 () Bool)

(declare-fun call!544860 () Bool)

(assert (=> bm!544854 (= call!544860 (validRegex!8024 (ite c!1161680 (reg!16617 r!7292) (ite c!1161679 (regOne!33089 r!7292) (regOne!33088 r!7292)))))))

(declare-fun b!6377136 () Bool)

(declare-fun e!3871379 () Bool)

(declare-fun e!3871378 () Bool)

(assert (=> b!6377136 (= e!3871379 e!3871378)))

(assert (=> b!6377136 (= c!1161679 (is-Union!16288 r!7292))))

(declare-fun b!6377137 () Bool)

(declare-fun res!2623212 () Bool)

(declare-fun e!3871383 () Bool)

(assert (=> b!6377137 (=> (not res!2623212) (not e!3871383))))

(declare-fun call!544859 () Bool)

(assert (=> b!6377137 (= res!2623212 call!544859)))

(assert (=> b!6377137 (= e!3871378 e!3871383)))

(declare-fun b!6377138 () Bool)

(declare-fun call!544861 () Bool)

(assert (=> b!6377138 (= e!3871383 call!544861)))

(declare-fun b!6377139 () Bool)

(declare-fun e!3871377 () Bool)

(declare-fun e!3871382 () Bool)

(assert (=> b!6377139 (= e!3871377 e!3871382)))

(declare-fun res!2623215 () Bool)

(assert (=> b!6377139 (=> (not res!2623215) (not e!3871382))))

(assert (=> b!6377139 (= res!2623215 call!544859)))

(declare-fun bm!544855 () Bool)

(assert (=> bm!544855 (= call!544859 call!544860)))

(declare-fun b!6377140 () Bool)

(declare-fun e!3871381 () Bool)

(assert (=> b!6377140 (= e!3871379 e!3871381)))

(declare-fun res!2623213 () Bool)

(assert (=> b!6377140 (= res!2623213 (not (nullable!6281 (reg!16617 r!7292))))))

(assert (=> b!6377140 (=> (not res!2623213) (not e!3871381))))

(declare-fun bm!544856 () Bool)

(assert (=> bm!544856 (= call!544861 (validRegex!8024 (ite c!1161679 (regTwo!33089 r!7292) (regTwo!33088 r!7292))))))

(declare-fun b!6377141 () Bool)

(declare-fun res!2623214 () Bool)

(assert (=> b!6377141 (=> res!2623214 e!3871377)))

(assert (=> b!6377141 (= res!2623214 (not (is-Concat!25133 r!7292)))))

(assert (=> b!6377141 (= e!3871378 e!3871377)))

(declare-fun b!6377142 () Bool)

(assert (=> b!6377142 (= e!3871380 e!3871379)))

(assert (=> b!6377142 (= c!1161680 (is-Star!16288 r!7292))))

(declare-fun b!6377143 () Bool)

(assert (=> b!6377143 (= e!3871381 call!544860)))

(declare-fun b!6377144 () Bool)

(assert (=> b!6377144 (= e!3871382 call!544861)))

(assert (= (and d!1999874 (not res!2623211)) b!6377142))

(assert (= (and b!6377142 c!1161680) b!6377140))

(assert (= (and b!6377142 (not c!1161680)) b!6377136))

(assert (= (and b!6377140 res!2623213) b!6377143))

(assert (= (and b!6377136 c!1161679) b!6377137))

(assert (= (and b!6377136 (not c!1161679)) b!6377141))

(assert (= (and b!6377137 res!2623212) b!6377138))

(assert (= (and b!6377141 (not res!2623214)) b!6377139))

(assert (= (and b!6377139 res!2623215) b!6377144))

(assert (= (or b!6377138 b!6377144) bm!544856))

(assert (= (or b!6377137 b!6377139) bm!544855))

(assert (= (or b!6377143 bm!544855) bm!544854))

(declare-fun m!7178604 () Bool)

(assert (=> bm!544854 m!7178604))

(declare-fun m!7178606 () Bool)

(assert (=> b!6377140 m!7178606))

(declare-fun m!7178608 () Bool)

(assert (=> bm!544856 m!7178608))

(assert (=> start!631776 d!1999874))

(declare-fun d!1999876 () Bool)

(declare-fun c!1161692 () Bool)

(assert (=> d!1999876 (= c!1161692 (and (is-ElementMatch!16288 (reg!16617 (regOne!33088 r!7292))) (= (c!1161661 (reg!16617 (regOne!33088 r!7292))) (h!71489 s!2326))))))

(declare-fun e!3871397 () (Set Context!11344))

(assert (=> d!1999876 (= (derivationStepZipperDown!1536 (reg!16617 (regOne!33088 r!7292)) lt!2369262 (h!71489 s!2326)) e!3871397)))

(declare-fun b!6377167 () Bool)

(declare-fun e!3871398 () (Set Context!11344))

(declare-fun call!544879 () (Set Context!11344))

(declare-fun call!544876 () (Set Context!11344))

(assert (=> b!6377167 (= e!3871398 (set.union call!544879 call!544876))))

(declare-fun call!544878 () List!65163)

(declare-fun c!1161695 () Bool)

(declare-fun c!1161691 () Bool)

(declare-fun bm!544869 () Bool)

(declare-fun $colon$colon!2149 (List!65163 Regex!16288) List!65163)

(assert (=> bm!544869 (= call!544878 ($colon$colon!2149 (exprs!6172 lt!2369262) (ite (or c!1161695 c!1161691) (regTwo!33088 (reg!16617 (regOne!33088 r!7292))) (reg!16617 (regOne!33088 r!7292)))))))

(declare-fun bm!544870 () Bool)

(declare-fun call!544875 () List!65163)

(assert (=> bm!544870 (= call!544875 call!544878)))

(declare-fun c!1161694 () Bool)

(declare-fun bm!544871 () Bool)

(assert (=> bm!544871 (= call!544879 (derivationStepZipperDown!1536 (ite c!1161694 (regOne!33089 (reg!16617 (regOne!33088 r!7292))) (regOne!33088 (reg!16617 (regOne!33088 r!7292)))) (ite c!1161694 lt!2369262 (Context!11345 call!544878)) (h!71489 s!2326)))))

(declare-fun b!6377168 () Bool)

(declare-fun e!3871396 () (Set Context!11344))

(assert (=> b!6377168 (= e!3871396 (as set.empty (Set Context!11344)))))

(declare-fun b!6377169 () Bool)

(declare-fun e!3871399 () (Set Context!11344))

(assert (=> b!6377169 (= e!3871398 e!3871399)))

(assert (=> b!6377169 (= c!1161691 (is-Concat!25133 (reg!16617 (regOne!33088 r!7292))))))

(declare-fun b!6377170 () Bool)

(declare-fun call!544877 () (Set Context!11344))

(assert (=> b!6377170 (= e!3871396 call!544877)))

(declare-fun b!6377171 () Bool)

(declare-fun e!3871400 () (Set Context!11344))

(assert (=> b!6377171 (= e!3871397 e!3871400)))

(assert (=> b!6377171 (= c!1161694 (is-Union!16288 (reg!16617 (regOne!33088 r!7292))))))

(declare-fun bm!544872 () Bool)

(assert (=> bm!544872 (= call!544877 call!544876)))

(declare-fun b!6377172 () Bool)

(declare-fun call!544874 () (Set Context!11344))

(assert (=> b!6377172 (= e!3871400 (set.union call!544879 call!544874))))

(declare-fun b!6377173 () Bool)

(declare-fun e!3871401 () Bool)

(assert (=> b!6377173 (= e!3871401 (nullable!6281 (regOne!33088 (reg!16617 (regOne!33088 r!7292)))))))

(declare-fun bm!544873 () Bool)

(assert (=> bm!544873 (= call!544876 call!544874)))

(declare-fun b!6377174 () Bool)

(assert (=> b!6377174 (= c!1161695 e!3871401)))

(declare-fun res!2623218 () Bool)

(assert (=> b!6377174 (=> (not res!2623218) (not e!3871401))))

(assert (=> b!6377174 (= res!2623218 (is-Concat!25133 (reg!16617 (regOne!33088 r!7292))))))

(assert (=> b!6377174 (= e!3871400 e!3871398)))

(declare-fun b!6377175 () Bool)

(assert (=> b!6377175 (= e!3871397 (set.insert lt!2369262 (as set.empty (Set Context!11344))))))

(declare-fun b!6377176 () Bool)

(declare-fun c!1161693 () Bool)

(assert (=> b!6377176 (= c!1161693 (is-Star!16288 (reg!16617 (regOne!33088 r!7292))))))

(assert (=> b!6377176 (= e!3871399 e!3871396)))

(declare-fun b!6377177 () Bool)

(assert (=> b!6377177 (= e!3871399 call!544877)))

(declare-fun bm!544874 () Bool)

(assert (=> bm!544874 (= call!544874 (derivationStepZipperDown!1536 (ite c!1161694 (regTwo!33089 (reg!16617 (regOne!33088 r!7292))) (ite c!1161695 (regTwo!33088 (reg!16617 (regOne!33088 r!7292))) (ite c!1161691 (regOne!33088 (reg!16617 (regOne!33088 r!7292))) (reg!16617 (reg!16617 (regOne!33088 r!7292)))))) (ite (or c!1161694 c!1161695) lt!2369262 (Context!11345 call!544875)) (h!71489 s!2326)))))

(assert (= (and d!1999876 c!1161692) b!6377175))

(assert (= (and d!1999876 (not c!1161692)) b!6377171))

(assert (= (and b!6377171 c!1161694) b!6377172))

(assert (= (and b!6377171 (not c!1161694)) b!6377174))

(assert (= (and b!6377174 res!2623218) b!6377173))

(assert (= (and b!6377174 c!1161695) b!6377167))

(assert (= (and b!6377174 (not c!1161695)) b!6377169))

(assert (= (and b!6377169 c!1161691) b!6377177))

(assert (= (and b!6377169 (not c!1161691)) b!6377176))

(assert (= (and b!6377176 c!1161693) b!6377170))

(assert (= (and b!6377176 (not c!1161693)) b!6377168))

(assert (= (or b!6377177 b!6377170) bm!544870))

(assert (= (or b!6377177 b!6377170) bm!544872))

(assert (= (or b!6377167 bm!544870) bm!544869))

(assert (= (or b!6377167 bm!544872) bm!544873))

(assert (= (or b!6377172 bm!544873) bm!544874))

(assert (= (or b!6377172 b!6377167) bm!544871))

(declare-fun m!7178610 () Bool)

(assert (=> bm!544869 m!7178610))

(declare-fun m!7178612 () Bool)

(assert (=> bm!544874 m!7178612))

(assert (=> b!6377175 m!7178496))

(declare-fun m!7178614 () Bool)

(assert (=> bm!544871 m!7178614))

(declare-fun m!7178616 () Bool)

(assert (=> b!6377173 m!7178616))

(assert (=> b!6376970 d!1999876))

(declare-fun b!6377196 () Bool)

(declare-fun lt!2369376 () Unit!158483)

(declare-fun lt!2369375 () Unit!158483)

(assert (=> b!6377196 (= lt!2369376 lt!2369375)))

(declare-fun ++!14357 (List!65165 List!65165) List!65165)

(assert (=> b!6377196 (= (++!14357 (++!14357 Nil!65041 (Cons!65041 (h!71489 s!2326) Nil!65041)) (t!378769 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2452 (List!65165 C!32846 List!65165 List!65165) Unit!158483)

(assert (=> b!6377196 (= lt!2369375 (lemmaMoveElementToOtherListKeepsConcatEq!2452 Nil!65041 (h!71489 s!2326) (t!378769 s!2326) s!2326))))

(declare-fun e!3871413 () Option!16179)

(assert (=> b!6377196 (= e!3871413 (findConcatSeparation!2593 (regOne!33088 r!7292) (regTwo!33088 r!7292) (++!14357 Nil!65041 (Cons!65041 (h!71489 s!2326) Nil!65041)) (t!378769 s!2326) s!2326))))

(declare-fun b!6377197 () Bool)

(declare-fun e!3871414 () Bool)

(assert (=> b!6377197 (= e!3871414 (matchR!8471 (regTwo!33088 r!7292) s!2326))))

(declare-fun b!6377198 () Bool)

(declare-fun e!3871412 () Option!16179)

(assert (=> b!6377198 (= e!3871412 e!3871413)))

(declare-fun c!1161701 () Bool)

(assert (=> b!6377198 (= c!1161701 (is-Nil!65041 s!2326))))

(declare-fun d!1999878 () Bool)

(declare-fun e!3871415 () Bool)

(assert (=> d!1999878 e!3871415))

(declare-fun res!2623231 () Bool)

(assert (=> d!1999878 (=> res!2623231 e!3871415)))

(declare-fun e!3871416 () Bool)

(assert (=> d!1999878 (= res!2623231 e!3871416)))

(declare-fun res!2623232 () Bool)

(assert (=> d!1999878 (=> (not res!2623232) (not e!3871416))))

(declare-fun lt!2369377 () Option!16179)

(assert (=> d!1999878 (= res!2623232 (isDefined!12882 lt!2369377))))

(assert (=> d!1999878 (= lt!2369377 e!3871412)))

(declare-fun c!1161700 () Bool)

(assert (=> d!1999878 (= c!1161700 e!3871414)))

(declare-fun res!2623230 () Bool)

(assert (=> d!1999878 (=> (not res!2623230) (not e!3871414))))

(assert (=> d!1999878 (= res!2623230 (matchR!8471 (regOne!33088 r!7292) Nil!65041))))

(assert (=> d!1999878 (validRegex!8024 (regOne!33088 r!7292))))

(assert (=> d!1999878 (= (findConcatSeparation!2593 (regOne!33088 r!7292) (regTwo!33088 r!7292) Nil!65041 s!2326 s!2326) lt!2369377)))

(declare-fun b!6377199 () Bool)

(assert (=> b!6377199 (= e!3871415 (not (isDefined!12882 lt!2369377)))))

(declare-fun b!6377200 () Bool)

(assert (=> b!6377200 (= e!3871412 (Some!16178 (tuple2!66535 Nil!65041 s!2326)))))

(declare-fun b!6377201 () Bool)

(declare-fun get!22517 (Option!16179) tuple2!66534)

(assert (=> b!6377201 (= e!3871416 (= (++!14357 (_1!36570 (get!22517 lt!2369377)) (_2!36570 (get!22517 lt!2369377))) s!2326))))

(declare-fun b!6377202 () Bool)

(declare-fun res!2623229 () Bool)

(assert (=> b!6377202 (=> (not res!2623229) (not e!3871416))))

(assert (=> b!6377202 (= res!2623229 (matchR!8471 (regTwo!33088 r!7292) (_2!36570 (get!22517 lt!2369377))))))

(declare-fun b!6377203 () Bool)

(declare-fun res!2623233 () Bool)

(assert (=> b!6377203 (=> (not res!2623233) (not e!3871416))))

(assert (=> b!6377203 (= res!2623233 (matchR!8471 (regOne!33088 r!7292) (_1!36570 (get!22517 lt!2369377))))))

(declare-fun b!6377204 () Bool)

(assert (=> b!6377204 (= e!3871413 None!16178)))

(assert (= (and d!1999878 res!2623230) b!6377197))

(assert (= (and d!1999878 c!1161700) b!6377200))

(assert (= (and d!1999878 (not c!1161700)) b!6377198))

(assert (= (and b!6377198 c!1161701) b!6377204))

(assert (= (and b!6377198 (not c!1161701)) b!6377196))

(assert (= (and d!1999878 res!2623232) b!6377203))

(assert (= (and b!6377203 res!2623233) b!6377202))

(assert (= (and b!6377202 res!2623229) b!6377201))

(assert (= (and d!1999878 (not res!2623231)) b!6377199))

(declare-fun m!7178618 () Bool)

(assert (=> b!6377201 m!7178618))

(declare-fun m!7178620 () Bool)

(assert (=> b!6377201 m!7178620))

(declare-fun m!7178622 () Bool)

(assert (=> b!6377199 m!7178622))

(declare-fun m!7178624 () Bool)

(assert (=> b!6377196 m!7178624))

(assert (=> b!6377196 m!7178624))

(declare-fun m!7178626 () Bool)

(assert (=> b!6377196 m!7178626))

(declare-fun m!7178628 () Bool)

(assert (=> b!6377196 m!7178628))

(assert (=> b!6377196 m!7178624))

(declare-fun m!7178630 () Bool)

(assert (=> b!6377196 m!7178630))

(declare-fun m!7178632 () Bool)

(assert (=> b!6377197 m!7178632))

(assert (=> b!6377203 m!7178618))

(declare-fun m!7178634 () Bool)

(assert (=> b!6377203 m!7178634))

(assert (=> b!6377202 m!7178618))

(declare-fun m!7178636 () Bool)

(assert (=> b!6377202 m!7178636))

(assert (=> d!1999878 m!7178622))

(declare-fun m!7178638 () Bool)

(assert (=> d!1999878 m!7178638))

(declare-fun m!7178640 () Bool)

(assert (=> d!1999878 m!7178640))

(assert (=> b!6376980 d!1999878))

(declare-fun d!1999880 () Bool)

(declare-fun choose!47405 (Int) Bool)

(assert (=> d!1999880 (= (Exists!3358 lambda!351595) (choose!47405 lambda!351595))))

(declare-fun bs!1596726 () Bool)

(assert (= bs!1596726 d!1999880))

(declare-fun m!7178642 () Bool)

(assert (=> bs!1596726 m!7178642))

(assert (=> b!6376980 d!1999880))

(declare-fun d!1999882 () Bool)

(assert (=> d!1999882 (= (Exists!3358 lambda!351594) (choose!47405 lambda!351594))))

(declare-fun bs!1596727 () Bool)

(assert (= bs!1596727 d!1999882))

(declare-fun m!7178644 () Bool)

(assert (=> bs!1596727 m!7178644))

(assert (=> b!6376980 d!1999882))

(declare-fun bs!1596728 () Bool)

(declare-fun d!1999884 () Bool)

(assert (= bs!1596728 (and d!1999884 b!6376980)))

(declare-fun lambda!351616 () Int)

(assert (=> bs!1596728 (= lambda!351616 lambda!351594)))

(assert (=> bs!1596728 (not (= lambda!351616 lambda!351595))))

(assert (=> d!1999884 true))

(assert (=> d!1999884 true))

(assert (=> d!1999884 true))

(assert (=> d!1999884 (= (isDefined!12882 (findConcatSeparation!2593 (regOne!33088 r!7292) (regTwo!33088 r!7292) Nil!65041 s!2326 s!2326)) (Exists!3358 lambda!351616))))

(declare-fun lt!2369380 () Unit!158483)

(declare-fun choose!47406 (Regex!16288 Regex!16288 List!65165) Unit!158483)

(assert (=> d!1999884 (= lt!2369380 (choose!47406 (regOne!33088 r!7292) (regTwo!33088 r!7292) s!2326))))

(assert (=> d!1999884 (validRegex!8024 (regOne!33088 r!7292))))

(assert (=> d!1999884 (= (lemmaFindConcatSeparationEquivalentToExists!2357 (regOne!33088 r!7292) (regTwo!33088 r!7292) s!2326) lt!2369380)))

(declare-fun bs!1596729 () Bool)

(assert (= bs!1596729 d!1999884))

(declare-fun m!7178646 () Bool)

(assert (=> bs!1596729 m!7178646))

(assert (=> bs!1596729 m!7178458))

(declare-fun m!7178648 () Bool)

(assert (=> bs!1596729 m!7178648))

(assert (=> bs!1596729 m!7178640))

(assert (=> bs!1596729 m!7178458))

(assert (=> bs!1596729 m!7178460))

(assert (=> b!6376980 d!1999884))

(declare-fun bs!1596730 () Bool)

(declare-fun d!1999886 () Bool)

(assert (= bs!1596730 (and d!1999886 b!6376980)))

(declare-fun lambda!351621 () Int)

(assert (=> bs!1596730 (= lambda!351621 lambda!351594)))

(assert (=> bs!1596730 (not (= lambda!351621 lambda!351595))))

(declare-fun bs!1596731 () Bool)

(assert (= bs!1596731 (and d!1999886 d!1999884)))

(assert (=> bs!1596731 (= lambda!351621 lambda!351616)))

(assert (=> d!1999886 true))

(assert (=> d!1999886 true))

(assert (=> d!1999886 true))

(declare-fun lambda!351622 () Int)

(assert (=> bs!1596730 (not (= lambda!351622 lambda!351594))))

(assert (=> bs!1596730 (= lambda!351622 lambda!351595)))

(assert (=> bs!1596731 (not (= lambda!351622 lambda!351616))))

(declare-fun bs!1596732 () Bool)

(assert (= bs!1596732 d!1999886))

(assert (=> bs!1596732 (not (= lambda!351622 lambda!351621))))

(assert (=> d!1999886 true))

(assert (=> d!1999886 true))

(assert (=> d!1999886 true))

(assert (=> d!1999886 (= (Exists!3358 lambda!351621) (Exists!3358 lambda!351622))))

(declare-fun lt!2369383 () Unit!158483)

(declare-fun choose!47407 (Regex!16288 Regex!16288 List!65165) Unit!158483)

(assert (=> d!1999886 (= lt!2369383 (choose!47407 (regOne!33088 r!7292) (regTwo!33088 r!7292) s!2326))))

(assert (=> d!1999886 (validRegex!8024 (regOne!33088 r!7292))))

(assert (=> d!1999886 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1895 (regOne!33088 r!7292) (regTwo!33088 r!7292) s!2326) lt!2369383)))

(declare-fun m!7178650 () Bool)

(assert (=> bs!1596732 m!7178650))

(declare-fun m!7178652 () Bool)

(assert (=> bs!1596732 m!7178652))

(declare-fun m!7178654 () Bool)

(assert (=> bs!1596732 m!7178654))

(assert (=> bs!1596732 m!7178640))

(assert (=> b!6376980 d!1999886))

(declare-fun d!1999888 () Bool)

(declare-fun isEmpty!37167 (Option!16179) Bool)

(assert (=> d!1999888 (= (isDefined!12882 (findConcatSeparation!2593 (regOne!33088 r!7292) (regTwo!33088 r!7292) Nil!65041 s!2326 s!2326)) (not (isEmpty!37167 (findConcatSeparation!2593 (regOne!33088 r!7292) (regTwo!33088 r!7292) Nil!65041 s!2326 s!2326))))))

(declare-fun bs!1596733 () Bool)

(assert (= bs!1596733 d!1999888))

(assert (=> bs!1596733 m!7178458))

(declare-fun m!7178656 () Bool)

(assert (=> bs!1596733 m!7178656))

(assert (=> b!6376980 d!1999888))

(declare-fun d!1999890 () Bool)

(declare-fun lt!2369386 () Regex!16288)

(assert (=> d!1999890 (validRegex!8024 lt!2369386)))

(assert (=> d!1999890 (= lt!2369386 (generalisedUnion!2132 (unfocusZipperList!1709 zl!343)))))

(assert (=> d!1999890 (= (unfocusZipper!2030 zl!343) lt!2369386)))

(declare-fun bs!1596734 () Bool)

(assert (= bs!1596734 d!1999890))

(declare-fun m!7178658 () Bool)

(assert (=> bs!1596734 m!7178658))

(assert (=> bs!1596734 m!7178468))

(assert (=> bs!1596734 m!7178468))

(assert (=> bs!1596734 m!7178470))

(assert (=> b!6376971 d!1999890))

(declare-fun bs!1596735 () Bool)

(declare-fun b!6377251 () Bool)

(assert (= bs!1596735 (and b!6377251 d!1999886)))

(declare-fun lambda!351627 () Int)

(assert (=> bs!1596735 (not (= lambda!351627 lambda!351621))))

(declare-fun bs!1596736 () Bool)

(assert (= bs!1596736 (and b!6377251 b!6376980)))

(assert (=> bs!1596736 (not (= lambda!351627 lambda!351595))))

(assert (=> bs!1596736 (not (= lambda!351627 lambda!351594))))

(declare-fun bs!1596737 () Bool)

(assert (= bs!1596737 (and b!6377251 d!1999884)))

(assert (=> bs!1596737 (not (= lambda!351627 lambda!351616))))

(assert (=> bs!1596735 (not (= lambda!351627 lambda!351622))))

(assert (=> b!6377251 true))

(assert (=> b!6377251 true))

(declare-fun bs!1596738 () Bool)

(declare-fun b!6377257 () Bool)

(assert (= bs!1596738 (and b!6377257 d!1999886)))

(declare-fun lambda!351628 () Int)

(assert (=> bs!1596738 (not (= lambda!351628 lambda!351621))))

(declare-fun bs!1596739 () Bool)

(assert (= bs!1596739 (and b!6377257 b!6376980)))

(assert (=> bs!1596739 (= lambda!351628 lambda!351595)))

(assert (=> bs!1596739 (not (= lambda!351628 lambda!351594))))

(declare-fun bs!1596740 () Bool)

(assert (= bs!1596740 (and b!6377257 b!6377251)))

(assert (=> bs!1596740 (not (= lambda!351628 lambda!351627))))

(declare-fun bs!1596741 () Bool)

(assert (= bs!1596741 (and b!6377257 d!1999884)))

(assert (=> bs!1596741 (not (= lambda!351628 lambda!351616))))

(assert (=> bs!1596738 (= lambda!351628 lambda!351622)))

(assert (=> b!6377257 true))

(assert (=> b!6377257 true))

(declare-fun bm!544879 () Bool)

(declare-fun c!1161713 () Bool)

(declare-fun call!544885 () Bool)

(assert (=> bm!544879 (= call!544885 (Exists!3358 (ite c!1161713 lambda!351627 lambda!351628)))))

(declare-fun b!6377249 () Bool)

(declare-fun res!2623262 () Bool)

(declare-fun e!3871441 () Bool)

(assert (=> b!6377249 (=> res!2623262 e!3871441)))

(declare-fun call!544884 () Bool)

(assert (=> b!6377249 (= res!2623262 call!544884)))

(declare-fun e!3871444 () Bool)

(assert (=> b!6377249 (= e!3871444 e!3871441)))

(declare-fun b!6377250 () Bool)

(declare-fun e!3871445 () Bool)

(declare-fun e!3871446 () Bool)

(assert (=> b!6377250 (= e!3871445 e!3871446)))

(declare-fun res!2623263 () Bool)

(assert (=> b!6377250 (= res!2623263 (matchRSpec!3389 (regOne!33089 r!7292) s!2326))))

(assert (=> b!6377250 (=> res!2623263 e!3871446)))

(assert (=> b!6377251 (= e!3871441 call!544885)))

(declare-fun b!6377252 () Bool)

(declare-fun e!3871447 () Bool)

(assert (=> b!6377252 (= e!3871447 (= s!2326 (Cons!65041 (c!1161661 r!7292) Nil!65041)))))

(declare-fun b!6377253 () Bool)

(declare-fun c!1161712 () Bool)

(assert (=> b!6377253 (= c!1161712 (is-Union!16288 r!7292))))

(assert (=> b!6377253 (= e!3871447 e!3871445)))

(declare-fun bm!544880 () Bool)

(declare-fun isEmpty!37168 (List!65165) Bool)

(assert (=> bm!544880 (= call!544884 (isEmpty!37168 s!2326))))

(declare-fun b!6377254 () Bool)

(assert (=> b!6377254 (= e!3871445 e!3871444)))

(assert (=> b!6377254 (= c!1161713 (is-Star!16288 r!7292))))

(declare-fun b!6377255 () Bool)

(declare-fun e!3871443 () Bool)

(declare-fun e!3871442 () Bool)

(assert (=> b!6377255 (= e!3871443 e!3871442)))

(declare-fun res!2623264 () Bool)

(assert (=> b!6377255 (= res!2623264 (not (is-EmptyLang!16288 r!7292)))))

(assert (=> b!6377255 (=> (not res!2623264) (not e!3871442))))

(declare-fun b!6377256 () Bool)

(declare-fun c!1161711 () Bool)

(assert (=> b!6377256 (= c!1161711 (is-ElementMatch!16288 r!7292))))

(assert (=> b!6377256 (= e!3871442 e!3871447)))

(assert (=> b!6377257 (= e!3871444 call!544885)))

(declare-fun b!6377258 () Bool)

(assert (=> b!6377258 (= e!3871446 (matchRSpec!3389 (regTwo!33089 r!7292) s!2326))))

(declare-fun b!6377259 () Bool)

(assert (=> b!6377259 (= e!3871443 call!544884)))

(declare-fun d!1999892 () Bool)

(declare-fun c!1161710 () Bool)

(assert (=> d!1999892 (= c!1161710 (is-EmptyExpr!16288 r!7292))))

(assert (=> d!1999892 (= (matchRSpec!3389 r!7292 s!2326) e!3871443)))

(assert (= (and d!1999892 c!1161710) b!6377259))

(assert (= (and d!1999892 (not c!1161710)) b!6377255))

(assert (= (and b!6377255 res!2623264) b!6377256))

(assert (= (and b!6377256 c!1161711) b!6377252))

(assert (= (and b!6377256 (not c!1161711)) b!6377253))

(assert (= (and b!6377253 c!1161712) b!6377250))

(assert (= (and b!6377253 (not c!1161712)) b!6377254))

(assert (= (and b!6377250 (not res!2623263)) b!6377258))

(assert (= (and b!6377254 c!1161713) b!6377249))

(assert (= (and b!6377254 (not c!1161713)) b!6377257))

(assert (= (and b!6377249 (not res!2623262)) b!6377251))

(assert (= (or b!6377251 b!6377257) bm!544879))

(assert (= (or b!6377259 b!6377249) bm!544880))

(declare-fun m!7178660 () Bool)

(assert (=> bm!544879 m!7178660))

(declare-fun m!7178662 () Bool)

(assert (=> b!6377250 m!7178662))

(declare-fun m!7178664 () Bool)

(assert (=> bm!544880 m!7178664))

(declare-fun m!7178666 () Bool)

(assert (=> b!6377258 m!7178666))

(assert (=> b!6376979 d!1999892))

(declare-fun b!6377289 () Bool)

(declare-fun res!2623285 () Bool)

(declare-fun e!3871466 () Bool)

(assert (=> b!6377289 (=> res!2623285 e!3871466)))

(declare-fun e!3871464 () Bool)

(assert (=> b!6377289 (= res!2623285 e!3871464)))

(declare-fun res!2623282 () Bool)

(assert (=> b!6377289 (=> (not res!2623282) (not e!3871464))))

(declare-fun lt!2369389 () Bool)

(assert (=> b!6377289 (= res!2623282 lt!2369389)))

(declare-fun b!6377290 () Bool)

(declare-fun e!3871468 () Bool)

(declare-fun head!13068 (List!65165) C!32846)

(assert (=> b!6377290 (= e!3871468 (not (= (head!13068 s!2326) (c!1161661 r!7292))))))

(declare-fun b!6377291 () Bool)

(declare-fun res!2623288 () Bool)

(assert (=> b!6377291 (=> res!2623288 e!3871466)))

(assert (=> b!6377291 (= res!2623288 (not (is-ElementMatch!16288 r!7292)))))

(declare-fun e!3871467 () Bool)

(assert (=> b!6377291 (= e!3871467 e!3871466)))

(declare-fun b!6377292 () Bool)

(declare-fun e!3871462 () Bool)

(assert (=> b!6377292 (= e!3871466 e!3871462)))

(declare-fun res!2623287 () Bool)

(assert (=> b!6377292 (=> (not res!2623287) (not e!3871462))))

(assert (=> b!6377292 (= res!2623287 (not lt!2369389))))

(declare-fun b!6377293 () Bool)

(declare-fun res!2623281 () Bool)

(assert (=> b!6377293 (=> (not res!2623281) (not e!3871464))))

(declare-fun tail!12153 (List!65165) List!65165)

(assert (=> b!6377293 (= res!2623281 (isEmpty!37168 (tail!12153 s!2326)))))

(declare-fun b!6377294 () Bool)

(assert (=> b!6377294 (= e!3871462 e!3871468)))

(declare-fun res!2623283 () Bool)

(assert (=> b!6377294 (=> res!2623283 e!3871468)))

(declare-fun call!544888 () Bool)

(assert (=> b!6377294 (= res!2623283 call!544888)))

(declare-fun b!6377295 () Bool)

(declare-fun e!3871465 () Bool)

(assert (=> b!6377295 (= e!3871465 (= lt!2369389 call!544888))))

(declare-fun b!6377296 () Bool)

(assert (=> b!6377296 (= e!3871464 (= (head!13068 s!2326) (c!1161661 r!7292)))))

(declare-fun b!6377297 () Bool)

(assert (=> b!6377297 (= e!3871465 e!3871467)))

(declare-fun c!1161720 () Bool)

(assert (=> b!6377297 (= c!1161720 (is-EmptyLang!16288 r!7292))))

(declare-fun b!6377298 () Bool)

(assert (=> b!6377298 (= e!3871467 (not lt!2369389))))

(declare-fun b!6377299 () Bool)

(declare-fun e!3871463 () Bool)

(declare-fun derivativeStep!4993 (Regex!16288 C!32846) Regex!16288)

(assert (=> b!6377299 (= e!3871463 (matchR!8471 (derivativeStep!4993 r!7292 (head!13068 s!2326)) (tail!12153 s!2326)))))

(declare-fun b!6377288 () Bool)

(declare-fun res!2623284 () Bool)

(assert (=> b!6377288 (=> res!2623284 e!3871468)))

(assert (=> b!6377288 (= res!2623284 (not (isEmpty!37168 (tail!12153 s!2326))))))

(declare-fun d!1999894 () Bool)

(assert (=> d!1999894 e!3871465))

(declare-fun c!1161721 () Bool)

(assert (=> d!1999894 (= c!1161721 (is-EmptyExpr!16288 r!7292))))

(assert (=> d!1999894 (= lt!2369389 e!3871463)))

(declare-fun c!1161722 () Bool)

(assert (=> d!1999894 (= c!1161722 (isEmpty!37168 s!2326))))

(assert (=> d!1999894 (validRegex!8024 r!7292)))

(assert (=> d!1999894 (= (matchR!8471 r!7292 s!2326) lt!2369389)))

(declare-fun bm!544883 () Bool)

(assert (=> bm!544883 (= call!544888 (isEmpty!37168 s!2326))))

(declare-fun b!6377300 () Bool)

(declare-fun res!2623286 () Bool)

(assert (=> b!6377300 (=> (not res!2623286) (not e!3871464))))

(assert (=> b!6377300 (= res!2623286 (not call!544888))))

(declare-fun b!6377301 () Bool)

(assert (=> b!6377301 (= e!3871463 (nullable!6281 r!7292))))

(assert (= (and d!1999894 c!1161722) b!6377301))

(assert (= (and d!1999894 (not c!1161722)) b!6377299))

(assert (= (and d!1999894 c!1161721) b!6377295))

(assert (= (and d!1999894 (not c!1161721)) b!6377297))

(assert (= (and b!6377297 c!1161720) b!6377298))

(assert (= (and b!6377297 (not c!1161720)) b!6377291))

(assert (= (and b!6377291 (not res!2623288)) b!6377289))

(assert (= (and b!6377289 res!2623282) b!6377300))

(assert (= (and b!6377300 res!2623286) b!6377293))

(assert (= (and b!6377293 res!2623281) b!6377296))

(assert (= (and b!6377289 (not res!2623285)) b!6377292))

(assert (= (and b!6377292 res!2623287) b!6377294))

(assert (= (and b!6377294 (not res!2623283)) b!6377288))

(assert (= (and b!6377288 (not res!2623284)) b!6377290))

(assert (= (or b!6377295 b!6377300 b!6377294) bm!544883))

(declare-fun m!7178668 () Bool)

(assert (=> b!6377296 m!7178668))

(declare-fun m!7178670 () Bool)

(assert (=> b!6377288 m!7178670))

(assert (=> b!6377288 m!7178670))

(declare-fun m!7178672 () Bool)

(assert (=> b!6377288 m!7178672))

(assert (=> b!6377290 m!7178668))

(assert (=> b!6377293 m!7178670))

(assert (=> b!6377293 m!7178670))

(assert (=> b!6377293 m!7178672))

(assert (=> bm!544883 m!7178664))

(assert (=> b!6377299 m!7178668))

(assert (=> b!6377299 m!7178668))

(declare-fun m!7178674 () Bool)

(assert (=> b!6377299 m!7178674))

(assert (=> b!6377299 m!7178670))

(assert (=> b!6377299 m!7178674))

(assert (=> b!6377299 m!7178670))

(declare-fun m!7178676 () Bool)

(assert (=> b!6377299 m!7178676))

(declare-fun m!7178678 () Bool)

(assert (=> b!6377301 m!7178678))

(assert (=> d!1999894 m!7178664))

(assert (=> d!1999894 m!7178420))

(assert (=> b!6376979 d!1999894))

(declare-fun d!1999896 () Bool)

(assert (=> d!1999896 (= (matchR!8471 r!7292 s!2326) (matchRSpec!3389 r!7292 s!2326))))

(declare-fun lt!2369392 () Unit!158483)

(declare-fun choose!47408 (Regex!16288 List!65165) Unit!158483)

(assert (=> d!1999896 (= lt!2369392 (choose!47408 r!7292 s!2326))))

(assert (=> d!1999896 (validRegex!8024 r!7292)))

(assert (=> d!1999896 (= (mainMatchTheorem!3389 r!7292 s!2326) lt!2369392)))

(declare-fun bs!1596742 () Bool)

(assert (= bs!1596742 d!1999896))

(assert (=> bs!1596742 m!7178476))

(assert (=> bs!1596742 m!7178474))

(declare-fun m!7178680 () Bool)

(assert (=> bs!1596742 m!7178680))

(assert (=> bs!1596742 m!7178420))

(assert (=> b!6376979 d!1999896))

(declare-fun d!1999898 () Bool)

(assert (=> d!1999898 (= (isEmpty!37164 (t!378768 zl!343)) (is-Nil!65040 (t!378768 zl!343)))))

(assert (=> b!6376989 d!1999898))

(declare-fun d!1999900 () Bool)

(declare-fun e!3871471 () Bool)

(assert (=> d!1999900 (= (matchZipper!2300 (set.union lt!2369253 lt!2369274) (t!378769 s!2326)) e!3871471)))

(declare-fun res!2623291 () Bool)

(assert (=> d!1999900 (=> res!2623291 e!3871471)))

(assert (=> d!1999900 (= res!2623291 (matchZipper!2300 lt!2369253 (t!378769 s!2326)))))

(declare-fun lt!2369395 () Unit!158483)

(declare-fun choose!47409 ((Set Context!11344) (Set Context!11344) List!65165) Unit!158483)

(assert (=> d!1999900 (= lt!2369395 (choose!47409 lt!2369253 lt!2369274 (t!378769 s!2326)))))

(assert (=> d!1999900 (= (lemmaZipperConcatMatchesSameAsBothZippers!1119 lt!2369253 lt!2369274 (t!378769 s!2326)) lt!2369395)))

(declare-fun b!6377304 () Bool)

(assert (=> b!6377304 (= e!3871471 (matchZipper!2300 lt!2369274 (t!378769 s!2326)))))

(assert (= (and d!1999900 (not res!2623291)) b!6377304))

(assert (=> d!1999900 m!7178412))

(assert (=> d!1999900 m!7178410))

(declare-fun m!7178682 () Bool)

(assert (=> d!1999900 m!7178682))

(assert (=> b!6377304 m!7178472))

(assert (=> b!6376977 d!1999900))

(declare-fun d!1999902 () Bool)

(declare-fun c!1161725 () Bool)

(assert (=> d!1999902 (= c!1161725 (isEmpty!37168 (t!378769 s!2326)))))

(declare-fun e!3871474 () Bool)

(assert (=> d!1999902 (= (matchZipper!2300 lt!2369253 (t!378769 s!2326)) e!3871474)))

(declare-fun b!6377309 () Bool)

(declare-fun nullableZipper!2054 ((Set Context!11344)) Bool)

(assert (=> b!6377309 (= e!3871474 (nullableZipper!2054 lt!2369253))))

(declare-fun b!6377310 () Bool)

(assert (=> b!6377310 (= e!3871474 (matchZipper!2300 (derivationStepZipper!2254 lt!2369253 (head!13068 (t!378769 s!2326))) (tail!12153 (t!378769 s!2326))))))

(assert (= (and d!1999902 c!1161725) b!6377309))

(assert (= (and d!1999902 (not c!1161725)) b!6377310))

(declare-fun m!7178684 () Bool)

(assert (=> d!1999902 m!7178684))

(declare-fun m!7178686 () Bool)

(assert (=> b!6377309 m!7178686))

(declare-fun m!7178688 () Bool)

(assert (=> b!6377310 m!7178688))

(assert (=> b!6377310 m!7178688))

(declare-fun m!7178690 () Bool)

(assert (=> b!6377310 m!7178690))

(declare-fun m!7178692 () Bool)

(assert (=> b!6377310 m!7178692))

(assert (=> b!6377310 m!7178690))

(assert (=> b!6377310 m!7178692))

(declare-fun m!7178694 () Bool)

(assert (=> b!6377310 m!7178694))

(assert (=> b!6376977 d!1999902))

(declare-fun d!1999904 () Bool)

(declare-fun c!1161726 () Bool)

(assert (=> d!1999904 (= c!1161726 (isEmpty!37168 (t!378769 s!2326)))))

(declare-fun e!3871475 () Bool)

(assert (=> d!1999904 (= (matchZipper!2300 (set.union lt!2369253 lt!2369274) (t!378769 s!2326)) e!3871475)))

(declare-fun b!6377311 () Bool)

(assert (=> b!6377311 (= e!3871475 (nullableZipper!2054 (set.union lt!2369253 lt!2369274)))))

(declare-fun b!6377312 () Bool)

(assert (=> b!6377312 (= e!3871475 (matchZipper!2300 (derivationStepZipper!2254 (set.union lt!2369253 lt!2369274) (head!13068 (t!378769 s!2326))) (tail!12153 (t!378769 s!2326))))))

(assert (= (and d!1999904 c!1161726) b!6377311))

(assert (= (and d!1999904 (not c!1161726)) b!6377312))

(assert (=> d!1999904 m!7178684))

(declare-fun m!7178696 () Bool)

(assert (=> b!6377311 m!7178696))

(assert (=> b!6377312 m!7178688))

(assert (=> b!6377312 m!7178688))

(declare-fun m!7178698 () Bool)

(assert (=> b!6377312 m!7178698))

(assert (=> b!6377312 m!7178692))

(assert (=> b!6377312 m!7178698))

(assert (=> b!6377312 m!7178692))

(declare-fun m!7178700 () Bool)

(assert (=> b!6377312 m!7178700))

(assert (=> b!6376977 d!1999904))

(declare-fun d!1999906 () Bool)

(declare-fun nullableFct!2227 (Regex!16288) Bool)

(assert (=> d!1999906 (= (nullable!6281 (regOne!33088 (regOne!33088 r!7292))) (nullableFct!2227 (regOne!33088 (regOne!33088 r!7292))))))

(declare-fun bs!1596743 () Bool)

(assert (= bs!1596743 d!1999906))

(declare-fun m!7178702 () Bool)

(assert (=> bs!1596743 m!7178702))

(assert (=> b!6376987 d!1999906))

(declare-fun d!1999908 () Bool)

(declare-fun lambda!351631 () Int)

(declare-fun forall!15466 (List!65163 Int) Bool)

(assert (=> d!1999908 (= (inv!83968 lt!2369262) (forall!15466 (exprs!6172 lt!2369262) lambda!351631))))

(declare-fun bs!1596744 () Bool)

(assert (= bs!1596744 d!1999908))

(declare-fun m!7178704 () Bool)

(assert (=> bs!1596744 m!7178704))

(assert (=> b!6376968 d!1999908))

(declare-fun d!1999910 () Bool)

(declare-fun c!1161727 () Bool)

(assert (=> d!1999910 (= c!1161727 (isEmpty!37168 (t!378769 s!2326)))))

(declare-fun e!3871476 () Bool)

(assert (=> d!1999910 (= (matchZipper!2300 lt!2369274 (t!378769 s!2326)) e!3871476)))

(declare-fun b!6377313 () Bool)

(assert (=> b!6377313 (= e!3871476 (nullableZipper!2054 lt!2369274))))

(declare-fun b!6377314 () Bool)

(assert (=> b!6377314 (= e!3871476 (matchZipper!2300 (derivationStepZipper!2254 lt!2369274 (head!13068 (t!378769 s!2326))) (tail!12153 (t!378769 s!2326))))))

(assert (= (and d!1999910 c!1161727) b!6377313))

(assert (= (and d!1999910 (not c!1161727)) b!6377314))

(assert (=> d!1999910 m!7178684))

(declare-fun m!7178706 () Bool)

(assert (=> b!6377313 m!7178706))

(assert (=> b!6377314 m!7178688))

(assert (=> b!6377314 m!7178688))

(declare-fun m!7178708 () Bool)

(assert (=> b!6377314 m!7178708))

(assert (=> b!6377314 m!7178692))

(assert (=> b!6377314 m!7178708))

(assert (=> b!6377314 m!7178692))

(declare-fun m!7178710 () Bool)

(assert (=> b!6377314 m!7178710))

(assert (=> b!6376976 d!1999910))

(declare-fun b!6377325 () Bool)

(declare-fun e!3871483 () (Set Context!11344))

(declare-fun call!544891 () (Set Context!11344))

(assert (=> b!6377325 (= e!3871483 call!544891)))

(declare-fun b!6377326 () Bool)

(declare-fun e!3871484 () (Set Context!11344))

(assert (=> b!6377326 (= e!3871484 (set.union call!544891 (derivationStepZipperUp!1462 (Context!11345 (t!378767 (exprs!6172 lt!2369277))) (h!71489 s!2326))))))

(declare-fun b!6377327 () Bool)

(declare-fun e!3871485 () Bool)

(assert (=> b!6377327 (= e!3871485 (nullable!6281 (h!71487 (exprs!6172 lt!2369277))))))

(declare-fun b!6377328 () Bool)

(assert (=> b!6377328 (= e!3871483 (as set.empty (Set Context!11344)))))

(declare-fun d!1999912 () Bool)

(declare-fun c!1161733 () Bool)

(assert (=> d!1999912 (= c!1161733 e!3871485)))

(declare-fun res!2623294 () Bool)

(assert (=> d!1999912 (=> (not res!2623294) (not e!3871485))))

(assert (=> d!1999912 (= res!2623294 (is-Cons!65039 (exprs!6172 lt!2369277)))))

(assert (=> d!1999912 (= (derivationStepZipperUp!1462 lt!2369277 (h!71489 s!2326)) e!3871484)))

(declare-fun b!6377329 () Bool)

(assert (=> b!6377329 (= e!3871484 e!3871483)))

(declare-fun c!1161732 () Bool)

(assert (=> b!6377329 (= c!1161732 (is-Cons!65039 (exprs!6172 lt!2369277)))))

(declare-fun bm!544886 () Bool)

(assert (=> bm!544886 (= call!544891 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 lt!2369277)) (Context!11345 (t!378767 (exprs!6172 lt!2369277))) (h!71489 s!2326)))))

(assert (= (and d!1999912 res!2623294) b!6377327))

(assert (= (and d!1999912 c!1161733) b!6377326))

(assert (= (and d!1999912 (not c!1161733)) b!6377329))

(assert (= (and b!6377329 c!1161732) b!6377325))

(assert (= (and b!6377329 (not c!1161732)) b!6377328))

(assert (= (or b!6377326 b!6377325) bm!544886))

(declare-fun m!7178712 () Bool)

(assert (=> b!6377326 m!7178712))

(declare-fun m!7178714 () Bool)

(assert (=> b!6377327 m!7178714))

(declare-fun m!7178716 () Bool)

(assert (=> bm!544886 m!7178716))

(assert (=> b!6376986 d!1999912))

(declare-fun d!1999914 () Bool)

(declare-fun dynLambda!25806 (Int Context!11344) (Set Context!11344))

(assert (=> d!1999914 (= (flatMap!1793 z!1189 lambda!351596) (dynLambda!25806 lambda!351596 (h!71488 zl!343)))))

(declare-fun lt!2369398 () Unit!158483)

(declare-fun choose!47410 ((Set Context!11344) Context!11344 Int) Unit!158483)

(assert (=> d!1999914 (= lt!2369398 (choose!47410 z!1189 (h!71488 zl!343) lambda!351596))))

(assert (=> d!1999914 (= z!1189 (set.insert (h!71488 zl!343) (as set.empty (Set Context!11344))))))

(assert (=> d!1999914 (= (lemmaFlatMapOnSingletonSet!1319 z!1189 (h!71488 zl!343) lambda!351596) lt!2369398)))

(declare-fun b_lambda!242357 () Bool)

(assert (=> (not b_lambda!242357) (not d!1999914)))

(declare-fun bs!1596745 () Bool)

(assert (= bs!1596745 d!1999914))

(assert (=> bs!1596745 m!7178450))

(declare-fun m!7178718 () Bool)

(assert (=> bs!1596745 m!7178718))

(declare-fun m!7178720 () Bool)

(assert (=> bs!1596745 m!7178720))

(declare-fun m!7178722 () Bool)

(assert (=> bs!1596745 m!7178722))

(assert (=> b!6376986 d!1999914))

(declare-fun d!1999918 () Bool)

(assert (=> d!1999918 (= (nullable!6281 (h!71487 (exprs!6172 (h!71488 zl!343)))) (nullableFct!2227 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun bs!1596746 () Bool)

(assert (= bs!1596746 d!1999918))

(declare-fun m!7178724 () Bool)

(assert (=> bs!1596746 m!7178724))

(assert (=> b!6376986 d!1999918))

(declare-fun b!6377330 () Bool)

(declare-fun e!3871486 () (Set Context!11344))

(declare-fun call!544892 () (Set Context!11344))

(assert (=> b!6377330 (= e!3871486 call!544892)))

(declare-fun b!6377331 () Bool)

(declare-fun e!3871487 () (Set Context!11344))

(assert (=> b!6377331 (= e!3871487 (set.union call!544892 (derivationStepZipperUp!1462 (Context!11345 (t!378767 (exprs!6172 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343)))))))) (h!71489 s!2326))))))

(declare-fun b!6377332 () Bool)

(declare-fun e!3871488 () Bool)

(assert (=> b!6377332 (= e!3871488 (nullable!6281 (h!71487 (exprs!6172 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343)))))))))))

(declare-fun b!6377333 () Bool)

(assert (=> b!6377333 (= e!3871486 (as set.empty (Set Context!11344)))))

(declare-fun d!1999920 () Bool)

(declare-fun c!1161735 () Bool)

(assert (=> d!1999920 (= c!1161735 e!3871488)))

(declare-fun res!2623295 () Bool)

(assert (=> d!1999920 (=> (not res!2623295) (not e!3871488))))

(assert (=> d!1999920 (= res!2623295 (is-Cons!65039 (exprs!6172 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343))))))))))

(assert (=> d!1999920 (= (derivationStepZipperUp!1462 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343))))) (h!71489 s!2326)) e!3871487)))

(declare-fun b!6377334 () Bool)

(assert (=> b!6377334 (= e!3871487 e!3871486)))

(declare-fun c!1161734 () Bool)

(assert (=> b!6377334 (= c!1161734 (is-Cons!65039 (exprs!6172 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343))))))))))

(declare-fun bm!544887 () Bool)

(assert (=> bm!544887 (= call!544892 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343))))))) (Context!11345 (t!378767 (exprs!6172 (Context!11345 (Cons!65039 (h!71487 (exprs!6172 (h!71488 zl!343))) (t!378767 (exprs!6172 (h!71488 zl!343)))))))) (h!71489 s!2326)))))

(assert (= (and d!1999920 res!2623295) b!6377332))

(assert (= (and d!1999920 c!1161735) b!6377331))

(assert (= (and d!1999920 (not c!1161735)) b!6377334))

(assert (= (and b!6377334 c!1161734) b!6377330))

(assert (= (and b!6377334 (not c!1161734)) b!6377333))

(assert (= (or b!6377331 b!6377330) bm!544887))

(declare-fun m!7178726 () Bool)

(assert (=> b!6377331 m!7178726))

(declare-fun m!7178728 () Bool)

(assert (=> b!6377332 m!7178728))

(declare-fun m!7178730 () Bool)

(assert (=> bm!544887 m!7178730))

(assert (=> b!6376986 d!1999920))

(declare-fun b!6377335 () Bool)

(declare-fun e!3871489 () (Set Context!11344))

(declare-fun call!544893 () (Set Context!11344))

(assert (=> b!6377335 (= e!3871489 call!544893)))

(declare-fun e!3871490 () (Set Context!11344))

(declare-fun b!6377336 () Bool)

(assert (=> b!6377336 (= e!3871490 (set.union call!544893 (derivationStepZipperUp!1462 (Context!11345 (t!378767 (exprs!6172 (h!71488 zl!343)))) (h!71489 s!2326))))))

(declare-fun b!6377337 () Bool)

(declare-fun e!3871491 () Bool)

(assert (=> b!6377337 (= e!3871491 (nullable!6281 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6377338 () Bool)

(assert (=> b!6377338 (= e!3871489 (as set.empty (Set Context!11344)))))

(declare-fun d!1999922 () Bool)

(declare-fun c!1161737 () Bool)

(assert (=> d!1999922 (= c!1161737 e!3871491)))

(declare-fun res!2623296 () Bool)

(assert (=> d!1999922 (=> (not res!2623296) (not e!3871491))))

(assert (=> d!1999922 (= res!2623296 (is-Cons!65039 (exprs!6172 (h!71488 zl!343))))))

(assert (=> d!1999922 (= (derivationStepZipperUp!1462 (h!71488 zl!343) (h!71489 s!2326)) e!3871490)))

(declare-fun b!6377339 () Bool)

(assert (=> b!6377339 (= e!3871490 e!3871489)))

(declare-fun c!1161736 () Bool)

(assert (=> b!6377339 (= c!1161736 (is-Cons!65039 (exprs!6172 (h!71488 zl!343))))))

(declare-fun bm!544888 () Bool)

(assert (=> bm!544888 (= call!544893 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 (h!71488 zl!343))) (Context!11345 (t!378767 (exprs!6172 (h!71488 zl!343)))) (h!71489 s!2326)))))

(assert (= (and d!1999922 res!2623296) b!6377337))

(assert (= (and d!1999922 c!1161737) b!6377336))

(assert (= (and d!1999922 (not c!1161737)) b!6377339))

(assert (= (and b!6377339 c!1161736) b!6377335))

(assert (= (and b!6377339 (not c!1161736)) b!6377338))

(assert (= (or b!6377336 b!6377335) bm!544888))

(declare-fun m!7178732 () Bool)

(assert (=> b!6377336 m!7178732))

(assert (=> b!6377337 m!7178446))

(declare-fun m!7178734 () Bool)

(assert (=> bm!544888 m!7178734))

(assert (=> b!6376986 d!1999922))

(declare-fun d!1999924 () Bool)

(declare-fun choose!47411 ((Set Context!11344) Int) (Set Context!11344))

(assert (=> d!1999924 (= (flatMap!1793 z!1189 lambda!351596) (choose!47411 z!1189 lambda!351596))))

(declare-fun bs!1596747 () Bool)

(assert (= bs!1596747 d!1999924))

(declare-fun m!7178736 () Bool)

(assert (=> bs!1596747 m!7178736))

(assert (=> b!6376986 d!1999924))

(declare-fun d!1999926 () Bool)

(declare-fun c!1161739 () Bool)

(assert (=> d!1999926 (= c!1161739 (and (is-ElementMatch!16288 (h!71487 (exprs!6172 (h!71488 zl!343)))) (= (c!1161661 (h!71487 (exprs!6172 (h!71488 zl!343)))) (h!71489 s!2326))))))

(declare-fun e!3871493 () (Set Context!11344))

(assert (=> d!1999926 (= (derivationStepZipperDown!1536 (h!71487 (exprs!6172 (h!71488 zl!343))) lt!2369277 (h!71489 s!2326)) e!3871493)))

(declare-fun b!6377340 () Bool)

(declare-fun e!3871494 () (Set Context!11344))

(declare-fun call!544899 () (Set Context!11344))

(declare-fun call!544896 () (Set Context!11344))

(assert (=> b!6377340 (= e!3871494 (set.union call!544899 call!544896))))

(declare-fun bm!544889 () Bool)

(declare-fun call!544898 () List!65163)

(declare-fun c!1161738 () Bool)

(declare-fun c!1161742 () Bool)

(assert (=> bm!544889 (= call!544898 ($colon$colon!2149 (exprs!6172 lt!2369277) (ite (or c!1161742 c!1161738) (regTwo!33088 (h!71487 (exprs!6172 (h!71488 zl!343)))) (h!71487 (exprs!6172 (h!71488 zl!343))))))))

(declare-fun bm!544890 () Bool)

(declare-fun call!544895 () List!65163)

(assert (=> bm!544890 (= call!544895 call!544898)))

(declare-fun bm!544891 () Bool)

(declare-fun c!1161741 () Bool)

(assert (=> bm!544891 (= call!544899 (derivationStepZipperDown!1536 (ite c!1161741 (regOne!33089 (h!71487 (exprs!6172 (h!71488 zl!343)))) (regOne!33088 (h!71487 (exprs!6172 (h!71488 zl!343))))) (ite c!1161741 lt!2369277 (Context!11345 call!544898)) (h!71489 s!2326)))))

(declare-fun b!6377341 () Bool)

(declare-fun e!3871492 () (Set Context!11344))

(assert (=> b!6377341 (= e!3871492 (as set.empty (Set Context!11344)))))

(declare-fun b!6377342 () Bool)

(declare-fun e!3871495 () (Set Context!11344))

(assert (=> b!6377342 (= e!3871494 e!3871495)))

(assert (=> b!6377342 (= c!1161738 (is-Concat!25133 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6377343 () Bool)

(declare-fun call!544897 () (Set Context!11344))

(assert (=> b!6377343 (= e!3871492 call!544897)))

(declare-fun b!6377344 () Bool)

(declare-fun e!3871496 () (Set Context!11344))

(assert (=> b!6377344 (= e!3871493 e!3871496)))

(assert (=> b!6377344 (= c!1161741 (is-Union!16288 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun bm!544892 () Bool)

(assert (=> bm!544892 (= call!544897 call!544896)))

(declare-fun b!6377345 () Bool)

(declare-fun call!544894 () (Set Context!11344))

(assert (=> b!6377345 (= e!3871496 (set.union call!544899 call!544894))))

(declare-fun b!6377346 () Bool)

(declare-fun e!3871497 () Bool)

(assert (=> b!6377346 (= e!3871497 (nullable!6281 (regOne!33088 (h!71487 (exprs!6172 (h!71488 zl!343))))))))

(declare-fun bm!544893 () Bool)

(assert (=> bm!544893 (= call!544896 call!544894)))

(declare-fun b!6377347 () Bool)

(assert (=> b!6377347 (= c!1161742 e!3871497)))

(declare-fun res!2623297 () Bool)

(assert (=> b!6377347 (=> (not res!2623297) (not e!3871497))))

(assert (=> b!6377347 (= res!2623297 (is-Concat!25133 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(assert (=> b!6377347 (= e!3871496 e!3871494)))

(declare-fun b!6377348 () Bool)

(assert (=> b!6377348 (= e!3871493 (set.insert lt!2369277 (as set.empty (Set Context!11344))))))

(declare-fun b!6377349 () Bool)

(declare-fun c!1161740 () Bool)

(assert (=> b!6377349 (= c!1161740 (is-Star!16288 (h!71487 (exprs!6172 (h!71488 zl!343)))))))

(assert (=> b!6377349 (= e!3871495 e!3871492)))

(declare-fun b!6377350 () Bool)

(assert (=> b!6377350 (= e!3871495 call!544897)))

(declare-fun bm!544894 () Bool)

(assert (=> bm!544894 (= call!544894 (derivationStepZipperDown!1536 (ite c!1161741 (regTwo!33089 (h!71487 (exprs!6172 (h!71488 zl!343)))) (ite c!1161742 (regTwo!33088 (h!71487 (exprs!6172 (h!71488 zl!343)))) (ite c!1161738 (regOne!33088 (h!71487 (exprs!6172 (h!71488 zl!343)))) (reg!16617 (h!71487 (exprs!6172 (h!71488 zl!343))))))) (ite (or c!1161741 c!1161742) lt!2369277 (Context!11345 call!544895)) (h!71489 s!2326)))))

(assert (= (and d!1999926 c!1161739) b!6377348))

(assert (= (and d!1999926 (not c!1161739)) b!6377344))

(assert (= (and b!6377344 c!1161741) b!6377345))

(assert (= (and b!6377344 (not c!1161741)) b!6377347))

(assert (= (and b!6377347 res!2623297) b!6377346))

(assert (= (and b!6377347 c!1161742) b!6377340))

(assert (= (and b!6377347 (not c!1161742)) b!6377342))

(assert (= (and b!6377342 c!1161738) b!6377350))

(assert (= (and b!6377342 (not c!1161738)) b!6377349))

(assert (= (and b!6377349 c!1161740) b!6377343))

(assert (= (and b!6377349 (not c!1161740)) b!6377341))

(assert (= (or b!6377350 b!6377343) bm!544890))

(assert (= (or b!6377350 b!6377343) bm!544892))

(assert (= (or b!6377340 bm!544890) bm!544889))

(assert (= (or b!6377340 bm!544892) bm!544893))

(assert (= (or b!6377345 bm!544893) bm!544894))

(assert (= (or b!6377345 b!6377340) bm!544891))

(declare-fun m!7178738 () Bool)

(assert (=> bm!544889 m!7178738))

(declare-fun m!7178740 () Bool)

(assert (=> bm!544894 m!7178740))

(declare-fun m!7178742 () Bool)

(assert (=> b!6377348 m!7178742))

(declare-fun m!7178744 () Bool)

(assert (=> bm!544891 m!7178744))

(declare-fun m!7178746 () Bool)

(assert (=> b!6377346 m!7178746))

(assert (=> b!6376986 d!1999926))

(declare-fun d!1999928 () Bool)

(assert (=> d!1999928 (= (flatMap!1793 lt!2369275 lambda!351596) (choose!47411 lt!2369275 lambda!351596))))

(declare-fun bs!1596748 () Bool)

(assert (= bs!1596748 d!1999928))

(declare-fun m!7178748 () Bool)

(assert (=> bs!1596748 m!7178748))

(assert (=> b!6376967 d!1999928))

(declare-fun b!6377353 () Bool)

(declare-fun e!3871500 () (Set Context!11344))

(declare-fun call!544900 () (Set Context!11344))

(assert (=> b!6377353 (= e!3871500 call!544900)))

(declare-fun b!6377354 () Bool)

(declare-fun e!3871501 () (Set Context!11344))

(assert (=> b!6377354 (= e!3871501 (set.union call!544900 (derivationStepZipperUp!1462 (Context!11345 (t!378767 (exprs!6172 lt!2369260))) (h!71489 s!2326))))))

(declare-fun b!6377355 () Bool)

(declare-fun e!3871502 () Bool)

(assert (=> b!6377355 (= e!3871502 (nullable!6281 (h!71487 (exprs!6172 lt!2369260))))))

(declare-fun b!6377356 () Bool)

(assert (=> b!6377356 (= e!3871500 (as set.empty (Set Context!11344)))))

(declare-fun d!1999930 () Bool)

(declare-fun c!1161744 () Bool)

(assert (=> d!1999930 (= c!1161744 e!3871502)))

(declare-fun res!2623300 () Bool)

(assert (=> d!1999930 (=> (not res!2623300) (not e!3871502))))

(assert (=> d!1999930 (= res!2623300 (is-Cons!65039 (exprs!6172 lt!2369260)))))

(assert (=> d!1999930 (= (derivationStepZipperUp!1462 lt!2369260 (h!71489 s!2326)) e!3871501)))

(declare-fun b!6377357 () Bool)

(assert (=> b!6377357 (= e!3871501 e!3871500)))

(declare-fun c!1161743 () Bool)

(assert (=> b!6377357 (= c!1161743 (is-Cons!65039 (exprs!6172 lt!2369260)))))

(declare-fun bm!544895 () Bool)

(assert (=> bm!544895 (= call!544900 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 lt!2369260)) (Context!11345 (t!378767 (exprs!6172 lt!2369260))) (h!71489 s!2326)))))

(assert (= (and d!1999930 res!2623300) b!6377355))

(assert (= (and d!1999930 c!1161744) b!6377354))

(assert (= (and d!1999930 (not c!1161744)) b!6377357))

(assert (= (and b!6377357 c!1161743) b!6377353))

(assert (= (and b!6377357 (not c!1161743)) b!6377356))

(assert (= (or b!6377354 b!6377353) bm!544895))

(declare-fun m!7178750 () Bool)

(assert (=> b!6377354 m!7178750))

(declare-fun m!7178752 () Bool)

(assert (=> b!6377355 m!7178752))

(declare-fun m!7178754 () Bool)

(assert (=> bm!544895 m!7178754))

(assert (=> b!6376967 d!1999930))

(declare-fun d!1999932 () Bool)

(assert (=> d!1999932 (= (flatMap!1793 lt!2369275 lambda!351596) (dynLambda!25806 lambda!351596 lt!2369260))))

(declare-fun lt!2369401 () Unit!158483)

(assert (=> d!1999932 (= lt!2369401 (choose!47410 lt!2369275 lt!2369260 lambda!351596))))

(assert (=> d!1999932 (= lt!2369275 (set.insert lt!2369260 (as set.empty (Set Context!11344))))))

(assert (=> d!1999932 (= (lemmaFlatMapOnSingletonSet!1319 lt!2369275 lt!2369260 lambda!351596) lt!2369401)))

(declare-fun b_lambda!242359 () Bool)

(assert (=> (not b_lambda!242359) (not d!1999932)))

(declare-fun bs!1596749 () Bool)

(assert (= bs!1596749 d!1999932))

(assert (=> bs!1596749 m!7178436))

(declare-fun m!7178756 () Bool)

(assert (=> bs!1596749 m!7178756))

(declare-fun m!7178758 () Bool)

(assert (=> bs!1596749 m!7178758))

(assert (=> bs!1596749 m!7178432))

(assert (=> b!6376967 d!1999932))

(declare-fun bs!1596750 () Bool)

(declare-fun d!1999934 () Bool)

(assert (= bs!1596750 (and d!1999934 b!6376986)))

(declare-fun lambda!351634 () Int)

(assert (=> bs!1596750 (= lambda!351634 lambda!351596)))

(assert (=> d!1999934 true))

(assert (=> d!1999934 (= (derivationStepZipper!2254 lt!2369275 (h!71489 s!2326)) (flatMap!1793 lt!2369275 lambda!351634))))

(declare-fun bs!1596751 () Bool)

(assert (= bs!1596751 d!1999934))

(declare-fun m!7178766 () Bool)

(assert (=> bs!1596751 m!7178766))

(assert (=> b!6376967 d!1999934))

(declare-fun d!1999938 () Bool)

(assert (=> d!1999938 (= (isEmpty!37163 (t!378767 (exprs!6172 (h!71488 zl!343)))) (is-Nil!65039 (t!378767 (exprs!6172 (h!71488 zl!343)))))))

(assert (=> b!6376975 d!1999938))

(declare-fun bs!1596752 () Bool)

(declare-fun d!1999942 () Bool)

(assert (= bs!1596752 (and d!1999942 d!1999908)))

(declare-fun lambda!351635 () Int)

(assert (=> bs!1596752 (= lambda!351635 lambda!351631)))

(assert (=> d!1999942 (= (inv!83968 setElem!43505) (forall!15466 (exprs!6172 setElem!43505) lambda!351635))))

(declare-fun bs!1596753 () Bool)

(assert (= bs!1596753 d!1999942))

(declare-fun m!7178768 () Bool)

(assert (=> bs!1596753 m!7178768))

(assert (=> setNonEmpty!43505 d!1999942))

(declare-fun bs!1596756 () Bool)

(declare-fun d!1999944 () Bool)

(assert (= bs!1596756 (and d!1999944 d!1999908)))

(declare-fun lambda!351641 () Int)

(assert (=> bs!1596756 (= lambda!351641 lambda!351631)))

(declare-fun bs!1596757 () Bool)

(assert (= bs!1596757 (and d!1999944 d!1999942)))

(assert (=> bs!1596757 (= lambda!351641 lambda!351635)))

(declare-fun b!6377381 () Bool)

(declare-fun e!3871516 () Bool)

(declare-fun e!3871521 () Bool)

(assert (=> b!6377381 (= e!3871516 e!3871521)))

(declare-fun c!1161756 () Bool)

(declare-fun tail!12154 (List!65163) List!65163)

(assert (=> b!6377381 (= c!1161756 (isEmpty!37163 (tail!12154 (unfocusZipperList!1709 zl!343))))))

(declare-fun b!6377382 () Bool)

(declare-fun e!3871517 () Regex!16288)

(assert (=> b!6377382 (= e!3871517 (h!71487 (unfocusZipperList!1709 zl!343)))))

(declare-fun b!6377383 () Bool)

(declare-fun e!3871520 () Regex!16288)

(assert (=> b!6377383 (= e!3871520 (Union!16288 (h!71487 (unfocusZipperList!1709 zl!343)) (generalisedUnion!2132 (t!378767 (unfocusZipperList!1709 zl!343)))))))

(declare-fun b!6377384 () Bool)

(declare-fun e!3871518 () Bool)

(assert (=> b!6377384 (= e!3871518 (isEmpty!37163 (t!378767 (unfocusZipperList!1709 zl!343))))))

(declare-fun b!6377385 () Bool)

(declare-fun e!3871519 () Bool)

(assert (=> b!6377385 (= e!3871519 e!3871516)))

(declare-fun c!1161755 () Bool)

(assert (=> b!6377385 (= c!1161755 (isEmpty!37163 (unfocusZipperList!1709 zl!343)))))

(declare-fun b!6377386 () Bool)

(declare-fun lt!2369405 () Regex!16288)

(declare-fun isEmptyLang!1696 (Regex!16288) Bool)

(assert (=> b!6377386 (= e!3871516 (isEmptyLang!1696 lt!2369405))))

(declare-fun b!6377387 () Bool)

(assert (=> b!6377387 (= e!3871517 e!3871520)))

(declare-fun c!1161757 () Bool)

(assert (=> b!6377387 (= c!1161757 (is-Cons!65039 (unfocusZipperList!1709 zl!343)))))

(declare-fun b!6377388 () Bool)

(declare-fun head!13069 (List!65163) Regex!16288)

(assert (=> b!6377388 (= e!3871521 (= lt!2369405 (head!13069 (unfocusZipperList!1709 zl!343))))))

(assert (=> d!1999944 e!3871519))

(declare-fun res!2623306 () Bool)

(assert (=> d!1999944 (=> (not res!2623306) (not e!3871519))))

(assert (=> d!1999944 (= res!2623306 (validRegex!8024 lt!2369405))))

(assert (=> d!1999944 (= lt!2369405 e!3871517)))

(declare-fun c!1161758 () Bool)

(assert (=> d!1999944 (= c!1161758 e!3871518)))

(declare-fun res!2623307 () Bool)

(assert (=> d!1999944 (=> (not res!2623307) (not e!3871518))))

(assert (=> d!1999944 (= res!2623307 (is-Cons!65039 (unfocusZipperList!1709 zl!343)))))

(assert (=> d!1999944 (forall!15466 (unfocusZipperList!1709 zl!343) lambda!351641)))

(assert (=> d!1999944 (= (generalisedUnion!2132 (unfocusZipperList!1709 zl!343)) lt!2369405)))

(declare-fun b!6377389 () Bool)

(declare-fun isUnion!1126 (Regex!16288) Bool)

(assert (=> b!6377389 (= e!3871521 (isUnion!1126 lt!2369405))))

(declare-fun b!6377390 () Bool)

(assert (=> b!6377390 (= e!3871520 EmptyLang!16288)))

(assert (= (and d!1999944 res!2623307) b!6377384))

(assert (= (and d!1999944 c!1161758) b!6377382))

(assert (= (and d!1999944 (not c!1161758)) b!6377387))

(assert (= (and b!6377387 c!1161757) b!6377383))

(assert (= (and b!6377387 (not c!1161757)) b!6377390))

(assert (= (and d!1999944 res!2623306) b!6377385))

(assert (= (and b!6377385 c!1161755) b!6377386))

(assert (= (and b!6377385 (not c!1161755)) b!6377381))

(assert (= (and b!6377381 c!1161756) b!6377388))

(assert (= (and b!6377381 (not c!1161756)) b!6377389))

(declare-fun m!7178774 () Bool)

(assert (=> b!6377383 m!7178774))

(declare-fun m!7178776 () Bool)

(assert (=> d!1999944 m!7178776))

(assert (=> d!1999944 m!7178468))

(declare-fun m!7178778 () Bool)

(assert (=> d!1999944 m!7178778))

(assert (=> b!6377388 m!7178468))

(declare-fun m!7178780 () Bool)

(assert (=> b!6377388 m!7178780))

(declare-fun m!7178782 () Bool)

(assert (=> b!6377384 m!7178782))

(declare-fun m!7178784 () Bool)

(assert (=> b!6377386 m!7178784))

(declare-fun m!7178786 () Bool)

(assert (=> b!6377389 m!7178786))

(assert (=> b!6377385 m!7178468))

(declare-fun m!7178788 () Bool)

(assert (=> b!6377385 m!7178788))

(assert (=> b!6377381 m!7178468))

(declare-fun m!7178790 () Bool)

(assert (=> b!6377381 m!7178790))

(assert (=> b!6377381 m!7178790))

(declare-fun m!7178792 () Bool)

(assert (=> b!6377381 m!7178792))

(assert (=> b!6376984 d!1999944))

(declare-fun bs!1596758 () Bool)

(declare-fun d!1999950 () Bool)

(assert (= bs!1596758 (and d!1999950 d!1999908)))

(declare-fun lambda!351644 () Int)

(assert (=> bs!1596758 (= lambda!351644 lambda!351631)))

(declare-fun bs!1596759 () Bool)

(assert (= bs!1596759 (and d!1999950 d!1999942)))

(assert (=> bs!1596759 (= lambda!351644 lambda!351635)))

(declare-fun bs!1596760 () Bool)

(assert (= bs!1596760 (and d!1999950 d!1999944)))

(assert (=> bs!1596760 (= lambda!351644 lambda!351641)))

(declare-fun lt!2369408 () List!65163)

(assert (=> d!1999950 (forall!15466 lt!2369408 lambda!351644)))

(declare-fun e!3871530 () List!65163)

(assert (=> d!1999950 (= lt!2369408 e!3871530)))

(declare-fun c!1161765 () Bool)

(assert (=> d!1999950 (= c!1161765 (is-Cons!65040 zl!343))))

(assert (=> d!1999950 (= (unfocusZipperList!1709 zl!343) lt!2369408)))

(declare-fun b!6377405 () Bool)

(assert (=> b!6377405 (= e!3871530 (Cons!65039 (generalisedConcat!1885 (exprs!6172 (h!71488 zl!343))) (unfocusZipperList!1709 (t!378768 zl!343))))))

(declare-fun b!6377406 () Bool)

(assert (=> b!6377406 (= e!3871530 Nil!65039)))

(assert (= (and d!1999950 c!1161765) b!6377405))

(assert (= (and d!1999950 (not c!1161765)) b!6377406))

(declare-fun m!7178794 () Bool)

(assert (=> d!1999950 m!7178794))

(assert (=> b!6377405 m!7178482))

(declare-fun m!7178796 () Bool)

(assert (=> b!6377405 m!7178796))

(assert (=> b!6376984 d!1999950))

(declare-fun bs!1596762 () Bool)

(declare-fun d!1999952 () Bool)

(assert (= bs!1596762 (and d!1999952 d!1999908)))

(declare-fun lambda!351647 () Int)

(assert (=> bs!1596762 (= lambda!351647 lambda!351631)))

(declare-fun bs!1596763 () Bool)

(assert (= bs!1596763 (and d!1999952 d!1999942)))

(assert (=> bs!1596763 (= lambda!351647 lambda!351635)))

(declare-fun bs!1596764 () Bool)

(assert (= bs!1596764 (and d!1999952 d!1999944)))

(assert (=> bs!1596764 (= lambda!351647 lambda!351641)))

(declare-fun bs!1596765 () Bool)

(assert (= bs!1596765 (and d!1999952 d!1999950)))

(assert (=> bs!1596765 (= lambda!351647 lambda!351644)))

(declare-fun b!6377432 () Bool)

(declare-fun e!3871547 () Bool)

(declare-fun e!3871546 () Bool)

(assert (=> b!6377432 (= e!3871547 e!3871546)))

(declare-fun c!1161778 () Bool)

(assert (=> b!6377432 (= c!1161778 (isEmpty!37163 (exprs!6172 (h!71488 zl!343))))))

(declare-fun b!6377433 () Bool)

(declare-fun e!3871549 () Regex!16288)

(assert (=> b!6377433 (= e!3871549 (h!71487 (exprs!6172 (h!71488 zl!343))))))

(declare-fun b!6377434 () Bool)

(declare-fun e!3871551 () Regex!16288)

(assert (=> b!6377434 (= e!3871549 e!3871551)))

(declare-fun c!1161781 () Bool)

(assert (=> b!6377434 (= c!1161781 (is-Cons!65039 (exprs!6172 (h!71488 zl!343))))))

(declare-fun b!6377435 () Bool)

(declare-fun e!3871548 () Bool)

(declare-fun lt!2369414 () Regex!16288)

(declare-fun isConcat!1213 (Regex!16288) Bool)

(assert (=> b!6377435 (= e!3871548 (isConcat!1213 lt!2369414))))

(declare-fun b!6377436 () Bool)

(assert (=> b!6377436 (= e!3871546 e!3871548)))

(declare-fun c!1161779 () Bool)

(assert (=> b!6377436 (= c!1161779 (isEmpty!37163 (tail!12154 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6377437 () Bool)

(assert (=> b!6377437 (= e!3871551 EmptyExpr!16288)))

(assert (=> d!1999952 e!3871547))

(declare-fun res!2623316 () Bool)

(assert (=> d!1999952 (=> (not res!2623316) (not e!3871547))))

(assert (=> d!1999952 (= res!2623316 (validRegex!8024 lt!2369414))))

(assert (=> d!1999952 (= lt!2369414 e!3871549)))

(declare-fun c!1161780 () Bool)

(declare-fun e!3871550 () Bool)

(assert (=> d!1999952 (= c!1161780 e!3871550)))

(declare-fun res!2623315 () Bool)

(assert (=> d!1999952 (=> (not res!2623315) (not e!3871550))))

(assert (=> d!1999952 (= res!2623315 (is-Cons!65039 (exprs!6172 (h!71488 zl!343))))))

(assert (=> d!1999952 (forall!15466 (exprs!6172 (h!71488 zl!343)) lambda!351647)))

(assert (=> d!1999952 (= (generalisedConcat!1885 (exprs!6172 (h!71488 zl!343))) lt!2369414)))

(declare-fun b!6377438 () Bool)

(assert (=> b!6377438 (= e!3871548 (= lt!2369414 (head!13069 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6377439 () Bool)

(assert (=> b!6377439 (= e!3871550 (isEmpty!37163 (t!378767 (exprs!6172 (h!71488 zl!343)))))))

(declare-fun b!6377440 () Bool)

(assert (=> b!6377440 (= e!3871551 (Concat!25133 (h!71487 (exprs!6172 (h!71488 zl!343))) (generalisedConcat!1885 (t!378767 (exprs!6172 (h!71488 zl!343))))))))

(declare-fun b!6377441 () Bool)

(declare-fun isEmptyExpr!1690 (Regex!16288) Bool)

(assert (=> b!6377441 (= e!3871546 (isEmptyExpr!1690 lt!2369414))))

(assert (= (and d!1999952 res!2623315) b!6377439))

(assert (= (and d!1999952 c!1161780) b!6377433))

(assert (= (and d!1999952 (not c!1161780)) b!6377434))

(assert (= (and b!6377434 c!1161781) b!6377440))

(assert (= (and b!6377434 (not c!1161781)) b!6377437))

(assert (= (and d!1999952 res!2623316) b!6377432))

(assert (= (and b!6377432 c!1161778) b!6377441))

(assert (= (and b!6377432 (not c!1161778)) b!6377436))

(assert (= (and b!6377436 c!1161779) b!6377438))

(assert (= (and b!6377436 (not c!1161779)) b!6377435))

(declare-fun m!7178808 () Bool)

(assert (=> b!6377435 m!7178808))

(declare-fun m!7178810 () Bool)

(assert (=> b!6377440 m!7178810))

(declare-fun m!7178812 () Bool)

(assert (=> b!6377441 m!7178812))

(declare-fun m!7178814 () Bool)

(assert (=> b!6377432 m!7178814))

(declare-fun m!7178816 () Bool)

(assert (=> b!6377436 m!7178816))

(assert (=> b!6377436 m!7178816))

(declare-fun m!7178818 () Bool)

(assert (=> b!6377436 m!7178818))

(assert (=> b!6377439 m!7178480))

(declare-fun m!7178820 () Bool)

(assert (=> b!6377438 m!7178820))

(declare-fun m!7178822 () Bool)

(assert (=> d!1999952 m!7178822))

(declare-fun m!7178824 () Bool)

(assert (=> d!1999952 m!7178824))

(assert (=> b!6376994 d!1999952))

(declare-fun d!1999958 () Bool)

(declare-fun e!3871554 () Bool)

(assert (=> d!1999958 e!3871554))

(declare-fun res!2623319 () Bool)

(assert (=> d!1999958 (=> (not res!2623319) (not e!3871554))))

(declare-fun lt!2369417 () List!65164)

(declare-fun noDuplicate!2119 (List!65164) Bool)

(assert (=> d!1999958 (= res!2623319 (noDuplicate!2119 lt!2369417))))

(declare-fun choose!47415 ((Set Context!11344)) List!65164)

(assert (=> d!1999958 (= lt!2369417 (choose!47415 z!1189))))

(assert (=> d!1999958 (= (toList!10072 z!1189) lt!2369417)))

(declare-fun b!6377446 () Bool)

(declare-fun content!12304 (List!65164) (Set Context!11344))

(assert (=> b!6377446 (= e!3871554 (= (content!12304 lt!2369417) z!1189))))

(assert (= (and d!1999958 res!2623319) b!6377446))

(declare-fun m!7178830 () Bool)

(assert (=> d!1999958 m!7178830))

(declare-fun m!7178832 () Bool)

(assert (=> d!1999958 m!7178832))

(declare-fun m!7178834 () Bool)

(assert (=> b!6377446 m!7178834))

(assert (=> b!6376962 d!1999958))

(declare-fun d!1999964 () Bool)

(declare-fun c!1161782 () Bool)

(assert (=> d!1999964 (= c!1161782 (isEmpty!37168 s!2326))))

(declare-fun e!3871555 () Bool)

(assert (=> d!1999964 (= (matchZipper!2300 lt!2369275 s!2326) e!3871555)))

(declare-fun b!6377447 () Bool)

(assert (=> b!6377447 (= e!3871555 (nullableZipper!2054 lt!2369275))))

(declare-fun b!6377448 () Bool)

(assert (=> b!6377448 (= e!3871555 (matchZipper!2300 (derivationStepZipper!2254 lt!2369275 (head!13068 s!2326)) (tail!12153 s!2326)))))

(assert (= (and d!1999964 c!1161782) b!6377447))

(assert (= (and d!1999964 (not c!1161782)) b!6377448))

(assert (=> d!1999964 m!7178664))

(declare-fun m!7178836 () Bool)

(assert (=> b!6377447 m!7178836))

(assert (=> b!6377448 m!7178668))

(assert (=> b!6377448 m!7178668))

(declare-fun m!7178838 () Bool)

(assert (=> b!6377448 m!7178838))

(assert (=> b!6377448 m!7178670))

(assert (=> b!6377448 m!7178838))

(assert (=> b!6377448 m!7178670))

(declare-fun m!7178840 () Bool)

(assert (=> b!6377448 m!7178840))

(assert (=> b!6376983 d!1999964))

(declare-fun d!1999966 () Bool)

(declare-fun c!1161783 () Bool)

(assert (=> d!1999966 (= c!1161783 (isEmpty!37168 (t!378769 s!2326)))))

(declare-fun e!3871556 () Bool)

(assert (=> d!1999966 (= (matchZipper!2300 lt!2369255 (t!378769 s!2326)) e!3871556)))

(declare-fun b!6377449 () Bool)

(assert (=> b!6377449 (= e!3871556 (nullableZipper!2054 lt!2369255))))

(declare-fun b!6377450 () Bool)

(assert (=> b!6377450 (= e!3871556 (matchZipper!2300 (derivationStepZipper!2254 lt!2369255 (head!13068 (t!378769 s!2326))) (tail!12153 (t!378769 s!2326))))))

(assert (= (and d!1999966 c!1161783) b!6377449))

(assert (= (and d!1999966 (not c!1161783)) b!6377450))

(assert (=> d!1999966 m!7178684))

(declare-fun m!7178842 () Bool)

(assert (=> b!6377449 m!7178842))

(assert (=> b!6377450 m!7178688))

(assert (=> b!6377450 m!7178688))

(declare-fun m!7178844 () Bool)

(assert (=> b!6377450 m!7178844))

(assert (=> b!6377450 m!7178692))

(assert (=> b!6377450 m!7178844))

(assert (=> b!6377450 m!7178692))

(declare-fun m!7178846 () Bool)

(assert (=> b!6377450 m!7178846))

(assert (=> b!6376983 d!1999966))

(declare-fun bs!1596770 () Bool)

(declare-fun d!1999968 () Bool)

(assert (= bs!1596770 (and d!1999968 d!1999942)))

(declare-fun lambda!351652 () Int)

(assert (=> bs!1596770 (= lambda!351652 lambda!351635)))

(declare-fun bs!1596771 () Bool)

(assert (= bs!1596771 (and d!1999968 d!1999944)))

(assert (=> bs!1596771 (= lambda!351652 lambda!351641)))

(declare-fun bs!1596772 () Bool)

(assert (= bs!1596772 (and d!1999968 d!1999908)))

(assert (=> bs!1596772 (= lambda!351652 lambda!351631)))

(declare-fun bs!1596773 () Bool)

(assert (= bs!1596773 (and d!1999968 d!1999952)))

(assert (=> bs!1596773 (= lambda!351652 lambda!351647)))

(declare-fun bs!1596774 () Bool)

(assert (= bs!1596774 (and d!1999968 d!1999950)))

(assert (=> bs!1596774 (= lambda!351652 lambda!351644)))

(assert (=> d!1999968 (= (inv!83968 (h!71488 zl!343)) (forall!15466 (exprs!6172 (h!71488 zl!343)) lambda!351652))))

(declare-fun bs!1596775 () Bool)

(assert (= bs!1596775 d!1999968))

(declare-fun m!7178848 () Bool)

(assert (=> bs!1596775 m!7178848))

(assert (=> b!6376963 d!1999968))

(declare-fun d!1999970 () Bool)

(declare-fun lt!2369418 () Regex!16288)

(assert (=> d!1999970 (validRegex!8024 lt!2369418)))

(assert (=> d!1999970 (= lt!2369418 (generalisedUnion!2132 (unfocusZipperList!1709 (Cons!65040 lt!2369260 Nil!65040))))))

(assert (=> d!1999970 (= (unfocusZipper!2030 (Cons!65040 lt!2369260 Nil!65040)) lt!2369418)))

(declare-fun bs!1596776 () Bool)

(assert (= bs!1596776 d!1999970))

(declare-fun m!7178850 () Bool)

(assert (=> bs!1596776 m!7178850))

(declare-fun m!7178852 () Bool)

(assert (=> bs!1596776 m!7178852))

(assert (=> bs!1596776 m!7178852))

(declare-fun m!7178854 () Bool)

(assert (=> bs!1596776 m!7178854))

(assert (=> b!6376972 d!1999970))

(declare-fun b!6377451 () Bool)

(declare-fun e!3871557 () (Set Context!11344))

(declare-fun call!544904 () (Set Context!11344))

(assert (=> b!6377451 (= e!3871557 call!544904)))

(declare-fun b!6377452 () Bool)

(declare-fun e!3871558 () (Set Context!11344))

(assert (=> b!6377452 (= e!3871558 (set.union call!544904 (derivationStepZipperUp!1462 (Context!11345 (t!378767 (exprs!6172 lt!2369249))) (h!71489 s!2326))))))

(declare-fun b!6377453 () Bool)

(declare-fun e!3871559 () Bool)

(assert (=> b!6377453 (= e!3871559 (nullable!6281 (h!71487 (exprs!6172 lt!2369249))))))

(declare-fun b!6377454 () Bool)

(assert (=> b!6377454 (= e!3871557 (as set.empty (Set Context!11344)))))

(declare-fun d!1999972 () Bool)

(declare-fun c!1161785 () Bool)

(assert (=> d!1999972 (= c!1161785 e!3871559)))

(declare-fun res!2623320 () Bool)

(assert (=> d!1999972 (=> (not res!2623320) (not e!3871559))))

(assert (=> d!1999972 (= res!2623320 (is-Cons!65039 (exprs!6172 lt!2369249)))))

(assert (=> d!1999972 (= (derivationStepZipperUp!1462 lt!2369249 (h!71489 s!2326)) e!3871558)))

(declare-fun b!6377455 () Bool)

(assert (=> b!6377455 (= e!3871558 e!3871557)))

(declare-fun c!1161784 () Bool)

(assert (=> b!6377455 (= c!1161784 (is-Cons!65039 (exprs!6172 lt!2369249)))))

(declare-fun bm!544899 () Bool)

(assert (=> bm!544899 (= call!544904 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 lt!2369249)) (Context!11345 (t!378767 (exprs!6172 lt!2369249))) (h!71489 s!2326)))))

(assert (= (and d!1999972 res!2623320) b!6377453))

(assert (= (and d!1999972 c!1161785) b!6377452))

(assert (= (and d!1999972 (not c!1161785)) b!6377455))

(assert (= (and b!6377455 c!1161784) b!6377451))

(assert (= (and b!6377455 (not c!1161784)) b!6377454))

(assert (= (or b!6377452 b!6377451) bm!544899))

(declare-fun m!7178856 () Bool)

(assert (=> b!6377452 m!7178856))

(declare-fun m!7178858 () Bool)

(assert (=> b!6377453 m!7178858))

(declare-fun m!7178860 () Bool)

(assert (=> bm!544899 m!7178860))

(assert (=> b!6376982 d!1999972))

(declare-fun b!6377456 () Bool)

(declare-fun e!3871560 () (Set Context!11344))

(declare-fun call!544905 () (Set Context!11344))

(assert (=> b!6377456 (= e!3871560 call!544905)))

(declare-fun e!3871561 () (Set Context!11344))

(declare-fun b!6377457 () Bool)

(assert (=> b!6377457 (= e!3871561 (set.union call!544905 (derivationStepZipperUp!1462 (Context!11345 (t!378767 (exprs!6172 lt!2369262))) (h!71489 s!2326))))))

(declare-fun b!6377458 () Bool)

(declare-fun e!3871562 () Bool)

(assert (=> b!6377458 (= e!3871562 (nullable!6281 (h!71487 (exprs!6172 lt!2369262))))))

(declare-fun b!6377459 () Bool)

(assert (=> b!6377459 (= e!3871560 (as set.empty (Set Context!11344)))))

(declare-fun d!1999974 () Bool)

(declare-fun c!1161787 () Bool)

(assert (=> d!1999974 (= c!1161787 e!3871562)))

(declare-fun res!2623321 () Bool)

(assert (=> d!1999974 (=> (not res!2623321) (not e!3871562))))

(assert (=> d!1999974 (= res!2623321 (is-Cons!65039 (exprs!6172 lt!2369262)))))

(assert (=> d!1999974 (= (derivationStepZipperUp!1462 lt!2369262 (h!71489 s!2326)) e!3871561)))

(declare-fun b!6377460 () Bool)

(assert (=> b!6377460 (= e!3871561 e!3871560)))

(declare-fun c!1161786 () Bool)

(assert (=> b!6377460 (= c!1161786 (is-Cons!65039 (exprs!6172 lt!2369262)))))

(declare-fun bm!544900 () Bool)

(assert (=> bm!544900 (= call!544905 (derivationStepZipperDown!1536 (h!71487 (exprs!6172 lt!2369262)) (Context!11345 (t!378767 (exprs!6172 lt!2369262))) (h!71489 s!2326)))))

(assert (= (and d!1999974 res!2623321) b!6377458))

(assert (= (and d!1999974 c!1161787) b!6377457))

(assert (= (and d!1999974 (not c!1161787)) b!6377460))

(assert (= (and b!6377460 c!1161786) b!6377456))

(assert (= (and b!6377460 (not c!1161786)) b!6377459))

(assert (= (or b!6377457 b!6377456) bm!544900))

(declare-fun m!7178862 () Bool)

(assert (=> b!6377457 m!7178862))

(declare-fun m!7178864 () Bool)

(assert (=> b!6377458 m!7178864))

(declare-fun m!7178866 () Bool)

(assert (=> bm!544900 m!7178866))

(assert (=> b!6376982 d!1999974))

(declare-fun d!1999976 () Bool)

(assert (=> d!1999976 (= (flatMap!1793 lt!2369270 lambda!351596) (dynLambda!25806 lambda!351596 lt!2369249))))

(declare-fun lt!2369419 () Unit!158483)

(assert (=> d!1999976 (= lt!2369419 (choose!47410 lt!2369270 lt!2369249 lambda!351596))))

(assert (=> d!1999976 (= lt!2369270 (set.insert lt!2369249 (as set.empty (Set Context!11344))))))

(assert (=> d!1999976 (= (lemmaFlatMapOnSingletonSet!1319 lt!2369270 lt!2369249 lambda!351596) lt!2369419)))

(declare-fun b_lambda!242363 () Bool)

(assert (=> (not b_lambda!242363) (not d!1999976)))

(declare-fun bs!1596777 () Bool)

(assert (= bs!1596777 d!1999976))

(assert (=> bs!1596777 m!7178490))

(declare-fun m!7178868 () Bool)

(assert (=> bs!1596777 m!7178868))

(declare-fun m!7178870 () Bool)

(assert (=> bs!1596777 m!7178870))

(assert (=> bs!1596777 m!7178498))

(assert (=> b!6376982 d!1999976))

(declare-fun d!1999978 () Bool)

(assert (=> d!1999978 (= (flatMap!1793 lt!2369268 lambda!351596) (choose!47411 lt!2369268 lambda!351596))))

(declare-fun bs!1596778 () Bool)

(assert (= bs!1596778 d!1999978))

(declare-fun m!7178872 () Bool)

(assert (=> bs!1596778 m!7178872))

(assert (=> b!6376982 d!1999978))

(declare-fun d!1999980 () Bool)

(assert (=> d!1999980 (= (flatMap!1793 lt!2369268 lambda!351596) (dynLambda!25806 lambda!351596 lt!2369262))))

(declare-fun lt!2369420 () Unit!158483)

(assert (=> d!1999980 (= lt!2369420 (choose!47410 lt!2369268 lt!2369262 lambda!351596))))

(assert (=> d!1999980 (= lt!2369268 (set.insert lt!2369262 (as set.empty (Set Context!11344))))))

(assert (=> d!1999980 (= (lemmaFlatMapOnSingletonSet!1319 lt!2369268 lt!2369262 lambda!351596) lt!2369420)))

(declare-fun b_lambda!242365 () Bool)

(assert (=> (not b_lambda!242365) (not d!1999980)))

(declare-fun bs!1596779 () Bool)

(assert (= bs!1596779 d!1999980))

(assert (=> bs!1596779 m!7178494))

(declare-fun m!7178874 () Bool)

(assert (=> bs!1596779 m!7178874))

(declare-fun m!7178876 () Bool)

(assert (=> bs!1596779 m!7178876))

(assert (=> bs!1596779 m!7178496))

(assert (=> b!6376982 d!1999980))

(declare-fun d!1999982 () Bool)

(declare-fun lt!2369421 () Regex!16288)

(assert (=> d!1999982 (validRegex!8024 lt!2369421)))

(assert (=> d!1999982 (= lt!2369421 (generalisedUnion!2132 (unfocusZipperList!1709 (Cons!65040 lt!2369249 Nil!65040))))))

(assert (=> d!1999982 (= (unfocusZipper!2030 (Cons!65040 lt!2369249 Nil!65040)) lt!2369421)))

(declare-fun bs!1596780 () Bool)

(assert (= bs!1596780 d!1999982))

(declare-fun m!7178878 () Bool)

(assert (=> bs!1596780 m!7178878))

(declare-fun m!7178880 () Bool)

(assert (=> bs!1596780 m!7178880))

(assert (=> bs!1596780 m!7178880))

(declare-fun m!7178882 () Bool)

(assert (=> bs!1596780 m!7178882))

(assert (=> b!6376982 d!1999982))

(declare-fun d!1999984 () Bool)

(assert (=> d!1999984 (= (flatMap!1793 lt!2369270 lambda!351596) (choose!47411 lt!2369270 lambda!351596))))

(declare-fun bs!1596781 () Bool)

(assert (= bs!1596781 d!1999984))

(declare-fun m!7178884 () Bool)

(assert (=> bs!1596781 m!7178884))

(assert (=> b!6376982 d!1999984))

(declare-fun b!6377483 () Bool)

(declare-fun e!3871579 () Bool)

(declare-fun tp!1775091 () Bool)

(declare-fun tp!1775092 () Bool)

(assert (=> b!6377483 (= e!3871579 (and tp!1775091 tp!1775092))))

(assert (=> b!6376990 (= tp!1775049 e!3871579)))

(assert (= (and b!6376990 (is-Cons!65039 (exprs!6172 (h!71488 zl!343)))) b!6377483))

(declare-fun condSetEmpty!43511 () Bool)

(assert (=> setNonEmpty!43505 (= condSetEmpty!43511 (= setRest!43505 (as set.empty (Set Context!11344))))))

(declare-fun setRes!43511 () Bool)

(assert (=> setNonEmpty!43505 (= tp!1775052 setRes!43511)))

(declare-fun setIsEmpty!43511 () Bool)

(assert (=> setIsEmpty!43511 setRes!43511))

(declare-fun e!3871582 () Bool)

(declare-fun setElem!43511 () Context!11344)

(declare-fun tp!1775098 () Bool)

(declare-fun setNonEmpty!43511 () Bool)

(assert (=> setNonEmpty!43511 (= setRes!43511 (and tp!1775098 (inv!83968 setElem!43511) e!3871582))))

(declare-fun setRest!43511 () (Set Context!11344))

(assert (=> setNonEmpty!43511 (= setRest!43505 (set.union (set.insert setElem!43511 (as set.empty (Set Context!11344))) setRest!43511))))

(declare-fun b!6377488 () Bool)

(declare-fun tp!1775097 () Bool)

(assert (=> b!6377488 (= e!3871582 tp!1775097)))

(assert (= (and setNonEmpty!43505 condSetEmpty!43511) setIsEmpty!43511))

(assert (= (and setNonEmpty!43505 (not condSetEmpty!43511)) setNonEmpty!43511))

(assert (= setNonEmpty!43511 b!6377488))

(declare-fun m!7178886 () Bool)

(assert (=> setNonEmpty!43511 m!7178886))

(declare-fun b!6377489 () Bool)

(declare-fun e!3871583 () Bool)

(declare-fun tp!1775099 () Bool)

(declare-fun tp!1775100 () Bool)

(assert (=> b!6377489 (= e!3871583 (and tp!1775099 tp!1775100))))

(assert (=> b!6376988 (= tp!1775050 e!3871583)))

(assert (= (and b!6376988 (is-Cons!65039 (exprs!6172 setElem!43505))) b!6377489))

(declare-fun b!6377502 () Bool)

(declare-fun e!3871586 () Bool)

(declare-fun tp!1775114 () Bool)

(assert (=> b!6377502 (= e!3871586 tp!1775114)))

(assert (=> b!6376974 (= tp!1775056 e!3871586)))

(declare-fun b!6377501 () Bool)

(declare-fun tp!1775115 () Bool)

(declare-fun tp!1775113 () Bool)

(assert (=> b!6377501 (= e!3871586 (and tp!1775115 tp!1775113))))

(declare-fun b!6377500 () Bool)

(assert (=> b!6377500 (= e!3871586 tp_is_empty!41829)))

(declare-fun b!6377503 () Bool)

(declare-fun tp!1775111 () Bool)

(declare-fun tp!1775112 () Bool)

(assert (=> b!6377503 (= e!3871586 (and tp!1775111 tp!1775112))))

(assert (= (and b!6376974 (is-ElementMatch!16288 (reg!16617 r!7292))) b!6377500))

(assert (= (and b!6376974 (is-Concat!25133 (reg!16617 r!7292))) b!6377501))

(assert (= (and b!6376974 (is-Star!16288 (reg!16617 r!7292))) b!6377502))

(assert (= (and b!6376974 (is-Union!16288 (reg!16617 r!7292))) b!6377503))

(declare-fun b!6377508 () Bool)

(declare-fun e!3871589 () Bool)

(declare-fun tp!1775118 () Bool)

(assert (=> b!6377508 (= e!3871589 (and tp_is_empty!41829 tp!1775118))))

(assert (=> b!6376964 (= tp!1775047 e!3871589)))

(assert (= (and b!6376964 (is-Cons!65041 (t!378769 s!2326))) b!6377508))

(declare-fun b!6377516 () Bool)

(declare-fun e!3871595 () Bool)

(declare-fun tp!1775123 () Bool)

(assert (=> b!6377516 (= e!3871595 tp!1775123)))

(declare-fun e!3871594 () Bool)

(declare-fun tp!1775124 () Bool)

(declare-fun b!6377515 () Bool)

(assert (=> b!6377515 (= e!3871594 (and (inv!83968 (h!71488 (t!378768 zl!343))) e!3871595 tp!1775124))))

(assert (=> b!6376963 (= tp!1775053 e!3871594)))

(assert (= b!6377515 b!6377516))

(assert (= (and b!6376963 (is-Cons!65040 (t!378768 zl!343))) b!6377515))

(declare-fun m!7178888 () Bool)

(assert (=> b!6377515 m!7178888))

(declare-fun b!6377519 () Bool)

(declare-fun e!3871596 () Bool)

(declare-fun tp!1775128 () Bool)

(assert (=> b!6377519 (= e!3871596 tp!1775128)))

(assert (=> b!6376966 (= tp!1775048 e!3871596)))

(declare-fun b!6377518 () Bool)

(declare-fun tp!1775129 () Bool)

(declare-fun tp!1775127 () Bool)

(assert (=> b!6377518 (= e!3871596 (and tp!1775129 tp!1775127))))

(declare-fun b!6377517 () Bool)

(assert (=> b!6377517 (= e!3871596 tp_is_empty!41829)))

(declare-fun b!6377520 () Bool)

(declare-fun tp!1775125 () Bool)

(declare-fun tp!1775126 () Bool)

(assert (=> b!6377520 (= e!3871596 (and tp!1775125 tp!1775126))))

(assert (= (and b!6376966 (is-ElementMatch!16288 (regOne!33088 r!7292))) b!6377517))

(assert (= (and b!6376966 (is-Concat!25133 (regOne!33088 r!7292))) b!6377518))

(assert (= (and b!6376966 (is-Star!16288 (regOne!33088 r!7292))) b!6377519))

(assert (= (and b!6376966 (is-Union!16288 (regOne!33088 r!7292))) b!6377520))

(declare-fun b!6377523 () Bool)

(declare-fun e!3871597 () Bool)

(declare-fun tp!1775133 () Bool)

(assert (=> b!6377523 (= e!3871597 tp!1775133)))

(assert (=> b!6376966 (= tp!1775054 e!3871597)))

(declare-fun b!6377522 () Bool)

(declare-fun tp!1775134 () Bool)

(declare-fun tp!1775132 () Bool)

(assert (=> b!6377522 (= e!3871597 (and tp!1775134 tp!1775132))))

(declare-fun b!6377521 () Bool)

(assert (=> b!6377521 (= e!3871597 tp_is_empty!41829)))

(declare-fun b!6377524 () Bool)

(declare-fun tp!1775130 () Bool)

(declare-fun tp!1775131 () Bool)

(assert (=> b!6377524 (= e!3871597 (and tp!1775130 tp!1775131))))

(assert (= (and b!6376966 (is-ElementMatch!16288 (regTwo!33088 r!7292))) b!6377521))

(assert (= (and b!6376966 (is-Concat!25133 (regTwo!33088 r!7292))) b!6377522))

(assert (= (and b!6376966 (is-Star!16288 (regTwo!33088 r!7292))) b!6377523))

(assert (= (and b!6376966 (is-Union!16288 (regTwo!33088 r!7292))) b!6377524))

(declare-fun b!6377527 () Bool)

(declare-fun e!3871598 () Bool)

(declare-fun tp!1775138 () Bool)

(assert (=> b!6377527 (= e!3871598 tp!1775138)))

(assert (=> b!6376991 (= tp!1775051 e!3871598)))

(declare-fun b!6377526 () Bool)

(declare-fun tp!1775139 () Bool)

(declare-fun tp!1775137 () Bool)

(assert (=> b!6377526 (= e!3871598 (and tp!1775139 tp!1775137))))

(declare-fun b!6377525 () Bool)

(assert (=> b!6377525 (= e!3871598 tp_is_empty!41829)))

(declare-fun b!6377528 () Bool)

(declare-fun tp!1775135 () Bool)

(declare-fun tp!1775136 () Bool)

(assert (=> b!6377528 (= e!3871598 (and tp!1775135 tp!1775136))))

(assert (= (and b!6376991 (is-ElementMatch!16288 (regOne!33089 r!7292))) b!6377525))

(assert (= (and b!6376991 (is-Concat!25133 (regOne!33089 r!7292))) b!6377526))

(assert (= (and b!6376991 (is-Star!16288 (regOne!33089 r!7292))) b!6377527))

(assert (= (and b!6376991 (is-Union!16288 (regOne!33089 r!7292))) b!6377528))

(declare-fun b!6377531 () Bool)

(declare-fun e!3871599 () Bool)

(declare-fun tp!1775143 () Bool)

(assert (=> b!6377531 (= e!3871599 tp!1775143)))

(assert (=> b!6376991 (= tp!1775055 e!3871599)))

(declare-fun b!6377530 () Bool)

(declare-fun tp!1775144 () Bool)

(declare-fun tp!1775142 () Bool)

(assert (=> b!6377530 (= e!3871599 (and tp!1775144 tp!1775142))))

(declare-fun b!6377529 () Bool)

(assert (=> b!6377529 (= e!3871599 tp_is_empty!41829)))

(declare-fun b!6377532 () Bool)

(declare-fun tp!1775140 () Bool)

(declare-fun tp!1775141 () Bool)

(assert (=> b!6377532 (= e!3871599 (and tp!1775140 tp!1775141))))

(assert (= (and b!6376991 (is-ElementMatch!16288 (regTwo!33089 r!7292))) b!6377529))

(assert (= (and b!6376991 (is-Concat!25133 (regTwo!33089 r!7292))) b!6377530))

(assert (= (and b!6376991 (is-Star!16288 (regTwo!33089 r!7292))) b!6377531))

(assert (= (and b!6376991 (is-Union!16288 (regTwo!33089 r!7292))) b!6377532))

(declare-fun b_lambda!242367 () Bool)

(assert (= b_lambda!242363 (or b!6376986 b_lambda!242367)))

(declare-fun bs!1596782 () Bool)

(declare-fun d!1999986 () Bool)

(assert (= bs!1596782 (and d!1999986 b!6376986)))

(assert (=> bs!1596782 (= (dynLambda!25806 lambda!351596 lt!2369249) (derivationStepZipperUp!1462 lt!2369249 (h!71489 s!2326)))))

(assert (=> bs!1596782 m!7178488))

(assert (=> d!1999976 d!1999986))

(declare-fun b_lambda!242369 () Bool)

(assert (= b_lambda!242365 (or b!6376986 b_lambda!242369)))

(declare-fun bs!1596783 () Bool)

(declare-fun d!1999988 () Bool)

(assert (= bs!1596783 (and d!1999988 b!6376986)))

(assert (=> bs!1596783 (= (dynLambda!25806 lambda!351596 lt!2369262) (derivationStepZipperUp!1462 lt!2369262 (h!71489 s!2326)))))

(assert (=> bs!1596783 m!7178486))

(assert (=> d!1999980 d!1999988))

(declare-fun b_lambda!242371 () Bool)

(assert (= b_lambda!242357 (or b!6376986 b_lambda!242371)))

(declare-fun bs!1596784 () Bool)

(declare-fun d!1999990 () Bool)

(assert (= bs!1596784 (and d!1999990 b!6376986)))

(assert (=> bs!1596784 (= (dynLambda!25806 lambda!351596 (h!71488 zl!343)) (derivationStepZipperUp!1462 (h!71488 zl!343) (h!71489 s!2326)))))

(assert (=> bs!1596784 m!7178440))

(assert (=> d!1999914 d!1999990))

(declare-fun b_lambda!242373 () Bool)

(assert (= b_lambda!242359 (or b!6376986 b_lambda!242373)))

(declare-fun bs!1596785 () Bool)

(declare-fun d!1999992 () Bool)

(assert (= bs!1596785 (and d!1999992 b!6376986)))

(assert (=> bs!1596785 (= (dynLambda!25806 lambda!351596 lt!2369260) (derivationStepZipperUp!1462 lt!2369260 (h!71489 s!2326)))))

(assert (=> bs!1596785 m!7178434))

(assert (=> d!1999932 d!1999992))

(push 1)

(assert (not d!1999880))

(assert (not b!6377446))

(assert (not b!6377508))

(assert (not d!1999902))

(assert (not b!6377530))

(assert (not b!6377519))

(assert (not d!1999882))

(assert (not b_lambda!242367))

(assert (not d!1999944))

(assert (not bs!1596785))

(assert (not b!6377450))

(assert (not bm!544854))

(assert (not bm!544880))

(assert (not b!6377432))

(assert (not b!6377197))

(assert (not bm!544883))

(assert (not b!6377336))

(assert (not b!6377384))

(assert (not b!6377173))

(assert (not bs!1596783))

(assert (not bm!544871))

(assert (not b!6377448))

(assert (not bm!544879))

(assert (not d!1999980))

(assert (not bs!1596784))

(assert (not bs!1596782))

(assert (not b!6377453))

(assert (not b!6377522))

(assert (not bm!544874))

(assert (not b!6377441))

(assert (not b!6377312))

(assert (not b!6377258))

(assert (not d!1999984))

(assert (not b_lambda!242369))

(assert (not b!6377301))

(assert (not d!1999924))

(assert (not b!6377381))

(assert (not b!6377483))

(assert (not b!6377355))

(assert (not b!6377385))

(assert (not b!6377346))

(assert (not d!1999878))

(assert (not b!6377449))

(assert (not b!6377523))

(assert (not b!6377440))

(assert (not d!1999906))

(assert (not d!1999886))

(assert (not b!6377447))

(assert (not b!6377140))

(assert (not b!6377439))

(assert (not setNonEmpty!43511))

(assert (not d!1999928))

(assert (not b!6377314))

(assert (not b!6377332))

(assert (not b!6377201))

(assert (not bm!544889))

(assert (not bm!544891))

(assert (not b!6377488))

(assert (not b_lambda!242371))

(assert (not bm!544895))

(assert (not b!6377503))

(assert (not d!1999894))

(assert (not b!6377299))

(assert (not b!6377386))

(assert (not b!6377327))

(assert (not bm!544856))

(assert (not b!6377202))

(assert (not d!1999964))

(assert (not b!6377311))

(assert (not b!6377405))

(assert (not b!6377436))

(assert (not d!1999890))

(assert (not b!6377331))

(assert (not d!1999952))

(assert (not d!1999914))

(assert (not d!1999884))

(assert (not b!6377203))

(assert (not d!1999958))

(assert (not b!6377290))

(assert (not d!1999888))

(assert (not d!1999982))

(assert (not b!6377502))

(assert (not b!6377524))

(assert (not b!6377310))

(assert (not d!1999950))

(assert (not b!6377457))

(assert (not b!6377520))

(assert (not b!6377313))

(assert (not d!1999976))

(assert (not d!1999904))

(assert (not b!6377388))

(assert (not b_lambda!242373))

(assert (not b!6377438))

(assert (not d!1999908))

(assert (not b!6377288))

(assert (not bm!544888))

(assert (not b!6377309))

(assert (not b!6377518))

(assert (not d!1999942))

(assert (not bm!544899))

(assert (not b!6377452))

(assert (not bm!544869))

(assert tp_is_empty!41829)

(assert (not b!6377489))

(assert (not d!1999970))

(assert (not bm!544894))

(assert (not b!6377296))

(assert (not b!6377532))

(assert (not b!6377293))

(assert (not b!6377196))

(assert (not d!1999896))

(assert (not d!1999932))

(assert (not bm!544900))

(assert (not bm!544887))

(assert (not b!6377250))

(assert (not b!6377526))

(assert (not b!6377304))

(assert (not b!6377531))

(assert (not b!6377354))

(assert (not b!6377527))

(assert (not d!1999900))

(assert (not d!1999910))

(assert (not d!1999966))

(assert (not d!1999978))

(assert (not b!6377501))

(assert (not b!6377516))

(assert (not bm!544886))

(assert (not d!1999934))

(assert (not b!6377337))

(assert (not b!6377326))

(assert (not d!1999918))

(assert (not b!6377383))

(assert (not d!1999968))

(assert (not b!6377515))

(assert (not b!6377389))

(assert (not b!6377435))

(assert (not b!6377199))

(assert (not b!6377458))

(assert (not b!6377528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

