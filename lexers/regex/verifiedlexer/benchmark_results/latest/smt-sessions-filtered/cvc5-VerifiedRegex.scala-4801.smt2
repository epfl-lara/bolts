; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!246982 () Bool)

(assert start!246982)

(declare-fun b!2544057 () Bool)

(declare-fun e!1608419 () Bool)

(declare-fun e!1608421 () Bool)

(assert (=> b!2544057 (= e!1608419 e!1608421)))

(declare-fun res!1071997 () Bool)

(assert (=> b!2544057 (=> (not res!1071997) (not e!1608421))))

(declare-datatypes ((C!15310 0))(
  ( (C!15311 (val!9307 Int)) )
))
(declare-datatypes ((Regex!7576 0))(
  ( (ElementMatch!7576 (c!407450 C!15310)) (Concat!12272 (regOne!15664 Regex!7576) (regTwo!15664 Regex!7576)) (EmptyExpr!7576) (Star!7576 (reg!7905 Regex!7576)) (EmptyLang!7576) (Union!7576 (regOne!15665 Regex!7576) (regTwo!15665 Regex!7576)) )
))
(declare-fun lt!902285 () Regex!7576)

(declare-datatypes ((List!29641 0))(
  ( (Nil!29541) (Cons!29541 (h!34961 C!15310) (t!211340 List!29641)) )
))
(declare-fun tl!4068 () List!29641)

(declare-fun nullable!2493 (Regex!7576) Bool)

(declare-fun derivative!271 (Regex!7576 List!29641) Regex!7576)

(assert (=> b!2544057 (= res!1071997 (nullable!2493 (derivative!271 lt!902285 tl!4068)))))

(declare-fun r!27340 () Regex!7576)

(declare-fun c!14016 () C!15310)

(declare-fun derivativeStep!2145 (Regex!7576 C!15310) Regex!7576)

(assert (=> b!2544057 (= lt!902285 (derivativeStep!2145 r!27340 c!14016))))

(declare-fun b!2544058 () Bool)

(declare-fun res!1071996 () Bool)

(assert (=> b!2544058 (=> (not res!1071996) (not e!1608421))))

(assert (=> b!2544058 (= res!1071996 (and (not (is-EmptyExpr!7576 r!27340)) (not (is-EmptyLang!7576 r!27340)) (not (is-ElementMatch!7576 r!27340)) (not (is-Union!7576 r!27340)) (is-Star!7576 r!27340)))))

(declare-fun b!2544059 () Bool)

(declare-fun e!1608423 () Bool)

(declare-fun tp_is_empty!13007 () Bool)

(declare-fun tp!812276 () Bool)

(assert (=> b!2544059 (= e!1608423 (and tp_is_empty!13007 tp!812276))))

(declare-fun b!2544060 () Bool)

(declare-fun e!1608422 () Bool)

(declare-fun tp!812274 () Bool)

(assert (=> b!2544060 (= e!1608422 tp!812274)))

(declare-fun b!2544061 () Bool)

(declare-fun tp!812275 () Bool)

(declare-fun tp!812273 () Bool)

(assert (=> b!2544061 (= e!1608422 (and tp!812275 tp!812273))))

(declare-fun b!2544062 () Bool)

(declare-fun e!1608420 () Bool)

(assert (=> b!2544062 (= e!1608421 e!1608420)))

(declare-fun res!1071994 () Bool)

(assert (=> b!2544062 (=> (not res!1071994) (not e!1608420))))

(declare-fun lt!902286 () Regex!7576)

(assert (=> b!2544062 (= res!1071994 (= lt!902285 (Concat!12272 lt!902286 (Star!7576 (reg!7905 r!27340)))))))

(assert (=> b!2544062 (= lt!902286 (derivativeStep!2145 (reg!7905 r!27340) c!14016))))

(declare-fun b!2544064 () Bool)

(declare-fun res!1071993 () Bool)

(assert (=> b!2544064 (=> (not res!1071993) (not e!1608420))))

(assert (=> b!2544064 (= res!1071993 (not (nullable!2493 (derivative!271 lt!902286 tl!4068))))))

(declare-fun res!1071995 () Bool)

(assert (=> start!246982 (=> (not res!1071995) (not e!1608419))))

(declare-fun validRegex!3202 (Regex!7576) Bool)

(assert (=> start!246982 (= res!1071995 (validRegex!3202 r!27340))))

(assert (=> start!246982 e!1608419))

(assert (=> start!246982 e!1608422))

(assert (=> start!246982 tp_is_empty!13007))

(assert (=> start!246982 e!1608423))

(declare-fun b!2544063 () Bool)

(assert (=> b!2544063 (= e!1608420 (not (validRegex!3202 lt!902285)))))

(declare-fun b!2544065 () Bool)

(declare-fun tp!812272 () Bool)

(declare-fun tp!812271 () Bool)

(assert (=> b!2544065 (= e!1608422 (and tp!812272 tp!812271))))

(declare-fun b!2544066 () Bool)

(assert (=> b!2544066 (= e!1608422 tp_is_empty!13007)))

(assert (= (and start!246982 res!1071995) b!2544057))

(assert (= (and b!2544057 res!1071997) b!2544058))

(assert (= (and b!2544058 res!1071996) b!2544062))

(assert (= (and b!2544062 res!1071994) b!2544064))

(assert (= (and b!2544064 res!1071993) b!2544063))

(assert (= (and start!246982 (is-ElementMatch!7576 r!27340)) b!2544066))

(assert (= (and start!246982 (is-Concat!12272 r!27340)) b!2544065))

(assert (= (and start!246982 (is-Star!7576 r!27340)) b!2544060))

(assert (= (and start!246982 (is-Union!7576 r!27340)) b!2544061))

(assert (= (and start!246982 (is-Cons!29541 tl!4068)) b!2544059))

(declare-fun m!2889701 () Bool)

(assert (=> b!2544057 m!2889701))

(assert (=> b!2544057 m!2889701))

(declare-fun m!2889703 () Bool)

(assert (=> b!2544057 m!2889703))

(declare-fun m!2889705 () Bool)

(assert (=> b!2544057 m!2889705))

(declare-fun m!2889707 () Bool)

(assert (=> b!2544062 m!2889707))

(declare-fun m!2889709 () Bool)

(assert (=> b!2544063 m!2889709))

(declare-fun m!2889711 () Bool)

(assert (=> start!246982 m!2889711))

(declare-fun m!2889713 () Bool)

(assert (=> b!2544064 m!2889713))

(assert (=> b!2544064 m!2889713))

(declare-fun m!2889715 () Bool)

(assert (=> b!2544064 m!2889715))

(push 1)

(assert tp_is_empty!13007)

(assert (not b!2544065))

(assert (not start!246982))

(assert (not b!2544060))

(assert (not b!2544064))

(assert (not b!2544061))

(assert (not b!2544062))

(assert (not b!2544059))

(assert (not b!2544057))

(assert (not b!2544063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!161299 () Regex!7576)

(declare-fun c!407467 () Bool)

(declare-fun bm!161293 () Bool)

(declare-fun c!407466 () Bool)

(assert (=> bm!161293 (= call!161299 (derivativeStep!2145 (ite c!407467 (regOne!15665 (reg!7905 r!27340)) (ite c!407466 (reg!7905 (reg!7905 r!27340)) (regOne!15664 (reg!7905 r!27340)))) c!14016))))

(declare-fun b!2544135 () Bool)

(declare-fun e!1608465 () Regex!7576)

(assert (=> b!2544135 (= e!1608465 EmptyLang!7576)))

(declare-fun d!722166 () Bool)

(declare-fun lt!902295 () Regex!7576)

(assert (=> d!722166 (validRegex!3202 lt!902295)))

(assert (=> d!722166 (= lt!902295 e!1608465)))

(declare-fun c!407468 () Bool)

(assert (=> d!722166 (= c!407468 (or (is-EmptyExpr!7576 (reg!7905 r!27340)) (is-EmptyLang!7576 (reg!7905 r!27340))))))

(assert (=> d!722166 (validRegex!3202 (reg!7905 r!27340))))

(assert (=> d!722166 (= (derivativeStep!2145 (reg!7905 r!27340) c!14016) lt!902295)))

(declare-fun b!2544136 () Bool)

(declare-fun e!1608463 () Regex!7576)

(declare-fun e!1608467 () Regex!7576)

(assert (=> b!2544136 (= e!1608463 e!1608467)))

(assert (=> b!2544136 (= c!407466 (is-Star!7576 (reg!7905 r!27340)))))

(declare-fun b!2544137 () Bool)

(declare-fun call!161300 () Regex!7576)

(assert (=> b!2544137 (= e!1608463 (Union!7576 call!161299 call!161300))))

(declare-fun b!2544138 () Bool)

(declare-fun e!1608466 () Regex!7576)

(assert (=> b!2544138 (= e!1608466 (ite (= c!14016 (c!407450 (reg!7905 r!27340))) EmptyExpr!7576 EmptyLang!7576))))

(declare-fun b!2544139 () Bool)

(declare-fun c!407469 () Bool)

(assert (=> b!2544139 (= c!407469 (nullable!2493 (regOne!15664 (reg!7905 r!27340))))))

(declare-fun e!1608464 () Regex!7576)

(assert (=> b!2544139 (= e!1608467 e!1608464)))

(declare-fun bm!161294 () Bool)

(declare-fun call!161298 () Regex!7576)

(assert (=> bm!161294 (= call!161298 call!161299)))

(declare-fun b!2544140 () Bool)

(assert (=> b!2544140 (= c!407467 (is-Union!7576 (reg!7905 r!27340)))))

(assert (=> b!2544140 (= e!1608466 e!1608463)))

(declare-fun bm!161295 () Bool)

(declare-fun call!161301 () Regex!7576)

(assert (=> bm!161295 (= call!161301 call!161298)))

(declare-fun b!2544141 () Bool)

(assert (=> b!2544141 (= e!1608465 e!1608466)))

(declare-fun c!407470 () Bool)

(assert (=> b!2544141 (= c!407470 (is-ElementMatch!7576 (reg!7905 r!27340)))))

(declare-fun b!2544142 () Bool)

(assert (=> b!2544142 (= e!1608467 (Concat!12272 call!161298 (reg!7905 r!27340)))))

(declare-fun b!2544143 () Bool)

(assert (=> b!2544143 (= e!1608464 (Union!7576 (Concat!12272 call!161301 (regTwo!15664 (reg!7905 r!27340))) EmptyLang!7576))))

(declare-fun bm!161296 () Bool)

(assert (=> bm!161296 (= call!161300 (derivativeStep!2145 (ite c!407467 (regTwo!15665 (reg!7905 r!27340)) (regTwo!15664 (reg!7905 r!27340))) c!14016))))

(declare-fun b!2544144 () Bool)

(assert (=> b!2544144 (= e!1608464 (Union!7576 (Concat!12272 call!161301 (regTwo!15664 (reg!7905 r!27340))) call!161300))))

(assert (= (and d!722166 c!407468) b!2544135))

(assert (= (and d!722166 (not c!407468)) b!2544141))

(assert (= (and b!2544141 c!407470) b!2544138))

(assert (= (and b!2544141 (not c!407470)) b!2544140))

(assert (= (and b!2544140 c!407467) b!2544137))

(assert (= (and b!2544140 (not c!407467)) b!2544136))

(assert (= (and b!2544136 c!407466) b!2544142))

(assert (= (and b!2544136 (not c!407466)) b!2544139))

(assert (= (and b!2544139 c!407469) b!2544144))

(assert (= (and b!2544139 (not c!407469)) b!2544143))

(assert (= (or b!2544144 b!2544143) bm!161295))

(assert (= (or b!2544142 bm!161295) bm!161294))

(assert (= (or b!2544137 b!2544144) bm!161296))

(assert (= (or b!2544137 bm!161294) bm!161293))

(declare-fun m!2889733 () Bool)

(assert (=> bm!161293 m!2889733))

(declare-fun m!2889735 () Bool)

(assert (=> d!722166 m!2889735))

(declare-fun m!2889737 () Bool)

(assert (=> d!722166 m!2889737))

(declare-fun m!2889739 () Bool)

(assert (=> b!2544139 m!2889739))

(declare-fun m!2889741 () Bool)

(assert (=> bm!161296 m!2889741))

(assert (=> b!2544062 d!722166))

(declare-fun d!722170 () Bool)

(declare-fun nullableFct!722 (Regex!7576) Bool)

(assert (=> d!722170 (= (nullable!2493 (derivative!271 lt!902285 tl!4068)) (nullableFct!722 (derivative!271 lt!902285 tl!4068)))))

(declare-fun bs!469468 () Bool)

(assert (= bs!469468 d!722170))

(assert (=> bs!469468 m!2889701))

(declare-fun m!2889743 () Bool)

(assert (=> bs!469468 m!2889743))

(assert (=> b!2544057 d!722170))

(declare-fun d!722172 () Bool)

(declare-fun lt!902298 () Regex!7576)

(assert (=> d!722172 (validRegex!3202 lt!902298)))

(declare-fun e!1608477 () Regex!7576)

(assert (=> d!722172 (= lt!902298 e!1608477)))

(declare-fun c!407475 () Bool)

(assert (=> d!722172 (= c!407475 (is-Cons!29541 tl!4068))))

(assert (=> d!722172 (validRegex!3202 lt!902285)))

(assert (=> d!722172 (= (derivative!271 lt!902285 tl!4068) lt!902298)))

(declare-fun b!2544158 () Bool)

(assert (=> b!2544158 (= e!1608477 (derivative!271 (derivativeStep!2145 lt!902285 (h!34961 tl!4068)) (t!211340 tl!4068)))))

(declare-fun b!2544159 () Bool)

(assert (=> b!2544159 (= e!1608477 lt!902285)))

(assert (= (and d!722172 c!407475) b!2544158))

(assert (= (and d!722172 (not c!407475)) b!2544159))

(declare-fun m!2889751 () Bool)

(assert (=> d!722172 m!2889751))

(assert (=> d!722172 m!2889709))

(declare-fun m!2889753 () Bool)

(assert (=> b!2544158 m!2889753))

(assert (=> b!2544158 m!2889753))

(declare-fun m!2889755 () Bool)

(assert (=> b!2544158 m!2889755))

(assert (=> b!2544057 d!722172))

(declare-fun c!407476 () Bool)

(declare-fun c!407477 () Bool)

(declare-fun bm!161300 () Bool)

(declare-fun call!161306 () Regex!7576)

(assert (=> bm!161300 (= call!161306 (derivativeStep!2145 (ite c!407477 (regOne!15665 r!27340) (ite c!407476 (reg!7905 r!27340) (regOne!15664 r!27340))) c!14016))))

(declare-fun b!2544160 () Bool)

(declare-fun e!1608480 () Regex!7576)

(assert (=> b!2544160 (= e!1608480 EmptyLang!7576)))

(declare-fun d!722176 () Bool)

(declare-fun lt!902299 () Regex!7576)

(assert (=> d!722176 (validRegex!3202 lt!902299)))

(assert (=> d!722176 (= lt!902299 e!1608480)))

(declare-fun c!407478 () Bool)

(assert (=> d!722176 (= c!407478 (or (is-EmptyExpr!7576 r!27340) (is-EmptyLang!7576 r!27340)))))

(assert (=> d!722176 (validRegex!3202 r!27340)))

(assert (=> d!722176 (= (derivativeStep!2145 r!27340 c!14016) lt!902299)))

(declare-fun b!2544161 () Bool)

(declare-fun e!1608478 () Regex!7576)

(declare-fun e!1608482 () Regex!7576)

(assert (=> b!2544161 (= e!1608478 e!1608482)))

(assert (=> b!2544161 (= c!407476 (is-Star!7576 r!27340))))

(declare-fun b!2544162 () Bool)

(declare-fun call!161307 () Regex!7576)

(assert (=> b!2544162 (= e!1608478 (Union!7576 call!161306 call!161307))))

(declare-fun b!2544163 () Bool)

(declare-fun e!1608481 () Regex!7576)

(assert (=> b!2544163 (= e!1608481 (ite (= c!14016 (c!407450 r!27340)) EmptyExpr!7576 EmptyLang!7576))))

(declare-fun b!2544164 () Bool)

(declare-fun c!407479 () Bool)

(assert (=> b!2544164 (= c!407479 (nullable!2493 (regOne!15664 r!27340)))))

(declare-fun e!1608479 () Regex!7576)

(assert (=> b!2544164 (= e!1608482 e!1608479)))

(declare-fun bm!161301 () Bool)

(declare-fun call!161305 () Regex!7576)

(assert (=> bm!161301 (= call!161305 call!161306)))

(declare-fun b!2544165 () Bool)

(assert (=> b!2544165 (= c!407477 (is-Union!7576 r!27340))))

(assert (=> b!2544165 (= e!1608481 e!1608478)))

(declare-fun bm!161302 () Bool)

(declare-fun call!161308 () Regex!7576)

(assert (=> bm!161302 (= call!161308 call!161305)))

(declare-fun b!2544166 () Bool)

(assert (=> b!2544166 (= e!1608480 e!1608481)))

(declare-fun c!407480 () Bool)

(assert (=> b!2544166 (= c!407480 (is-ElementMatch!7576 r!27340))))

(declare-fun b!2544167 () Bool)

(assert (=> b!2544167 (= e!1608482 (Concat!12272 call!161305 r!27340))))

(declare-fun b!2544168 () Bool)

(assert (=> b!2544168 (= e!1608479 (Union!7576 (Concat!12272 call!161308 (regTwo!15664 r!27340)) EmptyLang!7576))))

(declare-fun bm!161303 () Bool)

(assert (=> bm!161303 (= call!161307 (derivativeStep!2145 (ite c!407477 (regTwo!15665 r!27340) (regTwo!15664 r!27340)) c!14016))))

(declare-fun b!2544169 () Bool)

(assert (=> b!2544169 (= e!1608479 (Union!7576 (Concat!12272 call!161308 (regTwo!15664 r!27340)) call!161307))))

(assert (= (and d!722176 c!407478) b!2544160))

(assert (= (and d!722176 (not c!407478)) b!2544166))

(assert (= (and b!2544166 c!407480) b!2544163))

(assert (= (and b!2544166 (not c!407480)) b!2544165))

(assert (= (and b!2544165 c!407477) b!2544162))

(assert (= (and b!2544165 (not c!407477)) b!2544161))

(assert (= (and b!2544161 c!407476) b!2544167))

(assert (= (and b!2544161 (not c!407476)) b!2544164))

(assert (= (and b!2544164 c!407479) b!2544169))

(assert (= (and b!2544164 (not c!407479)) b!2544168))

(assert (= (or b!2544169 b!2544168) bm!161302))

(assert (= (or b!2544167 bm!161302) bm!161301))

(assert (= (or b!2544162 b!2544169) bm!161303))

(assert (= (or b!2544162 bm!161301) bm!161300))

(declare-fun m!2889757 () Bool)

(assert (=> bm!161300 m!2889757))

(declare-fun m!2889759 () Bool)

(assert (=> d!722176 m!2889759))

(assert (=> d!722176 m!2889711))

(declare-fun m!2889761 () Bool)

(assert (=> b!2544164 m!2889761))

(declare-fun m!2889763 () Bool)

(assert (=> bm!161303 m!2889763))

(assert (=> b!2544057 d!722176))

(declare-fun c!407486 () Bool)

(declare-fun call!161317 () Bool)

(declare-fun c!407485 () Bool)

(declare-fun bm!161310 () Bool)

(assert (=> bm!161310 (= call!161317 (validRegex!3202 (ite c!407486 (reg!7905 lt!902285) (ite c!407485 (regTwo!15665 lt!902285) (regOne!15664 lt!902285)))))))

(declare-fun b!2544188 () Bool)

(declare-fun e!1608501 () Bool)

(declare-fun call!161315 () Bool)

(assert (=> b!2544188 (= e!1608501 call!161315)))

(declare-fun bm!161312 () Bool)

(assert (=> bm!161312 (= call!161315 call!161317)))

(declare-fun b!2544189 () Bool)

(declare-fun e!1608503 () Bool)

(declare-fun e!1608500 () Bool)

(assert (=> b!2544189 (= e!1608503 e!1608500)))

(declare-fun res!1072038 () Bool)

(assert (=> b!2544189 (= res!1072038 (not (nullable!2493 (reg!7905 lt!902285))))))

(assert (=> b!2544189 (=> (not res!1072038) (not e!1608500))))

(declare-fun b!2544190 () Bool)

(assert (=> b!2544190 (= e!1608500 call!161317)))

(declare-fun b!2544191 () Bool)

(declare-fun e!1608502 () Bool)

(declare-fun call!161316 () Bool)

(assert (=> b!2544191 (= e!1608502 call!161316)))

(declare-fun b!2544192 () Bool)

(declare-fun res!1072040 () Bool)

(declare-fun e!1608498 () Bool)

(assert (=> b!2544192 (=> res!1072040 e!1608498)))

(assert (=> b!2544192 (= res!1072040 (not (is-Concat!12272 lt!902285)))))

(declare-fun e!1608499 () Bool)

(assert (=> b!2544192 (= e!1608499 e!1608498)))

(declare-fun d!722178 () Bool)

(declare-fun res!1072041 () Bool)

(declare-fun e!1608497 () Bool)

(assert (=> d!722178 (=> res!1072041 e!1608497)))

(assert (=> d!722178 (= res!1072041 (is-ElementMatch!7576 lt!902285))))

(assert (=> d!722178 (= (validRegex!3202 lt!902285) e!1608497)))

(declare-fun bm!161311 () Bool)

(assert (=> bm!161311 (= call!161316 (validRegex!3202 (ite c!407485 (regOne!15665 lt!902285) (regTwo!15664 lt!902285))))))

(declare-fun b!2544193 () Bool)

(assert (=> b!2544193 (= e!1608503 e!1608499)))

(assert (=> b!2544193 (= c!407485 (is-Union!7576 lt!902285))))

(declare-fun b!2544194 () Bool)

(assert (=> b!2544194 (= e!1608497 e!1608503)))

(assert (=> b!2544194 (= c!407486 (is-Star!7576 lt!902285))))

(declare-fun b!2544195 () Bool)

(assert (=> b!2544195 (= e!1608498 e!1608502)))

(declare-fun res!1072042 () Bool)

(assert (=> b!2544195 (=> (not res!1072042) (not e!1608502))))

(assert (=> b!2544195 (= res!1072042 call!161315)))

(declare-fun b!2544196 () Bool)

(declare-fun res!1072039 () Bool)

(assert (=> b!2544196 (=> (not res!1072039) (not e!1608501))))

(assert (=> b!2544196 (= res!1072039 call!161316)))

(assert (=> b!2544196 (= e!1608499 e!1608501)))

(assert (= (and d!722178 (not res!1072041)) b!2544194))

(assert (= (and b!2544194 c!407486) b!2544189))

(assert (= (and b!2544194 (not c!407486)) b!2544193))

(assert (= (and b!2544189 res!1072038) b!2544190))

(assert (= (and b!2544193 c!407485) b!2544196))

(assert (= (and b!2544193 (not c!407485)) b!2544192))

(assert (= (and b!2544196 res!1072039) b!2544188))

(assert (= (and b!2544192 (not res!1072040)) b!2544195))

(assert (= (and b!2544195 res!1072042) b!2544191))

(assert (= (or b!2544196 b!2544191) bm!161311))

(assert (= (or b!2544188 b!2544195) bm!161312))

(assert (= (or b!2544190 bm!161312) bm!161310))

(declare-fun m!2889765 () Bool)

(assert (=> bm!161310 m!2889765))

(declare-fun m!2889767 () Bool)

(assert (=> b!2544189 m!2889767))

(declare-fun m!2889769 () Bool)

(assert (=> bm!161311 m!2889769))

(assert (=> b!2544063 d!722178))

(declare-fun d!722180 () Bool)

(assert (=> d!722180 (= (nullable!2493 (derivative!271 lt!902286 tl!4068)) (nullableFct!722 (derivative!271 lt!902286 tl!4068)))))

(declare-fun bs!469469 () Bool)

(assert (= bs!469469 d!722180))

(assert (=> bs!469469 m!2889713))

(declare-fun m!2889771 () Bool)

(assert (=> bs!469469 m!2889771))

(assert (=> b!2544064 d!722180))

(declare-fun d!722182 () Bool)

(declare-fun lt!902300 () Regex!7576)

(assert (=> d!722182 (validRegex!3202 lt!902300)))

(declare-fun e!1608504 () Regex!7576)

(assert (=> d!722182 (= lt!902300 e!1608504)))

(declare-fun c!407487 () Bool)

(assert (=> d!722182 (= c!407487 (is-Cons!29541 tl!4068))))

(assert (=> d!722182 (validRegex!3202 lt!902286)))

(assert (=> d!722182 (= (derivative!271 lt!902286 tl!4068) lt!902300)))

(declare-fun b!2544197 () Bool)

(assert (=> b!2544197 (= e!1608504 (derivative!271 (derivativeStep!2145 lt!902286 (h!34961 tl!4068)) (t!211340 tl!4068)))))

(declare-fun b!2544198 () Bool)

(assert (=> b!2544198 (= e!1608504 lt!902286)))

(assert (= (and d!722182 c!407487) b!2544197))

(assert (= (and d!722182 (not c!407487)) b!2544198))

(declare-fun m!2889773 () Bool)

(assert (=> d!722182 m!2889773))

(declare-fun m!2889775 () Bool)

(assert (=> d!722182 m!2889775))

(declare-fun m!2889777 () Bool)

(assert (=> b!2544197 m!2889777))

(assert (=> b!2544197 m!2889777))

(declare-fun m!2889779 () Bool)

(assert (=> b!2544197 m!2889779))

(assert (=> b!2544064 d!722182))

(declare-fun c!407488 () Bool)

(declare-fun bm!161313 () Bool)

(declare-fun c!407489 () Bool)

(declare-fun call!161320 () Bool)

(assert (=> bm!161313 (= call!161320 (validRegex!3202 (ite c!407489 (reg!7905 r!27340) (ite c!407488 (regTwo!15665 r!27340) (regOne!15664 r!27340)))))))

(declare-fun b!2544199 () Bool)

(declare-fun e!1608509 () Bool)

(declare-fun call!161318 () Bool)

(assert (=> b!2544199 (= e!1608509 call!161318)))

(declare-fun bm!161315 () Bool)

(assert (=> bm!161315 (= call!161318 call!161320)))

(declare-fun b!2544200 () Bool)

(declare-fun e!1608511 () Bool)

(declare-fun e!1608508 () Bool)

(assert (=> b!2544200 (= e!1608511 e!1608508)))

(declare-fun res!1072043 () Bool)

(assert (=> b!2544200 (= res!1072043 (not (nullable!2493 (reg!7905 r!27340))))))

(assert (=> b!2544200 (=> (not res!1072043) (not e!1608508))))

(declare-fun b!2544201 () Bool)

(assert (=> b!2544201 (= e!1608508 call!161320)))

(declare-fun b!2544202 () Bool)

(declare-fun e!1608510 () Bool)

(declare-fun call!161319 () Bool)

(assert (=> b!2544202 (= e!1608510 call!161319)))

(declare-fun b!2544203 () Bool)

(declare-fun res!1072045 () Bool)

(declare-fun e!1608506 () Bool)

(assert (=> b!2544203 (=> res!1072045 e!1608506)))

(assert (=> b!2544203 (= res!1072045 (not (is-Concat!12272 r!27340)))))

(declare-fun e!1608507 () Bool)

(assert (=> b!2544203 (= e!1608507 e!1608506)))

(declare-fun d!722184 () Bool)

(declare-fun res!1072046 () Bool)

(declare-fun e!1608505 () Bool)

(assert (=> d!722184 (=> res!1072046 e!1608505)))

(assert (=> d!722184 (= res!1072046 (is-ElementMatch!7576 r!27340))))

(assert (=> d!722184 (= (validRegex!3202 r!27340) e!1608505)))

(declare-fun bm!161314 () Bool)

(assert (=> bm!161314 (= call!161319 (validRegex!3202 (ite c!407488 (regOne!15665 r!27340) (regTwo!15664 r!27340))))))

(declare-fun b!2544204 () Bool)

(assert (=> b!2544204 (= e!1608511 e!1608507)))

(assert (=> b!2544204 (= c!407488 (is-Union!7576 r!27340))))

(declare-fun b!2544205 () Bool)

(assert (=> b!2544205 (= e!1608505 e!1608511)))

(assert (=> b!2544205 (= c!407489 (is-Star!7576 r!27340))))

(declare-fun b!2544206 () Bool)

(assert (=> b!2544206 (= e!1608506 e!1608510)))

(declare-fun res!1072047 () Bool)

(assert (=> b!2544206 (=> (not res!1072047) (not e!1608510))))

(assert (=> b!2544206 (= res!1072047 call!161318)))

(declare-fun b!2544207 () Bool)

(declare-fun res!1072044 () Bool)

(assert (=> b!2544207 (=> (not res!1072044) (not e!1608509))))

(assert (=> b!2544207 (= res!1072044 call!161319)))

(assert (=> b!2544207 (= e!1608507 e!1608509)))

(assert (= (and d!722184 (not res!1072046)) b!2544205))

(assert (= (and b!2544205 c!407489) b!2544200))

(assert (= (and b!2544205 (not c!407489)) b!2544204))

(assert (= (and b!2544200 res!1072043) b!2544201))

(assert (= (and b!2544204 c!407488) b!2544207))

(assert (= (and b!2544204 (not c!407488)) b!2544203))

(assert (= (and b!2544207 res!1072044) b!2544199))

(assert (= (and b!2544203 (not res!1072045)) b!2544206))

(assert (= (and b!2544206 res!1072047) b!2544202))

(assert (= (or b!2544207 b!2544202) bm!161314))

(assert (= (or b!2544199 b!2544206) bm!161315))

(assert (= (or b!2544201 bm!161315) bm!161313))

(declare-fun m!2889781 () Bool)

(assert (=> bm!161313 m!2889781))

(declare-fun m!2889783 () Bool)

(assert (=> b!2544200 m!2889783))

(declare-fun m!2889785 () Bool)

(assert (=> bm!161314 m!2889785))

(assert (=> start!246982 d!722184))

(declare-fun b!2544240 () Bool)

(declare-fun e!1608524 () Bool)

(declare-fun tp!812309 () Bool)

(assert (=> b!2544240 (= e!1608524 tp!812309)))

(assert (=> b!2544065 (= tp!812272 e!1608524)))

(declare-fun b!2544239 () Bool)

(declare-fun tp!812307 () Bool)

(declare-fun tp!812306 () Bool)

(assert (=> b!2544239 (= e!1608524 (and tp!812307 tp!812306))))

(declare-fun b!2544241 () Bool)

(declare-fun tp!812308 () Bool)

(declare-fun tp!812305 () Bool)

(assert (=> b!2544241 (= e!1608524 (and tp!812308 tp!812305))))

(declare-fun b!2544238 () Bool)

(assert (=> b!2544238 (= e!1608524 tp_is_empty!13007)))

(assert (= (and b!2544065 (is-ElementMatch!7576 (regOne!15664 r!27340))) b!2544238))

(assert (= (and b!2544065 (is-Concat!12272 (regOne!15664 r!27340))) b!2544239))

(assert (= (and b!2544065 (is-Star!7576 (regOne!15664 r!27340))) b!2544240))

(assert (= (and b!2544065 (is-Union!7576 (regOne!15664 r!27340))) b!2544241))

(declare-fun b!2544244 () Bool)

(declare-fun e!1608525 () Bool)

(declare-fun tp!812314 () Bool)

(assert (=> b!2544244 (= e!1608525 tp!812314)))

(assert (=> b!2544065 (= tp!812271 e!1608525)))

(declare-fun b!2544243 () Bool)

(declare-fun tp!812312 () Bool)

(declare-fun tp!812311 () Bool)

(assert (=> b!2544243 (= e!1608525 (and tp!812312 tp!812311))))

(declare-fun b!2544245 () Bool)

(declare-fun tp!812313 () Bool)

(declare-fun tp!812310 () Bool)

(assert (=> b!2544245 (= e!1608525 (and tp!812313 tp!812310))))

(declare-fun b!2544242 () Bool)

(assert (=> b!2544242 (= e!1608525 tp_is_empty!13007)))

(assert (= (and b!2544065 (is-ElementMatch!7576 (regTwo!15664 r!27340))) b!2544242))

(assert (= (and b!2544065 (is-Concat!12272 (regTwo!15664 r!27340))) b!2544243))

(assert (= (and b!2544065 (is-Star!7576 (regTwo!15664 r!27340))) b!2544244))

(assert (= (and b!2544065 (is-Union!7576 (regTwo!15664 r!27340))) b!2544245))

(declare-fun b!2544250 () Bool)

(declare-fun e!1608528 () Bool)

(declare-fun tp!812317 () Bool)

(assert (=> b!2544250 (= e!1608528 (and tp_is_empty!13007 tp!812317))))

(assert (=> b!2544059 (= tp!812276 e!1608528)))

(assert (= (and b!2544059 (is-Cons!29541 (t!211340 tl!4068))) b!2544250))

(declare-fun b!2544253 () Bool)

(declare-fun e!1608529 () Bool)

(declare-fun tp!812322 () Bool)

(assert (=> b!2544253 (= e!1608529 tp!812322)))

(assert (=> b!2544061 (= tp!812275 e!1608529)))

(declare-fun b!2544252 () Bool)

(declare-fun tp!812320 () Bool)

(declare-fun tp!812319 () Bool)

(assert (=> b!2544252 (= e!1608529 (and tp!812320 tp!812319))))

(declare-fun b!2544254 () Bool)

(declare-fun tp!812321 () Bool)

(declare-fun tp!812318 () Bool)

(assert (=> b!2544254 (= e!1608529 (and tp!812321 tp!812318))))

(declare-fun b!2544251 () Bool)

(assert (=> b!2544251 (= e!1608529 tp_is_empty!13007)))

(assert (= (and b!2544061 (is-ElementMatch!7576 (regOne!15665 r!27340))) b!2544251))

(assert (= (and b!2544061 (is-Concat!12272 (regOne!15665 r!27340))) b!2544252))

(assert (= (and b!2544061 (is-Star!7576 (regOne!15665 r!27340))) b!2544253))

(assert (= (and b!2544061 (is-Union!7576 (regOne!15665 r!27340))) b!2544254))

(declare-fun b!2544257 () Bool)

(declare-fun e!1608530 () Bool)

(declare-fun tp!812327 () Bool)

(assert (=> b!2544257 (= e!1608530 tp!812327)))

(assert (=> b!2544061 (= tp!812273 e!1608530)))

(declare-fun b!2544256 () Bool)

(declare-fun tp!812325 () Bool)

(declare-fun tp!812324 () Bool)

(assert (=> b!2544256 (= e!1608530 (and tp!812325 tp!812324))))

(declare-fun b!2544258 () Bool)

(declare-fun tp!812326 () Bool)

(declare-fun tp!812323 () Bool)

(assert (=> b!2544258 (= e!1608530 (and tp!812326 tp!812323))))

(declare-fun b!2544255 () Bool)

(assert (=> b!2544255 (= e!1608530 tp_is_empty!13007)))

(assert (= (and b!2544061 (is-ElementMatch!7576 (regTwo!15665 r!27340))) b!2544255))

(assert (= (and b!2544061 (is-Concat!12272 (regTwo!15665 r!27340))) b!2544256))

(assert (= (and b!2544061 (is-Star!7576 (regTwo!15665 r!27340))) b!2544257))

(assert (= (and b!2544061 (is-Union!7576 (regTwo!15665 r!27340))) b!2544258))

(declare-fun b!2544261 () Bool)

(declare-fun e!1608531 () Bool)

(declare-fun tp!812332 () Bool)

(assert (=> b!2544261 (= e!1608531 tp!812332)))

(assert (=> b!2544060 (= tp!812274 e!1608531)))

(declare-fun b!2544260 () Bool)

(declare-fun tp!812330 () Bool)

(declare-fun tp!812329 () Bool)

(assert (=> b!2544260 (= e!1608531 (and tp!812330 tp!812329))))

(declare-fun b!2544262 () Bool)

(declare-fun tp!812331 () Bool)

(declare-fun tp!812328 () Bool)

(assert (=> b!2544262 (= e!1608531 (and tp!812331 tp!812328))))

(declare-fun b!2544259 () Bool)

(assert (=> b!2544259 (= e!1608531 tp_is_empty!13007)))

(assert (= (and b!2544060 (is-ElementMatch!7576 (reg!7905 r!27340))) b!2544259))

(assert (= (and b!2544060 (is-Concat!12272 (reg!7905 r!27340))) b!2544260))

(assert (= (and b!2544060 (is-Star!7576 (reg!7905 r!27340))) b!2544261))

(assert (= (and b!2544060 (is-Union!7576 (reg!7905 r!27340))) b!2544262))

(push 1)

(assert (not bm!161314))

(assert (not d!722182))

(assert (not b!2544158))

(assert (not b!2544254))

(assert tp_is_empty!13007)

(assert (not bm!161296))

(assert (not b!2544240))

(assert (not b!2544241))

(assert (not d!722170))

(assert (not b!2544243))

(assert (not b!2544200))

(assert (not b!2544197))

(assert (not b!2544256))

(assert (not bm!161310))

(assert (not b!2544258))

(assert (not bm!161303))

(assert (not d!722172))

(assert (not b!2544260))

(assert (not b!2544257))

(assert (not b!2544261))

(assert (not b!2544189))

(assert (not bm!161293))

(assert (not b!2544139))

(assert (not bm!161313))

(assert (not b!2544250))

(assert (not d!722166))

(assert (not b!2544253))

(assert (not bm!161311))

(assert (not b!2544245))

(assert (not b!2544164))

(assert (not b!2544239))

(assert (not b!2544252))

(assert (not d!722180))

(assert (not d!722176))

(assert (not b!2544244))

(assert (not bm!161300))

(assert (not b!2544262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

