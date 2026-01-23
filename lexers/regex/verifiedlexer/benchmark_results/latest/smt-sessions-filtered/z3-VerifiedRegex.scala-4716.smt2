; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244092 () Bool)

(assert start!244092)

(declare-fun b!2500343 () Bool)

(declare-fun e!1585941 () Bool)

(declare-fun tp!800613 () Bool)

(assert (=> b!2500343 (= e!1585941 tp!800613)))

(declare-fun b!2500344 () Bool)

(declare-fun e!1585943 () Bool)

(declare-fun tp_is_empty!12669 () Bool)

(declare-fun tp!800612 () Bool)

(assert (=> b!2500344 (= e!1585943 (and tp_is_empty!12669 tp!800612))))

(declare-fun b!2500345 () Bool)

(declare-fun res!1057304 () Bool)

(declare-fun e!1585944 () Bool)

(assert (=> b!2500345 (=> (not res!1057304) (not e!1585944))))

(declare-datatypes ((C!14972 0))(
  ( (C!14973 (val!9138 Int)) )
))
(declare-datatypes ((Regex!7407 0))(
  ( (ElementMatch!7407 (c!397787 C!14972)) (Concat!12103 (regOne!15326 Regex!7407) (regTwo!15326 Regex!7407)) (EmptyExpr!7407) (Star!7407 (reg!7736 Regex!7407)) (EmptyLang!7407) (Union!7407 (regOne!15327 Regex!7407) (regTwo!15327 Regex!7407)) )
))
(declare-fun r!27340 () Regex!7407)

(declare-fun c!14016 () C!14972)

(declare-datatypes ((List!29472 0))(
  ( (Nil!29372) (Cons!29372 (h!34792 C!14972) (t!211171 List!29472)) )
))
(declare-fun tl!4068 () List!29472)

(declare-fun nullable!2324 (Regex!7407) Bool)

(declare-fun derivative!102 (Regex!7407 List!29472) Regex!7407)

(declare-fun derivativeStep!1976 (Regex!7407 C!14972) Regex!7407)

(assert (=> b!2500345 (= res!1057304 (nullable!2324 (derivative!102 (derivativeStep!1976 r!27340 c!14016) tl!4068)))))

(declare-fun b!2500346 () Bool)

(declare-fun res!1057302 () Bool)

(assert (=> b!2500346 (=> (not res!1057302) (not e!1585944))))

(get-info :version)

(assert (=> b!2500346 (= res!1057302 (and (not ((_ is EmptyExpr!7407) r!27340)) (not ((_ is EmptyLang!7407) r!27340)) (not ((_ is ElementMatch!7407) r!27340)) (not ((_ is Union!7407) r!27340)) (not ((_ is Star!7407) r!27340))))))

(declare-fun b!2500347 () Bool)

(declare-fun e!1585942 () Bool)

(declare-fun lt!895548 () Regex!7407)

(declare-fun matchR!3410 (Regex!7407 List!29472) Bool)

(assert (=> b!2500347 (= e!1585942 (matchR!3410 lt!895548 tl!4068))))

(declare-fun res!1057303 () Bool)

(assert (=> start!244092 (=> (not res!1057303) (not e!1585944))))

(declare-fun validRegex!3033 (Regex!7407) Bool)

(assert (=> start!244092 (= res!1057303 (validRegex!3033 r!27340))))

(assert (=> start!244092 e!1585944))

(assert (=> start!244092 e!1585941))

(assert (=> start!244092 tp_is_empty!12669))

(assert (=> start!244092 e!1585943))

(declare-fun b!2500348 () Bool)

(assert (=> b!2500348 (= e!1585944 (not (validRegex!3033 (regOne!15326 r!27340))))))

(assert (=> b!2500348 e!1585942))

(declare-fun res!1057301 () Bool)

(assert (=> b!2500348 (=> res!1057301 e!1585942)))

(declare-fun lt!895549 () Regex!7407)

(assert (=> b!2500348 (= res!1057301 (matchR!3410 lt!895549 tl!4068))))

(declare-datatypes ((Unit!43071 0))(
  ( (Unit!43072) )
))
(declare-fun lt!895552 () Unit!43071)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!102 (Regex!7407 Regex!7407 List!29472) Unit!43071)

(assert (=> b!2500348 (= lt!895552 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!102 lt!895549 lt!895548 tl!4068))))

(declare-fun lt!895551 () Regex!7407)

(assert (=> b!2500348 (= (matchR!3410 lt!895551 tl!4068) (matchR!3410 (derivative!102 lt!895551 tl!4068) Nil!29372))))

(declare-fun lt!895550 () Unit!43071)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!56 (Regex!7407 List!29472) Unit!43071)

(assert (=> b!2500348 (= lt!895550 (lemmaMatchRIsSameAsWholeDerivativeAndNil!56 lt!895551 tl!4068))))

(assert (=> b!2500348 (= lt!895551 (Union!7407 lt!895549 lt!895548))))

(assert (=> b!2500348 (= lt!895548 (derivativeStep!1976 (regTwo!15326 r!27340) c!14016))))

(assert (=> b!2500348 (= lt!895549 (Concat!12103 (derivativeStep!1976 (regOne!15326 r!27340) c!14016) (regTwo!15326 r!27340)))))

(declare-fun b!2500349 () Bool)

(declare-fun tp!800610 () Bool)

(declare-fun tp!800609 () Bool)

(assert (=> b!2500349 (= e!1585941 (and tp!800610 tp!800609))))

(declare-fun b!2500350 () Bool)

(declare-fun tp!800611 () Bool)

(declare-fun tp!800614 () Bool)

(assert (=> b!2500350 (= e!1585941 (and tp!800611 tp!800614))))

(declare-fun b!2500351 () Bool)

(declare-fun res!1057300 () Bool)

(assert (=> b!2500351 (=> (not res!1057300) (not e!1585944))))

(assert (=> b!2500351 (= res!1057300 (nullable!2324 (regOne!15326 r!27340)))))

(declare-fun b!2500352 () Bool)

(assert (=> b!2500352 (= e!1585941 tp_is_empty!12669)))

(assert (= (and start!244092 res!1057303) b!2500345))

(assert (= (and b!2500345 res!1057304) b!2500346))

(assert (= (and b!2500346 res!1057302) b!2500351))

(assert (= (and b!2500351 res!1057300) b!2500348))

(assert (= (and b!2500348 (not res!1057301)) b!2500347))

(assert (= (and start!244092 ((_ is ElementMatch!7407) r!27340)) b!2500352))

(assert (= (and start!244092 ((_ is Concat!12103) r!27340)) b!2500349))

(assert (= (and start!244092 ((_ is Star!7407) r!27340)) b!2500343))

(assert (= (and start!244092 ((_ is Union!7407) r!27340)) b!2500350))

(assert (= (and start!244092 ((_ is Cons!29372) tl!4068)) b!2500344))

(declare-fun m!2863131 () Bool)

(assert (=> b!2500347 m!2863131))

(declare-fun m!2863133 () Bool)

(assert (=> b!2500345 m!2863133))

(assert (=> b!2500345 m!2863133))

(declare-fun m!2863135 () Bool)

(assert (=> b!2500345 m!2863135))

(assert (=> b!2500345 m!2863135))

(declare-fun m!2863137 () Bool)

(assert (=> b!2500345 m!2863137))

(declare-fun m!2863139 () Bool)

(assert (=> b!2500348 m!2863139))

(declare-fun m!2863141 () Bool)

(assert (=> b!2500348 m!2863141))

(declare-fun m!2863143 () Bool)

(assert (=> b!2500348 m!2863143))

(declare-fun m!2863145 () Bool)

(assert (=> b!2500348 m!2863145))

(declare-fun m!2863147 () Bool)

(assert (=> b!2500348 m!2863147))

(declare-fun m!2863149 () Bool)

(assert (=> b!2500348 m!2863149))

(declare-fun m!2863151 () Bool)

(assert (=> b!2500348 m!2863151))

(declare-fun m!2863153 () Bool)

(assert (=> b!2500348 m!2863153))

(declare-fun m!2863155 () Bool)

(assert (=> b!2500348 m!2863155))

(assert (=> b!2500348 m!2863151))

(declare-fun m!2863157 () Bool)

(assert (=> b!2500351 m!2863157))

(declare-fun m!2863159 () Bool)

(assert (=> start!244092 m!2863159))

(check-sat (not b!2500351) (not b!2500350) (not b!2500348) (not b!2500347) (not b!2500349) (not start!244092) tp_is_empty!12669 (not b!2500343) (not b!2500345) (not b!2500344))
(check-sat)
(get-model)

(declare-fun b!2500408 () Bool)

(declare-fun e!1585984 () Bool)

(declare-fun lt!895555 () Bool)

(assert (=> b!2500408 (= e!1585984 (not lt!895555))))

(declare-fun b!2500409 () Bool)

(declare-fun e!1585986 () Bool)

(declare-fun head!5695 (List!29472) C!14972)

(declare-fun tail!3972 (List!29472) List!29472)

(assert (=> b!2500409 (= e!1585986 (matchR!3410 (derivativeStep!1976 lt!895548 (head!5695 tl!4068)) (tail!3972 tl!4068)))))

(declare-fun b!2500410 () Bool)

(declare-fun res!1057342 () Bool)

(declare-fun e!1585982 () Bool)

(assert (=> b!2500410 (=> (not res!1057342) (not e!1585982))))

(declare-fun isEmpty!16831 (List!29472) Bool)

(assert (=> b!2500410 (= res!1057342 (isEmpty!16831 (tail!3972 tl!4068)))))

(declare-fun b!2500411 () Bool)

(declare-fun e!1585985 () Bool)

(assert (=> b!2500411 (= e!1585985 (not (= (head!5695 tl!4068) (c!397787 lt!895548))))))

(declare-fun b!2500412 () Bool)

(declare-fun res!1057340 () Bool)

(declare-fun e!1585980 () Bool)

(assert (=> b!2500412 (=> res!1057340 e!1585980)))

(assert (=> b!2500412 (= res!1057340 (not ((_ is ElementMatch!7407) lt!895548)))))

(assert (=> b!2500412 (= e!1585984 e!1585980)))

(declare-fun b!2500413 () Bool)

(assert (=> b!2500413 (= e!1585982 (= (head!5695 tl!4068) (c!397787 lt!895548)))))

(declare-fun b!2500414 () Bool)

(declare-fun res!1057338 () Bool)

(assert (=> b!2500414 (=> res!1057338 e!1585985)))

(assert (=> b!2500414 (= res!1057338 (not (isEmpty!16831 (tail!3972 tl!4068))))))

(declare-fun b!2500415 () Bool)

(declare-fun res!1057337 () Bool)

(assert (=> b!2500415 (=> res!1057337 e!1585980)))

(assert (=> b!2500415 (= res!1057337 e!1585982)))

(declare-fun res!1057339 () Bool)

(assert (=> b!2500415 (=> (not res!1057339) (not e!1585982))))

(assert (=> b!2500415 (= res!1057339 lt!895555)))

(declare-fun b!2500416 () Bool)

(declare-fun e!1585983 () Bool)

(assert (=> b!2500416 (= e!1585980 e!1585983)))

(declare-fun res!1057341 () Bool)

(assert (=> b!2500416 (=> (not res!1057341) (not e!1585983))))

(assert (=> b!2500416 (= res!1057341 (not lt!895555))))

(declare-fun b!2500417 () Bool)

(declare-fun e!1585981 () Bool)

(assert (=> b!2500417 (= e!1585981 e!1585984)))

(declare-fun c!397801 () Bool)

(assert (=> b!2500417 (= c!397801 ((_ is EmptyLang!7407) lt!895548))))

(declare-fun b!2500418 () Bool)

(declare-fun res!1057336 () Bool)

(assert (=> b!2500418 (=> (not res!1057336) (not e!1585982))))

(declare-fun call!154387 () Bool)

(assert (=> b!2500418 (= res!1057336 (not call!154387))))

(declare-fun b!2500419 () Bool)

(assert (=> b!2500419 (= e!1585981 (= lt!895555 call!154387))))

(declare-fun b!2500420 () Bool)

(assert (=> b!2500420 (= e!1585983 e!1585985)))

(declare-fun res!1057343 () Bool)

(assert (=> b!2500420 (=> res!1057343 e!1585985)))

(assert (=> b!2500420 (= res!1057343 call!154387)))

(declare-fun b!2500421 () Bool)

(assert (=> b!2500421 (= e!1585986 (nullable!2324 lt!895548))))

(declare-fun bm!154382 () Bool)

(assert (=> bm!154382 (= call!154387 (isEmpty!16831 tl!4068))))

(declare-fun d!715351 () Bool)

(assert (=> d!715351 e!1585981))

(declare-fun c!397800 () Bool)

(assert (=> d!715351 (= c!397800 ((_ is EmptyExpr!7407) lt!895548))))

(assert (=> d!715351 (= lt!895555 e!1585986)))

(declare-fun c!397802 () Bool)

(assert (=> d!715351 (= c!397802 (isEmpty!16831 tl!4068))))

(assert (=> d!715351 (validRegex!3033 lt!895548)))

(assert (=> d!715351 (= (matchR!3410 lt!895548 tl!4068) lt!895555)))

(assert (= (and d!715351 c!397802) b!2500421))

(assert (= (and d!715351 (not c!397802)) b!2500409))

(assert (= (and d!715351 c!397800) b!2500419))

(assert (= (and d!715351 (not c!397800)) b!2500417))

(assert (= (and b!2500417 c!397801) b!2500408))

(assert (= (and b!2500417 (not c!397801)) b!2500412))

(assert (= (and b!2500412 (not res!1057340)) b!2500415))

(assert (= (and b!2500415 res!1057339) b!2500418))

(assert (= (and b!2500418 res!1057336) b!2500410))

(assert (= (and b!2500410 res!1057342) b!2500413))

(assert (= (and b!2500415 (not res!1057337)) b!2500416))

(assert (= (and b!2500416 res!1057341) b!2500420))

(assert (= (and b!2500420 (not res!1057343)) b!2500414))

(assert (= (and b!2500414 (not res!1057338)) b!2500411))

(assert (= (or b!2500419 b!2500418 b!2500420) bm!154382))

(declare-fun m!2863167 () Bool)

(assert (=> bm!154382 m!2863167))

(declare-fun m!2863169 () Bool)

(assert (=> b!2500413 m!2863169))

(declare-fun m!2863171 () Bool)

(assert (=> b!2500410 m!2863171))

(assert (=> b!2500410 m!2863171))

(declare-fun m!2863173 () Bool)

(assert (=> b!2500410 m!2863173))

(assert (=> b!2500414 m!2863171))

(assert (=> b!2500414 m!2863171))

(assert (=> b!2500414 m!2863173))

(assert (=> b!2500411 m!2863169))

(assert (=> d!715351 m!2863167))

(declare-fun m!2863175 () Bool)

(assert (=> d!715351 m!2863175))

(assert (=> b!2500409 m!2863169))

(assert (=> b!2500409 m!2863169))

(declare-fun m!2863177 () Bool)

(assert (=> b!2500409 m!2863177))

(assert (=> b!2500409 m!2863171))

(assert (=> b!2500409 m!2863177))

(assert (=> b!2500409 m!2863171))

(declare-fun m!2863179 () Bool)

(assert (=> b!2500409 m!2863179))

(declare-fun m!2863181 () Bool)

(assert (=> b!2500421 m!2863181))

(assert (=> b!2500347 d!715351))

(declare-fun d!715355 () Bool)

(declare-fun nullableFct!591 (Regex!7407) Bool)

(assert (=> d!715355 (= (nullable!2324 (regOne!15326 r!27340)) (nullableFct!591 (regOne!15326 r!27340)))))

(declare-fun bs!468560 () Bool)

(assert (= bs!468560 d!715355))

(declare-fun m!2863183 () Bool)

(assert (=> bs!468560 m!2863183))

(assert (=> b!2500351 d!715355))

(declare-fun bm!154392 () Bool)

(declare-fun call!154397 () Bool)

(declare-fun c!397817 () Bool)

(assert (=> bm!154392 (= call!154397 (validRegex!3033 (ite c!397817 (regOne!15327 r!27340) (regTwo!15326 r!27340))))))

(declare-fun b!2500482 () Bool)

(declare-fun e!1586022 () Bool)

(declare-fun e!1586026 () Bool)

(assert (=> b!2500482 (= e!1586022 e!1586026)))

(declare-fun res!1057380 () Bool)

(assert (=> b!2500482 (= res!1057380 (not (nullable!2324 (reg!7736 r!27340))))))

(assert (=> b!2500482 (=> (not res!1057380) (not e!1586026))))

(declare-fun d!715357 () Bool)

(declare-fun res!1057381 () Bool)

(declare-fun e!1586027 () Bool)

(assert (=> d!715357 (=> res!1057381 e!1586027)))

(assert (=> d!715357 (= res!1057381 ((_ is ElementMatch!7407) r!27340))))

(assert (=> d!715357 (= (validRegex!3033 r!27340) e!1586027)))

(declare-fun b!2500483 () Bool)

(declare-fun e!1586023 () Bool)

(declare-fun call!154398 () Bool)

(assert (=> b!2500483 (= e!1586023 call!154398)))

(declare-fun b!2500484 () Bool)

(declare-fun e!1586024 () Bool)

(declare-fun e!1586025 () Bool)

(assert (=> b!2500484 (= e!1586024 e!1586025)))

(declare-fun res!1057378 () Bool)

(assert (=> b!2500484 (=> (not res!1057378) (not e!1586025))))

(assert (=> b!2500484 (= res!1057378 call!154398)))

(declare-fun b!2500485 () Bool)

(declare-fun res!1057382 () Bool)

(assert (=> b!2500485 (=> (not res!1057382) (not e!1586023))))

(assert (=> b!2500485 (= res!1057382 call!154397)))

(declare-fun e!1586028 () Bool)

(assert (=> b!2500485 (= e!1586028 e!1586023)))

(declare-fun call!154399 () Bool)

(declare-fun bm!154393 () Bool)

(declare-fun c!397816 () Bool)

(assert (=> bm!154393 (= call!154399 (validRegex!3033 (ite c!397816 (reg!7736 r!27340) (ite c!397817 (regTwo!15327 r!27340) (regOne!15326 r!27340)))))))

(declare-fun b!2500486 () Bool)

(assert (=> b!2500486 (= e!1586025 call!154397)))

(declare-fun b!2500487 () Bool)

(assert (=> b!2500487 (= e!1586022 e!1586028)))

(assert (=> b!2500487 (= c!397817 ((_ is Union!7407) r!27340))))

(declare-fun bm!154394 () Bool)

(assert (=> bm!154394 (= call!154398 call!154399)))

(declare-fun b!2500488 () Bool)

(declare-fun res!1057379 () Bool)

(assert (=> b!2500488 (=> res!1057379 e!1586024)))

(assert (=> b!2500488 (= res!1057379 (not ((_ is Concat!12103) r!27340)))))

(assert (=> b!2500488 (= e!1586028 e!1586024)))

(declare-fun b!2500489 () Bool)

(assert (=> b!2500489 (= e!1586027 e!1586022)))

(assert (=> b!2500489 (= c!397816 ((_ is Star!7407) r!27340))))

(declare-fun b!2500490 () Bool)

(assert (=> b!2500490 (= e!1586026 call!154399)))

(assert (= (and d!715357 (not res!1057381)) b!2500489))

(assert (= (and b!2500489 c!397816) b!2500482))

(assert (= (and b!2500489 (not c!397816)) b!2500487))

(assert (= (and b!2500482 res!1057380) b!2500490))

(assert (= (and b!2500487 c!397817) b!2500485))

(assert (= (and b!2500487 (not c!397817)) b!2500488))

(assert (= (and b!2500485 res!1057382) b!2500483))

(assert (= (and b!2500488 (not res!1057379)) b!2500484))

(assert (= (and b!2500484 res!1057378) b!2500486))

(assert (= (or b!2500485 b!2500486) bm!154392))

(assert (= (or b!2500483 b!2500484) bm!154394))

(assert (= (or b!2500490 bm!154394) bm!154393))

(declare-fun m!2863201 () Bool)

(assert (=> bm!154392 m!2863201))

(declare-fun m!2863203 () Bool)

(assert (=> b!2500482 m!2863203))

(declare-fun m!2863205 () Bool)

(assert (=> bm!154393 m!2863205))

(assert (=> start!244092 d!715357))

(declare-fun d!715361 () Bool)

(assert (=> d!715361 (= (nullable!2324 (derivative!102 (derivativeStep!1976 r!27340 c!14016) tl!4068)) (nullableFct!591 (derivative!102 (derivativeStep!1976 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468561 () Bool)

(assert (= bs!468561 d!715361))

(assert (=> bs!468561 m!2863135))

(declare-fun m!2863207 () Bool)

(assert (=> bs!468561 m!2863207))

(assert (=> b!2500345 d!715361))

(declare-fun d!715363 () Bool)

(declare-fun lt!895565 () Regex!7407)

(assert (=> d!715363 (validRegex!3033 lt!895565)))

(declare-fun e!1586038 () Regex!7407)

(assert (=> d!715363 (= lt!895565 e!1586038)))

(declare-fun c!397823 () Bool)

(assert (=> d!715363 (= c!397823 ((_ is Cons!29372) tl!4068))))

(assert (=> d!715363 (validRegex!3033 (derivativeStep!1976 r!27340 c!14016))))

(assert (=> d!715363 (= (derivative!102 (derivativeStep!1976 r!27340 c!14016) tl!4068) lt!895565)))

(declare-fun b!2500509 () Bool)

(assert (=> b!2500509 (= e!1586038 (derivative!102 (derivativeStep!1976 (derivativeStep!1976 r!27340 c!14016) (h!34792 tl!4068)) (t!211171 tl!4068)))))

(declare-fun b!2500510 () Bool)

(assert (=> b!2500510 (= e!1586038 (derivativeStep!1976 r!27340 c!14016))))

(assert (= (and d!715363 c!397823) b!2500509))

(assert (= (and d!715363 (not c!397823)) b!2500510))

(declare-fun m!2863219 () Bool)

(assert (=> d!715363 m!2863219))

(assert (=> d!715363 m!2863133))

(declare-fun m!2863221 () Bool)

(assert (=> d!715363 m!2863221))

(assert (=> b!2500509 m!2863133))

(declare-fun m!2863223 () Bool)

(assert (=> b!2500509 m!2863223))

(assert (=> b!2500509 m!2863223))

(declare-fun m!2863225 () Bool)

(assert (=> b!2500509 m!2863225))

(assert (=> b!2500345 d!715363))

(declare-fun b!2500554 () Bool)

(declare-fun e!1586066 () Regex!7407)

(assert (=> b!2500554 (= e!1586066 EmptyLang!7407)))

(declare-fun b!2500555 () Bool)

(declare-fun e!1586068 () Regex!7407)

(declare-fun call!154412 () Regex!7407)

(assert (=> b!2500555 (= e!1586068 (Union!7407 (Concat!12103 call!154412 (regTwo!15326 r!27340)) EmptyLang!7407))))

(declare-fun b!2500556 () Bool)

(declare-fun e!1586069 () Regex!7407)

(declare-fun call!154413 () Regex!7407)

(assert (=> b!2500556 (= e!1586069 (Concat!12103 call!154413 r!27340))))

(declare-fun b!2500557 () Bool)

(declare-fun c!397840 () Bool)

(assert (=> b!2500557 (= c!397840 (nullable!2324 (regOne!15326 r!27340)))))

(assert (=> b!2500557 (= e!1586069 e!1586068)))

(declare-fun b!2500558 () Bool)

(declare-fun e!1586065 () Regex!7407)

(assert (=> b!2500558 (= e!1586066 e!1586065)))

(declare-fun c!397839 () Bool)

(assert (=> b!2500558 (= c!397839 ((_ is ElementMatch!7407) r!27340))))

(declare-fun b!2500559 () Bool)

(declare-fun e!1586067 () Regex!7407)

(assert (=> b!2500559 (= e!1586067 e!1586069)))

(declare-fun c!397843 () Bool)

(assert (=> b!2500559 (= c!397843 ((_ is Star!7407) r!27340))))

(declare-fun call!154415 () Regex!7407)

(declare-fun bm!154407 () Bool)

(declare-fun c!397842 () Bool)

(assert (=> bm!154407 (= call!154415 (derivativeStep!1976 (ite c!397842 (regTwo!15327 r!27340) (ite c!397843 (reg!7736 r!27340) (regOne!15326 r!27340))) c!14016))))

(declare-fun b!2500560 () Bool)

(declare-fun call!154414 () Regex!7407)

(assert (=> b!2500560 (= e!1586067 (Union!7407 call!154414 call!154415))))

(declare-fun bm!154409 () Bool)

(assert (=> bm!154409 (= call!154414 (derivativeStep!1976 (ite c!397842 (regOne!15327 r!27340) (regTwo!15326 r!27340)) c!14016))))

(declare-fun b!2500561 () Bool)

(assert (=> b!2500561 (= e!1586068 (Union!7407 (Concat!12103 call!154412 (regTwo!15326 r!27340)) call!154414))))

(declare-fun b!2500562 () Bool)

(assert (=> b!2500562 (= c!397842 ((_ is Union!7407) r!27340))))

(assert (=> b!2500562 (= e!1586065 e!1586067)))

(declare-fun b!2500563 () Bool)

(assert (=> b!2500563 (= e!1586065 (ite (= c!14016 (c!397787 r!27340)) EmptyExpr!7407 EmptyLang!7407))))

(declare-fun bm!154410 () Bool)

(assert (=> bm!154410 (= call!154413 call!154415)))

(declare-fun bm!154408 () Bool)

(assert (=> bm!154408 (= call!154412 call!154413)))

(declare-fun d!715369 () Bool)

(declare-fun lt!895576 () Regex!7407)

(assert (=> d!715369 (validRegex!3033 lt!895576)))

(assert (=> d!715369 (= lt!895576 e!1586066)))

(declare-fun c!397841 () Bool)

(assert (=> d!715369 (= c!397841 (or ((_ is EmptyExpr!7407) r!27340) ((_ is EmptyLang!7407) r!27340)))))

(assert (=> d!715369 (validRegex!3033 r!27340)))

(assert (=> d!715369 (= (derivativeStep!1976 r!27340 c!14016) lt!895576)))

(assert (= (and d!715369 c!397841) b!2500554))

(assert (= (and d!715369 (not c!397841)) b!2500558))

(assert (= (and b!2500558 c!397839) b!2500563))

(assert (= (and b!2500558 (not c!397839)) b!2500562))

(assert (= (and b!2500562 c!397842) b!2500560))

(assert (= (and b!2500562 (not c!397842)) b!2500559))

(assert (= (and b!2500559 c!397843) b!2500556))

(assert (= (and b!2500559 (not c!397843)) b!2500557))

(assert (= (and b!2500557 c!397840) b!2500561))

(assert (= (and b!2500557 (not c!397840)) b!2500555))

(assert (= (or b!2500561 b!2500555) bm!154408))

(assert (= (or b!2500556 bm!154408) bm!154410))

(assert (= (or b!2500560 bm!154410) bm!154407))

(assert (= (or b!2500560 b!2500561) bm!154409))

(assert (=> b!2500557 m!2863157))

(declare-fun m!2863243 () Bool)

(assert (=> bm!154407 m!2863243))

(declare-fun m!2863245 () Bool)

(assert (=> bm!154409 m!2863245))

(declare-fun m!2863247 () Bool)

(assert (=> d!715369 m!2863247))

(assert (=> d!715369 m!2863159))

(assert (=> b!2500345 d!715369))

(declare-fun b!2500582 () Bool)

(declare-fun e!1586084 () Bool)

(declare-fun lt!895577 () Bool)

(assert (=> b!2500582 (= e!1586084 (not lt!895577))))

(declare-fun b!2500583 () Bool)

(declare-fun e!1586086 () Bool)

(assert (=> b!2500583 (= e!1586086 (matchR!3410 (derivativeStep!1976 (derivative!102 lt!895551 tl!4068) (head!5695 Nil!29372)) (tail!3972 Nil!29372)))))

(declare-fun b!2500584 () Bool)

(declare-fun res!1057408 () Bool)

(declare-fun e!1586082 () Bool)

(assert (=> b!2500584 (=> (not res!1057408) (not e!1586082))))

(assert (=> b!2500584 (= res!1057408 (isEmpty!16831 (tail!3972 Nil!29372)))))

(declare-fun b!2500585 () Bool)

(declare-fun e!1586085 () Bool)

(assert (=> b!2500585 (= e!1586085 (not (= (head!5695 Nil!29372) (c!397787 (derivative!102 lt!895551 tl!4068)))))))

(declare-fun b!2500586 () Bool)

(declare-fun res!1057406 () Bool)

(declare-fun e!1586080 () Bool)

(assert (=> b!2500586 (=> res!1057406 e!1586080)))

(assert (=> b!2500586 (= res!1057406 (not ((_ is ElementMatch!7407) (derivative!102 lt!895551 tl!4068))))))

(assert (=> b!2500586 (= e!1586084 e!1586080)))

(declare-fun b!2500587 () Bool)

(assert (=> b!2500587 (= e!1586082 (= (head!5695 Nil!29372) (c!397787 (derivative!102 lt!895551 tl!4068))))))

(declare-fun b!2500588 () Bool)

(declare-fun res!1057404 () Bool)

(assert (=> b!2500588 (=> res!1057404 e!1586085)))

(assert (=> b!2500588 (= res!1057404 (not (isEmpty!16831 (tail!3972 Nil!29372))))))

(declare-fun b!2500589 () Bool)

(declare-fun res!1057403 () Bool)

(assert (=> b!2500589 (=> res!1057403 e!1586080)))

(assert (=> b!2500589 (= res!1057403 e!1586082)))

(declare-fun res!1057405 () Bool)

(assert (=> b!2500589 (=> (not res!1057405) (not e!1586082))))

(assert (=> b!2500589 (= res!1057405 lt!895577)))

(declare-fun b!2500590 () Bool)

(declare-fun e!1586083 () Bool)

(assert (=> b!2500590 (= e!1586080 e!1586083)))

(declare-fun res!1057407 () Bool)

(assert (=> b!2500590 (=> (not res!1057407) (not e!1586083))))

(assert (=> b!2500590 (= res!1057407 (not lt!895577))))

(declare-fun b!2500591 () Bool)

(declare-fun e!1586081 () Bool)

(assert (=> b!2500591 (= e!1586081 e!1586084)))

(declare-fun c!397855 () Bool)

(assert (=> b!2500591 (= c!397855 ((_ is EmptyLang!7407) (derivative!102 lt!895551 tl!4068)))))

(declare-fun b!2500592 () Bool)

(declare-fun res!1057402 () Bool)

(assert (=> b!2500592 (=> (not res!1057402) (not e!1586082))))

(declare-fun call!154420 () Bool)

(assert (=> b!2500592 (= res!1057402 (not call!154420))))

(declare-fun b!2500593 () Bool)

(assert (=> b!2500593 (= e!1586081 (= lt!895577 call!154420))))

(declare-fun b!2500594 () Bool)

(assert (=> b!2500594 (= e!1586083 e!1586085)))

(declare-fun res!1057409 () Bool)

(assert (=> b!2500594 (=> res!1057409 e!1586085)))

(assert (=> b!2500594 (= res!1057409 call!154420)))

(declare-fun b!2500595 () Bool)

(assert (=> b!2500595 (= e!1586086 (nullable!2324 (derivative!102 lt!895551 tl!4068)))))

(declare-fun bm!154415 () Bool)

(assert (=> bm!154415 (= call!154420 (isEmpty!16831 Nil!29372))))

(declare-fun d!715377 () Bool)

(assert (=> d!715377 e!1586081))

(declare-fun c!397854 () Bool)

(assert (=> d!715377 (= c!397854 ((_ is EmptyExpr!7407) (derivative!102 lt!895551 tl!4068)))))

(assert (=> d!715377 (= lt!895577 e!1586086)))

(declare-fun c!397856 () Bool)

(assert (=> d!715377 (= c!397856 (isEmpty!16831 Nil!29372))))

(assert (=> d!715377 (validRegex!3033 (derivative!102 lt!895551 tl!4068))))

(assert (=> d!715377 (= (matchR!3410 (derivative!102 lt!895551 tl!4068) Nil!29372) lt!895577)))

(assert (= (and d!715377 c!397856) b!2500595))

(assert (= (and d!715377 (not c!397856)) b!2500583))

(assert (= (and d!715377 c!397854) b!2500593))

(assert (= (and d!715377 (not c!397854)) b!2500591))

(assert (= (and b!2500591 c!397855) b!2500582))

(assert (= (and b!2500591 (not c!397855)) b!2500586))

(assert (= (and b!2500586 (not res!1057406)) b!2500589))

(assert (= (and b!2500589 res!1057405) b!2500592))

(assert (= (and b!2500592 res!1057402) b!2500584))

(assert (= (and b!2500584 res!1057408) b!2500587))

(assert (= (and b!2500589 (not res!1057403)) b!2500590))

(assert (= (and b!2500590 res!1057407) b!2500594))

(assert (= (and b!2500594 (not res!1057409)) b!2500588))

(assert (= (and b!2500588 (not res!1057404)) b!2500585))

(assert (= (or b!2500593 b!2500592 b!2500594) bm!154415))

(declare-fun m!2863249 () Bool)

(assert (=> bm!154415 m!2863249))

(declare-fun m!2863251 () Bool)

(assert (=> b!2500587 m!2863251))

(declare-fun m!2863253 () Bool)

(assert (=> b!2500584 m!2863253))

(assert (=> b!2500584 m!2863253))

(declare-fun m!2863255 () Bool)

(assert (=> b!2500584 m!2863255))

(assert (=> b!2500588 m!2863253))

(assert (=> b!2500588 m!2863253))

(assert (=> b!2500588 m!2863255))

(assert (=> b!2500585 m!2863251))

(assert (=> d!715377 m!2863249))

(assert (=> d!715377 m!2863151))

(declare-fun m!2863257 () Bool)

(assert (=> d!715377 m!2863257))

(assert (=> b!2500583 m!2863251))

(assert (=> b!2500583 m!2863151))

(assert (=> b!2500583 m!2863251))

(declare-fun m!2863259 () Bool)

(assert (=> b!2500583 m!2863259))

(assert (=> b!2500583 m!2863253))

(assert (=> b!2500583 m!2863259))

(assert (=> b!2500583 m!2863253))

(declare-fun m!2863261 () Bool)

(assert (=> b!2500583 m!2863261))

(assert (=> b!2500595 m!2863151))

(declare-fun m!2863263 () Bool)

(assert (=> b!2500595 m!2863263))

(assert (=> b!2500348 d!715377))

(declare-fun b!2500596 () Bool)

(declare-fun e!1586091 () Bool)

(declare-fun lt!895578 () Bool)

(assert (=> b!2500596 (= e!1586091 (not lt!895578))))

(declare-fun b!2500597 () Bool)

(declare-fun e!1586093 () Bool)

(assert (=> b!2500597 (= e!1586093 (matchR!3410 (derivativeStep!1976 lt!895551 (head!5695 tl!4068)) (tail!3972 tl!4068)))))

(declare-fun b!2500598 () Bool)

(declare-fun res!1057416 () Bool)

(declare-fun e!1586089 () Bool)

(assert (=> b!2500598 (=> (not res!1057416) (not e!1586089))))

(assert (=> b!2500598 (= res!1057416 (isEmpty!16831 (tail!3972 tl!4068)))))

(declare-fun b!2500599 () Bool)

(declare-fun e!1586092 () Bool)

(assert (=> b!2500599 (= e!1586092 (not (= (head!5695 tl!4068) (c!397787 lt!895551))))))

(declare-fun b!2500600 () Bool)

(declare-fun res!1057414 () Bool)

(declare-fun e!1586087 () Bool)

(assert (=> b!2500600 (=> res!1057414 e!1586087)))

(assert (=> b!2500600 (= res!1057414 (not ((_ is ElementMatch!7407) lt!895551)))))

(assert (=> b!2500600 (= e!1586091 e!1586087)))

(declare-fun b!2500601 () Bool)

(assert (=> b!2500601 (= e!1586089 (= (head!5695 tl!4068) (c!397787 lt!895551)))))

(declare-fun b!2500602 () Bool)

(declare-fun res!1057412 () Bool)

(assert (=> b!2500602 (=> res!1057412 e!1586092)))

(assert (=> b!2500602 (= res!1057412 (not (isEmpty!16831 (tail!3972 tl!4068))))))

(declare-fun b!2500603 () Bool)

(declare-fun res!1057411 () Bool)

(assert (=> b!2500603 (=> res!1057411 e!1586087)))

(assert (=> b!2500603 (= res!1057411 e!1586089)))

(declare-fun res!1057413 () Bool)

(assert (=> b!2500603 (=> (not res!1057413) (not e!1586089))))

(assert (=> b!2500603 (= res!1057413 lt!895578)))

(declare-fun b!2500604 () Bool)

(declare-fun e!1586090 () Bool)

(assert (=> b!2500604 (= e!1586087 e!1586090)))

(declare-fun res!1057415 () Bool)

(assert (=> b!2500604 (=> (not res!1057415) (not e!1586090))))

(assert (=> b!2500604 (= res!1057415 (not lt!895578))))

(declare-fun b!2500605 () Bool)

(declare-fun e!1586088 () Bool)

(assert (=> b!2500605 (= e!1586088 e!1586091)))

(declare-fun c!397858 () Bool)

(assert (=> b!2500605 (= c!397858 ((_ is EmptyLang!7407) lt!895551))))

(declare-fun b!2500606 () Bool)

(declare-fun res!1057410 () Bool)

(assert (=> b!2500606 (=> (not res!1057410) (not e!1586089))))

(declare-fun call!154425 () Bool)

(assert (=> b!2500606 (= res!1057410 (not call!154425))))

(declare-fun b!2500607 () Bool)

(assert (=> b!2500607 (= e!1586088 (= lt!895578 call!154425))))

(declare-fun b!2500608 () Bool)

(assert (=> b!2500608 (= e!1586090 e!1586092)))

(declare-fun res!1057417 () Bool)

(assert (=> b!2500608 (=> res!1057417 e!1586092)))

(assert (=> b!2500608 (= res!1057417 call!154425)))

(declare-fun b!2500609 () Bool)

(assert (=> b!2500609 (= e!1586093 (nullable!2324 lt!895551))))

(declare-fun bm!154420 () Bool)

(assert (=> bm!154420 (= call!154425 (isEmpty!16831 tl!4068))))

(declare-fun d!715379 () Bool)

(assert (=> d!715379 e!1586088))

(declare-fun c!397857 () Bool)

(assert (=> d!715379 (= c!397857 ((_ is EmptyExpr!7407) lt!895551))))

(assert (=> d!715379 (= lt!895578 e!1586093)))

(declare-fun c!397859 () Bool)

(assert (=> d!715379 (= c!397859 (isEmpty!16831 tl!4068))))

(assert (=> d!715379 (validRegex!3033 lt!895551)))

(assert (=> d!715379 (= (matchR!3410 lt!895551 tl!4068) lt!895578)))

(assert (= (and d!715379 c!397859) b!2500609))

(assert (= (and d!715379 (not c!397859)) b!2500597))

(assert (= (and d!715379 c!397857) b!2500607))

(assert (= (and d!715379 (not c!397857)) b!2500605))

(assert (= (and b!2500605 c!397858) b!2500596))

(assert (= (and b!2500605 (not c!397858)) b!2500600))

(assert (= (and b!2500600 (not res!1057414)) b!2500603))

(assert (= (and b!2500603 res!1057413) b!2500606))

(assert (= (and b!2500606 res!1057410) b!2500598))

(assert (= (and b!2500598 res!1057416) b!2500601))

(assert (= (and b!2500603 (not res!1057411)) b!2500604))

(assert (= (and b!2500604 res!1057415) b!2500608))

(assert (= (and b!2500608 (not res!1057417)) b!2500602))

(assert (= (and b!2500602 (not res!1057412)) b!2500599))

(assert (= (or b!2500607 b!2500606 b!2500608) bm!154420))

(assert (=> bm!154420 m!2863167))

(assert (=> b!2500601 m!2863169))

(assert (=> b!2500598 m!2863171))

(assert (=> b!2500598 m!2863171))

(assert (=> b!2500598 m!2863173))

(assert (=> b!2500602 m!2863171))

(assert (=> b!2500602 m!2863171))

(assert (=> b!2500602 m!2863173))

(assert (=> b!2500599 m!2863169))

(assert (=> d!715379 m!2863167))

(declare-fun m!2863265 () Bool)

(assert (=> d!715379 m!2863265))

(assert (=> b!2500597 m!2863169))

(assert (=> b!2500597 m!2863169))

(declare-fun m!2863267 () Bool)

(assert (=> b!2500597 m!2863267))

(assert (=> b!2500597 m!2863171))

(assert (=> b!2500597 m!2863267))

(assert (=> b!2500597 m!2863171))

(declare-fun m!2863269 () Bool)

(assert (=> b!2500597 m!2863269))

(declare-fun m!2863271 () Bool)

(assert (=> b!2500609 m!2863271))

(assert (=> b!2500348 d!715379))

(declare-fun d!715381 () Bool)

(declare-fun e!1586115 () Bool)

(assert (=> d!715381 e!1586115))

(declare-fun res!1057431 () Bool)

(assert (=> d!715381 (=> res!1057431 e!1586115)))

(assert (=> d!715381 (= res!1057431 (matchR!3410 lt!895549 tl!4068))))

(declare-fun lt!895584 () Unit!43071)

(declare-fun choose!14765 (Regex!7407 Regex!7407 List!29472) Unit!43071)

(assert (=> d!715381 (= lt!895584 (choose!14765 lt!895549 lt!895548 tl!4068))))

(declare-fun e!1586116 () Bool)

(assert (=> d!715381 e!1586116))

(declare-fun res!1057430 () Bool)

(assert (=> d!715381 (=> (not res!1057430) (not e!1586116))))

(assert (=> d!715381 (= res!1057430 (validRegex!3033 lt!895549))))

(assert (=> d!715381 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!102 lt!895549 lt!895548 tl!4068) lt!895584)))

(declare-fun b!2500648 () Bool)

(assert (=> b!2500648 (= e!1586116 (validRegex!3033 lt!895548))))

(declare-fun b!2500649 () Bool)

(assert (=> b!2500649 (= e!1586115 (matchR!3410 lt!895548 tl!4068))))

(assert (= (and d!715381 res!1057430) b!2500648))

(assert (= (and d!715381 (not res!1057431)) b!2500649))

(assert (=> d!715381 m!2863143))

(declare-fun m!2863307 () Bool)

(assert (=> d!715381 m!2863307))

(declare-fun m!2863309 () Bool)

(assert (=> d!715381 m!2863309))

(assert (=> b!2500648 m!2863175))

(assert (=> b!2500649 m!2863131))

(assert (=> b!2500348 d!715381))

(declare-fun bm!154431 () Bool)

(declare-fun call!154436 () Bool)

(declare-fun c!397877 () Bool)

(assert (=> bm!154431 (= call!154436 (validRegex!3033 (ite c!397877 (regOne!15327 (regOne!15326 r!27340)) (regTwo!15326 (regOne!15326 r!27340)))))))

(declare-fun b!2500664 () Bool)

(declare-fun e!1586124 () Bool)

(declare-fun e!1586128 () Bool)

(assert (=> b!2500664 (= e!1586124 e!1586128)))

(declare-fun res!1057442 () Bool)

(assert (=> b!2500664 (= res!1057442 (not (nullable!2324 (reg!7736 (regOne!15326 r!27340)))))))

(assert (=> b!2500664 (=> (not res!1057442) (not e!1586128))))

(declare-fun d!715389 () Bool)

(declare-fun res!1057443 () Bool)

(declare-fun e!1586129 () Bool)

(assert (=> d!715389 (=> res!1057443 e!1586129)))

(assert (=> d!715389 (= res!1057443 ((_ is ElementMatch!7407) (regOne!15326 r!27340)))))

(assert (=> d!715389 (= (validRegex!3033 (regOne!15326 r!27340)) e!1586129)))

(declare-fun b!2500665 () Bool)

(declare-fun e!1586125 () Bool)

(declare-fun call!154437 () Bool)

(assert (=> b!2500665 (= e!1586125 call!154437)))

(declare-fun b!2500666 () Bool)

(declare-fun e!1586126 () Bool)

(declare-fun e!1586127 () Bool)

(assert (=> b!2500666 (= e!1586126 e!1586127)))

(declare-fun res!1057440 () Bool)

(assert (=> b!2500666 (=> (not res!1057440) (not e!1586127))))

(assert (=> b!2500666 (= res!1057440 call!154437)))

(declare-fun b!2500667 () Bool)

(declare-fun res!1057444 () Bool)

(assert (=> b!2500667 (=> (not res!1057444) (not e!1586125))))

(assert (=> b!2500667 (= res!1057444 call!154436)))

(declare-fun e!1586130 () Bool)

(assert (=> b!2500667 (= e!1586130 e!1586125)))

(declare-fun c!397876 () Bool)

(declare-fun call!154438 () Bool)

(declare-fun bm!154432 () Bool)

(assert (=> bm!154432 (= call!154438 (validRegex!3033 (ite c!397876 (reg!7736 (regOne!15326 r!27340)) (ite c!397877 (regTwo!15327 (regOne!15326 r!27340)) (regOne!15326 (regOne!15326 r!27340))))))))

(declare-fun b!2500668 () Bool)

(assert (=> b!2500668 (= e!1586127 call!154436)))

(declare-fun b!2500669 () Bool)

(assert (=> b!2500669 (= e!1586124 e!1586130)))

(assert (=> b!2500669 (= c!397877 ((_ is Union!7407) (regOne!15326 r!27340)))))

(declare-fun bm!154433 () Bool)

(assert (=> bm!154433 (= call!154437 call!154438)))

(declare-fun b!2500670 () Bool)

(declare-fun res!1057441 () Bool)

(assert (=> b!2500670 (=> res!1057441 e!1586126)))

(assert (=> b!2500670 (= res!1057441 (not ((_ is Concat!12103) (regOne!15326 r!27340))))))

(assert (=> b!2500670 (= e!1586130 e!1586126)))

(declare-fun b!2500671 () Bool)

(assert (=> b!2500671 (= e!1586129 e!1586124)))

(assert (=> b!2500671 (= c!397876 ((_ is Star!7407) (regOne!15326 r!27340)))))

(declare-fun b!2500672 () Bool)

(assert (=> b!2500672 (= e!1586128 call!154438)))

(assert (= (and d!715389 (not res!1057443)) b!2500671))

(assert (= (and b!2500671 c!397876) b!2500664))

(assert (= (and b!2500671 (not c!397876)) b!2500669))

(assert (= (and b!2500664 res!1057442) b!2500672))

(assert (= (and b!2500669 c!397877) b!2500667))

(assert (= (and b!2500669 (not c!397877)) b!2500670))

(assert (= (and b!2500667 res!1057444) b!2500665))

(assert (= (and b!2500670 (not res!1057441)) b!2500666))

(assert (= (and b!2500666 res!1057440) b!2500668))

(assert (= (or b!2500667 b!2500668) bm!154431))

(assert (= (or b!2500665 b!2500666) bm!154433))

(assert (= (or b!2500672 bm!154433) bm!154432))

(declare-fun m!2863315 () Bool)

(assert (=> bm!154431 m!2863315))

(declare-fun m!2863319 () Bool)

(assert (=> b!2500664 m!2863319))

(declare-fun m!2863321 () Bool)

(assert (=> bm!154432 m!2863321))

(assert (=> b!2500348 d!715389))

(declare-fun d!715391 () Bool)

(declare-fun lt!895586 () Regex!7407)

(assert (=> d!715391 (validRegex!3033 lt!895586)))

(declare-fun e!1586131 () Regex!7407)

(assert (=> d!715391 (= lt!895586 e!1586131)))

(declare-fun c!397878 () Bool)

(assert (=> d!715391 (= c!397878 ((_ is Cons!29372) tl!4068))))

(assert (=> d!715391 (validRegex!3033 lt!895551)))

(assert (=> d!715391 (= (derivative!102 lt!895551 tl!4068) lt!895586)))

(declare-fun b!2500673 () Bool)

(assert (=> b!2500673 (= e!1586131 (derivative!102 (derivativeStep!1976 lt!895551 (h!34792 tl!4068)) (t!211171 tl!4068)))))

(declare-fun b!2500674 () Bool)

(assert (=> b!2500674 (= e!1586131 lt!895551)))

(assert (= (and d!715391 c!397878) b!2500673))

(assert (= (and d!715391 (not c!397878)) b!2500674))

(declare-fun m!2863323 () Bool)

(assert (=> d!715391 m!2863323))

(assert (=> d!715391 m!2863265))

(declare-fun m!2863325 () Bool)

(assert (=> b!2500673 m!2863325))

(assert (=> b!2500673 m!2863325))

(declare-fun m!2863327 () Bool)

(assert (=> b!2500673 m!2863327))

(assert (=> b!2500348 d!715391))

(declare-fun b!2500675 () Bool)

(declare-fun e!1586133 () Regex!7407)

(assert (=> b!2500675 (= e!1586133 EmptyLang!7407)))

(declare-fun b!2500676 () Bool)

(declare-fun e!1586135 () Regex!7407)

(declare-fun call!154439 () Regex!7407)

(assert (=> b!2500676 (= e!1586135 (Union!7407 (Concat!12103 call!154439 (regTwo!15326 (regTwo!15326 r!27340))) EmptyLang!7407))))

(declare-fun b!2500677 () Bool)

(declare-fun e!1586136 () Regex!7407)

(declare-fun call!154440 () Regex!7407)

(assert (=> b!2500677 (= e!1586136 (Concat!12103 call!154440 (regTwo!15326 r!27340)))))

(declare-fun b!2500678 () Bool)

(declare-fun c!397880 () Bool)

(assert (=> b!2500678 (= c!397880 (nullable!2324 (regOne!15326 (regTwo!15326 r!27340))))))

(assert (=> b!2500678 (= e!1586136 e!1586135)))

(declare-fun b!2500679 () Bool)

(declare-fun e!1586132 () Regex!7407)

(assert (=> b!2500679 (= e!1586133 e!1586132)))

(declare-fun c!397879 () Bool)

(assert (=> b!2500679 (= c!397879 ((_ is ElementMatch!7407) (regTwo!15326 r!27340)))))

(declare-fun b!2500680 () Bool)

(declare-fun e!1586134 () Regex!7407)

(assert (=> b!2500680 (= e!1586134 e!1586136)))

(declare-fun c!397883 () Bool)

(assert (=> b!2500680 (= c!397883 ((_ is Star!7407) (regTwo!15326 r!27340)))))

(declare-fun bm!154434 () Bool)

(declare-fun call!154442 () Regex!7407)

(declare-fun c!397882 () Bool)

(assert (=> bm!154434 (= call!154442 (derivativeStep!1976 (ite c!397882 (regTwo!15327 (regTwo!15326 r!27340)) (ite c!397883 (reg!7736 (regTwo!15326 r!27340)) (regOne!15326 (regTwo!15326 r!27340)))) c!14016))))

(declare-fun b!2500681 () Bool)

(declare-fun call!154441 () Regex!7407)

(assert (=> b!2500681 (= e!1586134 (Union!7407 call!154441 call!154442))))

(declare-fun bm!154436 () Bool)

(assert (=> bm!154436 (= call!154441 (derivativeStep!1976 (ite c!397882 (regOne!15327 (regTwo!15326 r!27340)) (regTwo!15326 (regTwo!15326 r!27340))) c!14016))))

(declare-fun b!2500682 () Bool)

(assert (=> b!2500682 (= e!1586135 (Union!7407 (Concat!12103 call!154439 (regTwo!15326 (regTwo!15326 r!27340))) call!154441))))

(declare-fun b!2500683 () Bool)

(assert (=> b!2500683 (= c!397882 ((_ is Union!7407) (regTwo!15326 r!27340)))))

(assert (=> b!2500683 (= e!1586132 e!1586134)))

(declare-fun b!2500684 () Bool)

(assert (=> b!2500684 (= e!1586132 (ite (= c!14016 (c!397787 (regTwo!15326 r!27340))) EmptyExpr!7407 EmptyLang!7407))))

(declare-fun bm!154437 () Bool)

(assert (=> bm!154437 (= call!154440 call!154442)))

(declare-fun bm!154435 () Bool)

(assert (=> bm!154435 (= call!154439 call!154440)))

(declare-fun d!715395 () Bool)

(declare-fun lt!895587 () Regex!7407)

(assert (=> d!715395 (validRegex!3033 lt!895587)))

(assert (=> d!715395 (= lt!895587 e!1586133)))

(declare-fun c!397881 () Bool)

(assert (=> d!715395 (= c!397881 (or ((_ is EmptyExpr!7407) (regTwo!15326 r!27340)) ((_ is EmptyLang!7407) (regTwo!15326 r!27340))))))

(assert (=> d!715395 (validRegex!3033 (regTwo!15326 r!27340))))

(assert (=> d!715395 (= (derivativeStep!1976 (regTwo!15326 r!27340) c!14016) lt!895587)))

(assert (= (and d!715395 c!397881) b!2500675))

(assert (= (and d!715395 (not c!397881)) b!2500679))

(assert (= (and b!2500679 c!397879) b!2500684))

(assert (= (and b!2500679 (not c!397879)) b!2500683))

(assert (= (and b!2500683 c!397882) b!2500681))

(assert (= (and b!2500683 (not c!397882)) b!2500680))

(assert (= (and b!2500680 c!397883) b!2500677))

(assert (= (and b!2500680 (not c!397883)) b!2500678))

(assert (= (and b!2500678 c!397880) b!2500682))

(assert (= (and b!2500678 (not c!397880)) b!2500676))

(assert (= (or b!2500682 b!2500676) bm!154435))

(assert (= (or b!2500677 bm!154435) bm!154437))

(assert (= (or b!2500681 bm!154437) bm!154434))

(assert (= (or b!2500681 b!2500682) bm!154436))

(declare-fun m!2863339 () Bool)

(assert (=> b!2500678 m!2863339))

(declare-fun m!2863341 () Bool)

(assert (=> bm!154434 m!2863341))

(declare-fun m!2863343 () Bool)

(assert (=> bm!154436 m!2863343))

(declare-fun m!2863345 () Bool)

(assert (=> d!715395 m!2863345))

(declare-fun m!2863347 () Bool)

(assert (=> d!715395 m!2863347))

(assert (=> b!2500348 d!715395))

(declare-fun b!2500697 () Bool)

(declare-fun e!1586144 () Regex!7407)

(assert (=> b!2500697 (= e!1586144 EmptyLang!7407)))

(declare-fun b!2500698 () Bool)

(declare-fun e!1586146 () Regex!7407)

(declare-fun call!154447 () Regex!7407)

(assert (=> b!2500698 (= e!1586146 (Union!7407 (Concat!12103 call!154447 (regTwo!15326 (regOne!15326 r!27340))) EmptyLang!7407))))

(declare-fun b!2500699 () Bool)

(declare-fun e!1586147 () Regex!7407)

(declare-fun call!154448 () Regex!7407)

(assert (=> b!2500699 (= e!1586147 (Concat!12103 call!154448 (regOne!15326 r!27340)))))

(declare-fun b!2500700 () Bool)

(declare-fun c!397891 () Bool)

(assert (=> b!2500700 (= c!397891 (nullable!2324 (regOne!15326 (regOne!15326 r!27340))))))

(assert (=> b!2500700 (= e!1586147 e!1586146)))

(declare-fun b!2500701 () Bool)

(declare-fun e!1586143 () Regex!7407)

(assert (=> b!2500701 (= e!1586144 e!1586143)))

(declare-fun c!397890 () Bool)

(assert (=> b!2500701 (= c!397890 ((_ is ElementMatch!7407) (regOne!15326 r!27340)))))

(declare-fun b!2500702 () Bool)

(declare-fun e!1586145 () Regex!7407)

(assert (=> b!2500702 (= e!1586145 e!1586147)))

(declare-fun c!397894 () Bool)

(assert (=> b!2500702 (= c!397894 ((_ is Star!7407) (regOne!15326 r!27340)))))

(declare-fun c!397893 () Bool)

(declare-fun bm!154442 () Bool)

(declare-fun call!154450 () Regex!7407)

(assert (=> bm!154442 (= call!154450 (derivativeStep!1976 (ite c!397893 (regTwo!15327 (regOne!15326 r!27340)) (ite c!397894 (reg!7736 (regOne!15326 r!27340)) (regOne!15326 (regOne!15326 r!27340)))) c!14016))))

(declare-fun b!2500703 () Bool)

(declare-fun call!154449 () Regex!7407)

(assert (=> b!2500703 (= e!1586145 (Union!7407 call!154449 call!154450))))

(declare-fun bm!154444 () Bool)

(assert (=> bm!154444 (= call!154449 (derivativeStep!1976 (ite c!397893 (regOne!15327 (regOne!15326 r!27340)) (regTwo!15326 (regOne!15326 r!27340))) c!14016))))

(declare-fun b!2500704 () Bool)

(assert (=> b!2500704 (= e!1586146 (Union!7407 (Concat!12103 call!154447 (regTwo!15326 (regOne!15326 r!27340))) call!154449))))

(declare-fun b!2500705 () Bool)

(assert (=> b!2500705 (= c!397893 ((_ is Union!7407) (regOne!15326 r!27340)))))

(assert (=> b!2500705 (= e!1586143 e!1586145)))

(declare-fun b!2500706 () Bool)

(assert (=> b!2500706 (= e!1586143 (ite (= c!14016 (c!397787 (regOne!15326 r!27340))) EmptyExpr!7407 EmptyLang!7407))))

(declare-fun bm!154445 () Bool)

(assert (=> bm!154445 (= call!154448 call!154450)))

(declare-fun bm!154443 () Bool)

(assert (=> bm!154443 (= call!154447 call!154448)))

(declare-fun d!715401 () Bool)

(declare-fun lt!895590 () Regex!7407)

(assert (=> d!715401 (validRegex!3033 lt!895590)))

(assert (=> d!715401 (= lt!895590 e!1586144)))

(declare-fun c!397892 () Bool)

(assert (=> d!715401 (= c!397892 (or ((_ is EmptyExpr!7407) (regOne!15326 r!27340)) ((_ is EmptyLang!7407) (regOne!15326 r!27340))))))

(assert (=> d!715401 (validRegex!3033 (regOne!15326 r!27340))))

(assert (=> d!715401 (= (derivativeStep!1976 (regOne!15326 r!27340) c!14016) lt!895590)))

(assert (= (and d!715401 c!397892) b!2500697))

(assert (= (and d!715401 (not c!397892)) b!2500701))

(assert (= (and b!2500701 c!397890) b!2500706))

(assert (= (and b!2500701 (not c!397890)) b!2500705))

(assert (= (and b!2500705 c!397893) b!2500703))

(assert (= (and b!2500705 (not c!397893)) b!2500702))

(assert (= (and b!2500702 c!397894) b!2500699))

(assert (= (and b!2500702 (not c!397894)) b!2500700))

(assert (= (and b!2500700 c!397891) b!2500704))

(assert (= (and b!2500700 (not c!397891)) b!2500698))

(assert (= (or b!2500704 b!2500698) bm!154443))

(assert (= (or b!2500699 bm!154443) bm!154445))

(assert (= (or b!2500703 bm!154445) bm!154442))

(assert (= (or b!2500703 b!2500704) bm!154444))

(declare-fun m!2863357 () Bool)

(assert (=> b!2500700 m!2863357))

(declare-fun m!2863359 () Bool)

(assert (=> bm!154442 m!2863359))

(declare-fun m!2863361 () Bool)

(assert (=> bm!154444 m!2863361))

(declare-fun m!2863363 () Bool)

(assert (=> d!715401 m!2863363))

(assert (=> d!715401 m!2863147))

(assert (=> b!2500348 d!715401))

(declare-fun b!2500715 () Bool)

(declare-fun e!1586154 () Bool)

(declare-fun lt!895591 () Bool)

(assert (=> b!2500715 (= e!1586154 (not lt!895591))))

(declare-fun b!2500716 () Bool)

(declare-fun e!1586156 () Bool)

(assert (=> b!2500716 (= e!1586156 (matchR!3410 (derivativeStep!1976 lt!895549 (head!5695 tl!4068)) (tail!3972 tl!4068)))))

(declare-fun b!2500719 () Bool)

(declare-fun res!1057451 () Bool)

(declare-fun e!1586152 () Bool)

(assert (=> b!2500719 (=> (not res!1057451) (not e!1586152))))

(assert (=> b!2500719 (= res!1057451 (isEmpty!16831 (tail!3972 tl!4068)))))

(declare-fun b!2500720 () Bool)

(declare-fun e!1586155 () Bool)

(assert (=> b!2500720 (= e!1586155 (not (= (head!5695 tl!4068) (c!397787 lt!895549))))))

(declare-fun b!2500721 () Bool)

(declare-fun res!1057449 () Bool)

(declare-fun e!1586150 () Bool)

(assert (=> b!2500721 (=> res!1057449 e!1586150)))

(assert (=> b!2500721 (= res!1057449 (not ((_ is ElementMatch!7407) lt!895549)))))

(assert (=> b!2500721 (= e!1586154 e!1586150)))

(declare-fun b!2500722 () Bool)

(assert (=> b!2500722 (= e!1586152 (= (head!5695 tl!4068) (c!397787 lt!895549)))))

(declare-fun b!2500723 () Bool)

(declare-fun res!1057447 () Bool)

(assert (=> b!2500723 (=> res!1057447 e!1586155)))

(assert (=> b!2500723 (= res!1057447 (not (isEmpty!16831 (tail!3972 tl!4068))))))

(declare-fun b!2500724 () Bool)

(declare-fun res!1057446 () Bool)

(assert (=> b!2500724 (=> res!1057446 e!1586150)))

(assert (=> b!2500724 (= res!1057446 e!1586152)))

(declare-fun res!1057448 () Bool)

(assert (=> b!2500724 (=> (not res!1057448) (not e!1586152))))

(assert (=> b!2500724 (= res!1057448 lt!895591)))

(declare-fun b!2500725 () Bool)

(declare-fun e!1586153 () Bool)

(assert (=> b!2500725 (= e!1586150 e!1586153)))

(declare-fun res!1057450 () Bool)

(assert (=> b!2500725 (=> (not res!1057450) (not e!1586153))))

(assert (=> b!2500725 (= res!1057450 (not lt!895591))))

(declare-fun b!2500726 () Bool)

(declare-fun e!1586151 () Bool)

(assert (=> b!2500726 (= e!1586151 e!1586154)))

(declare-fun c!397896 () Bool)

(assert (=> b!2500726 (= c!397896 ((_ is EmptyLang!7407) lt!895549))))

(declare-fun b!2500727 () Bool)

(declare-fun res!1057445 () Bool)

(assert (=> b!2500727 (=> (not res!1057445) (not e!1586152))))

(declare-fun call!154451 () Bool)

(assert (=> b!2500727 (= res!1057445 (not call!154451))))

(declare-fun b!2500728 () Bool)

(assert (=> b!2500728 (= e!1586151 (= lt!895591 call!154451))))

(declare-fun b!2500729 () Bool)

(assert (=> b!2500729 (= e!1586153 e!1586155)))

(declare-fun res!1057452 () Bool)

(assert (=> b!2500729 (=> res!1057452 e!1586155)))

(assert (=> b!2500729 (= res!1057452 call!154451)))

(declare-fun b!2500730 () Bool)

(assert (=> b!2500730 (= e!1586156 (nullable!2324 lt!895549))))

(declare-fun bm!154446 () Bool)

(assert (=> bm!154446 (= call!154451 (isEmpty!16831 tl!4068))))

(declare-fun d!715405 () Bool)

(assert (=> d!715405 e!1586151))

(declare-fun c!397895 () Bool)

(assert (=> d!715405 (= c!397895 ((_ is EmptyExpr!7407) lt!895549))))

(assert (=> d!715405 (= lt!895591 e!1586156)))

(declare-fun c!397897 () Bool)

(assert (=> d!715405 (= c!397897 (isEmpty!16831 tl!4068))))

(assert (=> d!715405 (validRegex!3033 lt!895549)))

(assert (=> d!715405 (= (matchR!3410 lt!895549 tl!4068) lt!895591)))

(assert (= (and d!715405 c!397897) b!2500730))

(assert (= (and d!715405 (not c!397897)) b!2500716))

(assert (= (and d!715405 c!397895) b!2500728))

(assert (= (and d!715405 (not c!397895)) b!2500726))

(assert (= (and b!2500726 c!397896) b!2500715))

(assert (= (and b!2500726 (not c!397896)) b!2500721))

(assert (= (and b!2500721 (not res!1057449)) b!2500724))

(assert (= (and b!2500724 res!1057448) b!2500727))

(assert (= (and b!2500727 res!1057445) b!2500719))

(assert (= (and b!2500719 res!1057451) b!2500722))

(assert (= (and b!2500724 (not res!1057446)) b!2500725))

(assert (= (and b!2500725 res!1057450) b!2500729))

(assert (= (and b!2500729 (not res!1057452)) b!2500723))

(assert (= (and b!2500723 (not res!1057447)) b!2500720))

(assert (= (or b!2500728 b!2500727 b!2500729) bm!154446))

(assert (=> bm!154446 m!2863167))

(assert (=> b!2500722 m!2863169))

(assert (=> b!2500719 m!2863171))

(assert (=> b!2500719 m!2863171))

(assert (=> b!2500719 m!2863173))

(assert (=> b!2500723 m!2863171))

(assert (=> b!2500723 m!2863171))

(assert (=> b!2500723 m!2863173))

(assert (=> b!2500720 m!2863169))

(assert (=> d!715405 m!2863167))

(assert (=> d!715405 m!2863309))

(assert (=> b!2500716 m!2863169))

(assert (=> b!2500716 m!2863169))

(declare-fun m!2863365 () Bool)

(assert (=> b!2500716 m!2863365))

(assert (=> b!2500716 m!2863171))

(assert (=> b!2500716 m!2863365))

(assert (=> b!2500716 m!2863171))

(declare-fun m!2863367 () Bool)

(assert (=> b!2500716 m!2863367))

(declare-fun m!2863369 () Bool)

(assert (=> b!2500730 m!2863369))

(assert (=> b!2500348 d!715405))

(declare-fun d!715407 () Bool)

(assert (=> d!715407 (= (matchR!3410 lt!895551 tl!4068) (matchR!3410 (derivative!102 lt!895551 tl!4068) Nil!29372))))

(declare-fun lt!895594 () Unit!43071)

(declare-fun choose!14766 (Regex!7407 List!29472) Unit!43071)

(assert (=> d!715407 (= lt!895594 (choose!14766 lt!895551 tl!4068))))

(assert (=> d!715407 (validRegex!3033 lt!895551)))

(assert (=> d!715407 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!56 lt!895551 tl!4068) lt!895594)))

(declare-fun bs!468565 () Bool)

(assert (= bs!468565 d!715407))

(assert (=> bs!468565 m!2863151))

(assert (=> bs!468565 m!2863265))

(assert (=> bs!468565 m!2863151))

(assert (=> bs!468565 m!2863153))

(declare-fun m!2863371 () Bool)

(assert (=> bs!468565 m!2863371))

(assert (=> bs!468565 m!2863139))

(assert (=> b!2500348 d!715407))

(declare-fun b!2500768 () Bool)

(declare-fun e!1586167 () Bool)

(declare-fun tp!800665 () Bool)

(assert (=> b!2500768 (= e!1586167 tp!800665)))

(assert (=> b!2500350 (= tp!800611 e!1586167)))

(declare-fun b!2500767 () Bool)

(declare-fun tp!800666 () Bool)

(declare-fun tp!800667 () Bool)

(assert (=> b!2500767 (= e!1586167 (and tp!800666 tp!800667))))

(declare-fun b!2500769 () Bool)

(declare-fun tp!800663 () Bool)

(declare-fun tp!800664 () Bool)

(assert (=> b!2500769 (= e!1586167 (and tp!800663 tp!800664))))

(declare-fun b!2500766 () Bool)

(assert (=> b!2500766 (= e!1586167 tp_is_empty!12669)))

(assert (= (and b!2500350 ((_ is ElementMatch!7407) (regOne!15327 r!27340))) b!2500766))

(assert (= (and b!2500350 ((_ is Concat!12103) (regOne!15327 r!27340))) b!2500767))

(assert (= (and b!2500350 ((_ is Star!7407) (regOne!15327 r!27340))) b!2500768))

(assert (= (and b!2500350 ((_ is Union!7407) (regOne!15327 r!27340))) b!2500769))

(declare-fun b!2500772 () Bool)

(declare-fun e!1586168 () Bool)

(declare-fun tp!800670 () Bool)

(assert (=> b!2500772 (= e!1586168 tp!800670)))

(assert (=> b!2500350 (= tp!800614 e!1586168)))

(declare-fun b!2500771 () Bool)

(declare-fun tp!800671 () Bool)

(declare-fun tp!800672 () Bool)

(assert (=> b!2500771 (= e!1586168 (and tp!800671 tp!800672))))

(declare-fun b!2500773 () Bool)

(declare-fun tp!800668 () Bool)

(declare-fun tp!800669 () Bool)

(assert (=> b!2500773 (= e!1586168 (and tp!800668 tp!800669))))

(declare-fun b!2500770 () Bool)

(assert (=> b!2500770 (= e!1586168 tp_is_empty!12669)))

(assert (= (and b!2500350 ((_ is ElementMatch!7407) (regTwo!15327 r!27340))) b!2500770))

(assert (= (and b!2500350 ((_ is Concat!12103) (regTwo!15327 r!27340))) b!2500771))

(assert (= (and b!2500350 ((_ is Star!7407) (regTwo!15327 r!27340))) b!2500772))

(assert (= (and b!2500350 ((_ is Union!7407) (regTwo!15327 r!27340))) b!2500773))

(declare-fun b!2500778 () Bool)

(declare-fun e!1586171 () Bool)

(declare-fun tp!800675 () Bool)

(assert (=> b!2500778 (= e!1586171 (and tp_is_empty!12669 tp!800675))))

(assert (=> b!2500344 (= tp!800612 e!1586171)))

(assert (= (and b!2500344 ((_ is Cons!29372) (t!211171 tl!4068))) b!2500778))

(declare-fun b!2500781 () Bool)

(declare-fun e!1586172 () Bool)

(declare-fun tp!800678 () Bool)

(assert (=> b!2500781 (= e!1586172 tp!800678)))

(assert (=> b!2500349 (= tp!800610 e!1586172)))

(declare-fun b!2500780 () Bool)

(declare-fun tp!800679 () Bool)

(declare-fun tp!800680 () Bool)

(assert (=> b!2500780 (= e!1586172 (and tp!800679 tp!800680))))

(declare-fun b!2500782 () Bool)

(declare-fun tp!800676 () Bool)

(declare-fun tp!800677 () Bool)

(assert (=> b!2500782 (= e!1586172 (and tp!800676 tp!800677))))

(declare-fun b!2500779 () Bool)

(assert (=> b!2500779 (= e!1586172 tp_is_empty!12669)))

(assert (= (and b!2500349 ((_ is ElementMatch!7407) (regOne!15326 r!27340))) b!2500779))

(assert (= (and b!2500349 ((_ is Concat!12103) (regOne!15326 r!27340))) b!2500780))

(assert (= (and b!2500349 ((_ is Star!7407) (regOne!15326 r!27340))) b!2500781))

(assert (= (and b!2500349 ((_ is Union!7407) (regOne!15326 r!27340))) b!2500782))

(declare-fun b!2500785 () Bool)

(declare-fun e!1586173 () Bool)

(declare-fun tp!800683 () Bool)

(assert (=> b!2500785 (= e!1586173 tp!800683)))

(assert (=> b!2500349 (= tp!800609 e!1586173)))

(declare-fun b!2500784 () Bool)

(declare-fun tp!800684 () Bool)

(declare-fun tp!800685 () Bool)

(assert (=> b!2500784 (= e!1586173 (and tp!800684 tp!800685))))

(declare-fun b!2500786 () Bool)

(declare-fun tp!800681 () Bool)

(declare-fun tp!800682 () Bool)

(assert (=> b!2500786 (= e!1586173 (and tp!800681 tp!800682))))

(declare-fun b!2500783 () Bool)

(assert (=> b!2500783 (= e!1586173 tp_is_empty!12669)))

(assert (= (and b!2500349 ((_ is ElementMatch!7407) (regTwo!15326 r!27340))) b!2500783))

(assert (= (and b!2500349 ((_ is Concat!12103) (regTwo!15326 r!27340))) b!2500784))

(assert (= (and b!2500349 ((_ is Star!7407) (regTwo!15326 r!27340))) b!2500785))

(assert (= (and b!2500349 ((_ is Union!7407) (regTwo!15326 r!27340))) b!2500786))

(declare-fun b!2500789 () Bool)

(declare-fun e!1586174 () Bool)

(declare-fun tp!800688 () Bool)

(assert (=> b!2500789 (= e!1586174 tp!800688)))

(assert (=> b!2500343 (= tp!800613 e!1586174)))

(declare-fun b!2500788 () Bool)

(declare-fun tp!800689 () Bool)

(declare-fun tp!800690 () Bool)

(assert (=> b!2500788 (= e!1586174 (and tp!800689 tp!800690))))

(declare-fun b!2500790 () Bool)

(declare-fun tp!800686 () Bool)

(declare-fun tp!800687 () Bool)

(assert (=> b!2500790 (= e!1586174 (and tp!800686 tp!800687))))

(declare-fun b!2500787 () Bool)

(assert (=> b!2500787 (= e!1586174 tp_is_empty!12669)))

(assert (= (and b!2500343 ((_ is ElementMatch!7407) (reg!7736 r!27340))) b!2500787))

(assert (= (and b!2500343 ((_ is Concat!12103) (reg!7736 r!27340))) b!2500788))

(assert (= (and b!2500343 ((_ is Star!7407) (reg!7736 r!27340))) b!2500789))

(assert (= (and b!2500343 ((_ is Union!7407) (reg!7736 r!27340))) b!2500790))

(check-sat (not b!2500785) (not d!715361) (not bm!154432) (not bm!154434) (not b!2500722) (not d!715401) (not b!2500664) (not b!2500602) tp_is_empty!12669 (not b!2500678) (not bm!154393) (not b!2500716) (not b!2500789) (not b!2500413) (not bm!154444) (not bm!154420) (not b!2500788) (not d!715407) (not b!2500700) (not b!2500723) (not d!715355) (not b!2500601) (not d!715363) (not bm!154415) (not b!2500587) (not b!2500768) (not b!2500767) (not b!2500719) (not bm!154436) (not b!2500649) (not bm!154382) (not d!715395) (not b!2500720) (not b!2500409) (not b!2500584) (not b!2500769) (not bm!154392) (not d!715381) (not b!2500778) (not d!715391) (not b!2500772) (not b!2500781) (not bm!154446) (not b!2500786) (not b!2500598) (not b!2500583) (not b!2500411) (not d!715369) (not bm!154442) (not bm!154407) (not b!2500414) (not b!2500780) (not b!2500410) (not b!2500609) (not b!2500771) (not bm!154409) (not d!715405) (not b!2500557) (not d!715379) (not b!2500421) (not bm!154431) (not b!2500673) (not b!2500509) (not b!2500730) (not b!2500595) (not b!2500482) (not b!2500597) (not b!2500773) (not b!2500585) (not b!2500648) (not b!2500588) (not b!2500784) (not b!2500782) (not b!2500599) (not b!2500790) (not d!715351) (not d!715377))
(check-sat)
