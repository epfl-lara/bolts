; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!726004 () Bool)

(assert start!726004)

(declare-fun b!7502984 () Bool)

(declare-fun e!4473437 () Bool)

(declare-fun tp_is_empty!49685 () Bool)

(declare-fun tp!2178024 () Bool)

(assert (=> b!7502984 (= e!4473437 (and tp_is_empty!49685 tp!2178024))))

(declare-fun res!3010018 () Bool)

(declare-fun e!4473434 () Bool)

(assert (=> start!726004 (=> (not res!3010018) (not e!4473434))))

(declare-datatypes ((C!39670 0))(
  ( (C!39671 (val!30233 Int)) )
))
(declare-datatypes ((List!72439 0))(
  ( (Nil!72315) (Cons!72315 (h!78763 C!39670) (t!387008 List!72439)) )
))
(declare-fun lt!2633064 () List!72439)

(declare-fun totalInput!779 () List!72439)

(assert (=> start!726004 (= res!3010018 (= lt!2633064 totalInput!779))))

(declare-fun testedP!204 () List!72439)

(declare-fun testedSuffix!164 () List!72439)

(declare-fun ++!17301 (List!72439 List!72439) List!72439)

(assert (=> start!726004 (= lt!2633064 (++!17301 testedP!204 testedSuffix!164))))

(assert (=> start!726004 e!4473434))

(assert (=> start!726004 e!4473437))

(assert (=> start!726004 true))

(declare-fun e!4473440 () Bool)

(assert (=> start!726004 e!4473440))

(declare-fun e!4473429 () Bool)

(assert (=> start!726004 e!4473429))

(declare-fun condSetEmpty!56891 () Bool)

(declare-datatypes ((Regex!19682 0))(
  ( (ElementMatch!19682 (c!1385092 C!39670)) (Concat!28527 (regOne!39876 Regex!19682) (regTwo!39876 Regex!19682)) (EmptyExpr!19682) (Star!19682 (reg!20011 Regex!19682)) (EmptyLang!19682) (Union!19682 (regOne!39877 Regex!19682) (regTwo!39877 Regex!19682)) )
))
(declare-datatypes ((List!72440 0))(
  ( (Nil!72316) (Cons!72316 (h!78764 Regex!19682) (t!387009 List!72440)) )
))
(declare-datatypes ((Context!16868 0))(
  ( (Context!16869 (exprs!8934 List!72440)) )
))
(declare-fun z!3716 () (Set Context!16868))

(assert (=> start!726004 (= condSetEmpty!56891 (= z!3716 (as set.empty (Set Context!16868))))))

(declare-fun setRes!56891 () Bool)

(assert (=> start!726004 setRes!56891))

(declare-fun b!7502985 () Bool)

(declare-fun e!4473439 () Bool)

(declare-fun e!4473431 () Bool)

(assert (=> b!7502985 (= e!4473439 e!4473431)))

(declare-fun res!3010013 () Bool)

(assert (=> b!7502985 (=> res!3010013 e!4473431)))

(declare-fun lostCauseZipper!1370 ((Set Context!16868)) Bool)

(assert (=> b!7502985 (= res!3010013 (lostCauseZipper!1370 z!3716))))

(declare-fun lt!2633058 () List!72439)

(assert (=> b!7502985 (and (= testedSuffix!164 lt!2633058) (= lt!2633058 testedSuffix!164))))

(declare-datatypes ((Unit!166262 0))(
  ( (Unit!166263) )
))
(declare-fun lt!2633062 () Unit!166262)

(declare-fun lemmaSamePrefixThenSameSuffix!2773 (List!72439 List!72439 List!72439 List!72439 List!72439) Unit!166262)

(assert (=> b!7502985 (= lt!2633062 (lemmaSamePrefixThenSameSuffix!2773 testedP!204 testedSuffix!164 testedP!204 lt!2633058 totalInput!779))))

(declare-fun getSuffix!3470 (List!72439 List!72439) List!72439)

(assert (=> b!7502985 (= lt!2633058 (getSuffix!3470 totalInput!779 testedP!204))))

(declare-fun b!7502986 () Bool)

(declare-fun e!4473430 () Bool)

(declare-fun e!4473436 () Bool)

(assert (=> b!7502986 (= e!4473430 e!4473436)))

(declare-fun res!3010016 () Bool)

(assert (=> b!7502986 (=> (not res!3010016) (not e!4473436))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2633056 () Int)

(assert (=> b!7502986 (= res!3010016 (= totalInputSize!226 lt!2633056))))

(declare-fun size!42243 (List!72439) Int)

(assert (=> b!7502986 (= lt!2633056 (size!42243 totalInput!779))))

(declare-fun b!7502987 () Bool)

(declare-fun e!4473438 () Bool)

(assert (=> b!7502987 (= e!4473431 e!4473438)))

(declare-fun res!3010015 () Bool)

(assert (=> b!7502987 (=> res!3010015 e!4473438)))

(declare-fun lt!2633065 () Int)

(assert (=> b!7502987 (= res!3010015 (>= lt!2633065 lt!2633056))))

(declare-fun lt!2633057 () Unit!166262)

(declare-fun e!4473435 () Unit!166262)

(assert (=> b!7502987 (= lt!2633057 e!4473435)))

(declare-fun c!1385091 () Bool)

(assert (=> b!7502987 (= c!1385091 (= lt!2633065 lt!2633056))))

(assert (=> b!7502987 (<= lt!2633065 lt!2633056)))

(declare-fun lt!2633053 () Unit!166262)

(declare-fun lemmaIsPrefixThenSmallerEqSize!973 (List!72439 List!72439) Unit!166262)

(assert (=> b!7502987 (= lt!2633053 (lemmaIsPrefixThenSmallerEqSize!973 testedP!204 totalInput!779))))

(declare-fun b!7502988 () Bool)

(assert (=> b!7502988 (= e!4473434 e!4473430)))

(declare-fun res!3010017 () Bool)

(assert (=> b!7502988 (=> (not res!3010017) (not e!4473430))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7502988 (= res!3010017 (= testedPSize!164 lt!2633065))))

(assert (=> b!7502988 (= lt!2633065 (size!42243 testedP!204))))

(declare-fun b!7502989 () Bool)

(declare-fun Unit!166264 () Unit!166262)

(assert (=> b!7502989 (= e!4473435 Unit!166264)))

(declare-fun b!7502990 () Bool)

(declare-fun Unit!166265 () Unit!166262)

(assert (=> b!7502990 (= e!4473435 Unit!166265)))

(declare-fun lt!2633059 () Unit!166262)

(declare-fun lemmaIsPrefixRefl!3817 (List!72439 List!72439) Unit!166262)

(assert (=> b!7502990 (= lt!2633059 (lemmaIsPrefixRefl!3817 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5968 (List!72439 List!72439) Bool)

(assert (=> b!7502990 (isPrefix!5968 totalInput!779 totalInput!779)))

(declare-fun lt!2633054 () Unit!166262)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1471 (List!72439 List!72439 List!72439) Unit!166262)

(assert (=> b!7502990 (= lt!2633054 (lemmaIsPrefixSameLengthThenSameList!1471 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502990 false))

(declare-fun tp!2178023 () Bool)

(declare-fun setElem!56891 () Context!16868)

(declare-fun setNonEmpty!56891 () Bool)

(declare-fun e!4473433 () Bool)

(declare-fun inv!92421 (Context!16868) Bool)

(assert (=> setNonEmpty!56891 (= setRes!56891 (and tp!2178023 (inv!92421 setElem!56891) e!4473433))))

(declare-fun setRest!56891 () (Set Context!16868))

(assert (=> setNonEmpty!56891 (= z!3716 (set.union (set.insert setElem!56891 (as set.empty (Set Context!16868))) setRest!56891))))

(declare-fun b!7502991 () Bool)

(declare-fun tp!2178022 () Bool)

(assert (=> b!7502991 (= e!4473429 (and tp_is_empty!49685 tp!2178022))))

(declare-fun b!7502992 () Bool)

(declare-fun e!4473432 () Bool)

(declare-fun lt!2633061 () List!72439)

(assert (=> b!7502992 (= e!4473432 (= (+ 1 testedPSize!164) (size!42243 lt!2633061)))))

(declare-fun setIsEmpty!56891 () Bool)

(assert (=> setIsEmpty!56891 setRes!56891))

(declare-fun b!7502993 () Bool)

(declare-fun tp!2178026 () Bool)

(assert (=> b!7502993 (= e!4473440 (and tp_is_empty!49685 tp!2178026))))

(declare-fun b!7502994 () Bool)

(declare-fun tp!2178025 () Bool)

(assert (=> b!7502994 (= e!4473433 tp!2178025)))

(declare-fun b!7502995 () Bool)

(assert (=> b!7502995 (= e!4473436 (not e!4473439))))

(declare-fun res!3010012 () Bool)

(assert (=> b!7502995 (=> res!3010012 e!4473439)))

(assert (=> b!7502995 (= res!3010012 (not (isPrefix!5968 testedP!204 totalInput!779)))))

(assert (=> b!7502995 (isPrefix!5968 testedP!204 lt!2633064)))

(declare-fun lt!2633055 () Unit!166262)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3681 (List!72439 List!72439) Unit!166262)

(assert (=> b!7502995 (= lt!2633055 (lemmaConcatTwoListThenFirstIsPrefix!3681 testedP!204 testedSuffix!164))))

(declare-fun b!7502996 () Bool)

(declare-fun res!3010011 () Bool)

(assert (=> b!7502996 (=> res!3010011 e!4473431)))

(assert (=> b!7502996 (= res!3010011 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502997 () Bool)

(assert (=> b!7502997 (= e!4473438 e!4473432)))

(declare-fun res!3010014 () Bool)

(assert (=> b!7502997 (=> res!3010014 e!4473432)))

(declare-fun nullableZipper!3162 ((Set Context!16868)) Bool)

(assert (=> b!7502997 (= res!3010014 (not (nullableZipper!3162 z!3716)))))

(declare-fun lt!2633051 () List!72439)

(assert (=> b!7502997 (= (++!17301 lt!2633061 lt!2633051) totalInput!779)))

(declare-fun lt!2633052 () C!39670)

(declare-fun lt!2633063 () Unit!166262)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3142 (List!72439 C!39670 List!72439 List!72439) Unit!166262)

(assert (=> b!7502997 (= lt!2633063 (lemmaMoveElementToOtherListKeepsConcatEq!3142 testedP!204 lt!2633052 lt!2633051 totalInput!779))))

(declare-fun tail!14974 (List!72439) List!72439)

(assert (=> b!7502997 (= lt!2633051 (tail!14974 testedSuffix!164))))

(declare-fun head!15408 (List!72439) C!39670)

(assert (=> b!7502997 (isPrefix!5968 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)) totalInput!779)))

(declare-fun lt!2633060 () Unit!166262)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1109 (List!72439 List!72439) Unit!166262)

(assert (=> b!7502997 (= lt!2633060 (lemmaAddHeadSuffixToPrefixStillPrefix!1109 testedP!204 totalInput!779))))

(assert (=> b!7502997 (= lt!2633061 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315)))))

(assert (=> b!7502997 (= lt!2633052 (head!15408 testedSuffix!164))))

(assert (= (and start!726004 res!3010018) b!7502988))

(assert (= (and b!7502988 res!3010017) b!7502986))

(assert (= (and b!7502986 res!3010016) b!7502995))

(assert (= (and b!7502995 (not res!3010012)) b!7502985))

(assert (= (and b!7502985 (not res!3010013)) b!7502996))

(assert (= (and b!7502996 (not res!3010011)) b!7502987))

(assert (= (and b!7502987 c!1385091) b!7502990))

(assert (= (and b!7502987 (not c!1385091)) b!7502989))

(assert (= (and b!7502987 (not res!3010015)) b!7502997))

(assert (= (and b!7502997 (not res!3010014)) b!7502992))

(assert (= (and start!726004 (is-Cons!72315 testedSuffix!164)) b!7502984))

(assert (= (and start!726004 (is-Cons!72315 totalInput!779)) b!7502993))

(assert (= (and start!726004 (is-Cons!72315 testedP!204)) b!7502991))

(assert (= (and start!726004 condSetEmpty!56891) setIsEmpty!56891))

(assert (= (and start!726004 (not condSetEmpty!56891)) setNonEmpty!56891))

(assert (= setNonEmpty!56891 b!7502994))

(declare-fun m!8084682 () Bool)

(assert (=> b!7502997 m!8084682))

(declare-fun m!8084684 () Bool)

(assert (=> b!7502997 m!8084684))

(declare-fun m!8084686 () Bool)

(assert (=> b!7502997 m!8084686))

(declare-fun m!8084688 () Bool)

(assert (=> b!7502997 m!8084688))

(declare-fun m!8084690 () Bool)

(assert (=> b!7502997 m!8084690))

(assert (=> b!7502997 m!8084690))

(declare-fun m!8084692 () Bool)

(assert (=> b!7502997 m!8084692))

(declare-fun m!8084694 () Bool)

(assert (=> b!7502997 m!8084694))

(declare-fun m!8084696 () Bool)

(assert (=> b!7502997 m!8084696))

(declare-fun m!8084698 () Bool)

(assert (=> b!7502997 m!8084698))

(declare-fun m!8084700 () Bool)

(assert (=> b!7502997 m!8084700))

(declare-fun m!8084702 () Bool)

(assert (=> start!726004 m!8084702))

(declare-fun m!8084704 () Bool)

(assert (=> b!7502988 m!8084704))

(declare-fun m!8084706 () Bool)

(assert (=> b!7502987 m!8084706))

(declare-fun m!8084708 () Bool)

(assert (=> b!7502986 m!8084708))

(declare-fun m!8084710 () Bool)

(assert (=> b!7502995 m!8084710))

(declare-fun m!8084712 () Bool)

(assert (=> b!7502995 m!8084712))

(declare-fun m!8084714 () Bool)

(assert (=> b!7502995 m!8084714))

(declare-fun m!8084716 () Bool)

(assert (=> b!7502992 m!8084716))

(declare-fun m!8084718 () Bool)

(assert (=> b!7502990 m!8084718))

(declare-fun m!8084720 () Bool)

(assert (=> b!7502990 m!8084720))

(declare-fun m!8084722 () Bool)

(assert (=> b!7502990 m!8084722))

(declare-fun m!8084724 () Bool)

(assert (=> setNonEmpty!56891 m!8084724))

(declare-fun m!8084726 () Bool)

(assert (=> b!7502985 m!8084726))

(declare-fun m!8084728 () Bool)

(assert (=> b!7502985 m!8084728))

(declare-fun m!8084730 () Bool)

(assert (=> b!7502985 m!8084730))

(push 1)

(assert (not b!7502990))

(assert (not b!7502984))

(assert (not b!7502994))

(assert (not b!7502995))

(assert tp_is_empty!49685)

(assert (not b!7502986))

(assert (not setNonEmpty!56891))

(assert (not b!7502991))

(assert (not b!7502988))

(assert (not b!7502987))

(assert (not b!7502993))

(assert (not start!726004))

(assert (not b!7502985))

(assert (not b!7502997))

(assert (not b!7502992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2302903 () Bool)

(assert (=> d!2302903 (<= (size!42243 testedP!204) (size!42243 totalInput!779))))

(declare-fun lt!2633113 () Unit!166262)

(declare-fun choose!58022 (List!72439 List!72439) Unit!166262)

(assert (=> d!2302903 (= lt!2633113 (choose!58022 testedP!204 totalInput!779))))

(assert (=> d!2302903 (isPrefix!5968 testedP!204 totalInput!779)))

(assert (=> d!2302903 (= (lemmaIsPrefixThenSmallerEqSize!973 testedP!204 totalInput!779) lt!2633113)))

(declare-fun bs!1937810 () Bool)

(assert (= bs!1937810 d!2302903))

(assert (=> bs!1937810 m!8084704))

(assert (=> bs!1937810 m!8084708))

(declare-fun m!8084782 () Bool)

(assert (=> bs!1937810 m!8084782))

(assert (=> bs!1937810 m!8084710))

(assert (=> b!7502987 d!2302903))

(declare-fun d!2302905 () Bool)

(declare-fun lt!2633116 () Int)

(assert (=> d!2302905 (>= lt!2633116 0)))

(declare-fun e!4473479 () Int)

(assert (=> d!2302905 (= lt!2633116 e!4473479)))

(declare-fun c!1385099 () Bool)

(assert (=> d!2302905 (= c!1385099 (is-Nil!72315 testedP!204))))

(assert (=> d!2302905 (= (size!42243 testedP!204) lt!2633116)))

(declare-fun b!7503044 () Bool)

(assert (=> b!7503044 (= e!4473479 0)))

(declare-fun b!7503045 () Bool)

(assert (=> b!7503045 (= e!4473479 (+ 1 (size!42243 (t!387008 testedP!204))))))

(assert (= (and d!2302905 c!1385099) b!7503044))

(assert (= (and d!2302905 (not c!1385099)) b!7503045))

(declare-fun m!8084784 () Bool)

(assert (=> b!7503045 m!8084784))

(assert (=> b!7502988 d!2302905))

(declare-fun d!2302909 () Bool)

(declare-fun lt!2633117 () Int)

(assert (=> d!2302909 (>= lt!2633117 0)))

(declare-fun e!4473480 () Int)

(assert (=> d!2302909 (= lt!2633117 e!4473480)))

(declare-fun c!1385100 () Bool)

(assert (=> d!2302909 (= c!1385100 (is-Nil!72315 lt!2633061))))

(assert (=> d!2302909 (= (size!42243 lt!2633061) lt!2633117)))

(declare-fun b!7503046 () Bool)

(assert (=> b!7503046 (= e!4473480 0)))

(declare-fun b!7503047 () Bool)

(assert (=> b!7503047 (= e!4473480 (+ 1 (size!42243 (t!387008 lt!2633061))))))

(assert (= (and d!2302909 c!1385100) b!7503046))

(assert (= (and d!2302909 (not c!1385100)) b!7503047))

(declare-fun m!8084786 () Bool)

(assert (=> b!7503047 m!8084786))

(assert (=> b!7502992 d!2302909))

(declare-fun d!2302911 () Bool)

(declare-fun lt!2633118 () Int)

(assert (=> d!2302911 (>= lt!2633118 0)))

(declare-fun e!4473481 () Int)

(assert (=> d!2302911 (= lt!2633118 e!4473481)))

(declare-fun c!1385101 () Bool)

(assert (=> d!2302911 (= c!1385101 (is-Nil!72315 totalInput!779))))

(assert (=> d!2302911 (= (size!42243 totalInput!779) lt!2633118)))

(declare-fun b!7503048 () Bool)

(assert (=> b!7503048 (= e!4473481 0)))

(declare-fun b!7503049 () Bool)

(assert (=> b!7503049 (= e!4473481 (+ 1 (size!42243 (t!387008 totalInput!779))))))

(assert (= (and d!2302911 c!1385101) b!7503048))

(assert (= (and d!2302911 (not c!1385101)) b!7503049))

(declare-fun m!8084788 () Bool)

(assert (=> b!7503049 m!8084788))

(assert (=> b!7502986 d!2302911))

(declare-fun d!2302913 () Bool)

(declare-fun lambda!465038 () Int)

(declare-fun forall!18257 (List!72440 Int) Bool)

(assert (=> d!2302913 (= (inv!92421 setElem!56891) (forall!18257 (exprs!8934 setElem!56891) lambda!465038))))

(declare-fun bs!1937812 () Bool)

(assert (= bs!1937812 d!2302913))

(declare-fun m!8084824 () Bool)

(assert (=> bs!1937812 m!8084824))

(assert (=> setNonEmpty!56891 d!2302913))

(declare-fun b!7503089 () Bool)

(declare-fun e!4473507 () Bool)

(assert (=> b!7503089 (= e!4473507 (>= (size!42243 totalInput!779) (size!42243 testedP!204)))))

(declare-fun d!2302923 () Bool)

(assert (=> d!2302923 e!4473507))

(declare-fun res!3010076 () Bool)

(assert (=> d!2302923 (=> res!3010076 e!4473507)))

(declare-fun lt!2633131 () Bool)

(assert (=> d!2302923 (= res!3010076 (not lt!2633131))))

(declare-fun e!4473506 () Bool)

(assert (=> d!2302923 (= lt!2633131 e!4473506)))

(declare-fun res!3010073 () Bool)

(assert (=> d!2302923 (=> res!3010073 e!4473506)))

(assert (=> d!2302923 (= res!3010073 (is-Nil!72315 testedP!204))))

(assert (=> d!2302923 (= (isPrefix!5968 testedP!204 totalInput!779) lt!2633131)))

(declare-fun b!7503086 () Bool)

(declare-fun e!4473508 () Bool)

(assert (=> b!7503086 (= e!4473506 e!4473508)))

(declare-fun res!3010074 () Bool)

(assert (=> b!7503086 (=> (not res!3010074) (not e!4473508))))

(assert (=> b!7503086 (= res!3010074 (not (is-Nil!72315 totalInput!779)))))

(declare-fun b!7503088 () Bool)

(assert (=> b!7503088 (= e!4473508 (isPrefix!5968 (tail!14974 testedP!204) (tail!14974 totalInput!779)))))

(declare-fun b!7503087 () Bool)

(declare-fun res!3010075 () Bool)

(assert (=> b!7503087 (=> (not res!3010075) (not e!4473508))))

(assert (=> b!7503087 (= res!3010075 (= (head!15408 testedP!204) (head!15408 totalInput!779)))))

(assert (= (and d!2302923 (not res!3010073)) b!7503086))

(assert (= (and b!7503086 res!3010074) b!7503087))

(assert (= (and b!7503087 res!3010075) b!7503088))

(assert (= (and d!2302923 (not res!3010076)) b!7503089))

(assert (=> b!7503089 m!8084708))

(assert (=> b!7503089 m!8084704))

(declare-fun m!8084826 () Bool)

(assert (=> b!7503088 m!8084826))

(declare-fun m!8084828 () Bool)

(assert (=> b!7503088 m!8084828))

(assert (=> b!7503088 m!8084826))

(assert (=> b!7503088 m!8084828))

(declare-fun m!8084830 () Bool)

(assert (=> b!7503088 m!8084830))

(declare-fun m!8084832 () Bool)

(assert (=> b!7503087 m!8084832))

(declare-fun m!8084834 () Bool)

(assert (=> b!7503087 m!8084834))

(assert (=> b!7502995 d!2302923))

(declare-fun b!7503093 () Bool)

(declare-fun e!4473510 () Bool)

(assert (=> b!7503093 (= e!4473510 (>= (size!42243 lt!2633064) (size!42243 testedP!204)))))

(declare-fun d!2302925 () Bool)

(assert (=> d!2302925 e!4473510))

(declare-fun res!3010080 () Bool)

(assert (=> d!2302925 (=> res!3010080 e!4473510)))

(declare-fun lt!2633132 () Bool)

(assert (=> d!2302925 (= res!3010080 (not lt!2633132))))

(declare-fun e!4473509 () Bool)

(assert (=> d!2302925 (= lt!2633132 e!4473509)))

(declare-fun res!3010077 () Bool)

(assert (=> d!2302925 (=> res!3010077 e!4473509)))

(assert (=> d!2302925 (= res!3010077 (is-Nil!72315 testedP!204))))

(assert (=> d!2302925 (= (isPrefix!5968 testedP!204 lt!2633064) lt!2633132)))

(declare-fun b!7503090 () Bool)

(declare-fun e!4473511 () Bool)

(assert (=> b!7503090 (= e!4473509 e!4473511)))

(declare-fun res!3010078 () Bool)

(assert (=> b!7503090 (=> (not res!3010078) (not e!4473511))))

(assert (=> b!7503090 (= res!3010078 (not (is-Nil!72315 lt!2633064)))))

(declare-fun b!7503092 () Bool)

(assert (=> b!7503092 (= e!4473511 (isPrefix!5968 (tail!14974 testedP!204) (tail!14974 lt!2633064)))))

(declare-fun b!7503091 () Bool)

(declare-fun res!3010079 () Bool)

(assert (=> b!7503091 (=> (not res!3010079) (not e!4473511))))

(assert (=> b!7503091 (= res!3010079 (= (head!15408 testedP!204) (head!15408 lt!2633064)))))

(assert (= (and d!2302925 (not res!3010077)) b!7503090))

(assert (= (and b!7503090 res!3010078) b!7503091))

(assert (= (and b!7503091 res!3010079) b!7503092))

(assert (= (and d!2302925 (not res!3010080)) b!7503093))

(declare-fun m!8084836 () Bool)

(assert (=> b!7503093 m!8084836))

(assert (=> b!7503093 m!8084704))

(assert (=> b!7503092 m!8084826))

(declare-fun m!8084838 () Bool)

(assert (=> b!7503092 m!8084838))

(assert (=> b!7503092 m!8084826))

(assert (=> b!7503092 m!8084838))

(declare-fun m!8084840 () Bool)

(assert (=> b!7503092 m!8084840))

(assert (=> b!7503091 m!8084832))

(declare-fun m!8084842 () Bool)

(assert (=> b!7503091 m!8084842))

(assert (=> b!7502995 d!2302925))

(declare-fun d!2302927 () Bool)

(assert (=> d!2302927 (isPrefix!5968 testedP!204 (++!17301 testedP!204 testedSuffix!164))))

(declare-fun lt!2633135 () Unit!166262)

(declare-fun choose!58023 (List!72439 List!72439) Unit!166262)

(assert (=> d!2302927 (= lt!2633135 (choose!58023 testedP!204 testedSuffix!164))))

(assert (=> d!2302927 (= (lemmaConcatTwoListThenFirstIsPrefix!3681 testedP!204 testedSuffix!164) lt!2633135)))

(declare-fun bs!1937813 () Bool)

(assert (= bs!1937813 d!2302927))

(assert (=> bs!1937813 m!8084702))

(assert (=> bs!1937813 m!8084702))

(declare-fun m!8084844 () Bool)

(assert (=> bs!1937813 m!8084844))

(declare-fun m!8084846 () Bool)

(assert (=> bs!1937813 m!8084846))

(assert (=> b!7502995 d!2302927))

(declare-fun b!7503104 () Bool)

(declare-fun res!3010086 () Bool)

(declare-fun e!4473516 () Bool)

(assert (=> b!7503104 (=> (not res!3010086) (not e!4473516))))

(declare-fun lt!2633138 () List!72439)

(assert (=> b!7503104 (= res!3010086 (= (size!42243 lt!2633138) (+ (size!42243 testedP!204) (size!42243 testedSuffix!164))))))

(declare-fun b!7503102 () Bool)

(declare-fun e!4473517 () List!72439)

(assert (=> b!7503102 (= e!4473517 testedSuffix!164)))

(declare-fun d!2302929 () Bool)

(assert (=> d!2302929 e!4473516))

(declare-fun res!3010085 () Bool)

(assert (=> d!2302929 (=> (not res!3010085) (not e!4473516))))

(declare-fun content!15282 (List!72439) (Set C!39670))

(assert (=> d!2302929 (= res!3010085 (= (content!15282 lt!2633138) (set.union (content!15282 testedP!204) (content!15282 testedSuffix!164))))))

(assert (=> d!2302929 (= lt!2633138 e!4473517)))

(declare-fun c!1385107 () Bool)

(assert (=> d!2302929 (= c!1385107 (is-Nil!72315 testedP!204))))

(assert (=> d!2302929 (= (++!17301 testedP!204 testedSuffix!164) lt!2633138)))

(declare-fun b!7503105 () Bool)

(assert (=> b!7503105 (= e!4473516 (or (not (= testedSuffix!164 Nil!72315)) (= lt!2633138 testedP!204)))))

(declare-fun b!7503103 () Bool)

(assert (=> b!7503103 (= e!4473517 (Cons!72315 (h!78763 testedP!204) (++!17301 (t!387008 testedP!204) testedSuffix!164)))))

(assert (= (and d!2302929 c!1385107) b!7503102))

(assert (= (and d!2302929 (not c!1385107)) b!7503103))

(assert (= (and d!2302929 res!3010085) b!7503104))

(assert (= (and b!7503104 res!3010086) b!7503105))

(declare-fun m!8084848 () Bool)

(assert (=> b!7503104 m!8084848))

(assert (=> b!7503104 m!8084704))

(declare-fun m!8084850 () Bool)

(assert (=> b!7503104 m!8084850))

(declare-fun m!8084852 () Bool)

(assert (=> d!2302929 m!8084852))

(declare-fun m!8084854 () Bool)

(assert (=> d!2302929 m!8084854))

(declare-fun m!8084856 () Bool)

(assert (=> d!2302929 m!8084856))

(declare-fun m!8084858 () Bool)

(assert (=> b!7503103 m!8084858))

(assert (=> start!726004 d!2302929))

(declare-fun d!2302931 () Bool)

(assert (=> d!2302931 (isPrefix!5968 totalInput!779 totalInput!779)))

(declare-fun lt!2633141 () Unit!166262)

(declare-fun choose!58024 (List!72439 List!72439) Unit!166262)

(assert (=> d!2302931 (= lt!2633141 (choose!58024 totalInput!779 totalInput!779))))

(assert (=> d!2302931 (= (lemmaIsPrefixRefl!3817 totalInput!779 totalInput!779) lt!2633141)))

(declare-fun bs!1937814 () Bool)

(assert (= bs!1937814 d!2302931))

(assert (=> bs!1937814 m!8084720))

(declare-fun m!8084860 () Bool)

(assert (=> bs!1937814 m!8084860))

(assert (=> b!7502990 d!2302931))

(declare-fun b!7503109 () Bool)

(declare-fun e!4473519 () Bool)

(assert (=> b!7503109 (= e!4473519 (>= (size!42243 totalInput!779) (size!42243 totalInput!779)))))

(declare-fun d!2302933 () Bool)

(assert (=> d!2302933 e!4473519))

(declare-fun res!3010090 () Bool)

(assert (=> d!2302933 (=> res!3010090 e!4473519)))

(declare-fun lt!2633142 () Bool)

(assert (=> d!2302933 (= res!3010090 (not lt!2633142))))

(declare-fun e!4473518 () Bool)

(assert (=> d!2302933 (= lt!2633142 e!4473518)))

(declare-fun res!3010087 () Bool)

(assert (=> d!2302933 (=> res!3010087 e!4473518)))

(assert (=> d!2302933 (= res!3010087 (is-Nil!72315 totalInput!779))))

(assert (=> d!2302933 (= (isPrefix!5968 totalInput!779 totalInput!779) lt!2633142)))

(declare-fun b!7503106 () Bool)

(declare-fun e!4473520 () Bool)

(assert (=> b!7503106 (= e!4473518 e!4473520)))

(declare-fun res!3010088 () Bool)

(assert (=> b!7503106 (=> (not res!3010088) (not e!4473520))))

(assert (=> b!7503106 (= res!3010088 (not (is-Nil!72315 totalInput!779)))))

(declare-fun b!7503108 () Bool)

(assert (=> b!7503108 (= e!4473520 (isPrefix!5968 (tail!14974 totalInput!779) (tail!14974 totalInput!779)))))

(declare-fun b!7503107 () Bool)

(declare-fun res!3010089 () Bool)

(assert (=> b!7503107 (=> (not res!3010089) (not e!4473520))))

(assert (=> b!7503107 (= res!3010089 (= (head!15408 totalInput!779) (head!15408 totalInput!779)))))

(assert (= (and d!2302933 (not res!3010087)) b!7503106))

(assert (= (and b!7503106 res!3010088) b!7503107))

(assert (= (and b!7503107 res!3010089) b!7503108))

(assert (= (and d!2302933 (not res!3010090)) b!7503109))

(assert (=> b!7503109 m!8084708))

(assert (=> b!7503109 m!8084708))

(assert (=> b!7503108 m!8084828))

(assert (=> b!7503108 m!8084828))

(assert (=> b!7503108 m!8084828))

(assert (=> b!7503108 m!8084828))

(declare-fun m!8084862 () Bool)

(assert (=> b!7503108 m!8084862))

(assert (=> b!7503107 m!8084834))

(assert (=> b!7503107 m!8084834))

(assert (=> b!7502990 d!2302933))

(declare-fun d!2302935 () Bool)

(assert (=> d!2302935 (= totalInput!779 testedP!204)))

(declare-fun lt!2633145 () Unit!166262)

(declare-fun choose!58025 (List!72439 List!72439 List!72439) Unit!166262)

(assert (=> d!2302935 (= lt!2633145 (choose!58025 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2302935 (isPrefix!5968 totalInput!779 totalInput!779)))

(assert (=> d!2302935 (= (lemmaIsPrefixSameLengthThenSameList!1471 totalInput!779 testedP!204 totalInput!779) lt!2633145)))

(declare-fun bs!1937815 () Bool)

(assert (= bs!1937815 d!2302935))

(declare-fun m!8084864 () Bool)

(assert (=> bs!1937815 m!8084864))

(assert (=> bs!1937815 m!8084720))

(assert (=> b!7502990 d!2302935))

(declare-fun bs!1937816 () Bool)

(declare-fun b!7503114 () Bool)

(declare-fun d!2302937 () Bool)

(assert (= bs!1937816 (and b!7503114 d!2302937)))

(declare-fun lambda!465052 () Int)

(declare-fun lambda!465051 () Int)

(assert (=> bs!1937816 (not (= lambda!465052 lambda!465051))))

(declare-fun bs!1937817 () Bool)

(declare-fun b!7503115 () Bool)

(assert (= bs!1937817 (and b!7503115 d!2302937)))

(declare-fun lambda!465053 () Int)

(assert (=> bs!1937817 (not (= lambda!465053 lambda!465051))))

(declare-fun bs!1937818 () Bool)

(assert (= bs!1937818 (and b!7503115 b!7503114)))

(assert (=> bs!1937818 (= lambda!465053 lambda!465052)))

(declare-fun bm!688632 () Bool)

(declare-datatypes ((List!72443 0))(
  ( (Nil!72319) (Cons!72319 (h!78767 Context!16868) (t!387012 List!72443)) )
))
(declare-fun call!688637 () List!72443)

(declare-fun toList!11817 ((Set Context!16868)) List!72443)

(assert (=> bm!688632 (= call!688637 (toList!11817 z!3716))))

(declare-fun lt!2633162 () Bool)

(declare-datatypes ((Option!17213 0))(
  ( (None!17212) (Some!17212 (v!54341 List!72439)) )
))
(declare-fun isEmpty!41297 (Option!17213) Bool)

(declare-fun getLanguageWitness!1031 ((Set Context!16868)) Option!17213)

(assert (=> d!2302937 (= lt!2633162 (isEmpty!41297 (getLanguageWitness!1031 z!3716)))))

(declare-fun forall!18258 ((Set Context!16868) Int) Bool)

(assert (=> d!2302937 (= lt!2633162 (forall!18258 z!3716 lambda!465051))))

(declare-fun lt!2633166 () Unit!166262)

(declare-fun e!4473527 () Unit!166262)

(assert (=> d!2302937 (= lt!2633166 e!4473527)))

(declare-fun c!1385118 () Bool)

(assert (=> d!2302937 (= c!1385118 (not (forall!18258 z!3716 lambda!465051)))))

(assert (=> d!2302937 (= (lostCauseZipper!1370 z!3716) lt!2633162)))

(declare-fun Unit!166270 () Unit!166262)

(assert (=> b!7503114 (= e!4473527 Unit!166270)))

(declare-fun lt!2633168 () List!72443)

(assert (=> b!7503114 (= lt!2633168 call!688637)))

(declare-fun lt!2633164 () Unit!166262)

(declare-fun lemmaNotForallThenExists!488 (List!72443 Int) Unit!166262)

(assert (=> b!7503114 (= lt!2633164 (lemmaNotForallThenExists!488 lt!2633168 lambda!465051))))

(declare-fun call!688638 () Bool)

(assert (=> b!7503114 call!688638))

(declare-fun lt!2633163 () Unit!166262)

(assert (=> b!7503114 (= lt!2633163 lt!2633164)))

(declare-fun bm!688633 () Bool)

(declare-fun lt!2633165 () List!72443)

(declare-fun exists!4838 (List!72443 Int) Bool)

(assert (=> bm!688633 (= call!688638 (exists!4838 (ite c!1385118 lt!2633168 lt!2633165) (ite c!1385118 lambda!465052 lambda!465053)))))

(declare-fun Unit!166271 () Unit!166262)

(assert (=> b!7503115 (= e!4473527 Unit!166271)))

(assert (=> b!7503115 (= lt!2633165 call!688637)))

(declare-fun lt!2633167 () Unit!166262)

(declare-fun lemmaForallThenNotExists!455 (List!72443 Int) Unit!166262)

(assert (=> b!7503115 (= lt!2633167 (lemmaForallThenNotExists!455 lt!2633165 lambda!465051))))

(assert (=> b!7503115 (not call!688638)))

(declare-fun lt!2633169 () Unit!166262)

(assert (=> b!7503115 (= lt!2633169 lt!2633167)))

(assert (= (and d!2302937 c!1385118) b!7503114))

(assert (= (and d!2302937 (not c!1385118)) b!7503115))

(assert (= (or b!7503114 b!7503115) bm!688632))

(assert (= (or b!7503114 b!7503115) bm!688633))

(declare-fun m!8084866 () Bool)

(assert (=> bm!688632 m!8084866))

(declare-fun m!8084868 () Bool)

(assert (=> bm!688633 m!8084868))

(declare-fun m!8084870 () Bool)

(assert (=> b!7503115 m!8084870))

(declare-fun m!8084872 () Bool)

(assert (=> b!7503114 m!8084872))

(declare-fun m!8084874 () Bool)

(assert (=> d!2302937 m!8084874))

(assert (=> d!2302937 m!8084874))

(declare-fun m!8084876 () Bool)

(assert (=> d!2302937 m!8084876))

(declare-fun m!8084878 () Bool)

(assert (=> d!2302937 m!8084878))

(assert (=> d!2302937 m!8084878))

(assert (=> b!7502985 d!2302937))

(declare-fun d!2302939 () Bool)

(assert (=> d!2302939 (= testedSuffix!164 lt!2633058)))

(declare-fun lt!2633172 () Unit!166262)

(declare-fun choose!58026 (List!72439 List!72439 List!72439 List!72439 List!72439) Unit!166262)

(assert (=> d!2302939 (= lt!2633172 (choose!58026 testedP!204 testedSuffix!164 testedP!204 lt!2633058 totalInput!779))))

(assert (=> d!2302939 (isPrefix!5968 testedP!204 totalInput!779)))

(assert (=> d!2302939 (= (lemmaSamePrefixThenSameSuffix!2773 testedP!204 testedSuffix!164 testedP!204 lt!2633058 totalInput!779) lt!2633172)))

(declare-fun bs!1937819 () Bool)

(assert (= bs!1937819 d!2302939))

(declare-fun m!8084880 () Bool)

(assert (=> bs!1937819 m!8084880))

(assert (=> bs!1937819 m!8084710))

(assert (=> b!7502985 d!2302939))

(declare-fun d!2302941 () Bool)

(declare-fun lt!2633175 () List!72439)

(assert (=> d!2302941 (= (++!17301 testedP!204 lt!2633175) totalInput!779)))

(declare-fun e!4473530 () List!72439)

(assert (=> d!2302941 (= lt!2633175 e!4473530)))

(declare-fun c!1385121 () Bool)

(assert (=> d!2302941 (= c!1385121 (is-Cons!72315 testedP!204))))

(assert (=> d!2302941 (>= (size!42243 totalInput!779) (size!42243 testedP!204))))

(assert (=> d!2302941 (= (getSuffix!3470 totalInput!779 testedP!204) lt!2633175)))

(declare-fun b!7503120 () Bool)

(assert (=> b!7503120 (= e!4473530 (getSuffix!3470 (tail!14974 totalInput!779) (t!387008 testedP!204)))))

(declare-fun b!7503121 () Bool)

(assert (=> b!7503121 (= e!4473530 totalInput!779)))

(assert (= (and d!2302941 c!1385121) b!7503120))

(assert (= (and d!2302941 (not c!1385121)) b!7503121))

(declare-fun m!8084882 () Bool)

(assert (=> d!2302941 m!8084882))

(assert (=> d!2302941 m!8084708))

(assert (=> d!2302941 m!8084704))

(assert (=> b!7503120 m!8084828))

(assert (=> b!7503120 m!8084828))

(declare-fun m!8084884 () Bool)

(assert (=> b!7503120 m!8084884))

(assert (=> b!7502985 d!2302941))

(declare-fun b!7503124 () Bool)

(declare-fun res!3010092 () Bool)

(declare-fun e!4473531 () Bool)

(assert (=> b!7503124 (=> (not res!3010092) (not e!4473531))))

(declare-fun lt!2633176 () List!72439)

(assert (=> b!7503124 (= res!3010092 (= (size!42243 lt!2633176) (+ (size!42243 testedP!204) (size!42243 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(declare-fun b!7503122 () Bool)

(declare-fun e!4473532 () List!72439)

(assert (=> b!7503122 (= e!4473532 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))

(declare-fun d!2302943 () Bool)

(assert (=> d!2302943 e!4473531))

(declare-fun res!3010091 () Bool)

(assert (=> d!2302943 (=> (not res!3010091) (not e!4473531))))

(assert (=> d!2302943 (= res!3010091 (= (content!15282 lt!2633176) (set.union (content!15282 testedP!204) (content!15282 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(assert (=> d!2302943 (= lt!2633176 e!4473532)))

(declare-fun c!1385122 () Bool)

(assert (=> d!2302943 (= c!1385122 (is-Nil!72315 testedP!204))))

(assert (=> d!2302943 (= (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)) lt!2633176)))

(declare-fun b!7503125 () Bool)

(assert (=> b!7503125 (= e!4473531 (or (not (= (Cons!72315 (head!15408 lt!2633058) Nil!72315) Nil!72315)) (= lt!2633176 testedP!204)))))

(declare-fun b!7503123 () Bool)

(assert (=> b!7503123 (= e!4473532 (Cons!72315 (h!78763 testedP!204) (++!17301 (t!387008 testedP!204) (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))

(assert (= (and d!2302943 c!1385122) b!7503122))

(assert (= (and d!2302943 (not c!1385122)) b!7503123))

(assert (= (and d!2302943 res!3010091) b!7503124))

(assert (= (and b!7503124 res!3010092) b!7503125))

(declare-fun m!8084886 () Bool)

(assert (=> b!7503124 m!8084886))

(assert (=> b!7503124 m!8084704))

(declare-fun m!8084888 () Bool)

(assert (=> b!7503124 m!8084888))

(declare-fun m!8084890 () Bool)

(assert (=> d!2302943 m!8084890))

(assert (=> d!2302943 m!8084854))

(declare-fun m!8084892 () Bool)

(assert (=> d!2302943 m!8084892))

(declare-fun m!8084894 () Bool)

(assert (=> b!7503123 m!8084894))

(assert (=> b!7502997 d!2302943))

(declare-fun b!7503129 () Bool)

(declare-fun e!4473534 () Bool)

(assert (=> b!7503129 (= e!4473534 (>= (size!42243 totalInput!779) (size!42243 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(declare-fun d!2302945 () Bool)

(assert (=> d!2302945 e!4473534))

(declare-fun res!3010096 () Bool)

(assert (=> d!2302945 (=> res!3010096 e!4473534)))

(declare-fun lt!2633177 () Bool)

(assert (=> d!2302945 (= res!3010096 (not lt!2633177))))

(declare-fun e!4473533 () Bool)

(assert (=> d!2302945 (= lt!2633177 e!4473533)))

(declare-fun res!3010093 () Bool)

(assert (=> d!2302945 (=> res!3010093 e!4473533)))

(assert (=> d!2302945 (= res!3010093 (is-Nil!72315 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))

(assert (=> d!2302945 (= (isPrefix!5968 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)) totalInput!779) lt!2633177)))

(declare-fun b!7503126 () Bool)

(declare-fun e!4473535 () Bool)

(assert (=> b!7503126 (= e!4473533 e!4473535)))

(declare-fun res!3010094 () Bool)

(assert (=> b!7503126 (=> (not res!3010094) (not e!4473535))))

(assert (=> b!7503126 (= res!3010094 (not (is-Nil!72315 totalInput!779)))))

(declare-fun b!7503128 () Bool)

(assert (=> b!7503128 (= e!4473535 (isPrefix!5968 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))) (tail!14974 totalInput!779)))))

(declare-fun b!7503127 () Bool)

(declare-fun res!3010095 () Bool)

(assert (=> b!7503127 (=> (not res!3010095) (not e!4473535))))

(assert (=> b!7503127 (= res!3010095 (= (head!15408 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))) (head!15408 totalInput!779)))))

(assert (= (and d!2302945 (not res!3010093)) b!7503126))

(assert (= (and b!7503126 res!3010094) b!7503127))

(assert (= (and b!7503127 res!3010095) b!7503128))

(assert (= (and d!2302945 (not res!3010096)) b!7503129))

(assert (=> b!7503129 m!8084708))

(assert (=> b!7503129 m!8084690))

(declare-fun m!8084896 () Bool)

(assert (=> b!7503129 m!8084896))

(assert (=> b!7503128 m!8084690))

(declare-fun m!8084898 () Bool)

(assert (=> b!7503128 m!8084898))

(assert (=> b!7503128 m!8084828))

(assert (=> b!7503128 m!8084898))

(assert (=> b!7503128 m!8084828))

(declare-fun m!8084900 () Bool)

(assert (=> b!7503128 m!8084900))

(assert (=> b!7503127 m!8084690))

(declare-fun m!8084902 () Bool)

(assert (=> b!7503127 m!8084902))

(assert (=> b!7503127 m!8084834))

(assert (=> b!7502997 d!2302945))

(declare-fun bs!1937820 () Bool)

(declare-fun d!2302947 () Bool)

(assert (= bs!1937820 (and d!2302947 d!2302937)))

(declare-fun lambda!465056 () Int)

(assert (=> bs!1937820 (not (= lambda!465056 lambda!465051))))

(declare-fun bs!1937821 () Bool)

(assert (= bs!1937821 (and d!2302947 b!7503114)))

(assert (=> bs!1937821 (not (= lambda!465056 lambda!465052))))

(declare-fun bs!1937822 () Bool)

(assert (= bs!1937822 (and d!2302947 b!7503115)))

(assert (=> bs!1937822 (not (= lambda!465056 lambda!465053))))

(declare-fun exists!4839 ((Set Context!16868) Int) Bool)

(assert (=> d!2302947 (= (nullableZipper!3162 z!3716) (exists!4839 z!3716 lambda!465056))))

(declare-fun bs!1937823 () Bool)

(assert (= bs!1937823 d!2302947))

(declare-fun m!8084904 () Bool)

(assert (=> bs!1937823 m!8084904))

(assert (=> b!7502997 d!2302947))

(declare-fun d!2302949 () Bool)

(assert (=> d!2302949 (= (tail!14974 testedSuffix!164) (t!387008 testedSuffix!164))))

(assert (=> b!7502997 d!2302949))

(declare-fun d!2302951 () Bool)

(assert (=> d!2302951 (= (head!15408 testedSuffix!164) (h!78763 testedSuffix!164))))

(assert (=> b!7502997 d!2302951))

(declare-fun d!2302953 () Bool)

(assert (=> d!2302953 (= (++!17301 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315)) lt!2633051) totalInput!779)))

(declare-fun lt!2633180 () Unit!166262)

(declare-fun choose!58027 (List!72439 C!39670 List!72439 List!72439) Unit!166262)

(assert (=> d!2302953 (= lt!2633180 (choose!58027 testedP!204 lt!2633052 lt!2633051 totalInput!779))))

(assert (=> d!2302953 (= (++!17301 testedP!204 (Cons!72315 lt!2633052 lt!2633051)) totalInput!779)))

(assert (=> d!2302953 (= (lemmaMoveElementToOtherListKeepsConcatEq!3142 testedP!204 lt!2633052 lt!2633051 totalInput!779) lt!2633180)))

(declare-fun bs!1937824 () Bool)

(assert (= bs!1937824 d!2302953))

(assert (=> bs!1937824 m!8084700))

(assert (=> bs!1937824 m!8084700))

(declare-fun m!8084906 () Bool)

(assert (=> bs!1937824 m!8084906))

(declare-fun m!8084908 () Bool)

(assert (=> bs!1937824 m!8084908))

(declare-fun m!8084910 () Bool)

(assert (=> bs!1937824 m!8084910))

(assert (=> b!7502997 d!2302953))

(declare-fun b!7503132 () Bool)

(declare-fun res!3010098 () Bool)

(declare-fun e!4473536 () Bool)

(assert (=> b!7503132 (=> (not res!3010098) (not e!4473536))))

(declare-fun lt!2633181 () List!72439)

(assert (=> b!7503132 (= res!3010098 (= (size!42243 lt!2633181) (+ (size!42243 testedP!204) (size!42243 (Cons!72315 lt!2633052 Nil!72315)))))))

(declare-fun b!7503130 () Bool)

(declare-fun e!4473537 () List!72439)

(assert (=> b!7503130 (= e!4473537 (Cons!72315 lt!2633052 Nil!72315))))

(declare-fun d!2302955 () Bool)

(assert (=> d!2302955 e!4473536))

(declare-fun res!3010097 () Bool)

(assert (=> d!2302955 (=> (not res!3010097) (not e!4473536))))

(assert (=> d!2302955 (= res!3010097 (= (content!15282 lt!2633181) (set.union (content!15282 testedP!204) (content!15282 (Cons!72315 lt!2633052 Nil!72315)))))))

(assert (=> d!2302955 (= lt!2633181 e!4473537)))

(declare-fun c!1385125 () Bool)

(assert (=> d!2302955 (= c!1385125 (is-Nil!72315 testedP!204))))

(assert (=> d!2302955 (= (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315)) lt!2633181)))

(declare-fun b!7503133 () Bool)

(assert (=> b!7503133 (= e!4473536 (or (not (= (Cons!72315 lt!2633052 Nil!72315) Nil!72315)) (= lt!2633181 testedP!204)))))

(declare-fun b!7503131 () Bool)

(assert (=> b!7503131 (= e!4473537 (Cons!72315 (h!78763 testedP!204) (++!17301 (t!387008 testedP!204) (Cons!72315 lt!2633052 Nil!72315))))))

(assert (= (and d!2302955 c!1385125) b!7503130))

(assert (= (and d!2302955 (not c!1385125)) b!7503131))

(assert (= (and d!2302955 res!3010097) b!7503132))

(assert (= (and b!7503132 res!3010098) b!7503133))

(declare-fun m!8084912 () Bool)

(assert (=> b!7503132 m!8084912))

(assert (=> b!7503132 m!8084704))

(declare-fun m!8084914 () Bool)

(assert (=> b!7503132 m!8084914))

(declare-fun m!8084916 () Bool)

(assert (=> d!2302955 m!8084916))

(assert (=> d!2302955 m!8084854))

(declare-fun m!8084918 () Bool)

(assert (=> d!2302955 m!8084918))

(declare-fun m!8084920 () Bool)

(assert (=> b!7503131 m!8084920))

(assert (=> b!7502997 d!2302955))

(declare-fun d!2302957 () Bool)

(assert (=> d!2302957 (= (head!15408 lt!2633058) (h!78763 lt!2633058))))

(assert (=> b!7502997 d!2302957))

(declare-fun b!7503136 () Bool)

(declare-fun res!3010100 () Bool)

(declare-fun e!4473538 () Bool)

(assert (=> b!7503136 (=> (not res!3010100) (not e!4473538))))

(declare-fun lt!2633182 () List!72439)

(assert (=> b!7503136 (= res!3010100 (= (size!42243 lt!2633182) (+ (size!42243 lt!2633061) (size!42243 lt!2633051))))))

(declare-fun b!7503134 () Bool)

(declare-fun e!4473539 () List!72439)

(assert (=> b!7503134 (= e!4473539 lt!2633051)))

(declare-fun d!2302959 () Bool)

(assert (=> d!2302959 e!4473538))

(declare-fun res!3010099 () Bool)

(assert (=> d!2302959 (=> (not res!3010099) (not e!4473538))))

(assert (=> d!2302959 (= res!3010099 (= (content!15282 lt!2633182) (set.union (content!15282 lt!2633061) (content!15282 lt!2633051))))))

(assert (=> d!2302959 (= lt!2633182 e!4473539)))

(declare-fun c!1385126 () Bool)

(assert (=> d!2302959 (= c!1385126 (is-Nil!72315 lt!2633061))))

(assert (=> d!2302959 (= (++!17301 lt!2633061 lt!2633051) lt!2633182)))

(declare-fun b!7503137 () Bool)

(assert (=> b!7503137 (= e!4473538 (or (not (= lt!2633051 Nil!72315)) (= lt!2633182 lt!2633061)))))

(declare-fun b!7503135 () Bool)

(assert (=> b!7503135 (= e!4473539 (Cons!72315 (h!78763 lt!2633061) (++!17301 (t!387008 lt!2633061) lt!2633051)))))

(assert (= (and d!2302959 c!1385126) b!7503134))

(assert (= (and d!2302959 (not c!1385126)) b!7503135))

(assert (= (and d!2302959 res!3010099) b!7503136))

(assert (= (and b!7503136 res!3010100) b!7503137))

(declare-fun m!8084922 () Bool)

(assert (=> b!7503136 m!8084922))

(assert (=> b!7503136 m!8084716))

(declare-fun m!8084924 () Bool)

(assert (=> b!7503136 m!8084924))

(declare-fun m!8084926 () Bool)

(assert (=> d!2302959 m!8084926))

(declare-fun m!8084928 () Bool)

(assert (=> d!2302959 m!8084928))

(declare-fun m!8084930 () Bool)

(assert (=> d!2302959 m!8084930))

(declare-fun m!8084932 () Bool)

(assert (=> b!7503135 m!8084932))

(assert (=> b!7502997 d!2302959))

(declare-fun d!2302961 () Bool)

(assert (=> d!2302961 (isPrefix!5968 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)) totalInput!779)))

(declare-fun lt!2633185 () Unit!166262)

(declare-fun choose!58028 (List!72439 List!72439) Unit!166262)

(assert (=> d!2302961 (= lt!2633185 (choose!58028 testedP!204 totalInput!779))))

(assert (=> d!2302961 (isPrefix!5968 testedP!204 totalInput!779)))

(assert (=> d!2302961 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1109 testedP!204 totalInput!779) lt!2633185)))

(declare-fun bs!1937825 () Bool)

(assert (= bs!1937825 d!2302961))

(declare-fun m!8084934 () Bool)

(assert (=> bs!1937825 m!8084934))

(declare-fun m!8084936 () Bool)

(assert (=> bs!1937825 m!8084936))

(assert (=> bs!1937825 m!8084730))

(declare-fun m!8084938 () Bool)

(assert (=> bs!1937825 m!8084938))

(assert (=> bs!1937825 m!8084710))

(assert (=> bs!1937825 m!8084730))

(assert (=> bs!1937825 m!8084934))

(declare-fun m!8084940 () Bool)

(assert (=> bs!1937825 m!8084940))

(assert (=> b!7502997 d!2302961))

(declare-fun condSetEmpty!56897 () Bool)

(assert (=> setNonEmpty!56891 (= condSetEmpty!56897 (= setRest!56891 (as set.empty (Set Context!16868))))))

(declare-fun setRes!56897 () Bool)

(assert (=> setNonEmpty!56891 (= tp!2178023 setRes!56897)))

(declare-fun setIsEmpty!56897 () Bool)

(assert (=> setIsEmpty!56897 setRes!56897))

(declare-fun e!4473542 () Bool)

(declare-fun setNonEmpty!56897 () Bool)

(declare-fun tp!2178046 () Bool)

(declare-fun setElem!56897 () Context!16868)

(assert (=> setNonEmpty!56897 (= setRes!56897 (and tp!2178046 (inv!92421 setElem!56897) e!4473542))))

(declare-fun setRest!56897 () (Set Context!16868))

(assert (=> setNonEmpty!56897 (= setRest!56891 (set.union (set.insert setElem!56897 (as set.empty (Set Context!16868))) setRest!56897))))

(declare-fun b!7503142 () Bool)

(declare-fun tp!2178047 () Bool)

(assert (=> b!7503142 (= e!4473542 tp!2178047)))

(assert (= (and setNonEmpty!56891 condSetEmpty!56897) setIsEmpty!56897))

(assert (= (and setNonEmpty!56891 (not condSetEmpty!56897)) setNonEmpty!56897))

(assert (= setNonEmpty!56897 b!7503142))

(declare-fun m!8084942 () Bool)

(assert (=> setNonEmpty!56897 m!8084942))

(declare-fun b!7503147 () Bool)

(declare-fun e!4473545 () Bool)

(declare-fun tp!2178050 () Bool)

(assert (=> b!7503147 (= e!4473545 (and tp_is_empty!49685 tp!2178050))))

(assert (=> b!7502991 (= tp!2178022 e!4473545)))

(assert (= (and b!7502991 (is-Cons!72315 (t!387008 testedP!204))) b!7503147))

(declare-fun b!7503148 () Bool)

(declare-fun e!4473546 () Bool)

(declare-fun tp!2178051 () Bool)

(assert (=> b!7503148 (= e!4473546 (and tp_is_empty!49685 tp!2178051))))

(assert (=> b!7502993 (= tp!2178026 e!4473546)))

(assert (= (and b!7502993 (is-Cons!72315 (t!387008 totalInput!779))) b!7503148))

(declare-fun b!7503153 () Bool)

(declare-fun e!4473549 () Bool)

(declare-fun tp!2178056 () Bool)

(declare-fun tp!2178057 () Bool)

(assert (=> b!7503153 (= e!4473549 (and tp!2178056 tp!2178057))))

(assert (=> b!7502994 (= tp!2178025 e!4473549)))

(assert (= (and b!7502994 (is-Cons!72316 (exprs!8934 setElem!56891))) b!7503153))

(declare-fun b!7503154 () Bool)

(declare-fun e!4473550 () Bool)

(declare-fun tp!2178058 () Bool)

(assert (=> b!7503154 (= e!4473550 (and tp_is_empty!49685 tp!2178058))))

(assert (=> b!7502984 (= tp!2178024 e!4473550)))

(assert (= (and b!7502984 (is-Cons!72315 (t!387008 testedSuffix!164))) b!7503154))

(push 1)

(assert (not b!7503127))

(assert (not b!7503124))

(assert (not d!2302953))

(assert (not b!7503087))

(assert (not d!2302941))

(assert (not b!7503131))

(assert (not b!7503045))

(assert (not d!2302955))

(assert (not b!7503114))

(assert (not b!7503107))

(assert (not b!7503123))

(assert (not d!2302959))

(assert (not d!2302913))

(assert (not b!7503142))

(assert (not b!7503147))

(assert (not bm!688632))

(assert (not setNonEmpty!56897))

(assert (not b!7503104))

(assert (not d!2302927))

(assert (not b!7503092))

(assert (not b!7503153))

(assert (not d!2302947))

(assert (not b!7503103))

(assert (not b!7503091))

(assert (not d!2302961))

(assert (not d!2302939))

(assert (not b!7503089))

(assert (not b!7503148))

(assert (not d!2302937))

(assert (not d!2302935))

(assert (not b!7503132))

(assert (not b!7503109))

(assert (not d!2302903))

(assert (not b!7503093))

(assert (not b!7503154))

(assert (not b!7503088))

(assert (not b!7503128))

(assert (not d!2302929))

(assert (not b!7503115))

(assert tp_is_empty!49685)

(assert (not b!7503108))

(assert (not d!2302943))

(assert (not b!7503049))

(assert (not b!7503135))

(assert (not b!7503047))

(assert (not b!7503136))

(assert (not d!2302931))

(assert (not bm!688633))

(assert (not b!7503120))

(assert (not b!7503129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2303003 () Bool)

(declare-fun c!1385153 () Bool)

(assert (=> d!2303003 (= c!1385153 (is-Nil!72315 lt!2633138))))

(declare-fun e!4473591 () (Set C!39670))

(assert (=> d!2303003 (= (content!15282 lt!2633138) e!4473591)))

(declare-fun b!7503218 () Bool)

(assert (=> b!7503218 (= e!4473591 (as set.empty (Set C!39670)))))

(declare-fun b!7503219 () Bool)

(assert (=> b!7503219 (= e!4473591 (set.union (set.insert (h!78763 lt!2633138) (as set.empty (Set C!39670))) (content!15282 (t!387008 lt!2633138))))))

(assert (= (and d!2303003 c!1385153) b!7503218))

(assert (= (and d!2303003 (not c!1385153)) b!7503219))

(declare-fun m!8085038 () Bool)

(assert (=> b!7503219 m!8085038))

(declare-fun m!8085040 () Bool)

(assert (=> b!7503219 m!8085040))

(assert (=> d!2302929 d!2303003))

(declare-fun d!2303005 () Bool)

(declare-fun c!1385154 () Bool)

(assert (=> d!2303005 (= c!1385154 (is-Nil!72315 testedP!204))))

(declare-fun e!4473592 () (Set C!39670))

(assert (=> d!2303005 (= (content!15282 testedP!204) e!4473592)))

(declare-fun b!7503220 () Bool)

(assert (=> b!7503220 (= e!4473592 (as set.empty (Set C!39670)))))

(declare-fun b!7503221 () Bool)

(assert (=> b!7503221 (= e!4473592 (set.union (set.insert (h!78763 testedP!204) (as set.empty (Set C!39670))) (content!15282 (t!387008 testedP!204))))))

(assert (= (and d!2303005 c!1385154) b!7503220))

(assert (= (and d!2303005 (not c!1385154)) b!7503221))

(declare-fun m!8085042 () Bool)

(assert (=> b!7503221 m!8085042))

(declare-fun m!8085044 () Bool)

(assert (=> b!7503221 m!8085044))

(assert (=> d!2302929 d!2303005))

(declare-fun d!2303007 () Bool)

(declare-fun c!1385155 () Bool)

(assert (=> d!2303007 (= c!1385155 (is-Nil!72315 testedSuffix!164))))

(declare-fun e!4473593 () (Set C!39670))

(assert (=> d!2303007 (= (content!15282 testedSuffix!164) e!4473593)))

(declare-fun b!7503222 () Bool)

(assert (=> b!7503222 (= e!4473593 (as set.empty (Set C!39670)))))

(declare-fun b!7503223 () Bool)

(assert (=> b!7503223 (= e!4473593 (set.union (set.insert (h!78763 testedSuffix!164) (as set.empty (Set C!39670))) (content!15282 (t!387008 testedSuffix!164))))))

(assert (= (and d!2303007 c!1385155) b!7503222))

(assert (= (and d!2303007 (not c!1385155)) b!7503223))

(declare-fun m!8085046 () Bool)

(assert (=> b!7503223 m!8085046))

(declare-fun m!8085048 () Bool)

(assert (=> b!7503223 m!8085048))

(assert (=> d!2302929 d!2303007))

(declare-fun d!2303009 () Bool)

(declare-fun c!1385156 () Bool)

(assert (=> d!2303009 (= c!1385156 (is-Nil!72315 lt!2633182))))

(declare-fun e!4473594 () (Set C!39670))

(assert (=> d!2303009 (= (content!15282 lt!2633182) e!4473594)))

(declare-fun b!7503224 () Bool)

(assert (=> b!7503224 (= e!4473594 (as set.empty (Set C!39670)))))

(declare-fun b!7503225 () Bool)

(assert (=> b!7503225 (= e!4473594 (set.union (set.insert (h!78763 lt!2633182) (as set.empty (Set C!39670))) (content!15282 (t!387008 lt!2633182))))))

(assert (= (and d!2303009 c!1385156) b!7503224))

(assert (= (and d!2303009 (not c!1385156)) b!7503225))

(declare-fun m!8085050 () Bool)

(assert (=> b!7503225 m!8085050))

(declare-fun m!8085052 () Bool)

(assert (=> b!7503225 m!8085052))

(assert (=> d!2302959 d!2303009))

(declare-fun d!2303011 () Bool)

(declare-fun c!1385157 () Bool)

(assert (=> d!2303011 (= c!1385157 (is-Nil!72315 lt!2633061))))

(declare-fun e!4473595 () (Set C!39670))

(assert (=> d!2303011 (= (content!15282 lt!2633061) e!4473595)))

(declare-fun b!7503226 () Bool)

(assert (=> b!7503226 (= e!4473595 (as set.empty (Set C!39670)))))

(declare-fun b!7503227 () Bool)

(assert (=> b!7503227 (= e!4473595 (set.union (set.insert (h!78763 lt!2633061) (as set.empty (Set C!39670))) (content!15282 (t!387008 lt!2633061))))))

(assert (= (and d!2303011 c!1385157) b!7503226))

(assert (= (and d!2303011 (not c!1385157)) b!7503227))

(declare-fun m!8085054 () Bool)

(assert (=> b!7503227 m!8085054))

(declare-fun m!8085056 () Bool)

(assert (=> b!7503227 m!8085056))

(assert (=> d!2302959 d!2303011))

(declare-fun d!2303013 () Bool)

(declare-fun c!1385158 () Bool)

(assert (=> d!2303013 (= c!1385158 (is-Nil!72315 lt!2633051))))

(declare-fun e!4473596 () (Set C!39670))

(assert (=> d!2303013 (= (content!15282 lt!2633051) e!4473596)))

(declare-fun b!7503228 () Bool)

(assert (=> b!7503228 (= e!4473596 (as set.empty (Set C!39670)))))

(declare-fun b!7503229 () Bool)

(assert (=> b!7503229 (= e!4473596 (set.union (set.insert (h!78763 lt!2633051) (as set.empty (Set C!39670))) (content!15282 (t!387008 lt!2633051))))))

(assert (= (and d!2303013 c!1385158) b!7503228))

(assert (= (and d!2303013 (not c!1385158)) b!7503229))

(declare-fun m!8085058 () Bool)

(assert (=> b!7503229 m!8085058))

(declare-fun m!8085060 () Bool)

(assert (=> b!7503229 m!8085060))

(assert (=> d!2302959 d!2303013))

(assert (=> d!2302903 d!2302905))

(assert (=> d!2302903 d!2302911))

(declare-fun d!2303015 () Bool)

(assert (=> d!2303015 (<= (size!42243 testedP!204) (size!42243 totalInput!779))))

(assert (=> d!2303015 true))

(declare-fun _$64!856 () Unit!166262)

(assert (=> d!2303015 (= (choose!58022 testedP!204 totalInput!779) _$64!856)))

(declare-fun bs!1937840 () Bool)

(assert (= bs!1937840 d!2303015))

(assert (=> bs!1937840 m!8084704))

(assert (=> bs!1937840 m!8084708))

(assert (=> d!2302903 d!2303015))

(assert (=> d!2302903 d!2302923))

(declare-fun d!2303017 () Bool)

(declare-fun lt!2633241 () Int)

(assert (=> d!2303017 (>= lt!2633241 0)))

(declare-fun e!4473597 () Int)

(assert (=> d!2303017 (= lt!2633241 e!4473597)))

(declare-fun c!1385159 () Bool)

(assert (=> d!2303017 (= c!1385159 (is-Nil!72315 (t!387008 lt!2633061)))))

(assert (=> d!2303017 (= (size!42243 (t!387008 lt!2633061)) lt!2633241)))

(declare-fun b!7503230 () Bool)

(assert (=> b!7503230 (= e!4473597 0)))

(declare-fun b!7503231 () Bool)

(assert (=> b!7503231 (= e!4473597 (+ 1 (size!42243 (t!387008 (t!387008 lt!2633061)))))))

(assert (= (and d!2303017 c!1385159) b!7503230))

(assert (= (and d!2303017 (not c!1385159)) b!7503231))

(declare-fun m!8085062 () Bool)

(assert (=> b!7503231 m!8085062))

(assert (=> b!7503047 d!2303017))

(declare-fun d!2303019 () Bool)

(declare-fun lt!2633242 () Int)

(assert (=> d!2303019 (>= lt!2633242 0)))

(declare-fun e!4473598 () Int)

(assert (=> d!2303019 (= lt!2633242 e!4473598)))

(declare-fun c!1385160 () Bool)

(assert (=> d!2303019 (= c!1385160 (is-Nil!72315 lt!2633064))))

(assert (=> d!2303019 (= (size!42243 lt!2633064) lt!2633242)))

(declare-fun b!7503232 () Bool)

(assert (=> b!7503232 (= e!4473598 0)))

(declare-fun b!7503233 () Bool)

(assert (=> b!7503233 (= e!4473598 (+ 1 (size!42243 (t!387008 lt!2633064))))))

(assert (= (and d!2303019 c!1385160) b!7503232))

(assert (= (and d!2303019 (not c!1385160)) b!7503233))

(declare-fun m!8085064 () Bool)

(assert (=> b!7503233 m!8085064))

(assert (=> b!7503093 d!2303019))

(assert (=> b!7503093 d!2302905))

(declare-fun bs!1937841 () Bool)

(declare-fun d!2303021 () Bool)

(assert (= bs!1937841 (and d!2303021 d!2302937)))

(declare-fun lambda!465080 () Int)

(assert (=> bs!1937841 (not (= lambda!465080 lambda!465051))))

(declare-fun bs!1937842 () Bool)

(assert (= bs!1937842 (and d!2303021 b!7503114)))

(assert (=> bs!1937842 (not (= lambda!465080 lambda!465052))))

(declare-fun bs!1937843 () Bool)

(assert (= bs!1937843 (and d!2303021 b!7503115)))

(assert (=> bs!1937843 (not (= lambda!465080 lambda!465053))))

(declare-fun bs!1937844 () Bool)

(assert (= bs!1937844 (and d!2303021 d!2302947)))

(assert (=> bs!1937844 (not (= lambda!465080 lambda!465056))))

(assert (=> d!2303021 true))

(declare-fun order!29637 () Int)

(declare-fun dynLambda!29769 (Int Int) Int)

(assert (=> d!2303021 (< (dynLambda!29769 order!29637 (ite c!1385118 lambda!465052 lambda!465053)) (dynLambda!29769 order!29637 lambda!465080))))

(declare-fun forall!18261 (List!72443 Int) Bool)

(assert (=> d!2303021 (= (exists!4838 (ite c!1385118 lt!2633168 lt!2633165) (ite c!1385118 lambda!465052 lambda!465053)) (not (forall!18261 (ite c!1385118 lt!2633168 lt!2633165) lambda!465080)))))

(declare-fun bs!1937845 () Bool)

(assert (= bs!1937845 d!2303021))

(declare-fun m!8085066 () Bool)

(assert (=> bs!1937845 m!8085066))

(assert (=> bm!688633 d!2303021))

(declare-fun d!2303023 () Bool)

(assert (=> d!2303023 (= testedSuffix!164 lt!2633058)))

(assert (=> d!2303023 true))

(declare-fun _$63!1340 () Unit!166262)

(assert (=> d!2303023 (= (choose!58026 testedP!204 testedSuffix!164 testedP!204 lt!2633058 totalInput!779) _$63!1340)))

(assert (=> d!2302939 d!2303023))

(assert (=> d!2302939 d!2302923))

(declare-fun d!2303025 () Bool)

(declare-fun c!1385161 () Bool)

(assert (=> d!2303025 (= c!1385161 (is-Nil!72315 lt!2633181))))

(declare-fun e!4473599 () (Set C!39670))

(assert (=> d!2303025 (= (content!15282 lt!2633181) e!4473599)))

(declare-fun b!7503236 () Bool)

(assert (=> b!7503236 (= e!4473599 (as set.empty (Set C!39670)))))

(declare-fun b!7503237 () Bool)

(assert (=> b!7503237 (= e!4473599 (set.union (set.insert (h!78763 lt!2633181) (as set.empty (Set C!39670))) (content!15282 (t!387008 lt!2633181))))))

(assert (= (and d!2303025 c!1385161) b!7503236))

(assert (= (and d!2303025 (not c!1385161)) b!7503237))

(declare-fun m!8085068 () Bool)

(assert (=> b!7503237 m!8085068))

(declare-fun m!8085070 () Bool)

(assert (=> b!7503237 m!8085070))

(assert (=> d!2302955 d!2303025))

(assert (=> d!2302955 d!2303005))

(declare-fun d!2303027 () Bool)

(declare-fun c!1385162 () Bool)

(assert (=> d!2303027 (= c!1385162 (is-Nil!72315 (Cons!72315 lt!2633052 Nil!72315)))))

(declare-fun e!4473600 () (Set C!39670))

(assert (=> d!2303027 (= (content!15282 (Cons!72315 lt!2633052 Nil!72315)) e!4473600)))

(declare-fun b!7503238 () Bool)

(assert (=> b!7503238 (= e!4473600 (as set.empty (Set C!39670)))))

(declare-fun b!7503239 () Bool)

(assert (=> b!7503239 (= e!4473600 (set.union (set.insert (h!78763 (Cons!72315 lt!2633052 Nil!72315)) (as set.empty (Set C!39670))) (content!15282 (t!387008 (Cons!72315 lt!2633052 Nil!72315)))))))

(assert (= (and d!2303027 c!1385162) b!7503238))

(assert (= (and d!2303027 (not c!1385162)) b!7503239))

(declare-fun m!8085072 () Bool)

(assert (=> b!7503239 m!8085072))

(declare-fun m!8085074 () Bool)

(assert (=> b!7503239 m!8085074))

(assert (=> d!2302955 d!2303027))

(declare-fun b!7503243 () Bool)

(declare-fun e!4473602 () Bool)

(assert (=> b!7503243 (= e!4473602 (>= (size!42243 (tail!14974 lt!2633064)) (size!42243 (tail!14974 testedP!204))))))

(declare-fun d!2303029 () Bool)

(assert (=> d!2303029 e!4473602))

(declare-fun res!3010118 () Bool)

(assert (=> d!2303029 (=> res!3010118 e!4473602)))

(declare-fun lt!2633243 () Bool)

(assert (=> d!2303029 (= res!3010118 (not lt!2633243))))

(declare-fun e!4473601 () Bool)

(assert (=> d!2303029 (= lt!2633243 e!4473601)))

(declare-fun res!3010115 () Bool)

(assert (=> d!2303029 (=> res!3010115 e!4473601)))

(assert (=> d!2303029 (= res!3010115 (is-Nil!72315 (tail!14974 testedP!204)))))

(assert (=> d!2303029 (= (isPrefix!5968 (tail!14974 testedP!204) (tail!14974 lt!2633064)) lt!2633243)))

(declare-fun b!7503240 () Bool)

(declare-fun e!4473603 () Bool)

(assert (=> b!7503240 (= e!4473601 e!4473603)))

(declare-fun res!3010116 () Bool)

(assert (=> b!7503240 (=> (not res!3010116) (not e!4473603))))

(assert (=> b!7503240 (= res!3010116 (not (is-Nil!72315 (tail!14974 lt!2633064))))))

(declare-fun b!7503242 () Bool)

(assert (=> b!7503242 (= e!4473603 (isPrefix!5968 (tail!14974 (tail!14974 testedP!204)) (tail!14974 (tail!14974 lt!2633064))))))

(declare-fun b!7503241 () Bool)

(declare-fun res!3010117 () Bool)

(assert (=> b!7503241 (=> (not res!3010117) (not e!4473603))))

(assert (=> b!7503241 (= res!3010117 (= (head!15408 (tail!14974 testedP!204)) (head!15408 (tail!14974 lt!2633064))))))

(assert (= (and d!2303029 (not res!3010115)) b!7503240))

(assert (= (and b!7503240 res!3010116) b!7503241))

(assert (= (and b!7503241 res!3010117) b!7503242))

(assert (= (and d!2303029 (not res!3010118)) b!7503243))

(assert (=> b!7503243 m!8084838))

(declare-fun m!8085076 () Bool)

(assert (=> b!7503243 m!8085076))

(assert (=> b!7503243 m!8084826))

(declare-fun m!8085078 () Bool)

(assert (=> b!7503243 m!8085078))

(assert (=> b!7503242 m!8084826))

(declare-fun m!8085080 () Bool)

(assert (=> b!7503242 m!8085080))

(assert (=> b!7503242 m!8084838))

(declare-fun m!8085082 () Bool)

(assert (=> b!7503242 m!8085082))

(assert (=> b!7503242 m!8085080))

(assert (=> b!7503242 m!8085082))

(declare-fun m!8085084 () Bool)

(assert (=> b!7503242 m!8085084))

(assert (=> b!7503241 m!8084826))

(declare-fun m!8085086 () Bool)

(assert (=> b!7503241 m!8085086))

(assert (=> b!7503241 m!8084838))

(declare-fun m!8085088 () Bool)

(assert (=> b!7503241 m!8085088))

(assert (=> b!7503092 d!2303029))

(declare-fun d!2303031 () Bool)

(assert (=> d!2303031 (= (tail!14974 testedP!204) (t!387008 testedP!204))))

(assert (=> b!7503092 d!2303031))

(declare-fun d!2303033 () Bool)

(assert (=> d!2303033 (= (tail!14974 lt!2633064) (t!387008 lt!2633064))))

(assert (=> b!7503092 d!2303033))

(declare-fun d!2303035 () Bool)

(declare-fun e!4473606 () Bool)

(assert (=> d!2303035 e!4473606))

(declare-fun res!3010121 () Bool)

(assert (=> d!2303035 (=> (not res!3010121) (not e!4473606))))

(declare-fun lt!2633246 () List!72443)

(declare-fun noDuplicate!3138 (List!72443) Bool)

(assert (=> d!2303035 (= res!3010121 (noDuplicate!3138 lt!2633246))))

(declare-fun choose!58036 ((Set Context!16868)) List!72443)

(assert (=> d!2303035 (= lt!2633246 (choose!58036 z!3716))))

(assert (=> d!2303035 (= (toList!11817 z!3716) lt!2633246)))

(declare-fun b!7503246 () Bool)

(declare-fun content!15284 (List!72443) (Set Context!16868))

(assert (=> b!7503246 (= e!4473606 (= (content!15284 lt!2633246) z!3716))))

(assert (= (and d!2303035 res!3010121) b!7503246))

(declare-fun m!8085090 () Bool)

(assert (=> d!2303035 m!8085090))

(declare-fun m!8085092 () Bool)

(assert (=> d!2303035 m!8085092))

(declare-fun m!8085094 () Bool)

(assert (=> b!7503246 m!8085094))

(assert (=> bm!688632 d!2303035))

(declare-fun d!2303037 () Bool)

(declare-fun lt!2633249 () Bool)

(assert (=> d!2303037 (= lt!2633249 (exists!4838 (toList!11817 z!3716) lambda!465056))))

(declare-fun choose!58037 ((Set Context!16868) Int) Bool)

(assert (=> d!2303037 (= lt!2633249 (choose!58037 z!3716 lambda!465056))))

(assert (=> d!2303037 (= (exists!4839 z!3716 lambda!465056) lt!2633249)))

(declare-fun bs!1937846 () Bool)

(assert (= bs!1937846 d!2303037))

(assert (=> bs!1937846 m!8084866))

(assert (=> bs!1937846 m!8084866))

(declare-fun m!8085096 () Bool)

(assert (=> bs!1937846 m!8085096))

(declare-fun m!8085098 () Bool)

(assert (=> bs!1937846 m!8085098))

(assert (=> d!2302947 d!2303037))

(declare-fun bs!1937847 () Bool)

(declare-fun d!2303039 () Bool)

(assert (= bs!1937847 (and d!2303039 d!2303021)))

(declare-fun lambda!465083 () Int)

(assert (=> bs!1937847 (= (= lambda!465051 (ite c!1385118 lambda!465052 lambda!465053)) (= lambda!465083 lambda!465080))))

(declare-fun bs!1937848 () Bool)

(assert (= bs!1937848 (and d!2303039 b!7503115)))

(assert (=> bs!1937848 (not (= lambda!465083 lambda!465053))))

(declare-fun bs!1937849 () Bool)

(assert (= bs!1937849 (and d!2303039 d!2302937)))

(assert (=> bs!1937849 (not (= lambda!465083 lambda!465051))))

(declare-fun bs!1937850 () Bool)

(assert (= bs!1937850 (and d!2303039 b!7503114)))

(assert (=> bs!1937850 (not (= lambda!465083 lambda!465052))))

(declare-fun bs!1937851 () Bool)

(assert (= bs!1937851 (and d!2303039 d!2302947)))

(assert (=> bs!1937851 (not (= lambda!465083 lambda!465056))))

(assert (=> d!2303039 true))

(assert (=> d!2303039 (< (dynLambda!29769 order!29637 lambda!465051) (dynLambda!29769 order!29637 lambda!465083))))

(assert (=> d!2303039 (exists!4838 lt!2633168 lambda!465083)))

(declare-fun lt!2633252 () Unit!166262)

(declare-fun choose!58038 (List!72443 Int) Unit!166262)

(assert (=> d!2303039 (= lt!2633252 (choose!58038 lt!2633168 lambda!465051))))

(assert (=> d!2303039 (not (forall!18261 lt!2633168 lambda!465051))))

(assert (=> d!2303039 (= (lemmaNotForallThenExists!488 lt!2633168 lambda!465051) lt!2633252)))

(declare-fun bs!1937852 () Bool)

(assert (= bs!1937852 d!2303039))

(declare-fun m!8085100 () Bool)

(assert (=> bs!1937852 m!8085100))

(declare-fun m!8085102 () Bool)

(assert (=> bs!1937852 m!8085102))

(declare-fun m!8085104 () Bool)

(assert (=> bs!1937852 m!8085104))

(assert (=> b!7503114 d!2303039))

(assert (=> b!7503089 d!2302911))

(assert (=> b!7503089 d!2302905))

(declare-fun d!2303041 () Bool)

(assert (=> d!2303041 (= (head!15408 testedP!204) (h!78763 testedP!204))))

(assert (=> b!7503091 d!2303041))

(declare-fun d!2303043 () Bool)

(assert (=> d!2303043 (= (head!15408 lt!2633064) (h!78763 lt!2633064))))

(assert (=> b!7503091 d!2303043))

(declare-fun d!2303045 () Bool)

(declare-fun c!1385163 () Bool)

(assert (=> d!2303045 (= c!1385163 (is-Nil!72315 lt!2633176))))

(declare-fun e!4473609 () (Set C!39670))

(assert (=> d!2303045 (= (content!15282 lt!2633176) e!4473609)))

(declare-fun b!7503247 () Bool)

(assert (=> b!7503247 (= e!4473609 (as set.empty (Set C!39670)))))

(declare-fun b!7503248 () Bool)

(assert (=> b!7503248 (= e!4473609 (set.union (set.insert (h!78763 lt!2633176) (as set.empty (Set C!39670))) (content!15282 (t!387008 lt!2633176))))))

(assert (= (and d!2303045 c!1385163) b!7503247))

(assert (= (and d!2303045 (not c!1385163)) b!7503248))

(declare-fun m!8085106 () Bool)

(assert (=> b!7503248 m!8085106))

(declare-fun m!8085108 () Bool)

(assert (=> b!7503248 m!8085108))

(assert (=> d!2302943 d!2303045))

(assert (=> d!2302943 d!2303005))

(declare-fun d!2303047 () Bool)

(declare-fun c!1385164 () Bool)

(assert (=> d!2303047 (= c!1385164 (is-Nil!72315 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))

(declare-fun e!4473610 () (Set C!39670))

(assert (=> d!2303047 (= (content!15282 (Cons!72315 (head!15408 lt!2633058) Nil!72315)) e!4473610)))

(declare-fun b!7503249 () Bool)

(assert (=> b!7503249 (= e!4473610 (as set.empty (Set C!39670)))))

(declare-fun b!7503250 () Bool)

(assert (=> b!7503250 (= e!4473610 (set.union (set.insert (h!78763 (Cons!72315 (head!15408 lt!2633058) Nil!72315)) (as set.empty (Set C!39670))) (content!15282 (t!387008 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(assert (= (and d!2303047 c!1385164) b!7503249))

(assert (= (and d!2303047 (not c!1385164)) b!7503250))

(declare-fun m!8085110 () Bool)

(assert (=> b!7503250 m!8085110))

(declare-fun m!8085112 () Bool)

(assert (=> b!7503250 m!8085112))

(assert (=> d!2302943 d!2303047))

(declare-fun bs!1937853 () Bool)

(declare-fun d!2303049 () Bool)

(assert (= bs!1937853 (and d!2303049 d!2303021)))

(declare-fun lambda!465086 () Int)

(assert (=> bs!1937853 (= (= lambda!465051 (ite c!1385118 lambda!465052 lambda!465053)) (= lambda!465086 lambda!465080))))

(declare-fun bs!1937854 () Bool)

(assert (= bs!1937854 (and d!2303049 b!7503115)))

(assert (=> bs!1937854 (not (= lambda!465086 lambda!465053))))

(declare-fun bs!1937855 () Bool)

(assert (= bs!1937855 (and d!2303049 d!2302937)))

(assert (=> bs!1937855 (not (= lambda!465086 lambda!465051))))

(declare-fun bs!1937856 () Bool)

(assert (= bs!1937856 (and d!2303049 b!7503114)))

(assert (=> bs!1937856 (not (= lambda!465086 lambda!465052))))

(declare-fun bs!1937857 () Bool)

(assert (= bs!1937857 (and d!2303049 d!2303039)))

(assert (=> bs!1937857 (= lambda!465086 lambda!465083)))

(declare-fun bs!1937858 () Bool)

(assert (= bs!1937858 (and d!2303049 d!2302947)))

(assert (=> bs!1937858 (not (= lambda!465086 lambda!465056))))

(assert (=> d!2303049 true))

(assert (=> d!2303049 (< (dynLambda!29769 order!29637 lambda!465051) (dynLambda!29769 order!29637 lambda!465086))))

(assert (=> d!2303049 (not (exists!4838 lt!2633165 lambda!465086))))

(declare-fun lt!2633255 () Unit!166262)

(declare-fun choose!58039 (List!72443 Int) Unit!166262)

(assert (=> d!2303049 (= lt!2633255 (choose!58039 lt!2633165 lambda!465051))))

(assert (=> d!2303049 (forall!18261 lt!2633165 lambda!465051)))

(assert (=> d!2303049 (= (lemmaForallThenNotExists!455 lt!2633165 lambda!465051) lt!2633255)))

(declare-fun bs!1937859 () Bool)

(assert (= bs!1937859 d!2303049))

(declare-fun m!8085114 () Bool)

(assert (=> bs!1937859 m!8085114))

(declare-fun m!8085116 () Bool)

(assert (=> bs!1937859 m!8085116))

(declare-fun m!8085118 () Bool)

(assert (=> bs!1937859 m!8085118))

(assert (=> b!7503115 d!2303049))

(declare-fun b!7503254 () Bool)

(declare-fun e!4473614 () Bool)

(assert (=> b!7503254 (= e!4473614 (>= (size!42243 (tail!14974 totalInput!779)) (size!42243 (tail!14974 testedP!204))))))

(declare-fun d!2303051 () Bool)

(assert (=> d!2303051 e!4473614))

(declare-fun res!3010125 () Bool)

(assert (=> d!2303051 (=> res!3010125 e!4473614)))

(declare-fun lt!2633256 () Bool)

(assert (=> d!2303051 (= res!3010125 (not lt!2633256))))

(declare-fun e!4473613 () Bool)

(assert (=> d!2303051 (= lt!2633256 e!4473613)))

(declare-fun res!3010122 () Bool)

(assert (=> d!2303051 (=> res!3010122 e!4473613)))

(assert (=> d!2303051 (= res!3010122 (is-Nil!72315 (tail!14974 testedP!204)))))

(assert (=> d!2303051 (= (isPrefix!5968 (tail!14974 testedP!204) (tail!14974 totalInput!779)) lt!2633256)))

(declare-fun b!7503251 () Bool)

(declare-fun e!4473615 () Bool)

(assert (=> b!7503251 (= e!4473613 e!4473615)))

(declare-fun res!3010123 () Bool)

(assert (=> b!7503251 (=> (not res!3010123) (not e!4473615))))

(assert (=> b!7503251 (= res!3010123 (not (is-Nil!72315 (tail!14974 totalInput!779))))))

(declare-fun b!7503253 () Bool)

(assert (=> b!7503253 (= e!4473615 (isPrefix!5968 (tail!14974 (tail!14974 testedP!204)) (tail!14974 (tail!14974 totalInput!779))))))

(declare-fun b!7503252 () Bool)

(declare-fun res!3010124 () Bool)

(assert (=> b!7503252 (=> (not res!3010124) (not e!4473615))))

(assert (=> b!7503252 (= res!3010124 (= (head!15408 (tail!14974 testedP!204)) (head!15408 (tail!14974 totalInput!779))))))

(assert (= (and d!2303051 (not res!3010122)) b!7503251))

(assert (= (and b!7503251 res!3010123) b!7503252))

(assert (= (and b!7503252 res!3010124) b!7503253))

(assert (= (and d!2303051 (not res!3010125)) b!7503254))

(assert (=> b!7503254 m!8084828))

(declare-fun m!8085120 () Bool)

(assert (=> b!7503254 m!8085120))

(assert (=> b!7503254 m!8084826))

(assert (=> b!7503254 m!8085078))

(assert (=> b!7503253 m!8084826))

(assert (=> b!7503253 m!8085080))

(assert (=> b!7503253 m!8084828))

(declare-fun m!8085122 () Bool)

(assert (=> b!7503253 m!8085122))

(assert (=> b!7503253 m!8085080))

(assert (=> b!7503253 m!8085122))

(declare-fun m!8085124 () Bool)

(assert (=> b!7503253 m!8085124))

(assert (=> b!7503252 m!8084826))

(assert (=> b!7503252 m!8085086))

(assert (=> b!7503252 m!8084828))

(declare-fun m!8085126 () Bool)

(assert (=> b!7503252 m!8085126))

(assert (=> b!7503088 d!2303051))

(assert (=> b!7503088 d!2303031))

(declare-fun d!2303053 () Bool)

(assert (=> d!2303053 (= (tail!14974 totalInput!779) (t!387008 totalInput!779))))

(assert (=> b!7503088 d!2303053))

(declare-fun b!7503257 () Bool)

(declare-fun res!3010127 () Bool)

(declare-fun e!4473616 () Bool)

(assert (=> b!7503257 (=> (not res!3010127) (not e!4473616))))

(declare-fun lt!2633257 () List!72439)

(assert (=> b!7503257 (= res!3010127 (= (size!42243 lt!2633257) (+ (size!42243 testedP!204) (size!42243 lt!2633175))))))

(declare-fun b!7503255 () Bool)

(declare-fun e!4473617 () List!72439)

(assert (=> b!7503255 (= e!4473617 lt!2633175)))

(declare-fun d!2303055 () Bool)

(assert (=> d!2303055 e!4473616))

(declare-fun res!3010126 () Bool)

(assert (=> d!2303055 (=> (not res!3010126) (not e!4473616))))

(assert (=> d!2303055 (= res!3010126 (= (content!15282 lt!2633257) (set.union (content!15282 testedP!204) (content!15282 lt!2633175))))))

(assert (=> d!2303055 (= lt!2633257 e!4473617)))

(declare-fun c!1385165 () Bool)

(assert (=> d!2303055 (= c!1385165 (is-Nil!72315 testedP!204))))

(assert (=> d!2303055 (= (++!17301 testedP!204 lt!2633175) lt!2633257)))

(declare-fun b!7503258 () Bool)

(assert (=> b!7503258 (= e!4473616 (or (not (= lt!2633175 Nil!72315)) (= lt!2633257 testedP!204)))))

(declare-fun b!7503256 () Bool)

(assert (=> b!7503256 (= e!4473617 (Cons!72315 (h!78763 testedP!204) (++!17301 (t!387008 testedP!204) lt!2633175)))))

(assert (= (and d!2303055 c!1385165) b!7503255))

(assert (= (and d!2303055 (not c!1385165)) b!7503256))

(assert (= (and d!2303055 res!3010126) b!7503257))

(assert (= (and b!7503257 res!3010127) b!7503258))

(declare-fun m!8085128 () Bool)

(assert (=> b!7503257 m!8085128))

(assert (=> b!7503257 m!8084704))

(declare-fun m!8085130 () Bool)

(assert (=> b!7503257 m!8085130))

(declare-fun m!8085132 () Bool)

(assert (=> d!2303055 m!8085132))

(assert (=> d!2303055 m!8084854))

(declare-fun m!8085134 () Bool)

(assert (=> d!2303055 m!8085134))

(declare-fun m!8085136 () Bool)

(assert (=> b!7503256 m!8085136))

(assert (=> d!2302941 d!2303055))

(assert (=> d!2302941 d!2302911))

(assert (=> d!2302941 d!2302905))

(assert (=> b!7503087 d!2303041))

(declare-fun d!2303057 () Bool)

(assert (=> d!2303057 (= (head!15408 totalInput!779) (h!78763 totalInput!779))))

(assert (=> b!7503087 d!2303057))

(declare-fun bs!1937860 () Bool)

(declare-fun d!2303059 () Bool)

(assert (= bs!1937860 (and d!2303059 d!2302913)))

(declare-fun lambda!465087 () Int)

(assert (=> bs!1937860 (= lambda!465087 lambda!465038)))

(assert (=> d!2303059 (= (inv!92421 setElem!56897) (forall!18257 (exprs!8934 setElem!56897) lambda!465087))))

(declare-fun bs!1937861 () Bool)

(assert (= bs!1937861 d!2303059))

(declare-fun m!8085138 () Bool)

(assert (=> bs!1937861 m!8085138))

(assert (=> setNonEmpty!56897 d!2303059))

(declare-fun d!2303061 () Bool)

(declare-fun lt!2633258 () Int)

(assert (=> d!2303061 (>= lt!2633258 0)))

(declare-fun e!4473618 () Int)

(assert (=> d!2303061 (= lt!2633258 e!4473618)))

(declare-fun c!1385166 () Bool)

(assert (=> d!2303061 (= c!1385166 (is-Nil!72315 lt!2633138))))

(assert (=> d!2303061 (= (size!42243 lt!2633138) lt!2633258)))

(declare-fun b!7503259 () Bool)

(assert (=> b!7503259 (= e!4473618 0)))

(declare-fun b!7503260 () Bool)

(assert (=> b!7503260 (= e!4473618 (+ 1 (size!42243 (t!387008 lt!2633138))))))

(assert (= (and d!2303061 c!1385166) b!7503259))

(assert (= (and d!2303061 (not c!1385166)) b!7503260))

(declare-fun m!8085140 () Bool)

(assert (=> b!7503260 m!8085140))

(assert (=> b!7503104 d!2303061))

(assert (=> b!7503104 d!2302905))

(declare-fun d!2303063 () Bool)

(declare-fun lt!2633259 () Int)

(assert (=> d!2303063 (>= lt!2633259 0)))

(declare-fun e!4473619 () Int)

(assert (=> d!2303063 (= lt!2633259 e!4473619)))

(declare-fun c!1385167 () Bool)

(assert (=> d!2303063 (= c!1385167 (is-Nil!72315 testedSuffix!164))))

(assert (=> d!2303063 (= (size!42243 testedSuffix!164) lt!2633259)))

(declare-fun b!7503261 () Bool)

(assert (=> b!7503261 (= e!4473619 0)))

(declare-fun b!7503262 () Bool)

(assert (=> b!7503262 (= e!4473619 (+ 1 (size!42243 (t!387008 testedSuffix!164))))))

(assert (= (and d!2303063 c!1385167) b!7503261))

(assert (= (and d!2303063 (not c!1385167)) b!7503262))

(declare-fun m!8085142 () Bool)

(assert (=> b!7503262 m!8085142))

(assert (=> b!7503104 d!2303063))

(declare-fun d!2303065 () Bool)

(assert (=> d!2303065 (= totalInput!779 testedP!204)))

(assert (=> d!2303065 true))

(declare-fun _$60!1264 () Unit!166262)

(assert (=> d!2303065 (= (choose!58025 totalInput!779 testedP!204 totalInput!779) _$60!1264)))

(assert (=> d!2302935 d!2303065))

(assert (=> d!2302935 d!2302933))

(declare-fun b!7503265 () Bool)

(declare-fun res!3010129 () Bool)

(declare-fun e!4473620 () Bool)

(assert (=> b!7503265 (=> (not res!3010129) (not e!4473620))))

(declare-fun lt!2633260 () List!72439)

(assert (=> b!7503265 (= res!3010129 (= (size!42243 lt!2633260) (+ (size!42243 (t!387008 testedP!204)) (size!42243 testedSuffix!164))))))

(declare-fun b!7503263 () Bool)

(declare-fun e!4473621 () List!72439)

(assert (=> b!7503263 (= e!4473621 testedSuffix!164)))

(declare-fun d!2303067 () Bool)

(assert (=> d!2303067 e!4473620))

(declare-fun res!3010128 () Bool)

(assert (=> d!2303067 (=> (not res!3010128) (not e!4473620))))

(assert (=> d!2303067 (= res!3010128 (= (content!15282 lt!2633260) (set.union (content!15282 (t!387008 testedP!204)) (content!15282 testedSuffix!164))))))

(assert (=> d!2303067 (= lt!2633260 e!4473621)))

(declare-fun c!1385168 () Bool)

(assert (=> d!2303067 (= c!1385168 (is-Nil!72315 (t!387008 testedP!204)))))

(assert (=> d!2303067 (= (++!17301 (t!387008 testedP!204) testedSuffix!164) lt!2633260)))

(declare-fun b!7503266 () Bool)

(assert (=> b!7503266 (= e!4473620 (or (not (= testedSuffix!164 Nil!72315)) (= lt!2633260 (t!387008 testedP!204))))))

(declare-fun b!7503264 () Bool)

(assert (=> b!7503264 (= e!4473621 (Cons!72315 (h!78763 (t!387008 testedP!204)) (++!17301 (t!387008 (t!387008 testedP!204)) testedSuffix!164)))))

(assert (= (and d!2303067 c!1385168) b!7503263))

(assert (= (and d!2303067 (not c!1385168)) b!7503264))

(assert (= (and d!2303067 res!3010128) b!7503265))

(assert (= (and b!7503265 res!3010129) b!7503266))

(declare-fun m!8085144 () Bool)

(assert (=> b!7503265 m!8085144))

(assert (=> b!7503265 m!8084784))

(assert (=> b!7503265 m!8084850))

(declare-fun m!8085146 () Bool)

(assert (=> d!2303067 m!8085146))

(assert (=> d!2303067 m!8085044))

(assert (=> d!2303067 m!8084856))

(declare-fun m!8085148 () Bool)

(assert (=> b!7503264 m!8085148))

(assert (=> b!7503103 d!2303067))

(declare-fun d!2303069 () Bool)

(declare-fun lt!2633261 () Int)

(assert (=> d!2303069 (>= lt!2633261 0)))

(declare-fun e!4473622 () Int)

(assert (=> d!2303069 (= lt!2633261 e!4473622)))

(declare-fun c!1385169 () Bool)

(assert (=> d!2303069 (= c!1385169 (is-Nil!72315 (t!387008 testedP!204)))))

(assert (=> d!2303069 (= (size!42243 (t!387008 testedP!204)) lt!2633261)))

(declare-fun b!7503267 () Bool)

(assert (=> b!7503267 (= e!4473622 0)))

(declare-fun b!7503268 () Bool)

(assert (=> b!7503268 (= e!4473622 (+ 1 (size!42243 (t!387008 (t!387008 testedP!204)))))))

(assert (= (and d!2303069 c!1385169) b!7503267))

(assert (= (and d!2303069 (not c!1385169)) b!7503268))

(declare-fun m!8085150 () Bool)

(assert (=> b!7503268 m!8085150))

(assert (=> b!7503045 d!2303069))

(declare-fun d!2303071 () Bool)

(declare-fun lt!2633262 () List!72439)

(assert (=> d!2303071 (= (++!17301 (t!387008 testedP!204) lt!2633262) (tail!14974 totalInput!779))))

(declare-fun e!4473623 () List!72439)

(assert (=> d!2303071 (= lt!2633262 e!4473623)))

(declare-fun c!1385170 () Bool)

(assert (=> d!2303071 (= c!1385170 (is-Cons!72315 (t!387008 testedP!204)))))

(assert (=> d!2303071 (>= (size!42243 (tail!14974 totalInput!779)) (size!42243 (t!387008 testedP!204)))))

(assert (=> d!2303071 (= (getSuffix!3470 (tail!14974 totalInput!779) (t!387008 testedP!204)) lt!2633262)))

(declare-fun b!7503269 () Bool)

(assert (=> b!7503269 (= e!4473623 (getSuffix!3470 (tail!14974 (tail!14974 totalInput!779)) (t!387008 (t!387008 testedP!204))))))

(declare-fun b!7503270 () Bool)

(assert (=> b!7503270 (= e!4473623 (tail!14974 totalInput!779))))

(assert (= (and d!2303071 c!1385170) b!7503269))

(assert (= (and d!2303071 (not c!1385170)) b!7503270))

(declare-fun m!8085152 () Bool)

(assert (=> d!2303071 m!8085152))

(assert (=> d!2303071 m!8084828))

(assert (=> d!2303071 m!8085120))

(assert (=> d!2303071 m!8084784))

(assert (=> b!7503269 m!8084828))

(assert (=> b!7503269 m!8085122))

(assert (=> b!7503269 m!8085122))

(declare-fun m!8085154 () Bool)

(assert (=> b!7503269 m!8085154))

(assert (=> b!7503120 d!2303071))

(assert (=> b!7503120 d!2303053))

(declare-fun d!2303073 () Bool)

(declare-fun lt!2633263 () Int)

(assert (=> d!2303073 (>= lt!2633263 0)))

(declare-fun e!4473624 () Int)

(assert (=> d!2303073 (= lt!2633263 e!4473624)))

(declare-fun c!1385171 () Bool)

(assert (=> d!2303073 (= c!1385171 (is-Nil!72315 lt!2633182))))

(assert (=> d!2303073 (= (size!42243 lt!2633182) lt!2633263)))

(declare-fun b!7503271 () Bool)

(assert (=> b!7503271 (= e!4473624 0)))

(declare-fun b!7503272 () Bool)

(assert (=> b!7503272 (= e!4473624 (+ 1 (size!42243 (t!387008 lt!2633182))))))

(assert (= (and d!2303073 c!1385171) b!7503271))

(assert (= (and d!2303073 (not c!1385171)) b!7503272))

(declare-fun m!8085156 () Bool)

(assert (=> b!7503272 m!8085156))

(assert (=> b!7503136 d!2303073))

(assert (=> b!7503136 d!2302909))

(declare-fun d!2303075 () Bool)

(declare-fun lt!2633264 () Int)

(assert (=> d!2303075 (>= lt!2633264 0)))

(declare-fun e!4473625 () Int)

(assert (=> d!2303075 (= lt!2633264 e!4473625)))

(declare-fun c!1385172 () Bool)

(assert (=> d!2303075 (= c!1385172 (is-Nil!72315 lt!2633051))))

(assert (=> d!2303075 (= (size!42243 lt!2633051) lt!2633264)))

(declare-fun b!7503273 () Bool)

(assert (=> b!7503273 (= e!4473625 0)))

(declare-fun b!7503274 () Bool)

(assert (=> b!7503274 (= e!4473625 (+ 1 (size!42243 (t!387008 lt!2633051))))))

(assert (= (and d!2303075 c!1385172) b!7503273))

(assert (= (and d!2303075 (not c!1385172)) b!7503274))

(declare-fun m!8085158 () Bool)

(assert (=> b!7503274 m!8085158))

(assert (=> b!7503136 d!2303075))

(declare-fun d!2303077 () Bool)

(declare-fun res!3010134 () Bool)

(declare-fun e!4473630 () Bool)

(assert (=> d!2303077 (=> res!3010134 e!4473630)))

(assert (=> d!2303077 (= res!3010134 (is-Nil!72316 (exprs!8934 setElem!56891)))))

(assert (=> d!2303077 (= (forall!18257 (exprs!8934 setElem!56891) lambda!465038) e!4473630)))

(declare-fun b!7503279 () Bool)

(declare-fun e!4473631 () Bool)

(assert (=> b!7503279 (= e!4473630 e!4473631)))

(declare-fun res!3010135 () Bool)

(assert (=> b!7503279 (=> (not res!3010135) (not e!4473631))))

(declare-fun dynLambda!29770 (Int Regex!19682) Bool)

(assert (=> b!7503279 (= res!3010135 (dynLambda!29770 lambda!465038 (h!78764 (exprs!8934 setElem!56891))))))

(declare-fun b!7503280 () Bool)

(assert (=> b!7503280 (= e!4473631 (forall!18257 (t!387009 (exprs!8934 setElem!56891)) lambda!465038))))

(assert (= (and d!2303077 (not res!3010134)) b!7503279))

(assert (= (and b!7503279 res!3010135) b!7503280))

(declare-fun b_lambda!287843 () Bool)

(assert (=> (not b_lambda!287843) (not b!7503279)))

(declare-fun m!8085160 () Bool)

(assert (=> b!7503279 m!8085160))

(declare-fun m!8085162 () Bool)

(assert (=> b!7503280 m!8085162))

(assert (=> d!2302913 d!2303077))

(assert (=> b!7503109 d!2302911))

(assert (=> b!7503129 d!2302911))

(declare-fun d!2303079 () Bool)

(declare-fun lt!2633265 () Int)

(assert (=> d!2303079 (>= lt!2633265 0)))

(declare-fun e!4473632 () Int)

(assert (=> d!2303079 (= lt!2633265 e!4473632)))

(declare-fun c!1385173 () Bool)

(assert (=> d!2303079 (= c!1385173 (is-Nil!72315 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))

(assert (=> d!2303079 (= (size!42243 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))) lt!2633265)))

(declare-fun b!7503281 () Bool)

(assert (=> b!7503281 (= e!4473632 0)))

(declare-fun b!7503282 () Bool)

(assert (=> b!7503282 (= e!4473632 (+ 1 (size!42243 (t!387008 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))))

(assert (= (and d!2303079 c!1385173) b!7503281))

(assert (= (and d!2303079 (not c!1385173)) b!7503282))

(declare-fun m!8085164 () Bool)

(assert (=> b!7503282 m!8085164))

(assert (=> b!7503129 d!2303079))

(declare-fun b!7503285 () Bool)

(declare-fun res!3010137 () Bool)

(declare-fun e!4473633 () Bool)

(assert (=> b!7503285 (=> (not res!3010137) (not e!4473633))))

(declare-fun lt!2633266 () List!72439)

(assert (=> b!7503285 (= res!3010137 (= (size!42243 lt!2633266) (+ (size!42243 (t!387008 lt!2633061)) (size!42243 lt!2633051))))))

(declare-fun b!7503283 () Bool)

(declare-fun e!4473634 () List!72439)

(assert (=> b!7503283 (= e!4473634 lt!2633051)))

(declare-fun d!2303081 () Bool)

(assert (=> d!2303081 e!4473633))

(declare-fun res!3010136 () Bool)

(assert (=> d!2303081 (=> (not res!3010136) (not e!4473633))))

(assert (=> d!2303081 (= res!3010136 (= (content!15282 lt!2633266) (set.union (content!15282 (t!387008 lt!2633061)) (content!15282 lt!2633051))))))

(assert (=> d!2303081 (= lt!2633266 e!4473634)))

(declare-fun c!1385174 () Bool)

(assert (=> d!2303081 (= c!1385174 (is-Nil!72315 (t!387008 lt!2633061)))))

(assert (=> d!2303081 (= (++!17301 (t!387008 lt!2633061) lt!2633051) lt!2633266)))

(declare-fun b!7503286 () Bool)

(assert (=> b!7503286 (= e!4473633 (or (not (= lt!2633051 Nil!72315)) (= lt!2633266 (t!387008 lt!2633061))))))

(declare-fun b!7503284 () Bool)

(assert (=> b!7503284 (= e!4473634 (Cons!72315 (h!78763 (t!387008 lt!2633061)) (++!17301 (t!387008 (t!387008 lt!2633061)) lt!2633051)))))

(assert (= (and d!2303081 c!1385174) b!7503283))

(assert (= (and d!2303081 (not c!1385174)) b!7503284))

(assert (= (and d!2303081 res!3010136) b!7503285))

(assert (= (and b!7503285 res!3010137) b!7503286))

(declare-fun m!8085166 () Bool)

(assert (=> b!7503285 m!8085166))

(assert (=> b!7503285 m!8084786))

(assert (=> b!7503285 m!8084924))

(declare-fun m!8085168 () Bool)

(assert (=> d!2303081 m!8085168))

(assert (=> d!2303081 m!8085056))

(assert (=> d!2303081 m!8084930))

(declare-fun m!8085170 () Bool)

(assert (=> b!7503284 m!8085170))

(assert (=> b!7503135 d!2303081))

(declare-fun b!7503290 () Bool)

(declare-fun e!4473636 () Bool)

(assert (=> b!7503290 (= e!4473636 (>= (size!42243 (tail!14974 totalInput!779)) (size!42243 (tail!14974 totalInput!779))))))

(declare-fun d!2303083 () Bool)

(assert (=> d!2303083 e!4473636))

(declare-fun res!3010141 () Bool)

(assert (=> d!2303083 (=> res!3010141 e!4473636)))

(declare-fun lt!2633267 () Bool)

(assert (=> d!2303083 (= res!3010141 (not lt!2633267))))

(declare-fun e!4473635 () Bool)

(assert (=> d!2303083 (= lt!2633267 e!4473635)))

(declare-fun res!3010138 () Bool)

(assert (=> d!2303083 (=> res!3010138 e!4473635)))

(assert (=> d!2303083 (= res!3010138 (is-Nil!72315 (tail!14974 totalInput!779)))))

(assert (=> d!2303083 (= (isPrefix!5968 (tail!14974 totalInput!779) (tail!14974 totalInput!779)) lt!2633267)))

(declare-fun b!7503287 () Bool)

(declare-fun e!4473637 () Bool)

(assert (=> b!7503287 (= e!4473635 e!4473637)))

(declare-fun res!3010139 () Bool)

(assert (=> b!7503287 (=> (not res!3010139) (not e!4473637))))

(assert (=> b!7503287 (= res!3010139 (not (is-Nil!72315 (tail!14974 totalInput!779))))))

(declare-fun b!7503289 () Bool)

(assert (=> b!7503289 (= e!4473637 (isPrefix!5968 (tail!14974 (tail!14974 totalInput!779)) (tail!14974 (tail!14974 totalInput!779))))))

(declare-fun b!7503288 () Bool)

(declare-fun res!3010140 () Bool)

(assert (=> b!7503288 (=> (not res!3010140) (not e!4473637))))

(assert (=> b!7503288 (= res!3010140 (= (head!15408 (tail!14974 totalInput!779)) (head!15408 (tail!14974 totalInput!779))))))

(assert (= (and d!2303083 (not res!3010138)) b!7503287))

(assert (= (and b!7503287 res!3010139) b!7503288))

(assert (= (and b!7503288 res!3010140) b!7503289))

(assert (= (and d!2303083 (not res!3010141)) b!7503290))

(assert (=> b!7503290 m!8084828))

(assert (=> b!7503290 m!8085120))

(assert (=> b!7503290 m!8084828))

(assert (=> b!7503290 m!8085120))

(assert (=> b!7503289 m!8084828))

(assert (=> b!7503289 m!8085122))

(assert (=> b!7503289 m!8084828))

(assert (=> b!7503289 m!8085122))

(assert (=> b!7503289 m!8085122))

(assert (=> b!7503289 m!8085122))

(declare-fun m!8085172 () Bool)

(assert (=> b!7503289 m!8085172))

(assert (=> b!7503288 m!8084828))

(assert (=> b!7503288 m!8085126))

(assert (=> b!7503288 m!8084828))

(assert (=> b!7503288 m!8085126))

(assert (=> b!7503108 d!2303083))

(assert (=> b!7503108 d!2303053))

(declare-fun b!7503294 () Bool)

(declare-fun e!4473639 () Bool)

(assert (=> b!7503294 (= e!4473639 (>= (size!42243 (tail!14974 totalInput!779)) (size!42243 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))))

(declare-fun d!2303085 () Bool)

(assert (=> d!2303085 e!4473639))

(declare-fun res!3010145 () Bool)

(assert (=> d!2303085 (=> res!3010145 e!4473639)))

(declare-fun lt!2633268 () Bool)

(assert (=> d!2303085 (= res!3010145 (not lt!2633268))))

(declare-fun e!4473638 () Bool)

(assert (=> d!2303085 (= lt!2633268 e!4473638)))

(declare-fun res!3010142 () Bool)

(assert (=> d!2303085 (=> res!3010142 e!4473638)))

(assert (=> d!2303085 (= res!3010142 (is-Nil!72315 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(assert (=> d!2303085 (= (isPrefix!5968 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))) (tail!14974 totalInput!779)) lt!2633268)))

(declare-fun b!7503291 () Bool)

(declare-fun e!4473640 () Bool)

(assert (=> b!7503291 (= e!4473638 e!4473640)))

(declare-fun res!3010143 () Bool)

(assert (=> b!7503291 (=> (not res!3010143) (not e!4473640))))

(assert (=> b!7503291 (= res!3010143 (not (is-Nil!72315 (tail!14974 totalInput!779))))))

(declare-fun b!7503293 () Bool)

(assert (=> b!7503293 (= e!4473640 (isPrefix!5968 (tail!14974 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))) (tail!14974 (tail!14974 totalInput!779))))))

(declare-fun b!7503292 () Bool)

(declare-fun res!3010144 () Bool)

(assert (=> b!7503292 (=> (not res!3010144) (not e!4473640))))

(assert (=> b!7503292 (= res!3010144 (= (head!15408 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))) (head!15408 (tail!14974 totalInput!779))))))

(assert (= (and d!2303085 (not res!3010142)) b!7503291))

(assert (= (and b!7503291 res!3010143) b!7503292))

(assert (= (and b!7503292 res!3010144) b!7503293))

(assert (= (and d!2303085 (not res!3010145)) b!7503294))

(assert (=> b!7503294 m!8084828))

(assert (=> b!7503294 m!8085120))

(assert (=> b!7503294 m!8084898))

(declare-fun m!8085174 () Bool)

(assert (=> b!7503294 m!8085174))

(assert (=> b!7503293 m!8084898))

(declare-fun m!8085176 () Bool)

(assert (=> b!7503293 m!8085176))

(assert (=> b!7503293 m!8084828))

(assert (=> b!7503293 m!8085122))

(assert (=> b!7503293 m!8085176))

(assert (=> b!7503293 m!8085122))

(declare-fun m!8085178 () Bool)

(assert (=> b!7503293 m!8085178))

(assert (=> b!7503292 m!8084898))

(declare-fun m!8085180 () Bool)

(assert (=> b!7503292 m!8085180))

(assert (=> b!7503292 m!8084828))

(assert (=> b!7503292 m!8085126))

(assert (=> b!7503128 d!2303085))

(declare-fun d!2303087 () Bool)

(assert (=> d!2303087 (= (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))) (t!387008 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))

(assert (=> b!7503128 d!2303087))

(assert (=> b!7503128 d!2303053))

(declare-fun d!2303089 () Bool)

(declare-fun lt!2633269 () Int)

(assert (=> d!2303089 (>= lt!2633269 0)))

(declare-fun e!4473641 () Int)

(assert (=> d!2303089 (= lt!2633269 e!4473641)))

(declare-fun c!1385175 () Bool)

(assert (=> d!2303089 (= c!1385175 (is-Nil!72315 lt!2633181))))

(assert (=> d!2303089 (= (size!42243 lt!2633181) lt!2633269)))

(declare-fun b!7503295 () Bool)

(assert (=> b!7503295 (= e!4473641 0)))

(declare-fun b!7503296 () Bool)

(assert (=> b!7503296 (= e!4473641 (+ 1 (size!42243 (t!387008 lt!2633181))))))

(assert (= (and d!2303089 c!1385175) b!7503295))

(assert (= (and d!2303089 (not c!1385175)) b!7503296))

(declare-fun m!8085182 () Bool)

(assert (=> b!7503296 m!8085182))

(assert (=> b!7503132 d!2303089))

(assert (=> b!7503132 d!2302905))

(declare-fun d!2303091 () Bool)

(declare-fun lt!2633270 () Int)

(assert (=> d!2303091 (>= lt!2633270 0)))

(declare-fun e!4473642 () Int)

(assert (=> d!2303091 (= lt!2633270 e!4473642)))

(declare-fun c!1385176 () Bool)

(assert (=> d!2303091 (= c!1385176 (is-Nil!72315 (Cons!72315 lt!2633052 Nil!72315)))))

(assert (=> d!2303091 (= (size!42243 (Cons!72315 lt!2633052 Nil!72315)) lt!2633270)))

(declare-fun b!7503297 () Bool)

(assert (=> b!7503297 (= e!4473642 0)))

(declare-fun b!7503298 () Bool)

(assert (=> b!7503298 (= e!4473642 (+ 1 (size!42243 (t!387008 (Cons!72315 lt!2633052 Nil!72315)))))))

(assert (= (and d!2303091 c!1385176) b!7503297))

(assert (= (and d!2303091 (not c!1385176)) b!7503298))

(declare-fun m!8085184 () Bool)

(assert (=> b!7503298 m!8085184))

(assert (=> b!7503132 d!2303091))

(declare-fun b!7503302 () Bool)

(declare-fun e!4473644 () Bool)

(assert (=> b!7503302 (= e!4473644 (>= (size!42243 (++!17301 testedP!204 testedSuffix!164)) (size!42243 testedP!204)))))

(declare-fun d!2303093 () Bool)

(assert (=> d!2303093 e!4473644))

(declare-fun res!3010149 () Bool)

(assert (=> d!2303093 (=> res!3010149 e!4473644)))

(declare-fun lt!2633271 () Bool)

(assert (=> d!2303093 (= res!3010149 (not lt!2633271))))

(declare-fun e!4473643 () Bool)

(assert (=> d!2303093 (= lt!2633271 e!4473643)))

(declare-fun res!3010146 () Bool)

(assert (=> d!2303093 (=> res!3010146 e!4473643)))

(assert (=> d!2303093 (= res!3010146 (is-Nil!72315 testedP!204))))

(assert (=> d!2303093 (= (isPrefix!5968 testedP!204 (++!17301 testedP!204 testedSuffix!164)) lt!2633271)))

(declare-fun b!7503299 () Bool)

(declare-fun e!4473645 () Bool)

(assert (=> b!7503299 (= e!4473643 e!4473645)))

(declare-fun res!3010147 () Bool)

(assert (=> b!7503299 (=> (not res!3010147) (not e!4473645))))

(assert (=> b!7503299 (= res!3010147 (not (is-Nil!72315 (++!17301 testedP!204 testedSuffix!164))))))

(declare-fun b!7503301 () Bool)

(assert (=> b!7503301 (= e!4473645 (isPrefix!5968 (tail!14974 testedP!204) (tail!14974 (++!17301 testedP!204 testedSuffix!164))))))

(declare-fun b!7503300 () Bool)

(declare-fun res!3010148 () Bool)

(assert (=> b!7503300 (=> (not res!3010148) (not e!4473645))))

(assert (=> b!7503300 (= res!3010148 (= (head!15408 testedP!204) (head!15408 (++!17301 testedP!204 testedSuffix!164))))))

(assert (= (and d!2303093 (not res!3010146)) b!7503299))

(assert (= (and b!7503299 res!3010147) b!7503300))

(assert (= (and b!7503300 res!3010148) b!7503301))

(assert (= (and d!2303093 (not res!3010149)) b!7503302))

(assert (=> b!7503302 m!8084702))

(declare-fun m!8085186 () Bool)

(assert (=> b!7503302 m!8085186))

(assert (=> b!7503302 m!8084704))

(assert (=> b!7503301 m!8084826))

(assert (=> b!7503301 m!8084702))

(declare-fun m!8085188 () Bool)

(assert (=> b!7503301 m!8085188))

(assert (=> b!7503301 m!8084826))

(assert (=> b!7503301 m!8085188))

(declare-fun m!8085190 () Bool)

(assert (=> b!7503301 m!8085190))

(assert (=> b!7503300 m!8084832))

(assert (=> b!7503300 m!8084702))

(declare-fun m!8085192 () Bool)

(assert (=> b!7503300 m!8085192))

(assert (=> d!2302927 d!2303093))

(assert (=> d!2302927 d!2302929))

(declare-fun d!2303095 () Bool)

(assert (=> d!2303095 (isPrefix!5968 testedP!204 (++!17301 testedP!204 testedSuffix!164))))

(assert (=> d!2303095 true))

(declare-fun _$46!2064 () Unit!166262)

(assert (=> d!2303095 (= (choose!58023 testedP!204 testedSuffix!164) _$46!2064)))

(declare-fun bs!1937862 () Bool)

(assert (= bs!1937862 d!2303095))

(assert (=> bs!1937862 m!8084702))

(assert (=> bs!1937862 m!8084702))

(assert (=> bs!1937862 m!8084844))

(assert (=> d!2302927 d!2303095))

(assert (=> d!2302931 d!2302933))

(declare-fun d!2303097 () Bool)

(assert (=> d!2303097 (isPrefix!5968 totalInput!779 totalInput!779)))

(assert (=> d!2303097 true))

(declare-fun _$45!2380 () Unit!166262)

(assert (=> d!2303097 (= (choose!58024 totalInput!779 totalInput!779) _$45!2380)))

(declare-fun bs!1937863 () Bool)

(assert (= bs!1937863 d!2303097))

(assert (=> bs!1937863 m!8084720))

(assert (=> d!2302931 d!2303097))

(assert (=> b!7503107 d!2303057))

(declare-fun d!2303099 () Bool)

(assert (=> d!2303099 (= (head!15408 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))) (h!78763 (++!17301 testedP!204 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))

(assert (=> b!7503127 d!2303099))

(assert (=> b!7503127 d!2303057))

(declare-fun b!7503305 () Bool)

(declare-fun res!3010151 () Bool)

(declare-fun e!4473646 () Bool)

(assert (=> b!7503305 (=> (not res!3010151) (not e!4473646))))

(declare-fun lt!2633272 () List!72439)

(assert (=> b!7503305 (= res!3010151 (= (size!42243 lt!2633272) (+ (size!42243 (t!387008 testedP!204)) (size!42243 (Cons!72315 lt!2633052 Nil!72315)))))))

(declare-fun b!7503303 () Bool)

(declare-fun e!4473647 () List!72439)

(assert (=> b!7503303 (= e!4473647 (Cons!72315 lt!2633052 Nil!72315))))

(declare-fun d!2303101 () Bool)

(assert (=> d!2303101 e!4473646))

(declare-fun res!3010150 () Bool)

(assert (=> d!2303101 (=> (not res!3010150) (not e!4473646))))

(assert (=> d!2303101 (= res!3010150 (= (content!15282 lt!2633272) (set.union (content!15282 (t!387008 testedP!204)) (content!15282 (Cons!72315 lt!2633052 Nil!72315)))))))

(assert (=> d!2303101 (= lt!2633272 e!4473647)))

(declare-fun c!1385177 () Bool)

(assert (=> d!2303101 (= c!1385177 (is-Nil!72315 (t!387008 testedP!204)))))

(assert (=> d!2303101 (= (++!17301 (t!387008 testedP!204) (Cons!72315 lt!2633052 Nil!72315)) lt!2633272)))

(declare-fun b!7503306 () Bool)

(assert (=> b!7503306 (= e!4473646 (or (not (= (Cons!72315 lt!2633052 Nil!72315) Nil!72315)) (= lt!2633272 (t!387008 testedP!204))))))

(declare-fun b!7503304 () Bool)

(assert (=> b!7503304 (= e!4473647 (Cons!72315 (h!78763 (t!387008 testedP!204)) (++!17301 (t!387008 (t!387008 testedP!204)) (Cons!72315 lt!2633052 Nil!72315))))))

(assert (= (and d!2303101 c!1385177) b!7503303))

(assert (= (and d!2303101 (not c!1385177)) b!7503304))

(assert (= (and d!2303101 res!3010150) b!7503305))

(assert (= (and b!7503305 res!3010151) b!7503306))

(declare-fun m!8085194 () Bool)

(assert (=> b!7503305 m!8085194))

(assert (=> b!7503305 m!8084784))

(assert (=> b!7503305 m!8084914))

(declare-fun m!8085196 () Bool)

(assert (=> d!2303101 m!8085196))

(assert (=> d!2303101 m!8085044))

(assert (=> d!2303101 m!8084918))

(declare-fun m!8085198 () Bool)

(assert (=> b!7503304 m!8085198))

(assert (=> b!7503131 d!2303101))

(declare-fun d!2303103 () Bool)

(declare-fun lt!2633273 () Int)

(assert (=> d!2303103 (>= lt!2633273 0)))

(declare-fun e!4473648 () Int)

(assert (=> d!2303103 (= lt!2633273 e!4473648)))

(declare-fun c!1385178 () Bool)

(assert (=> d!2303103 (= c!1385178 (is-Nil!72315 (t!387008 totalInput!779)))))

(assert (=> d!2303103 (= (size!42243 (t!387008 totalInput!779)) lt!2633273)))

(declare-fun b!7503307 () Bool)

(assert (=> b!7503307 (= e!4473648 0)))

(declare-fun b!7503308 () Bool)

(assert (=> b!7503308 (= e!4473648 (+ 1 (size!42243 (t!387008 (t!387008 totalInput!779)))))))

(assert (= (and d!2303103 c!1385178) b!7503307))

(assert (= (and d!2303103 (not c!1385178)) b!7503308))

(declare-fun m!8085200 () Bool)

(assert (=> b!7503308 m!8085200))

(assert (=> b!7503049 d!2303103))

(declare-fun d!2303105 () Bool)

(assert (=> d!2303105 (= (isEmpty!41297 (getLanguageWitness!1031 z!3716)) (not (is-Some!17212 (getLanguageWitness!1031 z!3716))))))

(assert (=> d!2302937 d!2303105))

(declare-fun bs!1937864 () Bool)

(declare-fun d!2303107 () Bool)

(assert (= bs!1937864 (and d!2303107 d!2303021)))

(declare-fun lambda!465094 () Int)

(assert (=> bs!1937864 (not (= lambda!465094 lambda!465080))))

(declare-fun bs!1937865 () Bool)

(assert (= bs!1937865 (and d!2303107 b!7503115)))

(assert (=> bs!1937865 (= lambda!465094 lambda!465053)))

(declare-fun bs!1937866 () Bool)

(assert (= bs!1937866 (and d!2303107 d!2302937)))

(assert (=> bs!1937866 (not (= lambda!465094 lambda!465051))))

(declare-fun bs!1937867 () Bool)

(assert (= bs!1937867 (and d!2303107 d!2303049)))

(assert (=> bs!1937867 (not (= lambda!465094 lambda!465086))))

(declare-fun bs!1937868 () Bool)

(assert (= bs!1937868 (and d!2303107 b!7503114)))

(assert (=> bs!1937868 (= lambda!465094 lambda!465052)))

(declare-fun bs!1937869 () Bool)

(assert (= bs!1937869 (and d!2303107 d!2303039)))

(assert (=> bs!1937869 (not (= lambda!465094 lambda!465083))))

(declare-fun bs!1937870 () Bool)

(assert (= bs!1937870 (and d!2303107 d!2302947)))

(assert (=> bs!1937870 (not (= lambda!465094 lambda!465056))))

(declare-fun lt!2633276 () Option!17213)

(declare-fun isDefined!13898 (Option!17213) Bool)

(assert (=> d!2303107 (= (isDefined!13898 lt!2633276) (exists!4839 z!3716 lambda!465094))))

(declare-fun e!4473651 () Option!17213)

(assert (=> d!2303107 (= lt!2633276 e!4473651)))

(declare-fun c!1385187 () Bool)

(assert (=> d!2303107 (= c!1385187 (exists!4839 z!3716 lambda!465094))))

(assert (=> d!2303107 (= (getLanguageWitness!1031 z!3716) lt!2633276)))

(declare-fun b!7503313 () Bool)

(declare-fun getLanguageWitness!1033 (Context!16868) Option!17213)

(declare-fun getWitness!2471 ((Set Context!16868) Int) Context!16868)

(assert (=> b!7503313 (= e!4473651 (getLanguageWitness!1033 (getWitness!2471 z!3716 lambda!465094)))))

(declare-fun b!7503314 () Bool)

(assert (=> b!7503314 (= e!4473651 None!17212)))

(assert (= (and d!2303107 c!1385187) b!7503313))

(assert (= (and d!2303107 (not c!1385187)) b!7503314))

(declare-fun m!8085202 () Bool)

(assert (=> d!2303107 m!8085202))

(declare-fun m!8085204 () Bool)

(assert (=> d!2303107 m!8085204))

(assert (=> d!2303107 m!8085204))

(declare-fun m!8085206 () Bool)

(assert (=> b!7503313 m!8085206))

(assert (=> b!7503313 m!8085206))

(declare-fun m!8085208 () Bool)

(assert (=> b!7503313 m!8085208))

(assert (=> d!2302937 d!2303107))

(declare-fun d!2303109 () Bool)

(declare-fun lt!2633279 () Bool)

(assert (=> d!2303109 (= lt!2633279 (forall!18261 (toList!11817 z!3716) lambda!465051))))

(declare-fun choose!58040 ((Set Context!16868) Int) Bool)

(assert (=> d!2303109 (= lt!2633279 (choose!58040 z!3716 lambda!465051))))

(assert (=> d!2303109 (= (forall!18258 z!3716 lambda!465051) lt!2633279)))

(declare-fun bs!1937871 () Bool)

(assert (= bs!1937871 d!2303109))

(assert (=> bs!1937871 m!8084866))

(assert (=> bs!1937871 m!8084866))

(declare-fun m!8085210 () Bool)

(assert (=> bs!1937871 m!8085210))

(declare-fun m!8085212 () Bool)

(assert (=> bs!1937871 m!8085212))

(assert (=> d!2302937 d!2303109))

(declare-fun d!2303111 () Bool)

(declare-fun lt!2633280 () Int)

(assert (=> d!2303111 (>= lt!2633280 0)))

(declare-fun e!4473652 () Int)

(assert (=> d!2303111 (= lt!2633280 e!4473652)))

(declare-fun c!1385188 () Bool)

(assert (=> d!2303111 (= c!1385188 (is-Nil!72315 lt!2633176))))

(assert (=> d!2303111 (= (size!42243 lt!2633176) lt!2633280)))

(declare-fun b!7503315 () Bool)

(assert (=> b!7503315 (= e!4473652 0)))

(declare-fun b!7503316 () Bool)

(assert (=> b!7503316 (= e!4473652 (+ 1 (size!42243 (t!387008 lt!2633176))))))

(assert (= (and d!2303111 c!1385188) b!7503315))

(assert (= (and d!2303111 (not c!1385188)) b!7503316))

(declare-fun m!8085214 () Bool)

(assert (=> b!7503316 m!8085214))

(assert (=> b!7503124 d!2303111))

(assert (=> b!7503124 d!2302905))

(declare-fun d!2303113 () Bool)

(declare-fun lt!2633281 () Int)

(assert (=> d!2303113 (>= lt!2633281 0)))

(declare-fun e!4473653 () Int)

(assert (=> d!2303113 (= lt!2633281 e!4473653)))

(declare-fun c!1385189 () Bool)

(assert (=> d!2303113 (= c!1385189 (is-Nil!72315 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))

(assert (=> d!2303113 (= (size!42243 (Cons!72315 (head!15408 lt!2633058) Nil!72315)) lt!2633281)))

(declare-fun b!7503317 () Bool)

(assert (=> b!7503317 (= e!4473653 0)))

(declare-fun b!7503318 () Bool)

(assert (=> b!7503318 (= e!4473653 (+ 1 (size!42243 (t!387008 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(assert (= (and d!2303113 c!1385189) b!7503317))

(assert (= (and d!2303113 (not c!1385189)) b!7503318))

(declare-fun m!8085216 () Bool)

(assert (=> b!7503318 m!8085216))

(assert (=> b!7503124 d!2303113))

(declare-fun b!7503321 () Bool)

(declare-fun res!3010153 () Bool)

(declare-fun e!4473654 () Bool)

(assert (=> b!7503321 (=> (not res!3010153) (not e!4473654))))

(declare-fun lt!2633282 () List!72439)

(assert (=> b!7503321 (= res!3010153 (= (size!42243 lt!2633282) (+ (size!42243 (t!387008 testedP!204)) (size!42243 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(declare-fun b!7503319 () Bool)

(declare-fun e!4473655 () List!72439)

(assert (=> b!7503319 (= e!4473655 (Cons!72315 (head!15408 lt!2633058) Nil!72315))))

(declare-fun d!2303115 () Bool)

(assert (=> d!2303115 e!4473654))

(declare-fun res!3010152 () Bool)

(assert (=> d!2303115 (=> (not res!3010152) (not e!4473654))))

(assert (=> d!2303115 (= res!3010152 (= (content!15282 lt!2633282) (set.union (content!15282 (t!387008 testedP!204)) (content!15282 (Cons!72315 (head!15408 lt!2633058) Nil!72315)))))))

(assert (=> d!2303115 (= lt!2633282 e!4473655)))

(declare-fun c!1385190 () Bool)

(assert (=> d!2303115 (= c!1385190 (is-Nil!72315 (t!387008 testedP!204)))))

(assert (=> d!2303115 (= (++!17301 (t!387008 testedP!204) (Cons!72315 (head!15408 lt!2633058) Nil!72315)) lt!2633282)))

(declare-fun b!7503322 () Bool)

(assert (=> b!7503322 (= e!4473654 (or (not (= (Cons!72315 (head!15408 lt!2633058) Nil!72315) Nil!72315)) (= lt!2633282 (t!387008 testedP!204))))))

(declare-fun b!7503320 () Bool)

(assert (=> b!7503320 (= e!4473655 (Cons!72315 (h!78763 (t!387008 testedP!204)) (++!17301 (t!387008 (t!387008 testedP!204)) (Cons!72315 (head!15408 lt!2633058) Nil!72315))))))

(assert (= (and d!2303115 c!1385190) b!7503319))

(assert (= (and d!2303115 (not c!1385190)) b!7503320))

(assert (= (and d!2303115 res!3010152) b!7503321))

(assert (= (and b!7503321 res!3010153) b!7503322))

(declare-fun m!8085218 () Bool)

(assert (=> b!7503321 m!8085218))

(assert (=> b!7503321 m!8084784))

(assert (=> b!7503321 m!8084888))

(declare-fun m!8085220 () Bool)

(assert (=> d!2303115 m!8085220))

(assert (=> d!2303115 m!8085044))

(assert (=> d!2303115 m!8084892))

(declare-fun m!8085222 () Bool)

(assert (=> b!7503320 m!8085222))

(assert (=> b!7503123 d!2303115))

(assert (=> d!2302961 d!2302923))

(declare-fun b!7503326 () Bool)

(declare-fun e!4473657 () Bool)

(assert (=> b!7503326 (= e!4473657 (>= (size!42243 totalInput!779) (size!42243 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)))))))

(declare-fun d!2303117 () Bool)

(assert (=> d!2303117 e!4473657))

(declare-fun res!3010157 () Bool)

(assert (=> d!2303117 (=> res!3010157 e!4473657)))

(declare-fun lt!2633283 () Bool)

(assert (=> d!2303117 (= res!3010157 (not lt!2633283))))

(declare-fun e!4473656 () Bool)

(assert (=> d!2303117 (= lt!2633283 e!4473656)))

(declare-fun res!3010154 () Bool)

(assert (=> d!2303117 (=> res!3010154 e!4473656)))

(assert (=> d!2303117 (= res!3010154 (is-Nil!72315 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315))))))

(assert (=> d!2303117 (= (isPrefix!5968 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)) totalInput!779) lt!2633283)))

(declare-fun b!7503323 () Bool)

(declare-fun e!4473658 () Bool)

(assert (=> b!7503323 (= e!4473656 e!4473658)))

(declare-fun res!3010155 () Bool)

(assert (=> b!7503323 (=> (not res!3010155) (not e!4473658))))

(assert (=> b!7503323 (= res!3010155 (not (is-Nil!72315 totalInput!779)))))

(declare-fun b!7503325 () Bool)

(assert (=> b!7503325 (= e!4473658 (isPrefix!5968 (tail!14974 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315))) (tail!14974 totalInput!779)))))

(declare-fun b!7503324 () Bool)

(declare-fun res!3010156 () Bool)

(assert (=> b!7503324 (=> (not res!3010156) (not e!4473658))))

(assert (=> b!7503324 (= res!3010156 (= (head!15408 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315))) (head!15408 totalInput!779)))))

(assert (= (and d!2303117 (not res!3010154)) b!7503323))

(assert (= (and b!7503323 res!3010155) b!7503324))

(assert (= (and b!7503324 res!3010156) b!7503325))

(assert (= (and d!2303117 (not res!3010157)) b!7503326))

(assert (=> b!7503326 m!8084708))

(assert (=> b!7503326 m!8084934))

(declare-fun m!8085224 () Bool)

(assert (=> b!7503326 m!8085224))

(assert (=> b!7503325 m!8084934))

(declare-fun m!8085226 () Bool)

(assert (=> b!7503325 m!8085226))

(assert (=> b!7503325 m!8084828))

(assert (=> b!7503325 m!8085226))

(assert (=> b!7503325 m!8084828))

(declare-fun m!8085228 () Bool)

(assert (=> b!7503325 m!8085228))

(assert (=> b!7503324 m!8084934))

(declare-fun m!8085230 () Bool)

(assert (=> b!7503324 m!8085230))

(assert (=> b!7503324 m!8084834))

(assert (=> d!2302961 d!2303117))

(assert (=> d!2302961 d!2302941))

(declare-fun d!2303119 () Bool)

(assert (=> d!2303119 (isPrefix!5968 (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)) totalInput!779)))

(assert (=> d!2303119 true))

(declare-fun _$65!1853 () Unit!166262)

(assert (=> d!2303119 (= (choose!58028 testedP!204 totalInput!779) _$65!1853)))

(declare-fun bs!1937872 () Bool)

(assert (= bs!1937872 d!2303119))

(assert (=> bs!1937872 m!8084730))

(assert (=> bs!1937872 m!8084730))

(assert (=> bs!1937872 m!8084938))

(assert (=> bs!1937872 m!8084934))

(assert (=> bs!1937872 m!8084934))

(assert (=> bs!1937872 m!8084940))

(assert (=> d!2302961 d!2303119))

(declare-fun b!7503329 () Bool)

(declare-fun res!3010159 () Bool)

(declare-fun e!4473659 () Bool)

(assert (=> b!7503329 (=> (not res!3010159) (not e!4473659))))

(declare-fun lt!2633284 () List!72439)

(assert (=> b!7503329 (= res!3010159 (= (size!42243 lt!2633284) (+ (size!42243 testedP!204) (size!42243 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)))))))

(declare-fun b!7503327 () Bool)

(declare-fun e!4473660 () List!72439)

(assert (=> b!7503327 (= e!4473660 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315))))

(declare-fun d!2303121 () Bool)

(assert (=> d!2303121 e!4473659))

(declare-fun res!3010158 () Bool)

(assert (=> d!2303121 (=> (not res!3010158) (not e!4473659))))

(assert (=> d!2303121 (= res!3010158 (= (content!15282 lt!2633284) (set.union (content!15282 testedP!204) (content!15282 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)))))))

(assert (=> d!2303121 (= lt!2633284 e!4473660)))

(declare-fun c!1385191 () Bool)

(assert (=> d!2303121 (= c!1385191 (is-Nil!72315 testedP!204))))

(assert (=> d!2303121 (= (++!17301 testedP!204 (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315)) lt!2633284)))

(declare-fun b!7503330 () Bool)

(assert (=> b!7503330 (= e!4473659 (or (not (= (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315) Nil!72315)) (= lt!2633284 testedP!204)))))

(declare-fun b!7503328 () Bool)

(assert (=> b!7503328 (= e!4473660 (Cons!72315 (h!78763 testedP!204) (++!17301 (t!387008 testedP!204) (Cons!72315 (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) Nil!72315))))))

(assert (= (and d!2303121 c!1385191) b!7503327))

(assert (= (and d!2303121 (not c!1385191)) b!7503328))

(assert (= (and d!2303121 res!3010158) b!7503329))

(assert (= (and b!7503329 res!3010159) b!7503330))

(declare-fun m!8085232 () Bool)

(assert (=> b!7503329 m!8085232))

(assert (=> b!7503329 m!8084704))

(declare-fun m!8085234 () Bool)

(assert (=> b!7503329 m!8085234))

(declare-fun m!8085236 () Bool)

(assert (=> d!2303121 m!8085236))

(assert (=> d!2303121 m!8084854))

(declare-fun m!8085238 () Bool)

(assert (=> d!2303121 m!8085238))

(declare-fun m!8085240 () Bool)

(assert (=> b!7503328 m!8085240))

(assert (=> d!2302961 d!2303121))

(declare-fun d!2303123 () Bool)

(assert (=> d!2303123 (= (head!15408 (getSuffix!3470 totalInput!779 testedP!204)) (h!78763 (getSuffix!3470 totalInput!779 testedP!204)))))

(assert (=> d!2302961 d!2303123))

(declare-fun b!7503333 () Bool)

(declare-fun res!3010161 () Bool)

(declare-fun e!4473661 () Bool)

(assert (=> b!7503333 (=> (not res!3010161) (not e!4473661))))

(declare-fun lt!2633285 () List!72439)

(assert (=> b!7503333 (= res!3010161 (= (size!42243 lt!2633285) (+ (size!42243 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315))) (size!42243 lt!2633051))))))

(declare-fun b!7503331 () Bool)

(declare-fun e!4473662 () List!72439)

(assert (=> b!7503331 (= e!4473662 lt!2633051)))

(declare-fun d!2303125 () Bool)

(assert (=> d!2303125 e!4473661))

(declare-fun res!3010160 () Bool)

(assert (=> d!2303125 (=> (not res!3010160) (not e!4473661))))

(assert (=> d!2303125 (= res!3010160 (= (content!15282 lt!2633285) (set.union (content!15282 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315))) (content!15282 lt!2633051))))))

(assert (=> d!2303125 (= lt!2633285 e!4473662)))

(declare-fun c!1385192 () Bool)

(assert (=> d!2303125 (= c!1385192 (is-Nil!72315 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315))))))

(assert (=> d!2303125 (= (++!17301 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315)) lt!2633051) lt!2633285)))

(declare-fun b!7503334 () Bool)

(assert (=> b!7503334 (= e!4473661 (or (not (= lt!2633051 Nil!72315)) (= lt!2633285 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315)))))))

(declare-fun b!7503332 () Bool)

(assert (=> b!7503332 (= e!4473662 (Cons!72315 (h!78763 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315))) (++!17301 (t!387008 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315))) lt!2633051)))))

(assert (= (and d!2303125 c!1385192) b!7503331))

(assert (= (and d!2303125 (not c!1385192)) b!7503332))

(assert (= (and d!2303125 res!3010160) b!7503333))

(assert (= (and b!7503333 res!3010161) b!7503334))

(declare-fun m!8085242 () Bool)

(assert (=> b!7503333 m!8085242))

(assert (=> b!7503333 m!8084700))

(declare-fun m!8085244 () Bool)

(assert (=> b!7503333 m!8085244))

(assert (=> b!7503333 m!8084924))

(declare-fun m!8085246 () Bool)

(assert (=> d!2303125 m!8085246))

(assert (=> d!2303125 m!8084700))

(declare-fun m!8085248 () Bool)

(assert (=> d!2303125 m!8085248))

(assert (=> d!2303125 m!8084930))

(declare-fun m!8085250 () Bool)

(assert (=> b!7503332 m!8085250))

(assert (=> d!2302953 d!2303125))

(assert (=> d!2302953 d!2302955))

(declare-fun d!2303127 () Bool)

(assert (=> d!2303127 (= (++!17301 (++!17301 testedP!204 (Cons!72315 lt!2633052 Nil!72315)) lt!2633051) totalInput!779)))

(assert (=> d!2303127 true))

(declare-fun _$68!1372 () Unit!166262)

(assert (=> d!2303127 (= (choose!58027 testedP!204 lt!2633052 lt!2633051 totalInput!779) _$68!1372)))

(declare-fun bs!1937873 () Bool)

(assert (= bs!1937873 d!2303127))

(assert (=> bs!1937873 m!8084700))

(assert (=> bs!1937873 m!8084700))

(assert (=> bs!1937873 m!8084906))

(assert (=> d!2302953 d!2303127))

(declare-fun b!7503337 () Bool)

(declare-fun res!3010163 () Bool)

(declare-fun e!4473663 () Bool)

(assert (=> b!7503337 (=> (not res!3010163) (not e!4473663))))

(declare-fun lt!2633286 () List!72439)

(assert (=> b!7503337 (= res!3010163 (= (size!42243 lt!2633286) (+ (size!42243 testedP!204) (size!42243 (Cons!72315 lt!2633052 lt!2633051)))))))

(declare-fun b!7503335 () Bool)

(declare-fun e!4473664 () List!72439)

(assert (=> b!7503335 (= e!4473664 (Cons!72315 lt!2633052 lt!2633051))))

(declare-fun d!2303129 () Bool)

(assert (=> d!2303129 e!4473663))

(declare-fun res!3010162 () Bool)

(assert (=> d!2303129 (=> (not res!3010162) (not e!4473663))))

(assert (=> d!2303129 (= res!3010162 (= (content!15282 lt!2633286) (set.union (content!15282 testedP!204) (content!15282 (Cons!72315 lt!2633052 lt!2633051)))))))

(assert (=> d!2303129 (= lt!2633286 e!4473664)))

(declare-fun c!1385193 () Bool)

(assert (=> d!2303129 (= c!1385193 (is-Nil!72315 testedP!204))))

(assert (=> d!2303129 (= (++!17301 testedP!204 (Cons!72315 lt!2633052 lt!2633051)) lt!2633286)))

(declare-fun b!7503338 () Bool)

(assert (=> b!7503338 (= e!4473663 (or (not (= (Cons!72315 lt!2633052 lt!2633051) Nil!72315)) (= lt!2633286 testedP!204)))))

(declare-fun b!7503336 () Bool)

(assert (=> b!7503336 (= e!4473664 (Cons!72315 (h!78763 testedP!204) (++!17301 (t!387008 testedP!204) (Cons!72315 lt!2633052 lt!2633051))))))

(assert (= (and d!2303129 c!1385193) b!7503335))

(assert (= (and d!2303129 (not c!1385193)) b!7503336))

(assert (= (and d!2303129 res!3010162) b!7503337))

(assert (= (and b!7503337 res!3010163) b!7503338))

(declare-fun m!8085252 () Bool)

(assert (=> b!7503337 m!8085252))

(assert (=> b!7503337 m!8084704))

(declare-fun m!8085254 () Bool)

(assert (=> b!7503337 m!8085254))

(declare-fun m!8085256 () Bool)

(assert (=> d!2303129 m!8085256))

(assert (=> d!2303129 m!8084854))

(declare-fun m!8085258 () Bool)

(assert (=> d!2303129 m!8085258))

(declare-fun m!8085260 () Bool)

(assert (=> b!7503336 m!8085260))

(assert (=> d!2302953 d!2303129))

(declare-fun b!7503339 () Bool)

(declare-fun e!4473665 () Bool)

(declare-fun tp!2178076 () Bool)

(assert (=> b!7503339 (= e!4473665 (and tp_is_empty!49685 tp!2178076))))

(assert (=> b!7503148 (= tp!2178051 e!4473665)))

(assert (= (and b!7503148 (is-Cons!72315 (t!387008 (t!387008 totalInput!779)))) b!7503339))

(declare-fun b!7503340 () Bool)

(declare-fun e!4473666 () Bool)

(declare-fun tp!2178077 () Bool)

(assert (=> b!7503340 (= e!4473666 (and tp_is_empty!49685 tp!2178077))))

(assert (=> b!7503154 (= tp!2178058 e!4473666)))

(assert (= (and b!7503154 (is-Cons!72315 (t!387008 (t!387008 testedSuffix!164)))) b!7503340))

(declare-fun b!7503341 () Bool)

(declare-fun e!4473667 () Bool)

(declare-fun tp!2178078 () Bool)

(declare-fun tp!2178079 () Bool)

(assert (=> b!7503341 (= e!4473667 (and tp!2178078 tp!2178079))))

(assert (=> b!7503142 (= tp!2178047 e!4473667)))

(assert (= (and b!7503142 (is-Cons!72316 (exprs!8934 setElem!56897))) b!7503341))

(declare-fun condSetEmpty!56901 () Bool)

(assert (=> setNonEmpty!56897 (= condSetEmpty!56901 (= setRest!56897 (as set.empty (Set Context!16868))))))

(declare-fun setRes!56901 () Bool)

(assert (=> setNonEmpty!56897 (= tp!2178046 setRes!56901)))

(declare-fun setIsEmpty!56901 () Bool)

(assert (=> setIsEmpty!56901 setRes!56901))

(declare-fun setElem!56901 () Context!16868)

(declare-fun tp!2178080 () Bool)

(declare-fun e!4473668 () Bool)

(declare-fun setNonEmpty!56901 () Bool)

(assert (=> setNonEmpty!56901 (= setRes!56901 (and tp!2178080 (inv!92421 setElem!56901) e!4473668))))

(declare-fun setRest!56901 () (Set Context!16868))

(assert (=> setNonEmpty!56901 (= setRest!56897 (set.union (set.insert setElem!56901 (as set.empty (Set Context!16868))) setRest!56901))))

(declare-fun b!7503342 () Bool)

(declare-fun tp!2178081 () Bool)

(assert (=> b!7503342 (= e!4473668 tp!2178081)))

(assert (= (and setNonEmpty!56897 condSetEmpty!56901) setIsEmpty!56901))

(assert (= (and setNonEmpty!56897 (not condSetEmpty!56901)) setNonEmpty!56901))

(assert (= setNonEmpty!56901 b!7503342))

(declare-fun m!8085262 () Bool)

(assert (=> setNonEmpty!56901 m!8085262))

(declare-fun b!7503343 () Bool)

(declare-fun e!4473669 () Bool)

(declare-fun tp!2178082 () Bool)

(assert (=> b!7503343 (= e!4473669 (and tp_is_empty!49685 tp!2178082))))

(assert (=> b!7503147 (= tp!2178050 e!4473669)))

(assert (= (and b!7503147 (is-Cons!72315 (t!387008 (t!387008 testedP!204)))) b!7503343))

(declare-fun b!7503357 () Bool)

(declare-fun e!4473672 () Bool)

(declare-fun tp!2178094 () Bool)

(declare-fun tp!2178096 () Bool)

(assert (=> b!7503357 (= e!4473672 (and tp!2178094 tp!2178096))))

(declare-fun b!7503355 () Bool)

(declare-fun tp!2178097 () Bool)

(declare-fun tp!2178095 () Bool)

(assert (=> b!7503355 (= e!4473672 (and tp!2178097 tp!2178095))))

(declare-fun b!7503354 () Bool)

(assert (=> b!7503354 (= e!4473672 tp_is_empty!49685)))

(assert (=> b!7503153 (= tp!2178056 e!4473672)))

(declare-fun b!7503356 () Bool)

(declare-fun tp!2178093 () Bool)

(assert (=> b!7503356 (= e!4473672 tp!2178093)))

(assert (= (and b!7503153 (is-ElementMatch!19682 (h!78764 (exprs!8934 setElem!56891)))) b!7503354))

(assert (= (and b!7503153 (is-Concat!28527 (h!78764 (exprs!8934 setElem!56891)))) b!7503355))

(assert (= (and b!7503153 (is-Star!19682 (h!78764 (exprs!8934 setElem!56891)))) b!7503356))

(assert (= (and b!7503153 (is-Union!19682 (h!78764 (exprs!8934 setElem!56891)))) b!7503357))

(declare-fun b!7503358 () Bool)

(declare-fun e!4473673 () Bool)

(declare-fun tp!2178098 () Bool)

(declare-fun tp!2178099 () Bool)

(assert (=> b!7503358 (= e!4473673 (and tp!2178098 tp!2178099))))

(assert (=> b!7503153 (= tp!2178057 e!4473673)))

(assert (= (and b!7503153 (is-Cons!72316 (t!387009 (exprs!8934 setElem!56891)))) b!7503358))

(declare-fun b_lambda!287845 () Bool)

(assert (= b_lambda!287843 (or d!2302913 b_lambda!287845)))

(declare-fun bs!1937874 () Bool)

(declare-fun d!2303131 () Bool)

(assert (= bs!1937874 (and d!2303131 d!2302913)))

(declare-fun validRegex!10174 (Regex!19682) Bool)

(assert (=> bs!1937874 (= (dynLambda!29770 lambda!465038 (h!78764 (exprs!8934 setElem!56891))) (validRegex!10174 (h!78764 (exprs!8934 setElem!56891))))))

(declare-fun m!8085264 () Bool)

(assert (=> bs!1937874 m!8085264))

(assert (=> b!7503279 d!2303131))

(push 1)

(assert (not b!7503284))

(assert (not b!7503285))

(assert (not b!7503355))

(assert (not b!7503231))

(assert (not b!7503248))

(assert (not b!7503268))

(assert (not d!2303129))

(assert (not b!7503343))

(assert (not d!2303107))

(assert (not b!7503253))

(assert (not b!7503269))

(assert (not b!7503229))

(assert (not d!2303119))

(assert (not b!7503282))

(assert (not b!7503301))

(assert (not b!7503260))

(assert (not d!2303097))

(assert (not b!7503326))

(assert (not d!2303059))

(assert (not b!7503272))

(assert (not b!7503316))

(assert (not b!7503313))

(assert (not b!7503342))

(assert (not b!7503223))

(assert (not d!2303095))

(assert (not d!2303039))

(assert (not b!7503233))

(assert (not b!7503241))

(assert (not d!2303101))

(assert (not b!7503219))

(assert (not setNonEmpty!56901))

(assert (not d!2303055))

(assert (not b!7503243))

(assert (not b!7503296))

(assert (not b!7503257))

(assert (not b!7503292))

(assert (not b!7503254))

(assert (not b_lambda!287845))

(assert (not b!7503321))

(assert (not b!7503221))

(assert (not b!7503337))

(assert (not b!7503280))

(assert (not b!7503242))

(assert (not b!7503357))

(assert (not b!7503265))

(assert (not b!7503356))

(assert (not b!7503332))

(assert (not b!7503289))

(assert (not b!7503324))

(assert (not b!7503305))

(assert (not d!2303115))

(assert (not b!7503246))

(assert (not d!2303037))

(assert (not d!2303125))

(assert (not b!7503262))

(assert (not b!7503325))

(assert (not b!7503339))

(assert tp_is_empty!49685)

(assert (not d!2303021))

(assert (not b!7503237))

(assert (not d!2303071))

(assert (not b!7503274))

(assert (not b!7503300))

(assert (not b!7503290))

(assert (not b!7503336))

(assert (not d!2303109))

(assert (not d!2303015))

(assert (not b!7503252))

(assert (not b!7503294))

(assert (not b!7503308))

(assert (not d!2303127))

(assert (not bs!1937874))

(assert (not b!7503328))

(assert (not b!7503304))

(assert (not b!7503340))

(assert (not d!2303035))

(assert (not b!7503250))

(assert (not b!7503239))

(assert (not b!7503333))

(assert (not b!7503302))

(assert (not b!7503225))

(assert (not b!7503227))

(assert (not d!2303121))

(assert (not b!7503256))

(assert (not b!7503358))

(assert (not b!7503298))

(assert (not b!7503318))

(assert (not b!7503329))

(assert (not b!7503264))

(assert (not d!2303081))

(assert (not b!7503293))

(assert (not b!7503320))

(assert (not b!7503288))

(assert (not b!7503341))

(assert (not d!2303049))

(assert (not d!2303067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

