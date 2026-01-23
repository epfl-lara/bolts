; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243834 () Bool)

(assert start!243834)

(declare-fun b!2496891 () Bool)

(declare-fun e!1584239 () Bool)

(declare-fun tp_is_empty!12623 () Bool)

(assert (=> b!2496891 (= e!1584239 tp_is_empty!12623)))

(declare-fun b!2496892 () Bool)

(declare-fun tp!799664 () Bool)

(assert (=> b!2496892 (= e!1584239 tp!799664)))

(declare-fun b!2496893 () Bool)

(declare-fun tp!799667 () Bool)

(declare-fun tp!799666 () Bool)

(assert (=> b!2496893 (= e!1584239 (and tp!799667 tp!799666))))

(declare-fun b!2496894 () Bool)

(declare-fun res!1056026 () Bool)

(declare-fun e!1584244 () Bool)

(assert (=> b!2496894 (=> (not res!1056026) (not e!1584244))))

(declare-datatypes ((C!14926 0))(
  ( (C!14927 (val!9115 Int)) )
))
(declare-datatypes ((Regex!7384 0))(
  ( (ElementMatch!7384 (c!397094 C!14926)) (Concat!12080 (regOne!15280 Regex!7384) (regTwo!15280 Regex!7384)) (EmptyExpr!7384) (Star!7384 (reg!7713 Regex!7384)) (EmptyLang!7384) (Union!7384 (regOne!15281 Regex!7384) (regTwo!15281 Regex!7384)) )
))
(declare-fun r!27340 () Regex!7384)

(assert (=> b!2496894 (= res!1056026 (and (not (is-EmptyExpr!7384 r!27340)) (not (is-EmptyLang!7384 r!27340)) (not (is-ElementMatch!7384 r!27340)) (not (is-Union!7384 r!27340)) (is-Star!7384 r!27340)))))

(declare-fun b!2496895 () Bool)

(declare-fun res!1056024 () Bool)

(declare-fun e!1584243 () Bool)

(assert (=> b!2496895 (=> (not res!1056024) (not e!1584243))))

(declare-fun lt!894936 () Regex!7384)

(declare-datatypes ((List!29449 0))(
  ( (Nil!29349) (Cons!29349 (h!34769 C!14926) (t!211148 List!29449)) )
))
(declare-fun tl!4068 () List!29449)

(declare-fun nullable!2301 (Regex!7384) Bool)

(declare-fun derivative!79 (Regex!7384 List!29449) Regex!7384)

(assert (=> b!2496895 (= res!1056024 (not (nullable!2301 (derivative!79 lt!894936 tl!4068))))))

(declare-fun b!2496896 () Bool)

(declare-fun e!1584241 () Bool)

(assert (=> b!2496896 (= e!1584243 (not e!1584241))))

(declare-fun res!1056023 () Bool)

(assert (=> b!2496896 (=> res!1056023 e!1584241)))

(declare-fun lt!894941 () Bool)

(assert (=> b!2496896 (= res!1056023 (not lt!894941))))

(declare-fun lt!894934 () Regex!7384)

(declare-fun matchR!3393 (Regex!7384 List!29449) Bool)

(assert (=> b!2496896 (= lt!894941 (matchR!3393 lt!894934 Nil!29349))))

(declare-fun lt!894938 () Regex!7384)

(assert (=> b!2496896 (= lt!894941 (matchR!3393 lt!894938 tl!4068))))

(declare-datatypes ((Unit!43037 0))(
  ( (Unit!43038) )
))
(declare-fun lt!894937 () Unit!43037)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!39 (Regex!7384 List!29449) Unit!43037)

(assert (=> b!2496896 (= lt!894937 (lemmaMatchRIsSameAsWholeDerivativeAndNil!39 lt!894938 tl!4068))))

(declare-fun res!1056028 () Bool)

(declare-fun e!1584245 () Bool)

(assert (=> start!243834 (=> (not res!1056028) (not e!1584245))))

(declare-fun validRegex!3010 (Regex!7384) Bool)

(assert (=> start!243834 (= res!1056028 (validRegex!3010 r!27340))))

(assert (=> start!243834 e!1584245))

(assert (=> start!243834 e!1584239))

(assert (=> start!243834 tp_is_empty!12623))

(declare-fun e!1584240 () Bool)

(assert (=> start!243834 e!1584240))

(declare-fun b!2496897 () Bool)

(declare-fun res!1056029 () Bool)

(declare-fun e!1584242 () Bool)

(assert (=> b!2496897 (=> res!1056029 e!1584242)))

(declare-fun lt!894933 () Regex!7384)

(declare-datatypes ((tuple2!29386 0))(
  ( (tuple2!29387 (_1!17235 List!29449) (_2!17235 List!29449)) )
))
(declare-fun lt!894940 () tuple2!29386)

(assert (=> b!2496897 (= res!1056029 (not (matchR!3393 lt!894933 (_2!17235 lt!894940))))))

(declare-fun b!2496898 () Bool)

(declare-fun res!1056027 () Bool)

(assert (=> b!2496898 (=> res!1056027 e!1584242)))

(declare-fun c!14016 () C!14926)

(assert (=> b!2496898 (= res!1056027 (not (matchR!3393 (reg!7713 r!27340) (Cons!29349 c!14016 (_1!17235 lt!894940)))))))

(declare-fun b!2496899 () Bool)

(assert (=> b!2496899 (= e!1584244 e!1584243)))

(declare-fun res!1056025 () Bool)

(assert (=> b!2496899 (=> (not res!1056025) (not e!1584243))))

(assert (=> b!2496899 (= res!1056025 (= lt!894938 (Concat!12080 lt!894936 lt!894933)))))

(assert (=> b!2496899 (= lt!894933 (Star!7384 (reg!7713 r!27340)))))

(declare-fun derivativeStep!1953 (Regex!7384 C!14926) Regex!7384)

(assert (=> b!2496899 (= lt!894936 (derivativeStep!1953 (reg!7713 r!27340) c!14016))))

(declare-fun b!2496900 () Bool)

(declare-fun tp!799663 () Bool)

(declare-fun tp!799665 () Bool)

(assert (=> b!2496900 (= e!1584239 (and tp!799663 tp!799665))))

(declare-fun b!2496901 () Bool)

(assert (=> b!2496901 (= e!1584241 e!1584242)))

(declare-fun res!1056031 () Bool)

(assert (=> b!2496901 (=> res!1056031 e!1584242)))

(declare-fun ++!7166 (List!29449 List!29449) List!29449)

(assert (=> b!2496901 (= res!1056031 (not (= (++!7166 (_1!17235 lt!894940) (_2!17235 lt!894940)) tl!4068)))))

(declare-datatypes ((Option!5813 0))(
  ( (None!5812) (Some!5812 (v!31743 tuple2!29386)) )
))
(declare-fun lt!894935 () Option!5813)

(declare-fun get!9088 (Option!5813) tuple2!29386)

(assert (=> b!2496901 (= lt!894940 (get!9088 lt!894935))))

(declare-fun isDefined!4635 (Option!5813) Bool)

(assert (=> b!2496901 (isDefined!4635 lt!894935)))

(declare-fun findConcatSeparation!835 (Regex!7384 Regex!7384 List!29449 List!29449 List!29449) Option!5813)

(assert (=> b!2496901 (= lt!894935 (findConcatSeparation!835 lt!894936 lt!894933 Nil!29349 tl!4068 tl!4068))))

(declare-fun lt!894939 () Unit!43037)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!117 (Regex!7384 Regex!7384 List!29449) Unit!43037)

(assert (=> b!2496901 (= lt!894939 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!117 lt!894936 lt!894933 tl!4068))))

(declare-fun b!2496902 () Bool)

(assert (=> b!2496902 (= e!1584245 e!1584244)))

(declare-fun res!1056030 () Bool)

(assert (=> b!2496902 (=> (not res!1056030) (not e!1584244))))

(assert (=> b!2496902 (= res!1056030 (nullable!2301 lt!894934))))

(assert (=> b!2496902 (= lt!894934 (derivative!79 lt!894938 tl!4068))))

(assert (=> b!2496902 (= lt!894938 (derivativeStep!1953 r!27340 c!14016))))

(declare-fun b!2496903 () Bool)

(assert (=> b!2496903 (= e!1584242 (validRegex!3010 (reg!7713 r!27340)))))

(declare-fun b!2496904 () Bool)

(declare-fun tp!799668 () Bool)

(assert (=> b!2496904 (= e!1584240 (and tp_is_empty!12623 tp!799668))))

(assert (= (and start!243834 res!1056028) b!2496902))

(assert (= (and b!2496902 res!1056030) b!2496894))

(assert (= (and b!2496894 res!1056026) b!2496899))

(assert (= (and b!2496899 res!1056025) b!2496895))

(assert (= (and b!2496895 res!1056024) b!2496896))

(assert (= (and b!2496896 (not res!1056023)) b!2496901))

(assert (= (and b!2496901 (not res!1056031)) b!2496897))

(assert (= (and b!2496897 (not res!1056029)) b!2496898))

(assert (= (and b!2496898 (not res!1056027)) b!2496903))

(assert (= (and start!243834 (is-ElementMatch!7384 r!27340)) b!2496891))

(assert (= (and start!243834 (is-Concat!12080 r!27340)) b!2496900))

(assert (= (and start!243834 (is-Star!7384 r!27340)) b!2496892))

(assert (= (and start!243834 (is-Union!7384 r!27340)) b!2496893))

(assert (= (and start!243834 (is-Cons!29349 tl!4068)) b!2496904))

(declare-fun m!2861081 () Bool)

(assert (=> b!2496903 m!2861081))

(declare-fun m!2861083 () Bool)

(assert (=> b!2496899 m!2861083))

(declare-fun m!2861085 () Bool)

(assert (=> b!2496898 m!2861085))

(declare-fun m!2861087 () Bool)

(assert (=> b!2496897 m!2861087))

(declare-fun m!2861089 () Bool)

(assert (=> b!2496902 m!2861089))

(declare-fun m!2861091 () Bool)

(assert (=> b!2496902 m!2861091))

(declare-fun m!2861093 () Bool)

(assert (=> b!2496902 m!2861093))

(declare-fun m!2861095 () Bool)

(assert (=> b!2496901 m!2861095))

(declare-fun m!2861097 () Bool)

(assert (=> b!2496901 m!2861097))

(declare-fun m!2861099 () Bool)

(assert (=> b!2496901 m!2861099))

(declare-fun m!2861101 () Bool)

(assert (=> b!2496901 m!2861101))

(declare-fun m!2861103 () Bool)

(assert (=> b!2496901 m!2861103))

(declare-fun m!2861105 () Bool)

(assert (=> start!243834 m!2861105))

(declare-fun m!2861107 () Bool)

(assert (=> b!2496896 m!2861107))

(declare-fun m!2861109 () Bool)

(assert (=> b!2496896 m!2861109))

(declare-fun m!2861111 () Bool)

(assert (=> b!2496896 m!2861111))

(declare-fun m!2861113 () Bool)

(assert (=> b!2496895 m!2861113))

(assert (=> b!2496895 m!2861113))

(declare-fun m!2861115 () Bool)

(assert (=> b!2496895 m!2861115))

(push 1)

(assert (not b!2496893))

(assert (not b!2496897))

(assert (not b!2496898))

(assert (not b!2496892))

(assert (not b!2496902))

(assert (not b!2496900))

(assert (not b!2496904))

(assert (not start!243834))

(assert (not b!2496896))

(assert (not b!2496895))

(assert (not b!2496903))

(assert tp_is_empty!12623)

(assert (not b!2496901))

(assert (not b!2496899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!714972 () Bool)

(declare-fun nullableFct!578 (Regex!7384) Bool)

(assert (=> d!714972 (= (nullable!2301 lt!894934) (nullableFct!578 lt!894934))))

(declare-fun bs!468488 () Bool)

(assert (= bs!468488 d!714972))

(declare-fun m!2861153 () Bool)

(assert (=> bs!468488 m!2861153))

(assert (=> b!2496902 d!714972))

(declare-fun d!714974 () Bool)

(declare-fun lt!894971 () Regex!7384)

(assert (=> d!714974 (validRegex!3010 lt!894971)))

(declare-fun e!1584269 () Regex!7384)

(assert (=> d!714974 (= lt!894971 e!1584269)))

(declare-fun c!397098 () Bool)

(assert (=> d!714974 (= c!397098 (is-Cons!29349 tl!4068))))

(assert (=> d!714974 (validRegex!3010 lt!894938)))

(assert (=> d!714974 (= (derivative!79 lt!894938 tl!4068) lt!894971)))

(declare-fun b!2496951 () Bool)

(assert (=> b!2496951 (= e!1584269 (derivative!79 (derivativeStep!1953 lt!894938 (h!34769 tl!4068)) (t!211148 tl!4068)))))

(declare-fun b!2496952 () Bool)

(assert (=> b!2496952 (= e!1584269 lt!894938)))

(assert (= (and d!714974 c!397098) b!2496951))

(assert (= (and d!714974 (not c!397098)) b!2496952))

(declare-fun m!2861155 () Bool)

(assert (=> d!714974 m!2861155))

(declare-fun m!2861157 () Bool)

(assert (=> d!714974 m!2861157))

(declare-fun m!2861159 () Bool)

(assert (=> b!2496951 m!2861159))

(assert (=> b!2496951 m!2861159))

(declare-fun m!2861161 () Bool)

(assert (=> b!2496951 m!2861161))

(assert (=> b!2496902 d!714974))

(declare-fun c!397115 () Bool)

(declare-fun call!153932 () Regex!7384)

(declare-fun bm!153927 () Bool)

(assert (=> bm!153927 (= call!153932 (derivativeStep!1953 (ite c!397115 (regTwo!15281 r!27340) (regTwo!15280 r!27340)) c!14016))))

(declare-fun b!2497001 () Bool)

(declare-fun e!1584298 () Regex!7384)

(declare-fun call!153934 () Regex!7384)

(assert (=> b!2497001 (= e!1584298 (Concat!12080 call!153934 r!27340))))

(declare-fun b!2497002 () Bool)

(declare-fun e!1584296 () Regex!7384)

(assert (=> b!2497002 (= e!1584296 EmptyLang!7384)))

(declare-fun bm!153928 () Bool)

(declare-fun call!153933 () Regex!7384)

(assert (=> bm!153928 (= call!153933 call!153934)))

(declare-fun bm!153929 () Bool)

(declare-fun call!153935 () Regex!7384)

(assert (=> bm!153929 (= call!153934 call!153935)))

(declare-fun e!1584297 () Regex!7384)

(declare-fun b!2497003 () Bool)

(assert (=> b!2497003 (= e!1584297 (Union!7384 (Concat!12080 call!153933 (regTwo!15280 r!27340)) call!153932))))

(declare-fun b!2497004 () Bool)

(declare-fun c!397116 () Bool)

(assert (=> b!2497004 (= c!397116 (nullable!2301 (regOne!15280 r!27340)))))

(assert (=> b!2497004 (= e!1584298 e!1584297)))

(declare-fun b!2497005 () Bool)

(declare-fun e!1584295 () Regex!7384)

(assert (=> b!2497005 (= e!1584295 (Union!7384 call!153935 call!153932))))

(declare-fun d!714976 () Bool)

(declare-fun lt!894976 () Regex!7384)

(assert (=> d!714976 (validRegex!3010 lt!894976)))

(assert (=> d!714976 (= lt!894976 e!1584296)))

(declare-fun c!397117 () Bool)

(assert (=> d!714976 (= c!397117 (or (is-EmptyExpr!7384 r!27340) (is-EmptyLang!7384 r!27340)))))

(assert (=> d!714976 (validRegex!3010 r!27340)))

(assert (=> d!714976 (= (derivativeStep!1953 r!27340 c!14016) lt!894976)))

(declare-fun b!2497006 () Bool)

(assert (=> b!2497006 (= e!1584297 (Union!7384 (Concat!12080 call!153933 (regTwo!15280 r!27340)) EmptyLang!7384))))

(declare-fun b!2497007 () Bool)

(declare-fun e!1584294 () Regex!7384)

(assert (=> b!2497007 (= e!1584296 e!1584294)))

(declare-fun c!397119 () Bool)

(assert (=> b!2497007 (= c!397119 (is-ElementMatch!7384 r!27340))))

(declare-fun b!2497008 () Bool)

(assert (=> b!2497008 (= e!1584295 e!1584298)))

(declare-fun c!397118 () Bool)

(assert (=> b!2497008 (= c!397118 (is-Star!7384 r!27340))))

(declare-fun b!2497009 () Bool)

(assert (=> b!2497009 (= e!1584294 (ite (= c!14016 (c!397094 r!27340)) EmptyExpr!7384 EmptyLang!7384))))

(declare-fun bm!153930 () Bool)

(assert (=> bm!153930 (= call!153935 (derivativeStep!1953 (ite c!397115 (regOne!15281 r!27340) (ite c!397118 (reg!7713 r!27340) (regOne!15280 r!27340))) c!14016))))

(declare-fun b!2497010 () Bool)

(assert (=> b!2497010 (= c!397115 (is-Union!7384 r!27340))))

(assert (=> b!2497010 (= e!1584294 e!1584295)))

(assert (= (and d!714976 c!397117) b!2497002))

(assert (= (and d!714976 (not c!397117)) b!2497007))

(assert (= (and b!2497007 c!397119) b!2497009))

(assert (= (and b!2497007 (not c!397119)) b!2497010))

(assert (= (and b!2497010 c!397115) b!2497005))

(assert (= (and b!2497010 (not c!397115)) b!2497008))

(assert (= (and b!2497008 c!397118) b!2497001))

(assert (= (and b!2497008 (not c!397118)) b!2497004))

(assert (= (and b!2497004 c!397116) b!2497003))

(assert (= (and b!2497004 (not c!397116)) b!2497006))

(assert (= (or b!2497003 b!2497006) bm!153928))

(assert (= (or b!2497001 bm!153928) bm!153929))

(assert (= (or b!2497005 b!2497003) bm!153927))

(assert (= (or b!2497005 bm!153929) bm!153930))

(declare-fun m!2861163 () Bool)

(assert (=> bm!153927 m!2861163))

(declare-fun m!2861165 () Bool)

(assert (=> b!2497004 m!2861165))

(declare-fun m!2861167 () Bool)

(assert (=> d!714976 m!2861167))

(assert (=> d!714976 m!2861105))

(declare-fun m!2861169 () Bool)

(assert (=> bm!153930 m!2861169))

(assert (=> b!2496902 d!714976))

(declare-fun b!2497053 () Bool)

(declare-fun e!1584320 () Bool)

(declare-fun e!1584322 () Bool)

(assert (=> b!2497053 (= e!1584320 e!1584322)))

(declare-fun res!1056102 () Bool)

(assert (=> b!2497053 (=> res!1056102 e!1584322)))

(declare-fun call!153939 () Bool)

(assert (=> b!2497053 (= res!1056102 call!153939)))

(declare-fun b!2497054 () Bool)

(declare-fun e!1584325 () Bool)

(assert (=> b!2497054 (= e!1584325 (nullable!2301 lt!894933))))

(declare-fun b!2497055 () Bool)

(declare-fun e!1584321 () Bool)

(assert (=> b!2497055 (= e!1584321 e!1584320)))

(declare-fun res!1056106 () Bool)

(assert (=> b!2497055 (=> (not res!1056106) (not e!1584320))))

(declare-fun lt!894980 () Bool)

(assert (=> b!2497055 (= res!1056106 (not lt!894980))))

(declare-fun b!2497056 () Bool)

(declare-fun e!1584324 () Bool)

(assert (=> b!2497056 (= e!1584324 (not lt!894980))))

(declare-fun b!2497057 () Bool)

(declare-fun res!1056104 () Bool)

(assert (=> b!2497057 (=> res!1056104 e!1584321)))

(assert (=> b!2497057 (= res!1056104 (not (is-ElementMatch!7384 lt!894933)))))

(assert (=> b!2497057 (= e!1584324 e!1584321)))

(declare-fun b!2497058 () Bool)

(declare-fun head!5685 (List!29449) C!14926)

(assert (=> b!2497058 (= e!1584322 (not (= (head!5685 (_2!17235 lt!894940)) (c!397094 lt!894933))))))

(declare-fun b!2497059 () Bool)

(declare-fun e!1584326 () Bool)

(assert (=> b!2497059 (= e!1584326 (= lt!894980 call!153939))))

(declare-fun b!2497060 () Bool)

(declare-fun e!1584323 () Bool)

(assert (=> b!2497060 (= e!1584323 (= (head!5685 (_2!17235 lt!894940)) (c!397094 lt!894933)))))

(declare-fun b!2497062 () Bool)

(declare-fun tail!3962 (List!29449) List!29449)

(assert (=> b!2497062 (= e!1584325 (matchR!3393 (derivativeStep!1953 lt!894933 (head!5685 (_2!17235 lt!894940))) (tail!3962 (_2!17235 lt!894940))))))

(declare-fun b!2497063 () Bool)

(declare-fun res!1056105 () Bool)

(assert (=> b!2497063 (=> (not res!1056105) (not e!1584323))))

(assert (=> b!2497063 (= res!1056105 (not call!153939))))

(declare-fun b!2497064 () Bool)

(declare-fun res!1056099 () Bool)

(assert (=> b!2497064 (=> res!1056099 e!1584321)))

(assert (=> b!2497064 (= res!1056099 e!1584323)))

(declare-fun res!1056101 () Bool)

(assert (=> b!2497064 (=> (not res!1056101) (not e!1584323))))

(assert (=> b!2497064 (= res!1056101 lt!894980)))

(declare-fun b!2497065 () Bool)

(declare-fun res!1056103 () Bool)

(assert (=> b!2497065 (=> res!1056103 e!1584322)))

(declare-fun isEmpty!16815 (List!29449) Bool)

(assert (=> b!2497065 (= res!1056103 (not (isEmpty!16815 (tail!3962 (_2!17235 lt!894940)))))))

(declare-fun bm!153934 () Bool)

(assert (=> bm!153934 (= call!153939 (isEmpty!16815 (_2!17235 lt!894940)))))

(declare-fun b!2497066 () Bool)

(declare-fun res!1056100 () Bool)

(assert (=> b!2497066 (=> (not res!1056100) (not e!1584323))))

(assert (=> b!2497066 (= res!1056100 (isEmpty!16815 (tail!3962 (_2!17235 lt!894940))))))

(declare-fun d!714978 () Bool)

(assert (=> d!714978 e!1584326))

(declare-fun c!397129 () Bool)

(assert (=> d!714978 (= c!397129 (is-EmptyExpr!7384 lt!894933))))

(assert (=> d!714978 (= lt!894980 e!1584325)))

(declare-fun c!397130 () Bool)

(assert (=> d!714978 (= c!397130 (isEmpty!16815 (_2!17235 lt!894940)))))

(assert (=> d!714978 (validRegex!3010 lt!894933)))

(assert (=> d!714978 (= (matchR!3393 lt!894933 (_2!17235 lt!894940)) lt!894980)))

(declare-fun b!2497061 () Bool)

(assert (=> b!2497061 (= e!1584326 e!1584324)))

(declare-fun c!397131 () Bool)

(assert (=> b!2497061 (= c!397131 (is-EmptyLang!7384 lt!894933))))

(assert (= (and d!714978 c!397130) b!2497054))

(assert (= (and d!714978 (not c!397130)) b!2497062))

(assert (= (and d!714978 c!397129) b!2497059))

(assert (= (and d!714978 (not c!397129)) b!2497061))

(assert (= (and b!2497061 c!397131) b!2497056))

(assert (= (and b!2497061 (not c!397131)) b!2497057))

(assert (= (and b!2497057 (not res!1056104)) b!2497064))

(assert (= (and b!2497064 res!1056101) b!2497063))

(assert (= (and b!2497063 res!1056105) b!2497066))

(assert (= (and b!2497066 res!1056100) b!2497060))

(assert (= (and b!2497064 (not res!1056099)) b!2497055))

(assert (= (and b!2497055 res!1056106) b!2497053))

(assert (= (and b!2497053 (not res!1056102)) b!2497065))

(assert (= (and b!2497065 (not res!1056103)) b!2497058))

(assert (= (or b!2497059 b!2497053 b!2497063) bm!153934))

(declare-fun m!2861185 () Bool)

(assert (=> bm!153934 m!2861185))

(declare-fun m!2861187 () Bool)

(assert (=> b!2497060 m!2861187))

(declare-fun m!2861189 () Bool)

(assert (=> b!2497054 m!2861189))

(declare-fun m!2861191 () Bool)

(assert (=> b!2497065 m!2861191))

(assert (=> b!2497065 m!2861191))

(declare-fun m!2861193 () Bool)

(assert (=> b!2497065 m!2861193))

(assert (=> b!2497062 m!2861187))

(assert (=> b!2497062 m!2861187))

(declare-fun m!2861195 () Bool)

(assert (=> b!2497062 m!2861195))

(assert (=> b!2497062 m!2861191))

(assert (=> b!2497062 m!2861195))

(assert (=> b!2497062 m!2861191))

(declare-fun m!2861197 () Bool)

(assert (=> b!2497062 m!2861197))

(assert (=> b!2497066 m!2861191))

(assert (=> b!2497066 m!2861191))

(assert (=> b!2497066 m!2861193))

(assert (=> b!2497058 m!2861187))

(assert (=> d!714978 m!2861185))

(declare-fun m!2861199 () Bool)

(assert (=> d!714978 m!2861199))

(assert (=> b!2496897 d!714978))

(declare-fun c!397147 () Bool)

(declare-fun call!153948 () Bool)

(declare-fun bm!153941 () Bool)

(declare-fun c!397146 () Bool)

(assert (=> bm!153941 (= call!153948 (validRegex!3010 (ite c!397147 (reg!7713 (reg!7713 r!27340)) (ite c!397146 (regTwo!15281 (reg!7713 r!27340)) (regOne!15280 (reg!7713 r!27340))))))))

(declare-fun b!2497105 () Bool)

(declare-fun e!1584355 () Bool)

(assert (=> b!2497105 (= e!1584355 call!153948)))

(declare-fun d!714982 () Bool)

(declare-fun res!1056121 () Bool)

(declare-fun e!1584354 () Bool)

(assert (=> d!714982 (=> res!1056121 e!1584354)))

(assert (=> d!714982 (= res!1056121 (is-ElementMatch!7384 (reg!7713 r!27340)))))

(assert (=> d!714982 (= (validRegex!3010 (reg!7713 r!27340)) e!1584354)))

(declare-fun bm!153942 () Bool)

(declare-fun call!153947 () Bool)

(assert (=> bm!153942 (= call!153947 (validRegex!3010 (ite c!397146 (regOne!15281 (reg!7713 r!27340)) (regTwo!15280 (reg!7713 r!27340)))))))

(declare-fun b!2497106 () Bool)

(declare-fun e!1584351 () Bool)

(declare-fun e!1584357 () Bool)

(assert (=> b!2497106 (= e!1584351 e!1584357)))

(declare-fun res!1056120 () Bool)

(assert (=> b!2497106 (=> (not res!1056120) (not e!1584357))))

(declare-fun call!153946 () Bool)

(assert (=> b!2497106 (= res!1056120 call!153946)))

(declare-fun b!2497107 () Bool)

(declare-fun res!1056119 () Bool)

(assert (=> b!2497107 (=> res!1056119 e!1584351)))

(assert (=> b!2497107 (= res!1056119 (not (is-Concat!12080 (reg!7713 r!27340))))))

(declare-fun e!1584352 () Bool)

(assert (=> b!2497107 (= e!1584352 e!1584351)))

(declare-fun b!2497108 () Bool)

(declare-fun e!1584353 () Bool)

(assert (=> b!2497108 (= e!1584353 call!153946)))

(declare-fun b!2497109 () Bool)

(assert (=> b!2497109 (= e!1584357 call!153947)))

(declare-fun b!2497110 () Bool)

(declare-fun e!1584356 () Bool)

(assert (=> b!2497110 (= e!1584356 e!1584352)))

(assert (=> b!2497110 (= c!397146 (is-Union!7384 (reg!7713 r!27340)))))

(declare-fun b!2497111 () Bool)

(declare-fun res!1056117 () Bool)

(assert (=> b!2497111 (=> (not res!1056117) (not e!1584353))))

(assert (=> b!2497111 (= res!1056117 call!153947)))

(assert (=> b!2497111 (= e!1584352 e!1584353)))

(declare-fun b!2497112 () Bool)

(assert (=> b!2497112 (= e!1584356 e!1584355)))

(declare-fun res!1056118 () Bool)

(assert (=> b!2497112 (= res!1056118 (not (nullable!2301 (reg!7713 (reg!7713 r!27340)))))))

(assert (=> b!2497112 (=> (not res!1056118) (not e!1584355))))

(declare-fun b!2497113 () Bool)

(assert (=> b!2497113 (= e!1584354 e!1584356)))

(assert (=> b!2497113 (= c!397147 (is-Star!7384 (reg!7713 r!27340)))))

(declare-fun bm!153943 () Bool)

(assert (=> bm!153943 (= call!153946 call!153948)))

(assert (= (and d!714982 (not res!1056121)) b!2497113))

(assert (= (and b!2497113 c!397147) b!2497112))

(assert (= (and b!2497113 (not c!397147)) b!2497110))

(assert (= (and b!2497112 res!1056118) b!2497105))

(assert (= (and b!2497110 c!397146) b!2497111))

(assert (= (and b!2497110 (not c!397146)) b!2497107))

(assert (= (and b!2497111 res!1056117) b!2497108))

(assert (= (and b!2497107 (not res!1056119)) b!2497106))

(assert (= (and b!2497106 res!1056120) b!2497109))

(assert (= (or b!2497111 b!2497109) bm!153942))

(assert (= (or b!2497108 b!2497106) bm!153943))

(assert (= (or b!2497105 bm!153943) bm!153941))

(declare-fun m!2861201 () Bool)

(assert (=> bm!153941 m!2861201))

(declare-fun m!2861203 () Bool)

(assert (=> bm!153942 m!2861203))

(declare-fun m!2861205 () Bool)

(assert (=> b!2497112 m!2861205))

(assert (=> b!2496903 d!714982))

(declare-fun d!714984 () Bool)

(declare-fun e!1584363 () Bool)

(assert (=> d!714984 e!1584363))

(declare-fun res!1056127 () Bool)

(assert (=> d!714984 (=> (not res!1056127) (not e!1584363))))

(declare-fun lt!894985 () List!29449)

(declare-fun content!3997 (List!29449) (Set C!14926))

(assert (=> d!714984 (= res!1056127 (= (content!3997 lt!894985) (set.union (content!3997 (_1!17235 lt!894940)) (content!3997 (_2!17235 lt!894940)))))))

(declare-fun e!1584362 () List!29449)

(assert (=> d!714984 (= lt!894985 e!1584362)))

(declare-fun c!397150 () Bool)

(assert (=> d!714984 (= c!397150 (is-Nil!29349 (_1!17235 lt!894940)))))

(assert (=> d!714984 (= (++!7166 (_1!17235 lt!894940) (_2!17235 lt!894940)) lt!894985)))

(declare-fun b!2497124 () Bool)

(declare-fun res!1056126 () Bool)

(assert (=> b!2497124 (=> (not res!1056126) (not e!1584363))))

(declare-fun size!22881 (List!29449) Int)

(assert (=> b!2497124 (= res!1056126 (= (size!22881 lt!894985) (+ (size!22881 (_1!17235 lt!894940)) (size!22881 (_2!17235 lt!894940)))))))

(declare-fun b!2497123 () Bool)

(assert (=> b!2497123 (= e!1584362 (Cons!29349 (h!34769 (_1!17235 lt!894940)) (++!7166 (t!211148 (_1!17235 lt!894940)) (_2!17235 lt!894940))))))

(declare-fun b!2497125 () Bool)

(assert (=> b!2497125 (= e!1584363 (or (not (= (_2!17235 lt!894940) Nil!29349)) (= lt!894985 (_1!17235 lt!894940))))))

(declare-fun b!2497122 () Bool)

(assert (=> b!2497122 (= e!1584362 (_2!17235 lt!894940))))

(assert (= (and d!714984 c!397150) b!2497122))

(assert (= (and d!714984 (not c!397150)) b!2497123))

(assert (= (and d!714984 res!1056127) b!2497124))

(assert (= (and b!2497124 res!1056126) b!2497125))

(declare-fun m!2861207 () Bool)

(assert (=> d!714984 m!2861207))

(declare-fun m!2861209 () Bool)

(assert (=> d!714984 m!2861209))

(declare-fun m!2861211 () Bool)

(assert (=> d!714984 m!2861211))

(declare-fun m!2861213 () Bool)

(assert (=> b!2497124 m!2861213))

(declare-fun m!2861215 () Bool)

(assert (=> b!2497124 m!2861215))

(declare-fun m!2861217 () Bool)

(assert (=> b!2497124 m!2861217))

(declare-fun m!2861219 () Bool)

(assert (=> b!2497123 m!2861219))

(assert (=> b!2496901 d!714984))

(declare-fun d!714986 () Bool)

(assert (=> d!714986 (isDefined!4635 (findConcatSeparation!835 lt!894936 lt!894933 Nil!29349 tl!4068 tl!4068))))

(declare-fun lt!894988 () Unit!43037)

(declare-fun choose!14748 (Regex!7384 Regex!7384 List!29449) Unit!43037)

(assert (=> d!714986 (= lt!894988 (choose!14748 lt!894936 lt!894933 tl!4068))))

(assert (=> d!714986 (validRegex!3010 lt!894936)))

(assert (=> d!714986 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!117 lt!894936 lt!894933 tl!4068) lt!894988)))

(declare-fun bs!468489 () Bool)

(assert (= bs!468489 d!714986))

(assert (=> bs!468489 m!2861097))

(assert (=> bs!468489 m!2861097))

(declare-fun m!2861221 () Bool)

(assert (=> bs!468489 m!2861221))

(declare-fun m!2861223 () Bool)

(assert (=> bs!468489 m!2861223))

(declare-fun m!2861225 () Bool)

(assert (=> bs!468489 m!2861225))

(assert (=> b!2496901 d!714986))

(declare-fun d!714988 () Bool)

(assert (=> d!714988 (= (get!9088 lt!894935) (v!31743 lt!894935))))

(assert (=> b!2496901 d!714988))

(declare-fun b!2497163 () Bool)

(declare-fun e!1584385 () Bool)

(declare-fun lt!895000 () Option!5813)

(assert (=> b!2497163 (= e!1584385 (= (++!7166 (_1!17235 (get!9088 lt!895000)) (_2!17235 (get!9088 lt!895000))) tl!4068))))

(declare-fun b!2497164 () Bool)

(declare-fun lt!894999 () Unit!43037)

(declare-fun lt!894998 () Unit!43037)

(assert (=> b!2497164 (= lt!894999 lt!894998)))

(assert (=> b!2497164 (= (++!7166 (++!7166 Nil!29349 (Cons!29349 (h!34769 tl!4068) Nil!29349)) (t!211148 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!720 (List!29449 C!14926 List!29449 List!29449) Unit!43037)

(assert (=> b!2497164 (= lt!894998 (lemmaMoveElementToOtherListKeepsConcatEq!720 Nil!29349 (h!34769 tl!4068) (t!211148 tl!4068) tl!4068))))

(declare-fun e!1584386 () Option!5813)

(assert (=> b!2497164 (= e!1584386 (findConcatSeparation!835 lt!894936 lt!894933 (++!7166 Nil!29349 (Cons!29349 (h!34769 tl!4068) Nil!29349)) (t!211148 tl!4068) tl!4068))))

(declare-fun b!2497165 () Bool)

(declare-fun e!1584387 () Option!5813)

(assert (=> b!2497165 (= e!1584387 e!1584386)))

(declare-fun c!397163 () Bool)

(assert (=> b!2497165 (= c!397163 (is-Nil!29349 tl!4068))))

(declare-fun b!2497166 () Bool)

(declare-fun res!1056146 () Bool)

(assert (=> b!2497166 (=> (not res!1056146) (not e!1584385))))

(assert (=> b!2497166 (= res!1056146 (matchR!3393 lt!894936 (_1!17235 (get!9088 lt!895000))))))

(declare-fun b!2497167 () Bool)

(assert (=> b!2497167 (= e!1584387 (Some!5812 (tuple2!29387 Nil!29349 tl!4068)))))

(declare-fun b!2497168 () Bool)

(declare-fun e!1584384 () Bool)

(assert (=> b!2497168 (= e!1584384 (matchR!3393 lt!894933 tl!4068))))

(declare-fun b!2497162 () Bool)

(declare-fun res!1056145 () Bool)

(assert (=> b!2497162 (=> (not res!1056145) (not e!1584385))))

(assert (=> b!2497162 (= res!1056145 (matchR!3393 lt!894933 (_2!17235 (get!9088 lt!895000))))))

(declare-fun d!714990 () Bool)

(declare-fun e!1584383 () Bool)

(assert (=> d!714990 e!1584383))

(declare-fun res!1056143 () Bool)

(assert (=> d!714990 (=> res!1056143 e!1584383)))

(assert (=> d!714990 (= res!1056143 e!1584385)))

(declare-fun res!1056144 () Bool)

(assert (=> d!714990 (=> (not res!1056144) (not e!1584385))))

(assert (=> d!714990 (= res!1056144 (isDefined!4635 lt!895000))))

(assert (=> d!714990 (= lt!895000 e!1584387)))

(declare-fun c!397162 () Bool)

(assert (=> d!714990 (= c!397162 e!1584384)))

(declare-fun res!1056142 () Bool)

(assert (=> d!714990 (=> (not res!1056142) (not e!1584384))))

(assert (=> d!714990 (= res!1056142 (matchR!3393 lt!894936 Nil!29349))))

(assert (=> d!714990 (validRegex!3010 lt!894936)))

(assert (=> d!714990 (= (findConcatSeparation!835 lt!894936 lt!894933 Nil!29349 tl!4068 tl!4068) lt!895000)))

(declare-fun b!2497169 () Bool)

(assert (=> b!2497169 (= e!1584383 (not (isDefined!4635 lt!895000)))))

(declare-fun b!2497170 () Bool)

(assert (=> b!2497170 (= e!1584386 None!5812)))

(assert (= (and d!714990 res!1056142) b!2497168))

(assert (= (and d!714990 c!397162) b!2497167))

(assert (= (and d!714990 (not c!397162)) b!2497165))

(assert (= (and b!2497165 c!397163) b!2497170))

(assert (= (and b!2497165 (not c!397163)) b!2497164))

(assert (= (and d!714990 res!1056144) b!2497166))

(assert (= (and b!2497166 res!1056146) b!2497162))

(assert (= (and b!2497162 res!1056145) b!2497163))

(assert (= (and d!714990 (not res!1056143)) b!2497169))

(declare-fun m!2861237 () Bool)

(assert (=> b!2497162 m!2861237))

(declare-fun m!2861239 () Bool)

(assert (=> b!2497162 m!2861239))

(declare-fun m!2861241 () Bool)

(assert (=> b!2497168 m!2861241))

(declare-fun m!2861243 () Bool)

(assert (=> b!2497169 m!2861243))

(declare-fun m!2861245 () Bool)

(assert (=> b!2497164 m!2861245))

(assert (=> b!2497164 m!2861245))

(declare-fun m!2861247 () Bool)

(assert (=> b!2497164 m!2861247))

(declare-fun m!2861249 () Bool)

(assert (=> b!2497164 m!2861249))

(assert (=> b!2497164 m!2861245))

(declare-fun m!2861251 () Bool)

(assert (=> b!2497164 m!2861251))

(assert (=> b!2497166 m!2861237))

(declare-fun m!2861253 () Bool)

(assert (=> b!2497166 m!2861253))

(assert (=> b!2497163 m!2861237))

(declare-fun m!2861255 () Bool)

(assert (=> b!2497163 m!2861255))

(assert (=> d!714990 m!2861243))

(declare-fun m!2861257 () Bool)

(assert (=> d!714990 m!2861257))

(assert (=> d!714990 m!2861225))

(assert (=> b!2496901 d!714990))

(declare-fun d!714996 () Bool)

(declare-fun isEmpty!16816 (Option!5813) Bool)

(assert (=> d!714996 (= (isDefined!4635 lt!894935) (not (isEmpty!16816 lt!894935)))))

(declare-fun bs!468491 () Bool)

(assert (= bs!468491 d!714996))

(declare-fun m!2861259 () Bool)

(assert (=> bs!468491 m!2861259))

(assert (=> b!2496901 d!714996))

(declare-fun b!2497175 () Bool)

(declare-fun e!1584390 () Bool)

(declare-fun e!1584392 () Bool)

(assert (=> b!2497175 (= e!1584390 e!1584392)))

(declare-fun res!1056152 () Bool)

(assert (=> b!2497175 (=> res!1056152 e!1584392)))

(declare-fun call!153961 () Bool)

(assert (=> b!2497175 (= res!1056152 call!153961)))

(declare-fun b!2497176 () Bool)

(declare-fun e!1584395 () Bool)

(assert (=> b!2497176 (= e!1584395 (nullable!2301 lt!894934))))

(declare-fun b!2497177 () Bool)

(declare-fun e!1584391 () Bool)

(assert (=> b!2497177 (= e!1584391 e!1584390)))

(declare-fun res!1056156 () Bool)

(assert (=> b!2497177 (=> (not res!1056156) (not e!1584390))))

(declare-fun lt!895002 () Bool)

(assert (=> b!2497177 (= res!1056156 (not lt!895002))))

(declare-fun b!2497178 () Bool)

(declare-fun e!1584394 () Bool)

(assert (=> b!2497178 (= e!1584394 (not lt!895002))))

(declare-fun b!2497179 () Bool)

(declare-fun res!1056154 () Bool)

(assert (=> b!2497179 (=> res!1056154 e!1584391)))

(assert (=> b!2497179 (= res!1056154 (not (is-ElementMatch!7384 lt!894934)))))

(assert (=> b!2497179 (= e!1584394 e!1584391)))

(declare-fun b!2497180 () Bool)

(assert (=> b!2497180 (= e!1584392 (not (= (head!5685 Nil!29349) (c!397094 lt!894934))))))

(declare-fun b!2497181 () Bool)

(declare-fun e!1584396 () Bool)

(assert (=> b!2497181 (= e!1584396 (= lt!895002 call!153961))))

(declare-fun b!2497182 () Bool)

(declare-fun e!1584393 () Bool)

(assert (=> b!2497182 (= e!1584393 (= (head!5685 Nil!29349) (c!397094 lt!894934)))))

(declare-fun b!2497184 () Bool)

(assert (=> b!2497184 (= e!1584395 (matchR!3393 (derivativeStep!1953 lt!894934 (head!5685 Nil!29349)) (tail!3962 Nil!29349)))))

(declare-fun b!2497185 () Bool)

(declare-fun res!1056155 () Bool)

(assert (=> b!2497185 (=> (not res!1056155) (not e!1584393))))

(assert (=> b!2497185 (= res!1056155 (not call!153961))))

(declare-fun b!2497186 () Bool)

(declare-fun res!1056149 () Bool)

(assert (=> b!2497186 (=> res!1056149 e!1584391)))

(assert (=> b!2497186 (= res!1056149 e!1584393)))

(declare-fun res!1056151 () Bool)

(assert (=> b!2497186 (=> (not res!1056151) (not e!1584393))))

(assert (=> b!2497186 (= res!1056151 lt!895002)))

(declare-fun b!2497187 () Bool)

(declare-fun res!1056153 () Bool)

(assert (=> b!2497187 (=> res!1056153 e!1584392)))

(assert (=> b!2497187 (= res!1056153 (not (isEmpty!16815 (tail!3962 Nil!29349))))))

(declare-fun bm!153956 () Bool)

(assert (=> bm!153956 (= call!153961 (isEmpty!16815 Nil!29349))))

(declare-fun b!2497188 () Bool)

(declare-fun res!1056150 () Bool)

(assert (=> b!2497188 (=> (not res!1056150) (not e!1584393))))

(assert (=> b!2497188 (= res!1056150 (isEmpty!16815 (tail!3962 Nil!29349)))))

(declare-fun d!714998 () Bool)

(assert (=> d!714998 e!1584396))

(declare-fun c!397165 () Bool)

(assert (=> d!714998 (= c!397165 (is-EmptyExpr!7384 lt!894934))))

(assert (=> d!714998 (= lt!895002 e!1584395)))

(declare-fun c!397166 () Bool)

(assert (=> d!714998 (= c!397166 (isEmpty!16815 Nil!29349))))

(assert (=> d!714998 (validRegex!3010 lt!894934)))

(assert (=> d!714998 (= (matchR!3393 lt!894934 Nil!29349) lt!895002)))

(declare-fun b!2497183 () Bool)

(assert (=> b!2497183 (= e!1584396 e!1584394)))

(declare-fun c!397167 () Bool)

(assert (=> b!2497183 (= c!397167 (is-EmptyLang!7384 lt!894934))))

(assert (= (and d!714998 c!397166) b!2497176))

(assert (= (and d!714998 (not c!397166)) b!2497184))

(assert (= (and d!714998 c!397165) b!2497181))

(assert (= (and d!714998 (not c!397165)) b!2497183))

(assert (= (and b!2497183 c!397167) b!2497178))

(assert (= (and b!2497183 (not c!397167)) b!2497179))

(assert (= (and b!2497179 (not res!1056154)) b!2497186))

(assert (= (and b!2497186 res!1056151) b!2497185))

(assert (= (and b!2497185 res!1056155) b!2497188))

(assert (= (and b!2497188 res!1056150) b!2497182))

(assert (= (and b!2497186 (not res!1056149)) b!2497177))

(assert (= (and b!2497177 res!1056156) b!2497175))

(assert (= (and b!2497175 (not res!1056152)) b!2497187))

(assert (= (and b!2497187 (not res!1056153)) b!2497180))

(assert (= (or b!2497181 b!2497175 b!2497185) bm!153956))

(declare-fun m!2861275 () Bool)

(assert (=> bm!153956 m!2861275))

(declare-fun m!2861277 () Bool)

(assert (=> b!2497182 m!2861277))

(assert (=> b!2497176 m!2861089))

(declare-fun m!2861279 () Bool)

(assert (=> b!2497187 m!2861279))

(assert (=> b!2497187 m!2861279))

(declare-fun m!2861281 () Bool)

(assert (=> b!2497187 m!2861281))

(assert (=> b!2497184 m!2861277))

(assert (=> b!2497184 m!2861277))

(declare-fun m!2861283 () Bool)

(assert (=> b!2497184 m!2861283))

(assert (=> b!2497184 m!2861279))

(assert (=> b!2497184 m!2861283))

(assert (=> b!2497184 m!2861279))

(declare-fun m!2861285 () Bool)

(assert (=> b!2497184 m!2861285))

(assert (=> b!2497188 m!2861279))

(assert (=> b!2497188 m!2861279))

(assert (=> b!2497188 m!2861281))

(assert (=> b!2497180 m!2861277))

(assert (=> d!714998 m!2861275))

(declare-fun m!2861287 () Bool)

(assert (=> d!714998 m!2861287))

(assert (=> b!2496896 d!714998))

(declare-fun b!2497189 () Bool)

(declare-fun e!1584397 () Bool)

(declare-fun e!1584399 () Bool)

(assert (=> b!2497189 (= e!1584397 e!1584399)))

(declare-fun res!1056160 () Bool)

(assert (=> b!2497189 (=> res!1056160 e!1584399)))

(declare-fun call!153962 () Bool)

(assert (=> b!2497189 (= res!1056160 call!153962)))

(declare-fun b!2497190 () Bool)

(declare-fun e!1584402 () Bool)

(assert (=> b!2497190 (= e!1584402 (nullable!2301 lt!894938))))

(declare-fun b!2497191 () Bool)

(declare-fun e!1584398 () Bool)

(assert (=> b!2497191 (= e!1584398 e!1584397)))

(declare-fun res!1056164 () Bool)

(assert (=> b!2497191 (=> (not res!1056164) (not e!1584397))))

(declare-fun lt!895003 () Bool)

(assert (=> b!2497191 (= res!1056164 (not lt!895003))))

(declare-fun b!2497192 () Bool)

(declare-fun e!1584401 () Bool)

(assert (=> b!2497192 (= e!1584401 (not lt!895003))))

(declare-fun b!2497193 () Bool)

(declare-fun res!1056162 () Bool)

(assert (=> b!2497193 (=> res!1056162 e!1584398)))

(assert (=> b!2497193 (= res!1056162 (not (is-ElementMatch!7384 lt!894938)))))

(assert (=> b!2497193 (= e!1584401 e!1584398)))

(declare-fun b!2497194 () Bool)

(assert (=> b!2497194 (= e!1584399 (not (= (head!5685 tl!4068) (c!397094 lt!894938))))))

(declare-fun b!2497195 () Bool)

(declare-fun e!1584403 () Bool)

(assert (=> b!2497195 (= e!1584403 (= lt!895003 call!153962))))

(declare-fun b!2497196 () Bool)

(declare-fun e!1584400 () Bool)

(assert (=> b!2497196 (= e!1584400 (= (head!5685 tl!4068) (c!397094 lt!894938)))))

(declare-fun b!2497198 () Bool)

(assert (=> b!2497198 (= e!1584402 (matchR!3393 (derivativeStep!1953 lt!894938 (head!5685 tl!4068)) (tail!3962 tl!4068)))))

(declare-fun b!2497199 () Bool)

(declare-fun res!1056163 () Bool)

(assert (=> b!2497199 (=> (not res!1056163) (not e!1584400))))

(assert (=> b!2497199 (= res!1056163 (not call!153962))))

(declare-fun b!2497200 () Bool)

(declare-fun res!1056157 () Bool)

(assert (=> b!2497200 (=> res!1056157 e!1584398)))

(assert (=> b!2497200 (= res!1056157 e!1584400)))

(declare-fun res!1056159 () Bool)

(assert (=> b!2497200 (=> (not res!1056159) (not e!1584400))))

(assert (=> b!2497200 (= res!1056159 lt!895003)))

(declare-fun b!2497201 () Bool)

(declare-fun res!1056161 () Bool)

(assert (=> b!2497201 (=> res!1056161 e!1584399)))

(assert (=> b!2497201 (= res!1056161 (not (isEmpty!16815 (tail!3962 tl!4068))))))

(declare-fun bm!153957 () Bool)

(assert (=> bm!153957 (= call!153962 (isEmpty!16815 tl!4068))))

(declare-fun b!2497202 () Bool)

(declare-fun res!1056158 () Bool)

(assert (=> b!2497202 (=> (not res!1056158) (not e!1584400))))

(assert (=> b!2497202 (= res!1056158 (isEmpty!16815 (tail!3962 tl!4068)))))

(declare-fun d!715002 () Bool)

(assert (=> d!715002 e!1584403))

(declare-fun c!397168 () Bool)

(assert (=> d!715002 (= c!397168 (is-EmptyExpr!7384 lt!894938))))

(assert (=> d!715002 (= lt!895003 e!1584402)))

(declare-fun c!397169 () Bool)

(assert (=> d!715002 (= c!397169 (isEmpty!16815 tl!4068))))

(assert (=> d!715002 (validRegex!3010 lt!894938)))

(assert (=> d!715002 (= (matchR!3393 lt!894938 tl!4068) lt!895003)))

(declare-fun b!2497197 () Bool)

(assert (=> b!2497197 (= e!1584403 e!1584401)))

(declare-fun c!397170 () Bool)

(assert (=> b!2497197 (= c!397170 (is-EmptyLang!7384 lt!894938))))

(assert (= (and d!715002 c!397169) b!2497190))

(assert (= (and d!715002 (not c!397169)) b!2497198))

(assert (= (and d!715002 c!397168) b!2497195))

(assert (= (and d!715002 (not c!397168)) b!2497197))

(assert (= (and b!2497197 c!397170) b!2497192))

(assert (= (and b!2497197 (not c!397170)) b!2497193))

(assert (= (and b!2497193 (not res!1056162)) b!2497200))

(assert (= (and b!2497200 res!1056159) b!2497199))

(assert (= (and b!2497199 res!1056163) b!2497202))

(assert (= (and b!2497202 res!1056158) b!2497196))

(assert (= (and b!2497200 (not res!1056157)) b!2497191))

(assert (= (and b!2497191 res!1056164) b!2497189))

(assert (= (and b!2497189 (not res!1056160)) b!2497201))

(assert (= (and b!2497201 (not res!1056161)) b!2497194))

(assert (= (or b!2497195 b!2497189 b!2497199) bm!153957))

(declare-fun m!2861289 () Bool)

(assert (=> bm!153957 m!2861289))

(declare-fun m!2861291 () Bool)

(assert (=> b!2497196 m!2861291))

(declare-fun m!2861293 () Bool)

(assert (=> b!2497190 m!2861293))

(declare-fun m!2861295 () Bool)

(assert (=> b!2497201 m!2861295))

(assert (=> b!2497201 m!2861295))

(declare-fun m!2861297 () Bool)

(assert (=> b!2497201 m!2861297))

(assert (=> b!2497198 m!2861291))

(assert (=> b!2497198 m!2861291))

(declare-fun m!2861299 () Bool)

(assert (=> b!2497198 m!2861299))

(assert (=> b!2497198 m!2861295))

(assert (=> b!2497198 m!2861299))

(assert (=> b!2497198 m!2861295))

(declare-fun m!2861301 () Bool)

(assert (=> b!2497198 m!2861301))

(assert (=> b!2497202 m!2861295))

(assert (=> b!2497202 m!2861295))

(assert (=> b!2497202 m!2861297))

(assert (=> b!2497194 m!2861291))

(assert (=> d!715002 m!2861289))

(assert (=> d!715002 m!2861157))

(assert (=> b!2496896 d!715002))

(declare-fun d!715004 () Bool)

(assert (=> d!715004 (= (matchR!3393 lt!894938 tl!4068) (matchR!3393 (derivative!79 lt!894938 tl!4068) Nil!29349))))

(declare-fun lt!895006 () Unit!43037)

(declare-fun choose!14749 (Regex!7384 List!29449) Unit!43037)

(assert (=> d!715004 (= lt!895006 (choose!14749 lt!894938 tl!4068))))

(assert (=> d!715004 (validRegex!3010 lt!894938)))

(assert (=> d!715004 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!39 lt!894938 tl!4068) lt!895006)))

(declare-fun bs!468492 () Bool)

(assert (= bs!468492 d!715004))

(assert (=> bs!468492 m!2861091))

(declare-fun m!2861303 () Bool)

(assert (=> bs!468492 m!2861303))

(assert (=> bs!468492 m!2861109))

(declare-fun m!2861305 () Bool)

(assert (=> bs!468492 m!2861305))

(assert (=> bs!468492 m!2861091))

(assert (=> bs!468492 m!2861157))

(assert (=> b!2496896 d!715004))

(declare-fun bm!153958 () Bool)

(declare-fun call!153965 () Bool)

(declare-fun c!397172 () Bool)

(declare-fun c!397171 () Bool)

(assert (=> bm!153958 (= call!153965 (validRegex!3010 (ite c!397172 (reg!7713 r!27340) (ite c!397171 (regTwo!15281 r!27340) (regOne!15280 r!27340)))))))

(declare-fun b!2497203 () Bool)

(declare-fun e!1584408 () Bool)

(assert (=> b!2497203 (= e!1584408 call!153965)))

(declare-fun d!715006 () Bool)

(declare-fun res!1056169 () Bool)

(declare-fun e!1584407 () Bool)

(assert (=> d!715006 (=> res!1056169 e!1584407)))

(assert (=> d!715006 (= res!1056169 (is-ElementMatch!7384 r!27340))))

(assert (=> d!715006 (= (validRegex!3010 r!27340) e!1584407)))

(declare-fun bm!153959 () Bool)

(declare-fun call!153964 () Bool)

(assert (=> bm!153959 (= call!153964 (validRegex!3010 (ite c!397171 (regOne!15281 r!27340) (regTwo!15280 r!27340))))))

(declare-fun b!2497204 () Bool)

(declare-fun e!1584404 () Bool)

(declare-fun e!1584410 () Bool)

(assert (=> b!2497204 (= e!1584404 e!1584410)))

(declare-fun res!1056168 () Bool)

(assert (=> b!2497204 (=> (not res!1056168) (not e!1584410))))

(declare-fun call!153963 () Bool)

(assert (=> b!2497204 (= res!1056168 call!153963)))

(declare-fun b!2497205 () Bool)

(declare-fun res!1056167 () Bool)

(assert (=> b!2497205 (=> res!1056167 e!1584404)))

(assert (=> b!2497205 (= res!1056167 (not (is-Concat!12080 r!27340)))))

(declare-fun e!1584405 () Bool)

(assert (=> b!2497205 (= e!1584405 e!1584404)))

(declare-fun b!2497206 () Bool)

(declare-fun e!1584406 () Bool)

(assert (=> b!2497206 (= e!1584406 call!153963)))

(declare-fun b!2497207 () Bool)

(assert (=> b!2497207 (= e!1584410 call!153964)))

(declare-fun b!2497208 () Bool)

(declare-fun e!1584409 () Bool)

(assert (=> b!2497208 (= e!1584409 e!1584405)))

(assert (=> b!2497208 (= c!397171 (is-Union!7384 r!27340))))

(declare-fun b!2497209 () Bool)

(declare-fun res!1056165 () Bool)

(assert (=> b!2497209 (=> (not res!1056165) (not e!1584406))))

(assert (=> b!2497209 (= res!1056165 call!153964)))

(assert (=> b!2497209 (= e!1584405 e!1584406)))

(declare-fun b!2497210 () Bool)

(assert (=> b!2497210 (= e!1584409 e!1584408)))

(declare-fun res!1056166 () Bool)

(assert (=> b!2497210 (= res!1056166 (not (nullable!2301 (reg!7713 r!27340))))))

(assert (=> b!2497210 (=> (not res!1056166) (not e!1584408))))

(declare-fun b!2497211 () Bool)

(assert (=> b!2497211 (= e!1584407 e!1584409)))

(assert (=> b!2497211 (= c!397172 (is-Star!7384 r!27340))))

(declare-fun bm!153960 () Bool)

(assert (=> bm!153960 (= call!153963 call!153965)))

(assert (= (and d!715006 (not res!1056169)) b!2497211))

(assert (= (and b!2497211 c!397172) b!2497210))

(assert (= (and b!2497211 (not c!397172)) b!2497208))

(assert (= (and b!2497210 res!1056166) b!2497203))

(assert (= (and b!2497208 c!397171) b!2497209))

(assert (= (and b!2497208 (not c!397171)) b!2497205))

(assert (= (and b!2497209 res!1056165) b!2497206))

(assert (= (and b!2497205 (not res!1056167)) b!2497204))

(assert (= (and b!2497204 res!1056168) b!2497207))

(assert (= (or b!2497209 b!2497207) bm!153959))

(assert (= (or b!2497206 b!2497204) bm!153960))

(assert (= (or b!2497203 bm!153960) bm!153958))

(declare-fun m!2861307 () Bool)

(assert (=> bm!153958 m!2861307))

(declare-fun m!2861309 () Bool)

(assert (=> bm!153959 m!2861309))

(declare-fun m!2861311 () Bool)

(assert (=> b!2497210 m!2861311))

(assert (=> start!243834 d!715006))

(declare-fun d!715008 () Bool)

(assert (=> d!715008 (= (nullable!2301 (derivative!79 lt!894936 tl!4068)) (nullableFct!578 (derivative!79 lt!894936 tl!4068)))))

(declare-fun bs!468493 () Bool)

(assert (= bs!468493 d!715008))

(assert (=> bs!468493 m!2861113))

(declare-fun m!2861313 () Bool)

(assert (=> bs!468493 m!2861313))

(assert (=> b!2496895 d!715008))

(declare-fun d!715010 () Bool)

(declare-fun lt!895007 () Regex!7384)

(assert (=> d!715010 (validRegex!3010 lt!895007)))

(declare-fun e!1584411 () Regex!7384)

(assert (=> d!715010 (= lt!895007 e!1584411)))

(declare-fun c!397173 () Bool)

(assert (=> d!715010 (= c!397173 (is-Cons!29349 tl!4068))))

(assert (=> d!715010 (validRegex!3010 lt!894936)))

(assert (=> d!715010 (= (derivative!79 lt!894936 tl!4068) lt!895007)))

(declare-fun b!2497212 () Bool)

(assert (=> b!2497212 (= e!1584411 (derivative!79 (derivativeStep!1953 lt!894936 (h!34769 tl!4068)) (t!211148 tl!4068)))))

(declare-fun b!2497213 () Bool)

(assert (=> b!2497213 (= e!1584411 lt!894936)))

(assert (= (and d!715010 c!397173) b!2497212))

(assert (= (and d!715010 (not c!397173)) b!2497213))

(declare-fun m!2861315 () Bool)

(assert (=> d!715010 m!2861315))

(assert (=> d!715010 m!2861225))

(declare-fun m!2861317 () Bool)

(assert (=> b!2497212 m!2861317))

(assert (=> b!2497212 m!2861317))

(declare-fun m!2861319 () Bool)

(assert (=> b!2497212 m!2861319))

(assert (=> b!2496895 d!715010))

(declare-fun b!2497214 () Bool)

(declare-fun e!1584412 () Bool)

(declare-fun e!1584414 () Bool)

(assert (=> b!2497214 (= e!1584412 e!1584414)))

(declare-fun res!1056173 () Bool)

(assert (=> b!2497214 (=> res!1056173 e!1584414)))

(declare-fun call!153966 () Bool)

(assert (=> b!2497214 (= res!1056173 call!153966)))

(declare-fun b!2497215 () Bool)

(declare-fun e!1584417 () Bool)

(assert (=> b!2497215 (= e!1584417 (nullable!2301 (reg!7713 r!27340)))))

(declare-fun b!2497216 () Bool)

(declare-fun e!1584413 () Bool)

(assert (=> b!2497216 (= e!1584413 e!1584412)))

(declare-fun res!1056177 () Bool)

(assert (=> b!2497216 (=> (not res!1056177) (not e!1584412))))

(declare-fun lt!895008 () Bool)

(assert (=> b!2497216 (= res!1056177 (not lt!895008))))

(declare-fun b!2497217 () Bool)

(declare-fun e!1584416 () Bool)

(assert (=> b!2497217 (= e!1584416 (not lt!895008))))

(declare-fun b!2497218 () Bool)

(declare-fun res!1056175 () Bool)

(assert (=> b!2497218 (=> res!1056175 e!1584413)))

(assert (=> b!2497218 (= res!1056175 (not (is-ElementMatch!7384 (reg!7713 r!27340))))))

(assert (=> b!2497218 (= e!1584416 e!1584413)))

(declare-fun b!2497219 () Bool)

(assert (=> b!2497219 (= e!1584414 (not (= (head!5685 (Cons!29349 c!14016 (_1!17235 lt!894940))) (c!397094 (reg!7713 r!27340)))))))

(declare-fun b!2497220 () Bool)

(declare-fun e!1584418 () Bool)

(assert (=> b!2497220 (= e!1584418 (= lt!895008 call!153966))))

(declare-fun b!2497221 () Bool)

(declare-fun e!1584415 () Bool)

(assert (=> b!2497221 (= e!1584415 (= (head!5685 (Cons!29349 c!14016 (_1!17235 lt!894940))) (c!397094 (reg!7713 r!27340))))))

(declare-fun b!2497223 () Bool)

(assert (=> b!2497223 (= e!1584417 (matchR!3393 (derivativeStep!1953 (reg!7713 r!27340) (head!5685 (Cons!29349 c!14016 (_1!17235 lt!894940)))) (tail!3962 (Cons!29349 c!14016 (_1!17235 lt!894940)))))))

(declare-fun b!2497224 () Bool)

(declare-fun res!1056176 () Bool)

(assert (=> b!2497224 (=> (not res!1056176) (not e!1584415))))

(assert (=> b!2497224 (= res!1056176 (not call!153966))))

(declare-fun b!2497225 () Bool)

(declare-fun res!1056170 () Bool)

(assert (=> b!2497225 (=> res!1056170 e!1584413)))

(assert (=> b!2497225 (= res!1056170 e!1584415)))

(declare-fun res!1056172 () Bool)

(assert (=> b!2497225 (=> (not res!1056172) (not e!1584415))))

(assert (=> b!2497225 (= res!1056172 lt!895008)))

(declare-fun b!2497226 () Bool)

(declare-fun res!1056174 () Bool)

(assert (=> b!2497226 (=> res!1056174 e!1584414)))

(assert (=> b!2497226 (= res!1056174 (not (isEmpty!16815 (tail!3962 (Cons!29349 c!14016 (_1!17235 lt!894940))))))))

(declare-fun bm!153961 () Bool)

(assert (=> bm!153961 (= call!153966 (isEmpty!16815 (Cons!29349 c!14016 (_1!17235 lt!894940))))))

(declare-fun b!2497227 () Bool)

(declare-fun res!1056171 () Bool)

(assert (=> b!2497227 (=> (not res!1056171) (not e!1584415))))

(assert (=> b!2497227 (= res!1056171 (isEmpty!16815 (tail!3962 (Cons!29349 c!14016 (_1!17235 lt!894940)))))))

(declare-fun d!715012 () Bool)

(assert (=> d!715012 e!1584418))

(declare-fun c!397174 () Bool)

(assert (=> d!715012 (= c!397174 (is-EmptyExpr!7384 (reg!7713 r!27340)))))

(assert (=> d!715012 (= lt!895008 e!1584417)))

(declare-fun c!397175 () Bool)

(assert (=> d!715012 (= c!397175 (isEmpty!16815 (Cons!29349 c!14016 (_1!17235 lt!894940))))))

(assert (=> d!715012 (validRegex!3010 (reg!7713 r!27340))))

(assert (=> d!715012 (= (matchR!3393 (reg!7713 r!27340) (Cons!29349 c!14016 (_1!17235 lt!894940))) lt!895008)))

(declare-fun b!2497222 () Bool)

(assert (=> b!2497222 (= e!1584418 e!1584416)))

(declare-fun c!397176 () Bool)

(assert (=> b!2497222 (= c!397176 (is-EmptyLang!7384 (reg!7713 r!27340)))))

(assert (= (and d!715012 c!397175) b!2497215))

(assert (= (and d!715012 (not c!397175)) b!2497223))

(assert (= (and d!715012 c!397174) b!2497220))

(assert (= (and d!715012 (not c!397174)) b!2497222))

(assert (= (and b!2497222 c!397176) b!2497217))

(assert (= (and b!2497222 (not c!397176)) b!2497218))

(assert (= (and b!2497218 (not res!1056175)) b!2497225))

(assert (= (and b!2497225 res!1056172) b!2497224))

(assert (= (and b!2497224 res!1056176) b!2497227))

(assert (= (and b!2497227 res!1056171) b!2497221))

(assert (= (and b!2497225 (not res!1056170)) b!2497216))

(assert (= (and b!2497216 res!1056177) b!2497214))

(assert (= (and b!2497214 (not res!1056173)) b!2497226))

(assert (= (and b!2497226 (not res!1056174)) b!2497219))

(assert (= (or b!2497220 b!2497214 b!2497224) bm!153961))

(declare-fun m!2861321 () Bool)

(assert (=> bm!153961 m!2861321))

(declare-fun m!2861323 () Bool)

(assert (=> b!2497221 m!2861323))

(assert (=> b!2497215 m!2861311))

(declare-fun m!2861325 () Bool)

(assert (=> b!2497226 m!2861325))

(assert (=> b!2497226 m!2861325))

(declare-fun m!2861327 () Bool)

(assert (=> b!2497226 m!2861327))

(assert (=> b!2497223 m!2861323))

(assert (=> b!2497223 m!2861323))

(declare-fun m!2861329 () Bool)

(assert (=> b!2497223 m!2861329))

(assert (=> b!2497223 m!2861325))

(assert (=> b!2497223 m!2861329))

(assert (=> b!2497223 m!2861325))

(declare-fun m!2861331 () Bool)

(assert (=> b!2497223 m!2861331))

(assert (=> b!2497227 m!2861325))

(assert (=> b!2497227 m!2861325))

(assert (=> b!2497227 m!2861327))

(assert (=> b!2497219 m!2861323))

(assert (=> d!715012 m!2861321))

(assert (=> d!715012 m!2861081))

(assert (=> b!2496898 d!715012))

(declare-fun call!153967 () Regex!7384)

(declare-fun bm!153962 () Bool)

(declare-fun c!397177 () Bool)

(assert (=> bm!153962 (= call!153967 (derivativeStep!1953 (ite c!397177 (regTwo!15281 (reg!7713 r!27340)) (regTwo!15280 (reg!7713 r!27340))) c!14016))))

(declare-fun b!2497228 () Bool)

(declare-fun e!1584423 () Regex!7384)

(declare-fun call!153969 () Regex!7384)

(assert (=> b!2497228 (= e!1584423 (Concat!12080 call!153969 (reg!7713 r!27340)))))

(declare-fun b!2497229 () Bool)

(declare-fun e!1584421 () Regex!7384)

(assert (=> b!2497229 (= e!1584421 EmptyLang!7384)))

(declare-fun bm!153963 () Bool)

(declare-fun call!153968 () Regex!7384)

(assert (=> bm!153963 (= call!153968 call!153969)))

(declare-fun bm!153964 () Bool)

(declare-fun call!153970 () Regex!7384)

(assert (=> bm!153964 (= call!153969 call!153970)))

(declare-fun b!2497230 () Bool)

(declare-fun e!1584422 () Regex!7384)

(assert (=> b!2497230 (= e!1584422 (Union!7384 (Concat!12080 call!153968 (regTwo!15280 (reg!7713 r!27340))) call!153967))))

(declare-fun b!2497231 () Bool)

(declare-fun c!397178 () Bool)

(assert (=> b!2497231 (= c!397178 (nullable!2301 (regOne!15280 (reg!7713 r!27340))))))

(assert (=> b!2497231 (= e!1584423 e!1584422)))

(declare-fun b!2497232 () Bool)

(declare-fun e!1584420 () Regex!7384)

(assert (=> b!2497232 (= e!1584420 (Union!7384 call!153970 call!153967))))

(declare-fun d!715014 () Bool)

(declare-fun lt!895011 () Regex!7384)

(assert (=> d!715014 (validRegex!3010 lt!895011)))

(assert (=> d!715014 (= lt!895011 e!1584421)))

(declare-fun c!397179 () Bool)

(assert (=> d!715014 (= c!397179 (or (is-EmptyExpr!7384 (reg!7713 r!27340)) (is-EmptyLang!7384 (reg!7713 r!27340))))))

(assert (=> d!715014 (validRegex!3010 (reg!7713 r!27340))))

(assert (=> d!715014 (= (derivativeStep!1953 (reg!7713 r!27340) c!14016) lt!895011)))

(declare-fun b!2497233 () Bool)

(assert (=> b!2497233 (= e!1584422 (Union!7384 (Concat!12080 call!153968 (regTwo!15280 (reg!7713 r!27340))) EmptyLang!7384))))

(declare-fun b!2497234 () Bool)

(declare-fun e!1584419 () Regex!7384)

(assert (=> b!2497234 (= e!1584421 e!1584419)))

(declare-fun c!397181 () Bool)

(assert (=> b!2497234 (= c!397181 (is-ElementMatch!7384 (reg!7713 r!27340)))))

(declare-fun b!2497235 () Bool)

(assert (=> b!2497235 (= e!1584420 e!1584423)))

(declare-fun c!397180 () Bool)

(assert (=> b!2497235 (= c!397180 (is-Star!7384 (reg!7713 r!27340)))))

(declare-fun b!2497236 () Bool)

(assert (=> b!2497236 (= e!1584419 (ite (= c!14016 (c!397094 (reg!7713 r!27340))) EmptyExpr!7384 EmptyLang!7384))))

(declare-fun bm!153965 () Bool)

(assert (=> bm!153965 (= call!153970 (derivativeStep!1953 (ite c!397177 (regOne!15281 (reg!7713 r!27340)) (ite c!397180 (reg!7713 (reg!7713 r!27340)) (regOne!15280 (reg!7713 r!27340)))) c!14016))))

(declare-fun b!2497237 () Bool)

(assert (=> b!2497237 (= c!397177 (is-Union!7384 (reg!7713 r!27340)))))

(assert (=> b!2497237 (= e!1584419 e!1584420)))

(assert (= (and d!715014 c!397179) b!2497229))

(assert (= (and d!715014 (not c!397179)) b!2497234))

(assert (= (and b!2497234 c!397181) b!2497236))

(assert (= (and b!2497234 (not c!397181)) b!2497237))

(assert (= (and b!2497237 c!397177) b!2497232))

(assert (= (and b!2497237 (not c!397177)) b!2497235))

(assert (= (and b!2497235 c!397180) b!2497228))

(assert (= (and b!2497235 (not c!397180)) b!2497231))

(assert (= (and b!2497231 c!397178) b!2497230))

(assert (= (and b!2497231 (not c!397178)) b!2497233))

(assert (= (or b!2497230 b!2497233) bm!153963))

(assert (= (or b!2497228 bm!153963) bm!153964))

(assert (= (or b!2497232 b!2497230) bm!153962))

(assert (= (or b!2497232 bm!153964) bm!153965))

(declare-fun m!2861333 () Bool)

(assert (=> bm!153962 m!2861333))

(declare-fun m!2861335 () Bool)

(assert (=> b!2497231 m!2861335))

(declare-fun m!2861337 () Bool)

(assert (=> d!715014 m!2861337))

(assert (=> d!715014 m!2861081))

(declare-fun m!2861339 () Bool)

(assert (=> bm!153965 m!2861339))

(assert (=> b!2496899 d!715014))

(declare-fun b!2497251 () Bool)

(declare-fun e!1584426 () Bool)

(declare-fun tp!799699 () Bool)

(declare-fun tp!799700 () Bool)

(assert (=> b!2497251 (= e!1584426 (and tp!799699 tp!799700))))

(declare-fun b!2497250 () Bool)

(declare-fun tp!799697 () Bool)

(assert (=> b!2497250 (= e!1584426 tp!799697)))

(declare-fun b!2497248 () Bool)

(assert (=> b!2497248 (= e!1584426 tp_is_empty!12623)))

(assert (=> b!2496892 (= tp!799664 e!1584426)))

(declare-fun b!2497249 () Bool)

(declare-fun tp!799701 () Bool)

(declare-fun tp!799698 () Bool)

(assert (=> b!2497249 (= e!1584426 (and tp!799701 tp!799698))))

(assert (= (and b!2496892 (is-ElementMatch!7384 (reg!7713 r!27340))) b!2497248))

(assert (= (and b!2496892 (is-Concat!12080 (reg!7713 r!27340))) b!2497249))

(assert (= (and b!2496892 (is-Star!7384 (reg!7713 r!27340))) b!2497250))

(assert (= (and b!2496892 (is-Union!7384 (reg!7713 r!27340))) b!2497251))

(declare-fun b!2497255 () Bool)

(declare-fun e!1584427 () Bool)

(declare-fun tp!799704 () Bool)

(declare-fun tp!799705 () Bool)

(assert (=> b!2497255 (= e!1584427 (and tp!799704 tp!799705))))

(declare-fun b!2497254 () Bool)

(declare-fun tp!799702 () Bool)

(assert (=> b!2497254 (= e!1584427 tp!799702)))

(declare-fun b!2497252 () Bool)

(assert (=> b!2497252 (= e!1584427 tp_is_empty!12623)))

(assert (=> b!2496900 (= tp!799663 e!1584427)))

(declare-fun b!2497253 () Bool)

(declare-fun tp!799706 () Bool)

(declare-fun tp!799703 () Bool)

(assert (=> b!2497253 (= e!1584427 (and tp!799706 tp!799703))))

(assert (= (and b!2496900 (is-ElementMatch!7384 (regOne!15280 r!27340))) b!2497252))

(assert (= (and b!2496900 (is-Concat!12080 (regOne!15280 r!27340))) b!2497253))

(assert (= (and b!2496900 (is-Star!7384 (regOne!15280 r!27340))) b!2497254))

(assert (= (and b!2496900 (is-Union!7384 (regOne!15280 r!27340))) b!2497255))

(declare-fun b!2497259 () Bool)

(declare-fun e!1584428 () Bool)

(declare-fun tp!799709 () Bool)

(declare-fun tp!799710 () Bool)

(assert (=> b!2497259 (= e!1584428 (and tp!799709 tp!799710))))

(declare-fun b!2497258 () Bool)

(declare-fun tp!799707 () Bool)

(assert (=> b!2497258 (= e!1584428 tp!799707)))

(declare-fun b!2497256 () Bool)

(assert (=> b!2497256 (= e!1584428 tp_is_empty!12623)))

(assert (=> b!2496900 (= tp!799665 e!1584428)))

(declare-fun b!2497257 () Bool)

(declare-fun tp!799711 () Bool)

(declare-fun tp!799708 () Bool)

(assert (=> b!2497257 (= e!1584428 (and tp!799711 tp!799708))))

(assert (= (and b!2496900 (is-ElementMatch!7384 (regTwo!15280 r!27340))) b!2497256))

(assert (= (and b!2496900 (is-Concat!12080 (regTwo!15280 r!27340))) b!2497257))

(assert (= (and b!2496900 (is-Star!7384 (regTwo!15280 r!27340))) b!2497258))

(assert (= (and b!2496900 (is-Union!7384 (regTwo!15280 r!27340))) b!2497259))

(declare-fun b!2497263 () Bool)

(declare-fun e!1584429 () Bool)

(declare-fun tp!799714 () Bool)

(declare-fun tp!799715 () Bool)

(assert (=> b!2497263 (= e!1584429 (and tp!799714 tp!799715))))

(declare-fun b!2497262 () Bool)

(declare-fun tp!799712 () Bool)

(assert (=> b!2497262 (= e!1584429 tp!799712)))

(declare-fun b!2497260 () Bool)

(assert (=> b!2497260 (= e!1584429 tp_is_empty!12623)))

(assert (=> b!2496893 (= tp!799667 e!1584429)))

(declare-fun b!2497261 () Bool)

(declare-fun tp!799716 () Bool)

(declare-fun tp!799713 () Bool)

(assert (=> b!2497261 (= e!1584429 (and tp!799716 tp!799713))))

(assert (= (and b!2496893 (is-ElementMatch!7384 (regOne!15281 r!27340))) b!2497260))

(assert (= (and b!2496893 (is-Concat!12080 (regOne!15281 r!27340))) b!2497261))

(assert (= (and b!2496893 (is-Star!7384 (regOne!15281 r!27340))) b!2497262))

(assert (= (and b!2496893 (is-Union!7384 (regOne!15281 r!27340))) b!2497263))

(declare-fun b!2497267 () Bool)

(declare-fun e!1584430 () Bool)

(declare-fun tp!799719 () Bool)

(declare-fun tp!799720 () Bool)

(assert (=> b!2497267 (= e!1584430 (and tp!799719 tp!799720))))

(declare-fun b!2497266 () Bool)

(declare-fun tp!799717 () Bool)

(assert (=> b!2497266 (= e!1584430 tp!799717)))

(declare-fun b!2497264 () Bool)

(assert (=> b!2497264 (= e!1584430 tp_is_empty!12623)))

(assert (=> b!2496893 (= tp!799666 e!1584430)))

(declare-fun b!2497265 () Bool)

(declare-fun tp!799721 () Bool)

(declare-fun tp!799718 () Bool)

(assert (=> b!2497265 (= e!1584430 (and tp!799721 tp!799718))))

(assert (= (and b!2496893 (is-ElementMatch!7384 (regTwo!15281 r!27340))) b!2497264))

(assert (= (and b!2496893 (is-Concat!12080 (regTwo!15281 r!27340))) b!2497265))

(assert (= (and b!2496893 (is-Star!7384 (regTwo!15281 r!27340))) b!2497266))

(assert (= (and b!2496893 (is-Union!7384 (regTwo!15281 r!27340))) b!2497267))

(declare-fun b!2497272 () Bool)

(declare-fun e!1584433 () Bool)

(declare-fun tp!799724 () Bool)

(assert (=> b!2497272 (= e!1584433 (and tp_is_empty!12623 tp!799724))))

(assert (=> b!2496904 (= tp!799668 e!1584433)))

(assert (= (and b!2496904 (is-Cons!29349 (t!211148 tl!4068))) b!2497272))

(push 1)

(assert (not b!2497166))

(assert (not b!2497163))

(assert (not b!2497004))

(assert (not b!2497169))

(assert (not b!2497190))

(assert (not d!715012))

(assert (not b!2497212))

(assert (not d!714976))

(assert (not bm!153941))

(assert (not b!2497196))

(assert (not b!2497066))

(assert (not b!2497259))

(assert (not d!715004))

(assert (not bm!153961))

(assert (not b!2497250))

(assert (not b!2497258))

(assert (not b!2497251))

(assert (not b!2497253))

(assert (not b!2497255))

(assert (not b!2497060))

(assert (not b!2497202))

(assert (not b!2497219))

(assert (not b!2497058))

(assert (not b!2497265))

(assert (not b!2497249))

(assert (not d!715008))

(assert (not b!2497226))

(assert (not b!2497062))

(assert (not d!714986))

(assert (not bm!153956))

(assert (not b!2497124))

(assert (not b!2497112))

(assert (not bm!153934))

(assert (not bm!153965))

(assert (not b!2497210))

(assert (not b!2497257))

(assert (not b!2497261))

(assert (not bm!153959))

(assert (not b!2497162))

(assert (not b!2497168))

(assert (not b!2497180))

(assert (not b!2497215))

(assert (not b!2497227))

(assert (not b!2497065))

(assert (not b!2497223))

(assert (not bm!153957))

(assert (not b!2497187))

(assert (not bm!153927))

(assert (not b!2496951))

(assert (not b!2497176))

(assert (not b!2497188))

(assert (not b!2497231))

(assert (not b!2497194))

(assert (not b!2497262))

(assert (not d!715014))

(assert tp_is_empty!12623)

(assert (not b!2497123))

(assert (not d!714998))

(assert (not bm!153958))

(assert (not d!714996))

(assert (not bm!153942))

(assert (not d!714984))

(assert (not b!2497266))

(assert (not b!2497272))

(assert (not d!715002))

(assert (not d!714978))

(assert (not d!714990))

(assert (not b!2497263))

(assert (not b!2497201))

(assert (not b!2497267))

(assert (not b!2497254))

(assert (not b!2497054))

(assert (not bm!153962))

(assert (not bm!153930))

(assert (not b!2497182))

(assert (not b!2497164))

(assert (not b!2497184))

(assert (not b!2497221))

(assert (not d!715010))

(assert (not d!714974))

(assert (not d!714972))

(assert (not b!2497198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

