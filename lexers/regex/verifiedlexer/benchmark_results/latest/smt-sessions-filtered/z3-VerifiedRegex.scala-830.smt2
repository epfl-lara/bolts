; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45648 () Bool)

(assert start!45648)

(declare-fun b!476927 () Bool)

(declare-fun res!211177 () Bool)

(declare-fun e!291021 () Bool)

(assert (=> b!476927 (=> (not res!211177) (not e!291021))))

(declare-datatypes ((C!3236 0))(
  ( (C!3237 (val!1604 Int)) )
))
(declare-datatypes ((Regex!1157 0))(
  ( (ElementMatch!1157 (c!95424 C!3236)) (Concat!2057 (regOne!2826 Regex!1157) (regTwo!2826 Regex!1157)) (EmptyExpr!1157) (Star!1157 (reg!1486 Regex!1157)) (EmptyLang!1157) (Union!1157 (regOne!2827 Regex!1157) (regTwo!2827 Regex!1157)) )
))
(declare-fun r!20230 () Regex!1157)

(declare-fun lostCause!151 (Regex!1157) Bool)

(assert (=> b!476927 (= res!211177 (lostCause!151 r!20230))))

(declare-fun res!211179 () Bool)

(assert (=> start!45648 (=> (not res!211179) (not e!291021))))

(declare-fun validRegex!385 (Regex!1157) Bool)

(assert (=> start!45648 (= res!211179 (validRegex!385 r!20230))))

(assert (=> start!45648 e!291021))

(declare-fun e!291020 () Bool)

(assert (=> start!45648 e!291020))

(declare-fun tp_is_empty!2311 () Bool)

(assert (=> start!45648 tp_is_empty!2311))

(declare-fun b!476928 () Bool)

(assert (=> b!476928 (= e!291020 tp_is_empty!2311)))

(declare-fun b!476929 () Bool)

(declare-fun e!291019 () Bool)

(assert (=> b!476929 (= e!291021 (not e!291019))))

(declare-fun res!211176 () Bool)

(assert (=> b!476929 (=> res!211176 e!291019)))

(assert (=> b!476929 (= res!211176 (not (validRegex!385 (regTwo!2827 r!20230))))))

(declare-fun c!12526 () C!3236)

(declare-fun derivativeStep!243 (Regex!1157 C!3236) Regex!1157)

(assert (=> b!476929 (lostCause!151 (derivativeStep!243 (regOne!2827 r!20230) c!12526))))

(declare-datatypes ((Unit!8356 0))(
  ( (Unit!8357) )
))
(declare-fun lt!210768 () Unit!8356)

(declare-fun lemmaDerivativeStepFixPointLostCause!14 (Regex!1157 C!3236) Unit!8356)

(assert (=> b!476929 (= lt!210768 (lemmaDerivativeStepFixPointLostCause!14 (regOne!2827 r!20230) c!12526))))

(declare-fun b!476930 () Bool)

(declare-fun res!211178 () Bool)

(assert (=> b!476930 (=> (not res!211178) (not e!291021))))

(get-info :version)

(assert (=> b!476930 (= res!211178 (and (not ((_ is EmptyLang!1157) r!20230)) (not ((_ is EmptyExpr!1157) r!20230)) (not ((_ is ElementMatch!1157) r!20230)) ((_ is Union!1157) r!20230)))))

(declare-fun b!476931 () Bool)

(declare-fun tp!133319 () Bool)

(declare-fun tp!133320 () Bool)

(assert (=> b!476931 (= e!291020 (and tp!133319 tp!133320))))

(declare-fun b!476932 () Bool)

(declare-fun tp!133317 () Bool)

(assert (=> b!476932 (= e!291020 tp!133317)))

(declare-fun b!476933 () Bool)

(declare-fun tp!133318 () Bool)

(declare-fun tp!133321 () Bool)

(assert (=> b!476933 (= e!291020 (and tp!133318 tp!133321))))

(declare-fun b!476934 () Bool)

(assert (=> b!476934 (= e!291019 (lostCause!151 (regTwo!2827 r!20230)))))

(assert (= (and start!45648 res!211179) b!476927))

(assert (= (and b!476927 res!211177) b!476930))

(assert (= (and b!476930 res!211178) b!476929))

(assert (= (and b!476929 (not res!211176)) b!476934))

(assert (= (and start!45648 ((_ is ElementMatch!1157) r!20230)) b!476928))

(assert (= (and start!45648 ((_ is Concat!2057) r!20230)) b!476931))

(assert (= (and start!45648 ((_ is Star!1157) r!20230)) b!476932))

(assert (= (and start!45648 ((_ is Union!1157) r!20230)) b!476933))

(declare-fun m!747625 () Bool)

(assert (=> b!476927 m!747625))

(declare-fun m!747627 () Bool)

(assert (=> start!45648 m!747627))

(declare-fun m!747629 () Bool)

(assert (=> b!476929 m!747629))

(declare-fun m!747631 () Bool)

(assert (=> b!476929 m!747631))

(assert (=> b!476929 m!747631))

(declare-fun m!747633 () Bool)

(assert (=> b!476929 m!747633))

(declare-fun m!747635 () Bool)

(assert (=> b!476929 m!747635))

(declare-fun m!747637 () Bool)

(assert (=> b!476934 m!747637))

(check-sat (not b!476927) (not b!476932) (not start!45648) (not b!476934) (not b!476929) tp_is_empty!2311 (not b!476933) (not b!476931))
(check-sat)
(get-model)

(declare-fun b!477000 () Bool)

(declare-fun res!211206 () Bool)

(declare-fun e!291070 () Bool)

(assert (=> b!477000 (=> (not res!211206) (not e!291070))))

(declare-fun call!33394 () Bool)

(assert (=> b!477000 (= res!211206 call!33394)))

(declare-fun e!291069 () Bool)

(assert (=> b!477000 (= e!291069 e!291070)))

(declare-fun bm!33388 () Bool)

(declare-fun c!95446 () Bool)

(declare-fun c!95445 () Bool)

(declare-fun call!33393 () Bool)

(assert (=> bm!33388 (= call!33393 (validRegex!385 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))))))

(declare-fun d!180029 () Bool)

(declare-fun res!211205 () Bool)

(declare-fun e!291073 () Bool)

(assert (=> d!180029 (=> res!211205 e!291073)))

(assert (=> d!180029 (= res!211205 ((_ is ElementMatch!1157) r!20230))))

(assert (=> d!180029 (= (validRegex!385 r!20230) e!291073)))

(declare-fun b!477001 () Bool)

(declare-fun e!291067 () Bool)

(declare-fun e!291068 () Bool)

(assert (=> b!477001 (= e!291067 e!291068)))

(declare-fun res!211207 () Bool)

(declare-fun nullable!292 (Regex!1157) Bool)

(assert (=> b!477001 (= res!211207 (not (nullable!292 (reg!1486 r!20230))))))

(assert (=> b!477001 (=> (not res!211207) (not e!291068))))

(declare-fun b!477002 () Bool)

(assert (=> b!477002 (= e!291073 e!291067)))

(assert (=> b!477002 (= c!95445 ((_ is Star!1157) r!20230))))

(declare-fun b!477003 () Bool)

(declare-fun e!291072 () Bool)

(assert (=> b!477003 (= e!291072 call!33394)))

(declare-fun b!477004 () Bool)

(declare-fun res!211209 () Bool)

(declare-fun e!291071 () Bool)

(assert (=> b!477004 (=> res!211209 e!291071)))

(assert (=> b!477004 (= res!211209 (not ((_ is Concat!2057) r!20230)))))

(assert (=> b!477004 (= e!291069 e!291071)))

(declare-fun b!477005 () Bool)

(declare-fun call!33395 () Bool)

(assert (=> b!477005 (= e!291070 call!33395)))

(declare-fun b!477006 () Bool)

(assert (=> b!477006 (= e!291067 e!291069)))

(assert (=> b!477006 (= c!95446 ((_ is Union!1157) r!20230))))

(declare-fun b!477007 () Bool)

(assert (=> b!477007 (= e!291068 call!33393)))

(declare-fun bm!33389 () Bool)

(assert (=> bm!33389 (= call!33395 call!33393)))

(declare-fun b!477008 () Bool)

(assert (=> b!477008 (= e!291071 e!291072)))

(declare-fun res!211208 () Bool)

(assert (=> b!477008 (=> (not res!211208) (not e!291072))))

(assert (=> b!477008 (= res!211208 call!33395)))

(declare-fun bm!33390 () Bool)

(assert (=> bm!33390 (= call!33394 (validRegex!385 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))))))

(assert (= (and d!180029 (not res!211205)) b!477002))

(assert (= (and b!477002 c!95445) b!477001))

(assert (= (and b!477002 (not c!95445)) b!477006))

(assert (= (and b!477001 res!211207) b!477007))

(assert (= (and b!477006 c!95446) b!477000))

(assert (= (and b!477006 (not c!95446)) b!477004))

(assert (= (and b!477000 res!211206) b!477005))

(assert (= (and b!477004 (not res!211209)) b!477008))

(assert (= (and b!477008 res!211208) b!477003))

(assert (= (or b!477005 b!477008) bm!33389))

(assert (= (or b!477000 b!477003) bm!33390))

(assert (= (or b!477007 bm!33389) bm!33388))

(declare-fun m!747647 () Bool)

(assert (=> bm!33388 m!747647))

(declare-fun m!747649 () Bool)

(assert (=> b!477001 m!747649))

(declare-fun m!747651 () Bool)

(assert (=> bm!33390 m!747651))

(assert (=> start!45648 d!180029))

(declare-fun d!180035 () Bool)

(declare-fun lostCauseFct!61 (Regex!1157) Bool)

(assert (=> d!180035 (= (lostCause!151 r!20230) (lostCauseFct!61 r!20230))))

(declare-fun bs!58729 () Bool)

(assert (= bs!58729 d!180035))

(declare-fun m!747663 () Bool)

(assert (=> bs!58729 m!747663))

(assert (=> b!476927 d!180035))

(declare-fun b!477019 () Bool)

(declare-fun res!211211 () Bool)

(declare-fun e!291082 () Bool)

(assert (=> b!477019 (=> (not res!211211) (not e!291082))))

(declare-fun call!33401 () Bool)

(assert (=> b!477019 (= res!211211 call!33401)))

(declare-fun e!291081 () Bool)

(assert (=> b!477019 (= e!291081 e!291082)))

(declare-fun c!95453 () Bool)

(declare-fun c!95452 () Bool)

(declare-fun bm!33395 () Bool)

(declare-fun call!33400 () Bool)

(assert (=> bm!33395 (= call!33400 (validRegex!385 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))))))

(declare-fun d!180039 () Bool)

(declare-fun res!211210 () Bool)

(declare-fun e!291085 () Bool)

(assert (=> d!180039 (=> res!211210 e!291085)))

(assert (=> d!180039 (= res!211210 ((_ is ElementMatch!1157) (regTwo!2827 r!20230)))))

(assert (=> d!180039 (= (validRegex!385 (regTwo!2827 r!20230)) e!291085)))

(declare-fun b!477020 () Bool)

(declare-fun e!291079 () Bool)

(declare-fun e!291080 () Bool)

(assert (=> b!477020 (= e!291079 e!291080)))

(declare-fun res!211212 () Bool)

(assert (=> b!477020 (= res!211212 (not (nullable!292 (reg!1486 (regTwo!2827 r!20230)))))))

(assert (=> b!477020 (=> (not res!211212) (not e!291080))))

(declare-fun b!477021 () Bool)

(assert (=> b!477021 (= e!291085 e!291079)))

(assert (=> b!477021 (= c!95452 ((_ is Star!1157) (regTwo!2827 r!20230)))))

(declare-fun b!477022 () Bool)

(declare-fun e!291084 () Bool)

(assert (=> b!477022 (= e!291084 call!33401)))

(declare-fun b!477023 () Bool)

(declare-fun res!211214 () Bool)

(declare-fun e!291083 () Bool)

(assert (=> b!477023 (=> res!211214 e!291083)))

(assert (=> b!477023 (= res!211214 (not ((_ is Concat!2057) (regTwo!2827 r!20230))))))

(assert (=> b!477023 (= e!291081 e!291083)))

(declare-fun b!477024 () Bool)

(declare-fun call!33402 () Bool)

(assert (=> b!477024 (= e!291082 call!33402)))

(declare-fun b!477025 () Bool)

(assert (=> b!477025 (= e!291079 e!291081)))

(assert (=> b!477025 (= c!95453 ((_ is Union!1157) (regTwo!2827 r!20230)))))

(declare-fun b!477026 () Bool)

(assert (=> b!477026 (= e!291080 call!33400)))

(declare-fun bm!33396 () Bool)

(assert (=> bm!33396 (= call!33402 call!33400)))

(declare-fun b!477027 () Bool)

(assert (=> b!477027 (= e!291083 e!291084)))

(declare-fun res!211213 () Bool)

(assert (=> b!477027 (=> (not res!211213) (not e!291084))))

(assert (=> b!477027 (= res!211213 call!33402)))

(declare-fun bm!33397 () Bool)

(assert (=> bm!33397 (= call!33401 (validRegex!385 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))

(assert (= (and d!180039 (not res!211210)) b!477021))

(assert (= (and b!477021 c!95452) b!477020))

(assert (= (and b!477021 (not c!95452)) b!477025))

(assert (= (and b!477020 res!211212) b!477026))

(assert (= (and b!477025 c!95453) b!477019))

(assert (= (and b!477025 (not c!95453)) b!477023))

(assert (= (and b!477019 res!211211) b!477024))

(assert (= (and b!477023 (not res!211214)) b!477027))

(assert (= (and b!477027 res!211213) b!477022))

(assert (= (or b!477024 b!477027) bm!33396))

(assert (= (or b!477019 b!477022) bm!33397))

(assert (= (or b!477026 bm!33396) bm!33395))

(declare-fun m!747665 () Bool)

(assert (=> bm!33395 m!747665))

(declare-fun m!747667 () Bool)

(assert (=> b!477020 m!747667))

(declare-fun m!747669 () Bool)

(assert (=> bm!33397 m!747669))

(assert (=> b!476929 d!180039))

(declare-fun d!180041 () Bool)

(assert (=> d!180041 (= (lostCause!151 (derivativeStep!243 (regOne!2827 r!20230) c!12526)) (lostCauseFct!61 (derivativeStep!243 (regOne!2827 r!20230) c!12526)))))

(declare-fun bs!58730 () Bool)

(assert (= bs!58730 d!180041))

(assert (=> bs!58730 m!747631))

(declare-fun m!747671 () Bool)

(assert (=> bs!58730 m!747671))

(assert (=> b!476929 d!180041))

(declare-fun bm!33409 () Bool)

(declare-fun call!33414 () Regex!1157)

(declare-fun call!33417 () Regex!1157)

(assert (=> bm!33409 (= call!33414 call!33417)))

(declare-fun b!477087 () Bool)

(declare-fun e!291113 () Regex!1157)

(assert (=> b!477087 (= e!291113 (Union!1157 (Concat!2057 call!33414 (regTwo!2826 (regOne!2827 r!20230))) EmptyLang!1157))))

(declare-fun b!477088 () Bool)

(declare-fun e!291110 () Regex!1157)

(assert (=> b!477088 (= e!291110 (ite (= c!12526 (c!95424 (regOne!2827 r!20230))) EmptyExpr!1157 EmptyLang!1157))))

(declare-fun call!33416 () Regex!1157)

(declare-fun c!95467 () Bool)

(declare-fun bm!33410 () Bool)

(assert (=> bm!33410 (= call!33416 (derivativeStep!243 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))) c!12526))))

(declare-fun b!477089 () Bool)

(declare-fun c!95469 () Bool)

(assert (=> b!477089 (= c!95469 (nullable!292 (regOne!2826 (regOne!2827 r!20230))))))

(declare-fun e!291112 () Regex!1157)

(assert (=> b!477089 (= e!291112 e!291113)))

(declare-fun b!477090 () Bool)

(declare-fun e!291114 () Regex!1157)

(assert (=> b!477090 (= e!291114 EmptyLang!1157)))

(declare-fun b!477091 () Bool)

(assert (=> b!477091 (= e!291112 (Concat!2057 call!33417 (regOne!2827 r!20230)))))

(declare-fun b!477092 () Bool)

(assert (=> b!477092 (= c!95467 ((_ is Union!1157) (regOne!2827 r!20230)))))

(declare-fun e!291111 () Regex!1157)

(assert (=> b!477092 (= e!291110 e!291111)))

(declare-fun b!477093 () Bool)

(assert (=> b!477093 (= e!291111 e!291112)))

(declare-fun c!95468 () Bool)

(assert (=> b!477093 (= c!95468 ((_ is Star!1157) (regOne!2827 r!20230)))))

(declare-fun bm!33412 () Bool)

(declare-fun call!33415 () Regex!1157)

(assert (=> bm!33412 (= call!33417 call!33415)))

(declare-fun b!477094 () Bool)

(assert (=> b!477094 (= e!291111 (Union!1157 call!33415 call!33416))))

(declare-fun b!477095 () Bool)

(assert (=> b!477095 (= e!291114 e!291110)))

(declare-fun c!95471 () Bool)

(assert (=> b!477095 (= c!95471 ((_ is ElementMatch!1157) (regOne!2827 r!20230)))))

(declare-fun b!477096 () Bool)

(assert (=> b!477096 (= e!291113 (Union!1157 (Concat!2057 call!33414 (regTwo!2826 (regOne!2827 r!20230))) call!33416))))

(declare-fun d!180043 () Bool)

(declare-fun lt!210777 () Regex!1157)

(assert (=> d!180043 (validRegex!385 lt!210777)))

(assert (=> d!180043 (= lt!210777 e!291114)))

(declare-fun c!95470 () Bool)

(assert (=> d!180043 (= c!95470 (or ((_ is EmptyExpr!1157) (regOne!2827 r!20230)) ((_ is EmptyLang!1157) (regOne!2827 r!20230))))))

(assert (=> d!180043 (validRegex!385 (regOne!2827 r!20230))))

(assert (=> d!180043 (= (derivativeStep!243 (regOne!2827 r!20230) c!12526) lt!210777)))

(declare-fun bm!33411 () Bool)

(assert (=> bm!33411 (= call!33415 (derivativeStep!243 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))) c!12526))))

(assert (= (and d!180043 c!95470) b!477090))

(assert (= (and d!180043 (not c!95470)) b!477095))

(assert (= (and b!477095 c!95471) b!477088))

(assert (= (and b!477095 (not c!95471)) b!477092))

(assert (= (and b!477092 c!95467) b!477094))

(assert (= (and b!477092 (not c!95467)) b!477093))

(assert (= (and b!477093 c!95468) b!477091))

(assert (= (and b!477093 (not c!95468)) b!477089))

(assert (= (and b!477089 c!95469) b!477096))

(assert (= (and b!477089 (not c!95469)) b!477087))

(assert (= (or b!477096 b!477087) bm!33409))

(assert (= (or b!477091 bm!33409) bm!33412))

(assert (= (or b!477094 b!477096) bm!33410))

(assert (= (or b!477094 bm!33412) bm!33411))

(declare-fun m!747685 () Bool)

(assert (=> bm!33410 m!747685))

(declare-fun m!747687 () Bool)

(assert (=> b!477089 m!747687))

(declare-fun m!747689 () Bool)

(assert (=> d!180043 m!747689))

(declare-fun m!747691 () Bool)

(assert (=> d!180043 m!747691))

(declare-fun m!747693 () Bool)

(assert (=> bm!33411 m!747693))

(assert (=> b!476929 d!180043))

(declare-fun d!180051 () Bool)

(assert (=> d!180051 (lostCause!151 (derivativeStep!243 (regOne!2827 r!20230) c!12526))))

(declare-fun lt!210780 () Unit!8356)

(declare-fun choose!3626 (Regex!1157 C!3236) Unit!8356)

(assert (=> d!180051 (= lt!210780 (choose!3626 (regOne!2827 r!20230) c!12526))))

(assert (=> d!180051 (validRegex!385 (regOne!2827 r!20230))))

(assert (=> d!180051 (= (lemmaDerivativeStepFixPointLostCause!14 (regOne!2827 r!20230) c!12526) lt!210780)))

(declare-fun bs!58734 () Bool)

(assert (= bs!58734 d!180051))

(assert (=> bs!58734 m!747631))

(assert (=> bs!58734 m!747631))

(assert (=> bs!58734 m!747633))

(declare-fun m!747695 () Bool)

(assert (=> bs!58734 m!747695))

(assert (=> bs!58734 m!747691))

(assert (=> b!476929 d!180051))

(declare-fun d!180053 () Bool)

(assert (=> d!180053 (= (lostCause!151 (regTwo!2827 r!20230)) (lostCauseFct!61 (regTwo!2827 r!20230)))))

(declare-fun bs!58735 () Bool)

(assert (= bs!58735 d!180053))

(declare-fun m!747697 () Bool)

(assert (=> bs!58735 m!747697))

(assert (=> b!476934 d!180053))

(declare-fun b!477110 () Bool)

(declare-fun e!291117 () Bool)

(declare-fun tp!133370 () Bool)

(declare-fun tp!133369 () Bool)

(assert (=> b!477110 (= e!291117 (and tp!133370 tp!133369))))

(assert (=> b!476932 (= tp!133317 e!291117)))

(declare-fun b!477107 () Bool)

(assert (=> b!477107 (= e!291117 tp_is_empty!2311)))

(declare-fun b!477108 () Bool)

(declare-fun tp!133371 () Bool)

(declare-fun tp!133368 () Bool)

(assert (=> b!477108 (= e!291117 (and tp!133371 tp!133368))))

(declare-fun b!477109 () Bool)

(declare-fun tp!133367 () Bool)

(assert (=> b!477109 (= e!291117 tp!133367)))

(assert (= (and b!476932 ((_ is ElementMatch!1157) (reg!1486 r!20230))) b!477107))

(assert (= (and b!476932 ((_ is Concat!2057) (reg!1486 r!20230))) b!477108))

(assert (= (and b!476932 ((_ is Star!1157) (reg!1486 r!20230))) b!477109))

(assert (= (and b!476932 ((_ is Union!1157) (reg!1486 r!20230))) b!477110))

(declare-fun b!477114 () Bool)

(declare-fun e!291118 () Bool)

(declare-fun tp!133375 () Bool)

(declare-fun tp!133374 () Bool)

(assert (=> b!477114 (= e!291118 (and tp!133375 tp!133374))))

(assert (=> b!476931 (= tp!133319 e!291118)))

(declare-fun b!477111 () Bool)

(assert (=> b!477111 (= e!291118 tp_is_empty!2311)))

(declare-fun b!477112 () Bool)

(declare-fun tp!133376 () Bool)

(declare-fun tp!133373 () Bool)

(assert (=> b!477112 (= e!291118 (and tp!133376 tp!133373))))

(declare-fun b!477113 () Bool)

(declare-fun tp!133372 () Bool)

(assert (=> b!477113 (= e!291118 tp!133372)))

(assert (= (and b!476931 ((_ is ElementMatch!1157) (regOne!2826 r!20230))) b!477111))

(assert (= (and b!476931 ((_ is Concat!2057) (regOne!2826 r!20230))) b!477112))

(assert (= (and b!476931 ((_ is Star!1157) (regOne!2826 r!20230))) b!477113))

(assert (= (and b!476931 ((_ is Union!1157) (regOne!2826 r!20230))) b!477114))

(declare-fun b!477118 () Bool)

(declare-fun e!291119 () Bool)

(declare-fun tp!133380 () Bool)

(declare-fun tp!133379 () Bool)

(assert (=> b!477118 (= e!291119 (and tp!133380 tp!133379))))

(assert (=> b!476931 (= tp!133320 e!291119)))

(declare-fun b!477115 () Bool)

(assert (=> b!477115 (= e!291119 tp_is_empty!2311)))

(declare-fun b!477116 () Bool)

(declare-fun tp!133381 () Bool)

(declare-fun tp!133378 () Bool)

(assert (=> b!477116 (= e!291119 (and tp!133381 tp!133378))))

(declare-fun b!477117 () Bool)

(declare-fun tp!133377 () Bool)

(assert (=> b!477117 (= e!291119 tp!133377)))

(assert (= (and b!476931 ((_ is ElementMatch!1157) (regTwo!2826 r!20230))) b!477115))

(assert (= (and b!476931 ((_ is Concat!2057) (regTwo!2826 r!20230))) b!477116))

(assert (= (and b!476931 ((_ is Star!1157) (regTwo!2826 r!20230))) b!477117))

(assert (= (and b!476931 ((_ is Union!1157) (regTwo!2826 r!20230))) b!477118))

(declare-fun b!477122 () Bool)

(declare-fun e!291120 () Bool)

(declare-fun tp!133385 () Bool)

(declare-fun tp!133384 () Bool)

(assert (=> b!477122 (= e!291120 (and tp!133385 tp!133384))))

(assert (=> b!476933 (= tp!133318 e!291120)))

(declare-fun b!477119 () Bool)

(assert (=> b!477119 (= e!291120 tp_is_empty!2311)))

(declare-fun b!477120 () Bool)

(declare-fun tp!133386 () Bool)

(declare-fun tp!133383 () Bool)

(assert (=> b!477120 (= e!291120 (and tp!133386 tp!133383))))

(declare-fun b!477121 () Bool)

(declare-fun tp!133382 () Bool)

(assert (=> b!477121 (= e!291120 tp!133382)))

(assert (= (and b!476933 ((_ is ElementMatch!1157) (regOne!2827 r!20230))) b!477119))

(assert (= (and b!476933 ((_ is Concat!2057) (regOne!2827 r!20230))) b!477120))

(assert (= (and b!476933 ((_ is Star!1157) (regOne!2827 r!20230))) b!477121))

(assert (= (and b!476933 ((_ is Union!1157) (regOne!2827 r!20230))) b!477122))

(declare-fun b!477126 () Bool)

(declare-fun e!291121 () Bool)

(declare-fun tp!133390 () Bool)

(declare-fun tp!133389 () Bool)

(assert (=> b!477126 (= e!291121 (and tp!133390 tp!133389))))

(assert (=> b!476933 (= tp!133321 e!291121)))

(declare-fun b!477123 () Bool)

(assert (=> b!477123 (= e!291121 tp_is_empty!2311)))

(declare-fun b!477124 () Bool)

(declare-fun tp!133391 () Bool)

(declare-fun tp!133388 () Bool)

(assert (=> b!477124 (= e!291121 (and tp!133391 tp!133388))))

(declare-fun b!477125 () Bool)

(declare-fun tp!133387 () Bool)

(assert (=> b!477125 (= e!291121 tp!133387)))

(assert (= (and b!476933 ((_ is ElementMatch!1157) (regTwo!2827 r!20230))) b!477123))

(assert (= (and b!476933 ((_ is Concat!2057) (regTwo!2827 r!20230))) b!477124))

(assert (= (and b!476933 ((_ is Star!1157) (regTwo!2827 r!20230))) b!477125))

(assert (= (and b!476933 ((_ is Union!1157) (regTwo!2827 r!20230))) b!477126))

(check-sat (not b!477124) (not b!477116) (not b!477120) (not bm!33397) (not b!477001) (not b!477117) (not b!477114) (not d!180041) (not b!477020) (not b!477112) (not b!477126) (not d!180051) (not b!477122) (not b!477118) (not b!477089) (not bm!33410) (not b!477121) (not b!477110) (not b!477109) (not b!477125) (not d!180043) (not bm!33388) (not d!180035) (not b!477113) (not d!180053) (not b!477108) (not bm!33395) tp_is_empty!2311 (not bm!33411) (not bm!33390))
(check-sat)
(get-model)

(declare-fun b!477350 () Bool)

(declare-fun e!291243 () Bool)

(declare-fun e!291242 () Bool)

(assert (=> b!477350 (= e!291243 e!291242)))

(declare-fun res!211288 () Bool)

(declare-fun call!33459 () Bool)

(assert (=> b!477350 (= res!211288 call!33459)))

(assert (=> b!477350 (=> (not res!211288) (not e!291242))))

(declare-fun b!477351 () Bool)

(declare-fun e!291245 () Bool)

(assert (=> b!477351 (= e!291243 e!291245)))

(declare-fun res!211287 () Bool)

(assert (=> b!477351 (= res!211287 call!33459)))

(assert (=> b!477351 (=> res!211287 e!291245)))

(declare-fun bm!33453 () Bool)

(declare-fun c!95503 () Bool)

(assert (=> bm!33453 (= call!33459 (lostCause!151 (ite c!95503 (regOne!2827 r!20230) (regOne!2826 r!20230))))))

(declare-fun bm!33454 () Bool)

(declare-fun call!33458 () Bool)

(assert (=> bm!33454 (= call!33458 (lostCause!151 (ite c!95503 (regTwo!2827 r!20230) (regTwo!2826 r!20230))))))

(declare-fun b!477353 () Bool)

(declare-fun e!291241 () Bool)

(declare-fun e!291246 () Bool)

(assert (=> b!477353 (= e!291241 e!291246)))

(declare-fun res!211286 () Bool)

(assert (=> b!477353 (=> (not res!211286) (not e!291246))))

(assert (=> b!477353 (= res!211286 (and (not ((_ is ElementMatch!1157) r!20230)) (not ((_ is Star!1157) r!20230))))))

(declare-fun b!477354 () Bool)

(declare-fun e!291244 () Bool)

(assert (=> b!477354 (= e!291244 e!291241)))

(declare-fun res!211285 () Bool)

(assert (=> b!477354 (=> res!211285 e!291241)))

(assert (=> b!477354 (= res!211285 ((_ is EmptyLang!1157) r!20230))))

(declare-fun b!477355 () Bool)

(assert (=> b!477355 (= e!291246 e!291243)))

(assert (=> b!477355 (= c!95503 ((_ is Union!1157) r!20230))))

(declare-fun b!477356 () Bool)

(assert (=> b!477356 (= e!291245 call!33458)))

(declare-fun d!180077 () Bool)

(declare-fun lt!210790 () Bool)

(declare-datatypes ((List!4596 0))(
  ( (Nil!4586) (Cons!4586 (h!9983 C!3236) (t!73114 List!4596)) )
))
(declare-datatypes ((Option!1214 0))(
  ( (None!1213) (Some!1213 (v!15625 List!4596)) )
))
(declare-fun isEmpty!3540 (Option!1214) Bool)

(declare-fun getLanguageWitness!49 (Regex!1157) Option!1214)

(assert (=> d!180077 (= lt!210790 (isEmpty!3540 (getLanguageWitness!49 r!20230)))))

(assert (=> d!180077 (= lt!210790 e!291244)))

(declare-fun res!211289 () Bool)

(assert (=> d!180077 (=> (not res!211289) (not e!291244))))

(assert (=> d!180077 (= res!211289 (not ((_ is EmptyExpr!1157) r!20230)))))

(assert (=> d!180077 (= (lostCauseFct!61 r!20230) lt!210790)))

(declare-fun b!477352 () Bool)

(assert (=> b!477352 (= e!291242 call!33458)))

(assert (= (and d!180077 res!211289) b!477354))

(assert (= (and b!477354 (not res!211285)) b!477353))

(assert (= (and b!477353 res!211286) b!477355))

(assert (= (and b!477355 c!95503) b!477350))

(assert (= (and b!477355 (not c!95503)) b!477351))

(assert (= (and b!477350 res!211288) b!477352))

(assert (= (and b!477351 (not res!211287)) b!477356))

(assert (= (or b!477350 b!477351) bm!33453))

(assert (= (or b!477352 b!477356) bm!33454))

(declare-fun m!747785 () Bool)

(assert (=> bm!33453 m!747785))

(declare-fun m!747787 () Bool)

(assert (=> bm!33454 m!747787))

(declare-fun m!747789 () Bool)

(assert (=> d!180077 m!747789))

(assert (=> d!180077 m!747789))

(declare-fun m!747791 () Bool)

(assert (=> d!180077 m!747791))

(assert (=> d!180035 d!180077))

(assert (=> d!180051 d!180041))

(assert (=> d!180051 d!180043))

(declare-fun d!180087 () Bool)

(assert (=> d!180087 (lostCause!151 (derivativeStep!243 (regOne!2827 r!20230) c!12526))))

(assert (=> d!180087 true))

(declare-fun _$99!55 () Unit!8356)

(assert (=> d!180087 (= (choose!3626 (regOne!2827 r!20230) c!12526) _$99!55)))

(declare-fun bs!58740 () Bool)

(assert (= bs!58740 d!180087))

(assert (=> bs!58740 m!747631))

(assert (=> bs!58740 m!747631))

(assert (=> bs!58740 m!747633))

(assert (=> d!180051 d!180087))

(declare-fun b!477357 () Bool)

(declare-fun res!211291 () Bool)

(declare-fun e!291250 () Bool)

(assert (=> b!477357 (=> (not res!211291) (not e!291250))))

(declare-fun call!33461 () Bool)

(assert (=> b!477357 (= res!211291 call!33461)))

(declare-fun e!291249 () Bool)

(assert (=> b!477357 (= e!291249 e!291250)))

(declare-fun c!95505 () Bool)

(declare-fun c!95506 () Bool)

(declare-fun call!33460 () Bool)

(declare-fun bm!33455 () Bool)

(assert (=> bm!33455 (= call!33460 (validRegex!385 (ite c!95505 (reg!1486 (regOne!2827 r!20230)) (ite c!95506 (regTwo!2827 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))))))

(declare-fun d!180089 () Bool)

(declare-fun res!211290 () Bool)

(declare-fun e!291253 () Bool)

(assert (=> d!180089 (=> res!211290 e!291253)))

(assert (=> d!180089 (= res!211290 ((_ is ElementMatch!1157) (regOne!2827 r!20230)))))

(assert (=> d!180089 (= (validRegex!385 (regOne!2827 r!20230)) e!291253)))

(declare-fun b!477358 () Bool)

(declare-fun e!291247 () Bool)

(declare-fun e!291248 () Bool)

(assert (=> b!477358 (= e!291247 e!291248)))

(declare-fun res!211292 () Bool)

(assert (=> b!477358 (= res!211292 (not (nullable!292 (reg!1486 (regOne!2827 r!20230)))))))

(assert (=> b!477358 (=> (not res!211292) (not e!291248))))

(declare-fun b!477359 () Bool)

(assert (=> b!477359 (= e!291253 e!291247)))

(assert (=> b!477359 (= c!95505 ((_ is Star!1157) (regOne!2827 r!20230)))))

(declare-fun b!477360 () Bool)

(declare-fun e!291252 () Bool)

(assert (=> b!477360 (= e!291252 call!33461)))

(declare-fun b!477361 () Bool)

(declare-fun res!211294 () Bool)

(declare-fun e!291251 () Bool)

(assert (=> b!477361 (=> res!211294 e!291251)))

(assert (=> b!477361 (= res!211294 (not ((_ is Concat!2057) (regOne!2827 r!20230))))))

(assert (=> b!477361 (= e!291249 e!291251)))

(declare-fun b!477362 () Bool)

(declare-fun call!33462 () Bool)

(assert (=> b!477362 (= e!291250 call!33462)))

(declare-fun b!477363 () Bool)

(assert (=> b!477363 (= e!291247 e!291249)))

(assert (=> b!477363 (= c!95506 ((_ is Union!1157) (regOne!2827 r!20230)))))

(declare-fun b!477364 () Bool)

(assert (=> b!477364 (= e!291248 call!33460)))

(declare-fun bm!33456 () Bool)

(assert (=> bm!33456 (= call!33462 call!33460)))

(declare-fun b!477365 () Bool)

(assert (=> b!477365 (= e!291251 e!291252)))

(declare-fun res!211293 () Bool)

(assert (=> b!477365 (=> (not res!211293) (not e!291252))))

(assert (=> b!477365 (= res!211293 call!33462)))

(declare-fun bm!33457 () Bool)

(assert (=> bm!33457 (= call!33461 (validRegex!385 (ite c!95506 (regOne!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))))))

(assert (= (and d!180089 (not res!211290)) b!477359))

(assert (= (and b!477359 c!95505) b!477358))

(assert (= (and b!477359 (not c!95505)) b!477363))

(assert (= (and b!477358 res!211292) b!477364))

(assert (= (and b!477363 c!95506) b!477357))

(assert (= (and b!477363 (not c!95506)) b!477361))

(assert (= (and b!477357 res!211291) b!477362))

(assert (= (and b!477361 (not res!211294)) b!477365))

(assert (= (and b!477365 res!211293) b!477360))

(assert (= (or b!477362 b!477365) bm!33456))

(assert (= (or b!477357 b!477360) bm!33457))

(assert (= (or b!477364 bm!33456) bm!33455))

(declare-fun m!747793 () Bool)

(assert (=> bm!33455 m!747793))

(declare-fun m!747795 () Bool)

(assert (=> b!477358 m!747795))

(declare-fun m!747797 () Bool)

(assert (=> bm!33457 m!747797))

(assert (=> d!180051 d!180089))

(declare-fun b!477366 () Bool)

(declare-fun e!291256 () Bool)

(declare-fun e!291255 () Bool)

(assert (=> b!477366 (= e!291256 e!291255)))

(declare-fun res!211298 () Bool)

(declare-fun call!33464 () Bool)

(assert (=> b!477366 (= res!211298 call!33464)))

(assert (=> b!477366 (=> (not res!211298) (not e!291255))))

(declare-fun b!477367 () Bool)

(declare-fun e!291258 () Bool)

(assert (=> b!477367 (= e!291256 e!291258)))

(declare-fun res!211297 () Bool)

(assert (=> b!477367 (= res!211297 call!33464)))

(assert (=> b!477367 (=> res!211297 e!291258)))

(declare-fun bm!33458 () Bool)

(declare-fun c!95507 () Bool)

(assert (=> bm!33458 (= call!33464 (lostCause!151 (ite c!95507 (regOne!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230)))))))

(declare-fun bm!33459 () Bool)

(declare-fun call!33463 () Bool)

(assert (=> bm!33459 (= call!33463 (lostCause!151 (ite c!95507 (regTwo!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))

(declare-fun b!477369 () Bool)

(declare-fun e!291254 () Bool)

(declare-fun e!291259 () Bool)

(assert (=> b!477369 (= e!291254 e!291259)))

(declare-fun res!211296 () Bool)

(assert (=> b!477369 (=> (not res!211296) (not e!291259))))

(assert (=> b!477369 (= res!211296 (and (not ((_ is ElementMatch!1157) (regTwo!2827 r!20230))) (not ((_ is Star!1157) (regTwo!2827 r!20230)))))))

(declare-fun b!477370 () Bool)

(declare-fun e!291257 () Bool)

(assert (=> b!477370 (= e!291257 e!291254)))

(declare-fun res!211295 () Bool)

(assert (=> b!477370 (=> res!211295 e!291254)))

(assert (=> b!477370 (= res!211295 ((_ is EmptyLang!1157) (regTwo!2827 r!20230)))))

(declare-fun b!477371 () Bool)

(assert (=> b!477371 (= e!291259 e!291256)))

(assert (=> b!477371 (= c!95507 ((_ is Union!1157) (regTwo!2827 r!20230)))))

(declare-fun b!477372 () Bool)

(assert (=> b!477372 (= e!291258 call!33463)))

(declare-fun d!180091 () Bool)

(declare-fun lt!210791 () Bool)

(assert (=> d!180091 (= lt!210791 (isEmpty!3540 (getLanguageWitness!49 (regTwo!2827 r!20230))))))

(assert (=> d!180091 (= lt!210791 e!291257)))

(declare-fun res!211299 () Bool)

(assert (=> d!180091 (=> (not res!211299) (not e!291257))))

(assert (=> d!180091 (= res!211299 (not ((_ is EmptyExpr!1157) (regTwo!2827 r!20230))))))

(assert (=> d!180091 (= (lostCauseFct!61 (regTwo!2827 r!20230)) lt!210791)))

(declare-fun b!477368 () Bool)

(assert (=> b!477368 (= e!291255 call!33463)))

(assert (= (and d!180091 res!211299) b!477370))

(assert (= (and b!477370 (not res!211295)) b!477369))

(assert (= (and b!477369 res!211296) b!477371))

(assert (= (and b!477371 c!95507) b!477366))

(assert (= (and b!477371 (not c!95507)) b!477367))

(assert (= (and b!477366 res!211298) b!477368))

(assert (= (and b!477367 (not res!211297)) b!477372))

(assert (= (or b!477366 b!477367) bm!33458))

(assert (= (or b!477368 b!477372) bm!33459))

(declare-fun m!747799 () Bool)

(assert (=> bm!33458 m!747799))

(declare-fun m!747801 () Bool)

(assert (=> bm!33459 m!747801))

(declare-fun m!747803 () Bool)

(assert (=> d!180091 m!747803))

(assert (=> d!180091 m!747803))

(declare-fun m!747805 () Bool)

(assert (=> d!180091 m!747805))

(assert (=> d!180053 d!180091))

(declare-fun bm!33460 () Bool)

(declare-fun call!33465 () Regex!1157)

(declare-fun call!33468 () Regex!1157)

(assert (=> bm!33460 (= call!33465 call!33468)))

(declare-fun e!291263 () Regex!1157)

(declare-fun b!477373 () Bool)

(assert (=> b!477373 (= e!291263 (Union!1157 (Concat!2057 call!33465 (regTwo!2826 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))) EmptyLang!1157))))

(declare-fun e!291260 () Regex!1157)

(declare-fun b!477374 () Bool)

(assert (=> b!477374 (= e!291260 (ite (= c!12526 (c!95424 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))) EmptyExpr!1157 EmptyLang!1157))))

(declare-fun bm!33461 () Bool)

(declare-fun c!95508 () Bool)

(declare-fun call!33467 () Regex!1157)

(assert (=> bm!33461 (= call!33467 (derivativeStep!243 (ite c!95508 (regTwo!2827 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))) (regTwo!2826 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))) c!12526))))

(declare-fun b!477375 () Bool)

(declare-fun c!95510 () Bool)

(assert (=> b!477375 (= c!95510 (nullable!292 (regOne!2826 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))))))

(declare-fun e!291262 () Regex!1157)

(assert (=> b!477375 (= e!291262 e!291263)))

(declare-fun b!477376 () Bool)

(declare-fun e!291264 () Regex!1157)

(assert (=> b!477376 (= e!291264 EmptyLang!1157)))

(declare-fun b!477377 () Bool)

(assert (=> b!477377 (= e!291262 (Concat!2057 call!33468 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))))))

(declare-fun b!477378 () Bool)

(assert (=> b!477378 (= c!95508 ((_ is Union!1157) (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))))))

(declare-fun e!291261 () Regex!1157)

(assert (=> b!477378 (= e!291260 e!291261)))

(declare-fun b!477379 () Bool)

(assert (=> b!477379 (= e!291261 e!291262)))

(declare-fun c!95509 () Bool)

(assert (=> b!477379 (= c!95509 ((_ is Star!1157) (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))))))

(declare-fun bm!33463 () Bool)

(declare-fun call!33466 () Regex!1157)

(assert (=> bm!33463 (= call!33468 call!33466)))

(declare-fun b!477380 () Bool)

(assert (=> b!477380 (= e!291261 (Union!1157 call!33466 call!33467))))

(declare-fun b!477381 () Bool)

(assert (=> b!477381 (= e!291264 e!291260)))

(declare-fun c!95512 () Bool)

(assert (=> b!477381 (= c!95512 ((_ is ElementMatch!1157) (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))))))

(declare-fun b!477382 () Bool)

(assert (=> b!477382 (= e!291263 (Union!1157 (Concat!2057 call!33465 (regTwo!2826 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))) call!33467))))

(declare-fun d!180093 () Bool)

(declare-fun lt!210792 () Regex!1157)

(assert (=> d!180093 (validRegex!385 lt!210792)))

(assert (=> d!180093 (= lt!210792 e!291264)))

(declare-fun c!95511 () Bool)

(assert (=> d!180093 (= c!95511 (or ((_ is EmptyExpr!1157) (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))) ((_ is EmptyLang!1157) (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))))))

(assert (=> d!180093 (validRegex!385 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))))))

(assert (=> d!180093 (= (derivativeStep!243 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230)))) c!12526) lt!210792)))

(declare-fun bm!33462 () Bool)

(assert (=> bm!33462 (= call!33466 (derivativeStep!243 (ite c!95508 (regOne!2827 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))) (ite c!95509 (reg!1486 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))) (regOne!2826 (ite c!95467 (regOne!2827 (regOne!2827 r!20230)) (ite c!95468 (reg!1486 (regOne!2827 r!20230)) (regOne!2826 (regOne!2827 r!20230))))))) c!12526))))

(assert (= (and d!180093 c!95511) b!477376))

(assert (= (and d!180093 (not c!95511)) b!477381))

(assert (= (and b!477381 c!95512) b!477374))

(assert (= (and b!477381 (not c!95512)) b!477378))

(assert (= (and b!477378 c!95508) b!477380))

(assert (= (and b!477378 (not c!95508)) b!477379))

(assert (= (and b!477379 c!95509) b!477377))

(assert (= (and b!477379 (not c!95509)) b!477375))

(assert (= (and b!477375 c!95510) b!477382))

(assert (= (and b!477375 (not c!95510)) b!477373))

(assert (= (or b!477382 b!477373) bm!33460))

(assert (= (or b!477377 bm!33460) bm!33463))

(assert (= (or b!477380 b!477382) bm!33461))

(assert (= (or b!477380 bm!33463) bm!33462))

(declare-fun m!747807 () Bool)

(assert (=> bm!33461 m!747807))

(declare-fun m!747809 () Bool)

(assert (=> b!477375 m!747809))

(declare-fun m!747811 () Bool)

(assert (=> d!180093 m!747811))

(declare-fun m!747813 () Bool)

(assert (=> d!180093 m!747813))

(declare-fun m!747815 () Bool)

(assert (=> bm!33462 m!747815))

(assert (=> bm!33411 d!180093))

(declare-fun b!477383 () Bool)

(declare-fun res!211301 () Bool)

(declare-fun e!291268 () Bool)

(assert (=> b!477383 (=> (not res!211301) (not e!291268))))

(declare-fun call!33470 () Bool)

(assert (=> b!477383 (= res!211301 call!33470)))

(declare-fun e!291267 () Bool)

(assert (=> b!477383 (= e!291267 e!291268)))

(declare-fun call!33469 () Bool)

(declare-fun bm!33464 () Bool)

(declare-fun c!95514 () Bool)

(declare-fun c!95513 () Bool)

(assert (=> bm!33464 (= call!33469 (validRegex!385 (ite c!95513 (reg!1486 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))) (ite c!95514 (regTwo!2827 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))) (regOne!2826 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230)))))))))

(declare-fun d!180095 () Bool)

(declare-fun res!211300 () Bool)

(declare-fun e!291271 () Bool)

(assert (=> d!180095 (=> res!211300 e!291271)))

(assert (=> d!180095 (= res!211300 ((_ is ElementMatch!1157) (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))))))

(assert (=> d!180095 (= (validRegex!385 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))) e!291271)))

(declare-fun b!477384 () Bool)

(declare-fun e!291265 () Bool)

(declare-fun e!291266 () Bool)

(assert (=> b!477384 (= e!291265 e!291266)))

(declare-fun res!211302 () Bool)

(assert (=> b!477384 (= res!211302 (not (nullable!292 (reg!1486 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))))))))

(assert (=> b!477384 (=> (not res!211302) (not e!291266))))

(declare-fun b!477385 () Bool)

(assert (=> b!477385 (= e!291271 e!291265)))

(assert (=> b!477385 (= c!95513 ((_ is Star!1157) (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))))))

(declare-fun b!477386 () Bool)

(declare-fun e!291270 () Bool)

(assert (=> b!477386 (= e!291270 call!33470)))

(declare-fun b!477387 () Bool)

(declare-fun res!211304 () Bool)

(declare-fun e!291269 () Bool)

(assert (=> b!477387 (=> res!211304 e!291269)))

(assert (=> b!477387 (= res!211304 (not ((_ is Concat!2057) (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230)))))))

(assert (=> b!477387 (= e!291267 e!291269)))

(declare-fun b!477388 () Bool)

(declare-fun call!33471 () Bool)

(assert (=> b!477388 (= e!291268 call!33471)))

(declare-fun b!477389 () Bool)

(assert (=> b!477389 (= e!291265 e!291267)))

(assert (=> b!477389 (= c!95514 ((_ is Union!1157) (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))))))

(declare-fun b!477390 () Bool)

(assert (=> b!477390 (= e!291266 call!33469)))

(declare-fun bm!33465 () Bool)

(assert (=> bm!33465 (= call!33471 call!33469)))

(declare-fun b!477391 () Bool)

(assert (=> b!477391 (= e!291269 e!291270)))

(declare-fun res!211303 () Bool)

(assert (=> b!477391 (=> (not res!211303) (not e!291270))))

(assert (=> b!477391 (= res!211303 call!33471)))

(declare-fun bm!33466 () Bool)

(assert (=> bm!33466 (= call!33470 (validRegex!385 (ite c!95514 (regOne!2827 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))) (regTwo!2826 (ite c!95446 (regOne!2827 r!20230) (regTwo!2826 r!20230))))))))

(assert (= (and d!180095 (not res!211300)) b!477385))

(assert (= (and b!477385 c!95513) b!477384))

(assert (= (and b!477385 (not c!95513)) b!477389))

(assert (= (and b!477384 res!211302) b!477390))

(assert (= (and b!477389 c!95514) b!477383))

(assert (= (and b!477389 (not c!95514)) b!477387))

(assert (= (and b!477383 res!211301) b!477388))

(assert (= (and b!477387 (not res!211304)) b!477391))

(assert (= (and b!477391 res!211303) b!477386))

(assert (= (or b!477388 b!477391) bm!33465))

(assert (= (or b!477383 b!477386) bm!33466))

(assert (= (or b!477390 bm!33465) bm!33464))

(declare-fun m!747817 () Bool)

(assert (=> bm!33464 m!747817))

(declare-fun m!747819 () Bool)

(assert (=> b!477384 m!747819))

(declare-fun m!747821 () Bool)

(assert (=> bm!33466 m!747821))

(assert (=> bm!33390 d!180095))

(declare-fun b!477392 () Bool)

(declare-fun res!211306 () Bool)

(declare-fun e!291275 () Bool)

(assert (=> b!477392 (=> (not res!211306) (not e!291275))))

(declare-fun call!33473 () Bool)

(assert (=> b!477392 (= res!211306 call!33473)))

(declare-fun e!291274 () Bool)

(assert (=> b!477392 (= e!291274 e!291275)))

(declare-fun c!95516 () Bool)

(declare-fun c!95515 () Bool)

(declare-fun call!33472 () Bool)

(declare-fun bm!33467 () Bool)

(assert (=> bm!33467 (= call!33472 (validRegex!385 (ite c!95515 (reg!1486 lt!210777) (ite c!95516 (regTwo!2827 lt!210777) (regOne!2826 lt!210777)))))))

(declare-fun d!180097 () Bool)

(declare-fun res!211305 () Bool)

(declare-fun e!291278 () Bool)

(assert (=> d!180097 (=> res!211305 e!291278)))

(assert (=> d!180097 (= res!211305 ((_ is ElementMatch!1157) lt!210777))))

(assert (=> d!180097 (= (validRegex!385 lt!210777) e!291278)))

(declare-fun b!477393 () Bool)

(declare-fun e!291272 () Bool)

(declare-fun e!291273 () Bool)

(assert (=> b!477393 (= e!291272 e!291273)))

(declare-fun res!211307 () Bool)

(assert (=> b!477393 (= res!211307 (not (nullable!292 (reg!1486 lt!210777))))))

(assert (=> b!477393 (=> (not res!211307) (not e!291273))))

(declare-fun b!477394 () Bool)

(assert (=> b!477394 (= e!291278 e!291272)))

(assert (=> b!477394 (= c!95515 ((_ is Star!1157) lt!210777))))

(declare-fun b!477395 () Bool)

(declare-fun e!291277 () Bool)

(assert (=> b!477395 (= e!291277 call!33473)))

(declare-fun b!477396 () Bool)

(declare-fun res!211309 () Bool)

(declare-fun e!291276 () Bool)

(assert (=> b!477396 (=> res!211309 e!291276)))

(assert (=> b!477396 (= res!211309 (not ((_ is Concat!2057) lt!210777)))))

(assert (=> b!477396 (= e!291274 e!291276)))

(declare-fun b!477397 () Bool)

(declare-fun call!33474 () Bool)

(assert (=> b!477397 (= e!291275 call!33474)))

(declare-fun b!477398 () Bool)

(assert (=> b!477398 (= e!291272 e!291274)))

(assert (=> b!477398 (= c!95516 ((_ is Union!1157) lt!210777))))

(declare-fun b!477399 () Bool)

(assert (=> b!477399 (= e!291273 call!33472)))

(declare-fun bm!33468 () Bool)

(assert (=> bm!33468 (= call!33474 call!33472)))

(declare-fun b!477400 () Bool)

(assert (=> b!477400 (= e!291276 e!291277)))

(declare-fun res!211308 () Bool)

(assert (=> b!477400 (=> (not res!211308) (not e!291277))))

(assert (=> b!477400 (= res!211308 call!33474)))

(declare-fun bm!33469 () Bool)

(assert (=> bm!33469 (= call!33473 (validRegex!385 (ite c!95516 (regOne!2827 lt!210777) (regTwo!2826 lt!210777))))))

(assert (= (and d!180097 (not res!211305)) b!477394))

(assert (= (and b!477394 c!95515) b!477393))

(assert (= (and b!477394 (not c!95515)) b!477398))

(assert (= (and b!477393 res!211307) b!477399))

(assert (= (and b!477398 c!95516) b!477392))

(assert (= (and b!477398 (not c!95516)) b!477396))

(assert (= (and b!477392 res!211306) b!477397))

(assert (= (and b!477396 (not res!211309)) b!477400))

(assert (= (and b!477400 res!211308) b!477395))

(assert (= (or b!477397 b!477400) bm!33468))

(assert (= (or b!477392 b!477395) bm!33469))

(assert (= (or b!477399 bm!33468) bm!33467))

(declare-fun m!747823 () Bool)

(assert (=> bm!33467 m!747823))

(declare-fun m!747825 () Bool)

(assert (=> b!477393 m!747825))

(declare-fun m!747827 () Bool)

(assert (=> bm!33469 m!747827))

(assert (=> d!180043 d!180097))

(assert (=> d!180043 d!180089))

(declare-fun b!477401 () Bool)

(declare-fun res!211311 () Bool)

(declare-fun e!291282 () Bool)

(assert (=> b!477401 (=> (not res!211311) (not e!291282))))

(declare-fun call!33476 () Bool)

(assert (=> b!477401 (= res!211311 call!33476)))

(declare-fun e!291281 () Bool)

(assert (=> b!477401 (= e!291281 e!291282)))

(declare-fun bm!33470 () Bool)

(declare-fun call!33475 () Bool)

(declare-fun c!95518 () Bool)

(declare-fun c!95517 () Bool)

(assert (=> bm!33470 (= call!33475 (validRegex!385 (ite c!95517 (reg!1486 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))) (ite c!95518 (regTwo!2827 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))) (regOne!2826 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230)))))))))))

(declare-fun d!180099 () Bool)

(declare-fun res!211310 () Bool)

(declare-fun e!291285 () Bool)

(assert (=> d!180099 (=> res!211310 e!291285)))

(assert (=> d!180099 (= res!211310 ((_ is ElementMatch!1157) (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))))))

(assert (=> d!180099 (= (validRegex!385 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))) e!291285)))

(declare-fun b!477402 () Bool)

(declare-fun e!291279 () Bool)

(declare-fun e!291280 () Bool)

(assert (=> b!477402 (= e!291279 e!291280)))

(declare-fun res!211312 () Bool)

(assert (=> b!477402 (= res!211312 (not (nullable!292 (reg!1486 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))))))))

(assert (=> b!477402 (=> (not res!211312) (not e!291280))))

(declare-fun b!477403 () Bool)

(assert (=> b!477403 (= e!291285 e!291279)))

(assert (=> b!477403 (= c!95517 ((_ is Star!1157) (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))))))

(declare-fun b!477404 () Bool)

(declare-fun e!291284 () Bool)

(assert (=> b!477404 (= e!291284 call!33476)))

(declare-fun b!477405 () Bool)

(declare-fun res!211314 () Bool)

(declare-fun e!291283 () Bool)

(assert (=> b!477405 (=> res!211314 e!291283)))

(assert (=> b!477405 (= res!211314 (not ((_ is Concat!2057) (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230)))))))))

(assert (=> b!477405 (= e!291281 e!291283)))

(declare-fun b!477406 () Bool)

(declare-fun call!33477 () Bool)

(assert (=> b!477406 (= e!291282 call!33477)))

(declare-fun b!477407 () Bool)

(assert (=> b!477407 (= e!291279 e!291281)))

(assert (=> b!477407 (= c!95518 ((_ is Union!1157) (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))))))

(declare-fun b!477408 () Bool)

(assert (=> b!477408 (= e!291280 call!33475)))

(declare-fun bm!33471 () Bool)

(assert (=> bm!33471 (= call!33477 call!33475)))

(declare-fun b!477409 () Bool)

(assert (=> b!477409 (= e!291283 e!291284)))

(declare-fun res!211313 () Bool)

(assert (=> b!477409 (=> (not res!211313) (not e!291284))))

(assert (=> b!477409 (= res!211313 call!33477)))

(declare-fun bm!33472 () Bool)

(assert (=> bm!33472 (= call!33476 (validRegex!385 (ite c!95518 (regOne!2827 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))) (regTwo!2826 (ite c!95452 (reg!1486 (regTwo!2827 r!20230)) (ite c!95453 (regTwo!2827 (regTwo!2827 r!20230)) (regOne!2826 (regTwo!2827 r!20230))))))))))

(assert (= (and d!180099 (not res!211310)) b!477403))

(assert (= (and b!477403 c!95517) b!477402))

(assert (= (and b!477403 (not c!95517)) b!477407))

(assert (= (and b!477402 res!211312) b!477408))

(assert (= (and b!477407 c!95518) b!477401))

(assert (= (and b!477407 (not c!95518)) b!477405))

(assert (= (and b!477401 res!211311) b!477406))

(assert (= (and b!477405 (not res!211314)) b!477409))

(assert (= (and b!477409 res!211313) b!477404))

(assert (= (or b!477406 b!477409) bm!33471))

(assert (= (or b!477401 b!477404) bm!33472))

(assert (= (or b!477408 bm!33471) bm!33470))

(declare-fun m!747829 () Bool)

(assert (=> bm!33470 m!747829))

(declare-fun m!747831 () Bool)

(assert (=> b!477402 m!747831))

(declare-fun m!747833 () Bool)

(assert (=> bm!33472 m!747833))

(assert (=> bm!33395 d!180099))

(declare-fun b!477410 () Bool)

(declare-fun res!211316 () Bool)

(declare-fun e!291289 () Bool)

(assert (=> b!477410 (=> (not res!211316) (not e!291289))))

(declare-fun call!33479 () Bool)

(assert (=> b!477410 (= res!211316 call!33479)))

(declare-fun e!291288 () Bool)

(assert (=> b!477410 (= e!291288 e!291289)))

(declare-fun call!33478 () Bool)

(declare-fun c!95520 () Bool)

(declare-fun bm!33473 () Bool)

(declare-fun c!95519 () Bool)

(assert (=> bm!33473 (= call!33478 (validRegex!385 (ite c!95519 (reg!1486 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))) (ite c!95520 (regTwo!2827 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))) (regOne!2826 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230))))))))))

(declare-fun d!180101 () Bool)

(declare-fun res!211315 () Bool)

(declare-fun e!291292 () Bool)

(assert (=> d!180101 (=> res!211315 e!291292)))

(assert (=> d!180101 (= res!211315 ((_ is ElementMatch!1157) (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))

(assert (=> d!180101 (= (validRegex!385 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))) e!291292)))

(declare-fun b!477411 () Bool)

(declare-fun e!291286 () Bool)

(declare-fun e!291287 () Bool)

(assert (=> b!477411 (= e!291286 e!291287)))

(declare-fun res!211317 () Bool)

(assert (=> b!477411 (= res!211317 (not (nullable!292 (reg!1486 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))))

(assert (=> b!477411 (=> (not res!211317) (not e!291287))))

(declare-fun b!477412 () Bool)

(assert (=> b!477412 (= e!291292 e!291286)))

(assert (=> b!477412 (= c!95519 ((_ is Star!1157) (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))

(declare-fun b!477413 () Bool)

(declare-fun e!291291 () Bool)

(assert (=> b!477413 (= e!291291 call!33479)))

(declare-fun b!477414 () Bool)

(declare-fun res!211319 () Bool)

(declare-fun e!291290 () Bool)

(assert (=> b!477414 (=> res!211319 e!291290)))

(assert (=> b!477414 (= res!211319 (not ((_ is Concat!2057) (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230))))))))

(assert (=> b!477414 (= e!291288 e!291290)))

(declare-fun b!477415 () Bool)

(declare-fun call!33480 () Bool)

(assert (=> b!477415 (= e!291289 call!33480)))

(declare-fun b!477416 () Bool)

(assert (=> b!477416 (= e!291286 e!291288)))

(assert (=> b!477416 (= c!95520 ((_ is Union!1157) (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))

(declare-fun b!477417 () Bool)

(assert (=> b!477417 (= e!291287 call!33478)))

(declare-fun bm!33474 () Bool)

(assert (=> bm!33474 (= call!33480 call!33478)))

(declare-fun b!477418 () Bool)

(assert (=> b!477418 (= e!291290 e!291291)))

(declare-fun res!211318 () Bool)

(assert (=> b!477418 (=> (not res!211318) (not e!291291))))

(assert (=> b!477418 (= res!211318 call!33480)))

(declare-fun bm!33475 () Bool)

(assert (=> bm!33475 (= call!33479 (validRegex!385 (ite c!95520 (regOne!2827 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))) (regTwo!2826 (ite c!95453 (regOne!2827 (regTwo!2827 r!20230)) (regTwo!2826 (regTwo!2827 r!20230)))))))))

(assert (= (and d!180101 (not res!211315)) b!477412))

(assert (= (and b!477412 c!95519) b!477411))

(assert (= (and b!477412 (not c!95519)) b!477416))

(assert (= (and b!477411 res!211317) b!477417))

(assert (= (and b!477416 c!95520) b!477410))

(assert (= (and b!477416 (not c!95520)) b!477414))

(assert (= (and b!477410 res!211316) b!477415))

(assert (= (and b!477414 (not res!211319)) b!477418))

(assert (= (and b!477418 res!211318) b!477413))

(assert (= (or b!477415 b!477418) bm!33474))

(assert (= (or b!477410 b!477413) bm!33475))

(assert (= (or b!477417 bm!33474) bm!33473))

(declare-fun m!747835 () Bool)

(assert (=> bm!33473 m!747835))

(declare-fun m!747837 () Bool)

(assert (=> b!477411 m!747837))

(declare-fun m!747839 () Bool)

(assert (=> bm!33475 m!747839))

(assert (=> bm!33397 d!180101))

(declare-fun b!477419 () Bool)

(declare-fun res!211321 () Bool)

(declare-fun e!291296 () Bool)

(assert (=> b!477419 (=> (not res!211321) (not e!291296))))

(declare-fun call!33482 () Bool)

(assert (=> b!477419 (= res!211321 call!33482)))

(declare-fun e!291295 () Bool)

(assert (=> b!477419 (= e!291295 e!291296)))

(declare-fun c!95522 () Bool)

(declare-fun c!95521 () Bool)

(declare-fun call!33481 () Bool)

(declare-fun bm!33476 () Bool)

(assert (=> bm!33476 (= call!33481 (validRegex!385 (ite c!95521 (reg!1486 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))) (ite c!95522 (regTwo!2827 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))) (regOne!2826 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230))))))))))

(declare-fun d!180103 () Bool)

(declare-fun res!211320 () Bool)

(declare-fun e!291299 () Bool)

(assert (=> d!180103 (=> res!211320 e!291299)))

(assert (=> d!180103 (= res!211320 ((_ is ElementMatch!1157) (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))))))

(assert (=> d!180103 (= (validRegex!385 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))) e!291299)))

(declare-fun b!477420 () Bool)

(declare-fun e!291293 () Bool)

(declare-fun e!291294 () Bool)

(assert (=> b!477420 (= e!291293 e!291294)))

(declare-fun res!211322 () Bool)

(assert (=> b!477420 (= res!211322 (not (nullable!292 (reg!1486 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))))))))

(assert (=> b!477420 (=> (not res!211322) (not e!291294))))

(declare-fun b!477421 () Bool)

(assert (=> b!477421 (= e!291299 e!291293)))

(assert (=> b!477421 (= c!95521 ((_ is Star!1157) (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))))))

(declare-fun b!477422 () Bool)

(declare-fun e!291298 () Bool)

(assert (=> b!477422 (= e!291298 call!33482)))

(declare-fun b!477423 () Bool)

(declare-fun res!211324 () Bool)

(declare-fun e!291297 () Bool)

(assert (=> b!477423 (=> res!211324 e!291297)))

(assert (=> b!477423 (= res!211324 (not ((_ is Concat!2057) (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230))))))))

(assert (=> b!477423 (= e!291295 e!291297)))

(declare-fun b!477424 () Bool)

(declare-fun call!33483 () Bool)

(assert (=> b!477424 (= e!291296 call!33483)))

(declare-fun b!477425 () Bool)

(assert (=> b!477425 (= e!291293 e!291295)))

(assert (=> b!477425 (= c!95522 ((_ is Union!1157) (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))))))

(declare-fun b!477426 () Bool)

(assert (=> b!477426 (= e!291294 call!33481)))

(declare-fun bm!33477 () Bool)

(assert (=> bm!33477 (= call!33483 call!33481)))

(declare-fun b!477427 () Bool)

(assert (=> b!477427 (= e!291297 e!291298)))

(declare-fun res!211323 () Bool)

(assert (=> b!477427 (=> (not res!211323) (not e!291298))))

(assert (=> b!477427 (= res!211323 call!33483)))

(declare-fun bm!33478 () Bool)

(assert (=> bm!33478 (= call!33482 (validRegex!385 (ite c!95522 (regOne!2827 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))) (regTwo!2826 (ite c!95445 (reg!1486 r!20230) (ite c!95446 (regTwo!2827 r!20230) (regOne!2826 r!20230)))))))))

(assert (= (and d!180103 (not res!211320)) b!477421))

(assert (= (and b!477421 c!95521) b!477420))

(assert (= (and b!477421 (not c!95521)) b!477425))

(assert (= (and b!477420 res!211322) b!477426))

(assert (= (and b!477425 c!95522) b!477419))

(assert (= (and b!477425 (not c!95522)) b!477423))

(assert (= (and b!477419 res!211321) b!477424))

(assert (= (and b!477423 (not res!211324)) b!477427))

(assert (= (and b!477427 res!211323) b!477422))

(assert (= (or b!477424 b!477427) bm!33477))

(assert (= (or b!477419 b!477422) bm!33478))

(assert (= (or b!477426 bm!33477) bm!33476))

(declare-fun m!747841 () Bool)

(assert (=> bm!33476 m!747841))

(declare-fun m!747843 () Bool)

(assert (=> b!477420 m!747843))

(declare-fun m!747845 () Bool)

(assert (=> bm!33478 m!747845))

(assert (=> bm!33388 d!180103))

(declare-fun d!180105 () Bool)

(declare-fun nullableFct!101 (Regex!1157) Bool)

(assert (=> d!180105 (= (nullable!292 (reg!1486 (regTwo!2827 r!20230))) (nullableFct!101 (reg!1486 (regTwo!2827 r!20230))))))

(declare-fun bs!58741 () Bool)

(assert (= bs!58741 d!180105))

(declare-fun m!747847 () Bool)

(assert (=> bs!58741 m!747847))

(assert (=> b!477020 d!180105))

(declare-fun d!180107 () Bool)

(assert (=> d!180107 (= (nullable!292 (reg!1486 r!20230)) (nullableFct!101 (reg!1486 r!20230)))))

(declare-fun bs!58742 () Bool)

(assert (= bs!58742 d!180107))

(declare-fun m!747849 () Bool)

(assert (=> bs!58742 m!747849))

(assert (=> b!477001 d!180107))

(declare-fun b!477428 () Bool)

(declare-fun e!291302 () Bool)

(declare-fun e!291301 () Bool)

(assert (=> b!477428 (= e!291302 e!291301)))

(declare-fun res!211328 () Bool)

(declare-fun call!33485 () Bool)

(assert (=> b!477428 (= res!211328 call!33485)))

(assert (=> b!477428 (=> (not res!211328) (not e!291301))))

(declare-fun b!477429 () Bool)

(declare-fun e!291304 () Bool)

(assert (=> b!477429 (= e!291302 e!291304)))

(declare-fun res!211327 () Bool)

(assert (=> b!477429 (= res!211327 call!33485)))

(assert (=> b!477429 (=> res!211327 e!291304)))

(declare-fun c!95523 () Bool)

(declare-fun bm!33479 () Bool)

(assert (=> bm!33479 (= call!33485 (lostCause!151 (ite c!95523 (regOne!2827 (derivativeStep!243 (regOne!2827 r!20230) c!12526)) (regOne!2826 (derivativeStep!243 (regOne!2827 r!20230) c!12526)))))))

(declare-fun call!33484 () Bool)

(declare-fun bm!33480 () Bool)

(assert (=> bm!33480 (= call!33484 (lostCause!151 (ite c!95523 (regTwo!2827 (derivativeStep!243 (regOne!2827 r!20230) c!12526)) (regTwo!2826 (derivativeStep!243 (regOne!2827 r!20230) c!12526)))))))

(declare-fun b!477431 () Bool)

(declare-fun e!291300 () Bool)

(declare-fun e!291305 () Bool)

(assert (=> b!477431 (= e!291300 e!291305)))

(declare-fun res!211326 () Bool)

(assert (=> b!477431 (=> (not res!211326) (not e!291305))))

(assert (=> b!477431 (= res!211326 (and (not ((_ is ElementMatch!1157) (derivativeStep!243 (regOne!2827 r!20230) c!12526))) (not ((_ is Star!1157) (derivativeStep!243 (regOne!2827 r!20230) c!12526)))))))

(declare-fun b!477432 () Bool)

(declare-fun e!291303 () Bool)

(assert (=> b!477432 (= e!291303 e!291300)))

(declare-fun res!211325 () Bool)

(assert (=> b!477432 (=> res!211325 e!291300)))

(assert (=> b!477432 (= res!211325 ((_ is EmptyLang!1157) (derivativeStep!243 (regOne!2827 r!20230) c!12526)))))

(declare-fun b!477433 () Bool)

(assert (=> b!477433 (= e!291305 e!291302)))

(assert (=> b!477433 (= c!95523 ((_ is Union!1157) (derivativeStep!243 (regOne!2827 r!20230) c!12526)))))

(declare-fun b!477434 () Bool)

(assert (=> b!477434 (= e!291304 call!33484)))

(declare-fun d!180109 () Bool)

(declare-fun lt!210793 () Bool)

(assert (=> d!180109 (= lt!210793 (isEmpty!3540 (getLanguageWitness!49 (derivativeStep!243 (regOne!2827 r!20230) c!12526))))))

(assert (=> d!180109 (= lt!210793 e!291303)))

(declare-fun res!211329 () Bool)

(assert (=> d!180109 (=> (not res!211329) (not e!291303))))

(assert (=> d!180109 (= res!211329 (not ((_ is EmptyExpr!1157) (derivativeStep!243 (regOne!2827 r!20230) c!12526))))))

(assert (=> d!180109 (= (lostCauseFct!61 (derivativeStep!243 (regOne!2827 r!20230) c!12526)) lt!210793)))

(declare-fun b!477430 () Bool)

(assert (=> b!477430 (= e!291301 call!33484)))

(assert (= (and d!180109 res!211329) b!477432))

(assert (= (and b!477432 (not res!211325)) b!477431))

(assert (= (and b!477431 res!211326) b!477433))

(assert (= (and b!477433 c!95523) b!477428))

(assert (= (and b!477433 (not c!95523)) b!477429))

(assert (= (and b!477428 res!211328) b!477430))

(assert (= (and b!477429 (not res!211327)) b!477434))

(assert (= (or b!477428 b!477429) bm!33479))

(assert (= (or b!477430 b!477434) bm!33480))

(declare-fun m!747851 () Bool)

(assert (=> bm!33479 m!747851))

(declare-fun m!747853 () Bool)

(assert (=> bm!33480 m!747853))

(assert (=> d!180109 m!747631))

(declare-fun m!747855 () Bool)

(assert (=> d!180109 m!747855))

(assert (=> d!180109 m!747855))

(declare-fun m!747857 () Bool)

(assert (=> d!180109 m!747857))

(assert (=> d!180041 d!180109))

(declare-fun d!180111 () Bool)

(assert (=> d!180111 (= (nullable!292 (regOne!2826 (regOne!2827 r!20230))) (nullableFct!101 (regOne!2826 (regOne!2827 r!20230))))))

(declare-fun bs!58743 () Bool)

(assert (= bs!58743 d!180111))

(declare-fun m!747859 () Bool)

(assert (=> bs!58743 m!747859))

(assert (=> b!477089 d!180111))

(declare-fun bm!33481 () Bool)

(declare-fun call!33486 () Regex!1157)

(declare-fun call!33489 () Regex!1157)

(assert (=> bm!33481 (= call!33486 call!33489)))

(declare-fun b!477435 () Bool)

(declare-fun e!291309 () Regex!1157)

(assert (=> b!477435 (= e!291309 (Union!1157 (Concat!2057 call!33486 (regTwo!2826 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))) EmptyLang!1157))))

(declare-fun e!291306 () Regex!1157)

(declare-fun b!477436 () Bool)

(assert (=> b!477436 (= e!291306 (ite (= c!12526 (c!95424 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))) EmptyExpr!1157 EmptyLang!1157))))

(declare-fun c!95524 () Bool)

(declare-fun bm!33482 () Bool)

(declare-fun call!33488 () Regex!1157)

(assert (=> bm!33482 (= call!33488 (derivativeStep!243 (ite c!95524 (regTwo!2827 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))) (regTwo!2826 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))) c!12526))))

(declare-fun b!477437 () Bool)

(declare-fun c!95526 () Bool)

(assert (=> b!477437 (= c!95526 (nullable!292 (regOne!2826 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))))))

(declare-fun e!291308 () Regex!1157)

(assert (=> b!477437 (= e!291308 e!291309)))

(declare-fun b!477438 () Bool)

(declare-fun e!291310 () Regex!1157)

(assert (=> b!477438 (= e!291310 EmptyLang!1157)))

(declare-fun b!477439 () Bool)

(assert (=> b!477439 (= e!291308 (Concat!2057 call!33489 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))))))

(declare-fun b!477440 () Bool)

(assert (=> b!477440 (= c!95524 ((_ is Union!1157) (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))))))

(declare-fun e!291307 () Regex!1157)

(assert (=> b!477440 (= e!291306 e!291307)))

(declare-fun b!477441 () Bool)

(assert (=> b!477441 (= e!291307 e!291308)))

(declare-fun c!95525 () Bool)

(assert (=> b!477441 (= c!95525 ((_ is Star!1157) (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))))))

(declare-fun bm!33484 () Bool)

(declare-fun call!33487 () Regex!1157)

(assert (=> bm!33484 (= call!33489 call!33487)))

(declare-fun b!477442 () Bool)

(assert (=> b!477442 (= e!291307 (Union!1157 call!33487 call!33488))))

(declare-fun b!477443 () Bool)

(assert (=> b!477443 (= e!291310 e!291306)))

(declare-fun c!95528 () Bool)

(assert (=> b!477443 (= c!95528 ((_ is ElementMatch!1157) (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))))))

(declare-fun b!477444 () Bool)

(assert (=> b!477444 (= e!291309 (Union!1157 (Concat!2057 call!33486 (regTwo!2826 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))) call!33488))))

(declare-fun d!180113 () Bool)

(declare-fun lt!210794 () Regex!1157)

(assert (=> d!180113 (validRegex!385 lt!210794)))

(assert (=> d!180113 (= lt!210794 e!291310)))

(declare-fun c!95527 () Bool)

(assert (=> d!180113 (= c!95527 (or ((_ is EmptyExpr!1157) (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))) ((_ is EmptyLang!1157) (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))))))

(assert (=> d!180113 (validRegex!385 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))))))

(assert (=> d!180113 (= (derivativeStep!243 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230))) c!12526) lt!210794)))

(declare-fun bm!33483 () Bool)

(assert (=> bm!33483 (= call!33487 (derivativeStep!243 (ite c!95524 (regOne!2827 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))) (ite c!95525 (reg!1486 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))) (regOne!2826 (ite c!95467 (regTwo!2827 (regOne!2827 r!20230)) (regTwo!2826 (regOne!2827 r!20230)))))) c!12526))))

(assert (= (and d!180113 c!95527) b!477438))

(assert (= (and d!180113 (not c!95527)) b!477443))

(assert (= (and b!477443 c!95528) b!477436))

(assert (= (and b!477443 (not c!95528)) b!477440))

(assert (= (and b!477440 c!95524) b!477442))

(assert (= (and b!477440 (not c!95524)) b!477441))

(assert (= (and b!477441 c!95525) b!477439))

(assert (= (and b!477441 (not c!95525)) b!477437))

(assert (= (and b!477437 c!95526) b!477444))

(assert (= (and b!477437 (not c!95526)) b!477435))

(assert (= (or b!477444 b!477435) bm!33481))

(assert (= (or b!477439 bm!33481) bm!33484))

(assert (= (or b!477442 b!477444) bm!33482))

(assert (= (or b!477442 bm!33484) bm!33483))

(declare-fun m!747861 () Bool)

(assert (=> bm!33482 m!747861))

(declare-fun m!747863 () Bool)

(assert (=> b!477437 m!747863))

(declare-fun m!747865 () Bool)

(assert (=> d!180113 m!747865))

(declare-fun m!747867 () Bool)

(assert (=> d!180113 m!747867))

(declare-fun m!747869 () Bool)

(assert (=> bm!33483 m!747869))

(assert (=> bm!33410 d!180113))

(declare-fun b!477448 () Bool)

(declare-fun e!291311 () Bool)

(declare-fun tp!133520 () Bool)

(declare-fun tp!133519 () Bool)

(assert (=> b!477448 (= e!291311 (and tp!133520 tp!133519))))

(assert (=> b!477125 (= tp!133387 e!291311)))

(declare-fun b!477445 () Bool)

(assert (=> b!477445 (= e!291311 tp_is_empty!2311)))

(declare-fun b!477446 () Bool)

(declare-fun tp!133521 () Bool)

(declare-fun tp!133518 () Bool)

(assert (=> b!477446 (= e!291311 (and tp!133521 tp!133518))))

(declare-fun b!477447 () Bool)

(declare-fun tp!133517 () Bool)

(assert (=> b!477447 (= e!291311 tp!133517)))

(assert (= (and b!477125 ((_ is ElementMatch!1157) (reg!1486 (regTwo!2827 r!20230)))) b!477445))

(assert (= (and b!477125 ((_ is Concat!2057) (reg!1486 (regTwo!2827 r!20230)))) b!477446))

(assert (= (and b!477125 ((_ is Star!1157) (reg!1486 (regTwo!2827 r!20230)))) b!477447))

(assert (= (and b!477125 ((_ is Union!1157) (reg!1486 (regTwo!2827 r!20230)))) b!477448))

(declare-fun b!477452 () Bool)

(declare-fun e!291312 () Bool)

(declare-fun tp!133525 () Bool)

(declare-fun tp!133524 () Bool)

(assert (=> b!477452 (= e!291312 (and tp!133525 tp!133524))))

(assert (=> b!477120 (= tp!133386 e!291312)))

(declare-fun b!477449 () Bool)

(assert (=> b!477449 (= e!291312 tp_is_empty!2311)))

(declare-fun b!477450 () Bool)

(declare-fun tp!133526 () Bool)

(declare-fun tp!133523 () Bool)

(assert (=> b!477450 (= e!291312 (and tp!133526 tp!133523))))

(declare-fun b!477451 () Bool)

(declare-fun tp!133522 () Bool)

(assert (=> b!477451 (= e!291312 tp!133522)))

(assert (= (and b!477120 ((_ is ElementMatch!1157) (regOne!2826 (regOne!2827 r!20230)))) b!477449))

(assert (= (and b!477120 ((_ is Concat!2057) (regOne!2826 (regOne!2827 r!20230)))) b!477450))

(assert (= (and b!477120 ((_ is Star!1157) (regOne!2826 (regOne!2827 r!20230)))) b!477451))

(assert (= (and b!477120 ((_ is Union!1157) (regOne!2826 (regOne!2827 r!20230)))) b!477452))

(declare-fun b!477456 () Bool)

(declare-fun e!291313 () Bool)

(declare-fun tp!133530 () Bool)

(declare-fun tp!133529 () Bool)

(assert (=> b!477456 (= e!291313 (and tp!133530 tp!133529))))

(assert (=> b!477120 (= tp!133383 e!291313)))

(declare-fun b!477453 () Bool)

(assert (=> b!477453 (= e!291313 tp_is_empty!2311)))

(declare-fun b!477454 () Bool)

(declare-fun tp!133531 () Bool)

(declare-fun tp!133528 () Bool)

(assert (=> b!477454 (= e!291313 (and tp!133531 tp!133528))))

(declare-fun b!477455 () Bool)

(declare-fun tp!133527 () Bool)

(assert (=> b!477455 (= e!291313 tp!133527)))

(assert (= (and b!477120 ((_ is ElementMatch!1157) (regTwo!2826 (regOne!2827 r!20230)))) b!477453))

(assert (= (and b!477120 ((_ is Concat!2057) (regTwo!2826 (regOne!2827 r!20230)))) b!477454))

(assert (= (and b!477120 ((_ is Star!1157) (regTwo!2826 (regOne!2827 r!20230)))) b!477455))

(assert (= (and b!477120 ((_ is Union!1157) (regTwo!2826 (regOne!2827 r!20230)))) b!477456))

(declare-fun b!477460 () Bool)

(declare-fun e!291314 () Bool)

(declare-fun tp!133535 () Bool)

(declare-fun tp!133534 () Bool)

(assert (=> b!477460 (= e!291314 (and tp!133535 tp!133534))))

(assert (=> b!477124 (= tp!133391 e!291314)))

(declare-fun b!477457 () Bool)

(assert (=> b!477457 (= e!291314 tp_is_empty!2311)))

(declare-fun b!477458 () Bool)

(declare-fun tp!133536 () Bool)

(declare-fun tp!133533 () Bool)

(assert (=> b!477458 (= e!291314 (and tp!133536 tp!133533))))

(declare-fun b!477459 () Bool)

(declare-fun tp!133532 () Bool)

(assert (=> b!477459 (= e!291314 tp!133532)))

(assert (= (and b!477124 ((_ is ElementMatch!1157) (regOne!2826 (regTwo!2827 r!20230)))) b!477457))

(assert (= (and b!477124 ((_ is Concat!2057) (regOne!2826 (regTwo!2827 r!20230)))) b!477458))

(assert (= (and b!477124 ((_ is Star!1157) (regOne!2826 (regTwo!2827 r!20230)))) b!477459))

(assert (= (and b!477124 ((_ is Union!1157) (regOne!2826 (regTwo!2827 r!20230)))) b!477460))

(declare-fun b!477464 () Bool)

(declare-fun e!291315 () Bool)

(declare-fun tp!133540 () Bool)

(declare-fun tp!133539 () Bool)

(assert (=> b!477464 (= e!291315 (and tp!133540 tp!133539))))

(assert (=> b!477124 (= tp!133388 e!291315)))

(declare-fun b!477461 () Bool)

(assert (=> b!477461 (= e!291315 tp_is_empty!2311)))

(declare-fun b!477462 () Bool)

(declare-fun tp!133541 () Bool)

(declare-fun tp!133538 () Bool)

(assert (=> b!477462 (= e!291315 (and tp!133541 tp!133538))))

(declare-fun b!477463 () Bool)

(declare-fun tp!133537 () Bool)

(assert (=> b!477463 (= e!291315 tp!133537)))

(assert (= (and b!477124 ((_ is ElementMatch!1157) (regTwo!2826 (regTwo!2827 r!20230)))) b!477461))

(assert (= (and b!477124 ((_ is Concat!2057) (regTwo!2826 (regTwo!2827 r!20230)))) b!477462))

(assert (= (and b!477124 ((_ is Star!1157) (regTwo!2826 (regTwo!2827 r!20230)))) b!477463))

(assert (= (and b!477124 ((_ is Union!1157) (regTwo!2826 (regTwo!2827 r!20230)))) b!477464))

(declare-fun b!477468 () Bool)

(declare-fun e!291316 () Bool)

(declare-fun tp!133545 () Bool)

(declare-fun tp!133544 () Bool)

(assert (=> b!477468 (= e!291316 (and tp!133545 tp!133544))))

(assert (=> b!477117 (= tp!133377 e!291316)))

(declare-fun b!477465 () Bool)

(assert (=> b!477465 (= e!291316 tp_is_empty!2311)))

(declare-fun b!477466 () Bool)

(declare-fun tp!133546 () Bool)

(declare-fun tp!133543 () Bool)

(assert (=> b!477466 (= e!291316 (and tp!133546 tp!133543))))

(declare-fun b!477467 () Bool)

(declare-fun tp!133542 () Bool)

(assert (=> b!477467 (= e!291316 tp!133542)))

(assert (= (and b!477117 ((_ is ElementMatch!1157) (reg!1486 (regTwo!2826 r!20230)))) b!477465))

(assert (= (and b!477117 ((_ is Concat!2057) (reg!1486 (regTwo!2826 r!20230)))) b!477466))

(assert (= (and b!477117 ((_ is Star!1157) (reg!1486 (regTwo!2826 r!20230)))) b!477467))

(assert (= (and b!477117 ((_ is Union!1157) (reg!1486 (regTwo!2826 r!20230)))) b!477468))

(declare-fun b!477472 () Bool)

(declare-fun e!291317 () Bool)

(declare-fun tp!133550 () Bool)

(declare-fun tp!133549 () Bool)

(assert (=> b!477472 (= e!291317 (and tp!133550 tp!133549))))

(assert (=> b!477112 (= tp!133376 e!291317)))

(declare-fun b!477469 () Bool)

(assert (=> b!477469 (= e!291317 tp_is_empty!2311)))

(declare-fun b!477470 () Bool)

(declare-fun tp!133551 () Bool)

(declare-fun tp!133548 () Bool)

(assert (=> b!477470 (= e!291317 (and tp!133551 tp!133548))))

(declare-fun b!477471 () Bool)

(declare-fun tp!133547 () Bool)

(assert (=> b!477471 (= e!291317 tp!133547)))

(assert (= (and b!477112 ((_ is ElementMatch!1157) (regOne!2826 (regOne!2826 r!20230)))) b!477469))

(assert (= (and b!477112 ((_ is Concat!2057) (regOne!2826 (regOne!2826 r!20230)))) b!477470))

(assert (= (and b!477112 ((_ is Star!1157) (regOne!2826 (regOne!2826 r!20230)))) b!477471))

(assert (= (and b!477112 ((_ is Union!1157) (regOne!2826 (regOne!2826 r!20230)))) b!477472))

(declare-fun b!477476 () Bool)

(declare-fun e!291318 () Bool)

(declare-fun tp!133555 () Bool)

(declare-fun tp!133554 () Bool)

(assert (=> b!477476 (= e!291318 (and tp!133555 tp!133554))))

(assert (=> b!477112 (= tp!133373 e!291318)))

(declare-fun b!477473 () Bool)

(assert (=> b!477473 (= e!291318 tp_is_empty!2311)))

(declare-fun b!477474 () Bool)

(declare-fun tp!133556 () Bool)

(declare-fun tp!133553 () Bool)

(assert (=> b!477474 (= e!291318 (and tp!133556 tp!133553))))

(declare-fun b!477475 () Bool)

(declare-fun tp!133552 () Bool)

(assert (=> b!477475 (= e!291318 tp!133552)))

(assert (= (and b!477112 ((_ is ElementMatch!1157) (regTwo!2826 (regOne!2826 r!20230)))) b!477473))

(assert (= (and b!477112 ((_ is Concat!2057) (regTwo!2826 (regOne!2826 r!20230)))) b!477474))

(assert (= (and b!477112 ((_ is Star!1157) (regTwo!2826 (regOne!2826 r!20230)))) b!477475))

(assert (= (and b!477112 ((_ is Union!1157) (regTwo!2826 (regOne!2826 r!20230)))) b!477476))

(declare-fun b!477480 () Bool)

(declare-fun e!291319 () Bool)

(declare-fun tp!133560 () Bool)

(declare-fun tp!133559 () Bool)

(assert (=> b!477480 (= e!291319 (and tp!133560 tp!133559))))

(assert (=> b!477126 (= tp!133390 e!291319)))

(declare-fun b!477477 () Bool)

(assert (=> b!477477 (= e!291319 tp_is_empty!2311)))

(declare-fun b!477478 () Bool)

(declare-fun tp!133561 () Bool)

(declare-fun tp!133558 () Bool)

(assert (=> b!477478 (= e!291319 (and tp!133561 tp!133558))))

(declare-fun b!477479 () Bool)

(declare-fun tp!133557 () Bool)

(assert (=> b!477479 (= e!291319 tp!133557)))

(assert (= (and b!477126 ((_ is ElementMatch!1157) (regOne!2827 (regTwo!2827 r!20230)))) b!477477))

(assert (= (and b!477126 ((_ is Concat!2057) (regOne!2827 (regTwo!2827 r!20230)))) b!477478))

(assert (= (and b!477126 ((_ is Star!1157) (regOne!2827 (regTwo!2827 r!20230)))) b!477479))

(assert (= (and b!477126 ((_ is Union!1157) (regOne!2827 (regTwo!2827 r!20230)))) b!477480))

(declare-fun b!477484 () Bool)

(declare-fun e!291320 () Bool)

(declare-fun tp!133565 () Bool)

(declare-fun tp!133564 () Bool)

(assert (=> b!477484 (= e!291320 (and tp!133565 tp!133564))))

(assert (=> b!477126 (= tp!133389 e!291320)))

(declare-fun b!477481 () Bool)

(assert (=> b!477481 (= e!291320 tp_is_empty!2311)))

(declare-fun b!477482 () Bool)

(declare-fun tp!133566 () Bool)

(declare-fun tp!133563 () Bool)

(assert (=> b!477482 (= e!291320 (and tp!133566 tp!133563))))

(declare-fun b!477483 () Bool)

(declare-fun tp!133562 () Bool)

(assert (=> b!477483 (= e!291320 tp!133562)))

(assert (= (and b!477126 ((_ is ElementMatch!1157) (regTwo!2827 (regTwo!2827 r!20230)))) b!477481))

(assert (= (and b!477126 ((_ is Concat!2057) (regTwo!2827 (regTwo!2827 r!20230)))) b!477482))

(assert (= (and b!477126 ((_ is Star!1157) (regTwo!2827 (regTwo!2827 r!20230)))) b!477483))

(assert (= (and b!477126 ((_ is Union!1157) (regTwo!2827 (regTwo!2827 r!20230)))) b!477484))

(declare-fun b!477488 () Bool)

(declare-fun e!291321 () Bool)

(declare-fun tp!133570 () Bool)

(declare-fun tp!133569 () Bool)

(assert (=> b!477488 (= e!291321 (and tp!133570 tp!133569))))

(assert (=> b!477121 (= tp!133382 e!291321)))

(declare-fun b!477485 () Bool)

(assert (=> b!477485 (= e!291321 tp_is_empty!2311)))

(declare-fun b!477486 () Bool)

(declare-fun tp!133571 () Bool)

(declare-fun tp!133568 () Bool)

(assert (=> b!477486 (= e!291321 (and tp!133571 tp!133568))))

(declare-fun b!477487 () Bool)

(declare-fun tp!133567 () Bool)

(assert (=> b!477487 (= e!291321 tp!133567)))

(assert (= (and b!477121 ((_ is ElementMatch!1157) (reg!1486 (regOne!2827 r!20230)))) b!477485))

(assert (= (and b!477121 ((_ is Concat!2057) (reg!1486 (regOne!2827 r!20230)))) b!477486))

(assert (= (and b!477121 ((_ is Star!1157) (reg!1486 (regOne!2827 r!20230)))) b!477487))

(assert (= (and b!477121 ((_ is Union!1157) (reg!1486 (regOne!2827 r!20230)))) b!477488))

(declare-fun b!477492 () Bool)

(declare-fun e!291322 () Bool)

(declare-fun tp!133575 () Bool)

(declare-fun tp!133574 () Bool)

(assert (=> b!477492 (= e!291322 (and tp!133575 tp!133574))))

(assert (=> b!477116 (= tp!133381 e!291322)))

(declare-fun b!477489 () Bool)

(assert (=> b!477489 (= e!291322 tp_is_empty!2311)))

(declare-fun b!477490 () Bool)

(declare-fun tp!133576 () Bool)

(declare-fun tp!133573 () Bool)

(assert (=> b!477490 (= e!291322 (and tp!133576 tp!133573))))

(declare-fun b!477491 () Bool)

(declare-fun tp!133572 () Bool)

(assert (=> b!477491 (= e!291322 tp!133572)))

(assert (= (and b!477116 ((_ is ElementMatch!1157) (regOne!2826 (regTwo!2826 r!20230)))) b!477489))

(assert (= (and b!477116 ((_ is Concat!2057) (regOne!2826 (regTwo!2826 r!20230)))) b!477490))

(assert (= (and b!477116 ((_ is Star!1157) (regOne!2826 (regTwo!2826 r!20230)))) b!477491))

(assert (= (and b!477116 ((_ is Union!1157) (regOne!2826 (regTwo!2826 r!20230)))) b!477492))

(declare-fun b!477496 () Bool)

(declare-fun e!291323 () Bool)

(declare-fun tp!133580 () Bool)

(declare-fun tp!133579 () Bool)

(assert (=> b!477496 (= e!291323 (and tp!133580 tp!133579))))

(assert (=> b!477116 (= tp!133378 e!291323)))

(declare-fun b!477493 () Bool)

(assert (=> b!477493 (= e!291323 tp_is_empty!2311)))

(declare-fun b!477494 () Bool)

(declare-fun tp!133581 () Bool)

(declare-fun tp!133578 () Bool)

(assert (=> b!477494 (= e!291323 (and tp!133581 tp!133578))))

(declare-fun b!477495 () Bool)

(declare-fun tp!133577 () Bool)

(assert (=> b!477495 (= e!291323 tp!133577)))

(assert (= (and b!477116 ((_ is ElementMatch!1157) (regTwo!2826 (regTwo!2826 r!20230)))) b!477493))

(assert (= (and b!477116 ((_ is Concat!2057) (regTwo!2826 (regTwo!2826 r!20230)))) b!477494))

(assert (= (and b!477116 ((_ is Star!1157) (regTwo!2826 (regTwo!2826 r!20230)))) b!477495))

(assert (= (and b!477116 ((_ is Union!1157) (regTwo!2826 (regTwo!2826 r!20230)))) b!477496))

(declare-fun b!477500 () Bool)

(declare-fun e!291324 () Bool)

(declare-fun tp!133585 () Bool)

(declare-fun tp!133584 () Bool)

(assert (=> b!477500 (= e!291324 (and tp!133585 tp!133584))))

(assert (=> b!477109 (= tp!133367 e!291324)))

(declare-fun b!477497 () Bool)

(assert (=> b!477497 (= e!291324 tp_is_empty!2311)))

(declare-fun b!477498 () Bool)

(declare-fun tp!133586 () Bool)

(declare-fun tp!133583 () Bool)

(assert (=> b!477498 (= e!291324 (and tp!133586 tp!133583))))

(declare-fun b!477499 () Bool)

(declare-fun tp!133582 () Bool)

(assert (=> b!477499 (= e!291324 tp!133582)))

(assert (= (and b!477109 ((_ is ElementMatch!1157) (reg!1486 (reg!1486 r!20230)))) b!477497))

(assert (= (and b!477109 ((_ is Concat!2057) (reg!1486 (reg!1486 r!20230)))) b!477498))

(assert (= (and b!477109 ((_ is Star!1157) (reg!1486 (reg!1486 r!20230)))) b!477499))

(assert (= (and b!477109 ((_ is Union!1157) (reg!1486 (reg!1486 r!20230)))) b!477500))

(declare-fun b!477504 () Bool)

(declare-fun e!291325 () Bool)

(declare-fun tp!133590 () Bool)

(declare-fun tp!133589 () Bool)

(assert (=> b!477504 (= e!291325 (and tp!133590 tp!133589))))

(assert (=> b!477118 (= tp!133380 e!291325)))

(declare-fun b!477501 () Bool)

(assert (=> b!477501 (= e!291325 tp_is_empty!2311)))

(declare-fun b!477502 () Bool)

(declare-fun tp!133591 () Bool)

(declare-fun tp!133588 () Bool)

(assert (=> b!477502 (= e!291325 (and tp!133591 tp!133588))))

(declare-fun b!477503 () Bool)

(declare-fun tp!133587 () Bool)

(assert (=> b!477503 (= e!291325 tp!133587)))

(assert (= (and b!477118 ((_ is ElementMatch!1157) (regOne!2827 (regTwo!2826 r!20230)))) b!477501))

(assert (= (and b!477118 ((_ is Concat!2057) (regOne!2827 (regTwo!2826 r!20230)))) b!477502))

(assert (= (and b!477118 ((_ is Star!1157) (regOne!2827 (regTwo!2826 r!20230)))) b!477503))

(assert (= (and b!477118 ((_ is Union!1157) (regOne!2827 (regTwo!2826 r!20230)))) b!477504))

(declare-fun b!477508 () Bool)

(declare-fun e!291326 () Bool)

(declare-fun tp!133595 () Bool)

(declare-fun tp!133594 () Bool)

(assert (=> b!477508 (= e!291326 (and tp!133595 tp!133594))))

(assert (=> b!477118 (= tp!133379 e!291326)))

(declare-fun b!477505 () Bool)

(assert (=> b!477505 (= e!291326 tp_is_empty!2311)))

(declare-fun b!477506 () Bool)

(declare-fun tp!133596 () Bool)

(declare-fun tp!133593 () Bool)

(assert (=> b!477506 (= e!291326 (and tp!133596 tp!133593))))

(declare-fun b!477507 () Bool)

(declare-fun tp!133592 () Bool)

(assert (=> b!477507 (= e!291326 tp!133592)))

(assert (= (and b!477118 ((_ is ElementMatch!1157) (regTwo!2827 (regTwo!2826 r!20230)))) b!477505))

(assert (= (and b!477118 ((_ is Concat!2057) (regTwo!2827 (regTwo!2826 r!20230)))) b!477506))

(assert (= (and b!477118 ((_ is Star!1157) (regTwo!2827 (regTwo!2826 r!20230)))) b!477507))

(assert (= (and b!477118 ((_ is Union!1157) (regTwo!2827 (regTwo!2826 r!20230)))) b!477508))

(declare-fun b!477512 () Bool)

(declare-fun e!291327 () Bool)

(declare-fun tp!133600 () Bool)

(declare-fun tp!133599 () Bool)

(assert (=> b!477512 (= e!291327 (and tp!133600 tp!133599))))

(assert (=> b!477113 (= tp!133372 e!291327)))

(declare-fun b!477509 () Bool)

(assert (=> b!477509 (= e!291327 tp_is_empty!2311)))

(declare-fun b!477510 () Bool)

(declare-fun tp!133601 () Bool)

(declare-fun tp!133598 () Bool)

(assert (=> b!477510 (= e!291327 (and tp!133601 tp!133598))))

(declare-fun b!477511 () Bool)

(declare-fun tp!133597 () Bool)

(assert (=> b!477511 (= e!291327 tp!133597)))

(assert (= (and b!477113 ((_ is ElementMatch!1157) (reg!1486 (regOne!2826 r!20230)))) b!477509))

(assert (= (and b!477113 ((_ is Concat!2057) (reg!1486 (regOne!2826 r!20230)))) b!477510))

(assert (= (and b!477113 ((_ is Star!1157) (reg!1486 (regOne!2826 r!20230)))) b!477511))

(assert (= (and b!477113 ((_ is Union!1157) (reg!1486 (regOne!2826 r!20230)))) b!477512))

(declare-fun b!477516 () Bool)

(declare-fun e!291328 () Bool)

(declare-fun tp!133605 () Bool)

(declare-fun tp!133604 () Bool)

(assert (=> b!477516 (= e!291328 (and tp!133605 tp!133604))))

(assert (=> b!477108 (= tp!133371 e!291328)))

(declare-fun b!477513 () Bool)

(assert (=> b!477513 (= e!291328 tp_is_empty!2311)))

(declare-fun b!477514 () Bool)

(declare-fun tp!133606 () Bool)

(declare-fun tp!133603 () Bool)

(assert (=> b!477514 (= e!291328 (and tp!133606 tp!133603))))

(declare-fun b!477515 () Bool)

(declare-fun tp!133602 () Bool)

(assert (=> b!477515 (= e!291328 tp!133602)))

(assert (= (and b!477108 ((_ is ElementMatch!1157) (regOne!2826 (reg!1486 r!20230)))) b!477513))

(assert (= (and b!477108 ((_ is Concat!2057) (regOne!2826 (reg!1486 r!20230)))) b!477514))

(assert (= (and b!477108 ((_ is Star!1157) (regOne!2826 (reg!1486 r!20230)))) b!477515))

(assert (= (and b!477108 ((_ is Union!1157) (regOne!2826 (reg!1486 r!20230)))) b!477516))

(declare-fun b!477520 () Bool)

(declare-fun e!291329 () Bool)

(declare-fun tp!133610 () Bool)

(declare-fun tp!133609 () Bool)

(assert (=> b!477520 (= e!291329 (and tp!133610 tp!133609))))

(assert (=> b!477108 (= tp!133368 e!291329)))

(declare-fun b!477517 () Bool)

(assert (=> b!477517 (= e!291329 tp_is_empty!2311)))

(declare-fun b!477518 () Bool)

(declare-fun tp!133611 () Bool)

(declare-fun tp!133608 () Bool)

(assert (=> b!477518 (= e!291329 (and tp!133611 tp!133608))))

(declare-fun b!477519 () Bool)

(declare-fun tp!133607 () Bool)

(assert (=> b!477519 (= e!291329 tp!133607)))

(assert (= (and b!477108 ((_ is ElementMatch!1157) (regTwo!2826 (reg!1486 r!20230)))) b!477517))

(assert (= (and b!477108 ((_ is Concat!2057) (regTwo!2826 (reg!1486 r!20230)))) b!477518))

(assert (= (and b!477108 ((_ is Star!1157) (regTwo!2826 (reg!1486 r!20230)))) b!477519))

(assert (= (and b!477108 ((_ is Union!1157) (regTwo!2826 (reg!1486 r!20230)))) b!477520))

(declare-fun b!477524 () Bool)

(declare-fun e!291330 () Bool)

(declare-fun tp!133615 () Bool)

(declare-fun tp!133614 () Bool)

(assert (=> b!477524 (= e!291330 (and tp!133615 tp!133614))))

(assert (=> b!477122 (= tp!133385 e!291330)))

(declare-fun b!477521 () Bool)

(assert (=> b!477521 (= e!291330 tp_is_empty!2311)))

(declare-fun b!477522 () Bool)

(declare-fun tp!133616 () Bool)

(declare-fun tp!133613 () Bool)

(assert (=> b!477522 (= e!291330 (and tp!133616 tp!133613))))

(declare-fun b!477523 () Bool)

(declare-fun tp!133612 () Bool)

(assert (=> b!477523 (= e!291330 tp!133612)))

(assert (= (and b!477122 ((_ is ElementMatch!1157) (regOne!2827 (regOne!2827 r!20230)))) b!477521))

(assert (= (and b!477122 ((_ is Concat!2057) (regOne!2827 (regOne!2827 r!20230)))) b!477522))

(assert (= (and b!477122 ((_ is Star!1157) (regOne!2827 (regOne!2827 r!20230)))) b!477523))

(assert (= (and b!477122 ((_ is Union!1157) (regOne!2827 (regOne!2827 r!20230)))) b!477524))

(declare-fun b!477528 () Bool)

(declare-fun e!291331 () Bool)

(declare-fun tp!133620 () Bool)

(declare-fun tp!133619 () Bool)

(assert (=> b!477528 (= e!291331 (and tp!133620 tp!133619))))

(assert (=> b!477122 (= tp!133384 e!291331)))

(declare-fun b!477525 () Bool)

(assert (=> b!477525 (= e!291331 tp_is_empty!2311)))

(declare-fun b!477526 () Bool)

(declare-fun tp!133621 () Bool)

(declare-fun tp!133618 () Bool)

(assert (=> b!477526 (= e!291331 (and tp!133621 tp!133618))))

(declare-fun b!477527 () Bool)

(declare-fun tp!133617 () Bool)

(assert (=> b!477527 (= e!291331 tp!133617)))

(assert (= (and b!477122 ((_ is ElementMatch!1157) (regTwo!2827 (regOne!2827 r!20230)))) b!477525))

(assert (= (and b!477122 ((_ is Concat!2057) (regTwo!2827 (regOne!2827 r!20230)))) b!477526))

(assert (= (and b!477122 ((_ is Star!1157) (regTwo!2827 (regOne!2827 r!20230)))) b!477527))

(assert (= (and b!477122 ((_ is Union!1157) (regTwo!2827 (regOne!2827 r!20230)))) b!477528))

(declare-fun b!477532 () Bool)

(declare-fun e!291332 () Bool)

(declare-fun tp!133625 () Bool)

(declare-fun tp!133624 () Bool)

(assert (=> b!477532 (= e!291332 (and tp!133625 tp!133624))))

(assert (=> b!477110 (= tp!133370 e!291332)))

(declare-fun b!477529 () Bool)

(assert (=> b!477529 (= e!291332 tp_is_empty!2311)))

(declare-fun b!477530 () Bool)

(declare-fun tp!133626 () Bool)

(declare-fun tp!133623 () Bool)

(assert (=> b!477530 (= e!291332 (and tp!133626 tp!133623))))

(declare-fun b!477531 () Bool)

(declare-fun tp!133622 () Bool)

(assert (=> b!477531 (= e!291332 tp!133622)))

(assert (= (and b!477110 ((_ is ElementMatch!1157) (regOne!2827 (reg!1486 r!20230)))) b!477529))

(assert (= (and b!477110 ((_ is Concat!2057) (regOne!2827 (reg!1486 r!20230)))) b!477530))

(assert (= (and b!477110 ((_ is Star!1157) (regOne!2827 (reg!1486 r!20230)))) b!477531))

(assert (= (and b!477110 ((_ is Union!1157) (regOne!2827 (reg!1486 r!20230)))) b!477532))

(declare-fun b!477536 () Bool)

(declare-fun e!291333 () Bool)

(declare-fun tp!133630 () Bool)

(declare-fun tp!133629 () Bool)

(assert (=> b!477536 (= e!291333 (and tp!133630 tp!133629))))

(assert (=> b!477110 (= tp!133369 e!291333)))

(declare-fun b!477533 () Bool)

(assert (=> b!477533 (= e!291333 tp_is_empty!2311)))

(declare-fun b!477534 () Bool)

(declare-fun tp!133631 () Bool)

(declare-fun tp!133628 () Bool)

(assert (=> b!477534 (= e!291333 (and tp!133631 tp!133628))))

(declare-fun b!477535 () Bool)

(declare-fun tp!133627 () Bool)

(assert (=> b!477535 (= e!291333 tp!133627)))

(assert (= (and b!477110 ((_ is ElementMatch!1157) (regTwo!2827 (reg!1486 r!20230)))) b!477533))

(assert (= (and b!477110 ((_ is Concat!2057) (regTwo!2827 (reg!1486 r!20230)))) b!477534))

(assert (= (and b!477110 ((_ is Star!1157) (regTwo!2827 (reg!1486 r!20230)))) b!477535))

(assert (= (and b!477110 ((_ is Union!1157) (regTwo!2827 (reg!1486 r!20230)))) b!477536))

(declare-fun b!477540 () Bool)

(declare-fun e!291334 () Bool)

(declare-fun tp!133635 () Bool)

(declare-fun tp!133634 () Bool)

(assert (=> b!477540 (= e!291334 (and tp!133635 tp!133634))))

(assert (=> b!477114 (= tp!133375 e!291334)))

(declare-fun b!477537 () Bool)

(assert (=> b!477537 (= e!291334 tp_is_empty!2311)))

(declare-fun b!477538 () Bool)

(declare-fun tp!133636 () Bool)

(declare-fun tp!133633 () Bool)

(assert (=> b!477538 (= e!291334 (and tp!133636 tp!133633))))

(declare-fun b!477539 () Bool)

(declare-fun tp!133632 () Bool)

(assert (=> b!477539 (= e!291334 tp!133632)))

(assert (= (and b!477114 ((_ is ElementMatch!1157) (regOne!2827 (regOne!2826 r!20230)))) b!477537))

(assert (= (and b!477114 ((_ is Concat!2057) (regOne!2827 (regOne!2826 r!20230)))) b!477538))

(assert (= (and b!477114 ((_ is Star!1157) (regOne!2827 (regOne!2826 r!20230)))) b!477539))

(assert (= (and b!477114 ((_ is Union!1157) (regOne!2827 (regOne!2826 r!20230)))) b!477540))

(declare-fun b!477544 () Bool)

(declare-fun e!291335 () Bool)

(declare-fun tp!133640 () Bool)

(declare-fun tp!133639 () Bool)

(assert (=> b!477544 (= e!291335 (and tp!133640 tp!133639))))

(assert (=> b!477114 (= tp!133374 e!291335)))

(declare-fun b!477541 () Bool)

(assert (=> b!477541 (= e!291335 tp_is_empty!2311)))

(declare-fun b!477542 () Bool)

(declare-fun tp!133641 () Bool)

(declare-fun tp!133638 () Bool)

(assert (=> b!477542 (= e!291335 (and tp!133641 tp!133638))))

(declare-fun b!477543 () Bool)

(declare-fun tp!133637 () Bool)

(assert (=> b!477543 (= e!291335 tp!133637)))

(assert (= (and b!477114 ((_ is ElementMatch!1157) (regTwo!2827 (regOne!2826 r!20230)))) b!477541))

(assert (= (and b!477114 ((_ is Concat!2057) (regTwo!2827 (regOne!2826 r!20230)))) b!477542))

(assert (= (and b!477114 ((_ is Star!1157) (regTwo!2827 (regOne!2826 r!20230)))) b!477543))

(assert (= (and b!477114 ((_ is Union!1157) (regTwo!2827 (regOne!2826 r!20230)))) b!477544))

(check-sat (not b!477524) (not b!477527) (not bm!33467) (not b!477496) (not b!477447) (not b!477510) (not b!477538) (not b!477448) (not b!477486) (not b!477411) (not b!477420) (not b!477542) (not bm!33472) (not b!477478) (not b!477466) (not b!477534) (not b!477540) (not b!477475) (not b!477476) (not b!477402) (not b!477512) (not b!477450) (not b!477454) (not bm!33466) (not b!477544) (not b!477451) (not b!477488) (not b!477518) (not b!477384) (not b!477464) (not b!477483) (not b!477503) (not b!477516) (not d!180111) (not b!477480) (not b!477482) (not b!477531) (not b!477460) (not bm!33464) (not b!477492) (not bm!33458) (not b!477530) (not b!477458) (not b!477522) (not b!477539) (not b!477504) (not b!477511) (not d!180077) (not b!477528) (not bm!33475) (not b!477526) (not b!477462) (not b!477490) (not b!477514) (not b!477452) (not b!477467) (not b!477487) (not b!477472) (not b!477508) (not b!477375) (not bm!33482) (not b!477499) (not b!477491) (not b!477506) (not b!477468) (not bm!33483) (not b!477500) (not b!477455) (not d!180093) (not d!180109) (not bm!33461) (not b!477437) (not b!477479) (not bm!33453) (not bm!33470) (not d!180113) (not b!477515) (not b!477484) (not d!180105) (not bm!33469) (not bm!33457) (not b!477494) (not b!477532) (not b!477498) (not b!477446) (not bm!33476) (not b!477507) (not b!477358) (not bm!33462) (not b!477520) (not b!477470) (not d!180107) (not b!477523) tp_is_empty!2311 (not b!477519) (not d!180091) (not bm!33479) (not bm!33459) (not bm!33478) (not b!477463) (not bm!33455) (not b!477471) (not b!477502) (not b!477495) (not b!477543) (not b!477535) (not b!477536) (not b!477474) (not d!180087) (not b!477459) (not b!477393) (not bm!33454) (not b!477456) (not bm!33473) (not bm!33480))
(check-sat)
