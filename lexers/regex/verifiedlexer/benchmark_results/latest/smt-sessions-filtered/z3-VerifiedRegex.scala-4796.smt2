; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246848 () Bool)

(assert start!246848)

(declare-fun b!2541310 () Bool)

(declare-fun res!1071215 () Bool)

(declare-fun e!1606962 () Bool)

(assert (=> b!2541310 (=> (not res!1071215) (not e!1606962))))

(declare-datatypes ((C!15292 0))(
  ( (C!15293 (val!9298 Int)) )
))
(declare-datatypes ((List!29632 0))(
  ( (Nil!29532) (Cons!29532 (h!34952 C!15292) (t!211331 List!29632)) )
))
(declare-fun tl!4068 () List!29632)

(declare-datatypes ((Regex!7567 0))(
  ( (ElementMatch!7567 (c!406763 C!15292)) (Concat!12263 (regOne!15646 Regex!7567) (regTwo!15646 Regex!7567)) (EmptyExpr!7567) (Star!7567 (reg!7896 Regex!7567)) (EmptyLang!7567) (Union!7567 (regOne!15647 Regex!7567) (regTwo!15647 Regex!7567)) )
))
(declare-fun r!27340 () Regex!7567)

(declare-fun c!14016 () C!15292)

(declare-fun nullable!2484 (Regex!7567) Bool)

(declare-fun derivative!262 (Regex!7567 List!29632) Regex!7567)

(declare-fun derivativeStep!2136 (Regex!7567 C!15292) Regex!7567)

(assert (=> b!2541310 (= res!1071215 (not (nullable!2484 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068))))))

(declare-fun b!2541311 () Bool)

(declare-fun e!1606964 () Bool)

(declare-fun tp!811553 () Bool)

(declare-fun tp!811554 () Bool)

(assert (=> b!2541311 (= e!1606964 (and tp!811553 tp!811554))))

(declare-fun b!2541312 () Bool)

(declare-fun e!1606963 () Bool)

(declare-fun tp_is_empty!12989 () Bool)

(declare-fun tp!811558 () Bool)

(assert (=> b!2541312 (= e!1606963 (and tp_is_empty!12989 tp!811558))))

(declare-fun b!2541313 () Bool)

(declare-fun tp!811557 () Bool)

(assert (=> b!2541313 (= e!1606964 tp!811557)))

(declare-fun b!2541314 () Bool)

(declare-fun res!1071216 () Bool)

(assert (=> b!2541314 (=> (not res!1071216) (not e!1606962))))

(get-info :version)

(assert (=> b!2541314 (= res!1071216 (and (not ((_ is EmptyExpr!7567) r!27340)) (not ((_ is EmptyLang!7567) r!27340)) (not ((_ is ElementMatch!7567) r!27340)) ((_ is Union!7567) r!27340)))))

(declare-fun b!2541315 () Bool)

(declare-fun res!1071217 () Bool)

(assert (=> b!2541315 (=> (not res!1071217) (not e!1606962))))

(assert (=> b!2541315 (= res!1071217 (not (nullable!2484 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068))))))

(declare-fun b!2541309 () Bool)

(declare-fun tp!811555 () Bool)

(declare-fun tp!811556 () Bool)

(assert (=> b!2541309 (= e!1606964 (and tp!811555 tp!811556))))

(declare-fun res!1071218 () Bool)

(assert (=> start!246848 (=> (not res!1071218) (not e!1606962))))

(declare-fun validRegex!3193 (Regex!7567) Bool)

(assert (=> start!246848 (= res!1071218 (validRegex!3193 r!27340))))

(assert (=> start!246848 e!1606962))

(assert (=> start!246848 e!1606964))

(assert (=> start!246848 tp_is_empty!12989))

(assert (=> start!246848 e!1606963))

(declare-fun b!2541316 () Bool)

(assert (=> b!2541316 (= e!1606962 (not false))))

(declare-fun lt!901996 () Bool)

(declare-fun lt!901999 () Bool)

(assert (=> b!2541316 (or lt!901996 lt!901999)))

(declare-datatypes ((Unit!43335 0))(
  ( (Unit!43336) )
))
(declare-fun lt!902001 () Unit!43335)

(declare-fun lt!902004 () List!29632)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!192 (Regex!7567 Regex!7567 List!29632) Unit!43335)

(assert (=> b!2541316 (= lt!902001 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!192 (regOne!15647 r!27340) (regTwo!15647 r!27340) lt!902004))))

(declare-fun lt!902003 () Regex!7567)

(declare-fun matchR!3522 (Regex!7567 List!29632) Bool)

(assert (=> b!2541316 (= lt!901999 (matchR!3522 lt!902003 Nil!29532))))

(assert (=> b!2541316 (= lt!901999 (matchR!3522 (regTwo!15647 r!27340) lt!902004))))

(assert (=> b!2541316 (= lt!902003 (derivative!262 (regTwo!15647 r!27340) lt!902004))))

(declare-fun lt!901998 () Unit!43335)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!168 (Regex!7567 List!29632) Unit!43335)

(assert (=> b!2541316 (= lt!901998 (lemmaMatchRIsSameAsWholeDerivativeAndNil!168 (regTwo!15647 r!27340) lt!902004))))

(declare-fun lt!902002 () Regex!7567)

(assert (=> b!2541316 (= lt!901996 (matchR!3522 lt!902002 Nil!29532))))

(assert (=> b!2541316 (= lt!901996 (matchR!3522 (regOne!15647 r!27340) lt!902004))))

(assert (=> b!2541316 (= lt!902002 (derivative!262 (regOne!15647 r!27340) lt!902004))))

(declare-fun lt!902000 () Unit!43335)

(assert (=> b!2541316 (= lt!902000 (lemmaMatchRIsSameAsWholeDerivativeAndNil!168 (regOne!15647 r!27340) lt!902004))))

(assert (=> b!2541316 (= (matchR!3522 r!27340 lt!902004) (matchR!3522 (derivative!262 r!27340 lt!902004) Nil!29532))))

(declare-fun lt!901997 () Unit!43335)

(assert (=> b!2541316 (= lt!901997 (lemmaMatchRIsSameAsWholeDerivativeAndNil!168 r!27340 lt!902004))))

(assert (=> b!2541316 (= lt!902004 (Cons!29532 c!14016 tl!4068))))

(declare-fun b!2541317 () Bool)

(assert (=> b!2541317 (= e!1606964 tp_is_empty!12989)))

(declare-fun b!2541318 () Bool)

(declare-fun res!1071214 () Bool)

(assert (=> b!2541318 (=> (not res!1071214) (not e!1606962))))

(assert (=> b!2541318 (= res!1071214 (nullable!2484 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))

(assert (= (and start!246848 res!1071218) b!2541318))

(assert (= (and b!2541318 res!1071214) b!2541314))

(assert (= (and b!2541314 res!1071216) b!2541315))

(assert (= (and b!2541315 res!1071217) b!2541310))

(assert (= (and b!2541310 res!1071215) b!2541316))

(assert (= (and start!246848 ((_ is ElementMatch!7567) r!27340)) b!2541317))

(assert (= (and start!246848 ((_ is Concat!12263) r!27340)) b!2541311))

(assert (= (and start!246848 ((_ is Star!7567) r!27340)) b!2541313))

(assert (= (and start!246848 ((_ is Union!7567) r!27340)) b!2541309))

(assert (= (and start!246848 ((_ is Cons!29532) tl!4068)) b!2541312))

(declare-fun m!2888059 () Bool)

(assert (=> b!2541315 m!2888059))

(assert (=> b!2541315 m!2888059))

(declare-fun m!2888061 () Bool)

(assert (=> b!2541315 m!2888061))

(assert (=> b!2541315 m!2888061))

(declare-fun m!2888063 () Bool)

(assert (=> b!2541315 m!2888063))

(declare-fun m!2888065 () Bool)

(assert (=> b!2541318 m!2888065))

(assert (=> b!2541318 m!2888065))

(declare-fun m!2888067 () Bool)

(assert (=> b!2541318 m!2888067))

(assert (=> b!2541318 m!2888067))

(declare-fun m!2888069 () Bool)

(assert (=> b!2541318 m!2888069))

(declare-fun m!2888071 () Bool)

(assert (=> start!246848 m!2888071))

(declare-fun m!2888073 () Bool)

(assert (=> b!2541316 m!2888073))

(declare-fun m!2888075 () Bool)

(assert (=> b!2541316 m!2888075))

(declare-fun m!2888077 () Bool)

(assert (=> b!2541316 m!2888077))

(assert (=> b!2541316 m!2888075))

(declare-fun m!2888079 () Bool)

(assert (=> b!2541316 m!2888079))

(declare-fun m!2888081 () Bool)

(assert (=> b!2541316 m!2888081))

(declare-fun m!2888083 () Bool)

(assert (=> b!2541316 m!2888083))

(declare-fun m!2888085 () Bool)

(assert (=> b!2541316 m!2888085))

(declare-fun m!2888087 () Bool)

(assert (=> b!2541316 m!2888087))

(declare-fun m!2888089 () Bool)

(assert (=> b!2541316 m!2888089))

(declare-fun m!2888091 () Bool)

(assert (=> b!2541316 m!2888091))

(declare-fun m!2888093 () Bool)

(assert (=> b!2541316 m!2888093))

(declare-fun m!2888095 () Bool)

(assert (=> b!2541316 m!2888095))

(declare-fun m!2888097 () Bool)

(assert (=> b!2541316 m!2888097))

(declare-fun m!2888099 () Bool)

(assert (=> b!2541310 m!2888099))

(assert (=> b!2541310 m!2888099))

(declare-fun m!2888101 () Bool)

(assert (=> b!2541310 m!2888101))

(assert (=> b!2541310 m!2888101))

(declare-fun m!2888103 () Bool)

(assert (=> b!2541310 m!2888103))

(check-sat (not b!2541312) (not b!2541318) (not b!2541309) (not start!246848) (not b!2541315) tp_is_empty!12989 (not b!2541313) (not b!2541316) (not b!2541310) (not b!2541311))
(check-sat)
(get-model)

(declare-fun b!2541373 () Bool)

(declare-fun e!1606994 () Bool)

(declare-fun e!1606997 () Bool)

(assert (=> b!2541373 (= e!1606994 e!1606997)))

(declare-fun res!1071240 () Bool)

(assert (=> b!2541373 (=> res!1071240 e!1606997)))

(declare-fun call!160724 () Bool)

(assert (=> b!2541373 (= res!1071240 call!160724)))

(declare-fun b!2541374 () Bool)

(declare-fun e!1606992 () Bool)

(assert (=> b!2541374 (= e!1606992 (nullable!2484 lt!902003))))

(declare-fun b!2541375 () Bool)

(declare-fun e!1606995 () Bool)

(assert (=> b!2541375 (= e!1606995 e!1606994)))

(declare-fun res!1071235 () Bool)

(assert (=> b!2541375 (=> (not res!1071235) (not e!1606994))))

(declare-fun lt!902012 () Bool)

(assert (=> b!2541375 (= res!1071235 (not lt!902012))))

(declare-fun b!2541376 () Bool)

(declare-fun head!5789 (List!29632) C!15292)

(declare-fun tail!4064 (List!29632) List!29632)

(assert (=> b!2541376 (= e!1606992 (matchR!3522 (derivativeStep!2136 lt!902003 (head!5789 Nil!29532)) (tail!4064 Nil!29532)))))

(declare-fun b!2541377 () Bool)

(declare-fun res!1071242 () Bool)

(assert (=> b!2541377 (=> res!1071242 e!1606997)))

(declare-fun isEmpty!16986 (List!29632) Bool)

(assert (=> b!2541377 (= res!1071242 (not (isEmpty!16986 (tail!4064 Nil!29532))))))

(declare-fun bm!160719 () Bool)

(assert (=> bm!160719 (= call!160724 (isEmpty!16986 Nil!29532))))

(declare-fun b!2541378 () Bool)

(declare-fun e!1606996 () Bool)

(assert (=> b!2541378 (= e!1606996 (= lt!902012 call!160724))))

(declare-fun b!2541379 () Bool)

(declare-fun res!1071238 () Bool)

(assert (=> b!2541379 (=> res!1071238 e!1606995)))

(assert (=> b!2541379 (= res!1071238 (not ((_ is ElementMatch!7567) lt!902003)))))

(declare-fun e!1606993 () Bool)

(assert (=> b!2541379 (= e!1606993 e!1606995)))

(declare-fun b!2541380 () Bool)

(declare-fun res!1071241 () Bool)

(declare-fun e!1606998 () Bool)

(assert (=> b!2541380 (=> (not res!1071241) (not e!1606998))))

(assert (=> b!2541380 (= res!1071241 (isEmpty!16986 (tail!4064 Nil!29532)))))

(declare-fun d!721641 () Bool)

(assert (=> d!721641 e!1606996))

(declare-fun c!406783 () Bool)

(assert (=> d!721641 (= c!406783 ((_ is EmptyExpr!7567) lt!902003))))

(assert (=> d!721641 (= lt!902012 e!1606992)))

(declare-fun c!406785 () Bool)

(assert (=> d!721641 (= c!406785 (isEmpty!16986 Nil!29532))))

(assert (=> d!721641 (validRegex!3193 lt!902003)))

(assert (=> d!721641 (= (matchR!3522 lt!902003 Nil!29532) lt!902012)))

(declare-fun b!2541381 () Bool)

(assert (=> b!2541381 (= e!1606998 (= (head!5789 Nil!29532) (c!406763 lt!902003)))))

(declare-fun b!2541382 () Bool)

(declare-fun res!1071239 () Bool)

(assert (=> b!2541382 (=> (not res!1071239) (not e!1606998))))

(assert (=> b!2541382 (= res!1071239 (not call!160724))))

(declare-fun b!2541383 () Bool)

(assert (=> b!2541383 (= e!1606997 (not (= (head!5789 Nil!29532) (c!406763 lt!902003))))))

(declare-fun b!2541384 () Bool)

(assert (=> b!2541384 (= e!1606996 e!1606993)))

(declare-fun c!406784 () Bool)

(assert (=> b!2541384 (= c!406784 ((_ is EmptyLang!7567) lt!902003))))

(declare-fun b!2541385 () Bool)

(assert (=> b!2541385 (= e!1606993 (not lt!902012))))

(declare-fun b!2541386 () Bool)

(declare-fun res!1071237 () Bool)

(assert (=> b!2541386 (=> res!1071237 e!1606995)))

(assert (=> b!2541386 (= res!1071237 e!1606998)))

(declare-fun res!1071236 () Bool)

(assert (=> b!2541386 (=> (not res!1071236) (not e!1606998))))

(assert (=> b!2541386 (= res!1071236 lt!902012)))

(assert (= (and d!721641 c!406785) b!2541374))

(assert (= (and d!721641 (not c!406785)) b!2541376))

(assert (= (and d!721641 c!406783) b!2541378))

(assert (= (and d!721641 (not c!406783)) b!2541384))

(assert (= (and b!2541384 c!406784) b!2541385))

(assert (= (and b!2541384 (not c!406784)) b!2541379))

(assert (= (and b!2541379 (not res!1071238)) b!2541386))

(assert (= (and b!2541386 res!1071236) b!2541382))

(assert (= (and b!2541382 res!1071239) b!2541380))

(assert (= (and b!2541380 res!1071241) b!2541381))

(assert (= (and b!2541386 (not res!1071237)) b!2541375))

(assert (= (and b!2541375 res!1071235) b!2541373))

(assert (= (and b!2541373 (not res!1071240)) b!2541377))

(assert (= (and b!2541377 (not res!1071242)) b!2541383))

(assert (= (or b!2541378 b!2541373 b!2541382) bm!160719))

(declare-fun m!2888115 () Bool)

(assert (=> b!2541380 m!2888115))

(assert (=> b!2541380 m!2888115))

(declare-fun m!2888117 () Bool)

(assert (=> b!2541380 m!2888117))

(declare-fun m!2888119 () Bool)

(assert (=> b!2541383 m!2888119))

(assert (=> b!2541381 m!2888119))

(assert (=> b!2541377 m!2888115))

(assert (=> b!2541377 m!2888115))

(assert (=> b!2541377 m!2888117))

(declare-fun m!2888121 () Bool)

(assert (=> b!2541374 m!2888121))

(declare-fun m!2888123 () Bool)

(assert (=> bm!160719 m!2888123))

(assert (=> b!2541376 m!2888119))

(assert (=> b!2541376 m!2888119))

(declare-fun m!2888125 () Bool)

(assert (=> b!2541376 m!2888125))

(assert (=> b!2541376 m!2888115))

(assert (=> b!2541376 m!2888125))

(assert (=> b!2541376 m!2888115))

(declare-fun m!2888127 () Bool)

(assert (=> b!2541376 m!2888127))

(assert (=> d!721641 m!2888123))

(declare-fun m!2888129 () Bool)

(assert (=> d!721641 m!2888129))

(assert (=> b!2541316 d!721641))

(declare-fun d!721649 () Bool)

(assert (=> d!721649 (= (matchR!3522 (regOne!15647 r!27340) lt!902004) (matchR!3522 (derivative!262 (regOne!15647 r!27340) lt!902004) Nil!29532))))

(declare-fun lt!902017 () Unit!43335)

(declare-fun choose!15025 (Regex!7567 List!29632) Unit!43335)

(assert (=> d!721649 (= lt!902017 (choose!15025 (regOne!15647 r!27340) lt!902004))))

(assert (=> d!721649 (validRegex!3193 (regOne!15647 r!27340))))

(assert (=> d!721649 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!168 (regOne!15647 r!27340) lt!902004) lt!902017)))

(declare-fun bs!469407 () Bool)

(assert (= bs!469407 d!721649))

(assert (=> bs!469407 m!2888083))

(declare-fun m!2888147 () Bool)

(assert (=> bs!469407 m!2888147))

(declare-fun m!2888149 () Bool)

(assert (=> bs!469407 m!2888149))

(declare-fun m!2888151 () Bool)

(assert (=> bs!469407 m!2888151))

(assert (=> bs!469407 m!2888083))

(assert (=> bs!469407 m!2888091))

(assert (=> b!2541316 d!721649))

(declare-fun b!2541399 () Bool)

(declare-fun e!1607007 () Bool)

(declare-fun e!1607010 () Bool)

(assert (=> b!2541399 (= e!1607007 e!1607010)))

(declare-fun res!1071248 () Bool)

(assert (=> b!2541399 (=> res!1071248 e!1607010)))

(declare-fun call!160729 () Bool)

(assert (=> b!2541399 (= res!1071248 call!160729)))

(declare-fun b!2541400 () Bool)

(declare-fun e!1607005 () Bool)

(assert (=> b!2541400 (= e!1607005 (nullable!2484 lt!902002))))

(declare-fun b!2541401 () Bool)

(declare-fun e!1607008 () Bool)

(assert (=> b!2541401 (= e!1607008 e!1607007)))

(declare-fun res!1071243 () Bool)

(assert (=> b!2541401 (=> (not res!1071243) (not e!1607007))))

(declare-fun lt!902018 () Bool)

(assert (=> b!2541401 (= res!1071243 (not lt!902018))))

(declare-fun b!2541402 () Bool)

(assert (=> b!2541402 (= e!1607005 (matchR!3522 (derivativeStep!2136 lt!902002 (head!5789 Nil!29532)) (tail!4064 Nil!29532)))))

(declare-fun b!2541403 () Bool)

(declare-fun res!1071250 () Bool)

(assert (=> b!2541403 (=> res!1071250 e!1607010)))

(assert (=> b!2541403 (= res!1071250 (not (isEmpty!16986 (tail!4064 Nil!29532))))))

(declare-fun bm!160724 () Bool)

(assert (=> bm!160724 (= call!160729 (isEmpty!16986 Nil!29532))))

(declare-fun b!2541404 () Bool)

(declare-fun e!1607009 () Bool)

(assert (=> b!2541404 (= e!1607009 (= lt!902018 call!160729))))

(declare-fun b!2541405 () Bool)

(declare-fun res!1071246 () Bool)

(assert (=> b!2541405 (=> res!1071246 e!1607008)))

(assert (=> b!2541405 (= res!1071246 (not ((_ is ElementMatch!7567) lt!902002)))))

(declare-fun e!1607006 () Bool)

(assert (=> b!2541405 (= e!1607006 e!1607008)))

(declare-fun b!2541406 () Bool)

(declare-fun res!1071249 () Bool)

(declare-fun e!1607011 () Bool)

(assert (=> b!2541406 (=> (not res!1071249) (not e!1607011))))

(assert (=> b!2541406 (= res!1071249 (isEmpty!16986 (tail!4064 Nil!29532)))))

(declare-fun d!721655 () Bool)

(assert (=> d!721655 e!1607009))

(declare-fun c!406792 () Bool)

(assert (=> d!721655 (= c!406792 ((_ is EmptyExpr!7567) lt!902002))))

(assert (=> d!721655 (= lt!902018 e!1607005)))

(declare-fun c!406794 () Bool)

(assert (=> d!721655 (= c!406794 (isEmpty!16986 Nil!29532))))

(assert (=> d!721655 (validRegex!3193 lt!902002)))

(assert (=> d!721655 (= (matchR!3522 lt!902002 Nil!29532) lt!902018)))

(declare-fun b!2541407 () Bool)

(assert (=> b!2541407 (= e!1607011 (= (head!5789 Nil!29532) (c!406763 lt!902002)))))

(declare-fun b!2541408 () Bool)

(declare-fun res!1071247 () Bool)

(assert (=> b!2541408 (=> (not res!1071247) (not e!1607011))))

(assert (=> b!2541408 (= res!1071247 (not call!160729))))

(declare-fun b!2541409 () Bool)

(assert (=> b!2541409 (= e!1607010 (not (= (head!5789 Nil!29532) (c!406763 lt!902002))))))

(declare-fun b!2541410 () Bool)

(assert (=> b!2541410 (= e!1607009 e!1607006)))

(declare-fun c!406793 () Bool)

(assert (=> b!2541410 (= c!406793 ((_ is EmptyLang!7567) lt!902002))))

(declare-fun b!2541411 () Bool)

(assert (=> b!2541411 (= e!1607006 (not lt!902018))))

(declare-fun b!2541412 () Bool)

(declare-fun res!1071245 () Bool)

(assert (=> b!2541412 (=> res!1071245 e!1607008)))

(assert (=> b!2541412 (= res!1071245 e!1607011)))

(declare-fun res!1071244 () Bool)

(assert (=> b!2541412 (=> (not res!1071244) (not e!1607011))))

(assert (=> b!2541412 (= res!1071244 lt!902018)))

(assert (= (and d!721655 c!406794) b!2541400))

(assert (= (and d!721655 (not c!406794)) b!2541402))

(assert (= (and d!721655 c!406792) b!2541404))

(assert (= (and d!721655 (not c!406792)) b!2541410))

(assert (= (and b!2541410 c!406793) b!2541411))

(assert (= (and b!2541410 (not c!406793)) b!2541405))

(assert (= (and b!2541405 (not res!1071246)) b!2541412))

(assert (= (and b!2541412 res!1071244) b!2541408))

(assert (= (and b!2541408 res!1071247) b!2541406))

(assert (= (and b!2541406 res!1071249) b!2541407))

(assert (= (and b!2541412 (not res!1071245)) b!2541401))

(assert (= (and b!2541401 res!1071243) b!2541399))

(assert (= (and b!2541399 (not res!1071248)) b!2541403))

(assert (= (and b!2541403 (not res!1071250)) b!2541409))

(assert (= (or b!2541404 b!2541399 b!2541408) bm!160724))

(assert (=> b!2541406 m!2888115))

(assert (=> b!2541406 m!2888115))

(assert (=> b!2541406 m!2888117))

(assert (=> b!2541409 m!2888119))

(assert (=> b!2541407 m!2888119))

(assert (=> b!2541403 m!2888115))

(assert (=> b!2541403 m!2888115))

(assert (=> b!2541403 m!2888117))

(declare-fun m!2888153 () Bool)

(assert (=> b!2541400 m!2888153))

(assert (=> bm!160724 m!2888123))

(assert (=> b!2541402 m!2888119))

(assert (=> b!2541402 m!2888119))

(declare-fun m!2888155 () Bool)

(assert (=> b!2541402 m!2888155))

(assert (=> b!2541402 m!2888115))

(assert (=> b!2541402 m!2888155))

(assert (=> b!2541402 m!2888115))

(declare-fun m!2888157 () Bool)

(assert (=> b!2541402 m!2888157))

(assert (=> d!721655 m!2888123))

(declare-fun m!2888159 () Bool)

(assert (=> d!721655 m!2888159))

(assert (=> b!2541316 d!721655))

(declare-fun d!721657 () Bool)

(assert (=> d!721657 (= (matchR!3522 r!27340 lt!902004) (matchR!3522 (derivative!262 r!27340 lt!902004) Nil!29532))))

(declare-fun lt!902021 () Unit!43335)

(assert (=> d!721657 (= lt!902021 (choose!15025 r!27340 lt!902004))))

(assert (=> d!721657 (validRegex!3193 r!27340)))

(assert (=> d!721657 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!168 r!27340 lt!902004) lt!902021)))

(declare-fun bs!469408 () Bool)

(assert (= bs!469408 d!721657))

(assert (=> bs!469408 m!2888075))

(assert (=> bs!469408 m!2888079))

(declare-fun m!2888161 () Bool)

(assert (=> bs!469408 m!2888161))

(assert (=> bs!469408 m!2888071))

(assert (=> bs!469408 m!2888075))

(assert (=> bs!469408 m!2888095))

(assert (=> b!2541316 d!721657))

(declare-fun d!721659 () Bool)

(declare-fun lt!902025 () Regex!7567)

(assert (=> d!721659 (validRegex!3193 lt!902025)))

(declare-fun e!1607014 () Regex!7567)

(assert (=> d!721659 (= lt!902025 e!1607014)))

(declare-fun c!406797 () Bool)

(assert (=> d!721659 (= c!406797 ((_ is Cons!29532) lt!902004))))

(assert (=> d!721659 (validRegex!3193 (regTwo!15647 r!27340))))

(assert (=> d!721659 (= (derivative!262 (regTwo!15647 r!27340) lt!902004) lt!902025)))

(declare-fun b!2541417 () Bool)

(assert (=> b!2541417 (= e!1607014 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) (h!34952 lt!902004)) (t!211331 lt!902004)))))

(declare-fun b!2541418 () Bool)

(assert (=> b!2541418 (= e!1607014 (regTwo!15647 r!27340))))

(assert (= (and d!721659 c!406797) b!2541417))

(assert (= (and d!721659 (not c!406797)) b!2541418))

(declare-fun m!2888167 () Bool)

(assert (=> d!721659 m!2888167))

(declare-fun m!2888169 () Bool)

(assert (=> d!721659 m!2888169))

(declare-fun m!2888171 () Bool)

(assert (=> b!2541417 m!2888171))

(assert (=> b!2541417 m!2888171))

(declare-fun m!2888173 () Bool)

(assert (=> b!2541417 m!2888173))

(assert (=> b!2541316 d!721659))

(declare-fun b!2541419 () Bool)

(declare-fun e!1607017 () Bool)

(declare-fun e!1607020 () Bool)

(assert (=> b!2541419 (= e!1607017 e!1607020)))

(declare-fun res!1071256 () Bool)

(assert (=> b!2541419 (=> res!1071256 e!1607020)))

(declare-fun call!160730 () Bool)

(assert (=> b!2541419 (= res!1071256 call!160730)))

(declare-fun b!2541420 () Bool)

(declare-fun e!1607015 () Bool)

(assert (=> b!2541420 (= e!1607015 (nullable!2484 (regOne!15647 r!27340)))))

(declare-fun b!2541421 () Bool)

(declare-fun e!1607018 () Bool)

(assert (=> b!2541421 (= e!1607018 e!1607017)))

(declare-fun res!1071251 () Bool)

(assert (=> b!2541421 (=> (not res!1071251) (not e!1607017))))

(declare-fun lt!902026 () Bool)

(assert (=> b!2541421 (= res!1071251 (not lt!902026))))

(declare-fun b!2541422 () Bool)

(assert (=> b!2541422 (= e!1607015 (matchR!3522 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)) (tail!4064 lt!902004)))))

(declare-fun b!2541423 () Bool)

(declare-fun res!1071258 () Bool)

(assert (=> b!2541423 (=> res!1071258 e!1607020)))

(assert (=> b!2541423 (= res!1071258 (not (isEmpty!16986 (tail!4064 lt!902004))))))

(declare-fun bm!160725 () Bool)

(assert (=> bm!160725 (= call!160730 (isEmpty!16986 lt!902004))))

(declare-fun b!2541424 () Bool)

(declare-fun e!1607019 () Bool)

(assert (=> b!2541424 (= e!1607019 (= lt!902026 call!160730))))

(declare-fun b!2541425 () Bool)

(declare-fun res!1071254 () Bool)

(assert (=> b!2541425 (=> res!1071254 e!1607018)))

(assert (=> b!2541425 (= res!1071254 (not ((_ is ElementMatch!7567) (regOne!15647 r!27340))))))

(declare-fun e!1607016 () Bool)

(assert (=> b!2541425 (= e!1607016 e!1607018)))

(declare-fun b!2541426 () Bool)

(declare-fun res!1071257 () Bool)

(declare-fun e!1607021 () Bool)

(assert (=> b!2541426 (=> (not res!1071257) (not e!1607021))))

(assert (=> b!2541426 (= res!1071257 (isEmpty!16986 (tail!4064 lt!902004)))))

(declare-fun d!721663 () Bool)

(assert (=> d!721663 e!1607019))

(declare-fun c!406798 () Bool)

(assert (=> d!721663 (= c!406798 ((_ is EmptyExpr!7567) (regOne!15647 r!27340)))))

(assert (=> d!721663 (= lt!902026 e!1607015)))

(declare-fun c!406800 () Bool)

(assert (=> d!721663 (= c!406800 (isEmpty!16986 lt!902004))))

(assert (=> d!721663 (validRegex!3193 (regOne!15647 r!27340))))

(assert (=> d!721663 (= (matchR!3522 (regOne!15647 r!27340) lt!902004) lt!902026)))

(declare-fun b!2541427 () Bool)

(assert (=> b!2541427 (= e!1607021 (= (head!5789 lt!902004) (c!406763 (regOne!15647 r!27340))))))

(declare-fun b!2541428 () Bool)

(declare-fun res!1071255 () Bool)

(assert (=> b!2541428 (=> (not res!1071255) (not e!1607021))))

(assert (=> b!2541428 (= res!1071255 (not call!160730))))

(declare-fun b!2541429 () Bool)

(assert (=> b!2541429 (= e!1607020 (not (= (head!5789 lt!902004) (c!406763 (regOne!15647 r!27340)))))))

(declare-fun b!2541430 () Bool)

(assert (=> b!2541430 (= e!1607019 e!1607016)))

(declare-fun c!406799 () Bool)

(assert (=> b!2541430 (= c!406799 ((_ is EmptyLang!7567) (regOne!15647 r!27340)))))

(declare-fun b!2541431 () Bool)

(assert (=> b!2541431 (= e!1607016 (not lt!902026))))

(declare-fun b!2541432 () Bool)

(declare-fun res!1071253 () Bool)

(assert (=> b!2541432 (=> res!1071253 e!1607018)))

(assert (=> b!2541432 (= res!1071253 e!1607021)))

(declare-fun res!1071252 () Bool)

(assert (=> b!2541432 (=> (not res!1071252) (not e!1607021))))

(assert (=> b!2541432 (= res!1071252 lt!902026)))

(assert (= (and d!721663 c!406800) b!2541420))

(assert (= (and d!721663 (not c!406800)) b!2541422))

(assert (= (and d!721663 c!406798) b!2541424))

(assert (= (and d!721663 (not c!406798)) b!2541430))

(assert (= (and b!2541430 c!406799) b!2541431))

(assert (= (and b!2541430 (not c!406799)) b!2541425))

(assert (= (and b!2541425 (not res!1071254)) b!2541432))

(assert (= (and b!2541432 res!1071252) b!2541428))

(assert (= (and b!2541428 res!1071255) b!2541426))

(assert (= (and b!2541426 res!1071257) b!2541427))

(assert (= (and b!2541432 (not res!1071253)) b!2541421))

(assert (= (and b!2541421 res!1071251) b!2541419))

(assert (= (and b!2541419 (not res!1071256)) b!2541423))

(assert (= (and b!2541423 (not res!1071258)) b!2541429))

(assert (= (or b!2541424 b!2541419 b!2541428) bm!160725))

(declare-fun m!2888175 () Bool)

(assert (=> b!2541426 m!2888175))

(assert (=> b!2541426 m!2888175))

(declare-fun m!2888177 () Bool)

(assert (=> b!2541426 m!2888177))

(declare-fun m!2888179 () Bool)

(assert (=> b!2541429 m!2888179))

(assert (=> b!2541427 m!2888179))

(assert (=> b!2541423 m!2888175))

(assert (=> b!2541423 m!2888175))

(assert (=> b!2541423 m!2888177))

(declare-fun m!2888181 () Bool)

(assert (=> b!2541420 m!2888181))

(declare-fun m!2888183 () Bool)

(assert (=> bm!160725 m!2888183))

(assert (=> b!2541422 m!2888179))

(assert (=> b!2541422 m!2888179))

(declare-fun m!2888185 () Bool)

(assert (=> b!2541422 m!2888185))

(assert (=> b!2541422 m!2888175))

(assert (=> b!2541422 m!2888185))

(assert (=> b!2541422 m!2888175))

(declare-fun m!2888187 () Bool)

(assert (=> b!2541422 m!2888187))

(assert (=> d!721663 m!2888183))

(assert (=> d!721663 m!2888151))

(assert (=> b!2541316 d!721663))

(declare-fun b!2541433 () Bool)

(declare-fun e!1607024 () Bool)

(declare-fun e!1607027 () Bool)

(assert (=> b!2541433 (= e!1607024 e!1607027)))

(declare-fun res!1071264 () Bool)

(assert (=> b!2541433 (=> res!1071264 e!1607027)))

(declare-fun call!160731 () Bool)

(assert (=> b!2541433 (= res!1071264 call!160731)))

(declare-fun b!2541434 () Bool)

(declare-fun e!1607022 () Bool)

(assert (=> b!2541434 (= e!1607022 (nullable!2484 (regTwo!15647 r!27340)))))

(declare-fun b!2541435 () Bool)

(declare-fun e!1607025 () Bool)

(assert (=> b!2541435 (= e!1607025 e!1607024)))

(declare-fun res!1071259 () Bool)

(assert (=> b!2541435 (=> (not res!1071259) (not e!1607024))))

(declare-fun lt!902027 () Bool)

(assert (=> b!2541435 (= res!1071259 (not lt!902027))))

(declare-fun b!2541436 () Bool)

(assert (=> b!2541436 (= e!1607022 (matchR!3522 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)) (tail!4064 lt!902004)))))

(declare-fun b!2541437 () Bool)

(declare-fun res!1071266 () Bool)

(assert (=> b!2541437 (=> res!1071266 e!1607027)))

(assert (=> b!2541437 (= res!1071266 (not (isEmpty!16986 (tail!4064 lt!902004))))))

(declare-fun bm!160726 () Bool)

(assert (=> bm!160726 (= call!160731 (isEmpty!16986 lt!902004))))

(declare-fun b!2541438 () Bool)

(declare-fun e!1607026 () Bool)

(assert (=> b!2541438 (= e!1607026 (= lt!902027 call!160731))))

(declare-fun b!2541439 () Bool)

(declare-fun res!1071262 () Bool)

(assert (=> b!2541439 (=> res!1071262 e!1607025)))

(assert (=> b!2541439 (= res!1071262 (not ((_ is ElementMatch!7567) (regTwo!15647 r!27340))))))

(declare-fun e!1607023 () Bool)

(assert (=> b!2541439 (= e!1607023 e!1607025)))

(declare-fun b!2541440 () Bool)

(declare-fun res!1071265 () Bool)

(declare-fun e!1607028 () Bool)

(assert (=> b!2541440 (=> (not res!1071265) (not e!1607028))))

(assert (=> b!2541440 (= res!1071265 (isEmpty!16986 (tail!4064 lt!902004)))))

(declare-fun d!721665 () Bool)

(assert (=> d!721665 e!1607026))

(declare-fun c!406801 () Bool)

(assert (=> d!721665 (= c!406801 ((_ is EmptyExpr!7567) (regTwo!15647 r!27340)))))

(assert (=> d!721665 (= lt!902027 e!1607022)))

(declare-fun c!406803 () Bool)

(assert (=> d!721665 (= c!406803 (isEmpty!16986 lt!902004))))

(assert (=> d!721665 (validRegex!3193 (regTwo!15647 r!27340))))

(assert (=> d!721665 (= (matchR!3522 (regTwo!15647 r!27340) lt!902004) lt!902027)))

(declare-fun b!2541441 () Bool)

(assert (=> b!2541441 (= e!1607028 (= (head!5789 lt!902004) (c!406763 (regTwo!15647 r!27340))))))

(declare-fun b!2541442 () Bool)

(declare-fun res!1071263 () Bool)

(assert (=> b!2541442 (=> (not res!1071263) (not e!1607028))))

(assert (=> b!2541442 (= res!1071263 (not call!160731))))

(declare-fun b!2541443 () Bool)

(assert (=> b!2541443 (= e!1607027 (not (= (head!5789 lt!902004) (c!406763 (regTwo!15647 r!27340)))))))

(declare-fun b!2541444 () Bool)

(assert (=> b!2541444 (= e!1607026 e!1607023)))

(declare-fun c!406802 () Bool)

(assert (=> b!2541444 (= c!406802 ((_ is EmptyLang!7567) (regTwo!15647 r!27340)))))

(declare-fun b!2541445 () Bool)

(assert (=> b!2541445 (= e!1607023 (not lt!902027))))

(declare-fun b!2541446 () Bool)

(declare-fun res!1071261 () Bool)

(assert (=> b!2541446 (=> res!1071261 e!1607025)))

(assert (=> b!2541446 (= res!1071261 e!1607028)))

(declare-fun res!1071260 () Bool)

(assert (=> b!2541446 (=> (not res!1071260) (not e!1607028))))

(assert (=> b!2541446 (= res!1071260 lt!902027)))

(assert (= (and d!721665 c!406803) b!2541434))

(assert (= (and d!721665 (not c!406803)) b!2541436))

(assert (= (and d!721665 c!406801) b!2541438))

(assert (= (and d!721665 (not c!406801)) b!2541444))

(assert (= (and b!2541444 c!406802) b!2541445))

(assert (= (and b!2541444 (not c!406802)) b!2541439))

(assert (= (and b!2541439 (not res!1071262)) b!2541446))

(assert (= (and b!2541446 res!1071260) b!2541442))

(assert (= (and b!2541442 res!1071263) b!2541440))

(assert (= (and b!2541440 res!1071265) b!2541441))

(assert (= (and b!2541446 (not res!1071261)) b!2541435))

(assert (= (and b!2541435 res!1071259) b!2541433))

(assert (= (and b!2541433 (not res!1071264)) b!2541437))

(assert (= (and b!2541437 (not res!1071266)) b!2541443))

(assert (= (or b!2541438 b!2541433 b!2541442) bm!160726))

(assert (=> b!2541440 m!2888175))

(assert (=> b!2541440 m!2888175))

(assert (=> b!2541440 m!2888177))

(assert (=> b!2541443 m!2888179))

(assert (=> b!2541441 m!2888179))

(assert (=> b!2541437 m!2888175))

(assert (=> b!2541437 m!2888175))

(assert (=> b!2541437 m!2888177))

(declare-fun m!2888189 () Bool)

(assert (=> b!2541434 m!2888189))

(assert (=> bm!160726 m!2888183))

(assert (=> b!2541436 m!2888179))

(assert (=> b!2541436 m!2888179))

(declare-fun m!2888191 () Bool)

(assert (=> b!2541436 m!2888191))

(assert (=> b!2541436 m!2888175))

(assert (=> b!2541436 m!2888191))

(assert (=> b!2541436 m!2888175))

(declare-fun m!2888193 () Bool)

(assert (=> b!2541436 m!2888193))

(assert (=> d!721665 m!2888183))

(assert (=> d!721665 m!2888169))

(assert (=> b!2541316 d!721665))

(declare-fun d!721667 () Bool)

(declare-fun e!1607055 () Bool)

(assert (=> d!721667 e!1607055))

(declare-fun res!1071295 () Bool)

(assert (=> d!721667 (=> res!1071295 e!1607055)))

(assert (=> d!721667 (= res!1071295 (matchR!3522 (regOne!15647 r!27340) lt!902004))))

(declare-fun lt!902033 () Unit!43335)

(declare-fun choose!15026 (Regex!7567 Regex!7567 List!29632) Unit!43335)

(assert (=> d!721667 (= lt!902033 (choose!15026 (regOne!15647 r!27340) (regTwo!15647 r!27340) lt!902004))))

(declare-fun e!1607054 () Bool)

(assert (=> d!721667 e!1607054))

(declare-fun res!1071296 () Bool)

(assert (=> d!721667 (=> (not res!1071296) (not e!1607054))))

(assert (=> d!721667 (= res!1071296 (validRegex!3193 (regOne!15647 r!27340)))))

(assert (=> d!721667 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!192 (regOne!15647 r!27340) (regTwo!15647 r!27340) lt!902004) lt!902033)))

(declare-fun b!2541493 () Bool)

(assert (=> b!2541493 (= e!1607054 (validRegex!3193 (regTwo!15647 r!27340)))))

(declare-fun b!2541494 () Bool)

(assert (=> b!2541494 (= e!1607055 (matchR!3522 (regTwo!15647 r!27340) lt!902004))))

(assert (= (and d!721667 res!1071296) b!2541493))

(assert (= (and d!721667 (not res!1071295)) b!2541494))

(assert (=> d!721667 m!2888091))

(declare-fun m!2888205 () Bool)

(assert (=> d!721667 m!2888205))

(assert (=> d!721667 m!2888151))

(assert (=> b!2541493 m!2888169))

(assert (=> b!2541494 m!2888087))

(assert (=> b!2541316 d!721667))

(declare-fun d!721669 () Bool)

(assert (=> d!721669 (= (matchR!3522 (regTwo!15647 r!27340) lt!902004) (matchR!3522 (derivative!262 (regTwo!15647 r!27340) lt!902004) Nil!29532))))

(declare-fun lt!902034 () Unit!43335)

(assert (=> d!721669 (= lt!902034 (choose!15025 (regTwo!15647 r!27340) lt!902004))))

(assert (=> d!721669 (validRegex!3193 (regTwo!15647 r!27340))))

(assert (=> d!721669 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!168 (regTwo!15647 r!27340) lt!902004) lt!902034)))

(declare-fun bs!469411 () Bool)

(assert (= bs!469411 d!721669))

(assert (=> bs!469411 m!2888085))

(declare-fun m!2888213 () Bool)

(assert (=> bs!469411 m!2888213))

(declare-fun m!2888217 () Bool)

(assert (=> bs!469411 m!2888217))

(assert (=> bs!469411 m!2888169))

(assert (=> bs!469411 m!2888085))

(assert (=> bs!469411 m!2888087))

(assert (=> b!2541316 d!721669))

(declare-fun b!2541509 () Bool)

(declare-fun e!1607065 () Bool)

(declare-fun e!1607068 () Bool)

(assert (=> b!2541509 (= e!1607065 e!1607068)))

(declare-fun res!1071310 () Bool)

(assert (=> b!2541509 (=> res!1071310 e!1607068)))

(declare-fun call!160736 () Bool)

(assert (=> b!2541509 (= res!1071310 call!160736)))

(declare-fun b!2541510 () Bool)

(declare-fun e!1607063 () Bool)

(assert (=> b!2541510 (= e!1607063 (nullable!2484 r!27340))))

(declare-fun b!2541511 () Bool)

(declare-fun e!1607066 () Bool)

(assert (=> b!2541511 (= e!1607066 e!1607065)))

(declare-fun res!1071305 () Bool)

(assert (=> b!2541511 (=> (not res!1071305) (not e!1607065))))

(declare-fun lt!902037 () Bool)

(assert (=> b!2541511 (= res!1071305 (not lt!902037))))

(declare-fun b!2541512 () Bool)

(assert (=> b!2541512 (= e!1607063 (matchR!3522 (derivativeStep!2136 r!27340 (head!5789 lt!902004)) (tail!4064 lt!902004)))))

(declare-fun b!2541513 () Bool)

(declare-fun res!1071312 () Bool)

(assert (=> b!2541513 (=> res!1071312 e!1607068)))

(assert (=> b!2541513 (= res!1071312 (not (isEmpty!16986 (tail!4064 lt!902004))))))

(declare-fun bm!160731 () Bool)

(assert (=> bm!160731 (= call!160736 (isEmpty!16986 lt!902004))))

(declare-fun b!2541514 () Bool)

(declare-fun e!1607067 () Bool)

(assert (=> b!2541514 (= e!1607067 (= lt!902037 call!160736))))

(declare-fun b!2541515 () Bool)

(declare-fun res!1071308 () Bool)

(assert (=> b!2541515 (=> res!1071308 e!1607066)))

(assert (=> b!2541515 (= res!1071308 (not ((_ is ElementMatch!7567) r!27340)))))

(declare-fun e!1607064 () Bool)

(assert (=> b!2541515 (= e!1607064 e!1607066)))

(declare-fun b!2541516 () Bool)

(declare-fun res!1071311 () Bool)

(declare-fun e!1607069 () Bool)

(assert (=> b!2541516 (=> (not res!1071311) (not e!1607069))))

(assert (=> b!2541516 (= res!1071311 (isEmpty!16986 (tail!4064 lt!902004)))))

(declare-fun d!721675 () Bool)

(assert (=> d!721675 e!1607067))

(declare-fun c!406816 () Bool)

(assert (=> d!721675 (= c!406816 ((_ is EmptyExpr!7567) r!27340))))

(assert (=> d!721675 (= lt!902037 e!1607063)))

(declare-fun c!406818 () Bool)

(assert (=> d!721675 (= c!406818 (isEmpty!16986 lt!902004))))

(assert (=> d!721675 (validRegex!3193 r!27340)))

(assert (=> d!721675 (= (matchR!3522 r!27340 lt!902004) lt!902037)))

(declare-fun b!2541517 () Bool)

(assert (=> b!2541517 (= e!1607069 (= (head!5789 lt!902004) (c!406763 r!27340)))))

(declare-fun b!2541518 () Bool)

(declare-fun res!1071309 () Bool)

(assert (=> b!2541518 (=> (not res!1071309) (not e!1607069))))

(assert (=> b!2541518 (= res!1071309 (not call!160736))))

(declare-fun b!2541519 () Bool)

(assert (=> b!2541519 (= e!1607068 (not (= (head!5789 lt!902004) (c!406763 r!27340))))))

(declare-fun b!2541520 () Bool)

(assert (=> b!2541520 (= e!1607067 e!1607064)))

(declare-fun c!406817 () Bool)

(assert (=> b!2541520 (= c!406817 ((_ is EmptyLang!7567) r!27340))))

(declare-fun b!2541521 () Bool)

(assert (=> b!2541521 (= e!1607064 (not lt!902037))))

(declare-fun b!2541522 () Bool)

(declare-fun res!1071307 () Bool)

(assert (=> b!2541522 (=> res!1071307 e!1607066)))

(assert (=> b!2541522 (= res!1071307 e!1607069)))

(declare-fun res!1071306 () Bool)

(assert (=> b!2541522 (=> (not res!1071306) (not e!1607069))))

(assert (=> b!2541522 (= res!1071306 lt!902037)))

(assert (= (and d!721675 c!406818) b!2541510))

(assert (= (and d!721675 (not c!406818)) b!2541512))

(assert (= (and d!721675 c!406816) b!2541514))

(assert (= (and d!721675 (not c!406816)) b!2541520))

(assert (= (and b!2541520 c!406817) b!2541521))

(assert (= (and b!2541520 (not c!406817)) b!2541515))

(assert (= (and b!2541515 (not res!1071308)) b!2541522))

(assert (= (and b!2541522 res!1071306) b!2541518))

(assert (= (and b!2541518 res!1071309) b!2541516))

(assert (= (and b!2541516 res!1071311) b!2541517))

(assert (= (and b!2541522 (not res!1071307)) b!2541511))

(assert (= (and b!2541511 res!1071305) b!2541509))

(assert (= (and b!2541509 (not res!1071310)) b!2541513))

(assert (= (and b!2541513 (not res!1071312)) b!2541519))

(assert (= (or b!2541514 b!2541509 b!2541518) bm!160731))

(assert (=> b!2541516 m!2888175))

(assert (=> b!2541516 m!2888175))

(assert (=> b!2541516 m!2888177))

(assert (=> b!2541519 m!2888179))

(assert (=> b!2541517 m!2888179))

(assert (=> b!2541513 m!2888175))

(assert (=> b!2541513 m!2888175))

(assert (=> b!2541513 m!2888177))

(declare-fun m!2888227 () Bool)

(assert (=> b!2541510 m!2888227))

(assert (=> bm!160731 m!2888183))

(assert (=> b!2541512 m!2888179))

(assert (=> b!2541512 m!2888179))

(declare-fun m!2888231 () Bool)

(assert (=> b!2541512 m!2888231))

(assert (=> b!2541512 m!2888175))

(assert (=> b!2541512 m!2888231))

(assert (=> b!2541512 m!2888175))

(declare-fun m!2888233 () Bool)

(assert (=> b!2541512 m!2888233))

(assert (=> d!721675 m!2888183))

(assert (=> d!721675 m!2888071))

(assert (=> b!2541316 d!721675))

(declare-fun d!721681 () Bool)

(declare-fun lt!902040 () Regex!7567)

(assert (=> d!721681 (validRegex!3193 lt!902040)))

(declare-fun e!1607071 () Regex!7567)

(assert (=> d!721681 (= lt!902040 e!1607071)))

(declare-fun c!406820 () Bool)

(assert (=> d!721681 (= c!406820 ((_ is Cons!29532) lt!902004))))

(assert (=> d!721681 (validRegex!3193 r!27340)))

(assert (=> d!721681 (= (derivative!262 r!27340 lt!902004) lt!902040)))

(declare-fun b!2541525 () Bool)

(assert (=> b!2541525 (= e!1607071 (derivative!262 (derivativeStep!2136 r!27340 (h!34952 lt!902004)) (t!211331 lt!902004)))))

(declare-fun b!2541526 () Bool)

(assert (=> b!2541526 (= e!1607071 r!27340)))

(assert (= (and d!721681 c!406820) b!2541525))

(assert (= (and d!721681 (not c!406820)) b!2541526))

(declare-fun m!2888241 () Bool)

(assert (=> d!721681 m!2888241))

(assert (=> d!721681 m!2888071))

(declare-fun m!2888243 () Bool)

(assert (=> b!2541525 m!2888243))

(assert (=> b!2541525 m!2888243))

(declare-fun m!2888245 () Bool)

(assert (=> b!2541525 m!2888245))

(assert (=> b!2541316 d!721681))

(declare-fun d!721685 () Bool)

(declare-fun lt!902042 () Regex!7567)

(assert (=> d!721685 (validRegex!3193 lt!902042)))

(declare-fun e!1607079 () Regex!7567)

(assert (=> d!721685 (= lt!902042 e!1607079)))

(declare-fun c!406824 () Bool)

(assert (=> d!721685 (= c!406824 ((_ is Cons!29532) lt!902004))))

(assert (=> d!721685 (validRegex!3193 (regOne!15647 r!27340))))

(assert (=> d!721685 (= (derivative!262 (regOne!15647 r!27340) lt!902004) lt!902042)))

(declare-fun b!2541541 () Bool)

(assert (=> b!2541541 (= e!1607079 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) (h!34952 lt!902004)) (t!211331 lt!902004)))))

(declare-fun b!2541542 () Bool)

(assert (=> b!2541542 (= e!1607079 (regOne!15647 r!27340))))

(assert (= (and d!721685 c!406824) b!2541541))

(assert (= (and d!721685 (not c!406824)) b!2541542))

(declare-fun m!2888247 () Bool)

(assert (=> d!721685 m!2888247))

(assert (=> d!721685 m!2888151))

(declare-fun m!2888249 () Bool)

(assert (=> b!2541541 m!2888249))

(assert (=> b!2541541 m!2888249))

(declare-fun m!2888251 () Bool)

(assert (=> b!2541541 m!2888251))

(assert (=> b!2541316 d!721685))

(declare-fun b!2541543 () Bool)

(declare-fun e!1607082 () Bool)

(declare-fun e!1607085 () Bool)

(assert (=> b!2541543 (= e!1607082 e!1607085)))

(declare-fun res!1071326 () Bool)

(assert (=> b!2541543 (=> res!1071326 e!1607085)))

(declare-fun call!160738 () Bool)

(assert (=> b!2541543 (= res!1071326 call!160738)))

(declare-fun b!2541544 () Bool)

(declare-fun e!1607080 () Bool)

(assert (=> b!2541544 (= e!1607080 (nullable!2484 (derivative!262 r!27340 lt!902004)))))

(declare-fun b!2541545 () Bool)

(declare-fun e!1607083 () Bool)

(assert (=> b!2541545 (= e!1607083 e!1607082)))

(declare-fun res!1071321 () Bool)

(assert (=> b!2541545 (=> (not res!1071321) (not e!1607082))))

(declare-fun lt!902043 () Bool)

(assert (=> b!2541545 (= res!1071321 (not lt!902043))))

(declare-fun b!2541546 () Bool)

(assert (=> b!2541546 (= e!1607080 (matchR!3522 (derivativeStep!2136 (derivative!262 r!27340 lt!902004) (head!5789 Nil!29532)) (tail!4064 Nil!29532)))))

(declare-fun b!2541547 () Bool)

(declare-fun res!1071328 () Bool)

(assert (=> b!2541547 (=> res!1071328 e!1607085)))

(assert (=> b!2541547 (= res!1071328 (not (isEmpty!16986 (tail!4064 Nil!29532))))))

(declare-fun bm!160733 () Bool)

(assert (=> bm!160733 (= call!160738 (isEmpty!16986 Nil!29532))))

(declare-fun b!2541548 () Bool)

(declare-fun e!1607084 () Bool)

(assert (=> b!2541548 (= e!1607084 (= lt!902043 call!160738))))

(declare-fun b!2541549 () Bool)

(declare-fun res!1071324 () Bool)

(assert (=> b!2541549 (=> res!1071324 e!1607083)))

(assert (=> b!2541549 (= res!1071324 (not ((_ is ElementMatch!7567) (derivative!262 r!27340 lt!902004))))))

(declare-fun e!1607081 () Bool)

(assert (=> b!2541549 (= e!1607081 e!1607083)))

(declare-fun b!2541550 () Bool)

(declare-fun res!1071327 () Bool)

(declare-fun e!1607086 () Bool)

(assert (=> b!2541550 (=> (not res!1071327) (not e!1607086))))

(assert (=> b!2541550 (= res!1071327 (isEmpty!16986 (tail!4064 Nil!29532)))))

(declare-fun d!721687 () Bool)

(assert (=> d!721687 e!1607084))

(declare-fun c!406825 () Bool)

(assert (=> d!721687 (= c!406825 ((_ is EmptyExpr!7567) (derivative!262 r!27340 lt!902004)))))

(assert (=> d!721687 (= lt!902043 e!1607080)))

(declare-fun c!406827 () Bool)

(assert (=> d!721687 (= c!406827 (isEmpty!16986 Nil!29532))))

(assert (=> d!721687 (validRegex!3193 (derivative!262 r!27340 lt!902004))))

(assert (=> d!721687 (= (matchR!3522 (derivative!262 r!27340 lt!902004) Nil!29532) lt!902043)))

(declare-fun b!2541551 () Bool)

(assert (=> b!2541551 (= e!1607086 (= (head!5789 Nil!29532) (c!406763 (derivative!262 r!27340 lt!902004))))))

(declare-fun b!2541552 () Bool)

(declare-fun res!1071325 () Bool)

(assert (=> b!2541552 (=> (not res!1071325) (not e!1607086))))

(assert (=> b!2541552 (= res!1071325 (not call!160738))))

(declare-fun b!2541553 () Bool)

(assert (=> b!2541553 (= e!1607085 (not (= (head!5789 Nil!29532) (c!406763 (derivative!262 r!27340 lt!902004)))))))

(declare-fun b!2541554 () Bool)

(assert (=> b!2541554 (= e!1607084 e!1607081)))

(declare-fun c!406826 () Bool)

(assert (=> b!2541554 (= c!406826 ((_ is EmptyLang!7567) (derivative!262 r!27340 lt!902004)))))

(declare-fun b!2541555 () Bool)

(assert (=> b!2541555 (= e!1607081 (not lt!902043))))

(declare-fun b!2541556 () Bool)

(declare-fun res!1071323 () Bool)

(assert (=> b!2541556 (=> res!1071323 e!1607083)))

(assert (=> b!2541556 (= res!1071323 e!1607086)))

(declare-fun res!1071322 () Bool)

(assert (=> b!2541556 (=> (not res!1071322) (not e!1607086))))

(assert (=> b!2541556 (= res!1071322 lt!902043)))

(assert (= (and d!721687 c!406827) b!2541544))

(assert (= (and d!721687 (not c!406827)) b!2541546))

(assert (= (and d!721687 c!406825) b!2541548))

(assert (= (and d!721687 (not c!406825)) b!2541554))

(assert (= (and b!2541554 c!406826) b!2541555))

(assert (= (and b!2541554 (not c!406826)) b!2541549))

(assert (= (and b!2541549 (not res!1071324)) b!2541556))

(assert (= (and b!2541556 res!1071322) b!2541552))

(assert (= (and b!2541552 res!1071325) b!2541550))

(assert (= (and b!2541550 res!1071327) b!2541551))

(assert (= (and b!2541556 (not res!1071323)) b!2541545))

(assert (= (and b!2541545 res!1071321) b!2541543))

(assert (= (and b!2541543 (not res!1071326)) b!2541547))

(assert (= (and b!2541547 (not res!1071328)) b!2541553))

(assert (= (or b!2541548 b!2541543 b!2541552) bm!160733))

(assert (=> b!2541550 m!2888115))

(assert (=> b!2541550 m!2888115))

(assert (=> b!2541550 m!2888117))

(assert (=> b!2541553 m!2888119))

(assert (=> b!2541551 m!2888119))

(assert (=> b!2541547 m!2888115))

(assert (=> b!2541547 m!2888115))

(assert (=> b!2541547 m!2888117))

(assert (=> b!2541544 m!2888075))

(declare-fun m!2888269 () Bool)

(assert (=> b!2541544 m!2888269))

(assert (=> bm!160733 m!2888123))

(assert (=> b!2541546 m!2888119))

(assert (=> b!2541546 m!2888075))

(assert (=> b!2541546 m!2888119))

(declare-fun m!2888277 () Bool)

(assert (=> b!2541546 m!2888277))

(assert (=> b!2541546 m!2888115))

(assert (=> b!2541546 m!2888277))

(assert (=> b!2541546 m!2888115))

(declare-fun m!2888279 () Bool)

(assert (=> b!2541546 m!2888279))

(assert (=> d!721687 m!2888123))

(assert (=> d!721687 m!2888075))

(declare-fun m!2888281 () Bool)

(assert (=> d!721687 m!2888281))

(assert (=> b!2541316 d!721687))

(declare-fun d!721693 () Bool)

(declare-fun nullableFct!715 (Regex!7567) Bool)

(assert (=> d!721693 (= (nullable!2484 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)) (nullableFct!715 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469413 () Bool)

(assert (= bs!469413 d!721693))

(assert (=> bs!469413 m!2888061))

(declare-fun m!2888289 () Bool)

(assert (=> bs!469413 m!2888289))

(assert (=> b!2541315 d!721693))

(declare-fun d!721695 () Bool)

(declare-fun lt!902046 () Regex!7567)

(assert (=> d!721695 (validRegex!3193 lt!902046)))

(declare-fun e!1607103 () Regex!7567)

(assert (=> d!721695 (= lt!902046 e!1607103)))

(declare-fun c!406834 () Bool)

(assert (=> d!721695 (= c!406834 ((_ is Cons!29532) tl!4068))))

(assert (=> d!721695 (validRegex!3193 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))

(assert (=> d!721695 (= (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068) lt!902046)))

(declare-fun b!2541585 () Bool)

(assert (=> b!2541585 (= e!1607103 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) (h!34952 tl!4068)) (t!211331 tl!4068)))))

(declare-fun b!2541586 () Bool)

(assert (=> b!2541586 (= e!1607103 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))

(assert (= (and d!721695 c!406834) b!2541585))

(assert (= (and d!721695 (not c!406834)) b!2541586))

(declare-fun m!2888293 () Bool)

(assert (=> d!721695 m!2888293))

(assert (=> d!721695 m!2888059))

(declare-fun m!2888295 () Bool)

(assert (=> d!721695 m!2888295))

(assert (=> b!2541585 m!2888059))

(declare-fun m!2888297 () Bool)

(assert (=> b!2541585 m!2888297))

(assert (=> b!2541585 m!2888297))

(declare-fun m!2888299 () Bool)

(assert (=> b!2541585 m!2888299))

(assert (=> b!2541315 d!721695))

(declare-fun b!2541684 () Bool)

(declare-fun c!406869 () Bool)

(assert (=> b!2541684 (= c!406869 ((_ is Union!7567) (regOne!15647 r!27340)))))

(declare-fun e!1607161 () Regex!7567)

(declare-fun e!1607164 () Regex!7567)

(assert (=> b!2541684 (= e!1607161 e!1607164)))

(declare-fun c!406871 () Bool)

(declare-fun bm!160762 () Bool)

(declare-fun call!160769 () Regex!7567)

(assert (=> bm!160762 (= call!160769 (derivativeStep!2136 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))) c!14016))))

(declare-fun call!160768 () Regex!7567)

(declare-fun bm!160763 () Bool)

(assert (=> bm!160763 (= call!160768 (derivativeStep!2136 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))) c!14016))))

(declare-fun b!2541685 () Bool)

(assert (=> b!2541685 (= e!1607164 (Union!7567 call!160769 call!160768))))

(declare-fun b!2541686 () Bool)

(assert (=> b!2541686 (= e!1607161 (ite (= c!14016 (c!406763 (regOne!15647 r!27340))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2541688 () Bool)

(declare-fun c!406870 () Bool)

(assert (=> b!2541688 (= c!406870 (nullable!2484 (regOne!15646 (regOne!15647 r!27340))))))

(declare-fun e!1607162 () Regex!7567)

(declare-fun e!1607163 () Regex!7567)

(assert (=> b!2541688 (= e!1607162 e!1607163)))

(declare-fun bm!160764 () Bool)

(declare-fun call!160767 () Regex!7567)

(assert (=> bm!160764 (= call!160767 call!160769)))

(declare-fun b!2541689 () Bool)

(declare-fun e!1607165 () Regex!7567)

(assert (=> b!2541689 (= e!1607165 e!1607161)))

(declare-fun c!406867 () Bool)

(assert (=> b!2541689 (= c!406867 ((_ is ElementMatch!7567) (regOne!15647 r!27340)))))

(declare-fun b!2541690 () Bool)

(declare-fun call!160770 () Regex!7567)

(assert (=> b!2541690 (= e!1607163 (Union!7567 (Concat!12263 call!160770 (regTwo!15646 (regOne!15647 r!27340))) call!160768))))

(declare-fun d!721699 () Bool)

(declare-fun lt!902058 () Regex!7567)

(assert (=> d!721699 (validRegex!3193 lt!902058)))

(assert (=> d!721699 (= lt!902058 e!1607165)))

(declare-fun c!406868 () Bool)

(assert (=> d!721699 (= c!406868 (or ((_ is EmptyExpr!7567) (regOne!15647 r!27340)) ((_ is EmptyLang!7567) (regOne!15647 r!27340))))))

(assert (=> d!721699 (validRegex!3193 (regOne!15647 r!27340))))

(assert (=> d!721699 (= (derivativeStep!2136 (regOne!15647 r!27340) c!14016) lt!902058)))

(declare-fun b!2541687 () Bool)

(assert (=> b!2541687 (= e!1607165 EmptyLang!7567)))

(declare-fun b!2541691 () Bool)

(assert (=> b!2541691 (= e!1607162 (Concat!12263 call!160767 (regOne!15647 r!27340)))))

(declare-fun b!2541692 () Bool)

(assert (=> b!2541692 (= e!1607164 e!1607162)))

(assert (=> b!2541692 (= c!406871 ((_ is Star!7567) (regOne!15647 r!27340)))))

(declare-fun bm!160765 () Bool)

(assert (=> bm!160765 (= call!160770 call!160767)))

(declare-fun b!2541693 () Bool)

(assert (=> b!2541693 (= e!1607163 (Union!7567 (Concat!12263 call!160770 (regTwo!15646 (regOne!15647 r!27340))) EmptyLang!7567))))

(assert (= (and d!721699 c!406868) b!2541687))

(assert (= (and d!721699 (not c!406868)) b!2541689))

(assert (= (and b!2541689 c!406867) b!2541686))

(assert (= (and b!2541689 (not c!406867)) b!2541684))

(assert (= (and b!2541684 c!406869) b!2541685))

(assert (= (and b!2541684 (not c!406869)) b!2541692))

(assert (= (and b!2541692 c!406871) b!2541691))

(assert (= (and b!2541692 (not c!406871)) b!2541688))

(assert (= (and b!2541688 c!406870) b!2541690))

(assert (= (and b!2541688 (not c!406870)) b!2541693))

(assert (= (or b!2541690 b!2541693) bm!160765))

(assert (= (or b!2541691 bm!160765) bm!160764))

(assert (= (or b!2541685 b!2541690) bm!160763))

(assert (= (or b!2541685 bm!160764) bm!160762))

(declare-fun m!2888359 () Bool)

(assert (=> bm!160762 m!2888359))

(declare-fun m!2888361 () Bool)

(assert (=> bm!160763 m!2888361))

(declare-fun m!2888363 () Bool)

(assert (=> b!2541688 m!2888363))

(declare-fun m!2888365 () Bool)

(assert (=> d!721699 m!2888365))

(assert (=> d!721699 m!2888151))

(assert (=> b!2541315 d!721699))

(declare-fun d!721719 () Bool)

(assert (=> d!721719 (= (nullable!2484 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)) (nullableFct!715 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469416 () Bool)

(assert (= bs!469416 d!721719))

(assert (=> bs!469416 m!2888101))

(declare-fun m!2888367 () Bool)

(assert (=> bs!469416 m!2888367))

(assert (=> b!2541310 d!721719))

(declare-fun d!721721 () Bool)

(declare-fun lt!902059 () Regex!7567)

(assert (=> d!721721 (validRegex!3193 lt!902059)))

(declare-fun e!1607171 () Regex!7567)

(assert (=> d!721721 (= lt!902059 e!1607171)))

(declare-fun c!406872 () Bool)

(assert (=> d!721721 (= c!406872 ((_ is Cons!29532) tl!4068))))

(assert (=> d!721721 (validRegex!3193 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))

(assert (=> d!721721 (= (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068) lt!902059)))

(declare-fun b!2541713 () Bool)

(assert (=> b!2541713 (= e!1607171 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) (h!34952 tl!4068)) (t!211331 tl!4068)))))

(declare-fun b!2541714 () Bool)

(assert (=> b!2541714 (= e!1607171 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))

(assert (= (and d!721721 c!406872) b!2541713))

(assert (= (and d!721721 (not c!406872)) b!2541714))

(declare-fun m!2888369 () Bool)

(assert (=> d!721721 m!2888369))

(assert (=> d!721721 m!2888099))

(declare-fun m!2888371 () Bool)

(assert (=> d!721721 m!2888371))

(assert (=> b!2541713 m!2888099))

(declare-fun m!2888373 () Bool)

(assert (=> b!2541713 m!2888373))

(assert (=> b!2541713 m!2888373))

(declare-fun m!2888375 () Bool)

(assert (=> b!2541713 m!2888375))

(assert (=> b!2541310 d!721721))

(declare-fun b!2541727 () Bool)

(declare-fun c!406875 () Bool)

(assert (=> b!2541727 (= c!406875 ((_ is Union!7567) (regTwo!15647 r!27340)))))

(declare-fun e!1607175 () Regex!7567)

(declare-fun e!1607178 () Regex!7567)

(assert (=> b!2541727 (= e!1607175 e!1607178)))

(declare-fun bm!160766 () Bool)

(declare-fun call!160773 () Regex!7567)

(declare-fun c!406877 () Bool)

(assert (=> bm!160766 (= call!160773 (derivativeStep!2136 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))) c!14016))))

(declare-fun bm!160767 () Bool)

(declare-fun call!160772 () Regex!7567)

(assert (=> bm!160767 (= call!160772 (derivativeStep!2136 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))) c!14016))))

(declare-fun b!2541728 () Bool)

(assert (=> b!2541728 (= e!1607178 (Union!7567 call!160773 call!160772))))

(declare-fun b!2541729 () Bool)

(assert (=> b!2541729 (= e!1607175 (ite (= c!14016 (c!406763 (regTwo!15647 r!27340))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2541731 () Bool)

(declare-fun c!406876 () Bool)

(assert (=> b!2541731 (= c!406876 (nullable!2484 (regOne!15646 (regTwo!15647 r!27340))))))

(declare-fun e!1607176 () Regex!7567)

(declare-fun e!1607177 () Regex!7567)

(assert (=> b!2541731 (= e!1607176 e!1607177)))

(declare-fun bm!160768 () Bool)

(declare-fun call!160771 () Regex!7567)

(assert (=> bm!160768 (= call!160771 call!160773)))

(declare-fun b!2541732 () Bool)

(declare-fun e!1607179 () Regex!7567)

(assert (=> b!2541732 (= e!1607179 e!1607175)))

(declare-fun c!406873 () Bool)

(assert (=> b!2541732 (= c!406873 ((_ is ElementMatch!7567) (regTwo!15647 r!27340)))))

(declare-fun b!2541733 () Bool)

(declare-fun call!160774 () Regex!7567)

(assert (=> b!2541733 (= e!1607177 (Union!7567 (Concat!12263 call!160774 (regTwo!15646 (regTwo!15647 r!27340))) call!160772))))

(declare-fun d!721723 () Bool)

(declare-fun lt!902060 () Regex!7567)

(assert (=> d!721723 (validRegex!3193 lt!902060)))

(assert (=> d!721723 (= lt!902060 e!1607179)))

(declare-fun c!406874 () Bool)

(assert (=> d!721723 (= c!406874 (or ((_ is EmptyExpr!7567) (regTwo!15647 r!27340)) ((_ is EmptyLang!7567) (regTwo!15647 r!27340))))))

(assert (=> d!721723 (validRegex!3193 (regTwo!15647 r!27340))))

(assert (=> d!721723 (= (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) lt!902060)))

(declare-fun b!2541730 () Bool)

(assert (=> b!2541730 (= e!1607179 EmptyLang!7567)))

(declare-fun b!2541734 () Bool)

(assert (=> b!2541734 (= e!1607176 (Concat!12263 call!160771 (regTwo!15647 r!27340)))))

(declare-fun b!2541735 () Bool)

(assert (=> b!2541735 (= e!1607178 e!1607176)))

(assert (=> b!2541735 (= c!406877 ((_ is Star!7567) (regTwo!15647 r!27340)))))

(declare-fun bm!160769 () Bool)

(assert (=> bm!160769 (= call!160774 call!160771)))

(declare-fun b!2541736 () Bool)

(assert (=> b!2541736 (= e!1607177 (Union!7567 (Concat!12263 call!160774 (regTwo!15646 (regTwo!15647 r!27340))) EmptyLang!7567))))

(assert (= (and d!721723 c!406874) b!2541730))

(assert (= (and d!721723 (not c!406874)) b!2541732))

(assert (= (and b!2541732 c!406873) b!2541729))

(assert (= (and b!2541732 (not c!406873)) b!2541727))

(assert (= (and b!2541727 c!406875) b!2541728))

(assert (= (and b!2541727 (not c!406875)) b!2541735))

(assert (= (and b!2541735 c!406877) b!2541734))

(assert (= (and b!2541735 (not c!406877)) b!2541731))

(assert (= (and b!2541731 c!406876) b!2541733))

(assert (= (and b!2541731 (not c!406876)) b!2541736))

(assert (= (or b!2541733 b!2541736) bm!160769))

(assert (= (or b!2541734 bm!160769) bm!160768))

(assert (= (or b!2541728 b!2541733) bm!160767))

(assert (= (or b!2541728 bm!160768) bm!160766))

(declare-fun m!2888377 () Bool)

(assert (=> bm!160766 m!2888377))

(declare-fun m!2888379 () Bool)

(assert (=> bm!160767 m!2888379))

(declare-fun m!2888381 () Bool)

(assert (=> b!2541731 m!2888381))

(declare-fun m!2888383 () Bool)

(assert (=> d!721723 m!2888383))

(assert (=> d!721723 m!2888169))

(assert (=> b!2541310 d!721723))

(declare-fun d!721725 () Bool)

(declare-fun res!1071387 () Bool)

(declare-fun e!1607197 () Bool)

(assert (=> d!721725 (=> res!1071387 e!1607197)))

(assert (=> d!721725 (= res!1071387 ((_ is ElementMatch!7567) r!27340))))

(assert (=> d!721725 (= (validRegex!3193 r!27340) e!1607197)))

(declare-fun bm!160776 () Bool)

(declare-fun c!406883 () Bool)

(declare-fun c!406882 () Bool)

(declare-fun call!160781 () Bool)

(assert (=> bm!160776 (= call!160781 (validRegex!3193 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))))))

(declare-fun bm!160777 () Bool)

(declare-fun call!160783 () Bool)

(assert (=> bm!160777 (= call!160783 call!160781)))

(declare-fun b!2541755 () Bool)

(declare-fun e!1607196 () Bool)

(assert (=> b!2541755 (= e!1607197 e!1607196)))

(assert (=> b!2541755 (= c!406883 ((_ is Star!7567) r!27340))))

(declare-fun b!2541756 () Bool)

(declare-fun e!1607199 () Bool)

(assert (=> b!2541756 (= e!1607196 e!1607199)))

(declare-fun res!1071388 () Bool)

(assert (=> b!2541756 (= res!1071388 (not (nullable!2484 (reg!7896 r!27340))))))

(assert (=> b!2541756 (=> (not res!1071388) (not e!1607199))))

(declare-fun b!2541757 () Bool)

(declare-fun e!1607194 () Bool)

(assert (=> b!2541757 (= e!1607196 e!1607194)))

(assert (=> b!2541757 (= c!406882 ((_ is Union!7567) r!27340))))

(declare-fun b!2541758 () Bool)

(declare-fun e!1607198 () Bool)

(declare-fun call!160782 () Bool)

(assert (=> b!2541758 (= e!1607198 call!160782)))

(declare-fun bm!160778 () Bool)

(assert (=> bm!160778 (= call!160782 (validRegex!3193 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))))))

(declare-fun b!2541759 () Bool)

(declare-fun e!1607195 () Bool)

(declare-fun e!1607200 () Bool)

(assert (=> b!2541759 (= e!1607195 e!1607200)))

(declare-fun res!1071385 () Bool)

(assert (=> b!2541759 (=> (not res!1071385) (not e!1607200))))

(assert (=> b!2541759 (= res!1071385 call!160782)))

(declare-fun b!2541760 () Bool)

(declare-fun res!1071386 () Bool)

(assert (=> b!2541760 (=> (not res!1071386) (not e!1607198))))

(assert (=> b!2541760 (= res!1071386 call!160783)))

(assert (=> b!2541760 (= e!1607194 e!1607198)))

(declare-fun b!2541761 () Bool)

(assert (=> b!2541761 (= e!1607200 call!160783)))

(declare-fun b!2541762 () Bool)

(assert (=> b!2541762 (= e!1607199 call!160781)))

(declare-fun b!2541763 () Bool)

(declare-fun res!1071384 () Bool)

(assert (=> b!2541763 (=> res!1071384 e!1607195)))

(assert (=> b!2541763 (= res!1071384 (not ((_ is Concat!12263) r!27340)))))

(assert (=> b!2541763 (= e!1607194 e!1607195)))

(assert (= (and d!721725 (not res!1071387)) b!2541755))

(assert (= (and b!2541755 c!406883) b!2541756))

(assert (= (and b!2541755 (not c!406883)) b!2541757))

(assert (= (and b!2541756 res!1071388) b!2541762))

(assert (= (and b!2541757 c!406882) b!2541760))

(assert (= (and b!2541757 (not c!406882)) b!2541763))

(assert (= (and b!2541760 res!1071386) b!2541758))

(assert (= (and b!2541763 (not res!1071384)) b!2541759))

(assert (= (and b!2541759 res!1071385) b!2541761))

(assert (= (or b!2541760 b!2541761) bm!160777))

(assert (= (or b!2541758 b!2541759) bm!160778))

(assert (= (or b!2541762 bm!160777) bm!160776))

(declare-fun m!2888385 () Bool)

(assert (=> bm!160776 m!2888385))

(declare-fun m!2888387 () Bool)

(assert (=> b!2541756 m!2888387))

(declare-fun m!2888389 () Bool)

(assert (=> bm!160778 m!2888389))

(assert (=> start!246848 d!721725))

(declare-fun d!721727 () Bool)

(assert (=> d!721727 (= (nullable!2484 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)) (nullableFct!715 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469417 () Bool)

(assert (= bs!469417 d!721727))

(assert (=> bs!469417 m!2888067))

(declare-fun m!2888391 () Bool)

(assert (=> bs!469417 m!2888391))

(assert (=> b!2541318 d!721727))

(declare-fun d!721729 () Bool)

(declare-fun lt!902061 () Regex!7567)

(assert (=> d!721729 (validRegex!3193 lt!902061)))

(declare-fun e!1607201 () Regex!7567)

(assert (=> d!721729 (= lt!902061 e!1607201)))

(declare-fun c!406884 () Bool)

(assert (=> d!721729 (= c!406884 ((_ is Cons!29532) tl!4068))))

(assert (=> d!721729 (validRegex!3193 (derivativeStep!2136 r!27340 c!14016))))

(assert (=> d!721729 (= (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068) lt!902061)))

(declare-fun b!2541764 () Bool)

(assert (=> b!2541764 (= e!1607201 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 r!27340 c!14016) (h!34952 tl!4068)) (t!211331 tl!4068)))))

(declare-fun b!2541765 () Bool)

(assert (=> b!2541765 (= e!1607201 (derivativeStep!2136 r!27340 c!14016))))

(assert (= (and d!721729 c!406884) b!2541764))

(assert (= (and d!721729 (not c!406884)) b!2541765))

(declare-fun m!2888393 () Bool)

(assert (=> d!721729 m!2888393))

(assert (=> d!721729 m!2888065))

(declare-fun m!2888395 () Bool)

(assert (=> d!721729 m!2888395))

(assert (=> b!2541764 m!2888065))

(declare-fun m!2888397 () Bool)

(assert (=> b!2541764 m!2888397))

(assert (=> b!2541764 m!2888397))

(declare-fun m!2888399 () Bool)

(assert (=> b!2541764 m!2888399))

(assert (=> b!2541318 d!721729))

(declare-fun b!2541766 () Bool)

(declare-fun c!406887 () Bool)

(assert (=> b!2541766 (= c!406887 ((_ is Union!7567) r!27340))))

(declare-fun e!1607202 () Regex!7567)

(declare-fun e!1607205 () Regex!7567)

(assert (=> b!2541766 (= e!1607202 e!1607205)))

(declare-fun bm!160779 () Bool)

(declare-fun call!160786 () Regex!7567)

(declare-fun c!406889 () Bool)

(assert (=> bm!160779 (= call!160786 (derivativeStep!2136 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))) c!14016))))

(declare-fun call!160785 () Regex!7567)

(declare-fun bm!160780 () Bool)

(assert (=> bm!160780 (= call!160785 (derivativeStep!2136 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)) c!14016))))

(declare-fun b!2541767 () Bool)

(assert (=> b!2541767 (= e!1607205 (Union!7567 call!160786 call!160785))))

(declare-fun b!2541768 () Bool)

(assert (=> b!2541768 (= e!1607202 (ite (= c!14016 (c!406763 r!27340)) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2541770 () Bool)

(declare-fun c!406888 () Bool)

(assert (=> b!2541770 (= c!406888 (nullable!2484 (regOne!15646 r!27340)))))

(declare-fun e!1607203 () Regex!7567)

(declare-fun e!1607204 () Regex!7567)

(assert (=> b!2541770 (= e!1607203 e!1607204)))

(declare-fun bm!160781 () Bool)

(declare-fun call!160784 () Regex!7567)

(assert (=> bm!160781 (= call!160784 call!160786)))

(declare-fun b!2541771 () Bool)

(declare-fun e!1607206 () Regex!7567)

(assert (=> b!2541771 (= e!1607206 e!1607202)))

(declare-fun c!406885 () Bool)

(assert (=> b!2541771 (= c!406885 ((_ is ElementMatch!7567) r!27340))))

(declare-fun b!2541772 () Bool)

(declare-fun call!160787 () Regex!7567)

(assert (=> b!2541772 (= e!1607204 (Union!7567 (Concat!12263 call!160787 (regTwo!15646 r!27340)) call!160785))))

(declare-fun d!721731 () Bool)

(declare-fun lt!902062 () Regex!7567)

(assert (=> d!721731 (validRegex!3193 lt!902062)))

(assert (=> d!721731 (= lt!902062 e!1607206)))

(declare-fun c!406886 () Bool)

(assert (=> d!721731 (= c!406886 (or ((_ is EmptyExpr!7567) r!27340) ((_ is EmptyLang!7567) r!27340)))))

(assert (=> d!721731 (validRegex!3193 r!27340)))

(assert (=> d!721731 (= (derivativeStep!2136 r!27340 c!14016) lt!902062)))

(declare-fun b!2541769 () Bool)

(assert (=> b!2541769 (= e!1607206 EmptyLang!7567)))

(declare-fun b!2541773 () Bool)

(assert (=> b!2541773 (= e!1607203 (Concat!12263 call!160784 r!27340))))

(declare-fun b!2541774 () Bool)

(assert (=> b!2541774 (= e!1607205 e!1607203)))

(assert (=> b!2541774 (= c!406889 ((_ is Star!7567) r!27340))))

(declare-fun bm!160782 () Bool)

(assert (=> bm!160782 (= call!160787 call!160784)))

(declare-fun b!2541775 () Bool)

(assert (=> b!2541775 (= e!1607204 (Union!7567 (Concat!12263 call!160787 (regTwo!15646 r!27340)) EmptyLang!7567))))

(assert (= (and d!721731 c!406886) b!2541769))

(assert (= (and d!721731 (not c!406886)) b!2541771))

(assert (= (and b!2541771 c!406885) b!2541768))

(assert (= (and b!2541771 (not c!406885)) b!2541766))

(assert (= (and b!2541766 c!406887) b!2541767))

(assert (= (and b!2541766 (not c!406887)) b!2541774))

(assert (= (and b!2541774 c!406889) b!2541773))

(assert (= (and b!2541774 (not c!406889)) b!2541770))

(assert (= (and b!2541770 c!406888) b!2541772))

(assert (= (and b!2541770 (not c!406888)) b!2541775))

(assert (= (or b!2541772 b!2541775) bm!160782))

(assert (= (or b!2541773 bm!160782) bm!160781))

(assert (= (or b!2541767 b!2541772) bm!160780))

(assert (= (or b!2541767 bm!160781) bm!160779))

(declare-fun m!2888401 () Bool)

(assert (=> bm!160779 m!2888401))

(declare-fun m!2888403 () Bool)

(assert (=> bm!160780 m!2888403))

(declare-fun m!2888405 () Bool)

(assert (=> b!2541770 m!2888405))

(declare-fun m!2888407 () Bool)

(assert (=> d!721731 m!2888407))

(assert (=> d!721731 m!2888071))

(assert (=> b!2541318 d!721731))

(declare-fun e!1607209 () Bool)

(assert (=> b!2541311 (= tp!811553 e!1607209)))

(declare-fun b!2541788 () Bool)

(declare-fun tp!811607 () Bool)

(assert (=> b!2541788 (= e!1607209 tp!811607)))

(declare-fun b!2541786 () Bool)

(assert (=> b!2541786 (= e!1607209 tp_is_empty!12989)))

(declare-fun b!2541787 () Bool)

(declare-fun tp!811608 () Bool)

(declare-fun tp!811609 () Bool)

(assert (=> b!2541787 (= e!1607209 (and tp!811608 tp!811609))))

(declare-fun b!2541789 () Bool)

(declare-fun tp!811611 () Bool)

(declare-fun tp!811610 () Bool)

(assert (=> b!2541789 (= e!1607209 (and tp!811611 tp!811610))))

(assert (= (and b!2541311 ((_ is ElementMatch!7567) (regOne!15646 r!27340))) b!2541786))

(assert (= (and b!2541311 ((_ is Concat!12263) (regOne!15646 r!27340))) b!2541787))

(assert (= (and b!2541311 ((_ is Star!7567) (regOne!15646 r!27340))) b!2541788))

(assert (= (and b!2541311 ((_ is Union!7567) (regOne!15646 r!27340))) b!2541789))

(declare-fun e!1607210 () Bool)

(assert (=> b!2541311 (= tp!811554 e!1607210)))

(declare-fun b!2541792 () Bool)

(declare-fun tp!811612 () Bool)

(assert (=> b!2541792 (= e!1607210 tp!811612)))

(declare-fun b!2541790 () Bool)

(assert (=> b!2541790 (= e!1607210 tp_is_empty!12989)))

(declare-fun b!2541791 () Bool)

(declare-fun tp!811613 () Bool)

(declare-fun tp!811614 () Bool)

(assert (=> b!2541791 (= e!1607210 (and tp!811613 tp!811614))))

(declare-fun b!2541793 () Bool)

(declare-fun tp!811616 () Bool)

(declare-fun tp!811615 () Bool)

(assert (=> b!2541793 (= e!1607210 (and tp!811616 tp!811615))))

(assert (= (and b!2541311 ((_ is ElementMatch!7567) (regTwo!15646 r!27340))) b!2541790))

(assert (= (and b!2541311 ((_ is Concat!12263) (regTwo!15646 r!27340))) b!2541791))

(assert (= (and b!2541311 ((_ is Star!7567) (regTwo!15646 r!27340))) b!2541792))

(assert (= (and b!2541311 ((_ is Union!7567) (regTwo!15646 r!27340))) b!2541793))

(declare-fun e!1607211 () Bool)

(assert (=> b!2541309 (= tp!811555 e!1607211)))

(declare-fun b!2541796 () Bool)

(declare-fun tp!811617 () Bool)

(assert (=> b!2541796 (= e!1607211 tp!811617)))

(declare-fun b!2541794 () Bool)

(assert (=> b!2541794 (= e!1607211 tp_is_empty!12989)))

(declare-fun b!2541795 () Bool)

(declare-fun tp!811618 () Bool)

(declare-fun tp!811619 () Bool)

(assert (=> b!2541795 (= e!1607211 (and tp!811618 tp!811619))))

(declare-fun b!2541797 () Bool)

(declare-fun tp!811621 () Bool)

(declare-fun tp!811620 () Bool)

(assert (=> b!2541797 (= e!1607211 (and tp!811621 tp!811620))))

(assert (= (and b!2541309 ((_ is ElementMatch!7567) (regOne!15647 r!27340))) b!2541794))

(assert (= (and b!2541309 ((_ is Concat!12263) (regOne!15647 r!27340))) b!2541795))

(assert (= (and b!2541309 ((_ is Star!7567) (regOne!15647 r!27340))) b!2541796))

(assert (= (and b!2541309 ((_ is Union!7567) (regOne!15647 r!27340))) b!2541797))

(declare-fun e!1607212 () Bool)

(assert (=> b!2541309 (= tp!811556 e!1607212)))

(declare-fun b!2541800 () Bool)

(declare-fun tp!811622 () Bool)

(assert (=> b!2541800 (= e!1607212 tp!811622)))

(declare-fun b!2541798 () Bool)

(assert (=> b!2541798 (= e!1607212 tp_is_empty!12989)))

(declare-fun b!2541799 () Bool)

(declare-fun tp!811623 () Bool)

(declare-fun tp!811624 () Bool)

(assert (=> b!2541799 (= e!1607212 (and tp!811623 tp!811624))))

(declare-fun b!2541801 () Bool)

(declare-fun tp!811626 () Bool)

(declare-fun tp!811625 () Bool)

(assert (=> b!2541801 (= e!1607212 (and tp!811626 tp!811625))))

(assert (= (and b!2541309 ((_ is ElementMatch!7567) (regTwo!15647 r!27340))) b!2541798))

(assert (= (and b!2541309 ((_ is Concat!12263) (regTwo!15647 r!27340))) b!2541799))

(assert (= (and b!2541309 ((_ is Star!7567) (regTwo!15647 r!27340))) b!2541800))

(assert (= (and b!2541309 ((_ is Union!7567) (regTwo!15647 r!27340))) b!2541801))

(declare-fun e!1607213 () Bool)

(assert (=> b!2541313 (= tp!811557 e!1607213)))

(declare-fun b!2541804 () Bool)

(declare-fun tp!811627 () Bool)

(assert (=> b!2541804 (= e!1607213 tp!811627)))

(declare-fun b!2541802 () Bool)

(assert (=> b!2541802 (= e!1607213 tp_is_empty!12989)))

(declare-fun b!2541803 () Bool)

(declare-fun tp!811628 () Bool)

(declare-fun tp!811629 () Bool)

(assert (=> b!2541803 (= e!1607213 (and tp!811628 tp!811629))))

(declare-fun b!2541805 () Bool)

(declare-fun tp!811631 () Bool)

(declare-fun tp!811630 () Bool)

(assert (=> b!2541805 (= e!1607213 (and tp!811631 tp!811630))))

(assert (= (and b!2541313 ((_ is ElementMatch!7567) (reg!7896 r!27340))) b!2541802))

(assert (= (and b!2541313 ((_ is Concat!12263) (reg!7896 r!27340))) b!2541803))

(assert (= (and b!2541313 ((_ is Star!7567) (reg!7896 r!27340))) b!2541804))

(assert (= (and b!2541313 ((_ is Union!7567) (reg!7896 r!27340))) b!2541805))

(declare-fun b!2541810 () Bool)

(declare-fun e!1607216 () Bool)

(declare-fun tp!811634 () Bool)

(assert (=> b!2541810 (= e!1607216 (and tp_is_empty!12989 tp!811634))))

(assert (=> b!2541312 (= tp!811558 e!1607216)))

(assert (= (and b!2541312 ((_ is Cons!29532) (t!211331 tl!4068))) b!2541810))

(check-sat (not b!2541426) (not d!721655) (not b!2541383) (not b!2541805) (not b!2541377) (not bm!160725) (not bm!160733) (not b!2541429) (not b!2541792) (not b!2541550) (not bm!160766) (not b!2541443) (not b!2541551) (not b!2541793) (not d!721731) (not b!2541374) (not b!2541756) (not b!2541547) (not d!721663) (not b!2541512) (not d!721675) (not b!2541407) (not b!2541420) (not b!2541544) (not d!721657) (not b!2541417) (not b!2541585) (not b!2541796) (not b!2541804) (not d!721729) (not bm!160779) (not b!2541510) (not bm!160726) (not b!2541787) (not bm!160719) (not b!2541770) (not b!2541764) (not d!721719) (not b!2541376) (not d!721665) (not d!721721) (not bm!160763) (not b!2541541) (not b!2541423) (not b!2541513) (not b!2541427) (not b!2541437) (not b!2541810) (not b!2541406) (not bm!160724) (not d!721695) (not d!721659) (not b!2541791) (not b!2541409) (not b!2541380) (not b!2541801) (not b!2541434) (not b!2541493) (not d!721699) tp_is_empty!12989 (not b!2541441) (not bm!160767) (not d!721649) (not bm!160762) (not b!2541788) (not b!2541731) (not bm!160731) (not b!2541525) (not b!2541516) (not b!2541381) (not b!2541799) (not b!2541795) (not bm!160778) (not b!2541519) (not d!721667) (not b!2541422) (not b!2541402) (not b!2541440) (not b!2541797) (not b!2541494) (not bm!160776) (not d!721641) (not d!721685) (not bm!160780) (not b!2541713) (not b!2541546) (not d!721723) (not b!2541688) (not b!2541436) (not d!721669) (not b!2541403) (not b!2541400) (not d!721681) (not b!2541803) (not b!2541800) (not d!721693) (not d!721687) (not b!2541553) (not b!2541517) (not b!2541789) (not d!721727))
(check-sat)
(get-model)

(declare-fun d!721733 () Bool)

(assert (=> d!721733 (= (isEmpty!16986 Nil!29532) true)))

(assert (=> d!721641 d!721733))

(declare-fun d!721735 () Bool)

(declare-fun res!1071392 () Bool)

(declare-fun e!1607220 () Bool)

(assert (=> d!721735 (=> res!1071392 e!1607220)))

(assert (=> d!721735 (= res!1071392 ((_ is ElementMatch!7567) lt!902003))))

(assert (=> d!721735 (= (validRegex!3193 lt!902003) e!1607220)))

(declare-fun bm!160783 () Bool)

(declare-fun c!406890 () Bool)

(declare-fun call!160788 () Bool)

(declare-fun c!406891 () Bool)

(assert (=> bm!160783 (= call!160788 (validRegex!3193 (ite c!406891 (reg!7896 lt!902003) (ite c!406890 (regOne!15647 lt!902003) (regTwo!15646 lt!902003)))))))

(declare-fun bm!160784 () Bool)

(declare-fun call!160790 () Bool)

(assert (=> bm!160784 (= call!160790 call!160788)))

(declare-fun b!2541811 () Bool)

(declare-fun e!1607219 () Bool)

(assert (=> b!2541811 (= e!1607220 e!1607219)))

(assert (=> b!2541811 (= c!406891 ((_ is Star!7567) lt!902003))))

(declare-fun b!2541812 () Bool)

(declare-fun e!1607222 () Bool)

(assert (=> b!2541812 (= e!1607219 e!1607222)))

(declare-fun res!1071393 () Bool)

(assert (=> b!2541812 (= res!1071393 (not (nullable!2484 (reg!7896 lt!902003))))))

(assert (=> b!2541812 (=> (not res!1071393) (not e!1607222))))

(declare-fun b!2541813 () Bool)

(declare-fun e!1607217 () Bool)

(assert (=> b!2541813 (= e!1607219 e!1607217)))

(assert (=> b!2541813 (= c!406890 ((_ is Union!7567) lt!902003))))

(declare-fun b!2541814 () Bool)

(declare-fun e!1607221 () Bool)

(declare-fun call!160789 () Bool)

(assert (=> b!2541814 (= e!1607221 call!160789)))

(declare-fun bm!160785 () Bool)

(assert (=> bm!160785 (= call!160789 (validRegex!3193 (ite c!406890 (regTwo!15647 lt!902003) (regOne!15646 lt!902003))))))

(declare-fun b!2541815 () Bool)

(declare-fun e!1607218 () Bool)

(declare-fun e!1607223 () Bool)

(assert (=> b!2541815 (= e!1607218 e!1607223)))

(declare-fun res!1071390 () Bool)

(assert (=> b!2541815 (=> (not res!1071390) (not e!1607223))))

(assert (=> b!2541815 (= res!1071390 call!160789)))

(declare-fun b!2541816 () Bool)

(declare-fun res!1071391 () Bool)

(assert (=> b!2541816 (=> (not res!1071391) (not e!1607221))))

(assert (=> b!2541816 (= res!1071391 call!160790)))

(assert (=> b!2541816 (= e!1607217 e!1607221)))

(declare-fun b!2541817 () Bool)

(assert (=> b!2541817 (= e!1607223 call!160790)))

(declare-fun b!2541818 () Bool)

(assert (=> b!2541818 (= e!1607222 call!160788)))

(declare-fun b!2541819 () Bool)

(declare-fun res!1071389 () Bool)

(assert (=> b!2541819 (=> res!1071389 e!1607218)))

(assert (=> b!2541819 (= res!1071389 (not ((_ is Concat!12263) lt!902003)))))

(assert (=> b!2541819 (= e!1607217 e!1607218)))

(assert (= (and d!721735 (not res!1071392)) b!2541811))

(assert (= (and b!2541811 c!406891) b!2541812))

(assert (= (and b!2541811 (not c!406891)) b!2541813))

(assert (= (and b!2541812 res!1071393) b!2541818))

(assert (= (and b!2541813 c!406890) b!2541816))

(assert (= (and b!2541813 (not c!406890)) b!2541819))

(assert (= (and b!2541816 res!1071391) b!2541814))

(assert (= (and b!2541819 (not res!1071389)) b!2541815))

(assert (= (and b!2541815 res!1071390) b!2541817))

(assert (= (or b!2541816 b!2541817) bm!160784))

(assert (= (or b!2541814 b!2541815) bm!160785))

(assert (= (or b!2541818 bm!160784) bm!160783))

(declare-fun m!2888409 () Bool)

(assert (=> bm!160783 m!2888409))

(declare-fun m!2888411 () Bool)

(assert (=> b!2541812 m!2888411))

(declare-fun m!2888413 () Bool)

(assert (=> bm!160785 m!2888413))

(assert (=> d!721641 d!721735))

(declare-fun d!721737 () Bool)

(assert (=> d!721737 (= (head!5789 lt!902004) (h!34952 lt!902004))))

(assert (=> b!2541517 d!721737))

(declare-fun d!721739 () Bool)

(assert (not d!721739))

(assert (=> b!2541547 d!721739))

(declare-fun d!721743 () Bool)

(assert (not d!721743))

(assert (=> b!2541547 d!721743))

(assert (=> b!2541519 d!721737))

(declare-fun d!721745 () Bool)

(declare-fun res!1071397 () Bool)

(declare-fun e!1607227 () Bool)

(assert (=> d!721745 (=> res!1071397 e!1607227)))

(assert (=> d!721745 (= res!1071397 ((_ is ElementMatch!7567) lt!902046))))

(assert (=> d!721745 (= (validRegex!3193 lt!902046) e!1607227)))

(declare-fun c!406893 () Bool)

(declare-fun c!406892 () Bool)

(declare-fun bm!160786 () Bool)

(declare-fun call!160791 () Bool)

(assert (=> bm!160786 (= call!160791 (validRegex!3193 (ite c!406893 (reg!7896 lt!902046) (ite c!406892 (regOne!15647 lt!902046) (regTwo!15646 lt!902046)))))))

(declare-fun bm!160787 () Bool)

(declare-fun call!160793 () Bool)

(assert (=> bm!160787 (= call!160793 call!160791)))

(declare-fun b!2541820 () Bool)

(declare-fun e!1607226 () Bool)

(assert (=> b!2541820 (= e!1607227 e!1607226)))

(assert (=> b!2541820 (= c!406893 ((_ is Star!7567) lt!902046))))

(declare-fun b!2541821 () Bool)

(declare-fun e!1607229 () Bool)

(assert (=> b!2541821 (= e!1607226 e!1607229)))

(declare-fun res!1071398 () Bool)

(assert (=> b!2541821 (= res!1071398 (not (nullable!2484 (reg!7896 lt!902046))))))

(assert (=> b!2541821 (=> (not res!1071398) (not e!1607229))))

(declare-fun b!2541822 () Bool)

(declare-fun e!1607224 () Bool)

(assert (=> b!2541822 (= e!1607226 e!1607224)))

(assert (=> b!2541822 (= c!406892 ((_ is Union!7567) lt!902046))))

(declare-fun b!2541823 () Bool)

(declare-fun e!1607228 () Bool)

(declare-fun call!160792 () Bool)

(assert (=> b!2541823 (= e!1607228 call!160792)))

(declare-fun bm!160788 () Bool)

(assert (=> bm!160788 (= call!160792 (validRegex!3193 (ite c!406892 (regTwo!15647 lt!902046) (regOne!15646 lt!902046))))))

(declare-fun b!2541824 () Bool)

(declare-fun e!1607225 () Bool)

(declare-fun e!1607230 () Bool)

(assert (=> b!2541824 (= e!1607225 e!1607230)))

(declare-fun res!1071395 () Bool)

(assert (=> b!2541824 (=> (not res!1071395) (not e!1607230))))

(assert (=> b!2541824 (= res!1071395 call!160792)))

(declare-fun b!2541825 () Bool)

(declare-fun res!1071396 () Bool)

(assert (=> b!2541825 (=> (not res!1071396) (not e!1607228))))

(assert (=> b!2541825 (= res!1071396 call!160793)))

(assert (=> b!2541825 (= e!1607224 e!1607228)))

(declare-fun b!2541826 () Bool)

(assert (=> b!2541826 (= e!1607230 call!160793)))

(declare-fun b!2541827 () Bool)

(assert (=> b!2541827 (= e!1607229 call!160791)))

(declare-fun b!2541828 () Bool)

(declare-fun res!1071394 () Bool)

(assert (=> b!2541828 (=> res!1071394 e!1607225)))

(assert (=> b!2541828 (= res!1071394 (not ((_ is Concat!12263) lt!902046)))))

(assert (=> b!2541828 (= e!1607224 e!1607225)))

(assert (= (and d!721745 (not res!1071397)) b!2541820))

(assert (= (and b!2541820 c!406893) b!2541821))

(assert (= (and b!2541820 (not c!406893)) b!2541822))

(assert (= (and b!2541821 res!1071398) b!2541827))

(assert (= (and b!2541822 c!406892) b!2541825))

(assert (= (and b!2541822 (not c!406892)) b!2541828))

(assert (= (and b!2541825 res!1071396) b!2541823))

(assert (= (and b!2541828 (not res!1071394)) b!2541824))

(assert (= (and b!2541824 res!1071395) b!2541826))

(assert (= (or b!2541825 b!2541826) bm!160787))

(assert (= (or b!2541823 b!2541824) bm!160788))

(assert (= (or b!2541827 bm!160787) bm!160786))

(declare-fun m!2888415 () Bool)

(assert (=> bm!160786 m!2888415))

(declare-fun m!2888417 () Bool)

(assert (=> b!2541821 m!2888417))

(declare-fun m!2888419 () Bool)

(assert (=> bm!160788 m!2888419))

(assert (=> d!721695 d!721745))

(declare-fun d!721749 () Bool)

(declare-fun res!1071402 () Bool)

(declare-fun e!1607234 () Bool)

(assert (=> d!721749 (=> res!1071402 e!1607234)))

(assert (=> d!721749 (= res!1071402 ((_ is ElementMatch!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(assert (=> d!721749 (= (validRegex!3193 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) e!1607234)))

(declare-fun c!406894 () Bool)

(declare-fun c!406895 () Bool)

(declare-fun call!160794 () Bool)

(declare-fun bm!160789 () Bool)

(assert (=> bm!160789 (= call!160794 (validRegex!3193 (ite c!406895 (reg!7896 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) (ite c!406894 (regOne!15647 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) (regTwo!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))))))

(declare-fun bm!160790 () Bool)

(declare-fun call!160796 () Bool)

(assert (=> bm!160790 (= call!160796 call!160794)))

(declare-fun b!2541829 () Bool)

(declare-fun e!1607233 () Bool)

(assert (=> b!2541829 (= e!1607234 e!1607233)))

(assert (=> b!2541829 (= c!406895 ((_ is Star!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(declare-fun b!2541830 () Bool)

(declare-fun e!1607236 () Bool)

(assert (=> b!2541830 (= e!1607233 e!1607236)))

(declare-fun res!1071403 () Bool)

(assert (=> b!2541830 (= res!1071403 (not (nullable!2484 (reg!7896 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))))

(assert (=> b!2541830 (=> (not res!1071403) (not e!1607236))))

(declare-fun b!2541831 () Bool)

(declare-fun e!1607231 () Bool)

(assert (=> b!2541831 (= e!1607233 e!1607231)))

(assert (=> b!2541831 (= c!406894 ((_ is Union!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(declare-fun b!2541832 () Bool)

(declare-fun e!1607235 () Bool)

(declare-fun call!160795 () Bool)

(assert (=> b!2541832 (= e!1607235 call!160795)))

(declare-fun bm!160791 () Bool)

(assert (=> bm!160791 (= call!160795 (validRegex!3193 (ite c!406894 (regTwo!15647 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) (regOne!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))))

(declare-fun b!2541833 () Bool)

(declare-fun e!1607232 () Bool)

(declare-fun e!1607237 () Bool)

(assert (=> b!2541833 (= e!1607232 e!1607237)))

(declare-fun res!1071400 () Bool)

(assert (=> b!2541833 (=> (not res!1071400) (not e!1607237))))

(assert (=> b!2541833 (= res!1071400 call!160795)))

(declare-fun b!2541834 () Bool)

(declare-fun res!1071401 () Bool)

(assert (=> b!2541834 (=> (not res!1071401) (not e!1607235))))

(assert (=> b!2541834 (= res!1071401 call!160796)))

(assert (=> b!2541834 (= e!1607231 e!1607235)))

(declare-fun b!2541835 () Bool)

(assert (=> b!2541835 (= e!1607237 call!160796)))

(declare-fun b!2541836 () Bool)

(assert (=> b!2541836 (= e!1607236 call!160794)))

(declare-fun b!2541837 () Bool)

(declare-fun res!1071399 () Bool)

(assert (=> b!2541837 (=> res!1071399 e!1607232)))

(assert (=> b!2541837 (= res!1071399 (not ((_ is Concat!12263) (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))))

(assert (=> b!2541837 (= e!1607231 e!1607232)))

(assert (= (and d!721749 (not res!1071402)) b!2541829))

(assert (= (and b!2541829 c!406895) b!2541830))

(assert (= (and b!2541829 (not c!406895)) b!2541831))

(assert (= (and b!2541830 res!1071403) b!2541836))

(assert (= (and b!2541831 c!406894) b!2541834))

(assert (= (and b!2541831 (not c!406894)) b!2541837))

(assert (= (and b!2541834 res!1071401) b!2541832))

(assert (= (and b!2541837 (not res!1071399)) b!2541833))

(assert (= (and b!2541833 res!1071400) b!2541835))

(assert (= (or b!2541834 b!2541835) bm!160790))

(assert (= (or b!2541832 b!2541833) bm!160791))

(assert (= (or b!2541836 bm!160790) bm!160789))

(declare-fun m!2888421 () Bool)

(assert (=> bm!160789 m!2888421))

(declare-fun m!2888423 () Bool)

(assert (=> b!2541830 m!2888423))

(declare-fun m!2888425 () Bool)

(assert (=> bm!160791 m!2888425))

(assert (=> d!721695 d!721749))

(declare-fun d!721753 () Bool)

(assert (=> d!721753 (= (isEmpty!16986 (tail!4064 lt!902004)) ((_ is Nil!29532) (tail!4064 lt!902004)))))

(assert (=> b!2541437 d!721753))

(declare-fun d!721759 () Bool)

(assert (=> d!721759 (= (tail!4064 lt!902004) (t!211331 lt!902004))))

(assert (=> b!2541437 d!721759))

(assert (=> d!721655 d!721733))

(declare-fun d!721765 () Bool)

(declare-fun res!1071417 () Bool)

(declare-fun e!1607255 () Bool)

(assert (=> d!721765 (=> res!1071417 e!1607255)))

(assert (=> d!721765 (= res!1071417 ((_ is ElementMatch!7567) lt!902002))))

(assert (=> d!721765 (= (validRegex!3193 lt!902002) e!1607255)))

(declare-fun c!406901 () Bool)

(declare-fun c!406900 () Bool)

(declare-fun call!160803 () Bool)

(declare-fun bm!160798 () Bool)

(assert (=> bm!160798 (= call!160803 (validRegex!3193 (ite c!406901 (reg!7896 lt!902002) (ite c!406900 (regOne!15647 lt!902002) (regTwo!15646 lt!902002)))))))

(declare-fun bm!160799 () Bool)

(declare-fun call!160805 () Bool)

(assert (=> bm!160799 (= call!160805 call!160803)))

(declare-fun b!2541856 () Bool)

(declare-fun e!1607254 () Bool)

(assert (=> b!2541856 (= e!1607255 e!1607254)))

(assert (=> b!2541856 (= c!406901 ((_ is Star!7567) lt!902002))))

(declare-fun b!2541857 () Bool)

(declare-fun e!1607257 () Bool)

(assert (=> b!2541857 (= e!1607254 e!1607257)))

(declare-fun res!1071418 () Bool)

(assert (=> b!2541857 (= res!1071418 (not (nullable!2484 (reg!7896 lt!902002))))))

(assert (=> b!2541857 (=> (not res!1071418) (not e!1607257))))

(declare-fun b!2541858 () Bool)

(declare-fun e!1607252 () Bool)

(assert (=> b!2541858 (= e!1607254 e!1607252)))

(assert (=> b!2541858 (= c!406900 ((_ is Union!7567) lt!902002))))

(declare-fun b!2541859 () Bool)

(declare-fun e!1607256 () Bool)

(declare-fun call!160804 () Bool)

(assert (=> b!2541859 (= e!1607256 call!160804)))

(declare-fun bm!160800 () Bool)

(assert (=> bm!160800 (= call!160804 (validRegex!3193 (ite c!406900 (regTwo!15647 lt!902002) (regOne!15646 lt!902002))))))

(declare-fun b!2541860 () Bool)

(declare-fun e!1607253 () Bool)

(declare-fun e!1607258 () Bool)

(assert (=> b!2541860 (= e!1607253 e!1607258)))

(declare-fun res!1071415 () Bool)

(assert (=> b!2541860 (=> (not res!1071415) (not e!1607258))))

(assert (=> b!2541860 (= res!1071415 call!160804)))

(declare-fun b!2541861 () Bool)

(declare-fun res!1071416 () Bool)

(assert (=> b!2541861 (=> (not res!1071416) (not e!1607256))))

(assert (=> b!2541861 (= res!1071416 call!160805)))

(assert (=> b!2541861 (= e!1607252 e!1607256)))

(declare-fun b!2541862 () Bool)

(assert (=> b!2541862 (= e!1607258 call!160805)))

(declare-fun b!2541863 () Bool)

(assert (=> b!2541863 (= e!1607257 call!160803)))

(declare-fun b!2541864 () Bool)

(declare-fun res!1071414 () Bool)

(assert (=> b!2541864 (=> res!1071414 e!1607253)))

(assert (=> b!2541864 (= res!1071414 (not ((_ is Concat!12263) lt!902002)))))

(assert (=> b!2541864 (= e!1607252 e!1607253)))

(assert (= (and d!721765 (not res!1071417)) b!2541856))

(assert (= (and b!2541856 c!406901) b!2541857))

(assert (= (and b!2541856 (not c!406901)) b!2541858))

(assert (= (and b!2541857 res!1071418) b!2541863))

(assert (= (and b!2541858 c!406900) b!2541861))

(assert (= (and b!2541858 (not c!406900)) b!2541864))

(assert (= (and b!2541861 res!1071416) b!2541859))

(assert (= (and b!2541864 (not res!1071414)) b!2541860))

(assert (= (and b!2541860 res!1071415) b!2541862))

(assert (= (or b!2541861 b!2541862) bm!160799))

(assert (= (or b!2541859 b!2541860) bm!160800))

(assert (= (or b!2541863 bm!160799) bm!160798))

(declare-fun m!2888441 () Bool)

(assert (=> bm!160798 m!2888441))

(declare-fun m!2888443 () Bool)

(assert (=> b!2541857 m!2888443))

(declare-fun m!2888445 () Bool)

(assert (=> bm!160800 m!2888445))

(assert (=> d!721655 d!721765))

(assert (=> b!2541440 d!721753))

(assert (=> b!2541440 d!721759))

(assert (=> b!2541403 d!721739))

(assert (=> b!2541403 d!721743))

(declare-fun d!721769 () Bool)

(declare-fun res!1071427 () Bool)

(declare-fun e!1607269 () Bool)

(assert (=> d!721769 (=> res!1071427 e!1607269)))

(assert (=> d!721769 (= res!1071427 ((_ is ElementMatch!7567) lt!902042))))

(assert (=> d!721769 (= (validRegex!3193 lt!902042) e!1607269)))

(declare-fun c!406904 () Bool)

(declare-fun bm!160804 () Bool)

(declare-fun call!160809 () Bool)

(declare-fun c!406905 () Bool)

(assert (=> bm!160804 (= call!160809 (validRegex!3193 (ite c!406905 (reg!7896 lt!902042) (ite c!406904 (regOne!15647 lt!902042) (regTwo!15646 lt!902042)))))))

(declare-fun bm!160805 () Bool)

(declare-fun call!160811 () Bool)

(assert (=> bm!160805 (= call!160811 call!160809)))

(declare-fun b!2541874 () Bool)

(declare-fun e!1607268 () Bool)

(assert (=> b!2541874 (= e!1607269 e!1607268)))

(assert (=> b!2541874 (= c!406905 ((_ is Star!7567) lt!902042))))

(declare-fun b!2541875 () Bool)

(declare-fun e!1607271 () Bool)

(assert (=> b!2541875 (= e!1607268 e!1607271)))

(declare-fun res!1071428 () Bool)

(assert (=> b!2541875 (= res!1071428 (not (nullable!2484 (reg!7896 lt!902042))))))

(assert (=> b!2541875 (=> (not res!1071428) (not e!1607271))))

(declare-fun b!2541876 () Bool)

(declare-fun e!1607266 () Bool)

(assert (=> b!2541876 (= e!1607268 e!1607266)))

(assert (=> b!2541876 (= c!406904 ((_ is Union!7567) lt!902042))))

(declare-fun b!2541877 () Bool)

(declare-fun e!1607270 () Bool)

(declare-fun call!160810 () Bool)

(assert (=> b!2541877 (= e!1607270 call!160810)))

(declare-fun bm!160806 () Bool)

(assert (=> bm!160806 (= call!160810 (validRegex!3193 (ite c!406904 (regTwo!15647 lt!902042) (regOne!15646 lt!902042))))))

(declare-fun b!2541878 () Bool)

(declare-fun e!1607267 () Bool)

(declare-fun e!1607272 () Bool)

(assert (=> b!2541878 (= e!1607267 e!1607272)))

(declare-fun res!1071425 () Bool)

(assert (=> b!2541878 (=> (not res!1071425) (not e!1607272))))

(assert (=> b!2541878 (= res!1071425 call!160810)))

(declare-fun b!2541879 () Bool)

(declare-fun res!1071426 () Bool)

(assert (=> b!2541879 (=> (not res!1071426) (not e!1607270))))

(assert (=> b!2541879 (= res!1071426 call!160811)))

(assert (=> b!2541879 (= e!1607266 e!1607270)))

(declare-fun b!2541880 () Bool)

(assert (=> b!2541880 (= e!1607272 call!160811)))

(declare-fun b!2541881 () Bool)

(assert (=> b!2541881 (= e!1607271 call!160809)))

(declare-fun b!2541882 () Bool)

(declare-fun res!1071424 () Bool)

(assert (=> b!2541882 (=> res!1071424 e!1607267)))

(assert (=> b!2541882 (= res!1071424 (not ((_ is Concat!12263) lt!902042)))))

(assert (=> b!2541882 (= e!1607266 e!1607267)))

(assert (= (and d!721769 (not res!1071427)) b!2541874))

(assert (= (and b!2541874 c!406905) b!2541875))

(assert (= (and b!2541874 (not c!406905)) b!2541876))

(assert (= (and b!2541875 res!1071428) b!2541881))

(assert (= (and b!2541876 c!406904) b!2541879))

(assert (= (and b!2541876 (not c!406904)) b!2541882))

(assert (= (and b!2541879 res!1071426) b!2541877))

(assert (= (and b!2541882 (not res!1071424)) b!2541878))

(assert (= (and b!2541878 res!1071425) b!2541880))

(assert (= (or b!2541879 b!2541880) bm!160805))

(assert (= (or b!2541877 b!2541878) bm!160806))

(assert (= (or b!2541881 bm!160805) bm!160804))

(declare-fun m!2888453 () Bool)

(assert (=> bm!160804 m!2888453))

(declare-fun m!2888455 () Bool)

(assert (=> b!2541875 m!2888455))

(declare-fun m!2888457 () Bool)

(assert (=> bm!160806 m!2888457))

(assert (=> d!721685 d!721769))

(declare-fun d!721773 () Bool)

(declare-fun res!1071432 () Bool)

(declare-fun e!1607281 () Bool)

(assert (=> d!721773 (=> res!1071432 e!1607281)))

(assert (=> d!721773 (= res!1071432 ((_ is ElementMatch!7567) (regOne!15647 r!27340)))))

(assert (=> d!721773 (= (validRegex!3193 (regOne!15647 r!27340)) e!1607281)))

(declare-fun bm!160811 () Bool)

(declare-fun c!406912 () Bool)

(declare-fun c!406911 () Bool)

(declare-fun call!160816 () Bool)

(assert (=> bm!160811 (= call!160816 (validRegex!3193 (ite c!406912 (reg!7896 (regOne!15647 r!27340)) (ite c!406911 (regOne!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))))))

(declare-fun bm!160812 () Bool)

(declare-fun call!160818 () Bool)

(assert (=> bm!160812 (= call!160818 call!160816)))

(declare-fun b!2541893 () Bool)

(declare-fun e!1607280 () Bool)

(assert (=> b!2541893 (= e!1607281 e!1607280)))

(assert (=> b!2541893 (= c!406912 ((_ is Star!7567) (regOne!15647 r!27340)))))

(declare-fun b!2541894 () Bool)

(declare-fun e!1607283 () Bool)

(assert (=> b!2541894 (= e!1607280 e!1607283)))

(declare-fun res!1071433 () Bool)

(assert (=> b!2541894 (= res!1071433 (not (nullable!2484 (reg!7896 (regOne!15647 r!27340)))))))

(assert (=> b!2541894 (=> (not res!1071433) (not e!1607283))))

(declare-fun b!2541895 () Bool)

(declare-fun e!1607278 () Bool)

(assert (=> b!2541895 (= e!1607280 e!1607278)))

(assert (=> b!2541895 (= c!406911 ((_ is Union!7567) (regOne!15647 r!27340)))))

(declare-fun b!2541896 () Bool)

(declare-fun e!1607282 () Bool)

(declare-fun call!160817 () Bool)

(assert (=> b!2541896 (= e!1607282 call!160817)))

(declare-fun bm!160813 () Bool)

(assert (=> bm!160813 (= call!160817 (validRegex!3193 (ite c!406911 (regTwo!15647 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))))

(declare-fun b!2541897 () Bool)

(declare-fun e!1607279 () Bool)

(declare-fun e!1607284 () Bool)

(assert (=> b!2541897 (= e!1607279 e!1607284)))

(declare-fun res!1071430 () Bool)

(assert (=> b!2541897 (=> (not res!1071430) (not e!1607284))))

(assert (=> b!2541897 (= res!1071430 call!160817)))

(declare-fun b!2541898 () Bool)

(declare-fun res!1071431 () Bool)

(assert (=> b!2541898 (=> (not res!1071431) (not e!1607282))))

(assert (=> b!2541898 (= res!1071431 call!160818)))

(assert (=> b!2541898 (= e!1607278 e!1607282)))

(declare-fun b!2541899 () Bool)

(assert (=> b!2541899 (= e!1607284 call!160818)))

(declare-fun b!2541900 () Bool)

(assert (=> b!2541900 (= e!1607283 call!160816)))

(declare-fun b!2541901 () Bool)

(declare-fun res!1071429 () Bool)

(assert (=> b!2541901 (=> res!1071429 e!1607279)))

(assert (=> b!2541901 (= res!1071429 (not ((_ is Concat!12263) (regOne!15647 r!27340))))))

(assert (=> b!2541901 (= e!1607278 e!1607279)))

(assert (= (and d!721773 (not res!1071432)) b!2541893))

(assert (= (and b!2541893 c!406912) b!2541894))

(assert (= (and b!2541893 (not c!406912)) b!2541895))

(assert (= (and b!2541894 res!1071433) b!2541900))

(assert (= (and b!2541895 c!406911) b!2541898))

(assert (= (and b!2541895 (not c!406911)) b!2541901))

(assert (= (and b!2541898 res!1071431) b!2541896))

(assert (= (and b!2541901 (not res!1071429)) b!2541897))

(assert (= (and b!2541897 res!1071430) b!2541899))

(assert (= (or b!2541898 b!2541899) bm!160812))

(assert (= (or b!2541896 b!2541897) bm!160813))

(assert (= (or b!2541900 bm!160812) bm!160811))

(declare-fun m!2888459 () Bool)

(assert (=> bm!160811 m!2888459))

(declare-fun m!2888461 () Bool)

(assert (=> b!2541894 m!2888461))

(declare-fun m!2888465 () Bool)

(assert (=> bm!160813 m!2888465))

(assert (=> d!721685 d!721773))

(assert (=> d!721667 d!721663))

(declare-fun d!721775 () Bool)

(declare-fun e!1607294 () Bool)

(assert (=> d!721775 e!1607294))

(declare-fun res!1071441 () Bool)

(assert (=> d!721775 (=> res!1071441 e!1607294)))

(assert (=> d!721775 (= res!1071441 (matchR!3522 (regOne!15647 r!27340) lt!902004))))

(assert (=> d!721775 true))

(declare-fun _$116!322 () Unit!43335)

(assert (=> d!721775 (= (choose!15026 (regOne!15647 r!27340) (regTwo!15647 r!27340) lt!902004) _$116!322)))

(declare-fun b!2541913 () Bool)

(assert (=> b!2541913 (= e!1607294 (matchR!3522 (regTwo!15647 r!27340) lt!902004))))

(assert (= (and d!721775 (not res!1071441)) b!2541913))

(assert (=> d!721775 m!2888091))

(assert (=> b!2541913 m!2888087))

(assert (=> d!721667 d!721775))

(assert (=> d!721667 d!721773))

(assert (=> b!2541494 d!721665))

(declare-fun b!2541914 () Bool)

(declare-fun c!406917 () Bool)

(assert (=> b!2541914 (= c!406917 ((_ is Union!7567) (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))))))

(declare-fun e!1607295 () Regex!7567)

(declare-fun e!1607298 () Regex!7567)

(assert (=> b!2541914 (= e!1607295 e!1607298)))

(declare-fun c!406919 () Bool)

(declare-fun call!160824 () Regex!7567)

(declare-fun bm!160817 () Bool)

(assert (=> bm!160817 (= call!160824 (derivativeStep!2136 (ite c!406917 (regOne!15647 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))) (ite c!406919 (reg!7896 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))) (regOne!15646 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))))) c!14016))))

(declare-fun bm!160818 () Bool)

(declare-fun call!160823 () Regex!7567)

(assert (=> bm!160818 (= call!160823 (derivativeStep!2136 (ite c!406917 (regTwo!15647 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))) (regTwo!15646 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))) c!14016))))

(declare-fun b!2541915 () Bool)

(assert (=> b!2541915 (= e!1607298 (Union!7567 call!160824 call!160823))))

(declare-fun b!2541916 () Bool)

(assert (=> b!2541916 (= e!1607295 (ite (= c!14016 (c!406763 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun c!406918 () Bool)

(declare-fun b!2541918 () Bool)

(assert (=> b!2541918 (= c!406918 (nullable!2484 (regOne!15646 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))))))

(declare-fun e!1607296 () Regex!7567)

(declare-fun e!1607297 () Regex!7567)

(assert (=> b!2541918 (= e!1607296 e!1607297)))

(declare-fun bm!160819 () Bool)

(declare-fun call!160822 () Regex!7567)

(assert (=> bm!160819 (= call!160822 call!160824)))

(declare-fun b!2541919 () Bool)

(declare-fun e!1607299 () Regex!7567)

(assert (=> b!2541919 (= e!1607299 e!1607295)))

(declare-fun c!406915 () Bool)

(assert (=> b!2541919 (= c!406915 ((_ is ElementMatch!7567) (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))))))

(declare-fun b!2541920 () Bool)

(declare-fun call!160825 () Regex!7567)

(assert (=> b!2541920 (= e!1607297 (Union!7567 (Concat!12263 call!160825 (regTwo!15646 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))) call!160823))))

(declare-fun d!721783 () Bool)

(declare-fun lt!902064 () Regex!7567)

(assert (=> d!721783 (validRegex!3193 lt!902064)))

(assert (=> d!721783 (= lt!902064 e!1607299)))

(declare-fun c!406916 () Bool)

(assert (=> d!721783 (= c!406916 (or ((_ is EmptyExpr!7567) (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))) ((_ is EmptyLang!7567) (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))))))

(assert (=> d!721783 (validRegex!3193 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))))

(assert (=> d!721783 (= (derivativeStep!2136 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))) c!14016) lt!902064)))

(declare-fun b!2541917 () Bool)

(assert (=> b!2541917 (= e!1607299 EmptyLang!7567)))

(declare-fun b!2541921 () Bool)

(assert (=> b!2541921 (= e!1607296 (Concat!12263 call!160822 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))))))

(declare-fun b!2541922 () Bool)

(assert (=> b!2541922 (= e!1607298 e!1607296)))

(assert (=> b!2541922 (= c!406919 ((_ is Star!7567) (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340))))))))

(declare-fun bm!160820 () Bool)

(assert (=> bm!160820 (= call!160825 call!160822)))

(declare-fun b!2541923 () Bool)

(assert (=> b!2541923 (= e!1607297 (Union!7567 (Concat!12263 call!160825 (regTwo!15646 (ite c!406875 (regOne!15647 (regTwo!15647 r!27340)) (ite c!406877 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))) EmptyLang!7567))))

(assert (= (and d!721783 c!406916) b!2541917))

(assert (= (and d!721783 (not c!406916)) b!2541919))

(assert (= (and b!2541919 c!406915) b!2541916))

(assert (= (and b!2541919 (not c!406915)) b!2541914))

(assert (= (and b!2541914 c!406917) b!2541915))

(assert (= (and b!2541914 (not c!406917)) b!2541922))

(assert (= (and b!2541922 c!406919) b!2541921))

(assert (= (and b!2541922 (not c!406919)) b!2541918))

(assert (= (and b!2541918 c!406918) b!2541920))

(assert (= (and b!2541918 (not c!406918)) b!2541923))

(assert (= (or b!2541920 b!2541923) bm!160820))

(assert (= (or b!2541921 bm!160820) bm!160819))

(assert (= (or b!2541915 b!2541920) bm!160818))

(assert (= (or b!2541915 bm!160819) bm!160817))

(declare-fun m!2888481 () Bool)

(assert (=> bm!160817 m!2888481))

(declare-fun m!2888483 () Bool)

(assert (=> bm!160818 m!2888483))

(declare-fun m!2888485 () Bool)

(assert (=> b!2541918 m!2888485))

(declare-fun m!2888487 () Bool)

(assert (=> d!721783 m!2888487))

(declare-fun m!2888489 () Bool)

(assert (=> d!721783 m!2888489))

(assert (=> bm!160766 d!721783))

(declare-fun d!721785 () Bool)

(assert (=> d!721785 (= (isEmpty!16986 lt!902004) ((_ is Nil!29532) lt!902004))))

(assert (=> d!721665 d!721785))

(declare-fun d!721787 () Bool)

(declare-fun res!1071455 () Bool)

(declare-fun e!1607315 () Bool)

(assert (=> d!721787 (=> res!1071455 e!1607315)))

(assert (=> d!721787 (= res!1071455 ((_ is ElementMatch!7567) (regTwo!15647 r!27340)))))

(assert (=> d!721787 (= (validRegex!3193 (regTwo!15647 r!27340)) e!1607315)))

(declare-fun bm!160825 () Bool)

(declare-fun call!160830 () Bool)

(declare-fun c!406922 () Bool)

(declare-fun c!406923 () Bool)

(assert (=> bm!160825 (= call!160830 (validRegex!3193 (ite c!406923 (reg!7896 (regTwo!15647 r!27340)) (ite c!406922 (regOne!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))))))

(declare-fun bm!160826 () Bool)

(declare-fun call!160832 () Bool)

(assert (=> bm!160826 (= call!160832 call!160830)))

(declare-fun b!2541938 () Bool)

(declare-fun e!1607314 () Bool)

(assert (=> b!2541938 (= e!1607315 e!1607314)))

(assert (=> b!2541938 (= c!406923 ((_ is Star!7567) (regTwo!15647 r!27340)))))

(declare-fun b!2541939 () Bool)

(declare-fun e!1607317 () Bool)

(assert (=> b!2541939 (= e!1607314 e!1607317)))

(declare-fun res!1071456 () Bool)

(assert (=> b!2541939 (= res!1071456 (not (nullable!2484 (reg!7896 (regTwo!15647 r!27340)))))))

(assert (=> b!2541939 (=> (not res!1071456) (not e!1607317))))

(declare-fun b!2541940 () Bool)

(declare-fun e!1607312 () Bool)

(assert (=> b!2541940 (= e!1607314 e!1607312)))

(assert (=> b!2541940 (= c!406922 ((_ is Union!7567) (regTwo!15647 r!27340)))))

(declare-fun b!2541941 () Bool)

(declare-fun e!1607316 () Bool)

(declare-fun call!160831 () Bool)

(assert (=> b!2541941 (= e!1607316 call!160831)))

(declare-fun bm!160827 () Bool)

(assert (=> bm!160827 (= call!160831 (validRegex!3193 (ite c!406922 (regTwo!15647 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))))))

(declare-fun b!2541942 () Bool)

(declare-fun e!1607313 () Bool)

(declare-fun e!1607318 () Bool)

(assert (=> b!2541942 (= e!1607313 e!1607318)))

(declare-fun res!1071453 () Bool)

(assert (=> b!2541942 (=> (not res!1071453) (not e!1607318))))

(assert (=> b!2541942 (= res!1071453 call!160831)))

(declare-fun b!2541943 () Bool)

(declare-fun res!1071454 () Bool)

(assert (=> b!2541943 (=> (not res!1071454) (not e!1607316))))

(assert (=> b!2541943 (= res!1071454 call!160832)))

(assert (=> b!2541943 (= e!1607312 e!1607316)))

(declare-fun b!2541944 () Bool)

(assert (=> b!2541944 (= e!1607318 call!160832)))

(declare-fun b!2541945 () Bool)

(assert (=> b!2541945 (= e!1607317 call!160830)))

(declare-fun b!2541946 () Bool)

(declare-fun res!1071452 () Bool)

(assert (=> b!2541946 (=> res!1071452 e!1607313)))

(assert (=> b!2541946 (= res!1071452 (not ((_ is Concat!12263) (regTwo!15647 r!27340))))))

(assert (=> b!2541946 (= e!1607312 e!1607313)))

(assert (= (and d!721787 (not res!1071455)) b!2541938))

(assert (= (and b!2541938 c!406923) b!2541939))

(assert (= (and b!2541938 (not c!406923)) b!2541940))

(assert (= (and b!2541939 res!1071456) b!2541945))

(assert (= (and b!2541940 c!406922) b!2541943))

(assert (= (and b!2541940 (not c!406922)) b!2541946))

(assert (= (and b!2541943 res!1071454) b!2541941))

(assert (= (and b!2541946 (not res!1071452)) b!2541942))

(assert (= (and b!2541942 res!1071453) b!2541944))

(assert (= (or b!2541943 b!2541944) bm!160826))

(assert (= (or b!2541941 b!2541942) bm!160827))

(assert (= (or b!2541945 bm!160826) bm!160825))

(declare-fun m!2888491 () Bool)

(assert (=> bm!160825 m!2888491))

(declare-fun m!2888493 () Bool)

(assert (=> b!2541939 m!2888493))

(declare-fun m!2888495 () Bool)

(assert (=> bm!160827 m!2888495))

(assert (=> d!721665 d!721787))

(assert (=> b!2541427 d!721737))

(assert (=> d!721687 d!721733))

(declare-fun d!721789 () Bool)

(declare-fun res!1071460 () Bool)

(declare-fun e!1607322 () Bool)

(assert (=> d!721789 (=> res!1071460 e!1607322)))

(assert (=> d!721789 (= res!1071460 ((_ is ElementMatch!7567) (derivative!262 r!27340 lt!902004)))))

(assert (=> d!721789 (= (validRegex!3193 (derivative!262 r!27340 lt!902004)) e!1607322)))

(declare-fun call!160833 () Bool)

(declare-fun c!406925 () Bool)

(declare-fun bm!160828 () Bool)

(declare-fun c!406924 () Bool)

(assert (=> bm!160828 (= call!160833 (validRegex!3193 (ite c!406925 (reg!7896 (derivative!262 r!27340 lt!902004)) (ite c!406924 (regOne!15647 (derivative!262 r!27340 lt!902004)) (regTwo!15646 (derivative!262 r!27340 lt!902004))))))))

(declare-fun bm!160829 () Bool)

(declare-fun call!160835 () Bool)

(assert (=> bm!160829 (= call!160835 call!160833)))

(declare-fun b!2541947 () Bool)

(declare-fun e!1607321 () Bool)

(assert (=> b!2541947 (= e!1607322 e!1607321)))

(assert (=> b!2541947 (= c!406925 ((_ is Star!7567) (derivative!262 r!27340 lt!902004)))))

(declare-fun b!2541948 () Bool)

(declare-fun e!1607324 () Bool)

(assert (=> b!2541948 (= e!1607321 e!1607324)))

(declare-fun res!1071461 () Bool)

(assert (=> b!2541948 (= res!1071461 (not (nullable!2484 (reg!7896 (derivative!262 r!27340 lt!902004)))))))

(assert (=> b!2541948 (=> (not res!1071461) (not e!1607324))))

(declare-fun b!2541949 () Bool)

(declare-fun e!1607319 () Bool)

(assert (=> b!2541949 (= e!1607321 e!1607319)))

(assert (=> b!2541949 (= c!406924 ((_ is Union!7567) (derivative!262 r!27340 lt!902004)))))

(declare-fun b!2541950 () Bool)

(declare-fun e!1607323 () Bool)

(declare-fun call!160834 () Bool)

(assert (=> b!2541950 (= e!1607323 call!160834)))

(declare-fun bm!160830 () Bool)

(assert (=> bm!160830 (= call!160834 (validRegex!3193 (ite c!406924 (regTwo!15647 (derivative!262 r!27340 lt!902004)) (regOne!15646 (derivative!262 r!27340 lt!902004)))))))

(declare-fun b!2541951 () Bool)

(declare-fun e!1607320 () Bool)

(declare-fun e!1607325 () Bool)

(assert (=> b!2541951 (= e!1607320 e!1607325)))

(declare-fun res!1071458 () Bool)

(assert (=> b!2541951 (=> (not res!1071458) (not e!1607325))))

(assert (=> b!2541951 (= res!1071458 call!160834)))

(declare-fun b!2541952 () Bool)

(declare-fun res!1071459 () Bool)

(assert (=> b!2541952 (=> (not res!1071459) (not e!1607323))))

(assert (=> b!2541952 (= res!1071459 call!160835)))

(assert (=> b!2541952 (= e!1607319 e!1607323)))

(declare-fun b!2541953 () Bool)

(assert (=> b!2541953 (= e!1607325 call!160835)))

(declare-fun b!2541954 () Bool)

(assert (=> b!2541954 (= e!1607324 call!160833)))

(declare-fun b!2541955 () Bool)

(declare-fun res!1071457 () Bool)

(assert (=> b!2541955 (=> res!1071457 e!1607320)))

(assert (=> b!2541955 (= res!1071457 (not ((_ is Concat!12263) (derivative!262 r!27340 lt!902004))))))

(assert (=> b!2541955 (= e!1607319 e!1607320)))

(assert (= (and d!721789 (not res!1071460)) b!2541947))

(assert (= (and b!2541947 c!406925) b!2541948))

(assert (= (and b!2541947 (not c!406925)) b!2541949))

(assert (= (and b!2541948 res!1071461) b!2541954))

(assert (= (and b!2541949 c!406924) b!2541952))

(assert (= (and b!2541949 (not c!406924)) b!2541955))

(assert (= (and b!2541952 res!1071459) b!2541950))

(assert (= (and b!2541955 (not res!1071457)) b!2541951))

(assert (= (and b!2541951 res!1071458) b!2541953))

(assert (= (or b!2541952 b!2541953) bm!160829))

(assert (= (or b!2541950 b!2541951) bm!160830))

(assert (= (or b!2541954 bm!160829) bm!160828))

(declare-fun m!2888497 () Bool)

(assert (=> bm!160828 m!2888497))

(declare-fun m!2888499 () Bool)

(assert (=> b!2541948 m!2888499))

(declare-fun m!2888501 () Bool)

(assert (=> bm!160830 m!2888501))

(assert (=> d!721687 d!721789))

(assert (=> d!721675 d!721785))

(assert (=> d!721675 d!721725))

(assert (=> bm!160731 d!721785))

(assert (=> b!2541429 d!721737))

(declare-fun d!721791 () Bool)

(declare-fun lt!902065 () Regex!7567)

(assert (=> d!721791 (validRegex!3193 lt!902065)))

(declare-fun e!1607326 () Regex!7567)

(assert (=> d!721791 (= lt!902065 e!1607326)))

(declare-fun c!406926 () Bool)

(assert (=> d!721791 (= c!406926 ((_ is Cons!29532) (t!211331 lt!902004)))))

(assert (=> d!721791 (validRegex!3193 (derivativeStep!2136 r!27340 (h!34952 lt!902004)))))

(assert (=> d!721791 (= (derivative!262 (derivativeStep!2136 r!27340 (h!34952 lt!902004)) (t!211331 lt!902004)) lt!902065)))

(declare-fun b!2541956 () Bool)

(assert (=> b!2541956 (= e!1607326 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 r!27340 (h!34952 lt!902004)) (h!34952 (t!211331 lt!902004))) (t!211331 (t!211331 lt!902004))))))

(declare-fun b!2541957 () Bool)

(assert (=> b!2541957 (= e!1607326 (derivativeStep!2136 r!27340 (h!34952 lt!902004)))))

(assert (= (and d!721791 c!406926) b!2541956))

(assert (= (and d!721791 (not c!406926)) b!2541957))

(declare-fun m!2888503 () Bool)

(assert (=> d!721791 m!2888503))

(assert (=> d!721791 m!2888243))

(declare-fun m!2888505 () Bool)

(assert (=> d!721791 m!2888505))

(assert (=> b!2541956 m!2888243))

(declare-fun m!2888507 () Bool)

(assert (=> b!2541956 m!2888507))

(assert (=> b!2541956 m!2888507))

(declare-fun m!2888509 () Bool)

(assert (=> b!2541956 m!2888509))

(assert (=> b!2541525 d!721791))

(declare-fun b!2541960 () Bool)

(declare-fun c!406929 () Bool)

(assert (=> b!2541960 (= c!406929 ((_ is Union!7567) r!27340))))

(declare-fun e!1607330 () Regex!7567)

(declare-fun e!1607336 () Regex!7567)

(assert (=> b!2541960 (= e!1607330 e!1607336)))

(declare-fun c!406931 () Bool)

(declare-fun call!160839 () Regex!7567)

(declare-fun bm!160832 () Bool)

(assert (=> bm!160832 (= call!160839 (derivativeStep!2136 (ite c!406929 (regOne!15647 r!27340) (ite c!406931 (reg!7896 r!27340) (regOne!15646 r!27340))) (h!34952 lt!902004)))))

(declare-fun call!160837 () Regex!7567)

(declare-fun bm!160833 () Bool)

(assert (=> bm!160833 (= call!160837 (derivativeStep!2136 (ite c!406929 (regTwo!15647 r!27340) (regTwo!15646 r!27340)) (h!34952 lt!902004)))))

(declare-fun b!2541963 () Bool)

(assert (=> b!2541963 (= e!1607336 (Union!7567 call!160839 call!160837))))

(declare-fun b!2541965 () Bool)

(assert (=> b!2541965 (= e!1607330 (ite (= (h!34952 lt!902004) (c!406763 r!27340)) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2541968 () Bool)

(declare-fun c!406930 () Bool)

(assert (=> b!2541968 (= c!406930 (nullable!2484 (regOne!15646 r!27340)))))

(declare-fun e!1607331 () Regex!7567)

(declare-fun e!1607333 () Regex!7567)

(assert (=> b!2541968 (= e!1607331 e!1607333)))

(declare-fun bm!160835 () Bool)

(declare-fun call!160836 () Regex!7567)

(assert (=> bm!160835 (= call!160836 call!160839)))

(declare-fun b!2541970 () Bool)

(declare-fun e!1607337 () Regex!7567)

(assert (=> b!2541970 (= e!1607337 e!1607330)))

(declare-fun c!406927 () Bool)

(assert (=> b!2541970 (= c!406927 ((_ is ElementMatch!7567) r!27340))))

(declare-fun call!160840 () Regex!7567)

(declare-fun b!2541971 () Bool)

(assert (=> b!2541971 (= e!1607333 (Union!7567 (Concat!12263 call!160840 (regTwo!15646 r!27340)) call!160837))))

(declare-fun d!721793 () Bool)

(declare-fun lt!902066 () Regex!7567)

(assert (=> d!721793 (validRegex!3193 lt!902066)))

(assert (=> d!721793 (= lt!902066 e!1607337)))

(declare-fun c!406928 () Bool)

(assert (=> d!721793 (= c!406928 (or ((_ is EmptyExpr!7567) r!27340) ((_ is EmptyLang!7567) r!27340)))))

(assert (=> d!721793 (validRegex!3193 r!27340)))

(assert (=> d!721793 (= (derivativeStep!2136 r!27340 (h!34952 lt!902004)) lt!902066)))

(declare-fun b!2541967 () Bool)

(assert (=> b!2541967 (= e!1607337 EmptyLang!7567)))

(declare-fun b!2541972 () Bool)

(assert (=> b!2541972 (= e!1607331 (Concat!12263 call!160836 r!27340))))

(declare-fun b!2541973 () Bool)

(assert (=> b!2541973 (= e!1607336 e!1607331)))

(assert (=> b!2541973 (= c!406931 ((_ is Star!7567) r!27340))))

(declare-fun bm!160836 () Bool)

(assert (=> bm!160836 (= call!160840 call!160836)))

(declare-fun b!2541974 () Bool)

(assert (=> b!2541974 (= e!1607333 (Union!7567 (Concat!12263 call!160840 (regTwo!15646 r!27340)) EmptyLang!7567))))

(assert (= (and d!721793 c!406928) b!2541967))

(assert (= (and d!721793 (not c!406928)) b!2541970))

(assert (= (and b!2541970 c!406927) b!2541965))

(assert (= (and b!2541970 (not c!406927)) b!2541960))

(assert (= (and b!2541960 c!406929) b!2541963))

(assert (= (and b!2541960 (not c!406929)) b!2541973))

(assert (= (and b!2541973 c!406931) b!2541972))

(assert (= (and b!2541973 (not c!406931)) b!2541968))

(assert (= (and b!2541968 c!406930) b!2541971))

(assert (= (and b!2541968 (not c!406930)) b!2541974))

(assert (= (or b!2541971 b!2541974) bm!160836))

(assert (= (or b!2541972 bm!160836) bm!160835))

(assert (= (or b!2541963 b!2541971) bm!160833))

(assert (= (or b!2541963 bm!160835) bm!160832))

(declare-fun m!2888515 () Bool)

(assert (=> bm!160832 m!2888515))

(declare-fun m!2888517 () Bool)

(assert (=> bm!160833 m!2888517))

(assert (=> b!2541968 m!2888405))

(declare-fun m!2888519 () Bool)

(assert (=> d!721793 m!2888519))

(assert (=> d!721793 m!2888071))

(assert (=> b!2541525 d!721793))

(declare-fun d!721797 () Bool)

(declare-fun lt!902068 () Regex!7567)

(assert (=> d!721797 (validRegex!3193 lt!902068)))

(declare-fun e!1607339 () Regex!7567)

(assert (=> d!721797 (= lt!902068 e!1607339)))

(declare-fun c!406934 () Bool)

(assert (=> d!721797 (= c!406934 ((_ is Cons!29532) (t!211331 tl!4068)))))

(assert (=> d!721797 (validRegex!3193 (derivativeStep!2136 (derivativeStep!2136 r!27340 c!14016) (h!34952 tl!4068)))))

(assert (=> d!721797 (= (derivative!262 (derivativeStep!2136 (derivativeStep!2136 r!27340 c!14016) (h!34952 tl!4068)) (t!211331 tl!4068)) lt!902068)))

(declare-fun b!2541977 () Bool)

(assert (=> b!2541977 (= e!1607339 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (derivativeStep!2136 r!27340 c!14016) (h!34952 tl!4068)) (h!34952 (t!211331 tl!4068))) (t!211331 (t!211331 tl!4068))))))

(declare-fun b!2541978 () Bool)

(assert (=> b!2541978 (= e!1607339 (derivativeStep!2136 (derivativeStep!2136 r!27340 c!14016) (h!34952 tl!4068)))))

(assert (= (and d!721797 c!406934) b!2541977))

(assert (= (and d!721797 (not c!406934)) b!2541978))

(declare-fun m!2888529 () Bool)

(assert (=> d!721797 m!2888529))

(assert (=> d!721797 m!2888397))

(declare-fun m!2888531 () Bool)

(assert (=> d!721797 m!2888531))

(assert (=> b!2541977 m!2888397))

(declare-fun m!2888533 () Bool)

(assert (=> b!2541977 m!2888533))

(assert (=> b!2541977 m!2888533))

(declare-fun m!2888535 () Bool)

(assert (=> b!2541977 m!2888535))

(assert (=> b!2541764 d!721797))

(declare-fun b!2541989 () Bool)

(declare-fun c!406942 () Bool)

(assert (=> b!2541989 (= c!406942 ((_ is Union!7567) (derivativeStep!2136 r!27340 c!14016)))))

(declare-fun e!1607345 () Regex!7567)

(declare-fun e!1607348 () Regex!7567)

(assert (=> b!2541989 (= e!1607345 e!1607348)))

(declare-fun c!406944 () Bool)

(declare-fun call!160848 () Regex!7567)

(declare-fun bm!160841 () Bool)

(assert (=> bm!160841 (= call!160848 (derivativeStep!2136 (ite c!406942 (regOne!15647 (derivativeStep!2136 r!27340 c!14016)) (ite c!406944 (reg!7896 (derivativeStep!2136 r!27340 c!14016)) (regOne!15646 (derivativeStep!2136 r!27340 c!14016)))) (h!34952 tl!4068)))))

(declare-fun call!160847 () Regex!7567)

(declare-fun bm!160842 () Bool)

(assert (=> bm!160842 (= call!160847 (derivativeStep!2136 (ite c!406942 (regTwo!15647 (derivativeStep!2136 r!27340 c!14016)) (regTwo!15646 (derivativeStep!2136 r!27340 c!14016))) (h!34952 tl!4068)))))

(declare-fun b!2541990 () Bool)

(assert (=> b!2541990 (= e!1607348 (Union!7567 call!160848 call!160847))))

(declare-fun b!2541991 () Bool)

(assert (=> b!2541991 (= e!1607345 (ite (= (h!34952 tl!4068) (c!406763 (derivativeStep!2136 r!27340 c!14016))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2541993 () Bool)

(declare-fun c!406943 () Bool)

(assert (=> b!2541993 (= c!406943 (nullable!2484 (regOne!15646 (derivativeStep!2136 r!27340 c!14016))))))

(declare-fun e!1607346 () Regex!7567)

(declare-fun e!1607347 () Regex!7567)

(assert (=> b!2541993 (= e!1607346 e!1607347)))

(declare-fun bm!160843 () Bool)

(declare-fun call!160846 () Regex!7567)

(assert (=> bm!160843 (= call!160846 call!160848)))

(declare-fun b!2541994 () Bool)

(declare-fun e!1607349 () Regex!7567)

(assert (=> b!2541994 (= e!1607349 e!1607345)))

(declare-fun c!406940 () Bool)

(assert (=> b!2541994 (= c!406940 ((_ is ElementMatch!7567) (derivativeStep!2136 r!27340 c!14016)))))

(declare-fun call!160849 () Regex!7567)

(declare-fun b!2541995 () Bool)

(assert (=> b!2541995 (= e!1607347 (Union!7567 (Concat!12263 call!160849 (regTwo!15646 (derivativeStep!2136 r!27340 c!14016))) call!160847))))

(declare-fun d!721801 () Bool)

(declare-fun lt!902070 () Regex!7567)

(assert (=> d!721801 (validRegex!3193 lt!902070)))

(assert (=> d!721801 (= lt!902070 e!1607349)))

(declare-fun c!406941 () Bool)

(assert (=> d!721801 (= c!406941 (or ((_ is EmptyExpr!7567) (derivativeStep!2136 r!27340 c!14016)) ((_ is EmptyLang!7567) (derivativeStep!2136 r!27340 c!14016))))))

(assert (=> d!721801 (validRegex!3193 (derivativeStep!2136 r!27340 c!14016))))

(assert (=> d!721801 (= (derivativeStep!2136 (derivativeStep!2136 r!27340 c!14016) (h!34952 tl!4068)) lt!902070)))

(declare-fun b!2541992 () Bool)

(assert (=> b!2541992 (= e!1607349 EmptyLang!7567)))

(declare-fun b!2541996 () Bool)

(assert (=> b!2541996 (= e!1607346 (Concat!12263 call!160846 (derivativeStep!2136 r!27340 c!14016)))))

(declare-fun b!2541997 () Bool)

(assert (=> b!2541997 (= e!1607348 e!1607346)))

(assert (=> b!2541997 (= c!406944 ((_ is Star!7567) (derivativeStep!2136 r!27340 c!14016)))))

(declare-fun bm!160844 () Bool)

(assert (=> bm!160844 (= call!160849 call!160846)))

(declare-fun b!2541998 () Bool)

(assert (=> b!2541998 (= e!1607347 (Union!7567 (Concat!12263 call!160849 (regTwo!15646 (derivativeStep!2136 r!27340 c!14016))) EmptyLang!7567))))

(assert (= (and d!721801 c!406941) b!2541992))

(assert (= (and d!721801 (not c!406941)) b!2541994))

(assert (= (and b!2541994 c!406940) b!2541991))

(assert (= (and b!2541994 (not c!406940)) b!2541989))

(assert (= (and b!2541989 c!406942) b!2541990))

(assert (= (and b!2541989 (not c!406942)) b!2541997))

(assert (= (and b!2541997 c!406944) b!2541996))

(assert (= (and b!2541997 (not c!406944)) b!2541993))

(assert (= (and b!2541993 c!406943) b!2541995))

(assert (= (and b!2541993 (not c!406943)) b!2541998))

(assert (= (or b!2541995 b!2541998) bm!160844))

(assert (= (or b!2541996 bm!160844) bm!160843))

(assert (= (or b!2541990 b!2541995) bm!160842))

(assert (= (or b!2541990 bm!160843) bm!160841))

(declare-fun m!2888541 () Bool)

(assert (=> bm!160841 m!2888541))

(declare-fun m!2888543 () Bool)

(assert (=> bm!160842 m!2888543))

(declare-fun m!2888547 () Bool)

(assert (=> b!2541993 m!2888547))

(declare-fun m!2888549 () Bool)

(assert (=> d!721801 m!2888549))

(assert (=> d!721801 m!2888065))

(assert (=> d!721801 m!2888395))

(assert (=> b!2541764 d!721801))

(declare-fun b!2541999 () Bool)

(declare-fun e!1607352 () Bool)

(declare-fun e!1607355 () Bool)

(assert (=> b!2541999 (= e!1607352 e!1607355)))

(declare-fun res!1071472 () Bool)

(assert (=> b!2541999 (=> res!1071472 e!1607355)))

(declare-fun call!160850 () Bool)

(assert (=> b!2541999 (= res!1071472 call!160850)))

(declare-fun b!2542000 () Bool)

(declare-fun e!1607350 () Bool)

(assert (=> b!2542000 (= e!1607350 (nullable!2484 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004))))))

(declare-fun b!2542001 () Bool)

(declare-fun e!1607353 () Bool)

(assert (=> b!2542001 (= e!1607353 e!1607352)))

(declare-fun res!1071467 () Bool)

(assert (=> b!2542001 (=> (not res!1071467) (not e!1607352))))

(declare-fun lt!902071 () Bool)

(assert (=> b!2542001 (= res!1071467 (not lt!902071))))

(declare-fun b!2542002 () Bool)

(assert (=> b!2542002 (= e!1607350 (matchR!3522 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)) (head!5789 (tail!4064 lt!902004))) (tail!4064 (tail!4064 lt!902004))))))

(declare-fun b!2542003 () Bool)

(declare-fun res!1071474 () Bool)

(assert (=> b!2542003 (=> res!1071474 e!1607355)))

(assert (=> b!2542003 (= res!1071474 (not (isEmpty!16986 (tail!4064 (tail!4064 lt!902004)))))))

(declare-fun bm!160845 () Bool)

(assert (=> bm!160845 (= call!160850 (isEmpty!16986 (tail!4064 lt!902004)))))

(declare-fun b!2542004 () Bool)

(declare-fun e!1607354 () Bool)

(assert (=> b!2542004 (= e!1607354 (= lt!902071 call!160850))))

(declare-fun b!2542005 () Bool)

(declare-fun res!1071470 () Bool)

(assert (=> b!2542005 (=> res!1071470 e!1607353)))

(assert (=> b!2542005 (= res!1071470 (not ((_ is ElementMatch!7567) (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)))))))

(declare-fun e!1607351 () Bool)

(assert (=> b!2542005 (= e!1607351 e!1607353)))

(declare-fun b!2542006 () Bool)

(declare-fun res!1071473 () Bool)

(declare-fun e!1607356 () Bool)

(assert (=> b!2542006 (=> (not res!1071473) (not e!1607356))))

(assert (=> b!2542006 (= res!1071473 (isEmpty!16986 (tail!4064 (tail!4064 lt!902004))))))

(declare-fun d!721805 () Bool)

(assert (=> d!721805 e!1607354))

(declare-fun c!406945 () Bool)

(assert (=> d!721805 (= c!406945 ((_ is EmptyExpr!7567) (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004))))))

(assert (=> d!721805 (= lt!902071 e!1607350)))

(declare-fun c!406947 () Bool)

(assert (=> d!721805 (= c!406947 (isEmpty!16986 (tail!4064 lt!902004)))))

(assert (=> d!721805 (validRegex!3193 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)))))

(assert (=> d!721805 (= (matchR!3522 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)) (tail!4064 lt!902004)) lt!902071)))

(declare-fun b!2542007 () Bool)

(assert (=> b!2542007 (= e!1607356 (= (head!5789 (tail!4064 lt!902004)) (c!406763 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)))))))

(declare-fun b!2542008 () Bool)

(declare-fun res!1071471 () Bool)

(assert (=> b!2542008 (=> (not res!1071471) (not e!1607356))))

(assert (=> b!2542008 (= res!1071471 (not call!160850))))

(declare-fun b!2542009 () Bool)

(assert (=> b!2542009 (= e!1607355 (not (= (head!5789 (tail!4064 lt!902004)) (c!406763 (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004))))))))

(declare-fun b!2542010 () Bool)

(assert (=> b!2542010 (= e!1607354 e!1607351)))

(declare-fun c!406946 () Bool)

(assert (=> b!2542010 (= c!406946 ((_ is EmptyLang!7567) (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004))))))

(declare-fun b!2542011 () Bool)

(assert (=> b!2542011 (= e!1607351 (not lt!902071))))

(declare-fun b!2542012 () Bool)

(declare-fun res!1071469 () Bool)

(assert (=> b!2542012 (=> res!1071469 e!1607353)))

(assert (=> b!2542012 (= res!1071469 e!1607356)))

(declare-fun res!1071468 () Bool)

(assert (=> b!2542012 (=> (not res!1071468) (not e!1607356))))

(assert (=> b!2542012 (= res!1071468 lt!902071)))

(assert (= (and d!721805 c!406947) b!2542000))

(assert (= (and d!721805 (not c!406947)) b!2542002))

(assert (= (and d!721805 c!406945) b!2542004))

(assert (= (and d!721805 (not c!406945)) b!2542010))

(assert (= (and b!2542010 c!406946) b!2542011))

(assert (= (and b!2542010 (not c!406946)) b!2542005))

(assert (= (and b!2542005 (not res!1071470)) b!2542012))

(assert (= (and b!2542012 res!1071468) b!2542008))

(assert (= (and b!2542008 res!1071471) b!2542006))

(assert (= (and b!2542006 res!1071473) b!2542007))

(assert (= (and b!2542012 (not res!1071469)) b!2542001))

(assert (= (and b!2542001 res!1071467) b!2541999))

(assert (= (and b!2541999 (not res!1071472)) b!2542003))

(assert (= (and b!2542003 (not res!1071474)) b!2542009))

(assert (= (or b!2542004 b!2541999 b!2542008) bm!160845))

(assert (=> b!2542006 m!2888175))

(declare-fun m!2888555 () Bool)

(assert (=> b!2542006 m!2888555))

(assert (=> b!2542006 m!2888555))

(declare-fun m!2888559 () Bool)

(assert (=> b!2542006 m!2888559))

(assert (=> b!2542009 m!2888175))

(declare-fun m!2888561 () Bool)

(assert (=> b!2542009 m!2888561))

(assert (=> b!2542007 m!2888175))

(assert (=> b!2542007 m!2888561))

(assert (=> b!2542003 m!2888175))

(assert (=> b!2542003 m!2888555))

(assert (=> b!2542003 m!2888555))

(assert (=> b!2542003 m!2888559))

(assert (=> b!2542000 m!2888185))

(declare-fun m!2888565 () Bool)

(assert (=> b!2542000 m!2888565))

(assert (=> bm!160845 m!2888175))

(assert (=> bm!160845 m!2888177))

(assert (=> b!2542002 m!2888175))

(assert (=> b!2542002 m!2888561))

(assert (=> b!2542002 m!2888185))

(assert (=> b!2542002 m!2888561))

(declare-fun m!2888567 () Bool)

(assert (=> b!2542002 m!2888567))

(assert (=> b!2542002 m!2888175))

(assert (=> b!2542002 m!2888555))

(assert (=> b!2542002 m!2888567))

(assert (=> b!2542002 m!2888555))

(declare-fun m!2888569 () Bool)

(assert (=> b!2542002 m!2888569))

(assert (=> d!721805 m!2888175))

(assert (=> d!721805 m!2888177))

(assert (=> d!721805 m!2888185))

(declare-fun m!2888571 () Bool)

(assert (=> d!721805 m!2888571))

(assert (=> b!2541422 d!721805))

(declare-fun b!2542025 () Bool)

(declare-fun c!406956 () Bool)

(assert (=> b!2542025 (= c!406956 ((_ is Union!7567) (regOne!15647 r!27340)))))

(declare-fun e!1607363 () Regex!7567)

(declare-fun e!1607366 () Regex!7567)

(assert (=> b!2542025 (= e!1607363 e!1607366)))

(declare-fun bm!160850 () Bool)

(declare-fun c!406958 () Bool)

(declare-fun call!160857 () Regex!7567)

(assert (=> bm!160850 (= call!160857 (derivativeStep!2136 (ite c!406956 (regOne!15647 (regOne!15647 r!27340)) (ite c!406958 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))) (head!5789 lt!902004)))))

(declare-fun bm!160851 () Bool)

(declare-fun call!160856 () Regex!7567)

(assert (=> bm!160851 (= call!160856 (derivativeStep!2136 (ite c!406956 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))) (head!5789 lt!902004)))))

(declare-fun b!2542026 () Bool)

(assert (=> b!2542026 (= e!1607366 (Union!7567 call!160857 call!160856))))

(declare-fun b!2542027 () Bool)

(assert (=> b!2542027 (= e!1607363 (ite (= (head!5789 lt!902004) (c!406763 (regOne!15647 r!27340))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542029 () Bool)

(declare-fun c!406957 () Bool)

(assert (=> b!2542029 (= c!406957 (nullable!2484 (regOne!15646 (regOne!15647 r!27340))))))

(declare-fun e!1607364 () Regex!7567)

(declare-fun e!1607365 () Regex!7567)

(assert (=> b!2542029 (= e!1607364 e!1607365)))

(declare-fun bm!160852 () Bool)

(declare-fun call!160855 () Regex!7567)

(assert (=> bm!160852 (= call!160855 call!160857)))

(declare-fun b!2542030 () Bool)

(declare-fun e!1607367 () Regex!7567)

(assert (=> b!2542030 (= e!1607367 e!1607363)))

(declare-fun c!406954 () Bool)

(assert (=> b!2542030 (= c!406954 ((_ is ElementMatch!7567) (regOne!15647 r!27340)))))

(declare-fun b!2542031 () Bool)

(declare-fun call!160858 () Regex!7567)

(assert (=> b!2542031 (= e!1607365 (Union!7567 (Concat!12263 call!160858 (regTwo!15646 (regOne!15647 r!27340))) call!160856))))

(declare-fun d!721813 () Bool)

(declare-fun lt!902074 () Regex!7567)

(assert (=> d!721813 (validRegex!3193 lt!902074)))

(assert (=> d!721813 (= lt!902074 e!1607367)))

(declare-fun c!406955 () Bool)

(assert (=> d!721813 (= c!406955 (or ((_ is EmptyExpr!7567) (regOne!15647 r!27340)) ((_ is EmptyLang!7567) (regOne!15647 r!27340))))))

(assert (=> d!721813 (validRegex!3193 (regOne!15647 r!27340))))

(assert (=> d!721813 (= (derivativeStep!2136 (regOne!15647 r!27340) (head!5789 lt!902004)) lt!902074)))

(declare-fun b!2542028 () Bool)

(assert (=> b!2542028 (= e!1607367 EmptyLang!7567)))

(declare-fun b!2542032 () Bool)

(assert (=> b!2542032 (= e!1607364 (Concat!12263 call!160855 (regOne!15647 r!27340)))))

(declare-fun b!2542033 () Bool)

(assert (=> b!2542033 (= e!1607366 e!1607364)))

(assert (=> b!2542033 (= c!406958 ((_ is Star!7567) (regOne!15647 r!27340)))))

(declare-fun bm!160853 () Bool)

(assert (=> bm!160853 (= call!160858 call!160855)))

(declare-fun b!2542034 () Bool)

(assert (=> b!2542034 (= e!1607365 (Union!7567 (Concat!12263 call!160858 (regTwo!15646 (regOne!15647 r!27340))) EmptyLang!7567))))

(assert (= (and d!721813 c!406955) b!2542028))

(assert (= (and d!721813 (not c!406955)) b!2542030))

(assert (= (and b!2542030 c!406954) b!2542027))

(assert (= (and b!2542030 (not c!406954)) b!2542025))

(assert (= (and b!2542025 c!406956) b!2542026))

(assert (= (and b!2542025 (not c!406956)) b!2542033))

(assert (= (and b!2542033 c!406958) b!2542032))

(assert (= (and b!2542033 (not c!406958)) b!2542029))

(assert (= (and b!2542029 c!406957) b!2542031))

(assert (= (and b!2542029 (not c!406957)) b!2542034))

(assert (= (or b!2542031 b!2542034) bm!160853))

(assert (= (or b!2542032 bm!160853) bm!160852))

(assert (= (or b!2542026 b!2542031) bm!160851))

(assert (= (or b!2542026 bm!160852) bm!160850))

(assert (=> bm!160850 m!2888179))

(declare-fun m!2888579 () Bool)

(assert (=> bm!160850 m!2888579))

(assert (=> bm!160851 m!2888179))

(declare-fun m!2888581 () Bool)

(assert (=> bm!160851 m!2888581))

(assert (=> b!2542029 m!2888363))

(declare-fun m!2888583 () Bool)

(assert (=> d!721813 m!2888583))

(assert (=> d!721813 m!2888151))

(assert (=> b!2541422 d!721813))

(assert (=> b!2541422 d!721737))

(assert (=> b!2541422 d!721759))

(declare-fun d!721817 () Bool)

(declare-fun res!1071483 () Bool)

(declare-fun e!1607378 () Bool)

(assert (=> d!721817 (=> res!1071483 e!1607378)))

(assert (=> d!721817 (= res!1071483 ((_ is ElementMatch!7567) lt!902060))))

(assert (=> d!721817 (= (validRegex!3193 lt!902060) e!1607378)))

(declare-fun c!406961 () Bool)

(declare-fun bm!160857 () Bool)

(declare-fun call!160862 () Bool)

(declare-fun c!406962 () Bool)

(assert (=> bm!160857 (= call!160862 (validRegex!3193 (ite c!406962 (reg!7896 lt!902060) (ite c!406961 (regOne!15647 lt!902060) (regTwo!15646 lt!902060)))))))

(declare-fun bm!160858 () Bool)

(declare-fun call!160864 () Bool)

(assert (=> bm!160858 (= call!160864 call!160862)))

(declare-fun b!2542044 () Bool)

(declare-fun e!1607377 () Bool)

(assert (=> b!2542044 (= e!1607378 e!1607377)))

(assert (=> b!2542044 (= c!406962 ((_ is Star!7567) lt!902060))))

(declare-fun b!2542045 () Bool)

(declare-fun e!1607380 () Bool)

(assert (=> b!2542045 (= e!1607377 e!1607380)))

(declare-fun res!1071484 () Bool)

(assert (=> b!2542045 (= res!1071484 (not (nullable!2484 (reg!7896 lt!902060))))))

(assert (=> b!2542045 (=> (not res!1071484) (not e!1607380))))

(declare-fun b!2542046 () Bool)

(declare-fun e!1607375 () Bool)

(assert (=> b!2542046 (= e!1607377 e!1607375)))

(assert (=> b!2542046 (= c!406961 ((_ is Union!7567) lt!902060))))

(declare-fun b!2542047 () Bool)

(declare-fun e!1607379 () Bool)

(declare-fun call!160863 () Bool)

(assert (=> b!2542047 (= e!1607379 call!160863)))

(declare-fun bm!160859 () Bool)

(assert (=> bm!160859 (= call!160863 (validRegex!3193 (ite c!406961 (regTwo!15647 lt!902060) (regOne!15646 lt!902060))))))

(declare-fun b!2542048 () Bool)

(declare-fun e!1607376 () Bool)

(declare-fun e!1607381 () Bool)

(assert (=> b!2542048 (= e!1607376 e!1607381)))

(declare-fun res!1071481 () Bool)

(assert (=> b!2542048 (=> (not res!1071481) (not e!1607381))))

(assert (=> b!2542048 (= res!1071481 call!160863)))

(declare-fun b!2542049 () Bool)

(declare-fun res!1071482 () Bool)

(assert (=> b!2542049 (=> (not res!1071482) (not e!1607379))))

(assert (=> b!2542049 (= res!1071482 call!160864)))

(assert (=> b!2542049 (= e!1607375 e!1607379)))

(declare-fun b!2542050 () Bool)

(assert (=> b!2542050 (= e!1607381 call!160864)))

(declare-fun b!2542051 () Bool)

(assert (=> b!2542051 (= e!1607380 call!160862)))

(declare-fun b!2542052 () Bool)

(declare-fun res!1071480 () Bool)

(assert (=> b!2542052 (=> res!1071480 e!1607376)))

(assert (=> b!2542052 (= res!1071480 (not ((_ is Concat!12263) lt!902060)))))

(assert (=> b!2542052 (= e!1607375 e!1607376)))

(assert (= (and d!721817 (not res!1071483)) b!2542044))

(assert (= (and b!2542044 c!406962) b!2542045))

(assert (= (and b!2542044 (not c!406962)) b!2542046))

(assert (= (and b!2542045 res!1071484) b!2542051))

(assert (= (and b!2542046 c!406961) b!2542049))

(assert (= (and b!2542046 (not c!406961)) b!2542052))

(assert (= (and b!2542049 res!1071482) b!2542047))

(assert (= (and b!2542052 (not res!1071480)) b!2542048))

(assert (= (and b!2542048 res!1071481) b!2542050))

(assert (= (or b!2542049 b!2542050) bm!160858))

(assert (= (or b!2542047 b!2542048) bm!160859))

(assert (= (or b!2542051 bm!160858) bm!160857))

(declare-fun m!2888585 () Bool)

(assert (=> bm!160857 m!2888585))

(declare-fun m!2888587 () Bool)

(assert (=> b!2542045 m!2888587))

(declare-fun m!2888589 () Bool)

(assert (=> bm!160859 m!2888589))

(assert (=> d!721723 d!721817))

(assert (=> d!721723 d!721787))

(declare-fun d!721819 () Bool)

(declare-fun res!1071488 () Bool)

(declare-fun e!1607385 () Bool)

(assert (=> d!721819 (=> res!1071488 e!1607385)))

(assert (=> d!721819 (= res!1071488 ((_ is ElementMatch!7567) lt!902040))))

(assert (=> d!721819 (= (validRegex!3193 lt!902040) e!1607385)))

(declare-fun call!160865 () Bool)

(declare-fun c!406964 () Bool)

(declare-fun bm!160860 () Bool)

(declare-fun c!406963 () Bool)

(assert (=> bm!160860 (= call!160865 (validRegex!3193 (ite c!406964 (reg!7896 lt!902040) (ite c!406963 (regOne!15647 lt!902040) (regTwo!15646 lt!902040)))))))

(declare-fun bm!160861 () Bool)

(declare-fun call!160867 () Bool)

(assert (=> bm!160861 (= call!160867 call!160865)))

(declare-fun b!2542053 () Bool)

(declare-fun e!1607384 () Bool)

(assert (=> b!2542053 (= e!1607385 e!1607384)))

(assert (=> b!2542053 (= c!406964 ((_ is Star!7567) lt!902040))))

(declare-fun b!2542054 () Bool)

(declare-fun e!1607387 () Bool)

(assert (=> b!2542054 (= e!1607384 e!1607387)))

(declare-fun res!1071489 () Bool)

(assert (=> b!2542054 (= res!1071489 (not (nullable!2484 (reg!7896 lt!902040))))))

(assert (=> b!2542054 (=> (not res!1071489) (not e!1607387))))

(declare-fun b!2542055 () Bool)

(declare-fun e!1607382 () Bool)

(assert (=> b!2542055 (= e!1607384 e!1607382)))

(assert (=> b!2542055 (= c!406963 ((_ is Union!7567) lt!902040))))

(declare-fun b!2542056 () Bool)

(declare-fun e!1607386 () Bool)

(declare-fun call!160866 () Bool)

(assert (=> b!2542056 (= e!1607386 call!160866)))

(declare-fun bm!160862 () Bool)

(assert (=> bm!160862 (= call!160866 (validRegex!3193 (ite c!406963 (regTwo!15647 lt!902040) (regOne!15646 lt!902040))))))

(declare-fun b!2542057 () Bool)

(declare-fun e!1607383 () Bool)

(declare-fun e!1607388 () Bool)

(assert (=> b!2542057 (= e!1607383 e!1607388)))

(declare-fun res!1071486 () Bool)

(assert (=> b!2542057 (=> (not res!1071486) (not e!1607388))))

(assert (=> b!2542057 (= res!1071486 call!160866)))

(declare-fun b!2542058 () Bool)

(declare-fun res!1071487 () Bool)

(assert (=> b!2542058 (=> (not res!1071487) (not e!1607386))))

(assert (=> b!2542058 (= res!1071487 call!160867)))

(assert (=> b!2542058 (= e!1607382 e!1607386)))

(declare-fun b!2542059 () Bool)

(assert (=> b!2542059 (= e!1607388 call!160867)))

(declare-fun b!2542060 () Bool)

(assert (=> b!2542060 (= e!1607387 call!160865)))

(declare-fun b!2542061 () Bool)

(declare-fun res!1071485 () Bool)

(assert (=> b!2542061 (=> res!1071485 e!1607383)))

(assert (=> b!2542061 (= res!1071485 (not ((_ is Concat!12263) lt!902040)))))

(assert (=> b!2542061 (= e!1607382 e!1607383)))

(assert (= (and d!721819 (not res!1071488)) b!2542053))

(assert (= (and b!2542053 c!406964) b!2542054))

(assert (= (and b!2542053 (not c!406964)) b!2542055))

(assert (= (and b!2542054 res!1071489) b!2542060))

(assert (= (and b!2542055 c!406963) b!2542058))

(assert (= (and b!2542055 (not c!406963)) b!2542061))

(assert (= (and b!2542058 res!1071487) b!2542056))

(assert (= (and b!2542061 (not res!1071485)) b!2542057))

(assert (= (and b!2542057 res!1071486) b!2542059))

(assert (= (or b!2542058 b!2542059) bm!160861))

(assert (= (or b!2542056 b!2542057) bm!160862))

(assert (= (or b!2542060 bm!160861) bm!160860))

(declare-fun m!2888599 () Bool)

(assert (=> bm!160860 m!2888599))

(declare-fun m!2888601 () Bool)

(assert (=> b!2542054 m!2888601))

(declare-fun m!2888603 () Bool)

(assert (=> bm!160862 m!2888603))

(assert (=> d!721681 d!721819))

(assert (=> d!721681 d!721725))

(declare-fun d!721825 () Bool)

(assert (not d!721825))

(assert (=> b!2541409 d!721825))

(declare-fun d!721827 () Bool)

(declare-fun res!1071498 () Bool)

(declare-fun e!1607399 () Bool)

(assert (=> d!721827 (=> res!1071498 e!1607399)))

(assert (=> d!721827 (= res!1071498 ((_ is ElementMatch!7567) lt!902025))))

(assert (=> d!721827 (= (validRegex!3193 lt!902025) e!1607399)))

(declare-fun bm!160866 () Bool)

(declare-fun c!406968 () Bool)

(declare-fun c!406967 () Bool)

(declare-fun call!160871 () Bool)

(assert (=> bm!160866 (= call!160871 (validRegex!3193 (ite c!406968 (reg!7896 lt!902025) (ite c!406967 (regOne!15647 lt!902025) (regTwo!15646 lt!902025)))))))

(declare-fun bm!160867 () Bool)

(declare-fun call!160873 () Bool)

(assert (=> bm!160867 (= call!160873 call!160871)))

(declare-fun b!2542071 () Bool)

(declare-fun e!1607398 () Bool)

(assert (=> b!2542071 (= e!1607399 e!1607398)))

(assert (=> b!2542071 (= c!406968 ((_ is Star!7567) lt!902025))))

(declare-fun b!2542072 () Bool)

(declare-fun e!1607401 () Bool)

(assert (=> b!2542072 (= e!1607398 e!1607401)))

(declare-fun res!1071499 () Bool)

(assert (=> b!2542072 (= res!1071499 (not (nullable!2484 (reg!7896 lt!902025))))))

(assert (=> b!2542072 (=> (not res!1071499) (not e!1607401))))

(declare-fun b!2542073 () Bool)

(declare-fun e!1607396 () Bool)

(assert (=> b!2542073 (= e!1607398 e!1607396)))

(assert (=> b!2542073 (= c!406967 ((_ is Union!7567) lt!902025))))

(declare-fun b!2542074 () Bool)

(declare-fun e!1607400 () Bool)

(declare-fun call!160872 () Bool)

(assert (=> b!2542074 (= e!1607400 call!160872)))

(declare-fun bm!160868 () Bool)

(assert (=> bm!160868 (= call!160872 (validRegex!3193 (ite c!406967 (regTwo!15647 lt!902025) (regOne!15646 lt!902025))))))

(declare-fun b!2542075 () Bool)

(declare-fun e!1607397 () Bool)

(declare-fun e!1607402 () Bool)

(assert (=> b!2542075 (= e!1607397 e!1607402)))

(declare-fun res!1071496 () Bool)

(assert (=> b!2542075 (=> (not res!1071496) (not e!1607402))))

(assert (=> b!2542075 (= res!1071496 call!160872)))

(declare-fun b!2542076 () Bool)

(declare-fun res!1071497 () Bool)

(assert (=> b!2542076 (=> (not res!1071497) (not e!1607400))))

(assert (=> b!2542076 (= res!1071497 call!160873)))

(assert (=> b!2542076 (= e!1607396 e!1607400)))

(declare-fun b!2542077 () Bool)

(assert (=> b!2542077 (= e!1607402 call!160873)))

(declare-fun b!2542078 () Bool)

(assert (=> b!2542078 (= e!1607401 call!160871)))

(declare-fun b!2542079 () Bool)

(declare-fun res!1071495 () Bool)

(assert (=> b!2542079 (=> res!1071495 e!1607397)))

(assert (=> b!2542079 (= res!1071495 (not ((_ is Concat!12263) lt!902025)))))

(assert (=> b!2542079 (= e!1607396 e!1607397)))

(assert (= (and d!721827 (not res!1071498)) b!2542071))

(assert (= (and b!2542071 c!406968) b!2542072))

(assert (= (and b!2542071 (not c!406968)) b!2542073))

(assert (= (and b!2542072 res!1071499) b!2542078))

(assert (= (and b!2542073 c!406967) b!2542076))

(assert (= (and b!2542073 (not c!406967)) b!2542079))

(assert (= (and b!2542076 res!1071497) b!2542074))

(assert (= (and b!2542079 (not res!1071495)) b!2542075))

(assert (= (and b!2542075 res!1071496) b!2542077))

(assert (= (or b!2542076 b!2542077) bm!160867))

(assert (= (or b!2542074 b!2542075) bm!160868))

(assert (= (or b!2542078 bm!160867) bm!160866))

(declare-fun m!2888611 () Bool)

(assert (=> bm!160866 m!2888611))

(declare-fun m!2888613 () Bool)

(assert (=> b!2542072 m!2888613))

(declare-fun m!2888615 () Bool)

(assert (=> bm!160868 m!2888615))

(assert (=> d!721659 d!721827))

(assert (=> d!721659 d!721787))

(declare-fun d!721833 () Bool)

(assert (=> d!721833 (= (nullable!2484 r!27340) (nullableFct!715 r!27340))))

(declare-fun bs!469420 () Bool)

(assert (= bs!469420 d!721833))

(declare-fun m!2888617 () Bool)

(assert (=> bs!469420 m!2888617))

(assert (=> b!2541510 d!721833))

(declare-fun b!2542089 () Bool)

(declare-fun e!1607412 () Bool)

(declare-fun e!1607415 () Bool)

(assert (=> b!2542089 (= e!1607412 e!1607415)))

(declare-fun res!1071510 () Bool)

(assert (=> b!2542089 (=> res!1071510 e!1607415)))

(declare-fun call!160877 () Bool)

(assert (=> b!2542089 (= res!1071510 call!160877)))

(declare-fun b!2542090 () Bool)

(declare-fun e!1607410 () Bool)

(assert (=> b!2542090 (= e!1607410 (nullable!2484 (derivativeStep!2136 r!27340 (head!5789 lt!902004))))))

(declare-fun b!2542091 () Bool)

(declare-fun e!1607413 () Bool)

(assert (=> b!2542091 (= e!1607413 e!1607412)))

(declare-fun res!1071505 () Bool)

(assert (=> b!2542091 (=> (not res!1071505) (not e!1607412))))

(declare-fun lt!902075 () Bool)

(assert (=> b!2542091 (= res!1071505 (not lt!902075))))

(declare-fun b!2542092 () Bool)

(assert (=> b!2542092 (= e!1607410 (matchR!3522 (derivativeStep!2136 (derivativeStep!2136 r!27340 (head!5789 lt!902004)) (head!5789 (tail!4064 lt!902004))) (tail!4064 (tail!4064 lt!902004))))))

(declare-fun b!2542093 () Bool)

(declare-fun res!1071512 () Bool)

(assert (=> b!2542093 (=> res!1071512 e!1607415)))

(assert (=> b!2542093 (= res!1071512 (not (isEmpty!16986 (tail!4064 (tail!4064 lt!902004)))))))

(declare-fun bm!160872 () Bool)

(assert (=> bm!160872 (= call!160877 (isEmpty!16986 (tail!4064 lt!902004)))))

(declare-fun b!2542094 () Bool)

(declare-fun e!1607414 () Bool)

(assert (=> b!2542094 (= e!1607414 (= lt!902075 call!160877))))

(declare-fun b!2542095 () Bool)

(declare-fun res!1071508 () Bool)

(assert (=> b!2542095 (=> res!1071508 e!1607413)))

(assert (=> b!2542095 (= res!1071508 (not ((_ is ElementMatch!7567) (derivativeStep!2136 r!27340 (head!5789 lt!902004)))))))

(declare-fun e!1607411 () Bool)

(assert (=> b!2542095 (= e!1607411 e!1607413)))

(declare-fun b!2542096 () Bool)

(declare-fun res!1071511 () Bool)

(declare-fun e!1607416 () Bool)

(assert (=> b!2542096 (=> (not res!1071511) (not e!1607416))))

(assert (=> b!2542096 (= res!1071511 (isEmpty!16986 (tail!4064 (tail!4064 lt!902004))))))

(declare-fun d!721837 () Bool)

(assert (=> d!721837 e!1607414))

(declare-fun c!406971 () Bool)

(assert (=> d!721837 (= c!406971 ((_ is EmptyExpr!7567) (derivativeStep!2136 r!27340 (head!5789 lt!902004))))))

(assert (=> d!721837 (= lt!902075 e!1607410)))

(declare-fun c!406973 () Bool)

(assert (=> d!721837 (= c!406973 (isEmpty!16986 (tail!4064 lt!902004)))))

(assert (=> d!721837 (validRegex!3193 (derivativeStep!2136 r!27340 (head!5789 lt!902004)))))

(assert (=> d!721837 (= (matchR!3522 (derivativeStep!2136 r!27340 (head!5789 lt!902004)) (tail!4064 lt!902004)) lt!902075)))

(declare-fun b!2542097 () Bool)

(assert (=> b!2542097 (= e!1607416 (= (head!5789 (tail!4064 lt!902004)) (c!406763 (derivativeStep!2136 r!27340 (head!5789 lt!902004)))))))

(declare-fun b!2542098 () Bool)

(declare-fun res!1071509 () Bool)

(assert (=> b!2542098 (=> (not res!1071509) (not e!1607416))))

(assert (=> b!2542098 (= res!1071509 (not call!160877))))

(declare-fun b!2542099 () Bool)

(assert (=> b!2542099 (= e!1607415 (not (= (head!5789 (tail!4064 lt!902004)) (c!406763 (derivativeStep!2136 r!27340 (head!5789 lt!902004))))))))

(declare-fun b!2542100 () Bool)

(assert (=> b!2542100 (= e!1607414 e!1607411)))

(declare-fun c!406972 () Bool)

(assert (=> b!2542100 (= c!406972 ((_ is EmptyLang!7567) (derivativeStep!2136 r!27340 (head!5789 lt!902004))))))

(declare-fun b!2542101 () Bool)

(assert (=> b!2542101 (= e!1607411 (not lt!902075))))

(declare-fun b!2542102 () Bool)

(declare-fun res!1071507 () Bool)

(assert (=> b!2542102 (=> res!1071507 e!1607413)))

(assert (=> b!2542102 (= res!1071507 e!1607416)))

(declare-fun res!1071506 () Bool)

(assert (=> b!2542102 (=> (not res!1071506) (not e!1607416))))

(assert (=> b!2542102 (= res!1071506 lt!902075)))

(assert (= (and d!721837 c!406973) b!2542090))

(assert (= (and d!721837 (not c!406973)) b!2542092))

(assert (= (and d!721837 c!406971) b!2542094))

(assert (= (and d!721837 (not c!406971)) b!2542100))

(assert (= (and b!2542100 c!406972) b!2542101))

(assert (= (and b!2542100 (not c!406972)) b!2542095))

(assert (= (and b!2542095 (not res!1071508)) b!2542102))

(assert (= (and b!2542102 res!1071506) b!2542098))

(assert (= (and b!2542098 res!1071509) b!2542096))

(assert (= (and b!2542096 res!1071511) b!2542097))

(assert (= (and b!2542102 (not res!1071507)) b!2542091))

(assert (= (and b!2542091 res!1071505) b!2542089))

(assert (= (and b!2542089 (not res!1071510)) b!2542093))

(assert (= (and b!2542093 (not res!1071512)) b!2542099))

(assert (= (or b!2542094 b!2542089 b!2542098) bm!160872))

(assert (=> b!2542096 m!2888175))

(assert (=> b!2542096 m!2888555))

(assert (=> b!2542096 m!2888555))

(assert (=> b!2542096 m!2888559))

(assert (=> b!2542099 m!2888175))

(assert (=> b!2542099 m!2888561))

(assert (=> b!2542097 m!2888175))

(assert (=> b!2542097 m!2888561))

(assert (=> b!2542093 m!2888175))

(assert (=> b!2542093 m!2888555))

(assert (=> b!2542093 m!2888555))

(assert (=> b!2542093 m!2888559))

(assert (=> b!2542090 m!2888231))

(declare-fun m!2888625 () Bool)

(assert (=> b!2542090 m!2888625))

(assert (=> bm!160872 m!2888175))

(assert (=> bm!160872 m!2888177))

(assert (=> b!2542092 m!2888175))

(assert (=> b!2542092 m!2888561))

(assert (=> b!2542092 m!2888231))

(assert (=> b!2542092 m!2888561))

(declare-fun m!2888627 () Bool)

(assert (=> b!2542092 m!2888627))

(assert (=> b!2542092 m!2888175))

(assert (=> b!2542092 m!2888555))

(assert (=> b!2542092 m!2888627))

(assert (=> b!2542092 m!2888555))

(declare-fun m!2888629 () Bool)

(assert (=> b!2542092 m!2888629))

(assert (=> d!721837 m!2888175))

(assert (=> d!721837 m!2888177))

(assert (=> d!721837 m!2888231))

(declare-fun m!2888631 () Bool)

(assert (=> d!721837 m!2888631))

(assert (=> b!2541512 d!721837))

(declare-fun b!2542103 () Bool)

(declare-fun c!406976 () Bool)

(assert (=> b!2542103 (= c!406976 ((_ is Union!7567) r!27340))))

(declare-fun e!1607417 () Regex!7567)

(declare-fun e!1607420 () Regex!7567)

(assert (=> b!2542103 (= e!1607417 e!1607420)))

(declare-fun c!406978 () Bool)

(declare-fun bm!160873 () Bool)

(declare-fun call!160880 () Regex!7567)

(assert (=> bm!160873 (= call!160880 (derivativeStep!2136 (ite c!406976 (regOne!15647 r!27340) (ite c!406978 (reg!7896 r!27340) (regOne!15646 r!27340))) (head!5789 lt!902004)))))

(declare-fun call!160879 () Regex!7567)

(declare-fun bm!160874 () Bool)

(assert (=> bm!160874 (= call!160879 (derivativeStep!2136 (ite c!406976 (regTwo!15647 r!27340) (regTwo!15646 r!27340)) (head!5789 lt!902004)))))

(declare-fun b!2542104 () Bool)

(assert (=> b!2542104 (= e!1607420 (Union!7567 call!160880 call!160879))))

(declare-fun b!2542105 () Bool)

(assert (=> b!2542105 (= e!1607417 (ite (= (head!5789 lt!902004) (c!406763 r!27340)) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542107 () Bool)

(declare-fun c!406977 () Bool)

(assert (=> b!2542107 (= c!406977 (nullable!2484 (regOne!15646 r!27340)))))

(declare-fun e!1607418 () Regex!7567)

(declare-fun e!1607419 () Regex!7567)

(assert (=> b!2542107 (= e!1607418 e!1607419)))

(declare-fun bm!160875 () Bool)

(declare-fun call!160878 () Regex!7567)

(assert (=> bm!160875 (= call!160878 call!160880)))

(declare-fun b!2542108 () Bool)

(declare-fun e!1607421 () Regex!7567)

(assert (=> b!2542108 (= e!1607421 e!1607417)))

(declare-fun c!406974 () Bool)

(assert (=> b!2542108 (= c!406974 ((_ is ElementMatch!7567) r!27340))))

(declare-fun b!2542109 () Bool)

(declare-fun call!160881 () Regex!7567)

(assert (=> b!2542109 (= e!1607419 (Union!7567 (Concat!12263 call!160881 (regTwo!15646 r!27340)) call!160879))))

(declare-fun d!721841 () Bool)

(declare-fun lt!902076 () Regex!7567)

(assert (=> d!721841 (validRegex!3193 lt!902076)))

(assert (=> d!721841 (= lt!902076 e!1607421)))

(declare-fun c!406975 () Bool)

(assert (=> d!721841 (= c!406975 (or ((_ is EmptyExpr!7567) r!27340) ((_ is EmptyLang!7567) r!27340)))))

(assert (=> d!721841 (validRegex!3193 r!27340)))

(assert (=> d!721841 (= (derivativeStep!2136 r!27340 (head!5789 lt!902004)) lt!902076)))

(declare-fun b!2542106 () Bool)

(assert (=> b!2542106 (= e!1607421 EmptyLang!7567)))

(declare-fun b!2542110 () Bool)

(assert (=> b!2542110 (= e!1607418 (Concat!12263 call!160878 r!27340))))

(declare-fun b!2542111 () Bool)

(assert (=> b!2542111 (= e!1607420 e!1607418)))

(assert (=> b!2542111 (= c!406978 ((_ is Star!7567) r!27340))))

(declare-fun bm!160876 () Bool)

(assert (=> bm!160876 (= call!160881 call!160878)))

(declare-fun b!2542112 () Bool)

(assert (=> b!2542112 (= e!1607419 (Union!7567 (Concat!12263 call!160881 (regTwo!15646 r!27340)) EmptyLang!7567))))

(assert (= (and d!721841 c!406975) b!2542106))

(assert (= (and d!721841 (not c!406975)) b!2542108))

(assert (= (and b!2542108 c!406974) b!2542105))

(assert (= (and b!2542108 (not c!406974)) b!2542103))

(assert (= (and b!2542103 c!406976) b!2542104))

(assert (= (and b!2542103 (not c!406976)) b!2542111))

(assert (= (and b!2542111 c!406978) b!2542110))

(assert (= (and b!2542111 (not c!406978)) b!2542107))

(assert (= (and b!2542107 c!406977) b!2542109))

(assert (= (and b!2542107 (not c!406977)) b!2542112))

(assert (= (or b!2542109 b!2542112) bm!160876))

(assert (= (or b!2542110 bm!160876) bm!160875))

(assert (= (or b!2542104 b!2542109) bm!160874))

(assert (= (or b!2542104 bm!160875) bm!160873))

(assert (=> bm!160873 m!2888179))

(declare-fun m!2888633 () Bool)

(assert (=> bm!160873 m!2888633))

(assert (=> bm!160874 m!2888179))

(declare-fun m!2888635 () Bool)

(assert (=> bm!160874 m!2888635))

(assert (=> b!2542107 m!2888405))

(declare-fun m!2888637 () Bool)

(assert (=> d!721841 m!2888637))

(assert (=> d!721841 m!2888071))

(assert (=> b!2541512 d!721841))

(assert (=> b!2541512 d!721737))

(assert (=> b!2541512 d!721759))

(assert (=> b!2541380 d!721739))

(assert (=> b!2541380 d!721743))

(declare-fun d!721845 () Bool)

(assert (=> d!721845 (= (nullable!2484 (reg!7896 r!27340)) (nullableFct!715 (reg!7896 r!27340)))))

(declare-fun bs!469421 () Bool)

(assert (= bs!469421 d!721845))

(declare-fun m!2888641 () Bool)

(assert (=> bs!469421 m!2888641))

(assert (=> b!2541756 d!721845))

(assert (=> bm!160725 d!721785))

(declare-fun d!721847 () Bool)

(declare-fun res!1071521 () Bool)

(declare-fun e!1607431 () Bool)

(assert (=> d!721847 (=> res!1071521 e!1607431)))

(assert (=> d!721847 (= res!1071521 ((_ is ElementMatch!7567) lt!902061))))

(assert (=> d!721847 (= (validRegex!3193 lt!902061) e!1607431)))

(declare-fun c!406980 () Bool)

(declare-fun call!160884 () Bool)

(declare-fun bm!160879 () Bool)

(declare-fun c!406981 () Bool)

(assert (=> bm!160879 (= call!160884 (validRegex!3193 (ite c!406981 (reg!7896 lt!902061) (ite c!406980 (regOne!15647 lt!902061) (regTwo!15646 lt!902061)))))))

(declare-fun bm!160880 () Bool)

(declare-fun call!160886 () Bool)

(assert (=> bm!160880 (= call!160886 call!160884)))

(declare-fun b!2542120 () Bool)

(declare-fun e!1607430 () Bool)

(assert (=> b!2542120 (= e!1607431 e!1607430)))

(assert (=> b!2542120 (= c!406981 ((_ is Star!7567) lt!902061))))

(declare-fun b!2542121 () Bool)

(declare-fun e!1607433 () Bool)

(assert (=> b!2542121 (= e!1607430 e!1607433)))

(declare-fun res!1071522 () Bool)

(assert (=> b!2542121 (= res!1071522 (not (nullable!2484 (reg!7896 lt!902061))))))

(assert (=> b!2542121 (=> (not res!1071522) (not e!1607433))))

(declare-fun b!2542122 () Bool)

(declare-fun e!1607428 () Bool)

(assert (=> b!2542122 (= e!1607430 e!1607428)))

(assert (=> b!2542122 (= c!406980 ((_ is Union!7567) lt!902061))))

(declare-fun b!2542123 () Bool)

(declare-fun e!1607432 () Bool)

(declare-fun call!160885 () Bool)

(assert (=> b!2542123 (= e!1607432 call!160885)))

(declare-fun bm!160881 () Bool)

(assert (=> bm!160881 (= call!160885 (validRegex!3193 (ite c!406980 (regTwo!15647 lt!902061) (regOne!15646 lt!902061))))))

(declare-fun b!2542124 () Bool)

(declare-fun e!1607429 () Bool)

(declare-fun e!1607434 () Bool)

(assert (=> b!2542124 (= e!1607429 e!1607434)))

(declare-fun res!1071519 () Bool)

(assert (=> b!2542124 (=> (not res!1071519) (not e!1607434))))

(assert (=> b!2542124 (= res!1071519 call!160885)))

(declare-fun b!2542125 () Bool)

(declare-fun res!1071520 () Bool)

(assert (=> b!2542125 (=> (not res!1071520) (not e!1607432))))

(assert (=> b!2542125 (= res!1071520 call!160886)))

(assert (=> b!2542125 (= e!1607428 e!1607432)))

(declare-fun b!2542126 () Bool)

(assert (=> b!2542126 (= e!1607434 call!160886)))

(declare-fun b!2542127 () Bool)

(assert (=> b!2542127 (= e!1607433 call!160884)))

(declare-fun b!2542128 () Bool)

(declare-fun res!1071518 () Bool)

(assert (=> b!2542128 (=> res!1071518 e!1607429)))

(assert (=> b!2542128 (= res!1071518 (not ((_ is Concat!12263) lt!902061)))))

(assert (=> b!2542128 (= e!1607428 e!1607429)))

(assert (= (and d!721847 (not res!1071521)) b!2542120))

(assert (= (and b!2542120 c!406981) b!2542121))

(assert (= (and b!2542120 (not c!406981)) b!2542122))

(assert (= (and b!2542121 res!1071522) b!2542127))

(assert (= (and b!2542122 c!406980) b!2542125))

(assert (= (and b!2542122 (not c!406980)) b!2542128))

(assert (= (and b!2542125 res!1071520) b!2542123))

(assert (= (and b!2542128 (not res!1071518)) b!2542124))

(assert (= (and b!2542124 res!1071519) b!2542126))

(assert (= (or b!2542125 b!2542126) bm!160880))

(assert (= (or b!2542123 b!2542124) bm!160881))

(assert (= (or b!2542127 bm!160880) bm!160879))

(declare-fun m!2888645 () Bool)

(assert (=> bm!160879 m!2888645))

(declare-fun m!2888647 () Bool)

(assert (=> b!2542121 m!2888647))

(declare-fun m!2888649 () Bool)

(assert (=> bm!160881 m!2888649))

(assert (=> d!721729 d!721847))

(declare-fun d!721851 () Bool)

(declare-fun res!1071531 () Bool)

(declare-fun e!1607445 () Bool)

(assert (=> d!721851 (=> res!1071531 e!1607445)))

(assert (=> d!721851 (= res!1071531 ((_ is ElementMatch!7567) (derivativeStep!2136 r!27340 c!14016)))))

(assert (=> d!721851 (= (validRegex!3193 (derivativeStep!2136 r!27340 c!14016)) e!1607445)))

(declare-fun bm!160885 () Bool)

(declare-fun c!406985 () Bool)

(declare-fun c!406984 () Bool)

(declare-fun call!160890 () Bool)

(assert (=> bm!160885 (= call!160890 (validRegex!3193 (ite c!406985 (reg!7896 (derivativeStep!2136 r!27340 c!14016)) (ite c!406984 (regOne!15647 (derivativeStep!2136 r!27340 c!14016)) (regTwo!15646 (derivativeStep!2136 r!27340 c!14016))))))))

(declare-fun bm!160886 () Bool)

(declare-fun call!160892 () Bool)

(assert (=> bm!160886 (= call!160892 call!160890)))

(declare-fun b!2542138 () Bool)

(declare-fun e!1607444 () Bool)

(assert (=> b!2542138 (= e!1607445 e!1607444)))

(assert (=> b!2542138 (= c!406985 ((_ is Star!7567) (derivativeStep!2136 r!27340 c!14016)))))

(declare-fun b!2542139 () Bool)

(declare-fun e!1607447 () Bool)

(assert (=> b!2542139 (= e!1607444 e!1607447)))

(declare-fun res!1071532 () Bool)

(assert (=> b!2542139 (= res!1071532 (not (nullable!2484 (reg!7896 (derivativeStep!2136 r!27340 c!14016)))))))

(assert (=> b!2542139 (=> (not res!1071532) (not e!1607447))))

(declare-fun b!2542140 () Bool)

(declare-fun e!1607442 () Bool)

(assert (=> b!2542140 (= e!1607444 e!1607442)))

(assert (=> b!2542140 (= c!406984 ((_ is Union!7567) (derivativeStep!2136 r!27340 c!14016)))))

(declare-fun b!2542141 () Bool)

(declare-fun e!1607446 () Bool)

(declare-fun call!160891 () Bool)

(assert (=> b!2542141 (= e!1607446 call!160891)))

(declare-fun bm!160887 () Bool)

(assert (=> bm!160887 (= call!160891 (validRegex!3193 (ite c!406984 (regTwo!15647 (derivativeStep!2136 r!27340 c!14016)) (regOne!15646 (derivativeStep!2136 r!27340 c!14016)))))))

(declare-fun b!2542142 () Bool)

(declare-fun e!1607443 () Bool)

(declare-fun e!1607448 () Bool)

(assert (=> b!2542142 (= e!1607443 e!1607448)))

(declare-fun res!1071529 () Bool)

(assert (=> b!2542142 (=> (not res!1071529) (not e!1607448))))

(assert (=> b!2542142 (= res!1071529 call!160891)))

(declare-fun b!2542143 () Bool)

(declare-fun res!1071530 () Bool)

(assert (=> b!2542143 (=> (not res!1071530) (not e!1607446))))

(assert (=> b!2542143 (= res!1071530 call!160892)))

(assert (=> b!2542143 (= e!1607442 e!1607446)))

(declare-fun b!2542144 () Bool)

(assert (=> b!2542144 (= e!1607448 call!160892)))

(declare-fun b!2542145 () Bool)

(assert (=> b!2542145 (= e!1607447 call!160890)))

(declare-fun b!2542146 () Bool)

(declare-fun res!1071528 () Bool)

(assert (=> b!2542146 (=> res!1071528 e!1607443)))

(assert (=> b!2542146 (= res!1071528 (not ((_ is Concat!12263) (derivativeStep!2136 r!27340 c!14016))))))

(assert (=> b!2542146 (= e!1607442 e!1607443)))

(assert (= (and d!721851 (not res!1071531)) b!2542138))

(assert (= (and b!2542138 c!406985) b!2542139))

(assert (= (and b!2542138 (not c!406985)) b!2542140))

(assert (= (and b!2542139 res!1071532) b!2542145))

(assert (= (and b!2542140 c!406984) b!2542143))

(assert (= (and b!2542140 (not c!406984)) b!2542146))

(assert (= (and b!2542143 res!1071530) b!2542141))

(assert (= (and b!2542146 (not res!1071528)) b!2542142))

(assert (= (and b!2542142 res!1071529) b!2542144))

(assert (= (or b!2542143 b!2542144) bm!160886))

(assert (= (or b!2542141 b!2542142) bm!160887))

(assert (= (or b!2542145 bm!160886) bm!160885))

(declare-fun m!2888659 () Bool)

(assert (=> bm!160885 m!2888659))

(declare-fun m!2888661 () Bool)

(assert (=> b!2542139 m!2888661))

(declare-fun m!2888663 () Bool)

(assert (=> bm!160887 m!2888663))

(assert (=> d!721729 d!721851))

(assert (=> b!2541443 d!721737))

(assert (=> b!2541441 d!721737))

(declare-fun b!2542182 () Bool)

(declare-fun e!1607478 () Bool)

(declare-fun e!1607479 () Bool)

(assert (=> b!2542182 (= e!1607478 e!1607479)))

(declare-fun res!1071560 () Bool)

(declare-fun call!160901 () Bool)

(assert (=> b!2542182 (= res!1071560 call!160901)))

(assert (=> b!2542182 (=> res!1071560 e!1607479)))

(declare-fun b!2542183 () Bool)

(declare-fun e!1607476 () Bool)

(assert (=> b!2542183 (= e!1607478 e!1607476)))

(declare-fun res!1071557 () Bool)

(declare-fun call!160900 () Bool)

(assert (=> b!2542183 (= res!1071557 call!160900)))

(assert (=> b!2542183 (=> (not res!1071557) (not e!1607476))))

(declare-fun d!721859 () Bool)

(declare-fun res!1071556 () Bool)

(declare-fun e!1607475 () Bool)

(assert (=> d!721859 (=> res!1071556 e!1607475)))

(assert (=> d!721859 (= res!1071556 ((_ is EmptyExpr!7567) (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))

(assert (=> d!721859 (= (nullableFct!715 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)) e!1607475)))

(declare-fun b!2542184 () Bool)

(declare-fun e!1607474 () Bool)

(assert (=> b!2542184 (= e!1607475 e!1607474)))

(declare-fun res!1071559 () Bool)

(assert (=> b!2542184 (=> (not res!1071559) (not e!1607474))))

(assert (=> b!2542184 (= res!1071559 (and (not ((_ is EmptyLang!7567) (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7567) (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))))

(declare-fun bm!160895 () Bool)

(declare-fun c!406992 () Bool)

(assert (=> bm!160895 (= call!160900 (nullable!2484 (ite c!406992 (regTwo!15647 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)) (regOne!15646 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2542185 () Bool)

(declare-fun e!1607477 () Bool)

(assert (=> b!2542185 (= e!1607477 e!1607478)))

(assert (=> b!2542185 (= c!406992 ((_ is Union!7567) (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))

(declare-fun b!2542186 () Bool)

(assert (=> b!2542186 (= e!1607476 call!160901)))

(declare-fun b!2542187 () Bool)

(assert (=> b!2542187 (= e!1607474 e!1607477)))

(declare-fun res!1071558 () Bool)

(assert (=> b!2542187 (=> res!1071558 e!1607477)))

(assert (=> b!2542187 (= res!1071558 ((_ is Star!7567) (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))

(declare-fun b!2542188 () Bool)

(assert (=> b!2542188 (= e!1607479 call!160900)))

(declare-fun bm!160896 () Bool)

(assert (=> bm!160896 (= call!160901 (nullable!2484 (ite c!406992 (regOne!15647 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)) (regTwo!15646 (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) tl!4068)))))))

(assert (= (and d!721859 (not res!1071556)) b!2542184))

(assert (= (and b!2542184 res!1071559) b!2542187))

(assert (= (and b!2542187 (not res!1071558)) b!2542185))

(assert (= (and b!2542185 c!406992) b!2542182))

(assert (= (and b!2542185 (not c!406992)) b!2542183))

(assert (= (and b!2542182 (not res!1071560)) b!2542188))

(assert (= (and b!2542183 res!1071557) b!2542186))

(assert (= (or b!2542188 b!2542183) bm!160895))

(assert (= (or b!2542182 b!2542186) bm!160896))

(declare-fun m!2888683 () Bool)

(assert (=> bm!160895 m!2888683))

(declare-fun m!2888685 () Bool)

(assert (=> bm!160896 m!2888685))

(assert (=> d!721693 d!721859))

(assert (=> bm!160724 d!721733))

(assert (=> b!2541551 d!721825))

(declare-fun c!407000 () Bool)

(declare-fun b!2542199 () Bool)

(assert (=> b!2542199 (= c!407000 ((_ is Union!7567) (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))))))

(declare-fun e!1607485 () Regex!7567)

(declare-fun e!1607488 () Regex!7567)

(assert (=> b!2542199 (= e!1607485 e!1607488)))

(declare-fun c!407002 () Bool)

(declare-fun call!160908 () Regex!7567)

(declare-fun bm!160901 () Bool)

(assert (=> bm!160901 (= call!160908 (derivativeStep!2136 (ite c!407000 (regOne!15647 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))) (ite c!407002 (reg!7896 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))) (regOne!15646 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))))) c!14016))))

(declare-fun call!160907 () Regex!7567)

(declare-fun bm!160902 () Bool)

(assert (=> bm!160902 (= call!160907 (derivativeStep!2136 (ite c!407000 (regTwo!15647 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))) (regTwo!15646 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))) c!14016))))

(declare-fun b!2542200 () Bool)

(assert (=> b!2542200 (= e!1607488 (Union!7567 call!160908 call!160907))))

(declare-fun b!2542201 () Bool)

(assert (=> b!2542201 (= e!1607485 (ite (= c!14016 (c!406763 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542203 () Bool)

(declare-fun c!407001 () Bool)

(assert (=> b!2542203 (= c!407001 (nullable!2484 (regOne!15646 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))))))

(declare-fun e!1607486 () Regex!7567)

(declare-fun e!1607487 () Regex!7567)

(assert (=> b!2542203 (= e!1607486 e!1607487)))

(declare-fun bm!160903 () Bool)

(declare-fun call!160906 () Regex!7567)

(assert (=> bm!160903 (= call!160906 call!160908)))

(declare-fun b!2542204 () Bool)

(declare-fun e!1607489 () Regex!7567)

(assert (=> b!2542204 (= e!1607489 e!1607485)))

(declare-fun c!406998 () Bool)

(assert (=> b!2542204 (= c!406998 ((_ is ElementMatch!7567) (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))))))

(declare-fun call!160909 () Regex!7567)

(declare-fun b!2542205 () Bool)

(assert (=> b!2542205 (= e!1607487 (Union!7567 (Concat!12263 call!160909 (regTwo!15646 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))) call!160907))))

(declare-fun d!721869 () Bool)

(declare-fun lt!902079 () Regex!7567)

(assert (=> d!721869 (validRegex!3193 lt!902079)))

(assert (=> d!721869 (= lt!902079 e!1607489)))

(declare-fun c!406999 () Bool)

(assert (=> d!721869 (= c!406999 (or ((_ is EmptyExpr!7567) (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))) ((_ is EmptyLang!7567) (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))))))

(assert (=> d!721869 (validRegex!3193 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))))

(assert (=> d!721869 (= (derivativeStep!2136 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))) c!14016) lt!902079)))

(declare-fun b!2542202 () Bool)

(assert (=> b!2542202 (= e!1607489 EmptyLang!7567)))

(declare-fun b!2542206 () Bool)

(assert (=> b!2542206 (= e!1607486 (Concat!12263 call!160906 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))))))

(declare-fun b!2542207 () Bool)

(assert (=> b!2542207 (= e!1607488 e!1607486)))

(assert (=> b!2542207 (= c!407002 ((_ is Star!7567) (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340))))))))

(declare-fun bm!160904 () Bool)

(assert (=> bm!160904 (= call!160909 call!160906)))

(declare-fun b!2542208 () Bool)

(assert (=> b!2542208 (= e!1607487 (Union!7567 (Concat!12263 call!160909 (regTwo!15646 (ite c!406869 (regOne!15647 (regOne!15647 r!27340)) (ite c!406871 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))))) EmptyLang!7567))))

(assert (= (and d!721869 c!406999) b!2542202))

(assert (= (and d!721869 (not c!406999)) b!2542204))

(assert (= (and b!2542204 c!406998) b!2542201))

(assert (= (and b!2542204 (not c!406998)) b!2542199))

(assert (= (and b!2542199 c!407000) b!2542200))

(assert (= (and b!2542199 (not c!407000)) b!2542207))

(assert (= (and b!2542207 c!407002) b!2542206))

(assert (= (and b!2542207 (not c!407002)) b!2542203))

(assert (= (and b!2542203 c!407001) b!2542205))

(assert (= (and b!2542203 (not c!407001)) b!2542208))

(assert (= (or b!2542205 b!2542208) bm!160904))

(assert (= (or b!2542206 bm!160904) bm!160903))

(assert (= (or b!2542200 b!2542205) bm!160902))

(assert (= (or b!2542200 bm!160903) bm!160901))

(declare-fun m!2888701 () Bool)

(assert (=> bm!160901 m!2888701))

(declare-fun m!2888703 () Bool)

(assert (=> bm!160902 m!2888703))

(declare-fun m!2888705 () Bool)

(assert (=> b!2542203 m!2888705))

(declare-fun m!2888707 () Bool)

(assert (=> d!721869 m!2888707))

(declare-fun m!2888709 () Bool)

(assert (=> d!721869 m!2888709))

(assert (=> bm!160762 d!721869))

(assert (=> d!721657 d!721687))

(assert (=> d!721657 d!721675))

(assert (=> d!721657 d!721681))

(declare-fun d!721875 () Bool)

(assert (=> d!721875 (= (matchR!3522 r!27340 lt!902004) (matchR!3522 (derivative!262 r!27340 lt!902004) Nil!29532))))

(assert (=> d!721875 true))

(declare-fun _$108!327 () Unit!43335)

(assert (=> d!721875 (= (choose!15025 r!27340 lt!902004) _$108!327)))

(declare-fun bs!469424 () Bool)

(assert (= bs!469424 d!721875))

(assert (=> bs!469424 m!2888095))

(assert (=> bs!469424 m!2888075))

(assert (=> bs!469424 m!2888075))

(assert (=> bs!469424 m!2888079))

(assert (=> d!721657 d!721875))

(assert (=> d!721657 d!721725))

(declare-fun d!721881 () Bool)

(declare-fun res!1071572 () Bool)

(declare-fun e!1607506 () Bool)

(assert (=> d!721881 (=> res!1071572 e!1607506)))

(assert (=> d!721881 (= res!1071572 ((_ is ElementMatch!7567) lt!902062))))

(assert (=> d!721881 (= (validRegex!3193 lt!902062) e!1607506)))

(declare-fun c!407013 () Bool)

(declare-fun c!407012 () Bool)

(declare-fun call!160915 () Bool)

(declare-fun bm!160910 () Bool)

(assert (=> bm!160910 (= call!160915 (validRegex!3193 (ite c!407013 (reg!7896 lt!902062) (ite c!407012 (regOne!15647 lt!902062) (regTwo!15646 lt!902062)))))))

(declare-fun bm!160911 () Bool)

(declare-fun call!160917 () Bool)

(assert (=> bm!160911 (= call!160917 call!160915)))

(declare-fun b!2542235 () Bool)

(declare-fun e!1607505 () Bool)

(assert (=> b!2542235 (= e!1607506 e!1607505)))

(assert (=> b!2542235 (= c!407013 ((_ is Star!7567) lt!902062))))

(declare-fun b!2542236 () Bool)

(declare-fun e!1607508 () Bool)

(assert (=> b!2542236 (= e!1607505 e!1607508)))

(declare-fun res!1071573 () Bool)

(assert (=> b!2542236 (= res!1071573 (not (nullable!2484 (reg!7896 lt!902062))))))

(assert (=> b!2542236 (=> (not res!1071573) (not e!1607508))))

(declare-fun b!2542237 () Bool)

(declare-fun e!1607503 () Bool)

(assert (=> b!2542237 (= e!1607505 e!1607503)))

(assert (=> b!2542237 (= c!407012 ((_ is Union!7567) lt!902062))))

(declare-fun b!2542238 () Bool)

(declare-fun e!1607507 () Bool)

(declare-fun call!160916 () Bool)

(assert (=> b!2542238 (= e!1607507 call!160916)))

(declare-fun bm!160912 () Bool)

(assert (=> bm!160912 (= call!160916 (validRegex!3193 (ite c!407012 (regTwo!15647 lt!902062) (regOne!15646 lt!902062))))))

(declare-fun b!2542239 () Bool)

(declare-fun e!1607504 () Bool)

(declare-fun e!1607509 () Bool)

(assert (=> b!2542239 (= e!1607504 e!1607509)))

(declare-fun res!1071570 () Bool)

(assert (=> b!2542239 (=> (not res!1071570) (not e!1607509))))

(assert (=> b!2542239 (= res!1071570 call!160916)))

(declare-fun b!2542240 () Bool)

(declare-fun res!1071571 () Bool)

(assert (=> b!2542240 (=> (not res!1071571) (not e!1607507))))

(assert (=> b!2542240 (= res!1071571 call!160917)))

(assert (=> b!2542240 (= e!1607503 e!1607507)))

(declare-fun b!2542241 () Bool)

(assert (=> b!2542241 (= e!1607509 call!160917)))

(declare-fun b!2542242 () Bool)

(assert (=> b!2542242 (= e!1607508 call!160915)))

(declare-fun b!2542243 () Bool)

(declare-fun res!1071569 () Bool)

(assert (=> b!2542243 (=> res!1071569 e!1607504)))

(assert (=> b!2542243 (= res!1071569 (not ((_ is Concat!12263) lt!902062)))))

(assert (=> b!2542243 (= e!1607503 e!1607504)))

(assert (= (and d!721881 (not res!1071572)) b!2542235))

(assert (= (and b!2542235 c!407013) b!2542236))

(assert (= (and b!2542235 (not c!407013)) b!2542237))

(assert (= (and b!2542236 res!1071573) b!2542242))

(assert (= (and b!2542237 c!407012) b!2542240))

(assert (= (and b!2542237 (not c!407012)) b!2542243))

(assert (= (and b!2542240 res!1071571) b!2542238))

(assert (= (and b!2542243 (not res!1071569)) b!2542239))

(assert (= (and b!2542239 res!1071570) b!2542241))

(assert (= (or b!2542240 b!2542241) bm!160911))

(assert (= (or b!2542238 b!2542239) bm!160912))

(assert (= (or b!2542242 bm!160911) bm!160910))

(declare-fun m!2888729 () Bool)

(assert (=> bm!160910 m!2888729))

(declare-fun m!2888731 () Bool)

(assert (=> b!2542236 m!2888731))

(declare-fun m!2888733 () Bool)

(assert (=> bm!160912 m!2888733))

(assert (=> d!721731 d!721881))

(assert (=> d!721731 d!721725))

(assert (=> b!2541377 d!721739))

(assert (=> b!2541377 d!721743))

(assert (=> b!2541407 d!721825))

(declare-fun d!721887 () Bool)

(assert (=> d!721887 (= (nullable!2484 (regOne!15647 r!27340)) (nullableFct!715 (regOne!15647 r!27340)))))

(declare-fun bs!469427 () Bool)

(assert (= bs!469427 d!721887))

(declare-fun m!2888735 () Bool)

(assert (=> bs!469427 m!2888735))

(assert (=> b!2541420 d!721887))

(assert (=> b!2541553 d!721825))

(assert (=> bm!160726 d!721785))

(declare-fun d!721889 () Bool)

(assert (=> d!721889 (= (nullable!2484 lt!902002) (nullableFct!715 lt!902002))))

(declare-fun bs!469428 () Bool)

(assert (= bs!469428 d!721889))

(declare-fun m!2888737 () Bool)

(assert (=> bs!469428 m!2888737))

(assert (=> b!2541400 d!721889))

(assert (=> d!721669 d!721659))

(declare-fun d!721891 () Bool)

(assert (=> d!721891 (= (matchR!3522 (regTwo!15647 r!27340) lt!902004) (matchR!3522 (derivative!262 (regTwo!15647 r!27340) lt!902004) Nil!29532))))

(assert (=> d!721891 true))

(declare-fun _$108!329 () Unit!43335)

(assert (=> d!721891 (= (choose!15025 (regTwo!15647 r!27340) lt!902004) _$108!329)))

(declare-fun bs!469429 () Bool)

(assert (= bs!469429 d!721891))

(assert (=> bs!469429 m!2888087))

(assert (=> bs!469429 m!2888085))

(assert (=> bs!469429 m!2888085))

(assert (=> bs!469429 m!2888213))

(assert (=> d!721669 d!721891))

(assert (=> d!721669 d!721665))

(assert (=> d!721669 d!721787))

(declare-fun b!2542244 () Bool)

(declare-fun e!1607512 () Bool)

(declare-fun e!1607515 () Bool)

(assert (=> b!2542244 (= e!1607512 e!1607515)))

(declare-fun res!1071579 () Bool)

(assert (=> b!2542244 (=> res!1071579 e!1607515)))

(declare-fun call!160918 () Bool)

(assert (=> b!2542244 (= res!1071579 call!160918)))

(declare-fun b!2542245 () Bool)

(declare-fun e!1607510 () Bool)

(assert (=> b!2542245 (= e!1607510 (nullable!2484 (derivative!262 (regTwo!15647 r!27340) lt!902004)))))

(declare-fun b!2542246 () Bool)

(declare-fun e!1607513 () Bool)

(assert (=> b!2542246 (= e!1607513 e!1607512)))

(declare-fun res!1071574 () Bool)

(assert (=> b!2542246 (=> (not res!1071574) (not e!1607512))))

(declare-fun lt!902083 () Bool)

(assert (=> b!2542246 (= res!1071574 (not lt!902083))))

(declare-fun b!2542247 () Bool)

(assert (=> b!2542247 (= e!1607510 (matchR!3522 (derivativeStep!2136 (derivative!262 (regTwo!15647 r!27340) lt!902004) (head!5789 Nil!29532)) (tail!4064 Nil!29532)))))

(declare-fun b!2542248 () Bool)

(declare-fun res!1071581 () Bool)

(assert (=> b!2542248 (=> res!1071581 e!1607515)))

(assert (=> b!2542248 (= res!1071581 (not (isEmpty!16986 (tail!4064 Nil!29532))))))

(declare-fun bm!160913 () Bool)

(assert (=> bm!160913 (= call!160918 (isEmpty!16986 Nil!29532))))

(declare-fun b!2542249 () Bool)

(declare-fun e!1607514 () Bool)

(assert (=> b!2542249 (= e!1607514 (= lt!902083 call!160918))))

(declare-fun b!2542250 () Bool)

(declare-fun res!1071577 () Bool)

(assert (=> b!2542250 (=> res!1071577 e!1607513)))

(assert (=> b!2542250 (= res!1071577 (not ((_ is ElementMatch!7567) (derivative!262 (regTwo!15647 r!27340) lt!902004))))))

(declare-fun e!1607511 () Bool)

(assert (=> b!2542250 (= e!1607511 e!1607513)))

(declare-fun b!2542251 () Bool)

(declare-fun res!1071580 () Bool)

(declare-fun e!1607516 () Bool)

(assert (=> b!2542251 (=> (not res!1071580) (not e!1607516))))

(assert (=> b!2542251 (= res!1071580 (isEmpty!16986 (tail!4064 Nil!29532)))))

(declare-fun d!721893 () Bool)

(assert (=> d!721893 e!1607514))

(declare-fun c!407014 () Bool)

(assert (=> d!721893 (= c!407014 ((_ is EmptyExpr!7567) (derivative!262 (regTwo!15647 r!27340) lt!902004)))))

(assert (=> d!721893 (= lt!902083 e!1607510)))

(declare-fun c!407016 () Bool)

(assert (=> d!721893 (= c!407016 (isEmpty!16986 Nil!29532))))

(assert (=> d!721893 (validRegex!3193 (derivative!262 (regTwo!15647 r!27340) lt!902004))))

(assert (=> d!721893 (= (matchR!3522 (derivative!262 (regTwo!15647 r!27340) lt!902004) Nil!29532) lt!902083)))

(declare-fun b!2542252 () Bool)

(assert (=> b!2542252 (= e!1607516 (= (head!5789 Nil!29532) (c!406763 (derivative!262 (regTwo!15647 r!27340) lt!902004))))))

(declare-fun b!2542253 () Bool)

(declare-fun res!1071578 () Bool)

(assert (=> b!2542253 (=> (not res!1071578) (not e!1607516))))

(assert (=> b!2542253 (= res!1071578 (not call!160918))))

(declare-fun b!2542254 () Bool)

(assert (=> b!2542254 (= e!1607515 (not (= (head!5789 Nil!29532) (c!406763 (derivative!262 (regTwo!15647 r!27340) lt!902004)))))))

(declare-fun b!2542255 () Bool)

(assert (=> b!2542255 (= e!1607514 e!1607511)))

(declare-fun c!407015 () Bool)

(assert (=> b!2542255 (= c!407015 ((_ is EmptyLang!7567) (derivative!262 (regTwo!15647 r!27340) lt!902004)))))

(declare-fun b!2542256 () Bool)

(assert (=> b!2542256 (= e!1607511 (not lt!902083))))

(declare-fun b!2542257 () Bool)

(declare-fun res!1071576 () Bool)

(assert (=> b!2542257 (=> res!1071576 e!1607513)))

(assert (=> b!2542257 (= res!1071576 e!1607516)))

(declare-fun res!1071575 () Bool)

(assert (=> b!2542257 (=> (not res!1071575) (not e!1607516))))

(assert (=> b!2542257 (= res!1071575 lt!902083)))

(assert (= (and d!721893 c!407016) b!2542245))

(assert (= (and d!721893 (not c!407016)) b!2542247))

(assert (= (and d!721893 c!407014) b!2542249))

(assert (= (and d!721893 (not c!407014)) b!2542255))

(assert (= (and b!2542255 c!407015) b!2542256))

(assert (= (and b!2542255 (not c!407015)) b!2542250))

(assert (= (and b!2542250 (not res!1071577)) b!2542257))

(assert (= (and b!2542257 res!1071575) b!2542253))

(assert (= (and b!2542253 res!1071578) b!2542251))

(assert (= (and b!2542251 res!1071580) b!2542252))

(assert (= (and b!2542257 (not res!1071576)) b!2542246))

(assert (= (and b!2542246 res!1071574) b!2542244))

(assert (= (and b!2542244 (not res!1071579)) b!2542248))

(assert (= (and b!2542248 (not res!1071581)) b!2542254))

(assert (= (or b!2542249 b!2542244 b!2542253) bm!160913))

(assert (=> b!2542251 m!2888115))

(assert (=> b!2542251 m!2888115))

(assert (=> b!2542251 m!2888117))

(assert (=> b!2542254 m!2888119))

(assert (=> b!2542252 m!2888119))

(assert (=> b!2542248 m!2888115))

(assert (=> b!2542248 m!2888115))

(assert (=> b!2542248 m!2888117))

(assert (=> b!2542245 m!2888085))

(declare-fun m!2888739 () Bool)

(assert (=> b!2542245 m!2888739))

(assert (=> bm!160913 m!2888123))

(assert (=> b!2542247 m!2888119))

(assert (=> b!2542247 m!2888085))

(assert (=> b!2542247 m!2888119))

(declare-fun m!2888741 () Bool)

(assert (=> b!2542247 m!2888741))

(assert (=> b!2542247 m!2888115))

(assert (=> b!2542247 m!2888741))

(assert (=> b!2542247 m!2888115))

(declare-fun m!2888743 () Bool)

(assert (=> b!2542247 m!2888743))

(assert (=> d!721893 m!2888123))

(assert (=> d!721893 m!2888085))

(declare-fun m!2888745 () Bool)

(assert (=> d!721893 m!2888745))

(assert (=> d!721669 d!721893))

(declare-fun d!721895 () Bool)

(assert (=> d!721895 (= (nullable!2484 (regOne!15646 (regTwo!15647 r!27340))) (nullableFct!715 (regOne!15646 (regTwo!15647 r!27340))))))

(declare-fun bs!469430 () Bool)

(assert (= bs!469430 d!721895))

(declare-fun m!2888747 () Bool)

(assert (=> bs!469430 m!2888747))

(assert (=> b!2541731 d!721895))

(declare-fun d!721899 () Bool)

(declare-fun lt!902085 () Regex!7567)

(assert (=> d!721899 (validRegex!3193 lt!902085)))

(declare-fun e!1607527 () Regex!7567)

(assert (=> d!721899 (= lt!902085 e!1607527)))

(declare-fun c!407020 () Bool)

(assert (=> d!721899 (= c!407020 ((_ is Cons!29532) (t!211331 tl!4068)))))

(assert (=> d!721899 (validRegex!3193 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) (h!34952 tl!4068)))))

(assert (=> d!721899 (= (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) (h!34952 tl!4068)) (t!211331 tl!4068)) lt!902085)))

(declare-fun b!2542275 () Bool)

(assert (=> b!2542275 (= e!1607527 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) (h!34952 tl!4068)) (h!34952 (t!211331 tl!4068))) (t!211331 (t!211331 tl!4068))))))

(declare-fun b!2542276 () Bool)

(assert (=> b!2542276 (= e!1607527 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) (h!34952 tl!4068)))))

(assert (= (and d!721899 c!407020) b!2542275))

(assert (= (and d!721899 (not c!407020)) b!2542276))

(declare-fun m!2888749 () Bool)

(assert (=> d!721899 m!2888749))

(assert (=> d!721899 m!2888373))

(declare-fun m!2888751 () Bool)

(assert (=> d!721899 m!2888751))

(assert (=> b!2542275 m!2888373))

(declare-fun m!2888753 () Bool)

(assert (=> b!2542275 m!2888753))

(assert (=> b!2542275 m!2888753))

(declare-fun m!2888755 () Bool)

(assert (=> b!2542275 m!2888755))

(assert (=> b!2541713 d!721899))

(declare-fun b!2542277 () Bool)

(declare-fun c!407023 () Bool)

(assert (=> b!2542277 (= c!407023 ((_ is Union!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(declare-fun e!1607528 () Regex!7567)

(declare-fun e!1607531 () Regex!7567)

(assert (=> b!2542277 (= e!1607528 e!1607531)))

(declare-fun bm!160915 () Bool)

(declare-fun call!160922 () Regex!7567)

(declare-fun c!407025 () Bool)

(assert (=> bm!160915 (= call!160922 (derivativeStep!2136 (ite c!407023 (regOne!15647 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) (ite c!407025 (reg!7896 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) (regOne!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))) (h!34952 tl!4068)))))

(declare-fun bm!160916 () Bool)

(declare-fun call!160921 () Regex!7567)

(assert (=> bm!160916 (= call!160921 (derivativeStep!2136 (ite c!407023 (regTwo!15647 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) (regTwo!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))) (h!34952 tl!4068)))))

(declare-fun b!2542278 () Bool)

(assert (=> b!2542278 (= e!1607531 (Union!7567 call!160922 call!160921))))

(declare-fun b!2542279 () Bool)

(assert (=> b!2542279 (= e!1607528 (ite (= (h!34952 tl!4068) (c!406763 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542281 () Bool)

(declare-fun c!407024 () Bool)

(assert (=> b!2542281 (= c!407024 (nullable!2484 (regOne!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))))

(declare-fun e!1607529 () Regex!7567)

(declare-fun e!1607530 () Regex!7567)

(assert (=> b!2542281 (= e!1607529 e!1607530)))

(declare-fun bm!160917 () Bool)

(declare-fun call!160920 () Regex!7567)

(assert (=> bm!160917 (= call!160920 call!160922)))

(declare-fun b!2542282 () Bool)

(declare-fun e!1607532 () Regex!7567)

(assert (=> b!2542282 (= e!1607532 e!1607528)))

(declare-fun c!407021 () Bool)

(assert (=> b!2542282 (= c!407021 ((_ is ElementMatch!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(declare-fun b!2542283 () Bool)

(declare-fun call!160923 () Regex!7567)

(assert (=> b!2542283 (= e!1607530 (Union!7567 (Concat!12263 call!160923 (regTwo!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))) call!160921))))

(declare-fun d!721901 () Bool)

(declare-fun lt!902086 () Regex!7567)

(assert (=> d!721901 (validRegex!3193 lt!902086)))

(assert (=> d!721901 (= lt!902086 e!1607532)))

(declare-fun c!407022 () Bool)

(assert (=> d!721901 (= c!407022 (or ((_ is EmptyExpr!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) ((_ is EmptyLang!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))))

(assert (=> d!721901 (validRegex!3193 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))

(assert (=> d!721901 (= (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) (h!34952 tl!4068)) lt!902086)))

(declare-fun b!2542280 () Bool)

(assert (=> b!2542280 (= e!1607532 EmptyLang!7567)))

(declare-fun b!2542284 () Bool)

(assert (=> b!2542284 (= e!1607529 (Concat!12263 call!160920 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(declare-fun b!2542285 () Bool)

(assert (=> b!2542285 (= e!1607531 e!1607529)))

(assert (=> b!2542285 (= c!407025 ((_ is Star!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(declare-fun bm!160918 () Bool)

(assert (=> bm!160918 (= call!160923 call!160920)))

(declare-fun b!2542286 () Bool)

(assert (=> b!2542286 (= e!1607530 (Union!7567 (Concat!12263 call!160923 (regTwo!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))) EmptyLang!7567))))

(assert (= (and d!721901 c!407022) b!2542280))

(assert (= (and d!721901 (not c!407022)) b!2542282))

(assert (= (and b!2542282 c!407021) b!2542279))

(assert (= (and b!2542282 (not c!407021)) b!2542277))

(assert (= (and b!2542277 c!407023) b!2542278))

(assert (= (and b!2542277 (not c!407023)) b!2542285))

(assert (= (and b!2542285 c!407025) b!2542284))

(assert (= (and b!2542285 (not c!407025)) b!2542281))

(assert (= (and b!2542281 c!407024) b!2542283))

(assert (= (and b!2542281 (not c!407024)) b!2542286))

(assert (= (or b!2542283 b!2542286) bm!160918))

(assert (= (or b!2542284 bm!160918) bm!160917))

(assert (= (or b!2542278 b!2542283) bm!160916))

(assert (= (or b!2542278 bm!160917) bm!160915))

(declare-fun m!2888763 () Bool)

(assert (=> bm!160915 m!2888763))

(declare-fun m!2888765 () Bool)

(assert (=> bm!160916 m!2888765))

(declare-fun m!2888769 () Bool)

(assert (=> b!2542281 m!2888769))

(declare-fun m!2888771 () Bool)

(assert (=> d!721901 m!2888771))

(assert (=> d!721901 m!2888099))

(assert (=> d!721901 m!2888371))

(assert (=> b!2541713 d!721901))

(assert (=> bm!160733 d!721733))

(assert (=> b!2541493 d!721787))

(declare-fun d!721905 () Bool)

(assert (not d!721905))

(assert (=> b!2541402 d!721905))

(declare-fun d!721907 () Bool)

(assert (not d!721907))

(assert (=> b!2541402 d!721907))

(assert (=> b!2541402 d!721825))

(assert (=> b!2541402 d!721743))

(declare-fun b!2542297 () Bool)

(declare-fun c!407033 () Bool)

(assert (=> b!2542297 (= c!407033 ((_ is Union!7567) (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))))))

(declare-fun e!1607538 () Regex!7567)

(declare-fun e!1607541 () Regex!7567)

(assert (=> b!2542297 (= e!1607538 e!1607541)))

(declare-fun c!407035 () Bool)

(declare-fun bm!160923 () Bool)

(declare-fun call!160930 () Regex!7567)

(assert (=> bm!160923 (= call!160930 (derivativeStep!2136 (ite c!407033 (regOne!15647 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))) (ite c!407035 (reg!7896 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))) (regOne!15646 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))))) c!14016))))

(declare-fun bm!160924 () Bool)

(declare-fun call!160929 () Regex!7567)

(assert (=> bm!160924 (= call!160929 (derivativeStep!2136 (ite c!407033 (regTwo!15647 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))) (regTwo!15646 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))) c!14016))))

(declare-fun b!2542298 () Bool)

(assert (=> b!2542298 (= e!1607541 (Union!7567 call!160930 call!160929))))

(declare-fun b!2542299 () Bool)

(assert (=> b!2542299 (= e!1607538 (ite (= c!14016 (c!406763 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542301 () Bool)

(declare-fun c!407034 () Bool)

(assert (=> b!2542301 (= c!407034 (nullable!2484 (regOne!15646 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))))))

(declare-fun e!1607539 () Regex!7567)

(declare-fun e!1607540 () Regex!7567)

(assert (=> b!2542301 (= e!1607539 e!1607540)))

(declare-fun bm!160925 () Bool)

(declare-fun call!160928 () Regex!7567)

(assert (=> bm!160925 (= call!160928 call!160930)))

(declare-fun b!2542302 () Bool)

(declare-fun e!1607542 () Regex!7567)

(assert (=> b!2542302 (= e!1607542 e!1607538)))

(declare-fun c!407031 () Bool)

(assert (=> b!2542302 (= c!407031 ((_ is ElementMatch!7567) (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))))))

(declare-fun b!2542303 () Bool)

(declare-fun call!160931 () Regex!7567)

(assert (=> b!2542303 (= e!1607540 (Union!7567 (Concat!12263 call!160931 (regTwo!15646 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))) call!160929))))

(declare-fun d!721909 () Bool)

(declare-fun lt!902088 () Regex!7567)

(assert (=> d!721909 (validRegex!3193 lt!902088)))

(assert (=> d!721909 (= lt!902088 e!1607542)))

(declare-fun c!407032 () Bool)

(assert (=> d!721909 (= c!407032 (or ((_ is EmptyExpr!7567) (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))) ((_ is EmptyLang!7567) (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))))))

(assert (=> d!721909 (validRegex!3193 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))))

(assert (=> d!721909 (= (derivativeStep!2136 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))) c!14016) lt!902088)))

(declare-fun b!2542300 () Bool)

(assert (=> b!2542300 (= e!1607542 EmptyLang!7567)))

(declare-fun b!2542304 () Bool)

(assert (=> b!2542304 (= e!1607539 (Concat!12263 call!160928 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))))))

(declare-fun b!2542305 () Bool)

(assert (=> b!2542305 (= e!1607541 e!1607539)))

(assert (=> b!2542305 (= c!407035 ((_ is Star!7567) (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340)))))))

(declare-fun bm!160926 () Bool)

(assert (=> bm!160926 (= call!160931 call!160928)))

(declare-fun b!2542306 () Bool)

(assert (=> b!2542306 (= e!1607540 (Union!7567 (Concat!12263 call!160931 (regTwo!15646 (ite c!406887 (regOne!15647 r!27340) (ite c!406889 (reg!7896 r!27340) (regOne!15646 r!27340))))) EmptyLang!7567))))

(assert (= (and d!721909 c!407032) b!2542300))

(assert (= (and d!721909 (not c!407032)) b!2542302))

(assert (= (and b!2542302 c!407031) b!2542299))

(assert (= (and b!2542302 (not c!407031)) b!2542297))

(assert (= (and b!2542297 c!407033) b!2542298))

(assert (= (and b!2542297 (not c!407033)) b!2542305))

(assert (= (and b!2542305 c!407035) b!2542304))

(assert (= (and b!2542305 (not c!407035)) b!2542301))

(assert (= (and b!2542301 c!407034) b!2542303))

(assert (= (and b!2542301 (not c!407034)) b!2542306))

(assert (= (or b!2542303 b!2542306) bm!160926))

(assert (= (or b!2542304 bm!160926) bm!160925))

(assert (= (or b!2542298 b!2542303) bm!160924))

(assert (= (or b!2542298 bm!160925) bm!160923))

(declare-fun m!2888781 () Bool)

(assert (=> bm!160923 m!2888781))

(declare-fun m!2888783 () Bool)

(assert (=> bm!160924 m!2888783))

(declare-fun m!2888785 () Bool)

(assert (=> b!2542301 m!2888785))

(declare-fun m!2888787 () Bool)

(assert (=> d!721909 m!2888787))

(declare-fun m!2888789 () Bool)

(assert (=> d!721909 m!2888789))

(assert (=> bm!160779 d!721909))

(assert (=> b!2541426 d!721753))

(assert (=> b!2541426 d!721759))

(assert (=> b!2541513 d!721753))

(assert (=> b!2541513 d!721759))

(declare-fun d!721915 () Bool)

(declare-fun res!1071604 () Bool)

(declare-fun e!1607553 () Bool)

(assert (=> d!721915 (=> res!1071604 e!1607553)))

(assert (=> d!721915 (= res!1071604 ((_ is ElementMatch!7567) (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))))))

(assert (=> d!721915 (= (validRegex!3193 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))) e!1607553)))

(declare-fun c!407040 () Bool)

(declare-fun c!407039 () Bool)

(declare-fun call!160933 () Bool)

(declare-fun bm!160928 () Bool)

(assert (=> bm!160928 (= call!160933 (validRegex!3193 (ite c!407040 (reg!7896 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))) (ite c!407039 (regOne!15647 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))) (regTwo!15646 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340)))))))))

(declare-fun bm!160929 () Bool)

(declare-fun call!160935 () Bool)

(assert (=> bm!160929 (= call!160935 call!160933)))

(declare-fun b!2542321 () Bool)

(declare-fun e!1607552 () Bool)

(assert (=> b!2542321 (= e!1607553 e!1607552)))

(assert (=> b!2542321 (= c!407040 ((_ is Star!7567) (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))))))

(declare-fun b!2542322 () Bool)

(declare-fun e!1607555 () Bool)

(assert (=> b!2542322 (= e!1607552 e!1607555)))

(declare-fun res!1071605 () Bool)

(assert (=> b!2542322 (= res!1071605 (not (nullable!2484 (reg!7896 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))))))))

(assert (=> b!2542322 (=> (not res!1071605) (not e!1607555))))

(declare-fun b!2542323 () Bool)

(declare-fun e!1607550 () Bool)

(assert (=> b!2542323 (= e!1607552 e!1607550)))

(assert (=> b!2542323 (= c!407039 ((_ is Union!7567) (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))))))

(declare-fun b!2542324 () Bool)

(declare-fun e!1607554 () Bool)

(declare-fun call!160934 () Bool)

(assert (=> b!2542324 (= e!1607554 call!160934)))

(declare-fun bm!160930 () Bool)

(assert (=> bm!160930 (= call!160934 (validRegex!3193 (ite c!407039 (regTwo!15647 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))) (regOne!15646 (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340))))))))

(declare-fun b!2542325 () Bool)

(declare-fun e!1607551 () Bool)

(declare-fun e!1607556 () Bool)

(assert (=> b!2542325 (= e!1607551 e!1607556)))

(declare-fun res!1071602 () Bool)

(assert (=> b!2542325 (=> (not res!1071602) (not e!1607556))))

(assert (=> b!2542325 (= res!1071602 call!160934)))

(declare-fun b!2542326 () Bool)

(declare-fun res!1071603 () Bool)

(assert (=> b!2542326 (=> (not res!1071603) (not e!1607554))))

(assert (=> b!2542326 (= res!1071603 call!160935)))

(assert (=> b!2542326 (= e!1607550 e!1607554)))

(declare-fun b!2542327 () Bool)

(assert (=> b!2542327 (= e!1607556 call!160935)))

(declare-fun b!2542328 () Bool)

(assert (=> b!2542328 (= e!1607555 call!160933)))

(declare-fun b!2542329 () Bool)

(declare-fun res!1071601 () Bool)

(assert (=> b!2542329 (=> res!1071601 e!1607551)))

(assert (=> b!2542329 (= res!1071601 (not ((_ is Concat!12263) (ite c!406882 (regTwo!15647 r!27340) (regOne!15646 r!27340)))))))

(assert (=> b!2542329 (= e!1607550 e!1607551)))

(assert (= (and d!721915 (not res!1071604)) b!2542321))

(assert (= (and b!2542321 c!407040) b!2542322))

(assert (= (and b!2542321 (not c!407040)) b!2542323))

(assert (= (and b!2542322 res!1071605) b!2542328))

(assert (= (and b!2542323 c!407039) b!2542326))

(assert (= (and b!2542323 (not c!407039)) b!2542329))

(assert (= (and b!2542326 res!1071603) b!2542324))

(assert (= (and b!2542329 (not res!1071601)) b!2542325))

(assert (= (and b!2542325 res!1071602) b!2542327))

(assert (= (or b!2542326 b!2542327) bm!160929))

(assert (= (or b!2542324 b!2542325) bm!160930))

(assert (= (or b!2542328 bm!160929) bm!160928))

(declare-fun m!2888791 () Bool)

(assert (=> bm!160928 m!2888791))

(declare-fun m!2888793 () Bool)

(assert (=> b!2542322 m!2888793))

(declare-fun m!2888797 () Bool)

(assert (=> bm!160930 m!2888797))

(assert (=> bm!160778 d!721915))

(assert (=> d!721649 d!721685))

(assert (=> d!721649 d!721773))

(declare-fun d!721917 () Bool)

(assert (=> d!721917 (= (matchR!3522 (regOne!15647 r!27340) lt!902004) (matchR!3522 (derivative!262 (regOne!15647 r!27340) lt!902004) Nil!29532))))

(assert (=> d!721917 true))

(declare-fun _$108!330 () Unit!43335)

(assert (=> d!721917 (= (choose!15025 (regOne!15647 r!27340) lt!902004) _$108!330)))

(declare-fun bs!469432 () Bool)

(assert (= bs!469432 d!721917))

(assert (=> bs!469432 m!2888091))

(assert (=> bs!469432 m!2888083))

(assert (=> bs!469432 m!2888083))

(assert (=> bs!469432 m!2888147))

(assert (=> d!721649 d!721917))

(assert (=> d!721649 d!721663))

(declare-fun b!2542330 () Bool)

(declare-fun e!1607559 () Bool)

(declare-fun e!1607562 () Bool)

(assert (=> b!2542330 (= e!1607559 e!1607562)))

(declare-fun res!1071611 () Bool)

(assert (=> b!2542330 (=> res!1071611 e!1607562)))

(declare-fun call!160936 () Bool)

(assert (=> b!2542330 (= res!1071611 call!160936)))

(declare-fun b!2542331 () Bool)

(declare-fun e!1607557 () Bool)

(assert (=> b!2542331 (= e!1607557 (nullable!2484 (derivative!262 (regOne!15647 r!27340) lt!902004)))))

(declare-fun b!2542332 () Bool)

(declare-fun e!1607560 () Bool)

(assert (=> b!2542332 (= e!1607560 e!1607559)))

(declare-fun res!1071606 () Bool)

(assert (=> b!2542332 (=> (not res!1071606) (not e!1607559))))

(declare-fun lt!902090 () Bool)

(assert (=> b!2542332 (= res!1071606 (not lt!902090))))

(declare-fun b!2542333 () Bool)

(assert (=> b!2542333 (= e!1607557 (matchR!3522 (derivativeStep!2136 (derivative!262 (regOne!15647 r!27340) lt!902004) (head!5789 Nil!29532)) (tail!4064 Nil!29532)))))

(declare-fun b!2542334 () Bool)

(declare-fun res!1071613 () Bool)

(assert (=> b!2542334 (=> res!1071613 e!1607562)))

(assert (=> b!2542334 (= res!1071613 (not (isEmpty!16986 (tail!4064 Nil!29532))))))

(declare-fun bm!160931 () Bool)

(assert (=> bm!160931 (= call!160936 (isEmpty!16986 Nil!29532))))

(declare-fun b!2542335 () Bool)

(declare-fun e!1607561 () Bool)

(assert (=> b!2542335 (= e!1607561 (= lt!902090 call!160936))))

(declare-fun b!2542336 () Bool)

(declare-fun res!1071609 () Bool)

(assert (=> b!2542336 (=> res!1071609 e!1607560)))

(assert (=> b!2542336 (= res!1071609 (not ((_ is ElementMatch!7567) (derivative!262 (regOne!15647 r!27340) lt!902004))))))

(declare-fun e!1607558 () Bool)

(assert (=> b!2542336 (= e!1607558 e!1607560)))

(declare-fun b!2542337 () Bool)

(declare-fun res!1071612 () Bool)

(declare-fun e!1607563 () Bool)

(assert (=> b!2542337 (=> (not res!1071612) (not e!1607563))))

(assert (=> b!2542337 (= res!1071612 (isEmpty!16986 (tail!4064 Nil!29532)))))

(declare-fun d!721919 () Bool)

(assert (=> d!721919 e!1607561))

(declare-fun c!407041 () Bool)

(assert (=> d!721919 (= c!407041 ((_ is EmptyExpr!7567) (derivative!262 (regOne!15647 r!27340) lt!902004)))))

(assert (=> d!721919 (= lt!902090 e!1607557)))

(declare-fun c!407043 () Bool)

(assert (=> d!721919 (= c!407043 (isEmpty!16986 Nil!29532))))

(assert (=> d!721919 (validRegex!3193 (derivative!262 (regOne!15647 r!27340) lt!902004))))

(assert (=> d!721919 (= (matchR!3522 (derivative!262 (regOne!15647 r!27340) lt!902004) Nil!29532) lt!902090)))

(declare-fun b!2542338 () Bool)

(assert (=> b!2542338 (= e!1607563 (= (head!5789 Nil!29532) (c!406763 (derivative!262 (regOne!15647 r!27340) lt!902004))))))

(declare-fun b!2542339 () Bool)

(declare-fun res!1071610 () Bool)

(assert (=> b!2542339 (=> (not res!1071610) (not e!1607563))))

(assert (=> b!2542339 (= res!1071610 (not call!160936))))

(declare-fun b!2542340 () Bool)

(assert (=> b!2542340 (= e!1607562 (not (= (head!5789 Nil!29532) (c!406763 (derivative!262 (regOne!15647 r!27340) lt!902004)))))))

(declare-fun b!2542341 () Bool)

(assert (=> b!2542341 (= e!1607561 e!1607558)))

(declare-fun c!407042 () Bool)

(assert (=> b!2542341 (= c!407042 ((_ is EmptyLang!7567) (derivative!262 (regOne!15647 r!27340) lt!902004)))))

(declare-fun b!2542342 () Bool)

(assert (=> b!2542342 (= e!1607558 (not lt!902090))))

(declare-fun b!2542343 () Bool)

(declare-fun res!1071608 () Bool)

(assert (=> b!2542343 (=> res!1071608 e!1607560)))

(assert (=> b!2542343 (= res!1071608 e!1607563)))

(declare-fun res!1071607 () Bool)

(assert (=> b!2542343 (=> (not res!1071607) (not e!1607563))))

(assert (=> b!2542343 (= res!1071607 lt!902090)))

(assert (= (and d!721919 c!407043) b!2542331))

(assert (= (and d!721919 (not c!407043)) b!2542333))

(assert (= (and d!721919 c!407041) b!2542335))

(assert (= (and d!721919 (not c!407041)) b!2542341))

(assert (= (and b!2542341 c!407042) b!2542342))

(assert (= (and b!2542341 (not c!407042)) b!2542336))

(assert (= (and b!2542336 (not res!1071609)) b!2542343))

(assert (= (and b!2542343 res!1071607) b!2542339))

(assert (= (and b!2542339 res!1071610) b!2542337))

(assert (= (and b!2542337 res!1071612) b!2542338))

(assert (= (and b!2542343 (not res!1071608)) b!2542332))

(assert (= (and b!2542332 res!1071606) b!2542330))

(assert (= (and b!2542330 (not res!1071611)) b!2542334))

(assert (= (and b!2542334 (not res!1071613)) b!2542340))

(assert (= (or b!2542335 b!2542330 b!2542339) bm!160931))

(assert (=> b!2542337 m!2888115))

(assert (=> b!2542337 m!2888115))

(assert (=> b!2542337 m!2888117))

(assert (=> b!2542340 m!2888119))

(assert (=> b!2542338 m!2888119))

(assert (=> b!2542334 m!2888115))

(assert (=> b!2542334 m!2888115))

(assert (=> b!2542334 m!2888117))

(assert (=> b!2542331 m!2888083))

(declare-fun m!2888809 () Bool)

(assert (=> b!2542331 m!2888809))

(assert (=> bm!160931 m!2888123))

(assert (=> b!2542333 m!2888119))

(assert (=> b!2542333 m!2888083))

(assert (=> b!2542333 m!2888119))

(declare-fun m!2888813 () Bool)

(assert (=> b!2542333 m!2888813))

(assert (=> b!2542333 m!2888115))

(assert (=> b!2542333 m!2888813))

(assert (=> b!2542333 m!2888115))

(declare-fun m!2888817 () Bool)

(assert (=> b!2542333 m!2888817))

(assert (=> d!721919 m!2888123))

(assert (=> d!721919 m!2888083))

(declare-fun m!2888819 () Bool)

(assert (=> d!721919 m!2888819))

(assert (=> d!721649 d!721919))

(declare-fun b!2542362 () Bool)

(declare-fun c!407050 () Bool)

(assert (=> b!2542362 (= c!407050 ((_ is Union!7567) (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))))))

(declare-fun e!1607578 () Regex!7567)

(declare-fun e!1607581 () Regex!7567)

(assert (=> b!2542362 (= e!1607578 e!1607581)))

(declare-fun call!160945 () Regex!7567)

(declare-fun bm!160938 () Bool)

(declare-fun c!407052 () Bool)

(assert (=> bm!160938 (= call!160945 (derivativeStep!2136 (ite c!407050 (regOne!15647 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))) (ite c!407052 (reg!7896 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))) (regOne!15646 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))))) c!14016))))

(declare-fun call!160944 () Regex!7567)

(declare-fun bm!160939 () Bool)

(assert (=> bm!160939 (= call!160944 (derivativeStep!2136 (ite c!407050 (regTwo!15647 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))) (regTwo!15646 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))) c!14016))))

(declare-fun b!2542363 () Bool)

(assert (=> b!2542363 (= e!1607581 (Union!7567 call!160945 call!160944))))

(declare-fun b!2542364 () Bool)

(assert (=> b!2542364 (= e!1607578 (ite (= c!14016 (c!406763 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542366 () Bool)

(declare-fun c!407051 () Bool)

(assert (=> b!2542366 (= c!407051 (nullable!2484 (regOne!15646 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))))))

(declare-fun e!1607579 () Regex!7567)

(declare-fun e!1607580 () Regex!7567)

(assert (=> b!2542366 (= e!1607579 e!1607580)))

(declare-fun bm!160940 () Bool)

(declare-fun call!160943 () Regex!7567)

(assert (=> bm!160940 (= call!160943 call!160945)))

(declare-fun b!2542367 () Bool)

(declare-fun e!1607582 () Regex!7567)

(assert (=> b!2542367 (= e!1607582 e!1607578)))

(declare-fun c!407048 () Bool)

(assert (=> b!2542367 (= c!407048 ((_ is ElementMatch!7567) (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))))))

(declare-fun b!2542368 () Bool)

(declare-fun call!160946 () Regex!7567)

(assert (=> b!2542368 (= e!1607580 (Union!7567 (Concat!12263 call!160946 (regTwo!15646 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))) call!160944))))

(declare-fun d!721929 () Bool)

(declare-fun lt!902091 () Regex!7567)

(assert (=> d!721929 (validRegex!3193 lt!902091)))

(assert (=> d!721929 (= lt!902091 e!1607582)))

(declare-fun c!407049 () Bool)

(assert (=> d!721929 (= c!407049 (or ((_ is EmptyExpr!7567) (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))) ((_ is EmptyLang!7567) (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))))))

(assert (=> d!721929 (validRegex!3193 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))))

(assert (=> d!721929 (= (derivativeStep!2136 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))) c!14016) lt!902091)))

(declare-fun b!2542365 () Bool)

(assert (=> b!2542365 (= e!1607582 EmptyLang!7567)))

(declare-fun b!2542369 () Bool)

(assert (=> b!2542369 (= e!1607579 (Concat!12263 call!160943 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))))))

(declare-fun b!2542370 () Bool)

(assert (=> b!2542370 (= e!1607581 e!1607579)))

(assert (=> b!2542370 (= c!407052 ((_ is Star!7567) (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340)))))))

(declare-fun bm!160941 () Bool)

(assert (=> bm!160941 (= call!160946 call!160943)))

(declare-fun b!2542371 () Bool)

(assert (=> b!2542371 (= e!1607580 (Union!7567 (Concat!12263 call!160946 (regTwo!15646 (ite c!406875 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))))) EmptyLang!7567))))

(assert (= (and d!721929 c!407049) b!2542365))

(assert (= (and d!721929 (not c!407049)) b!2542367))

(assert (= (and b!2542367 c!407048) b!2542364))

(assert (= (and b!2542367 (not c!407048)) b!2542362))

(assert (= (and b!2542362 c!407050) b!2542363))

(assert (= (and b!2542362 (not c!407050)) b!2542370))

(assert (= (and b!2542370 c!407052) b!2542369))

(assert (= (and b!2542370 (not c!407052)) b!2542366))

(assert (= (and b!2542366 c!407051) b!2542368))

(assert (= (and b!2542366 (not c!407051)) b!2542371))

(assert (= (or b!2542368 b!2542371) bm!160941))

(assert (= (or b!2542369 bm!160941) bm!160940))

(assert (= (or b!2542363 b!2542368) bm!160939))

(assert (= (or b!2542363 bm!160940) bm!160938))

(declare-fun m!2888827 () Bool)

(assert (=> bm!160938 m!2888827))

(declare-fun m!2888829 () Bool)

(assert (=> bm!160939 m!2888829))

(declare-fun m!2888831 () Bool)

(assert (=> b!2542366 m!2888831))

(declare-fun m!2888833 () Bool)

(assert (=> d!721929 m!2888833))

(declare-fun m!2888835 () Bool)

(assert (=> d!721929 m!2888835))

(assert (=> bm!160767 d!721929))

(assert (=> b!2541383 d!721825))

(declare-fun d!721933 () Bool)

(declare-fun lt!902092 () Regex!7567)

(assert (=> d!721933 (validRegex!3193 lt!902092)))

(declare-fun e!1607590 () Regex!7567)

(assert (=> d!721933 (= lt!902092 e!1607590)))

(declare-fun c!407055 () Bool)

(assert (=> d!721933 (= c!407055 ((_ is Cons!29532) (t!211331 lt!902004)))))

(assert (=> d!721933 (validRegex!3193 (derivativeStep!2136 (regTwo!15647 r!27340) (h!34952 lt!902004)))))

(assert (=> d!721933 (= (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) (h!34952 lt!902004)) (t!211331 lt!902004)) lt!902092)))

(declare-fun b!2542381 () Bool)

(assert (=> b!2542381 (= e!1607590 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) (h!34952 lt!902004)) (h!34952 (t!211331 lt!902004))) (t!211331 (t!211331 lt!902004))))))

(declare-fun b!2542382 () Bool)

(assert (=> b!2542382 (= e!1607590 (derivativeStep!2136 (regTwo!15647 r!27340) (h!34952 lt!902004)))))

(assert (= (and d!721933 c!407055) b!2542381))

(assert (= (and d!721933 (not c!407055)) b!2542382))

(declare-fun m!2888837 () Bool)

(assert (=> d!721933 m!2888837))

(assert (=> d!721933 m!2888171))

(declare-fun m!2888841 () Bool)

(assert (=> d!721933 m!2888841))

(assert (=> b!2542381 m!2888171))

(declare-fun m!2888843 () Bool)

(assert (=> b!2542381 m!2888843))

(assert (=> b!2542381 m!2888843))

(declare-fun m!2888849 () Bool)

(assert (=> b!2542381 m!2888849))

(assert (=> b!2541417 d!721933))

(declare-fun b!2542383 () Bool)

(declare-fun c!407058 () Bool)

(assert (=> b!2542383 (= c!407058 ((_ is Union!7567) (regTwo!15647 r!27340)))))

(declare-fun e!1607591 () Regex!7567)

(declare-fun e!1607594 () Regex!7567)

(assert (=> b!2542383 (= e!1607591 e!1607594)))

(declare-fun call!160952 () Regex!7567)

(declare-fun bm!160945 () Bool)

(declare-fun c!407060 () Bool)

(assert (=> bm!160945 (= call!160952 (derivativeStep!2136 (ite c!407058 (regOne!15647 (regTwo!15647 r!27340)) (ite c!407060 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))) (h!34952 lt!902004)))))

(declare-fun call!160951 () Regex!7567)

(declare-fun bm!160946 () Bool)

(assert (=> bm!160946 (= call!160951 (derivativeStep!2136 (ite c!407058 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))) (h!34952 lt!902004)))))

(declare-fun b!2542384 () Bool)

(assert (=> b!2542384 (= e!1607594 (Union!7567 call!160952 call!160951))))

(declare-fun b!2542385 () Bool)

(assert (=> b!2542385 (= e!1607591 (ite (= (h!34952 lt!902004) (c!406763 (regTwo!15647 r!27340))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542387 () Bool)

(declare-fun c!407059 () Bool)

(assert (=> b!2542387 (= c!407059 (nullable!2484 (regOne!15646 (regTwo!15647 r!27340))))))

(declare-fun e!1607592 () Regex!7567)

(declare-fun e!1607593 () Regex!7567)

(assert (=> b!2542387 (= e!1607592 e!1607593)))

(declare-fun bm!160947 () Bool)

(declare-fun call!160950 () Regex!7567)

(assert (=> bm!160947 (= call!160950 call!160952)))

(declare-fun b!2542388 () Bool)

(declare-fun e!1607595 () Regex!7567)

(assert (=> b!2542388 (= e!1607595 e!1607591)))

(declare-fun c!407056 () Bool)

(assert (=> b!2542388 (= c!407056 ((_ is ElementMatch!7567) (regTwo!15647 r!27340)))))

(declare-fun b!2542389 () Bool)

(declare-fun call!160953 () Regex!7567)

(assert (=> b!2542389 (= e!1607593 (Union!7567 (Concat!12263 call!160953 (regTwo!15646 (regTwo!15647 r!27340))) call!160951))))

(declare-fun d!721935 () Bool)

(declare-fun lt!902093 () Regex!7567)

(assert (=> d!721935 (validRegex!3193 lt!902093)))

(assert (=> d!721935 (= lt!902093 e!1607595)))

(declare-fun c!407057 () Bool)

(assert (=> d!721935 (= c!407057 (or ((_ is EmptyExpr!7567) (regTwo!15647 r!27340)) ((_ is EmptyLang!7567) (regTwo!15647 r!27340))))))

(assert (=> d!721935 (validRegex!3193 (regTwo!15647 r!27340))))

(assert (=> d!721935 (= (derivativeStep!2136 (regTwo!15647 r!27340) (h!34952 lt!902004)) lt!902093)))

(declare-fun b!2542386 () Bool)

(assert (=> b!2542386 (= e!1607595 EmptyLang!7567)))

(declare-fun b!2542390 () Bool)

(assert (=> b!2542390 (= e!1607592 (Concat!12263 call!160950 (regTwo!15647 r!27340)))))

(declare-fun b!2542391 () Bool)

(assert (=> b!2542391 (= e!1607594 e!1607592)))

(assert (=> b!2542391 (= c!407060 ((_ is Star!7567) (regTwo!15647 r!27340)))))

(declare-fun bm!160948 () Bool)

(assert (=> bm!160948 (= call!160953 call!160950)))

(declare-fun b!2542392 () Bool)

(assert (=> b!2542392 (= e!1607593 (Union!7567 (Concat!12263 call!160953 (regTwo!15646 (regTwo!15647 r!27340))) EmptyLang!7567))))

(assert (= (and d!721935 c!407057) b!2542386))

(assert (= (and d!721935 (not c!407057)) b!2542388))

(assert (= (and b!2542388 c!407056) b!2542385))

(assert (= (and b!2542388 (not c!407056)) b!2542383))

(assert (= (and b!2542383 c!407058) b!2542384))

(assert (= (and b!2542383 (not c!407058)) b!2542391))

(assert (= (and b!2542391 c!407060) b!2542390))

(assert (= (and b!2542391 (not c!407060)) b!2542387))

(assert (= (and b!2542387 c!407059) b!2542389))

(assert (= (and b!2542387 (not c!407059)) b!2542392))

(assert (= (or b!2542389 b!2542392) bm!160948))

(assert (= (or b!2542390 bm!160948) bm!160947))

(assert (= (or b!2542384 b!2542389) bm!160946))

(assert (= (or b!2542384 bm!160947) bm!160945))

(declare-fun m!2888851 () Bool)

(assert (=> bm!160945 m!2888851))

(declare-fun m!2888853 () Bool)

(assert (=> bm!160946 m!2888853))

(assert (=> b!2542387 m!2888381))

(declare-fun m!2888855 () Bool)

(assert (=> d!721935 m!2888855))

(assert (=> d!721935 m!2888169))

(assert (=> b!2541417 d!721935))

(declare-fun b!2542403 () Bool)

(declare-fun e!1607603 () Bool)

(declare-fun e!1607606 () Bool)

(assert (=> b!2542403 (= e!1607603 e!1607606)))

(declare-fun res!1071634 () Bool)

(assert (=> b!2542403 (=> res!1071634 e!1607606)))

(declare-fun call!160958 () Bool)

(assert (=> b!2542403 (= res!1071634 call!160958)))

(declare-fun b!2542404 () Bool)

(declare-fun e!1607601 () Bool)

(assert (=> b!2542404 (= e!1607601 (nullable!2484 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004))))))

(declare-fun b!2542405 () Bool)

(declare-fun e!1607604 () Bool)

(assert (=> b!2542405 (= e!1607604 e!1607603)))

(declare-fun res!1071629 () Bool)

(assert (=> b!2542405 (=> (not res!1071629) (not e!1607603))))

(declare-fun lt!902095 () Bool)

(assert (=> b!2542405 (= res!1071629 (not lt!902095))))

(declare-fun b!2542406 () Bool)

(assert (=> b!2542406 (= e!1607601 (matchR!3522 (derivativeStep!2136 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)) (head!5789 (tail!4064 lt!902004))) (tail!4064 (tail!4064 lt!902004))))))

(declare-fun b!2542407 () Bool)

(declare-fun res!1071636 () Bool)

(assert (=> b!2542407 (=> res!1071636 e!1607606)))

(assert (=> b!2542407 (= res!1071636 (not (isEmpty!16986 (tail!4064 (tail!4064 lt!902004)))))))

(declare-fun bm!160953 () Bool)

(assert (=> bm!160953 (= call!160958 (isEmpty!16986 (tail!4064 lt!902004)))))

(declare-fun b!2542408 () Bool)

(declare-fun e!1607605 () Bool)

(assert (=> b!2542408 (= e!1607605 (= lt!902095 call!160958))))

(declare-fun b!2542409 () Bool)

(declare-fun res!1071632 () Bool)

(assert (=> b!2542409 (=> res!1071632 e!1607604)))

(assert (=> b!2542409 (= res!1071632 (not ((_ is ElementMatch!7567) (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)))))))

(declare-fun e!1607602 () Bool)

(assert (=> b!2542409 (= e!1607602 e!1607604)))

(declare-fun b!2542410 () Bool)

(declare-fun res!1071635 () Bool)

(declare-fun e!1607607 () Bool)

(assert (=> b!2542410 (=> (not res!1071635) (not e!1607607))))

(assert (=> b!2542410 (= res!1071635 (isEmpty!16986 (tail!4064 (tail!4064 lt!902004))))))

(declare-fun d!721939 () Bool)

(assert (=> d!721939 e!1607605))

(declare-fun c!407066 () Bool)

(assert (=> d!721939 (= c!407066 ((_ is EmptyExpr!7567) (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004))))))

(assert (=> d!721939 (= lt!902095 e!1607601)))

(declare-fun c!407068 () Bool)

(assert (=> d!721939 (= c!407068 (isEmpty!16986 (tail!4064 lt!902004)))))

(assert (=> d!721939 (validRegex!3193 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)))))

(assert (=> d!721939 (= (matchR!3522 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)) (tail!4064 lt!902004)) lt!902095)))

(declare-fun b!2542411 () Bool)

(assert (=> b!2542411 (= e!1607607 (= (head!5789 (tail!4064 lt!902004)) (c!406763 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)))))))

(declare-fun b!2542412 () Bool)

(declare-fun res!1071633 () Bool)

(assert (=> b!2542412 (=> (not res!1071633) (not e!1607607))))

(assert (=> b!2542412 (= res!1071633 (not call!160958))))

(declare-fun b!2542413 () Bool)

(assert (=> b!2542413 (= e!1607606 (not (= (head!5789 (tail!4064 lt!902004)) (c!406763 (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004))))))))

(declare-fun b!2542414 () Bool)

(assert (=> b!2542414 (= e!1607605 e!1607602)))

(declare-fun c!407067 () Bool)

(assert (=> b!2542414 (= c!407067 ((_ is EmptyLang!7567) (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004))))))

(declare-fun b!2542415 () Bool)

(assert (=> b!2542415 (= e!1607602 (not lt!902095))))

(declare-fun b!2542416 () Bool)

(declare-fun res!1071631 () Bool)

(assert (=> b!2542416 (=> res!1071631 e!1607604)))

(assert (=> b!2542416 (= res!1071631 e!1607607)))

(declare-fun res!1071630 () Bool)

(assert (=> b!2542416 (=> (not res!1071630) (not e!1607607))))

(assert (=> b!2542416 (= res!1071630 lt!902095)))

(assert (= (and d!721939 c!407068) b!2542404))

(assert (= (and d!721939 (not c!407068)) b!2542406))

(assert (= (and d!721939 c!407066) b!2542408))

(assert (= (and d!721939 (not c!407066)) b!2542414))

(assert (= (and b!2542414 c!407067) b!2542415))

(assert (= (and b!2542414 (not c!407067)) b!2542409))

(assert (= (and b!2542409 (not res!1071632)) b!2542416))

(assert (= (and b!2542416 res!1071630) b!2542412))

(assert (= (and b!2542412 res!1071633) b!2542410))

(assert (= (and b!2542410 res!1071635) b!2542411))

(assert (= (and b!2542416 (not res!1071631)) b!2542405))

(assert (= (and b!2542405 res!1071629) b!2542403))

(assert (= (and b!2542403 (not res!1071634)) b!2542407))

(assert (= (and b!2542407 (not res!1071636)) b!2542413))

(assert (= (or b!2542408 b!2542403 b!2542412) bm!160953))

(assert (=> b!2542410 m!2888175))

(assert (=> b!2542410 m!2888555))

(assert (=> b!2542410 m!2888555))

(assert (=> b!2542410 m!2888559))

(assert (=> b!2542413 m!2888175))

(assert (=> b!2542413 m!2888561))

(assert (=> b!2542411 m!2888175))

(assert (=> b!2542411 m!2888561))

(assert (=> b!2542407 m!2888175))

(assert (=> b!2542407 m!2888555))

(assert (=> b!2542407 m!2888555))

(assert (=> b!2542407 m!2888559))

(assert (=> b!2542404 m!2888191))

(declare-fun m!2888867 () Bool)

(assert (=> b!2542404 m!2888867))

(assert (=> bm!160953 m!2888175))

(assert (=> bm!160953 m!2888177))

(assert (=> b!2542406 m!2888175))

(assert (=> b!2542406 m!2888561))

(assert (=> b!2542406 m!2888191))

(assert (=> b!2542406 m!2888561))

(declare-fun m!2888873 () Bool)

(assert (=> b!2542406 m!2888873))

(assert (=> b!2542406 m!2888175))

(assert (=> b!2542406 m!2888555))

(assert (=> b!2542406 m!2888873))

(assert (=> b!2542406 m!2888555))

(declare-fun m!2888879 () Bool)

(assert (=> b!2542406 m!2888879))

(assert (=> d!721939 m!2888175))

(assert (=> d!721939 m!2888177))

(assert (=> d!721939 m!2888191))

(declare-fun m!2888883 () Bool)

(assert (=> d!721939 m!2888883))

(assert (=> b!2541436 d!721939))

(declare-fun b!2542436 () Bool)

(declare-fun c!407078 () Bool)

(assert (=> b!2542436 (= c!407078 ((_ is Union!7567) (regTwo!15647 r!27340)))))

(declare-fun e!1607620 () Regex!7567)

(declare-fun e!1607623 () Regex!7567)

(assert (=> b!2542436 (= e!1607620 e!1607623)))

(declare-fun bm!160961 () Bool)

(declare-fun call!160968 () Regex!7567)

(declare-fun c!407080 () Bool)

(assert (=> bm!160961 (= call!160968 (derivativeStep!2136 (ite c!407078 (regOne!15647 (regTwo!15647 r!27340)) (ite c!407080 (reg!7896 (regTwo!15647 r!27340)) (regOne!15646 (regTwo!15647 r!27340)))) (head!5789 lt!902004)))))

(declare-fun bm!160962 () Bool)

(declare-fun call!160967 () Regex!7567)

(assert (=> bm!160962 (= call!160967 (derivativeStep!2136 (ite c!407078 (regTwo!15647 (regTwo!15647 r!27340)) (regTwo!15646 (regTwo!15647 r!27340))) (head!5789 lt!902004)))))

(declare-fun b!2542437 () Bool)

(assert (=> b!2542437 (= e!1607623 (Union!7567 call!160968 call!160967))))

(declare-fun b!2542438 () Bool)

(assert (=> b!2542438 (= e!1607620 (ite (= (head!5789 lt!902004) (c!406763 (regTwo!15647 r!27340))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542440 () Bool)

(declare-fun c!407079 () Bool)

(assert (=> b!2542440 (= c!407079 (nullable!2484 (regOne!15646 (regTwo!15647 r!27340))))))

(declare-fun e!1607621 () Regex!7567)

(declare-fun e!1607622 () Regex!7567)

(assert (=> b!2542440 (= e!1607621 e!1607622)))

(declare-fun bm!160963 () Bool)

(declare-fun call!160966 () Regex!7567)

(assert (=> bm!160963 (= call!160966 call!160968)))

(declare-fun b!2542441 () Bool)

(declare-fun e!1607624 () Regex!7567)

(assert (=> b!2542441 (= e!1607624 e!1607620)))

(declare-fun c!407076 () Bool)

(assert (=> b!2542441 (= c!407076 ((_ is ElementMatch!7567) (regTwo!15647 r!27340)))))

(declare-fun call!160969 () Regex!7567)

(declare-fun b!2542442 () Bool)

(assert (=> b!2542442 (= e!1607622 (Union!7567 (Concat!12263 call!160969 (regTwo!15646 (regTwo!15647 r!27340))) call!160967))))

(declare-fun d!721945 () Bool)

(declare-fun lt!902097 () Regex!7567)

(assert (=> d!721945 (validRegex!3193 lt!902097)))

(assert (=> d!721945 (= lt!902097 e!1607624)))

(declare-fun c!407077 () Bool)

(assert (=> d!721945 (= c!407077 (or ((_ is EmptyExpr!7567) (regTwo!15647 r!27340)) ((_ is EmptyLang!7567) (regTwo!15647 r!27340))))))

(assert (=> d!721945 (validRegex!3193 (regTwo!15647 r!27340))))

(assert (=> d!721945 (= (derivativeStep!2136 (regTwo!15647 r!27340) (head!5789 lt!902004)) lt!902097)))

(declare-fun b!2542439 () Bool)

(assert (=> b!2542439 (= e!1607624 EmptyLang!7567)))

(declare-fun b!2542443 () Bool)

(assert (=> b!2542443 (= e!1607621 (Concat!12263 call!160966 (regTwo!15647 r!27340)))))

(declare-fun b!2542444 () Bool)

(assert (=> b!2542444 (= e!1607623 e!1607621)))

(assert (=> b!2542444 (= c!407080 ((_ is Star!7567) (regTwo!15647 r!27340)))))

(declare-fun bm!160964 () Bool)

(assert (=> bm!160964 (= call!160969 call!160966)))

(declare-fun b!2542445 () Bool)

(assert (=> b!2542445 (= e!1607622 (Union!7567 (Concat!12263 call!160969 (regTwo!15646 (regTwo!15647 r!27340))) EmptyLang!7567))))

(assert (= (and d!721945 c!407077) b!2542439))

(assert (= (and d!721945 (not c!407077)) b!2542441))

(assert (= (and b!2542441 c!407076) b!2542438))

(assert (= (and b!2542441 (not c!407076)) b!2542436))

(assert (= (and b!2542436 c!407078) b!2542437))

(assert (= (and b!2542436 (not c!407078)) b!2542444))

(assert (= (and b!2542444 c!407080) b!2542443))

(assert (= (and b!2542444 (not c!407080)) b!2542440))

(assert (= (and b!2542440 c!407079) b!2542442))

(assert (= (and b!2542440 (not c!407079)) b!2542445))

(assert (= (or b!2542442 b!2542445) bm!160964))

(assert (= (or b!2542443 bm!160964) bm!160963))

(assert (= (or b!2542437 b!2542442) bm!160962))

(assert (= (or b!2542437 bm!160963) bm!160961))

(assert (=> bm!160961 m!2888179))

(declare-fun m!2888891 () Bool)

(assert (=> bm!160961 m!2888891))

(assert (=> bm!160962 m!2888179))

(declare-fun m!2888893 () Bool)

(assert (=> bm!160962 m!2888893))

(assert (=> b!2542440 m!2888381))

(declare-fun m!2888895 () Bool)

(assert (=> d!721945 m!2888895))

(assert (=> d!721945 m!2888169))

(assert (=> b!2541436 d!721945))

(assert (=> b!2541436 d!721737))

(assert (=> b!2541436 d!721759))

(declare-fun d!721949 () Bool)

(declare-fun res!1071645 () Bool)

(declare-fun e!1607629 () Bool)

(assert (=> d!721949 (=> res!1071645 e!1607629)))

(assert (=> d!721949 (= res!1071645 ((_ is ElementMatch!7567) lt!902059))))

(assert (=> d!721949 (= (validRegex!3193 lt!902059) e!1607629)))

(declare-fun c!407082 () Bool)

(declare-fun c!407083 () Bool)

(declare-fun bm!160965 () Bool)

(declare-fun call!160970 () Bool)

(assert (=> bm!160965 (= call!160970 (validRegex!3193 (ite c!407083 (reg!7896 lt!902059) (ite c!407082 (regOne!15647 lt!902059) (regTwo!15646 lt!902059)))))))

(declare-fun bm!160966 () Bool)

(declare-fun call!160972 () Bool)

(assert (=> bm!160966 (= call!160972 call!160970)))

(declare-fun b!2542448 () Bool)

(declare-fun e!1607628 () Bool)

(assert (=> b!2542448 (= e!1607629 e!1607628)))

(assert (=> b!2542448 (= c!407083 ((_ is Star!7567) lt!902059))))

(declare-fun b!2542449 () Bool)

(declare-fun e!1607631 () Bool)

(assert (=> b!2542449 (= e!1607628 e!1607631)))

(declare-fun res!1071646 () Bool)

(assert (=> b!2542449 (= res!1071646 (not (nullable!2484 (reg!7896 lt!902059))))))

(assert (=> b!2542449 (=> (not res!1071646) (not e!1607631))))

(declare-fun b!2542450 () Bool)

(declare-fun e!1607626 () Bool)

(assert (=> b!2542450 (= e!1607628 e!1607626)))

(assert (=> b!2542450 (= c!407082 ((_ is Union!7567) lt!902059))))

(declare-fun b!2542451 () Bool)

(declare-fun e!1607630 () Bool)

(declare-fun call!160971 () Bool)

(assert (=> b!2542451 (= e!1607630 call!160971)))

(declare-fun bm!160967 () Bool)

(assert (=> bm!160967 (= call!160971 (validRegex!3193 (ite c!407082 (regTwo!15647 lt!902059) (regOne!15646 lt!902059))))))

(declare-fun b!2542452 () Bool)

(declare-fun e!1607627 () Bool)

(declare-fun e!1607632 () Bool)

(assert (=> b!2542452 (= e!1607627 e!1607632)))

(declare-fun res!1071643 () Bool)

(assert (=> b!2542452 (=> (not res!1071643) (not e!1607632))))

(assert (=> b!2542452 (= res!1071643 call!160971)))

(declare-fun b!2542453 () Bool)

(declare-fun res!1071644 () Bool)

(assert (=> b!2542453 (=> (not res!1071644) (not e!1607630))))

(assert (=> b!2542453 (= res!1071644 call!160972)))

(assert (=> b!2542453 (= e!1607626 e!1607630)))

(declare-fun b!2542454 () Bool)

(assert (=> b!2542454 (= e!1607632 call!160972)))

(declare-fun b!2542455 () Bool)

(assert (=> b!2542455 (= e!1607631 call!160970)))

(declare-fun b!2542456 () Bool)

(declare-fun res!1071642 () Bool)

(assert (=> b!2542456 (=> res!1071642 e!1607627)))

(assert (=> b!2542456 (= res!1071642 (not ((_ is Concat!12263) lt!902059)))))

(assert (=> b!2542456 (= e!1607626 e!1607627)))

(assert (= (and d!721949 (not res!1071645)) b!2542448))

(assert (= (and b!2542448 c!407083) b!2542449))

(assert (= (and b!2542448 (not c!407083)) b!2542450))

(assert (= (and b!2542449 res!1071646) b!2542455))

(assert (= (and b!2542450 c!407082) b!2542453))

(assert (= (and b!2542450 (not c!407082)) b!2542456))

(assert (= (and b!2542453 res!1071644) b!2542451))

(assert (= (and b!2542456 (not res!1071642)) b!2542452))

(assert (= (and b!2542452 res!1071643) b!2542454))

(assert (= (or b!2542453 b!2542454) bm!160966))

(assert (= (or b!2542451 b!2542452) bm!160967))

(assert (= (or b!2542455 bm!160966) bm!160965))

(declare-fun m!2888905 () Bool)

(assert (=> bm!160965 m!2888905))

(declare-fun m!2888907 () Bool)

(assert (=> b!2542449 m!2888907))

(declare-fun m!2888909 () Bool)

(assert (=> bm!160967 m!2888909))

(assert (=> d!721721 d!721949))

(declare-fun d!721953 () Bool)

(declare-fun res!1071650 () Bool)

(declare-fun e!1607641 () Bool)

(assert (=> d!721953 (=> res!1071650 e!1607641)))

(assert (=> d!721953 (= res!1071650 ((_ is ElementMatch!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(assert (=> d!721953 (= (validRegex!3193 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) e!1607641)))

(declare-fun c!407090 () Bool)

(declare-fun bm!160972 () Bool)

(declare-fun call!160977 () Bool)

(declare-fun c!407089 () Bool)

(assert (=> bm!160972 (= call!160977 (validRegex!3193 (ite c!407090 (reg!7896 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) (ite c!407089 (regOne!15647 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) (regTwo!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))))))

(declare-fun bm!160973 () Bool)

(declare-fun call!160979 () Bool)

(assert (=> bm!160973 (= call!160979 call!160977)))

(declare-fun b!2542467 () Bool)

(declare-fun e!1607640 () Bool)

(assert (=> b!2542467 (= e!1607641 e!1607640)))

(assert (=> b!2542467 (= c!407090 ((_ is Star!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(declare-fun b!2542468 () Bool)

(declare-fun e!1607643 () Bool)

(assert (=> b!2542468 (= e!1607640 e!1607643)))

(declare-fun res!1071651 () Bool)

(assert (=> b!2542468 (= res!1071651 (not (nullable!2484 (reg!7896 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))))

(assert (=> b!2542468 (=> (not res!1071651) (not e!1607643))))

(declare-fun b!2542469 () Bool)

(declare-fun e!1607638 () Bool)

(assert (=> b!2542469 (= e!1607640 e!1607638)))

(assert (=> b!2542469 (= c!407089 ((_ is Union!7567) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))

(declare-fun b!2542470 () Bool)

(declare-fun e!1607642 () Bool)

(declare-fun call!160978 () Bool)

(assert (=> b!2542470 (= e!1607642 call!160978)))

(declare-fun bm!160974 () Bool)

(assert (=> bm!160974 (= call!160978 (validRegex!3193 (ite c!407089 (regTwo!15647 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)) (regOne!15646 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016)))))))

(declare-fun b!2542471 () Bool)

(declare-fun e!1607639 () Bool)

(declare-fun e!1607644 () Bool)

(assert (=> b!2542471 (= e!1607639 e!1607644)))

(declare-fun res!1071648 () Bool)

(assert (=> b!2542471 (=> (not res!1071648) (not e!1607644))))

(assert (=> b!2542471 (= res!1071648 call!160978)))

(declare-fun b!2542472 () Bool)

(declare-fun res!1071649 () Bool)

(assert (=> b!2542472 (=> (not res!1071649) (not e!1607642))))

(assert (=> b!2542472 (= res!1071649 call!160979)))

(assert (=> b!2542472 (= e!1607638 e!1607642)))

(declare-fun b!2542473 () Bool)

(assert (=> b!2542473 (= e!1607644 call!160979)))

(declare-fun b!2542474 () Bool)

(assert (=> b!2542474 (= e!1607643 call!160977)))

(declare-fun b!2542475 () Bool)

(declare-fun res!1071647 () Bool)

(assert (=> b!2542475 (=> res!1071647 e!1607639)))

(assert (=> b!2542475 (= res!1071647 (not ((_ is Concat!12263) (derivativeStep!2136 (regTwo!15647 r!27340) c!14016))))))

(assert (=> b!2542475 (= e!1607638 e!1607639)))

(assert (= (and d!721953 (not res!1071650)) b!2542467))

(assert (= (and b!2542467 c!407090) b!2542468))

(assert (= (and b!2542467 (not c!407090)) b!2542469))

(assert (= (and b!2542468 res!1071651) b!2542474))

(assert (= (and b!2542469 c!407089) b!2542472))

(assert (= (and b!2542469 (not c!407089)) b!2542475))

(assert (= (and b!2542472 res!1071649) b!2542470))

(assert (= (and b!2542475 (not res!1071647)) b!2542471))

(assert (= (and b!2542471 res!1071648) b!2542473))

(assert (= (or b!2542472 b!2542473) bm!160973))

(assert (= (or b!2542470 b!2542471) bm!160974))

(assert (= (or b!2542474 bm!160973) bm!160972))

(declare-fun m!2888919 () Bool)

(assert (=> bm!160972 m!2888919))

(declare-fun m!2888921 () Bool)

(assert (=> b!2542468 m!2888921))

(declare-fun m!2888923 () Bool)

(assert (=> bm!160974 m!2888923))

(assert (=> d!721721 d!721953))

(declare-fun d!721957 () Bool)

(assert (=> d!721957 (= (nullable!2484 (derivative!262 r!27340 lt!902004)) (nullableFct!715 (derivative!262 r!27340 lt!902004)))))

(declare-fun bs!469435 () Bool)

(assert (= bs!469435 d!721957))

(assert (=> bs!469435 m!2888075))

(declare-fun m!2888925 () Bool)

(assert (=> bs!469435 m!2888925))

(assert (=> b!2541544 d!721957))

(declare-fun d!721959 () Bool)

(assert (=> d!721959 (= (nullable!2484 (regTwo!15647 r!27340)) (nullableFct!715 (regTwo!15647 r!27340)))))

(declare-fun bs!469436 () Bool)

(assert (= bs!469436 d!721959))

(declare-fun m!2888927 () Bool)

(assert (=> bs!469436 m!2888927))

(assert (=> b!2541434 d!721959))

(assert (=> b!2541516 d!721753))

(assert (=> b!2541516 d!721759))

(declare-fun d!721961 () Bool)

(assert (not d!721961))

(assert (=> b!2541546 d!721961))

(declare-fun d!721963 () Bool)

(assert (not d!721963))

(assert (=> b!2541546 d!721963))

(assert (=> b!2541546 d!721825))

(assert (=> b!2541546 d!721743))

(declare-fun d!721967 () Bool)

(declare-fun res!1071660 () Bool)

(declare-fun e!1607655 () Bool)

(assert (=> d!721967 (=> res!1071660 e!1607655)))

(assert (=> d!721967 (= res!1071660 ((_ is ElementMatch!7567) lt!902058))))

(assert (=> d!721967 (= (validRegex!3193 lt!902058) e!1607655)))

(declare-fun bm!160978 () Bool)

(declare-fun c!407094 () Bool)

(declare-fun c!407093 () Bool)

(declare-fun call!160983 () Bool)

(assert (=> bm!160978 (= call!160983 (validRegex!3193 (ite c!407094 (reg!7896 lt!902058) (ite c!407093 (regOne!15647 lt!902058) (regTwo!15646 lt!902058)))))))

(declare-fun bm!160979 () Bool)

(declare-fun call!160985 () Bool)

(assert (=> bm!160979 (= call!160985 call!160983)))

(declare-fun b!2542485 () Bool)

(declare-fun e!1607654 () Bool)

(assert (=> b!2542485 (= e!1607655 e!1607654)))

(assert (=> b!2542485 (= c!407094 ((_ is Star!7567) lt!902058))))

(declare-fun b!2542486 () Bool)

(declare-fun e!1607657 () Bool)

(assert (=> b!2542486 (= e!1607654 e!1607657)))

(declare-fun res!1071661 () Bool)

(assert (=> b!2542486 (= res!1071661 (not (nullable!2484 (reg!7896 lt!902058))))))

(assert (=> b!2542486 (=> (not res!1071661) (not e!1607657))))

(declare-fun b!2542487 () Bool)

(declare-fun e!1607652 () Bool)

(assert (=> b!2542487 (= e!1607654 e!1607652)))

(assert (=> b!2542487 (= c!407093 ((_ is Union!7567) lt!902058))))

(declare-fun b!2542488 () Bool)

(declare-fun e!1607656 () Bool)

(declare-fun call!160984 () Bool)

(assert (=> b!2542488 (= e!1607656 call!160984)))

(declare-fun bm!160980 () Bool)

(assert (=> bm!160980 (= call!160984 (validRegex!3193 (ite c!407093 (regTwo!15647 lt!902058) (regOne!15646 lt!902058))))))

(declare-fun b!2542489 () Bool)

(declare-fun e!1607653 () Bool)

(declare-fun e!1607658 () Bool)

(assert (=> b!2542489 (= e!1607653 e!1607658)))

(declare-fun res!1071658 () Bool)

(assert (=> b!2542489 (=> (not res!1071658) (not e!1607658))))

(assert (=> b!2542489 (= res!1071658 call!160984)))

(declare-fun b!2542490 () Bool)

(declare-fun res!1071659 () Bool)

(assert (=> b!2542490 (=> (not res!1071659) (not e!1607656))))

(assert (=> b!2542490 (= res!1071659 call!160985)))

(assert (=> b!2542490 (= e!1607652 e!1607656)))

(declare-fun b!2542491 () Bool)

(assert (=> b!2542491 (= e!1607658 call!160985)))

(declare-fun b!2542492 () Bool)

(assert (=> b!2542492 (= e!1607657 call!160983)))

(declare-fun b!2542493 () Bool)

(declare-fun res!1071657 () Bool)

(assert (=> b!2542493 (=> res!1071657 e!1607653)))

(assert (=> b!2542493 (= res!1071657 (not ((_ is Concat!12263) lt!902058)))))

(assert (=> b!2542493 (= e!1607652 e!1607653)))

(assert (= (and d!721967 (not res!1071660)) b!2542485))

(assert (= (and b!2542485 c!407094) b!2542486))

(assert (= (and b!2542485 (not c!407094)) b!2542487))

(assert (= (and b!2542486 res!1071661) b!2542492))

(assert (= (and b!2542487 c!407093) b!2542490))

(assert (= (and b!2542487 (not c!407093)) b!2542493))

(assert (= (and b!2542490 res!1071659) b!2542488))

(assert (= (and b!2542493 (not res!1071657)) b!2542489))

(assert (= (and b!2542489 res!1071658) b!2542491))

(assert (= (or b!2542490 b!2542491) bm!160979))

(assert (= (or b!2542488 b!2542489) bm!160980))

(assert (= (or b!2542492 bm!160979) bm!160978))

(declare-fun m!2888935 () Bool)

(assert (=> bm!160978 m!2888935))

(declare-fun m!2888937 () Bool)

(assert (=> b!2542486 m!2888937))

(declare-fun m!2888939 () Bool)

(assert (=> bm!160980 m!2888939))

(assert (=> d!721699 d!721967))

(assert (=> d!721699 d!721773))

(assert (=> bm!160719 d!721733))

(declare-fun d!721969 () Bool)

(declare-fun lt!902100 () Regex!7567)

(assert (=> d!721969 (validRegex!3193 lt!902100)))

(declare-fun e!1607666 () Regex!7567)

(assert (=> d!721969 (= lt!902100 e!1607666)))

(declare-fun c!407097 () Bool)

(assert (=> d!721969 (= c!407097 ((_ is Cons!29532) (t!211331 tl!4068)))))

(assert (=> d!721969 (validRegex!3193 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) (h!34952 tl!4068)))))

(assert (=> d!721969 (= (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) (h!34952 tl!4068)) (t!211331 tl!4068)) lt!902100)))

(declare-fun b!2542503 () Bool)

(assert (=> b!2542503 (= e!1607666 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) (h!34952 tl!4068)) (h!34952 (t!211331 tl!4068))) (t!211331 (t!211331 tl!4068))))))

(declare-fun b!2542504 () Bool)

(assert (=> b!2542504 (= e!1607666 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) (h!34952 tl!4068)))))

(assert (= (and d!721969 c!407097) b!2542503))

(assert (= (and d!721969 (not c!407097)) b!2542504))

(declare-fun m!2888941 () Bool)

(assert (=> d!721969 m!2888941))

(assert (=> d!721969 m!2888297))

(declare-fun m!2888945 () Bool)

(assert (=> d!721969 m!2888945))

(assert (=> b!2542503 m!2888297))

(declare-fun m!2888947 () Bool)

(assert (=> b!2542503 m!2888947))

(assert (=> b!2542503 m!2888947))

(declare-fun m!2888951 () Bool)

(assert (=> b!2542503 m!2888951))

(assert (=> b!2541585 d!721969))

(declare-fun b!2542505 () Bool)

(declare-fun c!407100 () Bool)

(assert (=> b!2542505 (= c!407100 ((_ is Union!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(declare-fun e!1607667 () Regex!7567)

(declare-fun e!1607670 () Regex!7567)

(assert (=> b!2542505 (= e!1607667 e!1607670)))

(declare-fun c!407102 () Bool)

(declare-fun call!160991 () Regex!7567)

(declare-fun bm!160984 () Bool)

(assert (=> bm!160984 (= call!160991 (derivativeStep!2136 (ite c!407100 (regOne!15647 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) (ite c!407102 (reg!7896 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) (regOne!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))) (h!34952 tl!4068)))))

(declare-fun call!160990 () Regex!7567)

(declare-fun bm!160985 () Bool)

(assert (=> bm!160985 (= call!160990 (derivativeStep!2136 (ite c!407100 (regTwo!15647 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) (regTwo!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))) (h!34952 tl!4068)))))

(declare-fun b!2542506 () Bool)

(assert (=> b!2542506 (= e!1607670 (Union!7567 call!160991 call!160990))))

(declare-fun b!2542507 () Bool)

(assert (=> b!2542507 (= e!1607667 (ite (= (h!34952 tl!4068) (c!406763 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542509 () Bool)

(declare-fun c!407101 () Bool)

(assert (=> b!2542509 (= c!407101 (nullable!2484 (regOne!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))))

(declare-fun e!1607668 () Regex!7567)

(declare-fun e!1607669 () Regex!7567)

(assert (=> b!2542509 (= e!1607668 e!1607669)))

(declare-fun bm!160986 () Bool)

(declare-fun call!160989 () Regex!7567)

(assert (=> bm!160986 (= call!160989 call!160991)))

(declare-fun b!2542510 () Bool)

(declare-fun e!1607671 () Regex!7567)

(assert (=> b!2542510 (= e!1607671 e!1607667)))

(declare-fun c!407098 () Bool)

(assert (=> b!2542510 (= c!407098 ((_ is ElementMatch!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(declare-fun b!2542511 () Bool)

(declare-fun call!160992 () Regex!7567)

(assert (=> b!2542511 (= e!1607669 (Union!7567 (Concat!12263 call!160992 (regTwo!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))) call!160990))))

(declare-fun d!721971 () Bool)

(declare-fun lt!902101 () Regex!7567)

(assert (=> d!721971 (validRegex!3193 lt!902101)))

(assert (=> d!721971 (= lt!902101 e!1607671)))

(declare-fun c!407099 () Bool)

(assert (=> d!721971 (= c!407099 (or ((_ is EmptyExpr!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)) ((_ is EmptyLang!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))))

(assert (=> d!721971 (validRegex!3193 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))))

(assert (=> d!721971 (= (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) c!14016) (h!34952 tl!4068)) lt!902101)))

(declare-fun b!2542508 () Bool)

(assert (=> b!2542508 (= e!1607671 EmptyLang!7567)))

(declare-fun b!2542512 () Bool)

(assert (=> b!2542512 (= e!1607668 (Concat!12263 call!160989 (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(declare-fun b!2542513 () Bool)

(assert (=> b!2542513 (= e!1607670 e!1607668)))

(assert (=> b!2542513 (= c!407102 ((_ is Star!7567) (derivativeStep!2136 (regOne!15647 r!27340) c!14016)))))

(declare-fun bm!160987 () Bool)

(assert (=> bm!160987 (= call!160992 call!160989)))

(declare-fun b!2542514 () Bool)

(assert (=> b!2542514 (= e!1607669 (Union!7567 (Concat!12263 call!160992 (regTwo!15646 (derivativeStep!2136 (regOne!15647 r!27340) c!14016))) EmptyLang!7567))))

(assert (= (and d!721971 c!407099) b!2542508))

(assert (= (and d!721971 (not c!407099)) b!2542510))

(assert (= (and b!2542510 c!407098) b!2542507))

(assert (= (and b!2542510 (not c!407098)) b!2542505))

(assert (= (and b!2542505 c!407100) b!2542506))

(assert (= (and b!2542505 (not c!407100)) b!2542513))

(assert (= (and b!2542513 c!407102) b!2542512))

(assert (= (and b!2542513 (not c!407102)) b!2542509))

(assert (= (and b!2542509 c!407101) b!2542511))

(assert (= (and b!2542509 (not c!407101)) b!2542514))

(assert (= (or b!2542511 b!2542514) bm!160987))

(assert (= (or b!2542512 bm!160987) bm!160986))

(assert (= (or b!2542506 b!2542511) bm!160985))

(assert (= (or b!2542506 bm!160986) bm!160984))

(declare-fun m!2888957 () Bool)

(assert (=> bm!160984 m!2888957))

(declare-fun m!2888961 () Bool)

(assert (=> bm!160985 m!2888961))

(declare-fun m!2888965 () Bool)

(assert (=> b!2542509 m!2888965))

(declare-fun m!2888967 () Bool)

(assert (=> d!721971 m!2888967))

(assert (=> d!721971 m!2888059))

(assert (=> d!721971 m!2888295))

(assert (=> b!2541585 d!721971))

(declare-fun d!721977 () Bool)

(declare-fun res!1071670 () Bool)

(declare-fun e!1607676 () Bool)

(assert (=> d!721977 (=> res!1071670 e!1607676)))

(assert (=> d!721977 (= res!1071670 ((_ is ElementMatch!7567) (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))))))

(assert (=> d!721977 (= (validRegex!3193 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))) e!1607676)))

(declare-fun bm!160988 () Bool)

(declare-fun call!160993 () Bool)

(declare-fun c!407104 () Bool)

(declare-fun c!407105 () Bool)

(assert (=> bm!160988 (= call!160993 (validRegex!3193 (ite c!407105 (reg!7896 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))) (ite c!407104 (regOne!15647 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))) (regTwo!15646 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340))))))))))

(declare-fun bm!160989 () Bool)

(declare-fun call!160995 () Bool)

(assert (=> bm!160989 (= call!160995 call!160993)))

(declare-fun b!2542517 () Bool)

(declare-fun e!1607675 () Bool)

(assert (=> b!2542517 (= e!1607676 e!1607675)))

(assert (=> b!2542517 (= c!407105 ((_ is Star!7567) (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))))))

(declare-fun b!2542518 () Bool)

(declare-fun e!1607678 () Bool)

(assert (=> b!2542518 (= e!1607675 e!1607678)))

(declare-fun res!1071671 () Bool)

(assert (=> b!2542518 (= res!1071671 (not (nullable!2484 (reg!7896 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))))))))

(assert (=> b!2542518 (=> (not res!1071671) (not e!1607678))))

(declare-fun b!2542519 () Bool)

(declare-fun e!1607673 () Bool)

(assert (=> b!2542519 (= e!1607675 e!1607673)))

(assert (=> b!2542519 (= c!407104 ((_ is Union!7567) (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))))))

(declare-fun b!2542520 () Bool)

(declare-fun e!1607677 () Bool)

(declare-fun call!160994 () Bool)

(assert (=> b!2542520 (= e!1607677 call!160994)))

(declare-fun bm!160990 () Bool)

(assert (=> bm!160990 (= call!160994 (validRegex!3193 (ite c!407104 (regTwo!15647 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))) (regOne!15646 (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340)))))))))

(declare-fun b!2542521 () Bool)

(declare-fun e!1607674 () Bool)

(declare-fun e!1607679 () Bool)

(assert (=> b!2542521 (= e!1607674 e!1607679)))

(declare-fun res!1071668 () Bool)

(assert (=> b!2542521 (=> (not res!1071668) (not e!1607679))))

(assert (=> b!2542521 (= res!1071668 call!160994)))

(declare-fun b!2542522 () Bool)

(declare-fun res!1071669 () Bool)

(assert (=> b!2542522 (=> (not res!1071669) (not e!1607677))))

(assert (=> b!2542522 (= res!1071669 call!160995)))

(assert (=> b!2542522 (= e!1607673 e!1607677)))

(declare-fun b!2542523 () Bool)

(assert (=> b!2542523 (= e!1607679 call!160995)))

(declare-fun b!2542524 () Bool)

(assert (=> b!2542524 (= e!1607678 call!160993)))

(declare-fun b!2542525 () Bool)

(declare-fun res!1071667 () Bool)

(assert (=> b!2542525 (=> res!1071667 e!1607674)))

(assert (=> b!2542525 (= res!1071667 (not ((_ is Concat!12263) (ite c!406883 (reg!7896 r!27340) (ite c!406882 (regOne!15647 r!27340) (regTwo!15646 r!27340))))))))

(assert (=> b!2542525 (= e!1607673 e!1607674)))

(assert (= (and d!721977 (not res!1071670)) b!2542517))

(assert (= (and b!2542517 c!407105) b!2542518))

(assert (= (and b!2542517 (not c!407105)) b!2542519))

(assert (= (and b!2542518 res!1071671) b!2542524))

(assert (= (and b!2542519 c!407104) b!2542522))

(assert (= (and b!2542519 (not c!407104)) b!2542525))

(assert (= (and b!2542522 res!1071669) b!2542520))

(assert (= (and b!2542525 (not res!1071667)) b!2542521))

(assert (= (and b!2542521 res!1071668) b!2542523))

(assert (= (or b!2542522 b!2542523) bm!160989))

(assert (= (or b!2542520 b!2542521) bm!160990))

(assert (= (or b!2542524 bm!160989) bm!160988))

(declare-fun m!2888973 () Bool)

(assert (=> bm!160988 m!2888973))

(declare-fun m!2888975 () Bool)

(assert (=> b!2542518 m!2888975))

(declare-fun m!2888977 () Bool)

(assert (=> bm!160990 m!2888977))

(assert (=> bm!160776 d!721977))

(declare-fun d!721981 () Bool)

(assert (=> d!721981 (= (nullable!2484 (regOne!15646 (regOne!15647 r!27340))) (nullableFct!715 (regOne!15646 (regOne!15647 r!27340))))))

(declare-fun bs!469438 () Bool)

(assert (= bs!469438 d!721981))

(declare-fun m!2888979 () Bool)

(assert (=> bs!469438 m!2888979))

(assert (=> b!2541688 d!721981))

(assert (=> b!2541381 d!721825))

(assert (=> b!2541423 d!721753))

(assert (=> b!2541423 d!721759))

(declare-fun b!2542536 () Bool)

(declare-fun e!1607689 () Bool)

(declare-fun e!1607690 () Bool)

(assert (=> b!2542536 (= e!1607689 e!1607690)))

(declare-fun res!1071676 () Bool)

(declare-fun call!161001 () Bool)

(assert (=> b!2542536 (= res!1071676 call!161001)))

(assert (=> b!2542536 (=> res!1071676 e!1607690)))

(declare-fun b!2542537 () Bool)

(declare-fun e!1607687 () Bool)

(assert (=> b!2542537 (= e!1607689 e!1607687)))

(declare-fun res!1071673 () Bool)

(declare-fun call!161000 () Bool)

(assert (=> b!2542537 (= res!1071673 call!161000)))

(assert (=> b!2542537 (=> (not res!1071673) (not e!1607687))))

(declare-fun d!721983 () Bool)

(declare-fun res!1071672 () Bool)

(declare-fun e!1607686 () Bool)

(assert (=> d!721983 (=> res!1071672 e!1607686)))

(assert (=> d!721983 (= res!1071672 ((_ is EmptyExpr!7567) (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))

(assert (=> d!721983 (= (nullableFct!715 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)) e!1607686)))

(declare-fun b!2542538 () Bool)

(declare-fun e!1607685 () Bool)

(assert (=> b!2542538 (= e!1607686 e!1607685)))

(declare-fun res!1071675 () Bool)

(assert (=> b!2542538 (=> (not res!1071675) (not e!1607685))))

(assert (=> b!2542538 (= res!1071675 (and (not ((_ is EmptyLang!7567) (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7567) (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))))

(declare-fun c!407111 () Bool)

(declare-fun bm!160995 () Bool)

(assert (=> bm!160995 (= call!161000 (nullable!2484 (ite c!407111 (regTwo!15647 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)) (regOne!15646 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2542539 () Bool)

(declare-fun e!1607688 () Bool)

(assert (=> b!2542539 (= e!1607688 e!1607689)))

(assert (=> b!2542539 (= c!407111 ((_ is Union!7567) (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))

(declare-fun b!2542540 () Bool)

(assert (=> b!2542540 (= e!1607687 call!161001)))

(declare-fun b!2542541 () Bool)

(assert (=> b!2542541 (= e!1607685 e!1607688)))

(declare-fun res!1071674 () Bool)

(assert (=> b!2542541 (=> res!1071674 e!1607688)))

(assert (=> b!2542541 (= res!1071674 ((_ is Star!7567) (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))

(declare-fun b!2542542 () Bool)

(assert (=> b!2542542 (= e!1607690 call!161000)))

(declare-fun bm!160996 () Bool)

(assert (=> bm!160996 (= call!161001 (nullable!2484 (ite c!407111 (regOne!15647 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)) (regTwo!15646 (derivative!262 (derivativeStep!2136 (regTwo!15647 r!27340) c!14016) tl!4068)))))))

(assert (= (and d!721983 (not res!1071672)) b!2542538))

(assert (= (and b!2542538 res!1071675) b!2542541))

(assert (= (and b!2542541 (not res!1071674)) b!2542539))

(assert (= (and b!2542539 c!407111) b!2542536))

(assert (= (and b!2542539 (not c!407111)) b!2542537))

(assert (= (and b!2542536 (not res!1071676)) b!2542542))

(assert (= (and b!2542537 res!1071673) b!2542540))

(assert (= (or b!2542542 b!2542537) bm!160995))

(assert (= (or b!2542536 b!2542540) bm!160996))

(declare-fun m!2888987 () Bool)

(assert (=> bm!160995 m!2888987))

(declare-fun m!2888989 () Bool)

(assert (=> bm!160996 m!2888989))

(assert (=> d!721719 d!721983))

(declare-fun d!721987 () Bool)

(assert (=> d!721987 (= (nullable!2484 lt!902003) (nullableFct!715 lt!902003))))

(declare-fun bs!469439 () Bool)

(assert (= bs!469439 d!721987))

(declare-fun m!2888991 () Bool)

(assert (=> bs!469439 m!2888991))

(assert (=> b!2541374 d!721987))

(assert (=> b!2541550 d!721739))

(assert (=> b!2541550 d!721743))

(declare-fun b!2542552 () Bool)

(declare-fun c!407116 () Bool)

(assert (=> b!2542552 (= c!407116 ((_ is Union!7567) (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))))))

(declare-fun e!1607698 () Regex!7567)

(declare-fun e!1607701 () Regex!7567)

(assert (=> b!2542552 (= e!1607698 e!1607701)))

(declare-fun call!161007 () Regex!7567)

(declare-fun bm!161000 () Bool)

(declare-fun c!407118 () Bool)

(assert (=> bm!161000 (= call!161007 (derivativeStep!2136 (ite c!407116 (regOne!15647 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))) (ite c!407118 (reg!7896 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))) (regOne!15646 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))))) c!14016))))

(declare-fun call!161006 () Regex!7567)

(declare-fun bm!161001 () Bool)

(assert (=> bm!161001 (= call!161006 (derivativeStep!2136 (ite c!407116 (regTwo!15647 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))) (regTwo!15646 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))) c!14016))))

(declare-fun b!2542553 () Bool)

(assert (=> b!2542553 (= e!1607701 (Union!7567 call!161007 call!161006))))

(declare-fun b!2542554 () Bool)

(assert (=> b!2542554 (= e!1607698 (ite (= c!14016 (c!406763 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542556 () Bool)

(declare-fun c!407117 () Bool)

(assert (=> b!2542556 (= c!407117 (nullable!2484 (regOne!15646 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))))))

(declare-fun e!1607699 () Regex!7567)

(declare-fun e!1607700 () Regex!7567)

(assert (=> b!2542556 (= e!1607699 e!1607700)))

(declare-fun bm!161002 () Bool)

(declare-fun call!161005 () Regex!7567)

(assert (=> bm!161002 (= call!161005 call!161007)))

(declare-fun b!2542557 () Bool)

(declare-fun e!1607702 () Regex!7567)

(assert (=> b!2542557 (= e!1607702 e!1607698)))

(declare-fun c!407114 () Bool)

(assert (=> b!2542557 (= c!407114 ((_ is ElementMatch!7567) (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))))))

(declare-fun call!161008 () Regex!7567)

(declare-fun b!2542558 () Bool)

(assert (=> b!2542558 (= e!1607700 (Union!7567 (Concat!12263 call!161008 (regTwo!15646 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))) call!161006))))

(declare-fun d!721989 () Bool)

(declare-fun lt!902104 () Regex!7567)

(assert (=> d!721989 (validRegex!3193 lt!902104)))

(assert (=> d!721989 (= lt!902104 e!1607702)))

(declare-fun c!407115 () Bool)

(assert (=> d!721989 (= c!407115 (or ((_ is EmptyExpr!7567) (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))) ((_ is EmptyLang!7567) (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))))))

(assert (=> d!721989 (validRegex!3193 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))))

(assert (=> d!721989 (= (derivativeStep!2136 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)) c!14016) lt!902104)))

(declare-fun b!2542555 () Bool)

(assert (=> b!2542555 (= e!1607702 EmptyLang!7567)))

(declare-fun b!2542559 () Bool)

(assert (=> b!2542559 (= e!1607699 (Concat!12263 call!161005 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))))))

(declare-fun b!2542560 () Bool)

(assert (=> b!2542560 (= e!1607701 e!1607699)))

(assert (=> b!2542560 (= c!407118 ((_ is Star!7567) (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340))))))

(declare-fun bm!161003 () Bool)

(assert (=> bm!161003 (= call!161008 call!161005)))

(declare-fun b!2542561 () Bool)

(assert (=> b!2542561 (= e!1607700 (Union!7567 (Concat!12263 call!161008 (regTwo!15646 (ite c!406887 (regTwo!15647 r!27340) (regTwo!15646 r!27340)))) EmptyLang!7567))))

(assert (= (and d!721989 c!407115) b!2542555))

(assert (= (and d!721989 (not c!407115)) b!2542557))

(assert (= (and b!2542557 c!407114) b!2542554))

(assert (= (and b!2542557 (not c!407114)) b!2542552))

(assert (= (and b!2542552 c!407116) b!2542553))

(assert (= (and b!2542552 (not c!407116)) b!2542560))

(assert (= (and b!2542560 c!407118) b!2542559))

(assert (= (and b!2542560 (not c!407118)) b!2542556))

(assert (= (and b!2542556 c!407117) b!2542558))

(assert (= (and b!2542556 (not c!407117)) b!2542561))

(assert (= (or b!2542558 b!2542561) bm!161003))

(assert (= (or b!2542559 bm!161003) bm!161002))

(assert (= (or b!2542553 b!2542558) bm!161001))

(assert (= (or b!2542553 bm!161002) bm!161000))

(declare-fun m!2888993 () Bool)

(assert (=> bm!161000 m!2888993))

(declare-fun m!2888995 () Bool)

(assert (=> bm!161001 m!2888995))

(declare-fun m!2888999 () Bool)

(assert (=> b!2542556 m!2888999))

(declare-fun m!2889001 () Bool)

(assert (=> d!721989 m!2889001))

(declare-fun m!2889003 () Bool)

(assert (=> d!721989 m!2889003))

(assert (=> bm!160780 d!721989))

(declare-fun d!721991 () Bool)

(declare-fun lt!902105 () Regex!7567)

(assert (=> d!721991 (validRegex!3193 lt!902105)))

(declare-fun e!1607703 () Regex!7567)

(assert (=> d!721991 (= lt!902105 e!1607703)))

(declare-fun c!407119 () Bool)

(assert (=> d!721991 (= c!407119 ((_ is Cons!29532) (t!211331 lt!902004)))))

(assert (=> d!721991 (validRegex!3193 (derivativeStep!2136 (regOne!15647 r!27340) (h!34952 lt!902004)))))

(assert (=> d!721991 (= (derivative!262 (derivativeStep!2136 (regOne!15647 r!27340) (h!34952 lt!902004)) (t!211331 lt!902004)) lt!902105)))

(declare-fun b!2542562 () Bool)

(assert (=> b!2542562 (= e!1607703 (derivative!262 (derivativeStep!2136 (derivativeStep!2136 (regOne!15647 r!27340) (h!34952 lt!902004)) (h!34952 (t!211331 lt!902004))) (t!211331 (t!211331 lt!902004))))))

(declare-fun b!2542563 () Bool)

(assert (=> b!2542563 (= e!1607703 (derivativeStep!2136 (regOne!15647 r!27340) (h!34952 lt!902004)))))

(assert (= (and d!721991 c!407119) b!2542562))

(assert (= (and d!721991 (not c!407119)) b!2542563))

(declare-fun m!2889009 () Bool)

(assert (=> d!721991 m!2889009))

(assert (=> d!721991 m!2888249))

(declare-fun m!2889011 () Bool)

(assert (=> d!721991 m!2889011))

(assert (=> b!2542562 m!2888249))

(declare-fun m!2889013 () Bool)

(assert (=> b!2542562 m!2889013))

(assert (=> b!2542562 m!2889013))

(declare-fun m!2889015 () Bool)

(assert (=> b!2542562 m!2889015))

(assert (=> b!2541541 d!721991))

(declare-fun b!2542573 () Bool)

(declare-fun c!407124 () Bool)

(assert (=> b!2542573 (= c!407124 ((_ is Union!7567) (regOne!15647 r!27340)))))

(declare-fun e!1607711 () Regex!7567)

(declare-fun e!1607714 () Regex!7567)

(assert (=> b!2542573 (= e!1607711 e!1607714)))

(declare-fun call!161014 () Regex!7567)

(declare-fun bm!161007 () Bool)

(declare-fun c!407126 () Bool)

(assert (=> bm!161007 (= call!161014 (derivativeStep!2136 (ite c!407124 (regOne!15647 (regOne!15647 r!27340)) (ite c!407126 (reg!7896 (regOne!15647 r!27340)) (regOne!15646 (regOne!15647 r!27340)))) (h!34952 lt!902004)))))

(declare-fun bm!161008 () Bool)

(declare-fun call!161013 () Regex!7567)

(assert (=> bm!161008 (= call!161013 (derivativeStep!2136 (ite c!407124 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))) (h!34952 lt!902004)))))

(declare-fun b!2542574 () Bool)

(assert (=> b!2542574 (= e!1607714 (Union!7567 call!161014 call!161013))))

(declare-fun b!2542575 () Bool)

(assert (=> b!2542575 (= e!1607711 (ite (= (h!34952 lt!902004) (c!406763 (regOne!15647 r!27340))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542577 () Bool)

(declare-fun c!407125 () Bool)

(assert (=> b!2542577 (= c!407125 (nullable!2484 (regOne!15646 (regOne!15647 r!27340))))))

(declare-fun e!1607712 () Regex!7567)

(declare-fun e!1607713 () Regex!7567)

(assert (=> b!2542577 (= e!1607712 e!1607713)))

(declare-fun bm!161009 () Bool)

(declare-fun call!161012 () Regex!7567)

(assert (=> bm!161009 (= call!161012 call!161014)))

(declare-fun b!2542578 () Bool)

(declare-fun e!1607715 () Regex!7567)

(assert (=> b!2542578 (= e!1607715 e!1607711)))

(declare-fun c!407122 () Bool)

(assert (=> b!2542578 (= c!407122 ((_ is ElementMatch!7567) (regOne!15647 r!27340)))))

(declare-fun call!161015 () Regex!7567)

(declare-fun b!2542579 () Bool)

(assert (=> b!2542579 (= e!1607713 (Union!7567 (Concat!12263 call!161015 (regTwo!15646 (regOne!15647 r!27340))) call!161013))))

(declare-fun d!721995 () Bool)

(declare-fun lt!902106 () Regex!7567)

(assert (=> d!721995 (validRegex!3193 lt!902106)))

(assert (=> d!721995 (= lt!902106 e!1607715)))

(declare-fun c!407123 () Bool)

(assert (=> d!721995 (= c!407123 (or ((_ is EmptyExpr!7567) (regOne!15647 r!27340)) ((_ is EmptyLang!7567) (regOne!15647 r!27340))))))

(assert (=> d!721995 (validRegex!3193 (regOne!15647 r!27340))))

(assert (=> d!721995 (= (derivativeStep!2136 (regOne!15647 r!27340) (h!34952 lt!902004)) lt!902106)))

(declare-fun b!2542576 () Bool)

(assert (=> b!2542576 (= e!1607715 EmptyLang!7567)))

(declare-fun b!2542580 () Bool)

(assert (=> b!2542580 (= e!1607712 (Concat!12263 call!161012 (regOne!15647 r!27340)))))

(declare-fun b!2542581 () Bool)

(assert (=> b!2542581 (= e!1607714 e!1607712)))

(assert (=> b!2542581 (= c!407126 ((_ is Star!7567) (regOne!15647 r!27340)))))

(declare-fun bm!161010 () Bool)

(assert (=> bm!161010 (= call!161015 call!161012)))

(declare-fun b!2542582 () Bool)

(assert (=> b!2542582 (= e!1607713 (Union!7567 (Concat!12263 call!161015 (regTwo!15646 (regOne!15647 r!27340))) EmptyLang!7567))))

(assert (= (and d!721995 c!407123) b!2542576))

(assert (= (and d!721995 (not c!407123)) b!2542578))

(assert (= (and b!2542578 c!407122) b!2542575))

(assert (= (and b!2542578 (not c!407122)) b!2542573))

(assert (= (and b!2542573 c!407124) b!2542574))

(assert (= (and b!2542573 (not c!407124)) b!2542581))

(assert (= (and b!2542581 c!407126) b!2542580))

(assert (= (and b!2542581 (not c!407126)) b!2542577))

(assert (= (and b!2542577 c!407125) b!2542579))

(assert (= (and b!2542577 (not c!407125)) b!2542582))

(assert (= (or b!2542579 b!2542582) bm!161010))

(assert (= (or b!2542580 bm!161010) bm!161009))

(assert (= (or b!2542574 b!2542579) bm!161008))

(assert (= (or b!2542574 bm!161009) bm!161007))

(declare-fun m!2889017 () Bool)

(assert (=> bm!161007 m!2889017))

(declare-fun m!2889019 () Bool)

(assert (=> bm!161008 m!2889019))

(assert (=> b!2542577 m!2888363))

(declare-fun m!2889023 () Bool)

(assert (=> d!721995 m!2889023))

(assert (=> d!721995 m!2888151))

(assert (=> b!2541541 d!721995))

(assert (=> d!721663 d!721785))

(assert (=> d!721663 d!721773))

(declare-fun b!2542583 () Bool)

(declare-fun c!407129 () Bool)

(assert (=> b!2542583 (= c!407129 ((_ is Union!7567) (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))))))

(declare-fun e!1607716 () Regex!7567)

(declare-fun e!1607719 () Regex!7567)

(assert (=> b!2542583 (= e!1607716 e!1607719)))

(declare-fun call!161018 () Regex!7567)

(declare-fun bm!161011 () Bool)

(declare-fun c!407131 () Bool)

(assert (=> bm!161011 (= call!161018 (derivativeStep!2136 (ite c!407129 (regOne!15647 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))) (ite c!407131 (reg!7896 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))) (regOne!15646 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))))) c!14016))))

(declare-fun bm!161012 () Bool)

(declare-fun call!161017 () Regex!7567)

(assert (=> bm!161012 (= call!161017 (derivativeStep!2136 (ite c!407129 (regTwo!15647 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))) (regTwo!15646 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))) c!14016))))

(declare-fun b!2542584 () Bool)

(assert (=> b!2542584 (= e!1607719 (Union!7567 call!161018 call!161017))))

(declare-fun b!2542585 () Bool)

(assert (=> b!2542585 (= e!1607716 (ite (= c!14016 (c!406763 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))) EmptyExpr!7567 EmptyLang!7567))))

(declare-fun b!2542587 () Bool)

(declare-fun c!407130 () Bool)

(assert (=> b!2542587 (= c!407130 (nullable!2484 (regOne!15646 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))))))

(declare-fun e!1607717 () Regex!7567)

(declare-fun e!1607718 () Regex!7567)

(assert (=> b!2542587 (= e!1607717 e!1607718)))

(declare-fun bm!161013 () Bool)

(declare-fun call!161016 () Regex!7567)

(assert (=> bm!161013 (= call!161016 call!161018)))

(declare-fun b!2542588 () Bool)

(declare-fun e!1607720 () Regex!7567)

(assert (=> b!2542588 (= e!1607720 e!1607716)))

(declare-fun c!407127 () Bool)

(assert (=> b!2542588 (= c!407127 ((_ is ElementMatch!7567) (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))))))

(declare-fun call!161019 () Regex!7567)

(declare-fun b!2542589 () Bool)

(assert (=> b!2542589 (= e!1607718 (Union!7567 (Concat!12263 call!161019 (regTwo!15646 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))) call!161017))))

(declare-fun d!721997 () Bool)

(declare-fun lt!902107 () Regex!7567)

(assert (=> d!721997 (validRegex!3193 lt!902107)))

(assert (=> d!721997 (= lt!902107 e!1607720)))

(declare-fun c!407128 () Bool)

(assert (=> d!721997 (= c!407128 (or ((_ is EmptyExpr!7567) (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))) ((_ is EmptyLang!7567) (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))))))

(assert (=> d!721997 (validRegex!3193 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))))

(assert (=> d!721997 (= (derivativeStep!2136 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))) c!14016) lt!902107)))

(declare-fun b!2542586 () Bool)

(assert (=> b!2542586 (= e!1607720 EmptyLang!7567)))

(declare-fun b!2542590 () Bool)

(assert (=> b!2542590 (= e!1607717 (Concat!12263 call!161016 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))))))

(declare-fun b!2542591 () Bool)

(assert (=> b!2542591 (= e!1607719 e!1607717)))

(assert (=> b!2542591 (= c!407131 ((_ is Star!7567) (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340)))))))

(declare-fun bm!161014 () Bool)

(assert (=> bm!161014 (= call!161019 call!161016)))

(declare-fun b!2542592 () Bool)

(assert (=> b!2542592 (= e!1607718 (Union!7567 (Concat!12263 call!161019 (regTwo!15646 (ite c!406869 (regTwo!15647 (regOne!15647 r!27340)) (regTwo!15646 (regOne!15647 r!27340))))) EmptyLang!7567))))

(assert (= (and d!721997 c!407128) b!2542586))

(assert (= (and d!721997 (not c!407128)) b!2542588))

(assert (= (and b!2542588 c!407127) b!2542585))

(assert (= (and b!2542588 (not c!407127)) b!2542583))

(assert (= (and b!2542583 c!407129) b!2542584))

(assert (= (and b!2542583 (not c!407129)) b!2542591))

(assert (= (and b!2542591 c!407131) b!2542590))

(assert (= (and b!2542591 (not c!407131)) b!2542587))

(assert (= (and b!2542587 c!407130) b!2542589))

(assert (= (and b!2542587 (not c!407130)) b!2542592))

(assert (= (or b!2542589 b!2542592) bm!161014))

(assert (= (or b!2542590 bm!161014) bm!161013))

(assert (= (or b!2542584 b!2542589) bm!161012))

(assert (= (or b!2542584 bm!161013) bm!161011))

(declare-fun m!2889029 () Bool)

(assert (=> bm!161011 m!2889029))

(declare-fun m!2889031 () Bool)

(assert (=> bm!161012 m!2889031))

(declare-fun m!2889033 () Bool)

(assert (=> b!2542587 m!2889033))

(declare-fun m!2889035 () Bool)

(assert (=> d!721997 m!2889035))

(declare-fun m!2889037 () Bool)

(assert (=> d!721997 m!2889037))

(assert (=> bm!160763 d!721997))

(declare-fun b!2542593 () Bool)

(declare-fun e!1607725 () Bool)

(declare-fun e!1607726 () Bool)

(assert (=> b!2542593 (= e!1607725 e!1607726)))

(declare-fun res!1071691 () Bool)

(declare-fun call!161021 () Bool)

(assert (=> b!2542593 (= res!1071691 call!161021)))

(assert (=> b!2542593 (=> res!1071691 e!1607726)))

(declare-fun b!2542594 () Bool)

(declare-fun e!1607723 () Bool)

(assert (=> b!2542594 (= e!1607725 e!1607723)))

(declare-fun res!1071688 () Bool)

(declare-fun call!161020 () Bool)

(assert (=> b!2542594 (= res!1071688 call!161020)))

(assert (=> b!2542594 (=> (not res!1071688) (not e!1607723))))

(declare-fun d!722005 () Bool)

(declare-fun res!1071687 () Bool)

(declare-fun e!1607722 () Bool)

(assert (=> d!722005 (=> res!1071687 e!1607722)))

(assert (=> d!722005 (= res!1071687 ((_ is EmptyExpr!7567) (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))

(assert (=> d!722005 (= (nullableFct!715 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)) e!1607722)))

(declare-fun b!2542595 () Bool)

(declare-fun e!1607721 () Bool)

(assert (=> b!2542595 (= e!1607722 e!1607721)))

(declare-fun res!1071690 () Bool)

(assert (=> b!2542595 (=> (not res!1071690) (not e!1607721))))

(assert (=> b!2542595 (= res!1071690 (and (not ((_ is EmptyLang!7567) (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7567) (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!161015 () Bool)

(declare-fun c!407132 () Bool)

(assert (=> bm!161015 (= call!161020 (nullable!2484 (ite c!407132 (regTwo!15647 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)) (regOne!15646 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2542596 () Bool)

(declare-fun e!1607724 () Bool)

(assert (=> b!2542596 (= e!1607724 e!1607725)))

(assert (=> b!2542596 (= c!407132 ((_ is Union!7567) (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))

(declare-fun b!2542597 () Bool)

(assert (=> b!2542597 (= e!1607723 call!161021)))

(declare-fun b!2542598 () Bool)

(assert (=> b!2542598 (= e!1607721 e!1607724)))

(declare-fun res!1071689 () Bool)

(assert (=> b!2542598 (=> res!1071689 e!1607724)))

(assert (=> b!2542598 (= res!1071689 ((_ is Star!7567) (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))

(declare-fun b!2542599 () Bool)

(assert (=> b!2542599 (= e!1607726 call!161020)))

(declare-fun bm!161016 () Bool)

(assert (=> bm!161016 (= call!161021 (nullable!2484 (ite c!407132 (regOne!15647 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)) (regTwo!15646 (derivative!262 (derivativeStep!2136 r!27340 c!14016) tl!4068)))))))

(assert (= (and d!722005 (not res!1071687)) b!2542595))

(assert (= (and b!2542595 res!1071690) b!2542598))

(assert (= (and b!2542598 (not res!1071689)) b!2542596))

(assert (= (and b!2542596 c!407132) b!2542593))

(assert (= (and b!2542596 (not c!407132)) b!2542594))

(assert (= (and b!2542593 (not res!1071691)) b!2542599))

(assert (= (and b!2542594 res!1071688) b!2542597))

(assert (= (or b!2542599 b!2542594) bm!161015))

(assert (= (or b!2542593 b!2542597) bm!161016))

(declare-fun m!2889039 () Bool)

(assert (=> bm!161015 m!2889039))

(declare-fun m!2889041 () Bool)

(assert (=> bm!161016 m!2889041))

(assert (=> d!721727 d!722005))

(declare-fun d!722007 () Bool)

(assert (not d!722007))

(assert (=> b!2541376 d!722007))

(declare-fun d!722009 () Bool)

(assert (not d!722009))

(assert (=> b!2541376 d!722009))

(assert (=> b!2541376 d!721825))

(assert (=> b!2541376 d!721743))

(assert (=> b!2541406 d!721739))

(assert (=> b!2541406 d!721743))

(declare-fun d!722011 () Bool)

(assert (=> d!722011 (= (nullable!2484 (regOne!15646 r!27340)) (nullableFct!715 (regOne!15646 r!27340)))))

(declare-fun bs!469440 () Bool)

(assert (= bs!469440 d!722011))

(declare-fun m!2889043 () Bool)

(assert (=> bs!469440 m!2889043))

(assert (=> b!2541770 d!722011))

(declare-fun e!1607732 () Bool)

(assert (=> b!2541803 (= tp!811628 e!1607732)))

(declare-fun b!2542612 () Bool)

(declare-fun tp!811635 () Bool)

(assert (=> b!2542612 (= e!1607732 tp!811635)))

(declare-fun b!2542610 () Bool)

(assert (=> b!2542610 (= e!1607732 tp_is_empty!12989)))

(declare-fun b!2542611 () Bool)

(declare-fun tp!811636 () Bool)

(declare-fun tp!811637 () Bool)

(assert (=> b!2542611 (= e!1607732 (and tp!811636 tp!811637))))

(declare-fun b!2542613 () Bool)

(declare-fun tp!811639 () Bool)

(declare-fun tp!811638 () Bool)

(assert (=> b!2542613 (= e!1607732 (and tp!811639 tp!811638))))

(assert (= (and b!2541803 ((_ is ElementMatch!7567) (regOne!15646 (reg!7896 r!27340)))) b!2542610))

(assert (= (and b!2541803 ((_ is Concat!12263) (regOne!15646 (reg!7896 r!27340)))) b!2542611))

(assert (= (and b!2541803 ((_ is Star!7567) (regOne!15646 (reg!7896 r!27340)))) b!2542612))

(assert (= (and b!2541803 ((_ is Union!7567) (regOne!15646 (reg!7896 r!27340)))) b!2542613))

(declare-fun e!1607733 () Bool)

(assert (=> b!2541803 (= tp!811629 e!1607733)))

(declare-fun b!2542616 () Bool)

(declare-fun tp!811640 () Bool)

(assert (=> b!2542616 (= e!1607733 tp!811640)))

(declare-fun b!2542614 () Bool)

(assert (=> b!2542614 (= e!1607733 tp_is_empty!12989)))

(declare-fun b!2542615 () Bool)

(declare-fun tp!811641 () Bool)

(declare-fun tp!811642 () Bool)

(assert (=> b!2542615 (= e!1607733 (and tp!811641 tp!811642))))

(declare-fun b!2542617 () Bool)

(declare-fun tp!811644 () Bool)

(declare-fun tp!811643 () Bool)

(assert (=> b!2542617 (= e!1607733 (and tp!811644 tp!811643))))

(assert (= (and b!2541803 ((_ is ElementMatch!7567) (regTwo!15646 (reg!7896 r!27340)))) b!2542614))

(assert (= (and b!2541803 ((_ is Concat!12263) (regTwo!15646 (reg!7896 r!27340)))) b!2542615))

(assert (= (and b!2541803 ((_ is Star!7567) (regTwo!15646 (reg!7896 r!27340)))) b!2542616))

(assert (= (and b!2541803 ((_ is Union!7567) (regTwo!15646 (reg!7896 r!27340)))) b!2542617))

(declare-fun e!1607734 () Bool)

(assert (=> b!2541804 (= tp!811627 e!1607734)))

(declare-fun b!2542620 () Bool)

(declare-fun tp!811645 () Bool)

(assert (=> b!2542620 (= e!1607734 tp!811645)))

(declare-fun b!2542618 () Bool)

(assert (=> b!2542618 (= e!1607734 tp_is_empty!12989)))

(declare-fun b!2542619 () Bool)

(declare-fun tp!811646 () Bool)

(declare-fun tp!811647 () Bool)

(assert (=> b!2542619 (= e!1607734 (and tp!811646 tp!811647))))

(declare-fun b!2542621 () Bool)

(declare-fun tp!811649 () Bool)

(declare-fun tp!811648 () Bool)

(assert (=> b!2542621 (= e!1607734 (and tp!811649 tp!811648))))

(assert (= (and b!2541804 ((_ is ElementMatch!7567) (reg!7896 (reg!7896 r!27340)))) b!2542618))

(assert (= (and b!2541804 ((_ is Concat!12263) (reg!7896 (reg!7896 r!27340)))) b!2542619))

(assert (= (and b!2541804 ((_ is Star!7567) (reg!7896 (reg!7896 r!27340)))) b!2542620))

(assert (= (and b!2541804 ((_ is Union!7567) (reg!7896 (reg!7896 r!27340)))) b!2542621))

(declare-fun e!1607735 () Bool)

(assert (=> b!2541795 (= tp!811618 e!1607735)))

(declare-fun b!2542624 () Bool)

(declare-fun tp!811650 () Bool)

(assert (=> b!2542624 (= e!1607735 tp!811650)))

(declare-fun b!2542622 () Bool)

(assert (=> b!2542622 (= e!1607735 tp_is_empty!12989)))

(declare-fun b!2542623 () Bool)

(declare-fun tp!811651 () Bool)

(declare-fun tp!811652 () Bool)

(assert (=> b!2542623 (= e!1607735 (and tp!811651 tp!811652))))

(declare-fun b!2542625 () Bool)

(declare-fun tp!811654 () Bool)

(declare-fun tp!811653 () Bool)

(assert (=> b!2542625 (= e!1607735 (and tp!811654 tp!811653))))

(assert (= (and b!2541795 ((_ is ElementMatch!7567) (regOne!15646 (regOne!15647 r!27340)))) b!2542622))

(assert (= (and b!2541795 ((_ is Concat!12263) (regOne!15646 (regOne!15647 r!27340)))) b!2542623))

(assert (= (and b!2541795 ((_ is Star!7567) (regOne!15646 (regOne!15647 r!27340)))) b!2542624))

(assert (= (and b!2541795 ((_ is Union!7567) (regOne!15646 (regOne!15647 r!27340)))) b!2542625))

(declare-fun e!1607736 () Bool)

(assert (=> b!2541795 (= tp!811619 e!1607736)))

(declare-fun b!2542628 () Bool)

(declare-fun tp!811655 () Bool)

(assert (=> b!2542628 (= e!1607736 tp!811655)))

(declare-fun b!2542626 () Bool)

(assert (=> b!2542626 (= e!1607736 tp_is_empty!12989)))

(declare-fun b!2542627 () Bool)

(declare-fun tp!811656 () Bool)

(declare-fun tp!811657 () Bool)

(assert (=> b!2542627 (= e!1607736 (and tp!811656 tp!811657))))

(declare-fun b!2542629 () Bool)

(declare-fun tp!811659 () Bool)

(declare-fun tp!811658 () Bool)

(assert (=> b!2542629 (= e!1607736 (and tp!811659 tp!811658))))

(assert (= (and b!2541795 ((_ is ElementMatch!7567) (regTwo!15646 (regOne!15647 r!27340)))) b!2542626))

(assert (= (and b!2541795 ((_ is Concat!12263) (regTwo!15646 (regOne!15647 r!27340)))) b!2542627))

(assert (= (and b!2541795 ((_ is Star!7567) (regTwo!15646 (regOne!15647 r!27340)))) b!2542628))

(assert (= (and b!2541795 ((_ is Union!7567) (regTwo!15646 (regOne!15647 r!27340)))) b!2542629))

(declare-fun e!1607738 () Bool)

(assert (=> b!2541799 (= tp!811623 e!1607738)))

(declare-fun b!2542634 () Bool)

(declare-fun tp!811660 () Bool)

(assert (=> b!2542634 (= e!1607738 tp!811660)))

(declare-fun b!2542632 () Bool)

(assert (=> b!2542632 (= e!1607738 tp_is_empty!12989)))

(declare-fun b!2542633 () Bool)

(declare-fun tp!811661 () Bool)

(declare-fun tp!811662 () Bool)

(assert (=> b!2542633 (= e!1607738 (and tp!811661 tp!811662))))

(declare-fun b!2542635 () Bool)

(declare-fun tp!811664 () Bool)

(declare-fun tp!811663 () Bool)

(assert (=> b!2542635 (= e!1607738 (and tp!811664 tp!811663))))

(assert (= (and b!2541799 ((_ is ElementMatch!7567) (regOne!15646 (regTwo!15647 r!27340)))) b!2542632))

(assert (= (and b!2541799 ((_ is Concat!12263) (regOne!15646 (regTwo!15647 r!27340)))) b!2542633))

(assert (= (and b!2541799 ((_ is Star!7567) (regOne!15646 (regTwo!15647 r!27340)))) b!2542634))

(assert (= (and b!2541799 ((_ is Union!7567) (regOne!15646 (regTwo!15647 r!27340)))) b!2542635))

(declare-fun e!1607739 () Bool)

(assert (=> b!2541799 (= tp!811624 e!1607739)))

(declare-fun b!2542638 () Bool)

(declare-fun tp!811665 () Bool)

(assert (=> b!2542638 (= e!1607739 tp!811665)))

(declare-fun b!2542636 () Bool)

(assert (=> b!2542636 (= e!1607739 tp_is_empty!12989)))

(declare-fun b!2542637 () Bool)

(declare-fun tp!811666 () Bool)

(declare-fun tp!811667 () Bool)

(assert (=> b!2542637 (= e!1607739 (and tp!811666 tp!811667))))

(declare-fun b!2542639 () Bool)

(declare-fun tp!811669 () Bool)

(declare-fun tp!811668 () Bool)

(assert (=> b!2542639 (= e!1607739 (and tp!811669 tp!811668))))

(assert (= (and b!2541799 ((_ is ElementMatch!7567) (regTwo!15646 (regTwo!15647 r!27340)))) b!2542636))

(assert (= (and b!2541799 ((_ is Concat!12263) (regTwo!15646 (regTwo!15647 r!27340)))) b!2542637))

(assert (= (and b!2541799 ((_ is Star!7567) (regTwo!15646 (regTwo!15647 r!27340)))) b!2542638))

(assert (= (and b!2541799 ((_ is Union!7567) (regTwo!15646 (regTwo!15647 r!27340)))) b!2542639))

(declare-fun e!1607740 () Bool)

(assert (=> b!2541796 (= tp!811617 e!1607740)))

(declare-fun b!2542642 () Bool)

(declare-fun tp!811670 () Bool)

(assert (=> b!2542642 (= e!1607740 tp!811670)))

(declare-fun b!2542640 () Bool)

(assert (=> b!2542640 (= e!1607740 tp_is_empty!12989)))

(declare-fun b!2542641 () Bool)

(declare-fun tp!811671 () Bool)

(declare-fun tp!811672 () Bool)

(assert (=> b!2542641 (= e!1607740 (and tp!811671 tp!811672))))

(declare-fun b!2542643 () Bool)

(declare-fun tp!811674 () Bool)

(declare-fun tp!811673 () Bool)

(assert (=> b!2542643 (= e!1607740 (and tp!811674 tp!811673))))

(assert (= (and b!2541796 ((_ is ElementMatch!7567) (reg!7896 (regOne!15647 r!27340)))) b!2542640))

(assert (= (and b!2541796 ((_ is Concat!12263) (reg!7896 (regOne!15647 r!27340)))) b!2542641))

(assert (= (and b!2541796 ((_ is Star!7567) (reg!7896 (regOne!15647 r!27340)))) b!2542642))

(assert (= (and b!2541796 ((_ is Union!7567) (reg!7896 (regOne!15647 r!27340)))) b!2542643))

(declare-fun e!1607746 () Bool)

(assert (=> b!2541787 (= tp!811608 e!1607746)))

(declare-fun b!2542655 () Bool)

(declare-fun tp!811675 () Bool)

(assert (=> b!2542655 (= e!1607746 tp!811675)))

(declare-fun b!2542651 () Bool)

(assert (=> b!2542651 (= e!1607746 tp_is_empty!12989)))

(declare-fun b!2542653 () Bool)

(declare-fun tp!811676 () Bool)

(declare-fun tp!811677 () Bool)

(assert (=> b!2542653 (= e!1607746 (and tp!811676 tp!811677))))

(declare-fun b!2542656 () Bool)

(declare-fun tp!811679 () Bool)

(declare-fun tp!811678 () Bool)

(assert (=> b!2542656 (= e!1607746 (and tp!811679 tp!811678))))

(assert (= (and b!2541787 ((_ is ElementMatch!7567) (regOne!15646 (regOne!15646 r!27340)))) b!2542651))

(assert (= (and b!2541787 ((_ is Concat!12263) (regOne!15646 (regOne!15646 r!27340)))) b!2542653))

(assert (= (and b!2541787 ((_ is Star!7567) (regOne!15646 (regOne!15646 r!27340)))) b!2542655))

(assert (= (and b!2541787 ((_ is Union!7567) (regOne!15646 (regOne!15646 r!27340)))) b!2542656))

(declare-fun e!1607747 () Bool)

(assert (=> b!2541787 (= tp!811609 e!1607747)))

(declare-fun b!2542660 () Bool)

(declare-fun tp!811680 () Bool)

(assert (=> b!2542660 (= e!1607747 tp!811680)))

(declare-fun b!2542658 () Bool)

(assert (=> b!2542658 (= e!1607747 tp_is_empty!12989)))

(declare-fun b!2542659 () Bool)

(declare-fun tp!811681 () Bool)

(declare-fun tp!811682 () Bool)

(assert (=> b!2542659 (= e!1607747 (and tp!811681 tp!811682))))

(declare-fun b!2542661 () Bool)

(declare-fun tp!811684 () Bool)

(declare-fun tp!811683 () Bool)

(assert (=> b!2542661 (= e!1607747 (and tp!811684 tp!811683))))

(assert (= (and b!2541787 ((_ is ElementMatch!7567) (regTwo!15646 (regOne!15646 r!27340)))) b!2542658))

(assert (= (and b!2541787 ((_ is Concat!12263) (regTwo!15646 (regOne!15646 r!27340)))) b!2542659))

(assert (= (and b!2541787 ((_ is Star!7567) (regTwo!15646 (regOne!15646 r!27340)))) b!2542660))

(assert (= (and b!2541787 ((_ is Union!7567) (regTwo!15646 (regOne!15646 r!27340)))) b!2542661))

(declare-fun e!1607748 () Bool)

(assert (=> b!2541801 (= tp!811626 e!1607748)))

(declare-fun b!2542664 () Bool)

(declare-fun tp!811685 () Bool)

(assert (=> b!2542664 (= e!1607748 tp!811685)))

(declare-fun b!2542662 () Bool)

(assert (=> b!2542662 (= e!1607748 tp_is_empty!12989)))

(declare-fun b!2542663 () Bool)

(declare-fun tp!811686 () Bool)

(declare-fun tp!811687 () Bool)

(assert (=> b!2542663 (= e!1607748 (and tp!811686 tp!811687))))

(declare-fun b!2542665 () Bool)

(declare-fun tp!811689 () Bool)

(declare-fun tp!811688 () Bool)

(assert (=> b!2542665 (= e!1607748 (and tp!811689 tp!811688))))

(assert (= (and b!2541801 ((_ is ElementMatch!7567) (regOne!15647 (regTwo!15647 r!27340)))) b!2542662))

(assert (= (and b!2541801 ((_ is Concat!12263) (regOne!15647 (regTwo!15647 r!27340)))) b!2542663))

(assert (= (and b!2541801 ((_ is Star!7567) (regOne!15647 (regTwo!15647 r!27340)))) b!2542664))

(assert (= (and b!2541801 ((_ is Union!7567) (regOne!15647 (regTwo!15647 r!27340)))) b!2542665))

(declare-fun e!1607749 () Bool)

(assert (=> b!2541801 (= tp!811625 e!1607749)))

(declare-fun b!2542668 () Bool)

(declare-fun tp!811690 () Bool)

(assert (=> b!2542668 (= e!1607749 tp!811690)))

(declare-fun b!2542666 () Bool)

(assert (=> b!2542666 (= e!1607749 tp_is_empty!12989)))

(declare-fun b!2542667 () Bool)

(declare-fun tp!811691 () Bool)

(declare-fun tp!811692 () Bool)

(assert (=> b!2542667 (= e!1607749 (and tp!811691 tp!811692))))

(declare-fun b!2542669 () Bool)

(declare-fun tp!811694 () Bool)

(declare-fun tp!811693 () Bool)

(assert (=> b!2542669 (= e!1607749 (and tp!811694 tp!811693))))

(assert (= (and b!2541801 ((_ is ElementMatch!7567) (regTwo!15647 (regTwo!15647 r!27340)))) b!2542666))

(assert (= (and b!2541801 ((_ is Concat!12263) (regTwo!15647 (regTwo!15647 r!27340)))) b!2542667))

(assert (= (and b!2541801 ((_ is Star!7567) (regTwo!15647 (regTwo!15647 r!27340)))) b!2542668))

(assert (= (and b!2541801 ((_ is Union!7567) (regTwo!15647 (regTwo!15647 r!27340)))) b!2542669))

(declare-fun e!1607750 () Bool)

(assert (=> b!2541800 (= tp!811622 e!1607750)))

(declare-fun b!2542672 () Bool)

(declare-fun tp!811695 () Bool)

(assert (=> b!2542672 (= e!1607750 tp!811695)))

(declare-fun b!2542670 () Bool)

(assert (=> b!2542670 (= e!1607750 tp_is_empty!12989)))

(declare-fun b!2542671 () Bool)

(declare-fun tp!811696 () Bool)

(declare-fun tp!811697 () Bool)

(assert (=> b!2542671 (= e!1607750 (and tp!811696 tp!811697))))

(declare-fun b!2542673 () Bool)

(declare-fun tp!811699 () Bool)

(declare-fun tp!811698 () Bool)

(assert (=> b!2542673 (= e!1607750 (and tp!811699 tp!811698))))

(assert (= (and b!2541800 ((_ is ElementMatch!7567) (reg!7896 (regTwo!15647 r!27340)))) b!2542670))

(assert (= (and b!2541800 ((_ is Concat!12263) (reg!7896 (regTwo!15647 r!27340)))) b!2542671))

(assert (= (and b!2541800 ((_ is Star!7567) (reg!7896 (regTwo!15647 r!27340)))) b!2542672))

(assert (= (and b!2541800 ((_ is Union!7567) (reg!7896 (regTwo!15647 r!27340)))) b!2542673))

(declare-fun e!1607751 () Bool)

(assert (=> b!2541791 (= tp!811613 e!1607751)))

(declare-fun b!2542676 () Bool)

(declare-fun tp!811700 () Bool)

(assert (=> b!2542676 (= e!1607751 tp!811700)))

(declare-fun b!2542674 () Bool)

(assert (=> b!2542674 (= e!1607751 tp_is_empty!12989)))

(declare-fun b!2542675 () Bool)

(declare-fun tp!811701 () Bool)

(declare-fun tp!811702 () Bool)

(assert (=> b!2542675 (= e!1607751 (and tp!811701 tp!811702))))

(declare-fun b!2542677 () Bool)

(declare-fun tp!811704 () Bool)

(declare-fun tp!811703 () Bool)

(assert (=> b!2542677 (= e!1607751 (and tp!811704 tp!811703))))

(assert (= (and b!2541791 ((_ is ElementMatch!7567) (regOne!15646 (regTwo!15646 r!27340)))) b!2542674))

(assert (= (and b!2541791 ((_ is Concat!12263) (regOne!15646 (regTwo!15646 r!27340)))) b!2542675))

(assert (= (and b!2541791 ((_ is Star!7567) (regOne!15646 (regTwo!15646 r!27340)))) b!2542676))

(assert (= (and b!2541791 ((_ is Union!7567) (regOne!15646 (regTwo!15646 r!27340)))) b!2542677))

(declare-fun e!1607752 () Bool)

(assert (=> b!2541791 (= tp!811614 e!1607752)))

(declare-fun b!2542680 () Bool)

(declare-fun tp!811705 () Bool)

(assert (=> b!2542680 (= e!1607752 tp!811705)))

(declare-fun b!2542678 () Bool)

(assert (=> b!2542678 (= e!1607752 tp_is_empty!12989)))

(declare-fun b!2542679 () Bool)

(declare-fun tp!811706 () Bool)

(declare-fun tp!811707 () Bool)

(assert (=> b!2542679 (= e!1607752 (and tp!811706 tp!811707))))

(declare-fun b!2542681 () Bool)

(declare-fun tp!811709 () Bool)

(declare-fun tp!811708 () Bool)

(assert (=> b!2542681 (= e!1607752 (and tp!811709 tp!811708))))

(assert (= (and b!2541791 ((_ is ElementMatch!7567) (regTwo!15646 (regTwo!15646 r!27340)))) b!2542678))

(assert (= (and b!2541791 ((_ is Concat!12263) (regTwo!15646 (regTwo!15646 r!27340)))) b!2542679))

(assert (= (and b!2541791 ((_ is Star!7567) (regTwo!15646 (regTwo!15646 r!27340)))) b!2542680))

(assert (= (and b!2541791 ((_ is Union!7567) (regTwo!15646 (regTwo!15646 r!27340)))) b!2542681))

(declare-fun e!1607753 () Bool)

(assert (=> b!2541805 (= tp!811631 e!1607753)))

(declare-fun b!2542684 () Bool)

(declare-fun tp!811710 () Bool)

(assert (=> b!2542684 (= e!1607753 tp!811710)))

(declare-fun b!2542682 () Bool)

(assert (=> b!2542682 (= e!1607753 tp_is_empty!12989)))

(declare-fun b!2542683 () Bool)

(declare-fun tp!811711 () Bool)

(declare-fun tp!811712 () Bool)

(assert (=> b!2542683 (= e!1607753 (and tp!811711 tp!811712))))

(declare-fun b!2542685 () Bool)

(declare-fun tp!811714 () Bool)

(declare-fun tp!811713 () Bool)

(assert (=> b!2542685 (= e!1607753 (and tp!811714 tp!811713))))

(assert (= (and b!2541805 ((_ is ElementMatch!7567) (regOne!15647 (reg!7896 r!27340)))) b!2542682))

(assert (= (and b!2541805 ((_ is Concat!12263) (regOne!15647 (reg!7896 r!27340)))) b!2542683))

(assert (= (and b!2541805 ((_ is Star!7567) (regOne!15647 (reg!7896 r!27340)))) b!2542684))

(assert (= (and b!2541805 ((_ is Union!7567) (regOne!15647 (reg!7896 r!27340)))) b!2542685))

(declare-fun e!1607754 () Bool)

(assert (=> b!2541805 (= tp!811630 e!1607754)))

(declare-fun b!2542688 () Bool)

(declare-fun tp!811715 () Bool)

(assert (=> b!2542688 (= e!1607754 tp!811715)))

(declare-fun b!2542686 () Bool)

(assert (=> b!2542686 (= e!1607754 tp_is_empty!12989)))

(declare-fun b!2542687 () Bool)

(declare-fun tp!811716 () Bool)

(declare-fun tp!811717 () Bool)

(assert (=> b!2542687 (= e!1607754 (and tp!811716 tp!811717))))

(declare-fun b!2542689 () Bool)

(declare-fun tp!811719 () Bool)

(declare-fun tp!811718 () Bool)

(assert (=> b!2542689 (= e!1607754 (and tp!811719 tp!811718))))

(assert (= (and b!2541805 ((_ is ElementMatch!7567) (regTwo!15647 (reg!7896 r!27340)))) b!2542686))

(assert (= (and b!2541805 ((_ is Concat!12263) (regTwo!15647 (reg!7896 r!27340)))) b!2542687))

(assert (= (and b!2541805 ((_ is Star!7567) (regTwo!15647 (reg!7896 r!27340)))) b!2542688))

(assert (= (and b!2541805 ((_ is Union!7567) (regTwo!15647 (reg!7896 r!27340)))) b!2542689))

(declare-fun e!1607757 () Bool)

(assert (=> b!2541788 (= tp!811607 e!1607757)))

(declare-fun b!2542692 () Bool)

(declare-fun tp!811720 () Bool)

(assert (=> b!2542692 (= e!1607757 tp!811720)))

(declare-fun b!2542690 () Bool)

(assert (=> b!2542690 (= e!1607757 tp_is_empty!12989)))

(declare-fun b!2542691 () Bool)

(declare-fun tp!811721 () Bool)

(declare-fun tp!811722 () Bool)

(assert (=> b!2542691 (= e!1607757 (and tp!811721 tp!811722))))

(declare-fun b!2542693 () Bool)

(declare-fun tp!811724 () Bool)

(declare-fun tp!811723 () Bool)

(assert (=> b!2542693 (= e!1607757 (and tp!811724 tp!811723))))

(assert (= (and b!2541788 ((_ is ElementMatch!7567) (reg!7896 (regOne!15646 r!27340)))) b!2542690))

(assert (= (and b!2541788 ((_ is Concat!12263) (reg!7896 (regOne!15646 r!27340)))) b!2542691))

(assert (= (and b!2541788 ((_ is Star!7567) (reg!7896 (regOne!15646 r!27340)))) b!2542692))

(assert (= (and b!2541788 ((_ is Union!7567) (reg!7896 (regOne!15646 r!27340)))) b!2542693))

(declare-fun e!1607763 () Bool)

(assert (=> b!2541793 (= tp!811616 e!1607763)))

(declare-fun b!2542710 () Bool)

(declare-fun tp!811725 () Bool)

(assert (=> b!2542710 (= e!1607763 tp!811725)))

(declare-fun b!2542708 () Bool)

(assert (=> b!2542708 (= e!1607763 tp_is_empty!12989)))

(declare-fun b!2542709 () Bool)

(declare-fun tp!811726 () Bool)

(declare-fun tp!811727 () Bool)

(assert (=> b!2542709 (= e!1607763 (and tp!811726 tp!811727))))

(declare-fun b!2542711 () Bool)

(declare-fun tp!811729 () Bool)

(declare-fun tp!811728 () Bool)

(assert (=> b!2542711 (= e!1607763 (and tp!811729 tp!811728))))

(assert (= (and b!2541793 ((_ is ElementMatch!7567) (regOne!15647 (regTwo!15646 r!27340)))) b!2542708))

(assert (= (and b!2541793 ((_ is Concat!12263) (regOne!15647 (regTwo!15646 r!27340)))) b!2542709))

(assert (= (and b!2541793 ((_ is Star!7567) (regOne!15647 (regTwo!15646 r!27340)))) b!2542710))

(assert (= (and b!2541793 ((_ is Union!7567) (regOne!15647 (regTwo!15646 r!27340)))) b!2542711))

(declare-fun e!1607764 () Bool)

(assert (=> b!2541793 (= tp!811615 e!1607764)))

(declare-fun b!2542714 () Bool)

(declare-fun tp!811730 () Bool)

(assert (=> b!2542714 (= e!1607764 tp!811730)))

(declare-fun b!2542712 () Bool)

(assert (=> b!2542712 (= e!1607764 tp_is_empty!12989)))

(declare-fun b!2542713 () Bool)

(declare-fun tp!811731 () Bool)

(declare-fun tp!811732 () Bool)

(assert (=> b!2542713 (= e!1607764 (and tp!811731 tp!811732))))

(declare-fun b!2542715 () Bool)

(declare-fun tp!811734 () Bool)

(declare-fun tp!811733 () Bool)

(assert (=> b!2542715 (= e!1607764 (and tp!811734 tp!811733))))

(assert (= (and b!2541793 ((_ is ElementMatch!7567) (regTwo!15647 (regTwo!15646 r!27340)))) b!2542712))

(assert (= (and b!2541793 ((_ is Concat!12263) (regTwo!15647 (regTwo!15646 r!27340)))) b!2542713))

(assert (= (and b!2541793 ((_ is Star!7567) (regTwo!15647 (regTwo!15646 r!27340)))) b!2542714))

(assert (= (and b!2541793 ((_ is Union!7567) (regTwo!15647 (regTwo!15646 r!27340)))) b!2542715))

(declare-fun e!1607765 () Bool)

(assert (=> b!2541792 (= tp!811612 e!1607765)))

(declare-fun b!2542718 () Bool)

(declare-fun tp!811735 () Bool)

(assert (=> b!2542718 (= e!1607765 tp!811735)))

(declare-fun b!2542716 () Bool)

(assert (=> b!2542716 (= e!1607765 tp_is_empty!12989)))

(declare-fun b!2542717 () Bool)

(declare-fun tp!811736 () Bool)

(declare-fun tp!811737 () Bool)

(assert (=> b!2542717 (= e!1607765 (and tp!811736 tp!811737))))

(declare-fun b!2542719 () Bool)

(declare-fun tp!811739 () Bool)

(declare-fun tp!811738 () Bool)

(assert (=> b!2542719 (= e!1607765 (and tp!811739 tp!811738))))

(assert (= (and b!2541792 ((_ is ElementMatch!7567) (reg!7896 (regTwo!15646 r!27340)))) b!2542716))

(assert (= (and b!2541792 ((_ is Concat!12263) (reg!7896 (regTwo!15646 r!27340)))) b!2542717))

(assert (= (and b!2541792 ((_ is Star!7567) (reg!7896 (regTwo!15646 r!27340)))) b!2542718))

(assert (= (and b!2541792 ((_ is Union!7567) (reg!7896 (regTwo!15646 r!27340)))) b!2542719))

(declare-fun e!1607766 () Bool)

(assert (=> b!2541797 (= tp!811621 e!1607766)))

(declare-fun b!2542722 () Bool)

(declare-fun tp!811740 () Bool)

(assert (=> b!2542722 (= e!1607766 tp!811740)))

(declare-fun b!2542720 () Bool)

(assert (=> b!2542720 (= e!1607766 tp_is_empty!12989)))

(declare-fun b!2542721 () Bool)

(declare-fun tp!811741 () Bool)

(declare-fun tp!811742 () Bool)

(assert (=> b!2542721 (= e!1607766 (and tp!811741 tp!811742))))

(declare-fun b!2542723 () Bool)

(declare-fun tp!811744 () Bool)

(declare-fun tp!811743 () Bool)

(assert (=> b!2542723 (= e!1607766 (and tp!811744 tp!811743))))

(assert (= (and b!2541797 ((_ is ElementMatch!7567) (regOne!15647 (regOne!15647 r!27340)))) b!2542720))

(assert (= (and b!2541797 ((_ is Concat!12263) (regOne!15647 (regOne!15647 r!27340)))) b!2542721))

(assert (= (and b!2541797 ((_ is Star!7567) (regOne!15647 (regOne!15647 r!27340)))) b!2542722))

(assert (= (and b!2541797 ((_ is Union!7567) (regOne!15647 (regOne!15647 r!27340)))) b!2542723))

(declare-fun e!1607767 () Bool)

(assert (=> b!2541797 (= tp!811620 e!1607767)))

(declare-fun b!2542726 () Bool)

(declare-fun tp!811745 () Bool)

(assert (=> b!2542726 (= e!1607767 tp!811745)))

(declare-fun b!2542724 () Bool)

(assert (=> b!2542724 (= e!1607767 tp_is_empty!12989)))

(declare-fun b!2542725 () Bool)

(declare-fun tp!811746 () Bool)

(declare-fun tp!811747 () Bool)

(assert (=> b!2542725 (= e!1607767 (and tp!811746 tp!811747))))

(declare-fun b!2542727 () Bool)

(declare-fun tp!811749 () Bool)

(declare-fun tp!811748 () Bool)

(assert (=> b!2542727 (= e!1607767 (and tp!811749 tp!811748))))

(assert (= (and b!2541797 ((_ is ElementMatch!7567) (regTwo!15647 (regOne!15647 r!27340)))) b!2542724))

(assert (= (and b!2541797 ((_ is Concat!12263) (regTwo!15647 (regOne!15647 r!27340)))) b!2542725))

(assert (= (and b!2541797 ((_ is Star!7567) (regTwo!15647 (regOne!15647 r!27340)))) b!2542726))

(assert (= (and b!2541797 ((_ is Union!7567) (regTwo!15647 (regOne!15647 r!27340)))) b!2542727))

(declare-fun e!1607768 () Bool)

(assert (=> b!2541789 (= tp!811611 e!1607768)))

(declare-fun b!2542730 () Bool)

(declare-fun tp!811750 () Bool)

(assert (=> b!2542730 (= e!1607768 tp!811750)))

(declare-fun b!2542728 () Bool)

(assert (=> b!2542728 (= e!1607768 tp_is_empty!12989)))

(declare-fun b!2542729 () Bool)

(declare-fun tp!811751 () Bool)

(declare-fun tp!811752 () Bool)

(assert (=> b!2542729 (= e!1607768 (and tp!811751 tp!811752))))

(declare-fun b!2542731 () Bool)

(declare-fun tp!811754 () Bool)

(declare-fun tp!811753 () Bool)

(assert (=> b!2542731 (= e!1607768 (and tp!811754 tp!811753))))

(assert (= (and b!2541789 ((_ is ElementMatch!7567) (regOne!15647 (regOne!15646 r!27340)))) b!2542728))

(assert (= (and b!2541789 ((_ is Concat!12263) (regOne!15647 (regOne!15646 r!27340)))) b!2542729))

(assert (= (and b!2541789 ((_ is Star!7567) (regOne!15647 (regOne!15646 r!27340)))) b!2542730))

(assert (= (and b!2541789 ((_ is Union!7567) (regOne!15647 (regOne!15646 r!27340)))) b!2542731))

(declare-fun e!1607769 () Bool)

(assert (=> b!2541789 (= tp!811610 e!1607769)))

(declare-fun b!2542734 () Bool)

(declare-fun tp!811755 () Bool)

(assert (=> b!2542734 (= e!1607769 tp!811755)))

(declare-fun b!2542732 () Bool)

(assert (=> b!2542732 (= e!1607769 tp_is_empty!12989)))

(declare-fun b!2542733 () Bool)

(declare-fun tp!811756 () Bool)

(declare-fun tp!811757 () Bool)

(assert (=> b!2542733 (= e!1607769 (and tp!811756 tp!811757))))

(declare-fun b!2542735 () Bool)

(declare-fun tp!811759 () Bool)

(declare-fun tp!811758 () Bool)

(assert (=> b!2542735 (= e!1607769 (and tp!811759 tp!811758))))

(assert (= (and b!2541789 ((_ is ElementMatch!7567) (regTwo!15647 (regOne!15646 r!27340)))) b!2542732))

(assert (= (and b!2541789 ((_ is Concat!12263) (regTwo!15647 (regOne!15646 r!27340)))) b!2542733))

(assert (= (and b!2541789 ((_ is Star!7567) (regTwo!15647 (regOne!15646 r!27340)))) b!2542734))

(assert (= (and b!2541789 ((_ is Union!7567) (regTwo!15647 (regOne!15646 r!27340)))) b!2542735))

(declare-fun b!2542736 () Bool)

(declare-fun e!1607770 () Bool)

(declare-fun tp!811760 () Bool)

(assert (=> b!2542736 (= e!1607770 (and tp_is_empty!12989 tp!811760))))

(assert (=> b!2541810 (= tp!811634 e!1607770)))

(assert (= (and b!2541810 ((_ is Cons!29532) (t!211331 (t!211331 tl!4068)))) b!2542736))

(check-sat (not b!2542711) (not b!2542723) (not d!721837) (not bm!160804) (not b!2542665) (not bm!160830) (not b!2542715) (not bm!160885) (not b!2541812) (not d!721991) (not b!2542616) (not bm!160842) (not bm!161011) (not b!2542681) (not bm!160915) (not b!2542503) (not bm!160953) (not d!721981) (not d!721957) (not b!2542097) (not d!721801) (not b!2541939) (not bm!160962) (not d!721997) (not b!2542734) (not d!722011) (not d!721895) (not d!721989) (not bm!160980) (not b!2542683) (not b!2542002) (not b!2542621) (not b!2542714) (not d!721775) (not d!721917) (not b!2542629) (not b!2542407) (not bm!160862) (not bm!160872) (not b!2542713) (not d!721797) (not d!721791) (not b!2542736) (not b!2542413) (not b!2542727) (not d!721793) (not b!2541993) (not b!2542331) (not b!2542656) (not d!721887) (not bm!160783) (not b!2542252) (not d!721995) (not bm!160990) (not d!721901) (not d!721783) (not b!2542641) (not bm!160868) (not b!2542236) (not b!2542072) (not b!2542611) (not b!2542322) (not bm!160996) (not b!2542340) (not b!2542719) (not b!2542642) (not b!2542668) (not b!2542281) (not d!721889) (not d!721929) (not bm!160901) (not b!2542366) (not b!2542671) (not b!2542684) (not b!2542733) (not b!2541977) (not bm!160887) (not d!721891) (not d!721933) (not b!2542725) (not bm!160874) (not b!2542556) (not b!2542672) (not b!2542000) (not b!2542660) (not d!721987) (not b!2542509) (not b!2542677) (not b!2542045) (not bm!160818) (not b!2542440) (not b!2542633) (not bm!160828) (not b!2541857) (not b!2542406) (not bm!160946) (not bm!160873) (not b!2542638) (not bm!160813) (not bm!160841) (not b!2542411) (not bm!160866) (not b!2542518) (not bm!160972) (not d!721959) (not b!2542676) (not b!2542663) (not bm!161007) (not b!2542121) (not b!2541821) (not b!2542688) (not b!2542092) (not bm!160961) (not b!2541913) (not b!2542054) (not b!2542007) (not bm!160895) (not d!721939) (not d!721971) (not b!2542251) (not b!2542338) (not bm!161015) (not b!2542099) (not b!2542245) (not b!2542090) (not b!2542247) (not b!2542275) (not b!2542709) (not bm!160912) (not b!2542653) (not b!2542726) (not d!721969) (not bm!160786) (not bm!160827) (not d!721935) (not b!2542628) (not b!2542449) (not b!2542673) (not b!2542639) (not b!2542612) (not b!2542635) (not b!2542620) (not b!2542334) (not b!2542693) (not bm!160974) (not b!2542691) (not d!721919) (not d!721833) (not b!2541968) (not b!2541830) (not b!2542692) (not bm!160984) (not b!2542730) (not b!2542685) (not bm!160896) (not b!2542381) (not b!2542577) (not b!2542410) (not b!2542387) (not bm!161012) (not b!2542679) (not b!2542248) tp_is_empty!12989 (not bm!160833) (not bm!160825) (not b!2542404) (not bm!160881) (not bm!160967) (not b!2542627) (not b!2542333) (not bm!160789) (not bm!160850) (not bm!161016) (not bm!160913) (not b!2542689) (not b!2542006) (not d!721869) (not b!2542661) (not b!2542587) (not b!2542735) (not d!721893) (not b!2542009) (not d!721845) (not b!2542203) (not d!721899) (not b!2542664) (not d!721813) (not bm!160800) (not d!721841) (not d!721875) (not bm!160910) (not b!2542634) (not b!2542729) (not bm!160811) (not bm!160995) (not b!2542029) (not bm!160817) (not b!2542675) (not b!2542096) (not b!2542721) (not bm!160859) (not b!2542710) (not bm!160788) (not b!2542619) (not bm!160785) (not b!2542669) (not b!2542643) (not bm!160930) (not bm!160857) (not bm!160806) (not b!2542615) (not b!2542254) (not bm!160851) (not bm!160791) (not b!2542562) (not bm!160928) (not bm!160879) (not bm!160798) (not bm!160902) (not bm!160832) (not bm!160938) (not bm!160939) (not d!721909) (not b!2541948) (not bm!160845) (not b!2542617) (not bm!160860) (not b!2542655) (not b!2542301) (not b!2542613) (not d!721945) (not b!2542107) (not bm!160945) (not b!2542680) (not b!2542486) (not bm!161000) (not b!2541875) (not b!2541894) (not b!2542718) (not b!2542624) (not b!2542659) (not b!2542003) (not bm!160985) (not b!2542625) (not b!2541956) (not b!2541918) (not bm!160931) (not b!2542731) (not bm!160978) (not b!2542637) (not bm!161001) (not bm!160924) (not bm!160988) (not bm!160923) (not b!2542093) (not b!2542337) (not b!2542722) (not b!2542667) (not bm!160916) (not bm!161008) (not b!2542623) (not b!2542139) (not bm!160965) (not b!2542687) (not b!2542468) (not d!721805) (not b!2542717))
(check-sat)
