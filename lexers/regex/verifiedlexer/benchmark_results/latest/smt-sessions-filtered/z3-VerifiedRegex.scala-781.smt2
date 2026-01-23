; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44782 () Bool)

(assert start!44782)

(declare-fun b!469161 () Bool)

(declare-fun res!208325 () Bool)

(declare-fun e!287140 () Bool)

(assert (=> b!469161 (=> (not res!208325) (not e!287140))))

(declare-datatypes ((C!3140 0))(
  ( (C!3141 (val!1456 Int)) )
))
(declare-datatypes ((Regex!1109 0))(
  ( (ElementMatch!1109 (c!94426 C!3140)) (Concat!2009 (regOne!2730 Regex!1109) (regTwo!2730 Regex!1109)) (EmptyExpr!1109) (Star!1109 (reg!1438 Regex!1109)) (EmptyLang!1109) (Union!1109 (regOne!2731 Regex!1109) (regTwo!2731 Regex!1109)) )
))
(declare-fun r!23305 () Regex!1109)

(declare-fun lostCause!103 (Regex!1109) Bool)

(assert (=> b!469161 (= res!208325 (not (lostCause!103 r!23305)))))

(declare-fun b!469162 () Bool)

(declare-datatypes ((List!4525 0))(
  ( (Nil!4515) (Cons!4515 (h!9912 C!3140) (t!72919 List!4525)) )
))
(declare-datatypes ((Option!1201 0))(
  ( (None!1200) (Some!1200 (v!15601 List!4525)) )
))
(declare-fun lt!209653 () Option!1201)

(declare-fun isDefined!1036 (Option!1201) Bool)

(assert (=> b!469162 (= e!287140 (not (isDefined!1036 lt!209653)))))

(declare-fun matchR!425 (Regex!1109 List!4525) Bool)

(declare-fun get!1673 (Option!1201) List!4525)

(assert (=> b!469162 (matchR!425 r!23305 (get!1673 lt!209653))))

(declare-fun getLanguageWitness!36 (Regex!1109) Option!1201)

(assert (=> b!469162 (= lt!209653 (getLanguageWitness!36 r!23305))))

(declare-datatypes ((Unit!8243 0))(
  ( (Unit!8244) )
))
(declare-fun lt!209654 () Unit!8243)

(declare-fun lemmaGetWitnessMatches!6 (Regex!1109) Unit!8243)

(assert (=> b!469162 (= lt!209654 (lemmaGetWitnessMatches!6 r!23305))))

(declare-fun b!469163 () Bool)

(declare-fun e!287139 () Bool)

(declare-fun tp!129535 () Bool)

(declare-fun tp!129537 () Bool)

(assert (=> b!469163 (= e!287139 (and tp!129535 tp!129537))))

(declare-fun b!469164 () Bool)

(declare-fun tp!129534 () Bool)

(declare-fun tp!129533 () Bool)

(assert (=> b!469164 (= e!287139 (and tp!129534 tp!129533))))

(declare-fun b!469165 () Bool)

(declare-fun tp_is_empty!2015 () Bool)

(assert (=> b!469165 (= e!287139 tp_is_empty!2015)))

(declare-fun res!208324 () Bool)

(assert (=> start!44782 (=> (not res!208324) (not e!287140))))

(declare-fun validRegex!337 (Regex!1109) Bool)

(assert (=> start!44782 (= res!208324 (validRegex!337 r!23305))))

(assert (=> start!44782 e!287140))

(assert (=> start!44782 e!287139))

(declare-fun b!469166 () Bool)

(declare-fun tp!129536 () Bool)

(assert (=> b!469166 (= e!287139 tp!129536)))

(assert (= (and start!44782 res!208324) b!469161))

(assert (= (and b!469161 res!208325) b!469162))

(get-info :version)

(assert (= (and start!44782 ((_ is ElementMatch!1109) r!23305)) b!469165))

(assert (= (and start!44782 ((_ is Concat!2009) r!23305)) b!469164))

(assert (= (and start!44782 ((_ is Star!1109) r!23305)) b!469166))

(assert (= (and start!44782 ((_ is Union!1109) r!23305)) b!469163))

(declare-fun m!744045 () Bool)

(assert (=> b!469161 m!744045))

(declare-fun m!744047 () Bool)

(assert (=> b!469162 m!744047))

(declare-fun m!744049 () Bool)

(assert (=> b!469162 m!744049))

(declare-fun m!744051 () Bool)

(assert (=> b!469162 m!744051))

(declare-fun m!744053 () Bool)

(assert (=> b!469162 m!744053))

(declare-fun m!744055 () Bool)

(assert (=> b!469162 m!744055))

(assert (=> b!469162 m!744047))

(declare-fun m!744057 () Bool)

(assert (=> start!44782 m!744057))

(check-sat (not b!469161) (not b!469162) (not b!469163) tp_is_empty!2015 (not start!44782) (not b!469166) (not b!469164))
(check-sat)
(get-model)

(declare-fun b!469212 () Bool)

(declare-fun e!287176 () Bool)

(declare-fun e!287179 () Bool)

(assert (=> b!469212 (= e!287176 e!287179)))

(declare-fun c!94438 () Bool)

(assert (=> b!469212 (= c!94438 ((_ is Star!1109) r!23305))))

(declare-fun b!469213 () Bool)

(declare-fun res!208353 () Bool)

(declare-fun e!287177 () Bool)

(assert (=> b!469213 (=> (not res!208353) (not e!287177))))

(declare-fun call!32621 () Bool)

(assert (=> b!469213 (= res!208353 call!32621)))

(declare-fun e!287178 () Bool)

(assert (=> b!469213 (= e!287178 e!287177)))

(declare-fun b!469214 () Bool)

(declare-fun e!287181 () Bool)

(declare-fun e!287180 () Bool)

(assert (=> b!469214 (= e!287181 e!287180)))

(declare-fun res!208351 () Bool)

(assert (=> b!469214 (=> (not res!208351) (not e!287180))))

(assert (=> b!469214 (= res!208351 call!32621)))

(declare-fun b!469215 () Bool)

(declare-fun res!208352 () Bool)

(assert (=> b!469215 (=> res!208352 e!287181)))

(assert (=> b!469215 (= res!208352 (not ((_ is Concat!2009) r!23305)))))

(assert (=> b!469215 (= e!287178 e!287181)))

(declare-fun b!469216 () Bool)

(declare-fun e!287182 () Bool)

(assert (=> b!469216 (= e!287179 e!287182)))

(declare-fun res!208354 () Bool)

(declare-fun nullable!256 (Regex!1109) Bool)

(assert (=> b!469216 (= res!208354 (not (nullable!256 (reg!1438 r!23305))))))

(assert (=> b!469216 (=> (not res!208354) (not e!287182))))

(declare-fun b!469217 () Bool)

(declare-fun call!32622 () Bool)

(assert (=> b!469217 (= e!287177 call!32622)))

(declare-fun call!32620 () Bool)

(declare-fun bm!32615 () Bool)

(declare-fun c!94437 () Bool)

(assert (=> bm!32615 (= call!32620 (validRegex!337 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))))))

(declare-fun bm!32617 () Bool)

(assert (=> bm!32617 (= call!32621 (validRegex!337 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun b!469218 () Bool)

(assert (=> b!469218 (= e!287182 call!32620)))

(declare-fun b!469219 () Bool)

(assert (=> b!469219 (= e!287179 e!287178)))

(assert (=> b!469219 (= c!94437 ((_ is Union!1109) r!23305))))

(declare-fun b!469220 () Bool)

(assert (=> b!469220 (= e!287180 call!32622)))

(declare-fun d!179032 () Bool)

(declare-fun res!208355 () Bool)

(assert (=> d!179032 (=> res!208355 e!287176)))

(assert (=> d!179032 (= res!208355 ((_ is ElementMatch!1109) r!23305))))

(assert (=> d!179032 (= (validRegex!337 r!23305) e!287176)))

(declare-fun bm!32616 () Bool)

(assert (=> bm!32616 (= call!32622 call!32620)))

(assert (= (and d!179032 (not res!208355)) b!469212))

(assert (= (and b!469212 c!94438) b!469216))

(assert (= (and b!469212 (not c!94438)) b!469219))

(assert (= (and b!469216 res!208354) b!469218))

(assert (= (and b!469219 c!94437) b!469213))

(assert (= (and b!469219 (not c!94437)) b!469215))

(assert (= (and b!469213 res!208353) b!469217))

(assert (= (and b!469215 (not res!208352)) b!469214))

(assert (= (and b!469214 res!208351) b!469220))

(assert (= (or b!469213 b!469214) bm!32617))

(assert (= (or b!469217 b!469220) bm!32616))

(assert (= (or b!469218 bm!32616) bm!32615))

(declare-fun m!744067 () Bool)

(assert (=> b!469216 m!744067))

(declare-fun m!744069 () Bool)

(assert (=> bm!32615 m!744069))

(declare-fun m!744071 () Bool)

(assert (=> bm!32617 m!744071))

(assert (=> start!44782 d!179032))

(declare-fun d!179038 () Bool)

(declare-fun lostCauseFct!36 (Regex!1109) Bool)

(assert (=> d!179038 (= (lostCause!103 r!23305) (lostCauseFct!36 r!23305))))

(declare-fun bs!58350 () Bool)

(assert (= bs!58350 d!179038))

(declare-fun m!744073 () Bool)

(assert (=> bs!58350 m!744073))

(assert (=> b!469161 d!179038))

(declare-fun d!179040 () Bool)

(assert (=> d!179040 (matchR!425 r!23305 (get!1673 (getLanguageWitness!36 r!23305)))))

(declare-fun lt!209660 () Unit!8243)

(declare-fun choose!3523 (Regex!1109) Unit!8243)

(assert (=> d!179040 (= lt!209660 (choose!3523 r!23305))))

(assert (=> d!179040 (validRegex!337 r!23305)))

(assert (=> d!179040 (= (lemmaGetWitnessMatches!6 r!23305) lt!209660)))

(declare-fun bs!58352 () Bool)

(assert (= bs!58352 d!179040))

(assert (=> bs!58352 m!744057))

(assert (=> bs!58352 m!744055))

(assert (=> bs!58352 m!744055))

(declare-fun m!744081 () Bool)

(assert (=> bs!58352 m!744081))

(declare-fun m!744083 () Bool)

(assert (=> bs!58352 m!744083))

(assert (=> bs!58352 m!744081))

(declare-fun m!744085 () Bool)

(assert (=> bs!58352 m!744085))

(assert (=> b!469162 d!179040))

(declare-fun d!179044 () Bool)

(declare-fun isEmpty!3517 (Option!1201) Bool)

(assert (=> d!179044 (= (isDefined!1036 lt!209653) (not (isEmpty!3517 lt!209653)))))

(declare-fun bs!58353 () Bool)

(assert (= bs!58353 d!179044))

(declare-fun m!744087 () Bool)

(assert (=> bs!58353 m!744087))

(assert (=> b!469162 d!179044))

(declare-fun b!469301 () Bool)

(declare-fun c!94485 () Bool)

(assert (=> b!469301 (= c!94485 ((_ is Union!1109) r!23305))))

(declare-fun e!287224 () Option!1201)

(declare-fun e!287227 () Option!1201)

(assert (=> b!469301 (= e!287224 e!287227)))

(declare-fun b!469302 () Bool)

(declare-fun e!287229 () Option!1201)

(declare-fun lt!209678 () Option!1201)

(declare-fun lt!209677 () Option!1201)

(declare-fun ++!1327 (List!4525 List!4525) List!4525)

(assert (=> b!469302 (= e!287229 (Some!1200 (++!1327 (v!15601 lt!209678) (v!15601 lt!209677))))))

(declare-fun b!469303 () Bool)

(declare-fun c!94486 () Bool)

(assert (=> b!469303 (= c!94486 ((_ is Some!1200) lt!209677))))

(declare-fun call!32633 () Option!1201)

(assert (=> b!469303 (= lt!209677 call!32633)))

(declare-fun e!287230 () Option!1201)

(assert (=> b!469303 (= e!287230 e!287229)))

(declare-fun b!469304 () Bool)

(declare-fun e!287226 () Option!1201)

(assert (=> b!469304 (= e!287227 e!287226)))

(declare-fun lt!209676 () Option!1201)

(declare-fun call!32634 () Option!1201)

(assert (=> b!469304 (= lt!209676 call!32634)))

(declare-fun c!94480 () Bool)

(assert (=> b!469304 (= c!94480 ((_ is Some!1200) lt!209676))))

(declare-fun b!469305 () Bool)

(declare-fun e!287225 () Option!1201)

(assert (=> b!469305 (= e!287225 e!287224)))

(declare-fun c!94484 () Bool)

(assert (=> b!469305 (= c!94484 ((_ is Star!1109) r!23305))))

(declare-fun d!179046 () Bool)

(declare-fun c!94482 () Bool)

(assert (=> d!179046 (= c!94482 ((_ is EmptyExpr!1109) r!23305))))

(declare-fun e!287223 () Option!1201)

(assert (=> d!179046 (= (getLanguageWitness!36 r!23305) e!287223)))

(declare-fun bm!32628 () Bool)

(assert (=> bm!32628 (= call!32633 (getLanguageWitness!36 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun b!469306 () Bool)

(declare-fun c!94481 () Bool)

(assert (=> b!469306 (= c!94481 ((_ is ElementMatch!1109) r!23305))))

(declare-fun e!287228 () Option!1201)

(assert (=> b!469306 (= e!287228 e!287225)))

(declare-fun b!469307 () Bool)

(assert (=> b!469307 (= e!287229 None!1200)))

(declare-fun b!469308 () Bool)

(assert (=> b!469308 (= e!287230 None!1200)))

(declare-fun bm!32629 () Bool)

(assert (=> bm!32629 (= call!32634 (getLanguageWitness!36 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun b!469309 () Bool)

(assert (=> b!469309 (= e!287225 (Some!1200 (Cons!4515 (c!94426 r!23305) Nil!4515)))))

(declare-fun b!469310 () Bool)

(assert (=> b!469310 (= e!287223 e!287228)))

(declare-fun c!94483 () Bool)

(assert (=> b!469310 (= c!94483 ((_ is EmptyLang!1109) r!23305))))

(declare-fun b!469311 () Bool)

(assert (=> b!469311 (= e!287228 None!1200)))

(declare-fun b!469312 () Bool)

(assert (=> b!469312 (= e!287223 (Some!1200 Nil!4515))))

(declare-fun b!469313 () Bool)

(assert (=> b!469313 (= e!287226 lt!209676)))

(declare-fun b!469314 () Bool)

(assert (=> b!469314 (= e!287227 e!287230)))

(assert (=> b!469314 (= lt!209678 call!32634)))

(declare-fun c!94479 () Bool)

(assert (=> b!469314 (= c!94479 ((_ is Some!1200) lt!209678))))

(declare-fun b!469315 () Bool)

(assert (=> b!469315 (= e!287226 call!32633)))

(declare-fun b!469316 () Bool)

(assert (=> b!469316 (= e!287224 (Some!1200 Nil!4515))))

(assert (= (and d!179046 c!94482) b!469312))

(assert (= (and d!179046 (not c!94482)) b!469310))

(assert (= (and b!469310 c!94483) b!469311))

(assert (= (and b!469310 (not c!94483)) b!469306))

(assert (= (and b!469306 c!94481) b!469309))

(assert (= (and b!469306 (not c!94481)) b!469305))

(assert (= (and b!469305 c!94484) b!469316))

(assert (= (and b!469305 (not c!94484)) b!469301))

(assert (= (and b!469301 c!94485) b!469304))

(assert (= (and b!469301 (not c!94485)) b!469314))

(assert (= (and b!469304 c!94480) b!469313))

(assert (= (and b!469304 (not c!94480)) b!469315))

(assert (= (and b!469314 c!94479) b!469303))

(assert (= (and b!469314 (not c!94479)) b!469308))

(assert (= (and b!469303 c!94486) b!469302))

(assert (= (and b!469303 (not c!94486)) b!469307))

(assert (= (or b!469315 b!469303) bm!32628))

(assert (= (or b!469304 b!469314) bm!32629))

(declare-fun m!744095 () Bool)

(assert (=> b!469302 m!744095))

(declare-fun m!744097 () Bool)

(assert (=> bm!32628 m!744097))

(declare-fun m!744099 () Bool)

(assert (=> bm!32629 m!744099))

(assert (=> b!469162 d!179046))

(declare-fun d!179052 () Bool)

(assert (=> d!179052 (= (get!1673 lt!209653) (v!15601 lt!209653))))

(assert (=> b!469162 d!179052))

(declare-fun b!469397 () Bool)

(declare-fun e!287270 () Bool)

(declare-fun head!1140 (List!4525) C!3140)

(assert (=> b!469397 (= e!287270 (not (= (head!1140 (get!1673 lt!209653)) (c!94426 r!23305))))))

(declare-fun b!469398 () Bool)

(declare-fun res!208403 () Bool)

(declare-fun e!287273 () Bool)

(assert (=> b!469398 (=> (not res!208403) (not e!287273))))

(declare-fun isEmpty!3519 (List!4525) Bool)

(declare-fun tail!660 (List!4525) List!4525)

(assert (=> b!469398 (= res!208403 (isEmpty!3519 (tail!660 (get!1673 lt!209653))))))

(declare-fun b!469399 () Bool)

(declare-fun res!208399 () Bool)

(declare-fun e!287268 () Bool)

(assert (=> b!469399 (=> res!208399 e!287268)))

(assert (=> b!469399 (= res!208399 e!287273)))

(declare-fun res!208397 () Bool)

(assert (=> b!469399 (=> (not res!208397) (not e!287273))))

(declare-fun lt!209684 () Bool)

(assert (=> b!469399 (= res!208397 lt!209684)))

(declare-fun b!469400 () Bool)

(declare-fun res!208400 () Bool)

(assert (=> b!469400 (=> (not res!208400) (not e!287273))))

(declare-fun call!32640 () Bool)

(assert (=> b!469400 (= res!208400 (not call!32640))))

(declare-fun b!469401 () Bool)

(declare-fun e!287269 () Bool)

(assert (=> b!469401 (= e!287269 (= lt!209684 call!32640))))

(declare-fun b!469402 () Bool)

(declare-fun e!287274 () Bool)

(declare-fun derivativeStep!222 (Regex!1109 C!3140) Regex!1109)

(assert (=> b!469402 (= e!287274 (matchR!425 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))) (tail!660 (get!1673 lt!209653))))))

(declare-fun b!469403 () Bool)

(declare-fun e!287271 () Bool)

(assert (=> b!469403 (= e!287268 e!287271)))

(declare-fun res!208396 () Bool)

(assert (=> b!469403 (=> (not res!208396) (not e!287271))))

(assert (=> b!469403 (= res!208396 (not lt!209684))))

(declare-fun bm!32635 () Bool)

(assert (=> bm!32635 (= call!32640 (isEmpty!3519 (get!1673 lt!209653)))))

(declare-fun b!469404 () Bool)

(declare-fun res!208402 () Bool)

(assert (=> b!469404 (=> res!208402 e!287270)))

(assert (=> b!469404 (= res!208402 (not (isEmpty!3519 (tail!660 (get!1673 lt!209653)))))))

(declare-fun b!469405 () Bool)

(assert (=> b!469405 (= e!287274 (nullable!256 r!23305))))

(declare-fun d!179054 () Bool)

(assert (=> d!179054 e!287269))

(declare-fun c!94503 () Bool)

(assert (=> d!179054 (= c!94503 ((_ is EmptyExpr!1109) r!23305))))

(assert (=> d!179054 (= lt!209684 e!287274)))

(declare-fun c!94502 () Bool)

(assert (=> d!179054 (= c!94502 (isEmpty!3519 (get!1673 lt!209653)))))

(assert (=> d!179054 (validRegex!337 r!23305)))

(assert (=> d!179054 (= (matchR!425 r!23305 (get!1673 lt!209653)) lt!209684)))

(declare-fun b!469406 () Bool)

(declare-fun res!208398 () Bool)

(assert (=> b!469406 (=> res!208398 e!287268)))

(assert (=> b!469406 (= res!208398 (not ((_ is ElementMatch!1109) r!23305)))))

(declare-fun e!287272 () Bool)

(assert (=> b!469406 (= e!287272 e!287268)))

(declare-fun b!469407 () Bool)

(assert (=> b!469407 (= e!287271 e!287270)))

(declare-fun res!208401 () Bool)

(assert (=> b!469407 (=> res!208401 e!287270)))

(assert (=> b!469407 (= res!208401 call!32640)))

(declare-fun b!469408 () Bool)

(assert (=> b!469408 (= e!287269 e!287272)))

(declare-fun c!94504 () Bool)

(assert (=> b!469408 (= c!94504 ((_ is EmptyLang!1109) r!23305))))

(declare-fun b!469409 () Bool)

(assert (=> b!469409 (= e!287272 (not lt!209684))))

(declare-fun b!469410 () Bool)

(assert (=> b!469410 (= e!287273 (= (head!1140 (get!1673 lt!209653)) (c!94426 r!23305)))))

(assert (= (and d!179054 c!94502) b!469405))

(assert (= (and d!179054 (not c!94502)) b!469402))

(assert (= (and d!179054 c!94503) b!469401))

(assert (= (and d!179054 (not c!94503)) b!469408))

(assert (= (and b!469408 c!94504) b!469409))

(assert (= (and b!469408 (not c!94504)) b!469406))

(assert (= (and b!469406 (not res!208398)) b!469399))

(assert (= (and b!469399 res!208397) b!469400))

(assert (= (and b!469400 res!208400) b!469398))

(assert (= (and b!469398 res!208403) b!469410))

(assert (= (and b!469399 (not res!208399)) b!469403))

(assert (= (and b!469403 res!208396) b!469407))

(assert (= (and b!469407 (not res!208401)) b!469404))

(assert (= (and b!469404 (not res!208402)) b!469397))

(assert (= (or b!469401 b!469400 b!469407) bm!32635))

(assert (=> b!469397 m!744047))

(declare-fun m!744117 () Bool)

(assert (=> b!469397 m!744117))

(declare-fun m!744119 () Bool)

(assert (=> b!469405 m!744119))

(assert (=> b!469402 m!744047))

(assert (=> b!469402 m!744117))

(assert (=> b!469402 m!744117))

(declare-fun m!744121 () Bool)

(assert (=> b!469402 m!744121))

(assert (=> b!469402 m!744047))

(declare-fun m!744123 () Bool)

(assert (=> b!469402 m!744123))

(assert (=> b!469402 m!744121))

(assert (=> b!469402 m!744123))

(declare-fun m!744125 () Bool)

(assert (=> b!469402 m!744125))

(assert (=> b!469404 m!744047))

(assert (=> b!469404 m!744123))

(assert (=> b!469404 m!744123))

(declare-fun m!744127 () Bool)

(assert (=> b!469404 m!744127))

(assert (=> bm!32635 m!744047))

(declare-fun m!744129 () Bool)

(assert (=> bm!32635 m!744129))

(assert (=> b!469398 m!744047))

(assert (=> b!469398 m!744123))

(assert (=> b!469398 m!744123))

(assert (=> b!469398 m!744127))

(assert (=> b!469410 m!744047))

(assert (=> b!469410 m!744117))

(assert (=> d!179054 m!744047))

(assert (=> d!179054 m!744129))

(assert (=> d!179054 m!744057))

(assert (=> b!469162 d!179054))

(declare-fun b!469442 () Bool)

(declare-fun e!287282 () Bool)

(declare-fun tp!129586 () Bool)

(declare-fun tp!129584 () Bool)

(assert (=> b!469442 (= e!287282 (and tp!129586 tp!129584))))

(declare-fun b!469441 () Bool)

(assert (=> b!469441 (= e!287282 tp_is_empty!2015)))

(declare-fun b!469443 () Bool)

(declare-fun tp!129587 () Bool)

(assert (=> b!469443 (= e!287282 tp!129587)))

(declare-fun b!469444 () Bool)

(declare-fun tp!129583 () Bool)

(declare-fun tp!129585 () Bool)

(assert (=> b!469444 (= e!287282 (and tp!129583 tp!129585))))

(assert (=> b!469166 (= tp!129536 e!287282)))

(assert (= (and b!469166 ((_ is ElementMatch!1109) (reg!1438 r!23305))) b!469441))

(assert (= (and b!469166 ((_ is Concat!2009) (reg!1438 r!23305))) b!469442))

(assert (= (and b!469166 ((_ is Star!1109) (reg!1438 r!23305))) b!469443))

(assert (= (and b!469166 ((_ is Union!1109) (reg!1438 r!23305))) b!469444))

(declare-fun b!469446 () Bool)

(declare-fun e!287283 () Bool)

(declare-fun tp!129591 () Bool)

(declare-fun tp!129589 () Bool)

(assert (=> b!469446 (= e!287283 (and tp!129591 tp!129589))))

(declare-fun b!469445 () Bool)

(assert (=> b!469445 (= e!287283 tp_is_empty!2015)))

(declare-fun b!469447 () Bool)

(declare-fun tp!129592 () Bool)

(assert (=> b!469447 (= e!287283 tp!129592)))

(declare-fun b!469448 () Bool)

(declare-fun tp!129588 () Bool)

(declare-fun tp!129590 () Bool)

(assert (=> b!469448 (= e!287283 (and tp!129588 tp!129590))))

(assert (=> b!469164 (= tp!129534 e!287283)))

(assert (= (and b!469164 ((_ is ElementMatch!1109) (regOne!2730 r!23305))) b!469445))

(assert (= (and b!469164 ((_ is Concat!2009) (regOne!2730 r!23305))) b!469446))

(assert (= (and b!469164 ((_ is Star!1109) (regOne!2730 r!23305))) b!469447))

(assert (= (and b!469164 ((_ is Union!1109) (regOne!2730 r!23305))) b!469448))

(declare-fun b!469450 () Bool)

(declare-fun e!287284 () Bool)

(declare-fun tp!129596 () Bool)

(declare-fun tp!129594 () Bool)

(assert (=> b!469450 (= e!287284 (and tp!129596 tp!129594))))

(declare-fun b!469449 () Bool)

(assert (=> b!469449 (= e!287284 tp_is_empty!2015)))

(declare-fun b!469451 () Bool)

(declare-fun tp!129597 () Bool)

(assert (=> b!469451 (= e!287284 tp!129597)))

(declare-fun b!469452 () Bool)

(declare-fun tp!129593 () Bool)

(declare-fun tp!129595 () Bool)

(assert (=> b!469452 (= e!287284 (and tp!129593 tp!129595))))

(assert (=> b!469164 (= tp!129533 e!287284)))

(assert (= (and b!469164 ((_ is ElementMatch!1109) (regTwo!2730 r!23305))) b!469449))

(assert (= (and b!469164 ((_ is Concat!2009) (regTwo!2730 r!23305))) b!469450))

(assert (= (and b!469164 ((_ is Star!1109) (regTwo!2730 r!23305))) b!469451))

(assert (= (and b!469164 ((_ is Union!1109) (regTwo!2730 r!23305))) b!469452))

(declare-fun b!469454 () Bool)

(declare-fun e!287285 () Bool)

(declare-fun tp!129601 () Bool)

(declare-fun tp!129599 () Bool)

(assert (=> b!469454 (= e!287285 (and tp!129601 tp!129599))))

(declare-fun b!469453 () Bool)

(assert (=> b!469453 (= e!287285 tp_is_empty!2015)))

(declare-fun b!469455 () Bool)

(declare-fun tp!129602 () Bool)

(assert (=> b!469455 (= e!287285 tp!129602)))

(declare-fun b!469456 () Bool)

(declare-fun tp!129598 () Bool)

(declare-fun tp!129600 () Bool)

(assert (=> b!469456 (= e!287285 (and tp!129598 tp!129600))))

(assert (=> b!469163 (= tp!129535 e!287285)))

(assert (= (and b!469163 ((_ is ElementMatch!1109) (regOne!2731 r!23305))) b!469453))

(assert (= (and b!469163 ((_ is Concat!2009) (regOne!2731 r!23305))) b!469454))

(assert (= (and b!469163 ((_ is Star!1109) (regOne!2731 r!23305))) b!469455))

(assert (= (and b!469163 ((_ is Union!1109) (regOne!2731 r!23305))) b!469456))

(declare-fun b!469458 () Bool)

(declare-fun e!287286 () Bool)

(declare-fun tp!129606 () Bool)

(declare-fun tp!129604 () Bool)

(assert (=> b!469458 (= e!287286 (and tp!129606 tp!129604))))

(declare-fun b!469457 () Bool)

(assert (=> b!469457 (= e!287286 tp_is_empty!2015)))

(declare-fun b!469459 () Bool)

(declare-fun tp!129607 () Bool)

(assert (=> b!469459 (= e!287286 tp!129607)))

(declare-fun b!469460 () Bool)

(declare-fun tp!129603 () Bool)

(declare-fun tp!129605 () Bool)

(assert (=> b!469460 (= e!287286 (and tp!129603 tp!129605))))

(assert (=> b!469163 (= tp!129537 e!287286)))

(assert (= (and b!469163 ((_ is ElementMatch!1109) (regTwo!2731 r!23305))) b!469457))

(assert (= (and b!469163 ((_ is Concat!2009) (regTwo!2731 r!23305))) b!469458))

(assert (= (and b!469163 ((_ is Star!1109) (regTwo!2731 r!23305))) b!469459))

(assert (= (and b!469163 ((_ is Union!1109) (regTwo!2731 r!23305))) b!469460))

(check-sat (not b!469458) (not b!469459) (not b!469410) (not b!469398) (not b!469404) (not bm!32615) (not b!469216) (not b!469447) (not b!469302) (not b!469397) (not b!469405) (not b!469460) (not d!179054) (not d!179040) (not d!179038) (not b!469446) (not b!469455) (not b!469451) (not bm!32628) (not b!469442) (not b!469454) (not b!469448) (not bm!32629) (not b!469402) (not b!469450) tp_is_empty!2015 (not bm!32635) (not b!469444) (not b!469452) (not b!469443) (not b!469456) (not bm!32617) (not d!179044))
(check-sat)
(get-model)

(declare-fun b!469461 () Bool)

(declare-fun e!287289 () Bool)

(assert (=> b!469461 (= e!287289 (not (= (head!1140 (tail!660 (get!1673 lt!209653))) (c!94426 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653)))))))))

(declare-fun b!469462 () Bool)

(declare-fun res!208411 () Bool)

(declare-fun e!287292 () Bool)

(assert (=> b!469462 (=> (not res!208411) (not e!287292))))

(assert (=> b!469462 (= res!208411 (isEmpty!3519 (tail!660 (tail!660 (get!1673 lt!209653)))))))

(declare-fun b!469463 () Bool)

(declare-fun res!208407 () Bool)

(declare-fun e!287287 () Bool)

(assert (=> b!469463 (=> res!208407 e!287287)))

(assert (=> b!469463 (= res!208407 e!287292)))

(declare-fun res!208405 () Bool)

(assert (=> b!469463 (=> (not res!208405) (not e!287292))))

(declare-fun lt!209685 () Bool)

(assert (=> b!469463 (= res!208405 lt!209685)))

(declare-fun b!469464 () Bool)

(declare-fun res!208408 () Bool)

(assert (=> b!469464 (=> (not res!208408) (not e!287292))))

(declare-fun call!32641 () Bool)

(assert (=> b!469464 (= res!208408 (not call!32641))))

(declare-fun b!469465 () Bool)

(declare-fun e!287288 () Bool)

(assert (=> b!469465 (= e!287288 (= lt!209685 call!32641))))

(declare-fun b!469466 () Bool)

(declare-fun e!287293 () Bool)

(assert (=> b!469466 (= e!287293 (matchR!425 (derivativeStep!222 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))) (head!1140 (tail!660 (get!1673 lt!209653)))) (tail!660 (tail!660 (get!1673 lt!209653)))))))

(declare-fun b!469467 () Bool)

(declare-fun e!287290 () Bool)

(assert (=> b!469467 (= e!287287 e!287290)))

(declare-fun res!208404 () Bool)

(assert (=> b!469467 (=> (not res!208404) (not e!287290))))

(assert (=> b!469467 (= res!208404 (not lt!209685))))

(declare-fun bm!32636 () Bool)

(assert (=> bm!32636 (= call!32641 (isEmpty!3519 (tail!660 (get!1673 lt!209653))))))

(declare-fun b!469468 () Bool)

(declare-fun res!208410 () Bool)

(assert (=> b!469468 (=> res!208410 e!287289)))

(assert (=> b!469468 (= res!208410 (not (isEmpty!3519 (tail!660 (tail!660 (get!1673 lt!209653))))))))

(declare-fun b!469469 () Bool)

(assert (=> b!469469 (= e!287293 (nullable!256 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653)))))))

(declare-fun d!179058 () Bool)

(assert (=> d!179058 e!287288))

(declare-fun c!94506 () Bool)

(assert (=> d!179058 (= c!94506 ((_ is EmptyExpr!1109) (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653)))))))

(assert (=> d!179058 (= lt!209685 e!287293)))

(declare-fun c!94505 () Bool)

(assert (=> d!179058 (= c!94505 (isEmpty!3519 (tail!660 (get!1673 lt!209653))))))

(assert (=> d!179058 (validRegex!337 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))))))

(assert (=> d!179058 (= (matchR!425 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))) (tail!660 (get!1673 lt!209653))) lt!209685)))

(declare-fun b!469470 () Bool)

(declare-fun res!208406 () Bool)

(assert (=> b!469470 (=> res!208406 e!287287)))

(assert (=> b!469470 (= res!208406 (not ((_ is ElementMatch!1109) (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))))))))

(declare-fun e!287291 () Bool)

(assert (=> b!469470 (= e!287291 e!287287)))

(declare-fun b!469471 () Bool)

(assert (=> b!469471 (= e!287290 e!287289)))

(declare-fun res!208409 () Bool)

(assert (=> b!469471 (=> res!208409 e!287289)))

(assert (=> b!469471 (= res!208409 call!32641)))

(declare-fun b!469472 () Bool)

(assert (=> b!469472 (= e!287288 e!287291)))

(declare-fun c!94507 () Bool)

(assert (=> b!469472 (= c!94507 ((_ is EmptyLang!1109) (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653)))))))

(declare-fun b!469473 () Bool)

(assert (=> b!469473 (= e!287291 (not lt!209685))))

(declare-fun b!469474 () Bool)

(assert (=> b!469474 (= e!287292 (= (head!1140 (tail!660 (get!1673 lt!209653))) (c!94426 (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))))))))

(assert (= (and d!179058 c!94505) b!469469))

(assert (= (and d!179058 (not c!94505)) b!469466))

(assert (= (and d!179058 c!94506) b!469465))

(assert (= (and d!179058 (not c!94506)) b!469472))

(assert (= (and b!469472 c!94507) b!469473))

(assert (= (and b!469472 (not c!94507)) b!469470))

(assert (= (and b!469470 (not res!208406)) b!469463))

(assert (= (and b!469463 res!208405) b!469464))

(assert (= (and b!469464 res!208408) b!469462))

(assert (= (and b!469462 res!208411) b!469474))

(assert (= (and b!469463 (not res!208407)) b!469467))

(assert (= (and b!469467 res!208404) b!469471))

(assert (= (and b!469471 (not res!208409)) b!469468))

(assert (= (and b!469468 (not res!208410)) b!469461))

(assert (= (or b!469465 b!469464 b!469471) bm!32636))

(assert (=> b!469461 m!744123))

(declare-fun m!744131 () Bool)

(assert (=> b!469461 m!744131))

(assert (=> b!469469 m!744121))

(declare-fun m!744133 () Bool)

(assert (=> b!469469 m!744133))

(assert (=> b!469466 m!744123))

(assert (=> b!469466 m!744131))

(assert (=> b!469466 m!744121))

(assert (=> b!469466 m!744131))

(declare-fun m!744135 () Bool)

(assert (=> b!469466 m!744135))

(assert (=> b!469466 m!744123))

(declare-fun m!744137 () Bool)

(assert (=> b!469466 m!744137))

(assert (=> b!469466 m!744135))

(assert (=> b!469466 m!744137))

(declare-fun m!744139 () Bool)

(assert (=> b!469466 m!744139))

(assert (=> b!469468 m!744123))

(assert (=> b!469468 m!744137))

(assert (=> b!469468 m!744137))

(declare-fun m!744141 () Bool)

(assert (=> b!469468 m!744141))

(assert (=> bm!32636 m!744123))

(assert (=> bm!32636 m!744127))

(assert (=> b!469462 m!744123))

(assert (=> b!469462 m!744137))

(assert (=> b!469462 m!744137))

(assert (=> b!469462 m!744141))

(assert (=> b!469474 m!744123))

(assert (=> b!469474 m!744131))

(assert (=> d!179058 m!744123))

(assert (=> d!179058 m!744127))

(assert (=> d!179058 m!744121))

(declare-fun m!744143 () Bool)

(assert (=> d!179058 m!744143))

(assert (=> b!469402 d!179058))

(declare-fun b!469495 () Bool)

(declare-fun e!287308 () Regex!1109)

(declare-fun e!287307 () Regex!1109)

(assert (=> b!469495 (= e!287308 e!287307)))

(declare-fun c!94518 () Bool)

(assert (=> b!469495 (= c!94518 ((_ is ElementMatch!1109) r!23305))))

(declare-fun b!469496 () Bool)

(declare-fun c!94522 () Bool)

(assert (=> b!469496 (= c!94522 (nullable!256 (regOne!2730 r!23305)))))

(declare-fun e!287304 () Regex!1109)

(declare-fun e!287305 () Regex!1109)

(assert (=> b!469496 (= e!287304 e!287305)))

(declare-fun b!469497 () Bool)

(assert (=> b!469497 (= e!287307 (ite (= (head!1140 (get!1673 lt!209653)) (c!94426 r!23305)) EmptyExpr!1109 EmptyLang!1109))))

(declare-fun b!469498 () Bool)

(declare-fun call!32653 () Regex!1109)

(assert (=> b!469498 (= e!287304 (Concat!2009 call!32653 r!23305))))

(declare-fun d!179060 () Bool)

(declare-fun lt!209688 () Regex!1109)

(assert (=> d!179060 (validRegex!337 lt!209688)))

(assert (=> d!179060 (= lt!209688 e!287308)))

(declare-fun c!94521 () Bool)

(assert (=> d!179060 (= c!94521 (or ((_ is EmptyExpr!1109) r!23305) ((_ is EmptyLang!1109) r!23305)))))

(assert (=> d!179060 (validRegex!337 r!23305)))

(assert (=> d!179060 (= (derivativeStep!222 r!23305 (head!1140 (get!1673 lt!209653))) lt!209688)))

(declare-fun b!469499 () Bool)

(declare-fun e!287306 () Regex!1109)

(declare-fun call!32652 () Regex!1109)

(declare-fun call!32651 () Regex!1109)

(assert (=> b!469499 (= e!287306 (Union!1109 call!32652 call!32651))))

(declare-fun b!469500 () Bool)

(assert (=> b!469500 (= e!287306 e!287304)))

(declare-fun c!94519 () Bool)

(assert (=> b!469500 (= c!94519 ((_ is Star!1109) r!23305))))

(declare-fun call!32650 () Regex!1109)

(declare-fun b!469501 () Bool)

(assert (=> b!469501 (= e!287305 (Union!1109 (Concat!2009 call!32653 (regTwo!2730 r!23305)) call!32650))))

(declare-fun b!469502 () Bool)

(assert (=> b!469502 (= e!287305 (Union!1109 (Concat!2009 call!32650 (regTwo!2730 r!23305)) EmptyLang!1109))))

(declare-fun bm!32645 () Bool)

(assert (=> bm!32645 (= call!32650 call!32651)))

(declare-fun bm!32646 () Bool)

(assert (=> bm!32646 (= call!32653 call!32652)))

(declare-fun b!469503 () Bool)

(declare-fun c!94520 () Bool)

(assert (=> b!469503 (= c!94520 ((_ is Union!1109) r!23305))))

(assert (=> b!469503 (= e!287307 e!287306)))

(declare-fun bm!32647 () Bool)

(assert (=> bm!32647 (= call!32652 (derivativeStep!222 (ite c!94520 (regOne!2731 r!23305) (ite c!94519 (reg!1438 r!23305) (regOne!2730 r!23305))) (head!1140 (get!1673 lt!209653))))))

(declare-fun bm!32648 () Bool)

(assert (=> bm!32648 (= call!32651 (derivativeStep!222 (ite c!94520 (regTwo!2731 r!23305) (ite c!94522 (regTwo!2730 r!23305) (regOne!2730 r!23305))) (head!1140 (get!1673 lt!209653))))))

(declare-fun b!469504 () Bool)

(assert (=> b!469504 (= e!287308 EmptyLang!1109)))

(assert (= (and d!179060 c!94521) b!469504))

(assert (= (and d!179060 (not c!94521)) b!469495))

(assert (= (and b!469495 c!94518) b!469497))

(assert (= (and b!469495 (not c!94518)) b!469503))

(assert (= (and b!469503 c!94520) b!469499))

(assert (= (and b!469503 (not c!94520)) b!469500))

(assert (= (and b!469500 c!94519) b!469498))

(assert (= (and b!469500 (not c!94519)) b!469496))

(assert (= (and b!469496 c!94522) b!469501))

(assert (= (and b!469496 (not c!94522)) b!469502))

(assert (= (or b!469501 b!469502) bm!32645))

(assert (= (or b!469498 b!469501) bm!32646))

(assert (= (or b!469499 bm!32645) bm!32648))

(assert (= (or b!469499 bm!32646) bm!32647))

(declare-fun m!744145 () Bool)

(assert (=> b!469496 m!744145))

(declare-fun m!744147 () Bool)

(assert (=> d!179060 m!744147))

(assert (=> d!179060 m!744057))

(assert (=> bm!32647 m!744117))

(declare-fun m!744149 () Bool)

(assert (=> bm!32647 m!744149))

(assert (=> bm!32648 m!744117))

(declare-fun m!744151 () Bool)

(assert (=> bm!32648 m!744151))

(assert (=> b!469402 d!179060))

(declare-fun d!179062 () Bool)

(assert (=> d!179062 (= (head!1140 (get!1673 lt!209653)) (h!9912 (get!1673 lt!209653)))))

(assert (=> b!469402 d!179062))

(declare-fun d!179066 () Bool)

(assert (=> d!179066 (= (tail!660 (get!1673 lt!209653)) (t!72919 (get!1673 lt!209653)))))

(assert (=> b!469402 d!179066))

(declare-fun d!179068 () Bool)

(assert (=> d!179068 (= (isEmpty!3517 lt!209653) (not ((_ is Some!1200) lt!209653)))))

(assert (=> d!179044 d!179068))

(declare-fun d!179070 () Bool)

(assert (=> d!179070 (= (isEmpty!3519 (get!1673 lt!209653)) ((_ is Nil!4515) (get!1673 lt!209653)))))

(assert (=> bm!32635 d!179070))

(declare-fun b!469527 () Bool)

(declare-fun e!287321 () List!4525)

(assert (=> b!469527 (= e!287321 (v!15601 lt!209677))))

(declare-fun b!469528 () Bool)

(assert (=> b!469528 (= e!287321 (Cons!4515 (h!9912 (v!15601 lt!209678)) (++!1327 (t!72919 (v!15601 lt!209678)) (v!15601 lt!209677))))))

(declare-fun lt!209692 () List!4525)

(declare-fun e!287320 () Bool)

(declare-fun b!469530 () Bool)

(assert (=> b!469530 (= e!287320 (or (not (= (v!15601 lt!209677) Nil!4515)) (= lt!209692 (v!15601 lt!209678))))))

(declare-fun d!179072 () Bool)

(assert (=> d!179072 e!287320))

(declare-fun res!208424 () Bool)

(assert (=> d!179072 (=> (not res!208424) (not e!287320))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!762 (List!4525) (InoxSet C!3140))

(assert (=> d!179072 (= res!208424 (= (content!762 lt!209692) ((_ map or) (content!762 (v!15601 lt!209678)) (content!762 (v!15601 lt!209677)))))))

(assert (=> d!179072 (= lt!209692 e!287321)))

(declare-fun c!94528 () Bool)

(assert (=> d!179072 (= c!94528 ((_ is Nil!4515) (v!15601 lt!209678)))))

(assert (=> d!179072 (= (++!1327 (v!15601 lt!209678) (v!15601 lt!209677)) lt!209692)))

(declare-fun b!469529 () Bool)

(declare-fun res!208425 () Bool)

(assert (=> b!469529 (=> (not res!208425) (not e!287320))))

(declare-fun size!3694 (List!4525) Int)

(assert (=> b!469529 (= res!208425 (= (size!3694 lt!209692) (+ (size!3694 (v!15601 lt!209678)) (size!3694 (v!15601 lt!209677)))))))

(assert (= (and d!179072 c!94528) b!469527))

(assert (= (and d!179072 (not c!94528)) b!469528))

(assert (= (and d!179072 res!208424) b!469529))

(assert (= (and b!469529 res!208425) b!469530))

(declare-fun m!744167 () Bool)

(assert (=> b!469528 m!744167))

(declare-fun m!744169 () Bool)

(assert (=> d!179072 m!744169))

(declare-fun m!744171 () Bool)

(assert (=> d!179072 m!744171))

(declare-fun m!744173 () Bool)

(assert (=> d!179072 m!744173))

(declare-fun m!744175 () Bool)

(assert (=> b!469529 m!744175))

(declare-fun m!744177 () Bool)

(assert (=> b!469529 m!744177))

(declare-fun m!744179 () Bool)

(assert (=> b!469529 m!744179))

(assert (=> b!469302 d!179072))

(assert (=> b!469410 d!179062))

(declare-fun b!469531 () Bool)

(declare-fun c!94535 () Bool)

(assert (=> b!469531 (= c!94535 ((_ is Union!1109) (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun e!287323 () Option!1201)

(declare-fun e!287326 () Option!1201)

(assert (=> b!469531 (= e!287323 e!287326)))

(declare-fun b!469532 () Bool)

(declare-fun e!287328 () Option!1201)

(declare-fun lt!209695 () Option!1201)

(declare-fun lt!209694 () Option!1201)

(assert (=> b!469532 (= e!287328 (Some!1200 (++!1327 (v!15601 lt!209695) (v!15601 lt!209694))))))

(declare-fun b!469533 () Bool)

(declare-fun c!94536 () Bool)

(assert (=> b!469533 (= c!94536 ((_ is Some!1200) lt!209694))))

(declare-fun call!32655 () Option!1201)

(assert (=> b!469533 (= lt!209694 call!32655)))

(declare-fun e!287329 () Option!1201)

(assert (=> b!469533 (= e!287329 e!287328)))

(declare-fun b!469534 () Bool)

(declare-fun e!287325 () Option!1201)

(assert (=> b!469534 (= e!287326 e!287325)))

(declare-fun lt!209693 () Option!1201)

(declare-fun call!32656 () Option!1201)

(assert (=> b!469534 (= lt!209693 call!32656)))

(declare-fun c!94530 () Bool)

(assert (=> b!469534 (= c!94530 ((_ is Some!1200) lt!209693))))

(declare-fun b!469535 () Bool)

(declare-fun e!287324 () Option!1201)

(assert (=> b!469535 (= e!287324 e!287323)))

(declare-fun c!94534 () Bool)

(assert (=> b!469535 (= c!94534 ((_ is Star!1109) (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun d!179076 () Bool)

(declare-fun c!94532 () Bool)

(assert (=> d!179076 (= c!94532 ((_ is EmptyExpr!1109) (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun e!287322 () Option!1201)

(assert (=> d!179076 (= (getLanguageWitness!36 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))) e!287322)))

(declare-fun bm!32650 () Bool)

(assert (=> bm!32650 (= call!32655 (getLanguageWitness!36 (ite c!94535 (regTwo!2731 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))) (regTwo!2730 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))))

(declare-fun b!469536 () Bool)

(declare-fun c!94531 () Bool)

(assert (=> b!469536 (= c!94531 ((_ is ElementMatch!1109) (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun e!287327 () Option!1201)

(assert (=> b!469536 (= e!287327 e!287324)))

(declare-fun b!469537 () Bool)

(assert (=> b!469537 (= e!287328 None!1200)))

(declare-fun b!469538 () Bool)

(assert (=> b!469538 (= e!287329 None!1200)))

(declare-fun bm!32651 () Bool)

(assert (=> bm!32651 (= call!32656 (getLanguageWitness!36 (ite c!94535 (regOne!2731 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))) (regOne!2730 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))))

(declare-fun b!469539 () Bool)

(assert (=> b!469539 (= e!287324 (Some!1200 (Cons!4515 (c!94426 (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))) Nil!4515)))))

(declare-fun b!469540 () Bool)

(assert (=> b!469540 (= e!287322 e!287327)))

(declare-fun c!94533 () Bool)

(assert (=> b!469540 (= c!94533 ((_ is EmptyLang!1109) (ite c!94485 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun b!469541 () Bool)

(assert (=> b!469541 (= e!287327 None!1200)))

(declare-fun b!469542 () Bool)

(assert (=> b!469542 (= e!287322 (Some!1200 Nil!4515))))

(declare-fun b!469543 () Bool)

(assert (=> b!469543 (= e!287325 lt!209693)))

(declare-fun b!469544 () Bool)

(assert (=> b!469544 (= e!287326 e!287329)))

(assert (=> b!469544 (= lt!209695 call!32656)))

(declare-fun c!94529 () Bool)

(assert (=> b!469544 (= c!94529 ((_ is Some!1200) lt!209695))))

(declare-fun b!469545 () Bool)

(assert (=> b!469545 (= e!287325 call!32655)))

(declare-fun b!469546 () Bool)

(assert (=> b!469546 (= e!287323 (Some!1200 Nil!4515))))

(assert (= (and d!179076 c!94532) b!469542))

(assert (= (and d!179076 (not c!94532)) b!469540))

(assert (= (and b!469540 c!94533) b!469541))

(assert (= (and b!469540 (not c!94533)) b!469536))

(assert (= (and b!469536 c!94531) b!469539))

(assert (= (and b!469536 (not c!94531)) b!469535))

(assert (= (and b!469535 c!94534) b!469546))

(assert (= (and b!469535 (not c!94534)) b!469531))

(assert (= (and b!469531 c!94535) b!469534))

(assert (= (and b!469531 (not c!94535)) b!469544))

(assert (= (and b!469534 c!94530) b!469543))

(assert (= (and b!469534 (not c!94530)) b!469545))

(assert (= (and b!469544 c!94529) b!469533))

(assert (= (and b!469544 (not c!94529)) b!469538))

(assert (= (and b!469533 c!94536) b!469532))

(assert (= (and b!469533 (not c!94536)) b!469537))

(assert (= (or b!469545 b!469533) bm!32650))

(assert (= (or b!469534 b!469544) bm!32651))

(declare-fun m!744181 () Bool)

(assert (=> b!469532 m!744181))

(declare-fun m!744183 () Bool)

(assert (=> bm!32650 m!744183))

(declare-fun m!744185 () Bool)

(assert (=> bm!32651 m!744185))

(assert (=> bm!32629 d!179076))

(assert (=> d!179054 d!179070))

(assert (=> d!179054 d!179032))

(declare-fun b!469547 () Bool)

(declare-fun c!94543 () Bool)

(assert (=> b!469547 (= c!94543 ((_ is Union!1109) (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun e!287331 () Option!1201)

(declare-fun e!287334 () Option!1201)

(assert (=> b!469547 (= e!287331 e!287334)))

(declare-fun b!469548 () Bool)

(declare-fun e!287336 () Option!1201)

(declare-fun lt!209698 () Option!1201)

(declare-fun lt!209697 () Option!1201)

(assert (=> b!469548 (= e!287336 (Some!1200 (++!1327 (v!15601 lt!209698) (v!15601 lt!209697))))))

(declare-fun b!469549 () Bool)

(declare-fun c!94544 () Bool)

(assert (=> b!469549 (= c!94544 ((_ is Some!1200) lt!209697))))

(declare-fun call!32657 () Option!1201)

(assert (=> b!469549 (= lt!209697 call!32657)))

(declare-fun e!287337 () Option!1201)

(assert (=> b!469549 (= e!287337 e!287336)))

(declare-fun b!469550 () Bool)

(declare-fun e!287333 () Option!1201)

(assert (=> b!469550 (= e!287334 e!287333)))

(declare-fun lt!209696 () Option!1201)

(declare-fun call!32658 () Option!1201)

(assert (=> b!469550 (= lt!209696 call!32658)))

(declare-fun c!94538 () Bool)

(assert (=> b!469550 (= c!94538 ((_ is Some!1200) lt!209696))))

(declare-fun b!469551 () Bool)

(declare-fun e!287332 () Option!1201)

(assert (=> b!469551 (= e!287332 e!287331)))

(declare-fun c!94542 () Bool)

(assert (=> b!469551 (= c!94542 ((_ is Star!1109) (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun d!179078 () Bool)

(declare-fun c!94540 () Bool)

(assert (=> d!179078 (= c!94540 ((_ is EmptyExpr!1109) (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun e!287330 () Option!1201)

(assert (=> d!179078 (= (getLanguageWitness!36 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))) e!287330)))

(declare-fun bm!32652 () Bool)

(assert (=> bm!32652 (= call!32657 (getLanguageWitness!36 (ite c!94543 (regTwo!2731 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))) (regTwo!2730 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))))

(declare-fun b!469552 () Bool)

(declare-fun c!94539 () Bool)

(assert (=> b!469552 (= c!94539 ((_ is ElementMatch!1109) (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun e!287335 () Option!1201)

(assert (=> b!469552 (= e!287335 e!287332)))

(declare-fun b!469553 () Bool)

(assert (=> b!469553 (= e!287336 None!1200)))

(declare-fun b!469554 () Bool)

(assert (=> b!469554 (= e!287337 None!1200)))

(declare-fun bm!32653 () Bool)

(assert (=> bm!32653 (= call!32658 (getLanguageWitness!36 (ite c!94543 (regOne!2731 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))) (regOne!2730 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))))

(declare-fun b!469555 () Bool)

(assert (=> b!469555 (= e!287332 (Some!1200 (Cons!4515 (c!94426 (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))) Nil!4515)))))

(declare-fun b!469556 () Bool)

(assert (=> b!469556 (= e!287330 e!287335)))

(declare-fun c!94541 () Bool)

(assert (=> b!469556 (= c!94541 ((_ is EmptyLang!1109) (ite c!94485 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun b!469557 () Bool)

(assert (=> b!469557 (= e!287335 None!1200)))

(declare-fun b!469558 () Bool)

(assert (=> b!469558 (= e!287330 (Some!1200 Nil!4515))))

(declare-fun b!469559 () Bool)

(assert (=> b!469559 (= e!287333 lt!209696)))

(declare-fun b!469560 () Bool)

(assert (=> b!469560 (= e!287334 e!287337)))

(assert (=> b!469560 (= lt!209698 call!32658)))

(declare-fun c!94537 () Bool)

(assert (=> b!469560 (= c!94537 ((_ is Some!1200) lt!209698))))

(declare-fun b!469561 () Bool)

(assert (=> b!469561 (= e!287333 call!32657)))

(declare-fun b!469562 () Bool)

(assert (=> b!469562 (= e!287331 (Some!1200 Nil!4515))))

(assert (= (and d!179078 c!94540) b!469558))

(assert (= (and d!179078 (not c!94540)) b!469556))

(assert (= (and b!469556 c!94541) b!469557))

(assert (= (and b!469556 (not c!94541)) b!469552))

(assert (= (and b!469552 c!94539) b!469555))

(assert (= (and b!469552 (not c!94539)) b!469551))

(assert (= (and b!469551 c!94542) b!469562))

(assert (= (and b!469551 (not c!94542)) b!469547))

(assert (= (and b!469547 c!94543) b!469550))

(assert (= (and b!469547 (not c!94543)) b!469560))

(assert (= (and b!469550 c!94538) b!469559))

(assert (= (and b!469550 (not c!94538)) b!469561))

(assert (= (and b!469560 c!94537) b!469549))

(assert (= (and b!469560 (not c!94537)) b!469554))

(assert (= (and b!469549 c!94544) b!469548))

(assert (= (and b!469549 (not c!94544)) b!469553))

(assert (= (or b!469561 b!469549) bm!32652))

(assert (= (or b!469550 b!469560) bm!32653))

(declare-fun m!744187 () Bool)

(assert (=> b!469548 m!744187))

(declare-fun m!744189 () Bool)

(assert (=> bm!32652 m!744189))

(declare-fun m!744191 () Bool)

(assert (=> bm!32653 m!744191))

(assert (=> bm!32628 d!179078))

(assert (=> b!469397 d!179062))

(declare-fun bm!32666 () Bool)

(declare-fun call!32672 () Bool)

(declare-fun c!94557 () Bool)

(assert (=> bm!32666 (= call!32672 (lostCause!103 (ite c!94557 (regTwo!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun b!469597 () Bool)

(declare-fun e!287360 () Bool)

(declare-fun e!287365 () Bool)

(assert (=> b!469597 (= e!287360 e!287365)))

(declare-fun res!208438 () Bool)

(assert (=> b!469597 (=> res!208438 e!287365)))

(assert (=> b!469597 (= res!208438 ((_ is EmptyLang!1109) r!23305))))

(declare-fun b!469598 () Bool)

(declare-fun e!287361 () Bool)

(declare-fun e!287364 () Bool)

(assert (=> b!469598 (= e!287361 e!287364)))

(declare-fun res!208437 () Bool)

(declare-fun call!32671 () Bool)

(assert (=> b!469598 (= res!208437 call!32671)))

(assert (=> b!469598 (=> (not res!208437) (not e!287364))))

(declare-fun b!469599 () Bool)

(declare-fun e!287362 () Bool)

(assert (=> b!469599 (= e!287362 call!32671)))

(declare-fun d!179080 () Bool)

(declare-fun lt!209703 () Bool)

(assert (=> d!179080 (= lt!209703 (isEmpty!3517 (getLanguageWitness!36 r!23305)))))

(assert (=> d!179080 (= lt!209703 e!287360)))

(declare-fun res!208440 () Bool)

(assert (=> d!179080 (=> (not res!208440) (not e!287360))))

(assert (=> d!179080 (= res!208440 (not ((_ is EmptyExpr!1109) r!23305)))))

(assert (=> d!179080 (= (lostCauseFct!36 r!23305) lt!209703)))

(declare-fun b!469600 () Bool)

(declare-fun e!287363 () Bool)

(assert (=> b!469600 (= e!287365 e!287363)))

(declare-fun res!208439 () Bool)

(assert (=> b!469600 (=> (not res!208439) (not e!287363))))

(assert (=> b!469600 (= res!208439 (and (not ((_ is ElementMatch!1109) r!23305)) (not ((_ is Star!1109) r!23305))))))

(declare-fun b!469601 () Bool)

(assert (=> b!469601 (= e!287364 call!32672)))

(declare-fun b!469602 () Bool)

(assert (=> b!469602 (= e!287363 e!287361)))

(assert (=> b!469602 (= c!94557 ((_ is Union!1109) r!23305))))

(declare-fun bm!32667 () Bool)

(assert (=> bm!32667 (= call!32671 (lostCause!103 (ite c!94557 (regOne!2731 r!23305) (regTwo!2730 r!23305))))))

(declare-fun b!469603 () Bool)

(assert (=> b!469603 (= e!287361 e!287362)))

(declare-fun res!208436 () Bool)

(assert (=> b!469603 (= res!208436 call!32672)))

(assert (=> b!469603 (=> res!208436 e!287362)))

(assert (= (and d!179080 res!208440) b!469597))

(assert (= (and b!469597 (not res!208438)) b!469600))

(assert (= (and b!469600 res!208439) b!469602))

(assert (= (and b!469602 c!94557) b!469598))

(assert (= (and b!469602 (not c!94557)) b!469603))

(assert (= (and b!469598 res!208437) b!469601))

(assert (= (and b!469603 (not res!208436)) b!469599))

(assert (= (or b!469598 b!469599) bm!32667))

(assert (= (or b!469601 b!469603) bm!32666))

(declare-fun m!744193 () Bool)

(assert (=> bm!32666 m!744193))

(assert (=> d!179080 m!744055))

(assert (=> d!179080 m!744055))

(declare-fun m!744195 () Bool)

(assert (=> d!179080 m!744195))

(declare-fun m!744197 () Bool)

(assert (=> bm!32667 m!744197))

(assert (=> d!179038 d!179080))

(declare-fun d!179082 () Bool)

(assert (=> d!179082 (= (isEmpty!3519 (tail!660 (get!1673 lt!209653))) ((_ is Nil!4515) (tail!660 (get!1673 lt!209653))))))

(assert (=> b!469398 d!179082))

(assert (=> b!469398 d!179066))

(declare-fun b!469604 () Bool)

(declare-fun e!287366 () Bool)

(declare-fun e!287369 () Bool)

(assert (=> b!469604 (= e!287366 e!287369)))

(declare-fun c!94559 () Bool)

(assert (=> b!469604 (= c!94559 ((_ is Star!1109) (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun b!469605 () Bool)

(declare-fun res!208443 () Bool)

(declare-fun e!287367 () Bool)

(assert (=> b!469605 (=> (not res!208443) (not e!287367))))

(declare-fun call!32674 () Bool)

(assert (=> b!469605 (= res!208443 call!32674)))

(declare-fun e!287368 () Bool)

(assert (=> b!469605 (= e!287368 e!287367)))

(declare-fun b!469606 () Bool)

(declare-fun e!287371 () Bool)

(declare-fun e!287370 () Bool)

(assert (=> b!469606 (= e!287371 e!287370)))

(declare-fun res!208441 () Bool)

(assert (=> b!469606 (=> (not res!208441) (not e!287370))))

(assert (=> b!469606 (= res!208441 call!32674)))

(declare-fun b!469607 () Bool)

(declare-fun res!208442 () Bool)

(assert (=> b!469607 (=> res!208442 e!287371)))

(assert (=> b!469607 (= res!208442 (not ((_ is Concat!2009) (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305)))))))

(assert (=> b!469607 (= e!287368 e!287371)))

(declare-fun b!469608 () Bool)

(declare-fun e!287372 () Bool)

(assert (=> b!469608 (= e!287369 e!287372)))

(declare-fun res!208444 () Bool)

(assert (=> b!469608 (= res!208444 (not (nullable!256 (reg!1438 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))))))))

(assert (=> b!469608 (=> (not res!208444) (not e!287372))))

(declare-fun b!469609 () Bool)

(declare-fun call!32675 () Bool)

(assert (=> b!469609 (= e!287367 call!32675)))

(declare-fun c!94558 () Bool)

(declare-fun call!32673 () Bool)

(declare-fun bm!32668 () Bool)

(assert (=> bm!32668 (= call!32673 (validRegex!337 (ite c!94559 (reg!1438 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))) (ite c!94558 (regTwo!2731 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))) (regTwo!2730 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305)))))))))

(declare-fun bm!32670 () Bool)

(assert (=> bm!32670 (= call!32674 (validRegex!337 (ite c!94558 (regOne!2731 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))) (regOne!2730 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))))))))

(declare-fun b!469610 () Bool)

(assert (=> b!469610 (= e!287372 call!32673)))

(declare-fun b!469611 () Bool)

(assert (=> b!469611 (= e!287369 e!287368)))

(assert (=> b!469611 (= c!94558 ((_ is Union!1109) (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(declare-fun b!469612 () Bool)

(assert (=> b!469612 (= e!287370 call!32675)))

(declare-fun d!179084 () Bool)

(declare-fun res!208445 () Bool)

(assert (=> d!179084 (=> res!208445 e!287366)))

(assert (=> d!179084 (= res!208445 ((_ is ElementMatch!1109) (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))))))

(assert (=> d!179084 (= (validRegex!337 (ite c!94437 (regOne!2731 r!23305) (regOne!2730 r!23305))) e!287366)))

(declare-fun bm!32669 () Bool)

(assert (=> bm!32669 (= call!32675 call!32673)))

(assert (= (and d!179084 (not res!208445)) b!469604))

(assert (= (and b!469604 c!94559) b!469608))

(assert (= (and b!469604 (not c!94559)) b!469611))

(assert (= (and b!469608 res!208444) b!469610))

(assert (= (and b!469611 c!94558) b!469605))

(assert (= (and b!469611 (not c!94558)) b!469607))

(assert (= (and b!469605 res!208443) b!469609))

(assert (= (and b!469607 (not res!208442)) b!469606))

(assert (= (and b!469606 res!208441) b!469612))

(assert (= (or b!469605 b!469606) bm!32670))

(assert (= (or b!469609 b!469612) bm!32669))

(assert (= (or b!469610 bm!32669) bm!32668))

(declare-fun m!744199 () Bool)

(assert (=> b!469608 m!744199))

(declare-fun m!744201 () Bool)

(assert (=> bm!32668 m!744201))

(declare-fun m!744203 () Bool)

(assert (=> bm!32670 m!744203))

(assert (=> bm!32617 d!179084))

(assert (=> b!469404 d!179082))

(assert (=> b!469404 d!179066))

(declare-fun d!179086 () Bool)

(declare-fun nullableFct!88 (Regex!1109) Bool)

(assert (=> d!179086 (= (nullable!256 (reg!1438 r!23305)) (nullableFct!88 (reg!1438 r!23305)))))

(declare-fun bs!58355 () Bool)

(assert (= bs!58355 d!179086))

(declare-fun m!744213 () Bool)

(assert (=> bs!58355 m!744213))

(assert (=> b!469216 d!179086))

(declare-fun b!469623 () Bool)

(declare-fun e!287378 () Bool)

(declare-fun e!287381 () Bool)

(assert (=> b!469623 (= e!287378 e!287381)))

(declare-fun c!94566 () Bool)

(assert (=> b!469623 (= c!94566 ((_ is Star!1109) (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))))))

(declare-fun b!469624 () Bool)

(declare-fun res!208448 () Bool)

(declare-fun e!287379 () Bool)

(assert (=> b!469624 (=> (not res!208448) (not e!287379))))

(declare-fun call!32681 () Bool)

(assert (=> b!469624 (= res!208448 call!32681)))

(declare-fun e!287380 () Bool)

(assert (=> b!469624 (= e!287380 e!287379)))

(declare-fun b!469625 () Bool)

(declare-fun e!287383 () Bool)

(declare-fun e!287382 () Bool)

(assert (=> b!469625 (= e!287383 e!287382)))

(declare-fun res!208446 () Bool)

(assert (=> b!469625 (=> (not res!208446) (not e!287382))))

(assert (=> b!469625 (= res!208446 call!32681)))

(declare-fun b!469626 () Bool)

(declare-fun res!208447 () Bool)

(assert (=> b!469626 (=> res!208447 e!287383)))

(assert (=> b!469626 (= res!208447 (not ((_ is Concat!2009) (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))))

(assert (=> b!469626 (= e!287380 e!287383)))

(declare-fun b!469627 () Bool)

(declare-fun e!287384 () Bool)

(assert (=> b!469627 (= e!287381 e!287384)))

(declare-fun res!208449 () Bool)

(assert (=> b!469627 (= res!208449 (not (nullable!256 (reg!1438 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))))))))

(assert (=> b!469627 (=> (not res!208449) (not e!287384))))

(declare-fun b!469628 () Bool)

(declare-fun call!32682 () Bool)

(assert (=> b!469628 (= e!287379 call!32682)))

(declare-fun bm!32675 () Bool)

(declare-fun c!94565 () Bool)

(declare-fun call!32680 () Bool)

(assert (=> bm!32675 (= call!32680 (validRegex!337 (ite c!94566 (reg!1438 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))) (ite c!94565 (regTwo!2731 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))) (regTwo!2730 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305))))))))))

(declare-fun bm!32677 () Bool)

(assert (=> bm!32677 (= call!32681 (validRegex!337 (ite c!94565 (regOne!2731 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))) (regOne!2730 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))))))))

(declare-fun b!469629 () Bool)

(assert (=> b!469629 (= e!287384 call!32680)))

(declare-fun b!469630 () Bool)

(assert (=> b!469630 (= e!287381 e!287380)))

(assert (=> b!469630 (= c!94565 ((_ is Union!1109) (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))))))

(declare-fun b!469631 () Bool)

(assert (=> b!469631 (= e!287382 call!32682)))

(declare-fun d!179090 () Bool)

(declare-fun res!208450 () Bool)

(assert (=> d!179090 (=> res!208450 e!287378)))

(assert (=> d!179090 (= res!208450 ((_ is ElementMatch!1109) (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))))))

(assert (=> d!179090 (= (validRegex!337 (ite c!94438 (reg!1438 r!23305) (ite c!94437 (regTwo!2731 r!23305) (regTwo!2730 r!23305)))) e!287378)))

(declare-fun bm!32676 () Bool)

(assert (=> bm!32676 (= call!32682 call!32680)))

(assert (= (and d!179090 (not res!208450)) b!469623))

(assert (= (and b!469623 c!94566) b!469627))

(assert (= (and b!469623 (not c!94566)) b!469630))

(assert (= (and b!469627 res!208449) b!469629))

(assert (= (and b!469630 c!94565) b!469624))

(assert (= (and b!469630 (not c!94565)) b!469626))

(assert (= (and b!469624 res!208448) b!469628))

(assert (= (and b!469626 (not res!208447)) b!469625))

(assert (= (and b!469625 res!208446) b!469631))

(assert (= (or b!469624 b!469625) bm!32677))

(assert (= (or b!469628 b!469631) bm!32676))

(assert (= (or b!469629 bm!32676) bm!32675))

(declare-fun m!744215 () Bool)

(assert (=> b!469627 m!744215))

(declare-fun m!744217 () Bool)

(assert (=> bm!32675 m!744217))

(declare-fun m!744219 () Bool)

(assert (=> bm!32677 m!744219))

(assert (=> bm!32615 d!179090))

(declare-fun d!179096 () Bool)

(assert (=> d!179096 (matchR!425 r!23305 (get!1673 (getLanguageWitness!36 r!23305)))))

(assert (=> d!179096 true))

(declare-fun _$101!74 () Unit!8243)

(assert (=> d!179096 (= (choose!3523 r!23305) _$101!74)))

(declare-fun bs!58356 () Bool)

(assert (= bs!58356 d!179096))

(assert (=> bs!58356 m!744055))

(assert (=> bs!58356 m!744055))

(assert (=> bs!58356 m!744081))

(assert (=> bs!58356 m!744081))

(assert (=> bs!58356 m!744085))

(assert (=> d!179040 d!179096))

(assert (=> d!179040 d!179046))

(assert (=> d!179040 d!179032))

(declare-fun d!179100 () Bool)

(assert (=> d!179100 (= (get!1673 (getLanguageWitness!36 r!23305)) (v!15601 (getLanguageWitness!36 r!23305)))))

(assert (=> d!179040 d!179100))

(declare-fun b!469632 () Bool)

(declare-fun e!287387 () Bool)

(assert (=> b!469632 (= e!287387 (not (= (head!1140 (get!1673 (getLanguageWitness!36 r!23305))) (c!94426 r!23305))))))

(declare-fun b!469633 () Bool)

(declare-fun res!208458 () Bool)

(declare-fun e!287390 () Bool)

(assert (=> b!469633 (=> (not res!208458) (not e!287390))))

(assert (=> b!469633 (= res!208458 (isEmpty!3519 (tail!660 (get!1673 (getLanguageWitness!36 r!23305)))))))

(declare-fun b!469634 () Bool)

(declare-fun res!208454 () Bool)

(declare-fun e!287385 () Bool)

(assert (=> b!469634 (=> res!208454 e!287385)))

(assert (=> b!469634 (= res!208454 e!287390)))

(declare-fun res!208452 () Bool)

(assert (=> b!469634 (=> (not res!208452) (not e!287390))))

(declare-fun lt!209705 () Bool)

(assert (=> b!469634 (= res!208452 lt!209705)))

(declare-fun b!469635 () Bool)

(declare-fun res!208455 () Bool)

(assert (=> b!469635 (=> (not res!208455) (not e!287390))))

(declare-fun call!32683 () Bool)

(assert (=> b!469635 (= res!208455 (not call!32683))))

(declare-fun b!469636 () Bool)

(declare-fun e!287386 () Bool)

(assert (=> b!469636 (= e!287386 (= lt!209705 call!32683))))

(declare-fun b!469637 () Bool)

(declare-fun e!287391 () Bool)

(assert (=> b!469637 (= e!287391 (matchR!425 (derivativeStep!222 r!23305 (head!1140 (get!1673 (getLanguageWitness!36 r!23305)))) (tail!660 (get!1673 (getLanguageWitness!36 r!23305)))))))

(declare-fun b!469638 () Bool)

(declare-fun e!287388 () Bool)

(assert (=> b!469638 (= e!287385 e!287388)))

(declare-fun res!208451 () Bool)

(assert (=> b!469638 (=> (not res!208451) (not e!287388))))

(assert (=> b!469638 (= res!208451 (not lt!209705))))

(declare-fun bm!32678 () Bool)

(assert (=> bm!32678 (= call!32683 (isEmpty!3519 (get!1673 (getLanguageWitness!36 r!23305))))))

(declare-fun b!469639 () Bool)

(declare-fun res!208457 () Bool)

(assert (=> b!469639 (=> res!208457 e!287387)))

(assert (=> b!469639 (= res!208457 (not (isEmpty!3519 (tail!660 (get!1673 (getLanguageWitness!36 r!23305))))))))

(declare-fun b!469640 () Bool)

(assert (=> b!469640 (= e!287391 (nullable!256 r!23305))))

(declare-fun d!179102 () Bool)

(assert (=> d!179102 e!287386))

(declare-fun c!94568 () Bool)

(assert (=> d!179102 (= c!94568 ((_ is EmptyExpr!1109) r!23305))))

(assert (=> d!179102 (= lt!209705 e!287391)))

(declare-fun c!94567 () Bool)

(assert (=> d!179102 (= c!94567 (isEmpty!3519 (get!1673 (getLanguageWitness!36 r!23305))))))

(assert (=> d!179102 (validRegex!337 r!23305)))

(assert (=> d!179102 (= (matchR!425 r!23305 (get!1673 (getLanguageWitness!36 r!23305))) lt!209705)))

(declare-fun b!469641 () Bool)

(declare-fun res!208453 () Bool)

(assert (=> b!469641 (=> res!208453 e!287385)))

(assert (=> b!469641 (= res!208453 (not ((_ is ElementMatch!1109) r!23305)))))

(declare-fun e!287389 () Bool)

(assert (=> b!469641 (= e!287389 e!287385)))

(declare-fun b!469642 () Bool)

(assert (=> b!469642 (= e!287388 e!287387)))

(declare-fun res!208456 () Bool)

(assert (=> b!469642 (=> res!208456 e!287387)))

(assert (=> b!469642 (= res!208456 call!32683)))

(declare-fun b!469643 () Bool)

(assert (=> b!469643 (= e!287386 e!287389)))

(declare-fun c!94569 () Bool)

(assert (=> b!469643 (= c!94569 ((_ is EmptyLang!1109) r!23305))))

(declare-fun b!469644 () Bool)

(assert (=> b!469644 (= e!287389 (not lt!209705))))

(declare-fun b!469645 () Bool)

(assert (=> b!469645 (= e!287390 (= (head!1140 (get!1673 (getLanguageWitness!36 r!23305))) (c!94426 r!23305)))))

(assert (= (and d!179102 c!94567) b!469640))

(assert (= (and d!179102 (not c!94567)) b!469637))

(assert (= (and d!179102 c!94568) b!469636))

(assert (= (and d!179102 (not c!94568)) b!469643))

(assert (= (and b!469643 c!94569) b!469644))

(assert (= (and b!469643 (not c!94569)) b!469641))

(assert (= (and b!469641 (not res!208453)) b!469634))

(assert (= (and b!469634 res!208452) b!469635))

(assert (= (and b!469635 res!208455) b!469633))

(assert (= (and b!469633 res!208458) b!469645))

(assert (= (and b!469634 (not res!208454)) b!469638))

(assert (= (and b!469638 res!208451) b!469642))

(assert (= (and b!469642 (not res!208456)) b!469639))

(assert (= (and b!469639 (not res!208457)) b!469632))

(assert (= (or b!469636 b!469635 b!469642) bm!32678))

(assert (=> b!469632 m!744081))

(declare-fun m!744221 () Bool)

(assert (=> b!469632 m!744221))

(assert (=> b!469640 m!744119))

(assert (=> b!469637 m!744081))

(assert (=> b!469637 m!744221))

(assert (=> b!469637 m!744221))

(declare-fun m!744223 () Bool)

(assert (=> b!469637 m!744223))

(assert (=> b!469637 m!744081))

(declare-fun m!744225 () Bool)

(assert (=> b!469637 m!744225))

(assert (=> b!469637 m!744223))

(assert (=> b!469637 m!744225))

(declare-fun m!744227 () Bool)

(assert (=> b!469637 m!744227))

(assert (=> b!469639 m!744081))

(assert (=> b!469639 m!744225))

(assert (=> b!469639 m!744225))

(declare-fun m!744229 () Bool)

(assert (=> b!469639 m!744229))

(assert (=> bm!32678 m!744081))

(declare-fun m!744231 () Bool)

(assert (=> bm!32678 m!744231))

(assert (=> b!469633 m!744081))

(assert (=> b!469633 m!744225))

(assert (=> b!469633 m!744225))

(assert (=> b!469633 m!744229))

(assert (=> b!469645 m!744081))

(assert (=> b!469645 m!744221))

(assert (=> d!179102 m!744081))

(assert (=> d!179102 m!744231))

(assert (=> d!179102 m!744057))

(assert (=> d!179040 d!179102))

(declare-fun d!179108 () Bool)

(assert (=> d!179108 (= (nullable!256 r!23305) (nullableFct!88 r!23305))))

(declare-fun bs!58358 () Bool)

(assert (= bs!58358 d!179108))

(declare-fun m!744241 () Bool)

(assert (=> bs!58358 m!744241))

(assert (=> b!469405 d!179108))

(declare-fun b!469661 () Bool)

(declare-fun e!287399 () Bool)

(declare-fun tp!129611 () Bool)

(declare-fun tp!129609 () Bool)

(assert (=> b!469661 (= e!287399 (and tp!129611 tp!129609))))

(declare-fun b!469660 () Bool)

(assert (=> b!469660 (= e!287399 tp_is_empty!2015)))

(declare-fun b!469662 () Bool)

(declare-fun tp!129612 () Bool)

(assert (=> b!469662 (= e!287399 tp!129612)))

(declare-fun b!469663 () Bool)

(declare-fun tp!129608 () Bool)

(declare-fun tp!129610 () Bool)

(assert (=> b!469663 (= e!287399 (and tp!129608 tp!129610))))

(assert (=> b!469452 (= tp!129593 e!287399)))

(assert (= (and b!469452 ((_ is ElementMatch!1109) (regOne!2731 (regTwo!2730 r!23305)))) b!469660))

(assert (= (and b!469452 ((_ is Concat!2009) (regOne!2731 (regTwo!2730 r!23305)))) b!469661))

(assert (= (and b!469452 ((_ is Star!1109) (regOne!2731 (regTwo!2730 r!23305)))) b!469662))

(assert (= (and b!469452 ((_ is Union!1109) (regOne!2731 (regTwo!2730 r!23305)))) b!469663))

(declare-fun b!469670 () Bool)

(declare-fun e!287408 () Bool)

(declare-fun tp!129616 () Bool)

(declare-fun tp!129614 () Bool)

(assert (=> b!469670 (= e!287408 (and tp!129616 tp!129614))))

(declare-fun b!469668 () Bool)

(assert (=> b!469668 (= e!287408 tp_is_empty!2015)))

(declare-fun b!469672 () Bool)

(declare-fun tp!129617 () Bool)

(assert (=> b!469672 (= e!287408 tp!129617)))

(declare-fun b!469674 () Bool)

(declare-fun tp!129613 () Bool)

(declare-fun tp!129615 () Bool)

(assert (=> b!469674 (= e!287408 (and tp!129613 tp!129615))))

(assert (=> b!469452 (= tp!129595 e!287408)))

(assert (= (and b!469452 ((_ is ElementMatch!1109) (regTwo!2731 (regTwo!2730 r!23305)))) b!469668))

(assert (= (and b!469452 ((_ is Concat!2009) (regTwo!2731 (regTwo!2730 r!23305)))) b!469670))

(assert (= (and b!469452 ((_ is Star!1109) (regTwo!2731 (regTwo!2730 r!23305)))) b!469672))

(assert (= (and b!469452 ((_ is Union!1109) (regTwo!2731 (regTwo!2730 r!23305)))) b!469674))

(declare-fun b!469685 () Bool)

(declare-fun e!287409 () Bool)

(declare-fun tp!129621 () Bool)

(declare-fun tp!129619 () Bool)

(assert (=> b!469685 (= e!287409 (and tp!129621 tp!129619))))

(declare-fun b!469684 () Bool)

(assert (=> b!469684 (= e!287409 tp_is_empty!2015)))

(declare-fun b!469686 () Bool)

(declare-fun tp!129622 () Bool)

(assert (=> b!469686 (= e!287409 tp!129622)))

(declare-fun b!469687 () Bool)

(declare-fun tp!129618 () Bool)

(declare-fun tp!129620 () Bool)

(assert (=> b!469687 (= e!287409 (and tp!129618 tp!129620))))

(assert (=> b!469447 (= tp!129592 e!287409)))

(assert (= (and b!469447 ((_ is ElementMatch!1109) (reg!1438 (regOne!2730 r!23305)))) b!469684))

(assert (= (and b!469447 ((_ is Concat!2009) (reg!1438 (regOne!2730 r!23305)))) b!469685))

(assert (= (and b!469447 ((_ is Star!1109) (reg!1438 (regOne!2730 r!23305)))) b!469686))

(assert (= (and b!469447 ((_ is Union!1109) (reg!1438 (regOne!2730 r!23305)))) b!469687))

(declare-fun b!469689 () Bool)

(declare-fun e!287410 () Bool)

(declare-fun tp!129626 () Bool)

(declare-fun tp!129624 () Bool)

(assert (=> b!469689 (= e!287410 (and tp!129626 tp!129624))))

(declare-fun b!469688 () Bool)

(assert (=> b!469688 (= e!287410 tp_is_empty!2015)))

(declare-fun b!469690 () Bool)

(declare-fun tp!129627 () Bool)

(assert (=> b!469690 (= e!287410 tp!129627)))

(declare-fun b!469691 () Bool)

(declare-fun tp!129623 () Bool)

(declare-fun tp!129625 () Bool)

(assert (=> b!469691 (= e!287410 (and tp!129623 tp!129625))))

(assert (=> b!469442 (= tp!129586 e!287410)))

(assert (= (and b!469442 ((_ is ElementMatch!1109) (regOne!2730 (reg!1438 r!23305)))) b!469688))

(assert (= (and b!469442 ((_ is Concat!2009) (regOne!2730 (reg!1438 r!23305)))) b!469689))

(assert (= (and b!469442 ((_ is Star!1109) (regOne!2730 (reg!1438 r!23305)))) b!469690))

(assert (= (and b!469442 ((_ is Union!1109) (regOne!2730 (reg!1438 r!23305)))) b!469691))

(declare-fun b!469693 () Bool)

(declare-fun e!287411 () Bool)

(declare-fun tp!129631 () Bool)

(declare-fun tp!129629 () Bool)

(assert (=> b!469693 (= e!287411 (and tp!129631 tp!129629))))

(declare-fun b!469692 () Bool)

(assert (=> b!469692 (= e!287411 tp_is_empty!2015)))

(declare-fun b!469694 () Bool)

(declare-fun tp!129632 () Bool)

(assert (=> b!469694 (= e!287411 tp!129632)))

(declare-fun b!469695 () Bool)

(declare-fun tp!129628 () Bool)

(declare-fun tp!129630 () Bool)

(assert (=> b!469695 (= e!287411 (and tp!129628 tp!129630))))

(assert (=> b!469442 (= tp!129584 e!287411)))

(assert (= (and b!469442 ((_ is ElementMatch!1109) (regTwo!2730 (reg!1438 r!23305)))) b!469692))

(assert (= (and b!469442 ((_ is Concat!2009) (regTwo!2730 (reg!1438 r!23305)))) b!469693))

(assert (= (and b!469442 ((_ is Star!1109) (regTwo!2730 (reg!1438 r!23305)))) b!469694))

(assert (= (and b!469442 ((_ is Union!1109) (regTwo!2730 (reg!1438 r!23305)))) b!469695))

(declare-fun b!469697 () Bool)

(declare-fun e!287412 () Bool)

(declare-fun tp!129636 () Bool)

(declare-fun tp!129634 () Bool)

(assert (=> b!469697 (= e!287412 (and tp!129636 tp!129634))))

(declare-fun b!469696 () Bool)

(assert (=> b!469696 (= e!287412 tp_is_empty!2015)))

(declare-fun b!469698 () Bool)

(declare-fun tp!129637 () Bool)

(assert (=> b!469698 (= e!287412 tp!129637)))

(declare-fun b!469699 () Bool)

(declare-fun tp!129633 () Bool)

(declare-fun tp!129635 () Bool)

(assert (=> b!469699 (= e!287412 (and tp!129633 tp!129635))))

(assert (=> b!469456 (= tp!129598 e!287412)))

(assert (= (and b!469456 ((_ is ElementMatch!1109) (regOne!2731 (regOne!2731 r!23305)))) b!469696))

(assert (= (and b!469456 ((_ is Concat!2009) (regOne!2731 (regOne!2731 r!23305)))) b!469697))

(assert (= (and b!469456 ((_ is Star!1109) (regOne!2731 (regOne!2731 r!23305)))) b!469698))

(assert (= (and b!469456 ((_ is Union!1109) (regOne!2731 (regOne!2731 r!23305)))) b!469699))

(declare-fun b!469701 () Bool)

(declare-fun e!287413 () Bool)

(declare-fun tp!129641 () Bool)

(declare-fun tp!129639 () Bool)

(assert (=> b!469701 (= e!287413 (and tp!129641 tp!129639))))

(declare-fun b!469700 () Bool)

(assert (=> b!469700 (= e!287413 tp_is_empty!2015)))

(declare-fun b!469702 () Bool)

(declare-fun tp!129642 () Bool)

(assert (=> b!469702 (= e!287413 tp!129642)))

(declare-fun b!469703 () Bool)

(declare-fun tp!129638 () Bool)

(declare-fun tp!129640 () Bool)

(assert (=> b!469703 (= e!287413 (and tp!129638 tp!129640))))

(assert (=> b!469456 (= tp!129600 e!287413)))

(assert (= (and b!469456 ((_ is ElementMatch!1109) (regTwo!2731 (regOne!2731 r!23305)))) b!469700))

(assert (= (and b!469456 ((_ is Concat!2009) (regTwo!2731 (regOne!2731 r!23305)))) b!469701))

(assert (= (and b!469456 ((_ is Star!1109) (regTwo!2731 (regOne!2731 r!23305)))) b!469702))

(assert (= (and b!469456 ((_ is Union!1109) (regTwo!2731 (regOne!2731 r!23305)))) b!469703))

(declare-fun b!469705 () Bool)

(declare-fun e!287414 () Bool)

(declare-fun tp!129646 () Bool)

(declare-fun tp!129644 () Bool)

(assert (=> b!469705 (= e!287414 (and tp!129646 tp!129644))))

(declare-fun b!469704 () Bool)

(assert (=> b!469704 (= e!287414 tp_is_empty!2015)))

(declare-fun b!469706 () Bool)

(declare-fun tp!129647 () Bool)

(assert (=> b!469706 (= e!287414 tp!129647)))

(declare-fun b!469707 () Bool)

(declare-fun tp!129643 () Bool)

(declare-fun tp!129645 () Bool)

(assert (=> b!469707 (= e!287414 (and tp!129643 tp!129645))))

(assert (=> b!469451 (= tp!129597 e!287414)))

(assert (= (and b!469451 ((_ is ElementMatch!1109) (reg!1438 (regTwo!2730 r!23305)))) b!469704))

(assert (= (and b!469451 ((_ is Concat!2009) (reg!1438 (regTwo!2730 r!23305)))) b!469705))

(assert (= (and b!469451 ((_ is Star!1109) (reg!1438 (regTwo!2730 r!23305)))) b!469706))

(assert (= (and b!469451 ((_ is Union!1109) (reg!1438 (regTwo!2730 r!23305)))) b!469707))

(declare-fun b!469709 () Bool)

(declare-fun e!287415 () Bool)

(declare-fun tp!129651 () Bool)

(declare-fun tp!129649 () Bool)

(assert (=> b!469709 (= e!287415 (and tp!129651 tp!129649))))

(declare-fun b!469708 () Bool)

(assert (=> b!469708 (= e!287415 tp_is_empty!2015)))

(declare-fun b!469710 () Bool)

(declare-fun tp!129652 () Bool)

(assert (=> b!469710 (= e!287415 tp!129652)))

(declare-fun b!469711 () Bool)

(declare-fun tp!129648 () Bool)

(declare-fun tp!129650 () Bool)

(assert (=> b!469711 (= e!287415 (and tp!129648 tp!129650))))

(assert (=> b!469444 (= tp!129583 e!287415)))

(assert (= (and b!469444 ((_ is ElementMatch!1109) (regOne!2731 (reg!1438 r!23305)))) b!469708))

(assert (= (and b!469444 ((_ is Concat!2009) (regOne!2731 (reg!1438 r!23305)))) b!469709))

(assert (= (and b!469444 ((_ is Star!1109) (regOne!2731 (reg!1438 r!23305)))) b!469710))

(assert (= (and b!469444 ((_ is Union!1109) (regOne!2731 (reg!1438 r!23305)))) b!469711))

(declare-fun b!469713 () Bool)

(declare-fun e!287416 () Bool)

(declare-fun tp!129656 () Bool)

(declare-fun tp!129654 () Bool)

(assert (=> b!469713 (= e!287416 (and tp!129656 tp!129654))))

(declare-fun b!469712 () Bool)

(assert (=> b!469712 (= e!287416 tp_is_empty!2015)))

(declare-fun b!469714 () Bool)

(declare-fun tp!129657 () Bool)

(assert (=> b!469714 (= e!287416 tp!129657)))

(declare-fun b!469715 () Bool)

(declare-fun tp!129653 () Bool)

(declare-fun tp!129655 () Bool)

(assert (=> b!469715 (= e!287416 (and tp!129653 tp!129655))))

(assert (=> b!469444 (= tp!129585 e!287416)))

(assert (= (and b!469444 ((_ is ElementMatch!1109) (regTwo!2731 (reg!1438 r!23305)))) b!469712))

(assert (= (and b!469444 ((_ is Concat!2009) (regTwo!2731 (reg!1438 r!23305)))) b!469713))

(assert (= (and b!469444 ((_ is Star!1109) (regTwo!2731 (reg!1438 r!23305)))) b!469714))

(assert (= (and b!469444 ((_ is Union!1109) (regTwo!2731 (reg!1438 r!23305)))) b!469715))

(declare-fun b!469717 () Bool)

(declare-fun e!287417 () Bool)

(declare-fun tp!129661 () Bool)

(declare-fun tp!129659 () Bool)

(assert (=> b!469717 (= e!287417 (and tp!129661 tp!129659))))

(declare-fun b!469716 () Bool)

(assert (=> b!469716 (= e!287417 tp_is_empty!2015)))

(declare-fun b!469718 () Bool)

(declare-fun tp!129662 () Bool)

(assert (=> b!469718 (= e!287417 tp!129662)))

(declare-fun b!469719 () Bool)

(declare-fun tp!129658 () Bool)

(declare-fun tp!129660 () Bool)

(assert (=> b!469719 (= e!287417 (and tp!129658 tp!129660))))

(assert (=> b!469448 (= tp!129588 e!287417)))

(assert (= (and b!469448 ((_ is ElementMatch!1109) (regOne!2731 (regOne!2730 r!23305)))) b!469716))

(assert (= (and b!469448 ((_ is Concat!2009) (regOne!2731 (regOne!2730 r!23305)))) b!469717))

(assert (= (and b!469448 ((_ is Star!1109) (regOne!2731 (regOne!2730 r!23305)))) b!469718))

(assert (= (and b!469448 ((_ is Union!1109) (regOne!2731 (regOne!2730 r!23305)))) b!469719))

(declare-fun b!469721 () Bool)

(declare-fun e!287418 () Bool)

(declare-fun tp!129666 () Bool)

(declare-fun tp!129664 () Bool)

(assert (=> b!469721 (= e!287418 (and tp!129666 tp!129664))))

(declare-fun b!469720 () Bool)

(assert (=> b!469720 (= e!287418 tp_is_empty!2015)))

(declare-fun b!469722 () Bool)

(declare-fun tp!129667 () Bool)

(assert (=> b!469722 (= e!287418 tp!129667)))

(declare-fun b!469723 () Bool)

(declare-fun tp!129663 () Bool)

(declare-fun tp!129665 () Bool)

(assert (=> b!469723 (= e!287418 (and tp!129663 tp!129665))))

(assert (=> b!469448 (= tp!129590 e!287418)))

(assert (= (and b!469448 ((_ is ElementMatch!1109) (regTwo!2731 (regOne!2730 r!23305)))) b!469720))

(assert (= (and b!469448 ((_ is Concat!2009) (regTwo!2731 (regOne!2730 r!23305)))) b!469721))

(assert (= (and b!469448 ((_ is Star!1109) (regTwo!2731 (regOne!2730 r!23305)))) b!469722))

(assert (= (and b!469448 ((_ is Union!1109) (regTwo!2731 (regOne!2730 r!23305)))) b!469723))

(declare-fun b!469725 () Bool)

(declare-fun e!287419 () Bool)

(declare-fun tp!129671 () Bool)

(declare-fun tp!129669 () Bool)

(assert (=> b!469725 (= e!287419 (and tp!129671 tp!129669))))

(declare-fun b!469724 () Bool)

(assert (=> b!469724 (= e!287419 tp_is_empty!2015)))

(declare-fun b!469726 () Bool)

(declare-fun tp!129672 () Bool)

(assert (=> b!469726 (= e!287419 tp!129672)))

(declare-fun b!469727 () Bool)

(declare-fun tp!129668 () Bool)

(declare-fun tp!129670 () Bool)

(assert (=> b!469727 (= e!287419 (and tp!129668 tp!129670))))

(assert (=> b!469443 (= tp!129587 e!287419)))

(assert (= (and b!469443 ((_ is ElementMatch!1109) (reg!1438 (reg!1438 r!23305)))) b!469724))

(assert (= (and b!469443 ((_ is Concat!2009) (reg!1438 (reg!1438 r!23305)))) b!469725))

(assert (= (and b!469443 ((_ is Star!1109) (reg!1438 (reg!1438 r!23305)))) b!469726))

(assert (= (and b!469443 ((_ is Union!1109) (reg!1438 (reg!1438 r!23305)))) b!469727))

(declare-fun b!469729 () Bool)

(declare-fun e!287420 () Bool)

(declare-fun tp!129676 () Bool)

(declare-fun tp!129674 () Bool)

(assert (=> b!469729 (= e!287420 (and tp!129676 tp!129674))))

(declare-fun b!469728 () Bool)

(assert (=> b!469728 (= e!287420 tp_is_empty!2015)))

(declare-fun b!469730 () Bool)

(declare-fun tp!129677 () Bool)

(assert (=> b!469730 (= e!287420 tp!129677)))

(declare-fun b!469731 () Bool)

(declare-fun tp!129673 () Bool)

(declare-fun tp!129675 () Bool)

(assert (=> b!469731 (= e!287420 (and tp!129673 tp!129675))))

(assert (=> b!469454 (= tp!129601 e!287420)))

(assert (= (and b!469454 ((_ is ElementMatch!1109) (regOne!2730 (regOne!2731 r!23305)))) b!469728))

(assert (= (and b!469454 ((_ is Concat!2009) (regOne!2730 (regOne!2731 r!23305)))) b!469729))

(assert (= (and b!469454 ((_ is Star!1109) (regOne!2730 (regOne!2731 r!23305)))) b!469730))

(assert (= (and b!469454 ((_ is Union!1109) (regOne!2730 (regOne!2731 r!23305)))) b!469731))

(declare-fun b!469733 () Bool)

(declare-fun e!287421 () Bool)

(declare-fun tp!129681 () Bool)

(declare-fun tp!129679 () Bool)

(assert (=> b!469733 (= e!287421 (and tp!129681 tp!129679))))

(declare-fun b!469732 () Bool)

(assert (=> b!469732 (= e!287421 tp_is_empty!2015)))

(declare-fun b!469734 () Bool)

(declare-fun tp!129682 () Bool)

(assert (=> b!469734 (= e!287421 tp!129682)))

(declare-fun b!469735 () Bool)

(declare-fun tp!129678 () Bool)

(declare-fun tp!129680 () Bool)

(assert (=> b!469735 (= e!287421 (and tp!129678 tp!129680))))

(assert (=> b!469454 (= tp!129599 e!287421)))

(assert (= (and b!469454 ((_ is ElementMatch!1109) (regTwo!2730 (regOne!2731 r!23305)))) b!469732))

(assert (= (and b!469454 ((_ is Concat!2009) (regTwo!2730 (regOne!2731 r!23305)))) b!469733))

(assert (= (and b!469454 ((_ is Star!1109) (regTwo!2730 (regOne!2731 r!23305)))) b!469734))

(assert (= (and b!469454 ((_ is Union!1109) (regTwo!2730 (regOne!2731 r!23305)))) b!469735))

(declare-fun b!469737 () Bool)

(declare-fun e!287422 () Bool)

(declare-fun tp!129686 () Bool)

(declare-fun tp!129684 () Bool)

(assert (=> b!469737 (= e!287422 (and tp!129686 tp!129684))))

(declare-fun b!469736 () Bool)

(assert (=> b!469736 (= e!287422 tp_is_empty!2015)))

(declare-fun b!469738 () Bool)

(declare-fun tp!129687 () Bool)

(assert (=> b!469738 (= e!287422 tp!129687)))

(declare-fun b!469739 () Bool)

(declare-fun tp!129683 () Bool)

(declare-fun tp!129685 () Bool)

(assert (=> b!469739 (= e!287422 (and tp!129683 tp!129685))))

(assert (=> b!469458 (= tp!129606 e!287422)))

(assert (= (and b!469458 ((_ is ElementMatch!1109) (regOne!2730 (regTwo!2731 r!23305)))) b!469736))

(assert (= (and b!469458 ((_ is Concat!2009) (regOne!2730 (regTwo!2731 r!23305)))) b!469737))

(assert (= (and b!469458 ((_ is Star!1109) (regOne!2730 (regTwo!2731 r!23305)))) b!469738))

(assert (= (and b!469458 ((_ is Union!1109) (regOne!2730 (regTwo!2731 r!23305)))) b!469739))

(declare-fun b!469741 () Bool)

(declare-fun e!287423 () Bool)

(declare-fun tp!129691 () Bool)

(declare-fun tp!129689 () Bool)

(assert (=> b!469741 (= e!287423 (and tp!129691 tp!129689))))

(declare-fun b!469740 () Bool)

(assert (=> b!469740 (= e!287423 tp_is_empty!2015)))

(declare-fun b!469742 () Bool)

(declare-fun tp!129692 () Bool)

(assert (=> b!469742 (= e!287423 tp!129692)))

(declare-fun b!469743 () Bool)

(declare-fun tp!129688 () Bool)

(declare-fun tp!129690 () Bool)

(assert (=> b!469743 (= e!287423 (and tp!129688 tp!129690))))

(assert (=> b!469458 (= tp!129604 e!287423)))

(assert (= (and b!469458 ((_ is ElementMatch!1109) (regTwo!2730 (regTwo!2731 r!23305)))) b!469740))

(assert (= (and b!469458 ((_ is Concat!2009) (regTwo!2730 (regTwo!2731 r!23305)))) b!469741))

(assert (= (and b!469458 ((_ is Star!1109) (regTwo!2730 (regTwo!2731 r!23305)))) b!469742))

(assert (= (and b!469458 ((_ is Union!1109) (regTwo!2730 (regTwo!2731 r!23305)))) b!469743))

(declare-fun b!469745 () Bool)

(declare-fun e!287424 () Bool)

(declare-fun tp!129696 () Bool)

(declare-fun tp!129694 () Bool)

(assert (=> b!469745 (= e!287424 (and tp!129696 tp!129694))))

(declare-fun b!469744 () Bool)

(assert (=> b!469744 (= e!287424 tp_is_empty!2015)))

(declare-fun b!469746 () Bool)

(declare-fun tp!129697 () Bool)

(assert (=> b!469746 (= e!287424 tp!129697)))

(declare-fun b!469747 () Bool)

(declare-fun tp!129693 () Bool)

(declare-fun tp!129695 () Bool)

(assert (=> b!469747 (= e!287424 (and tp!129693 tp!129695))))

(assert (=> b!469446 (= tp!129591 e!287424)))

(assert (= (and b!469446 ((_ is ElementMatch!1109) (regOne!2730 (regOne!2730 r!23305)))) b!469744))

(assert (= (and b!469446 ((_ is Concat!2009) (regOne!2730 (regOne!2730 r!23305)))) b!469745))

(assert (= (and b!469446 ((_ is Star!1109) (regOne!2730 (regOne!2730 r!23305)))) b!469746))

(assert (= (and b!469446 ((_ is Union!1109) (regOne!2730 (regOne!2730 r!23305)))) b!469747))

(declare-fun b!469749 () Bool)

(declare-fun e!287425 () Bool)

(declare-fun tp!129701 () Bool)

(declare-fun tp!129699 () Bool)

(assert (=> b!469749 (= e!287425 (and tp!129701 tp!129699))))

(declare-fun b!469748 () Bool)

(assert (=> b!469748 (= e!287425 tp_is_empty!2015)))

(declare-fun b!469750 () Bool)

(declare-fun tp!129702 () Bool)

(assert (=> b!469750 (= e!287425 tp!129702)))

(declare-fun b!469751 () Bool)

(declare-fun tp!129698 () Bool)

(declare-fun tp!129700 () Bool)

(assert (=> b!469751 (= e!287425 (and tp!129698 tp!129700))))

(assert (=> b!469446 (= tp!129589 e!287425)))

(assert (= (and b!469446 ((_ is ElementMatch!1109) (regTwo!2730 (regOne!2730 r!23305)))) b!469748))

(assert (= (and b!469446 ((_ is Concat!2009) (regTwo!2730 (regOne!2730 r!23305)))) b!469749))

(assert (= (and b!469446 ((_ is Star!1109) (regTwo!2730 (regOne!2730 r!23305)))) b!469750))

(assert (= (and b!469446 ((_ is Union!1109) (regTwo!2730 (regOne!2730 r!23305)))) b!469751))

(declare-fun b!469753 () Bool)

(declare-fun e!287426 () Bool)

(declare-fun tp!129706 () Bool)

(declare-fun tp!129704 () Bool)

(assert (=> b!469753 (= e!287426 (and tp!129706 tp!129704))))

(declare-fun b!469752 () Bool)

(assert (=> b!469752 (= e!287426 tp_is_empty!2015)))

(declare-fun b!469754 () Bool)

(declare-fun tp!129707 () Bool)

(assert (=> b!469754 (= e!287426 tp!129707)))

(declare-fun b!469755 () Bool)

(declare-fun tp!129703 () Bool)

(declare-fun tp!129705 () Bool)

(assert (=> b!469755 (= e!287426 (and tp!129703 tp!129705))))

(assert (=> b!469460 (= tp!129603 e!287426)))

(assert (= (and b!469460 ((_ is ElementMatch!1109) (regOne!2731 (regTwo!2731 r!23305)))) b!469752))

(assert (= (and b!469460 ((_ is Concat!2009) (regOne!2731 (regTwo!2731 r!23305)))) b!469753))

(assert (= (and b!469460 ((_ is Star!1109) (regOne!2731 (regTwo!2731 r!23305)))) b!469754))

(assert (= (and b!469460 ((_ is Union!1109) (regOne!2731 (regTwo!2731 r!23305)))) b!469755))

(declare-fun b!469761 () Bool)

(declare-fun e!287429 () Bool)

(declare-fun tp!129711 () Bool)

(declare-fun tp!129709 () Bool)

(assert (=> b!469761 (= e!287429 (and tp!129711 tp!129709))))

(declare-fun b!469760 () Bool)

(assert (=> b!469760 (= e!287429 tp_is_empty!2015)))

(declare-fun b!469762 () Bool)

(declare-fun tp!129712 () Bool)

(assert (=> b!469762 (= e!287429 tp!129712)))

(declare-fun b!469763 () Bool)

(declare-fun tp!129708 () Bool)

(declare-fun tp!129710 () Bool)

(assert (=> b!469763 (= e!287429 (and tp!129708 tp!129710))))

(assert (=> b!469460 (= tp!129605 e!287429)))

(assert (= (and b!469460 ((_ is ElementMatch!1109) (regTwo!2731 (regTwo!2731 r!23305)))) b!469760))

(assert (= (and b!469460 ((_ is Concat!2009) (regTwo!2731 (regTwo!2731 r!23305)))) b!469761))

(assert (= (and b!469460 ((_ is Star!1109) (regTwo!2731 (regTwo!2731 r!23305)))) b!469762))

(assert (= (and b!469460 ((_ is Union!1109) (regTwo!2731 (regTwo!2731 r!23305)))) b!469763))

(declare-fun b!469765 () Bool)

(declare-fun e!287430 () Bool)

(declare-fun tp!129716 () Bool)

(declare-fun tp!129714 () Bool)

(assert (=> b!469765 (= e!287430 (and tp!129716 tp!129714))))

(declare-fun b!469764 () Bool)

(assert (=> b!469764 (= e!287430 tp_is_empty!2015)))

(declare-fun b!469766 () Bool)

(declare-fun tp!129717 () Bool)

(assert (=> b!469766 (= e!287430 tp!129717)))

(declare-fun b!469767 () Bool)

(declare-fun tp!129713 () Bool)

(declare-fun tp!129715 () Bool)

(assert (=> b!469767 (= e!287430 (and tp!129713 tp!129715))))

(assert (=> b!469455 (= tp!129602 e!287430)))

(assert (= (and b!469455 ((_ is ElementMatch!1109) (reg!1438 (regOne!2731 r!23305)))) b!469764))

(assert (= (and b!469455 ((_ is Concat!2009) (reg!1438 (regOne!2731 r!23305)))) b!469765))

(assert (= (and b!469455 ((_ is Star!1109) (reg!1438 (regOne!2731 r!23305)))) b!469766))

(assert (= (and b!469455 ((_ is Union!1109) (reg!1438 (regOne!2731 r!23305)))) b!469767))

(declare-fun b!469771 () Bool)

(declare-fun e!287433 () Bool)

(declare-fun tp!129721 () Bool)

(declare-fun tp!129719 () Bool)

(assert (=> b!469771 (= e!287433 (and tp!129721 tp!129719))))

(declare-fun b!469770 () Bool)

(assert (=> b!469770 (= e!287433 tp_is_empty!2015)))

(declare-fun b!469772 () Bool)

(declare-fun tp!129722 () Bool)

(assert (=> b!469772 (= e!287433 tp!129722)))

(declare-fun b!469773 () Bool)

(declare-fun tp!129718 () Bool)

(declare-fun tp!129720 () Bool)

(assert (=> b!469773 (= e!287433 (and tp!129718 tp!129720))))

(assert (=> b!469450 (= tp!129596 e!287433)))

(assert (= (and b!469450 ((_ is ElementMatch!1109) (regOne!2730 (regTwo!2730 r!23305)))) b!469770))

(assert (= (and b!469450 ((_ is Concat!2009) (regOne!2730 (regTwo!2730 r!23305)))) b!469771))

(assert (= (and b!469450 ((_ is Star!1109) (regOne!2730 (regTwo!2730 r!23305)))) b!469772))

(assert (= (and b!469450 ((_ is Union!1109) (regOne!2730 (regTwo!2730 r!23305)))) b!469773))

(declare-fun b!469777 () Bool)

(declare-fun e!287434 () Bool)

(declare-fun tp!129726 () Bool)

(declare-fun tp!129724 () Bool)

(assert (=> b!469777 (= e!287434 (and tp!129726 tp!129724))))

(declare-fun b!469776 () Bool)

(assert (=> b!469776 (= e!287434 tp_is_empty!2015)))

(declare-fun b!469778 () Bool)

(declare-fun tp!129727 () Bool)

(assert (=> b!469778 (= e!287434 tp!129727)))

(declare-fun b!469779 () Bool)

(declare-fun tp!129723 () Bool)

(declare-fun tp!129725 () Bool)

(assert (=> b!469779 (= e!287434 (and tp!129723 tp!129725))))

(assert (=> b!469450 (= tp!129594 e!287434)))

(assert (= (and b!469450 ((_ is ElementMatch!1109) (regTwo!2730 (regTwo!2730 r!23305)))) b!469776))

(assert (= (and b!469450 ((_ is Concat!2009) (regTwo!2730 (regTwo!2730 r!23305)))) b!469777))

(assert (= (and b!469450 ((_ is Star!1109) (regTwo!2730 (regTwo!2730 r!23305)))) b!469778))

(assert (= (and b!469450 ((_ is Union!1109) (regTwo!2730 (regTwo!2730 r!23305)))) b!469779))

(declare-fun b!469781 () Bool)

(declare-fun e!287435 () Bool)

(declare-fun tp!129731 () Bool)

(declare-fun tp!129729 () Bool)

(assert (=> b!469781 (= e!287435 (and tp!129731 tp!129729))))

(declare-fun b!469780 () Bool)

(assert (=> b!469780 (= e!287435 tp_is_empty!2015)))

(declare-fun b!469782 () Bool)

(declare-fun tp!129732 () Bool)

(assert (=> b!469782 (= e!287435 tp!129732)))

(declare-fun b!469783 () Bool)

(declare-fun tp!129728 () Bool)

(declare-fun tp!129730 () Bool)

(assert (=> b!469783 (= e!287435 (and tp!129728 tp!129730))))

(assert (=> b!469459 (= tp!129607 e!287435)))

(assert (= (and b!469459 ((_ is ElementMatch!1109) (reg!1438 (regTwo!2731 r!23305)))) b!469780))

(assert (= (and b!469459 ((_ is Concat!2009) (reg!1438 (regTwo!2731 r!23305)))) b!469781))

(assert (= (and b!469459 ((_ is Star!1109) (reg!1438 (regTwo!2731 r!23305)))) b!469782))

(assert (= (and b!469459 ((_ is Union!1109) (reg!1438 (regTwo!2731 r!23305)))) b!469783))

(check-sat (not b!469711) (not b!469753) (not b!469689) (not b!469721) (not d!179072) (not bm!32651) (not b!469663) (not b!469765) (not bm!32650) (not b!469706) (not b!469718) (not b!469713) (not b!469738) (not bm!32678) (not bm!32647) (not bm!32677) (not b!469719) (not b!469722) (not b!469725) (not b!469698) (not b!469746) (not bm!32652) (not b!469695) (not b!469741) (not b!469466) (not b!469749) (not b!469782) (not d!179102) (not b!469714) (not b!469763) (not b!469726) (not b!469739) (not d!179108) (not b!469783) (not b!469743) (not b!469766) (not d!179086) (not b!469496) (not d!179080) (not b!469703) (not b!469762) (not b!469735) (not b!469701) (not bm!32636) (not b!469608) (not b!469754) (not b!469777) (not b!469702) (not b!469729) (not b!469709) (not b!469697) (not b!469686) (not bm!32666) (not b!469745) (not b!469781) (not b!469707) (not bm!32653) (not b!469672) (not b!469710) (not b!469767) (not b!469771) (not b!469640) (not d!179096) (not b!469730) (not b!469670) (not b!469662) (not bm!32668) (not b!469733) (not b!469747) (not b!469761) (not b!469705) (not d!179058) (not b!469694) (not b!469685) (not bm!32670) (not b!469755) (not b!469532) (not bm!32675) (not b!469727) (not b!469773) (not b!469468) (not b!469690) (not b!469699) (not b!469661) (not bm!32667) (not b!469674) (not b!469772) (not b!469529) (not b!469462) tp_is_empty!2015 (not d!179060) (not b!469731) (not b!469645) (not b!469691) (not b!469639) (not b!469469) (not b!469687) (not b!469717) (not b!469723) (not b!469779) (not b!469742) (not b!469751) (not b!469461) (not b!469637) (not b!469474) (not b!469528) (not b!469734) (not b!469715) (not b!469632) (not b!469737) (not b!469627) (not b!469778) (not b!469693) (not bm!32648) (not b!469548) (not b!469750) (not b!469633))
(check-sat)
