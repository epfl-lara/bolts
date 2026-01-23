; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287766 () Bool)

(assert start!287766)

(declare-fun b!2976306 () Bool)

(assert (=> b!2976306 true))

(assert (=> b!2976306 true))

(assert (=> b!2976306 true))

(declare-fun lambda!110828 () Int)

(declare-fun lambda!110827 () Int)

(assert (=> b!2976306 (not (= lambda!110828 lambda!110827))))

(assert (=> b!2976306 true))

(assert (=> b!2976306 true))

(assert (=> b!2976306 true))

(declare-fun e!1872254 () Bool)

(declare-fun e!1872257 () Bool)

(assert (=> b!2976306 (= e!1872254 e!1872257)))

(declare-fun res!1227243 () Bool)

(assert (=> b!2976306 (=> res!1227243 e!1872257)))

(declare-fun lt!1037106 () Bool)

(assert (=> b!2976306 (= res!1227243 (not lt!1037106))))

(declare-fun Exists!1566 (Int) Bool)

(assert (=> b!2976306 (= (Exists!1566 lambda!110827) (Exists!1566 lambda!110828))))

(declare-datatypes ((Unit!48951 0))(
  ( (Unit!48952) )
))
(declare-fun lt!1037103 () Unit!48951)

(declare-datatypes ((C!18758 0))(
  ( (C!18759 (val!11415 Int)) )
))
(declare-datatypes ((Regex!9286 0))(
  ( (ElementMatch!9286 (c!488656 C!18758)) (Concat!14607 (regOne!19084 Regex!9286) (regTwo!19084 Regex!9286)) (EmptyExpr!9286) (Star!9286 (reg!9615 Regex!9286)) (EmptyLang!9286) (Union!9286 (regOne!19085 Regex!9286) (regTwo!19085 Regex!9286)) )
))
(declare-fun lt!1037107 () Regex!9286)

(declare-datatypes ((List!35151 0))(
  ( (Nil!35027) (Cons!35027 (h!40447 C!18758) (t!234216 List!35151)) )
))
(declare-fun s!11993 () List!35151)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!251 (Regex!9286 List!35151) Unit!48951)

(assert (=> b!2976306 (= lt!1037103 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!251 lt!1037107 s!11993))))

(assert (=> b!2976306 (= lt!1037106 (Exists!1566 lambda!110827))))

(declare-fun lt!1037108 () Regex!9286)

(declare-datatypes ((tuple2!33910 0))(
  ( (tuple2!33911 (_1!20087 List!35151) (_2!20087 List!35151)) )
))
(declare-datatypes ((Option!6687 0))(
  ( (None!6686) (Some!6686 (v!34820 tuple2!33910)) )
))
(declare-fun isDefined!5238 (Option!6687) Bool)

(declare-fun findConcatSeparation!1081 (Regex!9286 Regex!9286 List!35151 List!35151 List!35151) Option!6687)

(assert (=> b!2976306 (= lt!1037106 (isDefined!5238 (findConcatSeparation!1081 lt!1037107 lt!1037108 Nil!35027 s!11993 s!11993)))))

(declare-fun lt!1037105 () Unit!48951)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!859 (Regex!9286 Regex!9286 List!35151) Unit!48951)

(assert (=> b!2976306 (= lt!1037105 (lemmaFindConcatSeparationEquivalentToExists!859 lt!1037107 lt!1037108 s!11993))))

(declare-fun b!2976307 () Bool)

(declare-fun e!1872260 () Bool)

(declare-fun tp_is_empty!16135 () Bool)

(assert (=> b!2976307 (= e!1872260 tp_is_empty!16135)))

(declare-fun b!2976308 () Bool)

(declare-fun tp!948323 () Bool)

(declare-fun tp!948320 () Bool)

(assert (=> b!2976308 (= e!1872260 (and tp!948323 tp!948320))))

(declare-fun b!2976309 () Bool)

(declare-fun tp!948322 () Bool)

(assert (=> b!2976309 (= e!1872260 tp!948322)))

(declare-fun b!2976310 () Bool)

(declare-fun e!1872259 () Bool)

(declare-fun e!1872258 () Bool)

(assert (=> b!2976310 (= e!1872259 e!1872258)))

(declare-fun res!1227242 () Bool)

(assert (=> b!2976310 (=> res!1227242 e!1872258)))

(declare-fun isEmptyLang!400 (Regex!9286) Bool)

(assert (=> b!2976310 (= res!1227242 (isEmptyLang!400 lt!1037107))))

(declare-fun r!17423 () Regex!9286)

(declare-fun simplify!287 (Regex!9286) Regex!9286)

(assert (=> b!2976310 (= lt!1037107 (simplify!287 (reg!9615 r!17423)))))

(declare-fun res!1227241 () Bool)

(declare-fun e!1872261 () Bool)

(assert (=> start!287766 (=> (not res!1227241) (not e!1872261))))

(declare-fun validRegex!4019 (Regex!9286) Bool)

(assert (=> start!287766 (= res!1227241 (validRegex!4019 r!17423))))

(assert (=> start!287766 e!1872261))

(assert (=> start!287766 e!1872260))

(declare-fun e!1872256 () Bool)

(assert (=> start!287766 e!1872256))

(declare-fun b!2976311 () Bool)

(declare-fun tp!948319 () Bool)

(declare-fun tp!948318 () Bool)

(assert (=> b!2976311 (= e!1872260 (and tp!948319 tp!948318))))

(declare-fun b!2976312 () Bool)

(assert (=> b!2976312 (= e!1872257 (validRegex!4019 (reg!9615 r!17423)))))

(declare-fun b!2976313 () Bool)

(declare-fun tp!948321 () Bool)

(assert (=> b!2976313 (= e!1872256 (and tp_is_empty!16135 tp!948321))))

(declare-fun b!2976314 () Bool)

(declare-fun e!1872255 () Bool)

(assert (=> b!2976314 (= e!1872258 e!1872255)))

(declare-fun res!1227244 () Bool)

(assert (=> b!2976314 (=> res!1227244 e!1872255)))

(declare-fun matchR!4168 (Regex!9286 List!35151) Bool)

(assert (=> b!2976314 (= res!1227244 (not (matchR!4168 lt!1037108 s!11993)))))

(assert (=> b!2976314 (= lt!1037108 (Star!9286 lt!1037107))))

(declare-fun b!2976315 () Bool)

(assert (=> b!2976315 (= e!1872255 e!1872254)))

(declare-fun res!1227246 () Bool)

(assert (=> b!2976315 (=> res!1227246 e!1872254)))

(declare-fun isEmpty!19272 (List!35151) Bool)

(assert (=> b!2976315 (= res!1227246 (isEmpty!19272 s!11993))))

(declare-fun matchRSpec!1423 (Regex!9286 List!35151) Bool)

(assert (=> b!2976315 (matchRSpec!1423 lt!1037108 s!11993)))

(declare-fun lt!1037104 () Unit!48951)

(declare-fun mainMatchTheorem!1423 (Regex!9286 List!35151) Unit!48951)

(assert (=> b!2976315 (= lt!1037104 (mainMatchTheorem!1423 lt!1037108 s!11993))))

(declare-fun b!2976316 () Bool)

(assert (=> b!2976316 (= e!1872261 (not e!1872259))))

(declare-fun res!1227245 () Bool)

(assert (=> b!2976316 (=> res!1227245 e!1872259)))

(declare-fun lt!1037110 () Bool)

(assert (=> b!2976316 (= res!1227245 (or lt!1037110 (is-Concat!14607 r!17423) (is-Union!9286 r!17423) (not (is-Star!9286 r!17423))))))

(assert (=> b!2976316 (= lt!1037110 (matchRSpec!1423 r!17423 s!11993))))

(assert (=> b!2976316 (= lt!1037110 (matchR!4168 r!17423 s!11993))))

(declare-fun lt!1037109 () Unit!48951)

(assert (=> b!2976316 (= lt!1037109 (mainMatchTheorem!1423 r!17423 s!11993))))

(assert (= (and start!287766 res!1227241) b!2976316))

(assert (= (and b!2976316 (not res!1227245)) b!2976310))

(assert (= (and b!2976310 (not res!1227242)) b!2976314))

(assert (= (and b!2976314 (not res!1227244)) b!2976315))

(assert (= (and b!2976315 (not res!1227246)) b!2976306))

(assert (= (and b!2976306 (not res!1227243)) b!2976312))

(assert (= (and start!287766 (is-ElementMatch!9286 r!17423)) b!2976307))

(assert (= (and start!287766 (is-Concat!14607 r!17423)) b!2976311))

(assert (= (and start!287766 (is-Star!9286 r!17423)) b!2976309))

(assert (= (and start!287766 (is-Union!9286 r!17423)) b!2976308))

(assert (= (and start!287766 (is-Cons!35027 s!11993)) b!2976313))

(declare-fun m!3340201 () Bool)

(assert (=> b!2976314 m!3340201))

(declare-fun m!3340203 () Bool)

(assert (=> b!2976316 m!3340203))

(declare-fun m!3340205 () Bool)

(assert (=> b!2976316 m!3340205))

(declare-fun m!3340207 () Bool)

(assert (=> b!2976316 m!3340207))

(declare-fun m!3340209 () Bool)

(assert (=> b!2976306 m!3340209))

(declare-fun m!3340211 () Bool)

(assert (=> b!2976306 m!3340211))

(declare-fun m!3340213 () Bool)

(assert (=> b!2976306 m!3340213))

(assert (=> b!2976306 m!3340213))

(assert (=> b!2976306 m!3340209))

(declare-fun m!3340215 () Bool)

(assert (=> b!2976306 m!3340215))

(declare-fun m!3340217 () Bool)

(assert (=> b!2976306 m!3340217))

(declare-fun m!3340219 () Bool)

(assert (=> b!2976306 m!3340219))

(declare-fun m!3340221 () Bool)

(assert (=> start!287766 m!3340221))

(declare-fun m!3340223 () Bool)

(assert (=> b!2976310 m!3340223))

(declare-fun m!3340225 () Bool)

(assert (=> b!2976310 m!3340225))

(declare-fun m!3340227 () Bool)

(assert (=> b!2976312 m!3340227))

(declare-fun m!3340229 () Bool)

(assert (=> b!2976315 m!3340229))

(declare-fun m!3340231 () Bool)

(assert (=> b!2976315 m!3340231))

(declare-fun m!3340233 () Bool)

(assert (=> b!2976315 m!3340233))

(push 1)

(assert (not b!2976306))

(assert (not b!2976310))

(assert (not b!2976311))

(assert (not b!2976316))

(assert (not b!2976309))

(assert (not b!2976312))

(assert (not b!2976314))

(assert (not start!287766))

(assert (not b!2976315))

(assert (not b!2976313))

(assert tp_is_empty!16135)

(assert (not b!2976308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!843135 () Bool)

(assert (=> d!843135 (= (isEmptyLang!400 lt!1037107) (is-EmptyLang!9286 lt!1037107))))

(assert (=> b!2976310 d!843135))

(declare-fun b!2976444 () Bool)

(declare-fun e!1872347 () Regex!9286)

(declare-fun e!1872336 () Regex!9286)

(assert (=> b!2976444 (= e!1872347 e!1872336)))

(declare-fun lt!1037152 () Regex!9286)

(declare-fun call!198524 () Regex!9286)

(assert (=> b!2976444 (= lt!1037152 call!198524)))

(declare-fun lt!1037147 () Regex!9286)

(declare-fun call!198522 () Regex!9286)

(assert (=> b!2976444 (= lt!1037147 call!198522)))

(declare-fun c!488689 () Bool)

(declare-fun call!198527 () Bool)

(assert (=> b!2976444 (= c!488689 call!198527)))

(declare-fun b!2976445 () Bool)

(declare-fun e!1872340 () Regex!9286)

(assert (=> b!2976445 (= e!1872340 EmptyLang!9286)))

(declare-fun c!488691 () Bool)

(declare-fun call!198526 () Regex!9286)

(declare-fun c!488688 () Bool)

(declare-fun bm!198516 () Bool)

(assert (=> bm!198516 (= call!198526 (simplify!287 (ite c!488688 (reg!9615 (reg!9615 r!17423)) (ite c!488691 (regTwo!19085 (reg!9615 r!17423)) (regOne!19084 (reg!9615 r!17423))))))))

(declare-fun b!2976446 () Bool)

(declare-fun c!488692 () Bool)

(declare-fun call!198521 () Bool)

(assert (=> b!2976446 (= c!488692 call!198521)))

(declare-fun e!1872341 () Regex!9286)

(assert (=> b!2976446 (= e!1872336 e!1872341)))

(declare-fun b!2976447 () Bool)

(assert (=> b!2976447 (= e!1872336 lt!1037147)))

(declare-fun b!2976448 () Bool)

(declare-fun e!1872342 () Regex!9286)

(assert (=> b!2976448 (= e!1872342 EmptyLang!9286)))

(declare-fun bm!198517 () Bool)

(assert (=> bm!198517 (= call!198522 call!198526)))

(declare-fun b!2976449 () Bool)

(assert (=> b!2976449 (= c!488691 (is-Union!9286 (reg!9615 r!17423)))))

(declare-fun e!1872343 () Regex!9286)

(assert (=> b!2976449 (= e!1872343 e!1872347)))

(declare-fun b!2976450 () Bool)

(assert (=> b!2976450 (= e!1872341 lt!1037152)))

(declare-fun bm!198518 () Bool)

(assert (=> bm!198518 (= call!198524 (simplify!287 (ite c!488691 (regOne!19085 (reg!9615 r!17423)) (regTwo!19084 (reg!9615 r!17423)))))))

(declare-fun d!843137 () Bool)

(declare-fun e!1872335 () Bool)

(assert (=> d!843137 e!1872335))

(declare-fun res!1227291 () Bool)

(assert (=> d!843137 (=> (not res!1227291) (not e!1872335))))

(declare-fun lt!1037149 () Regex!9286)

(assert (=> d!843137 (= res!1227291 (validRegex!4019 lt!1037149))))

(assert (=> d!843137 (= lt!1037149 e!1872340)))

(declare-fun c!488693 () Bool)

(assert (=> d!843137 (= c!488693 (is-EmptyLang!9286 (reg!9615 r!17423)))))

(assert (=> d!843137 (validRegex!4019 (reg!9615 r!17423))))

(assert (=> d!843137 (= (simplify!287 (reg!9615 r!17423)) lt!1037149)))

(declare-fun b!2976451 () Bool)

(declare-fun e!1872338 () Regex!9286)

(declare-fun lt!1037150 () Regex!9286)

(assert (=> b!2976451 (= e!1872338 (Star!9286 lt!1037150))))

(declare-fun b!2976452 () Bool)

(declare-fun e!1872344 () Regex!9286)

(declare-fun lt!1037151 () Regex!9286)

(declare-fun lt!1037148 () Regex!9286)

(assert (=> b!2976452 (= e!1872344 (Concat!14607 lt!1037151 lt!1037148))))

(declare-fun b!2976453 () Bool)

(declare-fun e!1872346 () Regex!9286)

(assert (=> b!2976453 (= e!1872346 EmptyExpr!9286)))

(declare-fun bm!198519 () Bool)

(assert (=> bm!198519 (= call!198521 (isEmptyLang!400 (ite c!488691 lt!1037147 lt!1037148)))))

(declare-fun b!2976454 () Bool)

(assert (=> b!2976454 (= e!1872347 e!1872342)))

(assert (=> b!2976454 (= lt!1037151 call!198522)))

(assert (=> b!2976454 (= lt!1037148 call!198524)))

(declare-fun res!1227293 () Bool)

(assert (=> b!2976454 (= res!1227293 call!198527)))

(declare-fun e!1872345 () Bool)

(assert (=> b!2976454 (=> res!1227293 e!1872345)))

(declare-fun c!488690 () Bool)

(assert (=> b!2976454 (= c!488690 e!1872345)))

(declare-fun b!2976455 () Bool)

(declare-fun e!1872337 () Regex!9286)

(assert (=> b!2976455 (= e!1872337 e!1872344)))

(declare-fun c!488698 () Bool)

(declare-fun isEmptyExpr!434 (Regex!9286) Bool)

(assert (=> b!2976455 (= c!488698 (isEmptyExpr!434 lt!1037148))))

(declare-fun call!198523 () Bool)

(declare-fun bm!198520 () Bool)

(assert (=> bm!198520 (= call!198523 (isEmptyExpr!434 (ite c!488688 lt!1037150 lt!1037151)))))

(declare-fun b!2976456 () Bool)

(declare-fun e!1872339 () Bool)

(assert (=> b!2976456 (= e!1872339 call!198523)))

(declare-fun b!2976457 () Bool)

(declare-fun nullable!2979 (Regex!9286) Bool)

(assert (=> b!2976457 (= e!1872335 (= (nullable!2979 lt!1037149) (nullable!2979 (reg!9615 r!17423))))))

(declare-fun b!2976458 () Bool)

(declare-fun c!488696 () Bool)

(assert (=> b!2976458 (= c!488696 e!1872339)))

(declare-fun res!1227292 () Bool)

(assert (=> b!2976458 (=> res!1227292 e!1872339)))

(declare-fun call!198525 () Bool)

(assert (=> b!2976458 (= res!1227292 call!198525)))

(assert (=> b!2976458 (= lt!1037150 call!198526)))

(assert (=> b!2976458 (= e!1872343 e!1872338)))

(declare-fun b!2976459 () Bool)

(assert (=> b!2976459 (= e!1872345 call!198521)))

(declare-fun b!2976460 () Bool)

(declare-fun e!1872334 () Regex!9286)

(assert (=> b!2976460 (= e!1872340 e!1872334)))

(declare-fun c!488695 () Bool)

(assert (=> b!2976460 (= c!488695 (is-ElementMatch!9286 (reg!9615 r!17423)))))

(declare-fun b!2976461 () Bool)

(declare-fun c!488697 () Bool)

(assert (=> b!2976461 (= c!488697 call!198523)))

(assert (=> b!2976461 (= e!1872342 e!1872337)))

(declare-fun bm!198521 () Bool)

(assert (=> bm!198521 (= call!198525 (isEmptyLang!400 (ite c!488688 lt!1037150 (ite c!488691 lt!1037152 lt!1037151))))))

(declare-fun b!2976462 () Bool)

(assert (=> b!2976462 (= e!1872337 lt!1037148)))

(declare-fun b!2976463 () Bool)

(assert (=> b!2976463 (= e!1872334 (reg!9615 r!17423))))

(declare-fun b!2976464 () Bool)

(assert (=> b!2976464 (= e!1872346 e!1872343)))

(assert (=> b!2976464 (= c!488688 (is-Star!9286 (reg!9615 r!17423)))))

(declare-fun b!2976465 () Bool)

(assert (=> b!2976465 (= e!1872338 EmptyExpr!9286)))

(declare-fun bm!198522 () Bool)

(assert (=> bm!198522 (= call!198527 call!198525)))

(declare-fun b!2976466 () Bool)

(declare-fun c!488694 () Bool)

(assert (=> b!2976466 (= c!488694 (is-EmptyExpr!9286 (reg!9615 r!17423)))))

(assert (=> b!2976466 (= e!1872334 e!1872346)))

(declare-fun b!2976467 () Bool)

(assert (=> b!2976467 (= e!1872344 lt!1037151)))

(declare-fun b!2976468 () Bool)

(assert (=> b!2976468 (= e!1872341 (Union!9286 lt!1037152 lt!1037147))))

(assert (= (and d!843137 c!488693) b!2976445))

(assert (= (and d!843137 (not c!488693)) b!2976460))

(assert (= (and b!2976460 c!488695) b!2976463))

(assert (= (and b!2976460 (not c!488695)) b!2976466))

(assert (= (and b!2976466 c!488694) b!2976453))

(assert (= (and b!2976466 (not c!488694)) b!2976464))

(assert (= (and b!2976464 c!488688) b!2976458))

(assert (= (and b!2976464 (not c!488688)) b!2976449))

(assert (= (and b!2976458 (not res!1227292)) b!2976456))

(assert (= (and b!2976458 c!488696) b!2976465))

(assert (= (and b!2976458 (not c!488696)) b!2976451))

(assert (= (and b!2976449 c!488691) b!2976444))

(assert (= (and b!2976449 (not c!488691)) b!2976454))

(assert (= (and b!2976444 c!488689) b!2976447))

(assert (= (and b!2976444 (not c!488689)) b!2976446))

(assert (= (and b!2976446 c!488692) b!2976450))

(assert (= (and b!2976446 (not c!488692)) b!2976468))

(assert (= (and b!2976454 (not res!1227293)) b!2976459))

(assert (= (and b!2976454 c!488690) b!2976448))

(assert (= (and b!2976454 (not c!488690)) b!2976461))

(assert (= (and b!2976461 c!488697) b!2976462))

(assert (= (and b!2976461 (not c!488697)) b!2976455))

(assert (= (and b!2976455 c!488698) b!2976467))

(assert (= (and b!2976455 (not c!488698)) b!2976452))

(assert (= (or b!2976444 b!2976454) bm!198518))

(assert (= (or b!2976444 b!2976454) bm!198517))

(assert (= (or b!2976444 b!2976454) bm!198522))

(assert (= (or b!2976446 b!2976459) bm!198519))

(assert (= (or b!2976456 b!2976461) bm!198520))

(assert (= (or b!2976458 bm!198517) bm!198516))

(assert (= (or b!2976458 bm!198522) bm!198521))

(assert (= (and d!843137 res!1227291) b!2976457))

(declare-fun m!3340269 () Bool)

(assert (=> bm!198520 m!3340269))

(declare-fun m!3340271 () Bool)

(assert (=> bm!198518 m!3340271))

(declare-fun m!3340273 () Bool)

(assert (=> d!843137 m!3340273))

(assert (=> d!843137 m!3340227))

(declare-fun m!3340275 () Bool)

(assert (=> bm!198521 m!3340275))

(declare-fun m!3340277 () Bool)

(assert (=> b!2976457 m!3340277))

(declare-fun m!3340279 () Bool)

(assert (=> b!2976457 m!3340279))

(declare-fun m!3340281 () Bool)

(assert (=> b!2976455 m!3340281))

(declare-fun m!3340283 () Bool)

(assert (=> bm!198516 m!3340283))

(declare-fun m!3340285 () Bool)

(assert (=> bm!198519 m!3340285))

(assert (=> b!2976310 d!843137))

(declare-fun bs!526804 () Bool)

(declare-fun b!2976520 () Bool)

(assert (= bs!526804 (and b!2976520 b!2976306)))

(declare-fun lambda!110845 () Int)

(assert (=> bs!526804 (not (= lambda!110845 lambda!110827))))

(assert (=> bs!526804 (= (and (= (reg!9615 r!17423) lt!1037107) (= r!17423 lt!1037108)) (= lambda!110845 lambda!110828))))

(assert (=> b!2976520 true))

(assert (=> b!2976520 true))

(declare-fun bs!526805 () Bool)

(declare-fun b!2976518 () Bool)

(assert (= bs!526805 (and b!2976518 b!2976306)))

(declare-fun lambda!110846 () Int)

(assert (=> bs!526805 (not (= lambda!110846 lambda!110827))))

(assert (=> bs!526805 (not (= lambda!110846 lambda!110828))))

(declare-fun bs!526806 () Bool)

(assert (= bs!526806 (and b!2976518 b!2976520)))

(assert (=> bs!526806 (not (= lambda!110846 lambda!110845))))

(assert (=> b!2976518 true))

(assert (=> b!2976518 true))

(declare-fun b!2976511 () Bool)

(declare-fun e!1872374 () Bool)

(declare-fun call!198537 () Bool)

(assert (=> b!2976511 (= e!1872374 call!198537)))

(declare-fun b!2976512 () Bool)

(declare-fun e!1872372 () Bool)

(assert (=> b!2976512 (= e!1872372 (matchRSpec!1423 (regTwo!19085 r!17423) s!11993))))

(declare-fun d!843143 () Bool)

(declare-fun c!488708 () Bool)

(assert (=> d!843143 (= c!488708 (is-EmptyExpr!9286 r!17423))))

(assert (=> d!843143 (= (matchRSpec!1423 r!17423 s!11993) e!1872374)))

(declare-fun b!2976513 () Bool)

(declare-fun c!488709 () Bool)

(assert (=> b!2976513 (= c!488709 (is-Union!9286 r!17423))))

(declare-fun e!1872376 () Bool)

(declare-fun e!1872375 () Bool)

(assert (=> b!2976513 (= e!1872376 e!1872375)))

(declare-fun b!2976514 () Bool)

(declare-fun res!1227320 () Bool)

(declare-fun e!1872370 () Bool)

(assert (=> b!2976514 (=> res!1227320 e!1872370)))

(assert (=> b!2976514 (= res!1227320 call!198537)))

(declare-fun e!1872373 () Bool)

(assert (=> b!2976514 (= e!1872373 e!1872370)))

(declare-fun bm!198531 () Bool)

(declare-fun call!198536 () Bool)

(declare-fun c!488707 () Bool)

(assert (=> bm!198531 (= call!198536 (Exists!1566 (ite c!488707 lambda!110845 lambda!110846)))))

(declare-fun b!2976515 () Bool)

(declare-fun e!1872371 () Bool)

(assert (=> b!2976515 (= e!1872374 e!1872371)))

(declare-fun res!1227321 () Bool)

(assert (=> b!2976515 (= res!1227321 (not (is-EmptyLang!9286 r!17423)))))

(assert (=> b!2976515 (=> (not res!1227321) (not e!1872371))))

(declare-fun b!2976516 () Bool)

(assert (=> b!2976516 (= e!1872375 e!1872372)))

(declare-fun res!1227322 () Bool)

(assert (=> b!2976516 (= res!1227322 (matchRSpec!1423 (regOne!19085 r!17423) s!11993))))

(assert (=> b!2976516 (=> res!1227322 e!1872372)))

(declare-fun bm!198532 () Bool)

(assert (=> bm!198532 (= call!198537 (isEmpty!19272 s!11993))))

(declare-fun b!2976517 () Bool)

(assert (=> b!2976517 (= e!1872376 (= s!11993 (Cons!35027 (c!488656 r!17423) Nil!35027)))))

(assert (=> b!2976518 (= e!1872373 call!198536)))

(declare-fun b!2976519 () Bool)

(assert (=> b!2976519 (= e!1872375 e!1872373)))

(assert (=> b!2976519 (= c!488707 (is-Star!9286 r!17423))))

(assert (=> b!2976520 (= e!1872370 call!198536)))

(declare-fun b!2976521 () Bool)

(declare-fun c!488710 () Bool)

(assert (=> b!2976521 (= c!488710 (is-ElementMatch!9286 r!17423))))

(assert (=> b!2976521 (= e!1872371 e!1872376)))

(assert (= (and d!843143 c!488708) b!2976511))

(assert (= (and d!843143 (not c!488708)) b!2976515))

(assert (= (and b!2976515 res!1227321) b!2976521))

(assert (= (and b!2976521 c!488710) b!2976517))

(assert (= (and b!2976521 (not c!488710)) b!2976513))

(assert (= (and b!2976513 c!488709) b!2976516))

(assert (= (and b!2976513 (not c!488709)) b!2976519))

(assert (= (and b!2976516 (not res!1227322)) b!2976512))

(assert (= (and b!2976519 c!488707) b!2976514))

(assert (= (and b!2976519 (not c!488707)) b!2976518))

(assert (= (and b!2976514 (not res!1227320)) b!2976520))

(assert (= (or b!2976520 b!2976518) bm!198531))

(assert (= (or b!2976511 b!2976514) bm!198532))

(declare-fun m!3340287 () Bool)

(assert (=> b!2976512 m!3340287))

(declare-fun m!3340289 () Bool)

(assert (=> bm!198531 m!3340289))

(declare-fun m!3340291 () Bool)

(assert (=> b!2976516 m!3340291))

(assert (=> bm!198532 m!3340229))

(assert (=> b!2976316 d!843143))

(declare-fun b!2976561 () Bool)

(declare-fun res!1227349 () Bool)

(declare-fun e!1872403 () Bool)

(assert (=> b!2976561 (=> res!1227349 e!1872403)))

(declare-fun e!1872400 () Bool)

(assert (=> b!2976561 (= res!1227349 e!1872400)))

(declare-fun res!1227347 () Bool)

(assert (=> b!2976561 (=> (not res!1227347) (not e!1872400))))

(declare-fun lt!1037155 () Bool)

(assert (=> b!2976561 (= res!1227347 lt!1037155)))

(declare-fun b!2976562 () Bool)

(declare-fun res!1227342 () Bool)

(assert (=> b!2976562 (=> (not res!1227342) (not e!1872400))))

(declare-fun call!198542 () Bool)

(assert (=> b!2976562 (= res!1227342 (not call!198542))))

(declare-fun b!2976563 () Bool)

(declare-fun e!1872398 () Bool)

(assert (=> b!2976563 (= e!1872398 (= lt!1037155 call!198542))))

(declare-fun b!2976564 () Bool)

(declare-fun res!1227345 () Bool)

(assert (=> b!2976564 (=> res!1227345 e!1872403)))

(assert (=> b!2976564 (= res!1227345 (not (is-ElementMatch!9286 r!17423)))))

(declare-fun e!1872402 () Bool)

(assert (=> b!2976564 (= e!1872402 e!1872403)))

(declare-fun b!2976565 () Bool)

(declare-fun e!1872404 () Bool)

(declare-fun e!1872401 () Bool)

(assert (=> b!2976565 (= e!1872404 e!1872401)))

(declare-fun res!1227346 () Bool)

(assert (=> b!2976565 (=> res!1227346 e!1872401)))

(assert (=> b!2976565 (= res!1227346 call!198542)))

(declare-fun b!2976566 () Bool)

(assert (=> b!2976566 (= e!1872403 e!1872404)))

(declare-fun res!1227344 () Bool)

(assert (=> b!2976566 (=> (not res!1227344) (not e!1872404))))

(assert (=> b!2976566 (= res!1227344 (not lt!1037155))))

(declare-fun b!2976567 () Bool)

(declare-fun e!1872399 () Bool)

(assert (=> b!2976567 (= e!1872399 (nullable!2979 r!17423))))

(declare-fun d!843145 () Bool)

(assert (=> d!843145 e!1872398))

(declare-fun c!488722 () Bool)

(assert (=> d!843145 (= c!488722 (is-EmptyExpr!9286 r!17423))))

(assert (=> d!843145 (= lt!1037155 e!1872399)))

(declare-fun c!488721 () Bool)

(assert (=> d!843145 (= c!488721 (isEmpty!19272 s!11993))))

(assert (=> d!843145 (validRegex!4019 r!17423)))

(assert (=> d!843145 (= (matchR!4168 r!17423 s!11993) lt!1037155)))

(declare-fun b!2976568 () Bool)

(declare-fun res!1227343 () Bool)

(assert (=> b!2976568 (=> (not res!1227343) (not e!1872400))))

(declare-fun tail!4864 (List!35151) List!35151)

(assert (=> b!2976568 (= res!1227343 (isEmpty!19272 (tail!4864 s!11993)))))

(declare-fun b!2976569 () Bool)

(declare-fun head!6638 (List!35151) C!18758)

(assert (=> b!2976569 (= e!1872400 (= (head!6638 s!11993) (c!488656 r!17423)))))

(declare-fun b!2976570 () Bool)

(declare-fun res!1227348 () Bool)

(assert (=> b!2976570 (=> res!1227348 e!1872401)))

(assert (=> b!2976570 (= res!1227348 (not (isEmpty!19272 (tail!4864 s!11993))))))

(declare-fun bm!198537 () Bool)

(assert (=> bm!198537 (= call!198542 (isEmpty!19272 s!11993))))

(declare-fun b!2976571 () Bool)

(declare-fun derivativeStep!2579 (Regex!9286 C!18758) Regex!9286)

(assert (=> b!2976571 (= e!1872399 (matchR!4168 (derivativeStep!2579 r!17423 (head!6638 s!11993)) (tail!4864 s!11993)))))

(declare-fun b!2976572 () Bool)

(assert (=> b!2976572 (= e!1872401 (not (= (head!6638 s!11993) (c!488656 r!17423))))))

(declare-fun b!2976573 () Bool)

(assert (=> b!2976573 (= e!1872402 (not lt!1037155))))

(declare-fun b!2976574 () Bool)

(assert (=> b!2976574 (= e!1872398 e!1872402)))

(declare-fun c!488723 () Bool)

(assert (=> b!2976574 (= c!488723 (is-EmptyLang!9286 r!17423))))

(assert (= (and d!843145 c!488721) b!2976567))

(assert (= (and d!843145 (not c!488721)) b!2976571))

(assert (= (and d!843145 c!488722) b!2976563))

(assert (= (and d!843145 (not c!488722)) b!2976574))

(assert (= (and b!2976574 c!488723) b!2976573))

(assert (= (and b!2976574 (not c!488723)) b!2976564))

(assert (= (and b!2976564 (not res!1227345)) b!2976561))

(assert (= (and b!2976561 res!1227347) b!2976562))

(assert (= (and b!2976562 res!1227342) b!2976568))

(assert (= (and b!2976568 res!1227343) b!2976569))

(assert (= (and b!2976561 (not res!1227349)) b!2976566))

(assert (= (and b!2976566 res!1227344) b!2976565))

(assert (= (and b!2976565 (not res!1227346)) b!2976570))

(assert (= (and b!2976570 (not res!1227348)) b!2976572))

(assert (= (or b!2976563 b!2976562 b!2976565) bm!198537))

(declare-fun m!3340299 () Bool)

(assert (=> b!2976571 m!3340299))

(assert (=> b!2976571 m!3340299))

(declare-fun m!3340301 () Bool)

(assert (=> b!2976571 m!3340301))

(declare-fun m!3340303 () Bool)

(assert (=> b!2976571 m!3340303))

(assert (=> b!2976571 m!3340301))

(assert (=> b!2976571 m!3340303))

(declare-fun m!3340305 () Bool)

(assert (=> b!2976571 m!3340305))

(assert (=> d!843145 m!3340229))

(assert (=> d!843145 m!3340221))

(declare-fun m!3340307 () Bool)

(assert (=> b!2976567 m!3340307))

(assert (=> bm!198537 m!3340229))

(assert (=> b!2976568 m!3340303))

(assert (=> b!2976568 m!3340303))

(declare-fun m!3340309 () Bool)

(assert (=> b!2976568 m!3340309))

(assert (=> b!2976572 m!3340299))

(assert (=> b!2976569 m!3340299))

(assert (=> b!2976570 m!3340303))

(assert (=> b!2976570 m!3340303))

(assert (=> b!2976570 m!3340309))

(assert (=> b!2976316 d!843145))

(declare-fun d!843149 () Bool)

(assert (=> d!843149 (= (matchR!4168 r!17423 s!11993) (matchRSpec!1423 r!17423 s!11993))))

(declare-fun lt!1037158 () Unit!48951)

(declare-fun choose!17609 (Regex!9286 List!35151) Unit!48951)

(assert (=> d!843149 (= lt!1037158 (choose!17609 r!17423 s!11993))))

(assert (=> d!843149 (validRegex!4019 r!17423)))

(assert (=> d!843149 (= (mainMatchTheorem!1423 r!17423 s!11993) lt!1037158)))

(declare-fun bs!526810 () Bool)

(assert (= bs!526810 d!843149))

(assert (=> bs!526810 m!3340205))

(assert (=> bs!526810 m!3340203))

(declare-fun m!3340311 () Bool)

(assert (=> bs!526810 m!3340311))

(assert (=> bs!526810 m!3340221))

(assert (=> b!2976316 d!843149))

(declare-fun b!2976575 () Bool)

(declare-fun res!1227357 () Bool)

(declare-fun e!1872410 () Bool)

(assert (=> b!2976575 (=> res!1227357 e!1872410)))

(declare-fun e!1872407 () Bool)

(assert (=> b!2976575 (= res!1227357 e!1872407)))

(declare-fun res!1227355 () Bool)

(assert (=> b!2976575 (=> (not res!1227355) (not e!1872407))))

(declare-fun lt!1037159 () Bool)

(assert (=> b!2976575 (= res!1227355 lt!1037159)))

(declare-fun b!2976576 () Bool)

(declare-fun res!1227350 () Bool)

(assert (=> b!2976576 (=> (not res!1227350) (not e!1872407))))

(declare-fun call!198543 () Bool)

(assert (=> b!2976576 (= res!1227350 (not call!198543))))

(declare-fun b!2976577 () Bool)

(declare-fun e!1872405 () Bool)

(assert (=> b!2976577 (= e!1872405 (= lt!1037159 call!198543))))

(declare-fun b!2976578 () Bool)

(declare-fun res!1227353 () Bool)

(assert (=> b!2976578 (=> res!1227353 e!1872410)))

(assert (=> b!2976578 (= res!1227353 (not (is-ElementMatch!9286 lt!1037108)))))

(declare-fun e!1872409 () Bool)

(assert (=> b!2976578 (= e!1872409 e!1872410)))

(declare-fun b!2976579 () Bool)

(declare-fun e!1872411 () Bool)

(declare-fun e!1872408 () Bool)

(assert (=> b!2976579 (= e!1872411 e!1872408)))

(declare-fun res!1227354 () Bool)

(assert (=> b!2976579 (=> res!1227354 e!1872408)))

(assert (=> b!2976579 (= res!1227354 call!198543)))

(declare-fun b!2976580 () Bool)

(assert (=> b!2976580 (= e!1872410 e!1872411)))

(declare-fun res!1227352 () Bool)

(assert (=> b!2976580 (=> (not res!1227352) (not e!1872411))))

(assert (=> b!2976580 (= res!1227352 (not lt!1037159))))

(declare-fun b!2976581 () Bool)

(declare-fun e!1872406 () Bool)

(assert (=> b!2976581 (= e!1872406 (nullable!2979 lt!1037108))))

(declare-fun d!843151 () Bool)

(assert (=> d!843151 e!1872405))

(declare-fun c!488725 () Bool)

(assert (=> d!843151 (= c!488725 (is-EmptyExpr!9286 lt!1037108))))

(assert (=> d!843151 (= lt!1037159 e!1872406)))

(declare-fun c!488724 () Bool)

(assert (=> d!843151 (= c!488724 (isEmpty!19272 s!11993))))

(assert (=> d!843151 (validRegex!4019 lt!1037108)))

(assert (=> d!843151 (= (matchR!4168 lt!1037108 s!11993) lt!1037159)))

(declare-fun b!2976582 () Bool)

(declare-fun res!1227351 () Bool)

(assert (=> b!2976582 (=> (not res!1227351) (not e!1872407))))

(assert (=> b!2976582 (= res!1227351 (isEmpty!19272 (tail!4864 s!11993)))))

(declare-fun b!2976583 () Bool)

(assert (=> b!2976583 (= e!1872407 (= (head!6638 s!11993) (c!488656 lt!1037108)))))

(declare-fun b!2976584 () Bool)

(declare-fun res!1227356 () Bool)

(assert (=> b!2976584 (=> res!1227356 e!1872408)))

(assert (=> b!2976584 (= res!1227356 (not (isEmpty!19272 (tail!4864 s!11993))))))

(declare-fun bm!198538 () Bool)

(assert (=> bm!198538 (= call!198543 (isEmpty!19272 s!11993))))

(declare-fun b!2976585 () Bool)

(assert (=> b!2976585 (= e!1872406 (matchR!4168 (derivativeStep!2579 lt!1037108 (head!6638 s!11993)) (tail!4864 s!11993)))))

(declare-fun b!2976586 () Bool)

(assert (=> b!2976586 (= e!1872408 (not (= (head!6638 s!11993) (c!488656 lt!1037108))))))

(declare-fun b!2976587 () Bool)

(assert (=> b!2976587 (= e!1872409 (not lt!1037159))))

(declare-fun b!2976588 () Bool)

(assert (=> b!2976588 (= e!1872405 e!1872409)))

(declare-fun c!488726 () Bool)

(assert (=> b!2976588 (= c!488726 (is-EmptyLang!9286 lt!1037108))))

(assert (= (and d!843151 c!488724) b!2976581))

(assert (= (and d!843151 (not c!488724)) b!2976585))

(assert (= (and d!843151 c!488725) b!2976577))

(assert (= (and d!843151 (not c!488725)) b!2976588))

(assert (= (and b!2976588 c!488726) b!2976587))

(assert (= (and b!2976588 (not c!488726)) b!2976578))

(assert (= (and b!2976578 (not res!1227353)) b!2976575))

(assert (= (and b!2976575 res!1227355) b!2976576))

(assert (= (and b!2976576 res!1227350) b!2976582))

(assert (= (and b!2976582 res!1227351) b!2976583))

(assert (= (and b!2976575 (not res!1227357)) b!2976580))

(assert (= (and b!2976580 res!1227352) b!2976579))

(assert (= (and b!2976579 (not res!1227354)) b!2976584))

(assert (= (and b!2976584 (not res!1227356)) b!2976586))

(assert (= (or b!2976577 b!2976576 b!2976579) bm!198538))

(assert (=> b!2976585 m!3340299))

(assert (=> b!2976585 m!3340299))

(declare-fun m!3340313 () Bool)

(assert (=> b!2976585 m!3340313))

(assert (=> b!2976585 m!3340303))

(assert (=> b!2976585 m!3340313))

(assert (=> b!2976585 m!3340303))

(declare-fun m!3340315 () Bool)

(assert (=> b!2976585 m!3340315))

(assert (=> d!843151 m!3340229))

(declare-fun m!3340317 () Bool)

(assert (=> d!843151 m!3340317))

(declare-fun m!3340319 () Bool)

(assert (=> b!2976581 m!3340319))

(assert (=> bm!198538 m!3340229))

(assert (=> b!2976582 m!3340303))

(assert (=> b!2976582 m!3340303))

(assert (=> b!2976582 m!3340309))

(assert (=> b!2976586 m!3340299))

(assert (=> b!2976583 m!3340299))

(assert (=> b!2976584 m!3340303))

(assert (=> b!2976584 m!3340303))

(assert (=> b!2976584 m!3340309))

(assert (=> b!2976314 d!843151))

(declare-fun bm!198547 () Bool)

(declare-fun c!488736 () Bool)

(declare-fun call!198552 () Bool)

(declare-fun c!488735 () Bool)

(assert (=> bm!198547 (= call!198552 (validRegex!4019 (ite c!488735 (reg!9615 r!17423) (ite c!488736 (regOne!19085 r!17423) (regTwo!19084 r!17423)))))))

(declare-fun b!2976618 () Bool)

(declare-fun e!1872434 () Bool)

(declare-fun e!1872437 () Bool)

(assert (=> b!2976618 (= e!1872434 e!1872437)))

(declare-fun res!1227374 () Bool)

(assert (=> b!2976618 (=> (not res!1227374) (not e!1872437))))

(declare-fun call!198554 () Bool)

(assert (=> b!2976618 (= res!1227374 call!198554)))

(declare-fun d!843153 () Bool)

(declare-fun res!1227371 () Bool)

(declare-fun e!1872439 () Bool)

(assert (=> d!843153 (=> res!1227371 e!1872439)))

(assert (=> d!843153 (= res!1227371 (is-ElementMatch!9286 r!17423))))

(assert (=> d!843153 (= (validRegex!4019 r!17423) e!1872439)))

(declare-fun bm!198548 () Bool)

(declare-fun call!198553 () Bool)

(assert (=> bm!198548 (= call!198553 call!198552)))

(declare-fun b!2976619 () Bool)

(declare-fun e!1872433 () Bool)

(assert (=> b!2976619 (= e!1872433 call!198554)))

(declare-fun b!2976620 () Bool)

(declare-fun res!1227375 () Bool)

(assert (=> b!2976620 (=> (not res!1227375) (not e!1872433))))

(assert (=> b!2976620 (= res!1227375 call!198553)))

(declare-fun e!1872435 () Bool)

(assert (=> b!2976620 (= e!1872435 e!1872433)))

(declare-fun b!2976621 () Bool)

(declare-fun e!1872436 () Bool)

(assert (=> b!2976621 (= e!1872436 e!1872435)))

(assert (=> b!2976621 (= c!488736 (is-Union!9286 r!17423))))

(declare-fun b!2976622 () Bool)

(declare-fun res!1227372 () Bool)

(assert (=> b!2976622 (=> res!1227372 e!1872434)))

(assert (=> b!2976622 (= res!1227372 (not (is-Concat!14607 r!17423)))))

(assert (=> b!2976622 (= e!1872435 e!1872434)))

(declare-fun b!2976623 () Bool)

(assert (=> b!2976623 (= e!1872437 call!198553)))

(declare-fun b!2976624 () Bool)

(declare-fun e!1872438 () Bool)

(assert (=> b!2976624 (= e!1872436 e!1872438)))

(declare-fun res!1227373 () Bool)

(assert (=> b!2976624 (= res!1227373 (not (nullable!2979 (reg!9615 r!17423))))))

(assert (=> b!2976624 (=> (not res!1227373) (not e!1872438))))

(declare-fun b!2976625 () Bool)

(assert (=> b!2976625 (= e!1872439 e!1872436)))

(assert (=> b!2976625 (= c!488735 (is-Star!9286 r!17423))))

(declare-fun bm!198549 () Bool)

(assert (=> bm!198549 (= call!198554 (validRegex!4019 (ite c!488736 (regTwo!19085 r!17423) (regOne!19084 r!17423))))))

(declare-fun b!2976626 () Bool)

(assert (=> b!2976626 (= e!1872438 call!198552)))

(assert (= (and d!843153 (not res!1227371)) b!2976625))

(assert (= (and b!2976625 c!488735) b!2976624))

(assert (= (and b!2976625 (not c!488735)) b!2976621))

(assert (= (and b!2976624 res!1227373) b!2976626))

(assert (= (and b!2976621 c!488736) b!2976620))

(assert (= (and b!2976621 (not c!488736)) b!2976622))

(assert (= (and b!2976620 res!1227375) b!2976619))

(assert (= (and b!2976622 (not res!1227372)) b!2976618))

(assert (= (and b!2976618 res!1227374) b!2976623))

(assert (= (or b!2976620 b!2976623) bm!198548))

(assert (= (or b!2976619 b!2976618) bm!198549))

(assert (= (or b!2976626 bm!198548) bm!198547))

(declare-fun m!3340325 () Bool)

(assert (=> bm!198547 m!3340325))

(assert (=> b!2976624 m!3340279))

(declare-fun m!3340327 () Bool)

(assert (=> bm!198549 m!3340327))

(assert (=> start!287766 d!843153))

(declare-fun d!843157 () Bool)

(assert (=> d!843157 (= (isEmpty!19272 s!11993) (is-Nil!35027 s!11993))))

(assert (=> b!2976315 d!843157))

(declare-fun bs!526815 () Bool)

(declare-fun b!2976636 () Bool)

(assert (= bs!526815 (and b!2976636 b!2976306)))

(declare-fun lambda!110850 () Int)

(assert (=> bs!526815 (not (= lambda!110850 lambda!110827))))

(assert (=> bs!526815 (= (= (reg!9615 lt!1037108) lt!1037107) (= lambda!110850 lambda!110828))))

(declare-fun bs!526817 () Bool)

(assert (= bs!526817 (and b!2976636 b!2976520)))

(assert (=> bs!526817 (= (and (= (reg!9615 lt!1037108) (reg!9615 r!17423)) (= lt!1037108 r!17423)) (= lambda!110850 lambda!110845))))

(declare-fun bs!526821 () Bool)

(assert (= bs!526821 (and b!2976636 b!2976518)))

(assert (=> bs!526821 (not (= lambda!110850 lambda!110846))))

(assert (=> b!2976636 true))

(assert (=> b!2976636 true))

(declare-fun bs!526822 () Bool)

(declare-fun b!2976634 () Bool)

(assert (= bs!526822 (and b!2976634 b!2976306)))

(declare-fun lambda!110852 () Int)

(assert (=> bs!526822 (not (= lambda!110852 lambda!110828))))

(declare-fun bs!526823 () Bool)

(assert (= bs!526823 (and b!2976634 b!2976636)))

(assert (=> bs!526823 (not (= lambda!110852 lambda!110850))))

(assert (=> bs!526822 (not (= lambda!110852 lambda!110827))))

(declare-fun bs!526824 () Bool)

(assert (= bs!526824 (and b!2976634 b!2976520)))

(assert (=> bs!526824 (not (= lambda!110852 lambda!110845))))

(declare-fun bs!526825 () Bool)

(assert (= bs!526825 (and b!2976634 b!2976518)))

(assert (=> bs!526825 (= (and (= (regOne!19084 lt!1037108) (regOne!19084 r!17423)) (= (regTwo!19084 lt!1037108) (regTwo!19084 r!17423))) (= lambda!110852 lambda!110846))))

(assert (=> b!2976634 true))

(assert (=> b!2976634 true))

(declare-fun b!2976627 () Bool)

(declare-fun e!1872444 () Bool)

(declare-fun call!198556 () Bool)

(assert (=> b!2976627 (= e!1872444 call!198556)))

(declare-fun b!2976628 () Bool)

(declare-fun e!1872442 () Bool)

(assert (=> b!2976628 (= e!1872442 (matchRSpec!1423 (regTwo!19085 lt!1037108) s!11993))))

(declare-fun d!843159 () Bool)

(declare-fun c!488738 () Bool)

(assert (=> d!843159 (= c!488738 (is-EmptyExpr!9286 lt!1037108))))

(assert (=> d!843159 (= (matchRSpec!1423 lt!1037108 s!11993) e!1872444)))

(declare-fun b!2976629 () Bool)

(declare-fun c!488739 () Bool)

(assert (=> b!2976629 (= c!488739 (is-Union!9286 lt!1037108))))

(declare-fun e!1872446 () Bool)

(declare-fun e!1872445 () Bool)

(assert (=> b!2976629 (= e!1872446 e!1872445)))

(declare-fun b!2976630 () Bool)

(declare-fun res!1227376 () Bool)

(declare-fun e!1872440 () Bool)

(assert (=> b!2976630 (=> res!1227376 e!1872440)))

(assert (=> b!2976630 (= res!1227376 call!198556)))

(declare-fun e!1872443 () Bool)

(assert (=> b!2976630 (= e!1872443 e!1872440)))

(declare-fun c!488737 () Bool)

(declare-fun call!198555 () Bool)

(declare-fun bm!198550 () Bool)

(assert (=> bm!198550 (= call!198555 (Exists!1566 (ite c!488737 lambda!110850 lambda!110852)))))

(declare-fun b!2976631 () Bool)

(declare-fun e!1872441 () Bool)

(assert (=> b!2976631 (= e!1872444 e!1872441)))

(declare-fun res!1227377 () Bool)

(assert (=> b!2976631 (= res!1227377 (not (is-EmptyLang!9286 lt!1037108)))))

(assert (=> b!2976631 (=> (not res!1227377) (not e!1872441))))

(declare-fun b!2976632 () Bool)

(assert (=> b!2976632 (= e!1872445 e!1872442)))

(declare-fun res!1227378 () Bool)

(assert (=> b!2976632 (= res!1227378 (matchRSpec!1423 (regOne!19085 lt!1037108) s!11993))))

(assert (=> b!2976632 (=> res!1227378 e!1872442)))

(declare-fun bm!198551 () Bool)

(assert (=> bm!198551 (= call!198556 (isEmpty!19272 s!11993))))

(declare-fun b!2976633 () Bool)

(assert (=> b!2976633 (= e!1872446 (= s!11993 (Cons!35027 (c!488656 lt!1037108) Nil!35027)))))

(assert (=> b!2976634 (= e!1872443 call!198555)))

(declare-fun b!2976635 () Bool)

(assert (=> b!2976635 (= e!1872445 e!1872443)))

(assert (=> b!2976635 (= c!488737 (is-Star!9286 lt!1037108))))

(assert (=> b!2976636 (= e!1872440 call!198555)))

(declare-fun b!2976637 () Bool)

(declare-fun c!488740 () Bool)

(assert (=> b!2976637 (= c!488740 (is-ElementMatch!9286 lt!1037108))))

(assert (=> b!2976637 (= e!1872441 e!1872446)))

(assert (= (and d!843159 c!488738) b!2976627))

(assert (= (and d!843159 (not c!488738)) b!2976631))

(assert (= (and b!2976631 res!1227377) b!2976637))

(assert (= (and b!2976637 c!488740) b!2976633))

(assert (= (and b!2976637 (not c!488740)) b!2976629))

(assert (= (and b!2976629 c!488739) b!2976632))

(assert (= (and b!2976629 (not c!488739)) b!2976635))

(assert (= (and b!2976632 (not res!1227378)) b!2976628))

(assert (= (and b!2976635 c!488737) b!2976630))

(assert (= (and b!2976635 (not c!488737)) b!2976634))

(assert (= (and b!2976630 (not res!1227376)) b!2976636))

(assert (= (or b!2976636 b!2976634) bm!198550))

(assert (= (or b!2976627 b!2976630) bm!198551))

(declare-fun m!3340335 () Bool)

(assert (=> b!2976628 m!3340335))

(declare-fun m!3340337 () Bool)

(assert (=> bm!198550 m!3340337))

(declare-fun m!3340339 () Bool)

(assert (=> b!2976632 m!3340339))

(assert (=> bm!198551 m!3340229))

(assert (=> b!2976315 d!843159))

(declare-fun d!843163 () Bool)

(assert (=> d!843163 (= (matchR!4168 lt!1037108 s!11993) (matchRSpec!1423 lt!1037108 s!11993))))

(declare-fun lt!1037163 () Unit!48951)

(assert (=> d!843163 (= lt!1037163 (choose!17609 lt!1037108 s!11993))))

(assert (=> d!843163 (validRegex!4019 lt!1037108)))

(assert (=> d!843163 (= (mainMatchTheorem!1423 lt!1037108 s!11993) lt!1037163)))

(declare-fun bs!526826 () Bool)

(assert (= bs!526826 d!843163))

(assert (=> bs!526826 m!3340201))

(assert (=> bs!526826 m!3340231))

(declare-fun m!3340341 () Bool)

(assert (=> bs!526826 m!3340341))

(assert (=> bs!526826 m!3340317))

(assert (=> b!2976315 d!843163))

(declare-fun bs!526827 () Bool)

(declare-fun d!843165 () Bool)

(assert (= bs!526827 (and d!843165 b!2976306)))

(declare-fun lambda!110857 () Int)

(assert (=> bs!526827 (not (= lambda!110857 lambda!110828))))

(declare-fun bs!526828 () Bool)

(assert (= bs!526828 (and d!843165 b!2976636)))

(assert (=> bs!526828 (not (= lambda!110857 lambda!110850))))

(assert (=> bs!526827 (= (= (Star!9286 lt!1037107) lt!1037108) (= lambda!110857 lambda!110827))))

(declare-fun bs!526829 () Bool)

(assert (= bs!526829 (and d!843165 b!2976634)))

(assert (=> bs!526829 (not (= lambda!110857 lambda!110852))))

(declare-fun bs!526830 () Bool)

(assert (= bs!526830 (and d!843165 b!2976520)))

(assert (=> bs!526830 (not (= lambda!110857 lambda!110845))))

(declare-fun bs!526831 () Bool)

(assert (= bs!526831 (and d!843165 b!2976518)))

(assert (=> bs!526831 (not (= lambda!110857 lambda!110846))))

(assert (=> d!843165 true))

(assert (=> d!843165 true))

(declare-fun bs!526832 () Bool)

(assert (= bs!526832 d!843165))

(declare-fun lambda!110858 () Int)

(assert (=> bs!526832 (not (= lambda!110858 lambda!110857))))

(assert (=> bs!526827 (= (= (Star!9286 lt!1037107) lt!1037108) (= lambda!110858 lambda!110828))))

(assert (=> bs!526828 (= (and (= lt!1037107 (reg!9615 lt!1037108)) (= (Star!9286 lt!1037107) lt!1037108)) (= lambda!110858 lambda!110850))))

(assert (=> bs!526827 (not (= lambda!110858 lambda!110827))))

(assert (=> bs!526829 (not (= lambda!110858 lambda!110852))))

(assert (=> bs!526830 (= (and (= lt!1037107 (reg!9615 r!17423)) (= (Star!9286 lt!1037107) r!17423)) (= lambda!110858 lambda!110845))))

(assert (=> bs!526831 (not (= lambda!110858 lambda!110846))))

(assert (=> d!843165 true))

(assert (=> d!843165 true))

(assert (=> d!843165 (= (Exists!1566 lambda!110857) (Exists!1566 lambda!110858))))

(declare-fun lt!1037166 () Unit!48951)

(declare-fun choose!17610 (Regex!9286 List!35151) Unit!48951)

(assert (=> d!843165 (= lt!1037166 (choose!17610 lt!1037107 s!11993))))

(assert (=> d!843165 (validRegex!4019 lt!1037107)))

(assert (=> d!843165 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!251 lt!1037107 s!11993) lt!1037166)))

(declare-fun m!3340343 () Bool)

(assert (=> bs!526832 m!3340343))

(declare-fun m!3340345 () Bool)

(assert (=> bs!526832 m!3340345))

(declare-fun m!3340347 () Bool)

(assert (=> bs!526832 m!3340347))

(declare-fun m!3340349 () Bool)

(assert (=> bs!526832 m!3340349))

(assert (=> b!2976306 d!843165))

(declare-fun d!843167 () Bool)

(declare-fun choose!17611 (Int) Bool)

(assert (=> d!843167 (= (Exists!1566 lambda!110828) (choose!17611 lambda!110828))))

(declare-fun bs!526833 () Bool)

(assert (= bs!526833 d!843167))

(declare-fun m!3340351 () Bool)

(assert (=> bs!526833 m!3340351))

(assert (=> b!2976306 d!843167))

(declare-fun b!2976708 () Bool)

(declare-fun res!1227424 () Bool)

(declare-fun e!1872484 () Bool)

(assert (=> b!2976708 (=> (not res!1227424) (not e!1872484))))

(declare-fun lt!1037176 () Option!6687)

(declare-fun get!10800 (Option!6687) tuple2!33910)

(assert (=> b!2976708 (= res!1227424 (matchR!4168 lt!1037108 (_2!20087 (get!10800 lt!1037176))))))

(declare-fun b!2976709 () Bool)

(declare-fun e!1872483 () Option!6687)

(declare-fun e!1872486 () Option!6687)

(assert (=> b!2976709 (= e!1872483 e!1872486)))

(declare-fun c!488754 () Bool)

(assert (=> b!2976709 (= c!488754 (is-Nil!35027 s!11993))))

(declare-fun b!2976710 () Bool)

(declare-fun ++!8354 (List!35151 List!35151) List!35151)

(assert (=> b!2976710 (= e!1872484 (= (++!8354 (_1!20087 (get!10800 lt!1037176)) (_2!20087 (get!10800 lt!1037176))) s!11993))))

(declare-fun b!2976711 () Bool)

(declare-fun res!1227425 () Bool)

(assert (=> b!2976711 (=> (not res!1227425) (not e!1872484))))

(assert (=> b!2976711 (= res!1227425 (matchR!4168 lt!1037107 (_1!20087 (get!10800 lt!1037176))))))

(declare-fun b!2976712 () Bool)

(declare-fun e!1872482 () Bool)

(assert (=> b!2976712 (= e!1872482 (not (isDefined!5238 lt!1037176)))))

(declare-fun b!2976713 () Bool)

(declare-fun lt!1037177 () Unit!48951)

(declare-fun lt!1037178 () Unit!48951)

(assert (=> b!2976713 (= lt!1037177 lt!1037178)))

(assert (=> b!2976713 (= (++!8354 (++!8354 Nil!35027 (Cons!35027 (h!40447 s!11993) Nil!35027)) (t!234216 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!973 (List!35151 C!18758 List!35151 List!35151) Unit!48951)

(assert (=> b!2976713 (= lt!1037178 (lemmaMoveElementToOtherListKeepsConcatEq!973 Nil!35027 (h!40447 s!11993) (t!234216 s!11993) s!11993))))

(assert (=> b!2976713 (= e!1872486 (findConcatSeparation!1081 lt!1037107 lt!1037108 (++!8354 Nil!35027 (Cons!35027 (h!40447 s!11993) Nil!35027)) (t!234216 s!11993) s!11993))))

(declare-fun b!2976714 () Bool)

(assert (=> b!2976714 (= e!1872483 (Some!6686 (tuple2!33911 Nil!35027 s!11993)))))

(declare-fun b!2976715 () Bool)

(assert (=> b!2976715 (= e!1872486 None!6686)))

(declare-fun b!2976716 () Bool)

(declare-fun e!1872485 () Bool)

(assert (=> b!2976716 (= e!1872485 (matchR!4168 lt!1037108 s!11993))))

(declare-fun d!843169 () Bool)

(assert (=> d!843169 e!1872482))

(declare-fun res!1227427 () Bool)

(assert (=> d!843169 (=> res!1227427 e!1872482)))

(assert (=> d!843169 (= res!1227427 e!1872484)))

(declare-fun res!1227423 () Bool)

(assert (=> d!843169 (=> (not res!1227423) (not e!1872484))))

(assert (=> d!843169 (= res!1227423 (isDefined!5238 lt!1037176))))

(assert (=> d!843169 (= lt!1037176 e!1872483)))

(declare-fun c!488755 () Bool)

(assert (=> d!843169 (= c!488755 e!1872485)))

(declare-fun res!1227426 () Bool)

(assert (=> d!843169 (=> (not res!1227426) (not e!1872485))))

(assert (=> d!843169 (= res!1227426 (matchR!4168 lt!1037107 Nil!35027))))

(assert (=> d!843169 (validRegex!4019 lt!1037107)))

(assert (=> d!843169 (= (findConcatSeparation!1081 lt!1037107 lt!1037108 Nil!35027 s!11993 s!11993) lt!1037176)))

(assert (= (and d!843169 res!1227426) b!2976716))

(assert (= (and d!843169 c!488755) b!2976714))

(assert (= (and d!843169 (not c!488755)) b!2976709))

(assert (= (and b!2976709 c!488754) b!2976715))

(assert (= (and b!2976709 (not c!488754)) b!2976713))

(assert (= (and d!843169 res!1227423) b!2976711))

(assert (= (and b!2976711 res!1227425) b!2976708))

(assert (= (and b!2976708 res!1227424) b!2976710))

(assert (= (and d!843169 (not res!1227427)) b!2976712))

(declare-fun m!3340367 () Bool)

(assert (=> b!2976713 m!3340367))

(assert (=> b!2976713 m!3340367))

(declare-fun m!3340369 () Bool)

(assert (=> b!2976713 m!3340369))

(declare-fun m!3340371 () Bool)

(assert (=> b!2976713 m!3340371))

(assert (=> b!2976713 m!3340367))

(declare-fun m!3340373 () Bool)

(assert (=> b!2976713 m!3340373))

(declare-fun m!3340375 () Bool)

(assert (=> b!2976711 m!3340375))

(declare-fun m!3340377 () Bool)

(assert (=> b!2976711 m!3340377))

(assert (=> b!2976708 m!3340375))

(declare-fun m!3340379 () Bool)

(assert (=> b!2976708 m!3340379))

(declare-fun m!3340381 () Bool)

(assert (=> b!2976712 m!3340381))

(assert (=> b!2976716 m!3340201))

(assert (=> b!2976710 m!3340375))

(declare-fun m!3340383 () Bool)

(assert (=> b!2976710 m!3340383))

(assert (=> d!843169 m!3340381))

(declare-fun m!3340385 () Bool)

(assert (=> d!843169 m!3340385))

(assert (=> d!843169 m!3340349))

(assert (=> b!2976306 d!843169))

(declare-fun d!843175 () Bool)

(declare-fun isEmpty!19274 (Option!6687) Bool)

(assert (=> d!843175 (= (isDefined!5238 (findConcatSeparation!1081 lt!1037107 lt!1037108 Nil!35027 s!11993 s!11993)) (not (isEmpty!19274 (findConcatSeparation!1081 lt!1037107 lt!1037108 Nil!35027 s!11993 s!11993))))))

(declare-fun bs!526835 () Bool)

(assert (= bs!526835 d!843175))

(assert (=> bs!526835 m!3340209))

(declare-fun m!3340387 () Bool)

(assert (=> bs!526835 m!3340387))

(assert (=> b!2976306 d!843175))

(declare-fun bs!526836 () Bool)

(declare-fun d!843177 () Bool)

(assert (= bs!526836 (and d!843177 d!843165)))

(declare-fun lambda!110861 () Int)

(assert (=> bs!526836 (= (= lt!1037108 (Star!9286 lt!1037107)) (= lambda!110861 lambda!110857))))

(declare-fun bs!526837 () Bool)

(assert (= bs!526837 (and d!843177 b!2976306)))

(assert (=> bs!526837 (not (= lambda!110861 lambda!110828))))

(declare-fun bs!526838 () Bool)

(assert (= bs!526838 (and d!843177 b!2976636)))

(assert (=> bs!526838 (not (= lambda!110861 lambda!110850))))

(assert (=> bs!526837 (= lambda!110861 lambda!110827)))

(assert (=> bs!526836 (not (= lambda!110861 lambda!110858))))

(declare-fun bs!526839 () Bool)

(assert (= bs!526839 (and d!843177 b!2976634)))

(assert (=> bs!526839 (not (= lambda!110861 lambda!110852))))

(declare-fun bs!526840 () Bool)

(assert (= bs!526840 (and d!843177 b!2976520)))

(assert (=> bs!526840 (not (= lambda!110861 lambda!110845))))

(declare-fun bs!526841 () Bool)

(assert (= bs!526841 (and d!843177 b!2976518)))

(assert (=> bs!526841 (not (= lambda!110861 lambda!110846))))

(assert (=> d!843177 true))

(assert (=> d!843177 true))

(assert (=> d!843177 true))

(assert (=> d!843177 (= (isDefined!5238 (findConcatSeparation!1081 lt!1037107 lt!1037108 Nil!35027 s!11993 s!11993)) (Exists!1566 lambda!110861))))

(declare-fun lt!1037182 () Unit!48951)

(declare-fun choose!17612 (Regex!9286 Regex!9286 List!35151) Unit!48951)

(assert (=> d!843177 (= lt!1037182 (choose!17612 lt!1037107 lt!1037108 s!11993))))

(assert (=> d!843177 (validRegex!4019 lt!1037107)))

(assert (=> d!843177 (= (lemmaFindConcatSeparationEquivalentToExists!859 lt!1037107 lt!1037108 s!11993) lt!1037182)))

(declare-fun bs!526842 () Bool)

(assert (= bs!526842 d!843177))

(assert (=> bs!526842 m!3340209))

(assert (=> bs!526842 m!3340211))

(declare-fun m!3340389 () Bool)

(assert (=> bs!526842 m!3340389))

(assert (=> bs!526842 m!3340209))

(declare-fun m!3340391 () Bool)

(assert (=> bs!526842 m!3340391))

(assert (=> bs!526842 m!3340349))

(assert (=> b!2976306 d!843177))

(declare-fun d!843179 () Bool)

(assert (=> d!843179 (= (Exists!1566 lambda!110827) (choose!17611 lambda!110827))))

(declare-fun bs!526843 () Bool)

(assert (= bs!526843 d!843179))

(declare-fun m!3340393 () Bool)

(assert (=> bs!526843 m!3340393))

(assert (=> b!2976306 d!843179))

(declare-fun bm!198555 () Bool)

(declare-fun c!488756 () Bool)

(declare-fun call!198560 () Bool)

(declare-fun c!488757 () Bool)

(assert (=> bm!198555 (= call!198560 (validRegex!4019 (ite c!488756 (reg!9615 (reg!9615 r!17423)) (ite c!488757 (regOne!19085 (reg!9615 r!17423)) (regTwo!19084 (reg!9615 r!17423))))))))

(declare-fun b!2976721 () Bool)

(declare-fun e!1872490 () Bool)

(declare-fun e!1872493 () Bool)

(assert (=> b!2976721 (= e!1872490 e!1872493)))

(declare-fun res!1227435 () Bool)

(assert (=> b!2976721 (=> (not res!1227435) (not e!1872493))))

(declare-fun call!198562 () Bool)

(assert (=> b!2976721 (= res!1227435 call!198562)))

(declare-fun d!843181 () Bool)

(declare-fun res!1227432 () Bool)

(declare-fun e!1872495 () Bool)

(assert (=> d!843181 (=> res!1227432 e!1872495)))

(assert (=> d!843181 (= res!1227432 (is-ElementMatch!9286 (reg!9615 r!17423)))))

(assert (=> d!843181 (= (validRegex!4019 (reg!9615 r!17423)) e!1872495)))

(declare-fun bm!198556 () Bool)

(declare-fun call!198561 () Bool)

(assert (=> bm!198556 (= call!198561 call!198560)))

(declare-fun b!2976722 () Bool)

(declare-fun e!1872489 () Bool)

(assert (=> b!2976722 (= e!1872489 call!198562)))

(declare-fun b!2976723 () Bool)

(declare-fun res!1227436 () Bool)

(assert (=> b!2976723 (=> (not res!1227436) (not e!1872489))))

(assert (=> b!2976723 (= res!1227436 call!198561)))

(declare-fun e!1872491 () Bool)

(assert (=> b!2976723 (= e!1872491 e!1872489)))

(declare-fun b!2976724 () Bool)

(declare-fun e!1872492 () Bool)

(assert (=> b!2976724 (= e!1872492 e!1872491)))

(assert (=> b!2976724 (= c!488757 (is-Union!9286 (reg!9615 r!17423)))))

(declare-fun b!2976725 () Bool)

(declare-fun res!1227433 () Bool)

(assert (=> b!2976725 (=> res!1227433 e!1872490)))

(assert (=> b!2976725 (= res!1227433 (not (is-Concat!14607 (reg!9615 r!17423))))))

(assert (=> b!2976725 (= e!1872491 e!1872490)))

(declare-fun b!2976726 () Bool)

(assert (=> b!2976726 (= e!1872493 call!198561)))

(declare-fun b!2976727 () Bool)

(declare-fun e!1872494 () Bool)

(assert (=> b!2976727 (= e!1872492 e!1872494)))

(declare-fun res!1227434 () Bool)

(assert (=> b!2976727 (= res!1227434 (not (nullable!2979 (reg!9615 (reg!9615 r!17423)))))))

(assert (=> b!2976727 (=> (not res!1227434) (not e!1872494))))

(declare-fun b!2976728 () Bool)

(assert (=> b!2976728 (= e!1872495 e!1872492)))

(assert (=> b!2976728 (= c!488756 (is-Star!9286 (reg!9615 r!17423)))))

(declare-fun bm!198557 () Bool)

(assert (=> bm!198557 (= call!198562 (validRegex!4019 (ite c!488757 (regTwo!19085 (reg!9615 r!17423)) (regOne!19084 (reg!9615 r!17423)))))))

(declare-fun b!2976729 () Bool)

(assert (=> b!2976729 (= e!1872494 call!198560)))

(assert (= (and d!843181 (not res!1227432)) b!2976728))

(assert (= (and b!2976728 c!488756) b!2976727))

(assert (= (and b!2976728 (not c!488756)) b!2976724))

(assert (= (and b!2976727 res!1227434) b!2976729))

(assert (= (and b!2976724 c!488757) b!2976723))

(assert (= (and b!2976724 (not c!488757)) b!2976725))

(assert (= (and b!2976723 res!1227436) b!2976722))

(assert (= (and b!2976725 (not res!1227433)) b!2976721))

(assert (= (and b!2976721 res!1227435) b!2976726))

(assert (= (or b!2976723 b!2976726) bm!198556))

(assert (= (or b!2976722 b!2976721) bm!198557))

(assert (= (or b!2976729 bm!198556) bm!198555))

(declare-fun m!3340395 () Bool)

(assert (=> bm!198555 m!3340395))

(declare-fun m!3340397 () Bool)

(assert (=> b!2976727 m!3340397))

(declare-fun m!3340399 () Bool)

(assert (=> bm!198557 m!3340399))

(assert (=> b!2976312 d!843181))

(declare-fun e!1872498 () Bool)

(assert (=> b!2976311 (= tp!948319 e!1872498)))

(declare-fun b!2976742 () Bool)

(declare-fun tp!948354 () Bool)

(assert (=> b!2976742 (= e!1872498 tp!948354)))

(declare-fun b!2976743 () Bool)

(declare-fun tp!948355 () Bool)

(declare-fun tp!948352 () Bool)

(assert (=> b!2976743 (= e!1872498 (and tp!948355 tp!948352))))

(declare-fun b!2976741 () Bool)

(declare-fun tp!948356 () Bool)

(declare-fun tp!948353 () Bool)

(assert (=> b!2976741 (= e!1872498 (and tp!948356 tp!948353))))

(declare-fun b!2976740 () Bool)

(assert (=> b!2976740 (= e!1872498 tp_is_empty!16135)))

(assert (= (and b!2976311 (is-ElementMatch!9286 (regOne!19084 r!17423))) b!2976740))

(assert (= (and b!2976311 (is-Concat!14607 (regOne!19084 r!17423))) b!2976741))

(assert (= (and b!2976311 (is-Star!9286 (regOne!19084 r!17423))) b!2976742))

(assert (= (and b!2976311 (is-Union!9286 (regOne!19084 r!17423))) b!2976743))

(declare-fun e!1872499 () Bool)

(assert (=> b!2976311 (= tp!948318 e!1872499)))

(declare-fun b!2976746 () Bool)

(declare-fun tp!948359 () Bool)

(assert (=> b!2976746 (= e!1872499 tp!948359)))

(declare-fun b!2976747 () Bool)

(declare-fun tp!948360 () Bool)

(declare-fun tp!948357 () Bool)

(assert (=> b!2976747 (= e!1872499 (and tp!948360 tp!948357))))

(declare-fun b!2976745 () Bool)

(declare-fun tp!948361 () Bool)

(declare-fun tp!948358 () Bool)

(assert (=> b!2976745 (= e!1872499 (and tp!948361 tp!948358))))

(declare-fun b!2976744 () Bool)

(assert (=> b!2976744 (= e!1872499 tp_is_empty!16135)))

(assert (= (and b!2976311 (is-ElementMatch!9286 (regTwo!19084 r!17423))) b!2976744))

(assert (= (and b!2976311 (is-Concat!14607 (regTwo!19084 r!17423))) b!2976745))

(assert (= (and b!2976311 (is-Star!9286 (regTwo!19084 r!17423))) b!2976746))

(assert (= (and b!2976311 (is-Union!9286 (regTwo!19084 r!17423))) b!2976747))

(declare-fun e!1872500 () Bool)

(assert (=> b!2976309 (= tp!948322 e!1872500)))

(declare-fun b!2976750 () Bool)

(declare-fun tp!948364 () Bool)

(assert (=> b!2976750 (= e!1872500 tp!948364)))

(declare-fun b!2976751 () Bool)

(declare-fun tp!948365 () Bool)

(declare-fun tp!948362 () Bool)

(assert (=> b!2976751 (= e!1872500 (and tp!948365 tp!948362))))

(declare-fun b!2976749 () Bool)

(declare-fun tp!948366 () Bool)

(declare-fun tp!948363 () Bool)

(assert (=> b!2976749 (= e!1872500 (and tp!948366 tp!948363))))

(declare-fun b!2976748 () Bool)

(assert (=> b!2976748 (= e!1872500 tp_is_empty!16135)))

(assert (= (and b!2976309 (is-ElementMatch!9286 (reg!9615 r!17423))) b!2976748))

(assert (= (and b!2976309 (is-Concat!14607 (reg!9615 r!17423))) b!2976749))

(assert (= (and b!2976309 (is-Star!9286 (reg!9615 r!17423))) b!2976750))

(assert (= (and b!2976309 (is-Union!9286 (reg!9615 r!17423))) b!2976751))

(declare-fun b!2976756 () Bool)

(declare-fun e!1872503 () Bool)

(declare-fun tp!948369 () Bool)

(assert (=> b!2976756 (= e!1872503 (and tp_is_empty!16135 tp!948369))))

(assert (=> b!2976313 (= tp!948321 e!1872503)))

(assert (= (and b!2976313 (is-Cons!35027 (t!234216 s!11993))) b!2976756))

(declare-fun e!1872504 () Bool)

(assert (=> b!2976308 (= tp!948323 e!1872504)))

(declare-fun b!2976759 () Bool)

(declare-fun tp!948372 () Bool)

(assert (=> b!2976759 (= e!1872504 tp!948372)))

(declare-fun b!2976760 () Bool)

(declare-fun tp!948373 () Bool)

(declare-fun tp!948370 () Bool)

(assert (=> b!2976760 (= e!1872504 (and tp!948373 tp!948370))))

(declare-fun b!2976758 () Bool)

(declare-fun tp!948374 () Bool)

(declare-fun tp!948371 () Bool)

(assert (=> b!2976758 (= e!1872504 (and tp!948374 tp!948371))))

(declare-fun b!2976757 () Bool)

(assert (=> b!2976757 (= e!1872504 tp_is_empty!16135)))

(assert (= (and b!2976308 (is-ElementMatch!9286 (regOne!19085 r!17423))) b!2976757))

(assert (= (and b!2976308 (is-Concat!14607 (regOne!19085 r!17423))) b!2976758))

(assert (= (and b!2976308 (is-Star!9286 (regOne!19085 r!17423))) b!2976759))

(assert (= (and b!2976308 (is-Union!9286 (regOne!19085 r!17423))) b!2976760))

(declare-fun e!1872505 () Bool)

(assert (=> b!2976308 (= tp!948320 e!1872505)))

(declare-fun b!2976763 () Bool)

(declare-fun tp!948377 () Bool)

(assert (=> b!2976763 (= e!1872505 tp!948377)))

(declare-fun b!2976764 () Bool)

(declare-fun tp!948378 () Bool)

(declare-fun tp!948375 () Bool)

(assert (=> b!2976764 (= e!1872505 (and tp!948378 tp!948375))))

(declare-fun b!2976762 () Bool)

(declare-fun tp!948379 () Bool)

(declare-fun tp!948376 () Bool)

(assert (=> b!2976762 (= e!1872505 (and tp!948379 tp!948376))))

(declare-fun b!2976761 () Bool)

(assert (=> b!2976761 (= e!1872505 tp_is_empty!16135)))

(assert (= (and b!2976308 (is-ElementMatch!9286 (regTwo!19085 r!17423))) b!2976761))

(assert (= (and b!2976308 (is-Concat!14607 (regTwo!19085 r!17423))) b!2976762))

(assert (= (and b!2976308 (is-Star!9286 (regTwo!19085 r!17423))) b!2976763))

(assert (= (and b!2976308 (is-Union!9286 (regTwo!19085 r!17423))) b!2976764))

(push 1)

(assert (not bm!198549))

(assert (not d!843167))

(assert (not b!2976584))

(assert (not b!2976727))

(assert (not b!2976749))

(assert (not b!2976750))

(assert (not b!2976764))

(assert (not d!843169))

(assert (not d!843163))

(assert (not b!2976586))

(assert (not b!2976568))

(assert (not bm!198538))

(assert (not bm!198521))

(assert (not d!843145))

(assert (not b!2976710))

(assert (not bm!198531))

(assert (not bm!198520))

(assert (not b!2976760))

(assert (not b!2976583))

(assert (not d!843175))

(assert (not b!2976571))

(assert (not b!2976628))

(assert (not b!2976457))

(assert (not b!2976756))

(assert (not bm!198537))

(assert (not b!2976762))

(assert (not b!2976747))

(assert (not bm!198547))

(assert (not b!2976455))

(assert (not b!2976743))

(assert (not b!2976572))

(assert (not b!2976516))

(assert (not b!2976632))

(assert (not b!2976711))

(assert (not bm!198519))

(assert (not bm!198550))

(assert (not b!2976581))

(assert (not d!843137))

(assert (not d!843177))

(assert (not b!2976567))

(assert (not b!2976759))

(assert (not bm!198518))

(assert (not b!2976582))

(assert (not b!2976763))

(assert (not d!843151))

(assert (not d!843179))

(assert (not d!843149))

(assert (not b!2976741))

(assert (not b!2976751))

(assert (not bm!198516))

(assert (not bm!198555))

(assert (not b!2976745))

(assert (not b!2976758))

(assert (not b!2976624))

(assert (not b!2976570))

(assert tp_is_empty!16135)

(assert (not b!2976585))

(assert (not b!2976742))

(assert (not b!2976569))

(assert (not b!2976712))

(assert (not bm!198532))

(assert (not bm!198557))

(assert (not b!2976746))

(assert (not b!2976713))

(assert (not b!2976716))

(assert (not b!2976512))

(assert (not bm!198551))

(assert (not b!2976708))

(assert (not d!843165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

