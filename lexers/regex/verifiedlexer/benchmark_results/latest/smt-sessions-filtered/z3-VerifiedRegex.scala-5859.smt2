; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287436 () Bool)

(assert start!287436)

(declare-fun b!2971492 () Bool)

(declare-fun e!1869602 () Bool)

(declare-fun tp!947482 () Bool)

(declare-fun tp!947485 () Bool)

(assert (=> b!2971492 (= e!1869602 (and tp!947482 tp!947485))))

(declare-fun res!1225364 () Bool)

(declare-fun e!1869601 () Bool)

(assert (=> start!287436 (=> (not res!1225364) (not e!1869601))))

(declare-datatypes ((C!18724 0))(
  ( (C!18725 (val!11398 Int)) )
))
(declare-datatypes ((Regex!9269 0))(
  ( (ElementMatch!9269 (c!487577 C!18724)) (Concat!14590 (regOne!19050 Regex!9269) (regTwo!19050 Regex!9269)) (EmptyExpr!9269) (Star!9269 (reg!9598 Regex!9269)) (EmptyLang!9269) (Union!9269 (regOne!19051 Regex!9269) (regTwo!19051 Regex!9269)) )
))
(declare-fun r!17423 () Regex!9269)

(declare-fun validRegex!4002 (Regex!9269) Bool)

(assert (=> start!287436 (= res!1225364 (validRegex!4002 r!17423))))

(assert (=> start!287436 e!1869601))

(assert (=> start!287436 e!1869602))

(declare-fun e!1869598 () Bool)

(assert (=> start!287436 e!1869598))

(declare-fun b!2971493 () Bool)

(declare-fun e!1869597 () Bool)

(declare-fun e!1869599 () Bool)

(assert (=> b!2971493 (= e!1869597 e!1869599)))

(declare-fun res!1225360 () Bool)

(assert (=> b!2971493 (=> res!1225360 e!1869599)))

(declare-datatypes ((List!35134 0))(
  ( (Nil!35010) (Cons!35010 (h!40430 C!18724) (t!234199 List!35134)) )
))
(declare-fun s!11993 () List!35134)

(declare-fun isEmpty!19247 (List!35134) Bool)

(assert (=> b!2971493 (= res!1225360 (not (isEmpty!19247 s!11993)))))

(declare-fun lt!1036256 () Regex!9269)

(declare-fun matchRSpec!1406 (Regex!9269 List!35134) Bool)

(assert (=> b!2971493 (matchRSpec!1406 lt!1036256 s!11993)))

(declare-datatypes ((Unit!48917 0))(
  ( (Unit!48918) )
))
(declare-fun lt!1036260 () Unit!48917)

(declare-fun mainMatchTheorem!1406 (Regex!9269 List!35134) Unit!48917)

(assert (=> b!2971493 (= lt!1036260 (mainMatchTheorem!1406 lt!1036256 s!11993))))

(declare-fun b!2971494 () Bool)

(declare-fun e!1869603 () Bool)

(declare-fun e!1869600 () Bool)

(assert (=> b!2971494 (= e!1869603 e!1869600)))

(declare-fun res!1225361 () Bool)

(assert (=> b!2971494 (=> res!1225361 e!1869600)))

(declare-fun lt!1036258 () Regex!9269)

(declare-fun isEmptyLang!383 (Regex!9269) Bool)

(assert (=> b!2971494 (= res!1225361 (isEmptyLang!383 lt!1036258))))

(declare-fun simplify!270 (Regex!9269) Regex!9269)

(assert (=> b!2971494 (= lt!1036258 (simplify!270 (reg!9598 r!17423)))))

(declare-fun b!2971495 () Bool)

(assert (=> b!2971495 (= e!1869601 (not e!1869603))))

(declare-fun res!1225362 () Bool)

(assert (=> b!2971495 (=> res!1225362 e!1869603)))

(declare-fun lt!1036257 () Bool)

(get-info :version)

(assert (=> b!2971495 (= res!1225362 (or lt!1036257 ((_ is Concat!14590) r!17423) ((_ is Union!9269) r!17423) (not ((_ is Star!9269) r!17423))))))

(assert (=> b!2971495 (= lt!1036257 (matchRSpec!1406 r!17423 s!11993))))

(declare-fun matchR!4151 (Regex!9269 List!35134) Bool)

(assert (=> b!2971495 (= lt!1036257 (matchR!4151 r!17423 s!11993))))

(declare-fun lt!1036259 () Unit!48917)

(assert (=> b!2971495 (= lt!1036259 (mainMatchTheorem!1406 r!17423 s!11993))))

(declare-fun b!2971496 () Bool)

(assert (=> b!2971496 (= e!1869599 (validRegex!4002 (simplify!270 r!17423)))))

(declare-fun b!2971497 () Bool)

(declare-fun tp!947481 () Bool)

(declare-fun tp!947483 () Bool)

(assert (=> b!2971497 (= e!1869602 (and tp!947481 tp!947483))))

(declare-fun b!2971498 () Bool)

(declare-fun tp_is_empty!16101 () Bool)

(assert (=> b!2971498 (= e!1869602 tp_is_empty!16101)))

(declare-fun b!2971499 () Bool)

(assert (=> b!2971499 (= e!1869600 e!1869597)))

(declare-fun res!1225363 () Bool)

(assert (=> b!2971499 (=> res!1225363 e!1869597)))

(assert (=> b!2971499 (= res!1225363 (not (matchR!4151 lt!1036256 s!11993)))))

(assert (=> b!2971499 (= lt!1036256 (Star!9269 lt!1036258))))

(declare-fun b!2971500 () Bool)

(declare-fun tp!947484 () Bool)

(assert (=> b!2971500 (= e!1869598 (and tp_is_empty!16101 tp!947484))))

(declare-fun b!2971501 () Bool)

(declare-fun tp!947480 () Bool)

(assert (=> b!2971501 (= e!1869602 tp!947480)))

(assert (= (and start!287436 res!1225364) b!2971495))

(assert (= (and b!2971495 (not res!1225362)) b!2971494))

(assert (= (and b!2971494 (not res!1225361)) b!2971499))

(assert (= (and b!2971499 (not res!1225363)) b!2971493))

(assert (= (and b!2971493 (not res!1225360)) b!2971496))

(assert (= (and start!287436 ((_ is ElementMatch!9269) r!17423)) b!2971498))

(assert (= (and start!287436 ((_ is Concat!14590) r!17423)) b!2971492))

(assert (= (and start!287436 ((_ is Star!9269) r!17423)) b!2971501))

(assert (= (and start!287436 ((_ is Union!9269) r!17423)) b!2971497))

(assert (= (and start!287436 ((_ is Cons!35010) s!11993)) b!2971500))

(declare-fun m!3338357 () Bool)

(assert (=> b!2971499 m!3338357))

(declare-fun m!3338359 () Bool)

(assert (=> start!287436 m!3338359))

(declare-fun m!3338361 () Bool)

(assert (=> b!2971494 m!3338361))

(declare-fun m!3338363 () Bool)

(assert (=> b!2971494 m!3338363))

(declare-fun m!3338365 () Bool)

(assert (=> b!2971493 m!3338365))

(declare-fun m!3338367 () Bool)

(assert (=> b!2971493 m!3338367))

(declare-fun m!3338369 () Bool)

(assert (=> b!2971493 m!3338369))

(declare-fun m!3338371 () Bool)

(assert (=> b!2971496 m!3338371))

(assert (=> b!2971496 m!3338371))

(declare-fun m!3338373 () Bool)

(assert (=> b!2971496 m!3338373))

(declare-fun m!3338375 () Bool)

(assert (=> b!2971495 m!3338375))

(declare-fun m!3338377 () Bool)

(assert (=> b!2971495 m!3338377))

(declare-fun m!3338379 () Bool)

(assert (=> b!2971495 m!3338379))

(check-sat (not b!2971499) tp_is_empty!16101 (not b!2971501) (not start!287436) (not b!2971492) (not b!2971497) (not b!2971494) (not b!2971495) (not b!2971500) (not b!2971496) (not b!2971493))
(check-sat)
(get-model)

(declare-fun b!2971548 () Bool)

(declare-fun e!1869634 () Bool)

(declare-fun e!1869637 () Bool)

(assert (=> b!2971548 (= e!1869634 e!1869637)))

(declare-fun c!487588 () Bool)

(assert (=> b!2971548 (= c!487588 ((_ is Union!9269) (simplify!270 r!17423)))))

(declare-fun bm!197852 () Bool)

(declare-fun call!197858 () Bool)

(assert (=> bm!197852 (= call!197858 (validRegex!4002 (ite c!487588 (regTwo!19051 (simplify!270 r!17423)) (regOne!19050 (simplify!270 r!17423)))))))

(declare-fun b!2971549 () Bool)

(declare-fun e!1869636 () Bool)

(assert (=> b!2971549 (= e!1869634 e!1869636)))

(declare-fun res!1225393 () Bool)

(declare-fun nullable!2966 (Regex!9269) Bool)

(assert (=> b!2971549 (= res!1225393 (not (nullable!2966 (reg!9598 (simplify!270 r!17423)))))))

(assert (=> b!2971549 (=> (not res!1225393) (not e!1869636))))

(declare-fun b!2971550 () Bool)

(declare-fun e!1869638 () Bool)

(assert (=> b!2971550 (= e!1869638 call!197858)))

(declare-fun bm!197853 () Bool)

(declare-fun call!197857 () Bool)

(declare-fun call!197859 () Bool)

(assert (=> bm!197853 (= call!197857 call!197859)))

(declare-fun b!2971551 () Bool)

(declare-fun e!1869635 () Bool)

(assert (=> b!2971551 (= e!1869635 call!197857)))

(declare-fun b!2971552 () Bool)

(assert (=> b!2971552 (= e!1869636 call!197859)))

(declare-fun b!2971553 () Bool)

(declare-fun res!1225394 () Bool)

(assert (=> b!2971553 (=> (not res!1225394) (not e!1869638))))

(assert (=> b!2971553 (= res!1225394 call!197857)))

(assert (=> b!2971553 (= e!1869637 e!1869638)))

(declare-fun b!2971554 () Bool)

(declare-fun res!1225395 () Bool)

(declare-fun e!1869633 () Bool)

(assert (=> b!2971554 (=> res!1225395 e!1869633)))

(assert (=> b!2971554 (= res!1225395 (not ((_ is Concat!14590) (simplify!270 r!17423))))))

(assert (=> b!2971554 (= e!1869637 e!1869633)))

(declare-fun b!2971555 () Bool)

(assert (=> b!2971555 (= e!1869633 e!1869635)))

(declare-fun res!1225391 () Bool)

(assert (=> b!2971555 (=> (not res!1225391) (not e!1869635))))

(assert (=> b!2971555 (= res!1225391 call!197858)))

(declare-fun b!2971556 () Bool)

(declare-fun e!1869632 () Bool)

(assert (=> b!2971556 (= e!1869632 e!1869634)))

(declare-fun c!487589 () Bool)

(assert (=> b!2971556 (= c!487589 ((_ is Star!9269) (simplify!270 r!17423)))))

(declare-fun d!842692 () Bool)

(declare-fun res!1225392 () Bool)

(assert (=> d!842692 (=> res!1225392 e!1869632)))

(assert (=> d!842692 (= res!1225392 ((_ is ElementMatch!9269) (simplify!270 r!17423)))))

(assert (=> d!842692 (= (validRegex!4002 (simplify!270 r!17423)) e!1869632)))

(declare-fun bm!197854 () Bool)

(assert (=> bm!197854 (= call!197859 (validRegex!4002 (ite c!487589 (reg!9598 (simplify!270 r!17423)) (ite c!487588 (regOne!19051 (simplify!270 r!17423)) (regTwo!19050 (simplify!270 r!17423))))))))

(assert (= (and d!842692 (not res!1225392)) b!2971556))

(assert (= (and b!2971556 c!487589) b!2971549))

(assert (= (and b!2971556 (not c!487589)) b!2971548))

(assert (= (and b!2971549 res!1225393) b!2971552))

(assert (= (and b!2971548 c!487588) b!2971553))

(assert (= (and b!2971548 (not c!487588)) b!2971554))

(assert (= (and b!2971553 res!1225394) b!2971550))

(assert (= (and b!2971554 (not res!1225395)) b!2971555))

(assert (= (and b!2971555 res!1225391) b!2971551))

(assert (= (or b!2971553 b!2971551) bm!197853))

(assert (= (or b!2971550 b!2971555) bm!197852))

(assert (= (or b!2971552 bm!197853) bm!197854))

(declare-fun m!3338381 () Bool)

(assert (=> bm!197852 m!3338381))

(declare-fun m!3338383 () Bool)

(assert (=> b!2971549 m!3338383))

(declare-fun m!3338385 () Bool)

(assert (=> bm!197854 m!3338385))

(assert (=> b!2971496 d!842692))

(declare-fun b!2971644 () Bool)

(declare-fun e!1869691 () Bool)

(declare-fun lt!1036281 () Regex!9269)

(assert (=> b!2971644 (= e!1869691 (= (nullable!2966 lt!1036281) (nullable!2966 r!17423)))))

(declare-fun b!2971645 () Bool)

(declare-fun c!487627 () Bool)

(assert (=> b!2971645 (= c!487627 ((_ is EmptyExpr!9269) r!17423))))

(declare-fun e!1869692 () Regex!9269)

(declare-fun e!1869689 () Regex!9269)

(assert (=> b!2971645 (= e!1869692 e!1869689)))

(declare-fun bm!197872 () Bool)

(declare-fun call!197878 () Bool)

(declare-fun call!197883 () Bool)

(assert (=> bm!197872 (= call!197878 call!197883)))

(declare-fun b!2971646 () Bool)

(declare-fun e!1869701 () Regex!9269)

(assert (=> b!2971646 (= e!1869701 EmptyLang!9269)))

(declare-fun b!2971647 () Bool)

(declare-fun e!1869699 () Regex!9269)

(declare-fun lt!1036278 () Regex!9269)

(assert (=> b!2971647 (= e!1869699 lt!1036278)))

(declare-fun bm!197873 () Bool)

(declare-fun call!197882 () Regex!9269)

(declare-fun call!197879 () Regex!9269)

(assert (=> bm!197873 (= call!197882 call!197879)))

(declare-fun b!2971648 () Bool)

(declare-fun e!1869688 () Regex!9269)

(assert (=> b!2971648 (= e!1869689 e!1869688)))

(declare-fun c!487626 () Bool)

(assert (=> b!2971648 (= c!487626 ((_ is Star!9269) r!17423))))

(declare-fun b!2971649 () Bool)

(declare-fun e!1869698 () Regex!9269)

(assert (=> b!2971649 (= e!1869699 e!1869698)))

(declare-fun c!487628 () Bool)

(declare-fun call!197880 () Bool)

(assert (=> b!2971649 (= c!487628 call!197880)))

(declare-fun b!2971650 () Bool)

(declare-fun e!1869693 () Regex!9269)

(declare-fun e!1869695 () Regex!9269)

(assert (=> b!2971650 (= e!1869693 e!1869695)))

(declare-fun lt!1036276 () Regex!9269)

(assert (=> b!2971650 (= lt!1036276 call!197882)))

(declare-fun lt!1036277 () Regex!9269)

(declare-fun call!197877 () Regex!9269)

(assert (=> b!2971650 (= lt!1036277 call!197877)))

(declare-fun c!487633 () Bool)

(assert (=> b!2971650 (= c!487633 call!197878)))

(declare-fun b!2971643 () Bool)

(declare-fun c!487629 () Bool)

(assert (=> b!2971643 (= c!487629 ((_ is Union!9269) r!17423))))

(assert (=> b!2971643 (= e!1869688 e!1869693)))

(declare-fun d!842694 () Bool)

(assert (=> d!842694 e!1869691))

(declare-fun res!1225417 () Bool)

(assert (=> d!842694 (=> (not res!1225417) (not e!1869691))))

(assert (=> d!842694 (= res!1225417 (validRegex!4002 lt!1036281))))

(assert (=> d!842694 (= lt!1036281 e!1869701)))

(declare-fun c!487632 () Bool)

(assert (=> d!842694 (= c!487632 ((_ is EmptyLang!9269) r!17423))))

(assert (=> d!842694 (validRegex!4002 r!17423)))

(assert (=> d!842694 (= (simplify!270 r!17423) lt!1036281)))

(declare-fun b!2971651 () Bool)

(declare-fun e!1869694 () Regex!9269)

(assert (=> b!2971651 (= e!1869694 (Union!9269 lt!1036276 lt!1036277))))

(declare-fun bm!197874 () Bool)

(assert (=> bm!197874 (= call!197879 (simplify!270 (ite c!487626 (reg!9598 r!17423) (ite c!487629 (regOne!19051 r!17423) (regTwo!19050 r!17423)))))))

(declare-fun b!2971652 () Bool)

(assert (=> b!2971652 (= e!1869689 EmptyExpr!9269)))

(declare-fun b!2971653 () Bool)

(assert (=> b!2971653 (= e!1869694 lt!1036276)))

(declare-fun b!2971654 () Bool)

(assert (=> b!2971654 (= e!1869695 lt!1036277)))

(declare-fun b!2971655 () Bool)

(declare-fun e!1869697 () Bool)

(assert (=> b!2971655 (= e!1869697 call!197878)))

(declare-fun bm!197875 () Bool)

(assert (=> bm!197875 (= call!197877 (simplify!270 (ite c!487629 (regTwo!19051 r!17423) (regOne!19050 r!17423))))))

(declare-fun bm!197876 () Bool)

(declare-fun lt!1036279 () Regex!9269)

(assert (=> bm!197876 (= call!197883 (isEmptyLang!383 (ite c!487626 lt!1036279 (ite c!487629 lt!1036276 lt!1036278))))))

(declare-fun b!2971656 () Bool)

(declare-fun e!1869690 () Regex!9269)

(assert (=> b!2971656 (= e!1869690 EmptyExpr!9269)))

(declare-fun b!2971657 () Bool)

(declare-fun c!487631 () Bool)

(declare-fun lt!1036280 () Regex!9269)

(declare-fun isEmptyExpr!422 (Regex!9269) Bool)

(assert (=> b!2971657 (= c!487631 (isEmptyExpr!422 lt!1036280))))

(declare-fun e!1869696 () Regex!9269)

(assert (=> b!2971657 (= e!1869696 e!1869699)))

(declare-fun b!2971658 () Bool)

(assert (=> b!2971658 (= e!1869698 (Concat!14590 lt!1036280 lt!1036278))))

(declare-fun b!2971659 () Bool)

(assert (=> b!2971659 (= e!1869693 e!1869696)))

(assert (=> b!2971659 (= lt!1036280 call!197877)))

(assert (=> b!2971659 (= lt!1036278 call!197882)))

(declare-fun res!1225418 () Bool)

(declare-fun call!197881 () Bool)

(assert (=> b!2971659 (= res!1225418 call!197881)))

(assert (=> b!2971659 (=> res!1225418 e!1869697)))

(declare-fun c!487625 () Bool)

(assert (=> b!2971659 (= c!487625 e!1869697)))

(declare-fun b!2971660 () Bool)

(assert (=> b!2971660 (= e!1869698 lt!1036280)))

(declare-fun b!2971661 () Bool)

(declare-fun e!1869700 () Bool)

(assert (=> b!2971661 (= e!1869700 call!197880)))

(declare-fun b!2971662 () Bool)

(declare-fun c!487630 () Bool)

(assert (=> b!2971662 (= c!487630 call!197881)))

(assert (=> b!2971662 (= e!1869695 e!1869694)))

(declare-fun b!2971663 () Bool)

(assert (=> b!2971663 (= e!1869696 EmptyLang!9269)))

(declare-fun b!2971664 () Bool)

(assert (=> b!2971664 (= e!1869690 (Star!9269 lt!1036279))))

(declare-fun b!2971665 () Bool)

(assert (=> b!2971665 (= e!1869701 e!1869692)))

(declare-fun c!487623 () Bool)

(assert (=> b!2971665 (= c!487623 ((_ is ElementMatch!9269) r!17423))))

(declare-fun bm!197877 () Bool)

(assert (=> bm!197877 (= call!197880 (isEmptyExpr!422 (ite c!487626 lt!1036279 lt!1036278)))))

(declare-fun b!2971666 () Bool)

(declare-fun c!487624 () Bool)

(assert (=> b!2971666 (= c!487624 e!1869700)))

(declare-fun res!1225416 () Bool)

(assert (=> b!2971666 (=> res!1225416 e!1869700)))

(assert (=> b!2971666 (= res!1225416 call!197883)))

(assert (=> b!2971666 (= lt!1036279 call!197879)))

(assert (=> b!2971666 (= e!1869688 e!1869690)))

(declare-fun bm!197878 () Bool)

(assert (=> bm!197878 (= call!197881 (isEmptyLang!383 (ite c!487629 lt!1036277 lt!1036280)))))

(declare-fun b!2971667 () Bool)

(assert (=> b!2971667 (= e!1869692 r!17423)))

(assert (= (and d!842694 c!487632) b!2971646))

(assert (= (and d!842694 (not c!487632)) b!2971665))

(assert (= (and b!2971665 c!487623) b!2971667))

(assert (= (and b!2971665 (not c!487623)) b!2971645))

(assert (= (and b!2971645 c!487627) b!2971652))

(assert (= (and b!2971645 (not c!487627)) b!2971648))

(assert (= (and b!2971648 c!487626) b!2971666))

(assert (= (and b!2971648 (not c!487626)) b!2971643))

(assert (= (and b!2971666 (not res!1225416)) b!2971661))

(assert (= (and b!2971666 c!487624) b!2971656))

(assert (= (and b!2971666 (not c!487624)) b!2971664))

(assert (= (and b!2971643 c!487629) b!2971650))

(assert (= (and b!2971643 (not c!487629)) b!2971659))

(assert (= (and b!2971650 c!487633) b!2971654))

(assert (= (and b!2971650 (not c!487633)) b!2971662))

(assert (= (and b!2971662 c!487630) b!2971653))

(assert (= (and b!2971662 (not c!487630)) b!2971651))

(assert (= (and b!2971659 (not res!1225418)) b!2971655))

(assert (= (and b!2971659 c!487625) b!2971663))

(assert (= (and b!2971659 (not c!487625)) b!2971657))

(assert (= (and b!2971657 c!487631) b!2971647))

(assert (= (and b!2971657 (not c!487631)) b!2971649))

(assert (= (and b!2971649 c!487628) b!2971660))

(assert (= (and b!2971649 (not c!487628)) b!2971658))

(assert (= (or b!2971650 b!2971659) bm!197873))

(assert (= (or b!2971650 b!2971659) bm!197875))

(assert (= (or b!2971650 b!2971655) bm!197872))

(assert (= (or b!2971662 b!2971659) bm!197878))

(assert (= (or b!2971661 b!2971649) bm!197877))

(assert (= (or b!2971666 bm!197873) bm!197874))

(assert (= (or b!2971666 bm!197872) bm!197876))

(assert (= (and d!842694 res!1225417) b!2971644))

(declare-fun m!3338401 () Bool)

(assert (=> b!2971644 m!3338401))

(declare-fun m!3338403 () Bool)

(assert (=> b!2971644 m!3338403))

(declare-fun m!3338405 () Bool)

(assert (=> bm!197878 m!3338405))

(declare-fun m!3338407 () Bool)

(assert (=> b!2971657 m!3338407))

(declare-fun m!3338409 () Bool)

(assert (=> bm!197875 m!3338409))

(declare-fun m!3338411 () Bool)

(assert (=> d!842694 m!3338411))

(assert (=> d!842694 m!3338359))

(declare-fun m!3338413 () Bool)

(assert (=> bm!197874 m!3338413))

(declare-fun m!3338415 () Bool)

(assert (=> bm!197877 m!3338415))

(declare-fun m!3338417 () Bool)

(assert (=> bm!197876 m!3338417))

(assert (=> b!2971496 d!842694))

(declare-fun b!2971668 () Bool)

(declare-fun e!1869704 () Bool)

(declare-fun e!1869707 () Bool)

(assert (=> b!2971668 (= e!1869704 e!1869707)))

(declare-fun c!487634 () Bool)

(assert (=> b!2971668 (= c!487634 ((_ is Union!9269) r!17423))))

(declare-fun bm!197879 () Bool)

(declare-fun call!197885 () Bool)

(assert (=> bm!197879 (= call!197885 (validRegex!4002 (ite c!487634 (regTwo!19051 r!17423) (regOne!19050 r!17423))))))

(declare-fun b!2971669 () Bool)

(declare-fun e!1869706 () Bool)

(assert (=> b!2971669 (= e!1869704 e!1869706)))

(declare-fun res!1225421 () Bool)

(assert (=> b!2971669 (= res!1225421 (not (nullable!2966 (reg!9598 r!17423))))))

(assert (=> b!2971669 (=> (not res!1225421) (not e!1869706))))

(declare-fun b!2971670 () Bool)

(declare-fun e!1869708 () Bool)

(assert (=> b!2971670 (= e!1869708 call!197885)))

(declare-fun bm!197880 () Bool)

(declare-fun call!197884 () Bool)

(declare-fun call!197886 () Bool)

(assert (=> bm!197880 (= call!197884 call!197886)))

(declare-fun b!2971671 () Bool)

(declare-fun e!1869705 () Bool)

(assert (=> b!2971671 (= e!1869705 call!197884)))

(declare-fun b!2971672 () Bool)

(assert (=> b!2971672 (= e!1869706 call!197886)))

(declare-fun b!2971673 () Bool)

(declare-fun res!1225422 () Bool)

(assert (=> b!2971673 (=> (not res!1225422) (not e!1869708))))

(assert (=> b!2971673 (= res!1225422 call!197884)))

(assert (=> b!2971673 (= e!1869707 e!1869708)))

(declare-fun b!2971674 () Bool)

(declare-fun res!1225423 () Bool)

(declare-fun e!1869703 () Bool)

(assert (=> b!2971674 (=> res!1225423 e!1869703)))

(assert (=> b!2971674 (= res!1225423 (not ((_ is Concat!14590) r!17423)))))

(assert (=> b!2971674 (= e!1869707 e!1869703)))

(declare-fun b!2971675 () Bool)

(assert (=> b!2971675 (= e!1869703 e!1869705)))

(declare-fun res!1225419 () Bool)

(assert (=> b!2971675 (=> (not res!1225419) (not e!1869705))))

(assert (=> b!2971675 (= res!1225419 call!197885)))

(declare-fun b!2971676 () Bool)

(declare-fun e!1869702 () Bool)

(assert (=> b!2971676 (= e!1869702 e!1869704)))

(declare-fun c!487635 () Bool)

(assert (=> b!2971676 (= c!487635 ((_ is Star!9269) r!17423))))

(declare-fun d!842698 () Bool)

(declare-fun res!1225420 () Bool)

(assert (=> d!842698 (=> res!1225420 e!1869702)))

(assert (=> d!842698 (= res!1225420 ((_ is ElementMatch!9269) r!17423))))

(assert (=> d!842698 (= (validRegex!4002 r!17423) e!1869702)))

(declare-fun bm!197881 () Bool)

(assert (=> bm!197881 (= call!197886 (validRegex!4002 (ite c!487635 (reg!9598 r!17423) (ite c!487634 (regOne!19051 r!17423) (regTwo!19050 r!17423)))))))

(assert (= (and d!842698 (not res!1225420)) b!2971676))

(assert (= (and b!2971676 c!487635) b!2971669))

(assert (= (and b!2971676 (not c!487635)) b!2971668))

(assert (= (and b!2971669 res!1225421) b!2971672))

(assert (= (and b!2971668 c!487634) b!2971673))

(assert (= (and b!2971668 (not c!487634)) b!2971674))

(assert (= (and b!2971673 res!1225422) b!2971670))

(assert (= (and b!2971674 (not res!1225423)) b!2971675))

(assert (= (and b!2971675 res!1225419) b!2971671))

(assert (= (or b!2971673 b!2971671) bm!197880))

(assert (= (or b!2971670 b!2971675) bm!197879))

(assert (= (or b!2971672 bm!197880) bm!197881))

(declare-fun m!3338419 () Bool)

(assert (=> bm!197879 m!3338419))

(declare-fun m!3338421 () Bool)

(assert (=> b!2971669 m!3338421))

(declare-fun m!3338423 () Bool)

(assert (=> bm!197881 m!3338423))

(assert (=> start!287436 d!842698))

(declare-fun b!2971940 () Bool)

(assert (=> b!2971940 true))

(assert (=> b!2971940 true))

(declare-fun bs!526498 () Bool)

(declare-fun b!2971932 () Bool)

(assert (= bs!526498 (and b!2971932 b!2971940)))

(declare-fun lambda!110568 () Int)

(declare-fun lambda!110567 () Int)

(assert (=> bs!526498 (not (= lambda!110568 lambda!110567))))

(assert (=> b!2971932 true))

(assert (=> b!2971932 true))

(declare-fun b!2971930 () Bool)

(declare-fun res!1225496 () Bool)

(declare-fun e!1869852 () Bool)

(assert (=> b!2971930 (=> res!1225496 e!1869852)))

(declare-fun call!197940 () Bool)

(assert (=> b!2971930 (= res!1225496 call!197940)))

(declare-fun e!1869847 () Bool)

(assert (=> b!2971930 (= e!1869847 e!1869852)))

(declare-fun b!2971931 () Bool)

(declare-fun c!487707 () Bool)

(assert (=> b!2971931 (= c!487707 ((_ is ElementMatch!9269) r!17423))))

(declare-fun e!1869846 () Bool)

(declare-fun e!1869848 () Bool)

(assert (=> b!2971931 (= e!1869846 e!1869848)))

(declare-fun call!197941 () Bool)

(assert (=> b!2971932 (= e!1869847 call!197941)))

(declare-fun b!2971933 () Bool)

(declare-fun c!487709 () Bool)

(assert (=> b!2971933 (= c!487709 ((_ is Union!9269) r!17423))))

(declare-fun e!1869850 () Bool)

(assert (=> b!2971933 (= e!1869848 e!1869850)))

(declare-fun bm!197935 () Bool)

(declare-fun c!487710 () Bool)

(declare-fun Exists!1551 (Int) Bool)

(assert (=> bm!197935 (= call!197941 (Exists!1551 (ite c!487710 lambda!110567 lambda!110568)))))

(declare-fun b!2971934 () Bool)

(declare-fun e!1869849 () Bool)

(assert (=> b!2971934 (= e!1869849 (matchRSpec!1406 (regTwo!19051 r!17423) s!11993))))

(declare-fun bm!197936 () Bool)

(assert (=> bm!197936 (= call!197940 (isEmpty!19247 s!11993))))

(declare-fun d!842700 () Bool)

(declare-fun c!487708 () Bool)

(assert (=> d!842700 (= c!487708 ((_ is EmptyExpr!9269) r!17423))))

(declare-fun e!1869851 () Bool)

(assert (=> d!842700 (= (matchRSpec!1406 r!17423 s!11993) e!1869851)))

(declare-fun b!2971935 () Bool)

(assert (=> b!2971935 (= e!1869851 call!197940)))

(declare-fun b!2971936 () Bool)

(assert (=> b!2971936 (= e!1869851 e!1869846)))

(declare-fun res!1225497 () Bool)

(assert (=> b!2971936 (= res!1225497 (not ((_ is EmptyLang!9269) r!17423)))))

(assert (=> b!2971936 (=> (not res!1225497) (not e!1869846))))

(declare-fun b!2971937 () Bool)

(assert (=> b!2971937 (= e!1869848 (= s!11993 (Cons!35010 (c!487577 r!17423) Nil!35010)))))

(declare-fun b!2971938 () Bool)

(assert (=> b!2971938 (= e!1869850 e!1869849)))

(declare-fun res!1225498 () Bool)

(assert (=> b!2971938 (= res!1225498 (matchRSpec!1406 (regOne!19051 r!17423) s!11993))))

(assert (=> b!2971938 (=> res!1225498 e!1869849)))

(declare-fun b!2971939 () Bool)

(assert (=> b!2971939 (= e!1869850 e!1869847)))

(assert (=> b!2971939 (= c!487710 ((_ is Star!9269) r!17423))))

(assert (=> b!2971940 (= e!1869852 call!197941)))

(assert (= (and d!842700 c!487708) b!2971935))

(assert (= (and d!842700 (not c!487708)) b!2971936))

(assert (= (and b!2971936 res!1225497) b!2971931))

(assert (= (and b!2971931 c!487707) b!2971937))

(assert (= (and b!2971931 (not c!487707)) b!2971933))

(assert (= (and b!2971933 c!487709) b!2971938))

(assert (= (and b!2971933 (not c!487709)) b!2971939))

(assert (= (and b!2971938 (not res!1225498)) b!2971934))

(assert (= (and b!2971939 c!487710) b!2971930))

(assert (= (and b!2971939 (not c!487710)) b!2971932))

(assert (= (and b!2971930 (not res!1225496)) b!2971940))

(assert (= (or b!2971940 b!2971932) bm!197935))

(assert (= (or b!2971935 b!2971930) bm!197936))

(declare-fun m!3338493 () Bool)

(assert (=> bm!197935 m!3338493))

(declare-fun m!3338495 () Bool)

(assert (=> b!2971934 m!3338495))

(assert (=> bm!197936 m!3338365))

(declare-fun m!3338497 () Bool)

(assert (=> b!2971938 m!3338497))

(assert (=> b!2971495 d!842700))

(declare-fun b!2971973 () Bool)

(declare-fun e!1869873 () Bool)

(declare-fun e!1869867 () Bool)

(assert (=> b!2971973 (= e!1869873 e!1869867)))

(declare-fun res!1225519 () Bool)

(assert (=> b!2971973 (=> res!1225519 e!1869867)))

(declare-fun call!197944 () Bool)

(assert (=> b!2971973 (= res!1225519 call!197944)))

(declare-fun b!2971974 () Bool)

(declare-fun e!1869868 () Bool)

(assert (=> b!2971974 (= e!1869868 e!1869873)))

(declare-fun res!1225518 () Bool)

(assert (=> b!2971974 (=> (not res!1225518) (not e!1869873))))

(declare-fun lt!1036313 () Bool)

(assert (=> b!2971974 (= res!1225518 (not lt!1036313))))

(declare-fun b!2971975 () Bool)

(declare-fun head!6626 (List!35134) C!18724)

(assert (=> b!2971975 (= e!1869867 (not (= (head!6626 s!11993) (c!487577 r!17423))))))

(declare-fun b!2971976 () Bool)

(declare-fun e!1869871 () Bool)

(declare-fun derivativeStep!2567 (Regex!9269 C!18724) Regex!9269)

(declare-fun tail!4852 (List!35134) List!35134)

(assert (=> b!2971976 (= e!1869871 (matchR!4151 (derivativeStep!2567 r!17423 (head!6626 s!11993)) (tail!4852 s!11993)))))

(declare-fun b!2971978 () Bool)

(declare-fun e!1869872 () Bool)

(declare-fun e!1869869 () Bool)

(assert (=> b!2971978 (= e!1869872 e!1869869)))

(declare-fun c!487718 () Bool)

(assert (=> b!2971978 (= c!487718 ((_ is EmptyLang!9269) r!17423))))

(declare-fun b!2971979 () Bool)

(assert (=> b!2971979 (= e!1869872 (= lt!1036313 call!197944))))

(declare-fun b!2971980 () Bool)

(declare-fun res!1225520 () Bool)

(declare-fun e!1869870 () Bool)

(assert (=> b!2971980 (=> (not res!1225520) (not e!1869870))))

(assert (=> b!2971980 (= res!1225520 (not call!197944))))

(declare-fun bm!197939 () Bool)

(assert (=> bm!197939 (= call!197944 (isEmpty!19247 s!11993))))

(declare-fun b!2971981 () Bool)

(declare-fun res!1225521 () Bool)

(assert (=> b!2971981 (=> res!1225521 e!1869868)))

(assert (=> b!2971981 (= res!1225521 e!1869870)))

(declare-fun res!1225522 () Bool)

(assert (=> b!2971981 (=> (not res!1225522) (not e!1869870))))

(assert (=> b!2971981 (= res!1225522 lt!1036313)))

(declare-fun b!2971982 () Bool)

(assert (=> b!2971982 (= e!1869871 (nullable!2966 r!17423))))

(declare-fun b!2971983 () Bool)

(declare-fun res!1225516 () Bool)

(assert (=> b!2971983 (=> res!1225516 e!1869868)))

(assert (=> b!2971983 (= res!1225516 (not ((_ is ElementMatch!9269) r!17423)))))

(assert (=> b!2971983 (= e!1869869 e!1869868)))

(declare-fun b!2971984 () Bool)

(declare-fun res!1225515 () Bool)

(assert (=> b!2971984 (=> (not res!1225515) (not e!1869870))))

(assert (=> b!2971984 (= res!1225515 (isEmpty!19247 (tail!4852 s!11993)))))

(declare-fun d!842722 () Bool)

(assert (=> d!842722 e!1869872))

(declare-fun c!487719 () Bool)

(assert (=> d!842722 (= c!487719 ((_ is EmptyExpr!9269) r!17423))))

(assert (=> d!842722 (= lt!1036313 e!1869871)))

(declare-fun c!487717 () Bool)

(assert (=> d!842722 (= c!487717 (isEmpty!19247 s!11993))))

(assert (=> d!842722 (validRegex!4002 r!17423)))

(assert (=> d!842722 (= (matchR!4151 r!17423 s!11993) lt!1036313)))

(declare-fun b!2971977 () Bool)

(declare-fun res!1225517 () Bool)

(assert (=> b!2971977 (=> res!1225517 e!1869867)))

(assert (=> b!2971977 (= res!1225517 (not (isEmpty!19247 (tail!4852 s!11993))))))

(declare-fun b!2971985 () Bool)

(assert (=> b!2971985 (= e!1869870 (= (head!6626 s!11993) (c!487577 r!17423)))))

(declare-fun b!2971986 () Bool)

(assert (=> b!2971986 (= e!1869869 (not lt!1036313))))

(assert (= (and d!842722 c!487717) b!2971982))

(assert (= (and d!842722 (not c!487717)) b!2971976))

(assert (= (and d!842722 c!487719) b!2971979))

(assert (= (and d!842722 (not c!487719)) b!2971978))

(assert (= (and b!2971978 c!487718) b!2971986))

(assert (= (and b!2971978 (not c!487718)) b!2971983))

(assert (= (and b!2971983 (not res!1225516)) b!2971981))

(assert (= (and b!2971981 res!1225522) b!2971980))

(assert (= (and b!2971980 res!1225520) b!2971984))

(assert (= (and b!2971984 res!1225515) b!2971985))

(assert (= (and b!2971981 (not res!1225521)) b!2971974))

(assert (= (and b!2971974 res!1225518) b!2971973))

(assert (= (and b!2971973 (not res!1225519)) b!2971977))

(assert (= (and b!2971977 (not res!1225517)) b!2971975))

(assert (= (or b!2971979 b!2971973 b!2971980) bm!197939))

(declare-fun m!3338499 () Bool)

(assert (=> b!2971985 m!3338499))

(assert (=> b!2971975 m!3338499))

(assert (=> b!2971982 m!3338403))

(declare-fun m!3338501 () Bool)

(assert (=> b!2971977 m!3338501))

(assert (=> b!2971977 m!3338501))

(declare-fun m!3338503 () Bool)

(assert (=> b!2971977 m!3338503))

(assert (=> b!2971984 m!3338501))

(assert (=> b!2971984 m!3338501))

(assert (=> b!2971984 m!3338503))

(assert (=> bm!197939 m!3338365))

(assert (=> d!842722 m!3338365))

(assert (=> d!842722 m!3338359))

(assert (=> b!2971976 m!3338499))

(assert (=> b!2971976 m!3338499))

(declare-fun m!3338505 () Bool)

(assert (=> b!2971976 m!3338505))

(assert (=> b!2971976 m!3338501))

(assert (=> b!2971976 m!3338505))

(assert (=> b!2971976 m!3338501))

(declare-fun m!3338507 () Bool)

(assert (=> b!2971976 m!3338507))

(assert (=> b!2971495 d!842722))

(declare-fun d!842724 () Bool)

(assert (=> d!842724 (= (matchR!4151 r!17423 s!11993) (matchRSpec!1406 r!17423 s!11993))))

(declare-fun lt!1036316 () Unit!48917)

(declare-fun choose!17569 (Regex!9269 List!35134) Unit!48917)

(assert (=> d!842724 (= lt!1036316 (choose!17569 r!17423 s!11993))))

(assert (=> d!842724 (validRegex!4002 r!17423)))

(assert (=> d!842724 (= (mainMatchTheorem!1406 r!17423 s!11993) lt!1036316)))

(declare-fun bs!526499 () Bool)

(assert (= bs!526499 d!842724))

(assert (=> bs!526499 m!3338377))

(assert (=> bs!526499 m!3338375))

(declare-fun m!3338509 () Bool)

(assert (=> bs!526499 m!3338509))

(assert (=> bs!526499 m!3338359))

(assert (=> b!2971495 d!842724))

(declare-fun d!842726 () Bool)

(assert (=> d!842726 (= (isEmptyLang!383 lt!1036258) ((_ is EmptyLang!9269) lt!1036258))))

(assert (=> b!2971494 d!842726))

(declare-fun b!2971988 () Bool)

(declare-fun e!1869877 () Bool)

(declare-fun lt!1036322 () Regex!9269)

(assert (=> b!2971988 (= e!1869877 (= (nullable!2966 lt!1036322) (nullable!2966 (reg!9598 r!17423))))))

(declare-fun b!2971989 () Bool)

(declare-fun c!487724 () Bool)

(assert (=> b!2971989 (= c!487724 ((_ is EmptyExpr!9269) (reg!9598 r!17423)))))

(declare-fun e!1869878 () Regex!9269)

(declare-fun e!1869875 () Regex!9269)

(assert (=> b!2971989 (= e!1869878 e!1869875)))

(declare-fun bm!197940 () Bool)

(declare-fun call!197946 () Bool)

(declare-fun call!197951 () Bool)

(assert (=> bm!197940 (= call!197946 call!197951)))

(declare-fun b!2971990 () Bool)

(declare-fun e!1869887 () Regex!9269)

(assert (=> b!2971990 (= e!1869887 EmptyLang!9269)))

(declare-fun b!2971991 () Bool)

(declare-fun e!1869885 () Regex!9269)

(declare-fun lt!1036319 () Regex!9269)

(assert (=> b!2971991 (= e!1869885 lt!1036319)))

(declare-fun bm!197941 () Bool)

(declare-fun call!197950 () Regex!9269)

(declare-fun call!197947 () Regex!9269)

(assert (=> bm!197941 (= call!197950 call!197947)))

(declare-fun b!2971992 () Bool)

(declare-fun e!1869874 () Regex!9269)

(assert (=> b!2971992 (= e!1869875 e!1869874)))

(declare-fun c!487723 () Bool)

(assert (=> b!2971992 (= c!487723 ((_ is Star!9269) (reg!9598 r!17423)))))

(declare-fun b!2971993 () Bool)

(declare-fun e!1869884 () Regex!9269)

(assert (=> b!2971993 (= e!1869885 e!1869884)))

(declare-fun c!487725 () Bool)

(declare-fun call!197948 () Bool)

(assert (=> b!2971993 (= c!487725 call!197948)))

(declare-fun b!2971994 () Bool)

(declare-fun e!1869879 () Regex!9269)

(declare-fun e!1869881 () Regex!9269)

(assert (=> b!2971994 (= e!1869879 e!1869881)))

(declare-fun lt!1036317 () Regex!9269)

(assert (=> b!2971994 (= lt!1036317 call!197950)))

(declare-fun lt!1036318 () Regex!9269)

(declare-fun call!197945 () Regex!9269)

(assert (=> b!2971994 (= lt!1036318 call!197945)))

(declare-fun c!487730 () Bool)

(assert (=> b!2971994 (= c!487730 call!197946)))

(declare-fun b!2971987 () Bool)

(declare-fun c!487726 () Bool)

(assert (=> b!2971987 (= c!487726 ((_ is Union!9269) (reg!9598 r!17423)))))

(assert (=> b!2971987 (= e!1869874 e!1869879)))

(declare-fun d!842728 () Bool)

(assert (=> d!842728 e!1869877))

(declare-fun res!1225524 () Bool)

(assert (=> d!842728 (=> (not res!1225524) (not e!1869877))))

(assert (=> d!842728 (= res!1225524 (validRegex!4002 lt!1036322))))

(assert (=> d!842728 (= lt!1036322 e!1869887)))

(declare-fun c!487729 () Bool)

(assert (=> d!842728 (= c!487729 ((_ is EmptyLang!9269) (reg!9598 r!17423)))))

(assert (=> d!842728 (validRegex!4002 (reg!9598 r!17423))))

(assert (=> d!842728 (= (simplify!270 (reg!9598 r!17423)) lt!1036322)))

(declare-fun b!2971995 () Bool)

(declare-fun e!1869880 () Regex!9269)

(assert (=> b!2971995 (= e!1869880 (Union!9269 lt!1036317 lt!1036318))))

(declare-fun bm!197942 () Bool)

(assert (=> bm!197942 (= call!197947 (simplify!270 (ite c!487723 (reg!9598 (reg!9598 r!17423)) (ite c!487726 (regOne!19051 (reg!9598 r!17423)) (regTwo!19050 (reg!9598 r!17423))))))))

(declare-fun b!2971996 () Bool)

(assert (=> b!2971996 (= e!1869875 EmptyExpr!9269)))

(declare-fun b!2971997 () Bool)

(assert (=> b!2971997 (= e!1869880 lt!1036317)))

(declare-fun b!2971998 () Bool)

(assert (=> b!2971998 (= e!1869881 lt!1036318)))

(declare-fun b!2971999 () Bool)

(declare-fun e!1869883 () Bool)

(assert (=> b!2971999 (= e!1869883 call!197946)))

(declare-fun bm!197943 () Bool)

(assert (=> bm!197943 (= call!197945 (simplify!270 (ite c!487726 (regTwo!19051 (reg!9598 r!17423)) (regOne!19050 (reg!9598 r!17423)))))))

(declare-fun lt!1036320 () Regex!9269)

(declare-fun bm!197944 () Bool)

(assert (=> bm!197944 (= call!197951 (isEmptyLang!383 (ite c!487723 lt!1036320 (ite c!487726 lt!1036317 lt!1036319))))))

(declare-fun b!2972000 () Bool)

(declare-fun e!1869876 () Regex!9269)

(assert (=> b!2972000 (= e!1869876 EmptyExpr!9269)))

(declare-fun b!2972001 () Bool)

(declare-fun c!487728 () Bool)

(declare-fun lt!1036321 () Regex!9269)

(assert (=> b!2972001 (= c!487728 (isEmptyExpr!422 lt!1036321))))

(declare-fun e!1869882 () Regex!9269)

(assert (=> b!2972001 (= e!1869882 e!1869885)))

(declare-fun b!2972002 () Bool)

(assert (=> b!2972002 (= e!1869884 (Concat!14590 lt!1036321 lt!1036319))))

(declare-fun b!2972003 () Bool)

(assert (=> b!2972003 (= e!1869879 e!1869882)))

(assert (=> b!2972003 (= lt!1036321 call!197945)))

(assert (=> b!2972003 (= lt!1036319 call!197950)))

(declare-fun res!1225525 () Bool)

(declare-fun call!197949 () Bool)

(assert (=> b!2972003 (= res!1225525 call!197949)))

(assert (=> b!2972003 (=> res!1225525 e!1869883)))

(declare-fun c!487722 () Bool)

(assert (=> b!2972003 (= c!487722 e!1869883)))

(declare-fun b!2972004 () Bool)

(assert (=> b!2972004 (= e!1869884 lt!1036321)))

(declare-fun b!2972005 () Bool)

(declare-fun e!1869886 () Bool)

(assert (=> b!2972005 (= e!1869886 call!197948)))

(declare-fun b!2972006 () Bool)

(declare-fun c!487727 () Bool)

(assert (=> b!2972006 (= c!487727 call!197949)))

(assert (=> b!2972006 (= e!1869881 e!1869880)))

(declare-fun b!2972007 () Bool)

(assert (=> b!2972007 (= e!1869882 EmptyLang!9269)))

(declare-fun b!2972008 () Bool)

(assert (=> b!2972008 (= e!1869876 (Star!9269 lt!1036320))))

(declare-fun b!2972009 () Bool)

(assert (=> b!2972009 (= e!1869887 e!1869878)))

(declare-fun c!487720 () Bool)

(assert (=> b!2972009 (= c!487720 ((_ is ElementMatch!9269) (reg!9598 r!17423)))))

(declare-fun bm!197945 () Bool)

(assert (=> bm!197945 (= call!197948 (isEmptyExpr!422 (ite c!487723 lt!1036320 lt!1036319)))))

(declare-fun b!2972010 () Bool)

(declare-fun c!487721 () Bool)

(assert (=> b!2972010 (= c!487721 e!1869886)))

(declare-fun res!1225523 () Bool)

(assert (=> b!2972010 (=> res!1225523 e!1869886)))

(assert (=> b!2972010 (= res!1225523 call!197951)))

(assert (=> b!2972010 (= lt!1036320 call!197947)))

(assert (=> b!2972010 (= e!1869874 e!1869876)))

(declare-fun bm!197946 () Bool)

(assert (=> bm!197946 (= call!197949 (isEmptyLang!383 (ite c!487726 lt!1036318 lt!1036321)))))

(declare-fun b!2972011 () Bool)

(assert (=> b!2972011 (= e!1869878 (reg!9598 r!17423))))

(assert (= (and d!842728 c!487729) b!2971990))

(assert (= (and d!842728 (not c!487729)) b!2972009))

(assert (= (and b!2972009 c!487720) b!2972011))

(assert (= (and b!2972009 (not c!487720)) b!2971989))

(assert (= (and b!2971989 c!487724) b!2971996))

(assert (= (and b!2971989 (not c!487724)) b!2971992))

(assert (= (and b!2971992 c!487723) b!2972010))

(assert (= (and b!2971992 (not c!487723)) b!2971987))

(assert (= (and b!2972010 (not res!1225523)) b!2972005))

(assert (= (and b!2972010 c!487721) b!2972000))

(assert (= (and b!2972010 (not c!487721)) b!2972008))

(assert (= (and b!2971987 c!487726) b!2971994))

(assert (= (and b!2971987 (not c!487726)) b!2972003))

(assert (= (and b!2971994 c!487730) b!2971998))

(assert (= (and b!2971994 (not c!487730)) b!2972006))

(assert (= (and b!2972006 c!487727) b!2971997))

(assert (= (and b!2972006 (not c!487727)) b!2971995))

(assert (= (and b!2972003 (not res!1225525)) b!2971999))

(assert (= (and b!2972003 c!487722) b!2972007))

(assert (= (and b!2972003 (not c!487722)) b!2972001))

(assert (= (and b!2972001 c!487728) b!2971991))

(assert (= (and b!2972001 (not c!487728)) b!2971993))

(assert (= (and b!2971993 c!487725) b!2972004))

(assert (= (and b!2971993 (not c!487725)) b!2972002))

(assert (= (or b!2971994 b!2972003) bm!197941))

(assert (= (or b!2971994 b!2972003) bm!197943))

(assert (= (or b!2971994 b!2971999) bm!197940))

(assert (= (or b!2972006 b!2972003) bm!197946))

(assert (= (or b!2972005 b!2971993) bm!197945))

(assert (= (or b!2972010 bm!197941) bm!197942))

(assert (= (or b!2972010 bm!197940) bm!197944))

(assert (= (and d!842728 res!1225524) b!2971988))

(declare-fun m!3338511 () Bool)

(assert (=> b!2971988 m!3338511))

(assert (=> b!2971988 m!3338421))

(declare-fun m!3338513 () Bool)

(assert (=> bm!197946 m!3338513))

(declare-fun m!3338515 () Bool)

(assert (=> b!2972001 m!3338515))

(declare-fun m!3338517 () Bool)

(assert (=> bm!197943 m!3338517))

(declare-fun m!3338519 () Bool)

(assert (=> d!842728 m!3338519))

(declare-fun m!3338521 () Bool)

(assert (=> d!842728 m!3338521))

(declare-fun m!3338523 () Bool)

(assert (=> bm!197942 m!3338523))

(declare-fun m!3338525 () Bool)

(assert (=> bm!197945 m!3338525))

(declare-fun m!3338527 () Bool)

(assert (=> bm!197944 m!3338527))

(assert (=> b!2971494 d!842728))

(declare-fun b!2972012 () Bool)

(declare-fun e!1869894 () Bool)

(declare-fun e!1869888 () Bool)

(assert (=> b!2972012 (= e!1869894 e!1869888)))

(declare-fun res!1225530 () Bool)

(assert (=> b!2972012 (=> res!1225530 e!1869888)))

(declare-fun call!197952 () Bool)

(assert (=> b!2972012 (= res!1225530 call!197952)))

(declare-fun b!2972013 () Bool)

(declare-fun e!1869889 () Bool)

(assert (=> b!2972013 (= e!1869889 e!1869894)))

(declare-fun res!1225529 () Bool)

(assert (=> b!2972013 (=> (not res!1225529) (not e!1869894))))

(declare-fun lt!1036323 () Bool)

(assert (=> b!2972013 (= res!1225529 (not lt!1036323))))

(declare-fun b!2972014 () Bool)

(assert (=> b!2972014 (= e!1869888 (not (= (head!6626 s!11993) (c!487577 lt!1036256))))))

(declare-fun b!2972015 () Bool)

(declare-fun e!1869892 () Bool)

(assert (=> b!2972015 (= e!1869892 (matchR!4151 (derivativeStep!2567 lt!1036256 (head!6626 s!11993)) (tail!4852 s!11993)))))

(declare-fun b!2972017 () Bool)

(declare-fun e!1869893 () Bool)

(declare-fun e!1869890 () Bool)

(assert (=> b!2972017 (= e!1869893 e!1869890)))

(declare-fun c!487732 () Bool)

(assert (=> b!2972017 (= c!487732 ((_ is EmptyLang!9269) lt!1036256))))

(declare-fun b!2972018 () Bool)

(assert (=> b!2972018 (= e!1869893 (= lt!1036323 call!197952))))

(declare-fun b!2972019 () Bool)

(declare-fun res!1225531 () Bool)

(declare-fun e!1869891 () Bool)

(assert (=> b!2972019 (=> (not res!1225531) (not e!1869891))))

(assert (=> b!2972019 (= res!1225531 (not call!197952))))

(declare-fun bm!197947 () Bool)

(assert (=> bm!197947 (= call!197952 (isEmpty!19247 s!11993))))

(declare-fun b!2972020 () Bool)

(declare-fun res!1225532 () Bool)

(assert (=> b!2972020 (=> res!1225532 e!1869889)))

(assert (=> b!2972020 (= res!1225532 e!1869891)))

(declare-fun res!1225533 () Bool)

(assert (=> b!2972020 (=> (not res!1225533) (not e!1869891))))

(assert (=> b!2972020 (= res!1225533 lt!1036323)))

(declare-fun b!2972021 () Bool)

(assert (=> b!2972021 (= e!1869892 (nullable!2966 lt!1036256))))

(declare-fun b!2972022 () Bool)

(declare-fun res!1225527 () Bool)

(assert (=> b!2972022 (=> res!1225527 e!1869889)))

(assert (=> b!2972022 (= res!1225527 (not ((_ is ElementMatch!9269) lt!1036256)))))

(assert (=> b!2972022 (= e!1869890 e!1869889)))

(declare-fun b!2972023 () Bool)

(declare-fun res!1225526 () Bool)

(assert (=> b!2972023 (=> (not res!1225526) (not e!1869891))))

(assert (=> b!2972023 (= res!1225526 (isEmpty!19247 (tail!4852 s!11993)))))

(declare-fun d!842730 () Bool)

(assert (=> d!842730 e!1869893))

(declare-fun c!487733 () Bool)

(assert (=> d!842730 (= c!487733 ((_ is EmptyExpr!9269) lt!1036256))))

(assert (=> d!842730 (= lt!1036323 e!1869892)))

(declare-fun c!487731 () Bool)

(assert (=> d!842730 (= c!487731 (isEmpty!19247 s!11993))))

(assert (=> d!842730 (validRegex!4002 lt!1036256)))

(assert (=> d!842730 (= (matchR!4151 lt!1036256 s!11993) lt!1036323)))

(declare-fun b!2972016 () Bool)

(declare-fun res!1225528 () Bool)

(assert (=> b!2972016 (=> res!1225528 e!1869888)))

(assert (=> b!2972016 (= res!1225528 (not (isEmpty!19247 (tail!4852 s!11993))))))

(declare-fun b!2972024 () Bool)

(assert (=> b!2972024 (= e!1869891 (= (head!6626 s!11993) (c!487577 lt!1036256)))))

(declare-fun b!2972025 () Bool)

(assert (=> b!2972025 (= e!1869890 (not lt!1036323))))

(assert (= (and d!842730 c!487731) b!2972021))

(assert (= (and d!842730 (not c!487731)) b!2972015))

(assert (= (and d!842730 c!487733) b!2972018))

(assert (= (and d!842730 (not c!487733)) b!2972017))

(assert (= (and b!2972017 c!487732) b!2972025))

(assert (= (and b!2972017 (not c!487732)) b!2972022))

(assert (= (and b!2972022 (not res!1225527)) b!2972020))

(assert (= (and b!2972020 res!1225533) b!2972019))

(assert (= (and b!2972019 res!1225531) b!2972023))

(assert (= (and b!2972023 res!1225526) b!2972024))

(assert (= (and b!2972020 (not res!1225532)) b!2972013))

(assert (= (and b!2972013 res!1225529) b!2972012))

(assert (= (and b!2972012 (not res!1225530)) b!2972016))

(assert (= (and b!2972016 (not res!1225528)) b!2972014))

(assert (= (or b!2972018 b!2972012 b!2972019) bm!197947))

(assert (=> b!2972024 m!3338499))

(assert (=> b!2972014 m!3338499))

(declare-fun m!3338529 () Bool)

(assert (=> b!2972021 m!3338529))

(assert (=> b!2972016 m!3338501))

(assert (=> b!2972016 m!3338501))

(assert (=> b!2972016 m!3338503))

(assert (=> b!2972023 m!3338501))

(assert (=> b!2972023 m!3338501))

(assert (=> b!2972023 m!3338503))

(assert (=> bm!197947 m!3338365))

(assert (=> d!842730 m!3338365))

(declare-fun m!3338531 () Bool)

(assert (=> d!842730 m!3338531))

(assert (=> b!2972015 m!3338499))

(assert (=> b!2972015 m!3338499))

(declare-fun m!3338533 () Bool)

(assert (=> b!2972015 m!3338533))

(assert (=> b!2972015 m!3338501))

(assert (=> b!2972015 m!3338533))

(assert (=> b!2972015 m!3338501))

(declare-fun m!3338535 () Bool)

(assert (=> b!2972015 m!3338535))

(assert (=> b!2971499 d!842730))

(declare-fun d!842732 () Bool)

(assert (=> d!842732 (= (isEmpty!19247 s!11993) ((_ is Nil!35010) s!11993))))

(assert (=> b!2971493 d!842732))

(declare-fun bs!526500 () Bool)

(declare-fun b!2972036 () Bool)

(assert (= bs!526500 (and b!2972036 b!2971940)))

(declare-fun lambda!110569 () Int)

(assert (=> bs!526500 (= (and (= (reg!9598 lt!1036256) (reg!9598 r!17423)) (= lt!1036256 r!17423)) (= lambda!110569 lambda!110567))))

(declare-fun bs!526501 () Bool)

(assert (= bs!526501 (and b!2972036 b!2971932)))

(assert (=> bs!526501 (not (= lambda!110569 lambda!110568))))

(assert (=> b!2972036 true))

(assert (=> b!2972036 true))

(declare-fun bs!526502 () Bool)

(declare-fun b!2972028 () Bool)

(assert (= bs!526502 (and b!2972028 b!2971940)))

(declare-fun lambda!110570 () Int)

(assert (=> bs!526502 (not (= lambda!110570 lambda!110567))))

(declare-fun bs!526503 () Bool)

(assert (= bs!526503 (and b!2972028 b!2971932)))

(assert (=> bs!526503 (= (and (= (regOne!19050 lt!1036256) (regOne!19050 r!17423)) (= (regTwo!19050 lt!1036256) (regTwo!19050 r!17423))) (= lambda!110570 lambda!110568))))

(declare-fun bs!526504 () Bool)

(assert (= bs!526504 (and b!2972028 b!2972036)))

(assert (=> bs!526504 (not (= lambda!110570 lambda!110569))))

(assert (=> b!2972028 true))

(assert (=> b!2972028 true))

(declare-fun b!2972026 () Bool)

(declare-fun res!1225534 () Bool)

(declare-fun e!1869901 () Bool)

(assert (=> b!2972026 (=> res!1225534 e!1869901)))

(declare-fun call!197953 () Bool)

(assert (=> b!2972026 (= res!1225534 call!197953)))

(declare-fun e!1869896 () Bool)

(assert (=> b!2972026 (= e!1869896 e!1869901)))

(declare-fun b!2972027 () Bool)

(declare-fun c!487734 () Bool)

(assert (=> b!2972027 (= c!487734 ((_ is ElementMatch!9269) lt!1036256))))

(declare-fun e!1869895 () Bool)

(declare-fun e!1869897 () Bool)

(assert (=> b!2972027 (= e!1869895 e!1869897)))

(declare-fun call!197954 () Bool)

(assert (=> b!2972028 (= e!1869896 call!197954)))

(declare-fun b!2972029 () Bool)

(declare-fun c!487736 () Bool)

(assert (=> b!2972029 (= c!487736 ((_ is Union!9269) lt!1036256))))

(declare-fun e!1869899 () Bool)

(assert (=> b!2972029 (= e!1869897 e!1869899)))

(declare-fun bm!197948 () Bool)

(declare-fun c!487737 () Bool)

(assert (=> bm!197948 (= call!197954 (Exists!1551 (ite c!487737 lambda!110569 lambda!110570)))))

(declare-fun b!2972030 () Bool)

(declare-fun e!1869898 () Bool)

(assert (=> b!2972030 (= e!1869898 (matchRSpec!1406 (regTwo!19051 lt!1036256) s!11993))))

(declare-fun bm!197949 () Bool)

(assert (=> bm!197949 (= call!197953 (isEmpty!19247 s!11993))))

(declare-fun d!842734 () Bool)

(declare-fun c!487735 () Bool)

(assert (=> d!842734 (= c!487735 ((_ is EmptyExpr!9269) lt!1036256))))

(declare-fun e!1869900 () Bool)

(assert (=> d!842734 (= (matchRSpec!1406 lt!1036256 s!11993) e!1869900)))

(declare-fun b!2972031 () Bool)

(assert (=> b!2972031 (= e!1869900 call!197953)))

(declare-fun b!2972032 () Bool)

(assert (=> b!2972032 (= e!1869900 e!1869895)))

(declare-fun res!1225535 () Bool)

(assert (=> b!2972032 (= res!1225535 (not ((_ is EmptyLang!9269) lt!1036256)))))

(assert (=> b!2972032 (=> (not res!1225535) (not e!1869895))))

(declare-fun b!2972033 () Bool)

(assert (=> b!2972033 (= e!1869897 (= s!11993 (Cons!35010 (c!487577 lt!1036256) Nil!35010)))))

(declare-fun b!2972034 () Bool)

(assert (=> b!2972034 (= e!1869899 e!1869898)))

(declare-fun res!1225536 () Bool)

(assert (=> b!2972034 (= res!1225536 (matchRSpec!1406 (regOne!19051 lt!1036256) s!11993))))

(assert (=> b!2972034 (=> res!1225536 e!1869898)))

(declare-fun b!2972035 () Bool)

(assert (=> b!2972035 (= e!1869899 e!1869896)))

(assert (=> b!2972035 (= c!487737 ((_ is Star!9269) lt!1036256))))

(assert (=> b!2972036 (= e!1869901 call!197954)))

(assert (= (and d!842734 c!487735) b!2972031))

(assert (= (and d!842734 (not c!487735)) b!2972032))

(assert (= (and b!2972032 res!1225535) b!2972027))

(assert (= (and b!2972027 c!487734) b!2972033))

(assert (= (and b!2972027 (not c!487734)) b!2972029))

(assert (= (and b!2972029 c!487736) b!2972034))

(assert (= (and b!2972029 (not c!487736)) b!2972035))

(assert (= (and b!2972034 (not res!1225536)) b!2972030))

(assert (= (and b!2972035 c!487737) b!2972026))

(assert (= (and b!2972035 (not c!487737)) b!2972028))

(assert (= (and b!2972026 (not res!1225534)) b!2972036))

(assert (= (or b!2972036 b!2972028) bm!197948))

(assert (= (or b!2972031 b!2972026) bm!197949))

(declare-fun m!3338537 () Bool)

(assert (=> bm!197948 m!3338537))

(declare-fun m!3338539 () Bool)

(assert (=> b!2972030 m!3338539))

(assert (=> bm!197949 m!3338365))

(declare-fun m!3338541 () Bool)

(assert (=> b!2972034 m!3338541))

(assert (=> b!2971493 d!842734))

(declare-fun d!842736 () Bool)

(assert (=> d!842736 (= (matchR!4151 lt!1036256 s!11993) (matchRSpec!1406 lt!1036256 s!11993))))

(declare-fun lt!1036324 () Unit!48917)

(assert (=> d!842736 (= lt!1036324 (choose!17569 lt!1036256 s!11993))))

(assert (=> d!842736 (validRegex!4002 lt!1036256)))

(assert (=> d!842736 (= (mainMatchTheorem!1406 lt!1036256 s!11993) lt!1036324)))

(declare-fun bs!526505 () Bool)

(assert (= bs!526505 d!842736))

(assert (=> bs!526505 m!3338357))

(assert (=> bs!526505 m!3338367))

(declare-fun m!3338543 () Bool)

(assert (=> bs!526505 m!3338543))

(assert (=> bs!526505 m!3338531))

(assert (=> b!2971493 d!842736))

(declare-fun e!1869904 () Bool)

(assert (=> b!2971501 (= tp!947480 e!1869904)))

(declare-fun b!2972050 () Bool)

(declare-fun tp!947536 () Bool)

(declare-fun tp!947534 () Bool)

(assert (=> b!2972050 (= e!1869904 (and tp!947536 tp!947534))))

(declare-fun b!2972048 () Bool)

(declare-fun tp!947538 () Bool)

(declare-fun tp!947537 () Bool)

(assert (=> b!2972048 (= e!1869904 (and tp!947538 tp!947537))))

(declare-fun b!2972047 () Bool)

(assert (=> b!2972047 (= e!1869904 tp_is_empty!16101)))

(declare-fun b!2972049 () Bool)

(declare-fun tp!947535 () Bool)

(assert (=> b!2972049 (= e!1869904 tp!947535)))

(assert (= (and b!2971501 ((_ is ElementMatch!9269) (reg!9598 r!17423))) b!2972047))

(assert (= (and b!2971501 ((_ is Concat!14590) (reg!9598 r!17423))) b!2972048))

(assert (= (and b!2971501 ((_ is Star!9269) (reg!9598 r!17423))) b!2972049))

(assert (= (and b!2971501 ((_ is Union!9269) (reg!9598 r!17423))) b!2972050))

(declare-fun b!2972055 () Bool)

(declare-fun e!1869907 () Bool)

(declare-fun tp!947541 () Bool)

(assert (=> b!2972055 (= e!1869907 (and tp_is_empty!16101 tp!947541))))

(assert (=> b!2971500 (= tp!947484 e!1869907)))

(assert (= (and b!2971500 ((_ is Cons!35010) (t!234199 s!11993))) b!2972055))

(declare-fun e!1869908 () Bool)

(assert (=> b!2971492 (= tp!947482 e!1869908)))

(declare-fun b!2972059 () Bool)

(declare-fun tp!947544 () Bool)

(declare-fun tp!947542 () Bool)

(assert (=> b!2972059 (= e!1869908 (and tp!947544 tp!947542))))

(declare-fun b!2972057 () Bool)

(declare-fun tp!947546 () Bool)

(declare-fun tp!947545 () Bool)

(assert (=> b!2972057 (= e!1869908 (and tp!947546 tp!947545))))

(declare-fun b!2972056 () Bool)

(assert (=> b!2972056 (= e!1869908 tp_is_empty!16101)))

(declare-fun b!2972058 () Bool)

(declare-fun tp!947543 () Bool)

(assert (=> b!2972058 (= e!1869908 tp!947543)))

(assert (= (and b!2971492 ((_ is ElementMatch!9269) (regOne!19050 r!17423))) b!2972056))

(assert (= (and b!2971492 ((_ is Concat!14590) (regOne!19050 r!17423))) b!2972057))

(assert (= (and b!2971492 ((_ is Star!9269) (regOne!19050 r!17423))) b!2972058))

(assert (= (and b!2971492 ((_ is Union!9269) (regOne!19050 r!17423))) b!2972059))

(declare-fun e!1869909 () Bool)

(assert (=> b!2971492 (= tp!947485 e!1869909)))

(declare-fun b!2972063 () Bool)

(declare-fun tp!947549 () Bool)

(declare-fun tp!947547 () Bool)

(assert (=> b!2972063 (= e!1869909 (and tp!947549 tp!947547))))

(declare-fun b!2972061 () Bool)

(declare-fun tp!947551 () Bool)

(declare-fun tp!947550 () Bool)

(assert (=> b!2972061 (= e!1869909 (and tp!947551 tp!947550))))

(declare-fun b!2972060 () Bool)

(assert (=> b!2972060 (= e!1869909 tp_is_empty!16101)))

(declare-fun b!2972062 () Bool)

(declare-fun tp!947548 () Bool)

(assert (=> b!2972062 (= e!1869909 tp!947548)))

(assert (= (and b!2971492 ((_ is ElementMatch!9269) (regTwo!19050 r!17423))) b!2972060))

(assert (= (and b!2971492 ((_ is Concat!14590) (regTwo!19050 r!17423))) b!2972061))

(assert (= (and b!2971492 ((_ is Star!9269) (regTwo!19050 r!17423))) b!2972062))

(assert (= (and b!2971492 ((_ is Union!9269) (regTwo!19050 r!17423))) b!2972063))

(declare-fun e!1869910 () Bool)

(assert (=> b!2971497 (= tp!947481 e!1869910)))

(declare-fun b!2972067 () Bool)

(declare-fun tp!947554 () Bool)

(declare-fun tp!947552 () Bool)

(assert (=> b!2972067 (= e!1869910 (and tp!947554 tp!947552))))

(declare-fun b!2972065 () Bool)

(declare-fun tp!947556 () Bool)

(declare-fun tp!947555 () Bool)

(assert (=> b!2972065 (= e!1869910 (and tp!947556 tp!947555))))

(declare-fun b!2972064 () Bool)

(assert (=> b!2972064 (= e!1869910 tp_is_empty!16101)))

(declare-fun b!2972066 () Bool)

(declare-fun tp!947553 () Bool)

(assert (=> b!2972066 (= e!1869910 tp!947553)))

(assert (= (and b!2971497 ((_ is ElementMatch!9269) (regOne!19051 r!17423))) b!2972064))

(assert (= (and b!2971497 ((_ is Concat!14590) (regOne!19051 r!17423))) b!2972065))

(assert (= (and b!2971497 ((_ is Star!9269) (regOne!19051 r!17423))) b!2972066))

(assert (= (and b!2971497 ((_ is Union!9269) (regOne!19051 r!17423))) b!2972067))

(declare-fun e!1869911 () Bool)

(assert (=> b!2971497 (= tp!947483 e!1869911)))

(declare-fun b!2972071 () Bool)

(declare-fun tp!947559 () Bool)

(declare-fun tp!947557 () Bool)

(assert (=> b!2972071 (= e!1869911 (and tp!947559 tp!947557))))

(declare-fun b!2972069 () Bool)

(declare-fun tp!947561 () Bool)

(declare-fun tp!947560 () Bool)

(assert (=> b!2972069 (= e!1869911 (and tp!947561 tp!947560))))

(declare-fun b!2972068 () Bool)

(assert (=> b!2972068 (= e!1869911 tp_is_empty!16101)))

(declare-fun b!2972070 () Bool)

(declare-fun tp!947558 () Bool)

(assert (=> b!2972070 (= e!1869911 tp!947558)))

(assert (= (and b!2971497 ((_ is ElementMatch!9269) (regTwo!19051 r!17423))) b!2972068))

(assert (= (and b!2971497 ((_ is Concat!14590) (regTwo!19051 r!17423))) b!2972069))

(assert (= (and b!2971497 ((_ is Star!9269) (regTwo!19051 r!17423))) b!2972070))

(assert (= (and b!2971497 ((_ is Union!9269) (regTwo!19051 r!17423))) b!2972071))

(check-sat (not b!2972062) (not b!2971988) (not b!2971644) (not bm!197948) (not b!2972061) (not b!2971977) (not bm!197876) (not bm!197947) (not bm!197878) (not b!2971934) (not bm!197877) (not b!2971982) (not b!2971985) tp_is_empty!16101 (not b!2971669) (not b!2972063) (not d!842724) (not b!2972049) (not d!842736) (not bm!197875) (not b!2972067) (not bm!197942) (not b!2972058) (not bm!197852) (not b!2971984) (not bm!197881) (not b!2972001) (not bm!197879) (not b!2972071) (not b!2972055) (not bm!197945) (not b!2972024) (not b!2972030) (not bm!197935) (not b!2971657) (not b!2972066) (not b!2971976) (not b!2972057) (not b!2971938) (not b!2972070) (not d!842728) (not bm!197936) (not b!2972034) (not b!2971975) (not bm!197949) (not b!2972050) (not b!2972023) (not bm!197939) (not bm!197854) (not bm!197946) (not b!2971549) (not bm!197944) (not b!2972014) (not d!842730) (not b!2972048) (not d!842722) (not b!2972015) (not b!2972065) (not bm!197874) (not b!2972059) (not b!2972069) (not d!842694) (not b!2972021) (not b!2972016) (not bm!197943))
(check-sat)
