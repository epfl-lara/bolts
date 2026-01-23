; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!246154 () Bool)

(assert start!246154)

(declare-fun b!2527001 () Bool)

(declare-fun e!1599619 () Bool)

(declare-fun tp!806857 () Bool)

(declare-fun tp!806855 () Bool)

(assert (=> b!2527001 (= e!1599619 (and tp!806857 tp!806855))))

(declare-fun b!2527002 () Bool)

(declare-fun tp_is_empty!12899 () Bool)

(assert (=> b!2527002 (= e!1599619 tp_is_empty!12899)))

(declare-fun b!2527003 () Bool)

(declare-fun e!1599622 () Bool)

(declare-fun tp!806858 () Bool)

(assert (=> b!2527003 (= e!1599622 (and tp_is_empty!12899 tp!806858))))

(declare-fun b!2527004 () Bool)

(declare-fun tp!806860 () Bool)

(declare-fun tp!806859 () Bool)

(assert (=> b!2527004 (= e!1599619 (and tp!806860 tp!806859))))

(declare-fun b!2527005 () Bool)

(declare-fun res!1067364 () Bool)

(declare-fun e!1599618 () Bool)

(assert (=> b!2527005 (=> (not res!1067364) (not e!1599618))))

(declare-datatypes ((C!15202 0))(
  ( (C!15203 (val!9253 Int)) )
))
(declare-datatypes ((List!29587 0))(
  ( (Nil!29487) (Cons!29487 (h!34907 C!15202) (t!211286 List!29587)) )
))
(declare-fun tl!4068 () List!29587)

(declare-datatypes ((Regex!7522 0))(
  ( (ElementMatch!7522 (c!403460 C!15202)) (Concat!12218 (regOne!15556 Regex!7522) (regTwo!15556 Regex!7522)) (EmptyExpr!7522) (Star!7522 (reg!7851 Regex!7522)) (EmptyLang!7522) (Union!7522 (regOne!15557 Regex!7522) (regTwo!15557 Regex!7522)) )
))
(declare-fun r!27340 () Regex!7522)

(declare-fun c!14016 () C!15202)

(declare-fun nullable!2439 (Regex!7522) Bool)

(declare-fun derivative!217 (Regex!7522 List!29587) Regex!7522)

(declare-fun derivativeStep!2091 (Regex!7522 C!15202) Regex!7522)

(assert (=> b!2527005 (= res!1067364 (nullable!2439 (derivative!217 (derivativeStep!2091 r!27340 c!14016) tl!4068)))))

(declare-fun b!2527006 () Bool)

(declare-fun res!1067367 () Bool)

(assert (=> b!2527006 (=> (not res!1067367) (not e!1599618))))

(assert (=> b!2527006 (= res!1067367 (and (not (is-EmptyExpr!7522 r!27340)) (not (is-EmptyLang!7522 r!27340)) (not (is-ElementMatch!7522 r!27340)) (not (is-Union!7522 r!27340)) (not (is-Star!7522 r!27340))))))

(declare-fun b!2527007 () Bool)

(declare-fun res!1067365 () Bool)

(assert (=> b!2527007 (=> (not res!1067365) (not e!1599618))))

(assert (=> b!2527007 (= res!1067365 (not (nullable!2439 (regOne!15556 r!27340))))))

(declare-fun b!2527009 () Bool)

(declare-fun e!1599617 () Bool)

(assert (=> b!2527009 (= e!1599618 (not e!1599617))))

(declare-fun res!1067362 () Bool)

(assert (=> b!2527009 (=> res!1067362 e!1599617)))

(declare-fun lt!900705 () Bool)

(assert (=> b!2527009 (= res!1067362 (not lt!900705))))

(assert (=> b!2527009 (= (derivative!217 EmptyLang!7522 tl!4068) EmptyLang!7522)))

(declare-datatypes ((Unit!43269 0))(
  ( (Unit!43270) )
))
(declare-fun lt!900699 () Unit!43269)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!39 (Regex!7522 List!29587) Unit!43269)

(assert (=> b!2527009 (= lt!900699 (lemmaEmptyLangDerivativeIsAFixPoint!39 EmptyLang!7522 tl!4068))))

(declare-fun e!1599620 () Bool)

(assert (=> b!2527009 e!1599620))

(declare-fun res!1067363 () Bool)

(assert (=> b!2527009 (=> res!1067363 e!1599620)))

(assert (=> b!2527009 (= res!1067363 lt!900705)))

(declare-fun lt!900706 () Regex!7522)

(declare-fun matchR!3509 (Regex!7522 List!29587) Bool)

(assert (=> b!2527009 (= lt!900705 (matchR!3509 lt!900706 tl!4068))))

(declare-fun lt!900708 () Unit!43269)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!187 (Regex!7522 Regex!7522 List!29587) Unit!43269)

(assert (=> b!2527009 (= lt!900708 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!187 lt!900706 EmptyLang!7522 tl!4068))))

(declare-fun lt!900707 () Regex!7522)

(assert (=> b!2527009 (= (matchR!3509 lt!900707 tl!4068) (matchR!3509 (derivative!217 lt!900707 tl!4068) Nil!29487))))

(declare-fun lt!900700 () Unit!43269)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!155 (Regex!7522 List!29587) Unit!43269)

(assert (=> b!2527009 (= lt!900700 (lemmaMatchRIsSameAsWholeDerivativeAndNil!155 lt!900707 tl!4068))))

(assert (=> b!2527009 (= lt!900707 (Union!7522 lt!900706 EmptyLang!7522))))

(declare-fun lt!900704 () Regex!7522)

(assert (=> b!2527009 (= lt!900706 (Concat!12218 lt!900704 (regTwo!15556 r!27340)))))

(assert (=> b!2527009 (= lt!900704 (derivativeStep!2091 (regOne!15556 r!27340) c!14016))))

(declare-fun b!2527010 () Bool)

(declare-fun tp!806856 () Bool)

(assert (=> b!2527010 (= e!1599619 tp!806856)))

(declare-fun b!2527011 () Bool)

(declare-fun e!1599621 () Bool)

(assert (=> b!2527011 (= e!1599617 e!1599621)))

(declare-fun res!1067361 () Bool)

(assert (=> b!2527011 (=> res!1067361 e!1599621)))

(declare-datatypes ((tuple2!29542 0))(
  ( (tuple2!29543 (_1!17313 List!29587) (_2!17313 List!29587)) )
))
(declare-fun lt!900702 () tuple2!29542)

(declare-fun ++!7241 (List!29587 List!29587) List!29587)

(assert (=> b!2527011 (= res!1067361 (not (= (++!7241 (_1!17313 lt!900702) (_2!17313 lt!900702)) tl!4068)))))

(declare-datatypes ((Option!5891 0))(
  ( (None!5890) (Some!5890 (v!31823 tuple2!29542)) )
))
(declare-fun lt!900701 () Option!5891)

(declare-fun get!9231 (Option!5891) tuple2!29542)

(assert (=> b!2527011 (= lt!900702 (get!9231 lt!900701))))

(declare-fun isDefined!4713 (Option!5891) Bool)

(assert (=> b!2527011 (isDefined!4713 lt!900701)))

(declare-fun findConcatSeparation!913 (Regex!7522 Regex!7522 List!29587 List!29587 List!29587) Option!5891)

(assert (=> b!2527011 (= lt!900701 (findConcatSeparation!913 lt!900704 (regTwo!15556 r!27340) Nil!29487 tl!4068 tl!4068))))

(declare-fun lt!900703 () Unit!43269)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!195 (Regex!7522 Regex!7522 List!29587) Unit!43269)

(assert (=> b!2527011 (= lt!900703 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!195 lt!900704 (regTwo!15556 r!27340) tl!4068))))

(declare-fun b!2527012 () Bool)

(assert (=> b!2527012 (= e!1599620 (matchR!3509 EmptyLang!7522 tl!4068))))

(declare-fun b!2527013 () Bool)

(assert (=> b!2527013 (= e!1599621 (matchR!3509 (regTwo!15556 r!27340) (_2!17313 lt!900702)))))

(declare-fun b!2527008 () Bool)

(declare-fun res!1067368 () Bool)

(assert (=> b!2527008 (=> res!1067368 e!1599621)))

(assert (=> b!2527008 (= res!1067368 (not (matchR!3509 lt!900704 (_1!17313 lt!900702))))))

(declare-fun res!1067366 () Bool)

(assert (=> start!246154 (=> (not res!1067366) (not e!1599618))))

(declare-fun validRegex!3148 (Regex!7522) Bool)

(assert (=> start!246154 (= res!1067366 (validRegex!3148 r!27340))))

(assert (=> start!246154 e!1599618))

(assert (=> start!246154 e!1599619))

(assert (=> start!246154 tp_is_empty!12899))

(assert (=> start!246154 e!1599622))

(assert (= (and start!246154 res!1067366) b!2527005))

(assert (= (and b!2527005 res!1067364) b!2527006))

(assert (= (and b!2527006 res!1067367) b!2527007))

(assert (= (and b!2527007 res!1067365) b!2527009))

(assert (= (and b!2527009 (not res!1067363)) b!2527012))

(assert (= (and b!2527009 (not res!1067362)) b!2527011))

(assert (= (and b!2527011 (not res!1067361)) b!2527008))

(assert (= (and b!2527008 (not res!1067368)) b!2527013))

(assert (= (and start!246154 (is-ElementMatch!7522 r!27340)) b!2527002))

(assert (= (and start!246154 (is-Concat!12218 r!27340)) b!2527004))

(assert (= (and start!246154 (is-Star!7522 r!27340)) b!2527010))

(assert (= (and start!246154 (is-Union!7522 r!27340)) b!2527001))

(assert (= (and start!246154 (is-Cons!29487 tl!4068)) b!2527003))

(declare-fun m!2879869 () Bool)

(assert (=> b!2527005 m!2879869))

(assert (=> b!2527005 m!2879869))

(declare-fun m!2879871 () Bool)

(assert (=> b!2527005 m!2879871))

(assert (=> b!2527005 m!2879871))

(declare-fun m!2879873 () Bool)

(assert (=> b!2527005 m!2879873))

(declare-fun m!2879875 () Bool)

(assert (=> start!246154 m!2879875))

(declare-fun m!2879877 () Bool)

(assert (=> b!2527012 m!2879877))

(declare-fun m!2879879 () Bool)

(assert (=> b!2527011 m!2879879))

(declare-fun m!2879881 () Bool)

(assert (=> b!2527011 m!2879881))

(declare-fun m!2879883 () Bool)

(assert (=> b!2527011 m!2879883))

(declare-fun m!2879885 () Bool)

(assert (=> b!2527011 m!2879885))

(declare-fun m!2879887 () Bool)

(assert (=> b!2527011 m!2879887))

(declare-fun m!2879889 () Bool)

(assert (=> b!2527008 m!2879889))

(declare-fun m!2879891 () Bool)

(assert (=> b!2527007 m!2879891))

(declare-fun m!2879893 () Bool)

(assert (=> b!2527013 m!2879893))

(declare-fun m!2879895 () Bool)

(assert (=> b!2527009 m!2879895))

(declare-fun m!2879897 () Bool)

(assert (=> b!2527009 m!2879897))

(declare-fun m!2879899 () Bool)

(assert (=> b!2527009 m!2879899))

(declare-fun m!2879901 () Bool)

(assert (=> b!2527009 m!2879901))

(assert (=> b!2527009 m!2879897))

(declare-fun m!2879903 () Bool)

(assert (=> b!2527009 m!2879903))

(declare-fun m!2879905 () Bool)

(assert (=> b!2527009 m!2879905))

(declare-fun m!2879907 () Bool)

(assert (=> b!2527009 m!2879907))

(declare-fun m!2879909 () Bool)

(assert (=> b!2527009 m!2879909))

(declare-fun m!2879911 () Bool)

(assert (=> b!2527009 m!2879911))

(push 1)

(assert tp_is_empty!12899)

(assert (not b!2527012))

(assert (not b!2527009))

(assert (not b!2527007))

(assert (not b!2527004))

(assert (not b!2527005))

(assert (not b!2527003))

(assert (not b!2527010))

(assert (not b!2527011))

(assert (not start!246154))

(assert (not b!2527001))

(assert (not b!2527013))

(assert (not b!2527008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2527081 () Bool)

(declare-fun res!1067412 () Bool)

(declare-fun e!1599656 () Bool)

(assert (=> b!2527081 (=> res!1067412 e!1599656)))

(assert (=> b!2527081 (= res!1067412 (not (is-ElementMatch!7522 (regTwo!15556 r!27340))))))

(declare-fun e!1599661 () Bool)

(assert (=> b!2527081 (= e!1599661 e!1599656)))

(declare-fun b!2527082 () Bool)

(declare-fun res!1067413 () Bool)

(declare-fun e!1599657 () Bool)

(assert (=> b!2527082 (=> (not res!1067413) (not e!1599657))))

(declare-fun call!157958 () Bool)

(assert (=> b!2527082 (= res!1067413 (not call!157958))))

(declare-fun b!2527083 () Bool)

(declare-fun e!1599655 () Bool)

(declare-fun head!5771 (List!29587) C!15202)

(assert (=> b!2527083 (= e!1599655 (not (= (head!5771 (_2!17313 lt!900702)) (c!403460 (regTwo!15556 r!27340)))))))

(declare-fun b!2527084 () Bool)

(declare-fun res!1067416 () Bool)

(assert (=> b!2527084 (=> (not res!1067416) (not e!1599657))))

(declare-fun isEmpty!16964 (List!29587) Bool)

(declare-fun tail!4048 (List!29587) List!29587)

(assert (=> b!2527084 (= res!1067416 (isEmpty!16964 (tail!4048 (_2!17313 lt!900702))))))

(declare-fun b!2527085 () Bool)

(declare-fun e!1599659 () Bool)

(assert (=> b!2527085 (= e!1599659 e!1599661)))

(declare-fun c!403468 () Bool)

(assert (=> b!2527085 (= c!403468 (is-EmptyLang!7522 (regTwo!15556 r!27340)))))

(declare-fun b!2527086 () Bool)

(assert (=> b!2527086 (= e!1599657 (= (head!5771 (_2!17313 lt!900702)) (c!403460 (regTwo!15556 r!27340))))))

(declare-fun b!2527087 () Bool)

(declare-fun res!1067411 () Bool)

(assert (=> b!2527087 (=> res!1067411 e!1599655)))

(assert (=> b!2527087 (= res!1067411 (not (isEmpty!16964 (tail!4048 (_2!17313 lt!900702)))))))

(declare-fun d!719175 () Bool)

(assert (=> d!719175 e!1599659))

(declare-fun c!403470 () Bool)

(assert (=> d!719175 (= c!403470 (is-EmptyExpr!7522 (regTwo!15556 r!27340)))))

(declare-fun lt!900741 () Bool)

(declare-fun e!1599658 () Bool)

(assert (=> d!719175 (= lt!900741 e!1599658)))

(declare-fun c!403469 () Bool)

(assert (=> d!719175 (= c!403469 (isEmpty!16964 (_2!17313 lt!900702)))))

(assert (=> d!719175 (validRegex!3148 (regTwo!15556 r!27340))))

(assert (=> d!719175 (= (matchR!3509 (regTwo!15556 r!27340) (_2!17313 lt!900702)) lt!900741)))

(declare-fun b!2527088 () Bool)

(declare-fun e!1599660 () Bool)

(assert (=> b!2527088 (= e!1599660 e!1599655)))

(declare-fun res!1067414 () Bool)

(assert (=> b!2527088 (=> res!1067414 e!1599655)))

(assert (=> b!2527088 (= res!1067414 call!157958)))

(declare-fun b!2527089 () Bool)

(assert (=> b!2527089 (= e!1599659 (= lt!900741 call!157958))))

(declare-fun bm!157953 () Bool)

(assert (=> bm!157953 (= call!157958 (isEmpty!16964 (_2!17313 lt!900702)))))

(declare-fun b!2527090 () Bool)

(assert (=> b!2527090 (= e!1599658 (nullable!2439 (regTwo!15556 r!27340)))))

(declare-fun b!2527091 () Bool)

(assert (=> b!2527091 (= e!1599661 (not lt!900741))))

(declare-fun b!2527092 () Bool)

(declare-fun res!1067415 () Bool)

(assert (=> b!2527092 (=> res!1067415 e!1599656)))

(assert (=> b!2527092 (= res!1067415 e!1599657)))

(declare-fun res!1067409 () Bool)

(assert (=> b!2527092 (=> (not res!1067409) (not e!1599657))))

(assert (=> b!2527092 (= res!1067409 lt!900741)))

(declare-fun b!2527093 () Bool)

(assert (=> b!2527093 (= e!1599656 e!1599660)))

(declare-fun res!1067410 () Bool)

(assert (=> b!2527093 (=> (not res!1067410) (not e!1599660))))

(assert (=> b!2527093 (= res!1067410 (not lt!900741))))

(declare-fun b!2527094 () Bool)

(assert (=> b!2527094 (= e!1599658 (matchR!3509 (derivativeStep!2091 (regTwo!15556 r!27340) (head!5771 (_2!17313 lt!900702))) (tail!4048 (_2!17313 lt!900702))))))

(assert (= (and d!719175 c!403469) b!2527090))

(assert (= (and d!719175 (not c!403469)) b!2527094))

(assert (= (and d!719175 c!403470) b!2527089))

(assert (= (and d!719175 (not c!403470)) b!2527085))

(assert (= (and b!2527085 c!403468) b!2527091))

(assert (= (and b!2527085 (not c!403468)) b!2527081))

(assert (= (and b!2527081 (not res!1067412)) b!2527092))

(assert (= (and b!2527092 res!1067409) b!2527082))

(assert (= (and b!2527082 res!1067413) b!2527084))

(assert (= (and b!2527084 res!1067416) b!2527086))

(assert (= (and b!2527092 (not res!1067415)) b!2527093))

(assert (= (and b!2527093 res!1067410) b!2527088))

(assert (= (and b!2527088 (not res!1067414)) b!2527087))

(assert (= (and b!2527087 (not res!1067411)) b!2527083))

(assert (= (or b!2527089 b!2527082 b!2527088) bm!157953))

(declare-fun m!2879957 () Bool)

(assert (=> b!2527087 m!2879957))

(assert (=> b!2527087 m!2879957))

(declare-fun m!2879959 () Bool)

(assert (=> b!2527087 m!2879959))

(assert (=> b!2527084 m!2879957))

(assert (=> b!2527084 m!2879957))

(assert (=> b!2527084 m!2879959))

(declare-fun m!2879961 () Bool)

(assert (=> b!2527094 m!2879961))

(assert (=> b!2527094 m!2879961))

(declare-fun m!2879963 () Bool)

(assert (=> b!2527094 m!2879963))

(assert (=> b!2527094 m!2879957))

(assert (=> b!2527094 m!2879963))

(assert (=> b!2527094 m!2879957))

(declare-fun m!2879965 () Bool)

(assert (=> b!2527094 m!2879965))

(declare-fun m!2879967 () Bool)

(assert (=> d!719175 m!2879967))

(declare-fun m!2879969 () Bool)

(assert (=> d!719175 m!2879969))

(assert (=> bm!157953 m!2879967))

(assert (=> b!2527086 m!2879961))

(declare-fun m!2879971 () Bool)

(assert (=> b!2527090 m!2879971))

(assert (=> b!2527083 m!2879961))

(assert (=> b!2527013 d!719175))

(declare-fun b!2527099 () Bool)

(declare-fun res!1067420 () Bool)

(declare-fun e!1599665 () Bool)

(assert (=> b!2527099 (=> res!1067420 e!1599665)))

(assert (=> b!2527099 (= res!1067420 (not (is-ElementMatch!7522 lt!900704)))))

(declare-fun e!1599670 () Bool)

(assert (=> b!2527099 (= e!1599670 e!1599665)))

(declare-fun b!2527100 () Bool)

(declare-fun res!1067421 () Bool)

(declare-fun e!1599666 () Bool)

(assert (=> b!2527100 (=> (not res!1067421) (not e!1599666))))

(declare-fun call!157959 () Bool)

(assert (=> b!2527100 (= res!1067421 (not call!157959))))

(declare-fun b!2527101 () Bool)

(declare-fun e!1599664 () Bool)

(assert (=> b!2527101 (= e!1599664 (not (= (head!5771 (_1!17313 lt!900702)) (c!403460 lt!900704))))))

(declare-fun b!2527102 () Bool)

(declare-fun res!1067424 () Bool)

(assert (=> b!2527102 (=> (not res!1067424) (not e!1599666))))

(assert (=> b!2527102 (= res!1067424 (isEmpty!16964 (tail!4048 (_1!17313 lt!900702))))))

(declare-fun b!2527103 () Bool)

(declare-fun e!1599668 () Bool)

(assert (=> b!2527103 (= e!1599668 e!1599670)))

(declare-fun c!403473 () Bool)

(assert (=> b!2527103 (= c!403473 (is-EmptyLang!7522 lt!900704))))

(declare-fun b!2527104 () Bool)

(assert (=> b!2527104 (= e!1599666 (= (head!5771 (_1!17313 lt!900702)) (c!403460 lt!900704)))))

(declare-fun b!2527105 () Bool)

(declare-fun res!1067419 () Bool)

(assert (=> b!2527105 (=> res!1067419 e!1599664)))

(assert (=> b!2527105 (= res!1067419 (not (isEmpty!16964 (tail!4048 (_1!17313 lt!900702)))))))

(declare-fun d!719179 () Bool)

(assert (=> d!719179 e!1599668))

(declare-fun c!403475 () Bool)

(assert (=> d!719179 (= c!403475 (is-EmptyExpr!7522 lt!900704))))

(declare-fun lt!900744 () Bool)

(declare-fun e!1599667 () Bool)

(assert (=> d!719179 (= lt!900744 e!1599667)))

(declare-fun c!403474 () Bool)

(assert (=> d!719179 (= c!403474 (isEmpty!16964 (_1!17313 lt!900702)))))

(assert (=> d!719179 (validRegex!3148 lt!900704)))

(assert (=> d!719179 (= (matchR!3509 lt!900704 (_1!17313 lt!900702)) lt!900744)))

(declare-fun b!2527106 () Bool)

(declare-fun e!1599669 () Bool)

(assert (=> b!2527106 (= e!1599669 e!1599664)))

(declare-fun res!1067422 () Bool)

(assert (=> b!2527106 (=> res!1067422 e!1599664)))

(assert (=> b!2527106 (= res!1067422 call!157959)))

(declare-fun b!2527107 () Bool)

(assert (=> b!2527107 (= e!1599668 (= lt!900744 call!157959))))

(declare-fun bm!157954 () Bool)

(assert (=> bm!157954 (= call!157959 (isEmpty!16964 (_1!17313 lt!900702)))))

(declare-fun b!2527108 () Bool)

(assert (=> b!2527108 (= e!1599667 (nullable!2439 lt!900704))))

(declare-fun b!2527109 () Bool)

(assert (=> b!2527109 (= e!1599670 (not lt!900744))))

(declare-fun b!2527110 () Bool)

(declare-fun res!1067423 () Bool)

(assert (=> b!2527110 (=> res!1067423 e!1599665)))

(assert (=> b!2527110 (= res!1067423 e!1599666)))

(declare-fun res!1067417 () Bool)

(assert (=> b!2527110 (=> (not res!1067417) (not e!1599666))))

(assert (=> b!2527110 (= res!1067417 lt!900744)))

(declare-fun b!2527111 () Bool)

(assert (=> b!2527111 (= e!1599665 e!1599669)))

(declare-fun res!1067418 () Bool)

(assert (=> b!2527111 (=> (not res!1067418) (not e!1599669))))

(assert (=> b!2527111 (= res!1067418 (not lt!900744))))

(declare-fun b!2527112 () Bool)

(assert (=> b!2527112 (= e!1599667 (matchR!3509 (derivativeStep!2091 lt!900704 (head!5771 (_1!17313 lt!900702))) (tail!4048 (_1!17313 lt!900702))))))

(assert (= (and d!719179 c!403474) b!2527108))

(assert (= (and d!719179 (not c!403474)) b!2527112))

(assert (= (and d!719179 c!403475) b!2527107))

(assert (= (and d!719179 (not c!403475)) b!2527103))

(assert (= (and b!2527103 c!403473) b!2527109))

(assert (= (and b!2527103 (not c!403473)) b!2527099))

(assert (= (and b!2527099 (not res!1067420)) b!2527110))

(assert (= (and b!2527110 res!1067417) b!2527100))

(assert (= (and b!2527100 res!1067421) b!2527102))

(assert (= (and b!2527102 res!1067424) b!2527104))

(assert (= (and b!2527110 (not res!1067423)) b!2527111))

(assert (= (and b!2527111 res!1067418) b!2527106))

(assert (= (and b!2527106 (not res!1067422)) b!2527105))

(assert (= (and b!2527105 (not res!1067419)) b!2527101))

(assert (= (or b!2527107 b!2527100 b!2527106) bm!157954))

(declare-fun m!2879973 () Bool)

(assert (=> b!2527105 m!2879973))

(assert (=> b!2527105 m!2879973))

(declare-fun m!2879975 () Bool)

(assert (=> b!2527105 m!2879975))

(assert (=> b!2527102 m!2879973))

(assert (=> b!2527102 m!2879973))

(assert (=> b!2527102 m!2879975))

(declare-fun m!2879977 () Bool)

(assert (=> b!2527112 m!2879977))

(assert (=> b!2527112 m!2879977))

(declare-fun m!2879979 () Bool)

(assert (=> b!2527112 m!2879979))

(assert (=> b!2527112 m!2879973))

(assert (=> b!2527112 m!2879979))

(assert (=> b!2527112 m!2879973))

(declare-fun m!2879981 () Bool)

(assert (=> b!2527112 m!2879981))

(declare-fun m!2879983 () Bool)

(assert (=> d!719179 m!2879983))

(declare-fun m!2879985 () Bool)

(assert (=> d!719179 m!2879985))

(assert (=> bm!157954 m!2879983))

(assert (=> b!2527104 m!2879977))

(declare-fun m!2879987 () Bool)

(assert (=> b!2527108 m!2879987))

(assert (=> b!2527101 m!2879977))

(assert (=> b!2527008 d!719179))

(declare-fun b!2527137 () Bool)

(declare-fun res!1067444 () Bool)

(declare-fun e!1599684 () Bool)

(assert (=> b!2527137 (=> res!1067444 e!1599684)))

(assert (=> b!2527137 (= res!1067444 (not (is-ElementMatch!7522 (derivative!217 lt!900707 tl!4068))))))

(declare-fun e!1599689 () Bool)

(assert (=> b!2527137 (= e!1599689 e!1599684)))

(declare-fun b!2527138 () Bool)

(declare-fun res!1067445 () Bool)

(declare-fun e!1599685 () Bool)

(assert (=> b!2527138 (=> (not res!1067445) (not e!1599685))))

(declare-fun call!157960 () Bool)

(assert (=> b!2527138 (= res!1067445 (not call!157960))))

(declare-fun b!2527139 () Bool)

(declare-fun e!1599683 () Bool)

(assert (=> b!2527139 (= e!1599683 (not (= (head!5771 Nil!29487) (c!403460 (derivative!217 lt!900707 tl!4068)))))))

(declare-fun b!2527140 () Bool)

(declare-fun res!1067448 () Bool)

(assert (=> b!2527140 (=> (not res!1067448) (not e!1599685))))

(assert (=> b!2527140 (= res!1067448 (isEmpty!16964 (tail!4048 Nil!29487)))))

(declare-fun b!2527141 () Bool)

(declare-fun e!1599687 () Bool)

(assert (=> b!2527141 (= e!1599687 e!1599689)))

(declare-fun c!403480 () Bool)

(assert (=> b!2527141 (= c!403480 (is-EmptyLang!7522 (derivative!217 lt!900707 tl!4068)))))

(declare-fun b!2527142 () Bool)

(assert (=> b!2527142 (= e!1599685 (= (head!5771 Nil!29487) (c!403460 (derivative!217 lt!900707 tl!4068))))))

(declare-fun b!2527143 () Bool)

(declare-fun res!1067443 () Bool)

(assert (=> b!2527143 (=> res!1067443 e!1599683)))

(assert (=> b!2527143 (= res!1067443 (not (isEmpty!16964 (tail!4048 Nil!29487))))))

(declare-fun d!719181 () Bool)

(assert (=> d!719181 e!1599687))

(declare-fun c!403482 () Bool)

(assert (=> d!719181 (= c!403482 (is-EmptyExpr!7522 (derivative!217 lt!900707 tl!4068)))))

(declare-fun lt!900745 () Bool)

(declare-fun e!1599686 () Bool)

(assert (=> d!719181 (= lt!900745 e!1599686)))

(declare-fun c!403481 () Bool)

(assert (=> d!719181 (= c!403481 (isEmpty!16964 Nil!29487))))

(assert (=> d!719181 (validRegex!3148 (derivative!217 lt!900707 tl!4068))))

(assert (=> d!719181 (= (matchR!3509 (derivative!217 lt!900707 tl!4068) Nil!29487) lt!900745)))

(declare-fun b!2527144 () Bool)

(declare-fun e!1599688 () Bool)

(assert (=> b!2527144 (= e!1599688 e!1599683)))

(declare-fun res!1067446 () Bool)

(assert (=> b!2527144 (=> res!1067446 e!1599683)))

(assert (=> b!2527144 (= res!1067446 call!157960)))

(declare-fun b!2527145 () Bool)

(assert (=> b!2527145 (= e!1599687 (= lt!900745 call!157960))))

(declare-fun bm!157955 () Bool)

(assert (=> bm!157955 (= call!157960 (isEmpty!16964 Nil!29487))))

(declare-fun b!2527146 () Bool)

(assert (=> b!2527146 (= e!1599686 (nullable!2439 (derivative!217 lt!900707 tl!4068)))))

(declare-fun b!2527147 () Bool)

(assert (=> b!2527147 (= e!1599689 (not lt!900745))))

(declare-fun b!2527148 () Bool)

(declare-fun res!1067447 () Bool)

(assert (=> b!2527148 (=> res!1067447 e!1599684)))

(assert (=> b!2527148 (= res!1067447 e!1599685)))

(declare-fun res!1067441 () Bool)

(assert (=> b!2527148 (=> (not res!1067441) (not e!1599685))))

(assert (=> b!2527148 (= res!1067441 lt!900745)))

(declare-fun b!2527149 () Bool)

(assert (=> b!2527149 (= e!1599684 e!1599688)))

(declare-fun res!1067442 () Bool)

(assert (=> b!2527149 (=> (not res!1067442) (not e!1599688))))

(assert (=> b!2527149 (= res!1067442 (not lt!900745))))

(declare-fun b!2527150 () Bool)

(assert (=> b!2527150 (= e!1599686 (matchR!3509 (derivativeStep!2091 (derivative!217 lt!900707 tl!4068) (head!5771 Nil!29487)) (tail!4048 Nil!29487)))))

(assert (= (and d!719181 c!403481) b!2527146))

(assert (= (and d!719181 (not c!403481)) b!2527150))

(assert (= (and d!719181 c!403482) b!2527145))

(assert (= (and d!719181 (not c!403482)) b!2527141))

(assert (= (and b!2527141 c!403480) b!2527147))

(assert (= (and b!2527141 (not c!403480)) b!2527137))

(assert (= (and b!2527137 (not res!1067444)) b!2527148))

(assert (= (and b!2527148 res!1067441) b!2527138))

(assert (= (and b!2527138 res!1067445) b!2527140))

(assert (= (and b!2527140 res!1067448) b!2527142))

(assert (= (and b!2527148 (not res!1067447)) b!2527149))

(assert (= (and b!2527149 res!1067442) b!2527144))

(assert (= (and b!2527144 (not res!1067446)) b!2527143))

(assert (= (and b!2527143 (not res!1067443)) b!2527139))

(assert (= (or b!2527145 b!2527138 b!2527144) bm!157955))

(declare-fun m!2879989 () Bool)

(assert (=> b!2527143 m!2879989))

(assert (=> b!2527143 m!2879989))

(declare-fun m!2879991 () Bool)

(assert (=> b!2527143 m!2879991))

(assert (=> b!2527140 m!2879989))

(assert (=> b!2527140 m!2879989))

(assert (=> b!2527140 m!2879991))

(declare-fun m!2879993 () Bool)

(assert (=> b!2527150 m!2879993))

(assert (=> b!2527150 m!2879897))

(assert (=> b!2527150 m!2879993))

(declare-fun m!2879995 () Bool)

(assert (=> b!2527150 m!2879995))

(assert (=> b!2527150 m!2879989))

(assert (=> b!2527150 m!2879995))

(assert (=> b!2527150 m!2879989))

(declare-fun m!2879997 () Bool)

(assert (=> b!2527150 m!2879997))

(declare-fun m!2879999 () Bool)

(assert (=> d!719181 m!2879999))

(assert (=> d!719181 m!2879897))

(declare-fun m!2880001 () Bool)

(assert (=> d!719181 m!2880001))

(assert (=> bm!157955 m!2879999))

(assert (=> b!2527142 m!2879993))

(assert (=> b!2527146 m!2879897))

(declare-fun m!2880003 () Bool)

(assert (=> b!2527146 m!2880003))

(assert (=> b!2527139 m!2879993))

(assert (=> b!2527009 d!719181))

(declare-fun b!2527185 () Bool)

(declare-fun e!1599709 () Regex!7522)

(declare-fun call!157975 () Regex!7522)

(declare-fun call!157972 () Regex!7522)

(assert (=> b!2527185 (= e!1599709 (Union!7522 call!157975 call!157972))))

(declare-fun bm!157967 () Bool)

(declare-fun c!403500 () Bool)

(declare-fun c!403496 () Bool)

(assert (=> bm!157967 (= call!157975 (derivativeStep!2091 (ite c!403496 (regOne!15557 (regOne!15556 r!27340)) (ite c!403500 (reg!7851 (regOne!15556 r!27340)) (regOne!15556 (regOne!15556 r!27340)))) c!14016))))

(declare-fun b!2527186 () Bool)

(declare-fun e!1599711 () Regex!7522)

(assert (=> b!2527186 (= e!1599711 EmptyLang!7522)))

(declare-fun b!2527187 () Bool)

(declare-fun e!1599708 () Regex!7522)

(declare-fun call!157974 () Regex!7522)

(assert (=> b!2527187 (= e!1599708 (Union!7522 (Concat!12218 call!157974 (regTwo!15556 (regOne!15556 r!27340))) EmptyLang!7522))))

(declare-fun b!2527188 () Bool)

(declare-fun e!1599710 () Regex!7522)

(assert (=> b!2527188 (= e!1599711 e!1599710)))

(declare-fun c!403499 () Bool)

(assert (=> b!2527188 (= c!403499 (is-ElementMatch!7522 (regOne!15556 r!27340)))))

(declare-fun b!2527189 () Bool)

(assert (=> b!2527189 (= e!1599710 (ite (= c!14016 (c!403460 (regOne!15556 r!27340))) EmptyExpr!7522 EmptyLang!7522))))

(declare-fun b!2527190 () Bool)

(declare-fun e!1599707 () Regex!7522)

(assert (=> b!2527190 (= e!1599709 e!1599707)))

(assert (=> b!2527190 (= c!403500 (is-Star!7522 (regOne!15556 r!27340)))))

(declare-fun bm!157968 () Bool)

(declare-fun call!157973 () Regex!7522)

(assert (=> bm!157968 (= call!157974 call!157973)))

(declare-fun d!719183 () Bool)

(declare-fun lt!900749 () Regex!7522)

(assert (=> d!719183 (validRegex!3148 lt!900749)))

(assert (=> d!719183 (= lt!900749 e!1599711)))

(declare-fun c!403498 () Bool)

(assert (=> d!719183 (= c!403498 (or (is-EmptyExpr!7522 (regOne!15556 r!27340)) (is-EmptyLang!7522 (regOne!15556 r!27340))))))

(assert (=> d!719183 (validRegex!3148 (regOne!15556 r!27340))))

(assert (=> d!719183 (= (derivativeStep!2091 (regOne!15556 r!27340) c!14016) lt!900749)))

(declare-fun bm!157969 () Bool)

(assert (=> bm!157969 (= call!157973 call!157975)))

(declare-fun b!2527191 () Bool)

(assert (=> b!2527191 (= c!403496 (is-Union!7522 (regOne!15556 r!27340)))))

(assert (=> b!2527191 (= e!1599710 e!1599709)))

(declare-fun b!2527192 () Bool)

(declare-fun c!403497 () Bool)

(assert (=> b!2527192 (= c!403497 (nullable!2439 (regOne!15556 (regOne!15556 r!27340))))))

(assert (=> b!2527192 (= e!1599707 e!1599708)))

(declare-fun b!2527193 () Bool)

(assert (=> b!2527193 (= e!1599708 (Union!7522 (Concat!12218 call!157974 (regTwo!15556 (regOne!15556 r!27340))) call!157972))))

(declare-fun bm!157970 () Bool)

(assert (=> bm!157970 (= call!157972 (derivativeStep!2091 (ite c!403496 (regTwo!15557 (regOne!15556 r!27340)) (regTwo!15556 (regOne!15556 r!27340))) c!14016))))

(declare-fun b!2527194 () Bool)

(assert (=> b!2527194 (= e!1599707 (Concat!12218 call!157973 (regOne!15556 r!27340)))))

(assert (= (and d!719183 c!403498) b!2527186))

(assert (= (and d!719183 (not c!403498)) b!2527188))

(assert (= (and b!2527188 c!403499) b!2527189))

(assert (= (and b!2527188 (not c!403499)) b!2527191))

(assert (= (and b!2527191 c!403496) b!2527185))

(assert (= (and b!2527191 (not c!403496)) b!2527190))

(assert (= (and b!2527190 c!403500) b!2527194))

(assert (= (and b!2527190 (not c!403500)) b!2527192))

(assert (= (and b!2527192 c!403497) b!2527193))

(assert (= (and b!2527192 (not c!403497)) b!2527187))

(assert (= (or b!2527193 b!2527187) bm!157968))

(assert (= (or b!2527194 bm!157968) bm!157969))

(assert (= (or b!2527185 b!2527193) bm!157970))

(assert (= (or b!2527185 bm!157969) bm!157967))

(declare-fun m!2880023 () Bool)

(assert (=> bm!157967 m!2880023))

(declare-fun m!2880025 () Bool)

(assert (=> d!719183 m!2880025))

(declare-fun m!2880027 () Bool)

(assert (=> d!719183 m!2880027))

(declare-fun m!2880029 () Bool)

(assert (=> b!2527192 m!2880029))

(declare-fun m!2880031 () Bool)

(assert (=> bm!157970 m!2880031))

(assert (=> b!2527009 d!719183))

(declare-fun d!719189 () Bool)

(declare-fun lt!900752 () Regex!7522)

(assert (=> d!719189 (validRegex!3148 lt!900752)))

(declare-fun e!1599714 () Regex!7522)

(assert (=> d!719189 (= lt!900752 e!1599714)))

(declare-fun c!403503 () Bool)

(assert (=> d!719189 (= c!403503 (is-Cons!29487 tl!4068))))

(assert (=> d!719189 (validRegex!3148 EmptyLang!7522)))

(assert (=> d!719189 (= (derivative!217 EmptyLang!7522 tl!4068) lt!900752)))

(declare-fun b!2527199 () Bool)

(assert (=> b!2527199 (= e!1599714 (derivative!217 (derivativeStep!2091 EmptyLang!7522 (h!34907 tl!4068)) (t!211286 tl!4068)))))

(declare-fun b!2527200 () Bool)

(assert (=> b!2527200 (= e!1599714 EmptyLang!7522)))

(assert (= (and d!719189 c!403503) b!2527199))

(assert (= (and d!719189 (not c!403503)) b!2527200))

(declare-fun m!2880033 () Bool)

(assert (=> d!719189 m!2880033))

(declare-fun m!2880035 () Bool)

(assert (=> d!719189 m!2880035))

(declare-fun m!2880037 () Bool)

(assert (=> b!2527199 m!2880037))

(assert (=> b!2527199 m!2880037))

(declare-fun m!2880039 () Bool)

(assert (=> b!2527199 m!2880039))

(assert (=> b!2527009 d!719189))

(declare-fun b!2527203 () Bool)

(declare-fun res!1067460 () Bool)

(declare-fun e!1599716 () Bool)

(assert (=> b!2527203 (=> res!1067460 e!1599716)))

(assert (=> b!2527203 (= res!1067460 (not (is-ElementMatch!7522 lt!900706)))))

(declare-fun e!1599721 () Bool)

(assert (=> b!2527203 (= e!1599721 e!1599716)))

(declare-fun b!2527204 () Bool)

(declare-fun res!1067461 () Bool)

(declare-fun e!1599717 () Bool)

(assert (=> b!2527204 (=> (not res!1067461) (not e!1599717))))

(declare-fun call!157976 () Bool)

(assert (=> b!2527204 (= res!1067461 (not call!157976))))

(declare-fun b!2527205 () Bool)

(declare-fun e!1599715 () Bool)

(assert (=> b!2527205 (= e!1599715 (not (= (head!5771 tl!4068) (c!403460 lt!900706))))))

(declare-fun b!2527206 () Bool)

(declare-fun res!1067464 () Bool)

(assert (=> b!2527206 (=> (not res!1067464) (not e!1599717))))

(assert (=> b!2527206 (= res!1067464 (isEmpty!16964 (tail!4048 tl!4068)))))

(declare-fun b!2527207 () Bool)

(declare-fun e!1599719 () Bool)

(assert (=> b!2527207 (= e!1599719 e!1599721)))

(declare-fun c!403504 () Bool)

(assert (=> b!2527207 (= c!403504 (is-EmptyLang!7522 lt!900706))))

(declare-fun b!2527208 () Bool)

(assert (=> b!2527208 (= e!1599717 (= (head!5771 tl!4068) (c!403460 lt!900706)))))

(declare-fun b!2527209 () Bool)

(declare-fun res!1067459 () Bool)

(assert (=> b!2527209 (=> res!1067459 e!1599715)))

(assert (=> b!2527209 (= res!1067459 (not (isEmpty!16964 (tail!4048 tl!4068))))))

(declare-fun d!719191 () Bool)

(assert (=> d!719191 e!1599719))

(declare-fun c!403506 () Bool)

(assert (=> d!719191 (= c!403506 (is-EmptyExpr!7522 lt!900706))))

(declare-fun lt!900755 () Bool)

(declare-fun e!1599718 () Bool)

(assert (=> d!719191 (= lt!900755 e!1599718)))

(declare-fun c!403505 () Bool)

(assert (=> d!719191 (= c!403505 (isEmpty!16964 tl!4068))))

(assert (=> d!719191 (validRegex!3148 lt!900706)))

(assert (=> d!719191 (= (matchR!3509 lt!900706 tl!4068) lt!900755)))

(declare-fun b!2527210 () Bool)

(declare-fun e!1599720 () Bool)

(assert (=> b!2527210 (= e!1599720 e!1599715)))

(declare-fun res!1067462 () Bool)

(assert (=> b!2527210 (=> res!1067462 e!1599715)))

(assert (=> b!2527210 (= res!1067462 call!157976)))

(declare-fun b!2527211 () Bool)

(assert (=> b!2527211 (= e!1599719 (= lt!900755 call!157976))))

(declare-fun bm!157971 () Bool)

(assert (=> bm!157971 (= call!157976 (isEmpty!16964 tl!4068))))

(declare-fun b!2527212 () Bool)

(assert (=> b!2527212 (= e!1599718 (nullable!2439 lt!900706))))

(declare-fun b!2527213 () Bool)

(assert (=> b!2527213 (= e!1599721 (not lt!900755))))

(declare-fun b!2527214 () Bool)

(declare-fun res!1067463 () Bool)

(assert (=> b!2527214 (=> res!1067463 e!1599716)))

(assert (=> b!2527214 (= res!1067463 e!1599717)))

(declare-fun res!1067457 () Bool)

(assert (=> b!2527214 (=> (not res!1067457) (not e!1599717))))

(assert (=> b!2527214 (= res!1067457 lt!900755)))

(declare-fun b!2527215 () Bool)

(assert (=> b!2527215 (= e!1599716 e!1599720)))

(declare-fun res!1067458 () Bool)

(assert (=> b!2527215 (=> (not res!1067458) (not e!1599720))))

(assert (=> b!2527215 (= res!1067458 (not lt!900755))))

(declare-fun b!2527216 () Bool)

(assert (=> b!2527216 (= e!1599718 (matchR!3509 (derivativeStep!2091 lt!900706 (head!5771 tl!4068)) (tail!4048 tl!4068)))))

(assert (= (and d!719191 c!403505) b!2527212))

(assert (= (and d!719191 (not c!403505)) b!2527216))

(assert (= (and d!719191 c!403506) b!2527211))

(assert (= (and d!719191 (not c!403506)) b!2527207))

(assert (= (and b!2527207 c!403504) b!2527213))

(assert (= (and b!2527207 (not c!403504)) b!2527203))

(assert (= (and b!2527203 (not res!1067460)) b!2527214))

(assert (= (and b!2527214 res!1067457) b!2527204))

(assert (= (and b!2527204 res!1067461) b!2527206))

(assert (= (and b!2527206 res!1067464) b!2527208))

(assert (= (and b!2527214 (not res!1067463)) b!2527215))

(assert (= (and b!2527215 res!1067458) b!2527210))

(assert (= (and b!2527210 (not res!1067462)) b!2527209))

(assert (= (and b!2527209 (not res!1067459)) b!2527205))

(assert (= (or b!2527211 b!2527204 b!2527210) bm!157971))

(declare-fun m!2880041 () Bool)

(assert (=> b!2527209 m!2880041))

(assert (=> b!2527209 m!2880041))

(declare-fun m!2880043 () Bool)

(assert (=> b!2527209 m!2880043))

(assert (=> b!2527206 m!2880041))

(assert (=> b!2527206 m!2880041))

(assert (=> b!2527206 m!2880043))

(declare-fun m!2880045 () Bool)

(assert (=> b!2527216 m!2880045))

(assert (=> b!2527216 m!2880045))

(declare-fun m!2880047 () Bool)

(assert (=> b!2527216 m!2880047))

(assert (=> b!2527216 m!2880041))

(assert (=> b!2527216 m!2880047))

(assert (=> b!2527216 m!2880041))

(declare-fun m!2880049 () Bool)

(assert (=> b!2527216 m!2880049))

(declare-fun m!2880051 () Bool)

(assert (=> d!719191 m!2880051))

(declare-fun m!2880053 () Bool)

(assert (=> d!719191 m!2880053))

(assert (=> bm!157971 m!2880051))

(assert (=> b!2527208 m!2880045))

(declare-fun m!2880055 () Bool)

(assert (=> b!2527212 m!2880055))

(assert (=> b!2527205 m!2880045))

(assert (=> b!2527009 d!719191))

(declare-fun d!719193 () Bool)

(assert (=> d!719193 (= (derivative!217 EmptyLang!7522 tl!4068) EmptyLang!7522)))

(declare-fun lt!900758 () Unit!43269)

(declare-fun choose!14987 (Regex!7522 List!29587) Unit!43269)

(assert (=> d!719193 (= lt!900758 (choose!14987 EmptyLang!7522 tl!4068))))

(assert (=> d!719193 (= EmptyLang!7522 EmptyLang!7522)))

(assert (=> d!719193 (= (lemmaEmptyLangDerivativeIsAFixPoint!39 EmptyLang!7522 tl!4068) lt!900758)))

(declare-fun bs!469121 () Bool)

(assert (= bs!469121 d!719193))

(assert (=> bs!469121 m!2879903))

(declare-fun m!2880057 () Bool)

(assert (=> bs!469121 m!2880057))

(assert (=> b!2527009 d!719193))

(declare-fun d!719195 () Bool)

(declare-fun e!1599737 () Bool)

(assert (=> d!719195 e!1599737))

(declare-fun res!1067469 () Bool)

(assert (=> d!719195 (=> res!1067469 e!1599737)))

(assert (=> d!719195 (= res!1067469 (matchR!3509 lt!900706 tl!4068))))

(declare-fun lt!900761 () Unit!43269)

(declare-fun choose!14988 (Regex!7522 Regex!7522 List!29587) Unit!43269)

(assert (=> d!719195 (= lt!900761 (choose!14988 lt!900706 EmptyLang!7522 tl!4068))))

(declare-fun e!1599736 () Bool)

(assert (=> d!719195 e!1599736))

(declare-fun res!1067470 () Bool)

(assert (=> d!719195 (=> (not res!1067470) (not e!1599736))))

(assert (=> d!719195 (= res!1067470 (validRegex!3148 lt!900706))))

(assert (=> d!719195 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!187 lt!900706 EmptyLang!7522 tl!4068) lt!900761)))

(declare-fun b!2527239 () Bool)

(assert (=> b!2527239 (= e!1599736 (validRegex!3148 EmptyLang!7522))))

(declare-fun b!2527240 () Bool)

(assert (=> b!2527240 (= e!1599737 (matchR!3509 EmptyLang!7522 tl!4068))))

(assert (= (and d!719195 res!1067470) b!2527239))

(assert (= (and d!719195 (not res!1067469)) b!2527240))

(assert (=> d!719195 m!2879905))

(declare-fun m!2880059 () Bool)

(assert (=> d!719195 m!2880059))

(assert (=> d!719195 m!2880053))

(assert (=> b!2527239 m!2880035))

(assert (=> b!2527240 m!2879877))

(assert (=> b!2527009 d!719195))

(declare-fun d!719197 () Bool)

(assert (=> d!719197 (= (matchR!3509 lt!900707 tl!4068) (matchR!3509 (derivative!217 lt!900707 tl!4068) Nil!29487))))

(declare-fun lt!900765 () Unit!43269)

(declare-fun choose!14989 (Regex!7522 List!29587) Unit!43269)

(assert (=> d!719197 (= lt!900765 (choose!14989 lt!900707 tl!4068))))

(assert (=> d!719197 (validRegex!3148 lt!900707)))

(assert (=> d!719197 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!155 lt!900707 tl!4068) lt!900765)))

(declare-fun bs!469122 () Bool)

(assert (= bs!469122 d!719197))

(assert (=> bs!469122 m!2879907))

(assert (=> bs!469122 m!2879897))

(declare-fun m!2880071 () Bool)

(assert (=> bs!469122 m!2880071))

(declare-fun m!2880073 () Bool)

(assert (=> bs!469122 m!2880073))

(assert (=> bs!469122 m!2879897))

(assert (=> bs!469122 m!2879899))

(assert (=> b!2527009 d!719197))

(declare-fun d!719201 () Bool)

(declare-fun lt!900766 () Regex!7522)

(assert (=> d!719201 (validRegex!3148 lt!900766)))

(declare-fun e!1599743 () Regex!7522)

(assert (=> d!719201 (= lt!900766 e!1599743)))

(declare-fun c!403522 () Bool)

(assert (=> d!719201 (= c!403522 (is-Cons!29487 tl!4068))))

(assert (=> d!719201 (validRegex!3148 lt!900707)))

(assert (=> d!719201 (= (derivative!217 lt!900707 tl!4068) lt!900766)))

(declare-fun b!2527251 () Bool)

(assert (=> b!2527251 (= e!1599743 (derivative!217 (derivativeStep!2091 lt!900707 (h!34907 tl!4068)) (t!211286 tl!4068)))))

(declare-fun b!2527252 () Bool)

(assert (=> b!2527252 (= e!1599743 lt!900707)))

(assert (= (and d!719201 c!403522) b!2527251))

(assert (= (and d!719201 (not c!403522)) b!2527252))

(declare-fun m!2880075 () Bool)

(assert (=> d!719201 m!2880075))

(assert (=> d!719201 m!2880073))

(declare-fun m!2880077 () Bool)

(assert (=> b!2527251 m!2880077))

(assert (=> b!2527251 m!2880077))

(declare-fun m!2880079 () Bool)

(assert (=> b!2527251 m!2880079))

(assert (=> b!2527009 d!719201))

(declare-fun b!2527253 () Bool)

(declare-fun res!1067474 () Bool)

(declare-fun e!1599745 () Bool)

(assert (=> b!2527253 (=> res!1067474 e!1599745)))

(assert (=> b!2527253 (= res!1067474 (not (is-ElementMatch!7522 lt!900707)))))

(declare-fun e!1599750 () Bool)

(assert (=> b!2527253 (= e!1599750 e!1599745)))

(declare-fun b!2527254 () Bool)

(declare-fun res!1067475 () Bool)

(declare-fun e!1599746 () Bool)

(assert (=> b!2527254 (=> (not res!1067475) (not e!1599746))))

(declare-fun call!157989 () Bool)

(assert (=> b!2527254 (= res!1067475 (not call!157989))))

(declare-fun b!2527255 () Bool)

(declare-fun e!1599744 () Bool)

(assert (=> b!2527255 (= e!1599744 (not (= (head!5771 tl!4068) (c!403460 lt!900707))))))

(declare-fun b!2527256 () Bool)

(declare-fun res!1067478 () Bool)

(assert (=> b!2527256 (=> (not res!1067478) (not e!1599746))))

(assert (=> b!2527256 (= res!1067478 (isEmpty!16964 (tail!4048 tl!4068)))))

(declare-fun b!2527257 () Bool)

(declare-fun e!1599748 () Bool)

(assert (=> b!2527257 (= e!1599748 e!1599750)))

(declare-fun c!403523 () Bool)

(assert (=> b!2527257 (= c!403523 (is-EmptyLang!7522 lt!900707))))

(declare-fun b!2527258 () Bool)

(assert (=> b!2527258 (= e!1599746 (= (head!5771 tl!4068) (c!403460 lt!900707)))))

(declare-fun b!2527259 () Bool)

(declare-fun res!1067473 () Bool)

(assert (=> b!2527259 (=> res!1067473 e!1599744)))

(assert (=> b!2527259 (= res!1067473 (not (isEmpty!16964 (tail!4048 tl!4068))))))

(declare-fun d!719203 () Bool)

(assert (=> d!719203 e!1599748))

(declare-fun c!403525 () Bool)

(assert (=> d!719203 (= c!403525 (is-EmptyExpr!7522 lt!900707))))

(declare-fun lt!900767 () Bool)

(declare-fun e!1599747 () Bool)

(assert (=> d!719203 (= lt!900767 e!1599747)))

(declare-fun c!403524 () Bool)

(assert (=> d!719203 (= c!403524 (isEmpty!16964 tl!4068))))

(assert (=> d!719203 (validRegex!3148 lt!900707)))

(assert (=> d!719203 (= (matchR!3509 lt!900707 tl!4068) lt!900767)))

(declare-fun b!2527260 () Bool)

(declare-fun e!1599749 () Bool)

(assert (=> b!2527260 (= e!1599749 e!1599744)))

(declare-fun res!1067476 () Bool)

(assert (=> b!2527260 (=> res!1067476 e!1599744)))

(assert (=> b!2527260 (= res!1067476 call!157989)))

(declare-fun b!2527261 () Bool)

(assert (=> b!2527261 (= e!1599748 (= lt!900767 call!157989))))

(declare-fun bm!157984 () Bool)

(assert (=> bm!157984 (= call!157989 (isEmpty!16964 tl!4068))))

(declare-fun b!2527262 () Bool)

(assert (=> b!2527262 (= e!1599747 (nullable!2439 lt!900707))))

(declare-fun b!2527263 () Bool)

(assert (=> b!2527263 (= e!1599750 (not lt!900767))))

(declare-fun b!2527264 () Bool)

(declare-fun res!1067477 () Bool)

(assert (=> b!2527264 (=> res!1067477 e!1599745)))

(assert (=> b!2527264 (= res!1067477 e!1599746)))

(declare-fun res!1067471 () Bool)

(assert (=> b!2527264 (=> (not res!1067471) (not e!1599746))))

(assert (=> b!2527264 (= res!1067471 lt!900767)))

(declare-fun b!2527265 () Bool)

(assert (=> b!2527265 (= e!1599745 e!1599749)))

(declare-fun res!1067472 () Bool)

(assert (=> b!2527265 (=> (not res!1067472) (not e!1599749))))

(assert (=> b!2527265 (= res!1067472 (not lt!900767))))

(declare-fun b!2527266 () Bool)

(assert (=> b!2527266 (= e!1599747 (matchR!3509 (derivativeStep!2091 lt!900707 (head!5771 tl!4068)) (tail!4048 tl!4068)))))

(assert (= (and d!719203 c!403524) b!2527262))

(assert (= (and d!719203 (not c!403524)) b!2527266))

(assert (= (and d!719203 c!403525) b!2527261))

(assert (= (and d!719203 (not c!403525)) b!2527257))

(assert (= (and b!2527257 c!403523) b!2527263))

(assert (= (and b!2527257 (not c!403523)) b!2527253))

(assert (= (and b!2527253 (not res!1067474)) b!2527264))

(assert (= (and b!2527264 res!1067471) b!2527254))

(assert (= (and b!2527254 res!1067475) b!2527256))

(assert (= (and b!2527256 res!1067478) b!2527258))

(assert (= (and b!2527264 (not res!1067477)) b!2527265))

(assert (= (and b!2527265 res!1067472) b!2527260))

(assert (= (and b!2527260 (not res!1067476)) b!2527259))

(assert (= (and b!2527259 (not res!1067473)) b!2527255))

(assert (= (or b!2527261 b!2527254 b!2527260) bm!157984))

(assert (=> b!2527259 m!2880041))

(assert (=> b!2527259 m!2880041))

(assert (=> b!2527259 m!2880043))

(assert (=> b!2527256 m!2880041))

(assert (=> b!2527256 m!2880041))

(assert (=> b!2527256 m!2880043))

(assert (=> b!2527266 m!2880045))

(assert (=> b!2527266 m!2880045))

(declare-fun m!2880081 () Bool)

(assert (=> b!2527266 m!2880081))

(assert (=> b!2527266 m!2880041))

(assert (=> b!2527266 m!2880081))

(assert (=> b!2527266 m!2880041))

(declare-fun m!2880083 () Bool)

(assert (=> b!2527266 m!2880083))

(assert (=> d!719203 m!2880051))

(assert (=> d!719203 m!2880073))

(assert (=> bm!157984 m!2880051))

(assert (=> b!2527258 m!2880045))

(declare-fun m!2880085 () Bool)

(assert (=> b!2527262 m!2880085))

(assert (=> b!2527255 m!2880045))

(assert (=> b!2527009 d!719203))

(declare-fun b!2527299 () Bool)

(declare-fun e!1599777 () Bool)

(declare-fun call!157997 () Bool)

(assert (=> b!2527299 (= e!1599777 call!157997)))

(declare-fun bm!157992 () Bool)

(declare-fun call!157999 () Bool)

(assert (=> bm!157992 (= call!157997 call!157999)))

(declare-fun b!2527300 () Bool)

(declare-fun e!1599775 () Bool)

(assert (=> b!2527300 (= e!1599775 e!1599777)))

(declare-fun res!1067498 () Bool)

(assert (=> b!2527300 (=> (not res!1067498) (not e!1599777))))

(declare-fun call!157998 () Bool)

(assert (=> b!2527300 (= res!1067498 call!157998)))

(declare-fun b!2527301 () Bool)

(declare-fun e!1599774 () Bool)

(declare-fun e!1599773 () Bool)

(assert (=> b!2527301 (= e!1599774 e!1599773)))

(declare-fun c!403533 () Bool)

(assert (=> b!2527301 (= c!403533 (is-Union!7522 r!27340))))

(declare-fun b!2527302 () Bool)

(declare-fun e!1599772 () Bool)

(assert (=> b!2527302 (= e!1599772 e!1599774)))

(declare-fun c!403534 () Bool)

(assert (=> b!2527302 (= c!403534 (is-Star!7522 r!27340))))

(declare-fun b!2527303 () Bool)

(declare-fun e!1599778 () Bool)

(assert (=> b!2527303 (= e!1599774 e!1599778)))

(declare-fun res!1067497 () Bool)

(assert (=> b!2527303 (= res!1067497 (not (nullable!2439 (reg!7851 r!27340))))))

(assert (=> b!2527303 (=> (not res!1067497) (not e!1599778))))

(declare-fun b!2527304 () Bool)

(assert (=> b!2527304 (= e!1599778 call!157999)))

(declare-fun bm!157994 () Bool)

(assert (=> bm!157994 (= call!157998 (validRegex!3148 (ite c!403533 (regTwo!15557 r!27340) (regOne!15556 r!27340))))))

(declare-fun b!2527305 () Bool)

(declare-fun res!1067501 () Bool)

(declare-fun e!1599776 () Bool)

(assert (=> b!2527305 (=> (not res!1067501) (not e!1599776))))

(assert (=> b!2527305 (= res!1067501 call!157997)))

(assert (=> b!2527305 (= e!1599773 e!1599776)))

(declare-fun b!2527306 () Bool)

(assert (=> b!2527306 (= e!1599776 call!157998)))

(declare-fun b!2527307 () Bool)

(declare-fun res!1067500 () Bool)

(assert (=> b!2527307 (=> res!1067500 e!1599775)))

(assert (=> b!2527307 (= res!1067500 (not (is-Concat!12218 r!27340)))))

(assert (=> b!2527307 (= e!1599773 e!1599775)))

(declare-fun bm!157993 () Bool)

(assert (=> bm!157993 (= call!157999 (validRegex!3148 (ite c!403534 (reg!7851 r!27340) (ite c!403533 (regOne!15557 r!27340) (regTwo!15556 r!27340)))))))

(declare-fun d!719205 () Bool)

(declare-fun res!1067499 () Bool)

(assert (=> d!719205 (=> res!1067499 e!1599772)))

(assert (=> d!719205 (= res!1067499 (is-ElementMatch!7522 r!27340))))

(assert (=> d!719205 (= (validRegex!3148 r!27340) e!1599772)))

(assert (= (and d!719205 (not res!1067499)) b!2527302))

(assert (= (and b!2527302 c!403534) b!2527303))

(assert (= (and b!2527302 (not c!403534)) b!2527301))

(assert (= (and b!2527303 res!1067497) b!2527304))

(assert (= (and b!2527301 c!403533) b!2527305))

(assert (= (and b!2527301 (not c!403533)) b!2527307))

(assert (= (and b!2527305 res!1067501) b!2527306))

(assert (= (and b!2527307 (not res!1067500)) b!2527300))

(assert (= (and b!2527300 res!1067498) b!2527299))

(assert (= (or b!2527305 b!2527299) bm!157992))

(assert (= (or b!2527306 b!2527300) bm!157994))

(assert (= (or b!2527304 bm!157992) bm!157993))

(declare-fun m!2880107 () Bool)

(assert (=> b!2527303 m!2880107))

(declare-fun m!2880109 () Bool)

(assert (=> bm!157994 m!2880109))

(declare-fun m!2880111 () Bool)

(assert (=> bm!157993 m!2880111))

(assert (=> start!246154 d!719205))

(declare-fun d!719211 () Bool)

(declare-fun nullableFct!680 (Regex!7522) Bool)

(assert (=> d!719211 (= (nullable!2439 (derivative!217 (derivativeStep!2091 r!27340 c!14016) tl!4068)) (nullableFct!680 (derivative!217 (derivativeStep!2091 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469125 () Bool)

(assert (= bs!469125 d!719211))

(assert (=> bs!469125 m!2879871))

(declare-fun m!2880115 () Bool)

(assert (=> bs!469125 m!2880115))

(assert (=> b!2527005 d!719211))

(declare-fun d!719215 () Bool)

(declare-fun lt!900776 () Regex!7522)

(assert (=> d!719215 (validRegex!3148 lt!900776)))

(declare-fun e!1599786 () Regex!7522)

(assert (=> d!719215 (= lt!900776 e!1599786)))

(declare-fun c!403538 () Bool)

(assert (=> d!719215 (= c!403538 (is-Cons!29487 tl!4068))))

(assert (=> d!719215 (validRegex!3148 (derivativeStep!2091 r!27340 c!14016))))

(assert (=> d!719215 (= (derivative!217 (derivativeStep!2091 r!27340 c!14016) tl!4068) lt!900776)))

(declare-fun b!2527322 () Bool)

(assert (=> b!2527322 (= e!1599786 (derivative!217 (derivativeStep!2091 (derivativeStep!2091 r!27340 c!14016) (h!34907 tl!4068)) (t!211286 tl!4068)))))

(declare-fun b!2527323 () Bool)

(assert (=> b!2527323 (= e!1599786 (derivativeStep!2091 r!27340 c!14016))))

(assert (= (and d!719215 c!403538) b!2527322))

(assert (= (and d!719215 (not c!403538)) b!2527323))

(declare-fun m!2880117 () Bool)

(assert (=> d!719215 m!2880117))

(assert (=> d!719215 m!2879869))

(declare-fun m!2880119 () Bool)

(assert (=> d!719215 m!2880119))

(assert (=> b!2527322 m!2879869))

(declare-fun m!2880121 () Bool)

(assert (=> b!2527322 m!2880121))

(assert (=> b!2527322 m!2880121))

(declare-fun m!2880123 () Bool)

(assert (=> b!2527322 m!2880123))

(assert (=> b!2527005 d!719215))

(declare-fun b!2527324 () Bool)

(declare-fun e!1599789 () Regex!7522)

(declare-fun call!158004 () Regex!7522)

(declare-fun call!158001 () Regex!7522)

(assert (=> b!2527324 (= e!1599789 (Union!7522 call!158004 call!158001))))

(declare-fun c!403543 () Bool)

(declare-fun bm!157996 () Bool)

(declare-fun c!403539 () Bool)

(assert (=> bm!157996 (= call!158004 (derivativeStep!2091 (ite c!403539 (regOne!15557 r!27340) (ite c!403543 (reg!7851 r!27340) (regOne!15556 r!27340))) c!14016))))

(declare-fun b!2527325 () Bool)

(declare-fun e!1599791 () Regex!7522)

(assert (=> b!2527325 (= e!1599791 EmptyLang!7522)))

(declare-fun b!2527326 () Bool)

(declare-fun e!1599788 () Regex!7522)

(declare-fun call!158003 () Regex!7522)

(assert (=> b!2527326 (= e!1599788 (Union!7522 (Concat!12218 call!158003 (regTwo!15556 r!27340)) EmptyLang!7522))))

(declare-fun b!2527327 () Bool)

(declare-fun e!1599790 () Regex!7522)

(assert (=> b!2527327 (= e!1599791 e!1599790)))

(declare-fun c!403542 () Bool)

(assert (=> b!2527327 (= c!403542 (is-ElementMatch!7522 r!27340))))

(declare-fun b!2527328 () Bool)

(assert (=> b!2527328 (= e!1599790 (ite (= c!14016 (c!403460 r!27340)) EmptyExpr!7522 EmptyLang!7522))))

(declare-fun b!2527329 () Bool)

(declare-fun e!1599787 () Regex!7522)

(assert (=> b!2527329 (= e!1599789 e!1599787)))

(assert (=> b!2527329 (= c!403543 (is-Star!7522 r!27340))))

(declare-fun bm!157997 () Bool)

(declare-fun call!158002 () Regex!7522)

(assert (=> bm!157997 (= call!158003 call!158002)))

(declare-fun d!719217 () Bool)

(declare-fun lt!900777 () Regex!7522)

(assert (=> d!719217 (validRegex!3148 lt!900777)))

(assert (=> d!719217 (= lt!900777 e!1599791)))

(declare-fun c!403541 () Bool)

(assert (=> d!719217 (= c!403541 (or (is-EmptyExpr!7522 r!27340) (is-EmptyLang!7522 r!27340)))))

(assert (=> d!719217 (validRegex!3148 r!27340)))

(assert (=> d!719217 (= (derivativeStep!2091 r!27340 c!14016) lt!900777)))

(declare-fun bm!157998 () Bool)

(assert (=> bm!157998 (= call!158002 call!158004)))

(declare-fun b!2527330 () Bool)

(assert (=> b!2527330 (= c!403539 (is-Union!7522 r!27340))))

(assert (=> b!2527330 (= e!1599790 e!1599789)))

(declare-fun b!2527331 () Bool)

(declare-fun c!403540 () Bool)

(assert (=> b!2527331 (= c!403540 (nullable!2439 (regOne!15556 r!27340)))))

(assert (=> b!2527331 (= e!1599787 e!1599788)))

(declare-fun b!2527332 () Bool)

(assert (=> b!2527332 (= e!1599788 (Union!7522 (Concat!12218 call!158003 (regTwo!15556 r!27340)) call!158001))))

(declare-fun bm!157999 () Bool)

(assert (=> bm!157999 (= call!158001 (derivativeStep!2091 (ite c!403539 (regTwo!15557 r!27340) (regTwo!15556 r!27340)) c!14016))))

(declare-fun b!2527333 () Bool)

(assert (=> b!2527333 (= e!1599787 (Concat!12218 call!158002 r!27340))))

(assert (= (and d!719217 c!403541) b!2527325))

(assert (= (and d!719217 (not c!403541)) b!2527327))

(assert (= (and b!2527327 c!403542) b!2527328))

(assert (= (and b!2527327 (not c!403542)) b!2527330))

(assert (= (and b!2527330 c!403539) b!2527324))

(assert (= (and b!2527330 (not c!403539)) b!2527329))

(assert (= (and b!2527329 c!403543) b!2527333))

(assert (= (and b!2527329 (not c!403543)) b!2527331))

(assert (= (and b!2527331 c!403540) b!2527332))

(assert (= (and b!2527331 (not c!403540)) b!2527326))

(assert (= (or b!2527332 b!2527326) bm!157997))

(assert (= (or b!2527333 bm!157997) bm!157998))

(assert (= (or b!2527324 b!2527332) bm!157999))

(assert (= (or b!2527324 bm!157998) bm!157996))

(declare-fun m!2880125 () Bool)

(assert (=> bm!157996 m!2880125))

(declare-fun m!2880127 () Bool)

(assert (=> d!719217 m!2880127))

(assert (=> d!719217 m!2879875))

(assert (=> b!2527331 m!2879891))

(declare-fun m!2880129 () Bool)

(assert (=> bm!157999 m!2880129))

(assert (=> b!2527005 d!719217))

(declare-fun d!719219 () Bool)

(assert (=> d!719219 (isDefined!4713 (findConcatSeparation!913 lt!900704 (regTwo!15556 r!27340) Nil!29487 tl!4068 tl!4068))))

(declare-fun lt!900780 () Unit!43269)

(declare-fun choose!14990 (Regex!7522 Regex!7522 List!29587) Unit!43269)

(assert (=> d!719219 (= lt!900780 (choose!14990 lt!900704 (regTwo!15556 r!27340) tl!4068))))

(assert (=> d!719219 (validRegex!3148 lt!900704)))

(assert (=> d!719219 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!195 lt!900704 (regTwo!15556 r!27340) tl!4068) lt!900780)))

(declare-fun bs!469126 () Bool)

(assert (= bs!469126 d!719219))

(assert (=> bs!469126 m!2879885))

(assert (=> bs!469126 m!2879885))

(declare-fun m!2880137 () Bool)

(assert (=> bs!469126 m!2880137))

(declare-fun m!2880139 () Bool)

(assert (=> bs!469126 m!2880139))

(assert (=> bs!469126 m!2879985))

(assert (=> b!2527011 d!719219))

(declare-fun d!719223 () Bool)

(declare-fun isEmpty!16966 (Option!5891) Bool)

(assert (=> d!719223 (= (isDefined!4713 lt!900701) (not (isEmpty!16966 lt!900701)))))

(declare-fun bs!469127 () Bool)

(assert (= bs!469127 d!719223))

(declare-fun m!2880141 () Bool)

(assert (=> bs!469127 m!2880141))

(assert (=> b!2527011 d!719223))

(declare-fun d!719225 () Bool)

(declare-fun e!1599799 () Bool)

(assert (=> d!719225 e!1599799))

(declare-fun res!1067514 () Bool)

(assert (=> d!719225 (=> (not res!1067514) (not e!1599799))))

(declare-fun lt!900786 () List!29587)

(declare-fun content!4048 (List!29587) (Set C!15202))

(assert (=> d!719225 (= res!1067514 (= (content!4048 lt!900786) (set.union (content!4048 (_1!17313 lt!900702)) (content!4048 (_2!17313 lt!900702)))))))

(declare-fun e!1599800 () List!29587)

(assert (=> d!719225 (= lt!900786 e!1599800)))

(declare-fun c!403549 () Bool)

(assert (=> d!719225 (= c!403549 (is-Nil!29487 (_1!17313 lt!900702)))))

(assert (=> d!719225 (= (++!7241 (_1!17313 lt!900702) (_2!17313 lt!900702)) lt!900786)))

(declare-fun b!2527348 () Bool)

(assert (=> b!2527348 (= e!1599800 (_2!17313 lt!900702))))

(declare-fun b!2527350 () Bool)

(declare-fun res!1067515 () Bool)

(assert (=> b!2527350 (=> (not res!1067515) (not e!1599799))))

(declare-fun size!22930 (List!29587) Int)

(assert (=> b!2527350 (= res!1067515 (= (size!22930 lt!900786) (+ (size!22930 (_1!17313 lt!900702)) (size!22930 (_2!17313 lt!900702)))))))

(declare-fun b!2527349 () Bool)

(assert (=> b!2527349 (= e!1599800 (Cons!29487 (h!34907 (_1!17313 lt!900702)) (++!7241 (t!211286 (_1!17313 lt!900702)) (_2!17313 lt!900702))))))

(declare-fun b!2527351 () Bool)

(assert (=> b!2527351 (= e!1599799 (or (not (= (_2!17313 lt!900702) Nil!29487)) (= lt!900786 (_1!17313 lt!900702))))))

(assert (= (and d!719225 c!403549) b!2527348))

(assert (= (and d!719225 (not c!403549)) b!2527349))

(assert (= (and d!719225 res!1067514) b!2527350))

(assert (= (and b!2527350 res!1067515) b!2527351))

(declare-fun m!2880149 () Bool)

(assert (=> d!719225 m!2880149))

(declare-fun m!2880151 () Bool)

(assert (=> d!719225 m!2880151))

(declare-fun m!2880153 () Bool)

(assert (=> d!719225 m!2880153))

(declare-fun m!2880155 () Bool)

(assert (=> b!2527350 m!2880155))

(declare-fun m!2880157 () Bool)

(assert (=> b!2527350 m!2880157))

(declare-fun m!2880159 () Bool)

(assert (=> b!2527350 m!2880159))

(declare-fun m!2880161 () Bool)

(assert (=> b!2527349 m!2880161))

(assert (=> b!2527011 d!719225))

(declare-fun d!719229 () Bool)

(assert (=> d!719229 (= (get!9231 lt!900701) (v!31823 lt!900701))))

(assert (=> b!2527011 d!719229))

(declare-fun b!2527394 () Bool)

(declare-fun e!1599826 () Bool)

(declare-fun lt!900800 () Option!5891)

(assert (=> b!2527394 (= e!1599826 (= (++!7241 (_1!17313 (get!9231 lt!900800)) (_2!17313 (get!9231 lt!900800))) tl!4068))))

(declare-fun b!2527395 () Bool)

(declare-fun e!1599827 () Option!5891)

(assert (=> b!2527395 (= e!1599827 (Some!5890 (tuple2!29543 Nil!29487 tl!4068)))))

(declare-fun b!2527396 () Bool)

(declare-fun e!1599830 () Option!5891)

(assert (=> b!2527396 (= e!1599827 e!1599830)))

(declare-fun c!403560 () Bool)

(assert (=> b!2527396 (= c!403560 (is-Nil!29487 tl!4068))))

(declare-fun d!719231 () Bool)

(declare-fun e!1599829 () Bool)

(assert (=> d!719231 e!1599829))

(declare-fun res!1067542 () Bool)

(assert (=> d!719231 (=> res!1067542 e!1599829)))

(assert (=> d!719231 (= res!1067542 e!1599826)))

(declare-fun res!1067540 () Bool)

(assert (=> d!719231 (=> (not res!1067540) (not e!1599826))))

(assert (=> d!719231 (= res!1067540 (isDefined!4713 lt!900800))))

(assert (=> d!719231 (= lt!900800 e!1599827)))

(declare-fun c!403559 () Bool)

(declare-fun e!1599828 () Bool)

(assert (=> d!719231 (= c!403559 e!1599828)))

(declare-fun res!1067543 () Bool)

(assert (=> d!719231 (=> (not res!1067543) (not e!1599828))))

(assert (=> d!719231 (= res!1067543 (matchR!3509 lt!900704 Nil!29487))))

(assert (=> d!719231 (validRegex!3148 lt!900704)))

(assert (=> d!719231 (= (findConcatSeparation!913 lt!900704 (regTwo!15556 r!27340) Nil!29487 tl!4068 tl!4068) lt!900800)))

(declare-fun b!2527397 () Bool)

(declare-fun res!1067541 () Bool)

(assert (=> b!2527397 (=> (not res!1067541) (not e!1599826))))

(assert (=> b!2527397 (= res!1067541 (matchR!3509 (regTwo!15556 r!27340) (_2!17313 (get!9231 lt!900800))))))

(declare-fun b!2527398 () Bool)

(declare-fun lt!900799 () Unit!43269)

(declare-fun lt!900801 () Unit!43269)

(assert (=> b!2527398 (= lt!900799 lt!900801)))

(assert (=> b!2527398 (= (++!7241 (++!7241 Nil!29487 (Cons!29487 (h!34907 tl!4068) Nil!29487)) (t!211286 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!781 (List!29587 C!15202 List!29587 List!29587) Unit!43269)

(assert (=> b!2527398 (= lt!900801 (lemmaMoveElementToOtherListKeepsConcatEq!781 Nil!29487 (h!34907 tl!4068) (t!211286 tl!4068) tl!4068))))

(assert (=> b!2527398 (= e!1599830 (findConcatSeparation!913 lt!900704 (regTwo!15556 r!27340) (++!7241 Nil!29487 (Cons!29487 (h!34907 tl!4068) Nil!29487)) (t!211286 tl!4068) tl!4068))))

(declare-fun b!2527399 () Bool)

(assert (=> b!2527399 (= e!1599828 (matchR!3509 (regTwo!15556 r!27340) tl!4068))))

(declare-fun b!2527400 () Bool)

(assert (=> b!2527400 (= e!1599829 (not (isDefined!4713 lt!900800)))))

(declare-fun b!2527401 () Bool)

(assert (=> b!2527401 (= e!1599830 None!5890)))

(declare-fun b!2527402 () Bool)

(declare-fun res!1067544 () Bool)

(assert (=> b!2527402 (=> (not res!1067544) (not e!1599826))))

(assert (=> b!2527402 (= res!1067544 (matchR!3509 lt!900704 (_1!17313 (get!9231 lt!900800))))))

(assert (= (and d!719231 res!1067543) b!2527399))

(assert (= (and d!719231 c!403559) b!2527395))

(assert (= (and d!719231 (not c!403559)) b!2527396))

(assert (= (and b!2527396 c!403560) b!2527401))

(assert (= (and b!2527396 (not c!403560)) b!2527398))

(assert (= (and d!719231 res!1067540) b!2527402))

(assert (= (and b!2527402 res!1067544) b!2527397))

(assert (= (and b!2527397 res!1067541) b!2527394))

(assert (= (and d!719231 (not res!1067542)) b!2527400))

(declare-fun m!2880199 () Bool)

(assert (=> b!2527400 m!2880199))

(declare-fun m!2880201 () Bool)

(assert (=> b!2527402 m!2880201))

(declare-fun m!2880203 () Bool)

(assert (=> b!2527402 m!2880203))

(assert (=> b!2527397 m!2880201))

(declare-fun m!2880205 () Bool)

(assert (=> b!2527397 m!2880205))

(assert (=> d!719231 m!2880199))

(declare-fun m!2880207 () Bool)

(assert (=> d!719231 m!2880207))

(assert (=> d!719231 m!2879985))

(declare-fun m!2880209 () Bool)

(assert (=> b!2527399 m!2880209))

(declare-fun m!2880211 () Bool)

(assert (=> b!2527398 m!2880211))

(assert (=> b!2527398 m!2880211))

(declare-fun m!2880213 () Bool)

(assert (=> b!2527398 m!2880213))

(declare-fun m!2880215 () Bool)

(assert (=> b!2527398 m!2880215))

(assert (=> b!2527398 m!2880211))

(declare-fun m!2880217 () Bool)

(assert (=> b!2527398 m!2880217))

(assert (=> b!2527394 m!2880201))

(declare-fun m!2880219 () Bool)

(assert (=> b!2527394 m!2880219))

(assert (=> b!2527011 d!719231))

(declare-fun b!2527413 () Bool)

(declare-fun res!1067548 () Bool)

(declare-fun e!1599837 () Bool)

(assert (=> b!2527413 (=> res!1067548 e!1599837)))

(assert (=> b!2527413 (= res!1067548 (not (is-ElementMatch!7522 EmptyLang!7522)))))

(declare-fun e!1599842 () Bool)

(assert (=> b!2527413 (= e!1599842 e!1599837)))

(declare-fun b!2527414 () Bool)

(declare-fun res!1067549 () Bool)

(declare-fun e!1599838 () Bool)

(assert (=> b!2527414 (=> (not res!1067549) (not e!1599838))))

(declare-fun call!158010 () Bool)

(assert (=> b!2527414 (= res!1067549 (not call!158010))))

(declare-fun b!2527415 () Bool)

(declare-fun e!1599836 () Bool)

(assert (=> b!2527415 (= e!1599836 (not (= (head!5771 tl!4068) (c!403460 EmptyLang!7522))))))

(declare-fun b!2527416 () Bool)

(declare-fun res!1067552 () Bool)

(assert (=> b!2527416 (=> (not res!1067552) (not e!1599838))))

(assert (=> b!2527416 (= res!1067552 (isEmpty!16964 (tail!4048 tl!4068)))))

(declare-fun b!2527417 () Bool)

(declare-fun e!1599840 () Bool)

(assert (=> b!2527417 (= e!1599840 e!1599842)))

(declare-fun c!403566 () Bool)

(assert (=> b!2527417 (= c!403566 (is-EmptyLang!7522 EmptyLang!7522))))

(declare-fun b!2527418 () Bool)

(assert (=> b!2527418 (= e!1599838 (= (head!5771 tl!4068) (c!403460 EmptyLang!7522)))))

(declare-fun b!2527419 () Bool)

(declare-fun res!1067547 () Bool)

(assert (=> b!2527419 (=> res!1067547 e!1599836)))

(assert (=> b!2527419 (= res!1067547 (not (isEmpty!16964 (tail!4048 tl!4068))))))

(declare-fun d!719243 () Bool)

(assert (=> d!719243 e!1599840))

(declare-fun c!403568 () Bool)

(assert (=> d!719243 (= c!403568 (is-EmptyExpr!7522 EmptyLang!7522))))

(declare-fun lt!900803 () Bool)

(declare-fun e!1599839 () Bool)

(assert (=> d!719243 (= lt!900803 e!1599839)))

(declare-fun c!403567 () Bool)

(assert (=> d!719243 (= c!403567 (isEmpty!16964 tl!4068))))

(assert (=> d!719243 (validRegex!3148 EmptyLang!7522)))

(assert (=> d!719243 (= (matchR!3509 EmptyLang!7522 tl!4068) lt!900803)))

(declare-fun b!2527420 () Bool)

(declare-fun e!1599841 () Bool)

(assert (=> b!2527420 (= e!1599841 e!1599836)))

(declare-fun res!1067550 () Bool)

(assert (=> b!2527420 (=> res!1067550 e!1599836)))

(assert (=> b!2527420 (= res!1067550 call!158010)))

(declare-fun b!2527421 () Bool)

(assert (=> b!2527421 (= e!1599840 (= lt!900803 call!158010))))

(declare-fun bm!158005 () Bool)

(assert (=> bm!158005 (= call!158010 (isEmpty!16964 tl!4068))))

(declare-fun b!2527422 () Bool)

(assert (=> b!2527422 (= e!1599839 (nullable!2439 EmptyLang!7522))))

(declare-fun b!2527423 () Bool)

(assert (=> b!2527423 (= e!1599842 (not lt!900803))))

(declare-fun b!2527424 () Bool)

(declare-fun res!1067551 () Bool)

(assert (=> b!2527424 (=> res!1067551 e!1599837)))

(assert (=> b!2527424 (= res!1067551 e!1599838)))

(declare-fun res!1067545 () Bool)

(assert (=> b!2527424 (=> (not res!1067545) (not e!1599838))))

(assert (=> b!2527424 (= res!1067545 lt!900803)))

(declare-fun b!2527425 () Bool)

(assert (=> b!2527425 (= e!1599837 e!1599841)))

(declare-fun res!1067546 () Bool)

(assert (=> b!2527425 (=> (not res!1067546) (not e!1599841))))

(assert (=> b!2527425 (= res!1067546 (not lt!900803))))

(declare-fun b!2527426 () Bool)

(assert (=> b!2527426 (= e!1599839 (matchR!3509 (derivativeStep!2091 EmptyLang!7522 (head!5771 tl!4068)) (tail!4048 tl!4068)))))

(assert (= (and d!719243 c!403567) b!2527422))

(assert (= (and d!719243 (not c!403567)) b!2527426))

(assert (= (and d!719243 c!403568) b!2527421))

(assert (= (and d!719243 (not c!403568)) b!2527417))

(assert (= (and b!2527417 c!403566) b!2527423))

(assert (= (and b!2527417 (not c!403566)) b!2527413))

(assert (= (and b!2527413 (not res!1067548)) b!2527424))

(assert (= (and b!2527424 res!1067545) b!2527414))

(assert (= (and b!2527414 res!1067549) b!2527416))

(assert (= (and b!2527416 res!1067552) b!2527418))

(assert (= (and b!2527424 (not res!1067551)) b!2527425))

(assert (= (and b!2527425 res!1067546) b!2527420))

(assert (= (and b!2527420 (not res!1067550)) b!2527419))

(assert (= (and b!2527419 (not res!1067547)) b!2527415))

(assert (= (or b!2527421 b!2527414 b!2527420) bm!158005))

(assert (=> b!2527419 m!2880041))

(assert (=> b!2527419 m!2880041))

(assert (=> b!2527419 m!2880043))

(assert (=> b!2527416 m!2880041))

(assert (=> b!2527416 m!2880041))

(assert (=> b!2527416 m!2880043))

(assert (=> b!2527426 m!2880045))

(assert (=> b!2527426 m!2880045))

(declare-fun m!2880227 () Bool)

(assert (=> b!2527426 m!2880227))

(assert (=> b!2527426 m!2880041))

(assert (=> b!2527426 m!2880227))

(assert (=> b!2527426 m!2880041))

(declare-fun m!2880229 () Bool)

(assert (=> b!2527426 m!2880229))

(assert (=> d!719243 m!2880051))

(assert (=> d!719243 m!2880035))

(assert (=> bm!158005 m!2880051))

(assert (=> b!2527418 m!2880045))

(declare-fun m!2880231 () Bool)

(assert (=> b!2527422 m!2880231))

(assert (=> b!2527415 m!2880045))

(assert (=> b!2527012 d!719243))

(declare-fun d!719247 () Bool)

(assert (=> d!719247 (= (nullable!2439 (regOne!15556 r!27340)) (nullableFct!680 (regOne!15556 r!27340)))))

(declare-fun bs!469129 () Bool)

(assert (= bs!469129 d!719247))

(declare-fun m!2880233 () Bool)

(assert (=> bs!469129 m!2880233))

(assert (=> b!2527007 d!719247))

(declare-fun b!2527431 () Bool)

(declare-fun e!1599845 () Bool)

(declare-fun tp!806881 () Bool)

(assert (=> b!2527431 (= e!1599845 (and tp_is_empty!12899 tp!806881))))

(assert (=> b!2527003 (= tp!806858 e!1599845)))

(assert (= (and b!2527003 (is-Cons!29487 (t!211286 tl!4068))) b!2527431))

(declare-fun b!2527442 () Bool)

(declare-fun e!1599848 () Bool)

(assert (=> b!2527442 (= e!1599848 tp_is_empty!12899)))

(assert (=> b!2527004 (= tp!806860 e!1599848)))

(declare-fun b!2527443 () Bool)

(declare-fun tp!806894 () Bool)

(declare-fun tp!806896 () Bool)

(assert (=> b!2527443 (= e!1599848 (and tp!806894 tp!806896))))

(declare-fun b!2527444 () Bool)

(declare-fun tp!806895 () Bool)

(assert (=> b!2527444 (= e!1599848 tp!806895)))

(declare-fun b!2527445 () Bool)

(declare-fun tp!806892 () Bool)

(declare-fun tp!806893 () Bool)

(assert (=> b!2527445 (= e!1599848 (and tp!806892 tp!806893))))

(assert (= (and b!2527004 (is-ElementMatch!7522 (regOne!15556 r!27340))) b!2527442))

(assert (= (and b!2527004 (is-Concat!12218 (regOne!15556 r!27340))) b!2527443))

(assert (= (and b!2527004 (is-Star!7522 (regOne!15556 r!27340))) b!2527444))

(assert (= (and b!2527004 (is-Union!7522 (regOne!15556 r!27340))) b!2527445))

(declare-fun b!2527446 () Bool)

(declare-fun e!1599849 () Bool)

(assert (=> b!2527446 (= e!1599849 tp_is_empty!12899)))

(assert (=> b!2527004 (= tp!806859 e!1599849)))

(declare-fun b!2527447 () Bool)

(declare-fun tp!806899 () Bool)

(declare-fun tp!806901 () Bool)

(assert (=> b!2527447 (= e!1599849 (and tp!806899 tp!806901))))

(declare-fun b!2527448 () Bool)

(declare-fun tp!806900 () Bool)

(assert (=> b!2527448 (= e!1599849 tp!806900)))

(declare-fun b!2527449 () Bool)

(declare-fun tp!806897 () Bool)

(declare-fun tp!806898 () Bool)

(assert (=> b!2527449 (= e!1599849 (and tp!806897 tp!806898))))

(assert (= (and b!2527004 (is-ElementMatch!7522 (regTwo!15556 r!27340))) b!2527446))

(assert (= (and b!2527004 (is-Concat!12218 (regTwo!15556 r!27340))) b!2527447))

(assert (= (and b!2527004 (is-Star!7522 (regTwo!15556 r!27340))) b!2527448))

(assert (= (and b!2527004 (is-Union!7522 (regTwo!15556 r!27340))) b!2527449))

(declare-fun b!2527450 () Bool)

(declare-fun e!1599850 () Bool)

(assert (=> b!2527450 (= e!1599850 tp_is_empty!12899)))

(assert (=> b!2527010 (= tp!806856 e!1599850)))

(declare-fun b!2527451 () Bool)

(declare-fun tp!806904 () Bool)

(declare-fun tp!806906 () Bool)

(assert (=> b!2527451 (= e!1599850 (and tp!806904 tp!806906))))

(declare-fun b!2527452 () Bool)

(declare-fun tp!806905 () Bool)

(assert (=> b!2527452 (= e!1599850 tp!806905)))

(declare-fun b!2527453 () Bool)

(declare-fun tp!806902 () Bool)

(declare-fun tp!806903 () Bool)

(assert (=> b!2527453 (= e!1599850 (and tp!806902 tp!806903))))

(assert (= (and b!2527010 (is-ElementMatch!7522 (reg!7851 r!27340))) b!2527450))

(assert (= (and b!2527010 (is-Concat!12218 (reg!7851 r!27340))) b!2527451))

(assert (= (and b!2527010 (is-Star!7522 (reg!7851 r!27340))) b!2527452))

(assert (= (and b!2527010 (is-Union!7522 (reg!7851 r!27340))) b!2527453))

(declare-fun b!2527454 () Bool)

(declare-fun e!1599851 () Bool)

(assert (=> b!2527454 (= e!1599851 tp_is_empty!12899)))

(assert (=> b!2527001 (= tp!806857 e!1599851)))

(declare-fun b!2527455 () Bool)

(declare-fun tp!806909 () Bool)

(declare-fun tp!806911 () Bool)

(assert (=> b!2527455 (= e!1599851 (and tp!806909 tp!806911))))

(declare-fun b!2527456 () Bool)

(declare-fun tp!806910 () Bool)

(assert (=> b!2527456 (= e!1599851 tp!806910)))

(declare-fun b!2527457 () Bool)

(declare-fun tp!806907 () Bool)

(declare-fun tp!806908 () Bool)

(assert (=> b!2527457 (= e!1599851 (and tp!806907 tp!806908))))

(assert (= (and b!2527001 (is-ElementMatch!7522 (regOne!15557 r!27340))) b!2527454))

(assert (= (and b!2527001 (is-Concat!12218 (regOne!15557 r!27340))) b!2527455))

(assert (= (and b!2527001 (is-Star!7522 (regOne!15557 r!27340))) b!2527456))

(assert (= (and b!2527001 (is-Union!7522 (regOne!15557 r!27340))) b!2527457))

(declare-fun b!2527458 () Bool)

(declare-fun e!1599852 () Bool)

(assert (=> b!2527458 (= e!1599852 tp_is_empty!12899)))

(assert (=> b!2527001 (= tp!806855 e!1599852)))

(declare-fun b!2527459 () Bool)

(declare-fun tp!806914 () Bool)

(declare-fun tp!806916 () Bool)

(assert (=> b!2527459 (= e!1599852 (and tp!806914 tp!806916))))

(declare-fun b!2527460 () Bool)

(declare-fun tp!806915 () Bool)

(assert (=> b!2527460 (= e!1599852 tp!806915)))

(declare-fun b!2527461 () Bool)

(declare-fun tp!806912 () Bool)

(declare-fun tp!806913 () Bool)

(assert (=> b!2527461 (= e!1599852 (and tp!806912 tp!806913))))

(assert (= (and b!2527001 (is-ElementMatch!7522 (regTwo!15557 r!27340))) b!2527458))

(assert (= (and b!2527001 (is-Concat!12218 (regTwo!15557 r!27340))) b!2527459))

(assert (= (and b!2527001 (is-Star!7522 (regTwo!15557 r!27340))) b!2527460))

(assert (= (and b!2527001 (is-Union!7522 (regTwo!15557 r!27340))) b!2527461))

(push 1)

(assert (not b!2527240))

(assert (not b!2527350))

(assert (not b!2527460))

(assert (not b!2527451))

(assert (not b!2527143))

(assert (not d!719231))

(assert (not b!2527086))

(assert (not b!2527090))

(assert (not b!2527349))

(assert (not b!2527452))

(assert (not bm!157999))

(assert (not b!2527399))

(assert (not b!2527258))

(assert (not d!719215))

(assert (not d!719219))

(assert (not d!719223))

(assert (not d!719181))

(assert (not b!2527142))

(assert (not b!2527453))

(assert (not d!719193))

(assert (not bm!157993))

(assert tp_is_empty!12899)

(assert (not bm!157953))

(assert (not d!719175))

(assert (not b!2527239))

(assert (not b!2527456))

(assert (not b!2527216))

(assert (not bm!157971))

(assert (not bm!157954))

(assert (not b!2527209))

(assert (not b!2527457))

(assert (not b!2527205))

(assert (not b!2527443))

(assert (not b!2527083))

(assert (not b!2527262))

(assert (not bm!157994))

(assert (not b!2527331))

(assert (not b!2527461))

(assert (not b!2527084))

(assert (not d!719195))

(assert (not b!2527455))

(assert (not bm!157970))

(assert (not b!2527150))

(assert (not d!719211))

(assert (not b!2527206))

(assert (not bm!157955))

(assert (not b!2527104))

(assert (not d!719201))

(assert (not b!2527087))

(assert (not b!2527418))

(assert (not d!719197))

(assert (not b!2527322))

(assert (not b!2527259))

(assert (not bm!157996))

(assert (not b!2527394))

(assert (not d!719217))

(assert (not d!719243))

(assert (not b!2527101))

(assert (not b!2527303))

(assert (not d!719247))

(assert (not b!2527140))

(assert (not d!719183))

(assert (not b!2527256))

(assert (not b!2527108))

(assert (not b!2527402))

(assert (not b!2527146))

(assert (not bm!158005))

(assert (not bm!157967))

(assert (not b!2527400))

(assert (not d!719203))

(assert (not d!719225))

(assert (not b!2527251))

(assert (not b!2527449))

(assert (not b!2527212))

(assert (not b!2527447))

(assert (not b!2527431))

(assert (not b!2527102))

(assert (not d!719179))

(assert (not b!2527426))

(assert (not b!2527208))

(assert (not b!2527422))

(assert (not b!2527105))

(assert (not b!2527398))

(assert (not b!2527459))

(assert (not b!2527445))

(assert (not b!2527444))

(assert (not b!2527397))

(assert (not b!2527255))

(assert (not b!2527192))

(assert (not b!2527415))

(assert (not d!719189))

(assert (not b!2527419))

(assert (not b!2527094))

(assert (not b!2527112))

(assert (not b!2527266))

(assert (not b!2527139))

(assert (not d!719191))

(assert (not bm!157984))

(assert (not b!2527199))

(assert (not b!2527416))

(assert (not b!2527448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

