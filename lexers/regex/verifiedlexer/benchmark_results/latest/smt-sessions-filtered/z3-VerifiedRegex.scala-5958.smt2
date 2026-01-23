; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291780 () Bool)

(assert start!291780)

(declare-fun b!3054165 () Bool)

(declare-fun res!1254468 () Bool)

(declare-fun e!1913099 () Bool)

(assert (=> b!3054165 (=> res!1254468 e!1913099)))

(declare-datatypes ((C!19120 0))(
  ( (C!19121 (val!11596 Int)) )
))
(declare-datatypes ((List!35332 0))(
  ( (Nil!35208) (Cons!35208 (h!40628 C!19120) (t!234397 List!35332)) )
))
(declare-fun s!11993 () List!35332)

(declare-fun isEmpty!19523 (List!35332) Bool)

(assert (=> b!3054165 (= res!1254468 (isEmpty!19523 s!11993))))

(declare-fun b!3054166 () Bool)

(declare-fun e!1913097 () Bool)

(assert (=> b!3054166 (= e!1913099 e!1913097)))

(declare-fun res!1254465 () Bool)

(assert (=> b!3054166 (=> res!1254465 e!1913097)))

(declare-datatypes ((Regex!9467 0))(
  ( (ElementMatch!9467 (c!506353 C!19120)) (Concat!14788 (regOne!19446 Regex!9467) (regTwo!19446 Regex!9467)) (EmptyExpr!9467) (Star!9467 (reg!9796 Regex!9467)) (EmptyLang!9467) (Union!9467 (regOne!19447 Regex!9467) (regTwo!19447 Regex!9467)) )
))
(declare-fun lt!1048805 () Regex!9467)

(declare-fun isEmptyLang!518 (Regex!9467) Bool)

(assert (=> b!3054166 (= res!1254465 (not (isEmptyLang!518 lt!1048805)))))

(declare-fun lt!1048803 () Regex!9467)

(declare-fun r!17423 () Regex!9467)

(declare-fun simplify!422 (Regex!9467) Regex!9467)

(assert (=> b!3054166 (= lt!1048803 (simplify!422 (regTwo!19446 r!17423)))))

(assert (=> b!3054166 (= lt!1048805 (simplify!422 (regOne!19446 r!17423)))))

(declare-fun b!3054167 () Bool)

(declare-fun e!1913098 () Bool)

(declare-fun tp!966206 () Bool)

(assert (=> b!3054167 (= e!1913098 tp!966206)))

(declare-fun b!3054168 () Bool)

(declare-fun validRegex!4200 (Regex!9467) Bool)

(assert (=> b!3054168 (= e!1913097 (validRegex!4200 (regOne!19446 r!17423)))))

(declare-fun b!3054169 () Bool)

(declare-fun tp!966205 () Bool)

(declare-fun tp!966204 () Bool)

(assert (=> b!3054169 (= e!1913098 (and tp!966205 tp!966204))))

(declare-fun b!3054170 () Bool)

(declare-fun tp_is_empty!16497 () Bool)

(assert (=> b!3054170 (= e!1913098 tp_is_empty!16497)))

(declare-fun b!3054172 () Bool)

(declare-fun tp!966207 () Bool)

(declare-fun tp!966208 () Bool)

(assert (=> b!3054172 (= e!1913098 (and tp!966207 tp!966208))))

(declare-fun b!3054173 () Bool)

(declare-fun e!1913101 () Bool)

(assert (=> b!3054173 (= e!1913101 (not e!1913099))))

(declare-fun res!1254467 () Bool)

(assert (=> b!3054173 (=> res!1254467 e!1913099)))

(declare-fun lt!1048806 () Bool)

(get-info :version)

(assert (=> b!3054173 (= res!1254467 (or lt!1048806 (not ((_ is Concat!14788) r!17423))))))

(declare-fun matchRSpec!1604 (Regex!9467 List!35332) Bool)

(assert (=> b!3054173 (= lt!1048806 (matchRSpec!1604 r!17423 s!11993))))

(declare-fun matchR!4349 (Regex!9467 List!35332) Bool)

(assert (=> b!3054173 (= lt!1048806 (matchR!4349 r!17423 s!11993))))

(declare-datatypes ((Unit!49373 0))(
  ( (Unit!49374) )
))
(declare-fun lt!1048804 () Unit!49373)

(declare-fun mainMatchTheorem!1604 (Regex!9467 List!35332) Unit!49373)

(assert (=> b!3054173 (= lt!1048804 (mainMatchTheorem!1604 r!17423 s!11993))))

(declare-fun res!1254466 () Bool)

(assert (=> start!291780 (=> (not res!1254466) (not e!1913101))))

(assert (=> start!291780 (= res!1254466 (validRegex!4200 r!17423))))

(assert (=> start!291780 e!1913101))

(assert (=> start!291780 e!1913098))

(declare-fun e!1913100 () Bool)

(assert (=> start!291780 e!1913100))

(declare-fun b!3054171 () Bool)

(declare-fun tp!966209 () Bool)

(assert (=> b!3054171 (= e!1913100 (and tp_is_empty!16497 tp!966209))))

(assert (= (and start!291780 res!1254466) b!3054173))

(assert (= (and b!3054173 (not res!1254467)) b!3054165))

(assert (= (and b!3054165 (not res!1254468)) b!3054166))

(assert (= (and b!3054166 (not res!1254465)) b!3054168))

(assert (= (and start!291780 ((_ is ElementMatch!9467) r!17423)) b!3054170))

(assert (= (and start!291780 ((_ is Concat!14788) r!17423)) b!3054172))

(assert (= (and start!291780 ((_ is Star!9467) r!17423)) b!3054167))

(assert (= (and start!291780 ((_ is Union!9467) r!17423)) b!3054169))

(assert (= (and start!291780 ((_ is Cons!35208) s!11993)) b!3054171))

(declare-fun m!3379223 () Bool)

(assert (=> b!3054166 m!3379223))

(declare-fun m!3379225 () Bool)

(assert (=> b!3054166 m!3379225))

(declare-fun m!3379227 () Bool)

(assert (=> b!3054166 m!3379227))

(declare-fun m!3379229 () Bool)

(assert (=> b!3054165 m!3379229))

(declare-fun m!3379231 () Bool)

(assert (=> b!3054173 m!3379231))

(declare-fun m!3379233 () Bool)

(assert (=> b!3054173 m!3379233))

(declare-fun m!3379235 () Bool)

(assert (=> b!3054173 m!3379235))

(declare-fun m!3379237 () Bool)

(assert (=> b!3054168 m!3379237))

(declare-fun m!3379239 () Bool)

(assert (=> start!291780 m!3379239))

(check-sat (not b!3054167) (not b!3054171) (not b!3054173) tp_is_empty!16497 (not b!3054166) (not b!3054165) (not b!3054168) (not b!3054169) (not start!291780) (not b!3054172))
(check-sat)
(get-model)

(declare-fun d!854705 () Bool)

(assert (=> d!854705 (= (isEmpty!19523 s!11993) ((_ is Nil!35208) s!11993))))

(assert (=> b!3054165 d!854705))

(declare-fun b!3054368 () Bool)

(assert (=> b!3054368 true))

(assert (=> b!3054368 true))

(declare-fun bs!532382 () Bool)

(declare-fun b!3054366 () Bool)

(assert (= bs!532382 (and b!3054366 b!3054368)))

(declare-fun lambda!113760 () Int)

(declare-fun lambda!113759 () Int)

(assert (=> bs!532382 (not (= lambda!113760 lambda!113759))))

(assert (=> b!3054366 true))

(assert (=> b!3054366 true))

(declare-fun b!3054364 () Bool)

(declare-fun c!506423 () Bool)

(assert (=> b!3054364 (= c!506423 ((_ is Union!9467) r!17423))))

(declare-fun e!1913220 () Bool)

(declare-fun e!1913218 () Bool)

(assert (=> b!3054364 (= e!1913220 e!1913218)))

(declare-fun b!3054365 () Bool)

(declare-fun e!1913224 () Bool)

(assert (=> b!3054365 (= e!1913218 e!1913224)))

(declare-fun c!506425 () Bool)

(assert (=> b!3054365 (= c!506425 ((_ is Star!9467) r!17423))))

(declare-fun call!210558 () Bool)

(assert (=> b!3054366 (= e!1913224 call!210558)))

(declare-fun b!3054367 () Bool)

(declare-fun e!1913222 () Bool)

(assert (=> b!3054367 (= e!1913222 (matchRSpec!1604 (regTwo!19447 r!17423) s!11993))))

(declare-fun d!854707 () Bool)

(declare-fun c!506422 () Bool)

(assert (=> d!854707 (= c!506422 ((_ is EmptyExpr!9467) r!17423))))

(declare-fun e!1913223 () Bool)

(assert (=> d!854707 (= (matchRSpec!1604 r!17423 s!11993) e!1913223)))

(declare-fun bm!210552 () Bool)

(declare-fun Exists!1730 (Int) Bool)

(assert (=> bm!210552 (= call!210558 (Exists!1730 (ite c!506425 lambda!113759 lambda!113760)))))

(declare-fun bm!210553 () Bool)

(declare-fun call!210557 () Bool)

(assert (=> bm!210553 (= call!210557 (isEmpty!19523 s!11993))))

(declare-fun e!1913221 () Bool)

(assert (=> b!3054368 (= e!1913221 call!210558)))

(declare-fun b!3054369 () Bool)

(declare-fun res!1254525 () Bool)

(assert (=> b!3054369 (=> res!1254525 e!1913221)))

(assert (=> b!3054369 (= res!1254525 call!210557)))

(assert (=> b!3054369 (= e!1913224 e!1913221)))

(declare-fun b!3054370 () Bool)

(assert (=> b!3054370 (= e!1913220 (= s!11993 (Cons!35208 (c!506353 r!17423) Nil!35208)))))

(declare-fun b!3054371 () Bool)

(declare-fun c!506424 () Bool)

(assert (=> b!3054371 (= c!506424 ((_ is ElementMatch!9467) r!17423))))

(declare-fun e!1913219 () Bool)

(assert (=> b!3054371 (= e!1913219 e!1913220)))

(declare-fun b!3054372 () Bool)

(assert (=> b!3054372 (= e!1913218 e!1913222)))

(declare-fun res!1254523 () Bool)

(assert (=> b!3054372 (= res!1254523 (matchRSpec!1604 (regOne!19447 r!17423) s!11993))))

(assert (=> b!3054372 (=> res!1254523 e!1913222)))

(declare-fun b!3054373 () Bool)

(assert (=> b!3054373 (= e!1913223 call!210557)))

(declare-fun b!3054374 () Bool)

(assert (=> b!3054374 (= e!1913223 e!1913219)))

(declare-fun res!1254524 () Bool)

(assert (=> b!3054374 (= res!1254524 (not ((_ is EmptyLang!9467) r!17423)))))

(assert (=> b!3054374 (=> (not res!1254524) (not e!1913219))))

(assert (= (and d!854707 c!506422) b!3054373))

(assert (= (and d!854707 (not c!506422)) b!3054374))

(assert (= (and b!3054374 res!1254524) b!3054371))

(assert (= (and b!3054371 c!506424) b!3054370))

(assert (= (and b!3054371 (not c!506424)) b!3054364))

(assert (= (and b!3054364 c!506423) b!3054372))

(assert (= (and b!3054364 (not c!506423)) b!3054365))

(assert (= (and b!3054372 (not res!1254523)) b!3054367))

(assert (= (and b!3054365 c!506425) b!3054369))

(assert (= (and b!3054365 (not c!506425)) b!3054366))

(assert (= (and b!3054369 (not res!1254525)) b!3054368))

(assert (= (or b!3054368 b!3054366) bm!210552))

(assert (= (or b!3054373 b!3054369) bm!210553))

(declare-fun m!3379291 () Bool)

(assert (=> b!3054367 m!3379291))

(declare-fun m!3379293 () Bool)

(assert (=> bm!210552 m!3379293))

(assert (=> bm!210553 m!3379229))

(declare-fun m!3379295 () Bool)

(assert (=> b!3054372 m!3379295))

(assert (=> b!3054173 d!854707))

(declare-fun b!3054407 () Bool)

(declare-fun res!1254544 () Bool)

(declare-fun e!1913245 () Bool)

(assert (=> b!3054407 (=> (not res!1254544) (not e!1913245))))

(declare-fun call!210561 () Bool)

(assert (=> b!3054407 (= res!1254544 (not call!210561))))

(declare-fun d!854721 () Bool)

(declare-fun e!1913239 () Bool)

(assert (=> d!854721 e!1913239))

(declare-fun c!506434 () Bool)

(assert (=> d!854721 (= c!506434 ((_ is EmptyExpr!9467) r!17423))))

(declare-fun lt!1048833 () Bool)

(declare-fun e!1913240 () Bool)

(assert (=> d!854721 (= lt!1048833 e!1913240)))

(declare-fun c!506432 () Bool)

(assert (=> d!854721 (= c!506432 (isEmpty!19523 s!11993))))

(assert (=> d!854721 (validRegex!4200 r!17423)))

(assert (=> d!854721 (= (matchR!4349 r!17423 s!11993) lt!1048833)))

(declare-fun b!3054408 () Bool)

(declare-fun e!1913243 () Bool)

(assert (=> b!3054408 (= e!1913239 e!1913243)))

(declare-fun c!506433 () Bool)

(assert (=> b!3054408 (= c!506433 ((_ is EmptyLang!9467) r!17423))))

(declare-fun b!3054409 () Bool)

(declare-fun e!1913242 () Bool)

(declare-fun head!6768 (List!35332) C!19120)

(assert (=> b!3054409 (= e!1913242 (not (= (head!6768 s!11993) (c!506353 r!17423))))))

(declare-fun b!3054410 () Bool)

(declare-fun res!1254547 () Bool)

(declare-fun e!1913241 () Bool)

(assert (=> b!3054410 (=> res!1254547 e!1913241)))

(assert (=> b!3054410 (= res!1254547 (not ((_ is ElementMatch!9467) r!17423)))))

(assert (=> b!3054410 (= e!1913243 e!1913241)))

(declare-fun bm!210556 () Bool)

(assert (=> bm!210556 (= call!210561 (isEmpty!19523 s!11993))))

(declare-fun b!3054411 () Bool)

(assert (=> b!3054411 (= e!1913245 (= (head!6768 s!11993) (c!506353 r!17423)))))

(declare-fun b!3054412 () Bool)

(declare-fun derivativeStep!2709 (Regex!9467 C!19120) Regex!9467)

(declare-fun tail!4994 (List!35332) List!35332)

(assert (=> b!3054412 (= e!1913240 (matchR!4349 (derivativeStep!2709 r!17423 (head!6768 s!11993)) (tail!4994 s!11993)))))

(declare-fun b!3054413 () Bool)

(assert (=> b!3054413 (= e!1913239 (= lt!1048833 call!210561))))

(declare-fun b!3054414 () Bool)

(declare-fun e!1913244 () Bool)

(assert (=> b!3054414 (= e!1913244 e!1913242)))

(declare-fun res!1254545 () Bool)

(assert (=> b!3054414 (=> res!1254545 e!1913242)))

(assert (=> b!3054414 (= res!1254545 call!210561)))

(declare-fun b!3054415 () Bool)

(declare-fun nullable!3112 (Regex!9467) Bool)

(assert (=> b!3054415 (= e!1913240 (nullable!3112 r!17423))))

(declare-fun b!3054416 () Bool)

(assert (=> b!3054416 (= e!1913241 e!1913244)))

(declare-fun res!1254543 () Bool)

(assert (=> b!3054416 (=> (not res!1254543) (not e!1913244))))

(assert (=> b!3054416 (= res!1254543 (not lt!1048833))))

(declare-fun b!3054417 () Bool)

(assert (=> b!3054417 (= e!1913243 (not lt!1048833))))

(declare-fun b!3054418 () Bool)

(declare-fun res!1254549 () Bool)

(assert (=> b!3054418 (=> (not res!1254549) (not e!1913245))))

(assert (=> b!3054418 (= res!1254549 (isEmpty!19523 (tail!4994 s!11993)))))

(declare-fun b!3054419 () Bool)

(declare-fun res!1254546 () Bool)

(assert (=> b!3054419 (=> res!1254546 e!1913242)))

(assert (=> b!3054419 (= res!1254546 (not (isEmpty!19523 (tail!4994 s!11993))))))

(declare-fun b!3054420 () Bool)

(declare-fun res!1254542 () Bool)

(assert (=> b!3054420 (=> res!1254542 e!1913241)))

(assert (=> b!3054420 (= res!1254542 e!1913245)))

(declare-fun res!1254548 () Bool)

(assert (=> b!3054420 (=> (not res!1254548) (not e!1913245))))

(assert (=> b!3054420 (= res!1254548 lt!1048833)))

(assert (= (and d!854721 c!506432) b!3054415))

(assert (= (and d!854721 (not c!506432)) b!3054412))

(assert (= (and d!854721 c!506434) b!3054413))

(assert (= (and d!854721 (not c!506434)) b!3054408))

(assert (= (and b!3054408 c!506433) b!3054417))

(assert (= (and b!3054408 (not c!506433)) b!3054410))

(assert (= (and b!3054410 (not res!1254547)) b!3054420))

(assert (= (and b!3054420 res!1254548) b!3054407))

(assert (= (and b!3054407 res!1254544) b!3054418))

(assert (= (and b!3054418 res!1254549) b!3054411))

(assert (= (and b!3054420 (not res!1254542)) b!3054416))

(assert (= (and b!3054416 res!1254543) b!3054414))

(assert (= (and b!3054414 (not res!1254545)) b!3054419))

(assert (= (and b!3054419 (not res!1254546)) b!3054409))

(assert (= (or b!3054413 b!3054407 b!3054414) bm!210556))

(assert (=> d!854721 m!3379229))

(assert (=> d!854721 m!3379239))

(declare-fun m!3379297 () Bool)

(assert (=> b!3054418 m!3379297))

(assert (=> b!3054418 m!3379297))

(declare-fun m!3379299 () Bool)

(assert (=> b!3054418 m!3379299))

(declare-fun m!3379301 () Bool)

(assert (=> b!3054412 m!3379301))

(assert (=> b!3054412 m!3379301))

(declare-fun m!3379303 () Bool)

(assert (=> b!3054412 m!3379303))

(assert (=> b!3054412 m!3379297))

(assert (=> b!3054412 m!3379303))

(assert (=> b!3054412 m!3379297))

(declare-fun m!3379305 () Bool)

(assert (=> b!3054412 m!3379305))

(assert (=> b!3054419 m!3379297))

(assert (=> b!3054419 m!3379297))

(assert (=> b!3054419 m!3379299))

(assert (=> b!3054411 m!3379301))

(assert (=> b!3054409 m!3379301))

(declare-fun m!3379307 () Bool)

(assert (=> b!3054415 m!3379307))

(assert (=> bm!210556 m!3379229))

(assert (=> b!3054173 d!854721))

(declare-fun d!854723 () Bool)

(assert (=> d!854723 (= (matchR!4349 r!17423 s!11993) (matchRSpec!1604 r!17423 s!11993))))

(declare-fun lt!1048836 () Unit!49373)

(declare-fun choose!18097 (Regex!9467 List!35332) Unit!49373)

(assert (=> d!854723 (= lt!1048836 (choose!18097 r!17423 s!11993))))

(assert (=> d!854723 (validRegex!4200 r!17423)))

(assert (=> d!854723 (= (mainMatchTheorem!1604 r!17423 s!11993) lt!1048836)))

(declare-fun bs!532383 () Bool)

(assert (= bs!532383 d!854723))

(assert (=> bs!532383 m!3379233))

(assert (=> bs!532383 m!3379231))

(declare-fun m!3379309 () Bool)

(assert (=> bs!532383 m!3379309))

(assert (=> bs!532383 m!3379239))

(assert (=> b!3054173 d!854723))

(declare-fun b!3054439 () Bool)

(declare-fun e!1913262 () Bool)

(declare-fun e!1913264 () Bool)

(assert (=> b!3054439 (= e!1913262 e!1913264)))

(declare-fun res!1254564 () Bool)

(assert (=> b!3054439 (= res!1254564 (not (nullable!3112 (reg!9796 (regOne!19446 r!17423)))))))

(assert (=> b!3054439 (=> (not res!1254564) (not e!1913264))))

(declare-fun b!3054440 () Bool)

(declare-fun e!1913266 () Bool)

(declare-fun e!1913261 () Bool)

(assert (=> b!3054440 (= e!1913266 e!1913261)))

(declare-fun res!1254560 () Bool)

(assert (=> b!3054440 (=> (not res!1254560) (not e!1913261))))

(declare-fun call!210568 () Bool)

(assert (=> b!3054440 (= res!1254560 call!210568)))

(declare-fun call!210570 () Bool)

(declare-fun c!506440 () Bool)

(declare-fun bm!210563 () Bool)

(declare-fun c!506439 () Bool)

(assert (=> bm!210563 (= call!210570 (validRegex!4200 (ite c!506440 (reg!9796 (regOne!19446 r!17423)) (ite c!506439 (regOne!19447 (regOne!19446 r!17423)) (regTwo!19446 (regOne!19446 r!17423))))))))

(declare-fun b!3054441 () Bool)

(declare-fun res!1254562 () Bool)

(assert (=> b!3054441 (=> res!1254562 e!1913266)))

(assert (=> b!3054441 (= res!1254562 (not ((_ is Concat!14788) (regOne!19446 r!17423))))))

(declare-fun e!1913265 () Bool)

(assert (=> b!3054441 (= e!1913265 e!1913266)))

(declare-fun b!3054442 () Bool)

(assert (=> b!3054442 (= e!1913264 call!210570)))

(declare-fun d!854725 () Bool)

(declare-fun res!1254563 () Bool)

(declare-fun e!1913263 () Bool)

(assert (=> d!854725 (=> res!1254563 e!1913263)))

(assert (=> d!854725 (= res!1254563 ((_ is ElementMatch!9467) (regOne!19446 r!17423)))))

(assert (=> d!854725 (= (validRegex!4200 (regOne!19446 r!17423)) e!1913263)))

(declare-fun b!3054443 () Bool)

(declare-fun res!1254561 () Bool)

(declare-fun e!1913260 () Bool)

(assert (=> b!3054443 (=> (not res!1254561) (not e!1913260))))

(declare-fun call!210569 () Bool)

(assert (=> b!3054443 (= res!1254561 call!210569)))

(assert (=> b!3054443 (= e!1913265 e!1913260)))

(declare-fun b!3054444 () Bool)

(assert (=> b!3054444 (= e!1913263 e!1913262)))

(assert (=> b!3054444 (= c!506440 ((_ is Star!9467) (regOne!19446 r!17423)))))

(declare-fun b!3054445 () Bool)

(assert (=> b!3054445 (= e!1913262 e!1913265)))

(assert (=> b!3054445 (= c!506439 ((_ is Union!9467) (regOne!19446 r!17423)))))

(declare-fun bm!210564 () Bool)

(assert (=> bm!210564 (= call!210568 (validRegex!4200 (ite c!506439 (regTwo!19447 (regOne!19446 r!17423)) (regOne!19446 (regOne!19446 r!17423)))))))

(declare-fun bm!210565 () Bool)

(assert (=> bm!210565 (= call!210569 call!210570)))

(declare-fun b!3054446 () Bool)

(assert (=> b!3054446 (= e!1913260 call!210568)))

(declare-fun b!3054447 () Bool)

(assert (=> b!3054447 (= e!1913261 call!210569)))

(assert (= (and d!854725 (not res!1254563)) b!3054444))

(assert (= (and b!3054444 c!506440) b!3054439))

(assert (= (and b!3054444 (not c!506440)) b!3054445))

(assert (= (and b!3054439 res!1254564) b!3054442))

(assert (= (and b!3054445 c!506439) b!3054443))

(assert (= (and b!3054445 (not c!506439)) b!3054441))

(assert (= (and b!3054443 res!1254561) b!3054446))

(assert (= (and b!3054441 (not res!1254562)) b!3054440))

(assert (= (and b!3054440 res!1254560) b!3054447))

(assert (= (or b!3054443 b!3054447) bm!210565))

(assert (= (or b!3054446 b!3054440) bm!210564))

(assert (= (or b!3054442 bm!210565) bm!210563))

(declare-fun m!3379311 () Bool)

(assert (=> b!3054439 m!3379311))

(declare-fun m!3379313 () Bool)

(assert (=> bm!210563 m!3379313))

(declare-fun m!3379315 () Bool)

(assert (=> bm!210564 m!3379315))

(assert (=> b!3054168 d!854725))

(declare-fun d!854727 () Bool)

(assert (=> d!854727 (= (isEmptyLang!518 lt!1048805) ((_ is EmptyLang!9467) lt!1048805))))

(assert (=> b!3054166 d!854727))

(declare-fun bm!210580 () Bool)

(declare-fun call!210591 () Bool)

(declare-fun call!210590 () Bool)

(assert (=> bm!210580 (= call!210591 call!210590)))

(declare-fun b!3054498 () Bool)

(declare-fun e!1913297 () Regex!9467)

(assert (=> b!3054498 (= e!1913297 (regTwo!19446 r!17423))))

(declare-fun b!3054499 () Bool)

(declare-fun e!1913301 () Regex!9467)

(declare-fun lt!1048851 () Regex!9467)

(assert (=> b!3054499 (= e!1913301 (Star!9467 lt!1048851))))

(declare-fun b!3054500 () Bool)

(declare-fun e!1913303 () Regex!9467)

(declare-fun e!1913299 () Regex!9467)

(assert (=> b!3054500 (= e!1913303 e!1913299)))

(declare-fun c!506467 () Bool)

(declare-fun call!210586 () Bool)

(assert (=> b!3054500 (= c!506467 call!210586)))

(declare-fun b!3054501 () Bool)

(declare-fun c!506473 () Bool)

(declare-fun e!1913308 () Bool)

(assert (=> b!3054501 (= c!506473 e!1913308)))

(declare-fun res!1254572 () Bool)

(assert (=> b!3054501 (=> res!1254572 e!1913308)))

(assert (=> b!3054501 (= res!1254572 call!210590)))

(declare-fun call!210587 () Regex!9467)

(assert (=> b!3054501 (= lt!1048851 call!210587)))

(declare-fun e!1913302 () Regex!9467)

(assert (=> b!3054501 (= e!1913302 e!1913301)))

(declare-fun b!3054502 () Bool)

(declare-fun e!1913307 () Regex!9467)

(declare-fun lt!1048853 () Regex!9467)

(assert (=> b!3054502 (= e!1913307 lt!1048853)))

(declare-fun b!3054503 () Bool)

(declare-fun c!506472 () Bool)

(assert (=> b!3054503 (= c!506472 ((_ is EmptyExpr!9467) (regTwo!19446 r!17423)))))

(declare-fun e!1913306 () Regex!9467)

(assert (=> b!3054503 (= e!1913297 e!1913306)))

(declare-fun b!3054504 () Bool)

(assert (=> b!3054504 (= e!1913301 EmptyExpr!9467)))

(declare-fun b!3054505 () Bool)

(declare-fun e!1913295 () Regex!9467)

(assert (=> b!3054505 (= e!1913295 e!1913297)))

(declare-fun c!506470 () Bool)

(assert (=> b!3054505 (= c!506470 ((_ is ElementMatch!9467) (regTwo!19446 r!17423)))))

(declare-fun b!3054506 () Bool)

(assert (=> b!3054506 (= e!1913308 call!210586)))

(declare-fun b!3054507 () Bool)

(declare-fun e!1913304 () Regex!9467)

(declare-fun e!1913305 () Regex!9467)

(assert (=> b!3054507 (= e!1913304 e!1913305)))

(declare-fun lt!1048850 () Regex!9467)

(declare-fun call!210589 () Regex!9467)

(assert (=> b!3054507 (= lt!1048850 call!210589)))

(declare-fun lt!1048849 () Regex!9467)

(declare-fun call!210588 () Regex!9467)

(assert (=> b!3054507 (= lt!1048849 call!210588)))

(declare-fun res!1254573 () Bool)

(assert (=> b!3054507 (= res!1254573 call!210591)))

(declare-fun e!1913296 () Bool)

(assert (=> b!3054507 (=> res!1254573 e!1913296)))

(declare-fun c!506468 () Bool)

(assert (=> b!3054507 (= c!506468 e!1913296)))

(declare-fun b!3054508 () Bool)

(declare-fun lt!1048852 () Regex!9467)

(assert (=> b!3054508 (= e!1913307 (Union!9467 lt!1048853 lt!1048852))))

(declare-fun bm!210582 () Bool)

(assert (=> bm!210582 (= call!210588 call!210587)))

(declare-fun b!3054509 () Bool)

(assert (=> b!3054509 (= e!1913295 EmptyLang!9467)))

(declare-fun b!3054510 () Bool)

(declare-fun call!210585 () Bool)

(assert (=> b!3054510 (= e!1913296 call!210585)))

(declare-fun b!3054511 () Bool)

(declare-fun e!1913300 () Regex!9467)

(assert (=> b!3054511 (= e!1913300 lt!1048852)))

(declare-fun b!3054512 () Bool)

(assert (=> b!3054512 (= e!1913305 EmptyLang!9467)))

(declare-fun bm!210583 () Bool)

(declare-fun c!506463 () Bool)

(assert (=> bm!210583 (= call!210589 (simplify!422 (ite c!506463 (regTwo!19447 (regTwo!19446 r!17423)) (regOne!19446 (regTwo!19446 r!17423)))))))

(declare-fun b!3054513 () Bool)

(assert (=> b!3054513 (= e!1913299 lt!1048850)))

(declare-fun b!3054514 () Bool)

(assert (=> b!3054514 (= e!1913306 e!1913302)))

(declare-fun c!506469 () Bool)

(assert (=> b!3054514 (= c!506469 ((_ is Star!9467) (regTwo!19446 r!17423)))))

(declare-fun d!854729 () Bool)

(declare-fun e!1913298 () Bool)

(assert (=> d!854729 e!1913298))

(declare-fun res!1254571 () Bool)

(assert (=> d!854729 (=> (not res!1254571) (not e!1913298))))

(declare-fun lt!1048854 () Regex!9467)

(assert (=> d!854729 (= res!1254571 (validRegex!4200 lt!1048854))))

(assert (=> d!854729 (= lt!1048854 e!1913295)))

(declare-fun c!506466 () Bool)

(assert (=> d!854729 (= c!506466 ((_ is EmptyLang!9467) (regTwo!19446 r!17423)))))

(assert (=> d!854729 (validRegex!4200 (regTwo!19446 r!17423))))

(assert (=> d!854729 (= (simplify!422 (regTwo!19446 r!17423)) lt!1048854)))

(declare-fun bm!210581 () Bool)

(assert (=> bm!210581 (= call!210590 (isEmptyLang!518 (ite c!506469 lt!1048851 (ite c!506463 lt!1048853 lt!1048850))))))

(declare-fun b!3054515 () Bool)

(assert (=> b!3054515 (= e!1913304 e!1913300)))

(assert (=> b!3054515 (= lt!1048853 call!210588)))

(assert (=> b!3054515 (= lt!1048852 call!210589)))

(declare-fun c!506471 () Bool)

(assert (=> b!3054515 (= c!506471 call!210591)))

(declare-fun b!3054516 () Bool)

(assert (=> b!3054516 (= e!1913299 (Concat!14788 lt!1048850 lt!1048849))))

(declare-fun b!3054517 () Bool)

(assert (=> b!3054517 (= e!1913298 (= (nullable!3112 lt!1048854) (nullable!3112 (regTwo!19446 r!17423))))))

(declare-fun b!3054518 () Bool)

(declare-fun c!506464 () Bool)

(declare-fun isEmptyExpr!523 (Regex!9467) Bool)

(assert (=> b!3054518 (= c!506464 (isEmptyExpr!523 lt!1048850))))

(assert (=> b!3054518 (= e!1913305 e!1913303)))

(declare-fun bm!210584 () Bool)

(assert (=> bm!210584 (= call!210586 (isEmptyExpr!523 (ite c!506469 lt!1048851 lt!1048849)))))

(declare-fun b!3054519 () Bool)

(assert (=> b!3054519 (= e!1913303 lt!1048849)))

(declare-fun bm!210585 () Bool)

(assert (=> bm!210585 (= call!210587 (simplify!422 (ite c!506469 (reg!9796 (regTwo!19446 r!17423)) (ite c!506463 (regOne!19447 (regTwo!19446 r!17423)) (regTwo!19446 (regTwo!19446 r!17423))))))))

(declare-fun b!3054520 () Bool)

(assert (=> b!3054520 (= c!506463 ((_ is Union!9467) (regTwo!19446 r!17423)))))

(assert (=> b!3054520 (= e!1913302 e!1913304)))

(declare-fun bm!210586 () Bool)

(assert (=> bm!210586 (= call!210585 (isEmptyLang!518 (ite c!506463 lt!1048852 lt!1048849)))))

(declare-fun b!3054521 () Bool)

(assert (=> b!3054521 (= e!1913306 EmptyExpr!9467)))

(declare-fun b!3054522 () Bool)

(declare-fun c!506465 () Bool)

(assert (=> b!3054522 (= c!506465 call!210585)))

(assert (=> b!3054522 (= e!1913300 e!1913307)))

(assert (= (and d!854729 c!506466) b!3054509))

(assert (= (and d!854729 (not c!506466)) b!3054505))

(assert (= (and b!3054505 c!506470) b!3054498))

(assert (= (and b!3054505 (not c!506470)) b!3054503))

(assert (= (and b!3054503 c!506472) b!3054521))

(assert (= (and b!3054503 (not c!506472)) b!3054514))

(assert (= (and b!3054514 c!506469) b!3054501))

(assert (= (and b!3054514 (not c!506469)) b!3054520))

(assert (= (and b!3054501 (not res!1254572)) b!3054506))

(assert (= (and b!3054501 c!506473) b!3054504))

(assert (= (and b!3054501 (not c!506473)) b!3054499))

(assert (= (and b!3054520 c!506463) b!3054515))

(assert (= (and b!3054520 (not c!506463)) b!3054507))

(assert (= (and b!3054515 c!506471) b!3054511))

(assert (= (and b!3054515 (not c!506471)) b!3054522))

(assert (= (and b!3054522 c!506465) b!3054502))

(assert (= (and b!3054522 (not c!506465)) b!3054508))

(assert (= (and b!3054507 (not res!1254573)) b!3054510))

(assert (= (and b!3054507 c!506468) b!3054512))

(assert (= (and b!3054507 (not c!506468)) b!3054518))

(assert (= (and b!3054518 c!506464) b!3054519))

(assert (= (and b!3054518 (not c!506464)) b!3054500))

(assert (= (and b!3054500 c!506467) b!3054513))

(assert (= (and b!3054500 (not c!506467)) b!3054516))

(assert (= (or b!3054515 b!3054507) bm!210582))

(assert (= (or b!3054515 b!3054507) bm!210583))

(assert (= (or b!3054522 b!3054510) bm!210586))

(assert (= (or b!3054515 b!3054507) bm!210580))

(assert (= (or b!3054506 b!3054500) bm!210584))

(assert (= (or b!3054501 bm!210582) bm!210585))

(assert (= (or b!3054501 bm!210580) bm!210581))

(assert (= (and d!854729 res!1254571) b!3054517))

(declare-fun m!3379317 () Bool)

(assert (=> b!3054517 m!3379317))

(declare-fun m!3379319 () Bool)

(assert (=> b!3054517 m!3379319))

(declare-fun m!3379321 () Bool)

(assert (=> bm!210585 m!3379321))

(declare-fun m!3379323 () Bool)

(assert (=> bm!210584 m!3379323))

(declare-fun m!3379325 () Bool)

(assert (=> bm!210581 m!3379325))

(declare-fun m!3379327 () Bool)

(assert (=> b!3054518 m!3379327))

(declare-fun m!3379329 () Bool)

(assert (=> bm!210583 m!3379329))

(declare-fun m!3379331 () Bool)

(assert (=> bm!210586 m!3379331))

(declare-fun m!3379333 () Bool)

(assert (=> d!854729 m!3379333))

(declare-fun m!3379335 () Bool)

(assert (=> d!854729 m!3379335))

(assert (=> b!3054166 d!854729))

(declare-fun bm!210587 () Bool)

(declare-fun call!210598 () Bool)

(declare-fun call!210597 () Bool)

(assert (=> bm!210587 (= call!210598 call!210597)))

(declare-fun b!3054523 () Bool)

(declare-fun e!1913311 () Regex!9467)

(assert (=> b!3054523 (= e!1913311 (regOne!19446 r!17423))))

(declare-fun b!3054524 () Bool)

(declare-fun e!1913315 () Regex!9467)

(declare-fun lt!1048857 () Regex!9467)

(assert (=> b!3054524 (= e!1913315 (Star!9467 lt!1048857))))

(declare-fun b!3054525 () Bool)

(declare-fun e!1913317 () Regex!9467)

(declare-fun e!1913313 () Regex!9467)

(assert (=> b!3054525 (= e!1913317 e!1913313)))

(declare-fun c!506478 () Bool)

(declare-fun call!210593 () Bool)

(assert (=> b!3054525 (= c!506478 call!210593)))

(declare-fun b!3054526 () Bool)

(declare-fun c!506484 () Bool)

(declare-fun e!1913322 () Bool)

(assert (=> b!3054526 (= c!506484 e!1913322)))

(declare-fun res!1254575 () Bool)

(assert (=> b!3054526 (=> res!1254575 e!1913322)))

(assert (=> b!3054526 (= res!1254575 call!210597)))

(declare-fun call!210594 () Regex!9467)

(assert (=> b!3054526 (= lt!1048857 call!210594)))

(declare-fun e!1913316 () Regex!9467)

(assert (=> b!3054526 (= e!1913316 e!1913315)))

(declare-fun b!3054527 () Bool)

(declare-fun e!1913321 () Regex!9467)

(declare-fun lt!1048859 () Regex!9467)

(assert (=> b!3054527 (= e!1913321 lt!1048859)))

(declare-fun b!3054528 () Bool)

(declare-fun c!506483 () Bool)

(assert (=> b!3054528 (= c!506483 ((_ is EmptyExpr!9467) (regOne!19446 r!17423)))))

(declare-fun e!1913320 () Regex!9467)

(assert (=> b!3054528 (= e!1913311 e!1913320)))

(declare-fun b!3054529 () Bool)

(assert (=> b!3054529 (= e!1913315 EmptyExpr!9467)))

(declare-fun b!3054530 () Bool)

(declare-fun e!1913309 () Regex!9467)

(assert (=> b!3054530 (= e!1913309 e!1913311)))

(declare-fun c!506481 () Bool)

(assert (=> b!3054530 (= c!506481 ((_ is ElementMatch!9467) (regOne!19446 r!17423)))))

(declare-fun b!3054531 () Bool)

(assert (=> b!3054531 (= e!1913322 call!210593)))

(declare-fun b!3054532 () Bool)

(declare-fun e!1913318 () Regex!9467)

(declare-fun e!1913319 () Regex!9467)

(assert (=> b!3054532 (= e!1913318 e!1913319)))

(declare-fun lt!1048856 () Regex!9467)

(declare-fun call!210596 () Regex!9467)

(assert (=> b!3054532 (= lt!1048856 call!210596)))

(declare-fun lt!1048855 () Regex!9467)

(declare-fun call!210595 () Regex!9467)

(assert (=> b!3054532 (= lt!1048855 call!210595)))

(declare-fun res!1254576 () Bool)

(assert (=> b!3054532 (= res!1254576 call!210598)))

(declare-fun e!1913310 () Bool)

(assert (=> b!3054532 (=> res!1254576 e!1913310)))

(declare-fun c!506479 () Bool)

(assert (=> b!3054532 (= c!506479 e!1913310)))

(declare-fun b!3054533 () Bool)

(declare-fun lt!1048858 () Regex!9467)

(assert (=> b!3054533 (= e!1913321 (Union!9467 lt!1048859 lt!1048858))))

(declare-fun bm!210589 () Bool)

(assert (=> bm!210589 (= call!210595 call!210594)))

(declare-fun b!3054534 () Bool)

(assert (=> b!3054534 (= e!1913309 EmptyLang!9467)))

(declare-fun b!3054535 () Bool)

(declare-fun call!210592 () Bool)

(assert (=> b!3054535 (= e!1913310 call!210592)))

(declare-fun b!3054536 () Bool)

(declare-fun e!1913314 () Regex!9467)

(assert (=> b!3054536 (= e!1913314 lt!1048858)))

(declare-fun b!3054537 () Bool)

(assert (=> b!3054537 (= e!1913319 EmptyLang!9467)))

(declare-fun bm!210590 () Bool)

(declare-fun c!506474 () Bool)

(assert (=> bm!210590 (= call!210596 (simplify!422 (ite c!506474 (regTwo!19447 (regOne!19446 r!17423)) (regOne!19446 (regOne!19446 r!17423)))))))

(declare-fun b!3054538 () Bool)

(assert (=> b!3054538 (= e!1913313 lt!1048856)))

(declare-fun b!3054539 () Bool)

(assert (=> b!3054539 (= e!1913320 e!1913316)))

(declare-fun c!506480 () Bool)

(assert (=> b!3054539 (= c!506480 ((_ is Star!9467) (regOne!19446 r!17423)))))

(declare-fun d!854731 () Bool)

(declare-fun e!1913312 () Bool)

(assert (=> d!854731 e!1913312))

(declare-fun res!1254574 () Bool)

(assert (=> d!854731 (=> (not res!1254574) (not e!1913312))))

(declare-fun lt!1048860 () Regex!9467)

(assert (=> d!854731 (= res!1254574 (validRegex!4200 lt!1048860))))

(assert (=> d!854731 (= lt!1048860 e!1913309)))

(declare-fun c!506477 () Bool)

(assert (=> d!854731 (= c!506477 ((_ is EmptyLang!9467) (regOne!19446 r!17423)))))

(assert (=> d!854731 (validRegex!4200 (regOne!19446 r!17423))))

(assert (=> d!854731 (= (simplify!422 (regOne!19446 r!17423)) lt!1048860)))

(declare-fun bm!210588 () Bool)

(assert (=> bm!210588 (= call!210597 (isEmptyLang!518 (ite c!506480 lt!1048857 (ite c!506474 lt!1048859 lt!1048856))))))

(declare-fun b!3054540 () Bool)

(assert (=> b!3054540 (= e!1913318 e!1913314)))

(assert (=> b!3054540 (= lt!1048859 call!210595)))

(assert (=> b!3054540 (= lt!1048858 call!210596)))

(declare-fun c!506482 () Bool)

(assert (=> b!3054540 (= c!506482 call!210598)))

(declare-fun b!3054541 () Bool)

(assert (=> b!3054541 (= e!1913313 (Concat!14788 lt!1048856 lt!1048855))))

(declare-fun b!3054542 () Bool)

(assert (=> b!3054542 (= e!1913312 (= (nullable!3112 lt!1048860) (nullable!3112 (regOne!19446 r!17423))))))

(declare-fun b!3054543 () Bool)

(declare-fun c!506475 () Bool)

(assert (=> b!3054543 (= c!506475 (isEmptyExpr!523 lt!1048856))))

(assert (=> b!3054543 (= e!1913319 e!1913317)))

(declare-fun bm!210591 () Bool)

(assert (=> bm!210591 (= call!210593 (isEmptyExpr!523 (ite c!506480 lt!1048857 lt!1048855)))))

(declare-fun b!3054544 () Bool)

(assert (=> b!3054544 (= e!1913317 lt!1048855)))

(declare-fun bm!210592 () Bool)

(assert (=> bm!210592 (= call!210594 (simplify!422 (ite c!506480 (reg!9796 (regOne!19446 r!17423)) (ite c!506474 (regOne!19447 (regOne!19446 r!17423)) (regTwo!19446 (regOne!19446 r!17423))))))))

(declare-fun b!3054545 () Bool)

(assert (=> b!3054545 (= c!506474 ((_ is Union!9467) (regOne!19446 r!17423)))))

(assert (=> b!3054545 (= e!1913316 e!1913318)))

(declare-fun bm!210593 () Bool)

(assert (=> bm!210593 (= call!210592 (isEmptyLang!518 (ite c!506474 lt!1048858 lt!1048855)))))

(declare-fun b!3054546 () Bool)

(assert (=> b!3054546 (= e!1913320 EmptyExpr!9467)))

(declare-fun b!3054547 () Bool)

(declare-fun c!506476 () Bool)

(assert (=> b!3054547 (= c!506476 call!210592)))

(assert (=> b!3054547 (= e!1913314 e!1913321)))

(assert (= (and d!854731 c!506477) b!3054534))

(assert (= (and d!854731 (not c!506477)) b!3054530))

(assert (= (and b!3054530 c!506481) b!3054523))

(assert (= (and b!3054530 (not c!506481)) b!3054528))

(assert (= (and b!3054528 c!506483) b!3054546))

(assert (= (and b!3054528 (not c!506483)) b!3054539))

(assert (= (and b!3054539 c!506480) b!3054526))

(assert (= (and b!3054539 (not c!506480)) b!3054545))

(assert (= (and b!3054526 (not res!1254575)) b!3054531))

(assert (= (and b!3054526 c!506484) b!3054529))

(assert (= (and b!3054526 (not c!506484)) b!3054524))

(assert (= (and b!3054545 c!506474) b!3054540))

(assert (= (and b!3054545 (not c!506474)) b!3054532))

(assert (= (and b!3054540 c!506482) b!3054536))

(assert (= (and b!3054540 (not c!506482)) b!3054547))

(assert (= (and b!3054547 c!506476) b!3054527))

(assert (= (and b!3054547 (not c!506476)) b!3054533))

(assert (= (and b!3054532 (not res!1254576)) b!3054535))

(assert (= (and b!3054532 c!506479) b!3054537))

(assert (= (and b!3054532 (not c!506479)) b!3054543))

(assert (= (and b!3054543 c!506475) b!3054544))

(assert (= (and b!3054543 (not c!506475)) b!3054525))

(assert (= (and b!3054525 c!506478) b!3054538))

(assert (= (and b!3054525 (not c!506478)) b!3054541))

(assert (= (or b!3054540 b!3054532) bm!210589))

(assert (= (or b!3054540 b!3054532) bm!210590))

(assert (= (or b!3054547 b!3054535) bm!210593))

(assert (= (or b!3054540 b!3054532) bm!210587))

(assert (= (or b!3054531 b!3054525) bm!210591))

(assert (= (or b!3054526 bm!210589) bm!210592))

(assert (= (or b!3054526 bm!210587) bm!210588))

(assert (= (and d!854731 res!1254574) b!3054542))

(declare-fun m!3379337 () Bool)

(assert (=> b!3054542 m!3379337))

(declare-fun m!3379339 () Bool)

(assert (=> b!3054542 m!3379339))

(declare-fun m!3379341 () Bool)

(assert (=> bm!210592 m!3379341))

(declare-fun m!3379343 () Bool)

(assert (=> bm!210591 m!3379343))

(declare-fun m!3379345 () Bool)

(assert (=> bm!210588 m!3379345))

(declare-fun m!3379347 () Bool)

(assert (=> b!3054543 m!3379347))

(declare-fun m!3379349 () Bool)

(assert (=> bm!210590 m!3379349))

(declare-fun m!3379351 () Bool)

(assert (=> bm!210593 m!3379351))

(declare-fun m!3379353 () Bool)

(assert (=> d!854731 m!3379353))

(assert (=> d!854731 m!3379237))

(assert (=> b!3054166 d!854731))

(declare-fun b!3054548 () Bool)

(declare-fun e!1913325 () Bool)

(declare-fun e!1913327 () Bool)

(assert (=> b!3054548 (= e!1913325 e!1913327)))

(declare-fun res!1254581 () Bool)

(assert (=> b!3054548 (= res!1254581 (not (nullable!3112 (reg!9796 r!17423))))))

(assert (=> b!3054548 (=> (not res!1254581) (not e!1913327))))

(declare-fun b!3054549 () Bool)

(declare-fun e!1913329 () Bool)

(declare-fun e!1913324 () Bool)

(assert (=> b!3054549 (= e!1913329 e!1913324)))

(declare-fun res!1254577 () Bool)

(assert (=> b!3054549 (=> (not res!1254577) (not e!1913324))))

(declare-fun call!210599 () Bool)

(assert (=> b!3054549 (= res!1254577 call!210599)))

(declare-fun bm!210594 () Bool)

(declare-fun c!506486 () Bool)

(declare-fun c!506485 () Bool)

(declare-fun call!210601 () Bool)

(assert (=> bm!210594 (= call!210601 (validRegex!4200 (ite c!506486 (reg!9796 r!17423) (ite c!506485 (regOne!19447 r!17423) (regTwo!19446 r!17423)))))))

(declare-fun b!3054550 () Bool)

(declare-fun res!1254579 () Bool)

(assert (=> b!3054550 (=> res!1254579 e!1913329)))

(assert (=> b!3054550 (= res!1254579 (not ((_ is Concat!14788) r!17423)))))

(declare-fun e!1913328 () Bool)

(assert (=> b!3054550 (= e!1913328 e!1913329)))

(declare-fun b!3054551 () Bool)

(assert (=> b!3054551 (= e!1913327 call!210601)))

(declare-fun d!854733 () Bool)

(declare-fun res!1254580 () Bool)

(declare-fun e!1913326 () Bool)

(assert (=> d!854733 (=> res!1254580 e!1913326)))

(assert (=> d!854733 (= res!1254580 ((_ is ElementMatch!9467) r!17423))))

(assert (=> d!854733 (= (validRegex!4200 r!17423) e!1913326)))

(declare-fun b!3054552 () Bool)

(declare-fun res!1254578 () Bool)

(declare-fun e!1913323 () Bool)

(assert (=> b!3054552 (=> (not res!1254578) (not e!1913323))))

(declare-fun call!210600 () Bool)

(assert (=> b!3054552 (= res!1254578 call!210600)))

(assert (=> b!3054552 (= e!1913328 e!1913323)))

(declare-fun b!3054553 () Bool)

(assert (=> b!3054553 (= e!1913326 e!1913325)))

(assert (=> b!3054553 (= c!506486 ((_ is Star!9467) r!17423))))

(declare-fun b!3054554 () Bool)

(assert (=> b!3054554 (= e!1913325 e!1913328)))

(assert (=> b!3054554 (= c!506485 ((_ is Union!9467) r!17423))))

(declare-fun bm!210595 () Bool)

(assert (=> bm!210595 (= call!210599 (validRegex!4200 (ite c!506485 (regTwo!19447 r!17423) (regOne!19446 r!17423))))))

(declare-fun bm!210596 () Bool)

(assert (=> bm!210596 (= call!210600 call!210601)))

(declare-fun b!3054555 () Bool)

(assert (=> b!3054555 (= e!1913323 call!210599)))

(declare-fun b!3054556 () Bool)

(assert (=> b!3054556 (= e!1913324 call!210600)))

(assert (= (and d!854733 (not res!1254580)) b!3054553))

(assert (= (and b!3054553 c!506486) b!3054548))

(assert (= (and b!3054553 (not c!506486)) b!3054554))

(assert (= (and b!3054548 res!1254581) b!3054551))

(assert (= (and b!3054554 c!506485) b!3054552))

(assert (= (and b!3054554 (not c!506485)) b!3054550))

(assert (= (and b!3054552 res!1254578) b!3054555))

(assert (= (and b!3054550 (not res!1254579)) b!3054549))

(assert (= (and b!3054549 res!1254577) b!3054556))

(assert (= (or b!3054552 b!3054556) bm!210596))

(assert (= (or b!3054555 b!3054549) bm!210595))

(assert (= (or b!3054551 bm!210596) bm!210594))

(declare-fun m!3379355 () Bool)

(assert (=> b!3054548 m!3379355))

(declare-fun m!3379357 () Bool)

(assert (=> bm!210594 m!3379357))

(declare-fun m!3379359 () Bool)

(assert (=> bm!210595 m!3379359))

(assert (=> start!291780 d!854733))

(declare-fun b!3054561 () Bool)

(declare-fun e!1913332 () Bool)

(declare-fun tp!966212 () Bool)

(assert (=> b!3054561 (= e!1913332 (and tp_is_empty!16497 tp!966212))))

(assert (=> b!3054171 (= tp!966209 e!1913332)))

(assert (= (and b!3054171 ((_ is Cons!35208) (t!234397 s!11993))) b!3054561))

(declare-fun e!1913335 () Bool)

(assert (=> b!3054169 (= tp!966205 e!1913335)))

(declare-fun b!3054572 () Bool)

(assert (=> b!3054572 (= e!1913335 tp_is_empty!16497)))

(declare-fun b!3054574 () Bool)

(declare-fun tp!966223 () Bool)

(assert (=> b!3054574 (= e!1913335 tp!966223)))

(declare-fun b!3054575 () Bool)

(declare-fun tp!966226 () Bool)

(declare-fun tp!966225 () Bool)

(assert (=> b!3054575 (= e!1913335 (and tp!966226 tp!966225))))

(declare-fun b!3054573 () Bool)

(declare-fun tp!966227 () Bool)

(declare-fun tp!966224 () Bool)

(assert (=> b!3054573 (= e!1913335 (and tp!966227 tp!966224))))

(assert (= (and b!3054169 ((_ is ElementMatch!9467) (regOne!19447 r!17423))) b!3054572))

(assert (= (and b!3054169 ((_ is Concat!14788) (regOne!19447 r!17423))) b!3054573))

(assert (= (and b!3054169 ((_ is Star!9467) (regOne!19447 r!17423))) b!3054574))

(assert (= (and b!3054169 ((_ is Union!9467) (regOne!19447 r!17423))) b!3054575))

(declare-fun e!1913336 () Bool)

(assert (=> b!3054169 (= tp!966204 e!1913336)))

(declare-fun b!3054576 () Bool)

(assert (=> b!3054576 (= e!1913336 tp_is_empty!16497)))

(declare-fun b!3054578 () Bool)

(declare-fun tp!966228 () Bool)

(assert (=> b!3054578 (= e!1913336 tp!966228)))

(declare-fun b!3054579 () Bool)

(declare-fun tp!966231 () Bool)

(declare-fun tp!966230 () Bool)

(assert (=> b!3054579 (= e!1913336 (and tp!966231 tp!966230))))

(declare-fun b!3054577 () Bool)

(declare-fun tp!966232 () Bool)

(declare-fun tp!966229 () Bool)

(assert (=> b!3054577 (= e!1913336 (and tp!966232 tp!966229))))

(assert (= (and b!3054169 ((_ is ElementMatch!9467) (regTwo!19447 r!17423))) b!3054576))

(assert (= (and b!3054169 ((_ is Concat!14788) (regTwo!19447 r!17423))) b!3054577))

(assert (= (and b!3054169 ((_ is Star!9467) (regTwo!19447 r!17423))) b!3054578))

(assert (= (and b!3054169 ((_ is Union!9467) (regTwo!19447 r!17423))) b!3054579))

(declare-fun e!1913337 () Bool)

(assert (=> b!3054167 (= tp!966206 e!1913337)))

(declare-fun b!3054580 () Bool)

(assert (=> b!3054580 (= e!1913337 tp_is_empty!16497)))

(declare-fun b!3054582 () Bool)

(declare-fun tp!966233 () Bool)

(assert (=> b!3054582 (= e!1913337 tp!966233)))

(declare-fun b!3054583 () Bool)

(declare-fun tp!966236 () Bool)

(declare-fun tp!966235 () Bool)

(assert (=> b!3054583 (= e!1913337 (and tp!966236 tp!966235))))

(declare-fun b!3054581 () Bool)

(declare-fun tp!966237 () Bool)

(declare-fun tp!966234 () Bool)

(assert (=> b!3054581 (= e!1913337 (and tp!966237 tp!966234))))

(assert (= (and b!3054167 ((_ is ElementMatch!9467) (reg!9796 r!17423))) b!3054580))

(assert (= (and b!3054167 ((_ is Concat!14788) (reg!9796 r!17423))) b!3054581))

(assert (= (and b!3054167 ((_ is Star!9467) (reg!9796 r!17423))) b!3054582))

(assert (= (and b!3054167 ((_ is Union!9467) (reg!9796 r!17423))) b!3054583))

(declare-fun e!1913338 () Bool)

(assert (=> b!3054172 (= tp!966207 e!1913338)))

(declare-fun b!3054584 () Bool)

(assert (=> b!3054584 (= e!1913338 tp_is_empty!16497)))

(declare-fun b!3054586 () Bool)

(declare-fun tp!966238 () Bool)

(assert (=> b!3054586 (= e!1913338 tp!966238)))

(declare-fun b!3054587 () Bool)

(declare-fun tp!966241 () Bool)

(declare-fun tp!966240 () Bool)

(assert (=> b!3054587 (= e!1913338 (and tp!966241 tp!966240))))

(declare-fun b!3054585 () Bool)

(declare-fun tp!966242 () Bool)

(declare-fun tp!966239 () Bool)

(assert (=> b!3054585 (= e!1913338 (and tp!966242 tp!966239))))

(assert (= (and b!3054172 ((_ is ElementMatch!9467) (regOne!19446 r!17423))) b!3054584))

(assert (= (and b!3054172 ((_ is Concat!14788) (regOne!19446 r!17423))) b!3054585))

(assert (= (and b!3054172 ((_ is Star!9467) (regOne!19446 r!17423))) b!3054586))

(assert (= (and b!3054172 ((_ is Union!9467) (regOne!19446 r!17423))) b!3054587))

(declare-fun e!1913339 () Bool)

(assert (=> b!3054172 (= tp!966208 e!1913339)))

(declare-fun b!3054588 () Bool)

(assert (=> b!3054588 (= e!1913339 tp_is_empty!16497)))

(declare-fun b!3054590 () Bool)

(declare-fun tp!966243 () Bool)

(assert (=> b!3054590 (= e!1913339 tp!966243)))

(declare-fun b!3054591 () Bool)

(declare-fun tp!966246 () Bool)

(declare-fun tp!966245 () Bool)

(assert (=> b!3054591 (= e!1913339 (and tp!966246 tp!966245))))

(declare-fun b!3054589 () Bool)

(declare-fun tp!966247 () Bool)

(declare-fun tp!966244 () Bool)

(assert (=> b!3054589 (= e!1913339 (and tp!966247 tp!966244))))

(assert (= (and b!3054172 ((_ is ElementMatch!9467) (regTwo!19446 r!17423))) b!3054588))

(assert (= (and b!3054172 ((_ is Concat!14788) (regTwo!19446 r!17423))) b!3054589))

(assert (= (and b!3054172 ((_ is Star!9467) (regTwo!19446 r!17423))) b!3054590))

(assert (= (and b!3054172 ((_ is Union!9467) (regTwo!19446 r!17423))) b!3054591))

(check-sat (not d!854729) (not b!3054590) (not bm!210585) (not bm!210591) (not b!3054589) (not b!3054372) (not bm!210556) (not bm!210586) (not bm!210593) (not b!3054418) (not b!3054367) (not b!3054585) (not d!854731) (not b!3054542) (not b!3054411) (not b!3054575) (not b!3054561) (not bm!210563) (not b!3054581) (not bm!210590) (not bm!210553) (not b!3054582) (not b!3054579) (not bm!210594) (not b!3054583) (not bm!210581) (not bm!210592) (not bm!210583) (not bm!210552) (not b!3054577) (not b!3054409) (not b!3054548) (not b!3054439) (not b!3054412) (not b!3054574) tp_is_empty!16497 (not d!854723) (not b!3054518) (not b!3054415) (not b!3054573) (not bm!210564) (not b!3054419) (not b!3054586) (not b!3054578) (not b!3054591) (not d!854721) (not b!3054587) (not bm!210588) (not b!3054517) (not b!3054543) (not bm!210584) (not bm!210595))
(check-sat)
