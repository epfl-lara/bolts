; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45704 () Bool)

(assert start!45704)

(declare-fun b!477972 () Bool)

(declare-fun res!211453 () Bool)

(declare-fun e!291549 () Bool)

(assert (=> b!477972 (=> (not res!211453) (not e!291549))))

(declare-datatypes ((C!3244 0))(
  ( (C!3245 (val!1608 Int)) )
))
(declare-datatypes ((Regex!1161 0))(
  ( (ElementMatch!1161 (c!95636 C!3244)) (Concat!2061 (regOne!2834 Regex!1161) (regTwo!2834 Regex!1161)) (EmptyExpr!1161) (Star!1161 (reg!1490 Regex!1161)) (EmptyLang!1161) (Union!1161 (regOne!2835 Regex!1161) (regTwo!2835 Regex!1161)) )
))
(declare-fun r!20230 () Regex!1161)

(declare-fun lostCause!155 (Regex!1161) Bool)

(assert (=> b!477972 (= res!211453 (lostCause!155 r!20230))))

(declare-fun b!477973 () Bool)

(declare-fun e!291551 () Bool)

(declare-fun tp!133770 () Bool)

(declare-fun tp!133771 () Bool)

(assert (=> b!477973 (= e!291551 (and tp!133770 tp!133771))))

(declare-fun b!477974 () Bool)

(declare-fun e!291550 () Bool)

(assert (=> b!477974 (= e!291549 (not e!291550))))

(declare-fun res!211449 () Bool)

(assert (=> b!477974 (=> res!211449 e!291550)))

(declare-fun validRegex!389 (Regex!1161) Bool)

(assert (=> b!477974 (= res!211449 (not (validRegex!389 (regTwo!2835 r!20230))))))

(declare-fun c!12526 () C!3244)

(declare-fun derivativeStep!247 (Regex!1161 C!3244) Regex!1161)

(assert (=> b!477974 (lostCause!155 (derivativeStep!247 (regOne!2835 r!20230) c!12526))))

(declare-datatypes ((Unit!8364 0))(
  ( (Unit!8365) )
))
(declare-fun lt!210831 () Unit!8364)

(declare-fun lemmaDerivativeStepFixPointLostCause!18 (Regex!1161 C!3244) Unit!8364)

(assert (=> b!477974 (= lt!210831 (lemmaDerivativeStepFixPointLostCause!18 (regOne!2835 r!20230) c!12526))))

(declare-fun b!477976 () Bool)

(assert (=> b!477976 (= e!291550 (lostCause!155 (derivativeStep!247 r!20230 c!12526)))))

(assert (=> b!477976 (lostCause!155 (derivativeStep!247 (regTwo!2835 r!20230) c!12526))))

(declare-fun lt!210832 () Unit!8364)

(assert (=> b!477976 (= lt!210832 (lemmaDerivativeStepFixPointLostCause!18 (regTwo!2835 r!20230) c!12526))))

(declare-fun b!477977 () Bool)

(declare-fun tp!133769 () Bool)

(declare-fun tp!133768 () Bool)

(assert (=> b!477977 (= e!291551 (and tp!133769 tp!133768))))

(declare-fun b!477978 () Bool)

(declare-fun res!211450 () Bool)

(assert (=> b!477978 (=> (not res!211450) (not e!291549))))

(get-info :version)

(assert (=> b!477978 (= res!211450 (and (not ((_ is EmptyLang!1161) r!20230)) (not ((_ is EmptyExpr!1161) r!20230)) (not ((_ is ElementMatch!1161) r!20230)) ((_ is Union!1161) r!20230)))))

(declare-fun b!477979 () Bool)

(declare-fun res!211452 () Bool)

(assert (=> b!477979 (=> res!211452 e!291550)))

(assert (=> b!477979 (= res!211452 (not (lostCause!155 (regTwo!2835 r!20230))))))

(declare-fun b!477980 () Bool)

(declare-fun tp_is_empty!2319 () Bool)

(assert (=> b!477980 (= e!291551 tp_is_empty!2319)))

(declare-fun b!477975 () Bool)

(declare-fun tp!133767 () Bool)

(assert (=> b!477975 (= e!291551 tp!133767)))

(declare-fun res!211451 () Bool)

(assert (=> start!45704 (=> (not res!211451) (not e!291549))))

(assert (=> start!45704 (= res!211451 (validRegex!389 r!20230))))

(assert (=> start!45704 e!291549))

(assert (=> start!45704 e!291551))

(assert (=> start!45704 tp_is_empty!2319))

(assert (= (and start!45704 res!211451) b!477972))

(assert (= (and b!477972 res!211453) b!477978))

(assert (= (and b!477978 res!211450) b!477974))

(assert (= (and b!477974 (not res!211449)) b!477979))

(assert (= (and b!477979 (not res!211452)) b!477976))

(assert (= (and start!45704 ((_ is ElementMatch!1161) r!20230)) b!477980))

(assert (= (and start!45704 ((_ is Concat!2061) r!20230)) b!477977))

(assert (= (and start!45704 ((_ is Star!1161) r!20230)) b!477975))

(assert (= (and start!45704 ((_ is Union!1161) r!20230)) b!477973))

(declare-fun m!748031 () Bool)

(assert (=> b!477976 m!748031))

(declare-fun m!748033 () Bool)

(assert (=> b!477976 m!748033))

(assert (=> b!477976 m!748033))

(declare-fun m!748035 () Bool)

(assert (=> b!477976 m!748035))

(assert (=> b!477976 m!748031))

(declare-fun m!748037 () Bool)

(assert (=> b!477976 m!748037))

(declare-fun m!748039 () Bool)

(assert (=> b!477976 m!748039))

(declare-fun m!748041 () Bool)

(assert (=> b!477974 m!748041))

(declare-fun m!748043 () Bool)

(assert (=> b!477974 m!748043))

(assert (=> b!477974 m!748043))

(declare-fun m!748045 () Bool)

(assert (=> b!477974 m!748045))

(declare-fun m!748047 () Bool)

(assert (=> b!477974 m!748047))

(declare-fun m!748049 () Bool)

(assert (=> start!45704 m!748049))

(declare-fun m!748051 () Bool)

(assert (=> b!477972 m!748051))

(declare-fun m!748053 () Bool)

(assert (=> b!477979 m!748053))

(check-sat (not b!477975) (not b!477974) (not b!477979) (not start!45704) tp_is_empty!2319 (not b!477973) (not b!477976) (not b!477972) (not b!477977))
(check-sat)
(get-model)

(declare-fun d!180154 () Bool)

(declare-fun lostCauseFct!64 (Regex!1161) Bool)

(assert (=> d!180154 (= (lostCause!155 r!20230) (lostCauseFct!64 r!20230))))

(declare-fun bs!58757 () Bool)

(assert (= bs!58757 d!180154))

(declare-fun m!748057 () Bool)

(assert (=> bs!58757 m!748057))

(assert (=> b!477972 d!180154))

(declare-fun d!180159 () Bool)

(assert (=> d!180159 (= (lostCause!155 (regTwo!2835 r!20230)) (lostCauseFct!64 (regTwo!2835 r!20230)))))

(declare-fun bs!58759 () Bool)

(assert (= bs!58759 d!180159))

(declare-fun m!748061 () Bool)

(assert (=> bs!58759 m!748061))

(assert (=> b!477979 d!180159))

(declare-fun b!477999 () Bool)

(declare-fun e!291569 () Bool)

(declare-fun e!291570 () Bool)

(assert (=> b!477999 (= e!291569 e!291570)))

(declare-fun res!211465 () Bool)

(declare-fun nullable!295 (Regex!1161) Bool)

(assert (=> b!477999 (= res!211465 (not (nullable!295 (reg!1490 (regTwo!2835 r!20230)))))))

(assert (=> b!477999 (=> (not res!211465) (not e!291570))))

(declare-fun b!478000 () Bool)

(declare-fun res!211466 () Bool)

(declare-fun e!291571 () Bool)

(assert (=> b!478000 (=> res!211466 e!291571)))

(assert (=> b!478000 (= res!211466 (not ((_ is Concat!2061) (regTwo!2835 r!20230))))))

(declare-fun e!291567 () Bool)

(assert (=> b!478000 (= e!291567 e!291571)))

(declare-fun bm!33595 () Bool)

(declare-fun call!33601 () Bool)

(declare-fun call!33602 () Bool)

(assert (=> bm!33595 (= call!33601 call!33602)))

(declare-fun b!478001 () Bool)

(declare-fun e!291572 () Bool)

(assert (=> b!478001 (= e!291572 call!33601)))

(declare-fun d!180163 () Bool)

(declare-fun res!211468 () Bool)

(declare-fun e!291566 () Bool)

(assert (=> d!180163 (=> res!211468 e!291566)))

(assert (=> d!180163 (= res!211468 ((_ is ElementMatch!1161) (regTwo!2835 r!20230)))))

(assert (=> d!180163 (= (validRegex!389 (regTwo!2835 r!20230)) e!291566)))

(declare-fun b!478002 () Bool)

(assert (=> b!478002 (= e!291570 call!33602)))

(declare-fun b!478003 () Bool)

(declare-fun e!291568 () Bool)

(assert (=> b!478003 (= e!291571 e!291568)))

(declare-fun res!211464 () Bool)

(assert (=> b!478003 (=> (not res!211464) (not e!291568))))

(assert (=> b!478003 (= res!211464 call!33601)))

(declare-fun b!478004 () Bool)

(declare-fun res!211467 () Bool)

(assert (=> b!478004 (=> (not res!211467) (not e!291572))))

(declare-fun call!33600 () Bool)

(assert (=> b!478004 (= res!211467 call!33600)))

(assert (=> b!478004 (= e!291567 e!291572)))

(declare-fun bm!33596 () Bool)

(declare-fun c!95643 () Bool)

(assert (=> bm!33596 (= call!33600 (validRegex!389 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun b!478005 () Bool)

(assert (=> b!478005 (= e!291569 e!291567)))

(assert (=> b!478005 (= c!95643 ((_ is Union!1161) (regTwo!2835 r!20230)))))

(declare-fun bm!33597 () Bool)

(declare-fun c!95642 () Bool)

(assert (=> bm!33597 (= call!33602 (validRegex!389 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(declare-fun b!478006 () Bool)

(assert (=> b!478006 (= e!291566 e!291569)))

(assert (=> b!478006 (= c!95642 ((_ is Star!1161) (regTwo!2835 r!20230)))))

(declare-fun b!478007 () Bool)

(assert (=> b!478007 (= e!291568 call!33600)))

(assert (= (and d!180163 (not res!211468)) b!478006))

(assert (= (and b!478006 c!95642) b!477999))

(assert (= (and b!478006 (not c!95642)) b!478005))

(assert (= (and b!477999 res!211465) b!478002))

(assert (= (and b!478005 c!95643) b!478004))

(assert (= (and b!478005 (not c!95643)) b!478000))

(assert (= (and b!478004 res!211467) b!478001))

(assert (= (and b!478000 (not res!211466)) b!478003))

(assert (= (and b!478003 res!211464) b!478007))

(assert (= (or b!478001 b!478003) bm!33595))

(assert (= (or b!478004 b!478007) bm!33596))

(assert (= (or b!478002 bm!33595) bm!33597))

(declare-fun m!748065 () Bool)

(assert (=> b!477999 m!748065))

(declare-fun m!748067 () Bool)

(assert (=> bm!33596 m!748067))

(declare-fun m!748069 () Bool)

(assert (=> bm!33597 m!748069))

(assert (=> b!477974 d!180163))

(declare-fun d!180167 () Bool)

(assert (=> d!180167 (= (lostCause!155 (derivativeStep!247 (regOne!2835 r!20230) c!12526)) (lostCauseFct!64 (derivativeStep!247 (regOne!2835 r!20230) c!12526)))))

(declare-fun bs!58761 () Bool)

(assert (= bs!58761 d!180167))

(assert (=> bs!58761 m!748043))

(declare-fun m!748071 () Bool)

(assert (=> bs!58761 m!748071))

(assert (=> b!477974 d!180167))

(declare-fun call!33628 () Regex!1161)

(declare-fun c!95676 () Bool)

(declare-fun bm!33622 () Bool)

(declare-fun c!95678 () Bool)

(assert (=> bm!33622 (= call!33628 (derivativeStep!247 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))) c!12526))))

(declare-fun b!478068 () Bool)

(declare-fun e!291604 () Regex!1161)

(declare-fun e!291605 () Regex!1161)

(assert (=> b!478068 (= e!291604 e!291605)))

(declare-fun c!95674 () Bool)

(assert (=> b!478068 (= c!95674 ((_ is ElementMatch!1161) (regOne!2835 r!20230)))))

(declare-fun b!478069 () Bool)

(assert (=> b!478069 (= e!291605 (ite (= c!12526 (c!95636 (regOne!2835 r!20230))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180169 () Bool)

(declare-fun lt!210842 () Regex!1161)

(assert (=> d!180169 (validRegex!389 lt!210842)))

(assert (=> d!180169 (= lt!210842 e!291604)))

(declare-fun c!95675 () Bool)

(assert (=> d!180169 (= c!95675 (or ((_ is EmptyExpr!1161) (regOne!2835 r!20230)) ((_ is EmptyLang!1161) (regOne!2835 r!20230))))))

(assert (=> d!180169 (validRegex!389 (regOne!2835 r!20230))))

(assert (=> d!180169 (= (derivativeStep!247 (regOne!2835 r!20230) c!12526) lt!210842)))

(declare-fun b!478070 () Bool)

(declare-fun e!291603 () Regex!1161)

(declare-fun call!33629 () Regex!1161)

(assert (=> b!478070 (= e!291603 (Concat!2061 call!33629 (regOne!2835 r!20230)))))

(declare-fun b!478071 () Bool)

(declare-fun e!291607 () Regex!1161)

(declare-fun call!33630 () Regex!1161)

(assert (=> b!478071 (= e!291607 (Union!1161 (Concat!2061 call!33630 (regTwo!2834 (regOne!2835 r!20230))) EmptyLang!1161))))

(declare-fun bm!33623 () Bool)

(assert (=> bm!33623 (= call!33629 call!33628)))

(declare-fun call!33627 () Regex!1161)

(declare-fun b!478072 () Bool)

(assert (=> b!478072 (= e!291607 (Union!1161 (Concat!2061 call!33630 (regTwo!2834 (regOne!2835 r!20230))) call!33627))))

(declare-fun b!478073 () Bool)

(declare-fun e!291606 () Regex!1161)

(assert (=> b!478073 (= e!291606 (Union!1161 call!33627 call!33628))))

(declare-fun b!478074 () Bool)

(assert (=> b!478074 (= c!95678 ((_ is Union!1161) (regOne!2835 r!20230)))))

(assert (=> b!478074 (= e!291605 e!291606)))

(declare-fun b!478075 () Bool)

(assert (=> b!478075 (= e!291604 EmptyLang!1161)))

(declare-fun b!478076 () Bool)

(declare-fun c!95677 () Bool)

(assert (=> b!478076 (= c!95677 (nullable!295 (regOne!2834 (regOne!2835 r!20230))))))

(assert (=> b!478076 (= e!291603 e!291607)))

(declare-fun bm!33624 () Bool)

(assert (=> bm!33624 (= call!33630 call!33629)))

(declare-fun b!478077 () Bool)

(assert (=> b!478077 (= e!291606 e!291603)))

(assert (=> b!478077 (= c!95676 ((_ is Star!1161) (regOne!2835 r!20230)))))

(declare-fun bm!33625 () Bool)

(assert (=> bm!33625 (= call!33627 (derivativeStep!247 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))) c!12526))))

(assert (= (and d!180169 c!95675) b!478075))

(assert (= (and d!180169 (not c!95675)) b!478068))

(assert (= (and b!478068 c!95674) b!478069))

(assert (= (and b!478068 (not c!95674)) b!478074))

(assert (= (and b!478074 c!95678) b!478073))

(assert (= (and b!478074 (not c!95678)) b!478077))

(assert (= (and b!478077 c!95676) b!478070))

(assert (= (and b!478077 (not c!95676)) b!478076))

(assert (= (and b!478076 c!95677) b!478072))

(assert (= (and b!478076 (not c!95677)) b!478071))

(assert (= (or b!478072 b!478071) bm!33624))

(assert (= (or b!478070 bm!33624) bm!33623))

(assert (= (or b!478073 bm!33623) bm!33622))

(assert (= (or b!478073 b!478072) bm!33625))

(declare-fun m!748093 () Bool)

(assert (=> bm!33622 m!748093))

(declare-fun m!748095 () Bool)

(assert (=> d!180169 m!748095))

(declare-fun m!748097 () Bool)

(assert (=> d!180169 m!748097))

(declare-fun m!748099 () Bool)

(assert (=> b!478076 m!748099))

(declare-fun m!748101 () Bool)

(assert (=> bm!33625 m!748101))

(assert (=> b!477974 d!180169))

(declare-fun d!180179 () Bool)

(assert (=> d!180179 (lostCause!155 (derivativeStep!247 (regOne!2835 r!20230) c!12526))))

(declare-fun lt!210845 () Unit!8364)

(declare-fun choose!3630 (Regex!1161 C!3244) Unit!8364)

(assert (=> d!180179 (= lt!210845 (choose!3630 (regOne!2835 r!20230) c!12526))))

(assert (=> d!180179 (validRegex!389 (regOne!2835 r!20230))))

(assert (=> d!180179 (= (lemmaDerivativeStepFixPointLostCause!18 (regOne!2835 r!20230) c!12526) lt!210845)))

(declare-fun bs!58764 () Bool)

(assert (= bs!58764 d!180179))

(assert (=> bs!58764 m!748043))

(assert (=> bs!58764 m!748043))

(assert (=> bs!58764 m!748045))

(declare-fun m!748103 () Bool)

(assert (=> bs!58764 m!748103))

(assert (=> bs!58764 m!748097))

(assert (=> b!477974 d!180179))

(declare-fun b!478096 () Bool)

(declare-fun e!291625 () Bool)

(declare-fun e!291626 () Bool)

(assert (=> b!478096 (= e!291625 e!291626)))

(declare-fun res!211480 () Bool)

(assert (=> b!478096 (= res!211480 (not (nullable!295 (reg!1490 r!20230))))))

(assert (=> b!478096 (=> (not res!211480) (not e!291626))))

(declare-fun b!478097 () Bool)

(declare-fun res!211481 () Bool)

(declare-fun e!291627 () Bool)

(assert (=> b!478097 (=> res!211481 e!291627)))

(assert (=> b!478097 (= res!211481 (not ((_ is Concat!2061) r!20230)))))

(declare-fun e!291623 () Bool)

(assert (=> b!478097 (= e!291623 e!291627)))

(declare-fun bm!33632 () Bool)

(declare-fun call!33638 () Bool)

(declare-fun call!33639 () Bool)

(assert (=> bm!33632 (= call!33638 call!33639)))

(declare-fun b!478098 () Bool)

(declare-fun e!291628 () Bool)

(assert (=> b!478098 (= e!291628 call!33638)))

(declare-fun d!180181 () Bool)

(declare-fun res!211483 () Bool)

(declare-fun e!291622 () Bool)

(assert (=> d!180181 (=> res!211483 e!291622)))

(assert (=> d!180181 (= res!211483 ((_ is ElementMatch!1161) r!20230))))

(assert (=> d!180181 (= (validRegex!389 r!20230) e!291622)))

(declare-fun b!478099 () Bool)

(assert (=> b!478099 (= e!291626 call!33639)))

(declare-fun b!478100 () Bool)

(declare-fun e!291624 () Bool)

(assert (=> b!478100 (= e!291627 e!291624)))

(declare-fun res!211479 () Bool)

(assert (=> b!478100 (=> (not res!211479) (not e!291624))))

(assert (=> b!478100 (= res!211479 call!33638)))

(declare-fun b!478101 () Bool)

(declare-fun res!211482 () Bool)

(assert (=> b!478101 (=> (not res!211482) (not e!291628))))

(declare-fun call!33637 () Bool)

(assert (=> b!478101 (= res!211482 call!33637)))

(assert (=> b!478101 (= e!291623 e!291628)))

(declare-fun bm!33633 () Bool)

(declare-fun c!95685 () Bool)

(assert (=> bm!33633 (= call!33637 (validRegex!389 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun b!478102 () Bool)

(assert (=> b!478102 (= e!291625 e!291623)))

(assert (=> b!478102 (= c!95685 ((_ is Union!1161) r!20230))))

(declare-fun c!95684 () Bool)

(declare-fun bm!33634 () Bool)

(assert (=> bm!33634 (= call!33639 (validRegex!389 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))))))

(declare-fun b!478103 () Bool)

(assert (=> b!478103 (= e!291622 e!291625)))

(assert (=> b!478103 (= c!95684 ((_ is Star!1161) r!20230))))

(declare-fun b!478104 () Bool)

(assert (=> b!478104 (= e!291624 call!33637)))

(assert (= (and d!180181 (not res!211483)) b!478103))

(assert (= (and b!478103 c!95684) b!478096))

(assert (= (and b!478103 (not c!95684)) b!478102))

(assert (= (and b!478096 res!211480) b!478099))

(assert (= (and b!478102 c!95685) b!478101))

(assert (= (and b!478102 (not c!95685)) b!478097))

(assert (= (and b!478101 res!211482) b!478098))

(assert (= (and b!478097 (not res!211481)) b!478100))

(assert (= (and b!478100 res!211479) b!478104))

(assert (= (or b!478098 b!478100) bm!33632))

(assert (= (or b!478101 b!478104) bm!33633))

(assert (= (or b!478099 bm!33632) bm!33634))

(declare-fun m!748105 () Bool)

(assert (=> b!478096 m!748105))

(declare-fun m!748107 () Bool)

(assert (=> bm!33633 m!748107))

(declare-fun m!748109 () Bool)

(assert (=> bm!33634 m!748109))

(assert (=> start!45704 d!180181))

(declare-fun d!180183 () Bool)

(assert (=> d!180183 (lostCause!155 (derivativeStep!247 (regTwo!2835 r!20230) c!12526))))

(declare-fun lt!210846 () Unit!8364)

(assert (=> d!180183 (= lt!210846 (choose!3630 (regTwo!2835 r!20230) c!12526))))

(assert (=> d!180183 (validRegex!389 (regTwo!2835 r!20230))))

(assert (=> d!180183 (= (lemmaDerivativeStepFixPointLostCause!18 (regTwo!2835 r!20230) c!12526) lt!210846)))

(declare-fun bs!58765 () Bool)

(assert (= bs!58765 d!180183))

(assert (=> bs!58765 m!748031))

(assert (=> bs!58765 m!748031))

(assert (=> bs!58765 m!748037))

(declare-fun m!748117 () Bool)

(assert (=> bs!58765 m!748117))

(assert (=> bs!58765 m!748041))

(assert (=> b!477976 d!180183))

(declare-fun bm!33641 () Bool)

(declare-fun call!33647 () Regex!1161)

(declare-fun c!95692 () Bool)

(declare-fun c!95694 () Bool)

(assert (=> bm!33641 (= call!33647 (derivativeStep!247 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))) c!12526))))

(declare-fun b!478123 () Bool)

(declare-fun e!291644 () Regex!1161)

(declare-fun e!291645 () Regex!1161)

(assert (=> b!478123 (= e!291644 e!291645)))

(declare-fun c!95690 () Bool)

(assert (=> b!478123 (= c!95690 ((_ is ElementMatch!1161) r!20230))))

(declare-fun b!478124 () Bool)

(assert (=> b!478124 (= e!291645 (ite (= c!12526 (c!95636 r!20230)) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180187 () Bool)

(declare-fun lt!210847 () Regex!1161)

(assert (=> d!180187 (validRegex!389 lt!210847)))

(assert (=> d!180187 (= lt!210847 e!291644)))

(declare-fun c!95691 () Bool)

(assert (=> d!180187 (= c!95691 (or ((_ is EmptyExpr!1161) r!20230) ((_ is EmptyLang!1161) r!20230)))))

(assert (=> d!180187 (validRegex!389 r!20230)))

(assert (=> d!180187 (= (derivativeStep!247 r!20230 c!12526) lt!210847)))

(declare-fun b!478125 () Bool)

(declare-fun e!291643 () Regex!1161)

(declare-fun call!33648 () Regex!1161)

(assert (=> b!478125 (= e!291643 (Concat!2061 call!33648 r!20230))))

(declare-fun b!478126 () Bool)

(declare-fun e!291647 () Regex!1161)

(declare-fun call!33649 () Regex!1161)

(assert (=> b!478126 (= e!291647 (Union!1161 (Concat!2061 call!33649 (regTwo!2834 r!20230)) EmptyLang!1161))))

(declare-fun bm!33642 () Bool)

(assert (=> bm!33642 (= call!33648 call!33647)))

(declare-fun b!478127 () Bool)

(declare-fun call!33646 () Regex!1161)

(assert (=> b!478127 (= e!291647 (Union!1161 (Concat!2061 call!33649 (regTwo!2834 r!20230)) call!33646))))

(declare-fun b!478128 () Bool)

(declare-fun e!291646 () Regex!1161)

(assert (=> b!478128 (= e!291646 (Union!1161 call!33646 call!33647))))

(declare-fun b!478129 () Bool)

(assert (=> b!478129 (= c!95694 ((_ is Union!1161) r!20230))))

(assert (=> b!478129 (= e!291645 e!291646)))

(declare-fun b!478130 () Bool)

(assert (=> b!478130 (= e!291644 EmptyLang!1161)))

(declare-fun b!478131 () Bool)

(declare-fun c!95693 () Bool)

(assert (=> b!478131 (= c!95693 (nullable!295 (regOne!2834 r!20230)))))

(assert (=> b!478131 (= e!291643 e!291647)))

(declare-fun bm!33643 () Bool)

(assert (=> bm!33643 (= call!33649 call!33648)))

(declare-fun b!478132 () Bool)

(assert (=> b!478132 (= e!291646 e!291643)))

(assert (=> b!478132 (= c!95692 ((_ is Star!1161) r!20230))))

(declare-fun bm!33644 () Bool)

(assert (=> bm!33644 (= call!33646 (derivativeStep!247 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)) c!12526))))

(assert (= (and d!180187 c!95691) b!478130))

(assert (= (and d!180187 (not c!95691)) b!478123))

(assert (= (and b!478123 c!95690) b!478124))

(assert (= (and b!478123 (not c!95690)) b!478129))

(assert (= (and b!478129 c!95694) b!478128))

(assert (= (and b!478129 (not c!95694)) b!478132))

(assert (= (and b!478132 c!95692) b!478125))

(assert (= (and b!478132 (not c!95692)) b!478131))

(assert (= (and b!478131 c!95693) b!478127))

(assert (= (and b!478131 (not c!95693)) b!478126))

(assert (= (or b!478127 b!478126) bm!33643))

(assert (= (or b!478125 bm!33643) bm!33642))

(assert (= (or b!478128 bm!33642) bm!33641))

(assert (= (or b!478128 b!478127) bm!33644))

(declare-fun m!748125 () Bool)

(assert (=> bm!33641 m!748125))

(declare-fun m!748129 () Bool)

(assert (=> d!180187 m!748129))

(assert (=> d!180187 m!748049))

(declare-fun m!748131 () Bool)

(assert (=> b!478131 m!748131))

(declare-fun m!748133 () Bool)

(assert (=> bm!33644 m!748133))

(assert (=> b!477976 d!180187))

(declare-fun d!180193 () Bool)

(assert (=> d!180193 (= (lostCause!155 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)) (lostCauseFct!64 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)))))

(declare-fun bs!58767 () Bool)

(assert (= bs!58767 d!180193))

(assert (=> bs!58767 m!748031))

(declare-fun m!748135 () Bool)

(assert (=> bs!58767 m!748135))

(assert (=> b!477976 d!180193))

(declare-fun call!33655 () Regex!1161)

(declare-fun bm!33649 () Bool)

(declare-fun c!95704 () Bool)

(declare-fun c!95702 () Bool)

(assert (=> bm!33649 (= call!33655 (derivativeStep!247 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))) c!12526))))

(declare-fun b!478143 () Bool)

(declare-fun e!291654 () Regex!1161)

(declare-fun e!291655 () Regex!1161)

(assert (=> b!478143 (= e!291654 e!291655)))

(declare-fun c!95700 () Bool)

(assert (=> b!478143 (= c!95700 ((_ is ElementMatch!1161) (regTwo!2835 r!20230)))))

(declare-fun b!478144 () Bool)

(assert (=> b!478144 (= e!291655 (ite (= c!12526 (c!95636 (regTwo!2835 r!20230))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180195 () Bool)

(declare-fun lt!210849 () Regex!1161)

(assert (=> d!180195 (validRegex!389 lt!210849)))

(assert (=> d!180195 (= lt!210849 e!291654)))

(declare-fun c!95701 () Bool)

(assert (=> d!180195 (= c!95701 (or ((_ is EmptyExpr!1161) (regTwo!2835 r!20230)) ((_ is EmptyLang!1161) (regTwo!2835 r!20230))))))

(assert (=> d!180195 (validRegex!389 (regTwo!2835 r!20230))))

(assert (=> d!180195 (= (derivativeStep!247 (regTwo!2835 r!20230) c!12526) lt!210849)))

(declare-fun b!478145 () Bool)

(declare-fun e!291653 () Regex!1161)

(declare-fun call!33656 () Regex!1161)

(assert (=> b!478145 (= e!291653 (Concat!2061 call!33656 (regTwo!2835 r!20230)))))

(declare-fun b!478146 () Bool)

(declare-fun e!291657 () Regex!1161)

(declare-fun call!33657 () Regex!1161)

(assert (=> b!478146 (= e!291657 (Union!1161 (Concat!2061 call!33657 (regTwo!2834 (regTwo!2835 r!20230))) EmptyLang!1161))))

(declare-fun bm!33650 () Bool)

(assert (=> bm!33650 (= call!33656 call!33655)))

(declare-fun call!33654 () Regex!1161)

(declare-fun b!478147 () Bool)

(assert (=> b!478147 (= e!291657 (Union!1161 (Concat!2061 call!33657 (regTwo!2834 (regTwo!2835 r!20230))) call!33654))))

(declare-fun b!478148 () Bool)

(declare-fun e!291656 () Regex!1161)

(assert (=> b!478148 (= e!291656 (Union!1161 call!33654 call!33655))))

(declare-fun b!478149 () Bool)

(assert (=> b!478149 (= c!95704 ((_ is Union!1161) (regTwo!2835 r!20230)))))

(assert (=> b!478149 (= e!291655 e!291656)))

(declare-fun b!478150 () Bool)

(assert (=> b!478150 (= e!291654 EmptyLang!1161)))

(declare-fun b!478151 () Bool)

(declare-fun c!95703 () Bool)

(assert (=> b!478151 (= c!95703 (nullable!295 (regOne!2834 (regTwo!2835 r!20230))))))

(assert (=> b!478151 (= e!291653 e!291657)))

(declare-fun bm!33651 () Bool)

(assert (=> bm!33651 (= call!33657 call!33656)))

(declare-fun b!478152 () Bool)

(assert (=> b!478152 (= e!291656 e!291653)))

(assert (=> b!478152 (= c!95702 ((_ is Star!1161) (regTwo!2835 r!20230)))))

(declare-fun bm!33652 () Bool)

(assert (=> bm!33652 (= call!33654 (derivativeStep!247 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))) c!12526))))

(assert (= (and d!180195 c!95701) b!478150))

(assert (= (and d!180195 (not c!95701)) b!478143))

(assert (= (and b!478143 c!95700) b!478144))

(assert (= (and b!478143 (not c!95700)) b!478149))

(assert (= (and b!478149 c!95704) b!478148))

(assert (= (and b!478149 (not c!95704)) b!478152))

(assert (= (and b!478152 c!95702) b!478145))

(assert (= (and b!478152 (not c!95702)) b!478151))

(assert (= (and b!478151 c!95703) b!478147))

(assert (= (and b!478151 (not c!95703)) b!478146))

(assert (= (or b!478147 b!478146) bm!33651))

(assert (= (or b!478145 bm!33651) bm!33650))

(assert (= (or b!478148 bm!33650) bm!33649))

(assert (= (or b!478148 b!478147) bm!33652))

(declare-fun m!748147 () Bool)

(assert (=> bm!33649 m!748147))

(declare-fun m!748149 () Bool)

(assert (=> d!180195 m!748149))

(assert (=> d!180195 m!748041))

(declare-fun m!748151 () Bool)

(assert (=> b!478151 m!748151))

(declare-fun m!748153 () Bool)

(assert (=> bm!33652 m!748153))

(assert (=> b!477976 d!180195))

(declare-fun d!180199 () Bool)

(assert (=> d!180199 (= (lostCause!155 (derivativeStep!247 r!20230 c!12526)) (lostCauseFct!64 (derivativeStep!247 r!20230 c!12526)))))

(declare-fun bs!58769 () Bool)

(assert (= bs!58769 d!180199))

(assert (=> bs!58769 m!748033))

(declare-fun m!748157 () Bool)

(assert (=> bs!58769 m!748157))

(assert (=> b!477976 d!180199))

(declare-fun b!478174 () Bool)

(declare-fun e!291662 () Bool)

(declare-fun tp!133798 () Bool)

(declare-fun tp!133792 () Bool)

(assert (=> b!478174 (= e!291662 (and tp!133798 tp!133792))))

(declare-fun b!478173 () Bool)

(assert (=> b!478173 (= e!291662 tp_is_empty!2319)))

(declare-fun b!478175 () Bool)

(declare-fun tp!133794 () Bool)

(assert (=> b!478175 (= e!291662 tp!133794)))

(declare-fun b!478176 () Bool)

(declare-fun tp!133796 () Bool)

(declare-fun tp!133793 () Bool)

(assert (=> b!478176 (= e!291662 (and tp!133796 tp!133793))))

(assert (=> b!477973 (= tp!133770 e!291662)))

(assert (= (and b!477973 ((_ is ElementMatch!1161) (regOne!2835 r!20230))) b!478173))

(assert (= (and b!477973 ((_ is Concat!2061) (regOne!2835 r!20230))) b!478174))

(assert (= (and b!477973 ((_ is Star!1161) (regOne!2835 r!20230))) b!478175))

(assert (= (and b!477973 ((_ is Union!1161) (regOne!2835 r!20230))) b!478176))

(declare-fun b!478182 () Bool)

(declare-fun e!291664 () Bool)

(declare-fun tp!133809 () Bool)

(declare-fun tp!133802 () Bool)

(assert (=> b!478182 (= e!291664 (and tp!133809 tp!133802))))

(declare-fun b!478181 () Bool)

(assert (=> b!478181 (= e!291664 tp_is_empty!2319)))

(declare-fun b!478183 () Bool)

(declare-fun tp!133805 () Bool)

(assert (=> b!478183 (= e!291664 tp!133805)))

(declare-fun b!478185 () Bool)

(declare-fun tp!133807 () Bool)

(declare-fun tp!133803 () Bool)

(assert (=> b!478185 (= e!291664 (and tp!133807 tp!133803))))

(assert (=> b!477973 (= tp!133771 e!291664)))

(assert (= (and b!477973 ((_ is ElementMatch!1161) (regTwo!2835 r!20230))) b!478181))

(assert (= (and b!477973 ((_ is Concat!2061) (regTwo!2835 r!20230))) b!478182))

(assert (= (and b!477973 ((_ is Star!1161) (regTwo!2835 r!20230))) b!478183))

(assert (= (and b!477973 ((_ is Union!1161) (regTwo!2835 r!20230))) b!478185))

(declare-fun b!478191 () Bool)

(declare-fun e!291666 () Bool)

(declare-fun tp!133821 () Bool)

(declare-fun tp!133812 () Bool)

(assert (=> b!478191 (= e!291666 (and tp!133821 tp!133812))))

(declare-fun b!478189 () Bool)

(assert (=> b!478189 (= e!291666 tp_is_empty!2319)))

(declare-fun b!478193 () Bool)

(declare-fun tp!133817 () Bool)

(assert (=> b!478193 (= e!291666 tp!133817)))

(declare-fun b!478195 () Bool)

(declare-fun tp!133819 () Bool)

(declare-fun tp!133814 () Bool)

(assert (=> b!478195 (= e!291666 (and tp!133819 tp!133814))))

(assert (=> b!477975 (= tp!133767 e!291666)))

(assert (= (and b!477975 ((_ is ElementMatch!1161) (reg!1490 r!20230))) b!478189))

(assert (= (and b!477975 ((_ is Concat!2061) (reg!1490 r!20230))) b!478191))

(assert (= (and b!477975 ((_ is Star!1161) (reg!1490 r!20230))) b!478193))

(assert (= (and b!477975 ((_ is Union!1161) (reg!1490 r!20230))) b!478195))

(declare-fun b!478198 () Bool)

(declare-fun e!291668 () Bool)

(declare-fun tp!133826 () Bool)

(declare-fun tp!133822 () Bool)

(assert (=> b!478198 (= e!291668 (and tp!133826 tp!133822))))

(declare-fun b!478197 () Bool)

(assert (=> b!478197 (= e!291668 tp_is_empty!2319)))

(declare-fun b!478199 () Bool)

(declare-fun tp!133824 () Bool)

(assert (=> b!478199 (= e!291668 tp!133824)))

(declare-fun b!478200 () Bool)

(declare-fun tp!133825 () Bool)

(declare-fun tp!133823 () Bool)

(assert (=> b!478200 (= e!291668 (and tp!133825 tp!133823))))

(assert (=> b!477977 (= tp!133769 e!291668)))

(assert (= (and b!477977 ((_ is ElementMatch!1161) (regOne!2834 r!20230))) b!478197))

(assert (= (and b!477977 ((_ is Concat!2061) (regOne!2834 r!20230))) b!478198))

(assert (= (and b!477977 ((_ is Star!1161) (regOne!2834 r!20230))) b!478199))

(assert (= (and b!477977 ((_ is Union!1161) (regOne!2834 r!20230))) b!478200))

(declare-fun b!478206 () Bool)

(declare-fun e!291670 () Bool)

(declare-fun tp!133836 () Bool)

(declare-fun tp!133832 () Bool)

(assert (=> b!478206 (= e!291670 (and tp!133836 tp!133832))))

(declare-fun b!478205 () Bool)

(assert (=> b!478205 (= e!291670 tp_is_empty!2319)))

(declare-fun b!478207 () Bool)

(declare-fun tp!133834 () Bool)

(assert (=> b!478207 (= e!291670 tp!133834)))

(declare-fun b!478208 () Bool)

(declare-fun tp!133835 () Bool)

(declare-fun tp!133833 () Bool)

(assert (=> b!478208 (= e!291670 (and tp!133835 tp!133833))))

(assert (=> b!477977 (= tp!133768 e!291670)))

(assert (= (and b!477977 ((_ is ElementMatch!1161) (regTwo!2834 r!20230))) b!478205))

(assert (= (and b!477977 ((_ is Concat!2061) (regTwo!2834 r!20230))) b!478206))

(assert (= (and b!477977 ((_ is Star!1161) (regTwo!2834 r!20230))) b!478207))

(assert (= (and b!477977 ((_ is Union!1161) (regTwo!2834 r!20230))) b!478208))

(check-sat (not d!180195) (not b!478193) (not d!180154) (not b!478175) (not b!478176) (not d!180193) (not b!478174) (not b!478185) (not bm!33597) (not b!478206) (not d!180159) (not bm!33644) (not bm!33634) (not b!478207) (not bm!33649) (not bm!33652) (not bm!33625) (not b!477999) (not bm!33633) (not d!180183) (not d!180179) (not d!180187) (not b!478195) (not bm!33641) (not b!478200) (not b!478096) (not b!478076) (not b!478151) (not b!478198) (not b!478182) (not b!478191) tp_is_empty!2319 (not d!180169) (not b!478131) (not d!180199) (not b!478183) (not d!180167) (not bm!33596) (not bm!33622) (not b!478208) (not b!478199))
(check-sat)
(get-model)

(declare-fun d!180201 () Bool)

(declare-fun nullableFct!102 (Regex!1161) Bool)

(assert (=> d!180201 (= (nullable!295 (regOne!2834 (regTwo!2835 r!20230))) (nullableFct!102 (regOne!2834 (regTwo!2835 r!20230))))))

(declare-fun bs!58770 () Bool)

(assert (= bs!58770 d!180201))

(declare-fun m!748159 () Bool)

(assert (=> bs!58770 m!748159))

(assert (=> b!478151 d!180201))

(declare-fun d!180203 () Bool)

(assert (=> d!180203 (= (nullable!295 (regOne!2834 r!20230)) (nullableFct!102 (regOne!2834 r!20230)))))

(declare-fun bs!58771 () Bool)

(assert (= bs!58771 d!180203))

(declare-fun m!748161 () Bool)

(assert (=> bs!58771 m!748161))

(assert (=> b!478131 d!180203))

(declare-fun b!478213 () Bool)

(declare-fun e!291675 () Bool)

(declare-fun e!291676 () Bool)

(assert (=> b!478213 (= e!291675 e!291676)))

(declare-fun res!211495 () Bool)

(assert (=> b!478213 (= res!211495 (not (nullable!295 (reg!1490 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))))))))

(assert (=> b!478213 (=> (not res!211495) (not e!291676))))

(declare-fun b!478214 () Bool)

(declare-fun res!211496 () Bool)

(declare-fun e!291677 () Bool)

(assert (=> b!478214 (=> res!211496 e!291677)))

(assert (=> b!478214 (= res!211496 (not ((_ is Concat!2061) (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230))))))))

(declare-fun e!291673 () Bool)

(assert (=> b!478214 (= e!291673 e!291677)))

(declare-fun bm!33653 () Bool)

(declare-fun call!33659 () Bool)

(declare-fun call!33660 () Bool)

(assert (=> bm!33653 (= call!33659 call!33660)))

(declare-fun b!478215 () Bool)

(declare-fun e!291678 () Bool)

(assert (=> b!478215 (= e!291678 call!33659)))

(declare-fun d!180205 () Bool)

(declare-fun res!211498 () Bool)

(declare-fun e!291672 () Bool)

(assert (=> d!180205 (=> res!211498 e!291672)))

(assert (=> d!180205 (= res!211498 ((_ is ElementMatch!1161) (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))))))

(assert (=> d!180205 (= (validRegex!389 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))) e!291672)))

(declare-fun b!478216 () Bool)

(assert (=> b!478216 (= e!291676 call!33660)))

(declare-fun b!478217 () Bool)

(declare-fun e!291674 () Bool)

(assert (=> b!478217 (= e!291677 e!291674)))

(declare-fun res!211494 () Bool)

(assert (=> b!478217 (=> (not res!211494) (not e!291674))))

(assert (=> b!478217 (= res!211494 call!33659)))

(declare-fun b!478218 () Bool)

(declare-fun res!211497 () Bool)

(assert (=> b!478218 (=> (not res!211497) (not e!291678))))

(declare-fun call!33658 () Bool)

(assert (=> b!478218 (= res!211497 call!33658)))

(assert (=> b!478218 (= e!291673 e!291678)))

(declare-fun c!95706 () Bool)

(declare-fun bm!33654 () Bool)

(assert (=> bm!33654 (= call!33658 (validRegex!389 (ite c!95706 (regOne!2835 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))) (regTwo!2834 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))))))))

(declare-fun b!478219 () Bool)

(assert (=> b!478219 (= e!291675 e!291673)))

(assert (=> b!478219 (= c!95706 ((_ is Union!1161) (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))))))

(declare-fun c!95705 () Bool)

(declare-fun bm!33655 () Bool)

(assert (=> bm!33655 (= call!33660 (validRegex!389 (ite c!95705 (reg!1490 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))) (ite c!95706 (regTwo!2835 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))) (regOne!2834 (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230))))))))))

(declare-fun b!478220 () Bool)

(assert (=> b!478220 (= e!291672 e!291675)))

(assert (=> b!478220 (= c!95705 ((_ is Star!1161) (ite c!95684 (reg!1490 r!20230) (ite c!95685 (regTwo!2835 r!20230) (regOne!2834 r!20230)))))))

(declare-fun b!478221 () Bool)

(assert (=> b!478221 (= e!291674 call!33658)))

(assert (= (and d!180205 (not res!211498)) b!478220))

(assert (= (and b!478220 c!95705) b!478213))

(assert (= (and b!478220 (not c!95705)) b!478219))

(assert (= (and b!478213 res!211495) b!478216))

(assert (= (and b!478219 c!95706) b!478218))

(assert (= (and b!478219 (not c!95706)) b!478214))

(assert (= (and b!478218 res!211497) b!478215))

(assert (= (and b!478214 (not res!211496)) b!478217))

(assert (= (and b!478217 res!211494) b!478221))

(assert (= (or b!478215 b!478217) bm!33653))

(assert (= (or b!478218 b!478221) bm!33654))

(assert (= (or b!478216 bm!33653) bm!33655))

(declare-fun m!748163 () Bool)

(assert (=> b!478213 m!748163))

(declare-fun m!748165 () Bool)

(assert (=> bm!33654 m!748165))

(declare-fun m!748167 () Bool)

(assert (=> bm!33655 m!748167))

(assert (=> bm!33634 d!180205))

(declare-fun b!478222 () Bool)

(declare-fun e!291682 () Bool)

(declare-fun e!291683 () Bool)

(assert (=> b!478222 (= e!291682 e!291683)))

(declare-fun res!211500 () Bool)

(assert (=> b!478222 (= res!211500 (not (nullable!295 (reg!1490 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))))

(assert (=> b!478222 (=> (not res!211500) (not e!291683))))

(declare-fun b!478223 () Bool)

(declare-fun res!211501 () Bool)

(declare-fun e!291684 () Bool)

(assert (=> b!478223 (=> res!211501 e!291684)))

(assert (=> b!478223 (= res!211501 (not ((_ is Concat!2061) (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230)))))))

(declare-fun e!291680 () Bool)

(assert (=> b!478223 (= e!291680 e!291684)))

(declare-fun bm!33656 () Bool)

(declare-fun call!33662 () Bool)

(declare-fun call!33663 () Bool)

(assert (=> bm!33656 (= call!33662 call!33663)))

(declare-fun b!478224 () Bool)

(declare-fun e!291685 () Bool)

(assert (=> b!478224 (= e!291685 call!33662)))

(declare-fun d!180207 () Bool)

(declare-fun res!211503 () Bool)

(declare-fun e!291679 () Bool)

(assert (=> d!180207 (=> res!211503 e!291679)))

(assert (=> d!180207 (= res!211503 ((_ is ElementMatch!1161) (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(assert (=> d!180207 (= (validRegex!389 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))) e!291679)))

(declare-fun b!478225 () Bool)

(assert (=> b!478225 (= e!291683 call!33663)))

(declare-fun b!478226 () Bool)

(declare-fun e!291681 () Bool)

(assert (=> b!478226 (= e!291684 e!291681)))

(declare-fun res!211499 () Bool)

(assert (=> b!478226 (=> (not res!211499) (not e!291681))))

(assert (=> b!478226 (= res!211499 call!33662)))

(declare-fun b!478227 () Bool)

(declare-fun res!211502 () Bool)

(assert (=> b!478227 (=> (not res!211502) (not e!291685))))

(declare-fun call!33661 () Bool)

(assert (=> b!478227 (= res!211502 call!33661)))

(assert (=> b!478227 (= e!291680 e!291685)))

(declare-fun c!95708 () Bool)

(declare-fun bm!33657 () Bool)

(assert (=> bm!33657 (= call!33661 (validRegex!389 (ite c!95708 (regOne!2835 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))) (regTwo!2834 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))))

(declare-fun b!478228 () Bool)

(assert (=> b!478228 (= e!291682 e!291680)))

(assert (=> b!478228 (= c!95708 ((_ is Union!1161) (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun c!95707 () Bool)

(declare-fun bm!33658 () Bool)

(assert (=> bm!33658 (= call!33663 (validRegex!389 (ite c!95707 (reg!1490 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))) (ite c!95708 (regTwo!2835 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))) (regOne!2834 (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230)))))))))

(declare-fun b!478229 () Bool)

(assert (=> b!478229 (= e!291679 e!291682)))

(assert (=> b!478229 (= c!95707 ((_ is Star!1161) (ite c!95685 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun b!478230 () Bool)

(assert (=> b!478230 (= e!291681 call!33661)))

(assert (= (and d!180207 (not res!211503)) b!478229))

(assert (= (and b!478229 c!95707) b!478222))

(assert (= (and b!478229 (not c!95707)) b!478228))

(assert (= (and b!478222 res!211500) b!478225))

(assert (= (and b!478228 c!95708) b!478227))

(assert (= (and b!478228 (not c!95708)) b!478223))

(assert (= (and b!478227 res!211502) b!478224))

(assert (= (and b!478223 (not res!211501)) b!478226))

(assert (= (and b!478226 res!211499) b!478230))

(assert (= (or b!478224 b!478226) bm!33656))

(assert (= (or b!478227 b!478230) bm!33657))

(assert (= (or b!478225 bm!33656) bm!33658))

(declare-fun m!748169 () Bool)

(assert (=> b!478222 m!748169))

(declare-fun m!748171 () Bool)

(assert (=> bm!33657 m!748171))

(declare-fun m!748173 () Bool)

(assert (=> bm!33658 m!748173))

(assert (=> bm!33633 d!180207))

(declare-fun b!478231 () Bool)

(declare-fun e!291689 () Bool)

(declare-fun e!291690 () Bool)

(assert (=> b!478231 (= e!291689 e!291690)))

(declare-fun res!211505 () Bool)

(assert (=> b!478231 (= res!211505 (not (nullable!295 (reg!1490 lt!210849))))))

(assert (=> b!478231 (=> (not res!211505) (not e!291690))))

(declare-fun b!478232 () Bool)

(declare-fun res!211506 () Bool)

(declare-fun e!291691 () Bool)

(assert (=> b!478232 (=> res!211506 e!291691)))

(assert (=> b!478232 (= res!211506 (not ((_ is Concat!2061) lt!210849)))))

(declare-fun e!291687 () Bool)

(assert (=> b!478232 (= e!291687 e!291691)))

(declare-fun bm!33659 () Bool)

(declare-fun call!33665 () Bool)

(declare-fun call!33666 () Bool)

(assert (=> bm!33659 (= call!33665 call!33666)))

(declare-fun b!478233 () Bool)

(declare-fun e!291692 () Bool)

(assert (=> b!478233 (= e!291692 call!33665)))

(declare-fun d!180209 () Bool)

(declare-fun res!211508 () Bool)

(declare-fun e!291686 () Bool)

(assert (=> d!180209 (=> res!211508 e!291686)))

(assert (=> d!180209 (= res!211508 ((_ is ElementMatch!1161) lt!210849))))

(assert (=> d!180209 (= (validRegex!389 lt!210849) e!291686)))

(declare-fun b!478234 () Bool)

(assert (=> b!478234 (= e!291690 call!33666)))

(declare-fun b!478235 () Bool)

(declare-fun e!291688 () Bool)

(assert (=> b!478235 (= e!291691 e!291688)))

(declare-fun res!211504 () Bool)

(assert (=> b!478235 (=> (not res!211504) (not e!291688))))

(assert (=> b!478235 (= res!211504 call!33665)))

(declare-fun b!478236 () Bool)

(declare-fun res!211507 () Bool)

(assert (=> b!478236 (=> (not res!211507) (not e!291692))))

(declare-fun call!33664 () Bool)

(assert (=> b!478236 (= res!211507 call!33664)))

(assert (=> b!478236 (= e!291687 e!291692)))

(declare-fun bm!33660 () Bool)

(declare-fun c!95710 () Bool)

(assert (=> bm!33660 (= call!33664 (validRegex!389 (ite c!95710 (regOne!2835 lt!210849) (regTwo!2834 lt!210849))))))

(declare-fun b!478237 () Bool)

(assert (=> b!478237 (= e!291689 e!291687)))

(assert (=> b!478237 (= c!95710 ((_ is Union!1161) lt!210849))))

(declare-fun bm!33661 () Bool)

(declare-fun c!95709 () Bool)

(assert (=> bm!33661 (= call!33666 (validRegex!389 (ite c!95709 (reg!1490 lt!210849) (ite c!95710 (regTwo!2835 lt!210849) (regOne!2834 lt!210849)))))))

(declare-fun b!478238 () Bool)

(assert (=> b!478238 (= e!291686 e!291689)))

(assert (=> b!478238 (= c!95709 ((_ is Star!1161) lt!210849))))

(declare-fun b!478239 () Bool)

(assert (=> b!478239 (= e!291688 call!33664)))

(assert (= (and d!180209 (not res!211508)) b!478238))

(assert (= (and b!478238 c!95709) b!478231))

(assert (= (and b!478238 (not c!95709)) b!478237))

(assert (= (and b!478231 res!211505) b!478234))

(assert (= (and b!478237 c!95710) b!478236))

(assert (= (and b!478237 (not c!95710)) b!478232))

(assert (= (and b!478236 res!211507) b!478233))

(assert (= (and b!478232 (not res!211506)) b!478235))

(assert (= (and b!478235 res!211504) b!478239))

(assert (= (or b!478233 b!478235) bm!33659))

(assert (= (or b!478236 b!478239) bm!33660))

(assert (= (or b!478234 bm!33659) bm!33661))

(declare-fun m!748175 () Bool)

(assert (=> b!478231 m!748175))

(declare-fun m!748177 () Bool)

(assert (=> bm!33660 m!748177))

(declare-fun m!748179 () Bool)

(assert (=> bm!33661 m!748179))

(assert (=> d!180195 d!180209))

(assert (=> d!180195 d!180163))

(declare-fun b!478254 () Bool)

(declare-fun e!291705 () Bool)

(declare-fun call!33671 () Bool)

(assert (=> b!478254 (= e!291705 call!33671)))

(declare-fun b!478255 () Bool)

(declare-fun e!291709 () Bool)

(declare-fun e!291706 () Bool)

(assert (=> b!478255 (= e!291709 e!291706)))

(declare-fun res!211520 () Bool)

(assert (=> b!478255 (=> res!211520 e!291706)))

(assert (=> b!478255 (= res!211520 ((_ is EmptyLang!1161) (derivativeStep!247 r!20230 c!12526)))))

(declare-fun b!478256 () Bool)

(declare-fun e!291710 () Bool)

(declare-fun e!291708 () Bool)

(assert (=> b!478256 (= e!291710 e!291708)))

(declare-fun c!95713 () Bool)

(assert (=> b!478256 (= c!95713 ((_ is Union!1161) (derivativeStep!247 r!20230 c!12526)))))

(declare-fun b!478257 () Bool)

(declare-fun e!291707 () Bool)

(assert (=> b!478257 (= e!291707 call!33671)))

(declare-fun d!180211 () Bool)

(declare-fun lt!210853 () Bool)

(declare-datatypes ((List!4598 0))(
  ( (Nil!4588) (Cons!4588 (h!9985 C!3244) (t!73116 List!4598)) )
))
(declare-datatypes ((Option!1216 0))(
  ( (None!1215) (Some!1215 (v!15627 List!4598)) )
))
(declare-fun isEmpty!3542 (Option!1216) Bool)

(declare-fun getLanguageWitness!51 (Regex!1161) Option!1216)

(assert (=> d!180211 (= lt!210853 (isEmpty!3542 (getLanguageWitness!51 (derivativeStep!247 r!20230 c!12526))))))

(assert (=> d!180211 (= lt!210853 e!291709)))

(declare-fun res!211521 () Bool)

(assert (=> d!180211 (=> (not res!211521) (not e!291709))))

(assert (=> d!180211 (= res!211521 (not ((_ is EmptyExpr!1161) (derivativeStep!247 r!20230 c!12526))))))

(assert (=> d!180211 (= (lostCauseFct!64 (derivativeStep!247 r!20230 c!12526)) lt!210853)))

(declare-fun bm!33666 () Bool)

(assert (=> bm!33666 (= call!33671 (lostCause!155 (ite c!95713 (regTwo!2835 (derivativeStep!247 r!20230 c!12526)) (regTwo!2834 (derivativeStep!247 r!20230 c!12526)))))))

(declare-fun b!478258 () Bool)

(assert (=> b!478258 (= e!291708 e!291705)))

(declare-fun res!211523 () Bool)

(declare-fun call!33672 () Bool)

(assert (=> b!478258 (= res!211523 call!33672)))

(assert (=> b!478258 (=> (not res!211523) (not e!291705))))

(declare-fun b!478259 () Bool)

(assert (=> b!478259 (= e!291706 e!291710)))

(declare-fun res!211522 () Bool)

(assert (=> b!478259 (=> (not res!211522) (not e!291710))))

(assert (=> b!478259 (= res!211522 (and (not ((_ is ElementMatch!1161) (derivativeStep!247 r!20230 c!12526))) (not ((_ is Star!1161) (derivativeStep!247 r!20230 c!12526)))))))

(declare-fun b!478260 () Bool)

(assert (=> b!478260 (= e!291708 e!291707)))

(declare-fun res!211519 () Bool)

(assert (=> b!478260 (= res!211519 call!33672)))

(assert (=> b!478260 (=> res!211519 e!291707)))

(declare-fun bm!33667 () Bool)

(assert (=> bm!33667 (= call!33672 (lostCause!155 (ite c!95713 (regOne!2835 (derivativeStep!247 r!20230 c!12526)) (regOne!2834 (derivativeStep!247 r!20230 c!12526)))))))

(assert (= (and d!180211 res!211521) b!478255))

(assert (= (and b!478255 (not res!211520)) b!478259))

(assert (= (and b!478259 res!211522) b!478256))

(assert (= (and b!478256 c!95713) b!478258))

(assert (= (and b!478256 (not c!95713)) b!478260))

(assert (= (and b!478258 res!211523) b!478254))

(assert (= (and b!478260 (not res!211519)) b!478257))

(assert (= (or b!478258 b!478260) bm!33667))

(assert (= (or b!478254 b!478257) bm!33666))

(assert (=> d!180211 m!748033))

(declare-fun m!748181 () Bool)

(assert (=> d!180211 m!748181))

(assert (=> d!180211 m!748181))

(declare-fun m!748183 () Bool)

(assert (=> d!180211 m!748183))

(declare-fun m!748185 () Bool)

(assert (=> bm!33666 m!748185))

(declare-fun m!748187 () Bool)

(assert (=> bm!33667 m!748187))

(assert (=> d!180199 d!180211))

(declare-fun d!180213 () Bool)

(assert (=> d!180213 (= (nullable!295 (reg!1490 (regTwo!2835 r!20230))) (nullableFct!102 (reg!1490 (regTwo!2835 r!20230))))))

(declare-fun bs!58772 () Bool)

(assert (= bs!58772 d!180213))

(declare-fun m!748189 () Bool)

(assert (=> bs!58772 m!748189))

(assert (=> b!477999 d!180213))

(declare-fun call!33674 () Regex!1161)

(declare-fun c!95716 () Bool)

(declare-fun c!95718 () Bool)

(declare-fun bm!33668 () Bool)

(assert (=> bm!33668 (= call!33674 (derivativeStep!247 (ite c!95718 (regTwo!2835 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) (ite c!95716 (reg!1490 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) (regOne!2834 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))) c!12526))))

(declare-fun b!478261 () Bool)

(declare-fun e!291712 () Regex!1161)

(declare-fun e!291713 () Regex!1161)

(assert (=> b!478261 (= e!291712 e!291713)))

(declare-fun c!95714 () Bool)

(assert (=> b!478261 (= c!95714 ((_ is ElementMatch!1161) (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun b!478262 () Bool)

(assert (=> b!478262 (= e!291713 (ite (= c!12526 (c!95636 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180215 () Bool)

(declare-fun lt!210854 () Regex!1161)

(assert (=> d!180215 (validRegex!389 lt!210854)))

(assert (=> d!180215 (= lt!210854 e!291712)))

(declare-fun c!95715 () Bool)

(assert (=> d!180215 (= c!95715 (or ((_ is EmptyExpr!1161) (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) ((_ is EmptyLang!1161) (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))))))

(assert (=> d!180215 (validRegex!389 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))))

(assert (=> d!180215 (= (derivativeStep!247 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))) c!12526) lt!210854)))

(declare-fun e!291711 () Regex!1161)

(declare-fun b!478263 () Bool)

(declare-fun call!33675 () Regex!1161)

(assert (=> b!478263 (= e!291711 (Concat!2061 call!33675 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun b!478264 () Bool)

(declare-fun e!291715 () Regex!1161)

(declare-fun call!33676 () Regex!1161)

(assert (=> b!478264 (= e!291715 (Union!1161 (Concat!2061 call!33676 (regTwo!2834 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))) EmptyLang!1161))))

(declare-fun bm!33669 () Bool)

(assert (=> bm!33669 (= call!33675 call!33674)))

(declare-fun call!33673 () Regex!1161)

(declare-fun b!478265 () Bool)

(assert (=> b!478265 (= e!291715 (Union!1161 (Concat!2061 call!33676 (regTwo!2834 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))) call!33673))))

(declare-fun b!478266 () Bool)

(declare-fun e!291714 () Regex!1161)

(assert (=> b!478266 (= e!291714 (Union!1161 call!33673 call!33674))))

(declare-fun b!478267 () Bool)

(assert (=> b!478267 (= c!95718 ((_ is Union!1161) (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(assert (=> b!478267 (= e!291713 e!291714)))

(declare-fun b!478268 () Bool)

(assert (=> b!478268 (= e!291712 EmptyLang!1161)))

(declare-fun b!478269 () Bool)

(declare-fun c!95717 () Bool)

(assert (=> b!478269 (= c!95717 (nullable!295 (regOne!2834 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))))))

(assert (=> b!478269 (= e!291711 e!291715)))

(declare-fun bm!33670 () Bool)

(assert (=> bm!33670 (= call!33676 call!33675)))

(declare-fun b!478270 () Bool)

(assert (=> b!478270 (= e!291714 e!291711)))

(assert (=> b!478270 (= c!95716 ((_ is Star!1161) (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun bm!33671 () Bool)

(assert (=> bm!33671 (= call!33673 (derivativeStep!247 (ite c!95718 (regOne!2835 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) (regTwo!2834 (ite c!95704 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))) c!12526))))

(assert (= (and d!180215 c!95715) b!478268))

(assert (= (and d!180215 (not c!95715)) b!478261))

(assert (= (and b!478261 c!95714) b!478262))

(assert (= (and b!478261 (not c!95714)) b!478267))

(assert (= (and b!478267 c!95718) b!478266))

(assert (= (and b!478267 (not c!95718)) b!478270))

(assert (= (and b!478270 c!95716) b!478263))

(assert (= (and b!478270 (not c!95716)) b!478269))

(assert (= (and b!478269 c!95717) b!478265))

(assert (= (and b!478269 (not c!95717)) b!478264))

(assert (= (or b!478265 b!478264) bm!33670))

(assert (= (or b!478263 bm!33670) bm!33669))

(assert (= (or b!478266 bm!33669) bm!33668))

(assert (= (or b!478266 b!478265) bm!33671))

(declare-fun m!748191 () Bool)

(assert (=> bm!33668 m!748191))

(declare-fun m!748193 () Bool)

(assert (=> d!180215 m!748193))

(declare-fun m!748195 () Bool)

(assert (=> d!180215 m!748195))

(declare-fun m!748197 () Bool)

(assert (=> b!478269 m!748197))

(declare-fun m!748199 () Bool)

(assert (=> bm!33671 m!748199))

(assert (=> bm!33652 d!180215))

(declare-fun b!478271 () Bool)

(declare-fun e!291716 () Bool)

(declare-fun call!33677 () Bool)

(assert (=> b!478271 (= e!291716 call!33677)))

(declare-fun b!478272 () Bool)

(declare-fun e!291720 () Bool)

(declare-fun e!291717 () Bool)

(assert (=> b!478272 (= e!291720 e!291717)))

(declare-fun res!211525 () Bool)

(assert (=> b!478272 (=> res!211525 e!291717)))

(assert (=> b!478272 (= res!211525 ((_ is EmptyLang!1161) (derivativeStep!247 (regOne!2835 r!20230) c!12526)))))

(declare-fun b!478273 () Bool)

(declare-fun e!291721 () Bool)

(declare-fun e!291719 () Bool)

(assert (=> b!478273 (= e!291721 e!291719)))

(declare-fun c!95719 () Bool)

(assert (=> b!478273 (= c!95719 ((_ is Union!1161) (derivativeStep!247 (regOne!2835 r!20230) c!12526)))))

(declare-fun b!478274 () Bool)

(declare-fun e!291718 () Bool)

(assert (=> b!478274 (= e!291718 call!33677)))

(declare-fun d!180217 () Bool)

(declare-fun lt!210855 () Bool)

(assert (=> d!180217 (= lt!210855 (isEmpty!3542 (getLanguageWitness!51 (derivativeStep!247 (regOne!2835 r!20230) c!12526))))))

(assert (=> d!180217 (= lt!210855 e!291720)))

(declare-fun res!211526 () Bool)

(assert (=> d!180217 (=> (not res!211526) (not e!291720))))

(assert (=> d!180217 (= res!211526 (not ((_ is EmptyExpr!1161) (derivativeStep!247 (regOne!2835 r!20230) c!12526))))))

(assert (=> d!180217 (= (lostCauseFct!64 (derivativeStep!247 (regOne!2835 r!20230) c!12526)) lt!210855)))

(declare-fun bm!33672 () Bool)

(assert (=> bm!33672 (= call!33677 (lostCause!155 (ite c!95719 (regTwo!2835 (derivativeStep!247 (regOne!2835 r!20230) c!12526)) (regTwo!2834 (derivativeStep!247 (regOne!2835 r!20230) c!12526)))))))

(declare-fun b!478275 () Bool)

(assert (=> b!478275 (= e!291719 e!291716)))

(declare-fun res!211528 () Bool)

(declare-fun call!33678 () Bool)

(assert (=> b!478275 (= res!211528 call!33678)))

(assert (=> b!478275 (=> (not res!211528) (not e!291716))))

(declare-fun b!478276 () Bool)

(assert (=> b!478276 (= e!291717 e!291721)))

(declare-fun res!211527 () Bool)

(assert (=> b!478276 (=> (not res!211527) (not e!291721))))

(assert (=> b!478276 (= res!211527 (and (not ((_ is ElementMatch!1161) (derivativeStep!247 (regOne!2835 r!20230) c!12526))) (not ((_ is Star!1161) (derivativeStep!247 (regOne!2835 r!20230) c!12526)))))))

(declare-fun b!478277 () Bool)

(assert (=> b!478277 (= e!291719 e!291718)))

(declare-fun res!211524 () Bool)

(assert (=> b!478277 (= res!211524 call!33678)))

(assert (=> b!478277 (=> res!211524 e!291718)))

(declare-fun bm!33673 () Bool)

(assert (=> bm!33673 (= call!33678 (lostCause!155 (ite c!95719 (regOne!2835 (derivativeStep!247 (regOne!2835 r!20230) c!12526)) (regOne!2834 (derivativeStep!247 (regOne!2835 r!20230) c!12526)))))))

(assert (= (and d!180217 res!211526) b!478272))

(assert (= (and b!478272 (not res!211525)) b!478276))

(assert (= (and b!478276 res!211527) b!478273))

(assert (= (and b!478273 c!95719) b!478275))

(assert (= (and b!478273 (not c!95719)) b!478277))

(assert (= (and b!478275 res!211528) b!478271))

(assert (= (and b!478277 (not res!211524)) b!478274))

(assert (= (or b!478275 b!478277) bm!33673))

(assert (= (or b!478271 b!478274) bm!33672))

(assert (=> d!180217 m!748043))

(declare-fun m!748201 () Bool)

(assert (=> d!180217 m!748201))

(assert (=> d!180217 m!748201))

(declare-fun m!748203 () Bool)

(assert (=> d!180217 m!748203))

(declare-fun m!748205 () Bool)

(assert (=> bm!33672 m!748205))

(declare-fun m!748207 () Bool)

(assert (=> bm!33673 m!748207))

(assert (=> d!180167 d!180217))

(declare-fun c!95724 () Bool)

(declare-fun bm!33674 () Bool)

(declare-fun c!95722 () Bool)

(declare-fun call!33680 () Regex!1161)

(assert (=> bm!33674 (= call!33680 (derivativeStep!247 (ite c!95724 (regTwo!2835 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))) (ite c!95722 (reg!1490 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))) (regOne!2834 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))))) c!12526))))

(declare-fun b!478278 () Bool)

(declare-fun e!291723 () Regex!1161)

(declare-fun e!291724 () Regex!1161)

(assert (=> b!478278 (= e!291723 e!291724)))

(declare-fun c!95720 () Bool)

(assert (=> b!478278 (= c!95720 ((_ is ElementMatch!1161) (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun b!478279 () Bool)

(assert (=> b!478279 (= e!291724 (ite (= c!12526 (c!95636 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180219 () Bool)

(declare-fun lt!210856 () Regex!1161)

(assert (=> d!180219 (validRegex!389 lt!210856)))

(assert (=> d!180219 (= lt!210856 e!291723)))

(declare-fun c!95721 () Bool)

(assert (=> d!180219 (= c!95721 (or ((_ is EmptyExpr!1161) (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))) ((_ is EmptyLang!1161) (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))))))

(assert (=> d!180219 (validRegex!389 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))))

(assert (=> d!180219 (= (derivativeStep!247 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)) c!12526) lt!210856)))

(declare-fun call!33681 () Regex!1161)

(declare-fun e!291722 () Regex!1161)

(declare-fun b!478280 () Bool)

(assert (=> b!478280 (= e!291722 (Concat!2061 call!33681 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun e!291726 () Regex!1161)

(declare-fun b!478281 () Bool)

(declare-fun call!33682 () Regex!1161)

(assert (=> b!478281 (= e!291726 (Union!1161 (Concat!2061 call!33682 (regTwo!2834 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))) EmptyLang!1161))))

(declare-fun bm!33675 () Bool)

(assert (=> bm!33675 (= call!33681 call!33680)))

(declare-fun b!478282 () Bool)

(declare-fun call!33679 () Regex!1161)

(assert (=> b!478282 (= e!291726 (Union!1161 (Concat!2061 call!33682 (regTwo!2834 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))) call!33679))))

(declare-fun b!478283 () Bool)

(declare-fun e!291725 () Regex!1161)

(assert (=> b!478283 (= e!291725 (Union!1161 call!33679 call!33680))))

(declare-fun b!478284 () Bool)

(assert (=> b!478284 (= c!95724 ((_ is Union!1161) (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(assert (=> b!478284 (= e!291724 e!291725)))

(declare-fun b!478285 () Bool)

(assert (=> b!478285 (= e!291723 EmptyLang!1161)))

(declare-fun b!478286 () Bool)

(declare-fun c!95723 () Bool)

(assert (=> b!478286 (= c!95723 (nullable!295 (regOne!2834 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))))))

(assert (=> b!478286 (= e!291722 e!291726)))

(declare-fun bm!33676 () Bool)

(assert (=> bm!33676 (= call!33682 call!33681)))

(declare-fun b!478287 () Bool)

(assert (=> b!478287 (= e!291725 e!291722)))

(assert (=> b!478287 (= c!95722 ((_ is Star!1161) (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun bm!33677 () Bool)

(assert (=> bm!33677 (= call!33679 (derivativeStep!247 (ite c!95724 (regOne!2835 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230))) (regTwo!2834 (ite c!95694 (regOne!2835 r!20230) (regTwo!2834 r!20230)))) c!12526))))

(assert (= (and d!180219 c!95721) b!478285))

(assert (= (and d!180219 (not c!95721)) b!478278))

(assert (= (and b!478278 c!95720) b!478279))

(assert (= (and b!478278 (not c!95720)) b!478284))

(assert (= (and b!478284 c!95724) b!478283))

(assert (= (and b!478284 (not c!95724)) b!478287))

(assert (= (and b!478287 c!95722) b!478280))

(assert (= (and b!478287 (not c!95722)) b!478286))

(assert (= (and b!478286 c!95723) b!478282))

(assert (= (and b!478286 (not c!95723)) b!478281))

(assert (= (or b!478282 b!478281) bm!33676))

(assert (= (or b!478280 bm!33676) bm!33675))

(assert (= (or b!478283 bm!33675) bm!33674))

(assert (= (or b!478283 b!478282) bm!33677))

(declare-fun m!748209 () Bool)

(assert (=> bm!33674 m!748209))

(declare-fun m!748211 () Bool)

(assert (=> d!180219 m!748211))

(declare-fun m!748213 () Bool)

(assert (=> d!180219 m!748213))

(declare-fun m!748215 () Bool)

(assert (=> b!478286 m!748215))

(declare-fun m!748217 () Bool)

(assert (=> bm!33677 m!748217))

(assert (=> bm!33644 d!180219))

(declare-fun call!33684 () Regex!1161)

(declare-fun c!95729 () Bool)

(declare-fun c!95727 () Bool)

(declare-fun bm!33678 () Bool)

(assert (=> bm!33678 (= call!33684 (derivativeStep!247 (ite c!95729 (regTwo!2835 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))) (ite c!95727 (reg!1490 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))) (regOne!2834 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))))) c!12526))))

(declare-fun b!478288 () Bool)

(declare-fun e!291728 () Regex!1161)

(declare-fun e!291729 () Regex!1161)

(assert (=> b!478288 (= e!291728 e!291729)))

(declare-fun c!95725 () Bool)

(assert (=> b!478288 (= c!95725 ((_ is ElementMatch!1161) (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))))))

(declare-fun b!478289 () Bool)

(assert (=> b!478289 (= e!291729 (ite (= c!12526 (c!95636 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180221 () Bool)

(declare-fun lt!210857 () Regex!1161)

(assert (=> d!180221 (validRegex!389 lt!210857)))

(assert (=> d!180221 (= lt!210857 e!291728)))

(declare-fun c!95726 () Bool)

(assert (=> d!180221 (= c!95726 (or ((_ is EmptyExpr!1161) (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))) ((_ is EmptyLang!1161) (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))))))

(assert (=> d!180221 (validRegex!389 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))))

(assert (=> d!180221 (= (derivativeStep!247 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))) c!12526) lt!210857)))

(declare-fun b!478290 () Bool)

(declare-fun call!33685 () Regex!1161)

(declare-fun e!291727 () Regex!1161)

(assert (=> b!478290 (= e!291727 (Concat!2061 call!33685 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))))))

(declare-fun call!33686 () Regex!1161)

(declare-fun e!291731 () Regex!1161)

(declare-fun b!478291 () Bool)

(assert (=> b!478291 (= e!291731 (Union!1161 (Concat!2061 call!33686 (regTwo!2834 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))) EmptyLang!1161))))

(declare-fun bm!33679 () Bool)

(assert (=> bm!33679 (= call!33685 call!33684)))

(declare-fun b!478292 () Bool)

(declare-fun call!33683 () Regex!1161)

(assert (=> b!478292 (= e!291731 (Union!1161 (Concat!2061 call!33686 (regTwo!2834 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))) call!33683))))

(declare-fun b!478293 () Bool)

(declare-fun e!291730 () Regex!1161)

(assert (=> b!478293 (= e!291730 (Union!1161 call!33683 call!33684))))

(declare-fun b!478294 () Bool)

(assert (=> b!478294 (= c!95729 ((_ is Union!1161) (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))))))

(assert (=> b!478294 (= e!291729 e!291730)))

(declare-fun b!478295 () Bool)

(assert (=> b!478295 (= e!291728 EmptyLang!1161)))

(declare-fun b!478296 () Bool)

(declare-fun c!95728 () Bool)

(assert (=> b!478296 (= c!95728 (nullable!295 (regOne!2834 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))))))

(assert (=> b!478296 (= e!291727 e!291731)))

(declare-fun bm!33680 () Bool)

(assert (=> bm!33680 (= call!33686 call!33685)))

(declare-fun b!478297 () Bool)

(assert (=> b!478297 (= e!291730 e!291727)))

(assert (=> b!478297 (= c!95727 ((_ is Star!1161) (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))))))

(declare-fun bm!33681 () Bool)

(assert (=> bm!33681 (= call!33683 (derivativeStep!247 (ite c!95729 (regOne!2835 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))) (regTwo!2834 (ite c!95678 (regTwo!2835 (regOne!2835 r!20230)) (ite c!95676 (reg!1490 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230)))))) c!12526))))

(assert (= (and d!180221 c!95726) b!478295))

(assert (= (and d!180221 (not c!95726)) b!478288))

(assert (= (and b!478288 c!95725) b!478289))

(assert (= (and b!478288 (not c!95725)) b!478294))

(assert (= (and b!478294 c!95729) b!478293))

(assert (= (and b!478294 (not c!95729)) b!478297))

(assert (= (and b!478297 c!95727) b!478290))

(assert (= (and b!478297 (not c!95727)) b!478296))

(assert (= (and b!478296 c!95728) b!478292))

(assert (= (and b!478296 (not c!95728)) b!478291))

(assert (= (or b!478292 b!478291) bm!33680))

(assert (= (or b!478290 bm!33680) bm!33679))

(assert (= (or b!478293 bm!33679) bm!33678))

(assert (= (or b!478293 b!478292) bm!33681))

(declare-fun m!748219 () Bool)

(assert (=> bm!33678 m!748219))

(declare-fun m!748221 () Bool)

(assert (=> d!180221 m!748221))

(declare-fun m!748223 () Bool)

(assert (=> d!180221 m!748223))

(declare-fun m!748225 () Bool)

(assert (=> b!478296 m!748225))

(declare-fun m!748227 () Bool)

(assert (=> bm!33681 m!748227))

(assert (=> bm!33622 d!180221))

(declare-fun d!180223 () Bool)

(assert (=> d!180223 (= (nullable!295 (regOne!2834 (regOne!2835 r!20230))) (nullableFct!102 (regOne!2834 (regOne!2835 r!20230))))))

(declare-fun bs!58773 () Bool)

(assert (= bs!58773 d!180223))

(declare-fun m!748229 () Bool)

(assert (=> bs!58773 m!748229))

(assert (=> b!478076 d!180223))

(declare-fun c!95734 () Bool)

(declare-fun bm!33682 () Bool)

(declare-fun c!95732 () Bool)

(declare-fun call!33688 () Regex!1161)

(assert (=> bm!33682 (= call!33688 (derivativeStep!247 (ite c!95734 (regTwo!2835 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))) (ite c!95732 (reg!1490 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))) (regOne!2834 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))))) c!12526))))

(declare-fun b!478298 () Bool)

(declare-fun e!291733 () Regex!1161)

(declare-fun e!291734 () Regex!1161)

(assert (=> b!478298 (= e!291733 e!291734)))

(declare-fun c!95730 () Bool)

(assert (=> b!478298 (= c!95730 ((_ is ElementMatch!1161) (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))))))

(declare-fun b!478299 () Bool)

(assert (=> b!478299 (= e!291734 (ite (= c!12526 (c!95636 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180225 () Bool)

(declare-fun lt!210858 () Regex!1161)

(assert (=> d!180225 (validRegex!389 lt!210858)))

(assert (=> d!180225 (= lt!210858 e!291733)))

(declare-fun c!95731 () Bool)

(assert (=> d!180225 (= c!95731 (or ((_ is EmptyExpr!1161) (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))) ((_ is EmptyLang!1161) (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))))))

(assert (=> d!180225 (validRegex!389 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))))

(assert (=> d!180225 (= (derivativeStep!247 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))) c!12526) lt!210858)))

(declare-fun call!33689 () Regex!1161)

(declare-fun b!478300 () Bool)

(declare-fun e!291732 () Regex!1161)

(assert (=> b!478300 (= e!291732 (Concat!2061 call!33689 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))))))

(declare-fun e!291736 () Regex!1161)

(declare-fun call!33690 () Regex!1161)

(declare-fun b!478301 () Bool)

(assert (=> b!478301 (= e!291736 (Union!1161 (Concat!2061 call!33690 (regTwo!2834 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))) EmptyLang!1161))))

(declare-fun bm!33683 () Bool)

(assert (=> bm!33683 (= call!33689 call!33688)))

(declare-fun call!33687 () Regex!1161)

(declare-fun b!478302 () Bool)

(assert (=> b!478302 (= e!291736 (Union!1161 (Concat!2061 call!33690 (regTwo!2834 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))) call!33687))))

(declare-fun b!478303 () Bool)

(declare-fun e!291735 () Regex!1161)

(assert (=> b!478303 (= e!291735 (Union!1161 call!33687 call!33688))))

(declare-fun b!478304 () Bool)

(assert (=> b!478304 (= c!95734 ((_ is Union!1161) (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))))))

(assert (=> b!478304 (= e!291734 e!291735)))

(declare-fun b!478305 () Bool)

(assert (=> b!478305 (= e!291733 EmptyLang!1161)))

(declare-fun b!478306 () Bool)

(declare-fun c!95733 () Bool)

(assert (=> b!478306 (= c!95733 (nullable!295 (regOne!2834 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))))))

(assert (=> b!478306 (= e!291732 e!291736)))

(declare-fun bm!33684 () Bool)

(assert (=> bm!33684 (= call!33690 call!33689)))

(declare-fun b!478307 () Bool)

(assert (=> b!478307 (= e!291735 e!291732)))

(assert (=> b!478307 (= c!95732 ((_ is Star!1161) (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))))))

(declare-fun bm!33685 () Bool)

(assert (=> bm!33685 (= call!33687 (derivativeStep!247 (ite c!95734 (regOne!2835 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230)))) (regTwo!2834 (ite c!95694 (regTwo!2835 r!20230) (ite c!95692 (reg!1490 r!20230) (regOne!2834 r!20230))))) c!12526))))

(assert (= (and d!180225 c!95731) b!478305))

(assert (= (and d!180225 (not c!95731)) b!478298))

(assert (= (and b!478298 c!95730) b!478299))

(assert (= (and b!478298 (not c!95730)) b!478304))

(assert (= (and b!478304 c!95734) b!478303))

(assert (= (and b!478304 (not c!95734)) b!478307))

(assert (= (and b!478307 c!95732) b!478300))

(assert (= (and b!478307 (not c!95732)) b!478306))

(assert (= (and b!478306 c!95733) b!478302))

(assert (= (and b!478306 (not c!95733)) b!478301))

(assert (= (or b!478302 b!478301) bm!33684))

(assert (= (or b!478300 bm!33684) bm!33683))

(assert (= (or b!478303 bm!33683) bm!33682))

(assert (= (or b!478303 b!478302) bm!33685))

(declare-fun m!748231 () Bool)

(assert (=> bm!33682 m!748231))

(declare-fun m!748233 () Bool)

(assert (=> d!180225 m!748233))

(declare-fun m!748235 () Bool)

(assert (=> d!180225 m!748235))

(declare-fun m!748237 () Bool)

(assert (=> b!478306 m!748237))

(declare-fun m!748239 () Bool)

(assert (=> bm!33685 m!748239))

(assert (=> bm!33641 d!180225))

(declare-fun d!180227 () Bool)

(assert (=> d!180227 (= (nullable!295 (reg!1490 r!20230)) (nullableFct!102 (reg!1490 r!20230)))))

(declare-fun bs!58774 () Bool)

(assert (= bs!58774 d!180227))

(declare-fun m!748241 () Bool)

(assert (=> bs!58774 m!748241))

(assert (=> b!478096 d!180227))

(declare-fun b!478308 () Bool)

(declare-fun e!291740 () Bool)

(declare-fun e!291741 () Bool)

(assert (=> b!478308 (= e!291740 e!291741)))

(declare-fun res!211530 () Bool)

(assert (=> b!478308 (= res!211530 (not (nullable!295 (reg!1490 lt!210842))))))

(assert (=> b!478308 (=> (not res!211530) (not e!291741))))

(declare-fun b!478309 () Bool)

(declare-fun res!211531 () Bool)

(declare-fun e!291742 () Bool)

(assert (=> b!478309 (=> res!211531 e!291742)))

(assert (=> b!478309 (= res!211531 (not ((_ is Concat!2061) lt!210842)))))

(declare-fun e!291738 () Bool)

(assert (=> b!478309 (= e!291738 e!291742)))

(declare-fun bm!33686 () Bool)

(declare-fun call!33692 () Bool)

(declare-fun call!33693 () Bool)

(assert (=> bm!33686 (= call!33692 call!33693)))

(declare-fun b!478310 () Bool)

(declare-fun e!291743 () Bool)

(assert (=> b!478310 (= e!291743 call!33692)))

(declare-fun d!180229 () Bool)

(declare-fun res!211533 () Bool)

(declare-fun e!291737 () Bool)

(assert (=> d!180229 (=> res!211533 e!291737)))

(assert (=> d!180229 (= res!211533 ((_ is ElementMatch!1161) lt!210842))))

(assert (=> d!180229 (= (validRegex!389 lt!210842) e!291737)))

(declare-fun b!478311 () Bool)

(assert (=> b!478311 (= e!291741 call!33693)))

(declare-fun b!478312 () Bool)

(declare-fun e!291739 () Bool)

(assert (=> b!478312 (= e!291742 e!291739)))

(declare-fun res!211529 () Bool)

(assert (=> b!478312 (=> (not res!211529) (not e!291739))))

(assert (=> b!478312 (= res!211529 call!33692)))

(declare-fun b!478313 () Bool)

(declare-fun res!211532 () Bool)

(assert (=> b!478313 (=> (not res!211532) (not e!291743))))

(declare-fun call!33691 () Bool)

(assert (=> b!478313 (= res!211532 call!33691)))

(assert (=> b!478313 (= e!291738 e!291743)))

(declare-fun bm!33687 () Bool)

(declare-fun c!95736 () Bool)

(assert (=> bm!33687 (= call!33691 (validRegex!389 (ite c!95736 (regOne!2835 lt!210842) (regTwo!2834 lt!210842))))))

(declare-fun b!478314 () Bool)

(assert (=> b!478314 (= e!291740 e!291738)))

(assert (=> b!478314 (= c!95736 ((_ is Union!1161) lt!210842))))

(declare-fun bm!33688 () Bool)

(declare-fun c!95735 () Bool)

(assert (=> bm!33688 (= call!33693 (validRegex!389 (ite c!95735 (reg!1490 lt!210842) (ite c!95736 (regTwo!2835 lt!210842) (regOne!2834 lt!210842)))))))

(declare-fun b!478315 () Bool)

(assert (=> b!478315 (= e!291737 e!291740)))

(assert (=> b!478315 (= c!95735 ((_ is Star!1161) lt!210842))))

(declare-fun b!478316 () Bool)

(assert (=> b!478316 (= e!291739 call!33691)))

(assert (= (and d!180229 (not res!211533)) b!478315))

(assert (= (and b!478315 c!95735) b!478308))

(assert (= (and b!478315 (not c!95735)) b!478314))

(assert (= (and b!478308 res!211530) b!478311))

(assert (= (and b!478314 c!95736) b!478313))

(assert (= (and b!478314 (not c!95736)) b!478309))

(assert (= (and b!478313 res!211532) b!478310))

(assert (= (and b!478309 (not res!211531)) b!478312))

(assert (= (and b!478312 res!211529) b!478316))

(assert (= (or b!478310 b!478312) bm!33686))

(assert (= (or b!478313 b!478316) bm!33687))

(assert (= (or b!478311 bm!33686) bm!33688))

(declare-fun m!748243 () Bool)

(assert (=> b!478308 m!748243))

(declare-fun m!748245 () Bool)

(assert (=> bm!33687 m!748245))

(declare-fun m!748247 () Bool)

(assert (=> bm!33688 m!748247))

(assert (=> d!180169 d!180229))

(declare-fun b!478317 () Bool)

(declare-fun e!291747 () Bool)

(declare-fun e!291748 () Bool)

(assert (=> b!478317 (= e!291747 e!291748)))

(declare-fun res!211535 () Bool)

(assert (=> b!478317 (= res!211535 (not (nullable!295 (reg!1490 (regOne!2835 r!20230)))))))

(assert (=> b!478317 (=> (not res!211535) (not e!291748))))

(declare-fun b!478318 () Bool)

(declare-fun res!211536 () Bool)

(declare-fun e!291749 () Bool)

(assert (=> b!478318 (=> res!211536 e!291749)))

(assert (=> b!478318 (= res!211536 (not ((_ is Concat!2061) (regOne!2835 r!20230))))))

(declare-fun e!291745 () Bool)

(assert (=> b!478318 (= e!291745 e!291749)))

(declare-fun bm!33689 () Bool)

(declare-fun call!33695 () Bool)

(declare-fun call!33696 () Bool)

(assert (=> bm!33689 (= call!33695 call!33696)))

(declare-fun b!478319 () Bool)

(declare-fun e!291750 () Bool)

(assert (=> b!478319 (= e!291750 call!33695)))

(declare-fun d!180231 () Bool)

(declare-fun res!211538 () Bool)

(declare-fun e!291744 () Bool)

(assert (=> d!180231 (=> res!211538 e!291744)))

(assert (=> d!180231 (= res!211538 ((_ is ElementMatch!1161) (regOne!2835 r!20230)))))

(assert (=> d!180231 (= (validRegex!389 (regOne!2835 r!20230)) e!291744)))

(declare-fun b!478320 () Bool)

(assert (=> b!478320 (= e!291748 call!33696)))

(declare-fun b!478321 () Bool)

(declare-fun e!291746 () Bool)

(assert (=> b!478321 (= e!291749 e!291746)))

(declare-fun res!211534 () Bool)

(assert (=> b!478321 (=> (not res!211534) (not e!291746))))

(assert (=> b!478321 (= res!211534 call!33695)))

(declare-fun b!478322 () Bool)

(declare-fun res!211537 () Bool)

(assert (=> b!478322 (=> (not res!211537) (not e!291750))))

(declare-fun call!33694 () Bool)

(assert (=> b!478322 (= res!211537 call!33694)))

(assert (=> b!478322 (= e!291745 e!291750)))

(declare-fun bm!33690 () Bool)

(declare-fun c!95738 () Bool)

(assert (=> bm!33690 (= call!33694 (validRegex!389 (ite c!95738 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))))))

(declare-fun b!478323 () Bool)

(assert (=> b!478323 (= e!291747 e!291745)))

(assert (=> b!478323 (= c!95738 ((_ is Union!1161) (regOne!2835 r!20230)))))

(declare-fun c!95737 () Bool)

(declare-fun bm!33691 () Bool)

(assert (=> bm!33691 (= call!33696 (validRegex!389 (ite c!95737 (reg!1490 (regOne!2835 r!20230)) (ite c!95738 (regTwo!2835 (regOne!2835 r!20230)) (regOne!2834 (regOne!2835 r!20230))))))))

(declare-fun b!478324 () Bool)

(assert (=> b!478324 (= e!291744 e!291747)))

(assert (=> b!478324 (= c!95737 ((_ is Star!1161) (regOne!2835 r!20230)))))

(declare-fun b!478325 () Bool)

(assert (=> b!478325 (= e!291746 call!33694)))

(assert (= (and d!180231 (not res!211538)) b!478324))

(assert (= (and b!478324 c!95737) b!478317))

(assert (= (and b!478324 (not c!95737)) b!478323))

(assert (= (and b!478317 res!211535) b!478320))

(assert (= (and b!478323 c!95738) b!478322))

(assert (= (and b!478323 (not c!95738)) b!478318))

(assert (= (and b!478322 res!211537) b!478319))

(assert (= (and b!478318 (not res!211536)) b!478321))

(assert (= (and b!478321 res!211534) b!478325))

(assert (= (or b!478319 b!478321) bm!33689))

(assert (= (or b!478322 b!478325) bm!33690))

(assert (= (or b!478320 bm!33689) bm!33691))

(declare-fun m!748249 () Bool)

(assert (=> b!478317 m!748249))

(declare-fun m!748251 () Bool)

(assert (=> bm!33690 m!748251))

(declare-fun m!748253 () Bool)

(assert (=> bm!33691 m!748253))

(assert (=> d!180169 d!180231))

(declare-fun b!478326 () Bool)

(declare-fun e!291751 () Bool)

(declare-fun call!33697 () Bool)

(assert (=> b!478326 (= e!291751 call!33697)))

(declare-fun b!478327 () Bool)

(declare-fun e!291755 () Bool)

(declare-fun e!291752 () Bool)

(assert (=> b!478327 (= e!291755 e!291752)))

(declare-fun res!211540 () Bool)

(assert (=> b!478327 (=> res!211540 e!291752)))

(assert (=> b!478327 (= res!211540 ((_ is EmptyLang!1161) r!20230))))

(declare-fun b!478328 () Bool)

(declare-fun e!291756 () Bool)

(declare-fun e!291754 () Bool)

(assert (=> b!478328 (= e!291756 e!291754)))

(declare-fun c!95739 () Bool)

(assert (=> b!478328 (= c!95739 ((_ is Union!1161) r!20230))))

(declare-fun b!478329 () Bool)

(declare-fun e!291753 () Bool)

(assert (=> b!478329 (= e!291753 call!33697)))

(declare-fun d!180233 () Bool)

(declare-fun lt!210859 () Bool)

(assert (=> d!180233 (= lt!210859 (isEmpty!3542 (getLanguageWitness!51 r!20230)))))

(assert (=> d!180233 (= lt!210859 e!291755)))

(declare-fun res!211541 () Bool)

(assert (=> d!180233 (=> (not res!211541) (not e!291755))))

(assert (=> d!180233 (= res!211541 (not ((_ is EmptyExpr!1161) r!20230)))))

(assert (=> d!180233 (= (lostCauseFct!64 r!20230) lt!210859)))

(declare-fun bm!33692 () Bool)

(assert (=> bm!33692 (= call!33697 (lostCause!155 (ite c!95739 (regTwo!2835 r!20230) (regTwo!2834 r!20230))))))

(declare-fun b!478330 () Bool)

(assert (=> b!478330 (= e!291754 e!291751)))

(declare-fun res!211543 () Bool)

(declare-fun call!33698 () Bool)

(assert (=> b!478330 (= res!211543 call!33698)))

(assert (=> b!478330 (=> (not res!211543) (not e!291751))))

(declare-fun b!478331 () Bool)

(assert (=> b!478331 (= e!291752 e!291756)))

(declare-fun res!211542 () Bool)

(assert (=> b!478331 (=> (not res!211542) (not e!291756))))

(assert (=> b!478331 (= res!211542 (and (not ((_ is ElementMatch!1161) r!20230)) (not ((_ is Star!1161) r!20230))))))

(declare-fun b!478332 () Bool)

(assert (=> b!478332 (= e!291754 e!291753)))

(declare-fun res!211539 () Bool)

(assert (=> b!478332 (= res!211539 call!33698)))

(assert (=> b!478332 (=> res!211539 e!291753)))

(declare-fun bm!33693 () Bool)

(assert (=> bm!33693 (= call!33698 (lostCause!155 (ite c!95739 (regOne!2835 r!20230) (regOne!2834 r!20230))))))

(assert (= (and d!180233 res!211541) b!478327))

(assert (= (and b!478327 (not res!211540)) b!478331))

(assert (= (and b!478331 res!211542) b!478328))

(assert (= (and b!478328 c!95739) b!478330))

(assert (= (and b!478328 (not c!95739)) b!478332))

(assert (= (and b!478330 res!211543) b!478326))

(assert (= (and b!478332 (not res!211539)) b!478329))

(assert (= (or b!478330 b!478332) bm!33693))

(assert (= (or b!478326 b!478329) bm!33692))

(declare-fun m!748255 () Bool)

(assert (=> d!180233 m!748255))

(assert (=> d!180233 m!748255))

(declare-fun m!748257 () Bool)

(assert (=> d!180233 m!748257))

(declare-fun m!748259 () Bool)

(assert (=> bm!33692 m!748259))

(declare-fun m!748261 () Bool)

(assert (=> bm!33693 m!748261))

(assert (=> d!180154 d!180233))

(declare-fun b!478333 () Bool)

(declare-fun e!291760 () Bool)

(declare-fun e!291761 () Bool)

(assert (=> b!478333 (= e!291760 e!291761)))

(declare-fun res!211545 () Bool)

(assert (=> b!478333 (= res!211545 (not (nullable!295 (reg!1490 lt!210847))))))

(assert (=> b!478333 (=> (not res!211545) (not e!291761))))

(declare-fun b!478334 () Bool)

(declare-fun res!211546 () Bool)

(declare-fun e!291762 () Bool)

(assert (=> b!478334 (=> res!211546 e!291762)))

(assert (=> b!478334 (= res!211546 (not ((_ is Concat!2061) lt!210847)))))

(declare-fun e!291758 () Bool)

(assert (=> b!478334 (= e!291758 e!291762)))

(declare-fun bm!33694 () Bool)

(declare-fun call!33700 () Bool)

(declare-fun call!33701 () Bool)

(assert (=> bm!33694 (= call!33700 call!33701)))

(declare-fun b!478335 () Bool)

(declare-fun e!291763 () Bool)

(assert (=> b!478335 (= e!291763 call!33700)))

(declare-fun d!180235 () Bool)

(declare-fun res!211548 () Bool)

(declare-fun e!291757 () Bool)

(assert (=> d!180235 (=> res!211548 e!291757)))

(assert (=> d!180235 (= res!211548 ((_ is ElementMatch!1161) lt!210847))))

(assert (=> d!180235 (= (validRegex!389 lt!210847) e!291757)))

(declare-fun b!478336 () Bool)

(assert (=> b!478336 (= e!291761 call!33701)))

(declare-fun b!478337 () Bool)

(declare-fun e!291759 () Bool)

(assert (=> b!478337 (= e!291762 e!291759)))

(declare-fun res!211544 () Bool)

(assert (=> b!478337 (=> (not res!211544) (not e!291759))))

(assert (=> b!478337 (= res!211544 call!33700)))

(declare-fun b!478338 () Bool)

(declare-fun res!211547 () Bool)

(assert (=> b!478338 (=> (not res!211547) (not e!291763))))

(declare-fun call!33699 () Bool)

(assert (=> b!478338 (= res!211547 call!33699)))

(assert (=> b!478338 (= e!291758 e!291763)))

(declare-fun bm!33695 () Bool)

(declare-fun c!95741 () Bool)

(assert (=> bm!33695 (= call!33699 (validRegex!389 (ite c!95741 (regOne!2835 lt!210847) (regTwo!2834 lt!210847))))))

(declare-fun b!478339 () Bool)

(assert (=> b!478339 (= e!291760 e!291758)))

(assert (=> b!478339 (= c!95741 ((_ is Union!1161) lt!210847))))

(declare-fun c!95740 () Bool)

(declare-fun bm!33696 () Bool)

(assert (=> bm!33696 (= call!33701 (validRegex!389 (ite c!95740 (reg!1490 lt!210847) (ite c!95741 (regTwo!2835 lt!210847) (regOne!2834 lt!210847)))))))

(declare-fun b!478340 () Bool)

(assert (=> b!478340 (= e!291757 e!291760)))

(assert (=> b!478340 (= c!95740 ((_ is Star!1161) lt!210847))))

(declare-fun b!478341 () Bool)

(assert (=> b!478341 (= e!291759 call!33699)))

(assert (= (and d!180235 (not res!211548)) b!478340))

(assert (= (and b!478340 c!95740) b!478333))

(assert (= (and b!478340 (not c!95740)) b!478339))

(assert (= (and b!478333 res!211545) b!478336))

(assert (= (and b!478339 c!95741) b!478338))

(assert (= (and b!478339 (not c!95741)) b!478334))

(assert (= (and b!478338 res!211547) b!478335))

(assert (= (and b!478334 (not res!211546)) b!478337))

(assert (= (and b!478337 res!211544) b!478341))

(assert (= (or b!478335 b!478337) bm!33694))

(assert (= (or b!478338 b!478341) bm!33695))

(assert (= (or b!478336 bm!33694) bm!33696))

(declare-fun m!748263 () Bool)

(assert (=> b!478333 m!748263))

(declare-fun m!748265 () Bool)

(assert (=> bm!33695 m!748265))

(declare-fun m!748267 () Bool)

(assert (=> bm!33696 m!748267))

(assert (=> d!180187 d!180235))

(assert (=> d!180187 d!180181))

(assert (=> d!180183 d!180193))

(assert (=> d!180183 d!180195))

(declare-fun d!180237 () Bool)

(assert (=> d!180237 (lostCause!155 (derivativeStep!247 (regTwo!2835 r!20230) c!12526))))

(assert (=> d!180237 true))

(declare-fun _$99!58 () Unit!8364)

(assert (=> d!180237 (= (choose!3630 (regTwo!2835 r!20230) c!12526) _$99!58)))

(declare-fun bs!58775 () Bool)

(assert (= bs!58775 d!180237))

(assert (=> bs!58775 m!748031))

(assert (=> bs!58775 m!748031))

(assert (=> bs!58775 m!748037))

(assert (=> d!180183 d!180237))

(assert (=> d!180183 d!180163))

(declare-fun c!95747 () Bool)

(declare-fun bm!33697 () Bool)

(declare-fun call!33703 () Regex!1161)

(declare-fun c!95745 () Bool)

(assert (=> bm!33697 (= call!33703 (derivativeStep!247 (ite c!95747 (regTwo!2835 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))) (ite c!95745 (reg!1490 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))) (regOne!2834 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))))) c!12526))))

(declare-fun b!478342 () Bool)

(declare-fun e!291765 () Regex!1161)

(declare-fun e!291766 () Regex!1161)

(assert (=> b!478342 (= e!291765 e!291766)))

(declare-fun c!95743 () Bool)

(assert (=> b!478342 (= c!95743 ((_ is ElementMatch!1161) (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))))))

(declare-fun b!478343 () Bool)

(assert (=> b!478343 (= e!291766 (ite (= c!12526 (c!95636 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180239 () Bool)

(declare-fun lt!210860 () Regex!1161)

(assert (=> d!180239 (validRegex!389 lt!210860)))

(assert (=> d!180239 (= lt!210860 e!291765)))

(declare-fun c!95744 () Bool)

(assert (=> d!180239 (= c!95744 (or ((_ is EmptyExpr!1161) (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))) ((_ is EmptyLang!1161) (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))))))

(assert (=> d!180239 (validRegex!389 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))))

(assert (=> d!180239 (= (derivativeStep!247 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))) c!12526) lt!210860)))

(declare-fun b!478344 () Bool)

(declare-fun e!291764 () Regex!1161)

(declare-fun call!33704 () Regex!1161)

(assert (=> b!478344 (= e!291764 (Concat!2061 call!33704 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))))))

(declare-fun b!478345 () Bool)

(declare-fun e!291768 () Regex!1161)

(declare-fun call!33705 () Regex!1161)

(assert (=> b!478345 (= e!291768 (Union!1161 (Concat!2061 call!33705 (regTwo!2834 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))) EmptyLang!1161))))

(declare-fun bm!33698 () Bool)

(assert (=> bm!33698 (= call!33704 call!33703)))

(declare-fun b!478346 () Bool)

(declare-fun call!33702 () Regex!1161)

(assert (=> b!478346 (= e!291768 (Union!1161 (Concat!2061 call!33705 (regTwo!2834 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))) call!33702))))

(declare-fun b!478347 () Bool)

(declare-fun e!291767 () Regex!1161)

(assert (=> b!478347 (= e!291767 (Union!1161 call!33702 call!33703))))

(declare-fun b!478348 () Bool)

(assert (=> b!478348 (= c!95747 ((_ is Union!1161) (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))))))

(assert (=> b!478348 (= e!291766 e!291767)))

(declare-fun b!478349 () Bool)

(assert (=> b!478349 (= e!291765 EmptyLang!1161)))

(declare-fun b!478350 () Bool)

(declare-fun c!95746 () Bool)

(assert (=> b!478350 (= c!95746 (nullable!295 (regOne!2834 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))))))

(assert (=> b!478350 (= e!291764 e!291768)))

(declare-fun bm!33699 () Bool)

(assert (=> bm!33699 (= call!33705 call!33704)))

(declare-fun b!478351 () Bool)

(assert (=> b!478351 (= e!291767 e!291764)))

(assert (=> b!478351 (= c!95745 ((_ is Star!1161) (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))))))

(declare-fun bm!33700 () Bool)

(assert (=> bm!33700 (= call!33702 (derivativeStep!247 (ite c!95747 (regOne!2835 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230)))) (regTwo!2834 (ite c!95678 (regOne!2835 (regOne!2835 r!20230)) (regTwo!2834 (regOne!2835 r!20230))))) c!12526))))

(assert (= (and d!180239 c!95744) b!478349))

(assert (= (and d!180239 (not c!95744)) b!478342))

(assert (= (and b!478342 c!95743) b!478343))

(assert (= (and b!478342 (not c!95743)) b!478348))

(assert (= (and b!478348 c!95747) b!478347))

(assert (= (and b!478348 (not c!95747)) b!478351))

(assert (= (and b!478351 c!95745) b!478344))

(assert (= (and b!478351 (not c!95745)) b!478350))

(assert (= (and b!478350 c!95746) b!478346))

(assert (= (and b!478350 (not c!95746)) b!478345))

(assert (= (or b!478346 b!478345) bm!33699))

(assert (= (or b!478344 bm!33699) bm!33698))

(assert (= (or b!478347 bm!33698) bm!33697))

(assert (= (or b!478347 b!478346) bm!33700))

(declare-fun m!748269 () Bool)

(assert (=> bm!33697 m!748269))

(declare-fun m!748271 () Bool)

(assert (=> d!180239 m!748271))

(declare-fun m!748273 () Bool)

(assert (=> d!180239 m!748273))

(declare-fun m!748275 () Bool)

(assert (=> b!478350 m!748275))

(declare-fun m!748277 () Bool)

(assert (=> bm!33700 m!748277))

(assert (=> bm!33625 d!180239))

(declare-fun b!478352 () Bool)

(declare-fun e!291772 () Bool)

(declare-fun e!291773 () Bool)

(assert (=> b!478352 (= e!291772 e!291773)))

(declare-fun res!211550 () Bool)

(assert (=> b!478352 (= res!211550 (not (nullable!295 (reg!1490 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))))

(assert (=> b!478352 (=> (not res!211550) (not e!291773))))

(declare-fun b!478353 () Bool)

(declare-fun res!211551 () Bool)

(declare-fun e!291774 () Bool)

(assert (=> b!478353 (=> res!211551 e!291774)))

(assert (=> b!478353 (= res!211551 (not ((_ is Concat!2061) (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))))))

(declare-fun e!291770 () Bool)

(assert (=> b!478353 (= e!291770 e!291774)))

(declare-fun bm!33701 () Bool)

(declare-fun call!33707 () Bool)

(declare-fun call!33708 () Bool)

(assert (=> bm!33701 (= call!33707 call!33708)))

(declare-fun b!478354 () Bool)

(declare-fun e!291775 () Bool)

(assert (=> b!478354 (= e!291775 call!33707)))

(declare-fun d!180241 () Bool)

(declare-fun res!211553 () Bool)

(declare-fun e!291769 () Bool)

(assert (=> d!180241 (=> res!211553 e!291769)))

(assert (=> d!180241 (= res!211553 ((_ is ElementMatch!1161) (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(assert (=> d!180241 (= (validRegex!389 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) e!291769)))

(declare-fun b!478355 () Bool)

(assert (=> b!478355 (= e!291773 call!33708)))

(declare-fun b!478356 () Bool)

(declare-fun e!291771 () Bool)

(assert (=> b!478356 (= e!291774 e!291771)))

(declare-fun res!211549 () Bool)

(assert (=> b!478356 (=> (not res!211549) (not e!291771))))

(assert (=> b!478356 (= res!211549 call!33707)))

(declare-fun b!478357 () Bool)

(declare-fun res!211552 () Bool)

(assert (=> b!478357 (=> (not res!211552) (not e!291775))))

(declare-fun call!33706 () Bool)

(assert (=> b!478357 (= res!211552 call!33706)))

(assert (=> b!478357 (= e!291770 e!291775)))

(declare-fun c!95749 () Bool)

(declare-fun bm!33702 () Bool)

(assert (=> bm!33702 (= call!33706 (validRegex!389 (ite c!95749 (regOne!2835 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) (regTwo!2834 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))))

(declare-fun b!478358 () Bool)

(assert (=> b!478358 (= e!291772 e!291770)))

(assert (=> b!478358 (= c!95749 ((_ is Union!1161) (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(declare-fun bm!33703 () Bool)

(declare-fun c!95748 () Bool)

(assert (=> bm!33703 (= call!33708 (validRegex!389 (ite c!95748 (reg!1490 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) (ite c!95749 (regTwo!2835 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) (regOne!2834 (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))))))))

(declare-fun b!478359 () Bool)

(assert (=> b!478359 (= e!291769 e!291772)))

(assert (=> b!478359 (= c!95748 ((_ is Star!1161) (ite c!95642 (reg!1490 (regTwo!2835 r!20230)) (ite c!95643 (regTwo!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(declare-fun b!478360 () Bool)

(assert (=> b!478360 (= e!291771 call!33706)))

(assert (= (and d!180241 (not res!211553)) b!478359))

(assert (= (and b!478359 c!95748) b!478352))

(assert (= (and b!478359 (not c!95748)) b!478358))

(assert (= (and b!478352 res!211550) b!478355))

(assert (= (and b!478358 c!95749) b!478357))

(assert (= (and b!478358 (not c!95749)) b!478353))

(assert (= (and b!478357 res!211552) b!478354))

(assert (= (and b!478353 (not res!211551)) b!478356))

(assert (= (and b!478356 res!211549) b!478360))

(assert (= (or b!478354 b!478356) bm!33701))

(assert (= (or b!478357 b!478360) bm!33702))

(assert (= (or b!478355 bm!33701) bm!33703))

(declare-fun m!748279 () Bool)

(assert (=> b!478352 m!748279))

(declare-fun m!748281 () Bool)

(assert (=> bm!33702 m!748281))

(declare-fun m!748283 () Bool)

(assert (=> bm!33703 m!748283))

(assert (=> bm!33597 d!180241))

(assert (=> d!180179 d!180167))

(assert (=> d!180179 d!180169))

(declare-fun d!180243 () Bool)

(assert (=> d!180243 (lostCause!155 (derivativeStep!247 (regOne!2835 r!20230) c!12526))))

(assert (=> d!180243 true))

(declare-fun _$99!59 () Unit!8364)

(assert (=> d!180243 (= (choose!3630 (regOne!2835 r!20230) c!12526) _$99!59)))

(declare-fun bs!58776 () Bool)

(assert (= bs!58776 d!180243))

(assert (=> bs!58776 m!748043))

(assert (=> bs!58776 m!748043))

(assert (=> bs!58776 m!748045))

(assert (=> d!180179 d!180243))

(assert (=> d!180179 d!180231))

(declare-fun b!478361 () Bool)

(declare-fun e!291779 () Bool)

(declare-fun e!291780 () Bool)

(assert (=> b!478361 (= e!291779 e!291780)))

(declare-fun res!211555 () Bool)

(assert (=> b!478361 (= res!211555 (not (nullable!295 (reg!1490 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))))

(assert (=> b!478361 (=> (not res!211555) (not e!291780))))

(declare-fun b!478362 () Bool)

(declare-fun res!211556 () Bool)

(declare-fun e!291781 () Bool)

(assert (=> b!478362 (=> res!211556 e!291781)))

(assert (=> b!478362 (= res!211556 (not ((_ is Concat!2061) (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))))))

(declare-fun e!291777 () Bool)

(assert (=> b!478362 (= e!291777 e!291781)))

(declare-fun bm!33704 () Bool)

(declare-fun call!33710 () Bool)

(declare-fun call!33711 () Bool)

(assert (=> bm!33704 (= call!33710 call!33711)))

(declare-fun b!478363 () Bool)

(declare-fun e!291782 () Bool)

(assert (=> b!478363 (= e!291782 call!33710)))

(declare-fun d!180245 () Bool)

(declare-fun res!211558 () Bool)

(declare-fun e!291776 () Bool)

(assert (=> d!180245 (=> res!211558 e!291776)))

(assert (=> d!180245 (= res!211558 ((_ is ElementMatch!1161) (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(assert (=> d!180245 (= (validRegex!389 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) e!291776)))

(declare-fun b!478364 () Bool)

(assert (=> b!478364 (= e!291780 call!33711)))

(declare-fun b!478365 () Bool)

(declare-fun e!291778 () Bool)

(assert (=> b!478365 (= e!291781 e!291778)))

(declare-fun res!211554 () Bool)

(assert (=> b!478365 (=> (not res!211554) (not e!291778))))

(assert (=> b!478365 (= res!211554 call!33710)))

(declare-fun b!478366 () Bool)

(declare-fun res!211557 () Bool)

(assert (=> b!478366 (=> (not res!211557) (not e!291782))))

(declare-fun call!33709 () Bool)

(assert (=> b!478366 (= res!211557 call!33709)))

(assert (=> b!478366 (= e!291777 e!291782)))

(declare-fun bm!33705 () Bool)

(declare-fun c!95751 () Bool)

(assert (=> bm!33705 (= call!33709 (validRegex!389 (ite c!95751 (regOne!2835 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) (regTwo!2834 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))))

(declare-fun b!478367 () Bool)

(assert (=> b!478367 (= e!291779 e!291777)))

(assert (=> b!478367 (= c!95751 ((_ is Union!1161) (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun c!95750 () Bool)

(declare-fun bm!33706 () Bool)

(assert (=> bm!33706 (= call!33711 (validRegex!389 (ite c!95750 (reg!1490 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) (ite c!95751 (regTwo!2835 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))) (regOne!2834 (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230))))))))))

(declare-fun b!478368 () Bool)

(assert (=> b!478368 (= e!291776 e!291779)))

(assert (=> b!478368 (= c!95750 ((_ is Star!1161) (ite c!95643 (regOne!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun b!478369 () Bool)

(assert (=> b!478369 (= e!291778 call!33709)))

(assert (= (and d!180245 (not res!211558)) b!478368))

(assert (= (and b!478368 c!95750) b!478361))

(assert (= (and b!478368 (not c!95750)) b!478367))

(assert (= (and b!478361 res!211555) b!478364))

(assert (= (and b!478367 c!95751) b!478366))

(assert (= (and b!478367 (not c!95751)) b!478362))

(assert (= (and b!478366 res!211557) b!478363))

(assert (= (and b!478362 (not res!211556)) b!478365))

(assert (= (and b!478365 res!211554) b!478369))

(assert (= (or b!478363 b!478365) bm!33704))

(assert (= (or b!478366 b!478369) bm!33705))

(assert (= (or b!478364 bm!33704) bm!33706))

(declare-fun m!748285 () Bool)

(assert (=> b!478361 m!748285))

(declare-fun m!748287 () Bool)

(assert (=> bm!33705 m!748287))

(declare-fun m!748289 () Bool)

(assert (=> bm!33706 m!748289))

(assert (=> bm!33596 d!180245))

(declare-fun b!478370 () Bool)

(declare-fun e!291783 () Bool)

(declare-fun call!33712 () Bool)

(assert (=> b!478370 (= e!291783 call!33712)))

(declare-fun b!478371 () Bool)

(declare-fun e!291787 () Bool)

(declare-fun e!291784 () Bool)

(assert (=> b!478371 (= e!291787 e!291784)))

(declare-fun res!211560 () Bool)

(assert (=> b!478371 (=> res!211560 e!291784)))

(assert (=> b!478371 (= res!211560 ((_ is EmptyLang!1161) (regTwo!2835 r!20230)))))

(declare-fun b!478372 () Bool)

(declare-fun e!291788 () Bool)

(declare-fun e!291786 () Bool)

(assert (=> b!478372 (= e!291788 e!291786)))

(declare-fun c!95752 () Bool)

(assert (=> b!478372 (= c!95752 ((_ is Union!1161) (regTwo!2835 r!20230)))))

(declare-fun b!478373 () Bool)

(declare-fun e!291785 () Bool)

(assert (=> b!478373 (= e!291785 call!33712)))

(declare-fun d!180247 () Bool)

(declare-fun lt!210861 () Bool)

(assert (=> d!180247 (= lt!210861 (isEmpty!3542 (getLanguageWitness!51 (regTwo!2835 r!20230))))))

(assert (=> d!180247 (= lt!210861 e!291787)))

(declare-fun res!211561 () Bool)

(assert (=> d!180247 (=> (not res!211561) (not e!291787))))

(assert (=> d!180247 (= res!211561 (not ((_ is EmptyExpr!1161) (regTwo!2835 r!20230))))))

(assert (=> d!180247 (= (lostCauseFct!64 (regTwo!2835 r!20230)) lt!210861)))

(declare-fun bm!33707 () Bool)

(assert (=> bm!33707 (= call!33712 (lostCause!155 (ite c!95752 (regTwo!2835 (regTwo!2835 r!20230)) (regTwo!2834 (regTwo!2835 r!20230)))))))

(declare-fun b!478374 () Bool)

(assert (=> b!478374 (= e!291786 e!291783)))

(declare-fun res!211563 () Bool)

(declare-fun call!33713 () Bool)

(assert (=> b!478374 (= res!211563 call!33713)))

(assert (=> b!478374 (=> (not res!211563) (not e!291783))))

(declare-fun b!478375 () Bool)

(assert (=> b!478375 (= e!291784 e!291788)))

(declare-fun res!211562 () Bool)

(assert (=> b!478375 (=> (not res!211562) (not e!291788))))

(assert (=> b!478375 (= res!211562 (and (not ((_ is ElementMatch!1161) (regTwo!2835 r!20230))) (not ((_ is Star!1161) (regTwo!2835 r!20230)))))))

(declare-fun b!478376 () Bool)

(assert (=> b!478376 (= e!291786 e!291785)))

(declare-fun res!211559 () Bool)

(assert (=> b!478376 (= res!211559 call!33713)))

(assert (=> b!478376 (=> res!211559 e!291785)))

(declare-fun bm!33708 () Bool)

(assert (=> bm!33708 (= call!33713 (lostCause!155 (ite c!95752 (regOne!2835 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))))

(assert (= (and d!180247 res!211561) b!478371))

(assert (= (and b!478371 (not res!211560)) b!478375))

(assert (= (and b!478375 res!211562) b!478372))

(assert (= (and b!478372 c!95752) b!478374))

(assert (= (and b!478372 (not c!95752)) b!478376))

(assert (= (and b!478374 res!211563) b!478370))

(assert (= (and b!478376 (not res!211559)) b!478373))

(assert (= (or b!478374 b!478376) bm!33708))

(assert (= (or b!478370 b!478373) bm!33707))

(declare-fun m!748291 () Bool)

(assert (=> d!180247 m!748291))

(assert (=> d!180247 m!748291))

(declare-fun m!748293 () Bool)

(assert (=> d!180247 m!748293))

(declare-fun m!748295 () Bool)

(assert (=> bm!33707 m!748295))

(declare-fun m!748297 () Bool)

(assert (=> bm!33708 m!748297))

(assert (=> d!180159 d!180247))

(declare-fun b!478377 () Bool)

(declare-fun e!291789 () Bool)

(declare-fun call!33714 () Bool)

(assert (=> b!478377 (= e!291789 call!33714)))

(declare-fun b!478378 () Bool)

(declare-fun e!291793 () Bool)

(declare-fun e!291790 () Bool)

(assert (=> b!478378 (= e!291793 e!291790)))

(declare-fun res!211565 () Bool)

(assert (=> b!478378 (=> res!211565 e!291790)))

(assert (=> b!478378 (= res!211565 ((_ is EmptyLang!1161) (derivativeStep!247 (regTwo!2835 r!20230) c!12526)))))

(declare-fun b!478379 () Bool)

(declare-fun e!291794 () Bool)

(declare-fun e!291792 () Bool)

(assert (=> b!478379 (= e!291794 e!291792)))

(declare-fun c!95753 () Bool)

(assert (=> b!478379 (= c!95753 ((_ is Union!1161) (derivativeStep!247 (regTwo!2835 r!20230) c!12526)))))

(declare-fun b!478380 () Bool)

(declare-fun e!291791 () Bool)

(assert (=> b!478380 (= e!291791 call!33714)))

(declare-fun d!180249 () Bool)

(declare-fun lt!210862 () Bool)

(assert (=> d!180249 (= lt!210862 (isEmpty!3542 (getLanguageWitness!51 (derivativeStep!247 (regTwo!2835 r!20230) c!12526))))))

(assert (=> d!180249 (= lt!210862 e!291793)))

(declare-fun res!211566 () Bool)

(assert (=> d!180249 (=> (not res!211566) (not e!291793))))

(assert (=> d!180249 (= res!211566 (not ((_ is EmptyExpr!1161) (derivativeStep!247 (regTwo!2835 r!20230) c!12526))))))

(assert (=> d!180249 (= (lostCauseFct!64 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)) lt!210862)))

(declare-fun bm!33709 () Bool)

(assert (=> bm!33709 (= call!33714 (lostCause!155 (ite c!95753 (regTwo!2835 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)) (regTwo!2834 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)))))))

(declare-fun b!478381 () Bool)

(assert (=> b!478381 (= e!291792 e!291789)))

(declare-fun res!211568 () Bool)

(declare-fun call!33715 () Bool)

(assert (=> b!478381 (= res!211568 call!33715)))

(assert (=> b!478381 (=> (not res!211568) (not e!291789))))

(declare-fun b!478382 () Bool)

(assert (=> b!478382 (= e!291790 e!291794)))

(declare-fun res!211567 () Bool)

(assert (=> b!478382 (=> (not res!211567) (not e!291794))))

(assert (=> b!478382 (= res!211567 (and (not ((_ is ElementMatch!1161) (derivativeStep!247 (regTwo!2835 r!20230) c!12526))) (not ((_ is Star!1161) (derivativeStep!247 (regTwo!2835 r!20230) c!12526)))))))

(declare-fun b!478383 () Bool)

(assert (=> b!478383 (= e!291792 e!291791)))

(declare-fun res!211564 () Bool)

(assert (=> b!478383 (= res!211564 call!33715)))

(assert (=> b!478383 (=> res!211564 e!291791)))

(declare-fun bm!33710 () Bool)

(assert (=> bm!33710 (= call!33715 (lostCause!155 (ite c!95753 (regOne!2835 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)) (regOne!2834 (derivativeStep!247 (regTwo!2835 r!20230) c!12526)))))))

(assert (= (and d!180249 res!211566) b!478378))

(assert (= (and b!478378 (not res!211565)) b!478382))

(assert (= (and b!478382 res!211567) b!478379))

(assert (= (and b!478379 c!95753) b!478381))

(assert (= (and b!478379 (not c!95753)) b!478383))

(assert (= (and b!478381 res!211568) b!478377))

(assert (= (and b!478383 (not res!211564)) b!478380))

(assert (= (or b!478381 b!478383) bm!33710))

(assert (= (or b!478377 b!478380) bm!33709))

(assert (=> d!180249 m!748031))

(declare-fun m!748299 () Bool)

(assert (=> d!180249 m!748299))

(assert (=> d!180249 m!748299))

(declare-fun m!748301 () Bool)

(assert (=> d!180249 m!748301))

(declare-fun m!748303 () Bool)

(assert (=> bm!33709 m!748303))

(declare-fun m!748305 () Bool)

(assert (=> bm!33710 m!748305))

(assert (=> d!180193 d!180249))

(declare-fun call!33717 () Regex!1161)

(declare-fun c!95758 () Bool)

(declare-fun c!95756 () Bool)

(declare-fun bm!33711 () Bool)

(assert (=> bm!33711 (= call!33717 (derivativeStep!247 (ite c!95758 (regTwo!2835 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) (ite c!95756 (reg!1490 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) (regOne!2834 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))) c!12526))))

(declare-fun b!478384 () Bool)

(declare-fun e!291796 () Regex!1161)

(declare-fun e!291797 () Regex!1161)

(assert (=> b!478384 (= e!291796 e!291797)))

(declare-fun c!95754 () Bool)

(assert (=> b!478384 (= c!95754 ((_ is ElementMatch!1161) (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(declare-fun b!478385 () Bool)

(assert (=> b!478385 (= e!291797 (ite (= c!12526 (c!95636 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))) EmptyExpr!1161 EmptyLang!1161))))

(declare-fun d!180251 () Bool)

(declare-fun lt!210863 () Regex!1161)

(assert (=> d!180251 (validRegex!389 lt!210863)))

(assert (=> d!180251 (= lt!210863 e!291796)))

(declare-fun c!95755 () Bool)

(assert (=> d!180251 (= c!95755 (or ((_ is EmptyExpr!1161) (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) ((_ is EmptyLang!1161) (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))))))

(assert (=> d!180251 (validRegex!389 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))))

(assert (=> d!180251 (= (derivativeStep!247 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))) c!12526) lt!210863)))

(declare-fun call!33718 () Regex!1161)

(declare-fun e!291795 () Regex!1161)

(declare-fun b!478386 () Bool)

(assert (=> b!478386 (= e!291795 (Concat!2061 call!33718 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(declare-fun e!291799 () Regex!1161)

(declare-fun b!478387 () Bool)

(declare-fun call!33719 () Regex!1161)

(assert (=> b!478387 (= e!291799 (Union!1161 (Concat!2061 call!33719 (regTwo!2834 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))) EmptyLang!1161))))

(declare-fun bm!33712 () Bool)

(assert (=> bm!33712 (= call!33718 call!33717)))

(declare-fun call!33716 () Regex!1161)

(declare-fun b!478388 () Bool)

(assert (=> b!478388 (= e!291799 (Union!1161 (Concat!2061 call!33719 (regTwo!2834 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))) call!33716))))

(declare-fun b!478389 () Bool)

(declare-fun e!291798 () Regex!1161)

(assert (=> b!478389 (= e!291798 (Union!1161 call!33716 call!33717))))

(declare-fun b!478390 () Bool)

(assert (=> b!478390 (= c!95758 ((_ is Union!1161) (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(assert (=> b!478390 (= e!291797 e!291798)))

(declare-fun b!478391 () Bool)

(assert (=> b!478391 (= e!291796 EmptyLang!1161)))

(declare-fun c!95757 () Bool)

(declare-fun b!478392 () Bool)

(assert (=> b!478392 (= c!95757 (nullable!295 (regOne!2834 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))))))

(assert (=> b!478392 (= e!291795 e!291799)))

(declare-fun bm!33713 () Bool)

(assert (=> bm!33713 (= call!33719 call!33718)))

(declare-fun b!478393 () Bool)

(assert (=> b!478393 (= e!291798 e!291795)))

(assert (=> b!478393 (= c!95756 ((_ is Star!1161) (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))))))

(declare-fun bm!33714 () Bool)

(assert (=> bm!33714 (= call!33716 (derivativeStep!247 (ite c!95758 (regOne!2835 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230))))) (regTwo!2834 (ite c!95704 (regTwo!2835 (regTwo!2835 r!20230)) (ite c!95702 (reg!1490 (regTwo!2835 r!20230)) (regOne!2834 (regTwo!2835 r!20230)))))) c!12526))))

(assert (= (and d!180251 c!95755) b!478391))

(assert (= (and d!180251 (not c!95755)) b!478384))

(assert (= (and b!478384 c!95754) b!478385))

(assert (= (and b!478384 (not c!95754)) b!478390))

(assert (= (and b!478390 c!95758) b!478389))

(assert (= (and b!478390 (not c!95758)) b!478393))

(assert (= (and b!478393 c!95756) b!478386))

(assert (= (and b!478393 (not c!95756)) b!478392))

(assert (= (and b!478392 c!95757) b!478388))

(assert (= (and b!478392 (not c!95757)) b!478387))

(assert (= (or b!478388 b!478387) bm!33713))

(assert (= (or b!478386 bm!33713) bm!33712))

(assert (= (or b!478389 bm!33712) bm!33711))

(assert (= (or b!478389 b!478388) bm!33714))

(declare-fun m!748307 () Bool)

(assert (=> bm!33711 m!748307))

(declare-fun m!748309 () Bool)

(assert (=> d!180251 m!748309))

(declare-fun m!748311 () Bool)

(assert (=> d!180251 m!748311))

(declare-fun m!748313 () Bool)

(assert (=> b!478392 m!748313))

(declare-fun m!748315 () Bool)

(assert (=> bm!33714 m!748315))

(assert (=> bm!33649 d!180251))

(declare-fun b!478395 () Bool)

(declare-fun e!291800 () Bool)

(declare-fun tp!133846 () Bool)

(declare-fun tp!133842 () Bool)

(assert (=> b!478395 (= e!291800 (and tp!133846 tp!133842))))

(declare-fun b!478394 () Bool)

(assert (=> b!478394 (= e!291800 tp_is_empty!2319)))

(declare-fun b!478396 () Bool)

(declare-fun tp!133844 () Bool)

(assert (=> b!478396 (= e!291800 tp!133844)))

(declare-fun b!478397 () Bool)

(declare-fun tp!133845 () Bool)

(declare-fun tp!133843 () Bool)

(assert (=> b!478397 (= e!291800 (and tp!133845 tp!133843))))

(assert (=> b!478191 (= tp!133821 e!291800)))

(assert (= (and b!478191 ((_ is ElementMatch!1161) (regOne!2834 (reg!1490 r!20230)))) b!478394))

(assert (= (and b!478191 ((_ is Concat!2061) (regOne!2834 (reg!1490 r!20230)))) b!478395))

(assert (= (and b!478191 ((_ is Star!1161) (regOne!2834 (reg!1490 r!20230)))) b!478396))

(assert (= (and b!478191 ((_ is Union!1161) (regOne!2834 (reg!1490 r!20230)))) b!478397))

(declare-fun b!478399 () Bool)

(declare-fun e!291801 () Bool)

(declare-fun tp!133851 () Bool)

(declare-fun tp!133847 () Bool)

(assert (=> b!478399 (= e!291801 (and tp!133851 tp!133847))))

(declare-fun b!478398 () Bool)

(assert (=> b!478398 (= e!291801 tp_is_empty!2319)))

(declare-fun b!478400 () Bool)

(declare-fun tp!133849 () Bool)

(assert (=> b!478400 (= e!291801 tp!133849)))

(declare-fun b!478401 () Bool)

(declare-fun tp!133850 () Bool)

(declare-fun tp!133848 () Bool)

(assert (=> b!478401 (= e!291801 (and tp!133850 tp!133848))))

(assert (=> b!478191 (= tp!133812 e!291801)))

(assert (= (and b!478191 ((_ is ElementMatch!1161) (regTwo!2834 (reg!1490 r!20230)))) b!478398))

(assert (= (and b!478191 ((_ is Concat!2061) (regTwo!2834 (reg!1490 r!20230)))) b!478399))

(assert (= (and b!478191 ((_ is Star!1161) (regTwo!2834 (reg!1490 r!20230)))) b!478400))

(assert (= (and b!478191 ((_ is Union!1161) (regTwo!2834 (reg!1490 r!20230)))) b!478401))

(declare-fun b!478403 () Bool)

(declare-fun e!291802 () Bool)

(declare-fun tp!133856 () Bool)

(declare-fun tp!133852 () Bool)

(assert (=> b!478403 (= e!291802 (and tp!133856 tp!133852))))

(declare-fun b!478402 () Bool)

(assert (=> b!478402 (= e!291802 tp_is_empty!2319)))

(declare-fun b!478404 () Bool)

(declare-fun tp!133854 () Bool)

(assert (=> b!478404 (= e!291802 tp!133854)))

(declare-fun b!478405 () Bool)

(declare-fun tp!133855 () Bool)

(declare-fun tp!133853 () Bool)

(assert (=> b!478405 (= e!291802 (and tp!133855 tp!133853))))

(assert (=> b!478174 (= tp!133798 e!291802)))

(assert (= (and b!478174 ((_ is ElementMatch!1161) (regOne!2834 (regOne!2835 r!20230)))) b!478402))

(assert (= (and b!478174 ((_ is Concat!2061) (regOne!2834 (regOne!2835 r!20230)))) b!478403))

(assert (= (and b!478174 ((_ is Star!1161) (regOne!2834 (regOne!2835 r!20230)))) b!478404))

(assert (= (and b!478174 ((_ is Union!1161) (regOne!2834 (regOne!2835 r!20230)))) b!478405))

(declare-fun b!478407 () Bool)

(declare-fun e!291803 () Bool)

(declare-fun tp!133861 () Bool)

(declare-fun tp!133857 () Bool)

(assert (=> b!478407 (= e!291803 (and tp!133861 tp!133857))))

(declare-fun b!478406 () Bool)

(assert (=> b!478406 (= e!291803 tp_is_empty!2319)))

(declare-fun b!478408 () Bool)

(declare-fun tp!133859 () Bool)

(assert (=> b!478408 (= e!291803 tp!133859)))

(declare-fun b!478409 () Bool)

(declare-fun tp!133860 () Bool)

(declare-fun tp!133858 () Bool)

(assert (=> b!478409 (= e!291803 (and tp!133860 tp!133858))))

(assert (=> b!478174 (= tp!133792 e!291803)))

(assert (= (and b!478174 ((_ is ElementMatch!1161) (regTwo!2834 (regOne!2835 r!20230)))) b!478406))

(assert (= (and b!478174 ((_ is Concat!2061) (regTwo!2834 (regOne!2835 r!20230)))) b!478407))

(assert (= (and b!478174 ((_ is Star!1161) (regTwo!2834 (regOne!2835 r!20230)))) b!478408))

(assert (= (and b!478174 ((_ is Union!1161) (regTwo!2834 (regOne!2835 r!20230)))) b!478409))

(declare-fun b!478411 () Bool)

(declare-fun e!291804 () Bool)

(declare-fun tp!133866 () Bool)

(declare-fun tp!133862 () Bool)

(assert (=> b!478411 (= e!291804 (and tp!133866 tp!133862))))

(declare-fun b!478410 () Bool)

(assert (=> b!478410 (= e!291804 tp_is_empty!2319)))

(declare-fun b!478412 () Bool)

(declare-fun tp!133864 () Bool)

(assert (=> b!478412 (= e!291804 tp!133864)))

(declare-fun b!478413 () Bool)

(declare-fun tp!133865 () Bool)

(declare-fun tp!133863 () Bool)

(assert (=> b!478413 (= e!291804 (and tp!133865 tp!133863))))

(assert (=> b!478182 (= tp!133809 e!291804)))

(assert (= (and b!478182 ((_ is ElementMatch!1161) (regOne!2834 (regTwo!2835 r!20230)))) b!478410))

(assert (= (and b!478182 ((_ is Concat!2061) (regOne!2834 (regTwo!2835 r!20230)))) b!478411))

(assert (= (and b!478182 ((_ is Star!1161) (regOne!2834 (regTwo!2835 r!20230)))) b!478412))

(assert (= (and b!478182 ((_ is Union!1161) (regOne!2834 (regTwo!2835 r!20230)))) b!478413))

(declare-fun b!478415 () Bool)

(declare-fun e!291805 () Bool)

(declare-fun tp!133871 () Bool)

(declare-fun tp!133867 () Bool)

(assert (=> b!478415 (= e!291805 (and tp!133871 tp!133867))))

(declare-fun b!478414 () Bool)

(assert (=> b!478414 (= e!291805 tp_is_empty!2319)))

(declare-fun b!478416 () Bool)

(declare-fun tp!133869 () Bool)

(assert (=> b!478416 (= e!291805 tp!133869)))

(declare-fun b!478417 () Bool)

(declare-fun tp!133870 () Bool)

(declare-fun tp!133868 () Bool)

(assert (=> b!478417 (= e!291805 (and tp!133870 tp!133868))))

(assert (=> b!478182 (= tp!133802 e!291805)))

(assert (= (and b!478182 ((_ is ElementMatch!1161) (regTwo!2834 (regTwo!2835 r!20230)))) b!478414))

(assert (= (and b!478182 ((_ is Concat!2061) (regTwo!2834 (regTwo!2835 r!20230)))) b!478415))

(assert (= (and b!478182 ((_ is Star!1161) (regTwo!2834 (regTwo!2835 r!20230)))) b!478416))

(assert (= (and b!478182 ((_ is Union!1161) (regTwo!2834 (regTwo!2835 r!20230)))) b!478417))

(declare-fun b!478419 () Bool)

(declare-fun e!291806 () Bool)

(declare-fun tp!133876 () Bool)

(declare-fun tp!133872 () Bool)

(assert (=> b!478419 (= e!291806 (and tp!133876 tp!133872))))

(declare-fun b!478418 () Bool)

(assert (=> b!478418 (= e!291806 tp_is_empty!2319)))

(declare-fun b!478420 () Bool)

(declare-fun tp!133874 () Bool)

(assert (=> b!478420 (= e!291806 tp!133874)))

(declare-fun b!478421 () Bool)

(declare-fun tp!133875 () Bool)

(declare-fun tp!133873 () Bool)

(assert (=> b!478421 (= e!291806 (and tp!133875 tp!133873))))

(assert (=> b!478200 (= tp!133825 e!291806)))

(assert (= (and b!478200 ((_ is ElementMatch!1161) (regOne!2835 (regOne!2834 r!20230)))) b!478418))

(assert (= (and b!478200 ((_ is Concat!2061) (regOne!2835 (regOne!2834 r!20230)))) b!478419))

(assert (= (and b!478200 ((_ is Star!1161) (regOne!2835 (regOne!2834 r!20230)))) b!478420))

(assert (= (and b!478200 ((_ is Union!1161) (regOne!2835 (regOne!2834 r!20230)))) b!478421))

(declare-fun b!478423 () Bool)

(declare-fun e!291807 () Bool)

(declare-fun tp!133881 () Bool)

(declare-fun tp!133877 () Bool)

(assert (=> b!478423 (= e!291807 (and tp!133881 tp!133877))))

(declare-fun b!478422 () Bool)

(assert (=> b!478422 (= e!291807 tp_is_empty!2319)))

(declare-fun b!478424 () Bool)

(declare-fun tp!133879 () Bool)

(assert (=> b!478424 (= e!291807 tp!133879)))

(declare-fun b!478425 () Bool)

(declare-fun tp!133880 () Bool)

(declare-fun tp!133878 () Bool)

(assert (=> b!478425 (= e!291807 (and tp!133880 tp!133878))))

(assert (=> b!478200 (= tp!133823 e!291807)))

(assert (= (and b!478200 ((_ is ElementMatch!1161) (regTwo!2835 (regOne!2834 r!20230)))) b!478422))

(assert (= (and b!478200 ((_ is Concat!2061) (regTwo!2835 (regOne!2834 r!20230)))) b!478423))

(assert (= (and b!478200 ((_ is Star!1161) (regTwo!2835 (regOne!2834 r!20230)))) b!478424))

(assert (= (and b!478200 ((_ is Union!1161) (regTwo!2835 (regOne!2834 r!20230)))) b!478425))

(declare-fun b!478427 () Bool)

(declare-fun e!291808 () Bool)

(declare-fun tp!133886 () Bool)

(declare-fun tp!133882 () Bool)

(assert (=> b!478427 (= e!291808 (and tp!133886 tp!133882))))

(declare-fun b!478426 () Bool)

(assert (=> b!478426 (= e!291808 tp_is_empty!2319)))

(declare-fun b!478428 () Bool)

(declare-fun tp!133884 () Bool)

(assert (=> b!478428 (= e!291808 tp!133884)))

(declare-fun b!478429 () Bool)

(declare-fun tp!133885 () Bool)

(declare-fun tp!133883 () Bool)

(assert (=> b!478429 (= e!291808 (and tp!133885 tp!133883))))

(assert (=> b!478199 (= tp!133824 e!291808)))

(assert (= (and b!478199 ((_ is ElementMatch!1161) (reg!1490 (regOne!2834 r!20230)))) b!478426))

(assert (= (and b!478199 ((_ is Concat!2061) (reg!1490 (regOne!2834 r!20230)))) b!478427))

(assert (= (and b!478199 ((_ is Star!1161) (reg!1490 (regOne!2834 r!20230)))) b!478428))

(assert (= (and b!478199 ((_ is Union!1161) (reg!1490 (regOne!2834 r!20230)))) b!478429))

(declare-fun b!478431 () Bool)

(declare-fun e!291809 () Bool)

(declare-fun tp!133891 () Bool)

(declare-fun tp!133887 () Bool)

(assert (=> b!478431 (= e!291809 (and tp!133891 tp!133887))))

(declare-fun b!478430 () Bool)

(assert (=> b!478430 (= e!291809 tp_is_empty!2319)))

(declare-fun b!478432 () Bool)

(declare-fun tp!133889 () Bool)

(assert (=> b!478432 (= e!291809 tp!133889)))

(declare-fun b!478433 () Bool)

(declare-fun tp!133890 () Bool)

(declare-fun tp!133888 () Bool)

(assert (=> b!478433 (= e!291809 (and tp!133890 tp!133888))))

(assert (=> b!478208 (= tp!133835 e!291809)))

(assert (= (and b!478208 ((_ is ElementMatch!1161) (regOne!2835 (regTwo!2834 r!20230)))) b!478430))

(assert (= (and b!478208 ((_ is Concat!2061) (regOne!2835 (regTwo!2834 r!20230)))) b!478431))

(assert (= (and b!478208 ((_ is Star!1161) (regOne!2835 (regTwo!2834 r!20230)))) b!478432))

(assert (= (and b!478208 ((_ is Union!1161) (regOne!2835 (regTwo!2834 r!20230)))) b!478433))

(declare-fun b!478435 () Bool)

(declare-fun e!291810 () Bool)

(declare-fun tp!133896 () Bool)

(declare-fun tp!133892 () Bool)

(assert (=> b!478435 (= e!291810 (and tp!133896 tp!133892))))

(declare-fun b!478434 () Bool)

(assert (=> b!478434 (= e!291810 tp_is_empty!2319)))

(declare-fun b!478436 () Bool)

(declare-fun tp!133894 () Bool)

(assert (=> b!478436 (= e!291810 tp!133894)))

(declare-fun b!478437 () Bool)

(declare-fun tp!133895 () Bool)

(declare-fun tp!133893 () Bool)

(assert (=> b!478437 (= e!291810 (and tp!133895 tp!133893))))

(assert (=> b!478208 (= tp!133833 e!291810)))

(assert (= (and b!478208 ((_ is ElementMatch!1161) (regTwo!2835 (regTwo!2834 r!20230)))) b!478434))

(assert (= (and b!478208 ((_ is Concat!2061) (regTwo!2835 (regTwo!2834 r!20230)))) b!478435))

(assert (= (and b!478208 ((_ is Star!1161) (regTwo!2835 (regTwo!2834 r!20230)))) b!478436))

(assert (= (and b!478208 ((_ is Union!1161) (regTwo!2835 (regTwo!2834 r!20230)))) b!478437))

(declare-fun b!478439 () Bool)

(declare-fun e!291811 () Bool)

(declare-fun tp!133901 () Bool)

(declare-fun tp!133897 () Bool)

(assert (=> b!478439 (= e!291811 (and tp!133901 tp!133897))))

(declare-fun b!478438 () Bool)

(assert (=> b!478438 (= e!291811 tp_is_empty!2319)))

(declare-fun b!478440 () Bool)

(declare-fun tp!133899 () Bool)

(assert (=> b!478440 (= e!291811 tp!133899)))

(declare-fun b!478441 () Bool)

(declare-fun tp!133900 () Bool)

(declare-fun tp!133898 () Bool)

(assert (=> b!478441 (= e!291811 (and tp!133900 tp!133898))))

(assert (=> b!478198 (= tp!133826 e!291811)))

(assert (= (and b!478198 ((_ is ElementMatch!1161) (regOne!2834 (regOne!2834 r!20230)))) b!478438))

(assert (= (and b!478198 ((_ is Concat!2061) (regOne!2834 (regOne!2834 r!20230)))) b!478439))

(assert (= (and b!478198 ((_ is Star!1161) (regOne!2834 (regOne!2834 r!20230)))) b!478440))

(assert (= (and b!478198 ((_ is Union!1161) (regOne!2834 (regOne!2834 r!20230)))) b!478441))

(declare-fun b!478443 () Bool)

(declare-fun e!291812 () Bool)

(declare-fun tp!133906 () Bool)

(declare-fun tp!133902 () Bool)

(assert (=> b!478443 (= e!291812 (and tp!133906 tp!133902))))

(declare-fun b!478442 () Bool)

(assert (=> b!478442 (= e!291812 tp_is_empty!2319)))

(declare-fun b!478444 () Bool)

(declare-fun tp!133904 () Bool)

(assert (=> b!478444 (= e!291812 tp!133904)))

(declare-fun b!478445 () Bool)

(declare-fun tp!133905 () Bool)

(declare-fun tp!133903 () Bool)

(assert (=> b!478445 (= e!291812 (and tp!133905 tp!133903))))

(assert (=> b!478198 (= tp!133822 e!291812)))

(assert (= (and b!478198 ((_ is ElementMatch!1161) (regTwo!2834 (regOne!2834 r!20230)))) b!478442))

(assert (= (and b!478198 ((_ is Concat!2061) (regTwo!2834 (regOne!2834 r!20230)))) b!478443))

(assert (= (and b!478198 ((_ is Star!1161) (regTwo!2834 (regOne!2834 r!20230)))) b!478444))

(assert (= (and b!478198 ((_ is Union!1161) (regTwo!2834 (regOne!2834 r!20230)))) b!478445))

(declare-fun b!478447 () Bool)

(declare-fun e!291813 () Bool)

(declare-fun tp!133911 () Bool)

(declare-fun tp!133907 () Bool)

(assert (=> b!478447 (= e!291813 (and tp!133911 tp!133907))))

(declare-fun b!478446 () Bool)

(assert (=> b!478446 (= e!291813 tp_is_empty!2319)))

(declare-fun b!478448 () Bool)

(declare-fun tp!133909 () Bool)

(assert (=> b!478448 (= e!291813 tp!133909)))

(declare-fun b!478449 () Bool)

(declare-fun tp!133910 () Bool)

(declare-fun tp!133908 () Bool)

(assert (=> b!478449 (= e!291813 (and tp!133910 tp!133908))))

(assert (=> b!478207 (= tp!133834 e!291813)))

(assert (= (and b!478207 ((_ is ElementMatch!1161) (reg!1490 (regTwo!2834 r!20230)))) b!478446))

(assert (= (and b!478207 ((_ is Concat!2061) (reg!1490 (regTwo!2834 r!20230)))) b!478447))

(assert (= (and b!478207 ((_ is Star!1161) (reg!1490 (regTwo!2834 r!20230)))) b!478448))

(assert (= (and b!478207 ((_ is Union!1161) (reg!1490 (regTwo!2834 r!20230)))) b!478449))

(declare-fun b!478451 () Bool)

(declare-fun e!291814 () Bool)

(declare-fun tp!133916 () Bool)

(declare-fun tp!133912 () Bool)

(assert (=> b!478451 (= e!291814 (and tp!133916 tp!133912))))

(declare-fun b!478450 () Bool)

(assert (=> b!478450 (= e!291814 tp_is_empty!2319)))

(declare-fun b!478452 () Bool)

(declare-fun tp!133914 () Bool)

(assert (=> b!478452 (= e!291814 tp!133914)))

(declare-fun b!478453 () Bool)

(declare-fun tp!133915 () Bool)

(declare-fun tp!133913 () Bool)

(assert (=> b!478453 (= e!291814 (and tp!133915 tp!133913))))

(assert (=> b!478195 (= tp!133819 e!291814)))

(assert (= (and b!478195 ((_ is ElementMatch!1161) (regOne!2835 (reg!1490 r!20230)))) b!478450))

(assert (= (and b!478195 ((_ is Concat!2061) (regOne!2835 (reg!1490 r!20230)))) b!478451))

(assert (= (and b!478195 ((_ is Star!1161) (regOne!2835 (reg!1490 r!20230)))) b!478452))

(assert (= (and b!478195 ((_ is Union!1161) (regOne!2835 (reg!1490 r!20230)))) b!478453))

(declare-fun b!478455 () Bool)

(declare-fun e!291815 () Bool)

(declare-fun tp!133921 () Bool)

(declare-fun tp!133917 () Bool)

(assert (=> b!478455 (= e!291815 (and tp!133921 tp!133917))))

(declare-fun b!478454 () Bool)

(assert (=> b!478454 (= e!291815 tp_is_empty!2319)))

(declare-fun b!478456 () Bool)

(declare-fun tp!133919 () Bool)

(assert (=> b!478456 (= e!291815 tp!133919)))

(declare-fun b!478457 () Bool)

(declare-fun tp!133920 () Bool)

(declare-fun tp!133918 () Bool)

(assert (=> b!478457 (= e!291815 (and tp!133920 tp!133918))))

(assert (=> b!478195 (= tp!133814 e!291815)))

(assert (= (and b!478195 ((_ is ElementMatch!1161) (regTwo!2835 (reg!1490 r!20230)))) b!478454))

(assert (= (and b!478195 ((_ is Concat!2061) (regTwo!2835 (reg!1490 r!20230)))) b!478455))

(assert (= (and b!478195 ((_ is Star!1161) (regTwo!2835 (reg!1490 r!20230)))) b!478456))

(assert (= (and b!478195 ((_ is Union!1161) (regTwo!2835 (reg!1490 r!20230)))) b!478457))

(declare-fun b!478459 () Bool)

(declare-fun e!291816 () Bool)

(declare-fun tp!133926 () Bool)

(declare-fun tp!133922 () Bool)

(assert (=> b!478459 (= e!291816 (and tp!133926 tp!133922))))

(declare-fun b!478458 () Bool)

(assert (=> b!478458 (= e!291816 tp_is_empty!2319)))

(declare-fun b!478460 () Bool)

(declare-fun tp!133924 () Bool)

(assert (=> b!478460 (= e!291816 tp!133924)))

(declare-fun b!478461 () Bool)

(declare-fun tp!133925 () Bool)

(declare-fun tp!133923 () Bool)

(assert (=> b!478461 (= e!291816 (and tp!133925 tp!133923))))

(assert (=> b!478176 (= tp!133796 e!291816)))

(assert (= (and b!478176 ((_ is ElementMatch!1161) (regOne!2835 (regOne!2835 r!20230)))) b!478458))

(assert (= (and b!478176 ((_ is Concat!2061) (regOne!2835 (regOne!2835 r!20230)))) b!478459))

(assert (= (and b!478176 ((_ is Star!1161) (regOne!2835 (regOne!2835 r!20230)))) b!478460))

(assert (= (and b!478176 ((_ is Union!1161) (regOne!2835 (regOne!2835 r!20230)))) b!478461))

(declare-fun b!478463 () Bool)

(declare-fun e!291817 () Bool)

(declare-fun tp!133931 () Bool)

(declare-fun tp!133927 () Bool)

(assert (=> b!478463 (= e!291817 (and tp!133931 tp!133927))))

(declare-fun b!478462 () Bool)

(assert (=> b!478462 (= e!291817 tp_is_empty!2319)))

(declare-fun b!478464 () Bool)

(declare-fun tp!133929 () Bool)

(assert (=> b!478464 (= e!291817 tp!133929)))

(declare-fun b!478465 () Bool)

(declare-fun tp!133930 () Bool)

(declare-fun tp!133928 () Bool)

(assert (=> b!478465 (= e!291817 (and tp!133930 tp!133928))))

(assert (=> b!478176 (= tp!133793 e!291817)))

(assert (= (and b!478176 ((_ is ElementMatch!1161) (regTwo!2835 (regOne!2835 r!20230)))) b!478462))

(assert (= (and b!478176 ((_ is Concat!2061) (regTwo!2835 (regOne!2835 r!20230)))) b!478463))

(assert (= (and b!478176 ((_ is Star!1161) (regTwo!2835 (regOne!2835 r!20230)))) b!478464))

(assert (= (and b!478176 ((_ is Union!1161) (regTwo!2835 (regOne!2835 r!20230)))) b!478465))

(declare-fun b!478467 () Bool)

(declare-fun e!291818 () Bool)

(declare-fun tp!133936 () Bool)

(declare-fun tp!133932 () Bool)

(assert (=> b!478467 (= e!291818 (and tp!133936 tp!133932))))

(declare-fun b!478466 () Bool)

(assert (=> b!478466 (= e!291818 tp_is_empty!2319)))

(declare-fun b!478468 () Bool)

(declare-fun tp!133934 () Bool)

(assert (=> b!478468 (= e!291818 tp!133934)))

(declare-fun b!478469 () Bool)

(declare-fun tp!133935 () Bool)

(declare-fun tp!133933 () Bool)

(assert (=> b!478469 (= e!291818 (and tp!133935 tp!133933))))

(assert (=> b!478185 (= tp!133807 e!291818)))

(assert (= (and b!478185 ((_ is ElementMatch!1161) (regOne!2835 (regTwo!2835 r!20230)))) b!478466))

(assert (= (and b!478185 ((_ is Concat!2061) (regOne!2835 (regTwo!2835 r!20230)))) b!478467))

(assert (= (and b!478185 ((_ is Star!1161) (regOne!2835 (regTwo!2835 r!20230)))) b!478468))

(assert (= (and b!478185 ((_ is Union!1161) (regOne!2835 (regTwo!2835 r!20230)))) b!478469))

(declare-fun b!478471 () Bool)

(declare-fun e!291819 () Bool)

(declare-fun tp!133941 () Bool)

(declare-fun tp!133937 () Bool)

(assert (=> b!478471 (= e!291819 (and tp!133941 tp!133937))))

(declare-fun b!478470 () Bool)

(assert (=> b!478470 (= e!291819 tp_is_empty!2319)))

(declare-fun b!478472 () Bool)

(declare-fun tp!133939 () Bool)

(assert (=> b!478472 (= e!291819 tp!133939)))

(declare-fun b!478473 () Bool)

(declare-fun tp!133940 () Bool)

(declare-fun tp!133938 () Bool)

(assert (=> b!478473 (= e!291819 (and tp!133940 tp!133938))))

(assert (=> b!478185 (= tp!133803 e!291819)))

(assert (= (and b!478185 ((_ is ElementMatch!1161) (regTwo!2835 (regTwo!2835 r!20230)))) b!478470))

(assert (= (and b!478185 ((_ is Concat!2061) (regTwo!2835 (regTwo!2835 r!20230)))) b!478471))

(assert (= (and b!478185 ((_ is Star!1161) (regTwo!2835 (regTwo!2835 r!20230)))) b!478472))

(assert (= (and b!478185 ((_ is Union!1161) (regTwo!2835 (regTwo!2835 r!20230)))) b!478473))

(declare-fun b!478475 () Bool)

(declare-fun e!291820 () Bool)

(declare-fun tp!133946 () Bool)

(declare-fun tp!133942 () Bool)

(assert (=> b!478475 (= e!291820 (and tp!133946 tp!133942))))

(declare-fun b!478474 () Bool)

(assert (=> b!478474 (= e!291820 tp_is_empty!2319)))

(declare-fun b!478476 () Bool)

(declare-fun tp!133944 () Bool)

(assert (=> b!478476 (= e!291820 tp!133944)))

(declare-fun b!478477 () Bool)

(declare-fun tp!133945 () Bool)

(declare-fun tp!133943 () Bool)

(assert (=> b!478477 (= e!291820 (and tp!133945 tp!133943))))

(assert (=> b!478206 (= tp!133836 e!291820)))

(assert (= (and b!478206 ((_ is ElementMatch!1161) (regOne!2834 (regTwo!2834 r!20230)))) b!478474))

(assert (= (and b!478206 ((_ is Concat!2061) (regOne!2834 (regTwo!2834 r!20230)))) b!478475))

(assert (= (and b!478206 ((_ is Star!1161) (regOne!2834 (regTwo!2834 r!20230)))) b!478476))

(assert (= (and b!478206 ((_ is Union!1161) (regOne!2834 (regTwo!2834 r!20230)))) b!478477))

(declare-fun b!478479 () Bool)

(declare-fun e!291821 () Bool)

(declare-fun tp!133951 () Bool)

(declare-fun tp!133947 () Bool)

(assert (=> b!478479 (= e!291821 (and tp!133951 tp!133947))))

(declare-fun b!478478 () Bool)

(assert (=> b!478478 (= e!291821 tp_is_empty!2319)))

(declare-fun b!478480 () Bool)

(declare-fun tp!133949 () Bool)

(assert (=> b!478480 (= e!291821 tp!133949)))

(declare-fun b!478481 () Bool)

(declare-fun tp!133950 () Bool)

(declare-fun tp!133948 () Bool)

(assert (=> b!478481 (= e!291821 (and tp!133950 tp!133948))))

(assert (=> b!478206 (= tp!133832 e!291821)))

(assert (= (and b!478206 ((_ is ElementMatch!1161) (regTwo!2834 (regTwo!2834 r!20230)))) b!478478))

(assert (= (and b!478206 ((_ is Concat!2061) (regTwo!2834 (regTwo!2834 r!20230)))) b!478479))

(assert (= (and b!478206 ((_ is Star!1161) (regTwo!2834 (regTwo!2834 r!20230)))) b!478480))

(assert (= (and b!478206 ((_ is Union!1161) (regTwo!2834 (regTwo!2834 r!20230)))) b!478481))

(declare-fun b!478483 () Bool)

(declare-fun e!291822 () Bool)

(declare-fun tp!133956 () Bool)

(declare-fun tp!133952 () Bool)

(assert (=> b!478483 (= e!291822 (and tp!133956 tp!133952))))

(declare-fun b!478482 () Bool)

(assert (=> b!478482 (= e!291822 tp_is_empty!2319)))

(declare-fun b!478484 () Bool)

(declare-fun tp!133954 () Bool)

(assert (=> b!478484 (= e!291822 tp!133954)))

(declare-fun b!478485 () Bool)

(declare-fun tp!133955 () Bool)

(declare-fun tp!133953 () Bool)

(assert (=> b!478485 (= e!291822 (and tp!133955 tp!133953))))

(assert (=> b!478193 (= tp!133817 e!291822)))

(assert (= (and b!478193 ((_ is ElementMatch!1161) (reg!1490 (reg!1490 r!20230)))) b!478482))

(assert (= (and b!478193 ((_ is Concat!2061) (reg!1490 (reg!1490 r!20230)))) b!478483))

(assert (= (and b!478193 ((_ is Star!1161) (reg!1490 (reg!1490 r!20230)))) b!478484))

(assert (= (and b!478193 ((_ is Union!1161) (reg!1490 (reg!1490 r!20230)))) b!478485))

(declare-fun b!478487 () Bool)

(declare-fun e!291823 () Bool)

(declare-fun tp!133961 () Bool)

(declare-fun tp!133957 () Bool)

(assert (=> b!478487 (= e!291823 (and tp!133961 tp!133957))))

(declare-fun b!478486 () Bool)

(assert (=> b!478486 (= e!291823 tp_is_empty!2319)))

(declare-fun b!478488 () Bool)

(declare-fun tp!133959 () Bool)

(assert (=> b!478488 (= e!291823 tp!133959)))

(declare-fun b!478489 () Bool)

(declare-fun tp!133960 () Bool)

(declare-fun tp!133958 () Bool)

(assert (=> b!478489 (= e!291823 (and tp!133960 tp!133958))))

(assert (=> b!478175 (= tp!133794 e!291823)))

(assert (= (and b!478175 ((_ is ElementMatch!1161) (reg!1490 (regOne!2835 r!20230)))) b!478486))

(assert (= (and b!478175 ((_ is Concat!2061) (reg!1490 (regOne!2835 r!20230)))) b!478487))

(assert (= (and b!478175 ((_ is Star!1161) (reg!1490 (regOne!2835 r!20230)))) b!478488))

(assert (= (and b!478175 ((_ is Union!1161) (reg!1490 (regOne!2835 r!20230)))) b!478489))

(declare-fun b!478491 () Bool)

(declare-fun e!291824 () Bool)

(declare-fun tp!133966 () Bool)

(declare-fun tp!133962 () Bool)

(assert (=> b!478491 (= e!291824 (and tp!133966 tp!133962))))

(declare-fun b!478490 () Bool)

(assert (=> b!478490 (= e!291824 tp_is_empty!2319)))

(declare-fun b!478492 () Bool)

(declare-fun tp!133964 () Bool)

(assert (=> b!478492 (= e!291824 tp!133964)))

(declare-fun b!478493 () Bool)

(declare-fun tp!133965 () Bool)

(declare-fun tp!133963 () Bool)

(assert (=> b!478493 (= e!291824 (and tp!133965 tp!133963))))

(assert (=> b!478183 (= tp!133805 e!291824)))

(assert (= (and b!478183 ((_ is ElementMatch!1161) (reg!1490 (regTwo!2835 r!20230)))) b!478490))

(assert (= (and b!478183 ((_ is Concat!2061) (reg!1490 (regTwo!2835 r!20230)))) b!478491))

(assert (= (and b!478183 ((_ is Star!1161) (reg!1490 (regTwo!2835 r!20230)))) b!478492))

(assert (= (and b!478183 ((_ is Union!1161) (reg!1490 (regTwo!2835 r!20230)))) b!478493))

(check-sat (not bm!33710) (not b!478425) (not b!478487) (not bm!33709) (not bm!33687) (not bm!33657) (not b!478456) (not b!478489) (not bm!33681) (not b!478401) (not b!478448) (not b!478488) (not b!478447) (not bm!33706) (not bm!33678) (not b!478231) (not b!478408) (not b!478423) (not b!478481) (not d!180215) (not d!180223) (not d!180243) (not b!478468) (not b!478476) (not bm!33708) (not bm!33700) (not b!478493) (not b!478407) (not b!478449) (not d!180203) (not bm!33692) (not b!478473) (not b!478484) (not d!180213) (not b!478479) (not b!478457) (not b!478415) (not b!478464) (not b!478409) (not bm!33654) (not b!478333) (not b!478427) (not b!478471) (not bm!33691) (not b!478412) (not b!478411) (not b!478424) (not b!478308) (not b!478467) (not bm!33695) (not bm!33697) (not b!478436) (not d!180227) (not b!478352) (not b!478469) (not b!478441) (not b!478439) (not b!478455) (not b!478420) (not d!180237) (not b!478443) (not b!478477) (not bm!33690) (not bm!33705) (not d!180249) (not b!478480) (not b!478286) (not b!478296) (not bm!33666) (not bm!33693) (not bm!33714) (not b!478416) (not d!180201) (not b!478419) (not b!478483) (not b!478317) (not b!478395) (not d!180247) (not bm!33711) (not b!478421) (not bm!33674) (not d!180239) (not d!180211) (not b!478459) (not d!180219) (not b!478269) (not b!478350) (not b!478465) (not b!478404) (not bm!33671) (not b!478431) (not b!478461) (not b!478460) (not bm!33661) (not b!478403) (not b!478463) (not bm!33682) (not bm!33655) tp_is_empty!2319 (not b!478491) (not bm!33672) (not b!478399) (not d!180221) (not d!180251) (not bm!33707) (not d!180233) (not bm!33703) (not b!478413) (not b!478428) (not b!478306) (not b!478445) (not b!478213) (not bm!33660) (not b!478397) (not d!180225) (not b!478472) (not b!478429) (not b!478417) (not b!478440) (not b!478433) (not b!478392) (not b!478444) (not bm!33673) (not b!478475) (not bm!33688) (not bm!33685) (not b!478400) (not bm!33702) (not b!478396) (not b!478361) (not b!478492) (not b!478451) (not b!478453) (not bm!33677) (not b!478437) (not b!478222) (not bm!33667) (not b!478405) (not bm!33696) (not b!478432) (not bm!33658) (not b!478435) (not b!478452) (not bm!33668) (not d!180217) (not b!478485))
(check-sat)
