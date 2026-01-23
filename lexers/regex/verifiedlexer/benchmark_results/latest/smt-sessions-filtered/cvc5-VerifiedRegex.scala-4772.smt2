; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!246042 () Bool)

(assert start!246042)

(declare-fun b!2525867 () Bool)

(declare-fun e!1599037 () Bool)

(declare-fun tp!806635 () Bool)

(declare-fun tp!806636 () Bool)

(assert (=> b!2525867 (= e!1599037 (and tp!806635 tp!806636))))

(declare-fun b!2525868 () Bool)

(declare-fun res!1066904 () Bool)

(declare-fun e!1599038 () Bool)

(assert (=> b!2525868 (=> (not res!1066904) (not e!1599038))))

(declare-datatypes ((C!15194 0))(
  ( (C!15195 (val!9249 Int)) )
))
(declare-datatypes ((List!29583 0))(
  ( (Nil!29483) (Cons!29483 (h!34903 C!15194) (t!211282 List!29583)) )
))
(declare-fun tl!4068 () List!29583)

(declare-datatypes ((Regex!7518 0))(
  ( (ElementMatch!7518 (c!403218 C!15194)) (Concat!12214 (regOne!15548 Regex!7518) (regTwo!15548 Regex!7518)) (EmptyExpr!7518) (Star!7518 (reg!7847 Regex!7518)) (EmptyLang!7518) (Union!7518 (regOne!15549 Regex!7518) (regTwo!15549 Regex!7518)) )
))
(declare-fun r!27340 () Regex!7518)

(declare-fun c!14016 () C!15194)

(declare-fun nullable!2435 (Regex!7518) Bool)

(declare-fun derivative!213 (Regex!7518 List!29583) Regex!7518)

(declare-fun derivativeStep!2087 (Regex!7518 C!15194) Regex!7518)

(assert (=> b!2525868 (= res!1066904 (nullable!2435 (derivative!213 (derivativeStep!2087 r!27340 c!14016) tl!4068)))))

(declare-fun b!2525869 () Bool)

(declare-fun res!1066903 () Bool)

(assert (=> b!2525869 (=> (not res!1066903) (not e!1599038))))

(assert (=> b!2525869 (= res!1066903 (and (not (is-EmptyExpr!7518 r!27340)) (not (is-EmptyLang!7518 r!27340)) (not (is-ElementMatch!7518 r!27340)) (not (is-Union!7518 r!27340)) (not (is-Star!7518 r!27340))))))

(declare-fun b!2525870 () Bool)

(declare-fun res!1066908 () Bool)

(assert (=> b!2525870 (=> (not res!1066908) (not e!1599038))))

(assert (=> b!2525870 (= res!1066908 (not (nullable!2435 (regOne!15548 r!27340))))))

(declare-fun b!2525871 () Bool)

(declare-fun tp!806633 () Bool)

(assert (=> b!2525871 (= e!1599037 tp!806633)))

(declare-fun b!2525872 () Bool)

(declare-fun e!1599039 () Bool)

(assert (=> b!2525872 (= e!1599038 (not e!1599039))))

(declare-fun res!1066905 () Bool)

(assert (=> b!2525872 (=> res!1066905 e!1599039)))

(declare-fun lt!900430 () Bool)

(assert (=> b!2525872 (= res!1066905 (not lt!900430))))

(assert (=> b!2525872 (= (derivative!213 EmptyLang!7518 tl!4068) EmptyLang!7518)))

(declare-datatypes ((Unit!43261 0))(
  ( (Unit!43262) )
))
(declare-fun lt!900421 () Unit!43261)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!35 (Regex!7518 List!29583) Unit!43261)

(assert (=> b!2525872 (= lt!900421 (lemmaEmptyLangDerivativeIsAFixPoint!35 EmptyLang!7518 tl!4068))))

(declare-fun e!1599035 () Bool)

(assert (=> b!2525872 e!1599035))

(declare-fun res!1066906 () Bool)

(assert (=> b!2525872 (=> res!1066906 e!1599035)))

(assert (=> b!2525872 (= res!1066906 lt!900430)))

(declare-fun lt!900423 () Regex!7518)

(declare-fun matchR!3505 (Regex!7518 List!29583) Bool)

(assert (=> b!2525872 (= lt!900430 (matchR!3505 lt!900423 tl!4068))))

(declare-fun lt!900428 () Unit!43261)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!183 (Regex!7518 Regex!7518 List!29583) Unit!43261)

(assert (=> b!2525872 (= lt!900428 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!183 lt!900423 EmptyLang!7518 tl!4068))))

(declare-fun lt!900424 () Regex!7518)

(assert (=> b!2525872 (= (matchR!3505 lt!900424 tl!4068) (matchR!3505 (derivative!213 lt!900424 tl!4068) Nil!29483))))

(declare-fun lt!900422 () Unit!43261)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!151 (Regex!7518 List!29583) Unit!43261)

(assert (=> b!2525872 (= lt!900422 (lemmaMatchRIsSameAsWholeDerivativeAndNil!151 lt!900424 tl!4068))))

(assert (=> b!2525872 (= lt!900424 (Union!7518 lt!900423 EmptyLang!7518))))

(declare-fun lt!900425 () Regex!7518)

(assert (=> b!2525872 (= lt!900423 (Concat!12214 lt!900425 (regTwo!15548 r!27340)))))

(assert (=> b!2525872 (= lt!900425 (derivativeStep!2087 (regOne!15548 r!27340) c!14016))))

(declare-fun b!2525873 () Bool)

(declare-fun e!1599036 () Bool)

(declare-fun tp_is_empty!12891 () Bool)

(declare-fun tp!806634 () Bool)

(assert (=> b!2525873 (= e!1599036 (and tp_is_empty!12891 tp!806634))))

(declare-fun b!2525874 () Bool)

(declare-datatypes ((tuple2!29534 0))(
  ( (tuple2!29535 (_1!17309 List!29583) (_2!17309 List!29583)) )
))
(declare-fun lt!900426 () tuple2!29534)

(declare-fun ++!7237 (List!29583 List!29583) List!29583)

(assert (=> b!2525874 (= e!1599039 (= (++!7237 (_1!17309 lt!900426) (_2!17309 lt!900426)) tl!4068))))

(declare-datatypes ((Option!5887 0))(
  ( (None!5886) (Some!5886 (v!31819 tuple2!29534)) )
))
(declare-fun lt!900427 () Option!5887)

(declare-fun get!9225 (Option!5887) tuple2!29534)

(assert (=> b!2525874 (= lt!900426 (get!9225 lt!900427))))

(declare-fun isDefined!4709 (Option!5887) Bool)

(assert (=> b!2525874 (isDefined!4709 lt!900427)))

(declare-fun findConcatSeparation!909 (Regex!7518 Regex!7518 List!29583 List!29583 List!29583) Option!5887)

(assert (=> b!2525874 (= lt!900427 (findConcatSeparation!909 lt!900425 (regTwo!15548 r!27340) Nil!29483 tl!4068 tl!4068))))

(declare-fun lt!900429 () Unit!43261)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!191 (Regex!7518 Regex!7518 List!29583) Unit!43261)

(assert (=> b!2525874 (= lt!900429 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!191 lt!900425 (regTwo!15548 r!27340) tl!4068))))

(declare-fun b!2525875 () Bool)

(assert (=> b!2525875 (= e!1599035 (matchR!3505 EmptyLang!7518 tl!4068))))

(declare-fun b!2525876 () Bool)

(declare-fun tp!806632 () Bool)

(declare-fun tp!806631 () Bool)

(assert (=> b!2525876 (= e!1599037 (and tp!806632 tp!806631))))

(declare-fun b!2525877 () Bool)

(assert (=> b!2525877 (= e!1599037 tp_is_empty!12891)))

(declare-fun res!1066907 () Bool)

(assert (=> start!246042 (=> (not res!1066907) (not e!1599038))))

(declare-fun validRegex!3144 (Regex!7518) Bool)

(assert (=> start!246042 (= res!1066907 (validRegex!3144 r!27340))))

(assert (=> start!246042 e!1599038))

(assert (=> start!246042 e!1599037))

(assert (=> start!246042 tp_is_empty!12891))

(assert (=> start!246042 e!1599036))

(assert (= (and start!246042 res!1066907) b!2525868))

(assert (= (and b!2525868 res!1066904) b!2525869))

(assert (= (and b!2525869 res!1066903) b!2525870))

(assert (= (and b!2525870 res!1066908) b!2525872))

(assert (= (and b!2525872 (not res!1066906)) b!2525875))

(assert (= (and b!2525872 (not res!1066905)) b!2525874))

(assert (= (and start!246042 (is-ElementMatch!7518 r!27340)) b!2525877))

(assert (= (and start!246042 (is-Concat!12214 r!27340)) b!2525876))

(assert (= (and start!246042 (is-Star!7518 r!27340)) b!2525871))

(assert (= (and start!246042 (is-Union!7518 r!27340)) b!2525867))

(assert (= (and start!246042 (is-Cons!29483 tl!4068)) b!2525873))

(declare-fun m!2879101 () Bool)

(assert (=> b!2525872 m!2879101))

(declare-fun m!2879103 () Bool)

(assert (=> b!2525872 m!2879103))

(declare-fun m!2879105 () Bool)

(assert (=> b!2525872 m!2879105))

(declare-fun m!2879107 () Bool)

(assert (=> b!2525872 m!2879107))

(declare-fun m!2879109 () Bool)

(assert (=> b!2525872 m!2879109))

(declare-fun m!2879111 () Bool)

(assert (=> b!2525872 m!2879111))

(declare-fun m!2879113 () Bool)

(assert (=> b!2525872 m!2879113))

(declare-fun m!2879115 () Bool)

(assert (=> b!2525872 m!2879115))

(assert (=> b!2525872 m!2879109))

(declare-fun m!2879117 () Bool)

(assert (=> b!2525872 m!2879117))

(declare-fun m!2879119 () Bool)

(assert (=> b!2525875 m!2879119))

(declare-fun m!2879121 () Bool)

(assert (=> b!2525868 m!2879121))

(assert (=> b!2525868 m!2879121))

(declare-fun m!2879123 () Bool)

(assert (=> b!2525868 m!2879123))

(assert (=> b!2525868 m!2879123))

(declare-fun m!2879125 () Bool)

(assert (=> b!2525868 m!2879125))

(declare-fun m!2879127 () Bool)

(assert (=> b!2525870 m!2879127))

(declare-fun m!2879129 () Bool)

(assert (=> start!246042 m!2879129))

(declare-fun m!2879131 () Bool)

(assert (=> b!2525874 m!2879131))

(declare-fun m!2879133 () Bool)

(assert (=> b!2525874 m!2879133))

(declare-fun m!2879135 () Bool)

(assert (=> b!2525874 m!2879135))

(declare-fun m!2879137 () Bool)

(assert (=> b!2525874 m!2879137))

(declare-fun m!2879139 () Bool)

(assert (=> b!2525874 m!2879139))

(push 1)

(assert (not b!2525870))

(assert (not b!2525871))

(assert (not b!2525872))

(assert (not b!2525868))

(assert (not start!246042))

(assert (not b!2525876))

(assert (not b!2525875))

(assert (not b!2525867))

(assert tp_is_empty!12891)

(assert (not b!2525873))

(assert (not b!2525874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2525931 () Bool)

(declare-fun e!1599068 () Regex!7518)

(declare-fun call!157840 () Regex!7518)

(declare-fun call!157838 () Regex!7518)

(assert (=> b!2525931 (= e!1599068 (Union!7518 call!157840 call!157838))))

(declare-fun bm!157833 () Bool)

(declare-fun c!403231 () Bool)

(assert (=> bm!157833 (= call!157840 (derivativeStep!2087 (ite c!403231 (regOne!15549 (regOne!15548 r!27340)) (regTwo!15548 (regOne!15548 r!27340))) c!14016))))

(declare-fun bm!157834 () Bool)

(declare-fun call!157839 () Regex!7518)

(assert (=> bm!157834 (= call!157839 call!157838)))

(declare-fun b!2525932 () Bool)

(declare-fun e!1599067 () Regex!7518)

(assert (=> b!2525932 (= e!1599067 (ite (= c!14016 (c!403218 (regOne!15548 r!27340))) EmptyExpr!7518 EmptyLang!7518))))

(declare-fun b!2525933 () Bool)

(declare-fun e!1599065 () Regex!7518)

(assert (=> b!2525933 (= e!1599065 (Concat!12214 call!157839 (regOne!15548 r!27340)))))

(declare-fun call!157841 () Regex!7518)

(declare-fun e!1599066 () Regex!7518)

(declare-fun b!2525934 () Bool)

(assert (=> b!2525934 (= e!1599066 (Union!7518 (Concat!12214 call!157841 (regTwo!15548 (regOne!15548 r!27340))) call!157840))))

(declare-fun b!2525935 () Bool)

(declare-fun e!1599069 () Regex!7518)

(assert (=> b!2525935 (= e!1599069 e!1599067)))

(declare-fun c!403232 () Bool)

(assert (=> b!2525935 (= c!403232 (is-ElementMatch!7518 (regOne!15548 r!27340)))))

(declare-fun b!2525936 () Bool)

(assert (=> b!2525936 (= e!1599068 e!1599065)))

(declare-fun c!403233 () Bool)

(assert (=> b!2525936 (= c!403233 (is-Star!7518 (regOne!15548 r!27340)))))

(declare-fun bm!157835 () Bool)

(assert (=> bm!157835 (= call!157841 call!157839)))

(declare-fun d!719009 () Bool)

(declare-fun lt!900463 () Regex!7518)

(assert (=> d!719009 (validRegex!3144 lt!900463)))

(assert (=> d!719009 (= lt!900463 e!1599069)))

(declare-fun c!403230 () Bool)

(assert (=> d!719009 (= c!403230 (or (is-EmptyExpr!7518 (regOne!15548 r!27340)) (is-EmptyLang!7518 (regOne!15548 r!27340))))))

(assert (=> d!719009 (validRegex!3144 (regOne!15548 r!27340))))

(assert (=> d!719009 (= (derivativeStep!2087 (regOne!15548 r!27340) c!14016) lt!900463)))

(declare-fun bm!157836 () Bool)

(assert (=> bm!157836 (= call!157838 (derivativeStep!2087 (ite c!403231 (regTwo!15549 (regOne!15548 r!27340)) (ite c!403233 (reg!7847 (regOne!15548 r!27340)) (regOne!15548 (regOne!15548 r!27340)))) c!14016))))

(declare-fun b!2525937 () Bool)

(assert (=> b!2525937 (= c!403231 (is-Union!7518 (regOne!15548 r!27340)))))

(assert (=> b!2525937 (= e!1599067 e!1599068)))

(declare-fun b!2525938 () Bool)

(assert (=> b!2525938 (= e!1599066 (Union!7518 (Concat!12214 call!157841 (regTwo!15548 (regOne!15548 r!27340))) EmptyLang!7518))))

(declare-fun b!2525939 () Bool)

(declare-fun c!403234 () Bool)

(assert (=> b!2525939 (= c!403234 (nullable!2435 (regOne!15548 (regOne!15548 r!27340))))))

(assert (=> b!2525939 (= e!1599065 e!1599066)))

(declare-fun b!2525940 () Bool)

(assert (=> b!2525940 (= e!1599069 EmptyLang!7518)))

(assert (= (and d!719009 c!403230) b!2525940))

(assert (= (and d!719009 (not c!403230)) b!2525935))

(assert (= (and b!2525935 c!403232) b!2525932))

(assert (= (and b!2525935 (not c!403232)) b!2525937))

(assert (= (and b!2525937 c!403231) b!2525931))

(assert (= (and b!2525937 (not c!403231)) b!2525936))

(assert (= (and b!2525936 c!403233) b!2525933))

(assert (= (and b!2525936 (not c!403233)) b!2525939))

(assert (= (and b!2525939 c!403234) b!2525934))

(assert (= (and b!2525939 (not c!403234)) b!2525938))

(assert (= (or b!2525934 b!2525938) bm!157835))

(assert (= (or b!2525933 bm!157835) bm!157834))

(assert (= (or b!2525931 bm!157834) bm!157836))

(assert (= (or b!2525931 b!2525934) bm!157833))

(declare-fun m!2879181 () Bool)

(assert (=> bm!157833 m!2879181))

(declare-fun m!2879183 () Bool)

(assert (=> d!719009 m!2879183))

(declare-fun m!2879185 () Bool)

(assert (=> d!719009 m!2879185))

(declare-fun m!2879187 () Bool)

(assert (=> bm!157836 m!2879187))

(declare-fun m!2879189 () Bool)

(assert (=> b!2525939 m!2879189))

(assert (=> b!2525872 d!719009))

(declare-fun d!719013 () Bool)

(declare-fun lt!900466 () Regex!7518)

(assert (=> d!719013 (validRegex!3144 lt!900466)))

(declare-fun e!1599072 () Regex!7518)

(assert (=> d!719013 (= lt!900466 e!1599072)))

(declare-fun c!403237 () Bool)

(assert (=> d!719013 (= c!403237 (is-Cons!29483 tl!4068))))

(assert (=> d!719013 (validRegex!3144 EmptyLang!7518)))

(assert (=> d!719013 (= (derivative!213 EmptyLang!7518 tl!4068) lt!900466)))

(declare-fun b!2525945 () Bool)

(assert (=> b!2525945 (= e!1599072 (derivative!213 (derivativeStep!2087 EmptyLang!7518 (h!34903 tl!4068)) (t!211282 tl!4068)))))

(declare-fun b!2525946 () Bool)

(assert (=> b!2525946 (= e!1599072 EmptyLang!7518)))

(assert (= (and d!719013 c!403237) b!2525945))

(assert (= (and d!719013 (not c!403237)) b!2525946))

(declare-fun m!2879191 () Bool)

(assert (=> d!719013 m!2879191))

(declare-fun m!2879193 () Bool)

(assert (=> d!719013 m!2879193))

(declare-fun m!2879195 () Bool)

(assert (=> b!2525945 m!2879195))

(assert (=> b!2525945 m!2879195))

(declare-fun m!2879197 () Bool)

(assert (=> b!2525945 m!2879197))

(assert (=> b!2525872 d!719013))

(declare-fun b!2526003 () Bool)

(declare-fun res!1066962 () Bool)

(declare-fun e!1599107 () Bool)

(assert (=> b!2526003 (=> (not res!1066962) (not e!1599107))))

(declare-fun call!157846 () Bool)

(assert (=> b!2526003 (= res!1066962 (not call!157846))))

(declare-fun b!2526004 () Bool)

(declare-fun e!1599106 () Bool)

(declare-fun lt!900471 () Bool)

(assert (=> b!2526004 (= e!1599106 (not lt!900471))))

(declare-fun b!2526005 () Bool)

(declare-fun e!1599104 () Bool)

(declare-fun e!1599103 () Bool)

(assert (=> b!2526005 (= e!1599104 e!1599103)))

(declare-fun res!1066966 () Bool)

(assert (=> b!2526005 (=> (not res!1066966) (not e!1599103))))

(assert (=> b!2526005 (= res!1066966 (not lt!900471))))

(declare-fun b!2526006 () Bool)

(declare-fun e!1599105 () Bool)

(declare-fun head!5767 (List!29583) C!15194)

(assert (=> b!2526006 (= e!1599105 (not (= (head!5767 Nil!29483) (c!403218 (derivative!213 lt!900424 tl!4068)))))))

(declare-fun bm!157841 () Bool)

(declare-fun isEmpty!16957 (List!29583) Bool)

(assert (=> bm!157841 (= call!157846 (isEmpty!16957 Nil!29483))))

(declare-fun b!2526007 () Bool)

(declare-fun res!1066961 () Bool)

(assert (=> b!2526007 (=> (not res!1066961) (not e!1599107))))

(declare-fun tail!4044 (List!29583) List!29583)

(assert (=> b!2526007 (= res!1066961 (isEmpty!16957 (tail!4044 Nil!29483)))))

(declare-fun b!2526009 () Bool)

(declare-fun res!1066959 () Bool)

(assert (=> b!2526009 (=> res!1066959 e!1599105)))

(assert (=> b!2526009 (= res!1066959 (not (isEmpty!16957 (tail!4044 Nil!29483))))))

(declare-fun b!2526010 () Bool)

(declare-fun e!1599101 () Bool)

(assert (=> b!2526010 (= e!1599101 (nullable!2435 (derivative!213 lt!900424 tl!4068)))))

(declare-fun b!2526011 () Bool)

(declare-fun res!1066963 () Bool)

(assert (=> b!2526011 (=> res!1066963 e!1599104)))

(assert (=> b!2526011 (= res!1066963 (not (is-ElementMatch!7518 (derivative!213 lt!900424 tl!4068))))))

(assert (=> b!2526011 (= e!1599106 e!1599104)))

(declare-fun b!2526012 () Bool)

(assert (=> b!2526012 (= e!1599101 (matchR!3505 (derivativeStep!2087 (derivative!213 lt!900424 tl!4068) (head!5767 Nil!29483)) (tail!4044 Nil!29483)))))

(declare-fun b!2526013 () Bool)

(assert (=> b!2526013 (= e!1599103 e!1599105)))

(declare-fun res!1066965 () Bool)

(assert (=> b!2526013 (=> res!1066965 e!1599105)))

(assert (=> b!2526013 (= res!1066965 call!157846)))

(declare-fun b!2526014 () Bool)

(declare-fun res!1066960 () Bool)

(assert (=> b!2526014 (=> res!1066960 e!1599104)))

(assert (=> b!2526014 (= res!1066960 e!1599107)))

(declare-fun res!1066964 () Bool)

(assert (=> b!2526014 (=> (not res!1066964) (not e!1599107))))

(assert (=> b!2526014 (= res!1066964 lt!900471)))

(declare-fun b!2526008 () Bool)

(declare-fun e!1599102 () Bool)

(assert (=> b!2526008 (= e!1599102 e!1599106)))

(declare-fun c!403251 () Bool)

(assert (=> b!2526008 (= c!403251 (is-EmptyLang!7518 (derivative!213 lt!900424 tl!4068)))))

(declare-fun d!719015 () Bool)

(assert (=> d!719015 e!1599102))

(declare-fun c!403250 () Bool)

(assert (=> d!719015 (= c!403250 (is-EmptyExpr!7518 (derivative!213 lt!900424 tl!4068)))))

(assert (=> d!719015 (= lt!900471 e!1599101)))

(declare-fun c!403252 () Bool)

(assert (=> d!719015 (= c!403252 (isEmpty!16957 Nil!29483))))

(assert (=> d!719015 (validRegex!3144 (derivative!213 lt!900424 tl!4068))))

(assert (=> d!719015 (= (matchR!3505 (derivative!213 lt!900424 tl!4068) Nil!29483) lt!900471)))

(declare-fun b!2526015 () Bool)

(assert (=> b!2526015 (= e!1599102 (= lt!900471 call!157846))))

(declare-fun b!2526016 () Bool)

(assert (=> b!2526016 (= e!1599107 (= (head!5767 Nil!29483) (c!403218 (derivative!213 lt!900424 tl!4068))))))

(assert (= (and d!719015 c!403252) b!2526010))

(assert (= (and d!719015 (not c!403252)) b!2526012))

(assert (= (and d!719015 c!403250) b!2526015))

(assert (= (and d!719015 (not c!403250)) b!2526008))

(assert (= (and b!2526008 c!403251) b!2526004))

(assert (= (and b!2526008 (not c!403251)) b!2526011))

(assert (= (and b!2526011 (not res!1066963)) b!2526014))

(assert (= (and b!2526014 res!1066964) b!2526003))

(assert (= (and b!2526003 res!1066962) b!2526007))

(assert (= (and b!2526007 res!1066961) b!2526016))

(assert (= (and b!2526014 (not res!1066960)) b!2526005))

(assert (= (and b!2526005 res!1066966) b!2526013))

(assert (= (and b!2526013 (not res!1066965)) b!2526009))

(assert (= (and b!2526009 (not res!1066959)) b!2526006))

(assert (= (or b!2526015 b!2526003 b!2526013) bm!157841))

(declare-fun m!2879199 () Bool)

(assert (=> b!2526006 m!2879199))

(declare-fun m!2879201 () Bool)

(assert (=> d!719015 m!2879201))

(assert (=> d!719015 m!2879109))

(declare-fun m!2879203 () Bool)

(assert (=> d!719015 m!2879203))

(declare-fun m!2879205 () Bool)

(assert (=> b!2526007 m!2879205))

(assert (=> b!2526007 m!2879205))

(declare-fun m!2879207 () Bool)

(assert (=> b!2526007 m!2879207))

(assert (=> b!2526016 m!2879199))

(assert (=> b!2526010 m!2879109))

(declare-fun m!2879209 () Bool)

(assert (=> b!2526010 m!2879209))

(assert (=> bm!157841 m!2879201))

(assert (=> b!2526009 m!2879205))

(assert (=> b!2526009 m!2879205))

(assert (=> b!2526009 m!2879207))

(assert (=> b!2526012 m!2879199))

(assert (=> b!2526012 m!2879109))

(assert (=> b!2526012 m!2879199))

(declare-fun m!2879211 () Bool)

(assert (=> b!2526012 m!2879211))

(assert (=> b!2526012 m!2879205))

(assert (=> b!2526012 m!2879211))

(assert (=> b!2526012 m!2879205))

(declare-fun m!2879213 () Bool)

(assert (=> b!2526012 m!2879213))

(assert (=> b!2525872 d!719015))

(declare-fun d!719017 () Bool)

(assert (=> d!719017 (= (matchR!3505 lt!900424 tl!4068) (matchR!3505 (derivative!213 lt!900424 tl!4068) Nil!29483))))

(declare-fun lt!900474 () Unit!43261)

(declare-fun choose!14975 (Regex!7518 List!29583) Unit!43261)

(assert (=> d!719017 (= lt!900474 (choose!14975 lt!900424 tl!4068))))

(assert (=> d!719017 (validRegex!3144 lt!900424)))

(assert (=> d!719017 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!151 lt!900424 tl!4068) lt!900474)))

(declare-fun bs!469092 () Bool)

(assert (= bs!469092 d!719017))

(declare-fun m!2879215 () Bool)

(assert (=> bs!469092 m!2879215))

(declare-fun m!2879217 () Bool)

(assert (=> bs!469092 m!2879217))

(assert (=> bs!469092 m!2879109))

(assert (=> bs!469092 m!2879113))

(assert (=> bs!469092 m!2879109))

(assert (=> bs!469092 m!2879111))

(assert (=> b!2525872 d!719017))

(declare-fun d!719019 () Bool)

(assert (=> d!719019 (= (derivative!213 EmptyLang!7518 tl!4068) EmptyLang!7518)))

(declare-fun lt!900477 () Unit!43261)

(declare-fun choose!14976 (Regex!7518 List!29583) Unit!43261)

(assert (=> d!719019 (= lt!900477 (choose!14976 EmptyLang!7518 tl!4068))))

(assert (=> d!719019 (= EmptyLang!7518 EmptyLang!7518)))

(assert (=> d!719019 (= (lemmaEmptyLangDerivativeIsAFixPoint!35 EmptyLang!7518 tl!4068) lt!900477)))

(declare-fun bs!469093 () Bool)

(assert (= bs!469093 d!719019))

(assert (=> bs!469093 m!2879117))

(declare-fun m!2879219 () Bool)

(assert (=> bs!469093 m!2879219))

(assert (=> b!2525872 d!719019))

(declare-fun d!719021 () Bool)

(declare-fun e!1599120 () Bool)

(assert (=> d!719021 e!1599120))

(declare-fun res!1066980 () Bool)

(assert (=> d!719021 (=> res!1066980 e!1599120)))

(assert (=> d!719021 (= res!1066980 (matchR!3505 lt!900423 tl!4068))))

(declare-fun lt!900481 () Unit!43261)

(declare-fun choose!14977 (Regex!7518 Regex!7518 List!29583) Unit!43261)

(assert (=> d!719021 (= lt!900481 (choose!14977 lt!900423 EmptyLang!7518 tl!4068))))

(declare-fun e!1599119 () Bool)

(assert (=> d!719021 e!1599119))

(declare-fun res!1066979 () Bool)

(assert (=> d!719021 (=> (not res!1066979) (not e!1599119))))

(assert (=> d!719021 (= res!1066979 (validRegex!3144 lt!900423))))

(assert (=> d!719021 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!183 lt!900423 EmptyLang!7518 tl!4068) lt!900481)))

(declare-fun b!2526035 () Bool)

(assert (=> b!2526035 (= e!1599119 (validRegex!3144 EmptyLang!7518))))

(declare-fun b!2526036 () Bool)

(assert (=> b!2526036 (= e!1599120 (matchR!3505 EmptyLang!7518 tl!4068))))

(assert (= (and d!719021 res!1066979) b!2526035))

(assert (= (and d!719021 (not res!1066980)) b!2526036))

(assert (=> d!719021 m!2879103))

(declare-fun m!2879229 () Bool)

(assert (=> d!719021 m!2879229))

(declare-fun m!2879233 () Bool)

(assert (=> d!719021 m!2879233))

(assert (=> b!2526035 m!2879193))

(assert (=> b!2526036 m!2879119))

(assert (=> b!2525872 d!719021))

(declare-fun d!719023 () Bool)

(declare-fun lt!900482 () Regex!7518)

(assert (=> d!719023 (validRegex!3144 lt!900482)))

(declare-fun e!1599121 () Regex!7518)

(assert (=> d!719023 (= lt!900482 e!1599121)))

(declare-fun c!403256 () Bool)

(assert (=> d!719023 (= c!403256 (is-Cons!29483 tl!4068))))

(assert (=> d!719023 (validRegex!3144 lt!900424)))

(assert (=> d!719023 (= (derivative!213 lt!900424 tl!4068) lt!900482)))

(declare-fun b!2526037 () Bool)

(assert (=> b!2526037 (= e!1599121 (derivative!213 (derivativeStep!2087 lt!900424 (h!34903 tl!4068)) (t!211282 tl!4068)))))

(declare-fun b!2526038 () Bool)

(assert (=> b!2526038 (= e!1599121 lt!900424)))

(assert (= (and d!719023 c!403256) b!2526037))

(assert (= (and d!719023 (not c!403256)) b!2526038))

(declare-fun m!2879237 () Bool)

(assert (=> d!719023 m!2879237))

(assert (=> d!719023 m!2879217))

(declare-fun m!2879241 () Bool)

(assert (=> b!2526037 m!2879241))

(assert (=> b!2526037 m!2879241))

(declare-fun m!2879243 () Bool)

(assert (=> b!2526037 m!2879243))

(assert (=> b!2525872 d!719023))

(declare-fun b!2526039 () Bool)

(declare-fun res!1066984 () Bool)

(declare-fun e!1599128 () Bool)

(assert (=> b!2526039 (=> (not res!1066984) (not e!1599128))))

(declare-fun call!157848 () Bool)

(assert (=> b!2526039 (= res!1066984 (not call!157848))))

(declare-fun b!2526040 () Bool)

(declare-fun e!1599127 () Bool)

(declare-fun lt!900483 () Bool)

(assert (=> b!2526040 (= e!1599127 (not lt!900483))))

(declare-fun b!2526041 () Bool)

(declare-fun e!1599125 () Bool)

(declare-fun e!1599124 () Bool)

(assert (=> b!2526041 (= e!1599125 e!1599124)))

(declare-fun res!1066988 () Bool)

(assert (=> b!2526041 (=> (not res!1066988) (not e!1599124))))

(assert (=> b!2526041 (= res!1066988 (not lt!900483))))

(declare-fun b!2526042 () Bool)

(declare-fun e!1599126 () Bool)

(assert (=> b!2526042 (= e!1599126 (not (= (head!5767 tl!4068) (c!403218 lt!900424))))))

(declare-fun bm!157843 () Bool)

(assert (=> bm!157843 (= call!157848 (isEmpty!16957 tl!4068))))

(declare-fun b!2526043 () Bool)

(declare-fun res!1066983 () Bool)

(assert (=> b!2526043 (=> (not res!1066983) (not e!1599128))))

(assert (=> b!2526043 (= res!1066983 (isEmpty!16957 (tail!4044 tl!4068)))))

(declare-fun b!2526045 () Bool)

(declare-fun res!1066981 () Bool)

(assert (=> b!2526045 (=> res!1066981 e!1599126)))

(assert (=> b!2526045 (= res!1066981 (not (isEmpty!16957 (tail!4044 tl!4068))))))

(declare-fun b!2526046 () Bool)

(declare-fun e!1599122 () Bool)

(assert (=> b!2526046 (= e!1599122 (nullable!2435 lt!900424))))

(declare-fun b!2526047 () Bool)

(declare-fun res!1066985 () Bool)

(assert (=> b!2526047 (=> res!1066985 e!1599125)))

(assert (=> b!2526047 (= res!1066985 (not (is-ElementMatch!7518 lt!900424)))))

(assert (=> b!2526047 (= e!1599127 e!1599125)))

(declare-fun b!2526048 () Bool)

(assert (=> b!2526048 (= e!1599122 (matchR!3505 (derivativeStep!2087 lt!900424 (head!5767 tl!4068)) (tail!4044 tl!4068)))))

(declare-fun b!2526049 () Bool)

(assert (=> b!2526049 (= e!1599124 e!1599126)))

(declare-fun res!1066987 () Bool)

(assert (=> b!2526049 (=> res!1066987 e!1599126)))

(assert (=> b!2526049 (= res!1066987 call!157848)))

(declare-fun b!2526050 () Bool)

(declare-fun res!1066982 () Bool)

(assert (=> b!2526050 (=> res!1066982 e!1599125)))

(assert (=> b!2526050 (= res!1066982 e!1599128)))

(declare-fun res!1066986 () Bool)

(assert (=> b!2526050 (=> (not res!1066986) (not e!1599128))))

(assert (=> b!2526050 (= res!1066986 lt!900483)))

(declare-fun b!2526044 () Bool)

(declare-fun e!1599123 () Bool)

(assert (=> b!2526044 (= e!1599123 e!1599127)))

(declare-fun c!403258 () Bool)

(assert (=> b!2526044 (= c!403258 (is-EmptyLang!7518 lt!900424))))

(declare-fun d!719025 () Bool)

(assert (=> d!719025 e!1599123))

(declare-fun c!403257 () Bool)

(assert (=> d!719025 (= c!403257 (is-EmptyExpr!7518 lt!900424))))

(assert (=> d!719025 (= lt!900483 e!1599122)))

(declare-fun c!403259 () Bool)

(assert (=> d!719025 (= c!403259 (isEmpty!16957 tl!4068))))

(assert (=> d!719025 (validRegex!3144 lt!900424)))

(assert (=> d!719025 (= (matchR!3505 lt!900424 tl!4068) lt!900483)))

(declare-fun b!2526051 () Bool)

(assert (=> b!2526051 (= e!1599123 (= lt!900483 call!157848))))

(declare-fun b!2526052 () Bool)

(assert (=> b!2526052 (= e!1599128 (= (head!5767 tl!4068) (c!403218 lt!900424)))))

(assert (= (and d!719025 c!403259) b!2526046))

(assert (= (and d!719025 (not c!403259)) b!2526048))

(assert (= (and d!719025 c!403257) b!2526051))

(assert (= (and d!719025 (not c!403257)) b!2526044))

(assert (= (and b!2526044 c!403258) b!2526040))

(assert (= (and b!2526044 (not c!403258)) b!2526047))

(assert (= (and b!2526047 (not res!1066985)) b!2526050))

(assert (= (and b!2526050 res!1066986) b!2526039))

(assert (= (and b!2526039 res!1066984) b!2526043))

(assert (= (and b!2526043 res!1066983) b!2526052))

(assert (= (and b!2526050 (not res!1066982)) b!2526041))

(assert (= (and b!2526041 res!1066988) b!2526049))

(assert (= (and b!2526049 (not res!1066987)) b!2526045))

(assert (= (and b!2526045 (not res!1066981)) b!2526042))

(assert (= (or b!2526051 b!2526039 b!2526049) bm!157843))

(declare-fun m!2879247 () Bool)

(assert (=> b!2526042 m!2879247))

(declare-fun m!2879249 () Bool)

(assert (=> d!719025 m!2879249))

(assert (=> d!719025 m!2879217))

(declare-fun m!2879251 () Bool)

(assert (=> b!2526043 m!2879251))

(assert (=> b!2526043 m!2879251))

(declare-fun m!2879253 () Bool)

(assert (=> b!2526043 m!2879253))

(assert (=> b!2526052 m!2879247))

(declare-fun m!2879255 () Bool)

(assert (=> b!2526046 m!2879255))

(assert (=> bm!157843 m!2879249))

(assert (=> b!2526045 m!2879251))

(assert (=> b!2526045 m!2879251))

(assert (=> b!2526045 m!2879253))

(assert (=> b!2526048 m!2879247))

(assert (=> b!2526048 m!2879247))

(declare-fun m!2879257 () Bool)

(assert (=> b!2526048 m!2879257))

(assert (=> b!2526048 m!2879251))

(assert (=> b!2526048 m!2879257))

(assert (=> b!2526048 m!2879251))

(declare-fun m!2879259 () Bool)

(assert (=> b!2526048 m!2879259))

(assert (=> b!2525872 d!719025))

(declare-fun b!2526053 () Bool)

(declare-fun res!1066992 () Bool)

(declare-fun e!1599135 () Bool)

(assert (=> b!2526053 (=> (not res!1066992) (not e!1599135))))

(declare-fun call!157849 () Bool)

(assert (=> b!2526053 (= res!1066992 (not call!157849))))

(declare-fun b!2526054 () Bool)

(declare-fun e!1599134 () Bool)

(declare-fun lt!900484 () Bool)

(assert (=> b!2526054 (= e!1599134 (not lt!900484))))

(declare-fun b!2526055 () Bool)

(declare-fun e!1599132 () Bool)

(declare-fun e!1599131 () Bool)

(assert (=> b!2526055 (= e!1599132 e!1599131)))

(declare-fun res!1066996 () Bool)

(assert (=> b!2526055 (=> (not res!1066996) (not e!1599131))))

(assert (=> b!2526055 (= res!1066996 (not lt!900484))))

(declare-fun b!2526056 () Bool)

(declare-fun e!1599133 () Bool)

(assert (=> b!2526056 (= e!1599133 (not (= (head!5767 tl!4068) (c!403218 lt!900423))))))

(declare-fun bm!157844 () Bool)

(assert (=> bm!157844 (= call!157849 (isEmpty!16957 tl!4068))))

(declare-fun b!2526057 () Bool)

(declare-fun res!1066991 () Bool)

(assert (=> b!2526057 (=> (not res!1066991) (not e!1599135))))

(assert (=> b!2526057 (= res!1066991 (isEmpty!16957 (tail!4044 tl!4068)))))

(declare-fun b!2526059 () Bool)

(declare-fun res!1066989 () Bool)

(assert (=> b!2526059 (=> res!1066989 e!1599133)))

(assert (=> b!2526059 (= res!1066989 (not (isEmpty!16957 (tail!4044 tl!4068))))))

(declare-fun b!2526060 () Bool)

(declare-fun e!1599129 () Bool)

(assert (=> b!2526060 (= e!1599129 (nullable!2435 lt!900423))))

(declare-fun b!2526061 () Bool)

(declare-fun res!1066993 () Bool)

(assert (=> b!2526061 (=> res!1066993 e!1599132)))

(assert (=> b!2526061 (= res!1066993 (not (is-ElementMatch!7518 lt!900423)))))

(assert (=> b!2526061 (= e!1599134 e!1599132)))

(declare-fun b!2526062 () Bool)

(assert (=> b!2526062 (= e!1599129 (matchR!3505 (derivativeStep!2087 lt!900423 (head!5767 tl!4068)) (tail!4044 tl!4068)))))

(declare-fun b!2526063 () Bool)

(assert (=> b!2526063 (= e!1599131 e!1599133)))

(declare-fun res!1066995 () Bool)

(assert (=> b!2526063 (=> res!1066995 e!1599133)))

(assert (=> b!2526063 (= res!1066995 call!157849)))

(declare-fun b!2526064 () Bool)

(declare-fun res!1066990 () Bool)

(assert (=> b!2526064 (=> res!1066990 e!1599132)))

(assert (=> b!2526064 (= res!1066990 e!1599135)))

(declare-fun res!1066994 () Bool)

(assert (=> b!2526064 (=> (not res!1066994) (not e!1599135))))

(assert (=> b!2526064 (= res!1066994 lt!900484)))

(declare-fun b!2526058 () Bool)

(declare-fun e!1599130 () Bool)

(assert (=> b!2526058 (= e!1599130 e!1599134)))

(declare-fun c!403261 () Bool)

(assert (=> b!2526058 (= c!403261 (is-EmptyLang!7518 lt!900423))))

(declare-fun d!719029 () Bool)

(assert (=> d!719029 e!1599130))

(declare-fun c!403260 () Bool)

(assert (=> d!719029 (= c!403260 (is-EmptyExpr!7518 lt!900423))))

(assert (=> d!719029 (= lt!900484 e!1599129)))

(declare-fun c!403262 () Bool)

(assert (=> d!719029 (= c!403262 (isEmpty!16957 tl!4068))))

(assert (=> d!719029 (validRegex!3144 lt!900423)))

(assert (=> d!719029 (= (matchR!3505 lt!900423 tl!4068) lt!900484)))

(declare-fun b!2526065 () Bool)

(assert (=> b!2526065 (= e!1599130 (= lt!900484 call!157849))))

(declare-fun b!2526066 () Bool)

(assert (=> b!2526066 (= e!1599135 (= (head!5767 tl!4068) (c!403218 lt!900423)))))

(assert (= (and d!719029 c!403262) b!2526060))

(assert (= (and d!719029 (not c!403262)) b!2526062))

(assert (= (and d!719029 c!403260) b!2526065))

(assert (= (and d!719029 (not c!403260)) b!2526058))

(assert (= (and b!2526058 c!403261) b!2526054))

(assert (= (and b!2526058 (not c!403261)) b!2526061))

(assert (= (and b!2526061 (not res!1066993)) b!2526064))

(assert (= (and b!2526064 res!1066994) b!2526053))

(assert (= (and b!2526053 res!1066992) b!2526057))

(assert (= (and b!2526057 res!1066991) b!2526066))

(assert (= (and b!2526064 (not res!1066990)) b!2526055))

(assert (= (and b!2526055 res!1066996) b!2526063))

(assert (= (and b!2526063 (not res!1066995)) b!2526059))

(assert (= (and b!2526059 (not res!1066989)) b!2526056))

(assert (= (or b!2526065 b!2526053 b!2526063) bm!157844))

(assert (=> b!2526056 m!2879247))

(assert (=> d!719029 m!2879249))

(assert (=> d!719029 m!2879233))

(assert (=> b!2526057 m!2879251))

(assert (=> b!2526057 m!2879251))

(assert (=> b!2526057 m!2879253))

(assert (=> b!2526066 m!2879247))

(declare-fun m!2879261 () Bool)

(assert (=> b!2526060 m!2879261))

(assert (=> bm!157844 m!2879249))

(assert (=> b!2526059 m!2879251))

(assert (=> b!2526059 m!2879251))

(assert (=> b!2526059 m!2879253))

(assert (=> b!2526062 m!2879247))

(assert (=> b!2526062 m!2879247))

(declare-fun m!2879263 () Bool)

(assert (=> b!2526062 m!2879263))

(assert (=> b!2526062 m!2879251))

(assert (=> b!2526062 m!2879263))

(assert (=> b!2526062 m!2879251))

(declare-fun m!2879265 () Bool)

(assert (=> b!2526062 m!2879265))

(assert (=> b!2525872 d!719029))

(declare-fun d!719031 () Bool)

(declare-fun nullableFct!677 (Regex!7518) Bool)

(assert (=> d!719031 (= (nullable!2435 (regOne!15548 r!27340)) (nullableFct!677 (regOne!15548 r!27340)))))

(declare-fun bs!469094 () Bool)

(assert (= bs!469094 d!719031))

(declare-fun m!2879267 () Bool)

(assert (=> bs!469094 m!2879267))

(assert (=> b!2525870 d!719031))

(declare-fun b!2526067 () Bool)

(declare-fun res!1067000 () Bool)

(declare-fun e!1599142 () Bool)

(assert (=> b!2526067 (=> (not res!1067000) (not e!1599142))))

(declare-fun call!157850 () Bool)

(assert (=> b!2526067 (= res!1067000 (not call!157850))))

(declare-fun b!2526068 () Bool)

(declare-fun e!1599141 () Bool)

(declare-fun lt!900485 () Bool)

(assert (=> b!2526068 (= e!1599141 (not lt!900485))))

(declare-fun b!2526069 () Bool)

(declare-fun e!1599139 () Bool)

(declare-fun e!1599138 () Bool)

(assert (=> b!2526069 (= e!1599139 e!1599138)))

(declare-fun res!1067004 () Bool)

(assert (=> b!2526069 (=> (not res!1067004) (not e!1599138))))

(assert (=> b!2526069 (= res!1067004 (not lt!900485))))

(declare-fun b!2526070 () Bool)

(declare-fun e!1599140 () Bool)

(assert (=> b!2526070 (= e!1599140 (not (= (head!5767 tl!4068) (c!403218 EmptyLang!7518))))))

(declare-fun bm!157845 () Bool)

(assert (=> bm!157845 (= call!157850 (isEmpty!16957 tl!4068))))

(declare-fun b!2526071 () Bool)

(declare-fun res!1066999 () Bool)

(assert (=> b!2526071 (=> (not res!1066999) (not e!1599142))))

(assert (=> b!2526071 (= res!1066999 (isEmpty!16957 (tail!4044 tl!4068)))))

(declare-fun b!2526073 () Bool)

(declare-fun res!1066997 () Bool)

(assert (=> b!2526073 (=> res!1066997 e!1599140)))

(assert (=> b!2526073 (= res!1066997 (not (isEmpty!16957 (tail!4044 tl!4068))))))

(declare-fun b!2526074 () Bool)

(declare-fun e!1599136 () Bool)

(assert (=> b!2526074 (= e!1599136 (nullable!2435 EmptyLang!7518))))

(declare-fun b!2526075 () Bool)

(declare-fun res!1067001 () Bool)

(assert (=> b!2526075 (=> res!1067001 e!1599139)))

(assert (=> b!2526075 (= res!1067001 (not (is-ElementMatch!7518 EmptyLang!7518)))))

(assert (=> b!2526075 (= e!1599141 e!1599139)))

(declare-fun b!2526076 () Bool)

(assert (=> b!2526076 (= e!1599136 (matchR!3505 (derivativeStep!2087 EmptyLang!7518 (head!5767 tl!4068)) (tail!4044 tl!4068)))))

(declare-fun b!2526077 () Bool)

(assert (=> b!2526077 (= e!1599138 e!1599140)))

(declare-fun res!1067003 () Bool)

(assert (=> b!2526077 (=> res!1067003 e!1599140)))

(assert (=> b!2526077 (= res!1067003 call!157850)))

(declare-fun b!2526078 () Bool)

(declare-fun res!1066998 () Bool)

(assert (=> b!2526078 (=> res!1066998 e!1599139)))

(assert (=> b!2526078 (= res!1066998 e!1599142)))

(declare-fun res!1067002 () Bool)

(assert (=> b!2526078 (=> (not res!1067002) (not e!1599142))))

(assert (=> b!2526078 (= res!1067002 lt!900485)))

(declare-fun b!2526072 () Bool)

(declare-fun e!1599137 () Bool)

(assert (=> b!2526072 (= e!1599137 e!1599141)))

(declare-fun c!403264 () Bool)

(assert (=> b!2526072 (= c!403264 (is-EmptyLang!7518 EmptyLang!7518))))

(declare-fun d!719033 () Bool)

(assert (=> d!719033 e!1599137))

(declare-fun c!403263 () Bool)

(assert (=> d!719033 (= c!403263 (is-EmptyExpr!7518 EmptyLang!7518))))

(assert (=> d!719033 (= lt!900485 e!1599136)))

(declare-fun c!403265 () Bool)

(assert (=> d!719033 (= c!403265 (isEmpty!16957 tl!4068))))

(assert (=> d!719033 (validRegex!3144 EmptyLang!7518)))

(assert (=> d!719033 (= (matchR!3505 EmptyLang!7518 tl!4068) lt!900485)))

(declare-fun b!2526079 () Bool)

(assert (=> b!2526079 (= e!1599137 (= lt!900485 call!157850))))

(declare-fun b!2526080 () Bool)

(assert (=> b!2526080 (= e!1599142 (= (head!5767 tl!4068) (c!403218 EmptyLang!7518)))))

(assert (= (and d!719033 c!403265) b!2526074))

(assert (= (and d!719033 (not c!403265)) b!2526076))

(assert (= (and d!719033 c!403263) b!2526079))

(assert (= (and d!719033 (not c!403263)) b!2526072))

(assert (= (and b!2526072 c!403264) b!2526068))

(assert (= (and b!2526072 (not c!403264)) b!2526075))

(assert (= (and b!2526075 (not res!1067001)) b!2526078))

(assert (= (and b!2526078 res!1067002) b!2526067))

(assert (= (and b!2526067 res!1067000) b!2526071))

(assert (= (and b!2526071 res!1066999) b!2526080))

(assert (= (and b!2526078 (not res!1066998)) b!2526069))

(assert (= (and b!2526069 res!1067004) b!2526077))

(assert (= (and b!2526077 (not res!1067003)) b!2526073))

(assert (= (and b!2526073 (not res!1066997)) b!2526070))

(assert (= (or b!2526079 b!2526067 b!2526077) bm!157845))

(assert (=> b!2526070 m!2879247))

(assert (=> d!719033 m!2879249))

(assert (=> d!719033 m!2879193))

(assert (=> b!2526071 m!2879251))

(assert (=> b!2526071 m!2879251))

(assert (=> b!2526071 m!2879253))

(assert (=> b!2526080 m!2879247))

(declare-fun m!2879269 () Bool)

(assert (=> b!2526074 m!2879269))

(assert (=> bm!157845 m!2879249))

(assert (=> b!2526073 m!2879251))

(assert (=> b!2526073 m!2879251))

(assert (=> b!2526073 m!2879253))

(assert (=> b!2526076 m!2879247))

(assert (=> b!2526076 m!2879247))

(declare-fun m!2879271 () Bool)

(assert (=> b!2526076 m!2879271))

(assert (=> b!2526076 m!2879251))

(assert (=> b!2526076 m!2879271))

(assert (=> b!2526076 m!2879251))

(declare-fun m!2879273 () Bool)

(assert (=> b!2526076 m!2879273))

(assert (=> b!2525875 d!719033))

(declare-fun d!719035 () Bool)

(assert (=> d!719035 (= (nullable!2435 (derivative!213 (derivativeStep!2087 r!27340 c!14016) tl!4068)) (nullableFct!677 (derivative!213 (derivativeStep!2087 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469095 () Bool)

(assert (= bs!469095 d!719035))

(assert (=> bs!469095 m!2879123))

(declare-fun m!2879275 () Bool)

(assert (=> bs!469095 m!2879275))

(assert (=> b!2525868 d!719035))

(declare-fun d!719037 () Bool)

(declare-fun lt!900486 () Regex!7518)

(assert (=> d!719037 (validRegex!3144 lt!900486)))

(declare-fun e!1599143 () Regex!7518)

(assert (=> d!719037 (= lt!900486 e!1599143)))

(declare-fun c!403266 () Bool)

(assert (=> d!719037 (= c!403266 (is-Cons!29483 tl!4068))))

(assert (=> d!719037 (validRegex!3144 (derivativeStep!2087 r!27340 c!14016))))

(assert (=> d!719037 (= (derivative!213 (derivativeStep!2087 r!27340 c!14016) tl!4068) lt!900486)))

(declare-fun b!2526081 () Bool)

(assert (=> b!2526081 (= e!1599143 (derivative!213 (derivativeStep!2087 (derivativeStep!2087 r!27340 c!14016) (h!34903 tl!4068)) (t!211282 tl!4068)))))

(declare-fun b!2526082 () Bool)

(assert (=> b!2526082 (= e!1599143 (derivativeStep!2087 r!27340 c!14016))))

(assert (= (and d!719037 c!403266) b!2526081))

(assert (= (and d!719037 (not c!403266)) b!2526082))

(declare-fun m!2879277 () Bool)

(assert (=> d!719037 m!2879277))

(assert (=> d!719037 m!2879121))

(declare-fun m!2879279 () Bool)

(assert (=> d!719037 m!2879279))

(assert (=> b!2526081 m!2879121))

(declare-fun m!2879281 () Bool)

(assert (=> b!2526081 m!2879281))

(assert (=> b!2526081 m!2879281))

(declare-fun m!2879283 () Bool)

(assert (=> b!2526081 m!2879283))

(assert (=> b!2525868 d!719037))

(declare-fun b!2526089 () Bool)

(declare-fun e!1599151 () Regex!7518)

(declare-fun call!157853 () Regex!7518)

(declare-fun call!157851 () Regex!7518)

(assert (=> b!2526089 (= e!1599151 (Union!7518 call!157853 call!157851))))

(declare-fun c!403270 () Bool)

(declare-fun bm!157846 () Bool)

(assert (=> bm!157846 (= call!157853 (derivativeStep!2087 (ite c!403270 (regOne!15549 r!27340) (regTwo!15548 r!27340)) c!14016))))

(declare-fun bm!157847 () Bool)

(declare-fun call!157852 () Regex!7518)

(assert (=> bm!157847 (= call!157852 call!157851)))

(declare-fun b!2526090 () Bool)

(declare-fun e!1599150 () Regex!7518)

(assert (=> b!2526090 (= e!1599150 (ite (= c!14016 (c!403218 r!27340)) EmptyExpr!7518 EmptyLang!7518))))

(declare-fun b!2526091 () Bool)

(declare-fun e!1599148 () Regex!7518)

(assert (=> b!2526091 (= e!1599148 (Concat!12214 call!157852 r!27340))))

(declare-fun b!2526092 () Bool)

(declare-fun call!157854 () Regex!7518)

(declare-fun e!1599149 () Regex!7518)

(assert (=> b!2526092 (= e!1599149 (Union!7518 (Concat!12214 call!157854 (regTwo!15548 r!27340)) call!157853))))

(declare-fun b!2526093 () Bool)

(declare-fun e!1599152 () Regex!7518)

(assert (=> b!2526093 (= e!1599152 e!1599150)))

(declare-fun c!403271 () Bool)

(assert (=> b!2526093 (= c!403271 (is-ElementMatch!7518 r!27340))))

(declare-fun b!2526094 () Bool)

(assert (=> b!2526094 (= e!1599151 e!1599148)))

(declare-fun c!403272 () Bool)

(assert (=> b!2526094 (= c!403272 (is-Star!7518 r!27340))))

(declare-fun bm!157848 () Bool)

(assert (=> bm!157848 (= call!157854 call!157852)))

(declare-fun d!719039 () Bool)

(declare-fun lt!900487 () Regex!7518)

(assert (=> d!719039 (validRegex!3144 lt!900487)))

(assert (=> d!719039 (= lt!900487 e!1599152)))

(declare-fun c!403269 () Bool)

(assert (=> d!719039 (= c!403269 (or (is-EmptyExpr!7518 r!27340) (is-EmptyLang!7518 r!27340)))))

(assert (=> d!719039 (validRegex!3144 r!27340)))

(assert (=> d!719039 (= (derivativeStep!2087 r!27340 c!14016) lt!900487)))

(declare-fun bm!157849 () Bool)

(assert (=> bm!157849 (= call!157851 (derivativeStep!2087 (ite c!403270 (regTwo!15549 r!27340) (ite c!403272 (reg!7847 r!27340) (regOne!15548 r!27340))) c!14016))))

(declare-fun b!2526095 () Bool)

(assert (=> b!2526095 (= c!403270 (is-Union!7518 r!27340))))

(assert (=> b!2526095 (= e!1599150 e!1599151)))

(declare-fun b!2526096 () Bool)

(assert (=> b!2526096 (= e!1599149 (Union!7518 (Concat!12214 call!157854 (regTwo!15548 r!27340)) EmptyLang!7518))))

(declare-fun b!2526097 () Bool)

(declare-fun c!403273 () Bool)

(assert (=> b!2526097 (= c!403273 (nullable!2435 (regOne!15548 r!27340)))))

(assert (=> b!2526097 (= e!1599148 e!1599149)))

(declare-fun b!2526098 () Bool)

(assert (=> b!2526098 (= e!1599152 EmptyLang!7518)))

(assert (= (and d!719039 c!403269) b!2526098))

(assert (= (and d!719039 (not c!403269)) b!2526093))

(assert (= (and b!2526093 c!403271) b!2526090))

(assert (= (and b!2526093 (not c!403271)) b!2526095))

(assert (= (and b!2526095 c!403270) b!2526089))

(assert (= (and b!2526095 (not c!403270)) b!2526094))

(assert (= (and b!2526094 c!403272) b!2526091))

(assert (= (and b!2526094 (not c!403272)) b!2526097))

(assert (= (and b!2526097 c!403273) b!2526092))

(assert (= (and b!2526097 (not c!403273)) b!2526096))

(assert (= (or b!2526092 b!2526096) bm!157848))

(assert (= (or b!2526091 bm!157848) bm!157847))

(assert (= (or b!2526089 bm!157847) bm!157849))

(assert (= (or b!2526089 b!2526092) bm!157846))

(declare-fun m!2879285 () Bool)

(assert (=> bm!157846 m!2879285))

(declare-fun m!2879287 () Bool)

(assert (=> d!719039 m!2879287))

(assert (=> d!719039 m!2879129))

(declare-fun m!2879289 () Bool)

(assert (=> bm!157849 m!2879289))

(assert (=> b!2526097 m!2879127))

(assert (=> b!2525868 d!719039))

(declare-fun b!2526129 () Bool)

(declare-fun e!1599178 () Bool)

(declare-fun call!157867 () Bool)

(assert (=> b!2526129 (= e!1599178 call!157867)))

(declare-fun c!403280 () Bool)

(declare-fun bm!157862 () Bool)

(declare-fun c!403281 () Bool)

(assert (=> bm!157862 (= call!157867 (validRegex!3144 (ite c!403281 (reg!7847 r!27340) (ite c!403280 (regOne!15549 r!27340) (regTwo!15548 r!27340)))))))

(declare-fun b!2526130 () Bool)

(declare-fun res!1067025 () Bool)

(declare-fun e!1599181 () Bool)

(assert (=> b!2526130 (=> (not res!1067025) (not e!1599181))))

(declare-fun call!157868 () Bool)

(assert (=> b!2526130 (= res!1067025 call!157868)))

(declare-fun e!1599182 () Bool)

(assert (=> b!2526130 (= e!1599182 e!1599181)))

(declare-fun b!2526131 () Bool)

(declare-fun e!1599179 () Bool)

(declare-fun e!1599177 () Bool)

(assert (=> b!2526131 (= e!1599179 e!1599177)))

(assert (=> b!2526131 (= c!403281 (is-Star!7518 r!27340))))

(declare-fun b!2526132 () Bool)

(assert (=> b!2526132 (= e!1599177 e!1599182)))

(assert (=> b!2526132 (= c!403280 (is-Union!7518 r!27340))))

(declare-fun b!2526133 () Bool)

(declare-fun e!1599183 () Bool)

(declare-fun e!1599180 () Bool)

(assert (=> b!2526133 (= e!1599183 e!1599180)))

(declare-fun res!1067026 () Bool)

(assert (=> b!2526133 (=> (not res!1067026) (not e!1599180))))

(declare-fun call!157869 () Bool)

(assert (=> b!2526133 (= res!1067026 call!157869)))

(declare-fun b!2526134 () Bool)

(assert (=> b!2526134 (= e!1599180 call!157868)))

(declare-fun b!2526135 () Bool)

(assert (=> b!2526135 (= e!1599181 call!157869)))

(declare-fun d!719041 () Bool)

(declare-fun res!1067027 () Bool)

(assert (=> d!719041 (=> res!1067027 e!1599179)))

(assert (=> d!719041 (= res!1067027 (is-ElementMatch!7518 r!27340))))

(assert (=> d!719041 (= (validRegex!3144 r!27340) e!1599179)))

(declare-fun b!2526136 () Bool)

(declare-fun res!1067028 () Bool)

(assert (=> b!2526136 (=> res!1067028 e!1599183)))

(assert (=> b!2526136 (= res!1067028 (not (is-Concat!12214 r!27340)))))

(assert (=> b!2526136 (= e!1599182 e!1599183)))

(declare-fun b!2526137 () Bool)

(assert (=> b!2526137 (= e!1599177 e!1599178)))

(declare-fun res!1067029 () Bool)

(assert (=> b!2526137 (= res!1067029 (not (nullable!2435 (reg!7847 r!27340))))))

(assert (=> b!2526137 (=> (not res!1067029) (not e!1599178))))

(declare-fun bm!157863 () Bool)

(assert (=> bm!157863 (= call!157868 call!157867)))

(declare-fun bm!157864 () Bool)

(assert (=> bm!157864 (= call!157869 (validRegex!3144 (ite c!403280 (regTwo!15549 r!27340) (regOne!15548 r!27340))))))

(assert (= (and d!719041 (not res!1067027)) b!2526131))

(assert (= (and b!2526131 c!403281) b!2526137))

(assert (= (and b!2526131 (not c!403281)) b!2526132))

(assert (= (and b!2526137 res!1067029) b!2526129))

(assert (= (and b!2526132 c!403280) b!2526130))

(assert (= (and b!2526132 (not c!403280)) b!2526136))

(assert (= (and b!2526130 res!1067025) b!2526135))

(assert (= (and b!2526136 (not res!1067028)) b!2526133))

(assert (= (and b!2526133 res!1067026) b!2526134))

(assert (= (or b!2526130 b!2526134) bm!157863))

(assert (= (or b!2526135 b!2526133) bm!157864))

(assert (= (or b!2526129 bm!157863) bm!157862))

(declare-fun m!2879291 () Bool)

(assert (=> bm!157862 m!2879291))

(declare-fun m!2879293 () Bool)

(assert (=> b!2526137 m!2879293))

(declare-fun m!2879295 () Bool)

(assert (=> bm!157864 m!2879295))

(assert (=> start!246042 d!719041))

(declare-fun d!719043 () Bool)

(assert (=> d!719043 (isDefined!4709 (findConcatSeparation!909 lt!900425 (regTwo!15548 r!27340) Nil!29483 tl!4068 tl!4068))))

(declare-fun lt!900490 () Unit!43261)

(declare-fun choose!14978 (Regex!7518 Regex!7518 List!29583) Unit!43261)

(assert (=> d!719043 (= lt!900490 (choose!14978 lt!900425 (regTwo!15548 r!27340) tl!4068))))

(assert (=> d!719043 (validRegex!3144 lt!900425)))

(assert (=> d!719043 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!191 lt!900425 (regTwo!15548 r!27340) tl!4068) lt!900490)))

(declare-fun bs!469096 () Bool)

(assert (= bs!469096 d!719043))

(assert (=> bs!469096 m!2879133))

(assert (=> bs!469096 m!2879133))

(declare-fun m!2879303 () Bool)

(assert (=> bs!469096 m!2879303))

(declare-fun m!2879305 () Bool)

(assert (=> bs!469096 m!2879305))

(declare-fun m!2879307 () Bool)

(assert (=> bs!469096 m!2879307))

(assert (=> b!2525874 d!719043))

(declare-fun d!719047 () Bool)

(declare-fun isEmpty!16958 (Option!5887) Bool)

(assert (=> d!719047 (= (isDefined!4709 lt!900427) (not (isEmpty!16958 lt!900427)))))

(declare-fun bs!469097 () Bool)

(assert (= bs!469097 d!719047))

(declare-fun m!2879309 () Bool)

(assert (=> bs!469097 m!2879309))

(assert (=> b!2525874 d!719047))

(declare-fun b!2526157 () Bool)

(declare-fun res!1067039 () Bool)

(declare-fun e!1599196 () Bool)

(assert (=> b!2526157 (=> (not res!1067039) (not e!1599196))))

(declare-fun lt!900493 () List!29583)

(declare-fun size!22927 (List!29583) Int)

(assert (=> b!2526157 (= res!1067039 (= (size!22927 lt!900493) (+ (size!22927 (_1!17309 lt!900426)) (size!22927 (_2!17309 lt!900426)))))))

(declare-fun d!719049 () Bool)

(assert (=> d!719049 e!1599196))

(declare-fun res!1067040 () Bool)

(assert (=> d!719049 (=> (not res!1067040) (not e!1599196))))

(declare-fun content!4045 (List!29583) (Set C!15194))

(assert (=> d!719049 (= res!1067040 (= (content!4045 lt!900493) (set.union (content!4045 (_1!17309 lt!900426)) (content!4045 (_2!17309 lt!900426)))))))

(declare-fun e!1599195 () List!29583)

(assert (=> d!719049 (= lt!900493 e!1599195)))

(declare-fun c!403286 () Bool)

(assert (=> d!719049 (= c!403286 (is-Nil!29483 (_1!17309 lt!900426)))))

(assert (=> d!719049 (= (++!7237 (_1!17309 lt!900426) (_2!17309 lt!900426)) lt!900493)))

(declare-fun b!2526156 () Bool)

(assert (=> b!2526156 (= e!1599195 (Cons!29483 (h!34903 (_1!17309 lt!900426)) (++!7237 (t!211282 (_1!17309 lt!900426)) (_2!17309 lt!900426))))))

(declare-fun b!2526155 () Bool)

(assert (=> b!2526155 (= e!1599195 (_2!17309 lt!900426))))

(declare-fun b!2526158 () Bool)

(assert (=> b!2526158 (= e!1599196 (or (not (= (_2!17309 lt!900426) Nil!29483)) (= lt!900493 (_1!17309 lt!900426))))))

(assert (= (and d!719049 c!403286) b!2526155))

(assert (= (and d!719049 (not c!403286)) b!2526156))

(assert (= (and d!719049 res!1067040) b!2526157))

(assert (= (and b!2526157 res!1067039) b!2526158))

(declare-fun m!2879311 () Bool)

(assert (=> b!2526157 m!2879311))

(declare-fun m!2879313 () Bool)

(assert (=> b!2526157 m!2879313))

(declare-fun m!2879315 () Bool)

(assert (=> b!2526157 m!2879315))

(declare-fun m!2879317 () Bool)

(assert (=> d!719049 m!2879317))

(declare-fun m!2879319 () Bool)

(assert (=> d!719049 m!2879319))

(declare-fun m!2879321 () Bool)

(assert (=> d!719049 m!2879321))

(declare-fun m!2879323 () Bool)

(assert (=> b!2526156 m!2879323))

(assert (=> b!2525874 d!719049))

(declare-fun d!719051 () Bool)

(assert (=> d!719051 (= (get!9225 lt!900427) (v!31819 lt!900427))))

(assert (=> b!2525874 d!719051))

(declare-fun b!2526197 () Bool)

(declare-fun e!1599218 () Bool)

(assert (=> b!2526197 (= e!1599218 (matchR!3505 (regTwo!15548 r!27340) tl!4068))))

(declare-fun b!2526198 () Bool)

(declare-fun lt!900502 () Unit!43261)

(declare-fun lt!900503 () Unit!43261)

(assert (=> b!2526198 (= lt!900502 lt!900503)))

(assert (=> b!2526198 (= (++!7237 (++!7237 Nil!29483 (Cons!29483 (h!34903 tl!4068) Nil!29483)) (t!211282 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!778 (List!29583 C!15194 List!29583 List!29583) Unit!43261)

(assert (=> b!2526198 (= lt!900503 (lemmaMoveElementToOtherListKeepsConcatEq!778 Nil!29483 (h!34903 tl!4068) (t!211282 tl!4068) tl!4068))))

(declare-fun e!1599219 () Option!5887)

(assert (=> b!2526198 (= e!1599219 (findConcatSeparation!909 lt!900425 (regTwo!15548 r!27340) (++!7237 Nil!29483 (Cons!29483 (h!34903 tl!4068) Nil!29483)) (t!211282 tl!4068) tl!4068))))

(declare-fun b!2526199 () Bool)

(assert (=> b!2526199 (= e!1599219 None!5886)))

(declare-fun b!2526200 () Bool)

(declare-fun res!1067053 () Bool)

(declare-fun e!1599221 () Bool)

(assert (=> b!2526200 (=> (not res!1067053) (not e!1599221))))

(declare-fun lt!900504 () Option!5887)

(assert (=> b!2526200 (= res!1067053 (matchR!3505 lt!900425 (_1!17309 (get!9225 lt!900504))))))

(declare-fun b!2526201 () Bool)

(declare-fun e!1599217 () Option!5887)

(assert (=> b!2526201 (= e!1599217 e!1599219)))

(declare-fun c!403302 () Bool)

(assert (=> b!2526201 (= c!403302 (is-Nil!29483 tl!4068))))

(declare-fun b!2526202 () Bool)

(assert (=> b!2526202 (= e!1599221 (= (++!7237 (_1!17309 (get!9225 lt!900504)) (_2!17309 (get!9225 lt!900504))) tl!4068))))

(declare-fun b!2526203 () Bool)

(declare-fun res!1067054 () Bool)

(assert (=> b!2526203 (=> (not res!1067054) (not e!1599221))))

(assert (=> b!2526203 (= res!1067054 (matchR!3505 (regTwo!15548 r!27340) (_2!17309 (get!9225 lt!900504))))))

(declare-fun d!719053 () Bool)

(declare-fun e!1599220 () Bool)

(assert (=> d!719053 e!1599220))

(declare-fun res!1067051 () Bool)

(assert (=> d!719053 (=> res!1067051 e!1599220)))

(assert (=> d!719053 (= res!1067051 e!1599221)))

(declare-fun res!1067055 () Bool)

(assert (=> d!719053 (=> (not res!1067055) (not e!1599221))))

(assert (=> d!719053 (= res!1067055 (isDefined!4709 lt!900504))))

(assert (=> d!719053 (= lt!900504 e!1599217)))

(declare-fun c!403301 () Bool)

(assert (=> d!719053 (= c!403301 e!1599218)))

(declare-fun res!1067052 () Bool)

(assert (=> d!719053 (=> (not res!1067052) (not e!1599218))))

(assert (=> d!719053 (= res!1067052 (matchR!3505 lt!900425 Nil!29483))))

(assert (=> d!719053 (validRegex!3144 lt!900425)))

(assert (=> d!719053 (= (findConcatSeparation!909 lt!900425 (regTwo!15548 r!27340) Nil!29483 tl!4068 tl!4068) lt!900504)))

(declare-fun b!2526204 () Bool)

(assert (=> b!2526204 (= e!1599220 (not (isDefined!4709 lt!900504)))))

(declare-fun b!2526205 () Bool)

(assert (=> b!2526205 (= e!1599217 (Some!5886 (tuple2!29535 Nil!29483 tl!4068)))))

(assert (= (and d!719053 res!1067052) b!2526197))

(assert (= (and d!719053 c!403301) b!2526205))

(assert (= (and d!719053 (not c!403301)) b!2526201))

(assert (= (and b!2526201 c!403302) b!2526199))

(assert (= (and b!2526201 (not c!403302)) b!2526198))

(assert (= (and d!719053 res!1067055) b!2526200))

(assert (= (and b!2526200 res!1067053) b!2526203))

(assert (= (and b!2526203 res!1067054) b!2526202))

(assert (= (and d!719053 (not res!1067051)) b!2526204))

(declare-fun m!2879325 () Bool)

(assert (=> b!2526204 m!2879325))

(assert (=> d!719053 m!2879325))

(declare-fun m!2879327 () Bool)

(assert (=> d!719053 m!2879327))

(assert (=> d!719053 m!2879307))

(declare-fun m!2879329 () Bool)

(assert (=> b!2526202 m!2879329))

(declare-fun m!2879331 () Bool)

(assert (=> b!2526202 m!2879331))

(declare-fun m!2879333 () Bool)

(assert (=> b!2526198 m!2879333))

(assert (=> b!2526198 m!2879333))

(declare-fun m!2879335 () Bool)

(assert (=> b!2526198 m!2879335))

(declare-fun m!2879337 () Bool)

(assert (=> b!2526198 m!2879337))

(assert (=> b!2526198 m!2879333))

(declare-fun m!2879339 () Bool)

(assert (=> b!2526198 m!2879339))

(assert (=> b!2526200 m!2879329))

(declare-fun m!2879341 () Bool)

(assert (=> b!2526200 m!2879341))

(declare-fun m!2879343 () Bool)

(assert (=> b!2526197 m!2879343))

(assert (=> b!2526203 m!2879329))

(declare-fun m!2879345 () Bool)

(assert (=> b!2526203 m!2879345))

(assert (=> b!2525874 d!719053))

(declare-fun b!2526218 () Bool)

(declare-fun e!1599224 () Bool)

(declare-fun tp!806669 () Bool)

(assert (=> b!2526218 (= e!1599224 tp!806669)))

(assert (=> b!2525867 (= tp!806635 e!1599224)))

(declare-fun b!2526219 () Bool)

(declare-fun tp!806665 () Bool)

(declare-fun tp!806667 () Bool)

(assert (=> b!2526219 (= e!1599224 (and tp!806665 tp!806667))))

(declare-fun b!2526216 () Bool)

(assert (=> b!2526216 (= e!1599224 tp_is_empty!12891)))

(declare-fun b!2526217 () Bool)

(declare-fun tp!806668 () Bool)

(declare-fun tp!806666 () Bool)

(assert (=> b!2526217 (= e!1599224 (and tp!806668 tp!806666))))

(assert (= (and b!2525867 (is-ElementMatch!7518 (regOne!15549 r!27340))) b!2526216))

(assert (= (and b!2525867 (is-Concat!12214 (regOne!15549 r!27340))) b!2526217))

(assert (= (and b!2525867 (is-Star!7518 (regOne!15549 r!27340))) b!2526218))

(assert (= (and b!2525867 (is-Union!7518 (regOne!15549 r!27340))) b!2526219))

(declare-fun b!2526222 () Bool)

(declare-fun e!1599225 () Bool)

(declare-fun tp!806674 () Bool)

(assert (=> b!2526222 (= e!1599225 tp!806674)))

(assert (=> b!2525867 (= tp!806636 e!1599225)))

(declare-fun b!2526223 () Bool)

(declare-fun tp!806670 () Bool)

(declare-fun tp!806672 () Bool)

(assert (=> b!2526223 (= e!1599225 (and tp!806670 tp!806672))))

(declare-fun b!2526220 () Bool)

(assert (=> b!2526220 (= e!1599225 tp_is_empty!12891)))

(declare-fun b!2526221 () Bool)

(declare-fun tp!806673 () Bool)

(declare-fun tp!806671 () Bool)

(assert (=> b!2526221 (= e!1599225 (and tp!806673 tp!806671))))

(assert (= (and b!2525867 (is-ElementMatch!7518 (regTwo!15549 r!27340))) b!2526220))

(assert (= (and b!2525867 (is-Concat!12214 (regTwo!15549 r!27340))) b!2526221))

(assert (= (and b!2525867 (is-Star!7518 (regTwo!15549 r!27340))) b!2526222))

(assert (= (and b!2525867 (is-Union!7518 (regTwo!15549 r!27340))) b!2526223))

(declare-fun b!2526226 () Bool)

(declare-fun e!1599226 () Bool)

(declare-fun tp!806679 () Bool)

(assert (=> b!2526226 (= e!1599226 tp!806679)))

(assert (=> b!2525876 (= tp!806632 e!1599226)))

(declare-fun b!2526227 () Bool)

(declare-fun tp!806675 () Bool)

(declare-fun tp!806677 () Bool)

(assert (=> b!2526227 (= e!1599226 (and tp!806675 tp!806677))))

(declare-fun b!2526224 () Bool)

(assert (=> b!2526224 (= e!1599226 tp_is_empty!12891)))

(declare-fun b!2526225 () Bool)

(declare-fun tp!806678 () Bool)

(declare-fun tp!806676 () Bool)

(assert (=> b!2526225 (= e!1599226 (and tp!806678 tp!806676))))

(assert (= (and b!2525876 (is-ElementMatch!7518 (regOne!15548 r!27340))) b!2526224))

(assert (= (and b!2525876 (is-Concat!12214 (regOne!15548 r!27340))) b!2526225))

(assert (= (and b!2525876 (is-Star!7518 (regOne!15548 r!27340))) b!2526226))

(assert (= (and b!2525876 (is-Union!7518 (regOne!15548 r!27340))) b!2526227))

(declare-fun b!2526230 () Bool)

(declare-fun e!1599228 () Bool)

(declare-fun tp!806684 () Bool)

(assert (=> b!2526230 (= e!1599228 tp!806684)))

(assert (=> b!2525876 (= tp!806631 e!1599228)))

(declare-fun b!2526231 () Bool)

(declare-fun tp!806680 () Bool)

(declare-fun tp!806682 () Bool)

(assert (=> b!2526231 (= e!1599228 (and tp!806680 tp!806682))))

(declare-fun b!2526228 () Bool)

(assert (=> b!2526228 (= e!1599228 tp_is_empty!12891)))

(declare-fun b!2526229 () Bool)

(declare-fun tp!806683 () Bool)

(declare-fun tp!806681 () Bool)

(assert (=> b!2526229 (= e!1599228 (and tp!806683 tp!806681))))

(assert (= (and b!2525876 (is-ElementMatch!7518 (regTwo!15548 r!27340))) b!2526228))

(assert (= (and b!2525876 (is-Concat!12214 (regTwo!15548 r!27340))) b!2526229))

(assert (= (and b!2525876 (is-Star!7518 (regTwo!15548 r!27340))) b!2526230))

(assert (= (and b!2525876 (is-Union!7518 (regTwo!15548 r!27340))) b!2526231))

(declare-fun b!2526244 () Bool)

(declare-fun e!1599233 () Bool)

(declare-fun tp!806689 () Bool)

(assert (=> b!2526244 (= e!1599233 tp!806689)))

(assert (=> b!2525871 (= tp!806633 e!1599233)))

(declare-fun b!2526245 () Bool)

(declare-fun tp!806685 () Bool)

(declare-fun tp!806687 () Bool)

(assert (=> b!2526245 (= e!1599233 (and tp!806685 tp!806687))))

(declare-fun b!2526242 () Bool)

(assert (=> b!2526242 (= e!1599233 tp_is_empty!12891)))

(declare-fun b!2526243 () Bool)

(declare-fun tp!806688 () Bool)

(declare-fun tp!806686 () Bool)

(assert (=> b!2526243 (= e!1599233 (and tp!806688 tp!806686))))

(assert (= (and b!2525871 (is-ElementMatch!7518 (reg!7847 r!27340))) b!2526242))

(assert (= (and b!2525871 (is-Concat!12214 (reg!7847 r!27340))) b!2526243))

(assert (= (and b!2525871 (is-Star!7518 (reg!7847 r!27340))) b!2526244))

(assert (= (and b!2525871 (is-Union!7518 (reg!7847 r!27340))) b!2526245))

(declare-fun b!2526250 () Bool)

(declare-fun e!1599236 () Bool)

(declare-fun tp!806692 () Bool)

(assert (=> b!2526250 (= e!1599236 (and tp_is_empty!12891 tp!806692))))

(assert (=> b!2525873 (= tp!806634 e!1599236)))

(assert (= (and b!2525873 (is-Cons!29483 (t!211282 tl!4068))) b!2526250))

(push 1)

(assert (not b!2526243))

(assert (not d!719043))

(assert (not b!2526245))

(assert (not bm!157843))

(assert (not b!2526219))

(assert (not b!2526157))

(assert (not d!719023))

(assert (not b!2526043))

(assert (not b!2526045))

(assert (not b!2526137))

(assert (not b!2526226))

(assert (not d!719047))

(assert (not b!2525939))

(assert (not b!2526046))

(assert (not d!719039))

(assert (not bm!157862))

(assert (not bm!157833))

(assert (not d!719017))

(assert (not b!2526070))

(assert (not b!2526052))

(assert (not d!719029))

(assert (not b!2526080))

(assert (not b!2525945))

(assert (not b!2526048))

(assert (not bm!157836))

(assert (not b!2526223))

(assert (not b!2526250))

(assert (not b!2526076))

(assert (not b!2526016))

(assert (not b!2526230))

(assert (not b!2526042))

(assert (not d!719053))

(assert (not b!2526198))

(assert (not b!2526081))

(assert (not b!2526222))

(assert (not b!2526062))

(assert (not b!2526097))

(assert (not d!719033))

(assert (not b!2526229))

(assert (not b!2526231))

(assert (not b!2526073))

(assert (not b!2526060))

(assert (not b!2526221))

(assert (not bm!157846))

(assert (not bm!157841))

(assert (not b!2526217))

(assert (not b!2526074))

(assert (not b!2526197))

(assert (not bm!157845))

(assert (not b!2526059))

(assert (not b!2526066))

(assert (not b!2526200))

(assert (not b!2526007))

(assert (not b!2526244))

(assert (not b!2526012))

(assert (not bm!157849))

(assert (not b!2526009))

(assert (not b!2526057))

(assert (not d!719031))

(assert (not b!2526218))

(assert (not b!2526037))

(assert (not d!719019))

(assert (not b!2526056))

(assert (not b!2526071))

(assert (not d!719021))

(assert (not bm!157844))

(assert (not d!719015))

(assert (not b!2526225))

(assert (not b!2526006))

(assert (not d!719049))

(assert (not b!2526227))

(assert (not b!2526202))

(assert tp_is_empty!12891)

(assert (not d!719037))

(assert (not d!719035))

(assert (not b!2526203))

(assert (not b!2526156))

(assert (not d!719025))

(assert (not d!719013))

(assert (not b!2526204))

(assert (not b!2526010))

(assert (not b!2526035))

(assert (not d!719009))

(assert (not bm!157864))

(assert (not b!2526036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

