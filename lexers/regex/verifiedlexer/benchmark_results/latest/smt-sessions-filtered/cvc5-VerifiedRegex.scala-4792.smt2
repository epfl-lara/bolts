; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!246714 () Bool)

(assert start!246714)

(declare-fun b!2538115 () Bool)

(declare-fun e!1605307 () Bool)

(declare-fun tp_is_empty!12971 () Bool)

(assert (=> b!2538115 (= e!1605307 tp_is_empty!12971)))

(declare-fun b!2538116 () Bool)

(declare-fun tp!810840 () Bool)

(declare-fun tp!810837 () Bool)

(assert (=> b!2538116 (= e!1605307 (and tp!810840 tp!810837))))

(declare-fun b!2538117 () Bool)

(declare-fun res!1070158 () Bool)

(declare-fun e!1605305 () Bool)

(assert (=> b!2538117 (=> (not res!1070158) (not e!1605305))))

(declare-datatypes ((C!15274 0))(
  ( (C!15275 (val!9289 Int)) )
))
(declare-datatypes ((List!29623 0))(
  ( (Nil!29523) (Cons!29523 (h!34943 C!15274) (t!211322 List!29623)) )
))
(declare-fun tl!4068 () List!29623)

(declare-datatypes ((Regex!7558 0))(
  ( (ElementMatch!7558 (c!405994 C!15274)) (Concat!12254 (regOne!15628 Regex!7558) (regTwo!15628 Regex!7558)) (EmptyExpr!7558) (Star!7558 (reg!7887 Regex!7558)) (EmptyLang!7558) (Union!7558 (regOne!15629 Regex!7558) (regTwo!15629 Regex!7558)) )
))
(declare-fun r!27340 () Regex!7558)

(declare-fun c!14016 () C!15274)

(declare-fun nullable!2475 (Regex!7558) Bool)

(declare-fun derivative!253 (Regex!7558 List!29623) Regex!7558)

(declare-fun derivativeStep!2127 (Regex!7558 C!15274) Regex!7558)

(assert (=> b!2538117 (= res!1070158 (not (nullable!2475 (derivative!253 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016) tl!4068))))))

(declare-fun b!2538118 () Bool)

(declare-fun res!1070159 () Bool)

(assert (=> b!2538118 (=> (not res!1070159) (not e!1605305))))

(assert (=> b!2538118 (= res!1070159 (nullable!2475 (derivative!253 (derivativeStep!2127 r!27340 c!14016) tl!4068)))))

(declare-fun b!2538120 () Bool)

(declare-fun tp!810836 () Bool)

(assert (=> b!2538120 (= e!1605307 tp!810836)))

(declare-fun b!2538121 () Bool)

(declare-fun res!1070161 () Bool)

(assert (=> b!2538121 (=> (not res!1070161) (not e!1605305))))

(assert (=> b!2538121 (= res!1070161 (and (not (is-EmptyExpr!7558 r!27340)) (not (is-EmptyLang!7558 r!27340)) (not (is-ElementMatch!7558 r!27340)) (is-Union!7558 r!27340)))))

(declare-fun b!2538122 () Bool)

(declare-fun validRegex!3184 (Regex!7558) Bool)

(assert (=> b!2538122 (= e!1605305 (not (validRegex!3184 (regOne!15629 r!27340))))))

(declare-fun lt!901646 () List!29623)

(declare-fun matchR!3513 (Regex!7558 List!29623) Bool)

(assert (=> b!2538122 (= (matchR!3513 r!27340 lt!901646) (matchR!3513 (derivative!253 r!27340 lt!901646) Nil!29523))))

(declare-datatypes ((Unit!43317 0))(
  ( (Unit!43318) )
))
(declare-fun lt!901645 () Unit!43317)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!159 (Regex!7558 List!29623) Unit!43317)

(assert (=> b!2538122 (= lt!901645 (lemmaMatchRIsSameAsWholeDerivativeAndNil!159 r!27340 lt!901646))))

(assert (=> b!2538122 (= lt!901646 (Cons!29523 c!14016 tl!4068))))

(declare-fun b!2538123 () Bool)

(declare-fun e!1605306 () Bool)

(declare-fun tp!810839 () Bool)

(assert (=> b!2538123 (= e!1605306 (and tp_is_empty!12971 tp!810839))))

(declare-fun b!2538124 () Bool)

(declare-fun res!1070160 () Bool)

(assert (=> b!2538124 (=> (not res!1070160) (not e!1605305))))

(assert (=> b!2538124 (= res!1070160 (not (nullable!2475 (derivative!253 (derivativeStep!2127 (regOne!15629 r!27340) c!14016) tl!4068))))))

(declare-fun b!2538119 () Bool)

(declare-fun tp!810835 () Bool)

(declare-fun tp!810838 () Bool)

(assert (=> b!2538119 (= e!1605307 (and tp!810835 tp!810838))))

(declare-fun res!1070157 () Bool)

(assert (=> start!246714 (=> (not res!1070157) (not e!1605305))))

(assert (=> start!246714 (= res!1070157 (validRegex!3184 r!27340))))

(assert (=> start!246714 e!1605305))

(assert (=> start!246714 e!1605307))

(assert (=> start!246714 tp_is_empty!12971))

(assert (=> start!246714 e!1605306))

(assert (= (and start!246714 res!1070157) b!2538118))

(assert (= (and b!2538118 res!1070159) b!2538121))

(assert (= (and b!2538121 res!1070161) b!2538124))

(assert (= (and b!2538124 res!1070160) b!2538117))

(assert (= (and b!2538117 res!1070158) b!2538122))

(assert (= (and start!246714 (is-ElementMatch!7558 r!27340)) b!2538115))

(assert (= (and start!246714 (is-Concat!12254 r!27340)) b!2538119))

(assert (= (and start!246714 (is-Star!7558 r!27340)) b!2538120))

(assert (= (and start!246714 (is-Union!7558 r!27340)) b!2538116))

(assert (= (and start!246714 (is-Cons!29523 tl!4068)) b!2538123))

(declare-fun m!2885881 () Bool)

(assert (=> b!2538118 m!2885881))

(assert (=> b!2538118 m!2885881))

(declare-fun m!2885883 () Bool)

(assert (=> b!2538118 m!2885883))

(assert (=> b!2538118 m!2885883))

(declare-fun m!2885885 () Bool)

(assert (=> b!2538118 m!2885885))

(declare-fun m!2885887 () Bool)

(assert (=> start!246714 m!2885887))

(declare-fun m!2885889 () Bool)

(assert (=> b!2538122 m!2885889))

(declare-fun m!2885891 () Bool)

(assert (=> b!2538122 m!2885891))

(declare-fun m!2885893 () Bool)

(assert (=> b!2538122 m!2885893))

(declare-fun m!2885895 () Bool)

(assert (=> b!2538122 m!2885895))

(declare-fun m!2885897 () Bool)

(assert (=> b!2538122 m!2885897))

(assert (=> b!2538122 m!2885893))

(declare-fun m!2885899 () Bool)

(assert (=> b!2538124 m!2885899))

(assert (=> b!2538124 m!2885899))

(declare-fun m!2885901 () Bool)

(assert (=> b!2538124 m!2885901))

(assert (=> b!2538124 m!2885901))

(declare-fun m!2885903 () Bool)

(assert (=> b!2538124 m!2885903))

(declare-fun m!2885905 () Bool)

(assert (=> b!2538117 m!2885905))

(assert (=> b!2538117 m!2885905))

(declare-fun m!2885907 () Bool)

(assert (=> b!2538117 m!2885907))

(assert (=> b!2538117 m!2885907))

(declare-fun m!2885909 () Bool)

(assert (=> b!2538117 m!2885909))

(push 1)

(assert (not start!246714))

(assert (not b!2538118))

(assert tp_is_empty!12971)

(assert (not b!2538119))

(assert (not b!2538122))

(assert (not b!2538120))

(assert (not b!2538117))

(assert (not b!2538116))

(assert (not b!2538124))

(assert (not b!2538123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!160121 () Bool)

(declare-fun call!160126 () Bool)

(declare-fun isEmpty!16977 (List!29623) Bool)

(assert (=> bm!160121 (= call!160126 (isEmpty!16977 Nil!29523))))

(declare-fun b!2538209 () Bool)

(declare-fun res!1070194 () Bool)

(declare-fun e!1605350 () Bool)

(assert (=> b!2538209 (=> res!1070194 e!1605350)))

(declare-fun tail!4056 (List!29623) List!29623)

(assert (=> b!2538209 (= res!1070194 (not (isEmpty!16977 (tail!4056 Nil!29523))))))

(declare-fun d!721001 () Bool)

(declare-fun e!1605344 () Bool)

(assert (=> d!721001 e!1605344))

(declare-fun c!406017 () Bool)

(assert (=> d!721001 (= c!406017 (is-EmptyExpr!7558 (derivative!253 r!27340 lt!901646)))))

(declare-fun lt!901660 () Bool)

(declare-fun e!1605349 () Bool)

(assert (=> d!721001 (= lt!901660 e!1605349)))

(declare-fun c!406016 () Bool)

(assert (=> d!721001 (= c!406016 (isEmpty!16977 Nil!29523))))

(assert (=> d!721001 (validRegex!3184 (derivative!253 r!27340 lt!901646))))

(assert (=> d!721001 (= (matchR!3513 (derivative!253 r!27340 lt!901646) Nil!29523) lt!901660)))

(declare-fun b!2538210 () Bool)

(declare-fun e!1605345 () Bool)

(assert (=> b!2538210 (= e!1605345 (not lt!901660))))

(declare-fun b!2538211 () Bool)

(declare-fun res!1070193 () Bool)

(declare-fun e!1605348 () Bool)

(assert (=> b!2538211 (=> (not res!1070193) (not e!1605348))))

(assert (=> b!2538211 (= res!1070193 (isEmpty!16977 (tail!4056 Nil!29523)))))

(declare-fun b!2538212 () Bool)

(declare-fun head!5781 (List!29623) C!15274)

(assert (=> b!2538212 (= e!1605349 (matchR!3513 (derivativeStep!2127 (derivative!253 r!27340 lt!901646) (head!5781 Nil!29523)) (tail!4056 Nil!29523)))))

(declare-fun b!2538213 () Bool)

(assert (=> b!2538213 (= e!1605350 (not (= (head!5781 Nil!29523) (c!405994 (derivative!253 r!27340 lt!901646)))))))

(declare-fun b!2538214 () Bool)

(declare-fun e!1605347 () Bool)

(declare-fun e!1605346 () Bool)

(assert (=> b!2538214 (= e!1605347 e!1605346)))

(declare-fun res!1070196 () Bool)

(assert (=> b!2538214 (=> (not res!1070196) (not e!1605346))))

(assert (=> b!2538214 (= res!1070196 (not lt!901660))))

(declare-fun b!2538215 () Bool)

(declare-fun res!1070199 () Bool)

(assert (=> b!2538215 (=> (not res!1070199) (not e!1605348))))

(assert (=> b!2538215 (= res!1070199 (not call!160126))))

(declare-fun b!2538216 () Bool)

(assert (=> b!2538216 (= e!1605348 (= (head!5781 Nil!29523) (c!405994 (derivative!253 r!27340 lt!901646))))))

(declare-fun b!2538217 () Bool)

(assert (=> b!2538217 (= e!1605349 (nullable!2475 (derivative!253 r!27340 lt!901646)))))

(declare-fun b!2538218 () Bool)

(declare-fun res!1070198 () Bool)

(assert (=> b!2538218 (=> res!1070198 e!1605347)))

(assert (=> b!2538218 (= res!1070198 e!1605348)))

(declare-fun res!1070195 () Bool)

(assert (=> b!2538218 (=> (not res!1070195) (not e!1605348))))

(assert (=> b!2538218 (= res!1070195 lt!901660)))

(declare-fun b!2538219 () Bool)

(assert (=> b!2538219 (= e!1605346 e!1605350)))

(declare-fun res!1070197 () Bool)

(assert (=> b!2538219 (=> res!1070197 e!1605350)))

(assert (=> b!2538219 (= res!1070197 call!160126)))

(declare-fun b!2538220 () Bool)

(declare-fun res!1070200 () Bool)

(assert (=> b!2538220 (=> res!1070200 e!1605347)))

(assert (=> b!2538220 (= res!1070200 (not (is-ElementMatch!7558 (derivative!253 r!27340 lt!901646))))))

(assert (=> b!2538220 (= e!1605345 e!1605347)))

(declare-fun b!2538221 () Bool)

(assert (=> b!2538221 (= e!1605344 (= lt!901660 call!160126))))

(declare-fun b!2538222 () Bool)

(assert (=> b!2538222 (= e!1605344 e!1605345)))

(declare-fun c!406015 () Bool)

(assert (=> b!2538222 (= c!406015 (is-EmptyLang!7558 (derivative!253 r!27340 lt!901646)))))

(assert (= (and d!721001 c!406016) b!2538217))

(assert (= (and d!721001 (not c!406016)) b!2538212))

(assert (= (and d!721001 c!406017) b!2538221))

(assert (= (and d!721001 (not c!406017)) b!2538222))

(assert (= (and b!2538222 c!406015) b!2538210))

(assert (= (and b!2538222 (not c!406015)) b!2538220))

(assert (= (and b!2538220 (not res!1070200)) b!2538218))

(assert (= (and b!2538218 res!1070195) b!2538215))

(assert (= (and b!2538215 res!1070199) b!2538211))

(assert (= (and b!2538211 res!1070193) b!2538216))

(assert (= (and b!2538218 (not res!1070198)) b!2538214))

(assert (= (and b!2538214 res!1070196) b!2538219))

(assert (= (and b!2538219 (not res!1070197)) b!2538209))

(assert (= (and b!2538209 (not res!1070194)) b!2538213))

(assert (= (or b!2538221 b!2538215 b!2538219) bm!160121))

(declare-fun m!2885951 () Bool)

(assert (=> bm!160121 m!2885951))

(declare-fun m!2885953 () Bool)

(assert (=> b!2538213 m!2885953))

(assert (=> d!721001 m!2885951))

(assert (=> d!721001 m!2885893))

(declare-fun m!2885955 () Bool)

(assert (=> d!721001 m!2885955))

(assert (=> b!2538212 m!2885953))

(assert (=> b!2538212 m!2885893))

(assert (=> b!2538212 m!2885953))

(declare-fun m!2885957 () Bool)

(assert (=> b!2538212 m!2885957))

(declare-fun m!2885959 () Bool)

(assert (=> b!2538212 m!2885959))

(assert (=> b!2538212 m!2885957))

(assert (=> b!2538212 m!2885959))

(declare-fun m!2885961 () Bool)

(assert (=> b!2538212 m!2885961))

(assert (=> b!2538217 m!2885893))

(declare-fun m!2885963 () Bool)

(assert (=> b!2538217 m!2885963))

(assert (=> b!2538211 m!2885959))

(assert (=> b!2538211 m!2885959))

(declare-fun m!2885965 () Bool)

(assert (=> b!2538211 m!2885965))

(assert (=> b!2538216 m!2885953))

(assert (=> b!2538209 m!2885959))

(assert (=> b!2538209 m!2885959))

(assert (=> b!2538209 m!2885965))

(assert (=> b!2538122 d!721001))

(declare-fun d!721009 () Bool)

(declare-fun lt!901663 () Regex!7558)

(assert (=> d!721009 (validRegex!3184 lt!901663)))

(declare-fun e!1605353 () Regex!7558)

(assert (=> d!721009 (= lt!901663 e!1605353)))

(declare-fun c!406020 () Bool)

(assert (=> d!721009 (= c!406020 (is-Cons!29523 lt!901646))))

(assert (=> d!721009 (validRegex!3184 r!27340)))

(assert (=> d!721009 (= (derivative!253 r!27340 lt!901646) lt!901663)))

(declare-fun b!2538227 () Bool)

(assert (=> b!2538227 (= e!1605353 (derivative!253 (derivativeStep!2127 r!27340 (h!34943 lt!901646)) (t!211322 lt!901646)))))

(declare-fun b!2538228 () Bool)

(assert (=> b!2538228 (= e!1605353 r!27340)))

(assert (= (and d!721009 c!406020) b!2538227))

(assert (= (and d!721009 (not c!406020)) b!2538228))

(declare-fun m!2885967 () Bool)

(assert (=> d!721009 m!2885967))

(assert (=> d!721009 m!2885887))

(declare-fun m!2885969 () Bool)

(assert (=> b!2538227 m!2885969))

(assert (=> b!2538227 m!2885969))

(declare-fun m!2885971 () Bool)

(assert (=> b!2538227 m!2885971))

(assert (=> b!2538122 d!721009))

(declare-fun b!2538269 () Bool)

(declare-fun e!1605382 () Bool)

(declare-fun e!1605383 () Bool)

(assert (=> b!2538269 (= e!1605382 e!1605383)))

(declare-fun res!1070212 () Bool)

(assert (=> b!2538269 (= res!1070212 (not (nullable!2475 (reg!7887 (regOne!15629 r!27340)))))))

(assert (=> b!2538269 (=> (not res!1070212) (not e!1605383))))

(declare-fun b!2538270 () Bool)

(declare-fun e!1605385 () Bool)

(declare-fun call!160149 () Bool)

(assert (=> b!2538270 (= e!1605385 call!160149)))

(declare-fun bm!160142 () Bool)

(declare-fun call!160148 () Bool)

(declare-fun call!160147 () Bool)

(assert (=> bm!160142 (= call!160148 call!160147)))

(declare-fun b!2538271 () Bool)

(declare-fun e!1605381 () Bool)

(assert (=> b!2538271 (= e!1605382 e!1605381)))

(declare-fun c!406036 () Bool)

(assert (=> b!2538271 (= c!406036 (is-Union!7558 (regOne!15629 r!27340)))))

(declare-fun b!2538272 () Bool)

(declare-fun e!1605384 () Bool)

(assert (=> b!2538272 (= e!1605384 e!1605382)))

(declare-fun c!406037 () Bool)

(assert (=> b!2538272 (= c!406037 (is-Star!7558 (regOne!15629 r!27340)))))

(declare-fun b!2538273 () Bool)

(declare-fun res!1070215 () Bool)

(declare-fun e!1605379 () Bool)

(assert (=> b!2538273 (=> res!1070215 e!1605379)))

(assert (=> b!2538273 (= res!1070215 (not (is-Concat!12254 (regOne!15629 r!27340))))))

(assert (=> b!2538273 (= e!1605381 e!1605379)))

(declare-fun b!2538274 () Bool)

(declare-fun e!1605380 () Bool)

(assert (=> b!2538274 (= e!1605380 call!160148)))

(declare-fun bm!160143 () Bool)

(assert (=> bm!160143 (= call!160149 (validRegex!3184 (ite c!406036 (regTwo!15629 (regOne!15629 r!27340)) (regOne!15628 (regOne!15629 r!27340)))))))

(declare-fun d!721011 () Bool)

(declare-fun res!1070211 () Bool)

(assert (=> d!721011 (=> res!1070211 e!1605384)))

(assert (=> d!721011 (= res!1070211 (is-ElementMatch!7558 (regOne!15629 r!27340)))))

(assert (=> d!721011 (= (validRegex!3184 (regOne!15629 r!27340)) e!1605384)))

(declare-fun b!2538275 () Bool)

(assert (=> b!2538275 (= e!1605383 call!160147)))

(declare-fun b!2538276 () Bool)

(assert (=> b!2538276 (= e!1605379 e!1605380)))

(declare-fun res!1070214 () Bool)

(assert (=> b!2538276 (=> (not res!1070214) (not e!1605380))))

(assert (=> b!2538276 (= res!1070214 call!160149)))

(declare-fun b!2538277 () Bool)

(declare-fun res!1070213 () Bool)

(assert (=> b!2538277 (=> (not res!1070213) (not e!1605385))))

(assert (=> b!2538277 (= res!1070213 call!160148)))

(assert (=> b!2538277 (= e!1605381 e!1605385)))

(declare-fun bm!160144 () Bool)

(assert (=> bm!160144 (= call!160147 (validRegex!3184 (ite c!406037 (reg!7887 (regOne!15629 r!27340)) (ite c!406036 (regOne!15629 (regOne!15629 r!27340)) (regTwo!15628 (regOne!15629 r!27340))))))))

(assert (= (and d!721011 (not res!1070211)) b!2538272))

(assert (= (and b!2538272 c!406037) b!2538269))

(assert (= (and b!2538272 (not c!406037)) b!2538271))

(assert (= (and b!2538269 res!1070212) b!2538275))

(assert (= (and b!2538271 c!406036) b!2538277))

(assert (= (and b!2538271 (not c!406036)) b!2538273))

(assert (= (and b!2538277 res!1070213) b!2538270))

(assert (= (and b!2538273 (not res!1070215)) b!2538276))

(assert (= (and b!2538276 res!1070214) b!2538274))

(assert (= (or b!2538277 b!2538274) bm!160142))

(assert (= (or b!2538270 b!2538276) bm!160143))

(assert (= (or b!2538275 bm!160142) bm!160144))

(declare-fun m!2886001 () Bool)

(assert (=> b!2538269 m!2886001))

(declare-fun m!2886003 () Bool)

(assert (=> bm!160143 m!2886003))

(declare-fun m!2886005 () Bool)

(assert (=> bm!160144 m!2886005))

(assert (=> b!2538122 d!721011))

(declare-fun d!721021 () Bool)

(assert (=> d!721021 (= (matchR!3513 r!27340 lt!901646) (matchR!3513 (derivative!253 r!27340 lt!901646) Nil!29523))))

(declare-fun lt!901671 () Unit!43317)

(declare-fun choose!15016 (Regex!7558 List!29623) Unit!43317)

(assert (=> d!721021 (= lt!901671 (choose!15016 r!27340 lt!901646))))

(assert (=> d!721021 (validRegex!3184 r!27340)))

(assert (=> d!721021 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!159 r!27340 lt!901646) lt!901671)))

(declare-fun bs!469328 () Bool)

(assert (= bs!469328 d!721021))

(assert (=> bs!469328 m!2885887))

(declare-fun m!2886007 () Bool)

(assert (=> bs!469328 m!2886007))

(assert (=> bs!469328 m!2885893))

(assert (=> bs!469328 m!2885893))

(assert (=> bs!469328 m!2885895))

(assert (=> bs!469328 m!2885891))

(assert (=> b!2538122 d!721021))

(declare-fun bm!160147 () Bool)

(declare-fun call!160152 () Bool)

(assert (=> bm!160147 (= call!160152 (isEmpty!16977 lt!901646))))

(declare-fun b!2538306 () Bool)

(declare-fun res!1070233 () Bool)

(declare-fun e!1605406 () Bool)

(assert (=> b!2538306 (=> res!1070233 e!1605406)))

(assert (=> b!2538306 (= res!1070233 (not (isEmpty!16977 (tail!4056 lt!901646))))))

(declare-fun d!721023 () Bool)

(declare-fun e!1605400 () Bool)

(assert (=> d!721023 e!1605400))

(declare-fun c!406046 () Bool)

(assert (=> d!721023 (= c!406046 (is-EmptyExpr!7558 r!27340))))

(declare-fun lt!901672 () Bool)

(declare-fun e!1605405 () Bool)

(assert (=> d!721023 (= lt!901672 e!1605405)))

(declare-fun c!406045 () Bool)

(assert (=> d!721023 (= c!406045 (isEmpty!16977 lt!901646))))

(assert (=> d!721023 (validRegex!3184 r!27340)))

(assert (=> d!721023 (= (matchR!3513 r!27340 lt!901646) lt!901672)))

(declare-fun b!2538307 () Bool)

(declare-fun e!1605401 () Bool)

(assert (=> b!2538307 (= e!1605401 (not lt!901672))))

(declare-fun b!2538308 () Bool)

(declare-fun res!1070232 () Bool)

(declare-fun e!1605404 () Bool)

(assert (=> b!2538308 (=> (not res!1070232) (not e!1605404))))

(assert (=> b!2538308 (= res!1070232 (isEmpty!16977 (tail!4056 lt!901646)))))

(declare-fun b!2538309 () Bool)

(assert (=> b!2538309 (= e!1605405 (matchR!3513 (derivativeStep!2127 r!27340 (head!5781 lt!901646)) (tail!4056 lt!901646)))))

(declare-fun b!2538310 () Bool)

(assert (=> b!2538310 (= e!1605406 (not (= (head!5781 lt!901646) (c!405994 r!27340))))))

(declare-fun b!2538311 () Bool)

(declare-fun e!1605403 () Bool)

(declare-fun e!1605402 () Bool)

(assert (=> b!2538311 (= e!1605403 e!1605402)))

(declare-fun res!1070235 () Bool)

(assert (=> b!2538311 (=> (not res!1070235) (not e!1605402))))

(assert (=> b!2538311 (= res!1070235 (not lt!901672))))

(declare-fun b!2538312 () Bool)

(declare-fun res!1070238 () Bool)

(assert (=> b!2538312 (=> (not res!1070238) (not e!1605404))))

(assert (=> b!2538312 (= res!1070238 (not call!160152))))

(declare-fun b!2538313 () Bool)

(assert (=> b!2538313 (= e!1605404 (= (head!5781 lt!901646) (c!405994 r!27340)))))

(declare-fun b!2538314 () Bool)

(assert (=> b!2538314 (= e!1605405 (nullable!2475 r!27340))))

(declare-fun b!2538315 () Bool)

(declare-fun res!1070237 () Bool)

(assert (=> b!2538315 (=> res!1070237 e!1605403)))

(assert (=> b!2538315 (= res!1070237 e!1605404)))

(declare-fun res!1070234 () Bool)

(assert (=> b!2538315 (=> (not res!1070234) (not e!1605404))))

(assert (=> b!2538315 (= res!1070234 lt!901672)))

(declare-fun b!2538316 () Bool)

(assert (=> b!2538316 (= e!1605402 e!1605406)))

(declare-fun res!1070236 () Bool)

(assert (=> b!2538316 (=> res!1070236 e!1605406)))

(assert (=> b!2538316 (= res!1070236 call!160152)))

(declare-fun b!2538317 () Bool)

(declare-fun res!1070239 () Bool)

(assert (=> b!2538317 (=> res!1070239 e!1605403)))

(assert (=> b!2538317 (= res!1070239 (not (is-ElementMatch!7558 r!27340)))))

(assert (=> b!2538317 (= e!1605401 e!1605403)))

(declare-fun b!2538318 () Bool)

(assert (=> b!2538318 (= e!1605400 (= lt!901672 call!160152))))

(declare-fun b!2538319 () Bool)

(assert (=> b!2538319 (= e!1605400 e!1605401)))

(declare-fun c!406044 () Bool)

(assert (=> b!2538319 (= c!406044 (is-EmptyLang!7558 r!27340))))

(assert (= (and d!721023 c!406045) b!2538314))

(assert (= (and d!721023 (not c!406045)) b!2538309))

(assert (= (and d!721023 c!406046) b!2538318))

(assert (= (and d!721023 (not c!406046)) b!2538319))

(assert (= (and b!2538319 c!406044) b!2538307))

(assert (= (and b!2538319 (not c!406044)) b!2538317))

(assert (= (and b!2538317 (not res!1070239)) b!2538315))

(assert (= (and b!2538315 res!1070234) b!2538312))

(assert (= (and b!2538312 res!1070238) b!2538308))

(assert (= (and b!2538308 res!1070232) b!2538313))

(assert (= (and b!2538315 (not res!1070237)) b!2538311))

(assert (= (and b!2538311 res!1070235) b!2538316))

(assert (= (and b!2538316 (not res!1070236)) b!2538306))

(assert (= (and b!2538306 (not res!1070233)) b!2538310))

(assert (= (or b!2538318 b!2538312 b!2538316) bm!160147))

(declare-fun m!2886009 () Bool)

(assert (=> bm!160147 m!2886009))

(declare-fun m!2886011 () Bool)

(assert (=> b!2538310 m!2886011))

(assert (=> d!721023 m!2886009))

(assert (=> d!721023 m!2885887))

(assert (=> b!2538309 m!2886011))

(assert (=> b!2538309 m!2886011))

(declare-fun m!2886013 () Bool)

(assert (=> b!2538309 m!2886013))

(declare-fun m!2886015 () Bool)

(assert (=> b!2538309 m!2886015))

(assert (=> b!2538309 m!2886013))

(assert (=> b!2538309 m!2886015))

(declare-fun m!2886017 () Bool)

(assert (=> b!2538309 m!2886017))

(declare-fun m!2886019 () Bool)

(assert (=> b!2538314 m!2886019))

(assert (=> b!2538308 m!2886015))

(assert (=> b!2538308 m!2886015))

(declare-fun m!2886021 () Bool)

(assert (=> b!2538308 m!2886021))

(assert (=> b!2538313 m!2886011))

(assert (=> b!2538306 m!2886015))

(assert (=> b!2538306 m!2886015))

(assert (=> b!2538306 m!2886021))

(assert (=> b!2538122 d!721023))

(declare-fun d!721025 () Bool)

(declare-fun nullableFct!708 (Regex!7558) Bool)

(assert (=> d!721025 (= (nullable!2475 (derivative!253 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016) tl!4068)) (nullableFct!708 (derivative!253 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469329 () Bool)

(assert (= bs!469329 d!721025))

(assert (=> bs!469329 m!2885907))

(declare-fun m!2886023 () Bool)

(assert (=> bs!469329 m!2886023))

(assert (=> b!2538117 d!721025))

(declare-fun d!721027 () Bool)

(declare-fun lt!901673 () Regex!7558)

(assert (=> d!721027 (validRegex!3184 lt!901673)))

(declare-fun e!1605407 () Regex!7558)

(assert (=> d!721027 (= lt!901673 e!1605407)))

(declare-fun c!406047 () Bool)

(assert (=> d!721027 (= c!406047 (is-Cons!29523 tl!4068))))

(assert (=> d!721027 (validRegex!3184 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016))))

(assert (=> d!721027 (= (derivative!253 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016) tl!4068) lt!901673)))

(declare-fun b!2538320 () Bool)

(assert (=> b!2538320 (= e!1605407 (derivative!253 (derivativeStep!2127 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016) (h!34943 tl!4068)) (t!211322 tl!4068)))))

(declare-fun b!2538321 () Bool)

(assert (=> b!2538321 (= e!1605407 (derivativeStep!2127 (regTwo!15629 r!27340) c!14016))))

(assert (= (and d!721027 c!406047) b!2538320))

(assert (= (and d!721027 (not c!406047)) b!2538321))

(declare-fun m!2886025 () Bool)

(assert (=> d!721027 m!2886025))

(assert (=> d!721027 m!2885905))

(declare-fun m!2886027 () Bool)

(assert (=> d!721027 m!2886027))

(assert (=> b!2538320 m!2885905))

(declare-fun m!2886029 () Bool)

(assert (=> b!2538320 m!2886029))

(assert (=> b!2538320 m!2886029))

(declare-fun m!2886031 () Bool)

(assert (=> b!2538320 m!2886031))

(assert (=> b!2538117 d!721027))

(declare-fun b!2538390 () Bool)

(declare-fun e!1605448 () Regex!7558)

(assert (=> b!2538390 (= e!1605448 EmptyLang!7558)))

(declare-fun b!2538391 () Bool)

(declare-fun e!1605447 () Regex!7558)

(declare-fun call!160169 () Regex!7558)

(assert (=> b!2538391 (= e!1605447 (Concat!12254 call!160169 (regTwo!15629 r!27340)))))

(declare-fun b!2538392 () Bool)

(declare-fun e!1605449 () Regex!7558)

(assert (=> b!2538392 (= e!1605449 e!1605447)))

(declare-fun c!406073 () Bool)

(assert (=> b!2538392 (= c!406073 (is-Star!7558 (regTwo!15629 r!27340)))))

(declare-fun bm!160164 () Bool)

(declare-fun c!406069 () Bool)

(declare-fun call!160171 () Regex!7558)

(assert (=> bm!160164 (= call!160171 (derivativeStep!2127 (ite c!406069 (regOne!15629 (regTwo!15629 r!27340)) (regTwo!15628 (regTwo!15629 r!27340))) c!14016))))

(declare-fun b!2538393 () Bool)

(declare-fun c!406070 () Bool)

(assert (=> b!2538393 (= c!406070 (nullable!2475 (regOne!15628 (regTwo!15629 r!27340))))))

(declare-fun e!1605450 () Regex!7558)

(assert (=> b!2538393 (= e!1605447 e!1605450)))

(declare-fun b!2538394 () Bool)

(declare-fun e!1605451 () Regex!7558)

(assert (=> b!2538394 (= e!1605448 e!1605451)))

(declare-fun c!406072 () Bool)

(assert (=> b!2538394 (= c!406072 (is-ElementMatch!7558 (regTwo!15629 r!27340)))))

(declare-fun bm!160165 () Bool)

(declare-fun call!160172 () Regex!7558)

(assert (=> bm!160165 (= call!160172 call!160169)))

(declare-fun d!721029 () Bool)

(declare-fun lt!901679 () Regex!7558)

(assert (=> d!721029 (validRegex!3184 lt!901679)))

(assert (=> d!721029 (= lt!901679 e!1605448)))

(declare-fun c!406071 () Bool)

(assert (=> d!721029 (= c!406071 (or (is-EmptyExpr!7558 (regTwo!15629 r!27340)) (is-EmptyLang!7558 (regTwo!15629 r!27340))))))

(assert (=> d!721029 (validRegex!3184 (regTwo!15629 r!27340))))

(assert (=> d!721029 (= (derivativeStep!2127 (regTwo!15629 r!27340) c!14016) lt!901679)))

(declare-fun b!2538395 () Bool)

(assert (=> b!2538395 (= e!1605450 (Union!7558 (Concat!12254 call!160172 (regTwo!15628 (regTwo!15629 r!27340))) call!160171))))

(declare-fun b!2538396 () Bool)

(assert (=> b!2538396 (= c!406069 (is-Union!7558 (regTwo!15629 r!27340)))))

(assert (=> b!2538396 (= e!1605451 e!1605449)))

(declare-fun b!2538397 () Bool)

(assert (=> b!2538397 (= e!1605451 (ite (= c!14016 (c!405994 (regTwo!15629 r!27340))) EmptyExpr!7558 EmptyLang!7558))))

(declare-fun call!160170 () Regex!7558)

(declare-fun bm!160166 () Bool)

(assert (=> bm!160166 (= call!160170 (derivativeStep!2127 (ite c!406069 (regTwo!15629 (regTwo!15629 r!27340)) (ite c!406073 (reg!7887 (regTwo!15629 r!27340)) (regOne!15628 (regTwo!15629 r!27340)))) c!14016))))

(declare-fun b!2538398 () Bool)

(assert (=> b!2538398 (= e!1605450 (Union!7558 (Concat!12254 call!160172 (regTwo!15628 (regTwo!15629 r!27340))) EmptyLang!7558))))

(declare-fun b!2538399 () Bool)

(assert (=> b!2538399 (= e!1605449 (Union!7558 call!160171 call!160170))))

(declare-fun bm!160167 () Bool)

(assert (=> bm!160167 (= call!160169 call!160170)))

(assert (= (and d!721029 c!406071) b!2538390))

(assert (= (and d!721029 (not c!406071)) b!2538394))

(assert (= (and b!2538394 c!406072) b!2538397))

(assert (= (and b!2538394 (not c!406072)) b!2538396))

(assert (= (and b!2538396 c!406069) b!2538399))

(assert (= (and b!2538396 (not c!406069)) b!2538392))

(assert (= (and b!2538392 c!406073) b!2538391))

(assert (= (and b!2538392 (not c!406073)) b!2538393))

(assert (= (and b!2538393 c!406070) b!2538395))

(assert (= (and b!2538393 (not c!406070)) b!2538398))

(assert (= (or b!2538395 b!2538398) bm!160165))

(assert (= (or b!2538391 bm!160165) bm!160167))

(assert (= (or b!2538399 bm!160167) bm!160166))

(assert (= (or b!2538399 b!2538395) bm!160164))

(declare-fun m!2886069 () Bool)

(assert (=> bm!160164 m!2886069))

(declare-fun m!2886071 () Bool)

(assert (=> b!2538393 m!2886071))

(declare-fun m!2886073 () Bool)

(assert (=> d!721029 m!2886073))

(declare-fun m!2886075 () Bool)

(assert (=> d!721029 m!2886075))

(declare-fun m!2886077 () Bool)

(assert (=> bm!160166 m!2886077))

(assert (=> b!2538117 d!721029))

(declare-fun d!721037 () Bool)

(assert (=> d!721037 (= (nullable!2475 (derivative!253 (derivativeStep!2127 r!27340 c!14016) tl!4068)) (nullableFct!708 (derivative!253 (derivativeStep!2127 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469330 () Bool)

(assert (= bs!469330 d!721037))

(assert (=> bs!469330 m!2885883))

(declare-fun m!2886079 () Bool)

(assert (=> bs!469330 m!2886079))

(assert (=> b!2538118 d!721037))

(declare-fun d!721039 () Bool)

(declare-fun lt!901680 () Regex!7558)

(assert (=> d!721039 (validRegex!3184 lt!901680)))

(declare-fun e!1605452 () Regex!7558)

(assert (=> d!721039 (= lt!901680 e!1605452)))

(declare-fun c!406074 () Bool)

(assert (=> d!721039 (= c!406074 (is-Cons!29523 tl!4068))))

(assert (=> d!721039 (validRegex!3184 (derivativeStep!2127 r!27340 c!14016))))

(assert (=> d!721039 (= (derivative!253 (derivativeStep!2127 r!27340 c!14016) tl!4068) lt!901680)))

(declare-fun b!2538400 () Bool)

(assert (=> b!2538400 (= e!1605452 (derivative!253 (derivativeStep!2127 (derivativeStep!2127 r!27340 c!14016) (h!34943 tl!4068)) (t!211322 tl!4068)))))

(declare-fun b!2538401 () Bool)

(assert (=> b!2538401 (= e!1605452 (derivativeStep!2127 r!27340 c!14016))))

(assert (= (and d!721039 c!406074) b!2538400))

(assert (= (and d!721039 (not c!406074)) b!2538401))

(declare-fun m!2886081 () Bool)

(assert (=> d!721039 m!2886081))

(assert (=> d!721039 m!2885881))

(declare-fun m!2886083 () Bool)

(assert (=> d!721039 m!2886083))

(assert (=> b!2538400 m!2885881))

(declare-fun m!2886085 () Bool)

(assert (=> b!2538400 m!2886085))

(assert (=> b!2538400 m!2886085))

(declare-fun m!2886087 () Bool)

(assert (=> b!2538400 m!2886087))

(assert (=> b!2538118 d!721039))

(declare-fun b!2538402 () Bool)

(declare-fun e!1605454 () Regex!7558)

(assert (=> b!2538402 (= e!1605454 EmptyLang!7558)))

(declare-fun b!2538403 () Bool)

(declare-fun e!1605453 () Regex!7558)

(declare-fun call!160173 () Regex!7558)

(assert (=> b!2538403 (= e!1605453 (Concat!12254 call!160173 r!27340))))

(declare-fun b!2538404 () Bool)

(declare-fun e!1605455 () Regex!7558)

(assert (=> b!2538404 (= e!1605455 e!1605453)))

(declare-fun c!406079 () Bool)

(assert (=> b!2538404 (= c!406079 (is-Star!7558 r!27340))))

(declare-fun c!406075 () Bool)

(declare-fun call!160175 () Regex!7558)

(declare-fun bm!160168 () Bool)

(assert (=> bm!160168 (= call!160175 (derivativeStep!2127 (ite c!406075 (regOne!15629 r!27340) (regTwo!15628 r!27340)) c!14016))))

(declare-fun b!2538405 () Bool)

(declare-fun c!406076 () Bool)

(assert (=> b!2538405 (= c!406076 (nullable!2475 (regOne!15628 r!27340)))))

(declare-fun e!1605456 () Regex!7558)

(assert (=> b!2538405 (= e!1605453 e!1605456)))

(declare-fun b!2538406 () Bool)

(declare-fun e!1605457 () Regex!7558)

(assert (=> b!2538406 (= e!1605454 e!1605457)))

(declare-fun c!406078 () Bool)

(assert (=> b!2538406 (= c!406078 (is-ElementMatch!7558 r!27340))))

(declare-fun bm!160169 () Bool)

(declare-fun call!160176 () Regex!7558)

(assert (=> bm!160169 (= call!160176 call!160173)))

(declare-fun d!721041 () Bool)

(declare-fun lt!901681 () Regex!7558)

(assert (=> d!721041 (validRegex!3184 lt!901681)))

(assert (=> d!721041 (= lt!901681 e!1605454)))

(declare-fun c!406077 () Bool)

(assert (=> d!721041 (= c!406077 (or (is-EmptyExpr!7558 r!27340) (is-EmptyLang!7558 r!27340)))))

(assert (=> d!721041 (validRegex!3184 r!27340)))

(assert (=> d!721041 (= (derivativeStep!2127 r!27340 c!14016) lt!901681)))

(declare-fun b!2538407 () Bool)

(assert (=> b!2538407 (= e!1605456 (Union!7558 (Concat!12254 call!160176 (regTwo!15628 r!27340)) call!160175))))

(declare-fun b!2538408 () Bool)

(assert (=> b!2538408 (= c!406075 (is-Union!7558 r!27340))))

(assert (=> b!2538408 (= e!1605457 e!1605455)))

(declare-fun b!2538409 () Bool)

(assert (=> b!2538409 (= e!1605457 (ite (= c!14016 (c!405994 r!27340)) EmptyExpr!7558 EmptyLang!7558))))

(declare-fun call!160174 () Regex!7558)

(declare-fun bm!160170 () Bool)

(assert (=> bm!160170 (= call!160174 (derivativeStep!2127 (ite c!406075 (regTwo!15629 r!27340) (ite c!406079 (reg!7887 r!27340) (regOne!15628 r!27340))) c!14016))))

(declare-fun b!2538410 () Bool)

(assert (=> b!2538410 (= e!1605456 (Union!7558 (Concat!12254 call!160176 (regTwo!15628 r!27340)) EmptyLang!7558))))

(declare-fun b!2538411 () Bool)

(assert (=> b!2538411 (= e!1605455 (Union!7558 call!160175 call!160174))))

(declare-fun bm!160171 () Bool)

(assert (=> bm!160171 (= call!160173 call!160174)))

(assert (= (and d!721041 c!406077) b!2538402))

(assert (= (and d!721041 (not c!406077)) b!2538406))

(assert (= (and b!2538406 c!406078) b!2538409))

(assert (= (and b!2538406 (not c!406078)) b!2538408))

(assert (= (and b!2538408 c!406075) b!2538411))

(assert (= (and b!2538408 (not c!406075)) b!2538404))

(assert (= (and b!2538404 c!406079) b!2538403))

(assert (= (and b!2538404 (not c!406079)) b!2538405))

(assert (= (and b!2538405 c!406076) b!2538407))

(assert (= (and b!2538405 (not c!406076)) b!2538410))

(assert (= (or b!2538407 b!2538410) bm!160169))

(assert (= (or b!2538403 bm!160169) bm!160171))

(assert (= (or b!2538411 bm!160171) bm!160170))

(assert (= (or b!2538411 b!2538407) bm!160168))

(declare-fun m!2886089 () Bool)

(assert (=> bm!160168 m!2886089))

(declare-fun m!2886091 () Bool)

(assert (=> b!2538405 m!2886091))

(declare-fun m!2886093 () Bool)

(assert (=> d!721041 m!2886093))

(assert (=> d!721041 m!2885887))

(declare-fun m!2886095 () Bool)

(assert (=> bm!160170 m!2886095))

(assert (=> b!2538118 d!721041))

(declare-fun b!2538421 () Bool)

(declare-fun e!1605468 () Bool)

(declare-fun e!1605469 () Bool)

(assert (=> b!2538421 (= e!1605468 e!1605469)))

(declare-fun res!1070272 () Bool)

(assert (=> b!2538421 (= res!1070272 (not (nullable!2475 (reg!7887 r!27340))))))

(assert (=> b!2538421 (=> (not res!1070272) (not e!1605469))))

(declare-fun b!2538422 () Bool)

(declare-fun e!1605471 () Bool)

(declare-fun call!160182 () Bool)

(assert (=> b!2538422 (= e!1605471 call!160182)))

(declare-fun bm!160175 () Bool)

(declare-fun call!160181 () Bool)

(declare-fun call!160180 () Bool)

(assert (=> bm!160175 (= call!160181 call!160180)))

(declare-fun b!2538423 () Bool)

(declare-fun e!1605467 () Bool)

(assert (=> b!2538423 (= e!1605468 e!1605467)))

(declare-fun c!406082 () Bool)

(assert (=> b!2538423 (= c!406082 (is-Union!7558 r!27340))))

(declare-fun b!2538424 () Bool)

(declare-fun e!1605470 () Bool)

(assert (=> b!2538424 (= e!1605470 e!1605468)))

(declare-fun c!406083 () Bool)

(assert (=> b!2538424 (= c!406083 (is-Star!7558 r!27340))))

(declare-fun b!2538425 () Bool)

(declare-fun res!1070275 () Bool)

(declare-fun e!1605465 () Bool)

(assert (=> b!2538425 (=> res!1070275 e!1605465)))

(assert (=> b!2538425 (= res!1070275 (not (is-Concat!12254 r!27340)))))

(assert (=> b!2538425 (= e!1605467 e!1605465)))

(declare-fun b!2538426 () Bool)

(declare-fun e!1605466 () Bool)

(assert (=> b!2538426 (= e!1605466 call!160181)))

(declare-fun bm!160176 () Bool)

(assert (=> bm!160176 (= call!160182 (validRegex!3184 (ite c!406082 (regTwo!15629 r!27340) (regOne!15628 r!27340))))))

(declare-fun d!721043 () Bool)

(declare-fun res!1070271 () Bool)

(assert (=> d!721043 (=> res!1070271 e!1605470)))

(assert (=> d!721043 (= res!1070271 (is-ElementMatch!7558 r!27340))))

(assert (=> d!721043 (= (validRegex!3184 r!27340) e!1605470)))

(declare-fun b!2538427 () Bool)

(assert (=> b!2538427 (= e!1605469 call!160180)))

(declare-fun b!2538428 () Bool)

(assert (=> b!2538428 (= e!1605465 e!1605466)))

(declare-fun res!1070274 () Bool)

(assert (=> b!2538428 (=> (not res!1070274) (not e!1605466))))

(assert (=> b!2538428 (= res!1070274 call!160182)))

(declare-fun b!2538429 () Bool)

(declare-fun res!1070273 () Bool)

(assert (=> b!2538429 (=> (not res!1070273) (not e!1605471))))

(assert (=> b!2538429 (= res!1070273 call!160181)))

(assert (=> b!2538429 (= e!1605467 e!1605471)))

(declare-fun bm!160177 () Bool)

(assert (=> bm!160177 (= call!160180 (validRegex!3184 (ite c!406083 (reg!7887 r!27340) (ite c!406082 (regOne!15629 r!27340) (regTwo!15628 r!27340)))))))

(assert (= (and d!721043 (not res!1070271)) b!2538424))

(assert (= (and b!2538424 c!406083) b!2538421))

(assert (= (and b!2538424 (not c!406083)) b!2538423))

(assert (= (and b!2538421 res!1070272) b!2538427))

(assert (= (and b!2538423 c!406082) b!2538429))

(assert (= (and b!2538423 (not c!406082)) b!2538425))

(assert (= (and b!2538429 res!1070273) b!2538422))

(assert (= (and b!2538425 (not res!1070275)) b!2538428))

(assert (= (and b!2538428 res!1070274) b!2538426))

(assert (= (or b!2538429 b!2538426) bm!160175))

(assert (= (or b!2538422 b!2538428) bm!160176))

(assert (= (or b!2538427 bm!160175) bm!160177))

(declare-fun m!2886099 () Bool)

(assert (=> b!2538421 m!2886099))

(declare-fun m!2886103 () Bool)

(assert (=> bm!160176 m!2886103))

(declare-fun m!2886107 () Bool)

(assert (=> bm!160177 m!2886107))

(assert (=> start!246714 d!721043))

(declare-fun d!721047 () Bool)

(assert (=> d!721047 (= (nullable!2475 (derivative!253 (derivativeStep!2127 (regOne!15629 r!27340) c!14016) tl!4068)) (nullableFct!708 (derivative!253 (derivativeStep!2127 (regOne!15629 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469331 () Bool)

(assert (= bs!469331 d!721047))

(assert (=> bs!469331 m!2885901))

(declare-fun m!2886109 () Bool)

(assert (=> bs!469331 m!2886109))

(assert (=> b!2538124 d!721047))

(declare-fun d!721049 () Bool)

(declare-fun lt!901682 () Regex!7558)

(assert (=> d!721049 (validRegex!3184 lt!901682)))

(declare-fun e!1605472 () Regex!7558)

(assert (=> d!721049 (= lt!901682 e!1605472)))

(declare-fun c!406084 () Bool)

(assert (=> d!721049 (= c!406084 (is-Cons!29523 tl!4068))))

(assert (=> d!721049 (validRegex!3184 (derivativeStep!2127 (regOne!15629 r!27340) c!14016))))

(assert (=> d!721049 (= (derivative!253 (derivativeStep!2127 (regOne!15629 r!27340) c!14016) tl!4068) lt!901682)))

(declare-fun b!2538430 () Bool)

(assert (=> b!2538430 (= e!1605472 (derivative!253 (derivativeStep!2127 (derivativeStep!2127 (regOne!15629 r!27340) c!14016) (h!34943 tl!4068)) (t!211322 tl!4068)))))

(declare-fun b!2538431 () Bool)

(assert (=> b!2538431 (= e!1605472 (derivativeStep!2127 (regOne!15629 r!27340) c!14016))))

(assert (= (and d!721049 c!406084) b!2538430))

(assert (= (and d!721049 (not c!406084)) b!2538431))

(declare-fun m!2886111 () Bool)

(assert (=> d!721049 m!2886111))

(assert (=> d!721049 m!2885899))

(declare-fun m!2886113 () Bool)

(assert (=> d!721049 m!2886113))

(assert (=> b!2538430 m!2885899))

(declare-fun m!2886115 () Bool)

(assert (=> b!2538430 m!2886115))

(assert (=> b!2538430 m!2886115))

(declare-fun m!2886117 () Bool)

(assert (=> b!2538430 m!2886117))

(assert (=> b!2538124 d!721049))

(declare-fun b!2538432 () Bool)

(declare-fun e!1605474 () Regex!7558)

(assert (=> b!2538432 (= e!1605474 EmptyLang!7558)))

(declare-fun b!2538433 () Bool)

(declare-fun e!1605473 () Regex!7558)

(declare-fun call!160183 () Regex!7558)

(assert (=> b!2538433 (= e!1605473 (Concat!12254 call!160183 (regOne!15629 r!27340)))))

(declare-fun b!2538434 () Bool)

(declare-fun e!1605475 () Regex!7558)

(assert (=> b!2538434 (= e!1605475 e!1605473)))

(declare-fun c!406089 () Bool)

(assert (=> b!2538434 (= c!406089 (is-Star!7558 (regOne!15629 r!27340)))))

(declare-fun call!160185 () Regex!7558)

(declare-fun c!406085 () Bool)

(declare-fun bm!160178 () Bool)

(assert (=> bm!160178 (= call!160185 (derivativeStep!2127 (ite c!406085 (regOne!15629 (regOne!15629 r!27340)) (regTwo!15628 (regOne!15629 r!27340))) c!14016))))

(declare-fun b!2538435 () Bool)

(declare-fun c!406086 () Bool)

(assert (=> b!2538435 (= c!406086 (nullable!2475 (regOne!15628 (regOne!15629 r!27340))))))

(declare-fun e!1605476 () Regex!7558)

(assert (=> b!2538435 (= e!1605473 e!1605476)))

(declare-fun b!2538436 () Bool)

(declare-fun e!1605477 () Regex!7558)

(assert (=> b!2538436 (= e!1605474 e!1605477)))

(declare-fun c!406088 () Bool)

(assert (=> b!2538436 (= c!406088 (is-ElementMatch!7558 (regOne!15629 r!27340)))))

(declare-fun bm!160179 () Bool)

(declare-fun call!160186 () Regex!7558)

(assert (=> bm!160179 (= call!160186 call!160183)))

(declare-fun d!721051 () Bool)

(declare-fun lt!901683 () Regex!7558)

(assert (=> d!721051 (validRegex!3184 lt!901683)))

(assert (=> d!721051 (= lt!901683 e!1605474)))

(declare-fun c!406087 () Bool)

(assert (=> d!721051 (= c!406087 (or (is-EmptyExpr!7558 (regOne!15629 r!27340)) (is-EmptyLang!7558 (regOne!15629 r!27340))))))

(assert (=> d!721051 (validRegex!3184 (regOne!15629 r!27340))))

(assert (=> d!721051 (= (derivativeStep!2127 (regOne!15629 r!27340) c!14016) lt!901683)))

(declare-fun b!2538437 () Bool)

(assert (=> b!2538437 (= e!1605476 (Union!7558 (Concat!12254 call!160186 (regTwo!15628 (regOne!15629 r!27340))) call!160185))))

(declare-fun b!2538438 () Bool)

(assert (=> b!2538438 (= c!406085 (is-Union!7558 (regOne!15629 r!27340)))))

(assert (=> b!2538438 (= e!1605477 e!1605475)))

(declare-fun b!2538439 () Bool)

(assert (=> b!2538439 (= e!1605477 (ite (= c!14016 (c!405994 (regOne!15629 r!27340))) EmptyExpr!7558 EmptyLang!7558))))

(declare-fun call!160184 () Regex!7558)

(declare-fun bm!160180 () Bool)

(assert (=> bm!160180 (= call!160184 (derivativeStep!2127 (ite c!406085 (regTwo!15629 (regOne!15629 r!27340)) (ite c!406089 (reg!7887 (regOne!15629 r!27340)) (regOne!15628 (regOne!15629 r!27340)))) c!14016))))

(declare-fun b!2538440 () Bool)

(assert (=> b!2538440 (= e!1605476 (Union!7558 (Concat!12254 call!160186 (regTwo!15628 (regOne!15629 r!27340))) EmptyLang!7558))))

(declare-fun b!2538441 () Bool)

(assert (=> b!2538441 (= e!1605475 (Union!7558 call!160185 call!160184))))

(declare-fun bm!160181 () Bool)

(assert (=> bm!160181 (= call!160183 call!160184)))

(assert (= (and d!721051 c!406087) b!2538432))

(assert (= (and d!721051 (not c!406087)) b!2538436))

(assert (= (and b!2538436 c!406088) b!2538439))

(assert (= (and b!2538436 (not c!406088)) b!2538438))

(assert (= (and b!2538438 c!406085) b!2538441))

(assert (= (and b!2538438 (not c!406085)) b!2538434))

(assert (= (and b!2538434 c!406089) b!2538433))

(assert (= (and b!2538434 (not c!406089)) b!2538435))

(assert (= (and b!2538435 c!406086) b!2538437))

(assert (= (and b!2538435 (not c!406086)) b!2538440))

(assert (= (or b!2538437 b!2538440) bm!160179))

(assert (= (or b!2538433 bm!160179) bm!160181))

(assert (= (or b!2538441 bm!160181) bm!160180))

(assert (= (or b!2538441 b!2538437) bm!160178))

(declare-fun m!2886119 () Bool)

(assert (=> bm!160178 m!2886119))

(declare-fun m!2886121 () Bool)

(assert (=> b!2538435 m!2886121))

(declare-fun m!2886123 () Bool)

(assert (=> d!721051 m!2886123))

(assert (=> d!721051 m!2885889))

(declare-fun m!2886125 () Bool)

(assert (=> bm!160180 m!2886125))

(assert (=> b!2538124 d!721051))

(declare-fun b!2538446 () Bool)

(declare-fun e!1605480 () Bool)

(declare-fun tp!810861 () Bool)

(assert (=> b!2538446 (= e!1605480 (and tp_is_empty!12971 tp!810861))))

(assert (=> b!2538123 (= tp!810839 e!1605480)))

(assert (= (and b!2538123 (is-Cons!29523 (t!211322 tl!4068))) b!2538446))

(declare-fun b!2538458 () Bool)

(declare-fun e!1605483 () Bool)

(declare-fun tp!810876 () Bool)

(declare-fun tp!810873 () Bool)

(assert (=> b!2538458 (= e!1605483 (and tp!810876 tp!810873))))

(assert (=> b!2538119 (= tp!810835 e!1605483)))

(declare-fun b!2538459 () Bool)

(declare-fun tp!810875 () Bool)

(assert (=> b!2538459 (= e!1605483 tp!810875)))

(declare-fun b!2538460 () Bool)

(declare-fun tp!810872 () Bool)

(declare-fun tp!810874 () Bool)

(assert (=> b!2538460 (= e!1605483 (and tp!810872 tp!810874))))

(declare-fun b!2538457 () Bool)

(assert (=> b!2538457 (= e!1605483 tp_is_empty!12971)))

(assert (= (and b!2538119 (is-ElementMatch!7558 (regOne!15628 r!27340))) b!2538457))

(assert (= (and b!2538119 (is-Concat!12254 (regOne!15628 r!27340))) b!2538458))

(assert (= (and b!2538119 (is-Star!7558 (regOne!15628 r!27340))) b!2538459))

(assert (= (and b!2538119 (is-Union!7558 (regOne!15628 r!27340))) b!2538460))

(declare-fun b!2538462 () Bool)

(declare-fun e!1605484 () Bool)

(declare-fun tp!810881 () Bool)

(declare-fun tp!810878 () Bool)

(assert (=> b!2538462 (= e!1605484 (and tp!810881 tp!810878))))

(assert (=> b!2538119 (= tp!810838 e!1605484)))

(declare-fun b!2538463 () Bool)

(declare-fun tp!810880 () Bool)

(assert (=> b!2538463 (= e!1605484 tp!810880)))

(declare-fun b!2538464 () Bool)

(declare-fun tp!810877 () Bool)

(declare-fun tp!810879 () Bool)

(assert (=> b!2538464 (= e!1605484 (and tp!810877 tp!810879))))

(declare-fun b!2538461 () Bool)

(assert (=> b!2538461 (= e!1605484 tp_is_empty!12971)))

(assert (= (and b!2538119 (is-ElementMatch!7558 (regTwo!15628 r!27340))) b!2538461))

(assert (= (and b!2538119 (is-Concat!12254 (regTwo!15628 r!27340))) b!2538462))

(assert (= (and b!2538119 (is-Star!7558 (regTwo!15628 r!27340))) b!2538463))

(assert (= (and b!2538119 (is-Union!7558 (regTwo!15628 r!27340))) b!2538464))

(declare-fun b!2538466 () Bool)

(declare-fun e!1605485 () Bool)

(declare-fun tp!810886 () Bool)

(declare-fun tp!810883 () Bool)

(assert (=> b!2538466 (= e!1605485 (and tp!810886 tp!810883))))

(assert (=> b!2538120 (= tp!810836 e!1605485)))

(declare-fun b!2538467 () Bool)

(declare-fun tp!810885 () Bool)

(assert (=> b!2538467 (= e!1605485 tp!810885)))

(declare-fun b!2538468 () Bool)

(declare-fun tp!810882 () Bool)

(declare-fun tp!810884 () Bool)

(assert (=> b!2538468 (= e!1605485 (and tp!810882 tp!810884))))

(declare-fun b!2538465 () Bool)

(assert (=> b!2538465 (= e!1605485 tp_is_empty!12971)))

(assert (= (and b!2538120 (is-ElementMatch!7558 (reg!7887 r!27340))) b!2538465))

(assert (= (and b!2538120 (is-Concat!12254 (reg!7887 r!27340))) b!2538466))

(assert (= (and b!2538120 (is-Star!7558 (reg!7887 r!27340))) b!2538467))

(assert (= (and b!2538120 (is-Union!7558 (reg!7887 r!27340))) b!2538468))

(declare-fun b!2538470 () Bool)

(declare-fun e!1605486 () Bool)

(declare-fun tp!810891 () Bool)

(declare-fun tp!810888 () Bool)

(assert (=> b!2538470 (= e!1605486 (and tp!810891 tp!810888))))

(assert (=> b!2538116 (= tp!810840 e!1605486)))

(declare-fun b!2538471 () Bool)

(declare-fun tp!810890 () Bool)

(assert (=> b!2538471 (= e!1605486 tp!810890)))

(declare-fun b!2538472 () Bool)

(declare-fun tp!810887 () Bool)

(declare-fun tp!810889 () Bool)

(assert (=> b!2538472 (= e!1605486 (and tp!810887 tp!810889))))

(declare-fun b!2538469 () Bool)

(assert (=> b!2538469 (= e!1605486 tp_is_empty!12971)))

(assert (= (and b!2538116 (is-ElementMatch!7558 (regOne!15629 r!27340))) b!2538469))

(assert (= (and b!2538116 (is-Concat!12254 (regOne!15629 r!27340))) b!2538470))

(assert (= (and b!2538116 (is-Star!7558 (regOne!15629 r!27340))) b!2538471))

(assert (= (and b!2538116 (is-Union!7558 (regOne!15629 r!27340))) b!2538472))

(declare-fun b!2538474 () Bool)

(declare-fun e!1605487 () Bool)

(declare-fun tp!810896 () Bool)

(declare-fun tp!810893 () Bool)

(assert (=> b!2538474 (= e!1605487 (and tp!810896 tp!810893))))

(assert (=> b!2538116 (= tp!810837 e!1605487)))

(declare-fun b!2538475 () Bool)

(declare-fun tp!810895 () Bool)

(assert (=> b!2538475 (= e!1605487 tp!810895)))

(declare-fun b!2538476 () Bool)

(declare-fun tp!810892 () Bool)

(declare-fun tp!810894 () Bool)

(assert (=> b!2538476 (= e!1605487 (and tp!810892 tp!810894))))

(declare-fun b!2538473 () Bool)

(assert (=> b!2538473 (= e!1605487 tp_is_empty!12971)))

(assert (= (and b!2538116 (is-ElementMatch!7558 (regTwo!15629 r!27340))) b!2538473))

(assert (= (and b!2538116 (is-Concat!12254 (regTwo!15629 r!27340))) b!2538474))

(assert (= (and b!2538116 (is-Star!7558 (regTwo!15629 r!27340))) b!2538475))

(assert (= (and b!2538116 (is-Union!7558 (regTwo!15629 r!27340))) b!2538476))

(push 1)

(assert (not d!721025))

(assert (not bm!160177))

(assert (not d!721051))

(assert (not b!2538470))

(assert (not bm!160147))

(assert (not b!2538459))

(assert (not b!2538269))

(assert (not bm!160180))

(assert (not d!721041))

(assert (not d!721021))

(assert (not b!2538476))

(assert (not b!2538474))

(assert (not bm!160121))

(assert (not b!2538458))

(assert (not d!721049))

(assert (not b!2538475))

(assert (not b!2538430))

(assert (not b!2538471))

(assert (not b!2538464))

(assert (not b!2538211))

(assert (not b!2538227))

(assert (not bm!160144))

(assert (not d!721047))

(assert (not bm!160170))

(assert (not b!2538460))

(assert (not d!721037))

(assert (not b!2538306))

(assert (not b!2538216))

(assert (not b!2538463))

(assert tp_is_empty!12971)

(assert (not b!2538213))

(assert (not b!2538467))

(assert (not b!2538446))

(assert (not d!721009))

(assert (not b!2538472))

(assert (not bm!160178))

(assert (not b!2538468))

(assert (not bm!160166))

(assert (not bm!160164))

(assert (not d!721027))

(assert (not d!721001))

(assert (not b!2538314))

(assert (not b!2538466))

(assert (not d!721029))

(assert (not b!2538217))

(assert (not bm!160176))

(assert (not b!2538393))

(assert (not b!2538405))

(assert (not b!2538209))

(assert (not bm!160143))

(assert (not b!2538309))

(assert (not b!2538308))

(assert (not b!2538435))

(assert (not d!721023))

(assert (not bm!160168))

(assert (not b!2538421))

(assert (not b!2538462))

(assert (not b!2538212))

(assert (not d!721039))

(assert (not b!2538310))

(assert (not b!2538313))

(assert (not b!2538320))

(assert (not b!2538400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

