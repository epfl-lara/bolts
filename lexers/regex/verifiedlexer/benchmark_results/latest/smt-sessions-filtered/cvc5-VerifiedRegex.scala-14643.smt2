; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756754 () Bool)

(assert start!756754)

(declare-fun b!8035146 () Bool)

(declare-fun e!4733198 () Bool)

(declare-fun tp!2405775 () Bool)

(declare-fun tp!2405778 () Bool)

(assert (=> b!8035146 (= e!4733198 (and tp!2405775 tp!2405778))))

(declare-fun res!3176942 () Bool)

(declare-fun e!4733199 () Bool)

(assert (=> start!756754 (=> (not res!3176942) (not e!4733199))))

(declare-datatypes ((C!43814 0))(
  ( (C!43815 (val!32683 Int)) )
))
(declare-datatypes ((Regex!21738 0))(
  ( (ElementMatch!21738 (c!1474035 C!43814)) (Concat!30741 (regOne!43988 Regex!21738) (regTwo!43988 Regex!21738)) (EmptyExpr!21738) (Star!21738 (reg!22067 Regex!21738)) (EmptyLang!21738) (Union!21738 (regOne!43989 Regex!21738) (regTwo!43989 Regex!21738)) )
))
(declare-fun r!13107 () Regex!21738)

(declare-fun validRegex!12034 (Regex!21738) Bool)

(assert (=> start!756754 (= res!3176942 (validRegex!12034 r!13107))))

(assert (=> start!756754 e!4733199))

(assert (=> start!756754 e!4733198))

(declare-fun tp_is_empty!54471 () Bool)

(assert (=> start!756754 tp_is_empty!54471))

(declare-fun b!8035147 () Bool)

(declare-fun res!3176943 () Bool)

(assert (=> b!8035147 (=> (not res!3176943) (not e!4733199))))

(assert (=> b!8035147 (= res!3176943 (and (not (is-EmptyExpr!21738 r!13107)) (not (is-EmptyLang!21738 r!13107)) (not (is-ElementMatch!21738 r!13107)) (is-Union!21738 r!13107)))))

(declare-fun b!8035148 () Bool)

(declare-fun tp!2405777 () Bool)

(assert (=> b!8035148 (= e!4733198 tp!2405777)))

(declare-fun b!8035149 () Bool)

(declare-fun a!2390 () C!43814)

(declare-fun derivativeStep!6661 (Regex!21738 C!43814) Regex!21738)

(assert (=> b!8035149 (= e!4733199 (not (validRegex!12034 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390)))))))

(declare-fun b!8035150 () Bool)

(declare-fun tp!2405774 () Bool)

(declare-fun tp!2405776 () Bool)

(assert (=> b!8035150 (= e!4733198 (and tp!2405774 tp!2405776))))

(declare-fun b!8035151 () Bool)

(assert (=> b!8035151 (= e!4733198 tp_is_empty!54471)))

(assert (= (and start!756754 res!3176942) b!8035147))

(assert (= (and b!8035147 res!3176943) b!8035149))

(assert (= (and start!756754 (is-ElementMatch!21738 r!13107)) b!8035151))

(assert (= (and start!756754 (is-Concat!30741 r!13107)) b!8035150))

(assert (= (and start!756754 (is-Star!21738 r!13107)) b!8035148))

(assert (= (and start!756754 (is-Union!21738 r!13107)) b!8035146))

(declare-fun m!8393106 () Bool)

(assert (=> start!756754 m!8393106))

(declare-fun m!8393108 () Bool)

(assert (=> b!8035149 m!8393108))

(declare-fun m!8393110 () Bool)

(assert (=> b!8035149 m!8393110))

(declare-fun m!8393112 () Bool)

(assert (=> b!8035149 m!8393112))

(push 1)

(assert (not b!8035149))

(assert (not b!8035148))

(assert (not b!8035150))

(assert (not start!756754))

(assert tp_is_empty!54471)

(assert (not b!8035146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8035188 () Bool)

(declare-fun e!4733220 () Bool)

(declare-fun e!4733225 () Bool)

(assert (=> b!8035188 (= e!4733220 e!4733225)))

(declare-fun c!1474041 () Bool)

(assert (=> b!8035188 (= c!1474041 (is-Star!21738 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))))))

(declare-fun b!8035189 () Bool)

(declare-fun e!4733224 () Bool)

(assert (=> b!8035189 (= e!4733225 e!4733224)))

(declare-fun c!1474042 () Bool)

(assert (=> b!8035189 (= c!1474042 (is-Union!21738 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))))))

(declare-fun call!745574 () Bool)

(declare-fun bm!745568 () Bool)

(assert (=> bm!745568 (= call!745574 (validRegex!12034 (ite c!1474041 (reg!22067 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))) (ite c!1474042 (regOne!43989 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))) (regOne!43988 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390)))))))))

(declare-fun bm!745569 () Bool)

(declare-fun call!745573 () Bool)

(assert (=> bm!745569 (= call!745573 call!745574)))

(declare-fun d!2394958 () Bool)

(declare-fun res!3176961 () Bool)

(assert (=> d!2394958 (=> res!3176961 e!4733220)))

(assert (=> d!2394958 (= res!3176961 (is-ElementMatch!21738 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))))))

(assert (=> d!2394958 (= (validRegex!12034 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))) e!4733220)))

(declare-fun b!8035190 () Bool)

(declare-fun e!4733226 () Bool)

(assert (=> b!8035190 (= e!4733225 e!4733226)))

(declare-fun res!3176960 () Bool)

(declare-fun nullable!9763 (Regex!21738) Bool)

(assert (=> b!8035190 (= res!3176960 (not (nullable!9763 (reg!22067 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))))))))

(assert (=> b!8035190 (=> (not res!3176960) (not e!4733226))))

(declare-fun bm!745570 () Bool)

(declare-fun call!745575 () Bool)

(assert (=> bm!745570 (= call!745575 (validRegex!12034 (ite c!1474042 (regTwo!43989 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))) (regTwo!43988 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390))))))))

(declare-fun b!8035191 () Bool)

(assert (=> b!8035191 (= e!4733226 call!745574)))

(declare-fun b!8035192 () Bool)

(declare-fun e!4733223 () Bool)

(declare-fun e!4733222 () Bool)

(assert (=> b!8035192 (= e!4733223 e!4733222)))

(declare-fun res!3176964 () Bool)

(assert (=> b!8035192 (=> (not res!3176964) (not e!4733222))))

(assert (=> b!8035192 (= res!3176964 call!745573)))

(declare-fun b!8035193 () Bool)

(assert (=> b!8035193 (= e!4733222 call!745575)))

(declare-fun b!8035194 () Bool)

(declare-fun e!4733221 () Bool)

(assert (=> b!8035194 (= e!4733221 call!745575)))

(declare-fun b!8035195 () Bool)

(declare-fun res!3176963 () Bool)

(assert (=> b!8035195 (=> (not res!3176963) (not e!4733221))))

(assert (=> b!8035195 (= res!3176963 call!745573)))

(assert (=> b!8035195 (= e!4733224 e!4733221)))

(declare-fun b!8035196 () Bool)

(declare-fun res!3176962 () Bool)

(assert (=> b!8035196 (=> res!3176962 e!4733223)))

(assert (=> b!8035196 (= res!3176962 (not (is-Concat!30741 (Union!21738 (derivativeStep!6661 (regOne!43989 r!13107) a!2390) (derivativeStep!6661 (regTwo!43989 r!13107) a!2390)))))))

(assert (=> b!8035196 (= e!4733224 e!4733223)))

(assert (= (and d!2394958 (not res!3176961)) b!8035188))

(assert (= (and b!8035188 c!1474041) b!8035190))

(assert (= (and b!8035188 (not c!1474041)) b!8035189))

(assert (= (and b!8035190 res!3176960) b!8035191))

(assert (= (and b!8035189 c!1474042) b!8035195))

(assert (= (and b!8035189 (not c!1474042)) b!8035196))

(assert (= (and b!8035195 res!3176963) b!8035194))

(assert (= (and b!8035196 (not res!3176962)) b!8035192))

(assert (= (and b!8035192 res!3176964) b!8035193))

(assert (= (or b!8035194 b!8035193) bm!745570))

(assert (= (or b!8035195 b!8035192) bm!745569))

(assert (= (or b!8035191 bm!745569) bm!745568))

(declare-fun m!8393122 () Bool)

(assert (=> bm!745568 m!8393122))

(declare-fun m!8393124 () Bool)

(assert (=> b!8035190 m!8393124))

(declare-fun m!8393126 () Bool)

(assert (=> bm!745570 m!8393126))

(assert (=> b!8035149 d!2394958))

(declare-fun b!8035244 () Bool)

(declare-fun c!1474063 () Bool)

(assert (=> b!8035244 (= c!1474063 (nullable!9763 (regOne!43988 (regOne!43989 r!13107))))))

(declare-fun e!4733262 () Regex!21738)

(declare-fun e!4733259 () Regex!21738)

(assert (=> b!8035244 (= e!4733262 e!4733259)))

(declare-fun b!8035245 () Bool)

(declare-fun call!745594 () Regex!21738)

(assert (=> b!8035245 (= e!4733262 (Concat!30741 call!745594 (regOne!43989 r!13107)))))

(declare-fun b!8035246 () Bool)

(declare-fun e!4733258 () Regex!21738)

(declare-fun call!745595 () Regex!21738)

(declare-fun call!745596 () Regex!21738)

(assert (=> b!8035246 (= e!4733258 (Union!21738 call!745595 call!745596))))

(declare-fun b!8035247 () Bool)

(declare-fun e!4733261 () Regex!21738)

(assert (=> b!8035247 (= e!4733261 (ite (= a!2390 (c!1474035 (regOne!43989 r!13107))) EmptyExpr!21738 EmptyLang!21738))))

(declare-fun bm!745588 () Bool)

(assert (=> bm!745588 (= call!745594 call!745596)))

(declare-fun b!8035248 () Bool)

(assert (=> b!8035248 (= e!4733258 e!4733262)))

(declare-fun c!1474060 () Bool)

(assert (=> b!8035248 (= c!1474060 (is-Star!21738 (regOne!43989 r!13107)))))

(declare-fun bm!745589 () Bool)

(declare-fun call!745593 () Regex!21738)

(assert (=> bm!745589 (= call!745593 call!745595)))

(declare-fun c!1474062 () Bool)

(declare-fun bm!745590 () Bool)

(assert (=> bm!745590 (= call!745596 (derivativeStep!6661 (ite c!1474062 (regTwo!43989 (regOne!43989 r!13107)) (ite c!1474060 (reg!22067 (regOne!43989 r!13107)) (regOne!43988 (regOne!43989 r!13107)))) a!2390))))

(declare-fun b!8035249 () Bool)

(declare-fun e!4733260 () Regex!21738)

(assert (=> b!8035249 (= e!4733260 e!4733261)))

(declare-fun c!1474059 () Bool)

(assert (=> b!8035249 (= c!1474059 (is-ElementMatch!21738 (regOne!43989 r!13107)))))

(declare-fun d!2394962 () Bool)

(declare-fun lt!2722061 () Regex!21738)

(assert (=> d!2394962 (validRegex!12034 lt!2722061)))

(assert (=> d!2394962 (= lt!2722061 e!4733260)))

(declare-fun c!1474061 () Bool)

(assert (=> d!2394962 (= c!1474061 (or (is-EmptyExpr!21738 (regOne!43989 r!13107)) (is-EmptyLang!21738 (regOne!43989 r!13107))))))

(assert (=> d!2394962 (validRegex!12034 (regOne!43989 r!13107))))

(assert (=> d!2394962 (= (derivativeStep!6661 (regOne!43989 r!13107) a!2390) lt!2722061)))

(declare-fun bm!745591 () Bool)

(assert (=> bm!745591 (= call!745595 (derivativeStep!6661 (ite c!1474062 (regOne!43989 (regOne!43989 r!13107)) (ite c!1474063 (regTwo!43988 (regOne!43989 r!13107)) (regOne!43988 (regOne!43989 r!13107)))) a!2390))))

(declare-fun b!8035250 () Bool)

(assert (=> b!8035250 (= e!4733260 EmptyLang!21738)))

(declare-fun b!8035251 () Bool)

(assert (=> b!8035251 (= e!4733259 (Union!21738 (Concat!30741 call!745594 (regTwo!43988 (regOne!43989 r!13107))) call!745593))))

(declare-fun b!8035252 () Bool)

(assert (=> b!8035252 (= c!1474062 (is-Union!21738 (regOne!43989 r!13107)))))

(assert (=> b!8035252 (= e!4733261 e!4733258)))

(declare-fun b!8035253 () Bool)

(assert (=> b!8035253 (= e!4733259 (Union!21738 (Concat!30741 call!745593 (regTwo!43988 (regOne!43989 r!13107))) EmptyLang!21738))))

(assert (= (and d!2394962 c!1474061) b!8035250))

(assert (= (and d!2394962 (not c!1474061)) b!8035249))

(assert (= (and b!8035249 c!1474059) b!8035247))

(assert (= (and b!8035249 (not c!1474059)) b!8035252))

(assert (= (and b!8035252 c!1474062) b!8035246))

(assert (= (and b!8035252 (not c!1474062)) b!8035248))

(assert (= (and b!8035248 c!1474060) b!8035245))

(assert (= (and b!8035248 (not c!1474060)) b!8035244))

(assert (= (and b!8035244 c!1474063) b!8035251))

(assert (= (and b!8035244 (not c!1474063)) b!8035253))

(assert (= (or b!8035251 b!8035253) bm!745589))

(assert (= (or b!8035245 b!8035251) bm!745588))

(assert (= (or b!8035246 bm!745588) bm!745590))

(assert (= (or b!8035246 bm!745589) bm!745591))

(declare-fun m!8393130 () Bool)

(assert (=> b!8035244 m!8393130))

(declare-fun m!8393132 () Bool)

(assert (=> bm!745590 m!8393132))

(declare-fun m!8393134 () Bool)

(assert (=> d!2394962 m!8393134))

(declare-fun m!8393138 () Bool)

(assert (=> d!2394962 m!8393138))

(declare-fun m!8393140 () Bool)

(assert (=> bm!745591 m!8393140))

(assert (=> b!8035149 d!2394962))

(declare-fun b!8035254 () Bool)

(declare-fun c!1474068 () Bool)

(assert (=> b!8035254 (= c!1474068 (nullable!9763 (regOne!43988 (regTwo!43989 r!13107))))))

(declare-fun e!4733267 () Regex!21738)

(declare-fun e!4733264 () Regex!21738)

(assert (=> b!8035254 (= e!4733267 e!4733264)))

(declare-fun b!8035255 () Bool)

(declare-fun call!745598 () Regex!21738)

(assert (=> b!8035255 (= e!4733267 (Concat!30741 call!745598 (regTwo!43989 r!13107)))))

(declare-fun b!8035256 () Bool)

(declare-fun e!4733263 () Regex!21738)

(declare-fun call!745599 () Regex!21738)

(declare-fun call!745600 () Regex!21738)

(assert (=> b!8035256 (= e!4733263 (Union!21738 call!745599 call!745600))))

(declare-fun b!8035257 () Bool)

(declare-fun e!4733266 () Regex!21738)

(assert (=> b!8035257 (= e!4733266 (ite (= a!2390 (c!1474035 (regTwo!43989 r!13107))) EmptyExpr!21738 EmptyLang!21738))))

(declare-fun bm!745592 () Bool)

(assert (=> bm!745592 (= call!745598 call!745600)))

(declare-fun b!8035258 () Bool)

(assert (=> b!8035258 (= e!4733263 e!4733267)))

(declare-fun c!1474065 () Bool)

(assert (=> b!8035258 (= c!1474065 (is-Star!21738 (regTwo!43989 r!13107)))))

(declare-fun bm!745593 () Bool)

(declare-fun call!745597 () Regex!21738)

(assert (=> bm!745593 (= call!745597 call!745599)))

(declare-fun bm!745594 () Bool)

(declare-fun c!1474067 () Bool)

(assert (=> bm!745594 (= call!745600 (derivativeStep!6661 (ite c!1474067 (regTwo!43989 (regTwo!43989 r!13107)) (ite c!1474065 (reg!22067 (regTwo!43989 r!13107)) (regOne!43988 (regTwo!43989 r!13107)))) a!2390))))

(declare-fun b!8035259 () Bool)

(declare-fun e!4733265 () Regex!21738)

(assert (=> b!8035259 (= e!4733265 e!4733266)))

(declare-fun c!1474064 () Bool)

(assert (=> b!8035259 (= c!1474064 (is-ElementMatch!21738 (regTwo!43989 r!13107)))))

(declare-fun d!2394964 () Bool)

(declare-fun lt!2722062 () Regex!21738)

(assert (=> d!2394964 (validRegex!12034 lt!2722062)))

(assert (=> d!2394964 (= lt!2722062 e!4733265)))

(declare-fun c!1474066 () Bool)

(assert (=> d!2394964 (= c!1474066 (or (is-EmptyExpr!21738 (regTwo!43989 r!13107)) (is-EmptyLang!21738 (regTwo!43989 r!13107))))))

(assert (=> d!2394964 (validRegex!12034 (regTwo!43989 r!13107))))

(assert (=> d!2394964 (= (derivativeStep!6661 (regTwo!43989 r!13107) a!2390) lt!2722062)))

(declare-fun bm!745595 () Bool)

(assert (=> bm!745595 (= call!745599 (derivativeStep!6661 (ite c!1474067 (regOne!43989 (regTwo!43989 r!13107)) (ite c!1474068 (regTwo!43988 (regTwo!43989 r!13107)) (regOne!43988 (regTwo!43989 r!13107)))) a!2390))))

(declare-fun b!8035260 () Bool)

(assert (=> b!8035260 (= e!4733265 EmptyLang!21738)))

(declare-fun b!8035261 () Bool)

(assert (=> b!8035261 (= e!4733264 (Union!21738 (Concat!30741 call!745598 (regTwo!43988 (regTwo!43989 r!13107))) call!745597))))

(declare-fun b!8035262 () Bool)

(assert (=> b!8035262 (= c!1474067 (is-Union!21738 (regTwo!43989 r!13107)))))

(assert (=> b!8035262 (= e!4733266 e!4733263)))

(declare-fun b!8035263 () Bool)

(assert (=> b!8035263 (= e!4733264 (Union!21738 (Concat!30741 call!745597 (regTwo!43988 (regTwo!43989 r!13107))) EmptyLang!21738))))

(assert (= (and d!2394964 c!1474066) b!8035260))

(assert (= (and d!2394964 (not c!1474066)) b!8035259))

(assert (= (and b!8035259 c!1474064) b!8035257))

(assert (= (and b!8035259 (not c!1474064)) b!8035262))

(assert (= (and b!8035262 c!1474067) b!8035256))

(assert (= (and b!8035262 (not c!1474067)) b!8035258))

(assert (= (and b!8035258 c!1474065) b!8035255))

(assert (= (and b!8035258 (not c!1474065)) b!8035254))

(assert (= (and b!8035254 c!1474068) b!8035261))

(assert (= (and b!8035254 (not c!1474068)) b!8035263))

(assert (= (or b!8035261 b!8035263) bm!745593))

(assert (= (or b!8035255 b!8035261) bm!745592))

(assert (= (or b!8035256 bm!745592) bm!745594))

(assert (= (or b!8035256 bm!745593) bm!745595))

(declare-fun m!8393144 () Bool)

(assert (=> b!8035254 m!8393144))

(declare-fun m!8393146 () Bool)

(assert (=> bm!745594 m!8393146))

(declare-fun m!8393148 () Bool)

(assert (=> d!2394964 m!8393148))

(declare-fun m!8393150 () Bool)

(assert (=> d!2394964 m!8393150))

(declare-fun m!8393152 () Bool)

(assert (=> bm!745595 m!8393152))

(assert (=> b!8035149 d!2394964))

(declare-fun b!8035264 () Bool)

(declare-fun e!4733268 () Bool)

(declare-fun e!4733273 () Bool)

(assert (=> b!8035264 (= e!4733268 e!4733273)))

(declare-fun c!1474069 () Bool)

(assert (=> b!8035264 (= c!1474069 (is-Star!21738 r!13107))))

(declare-fun b!8035265 () Bool)

(declare-fun e!4733272 () Bool)

(assert (=> b!8035265 (= e!4733273 e!4733272)))

(declare-fun c!1474070 () Bool)

(assert (=> b!8035265 (= c!1474070 (is-Union!21738 r!13107))))

(declare-fun call!745602 () Bool)

(declare-fun bm!745596 () Bool)

(assert (=> bm!745596 (= call!745602 (validRegex!12034 (ite c!1474069 (reg!22067 r!13107) (ite c!1474070 (regOne!43989 r!13107) (regOne!43988 r!13107)))))))

(declare-fun bm!745597 () Bool)

(declare-fun call!745601 () Bool)

(assert (=> bm!745597 (= call!745601 call!745602)))

(declare-fun d!2394968 () Bool)

(declare-fun res!3176981 () Bool)

(assert (=> d!2394968 (=> res!3176981 e!4733268)))

(assert (=> d!2394968 (= res!3176981 (is-ElementMatch!21738 r!13107))))

(assert (=> d!2394968 (= (validRegex!12034 r!13107) e!4733268)))

(declare-fun b!8035266 () Bool)

(declare-fun e!4733274 () Bool)

(assert (=> b!8035266 (= e!4733273 e!4733274)))

(declare-fun res!3176980 () Bool)

(assert (=> b!8035266 (= res!3176980 (not (nullable!9763 (reg!22067 r!13107))))))

(assert (=> b!8035266 (=> (not res!3176980) (not e!4733274))))

(declare-fun bm!745598 () Bool)

(declare-fun call!745603 () Bool)

(assert (=> bm!745598 (= call!745603 (validRegex!12034 (ite c!1474070 (regTwo!43989 r!13107) (regTwo!43988 r!13107))))))

(declare-fun b!8035267 () Bool)

(assert (=> b!8035267 (= e!4733274 call!745602)))

(declare-fun b!8035268 () Bool)

(declare-fun e!4733271 () Bool)

(declare-fun e!4733270 () Bool)

(assert (=> b!8035268 (= e!4733271 e!4733270)))

(declare-fun res!3176984 () Bool)

(assert (=> b!8035268 (=> (not res!3176984) (not e!4733270))))

(assert (=> b!8035268 (= res!3176984 call!745601)))

(declare-fun b!8035269 () Bool)

(assert (=> b!8035269 (= e!4733270 call!745603)))

(declare-fun b!8035270 () Bool)

(declare-fun e!4733269 () Bool)

(assert (=> b!8035270 (= e!4733269 call!745603)))

(declare-fun b!8035271 () Bool)

(declare-fun res!3176983 () Bool)

(assert (=> b!8035271 (=> (not res!3176983) (not e!4733269))))

(assert (=> b!8035271 (= res!3176983 call!745601)))

(assert (=> b!8035271 (= e!4733272 e!4733269)))

(declare-fun b!8035272 () Bool)

(declare-fun res!3176982 () Bool)

(assert (=> b!8035272 (=> res!3176982 e!4733271)))

(assert (=> b!8035272 (= res!3176982 (not (is-Concat!30741 r!13107)))))

(assert (=> b!8035272 (= e!4733272 e!4733271)))

(assert (= (and d!2394968 (not res!3176981)) b!8035264))

(assert (= (and b!8035264 c!1474069) b!8035266))

(assert (= (and b!8035264 (not c!1474069)) b!8035265))

(assert (= (and b!8035266 res!3176980) b!8035267))

(assert (= (and b!8035265 c!1474070) b!8035271))

(assert (= (and b!8035265 (not c!1474070)) b!8035272))

(assert (= (and b!8035271 res!3176983) b!8035270))

(assert (= (and b!8035272 (not res!3176982)) b!8035268))

(assert (= (and b!8035268 res!3176984) b!8035269))

(assert (= (or b!8035270 b!8035269) bm!745598))

(assert (= (or b!8035271 b!8035268) bm!745597))

(assert (= (or b!8035267 bm!745597) bm!745596))

(declare-fun m!8393154 () Bool)

(assert (=> bm!745596 m!8393154))

(declare-fun m!8393156 () Bool)

(assert (=> b!8035266 m!8393156))

(declare-fun m!8393158 () Bool)

(assert (=> bm!745598 m!8393158))

(assert (=> start!756754 d!2394968))

(declare-fun b!8035284 () Bool)

(declare-fun e!4733277 () Bool)

(declare-fun tp!2405808 () Bool)

(declare-fun tp!2405806 () Bool)

(assert (=> b!8035284 (= e!4733277 (and tp!2405808 tp!2405806))))

(assert (=> b!8035150 (= tp!2405774 e!4733277)))

(declare-fun b!8035286 () Bool)

(declare-fun tp!2405807 () Bool)

(declare-fun tp!2405805 () Bool)

(assert (=> b!8035286 (= e!4733277 (and tp!2405807 tp!2405805))))

(declare-fun b!8035285 () Bool)

(declare-fun tp!2405804 () Bool)

(assert (=> b!8035285 (= e!4733277 tp!2405804)))

(declare-fun b!8035283 () Bool)

(assert (=> b!8035283 (= e!4733277 tp_is_empty!54471)))

(assert (= (and b!8035150 (is-ElementMatch!21738 (regOne!43988 r!13107))) b!8035283))

(assert (= (and b!8035150 (is-Concat!30741 (regOne!43988 r!13107))) b!8035284))

(assert (= (and b!8035150 (is-Star!21738 (regOne!43988 r!13107))) b!8035285))

(assert (= (and b!8035150 (is-Union!21738 (regOne!43988 r!13107))) b!8035286))

(declare-fun b!8035288 () Bool)

(declare-fun e!4733278 () Bool)

(declare-fun tp!2405813 () Bool)

(declare-fun tp!2405811 () Bool)

(assert (=> b!8035288 (= e!4733278 (and tp!2405813 tp!2405811))))

(assert (=> b!8035150 (= tp!2405776 e!4733278)))

(declare-fun b!8035290 () Bool)

(declare-fun tp!2405812 () Bool)

(declare-fun tp!2405810 () Bool)

(assert (=> b!8035290 (= e!4733278 (and tp!2405812 tp!2405810))))

(declare-fun b!8035289 () Bool)

(declare-fun tp!2405809 () Bool)

(assert (=> b!8035289 (= e!4733278 tp!2405809)))

(declare-fun b!8035287 () Bool)

(assert (=> b!8035287 (= e!4733278 tp_is_empty!54471)))

(assert (= (and b!8035150 (is-ElementMatch!21738 (regTwo!43988 r!13107))) b!8035287))

(assert (= (and b!8035150 (is-Concat!30741 (regTwo!43988 r!13107))) b!8035288))

(assert (= (and b!8035150 (is-Star!21738 (regTwo!43988 r!13107))) b!8035289))

(assert (= (and b!8035150 (is-Union!21738 (regTwo!43988 r!13107))) b!8035290))

(declare-fun b!8035292 () Bool)

(declare-fun e!4733279 () Bool)

(declare-fun tp!2405818 () Bool)

(declare-fun tp!2405816 () Bool)

(assert (=> b!8035292 (= e!4733279 (and tp!2405818 tp!2405816))))

(assert (=> b!8035146 (= tp!2405775 e!4733279)))

(declare-fun b!8035294 () Bool)

(declare-fun tp!2405817 () Bool)

(declare-fun tp!2405815 () Bool)

(assert (=> b!8035294 (= e!4733279 (and tp!2405817 tp!2405815))))

(declare-fun b!8035293 () Bool)

(declare-fun tp!2405814 () Bool)

(assert (=> b!8035293 (= e!4733279 tp!2405814)))

(declare-fun b!8035291 () Bool)

(assert (=> b!8035291 (= e!4733279 tp_is_empty!54471)))

(assert (= (and b!8035146 (is-ElementMatch!21738 (regOne!43989 r!13107))) b!8035291))

(assert (= (and b!8035146 (is-Concat!30741 (regOne!43989 r!13107))) b!8035292))

(assert (= (and b!8035146 (is-Star!21738 (regOne!43989 r!13107))) b!8035293))

(assert (= (and b!8035146 (is-Union!21738 (regOne!43989 r!13107))) b!8035294))

(declare-fun b!8035296 () Bool)

(declare-fun e!4733280 () Bool)

(declare-fun tp!2405823 () Bool)

(declare-fun tp!2405821 () Bool)

(assert (=> b!8035296 (= e!4733280 (and tp!2405823 tp!2405821))))

(assert (=> b!8035146 (= tp!2405778 e!4733280)))

(declare-fun b!8035298 () Bool)

(declare-fun tp!2405822 () Bool)

(declare-fun tp!2405820 () Bool)

(assert (=> b!8035298 (= e!4733280 (and tp!2405822 tp!2405820))))

(declare-fun b!8035297 () Bool)

(declare-fun tp!2405819 () Bool)

(assert (=> b!8035297 (= e!4733280 tp!2405819)))

(declare-fun b!8035295 () Bool)

(assert (=> b!8035295 (= e!4733280 tp_is_empty!54471)))

(assert (= (and b!8035146 (is-ElementMatch!21738 (regTwo!43989 r!13107))) b!8035295))

(assert (= (and b!8035146 (is-Concat!30741 (regTwo!43989 r!13107))) b!8035296))

(assert (= (and b!8035146 (is-Star!21738 (regTwo!43989 r!13107))) b!8035297))

(assert (= (and b!8035146 (is-Union!21738 (regTwo!43989 r!13107))) b!8035298))

(declare-fun b!8035300 () Bool)

(declare-fun e!4733281 () Bool)

(declare-fun tp!2405828 () Bool)

(declare-fun tp!2405826 () Bool)

(assert (=> b!8035300 (= e!4733281 (and tp!2405828 tp!2405826))))

(assert (=> b!8035148 (= tp!2405777 e!4733281)))

(declare-fun b!8035302 () Bool)

(declare-fun tp!2405827 () Bool)

(declare-fun tp!2405825 () Bool)

(assert (=> b!8035302 (= e!4733281 (and tp!2405827 tp!2405825))))

(declare-fun b!8035301 () Bool)

(declare-fun tp!2405824 () Bool)

(assert (=> b!8035301 (= e!4733281 tp!2405824)))

(declare-fun b!8035299 () Bool)

(assert (=> b!8035299 (= e!4733281 tp_is_empty!54471)))

(assert (= (and b!8035148 (is-ElementMatch!21738 (reg!22067 r!13107))) b!8035299))

(assert (= (and b!8035148 (is-Concat!30741 (reg!22067 r!13107))) b!8035300))

(assert (= (and b!8035148 (is-Star!21738 (reg!22067 r!13107))) b!8035301))

(assert (= (and b!8035148 (is-Union!21738 (reg!22067 r!13107))) b!8035302))

(push 1)

(assert (not b!8035297))

(assert (not b!8035244))

(assert (not b!8035290))

(assert (not bm!745598))

(assert (not bm!745591))

(assert (not b!8035296))

(assert tp_is_empty!54471)

(assert (not bm!745568))

(assert (not b!8035190))

(assert (not b!8035254))

(assert (not b!8035286))

(assert (not b!8035294))

(assert (not b!8035289))

(assert (not bm!745590))

(assert (not bm!745595))

(assert (not b!8035300))

(assert (not bm!745596))

(assert (not b!8035292))

(assert (not b!8035302))

(assert (not b!8035266))

(assert (not b!8035285))

(assert (not bm!745594))

(assert (not b!8035284))

(assert (not b!8035298))

(assert (not b!8035293))

(assert (not bm!745570))

(assert (not b!8035288))

(assert (not b!8035301))

(assert (not d!2394962))

(assert (not d!2394964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

